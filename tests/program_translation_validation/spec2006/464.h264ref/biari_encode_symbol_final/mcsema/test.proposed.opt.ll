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
define %struct.Memory* @biari_encode_symbol_final(%struct.State* noalias, i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #1 {
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
  %AX.i586 = bitcast %union.anon* %11 to i16*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SI.i = bitcast %union.anon* %12 to i16*
  %13 = load i16, i16* %SI.i, align 2
  store i16 %13, i16* %AX.i586, align 2
  %RDI.i583 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %14 = add i64 %7, -16
  %15 = load i64, i64* %RDI.i583, align 8
  %16 = add i64 %10, 10
  store i64 %16, i64* %3, align 8
  %17 = inttoptr i64 %14 to i64*
  store i64 %15, i64* %17, align 8
  %18 = load i64, i64* %RBP.i, align 8
  %19 = add i64 %18, -10
  %20 = load i16, i16* %AX.i586, align 2
  %21 = load i64, i64* %3, align 8
  %22 = add i64 %21, 4
  store i64 %22, i64* %3, align 8
  %23 = inttoptr i64 %19 to i16*
  store i16 %20, i16* %23, align 2
  %24 = load i64, i64* %RBP.i, align 8
  %25 = add i64 %24, -8
  %26 = load i64, i64* %3, align 8
  %27 = add i64 %26, 4
  store i64 %27, i64* %3, align 8
  %28 = inttoptr i64 %25 to i64*
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %RDI.i583, align 8
  %RSI.i575 = getelementptr inbounds %union.anon, %union.anon* %12, i64 0, i32 0
  %30 = add i64 %29, 4
  %31 = add i64 %26, 7
  store i64 %31, i64* %3, align 8
  %32 = inttoptr i64 %30 to i32*
  %33 = load i32, i32* %32, align 4
  %34 = add i32 %33, -2
  %35 = zext i32 %34 to i64
  store i64 %35, i64* %RSI.i575, align 8
  %36 = icmp ult i32 %33, 2
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %37, i8* %38, align 1
  %39 = and i32 %34, 255
  %40 = tail call i32 @llvm.ctpop.i32(i32 %39)
  %41 = trunc i32 %40 to i8
  %42 = and i8 %41, 1
  %43 = xor i8 %42, 1
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %43, i8* %44, align 1
  %45 = xor i32 %34, %33
  %46 = lshr i32 %45, 4
  %47 = trunc i32 %46 to i8
  %48 = and i8 %47, 1
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %48, i8* %49, align 1
  %50 = icmp eq i32 %34, 0
  %51 = zext i1 %50 to i8
  %52 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %51, i8* %52, align 1
  %53 = lshr i32 %34, 31
  %54 = trunc i32 %53 to i8
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %54, i8* %55, align 1
  %56 = lshr i32 %33, 31
  %57 = xor i32 %53, %56
  %58 = add nuw nsw i32 %57, %56
  %59 = icmp eq i32 %58, 2
  %60 = zext i1 %59 to i8
  %61 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %60, i8* %61, align 1
  %62 = add i64 %24, -16
  %63 = add i64 %26, 13
  store i64 %63, i64* %3, align 8
  %64 = inttoptr i64 %62 to i32*
  store i32 %34, i32* %64, align 4
  %65 = load i64, i64* %RBP.i, align 8
  %66 = add i64 %65, -8
  %67 = load i64, i64* %3, align 8
  %68 = add i64 %67, 4
  store i64 %68, i64* %3, align 8
  %69 = inttoptr i64 %66 to i64*
  %70 = load i64, i64* %69, align 8
  store i64 %70, i64* %RDI.i583, align 8
  %71 = add i64 %67, 6
  store i64 %71, i64* %3, align 8
  %72 = inttoptr i64 %70 to i32*
  %73 = load i32, i32* %72, align 4
  %74 = zext i32 %73 to i64
  store i64 %74, i64* %RSI.i575, align 8
  %75 = add i64 %65, -20
  %76 = add i64 %67, 9
  store i64 %76, i64* %3, align 8
  %77 = inttoptr i64 %75 to i32*
  store i32 %73, i32* %77, align 4
  %78 = load i64, i64* %RBP.i, align 8
  %79 = add i64 %78, -10
  %80 = load i64, i64* %3, align 8
  %81 = add i64 %80, 5
  store i64 %81, i64* %3, align 8
  %82 = inttoptr i64 %79 to i16*
  %83 = load i16, i16* %82, align 2
  store i8 0, i8* %38, align 1
  %84 = and i16 %83, 255
  %85 = zext i16 %84 to i32
  %86 = tail call i32 @llvm.ctpop.i32(i32 %85)
  %87 = trunc i32 %86 to i8
  %88 = and i8 %87, 1
  %89 = xor i8 %88, 1
  store i8 %89, i8* %44, align 1
  store i8 0, i8* %49, align 1
  %90 = icmp eq i16 %83, 0
  %91 = zext i1 %90 to i8
  store i8 %91, i8* %52, align 1
  %92 = lshr i16 %83, 15
  %93 = trunc i16 %92 to i8
  store i8 %93, i8* %55, align 1
  store i8 0, i8* %61, align 1
  %.v45 = select i1 %90, i64 27, i64 11
  %94 = add i64 %80, %.v45
  store i64 %94, i64* %3, align 8
  %.pre41 = getelementptr inbounds %union.anon, %union.anon* %11, i64 0, i32 0
  br i1 %90, label %block_.L_402160, label %block_402150

block_402150:                                     ; preds = %entry
  %95 = add i64 %78, -16
  %96 = add i64 %94, 3
  store i64 %96, i64* %3, align 8
  %97 = inttoptr i64 %95 to i32*
  %98 = load i32, i32* %97, align 4
  %99 = zext i32 %98 to i64
  store i64 %99, i64* %.pre41, align 8
  %100 = add i64 %78, -20
  %101 = add i64 %94, 6
  store i64 %101, i64* %3, align 8
  %102 = inttoptr i64 %100 to i32*
  %103 = load i32, i32* %102, align 4
  %104 = add i32 %103, %98
  %105 = zext i32 %104 to i64
  store i64 %105, i64* %.pre41, align 8
  %106 = icmp ult i32 %104, %98
  %107 = icmp ult i32 %104, %103
  %108 = or i1 %106, %107
  %109 = zext i1 %108 to i8
  store i8 %109, i8* %38, align 1
  %110 = and i32 %104, 255
  %111 = tail call i32 @llvm.ctpop.i32(i32 %110)
  %112 = trunc i32 %111 to i8
  %113 = and i8 %112, 1
  %114 = xor i8 %113, 1
  store i8 %114, i8* %44, align 1
  %115 = xor i32 %103, %98
  %116 = xor i32 %115, %104
  %117 = lshr i32 %116, 4
  %118 = trunc i32 %117 to i8
  %119 = and i8 %118, 1
  store i8 %119, i8* %49, align 1
  %120 = icmp eq i32 %104, 0
  %121 = zext i1 %120 to i8
  store i8 %121, i8* %52, align 1
  %122 = lshr i32 %104, 31
  %123 = trunc i32 %122 to i8
  store i8 %123, i8* %55, align 1
  %124 = lshr i32 %98, 31
  %125 = lshr i32 %103, 31
  %126 = xor i32 %122, %124
  %127 = xor i32 %122, %125
  %128 = add nuw nsw i32 %126, %127
  %129 = icmp eq i32 %128, 2
  %130 = zext i1 %129 to i8
  store i8 %130, i8* %61, align 1
  %131 = add i64 %94, 9
  store i64 %131, i64* %3, align 8
  store i32 %104, i32* %102, align 4
  %132 = load i64, i64* %RBP.i, align 8
  %133 = add i64 %132, -16
  %134 = load i64, i64* %3, align 8
  %135 = add i64 %134, 7
  store i64 %135, i64* %3, align 8
  %136 = inttoptr i64 %133 to i32*
  store i32 2, i32* %136, align 4
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_402160

block_.L_402160:                                  ; preds = %entry, %block_402150
  %137 = phi i64 [ %.pre, %block_402150 ], [ %94, %entry ]
  %138 = add i64 %137, 5
  %139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i62 = getelementptr inbounds %union.anon, %union.anon* %139, i64 0, i32 0
  %ECX.i56 = bitcast %union.anon* %139 to i32*
  %140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL.i128 = bitcast %union.anon* %140 to i8*
  br label %block_.L_402165

block_.L_402165:                                  ; preds = %block_.L_402457, %block_.L_402160
  %storemerge = phi i64 [ %138, %block_.L_402160 ], [ %1413, %block_.L_402457 ]
  %141 = load i64, i64* %RBP.i, align 8
  %142 = add i64 %141, -16
  %143 = add i64 %storemerge, 7
  store i64 %143, i64* %3, align 8
  %144 = inttoptr i64 %142 to i32*
  %145 = load i32, i32* %144, align 4
  %146 = add i32 %145, -256
  %147 = icmp ult i32 %145, 256
  %148 = zext i1 %147 to i8
  store i8 %148, i8* %38, align 1
  %149 = and i32 %146, 255
  %150 = tail call i32 @llvm.ctpop.i32(i32 %149)
  %151 = trunc i32 %150 to i8
  %152 = and i8 %151, 1
  %153 = xor i8 %152, 1
  store i8 %153, i8* %44, align 1
  %154 = xor i32 %146, %145
  %155 = lshr i32 %154, 4
  %156 = trunc i32 %155 to i8
  %157 = and i8 %156, 1
  store i8 %157, i8* %49, align 1
  %158 = icmp eq i32 %146, 0
  %159 = zext i1 %158 to i8
  store i8 %159, i8* %52, align 1
  %160 = lshr i32 %146, 31
  %161 = trunc i32 %160 to i8
  store i8 %161, i8* %55, align 1
  %162 = lshr i32 %145, 31
  %163 = xor i32 %160, %162
  %164 = add nuw nsw i32 %163, %162
  %165 = icmp eq i32 %164, 2
  %166 = zext i1 %165 to i8
  store i8 %166, i8* %61, align 1
  %.v44 = select i1 %147, i64 13, i64 777
  %167 = add i64 %storemerge, %.v44
  store i64 %167, i64* %3, align 8
  br i1 %147, label %block_402172, label %block_.L_40246e

block_402172:                                     ; preds = %block_.L_402165
  %168 = add i64 %141, -20
  %169 = add i64 %167, 7
  store i64 %169, i64* %3, align 8
  %170 = inttoptr i64 %168 to i32*
  %171 = load i32, i32* %170, align 4
  %172 = add i32 %171, -512
  %173 = icmp ult i32 %171, 512
  %174 = zext i1 %173 to i8
  store i8 %174, i8* %38, align 1
  %175 = and i32 %172, 255
  %176 = tail call i32 @llvm.ctpop.i32(i32 %175)
  %177 = trunc i32 %176 to i8
  %178 = and i8 %177, 1
  %179 = xor i8 %178, 1
  store i8 %179, i8* %44, align 1
  %180 = xor i32 %172, %171
  %181 = lshr i32 %180, 4
  %182 = trunc i32 %181 to i8
  %183 = and i8 %182, 1
  store i8 %183, i8* %49, align 1
  %184 = icmp eq i32 %172, 0
  %185 = zext i1 %184 to i8
  store i8 %185, i8* %52, align 1
  %186 = lshr i32 %172, 31
  %187 = trunc i32 %186 to i8
  store i8 %187, i8* %55, align 1
  %188 = lshr i32 %171, 31
  %189 = xor i32 %186, %188
  %190 = add nuw nsw i32 %189, %188
  %191 = icmp eq i32 %190, 2
  %192 = zext i1 %191 to i8
  store i8 %192, i8* %61, align 1
  %.v43 = select i1 %173, i64 361, i64 13
  %193 = add i64 %167, %.v43
  store i64 %193, i64* %3, align 8
  br i1 %173, label %block_.L_4022db, label %block_40217f

block_40217f:                                     ; preds = %block_402172
  %194 = add i64 %141, -8
  %195 = add i64 %193, 4
  store i64 %195, i64* %3, align 8
  %196 = inttoptr i64 %194 to i64*
  %197 = load i64, i64* %196, align 8
  store i64 %197, i64* %.pre41, align 8
  %198 = add i64 %197, 8
  %199 = add i64 %193, 7
  store i64 %199, i64* %3, align 8
  %200 = inttoptr i64 %198 to i32*
  %201 = load i32, i32* %200, align 4
  %202 = shl i32 %201, 1
  %203 = icmp slt i32 %201, 0
  %204 = icmp slt i32 %202, 0
  %205 = xor i1 %203, %204
  %206 = zext i32 %202 to i64
  store i64 %206, i64* %RCX.i62, align 8
  %.lobit = lshr i32 %201, 31
  %207 = trunc i32 %.lobit to i8
  store i8 %207, i8* %38, align 1
  %208 = and i32 %202, 254
  %209 = tail call i32 @llvm.ctpop.i32(i32 %208)
  %210 = trunc i32 %209 to i8
  %211 = and i8 %210, 1
  %212 = xor i8 %211, 1
  store i8 %212, i8* %44, align 1
  store i8 0, i8* %49, align 1
  %213 = icmp eq i32 %202, 0
  %214 = zext i1 %213 to i8
  store i8 %214, i8* %52, align 1
  %215 = lshr i32 %201, 30
  %216 = trunc i32 %215 to i8
  %217 = and i8 %216, 1
  store i8 %217, i8* %55, align 1
  %218 = zext i1 %205 to i8
  store i8 %218, i8* %61, align 1
  %219 = add i64 %193, 12
  store i64 %219, i64* %3, align 8
  store i32 %202, i32* %200, align 4
  %220 = load i64, i64* %RBP.i, align 8
  %221 = add i64 %220, -8
  %222 = load i64, i64* %3, align 8
  %223 = add i64 %222, 4
  store i64 %223, i64* %3, align 8
  %224 = inttoptr i64 %221 to i64*
  %225 = load i64, i64* %224, align 8
  store i64 %225, i64* %.pre41, align 8
  %226 = add i64 %225, 8
  %227 = add i64 %222, 7
  store i64 %227, i64* %3, align 8
  %228 = inttoptr i64 %226 to i32*
  %229 = load i32, i32* %228, align 4
  %230 = or i32 %229, 1
  %231 = zext i32 %230 to i64
  store i64 %231, i64* %RCX.i62, align 8
  store i8 0, i8* %38, align 1
  %232 = and i32 %230, 255
  %233 = tail call i32 @llvm.ctpop.i32(i32 %232)
  %234 = trunc i32 %233 to i8
  %235 = and i8 %234, 1
  %236 = xor i8 %235, 1
  store i8 %236, i8* %44, align 1
  store i8 0, i8* %52, align 1
  %237 = lshr i32 %229, 31
  %238 = trunc i32 %237 to i8
  store i8 %238, i8* %55, align 1
  store i8 0, i8* %61, align 1
  store i8 0, i8* %49, align 1
  %239 = add i64 %222, 13
  store i64 %239, i64* %3, align 8
  store i32 %230, i32* %228, align 4
  %240 = load i64, i64* %RBP.i, align 8
  %241 = add i64 %240, -8
  %242 = load i64, i64* %3, align 8
  %243 = add i64 %242, 4
  store i64 %243, i64* %3, align 8
  %244 = inttoptr i64 %241 to i64*
  %245 = load i64, i64* %244, align 8
  store i64 %245, i64* %.pre41, align 8
  %246 = add i64 %245, 12
  %247 = add i64 %242, 7
  store i64 %247, i64* %3, align 8
  %248 = inttoptr i64 %246 to i32*
  %249 = load i32, i32* %248, align 4
  %250 = add i32 %249, -1
  %251 = zext i32 %250 to i64
  store i64 %251, i64* %RCX.i62, align 8
  %252 = add i64 %242, 13
  store i64 %252, i64* %3, align 8
  store i32 %250, i32* %248, align 4
  %253 = load i32, i32* %ECX.i56, align 4
  %254 = load i64, i64* %3, align 8
  store i8 0, i8* %38, align 1
  %255 = and i32 %253, 255
  %256 = tail call i32 @llvm.ctpop.i32(i32 %255)
  %257 = trunc i32 %256 to i8
  %258 = and i8 %257, 1
  %259 = xor i8 %258, 1
  store i8 %259, i8* %44, align 1
  store i8 0, i8* %49, align 1
  %260 = icmp eq i32 %253, 0
  %261 = zext i1 %260 to i8
  store i8 %261, i8* %52, align 1
  %262 = lshr i32 %253, 31
  %263 = trunc i32 %262 to i8
  store i8 %263, i8* %55, align 1
  store i8 0, i8* %61, align 1
  %.v46 = select i1 %260, i64 9, i64 110
  %264 = add i64 %254, %.v46
  store i64 %264, i64* %3, align 8
  br i1 %260, label %block_4021af, label %block_.L_402214

block_4021af:                                     ; preds = %block_40217f
  %265 = load i64, i64* %RBP.i, align 8
  %266 = add i64 %265, -8
  %267 = add i64 %264, 4
  store i64 %267, i64* %3, align 8
  %268 = inttoptr i64 %266 to i64*
  %269 = load i64, i64* %268, align 8
  store i64 %269, i64* %.pre41, align 8
  %270 = add i64 %269, 8
  %271 = add i64 %264, 7
  store i64 %271, i64* %3, align 8
  %272 = inttoptr i64 %270 to i32*
  %273 = load i32, i32* %272, align 4
  %274 = zext i32 %273 to i64
  store i64 %274, i64* %RCX.i62, align 8
  %275 = trunc i32 %273 to i8
  store i8 %275, i8* %DL.i128, align 1
  %276 = add i64 %264, 13
  store i64 %276, i64* %3, align 8
  %277 = load i64, i64* %268, align 8
  store i64 %277, i64* %.pre41, align 8
  %278 = add i64 %277, 24
  %279 = add i64 %264, 17
  store i64 %279, i64* %3, align 8
  %280 = inttoptr i64 %278 to i64*
  %281 = load i64, i64* %280, align 8
  store i64 %281, i64* %.pre41, align 8
  %282 = add i64 %264, 21
  store i64 %282, i64* %3, align 8
  %283 = load i64, i64* %268, align 8
  store i64 %283, i64* %RSI.i575, align 8
  %284 = add i64 %283, 32
  %285 = add i64 %264, 25
  store i64 %285, i64* %3, align 8
  %286 = inttoptr i64 %284 to i64*
  %287 = load i64, i64* %286, align 8
  store i64 %287, i64* %RSI.i575, align 8
  %288 = add i64 %264, 27
  store i64 %288, i64* %3, align 8
  %289 = inttoptr i64 %287 to i32*
  %290 = load i32, i32* %289, align 4
  %291 = zext i32 %290 to i64
  store i64 %291, i64* %RCX.i62, align 8
  %292 = add i32 %290, 1
  %293 = zext i32 %292 to i64
  store i64 %293, i64* %RDI.i583, align 8
  %294 = icmp eq i32 %290, -1
  %295 = icmp eq i32 %292, 0
  %296 = or i1 %294, %295
  %297 = zext i1 %296 to i8
  store i8 %297, i8* %38, align 1
  %298 = and i32 %292, 255
  %299 = tail call i32 @llvm.ctpop.i32(i32 %298)
  %300 = trunc i32 %299 to i8
  %301 = and i8 %300, 1
  %302 = xor i8 %301, 1
  store i8 %302, i8* %44, align 1
  %303 = xor i32 %292, %290
  %304 = lshr i32 %303, 4
  %305 = trunc i32 %304 to i8
  %306 = and i8 %305, 1
  store i8 %306, i8* %49, align 1
  %307 = zext i1 %295 to i8
  store i8 %307, i8* %52, align 1
  %308 = lshr i32 %292, 31
  %309 = trunc i32 %308 to i8
  store i8 %309, i8* %55, align 1
  %310 = lshr i32 %290, 31
  %311 = xor i32 %308, %310
  %312 = add nuw nsw i32 %311, %308
  %313 = icmp eq i32 %312, 2
  %314 = zext i1 %313 to i8
  store i8 %314, i8* %61, align 1
  %315 = add i64 %264, 34
  store i64 %315, i64* %3, align 8
  store i32 %292, i32* %289, align 4
  %316 = load i32, i32* %ECX.i56, align 4
  %317 = load i64, i64* %3, align 8
  %318 = sext i32 %316 to i64
  store i64 %318, i64* %RSI.i575, align 8
  %319 = load i64, i64* %.pre41, align 8
  %320 = add i64 %319, %318
  %321 = load i8, i8* %DL.i128, align 1
  %322 = add i64 %317, 6
  store i64 %322, i64* %3, align 8
  %323 = inttoptr i64 %320 to i8*
  store i8 %321, i8* %323, align 1
  %324 = load i64, i64* %RBP.i, align 8
  %325 = add i64 %324, -8
  %326 = load i64, i64* %3, align 8
  %327 = add i64 %326, 4
  store i64 %327, i64* %3, align 8
  %328 = inttoptr i64 %325 to i64*
  %329 = load i64, i64* %328, align 8
  store i64 %329, i64* %.pre41, align 8
  %330 = add i64 %329, 12
  %331 = add i64 %326, 11
  store i64 %331, i64* %3, align 8
  %332 = inttoptr i64 %330 to i32*
  store i32 8, i32* %332, align 4
  %.pre36 = load i64, i64* %3, align 8
  br label %block_.L_4021e2

block_.L_4021e2:                                  ; preds = %block_4021f0, %block_4021af
  %333 = phi i64 [ %432, %block_4021f0 ], [ %.pre36, %block_4021af ]
  %334 = load i64, i64* %RBP.i, align 8
  %335 = add i64 %334, -8
  %336 = add i64 %333, 4
  store i64 %336, i64* %3, align 8
  %337 = inttoptr i64 %335 to i64*
  %338 = load i64, i64* %337, align 8
  store i64 %338, i64* %.pre41, align 8
  %339 = add i64 %338, 80
  %340 = add i64 %333, 8
  store i64 %340, i64* %3, align 8
  %341 = inttoptr i64 %339 to i32*
  %342 = load i32, i32* %341, align 4
  %343 = add i32 %342, -7
  %344 = icmp ult i32 %342, 7
  %345 = zext i1 %344 to i8
  store i8 %345, i8* %38, align 1
  %346 = and i32 %343, 255
  %347 = tail call i32 @llvm.ctpop.i32(i32 %346)
  %348 = trunc i32 %347 to i8
  %349 = and i8 %348, 1
  %350 = xor i8 %349, 1
  store i8 %350, i8* %44, align 1
  %351 = xor i32 %343, %342
  %352 = lshr i32 %351, 4
  %353 = trunc i32 %352 to i8
  %354 = and i8 %353, 1
  store i8 %354, i8* %49, align 1
  %355 = icmp eq i32 %343, 0
  %356 = zext i1 %355 to i8
  store i8 %356, i8* %52, align 1
  %357 = lshr i32 %343, 31
  %358 = trunc i32 %357 to i8
  store i8 %358, i8* %55, align 1
  %359 = lshr i32 %342, 31
  %360 = xor i32 %357, %359
  %361 = add nuw nsw i32 %360, %359
  %362 = icmp eq i32 %361, 2
  %363 = zext i1 %362 to i8
  store i8 %363, i8* %61, align 1
  %364 = icmp ne i8 %358, 0
  %365 = xor i1 %364, %362
  %366 = or i1 %355, %365
  %.v50 = select i1 %366, i64 45, i64 14
  %367 = add i64 %333, %.v50
  store i64 %367, i64* %3, align 8
  br i1 %366, label %block_.L_40220f, label %block_4021f0

block_4021f0:                                     ; preds = %block_.L_4021e2
  %368 = add i64 %367, 4
  store i64 %368, i64* %3, align 8
  %369 = load i64, i64* %337, align 8
  store i64 %369, i64* %.pre41, align 8
  %370 = add i64 %369, 80
  %371 = add i64 %367, 7
  store i64 %371, i64* %3, align 8
  %372 = inttoptr i64 %370 to i32*
  %373 = load i32, i32* %372, align 4
  %374 = add i32 %373, -8
  %375 = zext i32 %374 to i64
  store i64 %375, i64* %RCX.i62, align 8
  %376 = icmp ult i32 %373, 8
  %377 = zext i1 %376 to i8
  store i8 %377, i8* %38, align 1
  %378 = and i32 %374, 255
  %379 = tail call i32 @llvm.ctpop.i32(i32 %378)
  %380 = trunc i32 %379 to i8
  %381 = and i8 %380, 1
  %382 = xor i8 %381, 1
  store i8 %382, i8* %44, align 1
  %383 = xor i32 %374, %373
  %384 = lshr i32 %383, 4
  %385 = trunc i32 %384 to i8
  %386 = and i8 %385, 1
  store i8 %386, i8* %49, align 1
  %387 = icmp eq i32 %374, 0
  %388 = zext i1 %387 to i8
  store i8 %388, i8* %52, align 1
  %389 = lshr i32 %374, 31
  %390 = trunc i32 %389 to i8
  store i8 %390, i8* %55, align 1
  %391 = lshr i32 %373, 31
  %392 = xor i32 %389, %391
  %393 = add nuw nsw i32 %392, %391
  %394 = icmp eq i32 %393, 2
  %395 = zext i1 %394 to i8
  store i8 %395, i8* %61, align 1
  %396 = add i64 %367, 13
  store i64 %396, i64* %3, align 8
  store i32 %374, i32* %372, align 4
  %397 = load i64, i64* %RBP.i, align 8
  %398 = add i64 %397, -8
  %399 = load i64, i64* %3, align 8
  %400 = add i64 %399, 4
  store i64 %400, i64* %3, align 8
  %401 = inttoptr i64 %398 to i64*
  %402 = load i64, i64* %401, align 8
  store i64 %402, i64* %.pre41, align 8
  %403 = add i64 %402, 88
  %404 = add i64 %399, 7
  store i64 %404, i64* %3, align 8
  %405 = inttoptr i64 %403 to i32*
  %406 = load i32, i32* %405, align 4
  %407 = add i32 %406, 1
  %408 = zext i32 %407 to i64
  store i64 %408, i64* %RCX.i62, align 8
  %409 = icmp eq i32 %406, -1
  %410 = icmp eq i32 %407, 0
  %411 = or i1 %409, %410
  %412 = zext i1 %411 to i8
  store i8 %412, i8* %38, align 1
  %413 = and i32 %407, 255
  %414 = tail call i32 @llvm.ctpop.i32(i32 %413)
  %415 = trunc i32 %414 to i8
  %416 = and i8 %415, 1
  %417 = xor i8 %416, 1
  store i8 %417, i8* %44, align 1
  %418 = xor i32 %407, %406
  %419 = lshr i32 %418, 4
  %420 = trunc i32 %419 to i8
  %421 = and i8 %420, 1
  store i8 %421, i8* %49, align 1
  %422 = zext i1 %410 to i8
  store i8 %422, i8* %52, align 1
  %423 = lshr i32 %407, 31
  %424 = trunc i32 %423 to i8
  store i8 %424, i8* %55, align 1
  %425 = lshr i32 %406, 31
  %426 = xor i32 %423, %425
  %427 = add nuw nsw i32 %426, %423
  %428 = icmp eq i32 %427, 2
  %429 = zext i1 %428 to i8
  store i8 %429, i8* %61, align 1
  %430 = add i64 %399, 13
  store i64 %430, i64* %3, align 8
  store i32 %407, i32* %405, align 4
  %431 = load i64, i64* %3, align 8
  %432 = add i64 %431, -40
  store i64 %432, i64* %3, align 8
  br label %block_.L_4021e2

block_.L_40220f:                                  ; preds = %block_.L_4021e2
  %433 = add i64 %367, 5
  store i64 %433, i64* %3, align 8
  br label %block_.L_402214

block_.L_402214:                                  ; preds = %block_40217f, %block_.L_40220f
  %434 = phi i64 [ %433, %block_.L_40220f ], [ %264, %block_40217f ]
  %435 = add i64 %434, 5
  br label %block_.L_402219

block_.L_402219:                                  ; preds = %block_.L_4022c6, %block_.L_402214
  %storemerge14 = phi i64 [ %435, %block_.L_402214 ], [ %721, %block_.L_4022c6 ]
  %436 = load i64, i64* %RBP.i, align 8
  %437 = add i64 %436, -8
  %438 = add i64 %storemerge14, 4
  store i64 %438, i64* %3, align 8
  %439 = inttoptr i64 %437 to i64*
  %440 = load i64, i64* %439, align 8
  store i64 %440, i64* %.pre41, align 8
  %441 = add i64 %440, 16
  %442 = add i64 %storemerge14, 8
  store i64 %442, i64* %3, align 8
  %443 = inttoptr i64 %441 to i32*
  %444 = load i32, i32* %443, align 4
  store i8 0, i8* %38, align 1
  %445 = and i32 %444, 255
  %446 = tail call i32 @llvm.ctpop.i32(i32 %445)
  %447 = trunc i32 %446 to i8
  %448 = and i8 %447, 1
  %449 = xor i8 %448, 1
  store i8 %449, i8* %44, align 1
  store i8 0, i8* %49, align 1
  %450 = icmp eq i32 %444, 0
  %451 = zext i1 %450 to i8
  store i8 %451, i8* %52, align 1
  %452 = lshr i32 %444, 31
  %453 = trunc i32 %452 to i8
  store i8 %453, i8* %55, align 1
  store i8 0, i8* %61, align 1
  %.v47 = select i1 %450, i64 178, i64 14
  %454 = add i64 %storemerge14, %.v47
  store i64 %454, i64* %3, align 8
  br i1 %450, label %block_.L_4022cb, label %block_402227

block_402227:                                     ; preds = %block_.L_402219
  %455 = add i64 %454, 4
  store i64 %455, i64* %3, align 8
  %456 = load i64, i64* %439, align 8
  store i64 %456, i64* %.pre41, align 8
  %457 = add i64 %456, 16
  %458 = add i64 %454, 7
  store i64 %458, i64* %3, align 8
  %459 = inttoptr i64 %457 to i32*
  %460 = load i32, i32* %459, align 4
  %461 = add i32 %460, -1
  %462 = zext i32 %461 to i64
  store i64 %462, i64* %RCX.i62, align 8
  %463 = icmp ne i32 %460, 0
  %464 = zext i1 %463 to i8
  store i8 %464, i8* %38, align 1
  %465 = and i32 %461, 255
  %466 = tail call i32 @llvm.ctpop.i32(i32 %465)
  %467 = trunc i32 %466 to i8
  %468 = and i8 %467, 1
  %469 = xor i8 %468, 1
  store i8 %469, i8* %44, align 1
  %470 = xor i32 %460, 16
  %471 = xor i32 %470, %461
  %472 = lshr i32 %471, 4
  %473 = trunc i32 %472 to i8
  %474 = and i8 %473, 1
  store i8 %474, i8* %49, align 1
  %475 = icmp eq i32 %461, 0
  %476 = zext i1 %475 to i8
  store i8 %476, i8* %52, align 1
  %477 = lshr i32 %461, 31
  %478 = trunc i32 %477 to i8
  store i8 %478, i8* %55, align 1
  %479 = lshr i32 %460, 31
  %480 = xor i32 %477, %479
  %481 = xor i32 %477, 1
  %482 = add nuw nsw i32 %480, %481
  %483 = icmp eq i32 %482, 2
  %484 = zext i1 %483 to i8
  store i8 %484, i8* %61, align 1
  %485 = add i64 %454, 13
  store i64 %485, i64* %3, align 8
  store i32 %461, i32* %459, align 4
  %486 = load i64, i64* %RBP.i, align 8
  %487 = add i64 %486, -8
  %488 = load i64, i64* %3, align 8
  %489 = add i64 %488, 4
  store i64 %489, i64* %3, align 8
  %490 = inttoptr i64 %487 to i64*
  %491 = load i64, i64* %490, align 8
  store i64 %491, i64* %.pre41, align 8
  %492 = add i64 %491, 8
  %493 = add i64 %488, 7
  store i64 %493, i64* %3, align 8
  %494 = inttoptr i64 %492 to i32*
  %495 = load i32, i32* %494, align 4
  %496 = shl i32 %495, 1
  %497 = icmp slt i32 %495, 0
  %498 = icmp slt i32 %496, 0
  %499 = xor i1 %497, %498
  %500 = zext i32 %496 to i64
  store i64 %500, i64* %RCX.i62, align 8
  %.lobit15 = lshr i32 %495, 31
  %501 = trunc i32 %.lobit15 to i8
  store i8 %501, i8* %38, align 1
  %502 = and i32 %496, 254
  %503 = tail call i32 @llvm.ctpop.i32(i32 %502)
  %504 = trunc i32 %503 to i8
  %505 = and i8 %504, 1
  %506 = xor i8 %505, 1
  store i8 %506, i8* %44, align 1
  store i8 0, i8* %49, align 1
  %507 = icmp eq i32 %496, 0
  %508 = zext i1 %507 to i8
  store i8 %508, i8* %52, align 1
  %509 = lshr i32 %495, 30
  %510 = trunc i32 %509 to i8
  %511 = and i8 %510, 1
  store i8 %511, i8* %55, align 1
  %512 = zext i1 %499 to i8
  store i8 %512, i8* %61, align 1
  %513 = add i64 %488, 12
  store i64 %513, i64* %3, align 8
  store i32 %496, i32* %494, align 4
  %514 = load i64, i64* %RBP.i, align 8
  %515 = add i64 %514, -8
  %516 = load i64, i64* %3, align 8
  %517 = add i64 %516, 4
  store i64 %517, i64* %3, align 8
  %518 = inttoptr i64 %515 to i64*
  %519 = load i64, i64* %518, align 8
  store i64 %519, i64* %.pre41, align 8
  %520 = add i64 %519, 8
  %521 = add i64 %516, 7
  store i64 %521, i64* %3, align 8
  %522 = inttoptr i64 %520 to i32*
  %523 = load i32, i32* %522, align 4
  %524 = zext i32 %523 to i64
  store i64 %524, i64* %RCX.i62, align 8
  %525 = add i64 %516, 10
  store i64 %525, i64* %3, align 8
  store i32 %523, i32* %522, align 4
  %526 = load i64, i64* %RBP.i, align 8
  %527 = add i64 %526, -8
  %528 = load i64, i64* %3, align 8
  %529 = add i64 %528, 4
  store i64 %529, i64* %3, align 8
  %530 = inttoptr i64 %527 to i64*
  %531 = load i64, i64* %530, align 8
  store i64 %531, i64* %.pre41, align 8
  %532 = add i64 %531, 12
  %533 = add i64 %528, 7
  store i64 %533, i64* %3, align 8
  %534 = inttoptr i64 %532 to i32*
  %535 = load i32, i32* %534, align 4
  %536 = add i32 %535, -1
  %537 = zext i32 %536 to i64
  store i64 %537, i64* %RCX.i62, align 8
  %538 = add i64 %528, 13
  store i64 %538, i64* %3, align 8
  store i32 %536, i32* %534, align 4
  %539 = load i32, i32* %ECX.i56, align 4
  %540 = load i64, i64* %3, align 8
  store i8 0, i8* %38, align 1
  %541 = and i32 %539, 255
  %542 = tail call i32 @llvm.ctpop.i32(i32 %541)
  %543 = trunc i32 %542 to i8
  %544 = and i8 %543, 1
  %545 = xor i8 %544, 1
  store i8 %545, i8* %44, align 1
  store i8 0, i8* %49, align 1
  %546 = icmp eq i32 %539, 0
  %547 = zext i1 %546 to i8
  store i8 %547, i8* %52, align 1
  %548 = lshr i32 %539, 31
  %549 = trunc i32 %548 to i8
  store i8 %549, i8* %55, align 1
  store i8 0, i8* %61, align 1
  %.v48 = select i1 %546, i64 9, i64 110
  %550 = add i64 %540, %.v48
  store i64 %550, i64* %3, align 8
  br i1 %546, label %block_402261, label %block_.L_4022c6

block_402261:                                     ; preds = %block_402227
  %551 = load i64, i64* %RBP.i, align 8
  %552 = add i64 %551, -8
  %553 = add i64 %550, 4
  store i64 %553, i64* %3, align 8
  %554 = inttoptr i64 %552 to i64*
  %555 = load i64, i64* %554, align 8
  store i64 %555, i64* %.pre41, align 8
  %556 = add i64 %555, 8
  %557 = add i64 %550, 7
  store i64 %557, i64* %3, align 8
  %558 = inttoptr i64 %556 to i32*
  %559 = load i32, i32* %558, align 4
  %560 = zext i32 %559 to i64
  store i64 %560, i64* %RCX.i62, align 8
  %561 = trunc i32 %559 to i8
  store i8 %561, i8* %DL.i128, align 1
  %562 = add i64 %550, 13
  store i64 %562, i64* %3, align 8
  %563 = load i64, i64* %554, align 8
  store i64 %563, i64* %.pre41, align 8
  %564 = add i64 %563, 24
  %565 = add i64 %550, 17
  store i64 %565, i64* %3, align 8
  %566 = inttoptr i64 %564 to i64*
  %567 = load i64, i64* %566, align 8
  store i64 %567, i64* %.pre41, align 8
  %568 = add i64 %550, 21
  store i64 %568, i64* %3, align 8
  %569 = load i64, i64* %554, align 8
  store i64 %569, i64* %RSI.i575, align 8
  %570 = add i64 %569, 32
  %571 = add i64 %550, 25
  store i64 %571, i64* %3, align 8
  %572 = inttoptr i64 %570 to i64*
  %573 = load i64, i64* %572, align 8
  store i64 %573, i64* %RSI.i575, align 8
  %574 = add i64 %550, 27
  store i64 %574, i64* %3, align 8
  %575 = inttoptr i64 %573 to i32*
  %576 = load i32, i32* %575, align 4
  %577 = zext i32 %576 to i64
  store i64 %577, i64* %RCX.i62, align 8
  %578 = add i32 %576, 1
  %579 = zext i32 %578 to i64
  store i64 %579, i64* %RDI.i583, align 8
  %580 = icmp eq i32 %576, -1
  %581 = icmp eq i32 %578, 0
  %582 = or i1 %580, %581
  %583 = zext i1 %582 to i8
  store i8 %583, i8* %38, align 1
  %584 = and i32 %578, 255
  %585 = tail call i32 @llvm.ctpop.i32(i32 %584)
  %586 = trunc i32 %585 to i8
  %587 = and i8 %586, 1
  %588 = xor i8 %587, 1
  store i8 %588, i8* %44, align 1
  %589 = xor i32 %578, %576
  %590 = lshr i32 %589, 4
  %591 = trunc i32 %590 to i8
  %592 = and i8 %591, 1
  store i8 %592, i8* %49, align 1
  %593 = zext i1 %581 to i8
  store i8 %593, i8* %52, align 1
  %594 = lshr i32 %578, 31
  %595 = trunc i32 %594 to i8
  store i8 %595, i8* %55, align 1
  %596 = lshr i32 %576, 31
  %597 = xor i32 %594, %596
  %598 = add nuw nsw i32 %597, %594
  %599 = icmp eq i32 %598, 2
  %600 = zext i1 %599 to i8
  store i8 %600, i8* %61, align 1
  %601 = add i64 %550, 34
  store i64 %601, i64* %3, align 8
  store i32 %578, i32* %575, align 4
  %602 = load i32, i32* %ECX.i56, align 4
  %603 = load i64, i64* %3, align 8
  %604 = sext i32 %602 to i64
  store i64 %604, i64* %RSI.i575, align 8
  %605 = load i64, i64* %.pre41, align 8
  %606 = add i64 %605, %604
  %607 = load i8, i8* %DL.i128, align 1
  %608 = add i64 %603, 6
  store i64 %608, i64* %3, align 8
  %609 = inttoptr i64 %606 to i8*
  store i8 %607, i8* %609, align 1
  %610 = load i64, i64* %RBP.i, align 8
  %611 = add i64 %610, -8
  %612 = load i64, i64* %3, align 8
  %613 = add i64 %612, 4
  store i64 %613, i64* %3, align 8
  %614 = inttoptr i64 %611 to i64*
  %615 = load i64, i64* %614, align 8
  store i64 %615, i64* %.pre41, align 8
  %616 = add i64 %615, 12
  %617 = add i64 %612, 11
  store i64 %617, i64* %3, align 8
  %618 = inttoptr i64 %616 to i32*
  store i32 8, i32* %618, align 4
  %.pre37 = load i64, i64* %3, align 8
  br label %block_.L_402294

block_.L_402294:                                  ; preds = %block_4022a2, %block_402261
  %619 = phi i64 [ %718, %block_4022a2 ], [ %.pre37, %block_402261 ]
  %620 = load i64, i64* %RBP.i, align 8
  %621 = add i64 %620, -8
  %622 = add i64 %619, 4
  store i64 %622, i64* %3, align 8
  %623 = inttoptr i64 %621 to i64*
  %624 = load i64, i64* %623, align 8
  store i64 %624, i64* %.pre41, align 8
  %625 = add i64 %624, 80
  %626 = add i64 %619, 8
  store i64 %626, i64* %3, align 8
  %627 = inttoptr i64 %625 to i32*
  %628 = load i32, i32* %627, align 4
  %629 = add i32 %628, -7
  %630 = icmp ult i32 %628, 7
  %631 = zext i1 %630 to i8
  store i8 %631, i8* %38, align 1
  %632 = and i32 %629, 255
  %633 = tail call i32 @llvm.ctpop.i32(i32 %632)
  %634 = trunc i32 %633 to i8
  %635 = and i8 %634, 1
  %636 = xor i8 %635, 1
  store i8 %636, i8* %44, align 1
  %637 = xor i32 %629, %628
  %638 = lshr i32 %637, 4
  %639 = trunc i32 %638 to i8
  %640 = and i8 %639, 1
  store i8 %640, i8* %49, align 1
  %641 = icmp eq i32 %629, 0
  %642 = zext i1 %641 to i8
  store i8 %642, i8* %52, align 1
  %643 = lshr i32 %629, 31
  %644 = trunc i32 %643 to i8
  store i8 %644, i8* %55, align 1
  %645 = lshr i32 %628, 31
  %646 = xor i32 %643, %645
  %647 = add nuw nsw i32 %646, %645
  %648 = icmp eq i32 %647, 2
  %649 = zext i1 %648 to i8
  store i8 %649, i8* %61, align 1
  %650 = icmp ne i8 %644, 0
  %651 = xor i1 %650, %648
  %652 = or i1 %641, %651
  %.v49 = select i1 %652, i64 45, i64 14
  %653 = add i64 %619, %.v49
  store i64 %653, i64* %3, align 8
  br i1 %652, label %block_.L_4022c1, label %block_4022a2

block_4022a2:                                     ; preds = %block_.L_402294
  %654 = add i64 %653, 4
  store i64 %654, i64* %3, align 8
  %655 = load i64, i64* %623, align 8
  store i64 %655, i64* %.pre41, align 8
  %656 = add i64 %655, 80
  %657 = add i64 %653, 7
  store i64 %657, i64* %3, align 8
  %658 = inttoptr i64 %656 to i32*
  %659 = load i32, i32* %658, align 4
  %660 = add i32 %659, -8
  %661 = zext i32 %660 to i64
  store i64 %661, i64* %RCX.i62, align 8
  %662 = icmp ult i32 %659, 8
  %663 = zext i1 %662 to i8
  store i8 %663, i8* %38, align 1
  %664 = and i32 %660, 255
  %665 = tail call i32 @llvm.ctpop.i32(i32 %664)
  %666 = trunc i32 %665 to i8
  %667 = and i8 %666, 1
  %668 = xor i8 %667, 1
  store i8 %668, i8* %44, align 1
  %669 = xor i32 %660, %659
  %670 = lshr i32 %669, 4
  %671 = trunc i32 %670 to i8
  %672 = and i8 %671, 1
  store i8 %672, i8* %49, align 1
  %673 = icmp eq i32 %660, 0
  %674 = zext i1 %673 to i8
  store i8 %674, i8* %52, align 1
  %675 = lshr i32 %660, 31
  %676 = trunc i32 %675 to i8
  store i8 %676, i8* %55, align 1
  %677 = lshr i32 %659, 31
  %678 = xor i32 %675, %677
  %679 = add nuw nsw i32 %678, %677
  %680 = icmp eq i32 %679, 2
  %681 = zext i1 %680 to i8
  store i8 %681, i8* %61, align 1
  %682 = add i64 %653, 13
  store i64 %682, i64* %3, align 8
  store i32 %660, i32* %658, align 4
  %683 = load i64, i64* %RBP.i, align 8
  %684 = add i64 %683, -8
  %685 = load i64, i64* %3, align 8
  %686 = add i64 %685, 4
  store i64 %686, i64* %3, align 8
  %687 = inttoptr i64 %684 to i64*
  %688 = load i64, i64* %687, align 8
  store i64 %688, i64* %.pre41, align 8
  %689 = add i64 %688, 88
  %690 = add i64 %685, 7
  store i64 %690, i64* %3, align 8
  %691 = inttoptr i64 %689 to i32*
  %692 = load i32, i32* %691, align 4
  %693 = add i32 %692, 1
  %694 = zext i32 %693 to i64
  store i64 %694, i64* %RCX.i62, align 8
  %695 = icmp eq i32 %692, -1
  %696 = icmp eq i32 %693, 0
  %697 = or i1 %695, %696
  %698 = zext i1 %697 to i8
  store i8 %698, i8* %38, align 1
  %699 = and i32 %693, 255
  %700 = tail call i32 @llvm.ctpop.i32(i32 %699)
  %701 = trunc i32 %700 to i8
  %702 = and i8 %701, 1
  %703 = xor i8 %702, 1
  store i8 %703, i8* %44, align 1
  %704 = xor i32 %693, %692
  %705 = lshr i32 %704, 4
  %706 = trunc i32 %705 to i8
  %707 = and i8 %706, 1
  store i8 %707, i8* %49, align 1
  %708 = zext i1 %696 to i8
  store i8 %708, i8* %52, align 1
  %709 = lshr i32 %693, 31
  %710 = trunc i32 %709 to i8
  store i8 %710, i8* %55, align 1
  %711 = lshr i32 %692, 31
  %712 = xor i32 %709, %711
  %713 = add nuw nsw i32 %712, %709
  %714 = icmp eq i32 %713, 2
  %715 = zext i1 %714 to i8
  store i8 %715, i8* %61, align 1
  %716 = add i64 %685, 13
  store i64 %716, i64* %3, align 8
  store i32 %693, i32* %691, align 4
  %717 = load i64, i64* %3, align 8
  %718 = add i64 %717, -40
  store i64 %718, i64* %3, align 8
  br label %block_.L_402294

block_.L_4022c1:                                  ; preds = %block_.L_402294
  %719 = add i64 %653, 5
  store i64 %719, i64* %3, align 8
  br label %block_.L_4022c6

block_.L_4022c6:                                  ; preds = %block_402227, %block_.L_4022c1
  %720 = phi i64 [ %719, %block_.L_4022c1 ], [ %550, %block_402227 ]
  %721 = add i64 %720, -173
  %722 = add i64 %720, 5
  store i64 %722, i64* %3, align 8
  br label %block_.L_402219

block_.L_4022cb:                                  ; preds = %block_.L_402219
  %723 = add i64 %436, -20
  %724 = add i64 %454, 3
  store i64 %724, i64* %3, align 8
  %725 = inttoptr i64 %723 to i32*
  %726 = load i32, i32* %725, align 4
  %727 = add i32 %726, -512
  %728 = zext i32 %727 to i64
  store i64 %728, i64* %.pre41, align 8
  %729 = icmp ult i32 %726, 512
  %730 = zext i1 %729 to i8
  store i8 %730, i8* %38, align 1
  %731 = and i32 %727, 255
  %732 = tail call i32 @llvm.ctpop.i32(i32 %731)
  %733 = trunc i32 %732 to i8
  %734 = and i8 %733, 1
  %735 = xor i8 %734, 1
  store i8 %735, i8* %44, align 1
  %736 = xor i32 %727, %726
  %737 = lshr i32 %736, 4
  %738 = trunc i32 %737 to i8
  %739 = and i8 %738, 1
  store i8 %739, i8* %49, align 1
  %740 = icmp eq i32 %727, 0
  %741 = zext i1 %740 to i8
  store i8 %741, i8* %52, align 1
  %742 = lshr i32 %727, 31
  %743 = trunc i32 %742 to i8
  store i8 %743, i8* %55, align 1
  %744 = lshr i32 %726, 31
  %745 = xor i32 %742, %744
  %746 = add nuw nsw i32 %745, %744
  %747 = icmp eq i32 %746, 2
  %748 = zext i1 %747 to i8
  store i8 %748, i8* %61, align 1
  %749 = add i64 %454, 11
  store i64 %749, i64* %3, align 8
  store i32 %727, i32* %725, align 4
  %750 = load i64, i64* %3, align 8
  %751 = add i64 %750, 385
  br label %block_.L_402457

block_.L_4022db:                                  ; preds = %block_402172
  %752 = add i64 %193, 7
  store i64 %752, i64* %3, align 8
  %753 = load i32, i32* %170, align 4
  %754 = add i32 %753, -256
  %755 = icmp ult i32 %753, 256
  %756 = zext i1 %755 to i8
  store i8 %756, i8* %38, align 1
  %757 = and i32 %754, 255
  %758 = tail call i32 @llvm.ctpop.i32(i32 %757)
  %759 = trunc i32 %758 to i8
  %760 = and i8 %759, 1
  %761 = xor i8 %760, 1
  store i8 %761, i8* %44, align 1
  %762 = xor i32 %754, %753
  %763 = lshr i32 %762, 4
  %764 = trunc i32 %763 to i8
  %765 = and i8 %764, 1
  store i8 %765, i8* %49, align 1
  %766 = icmp eq i32 %754, 0
  %767 = zext i1 %766 to i8
  store i8 %767, i8* %52, align 1
  %768 = lshr i32 %754, 31
  %769 = trunc i32 %768 to i8
  store i8 %769, i8* %55, align 1
  %770 = lshr i32 %753, 31
  %771 = xor i32 %768, %770
  %772 = add nuw nsw i32 %771, %770
  %773 = icmp eq i32 %772, 2
  %774 = zext i1 %773 to i8
  store i8 %774, i8* %61, align 1
  %.v = select i1 %755, i64 13, i64 350
  %775 = add i64 %193, %.v
  %776 = add i64 %141, -8
  %777 = add i64 %775, 4
  store i64 %777, i64* %3, align 8
  %778 = inttoptr i64 %776 to i64*
  %779 = load i64, i64* %778, align 8
  store i64 %779, i64* %.pre41, align 8
  br i1 %755, label %block_4022e8, label %block_.L_402439

block_4022e8:                                     ; preds = %block_.L_4022db
  %780 = add i64 %779, 8
  %781 = add i64 %775, 7
  store i64 %781, i64* %3, align 8
  %782 = inttoptr i64 %780 to i32*
  %783 = load i32, i32* %782, align 4
  %784 = shl i32 %783, 1
  %785 = icmp slt i32 %783, 0
  %786 = icmp slt i32 %784, 0
  %787 = xor i1 %785, %786
  %788 = zext i32 %784 to i64
  store i64 %788, i64* %RCX.i62, align 8
  %.lobit19 = lshr i32 %783, 31
  %789 = trunc i32 %.lobit19 to i8
  store i8 %789, i8* %38, align 1
  %790 = and i32 %784, 254
  %791 = tail call i32 @llvm.ctpop.i32(i32 %790)
  %792 = trunc i32 %791 to i8
  %793 = and i8 %792, 1
  %794 = xor i8 %793, 1
  store i8 %794, i8* %44, align 1
  store i8 0, i8* %49, align 1
  %795 = icmp eq i32 %784, 0
  %796 = zext i1 %795 to i8
  store i8 %796, i8* %52, align 1
  %797 = lshr i32 %783, 30
  %798 = trunc i32 %797 to i8
  %799 = and i8 %798, 1
  store i8 %799, i8* %55, align 1
  %800 = zext i1 %787 to i8
  store i8 %800, i8* %61, align 1
  %801 = add i64 %775, 12
  store i64 %801, i64* %3, align 8
  store i32 %784, i32* %782, align 4
  %802 = load i64, i64* %RBP.i, align 8
  %803 = add i64 %802, -8
  %804 = load i64, i64* %3, align 8
  %805 = add i64 %804, 4
  store i64 %805, i64* %3, align 8
  %806 = inttoptr i64 %803 to i64*
  %807 = load i64, i64* %806, align 8
  store i64 %807, i64* %.pre41, align 8
  %808 = add i64 %807, 8
  %809 = add i64 %804, 7
  store i64 %809, i64* %3, align 8
  %810 = inttoptr i64 %808 to i32*
  %811 = load i32, i32* %810, align 4
  %812 = zext i32 %811 to i64
  store i64 %812, i64* %RCX.i62, align 8
  %813 = add i64 %804, 10
  store i64 %813, i64* %3, align 8
  store i32 %811, i32* %810, align 4
  %814 = load i64, i64* %RBP.i, align 8
  %815 = add i64 %814, -8
  %816 = load i64, i64* %3, align 8
  %817 = add i64 %816, 4
  store i64 %817, i64* %3, align 8
  %818 = inttoptr i64 %815 to i64*
  %819 = load i64, i64* %818, align 8
  store i64 %819, i64* %.pre41, align 8
  %820 = add i64 %819, 12
  %821 = add i64 %816, 7
  store i64 %821, i64* %3, align 8
  %822 = inttoptr i64 %820 to i32*
  %823 = load i32, i32* %822, align 4
  %824 = add i32 %823, -1
  %825 = zext i32 %824 to i64
  store i64 %825, i64* %RCX.i62, align 8
  %826 = add i64 %816, 13
  store i64 %826, i64* %3, align 8
  store i32 %824, i32* %822, align 4
  %827 = load i32, i32* %ECX.i56, align 4
  %828 = load i64, i64* %3, align 8
  store i8 0, i8* %38, align 1
  %829 = and i32 %827, 255
  %830 = tail call i32 @llvm.ctpop.i32(i32 %829)
  %831 = trunc i32 %830 to i8
  %832 = and i8 %831, 1
  %833 = xor i8 %832, 1
  store i8 %833, i8* %44, align 1
  store i8 0, i8* %49, align 1
  %834 = icmp eq i32 %827, 0
  %835 = zext i1 %834 to i8
  store i8 %835, i8* %52, align 1
  %836 = lshr i32 %827, 31
  %837 = trunc i32 %836 to i8
  store i8 %837, i8* %55, align 1
  store i8 0, i8* %61, align 1
  %.v51 = select i1 %834, i64 9, i64 110
  %838 = add i64 %828, %.v51
  store i64 %838, i64* %3, align 8
  br i1 %834, label %block_402315, label %block_.L_40237a

block_402315:                                     ; preds = %block_4022e8
  %839 = load i64, i64* %RBP.i, align 8
  %840 = add i64 %839, -8
  %841 = add i64 %838, 4
  store i64 %841, i64* %3, align 8
  %842 = inttoptr i64 %840 to i64*
  %843 = load i64, i64* %842, align 8
  store i64 %843, i64* %.pre41, align 8
  %844 = add i64 %843, 8
  %845 = add i64 %838, 7
  store i64 %845, i64* %3, align 8
  %846 = inttoptr i64 %844 to i32*
  %847 = load i32, i32* %846, align 4
  %848 = zext i32 %847 to i64
  store i64 %848, i64* %RCX.i62, align 8
  %849 = trunc i32 %847 to i8
  store i8 %849, i8* %DL.i128, align 1
  %850 = add i64 %838, 13
  store i64 %850, i64* %3, align 8
  %851 = load i64, i64* %842, align 8
  store i64 %851, i64* %.pre41, align 8
  %852 = add i64 %851, 24
  %853 = add i64 %838, 17
  store i64 %853, i64* %3, align 8
  %854 = inttoptr i64 %852 to i64*
  %855 = load i64, i64* %854, align 8
  store i64 %855, i64* %.pre41, align 8
  %856 = add i64 %838, 21
  store i64 %856, i64* %3, align 8
  %857 = load i64, i64* %842, align 8
  store i64 %857, i64* %RSI.i575, align 8
  %858 = add i64 %857, 32
  %859 = add i64 %838, 25
  store i64 %859, i64* %3, align 8
  %860 = inttoptr i64 %858 to i64*
  %861 = load i64, i64* %860, align 8
  store i64 %861, i64* %RSI.i575, align 8
  %862 = add i64 %838, 27
  store i64 %862, i64* %3, align 8
  %863 = inttoptr i64 %861 to i32*
  %864 = load i32, i32* %863, align 4
  %865 = zext i32 %864 to i64
  store i64 %865, i64* %RCX.i62, align 8
  %866 = add i32 %864, 1
  %867 = zext i32 %866 to i64
  store i64 %867, i64* %RDI.i583, align 8
  %868 = icmp eq i32 %864, -1
  %869 = icmp eq i32 %866, 0
  %870 = or i1 %868, %869
  %871 = zext i1 %870 to i8
  store i8 %871, i8* %38, align 1
  %872 = and i32 %866, 255
  %873 = tail call i32 @llvm.ctpop.i32(i32 %872)
  %874 = trunc i32 %873 to i8
  %875 = and i8 %874, 1
  %876 = xor i8 %875, 1
  store i8 %876, i8* %44, align 1
  %877 = xor i32 %866, %864
  %878 = lshr i32 %877, 4
  %879 = trunc i32 %878 to i8
  %880 = and i8 %879, 1
  store i8 %880, i8* %49, align 1
  %881 = zext i1 %869 to i8
  store i8 %881, i8* %52, align 1
  %882 = lshr i32 %866, 31
  %883 = trunc i32 %882 to i8
  store i8 %883, i8* %55, align 1
  %884 = lshr i32 %864, 31
  %885 = xor i32 %882, %884
  %886 = add nuw nsw i32 %885, %882
  %887 = icmp eq i32 %886, 2
  %888 = zext i1 %887 to i8
  store i8 %888, i8* %61, align 1
  %889 = add i64 %838, 34
  store i64 %889, i64* %3, align 8
  store i32 %866, i32* %863, align 4
  %890 = load i32, i32* %ECX.i56, align 4
  %891 = load i64, i64* %3, align 8
  %892 = sext i32 %890 to i64
  store i64 %892, i64* %RSI.i575, align 8
  %893 = load i64, i64* %.pre41, align 8
  %894 = add i64 %893, %892
  %895 = load i8, i8* %DL.i128, align 1
  %896 = add i64 %891, 6
  store i64 %896, i64* %3, align 8
  %897 = inttoptr i64 %894 to i8*
  store i8 %895, i8* %897, align 1
  %898 = load i64, i64* %RBP.i, align 8
  %899 = add i64 %898, -8
  %900 = load i64, i64* %3, align 8
  %901 = add i64 %900, 4
  store i64 %901, i64* %3, align 8
  %902 = inttoptr i64 %899 to i64*
  %903 = load i64, i64* %902, align 8
  store i64 %903, i64* %.pre41, align 8
  %904 = add i64 %903, 12
  %905 = add i64 %900, 11
  store i64 %905, i64* %3, align 8
  %906 = inttoptr i64 %904 to i32*
  store i32 8, i32* %906, align 4
  %.pre38 = load i64, i64* %3, align 8
  br label %block_.L_402348

block_.L_402348:                                  ; preds = %block_402356, %block_402315
  %907 = phi i64 [ %1006, %block_402356 ], [ %.pre38, %block_402315 ]
  %908 = load i64, i64* %RBP.i, align 8
  %909 = add i64 %908, -8
  %910 = add i64 %907, 4
  store i64 %910, i64* %3, align 8
  %911 = inttoptr i64 %909 to i64*
  %912 = load i64, i64* %911, align 8
  store i64 %912, i64* %.pre41, align 8
  %913 = add i64 %912, 80
  %914 = add i64 %907, 8
  store i64 %914, i64* %3, align 8
  %915 = inttoptr i64 %913 to i32*
  %916 = load i32, i32* %915, align 4
  %917 = add i32 %916, -7
  %918 = icmp ult i32 %916, 7
  %919 = zext i1 %918 to i8
  store i8 %919, i8* %38, align 1
  %920 = and i32 %917, 255
  %921 = tail call i32 @llvm.ctpop.i32(i32 %920)
  %922 = trunc i32 %921 to i8
  %923 = and i8 %922, 1
  %924 = xor i8 %923, 1
  store i8 %924, i8* %44, align 1
  %925 = xor i32 %917, %916
  %926 = lshr i32 %925, 4
  %927 = trunc i32 %926 to i8
  %928 = and i8 %927, 1
  store i8 %928, i8* %49, align 1
  %929 = icmp eq i32 %917, 0
  %930 = zext i1 %929 to i8
  store i8 %930, i8* %52, align 1
  %931 = lshr i32 %917, 31
  %932 = trunc i32 %931 to i8
  store i8 %932, i8* %55, align 1
  %933 = lshr i32 %916, 31
  %934 = xor i32 %931, %933
  %935 = add nuw nsw i32 %934, %933
  %936 = icmp eq i32 %935, 2
  %937 = zext i1 %936 to i8
  store i8 %937, i8* %61, align 1
  %938 = icmp ne i8 %932, 0
  %939 = xor i1 %938, %936
  %940 = or i1 %929, %939
  %.v55 = select i1 %940, i64 45, i64 14
  %941 = add i64 %907, %.v55
  store i64 %941, i64* %3, align 8
  br i1 %940, label %block_.L_402375, label %block_402356

block_402356:                                     ; preds = %block_.L_402348
  %942 = add i64 %941, 4
  store i64 %942, i64* %3, align 8
  %943 = load i64, i64* %911, align 8
  store i64 %943, i64* %.pre41, align 8
  %944 = add i64 %943, 80
  %945 = add i64 %941, 7
  store i64 %945, i64* %3, align 8
  %946 = inttoptr i64 %944 to i32*
  %947 = load i32, i32* %946, align 4
  %948 = add i32 %947, -8
  %949 = zext i32 %948 to i64
  store i64 %949, i64* %RCX.i62, align 8
  %950 = icmp ult i32 %947, 8
  %951 = zext i1 %950 to i8
  store i8 %951, i8* %38, align 1
  %952 = and i32 %948, 255
  %953 = tail call i32 @llvm.ctpop.i32(i32 %952)
  %954 = trunc i32 %953 to i8
  %955 = and i8 %954, 1
  %956 = xor i8 %955, 1
  store i8 %956, i8* %44, align 1
  %957 = xor i32 %948, %947
  %958 = lshr i32 %957, 4
  %959 = trunc i32 %958 to i8
  %960 = and i8 %959, 1
  store i8 %960, i8* %49, align 1
  %961 = icmp eq i32 %948, 0
  %962 = zext i1 %961 to i8
  store i8 %962, i8* %52, align 1
  %963 = lshr i32 %948, 31
  %964 = trunc i32 %963 to i8
  store i8 %964, i8* %55, align 1
  %965 = lshr i32 %947, 31
  %966 = xor i32 %963, %965
  %967 = add nuw nsw i32 %966, %965
  %968 = icmp eq i32 %967, 2
  %969 = zext i1 %968 to i8
  store i8 %969, i8* %61, align 1
  %970 = add i64 %941, 13
  store i64 %970, i64* %3, align 8
  store i32 %948, i32* %946, align 4
  %971 = load i64, i64* %RBP.i, align 8
  %972 = add i64 %971, -8
  %973 = load i64, i64* %3, align 8
  %974 = add i64 %973, 4
  store i64 %974, i64* %3, align 8
  %975 = inttoptr i64 %972 to i64*
  %976 = load i64, i64* %975, align 8
  store i64 %976, i64* %.pre41, align 8
  %977 = add i64 %976, 88
  %978 = add i64 %973, 7
  store i64 %978, i64* %3, align 8
  %979 = inttoptr i64 %977 to i32*
  %980 = load i32, i32* %979, align 4
  %981 = add i32 %980, 1
  %982 = zext i32 %981 to i64
  store i64 %982, i64* %RCX.i62, align 8
  %983 = icmp eq i32 %980, -1
  %984 = icmp eq i32 %981, 0
  %985 = or i1 %983, %984
  %986 = zext i1 %985 to i8
  store i8 %986, i8* %38, align 1
  %987 = and i32 %981, 255
  %988 = tail call i32 @llvm.ctpop.i32(i32 %987)
  %989 = trunc i32 %988 to i8
  %990 = and i8 %989, 1
  %991 = xor i8 %990, 1
  store i8 %991, i8* %44, align 1
  %992 = xor i32 %981, %980
  %993 = lshr i32 %992, 4
  %994 = trunc i32 %993 to i8
  %995 = and i8 %994, 1
  store i8 %995, i8* %49, align 1
  %996 = zext i1 %984 to i8
  store i8 %996, i8* %52, align 1
  %997 = lshr i32 %981, 31
  %998 = trunc i32 %997 to i8
  store i8 %998, i8* %55, align 1
  %999 = lshr i32 %980, 31
  %1000 = xor i32 %997, %999
  %1001 = add nuw nsw i32 %1000, %997
  %1002 = icmp eq i32 %1001, 2
  %1003 = zext i1 %1002 to i8
  store i8 %1003, i8* %61, align 1
  %1004 = add i64 %973, 13
  store i64 %1004, i64* %3, align 8
  store i32 %981, i32* %979, align 4
  %1005 = load i64, i64* %3, align 8
  %1006 = add i64 %1005, -40
  store i64 %1006, i64* %3, align 8
  br label %block_.L_402348

block_.L_402375:                                  ; preds = %block_.L_402348
  %1007 = add i64 %941, 5
  store i64 %1007, i64* %3, align 8
  br label %block_.L_40237a

block_.L_40237a:                                  ; preds = %block_4022e8, %block_.L_402375
  %1008 = phi i64 [ %1007, %block_.L_402375 ], [ %838, %block_4022e8 ]
  %1009 = add i64 %1008, 5
  br label %block_.L_40237f

block_.L_40237f:                                  ; preds = %block_.L_40242f, %block_.L_40237a
  %storemerge20 = phi i64 [ %1009, %block_.L_40237a ], [ %1303, %block_.L_40242f ]
  %1010 = load i64, i64* %RBP.i, align 8
  %1011 = add i64 %1010, -8
  %1012 = add i64 %storemerge20, 4
  store i64 %1012, i64* %3, align 8
  %1013 = inttoptr i64 %1011 to i64*
  %1014 = load i64, i64* %1013, align 8
  store i64 %1014, i64* %.pre41, align 8
  %1015 = add i64 %1014, 16
  %1016 = add i64 %storemerge20, 8
  store i64 %1016, i64* %3, align 8
  %1017 = inttoptr i64 %1015 to i32*
  %1018 = load i32, i32* %1017, align 4
  store i8 0, i8* %38, align 1
  %1019 = and i32 %1018, 255
  %1020 = tail call i32 @llvm.ctpop.i32(i32 %1019)
  %1021 = trunc i32 %1020 to i8
  %1022 = and i8 %1021, 1
  %1023 = xor i8 %1022, 1
  store i8 %1023, i8* %44, align 1
  store i8 0, i8* %49, align 1
  %1024 = icmp eq i32 %1018, 0
  %1025 = zext i1 %1024 to i8
  store i8 %1025, i8* %52, align 1
  %1026 = lshr i32 %1018, 31
  %1027 = trunc i32 %1026 to i8
  store i8 %1027, i8* %55, align 1
  store i8 0, i8* %61, align 1
  %.v52 = select i1 %1024, i64 181, i64 14
  %1028 = add i64 %storemerge20, %.v52
  store i64 %1028, i64* %3, align 8
  br i1 %1024, label %block_.L_402434, label %block_40238d

block_40238d:                                     ; preds = %block_.L_40237f
  %1029 = add i64 %1028, 4
  store i64 %1029, i64* %3, align 8
  %1030 = load i64, i64* %1013, align 8
  store i64 %1030, i64* %.pre41, align 8
  %1031 = add i64 %1030, 16
  %1032 = add i64 %1028, 7
  store i64 %1032, i64* %3, align 8
  %1033 = inttoptr i64 %1031 to i32*
  %1034 = load i32, i32* %1033, align 4
  %1035 = add i32 %1034, -1
  %1036 = zext i32 %1035 to i64
  store i64 %1036, i64* %RCX.i62, align 8
  %1037 = icmp ne i32 %1034, 0
  %1038 = zext i1 %1037 to i8
  store i8 %1038, i8* %38, align 1
  %1039 = and i32 %1035, 255
  %1040 = tail call i32 @llvm.ctpop.i32(i32 %1039)
  %1041 = trunc i32 %1040 to i8
  %1042 = and i8 %1041, 1
  %1043 = xor i8 %1042, 1
  store i8 %1043, i8* %44, align 1
  %1044 = xor i32 %1034, 16
  %1045 = xor i32 %1044, %1035
  %1046 = lshr i32 %1045, 4
  %1047 = trunc i32 %1046 to i8
  %1048 = and i8 %1047, 1
  store i8 %1048, i8* %49, align 1
  %1049 = icmp eq i32 %1035, 0
  %1050 = zext i1 %1049 to i8
  store i8 %1050, i8* %52, align 1
  %1051 = lshr i32 %1035, 31
  %1052 = trunc i32 %1051 to i8
  store i8 %1052, i8* %55, align 1
  %1053 = lshr i32 %1034, 31
  %1054 = xor i32 %1051, %1053
  %1055 = xor i32 %1051, 1
  %1056 = add nuw nsw i32 %1054, %1055
  %1057 = icmp eq i32 %1056, 2
  %1058 = zext i1 %1057 to i8
  store i8 %1058, i8* %61, align 1
  %1059 = add i64 %1028, 13
  store i64 %1059, i64* %3, align 8
  store i32 %1035, i32* %1033, align 4
  %1060 = load i64, i64* %RBP.i, align 8
  %1061 = add i64 %1060, -8
  %1062 = load i64, i64* %3, align 8
  %1063 = add i64 %1062, 4
  store i64 %1063, i64* %3, align 8
  %1064 = inttoptr i64 %1061 to i64*
  %1065 = load i64, i64* %1064, align 8
  store i64 %1065, i64* %.pre41, align 8
  %1066 = add i64 %1065, 8
  %1067 = add i64 %1062, 7
  store i64 %1067, i64* %3, align 8
  %1068 = inttoptr i64 %1066 to i32*
  %1069 = load i32, i32* %1068, align 4
  %1070 = shl i32 %1069, 1
  %1071 = icmp slt i32 %1069, 0
  %1072 = icmp slt i32 %1070, 0
  %1073 = xor i1 %1071, %1072
  %1074 = zext i32 %1070 to i64
  store i64 %1074, i64* %RCX.i62, align 8
  %.lobit21 = lshr i32 %1069, 31
  %1075 = trunc i32 %.lobit21 to i8
  store i8 %1075, i8* %38, align 1
  %1076 = and i32 %1070, 254
  %1077 = tail call i32 @llvm.ctpop.i32(i32 %1076)
  %1078 = trunc i32 %1077 to i8
  %1079 = and i8 %1078, 1
  %1080 = xor i8 %1079, 1
  store i8 %1080, i8* %44, align 1
  store i8 0, i8* %49, align 1
  %1081 = icmp eq i32 %1070, 0
  %1082 = zext i1 %1081 to i8
  store i8 %1082, i8* %52, align 1
  %1083 = lshr i32 %1069, 30
  %1084 = trunc i32 %1083 to i8
  %1085 = and i8 %1084, 1
  store i8 %1085, i8* %55, align 1
  %1086 = zext i1 %1073 to i8
  store i8 %1086, i8* %61, align 1
  %1087 = add i64 %1062, 12
  store i64 %1087, i64* %3, align 8
  store i32 %1070, i32* %1068, align 4
  %1088 = load i64, i64* %RBP.i, align 8
  %1089 = add i64 %1088, -8
  %1090 = load i64, i64* %3, align 8
  %1091 = add i64 %1090, 4
  store i64 %1091, i64* %3, align 8
  %1092 = inttoptr i64 %1089 to i64*
  %1093 = load i64, i64* %1092, align 8
  store i64 %1093, i64* %.pre41, align 8
  %1094 = add i64 %1093, 8
  %1095 = add i64 %1090, 7
  store i64 %1095, i64* %3, align 8
  %1096 = inttoptr i64 %1094 to i32*
  %1097 = load i32, i32* %1096, align 4
  %1098 = or i32 %1097, 1
  %1099 = zext i32 %1098 to i64
  store i64 %1099, i64* %RCX.i62, align 8
  store i8 0, i8* %38, align 1
  %1100 = and i32 %1098, 255
  %1101 = tail call i32 @llvm.ctpop.i32(i32 %1100)
  %1102 = trunc i32 %1101 to i8
  %1103 = and i8 %1102, 1
  %1104 = xor i8 %1103, 1
  store i8 %1104, i8* %44, align 1
  store i8 0, i8* %52, align 1
  %1105 = lshr i32 %1097, 31
  %1106 = trunc i32 %1105 to i8
  store i8 %1106, i8* %55, align 1
  store i8 0, i8* %61, align 1
  store i8 0, i8* %49, align 1
  %1107 = add i64 %1090, 13
  store i64 %1107, i64* %3, align 8
  store i32 %1098, i32* %1096, align 4
  %1108 = load i64, i64* %RBP.i, align 8
  %1109 = add i64 %1108, -8
  %1110 = load i64, i64* %3, align 8
  %1111 = add i64 %1110, 4
  store i64 %1111, i64* %3, align 8
  %1112 = inttoptr i64 %1109 to i64*
  %1113 = load i64, i64* %1112, align 8
  store i64 %1113, i64* %.pre41, align 8
  %1114 = add i64 %1113, 12
  %1115 = add i64 %1110, 7
  store i64 %1115, i64* %3, align 8
  %1116 = inttoptr i64 %1114 to i32*
  %1117 = load i32, i32* %1116, align 4
  %1118 = add i32 %1117, -1
  %1119 = zext i32 %1118 to i64
  store i64 %1119, i64* %RCX.i62, align 8
  %1120 = add i64 %1110, 13
  store i64 %1120, i64* %3, align 8
  store i32 %1118, i32* %1116, align 4
  %1121 = load i32, i32* %ECX.i56, align 4
  %1122 = load i64, i64* %3, align 8
  store i8 0, i8* %38, align 1
  %1123 = and i32 %1121, 255
  %1124 = tail call i32 @llvm.ctpop.i32(i32 %1123)
  %1125 = trunc i32 %1124 to i8
  %1126 = and i8 %1125, 1
  %1127 = xor i8 %1126, 1
  store i8 %1127, i8* %44, align 1
  store i8 0, i8* %49, align 1
  %1128 = icmp eq i32 %1121, 0
  %1129 = zext i1 %1128 to i8
  store i8 %1129, i8* %52, align 1
  %1130 = lshr i32 %1121, 31
  %1131 = trunc i32 %1130 to i8
  store i8 %1131, i8* %55, align 1
  store i8 0, i8* %61, align 1
  %.v53 = select i1 %1128, i64 9, i64 110
  %1132 = add i64 %1122, %.v53
  store i64 %1132, i64* %3, align 8
  br i1 %1128, label %block_4023ca, label %block_.L_40242f

block_4023ca:                                     ; preds = %block_40238d
  %1133 = load i64, i64* %RBP.i, align 8
  %1134 = add i64 %1133, -8
  %1135 = add i64 %1132, 4
  store i64 %1135, i64* %3, align 8
  %1136 = inttoptr i64 %1134 to i64*
  %1137 = load i64, i64* %1136, align 8
  store i64 %1137, i64* %.pre41, align 8
  %1138 = add i64 %1137, 8
  %1139 = add i64 %1132, 7
  store i64 %1139, i64* %3, align 8
  %1140 = inttoptr i64 %1138 to i32*
  %1141 = load i32, i32* %1140, align 4
  %1142 = zext i32 %1141 to i64
  store i64 %1142, i64* %RCX.i62, align 8
  %1143 = trunc i32 %1141 to i8
  store i8 %1143, i8* %DL.i128, align 1
  %1144 = add i64 %1132, 13
  store i64 %1144, i64* %3, align 8
  %1145 = load i64, i64* %1136, align 8
  store i64 %1145, i64* %.pre41, align 8
  %1146 = add i64 %1145, 24
  %1147 = add i64 %1132, 17
  store i64 %1147, i64* %3, align 8
  %1148 = inttoptr i64 %1146 to i64*
  %1149 = load i64, i64* %1148, align 8
  store i64 %1149, i64* %.pre41, align 8
  %1150 = add i64 %1132, 21
  store i64 %1150, i64* %3, align 8
  %1151 = load i64, i64* %1136, align 8
  store i64 %1151, i64* %RSI.i575, align 8
  %1152 = add i64 %1151, 32
  %1153 = add i64 %1132, 25
  store i64 %1153, i64* %3, align 8
  %1154 = inttoptr i64 %1152 to i64*
  %1155 = load i64, i64* %1154, align 8
  store i64 %1155, i64* %RSI.i575, align 8
  %1156 = add i64 %1132, 27
  store i64 %1156, i64* %3, align 8
  %1157 = inttoptr i64 %1155 to i32*
  %1158 = load i32, i32* %1157, align 4
  %1159 = zext i32 %1158 to i64
  store i64 %1159, i64* %RCX.i62, align 8
  %1160 = add i32 %1158, 1
  %1161 = zext i32 %1160 to i64
  store i64 %1161, i64* %RDI.i583, align 8
  %1162 = icmp eq i32 %1158, -1
  %1163 = icmp eq i32 %1160, 0
  %1164 = or i1 %1162, %1163
  %1165 = zext i1 %1164 to i8
  store i8 %1165, i8* %38, align 1
  %1166 = and i32 %1160, 255
  %1167 = tail call i32 @llvm.ctpop.i32(i32 %1166)
  %1168 = trunc i32 %1167 to i8
  %1169 = and i8 %1168, 1
  %1170 = xor i8 %1169, 1
  store i8 %1170, i8* %44, align 1
  %1171 = xor i32 %1160, %1158
  %1172 = lshr i32 %1171, 4
  %1173 = trunc i32 %1172 to i8
  %1174 = and i8 %1173, 1
  store i8 %1174, i8* %49, align 1
  %1175 = zext i1 %1163 to i8
  store i8 %1175, i8* %52, align 1
  %1176 = lshr i32 %1160, 31
  %1177 = trunc i32 %1176 to i8
  store i8 %1177, i8* %55, align 1
  %1178 = lshr i32 %1158, 31
  %1179 = xor i32 %1176, %1178
  %1180 = add nuw nsw i32 %1179, %1176
  %1181 = icmp eq i32 %1180, 2
  %1182 = zext i1 %1181 to i8
  store i8 %1182, i8* %61, align 1
  %1183 = add i64 %1132, 34
  store i64 %1183, i64* %3, align 8
  store i32 %1160, i32* %1157, align 4
  %1184 = load i32, i32* %ECX.i56, align 4
  %1185 = load i64, i64* %3, align 8
  %1186 = sext i32 %1184 to i64
  store i64 %1186, i64* %RSI.i575, align 8
  %1187 = load i64, i64* %.pre41, align 8
  %1188 = add i64 %1187, %1186
  %1189 = load i8, i8* %DL.i128, align 1
  %1190 = add i64 %1185, 6
  store i64 %1190, i64* %3, align 8
  %1191 = inttoptr i64 %1188 to i8*
  store i8 %1189, i8* %1191, align 1
  %1192 = load i64, i64* %RBP.i, align 8
  %1193 = add i64 %1192, -8
  %1194 = load i64, i64* %3, align 8
  %1195 = add i64 %1194, 4
  store i64 %1195, i64* %3, align 8
  %1196 = inttoptr i64 %1193 to i64*
  %1197 = load i64, i64* %1196, align 8
  store i64 %1197, i64* %.pre41, align 8
  %1198 = add i64 %1197, 12
  %1199 = add i64 %1194, 11
  store i64 %1199, i64* %3, align 8
  %1200 = inttoptr i64 %1198 to i32*
  store i32 8, i32* %1200, align 4
  %.pre39 = load i64, i64* %3, align 8
  br label %block_.L_4023fd

block_.L_4023fd:                                  ; preds = %block_40240b, %block_4023ca
  %1201 = phi i64 [ %1300, %block_40240b ], [ %.pre39, %block_4023ca ]
  %1202 = load i64, i64* %RBP.i, align 8
  %1203 = add i64 %1202, -8
  %1204 = add i64 %1201, 4
  store i64 %1204, i64* %3, align 8
  %1205 = inttoptr i64 %1203 to i64*
  %1206 = load i64, i64* %1205, align 8
  store i64 %1206, i64* %.pre41, align 8
  %1207 = add i64 %1206, 80
  %1208 = add i64 %1201, 8
  store i64 %1208, i64* %3, align 8
  %1209 = inttoptr i64 %1207 to i32*
  %1210 = load i32, i32* %1209, align 4
  %1211 = add i32 %1210, -7
  %1212 = icmp ult i32 %1210, 7
  %1213 = zext i1 %1212 to i8
  store i8 %1213, i8* %38, align 1
  %1214 = and i32 %1211, 255
  %1215 = tail call i32 @llvm.ctpop.i32(i32 %1214)
  %1216 = trunc i32 %1215 to i8
  %1217 = and i8 %1216, 1
  %1218 = xor i8 %1217, 1
  store i8 %1218, i8* %44, align 1
  %1219 = xor i32 %1211, %1210
  %1220 = lshr i32 %1219, 4
  %1221 = trunc i32 %1220 to i8
  %1222 = and i8 %1221, 1
  store i8 %1222, i8* %49, align 1
  %1223 = icmp eq i32 %1211, 0
  %1224 = zext i1 %1223 to i8
  store i8 %1224, i8* %52, align 1
  %1225 = lshr i32 %1211, 31
  %1226 = trunc i32 %1225 to i8
  store i8 %1226, i8* %55, align 1
  %1227 = lshr i32 %1210, 31
  %1228 = xor i32 %1225, %1227
  %1229 = add nuw nsw i32 %1228, %1227
  %1230 = icmp eq i32 %1229, 2
  %1231 = zext i1 %1230 to i8
  store i8 %1231, i8* %61, align 1
  %1232 = icmp ne i8 %1226, 0
  %1233 = xor i1 %1232, %1230
  %1234 = or i1 %1223, %1233
  %.v54 = select i1 %1234, i64 45, i64 14
  %1235 = add i64 %1201, %.v54
  store i64 %1235, i64* %3, align 8
  br i1 %1234, label %block_.L_40242a, label %block_40240b

block_40240b:                                     ; preds = %block_.L_4023fd
  %1236 = add i64 %1235, 4
  store i64 %1236, i64* %3, align 8
  %1237 = load i64, i64* %1205, align 8
  store i64 %1237, i64* %.pre41, align 8
  %1238 = add i64 %1237, 80
  %1239 = add i64 %1235, 7
  store i64 %1239, i64* %3, align 8
  %1240 = inttoptr i64 %1238 to i32*
  %1241 = load i32, i32* %1240, align 4
  %1242 = add i32 %1241, -8
  %1243 = zext i32 %1242 to i64
  store i64 %1243, i64* %RCX.i62, align 8
  %1244 = icmp ult i32 %1241, 8
  %1245 = zext i1 %1244 to i8
  store i8 %1245, i8* %38, align 1
  %1246 = and i32 %1242, 255
  %1247 = tail call i32 @llvm.ctpop.i32(i32 %1246)
  %1248 = trunc i32 %1247 to i8
  %1249 = and i8 %1248, 1
  %1250 = xor i8 %1249, 1
  store i8 %1250, i8* %44, align 1
  %1251 = xor i32 %1242, %1241
  %1252 = lshr i32 %1251, 4
  %1253 = trunc i32 %1252 to i8
  %1254 = and i8 %1253, 1
  store i8 %1254, i8* %49, align 1
  %1255 = icmp eq i32 %1242, 0
  %1256 = zext i1 %1255 to i8
  store i8 %1256, i8* %52, align 1
  %1257 = lshr i32 %1242, 31
  %1258 = trunc i32 %1257 to i8
  store i8 %1258, i8* %55, align 1
  %1259 = lshr i32 %1241, 31
  %1260 = xor i32 %1257, %1259
  %1261 = add nuw nsw i32 %1260, %1259
  %1262 = icmp eq i32 %1261, 2
  %1263 = zext i1 %1262 to i8
  store i8 %1263, i8* %61, align 1
  %1264 = add i64 %1235, 13
  store i64 %1264, i64* %3, align 8
  store i32 %1242, i32* %1240, align 4
  %1265 = load i64, i64* %RBP.i, align 8
  %1266 = add i64 %1265, -8
  %1267 = load i64, i64* %3, align 8
  %1268 = add i64 %1267, 4
  store i64 %1268, i64* %3, align 8
  %1269 = inttoptr i64 %1266 to i64*
  %1270 = load i64, i64* %1269, align 8
  store i64 %1270, i64* %.pre41, align 8
  %1271 = add i64 %1270, 88
  %1272 = add i64 %1267, 7
  store i64 %1272, i64* %3, align 8
  %1273 = inttoptr i64 %1271 to i32*
  %1274 = load i32, i32* %1273, align 4
  %1275 = add i32 %1274, 1
  %1276 = zext i32 %1275 to i64
  store i64 %1276, i64* %RCX.i62, align 8
  %1277 = icmp eq i32 %1274, -1
  %1278 = icmp eq i32 %1275, 0
  %1279 = or i1 %1277, %1278
  %1280 = zext i1 %1279 to i8
  store i8 %1280, i8* %38, align 1
  %1281 = and i32 %1275, 255
  %1282 = tail call i32 @llvm.ctpop.i32(i32 %1281)
  %1283 = trunc i32 %1282 to i8
  %1284 = and i8 %1283, 1
  %1285 = xor i8 %1284, 1
  store i8 %1285, i8* %44, align 1
  %1286 = xor i32 %1275, %1274
  %1287 = lshr i32 %1286, 4
  %1288 = trunc i32 %1287 to i8
  %1289 = and i8 %1288, 1
  store i8 %1289, i8* %49, align 1
  %1290 = zext i1 %1278 to i8
  store i8 %1290, i8* %52, align 1
  %1291 = lshr i32 %1275, 31
  %1292 = trunc i32 %1291 to i8
  store i8 %1292, i8* %55, align 1
  %1293 = lshr i32 %1274, 31
  %1294 = xor i32 %1291, %1293
  %1295 = add nuw nsw i32 %1294, %1291
  %1296 = icmp eq i32 %1295, 2
  %1297 = zext i1 %1296 to i8
  store i8 %1297, i8* %61, align 1
  %1298 = add i64 %1267, 13
  store i64 %1298, i64* %3, align 8
  store i32 %1275, i32* %1273, align 4
  %1299 = load i64, i64* %3, align 8
  %1300 = add i64 %1299, -40
  store i64 %1300, i64* %3, align 8
  br label %block_.L_4023fd

block_.L_40242a:                                  ; preds = %block_.L_4023fd
  %1301 = add i64 %1235, 5
  store i64 %1301, i64* %3, align 8
  br label %block_.L_40242f

block_.L_40242f:                                  ; preds = %block_40238d, %block_.L_40242a
  %1302 = phi i64 [ %1301, %block_.L_40242a ], [ %1132, %block_40238d ]
  %1303 = add i64 %1302, -176
  %1304 = add i64 %1302, 5
  store i64 %1304, i64* %3, align 8
  br label %block_.L_40237f

block_.L_402434:                                  ; preds = %block_.L_40237f
  %1305 = add i64 %1028, 30
  store i64 %1305, i64* %3, align 8
  br label %block_.L_402452

block_.L_402439:                                  ; preds = %block_.L_4022db
  %1306 = add i64 %779, 16
  %1307 = add i64 %775, 7
  store i64 %1307, i64* %3, align 8
  %1308 = inttoptr i64 %1306 to i32*
  %1309 = load i32, i32* %1308, align 4
  %1310 = add i32 %1309, 1
  %1311 = zext i32 %1310 to i64
  store i64 %1311, i64* %RCX.i62, align 8
  %1312 = icmp eq i32 %1309, -1
  %1313 = icmp eq i32 %1310, 0
  %1314 = or i1 %1312, %1313
  %1315 = zext i1 %1314 to i8
  store i8 %1315, i8* %38, align 1
  %1316 = and i32 %1310, 255
  %1317 = tail call i32 @llvm.ctpop.i32(i32 %1316)
  %1318 = trunc i32 %1317 to i8
  %1319 = and i8 %1318, 1
  %1320 = xor i8 %1319, 1
  store i8 %1320, i8* %44, align 1
  %1321 = xor i32 %1310, %1309
  %1322 = lshr i32 %1321, 4
  %1323 = trunc i32 %1322 to i8
  %1324 = and i8 %1323, 1
  store i8 %1324, i8* %49, align 1
  %1325 = zext i1 %1313 to i8
  store i8 %1325, i8* %52, align 1
  %1326 = lshr i32 %1310, 31
  %1327 = trunc i32 %1326 to i8
  store i8 %1327, i8* %55, align 1
  %1328 = lshr i32 %1309, 31
  %1329 = xor i32 %1326, %1328
  %1330 = add nuw nsw i32 %1329, %1326
  %1331 = icmp eq i32 %1330, 2
  %1332 = zext i1 %1331 to i8
  store i8 %1332, i8* %61, align 1
  %1333 = add i64 %775, 13
  store i64 %1333, i64* %3, align 8
  store i32 %1310, i32* %1308, align 4
  %1334 = load i64, i64* %RBP.i, align 8
  %1335 = add i64 %1334, -20
  %1336 = load i64, i64* %3, align 8
  %1337 = add i64 %1336, 3
  store i64 %1337, i64* %3, align 8
  %1338 = inttoptr i64 %1335 to i32*
  %1339 = load i32, i32* %1338, align 4
  %1340 = add i32 %1339, -256
  %1341 = zext i32 %1340 to i64
  store i64 %1341, i64* %RCX.i62, align 8
  %1342 = icmp ult i32 %1339, 256
  %1343 = zext i1 %1342 to i8
  store i8 %1343, i8* %38, align 1
  %1344 = and i32 %1340, 255
  %1345 = tail call i32 @llvm.ctpop.i32(i32 %1344)
  %1346 = trunc i32 %1345 to i8
  %1347 = and i8 %1346, 1
  %1348 = xor i8 %1347, 1
  store i8 %1348, i8* %44, align 1
  %1349 = xor i32 %1340, %1339
  %1350 = lshr i32 %1349, 4
  %1351 = trunc i32 %1350 to i8
  %1352 = and i8 %1351, 1
  store i8 %1352, i8* %49, align 1
  %1353 = icmp eq i32 %1340, 0
  %1354 = zext i1 %1353 to i8
  store i8 %1354, i8* %52, align 1
  %1355 = lshr i32 %1340, 31
  %1356 = trunc i32 %1355 to i8
  store i8 %1356, i8* %55, align 1
  %1357 = lshr i32 %1339, 31
  %1358 = xor i32 %1355, %1357
  %1359 = add nuw nsw i32 %1358, %1357
  %1360 = icmp eq i32 %1359, 2
  %1361 = zext i1 %1360 to i8
  store i8 %1361, i8* %61, align 1
  %1362 = add i64 %1336, 12
  store i64 %1362, i64* %3, align 8
  store i32 %1340, i32* %1338, align 4
  %.pre40 = load i64, i64* %3, align 8
  br label %block_.L_402452

block_.L_402452:                                  ; preds = %block_.L_402439, %block_.L_402434
  %1363 = phi i64 [ %.pre40, %block_.L_402439 ], [ %1305, %block_.L_402434 ]
  %1364 = add i64 %1363, 5
  store i64 %1364, i64* %3, align 8
  br label %block_.L_402457

block_.L_402457:                                  ; preds = %block_.L_402452, %block_.L_4022cb
  %storemerge16 = phi i64 [ %751, %block_.L_4022cb ], [ %1364, %block_.L_402452 ]
  %1365 = load i64, i64* %RBP.i, align 8
  %1366 = add i64 %1365, -20
  %1367 = add i64 %storemerge16, 3
  store i64 %1367, i64* %3, align 8
  %1368 = inttoptr i64 %1366 to i32*
  %1369 = load i32, i32* %1368, align 4
  %1370 = shl i32 %1369, 1
  %1371 = icmp slt i32 %1369, 0
  %1372 = icmp slt i32 %1370, 0
  %1373 = xor i1 %1371, %1372
  %1374 = zext i32 %1370 to i64
  store i64 %1374, i64* %.pre41, align 8
  %.lobit17 = lshr i32 %1369, 31
  %1375 = trunc i32 %.lobit17 to i8
  store i8 %1375, i8* %38, align 1
  %1376 = and i32 %1370, 254
  %1377 = tail call i32 @llvm.ctpop.i32(i32 %1376)
  %1378 = trunc i32 %1377 to i8
  %1379 = and i8 %1378, 1
  %1380 = xor i8 %1379, 1
  store i8 %1380, i8* %44, align 1
  store i8 0, i8* %49, align 1
  %1381 = icmp eq i32 %1370, 0
  %1382 = zext i1 %1381 to i8
  store i8 %1382, i8* %52, align 1
  %1383 = lshr i32 %1369, 30
  %1384 = trunc i32 %1383 to i8
  %1385 = and i8 %1384, 1
  store i8 %1385, i8* %55, align 1
  %1386 = zext i1 %1373 to i8
  store i8 %1386, i8* %61, align 1
  %1387 = add i64 %storemerge16, 8
  store i64 %1387, i64* %3, align 8
  store i32 %1370, i32* %1368, align 4
  %1388 = load i64, i64* %RBP.i, align 8
  %1389 = add i64 %1388, -16
  %1390 = load i64, i64* %3, align 8
  %1391 = add i64 %1390, 3
  store i64 %1391, i64* %3, align 8
  %1392 = inttoptr i64 %1389 to i32*
  %1393 = load i32, i32* %1392, align 4
  %1394 = shl i32 %1393, 1
  %1395 = icmp slt i32 %1393, 0
  %1396 = icmp slt i32 %1394, 0
  %1397 = xor i1 %1395, %1396
  %1398 = zext i32 %1394 to i64
  store i64 %1398, i64* %.pre41, align 8
  %.lobit18 = lshr i32 %1393, 31
  %1399 = trunc i32 %.lobit18 to i8
  store i8 %1399, i8* %38, align 1
  %1400 = and i32 %1394, 254
  %1401 = tail call i32 @llvm.ctpop.i32(i32 %1400)
  %1402 = trunc i32 %1401 to i8
  %1403 = and i8 %1402, 1
  %1404 = xor i8 %1403, 1
  store i8 %1404, i8* %44, align 1
  store i8 0, i8* %49, align 1
  %1405 = icmp eq i32 %1394, 0
  %1406 = zext i1 %1405 to i8
  store i8 %1406, i8* %52, align 1
  %1407 = lshr i32 %1393, 30
  %1408 = trunc i32 %1407 to i8
  %1409 = and i8 %1408, 1
  store i8 %1409, i8* %55, align 1
  %1410 = zext i1 %1397 to i8
  store i8 %1410, i8* %61, align 1
  %1411 = add i64 %1390, 8
  store i64 %1411, i64* %3, align 8
  store i32 %1394, i32* %1392, align 4
  %1412 = load i64, i64* %3, align 8
  %1413 = add i64 %1412, -772
  %1414 = add i64 %1412, 5
  store i64 %1414, i64* %3, align 8
  br label %block_.L_402165

block_.L_40246e:                                  ; preds = %block_.L_402165
  %1415 = add i64 %167, 3
  store i64 %1415, i64* %3, align 8
  %1416 = load i32, i32* %144, align 4
  %1417 = zext i32 %1416 to i64
  store i64 %1417, i64* %.pre41, align 8
  %RCX.i25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %1418 = add i64 %141, -8
  %1419 = add i64 %167, 7
  store i64 %1419, i64* %3, align 8
  %1420 = inttoptr i64 %1418 to i64*
  %1421 = load i64, i64* %1420, align 8
  store i64 %1421, i64* %RCX.i25, align 8
  %1422 = add i64 %1421, 4
  %1423 = add i64 %167, 10
  store i64 %1423, i64* %3, align 8
  %1424 = inttoptr i64 %1422 to i32*
  store i32 %1416, i32* %1424, align 4
  %1425 = load i64, i64* %RBP.i, align 8
  %1426 = add i64 %1425, -20
  %1427 = load i64, i64* %3, align 8
  %1428 = add i64 %1427, 3
  store i64 %1428, i64* %3, align 8
  %1429 = inttoptr i64 %1426 to i32*
  %1430 = load i32, i32* %1429, align 4
  %1431 = zext i32 %1430 to i64
  store i64 %1431, i64* %.pre41, align 8
  %1432 = add i64 %1425, -8
  %1433 = add i64 %1427, 7
  store i64 %1433, i64* %3, align 8
  %1434 = inttoptr i64 %1432 to i64*
  %1435 = load i64, i64* %1434, align 8
  store i64 %1435, i64* %RCX.i25, align 8
  %1436 = add i64 %1427, 9
  store i64 %1436, i64* %3, align 8
  %1437 = inttoptr i64 %1435 to i32*
  store i32 %1430, i32* %1437, align 4
  %1438 = load i64, i64* %RBP.i, align 8
  %1439 = add i64 %1438, -8
  %1440 = load i64, i64* %3, align 8
  %1441 = add i64 %1440, 4
  store i64 %1441, i64* %3, align 8
  %1442 = inttoptr i64 %1439 to i64*
  %1443 = load i64, i64* %1442, align 8
  store i64 %1443, i64* %RCX.i25, align 8
  %1444 = add i64 %1443, 80
  %1445 = add i64 %1440, 7
  store i64 %1445, i64* %3, align 8
  %1446 = inttoptr i64 %1444 to i32*
  %1447 = load i32, i32* %1446, align 4
  %1448 = add i32 %1447, 1
  %1449 = zext i32 %1448 to i64
  store i64 %1449, i64* %.pre41, align 8
  %1450 = icmp eq i32 %1447, -1
  %1451 = icmp eq i32 %1448, 0
  %1452 = or i1 %1450, %1451
  %1453 = zext i1 %1452 to i8
  store i8 %1453, i8* %38, align 1
  %1454 = and i32 %1448, 255
  %1455 = tail call i32 @llvm.ctpop.i32(i32 %1454)
  %1456 = trunc i32 %1455 to i8
  %1457 = and i8 %1456, 1
  %1458 = xor i8 %1457, 1
  store i8 %1458, i8* %44, align 1
  %1459 = xor i32 %1448, %1447
  %1460 = lshr i32 %1459, 4
  %1461 = trunc i32 %1460 to i8
  %1462 = and i8 %1461, 1
  store i8 %1462, i8* %49, align 1
  %1463 = zext i1 %1451 to i8
  store i8 %1463, i8* %52, align 1
  %1464 = lshr i32 %1448, 31
  %1465 = trunc i32 %1464 to i8
  store i8 %1465, i8* %55, align 1
  %1466 = lshr i32 %1447, 31
  %1467 = xor i32 %1464, %1466
  %1468 = add nuw nsw i32 %1467, %1464
  %1469 = icmp eq i32 %1468, 2
  %1470 = zext i1 %1469 to i8
  store i8 %1470, i8* %61, align 1
  %1471 = add i64 %1440, 13
  store i64 %1471, i64* %3, align 8
  store i32 %1448, i32* %1446, align 4
  %1472 = load i64, i64* %3, align 8
  %1473 = add i64 %1472, 1
  store i64 %1473, i64* %3, align 8
  %1474 = load i64, i64* %6, align 8
  %1475 = add i64 %1474, 8
  %1476 = inttoptr i64 %1474 to i64*
  %1477 = load i64, i64* %1476, align 8
  store i64 %1477, i64* %RBP.i, align 8
  store i64 %1475, i64* %6, align 8
  %1478 = add i64 %1472, 2
  store i64 %1478, i64* %3, align 8
  %1479 = inttoptr i64 %1475 to i64*
  %1480 = load i64, i64* %1479, align 8
  store i64 %1480, i64* %3, align 8
  %1481 = add i64 %1474, 16
  store i64 %1481, i64* %6, align 8
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
define %struct.Memory* @routine_movw__si___ax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AX = bitcast %union.anon* %3 to i16*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SI = bitcast %union.anon* %4 to i16*
  %5 = load i16, i16* %SI, align 2
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i16 %5, i16* %AX, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdi__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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
define %struct.Memory* @routine_movw__ax__MINUS0xa__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AX = bitcast %union.anon* %3 to i16*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -10
  %6 = load i16, i16* %AX, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x4__rdi____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = add i64 %3, 4
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
define %struct.Memory* @routine_subl__0x2___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -2
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RSI, align 8
  %9 = icmp ult i32 %6, 2
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
  %31 = add nuw nsw i32 %30, %29
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl___rdi____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpw__0x0__MINUS0xa__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -10
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i16*
  %8 = load i16, i16* %7, align 2
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = and i16 %8, 255
  %11 = zext i16 %10 to i32
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %17, align 1
  %18 = icmp eq i16 %8, 0
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %19, i8* %20, align 1
  %21 = lshr i16 %8, 15
  %22 = trunc i16 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %24, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_402160(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x10__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
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
define %struct.Memory* @routine_addl_MINUS0x14__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20
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
define %struct.Memory* @routine_movl__0x2__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 2, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_402165(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x100__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -256
  %10 = icmp ult i32 %8, 256
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
  %19 = xor i32 %9, %8
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %9, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %9, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %8, 31
  %31 = xor i32 %27, %30
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jae_.L_40246e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x200__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -512
  %10 = icmp ult i32 %8, 512
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
  %19 = xor i32 %9, %8
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %9, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %9, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %8, 31
  %31 = xor i32 %27, %30
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jb_.L_4022db(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x8__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 8
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
define %struct.Memory* @routine_movl__ecx__0x8__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 8
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_orl__0x1___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = or i64 %3, 1
  %7 = trunc i64 %6 to i32
  %8 = and i64 %6, 4294967295
  store i64 %8, i64* %RCX, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = and i32 %7, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %16, align 1
  %17 = lshr i32 %7, 31
  %18 = trunc i32 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %18, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %21, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xc__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 12
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
define %struct.Memory* @routine_addl__0xffffffff___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  %9 = icmp ne i32 %6, 0
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
  %18 = xor i32 %6, 16
  %19 = xor i32 %18, %7
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %7, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %7, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %6, 31
  %31 = xor i32 %27, %30
  %32 = xor i32 %27, 1
  %33 = add nuw nsw i32 %31, %32
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__0xc__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 12
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
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
define %struct.Memory* @routine_jne_.L_402214(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movb__cl___dl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL = bitcast %union.anon* %4 to i8*
  %5 = load i8, i8* %CL, align 1
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i8 %5, i8* %DL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x18__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x8__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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
define %struct.Memory* @routine_movq_0x20__rsi____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl___rsi____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = bitcast i64* %RSI to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x1___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDI, align 8
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
define %struct.Memory* @routine_movl__edi____rsi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = bitcast i64* %RSI to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  store i32 %6, i32* %5, align 4
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
define %struct.Memory* @routine_movb__dl____rax__rsi_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL = bitcast %union.anon* %3 to i8*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RSI, align 8
  %6 = add i64 %5, %4
  %7 = load i8, i8* %DL, align 1
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 3
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %6 to i8*
  store i8 %7, i8* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x8__0xc__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 8, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x7__0x50__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -7
  %10 = icmp ult i32 %8, 7
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
  %19 = xor i32 %9, %8
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %9, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %9, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %8, 31
  %31 = xor i32 %27, %30
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_40220f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = or i1 %6, %13
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %14, i64 %rel_off1, i64 %rel_off2
  %16 = add i64 %.v, %3
  store i64 %16, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x50__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 80
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
define %struct.Memory* @routine_subl__0x8___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -8
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  %9 = icmp ult i32 %6, 8
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
  %31 = add nuw nsw i32 %30, %29
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__0x50__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 80
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x58__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 88
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
define %struct.Memory* @routine_movl__ecx__0x58__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 88
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4021e2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_402214(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_402219(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x10__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = and i32 %8, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %16, align 1
  %17 = icmp eq i32 %8, 0
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %18, i8* %19, align 1
  %20 = lshr i32 %8, 31
  %21 = trunc i32 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jbe_.L_4022cb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x10__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 16
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
define %struct.Memory* @routine_movl__ecx__0x10__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 16
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4022c6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jle_.L_4022c1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = or i1 %6, %13
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %14, i64 %rel_off1, i64 %rel_off2
  %16 = add i64 %.v, %3
  store i64 %16, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_402294(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4022c6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x200___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 5
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -512
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ult i32 %6, 512
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
  %31 = add nuw nsw i32 %30, %29
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_402457(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x100__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -256
  %10 = icmp ult i32 %8, 256
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
  %19 = xor i32 %9, %8
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %9, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %9, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %8, 31
  %31 = xor i32 %27, %30
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jae_.L_402439(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
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
define %struct.Memory* @routine_jne_.L_40237a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jle_.L_402375(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = or i1 %6, %13
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %14, i64 %rel_off1, i64 %rel_off2
  %16 = add i64 %.v, %3
  store i64 %16, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_402348(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40237a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40237f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jbe_.L_402434(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_40242f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jle_.L_40242a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = or i1 %6, %13
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %14, i64 %rel_off1, i64 %rel_off2
  %16 = add i64 %.v, %3
  store i64 %16, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4023fd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40242f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_402452(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
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
define %struct.Memory* @routine_subl__0x100___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -256
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  %9 = icmp ult i32 %6, 256
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
  %31 = add nuw nsw i32 %30, %29
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movl__eax__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x4__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 4
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax____rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = bitcast i64* %RCX to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  store i32 %6, i32* %5, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x50__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 80
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
define %struct.Memory* @routine_movl__eax__0x50__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 80
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
