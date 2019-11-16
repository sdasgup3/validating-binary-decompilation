; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x99da04_type = type <{ [4 x i8] }>
%G_0xa0e710_type = type <{ [8 x i8] }>
%G__0xa7f430_type = type <{ [8 x i8] }>
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
@G_0x99da04 = local_unnamed_addr global %G_0x99da04_type zeroinitializer
@G_0xa0e710 = local_unnamed_addr global %G_0xa0e710_type zeroinitializer
@G__0xa7f430 = global %G__0xa7f430_type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @update_liberties(%struct.State* noalias, i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #1 {
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
  %RAX.i633 = getelementptr inbounds %union.anon, %union.anon* %11, i64 0, i32 0
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i633, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i630 = bitcast %union.anon* %12 to i32*
  %13 = add i64 %7, -12
  %14 = load i32, i32* %EDI.i630, align 4
  %15 = add i64 %10, 16
  store i64 %15, i64* %3, align 8
  %16 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %16, align 4
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i627 = getelementptr inbounds %union.anon, %union.anon* %17, i64 0, i32 0
  %18 = load i64, i64* %RBP.i, align 8
  %19 = add i64 %18, -4
  %20 = load i64, i64* %3, align 8
  %21 = add i64 %20, 4
  store i64 %21, i64* %3, align 8
  %22 = inttoptr i64 %19 to i32*
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %23 to i64
  %25 = mul nsw i64 %24, 744
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %RDX.i623 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %32 = load i64, i64* %RAX.i633, align 8
  %33 = add i64 %25, %32
  %34 = lshr i64 %33, 63
  %35 = add i64 %33, 12
  store i64 %35, i64* %RDX.i623, align 8
  %36 = icmp ugt i64 %33, -13
  %37 = zext i1 %36 to i8
  store i8 %37, i8* %26, align 1
  %38 = trunc i64 %35 to i32
  %39 = and i32 %38, 255
  %40 = tail call i32 @llvm.ctpop.i32(i32 %39)
  %41 = trunc i32 %40 to i8
  %42 = and i8 %41, 1
  %43 = xor i8 %42, 1
  store i8 %43, i8* %27, align 1
  %44 = xor i64 %35, %33
  %45 = lshr i64 %44, 4
  %46 = trunc i64 %45 to i8
  %47 = and i8 %46, 1
  store i8 %47, i8* %28, align 1
  %48 = icmp eq i64 %35, 0
  %49 = zext i1 %48 to i8
  store i8 %49, i8* %29, align 1
  %50 = lshr i64 %35, 63
  %51 = trunc i64 %50 to i8
  store i8 %51, i8* %30, align 1
  %52 = xor i64 %50, %34
  %53 = add nuw nsw i64 %52, %50
  %54 = icmp eq i64 %53, 2
  %55 = zext i1 %54 to i8
  store i8 %55, i8* %31, align 1
  %56 = load i64, i64* bitcast (%G_0xa0e710_type* @G_0xa0e710 to i64*), align 8
  store i64 %56, i64* %RCX.i627, align 8
  %57 = add i64 %20, 32
  store i64 %57, i64* %3, align 8
  %58 = inttoptr i64 %56 to i64*
  store i64 %35, i64* %58, align 8
  %59 = load i64, i64* %RBP.i, align 8
  %60 = add i64 %59, -4
  %61 = load i64, i64* %3, align 8
  %62 = add i64 %61, 4
  store i64 %62, i64* %3, align 8
  %63 = inttoptr i64 %60 to i32*
  %64 = load i32, i32* %63, align 4
  %65 = sext i32 %64 to i64
  %66 = mul nsw i64 %65, 744
  store i64 %66, i64* %RCX.i627, align 8
  %67 = lshr i64 %66, 63
  %68 = load i64, i64* %RAX.i633, align 8
  %69 = add i64 %66, %68
  store i64 %69, i64* %RAX.i633, align 8
  %70 = icmp ult i64 %69, %68
  %71 = icmp ult i64 %69, %66
  %72 = or i1 %70, %71
  %73 = zext i1 %72 to i8
  store i8 %73, i8* %26, align 1
  %74 = trunc i64 %69 to i32
  %75 = and i32 %74, 255
  %76 = tail call i32 @llvm.ctpop.i32(i32 %75)
  %77 = trunc i32 %76 to i8
  %78 = and i8 %77, 1
  %79 = xor i8 %78, 1
  store i8 %79, i8* %27, align 1
  %80 = xor i64 %66, %68
  %81 = xor i64 %80, %69
  %82 = lshr i64 %81, 4
  %83 = trunc i64 %82 to i8
  %84 = and i8 %83, 1
  store i8 %84, i8* %28, align 1
  %85 = icmp eq i64 %69, 0
  %86 = zext i1 %85 to i8
  store i8 %86, i8* %29, align 1
  %87 = lshr i64 %69, 63
  %88 = trunc i64 %87 to i8
  store i8 %88, i8* %30, align 1
  %89 = lshr i64 %68, 63
  %90 = xor i64 %87, %89
  %91 = xor i64 %87, %67
  %92 = add nuw nsw i64 %90, %91
  %93 = icmp eq i64 %92, 2
  %94 = zext i1 %93 to i8
  store i8 %94, i8* %31, align 1
  %RDI.i = getelementptr inbounds %union.anon, %union.anon* %12, i64 0, i32 0
  %95 = add i64 %69, 12
  %96 = add i64 %61, 17
  store i64 %96, i64* %3, align 8
  %97 = inttoptr i64 %95 to i32*
  %98 = load i32, i32* %97, align 4
  %99 = zext i32 %98 to i64
  store i64 %99, i64* %RDI.i, align 8
  %100 = load i64, i64* bitcast (%G_0xa0e710_type* @G_0xa0e710 to i64*), align 8
  store i64 %100, i64* %RAX.i633, align 8
  %101 = add i64 %100, 16
  store i64 %101, i64* %RCX.i627, align 8
  %102 = icmp ugt i64 %100, -17
  %103 = zext i1 %102 to i8
  store i8 %103, i8* %26, align 1
  %104 = trunc i64 %101 to i32
  %105 = and i32 %104, 255
  %106 = tail call i32 @llvm.ctpop.i32(i32 %105)
  %107 = trunc i32 %106 to i8
  %108 = and i8 %107, 1
  %109 = xor i8 %108, 1
  store i8 %109, i8* %27, align 1
  %110 = xor i64 %100, 16
  %111 = xor i64 %110, %101
  %112 = lshr i64 %111, 4
  %113 = trunc i64 %112 to i8
  %114 = and i8 %113, 1
  store i8 %114, i8* %28, align 1
  %115 = icmp eq i64 %101, 0
  %116 = zext i1 %115 to i8
  store i8 %116, i8* %29, align 1
  %117 = lshr i64 %101, 63
  %118 = trunc i64 %117 to i8
  store i8 %118, i8* %30, align 1
  %119 = lshr i64 %100, 63
  %120 = xor i64 %117, %119
  %121 = add nuw nsw i64 %120, %117
  %122 = icmp eq i64 %121, 2
  %123 = zext i1 %122 to i8
  store i8 %123, i8* %31, align 1
  store i64 %101, i64* bitcast (%G_0xa0e710_type* @G_0xa0e710 to i64*), align 8
  %124 = add i64 %100, 8
  %125 = add i64 %61, 43
  store i64 %125, i64* %3, align 8
  %126 = inttoptr i64 %124 to i32*
  store i32 %98, i32* %126, align 4
  %127 = load i64, i64* %RBP.i, align 8
  %128 = add i64 %127, -12
  %129 = load i64, i64* %3, align 8
  %130 = add i64 %129, 7
  store i64 %130, i64* %3, align 8
  %131 = inttoptr i64 %128 to i32*
  store i32 0, i32* %131, align 4
  %AL.i583 = bitcast %union.anon* %11 to i8*
  %CL.i584 = bitcast %union.anon* %17 to i8*
  %132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %RSI.i575 = getelementptr inbounds %union.anon, %union.anon* %132, i64 0, i32 0
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_40d2e3

block_.L_40d2e3:                                  ; preds = %block_.L_40d328, %entry
  %133 = phi i64 [ %511, %block_.L_40d328 ], [ %.pre, %entry ]
  store i64 0, i64* %RAX.i633, align 8
  store i8 0, i8* %26, align 1
  store i8 1, i8* %27, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %31, align 1
  store i8 0, i8* %28, align 1
  store i8 0, i8* %CL.i584, align 1
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RDX.i623, align 8
  %134 = load i64, i64* %RBP.i, align 8
  %135 = add i64 %134, -12
  %136 = add i64 %133, 17
  store i64 %136, i64* %3, align 8
  %137 = inttoptr i64 %135 to i32*
  %138 = load i32, i32* %137, align 4
  %139 = zext i32 %138 to i64
  store i64 %139, i64* %RAX.i633, align 8
  %140 = add i64 %134, -4
  %141 = add i64 %133, 21
  store i64 %141, i64* %3, align 8
  %142 = inttoptr i64 %140 to i32*
  %143 = load i32, i32* %142, align 4
  %144 = sext i32 %143 to i64
  %145 = mul nsw i64 %144, 744
  store i64 %145, i64* %RSI.i575, align 8
  %146 = lshr i64 %145, 63
  %147 = add i64 %145, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %147, i64* %RDX.i623, align 8
  %148 = icmp ult i64 %147, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %149 = icmp ult i64 %147, %145
  %150 = or i1 %148, %149
  %151 = zext i1 %150 to i8
  store i8 %151, i8* %26, align 1
  %152 = trunc i64 %147 to i32
  %153 = and i32 %152, 248
  %154 = tail call i32 @llvm.ctpop.i32(i32 %153)
  %155 = trunc i32 %154 to i8
  %156 = and i8 %155, 1
  %157 = xor i8 %156, 1
  store i8 %157, i8* %27, align 1
  %158 = xor i64 %145, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %159 = xor i64 %158, %147
  %160 = lshr i64 %159, 4
  %161 = trunc i64 %160 to i8
  %162 = and i8 %161, 1
  store i8 %162, i8* %28, align 1
  %163 = icmp eq i64 %147, 0
  %164 = zext i1 %163 to i8
  store i8 %164, i8* %29, align 1
  %165 = lshr i64 %147, 63
  %166 = trunc i64 %165 to i8
  store i8 %166, i8* %30, align 1
  %167 = xor i64 %165, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %168 = xor i64 %165, %146
  %169 = add nuw nsw i64 %167, %168
  %170 = icmp eq i64 %169, 2
  %171 = zext i1 %170 to i8
  store i8 %171, i8* %31, align 1
  %172 = add i64 %145, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 12)
  %173 = add i64 %133, 34
  store i64 %173, i64* %3, align 8
  %174 = inttoptr i64 %172 to i32*
  %175 = load i32, i32* %174, align 4
  %176 = sub i32 %138, %175
  %177 = icmp ult i32 %138, %175
  %178 = zext i1 %177 to i8
  store i8 %178, i8* %26, align 1
  %179 = and i32 %176, 255
  %180 = tail call i32 @llvm.ctpop.i32(i32 %179)
  %181 = trunc i32 %180 to i8
  %182 = and i8 %181, 1
  %183 = xor i8 %182, 1
  store i8 %183, i8* %27, align 1
  %184 = xor i32 %175, %138
  %185 = xor i32 %184, %176
  %186 = lshr i32 %185, 4
  %187 = trunc i32 %186 to i8
  %188 = and i8 %187, 1
  store i8 %188, i8* %28, align 1
  %189 = icmp eq i32 %176, 0
  %190 = zext i1 %189 to i8
  store i8 %190, i8* %29, align 1
  %191 = lshr i32 %176, 31
  %192 = trunc i32 %191 to i8
  store i8 %192, i8* %30, align 1
  %193 = lshr i32 %138, 31
  %194 = lshr i32 %175, 31
  %195 = xor i32 %194, %193
  %196 = xor i32 %191, %193
  %197 = add nuw nsw i32 %196, %195
  %198 = icmp eq i32 %197, 2
  %199 = zext i1 %198 to i8
  store i8 %199, i8* %31, align 1
  %200 = load i64, i64* %RBP.i, align 8
  %201 = add i64 %200, -13
  %202 = load i8, i8* %CL.i584, align 1
  %203 = add i64 %133, 37
  store i64 %203, i64* %3, align 8
  %204 = inttoptr i64 %201 to i8*
  store i8 %202, i8* %204, align 1
  %205 = load i64, i64* %3, align 8
  %206 = add i64 %205, 16
  %207 = add i64 %205, 6
  %208 = load i8, i8* %30, align 1
  %209 = icmp ne i8 %208, 0
  %210 = load i8, i8* %31, align 1
  %211 = icmp ne i8 %210, 0
  %212 = xor i1 %209, %211
  %213 = select i1 %212, i64 %207, i64 %206
  store i64 %213, i64* %3, align 8
  br i1 %212, label %block_40d30e, label %block_.L_40d318

block_40d30e:                                     ; preds = %block_.L_40d2e3
  %214 = load i64, i64* %RBP.i, align 8
  %215 = add i64 %214, -12
  %216 = add i64 %213, 4
  store i64 %216, i64* %3, align 8
  %217 = inttoptr i64 %215 to i32*
  %218 = load i32, i32* %217, align 4
  %219 = add i32 %218, -20
  %220 = icmp ult i32 %218, 20
  %221 = zext i1 %220 to i8
  store i8 %221, i8* %26, align 1
  %222 = and i32 %219, 255
  %223 = tail call i32 @llvm.ctpop.i32(i32 %222)
  %224 = trunc i32 %223 to i8
  %225 = and i8 %224, 1
  %226 = xor i8 %225, 1
  store i8 %226, i8* %27, align 1
  %227 = xor i32 %218, 16
  %228 = xor i32 %227, %219
  %229 = lshr i32 %228, 4
  %230 = trunc i32 %229 to i8
  %231 = and i8 %230, 1
  store i8 %231, i8* %28, align 1
  %232 = icmp eq i32 %219, 0
  %233 = zext i1 %232 to i8
  store i8 %233, i8* %29, align 1
  %234 = lshr i32 %219, 31
  %235 = trunc i32 %234 to i8
  store i8 %235, i8* %30, align 1
  %236 = lshr i32 %218, 31
  %237 = xor i32 %234, %236
  %238 = add nuw nsw i32 %237, %236
  %239 = icmp eq i32 %238, 2
  %240 = zext i1 %239 to i8
  store i8 %240, i8* %31, align 1
  %241 = icmp ne i8 %235, 0
  %242 = xor i1 %239, %241
  %243 = zext i1 %242 to i8
  store i8 %243, i8* %AL.i583, align 1
  %244 = add i64 %214, -13
  %245 = add i64 %213, 10
  store i64 %245, i64* %3, align 8
  %246 = inttoptr i64 %244 to i8*
  store i8 %243, i8* %246, align 1
  %.pre18 = load i64, i64* %3, align 8
  br label %block_.L_40d318

block_.L_40d318:                                  ; preds = %block_.L_40d2e3, %block_40d30e
  %247 = phi i64 [ %206, %block_.L_40d2e3 ], [ %.pre18, %block_40d30e ]
  %248 = load i64, i64* %RBP.i, align 8
  %249 = add i64 %248, -13
  %250 = add i64 %247, 3
  store i64 %250, i64* %3, align 8
  %251 = inttoptr i64 %249 to i8*
  %252 = load i8, i8* %251, align 1
  store i8 %252, i8* %AL.i583, align 1
  %253 = and i8 %252, 1
  store i8 0, i8* %26, align 1
  %254 = zext i8 %253 to i32
  %255 = tail call i32 @llvm.ctpop.i32(i32 %254)
  %256 = trunc i32 %255 to i8
  %257 = xor i8 %256, 1
  store i8 %257, i8* %27, align 1
  %258 = xor i8 %253, 1
  store i8 %258, i8* %29, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %31, align 1
  store i8 0, i8* %28, align 1
  %259 = icmp eq i8 %258, 0
  %.v = select i1 %259, i64 16, i64 11
  %260 = add i64 %247, %.v
  store i64 %260, i64* %3, align 8
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i633, align 8
  %261 = add i64 %248, -4
  br i1 %259, label %block_.L_40d328, label %block_40d323

block_40d323:                                     ; preds = %block_.L_40d318
  %262 = add i64 %260, 134
  store i64 %262, i64* %3, align 8
  %263 = inttoptr i64 %261 to i32*
  %264 = load i32, i32* %263, align 4
  %265 = sext i32 %264 to i64
  %266 = mul nsw i64 %265, 744
  store i64 %266, i64* %RCX.i627, align 8
  %267 = add i64 %266, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %267, i64* %RDX.i623, align 8
  %268 = add i64 %266, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 12)
  %269 = add i64 %260, 154
  store i64 %269, i64* %3, align 8
  %270 = inttoptr i64 %268 to i32*
  store i32 0, i32* %270, align 4
  %271 = load i64, i64* %3, align 8
  %272 = load i32, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*), align 8
  %273 = add i32 %272, 1
  %274 = zext i32 %273 to i64
  store i64 %274, i64* %RSI.i575, align 8
  %275 = icmp eq i32 %272, -1
  %276 = icmp eq i32 %273, 0
  %277 = or i1 %275, %276
  %278 = zext i1 %277 to i8
  store i8 %278, i8* %26, align 1
  %279 = and i32 %273, 255
  %280 = tail call i32 @llvm.ctpop.i32(i32 %279)
  %281 = trunc i32 %280 to i8
  %282 = and i8 %281, 1
  %283 = xor i8 %282, 1
  store i8 %283, i8* %27, align 1
  %284 = xor i32 %273, %272
  %285 = lshr i32 %284, 4
  %286 = trunc i32 %285 to i8
  %287 = and i8 %286, 1
  store i8 %287, i8* %28, align 1
  %288 = zext i1 %276 to i8
  store i8 %288, i8* %29, align 1
  %289 = lshr i32 %273, 31
  %290 = trunc i32 %289 to i8
  store i8 %290, i8* %30, align 1
  %291 = lshr i32 %272, 31
  %292 = xor i32 %289, %291
  %293 = add nuw nsw i32 %292, %289
  %294 = icmp eq i32 %293, 2
  %295 = zext i1 %294 to i8
  store i8 %295, i8* %31, align 1
  store i32 %273, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*), align 8
  %296 = load i64, i64* %RBP.i, align 8
  %297 = add i64 %296, -4
  %298 = add i64 %271, 21
  store i64 %298, i64* %3, align 8
  %299 = inttoptr i64 %297 to i32*
  %300 = load i32, i32* %299, align 4
  %301 = sext i32 %300 to i64
  %302 = mul nsw i64 %301, 744
  store i64 %302, i64* %RCX.i627, align 8
  %303 = lshr i64 %302, 63
  %304 = load i64, i64* %RAX.i633, align 8
  %305 = add i64 %302, %304
  store i64 %305, i64* %RAX.i633, align 8
  %306 = icmp ult i64 %305, %304
  %307 = icmp ult i64 %305, %302
  %308 = or i1 %306, %307
  %309 = zext i1 %308 to i8
  store i8 %309, i8* %26, align 1
  %310 = trunc i64 %305 to i32
  %311 = and i32 %310, 255
  %312 = tail call i32 @llvm.ctpop.i32(i32 %311)
  %313 = trunc i32 %312 to i8
  %314 = and i8 %313, 1
  %315 = xor i8 %314, 1
  store i8 %315, i8* %27, align 1
  %316 = xor i64 %302, %304
  %317 = xor i64 %316, %305
  %318 = lshr i64 %317, 4
  %319 = trunc i64 %318 to i8
  %320 = and i8 %319, 1
  store i8 %320, i8* %28, align 1
  %321 = icmp eq i64 %305, 0
  %322 = zext i1 %321 to i8
  store i8 %322, i8* %29, align 1
  %323 = lshr i64 %305, 63
  %324 = trunc i64 %323 to i8
  store i8 %324, i8* %30, align 1
  %325 = lshr i64 %304, 63
  %326 = xor i64 %323, %325
  %327 = xor i64 %323, %303
  %328 = add nuw nsw i64 %326, %327
  %329 = icmp eq i64 %328, 2
  %330 = zext i1 %329 to i8
  store i8 %330, i8* %31, align 1
  %331 = add i64 %305, 8
  %332 = add i64 %271, 34
  store i64 %332, i64* %3, align 8
  %333 = inttoptr i64 %331 to i32*
  %334 = load i32, i32* %333, align 4
  %335 = zext i32 %334 to i64
  store i64 %335, i64* %RSI.i575, align 8
  %336 = add i64 %296, -8
  %337 = add i64 %271, 37
  store i64 %337, i64* %3, align 8
  %338 = inttoptr i64 %336 to i32*
  store i32 %334, i32* %338, align 4
  %ECX.i23 = bitcast %union.anon* %17 to i32*
  %SIL.i9 = bitcast %union.anon* %132 to i8*
  %.pre19 = load i64, i64* %3, align 8
  br label %block_.L_40d3e2

block_.L_40d328:                                  ; preds = %block_.L_40d318
  %339 = add i64 %260, 14
  store i64 %339, i64* %3, align 8
  %340 = inttoptr i64 %261 to i32*
  %341 = load i32, i32* %340, align 4
  %342 = sext i32 %341 to i64
  %343 = mul nsw i64 %342, 744
  store i64 %343, i64* %RCX.i627, align 8
  %344 = add i64 %343, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %345 = lshr i64 %344, 63
  %346 = add i64 %343, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 16)
  store i64 %346, i64* %RDX.i623, align 8
  %347 = icmp ugt i64 %344, -17
  %348 = zext i1 %347 to i8
  store i8 %348, i8* %26, align 1
  %349 = trunc i64 %346 to i32
  %350 = and i32 %349, 248
  %351 = tail call i32 @llvm.ctpop.i32(i32 %350)
  %352 = trunc i32 %351 to i8
  %353 = and i8 %352, 1
  %354 = xor i8 %353, 1
  store i8 %354, i8* %27, align 1
  %355 = xor i64 %344, 16
  %356 = xor i64 %355, %346
  %357 = lshr i64 %356, 4
  %358 = trunc i64 %357 to i8
  %359 = and i8 %358, 1
  store i8 %359, i8* %28, align 1
  %360 = icmp eq i64 %346, 0
  %361 = zext i1 %360 to i8
  store i8 %361, i8* %29, align 1
  %362 = lshr i64 %346, 63
  %363 = trunc i64 %362 to i8
  store i8 %363, i8* %30, align 1
  %364 = xor i64 %362, %345
  %365 = add nuw nsw i64 %364, %362
  %366 = icmp eq i64 %365, 2
  %367 = zext i1 %366 to i8
  store i8 %367, i8* %31, align 1
  %368 = load i64, i64* %RBP.i, align 8
  %369 = add i64 %368, -12
  %370 = add i64 %260, 35
  store i64 %370, i64* %3, align 8
  %371 = inttoptr i64 %369 to i32*
  %372 = load i32, i32* %371, align 4
  %373 = sext i32 %372 to i64
  %374 = shl nsw i64 %373, 2
  %375 = add i64 %374, %346
  store i64 %375, i64* %RDX.i623, align 8
  %376 = icmp ult i64 %375, %346
  %377 = icmp ult i64 %375, %374
  %378 = or i1 %376, %377
  %379 = zext i1 %378 to i8
  store i8 %379, i8* %26, align 1
  %380 = trunc i64 %375 to i32
  %381 = and i32 %380, 255
  %382 = tail call i32 @llvm.ctpop.i32(i32 %381)
  %383 = trunc i32 %382 to i8
  %384 = and i8 %383, 1
  %385 = xor i8 %384, 1
  store i8 %385, i8* %27, align 1
  %386 = xor i64 %374, %346
  %387 = xor i64 %386, %375
  %388 = lshr i64 %387, 4
  %389 = trunc i64 %388 to i8
  %390 = and i8 %389, 1
  store i8 %390, i8* %28, align 1
  %391 = icmp eq i64 %375, 0
  %392 = zext i1 %391 to i8
  store i8 %392, i8* %29, align 1
  %393 = lshr i64 %375, 63
  %394 = trunc i64 %393 to i8
  store i8 %394, i8* %30, align 1
  %395 = lshr i64 %373, 61
  %396 = and i64 %395, 1
  %397 = xor i64 %393, %362
  %398 = xor i64 %393, %396
  %399 = add nuw nsw i64 %397, %398
  %400 = icmp eq i64 %399, 2
  %401 = zext i1 %400 to i8
  store i8 %401, i8* %31, align 1
  %402 = load i64, i64* bitcast (%G_0xa0e710_type* @G_0xa0e710 to i64*), align 8
  store i64 %402, i64* %RCX.i627, align 8
  %403 = add i64 %260, 53
  store i64 %403, i64* %3, align 8
  %404 = inttoptr i64 %402 to i64*
  store i64 %375, i64* %404, align 8
  %405 = load i64, i64* %RBP.i, align 8
  %406 = add i64 %405, -4
  %407 = load i64, i64* %3, align 8
  %408 = add i64 %407, 4
  store i64 %408, i64* %3, align 8
  %409 = inttoptr i64 %406 to i32*
  %410 = load i32, i32* %409, align 4
  %411 = sext i32 %410 to i64
  %412 = mul nsw i64 %411, 744
  store i64 %412, i64* %RCX.i627, align 8
  %413 = lshr i64 %412, 63
  %414 = load i64, i64* %RAX.i633, align 8
  %415 = add i64 %412, %414
  store i64 %415, i64* %RAX.i633, align 8
  %416 = icmp ult i64 %415, %414
  %417 = icmp ult i64 %415, %412
  %418 = or i1 %416, %417
  %419 = zext i1 %418 to i8
  store i8 %419, i8* %26, align 1
  %420 = trunc i64 %415 to i32
  %421 = and i32 %420, 255
  %422 = tail call i32 @llvm.ctpop.i32(i32 %421)
  %423 = trunc i32 %422 to i8
  %424 = and i8 %423, 1
  %425 = xor i8 %424, 1
  store i8 %425, i8* %27, align 1
  %426 = xor i64 %412, %414
  %427 = xor i64 %426, %415
  %428 = lshr i64 %427, 4
  %429 = trunc i64 %428 to i8
  %430 = and i8 %429, 1
  store i8 %430, i8* %28, align 1
  %431 = icmp eq i64 %415, 0
  %432 = zext i1 %431 to i8
  store i8 %432, i8* %29, align 1
  %433 = lshr i64 %415, 63
  %434 = trunc i64 %433 to i8
  store i8 %434, i8* %30, align 1
  %435 = lshr i64 %414, 63
  %436 = xor i64 %433, %435
  %437 = xor i64 %433, %413
  %438 = add nuw nsw i64 %436, %437
  %439 = icmp eq i64 %438, 2
  %440 = zext i1 %439 to i8
  store i8 %440, i8* %31, align 1
  %441 = add i64 %405, -12
  %442 = add i64 %407, 18
  store i64 %442, i64* %3, align 8
  %443 = inttoptr i64 %441 to i32*
  %444 = load i32, i32* %443, align 4
  %445 = sext i32 %444 to i64
  store i64 %445, i64* %RCX.i627, align 8
  %446 = shl nsw i64 %445, 2
  %447 = add i64 %415, 16
  %448 = add i64 %447, %446
  %449 = add i64 %407, 22
  store i64 %449, i64* %3, align 8
  %450 = inttoptr i64 %448 to i32*
  %451 = load i32, i32* %450, align 4
  %452 = zext i32 %451 to i64
  store i64 %452, i64* %RSI.i575, align 8
  %453 = load i64, i64* bitcast (%G_0xa0e710_type* @G_0xa0e710 to i64*), align 8
  store i64 %453, i64* %RAX.i633, align 8
  %454 = add i64 %453, 16
  store i64 %454, i64* %RCX.i627, align 8
  %455 = icmp ugt i64 %453, -17
  %456 = zext i1 %455 to i8
  store i8 %456, i8* %26, align 1
  %457 = trunc i64 %454 to i32
  %458 = and i32 %457, 255
  %459 = tail call i32 @llvm.ctpop.i32(i32 %458)
  %460 = trunc i32 %459 to i8
  %461 = and i8 %460, 1
  %462 = xor i8 %461, 1
  store i8 %462, i8* %27, align 1
  %463 = xor i64 %453, 16
  %464 = xor i64 %463, %454
  %465 = lshr i64 %464, 4
  %466 = trunc i64 %465 to i8
  %467 = and i8 %466, 1
  store i8 %467, i8* %28, align 1
  %468 = icmp eq i64 %454, 0
  %469 = zext i1 %468 to i8
  store i8 %469, i8* %29, align 1
  %470 = lshr i64 %454, 63
  %471 = trunc i64 %470 to i8
  store i8 %471, i8* %30, align 1
  %472 = lshr i64 %453, 63
  %473 = xor i64 %470, %472
  %474 = add nuw nsw i64 %473, %470
  %475 = icmp eq i64 %474, 2
  %476 = zext i1 %475 to i8
  store i8 %476, i8* %31, align 1
  store i64 %454, i64* bitcast (%G_0xa0e710_type* @G_0xa0e710 to i64*), align 8
  %477 = add i64 %453, 8
  %478 = add i64 %407, 48
  store i64 %478, i64* %3, align 8
  %479 = inttoptr i64 %477 to i32*
  store i32 %451, i32* %479, align 4
  %480 = load i64, i64* %RBP.i, align 8
  %481 = add i64 %480, -12
  %482 = load i64, i64* %3, align 8
  %483 = add i64 %482, 3
  store i64 %483, i64* %3, align 8
  %484 = inttoptr i64 %481 to i32*
  %485 = load i32, i32* %484, align 4
  %486 = add i32 %485, 1
  %487 = zext i32 %486 to i64
  store i64 %487, i64* %RAX.i633, align 8
  %488 = icmp eq i32 %485, -1
  %489 = icmp eq i32 %486, 0
  %490 = or i1 %488, %489
  %491 = zext i1 %490 to i8
  store i8 %491, i8* %26, align 1
  %492 = and i32 %486, 255
  %493 = tail call i32 @llvm.ctpop.i32(i32 %492)
  %494 = trunc i32 %493 to i8
  %495 = and i8 %494, 1
  %496 = xor i8 %495, 1
  store i8 %496, i8* %27, align 1
  %497 = xor i32 %486, %485
  %498 = lshr i32 %497, 4
  %499 = trunc i32 %498 to i8
  %500 = and i8 %499, 1
  store i8 %500, i8* %28, align 1
  %501 = zext i1 %489 to i8
  store i8 %501, i8* %29, align 1
  %502 = lshr i32 %486, 31
  %503 = trunc i32 %502 to i8
  store i8 %503, i8* %30, align 1
  %504 = lshr i32 %485, 31
  %505 = xor i32 %502, %504
  %506 = add nuw nsw i32 %505, %502
  %507 = icmp eq i32 %506, 2
  %508 = zext i1 %507 to i8
  store i8 %508, i8* %31, align 1
  %509 = add i64 %482, 9
  store i64 %509, i64* %3, align 8
  store i32 %486, i32* %484, align 4
  %510 = load i64, i64* %3, align 8
  %511 = add i64 %510, -179
  store i64 %511, i64* %3, align 8
  br label %block_.L_40d2e3

block_.L_40d3e2:                                  ; preds = %block_.L_40d72a, %block_40d323
  %512 = phi i64 [ %2047, %block_.L_40d72a ], [ %.pre19, %block_40d323 ]
  %513 = load i64, i64* %RBP.i, align 8
  %514 = add i64 %513, -8
  %515 = add i64 %512, 3
  store i64 %515, i64* %3, align 8
  %516 = inttoptr i64 %514 to i32*
  %517 = load i32, i32* %516, align 4
  %518 = add i32 %517, 20
  %519 = zext i32 %518 to i64
  store i64 %519, i64* %RAX.i633, align 8
  %520 = icmp ugt i32 %517, -21
  %521 = zext i1 %520 to i8
  store i8 %521, i8* %26, align 1
  %522 = and i32 %518, 255
  %523 = tail call i32 @llvm.ctpop.i32(i32 %522)
  %524 = trunc i32 %523 to i8
  %525 = and i8 %524, 1
  %526 = xor i8 %525, 1
  store i8 %526, i8* %27, align 1
  %527 = xor i32 %517, 16
  %528 = xor i32 %527, %518
  %529 = lshr i32 %528, 4
  %530 = trunc i32 %529 to i8
  %531 = and i8 %530, 1
  store i8 %531, i8* %28, align 1
  %532 = icmp eq i32 %518, 0
  %533 = zext i1 %532 to i8
  store i8 %533, i8* %29, align 1
  %534 = lshr i32 %518, 31
  %535 = trunc i32 %534 to i8
  store i8 %535, i8* %30, align 1
  %536 = lshr i32 %517, 31
  %537 = xor i32 %534, %536
  %538 = add nuw nsw i32 %537, %534
  %539 = icmp eq i32 %538, 2
  %540 = zext i1 %539 to i8
  store i8 %540, i8* %31, align 1
  %541 = sext i32 %518 to i64
  store i64 %541, i64* %RCX.i627, align 8
  %542 = add nsw i64 %541, 12099168
  %543 = add i64 %512, 17
  store i64 %543, i64* %3, align 8
  %544 = inttoptr i64 %542 to i8*
  %545 = load i8, i8* %544, align 1
  %546 = zext i8 %545 to i64
  store i64 %546, i64* %RAX.i633, align 8
  %547 = zext i8 %545 to i32
  store i8 0, i8* %26, align 1
  %548 = tail call i32 @llvm.ctpop.i32(i32 %547)
  %549 = trunc i32 %548 to i8
  %550 = and i8 %549, 1
  %551 = xor i8 %550, 1
  store i8 %551, i8* %27, align 1
  store i8 0, i8* %28, align 1
  %552 = icmp eq i8 %545, 0
  %553 = zext i1 %552 to i8
  store i8 %553, i8* %29, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %31, align 1
  %.v28 = select i1 %552, i64 26, i64 210
  %554 = add i64 %512, %.v28
  store i64 %554, i64* %3, align 8
  br i1 %552, label %block_40d3fc, label %block_.L_40d4b4

block_40d3fc:                                     ; preds = %block_.L_40d3e2
  %555 = add i64 %554, 3
  store i64 %555, i64* %3, align 8
  %556 = load i32, i32* %516, align 4
  %557 = add i32 %556, 20
  %558 = zext i32 %557 to i64
  store i64 %558, i64* %RAX.i633, align 8
  %559 = icmp ugt i32 %556, -21
  %560 = zext i1 %559 to i8
  store i8 %560, i8* %26, align 1
  %561 = and i32 %557, 255
  %562 = tail call i32 @llvm.ctpop.i32(i32 %561)
  %563 = trunc i32 %562 to i8
  %564 = and i8 %563, 1
  %565 = xor i8 %564, 1
  store i8 %565, i8* %27, align 1
  %566 = xor i32 %556, 16
  %567 = xor i32 %566, %557
  %568 = lshr i32 %567, 4
  %569 = trunc i32 %568 to i8
  %570 = and i8 %569, 1
  store i8 %570, i8* %28, align 1
  %571 = icmp eq i32 %557, 0
  %572 = zext i1 %571 to i8
  store i8 %572, i8* %29, align 1
  %573 = lshr i32 %557, 31
  %574 = trunc i32 %573 to i8
  store i8 %574, i8* %30, align 1
  %575 = lshr i32 %556, 31
  %576 = xor i32 %573, %575
  %577 = add nuw nsw i32 %576, %573
  %578 = icmp eq i32 %577, 2
  %579 = zext i1 %578 to i8
  store i8 %579, i8* %31, align 1
  %580 = sext i32 %557 to i64
  store i64 %580, i64* %RCX.i627, align 8
  %581 = shl nsw i64 %580, 2
  %582 = add nsw i64 %581, 11185584
  %583 = add i64 %554, 16
  store i64 %583, i64* %3, align 8
  %584 = inttoptr i64 %582 to i32*
  %585 = load i32, i32* %584, align 4
  %586 = zext i32 %585 to i64
  store i64 %586, i64* %RAX.i633, align 8
  %587 = load i32, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*), align 8
  %588 = sub i32 %585, %587
  %589 = icmp ult i32 %585, %587
  %590 = zext i1 %589 to i8
  store i8 %590, i8* %26, align 1
  %591 = and i32 %588, 255
  %592 = tail call i32 @llvm.ctpop.i32(i32 %591)
  %593 = trunc i32 %592 to i8
  %594 = and i8 %593, 1
  %595 = xor i8 %594, 1
  store i8 %595, i8* %27, align 1
  %596 = xor i32 %587, %585
  %597 = xor i32 %596, %588
  %598 = lshr i32 %597, 4
  %599 = trunc i32 %598 to i8
  %600 = and i8 %599, 1
  store i8 %600, i8* %28, align 1
  %601 = icmp eq i32 %588, 0
  %602 = zext i1 %601 to i8
  store i8 %602, i8* %29, align 1
  %603 = lshr i32 %588, 31
  %604 = trunc i32 %603 to i8
  store i8 %604, i8* %30, align 1
  %605 = lshr i32 %585, 31
  %606 = lshr i32 %587, 31
  %607 = xor i32 %606, %605
  %608 = xor i32 %603, %605
  %609 = add nuw nsw i32 %608, %607
  %610 = icmp eq i32 %609, 2
  %611 = zext i1 %610 to i8
  store i8 %611, i8* %31, align 1
  %.v39 = select i1 %601, i64 184, i64 29
  %612 = add i64 %554, %.v39
  store i64 %612, i64* %3, align 8
  br i1 %601, label %block_.L_40d4b4, label %block_40d419

block_40d419:                                     ; preds = %block_40d3fc
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i633, align 8
  %613 = add i64 %513, -4
  %614 = add i64 %612, 19
  store i64 %614, i64* %3, align 8
  %615 = inttoptr i64 %613 to i32*
  %616 = load i32, i32* %615, align 4
  %617 = sext i32 %616 to i64
  %618 = mul nsw i64 %617, 744
  store i64 %618, i64* %RCX.i627, align 8
  %619 = lshr i64 %618, 63
  %620 = add i64 %618, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %620, i64* %RAX.i633, align 8
  %621 = icmp ult i64 %620, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %622 = icmp ult i64 %620, %618
  %623 = or i1 %621, %622
  %624 = zext i1 %623 to i8
  store i8 %624, i8* %26, align 1
  %625 = trunc i64 %620 to i32
  %626 = and i32 %625, 248
  %627 = tail call i32 @llvm.ctpop.i32(i32 %626)
  %628 = trunc i32 %627 to i8
  %629 = and i8 %628, 1
  %630 = xor i8 %629, 1
  store i8 %630, i8* %27, align 1
  %631 = xor i64 %618, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %632 = xor i64 %631, %620
  %633 = lshr i64 %632, 4
  %634 = trunc i64 %633 to i8
  %635 = and i8 %634, 1
  store i8 %635, i8* %28, align 1
  %636 = icmp eq i64 %620, 0
  %637 = zext i1 %636 to i8
  store i8 %637, i8* %29, align 1
  %638 = lshr i64 %620, 63
  %639 = trunc i64 %638 to i8
  store i8 %639, i8* %30, align 1
  %640 = xor i64 %638, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %641 = xor i64 %638, %619
  %642 = add nuw nsw i64 %640, %641
  %643 = icmp eq i64 %642, 2
  %644 = zext i1 %643 to i8
  store i8 %644, i8* %31, align 1
  %645 = add i64 %618, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 12)
  %646 = add i64 %612, 33
  store i64 %646, i64* %3, align 8
  %647 = inttoptr i64 %645 to i32*
  %648 = load i32, i32* %647, align 4
  %649 = add i32 %648, -20
  %650 = icmp ult i32 %648, 20
  %651 = zext i1 %650 to i8
  store i8 %651, i8* %26, align 1
  %652 = and i32 %649, 255
  %653 = tail call i32 @llvm.ctpop.i32(i32 %652)
  %654 = trunc i32 %653 to i8
  %655 = and i8 %654, 1
  %656 = xor i8 %655, 1
  store i8 %656, i8* %27, align 1
  %657 = xor i32 %648, 16
  %658 = xor i32 %657, %649
  %659 = lshr i32 %658, 4
  %660 = trunc i32 %659 to i8
  %661 = and i8 %660, 1
  store i8 %661, i8* %28, align 1
  %662 = icmp eq i32 %649, 0
  %663 = zext i1 %662 to i8
  store i8 %663, i8* %29, align 1
  %664 = lshr i32 %649, 31
  %665 = trunc i32 %664 to i8
  store i8 %665, i8* %30, align 1
  %666 = lshr i32 %648, 31
  %667 = xor i32 %664, %666
  %668 = add nuw nsw i32 %667, %666
  %669 = icmp eq i32 %668, 2
  %670 = zext i1 %669 to i8
  store i8 %670, i8* %31, align 1
  %671 = icmp ne i8 %665, 0
  %672 = xor i1 %671, %669
  %.v40 = select i1 %672, i64 39, i64 94
  %673 = add i64 %612, %.v40
  store i64 %673, i64* %3, align 8
  br i1 %672, label %block_40d440, label %block_.L_40d477

block_40d440:                                     ; preds = %block_40d419
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i633, align 8
  %674 = load i64, i64* %RBP.i, align 8
  %675 = add i64 %674, -8
  %676 = add i64 %673, 13
  store i64 %676, i64* %3, align 8
  %677 = inttoptr i64 %675 to i32*
  %678 = load i32, i32* %677, align 4
  %679 = add i32 %678, 20
  %680 = zext i32 %679 to i64
  store i64 %680, i64* %RCX.i627, align 8
  %681 = icmp ugt i32 %678, -21
  %682 = zext i1 %681 to i8
  store i8 %682, i8* %26, align 1
  %683 = and i32 %679, 255
  %684 = tail call i32 @llvm.ctpop.i32(i32 %683)
  %685 = trunc i32 %684 to i8
  %686 = and i8 %685, 1
  %687 = xor i8 %686, 1
  store i8 %687, i8* %27, align 1
  %688 = xor i32 %678, 16
  %689 = xor i32 %688, %679
  %690 = lshr i32 %689, 4
  %691 = trunc i32 %690 to i8
  %692 = and i8 %691, 1
  store i8 %692, i8* %28, align 1
  %693 = icmp eq i32 %679, 0
  %694 = zext i1 %693 to i8
  store i8 %694, i8* %29, align 1
  %695 = lshr i32 %679, 31
  %696 = trunc i32 %695 to i8
  store i8 %696, i8* %30, align 1
  %697 = lshr i32 %678, 31
  %698 = xor i32 %695, %697
  %699 = add nuw nsw i32 %698, %695
  %700 = icmp eq i32 %699, 2
  %701 = zext i1 %700 to i8
  store i8 %701, i8* %31, align 1
  %702 = add i64 %674, -4
  %703 = add i64 %673, 20
  store i64 %703, i64* %3, align 8
  %704 = inttoptr i64 %702 to i32*
  %705 = load i32, i32* %704, align 4
  %706 = sext i32 %705 to i64
  %707 = mul nsw i64 %706, 744
  store i64 %707, i64* %RDX.i623, align 8
  %708 = lshr i64 %707, 63
  %709 = add i64 %707, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %709, i64* %RSI.i575, align 8
  %710 = icmp ult i64 %709, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %711 = icmp ult i64 %709, %707
  %712 = or i1 %710, %711
  %713 = zext i1 %712 to i8
  store i8 %713, i8* %26, align 1
  %714 = trunc i64 %709 to i32
  %715 = and i32 %714, 248
  %716 = tail call i32 @llvm.ctpop.i32(i32 %715)
  %717 = trunc i32 %716 to i8
  %718 = and i8 %717, 1
  %719 = xor i8 %718, 1
  store i8 %719, i8* %27, align 1
  %720 = xor i64 %707, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %721 = xor i64 %720, %709
  %722 = lshr i64 %721, 4
  %723 = trunc i64 %722 to i8
  %724 = and i8 %723, 1
  store i8 %724, i8* %28, align 1
  %725 = icmp eq i64 %709, 0
  %726 = zext i1 %725 to i8
  store i8 %726, i8* %29, align 1
  %727 = lshr i64 %709, 63
  %728 = trunc i64 %727 to i8
  store i8 %728, i8* %30, align 1
  %729 = xor i64 %727, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %730 = xor i64 %727, %708
  %731 = add nuw nsw i64 %729, %730
  %732 = icmp eq i64 %731, 2
  %733 = zext i1 %732 to i8
  store i8 %733, i8* %31, align 1
  %734 = load i64, i64* %RBP.i, align 8
  %735 = add i64 %734, -4
  %736 = add i64 %673, 37
  store i64 %736, i64* %3, align 8
  %737 = inttoptr i64 %735 to i32*
  %738 = load i32, i32* %737, align 4
  %739 = sext i32 %738 to i64
  %740 = mul nsw i64 %739, 744
  store i64 %740, i64* %RDX.i623, align 8
  %741 = lshr i64 %740, 63
  %742 = load i64, i64* %RAX.i633, align 8
  %743 = add i64 %740, %742
  store i64 %743, i64* %RAX.i633, align 8
  %744 = icmp ult i64 %743, %742
  %745 = icmp ult i64 %743, %740
  %746 = or i1 %744, %745
  %747 = zext i1 %746 to i8
  store i8 %747, i8* %26, align 1
  %748 = trunc i64 %743 to i32
  %749 = and i32 %748, 255
  %750 = tail call i32 @llvm.ctpop.i32(i32 %749)
  %751 = trunc i32 %750 to i8
  %752 = and i8 %751, 1
  %753 = xor i8 %752, 1
  store i8 %753, i8* %27, align 1
  %754 = xor i64 %740, %742
  %755 = xor i64 %754, %743
  %756 = lshr i64 %755, 4
  %757 = trunc i64 %756 to i8
  %758 = and i8 %757, 1
  store i8 %758, i8* %28, align 1
  %759 = icmp eq i64 %743, 0
  %760 = zext i1 %759 to i8
  store i8 %760, i8* %29, align 1
  %761 = lshr i64 %743, 63
  %762 = trunc i64 %761 to i8
  store i8 %762, i8* %30, align 1
  %763 = lshr i64 %742, 63
  %764 = xor i64 %761, %763
  %765 = xor i64 %761, %741
  %766 = add nuw nsw i64 %764, %765
  %767 = icmp eq i64 %766, 2
  %768 = zext i1 %767 to i8
  store i8 %768, i8* %31, align 1
  %769 = add i64 %743, 12
  %770 = add i64 %673, 51
  store i64 %770, i64* %3, align 8
  %771 = inttoptr i64 %769 to i32*
  %772 = load i32, i32* %771, align 4
  %773 = sext i32 %772 to i64
  store i64 %773, i64* %RAX.i633, align 8
  %774 = load i64, i64* %RSI.i575, align 8
  %775 = shl nsw i64 %773, 2
  %776 = add i64 %774, 16
  %777 = add i64 %776, %775
  %778 = load i32, i32* %ECX.i23, align 4
  %779 = add i64 %673, 55
  store i64 %779, i64* %3, align 8
  %780 = inttoptr i64 %777 to i32*
  store i32 %778, i32* %780, align 4
  %.pre20 = load i64, i64* %3, align 8
  br label %block_.L_40d477

block_.L_40d477:                                  ; preds = %block_40d419, %block_40d440
  %781 = phi i64 [ %673, %block_40d419 ], [ %.pre20, %block_40d440 ]
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i633, align 8
  %782 = load i64, i64* %RBP.i, align 8
  %783 = add i64 %782, -4
  %784 = add i64 %781, 14
  store i64 %784, i64* %3, align 8
  %785 = inttoptr i64 %783 to i32*
  %786 = load i32, i32* %785, align 4
  %787 = sext i32 %786 to i64
  %788 = mul nsw i64 %787, 744
  store i64 %788, i64* %RCX.i627, align 8
  %789 = lshr i64 %788, 63
  %790 = add i64 %788, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %790, i64* %RAX.i633, align 8
  %791 = icmp ult i64 %790, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %792 = icmp ult i64 %790, %788
  %793 = or i1 %791, %792
  %794 = zext i1 %793 to i8
  store i8 %794, i8* %26, align 1
  %795 = trunc i64 %790 to i32
  %796 = and i32 %795, 248
  %797 = tail call i32 @llvm.ctpop.i32(i32 %796)
  %798 = trunc i32 %797 to i8
  %799 = and i8 %798, 1
  %800 = xor i8 %799, 1
  store i8 %800, i8* %27, align 1
  %801 = xor i64 %788, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %802 = xor i64 %801, %790
  %803 = lshr i64 %802, 4
  %804 = trunc i64 %803 to i8
  %805 = and i8 %804, 1
  store i8 %805, i8* %28, align 1
  %806 = icmp eq i64 %790, 0
  %807 = zext i1 %806 to i8
  store i8 %807, i8* %29, align 1
  %808 = lshr i64 %790, 63
  %809 = trunc i64 %808 to i8
  store i8 %809, i8* %30, align 1
  %810 = xor i64 %808, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %811 = xor i64 %808, %789
  %812 = add nuw nsw i64 %810, %811
  %813 = icmp eq i64 %812, 2
  %814 = zext i1 %813 to i8
  store i8 %814, i8* %31, align 1
  %815 = add i64 %788, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 12)
  %816 = add i64 %781, 27
  store i64 %816, i64* %3, align 8
  %817 = inttoptr i64 %815 to i32*
  %818 = load i32, i32* %817, align 4
  %819 = add i32 %818, 1
  %820 = icmp eq i32 %818, -1
  %821 = icmp eq i32 %819, 0
  %822 = or i1 %820, %821
  %823 = zext i1 %822 to i8
  store i8 %823, i8* %26, align 1
  %824 = and i32 %819, 255
  %825 = tail call i32 @llvm.ctpop.i32(i32 %824)
  %826 = trunc i32 %825 to i8
  %827 = and i8 %826, 1
  %828 = xor i8 %827, 1
  store i8 %828, i8* %27, align 1
  %829 = xor i32 %819, %818
  %830 = lshr i32 %829, 4
  %831 = trunc i32 %830 to i8
  %832 = and i8 %831, 1
  store i8 %832, i8* %28, align 1
  %833 = zext i1 %821 to i8
  store i8 %833, i8* %29, align 1
  %834 = lshr i32 %819, 31
  %835 = trunc i32 %834 to i8
  store i8 %835, i8* %30, align 1
  %836 = lshr i32 %818, 31
  %837 = xor i32 %834, %836
  %838 = add nuw nsw i32 %837, %834
  %839 = icmp eq i32 %838, 2
  %840 = zext i1 %839 to i8
  store i8 %840, i8* %31, align 1
  %841 = add i64 %781, 33
  store i64 %841, i64* %3, align 8
  store i32 %819, i32* %817, align 4
  %842 = load i64, i64* %3, align 8
  %843 = load i32, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*), align 8
  %844 = zext i32 %843 to i64
  store i64 %844, i64* %RDX.i623, align 8
  %845 = load i64, i64* %RBP.i, align 8
  %846 = add i64 %845, -8
  %847 = add i64 %842, 10
  store i64 %847, i64* %3, align 8
  %848 = inttoptr i64 %846 to i32*
  %849 = load i32, i32* %848, align 4
  %850 = add i32 %849, 20
  %851 = zext i32 %850 to i64
  store i64 %851, i64* %RSI.i575, align 8
  %852 = icmp ugt i32 %849, -21
  %853 = zext i1 %852 to i8
  store i8 %853, i8* %26, align 1
  %854 = and i32 %850, 255
  %855 = tail call i32 @llvm.ctpop.i32(i32 %854)
  %856 = trunc i32 %855 to i8
  %857 = and i8 %856, 1
  %858 = xor i8 %857, 1
  store i8 %858, i8* %27, align 1
  %859 = xor i32 %849, 16
  %860 = xor i32 %859, %850
  %861 = lshr i32 %860, 4
  %862 = trunc i32 %861 to i8
  %863 = and i8 %862, 1
  store i8 %863, i8* %28, align 1
  %864 = icmp eq i32 %850, 0
  %865 = zext i1 %864 to i8
  store i8 %865, i8* %29, align 1
  %866 = lshr i32 %850, 31
  %867 = trunc i32 %866 to i8
  store i8 %867, i8* %30, align 1
  %868 = lshr i32 %849, 31
  %869 = xor i32 %866, %868
  %870 = add nuw nsw i32 %869, %866
  %871 = icmp eq i32 %870, 2
  %872 = zext i1 %871 to i8
  store i8 %872, i8* %31, align 1
  %873 = sext i32 %850 to i64
  store i64 %873, i64* %RAX.i633, align 8
  %874 = shl nsw i64 %873, 2
  %875 = add nsw i64 %874, 11185584
  %876 = add i64 %842, 23
  store i64 %876, i64* %3, align 8
  %877 = inttoptr i64 %875 to i32*
  store i32 %843, i32* %877, align 4
  %878 = load i64, i64* %3, align 8
  %879 = add i64 %878, 5
  store i64 %879, i64* %3, align 8
  %.pre21 = load i64, i64* %RBP.i, align 8
  br label %block_.L_40d4b4

block_.L_40d4b4:                                  ; preds = %block_.L_40d3e2, %block_.L_40d477, %block_40d3fc
  %880 = phi i64 [ %879, %block_.L_40d477 ], [ %612, %block_40d3fc ], [ %554, %block_.L_40d3e2 ]
  %881 = phi i64 [ %.pre21, %block_.L_40d477 ], [ %513, %block_40d3fc ], [ %513, %block_.L_40d3e2 ]
  %882 = add i64 %881, -8
  %883 = add i64 %880, 3
  store i64 %883, i64* %3, align 8
  %884 = inttoptr i64 %882 to i32*
  %885 = load i32, i32* %884, align 4
  %886 = add i32 %885, -1
  %887 = zext i32 %886 to i64
  store i64 %887, i64* %RAX.i633, align 8
  %888 = icmp eq i32 %885, 0
  %889 = zext i1 %888 to i8
  store i8 %889, i8* %26, align 1
  %890 = and i32 %886, 255
  %891 = tail call i32 @llvm.ctpop.i32(i32 %890)
  %892 = trunc i32 %891 to i8
  %893 = and i8 %892, 1
  %894 = xor i8 %893, 1
  store i8 %894, i8* %27, align 1
  %895 = xor i32 %886, %885
  %896 = lshr i32 %895, 4
  %897 = trunc i32 %896 to i8
  %898 = and i8 %897, 1
  store i8 %898, i8* %28, align 1
  %899 = icmp eq i32 %886, 0
  %900 = zext i1 %899 to i8
  store i8 %900, i8* %29, align 1
  %901 = lshr i32 %886, 31
  %902 = trunc i32 %901 to i8
  store i8 %902, i8* %30, align 1
  %903 = lshr i32 %885, 31
  %904 = xor i32 %901, %903
  %905 = add nuw nsw i32 %904, %903
  %906 = icmp eq i32 %905, 2
  %907 = zext i1 %906 to i8
  store i8 %907, i8* %31, align 1
  %908 = sext i32 %886 to i64
  store i64 %908, i64* %RCX.i627, align 8
  %909 = add nsw i64 %908, 12099168
  %910 = add i64 %880, 17
  store i64 %910, i64* %3, align 8
  %911 = inttoptr i64 %909 to i8*
  %912 = load i8, i8* %911, align 1
  %913 = zext i8 %912 to i64
  store i64 %913, i64* %RAX.i633, align 8
  %914 = zext i8 %912 to i32
  store i8 0, i8* %26, align 1
  %915 = tail call i32 @llvm.ctpop.i32(i32 %914)
  %916 = trunc i32 %915 to i8
  %917 = and i8 %916, 1
  %918 = xor i8 %917, 1
  store i8 %918, i8* %27, align 1
  store i8 0, i8* %28, align 1
  %919 = icmp eq i8 %912, 0
  %920 = zext i1 %919 to i8
  store i8 %920, i8* %29, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %31, align 1
  %.v29 = select i1 %919, i64 26, i64 210
  %921 = add i64 %880, %.v29
  store i64 %921, i64* %3, align 8
  br i1 %919, label %block_40d4ce, label %block_.L_40d586

block_40d4ce:                                     ; preds = %block_.L_40d4b4
  %922 = add i64 %921, 3
  store i64 %922, i64* %3, align 8
  %923 = load i32, i32* %884, align 4
  %924 = add i32 %923, -1
  %925 = zext i32 %924 to i64
  store i64 %925, i64* %RAX.i633, align 8
  %926 = icmp eq i32 %923, 0
  %927 = zext i1 %926 to i8
  store i8 %927, i8* %26, align 1
  %928 = and i32 %924, 255
  %929 = tail call i32 @llvm.ctpop.i32(i32 %928)
  %930 = trunc i32 %929 to i8
  %931 = and i8 %930, 1
  %932 = xor i8 %931, 1
  store i8 %932, i8* %27, align 1
  %933 = xor i32 %924, %923
  %934 = lshr i32 %933, 4
  %935 = trunc i32 %934 to i8
  %936 = and i8 %935, 1
  store i8 %936, i8* %28, align 1
  %937 = icmp eq i32 %924, 0
  %938 = zext i1 %937 to i8
  store i8 %938, i8* %29, align 1
  %939 = lshr i32 %924, 31
  %940 = trunc i32 %939 to i8
  store i8 %940, i8* %30, align 1
  %941 = lshr i32 %923, 31
  %942 = xor i32 %939, %941
  %943 = add nuw nsw i32 %942, %941
  %944 = icmp eq i32 %943, 2
  %945 = zext i1 %944 to i8
  store i8 %945, i8* %31, align 1
  %946 = sext i32 %924 to i64
  store i64 %946, i64* %RCX.i627, align 8
  %947 = shl nsw i64 %946, 2
  %948 = add nsw i64 %947, 11185584
  %949 = add i64 %921, 16
  store i64 %949, i64* %3, align 8
  %950 = inttoptr i64 %948 to i32*
  %951 = load i32, i32* %950, align 4
  %952 = zext i32 %951 to i64
  store i64 %952, i64* %RAX.i633, align 8
  %953 = load i32, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*), align 8
  %954 = sub i32 %951, %953
  %955 = icmp ult i32 %951, %953
  %956 = zext i1 %955 to i8
  store i8 %956, i8* %26, align 1
  %957 = and i32 %954, 255
  %958 = tail call i32 @llvm.ctpop.i32(i32 %957)
  %959 = trunc i32 %958 to i8
  %960 = and i8 %959, 1
  %961 = xor i8 %960, 1
  store i8 %961, i8* %27, align 1
  %962 = xor i32 %953, %951
  %963 = xor i32 %962, %954
  %964 = lshr i32 %963, 4
  %965 = trunc i32 %964 to i8
  %966 = and i8 %965, 1
  store i8 %966, i8* %28, align 1
  %967 = icmp eq i32 %954, 0
  %968 = zext i1 %967 to i8
  store i8 %968, i8* %29, align 1
  %969 = lshr i32 %954, 31
  %970 = trunc i32 %969 to i8
  store i8 %970, i8* %30, align 1
  %971 = lshr i32 %951, 31
  %972 = lshr i32 %953, 31
  %973 = xor i32 %972, %971
  %974 = xor i32 %969, %971
  %975 = add nuw nsw i32 %974, %973
  %976 = icmp eq i32 %975, 2
  %977 = zext i1 %976 to i8
  store i8 %977, i8* %31, align 1
  %.v37 = select i1 %967, i64 184, i64 29
  %978 = add i64 %921, %.v37
  store i64 %978, i64* %3, align 8
  br i1 %967, label %block_.L_40d586, label %block_40d4eb

block_40d4eb:                                     ; preds = %block_40d4ce
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i633, align 8
  %979 = add i64 %881, -4
  %980 = add i64 %978, 19
  store i64 %980, i64* %3, align 8
  %981 = inttoptr i64 %979 to i32*
  %982 = load i32, i32* %981, align 4
  %983 = sext i32 %982 to i64
  %984 = mul nsw i64 %983, 744
  store i64 %984, i64* %RCX.i627, align 8
  %985 = lshr i64 %984, 63
  %986 = add i64 %984, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %986, i64* %RAX.i633, align 8
  %987 = icmp ult i64 %986, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %988 = icmp ult i64 %986, %984
  %989 = or i1 %987, %988
  %990 = zext i1 %989 to i8
  store i8 %990, i8* %26, align 1
  %991 = trunc i64 %986 to i32
  %992 = and i32 %991, 248
  %993 = tail call i32 @llvm.ctpop.i32(i32 %992)
  %994 = trunc i32 %993 to i8
  %995 = and i8 %994, 1
  %996 = xor i8 %995, 1
  store i8 %996, i8* %27, align 1
  %997 = xor i64 %984, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %998 = xor i64 %997, %986
  %999 = lshr i64 %998, 4
  %1000 = trunc i64 %999 to i8
  %1001 = and i8 %1000, 1
  store i8 %1001, i8* %28, align 1
  %1002 = icmp eq i64 %986, 0
  %1003 = zext i1 %1002 to i8
  store i8 %1003, i8* %29, align 1
  %1004 = lshr i64 %986, 63
  %1005 = trunc i64 %1004 to i8
  store i8 %1005, i8* %30, align 1
  %1006 = xor i64 %1004, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %1007 = xor i64 %1004, %985
  %1008 = add nuw nsw i64 %1006, %1007
  %1009 = icmp eq i64 %1008, 2
  %1010 = zext i1 %1009 to i8
  store i8 %1010, i8* %31, align 1
  %1011 = add i64 %984, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 12)
  %1012 = add i64 %978, 33
  store i64 %1012, i64* %3, align 8
  %1013 = inttoptr i64 %1011 to i32*
  %1014 = load i32, i32* %1013, align 4
  %1015 = add i32 %1014, -20
  %1016 = icmp ult i32 %1014, 20
  %1017 = zext i1 %1016 to i8
  store i8 %1017, i8* %26, align 1
  %1018 = and i32 %1015, 255
  %1019 = tail call i32 @llvm.ctpop.i32(i32 %1018)
  %1020 = trunc i32 %1019 to i8
  %1021 = and i8 %1020, 1
  %1022 = xor i8 %1021, 1
  store i8 %1022, i8* %27, align 1
  %1023 = xor i32 %1014, 16
  %1024 = xor i32 %1023, %1015
  %1025 = lshr i32 %1024, 4
  %1026 = trunc i32 %1025 to i8
  %1027 = and i8 %1026, 1
  store i8 %1027, i8* %28, align 1
  %1028 = icmp eq i32 %1015, 0
  %1029 = zext i1 %1028 to i8
  store i8 %1029, i8* %29, align 1
  %1030 = lshr i32 %1015, 31
  %1031 = trunc i32 %1030 to i8
  store i8 %1031, i8* %30, align 1
  %1032 = lshr i32 %1014, 31
  %1033 = xor i32 %1030, %1032
  %1034 = add nuw nsw i32 %1033, %1032
  %1035 = icmp eq i32 %1034, 2
  %1036 = zext i1 %1035 to i8
  store i8 %1036, i8* %31, align 1
  %1037 = icmp ne i8 %1031, 0
  %1038 = xor i1 %1037, %1035
  %.v38 = select i1 %1038, i64 39, i64 94
  %1039 = add i64 %978, %.v38
  store i64 %1039, i64* %3, align 8
  br i1 %1038, label %block_40d512, label %block_.L_40d549

block_40d512:                                     ; preds = %block_40d4eb
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i633, align 8
  %1040 = load i64, i64* %RBP.i, align 8
  %1041 = add i64 %1040, -8
  %1042 = add i64 %1039, 13
  store i64 %1042, i64* %3, align 8
  %1043 = inttoptr i64 %1041 to i32*
  %1044 = load i32, i32* %1043, align 4
  %1045 = add i32 %1044, -1
  %1046 = zext i32 %1045 to i64
  store i64 %1046, i64* %RCX.i627, align 8
  %1047 = icmp eq i32 %1044, 0
  %1048 = zext i1 %1047 to i8
  store i8 %1048, i8* %26, align 1
  %1049 = and i32 %1045, 255
  %1050 = tail call i32 @llvm.ctpop.i32(i32 %1049)
  %1051 = trunc i32 %1050 to i8
  %1052 = and i8 %1051, 1
  %1053 = xor i8 %1052, 1
  store i8 %1053, i8* %27, align 1
  %1054 = xor i32 %1045, %1044
  %1055 = lshr i32 %1054, 4
  %1056 = trunc i32 %1055 to i8
  %1057 = and i8 %1056, 1
  store i8 %1057, i8* %28, align 1
  %1058 = icmp eq i32 %1045, 0
  %1059 = zext i1 %1058 to i8
  store i8 %1059, i8* %29, align 1
  %1060 = lshr i32 %1045, 31
  %1061 = trunc i32 %1060 to i8
  store i8 %1061, i8* %30, align 1
  %1062 = lshr i32 %1044, 31
  %1063 = xor i32 %1060, %1062
  %1064 = add nuw nsw i32 %1063, %1062
  %1065 = icmp eq i32 %1064, 2
  %1066 = zext i1 %1065 to i8
  store i8 %1066, i8* %31, align 1
  %1067 = add i64 %1040, -4
  %1068 = add i64 %1039, 20
  store i64 %1068, i64* %3, align 8
  %1069 = inttoptr i64 %1067 to i32*
  %1070 = load i32, i32* %1069, align 4
  %1071 = sext i32 %1070 to i64
  %1072 = mul nsw i64 %1071, 744
  store i64 %1072, i64* %RDX.i623, align 8
  %1073 = lshr i64 %1072, 63
  %1074 = add i64 %1072, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %1074, i64* %RSI.i575, align 8
  %1075 = icmp ult i64 %1074, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %1076 = icmp ult i64 %1074, %1072
  %1077 = or i1 %1075, %1076
  %1078 = zext i1 %1077 to i8
  store i8 %1078, i8* %26, align 1
  %1079 = trunc i64 %1074 to i32
  %1080 = and i32 %1079, 248
  %1081 = tail call i32 @llvm.ctpop.i32(i32 %1080)
  %1082 = trunc i32 %1081 to i8
  %1083 = and i8 %1082, 1
  %1084 = xor i8 %1083, 1
  store i8 %1084, i8* %27, align 1
  %1085 = xor i64 %1072, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %1086 = xor i64 %1085, %1074
  %1087 = lshr i64 %1086, 4
  %1088 = trunc i64 %1087 to i8
  %1089 = and i8 %1088, 1
  store i8 %1089, i8* %28, align 1
  %1090 = icmp eq i64 %1074, 0
  %1091 = zext i1 %1090 to i8
  store i8 %1091, i8* %29, align 1
  %1092 = lshr i64 %1074, 63
  %1093 = trunc i64 %1092 to i8
  store i8 %1093, i8* %30, align 1
  %1094 = xor i64 %1092, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %1095 = xor i64 %1092, %1073
  %1096 = add nuw nsw i64 %1094, %1095
  %1097 = icmp eq i64 %1096, 2
  %1098 = zext i1 %1097 to i8
  store i8 %1098, i8* %31, align 1
  %1099 = load i64, i64* %RBP.i, align 8
  %1100 = add i64 %1099, -4
  %1101 = add i64 %1039, 37
  store i64 %1101, i64* %3, align 8
  %1102 = inttoptr i64 %1100 to i32*
  %1103 = load i32, i32* %1102, align 4
  %1104 = sext i32 %1103 to i64
  %1105 = mul nsw i64 %1104, 744
  store i64 %1105, i64* %RDX.i623, align 8
  %1106 = lshr i64 %1105, 63
  %1107 = load i64, i64* %RAX.i633, align 8
  %1108 = add i64 %1105, %1107
  store i64 %1108, i64* %RAX.i633, align 8
  %1109 = icmp ult i64 %1108, %1107
  %1110 = icmp ult i64 %1108, %1105
  %1111 = or i1 %1109, %1110
  %1112 = zext i1 %1111 to i8
  store i8 %1112, i8* %26, align 1
  %1113 = trunc i64 %1108 to i32
  %1114 = and i32 %1113, 255
  %1115 = tail call i32 @llvm.ctpop.i32(i32 %1114)
  %1116 = trunc i32 %1115 to i8
  %1117 = and i8 %1116, 1
  %1118 = xor i8 %1117, 1
  store i8 %1118, i8* %27, align 1
  %1119 = xor i64 %1105, %1107
  %1120 = xor i64 %1119, %1108
  %1121 = lshr i64 %1120, 4
  %1122 = trunc i64 %1121 to i8
  %1123 = and i8 %1122, 1
  store i8 %1123, i8* %28, align 1
  %1124 = icmp eq i64 %1108, 0
  %1125 = zext i1 %1124 to i8
  store i8 %1125, i8* %29, align 1
  %1126 = lshr i64 %1108, 63
  %1127 = trunc i64 %1126 to i8
  store i8 %1127, i8* %30, align 1
  %1128 = lshr i64 %1107, 63
  %1129 = xor i64 %1126, %1128
  %1130 = xor i64 %1126, %1106
  %1131 = add nuw nsw i64 %1129, %1130
  %1132 = icmp eq i64 %1131, 2
  %1133 = zext i1 %1132 to i8
  store i8 %1133, i8* %31, align 1
  %1134 = add i64 %1108, 12
  %1135 = add i64 %1039, 51
  store i64 %1135, i64* %3, align 8
  %1136 = inttoptr i64 %1134 to i32*
  %1137 = load i32, i32* %1136, align 4
  %1138 = sext i32 %1137 to i64
  store i64 %1138, i64* %RAX.i633, align 8
  %1139 = load i64, i64* %RSI.i575, align 8
  %1140 = shl nsw i64 %1138, 2
  %1141 = add i64 %1139, 16
  %1142 = add i64 %1141, %1140
  %1143 = load i32, i32* %ECX.i23, align 4
  %1144 = add i64 %1039, 55
  store i64 %1144, i64* %3, align 8
  %1145 = inttoptr i64 %1142 to i32*
  store i32 %1143, i32* %1145, align 4
  %.pre22 = load i64, i64* %3, align 8
  br label %block_.L_40d549

block_.L_40d549:                                  ; preds = %block_40d4eb, %block_40d512
  %1146 = phi i64 [ %1039, %block_40d4eb ], [ %.pre22, %block_40d512 ]
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i633, align 8
  %1147 = load i64, i64* %RBP.i, align 8
  %1148 = add i64 %1147, -4
  %1149 = add i64 %1146, 14
  store i64 %1149, i64* %3, align 8
  %1150 = inttoptr i64 %1148 to i32*
  %1151 = load i32, i32* %1150, align 4
  %1152 = sext i32 %1151 to i64
  %1153 = mul nsw i64 %1152, 744
  store i64 %1153, i64* %RCX.i627, align 8
  %1154 = lshr i64 %1153, 63
  %1155 = add i64 %1153, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %1155, i64* %RAX.i633, align 8
  %1156 = icmp ult i64 %1155, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %1157 = icmp ult i64 %1155, %1153
  %1158 = or i1 %1156, %1157
  %1159 = zext i1 %1158 to i8
  store i8 %1159, i8* %26, align 1
  %1160 = trunc i64 %1155 to i32
  %1161 = and i32 %1160, 248
  %1162 = tail call i32 @llvm.ctpop.i32(i32 %1161)
  %1163 = trunc i32 %1162 to i8
  %1164 = and i8 %1163, 1
  %1165 = xor i8 %1164, 1
  store i8 %1165, i8* %27, align 1
  %1166 = xor i64 %1153, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %1167 = xor i64 %1166, %1155
  %1168 = lshr i64 %1167, 4
  %1169 = trunc i64 %1168 to i8
  %1170 = and i8 %1169, 1
  store i8 %1170, i8* %28, align 1
  %1171 = icmp eq i64 %1155, 0
  %1172 = zext i1 %1171 to i8
  store i8 %1172, i8* %29, align 1
  %1173 = lshr i64 %1155, 63
  %1174 = trunc i64 %1173 to i8
  store i8 %1174, i8* %30, align 1
  %1175 = xor i64 %1173, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %1176 = xor i64 %1173, %1154
  %1177 = add nuw nsw i64 %1175, %1176
  %1178 = icmp eq i64 %1177, 2
  %1179 = zext i1 %1178 to i8
  store i8 %1179, i8* %31, align 1
  %1180 = add i64 %1153, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 12)
  %1181 = add i64 %1146, 27
  store i64 %1181, i64* %3, align 8
  %1182 = inttoptr i64 %1180 to i32*
  %1183 = load i32, i32* %1182, align 4
  %1184 = add i32 %1183, 1
  %1185 = icmp eq i32 %1183, -1
  %1186 = icmp eq i32 %1184, 0
  %1187 = or i1 %1185, %1186
  %1188 = zext i1 %1187 to i8
  store i8 %1188, i8* %26, align 1
  %1189 = and i32 %1184, 255
  %1190 = tail call i32 @llvm.ctpop.i32(i32 %1189)
  %1191 = trunc i32 %1190 to i8
  %1192 = and i8 %1191, 1
  %1193 = xor i8 %1192, 1
  store i8 %1193, i8* %27, align 1
  %1194 = xor i32 %1184, %1183
  %1195 = lshr i32 %1194, 4
  %1196 = trunc i32 %1195 to i8
  %1197 = and i8 %1196, 1
  store i8 %1197, i8* %28, align 1
  %1198 = zext i1 %1186 to i8
  store i8 %1198, i8* %29, align 1
  %1199 = lshr i32 %1184, 31
  %1200 = trunc i32 %1199 to i8
  store i8 %1200, i8* %30, align 1
  %1201 = lshr i32 %1183, 31
  %1202 = xor i32 %1199, %1201
  %1203 = add nuw nsw i32 %1202, %1199
  %1204 = icmp eq i32 %1203, 2
  %1205 = zext i1 %1204 to i8
  store i8 %1205, i8* %31, align 1
  %1206 = add i64 %1146, 33
  store i64 %1206, i64* %3, align 8
  store i32 %1184, i32* %1182, align 4
  %1207 = load i64, i64* %3, align 8
  %1208 = load i32, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*), align 8
  %1209 = zext i32 %1208 to i64
  store i64 %1209, i64* %RDX.i623, align 8
  %1210 = load i64, i64* %RBP.i, align 8
  %1211 = add i64 %1210, -8
  %1212 = add i64 %1207, 10
  store i64 %1212, i64* %3, align 8
  %1213 = inttoptr i64 %1211 to i32*
  %1214 = load i32, i32* %1213, align 4
  %1215 = add i32 %1214, -1
  %1216 = zext i32 %1215 to i64
  store i64 %1216, i64* %RSI.i575, align 8
  %1217 = icmp eq i32 %1214, 0
  %1218 = zext i1 %1217 to i8
  store i8 %1218, i8* %26, align 1
  %1219 = and i32 %1215, 255
  %1220 = tail call i32 @llvm.ctpop.i32(i32 %1219)
  %1221 = trunc i32 %1220 to i8
  %1222 = and i8 %1221, 1
  %1223 = xor i8 %1222, 1
  store i8 %1223, i8* %27, align 1
  %1224 = xor i32 %1215, %1214
  %1225 = lshr i32 %1224, 4
  %1226 = trunc i32 %1225 to i8
  %1227 = and i8 %1226, 1
  store i8 %1227, i8* %28, align 1
  %1228 = icmp eq i32 %1215, 0
  %1229 = zext i1 %1228 to i8
  store i8 %1229, i8* %29, align 1
  %1230 = lshr i32 %1215, 31
  %1231 = trunc i32 %1230 to i8
  store i8 %1231, i8* %30, align 1
  %1232 = lshr i32 %1214, 31
  %1233 = xor i32 %1230, %1232
  %1234 = add nuw nsw i32 %1233, %1232
  %1235 = icmp eq i32 %1234, 2
  %1236 = zext i1 %1235 to i8
  store i8 %1236, i8* %31, align 1
  %1237 = sext i32 %1215 to i64
  store i64 %1237, i64* %RAX.i633, align 8
  %1238 = shl nsw i64 %1237, 2
  %1239 = add nsw i64 %1238, 11185584
  %1240 = add i64 %1207, 23
  store i64 %1240, i64* %3, align 8
  %1241 = inttoptr i64 %1239 to i32*
  store i32 %1208, i32* %1241, align 4
  %1242 = load i64, i64* %3, align 8
  %1243 = add i64 %1242, 5
  store i64 %1243, i64* %3, align 8
  %.pre23 = load i64, i64* %RBP.i, align 8
  br label %block_.L_40d586

block_.L_40d586:                                  ; preds = %block_.L_40d4b4, %block_.L_40d549, %block_40d4ce
  %1244 = phi i64 [ %1243, %block_.L_40d549 ], [ %978, %block_40d4ce ], [ %921, %block_.L_40d4b4 ]
  %1245 = phi i64 [ %.pre23, %block_.L_40d549 ], [ %881, %block_40d4ce ], [ %881, %block_.L_40d4b4 ]
  %1246 = add i64 %1245, -8
  %1247 = add i64 %1244, 3
  store i64 %1247, i64* %3, align 8
  %1248 = inttoptr i64 %1246 to i32*
  %1249 = load i32, i32* %1248, align 4
  %1250 = add i32 %1249, -20
  %1251 = zext i32 %1250 to i64
  store i64 %1251, i64* %RAX.i633, align 8
  %1252 = icmp ult i32 %1249, 20
  %1253 = zext i1 %1252 to i8
  store i8 %1253, i8* %26, align 1
  %1254 = and i32 %1250, 255
  %1255 = tail call i32 @llvm.ctpop.i32(i32 %1254)
  %1256 = trunc i32 %1255 to i8
  %1257 = and i8 %1256, 1
  %1258 = xor i8 %1257, 1
  store i8 %1258, i8* %27, align 1
  %1259 = xor i32 %1249, 16
  %1260 = xor i32 %1259, %1250
  %1261 = lshr i32 %1260, 4
  %1262 = trunc i32 %1261 to i8
  %1263 = and i8 %1262, 1
  store i8 %1263, i8* %28, align 1
  %1264 = icmp eq i32 %1250, 0
  %1265 = zext i1 %1264 to i8
  store i8 %1265, i8* %29, align 1
  %1266 = lshr i32 %1250, 31
  %1267 = trunc i32 %1266 to i8
  store i8 %1267, i8* %30, align 1
  %1268 = lshr i32 %1249, 31
  %1269 = xor i32 %1266, %1268
  %1270 = add nuw nsw i32 %1269, %1268
  %1271 = icmp eq i32 %1270, 2
  %1272 = zext i1 %1271 to i8
  store i8 %1272, i8* %31, align 1
  %1273 = sext i32 %1250 to i64
  store i64 %1273, i64* %RCX.i627, align 8
  %1274 = add nsw i64 %1273, 12099168
  %1275 = add i64 %1244, 17
  store i64 %1275, i64* %3, align 8
  %1276 = inttoptr i64 %1274 to i8*
  %1277 = load i8, i8* %1276, align 1
  %1278 = zext i8 %1277 to i64
  store i64 %1278, i64* %RAX.i633, align 8
  %1279 = zext i8 %1277 to i32
  store i8 0, i8* %26, align 1
  %1280 = tail call i32 @llvm.ctpop.i32(i32 %1279)
  %1281 = trunc i32 %1280 to i8
  %1282 = and i8 %1281, 1
  %1283 = xor i8 %1282, 1
  store i8 %1283, i8* %27, align 1
  store i8 0, i8* %28, align 1
  %1284 = icmp eq i8 %1277, 0
  %1285 = zext i1 %1284 to i8
  store i8 %1285, i8* %29, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %31, align 1
  %.v30 = select i1 %1284, i64 26, i64 210
  %1286 = add i64 %1244, %.v30
  store i64 %1286, i64* %3, align 8
  br i1 %1284, label %block_40d5a0, label %block_.L_40d658

block_40d5a0:                                     ; preds = %block_.L_40d586
  %1287 = add i64 %1286, 3
  store i64 %1287, i64* %3, align 8
  %1288 = load i32, i32* %1248, align 4
  %1289 = add i32 %1288, -20
  %1290 = zext i32 %1289 to i64
  store i64 %1290, i64* %RAX.i633, align 8
  %1291 = icmp ult i32 %1288, 20
  %1292 = zext i1 %1291 to i8
  store i8 %1292, i8* %26, align 1
  %1293 = and i32 %1289, 255
  %1294 = tail call i32 @llvm.ctpop.i32(i32 %1293)
  %1295 = trunc i32 %1294 to i8
  %1296 = and i8 %1295, 1
  %1297 = xor i8 %1296, 1
  store i8 %1297, i8* %27, align 1
  %1298 = xor i32 %1288, 16
  %1299 = xor i32 %1298, %1289
  %1300 = lshr i32 %1299, 4
  %1301 = trunc i32 %1300 to i8
  %1302 = and i8 %1301, 1
  store i8 %1302, i8* %28, align 1
  %1303 = icmp eq i32 %1289, 0
  %1304 = zext i1 %1303 to i8
  store i8 %1304, i8* %29, align 1
  %1305 = lshr i32 %1289, 31
  %1306 = trunc i32 %1305 to i8
  store i8 %1306, i8* %30, align 1
  %1307 = lshr i32 %1288, 31
  %1308 = xor i32 %1305, %1307
  %1309 = add nuw nsw i32 %1308, %1307
  %1310 = icmp eq i32 %1309, 2
  %1311 = zext i1 %1310 to i8
  store i8 %1311, i8* %31, align 1
  %1312 = sext i32 %1289 to i64
  store i64 %1312, i64* %RCX.i627, align 8
  %1313 = shl nsw i64 %1312, 2
  %1314 = add nsw i64 %1313, 11185584
  %1315 = add i64 %1286, 16
  store i64 %1315, i64* %3, align 8
  %1316 = inttoptr i64 %1314 to i32*
  %1317 = load i32, i32* %1316, align 4
  %1318 = zext i32 %1317 to i64
  store i64 %1318, i64* %RAX.i633, align 8
  %1319 = load i32, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*), align 8
  %1320 = sub i32 %1317, %1319
  %1321 = icmp ult i32 %1317, %1319
  %1322 = zext i1 %1321 to i8
  store i8 %1322, i8* %26, align 1
  %1323 = and i32 %1320, 255
  %1324 = tail call i32 @llvm.ctpop.i32(i32 %1323)
  %1325 = trunc i32 %1324 to i8
  %1326 = and i8 %1325, 1
  %1327 = xor i8 %1326, 1
  store i8 %1327, i8* %27, align 1
  %1328 = xor i32 %1319, %1317
  %1329 = xor i32 %1328, %1320
  %1330 = lshr i32 %1329, 4
  %1331 = trunc i32 %1330 to i8
  %1332 = and i8 %1331, 1
  store i8 %1332, i8* %28, align 1
  %1333 = icmp eq i32 %1320, 0
  %1334 = zext i1 %1333 to i8
  store i8 %1334, i8* %29, align 1
  %1335 = lshr i32 %1320, 31
  %1336 = trunc i32 %1335 to i8
  store i8 %1336, i8* %30, align 1
  %1337 = lshr i32 %1317, 31
  %1338 = lshr i32 %1319, 31
  %1339 = xor i32 %1338, %1337
  %1340 = xor i32 %1335, %1337
  %1341 = add nuw nsw i32 %1340, %1339
  %1342 = icmp eq i32 %1341, 2
  %1343 = zext i1 %1342 to i8
  store i8 %1343, i8* %31, align 1
  %.v35 = select i1 %1333, i64 184, i64 29
  %1344 = add i64 %1286, %.v35
  store i64 %1344, i64* %3, align 8
  br i1 %1333, label %block_.L_40d658, label %block_40d5bd

block_40d5bd:                                     ; preds = %block_40d5a0
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i633, align 8
  %1345 = add i64 %1245, -4
  %1346 = add i64 %1344, 19
  store i64 %1346, i64* %3, align 8
  %1347 = inttoptr i64 %1345 to i32*
  %1348 = load i32, i32* %1347, align 4
  %1349 = sext i32 %1348 to i64
  %1350 = mul nsw i64 %1349, 744
  store i64 %1350, i64* %RCX.i627, align 8
  %1351 = lshr i64 %1350, 63
  %1352 = add i64 %1350, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %1352, i64* %RAX.i633, align 8
  %1353 = icmp ult i64 %1352, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %1354 = icmp ult i64 %1352, %1350
  %1355 = or i1 %1353, %1354
  %1356 = zext i1 %1355 to i8
  store i8 %1356, i8* %26, align 1
  %1357 = trunc i64 %1352 to i32
  %1358 = and i32 %1357, 248
  %1359 = tail call i32 @llvm.ctpop.i32(i32 %1358)
  %1360 = trunc i32 %1359 to i8
  %1361 = and i8 %1360, 1
  %1362 = xor i8 %1361, 1
  store i8 %1362, i8* %27, align 1
  %1363 = xor i64 %1350, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %1364 = xor i64 %1363, %1352
  %1365 = lshr i64 %1364, 4
  %1366 = trunc i64 %1365 to i8
  %1367 = and i8 %1366, 1
  store i8 %1367, i8* %28, align 1
  %1368 = icmp eq i64 %1352, 0
  %1369 = zext i1 %1368 to i8
  store i8 %1369, i8* %29, align 1
  %1370 = lshr i64 %1352, 63
  %1371 = trunc i64 %1370 to i8
  store i8 %1371, i8* %30, align 1
  %1372 = xor i64 %1370, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %1373 = xor i64 %1370, %1351
  %1374 = add nuw nsw i64 %1372, %1373
  %1375 = icmp eq i64 %1374, 2
  %1376 = zext i1 %1375 to i8
  store i8 %1376, i8* %31, align 1
  %1377 = add i64 %1350, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 12)
  %1378 = add i64 %1344, 33
  store i64 %1378, i64* %3, align 8
  %1379 = inttoptr i64 %1377 to i32*
  %1380 = load i32, i32* %1379, align 4
  %1381 = add i32 %1380, -20
  %1382 = icmp ult i32 %1380, 20
  %1383 = zext i1 %1382 to i8
  store i8 %1383, i8* %26, align 1
  %1384 = and i32 %1381, 255
  %1385 = tail call i32 @llvm.ctpop.i32(i32 %1384)
  %1386 = trunc i32 %1385 to i8
  %1387 = and i8 %1386, 1
  %1388 = xor i8 %1387, 1
  store i8 %1388, i8* %27, align 1
  %1389 = xor i32 %1380, 16
  %1390 = xor i32 %1389, %1381
  %1391 = lshr i32 %1390, 4
  %1392 = trunc i32 %1391 to i8
  %1393 = and i8 %1392, 1
  store i8 %1393, i8* %28, align 1
  %1394 = icmp eq i32 %1381, 0
  %1395 = zext i1 %1394 to i8
  store i8 %1395, i8* %29, align 1
  %1396 = lshr i32 %1381, 31
  %1397 = trunc i32 %1396 to i8
  store i8 %1397, i8* %30, align 1
  %1398 = lshr i32 %1380, 31
  %1399 = xor i32 %1396, %1398
  %1400 = add nuw nsw i32 %1399, %1398
  %1401 = icmp eq i32 %1400, 2
  %1402 = zext i1 %1401 to i8
  store i8 %1402, i8* %31, align 1
  %1403 = icmp ne i8 %1397, 0
  %1404 = xor i1 %1403, %1401
  %.v36 = select i1 %1404, i64 39, i64 94
  %1405 = add i64 %1344, %.v36
  store i64 %1405, i64* %3, align 8
  br i1 %1404, label %block_40d5e4, label %block_.L_40d61b

block_40d5e4:                                     ; preds = %block_40d5bd
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i633, align 8
  %1406 = load i64, i64* %RBP.i, align 8
  %1407 = add i64 %1406, -8
  %1408 = add i64 %1405, 13
  store i64 %1408, i64* %3, align 8
  %1409 = inttoptr i64 %1407 to i32*
  %1410 = load i32, i32* %1409, align 4
  %1411 = add i32 %1410, -20
  %1412 = zext i32 %1411 to i64
  store i64 %1412, i64* %RCX.i627, align 8
  %1413 = icmp ult i32 %1410, 20
  %1414 = zext i1 %1413 to i8
  store i8 %1414, i8* %26, align 1
  %1415 = and i32 %1411, 255
  %1416 = tail call i32 @llvm.ctpop.i32(i32 %1415)
  %1417 = trunc i32 %1416 to i8
  %1418 = and i8 %1417, 1
  %1419 = xor i8 %1418, 1
  store i8 %1419, i8* %27, align 1
  %1420 = xor i32 %1410, 16
  %1421 = xor i32 %1420, %1411
  %1422 = lshr i32 %1421, 4
  %1423 = trunc i32 %1422 to i8
  %1424 = and i8 %1423, 1
  store i8 %1424, i8* %28, align 1
  %1425 = icmp eq i32 %1411, 0
  %1426 = zext i1 %1425 to i8
  store i8 %1426, i8* %29, align 1
  %1427 = lshr i32 %1411, 31
  %1428 = trunc i32 %1427 to i8
  store i8 %1428, i8* %30, align 1
  %1429 = lshr i32 %1410, 31
  %1430 = xor i32 %1427, %1429
  %1431 = add nuw nsw i32 %1430, %1429
  %1432 = icmp eq i32 %1431, 2
  %1433 = zext i1 %1432 to i8
  store i8 %1433, i8* %31, align 1
  %1434 = add i64 %1406, -4
  %1435 = add i64 %1405, 20
  store i64 %1435, i64* %3, align 8
  %1436 = inttoptr i64 %1434 to i32*
  %1437 = load i32, i32* %1436, align 4
  %1438 = sext i32 %1437 to i64
  %1439 = mul nsw i64 %1438, 744
  store i64 %1439, i64* %RDX.i623, align 8
  %1440 = lshr i64 %1439, 63
  %1441 = add i64 %1439, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %1441, i64* %RSI.i575, align 8
  %1442 = icmp ult i64 %1441, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %1443 = icmp ult i64 %1441, %1439
  %1444 = or i1 %1442, %1443
  %1445 = zext i1 %1444 to i8
  store i8 %1445, i8* %26, align 1
  %1446 = trunc i64 %1441 to i32
  %1447 = and i32 %1446, 248
  %1448 = tail call i32 @llvm.ctpop.i32(i32 %1447)
  %1449 = trunc i32 %1448 to i8
  %1450 = and i8 %1449, 1
  %1451 = xor i8 %1450, 1
  store i8 %1451, i8* %27, align 1
  %1452 = xor i64 %1439, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %1453 = xor i64 %1452, %1441
  %1454 = lshr i64 %1453, 4
  %1455 = trunc i64 %1454 to i8
  %1456 = and i8 %1455, 1
  store i8 %1456, i8* %28, align 1
  %1457 = icmp eq i64 %1441, 0
  %1458 = zext i1 %1457 to i8
  store i8 %1458, i8* %29, align 1
  %1459 = lshr i64 %1441, 63
  %1460 = trunc i64 %1459 to i8
  store i8 %1460, i8* %30, align 1
  %1461 = xor i64 %1459, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %1462 = xor i64 %1459, %1440
  %1463 = add nuw nsw i64 %1461, %1462
  %1464 = icmp eq i64 %1463, 2
  %1465 = zext i1 %1464 to i8
  store i8 %1465, i8* %31, align 1
  %1466 = load i64, i64* %RBP.i, align 8
  %1467 = add i64 %1466, -4
  %1468 = add i64 %1405, 37
  store i64 %1468, i64* %3, align 8
  %1469 = inttoptr i64 %1467 to i32*
  %1470 = load i32, i32* %1469, align 4
  %1471 = sext i32 %1470 to i64
  %1472 = mul nsw i64 %1471, 744
  store i64 %1472, i64* %RDX.i623, align 8
  %1473 = lshr i64 %1472, 63
  %1474 = load i64, i64* %RAX.i633, align 8
  %1475 = add i64 %1472, %1474
  store i64 %1475, i64* %RAX.i633, align 8
  %1476 = icmp ult i64 %1475, %1474
  %1477 = icmp ult i64 %1475, %1472
  %1478 = or i1 %1476, %1477
  %1479 = zext i1 %1478 to i8
  store i8 %1479, i8* %26, align 1
  %1480 = trunc i64 %1475 to i32
  %1481 = and i32 %1480, 255
  %1482 = tail call i32 @llvm.ctpop.i32(i32 %1481)
  %1483 = trunc i32 %1482 to i8
  %1484 = and i8 %1483, 1
  %1485 = xor i8 %1484, 1
  store i8 %1485, i8* %27, align 1
  %1486 = xor i64 %1472, %1474
  %1487 = xor i64 %1486, %1475
  %1488 = lshr i64 %1487, 4
  %1489 = trunc i64 %1488 to i8
  %1490 = and i8 %1489, 1
  store i8 %1490, i8* %28, align 1
  %1491 = icmp eq i64 %1475, 0
  %1492 = zext i1 %1491 to i8
  store i8 %1492, i8* %29, align 1
  %1493 = lshr i64 %1475, 63
  %1494 = trunc i64 %1493 to i8
  store i8 %1494, i8* %30, align 1
  %1495 = lshr i64 %1474, 63
  %1496 = xor i64 %1493, %1495
  %1497 = xor i64 %1493, %1473
  %1498 = add nuw nsw i64 %1496, %1497
  %1499 = icmp eq i64 %1498, 2
  %1500 = zext i1 %1499 to i8
  store i8 %1500, i8* %31, align 1
  %1501 = add i64 %1475, 12
  %1502 = add i64 %1405, 51
  store i64 %1502, i64* %3, align 8
  %1503 = inttoptr i64 %1501 to i32*
  %1504 = load i32, i32* %1503, align 4
  %1505 = sext i32 %1504 to i64
  store i64 %1505, i64* %RAX.i633, align 8
  %1506 = load i64, i64* %RSI.i575, align 8
  %1507 = shl nsw i64 %1505, 2
  %1508 = add i64 %1506, 16
  %1509 = add i64 %1508, %1507
  %1510 = load i32, i32* %ECX.i23, align 4
  %1511 = add i64 %1405, 55
  store i64 %1511, i64* %3, align 8
  %1512 = inttoptr i64 %1509 to i32*
  store i32 %1510, i32* %1512, align 4
  %.pre24 = load i64, i64* %3, align 8
  br label %block_.L_40d61b

block_.L_40d61b:                                  ; preds = %block_40d5bd, %block_40d5e4
  %1513 = phi i64 [ %1405, %block_40d5bd ], [ %.pre24, %block_40d5e4 ]
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i633, align 8
  %1514 = load i64, i64* %RBP.i, align 8
  %1515 = add i64 %1514, -4
  %1516 = add i64 %1513, 14
  store i64 %1516, i64* %3, align 8
  %1517 = inttoptr i64 %1515 to i32*
  %1518 = load i32, i32* %1517, align 4
  %1519 = sext i32 %1518 to i64
  %1520 = mul nsw i64 %1519, 744
  store i64 %1520, i64* %RCX.i627, align 8
  %1521 = lshr i64 %1520, 63
  %1522 = add i64 %1520, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %1522, i64* %RAX.i633, align 8
  %1523 = icmp ult i64 %1522, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %1524 = icmp ult i64 %1522, %1520
  %1525 = or i1 %1523, %1524
  %1526 = zext i1 %1525 to i8
  store i8 %1526, i8* %26, align 1
  %1527 = trunc i64 %1522 to i32
  %1528 = and i32 %1527, 248
  %1529 = tail call i32 @llvm.ctpop.i32(i32 %1528)
  %1530 = trunc i32 %1529 to i8
  %1531 = and i8 %1530, 1
  %1532 = xor i8 %1531, 1
  store i8 %1532, i8* %27, align 1
  %1533 = xor i64 %1520, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %1534 = xor i64 %1533, %1522
  %1535 = lshr i64 %1534, 4
  %1536 = trunc i64 %1535 to i8
  %1537 = and i8 %1536, 1
  store i8 %1537, i8* %28, align 1
  %1538 = icmp eq i64 %1522, 0
  %1539 = zext i1 %1538 to i8
  store i8 %1539, i8* %29, align 1
  %1540 = lshr i64 %1522, 63
  %1541 = trunc i64 %1540 to i8
  store i8 %1541, i8* %30, align 1
  %1542 = xor i64 %1540, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %1543 = xor i64 %1540, %1521
  %1544 = add nuw nsw i64 %1542, %1543
  %1545 = icmp eq i64 %1544, 2
  %1546 = zext i1 %1545 to i8
  store i8 %1546, i8* %31, align 1
  %1547 = add i64 %1520, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 12)
  %1548 = add i64 %1513, 27
  store i64 %1548, i64* %3, align 8
  %1549 = inttoptr i64 %1547 to i32*
  %1550 = load i32, i32* %1549, align 4
  %1551 = add i32 %1550, 1
  %1552 = icmp eq i32 %1550, -1
  %1553 = icmp eq i32 %1551, 0
  %1554 = or i1 %1552, %1553
  %1555 = zext i1 %1554 to i8
  store i8 %1555, i8* %26, align 1
  %1556 = and i32 %1551, 255
  %1557 = tail call i32 @llvm.ctpop.i32(i32 %1556)
  %1558 = trunc i32 %1557 to i8
  %1559 = and i8 %1558, 1
  %1560 = xor i8 %1559, 1
  store i8 %1560, i8* %27, align 1
  %1561 = xor i32 %1551, %1550
  %1562 = lshr i32 %1561, 4
  %1563 = trunc i32 %1562 to i8
  %1564 = and i8 %1563, 1
  store i8 %1564, i8* %28, align 1
  %1565 = zext i1 %1553 to i8
  store i8 %1565, i8* %29, align 1
  %1566 = lshr i32 %1551, 31
  %1567 = trunc i32 %1566 to i8
  store i8 %1567, i8* %30, align 1
  %1568 = lshr i32 %1550, 31
  %1569 = xor i32 %1566, %1568
  %1570 = add nuw nsw i32 %1569, %1566
  %1571 = icmp eq i32 %1570, 2
  %1572 = zext i1 %1571 to i8
  store i8 %1572, i8* %31, align 1
  %1573 = add i64 %1513, 33
  store i64 %1573, i64* %3, align 8
  store i32 %1551, i32* %1549, align 4
  %1574 = load i64, i64* %3, align 8
  %1575 = load i32, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*), align 8
  %1576 = zext i32 %1575 to i64
  store i64 %1576, i64* %RDX.i623, align 8
  %1577 = load i64, i64* %RBP.i, align 8
  %1578 = add i64 %1577, -8
  %1579 = add i64 %1574, 10
  store i64 %1579, i64* %3, align 8
  %1580 = inttoptr i64 %1578 to i32*
  %1581 = load i32, i32* %1580, align 4
  %1582 = add i32 %1581, -20
  %1583 = zext i32 %1582 to i64
  store i64 %1583, i64* %RSI.i575, align 8
  %1584 = icmp ult i32 %1581, 20
  %1585 = zext i1 %1584 to i8
  store i8 %1585, i8* %26, align 1
  %1586 = and i32 %1582, 255
  %1587 = tail call i32 @llvm.ctpop.i32(i32 %1586)
  %1588 = trunc i32 %1587 to i8
  %1589 = and i8 %1588, 1
  %1590 = xor i8 %1589, 1
  store i8 %1590, i8* %27, align 1
  %1591 = xor i32 %1581, 16
  %1592 = xor i32 %1591, %1582
  %1593 = lshr i32 %1592, 4
  %1594 = trunc i32 %1593 to i8
  %1595 = and i8 %1594, 1
  store i8 %1595, i8* %28, align 1
  %1596 = icmp eq i32 %1582, 0
  %1597 = zext i1 %1596 to i8
  store i8 %1597, i8* %29, align 1
  %1598 = lshr i32 %1582, 31
  %1599 = trunc i32 %1598 to i8
  store i8 %1599, i8* %30, align 1
  %1600 = lshr i32 %1581, 31
  %1601 = xor i32 %1598, %1600
  %1602 = add nuw nsw i32 %1601, %1600
  %1603 = icmp eq i32 %1602, 2
  %1604 = zext i1 %1603 to i8
  store i8 %1604, i8* %31, align 1
  %1605 = sext i32 %1582 to i64
  store i64 %1605, i64* %RAX.i633, align 8
  %1606 = shl nsw i64 %1605, 2
  %1607 = add nsw i64 %1606, 11185584
  %1608 = add i64 %1574, 23
  store i64 %1608, i64* %3, align 8
  %1609 = inttoptr i64 %1607 to i32*
  store i32 %1575, i32* %1609, align 4
  %1610 = load i64, i64* %3, align 8
  %1611 = add i64 %1610, 5
  store i64 %1611, i64* %3, align 8
  %.pre25 = load i64, i64* %RBP.i, align 8
  br label %block_.L_40d658

block_.L_40d658:                                  ; preds = %block_.L_40d586, %block_.L_40d61b, %block_40d5a0
  %1612 = phi i64 [ %1611, %block_.L_40d61b ], [ %1344, %block_40d5a0 ], [ %1286, %block_.L_40d586 ]
  %1613 = phi i64 [ %.pre25, %block_.L_40d61b ], [ %1245, %block_40d5a0 ], [ %1245, %block_.L_40d586 ]
  %1614 = add i64 %1613, -8
  %1615 = add i64 %1612, 3
  store i64 %1615, i64* %3, align 8
  %1616 = inttoptr i64 %1614 to i32*
  %1617 = load i32, i32* %1616, align 4
  %1618 = add i32 %1617, 1
  %1619 = zext i32 %1618 to i64
  store i64 %1619, i64* %RAX.i633, align 8
  %1620 = icmp eq i32 %1617, -1
  %1621 = icmp eq i32 %1618, 0
  %1622 = or i1 %1620, %1621
  %1623 = zext i1 %1622 to i8
  store i8 %1623, i8* %26, align 1
  %1624 = and i32 %1618, 255
  %1625 = tail call i32 @llvm.ctpop.i32(i32 %1624)
  %1626 = trunc i32 %1625 to i8
  %1627 = and i8 %1626, 1
  %1628 = xor i8 %1627, 1
  store i8 %1628, i8* %27, align 1
  %1629 = xor i32 %1618, %1617
  %1630 = lshr i32 %1629, 4
  %1631 = trunc i32 %1630 to i8
  %1632 = and i8 %1631, 1
  store i8 %1632, i8* %28, align 1
  %1633 = zext i1 %1621 to i8
  store i8 %1633, i8* %29, align 1
  %1634 = lshr i32 %1618, 31
  %1635 = trunc i32 %1634 to i8
  store i8 %1635, i8* %30, align 1
  %1636 = lshr i32 %1617, 31
  %1637 = xor i32 %1634, %1636
  %1638 = add nuw nsw i32 %1637, %1634
  %1639 = icmp eq i32 %1638, 2
  %1640 = zext i1 %1639 to i8
  store i8 %1640, i8* %31, align 1
  %1641 = sext i32 %1618 to i64
  store i64 %1641, i64* %RCX.i627, align 8
  %1642 = add nsw i64 %1641, 12099168
  %1643 = add i64 %1612, 17
  store i64 %1643, i64* %3, align 8
  %1644 = inttoptr i64 %1642 to i8*
  %1645 = load i8, i8* %1644, align 1
  %1646 = zext i8 %1645 to i64
  store i64 %1646, i64* %RAX.i633, align 8
  %1647 = zext i8 %1645 to i32
  store i8 0, i8* %26, align 1
  %1648 = tail call i32 @llvm.ctpop.i32(i32 %1647)
  %1649 = trunc i32 %1648 to i8
  %1650 = and i8 %1649, 1
  %1651 = xor i8 %1650, 1
  store i8 %1651, i8* %27, align 1
  store i8 0, i8* %28, align 1
  %1652 = icmp eq i8 %1645, 0
  %1653 = zext i1 %1652 to i8
  store i8 %1653, i8* %29, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %31, align 1
  %.v31 = select i1 %1652, i64 26, i64 210
  %1654 = add i64 %1612, %.v31
  store i64 %1654, i64* %3, align 8
  br i1 %1652, label %block_40d672, label %block_.L_40d72a

block_40d672:                                     ; preds = %block_.L_40d658
  %1655 = add i64 %1654, 3
  store i64 %1655, i64* %3, align 8
  %1656 = load i32, i32* %1616, align 4
  %1657 = add i32 %1656, 1
  %1658 = zext i32 %1657 to i64
  store i64 %1658, i64* %RAX.i633, align 8
  %1659 = icmp eq i32 %1656, -1
  %1660 = icmp eq i32 %1657, 0
  %1661 = or i1 %1659, %1660
  %1662 = zext i1 %1661 to i8
  store i8 %1662, i8* %26, align 1
  %1663 = and i32 %1657, 255
  %1664 = tail call i32 @llvm.ctpop.i32(i32 %1663)
  %1665 = trunc i32 %1664 to i8
  %1666 = and i8 %1665, 1
  %1667 = xor i8 %1666, 1
  store i8 %1667, i8* %27, align 1
  %1668 = xor i32 %1657, %1656
  %1669 = lshr i32 %1668, 4
  %1670 = trunc i32 %1669 to i8
  %1671 = and i8 %1670, 1
  store i8 %1671, i8* %28, align 1
  %1672 = zext i1 %1660 to i8
  store i8 %1672, i8* %29, align 1
  %1673 = lshr i32 %1657, 31
  %1674 = trunc i32 %1673 to i8
  store i8 %1674, i8* %30, align 1
  %1675 = lshr i32 %1656, 31
  %1676 = xor i32 %1673, %1675
  %1677 = add nuw nsw i32 %1676, %1673
  %1678 = icmp eq i32 %1677, 2
  %1679 = zext i1 %1678 to i8
  store i8 %1679, i8* %31, align 1
  %1680 = sext i32 %1657 to i64
  store i64 %1680, i64* %RCX.i627, align 8
  %1681 = shl nsw i64 %1680, 2
  %1682 = add nsw i64 %1681, 11185584
  %1683 = add i64 %1654, 16
  store i64 %1683, i64* %3, align 8
  %1684 = inttoptr i64 %1682 to i32*
  %1685 = load i32, i32* %1684, align 4
  %1686 = zext i32 %1685 to i64
  store i64 %1686, i64* %RAX.i633, align 8
  %1687 = load i32, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*), align 8
  %1688 = sub i32 %1685, %1687
  %1689 = icmp ult i32 %1685, %1687
  %1690 = zext i1 %1689 to i8
  store i8 %1690, i8* %26, align 1
  %1691 = and i32 %1688, 255
  %1692 = tail call i32 @llvm.ctpop.i32(i32 %1691)
  %1693 = trunc i32 %1692 to i8
  %1694 = and i8 %1693, 1
  %1695 = xor i8 %1694, 1
  store i8 %1695, i8* %27, align 1
  %1696 = xor i32 %1687, %1685
  %1697 = xor i32 %1696, %1688
  %1698 = lshr i32 %1697, 4
  %1699 = trunc i32 %1698 to i8
  %1700 = and i8 %1699, 1
  store i8 %1700, i8* %28, align 1
  %1701 = icmp eq i32 %1688, 0
  %1702 = zext i1 %1701 to i8
  store i8 %1702, i8* %29, align 1
  %1703 = lshr i32 %1688, 31
  %1704 = trunc i32 %1703 to i8
  store i8 %1704, i8* %30, align 1
  %1705 = lshr i32 %1685, 31
  %1706 = lshr i32 %1687, 31
  %1707 = xor i32 %1706, %1705
  %1708 = xor i32 %1703, %1705
  %1709 = add nuw nsw i32 %1708, %1707
  %1710 = icmp eq i32 %1709, 2
  %1711 = zext i1 %1710 to i8
  store i8 %1711, i8* %31, align 1
  %.v33 = select i1 %1701, i64 184, i64 29
  %1712 = add i64 %1654, %.v33
  store i64 %1712, i64* %3, align 8
  br i1 %1701, label %block_.L_40d72a, label %block_40d68f

block_40d68f:                                     ; preds = %block_40d672
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i633, align 8
  %1713 = add i64 %1613, -4
  %1714 = add i64 %1712, 19
  store i64 %1714, i64* %3, align 8
  %1715 = inttoptr i64 %1713 to i32*
  %1716 = load i32, i32* %1715, align 4
  %1717 = sext i32 %1716 to i64
  %1718 = mul nsw i64 %1717, 744
  store i64 %1718, i64* %RCX.i627, align 8
  %1719 = lshr i64 %1718, 63
  %1720 = add i64 %1718, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %1720, i64* %RAX.i633, align 8
  %1721 = icmp ult i64 %1720, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %1722 = icmp ult i64 %1720, %1718
  %1723 = or i1 %1721, %1722
  %1724 = zext i1 %1723 to i8
  store i8 %1724, i8* %26, align 1
  %1725 = trunc i64 %1720 to i32
  %1726 = and i32 %1725, 248
  %1727 = tail call i32 @llvm.ctpop.i32(i32 %1726)
  %1728 = trunc i32 %1727 to i8
  %1729 = and i8 %1728, 1
  %1730 = xor i8 %1729, 1
  store i8 %1730, i8* %27, align 1
  %1731 = xor i64 %1718, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %1732 = xor i64 %1731, %1720
  %1733 = lshr i64 %1732, 4
  %1734 = trunc i64 %1733 to i8
  %1735 = and i8 %1734, 1
  store i8 %1735, i8* %28, align 1
  %1736 = icmp eq i64 %1720, 0
  %1737 = zext i1 %1736 to i8
  store i8 %1737, i8* %29, align 1
  %1738 = lshr i64 %1720, 63
  %1739 = trunc i64 %1738 to i8
  store i8 %1739, i8* %30, align 1
  %1740 = xor i64 %1738, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %1741 = xor i64 %1738, %1719
  %1742 = add nuw nsw i64 %1740, %1741
  %1743 = icmp eq i64 %1742, 2
  %1744 = zext i1 %1743 to i8
  store i8 %1744, i8* %31, align 1
  %1745 = add i64 %1718, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 12)
  %1746 = add i64 %1712, 33
  store i64 %1746, i64* %3, align 8
  %1747 = inttoptr i64 %1745 to i32*
  %1748 = load i32, i32* %1747, align 4
  %1749 = add i32 %1748, -20
  %1750 = icmp ult i32 %1748, 20
  %1751 = zext i1 %1750 to i8
  store i8 %1751, i8* %26, align 1
  %1752 = and i32 %1749, 255
  %1753 = tail call i32 @llvm.ctpop.i32(i32 %1752)
  %1754 = trunc i32 %1753 to i8
  %1755 = and i8 %1754, 1
  %1756 = xor i8 %1755, 1
  store i8 %1756, i8* %27, align 1
  %1757 = xor i32 %1748, 16
  %1758 = xor i32 %1757, %1749
  %1759 = lshr i32 %1758, 4
  %1760 = trunc i32 %1759 to i8
  %1761 = and i8 %1760, 1
  store i8 %1761, i8* %28, align 1
  %1762 = icmp eq i32 %1749, 0
  %1763 = zext i1 %1762 to i8
  store i8 %1763, i8* %29, align 1
  %1764 = lshr i32 %1749, 31
  %1765 = trunc i32 %1764 to i8
  store i8 %1765, i8* %30, align 1
  %1766 = lshr i32 %1748, 31
  %1767 = xor i32 %1764, %1766
  %1768 = add nuw nsw i32 %1767, %1766
  %1769 = icmp eq i32 %1768, 2
  %1770 = zext i1 %1769 to i8
  store i8 %1770, i8* %31, align 1
  %1771 = icmp ne i8 %1765, 0
  %1772 = xor i1 %1771, %1769
  %.v34 = select i1 %1772, i64 39, i64 94
  %1773 = add i64 %1712, %.v34
  store i64 %1773, i64* %3, align 8
  br i1 %1772, label %block_40d6b6, label %block_.L_40d6ed

block_40d6b6:                                     ; preds = %block_40d68f
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i633, align 8
  %1774 = load i64, i64* %RBP.i, align 8
  %1775 = add i64 %1774, -8
  %1776 = add i64 %1773, 13
  store i64 %1776, i64* %3, align 8
  %1777 = inttoptr i64 %1775 to i32*
  %1778 = load i32, i32* %1777, align 4
  %1779 = add i32 %1778, 1
  %1780 = zext i32 %1779 to i64
  store i64 %1780, i64* %RCX.i627, align 8
  %1781 = icmp eq i32 %1778, -1
  %1782 = icmp eq i32 %1779, 0
  %1783 = or i1 %1781, %1782
  %1784 = zext i1 %1783 to i8
  store i8 %1784, i8* %26, align 1
  %1785 = and i32 %1779, 255
  %1786 = tail call i32 @llvm.ctpop.i32(i32 %1785)
  %1787 = trunc i32 %1786 to i8
  %1788 = and i8 %1787, 1
  %1789 = xor i8 %1788, 1
  store i8 %1789, i8* %27, align 1
  %1790 = xor i32 %1779, %1778
  %1791 = lshr i32 %1790, 4
  %1792 = trunc i32 %1791 to i8
  %1793 = and i8 %1792, 1
  store i8 %1793, i8* %28, align 1
  %1794 = zext i1 %1782 to i8
  store i8 %1794, i8* %29, align 1
  %1795 = lshr i32 %1779, 31
  %1796 = trunc i32 %1795 to i8
  store i8 %1796, i8* %30, align 1
  %1797 = lshr i32 %1778, 31
  %1798 = xor i32 %1795, %1797
  %1799 = add nuw nsw i32 %1798, %1795
  %1800 = icmp eq i32 %1799, 2
  %1801 = zext i1 %1800 to i8
  store i8 %1801, i8* %31, align 1
  %1802 = add i64 %1774, -4
  %1803 = add i64 %1773, 20
  store i64 %1803, i64* %3, align 8
  %1804 = inttoptr i64 %1802 to i32*
  %1805 = load i32, i32* %1804, align 4
  %1806 = sext i32 %1805 to i64
  %1807 = mul nsw i64 %1806, 744
  store i64 %1807, i64* %RDX.i623, align 8
  %1808 = lshr i64 %1807, 63
  %1809 = add i64 %1807, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %1809, i64* %RSI.i575, align 8
  %1810 = icmp ult i64 %1809, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %1811 = icmp ult i64 %1809, %1807
  %1812 = or i1 %1810, %1811
  %1813 = zext i1 %1812 to i8
  store i8 %1813, i8* %26, align 1
  %1814 = trunc i64 %1809 to i32
  %1815 = and i32 %1814, 248
  %1816 = tail call i32 @llvm.ctpop.i32(i32 %1815)
  %1817 = trunc i32 %1816 to i8
  %1818 = and i8 %1817, 1
  %1819 = xor i8 %1818, 1
  store i8 %1819, i8* %27, align 1
  %1820 = xor i64 %1807, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %1821 = xor i64 %1820, %1809
  %1822 = lshr i64 %1821, 4
  %1823 = trunc i64 %1822 to i8
  %1824 = and i8 %1823, 1
  store i8 %1824, i8* %28, align 1
  %1825 = icmp eq i64 %1809, 0
  %1826 = zext i1 %1825 to i8
  store i8 %1826, i8* %29, align 1
  %1827 = lshr i64 %1809, 63
  %1828 = trunc i64 %1827 to i8
  store i8 %1828, i8* %30, align 1
  %1829 = xor i64 %1827, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %1830 = xor i64 %1827, %1808
  %1831 = add nuw nsw i64 %1829, %1830
  %1832 = icmp eq i64 %1831, 2
  %1833 = zext i1 %1832 to i8
  store i8 %1833, i8* %31, align 1
  %1834 = load i64, i64* %RBP.i, align 8
  %1835 = add i64 %1834, -4
  %1836 = add i64 %1773, 37
  store i64 %1836, i64* %3, align 8
  %1837 = inttoptr i64 %1835 to i32*
  %1838 = load i32, i32* %1837, align 4
  %1839 = sext i32 %1838 to i64
  %1840 = mul nsw i64 %1839, 744
  store i64 %1840, i64* %RDX.i623, align 8
  %1841 = lshr i64 %1840, 63
  %1842 = load i64, i64* %RAX.i633, align 8
  %1843 = add i64 %1840, %1842
  store i64 %1843, i64* %RAX.i633, align 8
  %1844 = icmp ult i64 %1843, %1842
  %1845 = icmp ult i64 %1843, %1840
  %1846 = or i1 %1844, %1845
  %1847 = zext i1 %1846 to i8
  store i8 %1847, i8* %26, align 1
  %1848 = trunc i64 %1843 to i32
  %1849 = and i32 %1848, 255
  %1850 = tail call i32 @llvm.ctpop.i32(i32 %1849)
  %1851 = trunc i32 %1850 to i8
  %1852 = and i8 %1851, 1
  %1853 = xor i8 %1852, 1
  store i8 %1853, i8* %27, align 1
  %1854 = xor i64 %1840, %1842
  %1855 = xor i64 %1854, %1843
  %1856 = lshr i64 %1855, 4
  %1857 = trunc i64 %1856 to i8
  %1858 = and i8 %1857, 1
  store i8 %1858, i8* %28, align 1
  %1859 = icmp eq i64 %1843, 0
  %1860 = zext i1 %1859 to i8
  store i8 %1860, i8* %29, align 1
  %1861 = lshr i64 %1843, 63
  %1862 = trunc i64 %1861 to i8
  store i8 %1862, i8* %30, align 1
  %1863 = lshr i64 %1842, 63
  %1864 = xor i64 %1861, %1863
  %1865 = xor i64 %1861, %1841
  %1866 = add nuw nsw i64 %1864, %1865
  %1867 = icmp eq i64 %1866, 2
  %1868 = zext i1 %1867 to i8
  store i8 %1868, i8* %31, align 1
  %1869 = add i64 %1843, 12
  %1870 = add i64 %1773, 51
  store i64 %1870, i64* %3, align 8
  %1871 = inttoptr i64 %1869 to i32*
  %1872 = load i32, i32* %1871, align 4
  %1873 = sext i32 %1872 to i64
  store i64 %1873, i64* %RAX.i633, align 8
  %1874 = load i64, i64* %RSI.i575, align 8
  %1875 = shl nsw i64 %1873, 2
  %1876 = add i64 %1874, 16
  %1877 = add i64 %1876, %1875
  %1878 = load i32, i32* %ECX.i23, align 4
  %1879 = add i64 %1773, 55
  store i64 %1879, i64* %3, align 8
  %1880 = inttoptr i64 %1877 to i32*
  store i32 %1878, i32* %1880, align 4
  %.pre26 = load i64, i64* %3, align 8
  br label %block_.L_40d6ed

block_.L_40d6ed:                                  ; preds = %block_40d68f, %block_40d6b6
  %1881 = phi i64 [ %1773, %block_40d68f ], [ %.pre26, %block_40d6b6 ]
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i633, align 8
  %1882 = load i64, i64* %RBP.i, align 8
  %1883 = add i64 %1882, -4
  %1884 = add i64 %1881, 14
  store i64 %1884, i64* %3, align 8
  %1885 = inttoptr i64 %1883 to i32*
  %1886 = load i32, i32* %1885, align 4
  %1887 = sext i32 %1886 to i64
  %1888 = mul nsw i64 %1887, 744
  store i64 %1888, i64* %RCX.i627, align 8
  %1889 = lshr i64 %1888, 63
  %1890 = add i64 %1888, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %1890, i64* %RAX.i633, align 8
  %1891 = icmp ult i64 %1890, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %1892 = icmp ult i64 %1890, %1888
  %1893 = or i1 %1891, %1892
  %1894 = zext i1 %1893 to i8
  store i8 %1894, i8* %26, align 1
  %1895 = trunc i64 %1890 to i32
  %1896 = and i32 %1895, 248
  %1897 = tail call i32 @llvm.ctpop.i32(i32 %1896)
  %1898 = trunc i32 %1897 to i8
  %1899 = and i8 %1898, 1
  %1900 = xor i8 %1899, 1
  store i8 %1900, i8* %27, align 1
  %1901 = xor i64 %1888, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %1902 = xor i64 %1901, %1890
  %1903 = lshr i64 %1902, 4
  %1904 = trunc i64 %1903 to i8
  %1905 = and i8 %1904, 1
  store i8 %1905, i8* %28, align 1
  %1906 = icmp eq i64 %1890, 0
  %1907 = zext i1 %1906 to i8
  store i8 %1907, i8* %29, align 1
  %1908 = lshr i64 %1890, 63
  %1909 = trunc i64 %1908 to i8
  store i8 %1909, i8* %30, align 1
  %1910 = xor i64 %1908, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %1911 = xor i64 %1908, %1889
  %1912 = add nuw nsw i64 %1910, %1911
  %1913 = icmp eq i64 %1912, 2
  %1914 = zext i1 %1913 to i8
  store i8 %1914, i8* %31, align 1
  %1915 = add i64 %1888, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 12)
  %1916 = add i64 %1881, 27
  store i64 %1916, i64* %3, align 8
  %1917 = inttoptr i64 %1915 to i32*
  %1918 = load i32, i32* %1917, align 4
  %1919 = add i32 %1918, 1
  %1920 = icmp eq i32 %1918, -1
  %1921 = icmp eq i32 %1919, 0
  %1922 = or i1 %1920, %1921
  %1923 = zext i1 %1922 to i8
  store i8 %1923, i8* %26, align 1
  %1924 = and i32 %1919, 255
  %1925 = tail call i32 @llvm.ctpop.i32(i32 %1924)
  %1926 = trunc i32 %1925 to i8
  %1927 = and i8 %1926, 1
  %1928 = xor i8 %1927, 1
  store i8 %1928, i8* %27, align 1
  %1929 = xor i32 %1919, %1918
  %1930 = lshr i32 %1929, 4
  %1931 = trunc i32 %1930 to i8
  %1932 = and i8 %1931, 1
  store i8 %1932, i8* %28, align 1
  %1933 = zext i1 %1921 to i8
  store i8 %1933, i8* %29, align 1
  %1934 = lshr i32 %1919, 31
  %1935 = trunc i32 %1934 to i8
  store i8 %1935, i8* %30, align 1
  %1936 = lshr i32 %1918, 31
  %1937 = xor i32 %1934, %1936
  %1938 = add nuw nsw i32 %1937, %1934
  %1939 = icmp eq i32 %1938, 2
  %1940 = zext i1 %1939 to i8
  store i8 %1940, i8* %31, align 1
  %1941 = add i64 %1881, 33
  store i64 %1941, i64* %3, align 8
  store i32 %1919, i32* %1917, align 4
  %1942 = load i64, i64* %3, align 8
  %1943 = load i32, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*), align 8
  %1944 = zext i32 %1943 to i64
  store i64 %1944, i64* %RDX.i623, align 8
  %1945 = load i64, i64* %RBP.i, align 8
  %1946 = add i64 %1945, -8
  %1947 = add i64 %1942, 10
  store i64 %1947, i64* %3, align 8
  %1948 = inttoptr i64 %1946 to i32*
  %1949 = load i32, i32* %1948, align 4
  %1950 = add i32 %1949, 1
  %1951 = zext i32 %1950 to i64
  store i64 %1951, i64* %RSI.i575, align 8
  %1952 = icmp eq i32 %1949, -1
  %1953 = icmp eq i32 %1950, 0
  %1954 = or i1 %1952, %1953
  %1955 = zext i1 %1954 to i8
  store i8 %1955, i8* %26, align 1
  %1956 = and i32 %1950, 255
  %1957 = tail call i32 @llvm.ctpop.i32(i32 %1956)
  %1958 = trunc i32 %1957 to i8
  %1959 = and i8 %1958, 1
  %1960 = xor i8 %1959, 1
  store i8 %1960, i8* %27, align 1
  %1961 = xor i32 %1950, %1949
  %1962 = lshr i32 %1961, 4
  %1963 = trunc i32 %1962 to i8
  %1964 = and i8 %1963, 1
  store i8 %1964, i8* %28, align 1
  %1965 = zext i1 %1953 to i8
  store i8 %1965, i8* %29, align 1
  %1966 = lshr i32 %1950, 31
  %1967 = trunc i32 %1966 to i8
  store i8 %1967, i8* %30, align 1
  %1968 = lshr i32 %1949, 31
  %1969 = xor i32 %1966, %1968
  %1970 = add nuw nsw i32 %1969, %1966
  %1971 = icmp eq i32 %1970, 2
  %1972 = zext i1 %1971 to i8
  store i8 %1972, i8* %31, align 1
  %1973 = sext i32 %1950 to i64
  store i64 %1973, i64* %RAX.i633, align 8
  %1974 = shl nsw i64 %1973, 2
  %1975 = add nsw i64 %1974, 11185584
  %1976 = add i64 %1942, 23
  store i64 %1976, i64* %3, align 8
  %1977 = inttoptr i64 %1975 to i32*
  store i32 %1943, i32* %1977, align 4
  %1978 = load i64, i64* %3, align 8
  %1979 = add i64 %1978, 5
  store i64 %1979, i64* %3, align 8
  %.pre27 = load i64, i64* %RBP.i, align 8
  br label %block_.L_40d72a

block_.L_40d72a:                                  ; preds = %block_.L_40d658, %block_.L_40d6ed, %block_40d672
  %1980 = phi i64 [ %1979, %block_.L_40d6ed ], [ %1712, %block_40d672 ], [ %1654, %block_.L_40d658 ]
  %1981 = phi i64 [ %.pre27, %block_.L_40d6ed ], [ %1613, %block_40d672 ], [ %1613, %block_.L_40d658 ]
  %1982 = add i64 %1981, -8
  %1983 = add i64 %1980, 4
  store i64 %1983, i64* %3, align 8
  %1984 = inttoptr i64 %1982 to i32*
  %1985 = load i32, i32* %1984, align 4
  %1986 = sext i32 %1985 to i64
  store i64 %1986, i64* %RAX.i633, align 8
  %1987 = shl nsw i64 %1986, 2
  %1988 = add nsw i64 %1987, 11188784
  %1989 = add i64 %1980, 11
  store i64 %1989, i64* %3, align 8
  %1990 = inttoptr i64 %1988 to i32*
  %1991 = load i32, i32* %1990, align 4
  %1992 = zext i32 %1991 to i64
  store i64 %1992, i64* %RCX.i627, align 8
  %1993 = add i64 %1980, 14
  store i64 %1993, i64* %3, align 8
  store i32 %1991, i32* %1984, align 4
  %1994 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i633, align 8
  %1995 = load i64, i64* %RBP.i, align 8
  %1996 = add i64 %1995, -8
  %1997 = add i64 %1994, 13
  store i64 %1997, i64* %3, align 8
  %1998 = inttoptr i64 %1996 to i32*
  %1999 = load i32, i32* %1998, align 4
  %2000 = zext i32 %1999 to i64
  store i64 %2000, i64* %RCX.i627, align 8
  %2001 = add i64 %1995, -4
  %2002 = add i64 %1994, 17
  store i64 %2002, i64* %3, align 8
  %2003 = inttoptr i64 %2001 to i32*
  %2004 = load i32, i32* %2003, align 4
  %2005 = sext i32 %2004 to i64
  %2006 = mul nsw i64 %2005, 744
  store i64 %2006, i64* %RDX.i623, align 8
  %2007 = lshr i64 %2006, 63
  %2008 = add i64 %2006, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %2008, i64* %RAX.i633, align 8
  %2009 = icmp ult i64 %2008, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %2010 = icmp ult i64 %2008, %2006
  %2011 = or i1 %2009, %2010
  %2012 = zext i1 %2011 to i8
  store i8 %2012, i8* %26, align 1
  %2013 = trunc i64 %2008 to i32
  %2014 = and i32 %2013, 248
  %2015 = tail call i32 @llvm.ctpop.i32(i32 %2014)
  %2016 = trunc i32 %2015 to i8
  %2017 = and i8 %2016, 1
  %2018 = xor i8 %2017, 1
  store i8 %2018, i8* %27, align 1
  %2019 = xor i64 %2006, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %2020 = xor i64 %2019, %2008
  %2021 = lshr i64 %2020, 4
  %2022 = trunc i64 %2021 to i8
  %2023 = and i8 %2022, 1
  store i8 %2023, i8* %28, align 1
  %2024 = icmp eq i64 %2008, 0
  %2025 = zext i1 %2024 to i8
  store i8 %2025, i8* %29, align 1
  %2026 = lshr i64 %2008, 63
  %2027 = trunc i64 %2026 to i8
  store i8 %2027, i8* %30, align 1
  %2028 = xor i64 %2026, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %2029 = xor i64 %2026, %2007
  %2030 = add nuw nsw i64 %2028, %2029
  %2031 = icmp eq i64 %2030, 2
  %2032 = zext i1 %2031 to i8
  store i8 %2032, i8* %31, align 1
  %2033 = add i64 %2006, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 8)
  %2034 = add i64 %1994, 30
  store i64 %2034, i64* %3, align 8
  %2035 = inttoptr i64 %2033 to i32*
  %2036 = load i32, i32* %2035, align 8
  %2037 = icmp eq i32 %1999, %2036
  %2038 = zext i1 %2037 to i8
  %2039 = xor i8 %2038, -1
  store i8 %2039, i8* %SIL.i9, align 1
  %2040 = and i8 %2039, 1
  store i8 0, i8* %26, align 1
  %2041 = zext i8 %2040 to i32
  %2042 = tail call i32 @llvm.ctpop.i32(i32 %2041)
  %2043 = trunc i32 %2042 to i8
  %2044 = xor i8 %2043, 1
  store i8 %2044, i8* %27, align 1
  %2045 = xor i8 %2040, 1
  store i8 %2045, i8* %29, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %31, align 1
  store i8 0, i8* %28, align 1
  %2046 = icmp eq i8 %2045, 0
  %.v32 = select i1 %2046, i64 -854, i64 48
  %2047 = add i64 %1994, %.v32
  store i64 %2047, i64* %3, align 8
  br i1 %2046, label %block_.L_40d3e2, label %block_40d768

block_40d768:                                     ; preds = %block_.L_40d72a
  %2048 = add i64 %2047, 1
  store i64 %2048, i64* %3, align 8
  %2049 = load i64, i64* %6, align 8
  %2050 = add i64 %2049, 8
  %2051 = inttoptr i64 %2049 to i64*
  %2052 = load i64, i64* %2051, align 8
  store i64 %2052, i64* %RBP.i, align 8
  store i64 %2050, i64* %6, align 8
  %2053 = add i64 %2047, 2
  store i64 %2053, i64* %3, align 8
  %2054 = inttoptr i64 %2050 to i64*
  %2055 = load i64, i64* %2054, align 8
  store i64 %2055, i64* %3, align 8
  %2056 = add i64 %2049, 16
  store i64 %2056, i64* %6, align 8
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
define %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX, align 8
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
define %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
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
define %struct.Memory* @routine_imulq__0x2e8___rcx___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 744
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RCX, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i128 %10 to i32
  %17 = and i32 %16, 248
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0xc___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 12
  store i64 %6, i64* %RDX, align 8
  %7 = icmp ugt i64 %3, -13
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
  %17 = xor i64 %6, %3
  %18 = lshr i64 %17, 4
  %19 = trunc i64 %18 to i8
  %20 = and i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %20, i8* %21, align 1
  %22 = icmp eq i64 %6, 0
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %23, i8* %24, align 1
  %25 = lshr i64 %6, 63
  %26 = trunc i64 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = lshr i64 %3, 63
  %29 = xor i64 %25, %28
  %30 = add nuw nsw i64 %29, %25
  %31 = icmp eq i64 %30, 2
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %32, i8* %33, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0xa0e710___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0xa0e710_type* @G_0xa0e710 to i64*), align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx____rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = bitcast i64* %RCX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %4, align 8
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
define %struct.Memory* @routine_movq_0xa0e710___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0xa0e710_type* @G_0xa0e710 to i64*), align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x10___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 16
  store i64 %6, i64* %RCX, align 8
  %7 = icmp ugt i64 %3, -17
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
define %struct.Memory* @routine_movq__rcx__0xa0e710(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 8
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* bitcast (%G_0xa0e710_type* @G_0xa0e710 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edi__0x8__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 8
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
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
define %struct.Memory* @routine_movb__al___cl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %4 to i8*
  %5 = load i8, i8* %AL, align 1
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i8 %5, i8* %CL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0xa7f430___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
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
define %struct.Memory* @routine_movslq_MINUS0x4__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
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
define %struct.Memory* @routine_imulq__0x2e8___rsi___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 744
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RSI, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i128 %10 to i32
  %17 = and i32 %16, 248
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
define %struct.Memory* @routine_addq__rsi___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RSI, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0xc__rdx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RDX, align 8
  %6 = add i64 %5, 12
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
define %struct.Memory* @routine_movb__cl__MINUS0xd__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -13
  %6 = load i8, i8* %CL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_40d318(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x14__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %9 = add i32 %8, -20
  %10 = icmp ult i32 %8, 20
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
  %19 = xor i32 %8, 16
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
  %31 = lshr i32 %8, 31
  %32 = xor i32 %28, %31
  %33 = add nuw nsw i32 %32, %31
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_setl__al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %7 = load i8, i8* %6, align 1
  %8 = icmp ne i8 %7, 0
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %10 = load i8, i8* %9, align 1
  %11 = icmp ne i8 %10, 0
  %12 = xor i1 %8, %11
  %13 = zext i1 %12 to i8
  store i8 %13, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__al__MINUS0xd__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -13
  %6 = load i8, i8* %AL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb_MINUS0xd__rbp____al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -13
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_testb__0x1___al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = load i8, i8* %AL, align 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = and i8 %4, 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = zext i8 %7 to i32
  %10 = tail call i32 @llvm.ctpop.i32(i32 %9)
  %11 = trunc i32 %10 to i8
  %12 = xor i8 %11, 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %12, i8* %13, align 1
  %14 = xor i8 %7, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %14, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %17, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_40d328(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_40d39b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x10___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 16
  store i64 %6, i64* %RDX, align 8
  %7 = icmp ugt i64 %3, -17
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
define %struct.Memory* @routine_shlq__0x2___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 2
  store i64 %6, i64* %RCX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 62
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 252
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
  %23 = lshr i64 %3, 61
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x10__rax__rcx_4____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, 16
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__0x8__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
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
define %struct.Memory* @routine_movl__eax__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40d2e3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0xc__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x99da04___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RSI, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__0x99da04(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ESI, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x8__rax____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
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
define %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
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
define %struct.Memory* @routine_addl__0x14___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 20
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ugt i32 %6, -21
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
  %32 = add nuw nsw i32 %31, %27
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq__eax___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 12099168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
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
define %struct.Memory* @routine_jne_.L_40d4b4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0xaaadb0___rcx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 11185584
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0x99da04___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*), align 8
  %8 = sub i32 %4, %7
  %9 = icmp ult i32 %4, %7
  %10 = zext i1 %9 to i8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %10, i8* %11, align 1
  %12 = and i32 %8, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = xor i32 %7, %4
  %19 = xor i32 %18, %8
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
  %30 = lshr i32 %4, 31
  %31 = lshr i32 %7, 31
  %32 = xor i32 %31, %30
  %33 = xor i32 %27, %30
  %34 = add nuw nsw i32 %33, %32
  %35 = icmp eq i32 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_40d4b4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_40d41e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x14__0xc__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -20
  %10 = icmp ult i32 %8, 20
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
  %19 = xor i32 %8, 16
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
  %31 = lshr i32 %8, 31
  %32 = xor i32 %28, %31
  %33 = add nuw nsw i32 %32, %31
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_40d477(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addl__0x14___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 20
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  %9 = icmp ugt i32 %6, -21
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
  %32 = add nuw nsw i32 %31, %27
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
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
define %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 744
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RDX, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i128 %10 to i32
  %17 = and i32 %16, 248
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rdx___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %RSI, align 8
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
define %struct.Memory* @routine_addq__rdx___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RDX, align 8
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
define %struct.Memory* @routine_movslq_0xc__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 12
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
define %struct.Memory* @routine_movl__ecx__0x10__rsi__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RSI, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, 16
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
define %struct.Memory* @routine_movl_0xc__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 12
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
define %struct.Memory* @routine_movl__edx__0xc__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 12
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x99da04___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RDX, align 8
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
define %struct.Memory* @routine_addl__0x14___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 20
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RSI, align 8
  %9 = icmp ugt i32 %6, -21
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
  %32 = add nuw nsw i32 %31, %27
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq__esi___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %ESI, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__0xaaadb0___rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 11185584
  %7 = load i32, i32* %EDX, align 4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %6 to i32*
  store i32 %7, i32* %10, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40d4b4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x1___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp eq i32 %6, 0
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
define %struct.Memory* @routine_jne_.L_40d586(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_40d586(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_40d4f0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_40d549(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_subl__0x1___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %9 = icmp eq i32 %6, 0
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x1___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RSI, align 8
  %9 = icmp eq i32 %6, 0
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
define %struct.Memory* @routine_jmpq_.L_40d586(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x14___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -20
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ult i32 %6, 20
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
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_40d658(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_40d658(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_40d5c2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_40d61b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_subl__0x14___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -20
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  %9 = icmp ult i32 %6, 20
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
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x14___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -20
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RSI, align 8
  %9 = icmp ult i32 %6, 20
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
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40d658(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_40d72a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_40d72a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_40d694(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_40d6ed(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_40d72a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x8__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
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
define %struct.Memory* @routine_movl_0xaaba30___rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 11188784
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0x8__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %5, 8
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
define %struct.Memory* @routine_sete__sil(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SIL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  store i8 %7, i8* %SIL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_xorb__0xff___sil(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SIL = bitcast %union.anon* %3 to i8*
  %4 = load i8, i8* %SIL, align 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = xor i8 %4, -1
  store i8 %7, i8* %SIL, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = zext i8 %7 to i32
  %10 = tail call i32 @llvm.ctpop.i32(i32 %9)
  %11 = trunc i32 %10 to i8
  %12 = and i8 %11, 1
  %13 = xor i8 %12, 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %13, i8* %14, align 1
  %15 = icmp eq i8 %4, -1
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %16, i8* %17, align 1
  %18 = lshr i8 %7, 7
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %18, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %21, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_testb__0x1___sil(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SIL = bitcast %union.anon* %3 to i8*
  %4 = load i8, i8* %SIL, align 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = and i8 %4, 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = zext i8 %7 to i32
  %10 = tail call i32 @llvm.ctpop.i32(i32 %9)
  %11 = trunc i32 %10 to i8
  %12 = xor i8 %11, 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %12, i8* %13, align 1
  %14 = xor i8 %7, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %14, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %17, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_40d3e2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
