; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G__0xb4bd20_type = type <{ [8 x i8] }>
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
@G__0xb4bd20 = global %G__0xb4bd20_type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @owl_threatens_attack(%struct.State* noalias, i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #1 {
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
  %RAX.i92 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i92, align 8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i = bitcast %union.anon* %11 to i32*
  %12 = add i64 %7, -16
  %13 = load i32, i32* %EDI.i, align 4
  %14 = add i64 %10, 16
  store i64 %14, i64* %3, align 8
  %15 = inttoptr i64 %12 to i32*
  store i32 %13, i32* %15, align 4
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i = bitcast %union.anon* %16 to i32*
  %17 = load i64, i64* %RBP.i, align 8
  %18 = add i64 %17, -12
  %19 = load i32, i32* %ESI.i, align 4
  %20 = load i64, i64* %3, align 8
  %21 = add i64 %20, 3
  store i64 %21, i64* %3, align 8
  %22 = inttoptr i64 %18 to i32*
  store i32 %19, i32* %22, align 4
  %RCX.i85 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %23 = load i64, i64* %RBP.i, align 8
  %24 = add i64 %23, -12
  %25 = load i64, i64* %3, align 8
  %26 = add i64 %25, 4
  store i64 %26, i64* %3, align 8
  %27 = inttoptr i64 %24 to i32*
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  %30 = mul nsw i64 %29, 76
  store i64 %30, i64* %RCX.i85, align 8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %35 = lshr i64 %30, 63
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %38 = load i64, i64* %RAX.i92, align 8
  %39 = add i64 %30, %38
  store i64 %39, i64* %RAX.i92, align 8
  %40 = icmp ult i64 %39, %38
  %41 = icmp ult i64 %39, %30
  %42 = or i1 %40, %41
  %43 = zext i1 %42 to i8
  store i8 %43, i8* %31, align 1
  %44 = trunc i64 %39 to i32
  %45 = and i32 %44, 255
  %46 = tail call i32 @llvm.ctpop.i32(i32 %45)
  %47 = trunc i32 %46 to i8
  %48 = and i8 %47, 1
  %49 = xor i8 %48, 1
  store i8 %49, i8* %32, align 1
  %50 = xor i64 %30, %38
  %51 = xor i64 %50, %39
  %52 = lshr i64 %51, 4
  %53 = trunc i64 %52 to i8
  %54 = and i8 %53, 1
  store i8 %54, i8* %33, align 1
  %55 = icmp eq i64 %39, 0
  %56 = zext i1 %55 to i8
  store i8 %56, i8* %34, align 1
  %57 = lshr i64 %39, 63
  %58 = trunc i64 %57 to i8
  store i8 %58, i8* %36, align 1
  %59 = lshr i64 %38, 63
  %60 = xor i64 %57, %59
  %61 = xor i64 %57, %35
  %62 = add nuw nsw i64 %60, %61
  %63 = icmp eq i64 %62, 2
  %64 = zext i1 %63 to i8
  store i8 %64, i8* %37, align 1
  %65 = add i64 %39, 28
  %66 = add i64 %25, 15
  store i64 %66, i64* %3, align 8
  %67 = inttoptr i64 %65 to i32*
  %68 = load i32, i32* %67, align 4
  %69 = add i32 %68, -2
  %70 = icmp ult i32 %68, 2
  %71 = zext i1 %70 to i8
  store i8 %71, i8* %31, align 1
  %72 = and i32 %69, 255
  %73 = tail call i32 @llvm.ctpop.i32(i32 %72)
  %74 = trunc i32 %73 to i8
  %75 = and i8 %74, 1
  %76 = xor i8 %75, 1
  store i8 %76, i8* %32, align 1
  %77 = xor i32 %69, %68
  %78 = lshr i32 %77, 4
  %79 = trunc i32 %78 to i8
  %80 = and i8 %79, 1
  store i8 %80, i8* %33, align 1
  %81 = icmp eq i32 %69, 0
  %82 = zext i1 %81 to i8
  store i8 %82, i8* %34, align 1
  %83 = lshr i32 %69, 31
  %84 = trunc i32 %83 to i8
  store i8 %84, i8* %36, align 1
  %85 = lshr i32 %68, 31
  %86 = xor i32 %83, %85
  %87 = add nuw nsw i32 %86, %85
  %88 = icmp eq i32 %87, 2
  %89 = zext i1 %88 to i8
  store i8 %89, i8* %37, align 1
  %.v = select i1 %81, i64 21, i64 66
  %90 = add i64 %25, %.v
  store i64 %90, i64* %3, align 8
  br i1 %81, label %block_4afd59, label %block_.L_4afd86

block_4afd59:                                     ; preds = %entry
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i92, align 8
  %91 = load i64, i64* %RBP.i, align 8
  %92 = add i64 %91, -12
  %93 = add i64 %90, 14
  store i64 %93, i64* %3, align 8
  %94 = inttoptr i64 %92 to i32*
  %95 = load i32, i32* %94, align 4
  %96 = sext i32 %95 to i64
  %97 = mul nsw i64 %96, 76
  store i64 %97, i64* %RCX.i85, align 8
  %98 = lshr i64 %97, 63
  %99 = add i64 %97, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %99, i64* %RAX.i92, align 8
  %100 = icmp ult i64 %99, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %101 = icmp ult i64 %99, %97
  %102 = or i1 %100, %101
  %103 = zext i1 %102 to i8
  store i8 %103, i8* %31, align 1
  %104 = trunc i64 %99 to i32
  %105 = and i32 %104, 252
  %106 = tail call i32 @llvm.ctpop.i32(i32 %105)
  %107 = trunc i32 %106 to i8
  %108 = and i8 %107, 1
  %109 = xor i8 %108, 1
  store i8 %109, i8* %32, align 1
  %110 = xor i64 %97, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %111 = xor i64 %110, %99
  %112 = lshr i64 %111, 4
  %113 = trunc i64 %112 to i8
  %114 = and i8 %113, 1
  store i8 %114, i8* %33, align 1
  %115 = icmp eq i64 %99, 0
  %116 = zext i1 %115 to i8
  store i8 %116, i8* %34, align 1
  %117 = lshr i64 %99, 63
  %118 = trunc i64 %117 to i8
  store i8 %118, i8* %36, align 1
  %119 = xor i64 %117, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %120 = xor i64 %117, %98
  %121 = add nuw nsw i64 %119, %120
  %122 = icmp eq i64 %121, 2
  %123 = zext i1 %122 to i8
  store i8 %123, i8* %37, align 1
  %RDX.i65 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %124 = add i64 %97, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 32)
  %125 = add i64 %90, 24
  store i64 %125, i64* %3, align 8
  %126 = inttoptr i64 %124 to i32*
  %127 = load i32, i32* %126, align 4
  %128 = zext i32 %127 to i64
  store i64 %128, i64* %RDX.i65, align 8
  %129 = add i64 %91, -8
  %130 = add i64 %90, 27
  store i64 %130, i64* %3, align 8
  %131 = inttoptr i64 %129 to i32*
  %132 = load i32, i32* %131, align 4
  %133 = sub i32 %127, %132
  %134 = icmp ult i32 %127, %132
  %135 = zext i1 %134 to i8
  store i8 %135, i8* %31, align 1
  %136 = and i32 %133, 255
  %137 = tail call i32 @llvm.ctpop.i32(i32 %136)
  %138 = trunc i32 %137 to i8
  %139 = and i8 %138, 1
  %140 = xor i8 %139, 1
  store i8 %140, i8* %32, align 1
  %141 = xor i32 %132, %127
  %142 = xor i32 %141, %133
  %143 = lshr i32 %142, 4
  %144 = trunc i32 %143 to i8
  %145 = and i8 %144, 1
  store i8 %145, i8* %33, align 1
  %146 = icmp eq i32 %133, 0
  %147 = zext i1 %146 to i8
  store i8 %147, i8* %34, align 1
  %148 = lshr i32 %133, 31
  %149 = trunc i32 %148 to i8
  store i8 %149, i8* %36, align 1
  %150 = lshr i32 %127, 31
  %151 = lshr i32 %132, 31
  %152 = xor i32 %151, %150
  %153 = xor i32 %148, %150
  %154 = add nuw nsw i32 %153, %152
  %155 = icmp eq i32 %154, 2
  %156 = zext i1 %155 to i8
  store i8 %156, i8* %37, align 1
  %.v8 = select i1 %146, i64 33, i64 45
  %157 = add i64 %90, %.v8
  store i64 %157, i64* %3, align 8
  br i1 %146, label %block_4afd7a, label %block_.L_4afd86

block_4afd7a:                                     ; preds = %block_4afd59
  %158 = load i64, i64* %RBP.i, align 8
  %159 = add i64 %158, -4
  %160 = add i64 %157, 7
  store i64 %160, i64* %3, align 8
  %161 = inttoptr i64 %159 to i32*
  store i32 1, i32* %161, align 4
  %162 = load i64, i64* %3, align 8
  %163 = add i64 %162, 126
  store i64 %163, i64* %3, align 8
  br label %block_.L_4afdff

block_.L_4afd86:                                  ; preds = %block_4afd59, %entry
  %164 = phi i64 [ %157, %block_4afd59 ], [ %90, %entry ]
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i92, align 8
  %165 = load i64, i64* %RBP.i, align 8
  %166 = add i64 %165, -12
  %167 = add i64 %164, 14
  store i64 %167, i64* %3, align 8
  %168 = inttoptr i64 %166 to i32*
  %169 = load i32, i32* %168, align 4
  %170 = sext i32 %169 to i64
  %171 = mul nsw i64 %170, 76
  store i64 %171, i64* %RCX.i85, align 8
  %172 = lshr i64 %171, 63
  %173 = add i64 %171, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %173, i64* %RAX.i92, align 8
  %174 = icmp ult i64 %173, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %175 = icmp ult i64 %173, %171
  %176 = or i1 %174, %175
  %177 = zext i1 %176 to i8
  store i8 %177, i8* %31, align 1
  %178 = trunc i64 %173 to i32
  %179 = and i32 %178, 252
  %180 = tail call i32 @llvm.ctpop.i32(i32 %179)
  %181 = trunc i32 %180 to i8
  %182 = and i8 %181, 1
  %183 = xor i8 %182, 1
  store i8 %183, i8* %32, align 1
  %184 = xor i64 %171, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %185 = xor i64 %184, %173
  %186 = lshr i64 %185, 4
  %187 = trunc i64 %186 to i8
  %188 = and i8 %187, 1
  store i8 %188, i8* %33, align 1
  %189 = icmp eq i64 %173, 0
  %190 = zext i1 %189 to i8
  store i8 %190, i8* %34, align 1
  %191 = lshr i64 %173, 63
  %192 = trunc i64 %191 to i8
  store i8 %192, i8* %36, align 1
  %193 = xor i64 %191, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %194 = xor i64 %191, %172
  %195 = add nuw nsw i64 %193, %194
  %196 = icmp eq i64 %195, 2
  %197 = zext i1 %196 to i8
  store i8 %197, i8* %37, align 1
  %198 = add i64 %171, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 24)
  %199 = add i64 %164, 25
  store i64 %199, i64* %3, align 8
  %200 = inttoptr i64 %198 to i32*
  %201 = load i32, i32* %200, align 4
  %202 = add i32 %201, -11
  %203 = icmp ult i32 %201, 11
  %204 = zext i1 %203 to i8
  store i8 %204, i8* %31, align 1
  %205 = and i32 %202, 255
  %206 = tail call i32 @llvm.ctpop.i32(i32 %205)
  %207 = trunc i32 %206 to i8
  %208 = and i8 %207, 1
  %209 = xor i8 %208, 1
  store i8 %209, i8* %32, align 1
  %210 = xor i32 %202, %201
  %211 = lshr i32 %210, 4
  %212 = trunc i32 %211 to i8
  %213 = and i8 %212, 1
  store i8 %213, i8* %33, align 1
  %214 = icmp eq i32 %202, 0
  %215 = zext i1 %214 to i8
  store i8 %215, i8* %34, align 1
  %216 = lshr i32 %202, 31
  %217 = trunc i32 %216 to i8
  store i8 %217, i8* %36, align 1
  %218 = lshr i32 %201, 31
  %219 = xor i32 %216, %218
  %220 = add nuw nsw i32 %219, %218
  %221 = icmp eq i32 %220, 2
  %222 = zext i1 %221 to i8
  store i8 %222, i8* %37, align 1
  %.v5 = select i1 %214, i64 31, i64 114
  %223 = add i64 %164, %.v5
  store i64 %223, i64* %3, align 8
  br i1 %214, label %block_4afda5, label %block_.L_4afdf8

block_4afda5:                                     ; preds = %block_.L_4afd86
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i92, align 8
  %224 = load i64, i64* %RBP.i, align 8
  %225 = add i64 %224, -12
  %226 = add i64 %223, 14
  store i64 %226, i64* %3, align 8
  %227 = inttoptr i64 %225 to i32*
  %228 = load i32, i32* %227, align 4
  %229 = sext i32 %228 to i64
  %230 = mul nsw i64 %229, 76
  store i64 %230, i64* %RCX.i85, align 8
  %231 = lshr i64 %230, 63
  %232 = add i64 %230, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %232, i64* %RAX.i92, align 8
  %233 = icmp ult i64 %232, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %234 = icmp ult i64 %232, %230
  %235 = or i1 %233, %234
  %236 = zext i1 %235 to i8
  store i8 %236, i8* %31, align 1
  %237 = trunc i64 %232 to i32
  %238 = and i32 %237, 252
  %239 = tail call i32 @llvm.ctpop.i32(i32 %238)
  %240 = trunc i32 %239 to i8
  %241 = and i8 %240, 1
  %242 = xor i8 %241, 1
  store i8 %242, i8* %32, align 1
  %243 = xor i64 %230, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %244 = xor i64 %243, %232
  %245 = lshr i64 %244, 4
  %246 = trunc i64 %245 to i8
  %247 = and i8 %246, 1
  store i8 %247, i8* %33, align 1
  %248 = icmp eq i64 %232, 0
  %249 = zext i1 %248 to i8
  store i8 %249, i8* %34, align 1
  %250 = lshr i64 %232, 63
  %251 = trunc i64 %250 to i8
  store i8 %251, i8* %36, align 1
  %252 = xor i64 %250, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %253 = xor i64 %250, %231
  %254 = add nuw nsw i64 %252, %253
  %255 = icmp eq i64 %254, 2
  %256 = zext i1 %255 to i8
  store i8 %256, i8* %37, align 1
  %RDX.i32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %257 = add i64 %230, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 32)
  %258 = add i64 %223, 24
  store i64 %258, i64* %3, align 8
  %259 = inttoptr i64 %257 to i32*
  %260 = load i32, i32* %259, align 4
  %261 = zext i32 %260 to i64
  store i64 %261, i64* %RDX.i32, align 8
  %262 = add i64 %224, -8
  %263 = add i64 %223, 27
  store i64 %263, i64* %3, align 8
  %264 = inttoptr i64 %262 to i32*
  %265 = load i32, i32* %264, align 4
  %266 = sub i32 %260, %265
  %267 = icmp ult i32 %260, %265
  %268 = zext i1 %267 to i8
  store i8 %268, i8* %31, align 1
  %269 = and i32 %266, 255
  %270 = tail call i32 @llvm.ctpop.i32(i32 %269)
  %271 = trunc i32 %270 to i8
  %272 = and i8 %271, 1
  %273 = xor i8 %272, 1
  store i8 %273, i8* %32, align 1
  %274 = xor i32 %265, %260
  %275 = xor i32 %274, %266
  %276 = lshr i32 %275, 4
  %277 = trunc i32 %276 to i8
  %278 = and i8 %277, 1
  store i8 %278, i8* %33, align 1
  %279 = icmp eq i32 %266, 0
  %280 = zext i1 %279 to i8
  store i8 %280, i8* %34, align 1
  %281 = lshr i32 %266, 31
  %282 = trunc i32 %281 to i8
  store i8 %282, i8* %36, align 1
  %283 = lshr i32 %260, 31
  %284 = lshr i32 %265, 31
  %285 = xor i32 %284, %283
  %286 = xor i32 %281, %283
  %287 = add nuw nsw i32 %286, %285
  %288 = icmp eq i32 %287, 2
  %289 = zext i1 %288 to i8
  store i8 %289, i8* %37, align 1
  %.v6 = select i1 %279, i64 66, i64 33
  %290 = add i64 %223, %.v6
  store i64 %290, i64* %3, align 8
  br i1 %279, label %block_.L_4afde7, label %block_4afdc6

block_4afdc6:                                     ; preds = %block_4afda5
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i92, align 8
  %291 = load i64, i64* %RBP.i, align 8
  %292 = add i64 %291, -12
  %293 = add i64 %290, 14
  store i64 %293, i64* %3, align 8
  %294 = inttoptr i64 %292 to i32*
  %295 = load i32, i32* %294, align 4
  %296 = sext i32 %295 to i64
  %297 = mul nsw i64 %296, 76
  store i64 %297, i64* %RCX.i85, align 8
  %298 = lshr i64 %297, 63
  %299 = add i64 %297, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %299, i64* %RAX.i92, align 8
  %300 = icmp ult i64 %299, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %301 = icmp ult i64 %299, %297
  %302 = or i1 %300, %301
  %303 = zext i1 %302 to i8
  store i8 %303, i8* %31, align 1
  %304 = trunc i64 %299 to i32
  %305 = and i32 %304, 252
  %306 = tail call i32 @llvm.ctpop.i32(i32 %305)
  %307 = trunc i32 %306 to i8
  %308 = and i8 %307, 1
  %309 = xor i8 %308, 1
  store i8 %309, i8* %32, align 1
  %310 = xor i64 %297, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %311 = xor i64 %310, %299
  %312 = lshr i64 %311, 4
  %313 = trunc i64 %312 to i8
  %314 = and i8 %313, 1
  store i8 %314, i8* %33, align 1
  %315 = icmp eq i64 %299, 0
  %316 = zext i1 %315 to i8
  store i8 %316, i8* %34, align 1
  %317 = lshr i64 %299, 63
  %318 = trunc i64 %317 to i8
  store i8 %318, i8* %36, align 1
  %319 = xor i64 %317, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %320 = xor i64 %317, %298
  %321 = add nuw nsw i64 %319, %320
  %322 = icmp eq i64 %321, 2
  %323 = zext i1 %322 to i8
  store i8 %323, i8* %37, align 1
  %324 = add i64 %297, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 44)
  %325 = add i64 %290, 24
  store i64 %325, i64* %3, align 8
  %326 = inttoptr i64 %324 to i32*
  %327 = load i32, i32* %326, align 4
  %328 = zext i32 %327 to i64
  store i64 %328, i64* %RDX.i32, align 8
  %329 = add i64 %291, -8
  %330 = add i64 %290, 27
  store i64 %330, i64* %3, align 8
  %331 = inttoptr i64 %329 to i32*
  %332 = load i32, i32* %331, align 4
  %333 = sub i32 %327, %332
  %334 = icmp ult i32 %327, %332
  %335 = zext i1 %334 to i8
  store i8 %335, i8* %31, align 1
  %336 = and i32 %333, 255
  %337 = tail call i32 @llvm.ctpop.i32(i32 %336)
  %338 = trunc i32 %337 to i8
  %339 = and i8 %338, 1
  %340 = xor i8 %339, 1
  store i8 %340, i8* %32, align 1
  %341 = xor i32 %332, %327
  %342 = xor i32 %341, %333
  %343 = lshr i32 %342, 4
  %344 = trunc i32 %343 to i8
  %345 = and i8 %344, 1
  store i8 %345, i8* %33, align 1
  %346 = icmp eq i32 %333, 0
  %347 = zext i1 %346 to i8
  store i8 %347, i8* %34, align 1
  %348 = lshr i32 %333, 31
  %349 = trunc i32 %348 to i8
  store i8 %349, i8* %36, align 1
  %350 = lshr i32 %327, 31
  %351 = lshr i32 %332, 31
  %352 = xor i32 %351, %350
  %353 = xor i32 %348, %350
  %354 = add nuw nsw i32 %353, %352
  %355 = icmp eq i32 %354, 2
  %356 = zext i1 %355 to i8
  store i8 %356, i8* %37, align 1
  %.v7 = select i1 %346, i64 33, i64 45
  %357 = add i64 %290, %.v7
  store i64 %357, i64* %3, align 8
  br i1 %346, label %block_.L_4afde7, label %block_.L_4afdf3

block_.L_4afde7:                                  ; preds = %block_4afdc6, %block_4afda5
  %358 = phi i64 [ %357, %block_4afdc6 ], [ %290, %block_4afda5 ]
  %359 = load i64, i64* %RBP.i, align 8
  %360 = add i64 %359, -4
  %361 = add i64 %358, 7
  store i64 %361, i64* %3, align 8
  %362 = inttoptr i64 %360 to i32*
  store i32 1, i32* %362, align 4
  %363 = load i64, i64* %3, align 8
  %364 = add i64 %363, 17
  store i64 %364, i64* %3, align 8
  br label %block_.L_4afdff

block_.L_4afdf3:                                  ; preds = %block_4afdc6
  %365 = add i64 %357, 5
  store i64 %365, i64* %3, align 8
  br label %block_.L_4afdf8

block_.L_4afdf8:                                  ; preds = %block_.L_4afd86, %block_.L_4afdf3
  %366 = phi i64 [ %365, %block_.L_4afdf3 ], [ %223, %block_.L_4afd86 ]
  %367 = load i64, i64* %RBP.i, align 8
  %368 = add i64 %367, -4
  %369 = add i64 %366, 7
  store i64 %369, i64* %3, align 8
  %370 = inttoptr i64 %368 to i32*
  store i32 0, i32* %370, align 4
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_4afdff

block_.L_4afdff:                                  ; preds = %block_.L_4afdf8, %block_.L_4afde7, %block_4afd7a
  %371 = phi i64 [ %.pre, %block_.L_4afdf8 ], [ %364, %block_.L_4afde7 ], [ %163, %block_4afd7a ]
  %372 = load i64, i64* %RBP.i, align 8
  %373 = add i64 %372, -4
  %374 = add i64 %371, 3
  store i64 %374, i64* %3, align 8
  %375 = inttoptr i64 %373 to i32*
  %376 = load i32, i32* %375, align 4
  %377 = zext i32 %376 to i64
  store i64 %377, i64* %RAX.i92, align 8
  %378 = add i64 %371, 4
  store i64 %378, i64* %3, align 8
  %379 = load i64, i64* %6, align 8
  %380 = add i64 %379, 8
  %381 = inttoptr i64 %379 to i64*
  %382 = load i64, i64* %381, align 8
  store i64 %382, i64* %RBP.i, align 8
  store i64 %380, i64* %6, align 8
  %383 = add i64 %371, 5
  store i64 %383, i64* %3, align 8
  %384 = inttoptr i64 %380 to i64*
  %385 = load i64, i64* %384, align 8
  store i64 %385, i64* %3, align 8
  %386 = add i64 %379, 16
  store i64 %386, i64* %6, align 8
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
define %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edi__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
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
define %struct.Memory* @routine_imulq__0x4c___rcx___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 76
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RCX, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i128 %10 to i32
  %17 = and i32 %16, 252
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %24, align 1
  %25 = lshr i64 %11, 63
  %26 = trunc i64 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %14, i8* %28, align 1
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x2__0x1c__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 28
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -2
  %10 = icmp ult i32 %8, 2
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
define %struct.Memory* @routine_jne_.L_4afd86(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x20__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 32
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
define %struct.Memory* @routine_cmpl_MINUS0x8__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
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
define %struct.Memory* @routine_movl__0x1__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4afdff(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0xb__0x18__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -11
  %10 = icmp ult i32 %8, 11
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
define %struct.Memory* @routine_jne_.L_4afdf8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_4afde7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x2c__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 44
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4afdf3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4afdf8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
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
