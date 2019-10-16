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
define %struct.Memory* @cftmdl(%struct.State* noalias, i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #1 {
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
  %10 = load i64, i64* %3, align 8
  store i64 %8, i64* %RBP.i, align 8
  %11 = add i64 %7, -56
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 48
  %13 = zext i1 %12 to i8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %13, i8* %14, align 1
  %15 = trunc i64 %11 to i32
  %16 = and i32 %15, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16)
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
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i = bitcast %union.anon* %40 to i32*
  %41 = add i64 %7, -12
  %42 = load i32, i32* %EDI.i, align 4
  %43 = add i64 %10, 10
  store i64 %43, i64* %3, align 8
  %44 = inttoptr i64 %41 to i32*
  store i32 %42, i32* %44, align 4
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i2242 = bitcast %union.anon* %45 to i32*
  %46 = load i64, i64* %RBP.i, align 8
  %47 = add i64 %46, -8
  %48 = load i32, i32* %ESI.i2242, align 4
  %49 = load i64, i64* %3, align 8
  %50 = add i64 %49, 3
  store i64 %50, i64* %3, align 8
  %51 = inttoptr i64 %47 to i32*
  store i32 %48, i32* %51, align 4
  %RDX.i2239 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %52 = load i64, i64* %RBP.i, align 8
  %53 = add i64 %52, -16
  %54 = load i64, i64* %RDX.i2239, align 8
  %55 = load i64, i64* %3, align 8
  %56 = add i64 %55, 4
  store i64 %56, i64* %3, align 8
  %57 = inttoptr i64 %53 to i64*
  store i64 %54, i64* %57, align 8
  %RCX.i2236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %58 = load i64, i64* %RBP.i, align 8
  %59 = add i64 %58, -24
  %60 = load i64, i64* %RCX.i2236, align 8
  %61 = load i64, i64* %3, align 8
  %62 = add i64 %61, 4
  store i64 %62, i64* %3, align 8
  %63 = inttoptr i64 %59 to i64*
  store i64 %60, i64* %63, align 8
  %RSI.i2233 = getelementptr inbounds %union.anon, %union.anon* %45, i64 0, i32 0
  %64 = load i64, i64* %RBP.i, align 8
  %65 = add i64 %64, -8
  %66 = load i64, i64* %3, align 8
  %67 = add i64 %66, 3
  store i64 %67, i64* %3, align 8
  %68 = inttoptr i64 %65 to i32*
  %69 = load i32, i32* %68, align 4
  %70 = shl i32 %69, 2
  %71 = zext i32 %70 to i64
  store i64 %71, i64* %RSI.i2233, align 8
  %72 = lshr i32 %69, 30
  %73 = trunc i32 %72 to i8
  %74 = and i8 %73, 1
  store i8 %74, i8* %14, align 1
  %75 = and i32 %70, 252
  %76 = tail call i32 @llvm.ctpop.i32(i32 %75)
  %77 = trunc i32 %76 to i8
  %78 = and i8 %77, 1
  %79 = xor i8 %78, 1
  store i8 %79, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %80 = icmp eq i32 %70, 0
  %81 = zext i1 %80 to i8
  store i8 %81, i8* %30, align 1
  %82 = lshr i32 %69, 29
  %83 = trunc i32 %82 to i8
  %84 = and i8 %83, 1
  store i8 %84, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %85 = add i64 %64, -56
  %86 = add i64 %66, 9
  store i64 %86, i64* %3, align 8
  %87 = inttoptr i64 %85 to i32*
  store i32 %70, i32* %87, align 4
  %88 = load i64, i64* %RBP.i, align 8
  %89 = add i64 %88, -28
  %90 = load i64, i64* %3, align 8
  %91 = add i64 %90, 7
  store i64 %91, i64* %3, align 8
  %92 = inttoptr i64 %89 to i32*
  store i32 0, i32* %92, align 4
  %RAX.i2224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %93 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %94 = bitcast %union.VectorReg* %93 to double*
  %95 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %93, i64 0, i32 0, i32 0, i32 0, i64 0
  %96 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %97 = bitcast i64* %96 to double*
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_403346

block_.L_403346:                                  ; preds = %block_403352, %entry
  %98 = phi i64 [ %1027, %block_403352 ], [ %.pre, %entry ]
  %99 = load i64, i64* %RBP.i, align 8
  %100 = add i64 %99, -28
  %101 = add i64 %98, 3
  store i64 %101, i64* %3, align 8
  %102 = inttoptr i64 %100 to i32*
  %103 = load i32, i32* %102, align 4
  %104 = zext i32 %103 to i64
  store i64 %104, i64* %RAX.i2224, align 8
  %105 = add i64 %99, -8
  %106 = add i64 %98, 6
  store i64 %106, i64* %3, align 8
  %107 = inttoptr i64 %105 to i32*
  %108 = load i32, i32* %107, align 4
  %109 = sub i32 %103, %108
  %110 = icmp ult i32 %103, %108
  %111 = zext i1 %110 to i8
  store i8 %111, i8* %14, align 1
  %112 = and i32 %109, 255
  %113 = tail call i32 @llvm.ctpop.i32(i32 %112)
  %114 = trunc i32 %113 to i8
  %115 = and i8 %114, 1
  %116 = xor i8 %115, 1
  store i8 %116, i8* %21, align 1
  %117 = xor i32 %108, %103
  %118 = xor i32 %117, %109
  %119 = lshr i32 %118, 4
  %120 = trunc i32 %119 to i8
  %121 = and i8 %120, 1
  store i8 %121, i8* %27, align 1
  %122 = icmp eq i32 %109, 0
  %123 = zext i1 %122 to i8
  store i8 %123, i8* %30, align 1
  %124 = lshr i32 %109, 31
  %125 = trunc i32 %124 to i8
  store i8 %125, i8* %33, align 1
  %126 = lshr i32 %103, 31
  %127 = lshr i32 %108, 31
  %128 = xor i32 %127, %126
  %129 = xor i32 %124, %126
  %130 = add nuw nsw i32 %129, %128
  %131 = icmp eq i32 %130, 2
  %132 = zext i1 %131 to i8
  store i8 %132, i8* %39, align 1
  %133 = icmp ne i8 %125, 0
  %134 = xor i1 %133, %131
  %.v = select i1 %134, i64 12, i64 599
  %135 = add i64 %98, %.v
  store i64 %135, i64* %3, align 8
  br i1 %134, label %block_403352, label %block_.L_40359d

block_403352:                                     ; preds = %block_.L_403346
  %136 = add i64 %135, 3
  store i64 %136, i64* %3, align 8
  %137 = load i32, i32* %102, align 4
  %138 = zext i32 %137 to i64
  store i64 %138, i64* %RAX.i2224, align 8
  %139 = add i64 %135, 6
  store i64 %139, i64* %3, align 8
  %140 = load i32, i32* %107, align 4
  %141 = add i32 %140, %137
  %142 = zext i32 %141 to i64
  store i64 %142, i64* %RAX.i2224, align 8
  %143 = icmp ult i32 %141, %137
  %144 = icmp ult i32 %141, %140
  %145 = or i1 %143, %144
  %146 = zext i1 %145 to i8
  store i8 %146, i8* %14, align 1
  %147 = and i32 %141, 255
  %148 = tail call i32 @llvm.ctpop.i32(i32 %147)
  %149 = trunc i32 %148 to i8
  %150 = and i8 %149, 1
  %151 = xor i8 %150, 1
  store i8 %151, i8* %21, align 1
  %152 = xor i32 %140, %137
  %153 = xor i32 %152, %141
  %154 = lshr i32 %153, 4
  %155 = trunc i32 %154 to i8
  %156 = and i8 %155, 1
  store i8 %156, i8* %27, align 1
  %157 = icmp eq i32 %141, 0
  %158 = zext i1 %157 to i8
  store i8 %158, i8* %30, align 1
  %159 = lshr i32 %141, 31
  %160 = trunc i32 %159 to i8
  store i8 %160, i8* %33, align 1
  %161 = lshr i32 %137, 31
  %162 = lshr i32 %140, 31
  %163 = xor i32 %159, %161
  %164 = xor i32 %159, %162
  %165 = add nuw nsw i32 %163, %164
  %166 = icmp eq i32 %165, 2
  %167 = zext i1 %166 to i8
  store i8 %167, i8* %39, align 1
  %168 = add i64 %99, -32
  %169 = add i64 %135, 9
  store i64 %169, i64* %3, align 8
  %170 = inttoptr i64 %168 to i32*
  store i32 %141, i32* %170, align 4
  %171 = load i64, i64* %RBP.i, align 8
  %172 = add i64 %171, -32
  %173 = load i64, i64* %3, align 8
  %174 = add i64 %173, 3
  store i64 %174, i64* %3, align 8
  %175 = inttoptr i64 %172 to i32*
  %176 = load i32, i32* %175, align 4
  %177 = zext i32 %176 to i64
  store i64 %177, i64* %RAX.i2224, align 8
  %178 = add i64 %171, -8
  %179 = add i64 %173, 6
  store i64 %179, i64* %3, align 8
  %180 = inttoptr i64 %178 to i32*
  %181 = load i32, i32* %180, align 4
  %182 = add i32 %181, %176
  %183 = zext i32 %182 to i64
  store i64 %183, i64* %RAX.i2224, align 8
  %184 = icmp ult i32 %182, %176
  %185 = icmp ult i32 %182, %181
  %186 = or i1 %184, %185
  %187 = zext i1 %186 to i8
  store i8 %187, i8* %14, align 1
  %188 = and i32 %182, 255
  %189 = tail call i32 @llvm.ctpop.i32(i32 %188)
  %190 = trunc i32 %189 to i8
  %191 = and i8 %190, 1
  %192 = xor i8 %191, 1
  store i8 %192, i8* %21, align 1
  %193 = xor i32 %181, %176
  %194 = xor i32 %193, %182
  %195 = lshr i32 %194, 4
  %196 = trunc i32 %195 to i8
  %197 = and i8 %196, 1
  store i8 %197, i8* %27, align 1
  %198 = icmp eq i32 %182, 0
  %199 = zext i1 %198 to i8
  store i8 %199, i8* %30, align 1
  %200 = lshr i32 %182, 31
  %201 = trunc i32 %200 to i8
  store i8 %201, i8* %33, align 1
  %202 = lshr i32 %176, 31
  %203 = lshr i32 %181, 31
  %204 = xor i32 %200, %202
  %205 = xor i32 %200, %203
  %206 = add nuw nsw i32 %204, %205
  %207 = icmp eq i32 %206, 2
  %208 = zext i1 %207 to i8
  store i8 %208, i8* %39, align 1
  %209 = add i64 %171, -36
  %210 = add i64 %173, 9
  store i64 %210, i64* %3, align 8
  %211 = inttoptr i64 %209 to i32*
  store i32 %182, i32* %211, align 4
  %212 = load i64, i64* %RBP.i, align 8
  %213 = add i64 %212, -36
  %214 = load i64, i64* %3, align 8
  %215 = add i64 %214, 3
  store i64 %215, i64* %3, align 8
  %216 = inttoptr i64 %213 to i32*
  %217 = load i32, i32* %216, align 4
  %218 = zext i32 %217 to i64
  store i64 %218, i64* %RAX.i2224, align 8
  %219 = add i64 %212, -8
  %220 = add i64 %214, 6
  store i64 %220, i64* %3, align 8
  %221 = inttoptr i64 %219 to i32*
  %222 = load i32, i32* %221, align 4
  %223 = add i32 %222, %217
  %224 = zext i32 %223 to i64
  store i64 %224, i64* %RAX.i2224, align 8
  %225 = icmp ult i32 %223, %217
  %226 = icmp ult i32 %223, %222
  %227 = or i1 %225, %226
  %228 = zext i1 %227 to i8
  store i8 %228, i8* %14, align 1
  %229 = and i32 %223, 255
  %230 = tail call i32 @llvm.ctpop.i32(i32 %229)
  %231 = trunc i32 %230 to i8
  %232 = and i8 %231, 1
  %233 = xor i8 %232, 1
  store i8 %233, i8* %21, align 1
  %234 = xor i32 %222, %217
  %235 = xor i32 %234, %223
  %236 = lshr i32 %235, 4
  %237 = trunc i32 %236 to i8
  %238 = and i8 %237, 1
  store i8 %238, i8* %27, align 1
  %239 = icmp eq i32 %223, 0
  %240 = zext i1 %239 to i8
  store i8 %240, i8* %30, align 1
  %241 = lshr i32 %223, 31
  %242 = trunc i32 %241 to i8
  store i8 %242, i8* %33, align 1
  %243 = lshr i32 %217, 31
  %244 = lshr i32 %222, 31
  %245 = xor i32 %241, %243
  %246 = xor i32 %241, %244
  %247 = add nuw nsw i32 %245, %246
  %248 = icmp eq i32 %247, 2
  %249 = zext i1 %248 to i8
  store i8 %249, i8* %39, align 1
  %250 = add i64 %212, -40
  %251 = add i64 %214, 9
  store i64 %251, i64* %3, align 8
  %252 = inttoptr i64 %250 to i32*
  store i32 %223, i32* %252, align 4
  %253 = load i64, i64* %RBP.i, align 8
  %254 = add i64 %253, -16
  %255 = load i64, i64* %3, align 8
  %256 = add i64 %255, 4
  store i64 %256, i64* %3, align 8
  %257 = inttoptr i64 %254 to i64*
  %258 = load i64, i64* %257, align 8
  store i64 %258, i64* %RCX.i2236, align 8
  %259 = add i64 %253, -28
  %260 = add i64 %255, 8
  store i64 %260, i64* %3, align 8
  %261 = inttoptr i64 %259 to i32*
  %262 = load i32, i32* %261, align 4
  %263 = sext i32 %262 to i64
  store i64 %263, i64* %RDX.i2239, align 8
  %264 = shl nsw i64 %263, 3
  %265 = add i64 %264, %258
  %266 = add i64 %255, 13
  store i64 %266, i64* %3, align 8
  %267 = inttoptr i64 %265 to i64*
  %268 = load i64, i64* %267, align 8
  store i64 %268, i64* %95, align 1
  store double 0.000000e+00, double* %97, align 1
  %269 = add i64 %255, 17
  store i64 %269, i64* %3, align 8
  %270 = load i64, i64* %257, align 8
  store i64 %270, i64* %RCX.i2236, align 8
  %271 = add i64 %253, -32
  %272 = add i64 %255, 21
  store i64 %272, i64* %3, align 8
  %273 = inttoptr i64 %271 to i32*
  %274 = load i32, i32* %273, align 4
  %275 = sext i32 %274 to i64
  store i64 %275, i64* %RDX.i2239, align 8
  %276 = shl nsw i64 %275, 3
  %277 = add i64 %276, %270
  %278 = add i64 %255, 26
  store i64 %278, i64* %3, align 8
  %279 = bitcast i64 %268 to double
  %280 = inttoptr i64 %277 to double*
  %281 = load double, double* %280, align 8
  %282 = fadd double %279, %281
  store double %282, double* %94, align 1
  store i64 0, i64* %96, align 1
  %283 = add i64 %253, -120
  %284 = add i64 %255, 31
  store i64 %284, i64* %3, align 8
  %285 = inttoptr i64 %283 to double*
  store double %282, double* %285, align 8
  %286 = load i64, i64* %RBP.i, align 8
  %287 = add i64 %286, -16
  %288 = load i64, i64* %3, align 8
  %289 = add i64 %288, 4
  store i64 %289, i64* %3, align 8
  %290 = inttoptr i64 %287 to i64*
  %291 = load i64, i64* %290, align 8
  store i64 %291, i64* %RCX.i2236, align 8
  %292 = add i64 %286, -28
  %293 = add i64 %288, 7
  store i64 %293, i64* %3, align 8
  %294 = inttoptr i64 %292 to i32*
  %295 = load i32, i32* %294, align 4
  %296 = add i32 %295, 1
  %297 = zext i32 %296 to i64
  store i64 %297, i64* %RAX.i2224, align 8
  %298 = icmp eq i32 %295, -1
  %299 = icmp eq i32 %296, 0
  %300 = or i1 %298, %299
  %301 = zext i1 %300 to i8
  store i8 %301, i8* %14, align 1
  %302 = and i32 %296, 255
  %303 = tail call i32 @llvm.ctpop.i32(i32 %302)
  %304 = trunc i32 %303 to i8
  %305 = and i8 %304, 1
  %306 = xor i8 %305, 1
  store i8 %306, i8* %21, align 1
  %307 = xor i32 %296, %295
  %308 = lshr i32 %307, 4
  %309 = trunc i32 %308 to i8
  %310 = and i8 %309, 1
  store i8 %310, i8* %27, align 1
  %311 = zext i1 %299 to i8
  store i8 %311, i8* %30, align 1
  %312 = lshr i32 %296, 31
  %313 = trunc i32 %312 to i8
  store i8 %313, i8* %33, align 1
  %314 = lshr i32 %295, 31
  %315 = xor i32 %312, %314
  %316 = add nuw nsw i32 %315, %312
  %317 = icmp eq i32 %316, 2
  %318 = zext i1 %317 to i8
  store i8 %318, i8* %39, align 1
  %319 = sext i32 %296 to i64
  store i64 %319, i64* %RDX.i2239, align 8
  %320 = shl nsw i64 %319, 3
  %321 = add i64 %291, %320
  %322 = add i64 %288, 18
  store i64 %322, i64* %3, align 8
  %323 = inttoptr i64 %321 to i64*
  %324 = load i64, i64* %323, align 8
  store i64 %324, i64* %95, align 1
  store double 0.000000e+00, double* %97, align 1
  %325 = add i64 %288, 22
  store i64 %325, i64* %3, align 8
  %326 = load i64, i64* %290, align 8
  store i64 %326, i64* %RCX.i2236, align 8
  %327 = add i64 %286, -32
  %328 = add i64 %288, 25
  store i64 %328, i64* %3, align 8
  %329 = inttoptr i64 %327 to i32*
  %330 = load i32, i32* %329, align 4
  %331 = add i32 %330, 1
  %332 = zext i32 %331 to i64
  store i64 %332, i64* %RAX.i2224, align 8
  %333 = icmp eq i32 %330, -1
  %334 = icmp eq i32 %331, 0
  %335 = or i1 %333, %334
  %336 = zext i1 %335 to i8
  store i8 %336, i8* %14, align 1
  %337 = and i32 %331, 255
  %338 = tail call i32 @llvm.ctpop.i32(i32 %337)
  %339 = trunc i32 %338 to i8
  %340 = and i8 %339, 1
  %341 = xor i8 %340, 1
  store i8 %341, i8* %21, align 1
  %342 = xor i32 %331, %330
  %343 = lshr i32 %342, 4
  %344 = trunc i32 %343 to i8
  %345 = and i8 %344, 1
  store i8 %345, i8* %27, align 1
  %346 = zext i1 %334 to i8
  store i8 %346, i8* %30, align 1
  %347 = lshr i32 %331, 31
  %348 = trunc i32 %347 to i8
  store i8 %348, i8* %33, align 1
  %349 = lshr i32 %330, 31
  %350 = xor i32 %347, %349
  %351 = add nuw nsw i32 %350, %347
  %352 = icmp eq i32 %351, 2
  %353 = zext i1 %352 to i8
  store i8 %353, i8* %39, align 1
  %354 = sext i32 %331 to i64
  store i64 %354, i64* %RDX.i2239, align 8
  %355 = shl nsw i64 %354, 3
  %356 = add i64 %326, %355
  %357 = add i64 %288, 36
  store i64 %357, i64* %3, align 8
  %358 = bitcast i64 %324 to double
  %359 = inttoptr i64 %356 to double*
  %360 = load double, double* %359, align 8
  %361 = fadd double %358, %360
  store double %361, double* %94, align 1
  store i64 0, i64* %96, align 1
  %362 = load i64, i64* %RBP.i, align 8
  %363 = add i64 %362, -128
  %364 = add i64 %288, 41
  store i64 %364, i64* %3, align 8
  %365 = inttoptr i64 %363 to double*
  store double %361, double* %365, align 8
  %366 = load i64, i64* %RBP.i, align 8
  %367 = add i64 %366, -16
  %368 = load i64, i64* %3, align 8
  %369 = add i64 %368, 4
  store i64 %369, i64* %3, align 8
  %370 = inttoptr i64 %367 to i64*
  %371 = load i64, i64* %370, align 8
  store i64 %371, i64* %RCX.i2236, align 8
  %372 = add i64 %366, -28
  %373 = add i64 %368, 8
  store i64 %373, i64* %3, align 8
  %374 = inttoptr i64 %372 to i32*
  %375 = load i32, i32* %374, align 4
  %376 = sext i32 %375 to i64
  store i64 %376, i64* %RDX.i2239, align 8
  %377 = shl nsw i64 %376, 3
  %378 = add i64 %377, %371
  %379 = add i64 %368, 13
  store i64 %379, i64* %3, align 8
  %380 = inttoptr i64 %378 to i64*
  %381 = load i64, i64* %380, align 8
  store i64 %381, i64* %95, align 1
  store double 0.000000e+00, double* %97, align 1
  %382 = add i64 %368, 17
  store i64 %382, i64* %3, align 8
  %383 = load i64, i64* %370, align 8
  store i64 %383, i64* %RCX.i2236, align 8
  %384 = add i64 %366, -32
  %385 = add i64 %368, 21
  store i64 %385, i64* %3, align 8
  %386 = inttoptr i64 %384 to i32*
  %387 = load i32, i32* %386, align 4
  %388 = sext i32 %387 to i64
  store i64 %388, i64* %RDX.i2239, align 8
  %389 = shl nsw i64 %388, 3
  %390 = add i64 %389, %383
  %391 = add i64 %368, 26
  store i64 %391, i64* %3, align 8
  %392 = bitcast i64 %381 to double
  %393 = inttoptr i64 %390 to double*
  %394 = load double, double* %393, align 8
  %395 = fsub double %392, %394
  store double %395, double* %94, align 1
  store i64 0, i64* %96, align 1
  %396 = add i64 %366, -136
  %397 = add i64 %368, 34
  store i64 %397, i64* %3, align 8
  %398 = inttoptr i64 %396 to double*
  store double %395, double* %398, align 8
  %399 = load i64, i64* %RBP.i, align 8
  %400 = add i64 %399, -16
  %401 = load i64, i64* %3, align 8
  %402 = add i64 %401, 4
  store i64 %402, i64* %3, align 8
  %403 = inttoptr i64 %400 to i64*
  %404 = load i64, i64* %403, align 8
  store i64 %404, i64* %RCX.i2236, align 8
  %405 = add i64 %399, -28
  %406 = add i64 %401, 7
  store i64 %406, i64* %3, align 8
  %407 = inttoptr i64 %405 to i32*
  %408 = load i32, i32* %407, align 4
  %409 = add i32 %408, 1
  %410 = zext i32 %409 to i64
  store i64 %410, i64* %RAX.i2224, align 8
  %411 = icmp eq i32 %408, -1
  %412 = icmp eq i32 %409, 0
  %413 = or i1 %411, %412
  %414 = zext i1 %413 to i8
  store i8 %414, i8* %14, align 1
  %415 = and i32 %409, 255
  %416 = tail call i32 @llvm.ctpop.i32(i32 %415)
  %417 = trunc i32 %416 to i8
  %418 = and i8 %417, 1
  %419 = xor i8 %418, 1
  store i8 %419, i8* %21, align 1
  %420 = xor i32 %409, %408
  %421 = lshr i32 %420, 4
  %422 = trunc i32 %421 to i8
  %423 = and i8 %422, 1
  store i8 %423, i8* %27, align 1
  %424 = zext i1 %412 to i8
  store i8 %424, i8* %30, align 1
  %425 = lshr i32 %409, 31
  %426 = trunc i32 %425 to i8
  store i8 %426, i8* %33, align 1
  %427 = lshr i32 %408, 31
  %428 = xor i32 %425, %427
  %429 = add nuw nsw i32 %428, %425
  %430 = icmp eq i32 %429, 2
  %431 = zext i1 %430 to i8
  store i8 %431, i8* %39, align 1
  %432 = sext i32 %409 to i64
  store i64 %432, i64* %RDX.i2239, align 8
  %433 = shl nsw i64 %432, 3
  %434 = add i64 %404, %433
  %435 = add i64 %401, 18
  store i64 %435, i64* %3, align 8
  %436 = inttoptr i64 %434 to i64*
  %437 = load i64, i64* %436, align 8
  store i64 %437, i64* %95, align 1
  store double 0.000000e+00, double* %97, align 1
  %438 = add i64 %401, 22
  store i64 %438, i64* %3, align 8
  %439 = load i64, i64* %403, align 8
  store i64 %439, i64* %RCX.i2236, align 8
  %440 = add i64 %399, -32
  %441 = add i64 %401, 25
  store i64 %441, i64* %3, align 8
  %442 = inttoptr i64 %440 to i32*
  %443 = load i32, i32* %442, align 4
  %444 = add i32 %443, 1
  %445 = zext i32 %444 to i64
  store i64 %445, i64* %RAX.i2224, align 8
  %446 = icmp eq i32 %443, -1
  %447 = icmp eq i32 %444, 0
  %448 = or i1 %446, %447
  %449 = zext i1 %448 to i8
  store i8 %449, i8* %14, align 1
  %450 = and i32 %444, 255
  %451 = tail call i32 @llvm.ctpop.i32(i32 %450)
  %452 = trunc i32 %451 to i8
  %453 = and i8 %452, 1
  %454 = xor i8 %453, 1
  store i8 %454, i8* %21, align 1
  %455 = xor i32 %444, %443
  %456 = lshr i32 %455, 4
  %457 = trunc i32 %456 to i8
  %458 = and i8 %457, 1
  store i8 %458, i8* %27, align 1
  %459 = zext i1 %447 to i8
  store i8 %459, i8* %30, align 1
  %460 = lshr i32 %444, 31
  %461 = trunc i32 %460 to i8
  store i8 %461, i8* %33, align 1
  %462 = lshr i32 %443, 31
  %463 = xor i32 %460, %462
  %464 = add nuw nsw i32 %463, %460
  %465 = icmp eq i32 %464, 2
  %466 = zext i1 %465 to i8
  store i8 %466, i8* %39, align 1
  %467 = sext i32 %444 to i64
  store i64 %467, i64* %RDX.i2239, align 8
  %468 = shl nsw i64 %467, 3
  %469 = add i64 %439, %468
  %470 = add i64 %401, 36
  store i64 %470, i64* %3, align 8
  %471 = bitcast i64 %437 to double
  %472 = inttoptr i64 %469 to double*
  %473 = load double, double* %472, align 8
  %474 = fsub double %471, %473
  store double %474, double* %94, align 1
  store i64 0, i64* %96, align 1
  %475 = load i64, i64* %RBP.i, align 8
  %476 = add i64 %475, -144
  %477 = add i64 %401, 44
  store i64 %477, i64* %3, align 8
  %478 = inttoptr i64 %476 to double*
  store double %474, double* %478, align 8
  %479 = load i64, i64* %RBP.i, align 8
  %480 = add i64 %479, -16
  %481 = load i64, i64* %3, align 8
  %482 = add i64 %481, 4
  store i64 %482, i64* %3, align 8
  %483 = inttoptr i64 %480 to i64*
  %484 = load i64, i64* %483, align 8
  store i64 %484, i64* %RCX.i2236, align 8
  %485 = add i64 %479, -36
  %486 = add i64 %481, 8
  store i64 %486, i64* %3, align 8
  %487 = inttoptr i64 %485 to i32*
  %488 = load i32, i32* %487, align 4
  %489 = sext i32 %488 to i64
  store i64 %489, i64* %RDX.i2239, align 8
  %490 = shl nsw i64 %489, 3
  %491 = add i64 %490, %484
  %492 = add i64 %481, 13
  store i64 %492, i64* %3, align 8
  %493 = inttoptr i64 %491 to i64*
  %494 = load i64, i64* %493, align 8
  store i64 %494, i64* %95, align 1
  store double 0.000000e+00, double* %97, align 1
  %495 = add i64 %481, 17
  store i64 %495, i64* %3, align 8
  %496 = load i64, i64* %483, align 8
  store i64 %496, i64* %RCX.i2236, align 8
  %497 = add i64 %479, -40
  %498 = add i64 %481, 21
  store i64 %498, i64* %3, align 8
  %499 = inttoptr i64 %497 to i32*
  %500 = load i32, i32* %499, align 4
  %501 = sext i32 %500 to i64
  store i64 %501, i64* %RDX.i2239, align 8
  %502 = shl nsw i64 %501, 3
  %503 = add i64 %502, %496
  %504 = add i64 %481, 26
  store i64 %504, i64* %3, align 8
  %505 = bitcast i64 %494 to double
  %506 = inttoptr i64 %503 to double*
  %507 = load double, double* %506, align 8
  %508 = fadd double %505, %507
  store double %508, double* %94, align 1
  store i64 0, i64* %96, align 1
  %509 = add i64 %479, -152
  %510 = add i64 %481, 34
  store i64 %510, i64* %3, align 8
  %511 = inttoptr i64 %509 to double*
  store double %508, double* %511, align 8
  %512 = load i64, i64* %RBP.i, align 8
  %513 = add i64 %512, -16
  %514 = load i64, i64* %3, align 8
  %515 = add i64 %514, 4
  store i64 %515, i64* %3, align 8
  %516 = inttoptr i64 %513 to i64*
  %517 = load i64, i64* %516, align 8
  store i64 %517, i64* %RCX.i2236, align 8
  %518 = add i64 %512, -36
  %519 = add i64 %514, 7
  store i64 %519, i64* %3, align 8
  %520 = inttoptr i64 %518 to i32*
  %521 = load i32, i32* %520, align 4
  %522 = add i32 %521, 1
  %523 = zext i32 %522 to i64
  store i64 %523, i64* %RAX.i2224, align 8
  %524 = icmp eq i32 %521, -1
  %525 = icmp eq i32 %522, 0
  %526 = or i1 %524, %525
  %527 = zext i1 %526 to i8
  store i8 %527, i8* %14, align 1
  %528 = and i32 %522, 255
  %529 = tail call i32 @llvm.ctpop.i32(i32 %528)
  %530 = trunc i32 %529 to i8
  %531 = and i8 %530, 1
  %532 = xor i8 %531, 1
  store i8 %532, i8* %21, align 1
  %533 = xor i32 %522, %521
  %534 = lshr i32 %533, 4
  %535 = trunc i32 %534 to i8
  %536 = and i8 %535, 1
  store i8 %536, i8* %27, align 1
  %537 = zext i1 %525 to i8
  store i8 %537, i8* %30, align 1
  %538 = lshr i32 %522, 31
  %539 = trunc i32 %538 to i8
  store i8 %539, i8* %33, align 1
  %540 = lshr i32 %521, 31
  %541 = xor i32 %538, %540
  %542 = add nuw nsw i32 %541, %538
  %543 = icmp eq i32 %542, 2
  %544 = zext i1 %543 to i8
  store i8 %544, i8* %39, align 1
  %545 = sext i32 %522 to i64
  store i64 %545, i64* %RDX.i2239, align 8
  %546 = shl nsw i64 %545, 3
  %547 = add i64 %517, %546
  %548 = add i64 %514, 18
  store i64 %548, i64* %3, align 8
  %549 = inttoptr i64 %547 to i64*
  %550 = load i64, i64* %549, align 8
  store i64 %550, i64* %95, align 1
  store double 0.000000e+00, double* %97, align 1
  %551 = add i64 %514, 22
  store i64 %551, i64* %3, align 8
  %552 = load i64, i64* %516, align 8
  store i64 %552, i64* %RCX.i2236, align 8
  %553 = add i64 %512, -40
  %554 = add i64 %514, 25
  store i64 %554, i64* %3, align 8
  %555 = inttoptr i64 %553 to i32*
  %556 = load i32, i32* %555, align 4
  %557 = add i32 %556, 1
  %558 = zext i32 %557 to i64
  store i64 %558, i64* %RAX.i2224, align 8
  %559 = icmp eq i32 %556, -1
  %560 = icmp eq i32 %557, 0
  %561 = or i1 %559, %560
  %562 = zext i1 %561 to i8
  store i8 %562, i8* %14, align 1
  %563 = and i32 %557, 255
  %564 = tail call i32 @llvm.ctpop.i32(i32 %563)
  %565 = trunc i32 %564 to i8
  %566 = and i8 %565, 1
  %567 = xor i8 %566, 1
  store i8 %567, i8* %21, align 1
  %568 = xor i32 %557, %556
  %569 = lshr i32 %568, 4
  %570 = trunc i32 %569 to i8
  %571 = and i8 %570, 1
  store i8 %571, i8* %27, align 1
  %572 = zext i1 %560 to i8
  store i8 %572, i8* %30, align 1
  %573 = lshr i32 %557, 31
  %574 = trunc i32 %573 to i8
  store i8 %574, i8* %33, align 1
  %575 = lshr i32 %556, 31
  %576 = xor i32 %573, %575
  %577 = add nuw nsw i32 %576, %573
  %578 = icmp eq i32 %577, 2
  %579 = zext i1 %578 to i8
  store i8 %579, i8* %39, align 1
  %580 = sext i32 %557 to i64
  store i64 %580, i64* %RDX.i2239, align 8
  %581 = shl nsw i64 %580, 3
  %582 = add i64 %552, %581
  %583 = add i64 %514, 36
  store i64 %583, i64* %3, align 8
  %584 = bitcast i64 %550 to double
  %585 = inttoptr i64 %582 to double*
  %586 = load double, double* %585, align 8
  %587 = fadd double %584, %586
  store double %587, double* %94, align 1
  store i64 0, i64* %96, align 1
  %588 = load i64, i64* %RBP.i, align 8
  %589 = add i64 %588, -160
  %590 = add i64 %514, 44
  store i64 %590, i64* %3, align 8
  %591 = inttoptr i64 %589 to double*
  store double %587, double* %591, align 8
  %592 = load i64, i64* %RBP.i, align 8
  %593 = add i64 %592, -16
  %594 = load i64, i64* %3, align 8
  %595 = add i64 %594, 4
  store i64 %595, i64* %3, align 8
  %596 = inttoptr i64 %593 to i64*
  %597 = load i64, i64* %596, align 8
  store i64 %597, i64* %RCX.i2236, align 8
  %598 = add i64 %592, -36
  %599 = add i64 %594, 8
  store i64 %599, i64* %3, align 8
  %600 = inttoptr i64 %598 to i32*
  %601 = load i32, i32* %600, align 4
  %602 = sext i32 %601 to i64
  store i64 %602, i64* %RDX.i2239, align 8
  %603 = shl nsw i64 %602, 3
  %604 = add i64 %603, %597
  %605 = add i64 %594, 13
  store i64 %605, i64* %3, align 8
  %606 = inttoptr i64 %604 to i64*
  %607 = load i64, i64* %606, align 8
  store i64 %607, i64* %95, align 1
  store double 0.000000e+00, double* %97, align 1
  %608 = add i64 %594, 17
  store i64 %608, i64* %3, align 8
  %609 = load i64, i64* %596, align 8
  store i64 %609, i64* %RCX.i2236, align 8
  %610 = add i64 %592, -40
  %611 = add i64 %594, 21
  store i64 %611, i64* %3, align 8
  %612 = inttoptr i64 %610 to i32*
  %613 = load i32, i32* %612, align 4
  %614 = sext i32 %613 to i64
  store i64 %614, i64* %RDX.i2239, align 8
  %615 = shl nsw i64 %614, 3
  %616 = add i64 %615, %609
  %617 = add i64 %594, 26
  store i64 %617, i64* %3, align 8
  %618 = bitcast i64 %607 to double
  %619 = inttoptr i64 %616 to double*
  %620 = load double, double* %619, align 8
  %621 = fsub double %618, %620
  store double %621, double* %94, align 1
  store i64 0, i64* %96, align 1
  %622 = add i64 %592, -168
  %623 = add i64 %594, 34
  store i64 %623, i64* %3, align 8
  %624 = inttoptr i64 %622 to double*
  store double %621, double* %624, align 8
  %625 = load i64, i64* %RBP.i, align 8
  %626 = add i64 %625, -16
  %627 = load i64, i64* %3, align 8
  %628 = add i64 %627, 4
  store i64 %628, i64* %3, align 8
  %629 = inttoptr i64 %626 to i64*
  %630 = load i64, i64* %629, align 8
  store i64 %630, i64* %RCX.i2236, align 8
  %631 = add i64 %625, -36
  %632 = add i64 %627, 7
  store i64 %632, i64* %3, align 8
  %633 = inttoptr i64 %631 to i32*
  %634 = load i32, i32* %633, align 4
  %635 = add i32 %634, 1
  %636 = zext i32 %635 to i64
  store i64 %636, i64* %RAX.i2224, align 8
  %637 = icmp eq i32 %634, -1
  %638 = icmp eq i32 %635, 0
  %639 = or i1 %637, %638
  %640 = zext i1 %639 to i8
  store i8 %640, i8* %14, align 1
  %641 = and i32 %635, 255
  %642 = tail call i32 @llvm.ctpop.i32(i32 %641)
  %643 = trunc i32 %642 to i8
  %644 = and i8 %643, 1
  %645 = xor i8 %644, 1
  store i8 %645, i8* %21, align 1
  %646 = xor i32 %635, %634
  %647 = lshr i32 %646, 4
  %648 = trunc i32 %647 to i8
  %649 = and i8 %648, 1
  store i8 %649, i8* %27, align 1
  %650 = zext i1 %638 to i8
  store i8 %650, i8* %30, align 1
  %651 = lshr i32 %635, 31
  %652 = trunc i32 %651 to i8
  store i8 %652, i8* %33, align 1
  %653 = lshr i32 %634, 31
  %654 = xor i32 %651, %653
  %655 = add nuw nsw i32 %654, %651
  %656 = icmp eq i32 %655, 2
  %657 = zext i1 %656 to i8
  store i8 %657, i8* %39, align 1
  %658 = sext i32 %635 to i64
  store i64 %658, i64* %RDX.i2239, align 8
  %659 = shl nsw i64 %658, 3
  %660 = add i64 %630, %659
  %661 = add i64 %627, 18
  store i64 %661, i64* %3, align 8
  %662 = inttoptr i64 %660 to i64*
  %663 = load i64, i64* %662, align 8
  store i64 %663, i64* %95, align 1
  store double 0.000000e+00, double* %97, align 1
  %664 = add i64 %627, 22
  store i64 %664, i64* %3, align 8
  %665 = load i64, i64* %629, align 8
  store i64 %665, i64* %RCX.i2236, align 8
  %666 = add i64 %625, -40
  %667 = add i64 %627, 25
  store i64 %667, i64* %3, align 8
  %668 = inttoptr i64 %666 to i32*
  %669 = load i32, i32* %668, align 4
  %670 = add i32 %669, 1
  %671 = zext i32 %670 to i64
  store i64 %671, i64* %RAX.i2224, align 8
  %672 = icmp eq i32 %669, -1
  %673 = icmp eq i32 %670, 0
  %674 = or i1 %672, %673
  %675 = zext i1 %674 to i8
  store i8 %675, i8* %14, align 1
  %676 = and i32 %670, 255
  %677 = tail call i32 @llvm.ctpop.i32(i32 %676)
  %678 = trunc i32 %677 to i8
  %679 = and i8 %678, 1
  %680 = xor i8 %679, 1
  store i8 %680, i8* %21, align 1
  %681 = xor i32 %670, %669
  %682 = lshr i32 %681, 4
  %683 = trunc i32 %682 to i8
  %684 = and i8 %683, 1
  store i8 %684, i8* %27, align 1
  %685 = zext i1 %673 to i8
  store i8 %685, i8* %30, align 1
  %686 = lshr i32 %670, 31
  %687 = trunc i32 %686 to i8
  store i8 %687, i8* %33, align 1
  %688 = lshr i32 %669, 31
  %689 = xor i32 %686, %688
  %690 = add nuw nsw i32 %689, %686
  %691 = icmp eq i32 %690, 2
  %692 = zext i1 %691 to i8
  store i8 %692, i8* %39, align 1
  %693 = sext i32 %670 to i64
  store i64 %693, i64* %RDX.i2239, align 8
  %694 = shl nsw i64 %693, 3
  %695 = add i64 %665, %694
  %696 = add i64 %627, 36
  store i64 %696, i64* %3, align 8
  %697 = bitcast i64 %663 to double
  %698 = inttoptr i64 %695 to double*
  %699 = load double, double* %698, align 8
  %700 = fsub double %697, %699
  store double %700, double* %94, align 1
  store i64 0, i64* %96, align 1
  %701 = load i64, i64* %RBP.i, align 8
  %702 = add i64 %701, -176
  %703 = add i64 %627, 44
  store i64 %703, i64* %3, align 8
  %704 = inttoptr i64 %702 to double*
  store double %700, double* %704, align 8
  %705 = load i64, i64* %RBP.i, align 8
  %706 = add i64 %705, -120
  %707 = load i64, i64* %3, align 8
  %708 = add i64 %707, 5
  store i64 %708, i64* %3, align 8
  %709 = inttoptr i64 %706 to i64*
  %710 = load i64, i64* %709, align 8
  store i64 %710, i64* %95, align 1
  store double 0.000000e+00, double* %97, align 1
  %711 = add i64 %705, -152
  %712 = add i64 %707, 13
  store i64 %712, i64* %3, align 8
  %713 = bitcast i64 %710 to double
  %714 = inttoptr i64 %711 to double*
  %715 = load double, double* %714, align 8
  %716 = fadd double %713, %715
  store double %716, double* %94, align 1
  store i64 0, i64* %96, align 1
  %717 = add i64 %705, -16
  %718 = add i64 %707, 17
  store i64 %718, i64* %3, align 8
  %719 = inttoptr i64 %717 to i64*
  %720 = load i64, i64* %719, align 8
  store i64 %720, i64* %RCX.i2236, align 8
  %721 = add i64 %705, -28
  %722 = add i64 %707, 21
  store i64 %722, i64* %3, align 8
  %723 = inttoptr i64 %721 to i32*
  %724 = load i32, i32* %723, align 4
  %725 = sext i32 %724 to i64
  store i64 %725, i64* %RDX.i2239, align 8
  %726 = shl nsw i64 %725, 3
  %727 = add i64 %726, %720
  %728 = add i64 %707, 26
  store i64 %728, i64* %3, align 8
  %729 = inttoptr i64 %727 to double*
  store double %716, double* %729, align 8
  %730 = load i64, i64* %RBP.i, align 8
  %731 = add i64 %730, -128
  %732 = load i64, i64* %3, align 8
  %733 = add i64 %732, 5
  store i64 %733, i64* %3, align 8
  %734 = inttoptr i64 %731 to i64*
  %735 = load i64, i64* %734, align 8
  store i64 %735, i64* %95, align 1
  store double 0.000000e+00, double* %97, align 1
  %736 = add i64 %730, -160
  %737 = add i64 %732, 13
  store i64 %737, i64* %3, align 8
  %738 = bitcast i64 %735 to double
  %739 = inttoptr i64 %736 to double*
  %740 = load double, double* %739, align 8
  %741 = fadd double %738, %740
  store double %741, double* %94, align 1
  store i64 0, i64* %96, align 1
  %742 = add i64 %730, -16
  %743 = add i64 %732, 17
  store i64 %743, i64* %3, align 8
  %744 = inttoptr i64 %742 to i64*
  %745 = load i64, i64* %744, align 8
  store i64 %745, i64* %RCX.i2236, align 8
  %746 = add i64 %730, -28
  %747 = add i64 %732, 20
  store i64 %747, i64* %3, align 8
  %748 = inttoptr i64 %746 to i32*
  %749 = load i32, i32* %748, align 4
  %750 = add i32 %749, 1
  %751 = zext i32 %750 to i64
  store i64 %751, i64* %RAX.i2224, align 8
  %752 = icmp eq i32 %749, -1
  %753 = icmp eq i32 %750, 0
  %754 = or i1 %752, %753
  %755 = zext i1 %754 to i8
  store i8 %755, i8* %14, align 1
  %756 = and i32 %750, 255
  %757 = tail call i32 @llvm.ctpop.i32(i32 %756)
  %758 = trunc i32 %757 to i8
  %759 = and i8 %758, 1
  %760 = xor i8 %759, 1
  store i8 %760, i8* %21, align 1
  %761 = xor i32 %750, %749
  %762 = lshr i32 %761, 4
  %763 = trunc i32 %762 to i8
  %764 = and i8 %763, 1
  store i8 %764, i8* %27, align 1
  %765 = zext i1 %753 to i8
  store i8 %765, i8* %30, align 1
  %766 = lshr i32 %750, 31
  %767 = trunc i32 %766 to i8
  store i8 %767, i8* %33, align 1
  %768 = lshr i32 %749, 31
  %769 = xor i32 %766, %768
  %770 = add nuw nsw i32 %769, %766
  %771 = icmp eq i32 %770, 2
  %772 = zext i1 %771 to i8
  store i8 %772, i8* %39, align 1
  %773 = sext i32 %750 to i64
  store i64 %773, i64* %RDX.i2239, align 8
  %774 = shl nsw i64 %773, 3
  %775 = add i64 %745, %774
  %776 = add i64 %732, 31
  store i64 %776, i64* %3, align 8
  %777 = inttoptr i64 %775 to double*
  store double %741, double* %777, align 8
  %778 = load i64, i64* %RBP.i, align 8
  %779 = add i64 %778, -120
  %780 = load i64, i64* %3, align 8
  %781 = add i64 %780, 5
  store i64 %781, i64* %3, align 8
  %782 = inttoptr i64 %779 to i64*
  %783 = load i64, i64* %782, align 8
  store i64 %783, i64* %95, align 1
  store double 0.000000e+00, double* %97, align 1
  %784 = add i64 %778, -152
  %785 = add i64 %780, 13
  store i64 %785, i64* %3, align 8
  %786 = bitcast i64 %783 to double
  %787 = inttoptr i64 %784 to double*
  %788 = load double, double* %787, align 8
  %789 = fsub double %786, %788
  store double %789, double* %94, align 1
  store i64 0, i64* %96, align 1
  %790 = add i64 %778, -16
  %791 = add i64 %780, 17
  store i64 %791, i64* %3, align 8
  %792 = inttoptr i64 %790 to i64*
  %793 = load i64, i64* %792, align 8
  store i64 %793, i64* %RCX.i2236, align 8
  %794 = add i64 %778, -36
  %795 = add i64 %780, 21
  store i64 %795, i64* %3, align 8
  %796 = inttoptr i64 %794 to i32*
  %797 = load i32, i32* %796, align 4
  %798 = sext i32 %797 to i64
  store i64 %798, i64* %RDX.i2239, align 8
  %799 = shl nsw i64 %798, 3
  %800 = add i64 %799, %793
  %801 = add i64 %780, 26
  store i64 %801, i64* %3, align 8
  %802 = inttoptr i64 %800 to double*
  store double %789, double* %802, align 8
  %803 = load i64, i64* %RBP.i, align 8
  %804 = add i64 %803, -128
  %805 = load i64, i64* %3, align 8
  %806 = add i64 %805, 5
  store i64 %806, i64* %3, align 8
  %807 = inttoptr i64 %804 to i64*
  %808 = load i64, i64* %807, align 8
  store i64 %808, i64* %95, align 1
  store double 0.000000e+00, double* %97, align 1
  %809 = add i64 %803, -160
  %810 = add i64 %805, 13
  store i64 %810, i64* %3, align 8
  %811 = bitcast i64 %808 to double
  %812 = inttoptr i64 %809 to double*
  %813 = load double, double* %812, align 8
  %814 = fsub double %811, %813
  store double %814, double* %94, align 1
  store i64 0, i64* %96, align 1
  %815 = add i64 %803, -16
  %816 = add i64 %805, 17
  store i64 %816, i64* %3, align 8
  %817 = inttoptr i64 %815 to i64*
  %818 = load i64, i64* %817, align 8
  store i64 %818, i64* %RCX.i2236, align 8
  %819 = add i64 %803, -36
  %820 = add i64 %805, 20
  store i64 %820, i64* %3, align 8
  %821 = inttoptr i64 %819 to i32*
  %822 = load i32, i32* %821, align 4
  %823 = add i32 %822, 1
  %824 = zext i32 %823 to i64
  store i64 %824, i64* %RAX.i2224, align 8
  %825 = icmp eq i32 %822, -1
  %826 = icmp eq i32 %823, 0
  %827 = or i1 %825, %826
  %828 = zext i1 %827 to i8
  store i8 %828, i8* %14, align 1
  %829 = and i32 %823, 255
  %830 = tail call i32 @llvm.ctpop.i32(i32 %829)
  %831 = trunc i32 %830 to i8
  %832 = and i8 %831, 1
  %833 = xor i8 %832, 1
  store i8 %833, i8* %21, align 1
  %834 = xor i32 %823, %822
  %835 = lshr i32 %834, 4
  %836 = trunc i32 %835 to i8
  %837 = and i8 %836, 1
  store i8 %837, i8* %27, align 1
  %838 = zext i1 %826 to i8
  store i8 %838, i8* %30, align 1
  %839 = lshr i32 %823, 31
  %840 = trunc i32 %839 to i8
  store i8 %840, i8* %33, align 1
  %841 = lshr i32 %822, 31
  %842 = xor i32 %839, %841
  %843 = add nuw nsw i32 %842, %839
  %844 = icmp eq i32 %843, 2
  %845 = zext i1 %844 to i8
  store i8 %845, i8* %39, align 1
  %846 = sext i32 %823 to i64
  store i64 %846, i64* %RDX.i2239, align 8
  %847 = shl nsw i64 %846, 3
  %848 = add i64 %818, %847
  %849 = add i64 %805, 31
  store i64 %849, i64* %3, align 8
  %850 = inttoptr i64 %848 to double*
  store double %814, double* %850, align 8
  %851 = load i64, i64* %RBP.i, align 8
  %852 = add i64 %851, -136
  %853 = load i64, i64* %3, align 8
  %854 = add i64 %853, 8
  store i64 %854, i64* %3, align 8
  %855 = inttoptr i64 %852 to i64*
  %856 = load i64, i64* %855, align 8
  store i64 %856, i64* %95, align 1
  store double 0.000000e+00, double* %97, align 1
  %857 = add i64 %851, -176
  %858 = add i64 %853, 16
  store i64 %858, i64* %3, align 8
  %859 = bitcast i64 %856 to double
  %860 = inttoptr i64 %857 to double*
  %861 = load double, double* %860, align 8
  %862 = fsub double %859, %861
  store double %862, double* %94, align 1
  store i64 0, i64* %96, align 1
  %863 = add i64 %851, -16
  %864 = add i64 %853, 20
  store i64 %864, i64* %3, align 8
  %865 = inttoptr i64 %863 to i64*
  %866 = load i64, i64* %865, align 8
  store i64 %866, i64* %RCX.i2236, align 8
  %867 = add i64 %851, -32
  %868 = add i64 %853, 24
  store i64 %868, i64* %3, align 8
  %869 = inttoptr i64 %867 to i32*
  %870 = load i32, i32* %869, align 4
  %871 = sext i32 %870 to i64
  store i64 %871, i64* %RDX.i2239, align 8
  %872 = shl nsw i64 %871, 3
  %873 = add i64 %872, %866
  %874 = add i64 %853, 29
  store i64 %874, i64* %3, align 8
  %875 = inttoptr i64 %873 to double*
  store double %862, double* %875, align 8
  %876 = load i64, i64* %RBP.i, align 8
  %877 = add i64 %876, -144
  %878 = load i64, i64* %3, align 8
  %879 = add i64 %878, 8
  store i64 %879, i64* %3, align 8
  %880 = inttoptr i64 %877 to i64*
  %881 = load i64, i64* %880, align 8
  store i64 %881, i64* %95, align 1
  store double 0.000000e+00, double* %97, align 1
  %882 = add i64 %876, -168
  %883 = add i64 %878, 16
  store i64 %883, i64* %3, align 8
  %884 = bitcast i64 %881 to double
  %885 = inttoptr i64 %882 to double*
  %886 = load double, double* %885, align 8
  %887 = fadd double %884, %886
  store double %887, double* %94, align 1
  store i64 0, i64* %96, align 1
  %888 = add i64 %876, -16
  %889 = add i64 %878, 20
  store i64 %889, i64* %3, align 8
  %890 = inttoptr i64 %888 to i64*
  %891 = load i64, i64* %890, align 8
  store i64 %891, i64* %RCX.i2236, align 8
  %892 = add i64 %876, -32
  %893 = add i64 %878, 23
  store i64 %893, i64* %3, align 8
  %894 = inttoptr i64 %892 to i32*
  %895 = load i32, i32* %894, align 4
  %896 = add i32 %895, 1
  %897 = zext i32 %896 to i64
  store i64 %897, i64* %RAX.i2224, align 8
  %898 = icmp eq i32 %895, -1
  %899 = icmp eq i32 %896, 0
  %900 = or i1 %898, %899
  %901 = zext i1 %900 to i8
  store i8 %901, i8* %14, align 1
  %902 = and i32 %896, 255
  %903 = tail call i32 @llvm.ctpop.i32(i32 %902)
  %904 = trunc i32 %903 to i8
  %905 = and i8 %904, 1
  %906 = xor i8 %905, 1
  store i8 %906, i8* %21, align 1
  %907 = xor i32 %896, %895
  %908 = lshr i32 %907, 4
  %909 = trunc i32 %908 to i8
  %910 = and i8 %909, 1
  store i8 %910, i8* %27, align 1
  %911 = zext i1 %899 to i8
  store i8 %911, i8* %30, align 1
  %912 = lshr i32 %896, 31
  %913 = trunc i32 %912 to i8
  store i8 %913, i8* %33, align 1
  %914 = lshr i32 %895, 31
  %915 = xor i32 %912, %914
  %916 = add nuw nsw i32 %915, %912
  %917 = icmp eq i32 %916, 2
  %918 = zext i1 %917 to i8
  store i8 %918, i8* %39, align 1
  %919 = sext i32 %896 to i64
  store i64 %919, i64* %RDX.i2239, align 8
  %920 = shl nsw i64 %919, 3
  %921 = add i64 %891, %920
  %922 = add i64 %878, 34
  store i64 %922, i64* %3, align 8
  %923 = inttoptr i64 %921 to double*
  store double %887, double* %923, align 8
  %924 = load i64, i64* %RBP.i, align 8
  %925 = add i64 %924, -136
  %926 = load i64, i64* %3, align 8
  %927 = add i64 %926, 8
  store i64 %927, i64* %3, align 8
  %928 = inttoptr i64 %925 to i64*
  %929 = load i64, i64* %928, align 8
  store i64 %929, i64* %95, align 1
  store double 0.000000e+00, double* %97, align 1
  %930 = add i64 %924, -176
  %931 = add i64 %926, 16
  store i64 %931, i64* %3, align 8
  %932 = bitcast i64 %929 to double
  %933 = inttoptr i64 %930 to double*
  %934 = load double, double* %933, align 8
  %935 = fadd double %932, %934
  store double %935, double* %94, align 1
  store i64 0, i64* %96, align 1
  %936 = add i64 %924, -16
  %937 = add i64 %926, 20
  store i64 %937, i64* %3, align 8
  %938 = inttoptr i64 %936 to i64*
  %939 = load i64, i64* %938, align 8
  store i64 %939, i64* %RCX.i2236, align 8
  %940 = add i64 %924, -40
  %941 = add i64 %926, 24
  store i64 %941, i64* %3, align 8
  %942 = inttoptr i64 %940 to i32*
  %943 = load i32, i32* %942, align 4
  %944 = sext i32 %943 to i64
  store i64 %944, i64* %RDX.i2239, align 8
  %945 = shl nsw i64 %944, 3
  %946 = add i64 %945, %939
  %947 = add i64 %926, 29
  store i64 %947, i64* %3, align 8
  %948 = inttoptr i64 %946 to double*
  store double %935, double* %948, align 8
  %949 = load i64, i64* %RBP.i, align 8
  %950 = add i64 %949, -144
  %951 = load i64, i64* %3, align 8
  %952 = add i64 %951, 8
  store i64 %952, i64* %3, align 8
  %953 = inttoptr i64 %950 to i64*
  %954 = load i64, i64* %953, align 8
  store i64 %954, i64* %95, align 1
  store double 0.000000e+00, double* %97, align 1
  %955 = add i64 %949, -168
  %956 = add i64 %951, 16
  store i64 %956, i64* %3, align 8
  %957 = bitcast i64 %954 to double
  %958 = inttoptr i64 %955 to double*
  %959 = load double, double* %958, align 8
  %960 = fsub double %957, %959
  store double %960, double* %94, align 1
  store i64 0, i64* %96, align 1
  %961 = add i64 %949, -16
  %962 = add i64 %951, 20
  store i64 %962, i64* %3, align 8
  %963 = inttoptr i64 %961 to i64*
  %964 = load i64, i64* %963, align 8
  store i64 %964, i64* %RCX.i2236, align 8
  %965 = add i64 %949, -40
  %966 = add i64 %951, 23
  store i64 %966, i64* %3, align 8
  %967 = inttoptr i64 %965 to i32*
  %968 = load i32, i32* %967, align 4
  %969 = add i32 %968, 1
  %970 = zext i32 %969 to i64
  store i64 %970, i64* %RAX.i2224, align 8
  %971 = icmp eq i32 %968, -1
  %972 = icmp eq i32 %969, 0
  %973 = or i1 %971, %972
  %974 = zext i1 %973 to i8
  store i8 %974, i8* %14, align 1
  %975 = and i32 %969, 255
  %976 = tail call i32 @llvm.ctpop.i32(i32 %975)
  %977 = trunc i32 %976 to i8
  %978 = and i8 %977, 1
  %979 = xor i8 %978, 1
  store i8 %979, i8* %21, align 1
  %980 = xor i32 %969, %968
  %981 = lshr i32 %980, 4
  %982 = trunc i32 %981 to i8
  %983 = and i8 %982, 1
  store i8 %983, i8* %27, align 1
  %984 = zext i1 %972 to i8
  store i8 %984, i8* %30, align 1
  %985 = lshr i32 %969, 31
  %986 = trunc i32 %985 to i8
  store i8 %986, i8* %33, align 1
  %987 = lshr i32 %968, 31
  %988 = xor i32 %985, %987
  %989 = add nuw nsw i32 %988, %985
  %990 = icmp eq i32 %989, 2
  %991 = zext i1 %990 to i8
  store i8 %991, i8* %39, align 1
  %992 = sext i32 %969 to i64
  store i64 %992, i64* %RDX.i2239, align 8
  %993 = shl nsw i64 %992, 3
  %994 = add i64 %964, %993
  %995 = add i64 %951, 34
  store i64 %995, i64* %3, align 8
  %996 = inttoptr i64 %994 to double*
  store double %960, double* %996, align 8
  %997 = load i64, i64* %RBP.i, align 8
  %998 = add i64 %997, -28
  %999 = load i64, i64* %3, align 8
  %1000 = add i64 %999, 3
  store i64 %1000, i64* %3, align 8
  %1001 = inttoptr i64 %998 to i32*
  %1002 = load i32, i32* %1001, align 4
  %1003 = add i32 %1002, 2
  %1004 = zext i32 %1003 to i64
  store i64 %1004, i64* %RAX.i2224, align 8
  %1005 = icmp ugt i32 %1002, -3
  %1006 = zext i1 %1005 to i8
  store i8 %1006, i8* %14, align 1
  %1007 = and i32 %1003, 255
  %1008 = tail call i32 @llvm.ctpop.i32(i32 %1007)
  %1009 = trunc i32 %1008 to i8
  %1010 = and i8 %1009, 1
  %1011 = xor i8 %1010, 1
  store i8 %1011, i8* %21, align 1
  %1012 = xor i32 %1003, %1002
  %1013 = lshr i32 %1012, 4
  %1014 = trunc i32 %1013 to i8
  %1015 = and i8 %1014, 1
  store i8 %1015, i8* %27, align 1
  %1016 = icmp eq i32 %1003, 0
  %1017 = zext i1 %1016 to i8
  store i8 %1017, i8* %30, align 1
  %1018 = lshr i32 %1003, 31
  %1019 = trunc i32 %1018 to i8
  store i8 %1019, i8* %33, align 1
  %1020 = lshr i32 %1002, 31
  %1021 = xor i32 %1018, %1020
  %1022 = add nuw nsw i32 %1021, %1018
  %1023 = icmp eq i32 %1022, 2
  %1024 = zext i1 %1023 to i8
  store i8 %1024, i8* %39, align 1
  %1025 = add i64 %999, 9
  store i64 %1025, i64* %3, align 8
  store i32 %1003, i32* %1001, align 4
  %1026 = load i64, i64* %3, align 8
  %1027 = add i64 %1026, -594
  store i64 %1027, i64* %3, align 8
  br label %block_.L_403346

block_.L_40359d:                                  ; preds = %block_.L_403346
  %1028 = add i64 %99, -24
  %1029 = add i64 %135, 4
  store i64 %1029, i64* %3, align 8
  %1030 = inttoptr i64 %1028 to i64*
  %1031 = load i64, i64* %1030, align 8
  store i64 %1031, i64* %RAX.i2224, align 8
  %1032 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %1033 = add i64 %1031, 16
  %1034 = add i64 %135, 9
  store i64 %1034, i64* %3, align 8
  %1035 = inttoptr i64 %1033 to i64*
  %1036 = load i64, i64* %1035, align 8
  %1037 = bitcast [32 x %union.VectorReg]* %1032 to double*
  %1038 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1032, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1036, i64* %1038, align 1
  store double 0.000000e+00, double* %97, align 1
  %1039 = add i64 %99, -72
  %1040 = add i64 %135, 14
  store i64 %1040, i64* %3, align 8
  %1041 = inttoptr i64 %1039 to i64*
  store i64 %1036, i64* %1041, align 8
  %1042 = load i64, i64* %RBP.i, align 8
  %1043 = add i64 %1042, -56
  %1044 = load i64, i64* %3, align 8
  %1045 = add i64 %1044, 3
  store i64 %1045, i64* %3, align 8
  %1046 = inttoptr i64 %1043 to i32*
  %1047 = load i32, i32* %1046, align 4
  %1048 = zext i32 %1047 to i64
  store i64 %1048, i64* %RCX.i2236, align 8
  %1049 = add i64 %1042, -28
  %1050 = add i64 %1044, 6
  store i64 %1050, i64* %3, align 8
  %1051 = inttoptr i64 %1049 to i32*
  store i32 %1047, i32* %1051, align 4
  %1052 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %1053 = bitcast %union.VectorReg* %1052 to double*
  %1054 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %1052, i64 0, i32 0, i32 0, i32 0, i64 0
  %1055 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %1056 = bitcast i64* %1055 to double*
  %.pre23 = load i64, i64* %3, align 8
  br label %block_.L_4035b1

block_.L_4035b1:                                  ; preds = %block_4035c2, %block_.L_40359d
  %1057 = phi i64 [ %2077, %block_4035c2 ], [ %.pre23, %block_.L_40359d ]
  %1058 = load i64, i64* %RBP.i, align 8
  %1059 = add i64 %1058, -28
  %1060 = add i64 %1057, 3
  store i64 %1060, i64* %3, align 8
  %1061 = inttoptr i64 %1059 to i32*
  %1062 = load i32, i32* %1061, align 4
  %1063 = zext i32 %1062 to i64
  store i64 %1063, i64* %RAX.i2224, align 8
  %1064 = add i64 %1058, -8
  %1065 = add i64 %1057, 6
  store i64 %1065, i64* %3, align 8
  %1066 = inttoptr i64 %1064 to i32*
  %1067 = load i32, i32* %1066, align 4
  %1068 = zext i32 %1067 to i64
  store i64 %1068, i64* %RCX.i2236, align 8
  %1069 = add i64 %1058, -56
  %1070 = add i64 %1057, 9
  store i64 %1070, i64* %3, align 8
  %1071 = inttoptr i64 %1069 to i32*
  %1072 = load i32, i32* %1071, align 4
  %1073 = add i32 %1072, %1067
  %1074 = zext i32 %1073 to i64
  store i64 %1074, i64* %RCX.i2236, align 8
  %1075 = lshr i32 %1073, 31
  %1076 = sub i32 %1062, %1073
  %1077 = icmp ult i32 %1062, %1073
  %1078 = zext i1 %1077 to i8
  store i8 %1078, i8* %14, align 1
  %1079 = and i32 %1076, 255
  %1080 = tail call i32 @llvm.ctpop.i32(i32 %1079)
  %1081 = trunc i32 %1080 to i8
  %1082 = and i8 %1081, 1
  %1083 = xor i8 %1082, 1
  store i8 %1083, i8* %21, align 1
  %1084 = xor i32 %1073, %1062
  %1085 = xor i32 %1084, %1076
  %1086 = lshr i32 %1085, 4
  %1087 = trunc i32 %1086 to i8
  %1088 = and i8 %1087, 1
  store i8 %1088, i8* %27, align 1
  %1089 = icmp eq i32 %1076, 0
  %1090 = zext i1 %1089 to i8
  store i8 %1090, i8* %30, align 1
  %1091 = lshr i32 %1076, 31
  %1092 = trunc i32 %1091 to i8
  store i8 %1092, i8* %33, align 1
  %1093 = lshr i32 %1062, 31
  %1094 = xor i32 %1075, %1093
  %1095 = xor i32 %1091, %1093
  %1096 = add nuw nsw i32 %1095, %1094
  %1097 = icmp eq i32 %1096, 2
  %1098 = zext i1 %1097 to i8
  store i8 %1098, i8* %39, align 1
  %1099 = icmp ne i8 %1092, 0
  %1100 = xor i1 %1099, %1097
  %.v27 = select i1 %1100, i64 17, i64 700
  %1101 = add i64 %1057, %.v27
  store i64 %1101, i64* %3, align 8
  br i1 %1100, label %block_4035c2, label %block_.L_40386d

block_4035c2:                                     ; preds = %block_.L_4035b1
  %1102 = add i64 %1101, 3
  store i64 %1102, i64* %3, align 8
  %1103 = load i32, i32* %1061, align 4
  %1104 = zext i32 %1103 to i64
  store i64 %1104, i64* %RAX.i2224, align 8
  %1105 = add i64 %1101, 6
  store i64 %1105, i64* %3, align 8
  %1106 = load i32, i32* %1066, align 4
  %1107 = add i32 %1106, %1103
  %1108 = zext i32 %1107 to i64
  store i64 %1108, i64* %RAX.i2224, align 8
  %1109 = icmp ult i32 %1107, %1103
  %1110 = icmp ult i32 %1107, %1106
  %1111 = or i1 %1109, %1110
  %1112 = zext i1 %1111 to i8
  store i8 %1112, i8* %14, align 1
  %1113 = and i32 %1107, 255
  %1114 = tail call i32 @llvm.ctpop.i32(i32 %1113)
  %1115 = trunc i32 %1114 to i8
  %1116 = and i8 %1115, 1
  %1117 = xor i8 %1116, 1
  store i8 %1117, i8* %21, align 1
  %1118 = xor i32 %1106, %1103
  %1119 = xor i32 %1118, %1107
  %1120 = lshr i32 %1119, 4
  %1121 = trunc i32 %1120 to i8
  %1122 = and i8 %1121, 1
  store i8 %1122, i8* %27, align 1
  %1123 = icmp eq i32 %1107, 0
  %1124 = zext i1 %1123 to i8
  store i8 %1124, i8* %30, align 1
  %1125 = lshr i32 %1107, 31
  %1126 = trunc i32 %1125 to i8
  store i8 %1126, i8* %33, align 1
  %1127 = lshr i32 %1103, 31
  %1128 = lshr i32 %1106, 31
  %1129 = xor i32 %1125, %1127
  %1130 = xor i32 %1125, %1128
  %1131 = add nuw nsw i32 %1129, %1130
  %1132 = icmp eq i32 %1131, 2
  %1133 = zext i1 %1132 to i8
  store i8 %1133, i8* %39, align 1
  %1134 = add i64 %1058, -32
  %1135 = add i64 %1101, 9
  store i64 %1135, i64* %3, align 8
  %1136 = inttoptr i64 %1134 to i32*
  store i32 %1107, i32* %1136, align 4
  %1137 = load i64, i64* %RBP.i, align 8
  %1138 = add i64 %1137, -32
  %1139 = load i64, i64* %3, align 8
  %1140 = add i64 %1139, 3
  store i64 %1140, i64* %3, align 8
  %1141 = inttoptr i64 %1138 to i32*
  %1142 = load i32, i32* %1141, align 4
  %1143 = zext i32 %1142 to i64
  store i64 %1143, i64* %RAX.i2224, align 8
  %1144 = add i64 %1137, -8
  %1145 = add i64 %1139, 6
  store i64 %1145, i64* %3, align 8
  %1146 = inttoptr i64 %1144 to i32*
  %1147 = load i32, i32* %1146, align 4
  %1148 = add i32 %1147, %1142
  %1149 = zext i32 %1148 to i64
  store i64 %1149, i64* %RAX.i2224, align 8
  %1150 = icmp ult i32 %1148, %1142
  %1151 = icmp ult i32 %1148, %1147
  %1152 = or i1 %1150, %1151
  %1153 = zext i1 %1152 to i8
  store i8 %1153, i8* %14, align 1
  %1154 = and i32 %1148, 255
  %1155 = tail call i32 @llvm.ctpop.i32(i32 %1154)
  %1156 = trunc i32 %1155 to i8
  %1157 = and i8 %1156, 1
  %1158 = xor i8 %1157, 1
  store i8 %1158, i8* %21, align 1
  %1159 = xor i32 %1147, %1142
  %1160 = xor i32 %1159, %1148
  %1161 = lshr i32 %1160, 4
  %1162 = trunc i32 %1161 to i8
  %1163 = and i8 %1162, 1
  store i8 %1163, i8* %27, align 1
  %1164 = icmp eq i32 %1148, 0
  %1165 = zext i1 %1164 to i8
  store i8 %1165, i8* %30, align 1
  %1166 = lshr i32 %1148, 31
  %1167 = trunc i32 %1166 to i8
  store i8 %1167, i8* %33, align 1
  %1168 = lshr i32 %1142, 31
  %1169 = lshr i32 %1147, 31
  %1170 = xor i32 %1166, %1168
  %1171 = xor i32 %1166, %1169
  %1172 = add nuw nsw i32 %1170, %1171
  %1173 = icmp eq i32 %1172, 2
  %1174 = zext i1 %1173 to i8
  store i8 %1174, i8* %39, align 1
  %1175 = add i64 %1137, -36
  %1176 = add i64 %1139, 9
  store i64 %1176, i64* %3, align 8
  %1177 = inttoptr i64 %1175 to i32*
  store i32 %1148, i32* %1177, align 4
  %1178 = load i64, i64* %RBP.i, align 8
  %1179 = add i64 %1178, -36
  %1180 = load i64, i64* %3, align 8
  %1181 = add i64 %1180, 3
  store i64 %1181, i64* %3, align 8
  %1182 = inttoptr i64 %1179 to i32*
  %1183 = load i32, i32* %1182, align 4
  %1184 = zext i32 %1183 to i64
  store i64 %1184, i64* %RAX.i2224, align 8
  %1185 = add i64 %1178, -8
  %1186 = add i64 %1180, 6
  store i64 %1186, i64* %3, align 8
  %1187 = inttoptr i64 %1185 to i32*
  %1188 = load i32, i32* %1187, align 4
  %1189 = add i32 %1188, %1183
  %1190 = zext i32 %1189 to i64
  store i64 %1190, i64* %RAX.i2224, align 8
  %1191 = icmp ult i32 %1189, %1183
  %1192 = icmp ult i32 %1189, %1188
  %1193 = or i1 %1191, %1192
  %1194 = zext i1 %1193 to i8
  store i8 %1194, i8* %14, align 1
  %1195 = and i32 %1189, 255
  %1196 = tail call i32 @llvm.ctpop.i32(i32 %1195)
  %1197 = trunc i32 %1196 to i8
  %1198 = and i8 %1197, 1
  %1199 = xor i8 %1198, 1
  store i8 %1199, i8* %21, align 1
  %1200 = xor i32 %1188, %1183
  %1201 = xor i32 %1200, %1189
  %1202 = lshr i32 %1201, 4
  %1203 = trunc i32 %1202 to i8
  %1204 = and i8 %1203, 1
  store i8 %1204, i8* %27, align 1
  %1205 = icmp eq i32 %1189, 0
  %1206 = zext i1 %1205 to i8
  store i8 %1206, i8* %30, align 1
  %1207 = lshr i32 %1189, 31
  %1208 = trunc i32 %1207 to i8
  store i8 %1208, i8* %33, align 1
  %1209 = lshr i32 %1183, 31
  %1210 = lshr i32 %1188, 31
  %1211 = xor i32 %1207, %1209
  %1212 = xor i32 %1207, %1210
  %1213 = add nuw nsw i32 %1211, %1212
  %1214 = icmp eq i32 %1213, 2
  %1215 = zext i1 %1214 to i8
  store i8 %1215, i8* %39, align 1
  %1216 = add i64 %1178, -40
  %1217 = add i64 %1180, 9
  store i64 %1217, i64* %3, align 8
  %1218 = inttoptr i64 %1216 to i32*
  store i32 %1189, i32* %1218, align 4
  %1219 = load i64, i64* %RBP.i, align 8
  %1220 = add i64 %1219, -16
  %1221 = load i64, i64* %3, align 8
  %1222 = add i64 %1221, 4
  store i64 %1222, i64* %3, align 8
  %1223 = inttoptr i64 %1220 to i64*
  %1224 = load i64, i64* %1223, align 8
  store i64 %1224, i64* %RCX.i2236, align 8
  %1225 = add i64 %1219, -28
  %1226 = add i64 %1221, 8
  store i64 %1226, i64* %3, align 8
  %1227 = inttoptr i64 %1225 to i32*
  %1228 = load i32, i32* %1227, align 4
  %1229 = sext i32 %1228 to i64
  store i64 %1229, i64* %RDX.i2239, align 8
  %1230 = shl nsw i64 %1229, 3
  %1231 = add i64 %1230, %1224
  %1232 = add i64 %1221, 13
  store i64 %1232, i64* %3, align 8
  %1233 = inttoptr i64 %1231 to i64*
  %1234 = load i64, i64* %1233, align 8
  store i64 %1234, i64* %1038, align 1
  store double 0.000000e+00, double* %97, align 1
  %1235 = add i64 %1221, 17
  store i64 %1235, i64* %3, align 8
  %1236 = load i64, i64* %1223, align 8
  store i64 %1236, i64* %RCX.i2236, align 8
  %1237 = add i64 %1219, -32
  %1238 = add i64 %1221, 21
  store i64 %1238, i64* %3, align 8
  %1239 = inttoptr i64 %1237 to i32*
  %1240 = load i32, i32* %1239, align 4
  %1241 = sext i32 %1240 to i64
  store i64 %1241, i64* %RDX.i2239, align 8
  %1242 = shl nsw i64 %1241, 3
  %1243 = add i64 %1242, %1236
  %1244 = add i64 %1221, 26
  store i64 %1244, i64* %3, align 8
  %1245 = bitcast i64 %1234 to double
  %1246 = inttoptr i64 %1243 to double*
  %1247 = load double, double* %1246, align 8
  %1248 = fadd double %1245, %1247
  store double %1248, double* %1037, align 1
  store i64 0, i64* %96, align 1
  %1249 = add i64 %1219, -120
  %1250 = add i64 %1221, 31
  store i64 %1250, i64* %3, align 8
  %1251 = inttoptr i64 %1249 to double*
  store double %1248, double* %1251, align 8
  %1252 = load i64, i64* %RBP.i, align 8
  %1253 = add i64 %1252, -16
  %1254 = load i64, i64* %3, align 8
  %1255 = add i64 %1254, 4
  store i64 %1255, i64* %3, align 8
  %1256 = inttoptr i64 %1253 to i64*
  %1257 = load i64, i64* %1256, align 8
  store i64 %1257, i64* %RCX.i2236, align 8
  %1258 = add i64 %1252, -28
  %1259 = add i64 %1254, 7
  store i64 %1259, i64* %3, align 8
  %1260 = inttoptr i64 %1258 to i32*
  %1261 = load i32, i32* %1260, align 4
  %1262 = add i32 %1261, 1
  %1263 = zext i32 %1262 to i64
  store i64 %1263, i64* %RAX.i2224, align 8
  %1264 = icmp eq i32 %1261, -1
  %1265 = icmp eq i32 %1262, 0
  %1266 = or i1 %1264, %1265
  %1267 = zext i1 %1266 to i8
  store i8 %1267, i8* %14, align 1
  %1268 = and i32 %1262, 255
  %1269 = tail call i32 @llvm.ctpop.i32(i32 %1268)
  %1270 = trunc i32 %1269 to i8
  %1271 = and i8 %1270, 1
  %1272 = xor i8 %1271, 1
  store i8 %1272, i8* %21, align 1
  %1273 = xor i32 %1262, %1261
  %1274 = lshr i32 %1273, 4
  %1275 = trunc i32 %1274 to i8
  %1276 = and i8 %1275, 1
  store i8 %1276, i8* %27, align 1
  %1277 = zext i1 %1265 to i8
  store i8 %1277, i8* %30, align 1
  %1278 = lshr i32 %1262, 31
  %1279 = trunc i32 %1278 to i8
  store i8 %1279, i8* %33, align 1
  %1280 = lshr i32 %1261, 31
  %1281 = xor i32 %1278, %1280
  %1282 = add nuw nsw i32 %1281, %1278
  %1283 = icmp eq i32 %1282, 2
  %1284 = zext i1 %1283 to i8
  store i8 %1284, i8* %39, align 1
  %1285 = sext i32 %1262 to i64
  store i64 %1285, i64* %RDX.i2239, align 8
  %1286 = shl nsw i64 %1285, 3
  %1287 = add i64 %1257, %1286
  %1288 = add i64 %1254, 18
  store i64 %1288, i64* %3, align 8
  %1289 = inttoptr i64 %1287 to i64*
  %1290 = load i64, i64* %1289, align 8
  store i64 %1290, i64* %1038, align 1
  store double 0.000000e+00, double* %97, align 1
  %1291 = add i64 %1254, 22
  store i64 %1291, i64* %3, align 8
  %1292 = load i64, i64* %1256, align 8
  store i64 %1292, i64* %RCX.i2236, align 8
  %1293 = add i64 %1252, -32
  %1294 = add i64 %1254, 25
  store i64 %1294, i64* %3, align 8
  %1295 = inttoptr i64 %1293 to i32*
  %1296 = load i32, i32* %1295, align 4
  %1297 = add i32 %1296, 1
  %1298 = zext i32 %1297 to i64
  store i64 %1298, i64* %RAX.i2224, align 8
  %1299 = icmp eq i32 %1296, -1
  %1300 = icmp eq i32 %1297, 0
  %1301 = or i1 %1299, %1300
  %1302 = zext i1 %1301 to i8
  store i8 %1302, i8* %14, align 1
  %1303 = and i32 %1297, 255
  %1304 = tail call i32 @llvm.ctpop.i32(i32 %1303)
  %1305 = trunc i32 %1304 to i8
  %1306 = and i8 %1305, 1
  %1307 = xor i8 %1306, 1
  store i8 %1307, i8* %21, align 1
  %1308 = xor i32 %1297, %1296
  %1309 = lshr i32 %1308, 4
  %1310 = trunc i32 %1309 to i8
  %1311 = and i8 %1310, 1
  store i8 %1311, i8* %27, align 1
  %1312 = zext i1 %1300 to i8
  store i8 %1312, i8* %30, align 1
  %1313 = lshr i32 %1297, 31
  %1314 = trunc i32 %1313 to i8
  store i8 %1314, i8* %33, align 1
  %1315 = lshr i32 %1296, 31
  %1316 = xor i32 %1313, %1315
  %1317 = add nuw nsw i32 %1316, %1313
  %1318 = icmp eq i32 %1317, 2
  %1319 = zext i1 %1318 to i8
  store i8 %1319, i8* %39, align 1
  %1320 = sext i32 %1297 to i64
  store i64 %1320, i64* %RDX.i2239, align 8
  %1321 = shl nsw i64 %1320, 3
  %1322 = add i64 %1292, %1321
  %1323 = add i64 %1254, 36
  store i64 %1323, i64* %3, align 8
  %1324 = bitcast i64 %1290 to double
  %1325 = inttoptr i64 %1322 to double*
  %1326 = load double, double* %1325, align 8
  %1327 = fadd double %1324, %1326
  store double %1327, double* %1037, align 1
  store i64 0, i64* %96, align 1
  %1328 = load i64, i64* %RBP.i, align 8
  %1329 = add i64 %1328, -128
  %1330 = add i64 %1254, 41
  store i64 %1330, i64* %3, align 8
  %1331 = inttoptr i64 %1329 to double*
  store double %1327, double* %1331, align 8
  %1332 = load i64, i64* %RBP.i, align 8
  %1333 = add i64 %1332, -16
  %1334 = load i64, i64* %3, align 8
  %1335 = add i64 %1334, 4
  store i64 %1335, i64* %3, align 8
  %1336 = inttoptr i64 %1333 to i64*
  %1337 = load i64, i64* %1336, align 8
  store i64 %1337, i64* %RCX.i2236, align 8
  %1338 = add i64 %1332, -28
  %1339 = add i64 %1334, 8
  store i64 %1339, i64* %3, align 8
  %1340 = inttoptr i64 %1338 to i32*
  %1341 = load i32, i32* %1340, align 4
  %1342 = sext i32 %1341 to i64
  store i64 %1342, i64* %RDX.i2239, align 8
  %1343 = shl nsw i64 %1342, 3
  %1344 = add i64 %1343, %1337
  %1345 = add i64 %1334, 13
  store i64 %1345, i64* %3, align 8
  %1346 = inttoptr i64 %1344 to i64*
  %1347 = load i64, i64* %1346, align 8
  store i64 %1347, i64* %1038, align 1
  store double 0.000000e+00, double* %97, align 1
  %1348 = add i64 %1334, 17
  store i64 %1348, i64* %3, align 8
  %1349 = load i64, i64* %1336, align 8
  store i64 %1349, i64* %RCX.i2236, align 8
  %1350 = add i64 %1332, -32
  %1351 = add i64 %1334, 21
  store i64 %1351, i64* %3, align 8
  %1352 = inttoptr i64 %1350 to i32*
  %1353 = load i32, i32* %1352, align 4
  %1354 = sext i32 %1353 to i64
  store i64 %1354, i64* %RDX.i2239, align 8
  %1355 = shl nsw i64 %1354, 3
  %1356 = add i64 %1355, %1349
  %1357 = add i64 %1334, 26
  store i64 %1357, i64* %3, align 8
  %1358 = bitcast i64 %1347 to double
  %1359 = inttoptr i64 %1356 to double*
  %1360 = load double, double* %1359, align 8
  %1361 = fsub double %1358, %1360
  store double %1361, double* %1037, align 1
  store i64 0, i64* %96, align 1
  %1362 = add i64 %1332, -136
  %1363 = add i64 %1334, 34
  store i64 %1363, i64* %3, align 8
  %1364 = inttoptr i64 %1362 to double*
  store double %1361, double* %1364, align 8
  %1365 = load i64, i64* %RBP.i, align 8
  %1366 = add i64 %1365, -16
  %1367 = load i64, i64* %3, align 8
  %1368 = add i64 %1367, 4
  store i64 %1368, i64* %3, align 8
  %1369 = inttoptr i64 %1366 to i64*
  %1370 = load i64, i64* %1369, align 8
  store i64 %1370, i64* %RCX.i2236, align 8
  %1371 = add i64 %1365, -28
  %1372 = add i64 %1367, 7
  store i64 %1372, i64* %3, align 8
  %1373 = inttoptr i64 %1371 to i32*
  %1374 = load i32, i32* %1373, align 4
  %1375 = add i32 %1374, 1
  %1376 = zext i32 %1375 to i64
  store i64 %1376, i64* %RAX.i2224, align 8
  %1377 = icmp eq i32 %1374, -1
  %1378 = icmp eq i32 %1375, 0
  %1379 = or i1 %1377, %1378
  %1380 = zext i1 %1379 to i8
  store i8 %1380, i8* %14, align 1
  %1381 = and i32 %1375, 255
  %1382 = tail call i32 @llvm.ctpop.i32(i32 %1381)
  %1383 = trunc i32 %1382 to i8
  %1384 = and i8 %1383, 1
  %1385 = xor i8 %1384, 1
  store i8 %1385, i8* %21, align 1
  %1386 = xor i32 %1375, %1374
  %1387 = lshr i32 %1386, 4
  %1388 = trunc i32 %1387 to i8
  %1389 = and i8 %1388, 1
  store i8 %1389, i8* %27, align 1
  %1390 = zext i1 %1378 to i8
  store i8 %1390, i8* %30, align 1
  %1391 = lshr i32 %1375, 31
  %1392 = trunc i32 %1391 to i8
  store i8 %1392, i8* %33, align 1
  %1393 = lshr i32 %1374, 31
  %1394 = xor i32 %1391, %1393
  %1395 = add nuw nsw i32 %1394, %1391
  %1396 = icmp eq i32 %1395, 2
  %1397 = zext i1 %1396 to i8
  store i8 %1397, i8* %39, align 1
  %1398 = sext i32 %1375 to i64
  store i64 %1398, i64* %RDX.i2239, align 8
  %1399 = shl nsw i64 %1398, 3
  %1400 = add i64 %1370, %1399
  %1401 = add i64 %1367, 18
  store i64 %1401, i64* %3, align 8
  %1402 = inttoptr i64 %1400 to i64*
  %1403 = load i64, i64* %1402, align 8
  store i64 %1403, i64* %1038, align 1
  store double 0.000000e+00, double* %97, align 1
  %1404 = add i64 %1367, 22
  store i64 %1404, i64* %3, align 8
  %1405 = load i64, i64* %1369, align 8
  store i64 %1405, i64* %RCX.i2236, align 8
  %1406 = add i64 %1365, -32
  %1407 = add i64 %1367, 25
  store i64 %1407, i64* %3, align 8
  %1408 = inttoptr i64 %1406 to i32*
  %1409 = load i32, i32* %1408, align 4
  %1410 = add i32 %1409, 1
  %1411 = zext i32 %1410 to i64
  store i64 %1411, i64* %RAX.i2224, align 8
  %1412 = icmp eq i32 %1409, -1
  %1413 = icmp eq i32 %1410, 0
  %1414 = or i1 %1412, %1413
  %1415 = zext i1 %1414 to i8
  store i8 %1415, i8* %14, align 1
  %1416 = and i32 %1410, 255
  %1417 = tail call i32 @llvm.ctpop.i32(i32 %1416)
  %1418 = trunc i32 %1417 to i8
  %1419 = and i8 %1418, 1
  %1420 = xor i8 %1419, 1
  store i8 %1420, i8* %21, align 1
  %1421 = xor i32 %1410, %1409
  %1422 = lshr i32 %1421, 4
  %1423 = trunc i32 %1422 to i8
  %1424 = and i8 %1423, 1
  store i8 %1424, i8* %27, align 1
  %1425 = zext i1 %1413 to i8
  store i8 %1425, i8* %30, align 1
  %1426 = lshr i32 %1410, 31
  %1427 = trunc i32 %1426 to i8
  store i8 %1427, i8* %33, align 1
  %1428 = lshr i32 %1409, 31
  %1429 = xor i32 %1426, %1428
  %1430 = add nuw nsw i32 %1429, %1426
  %1431 = icmp eq i32 %1430, 2
  %1432 = zext i1 %1431 to i8
  store i8 %1432, i8* %39, align 1
  %1433 = sext i32 %1410 to i64
  store i64 %1433, i64* %RDX.i2239, align 8
  %1434 = shl nsw i64 %1433, 3
  %1435 = add i64 %1405, %1434
  %1436 = add i64 %1367, 36
  store i64 %1436, i64* %3, align 8
  %1437 = bitcast i64 %1403 to double
  %1438 = inttoptr i64 %1435 to double*
  %1439 = load double, double* %1438, align 8
  %1440 = fsub double %1437, %1439
  store double %1440, double* %1037, align 1
  store i64 0, i64* %96, align 1
  %1441 = load i64, i64* %RBP.i, align 8
  %1442 = add i64 %1441, -144
  %1443 = add i64 %1367, 44
  store i64 %1443, i64* %3, align 8
  %1444 = inttoptr i64 %1442 to double*
  store double %1440, double* %1444, align 8
  %1445 = load i64, i64* %RBP.i, align 8
  %1446 = add i64 %1445, -16
  %1447 = load i64, i64* %3, align 8
  %1448 = add i64 %1447, 4
  store i64 %1448, i64* %3, align 8
  %1449 = inttoptr i64 %1446 to i64*
  %1450 = load i64, i64* %1449, align 8
  store i64 %1450, i64* %RCX.i2236, align 8
  %1451 = add i64 %1445, -36
  %1452 = add i64 %1447, 8
  store i64 %1452, i64* %3, align 8
  %1453 = inttoptr i64 %1451 to i32*
  %1454 = load i32, i32* %1453, align 4
  %1455 = sext i32 %1454 to i64
  store i64 %1455, i64* %RDX.i2239, align 8
  %1456 = shl nsw i64 %1455, 3
  %1457 = add i64 %1456, %1450
  %1458 = add i64 %1447, 13
  store i64 %1458, i64* %3, align 8
  %1459 = inttoptr i64 %1457 to i64*
  %1460 = load i64, i64* %1459, align 8
  store i64 %1460, i64* %1038, align 1
  store double 0.000000e+00, double* %97, align 1
  %1461 = add i64 %1447, 17
  store i64 %1461, i64* %3, align 8
  %1462 = load i64, i64* %1449, align 8
  store i64 %1462, i64* %RCX.i2236, align 8
  %1463 = add i64 %1445, -40
  %1464 = add i64 %1447, 21
  store i64 %1464, i64* %3, align 8
  %1465 = inttoptr i64 %1463 to i32*
  %1466 = load i32, i32* %1465, align 4
  %1467 = sext i32 %1466 to i64
  store i64 %1467, i64* %RDX.i2239, align 8
  %1468 = shl nsw i64 %1467, 3
  %1469 = add i64 %1468, %1462
  %1470 = add i64 %1447, 26
  store i64 %1470, i64* %3, align 8
  %1471 = bitcast i64 %1460 to double
  %1472 = inttoptr i64 %1469 to double*
  %1473 = load double, double* %1472, align 8
  %1474 = fadd double %1471, %1473
  store double %1474, double* %1037, align 1
  store i64 0, i64* %96, align 1
  %1475 = add i64 %1445, -152
  %1476 = add i64 %1447, 34
  store i64 %1476, i64* %3, align 8
  %1477 = inttoptr i64 %1475 to double*
  store double %1474, double* %1477, align 8
  %1478 = load i64, i64* %RBP.i, align 8
  %1479 = add i64 %1478, -16
  %1480 = load i64, i64* %3, align 8
  %1481 = add i64 %1480, 4
  store i64 %1481, i64* %3, align 8
  %1482 = inttoptr i64 %1479 to i64*
  %1483 = load i64, i64* %1482, align 8
  store i64 %1483, i64* %RCX.i2236, align 8
  %1484 = add i64 %1478, -36
  %1485 = add i64 %1480, 7
  store i64 %1485, i64* %3, align 8
  %1486 = inttoptr i64 %1484 to i32*
  %1487 = load i32, i32* %1486, align 4
  %1488 = add i32 %1487, 1
  %1489 = zext i32 %1488 to i64
  store i64 %1489, i64* %RAX.i2224, align 8
  %1490 = icmp eq i32 %1487, -1
  %1491 = icmp eq i32 %1488, 0
  %1492 = or i1 %1490, %1491
  %1493 = zext i1 %1492 to i8
  store i8 %1493, i8* %14, align 1
  %1494 = and i32 %1488, 255
  %1495 = tail call i32 @llvm.ctpop.i32(i32 %1494)
  %1496 = trunc i32 %1495 to i8
  %1497 = and i8 %1496, 1
  %1498 = xor i8 %1497, 1
  store i8 %1498, i8* %21, align 1
  %1499 = xor i32 %1488, %1487
  %1500 = lshr i32 %1499, 4
  %1501 = trunc i32 %1500 to i8
  %1502 = and i8 %1501, 1
  store i8 %1502, i8* %27, align 1
  %1503 = zext i1 %1491 to i8
  store i8 %1503, i8* %30, align 1
  %1504 = lshr i32 %1488, 31
  %1505 = trunc i32 %1504 to i8
  store i8 %1505, i8* %33, align 1
  %1506 = lshr i32 %1487, 31
  %1507 = xor i32 %1504, %1506
  %1508 = add nuw nsw i32 %1507, %1504
  %1509 = icmp eq i32 %1508, 2
  %1510 = zext i1 %1509 to i8
  store i8 %1510, i8* %39, align 1
  %1511 = sext i32 %1488 to i64
  store i64 %1511, i64* %RDX.i2239, align 8
  %1512 = shl nsw i64 %1511, 3
  %1513 = add i64 %1483, %1512
  %1514 = add i64 %1480, 18
  store i64 %1514, i64* %3, align 8
  %1515 = inttoptr i64 %1513 to i64*
  %1516 = load i64, i64* %1515, align 8
  store i64 %1516, i64* %1038, align 1
  store double 0.000000e+00, double* %97, align 1
  %1517 = add i64 %1480, 22
  store i64 %1517, i64* %3, align 8
  %1518 = load i64, i64* %1482, align 8
  store i64 %1518, i64* %RCX.i2236, align 8
  %1519 = add i64 %1478, -40
  %1520 = add i64 %1480, 25
  store i64 %1520, i64* %3, align 8
  %1521 = inttoptr i64 %1519 to i32*
  %1522 = load i32, i32* %1521, align 4
  %1523 = add i32 %1522, 1
  %1524 = zext i32 %1523 to i64
  store i64 %1524, i64* %RAX.i2224, align 8
  %1525 = icmp eq i32 %1522, -1
  %1526 = icmp eq i32 %1523, 0
  %1527 = or i1 %1525, %1526
  %1528 = zext i1 %1527 to i8
  store i8 %1528, i8* %14, align 1
  %1529 = and i32 %1523, 255
  %1530 = tail call i32 @llvm.ctpop.i32(i32 %1529)
  %1531 = trunc i32 %1530 to i8
  %1532 = and i8 %1531, 1
  %1533 = xor i8 %1532, 1
  store i8 %1533, i8* %21, align 1
  %1534 = xor i32 %1523, %1522
  %1535 = lshr i32 %1534, 4
  %1536 = trunc i32 %1535 to i8
  %1537 = and i8 %1536, 1
  store i8 %1537, i8* %27, align 1
  %1538 = zext i1 %1526 to i8
  store i8 %1538, i8* %30, align 1
  %1539 = lshr i32 %1523, 31
  %1540 = trunc i32 %1539 to i8
  store i8 %1540, i8* %33, align 1
  %1541 = lshr i32 %1522, 31
  %1542 = xor i32 %1539, %1541
  %1543 = add nuw nsw i32 %1542, %1539
  %1544 = icmp eq i32 %1543, 2
  %1545 = zext i1 %1544 to i8
  store i8 %1545, i8* %39, align 1
  %1546 = sext i32 %1523 to i64
  store i64 %1546, i64* %RDX.i2239, align 8
  %1547 = shl nsw i64 %1546, 3
  %1548 = add i64 %1518, %1547
  %1549 = add i64 %1480, 36
  store i64 %1549, i64* %3, align 8
  %1550 = bitcast i64 %1516 to double
  %1551 = inttoptr i64 %1548 to double*
  %1552 = load double, double* %1551, align 8
  %1553 = fadd double %1550, %1552
  store double %1553, double* %1037, align 1
  store i64 0, i64* %96, align 1
  %1554 = load i64, i64* %RBP.i, align 8
  %1555 = add i64 %1554, -160
  %1556 = add i64 %1480, 44
  store i64 %1556, i64* %3, align 8
  %1557 = inttoptr i64 %1555 to double*
  store double %1553, double* %1557, align 8
  %1558 = load i64, i64* %RBP.i, align 8
  %1559 = add i64 %1558, -16
  %1560 = load i64, i64* %3, align 8
  %1561 = add i64 %1560, 4
  store i64 %1561, i64* %3, align 8
  %1562 = inttoptr i64 %1559 to i64*
  %1563 = load i64, i64* %1562, align 8
  store i64 %1563, i64* %RCX.i2236, align 8
  %1564 = add i64 %1558, -36
  %1565 = add i64 %1560, 8
  store i64 %1565, i64* %3, align 8
  %1566 = inttoptr i64 %1564 to i32*
  %1567 = load i32, i32* %1566, align 4
  %1568 = sext i32 %1567 to i64
  store i64 %1568, i64* %RDX.i2239, align 8
  %1569 = shl nsw i64 %1568, 3
  %1570 = add i64 %1569, %1563
  %1571 = add i64 %1560, 13
  store i64 %1571, i64* %3, align 8
  %1572 = inttoptr i64 %1570 to i64*
  %1573 = load i64, i64* %1572, align 8
  store i64 %1573, i64* %1038, align 1
  store double 0.000000e+00, double* %97, align 1
  %1574 = add i64 %1560, 17
  store i64 %1574, i64* %3, align 8
  %1575 = load i64, i64* %1562, align 8
  store i64 %1575, i64* %RCX.i2236, align 8
  %1576 = add i64 %1558, -40
  %1577 = add i64 %1560, 21
  store i64 %1577, i64* %3, align 8
  %1578 = inttoptr i64 %1576 to i32*
  %1579 = load i32, i32* %1578, align 4
  %1580 = sext i32 %1579 to i64
  store i64 %1580, i64* %RDX.i2239, align 8
  %1581 = shl nsw i64 %1580, 3
  %1582 = add i64 %1581, %1575
  %1583 = add i64 %1560, 26
  store i64 %1583, i64* %3, align 8
  %1584 = bitcast i64 %1573 to double
  %1585 = inttoptr i64 %1582 to double*
  %1586 = load double, double* %1585, align 8
  %1587 = fsub double %1584, %1586
  store double %1587, double* %1037, align 1
  store i64 0, i64* %96, align 1
  %1588 = add i64 %1558, -168
  %1589 = add i64 %1560, 34
  store i64 %1589, i64* %3, align 8
  %1590 = inttoptr i64 %1588 to double*
  store double %1587, double* %1590, align 8
  %1591 = load i64, i64* %RBP.i, align 8
  %1592 = add i64 %1591, -16
  %1593 = load i64, i64* %3, align 8
  %1594 = add i64 %1593, 4
  store i64 %1594, i64* %3, align 8
  %1595 = inttoptr i64 %1592 to i64*
  %1596 = load i64, i64* %1595, align 8
  store i64 %1596, i64* %RCX.i2236, align 8
  %1597 = add i64 %1591, -36
  %1598 = add i64 %1593, 7
  store i64 %1598, i64* %3, align 8
  %1599 = inttoptr i64 %1597 to i32*
  %1600 = load i32, i32* %1599, align 4
  %1601 = add i32 %1600, 1
  %1602 = zext i32 %1601 to i64
  store i64 %1602, i64* %RAX.i2224, align 8
  %1603 = icmp eq i32 %1600, -1
  %1604 = icmp eq i32 %1601, 0
  %1605 = or i1 %1603, %1604
  %1606 = zext i1 %1605 to i8
  store i8 %1606, i8* %14, align 1
  %1607 = and i32 %1601, 255
  %1608 = tail call i32 @llvm.ctpop.i32(i32 %1607)
  %1609 = trunc i32 %1608 to i8
  %1610 = and i8 %1609, 1
  %1611 = xor i8 %1610, 1
  store i8 %1611, i8* %21, align 1
  %1612 = xor i32 %1601, %1600
  %1613 = lshr i32 %1612, 4
  %1614 = trunc i32 %1613 to i8
  %1615 = and i8 %1614, 1
  store i8 %1615, i8* %27, align 1
  %1616 = zext i1 %1604 to i8
  store i8 %1616, i8* %30, align 1
  %1617 = lshr i32 %1601, 31
  %1618 = trunc i32 %1617 to i8
  store i8 %1618, i8* %33, align 1
  %1619 = lshr i32 %1600, 31
  %1620 = xor i32 %1617, %1619
  %1621 = add nuw nsw i32 %1620, %1617
  %1622 = icmp eq i32 %1621, 2
  %1623 = zext i1 %1622 to i8
  store i8 %1623, i8* %39, align 1
  %1624 = sext i32 %1601 to i64
  store i64 %1624, i64* %RDX.i2239, align 8
  %1625 = shl nsw i64 %1624, 3
  %1626 = add i64 %1596, %1625
  %1627 = add i64 %1593, 18
  store i64 %1627, i64* %3, align 8
  %1628 = inttoptr i64 %1626 to i64*
  %1629 = load i64, i64* %1628, align 8
  store i64 %1629, i64* %1038, align 1
  store double 0.000000e+00, double* %97, align 1
  %1630 = add i64 %1593, 22
  store i64 %1630, i64* %3, align 8
  %1631 = load i64, i64* %1595, align 8
  store i64 %1631, i64* %RCX.i2236, align 8
  %1632 = add i64 %1591, -40
  %1633 = add i64 %1593, 25
  store i64 %1633, i64* %3, align 8
  %1634 = inttoptr i64 %1632 to i32*
  %1635 = load i32, i32* %1634, align 4
  %1636 = add i32 %1635, 1
  %1637 = zext i32 %1636 to i64
  store i64 %1637, i64* %RAX.i2224, align 8
  %1638 = icmp eq i32 %1635, -1
  %1639 = icmp eq i32 %1636, 0
  %1640 = or i1 %1638, %1639
  %1641 = zext i1 %1640 to i8
  store i8 %1641, i8* %14, align 1
  %1642 = and i32 %1636, 255
  %1643 = tail call i32 @llvm.ctpop.i32(i32 %1642)
  %1644 = trunc i32 %1643 to i8
  %1645 = and i8 %1644, 1
  %1646 = xor i8 %1645, 1
  store i8 %1646, i8* %21, align 1
  %1647 = xor i32 %1636, %1635
  %1648 = lshr i32 %1647, 4
  %1649 = trunc i32 %1648 to i8
  %1650 = and i8 %1649, 1
  store i8 %1650, i8* %27, align 1
  %1651 = zext i1 %1639 to i8
  store i8 %1651, i8* %30, align 1
  %1652 = lshr i32 %1636, 31
  %1653 = trunc i32 %1652 to i8
  store i8 %1653, i8* %33, align 1
  %1654 = lshr i32 %1635, 31
  %1655 = xor i32 %1652, %1654
  %1656 = add nuw nsw i32 %1655, %1652
  %1657 = icmp eq i32 %1656, 2
  %1658 = zext i1 %1657 to i8
  store i8 %1658, i8* %39, align 1
  %1659 = sext i32 %1636 to i64
  store i64 %1659, i64* %RDX.i2239, align 8
  %1660 = shl nsw i64 %1659, 3
  %1661 = add i64 %1631, %1660
  %1662 = add i64 %1593, 36
  store i64 %1662, i64* %3, align 8
  %1663 = bitcast i64 %1629 to double
  %1664 = inttoptr i64 %1661 to double*
  %1665 = load double, double* %1664, align 8
  %1666 = fsub double %1663, %1665
  store double %1666, double* %1037, align 1
  store i64 0, i64* %96, align 1
  %1667 = load i64, i64* %RBP.i, align 8
  %1668 = add i64 %1667, -176
  %1669 = add i64 %1593, 44
  store i64 %1669, i64* %3, align 8
  %1670 = inttoptr i64 %1668 to double*
  store double %1666, double* %1670, align 8
  %1671 = load i64, i64* %RBP.i, align 8
  %1672 = add i64 %1671, -120
  %1673 = load i64, i64* %3, align 8
  %1674 = add i64 %1673, 5
  store i64 %1674, i64* %3, align 8
  %1675 = inttoptr i64 %1672 to i64*
  %1676 = load i64, i64* %1675, align 8
  store i64 %1676, i64* %1038, align 1
  store double 0.000000e+00, double* %97, align 1
  %1677 = add i64 %1671, -152
  %1678 = add i64 %1673, 13
  store i64 %1678, i64* %3, align 8
  %1679 = bitcast i64 %1676 to double
  %1680 = inttoptr i64 %1677 to double*
  %1681 = load double, double* %1680, align 8
  %1682 = fadd double %1679, %1681
  store double %1682, double* %1037, align 1
  store i64 0, i64* %96, align 1
  %1683 = add i64 %1671, -16
  %1684 = add i64 %1673, 17
  store i64 %1684, i64* %3, align 8
  %1685 = inttoptr i64 %1683 to i64*
  %1686 = load i64, i64* %1685, align 8
  store i64 %1686, i64* %RCX.i2236, align 8
  %1687 = add i64 %1671, -28
  %1688 = add i64 %1673, 21
  store i64 %1688, i64* %3, align 8
  %1689 = inttoptr i64 %1687 to i32*
  %1690 = load i32, i32* %1689, align 4
  %1691 = sext i32 %1690 to i64
  store i64 %1691, i64* %RDX.i2239, align 8
  %1692 = shl nsw i64 %1691, 3
  %1693 = add i64 %1692, %1686
  %1694 = add i64 %1673, 26
  store i64 %1694, i64* %3, align 8
  %1695 = inttoptr i64 %1693 to double*
  store double %1682, double* %1695, align 8
  %1696 = load i64, i64* %RBP.i, align 8
  %1697 = add i64 %1696, -128
  %1698 = load i64, i64* %3, align 8
  %1699 = add i64 %1698, 5
  store i64 %1699, i64* %3, align 8
  %1700 = inttoptr i64 %1697 to i64*
  %1701 = load i64, i64* %1700, align 8
  store i64 %1701, i64* %1038, align 1
  store double 0.000000e+00, double* %97, align 1
  %1702 = add i64 %1696, -160
  %1703 = add i64 %1698, 13
  store i64 %1703, i64* %3, align 8
  %1704 = bitcast i64 %1701 to double
  %1705 = inttoptr i64 %1702 to double*
  %1706 = load double, double* %1705, align 8
  %1707 = fadd double %1704, %1706
  store double %1707, double* %1037, align 1
  store i64 0, i64* %96, align 1
  %1708 = add i64 %1696, -16
  %1709 = add i64 %1698, 17
  store i64 %1709, i64* %3, align 8
  %1710 = inttoptr i64 %1708 to i64*
  %1711 = load i64, i64* %1710, align 8
  store i64 %1711, i64* %RCX.i2236, align 8
  %1712 = add i64 %1696, -28
  %1713 = add i64 %1698, 20
  store i64 %1713, i64* %3, align 8
  %1714 = inttoptr i64 %1712 to i32*
  %1715 = load i32, i32* %1714, align 4
  %1716 = add i32 %1715, 1
  %1717 = zext i32 %1716 to i64
  store i64 %1717, i64* %RAX.i2224, align 8
  %1718 = icmp eq i32 %1715, -1
  %1719 = icmp eq i32 %1716, 0
  %1720 = or i1 %1718, %1719
  %1721 = zext i1 %1720 to i8
  store i8 %1721, i8* %14, align 1
  %1722 = and i32 %1716, 255
  %1723 = tail call i32 @llvm.ctpop.i32(i32 %1722)
  %1724 = trunc i32 %1723 to i8
  %1725 = and i8 %1724, 1
  %1726 = xor i8 %1725, 1
  store i8 %1726, i8* %21, align 1
  %1727 = xor i32 %1716, %1715
  %1728 = lshr i32 %1727, 4
  %1729 = trunc i32 %1728 to i8
  %1730 = and i8 %1729, 1
  store i8 %1730, i8* %27, align 1
  %1731 = zext i1 %1719 to i8
  store i8 %1731, i8* %30, align 1
  %1732 = lshr i32 %1716, 31
  %1733 = trunc i32 %1732 to i8
  store i8 %1733, i8* %33, align 1
  %1734 = lshr i32 %1715, 31
  %1735 = xor i32 %1732, %1734
  %1736 = add nuw nsw i32 %1735, %1732
  %1737 = icmp eq i32 %1736, 2
  %1738 = zext i1 %1737 to i8
  store i8 %1738, i8* %39, align 1
  %1739 = sext i32 %1716 to i64
  store i64 %1739, i64* %RDX.i2239, align 8
  %1740 = shl nsw i64 %1739, 3
  %1741 = add i64 %1711, %1740
  %1742 = add i64 %1698, 31
  store i64 %1742, i64* %3, align 8
  %1743 = inttoptr i64 %1741 to double*
  store double %1707, double* %1743, align 8
  %1744 = load i64, i64* %RBP.i, align 8
  %1745 = add i64 %1744, -160
  %1746 = load i64, i64* %3, align 8
  %1747 = add i64 %1746, 8
  store i64 %1747, i64* %3, align 8
  %1748 = inttoptr i64 %1745 to i64*
  %1749 = load i64, i64* %1748, align 8
  store i64 %1749, i64* %1038, align 1
  store double 0.000000e+00, double* %97, align 1
  %1750 = add i64 %1744, -128
  %1751 = add i64 %1746, 13
  store i64 %1751, i64* %3, align 8
  %1752 = bitcast i64 %1749 to double
  %1753 = inttoptr i64 %1750 to double*
  %1754 = load double, double* %1753, align 8
  %1755 = fsub double %1752, %1754
  store double %1755, double* %1037, align 1
  store i64 0, i64* %96, align 1
  %1756 = add i64 %1744, -16
  %1757 = add i64 %1746, 17
  store i64 %1757, i64* %3, align 8
  %1758 = inttoptr i64 %1756 to i64*
  %1759 = load i64, i64* %1758, align 8
  store i64 %1759, i64* %RCX.i2236, align 8
  %1760 = add i64 %1744, -36
  %1761 = add i64 %1746, 21
  store i64 %1761, i64* %3, align 8
  %1762 = inttoptr i64 %1760 to i32*
  %1763 = load i32, i32* %1762, align 4
  %1764 = sext i32 %1763 to i64
  store i64 %1764, i64* %RDX.i2239, align 8
  %1765 = shl nsw i64 %1764, 3
  %1766 = add i64 %1765, %1759
  %1767 = add i64 %1746, 26
  store i64 %1767, i64* %3, align 8
  %1768 = inttoptr i64 %1766 to double*
  store double %1755, double* %1768, align 8
  %1769 = load i64, i64* %RBP.i, align 8
  %1770 = add i64 %1769, -120
  %1771 = load i64, i64* %3, align 8
  %1772 = add i64 %1771, 5
  store i64 %1772, i64* %3, align 8
  %1773 = inttoptr i64 %1770 to i64*
  %1774 = load i64, i64* %1773, align 8
  store i64 %1774, i64* %1038, align 1
  store double 0.000000e+00, double* %97, align 1
  %1775 = add i64 %1769, -152
  %1776 = add i64 %1771, 13
  store i64 %1776, i64* %3, align 8
  %1777 = bitcast i64 %1774 to double
  %1778 = inttoptr i64 %1775 to double*
  %1779 = load double, double* %1778, align 8
  %1780 = fsub double %1777, %1779
  store double %1780, double* %1037, align 1
  store i64 0, i64* %96, align 1
  %1781 = add i64 %1769, -16
  %1782 = add i64 %1771, 17
  store i64 %1782, i64* %3, align 8
  %1783 = inttoptr i64 %1781 to i64*
  %1784 = load i64, i64* %1783, align 8
  store i64 %1784, i64* %RCX.i2236, align 8
  %1785 = add i64 %1769, -36
  %1786 = add i64 %1771, 20
  store i64 %1786, i64* %3, align 8
  %1787 = inttoptr i64 %1785 to i32*
  %1788 = load i32, i32* %1787, align 4
  %1789 = add i32 %1788, 1
  %1790 = zext i32 %1789 to i64
  store i64 %1790, i64* %RAX.i2224, align 8
  %1791 = icmp eq i32 %1788, -1
  %1792 = icmp eq i32 %1789, 0
  %1793 = or i1 %1791, %1792
  %1794 = zext i1 %1793 to i8
  store i8 %1794, i8* %14, align 1
  %1795 = and i32 %1789, 255
  %1796 = tail call i32 @llvm.ctpop.i32(i32 %1795)
  %1797 = trunc i32 %1796 to i8
  %1798 = and i8 %1797, 1
  %1799 = xor i8 %1798, 1
  store i8 %1799, i8* %21, align 1
  %1800 = xor i32 %1789, %1788
  %1801 = lshr i32 %1800, 4
  %1802 = trunc i32 %1801 to i8
  %1803 = and i8 %1802, 1
  store i8 %1803, i8* %27, align 1
  %1804 = zext i1 %1792 to i8
  store i8 %1804, i8* %30, align 1
  %1805 = lshr i32 %1789, 31
  %1806 = trunc i32 %1805 to i8
  store i8 %1806, i8* %33, align 1
  %1807 = lshr i32 %1788, 31
  %1808 = xor i32 %1805, %1807
  %1809 = add nuw nsw i32 %1808, %1805
  %1810 = icmp eq i32 %1809, 2
  %1811 = zext i1 %1810 to i8
  store i8 %1811, i8* %39, align 1
  %1812 = sext i32 %1789 to i64
  store i64 %1812, i64* %RDX.i2239, align 8
  %1813 = shl nsw i64 %1812, 3
  %1814 = add i64 %1784, %1813
  %1815 = add i64 %1771, 31
  store i64 %1815, i64* %3, align 8
  %1816 = inttoptr i64 %1814 to double*
  store double %1780, double* %1816, align 8
  %1817 = load i64, i64* %RBP.i, align 8
  %1818 = add i64 %1817, -136
  %1819 = load i64, i64* %3, align 8
  %1820 = add i64 %1819, 8
  store i64 %1820, i64* %3, align 8
  %1821 = inttoptr i64 %1818 to i64*
  %1822 = load i64, i64* %1821, align 8
  store i64 %1822, i64* %1038, align 1
  store double 0.000000e+00, double* %97, align 1
  %1823 = add i64 %1817, -176
  %1824 = add i64 %1819, 16
  store i64 %1824, i64* %3, align 8
  %1825 = bitcast i64 %1822 to double
  %1826 = inttoptr i64 %1823 to double*
  %1827 = load double, double* %1826, align 8
  %1828 = fsub double %1825, %1827
  store double %1828, double* %1037, align 1
  store i64 0, i64* %96, align 1
  %1829 = add i64 %1817, -120
  %1830 = add i64 %1819, 21
  store i64 %1830, i64* %3, align 8
  %1831 = inttoptr i64 %1829 to double*
  store double %1828, double* %1831, align 8
  %1832 = load i64, i64* %RBP.i, align 8
  %1833 = add i64 %1832, -144
  %1834 = load i64, i64* %3, align 8
  %1835 = add i64 %1834, 8
  store i64 %1835, i64* %3, align 8
  %1836 = inttoptr i64 %1833 to i64*
  %1837 = load i64, i64* %1836, align 8
  store i64 %1837, i64* %1038, align 1
  store double 0.000000e+00, double* %97, align 1
  %1838 = add i64 %1832, -168
  %1839 = add i64 %1834, 16
  store i64 %1839, i64* %3, align 8
  %1840 = bitcast i64 %1837 to double
  %1841 = inttoptr i64 %1838 to double*
  %1842 = load double, double* %1841, align 8
  %1843 = fadd double %1840, %1842
  store double %1843, double* %1037, align 1
  store i64 0, i64* %96, align 1
  %1844 = add i64 %1832, -128
  %1845 = add i64 %1834, 21
  store i64 %1845, i64* %3, align 8
  %1846 = inttoptr i64 %1844 to double*
  store double %1843, double* %1846, align 8
  %1847 = load i64, i64* %RBP.i, align 8
  %1848 = add i64 %1847, -72
  %1849 = load i64, i64* %3, align 8
  %1850 = add i64 %1849, 5
  store i64 %1850, i64* %3, align 8
  %1851 = inttoptr i64 %1848 to i64*
  %1852 = load i64, i64* %1851, align 8
  store i64 %1852, i64* %1038, align 1
  store double 0.000000e+00, double* %97, align 1
  %1853 = add i64 %1847, -120
  %1854 = add i64 %1849, 10
  store i64 %1854, i64* %3, align 8
  %1855 = inttoptr i64 %1853 to i64*
  %1856 = load i64, i64* %1855, align 8
  store i64 %1856, i64* %1054, align 1
  store double 0.000000e+00, double* %1056, align 1
  %1857 = add i64 %1847, -128
  %1858 = add i64 %1849, 15
  store i64 %1858, i64* %3, align 8
  %1859 = bitcast i64 %1856 to double
  %1860 = inttoptr i64 %1857 to double*
  %1861 = load double, double* %1860, align 8
  %1862 = fsub double %1859, %1861
  store double %1862, double* %1053, align 1
  store i64 0, i64* %1055, align 1
  %1863 = bitcast i64 %1852 to double
  %1864 = fmul double %1863, %1862
  store double %1864, double* %1037, align 1
  store i64 0, i64* %96, align 1
  %1865 = add i64 %1847, -16
  %1866 = add i64 %1849, 23
  store i64 %1866, i64* %3, align 8
  %1867 = inttoptr i64 %1865 to i64*
  %1868 = load i64, i64* %1867, align 8
  store i64 %1868, i64* %RCX.i2236, align 8
  %1869 = add i64 %1847, -32
  %1870 = add i64 %1849, 27
  store i64 %1870, i64* %3, align 8
  %1871 = inttoptr i64 %1869 to i32*
  %1872 = load i32, i32* %1871, align 4
  %1873 = sext i32 %1872 to i64
  store i64 %1873, i64* %RDX.i2239, align 8
  %1874 = shl nsw i64 %1873, 3
  %1875 = add i64 %1874, %1868
  %1876 = add i64 %1849, 32
  store i64 %1876, i64* %3, align 8
  %1877 = inttoptr i64 %1875 to double*
  store double %1864, double* %1877, align 8
  %1878 = load i64, i64* %RBP.i, align 8
  %1879 = add i64 %1878, -72
  %1880 = load i64, i64* %3, align 8
  %1881 = add i64 %1880, 5
  store i64 %1881, i64* %3, align 8
  %1882 = inttoptr i64 %1879 to i64*
  %1883 = load i64, i64* %1882, align 8
  store i64 %1883, i64* %1038, align 1
  store double 0.000000e+00, double* %97, align 1
  %1884 = add i64 %1878, -120
  %1885 = add i64 %1880, 10
  store i64 %1885, i64* %3, align 8
  %1886 = inttoptr i64 %1884 to i64*
  %1887 = load i64, i64* %1886, align 8
  store i64 %1887, i64* %1054, align 1
  store double 0.000000e+00, double* %1056, align 1
  %1888 = add i64 %1878, -128
  %1889 = add i64 %1880, 15
  store i64 %1889, i64* %3, align 8
  %1890 = bitcast i64 %1887 to double
  %1891 = inttoptr i64 %1888 to double*
  %1892 = load double, double* %1891, align 8
  %1893 = fadd double %1890, %1892
  store double %1893, double* %1053, align 1
  store i64 0, i64* %1055, align 1
  %1894 = bitcast i64 %1883 to double
  %1895 = fmul double %1894, %1893
  store double %1895, double* %1037, align 1
  store i64 0, i64* %96, align 1
  %1896 = add i64 %1878, -16
  %1897 = add i64 %1880, 23
  store i64 %1897, i64* %3, align 8
  %1898 = inttoptr i64 %1896 to i64*
  %1899 = load i64, i64* %1898, align 8
  store i64 %1899, i64* %RCX.i2236, align 8
  %1900 = add i64 %1878, -32
  %1901 = add i64 %1880, 26
  store i64 %1901, i64* %3, align 8
  %1902 = inttoptr i64 %1900 to i32*
  %1903 = load i32, i32* %1902, align 4
  %1904 = add i32 %1903, 1
  %1905 = zext i32 %1904 to i64
  store i64 %1905, i64* %RAX.i2224, align 8
  %1906 = icmp eq i32 %1903, -1
  %1907 = icmp eq i32 %1904, 0
  %1908 = or i1 %1906, %1907
  %1909 = zext i1 %1908 to i8
  store i8 %1909, i8* %14, align 1
  %1910 = and i32 %1904, 255
  %1911 = tail call i32 @llvm.ctpop.i32(i32 %1910)
  %1912 = trunc i32 %1911 to i8
  %1913 = and i8 %1912, 1
  %1914 = xor i8 %1913, 1
  store i8 %1914, i8* %21, align 1
  %1915 = xor i32 %1904, %1903
  %1916 = lshr i32 %1915, 4
  %1917 = trunc i32 %1916 to i8
  %1918 = and i8 %1917, 1
  store i8 %1918, i8* %27, align 1
  %1919 = zext i1 %1907 to i8
  store i8 %1919, i8* %30, align 1
  %1920 = lshr i32 %1904, 31
  %1921 = trunc i32 %1920 to i8
  store i8 %1921, i8* %33, align 1
  %1922 = lshr i32 %1903, 31
  %1923 = xor i32 %1920, %1922
  %1924 = add nuw nsw i32 %1923, %1920
  %1925 = icmp eq i32 %1924, 2
  %1926 = zext i1 %1925 to i8
  store i8 %1926, i8* %39, align 1
  %1927 = sext i32 %1904 to i64
  store i64 %1927, i64* %RDX.i2239, align 8
  %1928 = shl nsw i64 %1927, 3
  %1929 = add i64 %1899, %1928
  %1930 = add i64 %1880, 37
  store i64 %1930, i64* %3, align 8
  %1931 = inttoptr i64 %1929 to double*
  store double %1895, double* %1931, align 8
  %1932 = load i64, i64* %RBP.i, align 8
  %1933 = add i64 %1932, -176
  %1934 = load i64, i64* %3, align 8
  %1935 = add i64 %1934, 8
  store i64 %1935, i64* %3, align 8
  %1936 = inttoptr i64 %1933 to i64*
  %1937 = load i64, i64* %1936, align 8
  store i64 %1937, i64* %1038, align 1
  store double 0.000000e+00, double* %97, align 1
  %1938 = add i64 %1932, -136
  %1939 = add i64 %1934, 16
  store i64 %1939, i64* %3, align 8
  %1940 = bitcast i64 %1937 to double
  %1941 = inttoptr i64 %1938 to double*
  %1942 = load double, double* %1941, align 8
  %1943 = fadd double %1940, %1942
  store double %1943, double* %1037, align 1
  store i64 0, i64* %96, align 1
  %1944 = add i64 %1932, -120
  %1945 = add i64 %1934, 21
  store i64 %1945, i64* %3, align 8
  %1946 = inttoptr i64 %1944 to double*
  store double %1943, double* %1946, align 8
  %1947 = load i64, i64* %RBP.i, align 8
  %1948 = add i64 %1947, -168
  %1949 = load i64, i64* %3, align 8
  %1950 = add i64 %1949, 8
  store i64 %1950, i64* %3, align 8
  %1951 = inttoptr i64 %1948 to i64*
  %1952 = load i64, i64* %1951, align 8
  store i64 %1952, i64* %1038, align 1
  store double 0.000000e+00, double* %97, align 1
  %1953 = add i64 %1947, -144
  %1954 = add i64 %1949, 16
  store i64 %1954, i64* %3, align 8
  %1955 = bitcast i64 %1952 to double
  %1956 = inttoptr i64 %1953 to double*
  %1957 = load double, double* %1956, align 8
  %1958 = fsub double %1955, %1957
  store double %1958, double* %1037, align 1
  store i64 0, i64* %96, align 1
  %1959 = add i64 %1947, -128
  %1960 = add i64 %1949, 21
  store i64 %1960, i64* %3, align 8
  %1961 = inttoptr i64 %1959 to double*
  store double %1958, double* %1961, align 8
  %1962 = load i64, i64* %RBP.i, align 8
  %1963 = add i64 %1962, -72
  %1964 = load i64, i64* %3, align 8
  %1965 = add i64 %1964, 5
  store i64 %1965, i64* %3, align 8
  %1966 = inttoptr i64 %1963 to i64*
  %1967 = load i64, i64* %1966, align 8
  store i64 %1967, i64* %1038, align 1
  store double 0.000000e+00, double* %97, align 1
  %1968 = add i64 %1962, -128
  %1969 = add i64 %1964, 10
  store i64 %1969, i64* %3, align 8
  %1970 = inttoptr i64 %1968 to i64*
  %1971 = load i64, i64* %1970, align 8
  store i64 %1971, i64* %1054, align 1
  store double 0.000000e+00, double* %1056, align 1
  %1972 = add i64 %1962, -120
  %1973 = add i64 %1964, 15
  store i64 %1973, i64* %3, align 8
  %1974 = bitcast i64 %1971 to double
  %1975 = inttoptr i64 %1972 to double*
  %1976 = load double, double* %1975, align 8
  %1977 = fsub double %1974, %1976
  store double %1977, double* %1053, align 1
  store i64 0, i64* %1055, align 1
  %1978 = bitcast i64 %1967 to double
  %1979 = fmul double %1978, %1977
  store double %1979, double* %1037, align 1
  store i64 0, i64* %96, align 1
  %1980 = add i64 %1962, -16
  %1981 = add i64 %1964, 23
  store i64 %1981, i64* %3, align 8
  %1982 = inttoptr i64 %1980 to i64*
  %1983 = load i64, i64* %1982, align 8
  store i64 %1983, i64* %RCX.i2236, align 8
  %1984 = add i64 %1962, -40
  %1985 = add i64 %1964, 27
  store i64 %1985, i64* %3, align 8
  %1986 = inttoptr i64 %1984 to i32*
  %1987 = load i32, i32* %1986, align 4
  %1988 = sext i32 %1987 to i64
  store i64 %1988, i64* %RDX.i2239, align 8
  %1989 = shl nsw i64 %1988, 3
  %1990 = add i64 %1989, %1983
  %1991 = add i64 %1964, 32
  store i64 %1991, i64* %3, align 8
  %1992 = inttoptr i64 %1990 to double*
  store double %1979, double* %1992, align 8
  %1993 = load i64, i64* %RBP.i, align 8
  %1994 = add i64 %1993, -72
  %1995 = load i64, i64* %3, align 8
  %1996 = add i64 %1995, 5
  store i64 %1996, i64* %3, align 8
  %1997 = inttoptr i64 %1994 to i64*
  %1998 = load i64, i64* %1997, align 8
  store i64 %1998, i64* %1038, align 1
  store double 0.000000e+00, double* %97, align 1
  %1999 = add i64 %1993, -128
  %2000 = add i64 %1995, 10
  store i64 %2000, i64* %3, align 8
  %2001 = inttoptr i64 %1999 to i64*
  %2002 = load i64, i64* %2001, align 8
  store i64 %2002, i64* %1054, align 1
  store double 0.000000e+00, double* %1056, align 1
  %2003 = add i64 %1993, -120
  %2004 = add i64 %1995, 15
  store i64 %2004, i64* %3, align 8
  %2005 = bitcast i64 %2002 to double
  %2006 = inttoptr i64 %2003 to double*
  %2007 = load double, double* %2006, align 8
  %2008 = fadd double %2005, %2007
  store double %2008, double* %1053, align 1
  store i64 0, i64* %1055, align 1
  %2009 = bitcast i64 %1998 to double
  %2010 = fmul double %2009, %2008
  store double %2010, double* %1037, align 1
  store i64 0, i64* %96, align 1
  %2011 = add i64 %1993, -16
  %2012 = add i64 %1995, 23
  store i64 %2012, i64* %3, align 8
  %2013 = inttoptr i64 %2011 to i64*
  %2014 = load i64, i64* %2013, align 8
  store i64 %2014, i64* %RCX.i2236, align 8
  %2015 = add i64 %1993, -40
  %2016 = add i64 %1995, 26
  store i64 %2016, i64* %3, align 8
  %2017 = inttoptr i64 %2015 to i32*
  %2018 = load i32, i32* %2017, align 4
  %2019 = add i32 %2018, 1
  %2020 = zext i32 %2019 to i64
  store i64 %2020, i64* %RAX.i2224, align 8
  %2021 = icmp eq i32 %2018, -1
  %2022 = icmp eq i32 %2019, 0
  %2023 = or i1 %2021, %2022
  %2024 = zext i1 %2023 to i8
  store i8 %2024, i8* %14, align 1
  %2025 = and i32 %2019, 255
  %2026 = tail call i32 @llvm.ctpop.i32(i32 %2025)
  %2027 = trunc i32 %2026 to i8
  %2028 = and i8 %2027, 1
  %2029 = xor i8 %2028, 1
  store i8 %2029, i8* %21, align 1
  %2030 = xor i32 %2019, %2018
  %2031 = lshr i32 %2030, 4
  %2032 = trunc i32 %2031 to i8
  %2033 = and i8 %2032, 1
  store i8 %2033, i8* %27, align 1
  %2034 = zext i1 %2022 to i8
  store i8 %2034, i8* %30, align 1
  %2035 = lshr i32 %2019, 31
  %2036 = trunc i32 %2035 to i8
  store i8 %2036, i8* %33, align 1
  %2037 = lshr i32 %2018, 31
  %2038 = xor i32 %2035, %2037
  %2039 = add nuw nsw i32 %2038, %2035
  %2040 = icmp eq i32 %2039, 2
  %2041 = zext i1 %2040 to i8
  store i8 %2041, i8* %39, align 1
  %2042 = sext i32 %2019 to i64
  store i64 %2042, i64* %RDX.i2239, align 8
  %2043 = shl nsw i64 %2042, 3
  %2044 = add i64 %2014, %2043
  %2045 = add i64 %1995, 37
  store i64 %2045, i64* %3, align 8
  %2046 = inttoptr i64 %2044 to double*
  store double %2010, double* %2046, align 8
  %2047 = load i64, i64* %RBP.i, align 8
  %2048 = add i64 %2047, -28
  %2049 = load i64, i64* %3, align 8
  %2050 = add i64 %2049, 3
  store i64 %2050, i64* %3, align 8
  %2051 = inttoptr i64 %2048 to i32*
  %2052 = load i32, i32* %2051, align 4
  %2053 = add i32 %2052, 2
  %2054 = zext i32 %2053 to i64
  store i64 %2054, i64* %RAX.i2224, align 8
  %2055 = icmp ugt i32 %2052, -3
  %2056 = zext i1 %2055 to i8
  store i8 %2056, i8* %14, align 1
  %2057 = and i32 %2053, 255
  %2058 = tail call i32 @llvm.ctpop.i32(i32 %2057)
  %2059 = trunc i32 %2058 to i8
  %2060 = and i8 %2059, 1
  %2061 = xor i8 %2060, 1
  store i8 %2061, i8* %21, align 1
  %2062 = xor i32 %2053, %2052
  %2063 = lshr i32 %2062, 4
  %2064 = trunc i32 %2063 to i8
  %2065 = and i8 %2064, 1
  store i8 %2065, i8* %27, align 1
  %2066 = icmp eq i32 %2053, 0
  %2067 = zext i1 %2066 to i8
  store i8 %2067, i8* %30, align 1
  %2068 = lshr i32 %2053, 31
  %2069 = trunc i32 %2068 to i8
  store i8 %2069, i8* %33, align 1
  %2070 = lshr i32 %2052, 31
  %2071 = xor i32 %2068, %2070
  %2072 = add nuw nsw i32 %2071, %2068
  %2073 = icmp eq i32 %2072, 2
  %2074 = zext i1 %2073 to i8
  store i8 %2074, i8* %39, align 1
  %2075 = add i64 %2049, 9
  store i64 %2075, i64* %3, align 8
  store i32 %2053, i32* %2051, align 4
  %2076 = load i64, i64* %3, align 8
  %2077 = add i64 %2076, -695
  store i64 %2077, i64* %3, align 8
  br label %block_.L_4035b1

block_.L_40386d:                                  ; preds = %block_.L_4035b1
  %2078 = add i64 %1058, -48
  %2079 = add i64 %1101, 7
  store i64 %2079, i64* %3, align 8
  %2080 = inttoptr i64 %2078 to i32*
  store i32 0, i32* %2080, align 4
  %2081 = load i64, i64* %RBP.i, align 8
  %2082 = add i64 %2081, -56
  %2083 = load i64, i64* %3, align 8
  %2084 = add i64 %2083, 3
  store i64 %2084, i64* %3, align 8
  %2085 = inttoptr i64 %2082 to i32*
  %2086 = load i32, i32* %2085, align 4
  %2087 = shl i32 %2086, 1
  %2088 = icmp slt i32 %2086, 0
  %2089 = icmp slt i32 %2087, 0
  %2090 = xor i1 %2088, %2089
  %2091 = zext i32 %2087 to i64
  store i64 %2091, i64* %RAX.i2224, align 8
  %.lobit = lshr i32 %2086, 31
  %2092 = trunc i32 %.lobit to i8
  store i8 %2092, i8* %14, align 1
  %2093 = and i32 %2087, 254
  %2094 = tail call i32 @llvm.ctpop.i32(i32 %2093)
  %2095 = trunc i32 %2094 to i8
  %2096 = and i8 %2095, 1
  %2097 = xor i8 %2096, 1
  store i8 %2097, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2098 = icmp eq i32 %2087, 0
  %2099 = zext i1 %2098 to i8
  store i8 %2099, i8* %30, align 1
  %2100 = lshr i32 %2086, 30
  %2101 = trunc i32 %2100 to i8
  %2102 = and i8 %2101, 1
  store i8 %2102, i8* %33, align 1
  %2103 = zext i1 %2090 to i8
  store i8 %2103, i8* %39, align 1
  %2104 = add i64 %2081, -60
  %2105 = add i64 %2083, 8
  store i64 %2105, i64* %3, align 8
  %2106 = inttoptr i64 %2104 to i32*
  store i32 %2087, i32* %2106, align 4
  %2107 = load i64, i64* %RBP.i, align 8
  %2108 = add i64 %2107, -60
  %2109 = load i64, i64* %3, align 8
  %2110 = add i64 %2109, 3
  store i64 %2110, i64* %3, align 8
  %2111 = inttoptr i64 %2108 to i32*
  %2112 = load i32, i32* %2111, align 4
  %2113 = zext i32 %2112 to i64
  store i64 %2113, i64* %RAX.i2224, align 8
  %2114 = add i64 %2107, -44
  %2115 = add i64 %2109, 6
  store i64 %2115, i64* %3, align 8
  %2116 = inttoptr i64 %2114 to i32*
  store i32 %2112, i32* %2116, align 4
  %2117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %2118 = bitcast %union.VectorReg* %2117 to i8*
  %2119 = bitcast [32 x %union.VectorReg]* %1032 to <2 x i32>*
  %2120 = bitcast i64* %96 to <2 x i32>*
  %2121 = bitcast %union.VectorReg* %2117 to i32*
  %2122 = getelementptr inbounds i8, i8* %2118, i64 4
  %2123 = bitcast i8* %2122 to i32*
  %2124 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %2125 = bitcast i64* %2124 to i32*
  %2126 = getelementptr inbounds i8, i8* %2118, i64 12
  %2127 = bitcast i8* %2126 to i32*
  %2128 = bitcast %union.VectorReg* %2117 to double*
  %.pre24 = load i64, i64* %3, align 8
  br label %block_.L_403883

block_.L_403883:                                  ; preds = %block_.L_403feb, %block_.L_40386d
  %2129 = phi i64 [ %4834, %block_.L_403feb ], [ %.pre24, %block_.L_40386d ]
  %2130 = load i64, i64* %RBP.i, align 8
  %2131 = add i64 %2130, -44
  %2132 = add i64 %2129, 3
  store i64 %2132, i64* %3, align 8
  %2133 = inttoptr i64 %2131 to i32*
  %2134 = load i32, i32* %2133, align 4
  %2135 = zext i32 %2134 to i64
  store i64 %2135, i64* %RAX.i2224, align 8
  %2136 = add i64 %2130, -4
  %2137 = add i64 %2129, 6
  store i64 %2137, i64* %3, align 8
  %2138 = inttoptr i64 %2136 to i32*
  %2139 = load i32, i32* %2138, align 4
  %2140 = sub i32 %2134, %2139
  %2141 = icmp ult i32 %2134, %2139
  %2142 = zext i1 %2141 to i8
  store i8 %2142, i8* %14, align 1
  %2143 = and i32 %2140, 255
  %2144 = tail call i32 @llvm.ctpop.i32(i32 %2143)
  %2145 = trunc i32 %2144 to i8
  %2146 = and i8 %2145, 1
  %2147 = xor i8 %2146, 1
  store i8 %2147, i8* %21, align 1
  %2148 = xor i32 %2139, %2134
  %2149 = xor i32 %2148, %2140
  %2150 = lshr i32 %2149, 4
  %2151 = trunc i32 %2150 to i8
  %2152 = and i8 %2151, 1
  store i8 %2152, i8* %27, align 1
  %2153 = icmp eq i32 %2140, 0
  %2154 = zext i1 %2153 to i8
  store i8 %2154, i8* %30, align 1
  %2155 = lshr i32 %2140, 31
  %2156 = trunc i32 %2155 to i8
  store i8 %2156, i8* %33, align 1
  %2157 = lshr i32 %2134, 31
  %2158 = lshr i32 %2139, 31
  %2159 = xor i32 %2158, %2157
  %2160 = xor i32 %2155, %2157
  %2161 = add nuw nsw i32 %2160, %2159
  %2162 = icmp eq i32 %2161, 2
  %2163 = zext i1 %2162 to i8
  store i8 %2163, i8* %39, align 1
  %2164 = icmp ne i8 %2156, 0
  %2165 = xor i1 %2164, %2162
  %.v28 = select i1 %2165, i64 12, i64 1915
  %2166 = add i64 %2129, %.v28
  store i64 %2166, i64* %3, align 8
  br i1 %2165, label %block_40388f, label %block_.L_403ffe

block_40388f:                                     ; preds = %block_.L_403883
  %2167 = add i64 %2166, 2129
  %2168 = add i64 %2166, 8
  store i64 %2168, i64* %3, align 8
  %2169 = inttoptr i64 %2167 to i64*
  %2170 = load i64, i64* %2169, align 8
  store i64 %2170, i64* %1038, align 1
  store double 0.000000e+00, double* %97, align 1
  %2171 = add i64 %2130, -48
  %2172 = add i64 %2166, 11
  store i64 %2172, i64* %3, align 8
  %2173 = inttoptr i64 %2171 to i32*
  %2174 = load i32, i32* %2173, align 4
  %2175 = add i32 %2174, 2
  %2176 = zext i32 %2175 to i64
  store i64 %2176, i64* %RAX.i2224, align 8
  %2177 = icmp ugt i32 %2174, -3
  %2178 = zext i1 %2177 to i8
  store i8 %2178, i8* %14, align 1
  %2179 = and i32 %2175, 255
  %2180 = tail call i32 @llvm.ctpop.i32(i32 %2179)
  %2181 = trunc i32 %2180 to i8
  %2182 = and i8 %2181, 1
  %2183 = xor i8 %2182, 1
  store i8 %2183, i8* %21, align 1
  %2184 = xor i32 %2175, %2174
  %2185 = lshr i32 %2184, 4
  %2186 = trunc i32 %2185 to i8
  %2187 = and i8 %2186, 1
  store i8 %2187, i8* %27, align 1
  %2188 = icmp eq i32 %2175, 0
  %2189 = zext i1 %2188 to i8
  store i8 %2189, i8* %30, align 1
  %2190 = lshr i32 %2175, 31
  %2191 = trunc i32 %2190 to i8
  store i8 %2191, i8* %33, align 1
  %2192 = lshr i32 %2174, 31
  %2193 = xor i32 %2190, %2192
  %2194 = add nuw nsw i32 %2193, %2190
  %2195 = icmp eq i32 %2194, 2
  %2196 = zext i1 %2195 to i8
  store i8 %2196, i8* %39, align 1
  %2197 = add i64 %2166, 17
  store i64 %2197, i64* %3, align 8
  store i32 %2175, i32* %2173, align 4
  %2198 = load i64, i64* %RBP.i, align 8
  %2199 = add i64 %2198, -48
  %2200 = load i64, i64* %3, align 8
  %2201 = add i64 %2200, 3
  store i64 %2201, i64* %3, align 8
  %2202 = inttoptr i64 %2199 to i32*
  %2203 = load i32, i32* %2202, align 4
  %2204 = shl i32 %2203, 1
  %2205 = icmp slt i32 %2203, 0
  %2206 = icmp slt i32 %2204, 0
  %2207 = xor i1 %2205, %2206
  %2208 = zext i32 %2204 to i64
  store i64 %2208, i64* %RAX.i2224, align 8
  %.lobit5 = lshr i32 %2203, 31
  %2209 = trunc i32 %.lobit5 to i8
  store i8 %2209, i8* %14, align 1
  %2210 = and i32 %2204, 254
  %2211 = tail call i32 @llvm.ctpop.i32(i32 %2210)
  %2212 = trunc i32 %2211 to i8
  %2213 = and i8 %2212, 1
  %2214 = xor i8 %2213, 1
  store i8 %2214, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2215 = icmp eq i32 %2204, 0
  %2216 = zext i1 %2215 to i8
  store i8 %2216, i8* %30, align 1
  %2217 = lshr i32 %2203, 30
  %2218 = trunc i32 %2217 to i8
  %2219 = and i8 %2218, 1
  store i8 %2219, i8* %33, align 1
  %2220 = zext i1 %2207 to i8
  store i8 %2220, i8* %39, align 1
  %2221 = add i64 %2198, -52
  %2222 = add i64 %2200, 8
  store i64 %2222, i64* %3, align 8
  %2223 = inttoptr i64 %2221 to i32*
  store i32 %2204, i32* %2223, align 4
  %2224 = load i64, i64* %RBP.i, align 8
  %2225 = add i64 %2224, -24
  %2226 = load i64, i64* %3, align 8
  %2227 = add i64 %2226, 4
  store i64 %2227, i64* %3, align 8
  %2228 = inttoptr i64 %2225 to i64*
  %2229 = load i64, i64* %2228, align 8
  store i64 %2229, i64* %RCX.i2236, align 8
  %2230 = add i64 %2224, -48
  %2231 = add i64 %2226, 8
  store i64 %2231, i64* %3, align 8
  %2232 = inttoptr i64 %2230 to i32*
  %2233 = load i32, i32* %2232, align 4
  %2234 = sext i32 %2233 to i64
  store i64 %2234, i64* %RDX.i2239, align 8
  %2235 = shl nsw i64 %2234, 3
  %2236 = add i64 %2235, %2229
  %2237 = add i64 %2226, 13
  store i64 %2237, i64* %3, align 8
  %2238 = inttoptr i64 %2236 to i64*
  %2239 = load i64, i64* %2238, align 8
  store i64 %2239, i64* %1054, align 1
  store double 0.000000e+00, double* %1056, align 1
  %2240 = add i64 %2224, -88
  %2241 = add i64 %2226, 18
  store i64 %2241, i64* %3, align 8
  %2242 = inttoptr i64 %2240 to i64*
  store i64 %2239, i64* %2242, align 8
  %2243 = load i64, i64* %RBP.i, align 8
  %2244 = add i64 %2243, -24
  %2245 = load i64, i64* %3, align 8
  %2246 = add i64 %2245, 4
  store i64 %2246, i64* %3, align 8
  %2247 = inttoptr i64 %2244 to i64*
  %2248 = load i64, i64* %2247, align 8
  store i64 %2248, i64* %RCX.i2236, align 8
  %2249 = add i64 %2243, -48
  %2250 = add i64 %2245, 7
  store i64 %2250, i64* %3, align 8
  %2251 = inttoptr i64 %2249 to i32*
  %2252 = load i32, i32* %2251, align 4
  %2253 = add i32 %2252, 1
  %2254 = zext i32 %2253 to i64
  store i64 %2254, i64* %RAX.i2224, align 8
  %2255 = icmp eq i32 %2252, -1
  %2256 = icmp eq i32 %2253, 0
  %2257 = or i1 %2255, %2256
  %2258 = zext i1 %2257 to i8
  store i8 %2258, i8* %14, align 1
  %2259 = and i32 %2253, 255
  %2260 = tail call i32 @llvm.ctpop.i32(i32 %2259)
  %2261 = trunc i32 %2260 to i8
  %2262 = and i8 %2261, 1
  %2263 = xor i8 %2262, 1
  store i8 %2263, i8* %21, align 1
  %2264 = xor i32 %2253, %2252
  %2265 = lshr i32 %2264, 4
  %2266 = trunc i32 %2265 to i8
  %2267 = and i8 %2266, 1
  store i8 %2267, i8* %27, align 1
  %2268 = zext i1 %2256 to i8
  store i8 %2268, i8* %30, align 1
  %2269 = lshr i32 %2253, 31
  %2270 = trunc i32 %2269 to i8
  store i8 %2270, i8* %33, align 1
  %2271 = lshr i32 %2252, 31
  %2272 = xor i32 %2269, %2271
  %2273 = add nuw nsw i32 %2272, %2269
  %2274 = icmp eq i32 %2273, 2
  %2275 = zext i1 %2274 to i8
  store i8 %2275, i8* %39, align 1
  %2276 = sext i32 %2253 to i64
  store i64 %2276, i64* %RDX.i2239, align 8
  %2277 = shl nsw i64 %2276, 3
  %2278 = add i64 %2248, %2277
  %2279 = add i64 %2245, 18
  store i64 %2279, i64* %3, align 8
  %2280 = inttoptr i64 %2278 to i64*
  %2281 = load i64, i64* %2280, align 8
  store i64 %2281, i64* %1054, align 1
  store double 0.000000e+00, double* %1056, align 1
  %2282 = add i64 %2243, -96
  %2283 = add i64 %2245, 23
  store i64 %2283, i64* %3, align 8
  %2284 = inttoptr i64 %2282 to i64*
  store i64 %2281, i64* %2284, align 8
  %2285 = load i64, i64* %RBP.i, align 8
  %2286 = add i64 %2285, -24
  %2287 = load i64, i64* %3, align 8
  %2288 = add i64 %2287, 4
  store i64 %2288, i64* %3, align 8
  %2289 = inttoptr i64 %2286 to i64*
  %2290 = load i64, i64* %2289, align 8
  store i64 %2290, i64* %RCX.i2236, align 8
  %2291 = add i64 %2285, -52
  %2292 = add i64 %2287, 8
  store i64 %2292, i64* %3, align 8
  %2293 = inttoptr i64 %2291 to i32*
  %2294 = load i32, i32* %2293, align 4
  %2295 = sext i32 %2294 to i64
  store i64 %2295, i64* %RDX.i2239, align 8
  %2296 = shl nsw i64 %2295, 3
  %2297 = add i64 %2296, %2290
  %2298 = add i64 %2287, 13
  store i64 %2298, i64* %3, align 8
  %2299 = inttoptr i64 %2297 to i64*
  %2300 = load i64, i64* %2299, align 8
  store i64 %2300, i64* %1054, align 1
  store double 0.000000e+00, double* %1056, align 1
  %2301 = add i64 %2285, -72
  %2302 = add i64 %2287, 18
  store i64 %2302, i64* %3, align 8
  %2303 = inttoptr i64 %2301 to i64*
  store i64 %2300, i64* %2303, align 8
  %2304 = load i64, i64* %RBP.i, align 8
  %2305 = add i64 %2304, -24
  %2306 = load i64, i64* %3, align 8
  %2307 = add i64 %2306, 4
  store i64 %2307, i64* %3, align 8
  %2308 = inttoptr i64 %2305 to i64*
  %2309 = load i64, i64* %2308, align 8
  store i64 %2309, i64* %RCX.i2236, align 8
  %2310 = add i64 %2304, -52
  %2311 = add i64 %2306, 7
  store i64 %2311, i64* %3, align 8
  %2312 = inttoptr i64 %2310 to i32*
  %2313 = load i32, i32* %2312, align 4
  %2314 = add i32 %2313, 1
  %2315 = zext i32 %2314 to i64
  store i64 %2315, i64* %RAX.i2224, align 8
  %2316 = icmp eq i32 %2313, -1
  %2317 = icmp eq i32 %2314, 0
  %2318 = or i1 %2316, %2317
  %2319 = zext i1 %2318 to i8
  store i8 %2319, i8* %14, align 1
  %2320 = and i32 %2314, 255
  %2321 = tail call i32 @llvm.ctpop.i32(i32 %2320)
  %2322 = trunc i32 %2321 to i8
  %2323 = and i8 %2322, 1
  %2324 = xor i8 %2323, 1
  store i8 %2324, i8* %21, align 1
  %2325 = xor i32 %2314, %2313
  %2326 = lshr i32 %2325, 4
  %2327 = trunc i32 %2326 to i8
  %2328 = and i8 %2327, 1
  store i8 %2328, i8* %27, align 1
  %2329 = zext i1 %2317 to i8
  store i8 %2329, i8* %30, align 1
  %2330 = lshr i32 %2314, 31
  %2331 = trunc i32 %2330 to i8
  store i8 %2331, i8* %33, align 1
  %2332 = lshr i32 %2313, 31
  %2333 = xor i32 %2330, %2332
  %2334 = add nuw nsw i32 %2333, %2330
  %2335 = icmp eq i32 %2334, 2
  %2336 = zext i1 %2335 to i8
  store i8 %2336, i8* %39, align 1
  %2337 = sext i32 %2314 to i64
  store i64 %2337, i64* %RDX.i2239, align 8
  %2338 = shl nsw i64 %2337, 3
  %2339 = add i64 %2309, %2338
  %2340 = add i64 %2306, 18
  store i64 %2340, i64* %3, align 8
  %2341 = inttoptr i64 %2339 to i64*
  %2342 = load i64, i64* %2341, align 8
  store i64 %2342, i64* %1054, align 1
  store double 0.000000e+00, double* %1056, align 1
  %2343 = add i64 %2304, -80
  %2344 = add i64 %2306, 23
  store i64 %2344, i64* %3, align 8
  %2345 = inttoptr i64 %2343 to i64*
  store i64 %2342, i64* %2345, align 8
  %2346 = load i64, i64* %RBP.i, align 8
  %2347 = add i64 %2346, -72
  %2348 = load i64, i64* %3, align 8
  %2349 = add i64 %2348, 5
  store i64 %2349, i64* %3, align 8
  %2350 = inttoptr i64 %2347 to i64*
  %2351 = load i64, i64* %2350, align 8
  store i64 %2351, i64* %1054, align 1
  store double 0.000000e+00, double* %1056, align 1
  %2352 = load <2 x i32>, <2 x i32>* %2119, align 1
  %2353 = load <2 x i32>, <2 x i32>* %2120, align 1
  %2354 = extractelement <2 x i32> %2352, i32 0
  store i32 %2354, i32* %2121, align 1
  %2355 = extractelement <2 x i32> %2352, i32 1
  store i32 %2355, i32* %2123, align 1
  %2356 = extractelement <2 x i32> %2353, i32 0
  store i32 %2356, i32* %2125, align 1
  %2357 = extractelement <2 x i32> %2353, i32 1
  store i32 %2357, i32* %2127, align 1
  %2358 = add i64 %2346, -96
  %2359 = add i64 %2348, 13
  store i64 %2359, i64* %3, align 8
  %2360 = load double, double* %2128, align 1
  %2361 = inttoptr i64 %2358 to double*
  %2362 = load double, double* %2361, align 8
  %2363 = fmul double %2360, %2362
  store double %2363, double* %2128, align 1
  %2364 = add i64 %2346, -80
  %2365 = add i64 %2348, 18
  store i64 %2365, i64* %3, align 8
  %2366 = inttoptr i64 %2364 to double*
  %2367 = load double, double* %2366, align 8
  %2368 = fmul double %2363, %2367
  store double %2368, double* %2128, align 1
  %2369 = bitcast i64 %2351 to double
  %2370 = fsub double %2369, %2368
  store double %2370, double* %1053, align 1
  store i64 0, i64* %1055, align 1
  %2371 = add i64 %2346, -104
  %2372 = add i64 %2348, 27
  store i64 %2372, i64* %3, align 8
  %2373 = inttoptr i64 %2371 to double*
  store double %2370, double* %2373, align 8
  %2374 = load i64, i64* %RBP.i, align 8
  %2375 = add i64 %2374, -96
  %2376 = load i64, i64* %3, align 8
  %2377 = add i64 %2376, 5
  store i64 %2377, i64* %3, align 8
  %2378 = load double, double* %1037, align 1
  %2379 = inttoptr i64 %2375 to double*
  %2380 = load double, double* %2379, align 8
  %2381 = fmul double %2378, %2380
  store double %2381, double* %1037, align 1
  %2382 = add i64 %2374, -72
  %2383 = add i64 %2376, 10
  store i64 %2383, i64* %3, align 8
  %2384 = inttoptr i64 %2382 to double*
  %2385 = load double, double* %2384, align 8
  %2386 = fmul double %2381, %2385
  store double %2386, double* %1037, align 1
  %2387 = add i64 %2374, -80
  %2388 = add i64 %2376, 15
  store i64 %2388, i64* %3, align 8
  %2389 = inttoptr i64 %2387 to double*
  %2390 = load double, double* %2389, align 8
  %2391 = fsub double %2386, %2390
  store double %2391, double* %1037, align 1
  %2392 = add i64 %2374, -112
  %2393 = add i64 %2376, 20
  store i64 %2393, i64* %3, align 8
  %2394 = inttoptr i64 %2392 to double*
  store double %2391, double* %2394, align 8
  %2395 = load i64, i64* %RBP.i, align 8
  %2396 = add i64 %2395, -44
  %2397 = load i64, i64* %3, align 8
  %2398 = add i64 %2397, 3
  store i64 %2398, i64* %3, align 8
  %2399 = inttoptr i64 %2396 to i32*
  %2400 = load i32, i32* %2399, align 4
  %2401 = zext i32 %2400 to i64
  store i64 %2401, i64* %RAX.i2224, align 8
  %2402 = add i64 %2395, -28
  %2403 = add i64 %2397, 6
  store i64 %2403, i64* %3, align 8
  %2404 = inttoptr i64 %2402 to i32*
  store i32 %2400, i32* %2404, align 4
  %.pre25 = load i64, i64* %3, align 8
  br label %block_.L_403930

block_.L_403930:                                  ; preds = %block_403941, %block_40388f
  %2405 = phi i64 [ %3495, %block_403941 ], [ %.pre25, %block_40388f ]
  %2406 = load i64, i64* %RBP.i, align 8
  %2407 = add i64 %2406, -28
  %2408 = add i64 %2405, 3
  store i64 %2408, i64* %3, align 8
  %2409 = inttoptr i64 %2407 to i32*
  %2410 = load i32, i32* %2409, align 4
  %2411 = zext i32 %2410 to i64
  store i64 %2411, i64* %RAX.i2224, align 8
  %2412 = add i64 %2406, -8
  %2413 = add i64 %2405, 6
  store i64 %2413, i64* %3, align 8
  %2414 = inttoptr i64 %2412 to i32*
  %2415 = load i32, i32* %2414, align 4
  %2416 = zext i32 %2415 to i64
  store i64 %2416, i64* %RCX.i2236, align 8
  %2417 = add i64 %2406, -44
  %2418 = add i64 %2405, 9
  store i64 %2418, i64* %3, align 8
  %2419 = inttoptr i64 %2417 to i32*
  %2420 = load i32, i32* %2419, align 4
  %2421 = add i32 %2420, %2415
  %2422 = zext i32 %2421 to i64
  store i64 %2422, i64* %RCX.i2236, align 8
  %2423 = lshr i32 %2421, 31
  %2424 = sub i32 %2410, %2421
  %2425 = icmp ult i32 %2410, %2421
  %2426 = zext i1 %2425 to i8
  store i8 %2426, i8* %14, align 1
  %2427 = and i32 %2424, 255
  %2428 = tail call i32 @llvm.ctpop.i32(i32 %2427)
  %2429 = trunc i32 %2428 to i8
  %2430 = and i8 %2429, 1
  %2431 = xor i8 %2430, 1
  store i8 %2431, i8* %21, align 1
  %2432 = xor i32 %2421, %2410
  %2433 = xor i32 %2432, %2424
  %2434 = lshr i32 %2433, 4
  %2435 = trunc i32 %2434 to i8
  %2436 = and i8 %2435, 1
  store i8 %2436, i8* %27, align 1
  %2437 = icmp eq i32 %2424, 0
  %2438 = zext i1 %2437 to i8
  store i8 %2438, i8* %30, align 1
  %2439 = lshr i32 %2424, 31
  %2440 = trunc i32 %2439 to i8
  store i8 %2440, i8* %33, align 1
  %2441 = lshr i32 %2410, 31
  %2442 = xor i32 %2423, %2441
  %2443 = xor i32 %2439, %2441
  %2444 = add nuw nsw i32 %2443, %2442
  %2445 = icmp eq i32 %2444, 2
  %2446 = zext i1 %2445 to i8
  store i8 %2446, i8* %39, align 1
  %2447 = icmp ne i8 %2440, 0
  %2448 = xor i1 %2447, %2445
  %.v29 = select i1 %2448, i64 17, i64 786
  %2449 = add i64 %2405, %.v29
  store i64 %2449, i64* %3, align 8
  br i1 %2448, label %block_403941, label %block_.L_403c42

block_403941:                                     ; preds = %block_.L_403930
  %2450 = add i64 %2449, 3
  store i64 %2450, i64* %3, align 8
  %2451 = load i32, i32* %2409, align 4
  %2452 = zext i32 %2451 to i64
  store i64 %2452, i64* %RAX.i2224, align 8
  %2453 = add i64 %2449, 6
  store i64 %2453, i64* %3, align 8
  %2454 = load i32, i32* %2414, align 4
  %2455 = add i32 %2454, %2451
  %2456 = zext i32 %2455 to i64
  store i64 %2456, i64* %RAX.i2224, align 8
  %2457 = icmp ult i32 %2455, %2451
  %2458 = icmp ult i32 %2455, %2454
  %2459 = or i1 %2457, %2458
  %2460 = zext i1 %2459 to i8
  store i8 %2460, i8* %14, align 1
  %2461 = and i32 %2455, 255
  %2462 = tail call i32 @llvm.ctpop.i32(i32 %2461)
  %2463 = trunc i32 %2462 to i8
  %2464 = and i8 %2463, 1
  %2465 = xor i8 %2464, 1
  store i8 %2465, i8* %21, align 1
  %2466 = xor i32 %2454, %2451
  %2467 = xor i32 %2466, %2455
  %2468 = lshr i32 %2467, 4
  %2469 = trunc i32 %2468 to i8
  %2470 = and i8 %2469, 1
  store i8 %2470, i8* %27, align 1
  %2471 = icmp eq i32 %2455, 0
  %2472 = zext i1 %2471 to i8
  store i8 %2472, i8* %30, align 1
  %2473 = lshr i32 %2455, 31
  %2474 = trunc i32 %2473 to i8
  store i8 %2474, i8* %33, align 1
  %2475 = lshr i32 %2451, 31
  %2476 = lshr i32 %2454, 31
  %2477 = xor i32 %2473, %2475
  %2478 = xor i32 %2473, %2476
  %2479 = add nuw nsw i32 %2477, %2478
  %2480 = icmp eq i32 %2479, 2
  %2481 = zext i1 %2480 to i8
  store i8 %2481, i8* %39, align 1
  %2482 = add i64 %2406, -32
  %2483 = add i64 %2449, 9
  store i64 %2483, i64* %3, align 8
  %2484 = inttoptr i64 %2482 to i32*
  store i32 %2455, i32* %2484, align 4
  %2485 = load i64, i64* %RBP.i, align 8
  %2486 = add i64 %2485, -32
  %2487 = load i64, i64* %3, align 8
  %2488 = add i64 %2487, 3
  store i64 %2488, i64* %3, align 8
  %2489 = inttoptr i64 %2486 to i32*
  %2490 = load i32, i32* %2489, align 4
  %2491 = zext i32 %2490 to i64
  store i64 %2491, i64* %RAX.i2224, align 8
  %2492 = add i64 %2485, -8
  %2493 = add i64 %2487, 6
  store i64 %2493, i64* %3, align 8
  %2494 = inttoptr i64 %2492 to i32*
  %2495 = load i32, i32* %2494, align 4
  %2496 = add i32 %2495, %2490
  %2497 = zext i32 %2496 to i64
  store i64 %2497, i64* %RAX.i2224, align 8
  %2498 = icmp ult i32 %2496, %2490
  %2499 = icmp ult i32 %2496, %2495
  %2500 = or i1 %2498, %2499
  %2501 = zext i1 %2500 to i8
  store i8 %2501, i8* %14, align 1
  %2502 = and i32 %2496, 255
  %2503 = tail call i32 @llvm.ctpop.i32(i32 %2502)
  %2504 = trunc i32 %2503 to i8
  %2505 = and i8 %2504, 1
  %2506 = xor i8 %2505, 1
  store i8 %2506, i8* %21, align 1
  %2507 = xor i32 %2495, %2490
  %2508 = xor i32 %2507, %2496
  %2509 = lshr i32 %2508, 4
  %2510 = trunc i32 %2509 to i8
  %2511 = and i8 %2510, 1
  store i8 %2511, i8* %27, align 1
  %2512 = icmp eq i32 %2496, 0
  %2513 = zext i1 %2512 to i8
  store i8 %2513, i8* %30, align 1
  %2514 = lshr i32 %2496, 31
  %2515 = trunc i32 %2514 to i8
  store i8 %2515, i8* %33, align 1
  %2516 = lshr i32 %2490, 31
  %2517 = lshr i32 %2495, 31
  %2518 = xor i32 %2514, %2516
  %2519 = xor i32 %2514, %2517
  %2520 = add nuw nsw i32 %2518, %2519
  %2521 = icmp eq i32 %2520, 2
  %2522 = zext i1 %2521 to i8
  store i8 %2522, i8* %39, align 1
  %2523 = add i64 %2485, -36
  %2524 = add i64 %2487, 9
  store i64 %2524, i64* %3, align 8
  %2525 = inttoptr i64 %2523 to i32*
  store i32 %2496, i32* %2525, align 4
  %2526 = load i64, i64* %RBP.i, align 8
  %2527 = add i64 %2526, -36
  %2528 = load i64, i64* %3, align 8
  %2529 = add i64 %2528, 3
  store i64 %2529, i64* %3, align 8
  %2530 = inttoptr i64 %2527 to i32*
  %2531 = load i32, i32* %2530, align 4
  %2532 = zext i32 %2531 to i64
  store i64 %2532, i64* %RAX.i2224, align 8
  %2533 = add i64 %2526, -8
  %2534 = add i64 %2528, 6
  store i64 %2534, i64* %3, align 8
  %2535 = inttoptr i64 %2533 to i32*
  %2536 = load i32, i32* %2535, align 4
  %2537 = add i32 %2536, %2531
  %2538 = zext i32 %2537 to i64
  store i64 %2538, i64* %RAX.i2224, align 8
  %2539 = icmp ult i32 %2537, %2531
  %2540 = icmp ult i32 %2537, %2536
  %2541 = or i1 %2539, %2540
  %2542 = zext i1 %2541 to i8
  store i8 %2542, i8* %14, align 1
  %2543 = and i32 %2537, 255
  %2544 = tail call i32 @llvm.ctpop.i32(i32 %2543)
  %2545 = trunc i32 %2544 to i8
  %2546 = and i8 %2545, 1
  %2547 = xor i8 %2546, 1
  store i8 %2547, i8* %21, align 1
  %2548 = xor i32 %2536, %2531
  %2549 = xor i32 %2548, %2537
  %2550 = lshr i32 %2549, 4
  %2551 = trunc i32 %2550 to i8
  %2552 = and i8 %2551, 1
  store i8 %2552, i8* %27, align 1
  %2553 = icmp eq i32 %2537, 0
  %2554 = zext i1 %2553 to i8
  store i8 %2554, i8* %30, align 1
  %2555 = lshr i32 %2537, 31
  %2556 = trunc i32 %2555 to i8
  store i8 %2556, i8* %33, align 1
  %2557 = lshr i32 %2531, 31
  %2558 = lshr i32 %2536, 31
  %2559 = xor i32 %2555, %2557
  %2560 = xor i32 %2555, %2558
  %2561 = add nuw nsw i32 %2559, %2560
  %2562 = icmp eq i32 %2561, 2
  %2563 = zext i1 %2562 to i8
  store i8 %2563, i8* %39, align 1
  %2564 = add i64 %2526, -40
  %2565 = add i64 %2528, 9
  store i64 %2565, i64* %3, align 8
  %2566 = inttoptr i64 %2564 to i32*
  store i32 %2537, i32* %2566, align 4
  %2567 = load i64, i64* %RBP.i, align 8
  %2568 = add i64 %2567, -16
  %2569 = load i64, i64* %3, align 8
  %2570 = add i64 %2569, 4
  store i64 %2570, i64* %3, align 8
  %2571 = inttoptr i64 %2568 to i64*
  %2572 = load i64, i64* %2571, align 8
  store i64 %2572, i64* %RCX.i2236, align 8
  %2573 = add i64 %2567, -28
  %2574 = add i64 %2569, 8
  store i64 %2574, i64* %3, align 8
  %2575 = inttoptr i64 %2573 to i32*
  %2576 = load i32, i32* %2575, align 4
  %2577 = sext i32 %2576 to i64
  store i64 %2577, i64* %RDX.i2239, align 8
  %2578 = shl nsw i64 %2577, 3
  %2579 = add i64 %2578, %2572
  %2580 = add i64 %2569, 13
  store i64 %2580, i64* %3, align 8
  %2581 = inttoptr i64 %2579 to i64*
  %2582 = load i64, i64* %2581, align 8
  store i64 %2582, i64* %1038, align 1
  store double 0.000000e+00, double* %97, align 1
  %2583 = add i64 %2569, 17
  store i64 %2583, i64* %3, align 8
  %2584 = load i64, i64* %2571, align 8
  store i64 %2584, i64* %RCX.i2236, align 8
  %2585 = add i64 %2567, -32
  %2586 = add i64 %2569, 21
  store i64 %2586, i64* %3, align 8
  %2587 = inttoptr i64 %2585 to i32*
  %2588 = load i32, i32* %2587, align 4
  %2589 = sext i32 %2588 to i64
  store i64 %2589, i64* %RDX.i2239, align 8
  %2590 = shl nsw i64 %2589, 3
  %2591 = add i64 %2590, %2584
  %2592 = add i64 %2569, 26
  store i64 %2592, i64* %3, align 8
  %2593 = bitcast i64 %2582 to double
  %2594 = inttoptr i64 %2591 to double*
  %2595 = load double, double* %2594, align 8
  %2596 = fadd double %2593, %2595
  store double %2596, double* %1037, align 1
  store i64 0, i64* %96, align 1
  %2597 = add i64 %2567, -120
  %2598 = add i64 %2569, 31
  store i64 %2598, i64* %3, align 8
  %2599 = inttoptr i64 %2597 to double*
  store double %2596, double* %2599, align 8
  %2600 = load i64, i64* %RBP.i, align 8
  %2601 = add i64 %2600, -16
  %2602 = load i64, i64* %3, align 8
  %2603 = add i64 %2602, 4
  store i64 %2603, i64* %3, align 8
  %2604 = inttoptr i64 %2601 to i64*
  %2605 = load i64, i64* %2604, align 8
  store i64 %2605, i64* %RCX.i2236, align 8
  %2606 = add i64 %2600, -28
  %2607 = add i64 %2602, 7
  store i64 %2607, i64* %3, align 8
  %2608 = inttoptr i64 %2606 to i32*
  %2609 = load i32, i32* %2608, align 4
  %2610 = add i32 %2609, 1
  %2611 = zext i32 %2610 to i64
  store i64 %2611, i64* %RAX.i2224, align 8
  %2612 = icmp eq i32 %2609, -1
  %2613 = icmp eq i32 %2610, 0
  %2614 = or i1 %2612, %2613
  %2615 = zext i1 %2614 to i8
  store i8 %2615, i8* %14, align 1
  %2616 = and i32 %2610, 255
  %2617 = tail call i32 @llvm.ctpop.i32(i32 %2616)
  %2618 = trunc i32 %2617 to i8
  %2619 = and i8 %2618, 1
  %2620 = xor i8 %2619, 1
  store i8 %2620, i8* %21, align 1
  %2621 = xor i32 %2610, %2609
  %2622 = lshr i32 %2621, 4
  %2623 = trunc i32 %2622 to i8
  %2624 = and i8 %2623, 1
  store i8 %2624, i8* %27, align 1
  %2625 = zext i1 %2613 to i8
  store i8 %2625, i8* %30, align 1
  %2626 = lshr i32 %2610, 31
  %2627 = trunc i32 %2626 to i8
  store i8 %2627, i8* %33, align 1
  %2628 = lshr i32 %2609, 31
  %2629 = xor i32 %2626, %2628
  %2630 = add nuw nsw i32 %2629, %2626
  %2631 = icmp eq i32 %2630, 2
  %2632 = zext i1 %2631 to i8
  store i8 %2632, i8* %39, align 1
  %2633 = sext i32 %2610 to i64
  store i64 %2633, i64* %RDX.i2239, align 8
  %2634 = shl nsw i64 %2633, 3
  %2635 = add i64 %2605, %2634
  %2636 = add i64 %2602, 18
  store i64 %2636, i64* %3, align 8
  %2637 = inttoptr i64 %2635 to i64*
  %2638 = load i64, i64* %2637, align 8
  store i64 %2638, i64* %1038, align 1
  store double 0.000000e+00, double* %97, align 1
  %2639 = add i64 %2602, 22
  store i64 %2639, i64* %3, align 8
  %2640 = load i64, i64* %2604, align 8
  store i64 %2640, i64* %RCX.i2236, align 8
  %2641 = add i64 %2600, -32
  %2642 = add i64 %2602, 25
  store i64 %2642, i64* %3, align 8
  %2643 = inttoptr i64 %2641 to i32*
  %2644 = load i32, i32* %2643, align 4
  %2645 = add i32 %2644, 1
  %2646 = zext i32 %2645 to i64
  store i64 %2646, i64* %RAX.i2224, align 8
  %2647 = icmp eq i32 %2644, -1
  %2648 = icmp eq i32 %2645, 0
  %2649 = or i1 %2647, %2648
  %2650 = zext i1 %2649 to i8
  store i8 %2650, i8* %14, align 1
  %2651 = and i32 %2645, 255
  %2652 = tail call i32 @llvm.ctpop.i32(i32 %2651)
  %2653 = trunc i32 %2652 to i8
  %2654 = and i8 %2653, 1
  %2655 = xor i8 %2654, 1
  store i8 %2655, i8* %21, align 1
  %2656 = xor i32 %2645, %2644
  %2657 = lshr i32 %2656, 4
  %2658 = trunc i32 %2657 to i8
  %2659 = and i8 %2658, 1
  store i8 %2659, i8* %27, align 1
  %2660 = zext i1 %2648 to i8
  store i8 %2660, i8* %30, align 1
  %2661 = lshr i32 %2645, 31
  %2662 = trunc i32 %2661 to i8
  store i8 %2662, i8* %33, align 1
  %2663 = lshr i32 %2644, 31
  %2664 = xor i32 %2661, %2663
  %2665 = add nuw nsw i32 %2664, %2661
  %2666 = icmp eq i32 %2665, 2
  %2667 = zext i1 %2666 to i8
  store i8 %2667, i8* %39, align 1
  %2668 = sext i32 %2645 to i64
  store i64 %2668, i64* %RDX.i2239, align 8
  %2669 = shl nsw i64 %2668, 3
  %2670 = add i64 %2640, %2669
  %2671 = add i64 %2602, 36
  store i64 %2671, i64* %3, align 8
  %2672 = bitcast i64 %2638 to double
  %2673 = inttoptr i64 %2670 to double*
  %2674 = load double, double* %2673, align 8
  %2675 = fadd double %2672, %2674
  store double %2675, double* %1037, align 1
  store i64 0, i64* %96, align 1
  %2676 = load i64, i64* %RBP.i, align 8
  %2677 = add i64 %2676, -128
  %2678 = add i64 %2602, 41
  store i64 %2678, i64* %3, align 8
  %2679 = inttoptr i64 %2677 to double*
  store double %2675, double* %2679, align 8
  %2680 = load i64, i64* %RBP.i, align 8
  %2681 = add i64 %2680, -16
  %2682 = load i64, i64* %3, align 8
  %2683 = add i64 %2682, 4
  store i64 %2683, i64* %3, align 8
  %2684 = inttoptr i64 %2681 to i64*
  %2685 = load i64, i64* %2684, align 8
  store i64 %2685, i64* %RCX.i2236, align 8
  %2686 = add i64 %2680, -28
  %2687 = add i64 %2682, 8
  store i64 %2687, i64* %3, align 8
  %2688 = inttoptr i64 %2686 to i32*
  %2689 = load i32, i32* %2688, align 4
  %2690 = sext i32 %2689 to i64
  store i64 %2690, i64* %RDX.i2239, align 8
  %2691 = shl nsw i64 %2690, 3
  %2692 = add i64 %2691, %2685
  %2693 = add i64 %2682, 13
  store i64 %2693, i64* %3, align 8
  %2694 = inttoptr i64 %2692 to i64*
  %2695 = load i64, i64* %2694, align 8
  store i64 %2695, i64* %1038, align 1
  store double 0.000000e+00, double* %97, align 1
  %2696 = add i64 %2682, 17
  store i64 %2696, i64* %3, align 8
  %2697 = load i64, i64* %2684, align 8
  store i64 %2697, i64* %RCX.i2236, align 8
  %2698 = add i64 %2680, -32
  %2699 = add i64 %2682, 21
  store i64 %2699, i64* %3, align 8
  %2700 = inttoptr i64 %2698 to i32*
  %2701 = load i32, i32* %2700, align 4
  %2702 = sext i32 %2701 to i64
  store i64 %2702, i64* %RDX.i2239, align 8
  %2703 = shl nsw i64 %2702, 3
  %2704 = add i64 %2703, %2697
  %2705 = add i64 %2682, 26
  store i64 %2705, i64* %3, align 8
  %2706 = bitcast i64 %2695 to double
  %2707 = inttoptr i64 %2704 to double*
  %2708 = load double, double* %2707, align 8
  %2709 = fsub double %2706, %2708
  store double %2709, double* %1037, align 1
  store i64 0, i64* %96, align 1
  %2710 = add i64 %2680, -136
  %2711 = add i64 %2682, 34
  store i64 %2711, i64* %3, align 8
  %2712 = inttoptr i64 %2710 to double*
  store double %2709, double* %2712, align 8
  %2713 = load i64, i64* %RBP.i, align 8
  %2714 = add i64 %2713, -16
  %2715 = load i64, i64* %3, align 8
  %2716 = add i64 %2715, 4
  store i64 %2716, i64* %3, align 8
  %2717 = inttoptr i64 %2714 to i64*
  %2718 = load i64, i64* %2717, align 8
  store i64 %2718, i64* %RCX.i2236, align 8
  %2719 = add i64 %2713, -28
  %2720 = add i64 %2715, 7
  store i64 %2720, i64* %3, align 8
  %2721 = inttoptr i64 %2719 to i32*
  %2722 = load i32, i32* %2721, align 4
  %2723 = add i32 %2722, 1
  %2724 = zext i32 %2723 to i64
  store i64 %2724, i64* %RAX.i2224, align 8
  %2725 = icmp eq i32 %2722, -1
  %2726 = icmp eq i32 %2723, 0
  %2727 = or i1 %2725, %2726
  %2728 = zext i1 %2727 to i8
  store i8 %2728, i8* %14, align 1
  %2729 = and i32 %2723, 255
  %2730 = tail call i32 @llvm.ctpop.i32(i32 %2729)
  %2731 = trunc i32 %2730 to i8
  %2732 = and i8 %2731, 1
  %2733 = xor i8 %2732, 1
  store i8 %2733, i8* %21, align 1
  %2734 = xor i32 %2723, %2722
  %2735 = lshr i32 %2734, 4
  %2736 = trunc i32 %2735 to i8
  %2737 = and i8 %2736, 1
  store i8 %2737, i8* %27, align 1
  %2738 = zext i1 %2726 to i8
  store i8 %2738, i8* %30, align 1
  %2739 = lshr i32 %2723, 31
  %2740 = trunc i32 %2739 to i8
  store i8 %2740, i8* %33, align 1
  %2741 = lshr i32 %2722, 31
  %2742 = xor i32 %2739, %2741
  %2743 = add nuw nsw i32 %2742, %2739
  %2744 = icmp eq i32 %2743, 2
  %2745 = zext i1 %2744 to i8
  store i8 %2745, i8* %39, align 1
  %2746 = sext i32 %2723 to i64
  store i64 %2746, i64* %RDX.i2239, align 8
  %2747 = shl nsw i64 %2746, 3
  %2748 = add i64 %2718, %2747
  %2749 = add i64 %2715, 18
  store i64 %2749, i64* %3, align 8
  %2750 = inttoptr i64 %2748 to i64*
  %2751 = load i64, i64* %2750, align 8
  store i64 %2751, i64* %1038, align 1
  store double 0.000000e+00, double* %97, align 1
  %2752 = add i64 %2715, 22
  store i64 %2752, i64* %3, align 8
  %2753 = load i64, i64* %2717, align 8
  store i64 %2753, i64* %RCX.i2236, align 8
  %2754 = add i64 %2713, -32
  %2755 = add i64 %2715, 25
  store i64 %2755, i64* %3, align 8
  %2756 = inttoptr i64 %2754 to i32*
  %2757 = load i32, i32* %2756, align 4
  %2758 = add i32 %2757, 1
  %2759 = zext i32 %2758 to i64
  store i64 %2759, i64* %RAX.i2224, align 8
  %2760 = icmp eq i32 %2757, -1
  %2761 = icmp eq i32 %2758, 0
  %2762 = or i1 %2760, %2761
  %2763 = zext i1 %2762 to i8
  store i8 %2763, i8* %14, align 1
  %2764 = and i32 %2758, 255
  %2765 = tail call i32 @llvm.ctpop.i32(i32 %2764)
  %2766 = trunc i32 %2765 to i8
  %2767 = and i8 %2766, 1
  %2768 = xor i8 %2767, 1
  store i8 %2768, i8* %21, align 1
  %2769 = xor i32 %2758, %2757
  %2770 = lshr i32 %2769, 4
  %2771 = trunc i32 %2770 to i8
  %2772 = and i8 %2771, 1
  store i8 %2772, i8* %27, align 1
  %2773 = zext i1 %2761 to i8
  store i8 %2773, i8* %30, align 1
  %2774 = lshr i32 %2758, 31
  %2775 = trunc i32 %2774 to i8
  store i8 %2775, i8* %33, align 1
  %2776 = lshr i32 %2757, 31
  %2777 = xor i32 %2774, %2776
  %2778 = add nuw nsw i32 %2777, %2774
  %2779 = icmp eq i32 %2778, 2
  %2780 = zext i1 %2779 to i8
  store i8 %2780, i8* %39, align 1
  %2781 = sext i32 %2758 to i64
  store i64 %2781, i64* %RDX.i2239, align 8
  %2782 = shl nsw i64 %2781, 3
  %2783 = add i64 %2753, %2782
  %2784 = add i64 %2715, 36
  store i64 %2784, i64* %3, align 8
  %2785 = bitcast i64 %2751 to double
  %2786 = inttoptr i64 %2783 to double*
  %2787 = load double, double* %2786, align 8
  %2788 = fsub double %2785, %2787
  store double %2788, double* %1037, align 1
  store i64 0, i64* %96, align 1
  %2789 = load i64, i64* %RBP.i, align 8
  %2790 = add i64 %2789, -144
  %2791 = add i64 %2715, 44
  store i64 %2791, i64* %3, align 8
  %2792 = inttoptr i64 %2790 to double*
  store double %2788, double* %2792, align 8
  %2793 = load i64, i64* %RBP.i, align 8
  %2794 = add i64 %2793, -16
  %2795 = load i64, i64* %3, align 8
  %2796 = add i64 %2795, 4
  store i64 %2796, i64* %3, align 8
  %2797 = inttoptr i64 %2794 to i64*
  %2798 = load i64, i64* %2797, align 8
  store i64 %2798, i64* %RCX.i2236, align 8
  %2799 = add i64 %2793, -36
  %2800 = add i64 %2795, 8
  store i64 %2800, i64* %3, align 8
  %2801 = inttoptr i64 %2799 to i32*
  %2802 = load i32, i32* %2801, align 4
  %2803 = sext i32 %2802 to i64
  store i64 %2803, i64* %RDX.i2239, align 8
  %2804 = shl nsw i64 %2803, 3
  %2805 = add i64 %2804, %2798
  %2806 = add i64 %2795, 13
  store i64 %2806, i64* %3, align 8
  %2807 = inttoptr i64 %2805 to i64*
  %2808 = load i64, i64* %2807, align 8
  store i64 %2808, i64* %1038, align 1
  store double 0.000000e+00, double* %97, align 1
  %2809 = add i64 %2795, 17
  store i64 %2809, i64* %3, align 8
  %2810 = load i64, i64* %2797, align 8
  store i64 %2810, i64* %RCX.i2236, align 8
  %2811 = add i64 %2793, -40
  %2812 = add i64 %2795, 21
  store i64 %2812, i64* %3, align 8
  %2813 = inttoptr i64 %2811 to i32*
  %2814 = load i32, i32* %2813, align 4
  %2815 = sext i32 %2814 to i64
  store i64 %2815, i64* %RDX.i2239, align 8
  %2816 = shl nsw i64 %2815, 3
  %2817 = add i64 %2816, %2810
  %2818 = add i64 %2795, 26
  store i64 %2818, i64* %3, align 8
  %2819 = bitcast i64 %2808 to double
  %2820 = inttoptr i64 %2817 to double*
  %2821 = load double, double* %2820, align 8
  %2822 = fadd double %2819, %2821
  store double %2822, double* %1037, align 1
  store i64 0, i64* %96, align 1
  %2823 = add i64 %2793, -152
  %2824 = add i64 %2795, 34
  store i64 %2824, i64* %3, align 8
  %2825 = inttoptr i64 %2823 to double*
  store double %2822, double* %2825, align 8
  %2826 = load i64, i64* %RBP.i, align 8
  %2827 = add i64 %2826, -16
  %2828 = load i64, i64* %3, align 8
  %2829 = add i64 %2828, 4
  store i64 %2829, i64* %3, align 8
  %2830 = inttoptr i64 %2827 to i64*
  %2831 = load i64, i64* %2830, align 8
  store i64 %2831, i64* %RCX.i2236, align 8
  %2832 = add i64 %2826, -36
  %2833 = add i64 %2828, 7
  store i64 %2833, i64* %3, align 8
  %2834 = inttoptr i64 %2832 to i32*
  %2835 = load i32, i32* %2834, align 4
  %2836 = add i32 %2835, 1
  %2837 = zext i32 %2836 to i64
  store i64 %2837, i64* %RAX.i2224, align 8
  %2838 = icmp eq i32 %2835, -1
  %2839 = icmp eq i32 %2836, 0
  %2840 = or i1 %2838, %2839
  %2841 = zext i1 %2840 to i8
  store i8 %2841, i8* %14, align 1
  %2842 = and i32 %2836, 255
  %2843 = tail call i32 @llvm.ctpop.i32(i32 %2842)
  %2844 = trunc i32 %2843 to i8
  %2845 = and i8 %2844, 1
  %2846 = xor i8 %2845, 1
  store i8 %2846, i8* %21, align 1
  %2847 = xor i32 %2836, %2835
  %2848 = lshr i32 %2847, 4
  %2849 = trunc i32 %2848 to i8
  %2850 = and i8 %2849, 1
  store i8 %2850, i8* %27, align 1
  %2851 = zext i1 %2839 to i8
  store i8 %2851, i8* %30, align 1
  %2852 = lshr i32 %2836, 31
  %2853 = trunc i32 %2852 to i8
  store i8 %2853, i8* %33, align 1
  %2854 = lshr i32 %2835, 31
  %2855 = xor i32 %2852, %2854
  %2856 = add nuw nsw i32 %2855, %2852
  %2857 = icmp eq i32 %2856, 2
  %2858 = zext i1 %2857 to i8
  store i8 %2858, i8* %39, align 1
  %2859 = sext i32 %2836 to i64
  store i64 %2859, i64* %RDX.i2239, align 8
  %2860 = shl nsw i64 %2859, 3
  %2861 = add i64 %2831, %2860
  %2862 = add i64 %2828, 18
  store i64 %2862, i64* %3, align 8
  %2863 = inttoptr i64 %2861 to i64*
  %2864 = load i64, i64* %2863, align 8
  store i64 %2864, i64* %1038, align 1
  store double 0.000000e+00, double* %97, align 1
  %2865 = add i64 %2828, 22
  store i64 %2865, i64* %3, align 8
  %2866 = load i64, i64* %2830, align 8
  store i64 %2866, i64* %RCX.i2236, align 8
  %2867 = add i64 %2826, -40
  %2868 = add i64 %2828, 25
  store i64 %2868, i64* %3, align 8
  %2869 = inttoptr i64 %2867 to i32*
  %2870 = load i32, i32* %2869, align 4
  %2871 = add i32 %2870, 1
  %2872 = zext i32 %2871 to i64
  store i64 %2872, i64* %RAX.i2224, align 8
  %2873 = icmp eq i32 %2870, -1
  %2874 = icmp eq i32 %2871, 0
  %2875 = or i1 %2873, %2874
  %2876 = zext i1 %2875 to i8
  store i8 %2876, i8* %14, align 1
  %2877 = and i32 %2871, 255
  %2878 = tail call i32 @llvm.ctpop.i32(i32 %2877)
  %2879 = trunc i32 %2878 to i8
  %2880 = and i8 %2879, 1
  %2881 = xor i8 %2880, 1
  store i8 %2881, i8* %21, align 1
  %2882 = xor i32 %2871, %2870
  %2883 = lshr i32 %2882, 4
  %2884 = trunc i32 %2883 to i8
  %2885 = and i8 %2884, 1
  store i8 %2885, i8* %27, align 1
  %2886 = zext i1 %2874 to i8
  store i8 %2886, i8* %30, align 1
  %2887 = lshr i32 %2871, 31
  %2888 = trunc i32 %2887 to i8
  store i8 %2888, i8* %33, align 1
  %2889 = lshr i32 %2870, 31
  %2890 = xor i32 %2887, %2889
  %2891 = add nuw nsw i32 %2890, %2887
  %2892 = icmp eq i32 %2891, 2
  %2893 = zext i1 %2892 to i8
  store i8 %2893, i8* %39, align 1
  %2894 = sext i32 %2871 to i64
  store i64 %2894, i64* %RDX.i2239, align 8
  %2895 = shl nsw i64 %2894, 3
  %2896 = add i64 %2866, %2895
  %2897 = add i64 %2828, 36
  store i64 %2897, i64* %3, align 8
  %2898 = bitcast i64 %2864 to double
  %2899 = inttoptr i64 %2896 to double*
  %2900 = load double, double* %2899, align 8
  %2901 = fadd double %2898, %2900
  store double %2901, double* %1037, align 1
  store i64 0, i64* %96, align 1
  %2902 = load i64, i64* %RBP.i, align 8
  %2903 = add i64 %2902, -160
  %2904 = add i64 %2828, 44
  store i64 %2904, i64* %3, align 8
  %2905 = inttoptr i64 %2903 to double*
  store double %2901, double* %2905, align 8
  %2906 = load i64, i64* %RBP.i, align 8
  %2907 = add i64 %2906, -16
  %2908 = load i64, i64* %3, align 8
  %2909 = add i64 %2908, 4
  store i64 %2909, i64* %3, align 8
  %2910 = inttoptr i64 %2907 to i64*
  %2911 = load i64, i64* %2910, align 8
  store i64 %2911, i64* %RCX.i2236, align 8
  %2912 = add i64 %2906, -36
  %2913 = add i64 %2908, 8
  store i64 %2913, i64* %3, align 8
  %2914 = inttoptr i64 %2912 to i32*
  %2915 = load i32, i32* %2914, align 4
  %2916 = sext i32 %2915 to i64
  store i64 %2916, i64* %RDX.i2239, align 8
  %2917 = shl nsw i64 %2916, 3
  %2918 = add i64 %2917, %2911
  %2919 = add i64 %2908, 13
  store i64 %2919, i64* %3, align 8
  %2920 = inttoptr i64 %2918 to i64*
  %2921 = load i64, i64* %2920, align 8
  store i64 %2921, i64* %1038, align 1
  store double 0.000000e+00, double* %97, align 1
  %2922 = add i64 %2908, 17
  store i64 %2922, i64* %3, align 8
  %2923 = load i64, i64* %2910, align 8
  store i64 %2923, i64* %RCX.i2236, align 8
  %2924 = add i64 %2906, -40
  %2925 = add i64 %2908, 21
  store i64 %2925, i64* %3, align 8
  %2926 = inttoptr i64 %2924 to i32*
  %2927 = load i32, i32* %2926, align 4
  %2928 = sext i32 %2927 to i64
  store i64 %2928, i64* %RDX.i2239, align 8
  %2929 = shl nsw i64 %2928, 3
  %2930 = add i64 %2929, %2923
  %2931 = add i64 %2908, 26
  store i64 %2931, i64* %3, align 8
  %2932 = bitcast i64 %2921 to double
  %2933 = inttoptr i64 %2930 to double*
  %2934 = load double, double* %2933, align 8
  %2935 = fsub double %2932, %2934
  store double %2935, double* %1037, align 1
  store i64 0, i64* %96, align 1
  %2936 = add i64 %2906, -168
  %2937 = add i64 %2908, 34
  store i64 %2937, i64* %3, align 8
  %2938 = inttoptr i64 %2936 to double*
  store double %2935, double* %2938, align 8
  %2939 = load i64, i64* %RBP.i, align 8
  %2940 = add i64 %2939, -16
  %2941 = load i64, i64* %3, align 8
  %2942 = add i64 %2941, 4
  store i64 %2942, i64* %3, align 8
  %2943 = inttoptr i64 %2940 to i64*
  %2944 = load i64, i64* %2943, align 8
  store i64 %2944, i64* %RCX.i2236, align 8
  %2945 = add i64 %2939, -36
  %2946 = add i64 %2941, 7
  store i64 %2946, i64* %3, align 8
  %2947 = inttoptr i64 %2945 to i32*
  %2948 = load i32, i32* %2947, align 4
  %2949 = add i32 %2948, 1
  %2950 = zext i32 %2949 to i64
  store i64 %2950, i64* %RAX.i2224, align 8
  %2951 = icmp eq i32 %2948, -1
  %2952 = icmp eq i32 %2949, 0
  %2953 = or i1 %2951, %2952
  %2954 = zext i1 %2953 to i8
  store i8 %2954, i8* %14, align 1
  %2955 = and i32 %2949, 255
  %2956 = tail call i32 @llvm.ctpop.i32(i32 %2955)
  %2957 = trunc i32 %2956 to i8
  %2958 = and i8 %2957, 1
  %2959 = xor i8 %2958, 1
  store i8 %2959, i8* %21, align 1
  %2960 = xor i32 %2949, %2948
  %2961 = lshr i32 %2960, 4
  %2962 = trunc i32 %2961 to i8
  %2963 = and i8 %2962, 1
  store i8 %2963, i8* %27, align 1
  %2964 = zext i1 %2952 to i8
  store i8 %2964, i8* %30, align 1
  %2965 = lshr i32 %2949, 31
  %2966 = trunc i32 %2965 to i8
  store i8 %2966, i8* %33, align 1
  %2967 = lshr i32 %2948, 31
  %2968 = xor i32 %2965, %2967
  %2969 = add nuw nsw i32 %2968, %2965
  %2970 = icmp eq i32 %2969, 2
  %2971 = zext i1 %2970 to i8
  store i8 %2971, i8* %39, align 1
  %2972 = sext i32 %2949 to i64
  store i64 %2972, i64* %RDX.i2239, align 8
  %2973 = shl nsw i64 %2972, 3
  %2974 = add i64 %2944, %2973
  %2975 = add i64 %2941, 18
  store i64 %2975, i64* %3, align 8
  %2976 = inttoptr i64 %2974 to i64*
  %2977 = load i64, i64* %2976, align 8
  store i64 %2977, i64* %1038, align 1
  store double 0.000000e+00, double* %97, align 1
  %2978 = add i64 %2941, 22
  store i64 %2978, i64* %3, align 8
  %2979 = load i64, i64* %2943, align 8
  store i64 %2979, i64* %RCX.i2236, align 8
  %2980 = add i64 %2939, -40
  %2981 = add i64 %2941, 25
  store i64 %2981, i64* %3, align 8
  %2982 = inttoptr i64 %2980 to i32*
  %2983 = load i32, i32* %2982, align 4
  %2984 = add i32 %2983, 1
  %2985 = zext i32 %2984 to i64
  store i64 %2985, i64* %RAX.i2224, align 8
  %2986 = icmp eq i32 %2983, -1
  %2987 = icmp eq i32 %2984, 0
  %2988 = or i1 %2986, %2987
  %2989 = zext i1 %2988 to i8
  store i8 %2989, i8* %14, align 1
  %2990 = and i32 %2984, 255
  %2991 = tail call i32 @llvm.ctpop.i32(i32 %2990)
  %2992 = trunc i32 %2991 to i8
  %2993 = and i8 %2992, 1
  %2994 = xor i8 %2993, 1
  store i8 %2994, i8* %21, align 1
  %2995 = xor i32 %2984, %2983
  %2996 = lshr i32 %2995, 4
  %2997 = trunc i32 %2996 to i8
  %2998 = and i8 %2997, 1
  store i8 %2998, i8* %27, align 1
  %2999 = zext i1 %2987 to i8
  store i8 %2999, i8* %30, align 1
  %3000 = lshr i32 %2984, 31
  %3001 = trunc i32 %3000 to i8
  store i8 %3001, i8* %33, align 1
  %3002 = lshr i32 %2983, 31
  %3003 = xor i32 %3000, %3002
  %3004 = add nuw nsw i32 %3003, %3000
  %3005 = icmp eq i32 %3004, 2
  %3006 = zext i1 %3005 to i8
  store i8 %3006, i8* %39, align 1
  %3007 = sext i32 %2984 to i64
  store i64 %3007, i64* %RDX.i2239, align 8
  %3008 = shl nsw i64 %3007, 3
  %3009 = add i64 %2979, %3008
  %3010 = add i64 %2941, 36
  store i64 %3010, i64* %3, align 8
  %3011 = bitcast i64 %2977 to double
  %3012 = inttoptr i64 %3009 to double*
  %3013 = load double, double* %3012, align 8
  %3014 = fsub double %3011, %3013
  store double %3014, double* %1037, align 1
  store i64 0, i64* %96, align 1
  %3015 = load i64, i64* %RBP.i, align 8
  %3016 = add i64 %3015, -176
  %3017 = add i64 %2941, 44
  store i64 %3017, i64* %3, align 8
  %3018 = inttoptr i64 %3016 to double*
  store double %3014, double* %3018, align 8
  %3019 = load i64, i64* %RBP.i, align 8
  %3020 = add i64 %3019, -120
  %3021 = load i64, i64* %3, align 8
  %3022 = add i64 %3021, 5
  store i64 %3022, i64* %3, align 8
  %3023 = inttoptr i64 %3020 to i64*
  %3024 = load i64, i64* %3023, align 8
  store i64 %3024, i64* %1038, align 1
  store double 0.000000e+00, double* %97, align 1
  %3025 = add i64 %3019, -152
  %3026 = add i64 %3021, 13
  store i64 %3026, i64* %3, align 8
  %3027 = bitcast i64 %3024 to double
  %3028 = inttoptr i64 %3025 to double*
  %3029 = load double, double* %3028, align 8
  %3030 = fadd double %3027, %3029
  store double %3030, double* %1037, align 1
  store i64 0, i64* %96, align 1
  %3031 = add i64 %3019, -16
  %3032 = add i64 %3021, 17
  store i64 %3032, i64* %3, align 8
  %3033 = inttoptr i64 %3031 to i64*
  %3034 = load i64, i64* %3033, align 8
  store i64 %3034, i64* %RCX.i2236, align 8
  %3035 = add i64 %3019, -28
  %3036 = add i64 %3021, 21
  store i64 %3036, i64* %3, align 8
  %3037 = inttoptr i64 %3035 to i32*
  %3038 = load i32, i32* %3037, align 4
  %3039 = sext i32 %3038 to i64
  store i64 %3039, i64* %RDX.i2239, align 8
  %3040 = shl nsw i64 %3039, 3
  %3041 = add i64 %3040, %3034
  %3042 = add i64 %3021, 26
  store i64 %3042, i64* %3, align 8
  %3043 = inttoptr i64 %3041 to double*
  store double %3030, double* %3043, align 8
  %3044 = load i64, i64* %RBP.i, align 8
  %3045 = add i64 %3044, -128
  %3046 = load i64, i64* %3, align 8
  %3047 = add i64 %3046, 5
  store i64 %3047, i64* %3, align 8
  %3048 = inttoptr i64 %3045 to i64*
  %3049 = load i64, i64* %3048, align 8
  store i64 %3049, i64* %1038, align 1
  store double 0.000000e+00, double* %97, align 1
  %3050 = add i64 %3044, -160
  %3051 = add i64 %3046, 13
  store i64 %3051, i64* %3, align 8
  %3052 = bitcast i64 %3049 to double
  %3053 = inttoptr i64 %3050 to double*
  %3054 = load double, double* %3053, align 8
  %3055 = fadd double %3052, %3054
  store double %3055, double* %1037, align 1
  store i64 0, i64* %96, align 1
  %3056 = add i64 %3044, -16
  %3057 = add i64 %3046, 17
  store i64 %3057, i64* %3, align 8
  %3058 = inttoptr i64 %3056 to i64*
  %3059 = load i64, i64* %3058, align 8
  store i64 %3059, i64* %RCX.i2236, align 8
  %3060 = add i64 %3044, -28
  %3061 = add i64 %3046, 20
  store i64 %3061, i64* %3, align 8
  %3062 = inttoptr i64 %3060 to i32*
  %3063 = load i32, i32* %3062, align 4
  %3064 = add i32 %3063, 1
  %3065 = zext i32 %3064 to i64
  store i64 %3065, i64* %RAX.i2224, align 8
  %3066 = icmp eq i32 %3063, -1
  %3067 = icmp eq i32 %3064, 0
  %3068 = or i1 %3066, %3067
  %3069 = zext i1 %3068 to i8
  store i8 %3069, i8* %14, align 1
  %3070 = and i32 %3064, 255
  %3071 = tail call i32 @llvm.ctpop.i32(i32 %3070)
  %3072 = trunc i32 %3071 to i8
  %3073 = and i8 %3072, 1
  %3074 = xor i8 %3073, 1
  store i8 %3074, i8* %21, align 1
  %3075 = xor i32 %3064, %3063
  %3076 = lshr i32 %3075, 4
  %3077 = trunc i32 %3076 to i8
  %3078 = and i8 %3077, 1
  store i8 %3078, i8* %27, align 1
  %3079 = zext i1 %3067 to i8
  store i8 %3079, i8* %30, align 1
  %3080 = lshr i32 %3064, 31
  %3081 = trunc i32 %3080 to i8
  store i8 %3081, i8* %33, align 1
  %3082 = lshr i32 %3063, 31
  %3083 = xor i32 %3080, %3082
  %3084 = add nuw nsw i32 %3083, %3080
  %3085 = icmp eq i32 %3084, 2
  %3086 = zext i1 %3085 to i8
  store i8 %3086, i8* %39, align 1
  %3087 = sext i32 %3064 to i64
  store i64 %3087, i64* %RDX.i2239, align 8
  %3088 = shl nsw i64 %3087, 3
  %3089 = add i64 %3059, %3088
  %3090 = add i64 %3046, 31
  store i64 %3090, i64* %3, align 8
  %3091 = inttoptr i64 %3089 to double*
  store double %3055, double* %3091, align 8
  %3092 = load i64, i64* %RBP.i, align 8
  %3093 = add i64 %3092, -152
  %3094 = load i64, i64* %3, align 8
  %3095 = add i64 %3094, 8
  store i64 %3095, i64* %3, align 8
  %3096 = inttoptr i64 %3093 to i64*
  %3097 = load i64, i64* %3096, align 8
  store i64 %3097, i64* %1038, align 1
  store double 0.000000e+00, double* %97, align 1
  %3098 = add i64 %3092, -120
  %3099 = add i64 %3094, 13
  store i64 %3099, i64* %3, align 8
  %3100 = inttoptr i64 %3098 to double*
  %3101 = load double, double* %3100, align 8
  %3102 = bitcast i64 %3097 to double
  %3103 = fsub double %3101, %3102
  store double %3103, double* %1053, align 1
  store i64 0, i64* %1055, align 1
  %3104 = add i64 %3094, 22
  store i64 %3104, i64* %3, align 8
  %3105 = inttoptr i64 %3098 to double*
  store double %3103, double* %3105, align 8
  %3106 = load i64, i64* %RBP.i, align 8
  %3107 = add i64 %3106, -160
  %3108 = load i64, i64* %3, align 8
  %3109 = add i64 %3108, 8
  store i64 %3109, i64* %3, align 8
  %3110 = inttoptr i64 %3107 to i64*
  %3111 = load i64, i64* %3110, align 8
  store i64 %3111, i64* %1038, align 1
  store double 0.000000e+00, double* %97, align 1
  %3112 = add i64 %3106, -128
  %3113 = add i64 %3108, 13
  store i64 %3113, i64* %3, align 8
  %3114 = inttoptr i64 %3112 to double*
  %3115 = load double, double* %3114, align 8
  %3116 = bitcast i64 %3111 to double
  %3117 = fsub double %3115, %3116
  store double %3117, double* %1053, align 1
  store i64 0, i64* %1055, align 1
  %3118 = add i64 %3108, 22
  store i64 %3118, i64* %3, align 8
  %3119 = inttoptr i64 %3112 to double*
  store double %3117, double* %3119, align 8
  %3120 = load i64, i64* %RBP.i, align 8
  %3121 = add i64 %3120, -88
  %3122 = load i64, i64* %3, align 8
  %3123 = add i64 %3122, 5
  store i64 %3123, i64* %3, align 8
  %3124 = inttoptr i64 %3121 to i64*
  %3125 = load i64, i64* %3124, align 8
  store i64 %3125, i64* %1038, align 1
  store double 0.000000e+00, double* %97, align 1
  %3126 = add i64 %3120, -120
  %3127 = add i64 %3122, 10
  store i64 %3127, i64* %3, align 8
  %3128 = bitcast i64 %3125 to double
  %3129 = inttoptr i64 %3126 to double*
  %3130 = load double, double* %3129, align 8
  %3131 = fmul double %3128, %3130
  store double %3131, double* %1037, align 1
  store i64 0, i64* %96, align 1
  %3132 = add i64 %3120, -96
  %3133 = add i64 %3122, 15
  store i64 %3133, i64* %3, align 8
  %3134 = inttoptr i64 %3132 to i64*
  %3135 = load i64, i64* %3134, align 8
  store i64 %3135, i64* %1054, align 1
  store double 0.000000e+00, double* %1056, align 1
  %3136 = add i64 %3120, -128
  %3137 = add i64 %3122, 20
  store i64 %3137, i64* %3, align 8
  %3138 = bitcast i64 %3135 to double
  %3139 = inttoptr i64 %3136 to double*
  %3140 = load double, double* %3139, align 8
  %3141 = fmul double %3138, %3140
  store double %3141, double* %1053, align 1
  store i64 0, i64* %1055, align 1
  %3142 = fsub double %3131, %3141
  store double %3142, double* %1037, align 1
  store i64 0, i64* %96, align 1
  %3143 = add i64 %3120, -16
  %3144 = add i64 %3122, 28
  store i64 %3144, i64* %3, align 8
  %3145 = inttoptr i64 %3143 to i64*
  %3146 = load i64, i64* %3145, align 8
  store i64 %3146, i64* %RCX.i2236, align 8
  %3147 = add i64 %3120, -36
  %3148 = add i64 %3122, 32
  store i64 %3148, i64* %3, align 8
  %3149 = inttoptr i64 %3147 to i32*
  %3150 = load i32, i32* %3149, align 4
  %3151 = sext i32 %3150 to i64
  store i64 %3151, i64* %RDX.i2239, align 8
  %3152 = shl nsw i64 %3151, 3
  %3153 = add i64 %3152, %3146
  %3154 = add i64 %3122, 37
  store i64 %3154, i64* %3, align 8
  %3155 = inttoptr i64 %3153 to double*
  store double %3142, double* %3155, align 8
  %3156 = load i64, i64* %RBP.i, align 8
  %3157 = add i64 %3156, -88
  %3158 = load i64, i64* %3, align 8
  %3159 = add i64 %3158, 5
  store i64 %3159, i64* %3, align 8
  %3160 = inttoptr i64 %3157 to i64*
  %3161 = load i64, i64* %3160, align 8
  store i64 %3161, i64* %1038, align 1
  store double 0.000000e+00, double* %97, align 1
  %3162 = add i64 %3156, -128
  %3163 = add i64 %3158, 10
  store i64 %3163, i64* %3, align 8
  %3164 = bitcast i64 %3161 to double
  %3165 = inttoptr i64 %3162 to double*
  %3166 = load double, double* %3165, align 8
  %3167 = fmul double %3164, %3166
  store double %3167, double* %1037, align 1
  store i64 0, i64* %96, align 1
  %3168 = add i64 %3156, -96
  %3169 = add i64 %3158, 15
  store i64 %3169, i64* %3, align 8
  %3170 = inttoptr i64 %3168 to i64*
  %3171 = load i64, i64* %3170, align 8
  store i64 %3171, i64* %1054, align 1
  store double 0.000000e+00, double* %1056, align 1
  %3172 = add i64 %3156, -120
  %3173 = add i64 %3158, 20
  store i64 %3173, i64* %3, align 8
  %3174 = bitcast i64 %3171 to double
  %3175 = inttoptr i64 %3172 to double*
  %3176 = load double, double* %3175, align 8
  %3177 = fmul double %3174, %3176
  store double %3177, double* %1053, align 1
  store i64 0, i64* %1055, align 1
  %3178 = fadd double %3167, %3177
  store double %3178, double* %1037, align 1
  store i64 0, i64* %96, align 1
  %3179 = add i64 %3156, -16
  %3180 = add i64 %3158, 28
  store i64 %3180, i64* %3, align 8
  %3181 = inttoptr i64 %3179 to i64*
  %3182 = load i64, i64* %3181, align 8
  store i64 %3182, i64* %RCX.i2236, align 8
  %3183 = add i64 %3156, -36
  %3184 = add i64 %3158, 31
  store i64 %3184, i64* %3, align 8
  %3185 = inttoptr i64 %3183 to i32*
  %3186 = load i32, i32* %3185, align 4
  %3187 = add i32 %3186, 1
  %3188 = zext i32 %3187 to i64
  store i64 %3188, i64* %RAX.i2224, align 8
  %3189 = icmp eq i32 %3186, -1
  %3190 = icmp eq i32 %3187, 0
  %3191 = or i1 %3189, %3190
  %3192 = zext i1 %3191 to i8
  store i8 %3192, i8* %14, align 1
  %3193 = and i32 %3187, 255
  %3194 = tail call i32 @llvm.ctpop.i32(i32 %3193)
  %3195 = trunc i32 %3194 to i8
  %3196 = and i8 %3195, 1
  %3197 = xor i8 %3196, 1
  store i8 %3197, i8* %21, align 1
  %3198 = xor i32 %3187, %3186
  %3199 = lshr i32 %3198, 4
  %3200 = trunc i32 %3199 to i8
  %3201 = and i8 %3200, 1
  store i8 %3201, i8* %27, align 1
  %3202 = zext i1 %3190 to i8
  store i8 %3202, i8* %30, align 1
  %3203 = lshr i32 %3187, 31
  %3204 = trunc i32 %3203 to i8
  store i8 %3204, i8* %33, align 1
  %3205 = lshr i32 %3186, 31
  %3206 = xor i32 %3203, %3205
  %3207 = add nuw nsw i32 %3206, %3203
  %3208 = icmp eq i32 %3207, 2
  %3209 = zext i1 %3208 to i8
  store i8 %3209, i8* %39, align 1
  %3210 = sext i32 %3187 to i64
  store i64 %3210, i64* %RDX.i2239, align 8
  %3211 = shl nsw i64 %3210, 3
  %3212 = add i64 %3182, %3211
  %3213 = add i64 %3158, 42
  store i64 %3213, i64* %3, align 8
  %3214 = inttoptr i64 %3212 to double*
  store double %3178, double* %3214, align 8
  %3215 = load i64, i64* %RBP.i, align 8
  %3216 = add i64 %3215, -136
  %3217 = load i64, i64* %3, align 8
  %3218 = add i64 %3217, 8
  store i64 %3218, i64* %3, align 8
  %3219 = inttoptr i64 %3216 to i64*
  %3220 = load i64, i64* %3219, align 8
  store i64 %3220, i64* %1038, align 1
  store double 0.000000e+00, double* %97, align 1
  %3221 = add i64 %3215, -176
  %3222 = add i64 %3217, 16
  store i64 %3222, i64* %3, align 8
  %3223 = bitcast i64 %3220 to double
  %3224 = inttoptr i64 %3221 to double*
  %3225 = load double, double* %3224, align 8
  %3226 = fsub double %3223, %3225
  store double %3226, double* %1037, align 1
  store i64 0, i64* %96, align 1
  %3227 = add i64 %3215, -120
  %3228 = add i64 %3217, 21
  store i64 %3228, i64* %3, align 8
  %3229 = inttoptr i64 %3227 to double*
  store double %3226, double* %3229, align 8
  %3230 = load i64, i64* %RBP.i, align 8
  %3231 = add i64 %3230, -144
  %3232 = load i64, i64* %3, align 8
  %3233 = add i64 %3232, 8
  store i64 %3233, i64* %3, align 8
  %3234 = inttoptr i64 %3231 to i64*
  %3235 = load i64, i64* %3234, align 8
  store i64 %3235, i64* %1038, align 1
  store double 0.000000e+00, double* %97, align 1
  %3236 = add i64 %3230, -168
  %3237 = add i64 %3232, 16
  store i64 %3237, i64* %3, align 8
  %3238 = bitcast i64 %3235 to double
  %3239 = inttoptr i64 %3236 to double*
  %3240 = load double, double* %3239, align 8
  %3241 = fadd double %3238, %3240
  store double %3241, double* %1037, align 1
  store i64 0, i64* %96, align 1
  %3242 = add i64 %3230, -128
  %3243 = add i64 %3232, 21
  store i64 %3243, i64* %3, align 8
  %3244 = inttoptr i64 %3242 to double*
  store double %3241, double* %3244, align 8
  %3245 = load i64, i64* %RBP.i, align 8
  %3246 = add i64 %3245, -72
  %3247 = load i64, i64* %3, align 8
  %3248 = add i64 %3247, 5
  store i64 %3248, i64* %3, align 8
  %3249 = inttoptr i64 %3246 to i64*
  %3250 = load i64, i64* %3249, align 8
  store i64 %3250, i64* %1038, align 1
  store double 0.000000e+00, double* %97, align 1
  %3251 = add i64 %3245, -120
  %3252 = add i64 %3247, 10
  store i64 %3252, i64* %3, align 8
  %3253 = bitcast i64 %3250 to double
  %3254 = inttoptr i64 %3251 to double*
  %3255 = load double, double* %3254, align 8
  %3256 = fmul double %3253, %3255
  store double %3256, double* %1037, align 1
  store i64 0, i64* %96, align 1
  %3257 = add i64 %3245, -80
  %3258 = add i64 %3247, 15
  store i64 %3258, i64* %3, align 8
  %3259 = inttoptr i64 %3257 to i64*
  %3260 = load i64, i64* %3259, align 8
  store i64 %3260, i64* %1054, align 1
  store double 0.000000e+00, double* %1056, align 1
  %3261 = add i64 %3245, -128
  %3262 = add i64 %3247, 20
  store i64 %3262, i64* %3, align 8
  %3263 = bitcast i64 %3260 to double
  %3264 = inttoptr i64 %3261 to double*
  %3265 = load double, double* %3264, align 8
  %3266 = fmul double %3263, %3265
  store double %3266, double* %1053, align 1
  store i64 0, i64* %1055, align 1
  %3267 = fsub double %3256, %3266
  store double %3267, double* %1037, align 1
  store i64 0, i64* %96, align 1
  %3268 = add i64 %3245, -16
  %3269 = add i64 %3247, 28
  store i64 %3269, i64* %3, align 8
  %3270 = inttoptr i64 %3268 to i64*
  %3271 = load i64, i64* %3270, align 8
  store i64 %3271, i64* %RCX.i2236, align 8
  %3272 = add i64 %3245, -32
  %3273 = add i64 %3247, 32
  store i64 %3273, i64* %3, align 8
  %3274 = inttoptr i64 %3272 to i32*
  %3275 = load i32, i32* %3274, align 4
  %3276 = sext i32 %3275 to i64
  store i64 %3276, i64* %RDX.i2239, align 8
  %3277 = shl nsw i64 %3276, 3
  %3278 = add i64 %3277, %3271
  %3279 = add i64 %3247, 37
  store i64 %3279, i64* %3, align 8
  %3280 = inttoptr i64 %3278 to double*
  store double %3267, double* %3280, align 8
  %3281 = load i64, i64* %RBP.i, align 8
  %3282 = add i64 %3281, -72
  %3283 = load i64, i64* %3, align 8
  %3284 = add i64 %3283, 5
  store i64 %3284, i64* %3, align 8
  %3285 = inttoptr i64 %3282 to i64*
  %3286 = load i64, i64* %3285, align 8
  store i64 %3286, i64* %1038, align 1
  store double 0.000000e+00, double* %97, align 1
  %3287 = add i64 %3281, -128
  %3288 = add i64 %3283, 10
  store i64 %3288, i64* %3, align 8
  %3289 = bitcast i64 %3286 to double
  %3290 = inttoptr i64 %3287 to double*
  %3291 = load double, double* %3290, align 8
  %3292 = fmul double %3289, %3291
  store double %3292, double* %1037, align 1
  store i64 0, i64* %96, align 1
  %3293 = add i64 %3281, -80
  %3294 = add i64 %3283, 15
  store i64 %3294, i64* %3, align 8
  %3295 = inttoptr i64 %3293 to i64*
  %3296 = load i64, i64* %3295, align 8
  store i64 %3296, i64* %1054, align 1
  store double 0.000000e+00, double* %1056, align 1
  %3297 = add i64 %3281, -120
  %3298 = add i64 %3283, 20
  store i64 %3298, i64* %3, align 8
  %3299 = bitcast i64 %3296 to double
  %3300 = inttoptr i64 %3297 to double*
  %3301 = load double, double* %3300, align 8
  %3302 = fmul double %3299, %3301
  store double %3302, double* %1053, align 1
  store i64 0, i64* %1055, align 1
  %3303 = fadd double %3292, %3302
  store double %3303, double* %1037, align 1
  store i64 0, i64* %96, align 1
  %3304 = add i64 %3281, -16
  %3305 = add i64 %3283, 28
  store i64 %3305, i64* %3, align 8
  %3306 = inttoptr i64 %3304 to i64*
  %3307 = load i64, i64* %3306, align 8
  store i64 %3307, i64* %RCX.i2236, align 8
  %3308 = add i64 %3281, -32
  %3309 = add i64 %3283, 31
  store i64 %3309, i64* %3, align 8
  %3310 = inttoptr i64 %3308 to i32*
  %3311 = load i32, i32* %3310, align 4
  %3312 = add i32 %3311, 1
  %3313 = zext i32 %3312 to i64
  store i64 %3313, i64* %RAX.i2224, align 8
  %3314 = icmp eq i32 %3311, -1
  %3315 = icmp eq i32 %3312, 0
  %3316 = or i1 %3314, %3315
  %3317 = zext i1 %3316 to i8
  store i8 %3317, i8* %14, align 1
  %3318 = and i32 %3312, 255
  %3319 = tail call i32 @llvm.ctpop.i32(i32 %3318)
  %3320 = trunc i32 %3319 to i8
  %3321 = and i8 %3320, 1
  %3322 = xor i8 %3321, 1
  store i8 %3322, i8* %21, align 1
  %3323 = xor i32 %3312, %3311
  %3324 = lshr i32 %3323, 4
  %3325 = trunc i32 %3324 to i8
  %3326 = and i8 %3325, 1
  store i8 %3326, i8* %27, align 1
  %3327 = zext i1 %3315 to i8
  store i8 %3327, i8* %30, align 1
  %3328 = lshr i32 %3312, 31
  %3329 = trunc i32 %3328 to i8
  store i8 %3329, i8* %33, align 1
  %3330 = lshr i32 %3311, 31
  %3331 = xor i32 %3328, %3330
  %3332 = add nuw nsw i32 %3331, %3328
  %3333 = icmp eq i32 %3332, 2
  %3334 = zext i1 %3333 to i8
  store i8 %3334, i8* %39, align 1
  %3335 = sext i32 %3312 to i64
  store i64 %3335, i64* %RDX.i2239, align 8
  %3336 = shl nsw i64 %3335, 3
  %3337 = add i64 %3307, %3336
  %3338 = add i64 %3283, 42
  store i64 %3338, i64* %3, align 8
  %3339 = inttoptr i64 %3337 to double*
  store double %3303, double* %3339, align 8
  %3340 = load i64, i64* %RBP.i, align 8
  %3341 = add i64 %3340, -136
  %3342 = load i64, i64* %3, align 8
  %3343 = add i64 %3342, 8
  store i64 %3343, i64* %3, align 8
  %3344 = inttoptr i64 %3341 to i64*
  %3345 = load i64, i64* %3344, align 8
  store i64 %3345, i64* %1038, align 1
  store double 0.000000e+00, double* %97, align 1
  %3346 = add i64 %3340, -176
  %3347 = add i64 %3342, 16
  store i64 %3347, i64* %3, align 8
  %3348 = bitcast i64 %3345 to double
  %3349 = inttoptr i64 %3346 to double*
  %3350 = load double, double* %3349, align 8
  %3351 = fadd double %3348, %3350
  store double %3351, double* %1037, align 1
  store i64 0, i64* %96, align 1
  %3352 = add i64 %3340, -120
  %3353 = add i64 %3342, 21
  store i64 %3353, i64* %3, align 8
  %3354 = inttoptr i64 %3352 to double*
  store double %3351, double* %3354, align 8
  %3355 = load i64, i64* %RBP.i, align 8
  %3356 = add i64 %3355, -144
  %3357 = load i64, i64* %3, align 8
  %3358 = add i64 %3357, 8
  store i64 %3358, i64* %3, align 8
  %3359 = inttoptr i64 %3356 to i64*
  %3360 = load i64, i64* %3359, align 8
  store i64 %3360, i64* %1038, align 1
  store double 0.000000e+00, double* %97, align 1
  %3361 = add i64 %3355, -168
  %3362 = add i64 %3357, 16
  store i64 %3362, i64* %3, align 8
  %3363 = bitcast i64 %3360 to double
  %3364 = inttoptr i64 %3361 to double*
  %3365 = load double, double* %3364, align 8
  %3366 = fsub double %3363, %3365
  store double %3366, double* %1037, align 1
  store i64 0, i64* %96, align 1
  %3367 = add i64 %3355, -128
  %3368 = add i64 %3357, 21
  store i64 %3368, i64* %3, align 8
  %3369 = inttoptr i64 %3367 to double*
  store double %3366, double* %3369, align 8
  %3370 = load i64, i64* %RBP.i, align 8
  %3371 = add i64 %3370, -104
  %3372 = load i64, i64* %3, align 8
  %3373 = add i64 %3372, 5
  store i64 %3373, i64* %3, align 8
  %3374 = inttoptr i64 %3371 to i64*
  %3375 = load i64, i64* %3374, align 8
  store i64 %3375, i64* %1038, align 1
  store double 0.000000e+00, double* %97, align 1
  %3376 = add i64 %3370, -120
  %3377 = add i64 %3372, 10
  store i64 %3377, i64* %3, align 8
  %3378 = bitcast i64 %3375 to double
  %3379 = inttoptr i64 %3376 to double*
  %3380 = load double, double* %3379, align 8
  %3381 = fmul double %3378, %3380
  store double %3381, double* %1037, align 1
  store i64 0, i64* %96, align 1
  %3382 = add i64 %3370, -112
  %3383 = add i64 %3372, 15
  store i64 %3383, i64* %3, align 8
  %3384 = inttoptr i64 %3382 to i64*
  %3385 = load i64, i64* %3384, align 8
  store i64 %3385, i64* %1054, align 1
  store double 0.000000e+00, double* %1056, align 1
  %3386 = add i64 %3370, -128
  %3387 = add i64 %3372, 20
  store i64 %3387, i64* %3, align 8
  %3388 = bitcast i64 %3385 to double
  %3389 = inttoptr i64 %3386 to double*
  %3390 = load double, double* %3389, align 8
  %3391 = fmul double %3388, %3390
  store double %3391, double* %1053, align 1
  store i64 0, i64* %1055, align 1
  %3392 = fsub double %3381, %3391
  store double %3392, double* %1037, align 1
  store i64 0, i64* %96, align 1
  %3393 = add i64 %3370, -16
  %3394 = add i64 %3372, 28
  store i64 %3394, i64* %3, align 8
  %3395 = inttoptr i64 %3393 to i64*
  %3396 = load i64, i64* %3395, align 8
  store i64 %3396, i64* %RCX.i2236, align 8
  %3397 = add i64 %3370, -40
  %3398 = add i64 %3372, 32
  store i64 %3398, i64* %3, align 8
  %3399 = inttoptr i64 %3397 to i32*
  %3400 = load i32, i32* %3399, align 4
  %3401 = sext i32 %3400 to i64
  store i64 %3401, i64* %RDX.i2239, align 8
  %3402 = shl nsw i64 %3401, 3
  %3403 = add i64 %3402, %3396
  %3404 = add i64 %3372, 37
  store i64 %3404, i64* %3, align 8
  %3405 = inttoptr i64 %3403 to double*
  store double %3392, double* %3405, align 8
  %3406 = load i64, i64* %RBP.i, align 8
  %3407 = add i64 %3406, -104
  %3408 = load i64, i64* %3, align 8
  %3409 = add i64 %3408, 5
  store i64 %3409, i64* %3, align 8
  %3410 = inttoptr i64 %3407 to i64*
  %3411 = load i64, i64* %3410, align 8
  store i64 %3411, i64* %1038, align 1
  store double 0.000000e+00, double* %97, align 1
  %3412 = add i64 %3406, -128
  %3413 = add i64 %3408, 10
  store i64 %3413, i64* %3, align 8
  %3414 = bitcast i64 %3411 to double
  %3415 = inttoptr i64 %3412 to double*
  %3416 = load double, double* %3415, align 8
  %3417 = fmul double %3414, %3416
  store double %3417, double* %1037, align 1
  store i64 0, i64* %96, align 1
  %3418 = add i64 %3406, -112
  %3419 = add i64 %3408, 15
  store i64 %3419, i64* %3, align 8
  %3420 = inttoptr i64 %3418 to i64*
  %3421 = load i64, i64* %3420, align 8
  store i64 %3421, i64* %1054, align 1
  store double 0.000000e+00, double* %1056, align 1
  %3422 = add i64 %3406, -120
  %3423 = add i64 %3408, 20
  store i64 %3423, i64* %3, align 8
  %3424 = bitcast i64 %3421 to double
  %3425 = inttoptr i64 %3422 to double*
  %3426 = load double, double* %3425, align 8
  %3427 = fmul double %3424, %3426
  store double %3427, double* %1053, align 1
  store i64 0, i64* %1055, align 1
  %3428 = fadd double %3417, %3427
  store double %3428, double* %1037, align 1
  store i64 0, i64* %96, align 1
  %3429 = add i64 %3406, -16
  %3430 = add i64 %3408, 28
  store i64 %3430, i64* %3, align 8
  %3431 = inttoptr i64 %3429 to i64*
  %3432 = load i64, i64* %3431, align 8
  store i64 %3432, i64* %RCX.i2236, align 8
  %3433 = add i64 %3406, -40
  %3434 = add i64 %3408, 31
  store i64 %3434, i64* %3, align 8
  %3435 = inttoptr i64 %3433 to i32*
  %3436 = load i32, i32* %3435, align 4
  %3437 = add i32 %3436, 1
  %3438 = zext i32 %3437 to i64
  store i64 %3438, i64* %RAX.i2224, align 8
  %3439 = icmp eq i32 %3436, -1
  %3440 = icmp eq i32 %3437, 0
  %3441 = or i1 %3439, %3440
  %3442 = zext i1 %3441 to i8
  store i8 %3442, i8* %14, align 1
  %3443 = and i32 %3437, 255
  %3444 = tail call i32 @llvm.ctpop.i32(i32 %3443)
  %3445 = trunc i32 %3444 to i8
  %3446 = and i8 %3445, 1
  %3447 = xor i8 %3446, 1
  store i8 %3447, i8* %21, align 1
  %3448 = xor i32 %3437, %3436
  %3449 = lshr i32 %3448, 4
  %3450 = trunc i32 %3449 to i8
  %3451 = and i8 %3450, 1
  store i8 %3451, i8* %27, align 1
  %3452 = zext i1 %3440 to i8
  store i8 %3452, i8* %30, align 1
  %3453 = lshr i32 %3437, 31
  %3454 = trunc i32 %3453 to i8
  store i8 %3454, i8* %33, align 1
  %3455 = lshr i32 %3436, 31
  %3456 = xor i32 %3453, %3455
  %3457 = add nuw nsw i32 %3456, %3453
  %3458 = icmp eq i32 %3457, 2
  %3459 = zext i1 %3458 to i8
  store i8 %3459, i8* %39, align 1
  %3460 = sext i32 %3437 to i64
  store i64 %3460, i64* %RDX.i2239, align 8
  %3461 = shl nsw i64 %3460, 3
  %3462 = add i64 %3432, %3461
  %3463 = add i64 %3408, 42
  store i64 %3463, i64* %3, align 8
  %3464 = inttoptr i64 %3462 to double*
  store double %3428, double* %3464, align 8
  %3465 = load i64, i64* %RBP.i, align 8
  %3466 = add i64 %3465, -28
  %3467 = load i64, i64* %3, align 8
  %3468 = add i64 %3467, 3
  store i64 %3468, i64* %3, align 8
  %3469 = inttoptr i64 %3466 to i32*
  %3470 = load i32, i32* %3469, align 4
  %3471 = add i32 %3470, 2
  %3472 = zext i32 %3471 to i64
  store i64 %3472, i64* %RAX.i2224, align 8
  %3473 = icmp ugt i32 %3470, -3
  %3474 = zext i1 %3473 to i8
  store i8 %3474, i8* %14, align 1
  %3475 = and i32 %3471, 255
  %3476 = tail call i32 @llvm.ctpop.i32(i32 %3475)
  %3477 = trunc i32 %3476 to i8
  %3478 = and i8 %3477, 1
  %3479 = xor i8 %3478, 1
  store i8 %3479, i8* %21, align 1
  %3480 = xor i32 %3471, %3470
  %3481 = lshr i32 %3480, 4
  %3482 = trunc i32 %3481 to i8
  %3483 = and i8 %3482, 1
  store i8 %3483, i8* %27, align 1
  %3484 = icmp eq i32 %3471, 0
  %3485 = zext i1 %3484 to i8
  store i8 %3485, i8* %30, align 1
  %3486 = lshr i32 %3471, 31
  %3487 = trunc i32 %3486 to i8
  store i8 %3487, i8* %33, align 1
  %3488 = lshr i32 %3470, 31
  %3489 = xor i32 %3486, %3488
  %3490 = add nuw nsw i32 %3489, %3486
  %3491 = icmp eq i32 %3490, 2
  %3492 = zext i1 %3491 to i8
  store i8 %3492, i8* %39, align 1
  %3493 = add i64 %3467, 9
  store i64 %3493, i64* %3, align 8
  store i32 %3471, i32* %3469, align 4
  %3494 = load i64, i64* %3, align 8
  %3495 = add i64 %3494, -781
  store i64 %3495, i64* %3, align 8
  br label %block_.L_403930

block_.L_403c42:                                  ; preds = %block_.L_403930
  %3496 = add i64 %2449, 1182
  %3497 = add i64 %2449, 8
  store i64 %3497, i64* %3, align 8
  %3498 = inttoptr i64 %3496 to i64*
  %3499 = load i64, i64* %3498, align 8
  store i64 %3499, i64* %1038, align 1
  store double 0.000000e+00, double* %97, align 1
  %3500 = add i64 %2406, -24
  %3501 = add i64 %2449, 12
  store i64 %3501, i64* %3, align 8
  %3502 = inttoptr i64 %3500 to i64*
  %3503 = load i64, i64* %3502, align 8
  store i64 %3503, i64* %RAX.i2224, align 8
  %3504 = add i64 %2406, -52
  %3505 = add i64 %2449, 15
  store i64 %3505, i64* %3, align 8
  %3506 = inttoptr i64 %3504 to i32*
  %3507 = load i32, i32* %3506, align 4
  %3508 = add i32 %3507, 2
  %3509 = zext i32 %3508 to i64
  store i64 %3509, i64* %RCX.i2236, align 8
  %3510 = icmp ugt i32 %3507, -3
  %3511 = zext i1 %3510 to i8
  store i8 %3511, i8* %14, align 1
  %3512 = and i32 %3508, 255
  %3513 = tail call i32 @llvm.ctpop.i32(i32 %3512)
  %3514 = trunc i32 %3513 to i8
  %3515 = and i8 %3514, 1
  %3516 = xor i8 %3515, 1
  store i8 %3516, i8* %21, align 1
  %3517 = xor i32 %3508, %3507
  %3518 = lshr i32 %3517, 4
  %3519 = trunc i32 %3518 to i8
  %3520 = and i8 %3519, 1
  store i8 %3520, i8* %27, align 1
  %3521 = icmp eq i32 %3508, 0
  %3522 = zext i1 %3521 to i8
  store i8 %3522, i8* %30, align 1
  %3523 = lshr i32 %3508, 31
  %3524 = trunc i32 %3523 to i8
  store i8 %3524, i8* %33, align 1
  %3525 = lshr i32 %3507, 31
  %3526 = xor i32 %3523, %3525
  %3527 = add nuw nsw i32 %3526, %3523
  %3528 = icmp eq i32 %3527, 2
  %3529 = zext i1 %3528 to i8
  store i8 %3529, i8* %39, align 1
  %3530 = sext i32 %3508 to i64
  store i64 %3530, i64* %RDX.i2239, align 8
  %3531 = shl nsw i64 %3530, 3
  %3532 = add i64 %3503, %3531
  %3533 = add i64 %2449, 26
  store i64 %3533, i64* %3, align 8
  %3534 = inttoptr i64 %3532 to i64*
  %3535 = load i64, i64* %3534, align 8
  store i64 %3535, i64* %1054, align 1
  store double 0.000000e+00, double* %1056, align 1
  %3536 = add i64 %2406, -72
  %3537 = add i64 %2449, 31
  store i64 %3537, i64* %3, align 8
  %3538 = inttoptr i64 %3536 to i64*
  store i64 %3535, i64* %3538, align 8
  %3539 = load i64, i64* %RBP.i, align 8
  %3540 = add i64 %3539, -24
  %3541 = load i64, i64* %3, align 8
  %3542 = add i64 %3541, 4
  store i64 %3542, i64* %3, align 8
  %3543 = inttoptr i64 %3540 to i64*
  %3544 = load i64, i64* %3543, align 8
  store i64 %3544, i64* %RAX.i2224, align 8
  %3545 = add i64 %3539, -52
  %3546 = add i64 %3541, 7
  store i64 %3546, i64* %3, align 8
  %3547 = inttoptr i64 %3545 to i32*
  %3548 = load i32, i32* %3547, align 4
  %3549 = add i32 %3548, 3
  %3550 = zext i32 %3549 to i64
  store i64 %3550, i64* %RCX.i2236, align 8
  %3551 = icmp ugt i32 %3548, -4
  %3552 = zext i1 %3551 to i8
  store i8 %3552, i8* %14, align 1
  %3553 = and i32 %3549, 255
  %3554 = tail call i32 @llvm.ctpop.i32(i32 %3553)
  %3555 = trunc i32 %3554 to i8
  %3556 = and i8 %3555, 1
  %3557 = xor i8 %3556, 1
  store i8 %3557, i8* %21, align 1
  %3558 = xor i32 %3549, %3548
  %3559 = lshr i32 %3558, 4
  %3560 = trunc i32 %3559 to i8
  %3561 = and i8 %3560, 1
  store i8 %3561, i8* %27, align 1
  %3562 = icmp eq i32 %3549, 0
  %3563 = zext i1 %3562 to i8
  store i8 %3563, i8* %30, align 1
  %3564 = lshr i32 %3549, 31
  %3565 = trunc i32 %3564 to i8
  store i8 %3565, i8* %33, align 1
  %3566 = lshr i32 %3548, 31
  %3567 = xor i32 %3564, %3566
  %3568 = add nuw nsw i32 %3567, %3564
  %3569 = icmp eq i32 %3568, 2
  %3570 = zext i1 %3569 to i8
  store i8 %3570, i8* %39, align 1
  %3571 = sext i32 %3549 to i64
  store i64 %3571, i64* %RDX.i2239, align 8
  %3572 = shl nsw i64 %3571, 3
  %3573 = add i64 %3544, %3572
  %3574 = add i64 %3541, 18
  store i64 %3574, i64* %3, align 8
  %3575 = inttoptr i64 %3573 to i64*
  %3576 = load i64, i64* %3575, align 8
  store i64 %3576, i64* %1054, align 1
  store double 0.000000e+00, double* %1056, align 1
  %3577 = add i64 %3539, -80
  %3578 = add i64 %3541, 23
  store i64 %3578, i64* %3, align 8
  %3579 = inttoptr i64 %3577 to i64*
  store i64 %3576, i64* %3579, align 8
  %3580 = load i64, i64* %RBP.i, align 8
  %3581 = add i64 %3580, -72
  %3582 = load i64, i64* %3, align 8
  %3583 = add i64 %3582, 5
  store i64 %3583, i64* %3, align 8
  %3584 = inttoptr i64 %3581 to i64*
  %3585 = load i64, i64* %3584, align 8
  store i64 %3585, i64* %1054, align 1
  store double 0.000000e+00, double* %1056, align 1
  %3586 = load <2 x i32>, <2 x i32>* %2119, align 1
  %3587 = load <2 x i32>, <2 x i32>* %2120, align 1
  %3588 = extractelement <2 x i32> %3586, i32 0
  store i32 %3588, i32* %2121, align 1
  %3589 = extractelement <2 x i32> %3586, i32 1
  store i32 %3589, i32* %2123, align 1
  %3590 = extractelement <2 x i32> %3587, i32 0
  store i32 %3590, i32* %2125, align 1
  %3591 = extractelement <2 x i32> %3587, i32 1
  store i32 %3591, i32* %2127, align 1
  %3592 = add i64 %3580, -88
  %3593 = add i64 %3582, 13
  store i64 %3593, i64* %3, align 8
  %3594 = load double, double* %2128, align 1
  %3595 = inttoptr i64 %3592 to double*
  %3596 = load double, double* %3595, align 8
  %3597 = fmul double %3594, %3596
  store double %3597, double* %2128, align 1
  %3598 = add i64 %3580, -80
  %3599 = add i64 %3582, 18
  store i64 %3599, i64* %3, align 8
  %3600 = inttoptr i64 %3598 to double*
  %3601 = load double, double* %3600, align 8
  %3602 = fmul double %3597, %3601
  store double %3602, double* %2128, align 1
  %3603 = bitcast i64 %3585 to double
  %3604 = fsub double %3603, %3602
  store double %3604, double* %1053, align 1
  store i64 0, i64* %1055, align 1
  %3605 = add i64 %3580, -104
  %3606 = add i64 %3582, 27
  store i64 %3606, i64* %3, align 8
  %3607 = inttoptr i64 %3605 to double*
  store double %3604, double* %3607, align 8
  %3608 = load i64, i64* %RBP.i, align 8
  %3609 = add i64 %3608, -88
  %3610 = load i64, i64* %3, align 8
  %3611 = add i64 %3610, 5
  store i64 %3611, i64* %3, align 8
  %3612 = load double, double* %1037, align 1
  %3613 = inttoptr i64 %3609 to double*
  %3614 = load double, double* %3613, align 8
  %3615 = fmul double %3612, %3614
  store double %3615, double* %1037, align 1
  %3616 = add i64 %3608, -72
  %3617 = add i64 %3610, 10
  store i64 %3617, i64* %3, align 8
  %3618 = inttoptr i64 %3616 to double*
  %3619 = load double, double* %3618, align 8
  %3620 = fmul double %3615, %3619
  store double %3620, double* %1037, align 1
  %3621 = add i64 %3608, -80
  %3622 = add i64 %3610, 15
  store i64 %3622, i64* %3, align 8
  %3623 = inttoptr i64 %3621 to double*
  %3624 = load double, double* %3623, align 8
  %3625 = fsub double %3620, %3624
  store double %3625, double* %1037, align 1
  %3626 = add i64 %3608, -112
  %3627 = add i64 %3610, 20
  store i64 %3627, i64* %3, align 8
  %3628 = inttoptr i64 %3626 to double*
  store double %3625, double* %3628, align 8
  %3629 = load i64, i64* %RBP.i, align 8
  %3630 = add i64 %3629, -44
  %3631 = load i64, i64* %3, align 8
  %3632 = add i64 %3631, 3
  store i64 %3632, i64* %3, align 8
  %3633 = inttoptr i64 %3630 to i32*
  %3634 = load i32, i32* %3633, align 4
  %3635 = zext i32 %3634 to i64
  store i64 %3635, i64* %RCX.i2236, align 8
  %3636 = add i64 %3629, -56
  %3637 = add i64 %3631, 6
  store i64 %3637, i64* %3, align 8
  %3638 = inttoptr i64 %3636 to i32*
  %3639 = load i32, i32* %3638, align 4
  %3640 = add i32 %3639, %3634
  %3641 = zext i32 %3640 to i64
  store i64 %3641, i64* %RCX.i2236, align 8
  %3642 = icmp ult i32 %3640, %3634
  %3643 = icmp ult i32 %3640, %3639
  %3644 = or i1 %3642, %3643
  %3645 = zext i1 %3644 to i8
  store i8 %3645, i8* %14, align 1
  %3646 = and i32 %3640, 255
  %3647 = tail call i32 @llvm.ctpop.i32(i32 %3646)
  %3648 = trunc i32 %3647 to i8
  %3649 = and i8 %3648, 1
  %3650 = xor i8 %3649, 1
  store i8 %3650, i8* %21, align 1
  %3651 = xor i32 %3639, %3634
  %3652 = xor i32 %3651, %3640
  %3653 = lshr i32 %3652, 4
  %3654 = trunc i32 %3653 to i8
  %3655 = and i8 %3654, 1
  store i8 %3655, i8* %27, align 1
  %3656 = icmp eq i32 %3640, 0
  %3657 = zext i1 %3656 to i8
  store i8 %3657, i8* %30, align 1
  %3658 = lshr i32 %3640, 31
  %3659 = trunc i32 %3658 to i8
  store i8 %3659, i8* %33, align 1
  %3660 = lshr i32 %3634, 31
  %3661 = lshr i32 %3639, 31
  %3662 = xor i32 %3658, %3660
  %3663 = xor i32 %3658, %3661
  %3664 = add nuw nsw i32 %3662, %3663
  %3665 = icmp eq i32 %3664, 2
  %3666 = zext i1 %3665 to i8
  store i8 %3666, i8* %39, align 1
  %3667 = add i64 %3629, -28
  %3668 = add i64 %3631, 9
  store i64 %3668, i64* %3, align 8
  %3669 = inttoptr i64 %3667 to i32*
  store i32 %3640, i32* %3669, align 4
  %.pre26 = load i64, i64* %3, align 8
  br label %block_.L_403cb0

block_.L_403cb0:                                  ; preds = %block_403cc6, %block_.L_403c42
  %3670 = phi i64 [ %4794, %block_403cc6 ], [ %.pre26, %block_.L_403c42 ]
  %3671 = load i64, i64* %RBP.i, align 8
  %3672 = add i64 %3671, -28
  %3673 = add i64 %3670, 3
  store i64 %3673, i64* %3, align 8
  %3674 = inttoptr i64 %3672 to i32*
  %3675 = load i32, i32* %3674, align 4
  %3676 = zext i32 %3675 to i64
  store i64 %3676, i64* %RAX.i2224, align 8
  %3677 = add i64 %3671, -8
  %3678 = add i64 %3670, 6
  store i64 %3678, i64* %3, align 8
  %3679 = inttoptr i64 %3677 to i32*
  %3680 = load i32, i32* %3679, align 4
  %3681 = zext i32 %3680 to i64
  store i64 %3681, i64* %RCX.i2236, align 8
  %3682 = add i64 %3671, -44
  %3683 = add i64 %3670, 9
  store i64 %3683, i64* %3, align 8
  %3684 = inttoptr i64 %3682 to i32*
  %3685 = load i32, i32* %3684, align 4
  %3686 = zext i32 %3685 to i64
  store i64 %3686, i64* %RDX.i2239, align 8
  %3687 = add i64 %3671, -56
  %3688 = add i64 %3670, 12
  store i64 %3688, i64* %3, align 8
  %3689 = inttoptr i64 %3687 to i32*
  %3690 = load i32, i32* %3689, align 4
  %3691 = add i32 %3690, %3685
  %3692 = zext i32 %3691 to i64
  store i64 %3692, i64* %RDX.i2239, align 8
  %3693 = add i32 %3691, %3680
  %3694 = zext i32 %3693 to i64
  store i64 %3694, i64* %RCX.i2236, align 8
  %3695 = lshr i32 %3693, 31
  %3696 = sub i32 %3675, %3693
  %3697 = icmp ult i32 %3675, %3693
  %3698 = zext i1 %3697 to i8
  store i8 %3698, i8* %14, align 1
  %3699 = and i32 %3696, 255
  %3700 = tail call i32 @llvm.ctpop.i32(i32 %3699)
  %3701 = trunc i32 %3700 to i8
  %3702 = and i8 %3701, 1
  %3703 = xor i8 %3702, 1
  store i8 %3703, i8* %21, align 1
  %3704 = xor i32 %3693, %3675
  %3705 = xor i32 %3704, %3696
  %3706 = lshr i32 %3705, 4
  %3707 = trunc i32 %3706 to i8
  %3708 = and i8 %3707, 1
  store i8 %3708, i8* %27, align 1
  %3709 = icmp eq i32 %3696, 0
  %3710 = zext i1 %3709 to i8
  store i8 %3710, i8* %30, align 1
  %3711 = lshr i32 %3696, 31
  %3712 = trunc i32 %3711 to i8
  store i8 %3712, i8* %33, align 1
  %3713 = lshr i32 %3675, 31
  %3714 = xor i32 %3695, %3713
  %3715 = xor i32 %3711, %3713
  %3716 = add nuw nsw i32 %3715, %3714
  %3717 = icmp eq i32 %3716, 2
  %3718 = zext i1 %3717 to i8
  store i8 %3718, i8* %39, align 1
  %3719 = icmp ne i8 %3712, 0
  %3720 = xor i1 %3719, %3717
  %.v30 = select i1 %3720, i64 22, i64 827
  %3721 = add i64 %3670, %.v30
  store i64 %3721, i64* %3, align 8
  br i1 %3720, label %block_403cc6, label %block_.L_403feb

block_403cc6:                                     ; preds = %block_.L_403cb0
  store i64 -9223372036854775808, i64* %RAX.i2224, align 8
  %3722 = load i64, i64* %RBP.i, align 8
  %3723 = add i64 %3722, -28
  %3724 = add i64 %3721, 13
  store i64 %3724, i64* %3, align 8
  %3725 = inttoptr i64 %3723 to i32*
  %3726 = load i32, i32* %3725, align 4
  %3727 = zext i32 %3726 to i64
  store i64 %3727, i64* %RCX.i2236, align 8
  %3728 = add i64 %3722, -8
  %3729 = add i64 %3721, 16
  store i64 %3729, i64* %3, align 8
  %3730 = inttoptr i64 %3728 to i32*
  %3731 = load i32, i32* %3730, align 4
  %3732 = add i32 %3731, %3726
  %3733 = zext i32 %3732 to i64
  store i64 %3733, i64* %RCX.i2236, align 8
  %3734 = icmp ult i32 %3732, %3726
  %3735 = icmp ult i32 %3732, %3731
  %3736 = or i1 %3734, %3735
  %3737 = zext i1 %3736 to i8
  store i8 %3737, i8* %14, align 1
  %3738 = and i32 %3732, 255
  %3739 = tail call i32 @llvm.ctpop.i32(i32 %3738)
  %3740 = trunc i32 %3739 to i8
  %3741 = and i8 %3740, 1
  %3742 = xor i8 %3741, 1
  store i8 %3742, i8* %21, align 1
  %3743 = xor i32 %3731, %3726
  %3744 = xor i32 %3743, %3732
  %3745 = lshr i32 %3744, 4
  %3746 = trunc i32 %3745 to i8
  %3747 = and i8 %3746, 1
  store i8 %3747, i8* %27, align 1
  %3748 = icmp eq i32 %3732, 0
  %3749 = zext i1 %3748 to i8
  store i8 %3749, i8* %30, align 1
  %3750 = lshr i32 %3732, 31
  %3751 = trunc i32 %3750 to i8
  store i8 %3751, i8* %33, align 1
  %3752 = lshr i32 %3726, 31
  %3753 = lshr i32 %3731, 31
  %3754 = xor i32 %3750, %3752
  %3755 = xor i32 %3750, %3753
  %3756 = add nuw nsw i32 %3754, %3755
  %3757 = icmp eq i32 %3756, 2
  %3758 = zext i1 %3757 to i8
  store i8 %3758, i8* %39, align 1
  %3759 = add i64 %3722, -32
  %3760 = add i64 %3721, 19
  store i64 %3760, i64* %3, align 8
  %3761 = inttoptr i64 %3759 to i32*
  store i32 %3732, i32* %3761, align 4
  %3762 = load i64, i64* %RBP.i, align 8
  %3763 = add i64 %3762, -32
  %3764 = load i64, i64* %3, align 8
  %3765 = add i64 %3764, 3
  store i64 %3765, i64* %3, align 8
  %3766 = inttoptr i64 %3763 to i32*
  %3767 = load i32, i32* %3766, align 4
  %3768 = zext i32 %3767 to i64
  store i64 %3768, i64* %RCX.i2236, align 8
  %3769 = add i64 %3762, -8
  %3770 = add i64 %3764, 6
  store i64 %3770, i64* %3, align 8
  %3771 = inttoptr i64 %3769 to i32*
  %3772 = load i32, i32* %3771, align 4
  %3773 = add i32 %3772, %3767
  %3774 = zext i32 %3773 to i64
  store i64 %3774, i64* %RCX.i2236, align 8
  %3775 = icmp ult i32 %3773, %3767
  %3776 = icmp ult i32 %3773, %3772
  %3777 = or i1 %3775, %3776
  %3778 = zext i1 %3777 to i8
  store i8 %3778, i8* %14, align 1
  %3779 = and i32 %3773, 255
  %3780 = tail call i32 @llvm.ctpop.i32(i32 %3779)
  %3781 = trunc i32 %3780 to i8
  %3782 = and i8 %3781, 1
  %3783 = xor i8 %3782, 1
  store i8 %3783, i8* %21, align 1
  %3784 = xor i32 %3772, %3767
  %3785 = xor i32 %3784, %3773
  %3786 = lshr i32 %3785, 4
  %3787 = trunc i32 %3786 to i8
  %3788 = and i8 %3787, 1
  store i8 %3788, i8* %27, align 1
  %3789 = icmp eq i32 %3773, 0
  %3790 = zext i1 %3789 to i8
  store i8 %3790, i8* %30, align 1
  %3791 = lshr i32 %3773, 31
  %3792 = trunc i32 %3791 to i8
  store i8 %3792, i8* %33, align 1
  %3793 = lshr i32 %3767, 31
  %3794 = lshr i32 %3772, 31
  %3795 = xor i32 %3791, %3793
  %3796 = xor i32 %3791, %3794
  %3797 = add nuw nsw i32 %3795, %3796
  %3798 = icmp eq i32 %3797, 2
  %3799 = zext i1 %3798 to i8
  store i8 %3799, i8* %39, align 1
  %3800 = add i64 %3762, -36
  %3801 = add i64 %3764, 9
  store i64 %3801, i64* %3, align 8
  %3802 = inttoptr i64 %3800 to i32*
  store i32 %3773, i32* %3802, align 4
  %3803 = load i64, i64* %RBP.i, align 8
  %3804 = add i64 %3803, -36
  %3805 = load i64, i64* %3, align 8
  %3806 = add i64 %3805, 3
  store i64 %3806, i64* %3, align 8
  %3807 = inttoptr i64 %3804 to i32*
  %3808 = load i32, i32* %3807, align 4
  %3809 = zext i32 %3808 to i64
  store i64 %3809, i64* %RCX.i2236, align 8
  %3810 = add i64 %3803, -8
  %3811 = add i64 %3805, 6
  store i64 %3811, i64* %3, align 8
  %3812 = inttoptr i64 %3810 to i32*
  %3813 = load i32, i32* %3812, align 4
  %3814 = add i32 %3813, %3808
  %3815 = zext i32 %3814 to i64
  store i64 %3815, i64* %RCX.i2236, align 8
  %3816 = icmp ult i32 %3814, %3808
  %3817 = icmp ult i32 %3814, %3813
  %3818 = or i1 %3816, %3817
  %3819 = zext i1 %3818 to i8
  store i8 %3819, i8* %14, align 1
  %3820 = and i32 %3814, 255
  %3821 = tail call i32 @llvm.ctpop.i32(i32 %3820)
  %3822 = trunc i32 %3821 to i8
  %3823 = and i8 %3822, 1
  %3824 = xor i8 %3823, 1
  store i8 %3824, i8* %21, align 1
  %3825 = xor i32 %3813, %3808
  %3826 = xor i32 %3825, %3814
  %3827 = lshr i32 %3826, 4
  %3828 = trunc i32 %3827 to i8
  %3829 = and i8 %3828, 1
  store i8 %3829, i8* %27, align 1
  %3830 = icmp eq i32 %3814, 0
  %3831 = zext i1 %3830 to i8
  store i8 %3831, i8* %30, align 1
  %3832 = lshr i32 %3814, 31
  %3833 = trunc i32 %3832 to i8
  store i8 %3833, i8* %33, align 1
  %3834 = lshr i32 %3808, 31
  %3835 = lshr i32 %3813, 31
  %3836 = xor i32 %3832, %3834
  %3837 = xor i32 %3832, %3835
  %3838 = add nuw nsw i32 %3836, %3837
  %3839 = icmp eq i32 %3838, 2
  %3840 = zext i1 %3839 to i8
  store i8 %3840, i8* %39, align 1
  %3841 = add i64 %3803, -40
  %3842 = add i64 %3805, 9
  store i64 %3842, i64* %3, align 8
  %3843 = inttoptr i64 %3841 to i32*
  store i32 %3814, i32* %3843, align 4
  %3844 = load i64, i64* %RBP.i, align 8
  %3845 = add i64 %3844, -16
  %3846 = load i64, i64* %3, align 8
  %3847 = add i64 %3846, 4
  store i64 %3847, i64* %3, align 8
  %3848 = inttoptr i64 %3845 to i64*
  %3849 = load i64, i64* %3848, align 8
  store i64 %3849, i64* %RDX.i2239, align 8
  %3850 = add i64 %3844, -28
  %3851 = add i64 %3846, 8
  store i64 %3851, i64* %3, align 8
  %3852 = inttoptr i64 %3850 to i32*
  %3853 = load i32, i32* %3852, align 4
  %3854 = sext i32 %3853 to i64
  store i64 %3854, i64* %RSI.i2233, align 8
  %3855 = shl nsw i64 %3854, 3
  %3856 = add i64 %3855, %3849
  %3857 = add i64 %3846, 13
  store i64 %3857, i64* %3, align 8
  %3858 = inttoptr i64 %3856 to i64*
  %3859 = load i64, i64* %3858, align 8
  store i64 %3859, i64* %1038, align 1
  store double 0.000000e+00, double* %97, align 1
  %3860 = add i64 %3846, 17
  store i64 %3860, i64* %3, align 8
  %3861 = load i64, i64* %3848, align 8
  store i64 %3861, i64* %RDX.i2239, align 8
  %3862 = add i64 %3844, -32
  %3863 = add i64 %3846, 21
  store i64 %3863, i64* %3, align 8
  %3864 = inttoptr i64 %3862 to i32*
  %3865 = load i32, i32* %3864, align 4
  %3866 = sext i32 %3865 to i64
  store i64 %3866, i64* %RSI.i2233, align 8
  %3867 = shl nsw i64 %3866, 3
  %3868 = add i64 %3867, %3861
  %3869 = add i64 %3846, 26
  store i64 %3869, i64* %3, align 8
  %3870 = bitcast i64 %3859 to double
  %3871 = inttoptr i64 %3868 to double*
  %3872 = load double, double* %3871, align 8
  %3873 = fadd double %3870, %3872
  store double %3873, double* %1037, align 1
  store i64 0, i64* %96, align 1
  %3874 = add i64 %3844, -120
  %3875 = add i64 %3846, 31
  store i64 %3875, i64* %3, align 8
  %3876 = inttoptr i64 %3874 to double*
  store double %3873, double* %3876, align 8
  %3877 = load i64, i64* %RBP.i, align 8
  %3878 = add i64 %3877, -16
  %3879 = load i64, i64* %3, align 8
  %3880 = add i64 %3879, 4
  store i64 %3880, i64* %3, align 8
  %3881 = inttoptr i64 %3878 to i64*
  %3882 = load i64, i64* %3881, align 8
  store i64 %3882, i64* %RDX.i2239, align 8
  %3883 = add i64 %3877, -28
  %3884 = add i64 %3879, 7
  store i64 %3884, i64* %3, align 8
  %3885 = inttoptr i64 %3883 to i32*
  %3886 = load i32, i32* %3885, align 4
  %3887 = add i32 %3886, 1
  %3888 = zext i32 %3887 to i64
  store i64 %3888, i64* %RCX.i2236, align 8
  %3889 = icmp eq i32 %3886, -1
  %3890 = icmp eq i32 %3887, 0
  %3891 = or i1 %3889, %3890
  %3892 = zext i1 %3891 to i8
  store i8 %3892, i8* %14, align 1
  %3893 = and i32 %3887, 255
  %3894 = tail call i32 @llvm.ctpop.i32(i32 %3893)
  %3895 = trunc i32 %3894 to i8
  %3896 = and i8 %3895, 1
  %3897 = xor i8 %3896, 1
  store i8 %3897, i8* %21, align 1
  %3898 = xor i32 %3887, %3886
  %3899 = lshr i32 %3898, 4
  %3900 = trunc i32 %3899 to i8
  %3901 = and i8 %3900, 1
  store i8 %3901, i8* %27, align 1
  %3902 = zext i1 %3890 to i8
  store i8 %3902, i8* %30, align 1
  %3903 = lshr i32 %3887, 31
  %3904 = trunc i32 %3903 to i8
  store i8 %3904, i8* %33, align 1
  %3905 = lshr i32 %3886, 31
  %3906 = xor i32 %3903, %3905
  %3907 = add nuw nsw i32 %3906, %3903
  %3908 = icmp eq i32 %3907, 2
  %3909 = zext i1 %3908 to i8
  store i8 %3909, i8* %39, align 1
  %3910 = sext i32 %3887 to i64
  store i64 %3910, i64* %RSI.i2233, align 8
  %3911 = shl nsw i64 %3910, 3
  %3912 = add i64 %3882, %3911
  %3913 = add i64 %3879, 18
  store i64 %3913, i64* %3, align 8
  %3914 = inttoptr i64 %3912 to i64*
  %3915 = load i64, i64* %3914, align 8
  store i64 %3915, i64* %1038, align 1
  store double 0.000000e+00, double* %97, align 1
  %3916 = add i64 %3879, 22
  store i64 %3916, i64* %3, align 8
  %3917 = load i64, i64* %3881, align 8
  store i64 %3917, i64* %RDX.i2239, align 8
  %3918 = add i64 %3877, -32
  %3919 = add i64 %3879, 25
  store i64 %3919, i64* %3, align 8
  %3920 = inttoptr i64 %3918 to i32*
  %3921 = load i32, i32* %3920, align 4
  %3922 = add i32 %3921, 1
  %3923 = zext i32 %3922 to i64
  store i64 %3923, i64* %RCX.i2236, align 8
  %3924 = icmp eq i32 %3921, -1
  %3925 = icmp eq i32 %3922, 0
  %3926 = or i1 %3924, %3925
  %3927 = zext i1 %3926 to i8
  store i8 %3927, i8* %14, align 1
  %3928 = and i32 %3922, 255
  %3929 = tail call i32 @llvm.ctpop.i32(i32 %3928)
  %3930 = trunc i32 %3929 to i8
  %3931 = and i8 %3930, 1
  %3932 = xor i8 %3931, 1
  store i8 %3932, i8* %21, align 1
  %3933 = xor i32 %3922, %3921
  %3934 = lshr i32 %3933, 4
  %3935 = trunc i32 %3934 to i8
  %3936 = and i8 %3935, 1
  store i8 %3936, i8* %27, align 1
  %3937 = zext i1 %3925 to i8
  store i8 %3937, i8* %30, align 1
  %3938 = lshr i32 %3922, 31
  %3939 = trunc i32 %3938 to i8
  store i8 %3939, i8* %33, align 1
  %3940 = lshr i32 %3921, 31
  %3941 = xor i32 %3938, %3940
  %3942 = add nuw nsw i32 %3941, %3938
  %3943 = icmp eq i32 %3942, 2
  %3944 = zext i1 %3943 to i8
  store i8 %3944, i8* %39, align 1
  %3945 = sext i32 %3922 to i64
  store i64 %3945, i64* %RSI.i2233, align 8
  %3946 = shl nsw i64 %3945, 3
  %3947 = add i64 %3917, %3946
  %3948 = add i64 %3879, 36
  store i64 %3948, i64* %3, align 8
  %3949 = bitcast i64 %3915 to double
  %3950 = inttoptr i64 %3947 to double*
  %3951 = load double, double* %3950, align 8
  %3952 = fadd double %3949, %3951
  store double %3952, double* %1037, align 1
  store i64 0, i64* %96, align 1
  %3953 = load i64, i64* %RBP.i, align 8
  %3954 = add i64 %3953, -128
  %3955 = add i64 %3879, 41
  store i64 %3955, i64* %3, align 8
  %3956 = inttoptr i64 %3954 to double*
  store double %3952, double* %3956, align 8
  %3957 = load i64, i64* %RBP.i, align 8
  %3958 = add i64 %3957, -16
  %3959 = load i64, i64* %3, align 8
  %3960 = add i64 %3959, 4
  store i64 %3960, i64* %3, align 8
  %3961 = inttoptr i64 %3958 to i64*
  %3962 = load i64, i64* %3961, align 8
  store i64 %3962, i64* %RDX.i2239, align 8
  %3963 = add i64 %3957, -28
  %3964 = add i64 %3959, 8
  store i64 %3964, i64* %3, align 8
  %3965 = inttoptr i64 %3963 to i32*
  %3966 = load i32, i32* %3965, align 4
  %3967 = sext i32 %3966 to i64
  store i64 %3967, i64* %RSI.i2233, align 8
  %3968 = shl nsw i64 %3967, 3
  %3969 = add i64 %3968, %3962
  %3970 = add i64 %3959, 13
  store i64 %3970, i64* %3, align 8
  %3971 = inttoptr i64 %3969 to i64*
  %3972 = load i64, i64* %3971, align 8
  store i64 %3972, i64* %1038, align 1
  store double 0.000000e+00, double* %97, align 1
  %3973 = add i64 %3959, 17
  store i64 %3973, i64* %3, align 8
  %3974 = load i64, i64* %3961, align 8
  store i64 %3974, i64* %RDX.i2239, align 8
  %3975 = add i64 %3957, -32
  %3976 = add i64 %3959, 21
  store i64 %3976, i64* %3, align 8
  %3977 = inttoptr i64 %3975 to i32*
  %3978 = load i32, i32* %3977, align 4
  %3979 = sext i32 %3978 to i64
  store i64 %3979, i64* %RSI.i2233, align 8
  %3980 = shl nsw i64 %3979, 3
  %3981 = add i64 %3980, %3974
  %3982 = add i64 %3959, 26
  store i64 %3982, i64* %3, align 8
  %3983 = bitcast i64 %3972 to double
  %3984 = inttoptr i64 %3981 to double*
  %3985 = load double, double* %3984, align 8
  %3986 = fsub double %3983, %3985
  store double %3986, double* %1037, align 1
  store i64 0, i64* %96, align 1
  %3987 = add i64 %3957, -136
  %3988 = add i64 %3959, 34
  store i64 %3988, i64* %3, align 8
  %3989 = inttoptr i64 %3987 to double*
  store double %3986, double* %3989, align 8
  %3990 = load i64, i64* %RBP.i, align 8
  %3991 = add i64 %3990, -16
  %3992 = load i64, i64* %3, align 8
  %3993 = add i64 %3992, 4
  store i64 %3993, i64* %3, align 8
  %3994 = inttoptr i64 %3991 to i64*
  %3995 = load i64, i64* %3994, align 8
  store i64 %3995, i64* %RDX.i2239, align 8
  %3996 = add i64 %3990, -28
  %3997 = add i64 %3992, 7
  store i64 %3997, i64* %3, align 8
  %3998 = inttoptr i64 %3996 to i32*
  %3999 = load i32, i32* %3998, align 4
  %4000 = add i32 %3999, 1
  %4001 = zext i32 %4000 to i64
  store i64 %4001, i64* %RCX.i2236, align 8
  %4002 = icmp eq i32 %3999, -1
  %4003 = icmp eq i32 %4000, 0
  %4004 = or i1 %4002, %4003
  %4005 = zext i1 %4004 to i8
  store i8 %4005, i8* %14, align 1
  %4006 = and i32 %4000, 255
  %4007 = tail call i32 @llvm.ctpop.i32(i32 %4006)
  %4008 = trunc i32 %4007 to i8
  %4009 = and i8 %4008, 1
  %4010 = xor i8 %4009, 1
  store i8 %4010, i8* %21, align 1
  %4011 = xor i32 %4000, %3999
  %4012 = lshr i32 %4011, 4
  %4013 = trunc i32 %4012 to i8
  %4014 = and i8 %4013, 1
  store i8 %4014, i8* %27, align 1
  %4015 = zext i1 %4003 to i8
  store i8 %4015, i8* %30, align 1
  %4016 = lshr i32 %4000, 31
  %4017 = trunc i32 %4016 to i8
  store i8 %4017, i8* %33, align 1
  %4018 = lshr i32 %3999, 31
  %4019 = xor i32 %4016, %4018
  %4020 = add nuw nsw i32 %4019, %4016
  %4021 = icmp eq i32 %4020, 2
  %4022 = zext i1 %4021 to i8
  store i8 %4022, i8* %39, align 1
  %4023 = sext i32 %4000 to i64
  store i64 %4023, i64* %RSI.i2233, align 8
  %4024 = shl nsw i64 %4023, 3
  %4025 = add i64 %3995, %4024
  %4026 = add i64 %3992, 18
  store i64 %4026, i64* %3, align 8
  %4027 = inttoptr i64 %4025 to i64*
  %4028 = load i64, i64* %4027, align 8
  store i64 %4028, i64* %1038, align 1
  store double 0.000000e+00, double* %97, align 1
  %4029 = add i64 %3992, 22
  store i64 %4029, i64* %3, align 8
  %4030 = load i64, i64* %3994, align 8
  store i64 %4030, i64* %RDX.i2239, align 8
  %4031 = add i64 %3990, -32
  %4032 = add i64 %3992, 25
  store i64 %4032, i64* %3, align 8
  %4033 = inttoptr i64 %4031 to i32*
  %4034 = load i32, i32* %4033, align 4
  %4035 = add i32 %4034, 1
  %4036 = zext i32 %4035 to i64
  store i64 %4036, i64* %RCX.i2236, align 8
  %4037 = icmp eq i32 %4034, -1
  %4038 = icmp eq i32 %4035, 0
  %4039 = or i1 %4037, %4038
  %4040 = zext i1 %4039 to i8
  store i8 %4040, i8* %14, align 1
  %4041 = and i32 %4035, 255
  %4042 = tail call i32 @llvm.ctpop.i32(i32 %4041)
  %4043 = trunc i32 %4042 to i8
  %4044 = and i8 %4043, 1
  %4045 = xor i8 %4044, 1
  store i8 %4045, i8* %21, align 1
  %4046 = xor i32 %4035, %4034
  %4047 = lshr i32 %4046, 4
  %4048 = trunc i32 %4047 to i8
  %4049 = and i8 %4048, 1
  store i8 %4049, i8* %27, align 1
  %4050 = zext i1 %4038 to i8
  store i8 %4050, i8* %30, align 1
  %4051 = lshr i32 %4035, 31
  %4052 = trunc i32 %4051 to i8
  store i8 %4052, i8* %33, align 1
  %4053 = lshr i32 %4034, 31
  %4054 = xor i32 %4051, %4053
  %4055 = add nuw nsw i32 %4054, %4051
  %4056 = icmp eq i32 %4055, 2
  %4057 = zext i1 %4056 to i8
  store i8 %4057, i8* %39, align 1
  %4058 = sext i32 %4035 to i64
  store i64 %4058, i64* %RSI.i2233, align 8
  %4059 = shl nsw i64 %4058, 3
  %4060 = add i64 %4030, %4059
  %4061 = add i64 %3992, 36
  store i64 %4061, i64* %3, align 8
  %4062 = bitcast i64 %4028 to double
  %4063 = inttoptr i64 %4060 to double*
  %4064 = load double, double* %4063, align 8
  %4065 = fsub double %4062, %4064
  store double %4065, double* %1037, align 1
  store i64 0, i64* %96, align 1
  %4066 = load i64, i64* %RBP.i, align 8
  %4067 = add i64 %4066, -144
  %4068 = add i64 %3992, 44
  store i64 %4068, i64* %3, align 8
  %4069 = inttoptr i64 %4067 to double*
  store double %4065, double* %4069, align 8
  %4070 = load i64, i64* %RBP.i, align 8
  %4071 = add i64 %4070, -16
  %4072 = load i64, i64* %3, align 8
  %4073 = add i64 %4072, 4
  store i64 %4073, i64* %3, align 8
  %4074 = inttoptr i64 %4071 to i64*
  %4075 = load i64, i64* %4074, align 8
  store i64 %4075, i64* %RDX.i2239, align 8
  %4076 = add i64 %4070, -36
  %4077 = add i64 %4072, 8
  store i64 %4077, i64* %3, align 8
  %4078 = inttoptr i64 %4076 to i32*
  %4079 = load i32, i32* %4078, align 4
  %4080 = sext i32 %4079 to i64
  store i64 %4080, i64* %RSI.i2233, align 8
  %4081 = shl nsw i64 %4080, 3
  %4082 = add i64 %4081, %4075
  %4083 = add i64 %4072, 13
  store i64 %4083, i64* %3, align 8
  %4084 = inttoptr i64 %4082 to i64*
  %4085 = load i64, i64* %4084, align 8
  store i64 %4085, i64* %1038, align 1
  store double 0.000000e+00, double* %97, align 1
  %4086 = add i64 %4072, 17
  store i64 %4086, i64* %3, align 8
  %4087 = load i64, i64* %4074, align 8
  store i64 %4087, i64* %RDX.i2239, align 8
  %4088 = add i64 %4070, -40
  %4089 = add i64 %4072, 21
  store i64 %4089, i64* %3, align 8
  %4090 = inttoptr i64 %4088 to i32*
  %4091 = load i32, i32* %4090, align 4
  %4092 = sext i32 %4091 to i64
  store i64 %4092, i64* %RSI.i2233, align 8
  %4093 = shl nsw i64 %4092, 3
  %4094 = add i64 %4093, %4087
  %4095 = add i64 %4072, 26
  store i64 %4095, i64* %3, align 8
  %4096 = bitcast i64 %4085 to double
  %4097 = inttoptr i64 %4094 to double*
  %4098 = load double, double* %4097, align 8
  %4099 = fadd double %4096, %4098
  store double %4099, double* %1037, align 1
  store i64 0, i64* %96, align 1
  %4100 = add i64 %4070, -152
  %4101 = add i64 %4072, 34
  store i64 %4101, i64* %3, align 8
  %4102 = inttoptr i64 %4100 to double*
  store double %4099, double* %4102, align 8
  %4103 = load i64, i64* %RBP.i, align 8
  %4104 = add i64 %4103, -16
  %4105 = load i64, i64* %3, align 8
  %4106 = add i64 %4105, 4
  store i64 %4106, i64* %3, align 8
  %4107 = inttoptr i64 %4104 to i64*
  %4108 = load i64, i64* %4107, align 8
  store i64 %4108, i64* %RDX.i2239, align 8
  %4109 = add i64 %4103, -36
  %4110 = add i64 %4105, 7
  store i64 %4110, i64* %3, align 8
  %4111 = inttoptr i64 %4109 to i32*
  %4112 = load i32, i32* %4111, align 4
  %4113 = add i32 %4112, 1
  %4114 = zext i32 %4113 to i64
  store i64 %4114, i64* %RCX.i2236, align 8
  %4115 = icmp eq i32 %4112, -1
  %4116 = icmp eq i32 %4113, 0
  %4117 = or i1 %4115, %4116
  %4118 = zext i1 %4117 to i8
  store i8 %4118, i8* %14, align 1
  %4119 = and i32 %4113, 255
  %4120 = tail call i32 @llvm.ctpop.i32(i32 %4119)
  %4121 = trunc i32 %4120 to i8
  %4122 = and i8 %4121, 1
  %4123 = xor i8 %4122, 1
  store i8 %4123, i8* %21, align 1
  %4124 = xor i32 %4113, %4112
  %4125 = lshr i32 %4124, 4
  %4126 = trunc i32 %4125 to i8
  %4127 = and i8 %4126, 1
  store i8 %4127, i8* %27, align 1
  %4128 = zext i1 %4116 to i8
  store i8 %4128, i8* %30, align 1
  %4129 = lshr i32 %4113, 31
  %4130 = trunc i32 %4129 to i8
  store i8 %4130, i8* %33, align 1
  %4131 = lshr i32 %4112, 31
  %4132 = xor i32 %4129, %4131
  %4133 = add nuw nsw i32 %4132, %4129
  %4134 = icmp eq i32 %4133, 2
  %4135 = zext i1 %4134 to i8
  store i8 %4135, i8* %39, align 1
  %4136 = sext i32 %4113 to i64
  store i64 %4136, i64* %RSI.i2233, align 8
  %4137 = shl nsw i64 %4136, 3
  %4138 = add i64 %4108, %4137
  %4139 = add i64 %4105, 18
  store i64 %4139, i64* %3, align 8
  %4140 = inttoptr i64 %4138 to i64*
  %4141 = load i64, i64* %4140, align 8
  store i64 %4141, i64* %1038, align 1
  store double 0.000000e+00, double* %97, align 1
  %4142 = add i64 %4105, 22
  store i64 %4142, i64* %3, align 8
  %4143 = load i64, i64* %4107, align 8
  store i64 %4143, i64* %RDX.i2239, align 8
  %4144 = add i64 %4103, -40
  %4145 = add i64 %4105, 25
  store i64 %4145, i64* %3, align 8
  %4146 = inttoptr i64 %4144 to i32*
  %4147 = load i32, i32* %4146, align 4
  %4148 = add i32 %4147, 1
  %4149 = zext i32 %4148 to i64
  store i64 %4149, i64* %RCX.i2236, align 8
  %4150 = icmp eq i32 %4147, -1
  %4151 = icmp eq i32 %4148, 0
  %4152 = or i1 %4150, %4151
  %4153 = zext i1 %4152 to i8
  store i8 %4153, i8* %14, align 1
  %4154 = and i32 %4148, 255
  %4155 = tail call i32 @llvm.ctpop.i32(i32 %4154)
  %4156 = trunc i32 %4155 to i8
  %4157 = and i8 %4156, 1
  %4158 = xor i8 %4157, 1
  store i8 %4158, i8* %21, align 1
  %4159 = xor i32 %4148, %4147
  %4160 = lshr i32 %4159, 4
  %4161 = trunc i32 %4160 to i8
  %4162 = and i8 %4161, 1
  store i8 %4162, i8* %27, align 1
  %4163 = zext i1 %4151 to i8
  store i8 %4163, i8* %30, align 1
  %4164 = lshr i32 %4148, 31
  %4165 = trunc i32 %4164 to i8
  store i8 %4165, i8* %33, align 1
  %4166 = lshr i32 %4147, 31
  %4167 = xor i32 %4164, %4166
  %4168 = add nuw nsw i32 %4167, %4164
  %4169 = icmp eq i32 %4168, 2
  %4170 = zext i1 %4169 to i8
  store i8 %4170, i8* %39, align 1
  %4171 = sext i32 %4148 to i64
  store i64 %4171, i64* %RSI.i2233, align 8
  %4172 = shl nsw i64 %4171, 3
  %4173 = add i64 %4143, %4172
  %4174 = add i64 %4105, 36
  store i64 %4174, i64* %3, align 8
  %4175 = bitcast i64 %4141 to double
  %4176 = inttoptr i64 %4173 to double*
  %4177 = load double, double* %4176, align 8
  %4178 = fadd double %4175, %4177
  store double %4178, double* %1037, align 1
  store i64 0, i64* %96, align 1
  %4179 = load i64, i64* %RBP.i, align 8
  %4180 = add i64 %4179, -160
  %4181 = add i64 %4105, 44
  store i64 %4181, i64* %3, align 8
  %4182 = inttoptr i64 %4180 to double*
  store double %4178, double* %4182, align 8
  %4183 = load i64, i64* %RBP.i, align 8
  %4184 = add i64 %4183, -16
  %4185 = load i64, i64* %3, align 8
  %4186 = add i64 %4185, 4
  store i64 %4186, i64* %3, align 8
  %4187 = inttoptr i64 %4184 to i64*
  %4188 = load i64, i64* %4187, align 8
  store i64 %4188, i64* %RDX.i2239, align 8
  %4189 = add i64 %4183, -36
  %4190 = add i64 %4185, 8
  store i64 %4190, i64* %3, align 8
  %4191 = inttoptr i64 %4189 to i32*
  %4192 = load i32, i32* %4191, align 4
  %4193 = sext i32 %4192 to i64
  store i64 %4193, i64* %RSI.i2233, align 8
  %4194 = shl nsw i64 %4193, 3
  %4195 = add i64 %4194, %4188
  %4196 = add i64 %4185, 13
  store i64 %4196, i64* %3, align 8
  %4197 = inttoptr i64 %4195 to i64*
  %4198 = load i64, i64* %4197, align 8
  store i64 %4198, i64* %1038, align 1
  store double 0.000000e+00, double* %97, align 1
  %4199 = add i64 %4185, 17
  store i64 %4199, i64* %3, align 8
  %4200 = load i64, i64* %4187, align 8
  store i64 %4200, i64* %RDX.i2239, align 8
  %4201 = add i64 %4183, -40
  %4202 = add i64 %4185, 21
  store i64 %4202, i64* %3, align 8
  %4203 = inttoptr i64 %4201 to i32*
  %4204 = load i32, i32* %4203, align 4
  %4205 = sext i32 %4204 to i64
  store i64 %4205, i64* %RSI.i2233, align 8
  %4206 = shl nsw i64 %4205, 3
  %4207 = add i64 %4206, %4200
  %4208 = add i64 %4185, 26
  store i64 %4208, i64* %3, align 8
  %4209 = bitcast i64 %4198 to double
  %4210 = inttoptr i64 %4207 to double*
  %4211 = load double, double* %4210, align 8
  %4212 = fsub double %4209, %4211
  store double %4212, double* %1037, align 1
  store i64 0, i64* %96, align 1
  %4213 = add i64 %4183, -168
  %4214 = add i64 %4185, 34
  store i64 %4214, i64* %3, align 8
  %4215 = inttoptr i64 %4213 to double*
  store double %4212, double* %4215, align 8
  %4216 = load i64, i64* %RBP.i, align 8
  %4217 = add i64 %4216, -16
  %4218 = load i64, i64* %3, align 8
  %4219 = add i64 %4218, 4
  store i64 %4219, i64* %3, align 8
  %4220 = inttoptr i64 %4217 to i64*
  %4221 = load i64, i64* %4220, align 8
  store i64 %4221, i64* %RDX.i2239, align 8
  %4222 = add i64 %4216, -36
  %4223 = add i64 %4218, 7
  store i64 %4223, i64* %3, align 8
  %4224 = inttoptr i64 %4222 to i32*
  %4225 = load i32, i32* %4224, align 4
  %4226 = add i32 %4225, 1
  %4227 = zext i32 %4226 to i64
  store i64 %4227, i64* %RCX.i2236, align 8
  %4228 = icmp eq i32 %4225, -1
  %4229 = icmp eq i32 %4226, 0
  %4230 = or i1 %4228, %4229
  %4231 = zext i1 %4230 to i8
  store i8 %4231, i8* %14, align 1
  %4232 = and i32 %4226, 255
  %4233 = tail call i32 @llvm.ctpop.i32(i32 %4232)
  %4234 = trunc i32 %4233 to i8
  %4235 = and i8 %4234, 1
  %4236 = xor i8 %4235, 1
  store i8 %4236, i8* %21, align 1
  %4237 = xor i32 %4226, %4225
  %4238 = lshr i32 %4237, 4
  %4239 = trunc i32 %4238 to i8
  %4240 = and i8 %4239, 1
  store i8 %4240, i8* %27, align 1
  %4241 = zext i1 %4229 to i8
  store i8 %4241, i8* %30, align 1
  %4242 = lshr i32 %4226, 31
  %4243 = trunc i32 %4242 to i8
  store i8 %4243, i8* %33, align 1
  %4244 = lshr i32 %4225, 31
  %4245 = xor i32 %4242, %4244
  %4246 = add nuw nsw i32 %4245, %4242
  %4247 = icmp eq i32 %4246, 2
  %4248 = zext i1 %4247 to i8
  store i8 %4248, i8* %39, align 1
  %4249 = sext i32 %4226 to i64
  store i64 %4249, i64* %RSI.i2233, align 8
  %4250 = shl nsw i64 %4249, 3
  %4251 = add i64 %4221, %4250
  %4252 = add i64 %4218, 18
  store i64 %4252, i64* %3, align 8
  %4253 = inttoptr i64 %4251 to i64*
  %4254 = load i64, i64* %4253, align 8
  store i64 %4254, i64* %1038, align 1
  store double 0.000000e+00, double* %97, align 1
  %4255 = add i64 %4218, 22
  store i64 %4255, i64* %3, align 8
  %4256 = load i64, i64* %4220, align 8
  store i64 %4256, i64* %RDX.i2239, align 8
  %4257 = add i64 %4216, -40
  %4258 = add i64 %4218, 25
  store i64 %4258, i64* %3, align 8
  %4259 = inttoptr i64 %4257 to i32*
  %4260 = load i32, i32* %4259, align 4
  %4261 = add i32 %4260, 1
  %4262 = zext i32 %4261 to i64
  store i64 %4262, i64* %RCX.i2236, align 8
  %4263 = icmp eq i32 %4260, -1
  %4264 = icmp eq i32 %4261, 0
  %4265 = or i1 %4263, %4264
  %4266 = zext i1 %4265 to i8
  store i8 %4266, i8* %14, align 1
  %4267 = and i32 %4261, 255
  %4268 = tail call i32 @llvm.ctpop.i32(i32 %4267)
  %4269 = trunc i32 %4268 to i8
  %4270 = and i8 %4269, 1
  %4271 = xor i8 %4270, 1
  store i8 %4271, i8* %21, align 1
  %4272 = xor i32 %4261, %4260
  %4273 = lshr i32 %4272, 4
  %4274 = trunc i32 %4273 to i8
  %4275 = and i8 %4274, 1
  store i8 %4275, i8* %27, align 1
  %4276 = zext i1 %4264 to i8
  store i8 %4276, i8* %30, align 1
  %4277 = lshr i32 %4261, 31
  %4278 = trunc i32 %4277 to i8
  store i8 %4278, i8* %33, align 1
  %4279 = lshr i32 %4260, 31
  %4280 = xor i32 %4277, %4279
  %4281 = add nuw nsw i32 %4280, %4277
  %4282 = icmp eq i32 %4281, 2
  %4283 = zext i1 %4282 to i8
  store i8 %4283, i8* %39, align 1
  %4284 = sext i32 %4261 to i64
  store i64 %4284, i64* %RSI.i2233, align 8
  %4285 = shl nsw i64 %4284, 3
  %4286 = add i64 %4256, %4285
  %4287 = add i64 %4218, 36
  store i64 %4287, i64* %3, align 8
  %4288 = bitcast i64 %4254 to double
  %4289 = inttoptr i64 %4286 to double*
  %4290 = load double, double* %4289, align 8
  %4291 = fsub double %4288, %4290
  store double %4291, double* %1037, align 1
  store i64 0, i64* %96, align 1
  %4292 = load i64, i64* %RBP.i, align 8
  %4293 = add i64 %4292, -176
  %4294 = add i64 %4218, 44
  store i64 %4294, i64* %3, align 8
  %4295 = inttoptr i64 %4293 to double*
  store double %4291, double* %4295, align 8
  %4296 = load i64, i64* %RBP.i, align 8
  %4297 = add i64 %4296, -120
  %4298 = load i64, i64* %3, align 8
  %4299 = add i64 %4298, 5
  store i64 %4299, i64* %3, align 8
  %4300 = inttoptr i64 %4297 to i64*
  %4301 = load i64, i64* %4300, align 8
  store i64 %4301, i64* %1038, align 1
  store double 0.000000e+00, double* %97, align 1
  %4302 = add i64 %4296, -152
  %4303 = add i64 %4298, 13
  store i64 %4303, i64* %3, align 8
  %4304 = bitcast i64 %4301 to double
  %4305 = inttoptr i64 %4302 to double*
  %4306 = load double, double* %4305, align 8
  %4307 = fadd double %4304, %4306
  store double %4307, double* %1037, align 1
  store i64 0, i64* %96, align 1
  %4308 = add i64 %4296, -16
  %4309 = add i64 %4298, 17
  store i64 %4309, i64* %3, align 8
  %4310 = inttoptr i64 %4308 to i64*
  %4311 = load i64, i64* %4310, align 8
  store i64 %4311, i64* %RDX.i2239, align 8
  %4312 = add i64 %4296, -28
  %4313 = add i64 %4298, 21
  store i64 %4313, i64* %3, align 8
  %4314 = inttoptr i64 %4312 to i32*
  %4315 = load i32, i32* %4314, align 4
  %4316 = sext i32 %4315 to i64
  store i64 %4316, i64* %RSI.i2233, align 8
  %4317 = shl nsw i64 %4316, 3
  %4318 = add i64 %4317, %4311
  %4319 = add i64 %4298, 26
  store i64 %4319, i64* %3, align 8
  %4320 = inttoptr i64 %4318 to double*
  store double %4307, double* %4320, align 8
  %4321 = load i64, i64* %RBP.i, align 8
  %4322 = add i64 %4321, -128
  %4323 = load i64, i64* %3, align 8
  %4324 = add i64 %4323, 5
  store i64 %4324, i64* %3, align 8
  %4325 = inttoptr i64 %4322 to i64*
  %4326 = load i64, i64* %4325, align 8
  store i64 %4326, i64* %1038, align 1
  store double 0.000000e+00, double* %97, align 1
  %4327 = add i64 %4321, -160
  %4328 = add i64 %4323, 13
  store i64 %4328, i64* %3, align 8
  %4329 = bitcast i64 %4326 to double
  %4330 = inttoptr i64 %4327 to double*
  %4331 = load double, double* %4330, align 8
  %4332 = fadd double %4329, %4331
  store double %4332, double* %1037, align 1
  store i64 0, i64* %96, align 1
  %4333 = add i64 %4321, -16
  %4334 = add i64 %4323, 17
  store i64 %4334, i64* %3, align 8
  %4335 = inttoptr i64 %4333 to i64*
  %4336 = load i64, i64* %4335, align 8
  store i64 %4336, i64* %RDX.i2239, align 8
  %4337 = add i64 %4321, -28
  %4338 = add i64 %4323, 20
  store i64 %4338, i64* %3, align 8
  %4339 = inttoptr i64 %4337 to i32*
  %4340 = load i32, i32* %4339, align 4
  %4341 = add i32 %4340, 1
  %4342 = zext i32 %4341 to i64
  store i64 %4342, i64* %RCX.i2236, align 8
  %4343 = icmp eq i32 %4340, -1
  %4344 = icmp eq i32 %4341, 0
  %4345 = or i1 %4343, %4344
  %4346 = zext i1 %4345 to i8
  store i8 %4346, i8* %14, align 1
  %4347 = and i32 %4341, 255
  %4348 = tail call i32 @llvm.ctpop.i32(i32 %4347)
  %4349 = trunc i32 %4348 to i8
  %4350 = and i8 %4349, 1
  %4351 = xor i8 %4350, 1
  store i8 %4351, i8* %21, align 1
  %4352 = xor i32 %4341, %4340
  %4353 = lshr i32 %4352, 4
  %4354 = trunc i32 %4353 to i8
  %4355 = and i8 %4354, 1
  store i8 %4355, i8* %27, align 1
  %4356 = zext i1 %4344 to i8
  store i8 %4356, i8* %30, align 1
  %4357 = lshr i32 %4341, 31
  %4358 = trunc i32 %4357 to i8
  store i8 %4358, i8* %33, align 1
  %4359 = lshr i32 %4340, 31
  %4360 = xor i32 %4357, %4359
  %4361 = add nuw nsw i32 %4360, %4357
  %4362 = icmp eq i32 %4361, 2
  %4363 = zext i1 %4362 to i8
  store i8 %4363, i8* %39, align 1
  %4364 = sext i32 %4341 to i64
  store i64 %4364, i64* %RSI.i2233, align 8
  %4365 = shl nsw i64 %4364, 3
  %4366 = add i64 %4336, %4365
  %4367 = add i64 %4323, 31
  store i64 %4367, i64* %3, align 8
  %4368 = inttoptr i64 %4366 to double*
  store double %4332, double* %4368, align 8
  %4369 = load i64, i64* %RBP.i, align 8
  %4370 = add i64 %4369, -152
  %4371 = load i64, i64* %3, align 8
  %4372 = add i64 %4371, 8
  store i64 %4372, i64* %3, align 8
  %4373 = inttoptr i64 %4370 to i64*
  %4374 = load i64, i64* %4373, align 8
  store i64 %4374, i64* %1038, align 1
  store double 0.000000e+00, double* %97, align 1
  %4375 = add i64 %4369, -120
  %4376 = add i64 %4371, 13
  store i64 %4376, i64* %3, align 8
  %4377 = inttoptr i64 %4375 to double*
  %4378 = load double, double* %4377, align 8
  %4379 = bitcast i64 %4374 to double
  %4380 = fsub double %4378, %4379
  store double %4380, double* %1053, align 1
  store i64 0, i64* %1055, align 1
  %4381 = add i64 %4371, 22
  store i64 %4381, i64* %3, align 8
  %4382 = inttoptr i64 %4375 to double*
  store double %4380, double* %4382, align 8
  %4383 = load i64, i64* %RBP.i, align 8
  %4384 = add i64 %4383, -160
  %4385 = load i64, i64* %3, align 8
  %4386 = add i64 %4385, 8
  store i64 %4386, i64* %3, align 8
  %4387 = inttoptr i64 %4384 to i64*
  %4388 = load i64, i64* %4387, align 8
  store i64 %4388, i64* %1038, align 1
  store double 0.000000e+00, double* %97, align 1
  %4389 = add i64 %4383, -128
  %4390 = add i64 %4385, 13
  store i64 %4390, i64* %3, align 8
  %4391 = inttoptr i64 %4389 to double*
  %4392 = load double, double* %4391, align 8
  %4393 = bitcast i64 %4388 to double
  %4394 = fsub double %4392, %4393
  store double %4394, double* %1053, align 1
  store i64 0, i64* %1055, align 1
  %4395 = add i64 %4385, 22
  store i64 %4395, i64* %3, align 8
  %4396 = inttoptr i64 %4389 to double*
  store double %4394, double* %4396, align 8
  %4397 = load i64, i64* %RBP.i, align 8
  %4398 = add i64 %4397, -96
  %4399 = load i64, i64* %3, align 8
  %4400 = add i64 %4399, 5
  store i64 %4400, i64* %3, align 8
  %4401 = inttoptr i64 %4398 to i64*
  %4402 = load i64, i64* %4401, align 8
  %4403 = load i64, i64* %RAX.i2224, align 8
  %4404 = xor i64 %4403, %4402
  store i64 %4404, i64* %RDX.i2239, align 8
  store i8 0, i8* %14, align 1
  %4405 = trunc i64 %4404 to i32
  %4406 = and i32 %4405, 255
  %4407 = tail call i32 @llvm.ctpop.i32(i32 %4406)
  %4408 = trunc i32 %4407 to i8
  %4409 = and i8 %4408, 1
  %4410 = xor i8 %4409, 1
  store i8 %4410, i8* %21, align 1
  %4411 = icmp eq i64 %4404, 0
  %4412 = zext i1 %4411 to i8
  store i8 %4412, i8* %30, align 1
  %4413 = lshr i64 %4404, 63
  %4414 = trunc i64 %4413 to i8
  store i8 %4414, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  store i64 %4404, i64* %1038, align 1
  store i64 0, i64* %96, align 1
  %4415 = add i64 %4397, -120
  %4416 = add i64 %4399, 23
  store i64 %4416, i64* %3, align 8
  %.cast9 = bitcast i64 %4404 to double
  %4417 = inttoptr i64 %4415 to double*
  %4418 = load double, double* %4417, align 8
  %4419 = fmul double %.cast9, %4418
  store double %4419, double* %1037, align 1
  store i64 0, i64* %96, align 1
  %4420 = add i64 %4397, -88
  %4421 = add i64 %4399, 28
  store i64 %4421, i64* %3, align 8
  %4422 = inttoptr i64 %4420 to i64*
  %4423 = load i64, i64* %4422, align 8
  store i64 %4423, i64* %1054, align 1
  store double 0.000000e+00, double* %1056, align 1
  %4424 = add i64 %4397, -128
  %4425 = add i64 %4399, 33
  store i64 %4425, i64* %3, align 8
  %4426 = bitcast i64 %4423 to double
  %4427 = inttoptr i64 %4424 to double*
  %4428 = load double, double* %4427, align 8
  %4429 = fmul double %4426, %4428
  store double %4429, double* %1053, align 1
  store i64 0, i64* %1055, align 1
  %4430 = fsub double %4419, %4429
  store double %4430, double* %1037, align 1
  store i64 0, i64* %96, align 1
  %4431 = add i64 %4397, -16
  %4432 = add i64 %4399, 41
  store i64 %4432, i64* %3, align 8
  %4433 = inttoptr i64 %4431 to i64*
  %4434 = load i64, i64* %4433, align 8
  store i64 %4434, i64* %RDX.i2239, align 8
  %4435 = add i64 %4397, -36
  %4436 = add i64 %4399, 45
  store i64 %4436, i64* %3, align 8
  %4437 = inttoptr i64 %4435 to i32*
  %4438 = load i32, i32* %4437, align 4
  %4439 = sext i32 %4438 to i64
  store i64 %4439, i64* %RSI.i2233, align 8
  %4440 = shl nsw i64 %4439, 3
  %4441 = add i64 %4440, %4434
  %4442 = add i64 %4399, 50
  store i64 %4442, i64* %3, align 8
  %4443 = inttoptr i64 %4441 to double*
  store double %4430, double* %4443, align 8
  %4444 = load i64, i64* %RBP.i, align 8
  %4445 = add i64 %4444, -96
  %4446 = load i64, i64* %3, align 8
  %4447 = add i64 %4446, 5
  store i64 %4447, i64* %3, align 8
  %4448 = inttoptr i64 %4445 to i64*
  %4449 = load i64, i64* %4448, align 8
  %4450 = load i64, i64* %RAX.i2224, align 8
  %4451 = xor i64 %4450, %4449
  store i64 %4451, i64* %RDX.i2239, align 8
  store i8 0, i8* %14, align 1
  %4452 = trunc i64 %4451 to i32
  %4453 = and i32 %4452, 255
  %4454 = tail call i32 @llvm.ctpop.i32(i32 %4453)
  %4455 = trunc i32 %4454 to i8
  %4456 = and i8 %4455, 1
  %4457 = xor i8 %4456, 1
  store i8 %4457, i8* %21, align 1
  %4458 = icmp eq i64 %4451, 0
  %4459 = zext i1 %4458 to i8
  store i8 %4459, i8* %30, align 1
  %4460 = lshr i64 %4451, 63
  %4461 = trunc i64 %4460 to i8
  store i8 %4461, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  store i64 %4451, i64* %1038, align 1
  store i64 0, i64* %96, align 1
  %4462 = add i64 %4444, -128
  %4463 = add i64 %4446, 23
  store i64 %4463, i64* %3, align 8
  %.cast10 = bitcast i64 %4451 to double
  %4464 = inttoptr i64 %4462 to double*
  %4465 = load double, double* %4464, align 8
  %4466 = fmul double %.cast10, %4465
  store double %4466, double* %1037, align 1
  store i64 0, i64* %96, align 1
  %4467 = add i64 %4444, -88
  %4468 = add i64 %4446, 28
  store i64 %4468, i64* %3, align 8
  %4469 = inttoptr i64 %4467 to i64*
  %4470 = load i64, i64* %4469, align 8
  store i64 %4470, i64* %1054, align 1
  store double 0.000000e+00, double* %1056, align 1
  %4471 = add i64 %4444, -120
  %4472 = add i64 %4446, 33
  store i64 %4472, i64* %3, align 8
  %4473 = bitcast i64 %4470 to double
  %4474 = inttoptr i64 %4471 to double*
  %4475 = load double, double* %4474, align 8
  %4476 = fmul double %4473, %4475
  store double %4476, double* %1053, align 1
  store i64 0, i64* %1055, align 1
  %4477 = fadd double %4466, %4476
  store double %4477, double* %1037, align 1
  store i64 0, i64* %96, align 1
  %4478 = add i64 %4444, -16
  %4479 = add i64 %4446, 41
  store i64 %4479, i64* %3, align 8
  %4480 = inttoptr i64 %4478 to i64*
  %4481 = load i64, i64* %4480, align 8
  store i64 %4481, i64* %RAX.i2224, align 8
  %4482 = add i64 %4444, -36
  %4483 = add i64 %4446, 44
  store i64 %4483, i64* %3, align 8
  %4484 = inttoptr i64 %4482 to i32*
  %4485 = load i32, i32* %4484, align 4
  %4486 = add i32 %4485, 1
  %4487 = zext i32 %4486 to i64
  store i64 %4487, i64* %RCX.i2236, align 8
  %4488 = icmp eq i32 %4485, -1
  %4489 = icmp eq i32 %4486, 0
  %4490 = or i1 %4488, %4489
  %4491 = zext i1 %4490 to i8
  store i8 %4491, i8* %14, align 1
  %4492 = and i32 %4486, 255
  %4493 = tail call i32 @llvm.ctpop.i32(i32 %4492)
  %4494 = trunc i32 %4493 to i8
  %4495 = and i8 %4494, 1
  %4496 = xor i8 %4495, 1
  store i8 %4496, i8* %21, align 1
  %4497 = xor i32 %4486, %4485
  %4498 = lshr i32 %4497, 4
  %4499 = trunc i32 %4498 to i8
  %4500 = and i8 %4499, 1
  store i8 %4500, i8* %27, align 1
  %4501 = zext i1 %4489 to i8
  store i8 %4501, i8* %30, align 1
  %4502 = lshr i32 %4486, 31
  %4503 = trunc i32 %4502 to i8
  store i8 %4503, i8* %33, align 1
  %4504 = lshr i32 %4485, 31
  %4505 = xor i32 %4502, %4504
  %4506 = add nuw nsw i32 %4505, %4502
  %4507 = icmp eq i32 %4506, 2
  %4508 = zext i1 %4507 to i8
  store i8 %4508, i8* %39, align 1
  %4509 = sext i32 %4486 to i64
  store i64 %4509, i64* %RDX.i2239, align 8
  %4510 = shl nsw i64 %4509, 3
  %4511 = add i64 %4481, %4510
  %4512 = add i64 %4446, 55
  store i64 %4512, i64* %3, align 8
  %4513 = inttoptr i64 %4511 to double*
  store double %4477, double* %4513, align 8
  %4514 = load i64, i64* %RBP.i, align 8
  %4515 = add i64 %4514, -136
  %4516 = load i64, i64* %3, align 8
  %4517 = add i64 %4516, 8
  store i64 %4517, i64* %3, align 8
  %4518 = inttoptr i64 %4515 to i64*
  %4519 = load i64, i64* %4518, align 8
  store i64 %4519, i64* %1038, align 1
  store double 0.000000e+00, double* %97, align 1
  %4520 = add i64 %4514, -176
  %4521 = add i64 %4516, 16
  store i64 %4521, i64* %3, align 8
  %4522 = bitcast i64 %4519 to double
  %4523 = inttoptr i64 %4520 to double*
  %4524 = load double, double* %4523, align 8
  %4525 = fsub double %4522, %4524
  store double %4525, double* %1037, align 1
  store i64 0, i64* %96, align 1
  %4526 = add i64 %4514, -120
  %4527 = add i64 %4516, 21
  store i64 %4527, i64* %3, align 8
  %4528 = inttoptr i64 %4526 to double*
  store double %4525, double* %4528, align 8
  %4529 = load i64, i64* %RBP.i, align 8
  %4530 = add i64 %4529, -144
  %4531 = load i64, i64* %3, align 8
  %4532 = add i64 %4531, 8
  store i64 %4532, i64* %3, align 8
  %4533 = inttoptr i64 %4530 to i64*
  %4534 = load i64, i64* %4533, align 8
  store i64 %4534, i64* %1038, align 1
  store double 0.000000e+00, double* %97, align 1
  %4535 = add i64 %4529, -168
  %4536 = add i64 %4531, 16
  store i64 %4536, i64* %3, align 8
  %4537 = bitcast i64 %4534 to double
  %4538 = inttoptr i64 %4535 to double*
  %4539 = load double, double* %4538, align 8
  %4540 = fadd double %4537, %4539
  store double %4540, double* %1037, align 1
  store i64 0, i64* %96, align 1
  %4541 = add i64 %4529, -128
  %4542 = add i64 %4531, 21
  store i64 %4542, i64* %3, align 8
  %4543 = inttoptr i64 %4541 to double*
  store double %4540, double* %4543, align 8
  %4544 = load i64, i64* %RBP.i, align 8
  %4545 = add i64 %4544, -72
  %4546 = load i64, i64* %3, align 8
  %4547 = add i64 %4546, 5
  store i64 %4547, i64* %3, align 8
  %4548 = inttoptr i64 %4545 to i64*
  %4549 = load i64, i64* %4548, align 8
  store i64 %4549, i64* %1038, align 1
  store double 0.000000e+00, double* %97, align 1
  %4550 = add i64 %4544, -120
  %4551 = add i64 %4546, 10
  store i64 %4551, i64* %3, align 8
  %4552 = bitcast i64 %4549 to double
  %4553 = inttoptr i64 %4550 to double*
  %4554 = load double, double* %4553, align 8
  %4555 = fmul double %4552, %4554
  store double %4555, double* %1037, align 1
  store i64 0, i64* %96, align 1
  %4556 = add i64 %4544, -80
  %4557 = add i64 %4546, 15
  store i64 %4557, i64* %3, align 8
  %4558 = inttoptr i64 %4556 to i64*
  %4559 = load i64, i64* %4558, align 8
  store i64 %4559, i64* %1054, align 1
  store double 0.000000e+00, double* %1056, align 1
  %4560 = add i64 %4544, -128
  %4561 = add i64 %4546, 20
  store i64 %4561, i64* %3, align 8
  %4562 = bitcast i64 %4559 to double
  %4563 = inttoptr i64 %4560 to double*
  %4564 = load double, double* %4563, align 8
  %4565 = fmul double %4562, %4564
  store double %4565, double* %1053, align 1
  store i64 0, i64* %1055, align 1
  %4566 = fsub double %4555, %4565
  store double %4566, double* %1037, align 1
  store i64 0, i64* %96, align 1
  %4567 = add i64 %4544, -16
  %4568 = add i64 %4546, 28
  store i64 %4568, i64* %3, align 8
  %4569 = inttoptr i64 %4567 to i64*
  %4570 = load i64, i64* %4569, align 8
  store i64 %4570, i64* %RAX.i2224, align 8
  %4571 = add i64 %4544, -32
  %4572 = add i64 %4546, 32
  store i64 %4572, i64* %3, align 8
  %4573 = inttoptr i64 %4571 to i32*
  %4574 = load i32, i32* %4573, align 4
  %4575 = sext i32 %4574 to i64
  store i64 %4575, i64* %RDX.i2239, align 8
  %4576 = shl nsw i64 %4575, 3
  %4577 = add i64 %4576, %4570
  %4578 = add i64 %4546, 37
  store i64 %4578, i64* %3, align 8
  %4579 = inttoptr i64 %4577 to double*
  store double %4566, double* %4579, align 8
  %4580 = load i64, i64* %RBP.i, align 8
  %4581 = add i64 %4580, -72
  %4582 = load i64, i64* %3, align 8
  %4583 = add i64 %4582, 5
  store i64 %4583, i64* %3, align 8
  %4584 = inttoptr i64 %4581 to i64*
  %4585 = load i64, i64* %4584, align 8
  store i64 %4585, i64* %1038, align 1
  store double 0.000000e+00, double* %97, align 1
  %4586 = add i64 %4580, -128
  %4587 = add i64 %4582, 10
  store i64 %4587, i64* %3, align 8
  %4588 = bitcast i64 %4585 to double
  %4589 = inttoptr i64 %4586 to double*
  %4590 = load double, double* %4589, align 8
  %4591 = fmul double %4588, %4590
  store double %4591, double* %1037, align 1
  store i64 0, i64* %96, align 1
  %4592 = add i64 %4580, -80
  %4593 = add i64 %4582, 15
  store i64 %4593, i64* %3, align 8
  %4594 = inttoptr i64 %4592 to i64*
  %4595 = load i64, i64* %4594, align 8
  store i64 %4595, i64* %1054, align 1
  store double 0.000000e+00, double* %1056, align 1
  %4596 = add i64 %4580, -120
  %4597 = add i64 %4582, 20
  store i64 %4597, i64* %3, align 8
  %4598 = bitcast i64 %4595 to double
  %4599 = inttoptr i64 %4596 to double*
  %4600 = load double, double* %4599, align 8
  %4601 = fmul double %4598, %4600
  store double %4601, double* %1053, align 1
  store i64 0, i64* %1055, align 1
  %4602 = fadd double %4591, %4601
  store double %4602, double* %1037, align 1
  store i64 0, i64* %96, align 1
  %4603 = add i64 %4580, -16
  %4604 = add i64 %4582, 28
  store i64 %4604, i64* %3, align 8
  %4605 = inttoptr i64 %4603 to i64*
  %4606 = load i64, i64* %4605, align 8
  store i64 %4606, i64* %RAX.i2224, align 8
  %4607 = add i64 %4580, -32
  %4608 = add i64 %4582, 31
  store i64 %4608, i64* %3, align 8
  %4609 = inttoptr i64 %4607 to i32*
  %4610 = load i32, i32* %4609, align 4
  %4611 = add i32 %4610, 1
  %4612 = zext i32 %4611 to i64
  store i64 %4612, i64* %RCX.i2236, align 8
  %4613 = icmp eq i32 %4610, -1
  %4614 = icmp eq i32 %4611, 0
  %4615 = or i1 %4613, %4614
  %4616 = zext i1 %4615 to i8
  store i8 %4616, i8* %14, align 1
  %4617 = and i32 %4611, 255
  %4618 = tail call i32 @llvm.ctpop.i32(i32 %4617)
  %4619 = trunc i32 %4618 to i8
  %4620 = and i8 %4619, 1
  %4621 = xor i8 %4620, 1
  store i8 %4621, i8* %21, align 1
  %4622 = xor i32 %4611, %4610
  %4623 = lshr i32 %4622, 4
  %4624 = trunc i32 %4623 to i8
  %4625 = and i8 %4624, 1
  store i8 %4625, i8* %27, align 1
  %4626 = zext i1 %4614 to i8
  store i8 %4626, i8* %30, align 1
  %4627 = lshr i32 %4611, 31
  %4628 = trunc i32 %4627 to i8
  store i8 %4628, i8* %33, align 1
  %4629 = lshr i32 %4610, 31
  %4630 = xor i32 %4627, %4629
  %4631 = add nuw nsw i32 %4630, %4627
  %4632 = icmp eq i32 %4631, 2
  %4633 = zext i1 %4632 to i8
  store i8 %4633, i8* %39, align 1
  %4634 = sext i32 %4611 to i64
  store i64 %4634, i64* %RDX.i2239, align 8
  %4635 = shl nsw i64 %4634, 3
  %4636 = add i64 %4606, %4635
  %4637 = add i64 %4582, 42
  store i64 %4637, i64* %3, align 8
  %4638 = inttoptr i64 %4636 to double*
  store double %4602, double* %4638, align 8
  %4639 = load i64, i64* %RBP.i, align 8
  %4640 = add i64 %4639, -136
  %4641 = load i64, i64* %3, align 8
  %4642 = add i64 %4641, 8
  store i64 %4642, i64* %3, align 8
  %4643 = inttoptr i64 %4640 to i64*
  %4644 = load i64, i64* %4643, align 8
  store i64 %4644, i64* %1038, align 1
  store double 0.000000e+00, double* %97, align 1
  %4645 = add i64 %4639, -176
  %4646 = add i64 %4641, 16
  store i64 %4646, i64* %3, align 8
  %4647 = bitcast i64 %4644 to double
  %4648 = inttoptr i64 %4645 to double*
  %4649 = load double, double* %4648, align 8
  %4650 = fadd double %4647, %4649
  store double %4650, double* %1037, align 1
  store i64 0, i64* %96, align 1
  %4651 = add i64 %4639, -120
  %4652 = add i64 %4641, 21
  store i64 %4652, i64* %3, align 8
  %4653 = inttoptr i64 %4651 to double*
  store double %4650, double* %4653, align 8
  %4654 = load i64, i64* %RBP.i, align 8
  %4655 = add i64 %4654, -144
  %4656 = load i64, i64* %3, align 8
  %4657 = add i64 %4656, 8
  store i64 %4657, i64* %3, align 8
  %4658 = inttoptr i64 %4655 to i64*
  %4659 = load i64, i64* %4658, align 8
  store i64 %4659, i64* %1038, align 1
  store double 0.000000e+00, double* %97, align 1
  %4660 = add i64 %4654, -168
  %4661 = add i64 %4656, 16
  store i64 %4661, i64* %3, align 8
  %4662 = bitcast i64 %4659 to double
  %4663 = inttoptr i64 %4660 to double*
  %4664 = load double, double* %4663, align 8
  %4665 = fsub double %4662, %4664
  store double %4665, double* %1037, align 1
  store i64 0, i64* %96, align 1
  %4666 = add i64 %4654, -128
  %4667 = add i64 %4656, 21
  store i64 %4667, i64* %3, align 8
  %4668 = inttoptr i64 %4666 to double*
  store double %4665, double* %4668, align 8
  %4669 = load i64, i64* %RBP.i, align 8
  %4670 = add i64 %4669, -104
  %4671 = load i64, i64* %3, align 8
  %4672 = add i64 %4671, 5
  store i64 %4672, i64* %3, align 8
  %4673 = inttoptr i64 %4670 to i64*
  %4674 = load i64, i64* %4673, align 8
  store i64 %4674, i64* %1038, align 1
  store double 0.000000e+00, double* %97, align 1
  %4675 = add i64 %4669, -120
  %4676 = add i64 %4671, 10
  store i64 %4676, i64* %3, align 8
  %4677 = bitcast i64 %4674 to double
  %4678 = inttoptr i64 %4675 to double*
  %4679 = load double, double* %4678, align 8
  %4680 = fmul double %4677, %4679
  store double %4680, double* %1037, align 1
  store i64 0, i64* %96, align 1
  %4681 = add i64 %4669, -112
  %4682 = add i64 %4671, 15
  store i64 %4682, i64* %3, align 8
  %4683 = inttoptr i64 %4681 to i64*
  %4684 = load i64, i64* %4683, align 8
  store i64 %4684, i64* %1054, align 1
  store double 0.000000e+00, double* %1056, align 1
  %4685 = add i64 %4669, -128
  %4686 = add i64 %4671, 20
  store i64 %4686, i64* %3, align 8
  %4687 = bitcast i64 %4684 to double
  %4688 = inttoptr i64 %4685 to double*
  %4689 = load double, double* %4688, align 8
  %4690 = fmul double %4687, %4689
  store double %4690, double* %1053, align 1
  store i64 0, i64* %1055, align 1
  %4691 = fsub double %4680, %4690
  store double %4691, double* %1037, align 1
  store i64 0, i64* %96, align 1
  %4692 = add i64 %4669, -16
  %4693 = add i64 %4671, 28
  store i64 %4693, i64* %3, align 8
  %4694 = inttoptr i64 %4692 to i64*
  %4695 = load i64, i64* %4694, align 8
  store i64 %4695, i64* %RAX.i2224, align 8
  %4696 = add i64 %4669, -40
  %4697 = add i64 %4671, 32
  store i64 %4697, i64* %3, align 8
  %4698 = inttoptr i64 %4696 to i32*
  %4699 = load i32, i32* %4698, align 4
  %4700 = sext i32 %4699 to i64
  store i64 %4700, i64* %RDX.i2239, align 8
  %4701 = shl nsw i64 %4700, 3
  %4702 = add i64 %4701, %4695
  %4703 = add i64 %4671, 37
  store i64 %4703, i64* %3, align 8
  %4704 = inttoptr i64 %4702 to double*
  store double %4691, double* %4704, align 8
  %4705 = load i64, i64* %RBP.i, align 8
  %4706 = add i64 %4705, -104
  %4707 = load i64, i64* %3, align 8
  %4708 = add i64 %4707, 5
  store i64 %4708, i64* %3, align 8
  %4709 = inttoptr i64 %4706 to i64*
  %4710 = load i64, i64* %4709, align 8
  store i64 %4710, i64* %1038, align 1
  store double 0.000000e+00, double* %97, align 1
  %4711 = add i64 %4705, -128
  %4712 = add i64 %4707, 10
  store i64 %4712, i64* %3, align 8
  %4713 = bitcast i64 %4710 to double
  %4714 = inttoptr i64 %4711 to double*
  %4715 = load double, double* %4714, align 8
  %4716 = fmul double %4713, %4715
  store double %4716, double* %1037, align 1
  store i64 0, i64* %96, align 1
  %4717 = add i64 %4705, -112
  %4718 = add i64 %4707, 15
  store i64 %4718, i64* %3, align 8
  %4719 = inttoptr i64 %4717 to i64*
  %4720 = load i64, i64* %4719, align 8
  store i64 %4720, i64* %1054, align 1
  store double 0.000000e+00, double* %1056, align 1
  %4721 = add i64 %4705, -120
  %4722 = add i64 %4707, 20
  store i64 %4722, i64* %3, align 8
  %4723 = bitcast i64 %4720 to double
  %4724 = inttoptr i64 %4721 to double*
  %4725 = load double, double* %4724, align 8
  %4726 = fmul double %4723, %4725
  store double %4726, double* %1053, align 1
  store i64 0, i64* %1055, align 1
  %4727 = fadd double %4716, %4726
  store double %4727, double* %1037, align 1
  store i64 0, i64* %96, align 1
  %4728 = add i64 %4705, -16
  %4729 = add i64 %4707, 28
  store i64 %4729, i64* %3, align 8
  %4730 = inttoptr i64 %4728 to i64*
  %4731 = load i64, i64* %4730, align 8
  store i64 %4731, i64* %RAX.i2224, align 8
  %4732 = add i64 %4705, -40
  %4733 = add i64 %4707, 31
  store i64 %4733, i64* %3, align 8
  %4734 = inttoptr i64 %4732 to i32*
  %4735 = load i32, i32* %4734, align 4
  %4736 = add i32 %4735, 1
  %4737 = zext i32 %4736 to i64
  store i64 %4737, i64* %RCX.i2236, align 8
  %4738 = icmp eq i32 %4735, -1
  %4739 = icmp eq i32 %4736, 0
  %4740 = or i1 %4738, %4739
  %4741 = zext i1 %4740 to i8
  store i8 %4741, i8* %14, align 1
  %4742 = and i32 %4736, 255
  %4743 = tail call i32 @llvm.ctpop.i32(i32 %4742)
  %4744 = trunc i32 %4743 to i8
  %4745 = and i8 %4744, 1
  %4746 = xor i8 %4745, 1
  store i8 %4746, i8* %21, align 1
  %4747 = xor i32 %4736, %4735
  %4748 = lshr i32 %4747, 4
  %4749 = trunc i32 %4748 to i8
  %4750 = and i8 %4749, 1
  store i8 %4750, i8* %27, align 1
  %4751 = zext i1 %4739 to i8
  store i8 %4751, i8* %30, align 1
  %4752 = lshr i32 %4736, 31
  %4753 = trunc i32 %4752 to i8
  store i8 %4753, i8* %33, align 1
  %4754 = lshr i32 %4735, 31
  %4755 = xor i32 %4752, %4754
  %4756 = add nuw nsw i32 %4755, %4752
  %4757 = icmp eq i32 %4756, 2
  %4758 = zext i1 %4757 to i8
  store i8 %4758, i8* %39, align 1
  %4759 = sext i32 %4736 to i64
  store i64 %4759, i64* %RDX.i2239, align 8
  %4760 = shl nsw i64 %4759, 3
  %4761 = add i64 %4731, %4760
  %4762 = add i64 %4707, 42
  store i64 %4762, i64* %3, align 8
  %4763 = inttoptr i64 %4761 to double*
  store double %4727, double* %4763, align 8
  %4764 = load i64, i64* %RBP.i, align 8
  %4765 = add i64 %4764, -28
  %4766 = load i64, i64* %3, align 8
  %4767 = add i64 %4766, 3
  store i64 %4767, i64* %3, align 8
  %4768 = inttoptr i64 %4765 to i32*
  %4769 = load i32, i32* %4768, align 4
  %4770 = add i32 %4769, 2
  %4771 = zext i32 %4770 to i64
  store i64 %4771, i64* %RAX.i2224, align 8
  %4772 = icmp ugt i32 %4769, -3
  %4773 = zext i1 %4772 to i8
  store i8 %4773, i8* %14, align 1
  %4774 = and i32 %4770, 255
  %4775 = tail call i32 @llvm.ctpop.i32(i32 %4774)
  %4776 = trunc i32 %4775 to i8
  %4777 = and i8 %4776, 1
  %4778 = xor i8 %4777, 1
  store i8 %4778, i8* %21, align 1
  %4779 = xor i32 %4770, %4769
  %4780 = lshr i32 %4779, 4
  %4781 = trunc i32 %4780 to i8
  %4782 = and i8 %4781, 1
  store i8 %4782, i8* %27, align 1
  %4783 = icmp eq i32 %4770, 0
  %4784 = zext i1 %4783 to i8
  store i8 %4784, i8* %30, align 1
  %4785 = lshr i32 %4770, 31
  %4786 = trunc i32 %4785 to i8
  store i8 %4786, i8* %33, align 1
  %4787 = lshr i32 %4769, 31
  %4788 = xor i32 %4785, %4787
  %4789 = add nuw nsw i32 %4788, %4785
  %4790 = icmp eq i32 %4789, 2
  %4791 = zext i1 %4790 to i8
  store i8 %4791, i8* %39, align 1
  %4792 = add i64 %4766, 9
  store i64 %4792, i64* %3, align 8
  store i32 %4770, i32* %4768, align 4
  %4793 = load i64, i64* %3, align 8
  %4794 = add i64 %4793, -822
  store i64 %4794, i64* %3, align 8
  br label %block_.L_403cb0

block_.L_403feb:                                  ; preds = %block_.L_403cb0
  %4795 = load i64, i64* %RBP.i, align 8
  %4796 = add i64 %4795, -60
  %4797 = add i64 %3721, 8
  store i64 %4797, i64* %3, align 8
  %4798 = inttoptr i64 %4796 to i32*
  %4799 = load i32, i32* %4798, align 4
  %4800 = zext i32 %4799 to i64
  store i64 %4800, i64* %RAX.i2224, align 8
  %4801 = add i64 %4795, -44
  %4802 = add i64 %3721, 11
  store i64 %4802, i64* %3, align 8
  %4803 = inttoptr i64 %4801 to i32*
  %4804 = load i32, i32* %4803, align 4
  %4805 = add i32 %4804, %4799
  %4806 = zext i32 %4805 to i64
  store i64 %4806, i64* %RAX.i2224, align 8
  %4807 = icmp ult i32 %4805, %4799
  %4808 = icmp ult i32 %4805, %4804
  %4809 = or i1 %4807, %4808
  %4810 = zext i1 %4809 to i8
  store i8 %4810, i8* %14, align 1
  %4811 = and i32 %4805, 255
  %4812 = tail call i32 @llvm.ctpop.i32(i32 %4811)
  %4813 = trunc i32 %4812 to i8
  %4814 = and i8 %4813, 1
  %4815 = xor i8 %4814, 1
  store i8 %4815, i8* %21, align 1
  %4816 = xor i32 %4804, %4799
  %4817 = xor i32 %4816, %4805
  %4818 = lshr i32 %4817, 4
  %4819 = trunc i32 %4818 to i8
  %4820 = and i8 %4819, 1
  store i8 %4820, i8* %27, align 1
  %4821 = icmp eq i32 %4805, 0
  %4822 = zext i1 %4821 to i8
  store i8 %4822, i8* %30, align 1
  %4823 = lshr i32 %4805, 31
  %4824 = trunc i32 %4823 to i8
  store i8 %4824, i8* %33, align 1
  %4825 = lshr i32 %4799, 31
  %4826 = lshr i32 %4804, 31
  %4827 = xor i32 %4823, %4825
  %4828 = xor i32 %4823, %4826
  %4829 = add nuw nsw i32 %4827, %4828
  %4830 = icmp eq i32 %4829, 2
  %4831 = zext i1 %4830 to i8
  store i8 %4831, i8* %39, align 1
  %4832 = add i64 %3721, 14
  store i64 %4832, i64* %3, align 8
  store i32 %4805, i32* %4803, align 4
  %4833 = load i64, i64* %3, align 8
  %4834 = add i64 %4833, -1910
  store i64 %4834, i64* %3, align 8
  br label %block_.L_403883

block_.L_403ffe:                                  ; preds = %block_.L_403883
  %4835 = load i64, i64* %6, align 8
  %4836 = add i64 %4835, 48
  store i64 %4836, i64* %6, align 8
  %4837 = icmp ugt i64 %4835, -49
  %4838 = zext i1 %4837 to i8
  store i8 %4838, i8* %14, align 1
  %4839 = trunc i64 %4836 to i32
  %4840 = and i32 %4839, 255
  %4841 = tail call i32 @llvm.ctpop.i32(i32 %4840)
  %4842 = trunc i32 %4841 to i8
  %4843 = and i8 %4842, 1
  %4844 = xor i8 %4843, 1
  store i8 %4844, i8* %21, align 1
  %4845 = xor i64 %4835, 16
  %4846 = xor i64 %4845, %4836
  %4847 = lshr i64 %4846, 4
  %4848 = trunc i64 %4847 to i8
  %4849 = and i8 %4848, 1
  store i8 %4849, i8* %27, align 1
  %4850 = icmp eq i64 %4836, 0
  %4851 = zext i1 %4850 to i8
  store i8 %4851, i8* %30, align 1
  %4852 = lshr i64 %4836, 63
  %4853 = trunc i64 %4852 to i8
  store i8 %4853, i8* %33, align 1
  %4854 = lshr i64 %4835, 63
  %4855 = xor i64 %4852, %4854
  %4856 = add nuw nsw i64 %4855, %4852
  %4857 = icmp eq i64 %4856, 2
  %4858 = zext i1 %4857 to i8
  store i8 %4858, i8* %39, align 1
  %4859 = add i64 %2166, 5
  store i64 %4859, i64* %3, align 8
  %4860 = add i64 %4835, 56
  %4861 = inttoptr i64 %4836 to i64*
  %4862 = load i64, i64* %4861, align 8
  store i64 %4862, i64* %RBP.i, align 8
  store i64 %4860, i64* %6, align 8
  %4863 = add i64 %2166, 6
  store i64 %4863, i64* %3, align 8
  %4864 = inttoptr i64 %4860 to i64*
  %4865 = load i64, i64* %4864, align 8
  store i64 %4865, i64* %3, align 8
  %4866 = add i64 %4835, 64
  store i64 %4866, i64* %6, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subq__0x30___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -48
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 48
  %8 = zext i1 %7 to i8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8, i8* %9, align 1
  %10 = trunc i64 %6 to i32
  %11 = and i32 %10, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = xor i64 %3, 16
  %18 = xor i64 %17, %6
  %19 = lshr i64 %18, 4
  %20 = trunc i64 %19 to i8
  %21 = and i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %21, i8* %22, align 1
  %23 = icmp eq i64 %6, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1
  %26 = lshr i64 %6, 63
  %27 = trunc i64 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = lshr i64 %3, 63
  %30 = xor i64 %26, %29
  %31 = add nuw nsw i64 %30, %29
  %32 = icmp eq i64 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
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
define %struct.Memory* @routine_movl__esi__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x8__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
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
define %struct.Memory* @routine_shll__0x2___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %.tr = trunc i64 %3 to i32
  %6 = shl i32 %.tr, 2
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %RSI, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %9 = lshr i64 %3, 30
  %10 = trunc i64 %9 to i8
  %11 = and i8 %10, 1
  store i8 %11, i8* %8, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %13 = and i32 %6, 252
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
  %23 = lshr i32 %.tr, 29
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -56
  %6 = load i32, i32* %ESI, align 4
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
define %struct.Memory* @routine_cmpl_MINUS0x8__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -8
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
define %struct.Memory* @routine_jge_.L_40359d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addl_MINUS0x8__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
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
define %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -32
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
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
define %struct.Memory* @routine_movl__eax__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -40
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
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
define %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
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
define %struct.Memory* @routine_addsd___rcx__rdx_8____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %RDX, align 8
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
define %struct.Memory* @routine_movsd__xmm0__MINUS0x78__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -120
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
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
define %struct.Memory* @routine_movslq__eax___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x80__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -128
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
define %struct.Memory* @routine_subsd___rcx__rdx_8____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = shl i64 %5, 3
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 5
  store i64 %9, i64* %PC, align 8
  %10 = bitcast %union.VectorReg* %3 to double*
  %11 = load double, double* %10, align 1
  %12 = inttoptr i64 %7 to double*
  %13 = load double, double* %12, align 8
  %14 = fsub double %11, %13
  store double %14, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x88__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -136
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x90__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -144
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
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
define %struct.Memory* @routine_movsd__xmm0__MINUS0x98__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -152
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
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
define %struct.Memory* @routine_movsd__xmm0__MINUS0xa0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -160
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0xa8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0xb0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -176
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x78__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -120
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
define %struct.Memory* @routine_addsd_MINUS0x98__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -152
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fadd double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
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
define %struct.Memory* @routine_movsd_MINUS0x80__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -128
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
define %struct.Memory* @routine_addsd_MINUS0xa0__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -160
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fadd double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subsd_MINUS0x98__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -152
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fsub double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subsd_MINUS0xa0__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -160
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fsub double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x88__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -136
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
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
define %struct.Memory* @routine_subsd_MINUS0xb0__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -176
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fsub double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x90__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -144
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
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
define %struct.Memory* @routine_addsd_MINUS0xa8__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -168
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fadd double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd_MINUS0xb0__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -176
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fadd double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subsd_MINUS0xa8__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -168
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fsub double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x2___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 2
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ugt i32 %6, -3
  %10 = zext i1 %9 to i8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %10, i8* %11, align 1
  %12 = and i32 %7, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = xor i32 %7, %6
  %19 = lshr i32 %18, 4
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %21, i8* %22, align 1
  %23 = icmp eq i32 %7, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1
  %26 = lshr i32 %7, 31
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %6, 31
  %30 = xor i32 %26, %29
  %31 = add nuw nsw i32 %30, %26
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
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
define %struct.Memory* @routine_jmpq_.L_403346(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_movsd_0x10__rax____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 16
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
define %struct.Memory* @routine_movl_MINUS0x38__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
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
define %struct.Memory* @routine_movl__ecx__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -28
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x8__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
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
define %struct.Memory* @routine_addl_MINUS0x38__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -56
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
define %struct.Memory* @routine_cmpl__ecx___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %4 to i32*
  %5 = load i32, i32* %EAX, align 4
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = sub i32 %5, %6
  %10 = icmp ult i32 %5, %6
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = and i32 %9, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = xor i32 %6, %5
  %20 = xor i32 %19, %9
  %21 = lshr i32 %20, 4
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %23, i8* %24, align 1
  %25 = icmp eq i32 %9, 0
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %9, 31
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %5, 31
  %32 = lshr i32 %6, 31
  %33 = xor i32 %32, %31
  %34 = xor i32 %28, %31
  %35 = add nuw nsw i32 %34, %33
  %36 = icmp eq i32 %35, 2
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %37, i8* %38, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_40386d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_MINUS0xa0__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -160
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
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
define %struct.Memory* @routine_subsd_MINUS0x80__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -128
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fsub double %9, %11
  store double %12, double* %8, align 1
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
define %struct.Memory* @routine_movsd_MINUS0x78__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -120
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subsd_MINUS0x80__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -128
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fsub double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd__xmm1___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast [32 x %union.VectorReg]* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast %union.VectorReg* %4 to double*
  %10 = load double, double* %9, align 1
  %11 = fmul double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd_MINUS0x80__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -128
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fadd double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0xb0__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -176
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
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
define %struct.Memory* @routine_addsd_MINUS0x88__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -136
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fadd double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0xa8__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
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
define %struct.Memory* @routine_subsd_MINUS0x90__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -144
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fsub double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x80__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -128
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subsd_MINUS0x78__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -120
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fsub double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd_MINUS0x78__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -120
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fadd double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4035b1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x38__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
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
define %struct.Memory* @routine_movl__eax__MINUS0x3c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -60
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x3c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -60
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
define %struct.Memory* @routine_jge_.L_403ffe(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_0x849__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2129
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
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
define %struct.Memory* @routine_movslq_MINUS0x30__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
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
define %struct.Memory* @routine_movsd___rcx__rdx_8____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
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
define %struct.Memory* @routine_movsd__xmm1__MINUS0x58__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm1__MINUS0x60__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x34__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
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
define %struct.Memory* @routine_movsd__xmm1__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
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
define %struct.Memory* @routine_movsd__xmm1__MINUS0x50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movaps__xmm0___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %5 = bitcast %union.VectorReg* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %4 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x i32>*
  %12 = load <2 x i32>, <2 x i32>* %11, align 1
  %13 = extractelement <2 x i32> %9, i32 0
  %14 = bitcast %union.VectorReg* %3 to i32*
  store i32 %13, i32* %14, align 1
  %15 = extractelement <2 x i32> %9, i32 1
  %16 = getelementptr inbounds i8, i8* %5, i64 4
  %17 = bitcast i8* %16 to i32*
  store i32 %15, i32* %17, align 1
  %18 = extractelement <2 x i32> %12, i32 0
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %20 = bitcast i64* %19 to i32*
  store i32 %18, i32* %20, align 1
  %21 = extractelement <2 x i32> %12, i32 1
  %22 = getelementptr inbounds i8, i8* %5, i64 12
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd_MINUS0x60__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -96
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fmul double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd_MINUS0x50__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -80
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fmul double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subsd__xmm2___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast %union.VectorReg* %4 to double*
  %10 = load double, double* %9, align 1
  %11 = fsub double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm1__MINUS0x68__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd_MINUS0x60__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -96
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fmul double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd_MINUS0x48__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -72
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fmul double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subsd_MINUS0x50__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -80
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fsub double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x70__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x2c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
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
define %struct.Memory* @routine_jge_.L_403c42(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_MINUS0x98__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -152
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
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
define %struct.Memory* @routine_subsd__xmm0___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast %union.VectorReg* %4 to double*
  %10 = load double, double* %9, align 1
  %11 = fsub double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm1__MINUS0x78__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -120
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm1__MINUS0x80__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -128
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
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
define %struct.Memory* @routine_mulsd_MINUS0x78__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -120
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fmul double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x60__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd_MINUS0x80__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -128
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fmul double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subsd__xmm1___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast [32 x %union.VectorReg]* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast %union.VectorReg* %4 to double*
  %10 = load double, double* %9, align 1
  %11 = fsub double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd_MINUS0x80__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -128
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fmul double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd_MINUS0x78__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -120
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fmul double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast [32 x %union.VectorReg]* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast %union.VectorReg* %4 to double*
  %10 = load double, double* %9, align 1
  %11 = fadd double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x50__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x68__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
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
define %struct.Memory* @routine_movsd_MINUS0x70__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_403930(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x496__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 1182
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
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
define %struct.Memory* @routine_addl__0x2___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 2
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  %9 = icmp ugt i32 %6, -3
  %10 = zext i1 %9 to i8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %10, i8* %11, align 1
  %12 = and i32 %7, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = xor i32 %7, %6
  %19 = lshr i32 %18, 4
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %21, i8* %22, align 1
  %23 = icmp eq i32 %7, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1
  %26 = lshr i32 %7, 31
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %6, 31
  %30 = xor i32 %26, %29
  %31 = add nuw nsw i32 %30, %26
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
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
define %struct.Memory* @routine_movsd___rax__rdx_8____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %9 = inttoptr i64 %6 to i64*
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %10, i64* %11, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %13 = bitcast i64* %12 to double*
  store double 0.000000e+00, double* %13, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x3___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 3
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  %9 = icmp ugt i32 %6, -4
  %10 = zext i1 %9 to i8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %10, i8* %11, align 1
  %12 = and i32 %7, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = xor i32 %7, %6
  %19 = lshr i32 %18, 4
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %21, i8* %22, align 1
  %23 = icmp eq i32 %7, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1
  %26 = lshr i32 %7, 31
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %6, 31
  %30 = xor i32 %26, %29
  %31 = add nuw nsw i32 %30, %26
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd_MINUS0x58__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -88
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fmul double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd_MINUS0x58__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -88
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fmul double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x2c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
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
define %struct.Memory* @routine_movl_MINUS0x2c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
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
define %struct.Memory* @routine_addl_MINUS0x38__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -56
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__edx___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i32, i32* %EDX, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %4 to i32
  %10 = add i32 %5, %9
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RCX, align 8
  %12 = icmp ult i32 %10, %9
  %13 = icmp ult i32 %10, %5
  %14 = or i1 %12, %13
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %15, i8* %16, align 1
  %17 = and i32 %10, 255
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = xor i64 %6, %4
  %24 = trunc i64 %23 to i32
  %25 = xor i32 %24, %10
  %26 = lshr i32 %25, 4
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1
  %30 = icmp eq i32 %10, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %10, 31
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %9, 31
  %37 = lshr i32 %5, 31
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
define %struct.Memory* @routine_jge_.L_403feb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addl_MINUS0x8__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -36
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
define %struct.Memory* @routine_addsd___rdx__rsi_8____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RDX, align 8
  %5 = load i64, i64* %RSI, align 8
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
define %struct.Memory* @routine_subsd___rdx__rsi_8____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RDX, align 8
  %5 = load i64, i64* %RSI, align 8
  %6 = shl i64 %5, 3
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 5
  store i64 %9, i64* %PC, align 8
  %10 = bitcast %union.VectorReg* %3 to double*
  %11 = load double, double* %10, align 1
  %12 = inttoptr i64 %7 to double*
  %13 = load double, double* %12, align 8
  %14 = fsub double %11, %13
  store double %14, double* %10, align 1
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
define %struct.Memory* @routine_movsd_MINUS0x60__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
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
define %struct.Memory* @routine_movsd_MINUS0x58__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
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
define %struct.Memory* @routine_jmpq_.L_403cb0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_403ff0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x2c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
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
  store i64 %12, i64* %RAX, align 8
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
define %struct.Memory* @routine_jmpq_.L_403883(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x30___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 48
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -49
  %8 = zext i1 %7 to i8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8, i8* %9, align 1
  %10 = trunc i64 %6 to i32
  %11 = and i32 %10, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = xor i64 %3, 16
  %18 = xor i64 %17, %6
  %19 = lshr i64 %18, 4
  %20 = trunc i64 %19 to i8
  %21 = and i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %21, i8* %22, align 1
  %23 = icmp eq i64 %6, 0
  %24 = zext i1 %23 to i8
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
