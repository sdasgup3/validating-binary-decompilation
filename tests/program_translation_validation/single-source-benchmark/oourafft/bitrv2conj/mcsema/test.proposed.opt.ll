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

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @bitrv2conj(%struct.State* noalias, i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #1 {
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
  %EDI.i1616 = bitcast %union.anon* %11 to i32*
  %12 = add i64 %7, -12
  %13 = load i32, i32* %EDI.i1616, align 4
  %14 = add i64 %10, 6
  store i64 %14, i64* %3, align 8
  %15 = inttoptr i64 %12 to i32*
  store i32 %13, i32* %15, align 4
  %RSI.i1613 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %16 = load i64, i64* %RBP.i, align 8
  %17 = add i64 %16, -16
  %18 = load i64, i64* %RSI.i1613, align 8
  %19 = load i64, i64* %3, align 8
  %20 = add i64 %19, 4
  store i64 %20, i64* %3, align 8
  %21 = inttoptr i64 %17 to i64*
  store i64 %18, i64* %21, align 8
  %RDX.i1610 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %22 = load i64, i64* %RBP.i, align 8
  %23 = add i64 %22, -24
  %24 = load i64, i64* %RDX.i1610, align 8
  %25 = load i64, i64* %3, align 8
  %26 = add i64 %25, 4
  store i64 %26, i64* %3, align 8
  %27 = inttoptr i64 %23 to i64*
  store i64 %24, i64* %27, align 8
  %28 = load i64, i64* %RBP.i, align 8
  %29 = add i64 %28, -16
  %30 = load i64, i64* %3, align 8
  %31 = add i64 %30, 4
  store i64 %31, i64* %3, align 8
  %32 = inttoptr i64 %29 to i64*
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %RDX.i1610, align 8
  %34 = add i64 %30, 10
  store i64 %34, i64* %3, align 8
  %35 = inttoptr i64 %33 to i32*
  store i32 0, i32* %35, align 4
  %RDI.i1602 = getelementptr inbounds %union.anon, %union.anon* %11, i64 0, i32 0
  %36 = load i64, i64* %RBP.i, align 8
  %37 = add i64 %36, -4
  %38 = load i64, i64* %3, align 8
  %39 = add i64 %38, 3
  store i64 %39, i64* %3, align 8
  %40 = inttoptr i64 %37 to i32*
  %41 = load i32, i32* %40, align 4
  %42 = zext i32 %41 to i64
  store i64 %42, i64* %RDI.i1602, align 8
  %43 = add i64 %36, -44
  %44 = add i64 %38, 6
  store i64 %44, i64* %3, align 8
  %45 = inttoptr i64 %43 to i32*
  store i32 %41, i32* %45, align 4
  %46 = load i64, i64* %RBP.i, align 8
  %47 = add i64 %46, -48
  %48 = load i64, i64* %3, align 8
  %49 = add i64 %48, 7
  store i64 %49, i64* %3, align 8
  %50 = inttoptr i64 %47 to i32*
  store i32 1, i32* %50, align 4
  %RAX.i1594 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %52 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %53 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %54 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %RCX.i1565 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_401c26

block_.L_401c26:                                  ; preds = %block_.L_401c7d, %entry
  %57 = phi i64 [ %310, %block_.L_401c7d ], [ %.pre, %entry ]
  %58 = load i64, i64* %RBP.i, align 8
  %59 = add i64 %58, -48
  %60 = add i64 %57, 3
  store i64 %60, i64* %3, align 8
  %61 = inttoptr i64 %59 to i32*
  %62 = load i32, i32* %61, align 4
  %63 = shl i32 %62, 3
  %64 = zext i32 %63 to i64
  store i64 %64, i64* %RAX.i1594, align 8
  %65 = lshr i32 %62, 29
  %66 = trunc i32 %65 to i8
  %67 = and i8 %66, 1
  store i8 %67, i8* %51, align 1
  %68 = and i32 %63, 248
  %69 = tail call i32 @llvm.ctpop.i32(i32 %68)
  %70 = trunc i32 %69 to i8
  %71 = and i8 %70, 1
  %72 = xor i8 %71, 1
  store i8 %72, i8* %52, align 1
  store i8 0, i8* %53, align 1
  %73 = icmp eq i32 %63, 0
  %74 = zext i1 %73 to i8
  store i8 %74, i8* %54, align 1
  %75 = lshr i32 %62, 28
  %76 = trunc i32 %75 to i8
  %77 = and i8 %76, 1
  store i8 %77, i8* %55, align 1
  store i8 0, i8* %56, align 1
  %78 = add i64 %58, -44
  %79 = add i64 %57, 9
  store i64 %79, i64* %3, align 8
  %80 = inttoptr i64 %78 to i32*
  %81 = load i32, i32* %80, align 4
  %82 = sub i32 %63, %81
  %83 = icmp ult i32 %63, %81
  %84 = zext i1 %83 to i8
  store i8 %84, i8* %51, align 1
  %85 = and i32 %82, 255
  %86 = tail call i32 @llvm.ctpop.i32(i32 %85)
  %87 = trunc i32 %86 to i8
  %88 = and i8 %87, 1
  %89 = xor i8 %88, 1
  store i8 %89, i8* %52, align 1
  %90 = xor i32 %81, %63
  %91 = xor i32 %90, %82
  %92 = lshr i32 %91, 4
  %93 = trunc i32 %92 to i8
  %94 = and i8 %93, 1
  store i8 %94, i8* %53, align 1
  %95 = icmp eq i32 %82, 0
  %96 = zext i1 %95 to i8
  store i8 %96, i8* %54, align 1
  %97 = lshr i32 %82, 31
  %98 = trunc i32 %97 to i8
  store i8 %98, i8* %55, align 1
  %99 = lshr i32 %62, 28
  %100 = and i32 %99, 1
  %101 = lshr i32 %81, 31
  %102 = xor i32 %101, %100
  %103 = xor i32 %97, %100
  %104 = add nuw nsw i32 %103, %102
  %105 = icmp eq i32 %104, 2
  %106 = zext i1 %105 to i8
  store i8 %106, i8* %56, align 1
  %107 = icmp ne i8 %98, 0
  %108 = xor i1 %107, %105
  %.v = select i1 %108, i64 15, i64 101
  %109 = add i64 %57, %.v
  %110 = add i64 %109, 3
  store i64 %110, i64* %3, align 8
  br i1 %108, label %block_401c35, label %block_.L_401c8b

block_401c35:                                     ; preds = %block_.L_401c26
  %111 = load i32, i32* %80, align 4
  %112 = zext i32 %111 to i64
  %113 = shl nuw i64 %112, 32
  %114 = ashr i64 %113, 33
  %115 = trunc i32 %111 to i8
  %116 = and i8 %115, 1
  %117 = trunc i64 %114 to i32
  %118 = and i64 %114, 4294967295
  store i64 %118, i64* %RAX.i1594, align 8
  store i8 %116, i8* %51, align 1
  %119 = and i32 %117, 255
  %120 = tail call i32 @llvm.ctpop.i32(i32 %119)
  %121 = trunc i32 %120 to i8
  %122 = and i8 %121, 1
  %123 = xor i8 %122, 1
  store i8 %123, i8* %52, align 1
  store i8 0, i8* %53, align 1
  %124 = icmp eq i32 %117, 0
  %125 = zext i1 %124 to i8
  store i8 %125, i8* %54, align 1
  %126 = lshr i64 %114, 31
  %127 = trunc i64 %126 to i8
  %128 = and i8 %127, 1
  store i8 %128, i8* %55, align 1
  store i8 0, i8* %56, align 1
  %129 = trunc i64 %114 to i32
  %130 = add i64 %109, 8
  store i64 %130, i64* %3, align 8
  store i32 %129, i32* %80, align 4
  %131 = load i64, i64* %RBP.i, align 8
  %132 = add i64 %131, -28
  %133 = load i64, i64* %3, align 8
  %134 = add i64 %133, 7
  store i64 %134, i64* %3, align 8
  %135 = inttoptr i64 %132 to i32*
  store i32 0, i32* %135, align 4
  %.pre42 = load i64, i64* %3, align 8
  br label %block_.L_401c45

block_.L_401c45:                                  ; preds = %block_401c51, %block_401c35
  %136 = phi i64 [ %288, %block_401c51 ], [ %.pre42, %block_401c35 ]
  %137 = load i64, i64* %RBP.i, align 8
  %138 = add i64 %137, -28
  %139 = add i64 %136, 3
  store i64 %139, i64* %3, align 8
  %140 = inttoptr i64 %138 to i32*
  %141 = load i32, i32* %140, align 4
  %142 = zext i32 %141 to i64
  store i64 %142, i64* %RAX.i1594, align 8
  %143 = add i64 %137, -48
  %144 = add i64 %136, 6
  store i64 %144, i64* %3, align 8
  %145 = inttoptr i64 %143 to i32*
  %146 = load i32, i32* %145, align 4
  %147 = sub i32 %141, %146
  %148 = icmp ult i32 %141, %146
  %149 = zext i1 %148 to i8
  store i8 %149, i8* %51, align 1
  %150 = and i32 %147, 255
  %151 = tail call i32 @llvm.ctpop.i32(i32 %150)
  %152 = trunc i32 %151 to i8
  %153 = and i8 %152, 1
  %154 = xor i8 %153, 1
  store i8 %154, i8* %52, align 1
  %155 = xor i32 %146, %141
  %156 = xor i32 %155, %147
  %157 = lshr i32 %156, 4
  %158 = trunc i32 %157 to i8
  %159 = and i8 %158, 1
  store i8 %159, i8* %53, align 1
  %160 = icmp eq i32 %147, 0
  %161 = zext i1 %160 to i8
  store i8 %161, i8* %54, align 1
  %162 = lshr i32 %147, 31
  %163 = trunc i32 %162 to i8
  store i8 %163, i8* %55, align 1
  %164 = lshr i32 %141, 31
  %165 = lshr i32 %146, 31
  %166 = xor i32 %165, %164
  %167 = xor i32 %162, %164
  %168 = add nuw nsw i32 %167, %166
  %169 = icmp eq i32 %168, 2
  %170 = zext i1 %169 to i8
  store i8 %170, i8* %56, align 1
  %171 = icmp ne i8 %163, 0
  %172 = xor i1 %171, %169
  %.v48 = select i1 %172, i64 12, i64 56
  %173 = add i64 %136, %.v48
  store i64 %173, i64* %3, align 8
  br i1 %172, label %block_401c51, label %block_.L_401c7d

block_401c51:                                     ; preds = %block_.L_401c45
  %174 = add i64 %137, -16
  %175 = add i64 %173, 4
  store i64 %175, i64* %3, align 8
  %176 = inttoptr i64 %174 to i64*
  %177 = load i64, i64* %176, align 8
  store i64 %177, i64* %RAX.i1594, align 8
  %178 = add i64 %173, 8
  store i64 %178, i64* %3, align 8
  %179 = load i32, i32* %140, align 4
  %180 = sext i32 %179 to i64
  store i64 %180, i64* %RCX.i1565, align 8
  %181 = shl nsw i64 %180, 2
  %182 = add i64 %181, %177
  %183 = add i64 %173, 11
  store i64 %183, i64* %3, align 8
  %184 = inttoptr i64 %182 to i32*
  %185 = load i32, i32* %184, align 4
  %186 = zext i32 %185 to i64
  store i64 %186, i64* %RDX.i1610, align 8
  %187 = add i64 %137, -44
  %188 = add i64 %173, 14
  store i64 %188, i64* %3, align 8
  %189 = inttoptr i64 %187 to i32*
  %190 = load i32, i32* %189, align 4
  %191 = add i32 %190, %185
  %192 = zext i32 %191 to i64
  store i64 %192, i64* %RDX.i1610, align 8
  %193 = icmp ult i32 %191, %185
  %194 = icmp ult i32 %191, %190
  %195 = or i1 %193, %194
  %196 = zext i1 %195 to i8
  store i8 %196, i8* %51, align 1
  %197 = and i32 %191, 255
  %198 = tail call i32 @llvm.ctpop.i32(i32 %197)
  %199 = trunc i32 %198 to i8
  %200 = and i8 %199, 1
  %201 = xor i8 %200, 1
  store i8 %201, i8* %52, align 1
  %202 = xor i32 %190, %185
  %203 = xor i32 %202, %191
  %204 = lshr i32 %203, 4
  %205 = trunc i32 %204 to i8
  %206 = and i8 %205, 1
  store i8 %206, i8* %53, align 1
  %207 = icmp eq i32 %191, 0
  %208 = zext i1 %207 to i8
  store i8 %208, i8* %54, align 1
  %209 = lshr i32 %191, 31
  %210 = trunc i32 %209 to i8
  store i8 %210, i8* %55, align 1
  %211 = lshr i32 %185, 31
  %212 = lshr i32 %190, 31
  %213 = xor i32 %209, %211
  %214 = xor i32 %209, %212
  %215 = add nuw nsw i32 %213, %214
  %216 = icmp eq i32 %215, 2
  %217 = zext i1 %216 to i8
  store i8 %217, i8* %56, align 1
  %218 = add i64 %173, 18
  store i64 %218, i64* %3, align 8
  %219 = load i64, i64* %176, align 8
  store i64 %219, i64* %RAX.i1594, align 8
  %220 = add i64 %173, 21
  store i64 %220, i64* %3, align 8
  %221 = load i32, i32* %145, align 4
  %222 = zext i32 %221 to i64
  store i64 %222, i64* %RSI.i1613, align 8
  %223 = add i64 %173, 24
  store i64 %223, i64* %3, align 8
  %224 = load i32, i32* %140, align 4
  %225 = add i32 %224, %221
  %226 = zext i32 %225 to i64
  store i64 %226, i64* %RSI.i1613, align 8
  %227 = icmp ult i32 %225, %221
  %228 = icmp ult i32 %225, %224
  %229 = or i1 %227, %228
  %230 = zext i1 %229 to i8
  store i8 %230, i8* %51, align 1
  %231 = and i32 %225, 255
  %232 = tail call i32 @llvm.ctpop.i32(i32 %231)
  %233 = trunc i32 %232 to i8
  %234 = and i8 %233, 1
  %235 = xor i8 %234, 1
  store i8 %235, i8* %52, align 1
  %236 = xor i32 %224, %221
  %237 = xor i32 %236, %225
  %238 = lshr i32 %237, 4
  %239 = trunc i32 %238 to i8
  %240 = and i8 %239, 1
  store i8 %240, i8* %53, align 1
  %241 = icmp eq i32 %225, 0
  %242 = zext i1 %241 to i8
  store i8 %242, i8* %54, align 1
  %243 = lshr i32 %225, 31
  %244 = trunc i32 %243 to i8
  store i8 %244, i8* %55, align 1
  %245 = lshr i32 %221, 31
  %246 = lshr i32 %224, 31
  %247 = xor i32 %243, %245
  %248 = xor i32 %243, %246
  %249 = add nuw nsw i32 %247, %248
  %250 = icmp eq i32 %249, 2
  %251 = zext i1 %250 to i8
  store i8 %251, i8* %56, align 1
  %252 = sext i32 %225 to i64
  store i64 %252, i64* %RCX.i1565, align 8
  %253 = shl nsw i64 %252, 2
  %254 = add i64 %219, %253
  %255 = add i64 %173, 30
  store i64 %255, i64* %3, align 8
  %256 = inttoptr i64 %254 to i32*
  store i32 %191, i32* %256, align 4
  %257 = load i64, i64* %RBP.i, align 8
  %258 = add i64 %257, -28
  %259 = load i64, i64* %3, align 8
  %260 = add i64 %259, 3
  store i64 %260, i64* %3, align 8
  %261 = inttoptr i64 %258 to i32*
  %262 = load i32, i32* %261, align 4
  %263 = add i32 %262, 1
  %264 = zext i32 %263 to i64
  store i64 %264, i64* %RAX.i1594, align 8
  %265 = icmp eq i32 %262, -1
  %266 = icmp eq i32 %263, 0
  %267 = or i1 %265, %266
  %268 = zext i1 %267 to i8
  store i8 %268, i8* %51, align 1
  %269 = and i32 %263, 255
  %270 = tail call i32 @llvm.ctpop.i32(i32 %269)
  %271 = trunc i32 %270 to i8
  %272 = and i8 %271, 1
  %273 = xor i8 %272, 1
  store i8 %273, i8* %52, align 1
  %274 = xor i32 %263, %262
  %275 = lshr i32 %274, 4
  %276 = trunc i32 %275 to i8
  %277 = and i8 %276, 1
  store i8 %277, i8* %53, align 1
  %278 = zext i1 %266 to i8
  store i8 %278, i8* %54, align 1
  %279 = lshr i32 %263, 31
  %280 = trunc i32 %279 to i8
  store i8 %280, i8* %55, align 1
  %281 = lshr i32 %262, 31
  %282 = xor i32 %279, %281
  %283 = add nuw nsw i32 %282, %279
  %284 = icmp eq i32 %283, 2
  %285 = zext i1 %284 to i8
  store i8 %285, i8* %56, align 1
  %286 = add i64 %259, 9
  store i64 %286, i64* %3, align 8
  store i32 %263, i32* %261, align 4
  %287 = load i64, i64* %3, align 8
  %288 = add i64 %287, -51
  store i64 %288, i64* %3, align 8
  br label %block_.L_401c45

block_.L_401c7d:                                  ; preds = %block_.L_401c45
  %289 = add i64 %173, 3
  store i64 %289, i64* %3, align 8
  %290 = load i32, i32* %145, align 4
  %291 = shl i32 %290, 1
  %292 = icmp slt i32 %290, 0
  %293 = icmp slt i32 %291, 0
  %294 = xor i1 %292, %293
  %295 = zext i32 %291 to i64
  store i64 %295, i64* %RAX.i1594, align 8
  %.lobit = lshr i32 %290, 31
  %296 = trunc i32 %.lobit to i8
  store i8 %296, i8* %51, align 1
  %297 = and i32 %291, 254
  %298 = tail call i32 @llvm.ctpop.i32(i32 %297)
  %299 = trunc i32 %298 to i8
  %300 = and i8 %299, 1
  %301 = xor i8 %300, 1
  store i8 %301, i8* %52, align 1
  store i8 0, i8* %53, align 1
  %302 = icmp eq i32 %291, 0
  %303 = zext i1 %302 to i8
  store i8 %303, i8* %54, align 1
  %304 = lshr i32 %290, 30
  %305 = trunc i32 %304 to i8
  %306 = and i8 %305, 1
  store i8 %306, i8* %55, align 1
  %307 = zext i1 %294 to i8
  store i8 %307, i8* %56, align 1
  %308 = add i64 %173, 8
  store i64 %308, i64* %3, align 8
  store i32 %291, i32* %145, align 4
  %309 = load i64, i64* %3, align 8
  %310 = add i64 %309, -96
  store i64 %310, i64* %3, align 8
  br label %block_.L_401c26

block_.L_401c8b:                                  ; preds = %block_.L_401c26
  %311 = load i32, i32* %61, align 4
  %312 = shl i32 %311, 1
  %313 = icmp slt i32 %311, 0
  %314 = icmp slt i32 %312, 0
  %315 = xor i1 %313, %314
  %316 = zext i32 %312 to i64
  store i64 %316, i64* %RAX.i1594, align 8
  %.lobit7 = lshr i32 %311, 31
  %317 = trunc i32 %.lobit7 to i8
  store i8 %317, i8* %51, align 1
  %318 = and i32 %312, 254
  %319 = tail call i32 @llvm.ctpop.i32(i32 %318)
  %320 = trunc i32 %319 to i8
  %321 = and i8 %320, 1
  %322 = xor i8 %321, 1
  store i8 %322, i8* %52, align 1
  store i8 0, i8* %53, align 1
  %323 = icmp eq i32 %312, 0
  %324 = zext i1 %323 to i8
  store i8 %324, i8* %54, align 1
  %325 = lshr i32 %311, 30
  %326 = trunc i32 %325 to i8
  %327 = and i8 %326, 1
  store i8 %327, i8* %55, align 1
  %328 = zext i1 %315 to i8
  store i8 %328, i8* %56, align 1
  %329 = add i64 %58, -52
  %330 = add i64 %109, 8
  store i64 %330, i64* %3, align 8
  %331 = inttoptr i64 %329 to i32*
  store i32 %312, i32* %331, align 4
  %332 = load i64, i64* %RBP.i, align 8
  %333 = add i64 %332, -48
  %334 = load i64, i64* %3, align 8
  %335 = add i64 %334, 3
  store i64 %335, i64* %3, align 8
  %336 = inttoptr i64 %333 to i32*
  %337 = load i32, i32* %336, align 4
  %338 = shl i32 %337, 3
  %339 = zext i32 %338 to i64
  store i64 %339, i64* %RAX.i1594, align 8
  %340 = lshr i32 %337, 29
  %341 = trunc i32 %340 to i8
  %342 = and i8 %341, 1
  store i8 %342, i8* %51, align 1
  %343 = and i32 %338, 248
  %344 = tail call i32 @llvm.ctpop.i32(i32 %343)
  %345 = trunc i32 %344 to i8
  %346 = and i8 %345, 1
  %347 = xor i8 %346, 1
  store i8 %347, i8* %52, align 1
  store i8 0, i8* %53, align 1
  %348 = icmp eq i32 %338, 0
  %349 = zext i1 %348 to i8
  store i8 %349, i8* %54, align 1
  %350 = lshr i32 %337, 28
  %351 = trunc i32 %350 to i8
  %352 = and i8 %351, 1
  store i8 %352, i8* %55, align 1
  store i8 0, i8* %56, align 1
  %353 = add i64 %332, -44
  %354 = add i64 %334, 9
  store i64 %354, i64* %3, align 8
  %355 = inttoptr i64 %353 to i32*
  %356 = load i32, i32* %355, align 4
  %357 = sub i32 %338, %356
  %358 = icmp ult i32 %338, %356
  %359 = zext i1 %358 to i8
  store i8 %359, i8* %51, align 1
  %360 = and i32 %357, 255
  %361 = tail call i32 @llvm.ctpop.i32(i32 %360)
  %362 = trunc i32 %361 to i8
  %363 = and i8 %362, 1
  %364 = xor i8 %363, 1
  store i8 %364, i8* %52, align 1
  %365 = xor i32 %356, %338
  %366 = xor i32 %365, %357
  %367 = lshr i32 %366, 4
  %368 = trunc i32 %367 to i8
  %369 = and i8 %368, 1
  store i8 %369, i8* %53, align 1
  %370 = icmp eq i32 %357, 0
  %371 = zext i1 %370 to i8
  store i8 %371, i8* %54, align 1
  %372 = lshr i32 %357, 31
  %373 = trunc i32 %372 to i8
  store i8 %373, i8* %55, align 1
  %374 = lshr i32 %337, 28
  %375 = and i32 %374, 1
  %376 = lshr i32 %356, 31
  %377 = xor i32 %376, %375
  %378 = xor i32 %372, %375
  %379 = add nuw nsw i32 %378, %377
  %380 = icmp eq i32 %379, 2
  %381 = zext i1 %380 to i8
  store i8 %381, i8* %56, align 1
  %.v43 = select i1 %370, i64 15, i64 1303
  %382 = add i64 %334, %.v43
  store i64 %382, i64* %3, align 8
  br i1 %370, label %block_401ca3, label %block_.L_4021ab

block_401ca3:                                     ; preds = %block_.L_401c8b
  %383 = add i64 %332, -36
  %384 = add i64 %382, 7
  store i64 %384, i64* %3, align 8
  %385 = inttoptr i64 %383 to i32*
  store i32 0, i32* %385, align 4
  %RCX.i811 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %386 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %387 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %388 = bitcast i64* %387 to double*
  %.pre38 = load i64, i64* %3, align 8
  br label %block_.L_401caa

block_.L_401caa:                                  ; preds = %block_.L_40203f, %block_401ca3
  %389 = phi i64 [ %2616, %block_.L_40203f ], [ %.pre38, %block_401ca3 ]
  %390 = load i64, i64* %RBP.i, align 8
  %391 = add i64 %390, -36
  %392 = add i64 %389, 3
  store i64 %392, i64* %3, align 8
  %393 = inttoptr i64 %391 to i32*
  %394 = load i32, i32* %393, align 4
  %395 = zext i32 %394 to i64
  store i64 %395, i64* %RAX.i1594, align 8
  %396 = add i64 %390, -48
  %397 = add i64 %389, 6
  store i64 %397, i64* %3, align 8
  %398 = inttoptr i64 %396 to i32*
  %399 = load i32, i32* %398, align 4
  %400 = sub i32 %394, %399
  %401 = icmp ult i32 %394, %399
  %402 = zext i1 %401 to i8
  store i8 %402, i8* %51, align 1
  %403 = and i32 %400, 255
  %404 = tail call i32 @llvm.ctpop.i32(i32 %403)
  %405 = trunc i32 %404 to i8
  %406 = and i8 %405, 1
  %407 = xor i8 %406, 1
  store i8 %407, i8* %52, align 1
  %408 = xor i32 %399, %394
  %409 = xor i32 %408, %400
  %410 = lshr i32 %409, 4
  %411 = trunc i32 %410 to i8
  %412 = and i8 %411, 1
  store i8 %412, i8* %53, align 1
  %413 = icmp eq i32 %400, 0
  %414 = zext i1 %413 to i8
  store i8 %414, i8* %54, align 1
  %415 = lshr i32 %400, 31
  %416 = trunc i32 %415 to i8
  store i8 %416, i8* %55, align 1
  %417 = lshr i32 %394, 31
  %418 = lshr i32 %399, 31
  %419 = xor i32 %418, %417
  %420 = xor i32 %415, %417
  %421 = add nuw nsw i32 %420, %419
  %422 = icmp eq i32 %421, 2
  %423 = zext i1 %422 to i8
  store i8 %423, i8* %56, align 1
  %424 = icmp ne i8 %416, 0
  %425 = xor i1 %424, %422
  %.v46 = select i1 %425, i64 12, i64 1276
  %426 = add i64 %389, %.v46
  store i64 %426, i64* %3, align 8
  br i1 %425, label %block_401cb6, label %block_.L_4021a6

block_401cb6:                                     ; preds = %block_.L_401caa
  %427 = add i64 %390, -28
  %428 = add i64 %426, 7
  store i64 %428, i64* %3, align 8
  %429 = inttoptr i64 %427 to i32*
  store i32 0, i32* %429, align 4
  %.pre39 = load i64, i64* %3, align 8
  br label %block_.L_401cbd

block_.L_401cbd:                                  ; preds = %block_401cc9, %block_401cb6
  %430 = phi i64 [ %1968, %block_401cc9 ], [ %.pre39, %block_401cb6 ]
  %431 = load i64, i64* %RBP.i, align 8
  %432 = add i64 %431, -28
  %433 = add i64 %430, 3
  store i64 %433, i64* %3, align 8
  %434 = inttoptr i64 %432 to i32*
  %435 = load i32, i32* %434, align 4
  %436 = zext i32 %435 to i64
  store i64 %436, i64* %RAX.i1594, align 8
  %437 = add i64 %431, -36
  %438 = add i64 %430, 6
  store i64 %438, i64* %3, align 8
  %439 = inttoptr i64 %437 to i32*
  %440 = load i32, i32* %439, align 4
  %441 = sub i32 %435, %440
  %442 = icmp ult i32 %435, %440
  %443 = zext i1 %442 to i8
  store i8 %443, i8* %51, align 1
  %444 = and i32 %441, 255
  %445 = tail call i32 @llvm.ctpop.i32(i32 %444)
  %446 = trunc i32 %445 to i8
  %447 = and i8 %446, 1
  %448 = xor i8 %447, 1
  store i8 %448, i8* %52, align 1
  %449 = xor i32 %440, %435
  %450 = xor i32 %449, %441
  %451 = lshr i32 %450, 4
  %452 = trunc i32 %451 to i8
  %453 = and i8 %452, 1
  store i8 %453, i8* %53, align 1
  %454 = icmp eq i32 %441, 0
  %455 = zext i1 %454 to i8
  store i8 %455, i8* %54, align 1
  %456 = lshr i32 %441, 31
  %457 = trunc i32 %456 to i8
  store i8 %457, i8* %55, align 1
  %458 = lshr i32 %435, 31
  %459 = lshr i32 %440, 31
  %460 = xor i32 %459, %458
  %461 = xor i32 %456, %458
  %462 = add nuw nsw i32 %461, %460
  %463 = icmp eq i32 %462, 2
  %464 = zext i1 %463 to i8
  store i8 %464, i8* %56, align 1
  %465 = icmp ne i8 %457, 0
  %466 = xor i1 %465, %463
  %.v47 = select i1 %466, i64 12, i64 898
  %467 = add i64 %430, %.v47
  %468 = add i64 %467, 10
  store i64 %468, i64* %3, align 8
  store i64 -9223372036854775808, i64* %RAX.i1594, align 8
  %469 = add i64 %467, 13
  store i64 %469, i64* %3, align 8
  br i1 %466, label %block_401cc9, label %block_.L_40203f

block_401cc9:                                     ; preds = %block_.L_401cbd
  %470 = load i32, i32* %434, align 4
  %471 = shl i32 %470, 1
  %472 = icmp slt i32 %470, 0
  %473 = icmp slt i32 %471, 0
  %474 = xor i1 %472, %473
  %475 = zext i32 %471 to i64
  store i64 %475, i64* %RCX.i811, align 8
  %.lobit9 = lshr i32 %470, 31
  %476 = trunc i32 %.lobit9 to i8
  store i8 %476, i8* %51, align 1
  %477 = and i32 %471, 254
  %478 = tail call i32 @llvm.ctpop.i32(i32 %477)
  %479 = trunc i32 %478 to i8
  %480 = and i8 %479, 1
  %481 = xor i8 %480, 1
  store i8 %481, i8* %52, align 1
  store i8 0, i8* %53, align 1
  %482 = icmp eq i32 %471, 0
  %483 = zext i1 %482 to i8
  store i8 %483, i8* %54, align 1
  %484 = lshr i32 %470, 30
  %485 = trunc i32 %484 to i8
  %486 = and i8 %485, 1
  store i8 %486, i8* %55, align 1
  %487 = zext i1 %474 to i8
  store i8 %487, i8* %56, align 1
  %488 = add i64 %431, -16
  %489 = add i64 %467, 19
  store i64 %489, i64* %3, align 8
  %490 = inttoptr i64 %488 to i64*
  %491 = load i64, i64* %490, align 8
  store i64 %491, i64* %RDX.i1610, align 8
  %492 = add i64 %467, 23
  store i64 %492, i64* %3, align 8
  %493 = load i32, i32* %439, align 4
  %494 = sext i32 %493 to i64
  store i64 %494, i64* %RSI.i1613, align 8
  %495 = shl nsw i64 %494, 2
  %496 = add i64 %491, %495
  %497 = add i64 %467, 26
  store i64 %497, i64* %3, align 8
  %498 = inttoptr i64 %496 to i32*
  %499 = load i32, i32* %498, align 4
  %500 = add i32 %499, %471
  %501 = zext i32 %500 to i64
  store i64 %501, i64* %RCX.i811, align 8
  %502 = icmp ult i32 %500, %471
  %503 = icmp ult i32 %500, %499
  %504 = or i1 %502, %503
  %505 = zext i1 %504 to i8
  store i8 %505, i8* %51, align 1
  %506 = and i32 %500, 255
  %507 = tail call i32 @llvm.ctpop.i32(i32 %506)
  %508 = trunc i32 %507 to i8
  %509 = and i8 %508, 1
  %510 = xor i8 %509, 1
  store i8 %510, i8* %52, align 1
  %511 = xor i32 %499, %471
  %512 = xor i32 %511, %500
  %513 = lshr i32 %512, 4
  %514 = trunc i32 %513 to i8
  %515 = and i8 %514, 1
  store i8 %515, i8* %53, align 1
  %516 = icmp eq i32 %500, 0
  %517 = zext i1 %516 to i8
  store i8 %517, i8* %54, align 1
  %518 = lshr i32 %500, 31
  %519 = trunc i32 %518 to i8
  store i8 %519, i8* %55, align 1
  %520 = lshr i32 %470, 30
  %521 = and i32 %520, 1
  %522 = lshr i32 %499, 31
  %523 = xor i32 %518, %521
  %524 = xor i32 %518, %522
  %525 = add nuw nsw i32 %523, %524
  %526 = icmp eq i32 %525, 2
  %527 = zext i1 %526 to i8
  store i8 %527, i8* %56, align 1
  %528 = add i64 %431, -32
  %529 = add i64 %467, 29
  store i64 %529, i64* %3, align 8
  %530 = inttoptr i64 %528 to i32*
  store i32 %500, i32* %530, align 4
  %531 = load i64, i64* %RBP.i, align 8
  %532 = add i64 %531, -36
  %533 = load i64, i64* %3, align 8
  %534 = add i64 %533, 3
  store i64 %534, i64* %3, align 8
  %535 = inttoptr i64 %532 to i32*
  %536 = load i32, i32* %535, align 4
  %537 = shl i32 %536, 1
  %538 = icmp slt i32 %536, 0
  %539 = icmp slt i32 %537, 0
  %540 = xor i1 %538, %539
  %541 = zext i32 %537 to i64
  store i64 %541, i64* %RCX.i811, align 8
  %.lobit10 = lshr i32 %536, 31
  %542 = trunc i32 %.lobit10 to i8
  store i8 %542, i8* %51, align 1
  %543 = and i32 %537, 254
  %544 = tail call i32 @llvm.ctpop.i32(i32 %543)
  %545 = trunc i32 %544 to i8
  %546 = and i8 %545, 1
  %547 = xor i8 %546, 1
  store i8 %547, i8* %52, align 1
  store i8 0, i8* %53, align 1
  %548 = icmp eq i32 %537, 0
  %549 = zext i1 %548 to i8
  store i8 %549, i8* %54, align 1
  %550 = lshr i32 %536, 30
  %551 = trunc i32 %550 to i8
  %552 = and i8 %551, 1
  store i8 %552, i8* %55, align 1
  %553 = zext i1 %540 to i8
  store i8 %553, i8* %56, align 1
  %554 = add i64 %531, -16
  %555 = add i64 %533, 9
  store i64 %555, i64* %3, align 8
  %556 = inttoptr i64 %554 to i64*
  %557 = load i64, i64* %556, align 8
  store i64 %557, i64* %RDX.i1610, align 8
  %558 = add i64 %531, -28
  %559 = add i64 %533, 13
  store i64 %559, i64* %3, align 8
  %560 = inttoptr i64 %558 to i32*
  %561 = load i32, i32* %560, align 4
  %562 = sext i32 %561 to i64
  store i64 %562, i64* %RSI.i1613, align 8
  %563 = shl nsw i64 %562, 2
  %564 = add i64 %557, %563
  %565 = add i64 %533, 16
  store i64 %565, i64* %3, align 8
  %566 = inttoptr i64 %564 to i32*
  %567 = load i32, i32* %566, align 4
  %568 = add i32 %567, %537
  %569 = zext i32 %568 to i64
  store i64 %569, i64* %RCX.i811, align 8
  %570 = icmp ult i32 %568, %537
  %571 = icmp ult i32 %568, %567
  %572 = or i1 %570, %571
  %573 = zext i1 %572 to i8
  store i8 %573, i8* %51, align 1
  %574 = and i32 %568, 255
  %575 = tail call i32 @llvm.ctpop.i32(i32 %574)
  %576 = trunc i32 %575 to i8
  %577 = and i8 %576, 1
  %578 = xor i8 %577, 1
  store i8 %578, i8* %52, align 1
  %579 = xor i32 %567, %537
  %580 = xor i32 %579, %568
  %581 = lshr i32 %580, 4
  %582 = trunc i32 %581 to i8
  %583 = and i8 %582, 1
  store i8 %583, i8* %53, align 1
  %584 = icmp eq i32 %568, 0
  %585 = zext i1 %584 to i8
  store i8 %585, i8* %54, align 1
  %586 = lshr i32 %568, 31
  %587 = trunc i32 %586 to i8
  store i8 %587, i8* %55, align 1
  %588 = lshr i32 %536, 30
  %589 = and i32 %588, 1
  %590 = lshr i32 %567, 31
  %591 = xor i32 %586, %589
  %592 = xor i32 %586, %590
  %593 = add nuw nsw i32 %591, %592
  %594 = icmp eq i32 %593, 2
  %595 = zext i1 %594 to i8
  store i8 %595, i8* %56, align 1
  %596 = add i64 %531, -40
  %597 = add i64 %533, 19
  store i64 %597, i64* %3, align 8
  %598 = inttoptr i64 %596 to i32*
  store i32 %568, i32* %598, align 4
  %599 = load i64, i64* %RBP.i, align 8
  %600 = add i64 %599, -24
  %601 = load i64, i64* %3, align 8
  %602 = add i64 %601, 4
  store i64 %602, i64* %3, align 8
  %603 = inttoptr i64 %600 to i64*
  %604 = load i64, i64* %603, align 8
  store i64 %604, i64* %RDX.i1610, align 8
  %605 = add i64 %599, -32
  %606 = add i64 %601, 8
  store i64 %606, i64* %3, align 8
  %607 = inttoptr i64 %605 to i32*
  %608 = load i32, i32* %607, align 4
  %609 = sext i32 %608 to i64
  store i64 %609, i64* %RSI.i1613, align 8
  %610 = shl nsw i64 %609, 3
  %611 = add i64 %610, %604
  %612 = add i64 %601, 13
  store i64 %612, i64* %3, align 8
  %613 = inttoptr i64 %611 to i64*
  %614 = load i64, i64* %613, align 8
  store i64 %614, i64* %386, align 1
  store double 0.000000e+00, double* %388, align 1
  %615 = add i64 %599, -64
  %616 = add i64 %601, 18
  store i64 %616, i64* %3, align 8
  %617 = inttoptr i64 %615 to i64*
  store i64 %614, i64* %617, align 8
  %618 = load i64, i64* %RBP.i, align 8
  %619 = add i64 %618, -24
  %620 = load i64, i64* %3, align 8
  %621 = add i64 %620, 4
  store i64 %621, i64* %3, align 8
  %622 = inttoptr i64 %619 to i64*
  %623 = load i64, i64* %622, align 8
  store i64 %623, i64* %RDX.i1610, align 8
  %624 = add i64 %618, -32
  %625 = add i64 %620, 7
  store i64 %625, i64* %3, align 8
  %626 = inttoptr i64 %624 to i32*
  %627 = load i32, i32* %626, align 4
  %628 = add i32 %627, 1
  %629 = zext i32 %628 to i64
  store i64 %629, i64* %RCX.i811, align 8
  %630 = icmp eq i32 %627, -1
  %631 = icmp eq i32 %628, 0
  %632 = or i1 %630, %631
  %633 = zext i1 %632 to i8
  store i8 %633, i8* %51, align 1
  %634 = and i32 %628, 255
  %635 = tail call i32 @llvm.ctpop.i32(i32 %634)
  %636 = trunc i32 %635 to i8
  %637 = and i8 %636, 1
  %638 = xor i8 %637, 1
  store i8 %638, i8* %52, align 1
  %639 = xor i32 %628, %627
  %640 = lshr i32 %639, 4
  %641 = trunc i32 %640 to i8
  %642 = and i8 %641, 1
  store i8 %642, i8* %53, align 1
  %643 = zext i1 %631 to i8
  store i8 %643, i8* %54, align 1
  %644 = lshr i32 %628, 31
  %645 = trunc i32 %644 to i8
  store i8 %645, i8* %55, align 1
  %646 = lshr i32 %627, 31
  %647 = xor i32 %644, %646
  %648 = add nuw nsw i32 %647, %644
  %649 = icmp eq i32 %648, 2
  %650 = zext i1 %649 to i8
  store i8 %650, i8* %56, align 1
  %651 = sext i32 %628 to i64
  store i64 %651, i64* %RSI.i1613, align 8
  %652 = shl nsw i64 %651, 3
  %653 = add i64 %623, %652
  %654 = add i64 %620, 18
  store i64 %654, i64* %3, align 8
  %655 = inttoptr i64 %653 to i64*
  %656 = load i64, i64* %655, align 8
  %657 = load i64, i64* %RAX.i1594, align 8
  %658 = xor i64 %657, %656
  store i64 %658, i64* %RDX.i1610, align 8
  store i8 0, i8* %51, align 1
  %659 = trunc i64 %658 to i32
  %660 = and i32 %659, 255
  %661 = tail call i32 @llvm.ctpop.i32(i32 %660)
  %662 = trunc i32 %661 to i8
  %663 = and i8 %662, 1
  %664 = xor i8 %663, 1
  store i8 %664, i8* %52, align 1
  %665 = icmp eq i64 %658, 0
  %666 = zext i1 %665 to i8
  store i8 %666, i8* %54, align 1
  %667 = lshr i64 %658, 63
  %668 = trunc i64 %667 to i8
  store i8 %668, i8* %55, align 1
  store i8 0, i8* %56, align 1
  store i8 0, i8* %53, align 1
  store i64 %658, i64* %386, align 1
  store i64 0, i64* %387, align 1
  %669 = add i64 %618, -72
  %670 = add i64 %620, 36
  store i64 %670, i64* %3, align 8
  %671 = inttoptr i64 %669 to i64*
  store i64 %658, i64* %671, align 8
  %672 = load i64, i64* %RBP.i, align 8
  %673 = add i64 %672, -24
  %674 = load i64, i64* %3, align 8
  %675 = add i64 %674, 4
  store i64 %675, i64* %3, align 8
  %676 = inttoptr i64 %673 to i64*
  %677 = load i64, i64* %676, align 8
  store i64 %677, i64* %RDX.i1610, align 8
  %678 = add i64 %672, -40
  %679 = add i64 %674, 8
  store i64 %679, i64* %3, align 8
  %680 = inttoptr i64 %678 to i32*
  %681 = load i32, i32* %680, align 4
  %682 = sext i32 %681 to i64
  store i64 %682, i64* %RSI.i1613, align 8
  %683 = shl nsw i64 %682, 3
  %684 = add i64 %683, %677
  %685 = add i64 %674, 13
  store i64 %685, i64* %3, align 8
  %686 = inttoptr i64 %684 to i64*
  %687 = load i64, i64* %686, align 8
  store i64 %687, i64* %386, align 1
  store double 0.000000e+00, double* %388, align 1
  %688 = add i64 %672, -80
  %689 = add i64 %674, 18
  store i64 %689, i64* %3, align 8
  %690 = inttoptr i64 %688 to i64*
  store i64 %687, i64* %690, align 8
  %691 = load i64, i64* %RBP.i, align 8
  %692 = add i64 %691, -24
  %693 = load i64, i64* %3, align 8
  %694 = add i64 %693, 4
  store i64 %694, i64* %3, align 8
  %695 = inttoptr i64 %692 to i64*
  %696 = load i64, i64* %695, align 8
  store i64 %696, i64* %RDX.i1610, align 8
  %697 = add i64 %691, -40
  %698 = add i64 %693, 7
  store i64 %698, i64* %3, align 8
  %699 = inttoptr i64 %697 to i32*
  %700 = load i32, i32* %699, align 4
  %701 = add i32 %700, 1
  %702 = zext i32 %701 to i64
  store i64 %702, i64* %RCX.i811, align 8
  %703 = icmp eq i32 %700, -1
  %704 = icmp eq i32 %701, 0
  %705 = or i1 %703, %704
  %706 = zext i1 %705 to i8
  store i8 %706, i8* %51, align 1
  %707 = and i32 %701, 255
  %708 = tail call i32 @llvm.ctpop.i32(i32 %707)
  %709 = trunc i32 %708 to i8
  %710 = and i8 %709, 1
  %711 = xor i8 %710, 1
  store i8 %711, i8* %52, align 1
  %712 = xor i32 %701, %700
  %713 = lshr i32 %712, 4
  %714 = trunc i32 %713 to i8
  %715 = and i8 %714, 1
  store i8 %715, i8* %53, align 1
  %716 = zext i1 %704 to i8
  store i8 %716, i8* %54, align 1
  %717 = lshr i32 %701, 31
  %718 = trunc i32 %717 to i8
  store i8 %718, i8* %55, align 1
  %719 = lshr i32 %700, 31
  %720 = xor i32 %717, %719
  %721 = add nuw nsw i32 %720, %717
  %722 = icmp eq i32 %721, 2
  %723 = zext i1 %722 to i8
  store i8 %723, i8* %56, align 1
  %724 = sext i32 %701 to i64
  store i64 %724, i64* %RSI.i1613, align 8
  %725 = shl nsw i64 %724, 3
  %726 = add i64 %696, %725
  %727 = add i64 %693, 18
  store i64 %727, i64* %3, align 8
  %728 = inttoptr i64 %726 to i64*
  %729 = load i64, i64* %728, align 8
  %730 = load i64, i64* %RAX.i1594, align 8
  %731 = xor i64 %730, %729
  store i64 %731, i64* %RDX.i1610, align 8
  store i8 0, i8* %51, align 1
  %732 = trunc i64 %731 to i32
  %733 = and i32 %732, 255
  %734 = tail call i32 @llvm.ctpop.i32(i32 %733)
  %735 = trunc i32 %734 to i8
  %736 = and i8 %735, 1
  %737 = xor i8 %736, 1
  store i8 %737, i8* %52, align 1
  %738 = icmp eq i64 %731, 0
  %739 = zext i1 %738 to i8
  store i8 %739, i8* %54, align 1
  %740 = lshr i64 %731, 63
  %741 = trunc i64 %740 to i8
  store i8 %741, i8* %55, align 1
  store i8 0, i8* %56, align 1
  store i8 0, i8* %53, align 1
  store i64 %731, i64* %386, align 1
  store i64 0, i64* %387, align 1
  %742 = add i64 %691, -88
  %743 = add i64 %693, 36
  store i64 %743, i64* %3, align 8
  %744 = inttoptr i64 %742 to i64*
  store i64 %731, i64* %744, align 8
  %745 = load i64, i64* %RBP.i, align 8
  %746 = add i64 %745, -80
  %747 = load i64, i64* %3, align 8
  %748 = add i64 %747, 5
  store i64 %748, i64* %3, align 8
  %749 = inttoptr i64 %746 to i64*
  %750 = load i64, i64* %749, align 8
  store i64 %750, i64* %386, align 1
  store double 0.000000e+00, double* %388, align 1
  %751 = add i64 %745, -24
  %752 = add i64 %747, 9
  store i64 %752, i64* %3, align 8
  %753 = inttoptr i64 %751 to i64*
  %754 = load i64, i64* %753, align 8
  store i64 %754, i64* %RDX.i1610, align 8
  %755 = add i64 %745, -32
  %756 = add i64 %747, 13
  store i64 %756, i64* %3, align 8
  %757 = inttoptr i64 %755 to i32*
  %758 = load i32, i32* %757, align 4
  %759 = sext i32 %758 to i64
  store i64 %759, i64* %RSI.i1613, align 8
  %760 = shl nsw i64 %759, 3
  %761 = add i64 %760, %754
  %762 = add i64 %747, 18
  store i64 %762, i64* %3, align 8
  %763 = inttoptr i64 %761 to i64*
  store i64 %750, i64* %763, align 8
  %764 = load i64, i64* %RBP.i, align 8
  %765 = add i64 %764, -88
  %766 = load i64, i64* %3, align 8
  %767 = add i64 %766, 5
  store i64 %767, i64* %3, align 8
  %768 = inttoptr i64 %765 to i64*
  %769 = load i64, i64* %768, align 8
  store i64 %769, i64* %386, align 1
  store double 0.000000e+00, double* %388, align 1
  %770 = add i64 %764, -24
  %771 = add i64 %766, 9
  store i64 %771, i64* %3, align 8
  %772 = inttoptr i64 %770 to i64*
  %773 = load i64, i64* %772, align 8
  store i64 %773, i64* %RDX.i1610, align 8
  %774 = add i64 %764, -32
  %775 = add i64 %766, 12
  store i64 %775, i64* %3, align 8
  %776 = inttoptr i64 %774 to i32*
  %777 = load i32, i32* %776, align 4
  %778 = add i32 %777, 1
  %779 = zext i32 %778 to i64
  store i64 %779, i64* %RCX.i811, align 8
  %780 = icmp eq i32 %777, -1
  %781 = icmp eq i32 %778, 0
  %782 = or i1 %780, %781
  %783 = zext i1 %782 to i8
  store i8 %783, i8* %51, align 1
  %784 = and i32 %778, 255
  %785 = tail call i32 @llvm.ctpop.i32(i32 %784)
  %786 = trunc i32 %785 to i8
  %787 = and i8 %786, 1
  %788 = xor i8 %787, 1
  store i8 %788, i8* %52, align 1
  %789 = xor i32 %778, %777
  %790 = lshr i32 %789, 4
  %791 = trunc i32 %790 to i8
  %792 = and i8 %791, 1
  store i8 %792, i8* %53, align 1
  %793 = zext i1 %781 to i8
  store i8 %793, i8* %54, align 1
  %794 = lshr i32 %778, 31
  %795 = trunc i32 %794 to i8
  store i8 %795, i8* %55, align 1
  %796 = lshr i32 %777, 31
  %797 = xor i32 %794, %796
  %798 = add nuw nsw i32 %797, %794
  %799 = icmp eq i32 %798, 2
  %800 = zext i1 %799 to i8
  store i8 %800, i8* %56, align 1
  %801 = sext i32 %778 to i64
  store i64 %801, i64* %RSI.i1613, align 8
  %802 = shl nsw i64 %801, 3
  %803 = add i64 %773, %802
  %804 = add i64 %766, 23
  store i64 %804, i64* %3, align 8
  %805 = inttoptr i64 %803 to i64*
  store i64 %769, i64* %805, align 8
  %806 = load i64, i64* %RBP.i, align 8
  %807 = add i64 %806, -64
  %808 = load i64, i64* %3, align 8
  %809 = add i64 %808, 5
  store i64 %809, i64* %3, align 8
  %810 = inttoptr i64 %807 to i64*
  %811 = load i64, i64* %810, align 8
  store i64 %811, i64* %386, align 1
  store double 0.000000e+00, double* %388, align 1
  %812 = add i64 %806, -24
  %813 = add i64 %808, 9
  store i64 %813, i64* %3, align 8
  %814 = inttoptr i64 %812 to i64*
  %815 = load i64, i64* %814, align 8
  store i64 %815, i64* %RDX.i1610, align 8
  %816 = add i64 %806, -40
  %817 = add i64 %808, 13
  store i64 %817, i64* %3, align 8
  %818 = inttoptr i64 %816 to i32*
  %819 = load i32, i32* %818, align 4
  %820 = sext i32 %819 to i64
  store i64 %820, i64* %RSI.i1613, align 8
  %821 = shl nsw i64 %820, 3
  %822 = add i64 %821, %815
  %823 = add i64 %808, 18
  store i64 %823, i64* %3, align 8
  %824 = inttoptr i64 %822 to i64*
  store i64 %811, i64* %824, align 8
  %825 = load i64, i64* %RBP.i, align 8
  %826 = add i64 %825, -72
  %827 = load i64, i64* %3, align 8
  %828 = add i64 %827, 5
  store i64 %828, i64* %3, align 8
  %829 = inttoptr i64 %826 to i64*
  %830 = load i64, i64* %829, align 8
  store i64 %830, i64* %386, align 1
  store double 0.000000e+00, double* %388, align 1
  %831 = add i64 %825, -24
  %832 = add i64 %827, 9
  store i64 %832, i64* %3, align 8
  %833 = inttoptr i64 %831 to i64*
  %834 = load i64, i64* %833, align 8
  store i64 %834, i64* %RDX.i1610, align 8
  %835 = add i64 %825, -40
  %836 = add i64 %827, 12
  store i64 %836, i64* %3, align 8
  %837 = inttoptr i64 %835 to i32*
  %838 = load i32, i32* %837, align 4
  %839 = add i32 %838, 1
  %840 = zext i32 %839 to i64
  store i64 %840, i64* %RCX.i811, align 8
  %841 = icmp eq i32 %838, -1
  %842 = icmp eq i32 %839, 0
  %843 = or i1 %841, %842
  %844 = zext i1 %843 to i8
  store i8 %844, i8* %51, align 1
  %845 = and i32 %839, 255
  %846 = tail call i32 @llvm.ctpop.i32(i32 %845)
  %847 = trunc i32 %846 to i8
  %848 = and i8 %847, 1
  %849 = xor i8 %848, 1
  store i8 %849, i8* %52, align 1
  %850 = xor i32 %839, %838
  %851 = lshr i32 %850, 4
  %852 = trunc i32 %851 to i8
  %853 = and i8 %852, 1
  store i8 %853, i8* %53, align 1
  %854 = zext i1 %842 to i8
  store i8 %854, i8* %54, align 1
  %855 = lshr i32 %839, 31
  %856 = trunc i32 %855 to i8
  store i8 %856, i8* %55, align 1
  %857 = lshr i32 %838, 31
  %858 = xor i32 %855, %857
  %859 = add nuw nsw i32 %858, %855
  %860 = icmp eq i32 %859, 2
  %861 = zext i1 %860 to i8
  store i8 %861, i8* %56, align 1
  %862 = sext i32 %839 to i64
  store i64 %862, i64* %RSI.i1613, align 8
  %863 = shl nsw i64 %862, 3
  %864 = add i64 %834, %863
  %865 = add i64 %827, 23
  store i64 %865, i64* %3, align 8
  %866 = inttoptr i64 %864 to i64*
  store i64 %830, i64* %866, align 8
  %867 = load i64, i64* %RBP.i, align 8
  %868 = add i64 %867, -52
  %869 = load i64, i64* %3, align 8
  %870 = add i64 %869, 3
  store i64 %870, i64* %3, align 8
  %871 = inttoptr i64 %868 to i32*
  %872 = load i32, i32* %871, align 4
  %873 = zext i32 %872 to i64
  store i64 %873, i64* %RCX.i811, align 8
  %874 = add i64 %867, -32
  %875 = add i64 %869, 6
  store i64 %875, i64* %3, align 8
  %876 = inttoptr i64 %874 to i32*
  %877 = load i32, i32* %876, align 4
  %878 = add i32 %877, %872
  %879 = zext i32 %878 to i64
  store i64 %879, i64* %RCX.i811, align 8
  %880 = icmp ult i32 %878, %872
  %881 = icmp ult i32 %878, %877
  %882 = or i1 %880, %881
  %883 = zext i1 %882 to i8
  store i8 %883, i8* %51, align 1
  %884 = and i32 %878, 255
  %885 = tail call i32 @llvm.ctpop.i32(i32 %884)
  %886 = trunc i32 %885 to i8
  %887 = and i8 %886, 1
  %888 = xor i8 %887, 1
  store i8 %888, i8* %52, align 1
  %889 = xor i32 %877, %872
  %890 = xor i32 %889, %878
  %891 = lshr i32 %890, 4
  %892 = trunc i32 %891 to i8
  %893 = and i8 %892, 1
  store i8 %893, i8* %53, align 1
  %894 = icmp eq i32 %878, 0
  %895 = zext i1 %894 to i8
  store i8 %895, i8* %54, align 1
  %896 = lshr i32 %878, 31
  %897 = trunc i32 %896 to i8
  store i8 %897, i8* %55, align 1
  %898 = lshr i32 %872, 31
  %899 = lshr i32 %877, 31
  %900 = xor i32 %896, %898
  %901 = xor i32 %896, %899
  %902 = add nuw nsw i32 %900, %901
  %903 = icmp eq i32 %902, 2
  %904 = zext i1 %903 to i8
  store i8 %904, i8* %56, align 1
  %905 = add i64 %869, 9
  store i64 %905, i64* %3, align 8
  store i32 %878, i32* %876, align 4
  %906 = load i64, i64* %RBP.i, align 8
  %907 = add i64 %906, -52
  %908 = load i64, i64* %3, align 8
  %909 = add i64 %908, 3
  store i64 %909, i64* %3, align 8
  %910 = inttoptr i64 %907 to i32*
  %911 = load i32, i32* %910, align 4
  %912 = shl i32 %911, 1
  %913 = icmp slt i32 %911, 0
  %914 = icmp slt i32 %912, 0
  %915 = xor i1 %913, %914
  %916 = zext i32 %912 to i64
  store i64 %916, i64* %RCX.i811, align 8
  %.lobit11 = lshr i32 %911, 31
  %917 = trunc i32 %.lobit11 to i8
  store i8 %917, i8* %51, align 1
  %918 = and i32 %912, 254
  %919 = tail call i32 @llvm.ctpop.i32(i32 %918)
  %920 = trunc i32 %919 to i8
  %921 = and i8 %920, 1
  %922 = xor i8 %921, 1
  store i8 %922, i8* %52, align 1
  store i8 0, i8* %53, align 1
  %923 = icmp eq i32 %912, 0
  %924 = zext i1 %923 to i8
  store i8 %924, i8* %54, align 1
  %925 = lshr i32 %911, 30
  %926 = trunc i32 %925 to i8
  %927 = and i8 %926, 1
  store i8 %927, i8* %55, align 1
  %928 = zext i1 %915 to i8
  store i8 %928, i8* %56, align 1
  %929 = add i64 %906, -40
  %930 = add i64 %908, 8
  store i64 %930, i64* %3, align 8
  %931 = inttoptr i64 %929 to i32*
  %932 = load i32, i32* %931, align 4
  %933 = add i32 %932, %912
  %934 = zext i32 %933 to i64
  store i64 %934, i64* %RCX.i811, align 8
  %935 = icmp ult i32 %933, %912
  %936 = icmp ult i32 %933, %932
  %937 = or i1 %935, %936
  %938 = zext i1 %937 to i8
  store i8 %938, i8* %51, align 1
  %939 = and i32 %933, 255
  %940 = tail call i32 @llvm.ctpop.i32(i32 %939)
  %941 = trunc i32 %940 to i8
  %942 = and i8 %941, 1
  %943 = xor i8 %942, 1
  store i8 %943, i8* %52, align 1
  %944 = xor i32 %932, %912
  %945 = xor i32 %944, %933
  %946 = lshr i32 %945, 4
  %947 = trunc i32 %946 to i8
  %948 = and i8 %947, 1
  store i8 %948, i8* %53, align 1
  %949 = icmp eq i32 %933, 0
  %950 = zext i1 %949 to i8
  store i8 %950, i8* %54, align 1
  %951 = lshr i32 %933, 31
  %952 = trunc i32 %951 to i8
  store i8 %952, i8* %55, align 1
  %953 = lshr i32 %911, 30
  %954 = and i32 %953, 1
  %955 = lshr i32 %932, 31
  %956 = xor i32 %951, %954
  %957 = xor i32 %951, %955
  %958 = add nuw nsw i32 %956, %957
  %959 = icmp eq i32 %958, 2
  %960 = zext i1 %959 to i8
  store i8 %960, i8* %56, align 1
  %961 = add i64 %908, 11
  store i64 %961, i64* %3, align 8
  store i32 %933, i32* %931, align 4
  %962 = load i64, i64* %RBP.i, align 8
  %963 = add i64 %962, -24
  %964 = load i64, i64* %3, align 8
  %965 = add i64 %964, 4
  store i64 %965, i64* %3, align 8
  %966 = inttoptr i64 %963 to i64*
  %967 = load i64, i64* %966, align 8
  store i64 %967, i64* %RDX.i1610, align 8
  %968 = add i64 %962, -32
  %969 = add i64 %964, 8
  store i64 %969, i64* %3, align 8
  %970 = inttoptr i64 %968 to i32*
  %971 = load i32, i32* %970, align 4
  %972 = sext i32 %971 to i64
  store i64 %972, i64* %RSI.i1613, align 8
  %973 = shl nsw i64 %972, 3
  %974 = add i64 %973, %967
  %975 = add i64 %964, 13
  store i64 %975, i64* %3, align 8
  %976 = inttoptr i64 %974 to i64*
  %977 = load i64, i64* %976, align 8
  store i64 %977, i64* %386, align 1
  store double 0.000000e+00, double* %388, align 1
  %978 = add i64 %962, -64
  %979 = add i64 %964, 18
  store i64 %979, i64* %3, align 8
  %980 = inttoptr i64 %978 to i64*
  store i64 %977, i64* %980, align 8
  %981 = load i64, i64* %RBP.i, align 8
  %982 = add i64 %981, -24
  %983 = load i64, i64* %3, align 8
  %984 = add i64 %983, 4
  store i64 %984, i64* %3, align 8
  %985 = inttoptr i64 %982 to i64*
  %986 = load i64, i64* %985, align 8
  store i64 %986, i64* %RDX.i1610, align 8
  %987 = add i64 %981, -32
  %988 = add i64 %983, 7
  store i64 %988, i64* %3, align 8
  %989 = inttoptr i64 %987 to i32*
  %990 = load i32, i32* %989, align 4
  %991 = add i32 %990, 1
  %992 = zext i32 %991 to i64
  store i64 %992, i64* %RCX.i811, align 8
  %993 = icmp eq i32 %990, -1
  %994 = icmp eq i32 %991, 0
  %995 = or i1 %993, %994
  %996 = zext i1 %995 to i8
  store i8 %996, i8* %51, align 1
  %997 = and i32 %991, 255
  %998 = tail call i32 @llvm.ctpop.i32(i32 %997)
  %999 = trunc i32 %998 to i8
  %1000 = and i8 %999, 1
  %1001 = xor i8 %1000, 1
  store i8 %1001, i8* %52, align 1
  %1002 = xor i32 %991, %990
  %1003 = lshr i32 %1002, 4
  %1004 = trunc i32 %1003 to i8
  %1005 = and i8 %1004, 1
  store i8 %1005, i8* %53, align 1
  %1006 = zext i1 %994 to i8
  store i8 %1006, i8* %54, align 1
  %1007 = lshr i32 %991, 31
  %1008 = trunc i32 %1007 to i8
  store i8 %1008, i8* %55, align 1
  %1009 = lshr i32 %990, 31
  %1010 = xor i32 %1007, %1009
  %1011 = add nuw nsw i32 %1010, %1007
  %1012 = icmp eq i32 %1011, 2
  %1013 = zext i1 %1012 to i8
  store i8 %1013, i8* %56, align 1
  %1014 = sext i32 %991 to i64
  store i64 %1014, i64* %RSI.i1613, align 8
  %1015 = shl nsw i64 %1014, 3
  %1016 = add i64 %986, %1015
  %1017 = add i64 %983, 18
  store i64 %1017, i64* %3, align 8
  %1018 = inttoptr i64 %1016 to i64*
  %1019 = load i64, i64* %1018, align 8
  %1020 = load i64, i64* %RAX.i1594, align 8
  %1021 = xor i64 %1020, %1019
  store i64 %1021, i64* %RDX.i1610, align 8
  store i8 0, i8* %51, align 1
  %1022 = trunc i64 %1021 to i32
  %1023 = and i32 %1022, 255
  %1024 = tail call i32 @llvm.ctpop.i32(i32 %1023)
  %1025 = trunc i32 %1024 to i8
  %1026 = and i8 %1025, 1
  %1027 = xor i8 %1026, 1
  store i8 %1027, i8* %52, align 1
  %1028 = icmp eq i64 %1021, 0
  %1029 = zext i1 %1028 to i8
  store i8 %1029, i8* %54, align 1
  %1030 = lshr i64 %1021, 63
  %1031 = trunc i64 %1030 to i8
  store i8 %1031, i8* %55, align 1
  store i8 0, i8* %56, align 1
  store i8 0, i8* %53, align 1
  store i64 %1021, i64* %386, align 1
  store i64 0, i64* %387, align 1
  %1032 = add i64 %981, -72
  %1033 = add i64 %983, 36
  store i64 %1033, i64* %3, align 8
  %1034 = inttoptr i64 %1032 to i64*
  store i64 %1021, i64* %1034, align 8
  %1035 = load i64, i64* %RBP.i, align 8
  %1036 = add i64 %1035, -24
  %1037 = load i64, i64* %3, align 8
  %1038 = add i64 %1037, 4
  store i64 %1038, i64* %3, align 8
  %1039 = inttoptr i64 %1036 to i64*
  %1040 = load i64, i64* %1039, align 8
  store i64 %1040, i64* %RDX.i1610, align 8
  %1041 = add i64 %1035, -40
  %1042 = add i64 %1037, 8
  store i64 %1042, i64* %3, align 8
  %1043 = inttoptr i64 %1041 to i32*
  %1044 = load i32, i32* %1043, align 4
  %1045 = sext i32 %1044 to i64
  store i64 %1045, i64* %RSI.i1613, align 8
  %1046 = shl nsw i64 %1045, 3
  %1047 = add i64 %1046, %1040
  %1048 = add i64 %1037, 13
  store i64 %1048, i64* %3, align 8
  %1049 = inttoptr i64 %1047 to i64*
  %1050 = load i64, i64* %1049, align 8
  store i64 %1050, i64* %386, align 1
  store double 0.000000e+00, double* %388, align 1
  %1051 = add i64 %1035, -80
  %1052 = add i64 %1037, 18
  store i64 %1052, i64* %3, align 8
  %1053 = inttoptr i64 %1051 to i64*
  store i64 %1050, i64* %1053, align 8
  %1054 = load i64, i64* %RBP.i, align 8
  %1055 = add i64 %1054, -24
  %1056 = load i64, i64* %3, align 8
  %1057 = add i64 %1056, 4
  store i64 %1057, i64* %3, align 8
  %1058 = inttoptr i64 %1055 to i64*
  %1059 = load i64, i64* %1058, align 8
  store i64 %1059, i64* %RDX.i1610, align 8
  %1060 = add i64 %1054, -40
  %1061 = add i64 %1056, 7
  store i64 %1061, i64* %3, align 8
  %1062 = inttoptr i64 %1060 to i32*
  %1063 = load i32, i32* %1062, align 4
  %1064 = add i32 %1063, 1
  %1065 = zext i32 %1064 to i64
  store i64 %1065, i64* %RCX.i811, align 8
  %1066 = icmp eq i32 %1063, -1
  %1067 = icmp eq i32 %1064, 0
  %1068 = or i1 %1066, %1067
  %1069 = zext i1 %1068 to i8
  store i8 %1069, i8* %51, align 1
  %1070 = and i32 %1064, 255
  %1071 = tail call i32 @llvm.ctpop.i32(i32 %1070)
  %1072 = trunc i32 %1071 to i8
  %1073 = and i8 %1072, 1
  %1074 = xor i8 %1073, 1
  store i8 %1074, i8* %52, align 1
  %1075 = xor i32 %1064, %1063
  %1076 = lshr i32 %1075, 4
  %1077 = trunc i32 %1076 to i8
  %1078 = and i8 %1077, 1
  store i8 %1078, i8* %53, align 1
  %1079 = zext i1 %1067 to i8
  store i8 %1079, i8* %54, align 1
  %1080 = lshr i32 %1064, 31
  %1081 = trunc i32 %1080 to i8
  store i8 %1081, i8* %55, align 1
  %1082 = lshr i32 %1063, 31
  %1083 = xor i32 %1080, %1082
  %1084 = add nuw nsw i32 %1083, %1080
  %1085 = icmp eq i32 %1084, 2
  %1086 = zext i1 %1085 to i8
  store i8 %1086, i8* %56, align 1
  %1087 = sext i32 %1064 to i64
  store i64 %1087, i64* %RSI.i1613, align 8
  %1088 = shl nsw i64 %1087, 3
  %1089 = add i64 %1059, %1088
  %1090 = add i64 %1056, 18
  store i64 %1090, i64* %3, align 8
  %1091 = inttoptr i64 %1089 to i64*
  %1092 = load i64, i64* %1091, align 8
  %1093 = load i64, i64* %RAX.i1594, align 8
  %1094 = xor i64 %1093, %1092
  store i64 %1094, i64* %RDX.i1610, align 8
  store i8 0, i8* %51, align 1
  %1095 = trunc i64 %1094 to i32
  %1096 = and i32 %1095, 255
  %1097 = tail call i32 @llvm.ctpop.i32(i32 %1096)
  %1098 = trunc i32 %1097 to i8
  %1099 = and i8 %1098, 1
  %1100 = xor i8 %1099, 1
  store i8 %1100, i8* %52, align 1
  %1101 = icmp eq i64 %1094, 0
  %1102 = zext i1 %1101 to i8
  store i8 %1102, i8* %54, align 1
  %1103 = lshr i64 %1094, 63
  %1104 = trunc i64 %1103 to i8
  store i8 %1104, i8* %55, align 1
  store i8 0, i8* %56, align 1
  store i8 0, i8* %53, align 1
  store i64 %1094, i64* %386, align 1
  store i64 0, i64* %387, align 1
  %1105 = add i64 %1054, -88
  %1106 = add i64 %1056, 36
  store i64 %1106, i64* %3, align 8
  %1107 = inttoptr i64 %1105 to i64*
  store i64 %1094, i64* %1107, align 8
  %1108 = load i64, i64* %RBP.i, align 8
  %1109 = add i64 %1108, -80
  %1110 = load i64, i64* %3, align 8
  %1111 = add i64 %1110, 5
  store i64 %1111, i64* %3, align 8
  %1112 = inttoptr i64 %1109 to i64*
  %1113 = load i64, i64* %1112, align 8
  store i64 %1113, i64* %386, align 1
  store double 0.000000e+00, double* %388, align 1
  %1114 = add i64 %1108, -24
  %1115 = add i64 %1110, 9
  store i64 %1115, i64* %3, align 8
  %1116 = inttoptr i64 %1114 to i64*
  %1117 = load i64, i64* %1116, align 8
  store i64 %1117, i64* %RDX.i1610, align 8
  %1118 = add i64 %1108, -32
  %1119 = add i64 %1110, 13
  store i64 %1119, i64* %3, align 8
  %1120 = inttoptr i64 %1118 to i32*
  %1121 = load i32, i32* %1120, align 4
  %1122 = sext i32 %1121 to i64
  store i64 %1122, i64* %RSI.i1613, align 8
  %1123 = shl nsw i64 %1122, 3
  %1124 = add i64 %1123, %1117
  %1125 = add i64 %1110, 18
  store i64 %1125, i64* %3, align 8
  %1126 = inttoptr i64 %1124 to i64*
  store i64 %1113, i64* %1126, align 8
  %1127 = load i64, i64* %RBP.i, align 8
  %1128 = add i64 %1127, -88
  %1129 = load i64, i64* %3, align 8
  %1130 = add i64 %1129, 5
  store i64 %1130, i64* %3, align 8
  %1131 = inttoptr i64 %1128 to i64*
  %1132 = load i64, i64* %1131, align 8
  store i64 %1132, i64* %386, align 1
  store double 0.000000e+00, double* %388, align 1
  %1133 = add i64 %1127, -24
  %1134 = add i64 %1129, 9
  store i64 %1134, i64* %3, align 8
  %1135 = inttoptr i64 %1133 to i64*
  %1136 = load i64, i64* %1135, align 8
  store i64 %1136, i64* %RDX.i1610, align 8
  %1137 = add i64 %1127, -32
  %1138 = add i64 %1129, 12
  store i64 %1138, i64* %3, align 8
  %1139 = inttoptr i64 %1137 to i32*
  %1140 = load i32, i32* %1139, align 4
  %1141 = add i32 %1140, 1
  %1142 = zext i32 %1141 to i64
  store i64 %1142, i64* %RCX.i811, align 8
  %1143 = icmp eq i32 %1140, -1
  %1144 = icmp eq i32 %1141, 0
  %1145 = or i1 %1143, %1144
  %1146 = zext i1 %1145 to i8
  store i8 %1146, i8* %51, align 1
  %1147 = and i32 %1141, 255
  %1148 = tail call i32 @llvm.ctpop.i32(i32 %1147)
  %1149 = trunc i32 %1148 to i8
  %1150 = and i8 %1149, 1
  %1151 = xor i8 %1150, 1
  store i8 %1151, i8* %52, align 1
  %1152 = xor i32 %1141, %1140
  %1153 = lshr i32 %1152, 4
  %1154 = trunc i32 %1153 to i8
  %1155 = and i8 %1154, 1
  store i8 %1155, i8* %53, align 1
  %1156 = zext i1 %1144 to i8
  store i8 %1156, i8* %54, align 1
  %1157 = lshr i32 %1141, 31
  %1158 = trunc i32 %1157 to i8
  store i8 %1158, i8* %55, align 1
  %1159 = lshr i32 %1140, 31
  %1160 = xor i32 %1157, %1159
  %1161 = add nuw nsw i32 %1160, %1157
  %1162 = icmp eq i32 %1161, 2
  %1163 = zext i1 %1162 to i8
  store i8 %1163, i8* %56, align 1
  %1164 = sext i32 %1141 to i64
  store i64 %1164, i64* %RSI.i1613, align 8
  %1165 = shl nsw i64 %1164, 3
  %1166 = add i64 %1136, %1165
  %1167 = add i64 %1129, 23
  store i64 %1167, i64* %3, align 8
  %1168 = inttoptr i64 %1166 to i64*
  store i64 %1132, i64* %1168, align 8
  %1169 = load i64, i64* %RBP.i, align 8
  %1170 = add i64 %1169, -64
  %1171 = load i64, i64* %3, align 8
  %1172 = add i64 %1171, 5
  store i64 %1172, i64* %3, align 8
  %1173 = inttoptr i64 %1170 to i64*
  %1174 = load i64, i64* %1173, align 8
  store i64 %1174, i64* %386, align 1
  store double 0.000000e+00, double* %388, align 1
  %1175 = add i64 %1169, -24
  %1176 = add i64 %1171, 9
  store i64 %1176, i64* %3, align 8
  %1177 = inttoptr i64 %1175 to i64*
  %1178 = load i64, i64* %1177, align 8
  store i64 %1178, i64* %RDX.i1610, align 8
  %1179 = add i64 %1169, -40
  %1180 = add i64 %1171, 13
  store i64 %1180, i64* %3, align 8
  %1181 = inttoptr i64 %1179 to i32*
  %1182 = load i32, i32* %1181, align 4
  %1183 = sext i32 %1182 to i64
  store i64 %1183, i64* %RSI.i1613, align 8
  %1184 = shl nsw i64 %1183, 3
  %1185 = add i64 %1184, %1178
  %1186 = add i64 %1171, 18
  store i64 %1186, i64* %3, align 8
  %1187 = inttoptr i64 %1185 to i64*
  store i64 %1174, i64* %1187, align 8
  %1188 = load i64, i64* %RBP.i, align 8
  %1189 = add i64 %1188, -72
  %1190 = load i64, i64* %3, align 8
  %1191 = add i64 %1190, 5
  store i64 %1191, i64* %3, align 8
  %1192 = inttoptr i64 %1189 to i64*
  %1193 = load i64, i64* %1192, align 8
  store i64 %1193, i64* %386, align 1
  store double 0.000000e+00, double* %388, align 1
  %1194 = add i64 %1188, -24
  %1195 = add i64 %1190, 9
  store i64 %1195, i64* %3, align 8
  %1196 = inttoptr i64 %1194 to i64*
  %1197 = load i64, i64* %1196, align 8
  store i64 %1197, i64* %RDX.i1610, align 8
  %1198 = add i64 %1188, -40
  %1199 = add i64 %1190, 12
  store i64 %1199, i64* %3, align 8
  %1200 = inttoptr i64 %1198 to i32*
  %1201 = load i32, i32* %1200, align 4
  %1202 = add i32 %1201, 1
  %1203 = zext i32 %1202 to i64
  store i64 %1203, i64* %RCX.i811, align 8
  %1204 = icmp eq i32 %1201, -1
  %1205 = icmp eq i32 %1202, 0
  %1206 = or i1 %1204, %1205
  %1207 = zext i1 %1206 to i8
  store i8 %1207, i8* %51, align 1
  %1208 = and i32 %1202, 255
  %1209 = tail call i32 @llvm.ctpop.i32(i32 %1208)
  %1210 = trunc i32 %1209 to i8
  %1211 = and i8 %1210, 1
  %1212 = xor i8 %1211, 1
  store i8 %1212, i8* %52, align 1
  %1213 = xor i32 %1202, %1201
  %1214 = lshr i32 %1213, 4
  %1215 = trunc i32 %1214 to i8
  %1216 = and i8 %1215, 1
  store i8 %1216, i8* %53, align 1
  %1217 = zext i1 %1205 to i8
  store i8 %1217, i8* %54, align 1
  %1218 = lshr i32 %1202, 31
  %1219 = trunc i32 %1218 to i8
  store i8 %1219, i8* %55, align 1
  %1220 = lshr i32 %1201, 31
  %1221 = xor i32 %1218, %1220
  %1222 = add nuw nsw i32 %1221, %1218
  %1223 = icmp eq i32 %1222, 2
  %1224 = zext i1 %1223 to i8
  store i8 %1224, i8* %56, align 1
  %1225 = sext i32 %1202 to i64
  store i64 %1225, i64* %RSI.i1613, align 8
  %1226 = shl nsw i64 %1225, 3
  %1227 = add i64 %1197, %1226
  %1228 = add i64 %1190, 23
  store i64 %1228, i64* %3, align 8
  %1229 = inttoptr i64 %1227 to i64*
  store i64 %1193, i64* %1229, align 8
  %1230 = load i64, i64* %RBP.i, align 8
  %1231 = add i64 %1230, -52
  %1232 = load i64, i64* %3, align 8
  %1233 = add i64 %1232, 3
  store i64 %1233, i64* %3, align 8
  %1234 = inttoptr i64 %1231 to i32*
  %1235 = load i32, i32* %1234, align 4
  %1236 = zext i32 %1235 to i64
  store i64 %1236, i64* %RCX.i811, align 8
  %1237 = add i64 %1230, -32
  %1238 = add i64 %1232, 6
  store i64 %1238, i64* %3, align 8
  %1239 = inttoptr i64 %1237 to i32*
  %1240 = load i32, i32* %1239, align 4
  %1241 = add i32 %1240, %1235
  %1242 = zext i32 %1241 to i64
  store i64 %1242, i64* %RCX.i811, align 8
  %1243 = icmp ult i32 %1241, %1235
  %1244 = icmp ult i32 %1241, %1240
  %1245 = or i1 %1243, %1244
  %1246 = zext i1 %1245 to i8
  store i8 %1246, i8* %51, align 1
  %1247 = and i32 %1241, 255
  %1248 = tail call i32 @llvm.ctpop.i32(i32 %1247)
  %1249 = trunc i32 %1248 to i8
  %1250 = and i8 %1249, 1
  %1251 = xor i8 %1250, 1
  store i8 %1251, i8* %52, align 1
  %1252 = xor i32 %1240, %1235
  %1253 = xor i32 %1252, %1241
  %1254 = lshr i32 %1253, 4
  %1255 = trunc i32 %1254 to i8
  %1256 = and i8 %1255, 1
  store i8 %1256, i8* %53, align 1
  %1257 = icmp eq i32 %1241, 0
  %1258 = zext i1 %1257 to i8
  store i8 %1258, i8* %54, align 1
  %1259 = lshr i32 %1241, 31
  %1260 = trunc i32 %1259 to i8
  store i8 %1260, i8* %55, align 1
  %1261 = lshr i32 %1235, 31
  %1262 = lshr i32 %1240, 31
  %1263 = xor i32 %1259, %1261
  %1264 = xor i32 %1259, %1262
  %1265 = add nuw nsw i32 %1263, %1264
  %1266 = icmp eq i32 %1265, 2
  %1267 = zext i1 %1266 to i8
  store i8 %1267, i8* %56, align 1
  %1268 = add i64 %1232, 9
  store i64 %1268, i64* %3, align 8
  store i32 %1241, i32* %1239, align 4
  %1269 = load i64, i64* %RBP.i, align 8
  %1270 = add i64 %1269, -52
  %1271 = load i64, i64* %3, align 8
  %1272 = add i64 %1271, 3
  store i64 %1272, i64* %3, align 8
  %1273 = inttoptr i64 %1270 to i32*
  %1274 = load i32, i32* %1273, align 4
  %1275 = zext i32 %1274 to i64
  store i64 %1275, i64* %RCX.i811, align 8
  %1276 = add i64 %1269, -40
  %1277 = add i64 %1271, 6
  store i64 %1277, i64* %3, align 8
  %1278 = inttoptr i64 %1276 to i32*
  %1279 = load i32, i32* %1278, align 4
  %1280 = sub i32 %1279, %1274
  %1281 = zext i32 %1280 to i64
  store i64 %1281, i64* %RDI.i1602, align 8
  %1282 = icmp ult i32 %1279, %1274
  %1283 = zext i1 %1282 to i8
  store i8 %1283, i8* %51, align 1
  %1284 = and i32 %1280, 255
  %1285 = tail call i32 @llvm.ctpop.i32(i32 %1284)
  %1286 = trunc i32 %1285 to i8
  %1287 = and i8 %1286, 1
  %1288 = xor i8 %1287, 1
  store i8 %1288, i8* %52, align 1
  %1289 = xor i32 %1274, %1279
  %1290 = xor i32 %1289, %1280
  %1291 = lshr i32 %1290, 4
  %1292 = trunc i32 %1291 to i8
  %1293 = and i8 %1292, 1
  store i8 %1293, i8* %53, align 1
  %1294 = icmp eq i32 %1280, 0
  %1295 = zext i1 %1294 to i8
  store i8 %1295, i8* %54, align 1
  %1296 = lshr i32 %1280, 31
  %1297 = trunc i32 %1296 to i8
  store i8 %1297, i8* %55, align 1
  %1298 = lshr i32 %1279, 31
  %1299 = lshr i32 %1274, 31
  %1300 = xor i32 %1299, %1298
  %1301 = xor i32 %1296, %1298
  %1302 = add nuw nsw i32 %1301, %1300
  %1303 = icmp eq i32 %1302, 2
  %1304 = zext i1 %1303 to i8
  store i8 %1304, i8* %56, align 1
  %1305 = add i64 %1271, 11
  store i64 %1305, i64* %3, align 8
  store i32 %1280, i32* %1278, align 4
  %1306 = load i64, i64* %RBP.i, align 8
  %1307 = add i64 %1306, -24
  %1308 = load i64, i64* %3, align 8
  %1309 = add i64 %1308, 4
  store i64 %1309, i64* %3, align 8
  %1310 = inttoptr i64 %1307 to i64*
  %1311 = load i64, i64* %1310, align 8
  store i64 %1311, i64* %RDX.i1610, align 8
  %1312 = add i64 %1306, -32
  %1313 = add i64 %1308, 8
  store i64 %1313, i64* %3, align 8
  %1314 = inttoptr i64 %1312 to i32*
  %1315 = load i32, i32* %1314, align 4
  %1316 = sext i32 %1315 to i64
  store i64 %1316, i64* %RSI.i1613, align 8
  %1317 = shl nsw i64 %1316, 3
  %1318 = add i64 %1317, %1311
  %1319 = add i64 %1308, 13
  store i64 %1319, i64* %3, align 8
  %1320 = inttoptr i64 %1318 to i64*
  %1321 = load i64, i64* %1320, align 8
  store i64 %1321, i64* %386, align 1
  store double 0.000000e+00, double* %388, align 1
  %1322 = add i64 %1306, -64
  %1323 = add i64 %1308, 18
  store i64 %1323, i64* %3, align 8
  %1324 = inttoptr i64 %1322 to i64*
  store i64 %1321, i64* %1324, align 8
  %1325 = load i64, i64* %RBP.i, align 8
  %1326 = add i64 %1325, -24
  %1327 = load i64, i64* %3, align 8
  %1328 = add i64 %1327, 4
  store i64 %1328, i64* %3, align 8
  %1329 = inttoptr i64 %1326 to i64*
  %1330 = load i64, i64* %1329, align 8
  store i64 %1330, i64* %RDX.i1610, align 8
  %1331 = add i64 %1325, -32
  %1332 = add i64 %1327, 7
  store i64 %1332, i64* %3, align 8
  %1333 = inttoptr i64 %1331 to i32*
  %1334 = load i32, i32* %1333, align 4
  %1335 = add i32 %1334, 1
  %1336 = zext i32 %1335 to i64
  store i64 %1336, i64* %RCX.i811, align 8
  %1337 = icmp eq i32 %1334, -1
  %1338 = icmp eq i32 %1335, 0
  %1339 = or i1 %1337, %1338
  %1340 = zext i1 %1339 to i8
  store i8 %1340, i8* %51, align 1
  %1341 = and i32 %1335, 255
  %1342 = tail call i32 @llvm.ctpop.i32(i32 %1341)
  %1343 = trunc i32 %1342 to i8
  %1344 = and i8 %1343, 1
  %1345 = xor i8 %1344, 1
  store i8 %1345, i8* %52, align 1
  %1346 = xor i32 %1335, %1334
  %1347 = lshr i32 %1346, 4
  %1348 = trunc i32 %1347 to i8
  %1349 = and i8 %1348, 1
  store i8 %1349, i8* %53, align 1
  %1350 = zext i1 %1338 to i8
  store i8 %1350, i8* %54, align 1
  %1351 = lshr i32 %1335, 31
  %1352 = trunc i32 %1351 to i8
  store i8 %1352, i8* %55, align 1
  %1353 = lshr i32 %1334, 31
  %1354 = xor i32 %1351, %1353
  %1355 = add nuw nsw i32 %1354, %1351
  %1356 = icmp eq i32 %1355, 2
  %1357 = zext i1 %1356 to i8
  store i8 %1357, i8* %56, align 1
  %1358 = sext i32 %1335 to i64
  store i64 %1358, i64* %RSI.i1613, align 8
  %1359 = shl nsw i64 %1358, 3
  %1360 = add i64 %1330, %1359
  %1361 = add i64 %1327, 18
  store i64 %1361, i64* %3, align 8
  %1362 = inttoptr i64 %1360 to i64*
  %1363 = load i64, i64* %1362, align 8
  %1364 = load i64, i64* %RAX.i1594, align 8
  %1365 = xor i64 %1364, %1363
  store i64 %1365, i64* %RDX.i1610, align 8
  store i8 0, i8* %51, align 1
  %1366 = trunc i64 %1365 to i32
  %1367 = and i32 %1366, 255
  %1368 = tail call i32 @llvm.ctpop.i32(i32 %1367)
  %1369 = trunc i32 %1368 to i8
  %1370 = and i8 %1369, 1
  %1371 = xor i8 %1370, 1
  store i8 %1371, i8* %52, align 1
  %1372 = icmp eq i64 %1365, 0
  %1373 = zext i1 %1372 to i8
  store i8 %1373, i8* %54, align 1
  %1374 = lshr i64 %1365, 63
  %1375 = trunc i64 %1374 to i8
  store i8 %1375, i8* %55, align 1
  store i8 0, i8* %56, align 1
  store i8 0, i8* %53, align 1
  store i64 %1365, i64* %386, align 1
  store i64 0, i64* %387, align 1
  %1376 = add i64 %1325, -72
  %1377 = add i64 %1327, 36
  store i64 %1377, i64* %3, align 8
  %1378 = inttoptr i64 %1376 to i64*
  store i64 %1365, i64* %1378, align 8
  %1379 = load i64, i64* %RBP.i, align 8
  %1380 = add i64 %1379, -24
  %1381 = load i64, i64* %3, align 8
  %1382 = add i64 %1381, 4
  store i64 %1382, i64* %3, align 8
  %1383 = inttoptr i64 %1380 to i64*
  %1384 = load i64, i64* %1383, align 8
  store i64 %1384, i64* %RDX.i1610, align 8
  %1385 = add i64 %1379, -40
  %1386 = add i64 %1381, 8
  store i64 %1386, i64* %3, align 8
  %1387 = inttoptr i64 %1385 to i32*
  %1388 = load i32, i32* %1387, align 4
  %1389 = sext i32 %1388 to i64
  store i64 %1389, i64* %RSI.i1613, align 8
  %1390 = shl nsw i64 %1389, 3
  %1391 = add i64 %1390, %1384
  %1392 = add i64 %1381, 13
  store i64 %1392, i64* %3, align 8
  %1393 = inttoptr i64 %1391 to i64*
  %1394 = load i64, i64* %1393, align 8
  store i64 %1394, i64* %386, align 1
  store double 0.000000e+00, double* %388, align 1
  %1395 = add i64 %1379, -80
  %1396 = add i64 %1381, 18
  store i64 %1396, i64* %3, align 8
  %1397 = inttoptr i64 %1395 to i64*
  store i64 %1394, i64* %1397, align 8
  %1398 = load i64, i64* %RBP.i, align 8
  %1399 = add i64 %1398, -24
  %1400 = load i64, i64* %3, align 8
  %1401 = add i64 %1400, 4
  store i64 %1401, i64* %3, align 8
  %1402 = inttoptr i64 %1399 to i64*
  %1403 = load i64, i64* %1402, align 8
  store i64 %1403, i64* %RDX.i1610, align 8
  %1404 = add i64 %1398, -40
  %1405 = add i64 %1400, 7
  store i64 %1405, i64* %3, align 8
  %1406 = inttoptr i64 %1404 to i32*
  %1407 = load i32, i32* %1406, align 4
  %1408 = add i32 %1407, 1
  %1409 = zext i32 %1408 to i64
  store i64 %1409, i64* %RCX.i811, align 8
  %1410 = icmp eq i32 %1407, -1
  %1411 = icmp eq i32 %1408, 0
  %1412 = or i1 %1410, %1411
  %1413 = zext i1 %1412 to i8
  store i8 %1413, i8* %51, align 1
  %1414 = and i32 %1408, 255
  %1415 = tail call i32 @llvm.ctpop.i32(i32 %1414)
  %1416 = trunc i32 %1415 to i8
  %1417 = and i8 %1416, 1
  %1418 = xor i8 %1417, 1
  store i8 %1418, i8* %52, align 1
  %1419 = xor i32 %1408, %1407
  %1420 = lshr i32 %1419, 4
  %1421 = trunc i32 %1420 to i8
  %1422 = and i8 %1421, 1
  store i8 %1422, i8* %53, align 1
  %1423 = zext i1 %1411 to i8
  store i8 %1423, i8* %54, align 1
  %1424 = lshr i32 %1408, 31
  %1425 = trunc i32 %1424 to i8
  store i8 %1425, i8* %55, align 1
  %1426 = lshr i32 %1407, 31
  %1427 = xor i32 %1424, %1426
  %1428 = add nuw nsw i32 %1427, %1424
  %1429 = icmp eq i32 %1428, 2
  %1430 = zext i1 %1429 to i8
  store i8 %1430, i8* %56, align 1
  %1431 = sext i32 %1408 to i64
  store i64 %1431, i64* %RSI.i1613, align 8
  %1432 = shl nsw i64 %1431, 3
  %1433 = add i64 %1403, %1432
  %1434 = add i64 %1400, 18
  store i64 %1434, i64* %3, align 8
  %1435 = inttoptr i64 %1433 to i64*
  %1436 = load i64, i64* %1435, align 8
  %1437 = load i64, i64* %RAX.i1594, align 8
  %1438 = xor i64 %1437, %1436
  store i64 %1438, i64* %RDX.i1610, align 8
  store i8 0, i8* %51, align 1
  %1439 = trunc i64 %1438 to i32
  %1440 = and i32 %1439, 255
  %1441 = tail call i32 @llvm.ctpop.i32(i32 %1440)
  %1442 = trunc i32 %1441 to i8
  %1443 = and i8 %1442, 1
  %1444 = xor i8 %1443, 1
  store i8 %1444, i8* %52, align 1
  %1445 = icmp eq i64 %1438, 0
  %1446 = zext i1 %1445 to i8
  store i8 %1446, i8* %54, align 1
  %1447 = lshr i64 %1438, 63
  %1448 = trunc i64 %1447 to i8
  store i8 %1448, i8* %55, align 1
  store i8 0, i8* %56, align 1
  store i8 0, i8* %53, align 1
  store i64 %1438, i64* %386, align 1
  store i64 0, i64* %387, align 1
  %1449 = add i64 %1398, -88
  %1450 = add i64 %1400, 36
  store i64 %1450, i64* %3, align 8
  %1451 = inttoptr i64 %1449 to i64*
  store i64 %1438, i64* %1451, align 8
  %1452 = load i64, i64* %RBP.i, align 8
  %1453 = add i64 %1452, -80
  %1454 = load i64, i64* %3, align 8
  %1455 = add i64 %1454, 5
  store i64 %1455, i64* %3, align 8
  %1456 = inttoptr i64 %1453 to i64*
  %1457 = load i64, i64* %1456, align 8
  store i64 %1457, i64* %386, align 1
  store double 0.000000e+00, double* %388, align 1
  %1458 = add i64 %1452, -24
  %1459 = add i64 %1454, 9
  store i64 %1459, i64* %3, align 8
  %1460 = inttoptr i64 %1458 to i64*
  %1461 = load i64, i64* %1460, align 8
  store i64 %1461, i64* %RDX.i1610, align 8
  %1462 = add i64 %1452, -32
  %1463 = add i64 %1454, 13
  store i64 %1463, i64* %3, align 8
  %1464 = inttoptr i64 %1462 to i32*
  %1465 = load i32, i32* %1464, align 4
  %1466 = sext i32 %1465 to i64
  store i64 %1466, i64* %RSI.i1613, align 8
  %1467 = shl nsw i64 %1466, 3
  %1468 = add i64 %1467, %1461
  %1469 = add i64 %1454, 18
  store i64 %1469, i64* %3, align 8
  %1470 = inttoptr i64 %1468 to i64*
  store i64 %1457, i64* %1470, align 8
  %1471 = load i64, i64* %RBP.i, align 8
  %1472 = add i64 %1471, -88
  %1473 = load i64, i64* %3, align 8
  %1474 = add i64 %1473, 5
  store i64 %1474, i64* %3, align 8
  %1475 = inttoptr i64 %1472 to i64*
  %1476 = load i64, i64* %1475, align 8
  store i64 %1476, i64* %386, align 1
  store double 0.000000e+00, double* %388, align 1
  %1477 = add i64 %1471, -24
  %1478 = add i64 %1473, 9
  store i64 %1478, i64* %3, align 8
  %1479 = inttoptr i64 %1477 to i64*
  %1480 = load i64, i64* %1479, align 8
  store i64 %1480, i64* %RDX.i1610, align 8
  %1481 = add i64 %1471, -32
  %1482 = add i64 %1473, 12
  store i64 %1482, i64* %3, align 8
  %1483 = inttoptr i64 %1481 to i32*
  %1484 = load i32, i32* %1483, align 4
  %1485 = add i32 %1484, 1
  %1486 = zext i32 %1485 to i64
  store i64 %1486, i64* %RCX.i811, align 8
  %1487 = icmp eq i32 %1484, -1
  %1488 = icmp eq i32 %1485, 0
  %1489 = or i1 %1487, %1488
  %1490 = zext i1 %1489 to i8
  store i8 %1490, i8* %51, align 1
  %1491 = and i32 %1485, 255
  %1492 = tail call i32 @llvm.ctpop.i32(i32 %1491)
  %1493 = trunc i32 %1492 to i8
  %1494 = and i8 %1493, 1
  %1495 = xor i8 %1494, 1
  store i8 %1495, i8* %52, align 1
  %1496 = xor i32 %1485, %1484
  %1497 = lshr i32 %1496, 4
  %1498 = trunc i32 %1497 to i8
  %1499 = and i8 %1498, 1
  store i8 %1499, i8* %53, align 1
  %1500 = zext i1 %1488 to i8
  store i8 %1500, i8* %54, align 1
  %1501 = lshr i32 %1485, 31
  %1502 = trunc i32 %1501 to i8
  store i8 %1502, i8* %55, align 1
  %1503 = lshr i32 %1484, 31
  %1504 = xor i32 %1501, %1503
  %1505 = add nuw nsw i32 %1504, %1501
  %1506 = icmp eq i32 %1505, 2
  %1507 = zext i1 %1506 to i8
  store i8 %1507, i8* %56, align 1
  %1508 = sext i32 %1485 to i64
  store i64 %1508, i64* %RSI.i1613, align 8
  %1509 = shl nsw i64 %1508, 3
  %1510 = add i64 %1480, %1509
  %1511 = add i64 %1473, 23
  store i64 %1511, i64* %3, align 8
  %1512 = inttoptr i64 %1510 to i64*
  store i64 %1476, i64* %1512, align 8
  %1513 = load i64, i64* %RBP.i, align 8
  %1514 = add i64 %1513, -64
  %1515 = load i64, i64* %3, align 8
  %1516 = add i64 %1515, 5
  store i64 %1516, i64* %3, align 8
  %1517 = inttoptr i64 %1514 to i64*
  %1518 = load i64, i64* %1517, align 8
  store i64 %1518, i64* %386, align 1
  store double 0.000000e+00, double* %388, align 1
  %1519 = add i64 %1513, -24
  %1520 = add i64 %1515, 9
  store i64 %1520, i64* %3, align 8
  %1521 = inttoptr i64 %1519 to i64*
  %1522 = load i64, i64* %1521, align 8
  store i64 %1522, i64* %RDX.i1610, align 8
  %1523 = add i64 %1513, -40
  %1524 = add i64 %1515, 13
  store i64 %1524, i64* %3, align 8
  %1525 = inttoptr i64 %1523 to i32*
  %1526 = load i32, i32* %1525, align 4
  %1527 = sext i32 %1526 to i64
  store i64 %1527, i64* %RSI.i1613, align 8
  %1528 = shl nsw i64 %1527, 3
  %1529 = add i64 %1528, %1522
  %1530 = add i64 %1515, 18
  store i64 %1530, i64* %3, align 8
  %1531 = inttoptr i64 %1529 to i64*
  store i64 %1518, i64* %1531, align 8
  %1532 = load i64, i64* %RBP.i, align 8
  %1533 = add i64 %1532, -72
  %1534 = load i64, i64* %3, align 8
  %1535 = add i64 %1534, 5
  store i64 %1535, i64* %3, align 8
  %1536 = inttoptr i64 %1533 to i64*
  %1537 = load i64, i64* %1536, align 8
  store i64 %1537, i64* %386, align 1
  store double 0.000000e+00, double* %388, align 1
  %1538 = add i64 %1532, -24
  %1539 = add i64 %1534, 9
  store i64 %1539, i64* %3, align 8
  %1540 = inttoptr i64 %1538 to i64*
  %1541 = load i64, i64* %1540, align 8
  store i64 %1541, i64* %RDX.i1610, align 8
  %1542 = add i64 %1532, -40
  %1543 = add i64 %1534, 12
  store i64 %1543, i64* %3, align 8
  %1544 = inttoptr i64 %1542 to i32*
  %1545 = load i32, i32* %1544, align 4
  %1546 = add i32 %1545, 1
  %1547 = zext i32 %1546 to i64
  store i64 %1547, i64* %RCX.i811, align 8
  %1548 = icmp eq i32 %1545, -1
  %1549 = icmp eq i32 %1546, 0
  %1550 = or i1 %1548, %1549
  %1551 = zext i1 %1550 to i8
  store i8 %1551, i8* %51, align 1
  %1552 = and i32 %1546, 255
  %1553 = tail call i32 @llvm.ctpop.i32(i32 %1552)
  %1554 = trunc i32 %1553 to i8
  %1555 = and i8 %1554, 1
  %1556 = xor i8 %1555, 1
  store i8 %1556, i8* %52, align 1
  %1557 = xor i32 %1546, %1545
  %1558 = lshr i32 %1557, 4
  %1559 = trunc i32 %1558 to i8
  %1560 = and i8 %1559, 1
  store i8 %1560, i8* %53, align 1
  %1561 = zext i1 %1549 to i8
  store i8 %1561, i8* %54, align 1
  %1562 = lshr i32 %1546, 31
  %1563 = trunc i32 %1562 to i8
  store i8 %1563, i8* %55, align 1
  %1564 = lshr i32 %1545, 31
  %1565 = xor i32 %1562, %1564
  %1566 = add nuw nsw i32 %1565, %1562
  %1567 = icmp eq i32 %1566, 2
  %1568 = zext i1 %1567 to i8
  store i8 %1568, i8* %56, align 1
  %1569 = sext i32 %1546 to i64
  store i64 %1569, i64* %RSI.i1613, align 8
  %1570 = shl nsw i64 %1569, 3
  %1571 = add i64 %1541, %1570
  %1572 = add i64 %1534, 23
  store i64 %1572, i64* %3, align 8
  %1573 = inttoptr i64 %1571 to i64*
  store i64 %1537, i64* %1573, align 8
  %1574 = load i64, i64* %RBP.i, align 8
  %1575 = add i64 %1574, -52
  %1576 = load i64, i64* %3, align 8
  %1577 = add i64 %1576, 3
  store i64 %1577, i64* %3, align 8
  %1578 = inttoptr i64 %1575 to i32*
  %1579 = load i32, i32* %1578, align 4
  %1580 = zext i32 %1579 to i64
  store i64 %1580, i64* %RCX.i811, align 8
  %1581 = add i64 %1574, -32
  %1582 = add i64 %1576, 6
  store i64 %1582, i64* %3, align 8
  %1583 = inttoptr i64 %1581 to i32*
  %1584 = load i32, i32* %1583, align 4
  %1585 = add i32 %1584, %1579
  %1586 = zext i32 %1585 to i64
  store i64 %1586, i64* %RCX.i811, align 8
  %1587 = icmp ult i32 %1585, %1579
  %1588 = icmp ult i32 %1585, %1584
  %1589 = or i1 %1587, %1588
  %1590 = zext i1 %1589 to i8
  store i8 %1590, i8* %51, align 1
  %1591 = and i32 %1585, 255
  %1592 = tail call i32 @llvm.ctpop.i32(i32 %1591)
  %1593 = trunc i32 %1592 to i8
  %1594 = and i8 %1593, 1
  %1595 = xor i8 %1594, 1
  store i8 %1595, i8* %52, align 1
  %1596 = xor i32 %1584, %1579
  %1597 = xor i32 %1596, %1585
  %1598 = lshr i32 %1597, 4
  %1599 = trunc i32 %1598 to i8
  %1600 = and i8 %1599, 1
  store i8 %1600, i8* %53, align 1
  %1601 = icmp eq i32 %1585, 0
  %1602 = zext i1 %1601 to i8
  store i8 %1602, i8* %54, align 1
  %1603 = lshr i32 %1585, 31
  %1604 = trunc i32 %1603 to i8
  store i8 %1604, i8* %55, align 1
  %1605 = lshr i32 %1579, 31
  %1606 = lshr i32 %1584, 31
  %1607 = xor i32 %1603, %1605
  %1608 = xor i32 %1603, %1606
  %1609 = add nuw nsw i32 %1607, %1608
  %1610 = icmp eq i32 %1609, 2
  %1611 = zext i1 %1610 to i8
  store i8 %1611, i8* %56, align 1
  %1612 = add i64 %1576, 9
  store i64 %1612, i64* %3, align 8
  store i32 %1585, i32* %1583, align 4
  %1613 = load i64, i64* %RBP.i, align 8
  %1614 = add i64 %1613, -52
  %1615 = load i64, i64* %3, align 8
  %1616 = add i64 %1615, 3
  store i64 %1616, i64* %3, align 8
  %1617 = inttoptr i64 %1614 to i32*
  %1618 = load i32, i32* %1617, align 4
  %1619 = shl i32 %1618, 1
  %1620 = icmp slt i32 %1618, 0
  %1621 = icmp slt i32 %1619, 0
  %1622 = xor i1 %1620, %1621
  %1623 = zext i32 %1619 to i64
  store i64 %1623, i64* %RCX.i811, align 8
  %.lobit12 = lshr i32 %1618, 31
  %1624 = trunc i32 %.lobit12 to i8
  store i8 %1624, i8* %51, align 1
  %1625 = and i32 %1619, 254
  %1626 = tail call i32 @llvm.ctpop.i32(i32 %1625)
  %1627 = trunc i32 %1626 to i8
  %1628 = and i8 %1627, 1
  %1629 = xor i8 %1628, 1
  store i8 %1629, i8* %52, align 1
  store i8 0, i8* %53, align 1
  %1630 = icmp eq i32 %1619, 0
  %1631 = zext i1 %1630 to i8
  store i8 %1631, i8* %54, align 1
  %1632 = lshr i32 %1618, 30
  %1633 = trunc i32 %1632 to i8
  %1634 = and i8 %1633, 1
  store i8 %1634, i8* %55, align 1
  %1635 = zext i1 %1622 to i8
  store i8 %1635, i8* %56, align 1
  %1636 = add i64 %1613, -40
  %1637 = add i64 %1615, 8
  store i64 %1637, i64* %3, align 8
  %1638 = inttoptr i64 %1636 to i32*
  %1639 = load i32, i32* %1638, align 4
  %1640 = add i32 %1639, %1619
  %1641 = zext i32 %1640 to i64
  store i64 %1641, i64* %RCX.i811, align 8
  %1642 = icmp ult i32 %1640, %1619
  %1643 = icmp ult i32 %1640, %1639
  %1644 = or i1 %1642, %1643
  %1645 = zext i1 %1644 to i8
  store i8 %1645, i8* %51, align 1
  %1646 = and i32 %1640, 255
  %1647 = tail call i32 @llvm.ctpop.i32(i32 %1646)
  %1648 = trunc i32 %1647 to i8
  %1649 = and i8 %1648, 1
  %1650 = xor i8 %1649, 1
  store i8 %1650, i8* %52, align 1
  %1651 = xor i32 %1639, %1619
  %1652 = xor i32 %1651, %1640
  %1653 = lshr i32 %1652, 4
  %1654 = trunc i32 %1653 to i8
  %1655 = and i8 %1654, 1
  store i8 %1655, i8* %53, align 1
  %1656 = icmp eq i32 %1640, 0
  %1657 = zext i1 %1656 to i8
  store i8 %1657, i8* %54, align 1
  %1658 = lshr i32 %1640, 31
  %1659 = trunc i32 %1658 to i8
  store i8 %1659, i8* %55, align 1
  %1660 = lshr i32 %1618, 30
  %1661 = and i32 %1660, 1
  %1662 = lshr i32 %1639, 31
  %1663 = xor i32 %1658, %1661
  %1664 = xor i32 %1658, %1662
  %1665 = add nuw nsw i32 %1663, %1664
  %1666 = icmp eq i32 %1665, 2
  %1667 = zext i1 %1666 to i8
  store i8 %1667, i8* %56, align 1
  %1668 = add i64 %1615, 11
  store i64 %1668, i64* %3, align 8
  store i32 %1640, i32* %1638, align 4
  %1669 = load i64, i64* %RBP.i, align 8
  %1670 = add i64 %1669, -24
  %1671 = load i64, i64* %3, align 8
  %1672 = add i64 %1671, 4
  store i64 %1672, i64* %3, align 8
  %1673 = inttoptr i64 %1670 to i64*
  %1674 = load i64, i64* %1673, align 8
  store i64 %1674, i64* %RDX.i1610, align 8
  %1675 = add i64 %1669, -32
  %1676 = add i64 %1671, 8
  store i64 %1676, i64* %3, align 8
  %1677 = inttoptr i64 %1675 to i32*
  %1678 = load i32, i32* %1677, align 4
  %1679 = sext i32 %1678 to i64
  store i64 %1679, i64* %RSI.i1613, align 8
  %1680 = shl nsw i64 %1679, 3
  %1681 = add i64 %1680, %1674
  %1682 = add i64 %1671, 13
  store i64 %1682, i64* %3, align 8
  %1683 = inttoptr i64 %1681 to i64*
  %1684 = load i64, i64* %1683, align 8
  store i64 %1684, i64* %386, align 1
  store double 0.000000e+00, double* %388, align 1
  %1685 = add i64 %1669, -64
  %1686 = add i64 %1671, 18
  store i64 %1686, i64* %3, align 8
  %1687 = inttoptr i64 %1685 to i64*
  store i64 %1684, i64* %1687, align 8
  %1688 = load i64, i64* %RBP.i, align 8
  %1689 = add i64 %1688, -24
  %1690 = load i64, i64* %3, align 8
  %1691 = add i64 %1690, 4
  store i64 %1691, i64* %3, align 8
  %1692 = inttoptr i64 %1689 to i64*
  %1693 = load i64, i64* %1692, align 8
  store i64 %1693, i64* %RDX.i1610, align 8
  %1694 = add i64 %1688, -32
  %1695 = add i64 %1690, 7
  store i64 %1695, i64* %3, align 8
  %1696 = inttoptr i64 %1694 to i32*
  %1697 = load i32, i32* %1696, align 4
  %1698 = add i32 %1697, 1
  %1699 = zext i32 %1698 to i64
  store i64 %1699, i64* %RCX.i811, align 8
  %1700 = icmp eq i32 %1697, -1
  %1701 = icmp eq i32 %1698, 0
  %1702 = or i1 %1700, %1701
  %1703 = zext i1 %1702 to i8
  store i8 %1703, i8* %51, align 1
  %1704 = and i32 %1698, 255
  %1705 = tail call i32 @llvm.ctpop.i32(i32 %1704)
  %1706 = trunc i32 %1705 to i8
  %1707 = and i8 %1706, 1
  %1708 = xor i8 %1707, 1
  store i8 %1708, i8* %52, align 1
  %1709 = xor i32 %1698, %1697
  %1710 = lshr i32 %1709, 4
  %1711 = trunc i32 %1710 to i8
  %1712 = and i8 %1711, 1
  store i8 %1712, i8* %53, align 1
  %1713 = zext i1 %1701 to i8
  store i8 %1713, i8* %54, align 1
  %1714 = lshr i32 %1698, 31
  %1715 = trunc i32 %1714 to i8
  store i8 %1715, i8* %55, align 1
  %1716 = lshr i32 %1697, 31
  %1717 = xor i32 %1714, %1716
  %1718 = add nuw nsw i32 %1717, %1714
  %1719 = icmp eq i32 %1718, 2
  %1720 = zext i1 %1719 to i8
  store i8 %1720, i8* %56, align 1
  %1721 = sext i32 %1698 to i64
  store i64 %1721, i64* %RSI.i1613, align 8
  %1722 = shl nsw i64 %1721, 3
  %1723 = add i64 %1693, %1722
  %1724 = add i64 %1690, 18
  store i64 %1724, i64* %3, align 8
  %1725 = inttoptr i64 %1723 to i64*
  %1726 = load i64, i64* %1725, align 8
  %1727 = load i64, i64* %RAX.i1594, align 8
  %1728 = xor i64 %1727, %1726
  store i64 %1728, i64* %RDX.i1610, align 8
  store i8 0, i8* %51, align 1
  %1729 = trunc i64 %1728 to i32
  %1730 = and i32 %1729, 255
  %1731 = tail call i32 @llvm.ctpop.i32(i32 %1730)
  %1732 = trunc i32 %1731 to i8
  %1733 = and i8 %1732, 1
  %1734 = xor i8 %1733, 1
  store i8 %1734, i8* %52, align 1
  %1735 = icmp eq i64 %1728, 0
  %1736 = zext i1 %1735 to i8
  store i8 %1736, i8* %54, align 1
  %1737 = lshr i64 %1728, 63
  %1738 = trunc i64 %1737 to i8
  store i8 %1738, i8* %55, align 1
  store i8 0, i8* %56, align 1
  store i8 0, i8* %53, align 1
  store i64 %1728, i64* %386, align 1
  store i64 0, i64* %387, align 1
  %1739 = add i64 %1688, -72
  %1740 = add i64 %1690, 36
  store i64 %1740, i64* %3, align 8
  %1741 = inttoptr i64 %1739 to i64*
  store i64 %1728, i64* %1741, align 8
  %1742 = load i64, i64* %RBP.i, align 8
  %1743 = add i64 %1742, -24
  %1744 = load i64, i64* %3, align 8
  %1745 = add i64 %1744, 4
  store i64 %1745, i64* %3, align 8
  %1746 = inttoptr i64 %1743 to i64*
  %1747 = load i64, i64* %1746, align 8
  store i64 %1747, i64* %RDX.i1610, align 8
  %1748 = add i64 %1742, -40
  %1749 = add i64 %1744, 8
  store i64 %1749, i64* %3, align 8
  %1750 = inttoptr i64 %1748 to i32*
  %1751 = load i32, i32* %1750, align 4
  %1752 = sext i32 %1751 to i64
  store i64 %1752, i64* %RSI.i1613, align 8
  %1753 = shl nsw i64 %1752, 3
  %1754 = add i64 %1753, %1747
  %1755 = add i64 %1744, 13
  store i64 %1755, i64* %3, align 8
  %1756 = inttoptr i64 %1754 to i64*
  %1757 = load i64, i64* %1756, align 8
  store i64 %1757, i64* %386, align 1
  store double 0.000000e+00, double* %388, align 1
  %1758 = add i64 %1742, -80
  %1759 = add i64 %1744, 18
  store i64 %1759, i64* %3, align 8
  %1760 = inttoptr i64 %1758 to i64*
  store i64 %1757, i64* %1760, align 8
  %1761 = load i64, i64* %RBP.i, align 8
  %1762 = add i64 %1761, -24
  %1763 = load i64, i64* %3, align 8
  %1764 = add i64 %1763, 4
  store i64 %1764, i64* %3, align 8
  %1765 = inttoptr i64 %1762 to i64*
  %1766 = load i64, i64* %1765, align 8
  store i64 %1766, i64* %RDX.i1610, align 8
  %1767 = add i64 %1761, -40
  %1768 = add i64 %1763, 7
  store i64 %1768, i64* %3, align 8
  %1769 = inttoptr i64 %1767 to i32*
  %1770 = load i32, i32* %1769, align 4
  %1771 = add i32 %1770, 1
  %1772 = zext i32 %1771 to i64
  store i64 %1772, i64* %RCX.i811, align 8
  %1773 = icmp eq i32 %1770, -1
  %1774 = icmp eq i32 %1771, 0
  %1775 = or i1 %1773, %1774
  %1776 = zext i1 %1775 to i8
  store i8 %1776, i8* %51, align 1
  %1777 = and i32 %1771, 255
  %1778 = tail call i32 @llvm.ctpop.i32(i32 %1777)
  %1779 = trunc i32 %1778 to i8
  %1780 = and i8 %1779, 1
  %1781 = xor i8 %1780, 1
  store i8 %1781, i8* %52, align 1
  %1782 = xor i32 %1771, %1770
  %1783 = lshr i32 %1782, 4
  %1784 = trunc i32 %1783 to i8
  %1785 = and i8 %1784, 1
  store i8 %1785, i8* %53, align 1
  %1786 = zext i1 %1774 to i8
  store i8 %1786, i8* %54, align 1
  %1787 = lshr i32 %1771, 31
  %1788 = trunc i32 %1787 to i8
  store i8 %1788, i8* %55, align 1
  %1789 = lshr i32 %1770, 31
  %1790 = xor i32 %1787, %1789
  %1791 = add nuw nsw i32 %1790, %1787
  %1792 = icmp eq i32 %1791, 2
  %1793 = zext i1 %1792 to i8
  store i8 %1793, i8* %56, align 1
  %1794 = sext i32 %1771 to i64
  store i64 %1794, i64* %RSI.i1613, align 8
  %1795 = shl nsw i64 %1794, 3
  %1796 = add i64 %1766, %1795
  %1797 = add i64 %1763, 18
  store i64 %1797, i64* %3, align 8
  %1798 = inttoptr i64 %1796 to i64*
  %1799 = load i64, i64* %1798, align 8
  %1800 = load i64, i64* %RAX.i1594, align 8
  %1801 = xor i64 %1800, %1799
  store i64 %1801, i64* %RDX.i1610, align 8
  store i8 0, i8* %51, align 1
  %1802 = trunc i64 %1801 to i32
  %1803 = and i32 %1802, 255
  %1804 = tail call i32 @llvm.ctpop.i32(i32 %1803)
  %1805 = trunc i32 %1804 to i8
  %1806 = and i8 %1805, 1
  %1807 = xor i8 %1806, 1
  store i8 %1807, i8* %52, align 1
  %1808 = icmp eq i64 %1801, 0
  %1809 = zext i1 %1808 to i8
  store i8 %1809, i8* %54, align 1
  %1810 = lshr i64 %1801, 63
  %1811 = trunc i64 %1810 to i8
  store i8 %1811, i8* %55, align 1
  store i8 0, i8* %56, align 1
  store i8 0, i8* %53, align 1
  store i64 %1801, i64* %386, align 1
  store i64 0, i64* %387, align 1
  %1812 = add i64 %1761, -88
  %1813 = add i64 %1763, 36
  store i64 %1813, i64* %3, align 8
  %1814 = inttoptr i64 %1812 to i64*
  store i64 %1801, i64* %1814, align 8
  %1815 = load i64, i64* %RBP.i, align 8
  %1816 = add i64 %1815, -80
  %1817 = load i64, i64* %3, align 8
  %1818 = add i64 %1817, 5
  store i64 %1818, i64* %3, align 8
  %1819 = inttoptr i64 %1816 to i64*
  %1820 = load i64, i64* %1819, align 8
  store i64 %1820, i64* %386, align 1
  store double 0.000000e+00, double* %388, align 1
  %1821 = add i64 %1815, -24
  %1822 = add i64 %1817, 9
  store i64 %1822, i64* %3, align 8
  %1823 = inttoptr i64 %1821 to i64*
  %1824 = load i64, i64* %1823, align 8
  store i64 %1824, i64* %RAX.i1594, align 8
  %1825 = add i64 %1815, -32
  %1826 = add i64 %1817, 13
  store i64 %1826, i64* %3, align 8
  %1827 = inttoptr i64 %1825 to i32*
  %1828 = load i32, i32* %1827, align 4
  %1829 = sext i32 %1828 to i64
  store i64 %1829, i64* %RDX.i1610, align 8
  %1830 = shl nsw i64 %1829, 3
  %1831 = add i64 %1830, %1824
  %1832 = add i64 %1817, 18
  store i64 %1832, i64* %3, align 8
  %1833 = inttoptr i64 %1831 to i64*
  store i64 %1820, i64* %1833, align 8
  %1834 = load i64, i64* %RBP.i, align 8
  %1835 = add i64 %1834, -88
  %1836 = load i64, i64* %3, align 8
  %1837 = add i64 %1836, 5
  store i64 %1837, i64* %3, align 8
  %1838 = inttoptr i64 %1835 to i64*
  %1839 = load i64, i64* %1838, align 8
  store i64 %1839, i64* %386, align 1
  store double 0.000000e+00, double* %388, align 1
  %1840 = add i64 %1834, -24
  %1841 = add i64 %1836, 9
  store i64 %1841, i64* %3, align 8
  %1842 = inttoptr i64 %1840 to i64*
  %1843 = load i64, i64* %1842, align 8
  store i64 %1843, i64* %RAX.i1594, align 8
  %1844 = add i64 %1834, -32
  %1845 = add i64 %1836, 12
  store i64 %1845, i64* %3, align 8
  %1846 = inttoptr i64 %1844 to i32*
  %1847 = load i32, i32* %1846, align 4
  %1848 = add i32 %1847, 1
  %1849 = zext i32 %1848 to i64
  store i64 %1849, i64* %RCX.i811, align 8
  %1850 = icmp eq i32 %1847, -1
  %1851 = icmp eq i32 %1848, 0
  %1852 = or i1 %1850, %1851
  %1853 = zext i1 %1852 to i8
  store i8 %1853, i8* %51, align 1
  %1854 = and i32 %1848, 255
  %1855 = tail call i32 @llvm.ctpop.i32(i32 %1854)
  %1856 = trunc i32 %1855 to i8
  %1857 = and i8 %1856, 1
  %1858 = xor i8 %1857, 1
  store i8 %1858, i8* %52, align 1
  %1859 = xor i32 %1848, %1847
  %1860 = lshr i32 %1859, 4
  %1861 = trunc i32 %1860 to i8
  %1862 = and i8 %1861, 1
  store i8 %1862, i8* %53, align 1
  %1863 = zext i1 %1851 to i8
  store i8 %1863, i8* %54, align 1
  %1864 = lshr i32 %1848, 31
  %1865 = trunc i32 %1864 to i8
  store i8 %1865, i8* %55, align 1
  %1866 = lshr i32 %1847, 31
  %1867 = xor i32 %1864, %1866
  %1868 = add nuw nsw i32 %1867, %1864
  %1869 = icmp eq i32 %1868, 2
  %1870 = zext i1 %1869 to i8
  store i8 %1870, i8* %56, align 1
  %1871 = sext i32 %1848 to i64
  store i64 %1871, i64* %RDX.i1610, align 8
  %1872 = shl nsw i64 %1871, 3
  %1873 = add i64 %1843, %1872
  %1874 = add i64 %1836, 23
  store i64 %1874, i64* %3, align 8
  %1875 = inttoptr i64 %1873 to i64*
  store i64 %1839, i64* %1875, align 8
  %1876 = load i64, i64* %RBP.i, align 8
  %1877 = add i64 %1876, -64
  %1878 = load i64, i64* %3, align 8
  %1879 = add i64 %1878, 5
  store i64 %1879, i64* %3, align 8
  %1880 = inttoptr i64 %1877 to i64*
  %1881 = load i64, i64* %1880, align 8
  store i64 %1881, i64* %386, align 1
  store double 0.000000e+00, double* %388, align 1
  %1882 = add i64 %1876, -24
  %1883 = add i64 %1878, 9
  store i64 %1883, i64* %3, align 8
  %1884 = inttoptr i64 %1882 to i64*
  %1885 = load i64, i64* %1884, align 8
  store i64 %1885, i64* %RAX.i1594, align 8
  %1886 = add i64 %1876, -40
  %1887 = add i64 %1878, 13
  store i64 %1887, i64* %3, align 8
  %1888 = inttoptr i64 %1886 to i32*
  %1889 = load i32, i32* %1888, align 4
  %1890 = sext i32 %1889 to i64
  store i64 %1890, i64* %RDX.i1610, align 8
  %1891 = shl nsw i64 %1890, 3
  %1892 = add i64 %1891, %1885
  %1893 = add i64 %1878, 18
  store i64 %1893, i64* %3, align 8
  %1894 = inttoptr i64 %1892 to i64*
  store i64 %1881, i64* %1894, align 8
  %1895 = load i64, i64* %RBP.i, align 8
  %1896 = add i64 %1895, -72
  %1897 = load i64, i64* %3, align 8
  %1898 = add i64 %1897, 5
  store i64 %1898, i64* %3, align 8
  %1899 = inttoptr i64 %1896 to i64*
  %1900 = load i64, i64* %1899, align 8
  store i64 %1900, i64* %386, align 1
  store double 0.000000e+00, double* %388, align 1
  %1901 = add i64 %1895, -24
  %1902 = add i64 %1897, 9
  store i64 %1902, i64* %3, align 8
  %1903 = inttoptr i64 %1901 to i64*
  %1904 = load i64, i64* %1903, align 8
  store i64 %1904, i64* %RAX.i1594, align 8
  %1905 = add i64 %1895, -40
  %1906 = add i64 %1897, 12
  store i64 %1906, i64* %3, align 8
  %1907 = inttoptr i64 %1905 to i32*
  %1908 = load i32, i32* %1907, align 4
  %1909 = add i32 %1908, 1
  %1910 = zext i32 %1909 to i64
  store i64 %1910, i64* %RCX.i811, align 8
  %1911 = icmp eq i32 %1908, -1
  %1912 = icmp eq i32 %1909, 0
  %1913 = or i1 %1911, %1912
  %1914 = zext i1 %1913 to i8
  store i8 %1914, i8* %51, align 1
  %1915 = and i32 %1909, 255
  %1916 = tail call i32 @llvm.ctpop.i32(i32 %1915)
  %1917 = trunc i32 %1916 to i8
  %1918 = and i8 %1917, 1
  %1919 = xor i8 %1918, 1
  store i8 %1919, i8* %52, align 1
  %1920 = xor i32 %1909, %1908
  %1921 = lshr i32 %1920, 4
  %1922 = trunc i32 %1921 to i8
  %1923 = and i8 %1922, 1
  store i8 %1923, i8* %53, align 1
  %1924 = zext i1 %1912 to i8
  store i8 %1924, i8* %54, align 1
  %1925 = lshr i32 %1909, 31
  %1926 = trunc i32 %1925 to i8
  store i8 %1926, i8* %55, align 1
  %1927 = lshr i32 %1908, 31
  %1928 = xor i32 %1925, %1927
  %1929 = add nuw nsw i32 %1928, %1925
  %1930 = icmp eq i32 %1929, 2
  %1931 = zext i1 %1930 to i8
  store i8 %1931, i8* %56, align 1
  %1932 = sext i32 %1909 to i64
  store i64 %1932, i64* %RDX.i1610, align 8
  %1933 = shl nsw i64 %1932, 3
  %1934 = add i64 %1904, %1933
  %1935 = add i64 %1897, 23
  store i64 %1935, i64* %3, align 8
  %1936 = inttoptr i64 %1934 to i64*
  store i64 %1900, i64* %1936, align 8
  %1937 = load i64, i64* %RBP.i, align 8
  %1938 = add i64 %1937, -28
  %1939 = load i64, i64* %3, align 8
  %1940 = add i64 %1939, 3
  store i64 %1940, i64* %3, align 8
  %1941 = inttoptr i64 %1938 to i32*
  %1942 = load i32, i32* %1941, align 4
  %1943 = add i32 %1942, 1
  %1944 = zext i32 %1943 to i64
  store i64 %1944, i64* %RAX.i1594, align 8
  %1945 = icmp eq i32 %1942, -1
  %1946 = icmp eq i32 %1943, 0
  %1947 = or i1 %1945, %1946
  %1948 = zext i1 %1947 to i8
  store i8 %1948, i8* %51, align 1
  %1949 = and i32 %1943, 255
  %1950 = tail call i32 @llvm.ctpop.i32(i32 %1949)
  %1951 = trunc i32 %1950 to i8
  %1952 = and i8 %1951, 1
  %1953 = xor i8 %1952, 1
  store i8 %1953, i8* %52, align 1
  %1954 = xor i32 %1943, %1942
  %1955 = lshr i32 %1954, 4
  %1956 = trunc i32 %1955 to i8
  %1957 = and i8 %1956, 1
  store i8 %1957, i8* %53, align 1
  %1958 = zext i1 %1946 to i8
  store i8 %1958, i8* %54, align 1
  %1959 = lshr i32 %1943, 31
  %1960 = trunc i32 %1959 to i8
  store i8 %1960, i8* %55, align 1
  %1961 = lshr i32 %1942, 31
  %1962 = xor i32 %1959, %1961
  %1963 = add nuw nsw i32 %1962, %1959
  %1964 = icmp eq i32 %1963, 2
  %1965 = zext i1 %1964 to i8
  store i8 %1965, i8* %56, align 1
  %1966 = add i64 %1939, 9
  store i64 %1966, i64* %3, align 8
  store i32 %1943, i32* %1941, align 4
  %1967 = load i64, i64* %3, align 8
  %1968 = add i64 %1967, -893
  store i64 %1968, i64* %3, align 8
  br label %block_.L_401cbd

block_.L_40203f:                                  ; preds = %block_.L_401cbd
  %1969 = load i32, i32* %439, align 4
  %1970 = shl i32 %1969, 1
  %1971 = icmp slt i32 %1969, 0
  %1972 = icmp slt i32 %1970, 0
  %1973 = xor i1 %1971, %1972
  %1974 = zext i32 %1970 to i64
  store i64 %1974, i64* %RCX.i811, align 8
  %.lobit13 = lshr i32 %1969, 31
  %1975 = trunc i32 %.lobit13 to i8
  store i8 %1975, i8* %51, align 1
  %1976 = and i32 %1970, 254
  %1977 = tail call i32 @llvm.ctpop.i32(i32 %1976)
  %1978 = trunc i32 %1977 to i8
  %1979 = and i8 %1978, 1
  %1980 = xor i8 %1979, 1
  store i8 %1980, i8* %52, align 1
  store i8 0, i8* %53, align 1
  %1981 = icmp eq i32 %1970, 0
  %1982 = zext i1 %1981 to i8
  store i8 %1982, i8* %54, align 1
  %1983 = lshr i32 %1969, 30
  %1984 = trunc i32 %1983 to i8
  %1985 = and i8 %1984, 1
  store i8 %1985, i8* %55, align 1
  %1986 = zext i1 %1973 to i8
  store i8 %1986, i8* %56, align 1
  %1987 = add i64 %431, -16
  %1988 = add i64 %467, 19
  store i64 %1988, i64* %3, align 8
  %1989 = inttoptr i64 %1987 to i64*
  %1990 = load i64, i64* %1989, align 8
  store i64 %1990, i64* %RDX.i1610, align 8
  %1991 = add i64 %467, 23
  store i64 %1991, i64* %3, align 8
  %1992 = load i32, i32* %439, align 4
  %1993 = sext i32 %1992 to i64
  store i64 %1993, i64* %RSI.i1613, align 8
  %1994 = shl nsw i64 %1993, 2
  %1995 = add i64 %1990, %1994
  %1996 = add i64 %467, 26
  store i64 %1996, i64* %3, align 8
  %1997 = inttoptr i64 %1995 to i32*
  %1998 = load i32, i32* %1997, align 4
  %1999 = add i32 %1998, %1970
  %2000 = zext i32 %1999 to i64
  store i64 %2000, i64* %RCX.i811, align 8
  %2001 = icmp ult i32 %1999, %1970
  %2002 = icmp ult i32 %1999, %1998
  %2003 = or i1 %2001, %2002
  %2004 = zext i1 %2003 to i8
  store i8 %2004, i8* %51, align 1
  %2005 = and i32 %1999, 255
  %2006 = tail call i32 @llvm.ctpop.i32(i32 %2005)
  %2007 = trunc i32 %2006 to i8
  %2008 = and i8 %2007, 1
  %2009 = xor i8 %2008, 1
  store i8 %2009, i8* %52, align 1
  %2010 = xor i32 %1998, %1970
  %2011 = xor i32 %2010, %1999
  %2012 = lshr i32 %2011, 4
  %2013 = trunc i32 %2012 to i8
  %2014 = and i8 %2013, 1
  store i8 %2014, i8* %53, align 1
  %2015 = icmp eq i32 %1999, 0
  %2016 = zext i1 %2015 to i8
  store i8 %2016, i8* %54, align 1
  %2017 = lshr i32 %1999, 31
  %2018 = trunc i32 %2017 to i8
  store i8 %2018, i8* %55, align 1
  %2019 = lshr i32 %1969, 30
  %2020 = and i32 %2019, 1
  %2021 = lshr i32 %1998, 31
  %2022 = xor i32 %2017, %2020
  %2023 = xor i32 %2017, %2021
  %2024 = add nuw nsw i32 %2022, %2023
  %2025 = icmp eq i32 %2024, 2
  %2026 = zext i1 %2025 to i8
  store i8 %2026, i8* %56, align 1
  %2027 = add i64 %431, -40
  %2028 = add i64 %467, 29
  store i64 %2028, i64* %3, align 8
  %2029 = inttoptr i64 %2027 to i32*
  store i32 %1999, i32* %2029, align 4
  %2030 = load i64, i64* %RBP.i, align 8
  %2031 = add i64 %2030, -24
  %2032 = load i64, i64* %3, align 8
  %2033 = add i64 %2032, 4
  store i64 %2033, i64* %3, align 8
  %2034 = inttoptr i64 %2031 to i64*
  %2035 = load i64, i64* %2034, align 8
  store i64 %2035, i64* %RDX.i1610, align 8
  %2036 = add i64 %2030, -40
  %2037 = add i64 %2032, 7
  store i64 %2037, i64* %3, align 8
  %2038 = inttoptr i64 %2036 to i32*
  %2039 = load i32, i32* %2038, align 4
  %2040 = add i32 %2039, 1
  %2041 = zext i32 %2040 to i64
  store i64 %2041, i64* %RCX.i811, align 8
  %2042 = icmp eq i32 %2039, -1
  %2043 = icmp eq i32 %2040, 0
  %2044 = or i1 %2042, %2043
  %2045 = zext i1 %2044 to i8
  store i8 %2045, i8* %51, align 1
  %2046 = and i32 %2040, 255
  %2047 = tail call i32 @llvm.ctpop.i32(i32 %2046)
  %2048 = trunc i32 %2047 to i8
  %2049 = and i8 %2048, 1
  %2050 = xor i8 %2049, 1
  store i8 %2050, i8* %52, align 1
  %2051 = xor i32 %2040, %2039
  %2052 = lshr i32 %2051, 4
  %2053 = trunc i32 %2052 to i8
  %2054 = and i8 %2053, 1
  store i8 %2054, i8* %53, align 1
  %2055 = zext i1 %2043 to i8
  store i8 %2055, i8* %54, align 1
  %2056 = lshr i32 %2040, 31
  %2057 = trunc i32 %2056 to i8
  store i8 %2057, i8* %55, align 1
  %2058 = lshr i32 %2039, 31
  %2059 = xor i32 %2056, %2058
  %2060 = add nuw nsw i32 %2059, %2056
  %2061 = icmp eq i32 %2060, 2
  %2062 = zext i1 %2061 to i8
  store i8 %2062, i8* %56, align 1
  %2063 = sext i32 %2040 to i64
  store i64 %2063, i64* %RSI.i1613, align 8
  %2064 = shl nsw i64 %2063, 3
  %2065 = add i64 %2035, %2064
  %2066 = add i64 %2032, 18
  store i64 %2066, i64* %3, align 8
  %2067 = inttoptr i64 %2065 to i64*
  %2068 = load i64, i64* %2067, align 8
  %2069 = load i64, i64* %RAX.i1594, align 8
  %2070 = xor i64 %2069, %2068
  store i64 %2070, i64* %RDX.i1610, align 8
  store i8 0, i8* %51, align 1
  %2071 = trunc i64 %2070 to i32
  %2072 = and i32 %2071, 255
  %2073 = tail call i32 @llvm.ctpop.i32(i32 %2072)
  %2074 = trunc i32 %2073 to i8
  %2075 = and i8 %2074, 1
  %2076 = xor i8 %2075, 1
  store i8 %2076, i8* %52, align 1
  %2077 = icmp eq i64 %2070, 0
  %2078 = zext i1 %2077 to i8
  store i8 %2078, i8* %54, align 1
  %2079 = lshr i64 %2070, 63
  %2080 = trunc i64 %2079 to i8
  store i8 %2080, i8* %55, align 1
  store i8 0, i8* %56, align 1
  store i8 0, i8* %53, align 1
  store i64 %2070, i64* %386, align 1
  store i64 0, i64* %387, align 1
  %2081 = add i64 %2032, 35
  store i64 %2081, i64* %3, align 8
  %2082 = load i64, i64* %2034, align 8
  store i64 %2082, i64* %RDX.i1610, align 8
  %2083 = add i64 %2032, 38
  store i64 %2083, i64* %3, align 8
  %2084 = load i32, i32* %2038, align 4
  %2085 = add i32 %2084, 1
  %2086 = zext i32 %2085 to i64
  store i64 %2086, i64* %RCX.i811, align 8
  %2087 = icmp eq i32 %2084, -1
  %2088 = icmp eq i32 %2085, 0
  %2089 = or i1 %2087, %2088
  %2090 = zext i1 %2089 to i8
  store i8 %2090, i8* %51, align 1
  %2091 = and i32 %2085, 255
  %2092 = tail call i32 @llvm.ctpop.i32(i32 %2091)
  %2093 = trunc i32 %2092 to i8
  %2094 = and i8 %2093, 1
  %2095 = xor i8 %2094, 1
  store i8 %2095, i8* %52, align 1
  %2096 = xor i32 %2085, %2084
  %2097 = lshr i32 %2096, 4
  %2098 = trunc i32 %2097 to i8
  %2099 = and i8 %2098, 1
  store i8 %2099, i8* %53, align 1
  %2100 = zext i1 %2088 to i8
  store i8 %2100, i8* %54, align 1
  %2101 = lshr i32 %2085, 31
  %2102 = trunc i32 %2101 to i8
  store i8 %2102, i8* %55, align 1
  %2103 = lshr i32 %2084, 31
  %2104 = xor i32 %2101, %2103
  %2105 = add nuw nsw i32 %2104, %2101
  %2106 = icmp eq i32 %2105, 2
  %2107 = zext i1 %2106 to i8
  store i8 %2107, i8* %56, align 1
  %2108 = sext i32 %2085 to i64
  store i64 %2108, i64* %RSI.i1613, align 8
  %2109 = shl nsw i64 %2108, 3
  %2110 = add i64 %2082, %2109
  %2111 = add i64 %2032, 49
  store i64 %2111, i64* %3, align 8
  %2112 = inttoptr i64 %2110 to i64*
  store i64 %2070, i64* %2112, align 8
  %2113 = load i64, i64* %RBP.i, align 8
  %2114 = add i64 %2113, -40
  %2115 = load i64, i64* %3, align 8
  %2116 = add i64 %2115, 3
  store i64 %2116, i64* %3, align 8
  %2117 = inttoptr i64 %2114 to i32*
  %2118 = load i32, i32* %2117, align 4
  %2119 = zext i32 %2118 to i64
  store i64 %2119, i64* %RCX.i811, align 8
  %2120 = add i64 %2113, -52
  %2121 = add i64 %2115, 6
  store i64 %2121, i64* %3, align 8
  %2122 = inttoptr i64 %2120 to i32*
  %2123 = load i32, i32* %2122, align 4
  %2124 = add i32 %2123, %2118
  %2125 = zext i32 %2124 to i64
  store i64 %2125, i64* %RCX.i811, align 8
  %2126 = icmp ult i32 %2124, %2118
  %2127 = icmp ult i32 %2124, %2123
  %2128 = or i1 %2126, %2127
  %2129 = zext i1 %2128 to i8
  store i8 %2129, i8* %51, align 1
  %2130 = and i32 %2124, 255
  %2131 = tail call i32 @llvm.ctpop.i32(i32 %2130)
  %2132 = trunc i32 %2131 to i8
  %2133 = and i8 %2132, 1
  %2134 = xor i8 %2133, 1
  store i8 %2134, i8* %52, align 1
  %2135 = xor i32 %2123, %2118
  %2136 = xor i32 %2135, %2124
  %2137 = lshr i32 %2136, 4
  %2138 = trunc i32 %2137 to i8
  %2139 = and i8 %2138, 1
  store i8 %2139, i8* %53, align 1
  %2140 = icmp eq i32 %2124, 0
  %2141 = zext i1 %2140 to i8
  store i8 %2141, i8* %54, align 1
  %2142 = lshr i32 %2124, 31
  %2143 = trunc i32 %2142 to i8
  store i8 %2143, i8* %55, align 1
  %2144 = lshr i32 %2118, 31
  %2145 = lshr i32 %2123, 31
  %2146 = xor i32 %2142, %2144
  %2147 = xor i32 %2142, %2145
  %2148 = add nuw nsw i32 %2146, %2147
  %2149 = icmp eq i32 %2148, 2
  %2150 = zext i1 %2149 to i8
  store i8 %2150, i8* %56, align 1
  %2151 = add i64 %2113, -32
  %2152 = add i64 %2115, 9
  store i64 %2152, i64* %3, align 8
  %2153 = inttoptr i64 %2151 to i32*
  store i32 %2124, i32* %2153, align 4
  %2154 = load i64, i64* %RBP.i, align 8
  %2155 = add i64 %2154, -32
  %2156 = load i64, i64* %3, align 8
  %2157 = add i64 %2156, 3
  store i64 %2157, i64* %3, align 8
  %2158 = inttoptr i64 %2155 to i32*
  %2159 = load i32, i32* %2158, align 4
  %2160 = zext i32 %2159 to i64
  store i64 %2160, i64* %RCX.i811, align 8
  %2161 = add i64 %2154, -52
  %2162 = add i64 %2156, 6
  store i64 %2162, i64* %3, align 8
  %2163 = inttoptr i64 %2161 to i32*
  %2164 = load i32, i32* %2163, align 4
  %2165 = add i32 %2164, %2159
  %2166 = zext i32 %2165 to i64
  store i64 %2166, i64* %RCX.i811, align 8
  %2167 = icmp ult i32 %2165, %2159
  %2168 = icmp ult i32 %2165, %2164
  %2169 = or i1 %2167, %2168
  %2170 = zext i1 %2169 to i8
  store i8 %2170, i8* %51, align 1
  %2171 = and i32 %2165, 255
  %2172 = tail call i32 @llvm.ctpop.i32(i32 %2171)
  %2173 = trunc i32 %2172 to i8
  %2174 = and i8 %2173, 1
  %2175 = xor i8 %2174, 1
  store i8 %2175, i8* %52, align 1
  %2176 = xor i32 %2164, %2159
  %2177 = xor i32 %2176, %2165
  %2178 = lshr i32 %2177, 4
  %2179 = trunc i32 %2178 to i8
  %2180 = and i8 %2179, 1
  store i8 %2180, i8* %53, align 1
  %2181 = icmp eq i32 %2165, 0
  %2182 = zext i1 %2181 to i8
  store i8 %2182, i8* %54, align 1
  %2183 = lshr i32 %2165, 31
  %2184 = trunc i32 %2183 to i8
  store i8 %2184, i8* %55, align 1
  %2185 = lshr i32 %2159, 31
  %2186 = lshr i32 %2164, 31
  %2187 = xor i32 %2183, %2185
  %2188 = xor i32 %2183, %2186
  %2189 = add nuw nsw i32 %2187, %2188
  %2190 = icmp eq i32 %2189, 2
  %2191 = zext i1 %2190 to i8
  store i8 %2191, i8* %56, align 1
  %2192 = add i64 %2154, -40
  %2193 = add i64 %2156, 9
  store i64 %2193, i64* %3, align 8
  %2194 = inttoptr i64 %2192 to i32*
  store i32 %2165, i32* %2194, align 4
  %2195 = load i64, i64* %RBP.i, align 8
  %2196 = add i64 %2195, -24
  %2197 = load i64, i64* %3, align 8
  %2198 = add i64 %2197, 4
  store i64 %2198, i64* %3, align 8
  %2199 = inttoptr i64 %2196 to i64*
  %2200 = load i64, i64* %2199, align 8
  store i64 %2200, i64* %RDX.i1610, align 8
  %2201 = add i64 %2195, -32
  %2202 = add i64 %2197, 8
  store i64 %2202, i64* %3, align 8
  %2203 = inttoptr i64 %2201 to i32*
  %2204 = load i32, i32* %2203, align 4
  %2205 = sext i32 %2204 to i64
  store i64 %2205, i64* %RSI.i1613, align 8
  %2206 = shl nsw i64 %2205, 3
  %2207 = add i64 %2206, %2200
  %2208 = add i64 %2197, 13
  store i64 %2208, i64* %3, align 8
  %2209 = inttoptr i64 %2207 to i64*
  %2210 = load i64, i64* %2209, align 8
  store i64 %2210, i64* %386, align 1
  store double 0.000000e+00, double* %388, align 1
  %2211 = add i64 %2195, -64
  %2212 = add i64 %2197, 18
  store i64 %2212, i64* %3, align 8
  %2213 = inttoptr i64 %2211 to i64*
  store i64 %2210, i64* %2213, align 8
  %2214 = load i64, i64* %RBP.i, align 8
  %2215 = add i64 %2214, -24
  %2216 = load i64, i64* %3, align 8
  %2217 = add i64 %2216, 4
  store i64 %2217, i64* %3, align 8
  %2218 = inttoptr i64 %2215 to i64*
  %2219 = load i64, i64* %2218, align 8
  store i64 %2219, i64* %RDX.i1610, align 8
  %2220 = add i64 %2214, -32
  %2221 = add i64 %2216, 7
  store i64 %2221, i64* %3, align 8
  %2222 = inttoptr i64 %2220 to i32*
  %2223 = load i32, i32* %2222, align 4
  %2224 = add i32 %2223, 1
  %2225 = zext i32 %2224 to i64
  store i64 %2225, i64* %RCX.i811, align 8
  %2226 = icmp eq i32 %2223, -1
  %2227 = icmp eq i32 %2224, 0
  %2228 = or i1 %2226, %2227
  %2229 = zext i1 %2228 to i8
  store i8 %2229, i8* %51, align 1
  %2230 = and i32 %2224, 255
  %2231 = tail call i32 @llvm.ctpop.i32(i32 %2230)
  %2232 = trunc i32 %2231 to i8
  %2233 = and i8 %2232, 1
  %2234 = xor i8 %2233, 1
  store i8 %2234, i8* %52, align 1
  %2235 = xor i32 %2224, %2223
  %2236 = lshr i32 %2235, 4
  %2237 = trunc i32 %2236 to i8
  %2238 = and i8 %2237, 1
  store i8 %2238, i8* %53, align 1
  %2239 = zext i1 %2227 to i8
  store i8 %2239, i8* %54, align 1
  %2240 = lshr i32 %2224, 31
  %2241 = trunc i32 %2240 to i8
  store i8 %2241, i8* %55, align 1
  %2242 = lshr i32 %2223, 31
  %2243 = xor i32 %2240, %2242
  %2244 = add nuw nsw i32 %2243, %2240
  %2245 = icmp eq i32 %2244, 2
  %2246 = zext i1 %2245 to i8
  store i8 %2246, i8* %56, align 1
  %2247 = sext i32 %2224 to i64
  store i64 %2247, i64* %RSI.i1613, align 8
  %2248 = shl nsw i64 %2247, 3
  %2249 = add i64 %2219, %2248
  %2250 = add i64 %2216, 18
  store i64 %2250, i64* %3, align 8
  %2251 = inttoptr i64 %2249 to i64*
  %2252 = load i64, i64* %2251, align 8
  %2253 = load i64, i64* %RAX.i1594, align 8
  %2254 = xor i64 %2253, %2252
  store i64 %2254, i64* %RDX.i1610, align 8
  store i8 0, i8* %51, align 1
  %2255 = trunc i64 %2254 to i32
  %2256 = and i32 %2255, 255
  %2257 = tail call i32 @llvm.ctpop.i32(i32 %2256)
  %2258 = trunc i32 %2257 to i8
  %2259 = and i8 %2258, 1
  %2260 = xor i8 %2259, 1
  store i8 %2260, i8* %52, align 1
  %2261 = icmp eq i64 %2254, 0
  %2262 = zext i1 %2261 to i8
  store i8 %2262, i8* %54, align 1
  %2263 = lshr i64 %2254, 63
  %2264 = trunc i64 %2263 to i8
  store i8 %2264, i8* %55, align 1
  store i8 0, i8* %56, align 1
  store i8 0, i8* %53, align 1
  store i64 %2254, i64* %386, align 1
  store i64 0, i64* %387, align 1
  %2265 = add i64 %2214, -72
  %2266 = add i64 %2216, 36
  store i64 %2266, i64* %3, align 8
  %2267 = inttoptr i64 %2265 to i64*
  store i64 %2254, i64* %2267, align 8
  %2268 = load i64, i64* %RBP.i, align 8
  %2269 = add i64 %2268, -24
  %2270 = load i64, i64* %3, align 8
  %2271 = add i64 %2270, 4
  store i64 %2271, i64* %3, align 8
  %2272 = inttoptr i64 %2269 to i64*
  %2273 = load i64, i64* %2272, align 8
  store i64 %2273, i64* %RDX.i1610, align 8
  %2274 = add i64 %2268, -40
  %2275 = add i64 %2270, 8
  store i64 %2275, i64* %3, align 8
  %2276 = inttoptr i64 %2274 to i32*
  %2277 = load i32, i32* %2276, align 4
  %2278 = sext i32 %2277 to i64
  store i64 %2278, i64* %RSI.i1613, align 8
  %2279 = shl nsw i64 %2278, 3
  %2280 = add i64 %2279, %2273
  %2281 = add i64 %2270, 13
  store i64 %2281, i64* %3, align 8
  %2282 = inttoptr i64 %2280 to i64*
  %2283 = load i64, i64* %2282, align 8
  store i64 %2283, i64* %386, align 1
  store double 0.000000e+00, double* %388, align 1
  %2284 = add i64 %2268, -80
  %2285 = add i64 %2270, 18
  store i64 %2285, i64* %3, align 8
  %2286 = inttoptr i64 %2284 to i64*
  store i64 %2283, i64* %2286, align 8
  %2287 = load i64, i64* %RBP.i, align 8
  %2288 = add i64 %2287, -24
  %2289 = load i64, i64* %3, align 8
  %2290 = add i64 %2289, 4
  store i64 %2290, i64* %3, align 8
  %2291 = inttoptr i64 %2288 to i64*
  %2292 = load i64, i64* %2291, align 8
  store i64 %2292, i64* %RDX.i1610, align 8
  %2293 = add i64 %2287, -40
  %2294 = add i64 %2289, 7
  store i64 %2294, i64* %3, align 8
  %2295 = inttoptr i64 %2293 to i32*
  %2296 = load i32, i32* %2295, align 4
  %2297 = add i32 %2296, 1
  %2298 = zext i32 %2297 to i64
  store i64 %2298, i64* %RCX.i811, align 8
  %2299 = icmp eq i32 %2296, -1
  %2300 = icmp eq i32 %2297, 0
  %2301 = or i1 %2299, %2300
  %2302 = zext i1 %2301 to i8
  store i8 %2302, i8* %51, align 1
  %2303 = and i32 %2297, 255
  %2304 = tail call i32 @llvm.ctpop.i32(i32 %2303)
  %2305 = trunc i32 %2304 to i8
  %2306 = and i8 %2305, 1
  %2307 = xor i8 %2306, 1
  store i8 %2307, i8* %52, align 1
  %2308 = xor i32 %2297, %2296
  %2309 = lshr i32 %2308, 4
  %2310 = trunc i32 %2309 to i8
  %2311 = and i8 %2310, 1
  store i8 %2311, i8* %53, align 1
  %2312 = zext i1 %2300 to i8
  store i8 %2312, i8* %54, align 1
  %2313 = lshr i32 %2297, 31
  %2314 = trunc i32 %2313 to i8
  store i8 %2314, i8* %55, align 1
  %2315 = lshr i32 %2296, 31
  %2316 = xor i32 %2313, %2315
  %2317 = add nuw nsw i32 %2316, %2313
  %2318 = icmp eq i32 %2317, 2
  %2319 = zext i1 %2318 to i8
  store i8 %2319, i8* %56, align 1
  %2320 = sext i32 %2297 to i64
  store i64 %2320, i64* %RSI.i1613, align 8
  %2321 = shl nsw i64 %2320, 3
  %2322 = add i64 %2292, %2321
  %2323 = add i64 %2289, 18
  store i64 %2323, i64* %3, align 8
  %2324 = inttoptr i64 %2322 to i64*
  %2325 = load i64, i64* %2324, align 8
  %2326 = load i64, i64* %RAX.i1594, align 8
  %2327 = xor i64 %2326, %2325
  store i64 %2327, i64* %RDX.i1610, align 8
  store i8 0, i8* %51, align 1
  %2328 = trunc i64 %2327 to i32
  %2329 = and i32 %2328, 255
  %2330 = tail call i32 @llvm.ctpop.i32(i32 %2329)
  %2331 = trunc i32 %2330 to i8
  %2332 = and i8 %2331, 1
  %2333 = xor i8 %2332, 1
  store i8 %2333, i8* %52, align 1
  %2334 = icmp eq i64 %2327, 0
  %2335 = zext i1 %2334 to i8
  store i8 %2335, i8* %54, align 1
  %2336 = lshr i64 %2327, 63
  %2337 = trunc i64 %2336 to i8
  store i8 %2337, i8* %55, align 1
  store i8 0, i8* %56, align 1
  store i8 0, i8* %53, align 1
  store i64 %2327, i64* %386, align 1
  store i64 0, i64* %387, align 1
  %2338 = add i64 %2287, -88
  %2339 = add i64 %2289, 36
  store i64 %2339, i64* %3, align 8
  %2340 = inttoptr i64 %2338 to i64*
  store i64 %2327, i64* %2340, align 8
  %2341 = load i64, i64* %RBP.i, align 8
  %2342 = add i64 %2341, -80
  %2343 = load i64, i64* %3, align 8
  %2344 = add i64 %2343, 5
  store i64 %2344, i64* %3, align 8
  %2345 = inttoptr i64 %2342 to i64*
  %2346 = load i64, i64* %2345, align 8
  store i64 %2346, i64* %386, align 1
  store double 0.000000e+00, double* %388, align 1
  %2347 = add i64 %2341, -24
  %2348 = add i64 %2343, 9
  store i64 %2348, i64* %3, align 8
  %2349 = inttoptr i64 %2347 to i64*
  %2350 = load i64, i64* %2349, align 8
  store i64 %2350, i64* %RDX.i1610, align 8
  %2351 = add i64 %2341, -32
  %2352 = add i64 %2343, 13
  store i64 %2352, i64* %3, align 8
  %2353 = inttoptr i64 %2351 to i32*
  %2354 = load i32, i32* %2353, align 4
  %2355 = sext i32 %2354 to i64
  store i64 %2355, i64* %RSI.i1613, align 8
  %2356 = shl nsw i64 %2355, 3
  %2357 = add i64 %2356, %2350
  %2358 = add i64 %2343, 18
  store i64 %2358, i64* %3, align 8
  %2359 = inttoptr i64 %2357 to i64*
  store i64 %2346, i64* %2359, align 8
  %2360 = load i64, i64* %RBP.i, align 8
  %2361 = add i64 %2360, -88
  %2362 = load i64, i64* %3, align 8
  %2363 = add i64 %2362, 5
  store i64 %2363, i64* %3, align 8
  %2364 = inttoptr i64 %2361 to i64*
  %2365 = load i64, i64* %2364, align 8
  store i64 %2365, i64* %386, align 1
  store double 0.000000e+00, double* %388, align 1
  %2366 = add i64 %2360, -24
  %2367 = add i64 %2362, 9
  store i64 %2367, i64* %3, align 8
  %2368 = inttoptr i64 %2366 to i64*
  %2369 = load i64, i64* %2368, align 8
  store i64 %2369, i64* %RDX.i1610, align 8
  %2370 = add i64 %2360, -32
  %2371 = add i64 %2362, 12
  store i64 %2371, i64* %3, align 8
  %2372 = inttoptr i64 %2370 to i32*
  %2373 = load i32, i32* %2372, align 4
  %2374 = add i32 %2373, 1
  %2375 = zext i32 %2374 to i64
  store i64 %2375, i64* %RCX.i811, align 8
  %2376 = icmp eq i32 %2373, -1
  %2377 = icmp eq i32 %2374, 0
  %2378 = or i1 %2376, %2377
  %2379 = zext i1 %2378 to i8
  store i8 %2379, i8* %51, align 1
  %2380 = and i32 %2374, 255
  %2381 = tail call i32 @llvm.ctpop.i32(i32 %2380)
  %2382 = trunc i32 %2381 to i8
  %2383 = and i8 %2382, 1
  %2384 = xor i8 %2383, 1
  store i8 %2384, i8* %52, align 1
  %2385 = xor i32 %2374, %2373
  %2386 = lshr i32 %2385, 4
  %2387 = trunc i32 %2386 to i8
  %2388 = and i8 %2387, 1
  store i8 %2388, i8* %53, align 1
  %2389 = zext i1 %2377 to i8
  store i8 %2389, i8* %54, align 1
  %2390 = lshr i32 %2374, 31
  %2391 = trunc i32 %2390 to i8
  store i8 %2391, i8* %55, align 1
  %2392 = lshr i32 %2373, 31
  %2393 = xor i32 %2390, %2392
  %2394 = add nuw nsw i32 %2393, %2390
  %2395 = icmp eq i32 %2394, 2
  %2396 = zext i1 %2395 to i8
  store i8 %2396, i8* %56, align 1
  %2397 = sext i32 %2374 to i64
  store i64 %2397, i64* %RSI.i1613, align 8
  %2398 = shl nsw i64 %2397, 3
  %2399 = add i64 %2369, %2398
  %2400 = add i64 %2362, 23
  store i64 %2400, i64* %3, align 8
  %2401 = inttoptr i64 %2399 to i64*
  store i64 %2365, i64* %2401, align 8
  %2402 = load i64, i64* %RBP.i, align 8
  %2403 = add i64 %2402, -64
  %2404 = load i64, i64* %3, align 8
  %2405 = add i64 %2404, 5
  store i64 %2405, i64* %3, align 8
  %2406 = inttoptr i64 %2403 to i64*
  %2407 = load i64, i64* %2406, align 8
  store i64 %2407, i64* %386, align 1
  store double 0.000000e+00, double* %388, align 1
  %2408 = add i64 %2402, -24
  %2409 = add i64 %2404, 9
  store i64 %2409, i64* %3, align 8
  %2410 = inttoptr i64 %2408 to i64*
  %2411 = load i64, i64* %2410, align 8
  store i64 %2411, i64* %RDX.i1610, align 8
  %2412 = add i64 %2402, -40
  %2413 = add i64 %2404, 13
  store i64 %2413, i64* %3, align 8
  %2414 = inttoptr i64 %2412 to i32*
  %2415 = load i32, i32* %2414, align 4
  %2416 = sext i32 %2415 to i64
  store i64 %2416, i64* %RSI.i1613, align 8
  %2417 = shl nsw i64 %2416, 3
  %2418 = add i64 %2417, %2411
  %2419 = add i64 %2404, 18
  store i64 %2419, i64* %3, align 8
  %2420 = inttoptr i64 %2418 to i64*
  store i64 %2407, i64* %2420, align 8
  %2421 = load i64, i64* %RBP.i, align 8
  %2422 = add i64 %2421, -72
  %2423 = load i64, i64* %3, align 8
  %2424 = add i64 %2423, 5
  store i64 %2424, i64* %3, align 8
  %2425 = inttoptr i64 %2422 to i64*
  %2426 = load i64, i64* %2425, align 8
  store i64 %2426, i64* %386, align 1
  store double 0.000000e+00, double* %388, align 1
  %2427 = add i64 %2421, -24
  %2428 = add i64 %2423, 9
  store i64 %2428, i64* %3, align 8
  %2429 = inttoptr i64 %2427 to i64*
  %2430 = load i64, i64* %2429, align 8
  store i64 %2430, i64* %RDX.i1610, align 8
  %2431 = add i64 %2421, -40
  %2432 = add i64 %2423, 12
  store i64 %2432, i64* %3, align 8
  %2433 = inttoptr i64 %2431 to i32*
  %2434 = load i32, i32* %2433, align 4
  %2435 = add i32 %2434, 1
  %2436 = zext i32 %2435 to i64
  store i64 %2436, i64* %RCX.i811, align 8
  %2437 = icmp eq i32 %2434, -1
  %2438 = icmp eq i32 %2435, 0
  %2439 = or i1 %2437, %2438
  %2440 = zext i1 %2439 to i8
  store i8 %2440, i8* %51, align 1
  %2441 = and i32 %2435, 255
  %2442 = tail call i32 @llvm.ctpop.i32(i32 %2441)
  %2443 = trunc i32 %2442 to i8
  %2444 = and i8 %2443, 1
  %2445 = xor i8 %2444, 1
  store i8 %2445, i8* %52, align 1
  %2446 = xor i32 %2435, %2434
  %2447 = lshr i32 %2446, 4
  %2448 = trunc i32 %2447 to i8
  %2449 = and i8 %2448, 1
  store i8 %2449, i8* %53, align 1
  %2450 = zext i1 %2438 to i8
  store i8 %2450, i8* %54, align 1
  %2451 = lshr i32 %2435, 31
  %2452 = trunc i32 %2451 to i8
  store i8 %2452, i8* %55, align 1
  %2453 = lshr i32 %2434, 31
  %2454 = xor i32 %2451, %2453
  %2455 = add nuw nsw i32 %2454, %2451
  %2456 = icmp eq i32 %2455, 2
  %2457 = zext i1 %2456 to i8
  store i8 %2457, i8* %56, align 1
  %2458 = sext i32 %2435 to i64
  store i64 %2458, i64* %RSI.i1613, align 8
  %2459 = shl nsw i64 %2458, 3
  %2460 = add i64 %2430, %2459
  %2461 = add i64 %2423, 23
  store i64 %2461, i64* %3, align 8
  %2462 = inttoptr i64 %2460 to i64*
  store i64 %2426, i64* %2462, align 8
  %2463 = load i64, i64* %RBP.i, align 8
  %2464 = add i64 %2463, -52
  %2465 = load i64, i64* %3, align 8
  %2466 = add i64 %2465, 3
  store i64 %2466, i64* %3, align 8
  %2467 = inttoptr i64 %2464 to i32*
  %2468 = load i32, i32* %2467, align 4
  %2469 = zext i32 %2468 to i64
  store i64 %2469, i64* %RCX.i811, align 8
  %2470 = add i64 %2463, -40
  %2471 = add i64 %2465, 6
  store i64 %2471, i64* %3, align 8
  %2472 = inttoptr i64 %2470 to i32*
  %2473 = load i32, i32* %2472, align 4
  %2474 = add i32 %2473, %2468
  %2475 = zext i32 %2474 to i64
  store i64 %2475, i64* %RCX.i811, align 8
  %2476 = icmp ult i32 %2474, %2468
  %2477 = icmp ult i32 %2474, %2473
  %2478 = or i1 %2476, %2477
  %2479 = zext i1 %2478 to i8
  store i8 %2479, i8* %51, align 1
  %2480 = and i32 %2474, 255
  %2481 = tail call i32 @llvm.ctpop.i32(i32 %2480)
  %2482 = trunc i32 %2481 to i8
  %2483 = and i8 %2482, 1
  %2484 = xor i8 %2483, 1
  store i8 %2484, i8* %52, align 1
  %2485 = xor i32 %2473, %2468
  %2486 = xor i32 %2485, %2474
  %2487 = lshr i32 %2486, 4
  %2488 = trunc i32 %2487 to i8
  %2489 = and i8 %2488, 1
  store i8 %2489, i8* %53, align 1
  %2490 = icmp eq i32 %2474, 0
  %2491 = zext i1 %2490 to i8
  store i8 %2491, i8* %54, align 1
  %2492 = lshr i32 %2474, 31
  %2493 = trunc i32 %2492 to i8
  store i8 %2493, i8* %55, align 1
  %2494 = lshr i32 %2468, 31
  %2495 = lshr i32 %2473, 31
  %2496 = xor i32 %2492, %2494
  %2497 = xor i32 %2492, %2495
  %2498 = add nuw nsw i32 %2496, %2497
  %2499 = icmp eq i32 %2498, 2
  %2500 = zext i1 %2499 to i8
  store i8 %2500, i8* %56, align 1
  %2501 = add i64 %2465, 9
  store i64 %2501, i64* %3, align 8
  store i32 %2474, i32* %2472, align 4
  %2502 = load i64, i64* %RBP.i, align 8
  %2503 = add i64 %2502, -24
  %2504 = load i64, i64* %3, align 8
  %2505 = add i64 %2504, 4
  store i64 %2505, i64* %3, align 8
  %2506 = inttoptr i64 %2503 to i64*
  %2507 = load i64, i64* %2506, align 8
  store i64 %2507, i64* %RDX.i1610, align 8
  %2508 = add i64 %2502, -40
  %2509 = add i64 %2504, 7
  store i64 %2509, i64* %3, align 8
  %2510 = inttoptr i64 %2508 to i32*
  %2511 = load i32, i32* %2510, align 4
  %2512 = add i32 %2511, 1
  %2513 = zext i32 %2512 to i64
  store i64 %2513, i64* %RCX.i811, align 8
  %2514 = icmp eq i32 %2511, -1
  %2515 = icmp eq i32 %2512, 0
  %2516 = or i1 %2514, %2515
  %2517 = zext i1 %2516 to i8
  store i8 %2517, i8* %51, align 1
  %2518 = and i32 %2512, 255
  %2519 = tail call i32 @llvm.ctpop.i32(i32 %2518)
  %2520 = trunc i32 %2519 to i8
  %2521 = and i8 %2520, 1
  %2522 = xor i8 %2521, 1
  store i8 %2522, i8* %52, align 1
  %2523 = xor i32 %2512, %2511
  %2524 = lshr i32 %2523, 4
  %2525 = trunc i32 %2524 to i8
  %2526 = and i8 %2525, 1
  store i8 %2526, i8* %53, align 1
  %2527 = zext i1 %2515 to i8
  store i8 %2527, i8* %54, align 1
  %2528 = lshr i32 %2512, 31
  %2529 = trunc i32 %2528 to i8
  store i8 %2529, i8* %55, align 1
  %2530 = lshr i32 %2511, 31
  %2531 = xor i32 %2528, %2530
  %2532 = add nuw nsw i32 %2531, %2528
  %2533 = icmp eq i32 %2532, 2
  %2534 = zext i1 %2533 to i8
  store i8 %2534, i8* %56, align 1
  %2535 = sext i32 %2512 to i64
  store i64 %2535, i64* %RSI.i1613, align 8
  %2536 = shl nsw i64 %2535, 3
  %2537 = add i64 %2507, %2536
  %2538 = add i64 %2504, 18
  store i64 %2538, i64* %3, align 8
  %2539 = inttoptr i64 %2537 to i64*
  %2540 = load i64, i64* %2539, align 8
  %2541 = load i64, i64* %RAX.i1594, align 8
  %2542 = xor i64 %2541, %2540
  store i64 %2542, i64* %RDX.i1610, align 8
  store i8 0, i8* %51, align 1
  %2543 = trunc i64 %2542 to i32
  %2544 = and i32 %2543, 255
  %2545 = tail call i32 @llvm.ctpop.i32(i32 %2544)
  %2546 = trunc i32 %2545 to i8
  %2547 = and i8 %2546, 1
  %2548 = xor i8 %2547, 1
  store i8 %2548, i8* %52, align 1
  %2549 = icmp eq i64 %2542, 0
  %2550 = zext i1 %2549 to i8
  store i8 %2550, i8* %54, align 1
  %2551 = lshr i64 %2542, 63
  %2552 = trunc i64 %2551 to i8
  store i8 %2552, i8* %55, align 1
  store i8 0, i8* %56, align 1
  store i8 0, i8* %53, align 1
  store i64 %2542, i64* %386, align 1
  store i64 0, i64* %387, align 1
  %2553 = add i64 %2504, 35
  store i64 %2553, i64* %3, align 8
  %2554 = load i64, i64* %2506, align 8
  store i64 %2554, i64* %RAX.i1594, align 8
  %2555 = add i64 %2504, 38
  store i64 %2555, i64* %3, align 8
  %2556 = load i32, i32* %2510, align 4
  %2557 = add i32 %2556, 1
  %2558 = zext i32 %2557 to i64
  store i64 %2558, i64* %RCX.i811, align 8
  %2559 = icmp eq i32 %2556, -1
  %2560 = icmp eq i32 %2557, 0
  %2561 = or i1 %2559, %2560
  %2562 = zext i1 %2561 to i8
  store i8 %2562, i8* %51, align 1
  %2563 = and i32 %2557, 255
  %2564 = tail call i32 @llvm.ctpop.i32(i32 %2563)
  %2565 = trunc i32 %2564 to i8
  %2566 = and i8 %2565, 1
  %2567 = xor i8 %2566, 1
  store i8 %2567, i8* %52, align 1
  %2568 = xor i32 %2557, %2556
  %2569 = lshr i32 %2568, 4
  %2570 = trunc i32 %2569 to i8
  %2571 = and i8 %2570, 1
  store i8 %2571, i8* %53, align 1
  %2572 = zext i1 %2560 to i8
  store i8 %2572, i8* %54, align 1
  %2573 = lshr i32 %2557, 31
  %2574 = trunc i32 %2573 to i8
  store i8 %2574, i8* %55, align 1
  %2575 = lshr i32 %2556, 31
  %2576 = xor i32 %2573, %2575
  %2577 = add nuw nsw i32 %2576, %2573
  %2578 = icmp eq i32 %2577, 2
  %2579 = zext i1 %2578 to i8
  store i8 %2579, i8* %56, align 1
  %2580 = sext i32 %2557 to i64
  store i64 %2580, i64* %RDX.i1610, align 8
  %2581 = shl nsw i64 %2580, 3
  %2582 = add i64 %2554, %2581
  %2583 = add i64 %2504, 49
  store i64 %2583, i64* %3, align 8
  %2584 = inttoptr i64 %2582 to i64*
  store i64 %2542, i64* %2584, align 8
  %2585 = load i64, i64* %RBP.i, align 8
  %2586 = add i64 %2585, -36
  %2587 = load i64, i64* %3, align 8
  %2588 = add i64 %2587, 3
  store i64 %2588, i64* %3, align 8
  %2589 = inttoptr i64 %2586 to i32*
  %2590 = load i32, i32* %2589, align 4
  %2591 = add i32 %2590, 1
  %2592 = zext i32 %2591 to i64
  store i64 %2592, i64* %RAX.i1594, align 8
  %2593 = icmp eq i32 %2590, -1
  %2594 = icmp eq i32 %2591, 0
  %2595 = or i1 %2593, %2594
  %2596 = zext i1 %2595 to i8
  store i8 %2596, i8* %51, align 1
  %2597 = and i32 %2591, 255
  %2598 = tail call i32 @llvm.ctpop.i32(i32 %2597)
  %2599 = trunc i32 %2598 to i8
  %2600 = and i8 %2599, 1
  %2601 = xor i8 %2600, 1
  store i8 %2601, i8* %52, align 1
  %2602 = xor i32 %2591, %2590
  %2603 = lshr i32 %2602, 4
  %2604 = trunc i32 %2603 to i8
  %2605 = and i8 %2604, 1
  store i8 %2605, i8* %53, align 1
  %2606 = zext i1 %2594 to i8
  store i8 %2606, i8* %54, align 1
  %2607 = lshr i32 %2591, 31
  %2608 = trunc i32 %2607 to i8
  store i8 %2608, i8* %55, align 1
  %2609 = lshr i32 %2590, 31
  %2610 = xor i32 %2607, %2609
  %2611 = add nuw nsw i32 %2610, %2607
  %2612 = icmp eq i32 %2611, 2
  %2613 = zext i1 %2612 to i8
  store i8 %2613, i8* %56, align 1
  %2614 = add i64 %2587, 9
  store i64 %2614, i64* %3, align 8
  store i32 %2591, i32* %2589, align 4
  %2615 = load i64, i64* %3, align 8
  %2616 = add i64 %2615, -1271
  store i64 %2616, i64* %3, align 8
  br label %block_.L_401caa

block_.L_4021a6:                                  ; preds = %block_.L_401caa
  %2617 = add i64 %426, 748
  br label %block_.L_402492

block_.L_4021ab:                                  ; preds = %block_.L_401c8b
  store i64 -9223372036854775808, i64* %RAX.i1594, align 8
  %RCX.i534 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %2618 = add i64 %332, -24
  %2619 = add i64 %382, 14
  store i64 %2619, i64* %3, align 8
  %2620 = inttoptr i64 %2618 to i64*
  %2621 = load i64, i64* %2620, align 8
  store i64 %2621, i64* %RCX.i534, align 8
  %2622 = add i64 %2621, 8
  %2623 = add i64 %382, 19
  store i64 %2623, i64* %3, align 8
  %2624 = inttoptr i64 %2622 to i64*
  %2625 = load i64, i64* %2624, align 8
  %2626 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %2627 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %2628 = bitcast i64* %2627 to double*
  %2629 = xor i64 %2625, -9223372036854775808
  store i64 %2629, i64* %RCX.i534, align 8
  store i8 0, i8* %51, align 1
  %2630 = trunc i64 %2625 to i32
  %2631 = and i32 %2630, 255
  %2632 = tail call i32 @llvm.ctpop.i32(i32 %2631)
  %2633 = trunc i32 %2632 to i8
  %2634 = and i8 %2633, 1
  %2635 = xor i8 %2634, 1
  store i8 %2635, i8* %52, align 1
  %2636 = icmp eq i64 %2629, 0
  %2637 = zext i1 %2636 to i8
  store i8 %2637, i8* %54, align 1
  %2638 = lshr i64 %2629, 63
  %2639 = trunc i64 %2638 to i8
  store i8 %2639, i8* %55, align 1
  store i8 0, i8* %56, align 1
  store i8 0, i8* %53, align 1
  store i64 %2629, i64* %2626, align 1
  store i64 0, i64* %2627, align 1
  %2640 = add i64 %382, 36
  store i64 %2640, i64* %3, align 8
  %2641 = load i64, i64* %2620, align 8
  store i64 %2641, i64* %RCX.i534, align 8
  %2642 = add i64 %2641, 8
  %2643 = add i64 %382, 41
  store i64 %2643, i64* %3, align 8
  %2644 = inttoptr i64 %2642 to i64*
  store i64 %2629, i64* %2644, align 8
  %2645 = load i64, i64* %RBP.i, align 8
  %2646 = add i64 %2645, -24
  %2647 = load i64, i64* %3, align 8
  %2648 = add i64 %2647, 4
  store i64 %2648, i64* %3, align 8
  %2649 = inttoptr i64 %2646 to i64*
  %2650 = load i64, i64* %2649, align 8
  store i64 %2650, i64* %RCX.i534, align 8
  %2651 = add i64 %2645, -52
  %2652 = add i64 %2647, 7
  store i64 %2652, i64* %3, align 8
  %2653 = inttoptr i64 %2651 to i32*
  %2654 = load i32, i32* %2653, align 4
  %2655 = add i32 %2654, 1
  %2656 = zext i32 %2655 to i64
  store i64 %2656, i64* %RDX.i1610, align 8
  %2657 = icmp eq i32 %2654, -1
  %2658 = icmp eq i32 %2655, 0
  %2659 = or i1 %2657, %2658
  %2660 = zext i1 %2659 to i8
  store i8 %2660, i8* %51, align 1
  %2661 = and i32 %2655, 255
  %2662 = tail call i32 @llvm.ctpop.i32(i32 %2661)
  %2663 = trunc i32 %2662 to i8
  %2664 = and i8 %2663, 1
  %2665 = xor i8 %2664, 1
  store i8 %2665, i8* %52, align 1
  %2666 = xor i32 %2655, %2654
  %2667 = lshr i32 %2666, 4
  %2668 = trunc i32 %2667 to i8
  %2669 = and i8 %2668, 1
  store i8 %2669, i8* %53, align 1
  %2670 = zext i1 %2658 to i8
  store i8 %2670, i8* %54, align 1
  %2671 = lshr i32 %2655, 31
  %2672 = trunc i32 %2671 to i8
  store i8 %2672, i8* %55, align 1
  %2673 = lshr i32 %2654, 31
  %2674 = xor i32 %2671, %2673
  %2675 = add nuw nsw i32 %2674, %2671
  %2676 = icmp eq i32 %2675, 2
  %2677 = zext i1 %2676 to i8
  store i8 %2677, i8* %56, align 1
  %2678 = sext i32 %2655 to i64
  store i64 %2678, i64* %RSI.i1613, align 8
  %2679 = shl nsw i64 %2678, 3
  %2680 = add i64 %2650, %2679
  %2681 = add i64 %2647, 18
  store i64 %2681, i64* %3, align 8
  %2682 = inttoptr i64 %2680 to i64*
  %2683 = load i64, i64* %2682, align 8
  %2684 = load i64, i64* %RAX.i1594, align 8
  %2685 = xor i64 %2684, %2683
  store i64 %2685, i64* %RCX.i534, align 8
  store i8 0, i8* %51, align 1
  %2686 = trunc i64 %2685 to i32
  %2687 = and i32 %2686, 255
  %2688 = tail call i32 @llvm.ctpop.i32(i32 %2687)
  %2689 = trunc i32 %2688 to i8
  %2690 = and i8 %2689, 1
  %2691 = xor i8 %2690, 1
  store i8 %2691, i8* %52, align 1
  %2692 = icmp eq i64 %2685, 0
  %2693 = zext i1 %2692 to i8
  store i8 %2693, i8* %54, align 1
  %2694 = lshr i64 %2685, 63
  %2695 = trunc i64 %2694 to i8
  store i8 %2695, i8* %55, align 1
  store i8 0, i8* %56, align 1
  store i8 0, i8* %53, align 1
  store i64 %2685, i64* %2626, align 1
  store i64 0, i64* %2627, align 1
  %2696 = add i64 %2647, 35
  store i64 %2696, i64* %3, align 8
  %2697 = load i64, i64* %2649, align 8
  store i64 %2697, i64* %RAX.i1594, align 8
  %2698 = add i64 %2647, 38
  store i64 %2698, i64* %3, align 8
  %2699 = load i32, i32* %2653, align 4
  %2700 = add i32 %2699, 1
  %2701 = zext i32 %2700 to i64
  store i64 %2701, i64* %RDX.i1610, align 8
  %2702 = icmp eq i32 %2699, -1
  %2703 = icmp eq i32 %2700, 0
  %2704 = or i1 %2702, %2703
  %2705 = zext i1 %2704 to i8
  store i8 %2705, i8* %51, align 1
  %2706 = and i32 %2700, 255
  %2707 = tail call i32 @llvm.ctpop.i32(i32 %2706)
  %2708 = trunc i32 %2707 to i8
  %2709 = and i8 %2708, 1
  %2710 = xor i8 %2709, 1
  store i8 %2710, i8* %52, align 1
  %2711 = xor i32 %2700, %2699
  %2712 = lshr i32 %2711, 4
  %2713 = trunc i32 %2712 to i8
  %2714 = and i8 %2713, 1
  store i8 %2714, i8* %53, align 1
  %2715 = zext i1 %2703 to i8
  store i8 %2715, i8* %54, align 1
  %2716 = lshr i32 %2700, 31
  %2717 = trunc i32 %2716 to i8
  store i8 %2717, i8* %55, align 1
  %2718 = lshr i32 %2699, 31
  %2719 = xor i32 %2716, %2718
  %2720 = add nuw nsw i32 %2719, %2716
  %2721 = icmp eq i32 %2720, 2
  %2722 = zext i1 %2721 to i8
  store i8 %2722, i8* %56, align 1
  %2723 = sext i32 %2700 to i64
  store i64 %2723, i64* %RCX.i534, align 8
  %2724 = shl nsw i64 %2723, 3
  %2725 = add i64 %2697, %2724
  %2726 = add i64 %2647, 49
  store i64 %2726, i64* %3, align 8
  %2727 = inttoptr i64 %2725 to i64*
  store i64 %2685, i64* %2727, align 8
  %2728 = load i64, i64* %RBP.i, align 8
  %2729 = add i64 %2728, -36
  %2730 = load i64, i64* %3, align 8
  %2731 = add i64 %2730, 7
  store i64 %2731, i64* %3, align 8
  %2732 = inttoptr i64 %2729 to i32*
  store i32 1, i32* %2732, align 4
  %.pre40 = load i64, i64* %3, align 8
  br label %block_.L_40220c

block_.L_40220c:                                  ; preds = %block_.L_4023f9, %block_.L_4021ab
  %2733 = phi i64 [ %3864, %block_.L_4023f9 ], [ %.pre40, %block_.L_4021ab ]
  %2734 = load i64, i64* %RBP.i, align 8
  %2735 = add i64 %2734, -36
  %2736 = add i64 %2733, 3
  store i64 %2736, i64* %3, align 8
  %2737 = inttoptr i64 %2735 to i32*
  %2738 = load i32, i32* %2737, align 4
  %2739 = zext i32 %2738 to i64
  store i64 %2739, i64* %RAX.i1594, align 8
  %2740 = add i64 %2734, -48
  %2741 = add i64 %2733, 6
  store i64 %2741, i64* %3, align 8
  %2742 = inttoptr i64 %2740 to i32*
  %2743 = load i32, i32* %2742, align 4
  %2744 = sub i32 %2738, %2743
  %2745 = icmp ult i32 %2738, %2743
  %2746 = zext i1 %2745 to i8
  store i8 %2746, i8* %51, align 1
  %2747 = and i32 %2744, 255
  %2748 = tail call i32 @llvm.ctpop.i32(i32 %2747)
  %2749 = trunc i32 %2748 to i8
  %2750 = and i8 %2749, 1
  %2751 = xor i8 %2750, 1
  store i8 %2751, i8* %52, align 1
  %2752 = xor i32 %2743, %2738
  %2753 = xor i32 %2752, %2744
  %2754 = lshr i32 %2753, 4
  %2755 = trunc i32 %2754 to i8
  %2756 = and i8 %2755, 1
  store i8 %2756, i8* %53, align 1
  %2757 = icmp eq i32 %2744, 0
  %2758 = zext i1 %2757 to i8
  store i8 %2758, i8* %54, align 1
  %2759 = lshr i32 %2744, 31
  %2760 = trunc i32 %2759 to i8
  store i8 %2760, i8* %55, align 1
  %2761 = lshr i32 %2738, 31
  %2762 = lshr i32 %2743, 31
  %2763 = xor i32 %2762, %2761
  %2764 = xor i32 %2759, %2761
  %2765 = add nuw nsw i32 %2764, %2763
  %2766 = icmp eq i32 %2765, 2
  %2767 = zext i1 %2766 to i8
  store i8 %2767, i8* %56, align 1
  %2768 = icmp ne i8 %2760, 0
  %2769 = xor i1 %2768, %2766
  %.v44 = select i1 %2769, i64 12, i64 641
  %2770 = add i64 %2733, %.v44
  store i64 %2770, i64* %3, align 8
  br i1 %2769, label %block_402218, label %block_.L_40248d

block_402218:                                     ; preds = %block_.L_40220c
  %2771 = add i64 %2734, -28
  %2772 = add i64 %2770, 7
  store i64 %2772, i64* %3, align 8
  %2773 = inttoptr i64 %2771 to i32*
  store i32 0, i32* %2773, align 4
  %.pre41 = load i64, i64* %3, align 8
  br label %block_.L_40221f

block_.L_40221f:                                  ; preds = %block_40222b, %block_402218
  %2774 = phi i64 [ %3588, %block_40222b ], [ %.pre41, %block_402218 ]
  %2775 = load i64, i64* %RBP.i, align 8
  %2776 = add i64 %2775, -28
  %2777 = add i64 %2774, 3
  store i64 %2777, i64* %3, align 8
  %2778 = inttoptr i64 %2776 to i32*
  %2779 = load i32, i32* %2778, align 4
  %2780 = zext i32 %2779 to i64
  store i64 %2780, i64* %RAX.i1594, align 8
  %2781 = add i64 %2775, -36
  %2782 = add i64 %2774, 6
  store i64 %2782, i64* %3, align 8
  %2783 = inttoptr i64 %2781 to i32*
  %2784 = load i32, i32* %2783, align 4
  %2785 = sub i32 %2779, %2784
  %2786 = icmp ult i32 %2779, %2784
  %2787 = zext i1 %2786 to i8
  store i8 %2787, i8* %51, align 1
  %2788 = and i32 %2785, 255
  %2789 = tail call i32 @llvm.ctpop.i32(i32 %2788)
  %2790 = trunc i32 %2789 to i8
  %2791 = and i8 %2790, 1
  %2792 = xor i8 %2791, 1
  store i8 %2792, i8* %52, align 1
  %2793 = xor i32 %2784, %2779
  %2794 = xor i32 %2793, %2785
  %2795 = lshr i32 %2794, 4
  %2796 = trunc i32 %2795 to i8
  %2797 = and i8 %2796, 1
  store i8 %2797, i8* %53, align 1
  %2798 = icmp eq i32 %2785, 0
  %2799 = zext i1 %2798 to i8
  store i8 %2799, i8* %54, align 1
  %2800 = lshr i32 %2785, 31
  %2801 = trunc i32 %2800 to i8
  store i8 %2801, i8* %55, align 1
  %2802 = lshr i32 %2779, 31
  %2803 = lshr i32 %2784, 31
  %2804 = xor i32 %2803, %2802
  %2805 = xor i32 %2800, %2802
  %2806 = add nuw nsw i32 %2805, %2804
  %2807 = icmp eq i32 %2806, 2
  %2808 = zext i1 %2807 to i8
  store i8 %2808, i8* %56, align 1
  %2809 = icmp ne i8 %2801, 0
  %2810 = xor i1 %2809, %2807
  %.v45 = select i1 %2810, i64 12, i64 474
  %2811 = add i64 %2774, %.v45
  %2812 = add i64 %2811, 10
  store i64 %2812, i64* %3, align 8
  store i64 -9223372036854775808, i64* %RAX.i1594, align 8
  %2813 = add i64 %2811, 13
  store i64 %2813, i64* %3, align 8
  br i1 %2810, label %block_40222b, label %block_.L_4023f9

block_40222b:                                     ; preds = %block_.L_40221f
  %2814 = load i32, i32* %2778, align 4
  %2815 = shl i32 %2814, 1
  %2816 = icmp slt i32 %2814, 0
  %2817 = icmp slt i32 %2815, 0
  %2818 = xor i1 %2816, %2817
  %2819 = zext i32 %2815 to i64
  store i64 %2819, i64* %RCX.i534, align 8
  %.lobit14 = lshr i32 %2814, 31
  %2820 = trunc i32 %.lobit14 to i8
  store i8 %2820, i8* %51, align 1
  %2821 = and i32 %2815, 254
  %2822 = tail call i32 @llvm.ctpop.i32(i32 %2821)
  %2823 = trunc i32 %2822 to i8
  %2824 = and i8 %2823, 1
  %2825 = xor i8 %2824, 1
  store i8 %2825, i8* %52, align 1
  store i8 0, i8* %53, align 1
  %2826 = icmp eq i32 %2815, 0
  %2827 = zext i1 %2826 to i8
  store i8 %2827, i8* %54, align 1
  %2828 = lshr i32 %2814, 30
  %2829 = trunc i32 %2828 to i8
  %2830 = and i8 %2829, 1
  store i8 %2830, i8* %55, align 1
  %2831 = zext i1 %2818 to i8
  store i8 %2831, i8* %56, align 1
  %2832 = add i64 %2775, -16
  %2833 = add i64 %2811, 19
  store i64 %2833, i64* %3, align 8
  %2834 = inttoptr i64 %2832 to i64*
  %2835 = load i64, i64* %2834, align 8
  store i64 %2835, i64* %RDX.i1610, align 8
  %2836 = add i64 %2811, 23
  store i64 %2836, i64* %3, align 8
  %2837 = load i32, i32* %2783, align 4
  %2838 = sext i32 %2837 to i64
  store i64 %2838, i64* %RSI.i1613, align 8
  %2839 = shl nsw i64 %2838, 2
  %2840 = add i64 %2835, %2839
  %2841 = add i64 %2811, 26
  store i64 %2841, i64* %3, align 8
  %2842 = inttoptr i64 %2840 to i32*
  %2843 = load i32, i32* %2842, align 4
  %2844 = add i32 %2843, %2815
  %2845 = zext i32 %2844 to i64
  store i64 %2845, i64* %RCX.i534, align 8
  %2846 = icmp ult i32 %2844, %2815
  %2847 = icmp ult i32 %2844, %2843
  %2848 = or i1 %2846, %2847
  %2849 = zext i1 %2848 to i8
  store i8 %2849, i8* %51, align 1
  %2850 = and i32 %2844, 255
  %2851 = tail call i32 @llvm.ctpop.i32(i32 %2850)
  %2852 = trunc i32 %2851 to i8
  %2853 = and i8 %2852, 1
  %2854 = xor i8 %2853, 1
  store i8 %2854, i8* %52, align 1
  %2855 = xor i32 %2843, %2815
  %2856 = xor i32 %2855, %2844
  %2857 = lshr i32 %2856, 4
  %2858 = trunc i32 %2857 to i8
  %2859 = and i8 %2858, 1
  store i8 %2859, i8* %53, align 1
  %2860 = icmp eq i32 %2844, 0
  %2861 = zext i1 %2860 to i8
  store i8 %2861, i8* %54, align 1
  %2862 = lshr i32 %2844, 31
  %2863 = trunc i32 %2862 to i8
  store i8 %2863, i8* %55, align 1
  %2864 = lshr i32 %2814, 30
  %2865 = and i32 %2864, 1
  %2866 = lshr i32 %2843, 31
  %2867 = xor i32 %2862, %2865
  %2868 = xor i32 %2862, %2866
  %2869 = add nuw nsw i32 %2867, %2868
  %2870 = icmp eq i32 %2869, 2
  %2871 = zext i1 %2870 to i8
  store i8 %2871, i8* %56, align 1
  %2872 = add i64 %2775, -32
  %2873 = add i64 %2811, 29
  store i64 %2873, i64* %3, align 8
  %2874 = inttoptr i64 %2872 to i32*
  store i32 %2844, i32* %2874, align 4
  %2875 = load i64, i64* %RBP.i, align 8
  %2876 = add i64 %2875, -36
  %2877 = load i64, i64* %3, align 8
  %2878 = add i64 %2877, 3
  store i64 %2878, i64* %3, align 8
  %2879 = inttoptr i64 %2876 to i32*
  %2880 = load i32, i32* %2879, align 4
  %2881 = shl i32 %2880, 1
  %2882 = icmp slt i32 %2880, 0
  %2883 = icmp slt i32 %2881, 0
  %2884 = xor i1 %2882, %2883
  %2885 = zext i32 %2881 to i64
  store i64 %2885, i64* %RCX.i534, align 8
  %.lobit15 = lshr i32 %2880, 31
  %2886 = trunc i32 %.lobit15 to i8
  store i8 %2886, i8* %51, align 1
  %2887 = and i32 %2881, 254
  %2888 = tail call i32 @llvm.ctpop.i32(i32 %2887)
  %2889 = trunc i32 %2888 to i8
  %2890 = and i8 %2889, 1
  %2891 = xor i8 %2890, 1
  store i8 %2891, i8* %52, align 1
  store i8 0, i8* %53, align 1
  %2892 = icmp eq i32 %2881, 0
  %2893 = zext i1 %2892 to i8
  store i8 %2893, i8* %54, align 1
  %2894 = lshr i32 %2880, 30
  %2895 = trunc i32 %2894 to i8
  %2896 = and i8 %2895, 1
  store i8 %2896, i8* %55, align 1
  %2897 = zext i1 %2884 to i8
  store i8 %2897, i8* %56, align 1
  %2898 = add i64 %2875, -16
  %2899 = add i64 %2877, 9
  store i64 %2899, i64* %3, align 8
  %2900 = inttoptr i64 %2898 to i64*
  %2901 = load i64, i64* %2900, align 8
  store i64 %2901, i64* %RDX.i1610, align 8
  %2902 = add i64 %2875, -28
  %2903 = add i64 %2877, 13
  store i64 %2903, i64* %3, align 8
  %2904 = inttoptr i64 %2902 to i32*
  %2905 = load i32, i32* %2904, align 4
  %2906 = sext i32 %2905 to i64
  store i64 %2906, i64* %RSI.i1613, align 8
  %2907 = shl nsw i64 %2906, 2
  %2908 = add i64 %2901, %2907
  %2909 = add i64 %2877, 16
  store i64 %2909, i64* %3, align 8
  %2910 = inttoptr i64 %2908 to i32*
  %2911 = load i32, i32* %2910, align 4
  %2912 = add i32 %2911, %2881
  %2913 = zext i32 %2912 to i64
  store i64 %2913, i64* %RCX.i534, align 8
  %2914 = icmp ult i32 %2912, %2881
  %2915 = icmp ult i32 %2912, %2911
  %2916 = or i1 %2914, %2915
  %2917 = zext i1 %2916 to i8
  store i8 %2917, i8* %51, align 1
  %2918 = and i32 %2912, 255
  %2919 = tail call i32 @llvm.ctpop.i32(i32 %2918)
  %2920 = trunc i32 %2919 to i8
  %2921 = and i8 %2920, 1
  %2922 = xor i8 %2921, 1
  store i8 %2922, i8* %52, align 1
  %2923 = xor i32 %2911, %2881
  %2924 = xor i32 %2923, %2912
  %2925 = lshr i32 %2924, 4
  %2926 = trunc i32 %2925 to i8
  %2927 = and i8 %2926, 1
  store i8 %2927, i8* %53, align 1
  %2928 = icmp eq i32 %2912, 0
  %2929 = zext i1 %2928 to i8
  store i8 %2929, i8* %54, align 1
  %2930 = lshr i32 %2912, 31
  %2931 = trunc i32 %2930 to i8
  store i8 %2931, i8* %55, align 1
  %2932 = lshr i32 %2880, 30
  %2933 = and i32 %2932, 1
  %2934 = lshr i32 %2911, 31
  %2935 = xor i32 %2930, %2933
  %2936 = xor i32 %2930, %2934
  %2937 = add nuw nsw i32 %2935, %2936
  %2938 = icmp eq i32 %2937, 2
  %2939 = zext i1 %2938 to i8
  store i8 %2939, i8* %56, align 1
  %2940 = add i64 %2875, -40
  %2941 = add i64 %2877, 19
  store i64 %2941, i64* %3, align 8
  %2942 = inttoptr i64 %2940 to i32*
  store i32 %2912, i32* %2942, align 4
  %2943 = load i64, i64* %RBP.i, align 8
  %2944 = add i64 %2943, -24
  %2945 = load i64, i64* %3, align 8
  %2946 = add i64 %2945, 4
  store i64 %2946, i64* %3, align 8
  %2947 = inttoptr i64 %2944 to i64*
  %2948 = load i64, i64* %2947, align 8
  store i64 %2948, i64* %RDX.i1610, align 8
  %2949 = add i64 %2943, -32
  %2950 = add i64 %2945, 8
  store i64 %2950, i64* %3, align 8
  %2951 = inttoptr i64 %2949 to i32*
  %2952 = load i32, i32* %2951, align 4
  %2953 = sext i32 %2952 to i64
  store i64 %2953, i64* %RSI.i1613, align 8
  %2954 = shl nsw i64 %2953, 3
  %2955 = add i64 %2954, %2948
  %2956 = add i64 %2945, 13
  store i64 %2956, i64* %3, align 8
  %2957 = inttoptr i64 %2955 to i64*
  %2958 = load i64, i64* %2957, align 8
  store i64 %2958, i64* %2626, align 1
  store double 0.000000e+00, double* %2628, align 1
  %2959 = add i64 %2943, -64
  %2960 = add i64 %2945, 18
  store i64 %2960, i64* %3, align 8
  %2961 = inttoptr i64 %2959 to i64*
  store i64 %2958, i64* %2961, align 8
  %2962 = load i64, i64* %RBP.i, align 8
  %2963 = add i64 %2962, -24
  %2964 = load i64, i64* %3, align 8
  %2965 = add i64 %2964, 4
  store i64 %2965, i64* %3, align 8
  %2966 = inttoptr i64 %2963 to i64*
  %2967 = load i64, i64* %2966, align 8
  store i64 %2967, i64* %RDX.i1610, align 8
  %2968 = add i64 %2962, -32
  %2969 = add i64 %2964, 7
  store i64 %2969, i64* %3, align 8
  %2970 = inttoptr i64 %2968 to i32*
  %2971 = load i32, i32* %2970, align 4
  %2972 = add i32 %2971, 1
  %2973 = zext i32 %2972 to i64
  store i64 %2973, i64* %RCX.i534, align 8
  %2974 = icmp eq i32 %2971, -1
  %2975 = icmp eq i32 %2972, 0
  %2976 = or i1 %2974, %2975
  %2977 = zext i1 %2976 to i8
  store i8 %2977, i8* %51, align 1
  %2978 = and i32 %2972, 255
  %2979 = tail call i32 @llvm.ctpop.i32(i32 %2978)
  %2980 = trunc i32 %2979 to i8
  %2981 = and i8 %2980, 1
  %2982 = xor i8 %2981, 1
  store i8 %2982, i8* %52, align 1
  %2983 = xor i32 %2972, %2971
  %2984 = lshr i32 %2983, 4
  %2985 = trunc i32 %2984 to i8
  %2986 = and i8 %2985, 1
  store i8 %2986, i8* %53, align 1
  %2987 = zext i1 %2975 to i8
  store i8 %2987, i8* %54, align 1
  %2988 = lshr i32 %2972, 31
  %2989 = trunc i32 %2988 to i8
  store i8 %2989, i8* %55, align 1
  %2990 = lshr i32 %2971, 31
  %2991 = xor i32 %2988, %2990
  %2992 = add nuw nsw i32 %2991, %2988
  %2993 = icmp eq i32 %2992, 2
  %2994 = zext i1 %2993 to i8
  store i8 %2994, i8* %56, align 1
  %2995 = sext i32 %2972 to i64
  store i64 %2995, i64* %RSI.i1613, align 8
  %2996 = shl nsw i64 %2995, 3
  %2997 = add i64 %2967, %2996
  %2998 = add i64 %2964, 18
  store i64 %2998, i64* %3, align 8
  %2999 = inttoptr i64 %2997 to i64*
  %3000 = load i64, i64* %2999, align 8
  %3001 = load i64, i64* %RAX.i1594, align 8
  %3002 = xor i64 %3001, %3000
  store i64 %3002, i64* %RDX.i1610, align 8
  store i8 0, i8* %51, align 1
  %3003 = trunc i64 %3002 to i32
  %3004 = and i32 %3003, 255
  %3005 = tail call i32 @llvm.ctpop.i32(i32 %3004)
  %3006 = trunc i32 %3005 to i8
  %3007 = and i8 %3006, 1
  %3008 = xor i8 %3007, 1
  store i8 %3008, i8* %52, align 1
  %3009 = icmp eq i64 %3002, 0
  %3010 = zext i1 %3009 to i8
  store i8 %3010, i8* %54, align 1
  %3011 = lshr i64 %3002, 63
  %3012 = trunc i64 %3011 to i8
  store i8 %3012, i8* %55, align 1
  store i8 0, i8* %56, align 1
  store i8 0, i8* %53, align 1
  store i64 %3002, i64* %2626, align 1
  store i64 0, i64* %2627, align 1
  %3013 = add i64 %2962, -72
  %3014 = add i64 %2964, 36
  store i64 %3014, i64* %3, align 8
  %3015 = inttoptr i64 %3013 to i64*
  store i64 %3002, i64* %3015, align 8
  %3016 = load i64, i64* %RBP.i, align 8
  %3017 = add i64 %3016, -24
  %3018 = load i64, i64* %3, align 8
  %3019 = add i64 %3018, 4
  store i64 %3019, i64* %3, align 8
  %3020 = inttoptr i64 %3017 to i64*
  %3021 = load i64, i64* %3020, align 8
  store i64 %3021, i64* %RDX.i1610, align 8
  %3022 = add i64 %3016, -40
  %3023 = add i64 %3018, 8
  store i64 %3023, i64* %3, align 8
  %3024 = inttoptr i64 %3022 to i32*
  %3025 = load i32, i32* %3024, align 4
  %3026 = sext i32 %3025 to i64
  store i64 %3026, i64* %RSI.i1613, align 8
  %3027 = shl nsw i64 %3026, 3
  %3028 = add i64 %3027, %3021
  %3029 = add i64 %3018, 13
  store i64 %3029, i64* %3, align 8
  %3030 = inttoptr i64 %3028 to i64*
  %3031 = load i64, i64* %3030, align 8
  store i64 %3031, i64* %2626, align 1
  store double 0.000000e+00, double* %2628, align 1
  %3032 = add i64 %3016, -80
  %3033 = add i64 %3018, 18
  store i64 %3033, i64* %3, align 8
  %3034 = inttoptr i64 %3032 to i64*
  store i64 %3031, i64* %3034, align 8
  %3035 = load i64, i64* %RBP.i, align 8
  %3036 = add i64 %3035, -24
  %3037 = load i64, i64* %3, align 8
  %3038 = add i64 %3037, 4
  store i64 %3038, i64* %3, align 8
  %3039 = inttoptr i64 %3036 to i64*
  %3040 = load i64, i64* %3039, align 8
  store i64 %3040, i64* %RDX.i1610, align 8
  %3041 = add i64 %3035, -40
  %3042 = add i64 %3037, 7
  store i64 %3042, i64* %3, align 8
  %3043 = inttoptr i64 %3041 to i32*
  %3044 = load i32, i32* %3043, align 4
  %3045 = add i32 %3044, 1
  %3046 = zext i32 %3045 to i64
  store i64 %3046, i64* %RCX.i534, align 8
  %3047 = icmp eq i32 %3044, -1
  %3048 = icmp eq i32 %3045, 0
  %3049 = or i1 %3047, %3048
  %3050 = zext i1 %3049 to i8
  store i8 %3050, i8* %51, align 1
  %3051 = and i32 %3045, 255
  %3052 = tail call i32 @llvm.ctpop.i32(i32 %3051)
  %3053 = trunc i32 %3052 to i8
  %3054 = and i8 %3053, 1
  %3055 = xor i8 %3054, 1
  store i8 %3055, i8* %52, align 1
  %3056 = xor i32 %3045, %3044
  %3057 = lshr i32 %3056, 4
  %3058 = trunc i32 %3057 to i8
  %3059 = and i8 %3058, 1
  store i8 %3059, i8* %53, align 1
  %3060 = zext i1 %3048 to i8
  store i8 %3060, i8* %54, align 1
  %3061 = lshr i32 %3045, 31
  %3062 = trunc i32 %3061 to i8
  store i8 %3062, i8* %55, align 1
  %3063 = lshr i32 %3044, 31
  %3064 = xor i32 %3061, %3063
  %3065 = add nuw nsw i32 %3064, %3061
  %3066 = icmp eq i32 %3065, 2
  %3067 = zext i1 %3066 to i8
  store i8 %3067, i8* %56, align 1
  %3068 = sext i32 %3045 to i64
  store i64 %3068, i64* %RSI.i1613, align 8
  %3069 = shl nsw i64 %3068, 3
  %3070 = add i64 %3040, %3069
  %3071 = add i64 %3037, 18
  store i64 %3071, i64* %3, align 8
  %3072 = inttoptr i64 %3070 to i64*
  %3073 = load i64, i64* %3072, align 8
  %3074 = load i64, i64* %RAX.i1594, align 8
  %3075 = xor i64 %3074, %3073
  store i64 %3075, i64* %RDX.i1610, align 8
  store i8 0, i8* %51, align 1
  %3076 = trunc i64 %3075 to i32
  %3077 = and i32 %3076, 255
  %3078 = tail call i32 @llvm.ctpop.i32(i32 %3077)
  %3079 = trunc i32 %3078 to i8
  %3080 = and i8 %3079, 1
  %3081 = xor i8 %3080, 1
  store i8 %3081, i8* %52, align 1
  %3082 = icmp eq i64 %3075, 0
  %3083 = zext i1 %3082 to i8
  store i8 %3083, i8* %54, align 1
  %3084 = lshr i64 %3075, 63
  %3085 = trunc i64 %3084 to i8
  store i8 %3085, i8* %55, align 1
  store i8 0, i8* %56, align 1
  store i8 0, i8* %53, align 1
  store i64 %3075, i64* %2626, align 1
  store i64 0, i64* %2627, align 1
  %3086 = add i64 %3035, -88
  %3087 = add i64 %3037, 36
  store i64 %3087, i64* %3, align 8
  %3088 = inttoptr i64 %3086 to i64*
  store i64 %3075, i64* %3088, align 8
  %3089 = load i64, i64* %RBP.i, align 8
  %3090 = add i64 %3089, -80
  %3091 = load i64, i64* %3, align 8
  %3092 = add i64 %3091, 5
  store i64 %3092, i64* %3, align 8
  %3093 = inttoptr i64 %3090 to i64*
  %3094 = load i64, i64* %3093, align 8
  store i64 %3094, i64* %2626, align 1
  store double 0.000000e+00, double* %2628, align 1
  %3095 = add i64 %3089, -24
  %3096 = add i64 %3091, 9
  store i64 %3096, i64* %3, align 8
  %3097 = inttoptr i64 %3095 to i64*
  %3098 = load i64, i64* %3097, align 8
  store i64 %3098, i64* %RDX.i1610, align 8
  %3099 = add i64 %3089, -32
  %3100 = add i64 %3091, 13
  store i64 %3100, i64* %3, align 8
  %3101 = inttoptr i64 %3099 to i32*
  %3102 = load i32, i32* %3101, align 4
  %3103 = sext i32 %3102 to i64
  store i64 %3103, i64* %RSI.i1613, align 8
  %3104 = shl nsw i64 %3103, 3
  %3105 = add i64 %3104, %3098
  %3106 = add i64 %3091, 18
  store i64 %3106, i64* %3, align 8
  %3107 = inttoptr i64 %3105 to i64*
  store i64 %3094, i64* %3107, align 8
  %3108 = load i64, i64* %RBP.i, align 8
  %3109 = add i64 %3108, -88
  %3110 = load i64, i64* %3, align 8
  %3111 = add i64 %3110, 5
  store i64 %3111, i64* %3, align 8
  %3112 = inttoptr i64 %3109 to i64*
  %3113 = load i64, i64* %3112, align 8
  store i64 %3113, i64* %2626, align 1
  store double 0.000000e+00, double* %2628, align 1
  %3114 = add i64 %3108, -24
  %3115 = add i64 %3110, 9
  store i64 %3115, i64* %3, align 8
  %3116 = inttoptr i64 %3114 to i64*
  %3117 = load i64, i64* %3116, align 8
  store i64 %3117, i64* %RDX.i1610, align 8
  %3118 = add i64 %3108, -32
  %3119 = add i64 %3110, 12
  store i64 %3119, i64* %3, align 8
  %3120 = inttoptr i64 %3118 to i32*
  %3121 = load i32, i32* %3120, align 4
  %3122 = add i32 %3121, 1
  %3123 = zext i32 %3122 to i64
  store i64 %3123, i64* %RCX.i534, align 8
  %3124 = icmp eq i32 %3121, -1
  %3125 = icmp eq i32 %3122, 0
  %3126 = or i1 %3124, %3125
  %3127 = zext i1 %3126 to i8
  store i8 %3127, i8* %51, align 1
  %3128 = and i32 %3122, 255
  %3129 = tail call i32 @llvm.ctpop.i32(i32 %3128)
  %3130 = trunc i32 %3129 to i8
  %3131 = and i8 %3130, 1
  %3132 = xor i8 %3131, 1
  store i8 %3132, i8* %52, align 1
  %3133 = xor i32 %3122, %3121
  %3134 = lshr i32 %3133, 4
  %3135 = trunc i32 %3134 to i8
  %3136 = and i8 %3135, 1
  store i8 %3136, i8* %53, align 1
  %3137 = zext i1 %3125 to i8
  store i8 %3137, i8* %54, align 1
  %3138 = lshr i32 %3122, 31
  %3139 = trunc i32 %3138 to i8
  store i8 %3139, i8* %55, align 1
  %3140 = lshr i32 %3121, 31
  %3141 = xor i32 %3138, %3140
  %3142 = add nuw nsw i32 %3141, %3138
  %3143 = icmp eq i32 %3142, 2
  %3144 = zext i1 %3143 to i8
  store i8 %3144, i8* %56, align 1
  %3145 = sext i32 %3122 to i64
  store i64 %3145, i64* %RSI.i1613, align 8
  %3146 = shl nsw i64 %3145, 3
  %3147 = add i64 %3117, %3146
  %3148 = add i64 %3110, 23
  store i64 %3148, i64* %3, align 8
  %3149 = inttoptr i64 %3147 to i64*
  store i64 %3113, i64* %3149, align 8
  %3150 = load i64, i64* %RBP.i, align 8
  %3151 = add i64 %3150, -64
  %3152 = load i64, i64* %3, align 8
  %3153 = add i64 %3152, 5
  store i64 %3153, i64* %3, align 8
  %3154 = inttoptr i64 %3151 to i64*
  %3155 = load i64, i64* %3154, align 8
  store i64 %3155, i64* %2626, align 1
  store double 0.000000e+00, double* %2628, align 1
  %3156 = add i64 %3150, -24
  %3157 = add i64 %3152, 9
  store i64 %3157, i64* %3, align 8
  %3158 = inttoptr i64 %3156 to i64*
  %3159 = load i64, i64* %3158, align 8
  store i64 %3159, i64* %RDX.i1610, align 8
  %3160 = add i64 %3150, -40
  %3161 = add i64 %3152, 13
  store i64 %3161, i64* %3, align 8
  %3162 = inttoptr i64 %3160 to i32*
  %3163 = load i32, i32* %3162, align 4
  %3164 = sext i32 %3163 to i64
  store i64 %3164, i64* %RSI.i1613, align 8
  %3165 = shl nsw i64 %3164, 3
  %3166 = add i64 %3165, %3159
  %3167 = add i64 %3152, 18
  store i64 %3167, i64* %3, align 8
  %3168 = inttoptr i64 %3166 to i64*
  store i64 %3155, i64* %3168, align 8
  %3169 = load i64, i64* %RBP.i, align 8
  %3170 = add i64 %3169, -72
  %3171 = load i64, i64* %3, align 8
  %3172 = add i64 %3171, 5
  store i64 %3172, i64* %3, align 8
  %3173 = inttoptr i64 %3170 to i64*
  %3174 = load i64, i64* %3173, align 8
  store i64 %3174, i64* %2626, align 1
  store double 0.000000e+00, double* %2628, align 1
  %3175 = add i64 %3169, -24
  %3176 = add i64 %3171, 9
  store i64 %3176, i64* %3, align 8
  %3177 = inttoptr i64 %3175 to i64*
  %3178 = load i64, i64* %3177, align 8
  store i64 %3178, i64* %RDX.i1610, align 8
  %3179 = add i64 %3169, -40
  %3180 = add i64 %3171, 12
  store i64 %3180, i64* %3, align 8
  %3181 = inttoptr i64 %3179 to i32*
  %3182 = load i32, i32* %3181, align 4
  %3183 = add i32 %3182, 1
  %3184 = zext i32 %3183 to i64
  store i64 %3184, i64* %RCX.i534, align 8
  %3185 = icmp eq i32 %3182, -1
  %3186 = icmp eq i32 %3183, 0
  %3187 = or i1 %3185, %3186
  %3188 = zext i1 %3187 to i8
  store i8 %3188, i8* %51, align 1
  %3189 = and i32 %3183, 255
  %3190 = tail call i32 @llvm.ctpop.i32(i32 %3189)
  %3191 = trunc i32 %3190 to i8
  %3192 = and i8 %3191, 1
  %3193 = xor i8 %3192, 1
  store i8 %3193, i8* %52, align 1
  %3194 = xor i32 %3183, %3182
  %3195 = lshr i32 %3194, 4
  %3196 = trunc i32 %3195 to i8
  %3197 = and i8 %3196, 1
  store i8 %3197, i8* %53, align 1
  %3198 = zext i1 %3186 to i8
  store i8 %3198, i8* %54, align 1
  %3199 = lshr i32 %3183, 31
  %3200 = trunc i32 %3199 to i8
  store i8 %3200, i8* %55, align 1
  %3201 = lshr i32 %3182, 31
  %3202 = xor i32 %3199, %3201
  %3203 = add nuw nsw i32 %3202, %3199
  %3204 = icmp eq i32 %3203, 2
  %3205 = zext i1 %3204 to i8
  store i8 %3205, i8* %56, align 1
  %3206 = sext i32 %3183 to i64
  store i64 %3206, i64* %RSI.i1613, align 8
  %3207 = shl nsw i64 %3206, 3
  %3208 = add i64 %3178, %3207
  %3209 = add i64 %3171, 23
  store i64 %3209, i64* %3, align 8
  %3210 = inttoptr i64 %3208 to i64*
  store i64 %3174, i64* %3210, align 8
  %3211 = load i64, i64* %RBP.i, align 8
  %3212 = add i64 %3211, -52
  %3213 = load i64, i64* %3, align 8
  %3214 = add i64 %3213, 3
  store i64 %3214, i64* %3, align 8
  %3215 = inttoptr i64 %3212 to i32*
  %3216 = load i32, i32* %3215, align 4
  %3217 = zext i32 %3216 to i64
  store i64 %3217, i64* %RCX.i534, align 8
  %3218 = add i64 %3211, -32
  %3219 = add i64 %3213, 6
  store i64 %3219, i64* %3, align 8
  %3220 = inttoptr i64 %3218 to i32*
  %3221 = load i32, i32* %3220, align 4
  %3222 = add i32 %3221, %3216
  %3223 = zext i32 %3222 to i64
  store i64 %3223, i64* %RCX.i534, align 8
  %3224 = icmp ult i32 %3222, %3216
  %3225 = icmp ult i32 %3222, %3221
  %3226 = or i1 %3224, %3225
  %3227 = zext i1 %3226 to i8
  store i8 %3227, i8* %51, align 1
  %3228 = and i32 %3222, 255
  %3229 = tail call i32 @llvm.ctpop.i32(i32 %3228)
  %3230 = trunc i32 %3229 to i8
  %3231 = and i8 %3230, 1
  %3232 = xor i8 %3231, 1
  store i8 %3232, i8* %52, align 1
  %3233 = xor i32 %3221, %3216
  %3234 = xor i32 %3233, %3222
  %3235 = lshr i32 %3234, 4
  %3236 = trunc i32 %3235 to i8
  %3237 = and i8 %3236, 1
  store i8 %3237, i8* %53, align 1
  %3238 = icmp eq i32 %3222, 0
  %3239 = zext i1 %3238 to i8
  store i8 %3239, i8* %54, align 1
  %3240 = lshr i32 %3222, 31
  %3241 = trunc i32 %3240 to i8
  store i8 %3241, i8* %55, align 1
  %3242 = lshr i32 %3216, 31
  %3243 = lshr i32 %3221, 31
  %3244 = xor i32 %3240, %3242
  %3245 = xor i32 %3240, %3243
  %3246 = add nuw nsw i32 %3244, %3245
  %3247 = icmp eq i32 %3246, 2
  %3248 = zext i1 %3247 to i8
  store i8 %3248, i8* %56, align 1
  %3249 = add i64 %3213, 9
  store i64 %3249, i64* %3, align 8
  store i32 %3222, i32* %3220, align 4
  %3250 = load i64, i64* %RBP.i, align 8
  %3251 = add i64 %3250, -52
  %3252 = load i64, i64* %3, align 8
  %3253 = add i64 %3252, 3
  store i64 %3253, i64* %3, align 8
  %3254 = inttoptr i64 %3251 to i32*
  %3255 = load i32, i32* %3254, align 4
  %3256 = zext i32 %3255 to i64
  store i64 %3256, i64* %RCX.i534, align 8
  %3257 = add i64 %3250, -40
  %3258 = add i64 %3252, 6
  store i64 %3258, i64* %3, align 8
  %3259 = inttoptr i64 %3257 to i32*
  %3260 = load i32, i32* %3259, align 4
  %3261 = add i32 %3260, %3255
  %3262 = zext i32 %3261 to i64
  store i64 %3262, i64* %RCX.i534, align 8
  %3263 = icmp ult i32 %3261, %3255
  %3264 = icmp ult i32 %3261, %3260
  %3265 = or i1 %3263, %3264
  %3266 = zext i1 %3265 to i8
  store i8 %3266, i8* %51, align 1
  %3267 = and i32 %3261, 255
  %3268 = tail call i32 @llvm.ctpop.i32(i32 %3267)
  %3269 = trunc i32 %3268 to i8
  %3270 = and i8 %3269, 1
  %3271 = xor i8 %3270, 1
  store i8 %3271, i8* %52, align 1
  %3272 = xor i32 %3260, %3255
  %3273 = xor i32 %3272, %3261
  %3274 = lshr i32 %3273, 4
  %3275 = trunc i32 %3274 to i8
  %3276 = and i8 %3275, 1
  store i8 %3276, i8* %53, align 1
  %3277 = icmp eq i32 %3261, 0
  %3278 = zext i1 %3277 to i8
  store i8 %3278, i8* %54, align 1
  %3279 = lshr i32 %3261, 31
  %3280 = trunc i32 %3279 to i8
  store i8 %3280, i8* %55, align 1
  %3281 = lshr i32 %3255, 31
  %3282 = lshr i32 %3260, 31
  %3283 = xor i32 %3279, %3281
  %3284 = xor i32 %3279, %3282
  %3285 = add nuw nsw i32 %3283, %3284
  %3286 = icmp eq i32 %3285, 2
  %3287 = zext i1 %3286 to i8
  store i8 %3287, i8* %56, align 1
  %3288 = add i64 %3252, 9
  store i64 %3288, i64* %3, align 8
  store i32 %3261, i32* %3259, align 4
  %3289 = load i64, i64* %RBP.i, align 8
  %3290 = add i64 %3289, -24
  %3291 = load i64, i64* %3, align 8
  %3292 = add i64 %3291, 4
  store i64 %3292, i64* %3, align 8
  %3293 = inttoptr i64 %3290 to i64*
  %3294 = load i64, i64* %3293, align 8
  store i64 %3294, i64* %RDX.i1610, align 8
  %3295 = add i64 %3289, -32
  %3296 = add i64 %3291, 8
  store i64 %3296, i64* %3, align 8
  %3297 = inttoptr i64 %3295 to i32*
  %3298 = load i32, i32* %3297, align 4
  %3299 = sext i32 %3298 to i64
  store i64 %3299, i64* %RSI.i1613, align 8
  %3300 = shl nsw i64 %3299, 3
  %3301 = add i64 %3300, %3294
  %3302 = add i64 %3291, 13
  store i64 %3302, i64* %3, align 8
  %3303 = inttoptr i64 %3301 to i64*
  %3304 = load i64, i64* %3303, align 8
  store i64 %3304, i64* %2626, align 1
  store double 0.000000e+00, double* %2628, align 1
  %3305 = add i64 %3289, -64
  %3306 = add i64 %3291, 18
  store i64 %3306, i64* %3, align 8
  %3307 = inttoptr i64 %3305 to i64*
  store i64 %3304, i64* %3307, align 8
  %3308 = load i64, i64* %RBP.i, align 8
  %3309 = add i64 %3308, -24
  %3310 = load i64, i64* %3, align 8
  %3311 = add i64 %3310, 4
  store i64 %3311, i64* %3, align 8
  %3312 = inttoptr i64 %3309 to i64*
  %3313 = load i64, i64* %3312, align 8
  store i64 %3313, i64* %RDX.i1610, align 8
  %3314 = add i64 %3308, -32
  %3315 = add i64 %3310, 7
  store i64 %3315, i64* %3, align 8
  %3316 = inttoptr i64 %3314 to i32*
  %3317 = load i32, i32* %3316, align 4
  %3318 = add i32 %3317, 1
  %3319 = zext i32 %3318 to i64
  store i64 %3319, i64* %RCX.i534, align 8
  %3320 = icmp eq i32 %3317, -1
  %3321 = icmp eq i32 %3318, 0
  %3322 = or i1 %3320, %3321
  %3323 = zext i1 %3322 to i8
  store i8 %3323, i8* %51, align 1
  %3324 = and i32 %3318, 255
  %3325 = tail call i32 @llvm.ctpop.i32(i32 %3324)
  %3326 = trunc i32 %3325 to i8
  %3327 = and i8 %3326, 1
  %3328 = xor i8 %3327, 1
  store i8 %3328, i8* %52, align 1
  %3329 = xor i32 %3318, %3317
  %3330 = lshr i32 %3329, 4
  %3331 = trunc i32 %3330 to i8
  %3332 = and i8 %3331, 1
  store i8 %3332, i8* %53, align 1
  %3333 = zext i1 %3321 to i8
  store i8 %3333, i8* %54, align 1
  %3334 = lshr i32 %3318, 31
  %3335 = trunc i32 %3334 to i8
  store i8 %3335, i8* %55, align 1
  %3336 = lshr i32 %3317, 31
  %3337 = xor i32 %3334, %3336
  %3338 = add nuw nsw i32 %3337, %3334
  %3339 = icmp eq i32 %3338, 2
  %3340 = zext i1 %3339 to i8
  store i8 %3340, i8* %56, align 1
  %3341 = sext i32 %3318 to i64
  store i64 %3341, i64* %RSI.i1613, align 8
  %3342 = shl nsw i64 %3341, 3
  %3343 = add i64 %3313, %3342
  %3344 = add i64 %3310, 18
  store i64 %3344, i64* %3, align 8
  %3345 = inttoptr i64 %3343 to i64*
  %3346 = load i64, i64* %3345, align 8
  %3347 = load i64, i64* %RAX.i1594, align 8
  %3348 = xor i64 %3347, %3346
  store i64 %3348, i64* %RDX.i1610, align 8
  store i8 0, i8* %51, align 1
  %3349 = trunc i64 %3348 to i32
  %3350 = and i32 %3349, 255
  %3351 = tail call i32 @llvm.ctpop.i32(i32 %3350)
  %3352 = trunc i32 %3351 to i8
  %3353 = and i8 %3352, 1
  %3354 = xor i8 %3353, 1
  store i8 %3354, i8* %52, align 1
  %3355 = icmp eq i64 %3348, 0
  %3356 = zext i1 %3355 to i8
  store i8 %3356, i8* %54, align 1
  %3357 = lshr i64 %3348, 63
  %3358 = trunc i64 %3357 to i8
  store i8 %3358, i8* %55, align 1
  store i8 0, i8* %56, align 1
  store i8 0, i8* %53, align 1
  store i64 %3348, i64* %2626, align 1
  store i64 0, i64* %2627, align 1
  %3359 = add i64 %3308, -72
  %3360 = add i64 %3310, 36
  store i64 %3360, i64* %3, align 8
  %3361 = inttoptr i64 %3359 to i64*
  store i64 %3348, i64* %3361, align 8
  %3362 = load i64, i64* %RBP.i, align 8
  %3363 = add i64 %3362, -24
  %3364 = load i64, i64* %3, align 8
  %3365 = add i64 %3364, 4
  store i64 %3365, i64* %3, align 8
  %3366 = inttoptr i64 %3363 to i64*
  %3367 = load i64, i64* %3366, align 8
  store i64 %3367, i64* %RDX.i1610, align 8
  %3368 = add i64 %3362, -40
  %3369 = add i64 %3364, 8
  store i64 %3369, i64* %3, align 8
  %3370 = inttoptr i64 %3368 to i32*
  %3371 = load i32, i32* %3370, align 4
  %3372 = sext i32 %3371 to i64
  store i64 %3372, i64* %RSI.i1613, align 8
  %3373 = shl nsw i64 %3372, 3
  %3374 = add i64 %3373, %3367
  %3375 = add i64 %3364, 13
  store i64 %3375, i64* %3, align 8
  %3376 = inttoptr i64 %3374 to i64*
  %3377 = load i64, i64* %3376, align 8
  store i64 %3377, i64* %2626, align 1
  store double 0.000000e+00, double* %2628, align 1
  %3378 = add i64 %3362, -80
  %3379 = add i64 %3364, 18
  store i64 %3379, i64* %3, align 8
  %3380 = inttoptr i64 %3378 to i64*
  store i64 %3377, i64* %3380, align 8
  %3381 = load i64, i64* %RBP.i, align 8
  %3382 = add i64 %3381, -24
  %3383 = load i64, i64* %3, align 8
  %3384 = add i64 %3383, 4
  store i64 %3384, i64* %3, align 8
  %3385 = inttoptr i64 %3382 to i64*
  %3386 = load i64, i64* %3385, align 8
  store i64 %3386, i64* %RDX.i1610, align 8
  %3387 = add i64 %3381, -40
  %3388 = add i64 %3383, 7
  store i64 %3388, i64* %3, align 8
  %3389 = inttoptr i64 %3387 to i32*
  %3390 = load i32, i32* %3389, align 4
  %3391 = add i32 %3390, 1
  %3392 = zext i32 %3391 to i64
  store i64 %3392, i64* %RCX.i534, align 8
  %3393 = icmp eq i32 %3390, -1
  %3394 = icmp eq i32 %3391, 0
  %3395 = or i1 %3393, %3394
  %3396 = zext i1 %3395 to i8
  store i8 %3396, i8* %51, align 1
  %3397 = and i32 %3391, 255
  %3398 = tail call i32 @llvm.ctpop.i32(i32 %3397)
  %3399 = trunc i32 %3398 to i8
  %3400 = and i8 %3399, 1
  %3401 = xor i8 %3400, 1
  store i8 %3401, i8* %52, align 1
  %3402 = xor i32 %3391, %3390
  %3403 = lshr i32 %3402, 4
  %3404 = trunc i32 %3403 to i8
  %3405 = and i8 %3404, 1
  store i8 %3405, i8* %53, align 1
  %3406 = zext i1 %3394 to i8
  store i8 %3406, i8* %54, align 1
  %3407 = lshr i32 %3391, 31
  %3408 = trunc i32 %3407 to i8
  store i8 %3408, i8* %55, align 1
  %3409 = lshr i32 %3390, 31
  %3410 = xor i32 %3407, %3409
  %3411 = add nuw nsw i32 %3410, %3407
  %3412 = icmp eq i32 %3411, 2
  %3413 = zext i1 %3412 to i8
  store i8 %3413, i8* %56, align 1
  %3414 = sext i32 %3391 to i64
  store i64 %3414, i64* %RSI.i1613, align 8
  %3415 = shl nsw i64 %3414, 3
  %3416 = add i64 %3386, %3415
  %3417 = add i64 %3383, 18
  store i64 %3417, i64* %3, align 8
  %3418 = inttoptr i64 %3416 to i64*
  %3419 = load i64, i64* %3418, align 8
  %3420 = load i64, i64* %RAX.i1594, align 8
  %3421 = xor i64 %3420, %3419
  store i64 %3421, i64* %RDX.i1610, align 8
  store i8 0, i8* %51, align 1
  %3422 = trunc i64 %3421 to i32
  %3423 = and i32 %3422, 255
  %3424 = tail call i32 @llvm.ctpop.i32(i32 %3423)
  %3425 = trunc i32 %3424 to i8
  %3426 = and i8 %3425, 1
  %3427 = xor i8 %3426, 1
  store i8 %3427, i8* %52, align 1
  %3428 = icmp eq i64 %3421, 0
  %3429 = zext i1 %3428 to i8
  store i8 %3429, i8* %54, align 1
  %3430 = lshr i64 %3421, 63
  %3431 = trunc i64 %3430 to i8
  store i8 %3431, i8* %55, align 1
  store i8 0, i8* %56, align 1
  store i8 0, i8* %53, align 1
  store i64 %3421, i64* %2626, align 1
  store i64 0, i64* %2627, align 1
  %3432 = add i64 %3381, -88
  %3433 = add i64 %3383, 36
  store i64 %3433, i64* %3, align 8
  %3434 = inttoptr i64 %3432 to i64*
  store i64 %3421, i64* %3434, align 8
  %3435 = load i64, i64* %RBP.i, align 8
  %3436 = add i64 %3435, -80
  %3437 = load i64, i64* %3, align 8
  %3438 = add i64 %3437, 5
  store i64 %3438, i64* %3, align 8
  %3439 = inttoptr i64 %3436 to i64*
  %3440 = load i64, i64* %3439, align 8
  store i64 %3440, i64* %2626, align 1
  store double 0.000000e+00, double* %2628, align 1
  %3441 = add i64 %3435, -24
  %3442 = add i64 %3437, 9
  store i64 %3442, i64* %3, align 8
  %3443 = inttoptr i64 %3441 to i64*
  %3444 = load i64, i64* %3443, align 8
  store i64 %3444, i64* %RAX.i1594, align 8
  %3445 = add i64 %3435, -32
  %3446 = add i64 %3437, 13
  store i64 %3446, i64* %3, align 8
  %3447 = inttoptr i64 %3445 to i32*
  %3448 = load i32, i32* %3447, align 4
  %3449 = sext i32 %3448 to i64
  store i64 %3449, i64* %RDX.i1610, align 8
  %3450 = shl nsw i64 %3449, 3
  %3451 = add i64 %3450, %3444
  %3452 = add i64 %3437, 18
  store i64 %3452, i64* %3, align 8
  %3453 = inttoptr i64 %3451 to i64*
  store i64 %3440, i64* %3453, align 8
  %3454 = load i64, i64* %RBP.i, align 8
  %3455 = add i64 %3454, -88
  %3456 = load i64, i64* %3, align 8
  %3457 = add i64 %3456, 5
  store i64 %3457, i64* %3, align 8
  %3458 = inttoptr i64 %3455 to i64*
  %3459 = load i64, i64* %3458, align 8
  store i64 %3459, i64* %2626, align 1
  store double 0.000000e+00, double* %2628, align 1
  %3460 = add i64 %3454, -24
  %3461 = add i64 %3456, 9
  store i64 %3461, i64* %3, align 8
  %3462 = inttoptr i64 %3460 to i64*
  %3463 = load i64, i64* %3462, align 8
  store i64 %3463, i64* %RAX.i1594, align 8
  %3464 = add i64 %3454, -32
  %3465 = add i64 %3456, 12
  store i64 %3465, i64* %3, align 8
  %3466 = inttoptr i64 %3464 to i32*
  %3467 = load i32, i32* %3466, align 4
  %3468 = add i32 %3467, 1
  %3469 = zext i32 %3468 to i64
  store i64 %3469, i64* %RCX.i534, align 8
  %3470 = icmp eq i32 %3467, -1
  %3471 = icmp eq i32 %3468, 0
  %3472 = or i1 %3470, %3471
  %3473 = zext i1 %3472 to i8
  store i8 %3473, i8* %51, align 1
  %3474 = and i32 %3468, 255
  %3475 = tail call i32 @llvm.ctpop.i32(i32 %3474)
  %3476 = trunc i32 %3475 to i8
  %3477 = and i8 %3476, 1
  %3478 = xor i8 %3477, 1
  store i8 %3478, i8* %52, align 1
  %3479 = xor i32 %3468, %3467
  %3480 = lshr i32 %3479, 4
  %3481 = trunc i32 %3480 to i8
  %3482 = and i8 %3481, 1
  store i8 %3482, i8* %53, align 1
  %3483 = zext i1 %3471 to i8
  store i8 %3483, i8* %54, align 1
  %3484 = lshr i32 %3468, 31
  %3485 = trunc i32 %3484 to i8
  store i8 %3485, i8* %55, align 1
  %3486 = lshr i32 %3467, 31
  %3487 = xor i32 %3484, %3486
  %3488 = add nuw nsw i32 %3487, %3484
  %3489 = icmp eq i32 %3488, 2
  %3490 = zext i1 %3489 to i8
  store i8 %3490, i8* %56, align 1
  %3491 = sext i32 %3468 to i64
  store i64 %3491, i64* %RDX.i1610, align 8
  %3492 = shl nsw i64 %3491, 3
  %3493 = add i64 %3463, %3492
  %3494 = add i64 %3456, 23
  store i64 %3494, i64* %3, align 8
  %3495 = inttoptr i64 %3493 to i64*
  store i64 %3459, i64* %3495, align 8
  %3496 = load i64, i64* %RBP.i, align 8
  %3497 = add i64 %3496, -64
  %3498 = load i64, i64* %3, align 8
  %3499 = add i64 %3498, 5
  store i64 %3499, i64* %3, align 8
  %3500 = inttoptr i64 %3497 to i64*
  %3501 = load i64, i64* %3500, align 8
  store i64 %3501, i64* %2626, align 1
  store double 0.000000e+00, double* %2628, align 1
  %3502 = add i64 %3496, -24
  %3503 = add i64 %3498, 9
  store i64 %3503, i64* %3, align 8
  %3504 = inttoptr i64 %3502 to i64*
  %3505 = load i64, i64* %3504, align 8
  store i64 %3505, i64* %RAX.i1594, align 8
  %3506 = add i64 %3496, -40
  %3507 = add i64 %3498, 13
  store i64 %3507, i64* %3, align 8
  %3508 = inttoptr i64 %3506 to i32*
  %3509 = load i32, i32* %3508, align 4
  %3510 = sext i32 %3509 to i64
  store i64 %3510, i64* %RDX.i1610, align 8
  %3511 = shl nsw i64 %3510, 3
  %3512 = add i64 %3511, %3505
  %3513 = add i64 %3498, 18
  store i64 %3513, i64* %3, align 8
  %3514 = inttoptr i64 %3512 to i64*
  store i64 %3501, i64* %3514, align 8
  %3515 = load i64, i64* %RBP.i, align 8
  %3516 = add i64 %3515, -72
  %3517 = load i64, i64* %3, align 8
  %3518 = add i64 %3517, 5
  store i64 %3518, i64* %3, align 8
  %3519 = inttoptr i64 %3516 to i64*
  %3520 = load i64, i64* %3519, align 8
  store i64 %3520, i64* %2626, align 1
  store double 0.000000e+00, double* %2628, align 1
  %3521 = add i64 %3515, -24
  %3522 = add i64 %3517, 9
  store i64 %3522, i64* %3, align 8
  %3523 = inttoptr i64 %3521 to i64*
  %3524 = load i64, i64* %3523, align 8
  store i64 %3524, i64* %RAX.i1594, align 8
  %3525 = add i64 %3515, -40
  %3526 = add i64 %3517, 12
  store i64 %3526, i64* %3, align 8
  %3527 = inttoptr i64 %3525 to i32*
  %3528 = load i32, i32* %3527, align 4
  %3529 = add i32 %3528, 1
  %3530 = zext i32 %3529 to i64
  store i64 %3530, i64* %RCX.i534, align 8
  %3531 = icmp eq i32 %3528, -1
  %3532 = icmp eq i32 %3529, 0
  %3533 = or i1 %3531, %3532
  %3534 = zext i1 %3533 to i8
  store i8 %3534, i8* %51, align 1
  %3535 = and i32 %3529, 255
  %3536 = tail call i32 @llvm.ctpop.i32(i32 %3535)
  %3537 = trunc i32 %3536 to i8
  %3538 = and i8 %3537, 1
  %3539 = xor i8 %3538, 1
  store i8 %3539, i8* %52, align 1
  %3540 = xor i32 %3529, %3528
  %3541 = lshr i32 %3540, 4
  %3542 = trunc i32 %3541 to i8
  %3543 = and i8 %3542, 1
  store i8 %3543, i8* %53, align 1
  %3544 = zext i1 %3532 to i8
  store i8 %3544, i8* %54, align 1
  %3545 = lshr i32 %3529, 31
  %3546 = trunc i32 %3545 to i8
  store i8 %3546, i8* %55, align 1
  %3547 = lshr i32 %3528, 31
  %3548 = xor i32 %3545, %3547
  %3549 = add nuw nsw i32 %3548, %3545
  %3550 = icmp eq i32 %3549, 2
  %3551 = zext i1 %3550 to i8
  store i8 %3551, i8* %56, align 1
  %3552 = sext i32 %3529 to i64
  store i64 %3552, i64* %RDX.i1610, align 8
  %3553 = shl nsw i64 %3552, 3
  %3554 = add i64 %3524, %3553
  %3555 = add i64 %3517, 23
  store i64 %3555, i64* %3, align 8
  %3556 = inttoptr i64 %3554 to i64*
  store i64 %3520, i64* %3556, align 8
  %3557 = load i64, i64* %RBP.i, align 8
  %3558 = add i64 %3557, -28
  %3559 = load i64, i64* %3, align 8
  %3560 = add i64 %3559, 3
  store i64 %3560, i64* %3, align 8
  %3561 = inttoptr i64 %3558 to i32*
  %3562 = load i32, i32* %3561, align 4
  %3563 = add i32 %3562, 1
  %3564 = zext i32 %3563 to i64
  store i64 %3564, i64* %RAX.i1594, align 8
  %3565 = icmp eq i32 %3562, -1
  %3566 = icmp eq i32 %3563, 0
  %3567 = or i1 %3565, %3566
  %3568 = zext i1 %3567 to i8
  store i8 %3568, i8* %51, align 1
  %3569 = and i32 %3563, 255
  %3570 = tail call i32 @llvm.ctpop.i32(i32 %3569)
  %3571 = trunc i32 %3570 to i8
  %3572 = and i8 %3571, 1
  %3573 = xor i8 %3572, 1
  store i8 %3573, i8* %52, align 1
  %3574 = xor i32 %3563, %3562
  %3575 = lshr i32 %3574, 4
  %3576 = trunc i32 %3575 to i8
  %3577 = and i8 %3576, 1
  store i8 %3577, i8* %53, align 1
  %3578 = zext i1 %3566 to i8
  store i8 %3578, i8* %54, align 1
  %3579 = lshr i32 %3563, 31
  %3580 = trunc i32 %3579 to i8
  store i8 %3580, i8* %55, align 1
  %3581 = lshr i32 %3562, 31
  %3582 = xor i32 %3579, %3581
  %3583 = add nuw nsw i32 %3582, %3579
  %3584 = icmp eq i32 %3583, 2
  %3585 = zext i1 %3584 to i8
  store i8 %3585, i8* %56, align 1
  %3586 = add i64 %3559, 9
  store i64 %3586, i64* %3, align 8
  store i32 %3563, i32* %3561, align 4
  %3587 = load i64, i64* %3, align 8
  %3588 = add i64 %3587, -469
  store i64 %3588, i64* %3, align 8
  br label %block_.L_40221f

block_.L_4023f9:                                  ; preds = %block_.L_40221f
  %3589 = load i32, i32* %2783, align 4
  %3590 = shl i32 %3589, 1
  %3591 = icmp slt i32 %3589, 0
  %3592 = icmp slt i32 %3590, 0
  %3593 = xor i1 %3591, %3592
  %3594 = zext i32 %3590 to i64
  store i64 %3594, i64* %RCX.i534, align 8
  %.lobit16 = lshr i32 %3589, 31
  %3595 = trunc i32 %.lobit16 to i8
  store i8 %3595, i8* %51, align 1
  %3596 = and i32 %3590, 254
  %3597 = tail call i32 @llvm.ctpop.i32(i32 %3596)
  %3598 = trunc i32 %3597 to i8
  %3599 = and i8 %3598, 1
  %3600 = xor i8 %3599, 1
  store i8 %3600, i8* %52, align 1
  store i8 0, i8* %53, align 1
  %3601 = icmp eq i32 %3590, 0
  %3602 = zext i1 %3601 to i8
  store i8 %3602, i8* %54, align 1
  %3603 = lshr i32 %3589, 30
  %3604 = trunc i32 %3603 to i8
  %3605 = and i8 %3604, 1
  store i8 %3605, i8* %55, align 1
  %3606 = zext i1 %3593 to i8
  store i8 %3606, i8* %56, align 1
  %3607 = add i64 %2775, -16
  %3608 = add i64 %2811, 19
  store i64 %3608, i64* %3, align 8
  %3609 = inttoptr i64 %3607 to i64*
  %3610 = load i64, i64* %3609, align 8
  store i64 %3610, i64* %RDX.i1610, align 8
  %3611 = add i64 %2811, 23
  store i64 %3611, i64* %3, align 8
  %3612 = load i32, i32* %2783, align 4
  %3613 = sext i32 %3612 to i64
  store i64 %3613, i64* %RSI.i1613, align 8
  %3614 = shl nsw i64 %3613, 2
  %3615 = add i64 %3610, %3614
  %3616 = add i64 %2811, 26
  store i64 %3616, i64* %3, align 8
  %3617 = inttoptr i64 %3615 to i32*
  %3618 = load i32, i32* %3617, align 4
  %3619 = add i32 %3618, %3590
  %3620 = zext i32 %3619 to i64
  store i64 %3620, i64* %RCX.i534, align 8
  %3621 = icmp ult i32 %3619, %3590
  %3622 = icmp ult i32 %3619, %3618
  %3623 = or i1 %3621, %3622
  %3624 = zext i1 %3623 to i8
  store i8 %3624, i8* %51, align 1
  %3625 = and i32 %3619, 255
  %3626 = tail call i32 @llvm.ctpop.i32(i32 %3625)
  %3627 = trunc i32 %3626 to i8
  %3628 = and i8 %3627, 1
  %3629 = xor i8 %3628, 1
  store i8 %3629, i8* %52, align 1
  %3630 = xor i32 %3618, %3590
  %3631 = xor i32 %3630, %3619
  %3632 = lshr i32 %3631, 4
  %3633 = trunc i32 %3632 to i8
  %3634 = and i8 %3633, 1
  store i8 %3634, i8* %53, align 1
  %3635 = icmp eq i32 %3619, 0
  %3636 = zext i1 %3635 to i8
  store i8 %3636, i8* %54, align 1
  %3637 = lshr i32 %3619, 31
  %3638 = trunc i32 %3637 to i8
  store i8 %3638, i8* %55, align 1
  %3639 = lshr i32 %3589, 30
  %3640 = and i32 %3639, 1
  %3641 = lshr i32 %3618, 31
  %3642 = xor i32 %3637, %3640
  %3643 = xor i32 %3637, %3641
  %3644 = add nuw nsw i32 %3642, %3643
  %3645 = icmp eq i32 %3644, 2
  %3646 = zext i1 %3645 to i8
  store i8 %3646, i8* %56, align 1
  %3647 = add i64 %2775, -40
  %3648 = add i64 %2811, 29
  store i64 %3648, i64* %3, align 8
  %3649 = inttoptr i64 %3647 to i32*
  store i32 %3619, i32* %3649, align 4
  %3650 = load i64, i64* %RBP.i, align 8
  %3651 = add i64 %3650, -24
  %3652 = load i64, i64* %3, align 8
  %3653 = add i64 %3652, 4
  store i64 %3653, i64* %3, align 8
  %3654 = inttoptr i64 %3651 to i64*
  %3655 = load i64, i64* %3654, align 8
  store i64 %3655, i64* %RDX.i1610, align 8
  %3656 = add i64 %3650, -40
  %3657 = add i64 %3652, 7
  store i64 %3657, i64* %3, align 8
  %3658 = inttoptr i64 %3656 to i32*
  %3659 = load i32, i32* %3658, align 4
  %3660 = add i32 %3659, 1
  %3661 = zext i32 %3660 to i64
  store i64 %3661, i64* %RCX.i534, align 8
  %3662 = icmp eq i32 %3659, -1
  %3663 = icmp eq i32 %3660, 0
  %3664 = or i1 %3662, %3663
  %3665 = zext i1 %3664 to i8
  store i8 %3665, i8* %51, align 1
  %3666 = and i32 %3660, 255
  %3667 = tail call i32 @llvm.ctpop.i32(i32 %3666)
  %3668 = trunc i32 %3667 to i8
  %3669 = and i8 %3668, 1
  %3670 = xor i8 %3669, 1
  store i8 %3670, i8* %52, align 1
  %3671 = xor i32 %3660, %3659
  %3672 = lshr i32 %3671, 4
  %3673 = trunc i32 %3672 to i8
  %3674 = and i8 %3673, 1
  store i8 %3674, i8* %53, align 1
  %3675 = zext i1 %3663 to i8
  store i8 %3675, i8* %54, align 1
  %3676 = lshr i32 %3660, 31
  %3677 = trunc i32 %3676 to i8
  store i8 %3677, i8* %55, align 1
  %3678 = lshr i32 %3659, 31
  %3679 = xor i32 %3676, %3678
  %3680 = add nuw nsw i32 %3679, %3676
  %3681 = icmp eq i32 %3680, 2
  %3682 = zext i1 %3681 to i8
  store i8 %3682, i8* %56, align 1
  %3683 = sext i32 %3660 to i64
  store i64 %3683, i64* %RSI.i1613, align 8
  %3684 = shl nsw i64 %3683, 3
  %3685 = add i64 %3655, %3684
  %3686 = add i64 %3652, 18
  store i64 %3686, i64* %3, align 8
  %3687 = inttoptr i64 %3685 to i64*
  %3688 = load i64, i64* %3687, align 8
  %3689 = load i64, i64* %RAX.i1594, align 8
  %3690 = xor i64 %3689, %3688
  store i64 %3690, i64* %RDX.i1610, align 8
  store i8 0, i8* %51, align 1
  %3691 = trunc i64 %3690 to i32
  %3692 = and i32 %3691, 255
  %3693 = tail call i32 @llvm.ctpop.i32(i32 %3692)
  %3694 = trunc i32 %3693 to i8
  %3695 = and i8 %3694, 1
  %3696 = xor i8 %3695, 1
  store i8 %3696, i8* %52, align 1
  %3697 = icmp eq i64 %3690, 0
  %3698 = zext i1 %3697 to i8
  store i8 %3698, i8* %54, align 1
  %3699 = lshr i64 %3690, 63
  %3700 = trunc i64 %3699 to i8
  store i8 %3700, i8* %55, align 1
  store i8 0, i8* %56, align 1
  store i8 0, i8* %53, align 1
  store i64 %3690, i64* %2626, align 1
  store i64 0, i64* %2627, align 1
  %3701 = add i64 %3652, 35
  store i64 %3701, i64* %3, align 8
  %3702 = load i64, i64* %3654, align 8
  store i64 %3702, i64* %RDX.i1610, align 8
  %3703 = add i64 %3652, 38
  store i64 %3703, i64* %3, align 8
  %3704 = load i32, i32* %3658, align 4
  %3705 = add i32 %3704, 1
  %3706 = zext i32 %3705 to i64
  store i64 %3706, i64* %RCX.i534, align 8
  %3707 = icmp eq i32 %3704, -1
  %3708 = icmp eq i32 %3705, 0
  %3709 = or i1 %3707, %3708
  %3710 = zext i1 %3709 to i8
  store i8 %3710, i8* %51, align 1
  %3711 = and i32 %3705, 255
  %3712 = tail call i32 @llvm.ctpop.i32(i32 %3711)
  %3713 = trunc i32 %3712 to i8
  %3714 = and i8 %3713, 1
  %3715 = xor i8 %3714, 1
  store i8 %3715, i8* %52, align 1
  %3716 = xor i32 %3705, %3704
  %3717 = lshr i32 %3716, 4
  %3718 = trunc i32 %3717 to i8
  %3719 = and i8 %3718, 1
  store i8 %3719, i8* %53, align 1
  %3720 = zext i1 %3708 to i8
  store i8 %3720, i8* %54, align 1
  %3721 = lshr i32 %3705, 31
  %3722 = trunc i32 %3721 to i8
  store i8 %3722, i8* %55, align 1
  %3723 = lshr i32 %3704, 31
  %3724 = xor i32 %3721, %3723
  %3725 = add nuw nsw i32 %3724, %3721
  %3726 = icmp eq i32 %3725, 2
  %3727 = zext i1 %3726 to i8
  store i8 %3727, i8* %56, align 1
  %3728 = sext i32 %3705 to i64
  store i64 %3728, i64* %RSI.i1613, align 8
  %3729 = shl nsw i64 %3728, 3
  %3730 = add i64 %3702, %3729
  %3731 = add i64 %3652, 49
  store i64 %3731, i64* %3, align 8
  %3732 = inttoptr i64 %3730 to i64*
  store i64 %3690, i64* %3732, align 8
  %3733 = load i64, i64* %RBP.i, align 8
  %3734 = add i64 %3733, -24
  %3735 = load i64, i64* %3, align 8
  %3736 = add i64 %3735, 4
  store i64 %3736, i64* %3, align 8
  %3737 = inttoptr i64 %3734 to i64*
  %3738 = load i64, i64* %3737, align 8
  store i64 %3738, i64* %RDX.i1610, align 8
  %3739 = add i64 %3733, -40
  %3740 = add i64 %3735, 7
  store i64 %3740, i64* %3, align 8
  %3741 = inttoptr i64 %3739 to i32*
  %3742 = load i32, i32* %3741, align 4
  %3743 = zext i32 %3742 to i64
  store i64 %3743, i64* %RCX.i534, align 8
  %3744 = add i64 %3733, -52
  %3745 = add i64 %3735, 10
  store i64 %3745, i64* %3, align 8
  %3746 = inttoptr i64 %3744 to i32*
  %3747 = load i32, i32* %3746, align 4
  %3748 = add i32 %3747, %3742
  %3749 = lshr i32 %3748, 31
  %3750 = add i32 %3748, 1
  %3751 = zext i32 %3750 to i64
  store i64 %3751, i64* %RCX.i534, align 8
  %3752 = icmp eq i32 %3748, -1
  %3753 = icmp eq i32 %3750, 0
  %3754 = or i1 %3752, %3753
  %3755 = zext i1 %3754 to i8
  store i8 %3755, i8* %51, align 1
  %3756 = and i32 %3750, 255
  %3757 = tail call i32 @llvm.ctpop.i32(i32 %3756)
  %3758 = trunc i32 %3757 to i8
  %3759 = and i8 %3758, 1
  %3760 = xor i8 %3759, 1
  store i8 %3760, i8* %52, align 1
  %3761 = xor i32 %3750, %3748
  %3762 = lshr i32 %3761, 4
  %3763 = trunc i32 %3762 to i8
  %3764 = and i8 %3763, 1
  store i8 %3764, i8* %53, align 1
  %3765 = zext i1 %3753 to i8
  store i8 %3765, i8* %54, align 1
  %3766 = lshr i32 %3750, 31
  %3767 = trunc i32 %3766 to i8
  store i8 %3767, i8* %55, align 1
  %3768 = xor i32 %3766, %3749
  %3769 = add nuw nsw i32 %3768, %3766
  %3770 = icmp eq i32 %3769, 2
  %3771 = zext i1 %3770 to i8
  store i8 %3771, i8* %56, align 1
  %3772 = sext i32 %3750 to i64
  store i64 %3772, i64* %RSI.i1613, align 8
  %3773 = shl nsw i64 %3772, 3
  %3774 = add i64 %3738, %3773
  %3775 = add i64 %3735, 21
  store i64 %3775, i64* %3, align 8
  %3776 = inttoptr i64 %3774 to i64*
  %3777 = load i64, i64* %3776, align 8
  %3778 = load i64, i64* %RAX.i1594, align 8
  %3779 = xor i64 %3778, %3777
  store i64 %3779, i64* %RDX.i1610, align 8
  store i8 0, i8* %51, align 1
  %3780 = trunc i64 %3779 to i32
  %3781 = and i32 %3780, 255
  %3782 = tail call i32 @llvm.ctpop.i32(i32 %3781)
  %3783 = trunc i32 %3782 to i8
  %3784 = and i8 %3783, 1
  %3785 = xor i8 %3784, 1
  store i8 %3785, i8* %52, align 1
  %3786 = icmp eq i64 %3779, 0
  %3787 = zext i1 %3786 to i8
  store i8 %3787, i8* %54, align 1
  %3788 = lshr i64 %3779, 63
  %3789 = trunc i64 %3788 to i8
  store i8 %3789, i8* %55, align 1
  store i8 0, i8* %56, align 1
  store i8 0, i8* %53, align 1
  store i64 %3779, i64* %2626, align 1
  store i64 0, i64* %2627, align 1
  %3790 = load i64, i64* %RBP.i, align 8
  %3791 = add i64 %3790, -24
  %3792 = add i64 %3735, 38
  store i64 %3792, i64* %3, align 8
  %3793 = inttoptr i64 %3791 to i64*
  %3794 = load i64, i64* %3793, align 8
  store i64 %3794, i64* %RAX.i1594, align 8
  %3795 = add i64 %3790, -40
  %3796 = add i64 %3735, 41
  store i64 %3796, i64* %3, align 8
  %3797 = inttoptr i64 %3795 to i32*
  %3798 = load i32, i32* %3797, align 4
  %3799 = zext i32 %3798 to i64
  store i64 %3799, i64* %RCX.i534, align 8
  %3800 = add i64 %3790, -52
  %3801 = add i64 %3735, 44
  store i64 %3801, i64* %3, align 8
  %3802 = inttoptr i64 %3800 to i32*
  %3803 = load i32, i32* %3802, align 4
  %3804 = add i32 %3803, %3798
  %3805 = lshr i32 %3804, 31
  %3806 = add i32 %3804, 1
  %3807 = zext i32 %3806 to i64
  store i64 %3807, i64* %RCX.i534, align 8
  %3808 = icmp eq i32 %3804, -1
  %3809 = icmp eq i32 %3806, 0
  %3810 = or i1 %3808, %3809
  %3811 = zext i1 %3810 to i8
  store i8 %3811, i8* %51, align 1
  %3812 = and i32 %3806, 255
  %3813 = tail call i32 @llvm.ctpop.i32(i32 %3812)
  %3814 = trunc i32 %3813 to i8
  %3815 = and i8 %3814, 1
  %3816 = xor i8 %3815, 1
  store i8 %3816, i8* %52, align 1
  %3817 = xor i32 %3806, %3804
  %3818 = lshr i32 %3817, 4
  %3819 = trunc i32 %3818 to i8
  %3820 = and i8 %3819, 1
  store i8 %3820, i8* %53, align 1
  %3821 = zext i1 %3809 to i8
  store i8 %3821, i8* %54, align 1
  %3822 = lshr i32 %3806, 31
  %3823 = trunc i32 %3822 to i8
  store i8 %3823, i8* %55, align 1
  %3824 = xor i32 %3822, %3805
  %3825 = add nuw nsw i32 %3824, %3822
  %3826 = icmp eq i32 %3825, 2
  %3827 = zext i1 %3826 to i8
  store i8 %3827, i8* %56, align 1
  %3828 = sext i32 %3806 to i64
  store i64 %3828, i64* %RDX.i1610, align 8
  %3829 = shl nsw i64 %3828, 3
  %3830 = add i64 %3794, %3829
  %3831 = add i64 %3735, 55
  store i64 %3831, i64* %3, align 8
  %3832 = inttoptr i64 %3830 to i64*
  store i64 %3779, i64* %3832, align 8
  %3833 = load i64, i64* %RBP.i, align 8
  %3834 = add i64 %3833, -36
  %3835 = load i64, i64* %3, align 8
  %3836 = add i64 %3835, 3
  store i64 %3836, i64* %3, align 8
  %3837 = inttoptr i64 %3834 to i32*
  %3838 = load i32, i32* %3837, align 4
  %3839 = add i32 %3838, 1
  %3840 = zext i32 %3839 to i64
  store i64 %3840, i64* %RAX.i1594, align 8
  %3841 = icmp eq i32 %3838, -1
  %3842 = icmp eq i32 %3839, 0
  %3843 = or i1 %3841, %3842
  %3844 = zext i1 %3843 to i8
  store i8 %3844, i8* %51, align 1
  %3845 = and i32 %3839, 255
  %3846 = tail call i32 @llvm.ctpop.i32(i32 %3845)
  %3847 = trunc i32 %3846 to i8
  %3848 = and i8 %3847, 1
  %3849 = xor i8 %3848, 1
  store i8 %3849, i8* %52, align 1
  %3850 = xor i32 %3839, %3838
  %3851 = lshr i32 %3850, 4
  %3852 = trunc i32 %3851 to i8
  %3853 = and i8 %3852, 1
  store i8 %3853, i8* %53, align 1
  %3854 = zext i1 %3842 to i8
  store i8 %3854, i8* %54, align 1
  %3855 = lshr i32 %3839, 31
  %3856 = trunc i32 %3855 to i8
  store i8 %3856, i8* %55, align 1
  %3857 = lshr i32 %3838, 31
  %3858 = xor i32 %3855, %3857
  %3859 = add nuw nsw i32 %3858, %3855
  %3860 = icmp eq i32 %3859, 2
  %3861 = zext i1 %3860 to i8
  store i8 %3861, i8* %56, align 1
  %3862 = add i64 %3835, 9
  store i64 %3862, i64* %3, align 8
  store i32 %3839, i32* %3837, align 4
  %3863 = load i64, i64* %3, align 8
  %3864 = add i64 %3863, -636
  store i64 %3864, i64* %3, align 8
  br label %block_.L_40220c

block_.L_40248d:                                  ; preds = %block_.L_40220c
  %3865 = add i64 %2770, 5
  store i64 %3865, i64* %3, align 8
  br label %block_.L_402492

block_.L_402492:                                  ; preds = %block_.L_40248d, %block_.L_4021a6
  %storemerge = phi i64 [ %2617, %block_.L_4021a6 ], [ %3865, %block_.L_40248d ]
  %3866 = add i64 %storemerge, 1
  store i64 %3866, i64* %3, align 8
  %3867 = load i64, i64* %6, align 8
  %3868 = add i64 %3867, 8
  %3869 = inttoptr i64 %3867 to i64*
  %3870 = load i64, i64* %3869, align 8
  store i64 %3870, i64* %RBP.i, align 8
  store i64 %3868, i64* %6, align 8
  %3871 = add i64 %storemerge, 2
  store i64 %3871, i64* %3, align 8
  %3872 = inttoptr i64 %3868 to i64*
  %3873 = load i64, i64* %3872, align 8
  store i64 %3873, i64* %3, align 8
  %3874 = add i64 %3867, 16
  store i64 %3874, i64* %6, align 8
  ret %struct.Memory* %2
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
define %struct.Memory* @routine_movq__rdx__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0____rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = bitcast i64* %RDX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  store i32 0, i32* %4, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x4__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edi__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -44
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
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
define %struct.Memory* @routine_shll__0x3___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %.tr = trunc i64 %3 to i32
  %6 = shl i32 %.tr, 3
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %RAX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %9 = lshr i64 %3, 29
  %10 = trunc i64 %9 to i8
  %11 = and i8 %10, 1
  store i8 %11, i8* %8, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %13 = and i32 %6, 248
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  store i8 %17, i8* %12, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %20 = icmp eq i32 %6, 0
  %21 = zext i1 %20 to i8
  store i8 %21, i8* %19, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %23 = lshr i32 %.tr, 28
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x2c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -44
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
define %struct.Memory* @routine_jge_.L_401c8b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
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
define %struct.Memory* @routine_sarl__0x1___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 32
  %7 = ashr i64 %6, 33
  %8 = trunc i64 %3 to i8
  %9 = and i8 %8, 1
  %10 = trunc i64 %7 to i32
  %11 = and i64 %7, 4294967295
  store i64 %11, i64* %RAX, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9, i8* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %14 = and i32 %10, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  store i8 %18, i8* %13, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %21 = icmp eq i32 %10, 0
  %22 = zext i1 %21 to i8
  store i8 %22, i8* %20, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %24 = lshr i64 %7, 31
  %25 = trunc i64 %24 to i8
  %26 = and i8 %25, 1
  store i8 %26, i8* %23, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %27, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -44
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_cmpl_MINUS0x30__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -48
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
define %struct.Memory* @routine_jge_.L_401c7d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl___rax__rcx_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x2c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -44
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDX, align 8
  %13 = icmp ult i32 %11, %8
  %14 = icmp ult i32 %11, %10
  %15 = or i1 %13, %14
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %16, i8* %17, align 1
  %18 = and i32 %11, 255
  %19 = tail call i32 @llvm.ctpop.i32(i32 %18)
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1
  %24 = xor i32 %10, %8
  %25 = xor i32 %24, %11
  %26 = lshr i32 %25, 4
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1
  %30 = icmp eq i32 %11, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %11, 31
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %8, 31
  %37 = lshr i32 %10, 31
  %38 = xor i32 %33, %36
  %39 = xor i32 %33, %37
  %40 = add nuw nsw i32 %38, %39
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x30__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x1c__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -28
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RSI, align 8
  %13 = icmp ult i32 %11, %8
  %14 = icmp ult i32 %11, %10
  %15 = or i1 %13, %14
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %16, i8* %17, align 1
  %18 = and i32 %11, 255
  %19 = tail call i32 @llvm.ctpop.i32(i32 %18)
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1
  %24 = xor i32 %10, %8
  %25 = xor i32 %24, %11
  %26 = lshr i32 %25, 4
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1
  %30 = icmp eq i32 %11, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %11, 31
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %8, 31
  %37 = lshr i32 %10, 31
  %38 = xor i32 %33, %36
  %39 = xor i32 %33, %37
  %40 = add nuw nsw i32 %38, %39
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq__esi___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %ESI, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx____rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i32, i32* %EDX, align 4
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 3
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i32*
  store i32 %8, i32* %11, align 4
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
define %struct.Memory* @routine_jmpq_.L_401c45(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shll__0x1___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = shl i32 %6, 1
  %8 = icmp slt i32 %6, 0
  %9 = icmp slt i32 %7, 0
  %10 = xor i1 %8, %9
  %11 = zext i32 %7 to i64
  store i64 %11, i64* %RAX, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %.lobit = lshr i32 %6, 31
  %13 = trunc i32 %.lobit to i8
  store i8 %13, i8* %12, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %15 = and i32 %7, 254
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  store i8 %19, i8* %14, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %22 = icmp eq i32 %7, 0
  %23 = zext i1 %22 to i8
  store i8 %23, i8* %21, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %25 = lshr i32 %6, 30
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  store i8 %27, i8* %24, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %29 = zext i1 %10 to i8
  store i8 %29, i8* %28, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -48
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_401c26(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x34__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -52
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4021ab(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
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
define %struct.Memory* @routine_movl__0x0__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
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
define %struct.Memory* @routine_jge_.L_4021a6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x24__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -36
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
define %struct.Memory* @routine_jge_.L_40203f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x8000000000000000___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 -9223372036854775808, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shll__0x1___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = shl i32 %6, 1
  %8 = icmp slt i32 %6, 0
  %9 = icmp slt i32 %7, 0
  %10 = xor i1 %8, %9
  %11 = zext i32 %7 to i64
  store i64 %11, i64* %RCX, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %.lobit = lshr i32 %6, 31
  %13 = trunc i32 %.lobit to i8
  store i8 %13, i8* %12, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %15 = and i32 %7, 254
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  store i8 %19, i8* %14, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %22 = icmp eq i32 %7, 0
  %23 = zext i1 %22 to i8
  store i8 %23, i8* %21, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %25 = lshr i32 %6, 30
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  store i8 %27, i8* %24, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %29 = zext i1 %10 to i8
  store i8 %29, i8* %28, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x24__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl___rdx__rsi_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = load i64, i64* %RSI, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 3
  store i64 %9, i64* %PC, align 8
  %10 = trunc i64 %3 to i32
  %11 = inttoptr i64 %7 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = add i32 %12, %10
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RCX, align 8
  %15 = icmp ult i32 %13, %10
  %16 = icmp ult i32 %13, %12
  %17 = or i1 %15, %16
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %18, i8* %19, align 1
  %20 = and i32 %13, 255
  %21 = tail call i32 @llvm.ctpop.i32(i32 %20)
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %24, i8* %25, align 1
  %26 = xor i32 %12, %10
  %27 = xor i32 %26, %13
  %28 = lshr i32 %27, 4
  %29 = trunc i32 %28 to i8
  %30 = and i8 %29, 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %30, i8* %31, align 1
  %32 = icmp eq i32 %13, 0
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %33, i8* %34, align 1
  %35 = lshr i32 %13, 31
  %36 = trunc i32 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %36, i8* %37, align 1
  %38 = lshr i32 %10, 31
  %39 = lshr i32 %12, 31
  %40 = xor i32 %35, %38
  %41 = xor i32 %35, %39
  %42 = add nuw nsw i32 %40, %41
  %43 = icmp eq i32 %42, 2
  %44 = zext i1 %43 to i8
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %44, i8* %45, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -32
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x24__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -40
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x20__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd___rdx__rsi_8____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RSI, align 8
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
define %struct.Memory* @routine_movsd__xmm0__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
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
define %struct.Memory* @routine_movl_MINUS0x20__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x1___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
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
define %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__xmm0___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* %RDX, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_xorq__rax___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = xor i64 %4, %3
  store i64 %7, i64* %RDX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = trunc i64 %7 to i32
  %10 = and i32 %9, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = icmp eq i64 %7, 0
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %17, i8* %18, align 1
  %19 = lshr i64 %7, 63
  %20 = trunc i64 %19 to i8
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %20, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 5
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %3, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  store i64 0, i64* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
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
define %struct.Memory* @routine_movslq_MINUS0x28__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
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
define %struct.Memory* @routine_movl_MINUS0x28__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x58__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
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
define %struct.Memory* @routine_movsd_MINUS0x50__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
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
define %struct.Memory* @routine_movsd__xmm0____rdx__rsi_8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RSI, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x58__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
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
define %struct.Memory* @routine_movsd_MINUS0x40__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
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
define %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
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
define %struct.Memory* @routine_movl_MINUS0x34__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x20__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -32
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  %13 = icmp ult i32 %11, %8
  %14 = icmp ult i32 %11, %10
  %15 = or i1 %13, %14
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %16, i8* %17, align 1
  %18 = and i32 %11, 255
  %19 = tail call i32 @llvm.ctpop.i32(i32 %18)
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1
  %24 = xor i32 %10, %8
  %25 = xor i32 %24, %11
  %26 = lshr i32 %25, 4
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1
  %30 = icmp eq i32 %11, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %11, 31
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %8, 31
  %37 = lshr i32 %10, 31
  %38 = xor i32 %33, %36
  %39 = xor i32 %33, %37
  %40 = add nuw nsw i32 %38, %39
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x28__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -40
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  %13 = icmp ult i32 %11, %8
  %14 = icmp ult i32 %11, %10
  %15 = or i1 %13, %14
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %16, i8* %17, align 1
  %18 = and i32 %11, 255
  %19 = tail call i32 @llvm.ctpop.i32(i32 %18)
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1
  %24 = xor i32 %10, %8
  %25 = xor i32 %24, %11
  %26 = lshr i32 %25, 4
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1
  %30 = icmp eq i32 %11, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %11, 31
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %8, 31
  %37 = lshr i32 %10, 31
  %38 = xor i32 %33, %36
  %39 = xor i32 %33, %37
  %40 = add nuw nsw i32 %38, %39
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x28__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__ecx___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i64, i64* %RDI, align 8
  %5 = load i32, i32* %ECX, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %4 to i32
  %10 = sub i32 %9, %5
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RDI, align 8
  %12 = icmp ult i32 %9, %5
  %13 = zext i1 %12 to i8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %13, i8* %14, align 1
  %15 = and i32 %10, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i64 %6, %4
  %22 = trunc i64 %21 to i32
  %23 = xor i32 %22, %10
  %24 = lshr i32 %23, 4
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1
  %28 = icmp eq i32 %10, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %10, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %9, 31
  %35 = lshr i32 %5, 31
  %36 = xor i32 %35, %34
  %37 = xor i32 %31, %34
  %38 = add nuw nsw i32 %37, %36
  %39 = icmp eq i32 %38, 2
  %40 = zext i1 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %40, i8* %41, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edi__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -40
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0____rax__rdx_8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RDX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_401cbd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x34__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -52
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  %13 = icmp ult i32 %11, %8
  %14 = icmp ult i32 %11, %10
  %15 = or i1 %13, %14
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %16, i8* %17, align 1
  %18 = and i32 %11, 255
  %19 = tail call i32 @llvm.ctpop.i32(i32 %18)
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1
  %24 = xor i32 %10, %8
  %25 = xor i32 %24, %11
  %26 = lshr i32 %25, 4
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1
  %30 = icmp eq i32 %11, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %11, 31
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %8, 31
  %37 = lshr i32 %10, 31
  %38 = xor i32 %33, %36
  %39 = xor i32 %33, %37
  %40 = add nuw nsw i32 %38, %39
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -36
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_401caa(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_402492(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x8__rcx____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 8
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
define %struct.Memory* @routine_movq__xmm0___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* %RCX, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_xorq__rax___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = xor i64 %4, %3
  store i64 %7, i64* %RCX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = trunc i64 %7 to i32
  %10 = and i32 %9, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = icmp eq i64 %7, 0
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %17, i8* %18, align 1
  %19 = lshr i64 %7, 63
  %20 = trunc i64 %19 to i8
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %20, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 5
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %3, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  store i64 0, i64* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__0x8__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 8
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
define %struct.Memory* @routine_movl_MINUS0x34__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x1___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDX, align 8
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
define %struct.Memory* @routine_movslq__edx___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd___rcx__rsi_8____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RSI, align 8
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
define %struct.Memory* @routine_movslq__edx___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RCX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_40248d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_4023f9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_40221f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40220c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
attributes #1 = { alwaysinline nounwind }
attributes #2 = { norecurse nounwind }
attributes #3 = { nounwind }
