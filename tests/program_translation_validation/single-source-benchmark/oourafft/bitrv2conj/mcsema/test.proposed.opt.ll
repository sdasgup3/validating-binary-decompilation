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

; Function Attrs: alwaysinline
define %struct.Memory* @bitrv2conj(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  br label %block_.L_401c06

block_.L_401c06:                                  ; preds = %block_.L_401c5d, %entry
  %57 = phi i64 [ %307, %block_.L_401c5d ], [ %.pre, %entry ]
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
  %76 = and i32 %75, 1
  %77 = trunc i32 %76 to i8
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
  %99 = lshr i32 %81, 31
  %100 = xor i32 %99, %76
  %101 = xor i32 %97, %76
  %102 = add nuw nsw i32 %101, %100
  %103 = icmp eq i32 %102, 2
  %104 = zext i1 %103 to i8
  store i8 %104, i8* %56, align 1
  %105 = icmp ne i8 %98, 0
  %106 = xor i1 %105, %103
  %.v = select i1 %106, i64 15, i64 101
  %107 = add i64 %57, %.v
  %108 = add i64 %107, 3
  store i64 %108, i64* %3, align 8
  br i1 %106, label %block_401c15, label %block_.L_401c6b

block_401c15:                                     ; preds = %block_.L_401c06
  %109 = load i32, i32* %80, align 4
  %110 = zext i32 %109 to i64
  %111 = shl nuw i64 %110, 32
  %112 = ashr i64 %111, 33
  %113 = trunc i32 %109 to i8
  %114 = and i8 %113, 1
  %115 = trunc i64 %112 to i32
  %116 = and i64 %112, 4294967295
  store i64 %116, i64* %RAX.i1594, align 8
  store i8 %114, i8* %51, align 1
  %117 = and i32 %115, 255
  %118 = tail call i32 @llvm.ctpop.i32(i32 %117)
  %119 = trunc i32 %118 to i8
  %120 = and i8 %119, 1
  %121 = xor i8 %120, 1
  store i8 %121, i8* %52, align 1
  store i8 0, i8* %53, align 1
  %122 = icmp eq i32 %115, 0
  %123 = zext i1 %122 to i8
  store i8 %123, i8* %54, align 1
  %124 = lshr i64 %112, 31
  %125 = trunc i64 %124 to i8
  %126 = and i8 %125, 1
  store i8 %126, i8* %55, align 1
  store i8 0, i8* %56, align 1
  %127 = add i64 %107, 9
  store i64 %127, i64* %3, align 8
  store i32 %115, i32* %80, align 4
  %128 = load i64, i64* %RBP.i, align 8
  %129 = add i64 %128, -28
  %130 = load i64, i64* %3, align 8
  %131 = add i64 %130, 7
  store i64 %131, i64* %3, align 8
  %132 = inttoptr i64 %129 to i32*
  store i32 0, i32* %132, align 4
  %.pre1 = load i64, i64* %3, align 8
  br label %block_.L_401c25

block_.L_401c25:                                  ; preds = %block_401c31, %block_401c15
  %133 = phi i64 [ %285, %block_401c31 ], [ %.pre1, %block_401c15 ]
  %134 = load i64, i64* %RBP.i, align 8
  %135 = add i64 %134, -28
  %136 = add i64 %133, 3
  store i64 %136, i64* %3, align 8
  %137 = inttoptr i64 %135 to i32*
  %138 = load i32, i32* %137, align 4
  %139 = zext i32 %138 to i64
  store i64 %139, i64* %RAX.i1594, align 8
  %140 = add i64 %134, -48
  %141 = add i64 %133, 6
  store i64 %141, i64* %3, align 8
  %142 = inttoptr i64 %140 to i32*
  %143 = load i32, i32* %142, align 4
  %144 = sub i32 %138, %143
  %145 = icmp ult i32 %138, %143
  %146 = zext i1 %145 to i8
  store i8 %146, i8* %51, align 1
  %147 = and i32 %144, 255
  %148 = tail call i32 @llvm.ctpop.i32(i32 %147)
  %149 = trunc i32 %148 to i8
  %150 = and i8 %149, 1
  %151 = xor i8 %150, 1
  store i8 %151, i8* %52, align 1
  %152 = xor i32 %143, %138
  %153 = xor i32 %152, %144
  %154 = lshr i32 %153, 4
  %155 = trunc i32 %154 to i8
  %156 = and i8 %155, 1
  store i8 %156, i8* %53, align 1
  %157 = icmp eq i32 %144, 0
  %158 = zext i1 %157 to i8
  store i8 %158, i8* %54, align 1
  %159 = lshr i32 %144, 31
  %160 = trunc i32 %159 to i8
  store i8 %160, i8* %55, align 1
  %161 = lshr i32 %138, 31
  %162 = lshr i32 %143, 31
  %163 = xor i32 %162, %161
  %164 = xor i32 %159, %161
  %165 = add nuw nsw i32 %164, %163
  %166 = icmp eq i32 %165, 2
  %167 = zext i1 %166 to i8
  store i8 %167, i8* %56, align 1
  %168 = icmp ne i8 %160, 0
  %169 = xor i1 %168, %166
  %.v7 = select i1 %169, i64 12, i64 56
  %170 = add i64 %133, %.v7
  store i64 %170, i64* %3, align 8
  br i1 %169, label %block_401c31, label %block_.L_401c5d

block_401c31:                                     ; preds = %block_.L_401c25
  %171 = add i64 %134, -16
  %172 = add i64 %170, 4
  store i64 %172, i64* %3, align 8
  %173 = inttoptr i64 %171 to i64*
  %174 = load i64, i64* %173, align 8
  store i64 %174, i64* %RAX.i1594, align 8
  %175 = add i64 %170, 8
  store i64 %175, i64* %3, align 8
  %176 = load i32, i32* %137, align 4
  %177 = sext i32 %176 to i64
  store i64 %177, i64* %RCX.i1565, align 8
  %178 = shl nsw i64 %177, 2
  %179 = add i64 %178, %174
  %180 = add i64 %170, 11
  store i64 %180, i64* %3, align 8
  %181 = inttoptr i64 %179 to i32*
  %182 = load i32, i32* %181, align 4
  %183 = zext i32 %182 to i64
  store i64 %183, i64* %RDX.i1610, align 8
  %184 = add i64 %134, -44
  %185 = add i64 %170, 14
  store i64 %185, i64* %3, align 8
  %186 = inttoptr i64 %184 to i32*
  %187 = load i32, i32* %186, align 4
  %188 = add i32 %187, %182
  %189 = zext i32 %188 to i64
  store i64 %189, i64* %RDX.i1610, align 8
  %190 = icmp ult i32 %188, %182
  %191 = icmp ult i32 %188, %187
  %192 = or i1 %190, %191
  %193 = zext i1 %192 to i8
  store i8 %193, i8* %51, align 1
  %194 = and i32 %188, 255
  %195 = tail call i32 @llvm.ctpop.i32(i32 %194)
  %196 = trunc i32 %195 to i8
  %197 = and i8 %196, 1
  %198 = xor i8 %197, 1
  store i8 %198, i8* %52, align 1
  %199 = xor i32 %187, %182
  %200 = xor i32 %199, %188
  %201 = lshr i32 %200, 4
  %202 = trunc i32 %201 to i8
  %203 = and i8 %202, 1
  store i8 %203, i8* %53, align 1
  %204 = icmp eq i32 %188, 0
  %205 = zext i1 %204 to i8
  store i8 %205, i8* %54, align 1
  %206 = lshr i32 %188, 31
  %207 = trunc i32 %206 to i8
  store i8 %207, i8* %55, align 1
  %208 = lshr i32 %182, 31
  %209 = lshr i32 %187, 31
  %210 = xor i32 %206, %208
  %211 = xor i32 %206, %209
  %212 = add nuw nsw i32 %210, %211
  %213 = icmp eq i32 %212, 2
  %214 = zext i1 %213 to i8
  store i8 %214, i8* %56, align 1
  %215 = add i64 %170, 18
  store i64 %215, i64* %3, align 8
  %216 = load i64, i64* %173, align 8
  store i64 %216, i64* %RAX.i1594, align 8
  %217 = add i64 %170, 21
  store i64 %217, i64* %3, align 8
  %218 = load i32, i32* %142, align 4
  %219 = zext i32 %218 to i64
  store i64 %219, i64* %RSI.i1613, align 8
  %220 = add i64 %170, 24
  store i64 %220, i64* %3, align 8
  %221 = load i32, i32* %137, align 4
  %222 = add i32 %221, %218
  %223 = zext i32 %222 to i64
  store i64 %223, i64* %RSI.i1613, align 8
  %224 = icmp ult i32 %222, %218
  %225 = icmp ult i32 %222, %221
  %226 = or i1 %224, %225
  %227 = zext i1 %226 to i8
  store i8 %227, i8* %51, align 1
  %228 = and i32 %222, 255
  %229 = tail call i32 @llvm.ctpop.i32(i32 %228)
  %230 = trunc i32 %229 to i8
  %231 = and i8 %230, 1
  %232 = xor i8 %231, 1
  store i8 %232, i8* %52, align 1
  %233 = xor i32 %221, %218
  %234 = xor i32 %233, %222
  %235 = lshr i32 %234, 4
  %236 = trunc i32 %235 to i8
  %237 = and i8 %236, 1
  store i8 %237, i8* %53, align 1
  %238 = icmp eq i32 %222, 0
  %239 = zext i1 %238 to i8
  store i8 %239, i8* %54, align 1
  %240 = lshr i32 %222, 31
  %241 = trunc i32 %240 to i8
  store i8 %241, i8* %55, align 1
  %242 = lshr i32 %218, 31
  %243 = lshr i32 %221, 31
  %244 = xor i32 %240, %242
  %245 = xor i32 %240, %243
  %246 = add nuw nsw i32 %244, %245
  %247 = icmp eq i32 %246, 2
  %248 = zext i1 %247 to i8
  store i8 %248, i8* %56, align 1
  %249 = sext i32 %222 to i64
  store i64 %249, i64* %RCX.i1565, align 8
  %250 = shl nsw i64 %249, 2
  %251 = add i64 %250, %216
  %252 = add i64 %170, 30
  store i64 %252, i64* %3, align 8
  %253 = inttoptr i64 %251 to i32*
  store i32 %188, i32* %253, align 4
  %254 = load i64, i64* %RBP.i, align 8
  %255 = add i64 %254, -28
  %256 = load i64, i64* %3, align 8
  %257 = add i64 %256, 3
  store i64 %257, i64* %3, align 8
  %258 = inttoptr i64 %255 to i32*
  %259 = load i32, i32* %258, align 4
  %260 = add i32 %259, 1
  %261 = zext i32 %260 to i64
  store i64 %261, i64* %RAX.i1594, align 8
  %262 = icmp eq i32 %259, -1
  %263 = icmp eq i32 %260, 0
  %264 = or i1 %262, %263
  %265 = zext i1 %264 to i8
  store i8 %265, i8* %51, align 1
  %266 = and i32 %260, 255
  %267 = tail call i32 @llvm.ctpop.i32(i32 %266)
  %268 = trunc i32 %267 to i8
  %269 = and i8 %268, 1
  %270 = xor i8 %269, 1
  store i8 %270, i8* %52, align 1
  %271 = xor i32 %259, %260
  %272 = lshr i32 %271, 4
  %273 = trunc i32 %272 to i8
  %274 = and i8 %273, 1
  store i8 %274, i8* %53, align 1
  %275 = zext i1 %263 to i8
  store i8 %275, i8* %54, align 1
  %276 = lshr i32 %260, 31
  %277 = trunc i32 %276 to i8
  store i8 %277, i8* %55, align 1
  %278 = lshr i32 %259, 31
  %279 = xor i32 %276, %278
  %280 = add nuw nsw i32 %279, %276
  %281 = icmp eq i32 %280, 2
  %282 = zext i1 %281 to i8
  store i8 %282, i8* %56, align 1
  %283 = add i64 %256, 9
  store i64 %283, i64* %3, align 8
  store i32 %260, i32* %258, align 4
  %284 = load i64, i64* %3, align 8
  %285 = add i64 %284, -51
  store i64 %285, i64* %3, align 8
  br label %block_.L_401c25

block_.L_401c5d:                                  ; preds = %block_.L_401c25
  %286 = add i64 %170, 3
  store i64 %286, i64* %3, align 8
  %287 = load i32, i32* %142, align 4
  %288 = shl i32 %287, 1
  %289 = icmp slt i32 %287, 0
  %290 = icmp slt i32 %288, 0
  %291 = xor i1 %289, %290
  %292 = zext i32 %288 to i64
  store i64 %292, i64* %RAX.i1594, align 8
  %.lobit = lshr i32 %287, 31
  %293 = trunc i32 %.lobit to i8
  store i8 %293, i8* %51, align 1
  %294 = and i32 %288, 254
  %295 = tail call i32 @llvm.ctpop.i32(i32 %294)
  %296 = trunc i32 %295 to i8
  %297 = and i8 %296, 1
  %298 = xor i8 %297, 1
  store i8 %298, i8* %52, align 1
  store i8 0, i8* %53, align 1
  %299 = icmp eq i32 %288, 0
  %300 = zext i1 %299 to i8
  store i8 %300, i8* %54, align 1
  %301 = lshr i32 %287, 30
  %302 = trunc i32 %301 to i8
  %303 = and i8 %302, 1
  store i8 %303, i8* %55, align 1
  %304 = zext i1 %291 to i8
  store i8 %304, i8* %56, align 1
  %305 = add i64 %170, 9
  store i64 %305, i64* %3, align 8
  store i32 %288, i32* %142, align 4
  %306 = load i64, i64* %3, align 8
  %307 = add i64 %306, -96
  store i64 %307, i64* %3, align 8
  br label %block_.L_401c06

block_.L_401c6b:                                  ; preds = %block_.L_401c06
  %308 = load i32, i32* %61, align 4
  %309 = shl i32 %308, 1
  %310 = icmp slt i32 %308, 0
  %311 = icmp slt i32 %309, 0
  %312 = xor i1 %310, %311
  %313 = zext i32 %309 to i64
  store i64 %313, i64* %RAX.i1594, align 8
  %.lobit8 = lshr i32 %308, 31
  %314 = trunc i32 %.lobit8 to i8
  store i8 %314, i8* %51, align 1
  %315 = and i32 %309, 254
  %316 = tail call i32 @llvm.ctpop.i32(i32 %315)
  %317 = trunc i32 %316 to i8
  %318 = and i8 %317, 1
  %319 = xor i8 %318, 1
  store i8 %319, i8* %52, align 1
  store i8 0, i8* %53, align 1
  %320 = icmp eq i32 %309, 0
  %321 = zext i1 %320 to i8
  store i8 %321, i8* %54, align 1
  %322 = lshr i32 %308, 30
  %323 = trunc i32 %322 to i8
  %324 = and i8 %323, 1
  store i8 %324, i8* %55, align 1
  %325 = zext i1 %312 to i8
  store i8 %325, i8* %56, align 1
  %326 = add i64 %58, -52
  %327 = add i64 %107, 9
  store i64 %327, i64* %3, align 8
  %328 = inttoptr i64 %326 to i32*
  store i32 %309, i32* %328, align 4
  %329 = load i64, i64* %RBP.i, align 8
  %330 = add i64 %329, -48
  %331 = load i64, i64* %3, align 8
  %332 = add i64 %331, 3
  store i64 %332, i64* %3, align 8
  %333 = inttoptr i64 %330 to i32*
  %334 = load i32, i32* %333, align 4
  %335 = shl i32 %334, 3
  %336 = zext i32 %335 to i64
  store i64 %336, i64* %RAX.i1594, align 8
  %337 = lshr i32 %334, 29
  %338 = trunc i32 %337 to i8
  %339 = and i8 %338, 1
  store i8 %339, i8* %51, align 1
  %340 = and i32 %335, 248
  %341 = tail call i32 @llvm.ctpop.i32(i32 %340)
  %342 = trunc i32 %341 to i8
  %343 = and i8 %342, 1
  %344 = xor i8 %343, 1
  store i8 %344, i8* %52, align 1
  store i8 0, i8* %53, align 1
  %345 = icmp eq i32 %335, 0
  %346 = zext i1 %345 to i8
  store i8 %346, i8* %54, align 1
  %347 = lshr i32 %334, 28
  %348 = and i32 %347, 1
  %349 = trunc i32 %348 to i8
  store i8 %349, i8* %55, align 1
  store i8 0, i8* %56, align 1
  %350 = add i64 %329, -44
  %351 = add i64 %331, 9
  store i64 %351, i64* %3, align 8
  %352 = inttoptr i64 %350 to i32*
  %353 = load i32, i32* %352, align 4
  %354 = sub i32 %335, %353
  %355 = icmp ult i32 %335, %353
  %356 = zext i1 %355 to i8
  store i8 %356, i8* %51, align 1
  %357 = and i32 %354, 255
  %358 = tail call i32 @llvm.ctpop.i32(i32 %357)
  %359 = trunc i32 %358 to i8
  %360 = and i8 %359, 1
  %361 = xor i8 %360, 1
  store i8 %361, i8* %52, align 1
  %362 = xor i32 %353, %335
  %363 = xor i32 %362, %354
  %364 = lshr i32 %363, 4
  %365 = trunc i32 %364 to i8
  %366 = and i8 %365, 1
  store i8 %366, i8* %53, align 1
  %367 = icmp eq i32 %354, 0
  %368 = zext i1 %367 to i8
  store i8 %368, i8* %54, align 1
  %369 = lshr i32 %354, 31
  %370 = trunc i32 %369 to i8
  store i8 %370, i8* %55, align 1
  %371 = lshr i32 %353, 31
  %372 = xor i32 %371, %348
  %373 = xor i32 %369, %348
  %374 = add nuw nsw i32 %373, %372
  %375 = icmp eq i32 %374, 2
  %376 = zext i1 %375 to i8
  store i8 %376, i8* %56, align 1
  %.v10 = select i1 %367, i64 15, i64 1303
  %377 = add i64 %331, %.v10
  store i64 %377, i64* %3, align 8
  br i1 %367, label %block_401c83, label %block_.L_40218b

block_401c83:                                     ; preds = %block_.L_401c6b
  %378 = add i64 %329, -36
  %379 = add i64 %377, 7
  store i64 %379, i64* %3, align 8
  %380 = inttoptr i64 %378 to i32*
  store i32 0, i32* %380, align 4
  %381 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %382 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %383 = bitcast i64* %382 to double*
  %384 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %381, i64 0, i32 0, i32 0, i32 0, i64 0
  %.pre2 = load i64, i64* %3, align 8
  br label %block_.L_401c8a

block_.L_401c8a:                                  ; preds = %block_.L_40201f, %block_401c83
  %385 = phi i64 [ %2601, %block_.L_40201f ], [ %.pre2, %block_401c83 ]
  %386 = load i64, i64* %RBP.i, align 8
  %387 = add i64 %386, -36
  %388 = add i64 %385, 3
  store i64 %388, i64* %3, align 8
  %389 = inttoptr i64 %387 to i32*
  %390 = load i32, i32* %389, align 4
  %391 = zext i32 %390 to i64
  store i64 %391, i64* %RAX.i1594, align 8
  %392 = add i64 %386, -48
  %393 = add i64 %385, 6
  store i64 %393, i64* %3, align 8
  %394 = inttoptr i64 %392 to i32*
  %395 = load i32, i32* %394, align 4
  %396 = sub i32 %390, %395
  %397 = icmp ult i32 %390, %395
  %398 = zext i1 %397 to i8
  store i8 %398, i8* %51, align 1
  %399 = and i32 %396, 255
  %400 = tail call i32 @llvm.ctpop.i32(i32 %399)
  %401 = trunc i32 %400 to i8
  %402 = and i8 %401, 1
  %403 = xor i8 %402, 1
  store i8 %403, i8* %52, align 1
  %404 = xor i32 %395, %390
  %405 = xor i32 %404, %396
  %406 = lshr i32 %405, 4
  %407 = trunc i32 %406 to i8
  %408 = and i8 %407, 1
  store i8 %408, i8* %53, align 1
  %409 = icmp eq i32 %396, 0
  %410 = zext i1 %409 to i8
  store i8 %410, i8* %54, align 1
  %411 = lshr i32 %396, 31
  %412 = trunc i32 %411 to i8
  store i8 %412, i8* %55, align 1
  %413 = lshr i32 %390, 31
  %414 = lshr i32 %395, 31
  %415 = xor i32 %414, %413
  %416 = xor i32 %411, %413
  %417 = add nuw nsw i32 %416, %415
  %418 = icmp eq i32 %417, 2
  %419 = zext i1 %418 to i8
  store i8 %419, i8* %56, align 1
  %420 = icmp ne i8 %412, 0
  %421 = xor i1 %420, %418
  %.v11 = select i1 %421, i64 12, i64 1276
  %422 = add i64 %385, %.v11
  store i64 %422, i64* %3, align 8
  br i1 %421, label %block_401c96, label %block_.L_402186

block_401c96:                                     ; preds = %block_.L_401c8a
  %423 = add i64 %386, -28
  %424 = add i64 %422, 7
  store i64 %424, i64* %3, align 8
  %425 = inttoptr i64 %423 to i32*
  store i32 0, i32* %425, align 4
  %.pre3 = load i64, i64* %3, align 8
  br label %block_.L_401c9d

block_.L_401c9d:                                  ; preds = %block_401ca9, %block_401c96
  %426 = phi i64 [ %1955, %block_401ca9 ], [ %.pre3, %block_401c96 ]
  %427 = load i64, i64* %RBP.i, align 8
  %428 = add i64 %427, -28
  %429 = add i64 %426, 3
  store i64 %429, i64* %3, align 8
  %430 = inttoptr i64 %428 to i32*
  %431 = load i32, i32* %430, align 4
  %432 = zext i32 %431 to i64
  store i64 %432, i64* %RAX.i1594, align 8
  %433 = add i64 %427, -36
  %434 = add i64 %426, 6
  store i64 %434, i64* %3, align 8
  %435 = inttoptr i64 %433 to i32*
  %436 = load i32, i32* %435, align 4
  %437 = sub i32 %431, %436
  %438 = icmp ult i32 %431, %436
  %439 = zext i1 %438 to i8
  store i8 %439, i8* %51, align 1
  %440 = and i32 %437, 255
  %441 = tail call i32 @llvm.ctpop.i32(i32 %440)
  %442 = trunc i32 %441 to i8
  %443 = and i8 %442, 1
  %444 = xor i8 %443, 1
  store i8 %444, i8* %52, align 1
  %445 = xor i32 %436, %431
  %446 = xor i32 %445, %437
  %447 = lshr i32 %446, 4
  %448 = trunc i32 %447 to i8
  %449 = and i8 %448, 1
  store i8 %449, i8* %53, align 1
  %450 = icmp eq i32 %437, 0
  %451 = zext i1 %450 to i8
  store i8 %451, i8* %54, align 1
  %452 = lshr i32 %437, 31
  %453 = trunc i32 %452 to i8
  store i8 %453, i8* %55, align 1
  %454 = lshr i32 %431, 31
  %455 = lshr i32 %436, 31
  %456 = xor i32 %455, %454
  %457 = xor i32 %452, %454
  %458 = add nuw nsw i32 %457, %456
  %459 = icmp eq i32 %458, 2
  %460 = zext i1 %459 to i8
  store i8 %460, i8* %56, align 1
  %461 = icmp ne i8 %453, 0
  %462 = xor i1 %461, %459
  %.v12 = select i1 %462, i64 12, i64 898
  %463 = add i64 %426, %.v12
  store i64 -9223372036854775808, i64* %RAX.i1594, align 8
  %464 = add i64 %463, 13
  store i64 %464, i64* %3, align 8
  br i1 %462, label %block_401ca9, label %block_.L_40201f

block_401ca9:                                     ; preds = %block_.L_401c9d
  %465 = load i32, i32* %430, align 4
  %466 = shl i32 %465, 1
  %467 = icmp slt i32 %465, 0
  %468 = icmp slt i32 %466, 0
  %469 = xor i1 %467, %468
  %470 = zext i32 %466 to i64
  store i64 %470, i64* %RCX.i1565, align 8
  %.lobit13 = lshr i32 %465, 31
  %471 = trunc i32 %.lobit13 to i8
  store i8 %471, i8* %51, align 1
  %472 = and i32 %466, 254
  %473 = tail call i32 @llvm.ctpop.i32(i32 %472)
  %474 = trunc i32 %473 to i8
  %475 = and i8 %474, 1
  %476 = xor i8 %475, 1
  store i8 %476, i8* %52, align 1
  store i8 0, i8* %53, align 1
  %477 = icmp eq i32 %466, 0
  %478 = zext i1 %477 to i8
  store i8 %478, i8* %54, align 1
  %479 = lshr i32 %465, 30
  %480 = and i32 %479, 1
  %481 = trunc i32 %480 to i8
  store i8 %481, i8* %55, align 1
  %482 = zext i1 %469 to i8
  store i8 %482, i8* %56, align 1
  %483 = add i64 %427, -16
  %484 = add i64 %463, 20
  store i64 %484, i64* %3, align 8
  %485 = inttoptr i64 %483 to i64*
  %486 = load i64, i64* %485, align 8
  store i64 %486, i64* %RDX.i1610, align 8
  %487 = add i64 %463, 24
  store i64 %487, i64* %3, align 8
  %488 = load i32, i32* %435, align 4
  %489 = sext i32 %488 to i64
  store i64 %489, i64* %RSI.i1613, align 8
  %490 = shl nsw i64 %489, 2
  %491 = add i64 %490, %486
  %492 = add i64 %463, 27
  store i64 %492, i64* %3, align 8
  %493 = inttoptr i64 %491 to i32*
  %494 = load i32, i32* %493, align 4
  %495 = add i32 %494, %466
  %496 = zext i32 %495 to i64
  store i64 %496, i64* %RCX.i1565, align 8
  %497 = icmp ult i32 %495, %466
  %498 = icmp ult i32 %495, %494
  %499 = or i1 %497, %498
  %500 = zext i1 %499 to i8
  store i8 %500, i8* %51, align 1
  %501 = and i32 %495, 255
  %502 = tail call i32 @llvm.ctpop.i32(i32 %501)
  %503 = trunc i32 %502 to i8
  %504 = and i8 %503, 1
  %505 = xor i8 %504, 1
  store i8 %505, i8* %52, align 1
  %506 = xor i32 %494, %466
  %507 = xor i32 %506, %495
  %508 = lshr i32 %507, 4
  %509 = trunc i32 %508 to i8
  %510 = and i8 %509, 1
  store i8 %510, i8* %53, align 1
  %511 = icmp eq i32 %495, 0
  %512 = zext i1 %511 to i8
  store i8 %512, i8* %54, align 1
  %513 = lshr i32 %495, 31
  %514 = trunc i32 %513 to i8
  store i8 %514, i8* %55, align 1
  %515 = lshr i32 %494, 31
  %516 = xor i32 %513, %480
  %517 = xor i32 %513, %515
  %518 = add nuw nsw i32 %516, %517
  %519 = icmp eq i32 %518, 2
  %520 = zext i1 %519 to i8
  store i8 %520, i8* %56, align 1
  %521 = add i64 %427, -32
  %522 = add i64 %463, 30
  store i64 %522, i64* %3, align 8
  %523 = inttoptr i64 %521 to i32*
  store i32 %495, i32* %523, align 4
  %524 = load i64, i64* %RBP.i, align 8
  %525 = add i64 %524, -36
  %526 = load i64, i64* %3, align 8
  %527 = add i64 %526, 3
  store i64 %527, i64* %3, align 8
  %528 = inttoptr i64 %525 to i32*
  %529 = load i32, i32* %528, align 4
  %530 = shl i32 %529, 1
  %531 = icmp slt i32 %529, 0
  %532 = icmp slt i32 %530, 0
  %533 = xor i1 %531, %532
  %534 = zext i32 %530 to i64
  store i64 %534, i64* %RCX.i1565, align 8
  %.lobit14 = lshr i32 %529, 31
  %535 = trunc i32 %.lobit14 to i8
  store i8 %535, i8* %51, align 1
  %536 = and i32 %530, 254
  %537 = tail call i32 @llvm.ctpop.i32(i32 %536)
  %538 = trunc i32 %537 to i8
  %539 = and i8 %538, 1
  %540 = xor i8 %539, 1
  store i8 %540, i8* %52, align 1
  store i8 0, i8* %53, align 1
  %541 = icmp eq i32 %530, 0
  %542 = zext i1 %541 to i8
  store i8 %542, i8* %54, align 1
  %543 = lshr i32 %529, 30
  %544 = and i32 %543, 1
  %545 = trunc i32 %544 to i8
  store i8 %545, i8* %55, align 1
  %546 = zext i1 %533 to i8
  store i8 %546, i8* %56, align 1
  %547 = add i64 %524, -16
  %548 = add i64 %526, 10
  store i64 %548, i64* %3, align 8
  %549 = inttoptr i64 %547 to i64*
  %550 = load i64, i64* %549, align 8
  store i64 %550, i64* %RDX.i1610, align 8
  %551 = add i64 %524, -28
  %552 = add i64 %526, 14
  store i64 %552, i64* %3, align 8
  %553 = inttoptr i64 %551 to i32*
  %554 = load i32, i32* %553, align 4
  %555 = sext i32 %554 to i64
  store i64 %555, i64* %RSI.i1613, align 8
  %556 = shl nsw i64 %555, 2
  %557 = add i64 %556, %550
  %558 = add i64 %526, 17
  store i64 %558, i64* %3, align 8
  %559 = inttoptr i64 %557 to i32*
  %560 = load i32, i32* %559, align 4
  %561 = add i32 %560, %530
  %562 = zext i32 %561 to i64
  store i64 %562, i64* %RCX.i1565, align 8
  %563 = icmp ult i32 %561, %530
  %564 = icmp ult i32 %561, %560
  %565 = or i1 %563, %564
  %566 = zext i1 %565 to i8
  store i8 %566, i8* %51, align 1
  %567 = and i32 %561, 255
  %568 = tail call i32 @llvm.ctpop.i32(i32 %567)
  %569 = trunc i32 %568 to i8
  %570 = and i8 %569, 1
  %571 = xor i8 %570, 1
  store i8 %571, i8* %52, align 1
  %572 = xor i32 %560, %530
  %573 = xor i32 %572, %561
  %574 = lshr i32 %573, 4
  %575 = trunc i32 %574 to i8
  %576 = and i8 %575, 1
  store i8 %576, i8* %53, align 1
  %577 = icmp eq i32 %561, 0
  %578 = zext i1 %577 to i8
  store i8 %578, i8* %54, align 1
  %579 = lshr i32 %561, 31
  %580 = trunc i32 %579 to i8
  store i8 %580, i8* %55, align 1
  %581 = lshr i32 %560, 31
  %582 = xor i32 %579, %544
  %583 = xor i32 %579, %581
  %584 = add nuw nsw i32 %582, %583
  %585 = icmp eq i32 %584, 2
  %586 = zext i1 %585 to i8
  store i8 %586, i8* %56, align 1
  %587 = add i64 %524, -40
  %588 = add i64 %526, 20
  store i64 %588, i64* %3, align 8
  %589 = inttoptr i64 %587 to i32*
  store i32 %561, i32* %589, align 4
  %590 = load i64, i64* %RBP.i, align 8
  %591 = add i64 %590, -24
  %592 = load i64, i64* %3, align 8
  %593 = add i64 %592, 4
  store i64 %593, i64* %3, align 8
  %594 = inttoptr i64 %591 to i64*
  %595 = load i64, i64* %594, align 8
  store i64 %595, i64* %RDX.i1610, align 8
  %596 = add i64 %590, -32
  %597 = add i64 %592, 8
  store i64 %597, i64* %3, align 8
  %598 = inttoptr i64 %596 to i32*
  %599 = load i32, i32* %598, align 4
  %600 = sext i32 %599 to i64
  store i64 %600, i64* %RSI.i1613, align 8
  %601 = shl nsw i64 %600, 3
  %602 = add i64 %601, %595
  %603 = add i64 %592, 13
  store i64 %603, i64* %3, align 8
  %604 = inttoptr i64 %602 to i64*
  %605 = load i64, i64* %604, align 8
  store i64 %605, i64* %384, align 1
  store double 0.000000e+00, double* %383, align 1
  %606 = add i64 %590, -64
  %607 = add i64 %592, 18
  store i64 %607, i64* %3, align 8
  %608 = inttoptr i64 %606 to i64*
  store i64 %605, i64* %608, align 8
  %609 = load i64, i64* %RBP.i, align 8
  %610 = add i64 %609, -24
  %611 = load i64, i64* %3, align 8
  %612 = add i64 %611, 4
  store i64 %612, i64* %3, align 8
  %613 = inttoptr i64 %610 to i64*
  %614 = load i64, i64* %613, align 8
  store i64 %614, i64* %RDX.i1610, align 8
  %615 = add i64 %609, -32
  %616 = add i64 %611, 7
  store i64 %616, i64* %3, align 8
  %617 = inttoptr i64 %615 to i32*
  %618 = load i32, i32* %617, align 4
  %619 = add i32 %618, 1
  %620 = zext i32 %619 to i64
  store i64 %620, i64* %RCX.i1565, align 8
  %621 = icmp eq i32 %618, -1
  %622 = icmp eq i32 %619, 0
  %623 = or i1 %621, %622
  %624 = zext i1 %623 to i8
  store i8 %624, i8* %51, align 1
  %625 = and i32 %619, 255
  %626 = tail call i32 @llvm.ctpop.i32(i32 %625)
  %627 = trunc i32 %626 to i8
  %628 = and i8 %627, 1
  %629 = xor i8 %628, 1
  store i8 %629, i8* %52, align 1
  %630 = xor i32 %618, %619
  %631 = lshr i32 %630, 4
  %632 = trunc i32 %631 to i8
  %633 = and i8 %632, 1
  store i8 %633, i8* %53, align 1
  %634 = zext i1 %622 to i8
  store i8 %634, i8* %54, align 1
  %635 = lshr i32 %619, 31
  %636 = trunc i32 %635 to i8
  store i8 %636, i8* %55, align 1
  %637 = lshr i32 %618, 31
  %638 = xor i32 %635, %637
  %639 = add nuw nsw i32 %638, %635
  %640 = icmp eq i32 %639, 2
  %641 = zext i1 %640 to i8
  store i8 %641, i8* %56, align 1
  %642 = sext i32 %619 to i64
  store i64 %642, i64* %RSI.i1613, align 8
  %643 = shl nsw i64 %642, 3
  %644 = add i64 %643, %614
  %645 = add i64 %611, 18
  store i64 %645, i64* %3, align 8
  %646 = inttoptr i64 %644 to i64*
  %647 = load i64, i64* %646, align 8
  %648 = load i64, i64* %RAX.i1594, align 8
  %649 = xor i64 %648, %647
  store i64 %649, i64* %RDX.i1610, align 8
  store i8 0, i8* %51, align 1
  %650 = trunc i64 %649 to i32
  %651 = and i32 %650, 255
  %652 = tail call i32 @llvm.ctpop.i32(i32 %651)
  %653 = trunc i32 %652 to i8
  %654 = and i8 %653, 1
  %655 = xor i8 %654, 1
  store i8 %655, i8* %52, align 1
  %656 = icmp eq i64 %649, 0
  %657 = zext i1 %656 to i8
  store i8 %657, i8* %54, align 1
  %658 = lshr i64 %649, 63
  %659 = trunc i64 %658 to i8
  store i8 %659, i8* %55, align 1
  store i8 0, i8* %56, align 1
  store i8 0, i8* %53, align 1
  store i64 %649, i64* %384, align 1
  store i64 0, i64* %382, align 1
  %660 = add i64 %609, -72
  %661 = add i64 %611, 36
  store i64 %661, i64* %3, align 8
  %662 = inttoptr i64 %660 to i64*
  store i64 %649, i64* %662, align 8
  %663 = load i64, i64* %RBP.i, align 8
  %664 = add i64 %663, -24
  %665 = load i64, i64* %3, align 8
  %666 = add i64 %665, 4
  store i64 %666, i64* %3, align 8
  %667 = inttoptr i64 %664 to i64*
  %668 = load i64, i64* %667, align 8
  store i64 %668, i64* %RDX.i1610, align 8
  %669 = add i64 %663, -40
  %670 = add i64 %665, 8
  store i64 %670, i64* %3, align 8
  %671 = inttoptr i64 %669 to i32*
  %672 = load i32, i32* %671, align 4
  %673 = sext i32 %672 to i64
  store i64 %673, i64* %RSI.i1613, align 8
  %674 = shl nsw i64 %673, 3
  %675 = add i64 %674, %668
  %676 = add i64 %665, 13
  store i64 %676, i64* %3, align 8
  %677 = inttoptr i64 %675 to i64*
  %678 = load i64, i64* %677, align 8
  store i64 %678, i64* %384, align 1
  store double 0.000000e+00, double* %383, align 1
  %679 = add i64 %663, -80
  %680 = add i64 %665, 18
  store i64 %680, i64* %3, align 8
  %681 = inttoptr i64 %679 to i64*
  store i64 %678, i64* %681, align 8
  %682 = load i64, i64* %RBP.i, align 8
  %683 = add i64 %682, -24
  %684 = load i64, i64* %3, align 8
  %685 = add i64 %684, 4
  store i64 %685, i64* %3, align 8
  %686 = inttoptr i64 %683 to i64*
  %687 = load i64, i64* %686, align 8
  store i64 %687, i64* %RDX.i1610, align 8
  %688 = add i64 %682, -40
  %689 = add i64 %684, 7
  store i64 %689, i64* %3, align 8
  %690 = inttoptr i64 %688 to i32*
  %691 = load i32, i32* %690, align 4
  %692 = add i32 %691, 1
  %693 = zext i32 %692 to i64
  store i64 %693, i64* %RCX.i1565, align 8
  %694 = icmp eq i32 %691, -1
  %695 = icmp eq i32 %692, 0
  %696 = or i1 %694, %695
  %697 = zext i1 %696 to i8
  store i8 %697, i8* %51, align 1
  %698 = and i32 %692, 255
  %699 = tail call i32 @llvm.ctpop.i32(i32 %698)
  %700 = trunc i32 %699 to i8
  %701 = and i8 %700, 1
  %702 = xor i8 %701, 1
  store i8 %702, i8* %52, align 1
  %703 = xor i32 %691, %692
  %704 = lshr i32 %703, 4
  %705 = trunc i32 %704 to i8
  %706 = and i8 %705, 1
  store i8 %706, i8* %53, align 1
  %707 = zext i1 %695 to i8
  store i8 %707, i8* %54, align 1
  %708 = lshr i32 %692, 31
  %709 = trunc i32 %708 to i8
  store i8 %709, i8* %55, align 1
  %710 = lshr i32 %691, 31
  %711 = xor i32 %708, %710
  %712 = add nuw nsw i32 %711, %708
  %713 = icmp eq i32 %712, 2
  %714 = zext i1 %713 to i8
  store i8 %714, i8* %56, align 1
  %715 = sext i32 %692 to i64
  store i64 %715, i64* %RSI.i1613, align 8
  %716 = shl nsw i64 %715, 3
  %717 = add i64 %716, %687
  %718 = add i64 %684, 18
  store i64 %718, i64* %3, align 8
  %719 = inttoptr i64 %717 to i64*
  %720 = load i64, i64* %719, align 8
  %721 = load i64, i64* %RAX.i1594, align 8
  %722 = xor i64 %721, %720
  store i64 %722, i64* %RDX.i1610, align 8
  store i8 0, i8* %51, align 1
  %723 = trunc i64 %722 to i32
  %724 = and i32 %723, 255
  %725 = tail call i32 @llvm.ctpop.i32(i32 %724)
  %726 = trunc i32 %725 to i8
  %727 = and i8 %726, 1
  %728 = xor i8 %727, 1
  store i8 %728, i8* %52, align 1
  %729 = icmp eq i64 %722, 0
  %730 = zext i1 %729 to i8
  store i8 %730, i8* %54, align 1
  %731 = lshr i64 %722, 63
  %732 = trunc i64 %731 to i8
  store i8 %732, i8* %55, align 1
  store i8 0, i8* %56, align 1
  store i8 0, i8* %53, align 1
  store i64 %722, i64* %384, align 1
  store i64 0, i64* %382, align 1
  %733 = add i64 %682, -88
  %734 = add i64 %684, 36
  store i64 %734, i64* %3, align 8
  %735 = inttoptr i64 %733 to i64*
  store i64 %722, i64* %735, align 8
  %736 = load i64, i64* %RBP.i, align 8
  %737 = add i64 %736, -80
  %738 = load i64, i64* %3, align 8
  %739 = add i64 %738, 5
  store i64 %739, i64* %3, align 8
  %740 = inttoptr i64 %737 to i64*
  %741 = load i64, i64* %740, align 8
  store i64 %741, i64* %384, align 1
  store double 0.000000e+00, double* %383, align 1
  %742 = add i64 %736, -24
  %743 = add i64 %738, 9
  store i64 %743, i64* %3, align 8
  %744 = inttoptr i64 %742 to i64*
  %745 = load i64, i64* %744, align 8
  store i64 %745, i64* %RDX.i1610, align 8
  %746 = add i64 %736, -32
  %747 = add i64 %738, 13
  store i64 %747, i64* %3, align 8
  %748 = inttoptr i64 %746 to i32*
  %749 = load i32, i32* %748, align 4
  %750 = sext i32 %749 to i64
  store i64 %750, i64* %RSI.i1613, align 8
  %751 = shl nsw i64 %750, 3
  %752 = add i64 %751, %745
  %753 = add i64 %738, 18
  store i64 %753, i64* %3, align 8
  %754 = inttoptr i64 %752 to i64*
  store i64 %741, i64* %754, align 8
  %755 = load i64, i64* %RBP.i, align 8
  %756 = add i64 %755, -88
  %757 = load i64, i64* %3, align 8
  %758 = add i64 %757, 5
  store i64 %758, i64* %3, align 8
  %759 = inttoptr i64 %756 to i64*
  %760 = load i64, i64* %759, align 8
  store i64 %760, i64* %384, align 1
  store double 0.000000e+00, double* %383, align 1
  %761 = add i64 %755, -24
  %762 = add i64 %757, 9
  store i64 %762, i64* %3, align 8
  %763 = inttoptr i64 %761 to i64*
  %764 = load i64, i64* %763, align 8
  store i64 %764, i64* %RDX.i1610, align 8
  %765 = add i64 %755, -32
  %766 = add i64 %757, 12
  store i64 %766, i64* %3, align 8
  %767 = inttoptr i64 %765 to i32*
  %768 = load i32, i32* %767, align 4
  %769 = add i32 %768, 1
  %770 = zext i32 %769 to i64
  store i64 %770, i64* %RCX.i1565, align 8
  %771 = icmp eq i32 %768, -1
  %772 = icmp eq i32 %769, 0
  %773 = or i1 %771, %772
  %774 = zext i1 %773 to i8
  store i8 %774, i8* %51, align 1
  %775 = and i32 %769, 255
  %776 = tail call i32 @llvm.ctpop.i32(i32 %775)
  %777 = trunc i32 %776 to i8
  %778 = and i8 %777, 1
  %779 = xor i8 %778, 1
  store i8 %779, i8* %52, align 1
  %780 = xor i32 %768, %769
  %781 = lshr i32 %780, 4
  %782 = trunc i32 %781 to i8
  %783 = and i8 %782, 1
  store i8 %783, i8* %53, align 1
  %784 = zext i1 %772 to i8
  store i8 %784, i8* %54, align 1
  %785 = lshr i32 %769, 31
  %786 = trunc i32 %785 to i8
  store i8 %786, i8* %55, align 1
  %787 = lshr i32 %768, 31
  %788 = xor i32 %785, %787
  %789 = add nuw nsw i32 %788, %785
  %790 = icmp eq i32 %789, 2
  %791 = zext i1 %790 to i8
  store i8 %791, i8* %56, align 1
  %792 = sext i32 %769 to i64
  store i64 %792, i64* %RSI.i1613, align 8
  %793 = shl nsw i64 %792, 3
  %794 = add i64 %793, %764
  %795 = add i64 %757, 23
  store i64 %795, i64* %3, align 8
  %796 = inttoptr i64 %794 to i64*
  store i64 %760, i64* %796, align 8
  %797 = load i64, i64* %RBP.i, align 8
  %798 = add i64 %797, -64
  %799 = load i64, i64* %3, align 8
  %800 = add i64 %799, 5
  store i64 %800, i64* %3, align 8
  %801 = inttoptr i64 %798 to i64*
  %802 = load i64, i64* %801, align 8
  store i64 %802, i64* %384, align 1
  store double 0.000000e+00, double* %383, align 1
  %803 = add i64 %797, -24
  %804 = add i64 %799, 9
  store i64 %804, i64* %3, align 8
  %805 = inttoptr i64 %803 to i64*
  %806 = load i64, i64* %805, align 8
  store i64 %806, i64* %RDX.i1610, align 8
  %807 = add i64 %797, -40
  %808 = add i64 %799, 13
  store i64 %808, i64* %3, align 8
  %809 = inttoptr i64 %807 to i32*
  %810 = load i32, i32* %809, align 4
  %811 = sext i32 %810 to i64
  store i64 %811, i64* %RSI.i1613, align 8
  %812 = shl nsw i64 %811, 3
  %813 = add i64 %812, %806
  %814 = add i64 %799, 18
  store i64 %814, i64* %3, align 8
  %815 = inttoptr i64 %813 to i64*
  store i64 %802, i64* %815, align 8
  %816 = load i64, i64* %RBP.i, align 8
  %817 = add i64 %816, -72
  %818 = load i64, i64* %3, align 8
  %819 = add i64 %818, 5
  store i64 %819, i64* %3, align 8
  %820 = inttoptr i64 %817 to i64*
  %821 = load i64, i64* %820, align 8
  store i64 %821, i64* %384, align 1
  store double 0.000000e+00, double* %383, align 1
  %822 = add i64 %816, -24
  %823 = add i64 %818, 9
  store i64 %823, i64* %3, align 8
  %824 = inttoptr i64 %822 to i64*
  %825 = load i64, i64* %824, align 8
  store i64 %825, i64* %RDX.i1610, align 8
  %826 = add i64 %816, -40
  %827 = add i64 %818, 12
  store i64 %827, i64* %3, align 8
  %828 = inttoptr i64 %826 to i32*
  %829 = load i32, i32* %828, align 4
  %830 = add i32 %829, 1
  %831 = zext i32 %830 to i64
  store i64 %831, i64* %RCX.i1565, align 8
  %832 = icmp eq i32 %829, -1
  %833 = icmp eq i32 %830, 0
  %834 = or i1 %832, %833
  %835 = zext i1 %834 to i8
  store i8 %835, i8* %51, align 1
  %836 = and i32 %830, 255
  %837 = tail call i32 @llvm.ctpop.i32(i32 %836)
  %838 = trunc i32 %837 to i8
  %839 = and i8 %838, 1
  %840 = xor i8 %839, 1
  store i8 %840, i8* %52, align 1
  %841 = xor i32 %829, %830
  %842 = lshr i32 %841, 4
  %843 = trunc i32 %842 to i8
  %844 = and i8 %843, 1
  store i8 %844, i8* %53, align 1
  %845 = zext i1 %833 to i8
  store i8 %845, i8* %54, align 1
  %846 = lshr i32 %830, 31
  %847 = trunc i32 %846 to i8
  store i8 %847, i8* %55, align 1
  %848 = lshr i32 %829, 31
  %849 = xor i32 %846, %848
  %850 = add nuw nsw i32 %849, %846
  %851 = icmp eq i32 %850, 2
  %852 = zext i1 %851 to i8
  store i8 %852, i8* %56, align 1
  %853 = sext i32 %830 to i64
  store i64 %853, i64* %RSI.i1613, align 8
  %854 = shl nsw i64 %853, 3
  %855 = add i64 %854, %825
  %856 = add i64 %818, 23
  store i64 %856, i64* %3, align 8
  %857 = inttoptr i64 %855 to i64*
  store i64 %821, i64* %857, align 8
  %858 = load i64, i64* %RBP.i, align 8
  %859 = add i64 %858, -52
  %860 = load i64, i64* %3, align 8
  %861 = add i64 %860, 3
  store i64 %861, i64* %3, align 8
  %862 = inttoptr i64 %859 to i32*
  %863 = load i32, i32* %862, align 4
  %864 = zext i32 %863 to i64
  store i64 %864, i64* %RCX.i1565, align 8
  %865 = add i64 %858, -32
  %866 = add i64 %860, 6
  store i64 %866, i64* %3, align 8
  %867 = inttoptr i64 %865 to i32*
  %868 = load i32, i32* %867, align 4
  %869 = add i32 %868, %863
  %870 = zext i32 %869 to i64
  store i64 %870, i64* %RCX.i1565, align 8
  %871 = icmp ult i32 %869, %863
  %872 = icmp ult i32 %869, %868
  %873 = or i1 %871, %872
  %874 = zext i1 %873 to i8
  store i8 %874, i8* %51, align 1
  %875 = and i32 %869, 255
  %876 = tail call i32 @llvm.ctpop.i32(i32 %875)
  %877 = trunc i32 %876 to i8
  %878 = and i8 %877, 1
  %879 = xor i8 %878, 1
  store i8 %879, i8* %52, align 1
  %880 = xor i32 %868, %863
  %881 = xor i32 %880, %869
  %882 = lshr i32 %881, 4
  %883 = trunc i32 %882 to i8
  %884 = and i8 %883, 1
  store i8 %884, i8* %53, align 1
  %885 = icmp eq i32 %869, 0
  %886 = zext i1 %885 to i8
  store i8 %886, i8* %54, align 1
  %887 = lshr i32 %869, 31
  %888 = trunc i32 %887 to i8
  store i8 %888, i8* %55, align 1
  %889 = lshr i32 %863, 31
  %890 = lshr i32 %868, 31
  %891 = xor i32 %887, %889
  %892 = xor i32 %887, %890
  %893 = add nuw nsw i32 %891, %892
  %894 = icmp eq i32 %893, 2
  %895 = zext i1 %894 to i8
  store i8 %895, i8* %56, align 1
  %896 = add i64 %860, 9
  store i64 %896, i64* %3, align 8
  store i32 %869, i32* %867, align 4
  %897 = load i64, i64* %RBP.i, align 8
  %898 = add i64 %897, -52
  %899 = load i64, i64* %3, align 8
  %900 = add i64 %899, 3
  store i64 %900, i64* %3, align 8
  %901 = inttoptr i64 %898 to i32*
  %902 = load i32, i32* %901, align 4
  %903 = shl i32 %902, 1
  %904 = icmp slt i32 %902, 0
  %905 = icmp slt i32 %903, 0
  %906 = xor i1 %904, %905
  %907 = zext i32 %903 to i64
  store i64 %907, i64* %RCX.i1565, align 8
  %.lobit15 = lshr i32 %902, 31
  %908 = trunc i32 %.lobit15 to i8
  store i8 %908, i8* %51, align 1
  %909 = and i32 %903, 254
  %910 = tail call i32 @llvm.ctpop.i32(i32 %909)
  %911 = trunc i32 %910 to i8
  %912 = and i8 %911, 1
  %913 = xor i8 %912, 1
  store i8 %913, i8* %52, align 1
  store i8 0, i8* %53, align 1
  %914 = icmp eq i32 %903, 0
  %915 = zext i1 %914 to i8
  store i8 %915, i8* %54, align 1
  %916 = lshr i32 %902, 30
  %917 = and i32 %916, 1
  %918 = trunc i32 %917 to i8
  store i8 %918, i8* %55, align 1
  %919 = zext i1 %906 to i8
  store i8 %919, i8* %56, align 1
  %920 = add i64 %897, -40
  %921 = add i64 %899, 9
  store i64 %921, i64* %3, align 8
  %922 = inttoptr i64 %920 to i32*
  %923 = load i32, i32* %922, align 4
  %924 = add i32 %923, %903
  %925 = zext i32 %924 to i64
  store i64 %925, i64* %RCX.i1565, align 8
  %926 = icmp ult i32 %924, %903
  %927 = icmp ult i32 %924, %923
  %928 = or i1 %926, %927
  %929 = zext i1 %928 to i8
  store i8 %929, i8* %51, align 1
  %930 = and i32 %924, 255
  %931 = tail call i32 @llvm.ctpop.i32(i32 %930)
  %932 = trunc i32 %931 to i8
  %933 = and i8 %932, 1
  %934 = xor i8 %933, 1
  store i8 %934, i8* %52, align 1
  %935 = xor i32 %923, %903
  %936 = xor i32 %935, %924
  %937 = lshr i32 %936, 4
  %938 = trunc i32 %937 to i8
  %939 = and i8 %938, 1
  store i8 %939, i8* %53, align 1
  %940 = icmp eq i32 %924, 0
  %941 = zext i1 %940 to i8
  store i8 %941, i8* %54, align 1
  %942 = lshr i32 %924, 31
  %943 = trunc i32 %942 to i8
  store i8 %943, i8* %55, align 1
  %944 = lshr i32 %923, 31
  %945 = xor i32 %942, %917
  %946 = xor i32 %942, %944
  %947 = add nuw nsw i32 %945, %946
  %948 = icmp eq i32 %947, 2
  %949 = zext i1 %948 to i8
  store i8 %949, i8* %56, align 1
  %950 = add i64 %899, 12
  store i64 %950, i64* %3, align 8
  store i32 %924, i32* %922, align 4
  %951 = load i64, i64* %RBP.i, align 8
  %952 = add i64 %951, -24
  %953 = load i64, i64* %3, align 8
  %954 = add i64 %953, 4
  store i64 %954, i64* %3, align 8
  %955 = inttoptr i64 %952 to i64*
  %956 = load i64, i64* %955, align 8
  store i64 %956, i64* %RDX.i1610, align 8
  %957 = add i64 %951, -32
  %958 = add i64 %953, 8
  store i64 %958, i64* %3, align 8
  %959 = inttoptr i64 %957 to i32*
  %960 = load i32, i32* %959, align 4
  %961 = sext i32 %960 to i64
  store i64 %961, i64* %RSI.i1613, align 8
  %962 = shl nsw i64 %961, 3
  %963 = add i64 %962, %956
  %964 = add i64 %953, 13
  store i64 %964, i64* %3, align 8
  %965 = inttoptr i64 %963 to i64*
  %966 = load i64, i64* %965, align 8
  store i64 %966, i64* %384, align 1
  store double 0.000000e+00, double* %383, align 1
  %967 = add i64 %951, -64
  %968 = add i64 %953, 18
  store i64 %968, i64* %3, align 8
  %969 = inttoptr i64 %967 to i64*
  store i64 %966, i64* %969, align 8
  %970 = load i64, i64* %RBP.i, align 8
  %971 = add i64 %970, -24
  %972 = load i64, i64* %3, align 8
  %973 = add i64 %972, 4
  store i64 %973, i64* %3, align 8
  %974 = inttoptr i64 %971 to i64*
  %975 = load i64, i64* %974, align 8
  store i64 %975, i64* %RDX.i1610, align 8
  %976 = add i64 %970, -32
  %977 = add i64 %972, 7
  store i64 %977, i64* %3, align 8
  %978 = inttoptr i64 %976 to i32*
  %979 = load i32, i32* %978, align 4
  %980 = add i32 %979, 1
  %981 = zext i32 %980 to i64
  store i64 %981, i64* %RCX.i1565, align 8
  %982 = icmp eq i32 %979, -1
  %983 = icmp eq i32 %980, 0
  %984 = or i1 %982, %983
  %985 = zext i1 %984 to i8
  store i8 %985, i8* %51, align 1
  %986 = and i32 %980, 255
  %987 = tail call i32 @llvm.ctpop.i32(i32 %986)
  %988 = trunc i32 %987 to i8
  %989 = and i8 %988, 1
  %990 = xor i8 %989, 1
  store i8 %990, i8* %52, align 1
  %991 = xor i32 %979, %980
  %992 = lshr i32 %991, 4
  %993 = trunc i32 %992 to i8
  %994 = and i8 %993, 1
  store i8 %994, i8* %53, align 1
  %995 = zext i1 %983 to i8
  store i8 %995, i8* %54, align 1
  %996 = lshr i32 %980, 31
  %997 = trunc i32 %996 to i8
  store i8 %997, i8* %55, align 1
  %998 = lshr i32 %979, 31
  %999 = xor i32 %996, %998
  %1000 = add nuw nsw i32 %999, %996
  %1001 = icmp eq i32 %1000, 2
  %1002 = zext i1 %1001 to i8
  store i8 %1002, i8* %56, align 1
  %1003 = sext i32 %980 to i64
  store i64 %1003, i64* %RSI.i1613, align 8
  %1004 = shl nsw i64 %1003, 3
  %1005 = add i64 %1004, %975
  %1006 = add i64 %972, 18
  store i64 %1006, i64* %3, align 8
  %1007 = inttoptr i64 %1005 to i64*
  %1008 = load i64, i64* %1007, align 8
  %1009 = load i64, i64* %RAX.i1594, align 8
  %1010 = xor i64 %1009, %1008
  store i64 %1010, i64* %RDX.i1610, align 8
  store i8 0, i8* %51, align 1
  %1011 = trunc i64 %1010 to i32
  %1012 = and i32 %1011, 255
  %1013 = tail call i32 @llvm.ctpop.i32(i32 %1012)
  %1014 = trunc i32 %1013 to i8
  %1015 = and i8 %1014, 1
  %1016 = xor i8 %1015, 1
  store i8 %1016, i8* %52, align 1
  %1017 = icmp eq i64 %1010, 0
  %1018 = zext i1 %1017 to i8
  store i8 %1018, i8* %54, align 1
  %1019 = lshr i64 %1010, 63
  %1020 = trunc i64 %1019 to i8
  store i8 %1020, i8* %55, align 1
  store i8 0, i8* %56, align 1
  store i8 0, i8* %53, align 1
  store i64 %1010, i64* %384, align 1
  store i64 0, i64* %382, align 1
  %1021 = add i64 %970, -72
  %1022 = add i64 %972, 36
  store i64 %1022, i64* %3, align 8
  %1023 = inttoptr i64 %1021 to i64*
  store i64 %1010, i64* %1023, align 8
  %1024 = load i64, i64* %RBP.i, align 8
  %1025 = add i64 %1024, -24
  %1026 = load i64, i64* %3, align 8
  %1027 = add i64 %1026, 4
  store i64 %1027, i64* %3, align 8
  %1028 = inttoptr i64 %1025 to i64*
  %1029 = load i64, i64* %1028, align 8
  store i64 %1029, i64* %RDX.i1610, align 8
  %1030 = add i64 %1024, -40
  %1031 = add i64 %1026, 8
  store i64 %1031, i64* %3, align 8
  %1032 = inttoptr i64 %1030 to i32*
  %1033 = load i32, i32* %1032, align 4
  %1034 = sext i32 %1033 to i64
  store i64 %1034, i64* %RSI.i1613, align 8
  %1035 = shl nsw i64 %1034, 3
  %1036 = add i64 %1035, %1029
  %1037 = add i64 %1026, 13
  store i64 %1037, i64* %3, align 8
  %1038 = inttoptr i64 %1036 to i64*
  %1039 = load i64, i64* %1038, align 8
  store i64 %1039, i64* %384, align 1
  store double 0.000000e+00, double* %383, align 1
  %1040 = add i64 %1024, -80
  %1041 = add i64 %1026, 18
  store i64 %1041, i64* %3, align 8
  %1042 = inttoptr i64 %1040 to i64*
  store i64 %1039, i64* %1042, align 8
  %1043 = load i64, i64* %RBP.i, align 8
  %1044 = add i64 %1043, -24
  %1045 = load i64, i64* %3, align 8
  %1046 = add i64 %1045, 4
  store i64 %1046, i64* %3, align 8
  %1047 = inttoptr i64 %1044 to i64*
  %1048 = load i64, i64* %1047, align 8
  store i64 %1048, i64* %RDX.i1610, align 8
  %1049 = add i64 %1043, -40
  %1050 = add i64 %1045, 7
  store i64 %1050, i64* %3, align 8
  %1051 = inttoptr i64 %1049 to i32*
  %1052 = load i32, i32* %1051, align 4
  %1053 = add i32 %1052, 1
  %1054 = zext i32 %1053 to i64
  store i64 %1054, i64* %RCX.i1565, align 8
  %1055 = icmp eq i32 %1052, -1
  %1056 = icmp eq i32 %1053, 0
  %1057 = or i1 %1055, %1056
  %1058 = zext i1 %1057 to i8
  store i8 %1058, i8* %51, align 1
  %1059 = and i32 %1053, 255
  %1060 = tail call i32 @llvm.ctpop.i32(i32 %1059)
  %1061 = trunc i32 %1060 to i8
  %1062 = and i8 %1061, 1
  %1063 = xor i8 %1062, 1
  store i8 %1063, i8* %52, align 1
  %1064 = xor i32 %1052, %1053
  %1065 = lshr i32 %1064, 4
  %1066 = trunc i32 %1065 to i8
  %1067 = and i8 %1066, 1
  store i8 %1067, i8* %53, align 1
  %1068 = zext i1 %1056 to i8
  store i8 %1068, i8* %54, align 1
  %1069 = lshr i32 %1053, 31
  %1070 = trunc i32 %1069 to i8
  store i8 %1070, i8* %55, align 1
  %1071 = lshr i32 %1052, 31
  %1072 = xor i32 %1069, %1071
  %1073 = add nuw nsw i32 %1072, %1069
  %1074 = icmp eq i32 %1073, 2
  %1075 = zext i1 %1074 to i8
  store i8 %1075, i8* %56, align 1
  %1076 = sext i32 %1053 to i64
  store i64 %1076, i64* %RSI.i1613, align 8
  %1077 = shl nsw i64 %1076, 3
  %1078 = add i64 %1077, %1048
  %1079 = add i64 %1045, 18
  store i64 %1079, i64* %3, align 8
  %1080 = inttoptr i64 %1078 to i64*
  %1081 = load i64, i64* %1080, align 8
  %1082 = load i64, i64* %RAX.i1594, align 8
  %1083 = xor i64 %1082, %1081
  store i64 %1083, i64* %RDX.i1610, align 8
  store i8 0, i8* %51, align 1
  %1084 = trunc i64 %1083 to i32
  %1085 = and i32 %1084, 255
  %1086 = tail call i32 @llvm.ctpop.i32(i32 %1085)
  %1087 = trunc i32 %1086 to i8
  %1088 = and i8 %1087, 1
  %1089 = xor i8 %1088, 1
  store i8 %1089, i8* %52, align 1
  %1090 = icmp eq i64 %1083, 0
  %1091 = zext i1 %1090 to i8
  store i8 %1091, i8* %54, align 1
  %1092 = lshr i64 %1083, 63
  %1093 = trunc i64 %1092 to i8
  store i8 %1093, i8* %55, align 1
  store i8 0, i8* %56, align 1
  store i8 0, i8* %53, align 1
  store i64 %1083, i64* %384, align 1
  store i64 0, i64* %382, align 1
  %1094 = add i64 %1043, -88
  %1095 = add i64 %1045, 36
  store i64 %1095, i64* %3, align 8
  %1096 = inttoptr i64 %1094 to i64*
  store i64 %1083, i64* %1096, align 8
  %1097 = load i64, i64* %RBP.i, align 8
  %1098 = add i64 %1097, -80
  %1099 = load i64, i64* %3, align 8
  %1100 = add i64 %1099, 5
  store i64 %1100, i64* %3, align 8
  %1101 = inttoptr i64 %1098 to i64*
  %1102 = load i64, i64* %1101, align 8
  store i64 %1102, i64* %384, align 1
  store double 0.000000e+00, double* %383, align 1
  %1103 = add i64 %1097, -24
  %1104 = add i64 %1099, 9
  store i64 %1104, i64* %3, align 8
  %1105 = inttoptr i64 %1103 to i64*
  %1106 = load i64, i64* %1105, align 8
  store i64 %1106, i64* %RDX.i1610, align 8
  %1107 = add i64 %1097, -32
  %1108 = add i64 %1099, 13
  store i64 %1108, i64* %3, align 8
  %1109 = inttoptr i64 %1107 to i32*
  %1110 = load i32, i32* %1109, align 4
  %1111 = sext i32 %1110 to i64
  store i64 %1111, i64* %RSI.i1613, align 8
  %1112 = shl nsw i64 %1111, 3
  %1113 = add i64 %1112, %1106
  %1114 = add i64 %1099, 18
  store i64 %1114, i64* %3, align 8
  %1115 = inttoptr i64 %1113 to i64*
  store i64 %1102, i64* %1115, align 8
  %1116 = load i64, i64* %RBP.i, align 8
  %1117 = add i64 %1116, -88
  %1118 = load i64, i64* %3, align 8
  %1119 = add i64 %1118, 5
  store i64 %1119, i64* %3, align 8
  %1120 = inttoptr i64 %1117 to i64*
  %1121 = load i64, i64* %1120, align 8
  store i64 %1121, i64* %384, align 1
  store double 0.000000e+00, double* %383, align 1
  %1122 = add i64 %1116, -24
  %1123 = add i64 %1118, 9
  store i64 %1123, i64* %3, align 8
  %1124 = inttoptr i64 %1122 to i64*
  %1125 = load i64, i64* %1124, align 8
  store i64 %1125, i64* %RDX.i1610, align 8
  %1126 = add i64 %1116, -32
  %1127 = add i64 %1118, 12
  store i64 %1127, i64* %3, align 8
  %1128 = inttoptr i64 %1126 to i32*
  %1129 = load i32, i32* %1128, align 4
  %1130 = add i32 %1129, 1
  %1131 = zext i32 %1130 to i64
  store i64 %1131, i64* %RCX.i1565, align 8
  %1132 = icmp eq i32 %1129, -1
  %1133 = icmp eq i32 %1130, 0
  %1134 = or i1 %1132, %1133
  %1135 = zext i1 %1134 to i8
  store i8 %1135, i8* %51, align 1
  %1136 = and i32 %1130, 255
  %1137 = tail call i32 @llvm.ctpop.i32(i32 %1136)
  %1138 = trunc i32 %1137 to i8
  %1139 = and i8 %1138, 1
  %1140 = xor i8 %1139, 1
  store i8 %1140, i8* %52, align 1
  %1141 = xor i32 %1129, %1130
  %1142 = lshr i32 %1141, 4
  %1143 = trunc i32 %1142 to i8
  %1144 = and i8 %1143, 1
  store i8 %1144, i8* %53, align 1
  %1145 = zext i1 %1133 to i8
  store i8 %1145, i8* %54, align 1
  %1146 = lshr i32 %1130, 31
  %1147 = trunc i32 %1146 to i8
  store i8 %1147, i8* %55, align 1
  %1148 = lshr i32 %1129, 31
  %1149 = xor i32 %1146, %1148
  %1150 = add nuw nsw i32 %1149, %1146
  %1151 = icmp eq i32 %1150, 2
  %1152 = zext i1 %1151 to i8
  store i8 %1152, i8* %56, align 1
  %1153 = sext i32 %1130 to i64
  store i64 %1153, i64* %RSI.i1613, align 8
  %1154 = shl nsw i64 %1153, 3
  %1155 = add i64 %1154, %1125
  %1156 = add i64 %1118, 23
  store i64 %1156, i64* %3, align 8
  %1157 = inttoptr i64 %1155 to i64*
  store i64 %1121, i64* %1157, align 8
  %1158 = load i64, i64* %RBP.i, align 8
  %1159 = add i64 %1158, -64
  %1160 = load i64, i64* %3, align 8
  %1161 = add i64 %1160, 5
  store i64 %1161, i64* %3, align 8
  %1162 = inttoptr i64 %1159 to i64*
  %1163 = load i64, i64* %1162, align 8
  store i64 %1163, i64* %384, align 1
  store double 0.000000e+00, double* %383, align 1
  %1164 = add i64 %1158, -24
  %1165 = add i64 %1160, 9
  store i64 %1165, i64* %3, align 8
  %1166 = inttoptr i64 %1164 to i64*
  %1167 = load i64, i64* %1166, align 8
  store i64 %1167, i64* %RDX.i1610, align 8
  %1168 = add i64 %1158, -40
  %1169 = add i64 %1160, 13
  store i64 %1169, i64* %3, align 8
  %1170 = inttoptr i64 %1168 to i32*
  %1171 = load i32, i32* %1170, align 4
  %1172 = sext i32 %1171 to i64
  store i64 %1172, i64* %RSI.i1613, align 8
  %1173 = shl nsw i64 %1172, 3
  %1174 = add i64 %1173, %1167
  %1175 = add i64 %1160, 18
  store i64 %1175, i64* %3, align 8
  %1176 = inttoptr i64 %1174 to i64*
  store i64 %1163, i64* %1176, align 8
  %1177 = load i64, i64* %RBP.i, align 8
  %1178 = add i64 %1177, -72
  %1179 = load i64, i64* %3, align 8
  %1180 = add i64 %1179, 5
  store i64 %1180, i64* %3, align 8
  %1181 = inttoptr i64 %1178 to i64*
  %1182 = load i64, i64* %1181, align 8
  store i64 %1182, i64* %384, align 1
  store double 0.000000e+00, double* %383, align 1
  %1183 = add i64 %1177, -24
  %1184 = add i64 %1179, 9
  store i64 %1184, i64* %3, align 8
  %1185 = inttoptr i64 %1183 to i64*
  %1186 = load i64, i64* %1185, align 8
  store i64 %1186, i64* %RDX.i1610, align 8
  %1187 = add i64 %1177, -40
  %1188 = add i64 %1179, 12
  store i64 %1188, i64* %3, align 8
  %1189 = inttoptr i64 %1187 to i32*
  %1190 = load i32, i32* %1189, align 4
  %1191 = add i32 %1190, 1
  %1192 = zext i32 %1191 to i64
  store i64 %1192, i64* %RCX.i1565, align 8
  %1193 = icmp eq i32 %1190, -1
  %1194 = icmp eq i32 %1191, 0
  %1195 = or i1 %1193, %1194
  %1196 = zext i1 %1195 to i8
  store i8 %1196, i8* %51, align 1
  %1197 = and i32 %1191, 255
  %1198 = tail call i32 @llvm.ctpop.i32(i32 %1197)
  %1199 = trunc i32 %1198 to i8
  %1200 = and i8 %1199, 1
  %1201 = xor i8 %1200, 1
  store i8 %1201, i8* %52, align 1
  %1202 = xor i32 %1190, %1191
  %1203 = lshr i32 %1202, 4
  %1204 = trunc i32 %1203 to i8
  %1205 = and i8 %1204, 1
  store i8 %1205, i8* %53, align 1
  %1206 = zext i1 %1194 to i8
  store i8 %1206, i8* %54, align 1
  %1207 = lshr i32 %1191, 31
  %1208 = trunc i32 %1207 to i8
  store i8 %1208, i8* %55, align 1
  %1209 = lshr i32 %1190, 31
  %1210 = xor i32 %1207, %1209
  %1211 = add nuw nsw i32 %1210, %1207
  %1212 = icmp eq i32 %1211, 2
  %1213 = zext i1 %1212 to i8
  store i8 %1213, i8* %56, align 1
  %1214 = sext i32 %1191 to i64
  store i64 %1214, i64* %RSI.i1613, align 8
  %1215 = shl nsw i64 %1214, 3
  %1216 = add i64 %1215, %1186
  %1217 = add i64 %1179, 23
  store i64 %1217, i64* %3, align 8
  %1218 = inttoptr i64 %1216 to i64*
  store i64 %1182, i64* %1218, align 8
  %1219 = load i64, i64* %RBP.i, align 8
  %1220 = add i64 %1219, -52
  %1221 = load i64, i64* %3, align 8
  %1222 = add i64 %1221, 3
  store i64 %1222, i64* %3, align 8
  %1223 = inttoptr i64 %1220 to i32*
  %1224 = load i32, i32* %1223, align 4
  %1225 = zext i32 %1224 to i64
  store i64 %1225, i64* %RCX.i1565, align 8
  %1226 = add i64 %1219, -32
  %1227 = add i64 %1221, 6
  store i64 %1227, i64* %3, align 8
  %1228 = inttoptr i64 %1226 to i32*
  %1229 = load i32, i32* %1228, align 4
  %1230 = add i32 %1229, %1224
  %1231 = zext i32 %1230 to i64
  store i64 %1231, i64* %RCX.i1565, align 8
  %1232 = icmp ult i32 %1230, %1224
  %1233 = icmp ult i32 %1230, %1229
  %1234 = or i1 %1232, %1233
  %1235 = zext i1 %1234 to i8
  store i8 %1235, i8* %51, align 1
  %1236 = and i32 %1230, 255
  %1237 = tail call i32 @llvm.ctpop.i32(i32 %1236)
  %1238 = trunc i32 %1237 to i8
  %1239 = and i8 %1238, 1
  %1240 = xor i8 %1239, 1
  store i8 %1240, i8* %52, align 1
  %1241 = xor i32 %1229, %1224
  %1242 = xor i32 %1241, %1230
  %1243 = lshr i32 %1242, 4
  %1244 = trunc i32 %1243 to i8
  %1245 = and i8 %1244, 1
  store i8 %1245, i8* %53, align 1
  %1246 = icmp eq i32 %1230, 0
  %1247 = zext i1 %1246 to i8
  store i8 %1247, i8* %54, align 1
  %1248 = lshr i32 %1230, 31
  %1249 = trunc i32 %1248 to i8
  store i8 %1249, i8* %55, align 1
  %1250 = lshr i32 %1224, 31
  %1251 = lshr i32 %1229, 31
  %1252 = xor i32 %1248, %1250
  %1253 = xor i32 %1248, %1251
  %1254 = add nuw nsw i32 %1252, %1253
  %1255 = icmp eq i32 %1254, 2
  %1256 = zext i1 %1255 to i8
  store i8 %1256, i8* %56, align 1
  %1257 = add i64 %1221, 9
  store i64 %1257, i64* %3, align 8
  store i32 %1230, i32* %1228, align 4
  %1258 = load i64, i64* %RBP.i, align 8
  %1259 = add i64 %1258, -52
  %1260 = load i64, i64* %3, align 8
  %1261 = add i64 %1260, 3
  store i64 %1261, i64* %3, align 8
  %1262 = inttoptr i64 %1259 to i32*
  %1263 = load i32, i32* %1262, align 4
  %1264 = zext i32 %1263 to i64
  store i64 %1264, i64* %RCX.i1565, align 8
  %1265 = add i64 %1258, -40
  %1266 = add i64 %1260, 6
  store i64 %1266, i64* %3, align 8
  %1267 = inttoptr i64 %1265 to i32*
  %1268 = load i32, i32* %1267, align 4
  %1269 = sub i32 %1268, %1263
  %1270 = zext i32 %1269 to i64
  store i64 %1270, i64* %RDI.i1602, align 8
  %1271 = icmp ult i32 %1268, %1263
  %1272 = zext i1 %1271 to i8
  store i8 %1272, i8* %51, align 1
  %1273 = and i32 %1269, 255
  %1274 = tail call i32 @llvm.ctpop.i32(i32 %1273)
  %1275 = trunc i32 %1274 to i8
  %1276 = and i8 %1275, 1
  %1277 = xor i8 %1276, 1
  store i8 %1277, i8* %52, align 1
  %1278 = xor i32 %1263, %1268
  %1279 = xor i32 %1278, %1269
  %1280 = lshr i32 %1279, 4
  %1281 = trunc i32 %1280 to i8
  %1282 = and i8 %1281, 1
  store i8 %1282, i8* %53, align 1
  %1283 = icmp eq i32 %1269, 0
  %1284 = zext i1 %1283 to i8
  store i8 %1284, i8* %54, align 1
  %1285 = lshr i32 %1269, 31
  %1286 = trunc i32 %1285 to i8
  store i8 %1286, i8* %55, align 1
  %1287 = lshr i32 %1268, 31
  %1288 = lshr i32 %1263, 31
  %1289 = xor i32 %1288, %1287
  %1290 = xor i32 %1285, %1287
  %1291 = add nuw nsw i32 %1290, %1289
  %1292 = icmp eq i32 %1291, 2
  %1293 = zext i1 %1292 to i8
  store i8 %1293, i8* %56, align 1
  %1294 = add i64 %1260, 11
  store i64 %1294, i64* %3, align 8
  store i32 %1269, i32* %1267, align 4
  %1295 = load i64, i64* %RBP.i, align 8
  %1296 = add i64 %1295, -24
  %1297 = load i64, i64* %3, align 8
  %1298 = add i64 %1297, 4
  store i64 %1298, i64* %3, align 8
  %1299 = inttoptr i64 %1296 to i64*
  %1300 = load i64, i64* %1299, align 8
  store i64 %1300, i64* %RDX.i1610, align 8
  %1301 = add i64 %1295, -32
  %1302 = add i64 %1297, 8
  store i64 %1302, i64* %3, align 8
  %1303 = inttoptr i64 %1301 to i32*
  %1304 = load i32, i32* %1303, align 4
  %1305 = sext i32 %1304 to i64
  store i64 %1305, i64* %RSI.i1613, align 8
  %1306 = shl nsw i64 %1305, 3
  %1307 = add i64 %1306, %1300
  %1308 = add i64 %1297, 13
  store i64 %1308, i64* %3, align 8
  %1309 = inttoptr i64 %1307 to i64*
  %1310 = load i64, i64* %1309, align 8
  store i64 %1310, i64* %384, align 1
  store double 0.000000e+00, double* %383, align 1
  %1311 = add i64 %1295, -64
  %1312 = add i64 %1297, 18
  store i64 %1312, i64* %3, align 8
  %1313 = inttoptr i64 %1311 to i64*
  store i64 %1310, i64* %1313, align 8
  %1314 = load i64, i64* %RBP.i, align 8
  %1315 = add i64 %1314, -24
  %1316 = load i64, i64* %3, align 8
  %1317 = add i64 %1316, 4
  store i64 %1317, i64* %3, align 8
  %1318 = inttoptr i64 %1315 to i64*
  %1319 = load i64, i64* %1318, align 8
  store i64 %1319, i64* %RDX.i1610, align 8
  %1320 = add i64 %1314, -32
  %1321 = add i64 %1316, 7
  store i64 %1321, i64* %3, align 8
  %1322 = inttoptr i64 %1320 to i32*
  %1323 = load i32, i32* %1322, align 4
  %1324 = add i32 %1323, 1
  %1325 = zext i32 %1324 to i64
  store i64 %1325, i64* %RCX.i1565, align 8
  %1326 = icmp eq i32 %1323, -1
  %1327 = icmp eq i32 %1324, 0
  %1328 = or i1 %1326, %1327
  %1329 = zext i1 %1328 to i8
  store i8 %1329, i8* %51, align 1
  %1330 = and i32 %1324, 255
  %1331 = tail call i32 @llvm.ctpop.i32(i32 %1330)
  %1332 = trunc i32 %1331 to i8
  %1333 = and i8 %1332, 1
  %1334 = xor i8 %1333, 1
  store i8 %1334, i8* %52, align 1
  %1335 = xor i32 %1323, %1324
  %1336 = lshr i32 %1335, 4
  %1337 = trunc i32 %1336 to i8
  %1338 = and i8 %1337, 1
  store i8 %1338, i8* %53, align 1
  %1339 = zext i1 %1327 to i8
  store i8 %1339, i8* %54, align 1
  %1340 = lshr i32 %1324, 31
  %1341 = trunc i32 %1340 to i8
  store i8 %1341, i8* %55, align 1
  %1342 = lshr i32 %1323, 31
  %1343 = xor i32 %1340, %1342
  %1344 = add nuw nsw i32 %1343, %1340
  %1345 = icmp eq i32 %1344, 2
  %1346 = zext i1 %1345 to i8
  store i8 %1346, i8* %56, align 1
  %1347 = sext i32 %1324 to i64
  store i64 %1347, i64* %RSI.i1613, align 8
  %1348 = shl nsw i64 %1347, 3
  %1349 = add i64 %1348, %1319
  %1350 = add i64 %1316, 18
  store i64 %1350, i64* %3, align 8
  %1351 = inttoptr i64 %1349 to i64*
  %1352 = load i64, i64* %1351, align 8
  %1353 = load i64, i64* %RAX.i1594, align 8
  %1354 = xor i64 %1353, %1352
  store i64 %1354, i64* %RDX.i1610, align 8
  store i8 0, i8* %51, align 1
  %1355 = trunc i64 %1354 to i32
  %1356 = and i32 %1355, 255
  %1357 = tail call i32 @llvm.ctpop.i32(i32 %1356)
  %1358 = trunc i32 %1357 to i8
  %1359 = and i8 %1358, 1
  %1360 = xor i8 %1359, 1
  store i8 %1360, i8* %52, align 1
  %1361 = icmp eq i64 %1354, 0
  %1362 = zext i1 %1361 to i8
  store i8 %1362, i8* %54, align 1
  %1363 = lshr i64 %1354, 63
  %1364 = trunc i64 %1363 to i8
  store i8 %1364, i8* %55, align 1
  store i8 0, i8* %56, align 1
  store i8 0, i8* %53, align 1
  store i64 %1354, i64* %384, align 1
  store i64 0, i64* %382, align 1
  %1365 = add i64 %1314, -72
  %1366 = add i64 %1316, 36
  store i64 %1366, i64* %3, align 8
  %1367 = inttoptr i64 %1365 to i64*
  store i64 %1354, i64* %1367, align 8
  %1368 = load i64, i64* %RBP.i, align 8
  %1369 = add i64 %1368, -24
  %1370 = load i64, i64* %3, align 8
  %1371 = add i64 %1370, 4
  store i64 %1371, i64* %3, align 8
  %1372 = inttoptr i64 %1369 to i64*
  %1373 = load i64, i64* %1372, align 8
  store i64 %1373, i64* %RDX.i1610, align 8
  %1374 = add i64 %1368, -40
  %1375 = add i64 %1370, 8
  store i64 %1375, i64* %3, align 8
  %1376 = inttoptr i64 %1374 to i32*
  %1377 = load i32, i32* %1376, align 4
  %1378 = sext i32 %1377 to i64
  store i64 %1378, i64* %RSI.i1613, align 8
  %1379 = shl nsw i64 %1378, 3
  %1380 = add i64 %1379, %1373
  %1381 = add i64 %1370, 13
  store i64 %1381, i64* %3, align 8
  %1382 = inttoptr i64 %1380 to i64*
  %1383 = load i64, i64* %1382, align 8
  store i64 %1383, i64* %384, align 1
  store double 0.000000e+00, double* %383, align 1
  %1384 = add i64 %1368, -80
  %1385 = add i64 %1370, 18
  store i64 %1385, i64* %3, align 8
  %1386 = inttoptr i64 %1384 to i64*
  store i64 %1383, i64* %1386, align 8
  %1387 = load i64, i64* %RBP.i, align 8
  %1388 = add i64 %1387, -24
  %1389 = load i64, i64* %3, align 8
  %1390 = add i64 %1389, 4
  store i64 %1390, i64* %3, align 8
  %1391 = inttoptr i64 %1388 to i64*
  %1392 = load i64, i64* %1391, align 8
  store i64 %1392, i64* %RDX.i1610, align 8
  %1393 = add i64 %1387, -40
  %1394 = add i64 %1389, 7
  store i64 %1394, i64* %3, align 8
  %1395 = inttoptr i64 %1393 to i32*
  %1396 = load i32, i32* %1395, align 4
  %1397 = add i32 %1396, 1
  %1398 = zext i32 %1397 to i64
  store i64 %1398, i64* %RCX.i1565, align 8
  %1399 = icmp eq i32 %1396, -1
  %1400 = icmp eq i32 %1397, 0
  %1401 = or i1 %1399, %1400
  %1402 = zext i1 %1401 to i8
  store i8 %1402, i8* %51, align 1
  %1403 = and i32 %1397, 255
  %1404 = tail call i32 @llvm.ctpop.i32(i32 %1403)
  %1405 = trunc i32 %1404 to i8
  %1406 = and i8 %1405, 1
  %1407 = xor i8 %1406, 1
  store i8 %1407, i8* %52, align 1
  %1408 = xor i32 %1396, %1397
  %1409 = lshr i32 %1408, 4
  %1410 = trunc i32 %1409 to i8
  %1411 = and i8 %1410, 1
  store i8 %1411, i8* %53, align 1
  %1412 = zext i1 %1400 to i8
  store i8 %1412, i8* %54, align 1
  %1413 = lshr i32 %1397, 31
  %1414 = trunc i32 %1413 to i8
  store i8 %1414, i8* %55, align 1
  %1415 = lshr i32 %1396, 31
  %1416 = xor i32 %1413, %1415
  %1417 = add nuw nsw i32 %1416, %1413
  %1418 = icmp eq i32 %1417, 2
  %1419 = zext i1 %1418 to i8
  store i8 %1419, i8* %56, align 1
  %1420 = sext i32 %1397 to i64
  store i64 %1420, i64* %RSI.i1613, align 8
  %1421 = shl nsw i64 %1420, 3
  %1422 = add i64 %1421, %1392
  %1423 = add i64 %1389, 18
  store i64 %1423, i64* %3, align 8
  %1424 = inttoptr i64 %1422 to i64*
  %1425 = load i64, i64* %1424, align 8
  %1426 = load i64, i64* %RAX.i1594, align 8
  %1427 = xor i64 %1426, %1425
  store i64 %1427, i64* %RDX.i1610, align 8
  store i8 0, i8* %51, align 1
  %1428 = trunc i64 %1427 to i32
  %1429 = and i32 %1428, 255
  %1430 = tail call i32 @llvm.ctpop.i32(i32 %1429)
  %1431 = trunc i32 %1430 to i8
  %1432 = and i8 %1431, 1
  %1433 = xor i8 %1432, 1
  store i8 %1433, i8* %52, align 1
  %1434 = icmp eq i64 %1427, 0
  %1435 = zext i1 %1434 to i8
  store i8 %1435, i8* %54, align 1
  %1436 = lshr i64 %1427, 63
  %1437 = trunc i64 %1436 to i8
  store i8 %1437, i8* %55, align 1
  store i8 0, i8* %56, align 1
  store i8 0, i8* %53, align 1
  store i64 %1427, i64* %384, align 1
  store i64 0, i64* %382, align 1
  %1438 = add i64 %1387, -88
  %1439 = add i64 %1389, 36
  store i64 %1439, i64* %3, align 8
  %1440 = inttoptr i64 %1438 to i64*
  store i64 %1427, i64* %1440, align 8
  %1441 = load i64, i64* %RBP.i, align 8
  %1442 = add i64 %1441, -80
  %1443 = load i64, i64* %3, align 8
  %1444 = add i64 %1443, 5
  store i64 %1444, i64* %3, align 8
  %1445 = inttoptr i64 %1442 to i64*
  %1446 = load i64, i64* %1445, align 8
  store i64 %1446, i64* %384, align 1
  store double 0.000000e+00, double* %383, align 1
  %1447 = add i64 %1441, -24
  %1448 = add i64 %1443, 9
  store i64 %1448, i64* %3, align 8
  %1449 = inttoptr i64 %1447 to i64*
  %1450 = load i64, i64* %1449, align 8
  store i64 %1450, i64* %RDX.i1610, align 8
  %1451 = add i64 %1441, -32
  %1452 = add i64 %1443, 13
  store i64 %1452, i64* %3, align 8
  %1453 = inttoptr i64 %1451 to i32*
  %1454 = load i32, i32* %1453, align 4
  %1455 = sext i32 %1454 to i64
  store i64 %1455, i64* %RSI.i1613, align 8
  %1456 = shl nsw i64 %1455, 3
  %1457 = add i64 %1456, %1450
  %1458 = add i64 %1443, 18
  store i64 %1458, i64* %3, align 8
  %1459 = inttoptr i64 %1457 to i64*
  store i64 %1446, i64* %1459, align 8
  %1460 = load i64, i64* %RBP.i, align 8
  %1461 = add i64 %1460, -88
  %1462 = load i64, i64* %3, align 8
  %1463 = add i64 %1462, 5
  store i64 %1463, i64* %3, align 8
  %1464 = inttoptr i64 %1461 to i64*
  %1465 = load i64, i64* %1464, align 8
  store i64 %1465, i64* %384, align 1
  store double 0.000000e+00, double* %383, align 1
  %1466 = add i64 %1460, -24
  %1467 = add i64 %1462, 9
  store i64 %1467, i64* %3, align 8
  %1468 = inttoptr i64 %1466 to i64*
  %1469 = load i64, i64* %1468, align 8
  store i64 %1469, i64* %RDX.i1610, align 8
  %1470 = add i64 %1460, -32
  %1471 = add i64 %1462, 12
  store i64 %1471, i64* %3, align 8
  %1472 = inttoptr i64 %1470 to i32*
  %1473 = load i32, i32* %1472, align 4
  %1474 = add i32 %1473, 1
  %1475 = zext i32 %1474 to i64
  store i64 %1475, i64* %RCX.i1565, align 8
  %1476 = icmp eq i32 %1473, -1
  %1477 = icmp eq i32 %1474, 0
  %1478 = or i1 %1476, %1477
  %1479 = zext i1 %1478 to i8
  store i8 %1479, i8* %51, align 1
  %1480 = and i32 %1474, 255
  %1481 = tail call i32 @llvm.ctpop.i32(i32 %1480)
  %1482 = trunc i32 %1481 to i8
  %1483 = and i8 %1482, 1
  %1484 = xor i8 %1483, 1
  store i8 %1484, i8* %52, align 1
  %1485 = xor i32 %1473, %1474
  %1486 = lshr i32 %1485, 4
  %1487 = trunc i32 %1486 to i8
  %1488 = and i8 %1487, 1
  store i8 %1488, i8* %53, align 1
  %1489 = zext i1 %1477 to i8
  store i8 %1489, i8* %54, align 1
  %1490 = lshr i32 %1474, 31
  %1491 = trunc i32 %1490 to i8
  store i8 %1491, i8* %55, align 1
  %1492 = lshr i32 %1473, 31
  %1493 = xor i32 %1490, %1492
  %1494 = add nuw nsw i32 %1493, %1490
  %1495 = icmp eq i32 %1494, 2
  %1496 = zext i1 %1495 to i8
  store i8 %1496, i8* %56, align 1
  %1497 = sext i32 %1474 to i64
  store i64 %1497, i64* %RSI.i1613, align 8
  %1498 = shl nsw i64 %1497, 3
  %1499 = add i64 %1498, %1469
  %1500 = add i64 %1462, 23
  store i64 %1500, i64* %3, align 8
  %1501 = inttoptr i64 %1499 to i64*
  store i64 %1465, i64* %1501, align 8
  %1502 = load i64, i64* %RBP.i, align 8
  %1503 = add i64 %1502, -64
  %1504 = load i64, i64* %3, align 8
  %1505 = add i64 %1504, 5
  store i64 %1505, i64* %3, align 8
  %1506 = inttoptr i64 %1503 to i64*
  %1507 = load i64, i64* %1506, align 8
  store i64 %1507, i64* %384, align 1
  store double 0.000000e+00, double* %383, align 1
  %1508 = add i64 %1502, -24
  %1509 = add i64 %1504, 9
  store i64 %1509, i64* %3, align 8
  %1510 = inttoptr i64 %1508 to i64*
  %1511 = load i64, i64* %1510, align 8
  store i64 %1511, i64* %RDX.i1610, align 8
  %1512 = add i64 %1502, -40
  %1513 = add i64 %1504, 13
  store i64 %1513, i64* %3, align 8
  %1514 = inttoptr i64 %1512 to i32*
  %1515 = load i32, i32* %1514, align 4
  %1516 = sext i32 %1515 to i64
  store i64 %1516, i64* %RSI.i1613, align 8
  %1517 = shl nsw i64 %1516, 3
  %1518 = add i64 %1517, %1511
  %1519 = add i64 %1504, 18
  store i64 %1519, i64* %3, align 8
  %1520 = inttoptr i64 %1518 to i64*
  store i64 %1507, i64* %1520, align 8
  %1521 = load i64, i64* %RBP.i, align 8
  %1522 = add i64 %1521, -72
  %1523 = load i64, i64* %3, align 8
  %1524 = add i64 %1523, 5
  store i64 %1524, i64* %3, align 8
  %1525 = inttoptr i64 %1522 to i64*
  %1526 = load i64, i64* %1525, align 8
  store i64 %1526, i64* %384, align 1
  store double 0.000000e+00, double* %383, align 1
  %1527 = add i64 %1521, -24
  %1528 = add i64 %1523, 9
  store i64 %1528, i64* %3, align 8
  %1529 = inttoptr i64 %1527 to i64*
  %1530 = load i64, i64* %1529, align 8
  store i64 %1530, i64* %RDX.i1610, align 8
  %1531 = add i64 %1521, -40
  %1532 = add i64 %1523, 12
  store i64 %1532, i64* %3, align 8
  %1533 = inttoptr i64 %1531 to i32*
  %1534 = load i32, i32* %1533, align 4
  %1535 = add i32 %1534, 1
  %1536 = zext i32 %1535 to i64
  store i64 %1536, i64* %RCX.i1565, align 8
  %1537 = icmp eq i32 %1534, -1
  %1538 = icmp eq i32 %1535, 0
  %1539 = or i1 %1537, %1538
  %1540 = zext i1 %1539 to i8
  store i8 %1540, i8* %51, align 1
  %1541 = and i32 %1535, 255
  %1542 = tail call i32 @llvm.ctpop.i32(i32 %1541)
  %1543 = trunc i32 %1542 to i8
  %1544 = and i8 %1543, 1
  %1545 = xor i8 %1544, 1
  store i8 %1545, i8* %52, align 1
  %1546 = xor i32 %1534, %1535
  %1547 = lshr i32 %1546, 4
  %1548 = trunc i32 %1547 to i8
  %1549 = and i8 %1548, 1
  store i8 %1549, i8* %53, align 1
  %1550 = zext i1 %1538 to i8
  store i8 %1550, i8* %54, align 1
  %1551 = lshr i32 %1535, 31
  %1552 = trunc i32 %1551 to i8
  store i8 %1552, i8* %55, align 1
  %1553 = lshr i32 %1534, 31
  %1554 = xor i32 %1551, %1553
  %1555 = add nuw nsw i32 %1554, %1551
  %1556 = icmp eq i32 %1555, 2
  %1557 = zext i1 %1556 to i8
  store i8 %1557, i8* %56, align 1
  %1558 = sext i32 %1535 to i64
  store i64 %1558, i64* %RSI.i1613, align 8
  %1559 = shl nsw i64 %1558, 3
  %1560 = add i64 %1559, %1530
  %1561 = add i64 %1523, 23
  store i64 %1561, i64* %3, align 8
  %1562 = inttoptr i64 %1560 to i64*
  store i64 %1526, i64* %1562, align 8
  %1563 = load i64, i64* %RBP.i, align 8
  %1564 = add i64 %1563, -52
  %1565 = load i64, i64* %3, align 8
  %1566 = add i64 %1565, 3
  store i64 %1566, i64* %3, align 8
  %1567 = inttoptr i64 %1564 to i32*
  %1568 = load i32, i32* %1567, align 4
  %1569 = zext i32 %1568 to i64
  store i64 %1569, i64* %RCX.i1565, align 8
  %1570 = add i64 %1563, -32
  %1571 = add i64 %1565, 6
  store i64 %1571, i64* %3, align 8
  %1572 = inttoptr i64 %1570 to i32*
  %1573 = load i32, i32* %1572, align 4
  %1574 = add i32 %1573, %1568
  %1575 = zext i32 %1574 to i64
  store i64 %1575, i64* %RCX.i1565, align 8
  %1576 = icmp ult i32 %1574, %1568
  %1577 = icmp ult i32 %1574, %1573
  %1578 = or i1 %1576, %1577
  %1579 = zext i1 %1578 to i8
  store i8 %1579, i8* %51, align 1
  %1580 = and i32 %1574, 255
  %1581 = tail call i32 @llvm.ctpop.i32(i32 %1580)
  %1582 = trunc i32 %1581 to i8
  %1583 = and i8 %1582, 1
  %1584 = xor i8 %1583, 1
  store i8 %1584, i8* %52, align 1
  %1585 = xor i32 %1573, %1568
  %1586 = xor i32 %1585, %1574
  %1587 = lshr i32 %1586, 4
  %1588 = trunc i32 %1587 to i8
  %1589 = and i8 %1588, 1
  store i8 %1589, i8* %53, align 1
  %1590 = icmp eq i32 %1574, 0
  %1591 = zext i1 %1590 to i8
  store i8 %1591, i8* %54, align 1
  %1592 = lshr i32 %1574, 31
  %1593 = trunc i32 %1592 to i8
  store i8 %1593, i8* %55, align 1
  %1594 = lshr i32 %1568, 31
  %1595 = lshr i32 %1573, 31
  %1596 = xor i32 %1592, %1594
  %1597 = xor i32 %1592, %1595
  %1598 = add nuw nsw i32 %1596, %1597
  %1599 = icmp eq i32 %1598, 2
  %1600 = zext i1 %1599 to i8
  store i8 %1600, i8* %56, align 1
  %1601 = add i64 %1565, 9
  store i64 %1601, i64* %3, align 8
  store i32 %1574, i32* %1572, align 4
  %1602 = load i64, i64* %RBP.i, align 8
  %1603 = add i64 %1602, -52
  %1604 = load i64, i64* %3, align 8
  %1605 = add i64 %1604, 3
  store i64 %1605, i64* %3, align 8
  %1606 = inttoptr i64 %1603 to i32*
  %1607 = load i32, i32* %1606, align 4
  %1608 = shl i32 %1607, 1
  %1609 = icmp slt i32 %1607, 0
  %1610 = icmp slt i32 %1608, 0
  %1611 = xor i1 %1609, %1610
  %1612 = zext i32 %1608 to i64
  store i64 %1612, i64* %RCX.i1565, align 8
  %.lobit16 = lshr i32 %1607, 31
  %1613 = trunc i32 %.lobit16 to i8
  store i8 %1613, i8* %51, align 1
  %1614 = and i32 %1608, 254
  %1615 = tail call i32 @llvm.ctpop.i32(i32 %1614)
  %1616 = trunc i32 %1615 to i8
  %1617 = and i8 %1616, 1
  %1618 = xor i8 %1617, 1
  store i8 %1618, i8* %52, align 1
  store i8 0, i8* %53, align 1
  %1619 = icmp eq i32 %1608, 0
  %1620 = zext i1 %1619 to i8
  store i8 %1620, i8* %54, align 1
  %1621 = lshr i32 %1607, 30
  %1622 = and i32 %1621, 1
  %1623 = trunc i32 %1622 to i8
  store i8 %1623, i8* %55, align 1
  %1624 = zext i1 %1611 to i8
  store i8 %1624, i8* %56, align 1
  %1625 = add i64 %1602, -40
  %1626 = add i64 %1604, 9
  store i64 %1626, i64* %3, align 8
  %1627 = inttoptr i64 %1625 to i32*
  %1628 = load i32, i32* %1627, align 4
  %1629 = add i32 %1628, %1608
  %1630 = zext i32 %1629 to i64
  store i64 %1630, i64* %RCX.i1565, align 8
  %1631 = icmp ult i32 %1629, %1608
  %1632 = icmp ult i32 %1629, %1628
  %1633 = or i1 %1631, %1632
  %1634 = zext i1 %1633 to i8
  store i8 %1634, i8* %51, align 1
  %1635 = and i32 %1629, 255
  %1636 = tail call i32 @llvm.ctpop.i32(i32 %1635)
  %1637 = trunc i32 %1636 to i8
  %1638 = and i8 %1637, 1
  %1639 = xor i8 %1638, 1
  store i8 %1639, i8* %52, align 1
  %1640 = xor i32 %1628, %1608
  %1641 = xor i32 %1640, %1629
  %1642 = lshr i32 %1641, 4
  %1643 = trunc i32 %1642 to i8
  %1644 = and i8 %1643, 1
  store i8 %1644, i8* %53, align 1
  %1645 = icmp eq i32 %1629, 0
  %1646 = zext i1 %1645 to i8
  store i8 %1646, i8* %54, align 1
  %1647 = lshr i32 %1629, 31
  %1648 = trunc i32 %1647 to i8
  store i8 %1648, i8* %55, align 1
  %1649 = lshr i32 %1628, 31
  %1650 = xor i32 %1647, %1622
  %1651 = xor i32 %1647, %1649
  %1652 = add nuw nsw i32 %1650, %1651
  %1653 = icmp eq i32 %1652, 2
  %1654 = zext i1 %1653 to i8
  store i8 %1654, i8* %56, align 1
  %1655 = add i64 %1604, 12
  store i64 %1655, i64* %3, align 8
  store i32 %1629, i32* %1627, align 4
  %1656 = load i64, i64* %RBP.i, align 8
  %1657 = add i64 %1656, -24
  %1658 = load i64, i64* %3, align 8
  %1659 = add i64 %1658, 4
  store i64 %1659, i64* %3, align 8
  %1660 = inttoptr i64 %1657 to i64*
  %1661 = load i64, i64* %1660, align 8
  store i64 %1661, i64* %RDX.i1610, align 8
  %1662 = add i64 %1656, -32
  %1663 = add i64 %1658, 8
  store i64 %1663, i64* %3, align 8
  %1664 = inttoptr i64 %1662 to i32*
  %1665 = load i32, i32* %1664, align 4
  %1666 = sext i32 %1665 to i64
  store i64 %1666, i64* %RSI.i1613, align 8
  %1667 = shl nsw i64 %1666, 3
  %1668 = add i64 %1667, %1661
  %1669 = add i64 %1658, 13
  store i64 %1669, i64* %3, align 8
  %1670 = inttoptr i64 %1668 to i64*
  %1671 = load i64, i64* %1670, align 8
  store i64 %1671, i64* %384, align 1
  store double 0.000000e+00, double* %383, align 1
  %1672 = add i64 %1656, -64
  %1673 = add i64 %1658, 18
  store i64 %1673, i64* %3, align 8
  %1674 = inttoptr i64 %1672 to i64*
  store i64 %1671, i64* %1674, align 8
  %1675 = load i64, i64* %RBP.i, align 8
  %1676 = add i64 %1675, -24
  %1677 = load i64, i64* %3, align 8
  %1678 = add i64 %1677, 4
  store i64 %1678, i64* %3, align 8
  %1679 = inttoptr i64 %1676 to i64*
  %1680 = load i64, i64* %1679, align 8
  store i64 %1680, i64* %RDX.i1610, align 8
  %1681 = add i64 %1675, -32
  %1682 = add i64 %1677, 7
  store i64 %1682, i64* %3, align 8
  %1683 = inttoptr i64 %1681 to i32*
  %1684 = load i32, i32* %1683, align 4
  %1685 = add i32 %1684, 1
  %1686 = zext i32 %1685 to i64
  store i64 %1686, i64* %RCX.i1565, align 8
  %1687 = icmp eq i32 %1684, -1
  %1688 = icmp eq i32 %1685, 0
  %1689 = or i1 %1687, %1688
  %1690 = zext i1 %1689 to i8
  store i8 %1690, i8* %51, align 1
  %1691 = and i32 %1685, 255
  %1692 = tail call i32 @llvm.ctpop.i32(i32 %1691)
  %1693 = trunc i32 %1692 to i8
  %1694 = and i8 %1693, 1
  %1695 = xor i8 %1694, 1
  store i8 %1695, i8* %52, align 1
  %1696 = xor i32 %1684, %1685
  %1697 = lshr i32 %1696, 4
  %1698 = trunc i32 %1697 to i8
  %1699 = and i8 %1698, 1
  store i8 %1699, i8* %53, align 1
  %1700 = zext i1 %1688 to i8
  store i8 %1700, i8* %54, align 1
  %1701 = lshr i32 %1685, 31
  %1702 = trunc i32 %1701 to i8
  store i8 %1702, i8* %55, align 1
  %1703 = lshr i32 %1684, 31
  %1704 = xor i32 %1701, %1703
  %1705 = add nuw nsw i32 %1704, %1701
  %1706 = icmp eq i32 %1705, 2
  %1707 = zext i1 %1706 to i8
  store i8 %1707, i8* %56, align 1
  %1708 = sext i32 %1685 to i64
  store i64 %1708, i64* %RSI.i1613, align 8
  %1709 = shl nsw i64 %1708, 3
  %1710 = add i64 %1709, %1680
  %1711 = add i64 %1677, 18
  store i64 %1711, i64* %3, align 8
  %1712 = inttoptr i64 %1710 to i64*
  %1713 = load i64, i64* %1712, align 8
  %1714 = load i64, i64* %RAX.i1594, align 8
  %1715 = xor i64 %1714, %1713
  store i64 %1715, i64* %RDX.i1610, align 8
  store i8 0, i8* %51, align 1
  %1716 = trunc i64 %1715 to i32
  %1717 = and i32 %1716, 255
  %1718 = tail call i32 @llvm.ctpop.i32(i32 %1717)
  %1719 = trunc i32 %1718 to i8
  %1720 = and i8 %1719, 1
  %1721 = xor i8 %1720, 1
  store i8 %1721, i8* %52, align 1
  %1722 = icmp eq i64 %1715, 0
  %1723 = zext i1 %1722 to i8
  store i8 %1723, i8* %54, align 1
  %1724 = lshr i64 %1715, 63
  %1725 = trunc i64 %1724 to i8
  store i8 %1725, i8* %55, align 1
  store i8 0, i8* %56, align 1
  store i8 0, i8* %53, align 1
  store i64 %1715, i64* %384, align 1
  store i64 0, i64* %382, align 1
  %1726 = add i64 %1675, -72
  %1727 = add i64 %1677, 36
  store i64 %1727, i64* %3, align 8
  %1728 = inttoptr i64 %1726 to i64*
  store i64 %1715, i64* %1728, align 8
  %1729 = load i64, i64* %RBP.i, align 8
  %1730 = add i64 %1729, -24
  %1731 = load i64, i64* %3, align 8
  %1732 = add i64 %1731, 4
  store i64 %1732, i64* %3, align 8
  %1733 = inttoptr i64 %1730 to i64*
  %1734 = load i64, i64* %1733, align 8
  store i64 %1734, i64* %RDX.i1610, align 8
  %1735 = add i64 %1729, -40
  %1736 = add i64 %1731, 8
  store i64 %1736, i64* %3, align 8
  %1737 = inttoptr i64 %1735 to i32*
  %1738 = load i32, i32* %1737, align 4
  %1739 = sext i32 %1738 to i64
  store i64 %1739, i64* %RSI.i1613, align 8
  %1740 = shl nsw i64 %1739, 3
  %1741 = add i64 %1740, %1734
  %1742 = add i64 %1731, 13
  store i64 %1742, i64* %3, align 8
  %1743 = inttoptr i64 %1741 to i64*
  %1744 = load i64, i64* %1743, align 8
  store i64 %1744, i64* %384, align 1
  store double 0.000000e+00, double* %383, align 1
  %1745 = add i64 %1729, -80
  %1746 = add i64 %1731, 18
  store i64 %1746, i64* %3, align 8
  %1747 = inttoptr i64 %1745 to i64*
  store i64 %1744, i64* %1747, align 8
  %1748 = load i64, i64* %RBP.i, align 8
  %1749 = add i64 %1748, -24
  %1750 = load i64, i64* %3, align 8
  %1751 = add i64 %1750, 4
  store i64 %1751, i64* %3, align 8
  %1752 = inttoptr i64 %1749 to i64*
  %1753 = load i64, i64* %1752, align 8
  store i64 %1753, i64* %RDX.i1610, align 8
  %1754 = add i64 %1748, -40
  %1755 = add i64 %1750, 7
  store i64 %1755, i64* %3, align 8
  %1756 = inttoptr i64 %1754 to i32*
  %1757 = load i32, i32* %1756, align 4
  %1758 = add i32 %1757, 1
  %1759 = zext i32 %1758 to i64
  store i64 %1759, i64* %RCX.i1565, align 8
  %1760 = icmp eq i32 %1757, -1
  %1761 = icmp eq i32 %1758, 0
  %1762 = or i1 %1760, %1761
  %1763 = zext i1 %1762 to i8
  store i8 %1763, i8* %51, align 1
  %1764 = and i32 %1758, 255
  %1765 = tail call i32 @llvm.ctpop.i32(i32 %1764)
  %1766 = trunc i32 %1765 to i8
  %1767 = and i8 %1766, 1
  %1768 = xor i8 %1767, 1
  store i8 %1768, i8* %52, align 1
  %1769 = xor i32 %1757, %1758
  %1770 = lshr i32 %1769, 4
  %1771 = trunc i32 %1770 to i8
  %1772 = and i8 %1771, 1
  store i8 %1772, i8* %53, align 1
  %1773 = zext i1 %1761 to i8
  store i8 %1773, i8* %54, align 1
  %1774 = lshr i32 %1758, 31
  %1775 = trunc i32 %1774 to i8
  store i8 %1775, i8* %55, align 1
  %1776 = lshr i32 %1757, 31
  %1777 = xor i32 %1774, %1776
  %1778 = add nuw nsw i32 %1777, %1774
  %1779 = icmp eq i32 %1778, 2
  %1780 = zext i1 %1779 to i8
  store i8 %1780, i8* %56, align 1
  %1781 = sext i32 %1758 to i64
  store i64 %1781, i64* %RSI.i1613, align 8
  %1782 = shl nsw i64 %1781, 3
  %1783 = add i64 %1782, %1753
  %1784 = add i64 %1750, 18
  store i64 %1784, i64* %3, align 8
  %1785 = inttoptr i64 %1783 to i64*
  %1786 = load i64, i64* %1785, align 8
  %1787 = load i64, i64* %RAX.i1594, align 8
  %1788 = xor i64 %1787, %1786
  store i64 %1788, i64* %RDX.i1610, align 8
  store i8 0, i8* %51, align 1
  %1789 = trunc i64 %1788 to i32
  %1790 = and i32 %1789, 255
  %1791 = tail call i32 @llvm.ctpop.i32(i32 %1790)
  %1792 = trunc i32 %1791 to i8
  %1793 = and i8 %1792, 1
  %1794 = xor i8 %1793, 1
  store i8 %1794, i8* %52, align 1
  %1795 = icmp eq i64 %1788, 0
  %1796 = zext i1 %1795 to i8
  store i8 %1796, i8* %54, align 1
  %1797 = lshr i64 %1788, 63
  %1798 = trunc i64 %1797 to i8
  store i8 %1798, i8* %55, align 1
  store i8 0, i8* %56, align 1
  store i8 0, i8* %53, align 1
  store i64 %1788, i64* %384, align 1
  store i64 0, i64* %382, align 1
  %1799 = add i64 %1748, -88
  %1800 = add i64 %1750, 36
  store i64 %1800, i64* %3, align 8
  %1801 = inttoptr i64 %1799 to i64*
  store i64 %1788, i64* %1801, align 8
  %1802 = load i64, i64* %RBP.i, align 8
  %1803 = add i64 %1802, -80
  %1804 = load i64, i64* %3, align 8
  %1805 = add i64 %1804, 5
  store i64 %1805, i64* %3, align 8
  %1806 = inttoptr i64 %1803 to i64*
  %1807 = load i64, i64* %1806, align 8
  store i64 %1807, i64* %384, align 1
  store double 0.000000e+00, double* %383, align 1
  %1808 = add i64 %1802, -24
  %1809 = add i64 %1804, 9
  store i64 %1809, i64* %3, align 8
  %1810 = inttoptr i64 %1808 to i64*
  %1811 = load i64, i64* %1810, align 8
  store i64 %1811, i64* %RAX.i1594, align 8
  %1812 = add i64 %1802, -32
  %1813 = add i64 %1804, 13
  store i64 %1813, i64* %3, align 8
  %1814 = inttoptr i64 %1812 to i32*
  %1815 = load i32, i32* %1814, align 4
  %1816 = sext i32 %1815 to i64
  store i64 %1816, i64* %RDX.i1610, align 8
  %1817 = shl nsw i64 %1816, 3
  %1818 = add i64 %1817, %1811
  %1819 = add i64 %1804, 18
  store i64 %1819, i64* %3, align 8
  %1820 = inttoptr i64 %1818 to i64*
  store i64 %1807, i64* %1820, align 8
  %1821 = load i64, i64* %RBP.i, align 8
  %1822 = add i64 %1821, -88
  %1823 = load i64, i64* %3, align 8
  %1824 = add i64 %1823, 5
  store i64 %1824, i64* %3, align 8
  %1825 = inttoptr i64 %1822 to i64*
  %1826 = load i64, i64* %1825, align 8
  store i64 %1826, i64* %384, align 1
  store double 0.000000e+00, double* %383, align 1
  %1827 = add i64 %1821, -24
  %1828 = add i64 %1823, 9
  store i64 %1828, i64* %3, align 8
  %1829 = inttoptr i64 %1827 to i64*
  %1830 = load i64, i64* %1829, align 8
  store i64 %1830, i64* %RAX.i1594, align 8
  %1831 = add i64 %1821, -32
  %1832 = add i64 %1823, 12
  store i64 %1832, i64* %3, align 8
  %1833 = inttoptr i64 %1831 to i32*
  %1834 = load i32, i32* %1833, align 4
  %1835 = add i32 %1834, 1
  %1836 = zext i32 %1835 to i64
  store i64 %1836, i64* %RCX.i1565, align 8
  %1837 = icmp eq i32 %1834, -1
  %1838 = icmp eq i32 %1835, 0
  %1839 = or i1 %1837, %1838
  %1840 = zext i1 %1839 to i8
  store i8 %1840, i8* %51, align 1
  %1841 = and i32 %1835, 255
  %1842 = tail call i32 @llvm.ctpop.i32(i32 %1841)
  %1843 = trunc i32 %1842 to i8
  %1844 = and i8 %1843, 1
  %1845 = xor i8 %1844, 1
  store i8 %1845, i8* %52, align 1
  %1846 = xor i32 %1834, %1835
  %1847 = lshr i32 %1846, 4
  %1848 = trunc i32 %1847 to i8
  %1849 = and i8 %1848, 1
  store i8 %1849, i8* %53, align 1
  %1850 = zext i1 %1838 to i8
  store i8 %1850, i8* %54, align 1
  %1851 = lshr i32 %1835, 31
  %1852 = trunc i32 %1851 to i8
  store i8 %1852, i8* %55, align 1
  %1853 = lshr i32 %1834, 31
  %1854 = xor i32 %1851, %1853
  %1855 = add nuw nsw i32 %1854, %1851
  %1856 = icmp eq i32 %1855, 2
  %1857 = zext i1 %1856 to i8
  store i8 %1857, i8* %56, align 1
  %1858 = sext i32 %1835 to i64
  store i64 %1858, i64* %RDX.i1610, align 8
  %1859 = shl nsw i64 %1858, 3
  %1860 = add i64 %1859, %1830
  %1861 = add i64 %1823, 23
  store i64 %1861, i64* %3, align 8
  %1862 = inttoptr i64 %1860 to i64*
  store i64 %1826, i64* %1862, align 8
  %1863 = load i64, i64* %RBP.i, align 8
  %1864 = add i64 %1863, -64
  %1865 = load i64, i64* %3, align 8
  %1866 = add i64 %1865, 5
  store i64 %1866, i64* %3, align 8
  %1867 = inttoptr i64 %1864 to i64*
  %1868 = load i64, i64* %1867, align 8
  store i64 %1868, i64* %384, align 1
  store double 0.000000e+00, double* %383, align 1
  %1869 = add i64 %1863, -24
  %1870 = add i64 %1865, 9
  store i64 %1870, i64* %3, align 8
  %1871 = inttoptr i64 %1869 to i64*
  %1872 = load i64, i64* %1871, align 8
  store i64 %1872, i64* %RAX.i1594, align 8
  %1873 = add i64 %1863, -40
  %1874 = add i64 %1865, 13
  store i64 %1874, i64* %3, align 8
  %1875 = inttoptr i64 %1873 to i32*
  %1876 = load i32, i32* %1875, align 4
  %1877 = sext i32 %1876 to i64
  store i64 %1877, i64* %RDX.i1610, align 8
  %1878 = shl nsw i64 %1877, 3
  %1879 = add i64 %1878, %1872
  %1880 = add i64 %1865, 18
  store i64 %1880, i64* %3, align 8
  %1881 = inttoptr i64 %1879 to i64*
  store i64 %1868, i64* %1881, align 8
  %1882 = load i64, i64* %RBP.i, align 8
  %1883 = add i64 %1882, -72
  %1884 = load i64, i64* %3, align 8
  %1885 = add i64 %1884, 5
  store i64 %1885, i64* %3, align 8
  %1886 = inttoptr i64 %1883 to i64*
  %1887 = load i64, i64* %1886, align 8
  store i64 %1887, i64* %384, align 1
  store double 0.000000e+00, double* %383, align 1
  %1888 = add i64 %1882, -24
  %1889 = add i64 %1884, 9
  store i64 %1889, i64* %3, align 8
  %1890 = inttoptr i64 %1888 to i64*
  %1891 = load i64, i64* %1890, align 8
  store i64 %1891, i64* %RAX.i1594, align 8
  %1892 = add i64 %1882, -40
  %1893 = add i64 %1884, 12
  store i64 %1893, i64* %3, align 8
  %1894 = inttoptr i64 %1892 to i32*
  %1895 = load i32, i32* %1894, align 4
  %1896 = add i32 %1895, 1
  %1897 = zext i32 %1896 to i64
  store i64 %1897, i64* %RCX.i1565, align 8
  %1898 = icmp eq i32 %1895, -1
  %1899 = icmp eq i32 %1896, 0
  %1900 = or i1 %1898, %1899
  %1901 = zext i1 %1900 to i8
  store i8 %1901, i8* %51, align 1
  %1902 = and i32 %1896, 255
  %1903 = tail call i32 @llvm.ctpop.i32(i32 %1902)
  %1904 = trunc i32 %1903 to i8
  %1905 = and i8 %1904, 1
  %1906 = xor i8 %1905, 1
  store i8 %1906, i8* %52, align 1
  %1907 = xor i32 %1895, %1896
  %1908 = lshr i32 %1907, 4
  %1909 = trunc i32 %1908 to i8
  %1910 = and i8 %1909, 1
  store i8 %1910, i8* %53, align 1
  %1911 = zext i1 %1899 to i8
  store i8 %1911, i8* %54, align 1
  %1912 = lshr i32 %1896, 31
  %1913 = trunc i32 %1912 to i8
  store i8 %1913, i8* %55, align 1
  %1914 = lshr i32 %1895, 31
  %1915 = xor i32 %1912, %1914
  %1916 = add nuw nsw i32 %1915, %1912
  %1917 = icmp eq i32 %1916, 2
  %1918 = zext i1 %1917 to i8
  store i8 %1918, i8* %56, align 1
  %1919 = sext i32 %1896 to i64
  store i64 %1919, i64* %RDX.i1610, align 8
  %1920 = shl nsw i64 %1919, 3
  %1921 = add i64 %1920, %1891
  %1922 = add i64 %1884, 23
  store i64 %1922, i64* %3, align 8
  %1923 = inttoptr i64 %1921 to i64*
  store i64 %1887, i64* %1923, align 8
  %1924 = load i64, i64* %RBP.i, align 8
  %1925 = add i64 %1924, -28
  %1926 = load i64, i64* %3, align 8
  %1927 = add i64 %1926, 3
  store i64 %1927, i64* %3, align 8
  %1928 = inttoptr i64 %1925 to i32*
  %1929 = load i32, i32* %1928, align 4
  %1930 = add i32 %1929, 1
  %1931 = zext i32 %1930 to i64
  store i64 %1931, i64* %RAX.i1594, align 8
  %1932 = icmp eq i32 %1929, -1
  %1933 = icmp eq i32 %1930, 0
  %1934 = or i1 %1932, %1933
  %1935 = zext i1 %1934 to i8
  store i8 %1935, i8* %51, align 1
  %1936 = and i32 %1930, 255
  %1937 = tail call i32 @llvm.ctpop.i32(i32 %1936)
  %1938 = trunc i32 %1937 to i8
  %1939 = and i8 %1938, 1
  %1940 = xor i8 %1939, 1
  store i8 %1940, i8* %52, align 1
  %1941 = xor i32 %1929, %1930
  %1942 = lshr i32 %1941, 4
  %1943 = trunc i32 %1942 to i8
  %1944 = and i8 %1943, 1
  store i8 %1944, i8* %53, align 1
  %1945 = zext i1 %1933 to i8
  store i8 %1945, i8* %54, align 1
  %1946 = lshr i32 %1930, 31
  %1947 = trunc i32 %1946 to i8
  store i8 %1947, i8* %55, align 1
  %1948 = lshr i32 %1929, 31
  %1949 = xor i32 %1946, %1948
  %1950 = add nuw nsw i32 %1949, %1946
  %1951 = icmp eq i32 %1950, 2
  %1952 = zext i1 %1951 to i8
  store i8 %1952, i8* %56, align 1
  %1953 = add i64 %1926, 9
  store i64 %1953, i64* %3, align 8
  store i32 %1930, i32* %1928, align 4
  %1954 = load i64, i64* %3, align 8
  %1955 = add i64 %1954, -893
  store i64 %1955, i64* %3, align 8
  br label %block_.L_401c9d

block_.L_40201f:                                  ; preds = %block_.L_401c9d
  %1956 = load i32, i32* %435, align 4
  %1957 = shl i32 %1956, 1
  %1958 = icmp slt i32 %1956, 0
  %1959 = icmp slt i32 %1957, 0
  %1960 = xor i1 %1958, %1959
  %1961 = zext i32 %1957 to i64
  store i64 %1961, i64* %RCX.i1565, align 8
  %.lobit17 = lshr i32 %1956, 31
  %1962 = trunc i32 %.lobit17 to i8
  store i8 %1962, i8* %51, align 1
  %1963 = and i32 %1957, 254
  %1964 = tail call i32 @llvm.ctpop.i32(i32 %1963)
  %1965 = trunc i32 %1964 to i8
  %1966 = and i8 %1965, 1
  %1967 = xor i8 %1966, 1
  store i8 %1967, i8* %52, align 1
  store i8 0, i8* %53, align 1
  %1968 = icmp eq i32 %1957, 0
  %1969 = zext i1 %1968 to i8
  store i8 %1969, i8* %54, align 1
  %1970 = lshr i32 %1956, 30
  %1971 = and i32 %1970, 1
  %1972 = trunc i32 %1971 to i8
  store i8 %1972, i8* %55, align 1
  %1973 = zext i1 %1960 to i8
  store i8 %1973, i8* %56, align 1
  %1974 = add i64 %427, -16
  %1975 = add i64 %463, 20
  store i64 %1975, i64* %3, align 8
  %1976 = inttoptr i64 %1974 to i64*
  %1977 = load i64, i64* %1976, align 8
  store i64 %1977, i64* %RDX.i1610, align 8
  %1978 = add i64 %463, 24
  store i64 %1978, i64* %3, align 8
  %1979 = load i32, i32* %435, align 4
  %1980 = sext i32 %1979 to i64
  store i64 %1980, i64* %RSI.i1613, align 8
  %1981 = shl nsw i64 %1980, 2
  %1982 = add i64 %1981, %1977
  %1983 = add i64 %463, 27
  store i64 %1983, i64* %3, align 8
  %1984 = inttoptr i64 %1982 to i32*
  %1985 = load i32, i32* %1984, align 4
  %1986 = add i32 %1985, %1957
  %1987 = zext i32 %1986 to i64
  store i64 %1987, i64* %RCX.i1565, align 8
  %1988 = icmp ult i32 %1986, %1957
  %1989 = icmp ult i32 %1986, %1985
  %1990 = or i1 %1988, %1989
  %1991 = zext i1 %1990 to i8
  store i8 %1991, i8* %51, align 1
  %1992 = and i32 %1986, 255
  %1993 = tail call i32 @llvm.ctpop.i32(i32 %1992)
  %1994 = trunc i32 %1993 to i8
  %1995 = and i8 %1994, 1
  %1996 = xor i8 %1995, 1
  store i8 %1996, i8* %52, align 1
  %1997 = xor i32 %1985, %1957
  %1998 = xor i32 %1997, %1986
  %1999 = lshr i32 %1998, 4
  %2000 = trunc i32 %1999 to i8
  %2001 = and i8 %2000, 1
  store i8 %2001, i8* %53, align 1
  %2002 = icmp eq i32 %1986, 0
  %2003 = zext i1 %2002 to i8
  store i8 %2003, i8* %54, align 1
  %2004 = lshr i32 %1986, 31
  %2005 = trunc i32 %2004 to i8
  store i8 %2005, i8* %55, align 1
  %2006 = lshr i32 %1985, 31
  %2007 = xor i32 %2004, %1971
  %2008 = xor i32 %2004, %2006
  %2009 = add nuw nsw i32 %2007, %2008
  %2010 = icmp eq i32 %2009, 2
  %2011 = zext i1 %2010 to i8
  store i8 %2011, i8* %56, align 1
  %2012 = add i64 %427, -40
  %2013 = add i64 %463, 30
  store i64 %2013, i64* %3, align 8
  %2014 = inttoptr i64 %2012 to i32*
  store i32 %1986, i32* %2014, align 4
  %2015 = load i64, i64* %RBP.i, align 8
  %2016 = add i64 %2015, -24
  %2017 = load i64, i64* %3, align 8
  %2018 = add i64 %2017, 4
  store i64 %2018, i64* %3, align 8
  %2019 = inttoptr i64 %2016 to i64*
  %2020 = load i64, i64* %2019, align 8
  store i64 %2020, i64* %RDX.i1610, align 8
  %2021 = add i64 %2015, -40
  %2022 = add i64 %2017, 7
  store i64 %2022, i64* %3, align 8
  %2023 = inttoptr i64 %2021 to i32*
  %2024 = load i32, i32* %2023, align 4
  %2025 = add i32 %2024, 1
  %2026 = zext i32 %2025 to i64
  store i64 %2026, i64* %RCX.i1565, align 8
  %2027 = icmp eq i32 %2024, -1
  %2028 = icmp eq i32 %2025, 0
  %2029 = or i1 %2027, %2028
  %2030 = zext i1 %2029 to i8
  store i8 %2030, i8* %51, align 1
  %2031 = and i32 %2025, 255
  %2032 = tail call i32 @llvm.ctpop.i32(i32 %2031)
  %2033 = trunc i32 %2032 to i8
  %2034 = and i8 %2033, 1
  %2035 = xor i8 %2034, 1
  store i8 %2035, i8* %52, align 1
  %2036 = xor i32 %2024, %2025
  %2037 = lshr i32 %2036, 4
  %2038 = trunc i32 %2037 to i8
  %2039 = and i8 %2038, 1
  store i8 %2039, i8* %53, align 1
  %2040 = zext i1 %2028 to i8
  store i8 %2040, i8* %54, align 1
  %2041 = lshr i32 %2025, 31
  %2042 = trunc i32 %2041 to i8
  store i8 %2042, i8* %55, align 1
  %2043 = lshr i32 %2024, 31
  %2044 = xor i32 %2041, %2043
  %2045 = add nuw nsw i32 %2044, %2041
  %2046 = icmp eq i32 %2045, 2
  %2047 = zext i1 %2046 to i8
  store i8 %2047, i8* %56, align 1
  %2048 = sext i32 %2025 to i64
  store i64 %2048, i64* %RSI.i1613, align 8
  %2049 = shl nsw i64 %2048, 3
  %2050 = add i64 %2049, %2020
  %2051 = add i64 %2017, 18
  store i64 %2051, i64* %3, align 8
  %2052 = inttoptr i64 %2050 to i64*
  %2053 = load i64, i64* %2052, align 8
  %2054 = load i64, i64* %RAX.i1594, align 8
  %2055 = xor i64 %2054, %2053
  store i64 %2055, i64* %RDX.i1610, align 8
  store i8 0, i8* %51, align 1
  %2056 = trunc i64 %2055 to i32
  %2057 = and i32 %2056, 255
  %2058 = tail call i32 @llvm.ctpop.i32(i32 %2057)
  %2059 = trunc i32 %2058 to i8
  %2060 = and i8 %2059, 1
  %2061 = xor i8 %2060, 1
  store i8 %2061, i8* %52, align 1
  %2062 = icmp eq i64 %2055, 0
  %2063 = zext i1 %2062 to i8
  store i8 %2063, i8* %54, align 1
  %2064 = lshr i64 %2055, 63
  %2065 = trunc i64 %2064 to i8
  store i8 %2065, i8* %55, align 1
  store i8 0, i8* %56, align 1
  store i8 0, i8* %53, align 1
  store i64 %2055, i64* %384, align 1
  store i64 0, i64* %382, align 1
  %2066 = add i64 %2017, 35
  store i64 %2066, i64* %3, align 8
  %2067 = load i64, i64* %2019, align 8
  store i64 %2067, i64* %RDX.i1610, align 8
  %2068 = add i64 %2017, 38
  store i64 %2068, i64* %3, align 8
  %2069 = load i32, i32* %2023, align 4
  %2070 = add i32 %2069, 1
  %2071 = zext i32 %2070 to i64
  store i64 %2071, i64* %RCX.i1565, align 8
  %2072 = icmp eq i32 %2069, -1
  %2073 = icmp eq i32 %2070, 0
  %2074 = or i1 %2072, %2073
  %2075 = zext i1 %2074 to i8
  store i8 %2075, i8* %51, align 1
  %2076 = and i32 %2070, 255
  %2077 = tail call i32 @llvm.ctpop.i32(i32 %2076)
  %2078 = trunc i32 %2077 to i8
  %2079 = and i8 %2078, 1
  %2080 = xor i8 %2079, 1
  store i8 %2080, i8* %52, align 1
  %2081 = xor i32 %2069, %2070
  %2082 = lshr i32 %2081, 4
  %2083 = trunc i32 %2082 to i8
  %2084 = and i8 %2083, 1
  store i8 %2084, i8* %53, align 1
  %2085 = zext i1 %2073 to i8
  store i8 %2085, i8* %54, align 1
  %2086 = lshr i32 %2070, 31
  %2087 = trunc i32 %2086 to i8
  store i8 %2087, i8* %55, align 1
  %2088 = lshr i32 %2069, 31
  %2089 = xor i32 %2086, %2088
  %2090 = add nuw nsw i32 %2089, %2086
  %2091 = icmp eq i32 %2090, 2
  %2092 = zext i1 %2091 to i8
  store i8 %2092, i8* %56, align 1
  %2093 = sext i32 %2070 to i64
  store i64 %2093, i64* %RSI.i1613, align 8
  %2094 = shl nsw i64 %2093, 3
  %2095 = add i64 %2094, %2067
  %2096 = add i64 %2017, 49
  store i64 %2096, i64* %3, align 8
  %2097 = inttoptr i64 %2095 to i64*
  store i64 %2055, i64* %2097, align 8
  %2098 = load i64, i64* %RBP.i, align 8
  %2099 = add i64 %2098, -40
  %2100 = load i64, i64* %3, align 8
  %2101 = add i64 %2100, 3
  store i64 %2101, i64* %3, align 8
  %2102 = inttoptr i64 %2099 to i32*
  %2103 = load i32, i32* %2102, align 4
  %2104 = zext i32 %2103 to i64
  store i64 %2104, i64* %RCX.i1565, align 8
  %2105 = add i64 %2098, -52
  %2106 = add i64 %2100, 6
  store i64 %2106, i64* %3, align 8
  %2107 = inttoptr i64 %2105 to i32*
  %2108 = load i32, i32* %2107, align 4
  %2109 = add i32 %2108, %2103
  %2110 = zext i32 %2109 to i64
  store i64 %2110, i64* %RCX.i1565, align 8
  %2111 = icmp ult i32 %2109, %2103
  %2112 = icmp ult i32 %2109, %2108
  %2113 = or i1 %2111, %2112
  %2114 = zext i1 %2113 to i8
  store i8 %2114, i8* %51, align 1
  %2115 = and i32 %2109, 255
  %2116 = tail call i32 @llvm.ctpop.i32(i32 %2115)
  %2117 = trunc i32 %2116 to i8
  %2118 = and i8 %2117, 1
  %2119 = xor i8 %2118, 1
  store i8 %2119, i8* %52, align 1
  %2120 = xor i32 %2108, %2103
  %2121 = xor i32 %2120, %2109
  %2122 = lshr i32 %2121, 4
  %2123 = trunc i32 %2122 to i8
  %2124 = and i8 %2123, 1
  store i8 %2124, i8* %53, align 1
  %2125 = icmp eq i32 %2109, 0
  %2126 = zext i1 %2125 to i8
  store i8 %2126, i8* %54, align 1
  %2127 = lshr i32 %2109, 31
  %2128 = trunc i32 %2127 to i8
  store i8 %2128, i8* %55, align 1
  %2129 = lshr i32 %2103, 31
  %2130 = lshr i32 %2108, 31
  %2131 = xor i32 %2127, %2129
  %2132 = xor i32 %2127, %2130
  %2133 = add nuw nsw i32 %2131, %2132
  %2134 = icmp eq i32 %2133, 2
  %2135 = zext i1 %2134 to i8
  store i8 %2135, i8* %56, align 1
  %2136 = add i64 %2098, -32
  %2137 = add i64 %2100, 9
  store i64 %2137, i64* %3, align 8
  %2138 = inttoptr i64 %2136 to i32*
  store i32 %2109, i32* %2138, align 4
  %2139 = load i64, i64* %RBP.i, align 8
  %2140 = add i64 %2139, -32
  %2141 = load i64, i64* %3, align 8
  %2142 = add i64 %2141, 3
  store i64 %2142, i64* %3, align 8
  %2143 = inttoptr i64 %2140 to i32*
  %2144 = load i32, i32* %2143, align 4
  %2145 = zext i32 %2144 to i64
  store i64 %2145, i64* %RCX.i1565, align 8
  %2146 = add i64 %2139, -52
  %2147 = add i64 %2141, 6
  store i64 %2147, i64* %3, align 8
  %2148 = inttoptr i64 %2146 to i32*
  %2149 = load i32, i32* %2148, align 4
  %2150 = add i32 %2149, %2144
  %2151 = zext i32 %2150 to i64
  store i64 %2151, i64* %RCX.i1565, align 8
  %2152 = icmp ult i32 %2150, %2144
  %2153 = icmp ult i32 %2150, %2149
  %2154 = or i1 %2152, %2153
  %2155 = zext i1 %2154 to i8
  store i8 %2155, i8* %51, align 1
  %2156 = and i32 %2150, 255
  %2157 = tail call i32 @llvm.ctpop.i32(i32 %2156)
  %2158 = trunc i32 %2157 to i8
  %2159 = and i8 %2158, 1
  %2160 = xor i8 %2159, 1
  store i8 %2160, i8* %52, align 1
  %2161 = xor i32 %2149, %2144
  %2162 = xor i32 %2161, %2150
  %2163 = lshr i32 %2162, 4
  %2164 = trunc i32 %2163 to i8
  %2165 = and i8 %2164, 1
  store i8 %2165, i8* %53, align 1
  %2166 = icmp eq i32 %2150, 0
  %2167 = zext i1 %2166 to i8
  store i8 %2167, i8* %54, align 1
  %2168 = lshr i32 %2150, 31
  %2169 = trunc i32 %2168 to i8
  store i8 %2169, i8* %55, align 1
  %2170 = lshr i32 %2144, 31
  %2171 = lshr i32 %2149, 31
  %2172 = xor i32 %2168, %2170
  %2173 = xor i32 %2168, %2171
  %2174 = add nuw nsw i32 %2172, %2173
  %2175 = icmp eq i32 %2174, 2
  %2176 = zext i1 %2175 to i8
  store i8 %2176, i8* %56, align 1
  %2177 = add i64 %2139, -40
  %2178 = add i64 %2141, 9
  store i64 %2178, i64* %3, align 8
  %2179 = inttoptr i64 %2177 to i32*
  store i32 %2150, i32* %2179, align 4
  %2180 = load i64, i64* %RBP.i, align 8
  %2181 = add i64 %2180, -24
  %2182 = load i64, i64* %3, align 8
  %2183 = add i64 %2182, 4
  store i64 %2183, i64* %3, align 8
  %2184 = inttoptr i64 %2181 to i64*
  %2185 = load i64, i64* %2184, align 8
  store i64 %2185, i64* %RDX.i1610, align 8
  %2186 = add i64 %2180, -32
  %2187 = add i64 %2182, 8
  store i64 %2187, i64* %3, align 8
  %2188 = inttoptr i64 %2186 to i32*
  %2189 = load i32, i32* %2188, align 4
  %2190 = sext i32 %2189 to i64
  store i64 %2190, i64* %RSI.i1613, align 8
  %2191 = shl nsw i64 %2190, 3
  %2192 = add i64 %2191, %2185
  %2193 = add i64 %2182, 13
  store i64 %2193, i64* %3, align 8
  %2194 = inttoptr i64 %2192 to i64*
  %2195 = load i64, i64* %2194, align 8
  store i64 %2195, i64* %384, align 1
  store double 0.000000e+00, double* %383, align 1
  %2196 = add i64 %2180, -64
  %2197 = add i64 %2182, 18
  store i64 %2197, i64* %3, align 8
  %2198 = inttoptr i64 %2196 to i64*
  store i64 %2195, i64* %2198, align 8
  %2199 = load i64, i64* %RBP.i, align 8
  %2200 = add i64 %2199, -24
  %2201 = load i64, i64* %3, align 8
  %2202 = add i64 %2201, 4
  store i64 %2202, i64* %3, align 8
  %2203 = inttoptr i64 %2200 to i64*
  %2204 = load i64, i64* %2203, align 8
  store i64 %2204, i64* %RDX.i1610, align 8
  %2205 = add i64 %2199, -32
  %2206 = add i64 %2201, 7
  store i64 %2206, i64* %3, align 8
  %2207 = inttoptr i64 %2205 to i32*
  %2208 = load i32, i32* %2207, align 4
  %2209 = add i32 %2208, 1
  %2210 = zext i32 %2209 to i64
  store i64 %2210, i64* %RCX.i1565, align 8
  %2211 = icmp eq i32 %2208, -1
  %2212 = icmp eq i32 %2209, 0
  %2213 = or i1 %2211, %2212
  %2214 = zext i1 %2213 to i8
  store i8 %2214, i8* %51, align 1
  %2215 = and i32 %2209, 255
  %2216 = tail call i32 @llvm.ctpop.i32(i32 %2215)
  %2217 = trunc i32 %2216 to i8
  %2218 = and i8 %2217, 1
  %2219 = xor i8 %2218, 1
  store i8 %2219, i8* %52, align 1
  %2220 = xor i32 %2208, %2209
  %2221 = lshr i32 %2220, 4
  %2222 = trunc i32 %2221 to i8
  %2223 = and i8 %2222, 1
  store i8 %2223, i8* %53, align 1
  %2224 = zext i1 %2212 to i8
  store i8 %2224, i8* %54, align 1
  %2225 = lshr i32 %2209, 31
  %2226 = trunc i32 %2225 to i8
  store i8 %2226, i8* %55, align 1
  %2227 = lshr i32 %2208, 31
  %2228 = xor i32 %2225, %2227
  %2229 = add nuw nsw i32 %2228, %2225
  %2230 = icmp eq i32 %2229, 2
  %2231 = zext i1 %2230 to i8
  store i8 %2231, i8* %56, align 1
  %2232 = sext i32 %2209 to i64
  store i64 %2232, i64* %RSI.i1613, align 8
  %2233 = shl nsw i64 %2232, 3
  %2234 = add i64 %2233, %2204
  %2235 = add i64 %2201, 18
  store i64 %2235, i64* %3, align 8
  %2236 = inttoptr i64 %2234 to i64*
  %2237 = load i64, i64* %2236, align 8
  %2238 = load i64, i64* %RAX.i1594, align 8
  %2239 = xor i64 %2238, %2237
  store i64 %2239, i64* %RDX.i1610, align 8
  store i8 0, i8* %51, align 1
  %2240 = trunc i64 %2239 to i32
  %2241 = and i32 %2240, 255
  %2242 = tail call i32 @llvm.ctpop.i32(i32 %2241)
  %2243 = trunc i32 %2242 to i8
  %2244 = and i8 %2243, 1
  %2245 = xor i8 %2244, 1
  store i8 %2245, i8* %52, align 1
  %2246 = icmp eq i64 %2239, 0
  %2247 = zext i1 %2246 to i8
  store i8 %2247, i8* %54, align 1
  %2248 = lshr i64 %2239, 63
  %2249 = trunc i64 %2248 to i8
  store i8 %2249, i8* %55, align 1
  store i8 0, i8* %56, align 1
  store i8 0, i8* %53, align 1
  store i64 %2239, i64* %384, align 1
  store i64 0, i64* %382, align 1
  %2250 = add i64 %2199, -72
  %2251 = add i64 %2201, 36
  store i64 %2251, i64* %3, align 8
  %2252 = inttoptr i64 %2250 to i64*
  store i64 %2239, i64* %2252, align 8
  %2253 = load i64, i64* %RBP.i, align 8
  %2254 = add i64 %2253, -24
  %2255 = load i64, i64* %3, align 8
  %2256 = add i64 %2255, 4
  store i64 %2256, i64* %3, align 8
  %2257 = inttoptr i64 %2254 to i64*
  %2258 = load i64, i64* %2257, align 8
  store i64 %2258, i64* %RDX.i1610, align 8
  %2259 = add i64 %2253, -40
  %2260 = add i64 %2255, 8
  store i64 %2260, i64* %3, align 8
  %2261 = inttoptr i64 %2259 to i32*
  %2262 = load i32, i32* %2261, align 4
  %2263 = sext i32 %2262 to i64
  store i64 %2263, i64* %RSI.i1613, align 8
  %2264 = shl nsw i64 %2263, 3
  %2265 = add i64 %2264, %2258
  %2266 = add i64 %2255, 13
  store i64 %2266, i64* %3, align 8
  %2267 = inttoptr i64 %2265 to i64*
  %2268 = load i64, i64* %2267, align 8
  store i64 %2268, i64* %384, align 1
  store double 0.000000e+00, double* %383, align 1
  %2269 = add i64 %2253, -80
  %2270 = add i64 %2255, 18
  store i64 %2270, i64* %3, align 8
  %2271 = inttoptr i64 %2269 to i64*
  store i64 %2268, i64* %2271, align 8
  %2272 = load i64, i64* %RBP.i, align 8
  %2273 = add i64 %2272, -24
  %2274 = load i64, i64* %3, align 8
  %2275 = add i64 %2274, 4
  store i64 %2275, i64* %3, align 8
  %2276 = inttoptr i64 %2273 to i64*
  %2277 = load i64, i64* %2276, align 8
  store i64 %2277, i64* %RDX.i1610, align 8
  %2278 = add i64 %2272, -40
  %2279 = add i64 %2274, 7
  store i64 %2279, i64* %3, align 8
  %2280 = inttoptr i64 %2278 to i32*
  %2281 = load i32, i32* %2280, align 4
  %2282 = add i32 %2281, 1
  %2283 = zext i32 %2282 to i64
  store i64 %2283, i64* %RCX.i1565, align 8
  %2284 = icmp eq i32 %2281, -1
  %2285 = icmp eq i32 %2282, 0
  %2286 = or i1 %2284, %2285
  %2287 = zext i1 %2286 to i8
  store i8 %2287, i8* %51, align 1
  %2288 = and i32 %2282, 255
  %2289 = tail call i32 @llvm.ctpop.i32(i32 %2288)
  %2290 = trunc i32 %2289 to i8
  %2291 = and i8 %2290, 1
  %2292 = xor i8 %2291, 1
  store i8 %2292, i8* %52, align 1
  %2293 = xor i32 %2281, %2282
  %2294 = lshr i32 %2293, 4
  %2295 = trunc i32 %2294 to i8
  %2296 = and i8 %2295, 1
  store i8 %2296, i8* %53, align 1
  %2297 = zext i1 %2285 to i8
  store i8 %2297, i8* %54, align 1
  %2298 = lshr i32 %2282, 31
  %2299 = trunc i32 %2298 to i8
  store i8 %2299, i8* %55, align 1
  %2300 = lshr i32 %2281, 31
  %2301 = xor i32 %2298, %2300
  %2302 = add nuw nsw i32 %2301, %2298
  %2303 = icmp eq i32 %2302, 2
  %2304 = zext i1 %2303 to i8
  store i8 %2304, i8* %56, align 1
  %2305 = sext i32 %2282 to i64
  store i64 %2305, i64* %RSI.i1613, align 8
  %2306 = shl nsw i64 %2305, 3
  %2307 = add i64 %2306, %2277
  %2308 = add i64 %2274, 18
  store i64 %2308, i64* %3, align 8
  %2309 = inttoptr i64 %2307 to i64*
  %2310 = load i64, i64* %2309, align 8
  %2311 = load i64, i64* %RAX.i1594, align 8
  %2312 = xor i64 %2311, %2310
  store i64 %2312, i64* %RDX.i1610, align 8
  store i8 0, i8* %51, align 1
  %2313 = trunc i64 %2312 to i32
  %2314 = and i32 %2313, 255
  %2315 = tail call i32 @llvm.ctpop.i32(i32 %2314)
  %2316 = trunc i32 %2315 to i8
  %2317 = and i8 %2316, 1
  %2318 = xor i8 %2317, 1
  store i8 %2318, i8* %52, align 1
  %2319 = icmp eq i64 %2312, 0
  %2320 = zext i1 %2319 to i8
  store i8 %2320, i8* %54, align 1
  %2321 = lshr i64 %2312, 63
  %2322 = trunc i64 %2321 to i8
  store i8 %2322, i8* %55, align 1
  store i8 0, i8* %56, align 1
  store i8 0, i8* %53, align 1
  store i64 %2312, i64* %384, align 1
  store i64 0, i64* %382, align 1
  %2323 = add i64 %2272, -88
  %2324 = add i64 %2274, 36
  store i64 %2324, i64* %3, align 8
  %2325 = inttoptr i64 %2323 to i64*
  store i64 %2312, i64* %2325, align 8
  %2326 = load i64, i64* %RBP.i, align 8
  %2327 = add i64 %2326, -80
  %2328 = load i64, i64* %3, align 8
  %2329 = add i64 %2328, 5
  store i64 %2329, i64* %3, align 8
  %2330 = inttoptr i64 %2327 to i64*
  %2331 = load i64, i64* %2330, align 8
  store i64 %2331, i64* %384, align 1
  store double 0.000000e+00, double* %383, align 1
  %2332 = add i64 %2326, -24
  %2333 = add i64 %2328, 9
  store i64 %2333, i64* %3, align 8
  %2334 = inttoptr i64 %2332 to i64*
  %2335 = load i64, i64* %2334, align 8
  store i64 %2335, i64* %RDX.i1610, align 8
  %2336 = add i64 %2326, -32
  %2337 = add i64 %2328, 13
  store i64 %2337, i64* %3, align 8
  %2338 = inttoptr i64 %2336 to i32*
  %2339 = load i32, i32* %2338, align 4
  %2340 = sext i32 %2339 to i64
  store i64 %2340, i64* %RSI.i1613, align 8
  %2341 = shl nsw i64 %2340, 3
  %2342 = add i64 %2341, %2335
  %2343 = add i64 %2328, 18
  store i64 %2343, i64* %3, align 8
  %2344 = inttoptr i64 %2342 to i64*
  store i64 %2331, i64* %2344, align 8
  %2345 = load i64, i64* %RBP.i, align 8
  %2346 = add i64 %2345, -88
  %2347 = load i64, i64* %3, align 8
  %2348 = add i64 %2347, 5
  store i64 %2348, i64* %3, align 8
  %2349 = inttoptr i64 %2346 to i64*
  %2350 = load i64, i64* %2349, align 8
  store i64 %2350, i64* %384, align 1
  store double 0.000000e+00, double* %383, align 1
  %2351 = add i64 %2345, -24
  %2352 = add i64 %2347, 9
  store i64 %2352, i64* %3, align 8
  %2353 = inttoptr i64 %2351 to i64*
  %2354 = load i64, i64* %2353, align 8
  store i64 %2354, i64* %RDX.i1610, align 8
  %2355 = add i64 %2345, -32
  %2356 = add i64 %2347, 12
  store i64 %2356, i64* %3, align 8
  %2357 = inttoptr i64 %2355 to i32*
  %2358 = load i32, i32* %2357, align 4
  %2359 = add i32 %2358, 1
  %2360 = zext i32 %2359 to i64
  store i64 %2360, i64* %RCX.i1565, align 8
  %2361 = icmp eq i32 %2358, -1
  %2362 = icmp eq i32 %2359, 0
  %2363 = or i1 %2361, %2362
  %2364 = zext i1 %2363 to i8
  store i8 %2364, i8* %51, align 1
  %2365 = and i32 %2359, 255
  %2366 = tail call i32 @llvm.ctpop.i32(i32 %2365)
  %2367 = trunc i32 %2366 to i8
  %2368 = and i8 %2367, 1
  %2369 = xor i8 %2368, 1
  store i8 %2369, i8* %52, align 1
  %2370 = xor i32 %2358, %2359
  %2371 = lshr i32 %2370, 4
  %2372 = trunc i32 %2371 to i8
  %2373 = and i8 %2372, 1
  store i8 %2373, i8* %53, align 1
  %2374 = zext i1 %2362 to i8
  store i8 %2374, i8* %54, align 1
  %2375 = lshr i32 %2359, 31
  %2376 = trunc i32 %2375 to i8
  store i8 %2376, i8* %55, align 1
  %2377 = lshr i32 %2358, 31
  %2378 = xor i32 %2375, %2377
  %2379 = add nuw nsw i32 %2378, %2375
  %2380 = icmp eq i32 %2379, 2
  %2381 = zext i1 %2380 to i8
  store i8 %2381, i8* %56, align 1
  %2382 = sext i32 %2359 to i64
  store i64 %2382, i64* %RSI.i1613, align 8
  %2383 = shl nsw i64 %2382, 3
  %2384 = add i64 %2383, %2354
  %2385 = add i64 %2347, 23
  store i64 %2385, i64* %3, align 8
  %2386 = inttoptr i64 %2384 to i64*
  store i64 %2350, i64* %2386, align 8
  %2387 = load i64, i64* %RBP.i, align 8
  %2388 = add i64 %2387, -64
  %2389 = load i64, i64* %3, align 8
  %2390 = add i64 %2389, 5
  store i64 %2390, i64* %3, align 8
  %2391 = inttoptr i64 %2388 to i64*
  %2392 = load i64, i64* %2391, align 8
  store i64 %2392, i64* %384, align 1
  store double 0.000000e+00, double* %383, align 1
  %2393 = add i64 %2387, -24
  %2394 = add i64 %2389, 9
  store i64 %2394, i64* %3, align 8
  %2395 = inttoptr i64 %2393 to i64*
  %2396 = load i64, i64* %2395, align 8
  store i64 %2396, i64* %RDX.i1610, align 8
  %2397 = add i64 %2387, -40
  %2398 = add i64 %2389, 13
  store i64 %2398, i64* %3, align 8
  %2399 = inttoptr i64 %2397 to i32*
  %2400 = load i32, i32* %2399, align 4
  %2401 = sext i32 %2400 to i64
  store i64 %2401, i64* %RSI.i1613, align 8
  %2402 = shl nsw i64 %2401, 3
  %2403 = add i64 %2402, %2396
  %2404 = add i64 %2389, 18
  store i64 %2404, i64* %3, align 8
  %2405 = inttoptr i64 %2403 to i64*
  store i64 %2392, i64* %2405, align 8
  %2406 = load i64, i64* %RBP.i, align 8
  %2407 = add i64 %2406, -72
  %2408 = load i64, i64* %3, align 8
  %2409 = add i64 %2408, 5
  store i64 %2409, i64* %3, align 8
  %2410 = inttoptr i64 %2407 to i64*
  %2411 = load i64, i64* %2410, align 8
  store i64 %2411, i64* %384, align 1
  store double 0.000000e+00, double* %383, align 1
  %2412 = add i64 %2406, -24
  %2413 = add i64 %2408, 9
  store i64 %2413, i64* %3, align 8
  %2414 = inttoptr i64 %2412 to i64*
  %2415 = load i64, i64* %2414, align 8
  store i64 %2415, i64* %RDX.i1610, align 8
  %2416 = add i64 %2406, -40
  %2417 = add i64 %2408, 12
  store i64 %2417, i64* %3, align 8
  %2418 = inttoptr i64 %2416 to i32*
  %2419 = load i32, i32* %2418, align 4
  %2420 = add i32 %2419, 1
  %2421 = zext i32 %2420 to i64
  store i64 %2421, i64* %RCX.i1565, align 8
  %2422 = icmp eq i32 %2419, -1
  %2423 = icmp eq i32 %2420, 0
  %2424 = or i1 %2422, %2423
  %2425 = zext i1 %2424 to i8
  store i8 %2425, i8* %51, align 1
  %2426 = and i32 %2420, 255
  %2427 = tail call i32 @llvm.ctpop.i32(i32 %2426)
  %2428 = trunc i32 %2427 to i8
  %2429 = and i8 %2428, 1
  %2430 = xor i8 %2429, 1
  store i8 %2430, i8* %52, align 1
  %2431 = xor i32 %2419, %2420
  %2432 = lshr i32 %2431, 4
  %2433 = trunc i32 %2432 to i8
  %2434 = and i8 %2433, 1
  store i8 %2434, i8* %53, align 1
  %2435 = zext i1 %2423 to i8
  store i8 %2435, i8* %54, align 1
  %2436 = lshr i32 %2420, 31
  %2437 = trunc i32 %2436 to i8
  store i8 %2437, i8* %55, align 1
  %2438 = lshr i32 %2419, 31
  %2439 = xor i32 %2436, %2438
  %2440 = add nuw nsw i32 %2439, %2436
  %2441 = icmp eq i32 %2440, 2
  %2442 = zext i1 %2441 to i8
  store i8 %2442, i8* %56, align 1
  %2443 = sext i32 %2420 to i64
  store i64 %2443, i64* %RSI.i1613, align 8
  %2444 = shl nsw i64 %2443, 3
  %2445 = add i64 %2444, %2415
  %2446 = add i64 %2408, 23
  store i64 %2446, i64* %3, align 8
  %2447 = inttoptr i64 %2445 to i64*
  store i64 %2411, i64* %2447, align 8
  %2448 = load i64, i64* %RBP.i, align 8
  %2449 = add i64 %2448, -52
  %2450 = load i64, i64* %3, align 8
  %2451 = add i64 %2450, 3
  store i64 %2451, i64* %3, align 8
  %2452 = inttoptr i64 %2449 to i32*
  %2453 = load i32, i32* %2452, align 4
  %2454 = zext i32 %2453 to i64
  store i64 %2454, i64* %RCX.i1565, align 8
  %2455 = add i64 %2448, -40
  %2456 = add i64 %2450, 6
  store i64 %2456, i64* %3, align 8
  %2457 = inttoptr i64 %2455 to i32*
  %2458 = load i32, i32* %2457, align 4
  %2459 = add i32 %2458, %2453
  %2460 = zext i32 %2459 to i64
  store i64 %2460, i64* %RCX.i1565, align 8
  %2461 = icmp ult i32 %2459, %2453
  %2462 = icmp ult i32 %2459, %2458
  %2463 = or i1 %2461, %2462
  %2464 = zext i1 %2463 to i8
  store i8 %2464, i8* %51, align 1
  %2465 = and i32 %2459, 255
  %2466 = tail call i32 @llvm.ctpop.i32(i32 %2465)
  %2467 = trunc i32 %2466 to i8
  %2468 = and i8 %2467, 1
  %2469 = xor i8 %2468, 1
  store i8 %2469, i8* %52, align 1
  %2470 = xor i32 %2458, %2453
  %2471 = xor i32 %2470, %2459
  %2472 = lshr i32 %2471, 4
  %2473 = trunc i32 %2472 to i8
  %2474 = and i8 %2473, 1
  store i8 %2474, i8* %53, align 1
  %2475 = icmp eq i32 %2459, 0
  %2476 = zext i1 %2475 to i8
  store i8 %2476, i8* %54, align 1
  %2477 = lshr i32 %2459, 31
  %2478 = trunc i32 %2477 to i8
  store i8 %2478, i8* %55, align 1
  %2479 = lshr i32 %2453, 31
  %2480 = lshr i32 %2458, 31
  %2481 = xor i32 %2477, %2479
  %2482 = xor i32 %2477, %2480
  %2483 = add nuw nsw i32 %2481, %2482
  %2484 = icmp eq i32 %2483, 2
  %2485 = zext i1 %2484 to i8
  store i8 %2485, i8* %56, align 1
  %2486 = add i64 %2450, 9
  store i64 %2486, i64* %3, align 8
  store i32 %2459, i32* %2457, align 4
  %2487 = load i64, i64* %RBP.i, align 8
  %2488 = add i64 %2487, -24
  %2489 = load i64, i64* %3, align 8
  %2490 = add i64 %2489, 4
  store i64 %2490, i64* %3, align 8
  %2491 = inttoptr i64 %2488 to i64*
  %2492 = load i64, i64* %2491, align 8
  store i64 %2492, i64* %RDX.i1610, align 8
  %2493 = add i64 %2487, -40
  %2494 = add i64 %2489, 7
  store i64 %2494, i64* %3, align 8
  %2495 = inttoptr i64 %2493 to i32*
  %2496 = load i32, i32* %2495, align 4
  %2497 = add i32 %2496, 1
  %2498 = zext i32 %2497 to i64
  store i64 %2498, i64* %RCX.i1565, align 8
  %2499 = icmp eq i32 %2496, -1
  %2500 = icmp eq i32 %2497, 0
  %2501 = or i1 %2499, %2500
  %2502 = zext i1 %2501 to i8
  store i8 %2502, i8* %51, align 1
  %2503 = and i32 %2497, 255
  %2504 = tail call i32 @llvm.ctpop.i32(i32 %2503)
  %2505 = trunc i32 %2504 to i8
  %2506 = and i8 %2505, 1
  %2507 = xor i8 %2506, 1
  store i8 %2507, i8* %52, align 1
  %2508 = xor i32 %2496, %2497
  %2509 = lshr i32 %2508, 4
  %2510 = trunc i32 %2509 to i8
  %2511 = and i8 %2510, 1
  store i8 %2511, i8* %53, align 1
  %2512 = zext i1 %2500 to i8
  store i8 %2512, i8* %54, align 1
  %2513 = lshr i32 %2497, 31
  %2514 = trunc i32 %2513 to i8
  store i8 %2514, i8* %55, align 1
  %2515 = lshr i32 %2496, 31
  %2516 = xor i32 %2513, %2515
  %2517 = add nuw nsw i32 %2516, %2513
  %2518 = icmp eq i32 %2517, 2
  %2519 = zext i1 %2518 to i8
  store i8 %2519, i8* %56, align 1
  %2520 = sext i32 %2497 to i64
  store i64 %2520, i64* %RSI.i1613, align 8
  %2521 = shl nsw i64 %2520, 3
  %2522 = add i64 %2521, %2492
  %2523 = add i64 %2489, 18
  store i64 %2523, i64* %3, align 8
  %2524 = inttoptr i64 %2522 to i64*
  %2525 = load i64, i64* %2524, align 8
  %2526 = load i64, i64* %RAX.i1594, align 8
  %2527 = xor i64 %2526, %2525
  store i64 %2527, i64* %RDX.i1610, align 8
  store i8 0, i8* %51, align 1
  %2528 = trunc i64 %2527 to i32
  %2529 = and i32 %2528, 255
  %2530 = tail call i32 @llvm.ctpop.i32(i32 %2529)
  %2531 = trunc i32 %2530 to i8
  %2532 = and i8 %2531, 1
  %2533 = xor i8 %2532, 1
  store i8 %2533, i8* %52, align 1
  %2534 = icmp eq i64 %2527, 0
  %2535 = zext i1 %2534 to i8
  store i8 %2535, i8* %54, align 1
  %2536 = lshr i64 %2527, 63
  %2537 = trunc i64 %2536 to i8
  store i8 %2537, i8* %55, align 1
  store i8 0, i8* %56, align 1
  store i8 0, i8* %53, align 1
  store i64 %2527, i64* %384, align 1
  store i64 0, i64* %382, align 1
  %2538 = add i64 %2489, 35
  store i64 %2538, i64* %3, align 8
  %2539 = load i64, i64* %2491, align 8
  store i64 %2539, i64* %RAX.i1594, align 8
  %2540 = add i64 %2489, 38
  store i64 %2540, i64* %3, align 8
  %2541 = load i32, i32* %2495, align 4
  %2542 = add i32 %2541, 1
  %2543 = zext i32 %2542 to i64
  store i64 %2543, i64* %RCX.i1565, align 8
  %2544 = icmp eq i32 %2541, -1
  %2545 = icmp eq i32 %2542, 0
  %2546 = or i1 %2544, %2545
  %2547 = zext i1 %2546 to i8
  store i8 %2547, i8* %51, align 1
  %2548 = and i32 %2542, 255
  %2549 = tail call i32 @llvm.ctpop.i32(i32 %2548)
  %2550 = trunc i32 %2549 to i8
  %2551 = and i8 %2550, 1
  %2552 = xor i8 %2551, 1
  store i8 %2552, i8* %52, align 1
  %2553 = xor i32 %2541, %2542
  %2554 = lshr i32 %2553, 4
  %2555 = trunc i32 %2554 to i8
  %2556 = and i8 %2555, 1
  store i8 %2556, i8* %53, align 1
  %2557 = zext i1 %2545 to i8
  store i8 %2557, i8* %54, align 1
  %2558 = lshr i32 %2542, 31
  %2559 = trunc i32 %2558 to i8
  store i8 %2559, i8* %55, align 1
  %2560 = lshr i32 %2541, 31
  %2561 = xor i32 %2558, %2560
  %2562 = add nuw nsw i32 %2561, %2558
  %2563 = icmp eq i32 %2562, 2
  %2564 = zext i1 %2563 to i8
  store i8 %2564, i8* %56, align 1
  %2565 = sext i32 %2542 to i64
  store i64 %2565, i64* %RDX.i1610, align 8
  %2566 = shl nsw i64 %2565, 3
  %2567 = add i64 %2566, %2539
  %2568 = add i64 %2489, 49
  store i64 %2568, i64* %3, align 8
  %2569 = inttoptr i64 %2567 to i64*
  store i64 %2527, i64* %2569, align 8
  %2570 = load i64, i64* %RBP.i, align 8
  %2571 = add i64 %2570, -36
  %2572 = load i64, i64* %3, align 8
  %2573 = add i64 %2572, 3
  store i64 %2573, i64* %3, align 8
  %2574 = inttoptr i64 %2571 to i32*
  %2575 = load i32, i32* %2574, align 4
  %2576 = add i32 %2575, 1
  %2577 = zext i32 %2576 to i64
  store i64 %2577, i64* %RAX.i1594, align 8
  %2578 = icmp eq i32 %2575, -1
  %2579 = icmp eq i32 %2576, 0
  %2580 = or i1 %2578, %2579
  %2581 = zext i1 %2580 to i8
  store i8 %2581, i8* %51, align 1
  %2582 = and i32 %2576, 255
  %2583 = tail call i32 @llvm.ctpop.i32(i32 %2582)
  %2584 = trunc i32 %2583 to i8
  %2585 = and i8 %2584, 1
  %2586 = xor i8 %2585, 1
  store i8 %2586, i8* %52, align 1
  %2587 = xor i32 %2575, %2576
  %2588 = lshr i32 %2587, 4
  %2589 = trunc i32 %2588 to i8
  %2590 = and i8 %2589, 1
  store i8 %2590, i8* %53, align 1
  %2591 = zext i1 %2579 to i8
  store i8 %2591, i8* %54, align 1
  %2592 = lshr i32 %2576, 31
  %2593 = trunc i32 %2592 to i8
  store i8 %2593, i8* %55, align 1
  %2594 = lshr i32 %2575, 31
  %2595 = xor i32 %2592, %2594
  %2596 = add nuw nsw i32 %2595, %2592
  %2597 = icmp eq i32 %2596, 2
  %2598 = zext i1 %2597 to i8
  store i8 %2598, i8* %56, align 1
  %2599 = add i64 %2572, 9
  store i64 %2599, i64* %3, align 8
  store i32 %2576, i32* %2574, align 4
  %2600 = load i64, i64* %3, align 8
  %2601 = add i64 %2600, -1271
  store i64 %2601, i64* %3, align 8
  br label %block_.L_401c8a

block_.L_402186:                                  ; preds = %block_.L_401c8a
  %2602 = add i64 %422, 748
  br label %block_.L_402472

block_.L_40218b:                                  ; preds = %block_.L_401c6b
  store i64 -9223372036854775808, i64* %RAX.i1594, align 8
  %2603 = add i64 %329, -24
  %2604 = add i64 %377, 14
  store i64 %2604, i64* %3, align 8
  %2605 = inttoptr i64 %2603 to i64*
  %2606 = load i64, i64* %2605, align 8
  store i64 %2606, i64* %RCX.i1565, align 8
  %2607 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %2608 = add i64 %2606, 8
  %2609 = add i64 %377, 19
  store i64 %2609, i64* %3, align 8
  %2610 = inttoptr i64 %2608 to i64*
  %2611 = load i64, i64* %2610, align 8
  %2612 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %2613 = bitcast i64* %2612 to double*
  %2614 = xor i64 %2611, -9223372036854775808
  store i64 %2614, i64* %RCX.i1565, align 8
  store i8 0, i8* %51, align 1
  %2615 = trunc i64 %2611 to i32
  %2616 = and i32 %2615, 255
  %2617 = tail call i32 @llvm.ctpop.i32(i32 %2616)
  %2618 = trunc i32 %2617 to i8
  %2619 = and i8 %2618, 1
  %2620 = xor i8 %2619, 1
  store i8 %2620, i8* %52, align 1
  %2621 = icmp eq i64 %2614, 0
  %2622 = zext i1 %2621 to i8
  store i8 %2622, i8* %54, align 1
  %2623 = lshr i64 %2614, 63
  %2624 = trunc i64 %2623 to i8
  store i8 %2624, i8* %55, align 1
  store i8 0, i8* %56, align 1
  store i8 0, i8* %53, align 1
  %2625 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %2607, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %2614, i64* %2625, align 1
  store i64 0, i64* %2612, align 1
  %2626 = add i64 %377, 36
  store i64 %2626, i64* %3, align 8
  %2627 = load i64, i64* %2605, align 8
  store i64 %2627, i64* %RCX.i1565, align 8
  %2628 = add i64 %2627, 8
  %2629 = add i64 %377, 41
  store i64 %2629, i64* %3, align 8
  %2630 = inttoptr i64 %2628 to i64*
  store i64 %2614, i64* %2630, align 8
  %2631 = load i64, i64* %RBP.i, align 8
  %2632 = add i64 %2631, -24
  %2633 = load i64, i64* %3, align 8
  %2634 = add i64 %2633, 4
  store i64 %2634, i64* %3, align 8
  %2635 = inttoptr i64 %2632 to i64*
  %2636 = load i64, i64* %2635, align 8
  store i64 %2636, i64* %RCX.i1565, align 8
  %2637 = add i64 %2631, -52
  %2638 = add i64 %2633, 7
  store i64 %2638, i64* %3, align 8
  %2639 = inttoptr i64 %2637 to i32*
  %2640 = load i32, i32* %2639, align 4
  %2641 = add i32 %2640, 1
  %2642 = zext i32 %2641 to i64
  store i64 %2642, i64* %RDX.i1610, align 8
  %2643 = icmp eq i32 %2640, -1
  %2644 = icmp eq i32 %2641, 0
  %2645 = or i1 %2643, %2644
  %2646 = zext i1 %2645 to i8
  store i8 %2646, i8* %51, align 1
  %2647 = and i32 %2641, 255
  %2648 = tail call i32 @llvm.ctpop.i32(i32 %2647)
  %2649 = trunc i32 %2648 to i8
  %2650 = and i8 %2649, 1
  %2651 = xor i8 %2650, 1
  store i8 %2651, i8* %52, align 1
  %2652 = xor i32 %2640, %2641
  %2653 = lshr i32 %2652, 4
  %2654 = trunc i32 %2653 to i8
  %2655 = and i8 %2654, 1
  store i8 %2655, i8* %53, align 1
  %2656 = zext i1 %2644 to i8
  store i8 %2656, i8* %54, align 1
  %2657 = lshr i32 %2641, 31
  %2658 = trunc i32 %2657 to i8
  store i8 %2658, i8* %55, align 1
  %2659 = lshr i32 %2640, 31
  %2660 = xor i32 %2657, %2659
  %2661 = add nuw nsw i32 %2660, %2657
  %2662 = icmp eq i32 %2661, 2
  %2663 = zext i1 %2662 to i8
  store i8 %2663, i8* %56, align 1
  %2664 = sext i32 %2641 to i64
  store i64 %2664, i64* %RSI.i1613, align 8
  %2665 = shl nsw i64 %2664, 3
  %2666 = add i64 %2665, %2636
  %2667 = add i64 %2633, 18
  store i64 %2667, i64* %3, align 8
  %2668 = inttoptr i64 %2666 to i64*
  %2669 = load i64, i64* %2668, align 8
  %2670 = load i64, i64* %RAX.i1594, align 8
  %2671 = xor i64 %2670, %2669
  store i64 %2671, i64* %RCX.i1565, align 8
  store i8 0, i8* %51, align 1
  %2672 = trunc i64 %2671 to i32
  %2673 = and i32 %2672, 255
  %2674 = tail call i32 @llvm.ctpop.i32(i32 %2673)
  %2675 = trunc i32 %2674 to i8
  %2676 = and i8 %2675, 1
  %2677 = xor i8 %2676, 1
  store i8 %2677, i8* %52, align 1
  %2678 = icmp eq i64 %2671, 0
  %2679 = zext i1 %2678 to i8
  store i8 %2679, i8* %54, align 1
  %2680 = lshr i64 %2671, 63
  %2681 = trunc i64 %2680 to i8
  store i8 %2681, i8* %55, align 1
  store i8 0, i8* %56, align 1
  store i8 0, i8* %53, align 1
  store i64 %2671, i64* %2625, align 1
  store i64 0, i64* %2612, align 1
  %2682 = add i64 %2633, 35
  store i64 %2682, i64* %3, align 8
  %2683 = load i64, i64* %2635, align 8
  store i64 %2683, i64* %RAX.i1594, align 8
  %2684 = add i64 %2633, 38
  store i64 %2684, i64* %3, align 8
  %2685 = load i32, i32* %2639, align 4
  %2686 = add i32 %2685, 1
  %2687 = zext i32 %2686 to i64
  store i64 %2687, i64* %RDX.i1610, align 8
  %2688 = icmp eq i32 %2685, -1
  %2689 = icmp eq i32 %2686, 0
  %2690 = or i1 %2688, %2689
  %2691 = zext i1 %2690 to i8
  store i8 %2691, i8* %51, align 1
  %2692 = and i32 %2686, 255
  %2693 = tail call i32 @llvm.ctpop.i32(i32 %2692)
  %2694 = trunc i32 %2693 to i8
  %2695 = and i8 %2694, 1
  %2696 = xor i8 %2695, 1
  store i8 %2696, i8* %52, align 1
  %2697 = xor i32 %2685, %2686
  %2698 = lshr i32 %2697, 4
  %2699 = trunc i32 %2698 to i8
  %2700 = and i8 %2699, 1
  store i8 %2700, i8* %53, align 1
  %2701 = zext i1 %2689 to i8
  store i8 %2701, i8* %54, align 1
  %2702 = lshr i32 %2686, 31
  %2703 = trunc i32 %2702 to i8
  store i8 %2703, i8* %55, align 1
  %2704 = lshr i32 %2685, 31
  %2705 = xor i32 %2702, %2704
  %2706 = add nuw nsw i32 %2705, %2702
  %2707 = icmp eq i32 %2706, 2
  %2708 = zext i1 %2707 to i8
  store i8 %2708, i8* %56, align 1
  %2709 = sext i32 %2686 to i64
  store i64 %2709, i64* %RCX.i1565, align 8
  %2710 = shl nsw i64 %2709, 3
  %2711 = add i64 %2710, %2683
  %2712 = add i64 %2633, 49
  store i64 %2712, i64* %3, align 8
  %2713 = inttoptr i64 %2711 to i64*
  store i64 %2671, i64* %2713, align 8
  %2714 = load i64, i64* %RBP.i, align 8
  %2715 = add i64 %2714, -36
  %2716 = load i64, i64* %3, align 8
  %2717 = add i64 %2716, 7
  store i64 %2717, i64* %3, align 8
  %2718 = inttoptr i64 %2715 to i32*
  store i32 1, i32* %2718, align 4
  %.pre4 = load i64, i64* %3, align 8
  br label %block_.L_4021ec

block_.L_4021ec:                                  ; preds = %block_.L_4023d9, %block_.L_40218b
  %2719 = phi i64 [ %3836, %block_.L_4023d9 ], [ %.pre4, %block_.L_40218b ]
  %2720 = load i64, i64* %RBP.i, align 8
  %2721 = add i64 %2720, -36
  %2722 = add i64 %2719, 3
  store i64 %2722, i64* %3, align 8
  %2723 = inttoptr i64 %2721 to i32*
  %2724 = load i32, i32* %2723, align 4
  %2725 = zext i32 %2724 to i64
  store i64 %2725, i64* %RAX.i1594, align 8
  %2726 = add i64 %2720, -48
  %2727 = add i64 %2719, 6
  store i64 %2727, i64* %3, align 8
  %2728 = inttoptr i64 %2726 to i32*
  %2729 = load i32, i32* %2728, align 4
  %2730 = sub i32 %2724, %2729
  %2731 = icmp ult i32 %2724, %2729
  %2732 = zext i1 %2731 to i8
  store i8 %2732, i8* %51, align 1
  %2733 = and i32 %2730, 255
  %2734 = tail call i32 @llvm.ctpop.i32(i32 %2733)
  %2735 = trunc i32 %2734 to i8
  %2736 = and i8 %2735, 1
  %2737 = xor i8 %2736, 1
  store i8 %2737, i8* %52, align 1
  %2738 = xor i32 %2729, %2724
  %2739 = xor i32 %2738, %2730
  %2740 = lshr i32 %2739, 4
  %2741 = trunc i32 %2740 to i8
  %2742 = and i8 %2741, 1
  store i8 %2742, i8* %53, align 1
  %2743 = icmp eq i32 %2730, 0
  %2744 = zext i1 %2743 to i8
  store i8 %2744, i8* %54, align 1
  %2745 = lshr i32 %2730, 31
  %2746 = trunc i32 %2745 to i8
  store i8 %2746, i8* %55, align 1
  %2747 = lshr i32 %2724, 31
  %2748 = lshr i32 %2729, 31
  %2749 = xor i32 %2748, %2747
  %2750 = xor i32 %2745, %2747
  %2751 = add nuw nsw i32 %2750, %2749
  %2752 = icmp eq i32 %2751, 2
  %2753 = zext i1 %2752 to i8
  store i8 %2753, i8* %56, align 1
  %2754 = icmp ne i8 %2746, 0
  %2755 = xor i1 %2754, %2752
  %.v18 = select i1 %2755, i64 12, i64 641
  %2756 = add i64 %2719, %.v18
  store i64 %2756, i64* %3, align 8
  br i1 %2755, label %block_4021f8, label %block_.L_40246d

block_4021f8:                                     ; preds = %block_.L_4021ec
  %2757 = add i64 %2720, -28
  %2758 = add i64 %2756, 7
  store i64 %2758, i64* %3, align 8
  %2759 = inttoptr i64 %2757 to i32*
  store i32 0, i32* %2759, align 4
  %.pre5 = load i64, i64* %3, align 8
  br label %block_.L_4021ff

block_.L_4021ff:                                  ; preds = %block_40220b, %block_4021f8
  %2760 = phi i64 [ %3569, %block_40220b ], [ %.pre5, %block_4021f8 ]
  %2761 = load i64, i64* %RBP.i, align 8
  %2762 = add i64 %2761, -28
  %2763 = add i64 %2760, 3
  store i64 %2763, i64* %3, align 8
  %2764 = inttoptr i64 %2762 to i32*
  %2765 = load i32, i32* %2764, align 4
  %2766 = zext i32 %2765 to i64
  store i64 %2766, i64* %RAX.i1594, align 8
  %2767 = add i64 %2761, -36
  %2768 = add i64 %2760, 6
  store i64 %2768, i64* %3, align 8
  %2769 = inttoptr i64 %2767 to i32*
  %2770 = load i32, i32* %2769, align 4
  %2771 = sub i32 %2765, %2770
  %2772 = icmp ult i32 %2765, %2770
  %2773 = zext i1 %2772 to i8
  store i8 %2773, i8* %51, align 1
  %2774 = and i32 %2771, 255
  %2775 = tail call i32 @llvm.ctpop.i32(i32 %2774)
  %2776 = trunc i32 %2775 to i8
  %2777 = and i8 %2776, 1
  %2778 = xor i8 %2777, 1
  store i8 %2778, i8* %52, align 1
  %2779 = xor i32 %2770, %2765
  %2780 = xor i32 %2779, %2771
  %2781 = lshr i32 %2780, 4
  %2782 = trunc i32 %2781 to i8
  %2783 = and i8 %2782, 1
  store i8 %2783, i8* %53, align 1
  %2784 = icmp eq i32 %2771, 0
  %2785 = zext i1 %2784 to i8
  store i8 %2785, i8* %54, align 1
  %2786 = lshr i32 %2771, 31
  %2787 = trunc i32 %2786 to i8
  store i8 %2787, i8* %55, align 1
  %2788 = lshr i32 %2765, 31
  %2789 = lshr i32 %2770, 31
  %2790 = xor i32 %2789, %2788
  %2791 = xor i32 %2786, %2788
  %2792 = add nuw nsw i32 %2791, %2790
  %2793 = icmp eq i32 %2792, 2
  %2794 = zext i1 %2793 to i8
  store i8 %2794, i8* %56, align 1
  %2795 = icmp ne i8 %2787, 0
  %2796 = xor i1 %2795, %2793
  %.v19 = select i1 %2796, i64 12, i64 474
  %2797 = add i64 %2760, %.v19
  store i64 -9223372036854775808, i64* %RAX.i1594, align 8
  %2798 = add i64 %2797, 13
  store i64 %2798, i64* %3, align 8
  br i1 %2796, label %block_40220b, label %block_.L_4023d9

block_40220b:                                     ; preds = %block_.L_4021ff
  %2799 = load i32, i32* %2764, align 4
  %2800 = shl i32 %2799, 1
  %2801 = icmp slt i32 %2799, 0
  %2802 = icmp slt i32 %2800, 0
  %2803 = xor i1 %2801, %2802
  %2804 = zext i32 %2800 to i64
  store i64 %2804, i64* %RCX.i1565, align 8
  %.lobit20 = lshr i32 %2799, 31
  %2805 = trunc i32 %.lobit20 to i8
  store i8 %2805, i8* %51, align 1
  %2806 = and i32 %2800, 254
  %2807 = tail call i32 @llvm.ctpop.i32(i32 %2806)
  %2808 = trunc i32 %2807 to i8
  %2809 = and i8 %2808, 1
  %2810 = xor i8 %2809, 1
  store i8 %2810, i8* %52, align 1
  store i8 0, i8* %53, align 1
  %2811 = icmp eq i32 %2800, 0
  %2812 = zext i1 %2811 to i8
  store i8 %2812, i8* %54, align 1
  %2813 = lshr i32 %2799, 30
  %2814 = and i32 %2813, 1
  %2815 = trunc i32 %2814 to i8
  store i8 %2815, i8* %55, align 1
  %2816 = zext i1 %2803 to i8
  store i8 %2816, i8* %56, align 1
  %2817 = add i64 %2761, -16
  %2818 = add i64 %2797, 20
  store i64 %2818, i64* %3, align 8
  %2819 = inttoptr i64 %2817 to i64*
  %2820 = load i64, i64* %2819, align 8
  store i64 %2820, i64* %RDX.i1610, align 8
  %2821 = add i64 %2797, 24
  store i64 %2821, i64* %3, align 8
  %2822 = load i32, i32* %2769, align 4
  %2823 = sext i32 %2822 to i64
  store i64 %2823, i64* %RSI.i1613, align 8
  %2824 = shl nsw i64 %2823, 2
  %2825 = add i64 %2824, %2820
  %2826 = add i64 %2797, 27
  store i64 %2826, i64* %3, align 8
  %2827 = inttoptr i64 %2825 to i32*
  %2828 = load i32, i32* %2827, align 4
  %2829 = add i32 %2828, %2800
  %2830 = zext i32 %2829 to i64
  store i64 %2830, i64* %RCX.i1565, align 8
  %2831 = icmp ult i32 %2829, %2800
  %2832 = icmp ult i32 %2829, %2828
  %2833 = or i1 %2831, %2832
  %2834 = zext i1 %2833 to i8
  store i8 %2834, i8* %51, align 1
  %2835 = and i32 %2829, 255
  %2836 = tail call i32 @llvm.ctpop.i32(i32 %2835)
  %2837 = trunc i32 %2836 to i8
  %2838 = and i8 %2837, 1
  %2839 = xor i8 %2838, 1
  store i8 %2839, i8* %52, align 1
  %2840 = xor i32 %2828, %2800
  %2841 = xor i32 %2840, %2829
  %2842 = lshr i32 %2841, 4
  %2843 = trunc i32 %2842 to i8
  %2844 = and i8 %2843, 1
  store i8 %2844, i8* %53, align 1
  %2845 = icmp eq i32 %2829, 0
  %2846 = zext i1 %2845 to i8
  store i8 %2846, i8* %54, align 1
  %2847 = lshr i32 %2829, 31
  %2848 = trunc i32 %2847 to i8
  store i8 %2848, i8* %55, align 1
  %2849 = lshr i32 %2828, 31
  %2850 = xor i32 %2847, %2814
  %2851 = xor i32 %2847, %2849
  %2852 = add nuw nsw i32 %2850, %2851
  %2853 = icmp eq i32 %2852, 2
  %2854 = zext i1 %2853 to i8
  store i8 %2854, i8* %56, align 1
  %2855 = add i64 %2761, -32
  %2856 = add i64 %2797, 30
  store i64 %2856, i64* %3, align 8
  %2857 = inttoptr i64 %2855 to i32*
  store i32 %2829, i32* %2857, align 4
  %2858 = load i64, i64* %RBP.i, align 8
  %2859 = add i64 %2858, -36
  %2860 = load i64, i64* %3, align 8
  %2861 = add i64 %2860, 3
  store i64 %2861, i64* %3, align 8
  %2862 = inttoptr i64 %2859 to i32*
  %2863 = load i32, i32* %2862, align 4
  %2864 = shl i32 %2863, 1
  %2865 = icmp slt i32 %2863, 0
  %2866 = icmp slt i32 %2864, 0
  %2867 = xor i1 %2865, %2866
  %2868 = zext i32 %2864 to i64
  store i64 %2868, i64* %RCX.i1565, align 8
  %.lobit21 = lshr i32 %2863, 31
  %2869 = trunc i32 %.lobit21 to i8
  store i8 %2869, i8* %51, align 1
  %2870 = and i32 %2864, 254
  %2871 = tail call i32 @llvm.ctpop.i32(i32 %2870)
  %2872 = trunc i32 %2871 to i8
  %2873 = and i8 %2872, 1
  %2874 = xor i8 %2873, 1
  store i8 %2874, i8* %52, align 1
  store i8 0, i8* %53, align 1
  %2875 = icmp eq i32 %2864, 0
  %2876 = zext i1 %2875 to i8
  store i8 %2876, i8* %54, align 1
  %2877 = lshr i32 %2863, 30
  %2878 = and i32 %2877, 1
  %2879 = trunc i32 %2878 to i8
  store i8 %2879, i8* %55, align 1
  %2880 = zext i1 %2867 to i8
  store i8 %2880, i8* %56, align 1
  %2881 = add i64 %2858, -16
  %2882 = add i64 %2860, 10
  store i64 %2882, i64* %3, align 8
  %2883 = inttoptr i64 %2881 to i64*
  %2884 = load i64, i64* %2883, align 8
  store i64 %2884, i64* %RDX.i1610, align 8
  %2885 = add i64 %2858, -28
  %2886 = add i64 %2860, 14
  store i64 %2886, i64* %3, align 8
  %2887 = inttoptr i64 %2885 to i32*
  %2888 = load i32, i32* %2887, align 4
  %2889 = sext i32 %2888 to i64
  store i64 %2889, i64* %RSI.i1613, align 8
  %2890 = shl nsw i64 %2889, 2
  %2891 = add i64 %2890, %2884
  %2892 = add i64 %2860, 17
  store i64 %2892, i64* %3, align 8
  %2893 = inttoptr i64 %2891 to i32*
  %2894 = load i32, i32* %2893, align 4
  %2895 = add i32 %2894, %2864
  %2896 = zext i32 %2895 to i64
  store i64 %2896, i64* %RCX.i1565, align 8
  %2897 = icmp ult i32 %2895, %2864
  %2898 = icmp ult i32 %2895, %2894
  %2899 = or i1 %2897, %2898
  %2900 = zext i1 %2899 to i8
  store i8 %2900, i8* %51, align 1
  %2901 = and i32 %2895, 255
  %2902 = tail call i32 @llvm.ctpop.i32(i32 %2901)
  %2903 = trunc i32 %2902 to i8
  %2904 = and i8 %2903, 1
  %2905 = xor i8 %2904, 1
  store i8 %2905, i8* %52, align 1
  %2906 = xor i32 %2894, %2864
  %2907 = xor i32 %2906, %2895
  %2908 = lshr i32 %2907, 4
  %2909 = trunc i32 %2908 to i8
  %2910 = and i8 %2909, 1
  store i8 %2910, i8* %53, align 1
  %2911 = icmp eq i32 %2895, 0
  %2912 = zext i1 %2911 to i8
  store i8 %2912, i8* %54, align 1
  %2913 = lshr i32 %2895, 31
  %2914 = trunc i32 %2913 to i8
  store i8 %2914, i8* %55, align 1
  %2915 = lshr i32 %2894, 31
  %2916 = xor i32 %2913, %2878
  %2917 = xor i32 %2913, %2915
  %2918 = add nuw nsw i32 %2916, %2917
  %2919 = icmp eq i32 %2918, 2
  %2920 = zext i1 %2919 to i8
  store i8 %2920, i8* %56, align 1
  %2921 = add i64 %2858, -40
  %2922 = add i64 %2860, 20
  store i64 %2922, i64* %3, align 8
  %2923 = inttoptr i64 %2921 to i32*
  store i32 %2895, i32* %2923, align 4
  %2924 = load i64, i64* %RBP.i, align 8
  %2925 = add i64 %2924, -24
  %2926 = load i64, i64* %3, align 8
  %2927 = add i64 %2926, 4
  store i64 %2927, i64* %3, align 8
  %2928 = inttoptr i64 %2925 to i64*
  %2929 = load i64, i64* %2928, align 8
  store i64 %2929, i64* %RDX.i1610, align 8
  %2930 = add i64 %2924, -32
  %2931 = add i64 %2926, 8
  store i64 %2931, i64* %3, align 8
  %2932 = inttoptr i64 %2930 to i32*
  %2933 = load i32, i32* %2932, align 4
  %2934 = sext i32 %2933 to i64
  store i64 %2934, i64* %RSI.i1613, align 8
  %2935 = shl nsw i64 %2934, 3
  %2936 = add i64 %2935, %2929
  %2937 = add i64 %2926, 13
  store i64 %2937, i64* %3, align 8
  %2938 = inttoptr i64 %2936 to i64*
  %2939 = load i64, i64* %2938, align 8
  store i64 %2939, i64* %2625, align 1
  store double 0.000000e+00, double* %2613, align 1
  %2940 = add i64 %2924, -64
  %2941 = add i64 %2926, 18
  store i64 %2941, i64* %3, align 8
  %2942 = inttoptr i64 %2940 to i64*
  store i64 %2939, i64* %2942, align 8
  %2943 = load i64, i64* %RBP.i, align 8
  %2944 = add i64 %2943, -24
  %2945 = load i64, i64* %3, align 8
  %2946 = add i64 %2945, 4
  store i64 %2946, i64* %3, align 8
  %2947 = inttoptr i64 %2944 to i64*
  %2948 = load i64, i64* %2947, align 8
  store i64 %2948, i64* %RDX.i1610, align 8
  %2949 = add i64 %2943, -32
  %2950 = add i64 %2945, 7
  store i64 %2950, i64* %3, align 8
  %2951 = inttoptr i64 %2949 to i32*
  %2952 = load i32, i32* %2951, align 4
  %2953 = add i32 %2952, 1
  %2954 = zext i32 %2953 to i64
  store i64 %2954, i64* %RCX.i1565, align 8
  %2955 = icmp eq i32 %2952, -1
  %2956 = icmp eq i32 %2953, 0
  %2957 = or i1 %2955, %2956
  %2958 = zext i1 %2957 to i8
  store i8 %2958, i8* %51, align 1
  %2959 = and i32 %2953, 255
  %2960 = tail call i32 @llvm.ctpop.i32(i32 %2959)
  %2961 = trunc i32 %2960 to i8
  %2962 = and i8 %2961, 1
  %2963 = xor i8 %2962, 1
  store i8 %2963, i8* %52, align 1
  %2964 = xor i32 %2952, %2953
  %2965 = lshr i32 %2964, 4
  %2966 = trunc i32 %2965 to i8
  %2967 = and i8 %2966, 1
  store i8 %2967, i8* %53, align 1
  %2968 = zext i1 %2956 to i8
  store i8 %2968, i8* %54, align 1
  %2969 = lshr i32 %2953, 31
  %2970 = trunc i32 %2969 to i8
  store i8 %2970, i8* %55, align 1
  %2971 = lshr i32 %2952, 31
  %2972 = xor i32 %2969, %2971
  %2973 = add nuw nsw i32 %2972, %2969
  %2974 = icmp eq i32 %2973, 2
  %2975 = zext i1 %2974 to i8
  store i8 %2975, i8* %56, align 1
  %2976 = sext i32 %2953 to i64
  store i64 %2976, i64* %RSI.i1613, align 8
  %2977 = shl nsw i64 %2976, 3
  %2978 = add i64 %2977, %2948
  %2979 = add i64 %2945, 18
  store i64 %2979, i64* %3, align 8
  %2980 = inttoptr i64 %2978 to i64*
  %2981 = load i64, i64* %2980, align 8
  %2982 = load i64, i64* %RAX.i1594, align 8
  %2983 = xor i64 %2982, %2981
  store i64 %2983, i64* %RDX.i1610, align 8
  store i8 0, i8* %51, align 1
  %2984 = trunc i64 %2983 to i32
  %2985 = and i32 %2984, 255
  %2986 = tail call i32 @llvm.ctpop.i32(i32 %2985)
  %2987 = trunc i32 %2986 to i8
  %2988 = and i8 %2987, 1
  %2989 = xor i8 %2988, 1
  store i8 %2989, i8* %52, align 1
  %2990 = icmp eq i64 %2983, 0
  %2991 = zext i1 %2990 to i8
  store i8 %2991, i8* %54, align 1
  %2992 = lshr i64 %2983, 63
  %2993 = trunc i64 %2992 to i8
  store i8 %2993, i8* %55, align 1
  store i8 0, i8* %56, align 1
  store i8 0, i8* %53, align 1
  store i64 %2983, i64* %2625, align 1
  store i64 0, i64* %2612, align 1
  %2994 = add i64 %2943, -72
  %2995 = add i64 %2945, 36
  store i64 %2995, i64* %3, align 8
  %2996 = inttoptr i64 %2994 to i64*
  store i64 %2983, i64* %2996, align 8
  %2997 = load i64, i64* %RBP.i, align 8
  %2998 = add i64 %2997, -24
  %2999 = load i64, i64* %3, align 8
  %3000 = add i64 %2999, 4
  store i64 %3000, i64* %3, align 8
  %3001 = inttoptr i64 %2998 to i64*
  %3002 = load i64, i64* %3001, align 8
  store i64 %3002, i64* %RDX.i1610, align 8
  %3003 = add i64 %2997, -40
  %3004 = add i64 %2999, 8
  store i64 %3004, i64* %3, align 8
  %3005 = inttoptr i64 %3003 to i32*
  %3006 = load i32, i32* %3005, align 4
  %3007 = sext i32 %3006 to i64
  store i64 %3007, i64* %RSI.i1613, align 8
  %3008 = shl nsw i64 %3007, 3
  %3009 = add i64 %3008, %3002
  %3010 = add i64 %2999, 13
  store i64 %3010, i64* %3, align 8
  %3011 = inttoptr i64 %3009 to i64*
  %3012 = load i64, i64* %3011, align 8
  store i64 %3012, i64* %2625, align 1
  store double 0.000000e+00, double* %2613, align 1
  %3013 = add i64 %2997, -80
  %3014 = add i64 %2999, 18
  store i64 %3014, i64* %3, align 8
  %3015 = inttoptr i64 %3013 to i64*
  store i64 %3012, i64* %3015, align 8
  %3016 = load i64, i64* %RBP.i, align 8
  %3017 = add i64 %3016, -24
  %3018 = load i64, i64* %3, align 8
  %3019 = add i64 %3018, 4
  store i64 %3019, i64* %3, align 8
  %3020 = inttoptr i64 %3017 to i64*
  %3021 = load i64, i64* %3020, align 8
  store i64 %3021, i64* %RDX.i1610, align 8
  %3022 = add i64 %3016, -40
  %3023 = add i64 %3018, 7
  store i64 %3023, i64* %3, align 8
  %3024 = inttoptr i64 %3022 to i32*
  %3025 = load i32, i32* %3024, align 4
  %3026 = add i32 %3025, 1
  %3027 = zext i32 %3026 to i64
  store i64 %3027, i64* %RCX.i1565, align 8
  %3028 = icmp eq i32 %3025, -1
  %3029 = icmp eq i32 %3026, 0
  %3030 = or i1 %3028, %3029
  %3031 = zext i1 %3030 to i8
  store i8 %3031, i8* %51, align 1
  %3032 = and i32 %3026, 255
  %3033 = tail call i32 @llvm.ctpop.i32(i32 %3032)
  %3034 = trunc i32 %3033 to i8
  %3035 = and i8 %3034, 1
  %3036 = xor i8 %3035, 1
  store i8 %3036, i8* %52, align 1
  %3037 = xor i32 %3025, %3026
  %3038 = lshr i32 %3037, 4
  %3039 = trunc i32 %3038 to i8
  %3040 = and i8 %3039, 1
  store i8 %3040, i8* %53, align 1
  %3041 = zext i1 %3029 to i8
  store i8 %3041, i8* %54, align 1
  %3042 = lshr i32 %3026, 31
  %3043 = trunc i32 %3042 to i8
  store i8 %3043, i8* %55, align 1
  %3044 = lshr i32 %3025, 31
  %3045 = xor i32 %3042, %3044
  %3046 = add nuw nsw i32 %3045, %3042
  %3047 = icmp eq i32 %3046, 2
  %3048 = zext i1 %3047 to i8
  store i8 %3048, i8* %56, align 1
  %3049 = sext i32 %3026 to i64
  store i64 %3049, i64* %RSI.i1613, align 8
  %3050 = shl nsw i64 %3049, 3
  %3051 = add i64 %3050, %3021
  %3052 = add i64 %3018, 18
  store i64 %3052, i64* %3, align 8
  %3053 = inttoptr i64 %3051 to i64*
  %3054 = load i64, i64* %3053, align 8
  %3055 = load i64, i64* %RAX.i1594, align 8
  %3056 = xor i64 %3055, %3054
  store i64 %3056, i64* %RDX.i1610, align 8
  store i8 0, i8* %51, align 1
  %3057 = trunc i64 %3056 to i32
  %3058 = and i32 %3057, 255
  %3059 = tail call i32 @llvm.ctpop.i32(i32 %3058)
  %3060 = trunc i32 %3059 to i8
  %3061 = and i8 %3060, 1
  %3062 = xor i8 %3061, 1
  store i8 %3062, i8* %52, align 1
  %3063 = icmp eq i64 %3056, 0
  %3064 = zext i1 %3063 to i8
  store i8 %3064, i8* %54, align 1
  %3065 = lshr i64 %3056, 63
  %3066 = trunc i64 %3065 to i8
  store i8 %3066, i8* %55, align 1
  store i8 0, i8* %56, align 1
  store i8 0, i8* %53, align 1
  store i64 %3056, i64* %2625, align 1
  store i64 0, i64* %2612, align 1
  %3067 = add i64 %3016, -88
  %3068 = add i64 %3018, 36
  store i64 %3068, i64* %3, align 8
  %3069 = inttoptr i64 %3067 to i64*
  store i64 %3056, i64* %3069, align 8
  %3070 = load i64, i64* %RBP.i, align 8
  %3071 = add i64 %3070, -80
  %3072 = load i64, i64* %3, align 8
  %3073 = add i64 %3072, 5
  store i64 %3073, i64* %3, align 8
  %3074 = inttoptr i64 %3071 to i64*
  %3075 = load i64, i64* %3074, align 8
  store i64 %3075, i64* %2625, align 1
  store double 0.000000e+00, double* %2613, align 1
  %3076 = add i64 %3070, -24
  %3077 = add i64 %3072, 9
  store i64 %3077, i64* %3, align 8
  %3078 = inttoptr i64 %3076 to i64*
  %3079 = load i64, i64* %3078, align 8
  store i64 %3079, i64* %RDX.i1610, align 8
  %3080 = add i64 %3070, -32
  %3081 = add i64 %3072, 13
  store i64 %3081, i64* %3, align 8
  %3082 = inttoptr i64 %3080 to i32*
  %3083 = load i32, i32* %3082, align 4
  %3084 = sext i32 %3083 to i64
  store i64 %3084, i64* %RSI.i1613, align 8
  %3085 = shl nsw i64 %3084, 3
  %3086 = add i64 %3085, %3079
  %3087 = add i64 %3072, 18
  store i64 %3087, i64* %3, align 8
  %3088 = inttoptr i64 %3086 to i64*
  store i64 %3075, i64* %3088, align 8
  %3089 = load i64, i64* %RBP.i, align 8
  %3090 = add i64 %3089, -88
  %3091 = load i64, i64* %3, align 8
  %3092 = add i64 %3091, 5
  store i64 %3092, i64* %3, align 8
  %3093 = inttoptr i64 %3090 to i64*
  %3094 = load i64, i64* %3093, align 8
  store i64 %3094, i64* %2625, align 1
  store double 0.000000e+00, double* %2613, align 1
  %3095 = add i64 %3089, -24
  %3096 = add i64 %3091, 9
  store i64 %3096, i64* %3, align 8
  %3097 = inttoptr i64 %3095 to i64*
  %3098 = load i64, i64* %3097, align 8
  store i64 %3098, i64* %RDX.i1610, align 8
  %3099 = add i64 %3089, -32
  %3100 = add i64 %3091, 12
  store i64 %3100, i64* %3, align 8
  %3101 = inttoptr i64 %3099 to i32*
  %3102 = load i32, i32* %3101, align 4
  %3103 = add i32 %3102, 1
  %3104 = zext i32 %3103 to i64
  store i64 %3104, i64* %RCX.i1565, align 8
  %3105 = icmp eq i32 %3102, -1
  %3106 = icmp eq i32 %3103, 0
  %3107 = or i1 %3105, %3106
  %3108 = zext i1 %3107 to i8
  store i8 %3108, i8* %51, align 1
  %3109 = and i32 %3103, 255
  %3110 = tail call i32 @llvm.ctpop.i32(i32 %3109)
  %3111 = trunc i32 %3110 to i8
  %3112 = and i8 %3111, 1
  %3113 = xor i8 %3112, 1
  store i8 %3113, i8* %52, align 1
  %3114 = xor i32 %3102, %3103
  %3115 = lshr i32 %3114, 4
  %3116 = trunc i32 %3115 to i8
  %3117 = and i8 %3116, 1
  store i8 %3117, i8* %53, align 1
  %3118 = zext i1 %3106 to i8
  store i8 %3118, i8* %54, align 1
  %3119 = lshr i32 %3103, 31
  %3120 = trunc i32 %3119 to i8
  store i8 %3120, i8* %55, align 1
  %3121 = lshr i32 %3102, 31
  %3122 = xor i32 %3119, %3121
  %3123 = add nuw nsw i32 %3122, %3119
  %3124 = icmp eq i32 %3123, 2
  %3125 = zext i1 %3124 to i8
  store i8 %3125, i8* %56, align 1
  %3126 = sext i32 %3103 to i64
  store i64 %3126, i64* %RSI.i1613, align 8
  %3127 = shl nsw i64 %3126, 3
  %3128 = add i64 %3127, %3098
  %3129 = add i64 %3091, 23
  store i64 %3129, i64* %3, align 8
  %3130 = inttoptr i64 %3128 to i64*
  store i64 %3094, i64* %3130, align 8
  %3131 = load i64, i64* %RBP.i, align 8
  %3132 = add i64 %3131, -64
  %3133 = load i64, i64* %3, align 8
  %3134 = add i64 %3133, 5
  store i64 %3134, i64* %3, align 8
  %3135 = inttoptr i64 %3132 to i64*
  %3136 = load i64, i64* %3135, align 8
  store i64 %3136, i64* %2625, align 1
  store double 0.000000e+00, double* %2613, align 1
  %3137 = add i64 %3131, -24
  %3138 = add i64 %3133, 9
  store i64 %3138, i64* %3, align 8
  %3139 = inttoptr i64 %3137 to i64*
  %3140 = load i64, i64* %3139, align 8
  store i64 %3140, i64* %RDX.i1610, align 8
  %3141 = add i64 %3131, -40
  %3142 = add i64 %3133, 13
  store i64 %3142, i64* %3, align 8
  %3143 = inttoptr i64 %3141 to i32*
  %3144 = load i32, i32* %3143, align 4
  %3145 = sext i32 %3144 to i64
  store i64 %3145, i64* %RSI.i1613, align 8
  %3146 = shl nsw i64 %3145, 3
  %3147 = add i64 %3146, %3140
  %3148 = add i64 %3133, 18
  store i64 %3148, i64* %3, align 8
  %3149 = inttoptr i64 %3147 to i64*
  store i64 %3136, i64* %3149, align 8
  %3150 = load i64, i64* %RBP.i, align 8
  %3151 = add i64 %3150, -72
  %3152 = load i64, i64* %3, align 8
  %3153 = add i64 %3152, 5
  store i64 %3153, i64* %3, align 8
  %3154 = inttoptr i64 %3151 to i64*
  %3155 = load i64, i64* %3154, align 8
  store i64 %3155, i64* %2625, align 1
  store double 0.000000e+00, double* %2613, align 1
  %3156 = add i64 %3150, -24
  %3157 = add i64 %3152, 9
  store i64 %3157, i64* %3, align 8
  %3158 = inttoptr i64 %3156 to i64*
  %3159 = load i64, i64* %3158, align 8
  store i64 %3159, i64* %RDX.i1610, align 8
  %3160 = add i64 %3150, -40
  %3161 = add i64 %3152, 12
  store i64 %3161, i64* %3, align 8
  %3162 = inttoptr i64 %3160 to i32*
  %3163 = load i32, i32* %3162, align 4
  %3164 = add i32 %3163, 1
  %3165 = zext i32 %3164 to i64
  store i64 %3165, i64* %RCX.i1565, align 8
  %3166 = icmp eq i32 %3163, -1
  %3167 = icmp eq i32 %3164, 0
  %3168 = or i1 %3166, %3167
  %3169 = zext i1 %3168 to i8
  store i8 %3169, i8* %51, align 1
  %3170 = and i32 %3164, 255
  %3171 = tail call i32 @llvm.ctpop.i32(i32 %3170)
  %3172 = trunc i32 %3171 to i8
  %3173 = and i8 %3172, 1
  %3174 = xor i8 %3173, 1
  store i8 %3174, i8* %52, align 1
  %3175 = xor i32 %3163, %3164
  %3176 = lshr i32 %3175, 4
  %3177 = trunc i32 %3176 to i8
  %3178 = and i8 %3177, 1
  store i8 %3178, i8* %53, align 1
  %3179 = zext i1 %3167 to i8
  store i8 %3179, i8* %54, align 1
  %3180 = lshr i32 %3164, 31
  %3181 = trunc i32 %3180 to i8
  store i8 %3181, i8* %55, align 1
  %3182 = lshr i32 %3163, 31
  %3183 = xor i32 %3180, %3182
  %3184 = add nuw nsw i32 %3183, %3180
  %3185 = icmp eq i32 %3184, 2
  %3186 = zext i1 %3185 to i8
  store i8 %3186, i8* %56, align 1
  %3187 = sext i32 %3164 to i64
  store i64 %3187, i64* %RSI.i1613, align 8
  %3188 = shl nsw i64 %3187, 3
  %3189 = add i64 %3188, %3159
  %3190 = add i64 %3152, 23
  store i64 %3190, i64* %3, align 8
  %3191 = inttoptr i64 %3189 to i64*
  store i64 %3155, i64* %3191, align 8
  %3192 = load i64, i64* %RBP.i, align 8
  %3193 = add i64 %3192, -52
  %3194 = load i64, i64* %3, align 8
  %3195 = add i64 %3194, 3
  store i64 %3195, i64* %3, align 8
  %3196 = inttoptr i64 %3193 to i32*
  %3197 = load i32, i32* %3196, align 4
  %3198 = zext i32 %3197 to i64
  store i64 %3198, i64* %RCX.i1565, align 8
  %3199 = add i64 %3192, -32
  %3200 = add i64 %3194, 6
  store i64 %3200, i64* %3, align 8
  %3201 = inttoptr i64 %3199 to i32*
  %3202 = load i32, i32* %3201, align 4
  %3203 = add i32 %3202, %3197
  %3204 = zext i32 %3203 to i64
  store i64 %3204, i64* %RCX.i1565, align 8
  %3205 = icmp ult i32 %3203, %3197
  %3206 = icmp ult i32 %3203, %3202
  %3207 = or i1 %3205, %3206
  %3208 = zext i1 %3207 to i8
  store i8 %3208, i8* %51, align 1
  %3209 = and i32 %3203, 255
  %3210 = tail call i32 @llvm.ctpop.i32(i32 %3209)
  %3211 = trunc i32 %3210 to i8
  %3212 = and i8 %3211, 1
  %3213 = xor i8 %3212, 1
  store i8 %3213, i8* %52, align 1
  %3214 = xor i32 %3202, %3197
  %3215 = xor i32 %3214, %3203
  %3216 = lshr i32 %3215, 4
  %3217 = trunc i32 %3216 to i8
  %3218 = and i8 %3217, 1
  store i8 %3218, i8* %53, align 1
  %3219 = icmp eq i32 %3203, 0
  %3220 = zext i1 %3219 to i8
  store i8 %3220, i8* %54, align 1
  %3221 = lshr i32 %3203, 31
  %3222 = trunc i32 %3221 to i8
  store i8 %3222, i8* %55, align 1
  %3223 = lshr i32 %3197, 31
  %3224 = lshr i32 %3202, 31
  %3225 = xor i32 %3221, %3223
  %3226 = xor i32 %3221, %3224
  %3227 = add nuw nsw i32 %3225, %3226
  %3228 = icmp eq i32 %3227, 2
  %3229 = zext i1 %3228 to i8
  store i8 %3229, i8* %56, align 1
  %3230 = add i64 %3194, 9
  store i64 %3230, i64* %3, align 8
  store i32 %3203, i32* %3201, align 4
  %3231 = load i64, i64* %RBP.i, align 8
  %3232 = add i64 %3231, -52
  %3233 = load i64, i64* %3, align 8
  %3234 = add i64 %3233, 3
  store i64 %3234, i64* %3, align 8
  %3235 = inttoptr i64 %3232 to i32*
  %3236 = load i32, i32* %3235, align 4
  %3237 = zext i32 %3236 to i64
  store i64 %3237, i64* %RCX.i1565, align 8
  %3238 = add i64 %3231, -40
  %3239 = add i64 %3233, 6
  store i64 %3239, i64* %3, align 8
  %3240 = inttoptr i64 %3238 to i32*
  %3241 = load i32, i32* %3240, align 4
  %3242 = add i32 %3241, %3236
  %3243 = zext i32 %3242 to i64
  store i64 %3243, i64* %RCX.i1565, align 8
  %3244 = icmp ult i32 %3242, %3236
  %3245 = icmp ult i32 %3242, %3241
  %3246 = or i1 %3244, %3245
  %3247 = zext i1 %3246 to i8
  store i8 %3247, i8* %51, align 1
  %3248 = and i32 %3242, 255
  %3249 = tail call i32 @llvm.ctpop.i32(i32 %3248)
  %3250 = trunc i32 %3249 to i8
  %3251 = and i8 %3250, 1
  %3252 = xor i8 %3251, 1
  store i8 %3252, i8* %52, align 1
  %3253 = xor i32 %3241, %3236
  %3254 = xor i32 %3253, %3242
  %3255 = lshr i32 %3254, 4
  %3256 = trunc i32 %3255 to i8
  %3257 = and i8 %3256, 1
  store i8 %3257, i8* %53, align 1
  %3258 = icmp eq i32 %3242, 0
  %3259 = zext i1 %3258 to i8
  store i8 %3259, i8* %54, align 1
  %3260 = lshr i32 %3242, 31
  %3261 = trunc i32 %3260 to i8
  store i8 %3261, i8* %55, align 1
  %3262 = lshr i32 %3236, 31
  %3263 = lshr i32 %3241, 31
  %3264 = xor i32 %3260, %3262
  %3265 = xor i32 %3260, %3263
  %3266 = add nuw nsw i32 %3264, %3265
  %3267 = icmp eq i32 %3266, 2
  %3268 = zext i1 %3267 to i8
  store i8 %3268, i8* %56, align 1
  %3269 = add i64 %3233, 9
  store i64 %3269, i64* %3, align 8
  store i32 %3242, i32* %3240, align 4
  %3270 = load i64, i64* %RBP.i, align 8
  %3271 = add i64 %3270, -24
  %3272 = load i64, i64* %3, align 8
  %3273 = add i64 %3272, 4
  store i64 %3273, i64* %3, align 8
  %3274 = inttoptr i64 %3271 to i64*
  %3275 = load i64, i64* %3274, align 8
  store i64 %3275, i64* %RDX.i1610, align 8
  %3276 = add i64 %3270, -32
  %3277 = add i64 %3272, 8
  store i64 %3277, i64* %3, align 8
  %3278 = inttoptr i64 %3276 to i32*
  %3279 = load i32, i32* %3278, align 4
  %3280 = sext i32 %3279 to i64
  store i64 %3280, i64* %RSI.i1613, align 8
  %3281 = shl nsw i64 %3280, 3
  %3282 = add i64 %3281, %3275
  %3283 = add i64 %3272, 13
  store i64 %3283, i64* %3, align 8
  %3284 = inttoptr i64 %3282 to i64*
  %3285 = load i64, i64* %3284, align 8
  store i64 %3285, i64* %2625, align 1
  store double 0.000000e+00, double* %2613, align 1
  %3286 = add i64 %3270, -64
  %3287 = add i64 %3272, 18
  store i64 %3287, i64* %3, align 8
  %3288 = inttoptr i64 %3286 to i64*
  store i64 %3285, i64* %3288, align 8
  %3289 = load i64, i64* %RBP.i, align 8
  %3290 = add i64 %3289, -24
  %3291 = load i64, i64* %3, align 8
  %3292 = add i64 %3291, 4
  store i64 %3292, i64* %3, align 8
  %3293 = inttoptr i64 %3290 to i64*
  %3294 = load i64, i64* %3293, align 8
  store i64 %3294, i64* %RDX.i1610, align 8
  %3295 = add i64 %3289, -32
  %3296 = add i64 %3291, 7
  store i64 %3296, i64* %3, align 8
  %3297 = inttoptr i64 %3295 to i32*
  %3298 = load i32, i32* %3297, align 4
  %3299 = add i32 %3298, 1
  %3300 = zext i32 %3299 to i64
  store i64 %3300, i64* %RCX.i1565, align 8
  %3301 = icmp eq i32 %3298, -1
  %3302 = icmp eq i32 %3299, 0
  %3303 = or i1 %3301, %3302
  %3304 = zext i1 %3303 to i8
  store i8 %3304, i8* %51, align 1
  %3305 = and i32 %3299, 255
  %3306 = tail call i32 @llvm.ctpop.i32(i32 %3305)
  %3307 = trunc i32 %3306 to i8
  %3308 = and i8 %3307, 1
  %3309 = xor i8 %3308, 1
  store i8 %3309, i8* %52, align 1
  %3310 = xor i32 %3298, %3299
  %3311 = lshr i32 %3310, 4
  %3312 = trunc i32 %3311 to i8
  %3313 = and i8 %3312, 1
  store i8 %3313, i8* %53, align 1
  %3314 = zext i1 %3302 to i8
  store i8 %3314, i8* %54, align 1
  %3315 = lshr i32 %3299, 31
  %3316 = trunc i32 %3315 to i8
  store i8 %3316, i8* %55, align 1
  %3317 = lshr i32 %3298, 31
  %3318 = xor i32 %3315, %3317
  %3319 = add nuw nsw i32 %3318, %3315
  %3320 = icmp eq i32 %3319, 2
  %3321 = zext i1 %3320 to i8
  store i8 %3321, i8* %56, align 1
  %3322 = sext i32 %3299 to i64
  store i64 %3322, i64* %RSI.i1613, align 8
  %3323 = shl nsw i64 %3322, 3
  %3324 = add i64 %3323, %3294
  %3325 = add i64 %3291, 18
  store i64 %3325, i64* %3, align 8
  %3326 = inttoptr i64 %3324 to i64*
  %3327 = load i64, i64* %3326, align 8
  %3328 = load i64, i64* %RAX.i1594, align 8
  %3329 = xor i64 %3328, %3327
  store i64 %3329, i64* %RDX.i1610, align 8
  store i8 0, i8* %51, align 1
  %3330 = trunc i64 %3329 to i32
  %3331 = and i32 %3330, 255
  %3332 = tail call i32 @llvm.ctpop.i32(i32 %3331)
  %3333 = trunc i32 %3332 to i8
  %3334 = and i8 %3333, 1
  %3335 = xor i8 %3334, 1
  store i8 %3335, i8* %52, align 1
  %3336 = icmp eq i64 %3329, 0
  %3337 = zext i1 %3336 to i8
  store i8 %3337, i8* %54, align 1
  %3338 = lshr i64 %3329, 63
  %3339 = trunc i64 %3338 to i8
  store i8 %3339, i8* %55, align 1
  store i8 0, i8* %56, align 1
  store i8 0, i8* %53, align 1
  store i64 %3329, i64* %2625, align 1
  store i64 0, i64* %2612, align 1
  %3340 = add i64 %3289, -72
  %3341 = add i64 %3291, 36
  store i64 %3341, i64* %3, align 8
  %3342 = inttoptr i64 %3340 to i64*
  store i64 %3329, i64* %3342, align 8
  %3343 = load i64, i64* %RBP.i, align 8
  %3344 = add i64 %3343, -24
  %3345 = load i64, i64* %3, align 8
  %3346 = add i64 %3345, 4
  store i64 %3346, i64* %3, align 8
  %3347 = inttoptr i64 %3344 to i64*
  %3348 = load i64, i64* %3347, align 8
  store i64 %3348, i64* %RDX.i1610, align 8
  %3349 = add i64 %3343, -40
  %3350 = add i64 %3345, 8
  store i64 %3350, i64* %3, align 8
  %3351 = inttoptr i64 %3349 to i32*
  %3352 = load i32, i32* %3351, align 4
  %3353 = sext i32 %3352 to i64
  store i64 %3353, i64* %RSI.i1613, align 8
  %3354 = shl nsw i64 %3353, 3
  %3355 = add i64 %3354, %3348
  %3356 = add i64 %3345, 13
  store i64 %3356, i64* %3, align 8
  %3357 = inttoptr i64 %3355 to i64*
  %3358 = load i64, i64* %3357, align 8
  store i64 %3358, i64* %2625, align 1
  store double 0.000000e+00, double* %2613, align 1
  %3359 = add i64 %3343, -80
  %3360 = add i64 %3345, 18
  store i64 %3360, i64* %3, align 8
  %3361 = inttoptr i64 %3359 to i64*
  store i64 %3358, i64* %3361, align 8
  %3362 = load i64, i64* %RBP.i, align 8
  %3363 = add i64 %3362, -24
  %3364 = load i64, i64* %3, align 8
  %3365 = add i64 %3364, 4
  store i64 %3365, i64* %3, align 8
  %3366 = inttoptr i64 %3363 to i64*
  %3367 = load i64, i64* %3366, align 8
  store i64 %3367, i64* %RDX.i1610, align 8
  %3368 = add i64 %3362, -40
  %3369 = add i64 %3364, 7
  store i64 %3369, i64* %3, align 8
  %3370 = inttoptr i64 %3368 to i32*
  %3371 = load i32, i32* %3370, align 4
  %3372 = add i32 %3371, 1
  %3373 = zext i32 %3372 to i64
  store i64 %3373, i64* %RCX.i1565, align 8
  %3374 = icmp eq i32 %3371, -1
  %3375 = icmp eq i32 %3372, 0
  %3376 = or i1 %3374, %3375
  %3377 = zext i1 %3376 to i8
  store i8 %3377, i8* %51, align 1
  %3378 = and i32 %3372, 255
  %3379 = tail call i32 @llvm.ctpop.i32(i32 %3378)
  %3380 = trunc i32 %3379 to i8
  %3381 = and i8 %3380, 1
  %3382 = xor i8 %3381, 1
  store i8 %3382, i8* %52, align 1
  %3383 = xor i32 %3371, %3372
  %3384 = lshr i32 %3383, 4
  %3385 = trunc i32 %3384 to i8
  %3386 = and i8 %3385, 1
  store i8 %3386, i8* %53, align 1
  %3387 = zext i1 %3375 to i8
  store i8 %3387, i8* %54, align 1
  %3388 = lshr i32 %3372, 31
  %3389 = trunc i32 %3388 to i8
  store i8 %3389, i8* %55, align 1
  %3390 = lshr i32 %3371, 31
  %3391 = xor i32 %3388, %3390
  %3392 = add nuw nsw i32 %3391, %3388
  %3393 = icmp eq i32 %3392, 2
  %3394 = zext i1 %3393 to i8
  store i8 %3394, i8* %56, align 1
  %3395 = sext i32 %3372 to i64
  store i64 %3395, i64* %RSI.i1613, align 8
  %3396 = shl nsw i64 %3395, 3
  %3397 = add i64 %3396, %3367
  %3398 = add i64 %3364, 18
  store i64 %3398, i64* %3, align 8
  %3399 = inttoptr i64 %3397 to i64*
  %3400 = load i64, i64* %3399, align 8
  %3401 = load i64, i64* %RAX.i1594, align 8
  %3402 = xor i64 %3401, %3400
  store i64 %3402, i64* %RDX.i1610, align 8
  store i8 0, i8* %51, align 1
  %3403 = trunc i64 %3402 to i32
  %3404 = and i32 %3403, 255
  %3405 = tail call i32 @llvm.ctpop.i32(i32 %3404)
  %3406 = trunc i32 %3405 to i8
  %3407 = and i8 %3406, 1
  %3408 = xor i8 %3407, 1
  store i8 %3408, i8* %52, align 1
  %3409 = icmp eq i64 %3402, 0
  %3410 = zext i1 %3409 to i8
  store i8 %3410, i8* %54, align 1
  %3411 = lshr i64 %3402, 63
  %3412 = trunc i64 %3411 to i8
  store i8 %3412, i8* %55, align 1
  store i8 0, i8* %56, align 1
  store i8 0, i8* %53, align 1
  store i64 %3402, i64* %2625, align 1
  store i64 0, i64* %2612, align 1
  %3413 = add i64 %3362, -88
  %3414 = add i64 %3364, 36
  store i64 %3414, i64* %3, align 8
  %3415 = inttoptr i64 %3413 to i64*
  store i64 %3402, i64* %3415, align 8
  %3416 = load i64, i64* %RBP.i, align 8
  %3417 = add i64 %3416, -80
  %3418 = load i64, i64* %3, align 8
  %3419 = add i64 %3418, 5
  store i64 %3419, i64* %3, align 8
  %3420 = inttoptr i64 %3417 to i64*
  %3421 = load i64, i64* %3420, align 8
  store i64 %3421, i64* %2625, align 1
  store double 0.000000e+00, double* %2613, align 1
  %3422 = add i64 %3416, -24
  %3423 = add i64 %3418, 9
  store i64 %3423, i64* %3, align 8
  %3424 = inttoptr i64 %3422 to i64*
  %3425 = load i64, i64* %3424, align 8
  store i64 %3425, i64* %RAX.i1594, align 8
  %3426 = add i64 %3416, -32
  %3427 = add i64 %3418, 13
  store i64 %3427, i64* %3, align 8
  %3428 = inttoptr i64 %3426 to i32*
  %3429 = load i32, i32* %3428, align 4
  %3430 = sext i32 %3429 to i64
  store i64 %3430, i64* %RDX.i1610, align 8
  %3431 = shl nsw i64 %3430, 3
  %3432 = add i64 %3431, %3425
  %3433 = add i64 %3418, 18
  store i64 %3433, i64* %3, align 8
  %3434 = inttoptr i64 %3432 to i64*
  store i64 %3421, i64* %3434, align 8
  %3435 = load i64, i64* %RBP.i, align 8
  %3436 = add i64 %3435, -88
  %3437 = load i64, i64* %3, align 8
  %3438 = add i64 %3437, 5
  store i64 %3438, i64* %3, align 8
  %3439 = inttoptr i64 %3436 to i64*
  %3440 = load i64, i64* %3439, align 8
  store i64 %3440, i64* %2625, align 1
  store double 0.000000e+00, double* %2613, align 1
  %3441 = add i64 %3435, -24
  %3442 = add i64 %3437, 9
  store i64 %3442, i64* %3, align 8
  %3443 = inttoptr i64 %3441 to i64*
  %3444 = load i64, i64* %3443, align 8
  store i64 %3444, i64* %RAX.i1594, align 8
  %3445 = add i64 %3435, -32
  %3446 = add i64 %3437, 12
  store i64 %3446, i64* %3, align 8
  %3447 = inttoptr i64 %3445 to i32*
  %3448 = load i32, i32* %3447, align 4
  %3449 = add i32 %3448, 1
  %3450 = zext i32 %3449 to i64
  store i64 %3450, i64* %RCX.i1565, align 8
  %3451 = icmp eq i32 %3448, -1
  %3452 = icmp eq i32 %3449, 0
  %3453 = or i1 %3451, %3452
  %3454 = zext i1 %3453 to i8
  store i8 %3454, i8* %51, align 1
  %3455 = and i32 %3449, 255
  %3456 = tail call i32 @llvm.ctpop.i32(i32 %3455)
  %3457 = trunc i32 %3456 to i8
  %3458 = and i8 %3457, 1
  %3459 = xor i8 %3458, 1
  store i8 %3459, i8* %52, align 1
  %3460 = xor i32 %3448, %3449
  %3461 = lshr i32 %3460, 4
  %3462 = trunc i32 %3461 to i8
  %3463 = and i8 %3462, 1
  store i8 %3463, i8* %53, align 1
  %3464 = zext i1 %3452 to i8
  store i8 %3464, i8* %54, align 1
  %3465 = lshr i32 %3449, 31
  %3466 = trunc i32 %3465 to i8
  store i8 %3466, i8* %55, align 1
  %3467 = lshr i32 %3448, 31
  %3468 = xor i32 %3465, %3467
  %3469 = add nuw nsw i32 %3468, %3465
  %3470 = icmp eq i32 %3469, 2
  %3471 = zext i1 %3470 to i8
  store i8 %3471, i8* %56, align 1
  %3472 = sext i32 %3449 to i64
  store i64 %3472, i64* %RDX.i1610, align 8
  %3473 = shl nsw i64 %3472, 3
  %3474 = add i64 %3473, %3444
  %3475 = add i64 %3437, 23
  store i64 %3475, i64* %3, align 8
  %3476 = inttoptr i64 %3474 to i64*
  store i64 %3440, i64* %3476, align 8
  %3477 = load i64, i64* %RBP.i, align 8
  %3478 = add i64 %3477, -64
  %3479 = load i64, i64* %3, align 8
  %3480 = add i64 %3479, 5
  store i64 %3480, i64* %3, align 8
  %3481 = inttoptr i64 %3478 to i64*
  %3482 = load i64, i64* %3481, align 8
  store i64 %3482, i64* %2625, align 1
  store double 0.000000e+00, double* %2613, align 1
  %3483 = add i64 %3477, -24
  %3484 = add i64 %3479, 9
  store i64 %3484, i64* %3, align 8
  %3485 = inttoptr i64 %3483 to i64*
  %3486 = load i64, i64* %3485, align 8
  store i64 %3486, i64* %RAX.i1594, align 8
  %3487 = add i64 %3477, -40
  %3488 = add i64 %3479, 13
  store i64 %3488, i64* %3, align 8
  %3489 = inttoptr i64 %3487 to i32*
  %3490 = load i32, i32* %3489, align 4
  %3491 = sext i32 %3490 to i64
  store i64 %3491, i64* %RDX.i1610, align 8
  %3492 = shl nsw i64 %3491, 3
  %3493 = add i64 %3492, %3486
  %3494 = add i64 %3479, 18
  store i64 %3494, i64* %3, align 8
  %3495 = inttoptr i64 %3493 to i64*
  store i64 %3482, i64* %3495, align 8
  %3496 = load i64, i64* %RBP.i, align 8
  %3497 = add i64 %3496, -72
  %3498 = load i64, i64* %3, align 8
  %3499 = add i64 %3498, 5
  store i64 %3499, i64* %3, align 8
  %3500 = inttoptr i64 %3497 to i64*
  %3501 = load i64, i64* %3500, align 8
  store i64 %3501, i64* %2625, align 1
  store double 0.000000e+00, double* %2613, align 1
  %3502 = add i64 %3496, -24
  %3503 = add i64 %3498, 9
  store i64 %3503, i64* %3, align 8
  %3504 = inttoptr i64 %3502 to i64*
  %3505 = load i64, i64* %3504, align 8
  store i64 %3505, i64* %RAX.i1594, align 8
  %3506 = add i64 %3496, -40
  %3507 = add i64 %3498, 12
  store i64 %3507, i64* %3, align 8
  %3508 = inttoptr i64 %3506 to i32*
  %3509 = load i32, i32* %3508, align 4
  %3510 = add i32 %3509, 1
  %3511 = zext i32 %3510 to i64
  store i64 %3511, i64* %RCX.i1565, align 8
  %3512 = icmp eq i32 %3509, -1
  %3513 = icmp eq i32 %3510, 0
  %3514 = or i1 %3512, %3513
  %3515 = zext i1 %3514 to i8
  store i8 %3515, i8* %51, align 1
  %3516 = and i32 %3510, 255
  %3517 = tail call i32 @llvm.ctpop.i32(i32 %3516)
  %3518 = trunc i32 %3517 to i8
  %3519 = and i8 %3518, 1
  %3520 = xor i8 %3519, 1
  store i8 %3520, i8* %52, align 1
  %3521 = xor i32 %3509, %3510
  %3522 = lshr i32 %3521, 4
  %3523 = trunc i32 %3522 to i8
  %3524 = and i8 %3523, 1
  store i8 %3524, i8* %53, align 1
  %3525 = zext i1 %3513 to i8
  store i8 %3525, i8* %54, align 1
  %3526 = lshr i32 %3510, 31
  %3527 = trunc i32 %3526 to i8
  store i8 %3527, i8* %55, align 1
  %3528 = lshr i32 %3509, 31
  %3529 = xor i32 %3526, %3528
  %3530 = add nuw nsw i32 %3529, %3526
  %3531 = icmp eq i32 %3530, 2
  %3532 = zext i1 %3531 to i8
  store i8 %3532, i8* %56, align 1
  %3533 = sext i32 %3510 to i64
  store i64 %3533, i64* %RDX.i1610, align 8
  %3534 = shl nsw i64 %3533, 3
  %3535 = add i64 %3534, %3505
  %3536 = add i64 %3498, 23
  store i64 %3536, i64* %3, align 8
  %3537 = inttoptr i64 %3535 to i64*
  store i64 %3501, i64* %3537, align 8
  %3538 = load i64, i64* %RBP.i, align 8
  %3539 = add i64 %3538, -28
  %3540 = load i64, i64* %3, align 8
  %3541 = add i64 %3540, 3
  store i64 %3541, i64* %3, align 8
  %3542 = inttoptr i64 %3539 to i32*
  %3543 = load i32, i32* %3542, align 4
  %3544 = add i32 %3543, 1
  %3545 = zext i32 %3544 to i64
  store i64 %3545, i64* %RAX.i1594, align 8
  %3546 = icmp eq i32 %3543, -1
  %3547 = icmp eq i32 %3544, 0
  %3548 = or i1 %3546, %3547
  %3549 = zext i1 %3548 to i8
  store i8 %3549, i8* %51, align 1
  %3550 = and i32 %3544, 255
  %3551 = tail call i32 @llvm.ctpop.i32(i32 %3550)
  %3552 = trunc i32 %3551 to i8
  %3553 = and i8 %3552, 1
  %3554 = xor i8 %3553, 1
  store i8 %3554, i8* %52, align 1
  %3555 = xor i32 %3543, %3544
  %3556 = lshr i32 %3555, 4
  %3557 = trunc i32 %3556 to i8
  %3558 = and i8 %3557, 1
  store i8 %3558, i8* %53, align 1
  %3559 = zext i1 %3547 to i8
  store i8 %3559, i8* %54, align 1
  %3560 = lshr i32 %3544, 31
  %3561 = trunc i32 %3560 to i8
  store i8 %3561, i8* %55, align 1
  %3562 = lshr i32 %3543, 31
  %3563 = xor i32 %3560, %3562
  %3564 = add nuw nsw i32 %3563, %3560
  %3565 = icmp eq i32 %3564, 2
  %3566 = zext i1 %3565 to i8
  store i8 %3566, i8* %56, align 1
  %3567 = add i64 %3540, 9
  store i64 %3567, i64* %3, align 8
  store i32 %3544, i32* %3542, align 4
  %3568 = load i64, i64* %3, align 8
  %3569 = add i64 %3568, -469
  store i64 %3569, i64* %3, align 8
  br label %block_.L_4021ff

block_.L_4023d9:                                  ; preds = %block_.L_4021ff
  %3570 = load i32, i32* %2769, align 4
  %3571 = shl i32 %3570, 1
  %3572 = icmp slt i32 %3570, 0
  %3573 = icmp slt i32 %3571, 0
  %3574 = xor i1 %3572, %3573
  %3575 = zext i32 %3571 to i64
  store i64 %3575, i64* %RCX.i1565, align 8
  %.lobit22 = lshr i32 %3570, 31
  %3576 = trunc i32 %.lobit22 to i8
  store i8 %3576, i8* %51, align 1
  %3577 = and i32 %3571, 254
  %3578 = tail call i32 @llvm.ctpop.i32(i32 %3577)
  %3579 = trunc i32 %3578 to i8
  %3580 = and i8 %3579, 1
  %3581 = xor i8 %3580, 1
  store i8 %3581, i8* %52, align 1
  store i8 0, i8* %53, align 1
  %3582 = icmp eq i32 %3571, 0
  %3583 = zext i1 %3582 to i8
  store i8 %3583, i8* %54, align 1
  %3584 = lshr i32 %3570, 30
  %3585 = and i32 %3584, 1
  %3586 = trunc i32 %3585 to i8
  store i8 %3586, i8* %55, align 1
  %3587 = zext i1 %3574 to i8
  store i8 %3587, i8* %56, align 1
  %3588 = add i64 %2761, -16
  %3589 = add i64 %2797, 20
  store i64 %3589, i64* %3, align 8
  %3590 = inttoptr i64 %3588 to i64*
  %3591 = load i64, i64* %3590, align 8
  store i64 %3591, i64* %RDX.i1610, align 8
  %3592 = add i64 %2797, 24
  store i64 %3592, i64* %3, align 8
  %3593 = load i32, i32* %2769, align 4
  %3594 = sext i32 %3593 to i64
  store i64 %3594, i64* %RSI.i1613, align 8
  %3595 = shl nsw i64 %3594, 2
  %3596 = add i64 %3595, %3591
  %3597 = add i64 %2797, 27
  store i64 %3597, i64* %3, align 8
  %3598 = inttoptr i64 %3596 to i32*
  %3599 = load i32, i32* %3598, align 4
  %3600 = add i32 %3599, %3571
  %3601 = zext i32 %3600 to i64
  store i64 %3601, i64* %RCX.i1565, align 8
  %3602 = icmp ult i32 %3600, %3571
  %3603 = icmp ult i32 %3600, %3599
  %3604 = or i1 %3602, %3603
  %3605 = zext i1 %3604 to i8
  store i8 %3605, i8* %51, align 1
  %3606 = and i32 %3600, 255
  %3607 = tail call i32 @llvm.ctpop.i32(i32 %3606)
  %3608 = trunc i32 %3607 to i8
  %3609 = and i8 %3608, 1
  %3610 = xor i8 %3609, 1
  store i8 %3610, i8* %52, align 1
  %3611 = xor i32 %3599, %3571
  %3612 = xor i32 %3611, %3600
  %3613 = lshr i32 %3612, 4
  %3614 = trunc i32 %3613 to i8
  %3615 = and i8 %3614, 1
  store i8 %3615, i8* %53, align 1
  %3616 = icmp eq i32 %3600, 0
  %3617 = zext i1 %3616 to i8
  store i8 %3617, i8* %54, align 1
  %3618 = lshr i32 %3600, 31
  %3619 = trunc i32 %3618 to i8
  store i8 %3619, i8* %55, align 1
  %3620 = lshr i32 %3599, 31
  %3621 = xor i32 %3618, %3585
  %3622 = xor i32 %3618, %3620
  %3623 = add nuw nsw i32 %3621, %3622
  %3624 = icmp eq i32 %3623, 2
  %3625 = zext i1 %3624 to i8
  store i8 %3625, i8* %56, align 1
  %3626 = add i64 %2761, -40
  %3627 = add i64 %2797, 30
  store i64 %3627, i64* %3, align 8
  %3628 = inttoptr i64 %3626 to i32*
  store i32 %3600, i32* %3628, align 4
  %3629 = load i64, i64* %RBP.i, align 8
  %3630 = add i64 %3629, -24
  %3631 = load i64, i64* %3, align 8
  %3632 = add i64 %3631, 4
  store i64 %3632, i64* %3, align 8
  %3633 = inttoptr i64 %3630 to i64*
  %3634 = load i64, i64* %3633, align 8
  store i64 %3634, i64* %RDX.i1610, align 8
  %3635 = add i64 %3629, -40
  %3636 = add i64 %3631, 7
  store i64 %3636, i64* %3, align 8
  %3637 = inttoptr i64 %3635 to i32*
  %3638 = load i32, i32* %3637, align 4
  %3639 = add i32 %3638, 1
  %3640 = zext i32 %3639 to i64
  store i64 %3640, i64* %RCX.i1565, align 8
  %3641 = icmp eq i32 %3638, -1
  %3642 = icmp eq i32 %3639, 0
  %3643 = or i1 %3641, %3642
  %3644 = zext i1 %3643 to i8
  store i8 %3644, i8* %51, align 1
  %3645 = and i32 %3639, 255
  %3646 = tail call i32 @llvm.ctpop.i32(i32 %3645)
  %3647 = trunc i32 %3646 to i8
  %3648 = and i8 %3647, 1
  %3649 = xor i8 %3648, 1
  store i8 %3649, i8* %52, align 1
  %3650 = xor i32 %3638, %3639
  %3651 = lshr i32 %3650, 4
  %3652 = trunc i32 %3651 to i8
  %3653 = and i8 %3652, 1
  store i8 %3653, i8* %53, align 1
  %3654 = zext i1 %3642 to i8
  store i8 %3654, i8* %54, align 1
  %3655 = lshr i32 %3639, 31
  %3656 = trunc i32 %3655 to i8
  store i8 %3656, i8* %55, align 1
  %3657 = lshr i32 %3638, 31
  %3658 = xor i32 %3655, %3657
  %3659 = add nuw nsw i32 %3658, %3655
  %3660 = icmp eq i32 %3659, 2
  %3661 = zext i1 %3660 to i8
  store i8 %3661, i8* %56, align 1
  %3662 = sext i32 %3639 to i64
  store i64 %3662, i64* %RSI.i1613, align 8
  %3663 = shl nsw i64 %3662, 3
  %3664 = add i64 %3663, %3634
  %3665 = add i64 %3631, 18
  store i64 %3665, i64* %3, align 8
  %3666 = inttoptr i64 %3664 to i64*
  %3667 = load i64, i64* %3666, align 8
  %3668 = load i64, i64* %RAX.i1594, align 8
  %3669 = xor i64 %3668, %3667
  store i64 %3669, i64* %RDX.i1610, align 8
  store i8 0, i8* %51, align 1
  %3670 = trunc i64 %3669 to i32
  %3671 = and i32 %3670, 255
  %3672 = tail call i32 @llvm.ctpop.i32(i32 %3671)
  %3673 = trunc i32 %3672 to i8
  %3674 = and i8 %3673, 1
  %3675 = xor i8 %3674, 1
  store i8 %3675, i8* %52, align 1
  %3676 = icmp eq i64 %3669, 0
  %3677 = zext i1 %3676 to i8
  store i8 %3677, i8* %54, align 1
  %3678 = lshr i64 %3669, 63
  %3679 = trunc i64 %3678 to i8
  store i8 %3679, i8* %55, align 1
  store i8 0, i8* %56, align 1
  store i8 0, i8* %53, align 1
  store i64 %3669, i64* %2625, align 1
  store i64 0, i64* %2612, align 1
  %3680 = add i64 %3631, 35
  store i64 %3680, i64* %3, align 8
  %3681 = load i64, i64* %3633, align 8
  store i64 %3681, i64* %RDX.i1610, align 8
  %3682 = add i64 %3631, 38
  store i64 %3682, i64* %3, align 8
  %3683 = load i32, i32* %3637, align 4
  %3684 = add i32 %3683, 1
  %3685 = zext i32 %3684 to i64
  store i64 %3685, i64* %RCX.i1565, align 8
  %3686 = icmp eq i32 %3683, -1
  %3687 = icmp eq i32 %3684, 0
  %3688 = or i1 %3686, %3687
  %3689 = zext i1 %3688 to i8
  store i8 %3689, i8* %51, align 1
  %3690 = and i32 %3684, 255
  %3691 = tail call i32 @llvm.ctpop.i32(i32 %3690)
  %3692 = trunc i32 %3691 to i8
  %3693 = and i8 %3692, 1
  %3694 = xor i8 %3693, 1
  store i8 %3694, i8* %52, align 1
  %3695 = xor i32 %3683, %3684
  %3696 = lshr i32 %3695, 4
  %3697 = trunc i32 %3696 to i8
  %3698 = and i8 %3697, 1
  store i8 %3698, i8* %53, align 1
  %3699 = zext i1 %3687 to i8
  store i8 %3699, i8* %54, align 1
  %3700 = lshr i32 %3684, 31
  %3701 = trunc i32 %3700 to i8
  store i8 %3701, i8* %55, align 1
  %3702 = lshr i32 %3683, 31
  %3703 = xor i32 %3700, %3702
  %3704 = add nuw nsw i32 %3703, %3700
  %3705 = icmp eq i32 %3704, 2
  %3706 = zext i1 %3705 to i8
  store i8 %3706, i8* %56, align 1
  %3707 = sext i32 %3684 to i64
  store i64 %3707, i64* %RSI.i1613, align 8
  %3708 = shl nsw i64 %3707, 3
  %3709 = add i64 %3708, %3681
  %3710 = add i64 %3631, 49
  store i64 %3710, i64* %3, align 8
  %3711 = inttoptr i64 %3709 to i64*
  store i64 %3669, i64* %3711, align 8
  %3712 = load i64, i64* %RBP.i, align 8
  %3713 = add i64 %3712, -24
  %3714 = load i64, i64* %3, align 8
  %3715 = add i64 %3714, 4
  store i64 %3715, i64* %3, align 8
  %3716 = inttoptr i64 %3713 to i64*
  %3717 = load i64, i64* %3716, align 8
  store i64 %3717, i64* %RDX.i1610, align 8
  %3718 = add i64 %3712, -40
  %3719 = add i64 %3714, 7
  store i64 %3719, i64* %3, align 8
  %3720 = inttoptr i64 %3718 to i32*
  %3721 = load i32, i32* %3720, align 4
  %3722 = zext i32 %3721 to i64
  store i64 %3722, i64* %RCX.i1565, align 8
  %3723 = add i64 %3712, -52
  %3724 = add i64 %3714, 10
  store i64 %3724, i64* %3, align 8
  %3725 = inttoptr i64 %3723 to i32*
  %3726 = load i32, i32* %3725, align 4
  %3727 = add i32 %3726, %3721
  %3728 = lshr i32 %3727, 31
  %3729 = add i32 %3727, 1
  %3730 = zext i32 %3729 to i64
  store i64 %3730, i64* %RCX.i1565, align 8
  %3731 = icmp eq i32 %3727, -1
  %3732 = icmp eq i32 %3729, 0
  %3733 = or i1 %3731, %3732
  %3734 = zext i1 %3733 to i8
  store i8 %3734, i8* %51, align 1
  %3735 = and i32 %3729, 255
  %3736 = tail call i32 @llvm.ctpop.i32(i32 %3735)
  %3737 = trunc i32 %3736 to i8
  %3738 = and i8 %3737, 1
  %3739 = xor i8 %3738, 1
  store i8 %3739, i8* %52, align 1
  %3740 = xor i32 %3727, %3729
  %3741 = lshr i32 %3740, 4
  %3742 = trunc i32 %3741 to i8
  %3743 = and i8 %3742, 1
  store i8 %3743, i8* %53, align 1
  %3744 = zext i1 %3732 to i8
  store i8 %3744, i8* %54, align 1
  %3745 = lshr i32 %3729, 31
  %3746 = trunc i32 %3745 to i8
  store i8 %3746, i8* %55, align 1
  %3747 = xor i32 %3745, %3728
  %3748 = add nuw nsw i32 %3747, %3745
  %3749 = icmp eq i32 %3748, 2
  %3750 = zext i1 %3749 to i8
  store i8 %3750, i8* %56, align 1
  %3751 = sext i32 %3729 to i64
  store i64 %3751, i64* %RSI.i1613, align 8
  %3752 = shl nsw i64 %3751, 3
  %3753 = add i64 %3752, %3717
  %3754 = add i64 %3714, 21
  store i64 %3754, i64* %3, align 8
  %3755 = inttoptr i64 %3753 to i64*
  %3756 = load i64, i64* %3755, align 8
  %3757 = load i64, i64* %RAX.i1594, align 8
  %3758 = xor i64 %3757, %3756
  store i64 %3758, i64* %RDX.i1610, align 8
  store i8 0, i8* %51, align 1
  %3759 = trunc i64 %3758 to i32
  %3760 = and i32 %3759, 255
  %3761 = tail call i32 @llvm.ctpop.i32(i32 %3760)
  %3762 = trunc i32 %3761 to i8
  %3763 = and i8 %3762, 1
  %3764 = xor i8 %3763, 1
  store i8 %3764, i8* %52, align 1
  %3765 = icmp eq i64 %3758, 0
  %3766 = zext i1 %3765 to i8
  store i8 %3766, i8* %54, align 1
  %3767 = lshr i64 %3758, 63
  %3768 = trunc i64 %3767 to i8
  store i8 %3768, i8* %55, align 1
  store i8 0, i8* %56, align 1
  store i8 0, i8* %53, align 1
  store i64 %3758, i64* %2625, align 1
  store i64 0, i64* %2612, align 1
  %3769 = add i64 %3714, 38
  store i64 %3769, i64* %3, align 8
  %3770 = load i64, i64* %3716, align 8
  store i64 %3770, i64* %RAX.i1594, align 8
  %3771 = add i64 %3714, 41
  store i64 %3771, i64* %3, align 8
  %3772 = load i32, i32* %3720, align 4
  %3773 = zext i32 %3772 to i64
  store i64 %3773, i64* %RCX.i1565, align 8
  %3774 = add i64 %3714, 44
  store i64 %3774, i64* %3, align 8
  %3775 = load i32, i32* %3725, align 4
  %3776 = add i32 %3775, %3772
  %3777 = lshr i32 %3776, 31
  %3778 = add i32 %3776, 1
  %3779 = zext i32 %3778 to i64
  store i64 %3779, i64* %RCX.i1565, align 8
  %3780 = icmp eq i32 %3776, -1
  %3781 = icmp eq i32 %3778, 0
  %3782 = or i1 %3780, %3781
  %3783 = zext i1 %3782 to i8
  store i8 %3783, i8* %51, align 1
  %3784 = and i32 %3778, 255
  %3785 = tail call i32 @llvm.ctpop.i32(i32 %3784)
  %3786 = trunc i32 %3785 to i8
  %3787 = and i8 %3786, 1
  %3788 = xor i8 %3787, 1
  store i8 %3788, i8* %52, align 1
  %3789 = xor i32 %3776, %3778
  %3790 = lshr i32 %3789, 4
  %3791 = trunc i32 %3790 to i8
  %3792 = and i8 %3791, 1
  store i8 %3792, i8* %53, align 1
  %3793 = zext i1 %3781 to i8
  store i8 %3793, i8* %54, align 1
  %3794 = lshr i32 %3778, 31
  %3795 = trunc i32 %3794 to i8
  store i8 %3795, i8* %55, align 1
  %3796 = xor i32 %3794, %3777
  %3797 = add nuw nsw i32 %3796, %3794
  %3798 = icmp eq i32 %3797, 2
  %3799 = zext i1 %3798 to i8
  store i8 %3799, i8* %56, align 1
  %3800 = sext i32 %3778 to i64
  store i64 %3800, i64* %RDX.i1610, align 8
  %3801 = shl nsw i64 %3800, 3
  %3802 = add i64 %3801, %3770
  %3803 = add i64 %3714, 55
  store i64 %3803, i64* %3, align 8
  %3804 = inttoptr i64 %3802 to i64*
  store i64 %3758, i64* %3804, align 8
  %3805 = load i64, i64* %RBP.i, align 8
  %3806 = add i64 %3805, -36
  %3807 = load i64, i64* %3, align 8
  %3808 = add i64 %3807, 3
  store i64 %3808, i64* %3, align 8
  %3809 = inttoptr i64 %3806 to i32*
  %3810 = load i32, i32* %3809, align 4
  %3811 = add i32 %3810, 1
  %3812 = zext i32 %3811 to i64
  store i64 %3812, i64* %RAX.i1594, align 8
  %3813 = icmp eq i32 %3810, -1
  %3814 = icmp eq i32 %3811, 0
  %3815 = or i1 %3813, %3814
  %3816 = zext i1 %3815 to i8
  store i8 %3816, i8* %51, align 1
  %3817 = and i32 %3811, 255
  %3818 = tail call i32 @llvm.ctpop.i32(i32 %3817)
  %3819 = trunc i32 %3818 to i8
  %3820 = and i8 %3819, 1
  %3821 = xor i8 %3820, 1
  store i8 %3821, i8* %52, align 1
  %3822 = xor i32 %3810, %3811
  %3823 = lshr i32 %3822, 4
  %3824 = trunc i32 %3823 to i8
  %3825 = and i8 %3824, 1
  store i8 %3825, i8* %53, align 1
  %3826 = zext i1 %3814 to i8
  store i8 %3826, i8* %54, align 1
  %3827 = lshr i32 %3811, 31
  %3828 = trunc i32 %3827 to i8
  store i8 %3828, i8* %55, align 1
  %3829 = lshr i32 %3810, 31
  %3830 = xor i32 %3827, %3829
  %3831 = add nuw nsw i32 %3830, %3827
  %3832 = icmp eq i32 %3831, 2
  %3833 = zext i1 %3832 to i8
  store i8 %3833, i8* %56, align 1
  %3834 = add i64 %3807, 9
  store i64 %3834, i64* %3, align 8
  store i32 %3811, i32* %3809, align 4
  %3835 = load i64, i64* %3, align 8
  %3836 = add i64 %3835, -636
  store i64 %3836, i64* %3, align 8
  br label %block_.L_4021ec

block_.L_40246d:                                  ; preds = %block_.L_4021ec
  %3837 = add i64 %2756, 5
  br label %block_.L_402472

block_.L_402472:                                  ; preds = %block_.L_40246d, %block_.L_402186
  %.sink = phi i64 [ %3837, %block_.L_40246d ], [ %2602, %block_.L_402186 ]
  %3838 = add i64 %.sink, 1
  store i64 %3838, i64* %3, align 8
  %3839 = load i64, i64* %6, align 8
  %3840 = add i64 %3839, 8
  %3841 = inttoptr i64 %3839 to i64*
  %3842 = load i64, i64* %3841, align 8
  store i64 %3842, i64* %RBP.i, align 8
  store i64 %3840, i64* %6, align 8
  %3843 = add i64 %.sink, 2
  store i64 %3843, i64* %3, align 8
  %3844 = inttoptr i64 %3840 to i64*
  %3845 = load i64, i64* %3844, align 8
  store i64 %3845, i64* %3, align 8
  %3846 = add i64 %3839, 16
  store i64 %3846, i64* %6, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_pushq__rbp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__rsp___rbp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__edi__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__rsi__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__rdx__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__0x0____rdx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl_MINUS0x4__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__edi__MINUS0x2c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__0x1__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_shll__0x3___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_cmpl_MINUS0x2c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_jge_.L_401c6b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %13 = add i64 %3, %.v
  store i64 %13, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_sarl__0x1___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
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

define %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__0x0__MINUS0x1c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_cmpl_MINUS0x30__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_jge_.L_401c5d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %13 = add i64 %3, %.v
  store i64 %13, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl___rax__rcx_4____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_addl_MINUS0x2c__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl_MINUS0x30__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_addl_MINUS0x1c__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movslq__esi___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__edx____rax__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_addl__0x1___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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
  %20 = xor i32 %6, %7
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

define %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_jmpq_.L_401c25(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shll__0x1___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
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

define %struct.Memory* @routine_movl__eax__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_jmpq_.L_401c06(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x34__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_jne_.L_40218b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %3, %.v
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x24__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_jge_.L_402186(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %13 = add i64 %3, %.v
  store i64 %13, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_MINUS0x24__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_jge_.L_40201f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %13 = add i64 %3, %.v
  store i64 %13, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x8000000000000000___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 -9223372036854775808, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_shll__0x1___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
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

define %struct.Memory* @routine_movslq_MINUS0x24__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_addl___rdx__rsi_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__ecx__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl_MINUS0x24__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__ecx__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movslq_MINUS0x20__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd___rdx__rsi_8____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0x40__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl_MINUS0x20__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_addl__0x1___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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
  %20 = xor i32 %6, %7
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

define %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__xmm0___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_xorq__rax___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__rdx___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0x48__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movslq_MINUS0x28__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0x50__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl_MINUS0x28__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0x58__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd_MINUS0x50__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd__xmm0____rdx__rsi_8_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd_MINUS0x58__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd_MINUS0x40__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl_MINUS0x34__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_addl_MINUS0x20__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_addl_MINUS0x28__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl_MINUS0x28__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_subl__ecx___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__edi__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd__xmm0____rax__rdx_8_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_jmpq_.L_401c9d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x34__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_jmpq_.L_401c8a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_402472(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd_0x8__rcx____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__xmm0___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_xorq__rax___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__rcx___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd__xmm0__0x8__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl_MINUS0x34__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_addl__0x1___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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
  %20 = xor i32 %6, %7
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

define %struct.Memory* @routine_movslq__edx___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd___rcx__rsi_8____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movslq__edx___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd__xmm0____rax__rcx_8_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__0x1__MINUS0x24__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_jge_.L_40246d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %13 = add i64 %3, %.v
  store i64 %13, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_4023d9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %13 = add i64 %3, %.v
  store i64 %13, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4021ff(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4021ec(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_popq__rbp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_retq(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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
