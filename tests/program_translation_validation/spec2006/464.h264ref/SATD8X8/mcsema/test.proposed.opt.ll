; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x726840_type = type <{ [8 x i8] }>
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
@G_0x726840 = local_unnamed_addr global %G_0x726840_type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @SATD8X8(%struct.State* noalias, i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -696
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 688
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
  %RDI.i1740 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %40 = add i64 %7, -16
  %41 = load i64, i64* %RDI.i1740, align 8
  %42 = add i64 %10, 14
  store i64 %42, i64* %3, align 8
  %43 = inttoptr i64 %40 to i64*
  store i64 %41, i64* %43, align 8
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i1737 = bitcast %union.anon* %44 to i32*
  %45 = load i64, i64* %RBP.i, align 8
  %46 = add i64 %45, -12
  %47 = load i32, i32* %ESI.i1737, align 4
  %48 = load i64, i64* %3, align 8
  %49 = add i64 %48, 3
  store i64 %49, i64* %3, align 8
  %50 = inttoptr i64 %46 to i32*
  store i32 %47, i32* %50, align 4
  %51 = load i64, i64* %RBP.i, align 8
  %52 = add i64 %51, -24
  %53 = load i64, i64* %3, align 8
  %54 = add i64 %53, 7
  store i64 %54, i64* %3, align 8
  %55 = inttoptr i64 %52 to i32*
  store i32 0, i32* %55, align 4
  %56 = load i64, i64* %RBP.i, align 8
  %57 = add i64 %56, -12
  %58 = load i64, i64* %3, align 8
  %59 = add i64 %58, 4
  store i64 %59, i64* %3, align 8
  %60 = inttoptr i64 %57 to i32*
  %61 = load i32, i32* %60, align 4
  store i8 0, i8* %14, align 1
  %62 = and i32 %61, 255
  %63 = tail call i32 @llvm.ctpop.i32(i32 %62)
  %64 = trunc i32 %63 to i8
  %65 = and i8 %64, 1
  %66 = xor i8 %65, 1
  store i8 %66, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %67 = icmp eq i32 %61, 0
  %68 = zext i1 %67 to i8
  store i8 %68, i8* %30, align 1
  %69 = lshr i32 %61, 31
  %70 = trunc i32 %69 to i8
  store i8 %70, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v94 = select i1 %67, i64 2309, i64 10
  %71 = add i64 %58, %.v94
  store i64 %71, i64* %3, align 8
  br i1 %67, label %block_.L_45fece, label %block_45f5d3

block_45f5d3:                                     ; preds = %entry
  %72 = add i64 %56, -20
  %73 = add i64 %71, 7
  store i64 %73, i64* %3, align 8
  %74 = inttoptr i64 %72 to i32*
  store i32 0, i32* %74, align 4
  %RAX.i1724 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX.i1721 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX.i1718 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI.i1715 = getelementptr inbounds %union.anon, %union.anon* %44, i64 0, i32 0
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_45f5da

block_.L_45f5da:                                  ; preds = %block_45f5e4, %block_45f5d3
  %76 = phi i64 [ %3371, %block_45f5e4 ], [ %.pre, %block_45f5d3 ]
  %77 = load i64, i64* %RBP.i, align 8
  %78 = add i64 %77, -20
  %79 = add i64 %76, 4
  store i64 %79, i64* %3, align 8
  %80 = inttoptr i64 %78 to i32*
  %81 = load i32, i32* %80, align 4
  %82 = add i32 %81, -8
  %83 = icmp ult i32 %81, 8
  %84 = zext i1 %83 to i8
  store i8 %84, i8* %14, align 1
  %85 = and i32 %82, 255
  %86 = tail call i32 @llvm.ctpop.i32(i32 %85)
  %87 = trunc i32 %86 to i8
  %88 = and i8 %87, 1
  %89 = xor i8 %88, 1
  store i8 %89, i8* %21, align 1
  %90 = xor i32 %82, %81
  %91 = lshr i32 %90, 4
  %92 = trunc i32 %91 to i8
  %93 = and i8 %92, 1
  store i8 %93, i8* %27, align 1
  %94 = icmp eq i32 %82, 0
  %95 = zext i1 %94 to i8
  store i8 %95, i8* %30, align 1
  %96 = lshr i32 %82, 31
  %97 = trunc i32 %96 to i8
  store i8 %97, i8* %33, align 1
  %98 = lshr i32 %81, 31
  %99 = xor i32 %96, %98
  %100 = add nuw nsw i32 %99, %98
  %101 = icmp eq i32 %100, 2
  %102 = zext i1 %101 to i8
  store i8 %102, i8* %39, align 1
  %103 = icmp ne i8 %97, 0
  %104 = xor i1 %103, %101
  %.v95 = select i1 %104, i64 10, i64 1299
  %105 = add i64 %76, %.v95
  store i64 %105, i64* %3, align 8
  br i1 %104, label %block_45f5e4, label %block_.L_45faed

block_45f5e4:                                     ; preds = %block_.L_45f5da
  %106 = add i64 %77, -544
  store i64 %106, i64* %RAX.i1724, align 8
  %107 = add i64 %77, -288
  store i64 %107, i64* %RCX.i1721, align 8
  %108 = add i64 %77, -8
  %109 = add i64 %105, 18
  store i64 %109, i64* %3, align 8
  %110 = inttoptr i64 %108 to i64*
  %111 = load i64, i64* %110, align 8
  store i64 %111, i64* %RDX.i1718, align 8
  %112 = add i64 %105, 21
  store i64 %112, i64* %3, align 8
  %113 = load i32, i32* %80, align 4
  %114 = shl i32 %113, 3
  %115 = zext i32 %114 to i64
  store i64 %115, i64* %RSI.i1715, align 8
  %116 = lshr i32 %113, 29
  %117 = trunc i32 %116 to i8
  %118 = and i8 %117, 1
  store i8 %118, i8* %14, align 1
  %119 = and i32 %114, 248
  %120 = tail call i32 @llvm.ctpop.i32(i32 %119)
  %121 = trunc i32 %120 to i8
  %122 = and i8 %121, 1
  %123 = xor i8 %122, 1
  store i8 %123, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %124 = icmp eq i32 %114, 0
  %125 = zext i1 %124 to i8
  store i8 %125, i8* %30, align 1
  %126 = lshr i32 %113, 28
  %127 = trunc i32 %126 to i8
  %128 = and i8 %127, 1
  store i8 %128, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %129 = sext i32 %114 to i64
  store i64 %129, i64* %RDI.i1740, align 8
  %130 = shl nsw i64 %129, 2
  %131 = add i64 %111, %130
  %132 = add i64 %105, 30
  store i64 %132, i64* %3, align 8
  %133 = inttoptr i64 %131 to i32*
  %134 = load i32, i32* %133, align 4
  %135 = zext i32 %134 to i64
  store i64 %135, i64* %RSI.i1715, align 8
  %136 = add i64 %105, 34
  store i64 %136, i64* %3, align 8
  %137 = load i64, i64* %110, align 8
  store i64 %137, i64* %RDX.i1718, align 8
  %138 = add i64 %105, 38
  store i64 %138, i64* %3, align 8
  %139 = load i32, i32* %80, align 4
  %140 = shl i32 %139, 3
  %141 = or i32 %140, 4
  %142 = zext i32 %141 to i64
  store i64 %142, i64* %75, align 8
  store i8 0, i8* %14, align 1
  %143 = and i32 %141, 252
  %144 = tail call i32 @llvm.ctpop.i32(i32 %143)
  %145 = trunc i32 %144 to i8
  %146 = and i8 %145, 1
  %147 = xor i8 %146, 1
  store i8 %147, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  %148 = lshr i32 %139, 28
  %149 = and i32 %148, 1
  %150 = trunc i32 %149 to i8
  store i8 %150, i8* %33, align 1
  %151 = lshr i32 %139, 28
  %152 = and i32 %151, 1
  %153 = xor i32 %149, %152
  %154 = add nuw nsw i32 %153, %149
  %155 = icmp eq i32 %154, 2
  %156 = zext i1 %155 to i8
  store i8 %156, i8* %39, align 1
  %157 = sext i32 %141 to i64
  store i64 %157, i64* %RDI.i1740, align 8
  %158 = shl nsw i64 %157, 2
  %159 = add i64 %137, %158
  %160 = add i64 %105, 52
  store i64 %160, i64* %3, align 8
  %161 = inttoptr i64 %159 to i32*
  %162 = load i32, i32* %161, align 4
  %163 = add i32 %162, %134
  %164 = zext i32 %163 to i64
  store i64 %164, i64* %RSI.i1715, align 8
  %165 = icmp ult i32 %163, %134
  %166 = icmp ult i32 %163, %162
  %167 = or i1 %165, %166
  %168 = zext i1 %167 to i8
  store i8 %168, i8* %14, align 1
  %169 = and i32 %163, 255
  %170 = tail call i32 @llvm.ctpop.i32(i32 %169)
  %171 = trunc i32 %170 to i8
  %172 = and i8 %171, 1
  %173 = xor i8 %172, 1
  store i8 %173, i8* %21, align 1
  %174 = xor i32 %162, %134
  %175 = xor i32 %174, %163
  %176 = lshr i32 %175, 4
  %177 = trunc i32 %176 to i8
  %178 = and i8 %177, 1
  store i8 %178, i8* %27, align 1
  %179 = icmp eq i32 %163, 0
  %180 = zext i1 %179 to i8
  store i8 %180, i8* %30, align 1
  %181 = lshr i32 %163, 31
  %182 = trunc i32 %181 to i8
  store i8 %182, i8* %33, align 1
  %183 = lshr i32 %134, 31
  %184 = lshr i32 %162, 31
  %185 = xor i32 %181, %183
  %186 = xor i32 %181, %184
  %187 = add nuw nsw i32 %185, %186
  %188 = icmp eq i32 %187, 2
  %189 = zext i1 %188 to i8
  store i8 %189, i8* %39, align 1
  %190 = load i64, i64* %RBP.i, align 8
  %191 = add i64 %190, -20
  %192 = add i64 %105, 56
  store i64 %192, i64* %3, align 8
  %193 = inttoptr i64 %191 to i32*
  %194 = load i32, i32* %193, align 4
  %195 = sext i32 %194 to i64
  %196 = shl nsw i64 %195, 5
  store i64 %196, i64* %RDX.i1718, align 8
  %197 = load i64, i64* %RAX.i1724, align 8
  %198 = add i64 %196, %197
  store i64 %198, i64* %RDI.i1740, align 8
  %199 = icmp ult i64 %198, %197
  %200 = icmp ult i64 %198, %196
  %201 = or i1 %199, %200
  %202 = zext i1 %201 to i8
  store i8 %202, i8* %14, align 1
  %203 = trunc i64 %198 to i32
  %204 = and i32 %203, 255
  %205 = tail call i32 @llvm.ctpop.i32(i32 %204)
  %206 = trunc i32 %205 to i8
  %207 = and i8 %206, 1
  %208 = xor i8 %207, 1
  store i8 %208, i8* %21, align 1
  %209 = xor i64 %197, %198
  %210 = lshr i64 %209, 4
  %211 = trunc i64 %210 to i8
  %212 = and i8 %211, 1
  store i8 %212, i8* %27, align 1
  %213 = icmp eq i64 %198, 0
  %214 = zext i1 %213 to i8
  store i8 %214, i8* %30, align 1
  %215 = lshr i64 %198, 63
  %216 = trunc i64 %215 to i8
  store i8 %216, i8* %33, align 1
  %217 = lshr i64 %197, 63
  %218 = lshr i64 %195, 58
  %219 = and i64 %218, 1
  %220 = xor i64 %215, %217
  %221 = xor i64 %215, %219
  %222 = add nuw nsw i64 %220, %221
  %223 = icmp eq i64 %222, 2
  %224 = zext i1 %223 to i8
  store i8 %224, i8* %39, align 1
  %225 = inttoptr i64 %198 to i32*
  %226 = load i32, i32* %ESI.i1737, align 4
  %227 = add i64 %105, 68
  store i64 %227, i64* %3, align 8
  store i32 %226, i32* %225, align 4
  %228 = load i64, i64* %RBP.i, align 8
  %229 = add i64 %228, -8
  %230 = load i64, i64* %3, align 8
  %231 = add i64 %230, 4
  store i64 %231, i64* %3, align 8
  %232 = inttoptr i64 %229 to i64*
  %233 = load i64, i64* %232, align 8
  store i64 %233, i64* %RDX.i1718, align 8
  %234 = add i64 %228, -20
  %235 = add i64 %230, 7
  store i64 %235, i64* %3, align 8
  %236 = inttoptr i64 %234 to i32*
  %237 = load i32, i32* %236, align 4
  %238 = shl i32 %237, 3
  %239 = or i32 %238, 1
  %240 = zext i32 %239 to i64
  store i64 %240, i64* %RSI.i1715, align 8
  store i8 0, i8* %14, align 1
  %241 = and i32 %239, 249
  %242 = tail call i32 @llvm.ctpop.i32(i32 %241)
  %243 = trunc i32 %242 to i8
  %244 = and i8 %243, 1
  %245 = xor i8 %244, 1
  store i8 %245, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  %246 = lshr i32 %237, 28
  %247 = and i32 %246, 1
  %248 = trunc i32 %247 to i8
  store i8 %248, i8* %33, align 1
  %249 = lshr i32 %237, 28
  %250 = and i32 %249, 1
  %251 = xor i32 %247, %250
  %252 = add nuw nsw i32 %251, %247
  %253 = icmp eq i32 %252, 2
  %254 = zext i1 %253 to i8
  store i8 %254, i8* %39, align 1
  %255 = sext i32 %239 to i64
  store i64 %255, i64* %RDI.i1740, align 8
  %256 = shl nsw i64 %255, 2
  %257 = add i64 %233, %256
  %258 = add i64 %230, 19
  store i64 %258, i64* %3, align 8
  %259 = inttoptr i64 %257 to i32*
  %260 = load i32, i32* %259, align 4
  %261 = zext i32 %260 to i64
  store i64 %261, i64* %RSI.i1715, align 8
  %262 = add i64 %230, 23
  store i64 %262, i64* %3, align 8
  %263 = load i64, i64* %232, align 8
  store i64 %263, i64* %RDX.i1718, align 8
  %264 = add i64 %230, 27
  store i64 %264, i64* %3, align 8
  %265 = load i32, i32* %236, align 4
  %266 = shl i32 %265, 3
  %267 = or i32 %266, 5
  %268 = zext i32 %267 to i64
  store i64 %268, i64* %75, align 8
  store i8 0, i8* %14, align 1
  %269 = and i32 %267, 253
  %270 = tail call i32 @llvm.ctpop.i32(i32 %269)
  %271 = trunc i32 %270 to i8
  %272 = and i8 %271, 1
  %273 = xor i8 %272, 1
  store i8 %273, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  %274 = lshr i32 %265, 28
  %275 = and i32 %274, 1
  %276 = trunc i32 %275 to i8
  store i8 %276, i8* %33, align 1
  %277 = lshr i32 %265, 28
  %278 = and i32 %277, 1
  %279 = xor i32 %275, %278
  %280 = add nuw nsw i32 %279, %275
  %281 = icmp eq i32 %280, 2
  %282 = zext i1 %281 to i8
  store i8 %282, i8* %39, align 1
  %283 = sext i32 %267 to i64
  store i64 %283, i64* %RDI.i1740, align 8
  %284 = shl nsw i64 %283, 2
  %285 = add i64 %263, %284
  %286 = add i64 %230, 41
  store i64 %286, i64* %3, align 8
  %287 = inttoptr i64 %285 to i32*
  %288 = load i32, i32* %287, align 4
  %289 = add i32 %288, %260
  %290 = zext i32 %289 to i64
  store i64 %290, i64* %RSI.i1715, align 8
  %291 = icmp ult i32 %289, %260
  %292 = icmp ult i32 %289, %288
  %293 = or i1 %291, %292
  %294 = zext i1 %293 to i8
  store i8 %294, i8* %14, align 1
  %295 = and i32 %289, 255
  %296 = tail call i32 @llvm.ctpop.i32(i32 %295)
  %297 = trunc i32 %296 to i8
  %298 = and i8 %297, 1
  %299 = xor i8 %298, 1
  store i8 %299, i8* %21, align 1
  %300 = xor i32 %288, %260
  %301 = xor i32 %300, %289
  %302 = lshr i32 %301, 4
  %303 = trunc i32 %302 to i8
  %304 = and i8 %303, 1
  store i8 %304, i8* %27, align 1
  %305 = icmp eq i32 %289, 0
  %306 = zext i1 %305 to i8
  store i8 %306, i8* %30, align 1
  %307 = lshr i32 %289, 31
  %308 = trunc i32 %307 to i8
  store i8 %308, i8* %33, align 1
  %309 = lshr i32 %260, 31
  %310 = lshr i32 %288, 31
  %311 = xor i32 %307, %309
  %312 = xor i32 %307, %310
  %313 = add nuw nsw i32 %311, %312
  %314 = icmp eq i32 %313, 2
  %315 = zext i1 %314 to i8
  store i8 %315, i8* %39, align 1
  %316 = load i64, i64* %RBP.i, align 8
  %317 = add i64 %316, -20
  %318 = add i64 %230, 45
  store i64 %318, i64* %3, align 8
  %319 = inttoptr i64 %317 to i32*
  %320 = load i32, i32* %319, align 4
  %321 = sext i32 %320 to i64
  %322 = shl nsw i64 %321, 5
  store i64 %322, i64* %RDX.i1718, align 8
  %323 = load i64, i64* %RAX.i1724, align 8
  %324 = add i64 %322, %323
  store i64 %324, i64* %RDI.i1740, align 8
  %325 = icmp ult i64 %324, %323
  %326 = icmp ult i64 %324, %322
  %327 = or i1 %325, %326
  %328 = zext i1 %327 to i8
  store i8 %328, i8* %14, align 1
  %329 = trunc i64 %324 to i32
  %330 = and i32 %329, 255
  %331 = tail call i32 @llvm.ctpop.i32(i32 %330)
  %332 = trunc i32 %331 to i8
  %333 = and i8 %332, 1
  %334 = xor i8 %333, 1
  store i8 %334, i8* %21, align 1
  %335 = xor i64 %323, %324
  %336 = lshr i64 %335, 4
  %337 = trunc i64 %336 to i8
  %338 = and i8 %337, 1
  store i8 %338, i8* %27, align 1
  %339 = icmp eq i64 %324, 0
  %340 = zext i1 %339 to i8
  store i8 %340, i8* %30, align 1
  %341 = lshr i64 %324, 63
  %342 = trunc i64 %341 to i8
  store i8 %342, i8* %33, align 1
  %343 = lshr i64 %323, 63
  %344 = lshr i64 %321, 58
  %345 = and i64 %344, 1
  %346 = xor i64 %341, %343
  %347 = xor i64 %341, %345
  %348 = add nuw nsw i64 %346, %347
  %349 = icmp eq i64 %348, 2
  %350 = zext i1 %349 to i8
  store i8 %350, i8* %39, align 1
  %351 = add i64 %324, 4
  %352 = load i32, i32* %ESI.i1737, align 4
  %353 = add i64 %230, 58
  store i64 %353, i64* %3, align 8
  %354 = inttoptr i64 %351 to i32*
  store i32 %352, i32* %354, align 4
  %355 = load i64, i64* %RBP.i, align 8
  %356 = add i64 %355, -8
  %357 = load i64, i64* %3, align 8
  %358 = add i64 %357, 4
  store i64 %358, i64* %3, align 8
  %359 = inttoptr i64 %356 to i64*
  %360 = load i64, i64* %359, align 8
  store i64 %360, i64* %RDX.i1718, align 8
  %361 = add i64 %355, -20
  %362 = add i64 %357, 7
  store i64 %362, i64* %3, align 8
  %363 = inttoptr i64 %361 to i32*
  %364 = load i32, i32* %363, align 4
  %365 = shl i32 %364, 3
  %366 = or i32 %365, 2
  %367 = zext i32 %366 to i64
  store i64 %367, i64* %RSI.i1715, align 8
  store i8 0, i8* %14, align 1
  %368 = and i32 %366, 250
  %369 = tail call i32 @llvm.ctpop.i32(i32 %368)
  %370 = trunc i32 %369 to i8
  %371 = and i8 %370, 1
  %372 = xor i8 %371, 1
  store i8 %372, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  %373 = lshr i32 %364, 28
  %374 = and i32 %373, 1
  %375 = trunc i32 %374 to i8
  store i8 %375, i8* %33, align 1
  %376 = lshr i32 %364, 28
  %377 = and i32 %376, 1
  %378 = xor i32 %374, %377
  %379 = add nuw nsw i32 %378, %374
  %380 = icmp eq i32 %379, 2
  %381 = zext i1 %380 to i8
  store i8 %381, i8* %39, align 1
  %382 = sext i32 %366 to i64
  store i64 %382, i64* %RDI.i1740, align 8
  %383 = shl nsw i64 %382, 2
  %384 = add i64 %360, %383
  %385 = add i64 %357, 19
  store i64 %385, i64* %3, align 8
  %386 = inttoptr i64 %384 to i32*
  %387 = load i32, i32* %386, align 4
  %388 = zext i32 %387 to i64
  store i64 %388, i64* %RSI.i1715, align 8
  %389 = add i64 %357, 23
  store i64 %389, i64* %3, align 8
  %390 = load i64, i64* %359, align 8
  store i64 %390, i64* %RDX.i1718, align 8
  %391 = add i64 %357, 27
  store i64 %391, i64* %3, align 8
  %392 = load i32, i32* %363, align 4
  %393 = shl i32 %392, 3
  %394 = or i32 %393, 6
  %395 = zext i32 %394 to i64
  store i64 %395, i64* %75, align 8
  store i8 0, i8* %14, align 1
  %396 = and i32 %394, 254
  %397 = tail call i32 @llvm.ctpop.i32(i32 %396)
  %398 = trunc i32 %397 to i8
  %399 = and i8 %398, 1
  %400 = xor i8 %399, 1
  store i8 %400, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  %401 = lshr i32 %392, 28
  %402 = and i32 %401, 1
  %403 = trunc i32 %402 to i8
  store i8 %403, i8* %33, align 1
  %404 = lshr i32 %392, 28
  %405 = and i32 %404, 1
  %406 = xor i32 %402, %405
  %407 = add nuw nsw i32 %406, %402
  %408 = icmp eq i32 %407, 2
  %409 = zext i1 %408 to i8
  store i8 %409, i8* %39, align 1
  %410 = sext i32 %394 to i64
  store i64 %410, i64* %RDI.i1740, align 8
  %411 = shl nsw i64 %410, 2
  %412 = add i64 %390, %411
  %413 = add i64 %357, 41
  store i64 %413, i64* %3, align 8
  %414 = inttoptr i64 %412 to i32*
  %415 = load i32, i32* %414, align 4
  %416 = add i32 %415, %387
  %417 = zext i32 %416 to i64
  store i64 %417, i64* %RSI.i1715, align 8
  %418 = icmp ult i32 %416, %387
  %419 = icmp ult i32 %416, %415
  %420 = or i1 %418, %419
  %421 = zext i1 %420 to i8
  store i8 %421, i8* %14, align 1
  %422 = and i32 %416, 255
  %423 = tail call i32 @llvm.ctpop.i32(i32 %422)
  %424 = trunc i32 %423 to i8
  %425 = and i8 %424, 1
  %426 = xor i8 %425, 1
  store i8 %426, i8* %21, align 1
  %427 = xor i32 %415, %387
  %428 = xor i32 %427, %416
  %429 = lshr i32 %428, 4
  %430 = trunc i32 %429 to i8
  %431 = and i8 %430, 1
  store i8 %431, i8* %27, align 1
  %432 = icmp eq i32 %416, 0
  %433 = zext i1 %432 to i8
  store i8 %433, i8* %30, align 1
  %434 = lshr i32 %416, 31
  %435 = trunc i32 %434 to i8
  store i8 %435, i8* %33, align 1
  %436 = lshr i32 %387, 31
  %437 = lshr i32 %415, 31
  %438 = xor i32 %434, %436
  %439 = xor i32 %434, %437
  %440 = add nuw nsw i32 %438, %439
  %441 = icmp eq i32 %440, 2
  %442 = zext i1 %441 to i8
  store i8 %442, i8* %39, align 1
  %443 = load i64, i64* %RBP.i, align 8
  %444 = add i64 %443, -20
  %445 = add i64 %357, 45
  store i64 %445, i64* %3, align 8
  %446 = inttoptr i64 %444 to i32*
  %447 = load i32, i32* %446, align 4
  %448 = sext i32 %447 to i64
  %449 = shl nsw i64 %448, 5
  store i64 %449, i64* %RDX.i1718, align 8
  %450 = load i64, i64* %RAX.i1724, align 8
  %451 = add i64 %449, %450
  store i64 %451, i64* %RDI.i1740, align 8
  %452 = icmp ult i64 %451, %450
  %453 = icmp ult i64 %451, %449
  %454 = or i1 %452, %453
  %455 = zext i1 %454 to i8
  store i8 %455, i8* %14, align 1
  %456 = trunc i64 %451 to i32
  %457 = and i32 %456, 255
  %458 = tail call i32 @llvm.ctpop.i32(i32 %457)
  %459 = trunc i32 %458 to i8
  %460 = and i8 %459, 1
  %461 = xor i8 %460, 1
  store i8 %461, i8* %21, align 1
  %462 = xor i64 %450, %451
  %463 = lshr i64 %462, 4
  %464 = trunc i64 %463 to i8
  %465 = and i8 %464, 1
  store i8 %465, i8* %27, align 1
  %466 = icmp eq i64 %451, 0
  %467 = zext i1 %466 to i8
  store i8 %467, i8* %30, align 1
  %468 = lshr i64 %451, 63
  %469 = trunc i64 %468 to i8
  store i8 %469, i8* %33, align 1
  %470 = lshr i64 %450, 63
  %471 = lshr i64 %448, 58
  %472 = and i64 %471, 1
  %473 = xor i64 %468, %470
  %474 = xor i64 %468, %472
  %475 = add nuw nsw i64 %473, %474
  %476 = icmp eq i64 %475, 2
  %477 = zext i1 %476 to i8
  store i8 %477, i8* %39, align 1
  %478 = add i64 %451, 8
  %479 = load i32, i32* %ESI.i1737, align 4
  %480 = add i64 %357, 58
  store i64 %480, i64* %3, align 8
  %481 = inttoptr i64 %478 to i32*
  store i32 %479, i32* %481, align 4
  %482 = load i64, i64* %RBP.i, align 8
  %483 = add i64 %482, -8
  %484 = load i64, i64* %3, align 8
  %485 = add i64 %484, 4
  store i64 %485, i64* %3, align 8
  %486 = inttoptr i64 %483 to i64*
  %487 = load i64, i64* %486, align 8
  store i64 %487, i64* %RDX.i1718, align 8
  %488 = add i64 %482, -20
  %489 = add i64 %484, 7
  store i64 %489, i64* %3, align 8
  %490 = inttoptr i64 %488 to i32*
  %491 = load i32, i32* %490, align 4
  %492 = shl i32 %491, 3
  %493 = or i32 %492, 3
  %494 = zext i32 %493 to i64
  store i64 %494, i64* %RSI.i1715, align 8
  store i8 0, i8* %14, align 1
  %495 = and i32 %493, 251
  %496 = tail call i32 @llvm.ctpop.i32(i32 %495)
  %497 = trunc i32 %496 to i8
  %498 = and i8 %497, 1
  %499 = xor i8 %498, 1
  store i8 %499, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  %500 = lshr i32 %491, 28
  %501 = and i32 %500, 1
  %502 = trunc i32 %501 to i8
  store i8 %502, i8* %33, align 1
  %503 = lshr i32 %491, 28
  %504 = and i32 %503, 1
  %505 = xor i32 %501, %504
  %506 = add nuw nsw i32 %505, %501
  %507 = icmp eq i32 %506, 2
  %508 = zext i1 %507 to i8
  store i8 %508, i8* %39, align 1
  %509 = sext i32 %493 to i64
  store i64 %509, i64* %RDI.i1740, align 8
  %510 = shl nsw i64 %509, 2
  %511 = add i64 %487, %510
  %512 = add i64 %484, 19
  store i64 %512, i64* %3, align 8
  %513 = inttoptr i64 %511 to i32*
  %514 = load i32, i32* %513, align 4
  %515 = zext i32 %514 to i64
  store i64 %515, i64* %RSI.i1715, align 8
  %516 = add i64 %484, 23
  store i64 %516, i64* %3, align 8
  %517 = load i64, i64* %486, align 8
  store i64 %517, i64* %RDX.i1718, align 8
  %518 = add i64 %484, 27
  store i64 %518, i64* %3, align 8
  %519 = load i32, i32* %490, align 4
  %520 = shl i32 %519, 3
  %521 = or i32 %520, 7
  %522 = zext i32 %521 to i64
  store i64 %522, i64* %75, align 8
  store i8 0, i8* %14, align 1
  %523 = and i32 %521, 255
  %524 = tail call i32 @llvm.ctpop.i32(i32 %523)
  %525 = trunc i32 %524 to i8
  %526 = and i8 %525, 1
  %527 = xor i8 %526, 1
  store i8 %527, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  %528 = lshr i32 %519, 28
  %529 = and i32 %528, 1
  %530 = trunc i32 %529 to i8
  store i8 %530, i8* %33, align 1
  %531 = lshr i32 %519, 28
  %532 = and i32 %531, 1
  %533 = xor i32 %529, %532
  %534 = add nuw nsw i32 %533, %529
  %535 = icmp eq i32 %534, 2
  %536 = zext i1 %535 to i8
  store i8 %536, i8* %39, align 1
  %537 = sext i32 %521 to i64
  store i64 %537, i64* %RDI.i1740, align 8
  %538 = shl nsw i64 %537, 2
  %539 = add i64 %517, %538
  %540 = add i64 %484, 41
  store i64 %540, i64* %3, align 8
  %541 = inttoptr i64 %539 to i32*
  %542 = load i32, i32* %541, align 4
  %543 = add i32 %542, %514
  %544 = zext i32 %543 to i64
  store i64 %544, i64* %RSI.i1715, align 8
  %545 = icmp ult i32 %543, %514
  %546 = icmp ult i32 %543, %542
  %547 = or i1 %545, %546
  %548 = zext i1 %547 to i8
  store i8 %548, i8* %14, align 1
  %549 = and i32 %543, 255
  %550 = tail call i32 @llvm.ctpop.i32(i32 %549)
  %551 = trunc i32 %550 to i8
  %552 = and i8 %551, 1
  %553 = xor i8 %552, 1
  store i8 %553, i8* %21, align 1
  %554 = xor i32 %542, %514
  %555 = xor i32 %554, %543
  %556 = lshr i32 %555, 4
  %557 = trunc i32 %556 to i8
  %558 = and i8 %557, 1
  store i8 %558, i8* %27, align 1
  %559 = icmp eq i32 %543, 0
  %560 = zext i1 %559 to i8
  store i8 %560, i8* %30, align 1
  %561 = lshr i32 %543, 31
  %562 = trunc i32 %561 to i8
  store i8 %562, i8* %33, align 1
  %563 = lshr i32 %514, 31
  %564 = lshr i32 %542, 31
  %565 = xor i32 %561, %563
  %566 = xor i32 %561, %564
  %567 = add nuw nsw i32 %565, %566
  %568 = icmp eq i32 %567, 2
  %569 = zext i1 %568 to i8
  store i8 %569, i8* %39, align 1
  %570 = load i64, i64* %RBP.i, align 8
  %571 = add i64 %570, -20
  %572 = add i64 %484, 45
  store i64 %572, i64* %3, align 8
  %573 = inttoptr i64 %571 to i32*
  %574 = load i32, i32* %573, align 4
  %575 = sext i32 %574 to i64
  %576 = shl nsw i64 %575, 5
  store i64 %576, i64* %RDX.i1718, align 8
  %577 = load i64, i64* %RAX.i1724, align 8
  %578 = add i64 %576, %577
  store i64 %578, i64* %RDI.i1740, align 8
  %579 = icmp ult i64 %578, %577
  %580 = icmp ult i64 %578, %576
  %581 = or i1 %579, %580
  %582 = zext i1 %581 to i8
  store i8 %582, i8* %14, align 1
  %583 = trunc i64 %578 to i32
  %584 = and i32 %583, 255
  %585 = tail call i32 @llvm.ctpop.i32(i32 %584)
  %586 = trunc i32 %585 to i8
  %587 = and i8 %586, 1
  %588 = xor i8 %587, 1
  store i8 %588, i8* %21, align 1
  %589 = xor i64 %577, %578
  %590 = lshr i64 %589, 4
  %591 = trunc i64 %590 to i8
  %592 = and i8 %591, 1
  store i8 %592, i8* %27, align 1
  %593 = icmp eq i64 %578, 0
  %594 = zext i1 %593 to i8
  store i8 %594, i8* %30, align 1
  %595 = lshr i64 %578, 63
  %596 = trunc i64 %595 to i8
  store i8 %596, i8* %33, align 1
  %597 = lshr i64 %577, 63
  %598 = lshr i64 %575, 58
  %599 = and i64 %598, 1
  %600 = xor i64 %595, %597
  %601 = xor i64 %595, %599
  %602 = add nuw nsw i64 %600, %601
  %603 = icmp eq i64 %602, 2
  %604 = zext i1 %603 to i8
  store i8 %604, i8* %39, align 1
  %605 = add i64 %578, 12
  %606 = load i32, i32* %ESI.i1737, align 4
  %607 = add i64 %484, 58
  store i64 %607, i64* %3, align 8
  %608 = inttoptr i64 %605 to i32*
  store i32 %606, i32* %608, align 4
  %609 = load i64, i64* %RBP.i, align 8
  %610 = add i64 %609, -8
  %611 = load i64, i64* %3, align 8
  %612 = add i64 %611, 4
  store i64 %612, i64* %3, align 8
  %613 = inttoptr i64 %610 to i64*
  %614 = load i64, i64* %613, align 8
  store i64 %614, i64* %RDX.i1718, align 8
  %615 = add i64 %609, -20
  %616 = add i64 %611, 7
  store i64 %616, i64* %3, align 8
  %617 = inttoptr i64 %615 to i32*
  %618 = load i32, i32* %617, align 4
  %619 = shl i32 %618, 3
  %620 = zext i32 %619 to i64
  store i64 %620, i64* %RSI.i1715, align 8
  %621 = lshr i32 %618, 29
  %622 = trunc i32 %621 to i8
  %623 = and i8 %622, 1
  store i8 %623, i8* %14, align 1
  %624 = and i32 %619, 248
  %625 = tail call i32 @llvm.ctpop.i32(i32 %624)
  %626 = trunc i32 %625 to i8
  %627 = and i8 %626, 1
  %628 = xor i8 %627, 1
  store i8 %628, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %629 = icmp eq i32 %619, 0
  %630 = zext i1 %629 to i8
  store i8 %630, i8* %30, align 1
  %631 = lshr i32 %618, 28
  %632 = trunc i32 %631 to i8
  %633 = and i8 %632, 1
  store i8 %633, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %634 = sext i32 %619 to i64
  store i64 %634, i64* %RDI.i1740, align 8
  %635 = shl nsw i64 %634, 2
  %636 = add i64 %614, %635
  %637 = add i64 %611, 16
  store i64 %637, i64* %3, align 8
  %638 = inttoptr i64 %636 to i32*
  %639 = load i32, i32* %638, align 4
  %640 = zext i32 %639 to i64
  store i64 %640, i64* %RSI.i1715, align 8
  %641 = add i64 %611, 20
  store i64 %641, i64* %3, align 8
  %642 = load i64, i64* %613, align 8
  store i64 %642, i64* %RDX.i1718, align 8
  %643 = add i64 %611, 24
  store i64 %643, i64* %3, align 8
  %644 = load i32, i32* %617, align 4
  %645 = shl i32 %644, 3
  %646 = or i32 %645, 4
  %647 = zext i32 %646 to i64
  store i64 %647, i64* %75, align 8
  store i8 0, i8* %14, align 1
  %648 = and i32 %646, 252
  %649 = tail call i32 @llvm.ctpop.i32(i32 %648)
  %650 = trunc i32 %649 to i8
  %651 = and i8 %650, 1
  %652 = xor i8 %651, 1
  store i8 %652, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  %653 = lshr i32 %644, 28
  %654 = and i32 %653, 1
  %655 = trunc i32 %654 to i8
  store i8 %655, i8* %33, align 1
  %656 = lshr i32 %644, 28
  %657 = and i32 %656, 1
  %658 = xor i32 %654, %657
  %659 = add nuw nsw i32 %658, %654
  %660 = icmp eq i32 %659, 2
  %661 = zext i1 %660 to i8
  store i8 %661, i8* %39, align 1
  %662 = sext i32 %646 to i64
  store i64 %662, i64* %RDI.i1740, align 8
  %663 = shl nsw i64 %662, 2
  %664 = add i64 %642, %663
  %665 = add i64 %611, 38
  store i64 %665, i64* %3, align 8
  %666 = inttoptr i64 %664 to i32*
  %667 = load i32, i32* %666, align 4
  %668 = sub i32 %639, %667
  %669 = zext i32 %668 to i64
  store i64 %669, i64* %RSI.i1715, align 8
  %670 = icmp ult i32 %639, %667
  %671 = zext i1 %670 to i8
  store i8 %671, i8* %14, align 1
  %672 = and i32 %668, 255
  %673 = tail call i32 @llvm.ctpop.i32(i32 %672)
  %674 = trunc i32 %673 to i8
  %675 = and i8 %674, 1
  %676 = xor i8 %675, 1
  store i8 %676, i8* %21, align 1
  %677 = xor i32 %667, %639
  %678 = xor i32 %677, %668
  %679 = lshr i32 %678, 4
  %680 = trunc i32 %679 to i8
  %681 = and i8 %680, 1
  store i8 %681, i8* %27, align 1
  %682 = icmp eq i32 %668, 0
  %683 = zext i1 %682 to i8
  store i8 %683, i8* %30, align 1
  %684 = lshr i32 %668, 31
  %685 = trunc i32 %684 to i8
  store i8 %685, i8* %33, align 1
  %686 = lshr i32 %639, 31
  %687 = lshr i32 %667, 31
  %688 = xor i32 %687, %686
  %689 = xor i32 %684, %686
  %690 = add nuw nsw i32 %689, %688
  %691 = icmp eq i32 %690, 2
  %692 = zext i1 %691 to i8
  store i8 %692, i8* %39, align 1
  %693 = load i64, i64* %RBP.i, align 8
  %694 = add i64 %693, -20
  %695 = add i64 %611, 42
  store i64 %695, i64* %3, align 8
  %696 = inttoptr i64 %694 to i32*
  %697 = load i32, i32* %696, align 4
  %698 = sext i32 %697 to i64
  %699 = shl nsw i64 %698, 5
  store i64 %699, i64* %RDX.i1718, align 8
  %700 = load i64, i64* %RAX.i1724, align 8
  %701 = add i64 %699, %700
  store i64 %701, i64* %RDI.i1740, align 8
  %702 = icmp ult i64 %701, %700
  %703 = icmp ult i64 %701, %699
  %704 = or i1 %702, %703
  %705 = zext i1 %704 to i8
  store i8 %705, i8* %14, align 1
  %706 = trunc i64 %701 to i32
  %707 = and i32 %706, 255
  %708 = tail call i32 @llvm.ctpop.i32(i32 %707)
  %709 = trunc i32 %708 to i8
  %710 = and i8 %709, 1
  %711 = xor i8 %710, 1
  store i8 %711, i8* %21, align 1
  %712 = xor i64 %700, %701
  %713 = lshr i64 %712, 4
  %714 = trunc i64 %713 to i8
  %715 = and i8 %714, 1
  store i8 %715, i8* %27, align 1
  %716 = icmp eq i64 %701, 0
  %717 = zext i1 %716 to i8
  store i8 %717, i8* %30, align 1
  %718 = lshr i64 %701, 63
  %719 = trunc i64 %718 to i8
  store i8 %719, i8* %33, align 1
  %720 = lshr i64 %700, 63
  %721 = lshr i64 %698, 58
  %722 = and i64 %721, 1
  %723 = xor i64 %718, %720
  %724 = xor i64 %718, %722
  %725 = add nuw nsw i64 %723, %724
  %726 = icmp eq i64 %725, 2
  %727 = zext i1 %726 to i8
  store i8 %727, i8* %39, align 1
  %728 = add i64 %701, 16
  %729 = load i32, i32* %ESI.i1737, align 4
  %730 = add i64 %611, 55
  store i64 %730, i64* %3, align 8
  %731 = inttoptr i64 %728 to i32*
  store i32 %729, i32* %731, align 4
  %732 = load i64, i64* %RBP.i, align 8
  %733 = add i64 %732, -8
  %734 = load i64, i64* %3, align 8
  %735 = add i64 %734, 4
  store i64 %735, i64* %3, align 8
  %736 = inttoptr i64 %733 to i64*
  %737 = load i64, i64* %736, align 8
  store i64 %737, i64* %RDX.i1718, align 8
  %738 = add i64 %732, -20
  %739 = add i64 %734, 7
  store i64 %739, i64* %3, align 8
  %740 = inttoptr i64 %738 to i32*
  %741 = load i32, i32* %740, align 4
  %742 = shl i32 %741, 3
  %743 = or i32 %742, 1
  %744 = zext i32 %743 to i64
  store i64 %744, i64* %RSI.i1715, align 8
  store i8 0, i8* %14, align 1
  %745 = and i32 %743, 249
  %746 = tail call i32 @llvm.ctpop.i32(i32 %745)
  %747 = trunc i32 %746 to i8
  %748 = and i8 %747, 1
  %749 = xor i8 %748, 1
  store i8 %749, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  %750 = lshr i32 %741, 28
  %751 = and i32 %750, 1
  %752 = trunc i32 %751 to i8
  store i8 %752, i8* %33, align 1
  %753 = lshr i32 %741, 28
  %754 = and i32 %753, 1
  %755 = xor i32 %751, %754
  %756 = add nuw nsw i32 %755, %751
  %757 = icmp eq i32 %756, 2
  %758 = zext i1 %757 to i8
  store i8 %758, i8* %39, align 1
  %759 = sext i32 %743 to i64
  store i64 %759, i64* %RDI.i1740, align 8
  %760 = shl nsw i64 %759, 2
  %761 = add i64 %737, %760
  %762 = add i64 %734, 19
  store i64 %762, i64* %3, align 8
  %763 = inttoptr i64 %761 to i32*
  %764 = load i32, i32* %763, align 4
  %765 = zext i32 %764 to i64
  store i64 %765, i64* %RSI.i1715, align 8
  %766 = add i64 %734, 23
  store i64 %766, i64* %3, align 8
  %767 = load i64, i64* %736, align 8
  store i64 %767, i64* %RDX.i1718, align 8
  %768 = add i64 %734, 27
  store i64 %768, i64* %3, align 8
  %769 = load i32, i32* %740, align 4
  %770 = shl i32 %769, 3
  %771 = or i32 %770, 5
  %772 = zext i32 %771 to i64
  store i64 %772, i64* %75, align 8
  store i8 0, i8* %14, align 1
  %773 = and i32 %771, 253
  %774 = tail call i32 @llvm.ctpop.i32(i32 %773)
  %775 = trunc i32 %774 to i8
  %776 = and i8 %775, 1
  %777 = xor i8 %776, 1
  store i8 %777, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  %778 = lshr i32 %769, 28
  %779 = and i32 %778, 1
  %780 = trunc i32 %779 to i8
  store i8 %780, i8* %33, align 1
  %781 = lshr i32 %769, 28
  %782 = and i32 %781, 1
  %783 = xor i32 %779, %782
  %784 = add nuw nsw i32 %783, %779
  %785 = icmp eq i32 %784, 2
  %786 = zext i1 %785 to i8
  store i8 %786, i8* %39, align 1
  %787 = sext i32 %771 to i64
  store i64 %787, i64* %RDI.i1740, align 8
  %788 = shl nsw i64 %787, 2
  %789 = add i64 %767, %788
  %790 = add i64 %734, 41
  store i64 %790, i64* %3, align 8
  %791 = inttoptr i64 %789 to i32*
  %792 = load i32, i32* %791, align 4
  %793 = sub i32 %764, %792
  %794 = zext i32 %793 to i64
  store i64 %794, i64* %RSI.i1715, align 8
  %795 = icmp ult i32 %764, %792
  %796 = zext i1 %795 to i8
  store i8 %796, i8* %14, align 1
  %797 = and i32 %793, 255
  %798 = tail call i32 @llvm.ctpop.i32(i32 %797)
  %799 = trunc i32 %798 to i8
  %800 = and i8 %799, 1
  %801 = xor i8 %800, 1
  store i8 %801, i8* %21, align 1
  %802 = xor i32 %792, %764
  %803 = xor i32 %802, %793
  %804 = lshr i32 %803, 4
  %805 = trunc i32 %804 to i8
  %806 = and i8 %805, 1
  store i8 %806, i8* %27, align 1
  %807 = icmp eq i32 %793, 0
  %808 = zext i1 %807 to i8
  store i8 %808, i8* %30, align 1
  %809 = lshr i32 %793, 31
  %810 = trunc i32 %809 to i8
  store i8 %810, i8* %33, align 1
  %811 = lshr i32 %764, 31
  %812 = lshr i32 %792, 31
  %813 = xor i32 %812, %811
  %814 = xor i32 %809, %811
  %815 = add nuw nsw i32 %814, %813
  %816 = icmp eq i32 %815, 2
  %817 = zext i1 %816 to i8
  store i8 %817, i8* %39, align 1
  %818 = load i64, i64* %RBP.i, align 8
  %819 = add i64 %818, -20
  %820 = add i64 %734, 45
  store i64 %820, i64* %3, align 8
  %821 = inttoptr i64 %819 to i32*
  %822 = load i32, i32* %821, align 4
  %823 = sext i32 %822 to i64
  %824 = shl nsw i64 %823, 5
  store i64 %824, i64* %RDX.i1718, align 8
  %825 = load i64, i64* %RAX.i1724, align 8
  %826 = add i64 %824, %825
  store i64 %826, i64* %RDI.i1740, align 8
  %827 = icmp ult i64 %826, %825
  %828 = icmp ult i64 %826, %824
  %829 = or i1 %827, %828
  %830 = zext i1 %829 to i8
  store i8 %830, i8* %14, align 1
  %831 = trunc i64 %826 to i32
  %832 = and i32 %831, 255
  %833 = tail call i32 @llvm.ctpop.i32(i32 %832)
  %834 = trunc i32 %833 to i8
  %835 = and i8 %834, 1
  %836 = xor i8 %835, 1
  store i8 %836, i8* %21, align 1
  %837 = xor i64 %825, %826
  %838 = lshr i64 %837, 4
  %839 = trunc i64 %838 to i8
  %840 = and i8 %839, 1
  store i8 %840, i8* %27, align 1
  %841 = icmp eq i64 %826, 0
  %842 = zext i1 %841 to i8
  store i8 %842, i8* %30, align 1
  %843 = lshr i64 %826, 63
  %844 = trunc i64 %843 to i8
  store i8 %844, i8* %33, align 1
  %845 = lshr i64 %825, 63
  %846 = lshr i64 %823, 58
  %847 = and i64 %846, 1
  %848 = xor i64 %843, %845
  %849 = xor i64 %843, %847
  %850 = add nuw nsw i64 %848, %849
  %851 = icmp eq i64 %850, 2
  %852 = zext i1 %851 to i8
  store i8 %852, i8* %39, align 1
  %853 = add i64 %826, 20
  %854 = load i32, i32* %ESI.i1737, align 4
  %855 = add i64 %734, 58
  store i64 %855, i64* %3, align 8
  %856 = inttoptr i64 %853 to i32*
  store i32 %854, i32* %856, align 4
  %857 = load i64, i64* %RBP.i, align 8
  %858 = add i64 %857, -8
  %859 = load i64, i64* %3, align 8
  %860 = add i64 %859, 4
  store i64 %860, i64* %3, align 8
  %861 = inttoptr i64 %858 to i64*
  %862 = load i64, i64* %861, align 8
  store i64 %862, i64* %RDX.i1718, align 8
  %863 = add i64 %857, -20
  %864 = add i64 %859, 7
  store i64 %864, i64* %3, align 8
  %865 = inttoptr i64 %863 to i32*
  %866 = load i32, i32* %865, align 4
  %867 = shl i32 %866, 3
  %868 = or i32 %867, 2
  %869 = zext i32 %868 to i64
  store i64 %869, i64* %RSI.i1715, align 8
  store i8 0, i8* %14, align 1
  %870 = and i32 %868, 250
  %871 = tail call i32 @llvm.ctpop.i32(i32 %870)
  %872 = trunc i32 %871 to i8
  %873 = and i8 %872, 1
  %874 = xor i8 %873, 1
  store i8 %874, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  %875 = lshr i32 %866, 28
  %876 = and i32 %875, 1
  %877 = trunc i32 %876 to i8
  store i8 %877, i8* %33, align 1
  %878 = lshr i32 %866, 28
  %879 = and i32 %878, 1
  %880 = xor i32 %876, %879
  %881 = add nuw nsw i32 %880, %876
  %882 = icmp eq i32 %881, 2
  %883 = zext i1 %882 to i8
  store i8 %883, i8* %39, align 1
  %884 = sext i32 %868 to i64
  store i64 %884, i64* %RDI.i1740, align 8
  %885 = shl nsw i64 %884, 2
  %886 = add i64 %862, %885
  %887 = add i64 %859, 19
  store i64 %887, i64* %3, align 8
  %888 = inttoptr i64 %886 to i32*
  %889 = load i32, i32* %888, align 4
  %890 = zext i32 %889 to i64
  store i64 %890, i64* %RSI.i1715, align 8
  %891 = add i64 %859, 23
  store i64 %891, i64* %3, align 8
  %892 = load i64, i64* %861, align 8
  store i64 %892, i64* %RDX.i1718, align 8
  %893 = add i64 %859, 27
  store i64 %893, i64* %3, align 8
  %894 = load i32, i32* %865, align 4
  %895 = shl i32 %894, 3
  %896 = or i32 %895, 6
  %897 = zext i32 %896 to i64
  store i64 %897, i64* %75, align 8
  store i8 0, i8* %14, align 1
  %898 = and i32 %896, 254
  %899 = tail call i32 @llvm.ctpop.i32(i32 %898)
  %900 = trunc i32 %899 to i8
  %901 = and i8 %900, 1
  %902 = xor i8 %901, 1
  store i8 %902, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  %903 = lshr i32 %894, 28
  %904 = and i32 %903, 1
  %905 = trunc i32 %904 to i8
  store i8 %905, i8* %33, align 1
  %906 = lshr i32 %894, 28
  %907 = and i32 %906, 1
  %908 = xor i32 %904, %907
  %909 = add nuw nsw i32 %908, %904
  %910 = icmp eq i32 %909, 2
  %911 = zext i1 %910 to i8
  store i8 %911, i8* %39, align 1
  %912 = sext i32 %896 to i64
  store i64 %912, i64* %RDI.i1740, align 8
  %913 = shl nsw i64 %912, 2
  %914 = add i64 %892, %913
  %915 = add i64 %859, 41
  store i64 %915, i64* %3, align 8
  %916 = inttoptr i64 %914 to i32*
  %917 = load i32, i32* %916, align 4
  %918 = sub i32 %889, %917
  %919 = zext i32 %918 to i64
  store i64 %919, i64* %RSI.i1715, align 8
  %920 = icmp ult i32 %889, %917
  %921 = zext i1 %920 to i8
  store i8 %921, i8* %14, align 1
  %922 = and i32 %918, 255
  %923 = tail call i32 @llvm.ctpop.i32(i32 %922)
  %924 = trunc i32 %923 to i8
  %925 = and i8 %924, 1
  %926 = xor i8 %925, 1
  store i8 %926, i8* %21, align 1
  %927 = xor i32 %917, %889
  %928 = xor i32 %927, %918
  %929 = lshr i32 %928, 4
  %930 = trunc i32 %929 to i8
  %931 = and i8 %930, 1
  store i8 %931, i8* %27, align 1
  %932 = icmp eq i32 %918, 0
  %933 = zext i1 %932 to i8
  store i8 %933, i8* %30, align 1
  %934 = lshr i32 %918, 31
  %935 = trunc i32 %934 to i8
  store i8 %935, i8* %33, align 1
  %936 = lshr i32 %889, 31
  %937 = lshr i32 %917, 31
  %938 = xor i32 %937, %936
  %939 = xor i32 %934, %936
  %940 = add nuw nsw i32 %939, %938
  %941 = icmp eq i32 %940, 2
  %942 = zext i1 %941 to i8
  store i8 %942, i8* %39, align 1
  %943 = load i64, i64* %RBP.i, align 8
  %944 = add i64 %943, -20
  %945 = add i64 %859, 45
  store i64 %945, i64* %3, align 8
  %946 = inttoptr i64 %944 to i32*
  %947 = load i32, i32* %946, align 4
  %948 = sext i32 %947 to i64
  %949 = shl nsw i64 %948, 5
  store i64 %949, i64* %RDX.i1718, align 8
  %950 = load i64, i64* %RAX.i1724, align 8
  %951 = add i64 %949, %950
  store i64 %951, i64* %RDI.i1740, align 8
  %952 = icmp ult i64 %951, %950
  %953 = icmp ult i64 %951, %949
  %954 = or i1 %952, %953
  %955 = zext i1 %954 to i8
  store i8 %955, i8* %14, align 1
  %956 = trunc i64 %951 to i32
  %957 = and i32 %956, 255
  %958 = tail call i32 @llvm.ctpop.i32(i32 %957)
  %959 = trunc i32 %958 to i8
  %960 = and i8 %959, 1
  %961 = xor i8 %960, 1
  store i8 %961, i8* %21, align 1
  %962 = xor i64 %950, %951
  %963 = lshr i64 %962, 4
  %964 = trunc i64 %963 to i8
  %965 = and i8 %964, 1
  store i8 %965, i8* %27, align 1
  %966 = icmp eq i64 %951, 0
  %967 = zext i1 %966 to i8
  store i8 %967, i8* %30, align 1
  %968 = lshr i64 %951, 63
  %969 = trunc i64 %968 to i8
  store i8 %969, i8* %33, align 1
  %970 = lshr i64 %950, 63
  %971 = lshr i64 %948, 58
  %972 = and i64 %971, 1
  %973 = xor i64 %968, %970
  %974 = xor i64 %968, %972
  %975 = add nuw nsw i64 %973, %974
  %976 = icmp eq i64 %975, 2
  %977 = zext i1 %976 to i8
  store i8 %977, i8* %39, align 1
  %978 = add i64 %951, 24
  %979 = load i32, i32* %ESI.i1737, align 4
  %980 = add i64 %859, 58
  store i64 %980, i64* %3, align 8
  %981 = inttoptr i64 %978 to i32*
  store i32 %979, i32* %981, align 4
  %982 = load i64, i64* %RBP.i, align 8
  %983 = add i64 %982, -8
  %984 = load i64, i64* %3, align 8
  %985 = add i64 %984, 4
  store i64 %985, i64* %3, align 8
  %986 = inttoptr i64 %983 to i64*
  %987 = load i64, i64* %986, align 8
  store i64 %987, i64* %RDX.i1718, align 8
  %988 = add i64 %982, -20
  %989 = add i64 %984, 7
  store i64 %989, i64* %3, align 8
  %990 = inttoptr i64 %988 to i32*
  %991 = load i32, i32* %990, align 4
  %992 = shl i32 %991, 3
  %993 = or i32 %992, 3
  %994 = zext i32 %993 to i64
  store i64 %994, i64* %RSI.i1715, align 8
  store i8 0, i8* %14, align 1
  %995 = and i32 %993, 251
  %996 = tail call i32 @llvm.ctpop.i32(i32 %995)
  %997 = trunc i32 %996 to i8
  %998 = and i8 %997, 1
  %999 = xor i8 %998, 1
  store i8 %999, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  %1000 = lshr i32 %991, 28
  %1001 = and i32 %1000, 1
  %1002 = trunc i32 %1001 to i8
  store i8 %1002, i8* %33, align 1
  %1003 = lshr i32 %991, 28
  %1004 = and i32 %1003, 1
  %1005 = xor i32 %1001, %1004
  %1006 = add nuw nsw i32 %1005, %1001
  %1007 = icmp eq i32 %1006, 2
  %1008 = zext i1 %1007 to i8
  store i8 %1008, i8* %39, align 1
  %1009 = sext i32 %993 to i64
  store i64 %1009, i64* %RDI.i1740, align 8
  %1010 = shl nsw i64 %1009, 2
  %1011 = add i64 %987, %1010
  %1012 = add i64 %984, 19
  store i64 %1012, i64* %3, align 8
  %1013 = inttoptr i64 %1011 to i32*
  %1014 = load i32, i32* %1013, align 4
  %1015 = zext i32 %1014 to i64
  store i64 %1015, i64* %RSI.i1715, align 8
  %1016 = add i64 %984, 23
  store i64 %1016, i64* %3, align 8
  %1017 = load i64, i64* %986, align 8
  store i64 %1017, i64* %RDX.i1718, align 8
  %1018 = add i64 %984, 27
  store i64 %1018, i64* %3, align 8
  %1019 = load i32, i32* %990, align 4
  %1020 = shl i32 %1019, 3
  %1021 = or i32 %1020, 7
  %1022 = zext i32 %1021 to i64
  store i64 %1022, i64* %75, align 8
  store i8 0, i8* %14, align 1
  %1023 = and i32 %1021, 255
  %1024 = tail call i32 @llvm.ctpop.i32(i32 %1023)
  %1025 = trunc i32 %1024 to i8
  %1026 = and i8 %1025, 1
  %1027 = xor i8 %1026, 1
  store i8 %1027, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  %1028 = lshr i32 %1019, 28
  %1029 = and i32 %1028, 1
  %1030 = trunc i32 %1029 to i8
  store i8 %1030, i8* %33, align 1
  %1031 = lshr i32 %1019, 28
  %1032 = and i32 %1031, 1
  %1033 = xor i32 %1029, %1032
  %1034 = add nuw nsw i32 %1033, %1029
  %1035 = icmp eq i32 %1034, 2
  %1036 = zext i1 %1035 to i8
  store i8 %1036, i8* %39, align 1
  %1037 = sext i32 %1021 to i64
  store i64 %1037, i64* %RDI.i1740, align 8
  %1038 = shl nsw i64 %1037, 2
  %1039 = add i64 %1017, %1038
  %1040 = add i64 %984, 41
  store i64 %1040, i64* %3, align 8
  %1041 = inttoptr i64 %1039 to i32*
  %1042 = load i32, i32* %1041, align 4
  %1043 = sub i32 %1014, %1042
  %1044 = zext i32 %1043 to i64
  store i64 %1044, i64* %RSI.i1715, align 8
  %1045 = icmp ult i32 %1014, %1042
  %1046 = zext i1 %1045 to i8
  store i8 %1046, i8* %14, align 1
  %1047 = and i32 %1043, 255
  %1048 = tail call i32 @llvm.ctpop.i32(i32 %1047)
  %1049 = trunc i32 %1048 to i8
  %1050 = and i8 %1049, 1
  %1051 = xor i8 %1050, 1
  store i8 %1051, i8* %21, align 1
  %1052 = xor i32 %1042, %1014
  %1053 = xor i32 %1052, %1043
  %1054 = lshr i32 %1053, 4
  %1055 = trunc i32 %1054 to i8
  %1056 = and i8 %1055, 1
  store i8 %1056, i8* %27, align 1
  %1057 = icmp eq i32 %1043, 0
  %1058 = zext i1 %1057 to i8
  store i8 %1058, i8* %30, align 1
  %1059 = lshr i32 %1043, 31
  %1060 = trunc i32 %1059 to i8
  store i8 %1060, i8* %33, align 1
  %1061 = lshr i32 %1014, 31
  %1062 = lshr i32 %1042, 31
  %1063 = xor i32 %1062, %1061
  %1064 = xor i32 %1059, %1061
  %1065 = add nuw nsw i32 %1064, %1063
  %1066 = icmp eq i32 %1065, 2
  %1067 = zext i1 %1066 to i8
  store i8 %1067, i8* %39, align 1
  %1068 = load i64, i64* %RBP.i, align 8
  %1069 = add i64 %1068, -20
  %1070 = add i64 %984, 45
  store i64 %1070, i64* %3, align 8
  %1071 = inttoptr i64 %1069 to i32*
  %1072 = load i32, i32* %1071, align 4
  %1073 = sext i32 %1072 to i64
  %1074 = shl nsw i64 %1073, 5
  store i64 %1074, i64* %RDX.i1718, align 8
  %1075 = load i64, i64* %RAX.i1724, align 8
  %1076 = add i64 %1074, %1075
  store i64 %1076, i64* %RDI.i1740, align 8
  %1077 = icmp ult i64 %1076, %1075
  %1078 = icmp ult i64 %1076, %1074
  %1079 = or i1 %1077, %1078
  %1080 = zext i1 %1079 to i8
  store i8 %1080, i8* %14, align 1
  %1081 = trunc i64 %1076 to i32
  %1082 = and i32 %1081, 255
  %1083 = tail call i32 @llvm.ctpop.i32(i32 %1082)
  %1084 = trunc i32 %1083 to i8
  %1085 = and i8 %1084, 1
  %1086 = xor i8 %1085, 1
  store i8 %1086, i8* %21, align 1
  %1087 = xor i64 %1075, %1076
  %1088 = lshr i64 %1087, 4
  %1089 = trunc i64 %1088 to i8
  %1090 = and i8 %1089, 1
  store i8 %1090, i8* %27, align 1
  %1091 = icmp eq i64 %1076, 0
  %1092 = zext i1 %1091 to i8
  store i8 %1092, i8* %30, align 1
  %1093 = lshr i64 %1076, 63
  %1094 = trunc i64 %1093 to i8
  store i8 %1094, i8* %33, align 1
  %1095 = lshr i64 %1075, 63
  %1096 = lshr i64 %1073, 58
  %1097 = and i64 %1096, 1
  %1098 = xor i64 %1093, %1095
  %1099 = xor i64 %1093, %1097
  %1100 = add nuw nsw i64 %1098, %1099
  %1101 = icmp eq i64 %1100, 2
  %1102 = zext i1 %1101 to i8
  store i8 %1102, i8* %39, align 1
  %1103 = add i64 %1076, 28
  %1104 = load i32, i32* %ESI.i1737, align 4
  %1105 = add i64 %984, 58
  store i64 %1105, i64* %3, align 8
  %1106 = inttoptr i64 %1103 to i32*
  store i32 %1104, i32* %1106, align 4
  %1107 = load i64, i64* %RBP.i, align 8
  %1108 = add i64 %1107, -20
  %1109 = load i64, i64* %3, align 8
  %1110 = add i64 %1109, 4
  store i64 %1110, i64* %3, align 8
  %1111 = inttoptr i64 %1108 to i32*
  %1112 = load i32, i32* %1111, align 4
  %1113 = sext i32 %1112 to i64
  %1114 = shl nsw i64 %1113, 5
  store i64 %1114, i64* %RDX.i1718, align 8
  %1115 = load i64, i64* %RAX.i1724, align 8
  %1116 = add i64 %1114, %1115
  store i64 %1116, i64* %RDI.i1740, align 8
  %1117 = icmp ult i64 %1116, %1115
  %1118 = icmp ult i64 %1116, %1114
  %1119 = or i1 %1117, %1118
  %1120 = zext i1 %1119 to i8
  store i8 %1120, i8* %14, align 1
  %1121 = trunc i64 %1116 to i32
  %1122 = and i32 %1121, 255
  %1123 = tail call i32 @llvm.ctpop.i32(i32 %1122)
  %1124 = trunc i32 %1123 to i8
  %1125 = and i8 %1124, 1
  %1126 = xor i8 %1125, 1
  store i8 %1126, i8* %21, align 1
  %1127 = xor i64 %1115, %1116
  %1128 = lshr i64 %1127, 4
  %1129 = trunc i64 %1128 to i8
  %1130 = and i8 %1129, 1
  store i8 %1130, i8* %27, align 1
  %1131 = icmp eq i64 %1116, 0
  %1132 = zext i1 %1131 to i8
  store i8 %1132, i8* %30, align 1
  %1133 = lshr i64 %1116, 63
  %1134 = trunc i64 %1133 to i8
  store i8 %1134, i8* %33, align 1
  %1135 = lshr i64 %1115, 63
  %1136 = lshr i64 %1113, 58
  %1137 = and i64 %1136, 1
  %1138 = xor i64 %1133, %1135
  %1139 = xor i64 %1133, %1137
  %1140 = add nuw nsw i64 %1138, %1139
  %1141 = icmp eq i64 %1140, 2
  %1142 = zext i1 %1141 to i8
  store i8 %1142, i8* %39, align 1
  %1143 = inttoptr i64 %1116 to i32*
  %1144 = add i64 %1109, 16
  store i64 %1144, i64* %3, align 8
  %1145 = load i32, i32* %1143, align 4
  %1146 = zext i32 %1145 to i64
  store i64 %1146, i64* %RSI.i1715, align 8
  %1147 = add i64 %1109, 20
  store i64 %1147, i64* %3, align 8
  %1148 = load i32, i32* %1111, align 4
  %1149 = sext i32 %1148 to i64
  %1150 = shl nsw i64 %1149, 5
  store i64 %1150, i64* %RDX.i1718, align 8
  %1151 = add i64 %1150, %1115
  store i64 %1151, i64* %RDI.i1740, align 8
  %1152 = icmp ult i64 %1151, %1115
  %1153 = icmp ult i64 %1151, %1150
  %1154 = or i1 %1152, %1153
  %1155 = zext i1 %1154 to i8
  store i8 %1155, i8* %14, align 1
  %1156 = trunc i64 %1151 to i32
  %1157 = and i32 %1156, 255
  %1158 = tail call i32 @llvm.ctpop.i32(i32 %1157)
  %1159 = trunc i32 %1158 to i8
  %1160 = and i8 %1159, 1
  %1161 = xor i8 %1160, 1
  store i8 %1161, i8* %21, align 1
  %1162 = xor i64 %1115, %1151
  %1163 = lshr i64 %1162, 4
  %1164 = trunc i64 %1163 to i8
  %1165 = and i8 %1164, 1
  store i8 %1165, i8* %27, align 1
  %1166 = icmp eq i64 %1151, 0
  %1167 = zext i1 %1166 to i8
  store i8 %1167, i8* %30, align 1
  %1168 = lshr i64 %1151, 63
  %1169 = trunc i64 %1168 to i8
  store i8 %1169, i8* %33, align 1
  %1170 = lshr i64 %1149, 58
  %1171 = and i64 %1170, 1
  %1172 = xor i64 %1168, %1135
  %1173 = xor i64 %1168, %1171
  %1174 = add nuw nsw i64 %1172, %1173
  %1175 = icmp eq i64 %1174, 2
  %1176 = zext i1 %1175 to i8
  store i8 %1176, i8* %39, align 1
  %1177 = add i64 %1151, 8
  %1178 = add i64 %1109, 33
  store i64 %1178, i64* %3, align 8
  %1179 = inttoptr i64 %1177 to i32*
  %1180 = load i32, i32* %1179, align 4
  %1181 = add i32 %1180, %1145
  %1182 = zext i32 %1181 to i64
  store i64 %1182, i64* %RSI.i1715, align 8
  %1183 = icmp ult i32 %1181, %1145
  %1184 = icmp ult i32 %1181, %1180
  %1185 = or i1 %1183, %1184
  %1186 = zext i1 %1185 to i8
  store i8 %1186, i8* %14, align 1
  %1187 = and i32 %1181, 255
  %1188 = tail call i32 @llvm.ctpop.i32(i32 %1187)
  %1189 = trunc i32 %1188 to i8
  %1190 = and i8 %1189, 1
  %1191 = xor i8 %1190, 1
  store i8 %1191, i8* %21, align 1
  %1192 = xor i32 %1180, %1145
  %1193 = xor i32 %1192, %1181
  %1194 = lshr i32 %1193, 4
  %1195 = trunc i32 %1194 to i8
  %1196 = and i8 %1195, 1
  store i8 %1196, i8* %27, align 1
  %1197 = icmp eq i32 %1181, 0
  %1198 = zext i1 %1197 to i8
  store i8 %1198, i8* %30, align 1
  %1199 = lshr i32 %1181, 31
  %1200 = trunc i32 %1199 to i8
  store i8 %1200, i8* %33, align 1
  %1201 = lshr i32 %1145, 31
  %1202 = lshr i32 %1180, 31
  %1203 = xor i32 %1199, %1201
  %1204 = xor i32 %1199, %1202
  %1205 = add nuw nsw i32 %1203, %1204
  %1206 = icmp eq i32 %1205, 2
  %1207 = zext i1 %1206 to i8
  store i8 %1207, i8* %39, align 1
  %1208 = load i64, i64* %RBP.i, align 8
  %1209 = add i64 %1208, -20
  %1210 = add i64 %1109, 37
  store i64 %1210, i64* %3, align 8
  %1211 = inttoptr i64 %1209 to i32*
  %1212 = load i32, i32* %1211, align 4
  %1213 = sext i32 %1212 to i64
  %1214 = shl nsw i64 %1213, 5
  store i64 %1214, i64* %RDX.i1718, align 8
  %1215 = load i64, i64* %RCX.i1721, align 8
  %1216 = add i64 %1214, %1215
  store i64 %1216, i64* %RDI.i1740, align 8
  %1217 = icmp ult i64 %1216, %1215
  %1218 = icmp ult i64 %1216, %1214
  %1219 = or i1 %1217, %1218
  %1220 = zext i1 %1219 to i8
  store i8 %1220, i8* %14, align 1
  %1221 = trunc i64 %1216 to i32
  %1222 = and i32 %1221, 255
  %1223 = tail call i32 @llvm.ctpop.i32(i32 %1222)
  %1224 = trunc i32 %1223 to i8
  %1225 = and i8 %1224, 1
  %1226 = xor i8 %1225, 1
  store i8 %1226, i8* %21, align 1
  %1227 = xor i64 %1215, %1216
  %1228 = lshr i64 %1227, 4
  %1229 = trunc i64 %1228 to i8
  %1230 = and i8 %1229, 1
  store i8 %1230, i8* %27, align 1
  %1231 = icmp eq i64 %1216, 0
  %1232 = zext i1 %1231 to i8
  store i8 %1232, i8* %30, align 1
  %1233 = lshr i64 %1216, 63
  %1234 = trunc i64 %1233 to i8
  store i8 %1234, i8* %33, align 1
  %1235 = lshr i64 %1215, 63
  %1236 = lshr i64 %1213, 58
  %1237 = and i64 %1236, 1
  %1238 = xor i64 %1233, %1235
  %1239 = xor i64 %1233, %1237
  %1240 = add nuw nsw i64 %1238, %1239
  %1241 = icmp eq i64 %1240, 2
  %1242 = zext i1 %1241 to i8
  store i8 %1242, i8* %39, align 1
  %1243 = inttoptr i64 %1216 to i32*
  %1244 = load i32, i32* %ESI.i1737, align 4
  %1245 = add i64 %1109, 49
  store i64 %1245, i64* %3, align 8
  store i32 %1244, i32* %1243, align 4
  %1246 = load i64, i64* %RBP.i, align 8
  %1247 = add i64 %1246, -20
  %1248 = load i64, i64* %3, align 8
  %1249 = add i64 %1248, 4
  store i64 %1249, i64* %3, align 8
  %1250 = inttoptr i64 %1247 to i32*
  %1251 = load i32, i32* %1250, align 4
  %1252 = sext i32 %1251 to i64
  %1253 = shl nsw i64 %1252, 5
  store i64 %1253, i64* %RDX.i1718, align 8
  %1254 = load i64, i64* %RAX.i1724, align 8
  %1255 = add i64 %1253, %1254
  store i64 %1255, i64* %RDI.i1740, align 8
  %1256 = icmp ult i64 %1255, %1254
  %1257 = icmp ult i64 %1255, %1253
  %1258 = or i1 %1256, %1257
  %1259 = zext i1 %1258 to i8
  store i8 %1259, i8* %14, align 1
  %1260 = trunc i64 %1255 to i32
  %1261 = and i32 %1260, 255
  %1262 = tail call i32 @llvm.ctpop.i32(i32 %1261)
  %1263 = trunc i32 %1262 to i8
  %1264 = and i8 %1263, 1
  %1265 = xor i8 %1264, 1
  store i8 %1265, i8* %21, align 1
  %1266 = xor i64 %1254, %1255
  %1267 = lshr i64 %1266, 4
  %1268 = trunc i64 %1267 to i8
  %1269 = and i8 %1268, 1
  store i8 %1269, i8* %27, align 1
  %1270 = icmp eq i64 %1255, 0
  %1271 = zext i1 %1270 to i8
  store i8 %1271, i8* %30, align 1
  %1272 = lshr i64 %1255, 63
  %1273 = trunc i64 %1272 to i8
  store i8 %1273, i8* %33, align 1
  %1274 = lshr i64 %1254, 63
  %1275 = lshr i64 %1252, 58
  %1276 = and i64 %1275, 1
  %1277 = xor i64 %1272, %1274
  %1278 = xor i64 %1272, %1276
  %1279 = add nuw nsw i64 %1277, %1278
  %1280 = icmp eq i64 %1279, 2
  %1281 = zext i1 %1280 to i8
  store i8 %1281, i8* %39, align 1
  %1282 = add i64 %1255, 4
  %1283 = add i64 %1248, 17
  store i64 %1283, i64* %3, align 8
  %1284 = inttoptr i64 %1282 to i32*
  %1285 = load i32, i32* %1284, align 4
  %1286 = zext i32 %1285 to i64
  store i64 %1286, i64* %RSI.i1715, align 8
  %1287 = add i64 %1248, 21
  store i64 %1287, i64* %3, align 8
  %1288 = load i32, i32* %1250, align 4
  %1289 = sext i32 %1288 to i64
  %1290 = shl nsw i64 %1289, 5
  store i64 %1290, i64* %RDX.i1718, align 8
  %1291 = add i64 %1290, %1254
  store i64 %1291, i64* %RDI.i1740, align 8
  %1292 = icmp ult i64 %1291, %1254
  %1293 = icmp ult i64 %1291, %1290
  %1294 = or i1 %1292, %1293
  %1295 = zext i1 %1294 to i8
  store i8 %1295, i8* %14, align 1
  %1296 = trunc i64 %1291 to i32
  %1297 = and i32 %1296, 255
  %1298 = tail call i32 @llvm.ctpop.i32(i32 %1297)
  %1299 = trunc i32 %1298 to i8
  %1300 = and i8 %1299, 1
  %1301 = xor i8 %1300, 1
  store i8 %1301, i8* %21, align 1
  %1302 = xor i64 %1254, %1291
  %1303 = lshr i64 %1302, 4
  %1304 = trunc i64 %1303 to i8
  %1305 = and i8 %1304, 1
  store i8 %1305, i8* %27, align 1
  %1306 = icmp eq i64 %1291, 0
  %1307 = zext i1 %1306 to i8
  store i8 %1307, i8* %30, align 1
  %1308 = lshr i64 %1291, 63
  %1309 = trunc i64 %1308 to i8
  store i8 %1309, i8* %33, align 1
  %1310 = lshr i64 %1289, 58
  %1311 = and i64 %1310, 1
  %1312 = xor i64 %1308, %1274
  %1313 = xor i64 %1308, %1311
  %1314 = add nuw nsw i64 %1312, %1313
  %1315 = icmp eq i64 %1314, 2
  %1316 = zext i1 %1315 to i8
  store i8 %1316, i8* %39, align 1
  %1317 = add i64 %1291, 12
  %1318 = add i64 %1248, 34
  store i64 %1318, i64* %3, align 8
  %1319 = inttoptr i64 %1317 to i32*
  %1320 = load i32, i32* %1319, align 4
  %1321 = add i32 %1320, %1285
  %1322 = zext i32 %1321 to i64
  store i64 %1322, i64* %RSI.i1715, align 8
  %1323 = icmp ult i32 %1321, %1285
  %1324 = icmp ult i32 %1321, %1320
  %1325 = or i1 %1323, %1324
  %1326 = zext i1 %1325 to i8
  store i8 %1326, i8* %14, align 1
  %1327 = and i32 %1321, 255
  %1328 = tail call i32 @llvm.ctpop.i32(i32 %1327)
  %1329 = trunc i32 %1328 to i8
  %1330 = and i8 %1329, 1
  %1331 = xor i8 %1330, 1
  store i8 %1331, i8* %21, align 1
  %1332 = xor i32 %1320, %1285
  %1333 = xor i32 %1332, %1321
  %1334 = lshr i32 %1333, 4
  %1335 = trunc i32 %1334 to i8
  %1336 = and i8 %1335, 1
  store i8 %1336, i8* %27, align 1
  %1337 = icmp eq i32 %1321, 0
  %1338 = zext i1 %1337 to i8
  store i8 %1338, i8* %30, align 1
  %1339 = lshr i32 %1321, 31
  %1340 = trunc i32 %1339 to i8
  store i8 %1340, i8* %33, align 1
  %1341 = lshr i32 %1285, 31
  %1342 = lshr i32 %1320, 31
  %1343 = xor i32 %1339, %1341
  %1344 = xor i32 %1339, %1342
  %1345 = add nuw nsw i32 %1343, %1344
  %1346 = icmp eq i32 %1345, 2
  %1347 = zext i1 %1346 to i8
  store i8 %1347, i8* %39, align 1
  %1348 = load i64, i64* %RBP.i, align 8
  %1349 = add i64 %1348, -20
  %1350 = add i64 %1248, 38
  store i64 %1350, i64* %3, align 8
  %1351 = inttoptr i64 %1349 to i32*
  %1352 = load i32, i32* %1351, align 4
  %1353 = sext i32 %1352 to i64
  %1354 = shl nsw i64 %1353, 5
  store i64 %1354, i64* %RDX.i1718, align 8
  %1355 = load i64, i64* %RCX.i1721, align 8
  %1356 = add i64 %1354, %1355
  store i64 %1356, i64* %RDI.i1740, align 8
  %1357 = icmp ult i64 %1356, %1355
  %1358 = icmp ult i64 %1356, %1354
  %1359 = or i1 %1357, %1358
  %1360 = zext i1 %1359 to i8
  store i8 %1360, i8* %14, align 1
  %1361 = trunc i64 %1356 to i32
  %1362 = and i32 %1361, 255
  %1363 = tail call i32 @llvm.ctpop.i32(i32 %1362)
  %1364 = trunc i32 %1363 to i8
  %1365 = and i8 %1364, 1
  %1366 = xor i8 %1365, 1
  store i8 %1366, i8* %21, align 1
  %1367 = xor i64 %1355, %1356
  %1368 = lshr i64 %1367, 4
  %1369 = trunc i64 %1368 to i8
  %1370 = and i8 %1369, 1
  store i8 %1370, i8* %27, align 1
  %1371 = icmp eq i64 %1356, 0
  %1372 = zext i1 %1371 to i8
  store i8 %1372, i8* %30, align 1
  %1373 = lshr i64 %1356, 63
  %1374 = trunc i64 %1373 to i8
  store i8 %1374, i8* %33, align 1
  %1375 = lshr i64 %1355, 63
  %1376 = lshr i64 %1353, 58
  %1377 = and i64 %1376, 1
  %1378 = xor i64 %1373, %1375
  %1379 = xor i64 %1373, %1377
  %1380 = add nuw nsw i64 %1378, %1379
  %1381 = icmp eq i64 %1380, 2
  %1382 = zext i1 %1381 to i8
  store i8 %1382, i8* %39, align 1
  %1383 = add i64 %1356, 4
  %1384 = load i32, i32* %ESI.i1737, align 4
  %1385 = add i64 %1248, 51
  store i64 %1385, i64* %3, align 8
  %1386 = inttoptr i64 %1383 to i32*
  store i32 %1384, i32* %1386, align 4
  %1387 = load i64, i64* %RBP.i, align 8
  %1388 = add i64 %1387, -20
  %1389 = load i64, i64* %3, align 8
  %1390 = add i64 %1389, 4
  store i64 %1390, i64* %3, align 8
  %1391 = inttoptr i64 %1388 to i32*
  %1392 = load i32, i32* %1391, align 4
  %1393 = sext i32 %1392 to i64
  %1394 = shl nsw i64 %1393, 5
  store i64 %1394, i64* %RDX.i1718, align 8
  %1395 = load i64, i64* %RAX.i1724, align 8
  %1396 = add i64 %1394, %1395
  store i64 %1396, i64* %RDI.i1740, align 8
  %1397 = icmp ult i64 %1396, %1395
  %1398 = icmp ult i64 %1396, %1394
  %1399 = or i1 %1397, %1398
  %1400 = zext i1 %1399 to i8
  store i8 %1400, i8* %14, align 1
  %1401 = trunc i64 %1396 to i32
  %1402 = and i32 %1401, 255
  %1403 = tail call i32 @llvm.ctpop.i32(i32 %1402)
  %1404 = trunc i32 %1403 to i8
  %1405 = and i8 %1404, 1
  %1406 = xor i8 %1405, 1
  store i8 %1406, i8* %21, align 1
  %1407 = xor i64 %1395, %1396
  %1408 = lshr i64 %1407, 4
  %1409 = trunc i64 %1408 to i8
  %1410 = and i8 %1409, 1
  store i8 %1410, i8* %27, align 1
  %1411 = icmp eq i64 %1396, 0
  %1412 = zext i1 %1411 to i8
  store i8 %1412, i8* %30, align 1
  %1413 = lshr i64 %1396, 63
  %1414 = trunc i64 %1413 to i8
  store i8 %1414, i8* %33, align 1
  %1415 = lshr i64 %1395, 63
  %1416 = lshr i64 %1393, 58
  %1417 = and i64 %1416, 1
  %1418 = xor i64 %1413, %1415
  %1419 = xor i64 %1413, %1417
  %1420 = add nuw nsw i64 %1418, %1419
  %1421 = icmp eq i64 %1420, 2
  %1422 = zext i1 %1421 to i8
  store i8 %1422, i8* %39, align 1
  %1423 = inttoptr i64 %1396 to i32*
  %1424 = add i64 %1389, 16
  store i64 %1424, i64* %3, align 8
  %1425 = load i32, i32* %1423, align 4
  %1426 = zext i32 %1425 to i64
  store i64 %1426, i64* %RSI.i1715, align 8
  %1427 = add i64 %1389, 20
  store i64 %1427, i64* %3, align 8
  %1428 = load i32, i32* %1391, align 4
  %1429 = sext i32 %1428 to i64
  %1430 = shl nsw i64 %1429, 5
  store i64 %1430, i64* %RDX.i1718, align 8
  %1431 = add i64 %1430, %1395
  store i64 %1431, i64* %RDI.i1740, align 8
  %1432 = icmp ult i64 %1431, %1395
  %1433 = icmp ult i64 %1431, %1430
  %1434 = or i1 %1432, %1433
  %1435 = zext i1 %1434 to i8
  store i8 %1435, i8* %14, align 1
  %1436 = trunc i64 %1431 to i32
  %1437 = and i32 %1436, 255
  %1438 = tail call i32 @llvm.ctpop.i32(i32 %1437)
  %1439 = trunc i32 %1438 to i8
  %1440 = and i8 %1439, 1
  %1441 = xor i8 %1440, 1
  store i8 %1441, i8* %21, align 1
  %1442 = xor i64 %1395, %1431
  %1443 = lshr i64 %1442, 4
  %1444 = trunc i64 %1443 to i8
  %1445 = and i8 %1444, 1
  store i8 %1445, i8* %27, align 1
  %1446 = icmp eq i64 %1431, 0
  %1447 = zext i1 %1446 to i8
  store i8 %1447, i8* %30, align 1
  %1448 = lshr i64 %1431, 63
  %1449 = trunc i64 %1448 to i8
  store i8 %1449, i8* %33, align 1
  %1450 = lshr i64 %1429, 58
  %1451 = and i64 %1450, 1
  %1452 = xor i64 %1448, %1415
  %1453 = xor i64 %1448, %1451
  %1454 = add nuw nsw i64 %1452, %1453
  %1455 = icmp eq i64 %1454, 2
  %1456 = zext i1 %1455 to i8
  store i8 %1456, i8* %39, align 1
  %1457 = add i64 %1431, 8
  %1458 = add i64 %1389, 33
  store i64 %1458, i64* %3, align 8
  %1459 = inttoptr i64 %1457 to i32*
  %1460 = load i32, i32* %1459, align 4
  %1461 = sub i32 %1425, %1460
  %1462 = zext i32 %1461 to i64
  store i64 %1462, i64* %RSI.i1715, align 8
  %1463 = icmp ult i32 %1425, %1460
  %1464 = zext i1 %1463 to i8
  store i8 %1464, i8* %14, align 1
  %1465 = and i32 %1461, 255
  %1466 = tail call i32 @llvm.ctpop.i32(i32 %1465)
  %1467 = trunc i32 %1466 to i8
  %1468 = and i8 %1467, 1
  %1469 = xor i8 %1468, 1
  store i8 %1469, i8* %21, align 1
  %1470 = xor i32 %1460, %1425
  %1471 = xor i32 %1470, %1461
  %1472 = lshr i32 %1471, 4
  %1473 = trunc i32 %1472 to i8
  %1474 = and i8 %1473, 1
  store i8 %1474, i8* %27, align 1
  %1475 = icmp eq i32 %1461, 0
  %1476 = zext i1 %1475 to i8
  store i8 %1476, i8* %30, align 1
  %1477 = lshr i32 %1461, 31
  %1478 = trunc i32 %1477 to i8
  store i8 %1478, i8* %33, align 1
  %1479 = lshr i32 %1425, 31
  %1480 = lshr i32 %1460, 31
  %1481 = xor i32 %1480, %1479
  %1482 = xor i32 %1477, %1479
  %1483 = add nuw nsw i32 %1482, %1481
  %1484 = icmp eq i32 %1483, 2
  %1485 = zext i1 %1484 to i8
  store i8 %1485, i8* %39, align 1
  %1486 = load i64, i64* %RBP.i, align 8
  %1487 = add i64 %1486, -20
  %1488 = add i64 %1389, 37
  store i64 %1488, i64* %3, align 8
  %1489 = inttoptr i64 %1487 to i32*
  %1490 = load i32, i32* %1489, align 4
  %1491 = sext i32 %1490 to i64
  %1492 = shl nsw i64 %1491, 5
  store i64 %1492, i64* %RDX.i1718, align 8
  %1493 = load i64, i64* %RCX.i1721, align 8
  %1494 = add i64 %1492, %1493
  store i64 %1494, i64* %RDI.i1740, align 8
  %1495 = icmp ult i64 %1494, %1493
  %1496 = icmp ult i64 %1494, %1492
  %1497 = or i1 %1495, %1496
  %1498 = zext i1 %1497 to i8
  store i8 %1498, i8* %14, align 1
  %1499 = trunc i64 %1494 to i32
  %1500 = and i32 %1499, 255
  %1501 = tail call i32 @llvm.ctpop.i32(i32 %1500)
  %1502 = trunc i32 %1501 to i8
  %1503 = and i8 %1502, 1
  %1504 = xor i8 %1503, 1
  store i8 %1504, i8* %21, align 1
  %1505 = xor i64 %1493, %1494
  %1506 = lshr i64 %1505, 4
  %1507 = trunc i64 %1506 to i8
  %1508 = and i8 %1507, 1
  store i8 %1508, i8* %27, align 1
  %1509 = icmp eq i64 %1494, 0
  %1510 = zext i1 %1509 to i8
  store i8 %1510, i8* %30, align 1
  %1511 = lshr i64 %1494, 63
  %1512 = trunc i64 %1511 to i8
  store i8 %1512, i8* %33, align 1
  %1513 = lshr i64 %1493, 63
  %1514 = lshr i64 %1491, 58
  %1515 = and i64 %1514, 1
  %1516 = xor i64 %1511, %1513
  %1517 = xor i64 %1511, %1515
  %1518 = add nuw nsw i64 %1516, %1517
  %1519 = icmp eq i64 %1518, 2
  %1520 = zext i1 %1519 to i8
  store i8 %1520, i8* %39, align 1
  %1521 = add i64 %1494, 8
  %1522 = load i32, i32* %ESI.i1737, align 4
  %1523 = add i64 %1389, 50
  store i64 %1523, i64* %3, align 8
  %1524 = inttoptr i64 %1521 to i32*
  store i32 %1522, i32* %1524, align 4
  %1525 = load i64, i64* %RBP.i, align 8
  %1526 = add i64 %1525, -20
  %1527 = load i64, i64* %3, align 8
  %1528 = add i64 %1527, 4
  store i64 %1528, i64* %3, align 8
  %1529 = inttoptr i64 %1526 to i32*
  %1530 = load i32, i32* %1529, align 4
  %1531 = sext i32 %1530 to i64
  %1532 = shl nsw i64 %1531, 5
  store i64 %1532, i64* %RDX.i1718, align 8
  %1533 = load i64, i64* %RAX.i1724, align 8
  %1534 = add i64 %1532, %1533
  store i64 %1534, i64* %RDI.i1740, align 8
  %1535 = icmp ult i64 %1534, %1533
  %1536 = icmp ult i64 %1534, %1532
  %1537 = or i1 %1535, %1536
  %1538 = zext i1 %1537 to i8
  store i8 %1538, i8* %14, align 1
  %1539 = trunc i64 %1534 to i32
  %1540 = and i32 %1539, 255
  %1541 = tail call i32 @llvm.ctpop.i32(i32 %1540)
  %1542 = trunc i32 %1541 to i8
  %1543 = and i8 %1542, 1
  %1544 = xor i8 %1543, 1
  store i8 %1544, i8* %21, align 1
  %1545 = xor i64 %1533, %1534
  %1546 = lshr i64 %1545, 4
  %1547 = trunc i64 %1546 to i8
  %1548 = and i8 %1547, 1
  store i8 %1548, i8* %27, align 1
  %1549 = icmp eq i64 %1534, 0
  %1550 = zext i1 %1549 to i8
  store i8 %1550, i8* %30, align 1
  %1551 = lshr i64 %1534, 63
  %1552 = trunc i64 %1551 to i8
  store i8 %1552, i8* %33, align 1
  %1553 = lshr i64 %1533, 63
  %1554 = lshr i64 %1531, 58
  %1555 = and i64 %1554, 1
  %1556 = xor i64 %1551, %1553
  %1557 = xor i64 %1551, %1555
  %1558 = add nuw nsw i64 %1556, %1557
  %1559 = icmp eq i64 %1558, 2
  %1560 = zext i1 %1559 to i8
  store i8 %1560, i8* %39, align 1
  %1561 = add i64 %1534, 4
  %1562 = add i64 %1527, 17
  store i64 %1562, i64* %3, align 8
  %1563 = inttoptr i64 %1561 to i32*
  %1564 = load i32, i32* %1563, align 4
  %1565 = zext i32 %1564 to i64
  store i64 %1565, i64* %RSI.i1715, align 8
  %1566 = add i64 %1527, 21
  store i64 %1566, i64* %3, align 8
  %1567 = load i32, i32* %1529, align 4
  %1568 = sext i32 %1567 to i64
  %1569 = shl nsw i64 %1568, 5
  store i64 %1569, i64* %RDX.i1718, align 8
  %1570 = add i64 %1569, %1533
  store i64 %1570, i64* %RDI.i1740, align 8
  %1571 = icmp ult i64 %1570, %1533
  %1572 = icmp ult i64 %1570, %1569
  %1573 = or i1 %1571, %1572
  %1574 = zext i1 %1573 to i8
  store i8 %1574, i8* %14, align 1
  %1575 = trunc i64 %1570 to i32
  %1576 = and i32 %1575, 255
  %1577 = tail call i32 @llvm.ctpop.i32(i32 %1576)
  %1578 = trunc i32 %1577 to i8
  %1579 = and i8 %1578, 1
  %1580 = xor i8 %1579, 1
  store i8 %1580, i8* %21, align 1
  %1581 = xor i64 %1533, %1570
  %1582 = lshr i64 %1581, 4
  %1583 = trunc i64 %1582 to i8
  %1584 = and i8 %1583, 1
  store i8 %1584, i8* %27, align 1
  %1585 = icmp eq i64 %1570, 0
  %1586 = zext i1 %1585 to i8
  store i8 %1586, i8* %30, align 1
  %1587 = lshr i64 %1570, 63
  %1588 = trunc i64 %1587 to i8
  store i8 %1588, i8* %33, align 1
  %1589 = lshr i64 %1568, 58
  %1590 = and i64 %1589, 1
  %1591 = xor i64 %1587, %1553
  %1592 = xor i64 %1587, %1590
  %1593 = add nuw nsw i64 %1591, %1592
  %1594 = icmp eq i64 %1593, 2
  %1595 = zext i1 %1594 to i8
  store i8 %1595, i8* %39, align 1
  %1596 = add i64 %1570, 12
  %1597 = add i64 %1527, 34
  store i64 %1597, i64* %3, align 8
  %1598 = inttoptr i64 %1596 to i32*
  %1599 = load i32, i32* %1598, align 4
  %1600 = sub i32 %1564, %1599
  %1601 = zext i32 %1600 to i64
  store i64 %1601, i64* %RSI.i1715, align 8
  %1602 = icmp ult i32 %1564, %1599
  %1603 = zext i1 %1602 to i8
  store i8 %1603, i8* %14, align 1
  %1604 = and i32 %1600, 255
  %1605 = tail call i32 @llvm.ctpop.i32(i32 %1604)
  %1606 = trunc i32 %1605 to i8
  %1607 = and i8 %1606, 1
  %1608 = xor i8 %1607, 1
  store i8 %1608, i8* %21, align 1
  %1609 = xor i32 %1599, %1564
  %1610 = xor i32 %1609, %1600
  %1611 = lshr i32 %1610, 4
  %1612 = trunc i32 %1611 to i8
  %1613 = and i8 %1612, 1
  store i8 %1613, i8* %27, align 1
  %1614 = icmp eq i32 %1600, 0
  %1615 = zext i1 %1614 to i8
  store i8 %1615, i8* %30, align 1
  %1616 = lshr i32 %1600, 31
  %1617 = trunc i32 %1616 to i8
  store i8 %1617, i8* %33, align 1
  %1618 = lshr i32 %1564, 31
  %1619 = lshr i32 %1599, 31
  %1620 = xor i32 %1619, %1618
  %1621 = xor i32 %1616, %1618
  %1622 = add nuw nsw i32 %1621, %1620
  %1623 = icmp eq i32 %1622, 2
  %1624 = zext i1 %1623 to i8
  store i8 %1624, i8* %39, align 1
  %1625 = load i64, i64* %RBP.i, align 8
  %1626 = add i64 %1625, -20
  %1627 = add i64 %1527, 38
  store i64 %1627, i64* %3, align 8
  %1628 = inttoptr i64 %1626 to i32*
  %1629 = load i32, i32* %1628, align 4
  %1630 = sext i32 %1629 to i64
  %1631 = shl nsw i64 %1630, 5
  store i64 %1631, i64* %RDX.i1718, align 8
  %1632 = load i64, i64* %RCX.i1721, align 8
  %1633 = add i64 %1631, %1632
  store i64 %1633, i64* %RDI.i1740, align 8
  %1634 = icmp ult i64 %1633, %1632
  %1635 = icmp ult i64 %1633, %1631
  %1636 = or i1 %1634, %1635
  %1637 = zext i1 %1636 to i8
  store i8 %1637, i8* %14, align 1
  %1638 = trunc i64 %1633 to i32
  %1639 = and i32 %1638, 255
  %1640 = tail call i32 @llvm.ctpop.i32(i32 %1639)
  %1641 = trunc i32 %1640 to i8
  %1642 = and i8 %1641, 1
  %1643 = xor i8 %1642, 1
  store i8 %1643, i8* %21, align 1
  %1644 = xor i64 %1632, %1633
  %1645 = lshr i64 %1644, 4
  %1646 = trunc i64 %1645 to i8
  %1647 = and i8 %1646, 1
  store i8 %1647, i8* %27, align 1
  %1648 = icmp eq i64 %1633, 0
  %1649 = zext i1 %1648 to i8
  store i8 %1649, i8* %30, align 1
  %1650 = lshr i64 %1633, 63
  %1651 = trunc i64 %1650 to i8
  store i8 %1651, i8* %33, align 1
  %1652 = lshr i64 %1632, 63
  %1653 = lshr i64 %1630, 58
  %1654 = and i64 %1653, 1
  %1655 = xor i64 %1650, %1652
  %1656 = xor i64 %1650, %1654
  %1657 = add nuw nsw i64 %1655, %1656
  %1658 = icmp eq i64 %1657, 2
  %1659 = zext i1 %1658 to i8
  store i8 %1659, i8* %39, align 1
  %1660 = add i64 %1633, 12
  %1661 = load i32, i32* %ESI.i1737, align 4
  %1662 = add i64 %1527, 51
  store i64 %1662, i64* %3, align 8
  %1663 = inttoptr i64 %1660 to i32*
  store i32 %1661, i32* %1663, align 4
  %1664 = load i64, i64* %RBP.i, align 8
  %1665 = add i64 %1664, -20
  %1666 = load i64, i64* %3, align 8
  %1667 = add i64 %1666, 4
  store i64 %1667, i64* %3, align 8
  %1668 = inttoptr i64 %1665 to i32*
  %1669 = load i32, i32* %1668, align 4
  %1670 = sext i32 %1669 to i64
  %1671 = shl nsw i64 %1670, 5
  store i64 %1671, i64* %RDX.i1718, align 8
  %1672 = load i64, i64* %RAX.i1724, align 8
  %1673 = add i64 %1671, %1672
  store i64 %1673, i64* %RDI.i1740, align 8
  %1674 = icmp ult i64 %1673, %1672
  %1675 = icmp ult i64 %1673, %1671
  %1676 = or i1 %1674, %1675
  %1677 = zext i1 %1676 to i8
  store i8 %1677, i8* %14, align 1
  %1678 = trunc i64 %1673 to i32
  %1679 = and i32 %1678, 255
  %1680 = tail call i32 @llvm.ctpop.i32(i32 %1679)
  %1681 = trunc i32 %1680 to i8
  %1682 = and i8 %1681, 1
  %1683 = xor i8 %1682, 1
  store i8 %1683, i8* %21, align 1
  %1684 = xor i64 %1672, %1673
  %1685 = lshr i64 %1684, 4
  %1686 = trunc i64 %1685 to i8
  %1687 = and i8 %1686, 1
  store i8 %1687, i8* %27, align 1
  %1688 = icmp eq i64 %1673, 0
  %1689 = zext i1 %1688 to i8
  store i8 %1689, i8* %30, align 1
  %1690 = lshr i64 %1673, 63
  %1691 = trunc i64 %1690 to i8
  store i8 %1691, i8* %33, align 1
  %1692 = lshr i64 %1672, 63
  %1693 = lshr i64 %1670, 58
  %1694 = and i64 %1693, 1
  %1695 = xor i64 %1690, %1692
  %1696 = xor i64 %1690, %1694
  %1697 = add nuw nsw i64 %1695, %1696
  %1698 = icmp eq i64 %1697, 2
  %1699 = zext i1 %1698 to i8
  store i8 %1699, i8* %39, align 1
  %1700 = add i64 %1673, 16
  %1701 = add i64 %1666, 17
  store i64 %1701, i64* %3, align 8
  %1702 = inttoptr i64 %1700 to i32*
  %1703 = load i32, i32* %1702, align 4
  %1704 = zext i32 %1703 to i64
  store i64 %1704, i64* %RSI.i1715, align 8
  %1705 = add i64 %1666, 21
  store i64 %1705, i64* %3, align 8
  %1706 = load i32, i32* %1668, align 4
  %1707 = sext i32 %1706 to i64
  %1708 = shl nsw i64 %1707, 5
  store i64 %1708, i64* %RDX.i1718, align 8
  %1709 = add i64 %1708, %1672
  store i64 %1709, i64* %RDI.i1740, align 8
  %1710 = icmp ult i64 %1709, %1672
  %1711 = icmp ult i64 %1709, %1708
  %1712 = or i1 %1710, %1711
  %1713 = zext i1 %1712 to i8
  store i8 %1713, i8* %14, align 1
  %1714 = trunc i64 %1709 to i32
  %1715 = and i32 %1714, 255
  %1716 = tail call i32 @llvm.ctpop.i32(i32 %1715)
  %1717 = trunc i32 %1716 to i8
  %1718 = and i8 %1717, 1
  %1719 = xor i8 %1718, 1
  store i8 %1719, i8* %21, align 1
  %1720 = xor i64 %1672, %1709
  %1721 = lshr i64 %1720, 4
  %1722 = trunc i64 %1721 to i8
  %1723 = and i8 %1722, 1
  store i8 %1723, i8* %27, align 1
  %1724 = icmp eq i64 %1709, 0
  %1725 = zext i1 %1724 to i8
  store i8 %1725, i8* %30, align 1
  %1726 = lshr i64 %1709, 63
  %1727 = trunc i64 %1726 to i8
  store i8 %1727, i8* %33, align 1
  %1728 = lshr i64 %1707, 58
  %1729 = and i64 %1728, 1
  %1730 = xor i64 %1726, %1692
  %1731 = xor i64 %1726, %1729
  %1732 = add nuw nsw i64 %1730, %1731
  %1733 = icmp eq i64 %1732, 2
  %1734 = zext i1 %1733 to i8
  store i8 %1734, i8* %39, align 1
  %1735 = add i64 %1709, 24
  %1736 = add i64 %1666, 34
  store i64 %1736, i64* %3, align 8
  %1737 = inttoptr i64 %1735 to i32*
  %1738 = load i32, i32* %1737, align 4
  %1739 = add i32 %1738, %1703
  %1740 = zext i32 %1739 to i64
  store i64 %1740, i64* %RSI.i1715, align 8
  %1741 = icmp ult i32 %1739, %1703
  %1742 = icmp ult i32 %1739, %1738
  %1743 = or i1 %1741, %1742
  %1744 = zext i1 %1743 to i8
  store i8 %1744, i8* %14, align 1
  %1745 = and i32 %1739, 255
  %1746 = tail call i32 @llvm.ctpop.i32(i32 %1745)
  %1747 = trunc i32 %1746 to i8
  %1748 = and i8 %1747, 1
  %1749 = xor i8 %1748, 1
  store i8 %1749, i8* %21, align 1
  %1750 = xor i32 %1738, %1703
  %1751 = xor i32 %1750, %1739
  %1752 = lshr i32 %1751, 4
  %1753 = trunc i32 %1752 to i8
  %1754 = and i8 %1753, 1
  store i8 %1754, i8* %27, align 1
  %1755 = icmp eq i32 %1739, 0
  %1756 = zext i1 %1755 to i8
  store i8 %1756, i8* %30, align 1
  %1757 = lshr i32 %1739, 31
  %1758 = trunc i32 %1757 to i8
  store i8 %1758, i8* %33, align 1
  %1759 = lshr i32 %1703, 31
  %1760 = lshr i32 %1738, 31
  %1761 = xor i32 %1757, %1759
  %1762 = xor i32 %1757, %1760
  %1763 = add nuw nsw i32 %1761, %1762
  %1764 = icmp eq i32 %1763, 2
  %1765 = zext i1 %1764 to i8
  store i8 %1765, i8* %39, align 1
  %1766 = load i64, i64* %RBP.i, align 8
  %1767 = add i64 %1766, -20
  %1768 = add i64 %1666, 38
  store i64 %1768, i64* %3, align 8
  %1769 = inttoptr i64 %1767 to i32*
  %1770 = load i32, i32* %1769, align 4
  %1771 = sext i32 %1770 to i64
  %1772 = shl nsw i64 %1771, 5
  store i64 %1772, i64* %RDX.i1718, align 8
  %1773 = load i64, i64* %RCX.i1721, align 8
  %1774 = add i64 %1772, %1773
  store i64 %1774, i64* %RDI.i1740, align 8
  %1775 = icmp ult i64 %1774, %1773
  %1776 = icmp ult i64 %1774, %1772
  %1777 = or i1 %1775, %1776
  %1778 = zext i1 %1777 to i8
  store i8 %1778, i8* %14, align 1
  %1779 = trunc i64 %1774 to i32
  %1780 = and i32 %1779, 255
  %1781 = tail call i32 @llvm.ctpop.i32(i32 %1780)
  %1782 = trunc i32 %1781 to i8
  %1783 = and i8 %1782, 1
  %1784 = xor i8 %1783, 1
  store i8 %1784, i8* %21, align 1
  %1785 = xor i64 %1773, %1774
  %1786 = lshr i64 %1785, 4
  %1787 = trunc i64 %1786 to i8
  %1788 = and i8 %1787, 1
  store i8 %1788, i8* %27, align 1
  %1789 = icmp eq i64 %1774, 0
  %1790 = zext i1 %1789 to i8
  store i8 %1790, i8* %30, align 1
  %1791 = lshr i64 %1774, 63
  %1792 = trunc i64 %1791 to i8
  store i8 %1792, i8* %33, align 1
  %1793 = lshr i64 %1773, 63
  %1794 = lshr i64 %1771, 58
  %1795 = and i64 %1794, 1
  %1796 = xor i64 %1791, %1793
  %1797 = xor i64 %1791, %1795
  %1798 = add nuw nsw i64 %1796, %1797
  %1799 = icmp eq i64 %1798, 2
  %1800 = zext i1 %1799 to i8
  store i8 %1800, i8* %39, align 1
  %1801 = add i64 %1774, 16
  %1802 = load i32, i32* %ESI.i1737, align 4
  %1803 = add i64 %1666, 51
  store i64 %1803, i64* %3, align 8
  %1804 = inttoptr i64 %1801 to i32*
  store i32 %1802, i32* %1804, align 4
  %1805 = load i64, i64* %RBP.i, align 8
  %1806 = add i64 %1805, -20
  %1807 = load i64, i64* %3, align 8
  %1808 = add i64 %1807, 4
  store i64 %1808, i64* %3, align 8
  %1809 = inttoptr i64 %1806 to i32*
  %1810 = load i32, i32* %1809, align 4
  %1811 = sext i32 %1810 to i64
  %1812 = shl nsw i64 %1811, 5
  store i64 %1812, i64* %RDX.i1718, align 8
  %1813 = load i64, i64* %RAX.i1724, align 8
  %1814 = add i64 %1812, %1813
  store i64 %1814, i64* %RDI.i1740, align 8
  %1815 = icmp ult i64 %1814, %1813
  %1816 = icmp ult i64 %1814, %1812
  %1817 = or i1 %1815, %1816
  %1818 = zext i1 %1817 to i8
  store i8 %1818, i8* %14, align 1
  %1819 = trunc i64 %1814 to i32
  %1820 = and i32 %1819, 255
  %1821 = tail call i32 @llvm.ctpop.i32(i32 %1820)
  %1822 = trunc i32 %1821 to i8
  %1823 = and i8 %1822, 1
  %1824 = xor i8 %1823, 1
  store i8 %1824, i8* %21, align 1
  %1825 = xor i64 %1813, %1814
  %1826 = lshr i64 %1825, 4
  %1827 = trunc i64 %1826 to i8
  %1828 = and i8 %1827, 1
  store i8 %1828, i8* %27, align 1
  %1829 = icmp eq i64 %1814, 0
  %1830 = zext i1 %1829 to i8
  store i8 %1830, i8* %30, align 1
  %1831 = lshr i64 %1814, 63
  %1832 = trunc i64 %1831 to i8
  store i8 %1832, i8* %33, align 1
  %1833 = lshr i64 %1813, 63
  %1834 = lshr i64 %1811, 58
  %1835 = and i64 %1834, 1
  %1836 = xor i64 %1831, %1833
  %1837 = xor i64 %1831, %1835
  %1838 = add nuw nsw i64 %1836, %1837
  %1839 = icmp eq i64 %1838, 2
  %1840 = zext i1 %1839 to i8
  store i8 %1840, i8* %39, align 1
  %1841 = add i64 %1814, 20
  %1842 = add i64 %1807, 17
  store i64 %1842, i64* %3, align 8
  %1843 = inttoptr i64 %1841 to i32*
  %1844 = load i32, i32* %1843, align 4
  %1845 = zext i32 %1844 to i64
  store i64 %1845, i64* %RSI.i1715, align 8
  %1846 = add i64 %1807, 21
  store i64 %1846, i64* %3, align 8
  %1847 = load i32, i32* %1809, align 4
  %1848 = sext i32 %1847 to i64
  %1849 = shl nsw i64 %1848, 5
  store i64 %1849, i64* %RDX.i1718, align 8
  %1850 = add i64 %1849, %1813
  store i64 %1850, i64* %RDI.i1740, align 8
  %1851 = icmp ult i64 %1850, %1813
  %1852 = icmp ult i64 %1850, %1849
  %1853 = or i1 %1851, %1852
  %1854 = zext i1 %1853 to i8
  store i8 %1854, i8* %14, align 1
  %1855 = trunc i64 %1850 to i32
  %1856 = and i32 %1855, 255
  %1857 = tail call i32 @llvm.ctpop.i32(i32 %1856)
  %1858 = trunc i32 %1857 to i8
  %1859 = and i8 %1858, 1
  %1860 = xor i8 %1859, 1
  store i8 %1860, i8* %21, align 1
  %1861 = xor i64 %1813, %1850
  %1862 = lshr i64 %1861, 4
  %1863 = trunc i64 %1862 to i8
  %1864 = and i8 %1863, 1
  store i8 %1864, i8* %27, align 1
  %1865 = icmp eq i64 %1850, 0
  %1866 = zext i1 %1865 to i8
  store i8 %1866, i8* %30, align 1
  %1867 = lshr i64 %1850, 63
  %1868 = trunc i64 %1867 to i8
  store i8 %1868, i8* %33, align 1
  %1869 = lshr i64 %1848, 58
  %1870 = and i64 %1869, 1
  %1871 = xor i64 %1867, %1833
  %1872 = xor i64 %1867, %1870
  %1873 = add nuw nsw i64 %1871, %1872
  %1874 = icmp eq i64 %1873, 2
  %1875 = zext i1 %1874 to i8
  store i8 %1875, i8* %39, align 1
  %1876 = add i64 %1850, 28
  %1877 = add i64 %1807, 34
  store i64 %1877, i64* %3, align 8
  %1878 = inttoptr i64 %1876 to i32*
  %1879 = load i32, i32* %1878, align 4
  %1880 = add i32 %1879, %1844
  %1881 = zext i32 %1880 to i64
  store i64 %1881, i64* %RSI.i1715, align 8
  %1882 = icmp ult i32 %1880, %1844
  %1883 = icmp ult i32 %1880, %1879
  %1884 = or i1 %1882, %1883
  %1885 = zext i1 %1884 to i8
  store i8 %1885, i8* %14, align 1
  %1886 = and i32 %1880, 255
  %1887 = tail call i32 @llvm.ctpop.i32(i32 %1886)
  %1888 = trunc i32 %1887 to i8
  %1889 = and i8 %1888, 1
  %1890 = xor i8 %1889, 1
  store i8 %1890, i8* %21, align 1
  %1891 = xor i32 %1879, %1844
  %1892 = xor i32 %1891, %1880
  %1893 = lshr i32 %1892, 4
  %1894 = trunc i32 %1893 to i8
  %1895 = and i8 %1894, 1
  store i8 %1895, i8* %27, align 1
  %1896 = icmp eq i32 %1880, 0
  %1897 = zext i1 %1896 to i8
  store i8 %1897, i8* %30, align 1
  %1898 = lshr i32 %1880, 31
  %1899 = trunc i32 %1898 to i8
  store i8 %1899, i8* %33, align 1
  %1900 = lshr i32 %1844, 31
  %1901 = lshr i32 %1879, 31
  %1902 = xor i32 %1898, %1900
  %1903 = xor i32 %1898, %1901
  %1904 = add nuw nsw i32 %1902, %1903
  %1905 = icmp eq i32 %1904, 2
  %1906 = zext i1 %1905 to i8
  store i8 %1906, i8* %39, align 1
  %1907 = load i64, i64* %RBP.i, align 8
  %1908 = add i64 %1907, -20
  %1909 = add i64 %1807, 38
  store i64 %1909, i64* %3, align 8
  %1910 = inttoptr i64 %1908 to i32*
  %1911 = load i32, i32* %1910, align 4
  %1912 = sext i32 %1911 to i64
  %1913 = shl nsw i64 %1912, 5
  store i64 %1913, i64* %RDX.i1718, align 8
  %1914 = load i64, i64* %RCX.i1721, align 8
  %1915 = add i64 %1913, %1914
  store i64 %1915, i64* %RDI.i1740, align 8
  %1916 = icmp ult i64 %1915, %1914
  %1917 = icmp ult i64 %1915, %1913
  %1918 = or i1 %1916, %1917
  %1919 = zext i1 %1918 to i8
  store i8 %1919, i8* %14, align 1
  %1920 = trunc i64 %1915 to i32
  %1921 = and i32 %1920, 255
  %1922 = tail call i32 @llvm.ctpop.i32(i32 %1921)
  %1923 = trunc i32 %1922 to i8
  %1924 = and i8 %1923, 1
  %1925 = xor i8 %1924, 1
  store i8 %1925, i8* %21, align 1
  %1926 = xor i64 %1914, %1915
  %1927 = lshr i64 %1926, 4
  %1928 = trunc i64 %1927 to i8
  %1929 = and i8 %1928, 1
  store i8 %1929, i8* %27, align 1
  %1930 = icmp eq i64 %1915, 0
  %1931 = zext i1 %1930 to i8
  store i8 %1931, i8* %30, align 1
  %1932 = lshr i64 %1915, 63
  %1933 = trunc i64 %1932 to i8
  store i8 %1933, i8* %33, align 1
  %1934 = lshr i64 %1914, 63
  %1935 = lshr i64 %1912, 58
  %1936 = and i64 %1935, 1
  %1937 = xor i64 %1932, %1934
  %1938 = xor i64 %1932, %1936
  %1939 = add nuw nsw i64 %1937, %1938
  %1940 = icmp eq i64 %1939, 2
  %1941 = zext i1 %1940 to i8
  store i8 %1941, i8* %39, align 1
  %1942 = add i64 %1915, 20
  %1943 = load i32, i32* %ESI.i1737, align 4
  %1944 = add i64 %1807, 51
  store i64 %1944, i64* %3, align 8
  %1945 = inttoptr i64 %1942 to i32*
  store i32 %1943, i32* %1945, align 4
  %1946 = load i64, i64* %RBP.i, align 8
  %1947 = add i64 %1946, -20
  %1948 = load i64, i64* %3, align 8
  %1949 = add i64 %1948, 4
  store i64 %1949, i64* %3, align 8
  %1950 = inttoptr i64 %1947 to i32*
  %1951 = load i32, i32* %1950, align 4
  %1952 = sext i32 %1951 to i64
  %1953 = shl nsw i64 %1952, 5
  store i64 %1953, i64* %RDX.i1718, align 8
  %1954 = load i64, i64* %RAX.i1724, align 8
  %1955 = add i64 %1953, %1954
  store i64 %1955, i64* %RDI.i1740, align 8
  %1956 = icmp ult i64 %1955, %1954
  %1957 = icmp ult i64 %1955, %1953
  %1958 = or i1 %1956, %1957
  %1959 = zext i1 %1958 to i8
  store i8 %1959, i8* %14, align 1
  %1960 = trunc i64 %1955 to i32
  %1961 = and i32 %1960, 255
  %1962 = tail call i32 @llvm.ctpop.i32(i32 %1961)
  %1963 = trunc i32 %1962 to i8
  %1964 = and i8 %1963, 1
  %1965 = xor i8 %1964, 1
  store i8 %1965, i8* %21, align 1
  %1966 = xor i64 %1954, %1955
  %1967 = lshr i64 %1966, 4
  %1968 = trunc i64 %1967 to i8
  %1969 = and i8 %1968, 1
  store i8 %1969, i8* %27, align 1
  %1970 = icmp eq i64 %1955, 0
  %1971 = zext i1 %1970 to i8
  store i8 %1971, i8* %30, align 1
  %1972 = lshr i64 %1955, 63
  %1973 = trunc i64 %1972 to i8
  store i8 %1973, i8* %33, align 1
  %1974 = lshr i64 %1954, 63
  %1975 = lshr i64 %1952, 58
  %1976 = and i64 %1975, 1
  %1977 = xor i64 %1972, %1974
  %1978 = xor i64 %1972, %1976
  %1979 = add nuw nsw i64 %1977, %1978
  %1980 = icmp eq i64 %1979, 2
  %1981 = zext i1 %1980 to i8
  store i8 %1981, i8* %39, align 1
  %1982 = add i64 %1955, 16
  %1983 = add i64 %1948, 17
  store i64 %1983, i64* %3, align 8
  %1984 = inttoptr i64 %1982 to i32*
  %1985 = load i32, i32* %1984, align 4
  %1986 = zext i32 %1985 to i64
  store i64 %1986, i64* %RSI.i1715, align 8
  %1987 = add i64 %1948, 21
  store i64 %1987, i64* %3, align 8
  %1988 = load i32, i32* %1950, align 4
  %1989 = sext i32 %1988 to i64
  %1990 = shl nsw i64 %1989, 5
  store i64 %1990, i64* %RDX.i1718, align 8
  %1991 = add i64 %1990, %1954
  store i64 %1991, i64* %RDI.i1740, align 8
  %1992 = icmp ult i64 %1991, %1954
  %1993 = icmp ult i64 %1991, %1990
  %1994 = or i1 %1992, %1993
  %1995 = zext i1 %1994 to i8
  store i8 %1995, i8* %14, align 1
  %1996 = trunc i64 %1991 to i32
  %1997 = and i32 %1996, 255
  %1998 = tail call i32 @llvm.ctpop.i32(i32 %1997)
  %1999 = trunc i32 %1998 to i8
  %2000 = and i8 %1999, 1
  %2001 = xor i8 %2000, 1
  store i8 %2001, i8* %21, align 1
  %2002 = xor i64 %1954, %1991
  %2003 = lshr i64 %2002, 4
  %2004 = trunc i64 %2003 to i8
  %2005 = and i8 %2004, 1
  store i8 %2005, i8* %27, align 1
  %2006 = icmp eq i64 %1991, 0
  %2007 = zext i1 %2006 to i8
  store i8 %2007, i8* %30, align 1
  %2008 = lshr i64 %1991, 63
  %2009 = trunc i64 %2008 to i8
  store i8 %2009, i8* %33, align 1
  %2010 = lshr i64 %1989, 58
  %2011 = and i64 %2010, 1
  %2012 = xor i64 %2008, %1974
  %2013 = xor i64 %2008, %2011
  %2014 = add nuw nsw i64 %2012, %2013
  %2015 = icmp eq i64 %2014, 2
  %2016 = zext i1 %2015 to i8
  store i8 %2016, i8* %39, align 1
  %2017 = add i64 %1991, 24
  %2018 = add i64 %1948, 34
  store i64 %2018, i64* %3, align 8
  %2019 = inttoptr i64 %2017 to i32*
  %2020 = load i32, i32* %2019, align 4
  %2021 = sub i32 %1985, %2020
  %2022 = zext i32 %2021 to i64
  store i64 %2022, i64* %RSI.i1715, align 8
  %2023 = icmp ult i32 %1985, %2020
  %2024 = zext i1 %2023 to i8
  store i8 %2024, i8* %14, align 1
  %2025 = and i32 %2021, 255
  %2026 = tail call i32 @llvm.ctpop.i32(i32 %2025)
  %2027 = trunc i32 %2026 to i8
  %2028 = and i8 %2027, 1
  %2029 = xor i8 %2028, 1
  store i8 %2029, i8* %21, align 1
  %2030 = xor i32 %2020, %1985
  %2031 = xor i32 %2030, %2021
  %2032 = lshr i32 %2031, 4
  %2033 = trunc i32 %2032 to i8
  %2034 = and i8 %2033, 1
  store i8 %2034, i8* %27, align 1
  %2035 = icmp eq i32 %2021, 0
  %2036 = zext i1 %2035 to i8
  store i8 %2036, i8* %30, align 1
  %2037 = lshr i32 %2021, 31
  %2038 = trunc i32 %2037 to i8
  store i8 %2038, i8* %33, align 1
  %2039 = lshr i32 %1985, 31
  %2040 = lshr i32 %2020, 31
  %2041 = xor i32 %2040, %2039
  %2042 = xor i32 %2037, %2039
  %2043 = add nuw nsw i32 %2042, %2041
  %2044 = icmp eq i32 %2043, 2
  %2045 = zext i1 %2044 to i8
  store i8 %2045, i8* %39, align 1
  %2046 = load i64, i64* %RBP.i, align 8
  %2047 = add i64 %2046, -20
  %2048 = add i64 %1948, 38
  store i64 %2048, i64* %3, align 8
  %2049 = inttoptr i64 %2047 to i32*
  %2050 = load i32, i32* %2049, align 4
  %2051 = sext i32 %2050 to i64
  %2052 = shl nsw i64 %2051, 5
  store i64 %2052, i64* %RDX.i1718, align 8
  %2053 = load i64, i64* %RCX.i1721, align 8
  %2054 = add i64 %2052, %2053
  store i64 %2054, i64* %RDI.i1740, align 8
  %2055 = icmp ult i64 %2054, %2053
  %2056 = icmp ult i64 %2054, %2052
  %2057 = or i1 %2055, %2056
  %2058 = zext i1 %2057 to i8
  store i8 %2058, i8* %14, align 1
  %2059 = trunc i64 %2054 to i32
  %2060 = and i32 %2059, 255
  %2061 = tail call i32 @llvm.ctpop.i32(i32 %2060)
  %2062 = trunc i32 %2061 to i8
  %2063 = and i8 %2062, 1
  %2064 = xor i8 %2063, 1
  store i8 %2064, i8* %21, align 1
  %2065 = xor i64 %2053, %2054
  %2066 = lshr i64 %2065, 4
  %2067 = trunc i64 %2066 to i8
  %2068 = and i8 %2067, 1
  store i8 %2068, i8* %27, align 1
  %2069 = icmp eq i64 %2054, 0
  %2070 = zext i1 %2069 to i8
  store i8 %2070, i8* %30, align 1
  %2071 = lshr i64 %2054, 63
  %2072 = trunc i64 %2071 to i8
  store i8 %2072, i8* %33, align 1
  %2073 = lshr i64 %2053, 63
  %2074 = lshr i64 %2051, 58
  %2075 = and i64 %2074, 1
  %2076 = xor i64 %2071, %2073
  %2077 = xor i64 %2071, %2075
  %2078 = add nuw nsw i64 %2076, %2077
  %2079 = icmp eq i64 %2078, 2
  %2080 = zext i1 %2079 to i8
  store i8 %2080, i8* %39, align 1
  %2081 = add i64 %2054, 24
  %2082 = load i32, i32* %ESI.i1737, align 4
  %2083 = add i64 %1948, 51
  store i64 %2083, i64* %3, align 8
  %2084 = inttoptr i64 %2081 to i32*
  store i32 %2082, i32* %2084, align 4
  %2085 = load i64, i64* %RBP.i, align 8
  %2086 = add i64 %2085, -20
  %2087 = load i64, i64* %3, align 8
  %2088 = add i64 %2087, 4
  store i64 %2088, i64* %3, align 8
  %2089 = inttoptr i64 %2086 to i32*
  %2090 = load i32, i32* %2089, align 4
  %2091 = sext i32 %2090 to i64
  %2092 = shl nsw i64 %2091, 5
  store i64 %2092, i64* %RDX.i1718, align 8
  %2093 = load i64, i64* %RAX.i1724, align 8
  %2094 = add i64 %2092, %2093
  store i64 %2094, i64* %RDI.i1740, align 8
  %2095 = icmp ult i64 %2094, %2093
  %2096 = icmp ult i64 %2094, %2092
  %2097 = or i1 %2095, %2096
  %2098 = zext i1 %2097 to i8
  store i8 %2098, i8* %14, align 1
  %2099 = trunc i64 %2094 to i32
  %2100 = and i32 %2099, 255
  %2101 = tail call i32 @llvm.ctpop.i32(i32 %2100)
  %2102 = trunc i32 %2101 to i8
  %2103 = and i8 %2102, 1
  %2104 = xor i8 %2103, 1
  store i8 %2104, i8* %21, align 1
  %2105 = xor i64 %2093, %2094
  %2106 = lshr i64 %2105, 4
  %2107 = trunc i64 %2106 to i8
  %2108 = and i8 %2107, 1
  store i8 %2108, i8* %27, align 1
  %2109 = icmp eq i64 %2094, 0
  %2110 = zext i1 %2109 to i8
  store i8 %2110, i8* %30, align 1
  %2111 = lshr i64 %2094, 63
  %2112 = trunc i64 %2111 to i8
  store i8 %2112, i8* %33, align 1
  %2113 = lshr i64 %2093, 63
  %2114 = lshr i64 %2091, 58
  %2115 = and i64 %2114, 1
  %2116 = xor i64 %2111, %2113
  %2117 = xor i64 %2111, %2115
  %2118 = add nuw nsw i64 %2116, %2117
  %2119 = icmp eq i64 %2118, 2
  %2120 = zext i1 %2119 to i8
  store i8 %2120, i8* %39, align 1
  %2121 = add i64 %2094, 20
  %2122 = add i64 %2087, 17
  store i64 %2122, i64* %3, align 8
  %2123 = inttoptr i64 %2121 to i32*
  %2124 = load i32, i32* %2123, align 4
  %2125 = zext i32 %2124 to i64
  store i64 %2125, i64* %RSI.i1715, align 8
  %2126 = add i64 %2087, 21
  store i64 %2126, i64* %3, align 8
  %2127 = load i32, i32* %2089, align 4
  %2128 = sext i32 %2127 to i64
  %2129 = shl nsw i64 %2128, 5
  store i64 %2129, i64* %RDX.i1718, align 8
  %2130 = add i64 %2129, %2093
  store i64 %2130, i64* %RDI.i1740, align 8
  %2131 = icmp ult i64 %2130, %2093
  %2132 = icmp ult i64 %2130, %2129
  %2133 = or i1 %2131, %2132
  %2134 = zext i1 %2133 to i8
  store i8 %2134, i8* %14, align 1
  %2135 = trunc i64 %2130 to i32
  %2136 = and i32 %2135, 255
  %2137 = tail call i32 @llvm.ctpop.i32(i32 %2136)
  %2138 = trunc i32 %2137 to i8
  %2139 = and i8 %2138, 1
  %2140 = xor i8 %2139, 1
  store i8 %2140, i8* %21, align 1
  %2141 = xor i64 %2093, %2130
  %2142 = lshr i64 %2141, 4
  %2143 = trunc i64 %2142 to i8
  %2144 = and i8 %2143, 1
  store i8 %2144, i8* %27, align 1
  %2145 = icmp eq i64 %2130, 0
  %2146 = zext i1 %2145 to i8
  store i8 %2146, i8* %30, align 1
  %2147 = lshr i64 %2130, 63
  %2148 = trunc i64 %2147 to i8
  store i8 %2148, i8* %33, align 1
  %2149 = lshr i64 %2128, 58
  %2150 = and i64 %2149, 1
  %2151 = xor i64 %2147, %2113
  %2152 = xor i64 %2147, %2150
  %2153 = add nuw nsw i64 %2151, %2152
  %2154 = icmp eq i64 %2153, 2
  %2155 = zext i1 %2154 to i8
  store i8 %2155, i8* %39, align 1
  %2156 = add i64 %2130, 28
  %2157 = add i64 %2087, 34
  store i64 %2157, i64* %3, align 8
  %2158 = inttoptr i64 %2156 to i32*
  %2159 = load i32, i32* %2158, align 4
  %2160 = sub i32 %2124, %2159
  %2161 = zext i32 %2160 to i64
  store i64 %2161, i64* %RSI.i1715, align 8
  %2162 = icmp ult i32 %2124, %2159
  %2163 = zext i1 %2162 to i8
  store i8 %2163, i8* %14, align 1
  %2164 = and i32 %2160, 255
  %2165 = tail call i32 @llvm.ctpop.i32(i32 %2164)
  %2166 = trunc i32 %2165 to i8
  %2167 = and i8 %2166, 1
  %2168 = xor i8 %2167, 1
  store i8 %2168, i8* %21, align 1
  %2169 = xor i32 %2159, %2124
  %2170 = xor i32 %2169, %2160
  %2171 = lshr i32 %2170, 4
  %2172 = trunc i32 %2171 to i8
  %2173 = and i8 %2172, 1
  store i8 %2173, i8* %27, align 1
  %2174 = icmp eq i32 %2160, 0
  %2175 = zext i1 %2174 to i8
  store i8 %2175, i8* %30, align 1
  %2176 = lshr i32 %2160, 31
  %2177 = trunc i32 %2176 to i8
  store i8 %2177, i8* %33, align 1
  %2178 = lshr i32 %2124, 31
  %2179 = lshr i32 %2159, 31
  %2180 = xor i32 %2179, %2178
  %2181 = xor i32 %2176, %2178
  %2182 = add nuw nsw i32 %2181, %2180
  %2183 = icmp eq i32 %2182, 2
  %2184 = zext i1 %2183 to i8
  store i8 %2184, i8* %39, align 1
  %2185 = load i64, i64* %RBP.i, align 8
  %2186 = add i64 %2185, -20
  %2187 = add i64 %2087, 38
  store i64 %2187, i64* %3, align 8
  %2188 = inttoptr i64 %2186 to i32*
  %2189 = load i32, i32* %2188, align 4
  %2190 = sext i32 %2189 to i64
  %2191 = shl nsw i64 %2190, 5
  store i64 %2191, i64* %RDX.i1718, align 8
  %2192 = load i64, i64* %RCX.i1721, align 8
  %2193 = add i64 %2191, %2192
  store i64 %2193, i64* %RDI.i1740, align 8
  %2194 = icmp ult i64 %2193, %2192
  %2195 = icmp ult i64 %2193, %2191
  %2196 = or i1 %2194, %2195
  %2197 = zext i1 %2196 to i8
  store i8 %2197, i8* %14, align 1
  %2198 = trunc i64 %2193 to i32
  %2199 = and i32 %2198, 255
  %2200 = tail call i32 @llvm.ctpop.i32(i32 %2199)
  %2201 = trunc i32 %2200 to i8
  %2202 = and i8 %2201, 1
  %2203 = xor i8 %2202, 1
  store i8 %2203, i8* %21, align 1
  %2204 = xor i64 %2192, %2193
  %2205 = lshr i64 %2204, 4
  %2206 = trunc i64 %2205 to i8
  %2207 = and i8 %2206, 1
  store i8 %2207, i8* %27, align 1
  %2208 = icmp eq i64 %2193, 0
  %2209 = zext i1 %2208 to i8
  store i8 %2209, i8* %30, align 1
  %2210 = lshr i64 %2193, 63
  %2211 = trunc i64 %2210 to i8
  store i8 %2211, i8* %33, align 1
  %2212 = lshr i64 %2192, 63
  %2213 = lshr i64 %2190, 58
  %2214 = and i64 %2213, 1
  %2215 = xor i64 %2210, %2212
  %2216 = xor i64 %2210, %2214
  %2217 = add nuw nsw i64 %2215, %2216
  %2218 = icmp eq i64 %2217, 2
  %2219 = zext i1 %2218 to i8
  store i8 %2219, i8* %39, align 1
  %2220 = add i64 %2193, 28
  %2221 = load i32, i32* %ESI.i1737, align 4
  %2222 = add i64 %2087, 51
  store i64 %2222, i64* %3, align 8
  %2223 = inttoptr i64 %2220 to i32*
  store i32 %2221, i32* %2223, align 4
  %2224 = load i64, i64* %RBP.i, align 8
  %2225 = add i64 %2224, -20
  %2226 = load i64, i64* %3, align 8
  %2227 = add i64 %2226, 4
  store i64 %2227, i64* %3, align 8
  %2228 = inttoptr i64 %2225 to i32*
  %2229 = load i32, i32* %2228, align 4
  %2230 = sext i32 %2229 to i64
  %2231 = shl nsw i64 %2230, 5
  store i64 %2231, i64* %RDX.i1718, align 8
  %2232 = load i64, i64* %RCX.i1721, align 8
  %2233 = add i64 %2231, %2232
  store i64 %2233, i64* %RDI.i1740, align 8
  %2234 = icmp ult i64 %2233, %2232
  %2235 = icmp ult i64 %2233, %2231
  %2236 = or i1 %2234, %2235
  %2237 = zext i1 %2236 to i8
  store i8 %2237, i8* %14, align 1
  %2238 = trunc i64 %2233 to i32
  %2239 = and i32 %2238, 255
  %2240 = tail call i32 @llvm.ctpop.i32(i32 %2239)
  %2241 = trunc i32 %2240 to i8
  %2242 = and i8 %2241, 1
  %2243 = xor i8 %2242, 1
  store i8 %2243, i8* %21, align 1
  %2244 = xor i64 %2232, %2233
  %2245 = lshr i64 %2244, 4
  %2246 = trunc i64 %2245 to i8
  %2247 = and i8 %2246, 1
  store i8 %2247, i8* %27, align 1
  %2248 = icmp eq i64 %2233, 0
  %2249 = zext i1 %2248 to i8
  store i8 %2249, i8* %30, align 1
  %2250 = lshr i64 %2233, 63
  %2251 = trunc i64 %2250 to i8
  store i8 %2251, i8* %33, align 1
  %2252 = lshr i64 %2232, 63
  %2253 = lshr i64 %2230, 58
  %2254 = and i64 %2253, 1
  %2255 = xor i64 %2250, %2252
  %2256 = xor i64 %2250, %2254
  %2257 = add nuw nsw i64 %2255, %2256
  %2258 = icmp eq i64 %2257, 2
  %2259 = zext i1 %2258 to i8
  store i8 %2259, i8* %39, align 1
  %2260 = inttoptr i64 %2233 to i32*
  %2261 = add i64 %2226, 16
  store i64 %2261, i64* %3, align 8
  %2262 = load i32, i32* %2260, align 4
  %2263 = zext i32 %2262 to i64
  store i64 %2263, i64* %RSI.i1715, align 8
  %2264 = add i64 %2226, 20
  store i64 %2264, i64* %3, align 8
  %2265 = load i32, i32* %2228, align 4
  %2266 = sext i32 %2265 to i64
  %2267 = shl nsw i64 %2266, 5
  store i64 %2267, i64* %RDX.i1718, align 8
  %2268 = add i64 %2267, %2232
  store i64 %2268, i64* %RDI.i1740, align 8
  %2269 = icmp ult i64 %2268, %2232
  %2270 = icmp ult i64 %2268, %2267
  %2271 = or i1 %2269, %2270
  %2272 = zext i1 %2271 to i8
  store i8 %2272, i8* %14, align 1
  %2273 = trunc i64 %2268 to i32
  %2274 = and i32 %2273, 255
  %2275 = tail call i32 @llvm.ctpop.i32(i32 %2274)
  %2276 = trunc i32 %2275 to i8
  %2277 = and i8 %2276, 1
  %2278 = xor i8 %2277, 1
  store i8 %2278, i8* %21, align 1
  %2279 = xor i64 %2232, %2268
  %2280 = lshr i64 %2279, 4
  %2281 = trunc i64 %2280 to i8
  %2282 = and i8 %2281, 1
  store i8 %2282, i8* %27, align 1
  %2283 = icmp eq i64 %2268, 0
  %2284 = zext i1 %2283 to i8
  store i8 %2284, i8* %30, align 1
  %2285 = lshr i64 %2268, 63
  %2286 = trunc i64 %2285 to i8
  store i8 %2286, i8* %33, align 1
  %2287 = lshr i64 %2266, 58
  %2288 = and i64 %2287, 1
  %2289 = xor i64 %2285, %2252
  %2290 = xor i64 %2285, %2288
  %2291 = add nuw nsw i64 %2289, %2290
  %2292 = icmp eq i64 %2291, 2
  %2293 = zext i1 %2292 to i8
  store i8 %2293, i8* %39, align 1
  %2294 = add i64 %2268, 4
  %2295 = add i64 %2226, 33
  store i64 %2295, i64* %3, align 8
  %2296 = inttoptr i64 %2294 to i32*
  %2297 = load i32, i32* %2296, align 4
  %2298 = add i32 %2297, %2262
  %2299 = zext i32 %2298 to i64
  store i64 %2299, i64* %RSI.i1715, align 8
  %2300 = icmp ult i32 %2298, %2262
  %2301 = icmp ult i32 %2298, %2297
  %2302 = or i1 %2300, %2301
  %2303 = zext i1 %2302 to i8
  store i8 %2303, i8* %14, align 1
  %2304 = and i32 %2298, 255
  %2305 = tail call i32 @llvm.ctpop.i32(i32 %2304)
  %2306 = trunc i32 %2305 to i8
  %2307 = and i8 %2306, 1
  %2308 = xor i8 %2307, 1
  store i8 %2308, i8* %21, align 1
  %2309 = xor i32 %2297, %2262
  %2310 = xor i32 %2309, %2298
  %2311 = lshr i32 %2310, 4
  %2312 = trunc i32 %2311 to i8
  %2313 = and i8 %2312, 1
  store i8 %2313, i8* %27, align 1
  %2314 = icmp eq i32 %2298, 0
  %2315 = zext i1 %2314 to i8
  store i8 %2315, i8* %30, align 1
  %2316 = lshr i32 %2298, 31
  %2317 = trunc i32 %2316 to i8
  store i8 %2317, i8* %33, align 1
  %2318 = lshr i32 %2262, 31
  %2319 = lshr i32 %2297, 31
  %2320 = xor i32 %2316, %2318
  %2321 = xor i32 %2316, %2319
  %2322 = add nuw nsw i32 %2320, %2321
  %2323 = icmp eq i32 %2322, 2
  %2324 = zext i1 %2323 to i8
  store i8 %2324, i8* %39, align 1
  %2325 = load i64, i64* %RBP.i, align 8
  %2326 = add i64 %2325, -20
  %2327 = add i64 %2226, 37
  store i64 %2327, i64* %3, align 8
  %2328 = inttoptr i64 %2326 to i32*
  %2329 = load i32, i32* %2328, align 4
  %2330 = sext i32 %2329 to i64
  %2331 = shl nsw i64 %2330, 5
  store i64 %2331, i64* %RDX.i1718, align 8
  %2332 = load i64, i64* %RAX.i1724, align 8
  %2333 = add i64 %2331, %2332
  store i64 %2333, i64* %RDI.i1740, align 8
  %2334 = icmp ult i64 %2333, %2332
  %2335 = icmp ult i64 %2333, %2331
  %2336 = or i1 %2334, %2335
  %2337 = zext i1 %2336 to i8
  store i8 %2337, i8* %14, align 1
  %2338 = trunc i64 %2333 to i32
  %2339 = and i32 %2338, 255
  %2340 = tail call i32 @llvm.ctpop.i32(i32 %2339)
  %2341 = trunc i32 %2340 to i8
  %2342 = and i8 %2341, 1
  %2343 = xor i8 %2342, 1
  store i8 %2343, i8* %21, align 1
  %2344 = xor i64 %2332, %2333
  %2345 = lshr i64 %2344, 4
  %2346 = trunc i64 %2345 to i8
  %2347 = and i8 %2346, 1
  store i8 %2347, i8* %27, align 1
  %2348 = icmp eq i64 %2333, 0
  %2349 = zext i1 %2348 to i8
  store i8 %2349, i8* %30, align 1
  %2350 = lshr i64 %2333, 63
  %2351 = trunc i64 %2350 to i8
  store i8 %2351, i8* %33, align 1
  %2352 = lshr i64 %2332, 63
  %2353 = lshr i64 %2330, 58
  %2354 = and i64 %2353, 1
  %2355 = xor i64 %2350, %2352
  %2356 = xor i64 %2350, %2354
  %2357 = add nuw nsw i64 %2355, %2356
  %2358 = icmp eq i64 %2357, 2
  %2359 = zext i1 %2358 to i8
  store i8 %2359, i8* %39, align 1
  %2360 = inttoptr i64 %2333 to i32*
  %2361 = load i32, i32* %ESI.i1737, align 4
  %2362 = add i64 %2226, 49
  store i64 %2362, i64* %3, align 8
  store i32 %2361, i32* %2360, align 4
  %2363 = load i64, i64* %RBP.i, align 8
  %2364 = add i64 %2363, -20
  %2365 = load i64, i64* %3, align 8
  %2366 = add i64 %2365, 4
  store i64 %2366, i64* %3, align 8
  %2367 = inttoptr i64 %2364 to i32*
  %2368 = load i32, i32* %2367, align 4
  %2369 = sext i32 %2368 to i64
  %2370 = shl nsw i64 %2369, 5
  store i64 %2370, i64* %RDX.i1718, align 8
  %2371 = load i64, i64* %RCX.i1721, align 8
  %2372 = add i64 %2370, %2371
  store i64 %2372, i64* %RDI.i1740, align 8
  %2373 = icmp ult i64 %2372, %2371
  %2374 = icmp ult i64 %2372, %2370
  %2375 = or i1 %2373, %2374
  %2376 = zext i1 %2375 to i8
  store i8 %2376, i8* %14, align 1
  %2377 = trunc i64 %2372 to i32
  %2378 = and i32 %2377, 255
  %2379 = tail call i32 @llvm.ctpop.i32(i32 %2378)
  %2380 = trunc i32 %2379 to i8
  %2381 = and i8 %2380, 1
  %2382 = xor i8 %2381, 1
  store i8 %2382, i8* %21, align 1
  %2383 = xor i64 %2371, %2372
  %2384 = lshr i64 %2383, 4
  %2385 = trunc i64 %2384 to i8
  %2386 = and i8 %2385, 1
  store i8 %2386, i8* %27, align 1
  %2387 = icmp eq i64 %2372, 0
  %2388 = zext i1 %2387 to i8
  store i8 %2388, i8* %30, align 1
  %2389 = lshr i64 %2372, 63
  %2390 = trunc i64 %2389 to i8
  store i8 %2390, i8* %33, align 1
  %2391 = lshr i64 %2371, 63
  %2392 = lshr i64 %2369, 58
  %2393 = and i64 %2392, 1
  %2394 = xor i64 %2389, %2391
  %2395 = xor i64 %2389, %2393
  %2396 = add nuw nsw i64 %2394, %2395
  %2397 = icmp eq i64 %2396, 2
  %2398 = zext i1 %2397 to i8
  store i8 %2398, i8* %39, align 1
  %2399 = inttoptr i64 %2372 to i32*
  %2400 = add i64 %2365, 16
  store i64 %2400, i64* %3, align 8
  %2401 = load i32, i32* %2399, align 4
  %2402 = zext i32 %2401 to i64
  store i64 %2402, i64* %RSI.i1715, align 8
  %2403 = add i64 %2365, 20
  store i64 %2403, i64* %3, align 8
  %2404 = load i32, i32* %2367, align 4
  %2405 = sext i32 %2404 to i64
  %2406 = shl nsw i64 %2405, 5
  store i64 %2406, i64* %RDX.i1718, align 8
  %2407 = add i64 %2406, %2371
  store i64 %2407, i64* %RDI.i1740, align 8
  %2408 = icmp ult i64 %2407, %2371
  %2409 = icmp ult i64 %2407, %2406
  %2410 = or i1 %2408, %2409
  %2411 = zext i1 %2410 to i8
  store i8 %2411, i8* %14, align 1
  %2412 = trunc i64 %2407 to i32
  %2413 = and i32 %2412, 255
  %2414 = tail call i32 @llvm.ctpop.i32(i32 %2413)
  %2415 = trunc i32 %2414 to i8
  %2416 = and i8 %2415, 1
  %2417 = xor i8 %2416, 1
  store i8 %2417, i8* %21, align 1
  %2418 = xor i64 %2371, %2407
  %2419 = lshr i64 %2418, 4
  %2420 = trunc i64 %2419 to i8
  %2421 = and i8 %2420, 1
  store i8 %2421, i8* %27, align 1
  %2422 = icmp eq i64 %2407, 0
  %2423 = zext i1 %2422 to i8
  store i8 %2423, i8* %30, align 1
  %2424 = lshr i64 %2407, 63
  %2425 = trunc i64 %2424 to i8
  store i8 %2425, i8* %33, align 1
  %2426 = lshr i64 %2405, 58
  %2427 = and i64 %2426, 1
  %2428 = xor i64 %2424, %2391
  %2429 = xor i64 %2424, %2427
  %2430 = add nuw nsw i64 %2428, %2429
  %2431 = icmp eq i64 %2430, 2
  %2432 = zext i1 %2431 to i8
  store i8 %2432, i8* %39, align 1
  %2433 = add i64 %2407, 4
  %2434 = add i64 %2365, 33
  store i64 %2434, i64* %3, align 8
  %2435 = inttoptr i64 %2433 to i32*
  %2436 = load i32, i32* %2435, align 4
  %2437 = sub i32 %2401, %2436
  %2438 = zext i32 %2437 to i64
  store i64 %2438, i64* %RSI.i1715, align 8
  %2439 = icmp ult i32 %2401, %2436
  %2440 = zext i1 %2439 to i8
  store i8 %2440, i8* %14, align 1
  %2441 = and i32 %2437, 255
  %2442 = tail call i32 @llvm.ctpop.i32(i32 %2441)
  %2443 = trunc i32 %2442 to i8
  %2444 = and i8 %2443, 1
  %2445 = xor i8 %2444, 1
  store i8 %2445, i8* %21, align 1
  %2446 = xor i32 %2436, %2401
  %2447 = xor i32 %2446, %2437
  %2448 = lshr i32 %2447, 4
  %2449 = trunc i32 %2448 to i8
  %2450 = and i8 %2449, 1
  store i8 %2450, i8* %27, align 1
  %2451 = icmp eq i32 %2437, 0
  %2452 = zext i1 %2451 to i8
  store i8 %2452, i8* %30, align 1
  %2453 = lshr i32 %2437, 31
  %2454 = trunc i32 %2453 to i8
  store i8 %2454, i8* %33, align 1
  %2455 = lshr i32 %2401, 31
  %2456 = lshr i32 %2436, 31
  %2457 = xor i32 %2456, %2455
  %2458 = xor i32 %2453, %2455
  %2459 = add nuw nsw i32 %2458, %2457
  %2460 = icmp eq i32 %2459, 2
  %2461 = zext i1 %2460 to i8
  store i8 %2461, i8* %39, align 1
  %2462 = load i64, i64* %RBP.i, align 8
  %2463 = add i64 %2462, -20
  %2464 = add i64 %2365, 37
  store i64 %2464, i64* %3, align 8
  %2465 = inttoptr i64 %2463 to i32*
  %2466 = load i32, i32* %2465, align 4
  %2467 = sext i32 %2466 to i64
  %2468 = shl nsw i64 %2467, 5
  store i64 %2468, i64* %RDX.i1718, align 8
  %2469 = load i64, i64* %RAX.i1724, align 8
  %2470 = add i64 %2468, %2469
  store i64 %2470, i64* %RDI.i1740, align 8
  %2471 = icmp ult i64 %2470, %2469
  %2472 = icmp ult i64 %2470, %2468
  %2473 = or i1 %2471, %2472
  %2474 = zext i1 %2473 to i8
  store i8 %2474, i8* %14, align 1
  %2475 = trunc i64 %2470 to i32
  %2476 = and i32 %2475, 255
  %2477 = tail call i32 @llvm.ctpop.i32(i32 %2476)
  %2478 = trunc i32 %2477 to i8
  %2479 = and i8 %2478, 1
  %2480 = xor i8 %2479, 1
  store i8 %2480, i8* %21, align 1
  %2481 = xor i64 %2469, %2470
  %2482 = lshr i64 %2481, 4
  %2483 = trunc i64 %2482 to i8
  %2484 = and i8 %2483, 1
  store i8 %2484, i8* %27, align 1
  %2485 = icmp eq i64 %2470, 0
  %2486 = zext i1 %2485 to i8
  store i8 %2486, i8* %30, align 1
  %2487 = lshr i64 %2470, 63
  %2488 = trunc i64 %2487 to i8
  store i8 %2488, i8* %33, align 1
  %2489 = lshr i64 %2469, 63
  %2490 = lshr i64 %2467, 58
  %2491 = and i64 %2490, 1
  %2492 = xor i64 %2487, %2489
  %2493 = xor i64 %2487, %2491
  %2494 = add nuw nsw i64 %2492, %2493
  %2495 = icmp eq i64 %2494, 2
  %2496 = zext i1 %2495 to i8
  store i8 %2496, i8* %39, align 1
  %2497 = add i64 %2470, 4
  %2498 = load i32, i32* %ESI.i1737, align 4
  %2499 = add i64 %2365, 50
  store i64 %2499, i64* %3, align 8
  %2500 = inttoptr i64 %2497 to i32*
  store i32 %2498, i32* %2500, align 4
  %2501 = load i64, i64* %RBP.i, align 8
  %2502 = add i64 %2501, -20
  %2503 = load i64, i64* %3, align 8
  %2504 = add i64 %2503, 4
  store i64 %2504, i64* %3, align 8
  %2505 = inttoptr i64 %2502 to i32*
  %2506 = load i32, i32* %2505, align 4
  %2507 = sext i32 %2506 to i64
  %2508 = shl nsw i64 %2507, 5
  store i64 %2508, i64* %RDX.i1718, align 8
  %2509 = load i64, i64* %RCX.i1721, align 8
  %2510 = add i64 %2508, %2509
  store i64 %2510, i64* %RDI.i1740, align 8
  %2511 = icmp ult i64 %2510, %2509
  %2512 = icmp ult i64 %2510, %2508
  %2513 = or i1 %2511, %2512
  %2514 = zext i1 %2513 to i8
  store i8 %2514, i8* %14, align 1
  %2515 = trunc i64 %2510 to i32
  %2516 = and i32 %2515, 255
  %2517 = tail call i32 @llvm.ctpop.i32(i32 %2516)
  %2518 = trunc i32 %2517 to i8
  %2519 = and i8 %2518, 1
  %2520 = xor i8 %2519, 1
  store i8 %2520, i8* %21, align 1
  %2521 = xor i64 %2509, %2510
  %2522 = lshr i64 %2521, 4
  %2523 = trunc i64 %2522 to i8
  %2524 = and i8 %2523, 1
  store i8 %2524, i8* %27, align 1
  %2525 = icmp eq i64 %2510, 0
  %2526 = zext i1 %2525 to i8
  store i8 %2526, i8* %30, align 1
  %2527 = lshr i64 %2510, 63
  %2528 = trunc i64 %2527 to i8
  store i8 %2528, i8* %33, align 1
  %2529 = lshr i64 %2509, 63
  %2530 = lshr i64 %2507, 58
  %2531 = and i64 %2530, 1
  %2532 = xor i64 %2527, %2529
  %2533 = xor i64 %2527, %2531
  %2534 = add nuw nsw i64 %2532, %2533
  %2535 = icmp eq i64 %2534, 2
  %2536 = zext i1 %2535 to i8
  store i8 %2536, i8* %39, align 1
  %2537 = add i64 %2510, 8
  %2538 = add i64 %2503, 17
  store i64 %2538, i64* %3, align 8
  %2539 = inttoptr i64 %2537 to i32*
  %2540 = load i32, i32* %2539, align 4
  %2541 = zext i32 %2540 to i64
  store i64 %2541, i64* %RSI.i1715, align 8
  %2542 = add i64 %2503, 21
  store i64 %2542, i64* %3, align 8
  %2543 = load i32, i32* %2505, align 4
  %2544 = sext i32 %2543 to i64
  %2545 = shl nsw i64 %2544, 5
  store i64 %2545, i64* %RDX.i1718, align 8
  %2546 = add i64 %2545, %2509
  store i64 %2546, i64* %RDI.i1740, align 8
  %2547 = icmp ult i64 %2546, %2509
  %2548 = icmp ult i64 %2546, %2545
  %2549 = or i1 %2547, %2548
  %2550 = zext i1 %2549 to i8
  store i8 %2550, i8* %14, align 1
  %2551 = trunc i64 %2546 to i32
  %2552 = and i32 %2551, 255
  %2553 = tail call i32 @llvm.ctpop.i32(i32 %2552)
  %2554 = trunc i32 %2553 to i8
  %2555 = and i8 %2554, 1
  %2556 = xor i8 %2555, 1
  store i8 %2556, i8* %21, align 1
  %2557 = xor i64 %2509, %2546
  %2558 = lshr i64 %2557, 4
  %2559 = trunc i64 %2558 to i8
  %2560 = and i8 %2559, 1
  store i8 %2560, i8* %27, align 1
  %2561 = icmp eq i64 %2546, 0
  %2562 = zext i1 %2561 to i8
  store i8 %2562, i8* %30, align 1
  %2563 = lshr i64 %2546, 63
  %2564 = trunc i64 %2563 to i8
  store i8 %2564, i8* %33, align 1
  %2565 = lshr i64 %2544, 58
  %2566 = and i64 %2565, 1
  %2567 = xor i64 %2563, %2529
  %2568 = xor i64 %2563, %2566
  %2569 = add nuw nsw i64 %2567, %2568
  %2570 = icmp eq i64 %2569, 2
  %2571 = zext i1 %2570 to i8
  store i8 %2571, i8* %39, align 1
  %2572 = add i64 %2546, 12
  %2573 = add i64 %2503, 34
  store i64 %2573, i64* %3, align 8
  %2574 = inttoptr i64 %2572 to i32*
  %2575 = load i32, i32* %2574, align 4
  %2576 = add i32 %2575, %2540
  %2577 = zext i32 %2576 to i64
  store i64 %2577, i64* %RSI.i1715, align 8
  %2578 = icmp ult i32 %2576, %2540
  %2579 = icmp ult i32 %2576, %2575
  %2580 = or i1 %2578, %2579
  %2581 = zext i1 %2580 to i8
  store i8 %2581, i8* %14, align 1
  %2582 = and i32 %2576, 255
  %2583 = tail call i32 @llvm.ctpop.i32(i32 %2582)
  %2584 = trunc i32 %2583 to i8
  %2585 = and i8 %2584, 1
  %2586 = xor i8 %2585, 1
  store i8 %2586, i8* %21, align 1
  %2587 = xor i32 %2575, %2540
  %2588 = xor i32 %2587, %2576
  %2589 = lshr i32 %2588, 4
  %2590 = trunc i32 %2589 to i8
  %2591 = and i8 %2590, 1
  store i8 %2591, i8* %27, align 1
  %2592 = icmp eq i32 %2576, 0
  %2593 = zext i1 %2592 to i8
  store i8 %2593, i8* %30, align 1
  %2594 = lshr i32 %2576, 31
  %2595 = trunc i32 %2594 to i8
  store i8 %2595, i8* %33, align 1
  %2596 = lshr i32 %2540, 31
  %2597 = lshr i32 %2575, 31
  %2598 = xor i32 %2594, %2596
  %2599 = xor i32 %2594, %2597
  %2600 = add nuw nsw i32 %2598, %2599
  %2601 = icmp eq i32 %2600, 2
  %2602 = zext i1 %2601 to i8
  store i8 %2602, i8* %39, align 1
  %2603 = load i64, i64* %RBP.i, align 8
  %2604 = add i64 %2603, -20
  %2605 = add i64 %2503, 38
  store i64 %2605, i64* %3, align 8
  %2606 = inttoptr i64 %2604 to i32*
  %2607 = load i32, i32* %2606, align 4
  %2608 = sext i32 %2607 to i64
  %2609 = shl nsw i64 %2608, 5
  store i64 %2609, i64* %RDX.i1718, align 8
  %2610 = load i64, i64* %RAX.i1724, align 8
  %2611 = add i64 %2609, %2610
  store i64 %2611, i64* %RDI.i1740, align 8
  %2612 = icmp ult i64 %2611, %2610
  %2613 = icmp ult i64 %2611, %2609
  %2614 = or i1 %2612, %2613
  %2615 = zext i1 %2614 to i8
  store i8 %2615, i8* %14, align 1
  %2616 = trunc i64 %2611 to i32
  %2617 = and i32 %2616, 255
  %2618 = tail call i32 @llvm.ctpop.i32(i32 %2617)
  %2619 = trunc i32 %2618 to i8
  %2620 = and i8 %2619, 1
  %2621 = xor i8 %2620, 1
  store i8 %2621, i8* %21, align 1
  %2622 = xor i64 %2610, %2611
  %2623 = lshr i64 %2622, 4
  %2624 = trunc i64 %2623 to i8
  %2625 = and i8 %2624, 1
  store i8 %2625, i8* %27, align 1
  %2626 = icmp eq i64 %2611, 0
  %2627 = zext i1 %2626 to i8
  store i8 %2627, i8* %30, align 1
  %2628 = lshr i64 %2611, 63
  %2629 = trunc i64 %2628 to i8
  store i8 %2629, i8* %33, align 1
  %2630 = lshr i64 %2610, 63
  %2631 = lshr i64 %2608, 58
  %2632 = and i64 %2631, 1
  %2633 = xor i64 %2628, %2630
  %2634 = xor i64 %2628, %2632
  %2635 = add nuw nsw i64 %2633, %2634
  %2636 = icmp eq i64 %2635, 2
  %2637 = zext i1 %2636 to i8
  store i8 %2637, i8* %39, align 1
  %2638 = add i64 %2611, 8
  %2639 = load i32, i32* %ESI.i1737, align 4
  %2640 = add i64 %2503, 51
  store i64 %2640, i64* %3, align 8
  %2641 = inttoptr i64 %2638 to i32*
  store i32 %2639, i32* %2641, align 4
  %2642 = load i64, i64* %RBP.i, align 8
  %2643 = add i64 %2642, -20
  %2644 = load i64, i64* %3, align 8
  %2645 = add i64 %2644, 4
  store i64 %2645, i64* %3, align 8
  %2646 = inttoptr i64 %2643 to i32*
  %2647 = load i32, i32* %2646, align 4
  %2648 = sext i32 %2647 to i64
  %2649 = shl nsw i64 %2648, 5
  store i64 %2649, i64* %RDX.i1718, align 8
  %2650 = load i64, i64* %RCX.i1721, align 8
  %2651 = add i64 %2649, %2650
  store i64 %2651, i64* %RDI.i1740, align 8
  %2652 = icmp ult i64 %2651, %2650
  %2653 = icmp ult i64 %2651, %2649
  %2654 = or i1 %2652, %2653
  %2655 = zext i1 %2654 to i8
  store i8 %2655, i8* %14, align 1
  %2656 = trunc i64 %2651 to i32
  %2657 = and i32 %2656, 255
  %2658 = tail call i32 @llvm.ctpop.i32(i32 %2657)
  %2659 = trunc i32 %2658 to i8
  %2660 = and i8 %2659, 1
  %2661 = xor i8 %2660, 1
  store i8 %2661, i8* %21, align 1
  %2662 = xor i64 %2650, %2651
  %2663 = lshr i64 %2662, 4
  %2664 = trunc i64 %2663 to i8
  %2665 = and i8 %2664, 1
  store i8 %2665, i8* %27, align 1
  %2666 = icmp eq i64 %2651, 0
  %2667 = zext i1 %2666 to i8
  store i8 %2667, i8* %30, align 1
  %2668 = lshr i64 %2651, 63
  %2669 = trunc i64 %2668 to i8
  store i8 %2669, i8* %33, align 1
  %2670 = lshr i64 %2650, 63
  %2671 = lshr i64 %2648, 58
  %2672 = and i64 %2671, 1
  %2673 = xor i64 %2668, %2670
  %2674 = xor i64 %2668, %2672
  %2675 = add nuw nsw i64 %2673, %2674
  %2676 = icmp eq i64 %2675, 2
  %2677 = zext i1 %2676 to i8
  store i8 %2677, i8* %39, align 1
  %2678 = add i64 %2651, 8
  %2679 = add i64 %2644, 17
  store i64 %2679, i64* %3, align 8
  %2680 = inttoptr i64 %2678 to i32*
  %2681 = load i32, i32* %2680, align 4
  %2682 = zext i32 %2681 to i64
  store i64 %2682, i64* %RSI.i1715, align 8
  %2683 = add i64 %2644, 21
  store i64 %2683, i64* %3, align 8
  %2684 = load i32, i32* %2646, align 4
  %2685 = sext i32 %2684 to i64
  %2686 = shl nsw i64 %2685, 5
  store i64 %2686, i64* %RDX.i1718, align 8
  %2687 = add i64 %2686, %2650
  store i64 %2687, i64* %RDI.i1740, align 8
  %2688 = icmp ult i64 %2687, %2650
  %2689 = icmp ult i64 %2687, %2686
  %2690 = or i1 %2688, %2689
  %2691 = zext i1 %2690 to i8
  store i8 %2691, i8* %14, align 1
  %2692 = trunc i64 %2687 to i32
  %2693 = and i32 %2692, 255
  %2694 = tail call i32 @llvm.ctpop.i32(i32 %2693)
  %2695 = trunc i32 %2694 to i8
  %2696 = and i8 %2695, 1
  %2697 = xor i8 %2696, 1
  store i8 %2697, i8* %21, align 1
  %2698 = xor i64 %2650, %2687
  %2699 = lshr i64 %2698, 4
  %2700 = trunc i64 %2699 to i8
  %2701 = and i8 %2700, 1
  store i8 %2701, i8* %27, align 1
  %2702 = icmp eq i64 %2687, 0
  %2703 = zext i1 %2702 to i8
  store i8 %2703, i8* %30, align 1
  %2704 = lshr i64 %2687, 63
  %2705 = trunc i64 %2704 to i8
  store i8 %2705, i8* %33, align 1
  %2706 = lshr i64 %2685, 58
  %2707 = and i64 %2706, 1
  %2708 = xor i64 %2704, %2670
  %2709 = xor i64 %2704, %2707
  %2710 = add nuw nsw i64 %2708, %2709
  %2711 = icmp eq i64 %2710, 2
  %2712 = zext i1 %2711 to i8
  store i8 %2712, i8* %39, align 1
  %2713 = add i64 %2687, 12
  %2714 = add i64 %2644, 34
  store i64 %2714, i64* %3, align 8
  %2715 = inttoptr i64 %2713 to i32*
  %2716 = load i32, i32* %2715, align 4
  %2717 = sub i32 %2681, %2716
  %2718 = zext i32 %2717 to i64
  store i64 %2718, i64* %RSI.i1715, align 8
  %2719 = icmp ult i32 %2681, %2716
  %2720 = zext i1 %2719 to i8
  store i8 %2720, i8* %14, align 1
  %2721 = and i32 %2717, 255
  %2722 = tail call i32 @llvm.ctpop.i32(i32 %2721)
  %2723 = trunc i32 %2722 to i8
  %2724 = and i8 %2723, 1
  %2725 = xor i8 %2724, 1
  store i8 %2725, i8* %21, align 1
  %2726 = xor i32 %2716, %2681
  %2727 = xor i32 %2726, %2717
  %2728 = lshr i32 %2727, 4
  %2729 = trunc i32 %2728 to i8
  %2730 = and i8 %2729, 1
  store i8 %2730, i8* %27, align 1
  %2731 = icmp eq i32 %2717, 0
  %2732 = zext i1 %2731 to i8
  store i8 %2732, i8* %30, align 1
  %2733 = lshr i32 %2717, 31
  %2734 = trunc i32 %2733 to i8
  store i8 %2734, i8* %33, align 1
  %2735 = lshr i32 %2681, 31
  %2736 = lshr i32 %2716, 31
  %2737 = xor i32 %2736, %2735
  %2738 = xor i32 %2733, %2735
  %2739 = add nuw nsw i32 %2738, %2737
  %2740 = icmp eq i32 %2739, 2
  %2741 = zext i1 %2740 to i8
  store i8 %2741, i8* %39, align 1
  %2742 = load i64, i64* %RBP.i, align 8
  %2743 = add i64 %2742, -20
  %2744 = add i64 %2644, 38
  store i64 %2744, i64* %3, align 8
  %2745 = inttoptr i64 %2743 to i32*
  %2746 = load i32, i32* %2745, align 4
  %2747 = sext i32 %2746 to i64
  %2748 = shl nsw i64 %2747, 5
  store i64 %2748, i64* %RDX.i1718, align 8
  %2749 = load i64, i64* %RAX.i1724, align 8
  %2750 = add i64 %2748, %2749
  store i64 %2750, i64* %RDI.i1740, align 8
  %2751 = icmp ult i64 %2750, %2749
  %2752 = icmp ult i64 %2750, %2748
  %2753 = or i1 %2751, %2752
  %2754 = zext i1 %2753 to i8
  store i8 %2754, i8* %14, align 1
  %2755 = trunc i64 %2750 to i32
  %2756 = and i32 %2755, 255
  %2757 = tail call i32 @llvm.ctpop.i32(i32 %2756)
  %2758 = trunc i32 %2757 to i8
  %2759 = and i8 %2758, 1
  %2760 = xor i8 %2759, 1
  store i8 %2760, i8* %21, align 1
  %2761 = xor i64 %2749, %2750
  %2762 = lshr i64 %2761, 4
  %2763 = trunc i64 %2762 to i8
  %2764 = and i8 %2763, 1
  store i8 %2764, i8* %27, align 1
  %2765 = icmp eq i64 %2750, 0
  %2766 = zext i1 %2765 to i8
  store i8 %2766, i8* %30, align 1
  %2767 = lshr i64 %2750, 63
  %2768 = trunc i64 %2767 to i8
  store i8 %2768, i8* %33, align 1
  %2769 = lshr i64 %2749, 63
  %2770 = lshr i64 %2747, 58
  %2771 = and i64 %2770, 1
  %2772 = xor i64 %2767, %2769
  %2773 = xor i64 %2767, %2771
  %2774 = add nuw nsw i64 %2772, %2773
  %2775 = icmp eq i64 %2774, 2
  %2776 = zext i1 %2775 to i8
  store i8 %2776, i8* %39, align 1
  %2777 = add i64 %2750, 12
  %2778 = load i32, i32* %ESI.i1737, align 4
  %2779 = add i64 %2644, 51
  store i64 %2779, i64* %3, align 8
  %2780 = inttoptr i64 %2777 to i32*
  store i32 %2778, i32* %2780, align 4
  %2781 = load i64, i64* %RBP.i, align 8
  %2782 = add i64 %2781, -20
  %2783 = load i64, i64* %3, align 8
  %2784 = add i64 %2783, 4
  store i64 %2784, i64* %3, align 8
  %2785 = inttoptr i64 %2782 to i32*
  %2786 = load i32, i32* %2785, align 4
  %2787 = sext i32 %2786 to i64
  %2788 = shl nsw i64 %2787, 5
  store i64 %2788, i64* %RDX.i1718, align 8
  %2789 = load i64, i64* %RCX.i1721, align 8
  %2790 = add i64 %2788, %2789
  store i64 %2790, i64* %RDI.i1740, align 8
  %2791 = icmp ult i64 %2790, %2789
  %2792 = icmp ult i64 %2790, %2788
  %2793 = or i1 %2791, %2792
  %2794 = zext i1 %2793 to i8
  store i8 %2794, i8* %14, align 1
  %2795 = trunc i64 %2790 to i32
  %2796 = and i32 %2795, 255
  %2797 = tail call i32 @llvm.ctpop.i32(i32 %2796)
  %2798 = trunc i32 %2797 to i8
  %2799 = and i8 %2798, 1
  %2800 = xor i8 %2799, 1
  store i8 %2800, i8* %21, align 1
  %2801 = xor i64 %2789, %2790
  %2802 = lshr i64 %2801, 4
  %2803 = trunc i64 %2802 to i8
  %2804 = and i8 %2803, 1
  store i8 %2804, i8* %27, align 1
  %2805 = icmp eq i64 %2790, 0
  %2806 = zext i1 %2805 to i8
  store i8 %2806, i8* %30, align 1
  %2807 = lshr i64 %2790, 63
  %2808 = trunc i64 %2807 to i8
  store i8 %2808, i8* %33, align 1
  %2809 = lshr i64 %2789, 63
  %2810 = lshr i64 %2787, 58
  %2811 = and i64 %2810, 1
  %2812 = xor i64 %2807, %2809
  %2813 = xor i64 %2807, %2811
  %2814 = add nuw nsw i64 %2812, %2813
  %2815 = icmp eq i64 %2814, 2
  %2816 = zext i1 %2815 to i8
  store i8 %2816, i8* %39, align 1
  %2817 = add i64 %2790, 16
  %2818 = add i64 %2783, 17
  store i64 %2818, i64* %3, align 8
  %2819 = inttoptr i64 %2817 to i32*
  %2820 = load i32, i32* %2819, align 4
  %2821 = zext i32 %2820 to i64
  store i64 %2821, i64* %RSI.i1715, align 8
  %2822 = add i64 %2783, 21
  store i64 %2822, i64* %3, align 8
  %2823 = load i32, i32* %2785, align 4
  %2824 = sext i32 %2823 to i64
  %2825 = shl nsw i64 %2824, 5
  store i64 %2825, i64* %RDX.i1718, align 8
  %2826 = add i64 %2825, %2789
  store i64 %2826, i64* %RDI.i1740, align 8
  %2827 = icmp ult i64 %2826, %2789
  %2828 = icmp ult i64 %2826, %2825
  %2829 = or i1 %2827, %2828
  %2830 = zext i1 %2829 to i8
  store i8 %2830, i8* %14, align 1
  %2831 = trunc i64 %2826 to i32
  %2832 = and i32 %2831, 255
  %2833 = tail call i32 @llvm.ctpop.i32(i32 %2832)
  %2834 = trunc i32 %2833 to i8
  %2835 = and i8 %2834, 1
  %2836 = xor i8 %2835, 1
  store i8 %2836, i8* %21, align 1
  %2837 = xor i64 %2789, %2826
  %2838 = lshr i64 %2837, 4
  %2839 = trunc i64 %2838 to i8
  %2840 = and i8 %2839, 1
  store i8 %2840, i8* %27, align 1
  %2841 = icmp eq i64 %2826, 0
  %2842 = zext i1 %2841 to i8
  store i8 %2842, i8* %30, align 1
  %2843 = lshr i64 %2826, 63
  %2844 = trunc i64 %2843 to i8
  store i8 %2844, i8* %33, align 1
  %2845 = lshr i64 %2824, 58
  %2846 = and i64 %2845, 1
  %2847 = xor i64 %2843, %2809
  %2848 = xor i64 %2843, %2846
  %2849 = add nuw nsw i64 %2847, %2848
  %2850 = icmp eq i64 %2849, 2
  %2851 = zext i1 %2850 to i8
  store i8 %2851, i8* %39, align 1
  %2852 = add i64 %2826, 20
  %2853 = add i64 %2783, 34
  store i64 %2853, i64* %3, align 8
  %2854 = inttoptr i64 %2852 to i32*
  %2855 = load i32, i32* %2854, align 4
  %2856 = add i32 %2855, %2820
  %2857 = zext i32 %2856 to i64
  store i64 %2857, i64* %RSI.i1715, align 8
  %2858 = icmp ult i32 %2856, %2820
  %2859 = icmp ult i32 %2856, %2855
  %2860 = or i1 %2858, %2859
  %2861 = zext i1 %2860 to i8
  store i8 %2861, i8* %14, align 1
  %2862 = and i32 %2856, 255
  %2863 = tail call i32 @llvm.ctpop.i32(i32 %2862)
  %2864 = trunc i32 %2863 to i8
  %2865 = and i8 %2864, 1
  %2866 = xor i8 %2865, 1
  store i8 %2866, i8* %21, align 1
  %2867 = xor i32 %2855, %2820
  %2868 = xor i32 %2867, %2856
  %2869 = lshr i32 %2868, 4
  %2870 = trunc i32 %2869 to i8
  %2871 = and i8 %2870, 1
  store i8 %2871, i8* %27, align 1
  %2872 = icmp eq i32 %2856, 0
  %2873 = zext i1 %2872 to i8
  store i8 %2873, i8* %30, align 1
  %2874 = lshr i32 %2856, 31
  %2875 = trunc i32 %2874 to i8
  store i8 %2875, i8* %33, align 1
  %2876 = lshr i32 %2820, 31
  %2877 = lshr i32 %2855, 31
  %2878 = xor i32 %2874, %2876
  %2879 = xor i32 %2874, %2877
  %2880 = add nuw nsw i32 %2878, %2879
  %2881 = icmp eq i32 %2880, 2
  %2882 = zext i1 %2881 to i8
  store i8 %2882, i8* %39, align 1
  %2883 = load i64, i64* %RBP.i, align 8
  %2884 = add i64 %2883, -20
  %2885 = add i64 %2783, 38
  store i64 %2885, i64* %3, align 8
  %2886 = inttoptr i64 %2884 to i32*
  %2887 = load i32, i32* %2886, align 4
  %2888 = sext i32 %2887 to i64
  %2889 = shl nsw i64 %2888, 5
  store i64 %2889, i64* %RDX.i1718, align 8
  %2890 = load i64, i64* %RAX.i1724, align 8
  %2891 = add i64 %2889, %2890
  store i64 %2891, i64* %RDI.i1740, align 8
  %2892 = icmp ult i64 %2891, %2890
  %2893 = icmp ult i64 %2891, %2889
  %2894 = or i1 %2892, %2893
  %2895 = zext i1 %2894 to i8
  store i8 %2895, i8* %14, align 1
  %2896 = trunc i64 %2891 to i32
  %2897 = and i32 %2896, 255
  %2898 = tail call i32 @llvm.ctpop.i32(i32 %2897)
  %2899 = trunc i32 %2898 to i8
  %2900 = and i8 %2899, 1
  %2901 = xor i8 %2900, 1
  store i8 %2901, i8* %21, align 1
  %2902 = xor i64 %2890, %2891
  %2903 = lshr i64 %2902, 4
  %2904 = trunc i64 %2903 to i8
  %2905 = and i8 %2904, 1
  store i8 %2905, i8* %27, align 1
  %2906 = icmp eq i64 %2891, 0
  %2907 = zext i1 %2906 to i8
  store i8 %2907, i8* %30, align 1
  %2908 = lshr i64 %2891, 63
  %2909 = trunc i64 %2908 to i8
  store i8 %2909, i8* %33, align 1
  %2910 = lshr i64 %2890, 63
  %2911 = lshr i64 %2888, 58
  %2912 = and i64 %2911, 1
  %2913 = xor i64 %2908, %2910
  %2914 = xor i64 %2908, %2912
  %2915 = add nuw nsw i64 %2913, %2914
  %2916 = icmp eq i64 %2915, 2
  %2917 = zext i1 %2916 to i8
  store i8 %2917, i8* %39, align 1
  %2918 = add i64 %2891, 16
  %2919 = load i32, i32* %ESI.i1737, align 4
  %2920 = add i64 %2783, 51
  store i64 %2920, i64* %3, align 8
  %2921 = inttoptr i64 %2918 to i32*
  store i32 %2919, i32* %2921, align 4
  %2922 = load i64, i64* %RBP.i, align 8
  %2923 = add i64 %2922, -20
  %2924 = load i64, i64* %3, align 8
  %2925 = add i64 %2924, 4
  store i64 %2925, i64* %3, align 8
  %2926 = inttoptr i64 %2923 to i32*
  %2927 = load i32, i32* %2926, align 4
  %2928 = sext i32 %2927 to i64
  %2929 = shl nsw i64 %2928, 5
  store i64 %2929, i64* %RDX.i1718, align 8
  %2930 = load i64, i64* %RCX.i1721, align 8
  %2931 = add i64 %2929, %2930
  store i64 %2931, i64* %RDI.i1740, align 8
  %2932 = icmp ult i64 %2931, %2930
  %2933 = icmp ult i64 %2931, %2929
  %2934 = or i1 %2932, %2933
  %2935 = zext i1 %2934 to i8
  store i8 %2935, i8* %14, align 1
  %2936 = trunc i64 %2931 to i32
  %2937 = and i32 %2936, 255
  %2938 = tail call i32 @llvm.ctpop.i32(i32 %2937)
  %2939 = trunc i32 %2938 to i8
  %2940 = and i8 %2939, 1
  %2941 = xor i8 %2940, 1
  store i8 %2941, i8* %21, align 1
  %2942 = xor i64 %2930, %2931
  %2943 = lshr i64 %2942, 4
  %2944 = trunc i64 %2943 to i8
  %2945 = and i8 %2944, 1
  store i8 %2945, i8* %27, align 1
  %2946 = icmp eq i64 %2931, 0
  %2947 = zext i1 %2946 to i8
  store i8 %2947, i8* %30, align 1
  %2948 = lshr i64 %2931, 63
  %2949 = trunc i64 %2948 to i8
  store i8 %2949, i8* %33, align 1
  %2950 = lshr i64 %2930, 63
  %2951 = lshr i64 %2928, 58
  %2952 = and i64 %2951, 1
  %2953 = xor i64 %2948, %2950
  %2954 = xor i64 %2948, %2952
  %2955 = add nuw nsw i64 %2953, %2954
  %2956 = icmp eq i64 %2955, 2
  %2957 = zext i1 %2956 to i8
  store i8 %2957, i8* %39, align 1
  %2958 = add i64 %2931, 16
  %2959 = add i64 %2924, 17
  store i64 %2959, i64* %3, align 8
  %2960 = inttoptr i64 %2958 to i32*
  %2961 = load i32, i32* %2960, align 4
  %2962 = zext i32 %2961 to i64
  store i64 %2962, i64* %RSI.i1715, align 8
  %2963 = add i64 %2924, 21
  store i64 %2963, i64* %3, align 8
  %2964 = load i32, i32* %2926, align 4
  %2965 = sext i32 %2964 to i64
  %2966 = shl nsw i64 %2965, 5
  store i64 %2966, i64* %RDX.i1718, align 8
  %2967 = add i64 %2966, %2930
  store i64 %2967, i64* %RDI.i1740, align 8
  %2968 = icmp ult i64 %2967, %2930
  %2969 = icmp ult i64 %2967, %2966
  %2970 = or i1 %2968, %2969
  %2971 = zext i1 %2970 to i8
  store i8 %2971, i8* %14, align 1
  %2972 = trunc i64 %2967 to i32
  %2973 = and i32 %2972, 255
  %2974 = tail call i32 @llvm.ctpop.i32(i32 %2973)
  %2975 = trunc i32 %2974 to i8
  %2976 = and i8 %2975, 1
  %2977 = xor i8 %2976, 1
  store i8 %2977, i8* %21, align 1
  %2978 = xor i64 %2930, %2967
  %2979 = lshr i64 %2978, 4
  %2980 = trunc i64 %2979 to i8
  %2981 = and i8 %2980, 1
  store i8 %2981, i8* %27, align 1
  %2982 = icmp eq i64 %2967, 0
  %2983 = zext i1 %2982 to i8
  store i8 %2983, i8* %30, align 1
  %2984 = lshr i64 %2967, 63
  %2985 = trunc i64 %2984 to i8
  store i8 %2985, i8* %33, align 1
  %2986 = lshr i64 %2965, 58
  %2987 = and i64 %2986, 1
  %2988 = xor i64 %2984, %2950
  %2989 = xor i64 %2984, %2987
  %2990 = add nuw nsw i64 %2988, %2989
  %2991 = icmp eq i64 %2990, 2
  %2992 = zext i1 %2991 to i8
  store i8 %2992, i8* %39, align 1
  %2993 = add i64 %2967, 20
  %2994 = add i64 %2924, 34
  store i64 %2994, i64* %3, align 8
  %2995 = inttoptr i64 %2993 to i32*
  %2996 = load i32, i32* %2995, align 4
  %2997 = sub i32 %2961, %2996
  %2998 = zext i32 %2997 to i64
  store i64 %2998, i64* %RSI.i1715, align 8
  %2999 = icmp ult i32 %2961, %2996
  %3000 = zext i1 %2999 to i8
  store i8 %3000, i8* %14, align 1
  %3001 = and i32 %2997, 255
  %3002 = tail call i32 @llvm.ctpop.i32(i32 %3001)
  %3003 = trunc i32 %3002 to i8
  %3004 = and i8 %3003, 1
  %3005 = xor i8 %3004, 1
  store i8 %3005, i8* %21, align 1
  %3006 = xor i32 %2996, %2961
  %3007 = xor i32 %3006, %2997
  %3008 = lshr i32 %3007, 4
  %3009 = trunc i32 %3008 to i8
  %3010 = and i8 %3009, 1
  store i8 %3010, i8* %27, align 1
  %3011 = icmp eq i32 %2997, 0
  %3012 = zext i1 %3011 to i8
  store i8 %3012, i8* %30, align 1
  %3013 = lshr i32 %2997, 31
  %3014 = trunc i32 %3013 to i8
  store i8 %3014, i8* %33, align 1
  %3015 = lshr i32 %2961, 31
  %3016 = lshr i32 %2996, 31
  %3017 = xor i32 %3016, %3015
  %3018 = xor i32 %3013, %3015
  %3019 = add nuw nsw i32 %3018, %3017
  %3020 = icmp eq i32 %3019, 2
  %3021 = zext i1 %3020 to i8
  store i8 %3021, i8* %39, align 1
  %3022 = load i64, i64* %RBP.i, align 8
  %3023 = add i64 %3022, -20
  %3024 = add i64 %2924, 38
  store i64 %3024, i64* %3, align 8
  %3025 = inttoptr i64 %3023 to i32*
  %3026 = load i32, i32* %3025, align 4
  %3027 = sext i32 %3026 to i64
  %3028 = shl nsw i64 %3027, 5
  store i64 %3028, i64* %RDX.i1718, align 8
  %3029 = load i64, i64* %RAX.i1724, align 8
  %3030 = add i64 %3028, %3029
  store i64 %3030, i64* %RDI.i1740, align 8
  %3031 = icmp ult i64 %3030, %3029
  %3032 = icmp ult i64 %3030, %3028
  %3033 = or i1 %3031, %3032
  %3034 = zext i1 %3033 to i8
  store i8 %3034, i8* %14, align 1
  %3035 = trunc i64 %3030 to i32
  %3036 = and i32 %3035, 255
  %3037 = tail call i32 @llvm.ctpop.i32(i32 %3036)
  %3038 = trunc i32 %3037 to i8
  %3039 = and i8 %3038, 1
  %3040 = xor i8 %3039, 1
  store i8 %3040, i8* %21, align 1
  %3041 = xor i64 %3029, %3030
  %3042 = lshr i64 %3041, 4
  %3043 = trunc i64 %3042 to i8
  %3044 = and i8 %3043, 1
  store i8 %3044, i8* %27, align 1
  %3045 = icmp eq i64 %3030, 0
  %3046 = zext i1 %3045 to i8
  store i8 %3046, i8* %30, align 1
  %3047 = lshr i64 %3030, 63
  %3048 = trunc i64 %3047 to i8
  store i8 %3048, i8* %33, align 1
  %3049 = lshr i64 %3029, 63
  %3050 = lshr i64 %3027, 58
  %3051 = and i64 %3050, 1
  %3052 = xor i64 %3047, %3049
  %3053 = xor i64 %3047, %3051
  %3054 = add nuw nsw i64 %3052, %3053
  %3055 = icmp eq i64 %3054, 2
  %3056 = zext i1 %3055 to i8
  store i8 %3056, i8* %39, align 1
  %3057 = add i64 %3030, 20
  %3058 = load i32, i32* %ESI.i1737, align 4
  %3059 = add i64 %2924, 51
  store i64 %3059, i64* %3, align 8
  %3060 = inttoptr i64 %3057 to i32*
  store i32 %3058, i32* %3060, align 4
  %3061 = load i64, i64* %RBP.i, align 8
  %3062 = add i64 %3061, -20
  %3063 = load i64, i64* %3, align 8
  %3064 = add i64 %3063, 4
  store i64 %3064, i64* %3, align 8
  %3065 = inttoptr i64 %3062 to i32*
  %3066 = load i32, i32* %3065, align 4
  %3067 = sext i32 %3066 to i64
  %3068 = shl nsw i64 %3067, 5
  store i64 %3068, i64* %RDX.i1718, align 8
  %3069 = load i64, i64* %RCX.i1721, align 8
  %3070 = add i64 %3068, %3069
  store i64 %3070, i64* %RDI.i1740, align 8
  %3071 = icmp ult i64 %3070, %3069
  %3072 = icmp ult i64 %3070, %3068
  %3073 = or i1 %3071, %3072
  %3074 = zext i1 %3073 to i8
  store i8 %3074, i8* %14, align 1
  %3075 = trunc i64 %3070 to i32
  %3076 = and i32 %3075, 255
  %3077 = tail call i32 @llvm.ctpop.i32(i32 %3076)
  %3078 = trunc i32 %3077 to i8
  %3079 = and i8 %3078, 1
  %3080 = xor i8 %3079, 1
  store i8 %3080, i8* %21, align 1
  %3081 = xor i64 %3069, %3070
  %3082 = lshr i64 %3081, 4
  %3083 = trunc i64 %3082 to i8
  %3084 = and i8 %3083, 1
  store i8 %3084, i8* %27, align 1
  %3085 = icmp eq i64 %3070, 0
  %3086 = zext i1 %3085 to i8
  store i8 %3086, i8* %30, align 1
  %3087 = lshr i64 %3070, 63
  %3088 = trunc i64 %3087 to i8
  store i8 %3088, i8* %33, align 1
  %3089 = lshr i64 %3069, 63
  %3090 = lshr i64 %3067, 58
  %3091 = and i64 %3090, 1
  %3092 = xor i64 %3087, %3089
  %3093 = xor i64 %3087, %3091
  %3094 = add nuw nsw i64 %3092, %3093
  %3095 = icmp eq i64 %3094, 2
  %3096 = zext i1 %3095 to i8
  store i8 %3096, i8* %39, align 1
  %3097 = add i64 %3070, 24
  %3098 = add i64 %3063, 17
  store i64 %3098, i64* %3, align 8
  %3099 = inttoptr i64 %3097 to i32*
  %3100 = load i32, i32* %3099, align 4
  %3101 = zext i32 %3100 to i64
  store i64 %3101, i64* %RSI.i1715, align 8
  %3102 = add i64 %3063, 21
  store i64 %3102, i64* %3, align 8
  %3103 = load i32, i32* %3065, align 4
  %3104 = sext i32 %3103 to i64
  %3105 = shl nsw i64 %3104, 5
  store i64 %3105, i64* %RDX.i1718, align 8
  %3106 = add i64 %3105, %3069
  store i64 %3106, i64* %RDI.i1740, align 8
  %3107 = icmp ult i64 %3106, %3069
  %3108 = icmp ult i64 %3106, %3105
  %3109 = or i1 %3107, %3108
  %3110 = zext i1 %3109 to i8
  store i8 %3110, i8* %14, align 1
  %3111 = trunc i64 %3106 to i32
  %3112 = and i32 %3111, 255
  %3113 = tail call i32 @llvm.ctpop.i32(i32 %3112)
  %3114 = trunc i32 %3113 to i8
  %3115 = and i8 %3114, 1
  %3116 = xor i8 %3115, 1
  store i8 %3116, i8* %21, align 1
  %3117 = xor i64 %3069, %3106
  %3118 = lshr i64 %3117, 4
  %3119 = trunc i64 %3118 to i8
  %3120 = and i8 %3119, 1
  store i8 %3120, i8* %27, align 1
  %3121 = icmp eq i64 %3106, 0
  %3122 = zext i1 %3121 to i8
  store i8 %3122, i8* %30, align 1
  %3123 = lshr i64 %3106, 63
  %3124 = trunc i64 %3123 to i8
  store i8 %3124, i8* %33, align 1
  %3125 = lshr i64 %3104, 58
  %3126 = and i64 %3125, 1
  %3127 = xor i64 %3123, %3089
  %3128 = xor i64 %3123, %3126
  %3129 = add nuw nsw i64 %3127, %3128
  %3130 = icmp eq i64 %3129, 2
  %3131 = zext i1 %3130 to i8
  store i8 %3131, i8* %39, align 1
  %3132 = add i64 %3106, 28
  %3133 = add i64 %3063, 34
  store i64 %3133, i64* %3, align 8
  %3134 = inttoptr i64 %3132 to i32*
  %3135 = load i32, i32* %3134, align 4
  %3136 = add i32 %3135, %3100
  %3137 = zext i32 %3136 to i64
  store i64 %3137, i64* %RSI.i1715, align 8
  %3138 = icmp ult i32 %3136, %3100
  %3139 = icmp ult i32 %3136, %3135
  %3140 = or i1 %3138, %3139
  %3141 = zext i1 %3140 to i8
  store i8 %3141, i8* %14, align 1
  %3142 = and i32 %3136, 255
  %3143 = tail call i32 @llvm.ctpop.i32(i32 %3142)
  %3144 = trunc i32 %3143 to i8
  %3145 = and i8 %3144, 1
  %3146 = xor i8 %3145, 1
  store i8 %3146, i8* %21, align 1
  %3147 = xor i32 %3135, %3100
  %3148 = xor i32 %3147, %3136
  %3149 = lshr i32 %3148, 4
  %3150 = trunc i32 %3149 to i8
  %3151 = and i8 %3150, 1
  store i8 %3151, i8* %27, align 1
  %3152 = icmp eq i32 %3136, 0
  %3153 = zext i1 %3152 to i8
  store i8 %3153, i8* %30, align 1
  %3154 = lshr i32 %3136, 31
  %3155 = trunc i32 %3154 to i8
  store i8 %3155, i8* %33, align 1
  %3156 = lshr i32 %3100, 31
  %3157 = lshr i32 %3135, 31
  %3158 = xor i32 %3154, %3156
  %3159 = xor i32 %3154, %3157
  %3160 = add nuw nsw i32 %3158, %3159
  %3161 = icmp eq i32 %3160, 2
  %3162 = zext i1 %3161 to i8
  store i8 %3162, i8* %39, align 1
  %3163 = load i64, i64* %RBP.i, align 8
  %3164 = add i64 %3163, -20
  %3165 = add i64 %3063, 38
  store i64 %3165, i64* %3, align 8
  %3166 = inttoptr i64 %3164 to i32*
  %3167 = load i32, i32* %3166, align 4
  %3168 = sext i32 %3167 to i64
  %3169 = shl nsw i64 %3168, 5
  store i64 %3169, i64* %RDX.i1718, align 8
  %3170 = load i64, i64* %RAX.i1724, align 8
  %3171 = add i64 %3169, %3170
  store i64 %3171, i64* %RDI.i1740, align 8
  %3172 = icmp ult i64 %3171, %3170
  %3173 = icmp ult i64 %3171, %3169
  %3174 = or i1 %3172, %3173
  %3175 = zext i1 %3174 to i8
  store i8 %3175, i8* %14, align 1
  %3176 = trunc i64 %3171 to i32
  %3177 = and i32 %3176, 255
  %3178 = tail call i32 @llvm.ctpop.i32(i32 %3177)
  %3179 = trunc i32 %3178 to i8
  %3180 = and i8 %3179, 1
  %3181 = xor i8 %3180, 1
  store i8 %3181, i8* %21, align 1
  %3182 = xor i64 %3170, %3171
  %3183 = lshr i64 %3182, 4
  %3184 = trunc i64 %3183 to i8
  %3185 = and i8 %3184, 1
  store i8 %3185, i8* %27, align 1
  %3186 = icmp eq i64 %3171, 0
  %3187 = zext i1 %3186 to i8
  store i8 %3187, i8* %30, align 1
  %3188 = lshr i64 %3171, 63
  %3189 = trunc i64 %3188 to i8
  store i8 %3189, i8* %33, align 1
  %3190 = lshr i64 %3170, 63
  %3191 = lshr i64 %3168, 58
  %3192 = and i64 %3191, 1
  %3193 = xor i64 %3188, %3190
  %3194 = xor i64 %3188, %3192
  %3195 = add nuw nsw i64 %3193, %3194
  %3196 = icmp eq i64 %3195, 2
  %3197 = zext i1 %3196 to i8
  store i8 %3197, i8* %39, align 1
  %3198 = add i64 %3171, 24
  %3199 = load i32, i32* %ESI.i1737, align 4
  %3200 = add i64 %3063, 51
  store i64 %3200, i64* %3, align 8
  %3201 = inttoptr i64 %3198 to i32*
  store i32 %3199, i32* %3201, align 4
  %3202 = load i64, i64* %RBP.i, align 8
  %3203 = add i64 %3202, -20
  %3204 = load i64, i64* %3, align 8
  %3205 = add i64 %3204, 4
  store i64 %3205, i64* %3, align 8
  %3206 = inttoptr i64 %3203 to i32*
  %3207 = load i32, i32* %3206, align 4
  %3208 = sext i32 %3207 to i64
  %3209 = shl nsw i64 %3208, 5
  store i64 %3209, i64* %RDX.i1718, align 8
  %3210 = load i64, i64* %RCX.i1721, align 8
  %3211 = add i64 %3209, %3210
  store i64 %3211, i64* %RDI.i1740, align 8
  %3212 = icmp ult i64 %3211, %3210
  %3213 = icmp ult i64 %3211, %3209
  %3214 = or i1 %3212, %3213
  %3215 = zext i1 %3214 to i8
  store i8 %3215, i8* %14, align 1
  %3216 = trunc i64 %3211 to i32
  %3217 = and i32 %3216, 255
  %3218 = tail call i32 @llvm.ctpop.i32(i32 %3217)
  %3219 = trunc i32 %3218 to i8
  %3220 = and i8 %3219, 1
  %3221 = xor i8 %3220, 1
  store i8 %3221, i8* %21, align 1
  %3222 = xor i64 %3210, %3211
  %3223 = lshr i64 %3222, 4
  %3224 = trunc i64 %3223 to i8
  %3225 = and i8 %3224, 1
  store i8 %3225, i8* %27, align 1
  %3226 = icmp eq i64 %3211, 0
  %3227 = zext i1 %3226 to i8
  store i8 %3227, i8* %30, align 1
  %3228 = lshr i64 %3211, 63
  %3229 = trunc i64 %3228 to i8
  store i8 %3229, i8* %33, align 1
  %3230 = lshr i64 %3210, 63
  %3231 = lshr i64 %3208, 58
  %3232 = and i64 %3231, 1
  %3233 = xor i64 %3228, %3230
  %3234 = xor i64 %3228, %3232
  %3235 = add nuw nsw i64 %3233, %3234
  %3236 = icmp eq i64 %3235, 2
  %3237 = zext i1 %3236 to i8
  store i8 %3237, i8* %39, align 1
  %3238 = add i64 %3211, 24
  %3239 = add i64 %3204, 17
  store i64 %3239, i64* %3, align 8
  %3240 = inttoptr i64 %3238 to i32*
  %3241 = load i32, i32* %3240, align 4
  %3242 = zext i32 %3241 to i64
  store i64 %3242, i64* %RSI.i1715, align 8
  %3243 = add i64 %3204, 21
  store i64 %3243, i64* %3, align 8
  %3244 = load i32, i32* %3206, align 4
  %3245 = sext i32 %3244 to i64
  %3246 = shl nsw i64 %3245, 5
  store i64 %3246, i64* %RDX.i1718, align 8
  %3247 = add i64 %3246, %3210
  store i64 %3247, i64* %RCX.i1721, align 8
  %3248 = icmp ult i64 %3247, %3210
  %3249 = icmp ult i64 %3247, %3246
  %3250 = or i1 %3248, %3249
  %3251 = zext i1 %3250 to i8
  store i8 %3251, i8* %14, align 1
  %3252 = trunc i64 %3247 to i32
  %3253 = and i32 %3252, 255
  %3254 = tail call i32 @llvm.ctpop.i32(i32 %3253)
  %3255 = trunc i32 %3254 to i8
  %3256 = and i8 %3255, 1
  %3257 = xor i8 %3256, 1
  store i8 %3257, i8* %21, align 1
  %3258 = xor i64 %3210, %3247
  %3259 = lshr i64 %3258, 4
  %3260 = trunc i64 %3259 to i8
  %3261 = and i8 %3260, 1
  store i8 %3261, i8* %27, align 1
  %3262 = icmp eq i64 %3247, 0
  %3263 = zext i1 %3262 to i8
  store i8 %3263, i8* %30, align 1
  %3264 = lshr i64 %3247, 63
  %3265 = trunc i64 %3264 to i8
  store i8 %3265, i8* %33, align 1
  %3266 = lshr i64 %3245, 58
  %3267 = and i64 %3266, 1
  %3268 = xor i64 %3264, %3230
  %3269 = xor i64 %3264, %3267
  %3270 = add nuw nsw i64 %3268, %3269
  %3271 = icmp eq i64 %3270, 2
  %3272 = zext i1 %3271 to i8
  store i8 %3272, i8* %39, align 1
  %3273 = add i64 %3247, 28
  %3274 = add i64 %3204, 31
  store i64 %3274, i64* %3, align 8
  %3275 = inttoptr i64 %3273 to i32*
  %3276 = load i32, i32* %3275, align 4
  %3277 = sub i32 %3241, %3276
  %3278 = zext i32 %3277 to i64
  store i64 %3278, i64* %RSI.i1715, align 8
  %3279 = icmp ult i32 %3241, %3276
  %3280 = zext i1 %3279 to i8
  store i8 %3280, i8* %14, align 1
  %3281 = and i32 %3277, 255
  %3282 = tail call i32 @llvm.ctpop.i32(i32 %3281)
  %3283 = trunc i32 %3282 to i8
  %3284 = and i8 %3283, 1
  %3285 = xor i8 %3284, 1
  store i8 %3285, i8* %21, align 1
  %3286 = xor i32 %3276, %3241
  %3287 = xor i32 %3286, %3277
  %3288 = lshr i32 %3287, 4
  %3289 = trunc i32 %3288 to i8
  %3290 = and i8 %3289, 1
  store i8 %3290, i8* %27, align 1
  %3291 = icmp eq i32 %3277, 0
  %3292 = zext i1 %3291 to i8
  store i8 %3292, i8* %30, align 1
  %3293 = lshr i32 %3277, 31
  %3294 = trunc i32 %3293 to i8
  store i8 %3294, i8* %33, align 1
  %3295 = lshr i32 %3241, 31
  %3296 = lshr i32 %3276, 31
  %3297 = xor i32 %3296, %3295
  %3298 = xor i32 %3293, %3295
  %3299 = add nuw nsw i32 %3298, %3297
  %3300 = icmp eq i32 %3299, 2
  %3301 = zext i1 %3300 to i8
  store i8 %3301, i8* %39, align 1
  %3302 = load i64, i64* %RBP.i, align 8
  %3303 = add i64 %3302, -20
  %3304 = add i64 %3204, 35
  store i64 %3304, i64* %3, align 8
  %3305 = inttoptr i64 %3303 to i32*
  %3306 = load i32, i32* %3305, align 4
  %3307 = sext i32 %3306 to i64
  %3308 = shl nsw i64 %3307, 5
  store i64 %3308, i64* %RCX.i1721, align 8
  %3309 = load i64, i64* %RAX.i1724, align 8
  %3310 = add i64 %3308, %3309
  store i64 %3310, i64* %RAX.i1724, align 8
  %3311 = icmp ult i64 %3310, %3309
  %3312 = icmp ult i64 %3310, %3308
  %3313 = or i1 %3311, %3312
  %3314 = zext i1 %3313 to i8
  store i8 %3314, i8* %14, align 1
  %3315 = trunc i64 %3310 to i32
  %3316 = and i32 %3315, 255
  %3317 = tail call i32 @llvm.ctpop.i32(i32 %3316)
  %3318 = trunc i32 %3317 to i8
  %3319 = and i8 %3318, 1
  %3320 = xor i8 %3319, 1
  store i8 %3320, i8* %21, align 1
  %3321 = xor i64 %3309, %3310
  %3322 = lshr i64 %3321, 4
  %3323 = trunc i64 %3322 to i8
  %3324 = and i8 %3323, 1
  store i8 %3324, i8* %27, align 1
  %3325 = icmp eq i64 %3310, 0
  %3326 = zext i1 %3325 to i8
  store i8 %3326, i8* %30, align 1
  %3327 = lshr i64 %3310, 63
  %3328 = trunc i64 %3327 to i8
  store i8 %3328, i8* %33, align 1
  %3329 = lshr i64 %3309, 63
  %3330 = lshr i64 %3307, 58
  %3331 = and i64 %3330, 1
  %3332 = xor i64 %3327, %3329
  %3333 = xor i64 %3327, %3331
  %3334 = add nuw nsw i64 %3332, %3333
  %3335 = icmp eq i64 %3334, 2
  %3336 = zext i1 %3335 to i8
  store i8 %3336, i8* %39, align 1
  %3337 = add i64 %3310, 28
  %3338 = add i64 %3204, 45
  store i64 %3338, i64* %3, align 8
  %3339 = inttoptr i64 %3337 to i32*
  store i32 %3277, i32* %3339, align 4
  %3340 = load i64, i64* %RBP.i, align 8
  %3341 = add i64 %3340, -20
  %3342 = load i64, i64* %3, align 8
  %3343 = add i64 %3342, 3
  store i64 %3343, i64* %3, align 8
  %3344 = inttoptr i64 %3341 to i32*
  %3345 = load i32, i32* %3344, align 4
  %3346 = add i32 %3345, 1
  %3347 = zext i32 %3346 to i64
  store i64 %3347, i64* %RAX.i1724, align 8
  %3348 = icmp eq i32 %3345, -1
  %3349 = icmp eq i32 %3346, 0
  %3350 = or i1 %3348, %3349
  %3351 = zext i1 %3350 to i8
  store i8 %3351, i8* %14, align 1
  %3352 = and i32 %3346, 255
  %3353 = tail call i32 @llvm.ctpop.i32(i32 %3352)
  %3354 = trunc i32 %3353 to i8
  %3355 = and i8 %3354, 1
  %3356 = xor i8 %3355, 1
  store i8 %3356, i8* %21, align 1
  %3357 = xor i32 %3346, %3345
  %3358 = lshr i32 %3357, 4
  %3359 = trunc i32 %3358 to i8
  %3360 = and i8 %3359, 1
  store i8 %3360, i8* %27, align 1
  %3361 = zext i1 %3349 to i8
  store i8 %3361, i8* %30, align 1
  %3362 = lshr i32 %3346, 31
  %3363 = trunc i32 %3362 to i8
  store i8 %3363, i8* %33, align 1
  %3364 = lshr i32 %3345, 31
  %3365 = xor i32 %3362, %3364
  %3366 = add nuw nsw i32 %3365, %3362
  %3367 = icmp eq i32 %3366, 2
  %3368 = zext i1 %3367 to i8
  store i8 %3368, i8* %39, align 1
  %3369 = add i64 %3342, 9
  store i64 %3369, i64* %3, align 8
  store i32 %3346, i32* %3344, align 4
  %3370 = load i64, i64* %3, align 8
  %3371 = add i64 %3370, -1294
  store i64 %3371, i64* %3, align 8
  br label %block_.L_45f5da

block_.L_45faed:                                  ; preds = %block_.L_45f5da
  %3372 = add i64 %77, -16
  %3373 = add i64 %105, 7
  store i64 %3373, i64* %3, align 8
  %3374 = inttoptr i64 %3372 to i32*
  store i32 0, i32* %3374, align 4
  %RCX.i657 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %.pre87 = load i64, i64* %3, align 8
  br label %block_.L_45faf4

block_.L_45faf4:                                  ; preds = %block_45fafe, %block_.L_45faed
  %3375 = phi i64 [ %4800, %block_45fafe ], [ %.pre87, %block_.L_45faed ]
  %3376 = load i64, i64* %RBP.i, align 8
  %3377 = add i64 %3376, -16
  %3378 = add i64 %3375, 4
  store i64 %3378, i64* %3, align 8
  %3379 = inttoptr i64 %3377 to i32*
  %3380 = load i32, i32* %3379, align 4
  %3381 = add i32 %3380, -8
  %3382 = icmp ult i32 %3380, 8
  %3383 = zext i1 %3382 to i8
  store i8 %3383, i8* %14, align 1
  %3384 = and i32 %3381, 255
  %3385 = tail call i32 @llvm.ctpop.i32(i32 %3384)
  %3386 = trunc i32 %3385 to i8
  %3387 = and i8 %3386, 1
  %3388 = xor i8 %3387, 1
  store i8 %3388, i8* %21, align 1
  %3389 = xor i32 %3381, %3380
  %3390 = lshr i32 %3389, 4
  %3391 = trunc i32 %3390 to i8
  %3392 = and i8 %3391, 1
  store i8 %3392, i8* %27, align 1
  %3393 = icmp eq i32 %3381, 0
  %3394 = zext i1 %3393 to i8
  store i8 %3394, i8* %30, align 1
  %3395 = lshr i32 %3381, 31
  %3396 = trunc i32 %3395 to i8
  store i8 %3396, i8* %33, align 1
  %3397 = lshr i32 %3380, 31
  %3398 = xor i32 %3395, %3397
  %3399 = add nuw nsw i32 %3398, %3397
  %3400 = icmp eq i32 %3399, 2
  %3401 = zext i1 %3400 to i8
  store i8 %3401, i8* %39, align 1
  %3402 = icmp ne i8 %3396, 0
  %3403 = xor i1 %3402, %3400
  %.v96 = select i1 %3403, i64 10, i64 789
  %3404 = add i64 %3375, %.v96
  store i64 %3404, i64* %3, align 8
  br i1 %3403, label %block_45fafe, label %block_.L_45fe09

block_45fafe:                                     ; preds = %block_.L_45faf4
  %3405 = add i64 %3404, 4
  store i64 %3405, i64* %3, align 8
  %3406 = load i32, i32* %3379, align 4
  %3407 = sext i32 %3406 to i64
  store i64 %3407, i64* %RAX.i1724, align 8
  %3408 = shl nsw i64 %3407, 2
  %3409 = add i64 %3376, -544
  %3410 = add i64 %3409, %3408
  %3411 = add i64 %3404, 11
  store i64 %3411, i64* %3, align 8
  %3412 = inttoptr i64 %3410 to i32*
  %3413 = load i32, i32* %3412, align 4
  %3414 = zext i32 %3413 to i64
  store i64 %3414, i64* %RCX.i657, align 8
  %3415 = add i64 %3404, 15
  store i64 %3415, i64* %3, align 8
  %3416 = load i32, i32* %3379, align 4
  %3417 = sext i32 %3416 to i64
  store i64 %3417, i64* %RAX.i1724, align 8
  %3418 = shl nsw i64 %3417, 2
  %3419 = add nsw i64 %3418, -416
  %3420 = add i64 %3419, %3376
  %3421 = add i64 %3404, 22
  store i64 %3421, i64* %3, align 8
  %3422 = inttoptr i64 %3420 to i32*
  %3423 = load i32, i32* %3422, align 4
  %3424 = add i32 %3423, %3413
  %3425 = zext i32 %3424 to i64
  store i64 %3425, i64* %RCX.i657, align 8
  %3426 = icmp ult i32 %3424, %3413
  %3427 = icmp ult i32 %3424, %3423
  %3428 = or i1 %3426, %3427
  %3429 = zext i1 %3428 to i8
  store i8 %3429, i8* %14, align 1
  %3430 = and i32 %3424, 255
  %3431 = tail call i32 @llvm.ctpop.i32(i32 %3430)
  %3432 = trunc i32 %3431 to i8
  %3433 = and i8 %3432, 1
  %3434 = xor i8 %3433, 1
  store i8 %3434, i8* %21, align 1
  %3435 = xor i32 %3423, %3413
  %3436 = xor i32 %3435, %3424
  %3437 = lshr i32 %3436, 4
  %3438 = trunc i32 %3437 to i8
  %3439 = and i8 %3438, 1
  store i8 %3439, i8* %27, align 1
  %3440 = icmp eq i32 %3424, 0
  %3441 = zext i1 %3440 to i8
  store i8 %3441, i8* %30, align 1
  %3442 = lshr i32 %3424, 31
  %3443 = trunc i32 %3442 to i8
  store i8 %3443, i8* %33, align 1
  %3444 = lshr i32 %3413, 31
  %3445 = lshr i32 %3423, 31
  %3446 = xor i32 %3442, %3444
  %3447 = xor i32 %3442, %3445
  %3448 = add nuw nsw i32 %3446, %3447
  %3449 = icmp eq i32 %3448, 2
  %3450 = zext i1 %3449 to i8
  store i8 %3450, i8* %39, align 1
  %3451 = add i64 %3404, 26
  store i64 %3451, i64* %3, align 8
  %3452 = load i32, i32* %3379, align 4
  %3453 = sext i32 %3452 to i64
  store i64 %3453, i64* %RAX.i1724, align 8
  %3454 = shl nsw i64 %3453, 2
  %3455 = add i64 %3376, -800
  %3456 = add i64 %3455, %3454
  %3457 = add i64 %3404, 33
  store i64 %3457, i64* %3, align 8
  %3458 = inttoptr i64 %3456 to i32*
  store i32 %3424, i32* %3458, align 4
  %3459 = load i64, i64* %RBP.i, align 8
  %3460 = add i64 %3459, -16
  %3461 = load i64, i64* %3, align 8
  %3462 = add i64 %3461, 4
  store i64 %3462, i64* %3, align 8
  %3463 = inttoptr i64 %3460 to i32*
  %3464 = load i32, i32* %3463, align 4
  %3465 = sext i32 %3464 to i64
  store i64 %3465, i64* %RAX.i1724, align 8
  %3466 = shl nsw i64 %3465, 2
  %3467 = add i64 %3459, -512
  %3468 = add i64 %3467, %3466
  %3469 = add i64 %3461, 11
  store i64 %3469, i64* %3, align 8
  %3470 = inttoptr i64 %3468 to i32*
  %3471 = load i32, i32* %3470, align 4
  %3472 = zext i32 %3471 to i64
  store i64 %3472, i64* %RCX.i657, align 8
  %3473 = add i64 %3461, 15
  store i64 %3473, i64* %3, align 8
  %3474 = load i32, i32* %3463, align 4
  %3475 = sext i32 %3474 to i64
  store i64 %3475, i64* %RAX.i1724, align 8
  %3476 = shl nsw i64 %3475, 2
  %3477 = add nsw i64 %3476, -384
  %3478 = add i64 %3477, %3459
  %3479 = add i64 %3461, 22
  store i64 %3479, i64* %3, align 8
  %3480 = inttoptr i64 %3478 to i32*
  %3481 = load i32, i32* %3480, align 4
  %3482 = add i32 %3481, %3471
  %3483 = zext i32 %3482 to i64
  store i64 %3483, i64* %RCX.i657, align 8
  %3484 = icmp ult i32 %3482, %3471
  %3485 = icmp ult i32 %3482, %3481
  %3486 = or i1 %3484, %3485
  %3487 = zext i1 %3486 to i8
  store i8 %3487, i8* %14, align 1
  %3488 = and i32 %3482, 255
  %3489 = tail call i32 @llvm.ctpop.i32(i32 %3488)
  %3490 = trunc i32 %3489 to i8
  %3491 = and i8 %3490, 1
  %3492 = xor i8 %3491, 1
  store i8 %3492, i8* %21, align 1
  %3493 = xor i32 %3481, %3471
  %3494 = xor i32 %3493, %3482
  %3495 = lshr i32 %3494, 4
  %3496 = trunc i32 %3495 to i8
  %3497 = and i8 %3496, 1
  store i8 %3497, i8* %27, align 1
  %3498 = icmp eq i32 %3482, 0
  %3499 = zext i1 %3498 to i8
  store i8 %3499, i8* %30, align 1
  %3500 = lshr i32 %3482, 31
  %3501 = trunc i32 %3500 to i8
  store i8 %3501, i8* %33, align 1
  %3502 = lshr i32 %3471, 31
  %3503 = lshr i32 %3481, 31
  %3504 = xor i32 %3500, %3502
  %3505 = xor i32 %3500, %3503
  %3506 = add nuw nsw i32 %3504, %3505
  %3507 = icmp eq i32 %3506, 2
  %3508 = zext i1 %3507 to i8
  store i8 %3508, i8* %39, align 1
  %3509 = add i64 %3461, 26
  store i64 %3509, i64* %3, align 8
  %3510 = load i32, i32* %3463, align 4
  %3511 = sext i32 %3510 to i64
  store i64 %3511, i64* %RAX.i1724, align 8
  %3512 = shl nsw i64 %3511, 2
  %3513 = add i64 %3459, -768
  %3514 = add i64 %3513, %3512
  %3515 = add i64 %3461, 33
  store i64 %3515, i64* %3, align 8
  %3516 = inttoptr i64 %3514 to i32*
  store i32 %3482, i32* %3516, align 4
  %3517 = load i64, i64* %RBP.i, align 8
  %3518 = add i64 %3517, -16
  %3519 = load i64, i64* %3, align 8
  %3520 = add i64 %3519, 4
  store i64 %3520, i64* %3, align 8
  %3521 = inttoptr i64 %3518 to i32*
  %3522 = load i32, i32* %3521, align 4
  %3523 = sext i32 %3522 to i64
  store i64 %3523, i64* %RAX.i1724, align 8
  %3524 = shl nsw i64 %3523, 2
  %3525 = add i64 %3517, -480
  %3526 = add i64 %3525, %3524
  %3527 = add i64 %3519, 11
  store i64 %3527, i64* %3, align 8
  %3528 = inttoptr i64 %3526 to i32*
  %3529 = load i32, i32* %3528, align 4
  %3530 = zext i32 %3529 to i64
  store i64 %3530, i64* %RCX.i657, align 8
  %3531 = add i64 %3519, 15
  store i64 %3531, i64* %3, align 8
  %3532 = load i32, i32* %3521, align 4
  %3533 = sext i32 %3532 to i64
  store i64 %3533, i64* %RAX.i1724, align 8
  %3534 = shl nsw i64 %3533, 2
  %3535 = add nsw i64 %3534, -352
  %3536 = add i64 %3535, %3517
  %3537 = add i64 %3519, 22
  store i64 %3537, i64* %3, align 8
  %3538 = inttoptr i64 %3536 to i32*
  %3539 = load i32, i32* %3538, align 4
  %3540 = add i32 %3539, %3529
  %3541 = zext i32 %3540 to i64
  store i64 %3541, i64* %RCX.i657, align 8
  %3542 = icmp ult i32 %3540, %3529
  %3543 = icmp ult i32 %3540, %3539
  %3544 = or i1 %3542, %3543
  %3545 = zext i1 %3544 to i8
  store i8 %3545, i8* %14, align 1
  %3546 = and i32 %3540, 255
  %3547 = tail call i32 @llvm.ctpop.i32(i32 %3546)
  %3548 = trunc i32 %3547 to i8
  %3549 = and i8 %3548, 1
  %3550 = xor i8 %3549, 1
  store i8 %3550, i8* %21, align 1
  %3551 = xor i32 %3539, %3529
  %3552 = xor i32 %3551, %3540
  %3553 = lshr i32 %3552, 4
  %3554 = trunc i32 %3553 to i8
  %3555 = and i8 %3554, 1
  store i8 %3555, i8* %27, align 1
  %3556 = icmp eq i32 %3540, 0
  %3557 = zext i1 %3556 to i8
  store i8 %3557, i8* %30, align 1
  %3558 = lshr i32 %3540, 31
  %3559 = trunc i32 %3558 to i8
  store i8 %3559, i8* %33, align 1
  %3560 = lshr i32 %3529, 31
  %3561 = lshr i32 %3539, 31
  %3562 = xor i32 %3558, %3560
  %3563 = xor i32 %3558, %3561
  %3564 = add nuw nsw i32 %3562, %3563
  %3565 = icmp eq i32 %3564, 2
  %3566 = zext i1 %3565 to i8
  store i8 %3566, i8* %39, align 1
  %3567 = add i64 %3519, 26
  store i64 %3567, i64* %3, align 8
  %3568 = load i32, i32* %3521, align 4
  %3569 = sext i32 %3568 to i64
  store i64 %3569, i64* %RAX.i1724, align 8
  %3570 = shl nsw i64 %3569, 2
  %3571 = add i64 %3517, -736
  %3572 = add i64 %3571, %3570
  %3573 = add i64 %3519, 33
  store i64 %3573, i64* %3, align 8
  %3574 = inttoptr i64 %3572 to i32*
  store i32 %3540, i32* %3574, align 4
  %3575 = load i64, i64* %RBP.i, align 8
  %3576 = add i64 %3575, -16
  %3577 = load i64, i64* %3, align 8
  %3578 = add i64 %3577, 4
  store i64 %3578, i64* %3, align 8
  %3579 = inttoptr i64 %3576 to i32*
  %3580 = load i32, i32* %3579, align 4
  %3581 = sext i32 %3580 to i64
  store i64 %3581, i64* %RAX.i1724, align 8
  %3582 = shl nsw i64 %3581, 2
  %3583 = add i64 %3575, -448
  %3584 = add i64 %3583, %3582
  %3585 = add i64 %3577, 11
  store i64 %3585, i64* %3, align 8
  %3586 = inttoptr i64 %3584 to i32*
  %3587 = load i32, i32* %3586, align 4
  %3588 = zext i32 %3587 to i64
  store i64 %3588, i64* %RCX.i657, align 8
  %3589 = add i64 %3577, 15
  store i64 %3589, i64* %3, align 8
  %3590 = load i32, i32* %3579, align 4
  %3591 = sext i32 %3590 to i64
  store i64 %3591, i64* %RAX.i1724, align 8
  %3592 = shl nsw i64 %3591, 2
  %3593 = add nsw i64 %3592, -320
  %3594 = add i64 %3593, %3575
  %3595 = add i64 %3577, 22
  store i64 %3595, i64* %3, align 8
  %3596 = inttoptr i64 %3594 to i32*
  %3597 = load i32, i32* %3596, align 4
  %3598 = add i32 %3597, %3587
  %3599 = zext i32 %3598 to i64
  store i64 %3599, i64* %RCX.i657, align 8
  %3600 = icmp ult i32 %3598, %3587
  %3601 = icmp ult i32 %3598, %3597
  %3602 = or i1 %3600, %3601
  %3603 = zext i1 %3602 to i8
  store i8 %3603, i8* %14, align 1
  %3604 = and i32 %3598, 255
  %3605 = tail call i32 @llvm.ctpop.i32(i32 %3604)
  %3606 = trunc i32 %3605 to i8
  %3607 = and i8 %3606, 1
  %3608 = xor i8 %3607, 1
  store i8 %3608, i8* %21, align 1
  %3609 = xor i32 %3597, %3587
  %3610 = xor i32 %3609, %3598
  %3611 = lshr i32 %3610, 4
  %3612 = trunc i32 %3611 to i8
  %3613 = and i8 %3612, 1
  store i8 %3613, i8* %27, align 1
  %3614 = icmp eq i32 %3598, 0
  %3615 = zext i1 %3614 to i8
  store i8 %3615, i8* %30, align 1
  %3616 = lshr i32 %3598, 31
  %3617 = trunc i32 %3616 to i8
  store i8 %3617, i8* %33, align 1
  %3618 = lshr i32 %3587, 31
  %3619 = lshr i32 %3597, 31
  %3620 = xor i32 %3616, %3618
  %3621 = xor i32 %3616, %3619
  %3622 = add nuw nsw i32 %3620, %3621
  %3623 = icmp eq i32 %3622, 2
  %3624 = zext i1 %3623 to i8
  store i8 %3624, i8* %39, align 1
  %3625 = add i64 %3577, 26
  store i64 %3625, i64* %3, align 8
  %3626 = load i32, i32* %3579, align 4
  %3627 = sext i32 %3626 to i64
  store i64 %3627, i64* %RAX.i1724, align 8
  %3628 = shl nsw i64 %3627, 2
  %3629 = add i64 %3575, -704
  %3630 = add i64 %3629, %3628
  %3631 = add i64 %3577, 33
  store i64 %3631, i64* %3, align 8
  %3632 = inttoptr i64 %3630 to i32*
  store i32 %3598, i32* %3632, align 4
  %3633 = load i64, i64* %RBP.i, align 8
  %3634 = add i64 %3633, -16
  %3635 = load i64, i64* %3, align 8
  %3636 = add i64 %3635, 4
  store i64 %3636, i64* %3, align 8
  %3637 = inttoptr i64 %3634 to i32*
  %3638 = load i32, i32* %3637, align 4
  %3639 = sext i32 %3638 to i64
  store i64 %3639, i64* %RAX.i1724, align 8
  %3640 = shl nsw i64 %3639, 2
  %3641 = add i64 %3633, -544
  %3642 = add i64 %3641, %3640
  %3643 = add i64 %3635, 11
  store i64 %3643, i64* %3, align 8
  %3644 = inttoptr i64 %3642 to i32*
  %3645 = load i32, i32* %3644, align 4
  %3646 = zext i32 %3645 to i64
  store i64 %3646, i64* %RCX.i657, align 8
  %3647 = add i64 %3635, 15
  store i64 %3647, i64* %3, align 8
  %3648 = load i32, i32* %3637, align 4
  %3649 = sext i32 %3648 to i64
  store i64 %3649, i64* %RAX.i1724, align 8
  %3650 = shl nsw i64 %3649, 2
  %3651 = add nsw i64 %3650, -416
  %3652 = add i64 %3651, %3633
  %3653 = add i64 %3635, 22
  store i64 %3653, i64* %3, align 8
  %3654 = inttoptr i64 %3652 to i32*
  %3655 = load i32, i32* %3654, align 4
  %3656 = sub i32 %3645, %3655
  %3657 = zext i32 %3656 to i64
  store i64 %3657, i64* %RCX.i657, align 8
  %3658 = icmp ult i32 %3645, %3655
  %3659 = zext i1 %3658 to i8
  store i8 %3659, i8* %14, align 1
  %3660 = and i32 %3656, 255
  %3661 = tail call i32 @llvm.ctpop.i32(i32 %3660)
  %3662 = trunc i32 %3661 to i8
  %3663 = and i8 %3662, 1
  %3664 = xor i8 %3663, 1
  store i8 %3664, i8* %21, align 1
  %3665 = xor i32 %3655, %3645
  %3666 = xor i32 %3665, %3656
  %3667 = lshr i32 %3666, 4
  %3668 = trunc i32 %3667 to i8
  %3669 = and i8 %3668, 1
  store i8 %3669, i8* %27, align 1
  %3670 = icmp eq i32 %3656, 0
  %3671 = zext i1 %3670 to i8
  store i8 %3671, i8* %30, align 1
  %3672 = lshr i32 %3656, 31
  %3673 = trunc i32 %3672 to i8
  store i8 %3673, i8* %33, align 1
  %3674 = lshr i32 %3645, 31
  %3675 = lshr i32 %3655, 31
  %3676 = xor i32 %3675, %3674
  %3677 = xor i32 %3672, %3674
  %3678 = add nuw nsw i32 %3677, %3676
  %3679 = icmp eq i32 %3678, 2
  %3680 = zext i1 %3679 to i8
  store i8 %3680, i8* %39, align 1
  %3681 = add i64 %3635, 26
  store i64 %3681, i64* %3, align 8
  %3682 = load i32, i32* %3637, align 4
  %3683 = sext i32 %3682 to i64
  store i64 %3683, i64* %RAX.i1724, align 8
  %3684 = shl nsw i64 %3683, 2
  %3685 = add i64 %3633, -672
  %3686 = add i64 %3685, %3684
  %3687 = add i64 %3635, 33
  store i64 %3687, i64* %3, align 8
  %3688 = inttoptr i64 %3686 to i32*
  store i32 %3656, i32* %3688, align 4
  %3689 = load i64, i64* %RBP.i, align 8
  %3690 = add i64 %3689, -16
  %3691 = load i64, i64* %3, align 8
  %3692 = add i64 %3691, 4
  store i64 %3692, i64* %3, align 8
  %3693 = inttoptr i64 %3690 to i32*
  %3694 = load i32, i32* %3693, align 4
  %3695 = sext i32 %3694 to i64
  store i64 %3695, i64* %RAX.i1724, align 8
  %3696 = shl nsw i64 %3695, 2
  %3697 = add i64 %3689, -512
  %3698 = add i64 %3697, %3696
  %3699 = add i64 %3691, 11
  store i64 %3699, i64* %3, align 8
  %3700 = inttoptr i64 %3698 to i32*
  %3701 = load i32, i32* %3700, align 4
  %3702 = zext i32 %3701 to i64
  store i64 %3702, i64* %RCX.i657, align 8
  %3703 = add i64 %3691, 15
  store i64 %3703, i64* %3, align 8
  %3704 = load i32, i32* %3693, align 4
  %3705 = sext i32 %3704 to i64
  store i64 %3705, i64* %RAX.i1724, align 8
  %3706 = shl nsw i64 %3705, 2
  %3707 = add nsw i64 %3706, -384
  %3708 = add i64 %3707, %3689
  %3709 = add i64 %3691, 22
  store i64 %3709, i64* %3, align 8
  %3710 = inttoptr i64 %3708 to i32*
  %3711 = load i32, i32* %3710, align 4
  %3712 = sub i32 %3701, %3711
  %3713 = zext i32 %3712 to i64
  store i64 %3713, i64* %RCX.i657, align 8
  %3714 = icmp ult i32 %3701, %3711
  %3715 = zext i1 %3714 to i8
  store i8 %3715, i8* %14, align 1
  %3716 = and i32 %3712, 255
  %3717 = tail call i32 @llvm.ctpop.i32(i32 %3716)
  %3718 = trunc i32 %3717 to i8
  %3719 = and i8 %3718, 1
  %3720 = xor i8 %3719, 1
  store i8 %3720, i8* %21, align 1
  %3721 = xor i32 %3711, %3701
  %3722 = xor i32 %3721, %3712
  %3723 = lshr i32 %3722, 4
  %3724 = trunc i32 %3723 to i8
  %3725 = and i8 %3724, 1
  store i8 %3725, i8* %27, align 1
  %3726 = icmp eq i32 %3712, 0
  %3727 = zext i1 %3726 to i8
  store i8 %3727, i8* %30, align 1
  %3728 = lshr i32 %3712, 31
  %3729 = trunc i32 %3728 to i8
  store i8 %3729, i8* %33, align 1
  %3730 = lshr i32 %3701, 31
  %3731 = lshr i32 %3711, 31
  %3732 = xor i32 %3731, %3730
  %3733 = xor i32 %3728, %3730
  %3734 = add nuw nsw i32 %3733, %3732
  %3735 = icmp eq i32 %3734, 2
  %3736 = zext i1 %3735 to i8
  store i8 %3736, i8* %39, align 1
  %3737 = add i64 %3691, 26
  store i64 %3737, i64* %3, align 8
  %3738 = load i32, i32* %3693, align 4
  %3739 = sext i32 %3738 to i64
  store i64 %3739, i64* %RAX.i1724, align 8
  %3740 = shl nsw i64 %3739, 2
  %3741 = add i64 %3689, -640
  %3742 = add i64 %3741, %3740
  %3743 = add i64 %3691, 33
  store i64 %3743, i64* %3, align 8
  %3744 = inttoptr i64 %3742 to i32*
  store i32 %3712, i32* %3744, align 4
  %3745 = load i64, i64* %RBP.i, align 8
  %3746 = add i64 %3745, -16
  %3747 = load i64, i64* %3, align 8
  %3748 = add i64 %3747, 4
  store i64 %3748, i64* %3, align 8
  %3749 = inttoptr i64 %3746 to i32*
  %3750 = load i32, i32* %3749, align 4
  %3751 = sext i32 %3750 to i64
  store i64 %3751, i64* %RAX.i1724, align 8
  %3752 = shl nsw i64 %3751, 2
  %3753 = add i64 %3745, -480
  %3754 = add i64 %3753, %3752
  %3755 = add i64 %3747, 11
  store i64 %3755, i64* %3, align 8
  %3756 = inttoptr i64 %3754 to i32*
  %3757 = load i32, i32* %3756, align 4
  %3758 = zext i32 %3757 to i64
  store i64 %3758, i64* %RCX.i657, align 8
  %3759 = add i64 %3747, 15
  store i64 %3759, i64* %3, align 8
  %3760 = load i32, i32* %3749, align 4
  %3761 = sext i32 %3760 to i64
  store i64 %3761, i64* %RAX.i1724, align 8
  %3762 = shl nsw i64 %3761, 2
  %3763 = add nsw i64 %3762, -352
  %3764 = add i64 %3763, %3745
  %3765 = add i64 %3747, 22
  store i64 %3765, i64* %3, align 8
  %3766 = inttoptr i64 %3764 to i32*
  %3767 = load i32, i32* %3766, align 4
  %3768 = sub i32 %3757, %3767
  %3769 = zext i32 %3768 to i64
  store i64 %3769, i64* %RCX.i657, align 8
  %3770 = icmp ult i32 %3757, %3767
  %3771 = zext i1 %3770 to i8
  store i8 %3771, i8* %14, align 1
  %3772 = and i32 %3768, 255
  %3773 = tail call i32 @llvm.ctpop.i32(i32 %3772)
  %3774 = trunc i32 %3773 to i8
  %3775 = and i8 %3774, 1
  %3776 = xor i8 %3775, 1
  store i8 %3776, i8* %21, align 1
  %3777 = xor i32 %3767, %3757
  %3778 = xor i32 %3777, %3768
  %3779 = lshr i32 %3778, 4
  %3780 = trunc i32 %3779 to i8
  %3781 = and i8 %3780, 1
  store i8 %3781, i8* %27, align 1
  %3782 = icmp eq i32 %3768, 0
  %3783 = zext i1 %3782 to i8
  store i8 %3783, i8* %30, align 1
  %3784 = lshr i32 %3768, 31
  %3785 = trunc i32 %3784 to i8
  store i8 %3785, i8* %33, align 1
  %3786 = lshr i32 %3757, 31
  %3787 = lshr i32 %3767, 31
  %3788 = xor i32 %3787, %3786
  %3789 = xor i32 %3784, %3786
  %3790 = add nuw nsw i32 %3789, %3788
  %3791 = icmp eq i32 %3790, 2
  %3792 = zext i1 %3791 to i8
  store i8 %3792, i8* %39, align 1
  %3793 = add i64 %3747, 26
  store i64 %3793, i64* %3, align 8
  %3794 = load i32, i32* %3749, align 4
  %3795 = sext i32 %3794 to i64
  store i64 %3795, i64* %RAX.i1724, align 8
  %3796 = shl nsw i64 %3795, 2
  %3797 = add i64 %3745, -608
  %3798 = add i64 %3797, %3796
  %3799 = add i64 %3747, 33
  store i64 %3799, i64* %3, align 8
  %3800 = inttoptr i64 %3798 to i32*
  store i32 %3768, i32* %3800, align 4
  %3801 = load i64, i64* %RBP.i, align 8
  %3802 = add i64 %3801, -16
  %3803 = load i64, i64* %3, align 8
  %3804 = add i64 %3803, 4
  store i64 %3804, i64* %3, align 8
  %3805 = inttoptr i64 %3802 to i32*
  %3806 = load i32, i32* %3805, align 4
  %3807 = sext i32 %3806 to i64
  store i64 %3807, i64* %RAX.i1724, align 8
  %3808 = shl nsw i64 %3807, 2
  %3809 = add i64 %3801, -448
  %3810 = add i64 %3809, %3808
  %3811 = add i64 %3803, 11
  store i64 %3811, i64* %3, align 8
  %3812 = inttoptr i64 %3810 to i32*
  %3813 = load i32, i32* %3812, align 4
  %3814 = zext i32 %3813 to i64
  store i64 %3814, i64* %RCX.i657, align 8
  %3815 = add i64 %3803, 15
  store i64 %3815, i64* %3, align 8
  %3816 = load i32, i32* %3805, align 4
  %3817 = sext i32 %3816 to i64
  store i64 %3817, i64* %RAX.i1724, align 8
  %3818 = shl nsw i64 %3817, 2
  %3819 = add nsw i64 %3818, -320
  %3820 = add i64 %3819, %3801
  %3821 = add i64 %3803, 22
  store i64 %3821, i64* %3, align 8
  %3822 = inttoptr i64 %3820 to i32*
  %3823 = load i32, i32* %3822, align 4
  %3824 = sub i32 %3813, %3823
  %3825 = zext i32 %3824 to i64
  store i64 %3825, i64* %RCX.i657, align 8
  %3826 = icmp ult i32 %3813, %3823
  %3827 = zext i1 %3826 to i8
  store i8 %3827, i8* %14, align 1
  %3828 = and i32 %3824, 255
  %3829 = tail call i32 @llvm.ctpop.i32(i32 %3828)
  %3830 = trunc i32 %3829 to i8
  %3831 = and i8 %3830, 1
  %3832 = xor i8 %3831, 1
  store i8 %3832, i8* %21, align 1
  %3833 = xor i32 %3823, %3813
  %3834 = xor i32 %3833, %3824
  %3835 = lshr i32 %3834, 4
  %3836 = trunc i32 %3835 to i8
  %3837 = and i8 %3836, 1
  store i8 %3837, i8* %27, align 1
  %3838 = icmp eq i32 %3824, 0
  %3839 = zext i1 %3838 to i8
  store i8 %3839, i8* %30, align 1
  %3840 = lshr i32 %3824, 31
  %3841 = trunc i32 %3840 to i8
  store i8 %3841, i8* %33, align 1
  %3842 = lshr i32 %3813, 31
  %3843 = lshr i32 %3823, 31
  %3844 = xor i32 %3843, %3842
  %3845 = xor i32 %3840, %3842
  %3846 = add nuw nsw i32 %3845, %3844
  %3847 = icmp eq i32 %3846, 2
  %3848 = zext i1 %3847 to i8
  store i8 %3848, i8* %39, align 1
  %3849 = add i64 %3803, 26
  store i64 %3849, i64* %3, align 8
  %3850 = load i32, i32* %3805, align 4
  %3851 = sext i32 %3850 to i64
  store i64 %3851, i64* %RAX.i1724, align 8
  %3852 = shl nsw i64 %3851, 2
  %3853 = add i64 %3801, -576
  %3854 = add i64 %3853, %3852
  %3855 = add i64 %3803, 33
  store i64 %3855, i64* %3, align 8
  %3856 = inttoptr i64 %3854 to i32*
  store i32 %3824, i32* %3856, align 4
  %3857 = load i64, i64* %RBP.i, align 8
  %3858 = add i64 %3857, -16
  %3859 = load i64, i64* %3, align 8
  %3860 = add i64 %3859, 4
  store i64 %3860, i64* %3, align 8
  %3861 = inttoptr i64 %3858 to i32*
  %3862 = load i32, i32* %3861, align 4
  %3863 = sext i32 %3862 to i64
  store i64 %3863, i64* %RAX.i1724, align 8
  %3864 = shl nsw i64 %3863, 2
  %3865 = add i64 %3857, -800
  %3866 = add i64 %3865, %3864
  %3867 = add i64 %3859, 11
  store i64 %3867, i64* %3, align 8
  %3868 = inttoptr i64 %3866 to i32*
  %3869 = load i32, i32* %3868, align 4
  %3870 = zext i32 %3869 to i64
  store i64 %3870, i64* %RCX.i657, align 8
  %3871 = add i64 %3859, 15
  store i64 %3871, i64* %3, align 8
  %3872 = load i32, i32* %3861, align 4
  %3873 = sext i32 %3872 to i64
  store i64 %3873, i64* %RAX.i1724, align 8
  %3874 = shl nsw i64 %3873, 2
  %3875 = add nsw i64 %3874, -736
  %3876 = add i64 %3875, %3857
  %3877 = add i64 %3859, 22
  store i64 %3877, i64* %3, align 8
  %3878 = inttoptr i64 %3876 to i32*
  %3879 = load i32, i32* %3878, align 4
  %3880 = add i32 %3879, %3869
  %3881 = zext i32 %3880 to i64
  store i64 %3881, i64* %RCX.i657, align 8
  %3882 = icmp ult i32 %3880, %3869
  %3883 = icmp ult i32 %3880, %3879
  %3884 = or i1 %3882, %3883
  %3885 = zext i1 %3884 to i8
  store i8 %3885, i8* %14, align 1
  %3886 = and i32 %3880, 255
  %3887 = tail call i32 @llvm.ctpop.i32(i32 %3886)
  %3888 = trunc i32 %3887 to i8
  %3889 = and i8 %3888, 1
  %3890 = xor i8 %3889, 1
  store i8 %3890, i8* %21, align 1
  %3891 = xor i32 %3879, %3869
  %3892 = xor i32 %3891, %3880
  %3893 = lshr i32 %3892, 4
  %3894 = trunc i32 %3893 to i8
  %3895 = and i8 %3894, 1
  store i8 %3895, i8* %27, align 1
  %3896 = icmp eq i32 %3880, 0
  %3897 = zext i1 %3896 to i8
  store i8 %3897, i8* %30, align 1
  %3898 = lshr i32 %3880, 31
  %3899 = trunc i32 %3898 to i8
  store i8 %3899, i8* %33, align 1
  %3900 = lshr i32 %3869, 31
  %3901 = lshr i32 %3879, 31
  %3902 = xor i32 %3898, %3900
  %3903 = xor i32 %3898, %3901
  %3904 = add nuw nsw i32 %3902, %3903
  %3905 = icmp eq i32 %3904, 2
  %3906 = zext i1 %3905 to i8
  store i8 %3906, i8* %39, align 1
  %3907 = add i64 %3859, 26
  store i64 %3907, i64* %3, align 8
  %3908 = load i32, i32* %3861, align 4
  %3909 = sext i32 %3908 to i64
  store i64 %3909, i64* %RAX.i1724, align 8
  %3910 = shl nsw i64 %3909, 2
  %3911 = add i64 %3857, -288
  %3912 = add i64 %3911, %3910
  %3913 = add i64 %3859, 33
  store i64 %3913, i64* %3, align 8
  %3914 = inttoptr i64 %3912 to i32*
  store i32 %3880, i32* %3914, align 4
  %3915 = load i64, i64* %RBP.i, align 8
  %3916 = add i64 %3915, -16
  %3917 = load i64, i64* %3, align 8
  %3918 = add i64 %3917, 4
  store i64 %3918, i64* %3, align 8
  %3919 = inttoptr i64 %3916 to i32*
  %3920 = load i32, i32* %3919, align 4
  %3921 = sext i32 %3920 to i64
  store i64 %3921, i64* %RAX.i1724, align 8
  %3922 = shl nsw i64 %3921, 2
  %3923 = add i64 %3915, -768
  %3924 = add i64 %3923, %3922
  %3925 = add i64 %3917, 11
  store i64 %3925, i64* %3, align 8
  %3926 = inttoptr i64 %3924 to i32*
  %3927 = load i32, i32* %3926, align 4
  %3928 = zext i32 %3927 to i64
  store i64 %3928, i64* %RCX.i657, align 8
  %3929 = add i64 %3917, 15
  store i64 %3929, i64* %3, align 8
  %3930 = load i32, i32* %3919, align 4
  %3931 = sext i32 %3930 to i64
  store i64 %3931, i64* %RAX.i1724, align 8
  %3932 = shl nsw i64 %3931, 2
  %3933 = add nsw i64 %3932, -704
  %3934 = add i64 %3933, %3915
  %3935 = add i64 %3917, 22
  store i64 %3935, i64* %3, align 8
  %3936 = inttoptr i64 %3934 to i32*
  %3937 = load i32, i32* %3936, align 4
  %3938 = add i32 %3937, %3927
  %3939 = zext i32 %3938 to i64
  store i64 %3939, i64* %RCX.i657, align 8
  %3940 = icmp ult i32 %3938, %3927
  %3941 = icmp ult i32 %3938, %3937
  %3942 = or i1 %3940, %3941
  %3943 = zext i1 %3942 to i8
  store i8 %3943, i8* %14, align 1
  %3944 = and i32 %3938, 255
  %3945 = tail call i32 @llvm.ctpop.i32(i32 %3944)
  %3946 = trunc i32 %3945 to i8
  %3947 = and i8 %3946, 1
  %3948 = xor i8 %3947, 1
  store i8 %3948, i8* %21, align 1
  %3949 = xor i32 %3937, %3927
  %3950 = xor i32 %3949, %3938
  %3951 = lshr i32 %3950, 4
  %3952 = trunc i32 %3951 to i8
  %3953 = and i8 %3952, 1
  store i8 %3953, i8* %27, align 1
  %3954 = icmp eq i32 %3938, 0
  %3955 = zext i1 %3954 to i8
  store i8 %3955, i8* %30, align 1
  %3956 = lshr i32 %3938, 31
  %3957 = trunc i32 %3956 to i8
  store i8 %3957, i8* %33, align 1
  %3958 = lshr i32 %3927, 31
  %3959 = lshr i32 %3937, 31
  %3960 = xor i32 %3956, %3958
  %3961 = xor i32 %3956, %3959
  %3962 = add nuw nsw i32 %3960, %3961
  %3963 = icmp eq i32 %3962, 2
  %3964 = zext i1 %3963 to i8
  store i8 %3964, i8* %39, align 1
  %3965 = add i64 %3917, 26
  store i64 %3965, i64* %3, align 8
  %3966 = load i32, i32* %3919, align 4
  %3967 = sext i32 %3966 to i64
  store i64 %3967, i64* %RAX.i1724, align 8
  %3968 = shl nsw i64 %3967, 2
  %3969 = add i64 %3915, -256
  %3970 = add i64 %3969, %3968
  %3971 = add i64 %3917, 33
  store i64 %3971, i64* %3, align 8
  %3972 = inttoptr i64 %3970 to i32*
  store i32 %3938, i32* %3972, align 4
  %3973 = load i64, i64* %RBP.i, align 8
  %3974 = add i64 %3973, -16
  %3975 = load i64, i64* %3, align 8
  %3976 = add i64 %3975, 4
  store i64 %3976, i64* %3, align 8
  %3977 = inttoptr i64 %3974 to i32*
  %3978 = load i32, i32* %3977, align 4
  %3979 = sext i32 %3978 to i64
  store i64 %3979, i64* %RAX.i1724, align 8
  %3980 = shl nsw i64 %3979, 2
  %3981 = add i64 %3973, -800
  %3982 = add i64 %3981, %3980
  %3983 = add i64 %3975, 11
  store i64 %3983, i64* %3, align 8
  %3984 = inttoptr i64 %3982 to i32*
  %3985 = load i32, i32* %3984, align 4
  %3986 = zext i32 %3985 to i64
  store i64 %3986, i64* %RCX.i657, align 8
  %3987 = add i64 %3975, 15
  store i64 %3987, i64* %3, align 8
  %3988 = load i32, i32* %3977, align 4
  %3989 = sext i32 %3988 to i64
  store i64 %3989, i64* %RAX.i1724, align 8
  %3990 = shl nsw i64 %3989, 2
  %3991 = add nsw i64 %3990, -736
  %3992 = add i64 %3991, %3973
  %3993 = add i64 %3975, 22
  store i64 %3993, i64* %3, align 8
  %3994 = inttoptr i64 %3992 to i32*
  %3995 = load i32, i32* %3994, align 4
  %3996 = sub i32 %3985, %3995
  %3997 = zext i32 %3996 to i64
  store i64 %3997, i64* %RCX.i657, align 8
  %3998 = icmp ult i32 %3985, %3995
  %3999 = zext i1 %3998 to i8
  store i8 %3999, i8* %14, align 1
  %4000 = and i32 %3996, 255
  %4001 = tail call i32 @llvm.ctpop.i32(i32 %4000)
  %4002 = trunc i32 %4001 to i8
  %4003 = and i8 %4002, 1
  %4004 = xor i8 %4003, 1
  store i8 %4004, i8* %21, align 1
  %4005 = xor i32 %3995, %3985
  %4006 = xor i32 %4005, %3996
  %4007 = lshr i32 %4006, 4
  %4008 = trunc i32 %4007 to i8
  %4009 = and i8 %4008, 1
  store i8 %4009, i8* %27, align 1
  %4010 = icmp eq i32 %3996, 0
  %4011 = zext i1 %4010 to i8
  store i8 %4011, i8* %30, align 1
  %4012 = lshr i32 %3996, 31
  %4013 = trunc i32 %4012 to i8
  store i8 %4013, i8* %33, align 1
  %4014 = lshr i32 %3985, 31
  %4015 = lshr i32 %3995, 31
  %4016 = xor i32 %4015, %4014
  %4017 = xor i32 %4012, %4014
  %4018 = add nuw nsw i32 %4017, %4016
  %4019 = icmp eq i32 %4018, 2
  %4020 = zext i1 %4019 to i8
  store i8 %4020, i8* %39, align 1
  %4021 = add i64 %3975, 26
  store i64 %4021, i64* %3, align 8
  %4022 = load i32, i32* %3977, align 4
  %4023 = sext i32 %4022 to i64
  store i64 %4023, i64* %RAX.i1724, align 8
  %4024 = shl nsw i64 %4023, 2
  %4025 = add i64 %3973, -224
  %4026 = add i64 %4025, %4024
  %4027 = add i64 %3975, 33
  store i64 %4027, i64* %3, align 8
  %4028 = inttoptr i64 %4026 to i32*
  store i32 %3996, i32* %4028, align 4
  %4029 = load i64, i64* %RBP.i, align 8
  %4030 = add i64 %4029, -16
  %4031 = load i64, i64* %3, align 8
  %4032 = add i64 %4031, 4
  store i64 %4032, i64* %3, align 8
  %4033 = inttoptr i64 %4030 to i32*
  %4034 = load i32, i32* %4033, align 4
  %4035 = sext i32 %4034 to i64
  store i64 %4035, i64* %RAX.i1724, align 8
  %4036 = shl nsw i64 %4035, 2
  %4037 = add i64 %4029, -768
  %4038 = add i64 %4037, %4036
  %4039 = add i64 %4031, 11
  store i64 %4039, i64* %3, align 8
  %4040 = inttoptr i64 %4038 to i32*
  %4041 = load i32, i32* %4040, align 4
  %4042 = zext i32 %4041 to i64
  store i64 %4042, i64* %RCX.i657, align 8
  %4043 = add i64 %4031, 15
  store i64 %4043, i64* %3, align 8
  %4044 = load i32, i32* %4033, align 4
  %4045 = sext i32 %4044 to i64
  store i64 %4045, i64* %RAX.i1724, align 8
  %4046 = shl nsw i64 %4045, 2
  %4047 = add nsw i64 %4046, -704
  %4048 = add i64 %4047, %4029
  %4049 = add i64 %4031, 22
  store i64 %4049, i64* %3, align 8
  %4050 = inttoptr i64 %4048 to i32*
  %4051 = load i32, i32* %4050, align 4
  %4052 = sub i32 %4041, %4051
  %4053 = zext i32 %4052 to i64
  store i64 %4053, i64* %RCX.i657, align 8
  %4054 = icmp ult i32 %4041, %4051
  %4055 = zext i1 %4054 to i8
  store i8 %4055, i8* %14, align 1
  %4056 = and i32 %4052, 255
  %4057 = tail call i32 @llvm.ctpop.i32(i32 %4056)
  %4058 = trunc i32 %4057 to i8
  %4059 = and i8 %4058, 1
  %4060 = xor i8 %4059, 1
  store i8 %4060, i8* %21, align 1
  %4061 = xor i32 %4051, %4041
  %4062 = xor i32 %4061, %4052
  %4063 = lshr i32 %4062, 4
  %4064 = trunc i32 %4063 to i8
  %4065 = and i8 %4064, 1
  store i8 %4065, i8* %27, align 1
  %4066 = icmp eq i32 %4052, 0
  %4067 = zext i1 %4066 to i8
  store i8 %4067, i8* %30, align 1
  %4068 = lshr i32 %4052, 31
  %4069 = trunc i32 %4068 to i8
  store i8 %4069, i8* %33, align 1
  %4070 = lshr i32 %4041, 31
  %4071 = lshr i32 %4051, 31
  %4072 = xor i32 %4071, %4070
  %4073 = xor i32 %4068, %4070
  %4074 = add nuw nsw i32 %4073, %4072
  %4075 = icmp eq i32 %4074, 2
  %4076 = zext i1 %4075 to i8
  store i8 %4076, i8* %39, align 1
  %4077 = add i64 %4031, 26
  store i64 %4077, i64* %3, align 8
  %4078 = load i32, i32* %4033, align 4
  %4079 = sext i32 %4078 to i64
  store i64 %4079, i64* %RAX.i1724, align 8
  %4080 = shl nsw i64 %4079, 2
  %4081 = add i64 %4029, -192
  %4082 = add i64 %4081, %4080
  %4083 = add i64 %4031, 33
  store i64 %4083, i64* %3, align 8
  %4084 = inttoptr i64 %4082 to i32*
  store i32 %4052, i32* %4084, align 4
  %4085 = load i64, i64* %RBP.i, align 8
  %4086 = add i64 %4085, -16
  %4087 = load i64, i64* %3, align 8
  %4088 = add i64 %4087, 4
  store i64 %4088, i64* %3, align 8
  %4089 = inttoptr i64 %4086 to i32*
  %4090 = load i32, i32* %4089, align 4
  %4091 = sext i32 %4090 to i64
  store i64 %4091, i64* %RAX.i1724, align 8
  %4092 = shl nsw i64 %4091, 2
  %4093 = add i64 %4085, -672
  %4094 = add i64 %4093, %4092
  %4095 = add i64 %4087, 11
  store i64 %4095, i64* %3, align 8
  %4096 = inttoptr i64 %4094 to i32*
  %4097 = load i32, i32* %4096, align 4
  %4098 = zext i32 %4097 to i64
  store i64 %4098, i64* %RCX.i657, align 8
  %4099 = add i64 %4087, 15
  store i64 %4099, i64* %3, align 8
  %4100 = load i32, i32* %4089, align 4
  %4101 = sext i32 %4100 to i64
  store i64 %4101, i64* %RAX.i1724, align 8
  %4102 = shl nsw i64 %4101, 2
  %4103 = add nsw i64 %4102, -608
  %4104 = add i64 %4103, %4085
  %4105 = add i64 %4087, 22
  store i64 %4105, i64* %3, align 8
  %4106 = inttoptr i64 %4104 to i32*
  %4107 = load i32, i32* %4106, align 4
  %4108 = add i32 %4107, %4097
  %4109 = zext i32 %4108 to i64
  store i64 %4109, i64* %RCX.i657, align 8
  %4110 = icmp ult i32 %4108, %4097
  %4111 = icmp ult i32 %4108, %4107
  %4112 = or i1 %4110, %4111
  %4113 = zext i1 %4112 to i8
  store i8 %4113, i8* %14, align 1
  %4114 = and i32 %4108, 255
  %4115 = tail call i32 @llvm.ctpop.i32(i32 %4114)
  %4116 = trunc i32 %4115 to i8
  %4117 = and i8 %4116, 1
  %4118 = xor i8 %4117, 1
  store i8 %4118, i8* %21, align 1
  %4119 = xor i32 %4107, %4097
  %4120 = xor i32 %4119, %4108
  %4121 = lshr i32 %4120, 4
  %4122 = trunc i32 %4121 to i8
  %4123 = and i8 %4122, 1
  store i8 %4123, i8* %27, align 1
  %4124 = icmp eq i32 %4108, 0
  %4125 = zext i1 %4124 to i8
  store i8 %4125, i8* %30, align 1
  %4126 = lshr i32 %4108, 31
  %4127 = trunc i32 %4126 to i8
  store i8 %4127, i8* %33, align 1
  %4128 = lshr i32 %4097, 31
  %4129 = lshr i32 %4107, 31
  %4130 = xor i32 %4126, %4128
  %4131 = xor i32 %4126, %4129
  %4132 = add nuw nsw i32 %4130, %4131
  %4133 = icmp eq i32 %4132, 2
  %4134 = zext i1 %4133 to i8
  store i8 %4134, i8* %39, align 1
  %4135 = add i64 %4087, 26
  store i64 %4135, i64* %3, align 8
  %4136 = load i32, i32* %4089, align 4
  %4137 = sext i32 %4136 to i64
  store i64 %4137, i64* %RAX.i1724, align 8
  %4138 = shl nsw i64 %4137, 2
  %4139 = add i64 %4085, -160
  %4140 = add i64 %4139, %4138
  %4141 = add i64 %4087, 33
  store i64 %4141, i64* %3, align 8
  %4142 = inttoptr i64 %4140 to i32*
  store i32 %4108, i32* %4142, align 4
  %4143 = load i64, i64* %RBP.i, align 8
  %4144 = add i64 %4143, -16
  %4145 = load i64, i64* %3, align 8
  %4146 = add i64 %4145, 4
  store i64 %4146, i64* %3, align 8
  %4147 = inttoptr i64 %4144 to i32*
  %4148 = load i32, i32* %4147, align 4
  %4149 = sext i32 %4148 to i64
  store i64 %4149, i64* %RAX.i1724, align 8
  %4150 = shl nsw i64 %4149, 2
  %4151 = add i64 %4143, -640
  %4152 = add i64 %4151, %4150
  %4153 = add i64 %4145, 11
  store i64 %4153, i64* %3, align 8
  %4154 = inttoptr i64 %4152 to i32*
  %4155 = load i32, i32* %4154, align 4
  %4156 = zext i32 %4155 to i64
  store i64 %4156, i64* %RCX.i657, align 8
  %4157 = add i64 %4145, 15
  store i64 %4157, i64* %3, align 8
  %4158 = load i32, i32* %4147, align 4
  %4159 = sext i32 %4158 to i64
  store i64 %4159, i64* %RAX.i1724, align 8
  %4160 = shl nsw i64 %4159, 2
  %4161 = add nsw i64 %4160, -576
  %4162 = add i64 %4161, %4143
  %4163 = add i64 %4145, 22
  store i64 %4163, i64* %3, align 8
  %4164 = inttoptr i64 %4162 to i32*
  %4165 = load i32, i32* %4164, align 4
  %4166 = add i32 %4165, %4155
  %4167 = zext i32 %4166 to i64
  store i64 %4167, i64* %RCX.i657, align 8
  %4168 = icmp ult i32 %4166, %4155
  %4169 = icmp ult i32 %4166, %4165
  %4170 = or i1 %4168, %4169
  %4171 = zext i1 %4170 to i8
  store i8 %4171, i8* %14, align 1
  %4172 = and i32 %4166, 255
  %4173 = tail call i32 @llvm.ctpop.i32(i32 %4172)
  %4174 = trunc i32 %4173 to i8
  %4175 = and i8 %4174, 1
  %4176 = xor i8 %4175, 1
  store i8 %4176, i8* %21, align 1
  %4177 = xor i32 %4165, %4155
  %4178 = xor i32 %4177, %4166
  %4179 = lshr i32 %4178, 4
  %4180 = trunc i32 %4179 to i8
  %4181 = and i8 %4180, 1
  store i8 %4181, i8* %27, align 1
  %4182 = icmp eq i32 %4166, 0
  %4183 = zext i1 %4182 to i8
  store i8 %4183, i8* %30, align 1
  %4184 = lshr i32 %4166, 31
  %4185 = trunc i32 %4184 to i8
  store i8 %4185, i8* %33, align 1
  %4186 = lshr i32 %4155, 31
  %4187 = lshr i32 %4165, 31
  %4188 = xor i32 %4184, %4186
  %4189 = xor i32 %4184, %4187
  %4190 = add nuw nsw i32 %4188, %4189
  %4191 = icmp eq i32 %4190, 2
  %4192 = zext i1 %4191 to i8
  store i8 %4192, i8* %39, align 1
  %4193 = add i64 %4145, 26
  store i64 %4193, i64* %3, align 8
  %4194 = load i32, i32* %4147, align 4
  %4195 = sext i32 %4194 to i64
  store i64 %4195, i64* %RAX.i1724, align 8
  %4196 = shl nsw i64 %4195, 2
  %4197 = add i64 %4143, -128
  %4198 = add i64 %4197, %4196
  %4199 = add i64 %4145, 30
  store i64 %4199, i64* %3, align 8
  %4200 = inttoptr i64 %4198 to i32*
  store i32 %4166, i32* %4200, align 4
  %4201 = load i64, i64* %RBP.i, align 8
  %4202 = add i64 %4201, -16
  %4203 = load i64, i64* %3, align 8
  %4204 = add i64 %4203, 4
  store i64 %4204, i64* %3, align 8
  %4205 = inttoptr i64 %4202 to i32*
  %4206 = load i32, i32* %4205, align 4
  %4207 = sext i32 %4206 to i64
  store i64 %4207, i64* %RAX.i1724, align 8
  %4208 = shl nsw i64 %4207, 2
  %4209 = add i64 %4201, -672
  %4210 = add i64 %4209, %4208
  %4211 = add i64 %4203, 11
  store i64 %4211, i64* %3, align 8
  %4212 = inttoptr i64 %4210 to i32*
  %4213 = load i32, i32* %4212, align 4
  %4214 = zext i32 %4213 to i64
  store i64 %4214, i64* %RCX.i657, align 8
  %4215 = add i64 %4203, 15
  store i64 %4215, i64* %3, align 8
  %4216 = load i32, i32* %4205, align 4
  %4217 = sext i32 %4216 to i64
  store i64 %4217, i64* %RAX.i1724, align 8
  %4218 = shl nsw i64 %4217, 2
  %4219 = add nsw i64 %4218, -608
  %4220 = add i64 %4219, %4201
  %4221 = add i64 %4203, 22
  store i64 %4221, i64* %3, align 8
  %4222 = inttoptr i64 %4220 to i32*
  %4223 = load i32, i32* %4222, align 4
  %4224 = sub i32 %4213, %4223
  %4225 = zext i32 %4224 to i64
  store i64 %4225, i64* %RCX.i657, align 8
  %4226 = icmp ult i32 %4213, %4223
  %4227 = zext i1 %4226 to i8
  store i8 %4227, i8* %14, align 1
  %4228 = and i32 %4224, 255
  %4229 = tail call i32 @llvm.ctpop.i32(i32 %4228)
  %4230 = trunc i32 %4229 to i8
  %4231 = and i8 %4230, 1
  %4232 = xor i8 %4231, 1
  store i8 %4232, i8* %21, align 1
  %4233 = xor i32 %4223, %4213
  %4234 = xor i32 %4233, %4224
  %4235 = lshr i32 %4234, 4
  %4236 = trunc i32 %4235 to i8
  %4237 = and i8 %4236, 1
  store i8 %4237, i8* %27, align 1
  %4238 = icmp eq i32 %4224, 0
  %4239 = zext i1 %4238 to i8
  store i8 %4239, i8* %30, align 1
  %4240 = lshr i32 %4224, 31
  %4241 = trunc i32 %4240 to i8
  store i8 %4241, i8* %33, align 1
  %4242 = lshr i32 %4213, 31
  %4243 = lshr i32 %4223, 31
  %4244 = xor i32 %4243, %4242
  %4245 = xor i32 %4240, %4242
  %4246 = add nuw nsw i32 %4245, %4244
  %4247 = icmp eq i32 %4246, 2
  %4248 = zext i1 %4247 to i8
  store i8 %4248, i8* %39, align 1
  %4249 = add i64 %4203, 26
  store i64 %4249, i64* %3, align 8
  %4250 = load i32, i32* %4205, align 4
  %4251 = sext i32 %4250 to i64
  store i64 %4251, i64* %RAX.i1724, align 8
  %4252 = shl nsw i64 %4251, 2
  %4253 = add i64 %4201, -96
  %4254 = add i64 %4253, %4252
  %4255 = add i64 %4203, 30
  store i64 %4255, i64* %3, align 8
  %4256 = inttoptr i64 %4254 to i32*
  store i32 %4224, i32* %4256, align 4
  %4257 = load i64, i64* %RBP.i, align 8
  %4258 = add i64 %4257, -16
  %4259 = load i64, i64* %3, align 8
  %4260 = add i64 %4259, 4
  store i64 %4260, i64* %3, align 8
  %4261 = inttoptr i64 %4258 to i32*
  %4262 = load i32, i32* %4261, align 4
  %4263 = sext i32 %4262 to i64
  store i64 %4263, i64* %RAX.i1724, align 8
  %4264 = shl nsw i64 %4263, 2
  %4265 = add i64 %4257, -640
  %4266 = add i64 %4265, %4264
  %4267 = add i64 %4259, 11
  store i64 %4267, i64* %3, align 8
  %4268 = inttoptr i64 %4266 to i32*
  %4269 = load i32, i32* %4268, align 4
  %4270 = zext i32 %4269 to i64
  store i64 %4270, i64* %RCX.i657, align 8
  %4271 = add i64 %4259, 15
  store i64 %4271, i64* %3, align 8
  %4272 = load i32, i32* %4261, align 4
  %4273 = sext i32 %4272 to i64
  store i64 %4273, i64* %RAX.i1724, align 8
  %4274 = shl nsw i64 %4273, 2
  %4275 = add nsw i64 %4274, -576
  %4276 = add i64 %4275, %4257
  %4277 = add i64 %4259, 22
  store i64 %4277, i64* %3, align 8
  %4278 = inttoptr i64 %4276 to i32*
  %4279 = load i32, i32* %4278, align 4
  %4280 = sub i32 %4269, %4279
  %4281 = zext i32 %4280 to i64
  store i64 %4281, i64* %RCX.i657, align 8
  %4282 = icmp ult i32 %4269, %4279
  %4283 = zext i1 %4282 to i8
  store i8 %4283, i8* %14, align 1
  %4284 = and i32 %4280, 255
  %4285 = tail call i32 @llvm.ctpop.i32(i32 %4284)
  %4286 = trunc i32 %4285 to i8
  %4287 = and i8 %4286, 1
  %4288 = xor i8 %4287, 1
  store i8 %4288, i8* %21, align 1
  %4289 = xor i32 %4279, %4269
  %4290 = xor i32 %4289, %4280
  %4291 = lshr i32 %4290, 4
  %4292 = trunc i32 %4291 to i8
  %4293 = and i8 %4292, 1
  store i8 %4293, i8* %27, align 1
  %4294 = icmp eq i32 %4280, 0
  %4295 = zext i1 %4294 to i8
  store i8 %4295, i8* %30, align 1
  %4296 = lshr i32 %4280, 31
  %4297 = trunc i32 %4296 to i8
  store i8 %4297, i8* %33, align 1
  %4298 = lshr i32 %4269, 31
  %4299 = lshr i32 %4279, 31
  %4300 = xor i32 %4299, %4298
  %4301 = xor i32 %4296, %4298
  %4302 = add nuw nsw i32 %4301, %4300
  %4303 = icmp eq i32 %4302, 2
  %4304 = zext i1 %4303 to i8
  store i8 %4304, i8* %39, align 1
  %4305 = add i64 %4259, 26
  store i64 %4305, i64* %3, align 8
  %4306 = load i32, i32* %4261, align 4
  %4307 = sext i32 %4306 to i64
  store i64 %4307, i64* %RAX.i1724, align 8
  %4308 = shl nsw i64 %4307, 2
  %4309 = add i64 %4257, -64
  %4310 = add i64 %4309, %4308
  %4311 = add i64 %4259, 30
  store i64 %4311, i64* %3, align 8
  %4312 = inttoptr i64 %4310 to i32*
  store i32 %4280, i32* %4312, align 4
  %4313 = load i64, i64* %RBP.i, align 8
  %4314 = add i64 %4313, -16
  %4315 = load i64, i64* %3, align 8
  %4316 = add i64 %4315, 4
  store i64 %4316, i64* %3, align 8
  %4317 = inttoptr i64 %4314 to i32*
  %4318 = load i32, i32* %4317, align 4
  %4319 = sext i32 %4318 to i64
  store i64 %4319, i64* %RAX.i1724, align 8
  %4320 = shl nsw i64 %4319, 2
  %4321 = add i64 %4313, -288
  %4322 = add i64 %4321, %4320
  %4323 = add i64 %4315, 11
  store i64 %4323, i64* %3, align 8
  %4324 = inttoptr i64 %4322 to i32*
  %4325 = load i32, i32* %4324, align 4
  %4326 = zext i32 %4325 to i64
  store i64 %4326, i64* %RCX.i657, align 8
  %4327 = add i64 %4315, 15
  store i64 %4327, i64* %3, align 8
  %4328 = load i32, i32* %4317, align 4
  %4329 = sext i32 %4328 to i64
  store i64 %4329, i64* %RAX.i1724, align 8
  %4330 = shl nsw i64 %4329, 2
  %4331 = add nsw i64 %4330, -256
  %4332 = add i64 %4331, %4313
  %4333 = add i64 %4315, 22
  store i64 %4333, i64* %3, align 8
  %4334 = inttoptr i64 %4332 to i32*
  %4335 = load i32, i32* %4334, align 4
  %4336 = add i32 %4335, %4325
  %4337 = zext i32 %4336 to i64
  store i64 %4337, i64* %RCX.i657, align 8
  %4338 = icmp ult i32 %4336, %4325
  %4339 = icmp ult i32 %4336, %4335
  %4340 = or i1 %4338, %4339
  %4341 = zext i1 %4340 to i8
  store i8 %4341, i8* %14, align 1
  %4342 = and i32 %4336, 255
  %4343 = tail call i32 @llvm.ctpop.i32(i32 %4342)
  %4344 = trunc i32 %4343 to i8
  %4345 = and i8 %4344, 1
  %4346 = xor i8 %4345, 1
  store i8 %4346, i8* %21, align 1
  %4347 = xor i32 %4335, %4325
  %4348 = xor i32 %4347, %4336
  %4349 = lshr i32 %4348, 4
  %4350 = trunc i32 %4349 to i8
  %4351 = and i8 %4350, 1
  store i8 %4351, i8* %27, align 1
  %4352 = icmp eq i32 %4336, 0
  %4353 = zext i1 %4352 to i8
  store i8 %4353, i8* %30, align 1
  %4354 = lshr i32 %4336, 31
  %4355 = trunc i32 %4354 to i8
  store i8 %4355, i8* %33, align 1
  %4356 = lshr i32 %4325, 31
  %4357 = lshr i32 %4335, 31
  %4358 = xor i32 %4354, %4356
  %4359 = xor i32 %4354, %4357
  %4360 = add nuw nsw i32 %4358, %4359
  %4361 = icmp eq i32 %4360, 2
  %4362 = zext i1 %4361 to i8
  store i8 %4362, i8* %39, align 1
  %4363 = add i64 %4315, 26
  store i64 %4363, i64* %3, align 8
  %4364 = load i32, i32* %4317, align 4
  %4365 = sext i32 %4364 to i64
  store i64 %4365, i64* %RAX.i1724, align 8
  %4366 = shl nsw i64 %4365, 2
  %4367 = add i64 %4313, -544
  %4368 = add i64 %4367, %4366
  %4369 = add i64 %4315, 33
  store i64 %4369, i64* %3, align 8
  %4370 = inttoptr i64 %4368 to i32*
  store i32 %4336, i32* %4370, align 4
  %4371 = load i64, i64* %RBP.i, align 8
  %4372 = add i64 %4371, -16
  %4373 = load i64, i64* %3, align 8
  %4374 = add i64 %4373, 4
  store i64 %4374, i64* %3, align 8
  %4375 = inttoptr i64 %4372 to i32*
  %4376 = load i32, i32* %4375, align 4
  %4377 = sext i32 %4376 to i64
  store i64 %4377, i64* %RAX.i1724, align 8
  %4378 = shl nsw i64 %4377, 2
  %4379 = add i64 %4371, -288
  %4380 = add i64 %4379, %4378
  %4381 = add i64 %4373, 11
  store i64 %4381, i64* %3, align 8
  %4382 = inttoptr i64 %4380 to i32*
  %4383 = load i32, i32* %4382, align 4
  %4384 = zext i32 %4383 to i64
  store i64 %4384, i64* %RCX.i657, align 8
  %4385 = add i64 %4373, 15
  store i64 %4385, i64* %3, align 8
  %4386 = load i32, i32* %4375, align 4
  %4387 = sext i32 %4386 to i64
  store i64 %4387, i64* %RAX.i1724, align 8
  %4388 = shl nsw i64 %4387, 2
  %4389 = add nsw i64 %4388, -256
  %4390 = add i64 %4389, %4371
  %4391 = add i64 %4373, 22
  store i64 %4391, i64* %3, align 8
  %4392 = inttoptr i64 %4390 to i32*
  %4393 = load i32, i32* %4392, align 4
  %4394 = sub i32 %4383, %4393
  %4395 = zext i32 %4394 to i64
  store i64 %4395, i64* %RCX.i657, align 8
  %4396 = icmp ult i32 %4383, %4393
  %4397 = zext i1 %4396 to i8
  store i8 %4397, i8* %14, align 1
  %4398 = and i32 %4394, 255
  %4399 = tail call i32 @llvm.ctpop.i32(i32 %4398)
  %4400 = trunc i32 %4399 to i8
  %4401 = and i8 %4400, 1
  %4402 = xor i8 %4401, 1
  store i8 %4402, i8* %21, align 1
  %4403 = xor i32 %4393, %4383
  %4404 = xor i32 %4403, %4394
  %4405 = lshr i32 %4404, 4
  %4406 = trunc i32 %4405 to i8
  %4407 = and i8 %4406, 1
  store i8 %4407, i8* %27, align 1
  %4408 = icmp eq i32 %4394, 0
  %4409 = zext i1 %4408 to i8
  store i8 %4409, i8* %30, align 1
  %4410 = lshr i32 %4394, 31
  %4411 = trunc i32 %4410 to i8
  store i8 %4411, i8* %33, align 1
  %4412 = lshr i32 %4383, 31
  %4413 = lshr i32 %4393, 31
  %4414 = xor i32 %4413, %4412
  %4415 = xor i32 %4410, %4412
  %4416 = add nuw nsw i32 %4415, %4414
  %4417 = icmp eq i32 %4416, 2
  %4418 = zext i1 %4417 to i8
  store i8 %4418, i8* %39, align 1
  %4419 = add i64 %4373, 26
  store i64 %4419, i64* %3, align 8
  %4420 = load i32, i32* %4375, align 4
  %4421 = sext i32 %4420 to i64
  store i64 %4421, i64* %RAX.i1724, align 8
  %4422 = shl nsw i64 %4421, 2
  %4423 = add i64 %4371, -512
  %4424 = add i64 %4423, %4422
  %4425 = add i64 %4373, 33
  store i64 %4425, i64* %3, align 8
  %4426 = inttoptr i64 %4424 to i32*
  store i32 %4394, i32* %4426, align 4
  %4427 = load i64, i64* %RBP.i, align 8
  %4428 = add i64 %4427, -16
  %4429 = load i64, i64* %3, align 8
  %4430 = add i64 %4429, 4
  store i64 %4430, i64* %3, align 8
  %4431 = inttoptr i64 %4428 to i32*
  %4432 = load i32, i32* %4431, align 4
  %4433 = sext i32 %4432 to i64
  store i64 %4433, i64* %RAX.i1724, align 8
  %4434 = shl nsw i64 %4433, 2
  %4435 = add i64 %4427, -224
  %4436 = add i64 %4435, %4434
  %4437 = add i64 %4429, 11
  store i64 %4437, i64* %3, align 8
  %4438 = inttoptr i64 %4436 to i32*
  %4439 = load i32, i32* %4438, align 4
  %4440 = zext i32 %4439 to i64
  store i64 %4440, i64* %RCX.i657, align 8
  %4441 = add i64 %4429, 15
  store i64 %4441, i64* %3, align 8
  %4442 = load i32, i32* %4431, align 4
  %4443 = sext i32 %4442 to i64
  store i64 %4443, i64* %RAX.i1724, align 8
  %4444 = shl nsw i64 %4443, 2
  %4445 = add nsw i64 %4444, -192
  %4446 = add i64 %4445, %4427
  %4447 = add i64 %4429, 22
  store i64 %4447, i64* %3, align 8
  %4448 = inttoptr i64 %4446 to i32*
  %4449 = load i32, i32* %4448, align 4
  %4450 = add i32 %4449, %4439
  %4451 = zext i32 %4450 to i64
  store i64 %4451, i64* %RCX.i657, align 8
  %4452 = icmp ult i32 %4450, %4439
  %4453 = icmp ult i32 %4450, %4449
  %4454 = or i1 %4452, %4453
  %4455 = zext i1 %4454 to i8
  store i8 %4455, i8* %14, align 1
  %4456 = and i32 %4450, 255
  %4457 = tail call i32 @llvm.ctpop.i32(i32 %4456)
  %4458 = trunc i32 %4457 to i8
  %4459 = and i8 %4458, 1
  %4460 = xor i8 %4459, 1
  store i8 %4460, i8* %21, align 1
  %4461 = xor i32 %4449, %4439
  %4462 = xor i32 %4461, %4450
  %4463 = lshr i32 %4462, 4
  %4464 = trunc i32 %4463 to i8
  %4465 = and i8 %4464, 1
  store i8 %4465, i8* %27, align 1
  %4466 = icmp eq i32 %4450, 0
  %4467 = zext i1 %4466 to i8
  store i8 %4467, i8* %30, align 1
  %4468 = lshr i32 %4450, 31
  %4469 = trunc i32 %4468 to i8
  store i8 %4469, i8* %33, align 1
  %4470 = lshr i32 %4439, 31
  %4471 = lshr i32 %4449, 31
  %4472 = xor i32 %4468, %4470
  %4473 = xor i32 %4468, %4471
  %4474 = add nuw nsw i32 %4472, %4473
  %4475 = icmp eq i32 %4474, 2
  %4476 = zext i1 %4475 to i8
  store i8 %4476, i8* %39, align 1
  %4477 = add i64 %4429, 26
  store i64 %4477, i64* %3, align 8
  %4478 = load i32, i32* %4431, align 4
  %4479 = sext i32 %4478 to i64
  store i64 %4479, i64* %RAX.i1724, align 8
  %4480 = shl nsw i64 %4479, 2
  %4481 = add i64 %4427, -480
  %4482 = add i64 %4481, %4480
  %4483 = add i64 %4429, 33
  store i64 %4483, i64* %3, align 8
  %4484 = inttoptr i64 %4482 to i32*
  store i32 %4450, i32* %4484, align 4
  %4485 = load i64, i64* %RBP.i, align 8
  %4486 = add i64 %4485, -16
  %4487 = load i64, i64* %3, align 8
  %4488 = add i64 %4487, 4
  store i64 %4488, i64* %3, align 8
  %4489 = inttoptr i64 %4486 to i32*
  %4490 = load i32, i32* %4489, align 4
  %4491 = sext i32 %4490 to i64
  store i64 %4491, i64* %RAX.i1724, align 8
  %4492 = shl nsw i64 %4491, 2
  %4493 = add i64 %4485, -224
  %4494 = add i64 %4493, %4492
  %4495 = add i64 %4487, 11
  store i64 %4495, i64* %3, align 8
  %4496 = inttoptr i64 %4494 to i32*
  %4497 = load i32, i32* %4496, align 4
  %4498 = zext i32 %4497 to i64
  store i64 %4498, i64* %RCX.i657, align 8
  %4499 = add i64 %4487, 15
  store i64 %4499, i64* %3, align 8
  %4500 = load i32, i32* %4489, align 4
  %4501 = sext i32 %4500 to i64
  store i64 %4501, i64* %RAX.i1724, align 8
  %4502 = shl nsw i64 %4501, 2
  %4503 = add nsw i64 %4502, -192
  %4504 = add i64 %4503, %4485
  %4505 = add i64 %4487, 22
  store i64 %4505, i64* %3, align 8
  %4506 = inttoptr i64 %4504 to i32*
  %4507 = load i32, i32* %4506, align 4
  %4508 = sub i32 %4497, %4507
  %4509 = zext i32 %4508 to i64
  store i64 %4509, i64* %RCX.i657, align 8
  %4510 = icmp ult i32 %4497, %4507
  %4511 = zext i1 %4510 to i8
  store i8 %4511, i8* %14, align 1
  %4512 = and i32 %4508, 255
  %4513 = tail call i32 @llvm.ctpop.i32(i32 %4512)
  %4514 = trunc i32 %4513 to i8
  %4515 = and i8 %4514, 1
  %4516 = xor i8 %4515, 1
  store i8 %4516, i8* %21, align 1
  %4517 = xor i32 %4507, %4497
  %4518 = xor i32 %4517, %4508
  %4519 = lshr i32 %4518, 4
  %4520 = trunc i32 %4519 to i8
  %4521 = and i8 %4520, 1
  store i8 %4521, i8* %27, align 1
  %4522 = icmp eq i32 %4508, 0
  %4523 = zext i1 %4522 to i8
  store i8 %4523, i8* %30, align 1
  %4524 = lshr i32 %4508, 31
  %4525 = trunc i32 %4524 to i8
  store i8 %4525, i8* %33, align 1
  %4526 = lshr i32 %4497, 31
  %4527 = lshr i32 %4507, 31
  %4528 = xor i32 %4527, %4526
  %4529 = xor i32 %4524, %4526
  %4530 = add nuw nsw i32 %4529, %4528
  %4531 = icmp eq i32 %4530, 2
  %4532 = zext i1 %4531 to i8
  store i8 %4532, i8* %39, align 1
  %4533 = add i64 %4487, 26
  store i64 %4533, i64* %3, align 8
  %4534 = load i32, i32* %4489, align 4
  %4535 = sext i32 %4534 to i64
  store i64 %4535, i64* %RAX.i1724, align 8
  %4536 = shl nsw i64 %4535, 2
  %4537 = add i64 %4485, -448
  %4538 = add i64 %4537, %4536
  %4539 = add i64 %4487, 33
  store i64 %4539, i64* %3, align 8
  %4540 = inttoptr i64 %4538 to i32*
  store i32 %4508, i32* %4540, align 4
  %4541 = load i64, i64* %RBP.i, align 8
  %4542 = add i64 %4541, -16
  %4543 = load i64, i64* %3, align 8
  %4544 = add i64 %4543, 4
  store i64 %4544, i64* %3, align 8
  %4545 = inttoptr i64 %4542 to i32*
  %4546 = load i32, i32* %4545, align 4
  %4547 = sext i32 %4546 to i64
  store i64 %4547, i64* %RAX.i1724, align 8
  %4548 = shl nsw i64 %4547, 2
  %4549 = add i64 %4541, -160
  %4550 = add i64 %4549, %4548
  %4551 = add i64 %4543, 11
  store i64 %4551, i64* %3, align 8
  %4552 = inttoptr i64 %4550 to i32*
  %4553 = load i32, i32* %4552, align 4
  %4554 = zext i32 %4553 to i64
  store i64 %4554, i64* %RCX.i657, align 8
  %4555 = add i64 %4543, 15
  store i64 %4555, i64* %3, align 8
  %4556 = load i32, i32* %4545, align 4
  %4557 = sext i32 %4556 to i64
  store i64 %4557, i64* %RAX.i1724, align 8
  %4558 = shl nsw i64 %4557, 2
  %4559 = add nsw i64 %4558, -128
  %4560 = add i64 %4559, %4541
  %4561 = add i64 %4543, 19
  store i64 %4561, i64* %3, align 8
  %4562 = inttoptr i64 %4560 to i32*
  %4563 = load i32, i32* %4562, align 4
  %4564 = add i32 %4563, %4553
  %4565 = zext i32 %4564 to i64
  store i64 %4565, i64* %RCX.i657, align 8
  %4566 = icmp ult i32 %4564, %4553
  %4567 = icmp ult i32 %4564, %4563
  %4568 = or i1 %4566, %4567
  %4569 = zext i1 %4568 to i8
  store i8 %4569, i8* %14, align 1
  %4570 = and i32 %4564, 255
  %4571 = tail call i32 @llvm.ctpop.i32(i32 %4570)
  %4572 = trunc i32 %4571 to i8
  %4573 = and i8 %4572, 1
  %4574 = xor i8 %4573, 1
  store i8 %4574, i8* %21, align 1
  %4575 = xor i32 %4563, %4553
  %4576 = xor i32 %4575, %4564
  %4577 = lshr i32 %4576, 4
  %4578 = trunc i32 %4577 to i8
  %4579 = and i8 %4578, 1
  store i8 %4579, i8* %27, align 1
  %4580 = icmp eq i32 %4564, 0
  %4581 = zext i1 %4580 to i8
  store i8 %4581, i8* %30, align 1
  %4582 = lshr i32 %4564, 31
  %4583 = trunc i32 %4582 to i8
  store i8 %4583, i8* %33, align 1
  %4584 = lshr i32 %4553, 31
  %4585 = lshr i32 %4563, 31
  %4586 = xor i32 %4582, %4584
  %4587 = xor i32 %4582, %4585
  %4588 = add nuw nsw i32 %4586, %4587
  %4589 = icmp eq i32 %4588, 2
  %4590 = zext i1 %4589 to i8
  store i8 %4590, i8* %39, align 1
  %4591 = add i64 %4543, 23
  store i64 %4591, i64* %3, align 8
  %4592 = load i32, i32* %4545, align 4
  %4593 = sext i32 %4592 to i64
  store i64 %4593, i64* %RAX.i1724, align 8
  %4594 = shl nsw i64 %4593, 2
  %4595 = add i64 %4541, -416
  %4596 = add i64 %4595, %4594
  %4597 = add i64 %4543, 30
  store i64 %4597, i64* %3, align 8
  %4598 = inttoptr i64 %4596 to i32*
  store i32 %4564, i32* %4598, align 4
  %4599 = load i64, i64* %RBP.i, align 8
  %4600 = add i64 %4599, -16
  %4601 = load i64, i64* %3, align 8
  %4602 = add i64 %4601, 4
  store i64 %4602, i64* %3, align 8
  %4603 = inttoptr i64 %4600 to i32*
  %4604 = load i32, i32* %4603, align 4
  %4605 = sext i32 %4604 to i64
  store i64 %4605, i64* %RAX.i1724, align 8
  %4606 = shl nsw i64 %4605, 2
  %4607 = add i64 %4599, -160
  %4608 = add i64 %4607, %4606
  %4609 = add i64 %4601, 11
  store i64 %4609, i64* %3, align 8
  %4610 = inttoptr i64 %4608 to i32*
  %4611 = load i32, i32* %4610, align 4
  %4612 = zext i32 %4611 to i64
  store i64 %4612, i64* %RCX.i657, align 8
  %4613 = add i64 %4601, 15
  store i64 %4613, i64* %3, align 8
  %4614 = load i32, i32* %4603, align 4
  %4615 = sext i32 %4614 to i64
  store i64 %4615, i64* %RAX.i1724, align 8
  %4616 = shl nsw i64 %4615, 2
  %4617 = add nsw i64 %4616, -128
  %4618 = add i64 %4617, %4599
  %4619 = add i64 %4601, 19
  store i64 %4619, i64* %3, align 8
  %4620 = inttoptr i64 %4618 to i32*
  %4621 = load i32, i32* %4620, align 4
  %4622 = sub i32 %4611, %4621
  %4623 = zext i32 %4622 to i64
  store i64 %4623, i64* %RCX.i657, align 8
  %4624 = icmp ult i32 %4611, %4621
  %4625 = zext i1 %4624 to i8
  store i8 %4625, i8* %14, align 1
  %4626 = and i32 %4622, 255
  %4627 = tail call i32 @llvm.ctpop.i32(i32 %4626)
  %4628 = trunc i32 %4627 to i8
  %4629 = and i8 %4628, 1
  %4630 = xor i8 %4629, 1
  store i8 %4630, i8* %21, align 1
  %4631 = xor i32 %4621, %4611
  %4632 = xor i32 %4631, %4622
  %4633 = lshr i32 %4632, 4
  %4634 = trunc i32 %4633 to i8
  %4635 = and i8 %4634, 1
  store i8 %4635, i8* %27, align 1
  %4636 = icmp eq i32 %4622, 0
  %4637 = zext i1 %4636 to i8
  store i8 %4637, i8* %30, align 1
  %4638 = lshr i32 %4622, 31
  %4639 = trunc i32 %4638 to i8
  store i8 %4639, i8* %33, align 1
  %4640 = lshr i32 %4611, 31
  %4641 = lshr i32 %4621, 31
  %4642 = xor i32 %4641, %4640
  %4643 = xor i32 %4638, %4640
  %4644 = add nuw nsw i32 %4643, %4642
  %4645 = icmp eq i32 %4644, 2
  %4646 = zext i1 %4645 to i8
  store i8 %4646, i8* %39, align 1
  %4647 = add i64 %4601, 23
  store i64 %4647, i64* %3, align 8
  %4648 = load i32, i32* %4603, align 4
  %4649 = sext i32 %4648 to i64
  store i64 %4649, i64* %RAX.i1724, align 8
  %4650 = shl nsw i64 %4649, 2
  %4651 = add i64 %4599, -384
  %4652 = add i64 %4651, %4650
  %4653 = add i64 %4601, 30
  store i64 %4653, i64* %3, align 8
  %4654 = inttoptr i64 %4652 to i32*
  store i32 %4622, i32* %4654, align 4
  %4655 = load i64, i64* %RBP.i, align 8
  %4656 = add i64 %4655, -16
  %4657 = load i64, i64* %3, align 8
  %4658 = add i64 %4657, 4
  store i64 %4658, i64* %3, align 8
  %4659 = inttoptr i64 %4656 to i32*
  %4660 = load i32, i32* %4659, align 4
  %4661 = sext i32 %4660 to i64
  store i64 %4661, i64* %RAX.i1724, align 8
  %4662 = shl nsw i64 %4661, 2
  %4663 = add i64 %4655, -96
  %4664 = add i64 %4663, %4662
  %4665 = add i64 %4657, 8
  store i64 %4665, i64* %3, align 8
  %4666 = inttoptr i64 %4664 to i32*
  %4667 = load i32, i32* %4666, align 4
  %4668 = zext i32 %4667 to i64
  store i64 %4668, i64* %RCX.i657, align 8
  %4669 = add i64 %4657, 12
  store i64 %4669, i64* %3, align 8
  %4670 = load i32, i32* %4659, align 4
  %4671 = sext i32 %4670 to i64
  store i64 %4671, i64* %RAX.i1724, align 8
  %4672 = shl nsw i64 %4671, 2
  %4673 = add nsw i64 %4672, -64
  %4674 = add i64 %4673, %4655
  %4675 = add i64 %4657, 16
  store i64 %4675, i64* %3, align 8
  %4676 = inttoptr i64 %4674 to i32*
  %4677 = load i32, i32* %4676, align 4
  %4678 = add i32 %4677, %4667
  %4679 = zext i32 %4678 to i64
  store i64 %4679, i64* %RCX.i657, align 8
  %4680 = icmp ult i32 %4678, %4667
  %4681 = icmp ult i32 %4678, %4677
  %4682 = or i1 %4680, %4681
  %4683 = zext i1 %4682 to i8
  store i8 %4683, i8* %14, align 1
  %4684 = and i32 %4678, 255
  %4685 = tail call i32 @llvm.ctpop.i32(i32 %4684)
  %4686 = trunc i32 %4685 to i8
  %4687 = and i8 %4686, 1
  %4688 = xor i8 %4687, 1
  store i8 %4688, i8* %21, align 1
  %4689 = xor i32 %4677, %4667
  %4690 = xor i32 %4689, %4678
  %4691 = lshr i32 %4690, 4
  %4692 = trunc i32 %4691 to i8
  %4693 = and i8 %4692, 1
  store i8 %4693, i8* %27, align 1
  %4694 = icmp eq i32 %4678, 0
  %4695 = zext i1 %4694 to i8
  store i8 %4695, i8* %30, align 1
  %4696 = lshr i32 %4678, 31
  %4697 = trunc i32 %4696 to i8
  store i8 %4697, i8* %33, align 1
  %4698 = lshr i32 %4667, 31
  %4699 = lshr i32 %4677, 31
  %4700 = xor i32 %4696, %4698
  %4701 = xor i32 %4696, %4699
  %4702 = add nuw nsw i32 %4700, %4701
  %4703 = icmp eq i32 %4702, 2
  %4704 = zext i1 %4703 to i8
  store i8 %4704, i8* %39, align 1
  %4705 = add i64 %4657, 20
  store i64 %4705, i64* %3, align 8
  %4706 = load i32, i32* %4659, align 4
  %4707 = sext i32 %4706 to i64
  store i64 %4707, i64* %RAX.i1724, align 8
  %4708 = shl nsw i64 %4707, 2
  %4709 = add i64 %4655, -352
  %4710 = add i64 %4709, %4708
  %4711 = add i64 %4657, 27
  store i64 %4711, i64* %3, align 8
  %4712 = inttoptr i64 %4710 to i32*
  store i32 %4678, i32* %4712, align 4
  %4713 = load i64, i64* %RBP.i, align 8
  %4714 = add i64 %4713, -16
  %4715 = load i64, i64* %3, align 8
  %4716 = add i64 %4715, 4
  store i64 %4716, i64* %3, align 8
  %4717 = inttoptr i64 %4714 to i32*
  %4718 = load i32, i32* %4717, align 4
  %4719 = sext i32 %4718 to i64
  store i64 %4719, i64* %RAX.i1724, align 8
  %4720 = shl nsw i64 %4719, 2
  %4721 = add i64 %4713, -96
  %4722 = add i64 %4721, %4720
  %4723 = add i64 %4715, 8
  store i64 %4723, i64* %3, align 8
  %4724 = inttoptr i64 %4722 to i32*
  %4725 = load i32, i32* %4724, align 4
  %4726 = zext i32 %4725 to i64
  store i64 %4726, i64* %RCX.i657, align 8
  %4727 = add i64 %4715, 12
  store i64 %4727, i64* %3, align 8
  %4728 = load i32, i32* %4717, align 4
  %4729 = sext i32 %4728 to i64
  store i64 %4729, i64* %RAX.i1724, align 8
  %4730 = shl nsw i64 %4729, 2
  %4731 = add nsw i64 %4730, -64
  %4732 = add i64 %4731, %4713
  %4733 = add i64 %4715, 16
  store i64 %4733, i64* %3, align 8
  %4734 = inttoptr i64 %4732 to i32*
  %4735 = load i32, i32* %4734, align 4
  %4736 = sub i32 %4725, %4735
  %4737 = zext i32 %4736 to i64
  store i64 %4737, i64* %RCX.i657, align 8
  %4738 = icmp ult i32 %4725, %4735
  %4739 = zext i1 %4738 to i8
  store i8 %4739, i8* %14, align 1
  %4740 = and i32 %4736, 255
  %4741 = tail call i32 @llvm.ctpop.i32(i32 %4740)
  %4742 = trunc i32 %4741 to i8
  %4743 = and i8 %4742, 1
  %4744 = xor i8 %4743, 1
  store i8 %4744, i8* %21, align 1
  %4745 = xor i32 %4735, %4725
  %4746 = xor i32 %4745, %4736
  %4747 = lshr i32 %4746, 4
  %4748 = trunc i32 %4747 to i8
  %4749 = and i8 %4748, 1
  store i8 %4749, i8* %27, align 1
  %4750 = icmp eq i32 %4736, 0
  %4751 = zext i1 %4750 to i8
  store i8 %4751, i8* %30, align 1
  %4752 = lshr i32 %4736, 31
  %4753 = trunc i32 %4752 to i8
  store i8 %4753, i8* %33, align 1
  %4754 = lshr i32 %4725, 31
  %4755 = lshr i32 %4735, 31
  %4756 = xor i32 %4755, %4754
  %4757 = xor i32 %4752, %4754
  %4758 = add nuw nsw i32 %4757, %4756
  %4759 = icmp eq i32 %4758, 2
  %4760 = zext i1 %4759 to i8
  store i8 %4760, i8* %39, align 1
  %4761 = add i64 %4715, 20
  store i64 %4761, i64* %3, align 8
  %4762 = load i32, i32* %4717, align 4
  %4763 = sext i32 %4762 to i64
  store i64 %4763, i64* %RAX.i1724, align 8
  %4764 = shl nsw i64 %4763, 2
  %4765 = add i64 %4713, -320
  %4766 = add i64 %4765, %4764
  %4767 = add i64 %4715, 27
  store i64 %4767, i64* %3, align 8
  %4768 = inttoptr i64 %4766 to i32*
  store i32 %4736, i32* %4768, align 4
  %4769 = load i64, i64* %RBP.i, align 8
  %4770 = add i64 %4769, -16
  %4771 = load i64, i64* %3, align 8
  %4772 = add i64 %4771, 3
  store i64 %4772, i64* %3, align 8
  %4773 = inttoptr i64 %4770 to i32*
  %4774 = load i32, i32* %4773, align 4
  %4775 = add i32 %4774, 1
  %4776 = zext i32 %4775 to i64
  store i64 %4776, i64* %RAX.i1724, align 8
  %4777 = icmp eq i32 %4774, -1
  %4778 = icmp eq i32 %4775, 0
  %4779 = or i1 %4777, %4778
  %4780 = zext i1 %4779 to i8
  store i8 %4780, i8* %14, align 1
  %4781 = and i32 %4775, 255
  %4782 = tail call i32 @llvm.ctpop.i32(i32 %4781)
  %4783 = trunc i32 %4782 to i8
  %4784 = and i8 %4783, 1
  %4785 = xor i8 %4784, 1
  store i8 %4785, i8* %21, align 1
  %4786 = xor i32 %4775, %4774
  %4787 = lshr i32 %4786, 4
  %4788 = trunc i32 %4787 to i8
  %4789 = and i8 %4788, 1
  store i8 %4789, i8* %27, align 1
  %4790 = zext i1 %4778 to i8
  store i8 %4790, i8* %30, align 1
  %4791 = lshr i32 %4775, 31
  %4792 = trunc i32 %4791 to i8
  store i8 %4792, i8* %33, align 1
  %4793 = lshr i32 %4774, 31
  %4794 = xor i32 %4791, %4793
  %4795 = add nuw nsw i32 %4794, %4791
  %4796 = icmp eq i32 %4795, 2
  %4797 = zext i1 %4796 to i8
  store i8 %4797, i8* %39, align 1
  %4798 = add i64 %4771, 9
  store i64 %4798, i64* %3, align 8
  store i32 %4775, i32* %4773, align 4
  %4799 = load i64, i64* %3, align 8
  %4800 = add i64 %4799, -784
  store i64 %4800, i64* %3, align 8
  br label %block_.L_45faf4

block_.L_45fe09:                                  ; preds = %block_.L_45faf4
  %4801 = add i64 %3376, -20
  %4802 = add i64 %3404, 7
  store i64 %4802, i64* %3, align 8
  %4803 = inttoptr i64 %4801 to i32*
  store i32 0, i32* %4803, align 4
  %RDX.i82 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %.pre88 = load i64, i64* %3, align 8
  br label %block_.L_45fe10

block_.L_45fe10:                                  ; preds = %block_.L_45feaa, %block_.L_45fe09
  %4804 = phi i64 [ %5141, %block_.L_45feaa ], [ %.pre88, %block_.L_45fe09 ]
  %4805 = load i64, i64* %RBP.i, align 8
  %4806 = add i64 %4805, -20
  %4807 = add i64 %4804, 4
  store i64 %4807, i64* %3, align 8
  %4808 = inttoptr i64 %4806 to i32*
  %4809 = load i32, i32* %4808, align 4
  %4810 = add i32 %4809, -8
  %4811 = icmp ult i32 %4809, 8
  %4812 = zext i1 %4811 to i8
  store i8 %4812, i8* %14, align 1
  %4813 = and i32 %4810, 255
  %4814 = tail call i32 @llvm.ctpop.i32(i32 %4813)
  %4815 = trunc i32 %4814 to i8
  %4816 = and i8 %4815, 1
  %4817 = xor i8 %4816, 1
  store i8 %4817, i8* %21, align 1
  %4818 = xor i32 %4810, %4809
  %4819 = lshr i32 %4818, 4
  %4820 = trunc i32 %4819 to i8
  %4821 = and i8 %4820, 1
  store i8 %4821, i8* %27, align 1
  %4822 = icmp eq i32 %4810, 0
  %4823 = zext i1 %4822 to i8
  store i8 %4823, i8* %30, align 1
  %4824 = lshr i32 %4810, 31
  %4825 = trunc i32 %4824 to i8
  store i8 %4825, i8* %33, align 1
  %4826 = lshr i32 %4809, 31
  %4827 = xor i32 %4824, %4826
  %4828 = add nuw nsw i32 %4827, %4826
  %4829 = icmp eq i32 %4828, 2
  %4830 = zext i1 %4829 to i8
  store i8 %4830, i8* %39, align 1
  %4831 = icmp ne i8 %4825, 0
  %4832 = xor i1 %4831, %4829
  %.v97 = select i1 %4832, i64 10, i64 173
  %4833 = add i64 %4804, %.v97
  store i64 %4833, i64* %3, align 8
  br i1 %4832, label %block_45fe1a, label %block_.L_45febd

block_45fe1a:                                     ; preds = %block_.L_45fe10
  %4834 = add i64 %4805, -16
  %4835 = add i64 %4833, 7
  store i64 %4835, i64* %3, align 8
  %4836 = inttoptr i64 %4834 to i32*
  store i32 0, i32* %4836, align 4
  %.pre89 = load i64, i64* %3, align 8
  br label %block_.L_45fe21

block_.L_45fe21:                                  ; preds = %block_.L_45fe90, %block_45fe1a
  %4837 = phi i64 [ %5111, %block_.L_45fe90 ], [ %.pre89, %block_45fe1a ]
  %4838 = load i64, i64* %RBP.i, align 8
  %4839 = add i64 %4838, -16
  %4840 = add i64 %4837, 4
  store i64 %4840, i64* %3, align 8
  %4841 = inttoptr i64 %4839 to i32*
  %4842 = load i32, i32* %4841, align 4
  %4843 = add i32 %4842, -8
  %4844 = icmp ult i32 %4842, 8
  %4845 = zext i1 %4844 to i8
  store i8 %4845, i8* %14, align 1
  %4846 = and i32 %4843, 255
  %4847 = tail call i32 @llvm.ctpop.i32(i32 %4846)
  %4848 = trunc i32 %4847 to i8
  %4849 = and i8 %4848, 1
  %4850 = xor i8 %4849, 1
  store i8 %4850, i8* %21, align 1
  %4851 = xor i32 %4843, %4842
  %4852 = lshr i32 %4851, 4
  %4853 = trunc i32 %4852 to i8
  %4854 = and i8 %4853, 1
  store i8 %4854, i8* %27, align 1
  %4855 = icmp eq i32 %4843, 0
  %4856 = zext i1 %4855 to i8
  store i8 %4856, i8* %30, align 1
  %4857 = lshr i32 %4843, 31
  %4858 = trunc i32 %4857 to i8
  store i8 %4858, i8* %33, align 1
  %4859 = lshr i32 %4842, 31
  %4860 = xor i32 %4857, %4859
  %4861 = add nuw nsw i32 %4860, %4859
  %4862 = icmp eq i32 %4861, 2
  %4863 = zext i1 %4862 to i8
  store i8 %4863, i8* %39, align 1
  %4864 = icmp ne i8 %4858, 0
  %4865 = xor i1 %4864, %4862
  %.v93 = select i1 %4865, i64 10, i64 137
  %4866 = add i64 %4837, %.v93
  store i64 %4866, i64* %3, align 8
  br i1 %4865, label %block_45fe2b, label %block_.L_45feaa

block_45fe2b:                                     ; preds = %block_.L_45fe21
  %4867 = add i64 %4838, -544
  store i64 %4867, i64* %RAX.i1724, align 8
  %4868 = add i64 %4838, -20
  %4869 = add i64 %4866, 11
  store i64 %4869, i64* %3, align 8
  %4870 = inttoptr i64 %4868 to i32*
  %4871 = load i32, i32* %4870, align 4
  %4872 = sext i32 %4871 to i64
  %4873 = shl nsw i64 %4872, 5
  store i64 %4873, i64* %RCX.i1721, align 8
  %4874 = add i64 %4873, %4867
  store i64 %4874, i64* %RAX.i1724, align 8
  %4875 = icmp ult i64 %4874, %4867
  %4876 = icmp ult i64 %4874, %4873
  %4877 = or i1 %4875, %4876
  %4878 = zext i1 %4877 to i8
  store i8 %4878, i8* %14, align 1
  %4879 = trunc i64 %4874 to i32
  %4880 = and i32 %4879, 255
  %4881 = tail call i32 @llvm.ctpop.i32(i32 %4880)
  %4882 = trunc i32 %4881 to i8
  %4883 = and i8 %4882, 1
  %4884 = xor i8 %4883, 1
  store i8 %4884, i8* %21, align 1
  %4885 = xor i64 %4867, %4874
  %4886 = lshr i64 %4885, 4
  %4887 = trunc i64 %4886 to i8
  %4888 = and i8 %4887, 1
  store i8 %4888, i8* %27, align 1
  %4889 = icmp eq i64 %4874, 0
  %4890 = zext i1 %4889 to i8
  store i8 %4890, i8* %30, align 1
  %4891 = lshr i64 %4874, 63
  %4892 = trunc i64 %4891 to i8
  store i8 %4892, i8* %33, align 1
  %4893 = lshr i64 %4867, 63
  %4894 = lshr i64 %4872, 58
  %4895 = and i64 %4894, 1
  %4896 = xor i64 %4891, %4893
  %4897 = xor i64 %4891, %4895
  %4898 = add nuw nsw i64 %4896, %4897
  %4899 = icmp eq i64 %4898, 2
  %4900 = zext i1 %4899 to i8
  store i8 %4900, i8* %39, align 1
  %4901 = add i64 %4866, 22
  store i64 %4901, i64* %3, align 8
  %4902 = load i32, i32* %4841, align 4
  %4903 = sext i32 %4902 to i64
  store i64 %4903, i64* %RCX.i1721, align 8
  %4904 = shl nsw i64 %4903, 2
  %4905 = add i64 %4904, %4874
  %4906 = add i64 %4866, 26
  store i64 %4906, i64* %3, align 8
  %4907 = inttoptr i64 %4905 to i32*
  %4908 = load i32, i32* %4907, align 4
  store i8 0, i8* %14, align 1
  %4909 = and i32 %4908, 255
  %4910 = tail call i32 @llvm.ctpop.i32(i32 %4909)
  %4911 = trunc i32 %4910 to i8
  %4912 = and i8 %4911, 1
  %4913 = xor i8 %4912, 1
  store i8 %4913, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %4914 = icmp eq i32 %4908, 0
  %4915 = zext i1 %4914 to i8
  store i8 %4915, i8* %30, align 1
  %4916 = lshr i32 %4908, 31
  %4917 = trunc i32 %4916 to i8
  store i8 %4917, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %4918 = icmp ne i8 %4917, 0
  %.v = select i1 %4918, i64 6, i64 44
  %4919 = add i64 %4906, %.v
  store i64 %4919, i64* %3, align 8
  br i1 %4918, label %block_45fe4b, label %block_.L_45fe71

block_45fe4b:                                     ; preds = %block_45fe2b
  store i64 0, i64* %RAX.i1724, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %4920 = load i64, i64* %RBP.i, align 8
  %4921 = add i64 %4920, -544
  store i64 %4921, i64* %RCX.i1721, align 8
  %4922 = add i64 %4920, -20
  %4923 = add i64 %4919, 13
  store i64 %4923, i64* %3, align 8
  %4924 = inttoptr i64 %4922 to i32*
  %4925 = load i32, i32* %4924, align 4
  %4926 = sext i32 %4925 to i64
  %4927 = shl nsw i64 %4926, 5
  store i64 %4927, i64* %RDX.i1718, align 8
  %4928 = add i64 %4927, %4921
  store i64 %4928, i64* %RCX.i1721, align 8
  %4929 = icmp ult i64 %4928, %4921
  %4930 = icmp ult i64 %4928, %4927
  %4931 = or i1 %4929, %4930
  %4932 = zext i1 %4931 to i8
  store i8 %4932, i8* %14, align 1
  %4933 = trunc i64 %4928 to i32
  %4934 = and i32 %4933, 255
  %4935 = tail call i32 @llvm.ctpop.i32(i32 %4934)
  %4936 = trunc i32 %4935 to i8
  %4937 = and i8 %4936, 1
  %4938 = xor i8 %4937, 1
  store i8 %4938, i8* %21, align 1
  %4939 = xor i64 %4921, %4928
  %4940 = lshr i64 %4939, 4
  %4941 = trunc i64 %4940 to i8
  %4942 = and i8 %4941, 1
  store i8 %4942, i8* %27, align 1
  %4943 = icmp eq i64 %4928, 0
  %4944 = zext i1 %4943 to i8
  store i8 %4944, i8* %30, align 1
  %4945 = lshr i64 %4928, 63
  %4946 = trunc i64 %4945 to i8
  store i8 %4946, i8* %33, align 1
  %4947 = lshr i64 %4921, 63
  %4948 = lshr i64 %4926, 58
  %4949 = and i64 %4948, 1
  %4950 = xor i64 %4945, %4947
  %4951 = xor i64 %4945, %4949
  %4952 = add nuw nsw i64 %4950, %4951
  %4953 = icmp eq i64 %4952, 2
  %4954 = zext i1 %4953 to i8
  store i8 %4954, i8* %39, align 1
  %4955 = add i64 %4920, -16
  %4956 = add i64 %4919, 24
  store i64 %4956, i64* %3, align 8
  %4957 = inttoptr i64 %4955 to i32*
  %4958 = load i32, i32* %4957, align 4
  %4959 = sext i32 %4958 to i64
  store i64 %4959, i64* %RDX.i1718, align 8
  %4960 = shl nsw i64 %4959, 2
  %4961 = add i64 %4928, %4960
  %4962 = add i64 %4919, 27
  store i64 %4962, i64* %3, align 8
  %4963 = inttoptr i64 %4961 to i32*
  %4964 = load i32, i32* %4963, align 4
  %4965 = sub i32 0, %4964
  %4966 = zext i32 %4965 to i64
  store i64 %4966, i64* %RAX.i1724, align 8
  %4967 = icmp ne i32 %4964, 0
  %4968 = zext i1 %4967 to i8
  store i8 %4968, i8* %14, align 1
  %4969 = and i32 %4965, 255
  %4970 = tail call i32 @llvm.ctpop.i32(i32 %4969)
  %4971 = trunc i32 %4970 to i8
  %4972 = and i8 %4971, 1
  %4973 = xor i8 %4972, 1
  store i8 %4973, i8* %21, align 1
  %4974 = xor i32 %4964, %4965
  %4975 = lshr i32 %4974, 4
  %4976 = trunc i32 %4975 to i8
  %4977 = and i8 %4976, 1
  store i8 %4977, i8* %27, align 1
  %4978 = icmp eq i32 %4964, 0
  %4979 = zext i1 %4978 to i8
  store i8 %4979, i8* %30, align 1
  %4980 = lshr i32 %4965, 31
  %4981 = trunc i32 %4980 to i8
  store i8 %4981, i8* %33, align 1
  %4982 = lshr i32 %4964, 31
  %4983 = add nuw nsw i32 %4980, %4982
  %4984 = icmp eq i32 %4983, 2
  %4985 = zext i1 %4984 to i8
  store i8 %4985, i8* %39, align 1
  %4986 = load i64, i64* %RBP.i, align 8
  %4987 = add i64 %4986, -804
  %4988 = add i64 %4919, 33
  store i64 %4988, i64* %3, align 8
  %4989 = inttoptr i64 %4987 to i32*
  store i32 %4965, i32* %4989, align 4
  %4990 = load i64, i64* %3, align 8
  %4991 = add i64 %4990, 36
  store i64 %4991, i64* %3, align 8
  br label %block_.L_45fe90

block_.L_45fe71:                                  ; preds = %block_45fe2b
  %4992 = load i64, i64* %RBP.i, align 8
  %4993 = add i64 %4992, -544
  store i64 %4993, i64* %RAX.i1724, align 8
  %4994 = add i64 %4992, -20
  %4995 = add i64 %4919, 11
  store i64 %4995, i64* %3, align 8
  %4996 = inttoptr i64 %4994 to i32*
  %4997 = load i32, i32* %4996, align 4
  %4998 = sext i32 %4997 to i64
  %4999 = shl nsw i64 %4998, 5
  store i64 %4999, i64* %RCX.i1721, align 8
  %5000 = add i64 %4999, %4993
  store i64 %5000, i64* %RAX.i1724, align 8
  %5001 = icmp ult i64 %5000, %4993
  %5002 = icmp ult i64 %5000, %4999
  %5003 = or i1 %5001, %5002
  %5004 = zext i1 %5003 to i8
  store i8 %5004, i8* %14, align 1
  %5005 = trunc i64 %5000 to i32
  %5006 = and i32 %5005, 255
  %5007 = tail call i32 @llvm.ctpop.i32(i32 %5006)
  %5008 = trunc i32 %5007 to i8
  %5009 = and i8 %5008, 1
  %5010 = xor i8 %5009, 1
  store i8 %5010, i8* %21, align 1
  %5011 = xor i64 %4993, %5000
  %5012 = lshr i64 %5011, 4
  %5013 = trunc i64 %5012 to i8
  %5014 = and i8 %5013, 1
  store i8 %5014, i8* %27, align 1
  %5015 = icmp eq i64 %5000, 0
  %5016 = zext i1 %5015 to i8
  store i8 %5016, i8* %30, align 1
  %5017 = lshr i64 %5000, 63
  %5018 = trunc i64 %5017 to i8
  store i8 %5018, i8* %33, align 1
  %5019 = lshr i64 %4993, 63
  %5020 = lshr i64 %4998, 58
  %5021 = and i64 %5020, 1
  %5022 = xor i64 %5017, %5019
  %5023 = xor i64 %5017, %5021
  %5024 = add nuw nsw i64 %5022, %5023
  %5025 = icmp eq i64 %5024, 2
  %5026 = zext i1 %5025 to i8
  store i8 %5026, i8* %39, align 1
  %5027 = add i64 %4992, -16
  %5028 = add i64 %4919, 22
  store i64 %5028, i64* %3, align 8
  %5029 = inttoptr i64 %5027 to i32*
  %5030 = load i32, i32* %5029, align 4
  %5031 = sext i32 %5030 to i64
  store i64 %5031, i64* %RCX.i1721, align 8
  %5032 = shl nsw i64 %5031, 2
  %5033 = add i64 %5032, %5000
  %5034 = add i64 %4919, 25
  store i64 %5034, i64* %3, align 8
  %5035 = inttoptr i64 %5033 to i32*
  %5036 = load i32, i32* %5035, align 4
  %5037 = zext i32 %5036 to i64
  store i64 %5037, i64* %RDX.i82, align 8
  %5038 = add i64 %4992, -804
  %5039 = add i64 %4919, 31
  store i64 %5039, i64* %3, align 8
  %5040 = inttoptr i64 %5038 to i32*
  store i32 %5036, i32* %5040, align 4
  %.pre90 = load i64, i64* %3, align 8
  br label %block_.L_45fe90

block_.L_45fe90:                                  ; preds = %block_.L_45fe71, %block_45fe4b
  %5041 = phi i64 [ %.pre90, %block_.L_45fe71 ], [ %4991, %block_45fe4b ]
  %5042 = load i64, i64* %RBP.i, align 8
  %5043 = add i64 %5042, -804
  %5044 = add i64 %5041, 6
  store i64 %5044, i64* %3, align 8
  %5045 = inttoptr i64 %5043 to i32*
  %5046 = load i32, i32* %5045, align 4
  %5047 = zext i32 %5046 to i64
  store i64 %5047, i64* %RAX.i1724, align 8
  %5048 = add i64 %5042, -24
  %5049 = add i64 %5041, 9
  store i64 %5049, i64* %3, align 8
  %5050 = inttoptr i64 %5048 to i32*
  %5051 = load i32, i32* %5050, align 4
  %5052 = add i32 %5051, %5046
  %5053 = zext i32 %5052 to i64
  store i64 %5053, i64* %RAX.i1724, align 8
  %5054 = icmp ult i32 %5052, %5046
  %5055 = icmp ult i32 %5052, %5051
  %5056 = or i1 %5054, %5055
  %5057 = zext i1 %5056 to i8
  store i8 %5057, i8* %14, align 1
  %5058 = and i32 %5052, 255
  %5059 = tail call i32 @llvm.ctpop.i32(i32 %5058)
  %5060 = trunc i32 %5059 to i8
  %5061 = and i8 %5060, 1
  %5062 = xor i8 %5061, 1
  store i8 %5062, i8* %21, align 1
  %5063 = xor i32 %5051, %5046
  %5064 = xor i32 %5063, %5052
  %5065 = lshr i32 %5064, 4
  %5066 = trunc i32 %5065 to i8
  %5067 = and i8 %5066, 1
  store i8 %5067, i8* %27, align 1
  %5068 = icmp eq i32 %5052, 0
  %5069 = zext i1 %5068 to i8
  store i8 %5069, i8* %30, align 1
  %5070 = lshr i32 %5052, 31
  %5071 = trunc i32 %5070 to i8
  store i8 %5071, i8* %33, align 1
  %5072 = lshr i32 %5046, 31
  %5073 = lshr i32 %5051, 31
  %5074 = xor i32 %5070, %5072
  %5075 = xor i32 %5070, %5073
  %5076 = add nuw nsw i32 %5074, %5075
  %5077 = icmp eq i32 %5076, 2
  %5078 = zext i1 %5077 to i8
  store i8 %5078, i8* %39, align 1
  %5079 = add i64 %5041, 12
  store i64 %5079, i64* %3, align 8
  store i32 %5052, i32* %5050, align 4
  %5080 = load i64, i64* %RBP.i, align 8
  %5081 = add i64 %5080, -16
  %5082 = load i64, i64* %3, align 8
  %5083 = add i64 %5082, 3
  store i64 %5083, i64* %3, align 8
  %5084 = inttoptr i64 %5081 to i32*
  %5085 = load i32, i32* %5084, align 4
  %5086 = add i32 %5085, 1
  %5087 = zext i32 %5086 to i64
  store i64 %5087, i64* %RAX.i1724, align 8
  %5088 = icmp eq i32 %5085, -1
  %5089 = icmp eq i32 %5086, 0
  %5090 = or i1 %5088, %5089
  %5091 = zext i1 %5090 to i8
  store i8 %5091, i8* %14, align 1
  %5092 = and i32 %5086, 255
  %5093 = tail call i32 @llvm.ctpop.i32(i32 %5092)
  %5094 = trunc i32 %5093 to i8
  %5095 = and i8 %5094, 1
  %5096 = xor i8 %5095, 1
  store i8 %5096, i8* %21, align 1
  %5097 = xor i32 %5086, %5085
  %5098 = lshr i32 %5097, 4
  %5099 = trunc i32 %5098 to i8
  %5100 = and i8 %5099, 1
  store i8 %5100, i8* %27, align 1
  %5101 = zext i1 %5089 to i8
  store i8 %5101, i8* %30, align 1
  %5102 = lshr i32 %5086, 31
  %5103 = trunc i32 %5102 to i8
  store i8 %5103, i8* %33, align 1
  %5104 = lshr i32 %5085, 31
  %5105 = xor i32 %5102, %5104
  %5106 = add nuw nsw i32 %5105, %5102
  %5107 = icmp eq i32 %5106, 2
  %5108 = zext i1 %5107 to i8
  store i8 %5108, i8* %39, align 1
  %5109 = add i64 %5082, 9
  store i64 %5109, i64* %3, align 8
  store i32 %5086, i32* %5084, align 4
  %5110 = load i64, i64* %3, align 8
  %5111 = add i64 %5110, -132
  store i64 %5111, i64* %3, align 8
  br label %block_.L_45fe21

block_.L_45feaa:                                  ; preds = %block_.L_45fe21
  %5112 = add i64 %4838, -20
  %5113 = add i64 %4866, 8
  store i64 %5113, i64* %3, align 8
  %5114 = inttoptr i64 %5112 to i32*
  %5115 = load i32, i32* %5114, align 4
  %5116 = add i32 %5115, 1
  %5117 = zext i32 %5116 to i64
  store i64 %5117, i64* %RAX.i1724, align 8
  %5118 = icmp eq i32 %5115, -1
  %5119 = icmp eq i32 %5116, 0
  %5120 = or i1 %5118, %5119
  %5121 = zext i1 %5120 to i8
  store i8 %5121, i8* %14, align 1
  %5122 = and i32 %5116, 255
  %5123 = tail call i32 @llvm.ctpop.i32(i32 %5122)
  %5124 = trunc i32 %5123 to i8
  %5125 = and i8 %5124, 1
  %5126 = xor i8 %5125, 1
  store i8 %5126, i8* %21, align 1
  %5127 = xor i32 %5116, %5115
  %5128 = lshr i32 %5127, 4
  %5129 = trunc i32 %5128 to i8
  %5130 = and i8 %5129, 1
  store i8 %5130, i8* %27, align 1
  %5131 = zext i1 %5119 to i8
  store i8 %5131, i8* %30, align 1
  %5132 = lshr i32 %5116, 31
  %5133 = trunc i32 %5132 to i8
  store i8 %5133, i8* %33, align 1
  %5134 = lshr i32 %5115, 31
  %5135 = xor i32 %5132, %5134
  %5136 = add nuw nsw i32 %5135, %5132
  %5137 = icmp eq i32 %5136, 2
  %5138 = zext i1 %5137 to i8
  store i8 %5138, i8* %39, align 1
  %5139 = add i64 %4866, 14
  store i64 %5139, i64* %3, align 8
  store i32 %5116, i32* %5114, align 4
  %5140 = load i64, i64* %3, align 8
  %5141 = add i64 %5140, -168
  store i64 %5141, i64* %3, align 8
  br label %block_.L_45fe10

block_.L_45febd:                                  ; preds = %block_.L_45fe10
  %5142 = add i64 %4805, -24
  %5143 = add i64 %4833, 3
  store i64 %5143, i64* %3, align 8
  %5144 = inttoptr i64 %5142 to i32*
  %5145 = load i32, i32* %5144, align 4
  %5146 = add i32 %5145, 2
  %5147 = zext i32 %5146 to i64
  %5148 = shl nuw i64 %5147, 32
  %5149 = ashr i64 %5148, 33
  %5150 = lshr i64 %5149, 1
  %5151 = trunc i64 %5149 to i8
  %5152 = and i8 %5151, 1
  %5153 = trunc i64 %5150 to i32
  %5154 = and i64 %5150, 4294967295
  store i64 %5154, i64* %RAX.i1724, align 8
  store i8 %5152, i8* %14, align 1
  %5155 = and i32 %5153, 255
  %5156 = tail call i32 @llvm.ctpop.i32(i32 %5155)
  %5157 = trunc i32 %5156 to i8
  %5158 = and i8 %5157, 1
  %5159 = xor i8 %5158, 1
  store i8 %5159, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %5160 = icmp eq i32 %5153, 0
  %5161 = zext i1 %5160 to i8
  store i8 %5161, i8* %30, align 1
  %5162 = lshr i64 %5149, 32
  %5163 = trunc i64 %5162 to i8
  %5164 = and i8 %5163, 1
  store i8 %5164, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %5165 = trunc i64 %5150 to i32
  %5166 = add i64 %4833, 12
  store i64 %5166, i64* %3, align 8
  store i32 %5165, i32* %5144, align 4
  %5167 = load i64, i64* %3, align 8
  %5168 = add i64 %5167, 70
  %.pre92 = load i64, i64* %RBP.i, align 8
  br label %block_.L_45ff0f

block_.L_45fece:                                  ; preds = %entry
  %5169 = add i64 %56, -16
  %5170 = add i64 %71, 7
  store i64 %5170, i64* %3, align 8
  %5171 = inttoptr i64 %5169 to i32*
  store i32 0, i32* %5171, align 4
  %RAX.i32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX.i29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX.i26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI.i22 = getelementptr inbounds %union.anon, %union.anon* %44, i64 0, i32 0
  %.pre91 = load i64, i64* %3, align 8
  br label %block_.L_45fed5

block_.L_45fed5:                                  ; preds = %block_45fedf, %block_.L_45fece
  %5172 = phi i64 [ %5285, %block_45fedf ], [ %.pre91, %block_.L_45fece ]
  %5173 = load i64, i64* %RBP.i, align 8
  %5174 = add i64 %5173, -16
  %5175 = add i64 %5172, 4
  store i64 %5175, i64* %3, align 8
  %5176 = inttoptr i64 %5174 to i32*
  %5177 = load i32, i32* %5176, align 4
  %5178 = add i32 %5177, -64
  %5179 = icmp ult i32 %5177, 64
  %5180 = zext i1 %5179 to i8
  store i8 %5180, i8* %14, align 1
  %5181 = and i32 %5178, 255
  %5182 = tail call i32 @llvm.ctpop.i32(i32 %5181)
  %5183 = trunc i32 %5182 to i8
  %5184 = and i8 %5183, 1
  %5185 = xor i8 %5184, 1
  store i8 %5185, i8* %21, align 1
  %5186 = xor i32 %5178, %5177
  %5187 = lshr i32 %5186, 4
  %5188 = trunc i32 %5187 to i8
  %5189 = and i8 %5188, 1
  store i8 %5189, i8* %27, align 1
  %5190 = icmp eq i32 %5178, 0
  %5191 = zext i1 %5190 to i8
  store i8 %5191, i8* %30, align 1
  %5192 = lshr i32 %5178, 31
  %5193 = trunc i32 %5192 to i8
  store i8 %5193, i8* %33, align 1
  %5194 = lshr i32 %5177, 31
  %5195 = xor i32 %5192, %5194
  %5196 = add nuw nsw i32 %5195, %5194
  %5197 = icmp eq i32 %5196, 2
  %5198 = zext i1 %5197 to i8
  store i8 %5198, i8* %39, align 1
  %5199 = icmp ne i8 %5193, 0
  %5200 = xor i1 %5199, %5197
  %.v98 = select i1 %5200, i64 10, i64 53
  %5201 = add i64 %5172, %.v98
  store i64 %5201, i64* %3, align 8
  br i1 %5200, label %block_45fedf, label %block_.L_45ff0a

block_45fedf:                                     ; preds = %block_.L_45fed5
  %5202 = load i64, i64* bitcast (%G_0x726840_type* @G_0x726840 to i64*), align 8
  store i64 %5202, i64* %RAX.i32, align 8
  %5203 = add i64 %5173, -8
  %5204 = add i64 %5201, 12
  store i64 %5204, i64* %3, align 8
  %5205 = inttoptr i64 %5203 to i64*
  %5206 = load i64, i64* %5205, align 8
  store i64 %5206, i64* %RCX.i29, align 8
  %5207 = add i64 %5201, 16
  store i64 %5207, i64* %3, align 8
  %5208 = load i32, i32* %5176, align 4
  %5209 = sext i32 %5208 to i64
  store i64 %5209, i64* %RDX.i26, align 8
  %5210 = shl nsw i64 %5209, 2
  %5211 = add i64 %5210, %5206
  %5212 = add i64 %5201, 20
  store i64 %5212, i64* %3, align 8
  %5213 = inttoptr i64 %5211 to i32*
  %5214 = load i32, i32* %5213, align 4
  %5215 = sext i32 %5214 to i64
  store i64 %5215, i64* %RCX.i29, align 8
  %5216 = shl nsw i64 %5215, 2
  %5217 = add i64 %5216, %5202
  %5218 = add i64 %5201, 23
  store i64 %5218, i64* %3, align 8
  %5219 = inttoptr i64 %5217 to i32*
  %5220 = load i32, i32* %5219, align 4
  %5221 = zext i32 %5220 to i64
  store i64 %5221, i64* %RSI.i22, align 8
  %5222 = add i64 %5173, -24
  %5223 = add i64 %5201, 26
  store i64 %5223, i64* %3, align 8
  %5224 = inttoptr i64 %5222 to i32*
  %5225 = load i32, i32* %5224, align 4
  %5226 = add i32 %5225, %5220
  %5227 = zext i32 %5226 to i64
  store i64 %5227, i64* %RSI.i22, align 8
  %5228 = icmp ult i32 %5226, %5220
  %5229 = icmp ult i32 %5226, %5225
  %5230 = or i1 %5228, %5229
  %5231 = zext i1 %5230 to i8
  store i8 %5231, i8* %14, align 1
  %5232 = and i32 %5226, 255
  %5233 = tail call i32 @llvm.ctpop.i32(i32 %5232)
  %5234 = trunc i32 %5233 to i8
  %5235 = and i8 %5234, 1
  %5236 = xor i8 %5235, 1
  store i8 %5236, i8* %21, align 1
  %5237 = xor i32 %5225, %5220
  %5238 = xor i32 %5237, %5226
  %5239 = lshr i32 %5238, 4
  %5240 = trunc i32 %5239 to i8
  %5241 = and i8 %5240, 1
  store i8 %5241, i8* %27, align 1
  %5242 = icmp eq i32 %5226, 0
  %5243 = zext i1 %5242 to i8
  store i8 %5243, i8* %30, align 1
  %5244 = lshr i32 %5226, 31
  %5245 = trunc i32 %5244 to i8
  store i8 %5245, i8* %33, align 1
  %5246 = lshr i32 %5220, 31
  %5247 = lshr i32 %5225, 31
  %5248 = xor i32 %5244, %5246
  %5249 = xor i32 %5244, %5247
  %5250 = add nuw nsw i32 %5248, %5249
  %5251 = icmp eq i32 %5250, 2
  %5252 = zext i1 %5251 to i8
  store i8 %5252, i8* %39, align 1
  %5253 = add i64 %5201, 29
  store i64 %5253, i64* %3, align 8
  store i32 %5226, i32* %5224, align 4
  %5254 = load i64, i64* %RBP.i, align 8
  %5255 = add i64 %5254, -16
  %5256 = load i64, i64* %3, align 8
  %5257 = add i64 %5256, 3
  store i64 %5257, i64* %3, align 8
  %5258 = inttoptr i64 %5255 to i32*
  %5259 = load i32, i32* %5258, align 4
  %5260 = add i32 %5259, 1
  %5261 = zext i32 %5260 to i64
  store i64 %5261, i64* %RAX.i32, align 8
  %5262 = icmp eq i32 %5259, -1
  %5263 = icmp eq i32 %5260, 0
  %5264 = or i1 %5262, %5263
  %5265 = zext i1 %5264 to i8
  store i8 %5265, i8* %14, align 1
  %5266 = and i32 %5260, 255
  %5267 = tail call i32 @llvm.ctpop.i32(i32 %5266)
  %5268 = trunc i32 %5267 to i8
  %5269 = and i8 %5268, 1
  %5270 = xor i8 %5269, 1
  store i8 %5270, i8* %21, align 1
  %5271 = xor i32 %5260, %5259
  %5272 = lshr i32 %5271, 4
  %5273 = trunc i32 %5272 to i8
  %5274 = and i8 %5273, 1
  store i8 %5274, i8* %27, align 1
  %5275 = zext i1 %5263 to i8
  store i8 %5275, i8* %30, align 1
  %5276 = lshr i32 %5260, 31
  %5277 = trunc i32 %5276 to i8
  store i8 %5277, i8* %33, align 1
  %5278 = lshr i32 %5259, 31
  %5279 = xor i32 %5276, %5278
  %5280 = add nuw nsw i32 %5279, %5276
  %5281 = icmp eq i32 %5280, 2
  %5282 = zext i1 %5281 to i8
  store i8 %5282, i8* %39, align 1
  %5283 = add i64 %5256, 9
  store i64 %5283, i64* %3, align 8
  store i32 %5260, i32* %5258, align 4
  %5284 = load i64, i64* %3, align 8
  %5285 = add i64 %5284, -48
  store i64 %5285, i64* %3, align 8
  br label %block_.L_45fed5

block_.L_45ff0a:                                  ; preds = %block_.L_45fed5
  %5286 = add i64 %5201, 5
  store i64 %5286, i64* %3, align 8
  br label %block_.L_45ff0f

block_.L_45ff0f:                                  ; preds = %block_.L_45ff0a, %block_.L_45febd
  %5287 = phi i64 [ %.pre92, %block_.L_45febd ], [ %5173, %block_.L_45ff0a ]
  %storemerge = phi i64 [ %5168, %block_.L_45febd ], [ %5286, %block_.L_45ff0a ]
  %RAX.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %5288 = add i64 %5287, -24
  %5289 = add i64 %storemerge, 3
  store i64 %5289, i64* %3, align 8
  %5290 = inttoptr i64 %5288 to i32*
  %5291 = load i32, i32* %5290, align 4
  %5292 = zext i32 %5291 to i64
  store i64 %5292, i64* %RAX.i, align 8
  %5293 = load i64, i64* %6, align 8
  %5294 = add i64 %5293, 688
  store i64 %5294, i64* %6, align 8
  %5295 = icmp ugt i64 %5293, -689
  %5296 = zext i1 %5295 to i8
  store i8 %5296, i8* %14, align 1
  %5297 = trunc i64 %5294 to i32
  %5298 = and i32 %5297, 255
  %5299 = tail call i32 @llvm.ctpop.i32(i32 %5298)
  %5300 = trunc i32 %5299 to i8
  %5301 = and i8 %5300, 1
  %5302 = xor i8 %5301, 1
  store i8 %5302, i8* %21, align 1
  %5303 = xor i64 %5293, 16
  %5304 = xor i64 %5303, %5294
  %5305 = lshr i64 %5304, 4
  %5306 = trunc i64 %5305 to i8
  %5307 = and i8 %5306, 1
  store i8 %5307, i8* %27, align 1
  %5308 = icmp eq i64 %5294, 0
  %5309 = zext i1 %5308 to i8
  store i8 %5309, i8* %30, align 1
  %5310 = lshr i64 %5294, 63
  %5311 = trunc i64 %5310 to i8
  store i8 %5311, i8* %33, align 1
  %5312 = lshr i64 %5293, 63
  %5313 = xor i64 %5310, %5312
  %5314 = add nuw nsw i64 %5313, %5310
  %5315 = icmp eq i64 %5314, 2
  %5316 = zext i1 %5315 to i8
  store i8 %5316, i8* %39, align 1
  %5317 = add i64 %storemerge, 11
  store i64 %5317, i64* %3, align 8
  %5318 = add i64 %5293, 696
  %5319 = inttoptr i64 %5294 to i64*
  %5320 = load i64, i64* %5319, align 8
  store i64 %5320, i64* %RBP.i, align 8
  store i64 %5318, i64* %6, align 8
  %5321 = add i64 %storemerge, 12
  store i64 %5321, i64* %3, align 8
  %5322 = inttoptr i64 %5318 to i64*
  %5323 = load i64, i64* %5322, align 8
  store i64 %5323, i64* %3, align 8
  %5324 = add i64 %5293, 704
  store i64 %5324, i64* %6, align 8
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
define %struct.Memory* @routine_subq__0x2b0___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -688
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 688
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
define %struct.Memory* @routine_movl__esi__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
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
define %struct.Memory* @routine_je_.L_45fece(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x8__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -8
  %10 = icmp ult i32 %8, 8
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
define %struct.Memory* @routine_jge_.L_45faed(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_leaq_MINUS0x220__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -544
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x120__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -288
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x14__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
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
define %struct.Memory* @routine_shll__0x3___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %.tr = trunc i64 %3 to i32
  %6 = shl i32 %.tr, 3
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %RSI, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq__esi___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i32, i32* %ESI, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl___rdx__rdi_4____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RDI, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x14__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shll__0x3___r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %5 = load i32, i32* %R8D, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = shl i32 %5, 3
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %4, align 8
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %11 = lshr i32 %5, 29
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  store i8 %13, i8* %10, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %15 = and i32 %8, 248
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  store i8 %19, i8* %14, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %22 = icmp eq i32 %8, 0
  %23 = zext i1 %22 to i8
  store i8 %23, i8* %21, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %25 = lshr i32 %5, 28
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  store i8 %27, i8* %24, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %28, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x4___r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %5 = load i32, i32* %R8D, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = add i32 %5, 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %4, align 8
  %10 = icmp ugt i32 %5, -5
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = and i32 %8, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = xor i32 %8, %5
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %8, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %8, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %5, 31
  %31 = xor i32 %27, %30
  %32 = add nuw nsw i32 %31, %27
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq__r8d___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i32, i32* %R8D, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl___rdx__rdi_4____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = load i64, i64* %RDI, align 8
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
  store i64 %14, i64* %RSI, align 8
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
define %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
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
define %struct.Memory* @routine_shlq__0x5___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 5
  store i64 %6, i64* %RDX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 59
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 224
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  store i8 %17, i8* %11, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %20 = icmp eq i64 %6, 0
  %21 = zext i1 %20 to i8
  store i8 %21, i8* %19, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %23 = lshr i64 %3, 58
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rdx___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %RDI, align 8
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
define %struct.Memory* @routine_movl__esi____rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = bitcast i64* %RDI to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  store i32 %6, i32* %5, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x1___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RSI, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x5___r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %5 = load i32, i32* %R8D, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = add i32 %5, 5
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %4, align 8
  %10 = icmp ugt i32 %5, -6
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = and i32 %8, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = xor i32 %8, %5
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %8, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %8, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %5, 31
  %31 = xor i32 %27, %30
  %32 = add nuw nsw i32 %31, %27
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__0x4__rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i64, i64* %RDI, align 8
  %5 = add i64 %4, 4
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x2___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 2
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RSI, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x6___r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %5 = load i32, i32* %R8D, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = add i32 %5, 6
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %4, align 8
  %10 = icmp ugt i32 %5, -7
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = and i32 %8, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = xor i32 %8, %5
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %8, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %8, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %5, 31
  %31 = xor i32 %27, %30
  %32 = add nuw nsw i32 %31, %27
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__0x8__rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i64, i64* %RDI, align 8
  %5 = add i64 %4, 8
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x3___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 3
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RSI, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x7___r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %5 = load i32, i32* %R8D, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = add i32 %5, 7
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %4, align 8
  %10 = icmp ugt i32 %5, -8
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = and i32 %8, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = xor i32 %8, %5
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %8, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %8, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %5, 31
  %31 = xor i32 %27, %30
  %32 = add nuw nsw i32 %31, %27
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__0xc__rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i64, i64* %RDI, align 8
  %5 = add i64 %4, 12
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl___rdx__rdi_4____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = load i64, i64* %RDI, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 3
  store i64 %9, i64* %PC, align 8
  %10 = trunc i64 %3 to i32
  %11 = inttoptr i64 %7 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = sub i32 %10, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RSI, align 8
  %15 = icmp ult i32 %10, %12
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %16, i8* %17, align 1
  %18 = and i32 %13, 255
  %19 = tail call i32 @llvm.ctpop.i32(i32 %18)
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1
  %24 = xor i32 %12, %10
  %25 = xor i32 %24, %13
  %26 = lshr i32 %25, 4
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1
  %30 = icmp eq i32 %13, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %13, 31
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %10, 31
  %37 = lshr i32 %12, 31
  %38 = xor i32 %37, %36
  %39 = xor i32 %33, %36
  %40 = add nuw nsw i32 %39, %38
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__0x10__rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i64, i64* %RDI, align 8
  %5 = add i64 %4, 16
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__0x14__rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i64, i64* %RDI, align 8
  %5 = add i64 %4, 20
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__0x18__rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i64, i64* %RDI, align 8
  %5 = add i64 %4, 24
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__0x1c__rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i64, i64* %RDI, align 8
  %5 = add i64 %4, 28
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_0x8__rdi____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RDI, align 8
  %5 = add i64 %4, 8
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
define %struct.Memory* @routine_movq__rcx___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RDI, align 8
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
define %struct.Memory* @routine_addl_0xc__rdi____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RDI, align 8
  %5 = add i64 %4, 12
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_0x8__rdi____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RDI, align 8
  %5 = add i64 %4, 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %8, %10
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RSI, align 8
  %13 = icmp ult i32 %8, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = and i32 %11, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = xor i32 %10, %8
  %23 = xor i32 %22, %11
  %24 = lshr i32 %23, 4
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1
  %28 = icmp eq i32 %11, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %11, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %8, 31
  %35 = lshr i32 %10, 31
  %36 = xor i32 %35, %34
  %37 = xor i32 %31, %34
  %38 = add nuw nsw i32 %37, %36
  %39 = icmp eq i32 %38, 2
  %40 = zext i1 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %40, i8* %41, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_0xc__rdi____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RDI, align 8
  %5 = add i64 %4, 12
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %8, %10
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RSI, align 8
  %13 = icmp ult i32 %8, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = and i32 %11, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = xor i32 %10, %8
  %23 = xor i32 %22, %11
  %24 = lshr i32 %23, 4
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1
  %28 = icmp eq i32 %11, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %11, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %8, 31
  %35 = lshr i32 %10, 31
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
define %struct.Memory* @routine_movl_0x10__rdi____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = add i64 %3, 16
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
define %struct.Memory* @routine_addl_0x18__rdi____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RDI, align 8
  %5 = add i64 %4, 24
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
define %struct.Memory* @routine_movl_0x14__rdi____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = add i64 %3, 20
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
define %struct.Memory* @routine_addl_0x1c__rdi____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RDI, align 8
  %5 = add i64 %4, 28
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_0x18__rdi____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RDI, align 8
  %5 = add i64 %4, 24
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %8, %10
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RSI, align 8
  %13 = icmp ult i32 %8, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = and i32 %11, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = xor i32 %10, %8
  %23 = xor i32 %22, %11
  %24 = lshr i32 %23, 4
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1
  %28 = icmp eq i32 %11, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %11, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %8, 31
  %35 = lshr i32 %10, 31
  %36 = xor i32 %35, %34
  %37 = xor i32 %31, %34
  %38 = add nuw nsw i32 %37, %36
  %39 = icmp eq i32 %38, 2
  %40 = zext i1 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %40, i8* %41, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_0x1c__rdi____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RDI, align 8
  %5 = add i64 %4, 28
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %8, %10
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RSI, align 8
  %13 = icmp ult i32 %8, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = and i32 %11, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = xor i32 %10, %8
  %23 = xor i32 %22, %11
  %24 = lshr i32 %23, 4
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1
  %28 = icmp eq i32 %11, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %11, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %8, 31
  %35 = lshr i32 %10, 31
  %36 = xor i32 %35, %34
  %37 = xor i32 %31, %34
  %38 = add nuw nsw i32 %37, %36
  %39 = icmp eq i32 %38, 2
  %40 = zext i1 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %40, i8* %41, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_0x4__rdi____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RDI, align 8
  %5 = add i64 %4, 4
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_0x4__rdi____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RDI, align 8
  %5 = add i64 %4, 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %8, %10
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RSI, align 8
  %13 = icmp ult i32 %8, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = and i32 %11, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = xor i32 %10, %8
  %23 = xor i32 %22, %11
  %24 = lshr i32 %23, 4
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1
  %28 = icmp eq i32 %11, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %11, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %8, 31
  %35 = lshr i32 %10, 31
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
define %struct.Memory* @routine_movl_0x8__rdi____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = add i64 %3, 8
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
define %struct.Memory* @routine_addl_0x14__rdi____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RDI, align 8
  %5 = add i64 %4, 20
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_0x14__rdi____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RDI, align 8
  %5 = add i64 %4, 20
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %8, %10
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RSI, align 8
  %13 = icmp ult i32 %8, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = and i32 %11, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = xor i32 %10, %8
  %23 = xor i32 %22, %11
  %24 = lshr i32 %23, 4
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1
  %28 = icmp eq i32 %11, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %11, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %8, 31
  %35 = lshr i32 %10, 31
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
define %struct.Memory* @routine_movl_0x18__rdi____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = add i64 %3, 24
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
define %struct.Memory* @routine_addq__rdx___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %RCX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_0x1c__rcx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 28
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %8, %10
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RSI, align 8
  %13 = icmp ult i32 %8, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = and i32 %11, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = xor i32 %10, %8
  %23 = xor i32 %22, %11
  %24 = lshr i32 %23, 4
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1
  %28 = icmp eq i32 %11, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %11, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %8, 31
  %35 = lshr i32 %10, 31
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

; Function Attrs: nounwind
define %struct.Memory* @routine_shlq__0x5___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 5
  store i64 %6, i64* %RCX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 59
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 224
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  store i8 %17, i8* %11, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %20 = icmp eq i64 %6, 0
  %21 = zext i1 %20 to i8
  store i8 %21, i8* %19, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %23 = lshr i64 %3, 58
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
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
define %struct.Memory* @routine_movl__esi__0x1c__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 28
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_jmpq_.L_45f5da(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x8__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -8
  %10 = icmp ult i32 %8, 8
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
define %struct.Memory* @routine_jge_.L_45fe09(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x10__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x220__rbp__rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -544
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x1a0__rbp__rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -416
  %8 = add i64 %7, %6
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC, align 8
  %11 = trunc i64 %3 to i32
  %12 = inttoptr i64 %8 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = add i32 %13, %11
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %RCX, align 8
  %16 = icmp ult i32 %14, %11
  %17 = icmp ult i32 %14, %13
  %18 = or i1 %16, %17
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %19, i8* %20, align 1
  %21 = and i32 %14, 255
  %22 = tail call i32 @llvm.ctpop.i32(i32 %21)
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = xor i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %25, i8* %26, align 1
  %27 = xor i32 %13, %11
  %28 = xor i32 %27, %14
  %29 = lshr i32 %28, 4
  %30 = trunc i32 %29 to i8
  %31 = and i8 %30, 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %31, i8* %32, align 1
  %33 = icmp eq i32 %14, 0
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %14, 31
  %37 = trunc i32 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %37, i8* %38, align 1
  %39 = lshr i32 %11, 31
  %40 = lshr i32 %13, 31
  %41 = xor i32 %36, %39
  %42 = xor i32 %36, %40
  %43 = add nuw nsw i32 %41, %42
  %44 = icmp eq i32 %43, 2
  %45 = zext i1 %44 to i8
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %45, i8* %46, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x320__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -800
  %8 = add i64 %7, %6
  %9 = load i32, i32* %ECX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x200__rbp__rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -512
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x180__rbp__rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -384
  %8 = add i64 %7, %6
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC, align 8
  %11 = trunc i64 %3 to i32
  %12 = inttoptr i64 %8 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = add i32 %13, %11
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %RCX, align 8
  %16 = icmp ult i32 %14, %11
  %17 = icmp ult i32 %14, %13
  %18 = or i1 %16, %17
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %19, i8* %20, align 1
  %21 = and i32 %14, 255
  %22 = tail call i32 @llvm.ctpop.i32(i32 %21)
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = xor i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %25, i8* %26, align 1
  %27 = xor i32 %13, %11
  %28 = xor i32 %27, %14
  %29 = lshr i32 %28, 4
  %30 = trunc i32 %29 to i8
  %31 = and i8 %30, 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %31, i8* %32, align 1
  %33 = icmp eq i32 %14, 0
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %14, 31
  %37 = trunc i32 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %37, i8* %38, align 1
  %39 = lshr i32 %11, 31
  %40 = lshr i32 %13, 31
  %41 = xor i32 %36, %39
  %42 = xor i32 %36, %40
  %43 = add nuw nsw i32 %41, %42
  %44 = icmp eq i32 %43, 2
  %45 = zext i1 %44 to i8
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %45, i8* %46, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x300__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -768
  %8 = add i64 %7, %6
  %9 = load i32, i32* %ECX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x1e0__rbp__rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -480
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x160__rbp__rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -352
  %8 = add i64 %7, %6
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC, align 8
  %11 = trunc i64 %3 to i32
  %12 = inttoptr i64 %8 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = add i32 %13, %11
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %RCX, align 8
  %16 = icmp ult i32 %14, %11
  %17 = icmp ult i32 %14, %13
  %18 = or i1 %16, %17
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %19, i8* %20, align 1
  %21 = and i32 %14, 255
  %22 = tail call i32 @llvm.ctpop.i32(i32 %21)
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = xor i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %25, i8* %26, align 1
  %27 = xor i32 %13, %11
  %28 = xor i32 %27, %14
  %29 = lshr i32 %28, 4
  %30 = trunc i32 %29 to i8
  %31 = and i8 %30, 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %31, i8* %32, align 1
  %33 = icmp eq i32 %14, 0
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %14, 31
  %37 = trunc i32 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %37, i8* %38, align 1
  %39 = lshr i32 %11, 31
  %40 = lshr i32 %13, 31
  %41 = xor i32 %36, %39
  %42 = xor i32 %36, %40
  %43 = add nuw nsw i32 %41, %42
  %44 = icmp eq i32 %43, 2
  %45 = zext i1 %44 to i8
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %45, i8* %46, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x2e0__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -736
  %8 = add i64 %7, %6
  %9 = load i32, i32* %ECX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x1c0__rbp__rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -448
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x140__rbp__rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -320
  %8 = add i64 %7, %6
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC, align 8
  %11 = trunc i64 %3 to i32
  %12 = inttoptr i64 %8 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = add i32 %13, %11
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %RCX, align 8
  %16 = icmp ult i32 %14, %11
  %17 = icmp ult i32 %14, %13
  %18 = or i1 %16, %17
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %19, i8* %20, align 1
  %21 = and i32 %14, 255
  %22 = tail call i32 @llvm.ctpop.i32(i32 %21)
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = xor i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %25, i8* %26, align 1
  %27 = xor i32 %13, %11
  %28 = xor i32 %27, %14
  %29 = lshr i32 %28, 4
  %30 = trunc i32 %29 to i8
  %31 = and i8 %30, 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %31, i8* %32, align 1
  %33 = icmp eq i32 %14, 0
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %14, 31
  %37 = trunc i32 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %37, i8* %38, align 1
  %39 = lshr i32 %11, 31
  %40 = lshr i32 %13, 31
  %41 = xor i32 %36, %39
  %42 = xor i32 %36, %40
  %43 = add nuw nsw i32 %41, %42
  %44 = icmp eq i32 %43, 2
  %45 = zext i1 %44 to i8
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %45, i8* %46, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x2c0__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -704
  %8 = add i64 %7, %6
  %9 = load i32, i32* %ECX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x1a0__rbp__rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -416
  %8 = add i64 %7, %6
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC, align 8
  %11 = trunc i64 %3 to i32
  %12 = inttoptr i64 %8 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = sub i32 %11, %13
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %RCX, align 8
  %16 = icmp ult i32 %11, %13
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %17, i8* %18, align 1
  %19 = and i32 %14, 255
  %20 = tail call i32 @llvm.ctpop.i32(i32 %19)
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %23, i8* %24, align 1
  %25 = xor i32 %13, %11
  %26 = xor i32 %25, %14
  %27 = lshr i32 %26, 4
  %28 = trunc i32 %27 to i8
  %29 = and i8 %28, 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %29, i8* %30, align 1
  %31 = icmp eq i32 %14, 0
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %14, 31
  %35 = trunc i32 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %35, i8* %36, align 1
  %37 = lshr i32 %11, 31
  %38 = lshr i32 %13, 31
  %39 = xor i32 %38, %37
  %40 = xor i32 %34, %37
  %41 = add nuw nsw i32 %40, %39
  %42 = icmp eq i32 %41, 2
  %43 = zext i1 %42 to i8
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %43, i8* %44, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x2a0__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -672
  %8 = add i64 %7, %6
  %9 = load i32, i32* %ECX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x180__rbp__rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -384
  %8 = add i64 %7, %6
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC, align 8
  %11 = trunc i64 %3 to i32
  %12 = inttoptr i64 %8 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = sub i32 %11, %13
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %RCX, align 8
  %16 = icmp ult i32 %11, %13
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %17, i8* %18, align 1
  %19 = and i32 %14, 255
  %20 = tail call i32 @llvm.ctpop.i32(i32 %19)
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %23, i8* %24, align 1
  %25 = xor i32 %13, %11
  %26 = xor i32 %25, %14
  %27 = lshr i32 %26, 4
  %28 = trunc i32 %27 to i8
  %29 = and i8 %28, 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %29, i8* %30, align 1
  %31 = icmp eq i32 %14, 0
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %14, 31
  %35 = trunc i32 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %35, i8* %36, align 1
  %37 = lshr i32 %11, 31
  %38 = lshr i32 %13, 31
  %39 = xor i32 %38, %37
  %40 = xor i32 %34, %37
  %41 = add nuw nsw i32 %40, %39
  %42 = icmp eq i32 %41, 2
  %43 = zext i1 %42 to i8
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %43, i8* %44, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x280__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -640
  %8 = add i64 %7, %6
  %9 = load i32, i32* %ECX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x160__rbp__rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -352
  %8 = add i64 %7, %6
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC, align 8
  %11 = trunc i64 %3 to i32
  %12 = inttoptr i64 %8 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = sub i32 %11, %13
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %RCX, align 8
  %16 = icmp ult i32 %11, %13
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %17, i8* %18, align 1
  %19 = and i32 %14, 255
  %20 = tail call i32 @llvm.ctpop.i32(i32 %19)
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %23, i8* %24, align 1
  %25 = xor i32 %13, %11
  %26 = xor i32 %25, %14
  %27 = lshr i32 %26, 4
  %28 = trunc i32 %27 to i8
  %29 = and i8 %28, 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %29, i8* %30, align 1
  %31 = icmp eq i32 %14, 0
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %14, 31
  %35 = trunc i32 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %35, i8* %36, align 1
  %37 = lshr i32 %11, 31
  %38 = lshr i32 %13, 31
  %39 = xor i32 %38, %37
  %40 = xor i32 %34, %37
  %41 = add nuw nsw i32 %40, %39
  %42 = icmp eq i32 %41, 2
  %43 = zext i1 %42 to i8
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %43, i8* %44, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x260__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -608
  %8 = add i64 %7, %6
  %9 = load i32, i32* %ECX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x140__rbp__rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -320
  %8 = add i64 %7, %6
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC, align 8
  %11 = trunc i64 %3 to i32
  %12 = inttoptr i64 %8 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = sub i32 %11, %13
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %RCX, align 8
  %16 = icmp ult i32 %11, %13
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %17, i8* %18, align 1
  %19 = and i32 %14, 255
  %20 = tail call i32 @llvm.ctpop.i32(i32 %19)
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %23, i8* %24, align 1
  %25 = xor i32 %13, %11
  %26 = xor i32 %25, %14
  %27 = lshr i32 %26, 4
  %28 = trunc i32 %27 to i8
  %29 = and i8 %28, 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %29, i8* %30, align 1
  %31 = icmp eq i32 %14, 0
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %14, 31
  %35 = trunc i32 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %35, i8* %36, align 1
  %37 = lshr i32 %11, 31
  %38 = lshr i32 %13, 31
  %39 = xor i32 %38, %37
  %40 = xor i32 %34, %37
  %41 = add nuw nsw i32 %40, %39
  %42 = icmp eq i32 %41, 2
  %43 = zext i1 %42 to i8
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %43, i8* %44, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x240__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -576
  %8 = add i64 %7, %6
  %9 = load i32, i32* %ECX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x320__rbp__rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -800
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x2e0__rbp__rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -736
  %8 = add i64 %7, %6
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC, align 8
  %11 = trunc i64 %3 to i32
  %12 = inttoptr i64 %8 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = add i32 %13, %11
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %RCX, align 8
  %16 = icmp ult i32 %14, %11
  %17 = icmp ult i32 %14, %13
  %18 = or i1 %16, %17
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %19, i8* %20, align 1
  %21 = and i32 %14, 255
  %22 = tail call i32 @llvm.ctpop.i32(i32 %21)
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = xor i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %25, i8* %26, align 1
  %27 = xor i32 %13, %11
  %28 = xor i32 %27, %14
  %29 = lshr i32 %28, 4
  %30 = trunc i32 %29 to i8
  %31 = and i8 %30, 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %31, i8* %32, align 1
  %33 = icmp eq i32 %14, 0
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %14, 31
  %37 = trunc i32 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %37, i8* %38, align 1
  %39 = lshr i32 %11, 31
  %40 = lshr i32 %13, 31
  %41 = xor i32 %36, %39
  %42 = xor i32 %36, %40
  %43 = add nuw nsw i32 %41, %42
  %44 = icmp eq i32 %43, 2
  %45 = zext i1 %44 to i8
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %45, i8* %46, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x120__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -288
  %8 = add i64 %7, %6
  %9 = load i32, i32* %ECX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x300__rbp__rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -768
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x2c0__rbp__rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -704
  %8 = add i64 %7, %6
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC, align 8
  %11 = trunc i64 %3 to i32
  %12 = inttoptr i64 %8 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = add i32 %13, %11
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %RCX, align 8
  %16 = icmp ult i32 %14, %11
  %17 = icmp ult i32 %14, %13
  %18 = or i1 %16, %17
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %19, i8* %20, align 1
  %21 = and i32 %14, 255
  %22 = tail call i32 @llvm.ctpop.i32(i32 %21)
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = xor i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %25, i8* %26, align 1
  %27 = xor i32 %13, %11
  %28 = xor i32 %27, %14
  %29 = lshr i32 %28, 4
  %30 = trunc i32 %29 to i8
  %31 = and i8 %30, 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %31, i8* %32, align 1
  %33 = icmp eq i32 %14, 0
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %14, 31
  %37 = trunc i32 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %37, i8* %38, align 1
  %39 = lshr i32 %11, 31
  %40 = lshr i32 %13, 31
  %41 = xor i32 %36, %39
  %42 = xor i32 %36, %40
  %43 = add nuw nsw i32 %41, %42
  %44 = icmp eq i32 %43, 2
  %45 = zext i1 %44 to i8
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %45, i8* %46, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x100__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -256
  %8 = add i64 %7, %6
  %9 = load i32, i32* %ECX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x2e0__rbp__rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -736
  %8 = add i64 %7, %6
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC, align 8
  %11 = trunc i64 %3 to i32
  %12 = inttoptr i64 %8 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = sub i32 %11, %13
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %RCX, align 8
  %16 = icmp ult i32 %11, %13
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %17, i8* %18, align 1
  %19 = and i32 %14, 255
  %20 = tail call i32 @llvm.ctpop.i32(i32 %19)
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %23, i8* %24, align 1
  %25 = xor i32 %13, %11
  %26 = xor i32 %25, %14
  %27 = lshr i32 %26, 4
  %28 = trunc i32 %27 to i8
  %29 = and i8 %28, 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %29, i8* %30, align 1
  %31 = icmp eq i32 %14, 0
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %14, 31
  %35 = trunc i32 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %35, i8* %36, align 1
  %37 = lshr i32 %11, 31
  %38 = lshr i32 %13, 31
  %39 = xor i32 %38, %37
  %40 = xor i32 %34, %37
  %41 = add nuw nsw i32 %40, %39
  %42 = icmp eq i32 %41, 2
  %43 = zext i1 %42 to i8
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %43, i8* %44, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0xe0__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -224
  %8 = add i64 %7, %6
  %9 = load i32, i32* %ECX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x2c0__rbp__rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -704
  %8 = add i64 %7, %6
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC, align 8
  %11 = trunc i64 %3 to i32
  %12 = inttoptr i64 %8 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = sub i32 %11, %13
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %RCX, align 8
  %16 = icmp ult i32 %11, %13
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %17, i8* %18, align 1
  %19 = and i32 %14, 255
  %20 = tail call i32 @llvm.ctpop.i32(i32 %19)
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %23, i8* %24, align 1
  %25 = xor i32 %13, %11
  %26 = xor i32 %25, %14
  %27 = lshr i32 %26, 4
  %28 = trunc i32 %27 to i8
  %29 = and i8 %28, 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %29, i8* %30, align 1
  %31 = icmp eq i32 %14, 0
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %14, 31
  %35 = trunc i32 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %35, i8* %36, align 1
  %37 = lshr i32 %11, 31
  %38 = lshr i32 %13, 31
  %39 = xor i32 %38, %37
  %40 = xor i32 %34, %37
  %41 = add nuw nsw i32 %40, %39
  %42 = icmp eq i32 %41, 2
  %43 = zext i1 %42 to i8
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %43, i8* %44, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0xc0__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -192
  %8 = add i64 %7, %6
  %9 = load i32, i32* %ECX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x2a0__rbp__rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -672
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x260__rbp__rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -608
  %8 = add i64 %7, %6
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC, align 8
  %11 = trunc i64 %3 to i32
  %12 = inttoptr i64 %8 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = add i32 %13, %11
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %RCX, align 8
  %16 = icmp ult i32 %14, %11
  %17 = icmp ult i32 %14, %13
  %18 = or i1 %16, %17
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %19, i8* %20, align 1
  %21 = and i32 %14, 255
  %22 = tail call i32 @llvm.ctpop.i32(i32 %21)
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = xor i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %25, i8* %26, align 1
  %27 = xor i32 %13, %11
  %28 = xor i32 %27, %14
  %29 = lshr i32 %28, 4
  %30 = trunc i32 %29 to i8
  %31 = and i8 %30, 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %31, i8* %32, align 1
  %33 = icmp eq i32 %14, 0
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %14, 31
  %37 = trunc i32 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %37, i8* %38, align 1
  %39 = lshr i32 %11, 31
  %40 = lshr i32 %13, 31
  %41 = xor i32 %36, %39
  %42 = xor i32 %36, %40
  %43 = add nuw nsw i32 %41, %42
  %44 = icmp eq i32 %43, 2
  %45 = zext i1 %44 to i8
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %45, i8* %46, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0xa0__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -160
  %8 = add i64 %7, %6
  %9 = load i32, i32* %ECX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x280__rbp__rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -640
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x240__rbp__rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -576
  %8 = add i64 %7, %6
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC, align 8
  %11 = trunc i64 %3 to i32
  %12 = inttoptr i64 %8 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = add i32 %13, %11
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %RCX, align 8
  %16 = icmp ult i32 %14, %11
  %17 = icmp ult i32 %14, %13
  %18 = or i1 %16, %17
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %19, i8* %20, align 1
  %21 = and i32 %14, 255
  %22 = tail call i32 @llvm.ctpop.i32(i32 %21)
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = xor i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %25, i8* %26, align 1
  %27 = xor i32 %13, %11
  %28 = xor i32 %27, %14
  %29 = lshr i32 %28, 4
  %30 = trunc i32 %29 to i8
  %31 = and i8 %30, 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %31, i8* %32, align 1
  %33 = icmp eq i32 %14, 0
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %14, 31
  %37 = trunc i32 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %37, i8* %38, align 1
  %39 = lshr i32 %11, 31
  %40 = lshr i32 %13, 31
  %41 = xor i32 %36, %39
  %42 = xor i32 %36, %40
  %43 = add nuw nsw i32 %41, %42
  %44 = icmp eq i32 %43, 2
  %45 = zext i1 %44 to i8
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %45, i8* %46, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x80__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -128
  %8 = add i64 %7, %6
  %9 = load i32, i32* %ECX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x260__rbp__rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -608
  %8 = add i64 %7, %6
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC, align 8
  %11 = trunc i64 %3 to i32
  %12 = inttoptr i64 %8 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = sub i32 %11, %13
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %RCX, align 8
  %16 = icmp ult i32 %11, %13
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %17, i8* %18, align 1
  %19 = and i32 %14, 255
  %20 = tail call i32 @llvm.ctpop.i32(i32 %19)
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %23, i8* %24, align 1
  %25 = xor i32 %13, %11
  %26 = xor i32 %25, %14
  %27 = lshr i32 %26, 4
  %28 = trunc i32 %27 to i8
  %29 = and i8 %28, 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %29, i8* %30, align 1
  %31 = icmp eq i32 %14, 0
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %14, 31
  %35 = trunc i32 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %35, i8* %36, align 1
  %37 = lshr i32 %11, 31
  %38 = lshr i32 %13, 31
  %39 = xor i32 %38, %37
  %40 = xor i32 %34, %37
  %41 = add nuw nsw i32 %40, %39
  %42 = icmp eq i32 %41, 2
  %43 = zext i1 %42 to i8
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %43, i8* %44, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x60__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -96
  %8 = add i64 %7, %6
  %9 = load i32, i32* %ECX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x240__rbp__rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -576
  %8 = add i64 %7, %6
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC, align 8
  %11 = trunc i64 %3 to i32
  %12 = inttoptr i64 %8 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = sub i32 %11, %13
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %RCX, align 8
  %16 = icmp ult i32 %11, %13
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %17, i8* %18, align 1
  %19 = and i32 %14, 255
  %20 = tail call i32 @llvm.ctpop.i32(i32 %19)
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %23, i8* %24, align 1
  %25 = xor i32 %13, %11
  %26 = xor i32 %25, %14
  %27 = lshr i32 %26, 4
  %28 = trunc i32 %27 to i8
  %29 = and i8 %28, 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %29, i8* %30, align 1
  %31 = icmp eq i32 %14, 0
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %14, 31
  %35 = trunc i32 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %35, i8* %36, align 1
  %37 = lshr i32 %11, 31
  %38 = lshr i32 %13, 31
  %39 = xor i32 %38, %37
  %40 = xor i32 %34, %37
  %41 = add nuw nsw i32 %40, %39
  %42 = icmp eq i32 %41, 2
  %43 = zext i1 %42 to i8
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %43, i8* %44, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x40__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -64
  %8 = add i64 %7, %6
  %9 = load i32, i32* %ECX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x120__rbp__rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -288
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x100__rbp__rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -256
  %8 = add i64 %7, %6
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC, align 8
  %11 = trunc i64 %3 to i32
  %12 = inttoptr i64 %8 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = add i32 %13, %11
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %RCX, align 8
  %16 = icmp ult i32 %14, %11
  %17 = icmp ult i32 %14, %13
  %18 = or i1 %16, %17
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %19, i8* %20, align 1
  %21 = and i32 %14, 255
  %22 = tail call i32 @llvm.ctpop.i32(i32 %21)
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = xor i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %25, i8* %26, align 1
  %27 = xor i32 %13, %11
  %28 = xor i32 %27, %14
  %29 = lshr i32 %28, 4
  %30 = trunc i32 %29 to i8
  %31 = and i8 %30, 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %31, i8* %32, align 1
  %33 = icmp eq i32 %14, 0
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %14, 31
  %37 = trunc i32 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %37, i8* %38, align 1
  %39 = lshr i32 %11, 31
  %40 = lshr i32 %13, 31
  %41 = xor i32 %36, %39
  %42 = xor i32 %36, %40
  %43 = add nuw nsw i32 %41, %42
  %44 = icmp eq i32 %43, 2
  %45 = zext i1 %44 to i8
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %45, i8* %46, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x220__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -544
  %8 = add i64 %7, %6
  %9 = load i32, i32* %ECX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x100__rbp__rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -256
  %8 = add i64 %7, %6
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC, align 8
  %11 = trunc i64 %3 to i32
  %12 = inttoptr i64 %8 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = sub i32 %11, %13
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %RCX, align 8
  %16 = icmp ult i32 %11, %13
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %17, i8* %18, align 1
  %19 = and i32 %14, 255
  %20 = tail call i32 @llvm.ctpop.i32(i32 %19)
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %23, i8* %24, align 1
  %25 = xor i32 %13, %11
  %26 = xor i32 %25, %14
  %27 = lshr i32 %26, 4
  %28 = trunc i32 %27 to i8
  %29 = and i8 %28, 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %29, i8* %30, align 1
  %31 = icmp eq i32 %14, 0
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %14, 31
  %35 = trunc i32 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %35, i8* %36, align 1
  %37 = lshr i32 %11, 31
  %38 = lshr i32 %13, 31
  %39 = xor i32 %38, %37
  %40 = xor i32 %34, %37
  %41 = add nuw nsw i32 %40, %39
  %42 = icmp eq i32 %41, 2
  %43 = zext i1 %42 to i8
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %43, i8* %44, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x200__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -512
  %8 = add i64 %7, %6
  %9 = load i32, i32* %ECX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xe0__rbp__rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -224
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0xc0__rbp__rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -192
  %8 = add i64 %7, %6
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC, align 8
  %11 = trunc i64 %3 to i32
  %12 = inttoptr i64 %8 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = add i32 %13, %11
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %RCX, align 8
  %16 = icmp ult i32 %14, %11
  %17 = icmp ult i32 %14, %13
  %18 = or i1 %16, %17
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %19, i8* %20, align 1
  %21 = and i32 %14, 255
  %22 = tail call i32 @llvm.ctpop.i32(i32 %21)
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = xor i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %25, i8* %26, align 1
  %27 = xor i32 %13, %11
  %28 = xor i32 %27, %14
  %29 = lshr i32 %28, 4
  %30 = trunc i32 %29 to i8
  %31 = and i8 %30, 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %31, i8* %32, align 1
  %33 = icmp eq i32 %14, 0
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %14, 31
  %37 = trunc i32 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %37, i8* %38, align 1
  %39 = lshr i32 %11, 31
  %40 = lshr i32 %13, 31
  %41 = xor i32 %36, %39
  %42 = xor i32 %36, %40
  %43 = add nuw nsw i32 %41, %42
  %44 = icmp eq i32 %43, 2
  %45 = zext i1 %44 to i8
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %45, i8* %46, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x1e0__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -480
  %8 = add i64 %7, %6
  %9 = load i32, i32* %ECX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0xc0__rbp__rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -192
  %8 = add i64 %7, %6
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC, align 8
  %11 = trunc i64 %3 to i32
  %12 = inttoptr i64 %8 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = sub i32 %11, %13
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %RCX, align 8
  %16 = icmp ult i32 %11, %13
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %17, i8* %18, align 1
  %19 = and i32 %14, 255
  %20 = tail call i32 @llvm.ctpop.i32(i32 %19)
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %23, i8* %24, align 1
  %25 = xor i32 %13, %11
  %26 = xor i32 %25, %14
  %27 = lshr i32 %26, 4
  %28 = trunc i32 %27 to i8
  %29 = and i8 %28, 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %29, i8* %30, align 1
  %31 = icmp eq i32 %14, 0
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %14, 31
  %35 = trunc i32 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %35, i8* %36, align 1
  %37 = lshr i32 %11, 31
  %38 = lshr i32 %13, 31
  %39 = xor i32 %38, %37
  %40 = xor i32 %34, %37
  %41 = add nuw nsw i32 %40, %39
  %42 = icmp eq i32 %41, 2
  %43 = zext i1 %42 to i8
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %43, i8* %44, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x1c0__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -448
  %8 = add i64 %7, %6
  %9 = load i32, i32* %ECX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xa0__rbp__rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -160
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x80__rbp__rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -128
  %8 = add i64 %7, %6
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 4
  store i64 %10, i64* %PC, align 8
  %11 = trunc i64 %3 to i32
  %12 = inttoptr i64 %8 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = add i32 %13, %11
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %RCX, align 8
  %16 = icmp ult i32 %14, %11
  %17 = icmp ult i32 %14, %13
  %18 = or i1 %16, %17
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %19, i8* %20, align 1
  %21 = and i32 %14, 255
  %22 = tail call i32 @llvm.ctpop.i32(i32 %21)
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = xor i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %25, i8* %26, align 1
  %27 = xor i32 %13, %11
  %28 = xor i32 %27, %14
  %29 = lshr i32 %28, 4
  %30 = trunc i32 %29 to i8
  %31 = and i8 %30, 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %31, i8* %32, align 1
  %33 = icmp eq i32 %14, 0
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %14, 31
  %37 = trunc i32 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %37, i8* %38, align 1
  %39 = lshr i32 %11, 31
  %40 = lshr i32 %13, 31
  %41 = xor i32 %36, %39
  %42 = xor i32 %36, %40
  %43 = add nuw nsw i32 %41, %42
  %44 = icmp eq i32 %43, 2
  %45 = zext i1 %44 to i8
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %45, i8* %46, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x1a0__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -416
  %8 = add i64 %7, %6
  %9 = load i32, i32* %ECX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x80__rbp__rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -128
  %8 = add i64 %7, %6
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 4
  store i64 %10, i64* %PC, align 8
  %11 = trunc i64 %3 to i32
  %12 = inttoptr i64 %8 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = sub i32 %11, %13
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %RCX, align 8
  %16 = icmp ult i32 %11, %13
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %17, i8* %18, align 1
  %19 = and i32 %14, 255
  %20 = tail call i32 @llvm.ctpop.i32(i32 %19)
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %23, i8* %24, align 1
  %25 = xor i32 %13, %11
  %26 = xor i32 %25, %14
  %27 = lshr i32 %26, 4
  %28 = trunc i32 %27 to i8
  %29 = and i8 %28, 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %29, i8* %30, align 1
  %31 = icmp eq i32 %14, 0
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %14, 31
  %35 = trunc i32 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %35, i8* %36, align 1
  %37 = lshr i32 %11, 31
  %38 = lshr i32 %13, 31
  %39 = xor i32 %38, %37
  %40 = xor i32 %34, %37
  %41 = add nuw nsw i32 %40, %39
  %42 = icmp eq i32 %41, 2
  %43 = zext i1 %42 to i8
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %43, i8* %44, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x180__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -384
  %8 = add i64 %7, %6
  %9 = load i32, i32* %ECX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x60__rbp__rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -96
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x40__rbp__rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -64
  %8 = add i64 %7, %6
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 4
  store i64 %10, i64* %PC, align 8
  %11 = trunc i64 %3 to i32
  %12 = inttoptr i64 %8 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = add i32 %13, %11
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %RCX, align 8
  %16 = icmp ult i32 %14, %11
  %17 = icmp ult i32 %14, %13
  %18 = or i1 %16, %17
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %19, i8* %20, align 1
  %21 = and i32 %14, 255
  %22 = tail call i32 @llvm.ctpop.i32(i32 %21)
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = xor i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %25, i8* %26, align 1
  %27 = xor i32 %13, %11
  %28 = xor i32 %27, %14
  %29 = lshr i32 %28, 4
  %30 = trunc i32 %29 to i8
  %31 = and i8 %30, 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %31, i8* %32, align 1
  %33 = icmp eq i32 %14, 0
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %14, 31
  %37 = trunc i32 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %37, i8* %38, align 1
  %39 = lshr i32 %11, 31
  %40 = lshr i32 %13, 31
  %41 = xor i32 %36, %39
  %42 = xor i32 %36, %40
  %43 = add nuw nsw i32 %41, %42
  %44 = icmp eq i32 %43, 2
  %45 = zext i1 %44 to i8
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %45, i8* %46, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x160__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -352
  %8 = add i64 %7, %6
  %9 = load i32, i32* %ECX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x40__rbp__rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -64
  %8 = add i64 %7, %6
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 4
  store i64 %10, i64* %PC, align 8
  %11 = trunc i64 %3 to i32
  %12 = inttoptr i64 %8 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = sub i32 %11, %13
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %RCX, align 8
  %16 = icmp ult i32 %11, %13
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %17, i8* %18, align 1
  %19 = and i32 %14, 255
  %20 = tail call i32 @llvm.ctpop.i32(i32 %19)
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %23, i8* %24, align 1
  %25 = xor i32 %13, %11
  %26 = xor i32 %25, %14
  %27 = lshr i32 %26, 4
  %28 = trunc i32 %27 to i8
  %29 = and i8 %28, 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %29, i8* %30, align 1
  %31 = icmp eq i32 %14, 0
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %14, 31
  %35 = trunc i32 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %35, i8* %36, align 1
  %37 = lshr i32 %11, 31
  %38 = lshr i32 %13, 31
  %39 = xor i32 %38, %37
  %40 = xor i32 %34, %37
  %41 = add nuw nsw i32 %40, %39
  %42 = icmp eq i32 %41, 2
  %43 = zext i1 %42 to i8
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %43, i8* %44, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x140__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -320
  %8 = add i64 %7, %6
  %9 = load i32, i32* %ECX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
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
define %struct.Memory* @routine_jmpq_.L_45faf4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_45febd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_45feaa(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x10__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0____rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %11, align 1
  %12 = and i32 %10, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  %19 = icmp eq i32 %10, 0
  %20 = zext i1 %19 to i8
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %20, i8* %21, align 1
  %22 = lshr i32 %10, 31
  %23 = trunc i32 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %23, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %25, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_45fe71(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_xorl__eax___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2
  store i64 %4, i64* %PC, align 8
  store i64 0, i64* %RAX, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5, align 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 1, i8* %7, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x220__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -544
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x10__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
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
define %struct.Memory* @routine_subl___rcx__rdx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %13 = sub i32 %10, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RAX, align 8
  %15 = icmp ult i32 %10, %12
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %16, i8* %17, align 1
  %18 = and i32 %13, 255
  %19 = tail call i32 @llvm.ctpop.i32(i32 %18)
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1
  %24 = xor i32 %12, %10
  %25 = xor i32 %24, %13
  %26 = lshr i32 %25, 4
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1
  %30 = icmp eq i32 %13, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %13, 31
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %10, 31
  %37 = lshr i32 %12, 31
  %38 = xor i32 %37, %36
  %39 = xor i32 %33, %36
  %40 = add nuw nsw i32 %39, %38
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x324__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -804
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_45fe90(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x324__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -804
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x324__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -804
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x18__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24
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
define %struct.Memory* @routine_jmpq_.L_45fe21(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_45feaf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_45fe10(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_sarl__0x2___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 32
  %7 = ashr i64 %6, 33
  %8 = lshr i64 %7, 1
  %9 = trunc i64 %7 to i8
  %10 = and i8 %9, 1
  %11 = trunc i64 %8 to i32
  %12 = and i64 %8, 4294967295
  store i64 %12, i64* %RAX, align 8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %10, i8* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %15 = and i32 %11, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  store i8 %19, i8* %14, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %22 = icmp eq i32 %11, 0
  %23 = zext i1 %22 to i8
  store i8 %23, i8* %21, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %25 = lshr i64 %7, 32
  %26 = trunc i64 %25 to i8
  %27 = and i8 %26, 1
  store i8 %27, i8* %24, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %28, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_45ff0f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x40__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -64
  %10 = icmp ult i32 %8, 64
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
define %struct.Memory* @routine_jge_.L_45ff0a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x726840___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x726840_type* @G_0x726840 to i64*), align 8
  store i64 %5, i64* %RAX, align 8
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
define %struct.Memory* @routine_movslq___rcx__rdx_4____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sext i32 %10 to i64
  store i64 %11, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl___rax__rcx_4____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
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
  store i64 %11, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x18__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24
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
define %struct.Memory* @routine_movl__esi__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_45fed5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x2b0___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 688
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -689
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
