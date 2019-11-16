; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G__0x579b60_type = type <{ [8 x i8] }>
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
@G__0x579b60 = global %G__0x579b60_type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @transform2(%struct.State* noalias, i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #1 {
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
  %EDI.i94 = bitcast %union.anon* %11 to i32*
  %12 = add i64 %7, -12
  %13 = load i32, i32* %EDI.i94, align 4
  %14 = add i64 %10, 6
  store i64 %14, i64* %3, align 8
  %15 = inttoptr i64 %12 to i32*
  store i32 %13, i32* %15, align 4
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i91 = bitcast %union.anon* %16 to i32*
  %17 = load i64, i64* %RBP.i, align 8
  %18 = add i64 %17, -8
  %19 = load i32, i32* %ESI.i91, align 4
  %20 = load i64, i64* %3, align 8
  %21 = add i64 %20, 3
  store i64 %21, i64* %3, align 8
  %22 = inttoptr i64 %18 to i32*
  store i32 %19, i32* %22, align 4
  %RDX.i88 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %23 = load i64, i64* %RBP.i, align 8
  %24 = add i64 %23, -16
  %25 = load i64, i64* %RDX.i88, align 8
  %26 = load i64, i64* %3, align 8
  %27 = add i64 %26, 4
  store i64 %27, i64* %3, align 8
  %28 = inttoptr i64 %24 to i64*
  store i64 %25, i64* %28, align 8
  %RCX.i85 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %29 = load i64, i64* %RBP.i, align 8
  %30 = add i64 %29, -24
  %31 = load i64, i64* %RCX.i85, align 8
  %32 = load i64, i64* %3, align 8
  %33 = add i64 %32, 4
  store i64 %33, i64* %3, align 8
  %34 = inttoptr i64 %30 to i64*
  store i64 %31, i64* %34, align 8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D.i = bitcast %union.anon* %35 to i32*
  %36 = load i64, i64* %RBP.i, align 8
  %37 = add i64 %36, -28
  %38 = load i32, i32* %R8D.i, align 4
  %39 = load i64, i64* %3, align 8
  %40 = add i64 %39, 4
  store i64 %40, i64* %3, align 8
  %41 = inttoptr i64 %37 to i32*
  store i32 %38, i32* %41, align 4
  %RAX.i81 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %42 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x579b60_type* @G__0x579b60 to i64), i64* %RAX.i81, align 8
  %43 = load i64, i64* %RBP.i, align 8
  %44 = add i64 %43, -28
  %45 = add i64 %42, 14
  store i64 %45, i64* %3, align 8
  %46 = inttoptr i64 %44 to i32*
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = shl nsw i64 %48, 4
  store i64 %49, i64* %RCX.i85, align 8
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %52 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %53 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %54 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %56 = add i64 %49, ptrtoint (%G__0x579b60_type* @G__0x579b60 to i64)
  store i64 %56, i64* %RDX.i88, align 8
  %57 = icmp ult i64 %56, ptrtoint (%G__0x579b60_type* @G__0x579b60 to i64)
  %58 = icmp ult i64 %56, %49
  %59 = or i1 %57, %58
  %60 = zext i1 %59 to i8
  store i8 %60, i8* %50, align 1
  %61 = trunc i64 %56 to i32
  %62 = and i32 %61, 248
  %63 = tail call i32 @llvm.ctpop.i32(i32 %62)
  %64 = trunc i32 %63 to i8
  %65 = and i8 %64, 1
  %66 = xor i8 %65, 1
  store i8 %66, i8* %51, align 1
  %67 = xor i64 %49, ptrtoint (%G__0x579b60_type* @G__0x579b60 to i64)
  %68 = xor i64 %67, %56
  %69 = lshr i64 %68, 4
  %70 = trunc i64 %69 to i8
  %71 = and i8 %70, 1
  store i8 %71, i8* %52, align 1
  %72 = icmp eq i64 %56, 0
  %73 = zext i1 %72 to i8
  store i8 %73, i8* %53, align 1
  %74 = lshr i64 %56, 63
  %75 = trunc i64 %74 to i8
  store i8 %75, i8* %54, align 1
  %76 = lshr i64 %48, 59
  %77 = and i64 %76, 1
  %78 = xor i64 %74, lshr (i64 ptrtoint (%G__0x579b60_type* @G__0x579b60 to i64), i64 63)
  %79 = xor i64 %74, %77
  %80 = add nuw nsw i64 %78, %79
  %81 = icmp eq i64 %80, 2
  %82 = zext i1 %81 to i8
  store i8 %82, i8* %55, align 1
  %RSI.i68 = getelementptr inbounds %union.anon, %union.anon* %16, i64 0, i32 0
  %83 = inttoptr i64 %56 to i32*
  %84 = add i64 %42, 26
  store i64 %84, i64* %3, align 8
  %85 = load i32, i32* %83, align 8
  %86 = zext i32 %85 to i64
  store i64 %86, i64* %RSI.i68, align 8
  %87 = add i64 %43, -4
  %88 = add i64 %42, 30
  store i64 %88, i64* %3, align 8
  %89 = inttoptr i64 %87 to i32*
  %90 = load i32, i32* %89, align 4
  %91 = sext i32 %85 to i64
  %92 = sext i32 %90 to i64
  %93 = mul nsw i64 %92, %91
  %94 = trunc i64 %93 to i32
  %95 = and i64 %93, 4294967295
  store i64 %95, i64* %RSI.i68, align 8
  %96 = shl i64 %93, 32
  %97 = ashr exact i64 %96, 32
  %98 = icmp ne i64 %97, %93
  %99 = zext i1 %98 to i8
  store i8 %99, i8* %50, align 1
  %100 = and i32 %94, 255
  %101 = tail call i32 @llvm.ctpop.i32(i32 %100)
  %102 = trunc i32 %101 to i8
  %103 = and i8 %102, 1
  %104 = xor i8 %103, 1
  store i8 %104, i8* %51, align 1
  store i8 0, i8* %52, align 1
  store i8 0, i8* %53, align 1
  %105 = lshr i32 %94, 31
  %106 = trunc i32 %105 to i8
  store i8 %106, i8* %54, align 1
  store i8 %99, i8* %55, align 1
  %107 = load i64, i64* %RBP.i, align 8
  %108 = add i64 %107, -28
  %109 = add i64 %42, 34
  store i64 %109, i64* %3, align 8
  %110 = inttoptr i64 %108 to i32*
  %111 = load i32, i32* %110, align 4
  %112 = sext i32 %111 to i64
  %113 = shl nsw i64 %112, 4
  store i64 %113, i64* %RCX.i85, align 8
  %114 = load i64, i64* %RAX.i81, align 8
  %115 = add i64 %113, %114
  store i64 %115, i64* %RDX.i88, align 8
  %116 = icmp ult i64 %115, %114
  %117 = icmp ult i64 %115, %113
  %118 = or i1 %116, %117
  %119 = zext i1 %118 to i8
  store i8 %119, i8* %50, align 1
  %120 = trunc i64 %115 to i32
  %121 = and i32 %120, 255
  %122 = tail call i32 @llvm.ctpop.i32(i32 %121)
  %123 = trunc i32 %122 to i8
  %124 = and i8 %123, 1
  %125 = xor i8 %124, 1
  store i8 %125, i8* %51, align 1
  %126 = xor i64 %113, %114
  %127 = xor i64 %126, %115
  %128 = lshr i64 %127, 4
  %129 = trunc i64 %128 to i8
  %130 = and i8 %129, 1
  store i8 %130, i8* %52, align 1
  %131 = icmp eq i64 %115, 0
  %132 = zext i1 %131 to i8
  store i8 %132, i8* %53, align 1
  %133 = lshr i64 %115, 63
  %134 = trunc i64 %133 to i8
  store i8 %134, i8* %54, align 1
  %135 = lshr i64 %114, 63
  %136 = lshr i64 %112, 59
  %137 = and i64 %136, 1
  %138 = xor i64 %133, %135
  %139 = xor i64 %133, %137
  %140 = add nuw nsw i64 %138, %139
  %141 = icmp eq i64 %140, 2
  %142 = zext i1 %141 to i8
  store i8 %142, i8* %55, align 1
  %RDI.i51 = getelementptr inbounds %union.anon, %union.anon* %11, i64 0, i32 0
  %143 = add i64 %115, 4
  %144 = add i64 %42, 47
  store i64 %144, i64* %3, align 8
  %145 = inttoptr i64 %143 to i32*
  %146 = load i32, i32* %145, align 4
  %147 = zext i32 %146 to i64
  store i64 %147, i64* %RDI.i51, align 8
  %148 = add i64 %107, -8
  %149 = add i64 %42, 51
  store i64 %149, i64* %3, align 8
  %150 = inttoptr i64 %148 to i32*
  %151 = load i32, i32* %150, align 4
  %152 = sext i32 %146 to i64
  %153 = sext i32 %151 to i64
  %154 = mul nsw i64 %153, %152
  %155 = and i64 %154, 4294967295
  store i64 %155, i64* %RDI.i51, align 8
  %156 = load i64, i64* %RSI.i68, align 8
  %157 = trunc i64 %154 to i32
  %158 = trunc i64 %156 to i32
  %159 = add i32 %157, %158
  %160 = zext i32 %159 to i64
  store i64 %160, i64* %RSI.i68, align 8
  %161 = icmp ult i32 %159, %158
  %162 = icmp ult i32 %159, %157
  %163 = or i1 %161, %162
  %164 = zext i1 %163 to i8
  store i8 %164, i8* %50, align 1
  %165 = and i32 %159, 255
  %166 = tail call i32 @llvm.ctpop.i32(i32 %165)
  %167 = trunc i32 %166 to i8
  %168 = and i8 %167, 1
  %169 = xor i8 %168, 1
  store i8 %169, i8* %51, align 1
  %170 = xor i64 %154, %156
  %171 = trunc i64 %170 to i32
  %172 = xor i32 %171, %159
  %173 = lshr i32 %172, 4
  %174 = trunc i32 %173 to i8
  %175 = and i8 %174, 1
  store i8 %175, i8* %52, align 1
  %176 = icmp eq i32 %159, 0
  %177 = zext i1 %176 to i8
  store i8 %177, i8* %53, align 1
  %178 = lshr i32 %159, 31
  %179 = trunc i32 %178 to i8
  store i8 %179, i8* %54, align 1
  %180 = lshr i32 %158, 31
  %181 = lshr i32 %157, 31
  %182 = xor i32 %178, %180
  %183 = xor i32 %178, %181
  %184 = add nuw nsw i32 %182, %183
  %185 = icmp eq i32 %184, 2
  %186 = zext i1 %185 to i8
  store i8 %186, i8* %55, align 1
  %187 = load i64, i64* %RBP.i, align 8
  %188 = add i64 %187, -16
  %189 = add i64 %42, 57
  store i64 %189, i64* %3, align 8
  %190 = inttoptr i64 %188 to i64*
  %191 = load i64, i64* %190, align 8
  store i64 %191, i64* %RCX.i85, align 8
  %192 = add i64 %42, 59
  store i64 %192, i64* %3, align 8
  %193 = inttoptr i64 %191 to i32*
  store i32 %159, i32* %193, align 4
  %194 = load i64, i64* %RBP.i, align 8
  %195 = add i64 %194, -28
  %196 = load i64, i64* %3, align 8
  %197 = add i64 %196, 4
  store i64 %197, i64* %3, align 8
  %198 = inttoptr i64 %195 to i32*
  %199 = load i32, i32* %198, align 4
  %200 = sext i32 %199 to i64
  %201 = shl nsw i64 %200, 4
  store i64 %201, i64* %RCX.i85, align 8
  %202 = load i64, i64* %RAX.i81, align 8
  %203 = add i64 %201, %202
  store i64 %203, i64* %RDX.i88, align 8
  %204 = icmp ult i64 %203, %202
  %205 = icmp ult i64 %203, %201
  %206 = or i1 %204, %205
  %207 = zext i1 %206 to i8
  store i8 %207, i8* %50, align 1
  %208 = trunc i64 %203 to i32
  %209 = and i32 %208, 255
  %210 = tail call i32 @llvm.ctpop.i32(i32 %209)
  %211 = trunc i32 %210 to i8
  %212 = and i8 %211, 1
  %213 = xor i8 %212, 1
  store i8 %213, i8* %51, align 1
  %214 = xor i64 %201, %202
  %215 = xor i64 %214, %203
  %216 = lshr i64 %215, 4
  %217 = trunc i64 %216 to i8
  %218 = and i8 %217, 1
  store i8 %218, i8* %52, align 1
  %219 = icmp eq i64 %203, 0
  %220 = zext i1 %219 to i8
  store i8 %220, i8* %53, align 1
  %221 = lshr i64 %203, 63
  %222 = trunc i64 %221 to i8
  store i8 %222, i8* %54, align 1
  %223 = lshr i64 %202, 63
  %224 = lshr i64 %200, 59
  %225 = and i64 %224, 1
  %226 = xor i64 %221, %223
  %227 = xor i64 %221, %225
  %228 = add nuw nsw i64 %226, %227
  %229 = icmp eq i64 %228, 2
  %230 = zext i1 %229 to i8
  store i8 %230, i8* %55, align 1
  %231 = add i64 %203, 8
  %232 = add i64 %196, 17
  store i64 %232, i64* %3, align 8
  %233 = inttoptr i64 %231 to i32*
  %234 = load i32, i32* %233, align 4
  %235 = zext i32 %234 to i64
  store i64 %235, i64* %RSI.i68, align 8
  %236 = add i64 %194, -4
  %237 = add i64 %196, 21
  store i64 %237, i64* %3, align 8
  %238 = inttoptr i64 %236 to i32*
  %239 = load i32, i32* %238, align 4
  %240 = sext i32 %234 to i64
  %241 = sext i32 %239 to i64
  %242 = mul nsw i64 %241, %240
  %243 = trunc i64 %242 to i32
  %244 = and i64 %242, 4294967295
  store i64 %244, i64* %RSI.i68, align 8
  %245 = shl i64 %242, 32
  %246 = ashr exact i64 %245, 32
  %247 = icmp ne i64 %246, %242
  %248 = zext i1 %247 to i8
  store i8 %248, i8* %50, align 1
  %249 = and i32 %243, 255
  %250 = tail call i32 @llvm.ctpop.i32(i32 %249)
  %251 = trunc i32 %250 to i8
  %252 = and i8 %251, 1
  %253 = xor i8 %252, 1
  store i8 %253, i8* %51, align 1
  store i8 0, i8* %52, align 1
  store i8 0, i8* %53, align 1
  %254 = lshr i32 %243, 31
  %255 = trunc i32 %254 to i8
  store i8 %255, i8* %54, align 1
  store i8 %248, i8* %55, align 1
  %256 = load i64, i64* %RBP.i, align 8
  %257 = add i64 %256, -28
  %258 = add i64 %196, 25
  store i64 %258, i64* %3, align 8
  %259 = inttoptr i64 %257 to i32*
  %260 = load i32, i32* %259, align 4
  %261 = sext i32 %260 to i64
  %262 = shl nsw i64 %261, 4
  store i64 %262, i64* %RCX.i85, align 8
  %263 = load i64, i64* %RAX.i81, align 8
  %264 = add i64 %262, %263
  store i64 %264, i64* %RAX.i81, align 8
  %265 = icmp ult i64 %264, %263
  %266 = icmp ult i64 %264, %262
  %267 = or i1 %265, %266
  %268 = zext i1 %267 to i8
  store i8 %268, i8* %50, align 1
  %269 = trunc i64 %264 to i32
  %270 = and i32 %269, 255
  %271 = tail call i32 @llvm.ctpop.i32(i32 %270)
  %272 = trunc i32 %271 to i8
  %273 = and i8 %272, 1
  %274 = xor i8 %273, 1
  store i8 %274, i8* %51, align 1
  %275 = xor i64 %262, %263
  %276 = xor i64 %275, %264
  %277 = lshr i64 %276, 4
  %278 = trunc i64 %277 to i8
  %279 = and i8 %278, 1
  store i8 %279, i8* %52, align 1
  %280 = icmp eq i64 %264, 0
  %281 = zext i1 %280 to i8
  store i8 %281, i8* %53, align 1
  %282 = lshr i64 %264, 63
  %283 = trunc i64 %282 to i8
  store i8 %283, i8* %54, align 1
  %284 = lshr i64 %263, 63
  %285 = lshr i64 %261, 59
  %286 = and i64 %285, 1
  %287 = xor i64 %282, %284
  %288 = xor i64 %282, %286
  %289 = add nuw nsw i64 %287, %288
  %290 = icmp eq i64 %289, 2
  %291 = zext i1 %290 to i8
  store i8 %291, i8* %55, align 1
  %292 = add i64 %264, 12
  %293 = add i64 %196, 35
  store i64 %293, i64* %3, align 8
  %294 = inttoptr i64 %292 to i32*
  %295 = load i32, i32* %294, align 4
  %296 = zext i32 %295 to i64
  store i64 %296, i64* %RDI.i51, align 8
  %297 = add i64 %256, -8
  %298 = add i64 %196, 39
  store i64 %298, i64* %3, align 8
  %299 = inttoptr i64 %297 to i32*
  %300 = load i32, i32* %299, align 4
  %301 = sext i32 %295 to i64
  %302 = sext i32 %300 to i64
  %303 = mul nsw i64 %302, %301
  %304 = and i64 %303, 4294967295
  store i64 %304, i64* %RDI.i51, align 8
  %305 = load i64, i64* %RSI.i68, align 8
  %306 = trunc i64 %303 to i32
  %307 = trunc i64 %305 to i32
  %308 = add i32 %306, %307
  %309 = zext i32 %308 to i64
  store i64 %309, i64* %RSI.i68, align 8
  %310 = icmp ult i32 %308, %307
  %311 = icmp ult i32 %308, %306
  %312 = or i1 %310, %311
  %313 = zext i1 %312 to i8
  store i8 %313, i8* %50, align 1
  %314 = and i32 %308, 255
  %315 = tail call i32 @llvm.ctpop.i32(i32 %314)
  %316 = trunc i32 %315 to i8
  %317 = and i8 %316, 1
  %318 = xor i8 %317, 1
  store i8 %318, i8* %51, align 1
  %319 = xor i64 %303, %305
  %320 = trunc i64 %319 to i32
  %321 = xor i32 %320, %308
  %322 = lshr i32 %321, 4
  %323 = trunc i32 %322 to i8
  %324 = and i8 %323, 1
  store i8 %324, i8* %52, align 1
  %325 = icmp eq i32 %308, 0
  %326 = zext i1 %325 to i8
  store i8 %326, i8* %53, align 1
  %327 = lshr i32 %308, 31
  %328 = trunc i32 %327 to i8
  store i8 %328, i8* %54, align 1
  %329 = lshr i32 %307, 31
  %330 = lshr i32 %306, 31
  %331 = xor i32 %327, %329
  %332 = xor i32 %327, %330
  %333 = add nuw nsw i32 %331, %332
  %334 = icmp eq i32 %333, 2
  %335 = zext i1 %334 to i8
  store i8 %335, i8* %55, align 1
  %336 = load i64, i64* %RBP.i, align 8
  %337 = add i64 %336, -24
  %338 = add i64 %196, 45
  store i64 %338, i64* %3, align 8
  %339 = inttoptr i64 %337 to i64*
  %340 = load i64, i64* %339, align 8
  store i64 %340, i64* %RAX.i81, align 8
  %341 = add i64 %196, 47
  store i64 %341, i64* %3, align 8
  %342 = inttoptr i64 %340 to i32*
  store i32 %308, i32* %342, align 4
  %343 = load i64, i64* %3, align 8
  %344 = add i64 %343, 1
  store i64 %344, i64* %3, align 8
  %345 = load i64, i64* %6, align 8
  %346 = add i64 %345, 8
  %347 = inttoptr i64 %345 to i64*
  %348 = load i64, i64* %347, align 8
  store i64 %348, i64* %RBP.i, align 8
  store i64 %346, i64* %6, align 8
  %349 = add i64 %343, 2
  store i64 %349, i64* %3, align 8
  %350 = inttoptr i64 %346 to i64*
  %351 = load i64, i64* %350, align 8
  store i64 %351, i64* %3, align 8
  %352 = add i64 %345, 16
  store i64 %352, i64* %6, align 8
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
define %struct.Memory* @routine_movl__r8d__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -28
  %6 = load i32, i32* %R8D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x579b60___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x579b60_type* @G__0x579b60 to i64), i64* %RAX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_shlq__0x4___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 4
  store i64 %6, i64* %RCX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 60
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 240
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
  %23 = lshr i64 %3, 59
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rcx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %RDX, align 8
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
define %struct.Memory* @routine_movl___rdx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = bitcast i64* %RDX to i32**
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
define %struct.Memory* @routine_imull_MINUS0x4__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = shl i64 %3, 32
  %11 = ashr exact i64 %10, 32
  %12 = sext i32 %9 to i64
  %13 = mul nsw i64 %12, %11
  %14 = trunc i64 %13 to i32
  %15 = and i64 %13, 4294967295
  store i64 %15, i64* %RSI, align 8
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  %18 = icmp ne i64 %17, %13
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
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %28, align 1
  %29 = lshr i32 %14, 31
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %19, i8* %32, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x4__rdx____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 4
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
define %struct.Memory* @routine_imull_MINUS0x8__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = shl i64 %3, 32
  %11 = ashr exact i64 %10, 32
  %12 = sext i32 %9 to i64
  %13 = mul nsw i64 %12, %11
  %14 = trunc i64 %13 to i32
  %15 = and i64 %13, 4294967295
  store i64 %15, i64* %RDI, align 8
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  %18 = icmp ne i64 %17, %13
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
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %28, align 1
  %29 = lshr i32 %14, 31
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %19, i8* %32, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__edi___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RSI, align 8
  %5 = load i32, i32* %EDI, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %4 to i32
  %10 = add i32 %5, %9
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RSI, align 8
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
define %struct.Memory* @routine_movl__esi____rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = bitcast i64* %RCX to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  store i32 %6, i32* %5, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x8__rdx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
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
define %struct.Memory* @routine_movl_0xc__rax____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 12
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
define %struct.Memory* @routine_movl__esi____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = bitcast i64* %RAX to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  store i32 %6, i32* %5, align 4
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
