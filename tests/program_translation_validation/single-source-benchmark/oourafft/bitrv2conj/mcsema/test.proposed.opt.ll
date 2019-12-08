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
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i1616 = bitcast %union.anon* %11 to i32*
  %12 = add i64 %7, -12
  %13 = load i32, i32* %EDI.i1616, align 4
  %14 = add i64 %10, 6
  store i64 %14, i64* %PC.i, align 8
  %15 = inttoptr i64 %12 to i32*
  store i32 %13, i32* %15, align 4
  %RSI.i1613 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %16 = load i64, i64* %RBP.i, align 8
  %17 = add i64 %16, -16
  %18 = load i64, i64* %RSI.i1613, align 8
  %19 = load i64, i64* %PC.i, align 8
  %20 = add i64 %19, 4
  store i64 %20, i64* %PC.i, align 8
  %21 = inttoptr i64 %17 to i64*
  store i64 %18, i64* %21, align 8
  %RDX.i1610 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %22 = load i64, i64* %RBP.i, align 8
  %23 = add i64 %22, -24
  %24 = load i64, i64* %RDX.i1610, align 8
  %25 = load i64, i64* %PC.i, align 8
  %26 = add i64 %25, 4
  store i64 %26, i64* %PC.i, align 8
  %27 = inttoptr i64 %23 to i64*
  store i64 %24, i64* %27, align 8
  %28 = load i64, i64* %RBP.i, align 8
  %29 = add i64 %28, -16
  %30 = load i64, i64* %PC.i, align 8
  %31 = add i64 %30, 4
  store i64 %31, i64* %PC.i, align 8
  %32 = inttoptr i64 %29 to i64*
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %RDX.i1610, align 8
  %34 = add i64 %30, 10
  store i64 %34, i64* %PC.i, align 8
  %35 = inttoptr i64 %33 to i32*
  store i32 0, i32* %35, align 4
  %RDI.i1602 = getelementptr inbounds %union.anon, %union.anon* %11, i64 0, i32 0
  %36 = load i64, i64* %RBP.i, align 8
  %37 = add i64 %36, -4
  %38 = load i64, i64* %PC.i, align 8
  %39 = add i64 %38, 3
  store i64 %39, i64* %PC.i, align 8
  %40 = inttoptr i64 %37 to i32*
  %41 = load i32, i32* %40, align 4
  %42 = zext i32 %41 to i64
  store i64 %42, i64* %RDI.i1602, align 8
  %43 = add i64 %36, -44
  %44 = add i64 %38, 6
  store i64 %44, i64* %PC.i, align 8
  %45 = inttoptr i64 %43 to i32*
  store i32 %41, i32* %45, align 4
  %46 = load i64, i64* %RBP.i, align 8
  %47 = add i64 %46, -48
  %48 = load i64, i64* %PC.i, align 8
  %49 = add i64 %48, 7
  store i64 %49, i64* %PC.i, align 8
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
  %.pre = load i64, i64* %PC.i, align 8
  br label %block_.L_401c06

block_.L_401c06:                                  ; preds = %block_.L_401c5d, %entry
  %57 = phi i64 [ %309, %block_.L_401c5d ], [ %.pre, %entry ]
  %58 = load i64, i64* %RBP.i, align 8
  %59 = add i64 %58, -48
  %60 = add i64 %57, 3
  store i64 %60, i64* %PC.i, align 8
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
  store i64 %79, i64* %PC.i, align 8
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
  store i64 %108, i64* %PC.i, align 8
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
  %127 = trunc i64 %112 to i32
  %128 = add i64 %107, 8
  store i64 %128, i64* %PC.i, align 8
  store i32 %127, i32* %80, align 4
  %129 = load i64, i64* %RBP.i, align 8
  %130 = add i64 %129, -28
  %131 = load i64, i64* %PC.i, align 8
  %132 = add i64 %131, 7
  store i64 %132, i64* %PC.i, align 8
  %133 = inttoptr i64 %130 to i32*
  store i32 0, i32* %133, align 4
  %.pre1 = load i64, i64* %PC.i, align 8
  br label %block_.L_401c25

block_.L_401c25:                                  ; preds = %block_401c31, %block_401c15
  %134 = phi i64 [ %287, %block_401c31 ], [ %.pre1, %block_401c15 ]
  %135 = load i64, i64* %RBP.i, align 8
  %136 = add i64 %135, -28
  %137 = add i64 %134, 3
  store i64 %137, i64* %PC.i, align 8
  %138 = inttoptr i64 %136 to i32*
  %139 = load i32, i32* %138, align 4
  %140 = zext i32 %139 to i64
  store i64 %140, i64* %RAX.i1594, align 8
  %141 = add i64 %135, -48
  %142 = add i64 %134, 6
  store i64 %142, i64* %PC.i, align 8
  %143 = inttoptr i64 %141 to i32*
  %144 = load i32, i32* %143, align 4
  %145 = sub i32 %139, %144
  %146 = icmp ult i32 %139, %144
  %147 = zext i1 %146 to i8
  store i8 %147, i8* %51, align 1
  %148 = and i32 %145, 255
  %149 = tail call i32 @llvm.ctpop.i32(i32 %148)
  %150 = trunc i32 %149 to i8
  %151 = and i8 %150, 1
  %152 = xor i8 %151, 1
  store i8 %152, i8* %52, align 1
  %153 = xor i32 %144, %139
  %154 = xor i32 %153, %145
  %155 = lshr i32 %154, 4
  %156 = trunc i32 %155 to i8
  %157 = and i8 %156, 1
  store i8 %157, i8* %53, align 1
  %158 = icmp eq i32 %145, 0
  %159 = zext i1 %158 to i8
  store i8 %159, i8* %54, align 1
  %160 = lshr i32 %145, 31
  %161 = trunc i32 %160 to i8
  store i8 %161, i8* %55, align 1
  %162 = lshr i32 %139, 31
  %163 = lshr i32 %144, 31
  %164 = xor i32 %163, %162
  %165 = xor i32 %160, %162
  %166 = add nuw nsw i32 %165, %164
  %167 = icmp eq i32 %166, 2
  %168 = zext i1 %167 to i8
  store i8 %168, i8* %56, align 1
  %169 = icmp ne i8 %161, 0
  %170 = xor i1 %169, %167
  %.v7 = select i1 %170, i64 12, i64 56
  %171 = add i64 %134, %.v7
  store i64 %171, i64* %3, align 8
  br i1 %170, label %block_401c31, label %block_.L_401c5d

block_401c31:                                     ; preds = %block_.L_401c25
  %172 = add i64 %135, -16
  %173 = add i64 %171, 4
  store i64 %173, i64* %PC.i, align 8
  %174 = inttoptr i64 %172 to i64*
  %175 = load i64, i64* %174, align 8
  store i64 %175, i64* %RAX.i1594, align 8
  %176 = add i64 %171, 8
  store i64 %176, i64* %PC.i, align 8
  %177 = load i32, i32* %138, align 4
  %178 = sext i32 %177 to i64
  store i64 %178, i64* %RCX.i1565, align 8
  %179 = shl nsw i64 %178, 2
  %180 = add i64 %179, %175
  %181 = add i64 %171, 11
  store i64 %181, i64* %PC.i, align 8
  %182 = inttoptr i64 %180 to i32*
  %183 = load i32, i32* %182, align 4
  %184 = zext i32 %183 to i64
  store i64 %184, i64* %RDX.i1610, align 8
  %185 = add i64 %135, -44
  %186 = add i64 %171, 14
  store i64 %186, i64* %PC.i, align 8
  %187 = inttoptr i64 %185 to i32*
  %188 = load i32, i32* %187, align 4
  %189 = add i32 %188, %183
  %190 = zext i32 %189 to i64
  store i64 %190, i64* %RDX.i1610, align 8
  %191 = icmp ult i32 %189, %183
  %192 = icmp ult i32 %189, %188
  %193 = or i1 %191, %192
  %194 = zext i1 %193 to i8
  store i8 %194, i8* %51, align 1
  %195 = and i32 %189, 255
  %196 = tail call i32 @llvm.ctpop.i32(i32 %195)
  %197 = trunc i32 %196 to i8
  %198 = and i8 %197, 1
  %199 = xor i8 %198, 1
  store i8 %199, i8* %52, align 1
  %200 = xor i32 %188, %183
  %201 = xor i32 %200, %189
  %202 = lshr i32 %201, 4
  %203 = trunc i32 %202 to i8
  %204 = and i8 %203, 1
  store i8 %204, i8* %53, align 1
  %205 = icmp eq i32 %189, 0
  %206 = zext i1 %205 to i8
  store i8 %206, i8* %54, align 1
  %207 = lshr i32 %189, 31
  %208 = trunc i32 %207 to i8
  store i8 %208, i8* %55, align 1
  %209 = lshr i32 %183, 31
  %210 = lshr i32 %188, 31
  %211 = xor i32 %207, %209
  %212 = xor i32 %207, %210
  %213 = add nuw nsw i32 %211, %212
  %214 = icmp eq i32 %213, 2
  %215 = zext i1 %214 to i8
  store i8 %215, i8* %56, align 1
  %216 = add i64 %171, 18
  store i64 %216, i64* %PC.i, align 8
  %217 = load i64, i64* %174, align 8
  store i64 %217, i64* %RAX.i1594, align 8
  %218 = add i64 %171, 21
  store i64 %218, i64* %PC.i, align 8
  %219 = load i32, i32* %143, align 4
  %220 = zext i32 %219 to i64
  store i64 %220, i64* %RSI.i1613, align 8
  %221 = add i64 %171, 24
  store i64 %221, i64* %PC.i, align 8
  %222 = load i32, i32* %138, align 4
  %223 = add i32 %222, %219
  %224 = zext i32 %223 to i64
  store i64 %224, i64* %RSI.i1613, align 8
  %225 = icmp ult i32 %223, %219
  %226 = icmp ult i32 %223, %222
  %227 = or i1 %225, %226
  %228 = zext i1 %227 to i8
  store i8 %228, i8* %51, align 1
  %229 = and i32 %223, 255
  %230 = tail call i32 @llvm.ctpop.i32(i32 %229)
  %231 = trunc i32 %230 to i8
  %232 = and i8 %231, 1
  %233 = xor i8 %232, 1
  store i8 %233, i8* %52, align 1
  %234 = xor i32 %222, %219
  %235 = xor i32 %234, %223
  %236 = lshr i32 %235, 4
  %237 = trunc i32 %236 to i8
  %238 = and i8 %237, 1
  store i8 %238, i8* %53, align 1
  %239 = icmp eq i32 %223, 0
  %240 = zext i1 %239 to i8
  store i8 %240, i8* %54, align 1
  %241 = lshr i32 %223, 31
  %242 = trunc i32 %241 to i8
  store i8 %242, i8* %55, align 1
  %243 = lshr i32 %219, 31
  %244 = lshr i32 %222, 31
  %245 = xor i32 %241, %243
  %246 = xor i32 %241, %244
  %247 = add nuw nsw i32 %245, %246
  %248 = icmp eq i32 %247, 2
  %249 = zext i1 %248 to i8
  store i8 %249, i8* %56, align 1
  %250 = sext i32 %223 to i64
  store i64 %250, i64* %RCX.i1565, align 8
  %251 = shl nsw i64 %250, 2
  %252 = add i64 %251, %217
  %253 = add i64 %171, 30
  store i64 %253, i64* %PC.i, align 8
  %254 = inttoptr i64 %252 to i32*
  store i32 %189, i32* %254, align 4
  %255 = load i64, i64* %RBP.i, align 8
  %256 = add i64 %255, -28
  %257 = load i64, i64* %PC.i, align 8
  %258 = add i64 %257, 3
  store i64 %258, i64* %PC.i, align 8
  %259 = inttoptr i64 %256 to i32*
  %260 = load i32, i32* %259, align 4
  %261 = add i32 %260, 1
  %262 = zext i32 %261 to i64
  store i64 %262, i64* %RAX.i1594, align 8
  %263 = icmp eq i32 %260, -1
  %264 = icmp eq i32 %261, 0
  %265 = or i1 %263, %264
  %266 = zext i1 %265 to i8
  store i8 %266, i8* %51, align 1
  %267 = and i32 %261, 255
  %268 = tail call i32 @llvm.ctpop.i32(i32 %267)
  %269 = trunc i32 %268 to i8
  %270 = and i8 %269, 1
  %271 = xor i8 %270, 1
  store i8 %271, i8* %52, align 1
  %272 = xor i32 %260, %261
  %273 = lshr i32 %272, 4
  %274 = trunc i32 %273 to i8
  %275 = and i8 %274, 1
  store i8 %275, i8* %53, align 1
  %276 = icmp eq i32 %261, 0
  %277 = zext i1 %276 to i8
  store i8 %277, i8* %54, align 1
  %278 = lshr i32 %261, 31
  %279 = trunc i32 %278 to i8
  store i8 %279, i8* %55, align 1
  %280 = lshr i32 %260, 31
  %281 = xor i32 %278, %280
  %282 = add nuw nsw i32 %281, %278
  %283 = icmp eq i32 %282, 2
  %284 = zext i1 %283 to i8
  store i8 %284, i8* %56, align 1
  %285 = add i64 %257, 9
  store i64 %285, i64* %PC.i, align 8
  store i32 %261, i32* %259, align 4
  %286 = load i64, i64* %PC.i, align 8
  %287 = add i64 %286, -51
  store i64 %287, i64* %3, align 8
  br label %block_.L_401c25

block_.L_401c5d:                                  ; preds = %block_.L_401c25
  %288 = add i64 %171, 3
  store i64 %288, i64* %PC.i, align 8
  %289 = load i32, i32* %143, align 4
  %290 = shl i32 %289, 1
  %291 = icmp slt i32 %289, 0
  %292 = icmp slt i32 %290, 0
  %293 = xor i1 %291, %292
  %294 = zext i32 %290 to i64
  store i64 %294, i64* %RAX.i1594, align 8
  %.lobit = lshr i32 %289, 31
  %295 = trunc i32 %.lobit to i8
  store i8 %295, i8* %51, align 1
  %296 = and i32 %290, 254
  %297 = tail call i32 @llvm.ctpop.i32(i32 %296)
  %298 = trunc i32 %297 to i8
  %299 = and i8 %298, 1
  %300 = xor i8 %299, 1
  store i8 %300, i8* %52, align 1
  store i8 0, i8* %53, align 1
  %301 = icmp eq i32 %290, 0
  %302 = zext i1 %301 to i8
  store i8 %302, i8* %54, align 1
  %303 = lshr i32 %289, 30
  %304 = trunc i32 %303 to i8
  %305 = and i8 %304, 1
  store i8 %305, i8* %55, align 1
  %306 = zext i1 %293 to i8
  store i8 %306, i8* %56, align 1
  %307 = add i64 %171, 8
  store i64 %307, i64* %PC.i, align 8
  store i32 %290, i32* %143, align 4
  %308 = load i64, i64* %PC.i, align 8
  %309 = add i64 %308, -96
  store i64 %309, i64* %3, align 8
  br label %block_.L_401c06

block_.L_401c6b:                                  ; preds = %block_.L_401c06
  %310 = load i32, i32* %61, align 4
  %311 = shl i32 %310, 1
  %312 = icmp slt i32 %310, 0
  %313 = icmp slt i32 %311, 0
  %314 = xor i1 %312, %313
  %315 = zext i32 %311 to i64
  store i64 %315, i64* %RAX.i1594, align 8
  %.lobit8 = lshr i32 %310, 31
  %316 = trunc i32 %.lobit8 to i8
  store i8 %316, i8* %51, align 1
  %317 = and i32 %311, 254
  %318 = tail call i32 @llvm.ctpop.i32(i32 %317)
  %319 = trunc i32 %318 to i8
  %320 = and i8 %319, 1
  %321 = xor i8 %320, 1
  store i8 %321, i8* %52, align 1
  store i8 0, i8* %53, align 1
  %322 = icmp eq i32 %311, 0
  %323 = zext i1 %322 to i8
  store i8 %323, i8* %54, align 1
  %324 = lshr i32 %310, 30
  %325 = trunc i32 %324 to i8
  %326 = and i8 %325, 1
  store i8 %326, i8* %55, align 1
  %327 = zext i1 %314 to i8
  store i8 %327, i8* %56, align 1
  %328 = add i64 %58, -52
  %329 = add i64 %107, 8
  store i64 %329, i64* %PC.i, align 8
  %330 = inttoptr i64 %328 to i32*
  store i32 %311, i32* %330, align 4
  %331 = load i64, i64* %RBP.i, align 8
  %332 = add i64 %331, -48
  %333 = load i64, i64* %PC.i, align 8
  %334 = add i64 %333, 3
  store i64 %334, i64* %PC.i, align 8
  %335 = inttoptr i64 %332 to i32*
  %336 = load i32, i32* %335, align 4
  %337 = shl i32 %336, 3
  %338 = zext i32 %337 to i64
  store i64 %338, i64* %RAX.i1594, align 8
  %339 = lshr i32 %336, 29
  %340 = trunc i32 %339 to i8
  %341 = and i8 %340, 1
  store i8 %341, i8* %51, align 1
  %342 = and i32 %337, 248
  %343 = tail call i32 @llvm.ctpop.i32(i32 %342)
  %344 = trunc i32 %343 to i8
  %345 = and i8 %344, 1
  %346 = xor i8 %345, 1
  store i8 %346, i8* %52, align 1
  store i8 0, i8* %53, align 1
  %347 = icmp eq i32 %337, 0
  %348 = zext i1 %347 to i8
  store i8 %348, i8* %54, align 1
  %349 = lshr i32 %336, 28
  %350 = and i32 %349, 1
  %351 = trunc i32 %350 to i8
  store i8 %351, i8* %55, align 1
  store i8 0, i8* %56, align 1
  %352 = add i64 %331, -44
  %353 = add i64 %333, 9
  store i64 %353, i64* %PC.i, align 8
  %354 = inttoptr i64 %352 to i32*
  %355 = load i32, i32* %354, align 4
  %356 = sub i32 %337, %355
  %357 = icmp ult i32 %337, %355
  %358 = zext i1 %357 to i8
  store i8 %358, i8* %51, align 1
  %359 = and i32 %356, 255
  %360 = tail call i32 @llvm.ctpop.i32(i32 %359)
  %361 = trunc i32 %360 to i8
  %362 = and i8 %361, 1
  %363 = xor i8 %362, 1
  store i8 %363, i8* %52, align 1
  %364 = xor i32 %355, %337
  %365 = xor i32 %364, %356
  %366 = lshr i32 %365, 4
  %367 = trunc i32 %366 to i8
  %368 = and i8 %367, 1
  store i8 %368, i8* %53, align 1
  %369 = icmp eq i32 %356, 0
  %370 = zext i1 %369 to i8
  store i8 %370, i8* %54, align 1
  %371 = lshr i32 %356, 31
  %372 = trunc i32 %371 to i8
  store i8 %372, i8* %55, align 1
  %373 = lshr i32 %355, 31
  %374 = xor i32 %373, %350
  %375 = xor i32 %371, %350
  %376 = add nuw nsw i32 %375, %374
  %377 = icmp eq i32 %376, 2
  %378 = zext i1 %377 to i8
  store i8 %378, i8* %56, align 1
  %.v10 = select i1 %369, i64 15, i64 1303
  %379 = add i64 %333, %.v10
  store i64 %379, i64* %3, align 8
  br i1 %369, label %block_401c83, label %block_.L_40218b

block_401c83:                                     ; preds = %block_.L_401c6b
  %380 = add i64 %331, -36
  %381 = add i64 %379, 7
  store i64 %381, i64* %PC.i, align 8
  %382 = inttoptr i64 %380 to i32*
  store i32 0, i32* %382, align 4
  %383 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %385 = bitcast i64* %384 to double*
  %386 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %383, i64 0, i32 0, i32 0, i32 0, i64 0
  %.pre2 = load i64, i64* %PC.i, align 8
  br label %block_.L_401c8a

block_.L_401c8a:                                  ; preds = %block_.L_40201f, %block_401c83
  %387 = phi i64 [ %2659, %block_.L_40201f ], [ %.pre2, %block_401c83 ]
  %388 = load i64, i64* %RBP.i, align 8
  %389 = add i64 %388, -36
  %390 = add i64 %387, 3
  store i64 %390, i64* %PC.i, align 8
  %391 = inttoptr i64 %389 to i32*
  %392 = load i32, i32* %391, align 4
  %393 = zext i32 %392 to i64
  store i64 %393, i64* %RAX.i1594, align 8
  %394 = add i64 %388, -48
  %395 = add i64 %387, 6
  store i64 %395, i64* %PC.i, align 8
  %396 = inttoptr i64 %394 to i32*
  %397 = load i32, i32* %396, align 4
  %398 = sub i32 %392, %397
  %399 = icmp ult i32 %392, %397
  %400 = zext i1 %399 to i8
  store i8 %400, i8* %51, align 1
  %401 = and i32 %398, 255
  %402 = tail call i32 @llvm.ctpop.i32(i32 %401)
  %403 = trunc i32 %402 to i8
  %404 = and i8 %403, 1
  %405 = xor i8 %404, 1
  store i8 %405, i8* %52, align 1
  %406 = xor i32 %397, %392
  %407 = xor i32 %406, %398
  %408 = lshr i32 %407, 4
  %409 = trunc i32 %408 to i8
  %410 = and i8 %409, 1
  store i8 %410, i8* %53, align 1
  %411 = icmp eq i32 %398, 0
  %412 = zext i1 %411 to i8
  store i8 %412, i8* %54, align 1
  %413 = lshr i32 %398, 31
  %414 = trunc i32 %413 to i8
  store i8 %414, i8* %55, align 1
  %415 = lshr i32 %392, 31
  %416 = lshr i32 %397, 31
  %417 = xor i32 %416, %415
  %418 = xor i32 %413, %415
  %419 = add nuw nsw i32 %418, %417
  %420 = icmp eq i32 %419, 2
  %421 = zext i1 %420 to i8
  store i8 %421, i8* %56, align 1
  %422 = icmp ne i8 %414, 0
  %423 = xor i1 %422, %420
  %.v11 = select i1 %423, i64 12, i64 1276
  %424 = add i64 %387, %.v11
  store i64 %424, i64* %3, align 8
  br i1 %423, label %block_401c96, label %block_.L_402186

block_401c96:                                     ; preds = %block_.L_401c8a
  %425 = add i64 %388, -28
  %426 = add i64 %424, 7
  store i64 %426, i64* %PC.i, align 8
  %427 = inttoptr i64 %425 to i32*
  store i32 0, i32* %427, align 4
  %.pre3 = load i64, i64* %PC.i, align 8
  br label %block_.L_401c9d

block_.L_401c9d:                                  ; preds = %block_401ca9, %block_401c96
  %428 = phi i64 [ %1998, %block_401ca9 ], [ %.pre3, %block_401c96 ]
  %429 = load i64, i64* %RBP.i, align 8
  %430 = add i64 %429, -28
  %431 = add i64 %428, 3
  store i64 %431, i64* %PC.i, align 8
  %432 = inttoptr i64 %430 to i32*
  %433 = load i32, i32* %432, align 4
  %434 = zext i32 %433 to i64
  store i64 %434, i64* %RAX.i1594, align 8
  %435 = add i64 %429, -36
  %436 = add i64 %428, 6
  store i64 %436, i64* %PC.i, align 8
  %437 = inttoptr i64 %435 to i32*
  %438 = load i32, i32* %437, align 4
  %439 = sub i32 %433, %438
  %440 = icmp ult i32 %433, %438
  %441 = zext i1 %440 to i8
  store i8 %441, i8* %51, align 1
  %442 = and i32 %439, 255
  %443 = tail call i32 @llvm.ctpop.i32(i32 %442)
  %444 = trunc i32 %443 to i8
  %445 = and i8 %444, 1
  %446 = xor i8 %445, 1
  store i8 %446, i8* %52, align 1
  %447 = xor i32 %438, %433
  %448 = xor i32 %447, %439
  %449 = lshr i32 %448, 4
  %450 = trunc i32 %449 to i8
  %451 = and i8 %450, 1
  store i8 %451, i8* %53, align 1
  %452 = icmp eq i32 %439, 0
  %453 = zext i1 %452 to i8
  store i8 %453, i8* %54, align 1
  %454 = lshr i32 %439, 31
  %455 = trunc i32 %454 to i8
  store i8 %455, i8* %55, align 1
  %456 = lshr i32 %433, 31
  %457 = lshr i32 %438, 31
  %458 = xor i32 %457, %456
  %459 = xor i32 %454, %456
  %460 = add nuw nsw i32 %459, %458
  %461 = icmp eq i32 %460, 2
  %462 = zext i1 %461 to i8
  store i8 %462, i8* %56, align 1
  %463 = icmp ne i8 %455, 0
  %464 = xor i1 %463, %461
  %.v12 = select i1 %464, i64 12, i64 898
  %465 = add i64 %428, %.v12
  store i64 -9223372036854775808, i64* %RAX.i1594, align 8
  %466 = add i64 %465, 13
  store i64 %466, i64* %PC.i, align 8
  br i1 %464, label %block_401ca9, label %block_.L_40201f

block_401ca9:                                     ; preds = %block_.L_401c9d
  %467 = load i32, i32* %432, align 4
  %468 = shl i32 %467, 1
  %469 = icmp slt i32 %467, 0
  %470 = icmp slt i32 %468, 0
  %471 = xor i1 %469, %470
  %472 = zext i32 %468 to i64
  store i64 %472, i64* %RCX.i1565, align 8
  %.lobit13 = lshr i32 %467, 31
  %473 = trunc i32 %.lobit13 to i8
  store i8 %473, i8* %51, align 1
  %474 = and i32 %468, 254
  %475 = tail call i32 @llvm.ctpop.i32(i32 %474)
  %476 = trunc i32 %475 to i8
  %477 = and i8 %476, 1
  %478 = xor i8 %477, 1
  store i8 %478, i8* %52, align 1
  store i8 0, i8* %53, align 1
  %479 = icmp eq i32 %468, 0
  %480 = zext i1 %479 to i8
  store i8 %480, i8* %54, align 1
  %481 = lshr i32 %467, 30
  %482 = and i32 %481, 1
  %483 = trunc i32 %482 to i8
  store i8 %483, i8* %55, align 1
  %484 = zext i1 %471 to i8
  store i8 %484, i8* %56, align 1
  %485 = add i64 %429, -16
  %486 = add i64 %465, 19
  store i64 %486, i64* %PC.i, align 8
  %487 = inttoptr i64 %485 to i64*
  %488 = load i64, i64* %487, align 8
  store i64 %488, i64* %RDX.i1610, align 8
  %489 = add i64 %465, 23
  store i64 %489, i64* %PC.i, align 8
  %490 = load i32, i32* %437, align 4
  %491 = sext i32 %490 to i64
  store i64 %491, i64* %RSI.i1613, align 8
  %492 = shl nsw i64 %491, 2
  %493 = add i64 %492, %488
  %494 = add i64 %465, 26
  store i64 %494, i64* %PC.i, align 8
  %495 = inttoptr i64 %493 to i32*
  %496 = load i32, i32* %495, align 4
  %497 = add i32 %496, %468
  %498 = zext i32 %497 to i64
  store i64 %498, i64* %RCX.i1565, align 8
  %499 = icmp ult i32 %497, %468
  %500 = icmp ult i32 %497, %496
  %501 = or i1 %499, %500
  %502 = zext i1 %501 to i8
  store i8 %502, i8* %51, align 1
  %503 = and i32 %497, 255
  %504 = tail call i32 @llvm.ctpop.i32(i32 %503)
  %505 = trunc i32 %504 to i8
  %506 = and i8 %505, 1
  %507 = xor i8 %506, 1
  store i8 %507, i8* %52, align 1
  %508 = xor i32 %496, %468
  %509 = xor i32 %508, %497
  %510 = lshr i32 %509, 4
  %511 = trunc i32 %510 to i8
  %512 = and i8 %511, 1
  store i8 %512, i8* %53, align 1
  %513 = icmp eq i32 %497, 0
  %514 = zext i1 %513 to i8
  store i8 %514, i8* %54, align 1
  %515 = lshr i32 %497, 31
  %516 = trunc i32 %515 to i8
  store i8 %516, i8* %55, align 1
  %517 = lshr i32 %496, 31
  %518 = xor i32 %515, %482
  %519 = xor i32 %515, %517
  %520 = add nuw nsw i32 %518, %519
  %521 = icmp eq i32 %520, 2
  %522 = zext i1 %521 to i8
  store i8 %522, i8* %56, align 1
  %523 = add i64 %429, -32
  %524 = add i64 %465, 29
  store i64 %524, i64* %PC.i, align 8
  %525 = inttoptr i64 %523 to i32*
  store i32 %497, i32* %525, align 4
  %526 = load i64, i64* %RBP.i, align 8
  %527 = add i64 %526, -36
  %528 = load i64, i64* %PC.i, align 8
  %529 = add i64 %528, 3
  store i64 %529, i64* %PC.i, align 8
  %530 = inttoptr i64 %527 to i32*
  %531 = load i32, i32* %530, align 4
  %532 = shl i32 %531, 1
  %533 = icmp slt i32 %531, 0
  %534 = icmp slt i32 %532, 0
  %535 = xor i1 %533, %534
  %536 = zext i32 %532 to i64
  store i64 %536, i64* %RCX.i1565, align 8
  %.lobit14 = lshr i32 %531, 31
  %537 = trunc i32 %.lobit14 to i8
  store i8 %537, i8* %51, align 1
  %538 = and i32 %532, 254
  %539 = tail call i32 @llvm.ctpop.i32(i32 %538)
  %540 = trunc i32 %539 to i8
  %541 = and i8 %540, 1
  %542 = xor i8 %541, 1
  store i8 %542, i8* %52, align 1
  store i8 0, i8* %53, align 1
  %543 = icmp eq i32 %532, 0
  %544 = zext i1 %543 to i8
  store i8 %544, i8* %54, align 1
  %545 = lshr i32 %531, 30
  %546 = and i32 %545, 1
  %547 = trunc i32 %546 to i8
  store i8 %547, i8* %55, align 1
  %548 = zext i1 %535 to i8
  store i8 %548, i8* %56, align 1
  %549 = add i64 %526, -16
  %550 = add i64 %528, 9
  store i64 %550, i64* %PC.i, align 8
  %551 = inttoptr i64 %549 to i64*
  %552 = load i64, i64* %551, align 8
  store i64 %552, i64* %RDX.i1610, align 8
  %553 = add i64 %526, -28
  %554 = add i64 %528, 13
  store i64 %554, i64* %PC.i, align 8
  %555 = inttoptr i64 %553 to i32*
  %556 = load i32, i32* %555, align 4
  %557 = sext i32 %556 to i64
  store i64 %557, i64* %RSI.i1613, align 8
  %558 = shl nsw i64 %557, 2
  %559 = add i64 %558, %552
  %560 = add i64 %528, 16
  store i64 %560, i64* %PC.i, align 8
  %561 = inttoptr i64 %559 to i32*
  %562 = load i32, i32* %561, align 4
  %563 = add i32 %562, %532
  %564 = zext i32 %563 to i64
  store i64 %564, i64* %RCX.i1565, align 8
  %565 = icmp ult i32 %563, %532
  %566 = icmp ult i32 %563, %562
  %567 = or i1 %565, %566
  %568 = zext i1 %567 to i8
  store i8 %568, i8* %51, align 1
  %569 = and i32 %563, 255
  %570 = tail call i32 @llvm.ctpop.i32(i32 %569)
  %571 = trunc i32 %570 to i8
  %572 = and i8 %571, 1
  %573 = xor i8 %572, 1
  store i8 %573, i8* %52, align 1
  %574 = xor i32 %562, %532
  %575 = xor i32 %574, %563
  %576 = lshr i32 %575, 4
  %577 = trunc i32 %576 to i8
  %578 = and i8 %577, 1
  store i8 %578, i8* %53, align 1
  %579 = icmp eq i32 %563, 0
  %580 = zext i1 %579 to i8
  store i8 %580, i8* %54, align 1
  %581 = lshr i32 %563, 31
  %582 = trunc i32 %581 to i8
  store i8 %582, i8* %55, align 1
  %583 = lshr i32 %562, 31
  %584 = xor i32 %581, %546
  %585 = xor i32 %581, %583
  %586 = add nuw nsw i32 %584, %585
  %587 = icmp eq i32 %586, 2
  %588 = zext i1 %587 to i8
  store i8 %588, i8* %56, align 1
  %589 = add i64 %526, -40
  %590 = add i64 %528, 19
  store i64 %590, i64* %PC.i, align 8
  %591 = inttoptr i64 %589 to i32*
  store i32 %563, i32* %591, align 4
  %592 = load i64, i64* %RBP.i, align 8
  %593 = add i64 %592, -24
  %594 = load i64, i64* %PC.i, align 8
  %595 = add i64 %594, 4
  store i64 %595, i64* %PC.i, align 8
  %596 = inttoptr i64 %593 to i64*
  %597 = load i64, i64* %596, align 8
  store i64 %597, i64* %RDX.i1610, align 8
  %598 = add i64 %592, -32
  %599 = add i64 %594, 8
  store i64 %599, i64* %PC.i, align 8
  %600 = inttoptr i64 %598 to i32*
  %601 = load i32, i32* %600, align 4
  %602 = sext i32 %601 to i64
  store i64 %602, i64* %RSI.i1613, align 8
  %603 = shl nsw i64 %602, 3
  %604 = add i64 %603, %597
  %605 = add i64 %594, 13
  store i64 %605, i64* %PC.i, align 8
  %606 = inttoptr i64 %604 to i64*
  %607 = load i64, i64* %606, align 8
  %608 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %383, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %607, i64* %608, align 1
  store double 0.000000e+00, double* %385, align 1
  %609 = add i64 %592, -64
  %610 = add i64 %594, 18
  store i64 %610, i64* %PC.i, align 8
  %611 = inttoptr i64 %609 to i64*
  store i64 %607, i64* %611, align 8
  %612 = load i64, i64* %RBP.i, align 8
  %613 = add i64 %612, -24
  %614 = load i64, i64* %PC.i, align 8
  %615 = add i64 %614, 4
  store i64 %615, i64* %PC.i, align 8
  %616 = inttoptr i64 %613 to i64*
  %617 = load i64, i64* %616, align 8
  store i64 %617, i64* %RDX.i1610, align 8
  %618 = add i64 %612, -32
  %619 = add i64 %614, 7
  store i64 %619, i64* %PC.i, align 8
  %620 = inttoptr i64 %618 to i32*
  %621 = load i32, i32* %620, align 4
  %622 = add i32 %621, 1
  %623 = zext i32 %622 to i64
  store i64 %623, i64* %RCX.i1565, align 8
  %624 = icmp eq i32 %621, -1
  %625 = icmp eq i32 %622, 0
  %626 = or i1 %624, %625
  %627 = zext i1 %626 to i8
  store i8 %627, i8* %51, align 1
  %628 = and i32 %622, 255
  %629 = tail call i32 @llvm.ctpop.i32(i32 %628)
  %630 = trunc i32 %629 to i8
  %631 = and i8 %630, 1
  %632 = xor i8 %631, 1
  store i8 %632, i8* %52, align 1
  %633 = xor i32 %621, %622
  %634 = lshr i32 %633, 4
  %635 = trunc i32 %634 to i8
  %636 = and i8 %635, 1
  store i8 %636, i8* %53, align 1
  %637 = icmp eq i32 %622, 0
  %638 = zext i1 %637 to i8
  store i8 %638, i8* %54, align 1
  %639 = lshr i32 %622, 31
  %640 = trunc i32 %639 to i8
  store i8 %640, i8* %55, align 1
  %641 = lshr i32 %621, 31
  %642 = xor i32 %639, %641
  %643 = add nuw nsw i32 %642, %639
  %644 = icmp eq i32 %643, 2
  %645 = zext i1 %644 to i8
  store i8 %645, i8* %56, align 1
  %646 = sext i32 %622 to i64
  store i64 %646, i64* %RSI.i1613, align 8
  %647 = shl nsw i64 %646, 3
  %648 = add i64 %647, %617
  %649 = add i64 %614, 18
  store i64 %649, i64* %PC.i, align 8
  %650 = inttoptr i64 %648 to i64*
  %651 = load i64, i64* %650, align 8
  %652 = load i64, i64* %RAX.i1594, align 8
  %653 = xor i64 %652, %651
  store i64 %653, i64* %RDX.i1610, align 8
  store i8 0, i8* %51, align 1
  %654 = trunc i64 %653 to i32
  %655 = and i32 %654, 255
  %656 = tail call i32 @llvm.ctpop.i32(i32 %655)
  %657 = trunc i32 %656 to i8
  %658 = and i8 %657, 1
  %659 = xor i8 %658, 1
  store i8 %659, i8* %52, align 1
  %660 = icmp eq i64 %653, 0
  %661 = zext i1 %660 to i8
  store i8 %661, i8* %54, align 1
  %662 = lshr i64 %653, 63
  %663 = trunc i64 %662 to i8
  store i8 %663, i8* %55, align 1
  store i8 0, i8* %56, align 1
  store i8 0, i8* %53, align 1
  store i64 %653, i64* %386, align 1
  store i64 0, i64* %384, align 1
  %664 = add i64 %612, -72
  %665 = add i64 %614, 36
  store i64 %665, i64* %PC.i, align 8
  %666 = inttoptr i64 %664 to i64*
  store i64 %653, i64* %666, align 8
  %667 = load i64, i64* %RBP.i, align 8
  %668 = add i64 %667, -24
  %669 = load i64, i64* %PC.i, align 8
  %670 = add i64 %669, 4
  store i64 %670, i64* %PC.i, align 8
  %671 = inttoptr i64 %668 to i64*
  %672 = load i64, i64* %671, align 8
  store i64 %672, i64* %RDX.i1610, align 8
  %673 = add i64 %667, -40
  %674 = add i64 %669, 8
  store i64 %674, i64* %PC.i, align 8
  %675 = inttoptr i64 %673 to i32*
  %676 = load i32, i32* %675, align 4
  %677 = sext i32 %676 to i64
  store i64 %677, i64* %RSI.i1613, align 8
  %678 = shl nsw i64 %677, 3
  %679 = add i64 %678, %672
  %680 = add i64 %669, 13
  store i64 %680, i64* %PC.i, align 8
  %681 = inttoptr i64 %679 to i64*
  %682 = load i64, i64* %681, align 8
  %683 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %383, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %682, i64* %683, align 1
  store double 0.000000e+00, double* %385, align 1
  %684 = add i64 %667, -80
  %685 = add i64 %669, 18
  store i64 %685, i64* %PC.i, align 8
  %686 = inttoptr i64 %684 to i64*
  store i64 %682, i64* %686, align 8
  %687 = load i64, i64* %RBP.i, align 8
  %688 = add i64 %687, -24
  %689 = load i64, i64* %PC.i, align 8
  %690 = add i64 %689, 4
  store i64 %690, i64* %PC.i, align 8
  %691 = inttoptr i64 %688 to i64*
  %692 = load i64, i64* %691, align 8
  store i64 %692, i64* %RDX.i1610, align 8
  %693 = add i64 %687, -40
  %694 = add i64 %689, 7
  store i64 %694, i64* %PC.i, align 8
  %695 = inttoptr i64 %693 to i32*
  %696 = load i32, i32* %695, align 4
  %697 = add i32 %696, 1
  %698 = zext i32 %697 to i64
  store i64 %698, i64* %RCX.i1565, align 8
  %699 = icmp eq i32 %696, -1
  %700 = icmp eq i32 %697, 0
  %701 = or i1 %699, %700
  %702 = zext i1 %701 to i8
  store i8 %702, i8* %51, align 1
  %703 = and i32 %697, 255
  %704 = tail call i32 @llvm.ctpop.i32(i32 %703)
  %705 = trunc i32 %704 to i8
  %706 = and i8 %705, 1
  %707 = xor i8 %706, 1
  store i8 %707, i8* %52, align 1
  %708 = xor i32 %696, %697
  %709 = lshr i32 %708, 4
  %710 = trunc i32 %709 to i8
  %711 = and i8 %710, 1
  store i8 %711, i8* %53, align 1
  %712 = icmp eq i32 %697, 0
  %713 = zext i1 %712 to i8
  store i8 %713, i8* %54, align 1
  %714 = lshr i32 %697, 31
  %715 = trunc i32 %714 to i8
  store i8 %715, i8* %55, align 1
  %716 = lshr i32 %696, 31
  %717 = xor i32 %714, %716
  %718 = add nuw nsw i32 %717, %714
  %719 = icmp eq i32 %718, 2
  %720 = zext i1 %719 to i8
  store i8 %720, i8* %56, align 1
  %721 = sext i32 %697 to i64
  store i64 %721, i64* %RSI.i1613, align 8
  %722 = shl nsw i64 %721, 3
  %723 = add i64 %722, %692
  %724 = add i64 %689, 18
  store i64 %724, i64* %PC.i, align 8
  %725 = inttoptr i64 %723 to i64*
  %726 = load i64, i64* %725, align 8
  %727 = load i64, i64* %RAX.i1594, align 8
  %728 = xor i64 %727, %726
  store i64 %728, i64* %RDX.i1610, align 8
  store i8 0, i8* %51, align 1
  %729 = trunc i64 %728 to i32
  %730 = and i32 %729, 255
  %731 = tail call i32 @llvm.ctpop.i32(i32 %730)
  %732 = trunc i32 %731 to i8
  %733 = and i8 %732, 1
  %734 = xor i8 %733, 1
  store i8 %734, i8* %52, align 1
  %735 = icmp eq i64 %728, 0
  %736 = zext i1 %735 to i8
  store i8 %736, i8* %54, align 1
  %737 = lshr i64 %728, 63
  %738 = trunc i64 %737 to i8
  store i8 %738, i8* %55, align 1
  store i8 0, i8* %56, align 1
  store i8 0, i8* %53, align 1
  store i64 %728, i64* %386, align 1
  store i64 0, i64* %384, align 1
  %739 = add i64 %687, -88
  %740 = add i64 %689, 36
  store i64 %740, i64* %PC.i, align 8
  %741 = inttoptr i64 %739 to i64*
  store i64 %728, i64* %741, align 8
  %742 = load i64, i64* %RBP.i, align 8
  %743 = add i64 %742, -80
  %744 = load i64, i64* %PC.i, align 8
  %745 = add i64 %744, 5
  store i64 %745, i64* %PC.i, align 8
  %746 = inttoptr i64 %743 to i64*
  %747 = load i64, i64* %746, align 8
  %748 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %383, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %747, i64* %748, align 1
  store double 0.000000e+00, double* %385, align 1
  %749 = add i64 %742, -24
  %750 = add i64 %744, 9
  store i64 %750, i64* %PC.i, align 8
  %751 = inttoptr i64 %749 to i64*
  %752 = load i64, i64* %751, align 8
  store i64 %752, i64* %RDX.i1610, align 8
  %753 = add i64 %742, -32
  %754 = add i64 %744, 13
  store i64 %754, i64* %PC.i, align 8
  %755 = inttoptr i64 %753 to i32*
  %756 = load i32, i32* %755, align 4
  %757 = sext i32 %756 to i64
  store i64 %757, i64* %RSI.i1613, align 8
  %758 = shl nsw i64 %757, 3
  %759 = add i64 %758, %752
  %760 = add i64 %744, 18
  store i64 %760, i64* %PC.i, align 8
  %761 = inttoptr i64 %759 to i64*
  store i64 %747, i64* %761, align 8
  %762 = load i64, i64* %RBP.i, align 8
  %763 = add i64 %762, -88
  %764 = load i64, i64* %PC.i, align 8
  %765 = add i64 %764, 5
  store i64 %765, i64* %PC.i, align 8
  %766 = inttoptr i64 %763 to i64*
  %767 = load i64, i64* %766, align 8
  %768 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %383, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %767, i64* %768, align 1
  store double 0.000000e+00, double* %385, align 1
  %769 = add i64 %762, -24
  %770 = add i64 %764, 9
  store i64 %770, i64* %PC.i, align 8
  %771 = inttoptr i64 %769 to i64*
  %772 = load i64, i64* %771, align 8
  store i64 %772, i64* %RDX.i1610, align 8
  %773 = add i64 %762, -32
  %774 = add i64 %764, 12
  store i64 %774, i64* %PC.i, align 8
  %775 = inttoptr i64 %773 to i32*
  %776 = load i32, i32* %775, align 4
  %777 = add i32 %776, 1
  %778 = zext i32 %777 to i64
  store i64 %778, i64* %RCX.i1565, align 8
  %779 = icmp eq i32 %776, -1
  %780 = icmp eq i32 %777, 0
  %781 = or i1 %779, %780
  %782 = zext i1 %781 to i8
  store i8 %782, i8* %51, align 1
  %783 = and i32 %777, 255
  %784 = tail call i32 @llvm.ctpop.i32(i32 %783)
  %785 = trunc i32 %784 to i8
  %786 = and i8 %785, 1
  %787 = xor i8 %786, 1
  store i8 %787, i8* %52, align 1
  %788 = xor i32 %776, %777
  %789 = lshr i32 %788, 4
  %790 = trunc i32 %789 to i8
  %791 = and i8 %790, 1
  store i8 %791, i8* %53, align 1
  %792 = icmp eq i32 %777, 0
  %793 = zext i1 %792 to i8
  store i8 %793, i8* %54, align 1
  %794 = lshr i32 %777, 31
  %795 = trunc i32 %794 to i8
  store i8 %795, i8* %55, align 1
  %796 = lshr i32 %776, 31
  %797 = xor i32 %794, %796
  %798 = add nuw nsw i32 %797, %794
  %799 = icmp eq i32 %798, 2
  %800 = zext i1 %799 to i8
  store i8 %800, i8* %56, align 1
  %801 = sext i32 %777 to i64
  store i64 %801, i64* %RSI.i1613, align 8
  %802 = shl nsw i64 %801, 3
  %803 = add i64 %802, %772
  %804 = add i64 %764, 23
  store i64 %804, i64* %PC.i, align 8
  %805 = inttoptr i64 %803 to i64*
  store i64 %767, i64* %805, align 8
  %806 = load i64, i64* %RBP.i, align 8
  %807 = add i64 %806, -64
  %808 = load i64, i64* %PC.i, align 8
  %809 = add i64 %808, 5
  store i64 %809, i64* %PC.i, align 8
  %810 = inttoptr i64 %807 to i64*
  %811 = load i64, i64* %810, align 8
  %812 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %383, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %811, i64* %812, align 1
  store double 0.000000e+00, double* %385, align 1
  %813 = add i64 %806, -24
  %814 = add i64 %808, 9
  store i64 %814, i64* %PC.i, align 8
  %815 = inttoptr i64 %813 to i64*
  %816 = load i64, i64* %815, align 8
  store i64 %816, i64* %RDX.i1610, align 8
  %817 = add i64 %806, -40
  %818 = add i64 %808, 13
  store i64 %818, i64* %PC.i, align 8
  %819 = inttoptr i64 %817 to i32*
  %820 = load i32, i32* %819, align 4
  %821 = sext i32 %820 to i64
  store i64 %821, i64* %RSI.i1613, align 8
  %822 = shl nsw i64 %821, 3
  %823 = add i64 %822, %816
  %824 = add i64 %808, 18
  store i64 %824, i64* %PC.i, align 8
  %825 = inttoptr i64 %823 to i64*
  store i64 %811, i64* %825, align 8
  %826 = load i64, i64* %RBP.i, align 8
  %827 = add i64 %826, -72
  %828 = load i64, i64* %PC.i, align 8
  %829 = add i64 %828, 5
  store i64 %829, i64* %PC.i, align 8
  %830 = inttoptr i64 %827 to i64*
  %831 = load i64, i64* %830, align 8
  %832 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %383, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %831, i64* %832, align 1
  store double 0.000000e+00, double* %385, align 1
  %833 = add i64 %826, -24
  %834 = add i64 %828, 9
  store i64 %834, i64* %PC.i, align 8
  %835 = inttoptr i64 %833 to i64*
  %836 = load i64, i64* %835, align 8
  store i64 %836, i64* %RDX.i1610, align 8
  %837 = add i64 %826, -40
  %838 = add i64 %828, 12
  store i64 %838, i64* %PC.i, align 8
  %839 = inttoptr i64 %837 to i32*
  %840 = load i32, i32* %839, align 4
  %841 = add i32 %840, 1
  %842 = zext i32 %841 to i64
  store i64 %842, i64* %RCX.i1565, align 8
  %843 = icmp eq i32 %840, -1
  %844 = icmp eq i32 %841, 0
  %845 = or i1 %843, %844
  %846 = zext i1 %845 to i8
  store i8 %846, i8* %51, align 1
  %847 = and i32 %841, 255
  %848 = tail call i32 @llvm.ctpop.i32(i32 %847)
  %849 = trunc i32 %848 to i8
  %850 = and i8 %849, 1
  %851 = xor i8 %850, 1
  store i8 %851, i8* %52, align 1
  %852 = xor i32 %840, %841
  %853 = lshr i32 %852, 4
  %854 = trunc i32 %853 to i8
  %855 = and i8 %854, 1
  store i8 %855, i8* %53, align 1
  %856 = icmp eq i32 %841, 0
  %857 = zext i1 %856 to i8
  store i8 %857, i8* %54, align 1
  %858 = lshr i32 %841, 31
  %859 = trunc i32 %858 to i8
  store i8 %859, i8* %55, align 1
  %860 = lshr i32 %840, 31
  %861 = xor i32 %858, %860
  %862 = add nuw nsw i32 %861, %858
  %863 = icmp eq i32 %862, 2
  %864 = zext i1 %863 to i8
  store i8 %864, i8* %56, align 1
  %865 = sext i32 %841 to i64
  store i64 %865, i64* %RSI.i1613, align 8
  %866 = shl nsw i64 %865, 3
  %867 = add i64 %866, %836
  %868 = add i64 %828, 23
  store i64 %868, i64* %PC.i, align 8
  %869 = inttoptr i64 %867 to i64*
  store i64 %831, i64* %869, align 8
  %870 = load i64, i64* %RBP.i, align 8
  %871 = add i64 %870, -52
  %872 = load i64, i64* %PC.i, align 8
  %873 = add i64 %872, 3
  store i64 %873, i64* %PC.i, align 8
  %874 = inttoptr i64 %871 to i32*
  %875 = load i32, i32* %874, align 4
  %876 = zext i32 %875 to i64
  store i64 %876, i64* %RCX.i1565, align 8
  %877 = add i64 %870, -32
  %878 = add i64 %872, 6
  store i64 %878, i64* %PC.i, align 8
  %879 = inttoptr i64 %877 to i32*
  %880 = load i32, i32* %879, align 4
  %881 = add i32 %880, %875
  %882 = zext i32 %881 to i64
  store i64 %882, i64* %RCX.i1565, align 8
  %883 = icmp ult i32 %881, %875
  %884 = icmp ult i32 %881, %880
  %885 = or i1 %883, %884
  %886 = zext i1 %885 to i8
  store i8 %886, i8* %51, align 1
  %887 = and i32 %881, 255
  %888 = tail call i32 @llvm.ctpop.i32(i32 %887)
  %889 = trunc i32 %888 to i8
  %890 = and i8 %889, 1
  %891 = xor i8 %890, 1
  store i8 %891, i8* %52, align 1
  %892 = xor i32 %880, %875
  %893 = xor i32 %892, %881
  %894 = lshr i32 %893, 4
  %895 = trunc i32 %894 to i8
  %896 = and i8 %895, 1
  store i8 %896, i8* %53, align 1
  %897 = icmp eq i32 %881, 0
  %898 = zext i1 %897 to i8
  store i8 %898, i8* %54, align 1
  %899 = lshr i32 %881, 31
  %900 = trunc i32 %899 to i8
  store i8 %900, i8* %55, align 1
  %901 = lshr i32 %875, 31
  %902 = lshr i32 %880, 31
  %903 = xor i32 %899, %901
  %904 = xor i32 %899, %902
  %905 = add nuw nsw i32 %903, %904
  %906 = icmp eq i32 %905, 2
  %907 = zext i1 %906 to i8
  store i8 %907, i8* %56, align 1
  %908 = add i64 %872, 9
  store i64 %908, i64* %PC.i, align 8
  store i32 %881, i32* %879, align 4
  %909 = load i64, i64* %RBP.i, align 8
  %910 = add i64 %909, -52
  %911 = load i64, i64* %PC.i, align 8
  %912 = add i64 %911, 3
  store i64 %912, i64* %PC.i, align 8
  %913 = inttoptr i64 %910 to i32*
  %914 = load i32, i32* %913, align 4
  %915 = shl i32 %914, 1
  %916 = icmp slt i32 %914, 0
  %917 = icmp slt i32 %915, 0
  %918 = xor i1 %916, %917
  %919 = zext i32 %915 to i64
  store i64 %919, i64* %RCX.i1565, align 8
  %.lobit15 = lshr i32 %914, 31
  %920 = trunc i32 %.lobit15 to i8
  store i8 %920, i8* %51, align 1
  %921 = and i32 %915, 254
  %922 = tail call i32 @llvm.ctpop.i32(i32 %921)
  %923 = trunc i32 %922 to i8
  %924 = and i8 %923, 1
  %925 = xor i8 %924, 1
  store i8 %925, i8* %52, align 1
  store i8 0, i8* %53, align 1
  %926 = icmp eq i32 %915, 0
  %927 = zext i1 %926 to i8
  store i8 %927, i8* %54, align 1
  %928 = lshr i32 %914, 30
  %929 = and i32 %928, 1
  %930 = trunc i32 %929 to i8
  store i8 %930, i8* %55, align 1
  %931 = zext i1 %918 to i8
  store i8 %931, i8* %56, align 1
  %932 = add i64 %909, -40
  %933 = add i64 %911, 8
  store i64 %933, i64* %PC.i, align 8
  %934 = inttoptr i64 %932 to i32*
  %935 = load i32, i32* %934, align 4
  %936 = add i32 %935, %915
  %937 = zext i32 %936 to i64
  store i64 %937, i64* %RCX.i1565, align 8
  %938 = icmp ult i32 %936, %915
  %939 = icmp ult i32 %936, %935
  %940 = or i1 %938, %939
  %941 = zext i1 %940 to i8
  store i8 %941, i8* %51, align 1
  %942 = and i32 %936, 255
  %943 = tail call i32 @llvm.ctpop.i32(i32 %942)
  %944 = trunc i32 %943 to i8
  %945 = and i8 %944, 1
  %946 = xor i8 %945, 1
  store i8 %946, i8* %52, align 1
  %947 = xor i32 %935, %915
  %948 = xor i32 %947, %936
  %949 = lshr i32 %948, 4
  %950 = trunc i32 %949 to i8
  %951 = and i8 %950, 1
  store i8 %951, i8* %53, align 1
  %952 = icmp eq i32 %936, 0
  %953 = zext i1 %952 to i8
  store i8 %953, i8* %54, align 1
  %954 = lshr i32 %936, 31
  %955 = trunc i32 %954 to i8
  store i8 %955, i8* %55, align 1
  %956 = lshr i32 %935, 31
  %957 = xor i32 %954, %929
  %958 = xor i32 %954, %956
  %959 = add nuw nsw i32 %957, %958
  %960 = icmp eq i32 %959, 2
  %961 = zext i1 %960 to i8
  store i8 %961, i8* %56, align 1
  %962 = add i64 %911, 11
  store i64 %962, i64* %PC.i, align 8
  store i32 %936, i32* %934, align 4
  %963 = load i64, i64* %RBP.i, align 8
  %964 = add i64 %963, -24
  %965 = load i64, i64* %PC.i, align 8
  %966 = add i64 %965, 4
  store i64 %966, i64* %PC.i, align 8
  %967 = inttoptr i64 %964 to i64*
  %968 = load i64, i64* %967, align 8
  store i64 %968, i64* %RDX.i1610, align 8
  %969 = add i64 %963, -32
  %970 = add i64 %965, 8
  store i64 %970, i64* %PC.i, align 8
  %971 = inttoptr i64 %969 to i32*
  %972 = load i32, i32* %971, align 4
  %973 = sext i32 %972 to i64
  store i64 %973, i64* %RSI.i1613, align 8
  %974 = shl nsw i64 %973, 3
  %975 = add i64 %974, %968
  %976 = add i64 %965, 13
  store i64 %976, i64* %PC.i, align 8
  %977 = inttoptr i64 %975 to i64*
  %978 = load i64, i64* %977, align 8
  %979 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %383, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %978, i64* %979, align 1
  store double 0.000000e+00, double* %385, align 1
  %980 = add i64 %963, -64
  %981 = add i64 %965, 18
  store i64 %981, i64* %PC.i, align 8
  %982 = inttoptr i64 %980 to i64*
  store i64 %978, i64* %982, align 8
  %983 = load i64, i64* %RBP.i, align 8
  %984 = add i64 %983, -24
  %985 = load i64, i64* %PC.i, align 8
  %986 = add i64 %985, 4
  store i64 %986, i64* %PC.i, align 8
  %987 = inttoptr i64 %984 to i64*
  %988 = load i64, i64* %987, align 8
  store i64 %988, i64* %RDX.i1610, align 8
  %989 = add i64 %983, -32
  %990 = add i64 %985, 7
  store i64 %990, i64* %PC.i, align 8
  %991 = inttoptr i64 %989 to i32*
  %992 = load i32, i32* %991, align 4
  %993 = add i32 %992, 1
  %994 = zext i32 %993 to i64
  store i64 %994, i64* %RCX.i1565, align 8
  %995 = icmp eq i32 %992, -1
  %996 = icmp eq i32 %993, 0
  %997 = or i1 %995, %996
  %998 = zext i1 %997 to i8
  store i8 %998, i8* %51, align 1
  %999 = and i32 %993, 255
  %1000 = tail call i32 @llvm.ctpop.i32(i32 %999)
  %1001 = trunc i32 %1000 to i8
  %1002 = and i8 %1001, 1
  %1003 = xor i8 %1002, 1
  store i8 %1003, i8* %52, align 1
  %1004 = xor i32 %992, %993
  %1005 = lshr i32 %1004, 4
  %1006 = trunc i32 %1005 to i8
  %1007 = and i8 %1006, 1
  store i8 %1007, i8* %53, align 1
  %1008 = icmp eq i32 %993, 0
  %1009 = zext i1 %1008 to i8
  store i8 %1009, i8* %54, align 1
  %1010 = lshr i32 %993, 31
  %1011 = trunc i32 %1010 to i8
  store i8 %1011, i8* %55, align 1
  %1012 = lshr i32 %992, 31
  %1013 = xor i32 %1010, %1012
  %1014 = add nuw nsw i32 %1013, %1010
  %1015 = icmp eq i32 %1014, 2
  %1016 = zext i1 %1015 to i8
  store i8 %1016, i8* %56, align 1
  %1017 = sext i32 %993 to i64
  store i64 %1017, i64* %RSI.i1613, align 8
  %1018 = shl nsw i64 %1017, 3
  %1019 = add i64 %1018, %988
  %1020 = add i64 %985, 18
  store i64 %1020, i64* %PC.i, align 8
  %1021 = inttoptr i64 %1019 to i64*
  %1022 = load i64, i64* %1021, align 8
  %1023 = load i64, i64* %RAX.i1594, align 8
  %1024 = xor i64 %1023, %1022
  store i64 %1024, i64* %RDX.i1610, align 8
  store i8 0, i8* %51, align 1
  %1025 = trunc i64 %1024 to i32
  %1026 = and i32 %1025, 255
  %1027 = tail call i32 @llvm.ctpop.i32(i32 %1026)
  %1028 = trunc i32 %1027 to i8
  %1029 = and i8 %1028, 1
  %1030 = xor i8 %1029, 1
  store i8 %1030, i8* %52, align 1
  %1031 = icmp eq i64 %1024, 0
  %1032 = zext i1 %1031 to i8
  store i8 %1032, i8* %54, align 1
  %1033 = lshr i64 %1024, 63
  %1034 = trunc i64 %1033 to i8
  store i8 %1034, i8* %55, align 1
  store i8 0, i8* %56, align 1
  store i8 0, i8* %53, align 1
  store i64 %1024, i64* %386, align 1
  store i64 0, i64* %384, align 1
  %1035 = add i64 %983, -72
  %1036 = add i64 %985, 36
  store i64 %1036, i64* %PC.i, align 8
  %1037 = inttoptr i64 %1035 to i64*
  store i64 %1024, i64* %1037, align 8
  %1038 = load i64, i64* %RBP.i, align 8
  %1039 = add i64 %1038, -24
  %1040 = load i64, i64* %PC.i, align 8
  %1041 = add i64 %1040, 4
  store i64 %1041, i64* %PC.i, align 8
  %1042 = inttoptr i64 %1039 to i64*
  %1043 = load i64, i64* %1042, align 8
  store i64 %1043, i64* %RDX.i1610, align 8
  %1044 = add i64 %1038, -40
  %1045 = add i64 %1040, 8
  store i64 %1045, i64* %PC.i, align 8
  %1046 = inttoptr i64 %1044 to i32*
  %1047 = load i32, i32* %1046, align 4
  %1048 = sext i32 %1047 to i64
  store i64 %1048, i64* %RSI.i1613, align 8
  %1049 = shl nsw i64 %1048, 3
  %1050 = add i64 %1049, %1043
  %1051 = add i64 %1040, 13
  store i64 %1051, i64* %PC.i, align 8
  %1052 = inttoptr i64 %1050 to i64*
  %1053 = load i64, i64* %1052, align 8
  %1054 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %383, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1053, i64* %1054, align 1
  store double 0.000000e+00, double* %385, align 1
  %1055 = add i64 %1038, -80
  %1056 = add i64 %1040, 18
  store i64 %1056, i64* %PC.i, align 8
  %1057 = inttoptr i64 %1055 to i64*
  store i64 %1053, i64* %1057, align 8
  %1058 = load i64, i64* %RBP.i, align 8
  %1059 = add i64 %1058, -24
  %1060 = load i64, i64* %PC.i, align 8
  %1061 = add i64 %1060, 4
  store i64 %1061, i64* %PC.i, align 8
  %1062 = inttoptr i64 %1059 to i64*
  %1063 = load i64, i64* %1062, align 8
  store i64 %1063, i64* %RDX.i1610, align 8
  %1064 = add i64 %1058, -40
  %1065 = add i64 %1060, 7
  store i64 %1065, i64* %PC.i, align 8
  %1066 = inttoptr i64 %1064 to i32*
  %1067 = load i32, i32* %1066, align 4
  %1068 = add i32 %1067, 1
  %1069 = zext i32 %1068 to i64
  store i64 %1069, i64* %RCX.i1565, align 8
  %1070 = icmp eq i32 %1067, -1
  %1071 = icmp eq i32 %1068, 0
  %1072 = or i1 %1070, %1071
  %1073 = zext i1 %1072 to i8
  store i8 %1073, i8* %51, align 1
  %1074 = and i32 %1068, 255
  %1075 = tail call i32 @llvm.ctpop.i32(i32 %1074)
  %1076 = trunc i32 %1075 to i8
  %1077 = and i8 %1076, 1
  %1078 = xor i8 %1077, 1
  store i8 %1078, i8* %52, align 1
  %1079 = xor i32 %1067, %1068
  %1080 = lshr i32 %1079, 4
  %1081 = trunc i32 %1080 to i8
  %1082 = and i8 %1081, 1
  store i8 %1082, i8* %53, align 1
  %1083 = icmp eq i32 %1068, 0
  %1084 = zext i1 %1083 to i8
  store i8 %1084, i8* %54, align 1
  %1085 = lshr i32 %1068, 31
  %1086 = trunc i32 %1085 to i8
  store i8 %1086, i8* %55, align 1
  %1087 = lshr i32 %1067, 31
  %1088 = xor i32 %1085, %1087
  %1089 = add nuw nsw i32 %1088, %1085
  %1090 = icmp eq i32 %1089, 2
  %1091 = zext i1 %1090 to i8
  store i8 %1091, i8* %56, align 1
  %1092 = sext i32 %1068 to i64
  store i64 %1092, i64* %RSI.i1613, align 8
  %1093 = shl nsw i64 %1092, 3
  %1094 = add i64 %1093, %1063
  %1095 = add i64 %1060, 18
  store i64 %1095, i64* %PC.i, align 8
  %1096 = inttoptr i64 %1094 to i64*
  %1097 = load i64, i64* %1096, align 8
  %1098 = load i64, i64* %RAX.i1594, align 8
  %1099 = xor i64 %1098, %1097
  store i64 %1099, i64* %RDX.i1610, align 8
  store i8 0, i8* %51, align 1
  %1100 = trunc i64 %1099 to i32
  %1101 = and i32 %1100, 255
  %1102 = tail call i32 @llvm.ctpop.i32(i32 %1101)
  %1103 = trunc i32 %1102 to i8
  %1104 = and i8 %1103, 1
  %1105 = xor i8 %1104, 1
  store i8 %1105, i8* %52, align 1
  %1106 = icmp eq i64 %1099, 0
  %1107 = zext i1 %1106 to i8
  store i8 %1107, i8* %54, align 1
  %1108 = lshr i64 %1099, 63
  %1109 = trunc i64 %1108 to i8
  store i8 %1109, i8* %55, align 1
  store i8 0, i8* %56, align 1
  store i8 0, i8* %53, align 1
  store i64 %1099, i64* %386, align 1
  store i64 0, i64* %384, align 1
  %1110 = add i64 %1058, -88
  %1111 = add i64 %1060, 36
  store i64 %1111, i64* %PC.i, align 8
  %1112 = inttoptr i64 %1110 to i64*
  store i64 %1099, i64* %1112, align 8
  %1113 = load i64, i64* %RBP.i, align 8
  %1114 = add i64 %1113, -80
  %1115 = load i64, i64* %PC.i, align 8
  %1116 = add i64 %1115, 5
  store i64 %1116, i64* %PC.i, align 8
  %1117 = inttoptr i64 %1114 to i64*
  %1118 = load i64, i64* %1117, align 8
  %1119 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %383, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1118, i64* %1119, align 1
  store double 0.000000e+00, double* %385, align 1
  %1120 = add i64 %1113, -24
  %1121 = add i64 %1115, 9
  store i64 %1121, i64* %PC.i, align 8
  %1122 = inttoptr i64 %1120 to i64*
  %1123 = load i64, i64* %1122, align 8
  store i64 %1123, i64* %RDX.i1610, align 8
  %1124 = add i64 %1113, -32
  %1125 = add i64 %1115, 13
  store i64 %1125, i64* %PC.i, align 8
  %1126 = inttoptr i64 %1124 to i32*
  %1127 = load i32, i32* %1126, align 4
  %1128 = sext i32 %1127 to i64
  store i64 %1128, i64* %RSI.i1613, align 8
  %1129 = shl nsw i64 %1128, 3
  %1130 = add i64 %1129, %1123
  %1131 = add i64 %1115, 18
  store i64 %1131, i64* %PC.i, align 8
  %1132 = inttoptr i64 %1130 to i64*
  store i64 %1118, i64* %1132, align 8
  %1133 = load i64, i64* %RBP.i, align 8
  %1134 = add i64 %1133, -88
  %1135 = load i64, i64* %PC.i, align 8
  %1136 = add i64 %1135, 5
  store i64 %1136, i64* %PC.i, align 8
  %1137 = inttoptr i64 %1134 to i64*
  %1138 = load i64, i64* %1137, align 8
  %1139 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %383, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1138, i64* %1139, align 1
  store double 0.000000e+00, double* %385, align 1
  %1140 = add i64 %1133, -24
  %1141 = add i64 %1135, 9
  store i64 %1141, i64* %PC.i, align 8
  %1142 = inttoptr i64 %1140 to i64*
  %1143 = load i64, i64* %1142, align 8
  store i64 %1143, i64* %RDX.i1610, align 8
  %1144 = add i64 %1133, -32
  %1145 = add i64 %1135, 12
  store i64 %1145, i64* %PC.i, align 8
  %1146 = inttoptr i64 %1144 to i32*
  %1147 = load i32, i32* %1146, align 4
  %1148 = add i32 %1147, 1
  %1149 = zext i32 %1148 to i64
  store i64 %1149, i64* %RCX.i1565, align 8
  %1150 = icmp eq i32 %1147, -1
  %1151 = icmp eq i32 %1148, 0
  %1152 = or i1 %1150, %1151
  %1153 = zext i1 %1152 to i8
  store i8 %1153, i8* %51, align 1
  %1154 = and i32 %1148, 255
  %1155 = tail call i32 @llvm.ctpop.i32(i32 %1154)
  %1156 = trunc i32 %1155 to i8
  %1157 = and i8 %1156, 1
  %1158 = xor i8 %1157, 1
  store i8 %1158, i8* %52, align 1
  %1159 = xor i32 %1147, %1148
  %1160 = lshr i32 %1159, 4
  %1161 = trunc i32 %1160 to i8
  %1162 = and i8 %1161, 1
  store i8 %1162, i8* %53, align 1
  %1163 = icmp eq i32 %1148, 0
  %1164 = zext i1 %1163 to i8
  store i8 %1164, i8* %54, align 1
  %1165 = lshr i32 %1148, 31
  %1166 = trunc i32 %1165 to i8
  store i8 %1166, i8* %55, align 1
  %1167 = lshr i32 %1147, 31
  %1168 = xor i32 %1165, %1167
  %1169 = add nuw nsw i32 %1168, %1165
  %1170 = icmp eq i32 %1169, 2
  %1171 = zext i1 %1170 to i8
  store i8 %1171, i8* %56, align 1
  %1172 = sext i32 %1148 to i64
  store i64 %1172, i64* %RSI.i1613, align 8
  %1173 = shl nsw i64 %1172, 3
  %1174 = add i64 %1173, %1143
  %1175 = add i64 %1135, 23
  store i64 %1175, i64* %PC.i, align 8
  %1176 = inttoptr i64 %1174 to i64*
  store i64 %1138, i64* %1176, align 8
  %1177 = load i64, i64* %RBP.i, align 8
  %1178 = add i64 %1177, -64
  %1179 = load i64, i64* %PC.i, align 8
  %1180 = add i64 %1179, 5
  store i64 %1180, i64* %PC.i, align 8
  %1181 = inttoptr i64 %1178 to i64*
  %1182 = load i64, i64* %1181, align 8
  %1183 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %383, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1182, i64* %1183, align 1
  store double 0.000000e+00, double* %385, align 1
  %1184 = add i64 %1177, -24
  %1185 = add i64 %1179, 9
  store i64 %1185, i64* %PC.i, align 8
  %1186 = inttoptr i64 %1184 to i64*
  %1187 = load i64, i64* %1186, align 8
  store i64 %1187, i64* %RDX.i1610, align 8
  %1188 = add i64 %1177, -40
  %1189 = add i64 %1179, 13
  store i64 %1189, i64* %PC.i, align 8
  %1190 = inttoptr i64 %1188 to i32*
  %1191 = load i32, i32* %1190, align 4
  %1192 = sext i32 %1191 to i64
  store i64 %1192, i64* %RSI.i1613, align 8
  %1193 = shl nsw i64 %1192, 3
  %1194 = add i64 %1193, %1187
  %1195 = add i64 %1179, 18
  store i64 %1195, i64* %PC.i, align 8
  %1196 = inttoptr i64 %1194 to i64*
  store i64 %1182, i64* %1196, align 8
  %1197 = load i64, i64* %RBP.i, align 8
  %1198 = add i64 %1197, -72
  %1199 = load i64, i64* %PC.i, align 8
  %1200 = add i64 %1199, 5
  store i64 %1200, i64* %PC.i, align 8
  %1201 = inttoptr i64 %1198 to i64*
  %1202 = load i64, i64* %1201, align 8
  %1203 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %383, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1202, i64* %1203, align 1
  store double 0.000000e+00, double* %385, align 1
  %1204 = add i64 %1197, -24
  %1205 = add i64 %1199, 9
  store i64 %1205, i64* %PC.i, align 8
  %1206 = inttoptr i64 %1204 to i64*
  %1207 = load i64, i64* %1206, align 8
  store i64 %1207, i64* %RDX.i1610, align 8
  %1208 = add i64 %1197, -40
  %1209 = add i64 %1199, 12
  store i64 %1209, i64* %PC.i, align 8
  %1210 = inttoptr i64 %1208 to i32*
  %1211 = load i32, i32* %1210, align 4
  %1212 = add i32 %1211, 1
  %1213 = zext i32 %1212 to i64
  store i64 %1213, i64* %RCX.i1565, align 8
  %1214 = icmp eq i32 %1211, -1
  %1215 = icmp eq i32 %1212, 0
  %1216 = or i1 %1214, %1215
  %1217 = zext i1 %1216 to i8
  store i8 %1217, i8* %51, align 1
  %1218 = and i32 %1212, 255
  %1219 = tail call i32 @llvm.ctpop.i32(i32 %1218)
  %1220 = trunc i32 %1219 to i8
  %1221 = and i8 %1220, 1
  %1222 = xor i8 %1221, 1
  store i8 %1222, i8* %52, align 1
  %1223 = xor i32 %1211, %1212
  %1224 = lshr i32 %1223, 4
  %1225 = trunc i32 %1224 to i8
  %1226 = and i8 %1225, 1
  store i8 %1226, i8* %53, align 1
  %1227 = icmp eq i32 %1212, 0
  %1228 = zext i1 %1227 to i8
  store i8 %1228, i8* %54, align 1
  %1229 = lshr i32 %1212, 31
  %1230 = trunc i32 %1229 to i8
  store i8 %1230, i8* %55, align 1
  %1231 = lshr i32 %1211, 31
  %1232 = xor i32 %1229, %1231
  %1233 = add nuw nsw i32 %1232, %1229
  %1234 = icmp eq i32 %1233, 2
  %1235 = zext i1 %1234 to i8
  store i8 %1235, i8* %56, align 1
  %1236 = sext i32 %1212 to i64
  store i64 %1236, i64* %RSI.i1613, align 8
  %1237 = shl nsw i64 %1236, 3
  %1238 = add i64 %1237, %1207
  %1239 = add i64 %1199, 23
  store i64 %1239, i64* %PC.i, align 8
  %1240 = inttoptr i64 %1238 to i64*
  store i64 %1202, i64* %1240, align 8
  %1241 = load i64, i64* %RBP.i, align 8
  %1242 = add i64 %1241, -52
  %1243 = load i64, i64* %PC.i, align 8
  %1244 = add i64 %1243, 3
  store i64 %1244, i64* %PC.i, align 8
  %1245 = inttoptr i64 %1242 to i32*
  %1246 = load i32, i32* %1245, align 4
  %1247 = zext i32 %1246 to i64
  store i64 %1247, i64* %RCX.i1565, align 8
  %1248 = add i64 %1241, -32
  %1249 = add i64 %1243, 6
  store i64 %1249, i64* %PC.i, align 8
  %1250 = inttoptr i64 %1248 to i32*
  %1251 = load i32, i32* %1250, align 4
  %1252 = add i32 %1251, %1246
  %1253 = zext i32 %1252 to i64
  store i64 %1253, i64* %RCX.i1565, align 8
  %1254 = icmp ult i32 %1252, %1246
  %1255 = icmp ult i32 %1252, %1251
  %1256 = or i1 %1254, %1255
  %1257 = zext i1 %1256 to i8
  store i8 %1257, i8* %51, align 1
  %1258 = and i32 %1252, 255
  %1259 = tail call i32 @llvm.ctpop.i32(i32 %1258)
  %1260 = trunc i32 %1259 to i8
  %1261 = and i8 %1260, 1
  %1262 = xor i8 %1261, 1
  store i8 %1262, i8* %52, align 1
  %1263 = xor i32 %1251, %1246
  %1264 = xor i32 %1263, %1252
  %1265 = lshr i32 %1264, 4
  %1266 = trunc i32 %1265 to i8
  %1267 = and i8 %1266, 1
  store i8 %1267, i8* %53, align 1
  %1268 = icmp eq i32 %1252, 0
  %1269 = zext i1 %1268 to i8
  store i8 %1269, i8* %54, align 1
  %1270 = lshr i32 %1252, 31
  %1271 = trunc i32 %1270 to i8
  store i8 %1271, i8* %55, align 1
  %1272 = lshr i32 %1246, 31
  %1273 = lshr i32 %1251, 31
  %1274 = xor i32 %1270, %1272
  %1275 = xor i32 %1270, %1273
  %1276 = add nuw nsw i32 %1274, %1275
  %1277 = icmp eq i32 %1276, 2
  %1278 = zext i1 %1277 to i8
  store i8 %1278, i8* %56, align 1
  %1279 = add i64 %1243, 9
  store i64 %1279, i64* %PC.i, align 8
  store i32 %1252, i32* %1250, align 4
  %1280 = load i64, i64* %RBP.i, align 8
  %1281 = add i64 %1280, -52
  %1282 = load i64, i64* %PC.i, align 8
  %1283 = add i64 %1282, 3
  store i64 %1283, i64* %PC.i, align 8
  %1284 = inttoptr i64 %1281 to i32*
  %1285 = load i32, i32* %1284, align 4
  %1286 = zext i32 %1285 to i64
  store i64 %1286, i64* %RCX.i1565, align 8
  %1287 = add i64 %1280, -40
  %1288 = add i64 %1282, 6
  store i64 %1288, i64* %PC.i, align 8
  %1289 = inttoptr i64 %1287 to i32*
  %1290 = load i32, i32* %1289, align 4
  %1291 = sub i32 %1290, %1285
  %1292 = zext i32 %1291 to i64
  store i64 %1292, i64* %RDI.i1602, align 8
  %1293 = icmp ult i32 %1290, %1285
  %1294 = zext i1 %1293 to i8
  store i8 %1294, i8* %51, align 1
  %1295 = and i32 %1291, 255
  %1296 = tail call i32 @llvm.ctpop.i32(i32 %1295)
  %1297 = trunc i32 %1296 to i8
  %1298 = and i8 %1297, 1
  %1299 = xor i8 %1298, 1
  store i8 %1299, i8* %52, align 1
  %1300 = xor i32 %1285, %1290
  %1301 = xor i32 %1300, %1291
  %1302 = lshr i32 %1301, 4
  %1303 = trunc i32 %1302 to i8
  %1304 = and i8 %1303, 1
  store i8 %1304, i8* %53, align 1
  %1305 = icmp eq i32 %1291, 0
  %1306 = zext i1 %1305 to i8
  store i8 %1306, i8* %54, align 1
  %1307 = lshr i32 %1291, 31
  %1308 = trunc i32 %1307 to i8
  store i8 %1308, i8* %55, align 1
  %1309 = lshr i32 %1290, 31
  %1310 = lshr i32 %1285, 31
  %1311 = xor i32 %1310, %1309
  %1312 = xor i32 %1307, %1309
  %1313 = add nuw nsw i32 %1312, %1311
  %1314 = icmp eq i32 %1313, 2
  %1315 = zext i1 %1314 to i8
  store i8 %1315, i8* %56, align 1
  %1316 = add i64 %1282, 11
  store i64 %1316, i64* %PC.i, align 8
  store i32 %1291, i32* %1289, align 4
  %1317 = load i64, i64* %RBP.i, align 8
  %1318 = add i64 %1317, -24
  %1319 = load i64, i64* %PC.i, align 8
  %1320 = add i64 %1319, 4
  store i64 %1320, i64* %PC.i, align 8
  %1321 = inttoptr i64 %1318 to i64*
  %1322 = load i64, i64* %1321, align 8
  store i64 %1322, i64* %RDX.i1610, align 8
  %1323 = add i64 %1317, -32
  %1324 = add i64 %1319, 8
  store i64 %1324, i64* %PC.i, align 8
  %1325 = inttoptr i64 %1323 to i32*
  %1326 = load i32, i32* %1325, align 4
  %1327 = sext i32 %1326 to i64
  store i64 %1327, i64* %RSI.i1613, align 8
  %1328 = shl nsw i64 %1327, 3
  %1329 = add i64 %1328, %1322
  %1330 = add i64 %1319, 13
  store i64 %1330, i64* %PC.i, align 8
  %1331 = inttoptr i64 %1329 to i64*
  %1332 = load i64, i64* %1331, align 8
  %1333 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %383, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1332, i64* %1333, align 1
  store double 0.000000e+00, double* %385, align 1
  %1334 = add i64 %1317, -64
  %1335 = add i64 %1319, 18
  store i64 %1335, i64* %PC.i, align 8
  %1336 = inttoptr i64 %1334 to i64*
  store i64 %1332, i64* %1336, align 8
  %1337 = load i64, i64* %RBP.i, align 8
  %1338 = add i64 %1337, -24
  %1339 = load i64, i64* %PC.i, align 8
  %1340 = add i64 %1339, 4
  store i64 %1340, i64* %PC.i, align 8
  %1341 = inttoptr i64 %1338 to i64*
  %1342 = load i64, i64* %1341, align 8
  store i64 %1342, i64* %RDX.i1610, align 8
  %1343 = add i64 %1337, -32
  %1344 = add i64 %1339, 7
  store i64 %1344, i64* %PC.i, align 8
  %1345 = inttoptr i64 %1343 to i32*
  %1346 = load i32, i32* %1345, align 4
  %1347 = add i32 %1346, 1
  %1348 = zext i32 %1347 to i64
  store i64 %1348, i64* %RCX.i1565, align 8
  %1349 = icmp eq i32 %1346, -1
  %1350 = icmp eq i32 %1347, 0
  %1351 = or i1 %1349, %1350
  %1352 = zext i1 %1351 to i8
  store i8 %1352, i8* %51, align 1
  %1353 = and i32 %1347, 255
  %1354 = tail call i32 @llvm.ctpop.i32(i32 %1353)
  %1355 = trunc i32 %1354 to i8
  %1356 = and i8 %1355, 1
  %1357 = xor i8 %1356, 1
  store i8 %1357, i8* %52, align 1
  %1358 = xor i32 %1346, %1347
  %1359 = lshr i32 %1358, 4
  %1360 = trunc i32 %1359 to i8
  %1361 = and i8 %1360, 1
  store i8 %1361, i8* %53, align 1
  %1362 = icmp eq i32 %1347, 0
  %1363 = zext i1 %1362 to i8
  store i8 %1363, i8* %54, align 1
  %1364 = lshr i32 %1347, 31
  %1365 = trunc i32 %1364 to i8
  store i8 %1365, i8* %55, align 1
  %1366 = lshr i32 %1346, 31
  %1367 = xor i32 %1364, %1366
  %1368 = add nuw nsw i32 %1367, %1364
  %1369 = icmp eq i32 %1368, 2
  %1370 = zext i1 %1369 to i8
  store i8 %1370, i8* %56, align 1
  %1371 = sext i32 %1347 to i64
  store i64 %1371, i64* %RSI.i1613, align 8
  %1372 = shl nsw i64 %1371, 3
  %1373 = add i64 %1372, %1342
  %1374 = add i64 %1339, 18
  store i64 %1374, i64* %PC.i, align 8
  %1375 = inttoptr i64 %1373 to i64*
  %1376 = load i64, i64* %1375, align 8
  %1377 = load i64, i64* %RAX.i1594, align 8
  %1378 = xor i64 %1377, %1376
  store i64 %1378, i64* %RDX.i1610, align 8
  store i8 0, i8* %51, align 1
  %1379 = trunc i64 %1378 to i32
  %1380 = and i32 %1379, 255
  %1381 = tail call i32 @llvm.ctpop.i32(i32 %1380)
  %1382 = trunc i32 %1381 to i8
  %1383 = and i8 %1382, 1
  %1384 = xor i8 %1383, 1
  store i8 %1384, i8* %52, align 1
  %1385 = icmp eq i64 %1378, 0
  %1386 = zext i1 %1385 to i8
  store i8 %1386, i8* %54, align 1
  %1387 = lshr i64 %1378, 63
  %1388 = trunc i64 %1387 to i8
  store i8 %1388, i8* %55, align 1
  store i8 0, i8* %56, align 1
  store i8 0, i8* %53, align 1
  store i64 %1378, i64* %386, align 1
  store i64 0, i64* %384, align 1
  %1389 = add i64 %1337, -72
  %1390 = add i64 %1339, 36
  store i64 %1390, i64* %PC.i, align 8
  %1391 = inttoptr i64 %1389 to i64*
  store i64 %1378, i64* %1391, align 8
  %1392 = load i64, i64* %RBP.i, align 8
  %1393 = add i64 %1392, -24
  %1394 = load i64, i64* %PC.i, align 8
  %1395 = add i64 %1394, 4
  store i64 %1395, i64* %PC.i, align 8
  %1396 = inttoptr i64 %1393 to i64*
  %1397 = load i64, i64* %1396, align 8
  store i64 %1397, i64* %RDX.i1610, align 8
  %1398 = add i64 %1392, -40
  %1399 = add i64 %1394, 8
  store i64 %1399, i64* %PC.i, align 8
  %1400 = inttoptr i64 %1398 to i32*
  %1401 = load i32, i32* %1400, align 4
  %1402 = sext i32 %1401 to i64
  store i64 %1402, i64* %RSI.i1613, align 8
  %1403 = shl nsw i64 %1402, 3
  %1404 = add i64 %1403, %1397
  %1405 = add i64 %1394, 13
  store i64 %1405, i64* %PC.i, align 8
  %1406 = inttoptr i64 %1404 to i64*
  %1407 = load i64, i64* %1406, align 8
  %1408 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %383, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1407, i64* %1408, align 1
  store double 0.000000e+00, double* %385, align 1
  %1409 = add i64 %1392, -80
  %1410 = add i64 %1394, 18
  store i64 %1410, i64* %PC.i, align 8
  %1411 = inttoptr i64 %1409 to i64*
  store i64 %1407, i64* %1411, align 8
  %1412 = load i64, i64* %RBP.i, align 8
  %1413 = add i64 %1412, -24
  %1414 = load i64, i64* %PC.i, align 8
  %1415 = add i64 %1414, 4
  store i64 %1415, i64* %PC.i, align 8
  %1416 = inttoptr i64 %1413 to i64*
  %1417 = load i64, i64* %1416, align 8
  store i64 %1417, i64* %RDX.i1610, align 8
  %1418 = add i64 %1412, -40
  %1419 = add i64 %1414, 7
  store i64 %1419, i64* %PC.i, align 8
  %1420 = inttoptr i64 %1418 to i32*
  %1421 = load i32, i32* %1420, align 4
  %1422 = add i32 %1421, 1
  %1423 = zext i32 %1422 to i64
  store i64 %1423, i64* %RCX.i1565, align 8
  %1424 = icmp eq i32 %1421, -1
  %1425 = icmp eq i32 %1422, 0
  %1426 = or i1 %1424, %1425
  %1427 = zext i1 %1426 to i8
  store i8 %1427, i8* %51, align 1
  %1428 = and i32 %1422, 255
  %1429 = tail call i32 @llvm.ctpop.i32(i32 %1428)
  %1430 = trunc i32 %1429 to i8
  %1431 = and i8 %1430, 1
  %1432 = xor i8 %1431, 1
  store i8 %1432, i8* %52, align 1
  %1433 = xor i32 %1421, %1422
  %1434 = lshr i32 %1433, 4
  %1435 = trunc i32 %1434 to i8
  %1436 = and i8 %1435, 1
  store i8 %1436, i8* %53, align 1
  %1437 = icmp eq i32 %1422, 0
  %1438 = zext i1 %1437 to i8
  store i8 %1438, i8* %54, align 1
  %1439 = lshr i32 %1422, 31
  %1440 = trunc i32 %1439 to i8
  store i8 %1440, i8* %55, align 1
  %1441 = lshr i32 %1421, 31
  %1442 = xor i32 %1439, %1441
  %1443 = add nuw nsw i32 %1442, %1439
  %1444 = icmp eq i32 %1443, 2
  %1445 = zext i1 %1444 to i8
  store i8 %1445, i8* %56, align 1
  %1446 = sext i32 %1422 to i64
  store i64 %1446, i64* %RSI.i1613, align 8
  %1447 = shl nsw i64 %1446, 3
  %1448 = add i64 %1447, %1417
  %1449 = add i64 %1414, 18
  store i64 %1449, i64* %PC.i, align 8
  %1450 = inttoptr i64 %1448 to i64*
  %1451 = load i64, i64* %1450, align 8
  %1452 = load i64, i64* %RAX.i1594, align 8
  %1453 = xor i64 %1452, %1451
  store i64 %1453, i64* %RDX.i1610, align 8
  store i8 0, i8* %51, align 1
  %1454 = trunc i64 %1453 to i32
  %1455 = and i32 %1454, 255
  %1456 = tail call i32 @llvm.ctpop.i32(i32 %1455)
  %1457 = trunc i32 %1456 to i8
  %1458 = and i8 %1457, 1
  %1459 = xor i8 %1458, 1
  store i8 %1459, i8* %52, align 1
  %1460 = icmp eq i64 %1453, 0
  %1461 = zext i1 %1460 to i8
  store i8 %1461, i8* %54, align 1
  %1462 = lshr i64 %1453, 63
  %1463 = trunc i64 %1462 to i8
  store i8 %1463, i8* %55, align 1
  store i8 0, i8* %56, align 1
  store i8 0, i8* %53, align 1
  store i64 %1453, i64* %386, align 1
  store i64 0, i64* %384, align 1
  %1464 = add i64 %1412, -88
  %1465 = add i64 %1414, 36
  store i64 %1465, i64* %PC.i, align 8
  %1466 = inttoptr i64 %1464 to i64*
  store i64 %1453, i64* %1466, align 8
  %1467 = load i64, i64* %RBP.i, align 8
  %1468 = add i64 %1467, -80
  %1469 = load i64, i64* %PC.i, align 8
  %1470 = add i64 %1469, 5
  store i64 %1470, i64* %PC.i, align 8
  %1471 = inttoptr i64 %1468 to i64*
  %1472 = load i64, i64* %1471, align 8
  %1473 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %383, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1472, i64* %1473, align 1
  store double 0.000000e+00, double* %385, align 1
  %1474 = add i64 %1467, -24
  %1475 = add i64 %1469, 9
  store i64 %1475, i64* %PC.i, align 8
  %1476 = inttoptr i64 %1474 to i64*
  %1477 = load i64, i64* %1476, align 8
  store i64 %1477, i64* %RDX.i1610, align 8
  %1478 = add i64 %1467, -32
  %1479 = add i64 %1469, 13
  store i64 %1479, i64* %PC.i, align 8
  %1480 = inttoptr i64 %1478 to i32*
  %1481 = load i32, i32* %1480, align 4
  %1482 = sext i32 %1481 to i64
  store i64 %1482, i64* %RSI.i1613, align 8
  %1483 = shl nsw i64 %1482, 3
  %1484 = add i64 %1483, %1477
  %1485 = add i64 %1469, 18
  store i64 %1485, i64* %PC.i, align 8
  %1486 = inttoptr i64 %1484 to i64*
  store i64 %1472, i64* %1486, align 8
  %1487 = load i64, i64* %RBP.i, align 8
  %1488 = add i64 %1487, -88
  %1489 = load i64, i64* %PC.i, align 8
  %1490 = add i64 %1489, 5
  store i64 %1490, i64* %PC.i, align 8
  %1491 = inttoptr i64 %1488 to i64*
  %1492 = load i64, i64* %1491, align 8
  %1493 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %383, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1492, i64* %1493, align 1
  store double 0.000000e+00, double* %385, align 1
  %1494 = add i64 %1487, -24
  %1495 = add i64 %1489, 9
  store i64 %1495, i64* %PC.i, align 8
  %1496 = inttoptr i64 %1494 to i64*
  %1497 = load i64, i64* %1496, align 8
  store i64 %1497, i64* %RDX.i1610, align 8
  %1498 = add i64 %1487, -32
  %1499 = add i64 %1489, 12
  store i64 %1499, i64* %PC.i, align 8
  %1500 = inttoptr i64 %1498 to i32*
  %1501 = load i32, i32* %1500, align 4
  %1502 = add i32 %1501, 1
  %1503 = zext i32 %1502 to i64
  store i64 %1503, i64* %RCX.i1565, align 8
  %1504 = icmp eq i32 %1501, -1
  %1505 = icmp eq i32 %1502, 0
  %1506 = or i1 %1504, %1505
  %1507 = zext i1 %1506 to i8
  store i8 %1507, i8* %51, align 1
  %1508 = and i32 %1502, 255
  %1509 = tail call i32 @llvm.ctpop.i32(i32 %1508)
  %1510 = trunc i32 %1509 to i8
  %1511 = and i8 %1510, 1
  %1512 = xor i8 %1511, 1
  store i8 %1512, i8* %52, align 1
  %1513 = xor i32 %1501, %1502
  %1514 = lshr i32 %1513, 4
  %1515 = trunc i32 %1514 to i8
  %1516 = and i8 %1515, 1
  store i8 %1516, i8* %53, align 1
  %1517 = icmp eq i32 %1502, 0
  %1518 = zext i1 %1517 to i8
  store i8 %1518, i8* %54, align 1
  %1519 = lshr i32 %1502, 31
  %1520 = trunc i32 %1519 to i8
  store i8 %1520, i8* %55, align 1
  %1521 = lshr i32 %1501, 31
  %1522 = xor i32 %1519, %1521
  %1523 = add nuw nsw i32 %1522, %1519
  %1524 = icmp eq i32 %1523, 2
  %1525 = zext i1 %1524 to i8
  store i8 %1525, i8* %56, align 1
  %1526 = sext i32 %1502 to i64
  store i64 %1526, i64* %RSI.i1613, align 8
  %1527 = shl nsw i64 %1526, 3
  %1528 = add i64 %1527, %1497
  %1529 = add i64 %1489, 23
  store i64 %1529, i64* %PC.i, align 8
  %1530 = inttoptr i64 %1528 to i64*
  store i64 %1492, i64* %1530, align 8
  %1531 = load i64, i64* %RBP.i, align 8
  %1532 = add i64 %1531, -64
  %1533 = load i64, i64* %PC.i, align 8
  %1534 = add i64 %1533, 5
  store i64 %1534, i64* %PC.i, align 8
  %1535 = inttoptr i64 %1532 to i64*
  %1536 = load i64, i64* %1535, align 8
  %1537 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %383, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1536, i64* %1537, align 1
  store double 0.000000e+00, double* %385, align 1
  %1538 = add i64 %1531, -24
  %1539 = add i64 %1533, 9
  store i64 %1539, i64* %PC.i, align 8
  %1540 = inttoptr i64 %1538 to i64*
  %1541 = load i64, i64* %1540, align 8
  store i64 %1541, i64* %RDX.i1610, align 8
  %1542 = add i64 %1531, -40
  %1543 = add i64 %1533, 13
  store i64 %1543, i64* %PC.i, align 8
  %1544 = inttoptr i64 %1542 to i32*
  %1545 = load i32, i32* %1544, align 4
  %1546 = sext i32 %1545 to i64
  store i64 %1546, i64* %RSI.i1613, align 8
  %1547 = shl nsw i64 %1546, 3
  %1548 = add i64 %1547, %1541
  %1549 = add i64 %1533, 18
  store i64 %1549, i64* %PC.i, align 8
  %1550 = inttoptr i64 %1548 to i64*
  store i64 %1536, i64* %1550, align 8
  %1551 = load i64, i64* %RBP.i, align 8
  %1552 = add i64 %1551, -72
  %1553 = load i64, i64* %PC.i, align 8
  %1554 = add i64 %1553, 5
  store i64 %1554, i64* %PC.i, align 8
  %1555 = inttoptr i64 %1552 to i64*
  %1556 = load i64, i64* %1555, align 8
  %1557 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %383, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1556, i64* %1557, align 1
  store double 0.000000e+00, double* %385, align 1
  %1558 = add i64 %1551, -24
  %1559 = add i64 %1553, 9
  store i64 %1559, i64* %PC.i, align 8
  %1560 = inttoptr i64 %1558 to i64*
  %1561 = load i64, i64* %1560, align 8
  store i64 %1561, i64* %RDX.i1610, align 8
  %1562 = add i64 %1551, -40
  %1563 = add i64 %1553, 12
  store i64 %1563, i64* %PC.i, align 8
  %1564 = inttoptr i64 %1562 to i32*
  %1565 = load i32, i32* %1564, align 4
  %1566 = add i32 %1565, 1
  %1567 = zext i32 %1566 to i64
  store i64 %1567, i64* %RCX.i1565, align 8
  %1568 = icmp eq i32 %1565, -1
  %1569 = icmp eq i32 %1566, 0
  %1570 = or i1 %1568, %1569
  %1571 = zext i1 %1570 to i8
  store i8 %1571, i8* %51, align 1
  %1572 = and i32 %1566, 255
  %1573 = tail call i32 @llvm.ctpop.i32(i32 %1572)
  %1574 = trunc i32 %1573 to i8
  %1575 = and i8 %1574, 1
  %1576 = xor i8 %1575, 1
  store i8 %1576, i8* %52, align 1
  %1577 = xor i32 %1565, %1566
  %1578 = lshr i32 %1577, 4
  %1579 = trunc i32 %1578 to i8
  %1580 = and i8 %1579, 1
  store i8 %1580, i8* %53, align 1
  %1581 = icmp eq i32 %1566, 0
  %1582 = zext i1 %1581 to i8
  store i8 %1582, i8* %54, align 1
  %1583 = lshr i32 %1566, 31
  %1584 = trunc i32 %1583 to i8
  store i8 %1584, i8* %55, align 1
  %1585 = lshr i32 %1565, 31
  %1586 = xor i32 %1583, %1585
  %1587 = add nuw nsw i32 %1586, %1583
  %1588 = icmp eq i32 %1587, 2
  %1589 = zext i1 %1588 to i8
  store i8 %1589, i8* %56, align 1
  %1590 = sext i32 %1566 to i64
  store i64 %1590, i64* %RSI.i1613, align 8
  %1591 = shl nsw i64 %1590, 3
  %1592 = add i64 %1591, %1561
  %1593 = add i64 %1553, 23
  store i64 %1593, i64* %PC.i, align 8
  %1594 = inttoptr i64 %1592 to i64*
  store i64 %1556, i64* %1594, align 8
  %1595 = load i64, i64* %RBP.i, align 8
  %1596 = add i64 %1595, -52
  %1597 = load i64, i64* %PC.i, align 8
  %1598 = add i64 %1597, 3
  store i64 %1598, i64* %PC.i, align 8
  %1599 = inttoptr i64 %1596 to i32*
  %1600 = load i32, i32* %1599, align 4
  %1601 = zext i32 %1600 to i64
  store i64 %1601, i64* %RCX.i1565, align 8
  %1602 = add i64 %1595, -32
  %1603 = add i64 %1597, 6
  store i64 %1603, i64* %PC.i, align 8
  %1604 = inttoptr i64 %1602 to i32*
  %1605 = load i32, i32* %1604, align 4
  %1606 = add i32 %1605, %1600
  %1607 = zext i32 %1606 to i64
  store i64 %1607, i64* %RCX.i1565, align 8
  %1608 = icmp ult i32 %1606, %1600
  %1609 = icmp ult i32 %1606, %1605
  %1610 = or i1 %1608, %1609
  %1611 = zext i1 %1610 to i8
  store i8 %1611, i8* %51, align 1
  %1612 = and i32 %1606, 255
  %1613 = tail call i32 @llvm.ctpop.i32(i32 %1612)
  %1614 = trunc i32 %1613 to i8
  %1615 = and i8 %1614, 1
  %1616 = xor i8 %1615, 1
  store i8 %1616, i8* %52, align 1
  %1617 = xor i32 %1605, %1600
  %1618 = xor i32 %1617, %1606
  %1619 = lshr i32 %1618, 4
  %1620 = trunc i32 %1619 to i8
  %1621 = and i8 %1620, 1
  store i8 %1621, i8* %53, align 1
  %1622 = icmp eq i32 %1606, 0
  %1623 = zext i1 %1622 to i8
  store i8 %1623, i8* %54, align 1
  %1624 = lshr i32 %1606, 31
  %1625 = trunc i32 %1624 to i8
  store i8 %1625, i8* %55, align 1
  %1626 = lshr i32 %1600, 31
  %1627 = lshr i32 %1605, 31
  %1628 = xor i32 %1624, %1626
  %1629 = xor i32 %1624, %1627
  %1630 = add nuw nsw i32 %1628, %1629
  %1631 = icmp eq i32 %1630, 2
  %1632 = zext i1 %1631 to i8
  store i8 %1632, i8* %56, align 1
  %1633 = add i64 %1597, 9
  store i64 %1633, i64* %PC.i, align 8
  store i32 %1606, i32* %1604, align 4
  %1634 = load i64, i64* %RBP.i, align 8
  %1635 = add i64 %1634, -52
  %1636 = load i64, i64* %PC.i, align 8
  %1637 = add i64 %1636, 3
  store i64 %1637, i64* %PC.i, align 8
  %1638 = inttoptr i64 %1635 to i32*
  %1639 = load i32, i32* %1638, align 4
  %1640 = shl i32 %1639, 1
  %1641 = icmp slt i32 %1639, 0
  %1642 = icmp slt i32 %1640, 0
  %1643 = xor i1 %1641, %1642
  %1644 = zext i32 %1640 to i64
  store i64 %1644, i64* %RCX.i1565, align 8
  %.lobit16 = lshr i32 %1639, 31
  %1645 = trunc i32 %.lobit16 to i8
  store i8 %1645, i8* %51, align 1
  %1646 = and i32 %1640, 254
  %1647 = tail call i32 @llvm.ctpop.i32(i32 %1646)
  %1648 = trunc i32 %1647 to i8
  %1649 = and i8 %1648, 1
  %1650 = xor i8 %1649, 1
  store i8 %1650, i8* %52, align 1
  store i8 0, i8* %53, align 1
  %1651 = icmp eq i32 %1640, 0
  %1652 = zext i1 %1651 to i8
  store i8 %1652, i8* %54, align 1
  %1653 = lshr i32 %1639, 30
  %1654 = and i32 %1653, 1
  %1655 = trunc i32 %1654 to i8
  store i8 %1655, i8* %55, align 1
  %1656 = zext i1 %1643 to i8
  store i8 %1656, i8* %56, align 1
  %1657 = add i64 %1634, -40
  %1658 = add i64 %1636, 8
  store i64 %1658, i64* %PC.i, align 8
  %1659 = inttoptr i64 %1657 to i32*
  %1660 = load i32, i32* %1659, align 4
  %1661 = add i32 %1660, %1640
  %1662 = zext i32 %1661 to i64
  store i64 %1662, i64* %RCX.i1565, align 8
  %1663 = icmp ult i32 %1661, %1640
  %1664 = icmp ult i32 %1661, %1660
  %1665 = or i1 %1663, %1664
  %1666 = zext i1 %1665 to i8
  store i8 %1666, i8* %51, align 1
  %1667 = and i32 %1661, 255
  %1668 = tail call i32 @llvm.ctpop.i32(i32 %1667)
  %1669 = trunc i32 %1668 to i8
  %1670 = and i8 %1669, 1
  %1671 = xor i8 %1670, 1
  store i8 %1671, i8* %52, align 1
  %1672 = xor i32 %1660, %1640
  %1673 = xor i32 %1672, %1661
  %1674 = lshr i32 %1673, 4
  %1675 = trunc i32 %1674 to i8
  %1676 = and i8 %1675, 1
  store i8 %1676, i8* %53, align 1
  %1677 = icmp eq i32 %1661, 0
  %1678 = zext i1 %1677 to i8
  store i8 %1678, i8* %54, align 1
  %1679 = lshr i32 %1661, 31
  %1680 = trunc i32 %1679 to i8
  store i8 %1680, i8* %55, align 1
  %1681 = lshr i32 %1660, 31
  %1682 = xor i32 %1679, %1654
  %1683 = xor i32 %1679, %1681
  %1684 = add nuw nsw i32 %1682, %1683
  %1685 = icmp eq i32 %1684, 2
  %1686 = zext i1 %1685 to i8
  store i8 %1686, i8* %56, align 1
  %1687 = add i64 %1636, 11
  store i64 %1687, i64* %PC.i, align 8
  store i32 %1661, i32* %1659, align 4
  %1688 = load i64, i64* %RBP.i, align 8
  %1689 = add i64 %1688, -24
  %1690 = load i64, i64* %PC.i, align 8
  %1691 = add i64 %1690, 4
  store i64 %1691, i64* %PC.i, align 8
  %1692 = inttoptr i64 %1689 to i64*
  %1693 = load i64, i64* %1692, align 8
  store i64 %1693, i64* %RDX.i1610, align 8
  %1694 = add i64 %1688, -32
  %1695 = add i64 %1690, 8
  store i64 %1695, i64* %PC.i, align 8
  %1696 = inttoptr i64 %1694 to i32*
  %1697 = load i32, i32* %1696, align 4
  %1698 = sext i32 %1697 to i64
  store i64 %1698, i64* %RSI.i1613, align 8
  %1699 = shl nsw i64 %1698, 3
  %1700 = add i64 %1699, %1693
  %1701 = add i64 %1690, 13
  store i64 %1701, i64* %PC.i, align 8
  %1702 = inttoptr i64 %1700 to i64*
  %1703 = load i64, i64* %1702, align 8
  %1704 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %383, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1703, i64* %1704, align 1
  store double 0.000000e+00, double* %385, align 1
  %1705 = add i64 %1688, -64
  %1706 = add i64 %1690, 18
  store i64 %1706, i64* %PC.i, align 8
  %1707 = inttoptr i64 %1705 to i64*
  store i64 %1703, i64* %1707, align 8
  %1708 = load i64, i64* %RBP.i, align 8
  %1709 = add i64 %1708, -24
  %1710 = load i64, i64* %PC.i, align 8
  %1711 = add i64 %1710, 4
  store i64 %1711, i64* %PC.i, align 8
  %1712 = inttoptr i64 %1709 to i64*
  %1713 = load i64, i64* %1712, align 8
  store i64 %1713, i64* %RDX.i1610, align 8
  %1714 = add i64 %1708, -32
  %1715 = add i64 %1710, 7
  store i64 %1715, i64* %PC.i, align 8
  %1716 = inttoptr i64 %1714 to i32*
  %1717 = load i32, i32* %1716, align 4
  %1718 = add i32 %1717, 1
  %1719 = zext i32 %1718 to i64
  store i64 %1719, i64* %RCX.i1565, align 8
  %1720 = icmp eq i32 %1717, -1
  %1721 = icmp eq i32 %1718, 0
  %1722 = or i1 %1720, %1721
  %1723 = zext i1 %1722 to i8
  store i8 %1723, i8* %51, align 1
  %1724 = and i32 %1718, 255
  %1725 = tail call i32 @llvm.ctpop.i32(i32 %1724)
  %1726 = trunc i32 %1725 to i8
  %1727 = and i8 %1726, 1
  %1728 = xor i8 %1727, 1
  store i8 %1728, i8* %52, align 1
  %1729 = xor i32 %1717, %1718
  %1730 = lshr i32 %1729, 4
  %1731 = trunc i32 %1730 to i8
  %1732 = and i8 %1731, 1
  store i8 %1732, i8* %53, align 1
  %1733 = icmp eq i32 %1718, 0
  %1734 = zext i1 %1733 to i8
  store i8 %1734, i8* %54, align 1
  %1735 = lshr i32 %1718, 31
  %1736 = trunc i32 %1735 to i8
  store i8 %1736, i8* %55, align 1
  %1737 = lshr i32 %1717, 31
  %1738 = xor i32 %1735, %1737
  %1739 = add nuw nsw i32 %1738, %1735
  %1740 = icmp eq i32 %1739, 2
  %1741 = zext i1 %1740 to i8
  store i8 %1741, i8* %56, align 1
  %1742 = sext i32 %1718 to i64
  store i64 %1742, i64* %RSI.i1613, align 8
  %1743 = shl nsw i64 %1742, 3
  %1744 = add i64 %1743, %1713
  %1745 = add i64 %1710, 18
  store i64 %1745, i64* %PC.i, align 8
  %1746 = inttoptr i64 %1744 to i64*
  %1747 = load i64, i64* %1746, align 8
  %1748 = load i64, i64* %RAX.i1594, align 8
  %1749 = xor i64 %1748, %1747
  store i64 %1749, i64* %RDX.i1610, align 8
  store i8 0, i8* %51, align 1
  %1750 = trunc i64 %1749 to i32
  %1751 = and i32 %1750, 255
  %1752 = tail call i32 @llvm.ctpop.i32(i32 %1751)
  %1753 = trunc i32 %1752 to i8
  %1754 = and i8 %1753, 1
  %1755 = xor i8 %1754, 1
  store i8 %1755, i8* %52, align 1
  %1756 = icmp eq i64 %1749, 0
  %1757 = zext i1 %1756 to i8
  store i8 %1757, i8* %54, align 1
  %1758 = lshr i64 %1749, 63
  %1759 = trunc i64 %1758 to i8
  store i8 %1759, i8* %55, align 1
  store i8 0, i8* %56, align 1
  store i8 0, i8* %53, align 1
  store i64 %1749, i64* %386, align 1
  store i64 0, i64* %384, align 1
  %1760 = add i64 %1708, -72
  %1761 = add i64 %1710, 36
  store i64 %1761, i64* %PC.i, align 8
  %1762 = inttoptr i64 %1760 to i64*
  store i64 %1749, i64* %1762, align 8
  %1763 = load i64, i64* %RBP.i, align 8
  %1764 = add i64 %1763, -24
  %1765 = load i64, i64* %PC.i, align 8
  %1766 = add i64 %1765, 4
  store i64 %1766, i64* %PC.i, align 8
  %1767 = inttoptr i64 %1764 to i64*
  %1768 = load i64, i64* %1767, align 8
  store i64 %1768, i64* %RDX.i1610, align 8
  %1769 = add i64 %1763, -40
  %1770 = add i64 %1765, 8
  store i64 %1770, i64* %PC.i, align 8
  %1771 = inttoptr i64 %1769 to i32*
  %1772 = load i32, i32* %1771, align 4
  %1773 = sext i32 %1772 to i64
  store i64 %1773, i64* %RSI.i1613, align 8
  %1774 = shl nsw i64 %1773, 3
  %1775 = add i64 %1774, %1768
  %1776 = add i64 %1765, 13
  store i64 %1776, i64* %PC.i, align 8
  %1777 = inttoptr i64 %1775 to i64*
  %1778 = load i64, i64* %1777, align 8
  %1779 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %383, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1778, i64* %1779, align 1
  store double 0.000000e+00, double* %385, align 1
  %1780 = add i64 %1763, -80
  %1781 = add i64 %1765, 18
  store i64 %1781, i64* %PC.i, align 8
  %1782 = inttoptr i64 %1780 to i64*
  store i64 %1778, i64* %1782, align 8
  %1783 = load i64, i64* %RBP.i, align 8
  %1784 = add i64 %1783, -24
  %1785 = load i64, i64* %PC.i, align 8
  %1786 = add i64 %1785, 4
  store i64 %1786, i64* %PC.i, align 8
  %1787 = inttoptr i64 %1784 to i64*
  %1788 = load i64, i64* %1787, align 8
  store i64 %1788, i64* %RDX.i1610, align 8
  %1789 = add i64 %1783, -40
  %1790 = add i64 %1785, 7
  store i64 %1790, i64* %PC.i, align 8
  %1791 = inttoptr i64 %1789 to i32*
  %1792 = load i32, i32* %1791, align 4
  %1793 = add i32 %1792, 1
  %1794 = zext i32 %1793 to i64
  store i64 %1794, i64* %RCX.i1565, align 8
  %1795 = icmp eq i32 %1792, -1
  %1796 = icmp eq i32 %1793, 0
  %1797 = or i1 %1795, %1796
  %1798 = zext i1 %1797 to i8
  store i8 %1798, i8* %51, align 1
  %1799 = and i32 %1793, 255
  %1800 = tail call i32 @llvm.ctpop.i32(i32 %1799)
  %1801 = trunc i32 %1800 to i8
  %1802 = and i8 %1801, 1
  %1803 = xor i8 %1802, 1
  store i8 %1803, i8* %52, align 1
  %1804 = xor i32 %1792, %1793
  %1805 = lshr i32 %1804, 4
  %1806 = trunc i32 %1805 to i8
  %1807 = and i8 %1806, 1
  store i8 %1807, i8* %53, align 1
  %1808 = icmp eq i32 %1793, 0
  %1809 = zext i1 %1808 to i8
  store i8 %1809, i8* %54, align 1
  %1810 = lshr i32 %1793, 31
  %1811 = trunc i32 %1810 to i8
  store i8 %1811, i8* %55, align 1
  %1812 = lshr i32 %1792, 31
  %1813 = xor i32 %1810, %1812
  %1814 = add nuw nsw i32 %1813, %1810
  %1815 = icmp eq i32 %1814, 2
  %1816 = zext i1 %1815 to i8
  store i8 %1816, i8* %56, align 1
  %1817 = sext i32 %1793 to i64
  store i64 %1817, i64* %RSI.i1613, align 8
  %1818 = shl nsw i64 %1817, 3
  %1819 = add i64 %1818, %1788
  %1820 = add i64 %1785, 18
  store i64 %1820, i64* %PC.i, align 8
  %1821 = inttoptr i64 %1819 to i64*
  %1822 = load i64, i64* %1821, align 8
  %1823 = load i64, i64* %RAX.i1594, align 8
  %1824 = xor i64 %1823, %1822
  store i64 %1824, i64* %RDX.i1610, align 8
  store i8 0, i8* %51, align 1
  %1825 = trunc i64 %1824 to i32
  %1826 = and i32 %1825, 255
  %1827 = tail call i32 @llvm.ctpop.i32(i32 %1826)
  %1828 = trunc i32 %1827 to i8
  %1829 = and i8 %1828, 1
  %1830 = xor i8 %1829, 1
  store i8 %1830, i8* %52, align 1
  %1831 = icmp eq i64 %1824, 0
  %1832 = zext i1 %1831 to i8
  store i8 %1832, i8* %54, align 1
  %1833 = lshr i64 %1824, 63
  %1834 = trunc i64 %1833 to i8
  store i8 %1834, i8* %55, align 1
  store i8 0, i8* %56, align 1
  store i8 0, i8* %53, align 1
  store i64 %1824, i64* %386, align 1
  store i64 0, i64* %384, align 1
  %1835 = add i64 %1783, -88
  %1836 = add i64 %1785, 36
  store i64 %1836, i64* %PC.i, align 8
  %1837 = inttoptr i64 %1835 to i64*
  store i64 %1824, i64* %1837, align 8
  %1838 = load i64, i64* %RBP.i, align 8
  %1839 = add i64 %1838, -80
  %1840 = load i64, i64* %PC.i, align 8
  %1841 = add i64 %1840, 5
  store i64 %1841, i64* %PC.i, align 8
  %1842 = inttoptr i64 %1839 to i64*
  %1843 = load i64, i64* %1842, align 8
  %1844 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %383, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1843, i64* %1844, align 1
  store double 0.000000e+00, double* %385, align 1
  %1845 = add i64 %1838, -24
  %1846 = add i64 %1840, 9
  store i64 %1846, i64* %PC.i, align 8
  %1847 = inttoptr i64 %1845 to i64*
  %1848 = load i64, i64* %1847, align 8
  store i64 %1848, i64* %RAX.i1594, align 8
  %1849 = add i64 %1838, -32
  %1850 = add i64 %1840, 13
  store i64 %1850, i64* %PC.i, align 8
  %1851 = inttoptr i64 %1849 to i32*
  %1852 = load i32, i32* %1851, align 4
  %1853 = sext i32 %1852 to i64
  store i64 %1853, i64* %RDX.i1610, align 8
  %1854 = shl nsw i64 %1853, 3
  %1855 = add i64 %1854, %1848
  %1856 = add i64 %1840, 18
  store i64 %1856, i64* %PC.i, align 8
  %1857 = inttoptr i64 %1855 to i64*
  store i64 %1843, i64* %1857, align 8
  %1858 = load i64, i64* %RBP.i, align 8
  %1859 = add i64 %1858, -88
  %1860 = load i64, i64* %PC.i, align 8
  %1861 = add i64 %1860, 5
  store i64 %1861, i64* %PC.i, align 8
  %1862 = inttoptr i64 %1859 to i64*
  %1863 = load i64, i64* %1862, align 8
  %1864 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %383, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1863, i64* %1864, align 1
  store double 0.000000e+00, double* %385, align 1
  %1865 = add i64 %1858, -24
  %1866 = add i64 %1860, 9
  store i64 %1866, i64* %PC.i, align 8
  %1867 = inttoptr i64 %1865 to i64*
  %1868 = load i64, i64* %1867, align 8
  store i64 %1868, i64* %RAX.i1594, align 8
  %1869 = add i64 %1858, -32
  %1870 = add i64 %1860, 12
  store i64 %1870, i64* %PC.i, align 8
  %1871 = inttoptr i64 %1869 to i32*
  %1872 = load i32, i32* %1871, align 4
  %1873 = add i32 %1872, 1
  %1874 = zext i32 %1873 to i64
  store i64 %1874, i64* %RCX.i1565, align 8
  %1875 = icmp eq i32 %1872, -1
  %1876 = icmp eq i32 %1873, 0
  %1877 = or i1 %1875, %1876
  %1878 = zext i1 %1877 to i8
  store i8 %1878, i8* %51, align 1
  %1879 = and i32 %1873, 255
  %1880 = tail call i32 @llvm.ctpop.i32(i32 %1879)
  %1881 = trunc i32 %1880 to i8
  %1882 = and i8 %1881, 1
  %1883 = xor i8 %1882, 1
  store i8 %1883, i8* %52, align 1
  %1884 = xor i32 %1872, %1873
  %1885 = lshr i32 %1884, 4
  %1886 = trunc i32 %1885 to i8
  %1887 = and i8 %1886, 1
  store i8 %1887, i8* %53, align 1
  %1888 = icmp eq i32 %1873, 0
  %1889 = zext i1 %1888 to i8
  store i8 %1889, i8* %54, align 1
  %1890 = lshr i32 %1873, 31
  %1891 = trunc i32 %1890 to i8
  store i8 %1891, i8* %55, align 1
  %1892 = lshr i32 %1872, 31
  %1893 = xor i32 %1890, %1892
  %1894 = add nuw nsw i32 %1893, %1890
  %1895 = icmp eq i32 %1894, 2
  %1896 = zext i1 %1895 to i8
  store i8 %1896, i8* %56, align 1
  %1897 = sext i32 %1873 to i64
  store i64 %1897, i64* %RDX.i1610, align 8
  %1898 = shl nsw i64 %1897, 3
  %1899 = add i64 %1898, %1868
  %1900 = add i64 %1860, 23
  store i64 %1900, i64* %PC.i, align 8
  %1901 = inttoptr i64 %1899 to i64*
  store i64 %1863, i64* %1901, align 8
  %1902 = load i64, i64* %RBP.i, align 8
  %1903 = add i64 %1902, -64
  %1904 = load i64, i64* %PC.i, align 8
  %1905 = add i64 %1904, 5
  store i64 %1905, i64* %PC.i, align 8
  %1906 = inttoptr i64 %1903 to i64*
  %1907 = load i64, i64* %1906, align 8
  %1908 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %383, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1907, i64* %1908, align 1
  store double 0.000000e+00, double* %385, align 1
  %1909 = add i64 %1902, -24
  %1910 = add i64 %1904, 9
  store i64 %1910, i64* %PC.i, align 8
  %1911 = inttoptr i64 %1909 to i64*
  %1912 = load i64, i64* %1911, align 8
  store i64 %1912, i64* %RAX.i1594, align 8
  %1913 = add i64 %1902, -40
  %1914 = add i64 %1904, 13
  store i64 %1914, i64* %PC.i, align 8
  %1915 = inttoptr i64 %1913 to i32*
  %1916 = load i32, i32* %1915, align 4
  %1917 = sext i32 %1916 to i64
  store i64 %1917, i64* %RDX.i1610, align 8
  %1918 = shl nsw i64 %1917, 3
  %1919 = add i64 %1918, %1912
  %1920 = add i64 %1904, 18
  store i64 %1920, i64* %PC.i, align 8
  %1921 = inttoptr i64 %1919 to i64*
  store i64 %1907, i64* %1921, align 8
  %1922 = load i64, i64* %RBP.i, align 8
  %1923 = add i64 %1922, -72
  %1924 = load i64, i64* %PC.i, align 8
  %1925 = add i64 %1924, 5
  store i64 %1925, i64* %PC.i, align 8
  %1926 = inttoptr i64 %1923 to i64*
  %1927 = load i64, i64* %1926, align 8
  %1928 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %383, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1927, i64* %1928, align 1
  store double 0.000000e+00, double* %385, align 1
  %1929 = add i64 %1922, -24
  %1930 = add i64 %1924, 9
  store i64 %1930, i64* %PC.i, align 8
  %1931 = inttoptr i64 %1929 to i64*
  %1932 = load i64, i64* %1931, align 8
  store i64 %1932, i64* %RAX.i1594, align 8
  %1933 = add i64 %1922, -40
  %1934 = add i64 %1924, 12
  store i64 %1934, i64* %PC.i, align 8
  %1935 = inttoptr i64 %1933 to i32*
  %1936 = load i32, i32* %1935, align 4
  %1937 = add i32 %1936, 1
  %1938 = zext i32 %1937 to i64
  store i64 %1938, i64* %RCX.i1565, align 8
  %1939 = icmp eq i32 %1936, -1
  %1940 = icmp eq i32 %1937, 0
  %1941 = or i1 %1939, %1940
  %1942 = zext i1 %1941 to i8
  store i8 %1942, i8* %51, align 1
  %1943 = and i32 %1937, 255
  %1944 = tail call i32 @llvm.ctpop.i32(i32 %1943)
  %1945 = trunc i32 %1944 to i8
  %1946 = and i8 %1945, 1
  %1947 = xor i8 %1946, 1
  store i8 %1947, i8* %52, align 1
  %1948 = xor i32 %1936, %1937
  %1949 = lshr i32 %1948, 4
  %1950 = trunc i32 %1949 to i8
  %1951 = and i8 %1950, 1
  store i8 %1951, i8* %53, align 1
  %1952 = icmp eq i32 %1937, 0
  %1953 = zext i1 %1952 to i8
  store i8 %1953, i8* %54, align 1
  %1954 = lshr i32 %1937, 31
  %1955 = trunc i32 %1954 to i8
  store i8 %1955, i8* %55, align 1
  %1956 = lshr i32 %1936, 31
  %1957 = xor i32 %1954, %1956
  %1958 = add nuw nsw i32 %1957, %1954
  %1959 = icmp eq i32 %1958, 2
  %1960 = zext i1 %1959 to i8
  store i8 %1960, i8* %56, align 1
  %1961 = sext i32 %1937 to i64
  store i64 %1961, i64* %RDX.i1610, align 8
  %1962 = shl nsw i64 %1961, 3
  %1963 = add i64 %1962, %1932
  %1964 = add i64 %1924, 23
  store i64 %1964, i64* %PC.i, align 8
  %1965 = inttoptr i64 %1963 to i64*
  store i64 %1927, i64* %1965, align 8
  %1966 = load i64, i64* %RBP.i, align 8
  %1967 = add i64 %1966, -28
  %1968 = load i64, i64* %PC.i, align 8
  %1969 = add i64 %1968, 3
  store i64 %1969, i64* %PC.i, align 8
  %1970 = inttoptr i64 %1967 to i32*
  %1971 = load i32, i32* %1970, align 4
  %1972 = add i32 %1971, 1
  %1973 = zext i32 %1972 to i64
  store i64 %1973, i64* %RAX.i1594, align 8
  %1974 = icmp eq i32 %1971, -1
  %1975 = icmp eq i32 %1972, 0
  %1976 = or i1 %1974, %1975
  %1977 = zext i1 %1976 to i8
  store i8 %1977, i8* %51, align 1
  %1978 = and i32 %1972, 255
  %1979 = tail call i32 @llvm.ctpop.i32(i32 %1978)
  %1980 = trunc i32 %1979 to i8
  %1981 = and i8 %1980, 1
  %1982 = xor i8 %1981, 1
  store i8 %1982, i8* %52, align 1
  %1983 = xor i32 %1971, %1972
  %1984 = lshr i32 %1983, 4
  %1985 = trunc i32 %1984 to i8
  %1986 = and i8 %1985, 1
  store i8 %1986, i8* %53, align 1
  %1987 = icmp eq i32 %1972, 0
  %1988 = zext i1 %1987 to i8
  store i8 %1988, i8* %54, align 1
  %1989 = lshr i32 %1972, 31
  %1990 = trunc i32 %1989 to i8
  store i8 %1990, i8* %55, align 1
  %1991 = lshr i32 %1971, 31
  %1992 = xor i32 %1989, %1991
  %1993 = add nuw nsw i32 %1992, %1989
  %1994 = icmp eq i32 %1993, 2
  %1995 = zext i1 %1994 to i8
  store i8 %1995, i8* %56, align 1
  %1996 = add i64 %1968, 9
  store i64 %1996, i64* %PC.i, align 8
  store i32 %1972, i32* %1970, align 4
  %1997 = load i64, i64* %PC.i, align 8
  %1998 = add i64 %1997, -893
  store i64 %1998, i64* %3, align 8
  br label %block_.L_401c9d

block_.L_40201f:                                  ; preds = %block_.L_401c9d
  %1999 = load i32, i32* %437, align 4
  %2000 = shl i32 %1999, 1
  %2001 = icmp slt i32 %1999, 0
  %2002 = icmp slt i32 %2000, 0
  %2003 = xor i1 %2001, %2002
  %2004 = zext i32 %2000 to i64
  store i64 %2004, i64* %RCX.i1565, align 8
  %.lobit17 = lshr i32 %1999, 31
  %2005 = trunc i32 %.lobit17 to i8
  store i8 %2005, i8* %51, align 1
  %2006 = and i32 %2000, 254
  %2007 = tail call i32 @llvm.ctpop.i32(i32 %2006)
  %2008 = trunc i32 %2007 to i8
  %2009 = and i8 %2008, 1
  %2010 = xor i8 %2009, 1
  store i8 %2010, i8* %52, align 1
  store i8 0, i8* %53, align 1
  %2011 = icmp eq i32 %2000, 0
  %2012 = zext i1 %2011 to i8
  store i8 %2012, i8* %54, align 1
  %2013 = lshr i32 %1999, 30
  %2014 = and i32 %2013, 1
  %2015 = trunc i32 %2014 to i8
  store i8 %2015, i8* %55, align 1
  %2016 = zext i1 %2003 to i8
  store i8 %2016, i8* %56, align 1
  %2017 = add i64 %429, -16
  %2018 = add i64 %465, 19
  store i64 %2018, i64* %PC.i, align 8
  %2019 = inttoptr i64 %2017 to i64*
  %2020 = load i64, i64* %2019, align 8
  store i64 %2020, i64* %RDX.i1610, align 8
  %2021 = add i64 %465, 23
  store i64 %2021, i64* %PC.i, align 8
  %2022 = load i32, i32* %437, align 4
  %2023 = sext i32 %2022 to i64
  store i64 %2023, i64* %RSI.i1613, align 8
  %2024 = shl nsw i64 %2023, 2
  %2025 = add i64 %2024, %2020
  %2026 = add i64 %465, 26
  store i64 %2026, i64* %PC.i, align 8
  %2027 = inttoptr i64 %2025 to i32*
  %2028 = load i32, i32* %2027, align 4
  %2029 = add i32 %2028, %2000
  %2030 = zext i32 %2029 to i64
  store i64 %2030, i64* %RCX.i1565, align 8
  %2031 = icmp ult i32 %2029, %2000
  %2032 = icmp ult i32 %2029, %2028
  %2033 = or i1 %2031, %2032
  %2034 = zext i1 %2033 to i8
  store i8 %2034, i8* %51, align 1
  %2035 = and i32 %2029, 255
  %2036 = tail call i32 @llvm.ctpop.i32(i32 %2035)
  %2037 = trunc i32 %2036 to i8
  %2038 = and i8 %2037, 1
  %2039 = xor i8 %2038, 1
  store i8 %2039, i8* %52, align 1
  %2040 = xor i32 %2028, %2000
  %2041 = xor i32 %2040, %2029
  %2042 = lshr i32 %2041, 4
  %2043 = trunc i32 %2042 to i8
  %2044 = and i8 %2043, 1
  store i8 %2044, i8* %53, align 1
  %2045 = icmp eq i32 %2029, 0
  %2046 = zext i1 %2045 to i8
  store i8 %2046, i8* %54, align 1
  %2047 = lshr i32 %2029, 31
  %2048 = trunc i32 %2047 to i8
  store i8 %2048, i8* %55, align 1
  %2049 = lshr i32 %2028, 31
  %2050 = xor i32 %2047, %2014
  %2051 = xor i32 %2047, %2049
  %2052 = add nuw nsw i32 %2050, %2051
  %2053 = icmp eq i32 %2052, 2
  %2054 = zext i1 %2053 to i8
  store i8 %2054, i8* %56, align 1
  %2055 = add i64 %429, -40
  %2056 = add i64 %465, 29
  store i64 %2056, i64* %PC.i, align 8
  %2057 = inttoptr i64 %2055 to i32*
  store i32 %2029, i32* %2057, align 4
  %2058 = load i64, i64* %RBP.i, align 8
  %2059 = add i64 %2058, -24
  %2060 = load i64, i64* %PC.i, align 8
  %2061 = add i64 %2060, 4
  store i64 %2061, i64* %PC.i, align 8
  %2062 = inttoptr i64 %2059 to i64*
  %2063 = load i64, i64* %2062, align 8
  store i64 %2063, i64* %RDX.i1610, align 8
  %2064 = add i64 %2058, -40
  %2065 = add i64 %2060, 7
  store i64 %2065, i64* %PC.i, align 8
  %2066 = inttoptr i64 %2064 to i32*
  %2067 = load i32, i32* %2066, align 4
  %2068 = add i32 %2067, 1
  %2069 = zext i32 %2068 to i64
  store i64 %2069, i64* %RCX.i1565, align 8
  %2070 = icmp eq i32 %2067, -1
  %2071 = icmp eq i32 %2068, 0
  %2072 = or i1 %2070, %2071
  %2073 = zext i1 %2072 to i8
  store i8 %2073, i8* %51, align 1
  %2074 = and i32 %2068, 255
  %2075 = tail call i32 @llvm.ctpop.i32(i32 %2074)
  %2076 = trunc i32 %2075 to i8
  %2077 = and i8 %2076, 1
  %2078 = xor i8 %2077, 1
  store i8 %2078, i8* %52, align 1
  %2079 = xor i32 %2067, %2068
  %2080 = lshr i32 %2079, 4
  %2081 = trunc i32 %2080 to i8
  %2082 = and i8 %2081, 1
  store i8 %2082, i8* %53, align 1
  %2083 = icmp eq i32 %2068, 0
  %2084 = zext i1 %2083 to i8
  store i8 %2084, i8* %54, align 1
  %2085 = lshr i32 %2068, 31
  %2086 = trunc i32 %2085 to i8
  store i8 %2086, i8* %55, align 1
  %2087 = lshr i32 %2067, 31
  %2088 = xor i32 %2085, %2087
  %2089 = add nuw nsw i32 %2088, %2085
  %2090 = icmp eq i32 %2089, 2
  %2091 = zext i1 %2090 to i8
  store i8 %2091, i8* %56, align 1
  %2092 = sext i32 %2068 to i64
  store i64 %2092, i64* %RSI.i1613, align 8
  %2093 = shl nsw i64 %2092, 3
  %2094 = add i64 %2093, %2063
  %2095 = add i64 %2060, 18
  store i64 %2095, i64* %PC.i, align 8
  %2096 = inttoptr i64 %2094 to i64*
  %2097 = load i64, i64* %2096, align 8
  %2098 = load i64, i64* %RAX.i1594, align 8
  %2099 = xor i64 %2098, %2097
  store i64 %2099, i64* %RDX.i1610, align 8
  store i8 0, i8* %51, align 1
  %2100 = trunc i64 %2099 to i32
  %2101 = and i32 %2100, 255
  %2102 = tail call i32 @llvm.ctpop.i32(i32 %2101)
  %2103 = trunc i32 %2102 to i8
  %2104 = and i8 %2103, 1
  %2105 = xor i8 %2104, 1
  store i8 %2105, i8* %52, align 1
  %2106 = icmp eq i64 %2099, 0
  %2107 = zext i1 %2106 to i8
  store i8 %2107, i8* %54, align 1
  %2108 = lshr i64 %2099, 63
  %2109 = trunc i64 %2108 to i8
  store i8 %2109, i8* %55, align 1
  store i8 0, i8* %56, align 1
  store i8 0, i8* %53, align 1
  store i64 %2099, i64* %386, align 1
  store i64 0, i64* %384, align 1
  %2110 = add i64 %2060, 35
  store i64 %2110, i64* %PC.i, align 8
  %2111 = load i64, i64* %2062, align 8
  store i64 %2111, i64* %RDX.i1610, align 8
  %2112 = add i64 %2060, 38
  store i64 %2112, i64* %PC.i, align 8
  %2113 = load i32, i32* %2066, align 4
  %2114 = add i32 %2113, 1
  %2115 = zext i32 %2114 to i64
  store i64 %2115, i64* %RCX.i1565, align 8
  %2116 = icmp eq i32 %2113, -1
  %2117 = icmp eq i32 %2114, 0
  %2118 = or i1 %2116, %2117
  %2119 = zext i1 %2118 to i8
  store i8 %2119, i8* %51, align 1
  %2120 = and i32 %2114, 255
  %2121 = tail call i32 @llvm.ctpop.i32(i32 %2120)
  %2122 = trunc i32 %2121 to i8
  %2123 = and i8 %2122, 1
  %2124 = xor i8 %2123, 1
  store i8 %2124, i8* %52, align 1
  %2125 = xor i32 %2113, %2114
  %2126 = lshr i32 %2125, 4
  %2127 = trunc i32 %2126 to i8
  %2128 = and i8 %2127, 1
  store i8 %2128, i8* %53, align 1
  %2129 = icmp eq i32 %2114, 0
  %2130 = zext i1 %2129 to i8
  store i8 %2130, i8* %54, align 1
  %2131 = lshr i32 %2114, 31
  %2132 = trunc i32 %2131 to i8
  store i8 %2132, i8* %55, align 1
  %2133 = lshr i32 %2113, 31
  %2134 = xor i32 %2131, %2133
  %2135 = add nuw nsw i32 %2134, %2131
  %2136 = icmp eq i32 %2135, 2
  %2137 = zext i1 %2136 to i8
  store i8 %2137, i8* %56, align 1
  %2138 = sext i32 %2114 to i64
  store i64 %2138, i64* %RSI.i1613, align 8
  %2139 = shl nsw i64 %2138, 3
  %2140 = add i64 %2139, %2111
  %2141 = add i64 %2060, 49
  store i64 %2141, i64* %PC.i, align 8
  %2142 = inttoptr i64 %2140 to i64*
  store i64 %2099, i64* %2142, align 8
  %2143 = load i64, i64* %RBP.i, align 8
  %2144 = add i64 %2143, -40
  %2145 = load i64, i64* %PC.i, align 8
  %2146 = add i64 %2145, 3
  store i64 %2146, i64* %PC.i, align 8
  %2147 = inttoptr i64 %2144 to i32*
  %2148 = load i32, i32* %2147, align 4
  %2149 = zext i32 %2148 to i64
  store i64 %2149, i64* %RCX.i1565, align 8
  %2150 = add i64 %2143, -52
  %2151 = add i64 %2145, 6
  store i64 %2151, i64* %PC.i, align 8
  %2152 = inttoptr i64 %2150 to i32*
  %2153 = load i32, i32* %2152, align 4
  %2154 = add i32 %2153, %2148
  %2155 = zext i32 %2154 to i64
  store i64 %2155, i64* %RCX.i1565, align 8
  %2156 = icmp ult i32 %2154, %2148
  %2157 = icmp ult i32 %2154, %2153
  %2158 = or i1 %2156, %2157
  %2159 = zext i1 %2158 to i8
  store i8 %2159, i8* %51, align 1
  %2160 = and i32 %2154, 255
  %2161 = tail call i32 @llvm.ctpop.i32(i32 %2160)
  %2162 = trunc i32 %2161 to i8
  %2163 = and i8 %2162, 1
  %2164 = xor i8 %2163, 1
  store i8 %2164, i8* %52, align 1
  %2165 = xor i32 %2153, %2148
  %2166 = xor i32 %2165, %2154
  %2167 = lshr i32 %2166, 4
  %2168 = trunc i32 %2167 to i8
  %2169 = and i8 %2168, 1
  store i8 %2169, i8* %53, align 1
  %2170 = icmp eq i32 %2154, 0
  %2171 = zext i1 %2170 to i8
  store i8 %2171, i8* %54, align 1
  %2172 = lshr i32 %2154, 31
  %2173 = trunc i32 %2172 to i8
  store i8 %2173, i8* %55, align 1
  %2174 = lshr i32 %2148, 31
  %2175 = lshr i32 %2153, 31
  %2176 = xor i32 %2172, %2174
  %2177 = xor i32 %2172, %2175
  %2178 = add nuw nsw i32 %2176, %2177
  %2179 = icmp eq i32 %2178, 2
  %2180 = zext i1 %2179 to i8
  store i8 %2180, i8* %56, align 1
  %2181 = add i64 %2143, -32
  %2182 = add i64 %2145, 9
  store i64 %2182, i64* %PC.i, align 8
  %2183 = inttoptr i64 %2181 to i32*
  store i32 %2154, i32* %2183, align 4
  %2184 = load i64, i64* %RBP.i, align 8
  %2185 = add i64 %2184, -32
  %2186 = load i64, i64* %PC.i, align 8
  %2187 = add i64 %2186, 3
  store i64 %2187, i64* %PC.i, align 8
  %2188 = inttoptr i64 %2185 to i32*
  %2189 = load i32, i32* %2188, align 4
  %2190 = zext i32 %2189 to i64
  store i64 %2190, i64* %RCX.i1565, align 8
  %2191 = add i64 %2184, -52
  %2192 = add i64 %2186, 6
  store i64 %2192, i64* %PC.i, align 8
  %2193 = inttoptr i64 %2191 to i32*
  %2194 = load i32, i32* %2193, align 4
  %2195 = add i32 %2194, %2189
  %2196 = zext i32 %2195 to i64
  store i64 %2196, i64* %RCX.i1565, align 8
  %2197 = icmp ult i32 %2195, %2189
  %2198 = icmp ult i32 %2195, %2194
  %2199 = or i1 %2197, %2198
  %2200 = zext i1 %2199 to i8
  store i8 %2200, i8* %51, align 1
  %2201 = and i32 %2195, 255
  %2202 = tail call i32 @llvm.ctpop.i32(i32 %2201)
  %2203 = trunc i32 %2202 to i8
  %2204 = and i8 %2203, 1
  %2205 = xor i8 %2204, 1
  store i8 %2205, i8* %52, align 1
  %2206 = xor i32 %2194, %2189
  %2207 = xor i32 %2206, %2195
  %2208 = lshr i32 %2207, 4
  %2209 = trunc i32 %2208 to i8
  %2210 = and i8 %2209, 1
  store i8 %2210, i8* %53, align 1
  %2211 = icmp eq i32 %2195, 0
  %2212 = zext i1 %2211 to i8
  store i8 %2212, i8* %54, align 1
  %2213 = lshr i32 %2195, 31
  %2214 = trunc i32 %2213 to i8
  store i8 %2214, i8* %55, align 1
  %2215 = lshr i32 %2189, 31
  %2216 = lshr i32 %2194, 31
  %2217 = xor i32 %2213, %2215
  %2218 = xor i32 %2213, %2216
  %2219 = add nuw nsw i32 %2217, %2218
  %2220 = icmp eq i32 %2219, 2
  %2221 = zext i1 %2220 to i8
  store i8 %2221, i8* %56, align 1
  %2222 = add i64 %2184, -40
  %2223 = add i64 %2186, 9
  store i64 %2223, i64* %PC.i, align 8
  %2224 = inttoptr i64 %2222 to i32*
  store i32 %2195, i32* %2224, align 4
  %2225 = load i64, i64* %RBP.i, align 8
  %2226 = add i64 %2225, -24
  %2227 = load i64, i64* %PC.i, align 8
  %2228 = add i64 %2227, 4
  store i64 %2228, i64* %PC.i, align 8
  %2229 = inttoptr i64 %2226 to i64*
  %2230 = load i64, i64* %2229, align 8
  store i64 %2230, i64* %RDX.i1610, align 8
  %2231 = add i64 %2225, -32
  %2232 = add i64 %2227, 8
  store i64 %2232, i64* %PC.i, align 8
  %2233 = inttoptr i64 %2231 to i32*
  %2234 = load i32, i32* %2233, align 4
  %2235 = sext i32 %2234 to i64
  store i64 %2235, i64* %RSI.i1613, align 8
  %2236 = shl nsw i64 %2235, 3
  %2237 = add i64 %2236, %2230
  %2238 = add i64 %2227, 13
  store i64 %2238, i64* %PC.i, align 8
  %2239 = inttoptr i64 %2237 to i64*
  %2240 = load i64, i64* %2239, align 8
  %2241 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %383, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %2240, i64* %2241, align 1
  store double 0.000000e+00, double* %385, align 1
  %2242 = add i64 %2225, -64
  %2243 = add i64 %2227, 18
  store i64 %2243, i64* %PC.i, align 8
  %2244 = inttoptr i64 %2242 to i64*
  store i64 %2240, i64* %2244, align 8
  %2245 = load i64, i64* %RBP.i, align 8
  %2246 = add i64 %2245, -24
  %2247 = load i64, i64* %PC.i, align 8
  %2248 = add i64 %2247, 4
  store i64 %2248, i64* %PC.i, align 8
  %2249 = inttoptr i64 %2246 to i64*
  %2250 = load i64, i64* %2249, align 8
  store i64 %2250, i64* %RDX.i1610, align 8
  %2251 = add i64 %2245, -32
  %2252 = add i64 %2247, 7
  store i64 %2252, i64* %PC.i, align 8
  %2253 = inttoptr i64 %2251 to i32*
  %2254 = load i32, i32* %2253, align 4
  %2255 = add i32 %2254, 1
  %2256 = zext i32 %2255 to i64
  store i64 %2256, i64* %RCX.i1565, align 8
  %2257 = icmp eq i32 %2254, -1
  %2258 = icmp eq i32 %2255, 0
  %2259 = or i1 %2257, %2258
  %2260 = zext i1 %2259 to i8
  store i8 %2260, i8* %51, align 1
  %2261 = and i32 %2255, 255
  %2262 = tail call i32 @llvm.ctpop.i32(i32 %2261)
  %2263 = trunc i32 %2262 to i8
  %2264 = and i8 %2263, 1
  %2265 = xor i8 %2264, 1
  store i8 %2265, i8* %52, align 1
  %2266 = xor i32 %2254, %2255
  %2267 = lshr i32 %2266, 4
  %2268 = trunc i32 %2267 to i8
  %2269 = and i8 %2268, 1
  store i8 %2269, i8* %53, align 1
  %2270 = icmp eq i32 %2255, 0
  %2271 = zext i1 %2270 to i8
  store i8 %2271, i8* %54, align 1
  %2272 = lshr i32 %2255, 31
  %2273 = trunc i32 %2272 to i8
  store i8 %2273, i8* %55, align 1
  %2274 = lshr i32 %2254, 31
  %2275 = xor i32 %2272, %2274
  %2276 = add nuw nsw i32 %2275, %2272
  %2277 = icmp eq i32 %2276, 2
  %2278 = zext i1 %2277 to i8
  store i8 %2278, i8* %56, align 1
  %2279 = sext i32 %2255 to i64
  store i64 %2279, i64* %RSI.i1613, align 8
  %2280 = shl nsw i64 %2279, 3
  %2281 = add i64 %2280, %2250
  %2282 = add i64 %2247, 18
  store i64 %2282, i64* %PC.i, align 8
  %2283 = inttoptr i64 %2281 to i64*
  %2284 = load i64, i64* %2283, align 8
  %2285 = load i64, i64* %RAX.i1594, align 8
  %2286 = xor i64 %2285, %2284
  store i64 %2286, i64* %RDX.i1610, align 8
  store i8 0, i8* %51, align 1
  %2287 = trunc i64 %2286 to i32
  %2288 = and i32 %2287, 255
  %2289 = tail call i32 @llvm.ctpop.i32(i32 %2288)
  %2290 = trunc i32 %2289 to i8
  %2291 = and i8 %2290, 1
  %2292 = xor i8 %2291, 1
  store i8 %2292, i8* %52, align 1
  %2293 = icmp eq i64 %2286, 0
  %2294 = zext i1 %2293 to i8
  store i8 %2294, i8* %54, align 1
  %2295 = lshr i64 %2286, 63
  %2296 = trunc i64 %2295 to i8
  store i8 %2296, i8* %55, align 1
  store i8 0, i8* %56, align 1
  store i8 0, i8* %53, align 1
  store i64 %2286, i64* %386, align 1
  store i64 0, i64* %384, align 1
  %2297 = add i64 %2245, -72
  %2298 = add i64 %2247, 36
  store i64 %2298, i64* %PC.i, align 8
  %2299 = inttoptr i64 %2297 to i64*
  store i64 %2286, i64* %2299, align 8
  %2300 = load i64, i64* %RBP.i, align 8
  %2301 = add i64 %2300, -24
  %2302 = load i64, i64* %PC.i, align 8
  %2303 = add i64 %2302, 4
  store i64 %2303, i64* %PC.i, align 8
  %2304 = inttoptr i64 %2301 to i64*
  %2305 = load i64, i64* %2304, align 8
  store i64 %2305, i64* %RDX.i1610, align 8
  %2306 = add i64 %2300, -40
  %2307 = add i64 %2302, 8
  store i64 %2307, i64* %PC.i, align 8
  %2308 = inttoptr i64 %2306 to i32*
  %2309 = load i32, i32* %2308, align 4
  %2310 = sext i32 %2309 to i64
  store i64 %2310, i64* %RSI.i1613, align 8
  %2311 = shl nsw i64 %2310, 3
  %2312 = add i64 %2311, %2305
  %2313 = add i64 %2302, 13
  store i64 %2313, i64* %PC.i, align 8
  %2314 = inttoptr i64 %2312 to i64*
  %2315 = load i64, i64* %2314, align 8
  %2316 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %383, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %2315, i64* %2316, align 1
  store double 0.000000e+00, double* %385, align 1
  %2317 = add i64 %2300, -80
  %2318 = add i64 %2302, 18
  store i64 %2318, i64* %PC.i, align 8
  %2319 = inttoptr i64 %2317 to i64*
  store i64 %2315, i64* %2319, align 8
  %2320 = load i64, i64* %RBP.i, align 8
  %2321 = add i64 %2320, -24
  %2322 = load i64, i64* %PC.i, align 8
  %2323 = add i64 %2322, 4
  store i64 %2323, i64* %PC.i, align 8
  %2324 = inttoptr i64 %2321 to i64*
  %2325 = load i64, i64* %2324, align 8
  store i64 %2325, i64* %RDX.i1610, align 8
  %2326 = add i64 %2320, -40
  %2327 = add i64 %2322, 7
  store i64 %2327, i64* %PC.i, align 8
  %2328 = inttoptr i64 %2326 to i32*
  %2329 = load i32, i32* %2328, align 4
  %2330 = add i32 %2329, 1
  %2331 = zext i32 %2330 to i64
  store i64 %2331, i64* %RCX.i1565, align 8
  %2332 = icmp eq i32 %2329, -1
  %2333 = icmp eq i32 %2330, 0
  %2334 = or i1 %2332, %2333
  %2335 = zext i1 %2334 to i8
  store i8 %2335, i8* %51, align 1
  %2336 = and i32 %2330, 255
  %2337 = tail call i32 @llvm.ctpop.i32(i32 %2336)
  %2338 = trunc i32 %2337 to i8
  %2339 = and i8 %2338, 1
  %2340 = xor i8 %2339, 1
  store i8 %2340, i8* %52, align 1
  %2341 = xor i32 %2329, %2330
  %2342 = lshr i32 %2341, 4
  %2343 = trunc i32 %2342 to i8
  %2344 = and i8 %2343, 1
  store i8 %2344, i8* %53, align 1
  %2345 = icmp eq i32 %2330, 0
  %2346 = zext i1 %2345 to i8
  store i8 %2346, i8* %54, align 1
  %2347 = lshr i32 %2330, 31
  %2348 = trunc i32 %2347 to i8
  store i8 %2348, i8* %55, align 1
  %2349 = lshr i32 %2329, 31
  %2350 = xor i32 %2347, %2349
  %2351 = add nuw nsw i32 %2350, %2347
  %2352 = icmp eq i32 %2351, 2
  %2353 = zext i1 %2352 to i8
  store i8 %2353, i8* %56, align 1
  %2354 = sext i32 %2330 to i64
  store i64 %2354, i64* %RSI.i1613, align 8
  %2355 = shl nsw i64 %2354, 3
  %2356 = add i64 %2355, %2325
  %2357 = add i64 %2322, 18
  store i64 %2357, i64* %PC.i, align 8
  %2358 = inttoptr i64 %2356 to i64*
  %2359 = load i64, i64* %2358, align 8
  %2360 = load i64, i64* %RAX.i1594, align 8
  %2361 = xor i64 %2360, %2359
  store i64 %2361, i64* %RDX.i1610, align 8
  store i8 0, i8* %51, align 1
  %2362 = trunc i64 %2361 to i32
  %2363 = and i32 %2362, 255
  %2364 = tail call i32 @llvm.ctpop.i32(i32 %2363)
  %2365 = trunc i32 %2364 to i8
  %2366 = and i8 %2365, 1
  %2367 = xor i8 %2366, 1
  store i8 %2367, i8* %52, align 1
  %2368 = icmp eq i64 %2361, 0
  %2369 = zext i1 %2368 to i8
  store i8 %2369, i8* %54, align 1
  %2370 = lshr i64 %2361, 63
  %2371 = trunc i64 %2370 to i8
  store i8 %2371, i8* %55, align 1
  store i8 0, i8* %56, align 1
  store i8 0, i8* %53, align 1
  store i64 %2361, i64* %386, align 1
  store i64 0, i64* %384, align 1
  %2372 = add i64 %2320, -88
  %2373 = add i64 %2322, 36
  store i64 %2373, i64* %PC.i, align 8
  %2374 = inttoptr i64 %2372 to i64*
  store i64 %2361, i64* %2374, align 8
  %2375 = load i64, i64* %RBP.i, align 8
  %2376 = add i64 %2375, -80
  %2377 = load i64, i64* %PC.i, align 8
  %2378 = add i64 %2377, 5
  store i64 %2378, i64* %PC.i, align 8
  %2379 = inttoptr i64 %2376 to i64*
  %2380 = load i64, i64* %2379, align 8
  %2381 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %383, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %2380, i64* %2381, align 1
  store double 0.000000e+00, double* %385, align 1
  %2382 = add i64 %2375, -24
  %2383 = add i64 %2377, 9
  store i64 %2383, i64* %PC.i, align 8
  %2384 = inttoptr i64 %2382 to i64*
  %2385 = load i64, i64* %2384, align 8
  store i64 %2385, i64* %RDX.i1610, align 8
  %2386 = add i64 %2375, -32
  %2387 = add i64 %2377, 13
  store i64 %2387, i64* %PC.i, align 8
  %2388 = inttoptr i64 %2386 to i32*
  %2389 = load i32, i32* %2388, align 4
  %2390 = sext i32 %2389 to i64
  store i64 %2390, i64* %RSI.i1613, align 8
  %2391 = shl nsw i64 %2390, 3
  %2392 = add i64 %2391, %2385
  %2393 = add i64 %2377, 18
  store i64 %2393, i64* %PC.i, align 8
  %2394 = inttoptr i64 %2392 to i64*
  store i64 %2380, i64* %2394, align 8
  %2395 = load i64, i64* %RBP.i, align 8
  %2396 = add i64 %2395, -88
  %2397 = load i64, i64* %PC.i, align 8
  %2398 = add i64 %2397, 5
  store i64 %2398, i64* %PC.i, align 8
  %2399 = inttoptr i64 %2396 to i64*
  %2400 = load i64, i64* %2399, align 8
  %2401 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %383, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %2400, i64* %2401, align 1
  store double 0.000000e+00, double* %385, align 1
  %2402 = add i64 %2395, -24
  %2403 = add i64 %2397, 9
  store i64 %2403, i64* %PC.i, align 8
  %2404 = inttoptr i64 %2402 to i64*
  %2405 = load i64, i64* %2404, align 8
  store i64 %2405, i64* %RDX.i1610, align 8
  %2406 = add i64 %2395, -32
  %2407 = add i64 %2397, 12
  store i64 %2407, i64* %PC.i, align 8
  %2408 = inttoptr i64 %2406 to i32*
  %2409 = load i32, i32* %2408, align 4
  %2410 = add i32 %2409, 1
  %2411 = zext i32 %2410 to i64
  store i64 %2411, i64* %RCX.i1565, align 8
  %2412 = icmp eq i32 %2409, -1
  %2413 = icmp eq i32 %2410, 0
  %2414 = or i1 %2412, %2413
  %2415 = zext i1 %2414 to i8
  store i8 %2415, i8* %51, align 1
  %2416 = and i32 %2410, 255
  %2417 = tail call i32 @llvm.ctpop.i32(i32 %2416)
  %2418 = trunc i32 %2417 to i8
  %2419 = and i8 %2418, 1
  %2420 = xor i8 %2419, 1
  store i8 %2420, i8* %52, align 1
  %2421 = xor i32 %2409, %2410
  %2422 = lshr i32 %2421, 4
  %2423 = trunc i32 %2422 to i8
  %2424 = and i8 %2423, 1
  store i8 %2424, i8* %53, align 1
  %2425 = icmp eq i32 %2410, 0
  %2426 = zext i1 %2425 to i8
  store i8 %2426, i8* %54, align 1
  %2427 = lshr i32 %2410, 31
  %2428 = trunc i32 %2427 to i8
  store i8 %2428, i8* %55, align 1
  %2429 = lshr i32 %2409, 31
  %2430 = xor i32 %2427, %2429
  %2431 = add nuw nsw i32 %2430, %2427
  %2432 = icmp eq i32 %2431, 2
  %2433 = zext i1 %2432 to i8
  store i8 %2433, i8* %56, align 1
  %2434 = sext i32 %2410 to i64
  store i64 %2434, i64* %RSI.i1613, align 8
  %2435 = shl nsw i64 %2434, 3
  %2436 = add i64 %2435, %2405
  %2437 = add i64 %2397, 23
  store i64 %2437, i64* %PC.i, align 8
  %2438 = inttoptr i64 %2436 to i64*
  store i64 %2400, i64* %2438, align 8
  %2439 = load i64, i64* %RBP.i, align 8
  %2440 = add i64 %2439, -64
  %2441 = load i64, i64* %PC.i, align 8
  %2442 = add i64 %2441, 5
  store i64 %2442, i64* %PC.i, align 8
  %2443 = inttoptr i64 %2440 to i64*
  %2444 = load i64, i64* %2443, align 8
  %2445 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %383, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %2444, i64* %2445, align 1
  store double 0.000000e+00, double* %385, align 1
  %2446 = add i64 %2439, -24
  %2447 = add i64 %2441, 9
  store i64 %2447, i64* %PC.i, align 8
  %2448 = inttoptr i64 %2446 to i64*
  %2449 = load i64, i64* %2448, align 8
  store i64 %2449, i64* %RDX.i1610, align 8
  %2450 = add i64 %2439, -40
  %2451 = add i64 %2441, 13
  store i64 %2451, i64* %PC.i, align 8
  %2452 = inttoptr i64 %2450 to i32*
  %2453 = load i32, i32* %2452, align 4
  %2454 = sext i32 %2453 to i64
  store i64 %2454, i64* %RSI.i1613, align 8
  %2455 = shl nsw i64 %2454, 3
  %2456 = add i64 %2455, %2449
  %2457 = add i64 %2441, 18
  store i64 %2457, i64* %PC.i, align 8
  %2458 = inttoptr i64 %2456 to i64*
  store i64 %2444, i64* %2458, align 8
  %2459 = load i64, i64* %RBP.i, align 8
  %2460 = add i64 %2459, -72
  %2461 = load i64, i64* %PC.i, align 8
  %2462 = add i64 %2461, 5
  store i64 %2462, i64* %PC.i, align 8
  %2463 = inttoptr i64 %2460 to i64*
  %2464 = load i64, i64* %2463, align 8
  %2465 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %383, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %2464, i64* %2465, align 1
  store double 0.000000e+00, double* %385, align 1
  %2466 = add i64 %2459, -24
  %2467 = add i64 %2461, 9
  store i64 %2467, i64* %PC.i, align 8
  %2468 = inttoptr i64 %2466 to i64*
  %2469 = load i64, i64* %2468, align 8
  store i64 %2469, i64* %RDX.i1610, align 8
  %2470 = add i64 %2459, -40
  %2471 = add i64 %2461, 12
  store i64 %2471, i64* %PC.i, align 8
  %2472 = inttoptr i64 %2470 to i32*
  %2473 = load i32, i32* %2472, align 4
  %2474 = add i32 %2473, 1
  %2475 = zext i32 %2474 to i64
  store i64 %2475, i64* %RCX.i1565, align 8
  %2476 = icmp eq i32 %2473, -1
  %2477 = icmp eq i32 %2474, 0
  %2478 = or i1 %2476, %2477
  %2479 = zext i1 %2478 to i8
  store i8 %2479, i8* %51, align 1
  %2480 = and i32 %2474, 255
  %2481 = tail call i32 @llvm.ctpop.i32(i32 %2480)
  %2482 = trunc i32 %2481 to i8
  %2483 = and i8 %2482, 1
  %2484 = xor i8 %2483, 1
  store i8 %2484, i8* %52, align 1
  %2485 = xor i32 %2473, %2474
  %2486 = lshr i32 %2485, 4
  %2487 = trunc i32 %2486 to i8
  %2488 = and i8 %2487, 1
  store i8 %2488, i8* %53, align 1
  %2489 = icmp eq i32 %2474, 0
  %2490 = zext i1 %2489 to i8
  store i8 %2490, i8* %54, align 1
  %2491 = lshr i32 %2474, 31
  %2492 = trunc i32 %2491 to i8
  store i8 %2492, i8* %55, align 1
  %2493 = lshr i32 %2473, 31
  %2494 = xor i32 %2491, %2493
  %2495 = add nuw nsw i32 %2494, %2491
  %2496 = icmp eq i32 %2495, 2
  %2497 = zext i1 %2496 to i8
  store i8 %2497, i8* %56, align 1
  %2498 = sext i32 %2474 to i64
  store i64 %2498, i64* %RSI.i1613, align 8
  %2499 = shl nsw i64 %2498, 3
  %2500 = add i64 %2499, %2469
  %2501 = add i64 %2461, 23
  store i64 %2501, i64* %PC.i, align 8
  %2502 = inttoptr i64 %2500 to i64*
  store i64 %2464, i64* %2502, align 8
  %2503 = load i64, i64* %RBP.i, align 8
  %2504 = add i64 %2503, -52
  %2505 = load i64, i64* %PC.i, align 8
  %2506 = add i64 %2505, 3
  store i64 %2506, i64* %PC.i, align 8
  %2507 = inttoptr i64 %2504 to i32*
  %2508 = load i32, i32* %2507, align 4
  %2509 = zext i32 %2508 to i64
  store i64 %2509, i64* %RCX.i1565, align 8
  %2510 = add i64 %2503, -40
  %2511 = add i64 %2505, 6
  store i64 %2511, i64* %PC.i, align 8
  %2512 = inttoptr i64 %2510 to i32*
  %2513 = load i32, i32* %2512, align 4
  %2514 = add i32 %2513, %2508
  %2515 = zext i32 %2514 to i64
  store i64 %2515, i64* %RCX.i1565, align 8
  %2516 = icmp ult i32 %2514, %2508
  %2517 = icmp ult i32 %2514, %2513
  %2518 = or i1 %2516, %2517
  %2519 = zext i1 %2518 to i8
  store i8 %2519, i8* %51, align 1
  %2520 = and i32 %2514, 255
  %2521 = tail call i32 @llvm.ctpop.i32(i32 %2520)
  %2522 = trunc i32 %2521 to i8
  %2523 = and i8 %2522, 1
  %2524 = xor i8 %2523, 1
  store i8 %2524, i8* %52, align 1
  %2525 = xor i32 %2513, %2508
  %2526 = xor i32 %2525, %2514
  %2527 = lshr i32 %2526, 4
  %2528 = trunc i32 %2527 to i8
  %2529 = and i8 %2528, 1
  store i8 %2529, i8* %53, align 1
  %2530 = icmp eq i32 %2514, 0
  %2531 = zext i1 %2530 to i8
  store i8 %2531, i8* %54, align 1
  %2532 = lshr i32 %2514, 31
  %2533 = trunc i32 %2532 to i8
  store i8 %2533, i8* %55, align 1
  %2534 = lshr i32 %2508, 31
  %2535 = lshr i32 %2513, 31
  %2536 = xor i32 %2532, %2534
  %2537 = xor i32 %2532, %2535
  %2538 = add nuw nsw i32 %2536, %2537
  %2539 = icmp eq i32 %2538, 2
  %2540 = zext i1 %2539 to i8
  store i8 %2540, i8* %56, align 1
  %2541 = add i64 %2505, 9
  store i64 %2541, i64* %PC.i, align 8
  store i32 %2514, i32* %2512, align 4
  %2542 = load i64, i64* %RBP.i, align 8
  %2543 = add i64 %2542, -24
  %2544 = load i64, i64* %PC.i, align 8
  %2545 = add i64 %2544, 4
  store i64 %2545, i64* %PC.i, align 8
  %2546 = inttoptr i64 %2543 to i64*
  %2547 = load i64, i64* %2546, align 8
  store i64 %2547, i64* %RDX.i1610, align 8
  %2548 = add i64 %2542, -40
  %2549 = add i64 %2544, 7
  store i64 %2549, i64* %PC.i, align 8
  %2550 = inttoptr i64 %2548 to i32*
  %2551 = load i32, i32* %2550, align 4
  %2552 = add i32 %2551, 1
  %2553 = zext i32 %2552 to i64
  store i64 %2553, i64* %RCX.i1565, align 8
  %2554 = icmp eq i32 %2551, -1
  %2555 = icmp eq i32 %2552, 0
  %2556 = or i1 %2554, %2555
  %2557 = zext i1 %2556 to i8
  store i8 %2557, i8* %51, align 1
  %2558 = and i32 %2552, 255
  %2559 = tail call i32 @llvm.ctpop.i32(i32 %2558)
  %2560 = trunc i32 %2559 to i8
  %2561 = and i8 %2560, 1
  %2562 = xor i8 %2561, 1
  store i8 %2562, i8* %52, align 1
  %2563 = xor i32 %2551, %2552
  %2564 = lshr i32 %2563, 4
  %2565 = trunc i32 %2564 to i8
  %2566 = and i8 %2565, 1
  store i8 %2566, i8* %53, align 1
  %2567 = icmp eq i32 %2552, 0
  %2568 = zext i1 %2567 to i8
  store i8 %2568, i8* %54, align 1
  %2569 = lshr i32 %2552, 31
  %2570 = trunc i32 %2569 to i8
  store i8 %2570, i8* %55, align 1
  %2571 = lshr i32 %2551, 31
  %2572 = xor i32 %2569, %2571
  %2573 = add nuw nsw i32 %2572, %2569
  %2574 = icmp eq i32 %2573, 2
  %2575 = zext i1 %2574 to i8
  store i8 %2575, i8* %56, align 1
  %2576 = sext i32 %2552 to i64
  store i64 %2576, i64* %RSI.i1613, align 8
  %2577 = shl nsw i64 %2576, 3
  %2578 = add i64 %2577, %2547
  %2579 = add i64 %2544, 18
  store i64 %2579, i64* %PC.i, align 8
  %2580 = inttoptr i64 %2578 to i64*
  %2581 = load i64, i64* %2580, align 8
  %2582 = load i64, i64* %RAX.i1594, align 8
  %2583 = xor i64 %2582, %2581
  store i64 %2583, i64* %RDX.i1610, align 8
  store i8 0, i8* %51, align 1
  %2584 = trunc i64 %2583 to i32
  %2585 = and i32 %2584, 255
  %2586 = tail call i32 @llvm.ctpop.i32(i32 %2585)
  %2587 = trunc i32 %2586 to i8
  %2588 = and i8 %2587, 1
  %2589 = xor i8 %2588, 1
  store i8 %2589, i8* %52, align 1
  %2590 = icmp eq i64 %2583, 0
  %2591 = zext i1 %2590 to i8
  store i8 %2591, i8* %54, align 1
  %2592 = lshr i64 %2583, 63
  %2593 = trunc i64 %2592 to i8
  store i8 %2593, i8* %55, align 1
  store i8 0, i8* %56, align 1
  store i8 0, i8* %53, align 1
  store i64 %2583, i64* %386, align 1
  store i64 0, i64* %384, align 1
  %2594 = add i64 %2544, 35
  store i64 %2594, i64* %PC.i, align 8
  %2595 = load i64, i64* %2546, align 8
  store i64 %2595, i64* %RAX.i1594, align 8
  %2596 = add i64 %2544, 38
  store i64 %2596, i64* %PC.i, align 8
  %2597 = load i32, i32* %2550, align 4
  %2598 = add i32 %2597, 1
  %2599 = zext i32 %2598 to i64
  store i64 %2599, i64* %RCX.i1565, align 8
  %2600 = icmp eq i32 %2597, -1
  %2601 = icmp eq i32 %2598, 0
  %2602 = or i1 %2600, %2601
  %2603 = zext i1 %2602 to i8
  store i8 %2603, i8* %51, align 1
  %2604 = and i32 %2598, 255
  %2605 = tail call i32 @llvm.ctpop.i32(i32 %2604)
  %2606 = trunc i32 %2605 to i8
  %2607 = and i8 %2606, 1
  %2608 = xor i8 %2607, 1
  store i8 %2608, i8* %52, align 1
  %2609 = xor i32 %2597, %2598
  %2610 = lshr i32 %2609, 4
  %2611 = trunc i32 %2610 to i8
  %2612 = and i8 %2611, 1
  store i8 %2612, i8* %53, align 1
  %2613 = icmp eq i32 %2598, 0
  %2614 = zext i1 %2613 to i8
  store i8 %2614, i8* %54, align 1
  %2615 = lshr i32 %2598, 31
  %2616 = trunc i32 %2615 to i8
  store i8 %2616, i8* %55, align 1
  %2617 = lshr i32 %2597, 31
  %2618 = xor i32 %2615, %2617
  %2619 = add nuw nsw i32 %2618, %2615
  %2620 = icmp eq i32 %2619, 2
  %2621 = zext i1 %2620 to i8
  store i8 %2621, i8* %56, align 1
  %2622 = sext i32 %2598 to i64
  store i64 %2622, i64* %RDX.i1610, align 8
  %2623 = shl nsw i64 %2622, 3
  %2624 = add i64 %2623, %2595
  %2625 = add i64 %2544, 49
  store i64 %2625, i64* %PC.i, align 8
  %2626 = inttoptr i64 %2624 to i64*
  store i64 %2583, i64* %2626, align 8
  %2627 = load i64, i64* %RBP.i, align 8
  %2628 = add i64 %2627, -36
  %2629 = load i64, i64* %PC.i, align 8
  %2630 = add i64 %2629, 3
  store i64 %2630, i64* %PC.i, align 8
  %2631 = inttoptr i64 %2628 to i32*
  %2632 = load i32, i32* %2631, align 4
  %2633 = add i32 %2632, 1
  %2634 = zext i32 %2633 to i64
  store i64 %2634, i64* %RAX.i1594, align 8
  %2635 = icmp eq i32 %2632, -1
  %2636 = icmp eq i32 %2633, 0
  %2637 = or i1 %2635, %2636
  %2638 = zext i1 %2637 to i8
  store i8 %2638, i8* %51, align 1
  %2639 = and i32 %2633, 255
  %2640 = tail call i32 @llvm.ctpop.i32(i32 %2639)
  %2641 = trunc i32 %2640 to i8
  %2642 = and i8 %2641, 1
  %2643 = xor i8 %2642, 1
  store i8 %2643, i8* %52, align 1
  %2644 = xor i32 %2632, %2633
  %2645 = lshr i32 %2644, 4
  %2646 = trunc i32 %2645 to i8
  %2647 = and i8 %2646, 1
  store i8 %2647, i8* %53, align 1
  %2648 = icmp eq i32 %2633, 0
  %2649 = zext i1 %2648 to i8
  store i8 %2649, i8* %54, align 1
  %2650 = lshr i32 %2633, 31
  %2651 = trunc i32 %2650 to i8
  store i8 %2651, i8* %55, align 1
  %2652 = lshr i32 %2632, 31
  %2653 = xor i32 %2650, %2652
  %2654 = add nuw nsw i32 %2653, %2650
  %2655 = icmp eq i32 %2654, 2
  %2656 = zext i1 %2655 to i8
  store i8 %2656, i8* %56, align 1
  %2657 = add i64 %2629, 9
  store i64 %2657, i64* %PC.i, align 8
  store i32 %2633, i32* %2631, align 4
  %2658 = load i64, i64* %PC.i, align 8
  %2659 = add i64 %2658, -1271
  store i64 %2659, i64* %3, align 8
  br label %block_.L_401c8a

block_.L_402186:                                  ; preds = %block_.L_401c8a
  %2660 = add i64 %424, 748
  br label %block_.L_402472

block_.L_40218b:                                  ; preds = %block_.L_401c6b
  store i64 -9223372036854775808, i64* %RAX.i1594, align 8
  %2661 = add i64 %331, -24
  %2662 = add i64 %379, 14
  store i64 %2662, i64* %PC.i, align 8
  %2663 = inttoptr i64 %2661 to i64*
  %2664 = load i64, i64* %2663, align 8
  store i64 %2664, i64* %RCX.i1565, align 8
  %2665 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %2666 = add i64 %2664, 8
  %2667 = add i64 %379, 19
  store i64 %2667, i64* %PC.i, align 8
  %2668 = inttoptr i64 %2666 to i64*
  %2669 = load i64, i64* %2668, align 8
  %2670 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %2671 = bitcast i64* %2670 to double*
  %2672 = xor i64 %2669, -9223372036854775808
  store i64 %2672, i64* %RCX.i1565, align 8
  store i8 0, i8* %51, align 1
  %2673 = trunc i64 %2669 to i32
  %2674 = and i32 %2673, 255
  %2675 = tail call i32 @llvm.ctpop.i32(i32 %2674)
  %2676 = trunc i32 %2675 to i8
  %2677 = and i8 %2676, 1
  %2678 = xor i8 %2677, 1
  store i8 %2678, i8* %52, align 1
  %2679 = icmp eq i64 %2672, 0
  %2680 = zext i1 %2679 to i8
  store i8 %2680, i8* %54, align 1
  %2681 = lshr i64 %2672, 63
  %2682 = trunc i64 %2681 to i8
  store i8 %2682, i8* %55, align 1
  store i8 0, i8* %56, align 1
  store i8 0, i8* %53, align 1
  %2683 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %2665, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %2672, i64* %2683, align 1
  store i64 0, i64* %2670, align 1
  %2684 = add i64 %379, 36
  store i64 %2684, i64* %PC.i, align 8
  %2685 = load i64, i64* %2663, align 8
  store i64 %2685, i64* %RCX.i1565, align 8
  %2686 = add i64 %2685, 8
  %2687 = add i64 %379, 41
  store i64 %2687, i64* %PC.i, align 8
  %2688 = inttoptr i64 %2686 to i64*
  store i64 %2672, i64* %2688, align 8
  %2689 = load i64, i64* %RBP.i, align 8
  %2690 = add i64 %2689, -24
  %2691 = load i64, i64* %PC.i, align 8
  %2692 = add i64 %2691, 4
  store i64 %2692, i64* %PC.i, align 8
  %2693 = inttoptr i64 %2690 to i64*
  %2694 = load i64, i64* %2693, align 8
  store i64 %2694, i64* %RCX.i1565, align 8
  %2695 = add i64 %2689, -52
  %2696 = add i64 %2691, 7
  store i64 %2696, i64* %PC.i, align 8
  %2697 = inttoptr i64 %2695 to i32*
  %2698 = load i32, i32* %2697, align 4
  %2699 = add i32 %2698, 1
  %2700 = zext i32 %2699 to i64
  store i64 %2700, i64* %RDX.i1610, align 8
  %2701 = icmp eq i32 %2698, -1
  %2702 = icmp eq i32 %2699, 0
  %2703 = or i1 %2701, %2702
  %2704 = zext i1 %2703 to i8
  store i8 %2704, i8* %51, align 1
  %2705 = and i32 %2699, 255
  %2706 = tail call i32 @llvm.ctpop.i32(i32 %2705)
  %2707 = trunc i32 %2706 to i8
  %2708 = and i8 %2707, 1
  %2709 = xor i8 %2708, 1
  store i8 %2709, i8* %52, align 1
  %2710 = xor i32 %2698, %2699
  %2711 = lshr i32 %2710, 4
  %2712 = trunc i32 %2711 to i8
  %2713 = and i8 %2712, 1
  store i8 %2713, i8* %53, align 1
  %2714 = icmp eq i32 %2699, 0
  %2715 = zext i1 %2714 to i8
  store i8 %2715, i8* %54, align 1
  %2716 = lshr i32 %2699, 31
  %2717 = trunc i32 %2716 to i8
  store i8 %2717, i8* %55, align 1
  %2718 = lshr i32 %2698, 31
  %2719 = xor i32 %2716, %2718
  %2720 = add nuw nsw i32 %2719, %2716
  %2721 = icmp eq i32 %2720, 2
  %2722 = zext i1 %2721 to i8
  store i8 %2722, i8* %56, align 1
  %2723 = sext i32 %2699 to i64
  store i64 %2723, i64* %RSI.i1613, align 8
  %2724 = shl nsw i64 %2723, 3
  %2725 = add i64 %2724, %2694
  %2726 = add i64 %2691, 18
  store i64 %2726, i64* %PC.i, align 8
  %2727 = inttoptr i64 %2725 to i64*
  %2728 = load i64, i64* %2727, align 8
  %2729 = load i64, i64* %RAX.i1594, align 8
  %2730 = xor i64 %2729, %2728
  store i64 %2730, i64* %RCX.i1565, align 8
  store i8 0, i8* %51, align 1
  %2731 = trunc i64 %2730 to i32
  %2732 = and i32 %2731, 255
  %2733 = tail call i32 @llvm.ctpop.i32(i32 %2732)
  %2734 = trunc i32 %2733 to i8
  %2735 = and i8 %2734, 1
  %2736 = xor i8 %2735, 1
  store i8 %2736, i8* %52, align 1
  %2737 = icmp eq i64 %2730, 0
  %2738 = zext i1 %2737 to i8
  store i8 %2738, i8* %54, align 1
  %2739 = lshr i64 %2730, 63
  %2740 = trunc i64 %2739 to i8
  store i8 %2740, i8* %55, align 1
  store i8 0, i8* %56, align 1
  store i8 0, i8* %53, align 1
  store i64 %2730, i64* %2683, align 1
  store i64 0, i64* %2670, align 1
  %2741 = add i64 %2691, 35
  store i64 %2741, i64* %PC.i, align 8
  %2742 = load i64, i64* %2693, align 8
  store i64 %2742, i64* %RAX.i1594, align 8
  %2743 = add i64 %2691, 38
  store i64 %2743, i64* %PC.i, align 8
  %2744 = load i32, i32* %2697, align 4
  %2745 = add i32 %2744, 1
  %2746 = zext i32 %2745 to i64
  store i64 %2746, i64* %RDX.i1610, align 8
  %2747 = icmp eq i32 %2744, -1
  %2748 = icmp eq i32 %2745, 0
  %2749 = or i1 %2747, %2748
  %2750 = zext i1 %2749 to i8
  store i8 %2750, i8* %51, align 1
  %2751 = and i32 %2745, 255
  %2752 = tail call i32 @llvm.ctpop.i32(i32 %2751)
  %2753 = trunc i32 %2752 to i8
  %2754 = and i8 %2753, 1
  %2755 = xor i8 %2754, 1
  store i8 %2755, i8* %52, align 1
  %2756 = xor i32 %2744, %2745
  %2757 = lshr i32 %2756, 4
  %2758 = trunc i32 %2757 to i8
  %2759 = and i8 %2758, 1
  store i8 %2759, i8* %53, align 1
  %2760 = icmp eq i32 %2745, 0
  %2761 = zext i1 %2760 to i8
  store i8 %2761, i8* %54, align 1
  %2762 = lshr i32 %2745, 31
  %2763 = trunc i32 %2762 to i8
  store i8 %2763, i8* %55, align 1
  %2764 = lshr i32 %2744, 31
  %2765 = xor i32 %2762, %2764
  %2766 = add nuw nsw i32 %2765, %2762
  %2767 = icmp eq i32 %2766, 2
  %2768 = zext i1 %2767 to i8
  store i8 %2768, i8* %56, align 1
  %2769 = sext i32 %2745 to i64
  store i64 %2769, i64* %RCX.i1565, align 8
  %2770 = shl nsw i64 %2769, 3
  %2771 = add i64 %2770, %2742
  %2772 = add i64 %2691, 49
  store i64 %2772, i64* %PC.i, align 8
  %2773 = inttoptr i64 %2771 to i64*
  store i64 %2730, i64* %2773, align 8
  %2774 = load i64, i64* %RBP.i, align 8
  %2775 = add i64 %2774, -36
  %2776 = load i64, i64* %PC.i, align 8
  %2777 = add i64 %2776, 7
  store i64 %2777, i64* %PC.i, align 8
  %2778 = inttoptr i64 %2775 to i32*
  store i32 1, i32* %2778, align 4
  %.pre4 = load i64, i64* %PC.i, align 8
  br label %block_.L_4021ec

block_.L_4021ec:                                  ; preds = %block_.L_4023d9, %block_.L_40218b
  %2779 = phi i64 [ %3931, %block_.L_4023d9 ], [ %.pre4, %block_.L_40218b ]
  %2780 = load i64, i64* %RBP.i, align 8
  %2781 = add i64 %2780, -36
  %2782 = add i64 %2779, 3
  store i64 %2782, i64* %PC.i, align 8
  %2783 = inttoptr i64 %2781 to i32*
  %2784 = load i32, i32* %2783, align 4
  %2785 = zext i32 %2784 to i64
  store i64 %2785, i64* %RAX.i1594, align 8
  %2786 = add i64 %2780, -48
  %2787 = add i64 %2779, 6
  store i64 %2787, i64* %PC.i, align 8
  %2788 = inttoptr i64 %2786 to i32*
  %2789 = load i32, i32* %2788, align 4
  %2790 = sub i32 %2784, %2789
  %2791 = icmp ult i32 %2784, %2789
  %2792 = zext i1 %2791 to i8
  store i8 %2792, i8* %51, align 1
  %2793 = and i32 %2790, 255
  %2794 = tail call i32 @llvm.ctpop.i32(i32 %2793)
  %2795 = trunc i32 %2794 to i8
  %2796 = and i8 %2795, 1
  %2797 = xor i8 %2796, 1
  store i8 %2797, i8* %52, align 1
  %2798 = xor i32 %2789, %2784
  %2799 = xor i32 %2798, %2790
  %2800 = lshr i32 %2799, 4
  %2801 = trunc i32 %2800 to i8
  %2802 = and i8 %2801, 1
  store i8 %2802, i8* %53, align 1
  %2803 = icmp eq i32 %2790, 0
  %2804 = zext i1 %2803 to i8
  store i8 %2804, i8* %54, align 1
  %2805 = lshr i32 %2790, 31
  %2806 = trunc i32 %2805 to i8
  store i8 %2806, i8* %55, align 1
  %2807 = lshr i32 %2784, 31
  %2808 = lshr i32 %2789, 31
  %2809 = xor i32 %2808, %2807
  %2810 = xor i32 %2805, %2807
  %2811 = add nuw nsw i32 %2810, %2809
  %2812 = icmp eq i32 %2811, 2
  %2813 = zext i1 %2812 to i8
  store i8 %2813, i8* %56, align 1
  %2814 = icmp ne i8 %2806, 0
  %2815 = xor i1 %2814, %2812
  %.v18 = select i1 %2815, i64 12, i64 641
  %2816 = add i64 %2779, %.v18
  store i64 %2816, i64* %3, align 8
  br i1 %2815, label %block_4021f8, label %block_.L_40246d

block_4021f8:                                     ; preds = %block_.L_4021ec
  %2817 = add i64 %2780, -28
  %2818 = add i64 %2816, 7
  store i64 %2818, i64* %PC.i, align 8
  %2819 = inttoptr i64 %2817 to i32*
  store i32 0, i32* %2819, align 4
  %.pre5 = load i64, i64* %PC.i, align 8
  br label %block_.L_4021ff

block_.L_4021ff:                                  ; preds = %block_40220b, %block_4021f8
  %2820 = phi i64 [ %3650, %block_40220b ], [ %.pre5, %block_4021f8 ]
  %2821 = load i64, i64* %RBP.i, align 8
  %2822 = add i64 %2821, -28
  %2823 = add i64 %2820, 3
  store i64 %2823, i64* %PC.i, align 8
  %2824 = inttoptr i64 %2822 to i32*
  %2825 = load i32, i32* %2824, align 4
  %2826 = zext i32 %2825 to i64
  store i64 %2826, i64* %RAX.i1594, align 8
  %2827 = add i64 %2821, -36
  %2828 = add i64 %2820, 6
  store i64 %2828, i64* %PC.i, align 8
  %2829 = inttoptr i64 %2827 to i32*
  %2830 = load i32, i32* %2829, align 4
  %2831 = sub i32 %2825, %2830
  %2832 = icmp ult i32 %2825, %2830
  %2833 = zext i1 %2832 to i8
  store i8 %2833, i8* %51, align 1
  %2834 = and i32 %2831, 255
  %2835 = tail call i32 @llvm.ctpop.i32(i32 %2834)
  %2836 = trunc i32 %2835 to i8
  %2837 = and i8 %2836, 1
  %2838 = xor i8 %2837, 1
  store i8 %2838, i8* %52, align 1
  %2839 = xor i32 %2830, %2825
  %2840 = xor i32 %2839, %2831
  %2841 = lshr i32 %2840, 4
  %2842 = trunc i32 %2841 to i8
  %2843 = and i8 %2842, 1
  store i8 %2843, i8* %53, align 1
  %2844 = icmp eq i32 %2831, 0
  %2845 = zext i1 %2844 to i8
  store i8 %2845, i8* %54, align 1
  %2846 = lshr i32 %2831, 31
  %2847 = trunc i32 %2846 to i8
  store i8 %2847, i8* %55, align 1
  %2848 = lshr i32 %2825, 31
  %2849 = lshr i32 %2830, 31
  %2850 = xor i32 %2849, %2848
  %2851 = xor i32 %2846, %2848
  %2852 = add nuw nsw i32 %2851, %2850
  %2853 = icmp eq i32 %2852, 2
  %2854 = zext i1 %2853 to i8
  store i8 %2854, i8* %56, align 1
  %2855 = icmp ne i8 %2847, 0
  %2856 = xor i1 %2855, %2853
  %.v19 = select i1 %2856, i64 12, i64 474
  %2857 = add i64 %2820, %.v19
  store i64 -9223372036854775808, i64* %RAX.i1594, align 8
  %2858 = add i64 %2857, 13
  store i64 %2858, i64* %PC.i, align 8
  br i1 %2856, label %block_40220b, label %block_.L_4023d9

block_40220b:                                     ; preds = %block_.L_4021ff
  %2859 = load i32, i32* %2824, align 4
  %2860 = shl i32 %2859, 1
  %2861 = icmp slt i32 %2859, 0
  %2862 = icmp slt i32 %2860, 0
  %2863 = xor i1 %2861, %2862
  %2864 = zext i32 %2860 to i64
  store i64 %2864, i64* %RCX.i1565, align 8
  %.lobit20 = lshr i32 %2859, 31
  %2865 = trunc i32 %.lobit20 to i8
  store i8 %2865, i8* %51, align 1
  %2866 = and i32 %2860, 254
  %2867 = tail call i32 @llvm.ctpop.i32(i32 %2866)
  %2868 = trunc i32 %2867 to i8
  %2869 = and i8 %2868, 1
  %2870 = xor i8 %2869, 1
  store i8 %2870, i8* %52, align 1
  store i8 0, i8* %53, align 1
  %2871 = icmp eq i32 %2860, 0
  %2872 = zext i1 %2871 to i8
  store i8 %2872, i8* %54, align 1
  %2873 = lshr i32 %2859, 30
  %2874 = and i32 %2873, 1
  %2875 = trunc i32 %2874 to i8
  store i8 %2875, i8* %55, align 1
  %2876 = zext i1 %2863 to i8
  store i8 %2876, i8* %56, align 1
  %2877 = add i64 %2821, -16
  %2878 = add i64 %2857, 19
  store i64 %2878, i64* %PC.i, align 8
  %2879 = inttoptr i64 %2877 to i64*
  %2880 = load i64, i64* %2879, align 8
  store i64 %2880, i64* %RDX.i1610, align 8
  %2881 = add i64 %2857, 23
  store i64 %2881, i64* %PC.i, align 8
  %2882 = load i32, i32* %2829, align 4
  %2883 = sext i32 %2882 to i64
  store i64 %2883, i64* %RSI.i1613, align 8
  %2884 = shl nsw i64 %2883, 2
  %2885 = add i64 %2884, %2880
  %2886 = add i64 %2857, 26
  store i64 %2886, i64* %PC.i, align 8
  %2887 = inttoptr i64 %2885 to i32*
  %2888 = load i32, i32* %2887, align 4
  %2889 = add i32 %2888, %2860
  %2890 = zext i32 %2889 to i64
  store i64 %2890, i64* %RCX.i1565, align 8
  %2891 = icmp ult i32 %2889, %2860
  %2892 = icmp ult i32 %2889, %2888
  %2893 = or i1 %2891, %2892
  %2894 = zext i1 %2893 to i8
  store i8 %2894, i8* %51, align 1
  %2895 = and i32 %2889, 255
  %2896 = tail call i32 @llvm.ctpop.i32(i32 %2895)
  %2897 = trunc i32 %2896 to i8
  %2898 = and i8 %2897, 1
  %2899 = xor i8 %2898, 1
  store i8 %2899, i8* %52, align 1
  %2900 = xor i32 %2888, %2860
  %2901 = xor i32 %2900, %2889
  %2902 = lshr i32 %2901, 4
  %2903 = trunc i32 %2902 to i8
  %2904 = and i8 %2903, 1
  store i8 %2904, i8* %53, align 1
  %2905 = icmp eq i32 %2889, 0
  %2906 = zext i1 %2905 to i8
  store i8 %2906, i8* %54, align 1
  %2907 = lshr i32 %2889, 31
  %2908 = trunc i32 %2907 to i8
  store i8 %2908, i8* %55, align 1
  %2909 = lshr i32 %2888, 31
  %2910 = xor i32 %2907, %2874
  %2911 = xor i32 %2907, %2909
  %2912 = add nuw nsw i32 %2910, %2911
  %2913 = icmp eq i32 %2912, 2
  %2914 = zext i1 %2913 to i8
  store i8 %2914, i8* %56, align 1
  %2915 = add i64 %2821, -32
  %2916 = add i64 %2857, 29
  store i64 %2916, i64* %PC.i, align 8
  %2917 = inttoptr i64 %2915 to i32*
  store i32 %2889, i32* %2917, align 4
  %2918 = load i64, i64* %RBP.i, align 8
  %2919 = add i64 %2918, -36
  %2920 = load i64, i64* %PC.i, align 8
  %2921 = add i64 %2920, 3
  store i64 %2921, i64* %PC.i, align 8
  %2922 = inttoptr i64 %2919 to i32*
  %2923 = load i32, i32* %2922, align 4
  %2924 = shl i32 %2923, 1
  %2925 = icmp slt i32 %2923, 0
  %2926 = icmp slt i32 %2924, 0
  %2927 = xor i1 %2925, %2926
  %2928 = zext i32 %2924 to i64
  store i64 %2928, i64* %RCX.i1565, align 8
  %.lobit21 = lshr i32 %2923, 31
  %2929 = trunc i32 %.lobit21 to i8
  store i8 %2929, i8* %51, align 1
  %2930 = and i32 %2924, 254
  %2931 = tail call i32 @llvm.ctpop.i32(i32 %2930)
  %2932 = trunc i32 %2931 to i8
  %2933 = and i8 %2932, 1
  %2934 = xor i8 %2933, 1
  store i8 %2934, i8* %52, align 1
  store i8 0, i8* %53, align 1
  %2935 = icmp eq i32 %2924, 0
  %2936 = zext i1 %2935 to i8
  store i8 %2936, i8* %54, align 1
  %2937 = lshr i32 %2923, 30
  %2938 = and i32 %2937, 1
  %2939 = trunc i32 %2938 to i8
  store i8 %2939, i8* %55, align 1
  %2940 = zext i1 %2927 to i8
  store i8 %2940, i8* %56, align 1
  %2941 = add i64 %2918, -16
  %2942 = add i64 %2920, 9
  store i64 %2942, i64* %PC.i, align 8
  %2943 = inttoptr i64 %2941 to i64*
  %2944 = load i64, i64* %2943, align 8
  store i64 %2944, i64* %RDX.i1610, align 8
  %2945 = add i64 %2918, -28
  %2946 = add i64 %2920, 13
  store i64 %2946, i64* %PC.i, align 8
  %2947 = inttoptr i64 %2945 to i32*
  %2948 = load i32, i32* %2947, align 4
  %2949 = sext i32 %2948 to i64
  store i64 %2949, i64* %RSI.i1613, align 8
  %2950 = shl nsw i64 %2949, 2
  %2951 = add i64 %2950, %2944
  %2952 = add i64 %2920, 16
  store i64 %2952, i64* %PC.i, align 8
  %2953 = inttoptr i64 %2951 to i32*
  %2954 = load i32, i32* %2953, align 4
  %2955 = add i32 %2954, %2924
  %2956 = zext i32 %2955 to i64
  store i64 %2956, i64* %RCX.i1565, align 8
  %2957 = icmp ult i32 %2955, %2924
  %2958 = icmp ult i32 %2955, %2954
  %2959 = or i1 %2957, %2958
  %2960 = zext i1 %2959 to i8
  store i8 %2960, i8* %51, align 1
  %2961 = and i32 %2955, 255
  %2962 = tail call i32 @llvm.ctpop.i32(i32 %2961)
  %2963 = trunc i32 %2962 to i8
  %2964 = and i8 %2963, 1
  %2965 = xor i8 %2964, 1
  store i8 %2965, i8* %52, align 1
  %2966 = xor i32 %2954, %2924
  %2967 = xor i32 %2966, %2955
  %2968 = lshr i32 %2967, 4
  %2969 = trunc i32 %2968 to i8
  %2970 = and i8 %2969, 1
  store i8 %2970, i8* %53, align 1
  %2971 = icmp eq i32 %2955, 0
  %2972 = zext i1 %2971 to i8
  store i8 %2972, i8* %54, align 1
  %2973 = lshr i32 %2955, 31
  %2974 = trunc i32 %2973 to i8
  store i8 %2974, i8* %55, align 1
  %2975 = lshr i32 %2954, 31
  %2976 = xor i32 %2973, %2938
  %2977 = xor i32 %2973, %2975
  %2978 = add nuw nsw i32 %2976, %2977
  %2979 = icmp eq i32 %2978, 2
  %2980 = zext i1 %2979 to i8
  store i8 %2980, i8* %56, align 1
  %2981 = add i64 %2918, -40
  %2982 = add i64 %2920, 19
  store i64 %2982, i64* %PC.i, align 8
  %2983 = inttoptr i64 %2981 to i32*
  store i32 %2955, i32* %2983, align 4
  %2984 = load i64, i64* %RBP.i, align 8
  %2985 = add i64 %2984, -24
  %2986 = load i64, i64* %PC.i, align 8
  %2987 = add i64 %2986, 4
  store i64 %2987, i64* %PC.i, align 8
  %2988 = inttoptr i64 %2985 to i64*
  %2989 = load i64, i64* %2988, align 8
  store i64 %2989, i64* %RDX.i1610, align 8
  %2990 = add i64 %2984, -32
  %2991 = add i64 %2986, 8
  store i64 %2991, i64* %PC.i, align 8
  %2992 = inttoptr i64 %2990 to i32*
  %2993 = load i32, i32* %2992, align 4
  %2994 = sext i32 %2993 to i64
  store i64 %2994, i64* %RSI.i1613, align 8
  %2995 = shl nsw i64 %2994, 3
  %2996 = add i64 %2995, %2989
  %2997 = add i64 %2986, 13
  store i64 %2997, i64* %PC.i, align 8
  %2998 = inttoptr i64 %2996 to i64*
  %2999 = load i64, i64* %2998, align 8
  %3000 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %2665, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %2999, i64* %3000, align 1
  store double 0.000000e+00, double* %2671, align 1
  %3001 = add i64 %2984, -64
  %3002 = add i64 %2986, 18
  store i64 %3002, i64* %PC.i, align 8
  %3003 = inttoptr i64 %3001 to i64*
  store i64 %2999, i64* %3003, align 8
  %3004 = load i64, i64* %RBP.i, align 8
  %3005 = add i64 %3004, -24
  %3006 = load i64, i64* %PC.i, align 8
  %3007 = add i64 %3006, 4
  store i64 %3007, i64* %PC.i, align 8
  %3008 = inttoptr i64 %3005 to i64*
  %3009 = load i64, i64* %3008, align 8
  store i64 %3009, i64* %RDX.i1610, align 8
  %3010 = add i64 %3004, -32
  %3011 = add i64 %3006, 7
  store i64 %3011, i64* %PC.i, align 8
  %3012 = inttoptr i64 %3010 to i32*
  %3013 = load i32, i32* %3012, align 4
  %3014 = add i32 %3013, 1
  %3015 = zext i32 %3014 to i64
  store i64 %3015, i64* %RCX.i1565, align 8
  %3016 = icmp eq i32 %3013, -1
  %3017 = icmp eq i32 %3014, 0
  %3018 = or i1 %3016, %3017
  %3019 = zext i1 %3018 to i8
  store i8 %3019, i8* %51, align 1
  %3020 = and i32 %3014, 255
  %3021 = tail call i32 @llvm.ctpop.i32(i32 %3020)
  %3022 = trunc i32 %3021 to i8
  %3023 = and i8 %3022, 1
  %3024 = xor i8 %3023, 1
  store i8 %3024, i8* %52, align 1
  %3025 = xor i32 %3013, %3014
  %3026 = lshr i32 %3025, 4
  %3027 = trunc i32 %3026 to i8
  %3028 = and i8 %3027, 1
  store i8 %3028, i8* %53, align 1
  %3029 = icmp eq i32 %3014, 0
  %3030 = zext i1 %3029 to i8
  store i8 %3030, i8* %54, align 1
  %3031 = lshr i32 %3014, 31
  %3032 = trunc i32 %3031 to i8
  store i8 %3032, i8* %55, align 1
  %3033 = lshr i32 %3013, 31
  %3034 = xor i32 %3031, %3033
  %3035 = add nuw nsw i32 %3034, %3031
  %3036 = icmp eq i32 %3035, 2
  %3037 = zext i1 %3036 to i8
  store i8 %3037, i8* %56, align 1
  %3038 = sext i32 %3014 to i64
  store i64 %3038, i64* %RSI.i1613, align 8
  %3039 = shl nsw i64 %3038, 3
  %3040 = add i64 %3039, %3009
  %3041 = add i64 %3006, 18
  store i64 %3041, i64* %PC.i, align 8
  %3042 = inttoptr i64 %3040 to i64*
  %3043 = load i64, i64* %3042, align 8
  %3044 = load i64, i64* %RAX.i1594, align 8
  %3045 = xor i64 %3044, %3043
  store i64 %3045, i64* %RDX.i1610, align 8
  store i8 0, i8* %51, align 1
  %3046 = trunc i64 %3045 to i32
  %3047 = and i32 %3046, 255
  %3048 = tail call i32 @llvm.ctpop.i32(i32 %3047)
  %3049 = trunc i32 %3048 to i8
  %3050 = and i8 %3049, 1
  %3051 = xor i8 %3050, 1
  store i8 %3051, i8* %52, align 1
  %3052 = icmp eq i64 %3045, 0
  %3053 = zext i1 %3052 to i8
  store i8 %3053, i8* %54, align 1
  %3054 = lshr i64 %3045, 63
  %3055 = trunc i64 %3054 to i8
  store i8 %3055, i8* %55, align 1
  store i8 0, i8* %56, align 1
  store i8 0, i8* %53, align 1
  store i64 %3045, i64* %2683, align 1
  store i64 0, i64* %2670, align 1
  %3056 = add i64 %3004, -72
  %3057 = add i64 %3006, 36
  store i64 %3057, i64* %PC.i, align 8
  %3058 = inttoptr i64 %3056 to i64*
  store i64 %3045, i64* %3058, align 8
  %3059 = load i64, i64* %RBP.i, align 8
  %3060 = add i64 %3059, -24
  %3061 = load i64, i64* %PC.i, align 8
  %3062 = add i64 %3061, 4
  store i64 %3062, i64* %PC.i, align 8
  %3063 = inttoptr i64 %3060 to i64*
  %3064 = load i64, i64* %3063, align 8
  store i64 %3064, i64* %RDX.i1610, align 8
  %3065 = add i64 %3059, -40
  %3066 = add i64 %3061, 8
  store i64 %3066, i64* %PC.i, align 8
  %3067 = inttoptr i64 %3065 to i32*
  %3068 = load i32, i32* %3067, align 4
  %3069 = sext i32 %3068 to i64
  store i64 %3069, i64* %RSI.i1613, align 8
  %3070 = shl nsw i64 %3069, 3
  %3071 = add i64 %3070, %3064
  %3072 = add i64 %3061, 13
  store i64 %3072, i64* %PC.i, align 8
  %3073 = inttoptr i64 %3071 to i64*
  %3074 = load i64, i64* %3073, align 8
  %3075 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %2665, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %3074, i64* %3075, align 1
  store double 0.000000e+00, double* %2671, align 1
  %3076 = add i64 %3059, -80
  %3077 = add i64 %3061, 18
  store i64 %3077, i64* %PC.i, align 8
  %3078 = inttoptr i64 %3076 to i64*
  store i64 %3074, i64* %3078, align 8
  %3079 = load i64, i64* %RBP.i, align 8
  %3080 = add i64 %3079, -24
  %3081 = load i64, i64* %PC.i, align 8
  %3082 = add i64 %3081, 4
  store i64 %3082, i64* %PC.i, align 8
  %3083 = inttoptr i64 %3080 to i64*
  %3084 = load i64, i64* %3083, align 8
  store i64 %3084, i64* %RDX.i1610, align 8
  %3085 = add i64 %3079, -40
  %3086 = add i64 %3081, 7
  store i64 %3086, i64* %PC.i, align 8
  %3087 = inttoptr i64 %3085 to i32*
  %3088 = load i32, i32* %3087, align 4
  %3089 = add i32 %3088, 1
  %3090 = zext i32 %3089 to i64
  store i64 %3090, i64* %RCX.i1565, align 8
  %3091 = icmp eq i32 %3088, -1
  %3092 = icmp eq i32 %3089, 0
  %3093 = or i1 %3091, %3092
  %3094 = zext i1 %3093 to i8
  store i8 %3094, i8* %51, align 1
  %3095 = and i32 %3089, 255
  %3096 = tail call i32 @llvm.ctpop.i32(i32 %3095)
  %3097 = trunc i32 %3096 to i8
  %3098 = and i8 %3097, 1
  %3099 = xor i8 %3098, 1
  store i8 %3099, i8* %52, align 1
  %3100 = xor i32 %3088, %3089
  %3101 = lshr i32 %3100, 4
  %3102 = trunc i32 %3101 to i8
  %3103 = and i8 %3102, 1
  store i8 %3103, i8* %53, align 1
  %3104 = icmp eq i32 %3089, 0
  %3105 = zext i1 %3104 to i8
  store i8 %3105, i8* %54, align 1
  %3106 = lshr i32 %3089, 31
  %3107 = trunc i32 %3106 to i8
  store i8 %3107, i8* %55, align 1
  %3108 = lshr i32 %3088, 31
  %3109 = xor i32 %3106, %3108
  %3110 = add nuw nsw i32 %3109, %3106
  %3111 = icmp eq i32 %3110, 2
  %3112 = zext i1 %3111 to i8
  store i8 %3112, i8* %56, align 1
  %3113 = sext i32 %3089 to i64
  store i64 %3113, i64* %RSI.i1613, align 8
  %3114 = shl nsw i64 %3113, 3
  %3115 = add i64 %3114, %3084
  %3116 = add i64 %3081, 18
  store i64 %3116, i64* %PC.i, align 8
  %3117 = inttoptr i64 %3115 to i64*
  %3118 = load i64, i64* %3117, align 8
  %3119 = load i64, i64* %RAX.i1594, align 8
  %3120 = xor i64 %3119, %3118
  store i64 %3120, i64* %RDX.i1610, align 8
  store i8 0, i8* %51, align 1
  %3121 = trunc i64 %3120 to i32
  %3122 = and i32 %3121, 255
  %3123 = tail call i32 @llvm.ctpop.i32(i32 %3122)
  %3124 = trunc i32 %3123 to i8
  %3125 = and i8 %3124, 1
  %3126 = xor i8 %3125, 1
  store i8 %3126, i8* %52, align 1
  %3127 = icmp eq i64 %3120, 0
  %3128 = zext i1 %3127 to i8
  store i8 %3128, i8* %54, align 1
  %3129 = lshr i64 %3120, 63
  %3130 = trunc i64 %3129 to i8
  store i8 %3130, i8* %55, align 1
  store i8 0, i8* %56, align 1
  store i8 0, i8* %53, align 1
  store i64 %3120, i64* %2683, align 1
  store i64 0, i64* %2670, align 1
  %3131 = add i64 %3079, -88
  %3132 = add i64 %3081, 36
  store i64 %3132, i64* %PC.i, align 8
  %3133 = inttoptr i64 %3131 to i64*
  store i64 %3120, i64* %3133, align 8
  %3134 = load i64, i64* %RBP.i, align 8
  %3135 = add i64 %3134, -80
  %3136 = load i64, i64* %PC.i, align 8
  %3137 = add i64 %3136, 5
  store i64 %3137, i64* %PC.i, align 8
  %3138 = inttoptr i64 %3135 to i64*
  %3139 = load i64, i64* %3138, align 8
  %3140 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %2665, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %3139, i64* %3140, align 1
  store double 0.000000e+00, double* %2671, align 1
  %3141 = add i64 %3134, -24
  %3142 = add i64 %3136, 9
  store i64 %3142, i64* %PC.i, align 8
  %3143 = inttoptr i64 %3141 to i64*
  %3144 = load i64, i64* %3143, align 8
  store i64 %3144, i64* %RDX.i1610, align 8
  %3145 = add i64 %3134, -32
  %3146 = add i64 %3136, 13
  store i64 %3146, i64* %PC.i, align 8
  %3147 = inttoptr i64 %3145 to i32*
  %3148 = load i32, i32* %3147, align 4
  %3149 = sext i32 %3148 to i64
  store i64 %3149, i64* %RSI.i1613, align 8
  %3150 = shl nsw i64 %3149, 3
  %3151 = add i64 %3150, %3144
  %3152 = add i64 %3136, 18
  store i64 %3152, i64* %PC.i, align 8
  %3153 = inttoptr i64 %3151 to i64*
  store i64 %3139, i64* %3153, align 8
  %3154 = load i64, i64* %RBP.i, align 8
  %3155 = add i64 %3154, -88
  %3156 = load i64, i64* %PC.i, align 8
  %3157 = add i64 %3156, 5
  store i64 %3157, i64* %PC.i, align 8
  %3158 = inttoptr i64 %3155 to i64*
  %3159 = load i64, i64* %3158, align 8
  %3160 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %2665, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %3159, i64* %3160, align 1
  store double 0.000000e+00, double* %2671, align 1
  %3161 = add i64 %3154, -24
  %3162 = add i64 %3156, 9
  store i64 %3162, i64* %PC.i, align 8
  %3163 = inttoptr i64 %3161 to i64*
  %3164 = load i64, i64* %3163, align 8
  store i64 %3164, i64* %RDX.i1610, align 8
  %3165 = add i64 %3154, -32
  %3166 = add i64 %3156, 12
  store i64 %3166, i64* %PC.i, align 8
  %3167 = inttoptr i64 %3165 to i32*
  %3168 = load i32, i32* %3167, align 4
  %3169 = add i32 %3168, 1
  %3170 = zext i32 %3169 to i64
  store i64 %3170, i64* %RCX.i1565, align 8
  %3171 = icmp eq i32 %3168, -1
  %3172 = icmp eq i32 %3169, 0
  %3173 = or i1 %3171, %3172
  %3174 = zext i1 %3173 to i8
  store i8 %3174, i8* %51, align 1
  %3175 = and i32 %3169, 255
  %3176 = tail call i32 @llvm.ctpop.i32(i32 %3175)
  %3177 = trunc i32 %3176 to i8
  %3178 = and i8 %3177, 1
  %3179 = xor i8 %3178, 1
  store i8 %3179, i8* %52, align 1
  %3180 = xor i32 %3168, %3169
  %3181 = lshr i32 %3180, 4
  %3182 = trunc i32 %3181 to i8
  %3183 = and i8 %3182, 1
  store i8 %3183, i8* %53, align 1
  %3184 = icmp eq i32 %3169, 0
  %3185 = zext i1 %3184 to i8
  store i8 %3185, i8* %54, align 1
  %3186 = lshr i32 %3169, 31
  %3187 = trunc i32 %3186 to i8
  store i8 %3187, i8* %55, align 1
  %3188 = lshr i32 %3168, 31
  %3189 = xor i32 %3186, %3188
  %3190 = add nuw nsw i32 %3189, %3186
  %3191 = icmp eq i32 %3190, 2
  %3192 = zext i1 %3191 to i8
  store i8 %3192, i8* %56, align 1
  %3193 = sext i32 %3169 to i64
  store i64 %3193, i64* %RSI.i1613, align 8
  %3194 = shl nsw i64 %3193, 3
  %3195 = add i64 %3194, %3164
  %3196 = add i64 %3156, 23
  store i64 %3196, i64* %PC.i, align 8
  %3197 = inttoptr i64 %3195 to i64*
  store i64 %3159, i64* %3197, align 8
  %3198 = load i64, i64* %RBP.i, align 8
  %3199 = add i64 %3198, -64
  %3200 = load i64, i64* %PC.i, align 8
  %3201 = add i64 %3200, 5
  store i64 %3201, i64* %PC.i, align 8
  %3202 = inttoptr i64 %3199 to i64*
  %3203 = load i64, i64* %3202, align 8
  %3204 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %2665, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %3203, i64* %3204, align 1
  store double 0.000000e+00, double* %2671, align 1
  %3205 = add i64 %3198, -24
  %3206 = add i64 %3200, 9
  store i64 %3206, i64* %PC.i, align 8
  %3207 = inttoptr i64 %3205 to i64*
  %3208 = load i64, i64* %3207, align 8
  store i64 %3208, i64* %RDX.i1610, align 8
  %3209 = add i64 %3198, -40
  %3210 = add i64 %3200, 13
  store i64 %3210, i64* %PC.i, align 8
  %3211 = inttoptr i64 %3209 to i32*
  %3212 = load i32, i32* %3211, align 4
  %3213 = sext i32 %3212 to i64
  store i64 %3213, i64* %RSI.i1613, align 8
  %3214 = shl nsw i64 %3213, 3
  %3215 = add i64 %3214, %3208
  %3216 = add i64 %3200, 18
  store i64 %3216, i64* %PC.i, align 8
  %3217 = inttoptr i64 %3215 to i64*
  store i64 %3203, i64* %3217, align 8
  %3218 = load i64, i64* %RBP.i, align 8
  %3219 = add i64 %3218, -72
  %3220 = load i64, i64* %PC.i, align 8
  %3221 = add i64 %3220, 5
  store i64 %3221, i64* %PC.i, align 8
  %3222 = inttoptr i64 %3219 to i64*
  %3223 = load i64, i64* %3222, align 8
  %3224 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %2665, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %3223, i64* %3224, align 1
  store double 0.000000e+00, double* %2671, align 1
  %3225 = add i64 %3218, -24
  %3226 = add i64 %3220, 9
  store i64 %3226, i64* %PC.i, align 8
  %3227 = inttoptr i64 %3225 to i64*
  %3228 = load i64, i64* %3227, align 8
  store i64 %3228, i64* %RDX.i1610, align 8
  %3229 = add i64 %3218, -40
  %3230 = add i64 %3220, 12
  store i64 %3230, i64* %PC.i, align 8
  %3231 = inttoptr i64 %3229 to i32*
  %3232 = load i32, i32* %3231, align 4
  %3233 = add i32 %3232, 1
  %3234 = zext i32 %3233 to i64
  store i64 %3234, i64* %RCX.i1565, align 8
  %3235 = icmp eq i32 %3232, -1
  %3236 = icmp eq i32 %3233, 0
  %3237 = or i1 %3235, %3236
  %3238 = zext i1 %3237 to i8
  store i8 %3238, i8* %51, align 1
  %3239 = and i32 %3233, 255
  %3240 = tail call i32 @llvm.ctpop.i32(i32 %3239)
  %3241 = trunc i32 %3240 to i8
  %3242 = and i8 %3241, 1
  %3243 = xor i8 %3242, 1
  store i8 %3243, i8* %52, align 1
  %3244 = xor i32 %3232, %3233
  %3245 = lshr i32 %3244, 4
  %3246 = trunc i32 %3245 to i8
  %3247 = and i8 %3246, 1
  store i8 %3247, i8* %53, align 1
  %3248 = icmp eq i32 %3233, 0
  %3249 = zext i1 %3248 to i8
  store i8 %3249, i8* %54, align 1
  %3250 = lshr i32 %3233, 31
  %3251 = trunc i32 %3250 to i8
  store i8 %3251, i8* %55, align 1
  %3252 = lshr i32 %3232, 31
  %3253 = xor i32 %3250, %3252
  %3254 = add nuw nsw i32 %3253, %3250
  %3255 = icmp eq i32 %3254, 2
  %3256 = zext i1 %3255 to i8
  store i8 %3256, i8* %56, align 1
  %3257 = sext i32 %3233 to i64
  store i64 %3257, i64* %RSI.i1613, align 8
  %3258 = shl nsw i64 %3257, 3
  %3259 = add i64 %3258, %3228
  %3260 = add i64 %3220, 23
  store i64 %3260, i64* %PC.i, align 8
  %3261 = inttoptr i64 %3259 to i64*
  store i64 %3223, i64* %3261, align 8
  %3262 = load i64, i64* %RBP.i, align 8
  %3263 = add i64 %3262, -52
  %3264 = load i64, i64* %PC.i, align 8
  %3265 = add i64 %3264, 3
  store i64 %3265, i64* %PC.i, align 8
  %3266 = inttoptr i64 %3263 to i32*
  %3267 = load i32, i32* %3266, align 4
  %3268 = zext i32 %3267 to i64
  store i64 %3268, i64* %RCX.i1565, align 8
  %3269 = add i64 %3262, -32
  %3270 = add i64 %3264, 6
  store i64 %3270, i64* %PC.i, align 8
  %3271 = inttoptr i64 %3269 to i32*
  %3272 = load i32, i32* %3271, align 4
  %3273 = add i32 %3272, %3267
  %3274 = zext i32 %3273 to i64
  store i64 %3274, i64* %RCX.i1565, align 8
  %3275 = icmp ult i32 %3273, %3267
  %3276 = icmp ult i32 %3273, %3272
  %3277 = or i1 %3275, %3276
  %3278 = zext i1 %3277 to i8
  store i8 %3278, i8* %51, align 1
  %3279 = and i32 %3273, 255
  %3280 = tail call i32 @llvm.ctpop.i32(i32 %3279)
  %3281 = trunc i32 %3280 to i8
  %3282 = and i8 %3281, 1
  %3283 = xor i8 %3282, 1
  store i8 %3283, i8* %52, align 1
  %3284 = xor i32 %3272, %3267
  %3285 = xor i32 %3284, %3273
  %3286 = lshr i32 %3285, 4
  %3287 = trunc i32 %3286 to i8
  %3288 = and i8 %3287, 1
  store i8 %3288, i8* %53, align 1
  %3289 = icmp eq i32 %3273, 0
  %3290 = zext i1 %3289 to i8
  store i8 %3290, i8* %54, align 1
  %3291 = lshr i32 %3273, 31
  %3292 = trunc i32 %3291 to i8
  store i8 %3292, i8* %55, align 1
  %3293 = lshr i32 %3267, 31
  %3294 = lshr i32 %3272, 31
  %3295 = xor i32 %3291, %3293
  %3296 = xor i32 %3291, %3294
  %3297 = add nuw nsw i32 %3295, %3296
  %3298 = icmp eq i32 %3297, 2
  %3299 = zext i1 %3298 to i8
  store i8 %3299, i8* %56, align 1
  %3300 = add i64 %3264, 9
  store i64 %3300, i64* %PC.i, align 8
  store i32 %3273, i32* %3271, align 4
  %3301 = load i64, i64* %RBP.i, align 8
  %3302 = add i64 %3301, -52
  %3303 = load i64, i64* %PC.i, align 8
  %3304 = add i64 %3303, 3
  store i64 %3304, i64* %PC.i, align 8
  %3305 = inttoptr i64 %3302 to i32*
  %3306 = load i32, i32* %3305, align 4
  %3307 = zext i32 %3306 to i64
  store i64 %3307, i64* %RCX.i1565, align 8
  %3308 = add i64 %3301, -40
  %3309 = add i64 %3303, 6
  store i64 %3309, i64* %PC.i, align 8
  %3310 = inttoptr i64 %3308 to i32*
  %3311 = load i32, i32* %3310, align 4
  %3312 = add i32 %3311, %3306
  %3313 = zext i32 %3312 to i64
  store i64 %3313, i64* %RCX.i1565, align 8
  %3314 = icmp ult i32 %3312, %3306
  %3315 = icmp ult i32 %3312, %3311
  %3316 = or i1 %3314, %3315
  %3317 = zext i1 %3316 to i8
  store i8 %3317, i8* %51, align 1
  %3318 = and i32 %3312, 255
  %3319 = tail call i32 @llvm.ctpop.i32(i32 %3318)
  %3320 = trunc i32 %3319 to i8
  %3321 = and i8 %3320, 1
  %3322 = xor i8 %3321, 1
  store i8 %3322, i8* %52, align 1
  %3323 = xor i32 %3311, %3306
  %3324 = xor i32 %3323, %3312
  %3325 = lshr i32 %3324, 4
  %3326 = trunc i32 %3325 to i8
  %3327 = and i8 %3326, 1
  store i8 %3327, i8* %53, align 1
  %3328 = icmp eq i32 %3312, 0
  %3329 = zext i1 %3328 to i8
  store i8 %3329, i8* %54, align 1
  %3330 = lshr i32 %3312, 31
  %3331 = trunc i32 %3330 to i8
  store i8 %3331, i8* %55, align 1
  %3332 = lshr i32 %3306, 31
  %3333 = lshr i32 %3311, 31
  %3334 = xor i32 %3330, %3332
  %3335 = xor i32 %3330, %3333
  %3336 = add nuw nsw i32 %3334, %3335
  %3337 = icmp eq i32 %3336, 2
  %3338 = zext i1 %3337 to i8
  store i8 %3338, i8* %56, align 1
  %3339 = add i64 %3303, 9
  store i64 %3339, i64* %PC.i, align 8
  store i32 %3312, i32* %3310, align 4
  %3340 = load i64, i64* %RBP.i, align 8
  %3341 = add i64 %3340, -24
  %3342 = load i64, i64* %PC.i, align 8
  %3343 = add i64 %3342, 4
  store i64 %3343, i64* %PC.i, align 8
  %3344 = inttoptr i64 %3341 to i64*
  %3345 = load i64, i64* %3344, align 8
  store i64 %3345, i64* %RDX.i1610, align 8
  %3346 = add i64 %3340, -32
  %3347 = add i64 %3342, 8
  store i64 %3347, i64* %PC.i, align 8
  %3348 = inttoptr i64 %3346 to i32*
  %3349 = load i32, i32* %3348, align 4
  %3350 = sext i32 %3349 to i64
  store i64 %3350, i64* %RSI.i1613, align 8
  %3351 = shl nsw i64 %3350, 3
  %3352 = add i64 %3351, %3345
  %3353 = add i64 %3342, 13
  store i64 %3353, i64* %PC.i, align 8
  %3354 = inttoptr i64 %3352 to i64*
  %3355 = load i64, i64* %3354, align 8
  %3356 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %2665, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %3355, i64* %3356, align 1
  store double 0.000000e+00, double* %2671, align 1
  %3357 = add i64 %3340, -64
  %3358 = add i64 %3342, 18
  store i64 %3358, i64* %PC.i, align 8
  %3359 = inttoptr i64 %3357 to i64*
  store i64 %3355, i64* %3359, align 8
  %3360 = load i64, i64* %RBP.i, align 8
  %3361 = add i64 %3360, -24
  %3362 = load i64, i64* %PC.i, align 8
  %3363 = add i64 %3362, 4
  store i64 %3363, i64* %PC.i, align 8
  %3364 = inttoptr i64 %3361 to i64*
  %3365 = load i64, i64* %3364, align 8
  store i64 %3365, i64* %RDX.i1610, align 8
  %3366 = add i64 %3360, -32
  %3367 = add i64 %3362, 7
  store i64 %3367, i64* %PC.i, align 8
  %3368 = inttoptr i64 %3366 to i32*
  %3369 = load i32, i32* %3368, align 4
  %3370 = add i32 %3369, 1
  %3371 = zext i32 %3370 to i64
  store i64 %3371, i64* %RCX.i1565, align 8
  %3372 = icmp eq i32 %3369, -1
  %3373 = icmp eq i32 %3370, 0
  %3374 = or i1 %3372, %3373
  %3375 = zext i1 %3374 to i8
  store i8 %3375, i8* %51, align 1
  %3376 = and i32 %3370, 255
  %3377 = tail call i32 @llvm.ctpop.i32(i32 %3376)
  %3378 = trunc i32 %3377 to i8
  %3379 = and i8 %3378, 1
  %3380 = xor i8 %3379, 1
  store i8 %3380, i8* %52, align 1
  %3381 = xor i32 %3369, %3370
  %3382 = lshr i32 %3381, 4
  %3383 = trunc i32 %3382 to i8
  %3384 = and i8 %3383, 1
  store i8 %3384, i8* %53, align 1
  %3385 = icmp eq i32 %3370, 0
  %3386 = zext i1 %3385 to i8
  store i8 %3386, i8* %54, align 1
  %3387 = lshr i32 %3370, 31
  %3388 = trunc i32 %3387 to i8
  store i8 %3388, i8* %55, align 1
  %3389 = lshr i32 %3369, 31
  %3390 = xor i32 %3387, %3389
  %3391 = add nuw nsw i32 %3390, %3387
  %3392 = icmp eq i32 %3391, 2
  %3393 = zext i1 %3392 to i8
  store i8 %3393, i8* %56, align 1
  %3394 = sext i32 %3370 to i64
  store i64 %3394, i64* %RSI.i1613, align 8
  %3395 = shl nsw i64 %3394, 3
  %3396 = add i64 %3395, %3365
  %3397 = add i64 %3362, 18
  store i64 %3397, i64* %PC.i, align 8
  %3398 = inttoptr i64 %3396 to i64*
  %3399 = load i64, i64* %3398, align 8
  %3400 = load i64, i64* %RAX.i1594, align 8
  %3401 = xor i64 %3400, %3399
  store i64 %3401, i64* %RDX.i1610, align 8
  store i8 0, i8* %51, align 1
  %3402 = trunc i64 %3401 to i32
  %3403 = and i32 %3402, 255
  %3404 = tail call i32 @llvm.ctpop.i32(i32 %3403)
  %3405 = trunc i32 %3404 to i8
  %3406 = and i8 %3405, 1
  %3407 = xor i8 %3406, 1
  store i8 %3407, i8* %52, align 1
  %3408 = icmp eq i64 %3401, 0
  %3409 = zext i1 %3408 to i8
  store i8 %3409, i8* %54, align 1
  %3410 = lshr i64 %3401, 63
  %3411 = trunc i64 %3410 to i8
  store i8 %3411, i8* %55, align 1
  store i8 0, i8* %56, align 1
  store i8 0, i8* %53, align 1
  store i64 %3401, i64* %2683, align 1
  store i64 0, i64* %2670, align 1
  %3412 = add i64 %3360, -72
  %3413 = add i64 %3362, 36
  store i64 %3413, i64* %PC.i, align 8
  %3414 = inttoptr i64 %3412 to i64*
  store i64 %3401, i64* %3414, align 8
  %3415 = load i64, i64* %RBP.i, align 8
  %3416 = add i64 %3415, -24
  %3417 = load i64, i64* %PC.i, align 8
  %3418 = add i64 %3417, 4
  store i64 %3418, i64* %PC.i, align 8
  %3419 = inttoptr i64 %3416 to i64*
  %3420 = load i64, i64* %3419, align 8
  store i64 %3420, i64* %RDX.i1610, align 8
  %3421 = add i64 %3415, -40
  %3422 = add i64 %3417, 8
  store i64 %3422, i64* %PC.i, align 8
  %3423 = inttoptr i64 %3421 to i32*
  %3424 = load i32, i32* %3423, align 4
  %3425 = sext i32 %3424 to i64
  store i64 %3425, i64* %RSI.i1613, align 8
  %3426 = shl nsw i64 %3425, 3
  %3427 = add i64 %3426, %3420
  %3428 = add i64 %3417, 13
  store i64 %3428, i64* %PC.i, align 8
  %3429 = inttoptr i64 %3427 to i64*
  %3430 = load i64, i64* %3429, align 8
  %3431 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %2665, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %3430, i64* %3431, align 1
  store double 0.000000e+00, double* %2671, align 1
  %3432 = add i64 %3415, -80
  %3433 = add i64 %3417, 18
  store i64 %3433, i64* %PC.i, align 8
  %3434 = inttoptr i64 %3432 to i64*
  store i64 %3430, i64* %3434, align 8
  %3435 = load i64, i64* %RBP.i, align 8
  %3436 = add i64 %3435, -24
  %3437 = load i64, i64* %PC.i, align 8
  %3438 = add i64 %3437, 4
  store i64 %3438, i64* %PC.i, align 8
  %3439 = inttoptr i64 %3436 to i64*
  %3440 = load i64, i64* %3439, align 8
  store i64 %3440, i64* %RDX.i1610, align 8
  %3441 = add i64 %3435, -40
  %3442 = add i64 %3437, 7
  store i64 %3442, i64* %PC.i, align 8
  %3443 = inttoptr i64 %3441 to i32*
  %3444 = load i32, i32* %3443, align 4
  %3445 = add i32 %3444, 1
  %3446 = zext i32 %3445 to i64
  store i64 %3446, i64* %RCX.i1565, align 8
  %3447 = icmp eq i32 %3444, -1
  %3448 = icmp eq i32 %3445, 0
  %3449 = or i1 %3447, %3448
  %3450 = zext i1 %3449 to i8
  store i8 %3450, i8* %51, align 1
  %3451 = and i32 %3445, 255
  %3452 = tail call i32 @llvm.ctpop.i32(i32 %3451)
  %3453 = trunc i32 %3452 to i8
  %3454 = and i8 %3453, 1
  %3455 = xor i8 %3454, 1
  store i8 %3455, i8* %52, align 1
  %3456 = xor i32 %3444, %3445
  %3457 = lshr i32 %3456, 4
  %3458 = trunc i32 %3457 to i8
  %3459 = and i8 %3458, 1
  store i8 %3459, i8* %53, align 1
  %3460 = icmp eq i32 %3445, 0
  %3461 = zext i1 %3460 to i8
  store i8 %3461, i8* %54, align 1
  %3462 = lshr i32 %3445, 31
  %3463 = trunc i32 %3462 to i8
  store i8 %3463, i8* %55, align 1
  %3464 = lshr i32 %3444, 31
  %3465 = xor i32 %3462, %3464
  %3466 = add nuw nsw i32 %3465, %3462
  %3467 = icmp eq i32 %3466, 2
  %3468 = zext i1 %3467 to i8
  store i8 %3468, i8* %56, align 1
  %3469 = sext i32 %3445 to i64
  store i64 %3469, i64* %RSI.i1613, align 8
  %3470 = shl nsw i64 %3469, 3
  %3471 = add i64 %3470, %3440
  %3472 = add i64 %3437, 18
  store i64 %3472, i64* %PC.i, align 8
  %3473 = inttoptr i64 %3471 to i64*
  %3474 = load i64, i64* %3473, align 8
  %3475 = load i64, i64* %RAX.i1594, align 8
  %3476 = xor i64 %3475, %3474
  store i64 %3476, i64* %RDX.i1610, align 8
  store i8 0, i8* %51, align 1
  %3477 = trunc i64 %3476 to i32
  %3478 = and i32 %3477, 255
  %3479 = tail call i32 @llvm.ctpop.i32(i32 %3478)
  %3480 = trunc i32 %3479 to i8
  %3481 = and i8 %3480, 1
  %3482 = xor i8 %3481, 1
  store i8 %3482, i8* %52, align 1
  %3483 = icmp eq i64 %3476, 0
  %3484 = zext i1 %3483 to i8
  store i8 %3484, i8* %54, align 1
  %3485 = lshr i64 %3476, 63
  %3486 = trunc i64 %3485 to i8
  store i8 %3486, i8* %55, align 1
  store i8 0, i8* %56, align 1
  store i8 0, i8* %53, align 1
  store i64 %3476, i64* %2683, align 1
  store i64 0, i64* %2670, align 1
  %3487 = add i64 %3435, -88
  %3488 = add i64 %3437, 36
  store i64 %3488, i64* %PC.i, align 8
  %3489 = inttoptr i64 %3487 to i64*
  store i64 %3476, i64* %3489, align 8
  %3490 = load i64, i64* %RBP.i, align 8
  %3491 = add i64 %3490, -80
  %3492 = load i64, i64* %PC.i, align 8
  %3493 = add i64 %3492, 5
  store i64 %3493, i64* %PC.i, align 8
  %3494 = inttoptr i64 %3491 to i64*
  %3495 = load i64, i64* %3494, align 8
  %3496 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %2665, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %3495, i64* %3496, align 1
  store double 0.000000e+00, double* %2671, align 1
  %3497 = add i64 %3490, -24
  %3498 = add i64 %3492, 9
  store i64 %3498, i64* %PC.i, align 8
  %3499 = inttoptr i64 %3497 to i64*
  %3500 = load i64, i64* %3499, align 8
  store i64 %3500, i64* %RAX.i1594, align 8
  %3501 = add i64 %3490, -32
  %3502 = add i64 %3492, 13
  store i64 %3502, i64* %PC.i, align 8
  %3503 = inttoptr i64 %3501 to i32*
  %3504 = load i32, i32* %3503, align 4
  %3505 = sext i32 %3504 to i64
  store i64 %3505, i64* %RDX.i1610, align 8
  %3506 = shl nsw i64 %3505, 3
  %3507 = add i64 %3506, %3500
  %3508 = add i64 %3492, 18
  store i64 %3508, i64* %PC.i, align 8
  %3509 = inttoptr i64 %3507 to i64*
  store i64 %3495, i64* %3509, align 8
  %3510 = load i64, i64* %RBP.i, align 8
  %3511 = add i64 %3510, -88
  %3512 = load i64, i64* %PC.i, align 8
  %3513 = add i64 %3512, 5
  store i64 %3513, i64* %PC.i, align 8
  %3514 = inttoptr i64 %3511 to i64*
  %3515 = load i64, i64* %3514, align 8
  %3516 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %2665, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %3515, i64* %3516, align 1
  store double 0.000000e+00, double* %2671, align 1
  %3517 = add i64 %3510, -24
  %3518 = add i64 %3512, 9
  store i64 %3518, i64* %PC.i, align 8
  %3519 = inttoptr i64 %3517 to i64*
  %3520 = load i64, i64* %3519, align 8
  store i64 %3520, i64* %RAX.i1594, align 8
  %3521 = add i64 %3510, -32
  %3522 = add i64 %3512, 12
  store i64 %3522, i64* %PC.i, align 8
  %3523 = inttoptr i64 %3521 to i32*
  %3524 = load i32, i32* %3523, align 4
  %3525 = add i32 %3524, 1
  %3526 = zext i32 %3525 to i64
  store i64 %3526, i64* %RCX.i1565, align 8
  %3527 = icmp eq i32 %3524, -1
  %3528 = icmp eq i32 %3525, 0
  %3529 = or i1 %3527, %3528
  %3530 = zext i1 %3529 to i8
  store i8 %3530, i8* %51, align 1
  %3531 = and i32 %3525, 255
  %3532 = tail call i32 @llvm.ctpop.i32(i32 %3531)
  %3533 = trunc i32 %3532 to i8
  %3534 = and i8 %3533, 1
  %3535 = xor i8 %3534, 1
  store i8 %3535, i8* %52, align 1
  %3536 = xor i32 %3524, %3525
  %3537 = lshr i32 %3536, 4
  %3538 = trunc i32 %3537 to i8
  %3539 = and i8 %3538, 1
  store i8 %3539, i8* %53, align 1
  %3540 = icmp eq i32 %3525, 0
  %3541 = zext i1 %3540 to i8
  store i8 %3541, i8* %54, align 1
  %3542 = lshr i32 %3525, 31
  %3543 = trunc i32 %3542 to i8
  store i8 %3543, i8* %55, align 1
  %3544 = lshr i32 %3524, 31
  %3545 = xor i32 %3542, %3544
  %3546 = add nuw nsw i32 %3545, %3542
  %3547 = icmp eq i32 %3546, 2
  %3548 = zext i1 %3547 to i8
  store i8 %3548, i8* %56, align 1
  %3549 = sext i32 %3525 to i64
  store i64 %3549, i64* %RDX.i1610, align 8
  %3550 = shl nsw i64 %3549, 3
  %3551 = add i64 %3550, %3520
  %3552 = add i64 %3512, 23
  store i64 %3552, i64* %PC.i, align 8
  %3553 = inttoptr i64 %3551 to i64*
  store i64 %3515, i64* %3553, align 8
  %3554 = load i64, i64* %RBP.i, align 8
  %3555 = add i64 %3554, -64
  %3556 = load i64, i64* %PC.i, align 8
  %3557 = add i64 %3556, 5
  store i64 %3557, i64* %PC.i, align 8
  %3558 = inttoptr i64 %3555 to i64*
  %3559 = load i64, i64* %3558, align 8
  %3560 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %2665, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %3559, i64* %3560, align 1
  store double 0.000000e+00, double* %2671, align 1
  %3561 = add i64 %3554, -24
  %3562 = add i64 %3556, 9
  store i64 %3562, i64* %PC.i, align 8
  %3563 = inttoptr i64 %3561 to i64*
  %3564 = load i64, i64* %3563, align 8
  store i64 %3564, i64* %RAX.i1594, align 8
  %3565 = add i64 %3554, -40
  %3566 = add i64 %3556, 13
  store i64 %3566, i64* %PC.i, align 8
  %3567 = inttoptr i64 %3565 to i32*
  %3568 = load i32, i32* %3567, align 4
  %3569 = sext i32 %3568 to i64
  store i64 %3569, i64* %RDX.i1610, align 8
  %3570 = shl nsw i64 %3569, 3
  %3571 = add i64 %3570, %3564
  %3572 = add i64 %3556, 18
  store i64 %3572, i64* %PC.i, align 8
  %3573 = inttoptr i64 %3571 to i64*
  store i64 %3559, i64* %3573, align 8
  %3574 = load i64, i64* %RBP.i, align 8
  %3575 = add i64 %3574, -72
  %3576 = load i64, i64* %PC.i, align 8
  %3577 = add i64 %3576, 5
  store i64 %3577, i64* %PC.i, align 8
  %3578 = inttoptr i64 %3575 to i64*
  %3579 = load i64, i64* %3578, align 8
  %3580 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %2665, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %3579, i64* %3580, align 1
  store double 0.000000e+00, double* %2671, align 1
  %3581 = add i64 %3574, -24
  %3582 = add i64 %3576, 9
  store i64 %3582, i64* %PC.i, align 8
  %3583 = inttoptr i64 %3581 to i64*
  %3584 = load i64, i64* %3583, align 8
  store i64 %3584, i64* %RAX.i1594, align 8
  %3585 = add i64 %3574, -40
  %3586 = add i64 %3576, 12
  store i64 %3586, i64* %PC.i, align 8
  %3587 = inttoptr i64 %3585 to i32*
  %3588 = load i32, i32* %3587, align 4
  %3589 = add i32 %3588, 1
  %3590 = zext i32 %3589 to i64
  store i64 %3590, i64* %RCX.i1565, align 8
  %3591 = icmp eq i32 %3588, -1
  %3592 = icmp eq i32 %3589, 0
  %3593 = or i1 %3591, %3592
  %3594 = zext i1 %3593 to i8
  store i8 %3594, i8* %51, align 1
  %3595 = and i32 %3589, 255
  %3596 = tail call i32 @llvm.ctpop.i32(i32 %3595)
  %3597 = trunc i32 %3596 to i8
  %3598 = and i8 %3597, 1
  %3599 = xor i8 %3598, 1
  store i8 %3599, i8* %52, align 1
  %3600 = xor i32 %3588, %3589
  %3601 = lshr i32 %3600, 4
  %3602 = trunc i32 %3601 to i8
  %3603 = and i8 %3602, 1
  store i8 %3603, i8* %53, align 1
  %3604 = icmp eq i32 %3589, 0
  %3605 = zext i1 %3604 to i8
  store i8 %3605, i8* %54, align 1
  %3606 = lshr i32 %3589, 31
  %3607 = trunc i32 %3606 to i8
  store i8 %3607, i8* %55, align 1
  %3608 = lshr i32 %3588, 31
  %3609 = xor i32 %3606, %3608
  %3610 = add nuw nsw i32 %3609, %3606
  %3611 = icmp eq i32 %3610, 2
  %3612 = zext i1 %3611 to i8
  store i8 %3612, i8* %56, align 1
  %3613 = sext i32 %3589 to i64
  store i64 %3613, i64* %RDX.i1610, align 8
  %3614 = shl nsw i64 %3613, 3
  %3615 = add i64 %3614, %3584
  %3616 = add i64 %3576, 23
  store i64 %3616, i64* %PC.i, align 8
  %3617 = inttoptr i64 %3615 to i64*
  store i64 %3579, i64* %3617, align 8
  %3618 = load i64, i64* %RBP.i, align 8
  %3619 = add i64 %3618, -28
  %3620 = load i64, i64* %PC.i, align 8
  %3621 = add i64 %3620, 3
  store i64 %3621, i64* %PC.i, align 8
  %3622 = inttoptr i64 %3619 to i32*
  %3623 = load i32, i32* %3622, align 4
  %3624 = add i32 %3623, 1
  %3625 = zext i32 %3624 to i64
  store i64 %3625, i64* %RAX.i1594, align 8
  %3626 = icmp eq i32 %3623, -1
  %3627 = icmp eq i32 %3624, 0
  %3628 = or i1 %3626, %3627
  %3629 = zext i1 %3628 to i8
  store i8 %3629, i8* %51, align 1
  %3630 = and i32 %3624, 255
  %3631 = tail call i32 @llvm.ctpop.i32(i32 %3630)
  %3632 = trunc i32 %3631 to i8
  %3633 = and i8 %3632, 1
  %3634 = xor i8 %3633, 1
  store i8 %3634, i8* %52, align 1
  %3635 = xor i32 %3623, %3624
  %3636 = lshr i32 %3635, 4
  %3637 = trunc i32 %3636 to i8
  %3638 = and i8 %3637, 1
  store i8 %3638, i8* %53, align 1
  %3639 = icmp eq i32 %3624, 0
  %3640 = zext i1 %3639 to i8
  store i8 %3640, i8* %54, align 1
  %3641 = lshr i32 %3624, 31
  %3642 = trunc i32 %3641 to i8
  store i8 %3642, i8* %55, align 1
  %3643 = lshr i32 %3623, 31
  %3644 = xor i32 %3641, %3643
  %3645 = add nuw nsw i32 %3644, %3641
  %3646 = icmp eq i32 %3645, 2
  %3647 = zext i1 %3646 to i8
  store i8 %3647, i8* %56, align 1
  %3648 = add i64 %3620, 9
  store i64 %3648, i64* %PC.i, align 8
  store i32 %3624, i32* %3622, align 4
  %3649 = load i64, i64* %PC.i, align 8
  %3650 = add i64 %3649, -469
  store i64 %3650, i64* %3, align 8
  br label %block_.L_4021ff

block_.L_4023d9:                                  ; preds = %block_.L_4021ff
  %3651 = load i32, i32* %2829, align 4
  %3652 = shl i32 %3651, 1
  %3653 = icmp slt i32 %3651, 0
  %3654 = icmp slt i32 %3652, 0
  %3655 = xor i1 %3653, %3654
  %3656 = zext i32 %3652 to i64
  store i64 %3656, i64* %RCX.i1565, align 8
  %.lobit22 = lshr i32 %3651, 31
  %3657 = trunc i32 %.lobit22 to i8
  store i8 %3657, i8* %51, align 1
  %3658 = and i32 %3652, 254
  %3659 = tail call i32 @llvm.ctpop.i32(i32 %3658)
  %3660 = trunc i32 %3659 to i8
  %3661 = and i8 %3660, 1
  %3662 = xor i8 %3661, 1
  store i8 %3662, i8* %52, align 1
  store i8 0, i8* %53, align 1
  %3663 = icmp eq i32 %3652, 0
  %3664 = zext i1 %3663 to i8
  store i8 %3664, i8* %54, align 1
  %3665 = lshr i32 %3651, 30
  %3666 = and i32 %3665, 1
  %3667 = trunc i32 %3666 to i8
  store i8 %3667, i8* %55, align 1
  %3668 = zext i1 %3655 to i8
  store i8 %3668, i8* %56, align 1
  %3669 = add i64 %2821, -16
  %3670 = add i64 %2857, 19
  store i64 %3670, i64* %PC.i, align 8
  %3671 = inttoptr i64 %3669 to i64*
  %3672 = load i64, i64* %3671, align 8
  store i64 %3672, i64* %RDX.i1610, align 8
  %3673 = add i64 %2857, 23
  store i64 %3673, i64* %PC.i, align 8
  %3674 = load i32, i32* %2829, align 4
  %3675 = sext i32 %3674 to i64
  store i64 %3675, i64* %RSI.i1613, align 8
  %3676 = shl nsw i64 %3675, 2
  %3677 = add i64 %3676, %3672
  %3678 = add i64 %2857, 26
  store i64 %3678, i64* %PC.i, align 8
  %3679 = inttoptr i64 %3677 to i32*
  %3680 = load i32, i32* %3679, align 4
  %3681 = add i32 %3680, %3652
  %3682 = zext i32 %3681 to i64
  store i64 %3682, i64* %RCX.i1565, align 8
  %3683 = icmp ult i32 %3681, %3652
  %3684 = icmp ult i32 %3681, %3680
  %3685 = or i1 %3683, %3684
  %3686 = zext i1 %3685 to i8
  store i8 %3686, i8* %51, align 1
  %3687 = and i32 %3681, 255
  %3688 = tail call i32 @llvm.ctpop.i32(i32 %3687)
  %3689 = trunc i32 %3688 to i8
  %3690 = and i8 %3689, 1
  %3691 = xor i8 %3690, 1
  store i8 %3691, i8* %52, align 1
  %3692 = xor i32 %3680, %3652
  %3693 = xor i32 %3692, %3681
  %3694 = lshr i32 %3693, 4
  %3695 = trunc i32 %3694 to i8
  %3696 = and i8 %3695, 1
  store i8 %3696, i8* %53, align 1
  %3697 = icmp eq i32 %3681, 0
  %3698 = zext i1 %3697 to i8
  store i8 %3698, i8* %54, align 1
  %3699 = lshr i32 %3681, 31
  %3700 = trunc i32 %3699 to i8
  store i8 %3700, i8* %55, align 1
  %3701 = lshr i32 %3680, 31
  %3702 = xor i32 %3699, %3666
  %3703 = xor i32 %3699, %3701
  %3704 = add nuw nsw i32 %3702, %3703
  %3705 = icmp eq i32 %3704, 2
  %3706 = zext i1 %3705 to i8
  store i8 %3706, i8* %56, align 1
  %3707 = add i64 %2821, -40
  %3708 = add i64 %2857, 29
  store i64 %3708, i64* %PC.i, align 8
  %3709 = inttoptr i64 %3707 to i32*
  store i32 %3681, i32* %3709, align 4
  %3710 = load i64, i64* %RBP.i, align 8
  %3711 = add i64 %3710, -24
  %3712 = load i64, i64* %PC.i, align 8
  %3713 = add i64 %3712, 4
  store i64 %3713, i64* %PC.i, align 8
  %3714 = inttoptr i64 %3711 to i64*
  %3715 = load i64, i64* %3714, align 8
  store i64 %3715, i64* %RDX.i1610, align 8
  %3716 = add i64 %3710, -40
  %3717 = add i64 %3712, 7
  store i64 %3717, i64* %PC.i, align 8
  %3718 = inttoptr i64 %3716 to i32*
  %3719 = load i32, i32* %3718, align 4
  %3720 = add i32 %3719, 1
  %3721 = zext i32 %3720 to i64
  store i64 %3721, i64* %RCX.i1565, align 8
  %3722 = icmp eq i32 %3719, -1
  %3723 = icmp eq i32 %3720, 0
  %3724 = or i1 %3722, %3723
  %3725 = zext i1 %3724 to i8
  store i8 %3725, i8* %51, align 1
  %3726 = and i32 %3720, 255
  %3727 = tail call i32 @llvm.ctpop.i32(i32 %3726)
  %3728 = trunc i32 %3727 to i8
  %3729 = and i8 %3728, 1
  %3730 = xor i8 %3729, 1
  store i8 %3730, i8* %52, align 1
  %3731 = xor i32 %3719, %3720
  %3732 = lshr i32 %3731, 4
  %3733 = trunc i32 %3732 to i8
  %3734 = and i8 %3733, 1
  store i8 %3734, i8* %53, align 1
  %3735 = icmp eq i32 %3720, 0
  %3736 = zext i1 %3735 to i8
  store i8 %3736, i8* %54, align 1
  %3737 = lshr i32 %3720, 31
  %3738 = trunc i32 %3737 to i8
  store i8 %3738, i8* %55, align 1
  %3739 = lshr i32 %3719, 31
  %3740 = xor i32 %3737, %3739
  %3741 = add nuw nsw i32 %3740, %3737
  %3742 = icmp eq i32 %3741, 2
  %3743 = zext i1 %3742 to i8
  store i8 %3743, i8* %56, align 1
  %3744 = sext i32 %3720 to i64
  store i64 %3744, i64* %RSI.i1613, align 8
  %3745 = shl nsw i64 %3744, 3
  %3746 = add i64 %3745, %3715
  %3747 = add i64 %3712, 18
  store i64 %3747, i64* %PC.i, align 8
  %3748 = inttoptr i64 %3746 to i64*
  %3749 = load i64, i64* %3748, align 8
  %3750 = load i64, i64* %RAX.i1594, align 8
  %3751 = xor i64 %3750, %3749
  store i64 %3751, i64* %RDX.i1610, align 8
  store i8 0, i8* %51, align 1
  %3752 = trunc i64 %3751 to i32
  %3753 = and i32 %3752, 255
  %3754 = tail call i32 @llvm.ctpop.i32(i32 %3753)
  %3755 = trunc i32 %3754 to i8
  %3756 = and i8 %3755, 1
  %3757 = xor i8 %3756, 1
  store i8 %3757, i8* %52, align 1
  %3758 = icmp eq i64 %3751, 0
  %3759 = zext i1 %3758 to i8
  store i8 %3759, i8* %54, align 1
  %3760 = lshr i64 %3751, 63
  %3761 = trunc i64 %3760 to i8
  store i8 %3761, i8* %55, align 1
  store i8 0, i8* %56, align 1
  store i8 0, i8* %53, align 1
  store i64 %3751, i64* %2683, align 1
  store i64 0, i64* %2670, align 1
  %3762 = add i64 %3712, 35
  store i64 %3762, i64* %PC.i, align 8
  %3763 = load i64, i64* %3714, align 8
  store i64 %3763, i64* %RDX.i1610, align 8
  %3764 = add i64 %3712, 38
  store i64 %3764, i64* %PC.i, align 8
  %3765 = load i32, i32* %3718, align 4
  %3766 = add i32 %3765, 1
  %3767 = zext i32 %3766 to i64
  store i64 %3767, i64* %RCX.i1565, align 8
  %3768 = icmp eq i32 %3765, -1
  %3769 = icmp eq i32 %3766, 0
  %3770 = or i1 %3768, %3769
  %3771 = zext i1 %3770 to i8
  store i8 %3771, i8* %51, align 1
  %3772 = and i32 %3766, 255
  %3773 = tail call i32 @llvm.ctpop.i32(i32 %3772)
  %3774 = trunc i32 %3773 to i8
  %3775 = and i8 %3774, 1
  %3776 = xor i8 %3775, 1
  store i8 %3776, i8* %52, align 1
  %3777 = xor i32 %3765, %3766
  %3778 = lshr i32 %3777, 4
  %3779 = trunc i32 %3778 to i8
  %3780 = and i8 %3779, 1
  store i8 %3780, i8* %53, align 1
  %3781 = icmp eq i32 %3766, 0
  %3782 = zext i1 %3781 to i8
  store i8 %3782, i8* %54, align 1
  %3783 = lshr i32 %3766, 31
  %3784 = trunc i32 %3783 to i8
  store i8 %3784, i8* %55, align 1
  %3785 = lshr i32 %3765, 31
  %3786 = xor i32 %3783, %3785
  %3787 = add nuw nsw i32 %3786, %3783
  %3788 = icmp eq i32 %3787, 2
  %3789 = zext i1 %3788 to i8
  store i8 %3789, i8* %56, align 1
  %3790 = sext i32 %3766 to i64
  store i64 %3790, i64* %RSI.i1613, align 8
  %3791 = shl nsw i64 %3790, 3
  %3792 = add i64 %3791, %3763
  %3793 = add i64 %3712, 49
  store i64 %3793, i64* %PC.i, align 8
  %3794 = inttoptr i64 %3792 to i64*
  store i64 %3751, i64* %3794, align 8
  %3795 = load i64, i64* %RBP.i, align 8
  %3796 = add i64 %3795, -24
  %3797 = load i64, i64* %PC.i, align 8
  %3798 = add i64 %3797, 4
  store i64 %3798, i64* %PC.i, align 8
  %3799 = inttoptr i64 %3796 to i64*
  %3800 = load i64, i64* %3799, align 8
  store i64 %3800, i64* %RDX.i1610, align 8
  %3801 = add i64 %3795, -40
  %3802 = add i64 %3797, 7
  store i64 %3802, i64* %PC.i, align 8
  %3803 = inttoptr i64 %3801 to i32*
  %3804 = load i32, i32* %3803, align 4
  %3805 = zext i32 %3804 to i64
  store i64 %3805, i64* %RCX.i1565, align 8
  %3806 = add i64 %3795, -52
  %3807 = add i64 %3797, 10
  store i64 %3807, i64* %PC.i, align 8
  %3808 = inttoptr i64 %3806 to i32*
  %3809 = load i32, i32* %3808, align 4
  %3810 = add i32 %3809, %3804
  %3811 = lshr i32 %3810, 31
  %3812 = add i32 %3810, 1
  %3813 = zext i32 %3812 to i64
  store i64 %3813, i64* %RCX.i1565, align 8
  %3814 = icmp eq i32 %3810, -1
  %3815 = icmp eq i32 %3812, 0
  %3816 = or i1 %3814, %3815
  %3817 = zext i1 %3816 to i8
  store i8 %3817, i8* %51, align 1
  %3818 = and i32 %3812, 255
  %3819 = tail call i32 @llvm.ctpop.i32(i32 %3818)
  %3820 = trunc i32 %3819 to i8
  %3821 = and i8 %3820, 1
  %3822 = xor i8 %3821, 1
  store i8 %3822, i8* %52, align 1
  %3823 = xor i32 %3810, %3812
  %3824 = lshr i32 %3823, 4
  %3825 = trunc i32 %3824 to i8
  %3826 = and i8 %3825, 1
  store i8 %3826, i8* %53, align 1
  %3827 = icmp eq i32 %3812, 0
  %3828 = zext i1 %3827 to i8
  store i8 %3828, i8* %54, align 1
  %3829 = lshr i32 %3812, 31
  %3830 = trunc i32 %3829 to i8
  store i8 %3830, i8* %55, align 1
  %3831 = xor i32 %3829, %3811
  %3832 = add nuw nsw i32 %3831, %3829
  %3833 = icmp eq i32 %3832, 2
  %3834 = zext i1 %3833 to i8
  store i8 %3834, i8* %56, align 1
  %3835 = sext i32 %3812 to i64
  store i64 %3835, i64* %RSI.i1613, align 8
  %3836 = shl nsw i64 %3835, 3
  %3837 = add i64 %3836, %3800
  %3838 = add i64 %3797, 21
  store i64 %3838, i64* %PC.i, align 8
  %3839 = inttoptr i64 %3837 to i64*
  %3840 = load i64, i64* %3839, align 8
  %3841 = load i64, i64* %RAX.i1594, align 8
  %3842 = xor i64 %3841, %3840
  store i64 %3842, i64* %RDX.i1610, align 8
  store i8 0, i8* %51, align 1
  %3843 = trunc i64 %3842 to i32
  %3844 = and i32 %3843, 255
  %3845 = tail call i32 @llvm.ctpop.i32(i32 %3844)
  %3846 = trunc i32 %3845 to i8
  %3847 = and i8 %3846, 1
  %3848 = xor i8 %3847, 1
  store i8 %3848, i8* %52, align 1
  %3849 = icmp eq i64 %3842, 0
  %3850 = zext i1 %3849 to i8
  store i8 %3850, i8* %54, align 1
  %3851 = lshr i64 %3842, 63
  %3852 = trunc i64 %3851 to i8
  store i8 %3852, i8* %55, align 1
  store i8 0, i8* %56, align 1
  store i8 0, i8* %53, align 1
  store i64 %3842, i64* %2683, align 1
  store i64 0, i64* %2670, align 1
  %3853 = load i64, i64* %RBP.i, align 8
  %3854 = add i64 %3853, -24
  %3855 = add i64 %3797, 38
  store i64 %3855, i64* %PC.i, align 8
  %3856 = inttoptr i64 %3854 to i64*
  %3857 = load i64, i64* %3856, align 8
  store i64 %3857, i64* %RAX.i1594, align 8
  %3858 = add i64 %3853, -40
  %3859 = add i64 %3797, 41
  store i64 %3859, i64* %PC.i, align 8
  %3860 = inttoptr i64 %3858 to i32*
  %3861 = load i32, i32* %3860, align 4
  %3862 = zext i32 %3861 to i64
  store i64 %3862, i64* %RCX.i1565, align 8
  %3863 = add i64 %3853, -52
  %3864 = add i64 %3797, 44
  store i64 %3864, i64* %PC.i, align 8
  %3865 = inttoptr i64 %3863 to i32*
  %3866 = load i32, i32* %3865, align 4
  %3867 = add i32 %3866, %3861
  %3868 = lshr i32 %3867, 31
  %3869 = add i32 %3867, 1
  %3870 = zext i32 %3869 to i64
  store i64 %3870, i64* %RCX.i1565, align 8
  %3871 = icmp eq i32 %3867, -1
  %3872 = icmp eq i32 %3869, 0
  %3873 = or i1 %3871, %3872
  %3874 = zext i1 %3873 to i8
  store i8 %3874, i8* %51, align 1
  %3875 = and i32 %3869, 255
  %3876 = tail call i32 @llvm.ctpop.i32(i32 %3875)
  %3877 = trunc i32 %3876 to i8
  %3878 = and i8 %3877, 1
  %3879 = xor i8 %3878, 1
  store i8 %3879, i8* %52, align 1
  %3880 = xor i32 %3867, %3869
  %3881 = lshr i32 %3880, 4
  %3882 = trunc i32 %3881 to i8
  %3883 = and i8 %3882, 1
  store i8 %3883, i8* %53, align 1
  %3884 = icmp eq i32 %3869, 0
  %3885 = zext i1 %3884 to i8
  store i8 %3885, i8* %54, align 1
  %3886 = lshr i32 %3869, 31
  %3887 = trunc i32 %3886 to i8
  store i8 %3887, i8* %55, align 1
  %3888 = xor i32 %3886, %3868
  %3889 = add nuw nsw i32 %3888, %3886
  %3890 = icmp eq i32 %3889, 2
  %3891 = zext i1 %3890 to i8
  store i8 %3891, i8* %56, align 1
  %3892 = sext i32 %3869 to i64
  store i64 %3892, i64* %RDX.i1610, align 8
  %3893 = shl nsw i64 %3892, 3
  %3894 = add i64 %3893, %3857
  %3895 = add i64 %3797, 55
  store i64 %3895, i64* %PC.i, align 8
  %3896 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %2665, i64 0, i32 0, i32 0, i32 0, i64 0
  %3897 = load i64, i64* %3896, align 1
  %3898 = inttoptr i64 %3894 to i64*
  store i64 %3897, i64* %3898, align 8
  %3899 = load i64, i64* %RBP.i, align 8
  %3900 = add i64 %3899, -36
  %3901 = load i64, i64* %PC.i, align 8
  %3902 = add i64 %3901, 3
  store i64 %3902, i64* %PC.i, align 8
  %3903 = inttoptr i64 %3900 to i32*
  %3904 = load i32, i32* %3903, align 4
  %3905 = add i32 %3904, 1
  %3906 = zext i32 %3905 to i64
  store i64 %3906, i64* %RAX.i1594, align 8
  %3907 = icmp eq i32 %3904, -1
  %3908 = icmp eq i32 %3905, 0
  %3909 = or i1 %3907, %3908
  %3910 = zext i1 %3909 to i8
  store i8 %3910, i8* %51, align 1
  %3911 = and i32 %3905, 255
  %3912 = tail call i32 @llvm.ctpop.i32(i32 %3911)
  %3913 = trunc i32 %3912 to i8
  %3914 = and i8 %3913, 1
  %3915 = xor i8 %3914, 1
  store i8 %3915, i8* %52, align 1
  %3916 = xor i32 %3904, %3905
  %3917 = lshr i32 %3916, 4
  %3918 = trunc i32 %3917 to i8
  %3919 = and i8 %3918, 1
  store i8 %3919, i8* %53, align 1
  %3920 = icmp eq i32 %3905, 0
  %3921 = zext i1 %3920 to i8
  store i8 %3921, i8* %54, align 1
  %3922 = lshr i32 %3905, 31
  %3923 = trunc i32 %3922 to i8
  store i8 %3923, i8* %55, align 1
  %3924 = lshr i32 %3904, 31
  %3925 = xor i32 %3922, %3924
  %3926 = add nuw nsw i32 %3925, %3922
  %3927 = icmp eq i32 %3926, 2
  %3928 = zext i1 %3927 to i8
  store i8 %3928, i8* %56, align 1
  %3929 = add i64 %3901, 9
  store i64 %3929, i64* %PC.i, align 8
  store i32 %3905, i32* %3903, align 4
  %3930 = load i64, i64* %PC.i, align 8
  %3931 = add i64 %3930, -636
  store i64 %3931, i64* %3, align 8
  br label %block_.L_4021ec

block_.L_40246d:                                  ; preds = %block_.L_4021ec
  %3932 = add i64 %2816, 5
  br label %block_.L_402472

block_.L_402472:                                  ; preds = %block_.L_40246d, %block_.L_402186
  %.sink = phi i64 [ %3932, %block_.L_40246d ], [ %2660, %block_.L_402186 ]
  %3933 = add i64 %.sink, 1
  store i64 %3933, i64* %PC.i, align 8
  %3934 = load i64, i64* %6, align 8
  %3935 = add i64 %3934, 8
  %3936 = inttoptr i64 %3934 to i64*
  %3937 = load i64, i64* %3936, align 8
  store i64 %3937, i64* %RBP.i, align 8
  store i64 %3935, i64* %6, align 8
  %3938 = add i64 %.sink, 2
  store i64 %3938, i64* %PC.i, align 8
  %3939 = inttoptr i64 %3935 to i64*
  %3940 = load i64, i64* %3939, align 8
  store i64 %3940, i64* %3, align 8
  %3941 = add i64 %3934, 16
  store i64 %3941, i64* %6, align 8
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
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %14 = add i64 %3, %.v
  store i64 %14, i64* %13, align 8
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
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %14 = add i64 %3, %.v
  store i64 %14, i64* %13, align 8
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
  %20 = trunc i64 %3 to i32
  %21 = xor i32 %20, %7
  %22 = lshr i32 %21, 4
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1
  %26 = icmp eq i32 %7, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %7, 31
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %6, 31
  %33 = xor i32 %29, %32
  %34 = add nuw nsw i32 %33, %29
  %35 = icmp eq i32 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
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
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shll__0x1___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
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
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %9 = add i64 %3, %.v
  store i64 %9, i64* %8, align 8
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
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %14 = add i64 %3, %.v
  store i64 %14, i64* %13, align 8
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
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %14 = add i64 %3, %.v
  store i64 %14, i64* %13, align 8
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
  %20 = trunc i64 %3 to i32
  %21 = xor i32 %20, %7
  %22 = lshr i32 %21, 4
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1
  %26 = icmp eq i32 %7, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %7, 31
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %6, 31
  %33 = xor i32 %29, %32
  %34 = add nuw nsw i32 %33, %29
  %35 = icmp eq i32 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
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
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
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
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_402472(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
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
  %20 = trunc i64 %3 to i32
  %21 = xor i32 %20, %7
  %22 = lshr i32 %21, 4
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1
  %26 = icmp eq i32 %7, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %7, 31
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %6, 31
  %33 = xor i32 %29, %32
  %34 = add nuw nsw i32 %33, %29
  %35 = icmp eq i32 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
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
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %14 = add i64 %3, %.v
  store i64 %14, i64* %13, align 8
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
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %14 = add i64 %3, %.v
  store i64 %14, i64* %13, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4021ff(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4021ec(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
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
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to i64*
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %5, align 8
  %10 = add i64 %7, 8
  store i64 %10, i64* %6, align 8
  ret %struct.Memory* %2
}

attributes #0 = { nounwind readnone }
attributes #1 = { alwaysinline }
