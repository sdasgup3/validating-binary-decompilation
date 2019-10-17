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
define %struct.Memory* @bitrv2(%struct.State* noalias, i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #1 {
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
  %EDI.i1227 = bitcast %union.anon* %11 to i32*
  %12 = add i64 %7, -12
  %13 = load i32, i32* %EDI.i1227, align 4
  %14 = add i64 %10, 6
  store i64 %14, i64* %3, align 8
  %15 = inttoptr i64 %12 to i32*
  store i32 %13, i32* %15, align 4
  %RSI.i1224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %16 = load i64, i64* %RBP.i, align 8
  %17 = add i64 %16, -16
  %18 = load i64, i64* %RSI.i1224, align 8
  %19 = load i64, i64* %3, align 8
  %20 = add i64 %19, 4
  store i64 %20, i64* %3, align 8
  %21 = inttoptr i64 %17 to i64*
  store i64 %18, i64* %21, align 8
  %RDX.i1221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %22 = load i64, i64* %RBP.i, align 8
  %23 = add i64 %22, -24
  %24 = load i64, i64* %RDX.i1221, align 8
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
  store i64 %33, i64* %RDX.i1221, align 8
  %34 = add i64 %30, 10
  store i64 %34, i64* %3, align 8
  %35 = inttoptr i64 %33 to i32*
  store i32 0, i32* %35, align 4
  %RDI.i = getelementptr inbounds %union.anon, %union.anon* %11, i64 0, i32 0
  %36 = load i64, i64* %RBP.i, align 8
  %37 = add i64 %36, -4
  %38 = load i64, i64* %3, align 8
  %39 = add i64 %38, 3
  store i64 %39, i64* %3, align 8
  %40 = inttoptr i64 %37 to i32*
  %41 = load i32, i32* %40, align 4
  %42 = zext i32 %41 to i64
  store i64 %42, i64* %RDI.i, align 8
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
  %RAX.i1207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %52 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %53 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %54 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %RCX.i1178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_401206

block_.L_401206:                                  ; preds = %block_.L_40125d, %entry
  %57 = phi i64 [ %310, %block_.L_40125d ], [ %.pre, %entry ]
  %58 = load i64, i64* %RBP.i, align 8
  %59 = add i64 %58, -48
  %60 = add i64 %57, 3
  store i64 %60, i64* %3, align 8
  %61 = inttoptr i64 %59 to i32*
  %62 = load i32, i32* %61, align 4
  %63 = shl i32 %62, 3
  %64 = zext i32 %63 to i64
  store i64 %64, i64* %RAX.i1207, align 8
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
  %.v44 = select i1 %108, i64 15, i64 101
  %109 = add i64 %57, %.v44
  %110 = add i64 %109, 3
  store i64 %110, i64* %3, align 8
  br i1 %108, label %block_401215, label %block_.L_40126b

block_401215:                                     ; preds = %block_.L_401206
  %111 = load i32, i32* %80, align 4
  %112 = zext i32 %111 to i64
  %113 = shl nuw i64 %112, 32
  %114 = ashr i64 %113, 33
  %115 = trunc i32 %111 to i8
  %116 = and i8 %115, 1
  %117 = trunc i64 %114 to i32
  %118 = and i64 %114, 4294967295
  store i64 %118, i64* %RAX.i1207, align 8
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
  br label %block_.L_401225

block_.L_401225:                                  ; preds = %block_401231, %block_401215
  %136 = phi i64 [ %288, %block_401231 ], [ %.pre42, %block_401215 ]
  %137 = load i64, i64* %RBP.i, align 8
  %138 = add i64 %137, -28
  %139 = add i64 %136, 3
  store i64 %139, i64* %3, align 8
  %140 = inttoptr i64 %138 to i32*
  %141 = load i32, i32* %140, align 4
  %142 = zext i32 %141 to i64
  store i64 %142, i64* %RAX.i1207, align 8
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
  br i1 %172, label %block_401231, label %block_.L_40125d

block_401231:                                     ; preds = %block_.L_401225
  %174 = add i64 %137, -16
  %175 = add i64 %173, 4
  store i64 %175, i64* %3, align 8
  %176 = inttoptr i64 %174 to i64*
  %177 = load i64, i64* %176, align 8
  store i64 %177, i64* %RAX.i1207, align 8
  %178 = add i64 %173, 8
  store i64 %178, i64* %3, align 8
  %179 = load i32, i32* %140, align 4
  %180 = sext i32 %179 to i64
  store i64 %180, i64* %RCX.i1178, align 8
  %181 = shl nsw i64 %180, 2
  %182 = add i64 %181, %177
  %183 = add i64 %173, 11
  store i64 %183, i64* %3, align 8
  %184 = inttoptr i64 %182 to i32*
  %185 = load i32, i32* %184, align 4
  %186 = zext i32 %185 to i64
  store i64 %186, i64* %RDX.i1221, align 8
  %187 = add i64 %137, -44
  %188 = add i64 %173, 14
  store i64 %188, i64* %3, align 8
  %189 = inttoptr i64 %187 to i32*
  %190 = load i32, i32* %189, align 4
  %191 = add i32 %190, %185
  %192 = zext i32 %191 to i64
  store i64 %192, i64* %RDX.i1221, align 8
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
  store i64 %219, i64* %RAX.i1207, align 8
  %220 = add i64 %173, 21
  store i64 %220, i64* %3, align 8
  %221 = load i32, i32* %145, align 4
  %222 = zext i32 %221 to i64
  store i64 %222, i64* %RSI.i1224, align 8
  %223 = add i64 %173, 24
  store i64 %223, i64* %3, align 8
  %224 = load i32, i32* %140, align 4
  %225 = add i32 %224, %221
  %226 = zext i32 %225 to i64
  store i64 %226, i64* %RSI.i1224, align 8
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
  store i64 %252, i64* %RCX.i1178, align 8
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
  store i64 %264, i64* %RAX.i1207, align 8
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
  br label %block_.L_401225

block_.L_40125d:                                  ; preds = %block_.L_401225
  %289 = add i64 %173, 3
  store i64 %289, i64* %3, align 8
  %290 = load i32, i32* %145, align 4
  %291 = shl i32 %290, 1
  %292 = icmp slt i32 %290, 0
  %293 = icmp slt i32 %291, 0
  %294 = xor i1 %292, %293
  %295 = zext i32 %291 to i64
  store i64 %295, i64* %RAX.i1207, align 8
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
  br label %block_.L_401206

block_.L_40126b:                                  ; preds = %block_.L_401206
  %311 = load i32, i32* %61, align 4
  %312 = shl i32 %311, 1
  %313 = icmp slt i32 %311, 0
  %314 = icmp slt i32 %312, 0
  %315 = xor i1 %313, %314
  %316 = zext i32 %312 to i64
  store i64 %316, i64* %RAX.i1207, align 8
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
  store i64 %339, i64* %RAX.i1207, align 8
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
  %.v = select i1 %370, i64 15, i64 1040
  %382 = add i64 %334, %.v
  %383 = add i64 %332, -36
  %384 = add i64 %382, 7
  store i64 %384, i64* %3, align 8
  %385 = inttoptr i64 %383 to i32*
  br i1 %370, label %block_401283, label %block_.L_401684

block_401283:                                     ; preds = %block_.L_40126b
  store i32 0, i32* %385, align 4
  %386 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %387 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %388 = bitcast i64* %387 to double*
  %.pre38 = load i64, i64* %3, align 8
  br label %block_.L_40128a

block_.L_40128a:                                  ; preds = %block_.L_4015ad, %block_401283
  %389 = phi i64 [ %2280, %block_.L_4015ad ], [ %.pre38, %block_401283 ]
  %390 = load i64, i64* %RBP.i, align 8
  %391 = add i64 %390, -36
  %392 = add i64 %389, 3
  store i64 %392, i64* %3, align 8
  %393 = inttoptr i64 %391 to i32*
  %394 = load i32, i32* %393, align 4
  %395 = zext i32 %394 to i64
  store i64 %395, i64* %RAX.i1207, align 8
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
  %.v46 = select i1 %425, i64 12, i64 1013
  %426 = add i64 %389, %.v46
  store i64 %426, i64* %3, align 8
  br i1 %425, label %block_401296, label %block_.L_40167f

block_401296:                                     ; preds = %block_.L_40128a
  %427 = add i64 %390, -28
  %428 = add i64 %426, 7
  store i64 %428, i64* %3, align 8
  %429 = inttoptr i64 %427 to i32*
  store i32 0, i32* %429, align 4
  %.pre39 = load i64, i64* %3, align 8
  br label %block_.L_40129d

block_.L_40129d:                                  ; preds = %block_4012a9, %block_401296
  %430 = phi i64 [ %1871, %block_4012a9 ], [ %.pre39, %block_401296 ]
  %431 = load i64, i64* %RBP.i, align 8
  %432 = add i64 %431, -28
  %433 = add i64 %430, 3
  store i64 %433, i64* %3, align 8
  %434 = inttoptr i64 %432 to i32*
  %435 = load i32, i32* %434, align 4
  %436 = zext i32 %435 to i64
  store i64 %436, i64* %RAX.i1207, align 8
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
  %.v47 = select i1 %466, i64 12, i64 784
  %467 = add i64 %430, %.v47
  %468 = add i64 %467, 3
  store i64 %468, i64* %3, align 8
  br i1 %466, label %block_4012a9, label %block_.L_4015ad

block_4012a9:                                     ; preds = %block_.L_40129d
  %469 = load i32, i32* %434, align 4
  %470 = shl i32 %469, 1
  %471 = icmp slt i32 %469, 0
  %472 = icmp slt i32 %470, 0
  %473 = xor i1 %471, %472
  %474 = zext i32 %470 to i64
  store i64 %474, i64* %RAX.i1207, align 8
  %.lobit9 = lshr i32 %469, 31
  %475 = trunc i32 %.lobit9 to i8
  store i8 %475, i8* %51, align 1
  %476 = and i32 %470, 254
  %477 = tail call i32 @llvm.ctpop.i32(i32 %476)
  %478 = trunc i32 %477 to i8
  %479 = and i8 %478, 1
  %480 = xor i8 %479, 1
  store i8 %480, i8* %52, align 1
  store i8 0, i8* %53, align 1
  %481 = icmp eq i32 %470, 0
  %482 = zext i1 %481 to i8
  store i8 %482, i8* %54, align 1
  %483 = lshr i32 %469, 30
  %484 = trunc i32 %483 to i8
  %485 = and i8 %484, 1
  store i8 %485, i8* %55, align 1
  %486 = zext i1 %473 to i8
  store i8 %486, i8* %56, align 1
  %487 = add i64 %431, -16
  %488 = add i64 %467, 9
  store i64 %488, i64* %3, align 8
  %489 = inttoptr i64 %487 to i64*
  %490 = load i64, i64* %489, align 8
  store i64 %490, i64* %RCX.i1178, align 8
  %491 = add i64 %467, 13
  store i64 %491, i64* %3, align 8
  %492 = load i32, i32* %439, align 4
  %493 = sext i32 %492 to i64
  store i64 %493, i64* %RDX.i1221, align 8
  %494 = shl nsw i64 %493, 2
  %495 = add i64 %490, %494
  %496 = add i64 %467, 16
  store i64 %496, i64* %3, align 8
  %497 = inttoptr i64 %495 to i32*
  %498 = load i32, i32* %497, align 4
  %499 = add i32 %498, %470
  %500 = zext i32 %499 to i64
  store i64 %500, i64* %RAX.i1207, align 8
  %501 = icmp ult i32 %499, %470
  %502 = icmp ult i32 %499, %498
  %503 = or i1 %501, %502
  %504 = zext i1 %503 to i8
  store i8 %504, i8* %51, align 1
  %505 = and i32 %499, 255
  %506 = tail call i32 @llvm.ctpop.i32(i32 %505)
  %507 = trunc i32 %506 to i8
  %508 = and i8 %507, 1
  %509 = xor i8 %508, 1
  store i8 %509, i8* %52, align 1
  %510 = xor i32 %498, %470
  %511 = xor i32 %510, %499
  %512 = lshr i32 %511, 4
  %513 = trunc i32 %512 to i8
  %514 = and i8 %513, 1
  store i8 %514, i8* %53, align 1
  %515 = icmp eq i32 %499, 0
  %516 = zext i1 %515 to i8
  store i8 %516, i8* %54, align 1
  %517 = lshr i32 %499, 31
  %518 = trunc i32 %517 to i8
  store i8 %518, i8* %55, align 1
  %519 = lshr i32 %469, 30
  %520 = and i32 %519, 1
  %521 = lshr i32 %498, 31
  %522 = xor i32 %517, %520
  %523 = xor i32 %517, %521
  %524 = add nuw nsw i32 %522, %523
  %525 = icmp eq i32 %524, 2
  %526 = zext i1 %525 to i8
  store i8 %526, i8* %56, align 1
  %527 = add i64 %431, -32
  %528 = add i64 %467, 19
  store i64 %528, i64* %3, align 8
  %529 = inttoptr i64 %527 to i32*
  store i32 %499, i32* %529, align 4
  %530 = load i64, i64* %RBP.i, align 8
  %531 = add i64 %530, -36
  %532 = load i64, i64* %3, align 8
  %533 = add i64 %532, 3
  store i64 %533, i64* %3, align 8
  %534 = inttoptr i64 %531 to i32*
  %535 = load i32, i32* %534, align 4
  %536 = shl i32 %535, 1
  %537 = icmp slt i32 %535, 0
  %538 = icmp slt i32 %536, 0
  %539 = xor i1 %537, %538
  %540 = zext i32 %536 to i64
  store i64 %540, i64* %RAX.i1207, align 8
  %.lobit10 = lshr i32 %535, 31
  %541 = trunc i32 %.lobit10 to i8
  store i8 %541, i8* %51, align 1
  %542 = and i32 %536, 254
  %543 = tail call i32 @llvm.ctpop.i32(i32 %542)
  %544 = trunc i32 %543 to i8
  %545 = and i8 %544, 1
  %546 = xor i8 %545, 1
  store i8 %546, i8* %52, align 1
  store i8 0, i8* %53, align 1
  %547 = icmp eq i32 %536, 0
  %548 = zext i1 %547 to i8
  store i8 %548, i8* %54, align 1
  %549 = lshr i32 %535, 30
  %550 = trunc i32 %549 to i8
  %551 = and i8 %550, 1
  store i8 %551, i8* %55, align 1
  %552 = zext i1 %539 to i8
  store i8 %552, i8* %56, align 1
  %553 = add i64 %530, -16
  %554 = add i64 %532, 9
  store i64 %554, i64* %3, align 8
  %555 = inttoptr i64 %553 to i64*
  %556 = load i64, i64* %555, align 8
  store i64 %556, i64* %RCX.i1178, align 8
  %557 = add i64 %530, -28
  %558 = add i64 %532, 13
  store i64 %558, i64* %3, align 8
  %559 = inttoptr i64 %557 to i32*
  %560 = load i32, i32* %559, align 4
  %561 = sext i32 %560 to i64
  store i64 %561, i64* %RDX.i1221, align 8
  %562 = shl nsw i64 %561, 2
  %563 = add i64 %556, %562
  %564 = add i64 %532, 16
  store i64 %564, i64* %3, align 8
  %565 = inttoptr i64 %563 to i32*
  %566 = load i32, i32* %565, align 4
  %567 = add i32 %566, %536
  %568 = zext i32 %567 to i64
  store i64 %568, i64* %RAX.i1207, align 8
  %569 = icmp ult i32 %567, %536
  %570 = icmp ult i32 %567, %566
  %571 = or i1 %569, %570
  %572 = zext i1 %571 to i8
  store i8 %572, i8* %51, align 1
  %573 = and i32 %567, 255
  %574 = tail call i32 @llvm.ctpop.i32(i32 %573)
  %575 = trunc i32 %574 to i8
  %576 = and i8 %575, 1
  %577 = xor i8 %576, 1
  store i8 %577, i8* %52, align 1
  %578 = xor i32 %566, %536
  %579 = xor i32 %578, %567
  %580 = lshr i32 %579, 4
  %581 = trunc i32 %580 to i8
  %582 = and i8 %581, 1
  store i8 %582, i8* %53, align 1
  %583 = icmp eq i32 %567, 0
  %584 = zext i1 %583 to i8
  store i8 %584, i8* %54, align 1
  %585 = lshr i32 %567, 31
  %586 = trunc i32 %585 to i8
  store i8 %586, i8* %55, align 1
  %587 = lshr i32 %535, 30
  %588 = and i32 %587, 1
  %589 = lshr i32 %566, 31
  %590 = xor i32 %585, %588
  %591 = xor i32 %585, %589
  %592 = add nuw nsw i32 %590, %591
  %593 = icmp eq i32 %592, 2
  %594 = zext i1 %593 to i8
  store i8 %594, i8* %56, align 1
  %595 = add i64 %530, -40
  %596 = add i64 %532, 19
  store i64 %596, i64* %3, align 8
  %597 = inttoptr i64 %595 to i32*
  store i32 %567, i32* %597, align 4
  %598 = load i64, i64* %RBP.i, align 8
  %599 = add i64 %598, -24
  %600 = load i64, i64* %3, align 8
  %601 = add i64 %600, 4
  store i64 %601, i64* %3, align 8
  %602 = inttoptr i64 %599 to i64*
  %603 = load i64, i64* %602, align 8
  store i64 %603, i64* %RCX.i1178, align 8
  %604 = add i64 %598, -32
  %605 = add i64 %600, 8
  store i64 %605, i64* %3, align 8
  %606 = inttoptr i64 %604 to i32*
  %607 = load i32, i32* %606, align 4
  %608 = sext i32 %607 to i64
  store i64 %608, i64* %RDX.i1221, align 8
  %609 = shl nsw i64 %608, 3
  %610 = add i64 %609, %603
  %611 = add i64 %600, 13
  store i64 %611, i64* %3, align 8
  %612 = inttoptr i64 %610 to i64*
  %613 = load i64, i64* %612, align 8
  store i64 %613, i64* %386, align 1
  store double 0.000000e+00, double* %388, align 1
  %614 = add i64 %598, -64
  %615 = add i64 %600, 18
  store i64 %615, i64* %3, align 8
  %616 = inttoptr i64 %614 to i64*
  store i64 %613, i64* %616, align 8
  %617 = load i64, i64* %RBP.i, align 8
  %618 = add i64 %617, -24
  %619 = load i64, i64* %3, align 8
  %620 = add i64 %619, 4
  store i64 %620, i64* %3, align 8
  %621 = inttoptr i64 %618 to i64*
  %622 = load i64, i64* %621, align 8
  store i64 %622, i64* %RCX.i1178, align 8
  %623 = add i64 %617, -32
  %624 = add i64 %619, 7
  store i64 %624, i64* %3, align 8
  %625 = inttoptr i64 %623 to i32*
  %626 = load i32, i32* %625, align 4
  %627 = add i32 %626, 1
  %628 = zext i32 %627 to i64
  store i64 %628, i64* %RAX.i1207, align 8
  %629 = icmp eq i32 %626, -1
  %630 = icmp eq i32 %627, 0
  %631 = or i1 %629, %630
  %632 = zext i1 %631 to i8
  store i8 %632, i8* %51, align 1
  %633 = and i32 %627, 255
  %634 = tail call i32 @llvm.ctpop.i32(i32 %633)
  %635 = trunc i32 %634 to i8
  %636 = and i8 %635, 1
  %637 = xor i8 %636, 1
  store i8 %637, i8* %52, align 1
  %638 = xor i32 %627, %626
  %639 = lshr i32 %638, 4
  %640 = trunc i32 %639 to i8
  %641 = and i8 %640, 1
  store i8 %641, i8* %53, align 1
  %642 = zext i1 %630 to i8
  store i8 %642, i8* %54, align 1
  %643 = lshr i32 %627, 31
  %644 = trunc i32 %643 to i8
  store i8 %644, i8* %55, align 1
  %645 = lshr i32 %626, 31
  %646 = xor i32 %643, %645
  %647 = add nuw nsw i32 %646, %643
  %648 = icmp eq i32 %647, 2
  %649 = zext i1 %648 to i8
  store i8 %649, i8* %56, align 1
  %650 = sext i32 %627 to i64
  store i64 %650, i64* %RDX.i1221, align 8
  %651 = shl nsw i64 %650, 3
  %652 = add i64 %622, %651
  %653 = add i64 %619, 18
  store i64 %653, i64* %3, align 8
  %654 = inttoptr i64 %652 to i64*
  %655 = load i64, i64* %654, align 8
  store i64 %655, i64* %386, align 1
  store double 0.000000e+00, double* %388, align 1
  %656 = add i64 %617, -72
  %657 = add i64 %619, 23
  store i64 %657, i64* %3, align 8
  %658 = inttoptr i64 %656 to i64*
  store i64 %655, i64* %658, align 8
  %659 = load i64, i64* %RBP.i, align 8
  %660 = add i64 %659, -24
  %661 = load i64, i64* %3, align 8
  %662 = add i64 %661, 4
  store i64 %662, i64* %3, align 8
  %663 = inttoptr i64 %660 to i64*
  %664 = load i64, i64* %663, align 8
  store i64 %664, i64* %RCX.i1178, align 8
  %665 = add i64 %659, -40
  %666 = add i64 %661, 8
  store i64 %666, i64* %3, align 8
  %667 = inttoptr i64 %665 to i32*
  %668 = load i32, i32* %667, align 4
  %669 = sext i32 %668 to i64
  store i64 %669, i64* %RDX.i1221, align 8
  %670 = shl nsw i64 %669, 3
  %671 = add i64 %670, %664
  %672 = add i64 %661, 13
  store i64 %672, i64* %3, align 8
  %673 = inttoptr i64 %671 to i64*
  %674 = load i64, i64* %673, align 8
  store i64 %674, i64* %386, align 1
  store double 0.000000e+00, double* %388, align 1
  %675 = add i64 %659, -80
  %676 = add i64 %661, 18
  store i64 %676, i64* %3, align 8
  %677 = inttoptr i64 %675 to i64*
  store i64 %674, i64* %677, align 8
  %678 = load i64, i64* %RBP.i, align 8
  %679 = add i64 %678, -24
  %680 = load i64, i64* %3, align 8
  %681 = add i64 %680, 4
  store i64 %681, i64* %3, align 8
  %682 = inttoptr i64 %679 to i64*
  %683 = load i64, i64* %682, align 8
  store i64 %683, i64* %RCX.i1178, align 8
  %684 = add i64 %678, -40
  %685 = add i64 %680, 7
  store i64 %685, i64* %3, align 8
  %686 = inttoptr i64 %684 to i32*
  %687 = load i32, i32* %686, align 4
  %688 = add i32 %687, 1
  %689 = zext i32 %688 to i64
  store i64 %689, i64* %RAX.i1207, align 8
  %690 = icmp eq i32 %687, -1
  %691 = icmp eq i32 %688, 0
  %692 = or i1 %690, %691
  %693 = zext i1 %692 to i8
  store i8 %693, i8* %51, align 1
  %694 = and i32 %688, 255
  %695 = tail call i32 @llvm.ctpop.i32(i32 %694)
  %696 = trunc i32 %695 to i8
  %697 = and i8 %696, 1
  %698 = xor i8 %697, 1
  store i8 %698, i8* %52, align 1
  %699 = xor i32 %688, %687
  %700 = lshr i32 %699, 4
  %701 = trunc i32 %700 to i8
  %702 = and i8 %701, 1
  store i8 %702, i8* %53, align 1
  %703 = zext i1 %691 to i8
  store i8 %703, i8* %54, align 1
  %704 = lshr i32 %688, 31
  %705 = trunc i32 %704 to i8
  store i8 %705, i8* %55, align 1
  %706 = lshr i32 %687, 31
  %707 = xor i32 %704, %706
  %708 = add nuw nsw i32 %707, %704
  %709 = icmp eq i32 %708, 2
  %710 = zext i1 %709 to i8
  store i8 %710, i8* %56, align 1
  %711 = sext i32 %688 to i64
  store i64 %711, i64* %RDX.i1221, align 8
  %712 = shl nsw i64 %711, 3
  %713 = add i64 %683, %712
  %714 = add i64 %680, 18
  store i64 %714, i64* %3, align 8
  %715 = inttoptr i64 %713 to i64*
  %716 = load i64, i64* %715, align 8
  store i64 %716, i64* %386, align 1
  store double 0.000000e+00, double* %388, align 1
  %717 = add i64 %678, -88
  %718 = add i64 %680, 23
  store i64 %718, i64* %3, align 8
  %719 = inttoptr i64 %717 to i64*
  store i64 %716, i64* %719, align 8
  %720 = load i64, i64* %RBP.i, align 8
  %721 = add i64 %720, -80
  %722 = load i64, i64* %3, align 8
  %723 = add i64 %722, 5
  store i64 %723, i64* %3, align 8
  %724 = inttoptr i64 %721 to i64*
  %725 = load i64, i64* %724, align 8
  store i64 %725, i64* %386, align 1
  store double 0.000000e+00, double* %388, align 1
  %726 = add i64 %720, -24
  %727 = add i64 %722, 9
  store i64 %727, i64* %3, align 8
  %728 = inttoptr i64 %726 to i64*
  %729 = load i64, i64* %728, align 8
  store i64 %729, i64* %RCX.i1178, align 8
  %730 = add i64 %720, -32
  %731 = add i64 %722, 13
  store i64 %731, i64* %3, align 8
  %732 = inttoptr i64 %730 to i32*
  %733 = load i32, i32* %732, align 4
  %734 = sext i32 %733 to i64
  store i64 %734, i64* %RDX.i1221, align 8
  %735 = shl nsw i64 %734, 3
  %736 = add i64 %735, %729
  %737 = add i64 %722, 18
  store i64 %737, i64* %3, align 8
  %738 = inttoptr i64 %736 to i64*
  store i64 %725, i64* %738, align 8
  %739 = load i64, i64* %RBP.i, align 8
  %740 = add i64 %739, -88
  %741 = load i64, i64* %3, align 8
  %742 = add i64 %741, 5
  store i64 %742, i64* %3, align 8
  %743 = inttoptr i64 %740 to i64*
  %744 = load i64, i64* %743, align 8
  store i64 %744, i64* %386, align 1
  store double 0.000000e+00, double* %388, align 1
  %745 = add i64 %739, -24
  %746 = add i64 %741, 9
  store i64 %746, i64* %3, align 8
  %747 = inttoptr i64 %745 to i64*
  %748 = load i64, i64* %747, align 8
  store i64 %748, i64* %RCX.i1178, align 8
  %749 = add i64 %739, -32
  %750 = add i64 %741, 12
  store i64 %750, i64* %3, align 8
  %751 = inttoptr i64 %749 to i32*
  %752 = load i32, i32* %751, align 4
  %753 = add i32 %752, 1
  %754 = zext i32 %753 to i64
  store i64 %754, i64* %RAX.i1207, align 8
  %755 = icmp eq i32 %752, -1
  %756 = icmp eq i32 %753, 0
  %757 = or i1 %755, %756
  %758 = zext i1 %757 to i8
  store i8 %758, i8* %51, align 1
  %759 = and i32 %753, 255
  %760 = tail call i32 @llvm.ctpop.i32(i32 %759)
  %761 = trunc i32 %760 to i8
  %762 = and i8 %761, 1
  %763 = xor i8 %762, 1
  store i8 %763, i8* %52, align 1
  %764 = xor i32 %753, %752
  %765 = lshr i32 %764, 4
  %766 = trunc i32 %765 to i8
  %767 = and i8 %766, 1
  store i8 %767, i8* %53, align 1
  %768 = zext i1 %756 to i8
  store i8 %768, i8* %54, align 1
  %769 = lshr i32 %753, 31
  %770 = trunc i32 %769 to i8
  store i8 %770, i8* %55, align 1
  %771 = lshr i32 %752, 31
  %772 = xor i32 %769, %771
  %773 = add nuw nsw i32 %772, %769
  %774 = icmp eq i32 %773, 2
  %775 = zext i1 %774 to i8
  store i8 %775, i8* %56, align 1
  %776 = sext i32 %753 to i64
  store i64 %776, i64* %RDX.i1221, align 8
  %777 = shl nsw i64 %776, 3
  %778 = add i64 %748, %777
  %779 = add i64 %741, 23
  store i64 %779, i64* %3, align 8
  %780 = inttoptr i64 %778 to i64*
  store i64 %744, i64* %780, align 8
  %781 = load i64, i64* %RBP.i, align 8
  %782 = add i64 %781, -64
  %783 = load i64, i64* %3, align 8
  %784 = add i64 %783, 5
  store i64 %784, i64* %3, align 8
  %785 = inttoptr i64 %782 to i64*
  %786 = load i64, i64* %785, align 8
  store i64 %786, i64* %386, align 1
  store double 0.000000e+00, double* %388, align 1
  %787 = add i64 %781, -24
  %788 = add i64 %783, 9
  store i64 %788, i64* %3, align 8
  %789 = inttoptr i64 %787 to i64*
  %790 = load i64, i64* %789, align 8
  store i64 %790, i64* %RCX.i1178, align 8
  %791 = add i64 %781, -40
  %792 = add i64 %783, 13
  store i64 %792, i64* %3, align 8
  %793 = inttoptr i64 %791 to i32*
  %794 = load i32, i32* %793, align 4
  %795 = sext i32 %794 to i64
  store i64 %795, i64* %RDX.i1221, align 8
  %796 = shl nsw i64 %795, 3
  %797 = add i64 %796, %790
  %798 = add i64 %783, 18
  store i64 %798, i64* %3, align 8
  %799 = inttoptr i64 %797 to i64*
  store i64 %786, i64* %799, align 8
  %800 = load i64, i64* %RBP.i, align 8
  %801 = add i64 %800, -72
  %802 = load i64, i64* %3, align 8
  %803 = add i64 %802, 5
  store i64 %803, i64* %3, align 8
  %804 = inttoptr i64 %801 to i64*
  %805 = load i64, i64* %804, align 8
  store i64 %805, i64* %386, align 1
  store double 0.000000e+00, double* %388, align 1
  %806 = add i64 %800, -24
  %807 = add i64 %802, 9
  store i64 %807, i64* %3, align 8
  %808 = inttoptr i64 %806 to i64*
  %809 = load i64, i64* %808, align 8
  store i64 %809, i64* %RCX.i1178, align 8
  %810 = add i64 %800, -40
  %811 = add i64 %802, 12
  store i64 %811, i64* %3, align 8
  %812 = inttoptr i64 %810 to i32*
  %813 = load i32, i32* %812, align 4
  %814 = add i32 %813, 1
  %815 = zext i32 %814 to i64
  store i64 %815, i64* %RAX.i1207, align 8
  %816 = icmp eq i32 %813, -1
  %817 = icmp eq i32 %814, 0
  %818 = or i1 %816, %817
  %819 = zext i1 %818 to i8
  store i8 %819, i8* %51, align 1
  %820 = and i32 %814, 255
  %821 = tail call i32 @llvm.ctpop.i32(i32 %820)
  %822 = trunc i32 %821 to i8
  %823 = and i8 %822, 1
  %824 = xor i8 %823, 1
  store i8 %824, i8* %52, align 1
  %825 = xor i32 %814, %813
  %826 = lshr i32 %825, 4
  %827 = trunc i32 %826 to i8
  %828 = and i8 %827, 1
  store i8 %828, i8* %53, align 1
  %829 = zext i1 %817 to i8
  store i8 %829, i8* %54, align 1
  %830 = lshr i32 %814, 31
  %831 = trunc i32 %830 to i8
  store i8 %831, i8* %55, align 1
  %832 = lshr i32 %813, 31
  %833 = xor i32 %830, %832
  %834 = add nuw nsw i32 %833, %830
  %835 = icmp eq i32 %834, 2
  %836 = zext i1 %835 to i8
  store i8 %836, i8* %56, align 1
  %837 = sext i32 %814 to i64
  store i64 %837, i64* %RDX.i1221, align 8
  %838 = shl nsw i64 %837, 3
  %839 = add i64 %809, %838
  %840 = add i64 %802, 23
  store i64 %840, i64* %3, align 8
  %841 = inttoptr i64 %839 to i64*
  store i64 %805, i64* %841, align 8
  %842 = load i64, i64* %RBP.i, align 8
  %843 = add i64 %842, -52
  %844 = load i64, i64* %3, align 8
  %845 = add i64 %844, 3
  store i64 %845, i64* %3, align 8
  %846 = inttoptr i64 %843 to i32*
  %847 = load i32, i32* %846, align 4
  %848 = zext i32 %847 to i64
  store i64 %848, i64* %RAX.i1207, align 8
  %849 = add i64 %842, -32
  %850 = add i64 %844, 6
  store i64 %850, i64* %3, align 8
  %851 = inttoptr i64 %849 to i32*
  %852 = load i32, i32* %851, align 4
  %853 = add i32 %852, %847
  %854 = zext i32 %853 to i64
  store i64 %854, i64* %RAX.i1207, align 8
  %855 = icmp ult i32 %853, %847
  %856 = icmp ult i32 %853, %852
  %857 = or i1 %855, %856
  %858 = zext i1 %857 to i8
  store i8 %858, i8* %51, align 1
  %859 = and i32 %853, 255
  %860 = tail call i32 @llvm.ctpop.i32(i32 %859)
  %861 = trunc i32 %860 to i8
  %862 = and i8 %861, 1
  %863 = xor i8 %862, 1
  store i8 %863, i8* %52, align 1
  %864 = xor i32 %852, %847
  %865 = xor i32 %864, %853
  %866 = lshr i32 %865, 4
  %867 = trunc i32 %866 to i8
  %868 = and i8 %867, 1
  store i8 %868, i8* %53, align 1
  %869 = icmp eq i32 %853, 0
  %870 = zext i1 %869 to i8
  store i8 %870, i8* %54, align 1
  %871 = lshr i32 %853, 31
  %872 = trunc i32 %871 to i8
  store i8 %872, i8* %55, align 1
  %873 = lshr i32 %847, 31
  %874 = lshr i32 %852, 31
  %875 = xor i32 %871, %873
  %876 = xor i32 %871, %874
  %877 = add nuw nsw i32 %875, %876
  %878 = icmp eq i32 %877, 2
  %879 = zext i1 %878 to i8
  store i8 %879, i8* %56, align 1
  %880 = add i64 %844, 9
  store i64 %880, i64* %3, align 8
  store i32 %853, i32* %851, align 4
  %881 = load i64, i64* %RBP.i, align 8
  %882 = add i64 %881, -52
  %883 = load i64, i64* %3, align 8
  %884 = add i64 %883, 3
  store i64 %884, i64* %3, align 8
  %885 = inttoptr i64 %882 to i32*
  %886 = load i32, i32* %885, align 4
  %887 = shl i32 %886, 1
  %888 = icmp slt i32 %886, 0
  %889 = icmp slt i32 %887, 0
  %890 = xor i1 %888, %889
  %891 = zext i32 %887 to i64
  store i64 %891, i64* %RAX.i1207, align 8
  %.lobit11 = lshr i32 %886, 31
  %892 = trunc i32 %.lobit11 to i8
  store i8 %892, i8* %51, align 1
  %893 = and i32 %887, 254
  %894 = tail call i32 @llvm.ctpop.i32(i32 %893)
  %895 = trunc i32 %894 to i8
  %896 = and i8 %895, 1
  %897 = xor i8 %896, 1
  store i8 %897, i8* %52, align 1
  store i8 0, i8* %53, align 1
  %898 = icmp eq i32 %887, 0
  %899 = zext i1 %898 to i8
  store i8 %899, i8* %54, align 1
  %900 = lshr i32 %886, 30
  %901 = trunc i32 %900 to i8
  %902 = and i8 %901, 1
  store i8 %902, i8* %55, align 1
  %903 = zext i1 %890 to i8
  store i8 %903, i8* %56, align 1
  %904 = add i64 %881, -40
  %905 = add i64 %883, 8
  store i64 %905, i64* %3, align 8
  %906 = inttoptr i64 %904 to i32*
  %907 = load i32, i32* %906, align 4
  %908 = add i32 %907, %887
  %909 = zext i32 %908 to i64
  store i64 %909, i64* %RAX.i1207, align 8
  %910 = icmp ult i32 %908, %887
  %911 = icmp ult i32 %908, %907
  %912 = or i1 %910, %911
  %913 = zext i1 %912 to i8
  store i8 %913, i8* %51, align 1
  %914 = and i32 %908, 255
  %915 = tail call i32 @llvm.ctpop.i32(i32 %914)
  %916 = trunc i32 %915 to i8
  %917 = and i8 %916, 1
  %918 = xor i8 %917, 1
  store i8 %918, i8* %52, align 1
  %919 = xor i32 %907, %887
  %920 = xor i32 %919, %908
  %921 = lshr i32 %920, 4
  %922 = trunc i32 %921 to i8
  %923 = and i8 %922, 1
  store i8 %923, i8* %53, align 1
  %924 = icmp eq i32 %908, 0
  %925 = zext i1 %924 to i8
  store i8 %925, i8* %54, align 1
  %926 = lshr i32 %908, 31
  %927 = trunc i32 %926 to i8
  store i8 %927, i8* %55, align 1
  %928 = lshr i32 %886, 30
  %929 = and i32 %928, 1
  %930 = lshr i32 %907, 31
  %931 = xor i32 %926, %929
  %932 = xor i32 %926, %930
  %933 = add nuw nsw i32 %931, %932
  %934 = icmp eq i32 %933, 2
  %935 = zext i1 %934 to i8
  store i8 %935, i8* %56, align 1
  %936 = add i64 %883, 11
  store i64 %936, i64* %3, align 8
  store i32 %908, i32* %906, align 4
  %937 = load i64, i64* %RBP.i, align 8
  %938 = add i64 %937, -24
  %939 = load i64, i64* %3, align 8
  %940 = add i64 %939, 4
  store i64 %940, i64* %3, align 8
  %941 = inttoptr i64 %938 to i64*
  %942 = load i64, i64* %941, align 8
  store i64 %942, i64* %RCX.i1178, align 8
  %943 = add i64 %937, -32
  %944 = add i64 %939, 8
  store i64 %944, i64* %3, align 8
  %945 = inttoptr i64 %943 to i32*
  %946 = load i32, i32* %945, align 4
  %947 = sext i32 %946 to i64
  store i64 %947, i64* %RDX.i1221, align 8
  %948 = shl nsw i64 %947, 3
  %949 = add i64 %948, %942
  %950 = add i64 %939, 13
  store i64 %950, i64* %3, align 8
  %951 = inttoptr i64 %949 to i64*
  %952 = load i64, i64* %951, align 8
  store i64 %952, i64* %386, align 1
  store double 0.000000e+00, double* %388, align 1
  %953 = add i64 %937, -64
  %954 = add i64 %939, 18
  store i64 %954, i64* %3, align 8
  %955 = inttoptr i64 %953 to i64*
  store i64 %952, i64* %955, align 8
  %956 = load i64, i64* %RBP.i, align 8
  %957 = add i64 %956, -24
  %958 = load i64, i64* %3, align 8
  %959 = add i64 %958, 4
  store i64 %959, i64* %3, align 8
  %960 = inttoptr i64 %957 to i64*
  %961 = load i64, i64* %960, align 8
  store i64 %961, i64* %RCX.i1178, align 8
  %962 = add i64 %956, -32
  %963 = add i64 %958, 7
  store i64 %963, i64* %3, align 8
  %964 = inttoptr i64 %962 to i32*
  %965 = load i32, i32* %964, align 4
  %966 = add i32 %965, 1
  %967 = zext i32 %966 to i64
  store i64 %967, i64* %RAX.i1207, align 8
  %968 = icmp eq i32 %965, -1
  %969 = icmp eq i32 %966, 0
  %970 = or i1 %968, %969
  %971 = zext i1 %970 to i8
  store i8 %971, i8* %51, align 1
  %972 = and i32 %966, 255
  %973 = tail call i32 @llvm.ctpop.i32(i32 %972)
  %974 = trunc i32 %973 to i8
  %975 = and i8 %974, 1
  %976 = xor i8 %975, 1
  store i8 %976, i8* %52, align 1
  %977 = xor i32 %966, %965
  %978 = lshr i32 %977, 4
  %979 = trunc i32 %978 to i8
  %980 = and i8 %979, 1
  store i8 %980, i8* %53, align 1
  %981 = zext i1 %969 to i8
  store i8 %981, i8* %54, align 1
  %982 = lshr i32 %966, 31
  %983 = trunc i32 %982 to i8
  store i8 %983, i8* %55, align 1
  %984 = lshr i32 %965, 31
  %985 = xor i32 %982, %984
  %986 = add nuw nsw i32 %985, %982
  %987 = icmp eq i32 %986, 2
  %988 = zext i1 %987 to i8
  store i8 %988, i8* %56, align 1
  %989 = sext i32 %966 to i64
  store i64 %989, i64* %RDX.i1221, align 8
  %990 = shl nsw i64 %989, 3
  %991 = add i64 %961, %990
  %992 = add i64 %958, 18
  store i64 %992, i64* %3, align 8
  %993 = inttoptr i64 %991 to i64*
  %994 = load i64, i64* %993, align 8
  store i64 %994, i64* %386, align 1
  store double 0.000000e+00, double* %388, align 1
  %995 = add i64 %956, -72
  %996 = add i64 %958, 23
  store i64 %996, i64* %3, align 8
  %997 = inttoptr i64 %995 to i64*
  store i64 %994, i64* %997, align 8
  %998 = load i64, i64* %RBP.i, align 8
  %999 = add i64 %998, -24
  %1000 = load i64, i64* %3, align 8
  %1001 = add i64 %1000, 4
  store i64 %1001, i64* %3, align 8
  %1002 = inttoptr i64 %999 to i64*
  %1003 = load i64, i64* %1002, align 8
  store i64 %1003, i64* %RCX.i1178, align 8
  %1004 = add i64 %998, -40
  %1005 = add i64 %1000, 8
  store i64 %1005, i64* %3, align 8
  %1006 = inttoptr i64 %1004 to i32*
  %1007 = load i32, i32* %1006, align 4
  %1008 = sext i32 %1007 to i64
  store i64 %1008, i64* %RDX.i1221, align 8
  %1009 = shl nsw i64 %1008, 3
  %1010 = add i64 %1009, %1003
  %1011 = add i64 %1000, 13
  store i64 %1011, i64* %3, align 8
  %1012 = inttoptr i64 %1010 to i64*
  %1013 = load i64, i64* %1012, align 8
  store i64 %1013, i64* %386, align 1
  store double 0.000000e+00, double* %388, align 1
  %1014 = add i64 %998, -80
  %1015 = add i64 %1000, 18
  store i64 %1015, i64* %3, align 8
  %1016 = inttoptr i64 %1014 to i64*
  store i64 %1013, i64* %1016, align 8
  %1017 = load i64, i64* %RBP.i, align 8
  %1018 = add i64 %1017, -24
  %1019 = load i64, i64* %3, align 8
  %1020 = add i64 %1019, 4
  store i64 %1020, i64* %3, align 8
  %1021 = inttoptr i64 %1018 to i64*
  %1022 = load i64, i64* %1021, align 8
  store i64 %1022, i64* %RCX.i1178, align 8
  %1023 = add i64 %1017, -40
  %1024 = add i64 %1019, 7
  store i64 %1024, i64* %3, align 8
  %1025 = inttoptr i64 %1023 to i32*
  %1026 = load i32, i32* %1025, align 4
  %1027 = add i32 %1026, 1
  %1028 = zext i32 %1027 to i64
  store i64 %1028, i64* %RAX.i1207, align 8
  %1029 = icmp eq i32 %1026, -1
  %1030 = icmp eq i32 %1027, 0
  %1031 = or i1 %1029, %1030
  %1032 = zext i1 %1031 to i8
  store i8 %1032, i8* %51, align 1
  %1033 = and i32 %1027, 255
  %1034 = tail call i32 @llvm.ctpop.i32(i32 %1033)
  %1035 = trunc i32 %1034 to i8
  %1036 = and i8 %1035, 1
  %1037 = xor i8 %1036, 1
  store i8 %1037, i8* %52, align 1
  %1038 = xor i32 %1027, %1026
  %1039 = lshr i32 %1038, 4
  %1040 = trunc i32 %1039 to i8
  %1041 = and i8 %1040, 1
  store i8 %1041, i8* %53, align 1
  %1042 = zext i1 %1030 to i8
  store i8 %1042, i8* %54, align 1
  %1043 = lshr i32 %1027, 31
  %1044 = trunc i32 %1043 to i8
  store i8 %1044, i8* %55, align 1
  %1045 = lshr i32 %1026, 31
  %1046 = xor i32 %1043, %1045
  %1047 = add nuw nsw i32 %1046, %1043
  %1048 = icmp eq i32 %1047, 2
  %1049 = zext i1 %1048 to i8
  store i8 %1049, i8* %56, align 1
  %1050 = sext i32 %1027 to i64
  store i64 %1050, i64* %RDX.i1221, align 8
  %1051 = shl nsw i64 %1050, 3
  %1052 = add i64 %1022, %1051
  %1053 = add i64 %1019, 18
  store i64 %1053, i64* %3, align 8
  %1054 = inttoptr i64 %1052 to i64*
  %1055 = load i64, i64* %1054, align 8
  store i64 %1055, i64* %386, align 1
  store double 0.000000e+00, double* %388, align 1
  %1056 = add i64 %1017, -88
  %1057 = add i64 %1019, 23
  store i64 %1057, i64* %3, align 8
  %1058 = inttoptr i64 %1056 to i64*
  store i64 %1055, i64* %1058, align 8
  %1059 = load i64, i64* %RBP.i, align 8
  %1060 = add i64 %1059, -80
  %1061 = load i64, i64* %3, align 8
  %1062 = add i64 %1061, 5
  store i64 %1062, i64* %3, align 8
  %1063 = inttoptr i64 %1060 to i64*
  %1064 = load i64, i64* %1063, align 8
  store i64 %1064, i64* %386, align 1
  store double 0.000000e+00, double* %388, align 1
  %1065 = add i64 %1059, -24
  %1066 = add i64 %1061, 9
  store i64 %1066, i64* %3, align 8
  %1067 = inttoptr i64 %1065 to i64*
  %1068 = load i64, i64* %1067, align 8
  store i64 %1068, i64* %RCX.i1178, align 8
  %1069 = add i64 %1059, -32
  %1070 = add i64 %1061, 13
  store i64 %1070, i64* %3, align 8
  %1071 = inttoptr i64 %1069 to i32*
  %1072 = load i32, i32* %1071, align 4
  %1073 = sext i32 %1072 to i64
  store i64 %1073, i64* %RDX.i1221, align 8
  %1074 = shl nsw i64 %1073, 3
  %1075 = add i64 %1074, %1068
  %1076 = add i64 %1061, 18
  store i64 %1076, i64* %3, align 8
  %1077 = inttoptr i64 %1075 to i64*
  store i64 %1064, i64* %1077, align 8
  %1078 = load i64, i64* %RBP.i, align 8
  %1079 = add i64 %1078, -88
  %1080 = load i64, i64* %3, align 8
  %1081 = add i64 %1080, 5
  store i64 %1081, i64* %3, align 8
  %1082 = inttoptr i64 %1079 to i64*
  %1083 = load i64, i64* %1082, align 8
  store i64 %1083, i64* %386, align 1
  store double 0.000000e+00, double* %388, align 1
  %1084 = add i64 %1078, -24
  %1085 = add i64 %1080, 9
  store i64 %1085, i64* %3, align 8
  %1086 = inttoptr i64 %1084 to i64*
  %1087 = load i64, i64* %1086, align 8
  store i64 %1087, i64* %RCX.i1178, align 8
  %1088 = add i64 %1078, -32
  %1089 = add i64 %1080, 12
  store i64 %1089, i64* %3, align 8
  %1090 = inttoptr i64 %1088 to i32*
  %1091 = load i32, i32* %1090, align 4
  %1092 = add i32 %1091, 1
  %1093 = zext i32 %1092 to i64
  store i64 %1093, i64* %RAX.i1207, align 8
  %1094 = icmp eq i32 %1091, -1
  %1095 = icmp eq i32 %1092, 0
  %1096 = or i1 %1094, %1095
  %1097 = zext i1 %1096 to i8
  store i8 %1097, i8* %51, align 1
  %1098 = and i32 %1092, 255
  %1099 = tail call i32 @llvm.ctpop.i32(i32 %1098)
  %1100 = trunc i32 %1099 to i8
  %1101 = and i8 %1100, 1
  %1102 = xor i8 %1101, 1
  store i8 %1102, i8* %52, align 1
  %1103 = xor i32 %1092, %1091
  %1104 = lshr i32 %1103, 4
  %1105 = trunc i32 %1104 to i8
  %1106 = and i8 %1105, 1
  store i8 %1106, i8* %53, align 1
  %1107 = zext i1 %1095 to i8
  store i8 %1107, i8* %54, align 1
  %1108 = lshr i32 %1092, 31
  %1109 = trunc i32 %1108 to i8
  store i8 %1109, i8* %55, align 1
  %1110 = lshr i32 %1091, 31
  %1111 = xor i32 %1108, %1110
  %1112 = add nuw nsw i32 %1111, %1108
  %1113 = icmp eq i32 %1112, 2
  %1114 = zext i1 %1113 to i8
  store i8 %1114, i8* %56, align 1
  %1115 = sext i32 %1092 to i64
  store i64 %1115, i64* %RDX.i1221, align 8
  %1116 = shl nsw i64 %1115, 3
  %1117 = add i64 %1087, %1116
  %1118 = add i64 %1080, 23
  store i64 %1118, i64* %3, align 8
  %1119 = inttoptr i64 %1117 to i64*
  store i64 %1083, i64* %1119, align 8
  %1120 = load i64, i64* %RBP.i, align 8
  %1121 = add i64 %1120, -64
  %1122 = load i64, i64* %3, align 8
  %1123 = add i64 %1122, 5
  store i64 %1123, i64* %3, align 8
  %1124 = inttoptr i64 %1121 to i64*
  %1125 = load i64, i64* %1124, align 8
  store i64 %1125, i64* %386, align 1
  store double 0.000000e+00, double* %388, align 1
  %1126 = add i64 %1120, -24
  %1127 = add i64 %1122, 9
  store i64 %1127, i64* %3, align 8
  %1128 = inttoptr i64 %1126 to i64*
  %1129 = load i64, i64* %1128, align 8
  store i64 %1129, i64* %RCX.i1178, align 8
  %1130 = add i64 %1120, -40
  %1131 = add i64 %1122, 13
  store i64 %1131, i64* %3, align 8
  %1132 = inttoptr i64 %1130 to i32*
  %1133 = load i32, i32* %1132, align 4
  %1134 = sext i32 %1133 to i64
  store i64 %1134, i64* %RDX.i1221, align 8
  %1135 = shl nsw i64 %1134, 3
  %1136 = add i64 %1135, %1129
  %1137 = add i64 %1122, 18
  store i64 %1137, i64* %3, align 8
  %1138 = inttoptr i64 %1136 to i64*
  store i64 %1125, i64* %1138, align 8
  %1139 = load i64, i64* %RBP.i, align 8
  %1140 = add i64 %1139, -72
  %1141 = load i64, i64* %3, align 8
  %1142 = add i64 %1141, 5
  store i64 %1142, i64* %3, align 8
  %1143 = inttoptr i64 %1140 to i64*
  %1144 = load i64, i64* %1143, align 8
  store i64 %1144, i64* %386, align 1
  store double 0.000000e+00, double* %388, align 1
  %1145 = add i64 %1139, -24
  %1146 = add i64 %1141, 9
  store i64 %1146, i64* %3, align 8
  %1147 = inttoptr i64 %1145 to i64*
  %1148 = load i64, i64* %1147, align 8
  store i64 %1148, i64* %RCX.i1178, align 8
  %1149 = add i64 %1139, -40
  %1150 = add i64 %1141, 12
  store i64 %1150, i64* %3, align 8
  %1151 = inttoptr i64 %1149 to i32*
  %1152 = load i32, i32* %1151, align 4
  %1153 = add i32 %1152, 1
  %1154 = zext i32 %1153 to i64
  store i64 %1154, i64* %RAX.i1207, align 8
  %1155 = icmp eq i32 %1152, -1
  %1156 = icmp eq i32 %1153, 0
  %1157 = or i1 %1155, %1156
  %1158 = zext i1 %1157 to i8
  store i8 %1158, i8* %51, align 1
  %1159 = and i32 %1153, 255
  %1160 = tail call i32 @llvm.ctpop.i32(i32 %1159)
  %1161 = trunc i32 %1160 to i8
  %1162 = and i8 %1161, 1
  %1163 = xor i8 %1162, 1
  store i8 %1163, i8* %52, align 1
  %1164 = xor i32 %1153, %1152
  %1165 = lshr i32 %1164, 4
  %1166 = trunc i32 %1165 to i8
  %1167 = and i8 %1166, 1
  store i8 %1167, i8* %53, align 1
  %1168 = zext i1 %1156 to i8
  store i8 %1168, i8* %54, align 1
  %1169 = lshr i32 %1153, 31
  %1170 = trunc i32 %1169 to i8
  store i8 %1170, i8* %55, align 1
  %1171 = lshr i32 %1152, 31
  %1172 = xor i32 %1169, %1171
  %1173 = add nuw nsw i32 %1172, %1169
  %1174 = icmp eq i32 %1173, 2
  %1175 = zext i1 %1174 to i8
  store i8 %1175, i8* %56, align 1
  %1176 = sext i32 %1153 to i64
  store i64 %1176, i64* %RDX.i1221, align 8
  %1177 = shl nsw i64 %1176, 3
  %1178 = add i64 %1148, %1177
  %1179 = add i64 %1141, 23
  store i64 %1179, i64* %3, align 8
  %1180 = inttoptr i64 %1178 to i64*
  store i64 %1144, i64* %1180, align 8
  %1181 = load i64, i64* %RBP.i, align 8
  %1182 = add i64 %1181, -52
  %1183 = load i64, i64* %3, align 8
  %1184 = add i64 %1183, 3
  store i64 %1184, i64* %3, align 8
  %1185 = inttoptr i64 %1182 to i32*
  %1186 = load i32, i32* %1185, align 4
  %1187 = zext i32 %1186 to i64
  store i64 %1187, i64* %RAX.i1207, align 8
  %1188 = add i64 %1181, -32
  %1189 = add i64 %1183, 6
  store i64 %1189, i64* %3, align 8
  %1190 = inttoptr i64 %1188 to i32*
  %1191 = load i32, i32* %1190, align 4
  %1192 = add i32 %1191, %1186
  %1193 = zext i32 %1192 to i64
  store i64 %1193, i64* %RAX.i1207, align 8
  %1194 = icmp ult i32 %1192, %1186
  %1195 = icmp ult i32 %1192, %1191
  %1196 = or i1 %1194, %1195
  %1197 = zext i1 %1196 to i8
  store i8 %1197, i8* %51, align 1
  %1198 = and i32 %1192, 255
  %1199 = tail call i32 @llvm.ctpop.i32(i32 %1198)
  %1200 = trunc i32 %1199 to i8
  %1201 = and i8 %1200, 1
  %1202 = xor i8 %1201, 1
  store i8 %1202, i8* %52, align 1
  %1203 = xor i32 %1191, %1186
  %1204 = xor i32 %1203, %1192
  %1205 = lshr i32 %1204, 4
  %1206 = trunc i32 %1205 to i8
  %1207 = and i8 %1206, 1
  store i8 %1207, i8* %53, align 1
  %1208 = icmp eq i32 %1192, 0
  %1209 = zext i1 %1208 to i8
  store i8 %1209, i8* %54, align 1
  %1210 = lshr i32 %1192, 31
  %1211 = trunc i32 %1210 to i8
  store i8 %1211, i8* %55, align 1
  %1212 = lshr i32 %1186, 31
  %1213 = lshr i32 %1191, 31
  %1214 = xor i32 %1210, %1212
  %1215 = xor i32 %1210, %1213
  %1216 = add nuw nsw i32 %1214, %1215
  %1217 = icmp eq i32 %1216, 2
  %1218 = zext i1 %1217 to i8
  store i8 %1218, i8* %56, align 1
  %1219 = add i64 %1183, 9
  store i64 %1219, i64* %3, align 8
  store i32 %1192, i32* %1190, align 4
  %1220 = load i64, i64* %RBP.i, align 8
  %1221 = add i64 %1220, -52
  %1222 = load i64, i64* %3, align 8
  %1223 = add i64 %1222, 3
  store i64 %1223, i64* %3, align 8
  %1224 = inttoptr i64 %1221 to i32*
  %1225 = load i32, i32* %1224, align 4
  %1226 = zext i32 %1225 to i64
  store i64 %1226, i64* %RAX.i1207, align 8
  %1227 = add i64 %1220, -40
  %1228 = add i64 %1222, 6
  store i64 %1228, i64* %3, align 8
  %1229 = inttoptr i64 %1227 to i32*
  %1230 = load i32, i32* %1229, align 4
  %1231 = sub i32 %1230, %1225
  %1232 = zext i32 %1231 to i64
  store i64 %1232, i64* %RSI.i1224, align 8
  %1233 = icmp ult i32 %1230, %1225
  %1234 = zext i1 %1233 to i8
  store i8 %1234, i8* %51, align 1
  %1235 = and i32 %1231, 255
  %1236 = tail call i32 @llvm.ctpop.i32(i32 %1235)
  %1237 = trunc i32 %1236 to i8
  %1238 = and i8 %1237, 1
  %1239 = xor i8 %1238, 1
  store i8 %1239, i8* %52, align 1
  %1240 = xor i32 %1225, %1230
  %1241 = xor i32 %1240, %1231
  %1242 = lshr i32 %1241, 4
  %1243 = trunc i32 %1242 to i8
  %1244 = and i8 %1243, 1
  store i8 %1244, i8* %53, align 1
  %1245 = icmp eq i32 %1231, 0
  %1246 = zext i1 %1245 to i8
  store i8 %1246, i8* %54, align 1
  %1247 = lshr i32 %1231, 31
  %1248 = trunc i32 %1247 to i8
  store i8 %1248, i8* %55, align 1
  %1249 = lshr i32 %1230, 31
  %1250 = lshr i32 %1225, 31
  %1251 = xor i32 %1250, %1249
  %1252 = xor i32 %1247, %1249
  %1253 = add nuw nsw i32 %1252, %1251
  %1254 = icmp eq i32 %1253, 2
  %1255 = zext i1 %1254 to i8
  store i8 %1255, i8* %56, align 1
  %1256 = add i64 %1222, 11
  store i64 %1256, i64* %3, align 8
  store i32 %1231, i32* %1229, align 4
  %1257 = load i64, i64* %RBP.i, align 8
  %1258 = add i64 %1257, -24
  %1259 = load i64, i64* %3, align 8
  %1260 = add i64 %1259, 4
  store i64 %1260, i64* %3, align 8
  %1261 = inttoptr i64 %1258 to i64*
  %1262 = load i64, i64* %1261, align 8
  store i64 %1262, i64* %RCX.i1178, align 8
  %1263 = add i64 %1257, -32
  %1264 = add i64 %1259, 8
  store i64 %1264, i64* %3, align 8
  %1265 = inttoptr i64 %1263 to i32*
  %1266 = load i32, i32* %1265, align 4
  %1267 = sext i32 %1266 to i64
  store i64 %1267, i64* %RDX.i1221, align 8
  %1268 = shl nsw i64 %1267, 3
  %1269 = add i64 %1268, %1262
  %1270 = add i64 %1259, 13
  store i64 %1270, i64* %3, align 8
  %1271 = inttoptr i64 %1269 to i64*
  %1272 = load i64, i64* %1271, align 8
  store i64 %1272, i64* %386, align 1
  store double 0.000000e+00, double* %388, align 1
  %1273 = add i64 %1257, -64
  %1274 = add i64 %1259, 18
  store i64 %1274, i64* %3, align 8
  %1275 = inttoptr i64 %1273 to i64*
  store i64 %1272, i64* %1275, align 8
  %1276 = load i64, i64* %RBP.i, align 8
  %1277 = add i64 %1276, -24
  %1278 = load i64, i64* %3, align 8
  %1279 = add i64 %1278, 4
  store i64 %1279, i64* %3, align 8
  %1280 = inttoptr i64 %1277 to i64*
  %1281 = load i64, i64* %1280, align 8
  store i64 %1281, i64* %RCX.i1178, align 8
  %1282 = add i64 %1276, -32
  %1283 = add i64 %1278, 7
  store i64 %1283, i64* %3, align 8
  %1284 = inttoptr i64 %1282 to i32*
  %1285 = load i32, i32* %1284, align 4
  %1286 = add i32 %1285, 1
  %1287 = zext i32 %1286 to i64
  store i64 %1287, i64* %RAX.i1207, align 8
  %1288 = icmp eq i32 %1285, -1
  %1289 = icmp eq i32 %1286, 0
  %1290 = or i1 %1288, %1289
  %1291 = zext i1 %1290 to i8
  store i8 %1291, i8* %51, align 1
  %1292 = and i32 %1286, 255
  %1293 = tail call i32 @llvm.ctpop.i32(i32 %1292)
  %1294 = trunc i32 %1293 to i8
  %1295 = and i8 %1294, 1
  %1296 = xor i8 %1295, 1
  store i8 %1296, i8* %52, align 1
  %1297 = xor i32 %1286, %1285
  %1298 = lshr i32 %1297, 4
  %1299 = trunc i32 %1298 to i8
  %1300 = and i8 %1299, 1
  store i8 %1300, i8* %53, align 1
  %1301 = zext i1 %1289 to i8
  store i8 %1301, i8* %54, align 1
  %1302 = lshr i32 %1286, 31
  %1303 = trunc i32 %1302 to i8
  store i8 %1303, i8* %55, align 1
  %1304 = lshr i32 %1285, 31
  %1305 = xor i32 %1302, %1304
  %1306 = add nuw nsw i32 %1305, %1302
  %1307 = icmp eq i32 %1306, 2
  %1308 = zext i1 %1307 to i8
  store i8 %1308, i8* %56, align 1
  %1309 = sext i32 %1286 to i64
  store i64 %1309, i64* %RDX.i1221, align 8
  %1310 = shl nsw i64 %1309, 3
  %1311 = add i64 %1281, %1310
  %1312 = add i64 %1278, 18
  store i64 %1312, i64* %3, align 8
  %1313 = inttoptr i64 %1311 to i64*
  %1314 = load i64, i64* %1313, align 8
  store i64 %1314, i64* %386, align 1
  store double 0.000000e+00, double* %388, align 1
  %1315 = add i64 %1276, -72
  %1316 = add i64 %1278, 23
  store i64 %1316, i64* %3, align 8
  %1317 = inttoptr i64 %1315 to i64*
  store i64 %1314, i64* %1317, align 8
  %1318 = load i64, i64* %RBP.i, align 8
  %1319 = add i64 %1318, -24
  %1320 = load i64, i64* %3, align 8
  %1321 = add i64 %1320, 4
  store i64 %1321, i64* %3, align 8
  %1322 = inttoptr i64 %1319 to i64*
  %1323 = load i64, i64* %1322, align 8
  store i64 %1323, i64* %RCX.i1178, align 8
  %1324 = add i64 %1318, -40
  %1325 = add i64 %1320, 8
  store i64 %1325, i64* %3, align 8
  %1326 = inttoptr i64 %1324 to i32*
  %1327 = load i32, i32* %1326, align 4
  %1328 = sext i32 %1327 to i64
  store i64 %1328, i64* %RDX.i1221, align 8
  %1329 = shl nsw i64 %1328, 3
  %1330 = add i64 %1329, %1323
  %1331 = add i64 %1320, 13
  store i64 %1331, i64* %3, align 8
  %1332 = inttoptr i64 %1330 to i64*
  %1333 = load i64, i64* %1332, align 8
  store i64 %1333, i64* %386, align 1
  store double 0.000000e+00, double* %388, align 1
  %1334 = add i64 %1318, -80
  %1335 = add i64 %1320, 18
  store i64 %1335, i64* %3, align 8
  %1336 = inttoptr i64 %1334 to i64*
  store i64 %1333, i64* %1336, align 8
  %1337 = load i64, i64* %RBP.i, align 8
  %1338 = add i64 %1337, -24
  %1339 = load i64, i64* %3, align 8
  %1340 = add i64 %1339, 4
  store i64 %1340, i64* %3, align 8
  %1341 = inttoptr i64 %1338 to i64*
  %1342 = load i64, i64* %1341, align 8
  store i64 %1342, i64* %RCX.i1178, align 8
  %1343 = add i64 %1337, -40
  %1344 = add i64 %1339, 7
  store i64 %1344, i64* %3, align 8
  %1345 = inttoptr i64 %1343 to i32*
  %1346 = load i32, i32* %1345, align 4
  %1347 = add i32 %1346, 1
  %1348 = zext i32 %1347 to i64
  store i64 %1348, i64* %RAX.i1207, align 8
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
  %1358 = xor i32 %1347, %1346
  %1359 = lshr i32 %1358, 4
  %1360 = trunc i32 %1359 to i8
  %1361 = and i8 %1360, 1
  store i8 %1361, i8* %53, align 1
  %1362 = zext i1 %1350 to i8
  store i8 %1362, i8* %54, align 1
  %1363 = lshr i32 %1347, 31
  %1364 = trunc i32 %1363 to i8
  store i8 %1364, i8* %55, align 1
  %1365 = lshr i32 %1346, 31
  %1366 = xor i32 %1363, %1365
  %1367 = add nuw nsw i32 %1366, %1363
  %1368 = icmp eq i32 %1367, 2
  %1369 = zext i1 %1368 to i8
  store i8 %1369, i8* %56, align 1
  %1370 = sext i32 %1347 to i64
  store i64 %1370, i64* %RDX.i1221, align 8
  %1371 = shl nsw i64 %1370, 3
  %1372 = add i64 %1342, %1371
  %1373 = add i64 %1339, 18
  store i64 %1373, i64* %3, align 8
  %1374 = inttoptr i64 %1372 to i64*
  %1375 = load i64, i64* %1374, align 8
  store i64 %1375, i64* %386, align 1
  store double 0.000000e+00, double* %388, align 1
  %1376 = add i64 %1337, -88
  %1377 = add i64 %1339, 23
  store i64 %1377, i64* %3, align 8
  %1378 = inttoptr i64 %1376 to i64*
  store i64 %1375, i64* %1378, align 8
  %1379 = load i64, i64* %RBP.i, align 8
  %1380 = add i64 %1379, -80
  %1381 = load i64, i64* %3, align 8
  %1382 = add i64 %1381, 5
  store i64 %1382, i64* %3, align 8
  %1383 = inttoptr i64 %1380 to i64*
  %1384 = load i64, i64* %1383, align 8
  store i64 %1384, i64* %386, align 1
  store double 0.000000e+00, double* %388, align 1
  %1385 = add i64 %1379, -24
  %1386 = add i64 %1381, 9
  store i64 %1386, i64* %3, align 8
  %1387 = inttoptr i64 %1385 to i64*
  %1388 = load i64, i64* %1387, align 8
  store i64 %1388, i64* %RCX.i1178, align 8
  %1389 = add i64 %1379, -32
  %1390 = add i64 %1381, 13
  store i64 %1390, i64* %3, align 8
  %1391 = inttoptr i64 %1389 to i32*
  %1392 = load i32, i32* %1391, align 4
  %1393 = sext i32 %1392 to i64
  store i64 %1393, i64* %RDX.i1221, align 8
  %1394 = shl nsw i64 %1393, 3
  %1395 = add i64 %1394, %1388
  %1396 = add i64 %1381, 18
  store i64 %1396, i64* %3, align 8
  %1397 = inttoptr i64 %1395 to i64*
  store i64 %1384, i64* %1397, align 8
  %1398 = load i64, i64* %RBP.i, align 8
  %1399 = add i64 %1398, -88
  %1400 = load i64, i64* %3, align 8
  %1401 = add i64 %1400, 5
  store i64 %1401, i64* %3, align 8
  %1402 = inttoptr i64 %1399 to i64*
  %1403 = load i64, i64* %1402, align 8
  store i64 %1403, i64* %386, align 1
  store double 0.000000e+00, double* %388, align 1
  %1404 = add i64 %1398, -24
  %1405 = add i64 %1400, 9
  store i64 %1405, i64* %3, align 8
  %1406 = inttoptr i64 %1404 to i64*
  %1407 = load i64, i64* %1406, align 8
  store i64 %1407, i64* %RCX.i1178, align 8
  %1408 = add i64 %1398, -32
  %1409 = add i64 %1400, 12
  store i64 %1409, i64* %3, align 8
  %1410 = inttoptr i64 %1408 to i32*
  %1411 = load i32, i32* %1410, align 4
  %1412 = add i32 %1411, 1
  %1413 = zext i32 %1412 to i64
  store i64 %1413, i64* %RAX.i1207, align 8
  %1414 = icmp eq i32 %1411, -1
  %1415 = icmp eq i32 %1412, 0
  %1416 = or i1 %1414, %1415
  %1417 = zext i1 %1416 to i8
  store i8 %1417, i8* %51, align 1
  %1418 = and i32 %1412, 255
  %1419 = tail call i32 @llvm.ctpop.i32(i32 %1418)
  %1420 = trunc i32 %1419 to i8
  %1421 = and i8 %1420, 1
  %1422 = xor i8 %1421, 1
  store i8 %1422, i8* %52, align 1
  %1423 = xor i32 %1412, %1411
  %1424 = lshr i32 %1423, 4
  %1425 = trunc i32 %1424 to i8
  %1426 = and i8 %1425, 1
  store i8 %1426, i8* %53, align 1
  %1427 = zext i1 %1415 to i8
  store i8 %1427, i8* %54, align 1
  %1428 = lshr i32 %1412, 31
  %1429 = trunc i32 %1428 to i8
  store i8 %1429, i8* %55, align 1
  %1430 = lshr i32 %1411, 31
  %1431 = xor i32 %1428, %1430
  %1432 = add nuw nsw i32 %1431, %1428
  %1433 = icmp eq i32 %1432, 2
  %1434 = zext i1 %1433 to i8
  store i8 %1434, i8* %56, align 1
  %1435 = sext i32 %1412 to i64
  store i64 %1435, i64* %RDX.i1221, align 8
  %1436 = shl nsw i64 %1435, 3
  %1437 = add i64 %1407, %1436
  %1438 = add i64 %1400, 23
  store i64 %1438, i64* %3, align 8
  %1439 = inttoptr i64 %1437 to i64*
  store i64 %1403, i64* %1439, align 8
  %1440 = load i64, i64* %RBP.i, align 8
  %1441 = add i64 %1440, -64
  %1442 = load i64, i64* %3, align 8
  %1443 = add i64 %1442, 5
  store i64 %1443, i64* %3, align 8
  %1444 = inttoptr i64 %1441 to i64*
  %1445 = load i64, i64* %1444, align 8
  store i64 %1445, i64* %386, align 1
  store double 0.000000e+00, double* %388, align 1
  %1446 = add i64 %1440, -24
  %1447 = add i64 %1442, 9
  store i64 %1447, i64* %3, align 8
  %1448 = inttoptr i64 %1446 to i64*
  %1449 = load i64, i64* %1448, align 8
  store i64 %1449, i64* %RCX.i1178, align 8
  %1450 = add i64 %1440, -40
  %1451 = add i64 %1442, 13
  store i64 %1451, i64* %3, align 8
  %1452 = inttoptr i64 %1450 to i32*
  %1453 = load i32, i32* %1452, align 4
  %1454 = sext i32 %1453 to i64
  store i64 %1454, i64* %RDX.i1221, align 8
  %1455 = shl nsw i64 %1454, 3
  %1456 = add i64 %1455, %1449
  %1457 = add i64 %1442, 18
  store i64 %1457, i64* %3, align 8
  %1458 = inttoptr i64 %1456 to i64*
  store i64 %1445, i64* %1458, align 8
  %1459 = load i64, i64* %RBP.i, align 8
  %1460 = add i64 %1459, -72
  %1461 = load i64, i64* %3, align 8
  %1462 = add i64 %1461, 5
  store i64 %1462, i64* %3, align 8
  %1463 = inttoptr i64 %1460 to i64*
  %1464 = load i64, i64* %1463, align 8
  store i64 %1464, i64* %386, align 1
  store double 0.000000e+00, double* %388, align 1
  %1465 = add i64 %1459, -24
  %1466 = add i64 %1461, 9
  store i64 %1466, i64* %3, align 8
  %1467 = inttoptr i64 %1465 to i64*
  %1468 = load i64, i64* %1467, align 8
  store i64 %1468, i64* %RCX.i1178, align 8
  %1469 = add i64 %1459, -40
  %1470 = add i64 %1461, 12
  store i64 %1470, i64* %3, align 8
  %1471 = inttoptr i64 %1469 to i32*
  %1472 = load i32, i32* %1471, align 4
  %1473 = add i32 %1472, 1
  %1474 = zext i32 %1473 to i64
  store i64 %1474, i64* %RAX.i1207, align 8
  %1475 = icmp eq i32 %1472, -1
  %1476 = icmp eq i32 %1473, 0
  %1477 = or i1 %1475, %1476
  %1478 = zext i1 %1477 to i8
  store i8 %1478, i8* %51, align 1
  %1479 = and i32 %1473, 255
  %1480 = tail call i32 @llvm.ctpop.i32(i32 %1479)
  %1481 = trunc i32 %1480 to i8
  %1482 = and i8 %1481, 1
  %1483 = xor i8 %1482, 1
  store i8 %1483, i8* %52, align 1
  %1484 = xor i32 %1473, %1472
  %1485 = lshr i32 %1484, 4
  %1486 = trunc i32 %1485 to i8
  %1487 = and i8 %1486, 1
  store i8 %1487, i8* %53, align 1
  %1488 = zext i1 %1476 to i8
  store i8 %1488, i8* %54, align 1
  %1489 = lshr i32 %1473, 31
  %1490 = trunc i32 %1489 to i8
  store i8 %1490, i8* %55, align 1
  %1491 = lshr i32 %1472, 31
  %1492 = xor i32 %1489, %1491
  %1493 = add nuw nsw i32 %1492, %1489
  %1494 = icmp eq i32 %1493, 2
  %1495 = zext i1 %1494 to i8
  store i8 %1495, i8* %56, align 1
  %1496 = sext i32 %1473 to i64
  store i64 %1496, i64* %RDX.i1221, align 8
  %1497 = shl nsw i64 %1496, 3
  %1498 = add i64 %1468, %1497
  %1499 = add i64 %1461, 23
  store i64 %1499, i64* %3, align 8
  %1500 = inttoptr i64 %1498 to i64*
  store i64 %1464, i64* %1500, align 8
  %1501 = load i64, i64* %RBP.i, align 8
  %1502 = add i64 %1501, -52
  %1503 = load i64, i64* %3, align 8
  %1504 = add i64 %1503, 3
  store i64 %1504, i64* %3, align 8
  %1505 = inttoptr i64 %1502 to i32*
  %1506 = load i32, i32* %1505, align 4
  %1507 = zext i32 %1506 to i64
  store i64 %1507, i64* %RAX.i1207, align 8
  %1508 = add i64 %1501, -32
  %1509 = add i64 %1503, 6
  store i64 %1509, i64* %3, align 8
  %1510 = inttoptr i64 %1508 to i32*
  %1511 = load i32, i32* %1510, align 4
  %1512 = add i32 %1511, %1506
  %1513 = zext i32 %1512 to i64
  store i64 %1513, i64* %RAX.i1207, align 8
  %1514 = icmp ult i32 %1512, %1506
  %1515 = icmp ult i32 %1512, %1511
  %1516 = or i1 %1514, %1515
  %1517 = zext i1 %1516 to i8
  store i8 %1517, i8* %51, align 1
  %1518 = and i32 %1512, 255
  %1519 = tail call i32 @llvm.ctpop.i32(i32 %1518)
  %1520 = trunc i32 %1519 to i8
  %1521 = and i8 %1520, 1
  %1522 = xor i8 %1521, 1
  store i8 %1522, i8* %52, align 1
  %1523 = xor i32 %1511, %1506
  %1524 = xor i32 %1523, %1512
  %1525 = lshr i32 %1524, 4
  %1526 = trunc i32 %1525 to i8
  %1527 = and i8 %1526, 1
  store i8 %1527, i8* %53, align 1
  %1528 = icmp eq i32 %1512, 0
  %1529 = zext i1 %1528 to i8
  store i8 %1529, i8* %54, align 1
  %1530 = lshr i32 %1512, 31
  %1531 = trunc i32 %1530 to i8
  store i8 %1531, i8* %55, align 1
  %1532 = lshr i32 %1506, 31
  %1533 = lshr i32 %1511, 31
  %1534 = xor i32 %1530, %1532
  %1535 = xor i32 %1530, %1533
  %1536 = add nuw nsw i32 %1534, %1535
  %1537 = icmp eq i32 %1536, 2
  %1538 = zext i1 %1537 to i8
  store i8 %1538, i8* %56, align 1
  %1539 = add i64 %1503, 9
  store i64 %1539, i64* %3, align 8
  store i32 %1512, i32* %1510, align 4
  %1540 = load i64, i64* %RBP.i, align 8
  %1541 = add i64 %1540, -52
  %1542 = load i64, i64* %3, align 8
  %1543 = add i64 %1542, 3
  store i64 %1543, i64* %3, align 8
  %1544 = inttoptr i64 %1541 to i32*
  %1545 = load i32, i32* %1544, align 4
  %1546 = shl i32 %1545, 1
  %1547 = icmp slt i32 %1545, 0
  %1548 = icmp slt i32 %1546, 0
  %1549 = xor i1 %1547, %1548
  %1550 = zext i32 %1546 to i64
  store i64 %1550, i64* %RAX.i1207, align 8
  %.lobit12 = lshr i32 %1545, 31
  %1551 = trunc i32 %.lobit12 to i8
  store i8 %1551, i8* %51, align 1
  %1552 = and i32 %1546, 254
  %1553 = tail call i32 @llvm.ctpop.i32(i32 %1552)
  %1554 = trunc i32 %1553 to i8
  %1555 = and i8 %1554, 1
  %1556 = xor i8 %1555, 1
  store i8 %1556, i8* %52, align 1
  store i8 0, i8* %53, align 1
  %1557 = icmp eq i32 %1546, 0
  %1558 = zext i1 %1557 to i8
  store i8 %1558, i8* %54, align 1
  %1559 = lshr i32 %1545, 30
  %1560 = trunc i32 %1559 to i8
  %1561 = and i8 %1560, 1
  store i8 %1561, i8* %55, align 1
  %1562 = zext i1 %1549 to i8
  store i8 %1562, i8* %56, align 1
  %1563 = add i64 %1540, -40
  %1564 = add i64 %1542, 8
  store i64 %1564, i64* %3, align 8
  %1565 = inttoptr i64 %1563 to i32*
  %1566 = load i32, i32* %1565, align 4
  %1567 = add i32 %1566, %1546
  %1568 = zext i32 %1567 to i64
  store i64 %1568, i64* %RAX.i1207, align 8
  %1569 = icmp ult i32 %1567, %1546
  %1570 = icmp ult i32 %1567, %1566
  %1571 = or i1 %1569, %1570
  %1572 = zext i1 %1571 to i8
  store i8 %1572, i8* %51, align 1
  %1573 = and i32 %1567, 255
  %1574 = tail call i32 @llvm.ctpop.i32(i32 %1573)
  %1575 = trunc i32 %1574 to i8
  %1576 = and i8 %1575, 1
  %1577 = xor i8 %1576, 1
  store i8 %1577, i8* %52, align 1
  %1578 = xor i32 %1566, %1546
  %1579 = xor i32 %1578, %1567
  %1580 = lshr i32 %1579, 4
  %1581 = trunc i32 %1580 to i8
  %1582 = and i8 %1581, 1
  store i8 %1582, i8* %53, align 1
  %1583 = icmp eq i32 %1567, 0
  %1584 = zext i1 %1583 to i8
  store i8 %1584, i8* %54, align 1
  %1585 = lshr i32 %1567, 31
  %1586 = trunc i32 %1585 to i8
  store i8 %1586, i8* %55, align 1
  %1587 = lshr i32 %1545, 30
  %1588 = and i32 %1587, 1
  %1589 = lshr i32 %1566, 31
  %1590 = xor i32 %1585, %1588
  %1591 = xor i32 %1585, %1589
  %1592 = add nuw nsw i32 %1590, %1591
  %1593 = icmp eq i32 %1592, 2
  %1594 = zext i1 %1593 to i8
  store i8 %1594, i8* %56, align 1
  %1595 = add i64 %1542, 11
  store i64 %1595, i64* %3, align 8
  store i32 %1567, i32* %1565, align 4
  %1596 = load i64, i64* %RBP.i, align 8
  %1597 = add i64 %1596, -24
  %1598 = load i64, i64* %3, align 8
  %1599 = add i64 %1598, 4
  store i64 %1599, i64* %3, align 8
  %1600 = inttoptr i64 %1597 to i64*
  %1601 = load i64, i64* %1600, align 8
  store i64 %1601, i64* %RCX.i1178, align 8
  %1602 = add i64 %1596, -32
  %1603 = add i64 %1598, 8
  store i64 %1603, i64* %3, align 8
  %1604 = inttoptr i64 %1602 to i32*
  %1605 = load i32, i32* %1604, align 4
  %1606 = sext i32 %1605 to i64
  store i64 %1606, i64* %RDX.i1221, align 8
  %1607 = shl nsw i64 %1606, 3
  %1608 = add i64 %1607, %1601
  %1609 = add i64 %1598, 13
  store i64 %1609, i64* %3, align 8
  %1610 = inttoptr i64 %1608 to i64*
  %1611 = load i64, i64* %1610, align 8
  store i64 %1611, i64* %386, align 1
  store double 0.000000e+00, double* %388, align 1
  %1612 = add i64 %1596, -64
  %1613 = add i64 %1598, 18
  store i64 %1613, i64* %3, align 8
  %1614 = inttoptr i64 %1612 to i64*
  store i64 %1611, i64* %1614, align 8
  %1615 = load i64, i64* %RBP.i, align 8
  %1616 = add i64 %1615, -24
  %1617 = load i64, i64* %3, align 8
  %1618 = add i64 %1617, 4
  store i64 %1618, i64* %3, align 8
  %1619 = inttoptr i64 %1616 to i64*
  %1620 = load i64, i64* %1619, align 8
  store i64 %1620, i64* %RCX.i1178, align 8
  %1621 = add i64 %1615, -32
  %1622 = add i64 %1617, 7
  store i64 %1622, i64* %3, align 8
  %1623 = inttoptr i64 %1621 to i32*
  %1624 = load i32, i32* %1623, align 4
  %1625 = add i32 %1624, 1
  %1626 = zext i32 %1625 to i64
  store i64 %1626, i64* %RAX.i1207, align 8
  %1627 = icmp eq i32 %1624, -1
  %1628 = icmp eq i32 %1625, 0
  %1629 = or i1 %1627, %1628
  %1630 = zext i1 %1629 to i8
  store i8 %1630, i8* %51, align 1
  %1631 = and i32 %1625, 255
  %1632 = tail call i32 @llvm.ctpop.i32(i32 %1631)
  %1633 = trunc i32 %1632 to i8
  %1634 = and i8 %1633, 1
  %1635 = xor i8 %1634, 1
  store i8 %1635, i8* %52, align 1
  %1636 = xor i32 %1625, %1624
  %1637 = lshr i32 %1636, 4
  %1638 = trunc i32 %1637 to i8
  %1639 = and i8 %1638, 1
  store i8 %1639, i8* %53, align 1
  %1640 = zext i1 %1628 to i8
  store i8 %1640, i8* %54, align 1
  %1641 = lshr i32 %1625, 31
  %1642 = trunc i32 %1641 to i8
  store i8 %1642, i8* %55, align 1
  %1643 = lshr i32 %1624, 31
  %1644 = xor i32 %1641, %1643
  %1645 = add nuw nsw i32 %1644, %1641
  %1646 = icmp eq i32 %1645, 2
  %1647 = zext i1 %1646 to i8
  store i8 %1647, i8* %56, align 1
  %1648 = sext i32 %1625 to i64
  store i64 %1648, i64* %RDX.i1221, align 8
  %1649 = shl nsw i64 %1648, 3
  %1650 = add i64 %1620, %1649
  %1651 = add i64 %1617, 18
  store i64 %1651, i64* %3, align 8
  %1652 = inttoptr i64 %1650 to i64*
  %1653 = load i64, i64* %1652, align 8
  store i64 %1653, i64* %386, align 1
  store double 0.000000e+00, double* %388, align 1
  %1654 = add i64 %1615, -72
  %1655 = add i64 %1617, 23
  store i64 %1655, i64* %3, align 8
  %1656 = inttoptr i64 %1654 to i64*
  store i64 %1653, i64* %1656, align 8
  %1657 = load i64, i64* %RBP.i, align 8
  %1658 = add i64 %1657, -24
  %1659 = load i64, i64* %3, align 8
  %1660 = add i64 %1659, 4
  store i64 %1660, i64* %3, align 8
  %1661 = inttoptr i64 %1658 to i64*
  %1662 = load i64, i64* %1661, align 8
  store i64 %1662, i64* %RCX.i1178, align 8
  %1663 = add i64 %1657, -40
  %1664 = add i64 %1659, 8
  store i64 %1664, i64* %3, align 8
  %1665 = inttoptr i64 %1663 to i32*
  %1666 = load i32, i32* %1665, align 4
  %1667 = sext i32 %1666 to i64
  store i64 %1667, i64* %RDX.i1221, align 8
  %1668 = shl nsw i64 %1667, 3
  %1669 = add i64 %1668, %1662
  %1670 = add i64 %1659, 13
  store i64 %1670, i64* %3, align 8
  %1671 = inttoptr i64 %1669 to i64*
  %1672 = load i64, i64* %1671, align 8
  store i64 %1672, i64* %386, align 1
  store double 0.000000e+00, double* %388, align 1
  %1673 = add i64 %1657, -80
  %1674 = add i64 %1659, 18
  store i64 %1674, i64* %3, align 8
  %1675 = inttoptr i64 %1673 to i64*
  store i64 %1672, i64* %1675, align 8
  %1676 = load i64, i64* %RBP.i, align 8
  %1677 = add i64 %1676, -24
  %1678 = load i64, i64* %3, align 8
  %1679 = add i64 %1678, 4
  store i64 %1679, i64* %3, align 8
  %1680 = inttoptr i64 %1677 to i64*
  %1681 = load i64, i64* %1680, align 8
  store i64 %1681, i64* %RCX.i1178, align 8
  %1682 = add i64 %1676, -40
  %1683 = add i64 %1678, 7
  store i64 %1683, i64* %3, align 8
  %1684 = inttoptr i64 %1682 to i32*
  %1685 = load i32, i32* %1684, align 4
  %1686 = add i32 %1685, 1
  %1687 = zext i32 %1686 to i64
  store i64 %1687, i64* %RAX.i1207, align 8
  %1688 = icmp eq i32 %1685, -1
  %1689 = icmp eq i32 %1686, 0
  %1690 = or i1 %1688, %1689
  %1691 = zext i1 %1690 to i8
  store i8 %1691, i8* %51, align 1
  %1692 = and i32 %1686, 255
  %1693 = tail call i32 @llvm.ctpop.i32(i32 %1692)
  %1694 = trunc i32 %1693 to i8
  %1695 = and i8 %1694, 1
  %1696 = xor i8 %1695, 1
  store i8 %1696, i8* %52, align 1
  %1697 = xor i32 %1686, %1685
  %1698 = lshr i32 %1697, 4
  %1699 = trunc i32 %1698 to i8
  %1700 = and i8 %1699, 1
  store i8 %1700, i8* %53, align 1
  %1701 = zext i1 %1689 to i8
  store i8 %1701, i8* %54, align 1
  %1702 = lshr i32 %1686, 31
  %1703 = trunc i32 %1702 to i8
  store i8 %1703, i8* %55, align 1
  %1704 = lshr i32 %1685, 31
  %1705 = xor i32 %1702, %1704
  %1706 = add nuw nsw i32 %1705, %1702
  %1707 = icmp eq i32 %1706, 2
  %1708 = zext i1 %1707 to i8
  store i8 %1708, i8* %56, align 1
  %1709 = sext i32 %1686 to i64
  store i64 %1709, i64* %RDX.i1221, align 8
  %1710 = shl nsw i64 %1709, 3
  %1711 = add i64 %1681, %1710
  %1712 = add i64 %1678, 18
  store i64 %1712, i64* %3, align 8
  %1713 = inttoptr i64 %1711 to i64*
  %1714 = load i64, i64* %1713, align 8
  store i64 %1714, i64* %386, align 1
  store double 0.000000e+00, double* %388, align 1
  %1715 = add i64 %1676, -88
  %1716 = add i64 %1678, 23
  store i64 %1716, i64* %3, align 8
  %1717 = inttoptr i64 %1715 to i64*
  store i64 %1714, i64* %1717, align 8
  %1718 = load i64, i64* %RBP.i, align 8
  %1719 = add i64 %1718, -80
  %1720 = load i64, i64* %3, align 8
  %1721 = add i64 %1720, 5
  store i64 %1721, i64* %3, align 8
  %1722 = inttoptr i64 %1719 to i64*
  %1723 = load i64, i64* %1722, align 8
  store i64 %1723, i64* %386, align 1
  store double 0.000000e+00, double* %388, align 1
  %1724 = add i64 %1718, -24
  %1725 = add i64 %1720, 9
  store i64 %1725, i64* %3, align 8
  %1726 = inttoptr i64 %1724 to i64*
  %1727 = load i64, i64* %1726, align 8
  store i64 %1727, i64* %RCX.i1178, align 8
  %1728 = add i64 %1718, -32
  %1729 = add i64 %1720, 13
  store i64 %1729, i64* %3, align 8
  %1730 = inttoptr i64 %1728 to i32*
  %1731 = load i32, i32* %1730, align 4
  %1732 = sext i32 %1731 to i64
  store i64 %1732, i64* %RDX.i1221, align 8
  %1733 = shl nsw i64 %1732, 3
  %1734 = add i64 %1733, %1727
  %1735 = add i64 %1720, 18
  store i64 %1735, i64* %3, align 8
  %1736 = inttoptr i64 %1734 to i64*
  store i64 %1723, i64* %1736, align 8
  %1737 = load i64, i64* %RBP.i, align 8
  %1738 = add i64 %1737, -88
  %1739 = load i64, i64* %3, align 8
  %1740 = add i64 %1739, 5
  store i64 %1740, i64* %3, align 8
  %1741 = inttoptr i64 %1738 to i64*
  %1742 = load i64, i64* %1741, align 8
  store i64 %1742, i64* %386, align 1
  store double 0.000000e+00, double* %388, align 1
  %1743 = add i64 %1737, -24
  %1744 = add i64 %1739, 9
  store i64 %1744, i64* %3, align 8
  %1745 = inttoptr i64 %1743 to i64*
  %1746 = load i64, i64* %1745, align 8
  store i64 %1746, i64* %RCX.i1178, align 8
  %1747 = add i64 %1737, -32
  %1748 = add i64 %1739, 12
  store i64 %1748, i64* %3, align 8
  %1749 = inttoptr i64 %1747 to i32*
  %1750 = load i32, i32* %1749, align 4
  %1751 = add i32 %1750, 1
  %1752 = zext i32 %1751 to i64
  store i64 %1752, i64* %RAX.i1207, align 8
  %1753 = icmp eq i32 %1750, -1
  %1754 = icmp eq i32 %1751, 0
  %1755 = or i1 %1753, %1754
  %1756 = zext i1 %1755 to i8
  store i8 %1756, i8* %51, align 1
  %1757 = and i32 %1751, 255
  %1758 = tail call i32 @llvm.ctpop.i32(i32 %1757)
  %1759 = trunc i32 %1758 to i8
  %1760 = and i8 %1759, 1
  %1761 = xor i8 %1760, 1
  store i8 %1761, i8* %52, align 1
  %1762 = xor i32 %1751, %1750
  %1763 = lshr i32 %1762, 4
  %1764 = trunc i32 %1763 to i8
  %1765 = and i8 %1764, 1
  store i8 %1765, i8* %53, align 1
  %1766 = zext i1 %1754 to i8
  store i8 %1766, i8* %54, align 1
  %1767 = lshr i32 %1751, 31
  %1768 = trunc i32 %1767 to i8
  store i8 %1768, i8* %55, align 1
  %1769 = lshr i32 %1750, 31
  %1770 = xor i32 %1767, %1769
  %1771 = add nuw nsw i32 %1770, %1767
  %1772 = icmp eq i32 %1771, 2
  %1773 = zext i1 %1772 to i8
  store i8 %1773, i8* %56, align 1
  %1774 = sext i32 %1751 to i64
  store i64 %1774, i64* %RDX.i1221, align 8
  %1775 = shl nsw i64 %1774, 3
  %1776 = add i64 %1746, %1775
  %1777 = add i64 %1739, 23
  store i64 %1777, i64* %3, align 8
  %1778 = inttoptr i64 %1776 to i64*
  store i64 %1742, i64* %1778, align 8
  %1779 = load i64, i64* %RBP.i, align 8
  %1780 = add i64 %1779, -64
  %1781 = load i64, i64* %3, align 8
  %1782 = add i64 %1781, 5
  store i64 %1782, i64* %3, align 8
  %1783 = inttoptr i64 %1780 to i64*
  %1784 = load i64, i64* %1783, align 8
  store i64 %1784, i64* %386, align 1
  store double 0.000000e+00, double* %388, align 1
  %1785 = add i64 %1779, -24
  %1786 = add i64 %1781, 9
  store i64 %1786, i64* %3, align 8
  %1787 = inttoptr i64 %1785 to i64*
  %1788 = load i64, i64* %1787, align 8
  store i64 %1788, i64* %RCX.i1178, align 8
  %1789 = add i64 %1779, -40
  %1790 = add i64 %1781, 13
  store i64 %1790, i64* %3, align 8
  %1791 = inttoptr i64 %1789 to i32*
  %1792 = load i32, i32* %1791, align 4
  %1793 = sext i32 %1792 to i64
  store i64 %1793, i64* %RDX.i1221, align 8
  %1794 = shl nsw i64 %1793, 3
  %1795 = add i64 %1794, %1788
  %1796 = add i64 %1781, 18
  store i64 %1796, i64* %3, align 8
  %1797 = inttoptr i64 %1795 to i64*
  store i64 %1784, i64* %1797, align 8
  %1798 = load i64, i64* %RBP.i, align 8
  %1799 = add i64 %1798, -72
  %1800 = load i64, i64* %3, align 8
  %1801 = add i64 %1800, 5
  store i64 %1801, i64* %3, align 8
  %1802 = inttoptr i64 %1799 to i64*
  %1803 = load i64, i64* %1802, align 8
  store i64 %1803, i64* %386, align 1
  store double 0.000000e+00, double* %388, align 1
  %1804 = add i64 %1798, -24
  %1805 = add i64 %1800, 9
  store i64 %1805, i64* %3, align 8
  %1806 = inttoptr i64 %1804 to i64*
  %1807 = load i64, i64* %1806, align 8
  store i64 %1807, i64* %RCX.i1178, align 8
  %1808 = add i64 %1798, -40
  %1809 = add i64 %1800, 12
  store i64 %1809, i64* %3, align 8
  %1810 = inttoptr i64 %1808 to i32*
  %1811 = load i32, i32* %1810, align 4
  %1812 = add i32 %1811, 1
  %1813 = zext i32 %1812 to i64
  store i64 %1813, i64* %RAX.i1207, align 8
  %1814 = icmp eq i32 %1811, -1
  %1815 = icmp eq i32 %1812, 0
  %1816 = or i1 %1814, %1815
  %1817 = zext i1 %1816 to i8
  store i8 %1817, i8* %51, align 1
  %1818 = and i32 %1812, 255
  %1819 = tail call i32 @llvm.ctpop.i32(i32 %1818)
  %1820 = trunc i32 %1819 to i8
  %1821 = and i8 %1820, 1
  %1822 = xor i8 %1821, 1
  store i8 %1822, i8* %52, align 1
  %1823 = xor i32 %1812, %1811
  %1824 = lshr i32 %1823, 4
  %1825 = trunc i32 %1824 to i8
  %1826 = and i8 %1825, 1
  store i8 %1826, i8* %53, align 1
  %1827 = zext i1 %1815 to i8
  store i8 %1827, i8* %54, align 1
  %1828 = lshr i32 %1812, 31
  %1829 = trunc i32 %1828 to i8
  store i8 %1829, i8* %55, align 1
  %1830 = lshr i32 %1811, 31
  %1831 = xor i32 %1828, %1830
  %1832 = add nuw nsw i32 %1831, %1828
  %1833 = icmp eq i32 %1832, 2
  %1834 = zext i1 %1833 to i8
  store i8 %1834, i8* %56, align 1
  %1835 = sext i32 %1812 to i64
  store i64 %1835, i64* %RDX.i1221, align 8
  %1836 = shl nsw i64 %1835, 3
  %1837 = add i64 %1807, %1836
  %1838 = add i64 %1800, 23
  store i64 %1838, i64* %3, align 8
  %1839 = inttoptr i64 %1837 to i64*
  store i64 %1803, i64* %1839, align 8
  %1840 = load i64, i64* %RBP.i, align 8
  %1841 = add i64 %1840, -28
  %1842 = load i64, i64* %3, align 8
  %1843 = add i64 %1842, 3
  store i64 %1843, i64* %3, align 8
  %1844 = inttoptr i64 %1841 to i32*
  %1845 = load i32, i32* %1844, align 4
  %1846 = add i32 %1845, 1
  %1847 = zext i32 %1846 to i64
  store i64 %1847, i64* %RAX.i1207, align 8
  %1848 = icmp eq i32 %1845, -1
  %1849 = icmp eq i32 %1846, 0
  %1850 = or i1 %1848, %1849
  %1851 = zext i1 %1850 to i8
  store i8 %1851, i8* %51, align 1
  %1852 = and i32 %1846, 255
  %1853 = tail call i32 @llvm.ctpop.i32(i32 %1852)
  %1854 = trunc i32 %1853 to i8
  %1855 = and i8 %1854, 1
  %1856 = xor i8 %1855, 1
  store i8 %1856, i8* %52, align 1
  %1857 = xor i32 %1846, %1845
  %1858 = lshr i32 %1857, 4
  %1859 = trunc i32 %1858 to i8
  %1860 = and i8 %1859, 1
  store i8 %1860, i8* %53, align 1
  %1861 = zext i1 %1849 to i8
  store i8 %1861, i8* %54, align 1
  %1862 = lshr i32 %1846, 31
  %1863 = trunc i32 %1862 to i8
  store i8 %1863, i8* %55, align 1
  %1864 = lshr i32 %1845, 31
  %1865 = xor i32 %1862, %1864
  %1866 = add nuw nsw i32 %1865, %1862
  %1867 = icmp eq i32 %1866, 2
  %1868 = zext i1 %1867 to i8
  store i8 %1868, i8* %56, align 1
  %1869 = add i64 %1842, 9
  store i64 %1869, i64* %3, align 8
  store i32 %1846, i32* %1844, align 4
  %1870 = load i64, i64* %3, align 8
  %1871 = add i64 %1870, -779
  store i64 %1871, i64* %3, align 8
  br label %block_.L_40129d

block_.L_4015ad:                                  ; preds = %block_.L_40129d
  %1872 = load i32, i32* %439, align 4
  %1873 = shl i32 %1872, 1
  %1874 = icmp slt i32 %1872, 0
  %1875 = icmp slt i32 %1873, 0
  %1876 = xor i1 %1874, %1875
  %1877 = zext i32 %1873 to i64
  store i64 %1877, i64* %RAX.i1207, align 8
  %.lobit13 = lshr i32 %1872, 31
  %1878 = trunc i32 %.lobit13 to i8
  store i8 %1878, i8* %51, align 1
  %1879 = and i32 %1873, 254
  %1880 = tail call i32 @llvm.ctpop.i32(i32 %1879)
  %1881 = trunc i32 %1880 to i8
  %1882 = and i8 %1881, 1
  %1883 = xor i8 %1882, 1
  store i8 %1883, i8* %52, align 1
  store i8 0, i8* %53, align 1
  %1884 = icmp eq i32 %1873, 0
  %1885 = zext i1 %1884 to i8
  store i8 %1885, i8* %54, align 1
  %1886 = lshr i32 %1872, 30
  %1887 = trunc i32 %1886 to i8
  %1888 = and i8 %1887, 1
  store i8 %1888, i8* %55, align 1
  %1889 = zext i1 %1876 to i8
  store i8 %1889, i8* %56, align 1
  %1890 = add i64 %431, -52
  %1891 = add i64 %467, 8
  store i64 %1891, i64* %3, align 8
  %1892 = inttoptr i64 %1890 to i32*
  %1893 = load i32, i32* %1892, align 4
  %1894 = add i32 %1893, %1873
  %1895 = zext i32 %1894 to i64
  store i64 %1895, i64* %RAX.i1207, align 8
  %1896 = icmp ult i32 %1894, %1873
  %1897 = icmp ult i32 %1894, %1893
  %1898 = or i1 %1896, %1897
  %1899 = zext i1 %1898 to i8
  store i8 %1899, i8* %51, align 1
  %1900 = and i32 %1894, 255
  %1901 = tail call i32 @llvm.ctpop.i32(i32 %1900)
  %1902 = trunc i32 %1901 to i8
  %1903 = and i8 %1902, 1
  %1904 = xor i8 %1903, 1
  store i8 %1904, i8* %52, align 1
  %1905 = xor i32 %1893, %1873
  %1906 = xor i32 %1905, %1894
  %1907 = lshr i32 %1906, 4
  %1908 = trunc i32 %1907 to i8
  %1909 = and i8 %1908, 1
  store i8 %1909, i8* %53, align 1
  %1910 = icmp eq i32 %1894, 0
  %1911 = zext i1 %1910 to i8
  store i8 %1911, i8* %54, align 1
  %1912 = lshr i32 %1894, 31
  %1913 = trunc i32 %1912 to i8
  store i8 %1913, i8* %55, align 1
  %1914 = lshr i32 %1872, 30
  %1915 = and i32 %1914, 1
  %1916 = lshr i32 %1893, 31
  %1917 = xor i32 %1912, %1915
  %1918 = xor i32 %1912, %1916
  %1919 = add nuw nsw i32 %1917, %1918
  %1920 = icmp eq i32 %1919, 2
  %1921 = zext i1 %1920 to i8
  store i8 %1921, i8* %56, align 1
  %1922 = add i64 %431, -16
  %1923 = add i64 %467, 12
  store i64 %1923, i64* %3, align 8
  %1924 = inttoptr i64 %1922 to i64*
  %1925 = load i64, i64* %1924, align 8
  store i64 %1925, i64* %RCX.i1178, align 8
  %1926 = add i64 %467, 16
  store i64 %1926, i64* %3, align 8
  %1927 = load i32, i32* %439, align 4
  %1928 = sext i32 %1927 to i64
  store i64 %1928, i64* %RDX.i1221, align 8
  %1929 = shl nsw i64 %1928, 2
  %1930 = add i64 %1925, %1929
  %1931 = add i64 %467, 19
  store i64 %1931, i64* %3, align 8
  %1932 = inttoptr i64 %1930 to i32*
  %1933 = load i32, i32* %1932, align 4
  %1934 = add i32 %1933, %1894
  %1935 = zext i32 %1934 to i64
  store i64 %1935, i64* %RAX.i1207, align 8
  %1936 = icmp ult i32 %1934, %1894
  %1937 = icmp ult i32 %1934, %1933
  %1938 = or i1 %1936, %1937
  %1939 = zext i1 %1938 to i8
  store i8 %1939, i8* %51, align 1
  %1940 = and i32 %1934, 255
  %1941 = tail call i32 @llvm.ctpop.i32(i32 %1940)
  %1942 = trunc i32 %1941 to i8
  %1943 = and i8 %1942, 1
  %1944 = xor i8 %1943, 1
  store i8 %1944, i8* %52, align 1
  %1945 = xor i32 %1933, %1894
  %1946 = xor i32 %1945, %1934
  %1947 = lshr i32 %1946, 4
  %1948 = trunc i32 %1947 to i8
  %1949 = and i8 %1948, 1
  store i8 %1949, i8* %53, align 1
  %1950 = icmp eq i32 %1934, 0
  %1951 = zext i1 %1950 to i8
  store i8 %1951, i8* %54, align 1
  %1952 = lshr i32 %1934, 31
  %1953 = trunc i32 %1952 to i8
  store i8 %1953, i8* %55, align 1
  %1954 = lshr i32 %1933, 31
  %1955 = xor i32 %1952, %1912
  %1956 = xor i32 %1952, %1954
  %1957 = add nuw nsw i32 %1955, %1956
  %1958 = icmp eq i32 %1957, 2
  %1959 = zext i1 %1958 to i8
  store i8 %1959, i8* %56, align 1
  %1960 = load i64, i64* %RBP.i, align 8
  %1961 = add i64 %1960, -32
  %1962 = add i64 %467, 22
  store i64 %1962, i64* %3, align 8
  %1963 = inttoptr i64 %1961 to i32*
  store i32 %1934, i32* %1963, align 4
  %1964 = load i64, i64* %RBP.i, align 8
  %1965 = add i64 %1964, -32
  %1966 = load i64, i64* %3, align 8
  %1967 = add i64 %1966, 3
  store i64 %1967, i64* %3, align 8
  %1968 = inttoptr i64 %1965 to i32*
  %1969 = load i32, i32* %1968, align 4
  %1970 = zext i32 %1969 to i64
  store i64 %1970, i64* %RAX.i1207, align 8
  %1971 = add i64 %1964, -52
  %1972 = add i64 %1966, 6
  store i64 %1972, i64* %3, align 8
  %1973 = inttoptr i64 %1971 to i32*
  %1974 = load i32, i32* %1973, align 4
  %1975 = add i32 %1974, %1969
  %1976 = zext i32 %1975 to i64
  store i64 %1976, i64* %RAX.i1207, align 8
  %1977 = icmp ult i32 %1975, %1969
  %1978 = icmp ult i32 %1975, %1974
  %1979 = or i1 %1977, %1978
  %1980 = zext i1 %1979 to i8
  store i8 %1980, i8* %51, align 1
  %1981 = and i32 %1975, 255
  %1982 = tail call i32 @llvm.ctpop.i32(i32 %1981)
  %1983 = trunc i32 %1982 to i8
  %1984 = and i8 %1983, 1
  %1985 = xor i8 %1984, 1
  store i8 %1985, i8* %52, align 1
  %1986 = xor i32 %1974, %1969
  %1987 = xor i32 %1986, %1975
  %1988 = lshr i32 %1987, 4
  %1989 = trunc i32 %1988 to i8
  %1990 = and i8 %1989, 1
  store i8 %1990, i8* %53, align 1
  %1991 = icmp eq i32 %1975, 0
  %1992 = zext i1 %1991 to i8
  store i8 %1992, i8* %54, align 1
  %1993 = lshr i32 %1975, 31
  %1994 = trunc i32 %1993 to i8
  store i8 %1994, i8* %55, align 1
  %1995 = lshr i32 %1969, 31
  %1996 = lshr i32 %1974, 31
  %1997 = xor i32 %1993, %1995
  %1998 = xor i32 %1993, %1996
  %1999 = add nuw nsw i32 %1997, %1998
  %2000 = icmp eq i32 %1999, 2
  %2001 = zext i1 %2000 to i8
  store i8 %2001, i8* %56, align 1
  %2002 = add i64 %1964, -40
  %2003 = add i64 %1966, 9
  store i64 %2003, i64* %3, align 8
  %2004 = inttoptr i64 %2002 to i32*
  store i32 %1975, i32* %2004, align 4
  %2005 = load i64, i64* %RBP.i, align 8
  %2006 = add i64 %2005, -24
  %2007 = load i64, i64* %3, align 8
  %2008 = add i64 %2007, 4
  store i64 %2008, i64* %3, align 8
  %2009 = inttoptr i64 %2006 to i64*
  %2010 = load i64, i64* %2009, align 8
  store i64 %2010, i64* %RCX.i1178, align 8
  %2011 = add i64 %2005, -32
  %2012 = add i64 %2007, 8
  store i64 %2012, i64* %3, align 8
  %2013 = inttoptr i64 %2011 to i32*
  %2014 = load i32, i32* %2013, align 4
  %2015 = sext i32 %2014 to i64
  store i64 %2015, i64* %RDX.i1221, align 8
  %2016 = shl nsw i64 %2015, 3
  %2017 = add i64 %2016, %2010
  %2018 = add i64 %2007, 13
  store i64 %2018, i64* %3, align 8
  %2019 = inttoptr i64 %2017 to i64*
  %2020 = load i64, i64* %2019, align 8
  store i64 %2020, i64* %386, align 1
  store double 0.000000e+00, double* %388, align 1
  %2021 = add i64 %2005, -64
  %2022 = add i64 %2007, 18
  store i64 %2022, i64* %3, align 8
  %2023 = inttoptr i64 %2021 to i64*
  store i64 %2020, i64* %2023, align 8
  %2024 = load i64, i64* %RBP.i, align 8
  %2025 = add i64 %2024, -24
  %2026 = load i64, i64* %3, align 8
  %2027 = add i64 %2026, 4
  store i64 %2027, i64* %3, align 8
  %2028 = inttoptr i64 %2025 to i64*
  %2029 = load i64, i64* %2028, align 8
  store i64 %2029, i64* %RCX.i1178, align 8
  %2030 = add i64 %2024, -32
  %2031 = add i64 %2026, 7
  store i64 %2031, i64* %3, align 8
  %2032 = inttoptr i64 %2030 to i32*
  %2033 = load i32, i32* %2032, align 4
  %2034 = add i32 %2033, 1
  %2035 = zext i32 %2034 to i64
  store i64 %2035, i64* %RAX.i1207, align 8
  %2036 = icmp eq i32 %2033, -1
  %2037 = icmp eq i32 %2034, 0
  %2038 = or i1 %2036, %2037
  %2039 = zext i1 %2038 to i8
  store i8 %2039, i8* %51, align 1
  %2040 = and i32 %2034, 255
  %2041 = tail call i32 @llvm.ctpop.i32(i32 %2040)
  %2042 = trunc i32 %2041 to i8
  %2043 = and i8 %2042, 1
  %2044 = xor i8 %2043, 1
  store i8 %2044, i8* %52, align 1
  %2045 = xor i32 %2034, %2033
  %2046 = lshr i32 %2045, 4
  %2047 = trunc i32 %2046 to i8
  %2048 = and i8 %2047, 1
  store i8 %2048, i8* %53, align 1
  %2049 = zext i1 %2037 to i8
  store i8 %2049, i8* %54, align 1
  %2050 = lshr i32 %2034, 31
  %2051 = trunc i32 %2050 to i8
  store i8 %2051, i8* %55, align 1
  %2052 = lshr i32 %2033, 31
  %2053 = xor i32 %2050, %2052
  %2054 = add nuw nsw i32 %2053, %2050
  %2055 = icmp eq i32 %2054, 2
  %2056 = zext i1 %2055 to i8
  store i8 %2056, i8* %56, align 1
  %2057 = sext i32 %2034 to i64
  store i64 %2057, i64* %RDX.i1221, align 8
  %2058 = shl nsw i64 %2057, 3
  %2059 = add i64 %2029, %2058
  %2060 = add i64 %2026, 18
  store i64 %2060, i64* %3, align 8
  %2061 = inttoptr i64 %2059 to i64*
  %2062 = load i64, i64* %2061, align 8
  store i64 %2062, i64* %386, align 1
  store double 0.000000e+00, double* %388, align 1
  %2063 = add i64 %2024, -72
  %2064 = add i64 %2026, 23
  store i64 %2064, i64* %3, align 8
  %2065 = inttoptr i64 %2063 to i64*
  store i64 %2062, i64* %2065, align 8
  %2066 = load i64, i64* %RBP.i, align 8
  %2067 = add i64 %2066, -24
  %2068 = load i64, i64* %3, align 8
  %2069 = add i64 %2068, 4
  store i64 %2069, i64* %3, align 8
  %2070 = inttoptr i64 %2067 to i64*
  %2071 = load i64, i64* %2070, align 8
  store i64 %2071, i64* %RCX.i1178, align 8
  %2072 = add i64 %2066, -40
  %2073 = add i64 %2068, 8
  store i64 %2073, i64* %3, align 8
  %2074 = inttoptr i64 %2072 to i32*
  %2075 = load i32, i32* %2074, align 4
  %2076 = sext i32 %2075 to i64
  store i64 %2076, i64* %RDX.i1221, align 8
  %2077 = shl nsw i64 %2076, 3
  %2078 = add i64 %2077, %2071
  %2079 = add i64 %2068, 13
  store i64 %2079, i64* %3, align 8
  %2080 = inttoptr i64 %2078 to i64*
  %2081 = load i64, i64* %2080, align 8
  store i64 %2081, i64* %386, align 1
  store double 0.000000e+00, double* %388, align 1
  %2082 = add i64 %2066, -80
  %2083 = add i64 %2068, 18
  store i64 %2083, i64* %3, align 8
  %2084 = inttoptr i64 %2082 to i64*
  store i64 %2081, i64* %2084, align 8
  %2085 = load i64, i64* %RBP.i, align 8
  %2086 = add i64 %2085, -24
  %2087 = load i64, i64* %3, align 8
  %2088 = add i64 %2087, 4
  store i64 %2088, i64* %3, align 8
  %2089 = inttoptr i64 %2086 to i64*
  %2090 = load i64, i64* %2089, align 8
  store i64 %2090, i64* %RCX.i1178, align 8
  %2091 = add i64 %2085, -40
  %2092 = add i64 %2087, 7
  store i64 %2092, i64* %3, align 8
  %2093 = inttoptr i64 %2091 to i32*
  %2094 = load i32, i32* %2093, align 4
  %2095 = add i32 %2094, 1
  %2096 = zext i32 %2095 to i64
  store i64 %2096, i64* %RAX.i1207, align 8
  %2097 = icmp eq i32 %2094, -1
  %2098 = icmp eq i32 %2095, 0
  %2099 = or i1 %2097, %2098
  %2100 = zext i1 %2099 to i8
  store i8 %2100, i8* %51, align 1
  %2101 = and i32 %2095, 255
  %2102 = tail call i32 @llvm.ctpop.i32(i32 %2101)
  %2103 = trunc i32 %2102 to i8
  %2104 = and i8 %2103, 1
  %2105 = xor i8 %2104, 1
  store i8 %2105, i8* %52, align 1
  %2106 = xor i32 %2095, %2094
  %2107 = lshr i32 %2106, 4
  %2108 = trunc i32 %2107 to i8
  %2109 = and i8 %2108, 1
  store i8 %2109, i8* %53, align 1
  %2110 = zext i1 %2098 to i8
  store i8 %2110, i8* %54, align 1
  %2111 = lshr i32 %2095, 31
  %2112 = trunc i32 %2111 to i8
  store i8 %2112, i8* %55, align 1
  %2113 = lshr i32 %2094, 31
  %2114 = xor i32 %2111, %2113
  %2115 = add nuw nsw i32 %2114, %2111
  %2116 = icmp eq i32 %2115, 2
  %2117 = zext i1 %2116 to i8
  store i8 %2117, i8* %56, align 1
  %2118 = sext i32 %2095 to i64
  store i64 %2118, i64* %RDX.i1221, align 8
  %2119 = shl nsw i64 %2118, 3
  %2120 = add i64 %2090, %2119
  %2121 = add i64 %2087, 18
  store i64 %2121, i64* %3, align 8
  %2122 = inttoptr i64 %2120 to i64*
  %2123 = load i64, i64* %2122, align 8
  store i64 %2123, i64* %386, align 1
  store double 0.000000e+00, double* %388, align 1
  %2124 = add i64 %2085, -88
  %2125 = add i64 %2087, 23
  store i64 %2125, i64* %3, align 8
  %2126 = inttoptr i64 %2124 to i64*
  store i64 %2123, i64* %2126, align 8
  %2127 = load i64, i64* %RBP.i, align 8
  %2128 = add i64 %2127, -80
  %2129 = load i64, i64* %3, align 8
  %2130 = add i64 %2129, 5
  store i64 %2130, i64* %3, align 8
  %2131 = inttoptr i64 %2128 to i64*
  %2132 = load i64, i64* %2131, align 8
  store i64 %2132, i64* %386, align 1
  store double 0.000000e+00, double* %388, align 1
  %2133 = add i64 %2127, -24
  %2134 = add i64 %2129, 9
  store i64 %2134, i64* %3, align 8
  %2135 = inttoptr i64 %2133 to i64*
  %2136 = load i64, i64* %2135, align 8
  store i64 %2136, i64* %RCX.i1178, align 8
  %2137 = add i64 %2127, -32
  %2138 = add i64 %2129, 13
  store i64 %2138, i64* %3, align 8
  %2139 = inttoptr i64 %2137 to i32*
  %2140 = load i32, i32* %2139, align 4
  %2141 = sext i32 %2140 to i64
  store i64 %2141, i64* %RDX.i1221, align 8
  %2142 = shl nsw i64 %2141, 3
  %2143 = add i64 %2142, %2136
  %2144 = add i64 %2129, 18
  store i64 %2144, i64* %3, align 8
  %2145 = inttoptr i64 %2143 to i64*
  store i64 %2132, i64* %2145, align 8
  %2146 = load i64, i64* %RBP.i, align 8
  %2147 = add i64 %2146, -88
  %2148 = load i64, i64* %3, align 8
  %2149 = add i64 %2148, 5
  store i64 %2149, i64* %3, align 8
  %2150 = inttoptr i64 %2147 to i64*
  %2151 = load i64, i64* %2150, align 8
  store i64 %2151, i64* %386, align 1
  store double 0.000000e+00, double* %388, align 1
  %2152 = add i64 %2146, -24
  %2153 = add i64 %2148, 9
  store i64 %2153, i64* %3, align 8
  %2154 = inttoptr i64 %2152 to i64*
  %2155 = load i64, i64* %2154, align 8
  store i64 %2155, i64* %RCX.i1178, align 8
  %2156 = add i64 %2146, -32
  %2157 = add i64 %2148, 12
  store i64 %2157, i64* %3, align 8
  %2158 = inttoptr i64 %2156 to i32*
  %2159 = load i32, i32* %2158, align 4
  %2160 = add i32 %2159, 1
  %2161 = zext i32 %2160 to i64
  store i64 %2161, i64* %RAX.i1207, align 8
  %2162 = icmp eq i32 %2159, -1
  %2163 = icmp eq i32 %2160, 0
  %2164 = or i1 %2162, %2163
  %2165 = zext i1 %2164 to i8
  store i8 %2165, i8* %51, align 1
  %2166 = and i32 %2160, 255
  %2167 = tail call i32 @llvm.ctpop.i32(i32 %2166)
  %2168 = trunc i32 %2167 to i8
  %2169 = and i8 %2168, 1
  %2170 = xor i8 %2169, 1
  store i8 %2170, i8* %52, align 1
  %2171 = xor i32 %2160, %2159
  %2172 = lshr i32 %2171, 4
  %2173 = trunc i32 %2172 to i8
  %2174 = and i8 %2173, 1
  store i8 %2174, i8* %53, align 1
  %2175 = zext i1 %2163 to i8
  store i8 %2175, i8* %54, align 1
  %2176 = lshr i32 %2160, 31
  %2177 = trunc i32 %2176 to i8
  store i8 %2177, i8* %55, align 1
  %2178 = lshr i32 %2159, 31
  %2179 = xor i32 %2176, %2178
  %2180 = add nuw nsw i32 %2179, %2176
  %2181 = icmp eq i32 %2180, 2
  %2182 = zext i1 %2181 to i8
  store i8 %2182, i8* %56, align 1
  %2183 = sext i32 %2160 to i64
  store i64 %2183, i64* %RDX.i1221, align 8
  %2184 = shl nsw i64 %2183, 3
  %2185 = add i64 %2155, %2184
  %2186 = add i64 %2148, 23
  store i64 %2186, i64* %3, align 8
  %2187 = inttoptr i64 %2185 to i64*
  store i64 %2151, i64* %2187, align 8
  %2188 = load i64, i64* %RBP.i, align 8
  %2189 = add i64 %2188, -64
  %2190 = load i64, i64* %3, align 8
  %2191 = add i64 %2190, 5
  store i64 %2191, i64* %3, align 8
  %2192 = inttoptr i64 %2189 to i64*
  %2193 = load i64, i64* %2192, align 8
  store i64 %2193, i64* %386, align 1
  store double 0.000000e+00, double* %388, align 1
  %2194 = add i64 %2188, -24
  %2195 = add i64 %2190, 9
  store i64 %2195, i64* %3, align 8
  %2196 = inttoptr i64 %2194 to i64*
  %2197 = load i64, i64* %2196, align 8
  store i64 %2197, i64* %RCX.i1178, align 8
  %2198 = add i64 %2188, -40
  %2199 = add i64 %2190, 13
  store i64 %2199, i64* %3, align 8
  %2200 = inttoptr i64 %2198 to i32*
  %2201 = load i32, i32* %2200, align 4
  %2202 = sext i32 %2201 to i64
  store i64 %2202, i64* %RDX.i1221, align 8
  %2203 = shl nsw i64 %2202, 3
  %2204 = add i64 %2203, %2197
  %2205 = add i64 %2190, 18
  store i64 %2205, i64* %3, align 8
  %2206 = inttoptr i64 %2204 to i64*
  store i64 %2193, i64* %2206, align 8
  %2207 = load i64, i64* %RBP.i, align 8
  %2208 = add i64 %2207, -72
  %2209 = load i64, i64* %3, align 8
  %2210 = add i64 %2209, 5
  store i64 %2210, i64* %3, align 8
  %2211 = inttoptr i64 %2208 to i64*
  %2212 = load i64, i64* %2211, align 8
  store i64 %2212, i64* %386, align 1
  store double 0.000000e+00, double* %388, align 1
  %2213 = add i64 %2207, -24
  %2214 = add i64 %2209, 9
  store i64 %2214, i64* %3, align 8
  %2215 = inttoptr i64 %2213 to i64*
  %2216 = load i64, i64* %2215, align 8
  store i64 %2216, i64* %RCX.i1178, align 8
  %2217 = add i64 %2207, -40
  %2218 = add i64 %2209, 12
  store i64 %2218, i64* %3, align 8
  %2219 = inttoptr i64 %2217 to i32*
  %2220 = load i32, i32* %2219, align 4
  %2221 = add i32 %2220, 1
  %2222 = zext i32 %2221 to i64
  store i64 %2222, i64* %RAX.i1207, align 8
  %2223 = icmp eq i32 %2220, -1
  %2224 = icmp eq i32 %2221, 0
  %2225 = or i1 %2223, %2224
  %2226 = zext i1 %2225 to i8
  store i8 %2226, i8* %51, align 1
  %2227 = and i32 %2221, 255
  %2228 = tail call i32 @llvm.ctpop.i32(i32 %2227)
  %2229 = trunc i32 %2228 to i8
  %2230 = and i8 %2229, 1
  %2231 = xor i8 %2230, 1
  store i8 %2231, i8* %52, align 1
  %2232 = xor i32 %2221, %2220
  %2233 = lshr i32 %2232, 4
  %2234 = trunc i32 %2233 to i8
  %2235 = and i8 %2234, 1
  store i8 %2235, i8* %53, align 1
  %2236 = zext i1 %2224 to i8
  store i8 %2236, i8* %54, align 1
  %2237 = lshr i32 %2221, 31
  %2238 = trunc i32 %2237 to i8
  store i8 %2238, i8* %55, align 1
  %2239 = lshr i32 %2220, 31
  %2240 = xor i32 %2237, %2239
  %2241 = add nuw nsw i32 %2240, %2237
  %2242 = icmp eq i32 %2241, 2
  %2243 = zext i1 %2242 to i8
  store i8 %2243, i8* %56, align 1
  %2244 = sext i32 %2221 to i64
  store i64 %2244, i64* %RDX.i1221, align 8
  %2245 = shl nsw i64 %2244, 3
  %2246 = add i64 %2216, %2245
  %2247 = add i64 %2209, 23
  store i64 %2247, i64* %3, align 8
  %2248 = inttoptr i64 %2246 to i64*
  store i64 %2212, i64* %2248, align 8
  %2249 = load i64, i64* %RBP.i, align 8
  %2250 = add i64 %2249, -36
  %2251 = load i64, i64* %3, align 8
  %2252 = add i64 %2251, 3
  store i64 %2252, i64* %3, align 8
  %2253 = inttoptr i64 %2250 to i32*
  %2254 = load i32, i32* %2253, align 4
  %2255 = add i32 %2254, 1
  %2256 = zext i32 %2255 to i64
  store i64 %2256, i64* %RAX.i1207, align 8
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
  %2266 = xor i32 %2255, %2254
  %2267 = lshr i32 %2266, 4
  %2268 = trunc i32 %2267 to i8
  %2269 = and i8 %2268, 1
  store i8 %2269, i8* %53, align 1
  %2270 = zext i1 %2258 to i8
  store i8 %2270, i8* %54, align 1
  %2271 = lshr i32 %2255, 31
  %2272 = trunc i32 %2271 to i8
  store i8 %2272, i8* %55, align 1
  %2273 = lshr i32 %2254, 31
  %2274 = xor i32 %2271, %2273
  %2275 = add nuw nsw i32 %2274, %2271
  %2276 = icmp eq i32 %2275, 2
  %2277 = zext i1 %2276 to i8
  store i8 %2277, i8* %56, align 1
  %2278 = add i64 %2251, 9
  store i64 %2278, i64* %3, align 8
  store i32 %2255, i32* %2253, align 4
  %2279 = load i64, i64* %3, align 8
  %2280 = add i64 %2279, -1008
  store i64 %2280, i64* %3, align 8
  br label %block_.L_40128a

block_.L_40167f:                                  ; preds = %block_.L_40128a
  %2281 = add i64 %426, 467
  br label %block_.L_401852

block_.L_401684:                                  ; preds = %block_.L_40126b
  store i32 1, i32* %385, align 4
  %2282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %2283 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %2284 = bitcast i64* %2283 to double*
  %.pre40 = load i64, i64* %3, align 8
  br label %block_.L_40168b

block_.L_40168b:                                  ; preds = %block_.L_40183a, %block_.L_401684
  %2285 = phi i64 [ %3119, %block_.L_40183a ], [ %.pre40, %block_.L_401684 ]
  %2286 = load i64, i64* %RBP.i, align 8
  %2287 = add i64 %2286, -36
  %2288 = add i64 %2285, 3
  store i64 %2288, i64* %3, align 8
  %2289 = inttoptr i64 %2287 to i32*
  %2290 = load i32, i32* %2289, align 4
  %2291 = zext i32 %2290 to i64
  store i64 %2291, i64* %RAX.i1207, align 8
  %2292 = add i64 %2286, -48
  %2293 = add i64 %2285, 6
  store i64 %2293, i64* %3, align 8
  %2294 = inttoptr i64 %2292 to i32*
  %2295 = load i32, i32* %2294, align 4
  %2296 = sub i32 %2290, %2295
  %2297 = icmp ult i32 %2290, %2295
  %2298 = zext i1 %2297 to i8
  store i8 %2298, i8* %51, align 1
  %2299 = and i32 %2296, 255
  %2300 = tail call i32 @llvm.ctpop.i32(i32 %2299)
  %2301 = trunc i32 %2300 to i8
  %2302 = and i8 %2301, 1
  %2303 = xor i8 %2302, 1
  store i8 %2303, i8* %52, align 1
  %2304 = xor i32 %2295, %2290
  %2305 = xor i32 %2304, %2296
  %2306 = lshr i32 %2305, 4
  %2307 = trunc i32 %2306 to i8
  %2308 = and i8 %2307, 1
  store i8 %2308, i8* %53, align 1
  %2309 = icmp eq i32 %2296, 0
  %2310 = zext i1 %2309 to i8
  store i8 %2310, i8* %54, align 1
  %2311 = lshr i32 %2296, 31
  %2312 = trunc i32 %2311 to i8
  store i8 %2312, i8* %55, align 1
  %2313 = lshr i32 %2290, 31
  %2314 = lshr i32 %2295, 31
  %2315 = xor i32 %2314, %2313
  %2316 = xor i32 %2311, %2313
  %2317 = add nuw nsw i32 %2316, %2315
  %2318 = icmp eq i32 %2317, 2
  %2319 = zext i1 %2318 to i8
  store i8 %2319, i8* %56, align 1
  %2320 = icmp ne i8 %2312, 0
  %2321 = xor i1 %2320, %2318
  %.v45 = select i1 %2321, i64 12, i64 450
  %2322 = add i64 %2285, %.v45
  store i64 %2322, i64* %3, align 8
  br i1 %2321, label %block_401697, label %block_.L_40184d

block_401697:                                     ; preds = %block_.L_40168b
  %2323 = add i64 %2286, -28
  %2324 = add i64 %2322, 7
  store i64 %2324, i64* %3, align 8
  %2325 = inttoptr i64 %2323 to i32*
  store i32 0, i32* %2325, align 4
  %.pre41 = load i64, i64* %3, align 8
  br label %block_.L_40169e

block_.L_40169e:                                  ; preds = %block_4016aa, %block_401697
  %2326 = phi i64 [ %3091, %block_4016aa ], [ %.pre41, %block_401697 ]
  %2327 = load i64, i64* %RBP.i, align 8
  %2328 = add i64 %2327, -28
  %2329 = add i64 %2326, 3
  store i64 %2329, i64* %3, align 8
  %2330 = inttoptr i64 %2328 to i32*
  %2331 = load i32, i32* %2330, align 4
  %2332 = zext i32 %2331 to i64
  store i64 %2332, i64* %RAX.i1207, align 8
  %2333 = add i64 %2327, -36
  %2334 = add i64 %2326, 6
  store i64 %2334, i64* %3, align 8
  %2335 = inttoptr i64 %2333 to i32*
  %2336 = load i32, i32* %2335, align 4
  %2337 = sub i32 %2331, %2336
  %2338 = icmp ult i32 %2331, %2336
  %2339 = zext i1 %2338 to i8
  store i8 %2339, i8* %51, align 1
  %2340 = and i32 %2337, 255
  %2341 = tail call i32 @llvm.ctpop.i32(i32 %2340)
  %2342 = trunc i32 %2341 to i8
  %2343 = and i8 %2342, 1
  %2344 = xor i8 %2343, 1
  store i8 %2344, i8* %52, align 1
  %2345 = xor i32 %2336, %2331
  %2346 = xor i32 %2345, %2337
  %2347 = lshr i32 %2346, 4
  %2348 = trunc i32 %2347 to i8
  %2349 = and i8 %2348, 1
  store i8 %2349, i8* %53, align 1
  %2350 = icmp eq i32 %2337, 0
  %2351 = zext i1 %2350 to i8
  store i8 %2351, i8* %54, align 1
  %2352 = lshr i32 %2337, 31
  %2353 = trunc i32 %2352 to i8
  store i8 %2353, i8* %55, align 1
  %2354 = lshr i32 %2331, 31
  %2355 = lshr i32 %2336, 31
  %2356 = xor i32 %2355, %2354
  %2357 = xor i32 %2352, %2354
  %2358 = add nuw nsw i32 %2357, %2356
  %2359 = icmp eq i32 %2358, 2
  %2360 = zext i1 %2359 to i8
  store i8 %2360, i8* %56, align 1
  %2361 = icmp ne i8 %2353, 0
  %2362 = xor i1 %2361, %2359
  %.v43 = select i1 %2362, i64 12, i64 412
  %2363 = add i64 %2326, %.v43
  store i64 %2363, i64* %3, align 8
  br i1 %2362, label %block_4016aa, label %block_.L_40183a

block_4016aa:                                     ; preds = %block_.L_40169e
  %2364 = add i64 %2363, 3
  store i64 %2364, i64* %3, align 8
  %2365 = load i32, i32* %2330, align 4
  %2366 = shl i32 %2365, 1
  %2367 = icmp slt i32 %2365, 0
  %2368 = icmp slt i32 %2366, 0
  %2369 = xor i1 %2367, %2368
  %2370 = zext i32 %2366 to i64
  store i64 %2370, i64* %RAX.i1207, align 8
  %.lobit14 = lshr i32 %2365, 31
  %2371 = trunc i32 %.lobit14 to i8
  store i8 %2371, i8* %51, align 1
  %2372 = and i32 %2366, 254
  %2373 = tail call i32 @llvm.ctpop.i32(i32 %2372)
  %2374 = trunc i32 %2373 to i8
  %2375 = and i8 %2374, 1
  %2376 = xor i8 %2375, 1
  store i8 %2376, i8* %52, align 1
  store i8 0, i8* %53, align 1
  %2377 = icmp eq i32 %2366, 0
  %2378 = zext i1 %2377 to i8
  store i8 %2378, i8* %54, align 1
  %2379 = lshr i32 %2365, 30
  %2380 = trunc i32 %2379 to i8
  %2381 = and i8 %2380, 1
  store i8 %2381, i8* %55, align 1
  %2382 = zext i1 %2369 to i8
  store i8 %2382, i8* %56, align 1
  %2383 = add i64 %2327, -16
  %2384 = add i64 %2363, 9
  store i64 %2384, i64* %3, align 8
  %2385 = inttoptr i64 %2383 to i64*
  %2386 = load i64, i64* %2385, align 8
  store i64 %2386, i64* %RCX.i1178, align 8
  %2387 = add i64 %2363, 13
  store i64 %2387, i64* %3, align 8
  %2388 = load i32, i32* %2335, align 4
  %2389 = sext i32 %2388 to i64
  store i64 %2389, i64* %RDX.i1221, align 8
  %2390 = shl nsw i64 %2389, 2
  %2391 = add i64 %2386, %2390
  %2392 = add i64 %2363, 16
  store i64 %2392, i64* %3, align 8
  %2393 = inttoptr i64 %2391 to i32*
  %2394 = load i32, i32* %2393, align 4
  %2395 = add i32 %2394, %2366
  %2396 = zext i32 %2395 to i64
  store i64 %2396, i64* %RAX.i1207, align 8
  %2397 = icmp ult i32 %2395, %2366
  %2398 = icmp ult i32 %2395, %2394
  %2399 = or i1 %2397, %2398
  %2400 = zext i1 %2399 to i8
  store i8 %2400, i8* %51, align 1
  %2401 = and i32 %2395, 255
  %2402 = tail call i32 @llvm.ctpop.i32(i32 %2401)
  %2403 = trunc i32 %2402 to i8
  %2404 = and i8 %2403, 1
  %2405 = xor i8 %2404, 1
  store i8 %2405, i8* %52, align 1
  %2406 = xor i32 %2394, %2366
  %2407 = xor i32 %2406, %2395
  %2408 = lshr i32 %2407, 4
  %2409 = trunc i32 %2408 to i8
  %2410 = and i8 %2409, 1
  store i8 %2410, i8* %53, align 1
  %2411 = icmp eq i32 %2395, 0
  %2412 = zext i1 %2411 to i8
  store i8 %2412, i8* %54, align 1
  %2413 = lshr i32 %2395, 31
  %2414 = trunc i32 %2413 to i8
  store i8 %2414, i8* %55, align 1
  %2415 = lshr i32 %2365, 30
  %2416 = and i32 %2415, 1
  %2417 = lshr i32 %2394, 31
  %2418 = xor i32 %2413, %2416
  %2419 = xor i32 %2413, %2417
  %2420 = add nuw nsw i32 %2418, %2419
  %2421 = icmp eq i32 %2420, 2
  %2422 = zext i1 %2421 to i8
  store i8 %2422, i8* %56, align 1
  %2423 = add i64 %2327, -32
  %2424 = add i64 %2363, 19
  store i64 %2424, i64* %3, align 8
  %2425 = inttoptr i64 %2423 to i32*
  store i32 %2395, i32* %2425, align 4
  %2426 = load i64, i64* %RBP.i, align 8
  %2427 = add i64 %2426, -36
  %2428 = load i64, i64* %3, align 8
  %2429 = add i64 %2428, 3
  store i64 %2429, i64* %3, align 8
  %2430 = inttoptr i64 %2427 to i32*
  %2431 = load i32, i32* %2430, align 4
  %2432 = shl i32 %2431, 1
  %2433 = icmp slt i32 %2431, 0
  %2434 = icmp slt i32 %2432, 0
  %2435 = xor i1 %2433, %2434
  %2436 = zext i32 %2432 to i64
  store i64 %2436, i64* %RAX.i1207, align 8
  %.lobit15 = lshr i32 %2431, 31
  %2437 = trunc i32 %.lobit15 to i8
  store i8 %2437, i8* %51, align 1
  %2438 = and i32 %2432, 254
  %2439 = tail call i32 @llvm.ctpop.i32(i32 %2438)
  %2440 = trunc i32 %2439 to i8
  %2441 = and i8 %2440, 1
  %2442 = xor i8 %2441, 1
  store i8 %2442, i8* %52, align 1
  store i8 0, i8* %53, align 1
  %2443 = icmp eq i32 %2432, 0
  %2444 = zext i1 %2443 to i8
  store i8 %2444, i8* %54, align 1
  %2445 = lshr i32 %2431, 30
  %2446 = trunc i32 %2445 to i8
  %2447 = and i8 %2446, 1
  store i8 %2447, i8* %55, align 1
  %2448 = zext i1 %2435 to i8
  store i8 %2448, i8* %56, align 1
  %2449 = add i64 %2426, -16
  %2450 = add i64 %2428, 9
  store i64 %2450, i64* %3, align 8
  %2451 = inttoptr i64 %2449 to i64*
  %2452 = load i64, i64* %2451, align 8
  store i64 %2452, i64* %RCX.i1178, align 8
  %2453 = add i64 %2426, -28
  %2454 = add i64 %2428, 13
  store i64 %2454, i64* %3, align 8
  %2455 = inttoptr i64 %2453 to i32*
  %2456 = load i32, i32* %2455, align 4
  %2457 = sext i32 %2456 to i64
  store i64 %2457, i64* %RDX.i1221, align 8
  %2458 = shl nsw i64 %2457, 2
  %2459 = add i64 %2452, %2458
  %2460 = add i64 %2428, 16
  store i64 %2460, i64* %3, align 8
  %2461 = inttoptr i64 %2459 to i32*
  %2462 = load i32, i32* %2461, align 4
  %2463 = add i32 %2462, %2432
  %2464 = zext i32 %2463 to i64
  store i64 %2464, i64* %RAX.i1207, align 8
  %2465 = icmp ult i32 %2463, %2432
  %2466 = icmp ult i32 %2463, %2462
  %2467 = or i1 %2465, %2466
  %2468 = zext i1 %2467 to i8
  store i8 %2468, i8* %51, align 1
  %2469 = and i32 %2463, 255
  %2470 = tail call i32 @llvm.ctpop.i32(i32 %2469)
  %2471 = trunc i32 %2470 to i8
  %2472 = and i8 %2471, 1
  %2473 = xor i8 %2472, 1
  store i8 %2473, i8* %52, align 1
  %2474 = xor i32 %2462, %2432
  %2475 = xor i32 %2474, %2463
  %2476 = lshr i32 %2475, 4
  %2477 = trunc i32 %2476 to i8
  %2478 = and i8 %2477, 1
  store i8 %2478, i8* %53, align 1
  %2479 = icmp eq i32 %2463, 0
  %2480 = zext i1 %2479 to i8
  store i8 %2480, i8* %54, align 1
  %2481 = lshr i32 %2463, 31
  %2482 = trunc i32 %2481 to i8
  store i8 %2482, i8* %55, align 1
  %2483 = lshr i32 %2431, 30
  %2484 = and i32 %2483, 1
  %2485 = lshr i32 %2462, 31
  %2486 = xor i32 %2481, %2484
  %2487 = xor i32 %2481, %2485
  %2488 = add nuw nsw i32 %2486, %2487
  %2489 = icmp eq i32 %2488, 2
  %2490 = zext i1 %2489 to i8
  store i8 %2490, i8* %56, align 1
  %2491 = add i64 %2426, -40
  %2492 = add i64 %2428, 19
  store i64 %2492, i64* %3, align 8
  %2493 = inttoptr i64 %2491 to i32*
  store i32 %2463, i32* %2493, align 4
  %2494 = load i64, i64* %RBP.i, align 8
  %2495 = add i64 %2494, -24
  %2496 = load i64, i64* %3, align 8
  %2497 = add i64 %2496, 4
  store i64 %2497, i64* %3, align 8
  %2498 = inttoptr i64 %2495 to i64*
  %2499 = load i64, i64* %2498, align 8
  store i64 %2499, i64* %RCX.i1178, align 8
  %2500 = add i64 %2494, -32
  %2501 = add i64 %2496, 8
  store i64 %2501, i64* %3, align 8
  %2502 = inttoptr i64 %2500 to i32*
  %2503 = load i32, i32* %2502, align 4
  %2504 = sext i32 %2503 to i64
  store i64 %2504, i64* %RDX.i1221, align 8
  %2505 = shl nsw i64 %2504, 3
  %2506 = add i64 %2505, %2499
  %2507 = add i64 %2496, 13
  store i64 %2507, i64* %3, align 8
  %2508 = inttoptr i64 %2506 to i64*
  %2509 = load i64, i64* %2508, align 8
  store i64 %2509, i64* %2282, align 1
  store double 0.000000e+00, double* %2284, align 1
  %2510 = add i64 %2494, -64
  %2511 = add i64 %2496, 18
  store i64 %2511, i64* %3, align 8
  %2512 = inttoptr i64 %2510 to i64*
  store i64 %2509, i64* %2512, align 8
  %2513 = load i64, i64* %RBP.i, align 8
  %2514 = add i64 %2513, -24
  %2515 = load i64, i64* %3, align 8
  %2516 = add i64 %2515, 4
  store i64 %2516, i64* %3, align 8
  %2517 = inttoptr i64 %2514 to i64*
  %2518 = load i64, i64* %2517, align 8
  store i64 %2518, i64* %RCX.i1178, align 8
  %2519 = add i64 %2513, -32
  %2520 = add i64 %2515, 7
  store i64 %2520, i64* %3, align 8
  %2521 = inttoptr i64 %2519 to i32*
  %2522 = load i32, i32* %2521, align 4
  %2523 = add i32 %2522, 1
  %2524 = zext i32 %2523 to i64
  store i64 %2524, i64* %RAX.i1207, align 8
  %2525 = icmp eq i32 %2522, -1
  %2526 = icmp eq i32 %2523, 0
  %2527 = or i1 %2525, %2526
  %2528 = zext i1 %2527 to i8
  store i8 %2528, i8* %51, align 1
  %2529 = and i32 %2523, 255
  %2530 = tail call i32 @llvm.ctpop.i32(i32 %2529)
  %2531 = trunc i32 %2530 to i8
  %2532 = and i8 %2531, 1
  %2533 = xor i8 %2532, 1
  store i8 %2533, i8* %52, align 1
  %2534 = xor i32 %2523, %2522
  %2535 = lshr i32 %2534, 4
  %2536 = trunc i32 %2535 to i8
  %2537 = and i8 %2536, 1
  store i8 %2537, i8* %53, align 1
  %2538 = zext i1 %2526 to i8
  store i8 %2538, i8* %54, align 1
  %2539 = lshr i32 %2523, 31
  %2540 = trunc i32 %2539 to i8
  store i8 %2540, i8* %55, align 1
  %2541 = lshr i32 %2522, 31
  %2542 = xor i32 %2539, %2541
  %2543 = add nuw nsw i32 %2542, %2539
  %2544 = icmp eq i32 %2543, 2
  %2545 = zext i1 %2544 to i8
  store i8 %2545, i8* %56, align 1
  %2546 = sext i32 %2523 to i64
  store i64 %2546, i64* %RDX.i1221, align 8
  %2547 = shl nsw i64 %2546, 3
  %2548 = add i64 %2518, %2547
  %2549 = add i64 %2515, 18
  store i64 %2549, i64* %3, align 8
  %2550 = inttoptr i64 %2548 to i64*
  %2551 = load i64, i64* %2550, align 8
  store i64 %2551, i64* %2282, align 1
  store double 0.000000e+00, double* %2284, align 1
  %2552 = add i64 %2513, -72
  %2553 = add i64 %2515, 23
  store i64 %2553, i64* %3, align 8
  %2554 = inttoptr i64 %2552 to i64*
  store i64 %2551, i64* %2554, align 8
  %2555 = load i64, i64* %RBP.i, align 8
  %2556 = add i64 %2555, -24
  %2557 = load i64, i64* %3, align 8
  %2558 = add i64 %2557, 4
  store i64 %2558, i64* %3, align 8
  %2559 = inttoptr i64 %2556 to i64*
  %2560 = load i64, i64* %2559, align 8
  store i64 %2560, i64* %RCX.i1178, align 8
  %2561 = add i64 %2555, -40
  %2562 = add i64 %2557, 8
  store i64 %2562, i64* %3, align 8
  %2563 = inttoptr i64 %2561 to i32*
  %2564 = load i32, i32* %2563, align 4
  %2565 = sext i32 %2564 to i64
  store i64 %2565, i64* %RDX.i1221, align 8
  %2566 = shl nsw i64 %2565, 3
  %2567 = add i64 %2566, %2560
  %2568 = add i64 %2557, 13
  store i64 %2568, i64* %3, align 8
  %2569 = inttoptr i64 %2567 to i64*
  %2570 = load i64, i64* %2569, align 8
  store i64 %2570, i64* %2282, align 1
  store double 0.000000e+00, double* %2284, align 1
  %2571 = add i64 %2555, -80
  %2572 = add i64 %2557, 18
  store i64 %2572, i64* %3, align 8
  %2573 = inttoptr i64 %2571 to i64*
  store i64 %2570, i64* %2573, align 8
  %2574 = load i64, i64* %RBP.i, align 8
  %2575 = add i64 %2574, -24
  %2576 = load i64, i64* %3, align 8
  %2577 = add i64 %2576, 4
  store i64 %2577, i64* %3, align 8
  %2578 = inttoptr i64 %2575 to i64*
  %2579 = load i64, i64* %2578, align 8
  store i64 %2579, i64* %RCX.i1178, align 8
  %2580 = add i64 %2574, -40
  %2581 = add i64 %2576, 7
  store i64 %2581, i64* %3, align 8
  %2582 = inttoptr i64 %2580 to i32*
  %2583 = load i32, i32* %2582, align 4
  %2584 = add i32 %2583, 1
  %2585 = zext i32 %2584 to i64
  store i64 %2585, i64* %RAX.i1207, align 8
  %2586 = icmp eq i32 %2583, -1
  %2587 = icmp eq i32 %2584, 0
  %2588 = or i1 %2586, %2587
  %2589 = zext i1 %2588 to i8
  store i8 %2589, i8* %51, align 1
  %2590 = and i32 %2584, 255
  %2591 = tail call i32 @llvm.ctpop.i32(i32 %2590)
  %2592 = trunc i32 %2591 to i8
  %2593 = and i8 %2592, 1
  %2594 = xor i8 %2593, 1
  store i8 %2594, i8* %52, align 1
  %2595 = xor i32 %2584, %2583
  %2596 = lshr i32 %2595, 4
  %2597 = trunc i32 %2596 to i8
  %2598 = and i8 %2597, 1
  store i8 %2598, i8* %53, align 1
  %2599 = zext i1 %2587 to i8
  store i8 %2599, i8* %54, align 1
  %2600 = lshr i32 %2584, 31
  %2601 = trunc i32 %2600 to i8
  store i8 %2601, i8* %55, align 1
  %2602 = lshr i32 %2583, 31
  %2603 = xor i32 %2600, %2602
  %2604 = add nuw nsw i32 %2603, %2600
  %2605 = icmp eq i32 %2604, 2
  %2606 = zext i1 %2605 to i8
  store i8 %2606, i8* %56, align 1
  %2607 = sext i32 %2584 to i64
  store i64 %2607, i64* %RDX.i1221, align 8
  %2608 = shl nsw i64 %2607, 3
  %2609 = add i64 %2579, %2608
  %2610 = add i64 %2576, 18
  store i64 %2610, i64* %3, align 8
  %2611 = inttoptr i64 %2609 to i64*
  %2612 = load i64, i64* %2611, align 8
  store i64 %2612, i64* %2282, align 1
  store double 0.000000e+00, double* %2284, align 1
  %2613 = add i64 %2574, -88
  %2614 = add i64 %2576, 23
  store i64 %2614, i64* %3, align 8
  %2615 = inttoptr i64 %2613 to i64*
  store i64 %2612, i64* %2615, align 8
  %2616 = load i64, i64* %RBP.i, align 8
  %2617 = add i64 %2616, -80
  %2618 = load i64, i64* %3, align 8
  %2619 = add i64 %2618, 5
  store i64 %2619, i64* %3, align 8
  %2620 = inttoptr i64 %2617 to i64*
  %2621 = load i64, i64* %2620, align 8
  store i64 %2621, i64* %2282, align 1
  store double 0.000000e+00, double* %2284, align 1
  %2622 = add i64 %2616, -24
  %2623 = add i64 %2618, 9
  store i64 %2623, i64* %3, align 8
  %2624 = inttoptr i64 %2622 to i64*
  %2625 = load i64, i64* %2624, align 8
  store i64 %2625, i64* %RCX.i1178, align 8
  %2626 = add i64 %2616, -32
  %2627 = add i64 %2618, 13
  store i64 %2627, i64* %3, align 8
  %2628 = inttoptr i64 %2626 to i32*
  %2629 = load i32, i32* %2628, align 4
  %2630 = sext i32 %2629 to i64
  store i64 %2630, i64* %RDX.i1221, align 8
  %2631 = shl nsw i64 %2630, 3
  %2632 = add i64 %2631, %2625
  %2633 = add i64 %2618, 18
  store i64 %2633, i64* %3, align 8
  %2634 = inttoptr i64 %2632 to i64*
  store i64 %2621, i64* %2634, align 8
  %2635 = load i64, i64* %RBP.i, align 8
  %2636 = add i64 %2635, -88
  %2637 = load i64, i64* %3, align 8
  %2638 = add i64 %2637, 5
  store i64 %2638, i64* %3, align 8
  %2639 = inttoptr i64 %2636 to i64*
  %2640 = load i64, i64* %2639, align 8
  store i64 %2640, i64* %2282, align 1
  store double 0.000000e+00, double* %2284, align 1
  %2641 = add i64 %2635, -24
  %2642 = add i64 %2637, 9
  store i64 %2642, i64* %3, align 8
  %2643 = inttoptr i64 %2641 to i64*
  %2644 = load i64, i64* %2643, align 8
  store i64 %2644, i64* %RCX.i1178, align 8
  %2645 = add i64 %2635, -32
  %2646 = add i64 %2637, 12
  store i64 %2646, i64* %3, align 8
  %2647 = inttoptr i64 %2645 to i32*
  %2648 = load i32, i32* %2647, align 4
  %2649 = add i32 %2648, 1
  %2650 = zext i32 %2649 to i64
  store i64 %2650, i64* %RAX.i1207, align 8
  %2651 = icmp eq i32 %2648, -1
  %2652 = icmp eq i32 %2649, 0
  %2653 = or i1 %2651, %2652
  %2654 = zext i1 %2653 to i8
  store i8 %2654, i8* %51, align 1
  %2655 = and i32 %2649, 255
  %2656 = tail call i32 @llvm.ctpop.i32(i32 %2655)
  %2657 = trunc i32 %2656 to i8
  %2658 = and i8 %2657, 1
  %2659 = xor i8 %2658, 1
  store i8 %2659, i8* %52, align 1
  %2660 = xor i32 %2649, %2648
  %2661 = lshr i32 %2660, 4
  %2662 = trunc i32 %2661 to i8
  %2663 = and i8 %2662, 1
  store i8 %2663, i8* %53, align 1
  %2664 = zext i1 %2652 to i8
  store i8 %2664, i8* %54, align 1
  %2665 = lshr i32 %2649, 31
  %2666 = trunc i32 %2665 to i8
  store i8 %2666, i8* %55, align 1
  %2667 = lshr i32 %2648, 31
  %2668 = xor i32 %2665, %2667
  %2669 = add nuw nsw i32 %2668, %2665
  %2670 = icmp eq i32 %2669, 2
  %2671 = zext i1 %2670 to i8
  store i8 %2671, i8* %56, align 1
  %2672 = sext i32 %2649 to i64
  store i64 %2672, i64* %RDX.i1221, align 8
  %2673 = shl nsw i64 %2672, 3
  %2674 = add i64 %2644, %2673
  %2675 = add i64 %2637, 23
  store i64 %2675, i64* %3, align 8
  %2676 = inttoptr i64 %2674 to i64*
  store i64 %2640, i64* %2676, align 8
  %2677 = load i64, i64* %RBP.i, align 8
  %2678 = add i64 %2677, -64
  %2679 = load i64, i64* %3, align 8
  %2680 = add i64 %2679, 5
  store i64 %2680, i64* %3, align 8
  %2681 = inttoptr i64 %2678 to i64*
  %2682 = load i64, i64* %2681, align 8
  store i64 %2682, i64* %2282, align 1
  store double 0.000000e+00, double* %2284, align 1
  %2683 = add i64 %2677, -24
  %2684 = add i64 %2679, 9
  store i64 %2684, i64* %3, align 8
  %2685 = inttoptr i64 %2683 to i64*
  %2686 = load i64, i64* %2685, align 8
  store i64 %2686, i64* %RCX.i1178, align 8
  %2687 = add i64 %2677, -40
  %2688 = add i64 %2679, 13
  store i64 %2688, i64* %3, align 8
  %2689 = inttoptr i64 %2687 to i32*
  %2690 = load i32, i32* %2689, align 4
  %2691 = sext i32 %2690 to i64
  store i64 %2691, i64* %RDX.i1221, align 8
  %2692 = shl nsw i64 %2691, 3
  %2693 = add i64 %2692, %2686
  %2694 = add i64 %2679, 18
  store i64 %2694, i64* %3, align 8
  %2695 = inttoptr i64 %2693 to i64*
  store i64 %2682, i64* %2695, align 8
  %2696 = load i64, i64* %RBP.i, align 8
  %2697 = add i64 %2696, -72
  %2698 = load i64, i64* %3, align 8
  %2699 = add i64 %2698, 5
  store i64 %2699, i64* %3, align 8
  %2700 = inttoptr i64 %2697 to i64*
  %2701 = load i64, i64* %2700, align 8
  store i64 %2701, i64* %2282, align 1
  store double 0.000000e+00, double* %2284, align 1
  %2702 = add i64 %2696, -24
  %2703 = add i64 %2698, 9
  store i64 %2703, i64* %3, align 8
  %2704 = inttoptr i64 %2702 to i64*
  %2705 = load i64, i64* %2704, align 8
  store i64 %2705, i64* %RCX.i1178, align 8
  %2706 = add i64 %2696, -40
  %2707 = add i64 %2698, 12
  store i64 %2707, i64* %3, align 8
  %2708 = inttoptr i64 %2706 to i32*
  %2709 = load i32, i32* %2708, align 4
  %2710 = add i32 %2709, 1
  %2711 = zext i32 %2710 to i64
  store i64 %2711, i64* %RAX.i1207, align 8
  %2712 = icmp eq i32 %2709, -1
  %2713 = icmp eq i32 %2710, 0
  %2714 = or i1 %2712, %2713
  %2715 = zext i1 %2714 to i8
  store i8 %2715, i8* %51, align 1
  %2716 = and i32 %2710, 255
  %2717 = tail call i32 @llvm.ctpop.i32(i32 %2716)
  %2718 = trunc i32 %2717 to i8
  %2719 = and i8 %2718, 1
  %2720 = xor i8 %2719, 1
  store i8 %2720, i8* %52, align 1
  %2721 = xor i32 %2710, %2709
  %2722 = lshr i32 %2721, 4
  %2723 = trunc i32 %2722 to i8
  %2724 = and i8 %2723, 1
  store i8 %2724, i8* %53, align 1
  %2725 = zext i1 %2713 to i8
  store i8 %2725, i8* %54, align 1
  %2726 = lshr i32 %2710, 31
  %2727 = trunc i32 %2726 to i8
  store i8 %2727, i8* %55, align 1
  %2728 = lshr i32 %2709, 31
  %2729 = xor i32 %2726, %2728
  %2730 = add nuw nsw i32 %2729, %2726
  %2731 = icmp eq i32 %2730, 2
  %2732 = zext i1 %2731 to i8
  store i8 %2732, i8* %56, align 1
  %2733 = sext i32 %2710 to i64
  store i64 %2733, i64* %RDX.i1221, align 8
  %2734 = shl nsw i64 %2733, 3
  %2735 = add i64 %2705, %2734
  %2736 = add i64 %2698, 23
  store i64 %2736, i64* %3, align 8
  %2737 = inttoptr i64 %2735 to i64*
  store i64 %2701, i64* %2737, align 8
  %2738 = load i64, i64* %RBP.i, align 8
  %2739 = add i64 %2738, -52
  %2740 = load i64, i64* %3, align 8
  %2741 = add i64 %2740, 3
  store i64 %2741, i64* %3, align 8
  %2742 = inttoptr i64 %2739 to i32*
  %2743 = load i32, i32* %2742, align 4
  %2744 = zext i32 %2743 to i64
  store i64 %2744, i64* %RAX.i1207, align 8
  %2745 = add i64 %2738, -32
  %2746 = add i64 %2740, 6
  store i64 %2746, i64* %3, align 8
  %2747 = inttoptr i64 %2745 to i32*
  %2748 = load i32, i32* %2747, align 4
  %2749 = add i32 %2748, %2743
  %2750 = zext i32 %2749 to i64
  store i64 %2750, i64* %RAX.i1207, align 8
  %2751 = icmp ult i32 %2749, %2743
  %2752 = icmp ult i32 %2749, %2748
  %2753 = or i1 %2751, %2752
  %2754 = zext i1 %2753 to i8
  store i8 %2754, i8* %51, align 1
  %2755 = and i32 %2749, 255
  %2756 = tail call i32 @llvm.ctpop.i32(i32 %2755)
  %2757 = trunc i32 %2756 to i8
  %2758 = and i8 %2757, 1
  %2759 = xor i8 %2758, 1
  store i8 %2759, i8* %52, align 1
  %2760 = xor i32 %2748, %2743
  %2761 = xor i32 %2760, %2749
  %2762 = lshr i32 %2761, 4
  %2763 = trunc i32 %2762 to i8
  %2764 = and i8 %2763, 1
  store i8 %2764, i8* %53, align 1
  %2765 = icmp eq i32 %2749, 0
  %2766 = zext i1 %2765 to i8
  store i8 %2766, i8* %54, align 1
  %2767 = lshr i32 %2749, 31
  %2768 = trunc i32 %2767 to i8
  store i8 %2768, i8* %55, align 1
  %2769 = lshr i32 %2743, 31
  %2770 = lshr i32 %2748, 31
  %2771 = xor i32 %2767, %2769
  %2772 = xor i32 %2767, %2770
  %2773 = add nuw nsw i32 %2771, %2772
  %2774 = icmp eq i32 %2773, 2
  %2775 = zext i1 %2774 to i8
  store i8 %2775, i8* %56, align 1
  %2776 = add i64 %2740, 9
  store i64 %2776, i64* %3, align 8
  store i32 %2749, i32* %2747, align 4
  %2777 = load i64, i64* %RBP.i, align 8
  %2778 = add i64 %2777, -52
  %2779 = load i64, i64* %3, align 8
  %2780 = add i64 %2779, 3
  store i64 %2780, i64* %3, align 8
  %2781 = inttoptr i64 %2778 to i32*
  %2782 = load i32, i32* %2781, align 4
  %2783 = zext i32 %2782 to i64
  store i64 %2783, i64* %RAX.i1207, align 8
  %2784 = add i64 %2777, -40
  %2785 = add i64 %2779, 6
  store i64 %2785, i64* %3, align 8
  %2786 = inttoptr i64 %2784 to i32*
  %2787 = load i32, i32* %2786, align 4
  %2788 = add i32 %2787, %2782
  %2789 = zext i32 %2788 to i64
  store i64 %2789, i64* %RAX.i1207, align 8
  %2790 = icmp ult i32 %2788, %2782
  %2791 = icmp ult i32 %2788, %2787
  %2792 = or i1 %2790, %2791
  %2793 = zext i1 %2792 to i8
  store i8 %2793, i8* %51, align 1
  %2794 = and i32 %2788, 255
  %2795 = tail call i32 @llvm.ctpop.i32(i32 %2794)
  %2796 = trunc i32 %2795 to i8
  %2797 = and i8 %2796, 1
  %2798 = xor i8 %2797, 1
  store i8 %2798, i8* %52, align 1
  %2799 = xor i32 %2787, %2782
  %2800 = xor i32 %2799, %2788
  %2801 = lshr i32 %2800, 4
  %2802 = trunc i32 %2801 to i8
  %2803 = and i8 %2802, 1
  store i8 %2803, i8* %53, align 1
  %2804 = icmp eq i32 %2788, 0
  %2805 = zext i1 %2804 to i8
  store i8 %2805, i8* %54, align 1
  %2806 = lshr i32 %2788, 31
  %2807 = trunc i32 %2806 to i8
  store i8 %2807, i8* %55, align 1
  %2808 = lshr i32 %2782, 31
  %2809 = lshr i32 %2787, 31
  %2810 = xor i32 %2806, %2808
  %2811 = xor i32 %2806, %2809
  %2812 = add nuw nsw i32 %2810, %2811
  %2813 = icmp eq i32 %2812, 2
  %2814 = zext i1 %2813 to i8
  store i8 %2814, i8* %56, align 1
  %2815 = add i64 %2779, 9
  store i64 %2815, i64* %3, align 8
  store i32 %2788, i32* %2786, align 4
  %2816 = load i64, i64* %RBP.i, align 8
  %2817 = add i64 %2816, -24
  %2818 = load i64, i64* %3, align 8
  %2819 = add i64 %2818, 4
  store i64 %2819, i64* %3, align 8
  %2820 = inttoptr i64 %2817 to i64*
  %2821 = load i64, i64* %2820, align 8
  store i64 %2821, i64* %RCX.i1178, align 8
  %2822 = add i64 %2816, -32
  %2823 = add i64 %2818, 8
  store i64 %2823, i64* %3, align 8
  %2824 = inttoptr i64 %2822 to i32*
  %2825 = load i32, i32* %2824, align 4
  %2826 = sext i32 %2825 to i64
  store i64 %2826, i64* %RDX.i1221, align 8
  %2827 = shl nsw i64 %2826, 3
  %2828 = add i64 %2827, %2821
  %2829 = add i64 %2818, 13
  store i64 %2829, i64* %3, align 8
  %2830 = inttoptr i64 %2828 to i64*
  %2831 = load i64, i64* %2830, align 8
  store i64 %2831, i64* %2282, align 1
  store double 0.000000e+00, double* %2284, align 1
  %2832 = add i64 %2816, -64
  %2833 = add i64 %2818, 18
  store i64 %2833, i64* %3, align 8
  %2834 = inttoptr i64 %2832 to i64*
  store i64 %2831, i64* %2834, align 8
  %2835 = load i64, i64* %RBP.i, align 8
  %2836 = add i64 %2835, -24
  %2837 = load i64, i64* %3, align 8
  %2838 = add i64 %2837, 4
  store i64 %2838, i64* %3, align 8
  %2839 = inttoptr i64 %2836 to i64*
  %2840 = load i64, i64* %2839, align 8
  store i64 %2840, i64* %RCX.i1178, align 8
  %2841 = add i64 %2835, -32
  %2842 = add i64 %2837, 7
  store i64 %2842, i64* %3, align 8
  %2843 = inttoptr i64 %2841 to i32*
  %2844 = load i32, i32* %2843, align 4
  %2845 = add i32 %2844, 1
  %2846 = zext i32 %2845 to i64
  store i64 %2846, i64* %RAX.i1207, align 8
  %2847 = icmp eq i32 %2844, -1
  %2848 = icmp eq i32 %2845, 0
  %2849 = or i1 %2847, %2848
  %2850 = zext i1 %2849 to i8
  store i8 %2850, i8* %51, align 1
  %2851 = and i32 %2845, 255
  %2852 = tail call i32 @llvm.ctpop.i32(i32 %2851)
  %2853 = trunc i32 %2852 to i8
  %2854 = and i8 %2853, 1
  %2855 = xor i8 %2854, 1
  store i8 %2855, i8* %52, align 1
  %2856 = xor i32 %2845, %2844
  %2857 = lshr i32 %2856, 4
  %2858 = trunc i32 %2857 to i8
  %2859 = and i8 %2858, 1
  store i8 %2859, i8* %53, align 1
  %2860 = zext i1 %2848 to i8
  store i8 %2860, i8* %54, align 1
  %2861 = lshr i32 %2845, 31
  %2862 = trunc i32 %2861 to i8
  store i8 %2862, i8* %55, align 1
  %2863 = lshr i32 %2844, 31
  %2864 = xor i32 %2861, %2863
  %2865 = add nuw nsw i32 %2864, %2861
  %2866 = icmp eq i32 %2865, 2
  %2867 = zext i1 %2866 to i8
  store i8 %2867, i8* %56, align 1
  %2868 = sext i32 %2845 to i64
  store i64 %2868, i64* %RDX.i1221, align 8
  %2869 = shl nsw i64 %2868, 3
  %2870 = add i64 %2840, %2869
  %2871 = add i64 %2837, 18
  store i64 %2871, i64* %3, align 8
  %2872 = inttoptr i64 %2870 to i64*
  %2873 = load i64, i64* %2872, align 8
  store i64 %2873, i64* %2282, align 1
  store double 0.000000e+00, double* %2284, align 1
  %2874 = add i64 %2835, -72
  %2875 = add i64 %2837, 23
  store i64 %2875, i64* %3, align 8
  %2876 = inttoptr i64 %2874 to i64*
  store i64 %2873, i64* %2876, align 8
  %2877 = load i64, i64* %RBP.i, align 8
  %2878 = add i64 %2877, -24
  %2879 = load i64, i64* %3, align 8
  %2880 = add i64 %2879, 4
  store i64 %2880, i64* %3, align 8
  %2881 = inttoptr i64 %2878 to i64*
  %2882 = load i64, i64* %2881, align 8
  store i64 %2882, i64* %RCX.i1178, align 8
  %2883 = add i64 %2877, -40
  %2884 = add i64 %2879, 8
  store i64 %2884, i64* %3, align 8
  %2885 = inttoptr i64 %2883 to i32*
  %2886 = load i32, i32* %2885, align 4
  %2887 = sext i32 %2886 to i64
  store i64 %2887, i64* %RDX.i1221, align 8
  %2888 = shl nsw i64 %2887, 3
  %2889 = add i64 %2888, %2882
  %2890 = add i64 %2879, 13
  store i64 %2890, i64* %3, align 8
  %2891 = inttoptr i64 %2889 to i64*
  %2892 = load i64, i64* %2891, align 8
  store i64 %2892, i64* %2282, align 1
  store double 0.000000e+00, double* %2284, align 1
  %2893 = add i64 %2877, -80
  %2894 = add i64 %2879, 18
  store i64 %2894, i64* %3, align 8
  %2895 = inttoptr i64 %2893 to i64*
  store i64 %2892, i64* %2895, align 8
  %2896 = load i64, i64* %RBP.i, align 8
  %2897 = add i64 %2896, -24
  %2898 = load i64, i64* %3, align 8
  %2899 = add i64 %2898, 4
  store i64 %2899, i64* %3, align 8
  %2900 = inttoptr i64 %2897 to i64*
  %2901 = load i64, i64* %2900, align 8
  store i64 %2901, i64* %RCX.i1178, align 8
  %2902 = add i64 %2896, -40
  %2903 = add i64 %2898, 7
  store i64 %2903, i64* %3, align 8
  %2904 = inttoptr i64 %2902 to i32*
  %2905 = load i32, i32* %2904, align 4
  %2906 = add i32 %2905, 1
  %2907 = zext i32 %2906 to i64
  store i64 %2907, i64* %RAX.i1207, align 8
  %2908 = icmp eq i32 %2905, -1
  %2909 = icmp eq i32 %2906, 0
  %2910 = or i1 %2908, %2909
  %2911 = zext i1 %2910 to i8
  store i8 %2911, i8* %51, align 1
  %2912 = and i32 %2906, 255
  %2913 = tail call i32 @llvm.ctpop.i32(i32 %2912)
  %2914 = trunc i32 %2913 to i8
  %2915 = and i8 %2914, 1
  %2916 = xor i8 %2915, 1
  store i8 %2916, i8* %52, align 1
  %2917 = xor i32 %2906, %2905
  %2918 = lshr i32 %2917, 4
  %2919 = trunc i32 %2918 to i8
  %2920 = and i8 %2919, 1
  store i8 %2920, i8* %53, align 1
  %2921 = zext i1 %2909 to i8
  store i8 %2921, i8* %54, align 1
  %2922 = lshr i32 %2906, 31
  %2923 = trunc i32 %2922 to i8
  store i8 %2923, i8* %55, align 1
  %2924 = lshr i32 %2905, 31
  %2925 = xor i32 %2922, %2924
  %2926 = add nuw nsw i32 %2925, %2922
  %2927 = icmp eq i32 %2926, 2
  %2928 = zext i1 %2927 to i8
  store i8 %2928, i8* %56, align 1
  %2929 = sext i32 %2906 to i64
  store i64 %2929, i64* %RDX.i1221, align 8
  %2930 = shl nsw i64 %2929, 3
  %2931 = add i64 %2901, %2930
  %2932 = add i64 %2898, 18
  store i64 %2932, i64* %3, align 8
  %2933 = inttoptr i64 %2931 to i64*
  %2934 = load i64, i64* %2933, align 8
  store i64 %2934, i64* %2282, align 1
  store double 0.000000e+00, double* %2284, align 1
  %2935 = add i64 %2896, -88
  %2936 = add i64 %2898, 23
  store i64 %2936, i64* %3, align 8
  %2937 = inttoptr i64 %2935 to i64*
  store i64 %2934, i64* %2937, align 8
  %2938 = load i64, i64* %RBP.i, align 8
  %2939 = add i64 %2938, -80
  %2940 = load i64, i64* %3, align 8
  %2941 = add i64 %2940, 5
  store i64 %2941, i64* %3, align 8
  %2942 = inttoptr i64 %2939 to i64*
  %2943 = load i64, i64* %2942, align 8
  store i64 %2943, i64* %2282, align 1
  store double 0.000000e+00, double* %2284, align 1
  %2944 = add i64 %2938, -24
  %2945 = add i64 %2940, 9
  store i64 %2945, i64* %3, align 8
  %2946 = inttoptr i64 %2944 to i64*
  %2947 = load i64, i64* %2946, align 8
  store i64 %2947, i64* %RCX.i1178, align 8
  %2948 = add i64 %2938, -32
  %2949 = add i64 %2940, 13
  store i64 %2949, i64* %3, align 8
  %2950 = inttoptr i64 %2948 to i32*
  %2951 = load i32, i32* %2950, align 4
  %2952 = sext i32 %2951 to i64
  store i64 %2952, i64* %RDX.i1221, align 8
  %2953 = shl nsw i64 %2952, 3
  %2954 = add i64 %2953, %2947
  %2955 = add i64 %2940, 18
  store i64 %2955, i64* %3, align 8
  %2956 = inttoptr i64 %2954 to i64*
  store i64 %2943, i64* %2956, align 8
  %2957 = load i64, i64* %RBP.i, align 8
  %2958 = add i64 %2957, -88
  %2959 = load i64, i64* %3, align 8
  %2960 = add i64 %2959, 5
  store i64 %2960, i64* %3, align 8
  %2961 = inttoptr i64 %2958 to i64*
  %2962 = load i64, i64* %2961, align 8
  store i64 %2962, i64* %2282, align 1
  store double 0.000000e+00, double* %2284, align 1
  %2963 = add i64 %2957, -24
  %2964 = add i64 %2959, 9
  store i64 %2964, i64* %3, align 8
  %2965 = inttoptr i64 %2963 to i64*
  %2966 = load i64, i64* %2965, align 8
  store i64 %2966, i64* %RCX.i1178, align 8
  %2967 = add i64 %2957, -32
  %2968 = add i64 %2959, 12
  store i64 %2968, i64* %3, align 8
  %2969 = inttoptr i64 %2967 to i32*
  %2970 = load i32, i32* %2969, align 4
  %2971 = add i32 %2970, 1
  %2972 = zext i32 %2971 to i64
  store i64 %2972, i64* %RAX.i1207, align 8
  %2973 = icmp eq i32 %2970, -1
  %2974 = icmp eq i32 %2971, 0
  %2975 = or i1 %2973, %2974
  %2976 = zext i1 %2975 to i8
  store i8 %2976, i8* %51, align 1
  %2977 = and i32 %2971, 255
  %2978 = tail call i32 @llvm.ctpop.i32(i32 %2977)
  %2979 = trunc i32 %2978 to i8
  %2980 = and i8 %2979, 1
  %2981 = xor i8 %2980, 1
  store i8 %2981, i8* %52, align 1
  %2982 = xor i32 %2971, %2970
  %2983 = lshr i32 %2982, 4
  %2984 = trunc i32 %2983 to i8
  %2985 = and i8 %2984, 1
  store i8 %2985, i8* %53, align 1
  %2986 = zext i1 %2974 to i8
  store i8 %2986, i8* %54, align 1
  %2987 = lshr i32 %2971, 31
  %2988 = trunc i32 %2987 to i8
  store i8 %2988, i8* %55, align 1
  %2989 = lshr i32 %2970, 31
  %2990 = xor i32 %2987, %2989
  %2991 = add nuw nsw i32 %2990, %2987
  %2992 = icmp eq i32 %2991, 2
  %2993 = zext i1 %2992 to i8
  store i8 %2993, i8* %56, align 1
  %2994 = sext i32 %2971 to i64
  store i64 %2994, i64* %RDX.i1221, align 8
  %2995 = shl nsw i64 %2994, 3
  %2996 = add i64 %2966, %2995
  %2997 = add i64 %2959, 23
  store i64 %2997, i64* %3, align 8
  %2998 = inttoptr i64 %2996 to i64*
  store i64 %2962, i64* %2998, align 8
  %2999 = load i64, i64* %RBP.i, align 8
  %3000 = add i64 %2999, -64
  %3001 = load i64, i64* %3, align 8
  %3002 = add i64 %3001, 5
  store i64 %3002, i64* %3, align 8
  %3003 = inttoptr i64 %3000 to i64*
  %3004 = load i64, i64* %3003, align 8
  store i64 %3004, i64* %2282, align 1
  store double 0.000000e+00, double* %2284, align 1
  %3005 = add i64 %2999, -24
  %3006 = add i64 %3001, 9
  store i64 %3006, i64* %3, align 8
  %3007 = inttoptr i64 %3005 to i64*
  %3008 = load i64, i64* %3007, align 8
  store i64 %3008, i64* %RCX.i1178, align 8
  %3009 = add i64 %2999, -40
  %3010 = add i64 %3001, 13
  store i64 %3010, i64* %3, align 8
  %3011 = inttoptr i64 %3009 to i32*
  %3012 = load i32, i32* %3011, align 4
  %3013 = sext i32 %3012 to i64
  store i64 %3013, i64* %RDX.i1221, align 8
  %3014 = shl nsw i64 %3013, 3
  %3015 = add i64 %3014, %3008
  %3016 = add i64 %3001, 18
  store i64 %3016, i64* %3, align 8
  %3017 = inttoptr i64 %3015 to i64*
  store i64 %3004, i64* %3017, align 8
  %3018 = load i64, i64* %RBP.i, align 8
  %3019 = add i64 %3018, -72
  %3020 = load i64, i64* %3, align 8
  %3021 = add i64 %3020, 5
  store i64 %3021, i64* %3, align 8
  %3022 = inttoptr i64 %3019 to i64*
  %3023 = load i64, i64* %3022, align 8
  store i64 %3023, i64* %2282, align 1
  store double 0.000000e+00, double* %2284, align 1
  %3024 = add i64 %3018, -24
  %3025 = add i64 %3020, 9
  store i64 %3025, i64* %3, align 8
  %3026 = inttoptr i64 %3024 to i64*
  %3027 = load i64, i64* %3026, align 8
  store i64 %3027, i64* %RCX.i1178, align 8
  %3028 = add i64 %3018, -40
  %3029 = add i64 %3020, 12
  store i64 %3029, i64* %3, align 8
  %3030 = inttoptr i64 %3028 to i32*
  %3031 = load i32, i32* %3030, align 4
  %3032 = add i32 %3031, 1
  %3033 = zext i32 %3032 to i64
  store i64 %3033, i64* %RAX.i1207, align 8
  %3034 = icmp eq i32 %3031, -1
  %3035 = icmp eq i32 %3032, 0
  %3036 = or i1 %3034, %3035
  %3037 = zext i1 %3036 to i8
  store i8 %3037, i8* %51, align 1
  %3038 = and i32 %3032, 255
  %3039 = tail call i32 @llvm.ctpop.i32(i32 %3038)
  %3040 = trunc i32 %3039 to i8
  %3041 = and i8 %3040, 1
  %3042 = xor i8 %3041, 1
  store i8 %3042, i8* %52, align 1
  %3043 = xor i32 %3032, %3031
  %3044 = lshr i32 %3043, 4
  %3045 = trunc i32 %3044 to i8
  %3046 = and i8 %3045, 1
  store i8 %3046, i8* %53, align 1
  %3047 = zext i1 %3035 to i8
  store i8 %3047, i8* %54, align 1
  %3048 = lshr i32 %3032, 31
  %3049 = trunc i32 %3048 to i8
  store i8 %3049, i8* %55, align 1
  %3050 = lshr i32 %3031, 31
  %3051 = xor i32 %3048, %3050
  %3052 = add nuw nsw i32 %3051, %3048
  %3053 = icmp eq i32 %3052, 2
  %3054 = zext i1 %3053 to i8
  store i8 %3054, i8* %56, align 1
  %3055 = sext i32 %3032 to i64
  store i64 %3055, i64* %RDX.i1221, align 8
  %3056 = shl nsw i64 %3055, 3
  %3057 = add i64 %3027, %3056
  %3058 = add i64 %3020, 23
  store i64 %3058, i64* %3, align 8
  %3059 = inttoptr i64 %3057 to i64*
  store i64 %3023, i64* %3059, align 8
  %3060 = load i64, i64* %RBP.i, align 8
  %3061 = add i64 %3060, -28
  %3062 = load i64, i64* %3, align 8
  %3063 = add i64 %3062, 3
  store i64 %3063, i64* %3, align 8
  %3064 = inttoptr i64 %3061 to i32*
  %3065 = load i32, i32* %3064, align 4
  %3066 = add i32 %3065, 1
  %3067 = zext i32 %3066 to i64
  store i64 %3067, i64* %RAX.i1207, align 8
  %3068 = icmp eq i32 %3065, -1
  %3069 = icmp eq i32 %3066, 0
  %3070 = or i1 %3068, %3069
  %3071 = zext i1 %3070 to i8
  store i8 %3071, i8* %51, align 1
  %3072 = and i32 %3066, 255
  %3073 = tail call i32 @llvm.ctpop.i32(i32 %3072)
  %3074 = trunc i32 %3073 to i8
  %3075 = and i8 %3074, 1
  %3076 = xor i8 %3075, 1
  store i8 %3076, i8* %52, align 1
  %3077 = xor i32 %3066, %3065
  %3078 = lshr i32 %3077, 4
  %3079 = trunc i32 %3078 to i8
  %3080 = and i8 %3079, 1
  store i8 %3080, i8* %53, align 1
  %3081 = zext i1 %3069 to i8
  store i8 %3081, i8* %54, align 1
  %3082 = lshr i32 %3066, 31
  %3083 = trunc i32 %3082 to i8
  store i8 %3083, i8* %55, align 1
  %3084 = lshr i32 %3065, 31
  %3085 = xor i32 %3082, %3084
  %3086 = add nuw nsw i32 %3085, %3082
  %3087 = icmp eq i32 %3086, 2
  %3088 = zext i1 %3087 to i8
  store i8 %3088, i8* %56, align 1
  %3089 = add i64 %3062, 9
  store i64 %3089, i64* %3, align 8
  store i32 %3066, i32* %3064, align 4
  %3090 = load i64, i64* %3, align 8
  %3091 = add i64 %3090, -407
  store i64 %3091, i64* %3, align 8
  br label %block_.L_40169e

block_.L_40183a:                                  ; preds = %block_.L_40169e
  %3092 = add i64 %2363, 8
  store i64 %3092, i64* %3, align 8
  %3093 = load i32, i32* %2335, align 4
  %3094 = add i32 %3093, 1
  %3095 = zext i32 %3094 to i64
  store i64 %3095, i64* %RAX.i1207, align 8
  %3096 = icmp eq i32 %3093, -1
  %3097 = icmp eq i32 %3094, 0
  %3098 = or i1 %3096, %3097
  %3099 = zext i1 %3098 to i8
  store i8 %3099, i8* %51, align 1
  %3100 = and i32 %3094, 255
  %3101 = tail call i32 @llvm.ctpop.i32(i32 %3100)
  %3102 = trunc i32 %3101 to i8
  %3103 = and i8 %3102, 1
  %3104 = xor i8 %3103, 1
  store i8 %3104, i8* %52, align 1
  %3105 = xor i32 %3094, %3093
  %3106 = lshr i32 %3105, 4
  %3107 = trunc i32 %3106 to i8
  %3108 = and i8 %3107, 1
  store i8 %3108, i8* %53, align 1
  %3109 = zext i1 %3097 to i8
  store i8 %3109, i8* %54, align 1
  %3110 = lshr i32 %3094, 31
  %3111 = trunc i32 %3110 to i8
  store i8 %3111, i8* %55, align 1
  %3112 = lshr i32 %3093, 31
  %3113 = xor i32 %3110, %3112
  %3114 = add nuw nsw i32 %3113, %3110
  %3115 = icmp eq i32 %3114, 2
  %3116 = zext i1 %3115 to i8
  store i8 %3116, i8* %56, align 1
  %3117 = add i64 %2363, 14
  store i64 %3117, i64* %3, align 8
  store i32 %3094, i32* %2335, align 4
  %3118 = load i64, i64* %3, align 8
  %3119 = add i64 %3118, -445
  store i64 %3119, i64* %3, align 8
  br label %block_.L_40168b

block_.L_40184d:                                  ; preds = %block_.L_40168b
  %3120 = add i64 %2322, 5
  store i64 %3120, i64* %3, align 8
  br label %block_.L_401852

block_.L_401852:                                  ; preds = %block_.L_40184d, %block_.L_40167f
  %storemerge = phi i64 [ %2281, %block_.L_40167f ], [ %3120, %block_.L_40184d ]
  %3121 = add i64 %storemerge, 1
  store i64 %3121, i64* %3, align 8
  %3122 = load i64, i64* %6, align 8
  %3123 = add i64 %3122, 8
  %3124 = inttoptr i64 %3122 to i64*
  %3125 = load i64, i64* %3124, align 8
  store i64 %3125, i64* %RBP.i, align 8
  store i64 %3123, i64* %6, align 8
  %3126 = add i64 %storemerge, 2
  store i64 %3126, i64* %3, align 8
  %3127 = inttoptr i64 %3123 to i64*
  %3128 = load i64, i64* %3127, align 8
  store i64 %3128, i64* %3, align 8
  %3129 = add i64 %3122, 16
  store i64 %3129, i64* %6, align 8
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
define %struct.Memory* @routine_jge_.L_40126b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_40125d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_401225(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_401206(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_401684(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_40167f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_4015ad(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl___rcx__rdx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %RDX, align 8
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
  store i64 %14, i64* %RAX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x20__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x28__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
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
define %struct.Memory* @routine_movl_MINUS0x28__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
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
define %struct.Memory* @routine_subl__eax___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RSI, align 8
  %5 = load i32, i32* %EAX, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %4 to i32
  %10 = sub i32 %9, %5
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RSI, align 8
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
define %struct.Memory* @routine_movl__esi__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -40
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40129d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x34__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
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
define %struct.Memory* @routine_jmpq_.L_40128a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_401852(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jge_.L_40184d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_40183a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_40169e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40183f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40168b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
