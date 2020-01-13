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

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: alwaysinline
define %struct.Memory* @decode_rs(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -2616
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 2608
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
  %40 = add i64 %7, -1500
  %41 = add i64 %10, 20
  store i64 %41, i64* %3, align 8
  %42 = inttoptr i64 %40 to i32*
  store i32 0, i32* %42, align 4
  %43 = load i64, i64* %RBP.i, align 8
  %44 = add i64 %43, -1496
  %45 = load i64, i64* %3, align 8
  %46 = add i64 %45, 10
  store i64 %46, i64* %3, align 8
  %47 = inttoptr i64 %44 to i32*
  store i32 0, i32* %47, align 4
  %48 = load i64, i64* %RBP.i, align 8
  %49 = add i64 %48, -4
  %50 = load i64, i64* %3, align 8
  %51 = add i64 %50, 7
  store i64 %51, i64* %3, align 8
  %52 = inttoptr i64 %49 to i32*
  store i32 1, i32* %52, align 4
  %53 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i1508 = getelementptr inbounds %union.anon, %union.anon* %53, i64 0, i32 0
  %EAX.i2012 = bitcast %union.anon* %53 to i32*
  %54 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i2066 = getelementptr inbounds %union.anon, %union.anon* %54, i64 0, i32 0
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %RDX.i2064 = getelementptr inbounds %union.anon, %union.anon* %55, i64 0, i32 0
  %56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %RSI.i2060 = getelementptr inbounds %union.anon, %union.anon* %56, i64 0, i32 0
  %ESI.i2054 = bitcast %union.anon* %56 to i32*
  %EDX.i2048 = bitcast %union.anon* %55 to i32*
  %57 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %ECX.i1986 = bitcast %union.anon* %54 to i32*
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_400936

block_.L_400936:                                  ; preds = %block_.L_4009ea, %entry
  %59 = phi i64 [ %.pre, %entry ], [ %392, %block_.L_4009ea ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %entry ], [ %MEMORY.1, %block_.L_4009ea ]
  %60 = load i64, i64* %RBP.i, align 8
  %61 = add i64 %60, -4
  %62 = add i64 %59, 4
  store i64 %62, i64* %3, align 8
  %63 = inttoptr i64 %61 to i32*
  %64 = load i32, i32* %63, align 4
  %65 = add i32 %64, -16
  %66 = icmp ult i32 %64, 16
  %67 = zext i1 %66 to i8
  store i8 %67, i8* %14, align 1
  %68 = and i32 %65, 255
  %69 = tail call i32 @llvm.ctpop.i32(i32 %68)
  %70 = trunc i32 %69 to i8
  %71 = and i8 %70, 1
  %72 = xor i8 %71, 1
  store i8 %72, i8* %21, align 1
  %73 = xor i32 %64, 16
  %74 = xor i32 %73, %65
  %75 = lshr i32 %74, 4
  %76 = trunc i32 %75 to i8
  %77 = and i8 %76, 1
  store i8 %77, i8* %27, align 1
  %78 = icmp eq i32 %65, 0
  %79 = zext i1 %78 to i8
  store i8 %79, i8* %30, align 1
  %80 = lshr i32 %65, 31
  %81 = trunc i32 %80 to i8
  store i8 %81, i8* %33, align 1
  %82 = lshr i32 %64, 31
  %83 = xor i32 %80, %82
  %84 = add nuw nsw i32 %83, %82
  %85 = icmp eq i32 %84, 2
  %86 = zext i1 %85 to i8
  store i8 %86, i8* %39, align 1
  %87 = icmp ne i8 %81, 0
  %88 = xor i1 %87, %85
  %.demorgan = or i1 %78, %88
  %.v = select i1 %.demorgan, i64 10, i64 224
  %89 = add i64 %59, %.v
  store i64 %89, i64* %3, align 8
  br i1 %.demorgan, label %block_400940, label %block_.L_400a16

block_400940:                                     ; preds = %block_.L_400936
  %90 = add i64 %89, 4
  store i64 %90, i64* %3, align 8
  %91 = load i32, i32* %63, align 4
  %92 = sext i32 %91 to i64
  store i64 %92, i64* %RAX.i1508, align 8
  %93 = shl nsw i64 %92, 2
  %94 = add i64 %60, -1488
  %95 = add i64 %94, %93
  %96 = add i64 %89, 15
  store i64 %96, i64* %3, align 8
  %97 = inttoptr i64 %95 to i32*
  store i32 0, i32* %97, align 4
  %98 = load i64, i64* %RBP.i, align 8
  %99 = add i64 %98, -8
  %100 = load i64, i64* %3, align 8
  %101 = add i64 %100, 7
  store i64 %101, i64* %3, align 8
  %102 = inttoptr i64 %99 to i32*
  store i32 0, i32* %102, align 4
  %.pre1 = load i64, i64* %3, align 8
  br label %block_.L_400956

block_.L_400956:                                  ; preds = %block_.L_4009bb, %block_400940
  %103 = phi i64 [ %.pre1, %block_400940 ], [ %309, %block_.L_4009bb ]
  %MEMORY.1 = phi %struct.Memory* [ %MEMORY.0, %block_400940 ], [ %MEMORY.2, %block_.L_4009bb ]
  %104 = load i64, i64* %RBP.i, align 8
  %105 = add i64 %104, -8
  %106 = add i64 %103, 7
  store i64 %106, i64* %3, align 8
  %107 = inttoptr i64 %105 to i32*
  %108 = load i32, i32* %107, align 4
  %109 = add i32 %108, -255
  %110 = icmp ult i32 %108, 255
  %111 = zext i1 %110 to i8
  store i8 %111, i8* %14, align 1
  %112 = and i32 %109, 255
  %113 = tail call i32 @llvm.ctpop.i32(i32 %112)
  %114 = trunc i32 %113 to i8
  %115 = and i8 %114, 1
  %116 = xor i8 %115, 1
  store i8 %116, i8* %21, align 1
  %117 = xor i32 %108, 16
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
  %126 = lshr i32 %108, 31
  %127 = xor i32 %124, %126
  %128 = add nuw nsw i32 %127, %126
  %129 = icmp eq i32 %128, 2
  %130 = zext i1 %129 to i8
  store i8 %130, i8* %39, align 1
  %131 = icmp ne i8 %125, 0
  %132 = xor i1 %131, %129
  %.v95 = select i1 %132, i64 13, i64 120
  %133 = add i64 %103, %.v95
  store i64 %133, i64* %3, align 8
  br i1 %132, label %block_400963, label %block_.L_4009ce

block_400963:                                     ; preds = %block_.L_400956
  %134 = add i64 %133, 4
  store i64 %134, i64* %3, align 8
  %135 = load i32, i32* %107, align 4
  %136 = sext i32 %135 to i64
  store i64 %136, i64* %RAX.i1508, align 8
  %137 = shl nsw i64 %136, 2
  %138 = add nsw i64 %137, 6303872
  %139 = add i64 %133, 12
  store i64 %139, i64* %3, align 8
  %140 = inttoptr i64 %138 to i32*
  %141 = load i32, i32* %140, align 4
  %142 = add i32 %141, 1
  %143 = icmp ne i32 %141, -1
  %144 = zext i1 %143 to i8
  store i8 %144, i8* %14, align 1
  %145 = and i32 %142, 255
  %146 = tail call i32 @llvm.ctpop.i32(i32 %145)
  %147 = trunc i32 %146 to i8
  %148 = and i8 %147, 1
  %149 = xor i8 %148, 1
  store i8 %149, i8* %21, align 1
  %150 = xor i32 %141, 16
  %151 = xor i32 %142, %150
  %152 = lshr i32 %151, 4
  %153 = trunc i32 %152 to i8
  %154 = and i8 %153, 1
  store i8 %154, i8* %27, align 1
  %155 = icmp eq i32 %142, 0
  %156 = zext i1 %155 to i8
  store i8 %156, i8* %30, align 1
  %157 = lshr i32 %142, 31
  %158 = trunc i32 %157 to i8
  store i8 %158, i8* %33, align 1
  %159 = lshr i32 %141, 31
  %160 = xor i32 %159, 1
  %161 = xor i32 %157, %159
  %162 = add nuw nsw i32 %161, %160
  %163 = icmp eq i32 %162, 2
  %164 = zext i1 %163 to i8
  store i8 %164, i8* %39, align 1
  %.v96 = select i1 %155, i64 88, i64 18
  %165 = add i64 %133, %.v96
  store i64 %165, i64* %3, align 8
  br i1 %155, label %block_.L_4009bb, label %block_400975

block_400975:                                     ; preds = %block_400963
  store i64 255, i64* %RAX.i1508, align 8
  %166 = add i64 %165, 9
  store i64 %166, i64* %3, align 8
  %167 = load i32, i32* %107, align 4
  %168 = sext i32 %167 to i64
  store i64 %168, i64* %RCX.i2066, align 8
  %169 = shl nsw i64 %168, 2
  %170 = add nsw i64 %169, 6303872
  %171 = add i64 %165, 16
  store i64 %171, i64* %3, align 8
  %172 = inttoptr i64 %170 to i32*
  %173 = load i32, i32* %172, align 4
  %174 = zext i32 %173 to i64
  store i64 %174, i64* %RDX.i2064, align 8
  %175 = add i64 %104, -4
  %176 = add i64 %165, 19
  store i64 %176, i64* %3, align 8
  %177 = inttoptr i64 %175 to i32*
  %178 = load i32, i32* %177, align 4
  %179 = zext i32 %178 to i64
  store i64 %179, i64* %RSI.i2060, align 8
  %180 = add i64 %165, 23
  store i64 %180, i64* %3, align 8
  %181 = load i32, i32* %107, align 4
  %182 = sext i32 %178 to i64
  %183 = sext i32 %181 to i64
  %184 = mul nsw i64 %183, %182
  %185 = and i64 %184, 4294967295
  store i64 %185, i64* %RSI.i2060, align 8
  %186 = trunc i64 %184 to i32
  %187 = add i32 %186, %173
  %188 = zext i32 %187 to i64
  store i64 %188, i64* %RDX.i2064, align 8
  %189 = icmp ult i32 %187, %173
  %190 = icmp ult i32 %187, %186
  %191 = or i1 %189, %190
  %192 = zext i1 %191 to i8
  store i8 %192, i8* %14, align 1
  %193 = and i32 %187, 255
  %194 = tail call i32 @llvm.ctpop.i32(i32 %193)
  %195 = trunc i32 %194 to i8
  %196 = and i8 %195, 1
  %197 = xor i8 %196, 1
  store i8 %197, i8* %21, align 1
  %198 = xor i64 %184, %174
  %199 = trunc i64 %198 to i32
  %200 = xor i32 %199, %187
  %201 = lshr i32 %200, 4
  %202 = trunc i32 %201 to i8
  %203 = and i8 %202, 1
  store i8 %203, i8* %27, align 1
  %204 = icmp eq i32 %187, 0
  %205 = zext i1 %204 to i8
  store i8 %205, i8* %30, align 1
  %206 = lshr i32 %187, 31
  %207 = trunc i32 %206 to i8
  store i8 %207, i8* %33, align 1
  %208 = lshr i32 %173, 31
  %209 = lshr i32 %186, 31
  %210 = xor i32 %206, %208
  %211 = xor i32 %206, %209
  %212 = add nuw nsw i32 %210, %211
  %213 = icmp eq i32 %212, 2
  %214 = zext i1 %213 to i8
  store i8 %214, i8* %39, align 1
  %215 = add i64 %104, -2692
  %216 = add i64 %165, 31
  store i64 %216, i64* %3, align 8
  %217 = inttoptr i64 %215 to i32*
  store i32 255, i32* %217, align 4
  %218 = load i32, i32* %EDX.i2048, align 4
  %219 = zext i32 %218 to i64
  %220 = load i64, i64* %3, align 8
  store i64 %219, i64* %RAX.i1508, align 8
  %221 = sext i32 %218 to i64
  %222 = lshr i64 %221, 32
  store i64 %222, i64* %57, align 8
  %223 = load i64, i64* %RBP.i, align 8
  %224 = add i64 %223, -2692
  %225 = add i64 %220, 9
  store i64 %225, i64* %3, align 8
  %226 = inttoptr i64 %224 to i32*
  %227 = load i32, i32* %226, align 4
  %228 = zext i32 %227 to i64
  store i64 %228, i64* %RSI.i2060, align 8
  %229 = add i64 %220, 11
  store i64 %229, i64* %3, align 8
  %230 = sext i32 %227 to i64
  %231 = shl nuw i64 %222, 32
  %232 = or i64 %231, %219
  %233 = sdiv i64 %232, %230
  %234 = shl i64 %233, 32
  %235 = ashr exact i64 %234, 32
  %236 = icmp eq i64 %233, %235
  br i1 %236, label %239, label %237

; <label>:237:                                    ; preds = %block_400975
  %238 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %229, %struct.Memory* %MEMORY.1)
  %.pre2 = load i32, i32* %EDX.i2048, align 4
  %.pre3 = load i64, i64* %3, align 8
  %.pre4 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__esi.exit2039

; <label>:239:                                    ; preds = %block_400975
  %240 = srem i64 %232, %230
  %241 = and i64 %233, 4294967295
  store i64 %241, i64* %58, align 8
  %242 = and i64 %240, 4294967295
  store i64 %242, i64* %57, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %243 = trunc i64 %240 to i32
  br label %routine_idivl__esi.exit2039

routine_idivl__esi.exit2039:                      ; preds = %239, %237
  %244 = phi i64 [ %.pre4, %237 ], [ %223, %239 ]
  %245 = phi i64 [ %.pre3, %237 ], [ %229, %239 ]
  %246 = phi i32 [ %.pre2, %237 ], [ %243, %239 ]
  %247 = phi %struct.Memory* [ %238, %237 ], [ %MEMORY.1, %239 ]
  %248 = sext i32 %246 to i64
  store i64 %248, i64* %RCX.i2066, align 8
  %249 = shl nsw i64 %248, 2
  %250 = add nsw i64 %249, 6305920
  %251 = add i64 %245, 10
  store i64 %251, i64* %3, align 8
  %252 = inttoptr i64 %250 to i32*
  %253 = load i32, i32* %252, align 4
  %254 = zext i32 %253 to i64
  store i64 %254, i64* %RDX.i2064, align 8
  %255 = add i64 %244, -4
  %256 = add i64 %245, 14
  store i64 %256, i64* %3, align 8
  %257 = inttoptr i64 %255 to i32*
  %258 = load i32, i32* %257, align 4
  %259 = sext i32 %258 to i64
  store i64 %259, i64* %RCX.i2066, align 8
  %260 = shl nsw i64 %259, 2
  %261 = add i64 %244, -1488
  %262 = add i64 %261, %260
  %263 = add i64 %245, 21
  store i64 %263, i64* %3, align 8
  %264 = inttoptr i64 %262 to i32*
  %265 = load i32, i32* %264, align 4
  %266 = xor i32 %265, %253
  %267 = zext i32 %266 to i64
  store i64 %267, i64* %RDX.i2064, align 8
  store i8 0, i8* %14, align 1
  %268 = and i32 %266, 255
  %269 = tail call i32 @llvm.ctpop.i32(i32 %268)
  %270 = trunc i32 %269 to i8
  %271 = and i8 %270, 1
  %272 = xor i8 %271, 1
  store i8 %272, i8* %21, align 1
  %273 = icmp eq i32 %266, 0
  %274 = zext i1 %273 to i8
  store i8 %274, i8* %30, align 1
  %275 = lshr i32 %266, 31
  %276 = trunc i32 %275 to i8
  store i8 %276, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %277 = add i64 %245, 28
  store i64 %277, i64* %3, align 8
  store i32 %266, i32* %264, align 4
  %.pre5 = load i64, i64* %3, align 8
  %.pre6 = load i64, i64* %RBP.i, align 8
  br label %block_.L_4009bb

block_.L_4009bb:                                  ; preds = %routine_idivl__esi.exit2039, %block_400963
  %278 = phi i64 [ %104, %block_400963 ], [ %.pre6, %routine_idivl__esi.exit2039 ]
  %279 = phi i64 [ %165, %block_400963 ], [ %.pre5, %routine_idivl__esi.exit2039 ]
  %MEMORY.2 = phi %struct.Memory* [ %MEMORY.1, %block_400963 ], [ %247, %routine_idivl__esi.exit2039 ]
  %280 = add i64 %278, -8
  %281 = add i64 %279, 8
  store i64 %281, i64* %3, align 8
  %282 = inttoptr i64 %280 to i32*
  %283 = load i32, i32* %282, align 4
  %284 = add i32 %283, 1
  %285 = zext i32 %284 to i64
  store i64 %285, i64* %RAX.i1508, align 8
  %286 = icmp eq i32 %283, -1
  %287 = icmp eq i32 %284, 0
  %288 = or i1 %286, %287
  %289 = zext i1 %288 to i8
  store i8 %289, i8* %14, align 1
  %290 = and i32 %284, 255
  %291 = tail call i32 @llvm.ctpop.i32(i32 %290)
  %292 = trunc i32 %291 to i8
  %293 = and i8 %292, 1
  %294 = xor i8 %293, 1
  store i8 %294, i8* %21, align 1
  %295 = xor i32 %283, %284
  %296 = lshr i32 %295, 4
  %297 = trunc i32 %296 to i8
  %298 = and i8 %297, 1
  store i8 %298, i8* %27, align 1
  %299 = zext i1 %287 to i8
  store i8 %299, i8* %30, align 1
  %300 = lshr i32 %284, 31
  %301 = trunc i32 %300 to i8
  store i8 %301, i8* %33, align 1
  %302 = lshr i32 %283, 31
  %303 = xor i32 %300, %302
  %304 = add nuw nsw i32 %303, %300
  %305 = icmp eq i32 %304, 2
  %306 = zext i1 %305 to i8
  store i8 %306, i8* %39, align 1
  %307 = add i64 %279, 14
  store i64 %307, i64* %3, align 8
  store i32 %284, i32* %282, align 4
  %308 = load i64, i64* %3, align 8
  %309 = add i64 %308, -115
  store i64 %309, i64* %3, align 8
  br label %block_.L_400956

block_.L_4009ce:                                  ; preds = %block_.L_400956
  %310 = add i64 %104, -4
  %311 = add i64 %133, 4
  store i64 %311, i64* %3, align 8
  %312 = inttoptr i64 %310 to i32*
  %313 = load i32, i32* %312, align 4
  %314 = sext i32 %313 to i64
  store i64 %314, i64* %RAX.i1508, align 8
  %315 = shl nsw i64 %314, 2
  %316 = add i64 %104, -1488
  %317 = add i64 %316, %315
  %318 = add i64 %133, 12
  store i64 %318, i64* %3, align 8
  %319 = inttoptr i64 %317 to i32*
  %320 = load i32, i32* %319, align 4
  store i8 0, i8* %14, align 1
  %321 = and i32 %320, 255
  %322 = tail call i32 @llvm.ctpop.i32(i32 %321)
  %323 = trunc i32 %322 to i8
  %324 = and i8 %323, 1
  %325 = xor i8 %324, 1
  store i8 %325, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %326 = icmp eq i32 %320, 0
  %327 = zext i1 %326 to i8
  store i8 %327, i8* %30, align 1
  %328 = lshr i32 %320, 31
  %329 = trunc i32 %328 to i8
  store i8 %329, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v97 = select i1 %326, i64 28, i64 18
  %330 = add i64 %133, %.v97
  store i64 %330, i64* %3, align 8
  br i1 %326, label %block_.L_4009ea, label %block_4009e0

block_4009e0:                                     ; preds = %block_.L_4009ce
  %331 = add i64 %104, -1496
  %332 = add i64 %330, 10
  store i64 %332, i64* %3, align 8
  %333 = inttoptr i64 %331 to i32*
  store i32 1, i32* %333, align 4
  %.pre7 = load i64, i64* %RBP.i, align 8
  %.pre8 = load i64, i64* %3, align 8
  br label %block_.L_4009ea

block_.L_4009ea:                                  ; preds = %block_4009e0, %block_.L_4009ce
  %334 = phi i64 [ %.pre8, %block_4009e0 ], [ %330, %block_.L_4009ce ]
  %335 = phi i64 [ %.pre7, %block_4009e0 ], [ %104, %block_.L_4009ce ]
  %336 = add i64 %335, -4
  %337 = add i64 %334, 4
  store i64 %337, i64* %3, align 8
  %338 = inttoptr i64 %336 to i32*
  %339 = load i32, i32* %338, align 4
  %340 = sext i32 %339 to i64
  store i64 %340, i64* %RAX.i1508, align 8
  %341 = shl nsw i64 %340, 2
  %342 = add i64 %335, -1488
  %343 = add i64 %342, %341
  %344 = add i64 %334, 12
  store i64 %344, i64* %3, align 8
  %345 = inttoptr i64 %343 to i32*
  %346 = load i32, i32* %345, align 4
  %347 = sext i32 %346 to i64
  store i64 %347, i64* %RAX.i1508, align 8
  %348 = shl nsw i64 %347, 2
  %349 = add nsw i64 %348, 6304896
  %350 = add i64 %334, 19
  store i64 %350, i64* %3, align 8
  %351 = inttoptr i64 %349 to i32*
  %352 = load i32, i32* %351, align 4
  %353 = zext i32 %352 to i64
  store i64 %353, i64* %RCX.i2066, align 8
  %354 = add i64 %334, 23
  store i64 %354, i64* %3, align 8
  %355 = load i32, i32* %338, align 4
  %356 = sext i32 %355 to i64
  store i64 %356, i64* %RAX.i1508, align 8
  %357 = shl nsw i64 %356, 2
  %358 = add i64 %342, %357
  %359 = add i64 %334, 30
  store i64 %359, i64* %3, align 8
  %360 = inttoptr i64 %358 to i32*
  store i32 %352, i32* %360, align 4
  %361 = load i64, i64* %RBP.i, align 8
  %362 = add i64 %361, -4
  %363 = load i64, i64* %3, align 8
  %364 = add i64 %363, 3
  store i64 %364, i64* %3, align 8
  %365 = inttoptr i64 %362 to i32*
  %366 = load i32, i32* %365, align 4
  %367 = add i32 %366, 1
  %368 = zext i32 %367 to i64
  store i64 %368, i64* %RAX.i1508, align 8
  %369 = icmp eq i32 %366, -1
  %370 = icmp eq i32 %367, 0
  %371 = or i1 %369, %370
  %372 = zext i1 %371 to i8
  store i8 %372, i8* %14, align 1
  %373 = and i32 %367, 255
  %374 = tail call i32 @llvm.ctpop.i32(i32 %373)
  %375 = trunc i32 %374 to i8
  %376 = and i8 %375, 1
  %377 = xor i8 %376, 1
  store i8 %377, i8* %21, align 1
  %378 = xor i32 %366, %367
  %379 = lshr i32 %378, 4
  %380 = trunc i32 %379 to i8
  %381 = and i8 %380, 1
  store i8 %381, i8* %27, align 1
  %382 = zext i1 %370 to i8
  store i8 %382, i8* %30, align 1
  %383 = lshr i32 %367, 31
  %384 = trunc i32 %383 to i8
  store i8 %384, i8* %33, align 1
  %385 = lshr i32 %366, 31
  %386 = xor i32 %383, %385
  %387 = add nuw nsw i32 %386, %383
  %388 = icmp eq i32 %387, 2
  %389 = zext i1 %388 to i8
  store i8 %389, i8* %39, align 1
  %390 = add i64 %363, 9
  store i64 %390, i64* %3, align 8
  store i32 %367, i32* %365, align 4
  %391 = load i64, i64* %3, align 8
  %392 = add i64 %391, -219
  store i64 %392, i64* %3, align 8
  br label %block_.L_400936

block_.L_400a16:                                  ; preds = %block_.L_400936
  %393 = add i64 %60, -1496
  %394 = add i64 %89, 7
  store i64 %394, i64* %3, align 8
  %395 = inttoptr i64 %393 to i32*
  %396 = load i32, i32* %395, align 4
  store i8 0, i8* %14, align 1
  %397 = and i32 %396, 255
  %398 = tail call i32 @llvm.ctpop.i32(i32 %397)
  %399 = trunc i32 %398 to i8
  %400 = and i8 %399, 1
  %401 = xor i8 %400, 1
  store i8 %401, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %402 = icmp eq i32 %396, 0
  %403 = zext i1 %402 to i8
  store i8 %403, i8* %30, align 1
  %404 = lshr i32 %396, 31
  %405 = trunc i32 %404 to i8
  store i8 %405, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v98 = select i1 %402, i64 3511, i64 13
  %406 = add i64 %89, %.v98
  store i64 %406, i64* %3, align 8
  br i1 %402, label %block_.L_4017cd, label %block_400a23

block_400a23:                                     ; preds = %block_.L_400a16
  %407 = add i64 %60, -1248
  %408 = add i64 %406, 10
  store i64 %408, i64* %3, align 8
  %409 = inttoptr i64 %407 to i32*
  store i32 0, i32* %409, align 4
  %410 = load i64, i64* %RBP.i, align 8
  %411 = add i64 %410, -1484
  %412 = load i64, i64* %3, align 8
  %413 = add i64 %412, 6
  store i64 %413, i64* %3, align 8
  %414 = inttoptr i64 %411 to i32*
  %415 = load i32, i32* %414, align 4
  %416 = zext i32 %415 to i64
  store i64 %416, i64* %RAX.i1508, align 8
  %417 = add i64 %410, -1244
  %418 = add i64 %412, 12
  store i64 %418, i64* %3, align 8
  %419 = inttoptr i64 %417 to i32*
  store i32 %415, i32* %419, align 4
  %420 = load i64, i64* %RBP.i, align 8
  %421 = add i64 %420, -1168
  %422 = load i64, i64* %3, align 8
  %423 = add i64 %422, 10
  store i64 %423, i64* %3, align 8
  %424 = inttoptr i64 %421 to i32*
  store i32 0, i32* %424, align 4
  %425 = load i64, i64* %RBP.i, align 8
  %426 = add i64 %425, -1104
  %427 = load i64, i64* %3, align 8
  %428 = add i64 %427, 10
  store i64 %428, i64* %3, align 8
  %429 = inttoptr i64 %426 to i32*
  store i32 1, i32* %429, align 4
  %430 = load i64, i64* %RBP.i, align 8
  %431 = add i64 %430, -4
  %432 = load i64, i64* %3, align 8
  %433 = add i64 %432, 7
  store i64 %433, i64* %3, align 8
  %434 = inttoptr i64 %431 to i32*
  store i32 1, i32* %434, align 4
  %.pre9 = load i64, i64* %3, align 8
  br label %block_.L_400a54

block_.L_400a54:                                  ; preds = %block_400a5e, %block_400a23
  %435 = phi i64 [ %517, %block_400a5e ], [ %.pre9, %block_400a23 ]
  %436 = load i64, i64* %RBP.i, align 8
  %437 = add i64 %436, -4
  %438 = add i64 %435, 4
  store i64 %438, i64* %3, align 8
  %439 = inttoptr i64 %437 to i32*
  %440 = load i32, i32* %439, align 4
  %441 = add i32 %440, -16
  %442 = icmp ult i32 %440, 16
  %443 = zext i1 %442 to i8
  store i8 %443, i8* %14, align 1
  %444 = and i32 %441, 255
  %445 = tail call i32 @llvm.ctpop.i32(i32 %444)
  %446 = trunc i32 %445 to i8
  %447 = and i8 %446, 1
  %448 = xor i8 %447, 1
  store i8 %448, i8* %21, align 1
  %449 = xor i32 %440, 16
  %450 = xor i32 %449, %441
  %451 = lshr i32 %450, 4
  %452 = trunc i32 %451 to i8
  %453 = and i8 %452, 1
  store i8 %453, i8* %27, align 1
  %454 = icmp eq i32 %441, 0
  %455 = zext i1 %454 to i8
  store i8 %455, i8* %30, align 1
  %456 = lshr i32 %441, 31
  %457 = trunc i32 %456 to i8
  store i8 %457, i8* %33, align 1
  %458 = lshr i32 %440, 31
  %459 = xor i32 %456, %458
  %460 = add nuw nsw i32 %459, %458
  %461 = icmp eq i32 %460, 2
  %462 = zext i1 %461 to i8
  store i8 %462, i8* %39, align 1
  %463 = icmp ne i8 %457, 0
  %464 = xor i1 %463, %461
  %.v99 = select i1 %464, i64 10, i64 54
  %465 = add i64 %435, %.v99
  store i64 %465, i64* %3, align 8
  br i1 %464, label %block_400a5e, label %block_.L_400a8a

block_400a5e:                                     ; preds = %block_.L_400a54
  %466 = add i64 %465, 4
  store i64 %466, i64* %3, align 8
  %467 = load i32, i32* %439, align 4
  %468 = sext i32 %467 to i64
  store i64 %468, i64* %RAX.i1508, align 8
  %469 = shl nsw i64 %468, 2
  %470 = add i64 %436, -1168
  %471 = add i64 %470, %469
  %472 = add i64 %465, 15
  store i64 %472, i64* %3, align 8
  %473 = inttoptr i64 %471 to i32*
  store i32 -1, i32* %473, align 4
  %474 = load i64, i64* %RBP.i, align 8
  %475 = add i64 %474, -4
  %476 = load i64, i64* %3, align 8
  %477 = add i64 %476, 4
  store i64 %477, i64* %3, align 8
  %478 = inttoptr i64 %475 to i32*
  %479 = load i32, i32* %478, align 4
  %480 = sext i32 %479 to i64
  store i64 %480, i64* %RAX.i1508, align 8
  %481 = shl nsw i64 %480, 2
  %482 = add i64 %474, -1104
  %483 = add i64 %482, %481
  %484 = add i64 %476, 15
  store i64 %484, i64* %3, align 8
  %485 = inttoptr i64 %483 to i32*
  store i32 0, i32* %485, align 4
  %486 = load i64, i64* %RBP.i, align 8
  %487 = add i64 %486, -4
  %488 = load i64, i64* %3, align 8
  %489 = add i64 %488, 3
  store i64 %489, i64* %3, align 8
  %490 = inttoptr i64 %487 to i32*
  %491 = load i32, i32* %490, align 4
  %492 = add i32 %491, 1
  %493 = zext i32 %492 to i64
  store i64 %493, i64* %RAX.i1508, align 8
  %494 = icmp eq i32 %491, -1
  %495 = icmp eq i32 %492, 0
  %496 = or i1 %494, %495
  %497 = zext i1 %496 to i8
  store i8 %497, i8* %14, align 1
  %498 = and i32 %492, 255
  %499 = tail call i32 @llvm.ctpop.i32(i32 %498)
  %500 = trunc i32 %499 to i8
  %501 = and i8 %500, 1
  %502 = xor i8 %501, 1
  store i8 %502, i8* %21, align 1
  %503 = xor i32 %491, %492
  %504 = lshr i32 %503, 4
  %505 = trunc i32 %504 to i8
  %506 = and i8 %505, 1
  store i8 %506, i8* %27, align 1
  %507 = zext i1 %495 to i8
  store i8 %507, i8* %30, align 1
  %508 = lshr i32 %492, 31
  %509 = trunc i32 %508 to i8
  store i8 %509, i8* %33, align 1
  %510 = lshr i32 %491, 31
  %511 = xor i32 %508, %510
  %512 = add nuw nsw i32 %511, %508
  %513 = icmp eq i32 %512, 2
  %514 = zext i1 %513 to i8
  store i8 %514, i8* %39, align 1
  %515 = add i64 %488, 9
  store i64 %515, i64* %3, align 8
  store i32 %492, i32* %490, align 4
  %516 = load i64, i64* %3, align 8
  %517 = add i64 %516, -49
  store i64 %517, i64* %3, align 8
  br label %block_.L_400a54

block_.L_400a8a:                                  ; preds = %block_.L_400a54
  %518 = add i64 %436, -1328
  %519 = add i64 %465, 10
  store i64 %519, i64* %3, align 8
  %520 = inttoptr i64 %518 to i32*
  store i32 0, i32* %520, align 4
  %521 = load i64, i64* %RBP.i, align 8
  %522 = add i64 %521, -1324
  %523 = load i64, i64* %3, align 8
  %524 = add i64 %523, 10
  store i64 %524, i64* %3, align 8
  %525 = inttoptr i64 %522 to i32*
  store i32 0, i32* %525, align 4
  %526 = load i64, i64* %RBP.i, align 8
  %527 = add i64 %526, -1408
  %528 = load i64, i64* %3, align 8
  %529 = add i64 %528, 10
  store i64 %529, i64* %3, align 8
  %530 = inttoptr i64 %527 to i32*
  store i32 -1, i32* %530, align 4
  %531 = load i64, i64* %RBP.i, align 8
  %532 = add i64 %531, -1404
  %533 = load i64, i64* %3, align 8
  %534 = add i64 %533, 10
  store i64 %534, i64* %3, align 8
  %535 = inttoptr i64 %532 to i32*
  store i32 0, i32* %535, align 4
  %536 = load i64, i64* %RBP.i, align 8
  %537 = add i64 %536, -12
  %538 = load i64, i64* %3, align 8
  %539 = add i64 %538, 7
  store i64 %539, i64* %3, align 8
  %540 = inttoptr i64 %537 to i32*
  store i32 0, i32* %540, align 4
  %AL.i1776 = bitcast %union.anon* %53 to i8*
  %CL.i1777 = bitcast %union.anon* %54 to i8*
  %RDI.i1529 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %541 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8.i1487 = getelementptr inbounds %union.anon, %union.anon* %541, i64 0, i32 0
  %DL.i1081 = bitcast %union.anon* %55 to i8*
  %.pre10 = load i64, i64* %RBP.i, align 8
  %.pre11 = load i64, i64* %3, align 8
  br label %block_.L_400ab9

block_.L_400ab9:                                  ; preds = %block_.L_400ffe, %block_.L_400a8a
  %542 = phi i64 [ %.pre11, %block_.L_400a8a ], [ %3167, %block_.L_400ffe ]
  %543 = phi i64 [ %.pre10, %block_.L_400a8a ], [ %3155, %block_.L_400ffe ]
  %MEMORY.5 = phi %struct.Memory* [ %MEMORY.0, %block_.L_400a8a ], [ %MEMORY.21, %block_.L_400ffe ]
  %544 = add i64 %543, -12
  %545 = add i64 %542, 3
  store i64 %545, i64* %3, align 8
  %546 = inttoptr i64 %544 to i32*
  %547 = load i32, i32* %546, align 4
  %548 = add i32 %547, 1
  %549 = zext i32 %548 to i64
  store i64 %549, i64* %RAX.i1508, align 8
  %550 = icmp eq i32 %547, -1
  %551 = icmp eq i32 %548, 0
  %552 = or i1 %550, %551
  %553 = zext i1 %552 to i8
  store i8 %553, i8* %14, align 1
  %554 = and i32 %548, 255
  %555 = tail call i32 @llvm.ctpop.i32(i32 %554)
  %556 = trunc i32 %555 to i8
  %557 = and i8 %556, 1
  %558 = xor i8 %557, 1
  store i8 %558, i8* %21, align 1
  %559 = xor i32 %547, %548
  %560 = lshr i32 %559, 4
  %561 = trunc i32 %560 to i8
  %562 = and i8 %561, 1
  store i8 %562, i8* %27, align 1
  %563 = zext i1 %551 to i8
  store i8 %563, i8* %30, align 1
  %564 = lshr i32 %548, 31
  %565 = trunc i32 %564 to i8
  store i8 %565, i8* %33, align 1
  %566 = lshr i32 %547, 31
  %567 = xor i32 %564, %566
  %568 = add nuw nsw i32 %567, %564
  %569 = icmp eq i32 %568, 2
  %570 = zext i1 %569 to i8
  store i8 %570, i8* %39, align 1
  %571 = add i64 %542, 9
  store i64 %571, i64* %3, align 8
  store i32 %548, i32* %546, align 4
  %572 = load i64, i64* %RBP.i, align 8
  %573 = add i64 %572, -12
  %574 = load i64, i64* %3, align 8
  %575 = add i64 %574, 4
  store i64 %575, i64* %3, align 8
  %576 = inttoptr i64 %573 to i32*
  %577 = load i32, i32* %576, align 4
  %578 = sext i32 %577 to i64
  store i64 %578, i64* %RCX.i2066, align 8
  %579 = shl nsw i64 %578, 2
  %580 = add i64 %572, -1248
  %581 = add i64 %580, %579
  %582 = add i64 %574, 12
  store i64 %582, i64* %3, align 8
  %583 = inttoptr i64 %581 to i32*
  %584 = load i32, i32* %583, align 4
  %585 = add i32 %584, 1
  %586 = icmp ne i32 %584, -1
  %587 = zext i1 %586 to i8
  store i8 %587, i8* %14, align 1
  %588 = and i32 %585, 255
  %589 = tail call i32 @llvm.ctpop.i32(i32 %588)
  %590 = trunc i32 %589 to i8
  %591 = and i8 %590, 1
  %592 = xor i8 %591, 1
  store i8 %592, i8* %21, align 1
  %593 = xor i32 %584, 16
  %594 = xor i32 %585, %593
  %595 = lshr i32 %594, 4
  %596 = trunc i32 %595 to i8
  %597 = and i8 %596, 1
  store i8 %597, i8* %27, align 1
  %598 = icmp eq i32 %585, 0
  %599 = zext i1 %598 to i8
  store i8 %599, i8* %30, align 1
  %600 = lshr i32 %585, 31
  %601 = trunc i32 %600 to i8
  store i8 %601, i8* %33, align 1
  %602 = lshr i32 %584, 31
  %603 = xor i32 %602, 1
  %604 = xor i32 %600, %602
  %605 = add nuw nsw i32 %604, %603
  %606 = icmp eq i32 %605, 2
  %607 = zext i1 %606 to i8
  store i8 %607, i8* %39, align 1
  %.v100 = select i1 %598, i64 18, i64 192
  %608 = add i64 %574, %.v100
  store i64 %608, i64* %3, align 8
  br i1 %598, label %block_400ad4, label %block_.L_400b82

block_400ad4:                                     ; preds = %block_.L_400ab9
  %609 = add i64 %608, 4
  store i64 %609, i64* %3, align 8
  %610 = load i32, i32* %576, align 4
  %611 = sext i32 %610 to i64
  store i64 %611, i64* %RAX.i1508, align 8
  %612 = shl nsw i64 %611, 2
  %613 = add i64 %572, -1328
  %614 = add i64 %613, %612
  %615 = add i64 %608, 11
  store i64 %615, i64* %3, align 8
  %616 = inttoptr i64 %614 to i32*
  %617 = load i32, i32* %616, align 4
  %618 = zext i32 %617 to i64
  store i64 %618, i64* %RCX.i2066, align 8
  %619 = add i64 %608, 14
  store i64 %619, i64* %3, align 8
  %620 = load i32, i32* %576, align 4
  %621 = add i32 %620, 1
  %622 = zext i32 %621 to i64
  store i64 %622, i64* %RDX.i2064, align 8
  %623 = icmp eq i32 %620, -1
  %624 = icmp eq i32 %621, 0
  %625 = or i1 %623, %624
  %626 = zext i1 %625 to i8
  store i8 %626, i8* %14, align 1
  %627 = and i32 %621, 255
  %628 = tail call i32 @llvm.ctpop.i32(i32 %627)
  %629 = trunc i32 %628 to i8
  %630 = and i8 %629, 1
  %631 = xor i8 %630, 1
  store i8 %631, i8* %21, align 1
  %632 = xor i32 %620, %621
  %633 = lshr i32 %632, 4
  %634 = trunc i32 %633 to i8
  %635 = and i8 %634, 1
  store i8 %635, i8* %27, align 1
  %636 = zext i1 %624 to i8
  store i8 %636, i8* %30, align 1
  %637 = lshr i32 %621, 31
  %638 = trunc i32 %637 to i8
  store i8 %638, i8* %33, align 1
  %639 = lshr i32 %620, 31
  %640 = xor i32 %637, %639
  %641 = add nuw nsw i32 %640, %637
  %642 = icmp eq i32 %641, 2
  %643 = zext i1 %642 to i8
  store i8 %643, i8* %39, align 1
  %644 = sext i32 %621 to i64
  store i64 %644, i64* %RAX.i1508, align 8
  %645 = shl nsw i64 %644, 2
  %646 = add i64 %613, %645
  %647 = add i64 %608, 27
  store i64 %647, i64* %3, align 8
  %648 = inttoptr i64 %646 to i32*
  store i32 %617, i32* %648, align 4
  %649 = load i64, i64* %RBP.i, align 8
  %650 = add i64 %649, -4
  %651 = load i64, i64* %3, align 8
  %652 = add i64 %651, 7
  store i64 %652, i64* %3, align 8
  %653 = inttoptr i64 %650 to i32*
  store i32 0, i32* %653, align 4
  %.pre12 = load i64, i64* %3, align 8
  br label %block_.L_400af6

block_.L_400af6:                                  ; preds = %block_400b0a, %block_400ad4
  %654 = phi i64 [ %909, %block_400b0a ], [ %.pre12, %block_400ad4 ]
  %655 = load i64, i64* %RBP.i, align 8
  %656 = add i64 %655, -4
  %657 = add i64 %654, 3
  store i64 %657, i64* %3, align 8
  %658 = inttoptr i64 %656 to i32*
  %659 = load i32, i32* %658, align 4
  %660 = zext i32 %659 to i64
  store i64 %660, i64* %RAX.i1508, align 8
  %661 = add i64 %655, -12
  %662 = add i64 %654, 7
  store i64 %662, i64* %3, align 8
  %663 = inttoptr i64 %661 to i32*
  %664 = load i32, i32* %663, align 4
  %665 = sext i32 %664 to i64
  store i64 %665, i64* %RCX.i2066, align 8
  %666 = shl nsw i64 %665, 2
  %667 = add i64 %655, -1328
  %668 = add i64 %667, %666
  %669 = add i64 %654, 14
  store i64 %669, i64* %3, align 8
  %670 = inttoptr i64 %668 to i32*
  %671 = load i32, i32* %670, align 4
  %672 = sub i32 %659, %671
  %673 = icmp ult i32 %659, %671
  %674 = zext i1 %673 to i8
  store i8 %674, i8* %14, align 1
  %675 = and i32 %672, 255
  %676 = tail call i32 @llvm.ctpop.i32(i32 %675)
  %677 = trunc i32 %676 to i8
  %678 = and i8 %677, 1
  %679 = xor i8 %678, 1
  store i8 %679, i8* %21, align 1
  %680 = xor i32 %671, %659
  %681 = xor i32 %680, %672
  %682 = lshr i32 %681, 4
  %683 = trunc i32 %682 to i8
  %684 = and i8 %683, 1
  store i8 %684, i8* %27, align 1
  %685 = icmp eq i32 %672, 0
  %686 = zext i1 %685 to i8
  store i8 %686, i8* %30, align 1
  %687 = lshr i32 %672, 31
  %688 = trunc i32 %687 to i8
  store i8 %688, i8* %33, align 1
  %689 = lshr i32 %659, 31
  %690 = lshr i32 %671, 31
  %691 = xor i32 %690, %689
  %692 = xor i32 %687, %689
  %693 = add nuw nsw i32 %692, %691
  %694 = icmp eq i32 %693, 2
  %695 = zext i1 %694 to i8
  store i8 %695, i8* %39, align 1
  %696 = icmp ne i8 %688, 0
  %697 = xor i1 %696, %694
  %.demorgan101 = or i1 %685, %697
  %.v102 = select i1 %.demorgan101, i64 20, i64 135
  %698 = add i64 %654, %.v102
  store i64 %698, i64* %3, align 8
  br i1 %.demorgan101, label %block_400b0a, label %block_.L_400b7d

block_400b0a:                                     ; preds = %block_.L_400af6
  %699 = add i64 %655, -1168
  store i64 %699, i64* %RAX.i1508, align 8
  %700 = add i64 %698, 11
  store i64 %700, i64* %3, align 8
  %701 = load i32, i32* %663, align 4
  %702 = sext i32 %701 to i64
  %703 = shl nsw i64 %702, 6
  store i64 %703, i64* %RCX.i2066, align 8
  %704 = lshr i64 %702, 57
  %705 = and i64 %704, 1
  %706 = add i64 %703, %699
  store i64 %706, i64* %RDX.i2064, align 8
  %707 = icmp ult i64 %706, %699
  %708 = icmp ult i64 %706, %703
  %709 = or i1 %707, %708
  %710 = zext i1 %709 to i8
  store i8 %710, i8* %14, align 1
  %711 = trunc i64 %706 to i32
  %712 = and i32 %711, 255
  %713 = tail call i32 @llvm.ctpop.i32(i32 %712)
  %714 = trunc i32 %713 to i8
  %715 = and i8 %714, 1
  %716 = xor i8 %715, 1
  store i8 %716, i8* %21, align 1
  %717 = xor i64 %699, %706
  %718 = lshr i64 %717, 4
  %719 = trunc i64 %718 to i8
  %720 = and i8 %719, 1
  store i8 %720, i8* %27, align 1
  %721 = icmp eq i64 %706, 0
  %722 = zext i1 %721 to i8
  store i8 %722, i8* %30, align 1
  %723 = lshr i64 %706, 63
  %724 = trunc i64 %723 to i8
  store i8 %724, i8* %33, align 1
  %725 = lshr i64 %699, 63
  %726 = xor i64 %723, %725
  %727 = xor i64 %723, %705
  %728 = add nuw nsw i64 %726, %727
  %729 = icmp eq i64 %728, 2
  %730 = zext i1 %729 to i8
  store i8 %730, i8* %39, align 1
  %731 = add i64 %698, 25
  store i64 %731, i64* %3, align 8
  %732 = load i32, i32* %658, align 4
  %733 = sext i32 %732 to i64
  store i64 %733, i64* %RCX.i2066, align 8
  %734 = shl nsw i64 %733, 2
  %735 = add i64 %734, %706
  %736 = add i64 %698, 28
  store i64 %736, i64* %3, align 8
  %737 = inttoptr i64 %735 to i32*
  %738 = load i32, i32* %737, align 4
  %739 = zext i32 %738 to i64
  store i64 %739, i64* %RSI.i2060, align 8
  %740 = add i64 %698, 31
  store i64 %740, i64* %3, align 8
  %741 = load i32, i32* %663, align 4
  %742 = add i32 %741, 1
  %743 = zext i32 %742 to i64
  store i64 %743, i64* %RDI.i1529, align 8
  %744 = sext i32 %742 to i64
  %745 = shl nsw i64 %744, 6
  store i64 %745, i64* %RCX.i2066, align 8
  %746 = lshr i64 %744, 57
  %747 = and i64 %746, 1
  %748 = load i64, i64* %RAX.i1508, align 8
  %749 = add i64 %745, %748
  store i64 %749, i64* %RDX.i2064, align 8
  %750 = icmp ult i64 %749, %748
  %751 = icmp ult i64 %749, %745
  %752 = or i1 %750, %751
  %753 = zext i1 %752 to i8
  store i8 %753, i8* %14, align 1
  %754 = trunc i64 %749 to i32
  %755 = and i32 %754, 255
  %756 = tail call i32 @llvm.ctpop.i32(i32 %755)
  %757 = trunc i32 %756 to i8
  %758 = and i8 %757, 1
  %759 = xor i8 %758, 1
  store i8 %759, i8* %21, align 1
  %760 = xor i64 %748, %749
  %761 = lshr i64 %760, 4
  %762 = trunc i64 %761 to i8
  %763 = and i8 %762, 1
  store i8 %763, i8* %27, align 1
  %764 = icmp eq i64 %749, 0
  %765 = zext i1 %764 to i8
  store i8 %765, i8* %30, align 1
  %766 = lshr i64 %749, 63
  %767 = trunc i64 %766 to i8
  store i8 %767, i8* %33, align 1
  %768 = lshr i64 %748, 63
  %769 = xor i64 %766, %768
  %770 = xor i64 %766, %747
  %771 = add nuw nsw i64 %769, %770
  %772 = icmp eq i64 %771, 2
  %773 = zext i1 %772 to i8
  store i8 %773, i8* %39, align 1
  %774 = load i64, i64* %RBP.i, align 8
  %775 = add i64 %774, -4
  %776 = add i64 %698, 51
  store i64 %776, i64* %3, align 8
  %777 = inttoptr i64 %775 to i32*
  %778 = load i32, i32* %777, align 4
  %779 = sext i32 %778 to i64
  store i64 %779, i64* %RCX.i2066, align 8
  %780 = shl nsw i64 %779, 2
  %781 = add i64 %780, %749
  %782 = load i32, i32* %ESI.i2054, align 4
  %783 = add i64 %698, 54
  store i64 %783, i64* %3, align 8
  %784 = inttoptr i64 %781 to i32*
  store i32 %782, i32* %784, align 4
  %785 = load i64, i64* %RBP.i, align 8
  %786 = add i64 %785, -12
  %787 = load i64, i64* %3, align 8
  %788 = add i64 %787, 4
  store i64 %788, i64* %3, align 8
  %789 = inttoptr i64 %786 to i32*
  %790 = load i32, i32* %789, align 4
  %791 = sext i32 %790 to i64
  %792 = shl nsw i64 %791, 6
  store i64 %792, i64* %RCX.i2066, align 8
  %793 = lshr i64 %791, 57
  %794 = and i64 %793, 1
  %795 = load i64, i64* %RAX.i1508, align 8
  %796 = add i64 %792, %795
  store i64 %796, i64* %RDX.i2064, align 8
  %797 = icmp ult i64 %796, %795
  %798 = icmp ult i64 %796, %792
  %799 = or i1 %797, %798
  %800 = zext i1 %799 to i8
  store i8 %800, i8* %14, align 1
  %801 = trunc i64 %796 to i32
  %802 = and i32 %801, 255
  %803 = tail call i32 @llvm.ctpop.i32(i32 %802)
  %804 = trunc i32 %803 to i8
  %805 = and i8 %804, 1
  %806 = xor i8 %805, 1
  store i8 %806, i8* %21, align 1
  %807 = xor i64 %795, %796
  %808 = lshr i64 %807, 4
  %809 = trunc i64 %808 to i8
  %810 = and i8 %809, 1
  store i8 %810, i8* %27, align 1
  %811 = icmp eq i64 %796, 0
  %812 = zext i1 %811 to i8
  store i8 %812, i8* %30, align 1
  %813 = lshr i64 %796, 63
  %814 = trunc i64 %813 to i8
  store i8 %814, i8* %33, align 1
  %815 = lshr i64 %795, 63
  %816 = xor i64 %813, %815
  %817 = xor i64 %813, %794
  %818 = add nuw nsw i64 %816, %817
  %819 = icmp eq i64 %818, 2
  %820 = zext i1 %819 to i8
  store i8 %820, i8* %39, align 1
  %821 = add i64 %785, -4
  %822 = add i64 %787, 18
  store i64 %822, i64* %3, align 8
  %823 = inttoptr i64 %821 to i32*
  %824 = load i32, i32* %823, align 4
  %825 = sext i32 %824 to i64
  store i64 %825, i64* %RCX.i2066, align 8
  %826 = shl nsw i64 %825, 2
  %827 = add i64 %826, %796
  %828 = add i64 %787, 22
  store i64 %828, i64* %3, align 8
  %829 = inttoptr i64 %827 to i32*
  %830 = load i32, i32* %829, align 4
  %831 = sext i32 %830 to i64
  store i64 %831, i64* %RCX.i2066, align 8
  %832 = shl nsw i64 %831, 2
  %833 = add nsw i64 %832, 6304896
  %834 = add i64 %787, 29
  store i64 %834, i64* %3, align 8
  %835 = inttoptr i64 %833 to i32*
  %836 = load i32, i32* %835, align 4
  %837 = zext i32 %836 to i64
  store i64 %837, i64* %RSI.i2060, align 8
  %838 = add i64 %787, 33
  store i64 %838, i64* %3, align 8
  %839 = load i32, i32* %789, align 4
  %840 = sext i32 %839 to i64
  %841 = shl nsw i64 %840, 6
  store i64 %841, i64* %RCX.i2066, align 8
  %842 = lshr i64 %840, 57
  %843 = and i64 %842, 1
  %844 = add i64 %841, %795
  store i64 %844, i64* %RAX.i1508, align 8
  %845 = icmp ult i64 %844, %795
  %846 = icmp ult i64 %844, %841
  %847 = or i1 %845, %846
  %848 = zext i1 %847 to i8
  store i8 %848, i8* %14, align 1
  %849 = trunc i64 %844 to i32
  %850 = and i32 %849, 255
  %851 = tail call i32 @llvm.ctpop.i32(i32 %850)
  %852 = trunc i32 %851 to i8
  %853 = and i8 %852, 1
  %854 = xor i8 %853, 1
  store i8 %854, i8* %21, align 1
  %855 = xor i64 %795, %844
  %856 = lshr i64 %855, 4
  %857 = trunc i64 %856 to i8
  %858 = and i8 %857, 1
  store i8 %858, i8* %27, align 1
  %859 = icmp eq i64 %844, 0
  %860 = zext i1 %859 to i8
  store i8 %860, i8* %30, align 1
  %861 = lshr i64 %844, 63
  %862 = trunc i64 %861 to i8
  store i8 %862, i8* %33, align 1
  %863 = xor i64 %861, %815
  %864 = xor i64 %861, %843
  %865 = add nuw nsw i64 %863, %864
  %866 = icmp eq i64 %865, 2
  %867 = zext i1 %866 to i8
  store i8 %867, i8* %39, align 1
  %868 = load i64, i64* %RBP.i, align 8
  %869 = add i64 %868, -4
  %870 = add i64 %787, 44
  store i64 %870, i64* %3, align 8
  %871 = inttoptr i64 %869 to i32*
  %872 = load i32, i32* %871, align 4
  %873 = sext i32 %872 to i64
  store i64 %873, i64* %RCX.i2066, align 8
  %874 = shl nsw i64 %873, 2
  %875 = add i64 %874, %844
  %876 = add i64 %787, 47
  store i64 %876, i64* %3, align 8
  %877 = inttoptr i64 %875 to i32*
  store i32 %836, i32* %877, align 4
  %878 = load i64, i64* %RBP.i, align 8
  %879 = add i64 %878, -4
  %880 = load i64, i64* %3, align 8
  %881 = add i64 %880, 3
  store i64 %881, i64* %3, align 8
  %882 = inttoptr i64 %879 to i32*
  %883 = load i32, i32* %882, align 4
  %884 = add i32 %883, 1
  %885 = zext i32 %884 to i64
  store i64 %885, i64* %RAX.i1508, align 8
  %886 = icmp eq i32 %883, -1
  %887 = icmp eq i32 %884, 0
  %888 = or i1 %886, %887
  %889 = zext i1 %888 to i8
  store i8 %889, i8* %14, align 1
  %890 = and i32 %884, 255
  %891 = tail call i32 @llvm.ctpop.i32(i32 %890)
  %892 = trunc i32 %891 to i8
  %893 = and i8 %892, 1
  %894 = xor i8 %893, 1
  store i8 %894, i8* %21, align 1
  %895 = xor i32 %883, %884
  %896 = lshr i32 %895, 4
  %897 = trunc i32 %896 to i8
  %898 = and i8 %897, 1
  store i8 %898, i8* %27, align 1
  %899 = zext i1 %887 to i8
  store i8 %899, i8* %30, align 1
  %900 = lshr i32 %884, 31
  %901 = trunc i32 %900 to i8
  store i8 %901, i8* %33, align 1
  %902 = lshr i32 %883, 31
  %903 = xor i32 %900, %902
  %904 = add nuw nsw i32 %903, %900
  %905 = icmp eq i32 %904, 2
  %906 = zext i1 %905 to i8
  store i8 %906, i8* %39, align 1
  %907 = add i64 %880, 9
  store i64 %907, i64* %3, align 8
  store i32 %884, i32* %882, align 4
  %908 = load i64, i64* %3, align 8
  %909 = add i64 %908, -130
  store i64 %909, i64* %3, align 8
  br label %block_.L_400af6

block_.L_400b7d:                                  ; preds = %block_.L_400af6
  %910 = add i64 %698, 701
  br label %block_.L_400e3a

block_.L_400b82:                                  ; preds = %block_.L_400ab9
  %911 = add i64 %608, 3
  store i64 %911, i64* %3, align 8
  %912 = load i32, i32* %576, align 4
  %913 = add i32 %912, -1
  %914 = zext i32 %913 to i64
  store i64 %914, i64* %RAX.i1508, align 8
  %915 = icmp eq i32 %912, 0
  %916 = zext i1 %915 to i8
  store i8 %916, i8* %14, align 1
  %917 = and i32 %913, 255
  %918 = tail call i32 @llvm.ctpop.i32(i32 %917)
  %919 = trunc i32 %918 to i8
  %920 = and i8 %919, 1
  %921 = xor i8 %920, 1
  store i8 %921, i8* %21, align 1
  %922 = xor i32 %912, %913
  %923 = lshr i32 %922, 4
  %924 = trunc i32 %923 to i8
  %925 = and i8 %924, 1
  store i8 %925, i8* %27, align 1
  %926 = icmp eq i32 %913, 0
  %927 = zext i1 %926 to i8
  store i8 %927, i8* %30, align 1
  %928 = lshr i32 %913, 31
  %929 = trunc i32 %928 to i8
  store i8 %929, i8* %33, align 1
  %930 = lshr i32 %912, 31
  %931 = xor i32 %928, %930
  %932 = add nuw nsw i32 %931, %930
  %933 = icmp eq i32 %932, 2
  %934 = zext i1 %933 to i8
  store i8 %934, i8* %39, align 1
  %935 = add i64 %572, -16
  %936 = add i64 %608, 9
  store i64 %936, i64* %3, align 8
  %937 = inttoptr i64 %935 to i32*
  store i32 %913, i32* %937, align 4
  %.pre13 = load i64, i64* %3, align 8
  br label %block_.L_400b8b

block_.L_400b8b:                                  ; preds = %block_.L_400bc7, %block_.L_400b82
  %938 = phi i64 [ %1061, %block_.L_400bc7 ], [ %.pre13, %block_.L_400b82 ]
  store i64 0, i64* %RAX.i1508, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %CL.i1777, align 1
  %939 = load i64, i64* %RBP.i, align 8
  %940 = add i64 %939, -16
  %941 = add i64 %938, 8
  store i64 %941, i64* %3, align 8
  %942 = inttoptr i64 %940 to i32*
  %943 = load i32, i32* %942, align 4
  %944 = sext i32 %943 to i64
  store i64 %944, i64* %RDX.i2064, align 8
  %945 = shl nsw i64 %944, 2
  %946 = add i64 %939, -1248
  %947 = add i64 %946, %945
  %948 = add i64 %938, 16
  store i64 %948, i64* %3, align 8
  %949 = inttoptr i64 %947 to i32*
  %950 = load i32, i32* %949, align 4
  %951 = add i32 %950, 1
  %952 = icmp ne i32 %950, -1
  %953 = zext i1 %952 to i8
  store i8 %953, i8* %14, align 1
  %954 = and i32 %951, 255
  %955 = tail call i32 @llvm.ctpop.i32(i32 %954)
  %956 = trunc i32 %955 to i8
  %957 = and i8 %956, 1
  %958 = xor i8 %957, 1
  store i8 %958, i8* %21, align 1
  %959 = xor i32 %950, 16
  %960 = xor i32 %951, %959
  %961 = lshr i32 %960, 4
  %962 = trunc i32 %961 to i8
  %963 = and i8 %962, 1
  store i8 %963, i8* %27, align 1
  %964 = icmp eq i32 %951, 0
  %965 = zext i1 %964 to i8
  store i8 %965, i8* %30, align 1
  %966 = lshr i32 %951, 31
  %967 = trunc i32 %966 to i8
  store i8 %967, i8* %33, align 1
  %968 = lshr i32 %950, 31
  %969 = xor i32 %968, 1
  %970 = xor i32 %966, %968
  %971 = add nuw nsw i32 %970, %969
  %972 = icmp eq i32 %971, 2
  %973 = zext i1 %972 to i8
  store i8 %973, i8* %39, align 1
  %974 = add i64 %939, -2693
  %975 = add i64 %938, 22
  store i64 %975, i64* %3, align 8
  %976 = inttoptr i64 %974 to i8*
  store i8 0, i8* %976, align 1
  %977 = load i64, i64* %3, align 8
  %978 = load i8, i8* %30, align 1
  %979 = icmp eq i8 %978, 0
  %.v148 = select i1 %979, i64 19, i64 6
  %980 = add i64 %977, %.v148
  store i64 %980, i64* %3, align 8
  br i1 %979, label %block_.L_400bb4, label %block_400ba7

block_400ba7:                                     ; preds = %block_.L_400b8b
  %981 = load i64, i64* %RBP.i, align 8
  %982 = add i64 %981, -16
  %983 = add i64 %980, 4
  store i64 %983, i64* %3, align 8
  %984 = inttoptr i64 %982 to i32*
  %985 = load i32, i32* %984, align 4
  store i8 0, i8* %14, align 1
  %986 = and i32 %985, 255
  %987 = tail call i32 @llvm.ctpop.i32(i32 %986)
  %988 = trunc i32 %987 to i8
  %989 = and i8 %988, 1
  %990 = xor i8 %989, 1
  store i8 %990, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %991 = icmp eq i32 %985, 0
  %992 = zext i1 %991 to i8
  store i8 %992, i8* %30, align 1
  %993 = lshr i32 %985, 31
  %994 = trunc i32 %993 to i8
  store i8 %994, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %995 = xor i1 %991, true
  %996 = icmp eq i8 %994, 0
  %997 = and i1 %996, %995
  %998 = zext i1 %997 to i8
  store i8 %998, i8* %AL.i1776, align 1
  %999 = add i64 %981, -2693
  %1000 = add i64 %980, 13
  store i64 %1000, i64* %3, align 8
  %1001 = inttoptr i64 %999 to i8*
  store i8 %998, i8* %1001, align 1
  %.pre14 = load i64, i64* %3, align 8
  br label %block_.L_400bb4

block_.L_400bb4:                                  ; preds = %block_400ba7, %block_.L_400b8b
  %1002 = phi i64 [ %.pre14, %block_400ba7 ], [ %980, %block_.L_400b8b ]
  %1003 = load i64, i64* %RBP.i, align 8
  %1004 = add i64 %1003, -2693
  %1005 = add i64 %1002, 6
  store i64 %1005, i64* %3, align 8
  %1006 = inttoptr i64 %1004 to i8*
  %1007 = load i8, i8* %1006, align 1
  store i8 %1007, i8* %AL.i1776, align 1
  %1008 = and i8 %1007, 1
  store i8 0, i8* %14, align 1
  %1009 = zext i8 %1008 to i32
  %1010 = tail call i32 @llvm.ctpop.i32(i32 %1009)
  %1011 = trunc i32 %1010 to i8
  %1012 = xor i8 %1011, 1
  store i8 %1012, i8* %21, align 1
  %1013 = xor i8 %1008, 1
  store i8 %1013, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %1014 = icmp eq i8 %1013, 0
  %.v149 = select i1 %1014, i64 19, i64 14
  %1015 = add i64 %1002, %.v149
  store i64 %1015, i64* %3, align 8
  %1016 = add i64 %1003, -16
  br i1 %1014, label %block_.L_400bc7, label %block_400bc2

block_400bc2:                                     ; preds = %block_.L_400bb4
  %1017 = add i64 %1015, 23
  store i64 %1017, i64* %3, align 8
  %1018 = inttoptr i64 %1016 to i32*
  %1019 = load i32, i32* %1018, align 4
  store i8 0, i8* %14, align 1
  %1020 = and i32 %1019, 255
  %1021 = tail call i32 @llvm.ctpop.i32(i32 %1020)
  %1022 = trunc i32 %1021 to i8
  %1023 = and i8 %1022, 1
  %1024 = xor i8 %1023, 1
  store i8 %1024, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1025 = icmp eq i32 %1019, 0
  %1026 = zext i1 %1025 to i8
  store i8 %1026, i8* %30, align 1
  %1027 = lshr i32 %1019, 31
  %1028 = trunc i32 %1027 to i8
  store i8 %1028, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1029 = icmp ne i8 %1028, 0
  %1030 = or i1 %1025, %1029
  %.v150 = select i1 %1030, i64 116, i64 29
  %1031 = add i64 %1015, %.v150
  store i64 %1031, i64* %3, align 8
  br i1 %1030, label %block_.L_400c36, label %block_400bdf

block_.L_400bc7:                                  ; preds = %block_.L_400bb4
  %1032 = add i64 %1015, 3
  store i64 %1032, i64* %3, align 8
  %1033 = inttoptr i64 %1016 to i32*
  %1034 = load i32, i32* %1033, align 4
  %1035 = add i32 %1034, -1
  %1036 = zext i32 %1035 to i64
  store i64 %1036, i64* %RAX.i1508, align 8
  %1037 = icmp ne i32 %1034, 0
  %1038 = zext i1 %1037 to i8
  store i8 %1038, i8* %14, align 1
  %1039 = and i32 %1035, 255
  %1040 = tail call i32 @llvm.ctpop.i32(i32 %1039)
  %1041 = trunc i32 %1040 to i8
  %1042 = and i8 %1041, 1
  %1043 = xor i8 %1042, 1
  store i8 %1043, i8* %21, align 1
  %1044 = xor i32 %1034, 16
  %1045 = xor i32 %1035, %1044
  %1046 = lshr i32 %1045, 4
  %1047 = trunc i32 %1046 to i8
  %1048 = and i8 %1047, 1
  store i8 %1048, i8* %27, align 1
  %1049 = icmp eq i32 %1035, 0
  %1050 = zext i1 %1049 to i8
  store i8 %1050, i8* %30, align 1
  %1051 = lshr i32 %1035, 31
  %1052 = trunc i32 %1051 to i8
  store i8 %1052, i8* %33, align 1
  %1053 = lshr i32 %1034, 31
  %1054 = xor i32 %1051, %1053
  %1055 = xor i32 %1051, 1
  %1056 = add nuw nsw i32 %1054, %1055
  %1057 = icmp eq i32 %1056, 2
  %1058 = zext i1 %1057 to i8
  store i8 %1058, i8* %39, align 1
  %1059 = add i64 %1015, 9
  store i64 %1059, i64* %3, align 8
  store i32 %1035, i32* %1033, align 4
  %1060 = load i64, i64* %3, align 8
  %1061 = add i64 %1060, -69
  store i64 %1061, i64* %3, align 8
  br label %block_.L_400b8b

block_400bdf:                                     ; preds = %block_400bc2
  %1062 = add i64 %1031, 3
  store i64 %1062, i64* %3, align 8
  %1063 = load i32, i32* %1018, align 4
  %1064 = zext i32 %1063 to i64
  store i64 %1064, i64* %RAX.i1508, align 8
  %1065 = add i64 %1003, -8
  %1066 = add i64 %1031, 6
  store i64 %1066, i64* %3, align 8
  %1067 = inttoptr i64 %1065 to i32*
  store i32 %1063, i32* %1067, align 4
  %.pre15 = load i64, i64* %RBP.i, align 8
  %.pre16 = load i64, i64* %3, align 8
  br label %block_.L_400be5

block_.L_400be5:                                  ; preds = %block_.L_400c22, %block_400bdf
  %1068 = phi i64 [ %1205, %block_.L_400c22 ], [ %.pre16, %block_400bdf ]
  %1069 = phi i64 [ %1187, %block_.L_400c22 ], [ %.pre15, %block_400bdf ]
  %1070 = add i64 %1069, -8
  %1071 = add i64 %1068, 3
  store i64 %1071, i64* %3, align 8
  %1072 = inttoptr i64 %1070 to i32*
  %1073 = load i32, i32* %1072, align 4
  %1074 = add i32 %1073, -1
  %1075 = zext i32 %1074 to i64
  store i64 %1075, i64* %RAX.i1508, align 8
  %1076 = icmp ne i32 %1073, 0
  %1077 = zext i1 %1076 to i8
  store i8 %1077, i8* %14, align 1
  %1078 = and i32 %1074, 255
  %1079 = tail call i32 @llvm.ctpop.i32(i32 %1078)
  %1080 = trunc i32 %1079 to i8
  %1081 = and i8 %1080, 1
  %1082 = xor i8 %1081, 1
  store i8 %1082, i8* %21, align 1
  %1083 = xor i32 %1073, 16
  %1084 = xor i32 %1074, %1083
  %1085 = lshr i32 %1084, 4
  %1086 = trunc i32 %1085 to i8
  %1087 = and i8 %1086, 1
  store i8 %1087, i8* %27, align 1
  %1088 = icmp eq i32 %1074, 0
  %1089 = zext i1 %1088 to i8
  store i8 %1089, i8* %30, align 1
  %1090 = lshr i32 %1074, 31
  %1091 = trunc i32 %1090 to i8
  store i8 %1091, i8* %33, align 1
  %1092 = lshr i32 %1073, 31
  %1093 = xor i32 %1090, %1092
  %1094 = xor i32 %1090, 1
  %1095 = add nuw nsw i32 %1093, %1094
  %1096 = icmp eq i32 %1095, 2
  %1097 = zext i1 %1096 to i8
  store i8 %1097, i8* %39, align 1
  %1098 = add i64 %1068, 9
  store i64 %1098, i64* %3, align 8
  store i32 %1074, i32* %1072, align 4
  %1099 = load i64, i64* %RBP.i, align 8
  %1100 = add i64 %1099, -8
  %1101 = load i64, i64* %3, align 8
  %1102 = add i64 %1101, 4
  store i64 %1102, i64* %3, align 8
  %1103 = inttoptr i64 %1100 to i32*
  %1104 = load i32, i32* %1103, align 4
  %1105 = sext i32 %1104 to i64
  store i64 %1105, i64* %RCX.i2066, align 8
  %1106 = shl nsw i64 %1105, 2
  %1107 = add i64 %1099, -1248
  %1108 = add i64 %1107, %1106
  %1109 = add i64 %1101, 12
  store i64 %1109, i64* %3, align 8
  %1110 = inttoptr i64 %1108 to i32*
  %1111 = load i32, i32* %1110, align 4
  %1112 = add i32 %1111, 1
  %1113 = icmp ne i32 %1111, -1
  %1114 = zext i1 %1113 to i8
  store i8 %1114, i8* %14, align 1
  %1115 = and i32 %1112, 255
  %1116 = tail call i32 @llvm.ctpop.i32(i32 %1115)
  %1117 = trunc i32 %1116 to i8
  %1118 = and i8 %1117, 1
  %1119 = xor i8 %1118, 1
  store i8 %1119, i8* %21, align 1
  %1120 = xor i32 %1111, 16
  %1121 = xor i32 %1112, %1120
  %1122 = lshr i32 %1121, 4
  %1123 = trunc i32 %1122 to i8
  %1124 = and i8 %1123, 1
  store i8 %1124, i8* %27, align 1
  %1125 = icmp eq i32 %1112, 0
  %1126 = zext i1 %1125 to i8
  store i8 %1126, i8* %30, align 1
  %1127 = lshr i32 %1112, 31
  %1128 = trunc i32 %1127 to i8
  store i8 %1128, i8* %33, align 1
  %1129 = lshr i32 %1111, 31
  %1130 = xor i32 %1129, 1
  %1131 = xor i32 %1127, %1129
  %1132 = add nuw nsw i32 %1131, %1130
  %1133 = icmp eq i32 %1132, 2
  %1134 = zext i1 %1133 to i8
  store i8 %1134, i8* %39, align 1
  %.v151 = select i1 %1125, i64 52, i64 18
  %1135 = add i64 %1101, %.v151
  store i64 %1135, i64* %3, align 8
  br i1 %1125, label %block_.L_400c22, label %block_400c00

block_400c00:                                     ; preds = %block_.L_400be5
  %1136 = add i64 %1099, -16
  %1137 = add i64 %1135, 4
  store i64 %1137, i64* %3, align 8
  %1138 = inttoptr i64 %1136 to i32*
  %1139 = load i32, i32* %1138, align 4
  %1140 = sext i32 %1139 to i64
  store i64 %1140, i64* %RAX.i1508, align 8
  %1141 = shl nsw i64 %1140, 2
  %1142 = add i64 %1099, -1408
  %1143 = add i64 %1142, %1141
  %1144 = add i64 %1135, 11
  store i64 %1144, i64* %3, align 8
  %1145 = inttoptr i64 %1143 to i32*
  %1146 = load i32, i32* %1145, align 4
  %1147 = zext i32 %1146 to i64
  store i64 %1147, i64* %RCX.i2066, align 8
  %1148 = add i64 %1135, 15
  store i64 %1148, i64* %3, align 8
  %1149 = load i32, i32* %1103, align 4
  %1150 = sext i32 %1149 to i64
  store i64 %1150, i64* %RAX.i1508, align 8
  %1151 = shl nsw i64 %1150, 2
  %1152 = add i64 %1142, %1151
  %1153 = add i64 %1135, 22
  store i64 %1153, i64* %3, align 8
  %1154 = inttoptr i64 %1152 to i32*
  %1155 = load i32, i32* %1154, align 4
  %1156 = sub i32 %1146, %1155
  %1157 = icmp ult i32 %1146, %1155
  %1158 = zext i1 %1157 to i8
  store i8 %1158, i8* %14, align 1
  %1159 = and i32 %1156, 255
  %1160 = tail call i32 @llvm.ctpop.i32(i32 %1159)
  %1161 = trunc i32 %1160 to i8
  %1162 = and i8 %1161, 1
  %1163 = xor i8 %1162, 1
  store i8 %1163, i8* %21, align 1
  %1164 = xor i32 %1155, %1146
  %1165 = xor i32 %1164, %1156
  %1166 = lshr i32 %1165, 4
  %1167 = trunc i32 %1166 to i8
  %1168 = and i8 %1167, 1
  store i8 %1168, i8* %27, align 1
  %1169 = icmp eq i32 %1156, 0
  %1170 = zext i1 %1169 to i8
  store i8 %1170, i8* %30, align 1
  %1171 = lshr i32 %1156, 31
  %1172 = trunc i32 %1171 to i8
  store i8 %1172, i8* %33, align 1
  %1173 = lshr i32 %1146, 31
  %1174 = lshr i32 %1155, 31
  %1175 = xor i32 %1174, %1173
  %1176 = xor i32 %1171, %1173
  %1177 = add nuw nsw i32 %1176, %1175
  %1178 = icmp eq i32 %1177, 2
  %1179 = zext i1 %1178 to i8
  store i8 %1179, i8* %39, align 1
  %1180 = icmp ne i8 %1172, 0
  %1181 = xor i1 %1180, %1178
  %.v152 = select i1 %1181, i64 28, i64 34
  %1182 = add i64 %1135, %.v152
  store i64 %1182, i64* %3, align 8
  br i1 %1181, label %block_400c1c, label %block_.L_400c22

block_400c1c:                                     ; preds = %block_400c00
  %1183 = add i64 %1182, 3
  store i64 %1183, i64* %3, align 8
  %1184 = load i32, i32* %1103, align 4
  %1185 = zext i32 %1184 to i64
  store i64 %1185, i64* %RAX.i1508, align 8
  %1186 = add i64 %1182, 6
  store i64 %1186, i64* %3, align 8
  store i32 %1184, i32* %1138, align 4
  %.pre17 = load i64, i64* %3, align 8
  %.pre18 = load i64, i64* %RBP.i, align 8
  br label %block_.L_400c22

block_.L_400c22:                                  ; preds = %block_400c00, %block_400c1c, %block_.L_400be5
  %1187 = phi i64 [ %.pre18, %block_400c1c ], [ %1099, %block_400c00 ], [ %1099, %block_.L_400be5 ]
  %1188 = phi i64 [ %.pre17, %block_400c1c ], [ %1182, %block_400c00 ], [ %1135, %block_.L_400be5 ]
  %1189 = add i64 %1187, -8
  %1190 = add i64 %1188, 9
  store i64 %1190, i64* %3, align 8
  %1191 = inttoptr i64 %1189 to i32*
  %1192 = load i32, i32* %1191, align 4
  store i8 0, i8* %14, align 1
  %1193 = and i32 %1192, 255
  %1194 = tail call i32 @llvm.ctpop.i32(i32 %1193)
  %1195 = trunc i32 %1194 to i8
  %1196 = and i8 %1195, 1
  %1197 = xor i8 %1196, 1
  store i8 %1197, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1198 = icmp eq i32 %1192, 0
  %1199 = zext i1 %1198 to i8
  store i8 %1199, i8* %30, align 1
  %1200 = lshr i32 %1192, 31
  %1201 = trunc i32 %1200 to i8
  store i8 %1201, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1202 = xor i1 %1198, true
  %1203 = icmp eq i8 %1201, 0
  %1204 = and i1 %1203, %1202
  %.v153 = select i1 %1204, i64 -61, i64 15
  %1205 = add i64 %1188, %.v153
  store i64 %1205, i64* %3, align 8
  br i1 %1204, label %block_.L_400be5, label %block_400c31

block_400c31:                                     ; preds = %block_.L_400c22
  %1206 = add i64 %1205, 5
  store i64 %1206, i64* %3, align 8
  br label %block_.L_400c36

block_.L_400c36:                                  ; preds = %block_400c31, %block_400bc2
  %1207 = phi i64 [ %1206, %block_400c31 ], [ %1031, %block_400bc2 ]
  %1208 = phi i64 [ %1187, %block_400c31 ], [ %1003, %block_400bc2 ]
  %1209 = add i64 %1208, -12
  %1210 = add i64 %1207, 4
  store i64 %1210, i64* %3, align 8
  %1211 = inttoptr i64 %1209 to i32*
  %1212 = load i32, i32* %1211, align 4
  %1213 = sext i32 %1212 to i64
  store i64 %1213, i64* %RAX.i1508, align 8
  %1214 = shl nsw i64 %1213, 2
  %1215 = add i64 %1208, -1328
  %1216 = add i64 %1215, %1214
  %1217 = add i64 %1207, 11
  store i64 %1217, i64* %3, align 8
  %1218 = inttoptr i64 %1216 to i32*
  %1219 = load i32, i32* %1218, align 4
  %1220 = zext i32 %1219 to i64
  store i64 %1220, i64* %RCX.i2066, align 8
  %1221 = add i64 %1208, -16
  %1222 = add i64 %1207, 15
  store i64 %1222, i64* %3, align 8
  %1223 = inttoptr i64 %1221 to i32*
  %1224 = load i32, i32* %1223, align 4
  %1225 = sext i32 %1224 to i64
  store i64 %1225, i64* %RAX.i1508, align 8
  %1226 = shl nsw i64 %1225, 2
  %1227 = add i64 %1215, %1226
  %1228 = add i64 %1207, 22
  store i64 %1228, i64* %3, align 8
  %1229 = inttoptr i64 %1227 to i32*
  %1230 = load i32, i32* %1229, align 4
  %1231 = zext i32 %1230 to i64
  store i64 %1231, i64* %RDX.i2064, align 8
  %1232 = add i64 %1207, 25
  store i64 %1232, i64* %3, align 8
  %1233 = load i32, i32* %1211, align 4
  %1234 = add i32 %1233, %1230
  %1235 = zext i32 %1234 to i64
  store i64 %1235, i64* %RDX.i2064, align 8
  %1236 = icmp ult i32 %1234, %1230
  %1237 = icmp ult i32 %1234, %1233
  %1238 = or i1 %1236, %1237
  %1239 = zext i1 %1238 to i8
  store i8 %1239, i8* %14, align 1
  %1240 = and i32 %1234, 255
  %1241 = tail call i32 @llvm.ctpop.i32(i32 %1240)
  %1242 = trunc i32 %1241 to i8
  %1243 = and i8 %1242, 1
  %1244 = xor i8 %1243, 1
  store i8 %1244, i8* %21, align 1
  %1245 = xor i32 %1233, %1230
  %1246 = xor i32 %1245, %1234
  %1247 = lshr i32 %1246, 4
  %1248 = trunc i32 %1247 to i8
  %1249 = and i8 %1248, 1
  store i8 %1249, i8* %27, align 1
  %1250 = icmp eq i32 %1234, 0
  %1251 = zext i1 %1250 to i8
  store i8 %1251, i8* %30, align 1
  %1252 = lshr i32 %1234, 31
  %1253 = trunc i32 %1252 to i8
  store i8 %1253, i8* %33, align 1
  %1254 = lshr i32 %1230, 31
  %1255 = lshr i32 %1233, 31
  %1256 = xor i32 %1252, %1254
  %1257 = xor i32 %1252, %1255
  %1258 = add nuw nsw i32 %1256, %1257
  %1259 = icmp eq i32 %1258, 2
  %1260 = zext i1 %1259 to i8
  store i8 %1260, i8* %39, align 1
  %1261 = add i64 %1207, 28
  store i64 %1261, i64* %3, align 8
  %1262 = load i32, i32* %1223, align 4
  %1263 = sub i32 %1234, %1262
  %1264 = zext i32 %1263 to i64
  store i64 %1264, i64* %RDX.i2064, align 8
  %1265 = lshr i32 %1263, 31
  %1266 = sub i32 %1219, %1263
  %1267 = icmp ult i32 %1219, %1263
  %1268 = zext i1 %1267 to i8
  store i8 %1268, i8* %14, align 1
  %1269 = and i32 %1266, 255
  %1270 = tail call i32 @llvm.ctpop.i32(i32 %1269)
  %1271 = trunc i32 %1270 to i8
  %1272 = and i8 %1271, 1
  %1273 = xor i8 %1272, 1
  store i8 %1273, i8* %21, align 1
  %1274 = xor i32 %1263, %1219
  %1275 = xor i32 %1274, %1266
  %1276 = lshr i32 %1275, 4
  %1277 = trunc i32 %1276 to i8
  %1278 = and i8 %1277, 1
  store i8 %1278, i8* %27, align 1
  %1279 = icmp eq i32 %1266, 0
  %1280 = zext i1 %1279 to i8
  store i8 %1280, i8* %30, align 1
  %1281 = lshr i32 %1266, 31
  %1282 = trunc i32 %1281 to i8
  store i8 %1282, i8* %33, align 1
  %1283 = lshr i32 %1219, 31
  %1284 = xor i32 %1265, %1283
  %1285 = xor i32 %1281, %1283
  %1286 = add nuw nsw i32 %1285, %1284
  %1287 = icmp eq i32 %1286, 2
  %1288 = zext i1 %1287 to i8
  store i8 %1288, i8* %39, align 1
  %1289 = icmp ne i8 %1282, 0
  %1290 = xor i1 %1289, %1287
  %1291 = or i1 %1279, %1290
  %.v154 = select i1 %1291, i64 68, i64 36
  %1292 = add i64 %1207, %.v154
  store i64 %1292, i64* %3, align 8
  %1293 = load i64, i64* %RBP.i, align 8
  br i1 %1291, label %block_.L_400c7a, label %block_400c5a

block_400c5a:                                     ; preds = %block_.L_400c36
  %1294 = add i64 %1293, -12
  %1295 = add i64 %1292, 4
  store i64 %1295, i64* %3, align 8
  %1296 = inttoptr i64 %1294 to i32*
  %1297 = load i32, i32* %1296, align 4
  %1298 = sext i32 %1297 to i64
  store i64 %1298, i64* %RAX.i1508, align 8
  %1299 = shl nsw i64 %1298, 2
  %1300 = add i64 %1293, -1328
  %1301 = add i64 %1300, %1299
  %1302 = add i64 %1292, 11
  store i64 %1302, i64* %3, align 8
  %1303 = inttoptr i64 %1301 to i32*
  %1304 = load i32, i32* %1303, align 4
  %1305 = zext i32 %1304 to i64
  store i64 %1305, i64* %RCX.i2066, align 8
  %1306 = add i64 %1292, 14
  store i64 %1306, i64* %3, align 8
  %1307 = load i32, i32* %1296, align 4
  %1308 = add i32 %1307, 1
  %1309 = zext i32 %1308 to i64
  store i64 %1309, i64* %RDX.i2064, align 8
  %1310 = icmp eq i32 %1307, -1
  %1311 = icmp eq i32 %1308, 0
  %1312 = or i1 %1310, %1311
  %1313 = zext i1 %1312 to i8
  store i8 %1313, i8* %14, align 1
  %1314 = and i32 %1308, 255
  %1315 = tail call i32 @llvm.ctpop.i32(i32 %1314)
  %1316 = trunc i32 %1315 to i8
  %1317 = and i8 %1316, 1
  %1318 = xor i8 %1317, 1
  store i8 %1318, i8* %21, align 1
  %1319 = xor i32 %1307, %1308
  %1320 = lshr i32 %1319, 4
  %1321 = trunc i32 %1320 to i8
  %1322 = and i8 %1321, 1
  store i8 %1322, i8* %27, align 1
  %1323 = zext i1 %1311 to i8
  store i8 %1323, i8* %30, align 1
  %1324 = lshr i32 %1308, 31
  %1325 = trunc i32 %1324 to i8
  store i8 %1325, i8* %33, align 1
  %1326 = lshr i32 %1307, 31
  %1327 = xor i32 %1324, %1326
  %1328 = add nuw nsw i32 %1327, %1324
  %1329 = icmp eq i32 %1328, 2
  %1330 = zext i1 %1329 to i8
  store i8 %1330, i8* %39, align 1
  %1331 = sext i32 %1308 to i64
  store i64 %1331, i64* %RAX.i1508, align 8
  %1332 = shl nsw i64 %1331, 2
  %1333 = add i64 %1300, %1332
  %1334 = add i64 %1292, 27
  store i64 %1334, i64* %3, align 8
  %1335 = inttoptr i64 %1333 to i32*
  store i32 %1304, i32* %1335, align 4
  %1336 = load i64, i64* %3, align 8
  %1337 = add i64 %1336, 38
  store i64 %1337, i64* %3, align 8
  br label %block_.L_400c9b

block_.L_400c7a:                                  ; preds = %block_.L_400c36
  %1338 = add i64 %1293, -16
  %1339 = add i64 %1292, 4
  store i64 %1339, i64* %3, align 8
  %1340 = inttoptr i64 %1338 to i32*
  %1341 = load i32, i32* %1340, align 4
  %1342 = sext i32 %1341 to i64
  store i64 %1342, i64* %RAX.i1508, align 8
  %1343 = shl nsw i64 %1342, 2
  %1344 = add i64 %1293, -1328
  %1345 = add i64 %1344, %1343
  %1346 = add i64 %1292, 11
  store i64 %1346, i64* %3, align 8
  %1347 = inttoptr i64 %1345 to i32*
  %1348 = load i32, i32* %1347, align 4
  %1349 = zext i32 %1348 to i64
  store i64 %1349, i64* %RCX.i2066, align 8
  %1350 = add i64 %1293, -12
  %1351 = add i64 %1292, 14
  store i64 %1351, i64* %3, align 8
  %1352 = inttoptr i64 %1350 to i32*
  %1353 = load i32, i32* %1352, align 4
  %1354 = add i32 %1353, %1348
  %1355 = zext i32 %1354 to i64
  store i64 %1355, i64* %RCX.i2066, align 8
  %1356 = icmp ult i32 %1354, %1348
  %1357 = icmp ult i32 %1354, %1353
  %1358 = or i1 %1356, %1357
  %1359 = zext i1 %1358 to i8
  store i8 %1359, i8* %14, align 1
  %1360 = and i32 %1354, 255
  %1361 = tail call i32 @llvm.ctpop.i32(i32 %1360)
  %1362 = trunc i32 %1361 to i8
  %1363 = and i8 %1362, 1
  %1364 = xor i8 %1363, 1
  store i8 %1364, i8* %21, align 1
  %1365 = xor i32 %1353, %1348
  %1366 = xor i32 %1365, %1354
  %1367 = lshr i32 %1366, 4
  %1368 = trunc i32 %1367 to i8
  %1369 = and i8 %1368, 1
  store i8 %1369, i8* %27, align 1
  %1370 = icmp eq i32 %1354, 0
  %1371 = zext i1 %1370 to i8
  store i8 %1371, i8* %30, align 1
  %1372 = lshr i32 %1354, 31
  %1373 = trunc i32 %1372 to i8
  store i8 %1373, i8* %33, align 1
  %1374 = lshr i32 %1348, 31
  %1375 = lshr i32 %1353, 31
  %1376 = xor i32 %1372, %1374
  %1377 = xor i32 %1372, %1375
  %1378 = add nuw nsw i32 %1376, %1377
  %1379 = icmp eq i32 %1378, 2
  %1380 = zext i1 %1379 to i8
  store i8 %1380, i8* %39, align 1
  %1381 = add i64 %1292, 17
  store i64 %1381, i64* %3, align 8
  %1382 = load i32, i32* %1340, align 4
  %1383 = sub i32 %1354, %1382
  %1384 = zext i32 %1383 to i64
  store i64 %1384, i64* %RCX.i2066, align 8
  %1385 = icmp ult i32 %1354, %1382
  %1386 = zext i1 %1385 to i8
  store i8 %1386, i8* %14, align 1
  %1387 = and i32 %1383, 255
  %1388 = tail call i32 @llvm.ctpop.i32(i32 %1387)
  %1389 = trunc i32 %1388 to i8
  %1390 = and i8 %1389, 1
  %1391 = xor i8 %1390, 1
  store i8 %1391, i8* %21, align 1
  %1392 = xor i32 %1382, %1354
  %1393 = xor i32 %1392, %1383
  %1394 = lshr i32 %1393, 4
  %1395 = trunc i32 %1394 to i8
  %1396 = and i8 %1395, 1
  store i8 %1396, i8* %27, align 1
  %1397 = icmp eq i32 %1383, 0
  %1398 = zext i1 %1397 to i8
  store i8 %1398, i8* %30, align 1
  %1399 = lshr i32 %1383, 31
  %1400 = trunc i32 %1399 to i8
  store i8 %1400, i8* %33, align 1
  %1401 = lshr i32 %1382, 31
  %1402 = xor i32 %1401, %1372
  %1403 = xor i32 %1399, %1372
  %1404 = add nuw nsw i32 %1403, %1402
  %1405 = icmp eq i32 %1404, 2
  %1406 = zext i1 %1405 to i8
  store i8 %1406, i8* %39, align 1
  %1407 = add i64 %1292, 20
  store i64 %1407, i64* %3, align 8
  %1408 = load i32, i32* %1352, align 4
  %1409 = add i32 %1408, 1
  %1410 = zext i32 %1409 to i64
  store i64 %1410, i64* %RDX.i2064, align 8
  %1411 = icmp eq i32 %1408, -1
  %1412 = icmp eq i32 %1409, 0
  %1413 = or i1 %1411, %1412
  %1414 = zext i1 %1413 to i8
  store i8 %1414, i8* %14, align 1
  %1415 = and i32 %1409, 255
  %1416 = tail call i32 @llvm.ctpop.i32(i32 %1415)
  %1417 = trunc i32 %1416 to i8
  %1418 = and i8 %1417, 1
  %1419 = xor i8 %1418, 1
  store i8 %1419, i8* %21, align 1
  %1420 = xor i32 %1408, %1409
  %1421 = lshr i32 %1420, 4
  %1422 = trunc i32 %1421 to i8
  %1423 = and i8 %1422, 1
  store i8 %1423, i8* %27, align 1
  %1424 = zext i1 %1412 to i8
  store i8 %1424, i8* %30, align 1
  %1425 = lshr i32 %1409, 31
  %1426 = trunc i32 %1425 to i8
  store i8 %1426, i8* %33, align 1
  %1427 = lshr i32 %1408, 31
  %1428 = xor i32 %1425, %1427
  %1429 = add nuw nsw i32 %1428, %1425
  %1430 = icmp eq i32 %1429, 2
  %1431 = zext i1 %1430 to i8
  store i8 %1431, i8* %39, align 1
  %1432 = sext i32 %1409 to i64
  store i64 %1432, i64* %RAX.i1508, align 8
  %1433 = load i64, i64* %RBP.i, align 8
  %1434 = shl nsw i64 %1432, 2
  %1435 = add i64 %1433, -1328
  %1436 = add i64 %1435, %1434
  %1437 = add i64 %1292, 33
  store i64 %1437, i64* %3, align 8
  %1438 = inttoptr i64 %1436 to i32*
  store i32 %1383, i32* %1438, align 4
  %.pre19 = load i64, i64* %3, align 8
  br label %block_.L_400c9b

block_.L_400c9b:                                  ; preds = %block_.L_400c7a, %block_400c5a
  %1439 = phi i64 [ %.pre19, %block_.L_400c7a ], [ %1337, %block_400c5a ]
  %1440 = load i64, i64* %RBP.i, align 8
  %1441 = add i64 %1440, -4
  %1442 = add i64 %1439, 7
  store i64 %1442, i64* %3, align 8
  %1443 = inttoptr i64 %1441 to i32*
  store i32 0, i32* %1443, align 4
  %.pre20 = load i64, i64* %3, align 8
  br label %block_.L_400ca2

block_.L_400ca2:                                  ; preds = %block_400cac, %block_.L_400c9b
  %1444 = phi i64 [ %1552, %block_400cac ], [ %.pre20, %block_.L_400c9b ]
  %1445 = load i64, i64* %RBP.i, align 8
  %1446 = add i64 %1445, -4
  %1447 = add i64 %1444, 4
  store i64 %1447, i64* %3, align 8
  %1448 = inttoptr i64 %1446 to i32*
  %1449 = load i32, i32* %1448, align 4
  %1450 = add i32 %1449, -16
  %1451 = icmp ult i32 %1449, 16
  %1452 = zext i1 %1451 to i8
  store i8 %1452, i8* %14, align 1
  %1453 = and i32 %1450, 255
  %1454 = tail call i32 @llvm.ctpop.i32(i32 %1453)
  %1455 = trunc i32 %1454 to i8
  %1456 = and i8 %1455, 1
  %1457 = xor i8 %1456, 1
  store i8 %1457, i8* %21, align 1
  %1458 = xor i32 %1449, 16
  %1459 = xor i32 %1458, %1450
  %1460 = lshr i32 %1459, 4
  %1461 = trunc i32 %1460 to i8
  %1462 = and i8 %1461, 1
  store i8 %1462, i8* %27, align 1
  %1463 = icmp eq i32 %1450, 0
  %1464 = zext i1 %1463 to i8
  store i8 %1464, i8* %30, align 1
  %1465 = lshr i32 %1450, 31
  %1466 = trunc i32 %1465 to i8
  store i8 %1466, i8* %33, align 1
  %1467 = lshr i32 %1449, 31
  %1468 = xor i32 %1465, %1467
  %1469 = add nuw nsw i32 %1468, %1467
  %1470 = icmp eq i32 %1469, 2
  %1471 = zext i1 %1470 to i8
  store i8 %1471, i8* %39, align 1
  %1472 = icmp ne i8 %1466, 0
  %1473 = xor i1 %1472, %1470
  %.v155 = select i1 %1473, i64 10, i64 58
  %1474 = add i64 %1444, %.v155
  store i64 %1474, i64* %3, align 8
  br i1 %1473, label %block_400cac, label %block_.L_400cdc

block_400cac:                                     ; preds = %block_.L_400ca2
  %1475 = add i64 %1445, -1168
  store i64 %1475, i64* %RAX.i1508, align 8
  %1476 = add i64 %1445, -12
  %1477 = add i64 %1474, 10
  store i64 %1477, i64* %3, align 8
  %1478 = inttoptr i64 %1476 to i32*
  %1479 = load i32, i32* %1478, align 4
  %1480 = add i32 %1479, 1
  %1481 = zext i32 %1480 to i64
  store i64 %1481, i64* %RCX.i2066, align 8
  %1482 = sext i32 %1480 to i64
  %1483 = shl nsw i64 %1482, 6
  store i64 %1483, i64* %RDX.i2064, align 8
  %1484 = lshr i64 %1482, 57
  %1485 = and i64 %1484, 1
  %1486 = add i64 %1483, %1475
  store i64 %1486, i64* %RAX.i1508, align 8
  %1487 = icmp ult i64 %1486, %1475
  %1488 = icmp ult i64 %1486, %1483
  %1489 = or i1 %1487, %1488
  %1490 = zext i1 %1489 to i8
  store i8 %1490, i8* %14, align 1
  %1491 = trunc i64 %1486 to i32
  %1492 = and i32 %1491, 255
  %1493 = tail call i32 @llvm.ctpop.i32(i32 %1492)
  %1494 = trunc i32 %1493 to i8
  %1495 = and i8 %1494, 1
  %1496 = xor i8 %1495, 1
  store i8 %1496, i8* %21, align 1
  %1497 = xor i64 %1475, %1486
  %1498 = lshr i64 %1497, 4
  %1499 = trunc i64 %1498 to i8
  %1500 = and i8 %1499, 1
  store i8 %1500, i8* %27, align 1
  %1501 = icmp eq i64 %1486, 0
  %1502 = zext i1 %1501 to i8
  store i8 %1502, i8* %30, align 1
  %1503 = lshr i64 %1486, 63
  %1504 = trunc i64 %1503 to i8
  store i8 %1504, i8* %33, align 1
  %1505 = lshr i64 %1475, 63
  %1506 = xor i64 %1503, %1505
  %1507 = xor i64 %1503, %1485
  %1508 = add nuw nsw i64 %1506, %1507
  %1509 = icmp eq i64 %1508, 2
  %1510 = zext i1 %1509 to i8
  store i8 %1510, i8* %39, align 1
  %1511 = load i64, i64* %RBP.i, align 8
  %1512 = add i64 %1511, -4
  %1513 = add i64 %1474, 27
  store i64 %1513, i64* %3, align 8
  %1514 = inttoptr i64 %1512 to i32*
  %1515 = load i32, i32* %1514, align 4
  %1516 = sext i32 %1515 to i64
  store i64 %1516, i64* %RDX.i2064, align 8
  %1517 = shl nsw i64 %1516, 2
  %1518 = add i64 %1517, %1486
  %1519 = add i64 %1474, 34
  store i64 %1519, i64* %3, align 8
  %1520 = inttoptr i64 %1518 to i32*
  store i32 0, i32* %1520, align 4
  %1521 = load i64, i64* %RBP.i, align 8
  %1522 = add i64 %1521, -4
  %1523 = load i64, i64* %3, align 8
  %1524 = add i64 %1523, 3
  store i64 %1524, i64* %3, align 8
  %1525 = inttoptr i64 %1522 to i32*
  %1526 = load i32, i32* %1525, align 4
  %1527 = add i32 %1526, 1
  %1528 = zext i32 %1527 to i64
  store i64 %1528, i64* %RAX.i1508, align 8
  %1529 = icmp eq i32 %1526, -1
  %1530 = icmp eq i32 %1527, 0
  %1531 = or i1 %1529, %1530
  %1532 = zext i1 %1531 to i8
  store i8 %1532, i8* %14, align 1
  %1533 = and i32 %1527, 255
  %1534 = tail call i32 @llvm.ctpop.i32(i32 %1533)
  %1535 = trunc i32 %1534 to i8
  %1536 = and i8 %1535, 1
  %1537 = xor i8 %1536, 1
  store i8 %1537, i8* %21, align 1
  %1538 = xor i32 %1526, %1527
  %1539 = lshr i32 %1538, 4
  %1540 = trunc i32 %1539 to i8
  %1541 = and i8 %1540, 1
  store i8 %1541, i8* %27, align 1
  %1542 = zext i1 %1530 to i8
  store i8 %1542, i8* %30, align 1
  %1543 = lshr i32 %1527, 31
  %1544 = trunc i32 %1543 to i8
  store i8 %1544, i8* %33, align 1
  %1545 = lshr i32 %1526, 31
  %1546 = xor i32 %1543, %1545
  %1547 = add nuw nsw i32 %1546, %1543
  %1548 = icmp eq i32 %1547, 2
  %1549 = zext i1 %1548 to i8
  store i8 %1549, i8* %39, align 1
  %1550 = add i64 %1523, 9
  store i64 %1550, i64* %3, align 8
  store i32 %1527, i32* %1525, align 4
  %1551 = load i64, i64* %3, align 8
  %1552 = add i64 %1551, -53
  store i64 %1552, i64* %3, align 8
  br label %block_.L_400ca2

block_.L_400cdc:                                  ; preds = %block_.L_400ca2
  %1553 = add i64 %1474, 7
  store i64 %1553, i64* %3, align 8
  store i32 0, i32* %1448, align 4
  %.pre21 = load i64, i64* %3, align 8
  br label %block_.L_400ce3

block_.L_400ce3:                                  ; preds = %block_.L_400d91, %block_.L_400cdc
  %1554 = phi i64 [ %.pre21, %block_.L_400cdc ], [ %1995, %block_.L_400d91 ]
  %MEMORY.14 = phi %struct.Memory* [ %MEMORY.5, %block_.L_400cdc ], [ %MEMORY.15, %block_.L_400d91 ]
  %1555 = load i64, i64* %RBP.i, align 8
  %1556 = add i64 %1555, -4
  %1557 = add i64 %1554, 3
  store i64 %1557, i64* %3, align 8
  %1558 = inttoptr i64 %1556 to i32*
  %1559 = load i32, i32* %1558, align 4
  %1560 = zext i32 %1559 to i64
  store i64 %1560, i64* %RAX.i1508, align 8
  %1561 = add i64 %1555, -16
  %1562 = add i64 %1554, 7
  store i64 %1562, i64* %3, align 8
  %1563 = inttoptr i64 %1561 to i32*
  %1564 = load i32, i32* %1563, align 4
  %1565 = sext i32 %1564 to i64
  store i64 %1565, i64* %RCX.i2066, align 8
  %1566 = shl nsw i64 %1565, 2
  %1567 = add i64 %1555, -1328
  %1568 = add i64 %1567, %1566
  %1569 = add i64 %1554, 14
  store i64 %1569, i64* %3, align 8
  %1570 = inttoptr i64 %1568 to i32*
  %1571 = load i32, i32* %1570, align 4
  %1572 = sub i32 %1559, %1571
  %1573 = icmp ult i32 %1559, %1571
  %1574 = zext i1 %1573 to i8
  store i8 %1574, i8* %14, align 1
  %1575 = and i32 %1572, 255
  %1576 = tail call i32 @llvm.ctpop.i32(i32 %1575)
  %1577 = trunc i32 %1576 to i8
  %1578 = and i8 %1577, 1
  %1579 = xor i8 %1578, 1
  store i8 %1579, i8* %21, align 1
  %1580 = xor i32 %1571, %1559
  %1581 = xor i32 %1580, %1572
  %1582 = lshr i32 %1581, 4
  %1583 = trunc i32 %1582 to i8
  %1584 = and i8 %1583, 1
  store i8 %1584, i8* %27, align 1
  %1585 = icmp eq i32 %1572, 0
  %1586 = zext i1 %1585 to i8
  store i8 %1586, i8* %30, align 1
  %1587 = lshr i32 %1572, 31
  %1588 = trunc i32 %1587 to i8
  store i8 %1588, i8* %33, align 1
  %1589 = lshr i32 %1559, 31
  %1590 = lshr i32 %1571, 31
  %1591 = xor i32 %1590, %1589
  %1592 = xor i32 %1587, %1589
  %1593 = add nuw nsw i32 %1592, %1591
  %1594 = icmp eq i32 %1593, 2
  %1595 = zext i1 %1594 to i8
  store i8 %1595, i8* %39, align 1
  %1596 = icmp ne i8 %1588, 0
  %1597 = xor i1 %1596, %1594
  %.demorgan156 = or i1 %1585, %1597
  %.v157 = select i1 %.demorgan156, i64 20, i64 193
  %1598 = add i64 %1554, %.v157
  store i64 %1598, i64* %3, align 8
  br i1 %.demorgan156, label %block_400cf7, label %block_.L_400da4

block_400cf7:                                     ; preds = %block_.L_400ce3
  %1599 = add i64 %1555, -1168
  store i64 %1599, i64* %RAX.i1508, align 8
  %1600 = add i64 %1598, 11
  store i64 %1600, i64* %3, align 8
  %1601 = load i32, i32* %1563, align 4
  %1602 = sext i32 %1601 to i64
  %1603 = shl nsw i64 %1602, 6
  store i64 %1603, i64* %RCX.i2066, align 8
  %1604 = lshr i64 %1602, 57
  %1605 = and i64 %1604, 1
  %1606 = add i64 %1603, %1599
  store i64 %1606, i64* %RAX.i1508, align 8
  %1607 = icmp ult i64 %1606, %1599
  %1608 = icmp ult i64 %1606, %1603
  %1609 = or i1 %1607, %1608
  %1610 = zext i1 %1609 to i8
  store i8 %1610, i8* %14, align 1
  %1611 = trunc i64 %1606 to i32
  %1612 = and i32 %1611, 255
  %1613 = tail call i32 @llvm.ctpop.i32(i32 %1612)
  %1614 = trunc i32 %1613 to i8
  %1615 = and i8 %1614, 1
  %1616 = xor i8 %1615, 1
  store i8 %1616, i8* %21, align 1
  %1617 = xor i64 %1599, %1606
  %1618 = lshr i64 %1617, 4
  %1619 = trunc i64 %1618 to i8
  %1620 = and i8 %1619, 1
  store i8 %1620, i8* %27, align 1
  %1621 = icmp eq i64 %1606, 0
  %1622 = zext i1 %1621 to i8
  store i8 %1622, i8* %30, align 1
  %1623 = lshr i64 %1606, 63
  %1624 = trunc i64 %1623 to i8
  store i8 %1624, i8* %33, align 1
  %1625 = lshr i64 %1599, 63
  %1626 = xor i64 %1623, %1625
  %1627 = xor i64 %1623, %1605
  %1628 = add nuw nsw i64 %1626, %1627
  %1629 = icmp eq i64 %1628, 2
  %1630 = zext i1 %1629 to i8
  store i8 %1630, i8* %39, align 1
  %1631 = add i64 %1598, 22
  store i64 %1631, i64* %3, align 8
  %1632 = load i32, i32* %1558, align 4
  %1633 = sext i32 %1632 to i64
  store i64 %1633, i64* %RCX.i2066, align 8
  %1634 = shl nsw i64 %1633, 2
  %1635 = add i64 %1634, %1606
  %1636 = add i64 %1598, 26
  store i64 %1636, i64* %3, align 8
  %1637 = inttoptr i64 %1635 to i32*
  %1638 = load i32, i32* %1637, align 4
  %1639 = add i32 %1638, 1
  %1640 = icmp ne i32 %1638, -1
  %1641 = zext i1 %1640 to i8
  store i8 %1641, i8* %14, align 1
  %1642 = and i32 %1639, 255
  %1643 = tail call i32 @llvm.ctpop.i32(i32 %1642)
  %1644 = trunc i32 %1643 to i8
  %1645 = and i8 %1644, 1
  %1646 = xor i8 %1645, 1
  store i8 %1646, i8* %21, align 1
  %1647 = xor i32 %1638, 16
  %1648 = xor i32 %1639, %1647
  %1649 = lshr i32 %1648, 4
  %1650 = trunc i32 %1649 to i8
  %1651 = and i8 %1650, 1
  store i8 %1651, i8* %27, align 1
  %1652 = icmp eq i32 %1639, 0
  %1653 = zext i1 %1652 to i8
  store i8 %1653, i8* %30, align 1
  %1654 = lshr i32 %1639, 31
  %1655 = trunc i32 %1654 to i8
  store i8 %1655, i8* %33, align 1
  %1656 = lshr i32 %1638, 31
  %1657 = xor i32 %1656, 1
  %1658 = xor i32 %1654, %1656
  %1659 = add nuw nsw i32 %1658, %1657
  %1660 = icmp eq i32 %1659, 2
  %1661 = zext i1 %1660 to i8
  store i8 %1661, i8* %39, align 1
  %.v158 = select i1 %1652, i64 154, i64 32
  %1662 = add i64 %1598, %.v158
  store i64 %1662, i64* %3, align 8
  br i1 %1652, label %block_.L_400d91, label %block_400d17

block_400d17:                                     ; preds = %block_400cf7
  %1663 = load i64, i64* %RBP.i, align 8
  %1664 = add i64 %1663, -1168
  store i64 %1664, i64* %RAX.i1508, align 8
  store i64 255, i64* %RCX.i2066, align 8
  %1665 = add i64 %1663, -12
  %1666 = add i64 %1662, 16
  store i64 %1666, i64* %3, align 8
  %1667 = inttoptr i64 %1665 to i32*
  %1668 = load i32, i32* %1667, align 4
  %1669 = sext i32 %1668 to i64
  store i64 %1669, i64* %RDX.i2064, align 8
  %1670 = shl nsw i64 %1669, 2
  %1671 = add i64 %1663, -1248
  %1672 = add i64 %1671, %1670
  %1673 = add i64 %1662, 23
  store i64 %1673, i64* %3, align 8
  %1674 = inttoptr i64 %1672 to i32*
  %1675 = load i32, i32* %1674, align 4
  %1676 = add i32 %1675, 255
  %1677 = zext i32 %1676 to i64
  store i64 %1677, i64* %RSI.i2060, align 8
  %1678 = icmp ugt i32 %1675, -256
  %1679 = zext i1 %1678 to i8
  store i8 %1679, i8* %14, align 1
  %1680 = and i32 %1676, 255
  %1681 = tail call i32 @llvm.ctpop.i32(i32 %1680)
  %1682 = trunc i32 %1681 to i8
  %1683 = and i8 %1682, 1
  %1684 = xor i8 %1683, 1
  store i8 %1684, i8* %21, align 1
  %1685 = xor i32 %1675, 16
  %1686 = xor i32 %1685, %1676
  %1687 = lshr i32 %1686, 4
  %1688 = trunc i32 %1687 to i8
  %1689 = and i8 %1688, 1
  store i8 %1689, i8* %27, align 1
  %1690 = icmp eq i32 %1676, 0
  %1691 = zext i1 %1690 to i8
  store i8 %1691, i8* %30, align 1
  %1692 = lshr i32 %1676, 31
  %1693 = trunc i32 %1692 to i8
  store i8 %1693, i8* %33, align 1
  %1694 = lshr i32 %1675, 31
  %1695 = xor i32 %1692, %1694
  %1696 = add nuw nsw i32 %1695, %1692
  %1697 = icmp eq i32 %1696, 2
  %1698 = zext i1 %1697 to i8
  store i8 %1698, i8* %39, align 1
  %1699 = add i64 %1663, -16
  %1700 = add i64 %1662, 33
  store i64 %1700, i64* %3, align 8
  %1701 = inttoptr i64 %1699 to i32*
  %1702 = load i32, i32* %1701, align 4
  %1703 = sext i32 %1702 to i64
  store i64 %1703, i64* %RDX.i2064, align 8
  %1704 = shl nsw i64 %1703, 2
  %1705 = add i64 %1671, %1704
  %1706 = add i64 %1662, 40
  store i64 %1706, i64* %3, align 8
  %1707 = inttoptr i64 %1705 to i32*
  %1708 = load i32, i32* %1707, align 4
  %1709 = sub i32 %1676, %1708
  %1710 = zext i32 %1709 to i64
  store i64 %1710, i64* %RSI.i2060, align 8
  %1711 = icmp ult i32 %1676, %1708
  %1712 = zext i1 %1711 to i8
  store i8 %1712, i8* %14, align 1
  %1713 = and i32 %1709, 255
  %1714 = tail call i32 @llvm.ctpop.i32(i32 %1713)
  %1715 = trunc i32 %1714 to i8
  %1716 = and i8 %1715, 1
  %1717 = xor i8 %1716, 1
  store i8 %1717, i8* %21, align 1
  %1718 = xor i32 %1708, %1676
  %1719 = xor i32 %1718, %1709
  %1720 = lshr i32 %1719, 4
  %1721 = trunc i32 %1720 to i8
  %1722 = and i8 %1721, 1
  store i8 %1722, i8* %27, align 1
  %1723 = icmp eq i32 %1709, 0
  %1724 = zext i1 %1723 to i8
  store i8 %1724, i8* %30, align 1
  %1725 = lshr i32 %1709, 31
  %1726 = trunc i32 %1725 to i8
  store i8 %1726, i8* %33, align 1
  %1727 = lshr i32 %1708, 31
  %1728 = xor i32 %1727, %1692
  %1729 = xor i32 %1725, %1692
  %1730 = add nuw nsw i32 %1729, %1728
  %1731 = icmp eq i32 %1730, 2
  %1732 = zext i1 %1731 to i8
  store i8 %1732, i8* %39, align 1
  %1733 = load i64, i64* %RBP.i, align 8
  %1734 = add i64 %1733, -16
  %1735 = add i64 %1662, 44
  store i64 %1735, i64* %3, align 8
  %1736 = inttoptr i64 %1734 to i32*
  %1737 = load i32, i32* %1736, align 4
  %1738 = sext i32 %1737 to i64
  %1739 = shl nsw i64 %1738, 6
  store i64 %1739, i64* %RDX.i2064, align 8
  %1740 = lshr i64 %1738, 57
  %1741 = and i64 %1740, 1
  %1742 = load i64, i64* %RAX.i1508, align 8
  %1743 = add i64 %1739, %1742
  store i64 %1743, i64* %RDI.i1529, align 8
  %1744 = icmp ult i64 %1743, %1742
  %1745 = icmp ult i64 %1743, %1739
  %1746 = or i1 %1744, %1745
  %1747 = zext i1 %1746 to i8
  store i8 %1747, i8* %14, align 1
  %1748 = trunc i64 %1743 to i32
  %1749 = and i32 %1748, 255
  %1750 = tail call i32 @llvm.ctpop.i32(i32 %1749)
  %1751 = trunc i32 %1750 to i8
  %1752 = and i8 %1751, 1
  %1753 = xor i8 %1752, 1
  store i8 %1753, i8* %21, align 1
  %1754 = xor i64 %1742, %1743
  %1755 = lshr i64 %1754, 4
  %1756 = trunc i64 %1755 to i8
  %1757 = and i8 %1756, 1
  store i8 %1757, i8* %27, align 1
  %1758 = icmp eq i64 %1743, 0
  %1759 = zext i1 %1758 to i8
  store i8 %1759, i8* %30, align 1
  %1760 = lshr i64 %1743, 63
  %1761 = trunc i64 %1760 to i8
  store i8 %1761, i8* %33, align 1
  %1762 = lshr i64 %1742, 63
  %1763 = xor i64 %1760, %1762
  %1764 = xor i64 %1760, %1741
  %1765 = add nuw nsw i64 %1763, %1764
  %1766 = icmp eq i64 %1765, 2
  %1767 = zext i1 %1766 to i8
  store i8 %1767, i8* %39, align 1
  %1768 = add i64 %1733, -4
  %1769 = add i64 %1662, 58
  store i64 %1769, i64* %3, align 8
  %1770 = inttoptr i64 %1768 to i32*
  %1771 = load i32, i32* %1770, align 4
  %1772 = sext i32 %1771 to i64
  store i64 %1772, i64* %RDX.i2064, align 8
  %1773 = load i64, i64* %RSI.i2060, align 8
  %1774 = shl nsw i64 %1772, 2
  %1775 = add i64 %1774, %1743
  %1776 = add i64 %1662, 61
  store i64 %1776, i64* %3, align 8
  %1777 = trunc i64 %1773 to i32
  %1778 = inttoptr i64 %1775 to i32*
  %1779 = load i32, i32* %1778, align 4
  %1780 = add i32 %1779, %1777
  %1781 = zext i32 %1780 to i64
  store i64 %1781, i64* %RSI.i2060, align 8
  %1782 = icmp ult i32 %1780, %1777
  %1783 = icmp ult i32 %1780, %1779
  %1784 = or i1 %1782, %1783
  %1785 = zext i1 %1784 to i8
  store i8 %1785, i8* %14, align 1
  %1786 = and i32 %1780, 255
  %1787 = tail call i32 @llvm.ctpop.i32(i32 %1786)
  %1788 = trunc i32 %1787 to i8
  %1789 = and i8 %1788, 1
  %1790 = xor i8 %1789, 1
  store i8 %1790, i8* %21, align 1
  %1791 = xor i32 %1779, %1777
  %1792 = xor i32 %1791, %1780
  %1793 = lshr i32 %1792, 4
  %1794 = trunc i32 %1793 to i8
  %1795 = and i8 %1794, 1
  store i8 %1795, i8* %27, align 1
  %1796 = icmp eq i32 %1780, 0
  %1797 = zext i1 %1796 to i8
  store i8 %1797, i8* %30, align 1
  %1798 = lshr i32 %1780, 31
  %1799 = trunc i32 %1798 to i8
  store i8 %1799, i8* %33, align 1
  %1800 = lshr i32 %1777, 31
  %1801 = lshr i32 %1779, 31
  %1802 = xor i32 %1798, %1800
  %1803 = xor i32 %1798, %1801
  %1804 = add nuw nsw i32 %1802, %1803
  %1805 = icmp eq i32 %1804, 2
  %1806 = zext i1 %1805 to i8
  store i8 %1806, i8* %39, align 1
  %1807 = load i64, i64* %RBP.i, align 8
  %1808 = add i64 %1807, -2704
  %1809 = add i64 %1662, 68
  store i64 %1809, i64* %3, align 8
  %1810 = inttoptr i64 %1808 to i64*
  store i64 %1742, i64* %1810, align 8
  %1811 = load i32, i32* %ESI.i2054, align 4
  %1812 = zext i32 %1811 to i64
  %1813 = load i64, i64* %3, align 8
  store i64 %1812, i64* %RAX.i1508, align 8
  %1814 = sext i32 %1811 to i64
  %1815 = lshr i64 %1814, 32
  store i64 %1815, i64* %57, align 8
  %1816 = load i32, i32* %ECX.i1986, align 4
  %1817 = add i64 %1813, 5
  store i64 %1817, i64* %3, align 8
  %1818 = sext i32 %1816 to i64
  %1819 = shl nuw i64 %1815, 32
  %1820 = or i64 %1819, %1812
  %1821 = sdiv i64 %1820, %1818
  %1822 = shl i64 %1821, 32
  %1823 = ashr exact i64 %1822, 32
  %1824 = icmp eq i64 %1821, %1823
  br i1 %1824, label %1827, label %1825

; <label>:1825:                                   ; preds = %block_400d17
  %1826 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1817, %struct.Memory* %MEMORY.14)
  %.pre22 = load i32, i32* %EDX.i2048, align 4
  %.pre23 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit1506

; <label>:1827:                                   ; preds = %block_400d17
  %1828 = srem i64 %1820, %1818
  %1829 = and i64 %1821, 4294967295
  store i64 %1829, i64* %58, align 8
  %1830 = and i64 %1828, 4294967295
  store i64 %1830, i64* %57, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1831 = trunc i64 %1828 to i32
  br label %routine_idivl__ecx.exit1506

routine_idivl__ecx.exit1506:                      ; preds = %1827, %1825
  %1832 = phi i64 [ %.pre23, %1825 ], [ %1817, %1827 ]
  %1833 = phi i32 [ %.pre22, %1825 ], [ %1831, %1827 ]
  %1834 = phi %struct.Memory* [ %1826, %1825 ], [ %MEMORY.14, %1827 ]
  %1835 = sext i32 %1833 to i64
  store i64 %1835, i64* %RDI.i1529, align 8
  %1836 = shl nsw i64 %1835, 2
  %1837 = add nsw i64 %1836, 6305920
  %1838 = add i64 %1832, 10
  store i64 %1838, i64* %3, align 8
  %1839 = inttoptr i64 %1837 to i32*
  %1840 = load i32, i32* %1839, align 4
  %1841 = zext i32 %1840 to i64
  store i64 %1841, i64* %RCX.i2066, align 8
  %1842 = load i64, i64* %RBP.i, align 8
  %1843 = add i64 %1842, -12
  %1844 = add i64 %1832, 13
  store i64 %1844, i64* %3, align 8
  %1845 = inttoptr i64 %1843 to i32*
  %1846 = load i32, i32* %1845, align 4
  %1847 = add i32 %1846, 1
  %1848 = zext i32 %1847 to i64
  store i64 %1848, i64* %RDX.i2064, align 8
  %1849 = sext i32 %1847 to i64
  %1850 = shl nsw i64 %1849, 6
  store i64 %1850, i64* %RDI.i1529, align 8
  %.lobit = lshr i32 %1847, 31
  %1851 = trunc i32 %.lobit to i8
  store i8 %1851, i8* %14, align 1
  %1852 = trunc i64 %1850 to i32
  %1853 = and i32 %1852, 192
  %1854 = tail call i32 @llvm.ctpop.i32(i32 %1853)
  %1855 = trunc i32 %1854 to i8
  %1856 = and i8 %1855, 1
  %1857 = xor i8 %1856, 1
  store i8 %1857, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1858 = icmp eq i32 %1847, 0
  %1859 = zext i1 %1858 to i8
  store i8 %1859, i8* %30, align 1
  %1860 = lshr i64 %1849, 57
  %1861 = and i64 %1860, 1
  %1862 = trunc i64 %1861 to i8
  store i8 %1862, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1863 = add i64 %1842, -2704
  %1864 = add i64 %1832, 30
  store i64 %1864, i64* %3, align 8
  %1865 = inttoptr i64 %1863 to i64*
  %1866 = load i64, i64* %1865, align 8
  %1867 = add i64 %1850, %1866
  store i64 %1867, i64* %R8.i1487, align 8
  %1868 = icmp ult i64 %1867, %1866
  %1869 = icmp ult i64 %1867, %1850
  %1870 = or i1 %1868, %1869
  %1871 = zext i1 %1870 to i8
  store i8 %1871, i8* %14, align 1
  %1872 = trunc i64 %1867 to i32
  %1873 = and i32 %1872, 255
  %1874 = tail call i32 @llvm.ctpop.i32(i32 %1873)
  %1875 = trunc i32 %1874 to i8
  %1876 = and i8 %1875, 1
  %1877 = xor i8 %1876, 1
  store i8 %1877, i8* %21, align 1
  %1878 = xor i64 %1866, %1867
  %1879 = lshr i64 %1878, 4
  %1880 = trunc i64 %1879 to i8
  %1881 = and i8 %1880, 1
  store i8 %1881, i8* %27, align 1
  %1882 = icmp eq i64 %1867, 0
  %1883 = zext i1 %1882 to i8
  store i8 %1883, i8* %30, align 1
  %1884 = lshr i64 %1867, 63
  %1885 = trunc i64 %1884 to i8
  store i8 %1885, i8* %33, align 1
  %1886 = lshr i64 %1866, 63
  %1887 = xor i64 %1884, %1886
  %1888 = xor i64 %1884, %1861
  %1889 = add nuw nsw i64 %1887, %1888
  %1890 = icmp eq i64 %1889, 2
  %1891 = zext i1 %1890 to i8
  store i8 %1891, i8* %39, align 1
  %1892 = load i64, i64* %RBP.i, align 8
  %1893 = add i64 %1892, -4
  %1894 = add i64 %1832, 36
  store i64 %1894, i64* %3, align 8
  %1895 = inttoptr i64 %1893 to i32*
  %1896 = load i32, i32* %1895, align 4
  %1897 = zext i32 %1896 to i64
  store i64 %1897, i64* %RDX.i2064, align 8
  %1898 = add i64 %1892, -12
  %1899 = add i64 %1832, 39
  store i64 %1899, i64* %3, align 8
  %1900 = inttoptr i64 %1898 to i32*
  %1901 = load i32, i32* %1900, align 4
  %1902 = add i32 %1901, %1896
  %1903 = zext i32 %1902 to i64
  store i64 %1903, i64* %RDX.i2064, align 8
  %1904 = icmp ult i32 %1902, %1896
  %1905 = icmp ult i32 %1902, %1901
  %1906 = or i1 %1904, %1905
  %1907 = zext i1 %1906 to i8
  store i8 %1907, i8* %14, align 1
  %1908 = and i32 %1902, 255
  %1909 = tail call i32 @llvm.ctpop.i32(i32 %1908)
  %1910 = trunc i32 %1909 to i8
  %1911 = and i8 %1910, 1
  %1912 = xor i8 %1911, 1
  store i8 %1912, i8* %21, align 1
  %1913 = xor i32 %1901, %1896
  %1914 = xor i32 %1913, %1902
  %1915 = lshr i32 %1914, 4
  %1916 = trunc i32 %1915 to i8
  %1917 = and i8 %1916, 1
  store i8 %1917, i8* %27, align 1
  %1918 = icmp eq i32 %1902, 0
  %1919 = zext i1 %1918 to i8
  store i8 %1919, i8* %30, align 1
  %1920 = lshr i32 %1902, 31
  %1921 = trunc i32 %1920 to i8
  store i8 %1921, i8* %33, align 1
  %1922 = lshr i32 %1896, 31
  %1923 = lshr i32 %1901, 31
  %1924 = xor i32 %1920, %1922
  %1925 = xor i32 %1920, %1923
  %1926 = add nuw nsw i32 %1924, %1925
  %1927 = icmp eq i32 %1926, 2
  %1928 = zext i1 %1927 to i8
  store i8 %1928, i8* %39, align 1
  %1929 = add i64 %1892, -16
  %1930 = add i64 %1832, 42
  store i64 %1930, i64* %3, align 8
  %1931 = inttoptr i64 %1929 to i32*
  %1932 = load i32, i32* %1931, align 4
  %1933 = sub i32 %1902, %1932
  %1934 = zext i32 %1933 to i64
  store i64 %1934, i64* %RDX.i2064, align 8
  %1935 = icmp ult i32 %1902, %1932
  %1936 = zext i1 %1935 to i8
  store i8 %1936, i8* %14, align 1
  %1937 = and i32 %1933, 255
  %1938 = tail call i32 @llvm.ctpop.i32(i32 %1937)
  %1939 = trunc i32 %1938 to i8
  %1940 = and i8 %1939, 1
  %1941 = xor i8 %1940, 1
  store i8 %1941, i8* %21, align 1
  %1942 = xor i32 %1932, %1902
  %1943 = xor i32 %1942, %1933
  %1944 = lshr i32 %1943, 4
  %1945 = trunc i32 %1944 to i8
  %1946 = and i8 %1945, 1
  store i8 %1946, i8* %27, align 1
  %1947 = icmp eq i32 %1933, 0
  %1948 = zext i1 %1947 to i8
  store i8 %1948, i8* %30, align 1
  %1949 = lshr i32 %1933, 31
  %1950 = trunc i32 %1949 to i8
  store i8 %1950, i8* %33, align 1
  %1951 = lshr i32 %1932, 31
  %1952 = xor i32 %1951, %1920
  %1953 = xor i32 %1949, %1920
  %1954 = add nuw nsw i32 %1953, %1952
  %1955 = icmp eq i32 %1954, 2
  %1956 = zext i1 %1955 to i8
  store i8 %1956, i8* %39, align 1
  %1957 = sext i32 %1933 to i64
  store i64 %1957, i64* %RDI.i1529, align 8
  %1958 = load i64, i64* %R8.i1487, align 8
  %1959 = shl nsw i64 %1957, 2
  %1960 = add i64 %1959, %1958
  %1961 = load i32, i32* %ECX.i1986, align 4
  %1962 = add i64 %1832, 49
  store i64 %1962, i64* %3, align 8
  %1963 = inttoptr i64 %1960 to i32*
  store i32 %1961, i32* %1963, align 4
  %.pre24 = load i64, i64* %3, align 8
  br label %block_.L_400d91

block_.L_400d91:                                  ; preds = %routine_idivl__ecx.exit1506, %block_400cf7
  %1964 = phi i64 [ %1662, %block_400cf7 ], [ %.pre24, %routine_idivl__ecx.exit1506 ]
  %MEMORY.15 = phi %struct.Memory* [ %MEMORY.14, %block_400cf7 ], [ %1834, %routine_idivl__ecx.exit1506 ]
  %1965 = load i64, i64* %RBP.i, align 8
  %1966 = add i64 %1965, -4
  %1967 = add i64 %1964, 8
  store i64 %1967, i64* %3, align 8
  %1968 = inttoptr i64 %1966 to i32*
  %1969 = load i32, i32* %1968, align 4
  %1970 = add i32 %1969, 1
  %1971 = zext i32 %1970 to i64
  store i64 %1971, i64* %RAX.i1508, align 8
  %1972 = icmp eq i32 %1969, -1
  %1973 = icmp eq i32 %1970, 0
  %1974 = or i1 %1972, %1973
  %1975 = zext i1 %1974 to i8
  store i8 %1975, i8* %14, align 1
  %1976 = and i32 %1970, 255
  %1977 = tail call i32 @llvm.ctpop.i32(i32 %1976)
  %1978 = trunc i32 %1977 to i8
  %1979 = and i8 %1978, 1
  %1980 = xor i8 %1979, 1
  store i8 %1980, i8* %21, align 1
  %1981 = xor i32 %1969, %1970
  %1982 = lshr i32 %1981, 4
  %1983 = trunc i32 %1982 to i8
  %1984 = and i8 %1983, 1
  store i8 %1984, i8* %27, align 1
  %1985 = zext i1 %1973 to i8
  store i8 %1985, i8* %30, align 1
  %1986 = lshr i32 %1970, 31
  %1987 = trunc i32 %1986 to i8
  store i8 %1987, i8* %33, align 1
  %1988 = lshr i32 %1969, 31
  %1989 = xor i32 %1986, %1988
  %1990 = add nuw nsw i32 %1989, %1986
  %1991 = icmp eq i32 %1990, 2
  %1992 = zext i1 %1991 to i8
  store i8 %1992, i8* %39, align 1
  %1993 = add i64 %1964, 14
  store i64 %1993, i64* %3, align 8
  store i32 %1970, i32* %1968, align 4
  %1994 = load i64, i64* %3, align 8
  %1995 = add i64 %1994, -188
  store i64 %1995, i64* %3, align 8
  br label %block_.L_400ce3

block_.L_400da4:                                  ; preds = %block_.L_400ce3
  %1996 = add i64 %1598, 7
  store i64 %1996, i64* %3, align 8
  store i32 0, i32* %1558, align 4
  %.pre25 = load i64, i64* %3, align 8
  br label %block_.L_400dab

block_.L_400dab:                                  ; preds = %block_400dbf, %block_.L_400da4
  %1997 = phi i64 [ %2266, %block_400dbf ], [ %.pre25, %block_.L_400da4 ]
  %1998 = load i64, i64* %RBP.i, align 8
  %1999 = add i64 %1998, -4
  %2000 = add i64 %1997, 3
  store i64 %2000, i64* %3, align 8
  %2001 = inttoptr i64 %1999 to i32*
  %2002 = load i32, i32* %2001, align 4
  %2003 = zext i32 %2002 to i64
  store i64 %2003, i64* %RAX.i1508, align 8
  %2004 = add i64 %1998, -12
  %2005 = add i64 %1997, 7
  store i64 %2005, i64* %3, align 8
  %2006 = inttoptr i64 %2004 to i32*
  %2007 = load i32, i32* %2006, align 4
  %2008 = sext i32 %2007 to i64
  store i64 %2008, i64* %RCX.i2066, align 8
  %2009 = shl nsw i64 %2008, 2
  %2010 = add i64 %1998, -1328
  %2011 = add i64 %2010, %2009
  %2012 = add i64 %1997, 14
  store i64 %2012, i64* %3, align 8
  %2013 = inttoptr i64 %2011 to i32*
  %2014 = load i32, i32* %2013, align 4
  %2015 = sub i32 %2002, %2014
  %2016 = icmp ult i32 %2002, %2014
  %2017 = zext i1 %2016 to i8
  store i8 %2017, i8* %14, align 1
  %2018 = and i32 %2015, 255
  %2019 = tail call i32 @llvm.ctpop.i32(i32 %2018)
  %2020 = trunc i32 %2019 to i8
  %2021 = and i8 %2020, 1
  %2022 = xor i8 %2021, 1
  store i8 %2022, i8* %21, align 1
  %2023 = xor i32 %2014, %2002
  %2024 = xor i32 %2023, %2015
  %2025 = lshr i32 %2024, 4
  %2026 = trunc i32 %2025 to i8
  %2027 = and i8 %2026, 1
  store i8 %2027, i8* %27, align 1
  %2028 = icmp eq i32 %2015, 0
  %2029 = zext i1 %2028 to i8
  store i8 %2029, i8* %30, align 1
  %2030 = lshr i32 %2015, 31
  %2031 = trunc i32 %2030 to i8
  store i8 %2031, i8* %33, align 1
  %2032 = lshr i32 %2002, 31
  %2033 = lshr i32 %2014, 31
  %2034 = xor i32 %2033, %2032
  %2035 = xor i32 %2030, %2032
  %2036 = add nuw nsw i32 %2035, %2034
  %2037 = icmp eq i32 %2036, 2
  %2038 = zext i1 %2037 to i8
  store i8 %2038, i8* %39, align 1
  %2039 = icmp ne i8 %2031, 0
  %2040 = xor i1 %2039, %2037
  %.demorgan159 = or i1 %2028, %2040
  %.v160 = select i1 %.demorgan159, i64 20, i64 138
  %2041 = add i64 %1997, %.v160
  store i64 %2041, i64* %3, align 8
  br i1 %.demorgan159, label %block_400dbf, label %block_.L_400e35

block_400dbf:                                     ; preds = %block_.L_400dab
  %2042 = add i64 %1998, -1168
  store i64 %2042, i64* %RAX.i1508, align 8
  %2043 = add i64 %2041, 11
  store i64 %2043, i64* %3, align 8
  %2044 = load i32, i32* %2006, align 4
  %2045 = sext i32 %2044 to i64
  %2046 = shl nsw i64 %2045, 6
  store i64 %2046, i64* %RCX.i2066, align 8
  %2047 = lshr i64 %2045, 57
  %2048 = and i64 %2047, 1
  %2049 = add i64 %2046, %2042
  store i64 %2049, i64* %RDX.i2064, align 8
  %2050 = icmp ult i64 %2049, %2042
  %2051 = icmp ult i64 %2049, %2046
  %2052 = or i1 %2050, %2051
  %2053 = zext i1 %2052 to i8
  store i8 %2053, i8* %14, align 1
  %2054 = trunc i64 %2049 to i32
  %2055 = and i32 %2054, 255
  %2056 = tail call i32 @llvm.ctpop.i32(i32 %2055)
  %2057 = trunc i32 %2056 to i8
  %2058 = and i8 %2057, 1
  %2059 = xor i8 %2058, 1
  store i8 %2059, i8* %21, align 1
  %2060 = xor i64 %2042, %2049
  %2061 = lshr i64 %2060, 4
  %2062 = trunc i64 %2061 to i8
  %2063 = and i8 %2062, 1
  store i8 %2063, i8* %27, align 1
  %2064 = icmp eq i64 %2049, 0
  %2065 = zext i1 %2064 to i8
  store i8 %2065, i8* %30, align 1
  %2066 = lshr i64 %2049, 63
  %2067 = trunc i64 %2066 to i8
  store i8 %2067, i8* %33, align 1
  %2068 = lshr i64 %2042, 63
  %2069 = xor i64 %2066, %2068
  %2070 = xor i64 %2066, %2048
  %2071 = add nuw nsw i64 %2069, %2070
  %2072 = icmp eq i64 %2071, 2
  %2073 = zext i1 %2072 to i8
  store i8 %2073, i8* %39, align 1
  %2074 = add i64 %2041, 25
  store i64 %2074, i64* %3, align 8
  %2075 = load i32, i32* %2001, align 4
  %2076 = sext i32 %2075 to i64
  store i64 %2076, i64* %RCX.i2066, align 8
  %2077 = shl nsw i64 %2076, 2
  %2078 = add i64 %2077, %2049
  %2079 = add i64 %2041, 28
  store i64 %2079, i64* %3, align 8
  %2080 = inttoptr i64 %2078 to i32*
  %2081 = load i32, i32* %2080, align 4
  %2082 = zext i32 %2081 to i64
  store i64 %2082, i64* %RSI.i2060, align 8
  %2083 = add i64 %2041, 31
  store i64 %2083, i64* %3, align 8
  %2084 = load i32, i32* %2006, align 4
  %2085 = add i32 %2084, 1
  %2086 = zext i32 %2085 to i64
  store i64 %2086, i64* %RDI.i1529, align 8
  %2087 = sext i32 %2085 to i64
  %2088 = shl nsw i64 %2087, 6
  store i64 %2088, i64* %RCX.i2066, align 8
  %2089 = lshr i64 %2087, 57
  %2090 = and i64 %2089, 1
  %2091 = load i64, i64* %RAX.i1508, align 8
  %2092 = add i64 %2088, %2091
  store i64 %2092, i64* %RDX.i2064, align 8
  %2093 = icmp ult i64 %2092, %2091
  %2094 = icmp ult i64 %2092, %2088
  %2095 = or i1 %2093, %2094
  %2096 = zext i1 %2095 to i8
  store i8 %2096, i8* %14, align 1
  %2097 = trunc i64 %2092 to i32
  %2098 = and i32 %2097, 255
  %2099 = tail call i32 @llvm.ctpop.i32(i32 %2098)
  %2100 = trunc i32 %2099 to i8
  %2101 = and i8 %2100, 1
  %2102 = xor i8 %2101, 1
  store i8 %2102, i8* %21, align 1
  %2103 = xor i64 %2091, %2092
  %2104 = lshr i64 %2103, 4
  %2105 = trunc i64 %2104 to i8
  %2106 = and i8 %2105, 1
  store i8 %2106, i8* %27, align 1
  %2107 = icmp eq i64 %2092, 0
  %2108 = zext i1 %2107 to i8
  store i8 %2108, i8* %30, align 1
  %2109 = lshr i64 %2092, 63
  %2110 = trunc i64 %2109 to i8
  store i8 %2110, i8* %33, align 1
  %2111 = lshr i64 %2091, 63
  %2112 = xor i64 %2109, %2111
  %2113 = xor i64 %2109, %2090
  %2114 = add nuw nsw i64 %2112, %2113
  %2115 = icmp eq i64 %2114, 2
  %2116 = zext i1 %2115 to i8
  store i8 %2116, i8* %39, align 1
  %2117 = load i64, i64* %RBP.i, align 8
  %2118 = add i64 %2117, -4
  %2119 = add i64 %2041, 51
  store i64 %2119, i64* %3, align 8
  %2120 = inttoptr i64 %2118 to i32*
  %2121 = load i32, i32* %2120, align 4
  %2122 = sext i32 %2121 to i64
  store i64 %2122, i64* %RCX.i2066, align 8
  %2123 = load i64, i64* %RSI.i2060, align 8
  %2124 = shl nsw i64 %2122, 2
  %2125 = add i64 %2124, %2092
  %2126 = add i64 %2041, 54
  store i64 %2126, i64* %3, align 8
  %2127 = trunc i64 %2123 to i32
  %2128 = inttoptr i64 %2125 to i32*
  %2129 = load i32, i32* %2128, align 4
  %2130 = xor i32 %2129, %2127
  %2131 = zext i32 %2130 to i64
  store i64 %2131, i64* %RSI.i2060, align 8
  store i8 0, i8* %14, align 1
  %2132 = and i32 %2130, 255
  %2133 = tail call i32 @llvm.ctpop.i32(i32 %2132)
  %2134 = trunc i32 %2133 to i8
  %2135 = and i8 %2134, 1
  %2136 = xor i8 %2135, 1
  store i8 %2136, i8* %21, align 1
  %2137 = icmp eq i32 %2130, 0
  %2138 = zext i1 %2137 to i8
  store i8 %2138, i8* %30, align 1
  %2139 = lshr i32 %2130, 31
  %2140 = trunc i32 %2139 to i8
  store i8 %2140, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %2141 = add i64 %2041, 57
  store i64 %2141, i64* %3, align 8
  store i32 %2130, i32* %2128, align 4
  %2142 = load i64, i64* %RBP.i, align 8
  %2143 = add i64 %2142, -12
  %2144 = load i64, i64* %3, align 8
  %2145 = add i64 %2144, 4
  store i64 %2145, i64* %3, align 8
  %2146 = inttoptr i64 %2143 to i32*
  %2147 = load i32, i32* %2146, align 4
  %2148 = sext i32 %2147 to i64
  %2149 = shl nsw i64 %2148, 6
  store i64 %2149, i64* %RCX.i2066, align 8
  %2150 = lshr i64 %2148, 57
  %2151 = and i64 %2150, 1
  %2152 = load i64, i64* %RAX.i1508, align 8
  %2153 = add i64 %2149, %2152
  store i64 %2153, i64* %RDX.i2064, align 8
  %2154 = icmp ult i64 %2153, %2152
  %2155 = icmp ult i64 %2153, %2149
  %2156 = or i1 %2154, %2155
  %2157 = zext i1 %2156 to i8
  store i8 %2157, i8* %14, align 1
  %2158 = trunc i64 %2153 to i32
  %2159 = and i32 %2158, 255
  %2160 = tail call i32 @llvm.ctpop.i32(i32 %2159)
  %2161 = trunc i32 %2160 to i8
  %2162 = and i8 %2161, 1
  %2163 = xor i8 %2162, 1
  store i8 %2163, i8* %21, align 1
  %2164 = xor i64 %2152, %2153
  %2165 = lshr i64 %2164, 4
  %2166 = trunc i64 %2165 to i8
  %2167 = and i8 %2166, 1
  store i8 %2167, i8* %27, align 1
  %2168 = icmp eq i64 %2153, 0
  %2169 = zext i1 %2168 to i8
  store i8 %2169, i8* %30, align 1
  %2170 = lshr i64 %2153, 63
  %2171 = trunc i64 %2170 to i8
  store i8 %2171, i8* %33, align 1
  %2172 = lshr i64 %2152, 63
  %2173 = xor i64 %2170, %2172
  %2174 = xor i64 %2170, %2151
  %2175 = add nuw nsw i64 %2173, %2174
  %2176 = icmp eq i64 %2175, 2
  %2177 = zext i1 %2176 to i8
  store i8 %2177, i8* %39, align 1
  %2178 = add i64 %2142, -4
  %2179 = add i64 %2144, 18
  store i64 %2179, i64* %3, align 8
  %2180 = inttoptr i64 %2178 to i32*
  %2181 = load i32, i32* %2180, align 4
  %2182 = sext i32 %2181 to i64
  store i64 %2182, i64* %RCX.i2066, align 8
  %2183 = shl nsw i64 %2182, 2
  %2184 = add i64 %2183, %2153
  %2185 = add i64 %2144, 22
  store i64 %2185, i64* %3, align 8
  %2186 = inttoptr i64 %2184 to i32*
  %2187 = load i32, i32* %2186, align 4
  %2188 = sext i32 %2187 to i64
  store i64 %2188, i64* %RCX.i2066, align 8
  %2189 = shl nsw i64 %2188, 2
  %2190 = add nsw i64 %2189, 6304896
  %2191 = add i64 %2144, 29
  store i64 %2191, i64* %3, align 8
  %2192 = inttoptr i64 %2190 to i32*
  %2193 = load i32, i32* %2192, align 4
  %2194 = zext i32 %2193 to i64
  store i64 %2194, i64* %RSI.i2060, align 8
  %2195 = add i64 %2144, 33
  store i64 %2195, i64* %3, align 8
  %2196 = load i32, i32* %2146, align 4
  %2197 = sext i32 %2196 to i64
  %2198 = shl nsw i64 %2197, 6
  store i64 %2198, i64* %RCX.i2066, align 8
  %2199 = lshr i64 %2197, 57
  %2200 = and i64 %2199, 1
  %2201 = add i64 %2198, %2152
  store i64 %2201, i64* %RAX.i1508, align 8
  %2202 = icmp ult i64 %2201, %2152
  %2203 = icmp ult i64 %2201, %2198
  %2204 = or i1 %2202, %2203
  %2205 = zext i1 %2204 to i8
  store i8 %2205, i8* %14, align 1
  %2206 = trunc i64 %2201 to i32
  %2207 = and i32 %2206, 255
  %2208 = tail call i32 @llvm.ctpop.i32(i32 %2207)
  %2209 = trunc i32 %2208 to i8
  %2210 = and i8 %2209, 1
  %2211 = xor i8 %2210, 1
  store i8 %2211, i8* %21, align 1
  %2212 = xor i64 %2152, %2201
  %2213 = lshr i64 %2212, 4
  %2214 = trunc i64 %2213 to i8
  %2215 = and i8 %2214, 1
  store i8 %2215, i8* %27, align 1
  %2216 = icmp eq i64 %2201, 0
  %2217 = zext i1 %2216 to i8
  store i8 %2217, i8* %30, align 1
  %2218 = lshr i64 %2201, 63
  %2219 = trunc i64 %2218 to i8
  store i8 %2219, i8* %33, align 1
  %2220 = xor i64 %2218, %2172
  %2221 = xor i64 %2218, %2200
  %2222 = add nuw nsw i64 %2220, %2221
  %2223 = icmp eq i64 %2222, 2
  %2224 = zext i1 %2223 to i8
  store i8 %2224, i8* %39, align 1
  %2225 = load i64, i64* %RBP.i, align 8
  %2226 = add i64 %2225, -4
  %2227 = add i64 %2144, 44
  store i64 %2227, i64* %3, align 8
  %2228 = inttoptr i64 %2226 to i32*
  %2229 = load i32, i32* %2228, align 4
  %2230 = sext i32 %2229 to i64
  store i64 %2230, i64* %RCX.i2066, align 8
  %2231 = shl nsw i64 %2230, 2
  %2232 = add i64 %2231, %2201
  %2233 = add i64 %2144, 47
  store i64 %2233, i64* %3, align 8
  %2234 = inttoptr i64 %2232 to i32*
  store i32 %2193, i32* %2234, align 4
  %2235 = load i64, i64* %RBP.i, align 8
  %2236 = add i64 %2235, -4
  %2237 = load i64, i64* %3, align 8
  %2238 = add i64 %2237, 3
  store i64 %2238, i64* %3, align 8
  %2239 = inttoptr i64 %2236 to i32*
  %2240 = load i32, i32* %2239, align 4
  %2241 = add i32 %2240, 1
  %2242 = zext i32 %2241 to i64
  store i64 %2242, i64* %RAX.i1508, align 8
  %2243 = icmp eq i32 %2240, -1
  %2244 = icmp eq i32 %2241, 0
  %2245 = or i1 %2243, %2244
  %2246 = zext i1 %2245 to i8
  store i8 %2246, i8* %14, align 1
  %2247 = and i32 %2241, 255
  %2248 = tail call i32 @llvm.ctpop.i32(i32 %2247)
  %2249 = trunc i32 %2248 to i8
  %2250 = and i8 %2249, 1
  %2251 = xor i8 %2250, 1
  store i8 %2251, i8* %21, align 1
  %2252 = xor i32 %2240, %2241
  %2253 = lshr i32 %2252, 4
  %2254 = trunc i32 %2253 to i8
  %2255 = and i8 %2254, 1
  store i8 %2255, i8* %27, align 1
  %2256 = zext i1 %2244 to i8
  store i8 %2256, i8* %30, align 1
  %2257 = lshr i32 %2241, 31
  %2258 = trunc i32 %2257 to i8
  store i8 %2258, i8* %33, align 1
  %2259 = lshr i32 %2240, 31
  %2260 = xor i32 %2257, %2259
  %2261 = add nuw nsw i32 %2260, %2257
  %2262 = icmp eq i32 %2261, 2
  %2263 = zext i1 %2262 to i8
  store i8 %2263, i8* %39, align 1
  %2264 = add i64 %2237, 9
  store i64 %2264, i64* %3, align 8
  store i32 %2241, i32* %2239, align 4
  %2265 = load i64, i64* %3, align 8
  %2266 = add i64 %2265, -133
  store i64 %2266, i64* %3, align 8
  br label %block_.L_400dab

block_.L_400e35:                                  ; preds = %block_.L_400dab
  %2267 = add i64 %2041, 5
  br label %block_.L_400e3a

block_.L_400e3a:                                  ; preds = %block_.L_400e35, %block_.L_400b7d
  %.sink = phi i64 [ %2267, %block_.L_400e35 ], [ %910, %block_.L_400b7d ]
  %2268 = phi i64 [ %1998, %block_.L_400e35 ], [ %655, %block_.L_400b7d ]
  %MEMORY.17 = phi %struct.Memory* [ %MEMORY.14, %block_.L_400e35 ], [ %MEMORY.5, %block_.L_400b7d ]
  %2269 = add i64 %2268, -12
  %2270 = add i64 %.sink, 3
  store i64 %2270, i64* %3, align 8
  %2271 = inttoptr i64 %2269 to i32*
  %2272 = load i32, i32* %2271, align 4
  %2273 = zext i32 %2272 to i64
  store i64 %2273, i64* %RAX.i1508, align 8
  %2274 = add i64 %.sink, 6
  store i64 %2274, i64* %3, align 8
  %2275 = load i32, i32* %2271, align 4
  %2276 = add i32 %2275, 1
  %2277 = zext i32 %2276 to i64
  store i64 %2277, i64* %RCX.i2066, align 8
  %2278 = icmp eq i32 %2275, -1
  %2279 = icmp eq i32 %2276, 0
  %2280 = or i1 %2278, %2279
  %2281 = zext i1 %2280 to i8
  store i8 %2281, i8* %14, align 1
  %2282 = and i32 %2276, 255
  %2283 = tail call i32 @llvm.ctpop.i32(i32 %2282)
  %2284 = trunc i32 %2283 to i8
  %2285 = and i8 %2284, 1
  %2286 = xor i8 %2285, 1
  store i8 %2286, i8* %21, align 1
  %2287 = xor i32 %2275, %2276
  %2288 = lshr i32 %2287, 4
  %2289 = trunc i32 %2288 to i8
  %2290 = and i8 %2289, 1
  store i8 %2290, i8* %27, align 1
  %2291 = zext i1 %2279 to i8
  store i8 %2291, i8* %30, align 1
  %2292 = lshr i32 %2276, 31
  %2293 = trunc i32 %2292 to i8
  store i8 %2293, i8* %33, align 1
  %2294 = lshr i32 %2275, 31
  %2295 = xor i32 %2292, %2294
  %2296 = add nuw nsw i32 %2295, %2292
  %2297 = icmp eq i32 %2296, 2
  %2298 = zext i1 %2297 to i8
  store i8 %2298, i8* %39, align 1
  %2299 = sext i32 %2276 to i64
  store i64 %2299, i64* %RDX.i2064, align 8
  %2300 = shl nsw i64 %2299, 2
  %2301 = add i64 %2268, -1328
  %2302 = add i64 %2301, %2300
  %2303 = add i64 %.sink, 19
  store i64 %2303, i64* %3, align 8
  %2304 = inttoptr i64 %2302 to i32*
  %2305 = load i32, i32* %2304, align 4
  %2306 = sub i32 %2272, %2305
  %2307 = zext i32 %2306 to i64
  store i64 %2307, i64* %RAX.i1508, align 8
  %2308 = icmp ult i32 %2272, %2305
  %2309 = zext i1 %2308 to i8
  store i8 %2309, i8* %14, align 1
  %2310 = and i32 %2306, 255
  %2311 = tail call i32 @llvm.ctpop.i32(i32 %2310)
  %2312 = trunc i32 %2311 to i8
  %2313 = and i8 %2312, 1
  %2314 = xor i8 %2313, 1
  store i8 %2314, i8* %21, align 1
  %2315 = xor i32 %2305, %2272
  %2316 = xor i32 %2315, %2306
  %2317 = lshr i32 %2316, 4
  %2318 = trunc i32 %2317 to i8
  %2319 = and i8 %2318, 1
  store i8 %2319, i8* %27, align 1
  %2320 = icmp eq i32 %2306, 0
  %2321 = zext i1 %2320 to i8
  store i8 %2321, i8* %30, align 1
  %2322 = lshr i32 %2306, 31
  %2323 = trunc i32 %2322 to i8
  store i8 %2323, i8* %33, align 1
  %2324 = lshr i32 %2272, 31
  %2325 = lshr i32 %2305, 31
  %2326 = xor i32 %2325, %2324
  %2327 = xor i32 %2322, %2324
  %2328 = add nuw nsw i32 %2327, %2326
  %2329 = icmp eq i32 %2328, 2
  %2330 = zext i1 %2329 to i8
  store i8 %2330, i8* %39, align 1
  %2331 = add i64 %.sink, 22
  store i64 %2331, i64* %3, align 8
  %2332 = load i32, i32* %2271, align 4
  %2333 = add i32 %2332, 1
  %2334 = zext i32 %2333 to i64
  store i64 %2334, i64* %RCX.i2066, align 8
  %2335 = icmp eq i32 %2332, -1
  %2336 = icmp eq i32 %2333, 0
  %2337 = or i1 %2335, %2336
  %2338 = zext i1 %2337 to i8
  store i8 %2338, i8* %14, align 1
  %2339 = and i32 %2333, 255
  %2340 = tail call i32 @llvm.ctpop.i32(i32 %2339)
  %2341 = trunc i32 %2340 to i8
  %2342 = and i8 %2341, 1
  %2343 = xor i8 %2342, 1
  store i8 %2343, i8* %21, align 1
  %2344 = xor i32 %2332, %2333
  %2345 = lshr i32 %2344, 4
  %2346 = trunc i32 %2345 to i8
  %2347 = and i8 %2346, 1
  store i8 %2347, i8* %27, align 1
  %2348 = zext i1 %2336 to i8
  store i8 %2348, i8* %30, align 1
  %2349 = lshr i32 %2333, 31
  %2350 = trunc i32 %2349 to i8
  store i8 %2350, i8* %33, align 1
  %2351 = lshr i32 %2332, 31
  %2352 = xor i32 %2349, %2351
  %2353 = add nuw nsw i32 %2352, %2349
  %2354 = icmp eq i32 %2353, 2
  %2355 = zext i1 %2354 to i8
  store i8 %2355, i8* %39, align 1
  %2356 = sext i32 %2333 to i64
  store i64 %2356, i64* %RDX.i2064, align 8
  %2357 = load i64, i64* %RBP.i, align 8
  %2358 = shl nsw i64 %2356, 2
  %2359 = add i64 %2357, -1408
  %2360 = add i64 %2359, %2358
  %2361 = add i64 %.sink, 35
  store i64 %2361, i64* %3, align 8
  %2362 = inttoptr i64 %2360 to i32*
  store i32 %2306, i32* %2362, align 4
  %2363 = load i64, i64* %RBP.i, align 8
  %2364 = add i64 %2363, -12
  %2365 = load i64, i64* %3, align 8
  %2366 = add i64 %2365, 4
  store i64 %2366, i64* %3, align 8
  %2367 = inttoptr i64 %2364 to i32*
  %2368 = load i32, i32* %2367, align 4
  %2369 = add i32 %2368, -16
  %2370 = icmp ult i32 %2368, 16
  %2371 = zext i1 %2370 to i8
  store i8 %2371, i8* %14, align 1
  %2372 = and i32 %2369, 255
  %2373 = tail call i32 @llvm.ctpop.i32(i32 %2372)
  %2374 = trunc i32 %2373 to i8
  %2375 = and i8 %2374, 1
  %2376 = xor i8 %2375, 1
  store i8 %2376, i8* %21, align 1
  %2377 = xor i32 %2368, 16
  %2378 = xor i32 %2377, %2369
  %2379 = lshr i32 %2378, 4
  %2380 = trunc i32 %2379 to i8
  %2381 = and i8 %2380, 1
  store i8 %2381, i8* %27, align 1
  %2382 = icmp eq i32 %2369, 0
  %2383 = zext i1 %2382 to i8
  store i8 %2383, i8* %30, align 1
  %2384 = lshr i32 %2369, 31
  %2385 = trunc i32 %2384 to i8
  store i8 %2385, i8* %33, align 1
  %2386 = lshr i32 %2368, 31
  %2387 = xor i32 %2384, %2386
  %2388 = add nuw nsw i32 %2387, %2386
  %2389 = icmp eq i32 %2388, 2
  %2390 = zext i1 %2389 to i8
  store i8 %2390, i8* %39, align 1
  %2391 = icmp ne i8 %2385, 0
  %2392 = xor i1 %2391, %2389
  %.v103 = select i1 %2392, i64 10, i64 366
  %2393 = add i64 %2365, %.v103
  store i64 %2393, i64* %3, align 8
  br i1 %2392, label %block_400e67, label %block_.L_400fcb

block_400e67:                                     ; preds = %block_.L_400e3a
  %2394 = add i64 %2393, 3
  store i64 %2394, i64* %3, align 8
  %2395 = load i32, i32* %2367, align 4
  %2396 = add i32 %2395, 1
  %2397 = zext i32 %2396 to i64
  store i64 %2397, i64* %RAX.i1508, align 8
  %2398 = icmp eq i32 %2395, -1
  %2399 = icmp eq i32 %2396, 0
  %2400 = or i1 %2398, %2399
  %2401 = zext i1 %2400 to i8
  store i8 %2401, i8* %14, align 1
  %2402 = and i32 %2396, 255
  %2403 = tail call i32 @llvm.ctpop.i32(i32 %2402)
  %2404 = trunc i32 %2403 to i8
  %2405 = and i8 %2404, 1
  %2406 = xor i8 %2405, 1
  store i8 %2406, i8* %21, align 1
  %2407 = xor i32 %2395, %2396
  %2408 = lshr i32 %2407, 4
  %2409 = trunc i32 %2408 to i8
  %2410 = and i8 %2409, 1
  store i8 %2410, i8* %27, align 1
  %2411 = zext i1 %2399 to i8
  store i8 %2411, i8* %30, align 1
  %2412 = lshr i32 %2396, 31
  %2413 = trunc i32 %2412 to i8
  store i8 %2413, i8* %33, align 1
  %2414 = lshr i32 %2395, 31
  %2415 = xor i32 %2412, %2414
  %2416 = add nuw nsw i32 %2415, %2412
  %2417 = icmp eq i32 %2416, 2
  %2418 = zext i1 %2417 to i8
  store i8 %2418, i8* %39, align 1
  %2419 = sext i32 %2396 to i64
  store i64 %2419, i64* %RCX.i2066, align 8
  %2420 = shl nsw i64 %2419, 2
  %2421 = add i64 %2363, -1488
  %2422 = add i64 %2421, %2420
  %2423 = add i64 %2393, 17
  store i64 %2423, i64* %3, align 8
  %2424 = inttoptr i64 %2422 to i32*
  %2425 = load i32, i32* %2424, align 4
  %2426 = add i32 %2425, 1
  %2427 = icmp ne i32 %2425, -1
  %2428 = zext i1 %2427 to i8
  store i8 %2428, i8* %14, align 1
  %2429 = and i32 %2426, 255
  %2430 = tail call i32 @llvm.ctpop.i32(i32 %2429)
  %2431 = trunc i32 %2430 to i8
  %2432 = and i8 %2431, 1
  %2433 = xor i8 %2432, 1
  store i8 %2433, i8* %21, align 1
  %2434 = xor i32 %2425, 16
  %2435 = xor i32 %2426, %2434
  %2436 = lshr i32 %2435, 4
  %2437 = trunc i32 %2436 to i8
  %2438 = and i8 %2437, 1
  store i8 %2438, i8* %27, align 1
  %2439 = icmp eq i32 %2426, 0
  %2440 = zext i1 %2439 to i8
  store i8 %2440, i8* %30, align 1
  %2441 = lshr i32 %2426, 31
  %2442 = trunc i32 %2441 to i8
  store i8 %2442, i8* %33, align 1
  %2443 = lshr i32 %2425, 31
  %2444 = xor i32 %2443, 1
  %2445 = xor i32 %2441, %2443
  %2446 = add nuw nsw i32 %2445, %2444
  %2447 = icmp eq i32 %2446, 2
  %2448 = zext i1 %2447 to i8
  store i8 %2448, i8* %39, align 1
  %.v104 = select i1 %2439, i64 68, i64 23
  %2449 = add i64 %2393, %.v104
  %2450 = add i64 %2449, 3
  store i64 %2450, i64* %3, align 8
  %2451 = load i32, i32* %2367, align 4
  %2452 = add i32 %2451, 1
  %2453 = zext i32 %2452 to i64
  store i64 %2453, i64* %RAX.i1508, align 8
  %2454 = icmp eq i32 %2451, -1
  %2455 = icmp eq i32 %2452, 0
  %2456 = or i1 %2454, %2455
  %2457 = zext i1 %2456 to i8
  store i8 %2457, i8* %14, align 1
  %2458 = and i32 %2452, 255
  %2459 = tail call i32 @llvm.ctpop.i32(i32 %2458)
  %2460 = trunc i32 %2459 to i8
  %2461 = and i8 %2460, 1
  %2462 = xor i8 %2461, 1
  store i8 %2462, i8* %21, align 1
  %2463 = xor i32 %2451, %2452
  %2464 = lshr i32 %2463, 4
  %2465 = trunc i32 %2464 to i8
  %2466 = and i8 %2465, 1
  store i8 %2466, i8* %27, align 1
  %2467 = zext i1 %2455 to i8
  store i8 %2467, i8* %30, align 1
  %2468 = lshr i32 %2452, 31
  %2469 = trunc i32 %2468 to i8
  store i8 %2469, i8* %33, align 1
  %2470 = lshr i32 %2451, 31
  %2471 = xor i32 %2468, %2470
  %2472 = add nuw nsw i32 %2471, %2468
  %2473 = icmp eq i32 %2472, 2
  %2474 = zext i1 %2473 to i8
  store i8 %2474, i8* %39, align 1
  %2475 = add i64 %2449, 9
  store i64 %2475, i64* %3, align 8
  %2476 = sext i32 %2452 to i64
  store i64 %2476, i64* %RCX.i2066, align 8
  %2477 = shl nsw i64 %2476, 2
  br i1 %2439, label %block_.L_400eab, label %block_400e7e

block_400e7e:                                     ; preds = %block_400e67
  %2478 = add i64 %2421, %2477
  %2479 = add i64 %2449, 17
  store i64 %2479, i64* %3, align 8
  %2480 = inttoptr i64 %2478 to i32*
  %2481 = load i32, i32* %2480, align 4
  %2482 = sext i32 %2481 to i64
  store i64 %2482, i64* %RCX.i2066, align 8
  %2483 = shl nsw i64 %2482, 2
  %2484 = add nsw i64 %2483, 6305920
  %2485 = add i64 %2449, 24
  store i64 %2485, i64* %3, align 8
  %2486 = inttoptr i64 %2484 to i32*
  %2487 = load i32, i32* %2486, align 4
  %2488 = zext i32 %2487 to i64
  store i64 %2488, i64* %RAX.i1508, align 8
  %2489 = add i64 %2449, 27
  store i64 %2489, i64* %3, align 8
  %2490 = load i32, i32* %2367, align 4
  %2491 = add i32 %2490, 1
  %2492 = zext i32 %2491 to i64
  store i64 %2492, i64* %RDX.i2064, align 8
  %2493 = icmp eq i32 %2490, -1
  %2494 = icmp eq i32 %2491, 0
  %2495 = or i1 %2493, %2494
  %2496 = zext i1 %2495 to i8
  store i8 %2496, i8* %14, align 1
  %2497 = and i32 %2491, 255
  %2498 = tail call i32 @llvm.ctpop.i32(i32 %2497)
  %2499 = trunc i32 %2498 to i8
  %2500 = and i8 %2499, 1
  %2501 = xor i8 %2500, 1
  store i8 %2501, i8* %21, align 1
  %2502 = xor i32 %2490, %2491
  %2503 = lshr i32 %2502, 4
  %2504 = trunc i32 %2503 to i8
  %2505 = and i8 %2504, 1
  store i8 %2505, i8* %27, align 1
  %2506 = zext i1 %2494 to i8
  store i8 %2506, i8* %30, align 1
  %2507 = lshr i32 %2491, 31
  %2508 = trunc i32 %2507 to i8
  store i8 %2508, i8* %33, align 1
  %2509 = lshr i32 %2490, 31
  %2510 = xor i32 %2507, %2509
  %2511 = add nuw nsw i32 %2510, %2507
  %2512 = icmp eq i32 %2511, 2
  %2513 = zext i1 %2512 to i8
  store i8 %2513, i8* %39, align 1
  %2514 = sext i32 %2491 to i64
  store i64 %2514, i64* %RCX.i2066, align 8
  %2515 = load i64, i64* %RBP.i, align 8
  %2516 = shl nsw i64 %2514, 2
  %2517 = add i64 %2515, -1248
  %2518 = add i64 %2517, %2516
  %2519 = add i64 %2449, 40
  store i64 %2519, i64* %3, align 8
  %2520 = inttoptr i64 %2518 to i32*
  store i32 %2487, i32* %2520, align 4
  %2521 = load i64, i64* %3, align 8
  %2522 = add i64 %2521, 25
  store i64 %2522, i64* %3, align 8
  br label %block_.L_400ebf

block_.L_400eab:                                  ; preds = %block_400e67
  %2523 = add i64 %2363, -1248
  %2524 = add i64 %2523, %2477
  %2525 = add i64 %2449, 20
  store i64 %2525, i64* %3, align 8
  %2526 = inttoptr i64 %2524 to i32*
  store i32 0, i32* %2526, align 4
  %.pre26 = load i64, i64* %3, align 8
  br label %block_.L_400ebf

block_.L_400ebf:                                  ; preds = %block_.L_400eab, %block_400e7e
  %2527 = phi i64 [ %.pre26, %block_.L_400eab ], [ %2522, %block_400e7e ]
  %2528 = load i64, i64* %RBP.i, align 8
  %2529 = add i64 %2528, -4
  %2530 = add i64 %2527, 7
  store i64 %2530, i64* %3, align 8
  %2531 = inttoptr i64 %2529 to i32*
  store i32 1, i32* %2531, align 4
  %.pre27 = load i64, i64* %3, align 8
  br label %block_.L_400ec6

block_.L_400ec6:                                  ; preds = %block_.L_400f90, %block_.L_400ebf
  %2532 = phi i64 [ %.pre27, %block_.L_400ebf ], [ %3006, %block_.L_400f90 ]
  %MEMORY.19 = phi %struct.Memory* [ %MEMORY.17, %block_.L_400ebf ], [ %MEMORY.20, %block_.L_400f90 ]
  %2533 = load i64, i64* %RBP.i, align 8
  %2534 = add i64 %2533, -4
  %2535 = add i64 %2532, 3
  store i64 %2535, i64* %3, align 8
  %2536 = inttoptr i64 %2534 to i32*
  %2537 = load i32, i32* %2536, align 4
  %2538 = zext i32 %2537 to i64
  store i64 %2538, i64* %RAX.i1508, align 8
  %2539 = add i64 %2533, -12
  %2540 = add i64 %2532, 6
  store i64 %2540, i64* %3, align 8
  %2541 = inttoptr i64 %2539 to i32*
  %2542 = load i32, i32* %2541, align 4
  %2543 = add i32 %2542, 1
  %2544 = zext i32 %2543 to i64
  store i64 %2544, i64* %RCX.i2066, align 8
  %2545 = icmp eq i32 %2542, -1
  %2546 = icmp eq i32 %2543, 0
  %2547 = or i1 %2545, %2546
  %2548 = zext i1 %2547 to i8
  store i8 %2548, i8* %14, align 1
  %2549 = and i32 %2543, 255
  %2550 = tail call i32 @llvm.ctpop.i32(i32 %2549)
  %2551 = trunc i32 %2550 to i8
  %2552 = and i8 %2551, 1
  %2553 = xor i8 %2552, 1
  store i8 %2553, i8* %21, align 1
  %2554 = xor i32 %2542, %2543
  %2555 = lshr i32 %2554, 4
  %2556 = trunc i32 %2555 to i8
  %2557 = and i8 %2556, 1
  store i8 %2557, i8* %27, align 1
  %2558 = zext i1 %2546 to i8
  store i8 %2558, i8* %30, align 1
  %2559 = lshr i32 %2543, 31
  %2560 = trunc i32 %2559 to i8
  store i8 %2560, i8* %33, align 1
  %2561 = lshr i32 %2542, 31
  %2562 = xor i32 %2559, %2561
  %2563 = add nuw nsw i32 %2562, %2559
  %2564 = icmp eq i32 %2563, 2
  %2565 = zext i1 %2564 to i8
  store i8 %2565, i8* %39, align 1
  %2566 = sext i32 %2543 to i64
  store i64 %2566, i64* %RDX.i2064, align 8
  %2567 = shl nsw i64 %2566, 2
  %2568 = add i64 %2533, -1328
  %2569 = add i64 %2568, %2567
  %2570 = add i64 %2532, 19
  store i64 %2570, i64* %3, align 8
  %2571 = inttoptr i64 %2569 to i32*
  %2572 = load i32, i32* %2571, align 4
  %2573 = sub i32 %2537, %2572
  %2574 = icmp ult i32 %2537, %2572
  %2575 = zext i1 %2574 to i8
  store i8 %2575, i8* %14, align 1
  %2576 = and i32 %2573, 255
  %2577 = tail call i32 @llvm.ctpop.i32(i32 %2576)
  %2578 = trunc i32 %2577 to i8
  %2579 = and i8 %2578, 1
  %2580 = xor i8 %2579, 1
  store i8 %2580, i8* %21, align 1
  %2581 = xor i32 %2572, %2537
  %2582 = xor i32 %2581, %2573
  %2583 = lshr i32 %2582, 4
  %2584 = trunc i32 %2583 to i8
  %2585 = and i8 %2584, 1
  store i8 %2585, i8* %27, align 1
  %2586 = icmp eq i32 %2573, 0
  %2587 = zext i1 %2586 to i8
  store i8 %2587, i8* %30, align 1
  %2588 = lshr i32 %2573, 31
  %2589 = trunc i32 %2588 to i8
  store i8 %2589, i8* %33, align 1
  %2590 = lshr i32 %2537, 31
  %2591 = lshr i32 %2572, 31
  %2592 = xor i32 %2591, %2590
  %2593 = xor i32 %2588, %2590
  %2594 = add nuw nsw i32 %2593, %2592
  %2595 = icmp eq i32 %2594, 2
  %2596 = zext i1 %2595 to i8
  store i8 %2596, i8* %39, align 1
  %2597 = icmp ne i8 %2589, 0
  %2598 = xor i1 %2597, %2595
  %.demorgan105 = or i1 %2586, %2598
  %.v106 = select i1 %.demorgan105, i64 25, i64 221
  %2599 = add i64 %2532, %.v106
  %2600 = load i64, i64* %RBP.i, align 8
  %2601 = add i64 %2600, -12
  %2602 = add i64 %2599, 3
  store i64 %2602, i64* %3, align 8
  %2603 = inttoptr i64 %2601 to i32*
  %2604 = load i32, i32* %2603, align 4
  %2605 = add i64 %2599, 6
  store i64 %2605, i64* %3, align 8
  %2606 = add i32 %2604, 1
  %2607 = zext i32 %2606 to i64
  store i64 %2607, i64* %RAX.i1508, align 8
  %2608 = icmp eq i32 %2604, -1
  %2609 = icmp eq i32 %2606, 0
  %2610 = or i1 %2608, %2609
  %2611 = zext i1 %2610 to i8
  store i8 %2611, i8* %14, align 1
  %2612 = and i32 %2606, 255
  %2613 = tail call i32 @llvm.ctpop.i32(i32 %2612)
  %2614 = trunc i32 %2613 to i8
  %2615 = and i8 %2614, 1
  %2616 = xor i8 %2615, 1
  store i8 %2616, i8* %21, align 1
  %2617 = xor i32 %2604, %2606
  %2618 = lshr i32 %2617, 4
  %2619 = trunc i32 %2618 to i8
  %2620 = and i8 %2619, 1
  store i8 %2620, i8* %27, align 1
  %2621 = zext i1 %2609 to i8
  store i8 %2621, i8* %30, align 1
  %2622 = lshr i32 %2606, 31
  %2623 = trunc i32 %2622 to i8
  store i8 %2623, i8* %33, align 1
  %2624 = lshr i32 %2604, 31
  %2625 = xor i32 %2622, %2624
  %2626 = add nuw nsw i32 %2625, %2622
  %2627 = icmp eq i32 %2626, 2
  %2628 = zext i1 %2627 to i8
  store i8 %2628, i8* %39, align 1
  br i1 %.demorgan105, label %block_400edf, label %block_.L_400fa3

block_400edf:                                     ; preds = %block_.L_400ec6
  %2629 = add i64 %2600, -4
  %2630 = add i64 %2599, 9
  store i64 %2630, i64* %3, align 8
  %2631 = inttoptr i64 %2629 to i32*
  %2632 = load i32, i32* %2631, align 4
  %2633 = sub i32 %2606, %2632
  %2634 = zext i32 %2633 to i64
  store i64 %2634, i64* %RAX.i1508, align 8
  %2635 = icmp ult i32 %2606, %2632
  %2636 = zext i1 %2635 to i8
  store i8 %2636, i8* %14, align 1
  %2637 = and i32 %2633, 255
  %2638 = tail call i32 @llvm.ctpop.i32(i32 %2637)
  %2639 = trunc i32 %2638 to i8
  %2640 = and i8 %2639, 1
  %2641 = xor i8 %2640, 1
  store i8 %2641, i8* %21, align 1
  %2642 = xor i32 %2632, %2606
  %2643 = xor i32 %2642, %2633
  %2644 = lshr i32 %2643, 4
  %2645 = trunc i32 %2644 to i8
  %2646 = and i8 %2645, 1
  store i8 %2646, i8* %27, align 1
  %2647 = icmp eq i32 %2633, 0
  %2648 = zext i1 %2647 to i8
  store i8 %2648, i8* %30, align 1
  %2649 = lshr i32 %2633, 31
  %2650 = trunc i32 %2649 to i8
  store i8 %2650, i8* %33, align 1
  %2651 = lshr i32 %2632, 31
  %2652 = xor i32 %2651, %2622
  %2653 = xor i32 %2649, %2622
  %2654 = add nuw nsw i32 %2653, %2652
  %2655 = icmp eq i32 %2654, 2
  %2656 = zext i1 %2655 to i8
  store i8 %2656, i8* %39, align 1
  %2657 = sext i32 %2633 to i64
  store i64 %2657, i64* %RCX.i2066, align 8
  %2658 = shl nsw i64 %2657, 2
  %2659 = add i64 %2600, -1488
  %2660 = add i64 %2659, %2658
  %2661 = add i64 %2599, 20
  store i64 %2661, i64* %3, align 8
  %2662 = inttoptr i64 %2660 to i32*
  %2663 = load i32, i32* %2662, align 4
  %2664 = add i32 %2663, 1
  %2665 = icmp ne i32 %2663, -1
  %2666 = zext i1 %2665 to i8
  store i8 %2666, i8* %14, align 1
  %2667 = and i32 %2664, 255
  %2668 = tail call i32 @llvm.ctpop.i32(i32 %2667)
  %2669 = trunc i32 %2668 to i8
  %2670 = and i8 %2669, 1
  %2671 = xor i8 %2670, 1
  store i8 %2671, i8* %21, align 1
  %2672 = xor i32 %2663, 16
  %2673 = xor i32 %2664, %2672
  %2674 = lshr i32 %2673, 4
  %2675 = trunc i32 %2674 to i8
  %2676 = and i8 %2675, 1
  store i8 %2676, i8* %27, align 1
  %2677 = icmp eq i32 %2664, 0
  %2678 = zext i1 %2677 to i8
  store i8 %2678, i8* %30, align 1
  %2679 = lshr i32 %2664, 31
  %2680 = trunc i32 %2679 to i8
  store i8 %2680, i8* %33, align 1
  %2681 = lshr i32 %2663, 31
  %2682 = xor i32 %2681, 1
  %2683 = xor i32 %2679, %2681
  %2684 = add nuw nsw i32 %2683, %2682
  %2685 = icmp eq i32 %2684, 2
  %2686 = zext i1 %2685 to i8
  store i8 %2686, i8* %39, align 1
  %.v107 = select i1 %2677, i64 177, i64 26
  %2687 = add i64 %2599, %.v107
  store i64 %2687, i64* %3, align 8
  br i1 %2677, label %block_.L_400f90, label %block_400ef9

block_400ef9:                                     ; preds = %block_400edf
  %2688 = load i64, i64* %RBP.i, align 8
  %2689 = add i64 %2688, -1168
  store i64 %2689, i64* %RAX.i1508, align 8
  %2690 = add i64 %2688, -12
  %2691 = add i64 %2687, 10
  store i64 %2691, i64* %3, align 8
  %2692 = inttoptr i64 %2690 to i32*
  %2693 = load i32, i32* %2692, align 4
  %2694 = add i32 %2693, 1
  %2695 = zext i32 %2694 to i64
  store i64 %2695, i64* %RCX.i2066, align 8
  %2696 = sext i32 %2694 to i64
  %2697 = shl nsw i64 %2696, 6
  store i64 %2697, i64* %RDX.i2064, align 8
  %2698 = lshr i64 %2696, 57
  %2699 = and i64 %2698, 1
  %2700 = add i64 %2697, %2689
  store i64 %2700, i64* %RAX.i1508, align 8
  %2701 = icmp ult i64 %2700, %2689
  %2702 = icmp ult i64 %2700, %2697
  %2703 = or i1 %2701, %2702
  %2704 = zext i1 %2703 to i8
  store i8 %2704, i8* %14, align 1
  %2705 = trunc i64 %2700 to i32
  %2706 = and i32 %2705, 255
  %2707 = tail call i32 @llvm.ctpop.i32(i32 %2706)
  %2708 = trunc i32 %2707 to i8
  %2709 = and i8 %2708, 1
  %2710 = xor i8 %2709, 1
  store i8 %2710, i8* %21, align 1
  %2711 = xor i64 %2689, %2700
  %2712 = lshr i64 %2711, 4
  %2713 = trunc i64 %2712 to i8
  %2714 = and i8 %2713, 1
  store i8 %2714, i8* %27, align 1
  %2715 = icmp eq i64 %2700, 0
  %2716 = zext i1 %2715 to i8
  store i8 %2716, i8* %30, align 1
  %2717 = lshr i64 %2700, 63
  %2718 = trunc i64 %2717 to i8
  store i8 %2718, i8* %33, align 1
  %2719 = lshr i64 %2689, 63
  %2720 = xor i64 %2717, %2719
  %2721 = xor i64 %2717, %2699
  %2722 = add nuw nsw i64 %2720, %2721
  %2723 = icmp eq i64 %2722, 2
  %2724 = zext i1 %2723 to i8
  store i8 %2724, i8* %39, align 1
  %2725 = load i64, i64* %RBP.i, align 8
  %2726 = add i64 %2725, -4
  %2727 = add i64 %2687, 27
  store i64 %2727, i64* %3, align 8
  %2728 = inttoptr i64 %2726 to i32*
  %2729 = load i32, i32* %2728, align 4
  %2730 = sext i32 %2729 to i64
  store i64 %2730, i64* %RDX.i2064, align 8
  %2731 = shl nsw i64 %2730, 2
  %2732 = add i64 %2731, %2700
  %2733 = add i64 %2687, 31
  store i64 %2733, i64* %3, align 8
  %2734 = inttoptr i64 %2732 to i32*
  %2735 = load i32, i32* %2734, align 4
  store i8 0, i8* %14, align 1
  %2736 = and i32 %2735, 255
  %2737 = tail call i32 @llvm.ctpop.i32(i32 %2736)
  %2738 = trunc i32 %2737 to i8
  %2739 = and i8 %2738, 1
  %2740 = xor i8 %2739, 1
  store i8 %2740, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2741 = icmp eq i32 %2735, 0
  %2742 = zext i1 %2741 to i8
  store i8 %2742, i8* %30, align 1
  %2743 = lshr i32 %2735, 31
  %2744 = trunc i32 %2743 to i8
  store i8 %2744, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v108 = select i1 %2741, i64 151, i64 37
  %2745 = add i64 %2687, %.v108
  store i64 %2745, i64* %3, align 8
  br i1 %2741, label %block_.L_400f90, label %block_400f1e

block_400f1e:                                     ; preds = %block_400ef9
  store i64 255, i64* %RAX.i1508, align 8
  %2746 = add i64 %2725, -1168
  store i64 %2746, i64* %RCX.i2066, align 8
  %2747 = add i64 %2725, -12
  %2748 = add i64 %2745, 15
  store i64 %2748, i64* %3, align 8
  %2749 = inttoptr i64 %2747 to i32*
  %2750 = load i32, i32* %2749, align 4
  %2751 = add i32 %2750, 1
  %2752 = zext i32 %2751 to i64
  store i64 %2752, i64* %RDX.i2064, align 8
  %2753 = icmp eq i32 %2750, -1
  %2754 = icmp eq i32 %2751, 0
  %2755 = or i1 %2753, %2754
  %2756 = zext i1 %2755 to i8
  store i8 %2756, i8* %14, align 1
  %2757 = and i32 %2751, 255
  %2758 = tail call i32 @llvm.ctpop.i32(i32 %2757)
  %2759 = trunc i32 %2758 to i8
  %2760 = and i8 %2759, 1
  %2761 = xor i8 %2760, 1
  store i8 %2761, i8* %21, align 1
  %2762 = xor i32 %2750, %2751
  %2763 = lshr i32 %2762, 4
  %2764 = trunc i32 %2763 to i8
  %2765 = and i8 %2764, 1
  store i8 %2765, i8* %27, align 1
  %2766 = zext i1 %2754 to i8
  store i8 %2766, i8* %30, align 1
  %2767 = lshr i32 %2751, 31
  %2768 = trunc i32 %2767 to i8
  store i8 %2768, i8* %33, align 1
  %2769 = lshr i32 %2750, 31
  %2770 = xor i32 %2767, %2769
  %2771 = add nuw nsw i32 %2770, %2767
  %2772 = icmp eq i32 %2771, 2
  %2773 = zext i1 %2772 to i8
  store i8 %2773, i8* %39, align 1
  %2774 = add i64 %2745, 21
  store i64 %2774, i64* %3, align 8
  %2775 = load i32, i32* %2728, align 4
  %2776 = sub i32 %2751, %2775
  %2777 = zext i32 %2776 to i64
  store i64 %2777, i64* %RDX.i2064, align 8
  %2778 = icmp ult i32 %2751, %2775
  %2779 = zext i1 %2778 to i8
  store i8 %2779, i8* %14, align 1
  %2780 = and i32 %2776, 255
  %2781 = tail call i32 @llvm.ctpop.i32(i32 %2780)
  %2782 = trunc i32 %2781 to i8
  %2783 = and i8 %2782, 1
  %2784 = xor i8 %2783, 1
  store i8 %2784, i8* %21, align 1
  %2785 = xor i32 %2775, %2751
  %2786 = xor i32 %2785, %2776
  %2787 = lshr i32 %2786, 4
  %2788 = trunc i32 %2787 to i8
  %2789 = and i8 %2788, 1
  store i8 %2789, i8* %27, align 1
  %2790 = icmp eq i32 %2776, 0
  %2791 = zext i1 %2790 to i8
  store i8 %2791, i8* %30, align 1
  %2792 = lshr i32 %2776, 31
  %2793 = trunc i32 %2792 to i8
  store i8 %2793, i8* %33, align 1
  %2794 = lshr i32 %2775, 31
  %2795 = xor i32 %2794, %2767
  %2796 = xor i32 %2792, %2767
  %2797 = add nuw nsw i32 %2796, %2795
  %2798 = icmp eq i32 %2797, 2
  %2799 = zext i1 %2798 to i8
  store i8 %2799, i8* %39, align 1
  %2800 = sext i32 %2776 to i64
  store i64 %2800, i64* %RSI.i2060, align 8
  %2801 = shl nsw i64 %2800, 2
  %2802 = add i64 %2725, -1488
  %2803 = add i64 %2802, %2801
  %2804 = add i64 %2745, 31
  store i64 %2804, i64* %3, align 8
  %2805 = inttoptr i64 %2803 to i32*
  %2806 = load i32, i32* %2805, align 4
  %2807 = zext i32 %2806 to i64
  store i64 %2807, i64* %RDX.i2064, align 8
  %2808 = add i64 %2745, 34
  store i64 %2808, i64* %3, align 8
  %2809 = load i32, i32* %2749, align 4
  %2810 = add i32 %2809, 1
  %2811 = zext i32 %2810 to i64
  store i64 %2811, i64* %RDI.i1529, align 8
  %2812 = sext i32 %2810 to i64
  %2813 = shl nsw i64 %2812, 6
  store i64 %2813, i64* %RSI.i2060, align 8
  %2814 = lshr i64 %2812, 57
  %2815 = and i64 %2814, 1
  %2816 = load i64, i64* %RCX.i2066, align 8
  %2817 = add i64 %2813, %2816
  store i64 %2817, i64* %RCX.i2066, align 8
  %2818 = icmp ult i64 %2817, %2816
  %2819 = icmp ult i64 %2817, %2813
  %2820 = or i1 %2818, %2819
  %2821 = zext i1 %2820 to i8
  store i8 %2821, i8* %14, align 1
  %2822 = trunc i64 %2817 to i32
  %2823 = and i32 %2822, 255
  %2824 = tail call i32 @llvm.ctpop.i32(i32 %2823)
  %2825 = trunc i32 %2824 to i8
  %2826 = and i8 %2825, 1
  %2827 = xor i8 %2826, 1
  store i8 %2827, i8* %21, align 1
  %2828 = xor i64 %2816, %2817
  %2829 = lshr i64 %2828, 4
  %2830 = trunc i64 %2829 to i8
  %2831 = and i8 %2830, 1
  store i8 %2831, i8* %27, align 1
  %2832 = icmp eq i64 %2817, 0
  %2833 = zext i1 %2832 to i8
  store i8 %2833, i8* %30, align 1
  %2834 = lshr i64 %2817, 63
  %2835 = trunc i64 %2834 to i8
  store i8 %2835, i8* %33, align 1
  %2836 = lshr i64 %2816, 63
  %2837 = xor i64 %2834, %2836
  %2838 = xor i64 %2834, %2815
  %2839 = add nuw nsw i64 %2837, %2838
  %2840 = icmp eq i64 %2839, 2
  %2841 = zext i1 %2840 to i8
  store i8 %2841, i8* %39, align 1
  %2842 = load i64, i64* %RBP.i, align 8
  %2843 = add i64 %2842, -4
  %2844 = add i64 %2745, 51
  store i64 %2844, i64* %3, align 8
  %2845 = inttoptr i64 %2843 to i32*
  %2846 = load i32, i32* %2845, align 4
  %2847 = sext i32 %2846 to i64
  store i64 %2847, i64* %RSI.i2060, align 8
  %2848 = shl nsw i64 %2847, 2
  %2849 = add i64 %2848, %2817
  %2850 = add i64 %2745, 55
  store i64 %2850, i64* %3, align 8
  %2851 = inttoptr i64 %2849 to i32*
  %2852 = load i32, i32* %2851, align 4
  %2853 = sext i32 %2852 to i64
  store i64 %2853, i64* %RCX.i2066, align 8
  %2854 = load i64, i64* %RDX.i2064, align 8
  %2855 = shl nsw i64 %2853, 2
  %2856 = add nsw i64 %2855, 6304896
  %2857 = add i64 %2745, 62
  store i64 %2857, i64* %3, align 8
  %2858 = trunc i64 %2854 to i32
  %2859 = inttoptr i64 %2856 to i32*
  %2860 = load i32, i32* %2859, align 4
  %2861 = add i32 %2860, %2858
  %2862 = zext i32 %2861 to i64
  store i64 %2862, i64* %RDX.i2064, align 8
  %2863 = icmp ult i32 %2861, %2858
  %2864 = icmp ult i32 %2861, %2860
  %2865 = or i1 %2863, %2864
  %2866 = zext i1 %2865 to i8
  store i8 %2866, i8* %14, align 1
  %2867 = and i32 %2861, 255
  %2868 = tail call i32 @llvm.ctpop.i32(i32 %2867)
  %2869 = trunc i32 %2868 to i8
  %2870 = and i8 %2869, 1
  %2871 = xor i8 %2870, 1
  store i8 %2871, i8* %21, align 1
  %2872 = xor i32 %2860, %2858
  %2873 = xor i32 %2872, %2861
  %2874 = lshr i32 %2873, 4
  %2875 = trunc i32 %2874 to i8
  %2876 = and i8 %2875, 1
  store i8 %2876, i8* %27, align 1
  %2877 = icmp eq i32 %2861, 0
  %2878 = zext i1 %2877 to i8
  store i8 %2878, i8* %30, align 1
  %2879 = lshr i32 %2861, 31
  %2880 = trunc i32 %2879 to i8
  store i8 %2880, i8* %33, align 1
  %2881 = lshr i32 %2858, 31
  %2882 = lshr i32 %2860, 31
  %2883 = xor i32 %2879, %2881
  %2884 = xor i32 %2879, %2882
  %2885 = add nuw nsw i32 %2883, %2884
  %2886 = icmp eq i32 %2885, 2
  %2887 = zext i1 %2886 to i8
  store i8 %2887, i8* %39, align 1
  %2888 = add i64 %2842, -2708
  %2889 = load i32, i32* %EAX.i2012, align 4
  %2890 = add i64 %2745, 68
  store i64 %2890, i64* %3, align 8
  %2891 = inttoptr i64 %2888 to i32*
  store i32 %2889, i32* %2891, align 4
  %2892 = load i32, i32* %EDX.i2048, align 4
  %2893 = zext i32 %2892 to i64
  %2894 = load i64, i64* %3, align 8
  store i64 %2893, i64* %RAX.i1508, align 8
  %2895 = sext i32 %2892 to i64
  %2896 = lshr i64 %2895, 32
  store i64 %2896, i64* %57, align 8
  %2897 = load i64, i64* %RBP.i, align 8
  %2898 = add i64 %2897, -2708
  %2899 = add i64 %2894, 9
  store i64 %2899, i64* %3, align 8
  %2900 = inttoptr i64 %2898 to i32*
  %2901 = load i32, i32* %2900, align 4
  %2902 = zext i32 %2901 to i64
  store i64 %2902, i64* %RDI.i1529, align 8
  %2903 = add i64 %2894, 11
  store i64 %2903, i64* %3, align 8
  %2904 = sext i32 %2901 to i64
  %2905 = shl nuw i64 %2896, 32
  %2906 = or i64 %2905, %2893
  %2907 = sdiv i64 %2906, %2904
  %2908 = shl i64 %2907, 32
  %2909 = ashr exact i64 %2908, 32
  %2910 = icmp eq i64 %2907, %2909
  br i1 %2910, label %2913, label %2911

; <label>:2911:                                   ; preds = %block_400f1e
  %2912 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2903, %struct.Memory* %MEMORY.19)
  %.pre28 = load i32, i32* %EDX.i2048, align 4
  %.pre29 = load i64, i64* %3, align 8
  %.pre30 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__edi.exit

; <label>:2913:                                   ; preds = %block_400f1e
  %2914 = srem i64 %2906, %2904
  %2915 = and i64 %2907, 4294967295
  store i64 %2915, i64* %58, align 8
  %2916 = and i64 %2914, 4294967295
  store i64 %2916, i64* %57, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %2917 = trunc i64 %2914 to i32
  br label %routine_idivl__edi.exit

routine_idivl__edi.exit:                          ; preds = %2913, %2911
  %2918 = phi i64 [ %.pre30, %2911 ], [ %2897, %2913 ]
  %2919 = phi i64 [ %.pre29, %2911 ], [ %2903, %2913 ]
  %2920 = phi i32 [ %.pre28, %2911 ], [ %2917, %2913 ]
  %2921 = phi %struct.Memory* [ %2912, %2911 ], [ %MEMORY.19, %2913 ]
  %2922 = sext i32 %2920 to i64
  store i64 %2922, i64* %RCX.i2066, align 8
  %2923 = shl nsw i64 %2922, 2
  %2924 = add nsw i64 %2923, 6305920
  %2925 = add i64 %2919, 10
  store i64 %2925, i64* %3, align 8
  %2926 = inttoptr i64 %2924 to i32*
  %2927 = load i32, i32* %2926, align 4
  %2928 = zext i32 %2927 to i64
  store i64 %2928, i64* %RDX.i2064, align 8
  %2929 = add i64 %2918, -12
  %2930 = add i64 %2919, 14
  store i64 %2930, i64* %3, align 8
  %2931 = inttoptr i64 %2929 to i32*
  %2932 = load i32, i32* %2931, align 4
  %2933 = add i32 %2932, 1
  %2934 = zext i32 %2933 to i64
  store i64 %2934, i64* %R8.i1487, align 8
  %2935 = icmp eq i32 %2932, -1
  %2936 = icmp eq i32 %2933, 0
  %2937 = or i1 %2935, %2936
  %2938 = zext i1 %2937 to i8
  store i8 %2938, i8* %14, align 1
  %2939 = and i32 %2933, 255
  %2940 = tail call i32 @llvm.ctpop.i32(i32 %2939)
  %2941 = trunc i32 %2940 to i8
  %2942 = and i8 %2941, 1
  %2943 = xor i8 %2942, 1
  store i8 %2943, i8* %21, align 1
  %2944 = xor i32 %2932, %2933
  %2945 = lshr i32 %2944, 4
  %2946 = trunc i32 %2945 to i8
  %2947 = and i8 %2946, 1
  store i8 %2947, i8* %27, align 1
  %2948 = zext i1 %2936 to i8
  store i8 %2948, i8* %30, align 1
  %2949 = lshr i32 %2933, 31
  %2950 = trunc i32 %2949 to i8
  store i8 %2950, i8* %33, align 1
  %2951 = lshr i32 %2932, 31
  %2952 = xor i32 %2949, %2951
  %2953 = add nuw nsw i32 %2952, %2949
  %2954 = icmp eq i32 %2953, 2
  %2955 = zext i1 %2954 to i8
  store i8 %2955, i8* %39, align 1
  %2956 = sext i32 %2933 to i64
  store i64 %2956, i64* %RCX.i2066, align 8
  %2957 = shl nsw i64 %2956, 2
  %2958 = add i64 %2918, -1248
  %2959 = add i64 %2958, %2957
  %2960 = add i64 %2919, 28
  store i64 %2960, i64* %3, align 8
  %2961 = inttoptr i64 %2959 to i32*
  %2962 = load i32, i32* %2961, align 4
  %2963 = xor i32 %2962, %2927
  %2964 = zext i32 %2963 to i64
  store i64 %2964, i64* %RDX.i2064, align 8
  store i8 0, i8* %14, align 1
  %2965 = and i32 %2963, 255
  %2966 = tail call i32 @llvm.ctpop.i32(i32 %2965)
  %2967 = trunc i32 %2966 to i8
  %2968 = and i8 %2967, 1
  %2969 = xor i8 %2968, 1
  store i8 %2969, i8* %21, align 1
  %2970 = icmp eq i32 %2963, 0
  %2971 = zext i1 %2970 to i8
  store i8 %2971, i8* %30, align 1
  %2972 = lshr i32 %2963, 31
  %2973 = trunc i32 %2972 to i8
  store i8 %2973, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %2974 = add i64 %2919, 35
  store i64 %2974, i64* %3, align 8
  store i32 %2963, i32* %2961, align 4
  %.pre31 = load i64, i64* %3, align 8
  br label %block_.L_400f90

block_.L_400f90:                                  ; preds = %routine_idivl__edi.exit, %block_400ef9, %block_400edf
  %2975 = phi i64 [ %2687, %block_400edf ], [ %2745, %block_400ef9 ], [ %.pre31, %routine_idivl__edi.exit ]
  %MEMORY.20 = phi %struct.Memory* [ %MEMORY.19, %block_400edf ], [ %MEMORY.19, %block_400ef9 ], [ %2921, %routine_idivl__edi.exit ]
  %2976 = load i64, i64* %RBP.i, align 8
  %2977 = add i64 %2976, -4
  %2978 = add i64 %2975, 8
  store i64 %2978, i64* %3, align 8
  %2979 = inttoptr i64 %2977 to i32*
  %2980 = load i32, i32* %2979, align 4
  %2981 = add i32 %2980, 1
  %2982 = zext i32 %2981 to i64
  store i64 %2982, i64* %RAX.i1508, align 8
  %2983 = icmp eq i32 %2980, -1
  %2984 = icmp eq i32 %2981, 0
  %2985 = or i1 %2983, %2984
  %2986 = zext i1 %2985 to i8
  store i8 %2986, i8* %14, align 1
  %2987 = and i32 %2981, 255
  %2988 = tail call i32 @llvm.ctpop.i32(i32 %2987)
  %2989 = trunc i32 %2988 to i8
  %2990 = and i8 %2989, 1
  %2991 = xor i8 %2990, 1
  store i8 %2991, i8* %21, align 1
  %2992 = xor i32 %2980, %2981
  %2993 = lshr i32 %2992, 4
  %2994 = trunc i32 %2993 to i8
  %2995 = and i8 %2994, 1
  store i8 %2995, i8* %27, align 1
  %2996 = zext i1 %2984 to i8
  store i8 %2996, i8* %30, align 1
  %2997 = lshr i32 %2981, 31
  %2998 = trunc i32 %2997 to i8
  store i8 %2998, i8* %33, align 1
  %2999 = lshr i32 %2980, 31
  %3000 = xor i32 %2997, %2999
  %3001 = add nuw nsw i32 %3000, %2997
  %3002 = icmp eq i32 %3001, 2
  %3003 = zext i1 %3002 to i8
  store i8 %3003, i8* %39, align 1
  %3004 = add i64 %2975, 14
  store i64 %3004, i64* %3, align 8
  store i32 %2981, i32* %2979, align 4
  %3005 = load i64, i64* %3, align 8
  %3006 = add i64 %3005, -216
  store i64 %3006, i64* %3, align 8
  br label %block_.L_400ec6

block_.L_400fa3:                                  ; preds = %block_.L_400ec6
  %3007 = sext i32 %2606 to i64
  store i64 %3007, i64* %RCX.i2066, align 8
  %3008 = shl nsw i64 %3007, 2
  %3009 = add i64 %2600, -1248
  %3010 = add i64 %3009, %3008
  %3011 = add i64 %2599, 17
  store i64 %3011, i64* %3, align 8
  %3012 = inttoptr i64 %3010 to i32*
  %3013 = load i32, i32* %3012, align 4
  %3014 = sext i32 %3013 to i64
  store i64 %3014, i64* %RCX.i2066, align 8
  %3015 = shl nsw i64 %3014, 2
  %3016 = add nsw i64 %3015, 6304896
  %3017 = add i64 %2599, 24
  store i64 %3017, i64* %3, align 8
  %3018 = inttoptr i64 %3016 to i32*
  %3019 = load i32, i32* %3018, align 4
  %3020 = zext i32 %3019 to i64
  store i64 %3020, i64* %RAX.i1508, align 8
  %3021 = add i64 %2599, 27
  store i64 %3021, i64* %3, align 8
  %3022 = load i32, i32* %2603, align 4
  %3023 = add i32 %3022, 1
  %3024 = zext i32 %3023 to i64
  store i64 %3024, i64* %RDX.i2064, align 8
  %3025 = icmp eq i32 %3022, -1
  %3026 = icmp eq i32 %3023, 0
  %3027 = or i1 %3025, %3026
  %3028 = zext i1 %3027 to i8
  store i8 %3028, i8* %14, align 1
  %3029 = and i32 %3023, 255
  %3030 = tail call i32 @llvm.ctpop.i32(i32 %3029)
  %3031 = trunc i32 %3030 to i8
  %3032 = and i8 %3031, 1
  %3033 = xor i8 %3032, 1
  store i8 %3033, i8* %21, align 1
  %3034 = xor i32 %3022, %3023
  %3035 = lshr i32 %3034, 4
  %3036 = trunc i32 %3035 to i8
  %3037 = and i8 %3036, 1
  store i8 %3037, i8* %27, align 1
  %3038 = zext i1 %3026 to i8
  store i8 %3038, i8* %30, align 1
  %3039 = lshr i32 %3023, 31
  %3040 = trunc i32 %3039 to i8
  store i8 %3040, i8* %33, align 1
  %3041 = lshr i32 %3022, 31
  %3042 = xor i32 %3039, %3041
  %3043 = add nuw nsw i32 %3042, %3039
  %3044 = icmp eq i32 %3043, 2
  %3045 = zext i1 %3044 to i8
  store i8 %3045, i8* %39, align 1
  %3046 = sext i32 %3023 to i64
  store i64 %3046, i64* %RCX.i2066, align 8
  %3047 = load i64, i64* %RBP.i, align 8
  %3048 = shl nsw i64 %3046, 2
  %3049 = add i64 %3047, -1248
  %3050 = add i64 %3049, %3048
  %3051 = add i64 %2599, 40
  store i64 %3051, i64* %3, align 8
  %3052 = inttoptr i64 %3050 to i32*
  store i32 %3019, i32* %3052, align 4
  %.pre32 = load i64, i64* %3, align 8
  %.pre33 = load i64, i64* %RBP.i, align 8
  br label %block_.L_400fcb

block_.L_400fcb:                                  ; preds = %block_.L_400e3a, %block_.L_400fa3
  %3053 = phi i64 [ %2363, %block_.L_400e3a ], [ %.pre33, %block_.L_400fa3 ]
  %3054 = phi i64 [ %2393, %block_.L_400e3a ], [ %.pre32, %block_.L_400fa3 ]
  %MEMORY.21 = phi %struct.Memory* [ %MEMORY.17, %block_.L_400e3a ], [ %MEMORY.19, %block_.L_400fa3 ]
  store i64 0, i64* %RAX.i1508, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %CL.i1777, align 1
  %3055 = add i64 %3053, -12
  %3056 = add i64 %3054, 13
  store i64 %3056, i64* %3, align 8
  %3057 = inttoptr i64 %3055 to i32*
  %3058 = load i32, i32* %3057, align 4
  %3059 = add i32 %3058, -16
  %3060 = icmp ult i32 %3058, 16
  %3061 = zext i1 %3060 to i8
  store i8 %3061, i8* %14, align 1
  %3062 = and i32 %3059, 255
  %3063 = tail call i32 @llvm.ctpop.i32(i32 %3062)
  %3064 = trunc i32 %3063 to i8
  %3065 = and i8 %3064, 1
  %3066 = xor i8 %3065, 1
  store i8 %3066, i8* %21, align 1
  %3067 = xor i32 %3058, 16
  %3068 = xor i32 %3067, %3059
  %3069 = lshr i32 %3068, 4
  %3070 = trunc i32 %3069 to i8
  %3071 = and i8 %3070, 1
  store i8 %3071, i8* %27, align 1
  %3072 = icmp eq i32 %3059, 0
  %3073 = zext i1 %3072 to i8
  store i8 %3073, i8* %30, align 1
  %3074 = lshr i32 %3059, 31
  %3075 = trunc i32 %3074 to i8
  store i8 %3075, i8* %33, align 1
  %3076 = lshr i32 %3058, 31
  %3077 = xor i32 %3074, %3076
  %3078 = add nuw nsw i32 %3077, %3076
  %3079 = icmp eq i32 %3078, 2
  %3080 = zext i1 %3079 to i8
  store i8 %3080, i8* %39, align 1
  %3081 = add i64 %3053, -2709
  %3082 = add i64 %3054, 19
  store i64 %3082, i64* %3, align 8
  %3083 = inttoptr i64 %3081 to i8*
  store i8 0, i8* %3083, align 1
  %3084 = load i64, i64* %3, align 8
  %3085 = load i8, i8* %33, align 1
  %3086 = icmp ne i8 %3085, 0
  %3087 = load i8, i8* %39, align 1
  %3088 = icmp ne i8 %3087, 0
  %3089 = xor i1 %3086, %3088
  %.v109 = select i1 %3089, i64 6, i64 32
  %3090 = add i64 %3084, %.v109
  store i64 %3090, i64* %3, align 8
  br i1 %3089, label %block_400fe4, label %block_.L_400ffe

block_400fe4:                                     ; preds = %block_.L_400fcb
  %3091 = load i64, i64* %RBP.i, align 8
  %3092 = add i64 %3091, -12
  %3093 = add i64 %3090, 3
  store i64 %3093, i64* %3, align 8
  %3094 = inttoptr i64 %3092 to i32*
  %3095 = load i32, i32* %3094, align 4
  %3096 = add i32 %3095, 1
  %3097 = zext i32 %3096 to i64
  store i64 %3097, i64* %RAX.i1508, align 8
  %3098 = icmp eq i32 %3095, -1
  %3099 = icmp eq i32 %3096, 0
  %3100 = or i1 %3098, %3099
  %3101 = zext i1 %3100 to i8
  store i8 %3101, i8* %14, align 1
  %3102 = and i32 %3096, 255
  %3103 = tail call i32 @llvm.ctpop.i32(i32 %3102)
  %3104 = trunc i32 %3103 to i8
  %3105 = and i8 %3104, 1
  %3106 = xor i8 %3105, 1
  store i8 %3106, i8* %21, align 1
  %3107 = xor i32 %3095, %3096
  %3108 = lshr i32 %3107, 4
  %3109 = trunc i32 %3108 to i8
  %3110 = and i8 %3109, 1
  store i8 %3110, i8* %27, align 1
  %3111 = zext i1 %3099 to i8
  store i8 %3111, i8* %30, align 1
  %3112 = lshr i32 %3096, 31
  %3113 = trunc i32 %3112 to i8
  store i8 %3113, i8* %33, align 1
  %3114 = lshr i32 %3095, 31
  %3115 = xor i32 %3112, %3114
  %3116 = add nuw nsw i32 %3115, %3112
  %3117 = icmp eq i32 %3116, 2
  %3118 = zext i1 %3117 to i8
  store i8 %3118, i8* %39, align 1
  %3119 = sext i32 %3096 to i64
  store i64 %3119, i64* %RCX.i2066, align 8
  %3120 = shl nsw i64 %3119, 2
  %3121 = add i64 %3091, -1328
  %3122 = add i64 %3121, %3120
  %3123 = add i64 %3090, 17
  store i64 %3123, i64* %3, align 8
  %3124 = inttoptr i64 %3122 to i32*
  %3125 = load i32, i32* %3124, align 4
  %3126 = add i32 %3125, -8
  %3127 = icmp ult i32 %3125, 8
  %3128 = zext i1 %3127 to i8
  store i8 %3128, i8* %14, align 1
  %3129 = and i32 %3126, 255
  %3130 = tail call i32 @llvm.ctpop.i32(i32 %3129)
  %3131 = trunc i32 %3130 to i8
  %3132 = and i8 %3131, 1
  %3133 = xor i8 %3132, 1
  store i8 %3133, i8* %21, align 1
  %3134 = xor i32 %3125, %3126
  %3135 = lshr i32 %3134, 4
  %3136 = trunc i32 %3135 to i8
  %3137 = and i8 %3136, 1
  store i8 %3137, i8* %27, align 1
  %3138 = icmp eq i32 %3126, 0
  %3139 = zext i1 %3138 to i8
  store i8 %3139, i8* %30, align 1
  %3140 = lshr i32 %3126, 31
  %3141 = trunc i32 %3140 to i8
  store i8 %3141, i8* %33, align 1
  %3142 = lshr i32 %3125, 31
  %3143 = xor i32 %3140, %3142
  %3144 = add nuw nsw i32 %3143, %3142
  %3145 = icmp eq i32 %3144, 2
  %3146 = zext i1 %3145 to i8
  store i8 %3146, i8* %39, align 1
  %3147 = icmp ne i8 %3141, 0
  %3148 = xor i1 %3147, %3145
  %3149 = or i1 %3138, %3148
  %3150 = zext i1 %3149 to i8
  store i8 %3150, i8* %DL.i1081, align 1
  %3151 = add i64 %3091, -2709
  %3152 = add i64 %3090, 26
  store i64 %3152, i64* %3, align 8
  %3153 = inttoptr i64 %3151 to i8*
  store i8 %3150, i8* %3153, align 1
  %.pre34 = load i64, i64* %3, align 8
  br label %block_.L_400ffe

block_.L_400ffe:                                  ; preds = %block_.L_400fcb, %block_400fe4
  %3154 = phi i64 [ %.pre34, %block_400fe4 ], [ %3090, %block_.L_400fcb ]
  %3155 = load i64, i64* %RBP.i, align 8
  %3156 = add i64 %3155, -2709
  %3157 = add i64 %3154, 6
  store i64 %3157, i64* %3, align 8
  %3158 = inttoptr i64 %3156 to i8*
  %3159 = load i8, i8* %3158, align 1
  store i8 %3159, i8* %AL.i1776, align 1
  %3160 = and i8 %3159, 1
  store i8 0, i8* %14, align 1
  %3161 = zext i8 %3160 to i32
  %3162 = tail call i32 @llvm.ctpop.i32(i32 %3161)
  %3163 = trunc i32 %3162 to i8
  %3164 = xor i8 %3163, 1
  store i8 %3164, i8* %21, align 1
  %3165 = xor i8 %3160, 1
  store i8 %3165, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %3166 = icmp eq i8 %3165, 0
  %.v110 = select i1 %3166, i64 -1349, i64 14
  %3167 = add i64 %3154, %.v110
  store i64 %3167, i64* %3, align 8
  br i1 %3166, label %block_.L_400ab9, label %block_40100c

block_40100c:                                     ; preds = %block_.L_400ffe
  %3168 = add i64 %3155, -12
  %3169 = add i64 %3167, 3
  store i64 %3169, i64* %3, align 8
  %3170 = inttoptr i64 %3168 to i32*
  %3171 = load i32, i32* %3170, align 4
  %3172 = add i32 %3171, 1
  %3173 = zext i32 %3172 to i64
  store i64 %3173, i64* %RAX.i1508, align 8
  %3174 = icmp eq i32 %3171, -1
  %3175 = icmp eq i32 %3172, 0
  %3176 = or i1 %3174, %3175
  %3177 = zext i1 %3176 to i8
  store i8 %3177, i8* %14, align 1
  %3178 = and i32 %3172, 255
  %3179 = tail call i32 @llvm.ctpop.i32(i32 %3178)
  %3180 = trunc i32 %3179 to i8
  %3181 = and i8 %3180, 1
  %3182 = xor i8 %3181, 1
  store i8 %3182, i8* %21, align 1
  %3183 = xor i32 %3171, %3172
  %3184 = lshr i32 %3183, 4
  %3185 = trunc i32 %3184 to i8
  %3186 = and i8 %3185, 1
  store i8 %3186, i8* %27, align 1
  %3187 = zext i1 %3175 to i8
  store i8 %3187, i8* %30, align 1
  %3188 = lshr i32 %3172, 31
  %3189 = trunc i32 %3188 to i8
  store i8 %3189, i8* %33, align 1
  %3190 = lshr i32 %3171, 31
  %3191 = xor i32 %3188, %3190
  %3192 = add nuw nsw i32 %3191, %3188
  %3193 = icmp eq i32 %3192, 2
  %3194 = zext i1 %3193 to i8
  store i8 %3194, i8* %39, align 1
  %3195 = add i64 %3167, 9
  store i64 %3195, i64* %3, align 8
  store i32 %3172, i32* %3170, align 4
  %3196 = load i64, i64* %RBP.i, align 8
  %3197 = add i64 %3196, -12
  %3198 = load i64, i64* %3, align 8
  %3199 = add i64 %3198, 4
  store i64 %3199, i64* %3, align 8
  %3200 = inttoptr i64 %3197 to i32*
  %3201 = load i32, i32* %3200, align 4
  %3202 = sext i32 %3201 to i64
  store i64 %3202, i64* %RCX.i2066, align 8
  %3203 = shl nsw i64 %3202, 2
  %3204 = add i64 %3196, -1328
  %3205 = add i64 %3204, %3203
  %3206 = add i64 %3198, 12
  store i64 %3206, i64* %3, align 8
  %3207 = inttoptr i64 %3205 to i32*
  %3208 = load i32, i32* %3207, align 4
  %3209 = add i32 %3208, -8
  %3210 = icmp ult i32 %3208, 8
  %3211 = zext i1 %3210 to i8
  store i8 %3211, i8* %14, align 1
  %3212 = and i32 %3209, 255
  %3213 = tail call i32 @llvm.ctpop.i32(i32 %3212)
  %3214 = trunc i32 %3213 to i8
  %3215 = and i8 %3214, 1
  %3216 = xor i8 %3215, 1
  store i8 %3216, i8* %21, align 1
  %3217 = xor i32 %3208, %3209
  %3218 = lshr i32 %3217, 4
  %3219 = trunc i32 %3218 to i8
  %3220 = and i8 %3219, 1
  store i8 %3220, i8* %27, align 1
  %3221 = icmp eq i32 %3209, 0
  %3222 = zext i1 %3221 to i8
  store i8 %3222, i8* %30, align 1
  %3223 = lshr i32 %3209, 31
  %3224 = trunc i32 %3223 to i8
  store i8 %3224, i8* %33, align 1
  %3225 = lshr i32 %3208, 31
  %3226 = xor i32 %3223, %3225
  %3227 = add nuw nsw i32 %3226, %3225
  %3228 = icmp eq i32 %3227, 2
  %3229 = zext i1 %3228 to i8
  store i8 %3229, i8* %39, align 1
  %3230 = icmp ne i8 %3224, 0
  %3231 = xor i1 %3230, %3228
  %.demorgan111 = or i1 %3221, %3231
  %.v112 = select i1 %.demorgan111, i64 18, i64 1859
  %3232 = add i64 %3198, %.v112
  %3233 = add i64 %3196, -4
  %3234 = add i64 %3232, 7
  store i64 %3234, i64* %3, align 8
  %3235 = inttoptr i64 %3233 to i32*
  store i32 0, i32* %3235, align 4
  %.pre80 = load i64, i64* %3, align 8
  br i1 %.demorgan111, label %block_.L_40102e, label %block_.L_40175f

block_.L_40102e:                                  ; preds = %block_40100c, %block_401042
  %3236 = phi i64 [ %3401, %block_401042 ], [ %.pre80, %block_40100c ]
  %3237 = load i64, i64* %RBP.i, align 8
  %3238 = add i64 %3237, -4
  %3239 = add i64 %3236, 3
  store i64 %3239, i64* %3, align 8
  %3240 = inttoptr i64 %3238 to i32*
  %3241 = load i32, i32* %3240, align 4
  %3242 = zext i32 %3241 to i64
  store i64 %3242, i64* %RAX.i1508, align 8
  %3243 = add i64 %3237, -12
  %3244 = add i64 %3236, 7
  store i64 %3244, i64* %3, align 8
  %3245 = inttoptr i64 %3243 to i32*
  %3246 = load i32, i32* %3245, align 4
  %3247 = sext i32 %3246 to i64
  store i64 %3247, i64* %RCX.i2066, align 8
  %3248 = shl nsw i64 %3247, 2
  %3249 = add i64 %3237, -1328
  %3250 = add i64 %3249, %3248
  %3251 = add i64 %3236, 14
  store i64 %3251, i64* %3, align 8
  %3252 = inttoptr i64 %3250 to i32*
  %3253 = load i32, i32* %3252, align 4
  %3254 = sub i32 %3241, %3253
  %3255 = icmp ult i32 %3241, %3253
  %3256 = zext i1 %3255 to i8
  store i8 %3256, i8* %14, align 1
  %3257 = and i32 %3254, 255
  %3258 = tail call i32 @llvm.ctpop.i32(i32 %3257)
  %3259 = trunc i32 %3258 to i8
  %3260 = and i8 %3259, 1
  %3261 = xor i8 %3260, 1
  store i8 %3261, i8* %21, align 1
  %3262 = xor i32 %3253, %3241
  %3263 = xor i32 %3262, %3254
  %3264 = lshr i32 %3263, 4
  %3265 = trunc i32 %3264 to i8
  %3266 = and i8 %3265, 1
  store i8 %3266, i8* %27, align 1
  %3267 = icmp eq i32 %3254, 0
  %3268 = zext i1 %3267 to i8
  store i8 %3268, i8* %30, align 1
  %3269 = lshr i32 %3254, 31
  %3270 = trunc i32 %3269 to i8
  store i8 %3270, i8* %33, align 1
  %3271 = lshr i32 %3241, 31
  %3272 = lshr i32 %3253, 31
  %3273 = xor i32 %3272, %3271
  %3274 = xor i32 %3269, %3271
  %3275 = add nuw nsw i32 %3274, %3273
  %3276 = icmp eq i32 %3275, 2
  %3277 = zext i1 %3276 to i8
  store i8 %3277, i8* %39, align 1
  %3278 = icmp ne i8 %3270, 0
  %3279 = xor i1 %3278, %3276
  %.demorgan113 = or i1 %3267, %3279
  %.v114 = select i1 %.demorgan113, i64 20, i64 88
  %3280 = add i64 %3236, %.v114
  store i64 %3280, i64* %3, align 8
  br i1 %.demorgan113, label %block_401042, label %block_.L_401086

block_401042:                                     ; preds = %block_.L_40102e
  %3281 = add i64 %3237, -1168
  store i64 %3281, i64* %RAX.i1508, align 8
  %3282 = add i64 %3280, 11
  store i64 %3282, i64* %3, align 8
  %3283 = load i32, i32* %3245, align 4
  %3284 = sext i32 %3283 to i64
  %3285 = shl nsw i64 %3284, 6
  store i64 %3285, i64* %RCX.i2066, align 8
  %3286 = lshr i64 %3284, 57
  %3287 = and i64 %3286, 1
  %3288 = add i64 %3285, %3281
  store i64 %3288, i64* %RDX.i2064, align 8
  %3289 = icmp ult i64 %3288, %3281
  %3290 = icmp ult i64 %3288, %3285
  %3291 = or i1 %3289, %3290
  %3292 = zext i1 %3291 to i8
  store i8 %3292, i8* %14, align 1
  %3293 = trunc i64 %3288 to i32
  %3294 = and i32 %3293, 255
  %3295 = tail call i32 @llvm.ctpop.i32(i32 %3294)
  %3296 = trunc i32 %3295 to i8
  %3297 = and i8 %3296, 1
  %3298 = xor i8 %3297, 1
  store i8 %3298, i8* %21, align 1
  %3299 = xor i64 %3281, %3288
  %3300 = lshr i64 %3299, 4
  %3301 = trunc i64 %3300 to i8
  %3302 = and i8 %3301, 1
  store i8 %3302, i8* %27, align 1
  %3303 = icmp eq i64 %3288, 0
  %3304 = zext i1 %3303 to i8
  store i8 %3304, i8* %30, align 1
  %3305 = lshr i64 %3288, 63
  %3306 = trunc i64 %3305 to i8
  store i8 %3306, i8* %33, align 1
  %3307 = lshr i64 %3281, 63
  %3308 = xor i64 %3305, %3307
  %3309 = xor i64 %3305, %3287
  %3310 = add nuw nsw i64 %3308, %3309
  %3311 = icmp eq i64 %3310, 2
  %3312 = zext i1 %3311 to i8
  store i8 %3312, i8* %39, align 1
  %3313 = add i64 %3280, 25
  store i64 %3313, i64* %3, align 8
  %3314 = load i32, i32* %3240, align 4
  %3315 = sext i32 %3314 to i64
  store i64 %3315, i64* %RCX.i2066, align 8
  %3316 = shl nsw i64 %3315, 2
  %3317 = add i64 %3316, %3288
  %3318 = add i64 %3280, 29
  store i64 %3318, i64* %3, align 8
  %3319 = inttoptr i64 %3317 to i32*
  %3320 = load i32, i32* %3319, align 4
  %3321 = sext i32 %3320 to i64
  store i64 %3321, i64* %RCX.i2066, align 8
  %3322 = shl nsw i64 %3321, 2
  %3323 = add nsw i64 %3322, 6304896
  %3324 = add i64 %3280, 36
  store i64 %3324, i64* %3, align 8
  %3325 = inttoptr i64 %3323 to i32*
  %3326 = load i32, i32* %3325, align 4
  %3327 = zext i32 %3326 to i64
  store i64 %3327, i64* %RSI.i2060, align 8
  %3328 = add i64 %3280, 40
  store i64 %3328, i64* %3, align 8
  %3329 = load i32, i32* %3245, align 4
  %3330 = sext i32 %3329 to i64
  %3331 = shl nsw i64 %3330, 6
  store i64 %3331, i64* %RCX.i2066, align 8
  %3332 = lshr i64 %3330, 57
  %3333 = and i64 %3332, 1
  %3334 = load i64, i64* %RAX.i1508, align 8
  %3335 = add i64 %3331, %3334
  store i64 %3335, i64* %RAX.i1508, align 8
  %3336 = icmp ult i64 %3335, %3334
  %3337 = icmp ult i64 %3335, %3331
  %3338 = or i1 %3336, %3337
  %3339 = zext i1 %3338 to i8
  store i8 %3339, i8* %14, align 1
  %3340 = trunc i64 %3335 to i32
  %3341 = and i32 %3340, 255
  %3342 = tail call i32 @llvm.ctpop.i32(i32 %3341)
  %3343 = trunc i32 %3342 to i8
  %3344 = and i8 %3343, 1
  %3345 = xor i8 %3344, 1
  store i8 %3345, i8* %21, align 1
  %3346 = xor i64 %3334, %3335
  %3347 = lshr i64 %3346, 4
  %3348 = trunc i64 %3347 to i8
  %3349 = and i8 %3348, 1
  store i8 %3349, i8* %27, align 1
  %3350 = icmp eq i64 %3335, 0
  %3351 = zext i1 %3350 to i8
  store i8 %3351, i8* %30, align 1
  %3352 = lshr i64 %3335, 63
  %3353 = trunc i64 %3352 to i8
  store i8 %3353, i8* %33, align 1
  %3354 = lshr i64 %3334, 63
  %3355 = xor i64 %3352, %3354
  %3356 = xor i64 %3352, %3333
  %3357 = add nuw nsw i64 %3355, %3356
  %3358 = icmp eq i64 %3357, 2
  %3359 = zext i1 %3358 to i8
  store i8 %3359, i8* %39, align 1
  %3360 = load i64, i64* %RBP.i, align 8
  %3361 = add i64 %3360, -4
  %3362 = add i64 %3280, 51
  store i64 %3362, i64* %3, align 8
  %3363 = inttoptr i64 %3361 to i32*
  %3364 = load i32, i32* %3363, align 4
  %3365 = sext i32 %3364 to i64
  store i64 %3365, i64* %RCX.i2066, align 8
  %3366 = shl nsw i64 %3365, 2
  %3367 = add i64 %3366, %3335
  %3368 = add i64 %3280, 54
  store i64 %3368, i64* %3, align 8
  %3369 = inttoptr i64 %3367 to i32*
  store i32 %3326, i32* %3369, align 4
  %3370 = load i64, i64* %RBP.i, align 8
  %3371 = add i64 %3370, -4
  %3372 = load i64, i64* %3, align 8
  %3373 = add i64 %3372, 3
  store i64 %3373, i64* %3, align 8
  %3374 = inttoptr i64 %3371 to i32*
  %3375 = load i32, i32* %3374, align 4
  %3376 = add i32 %3375, 1
  %3377 = zext i32 %3376 to i64
  store i64 %3377, i64* %RAX.i1508, align 8
  %3378 = icmp eq i32 %3375, -1
  %3379 = icmp eq i32 %3376, 0
  %3380 = or i1 %3378, %3379
  %3381 = zext i1 %3380 to i8
  store i8 %3381, i8* %14, align 1
  %3382 = and i32 %3376, 255
  %3383 = tail call i32 @llvm.ctpop.i32(i32 %3382)
  %3384 = trunc i32 %3383 to i8
  %3385 = and i8 %3384, 1
  %3386 = xor i8 %3385, 1
  store i8 %3386, i8* %21, align 1
  %3387 = xor i32 %3375, %3376
  %3388 = lshr i32 %3387, 4
  %3389 = trunc i32 %3388 to i8
  %3390 = and i8 %3389, 1
  store i8 %3390, i8* %27, align 1
  %3391 = zext i1 %3379 to i8
  store i8 %3391, i8* %30, align 1
  %3392 = lshr i32 %3376, 31
  %3393 = trunc i32 %3392 to i8
  store i8 %3393, i8* %33, align 1
  %3394 = lshr i32 %3375, 31
  %3395 = xor i32 %3392, %3394
  %3396 = add nuw nsw i32 %3395, %3392
  %3397 = icmp eq i32 %3396, 2
  %3398 = zext i1 %3397 to i8
  store i8 %3398, i8* %39, align 1
  %3399 = add i64 %3372, 9
  store i64 %3399, i64* %3, align 8
  store i32 %3376, i32* %3374, align 4
  %3400 = load i64, i64* %3, align 8
  %3401 = add i64 %3400, -83
  store i64 %3401, i64* %3, align 8
  br label %block_.L_40102e

block_.L_401086:                                  ; preds = %block_.L_40102e
  %3402 = add i64 %3280, 7
  store i64 %3402, i64* %3, align 8
  store i32 1, i32* %3240, align 4
  %.pre36 = load i64, i64* %3, align 8
  br label %block_.L_40108d

block_.L_40108d:                                  ; preds = %block_4010a1, %block_.L_401086
  %3403 = phi i64 [ %3528, %block_4010a1 ], [ %.pre36, %block_.L_401086 ]
  %3404 = load i64, i64* %RBP.i, align 8
  %3405 = add i64 %3404, -4
  %3406 = add i64 %3403, 3
  store i64 %3406, i64* %3, align 8
  %3407 = inttoptr i64 %3405 to i32*
  %3408 = load i32, i32* %3407, align 4
  %3409 = zext i32 %3408 to i64
  store i64 %3409, i64* %RAX.i1508, align 8
  %3410 = add i64 %3404, -12
  %3411 = add i64 %3403, 7
  store i64 %3411, i64* %3, align 8
  %3412 = inttoptr i64 %3410 to i32*
  %3413 = load i32, i32* %3412, align 4
  %3414 = sext i32 %3413 to i64
  store i64 %3414, i64* %RCX.i2066, align 8
  %3415 = shl nsw i64 %3414, 2
  %3416 = add i64 %3404, -1328
  %3417 = add i64 %3416, %3415
  %3418 = add i64 %3403, 14
  store i64 %3418, i64* %3, align 8
  %3419 = inttoptr i64 %3417 to i32*
  %3420 = load i32, i32* %3419, align 4
  %3421 = sub i32 %3408, %3420
  %3422 = icmp ult i32 %3408, %3420
  %3423 = zext i1 %3422 to i8
  store i8 %3423, i8* %14, align 1
  %3424 = and i32 %3421, 255
  %3425 = tail call i32 @llvm.ctpop.i32(i32 %3424)
  %3426 = trunc i32 %3425 to i8
  %3427 = and i8 %3426, 1
  %3428 = xor i8 %3427, 1
  store i8 %3428, i8* %21, align 1
  %3429 = xor i32 %3420, %3408
  %3430 = xor i32 %3429, %3421
  %3431 = lshr i32 %3430, 4
  %3432 = trunc i32 %3431 to i8
  %3433 = and i8 %3432, 1
  store i8 %3433, i8* %27, align 1
  %3434 = icmp eq i32 %3421, 0
  %3435 = zext i1 %3434 to i8
  store i8 %3435, i8* %30, align 1
  %3436 = lshr i32 %3421, 31
  %3437 = trunc i32 %3436 to i8
  store i8 %3437, i8* %33, align 1
  %3438 = lshr i32 %3408, 31
  %3439 = lshr i32 %3420, 31
  %3440 = xor i32 %3439, %3438
  %3441 = xor i32 %3436, %3438
  %3442 = add nuw nsw i32 %3441, %3440
  %3443 = icmp eq i32 %3442, 2
  %3444 = zext i1 %3443 to i8
  store i8 %3444, i8* %39, align 1
  %3445 = icmp ne i8 %3437, 0
  %3446 = xor i1 %3445, %3443
  %.demorgan115 = or i1 %3434, %3446
  %.v116 = select i1 %.demorgan115, i64 20, i64 70
  %3447 = add i64 %3403, %.v116
  store i64 %3447, i64* %3, align 8
  br i1 %.demorgan115, label %block_4010a1, label %block_.L_4010d3

block_4010a1:                                     ; preds = %block_.L_40108d
  %3448 = add i64 %3404, -1168
  store i64 %3448, i64* %RAX.i1508, align 8
  %3449 = add i64 %3447, 11
  store i64 %3449, i64* %3, align 8
  %3450 = load i32, i32* %3412, align 4
  %3451 = sext i32 %3450 to i64
  %3452 = shl nsw i64 %3451, 6
  store i64 %3452, i64* %RCX.i2066, align 8
  %3453 = lshr i64 %3451, 57
  %3454 = and i64 %3453, 1
  %3455 = add i64 %3452, %3448
  store i64 %3455, i64* %RAX.i1508, align 8
  %3456 = icmp ult i64 %3455, %3448
  %3457 = icmp ult i64 %3455, %3452
  %3458 = or i1 %3456, %3457
  %3459 = zext i1 %3458 to i8
  store i8 %3459, i8* %14, align 1
  %3460 = trunc i64 %3455 to i32
  %3461 = and i32 %3460, 255
  %3462 = tail call i32 @llvm.ctpop.i32(i32 %3461)
  %3463 = trunc i32 %3462 to i8
  %3464 = and i8 %3463, 1
  %3465 = xor i8 %3464, 1
  store i8 %3465, i8* %21, align 1
  %3466 = xor i64 %3448, %3455
  %3467 = lshr i64 %3466, 4
  %3468 = trunc i64 %3467 to i8
  %3469 = and i8 %3468, 1
  store i8 %3469, i8* %27, align 1
  %3470 = icmp eq i64 %3455, 0
  %3471 = zext i1 %3470 to i8
  store i8 %3471, i8* %30, align 1
  %3472 = lshr i64 %3455, 63
  %3473 = trunc i64 %3472 to i8
  store i8 %3473, i8* %33, align 1
  %3474 = lshr i64 %3448, 63
  %3475 = xor i64 %3472, %3474
  %3476 = xor i64 %3472, %3454
  %3477 = add nuw nsw i64 %3475, %3476
  %3478 = icmp eq i64 %3477, 2
  %3479 = zext i1 %3478 to i8
  store i8 %3479, i8* %39, align 1
  %3480 = add i64 %3447, 22
  store i64 %3480, i64* %3, align 8
  %3481 = load i32, i32* %3407, align 4
  %3482 = sext i32 %3481 to i64
  store i64 %3482, i64* %RCX.i2066, align 8
  %3483 = shl nsw i64 %3482, 2
  %3484 = add i64 %3483, %3455
  %3485 = add i64 %3447, 25
  store i64 %3485, i64* %3, align 8
  %3486 = inttoptr i64 %3484 to i32*
  %3487 = load i32, i32* %3486, align 4
  %3488 = zext i32 %3487 to i64
  store i64 %3488, i64* %RDX.i2064, align 8
  %3489 = add i64 %3447, 29
  store i64 %3489, i64* %3, align 8
  %3490 = load i32, i32* %3407, align 4
  %3491 = sext i32 %3490 to i64
  store i64 %3491, i64* %RAX.i1508, align 8
  %3492 = shl nsw i64 %3491, 2
  %3493 = add i64 %3404, -2688
  %3494 = add i64 %3493, %3492
  %3495 = add i64 %3447, 36
  store i64 %3495, i64* %3, align 8
  %3496 = inttoptr i64 %3494 to i32*
  store i32 %3487, i32* %3496, align 4
  %3497 = load i64, i64* %RBP.i, align 8
  %3498 = add i64 %3497, -4
  %3499 = load i64, i64* %3, align 8
  %3500 = add i64 %3499, 3
  store i64 %3500, i64* %3, align 8
  %3501 = inttoptr i64 %3498 to i32*
  %3502 = load i32, i32* %3501, align 4
  %3503 = add i32 %3502, 1
  %3504 = zext i32 %3503 to i64
  store i64 %3504, i64* %RAX.i1508, align 8
  %3505 = icmp eq i32 %3502, -1
  %3506 = icmp eq i32 %3503, 0
  %3507 = or i1 %3505, %3506
  %3508 = zext i1 %3507 to i8
  store i8 %3508, i8* %14, align 1
  %3509 = and i32 %3503, 255
  %3510 = tail call i32 @llvm.ctpop.i32(i32 %3509)
  %3511 = trunc i32 %3510 to i8
  %3512 = and i8 %3511, 1
  %3513 = xor i8 %3512, 1
  store i8 %3513, i8* %21, align 1
  %3514 = xor i32 %3502, %3503
  %3515 = lshr i32 %3514, 4
  %3516 = trunc i32 %3515 to i8
  %3517 = and i8 %3516, 1
  store i8 %3517, i8* %27, align 1
  %3518 = zext i1 %3506 to i8
  store i8 %3518, i8* %30, align 1
  %3519 = lshr i32 %3503, 31
  %3520 = trunc i32 %3519 to i8
  store i8 %3520, i8* %33, align 1
  %3521 = lshr i32 %3502, 31
  %3522 = xor i32 %3519, %3521
  %3523 = add nuw nsw i32 %3522, %3519
  %3524 = icmp eq i32 %3523, 2
  %3525 = zext i1 %3524 to i8
  store i8 %3525, i8* %39, align 1
  %3526 = add i64 %3499, 9
  store i64 %3526, i64* %3, align 8
  store i32 %3503, i32* %3501, align 4
  %3527 = load i64, i64* %3, align 8
  %3528 = add i64 %3527, -65
  store i64 %3528, i64* %3, align 8
  br label %block_.L_40108d

block_.L_4010d3:                                  ; preds = %block_.L_40108d
  %3529 = add i64 %3404, -1492
  %3530 = add i64 %3447, 10
  store i64 %3530, i64* %3, align 8
  %3531 = inttoptr i64 %3529 to i32*
  store i32 0, i32* %3531, align 4
  %3532 = load i64, i64* %RBP.i, align 8
  %3533 = add i64 %3532, -4
  %3534 = load i64, i64* %3, align 8
  %3535 = add i64 %3534, 7
  store i64 %3535, i64* %3, align 8
  %3536 = inttoptr i64 %3533 to i32*
  store i32 1, i32* %3536, align 4
  %.pre37 = load i64, i64* %3, align 8
  br label %block_.L_4010e4

block_.L_4010e4:                                  ; preds = %block_.L_4011c0, %block_.L_4010d3
  %3537 = phi i64 [ %.pre37, %block_.L_4010d3 ], [ %3936, %block_.L_4011c0 ]
  %MEMORY.25 = phi %struct.Memory* [ %MEMORY.21, %block_.L_4010d3 ], [ %MEMORY.26, %block_.L_4011c0 ]
  %3538 = load i64, i64* %RBP.i, align 8
  %3539 = add i64 %3538, -4
  %3540 = add i64 %3537, 7
  store i64 %3540, i64* %3, align 8
  %3541 = inttoptr i64 %3539 to i32*
  %3542 = load i32, i32* %3541, align 4
  %3543 = add i32 %3542, -255
  %3544 = icmp ult i32 %3542, 255
  %3545 = zext i1 %3544 to i8
  store i8 %3545, i8* %14, align 1
  %3546 = and i32 %3543, 255
  %3547 = tail call i32 @llvm.ctpop.i32(i32 %3546)
  %3548 = trunc i32 %3547 to i8
  %3549 = and i8 %3548, 1
  %3550 = xor i8 %3549, 1
  store i8 %3550, i8* %21, align 1
  %3551 = xor i32 %3542, 16
  %3552 = xor i32 %3551, %3543
  %3553 = lshr i32 %3552, 4
  %3554 = trunc i32 %3553 to i8
  %3555 = and i8 %3554, 1
  store i8 %3555, i8* %27, align 1
  %3556 = icmp eq i32 %3543, 0
  %3557 = zext i1 %3556 to i8
  store i8 %3557, i8* %30, align 1
  %3558 = lshr i32 %3543, 31
  %3559 = trunc i32 %3558 to i8
  store i8 %3559, i8* %33, align 1
  %3560 = lshr i32 %3542, 31
  %3561 = xor i32 %3558, %3560
  %3562 = add nuw nsw i32 %3561, %3560
  %3563 = icmp eq i32 %3562, 2
  %3564 = zext i1 %3563 to i8
  store i8 %3564, i8* %39, align 1
  %3565 = icmp ne i8 %3559, 0
  %3566 = xor i1 %3565, %3563
  %.demorgan117 = or i1 %3556, %3566
  %.v118 = select i1 %.demorgan117, i64 13, i64 239
  %3567 = add i64 %3537, %.v118
  store i64 %3567, i64* %3, align 8
  br i1 %.demorgan117, label %block_4010f1, label %block_.L_4011d3

block_4010f1:                                     ; preds = %block_.L_4010e4
  %3568 = add i64 %3538, -16
  %3569 = add i64 %3567, 7
  store i64 %3569, i64* %3, align 8
  %3570 = inttoptr i64 %3568 to i32*
  store i32 1, i32* %3570, align 4
  %3571 = load i64, i64* %RBP.i, align 8
  %3572 = add i64 %3571, -8
  %3573 = load i64, i64* %3, align 8
  %3574 = add i64 %3573, 7
  store i64 %3574, i64* %3, align 8
  %3575 = inttoptr i64 %3572 to i32*
  store i32 1, i32* %3575, align 4
  %.pre38 = load i64, i64* %3, align 8
  br label %block_.L_4010ff

block_.L_4010ff:                                  ; preds = %block_.L_40116d, %block_4010f1
  %3576 = phi i64 [ %.pre38, %block_4010f1 ], [ %3802, %block_.L_40116d ]
  %MEMORY.26 = phi %struct.Memory* [ %MEMORY.25, %block_4010f1 ], [ %MEMORY.27, %block_.L_40116d ]
  %3577 = load i64, i64* %RBP.i, align 8
  %3578 = add i64 %3577, -8
  %3579 = add i64 %3576, 3
  store i64 %3579, i64* %3, align 8
  %3580 = inttoptr i64 %3578 to i32*
  %3581 = load i32, i32* %3580, align 4
  %3582 = zext i32 %3581 to i64
  store i64 %3582, i64* %RAX.i1508, align 8
  %3583 = add i64 %3577, -12
  %3584 = add i64 %3576, 7
  store i64 %3584, i64* %3, align 8
  %3585 = inttoptr i64 %3583 to i32*
  %3586 = load i32, i32* %3585, align 4
  %3587 = sext i32 %3586 to i64
  store i64 %3587, i64* %RCX.i2066, align 8
  %3588 = shl nsw i64 %3587, 2
  %3589 = add i64 %3577, -1328
  %3590 = add i64 %3589, %3588
  %3591 = add i64 %3576, 14
  store i64 %3591, i64* %3, align 8
  %3592 = inttoptr i64 %3590 to i32*
  %3593 = load i32, i32* %3592, align 4
  %3594 = sub i32 %3581, %3593
  %3595 = icmp ult i32 %3581, %3593
  %3596 = zext i1 %3595 to i8
  store i8 %3596, i8* %14, align 1
  %3597 = and i32 %3594, 255
  %3598 = tail call i32 @llvm.ctpop.i32(i32 %3597)
  %3599 = trunc i32 %3598 to i8
  %3600 = and i8 %3599, 1
  %3601 = xor i8 %3600, 1
  store i8 %3601, i8* %21, align 1
  %3602 = xor i32 %3593, %3581
  %3603 = xor i32 %3602, %3594
  %3604 = lshr i32 %3603, 4
  %3605 = trunc i32 %3604 to i8
  %3606 = and i8 %3605, 1
  store i8 %3606, i8* %27, align 1
  %3607 = icmp eq i32 %3594, 0
  %3608 = zext i1 %3607 to i8
  store i8 %3608, i8* %30, align 1
  %3609 = lshr i32 %3594, 31
  %3610 = trunc i32 %3609 to i8
  store i8 %3610, i8* %33, align 1
  %3611 = lshr i32 %3581, 31
  %3612 = lshr i32 %3593, 31
  %3613 = xor i32 %3612, %3611
  %3614 = xor i32 %3609, %3611
  %3615 = add nuw nsw i32 %3614, %3613
  %3616 = icmp eq i32 %3615, 2
  %3617 = zext i1 %3616 to i8
  store i8 %3617, i8* %39, align 1
  %3618 = icmp ne i8 %3610, 0
  %3619 = xor i1 %3618, %3616
  %.demorgan119 = or i1 %3607, %3619
  %.v120 = select i1 %.demorgan119, i64 20, i64 129
  %3620 = add i64 %3576, %.v120
  store i64 %3620, i64* %3, align 8
  br i1 %.demorgan119, label %block_401113, label %block_.L_401180

block_401113:                                     ; preds = %block_.L_4010ff
  %3621 = add i64 %3620, 4
  store i64 %3621, i64* %3, align 8
  %3622 = load i32, i32* %3580, align 4
  %3623 = sext i32 %3622 to i64
  store i64 %3623, i64* %RAX.i1508, align 8
  %3624 = shl nsw i64 %3623, 2
  %3625 = add i64 %3577, -2688
  %3626 = add i64 %3625, %3624
  %3627 = add i64 %3620, 12
  store i64 %3627, i64* %3, align 8
  %3628 = inttoptr i64 %3626 to i32*
  %3629 = load i32, i32* %3628, align 4
  %3630 = add i32 %3629, 1
  %3631 = icmp ne i32 %3629, -1
  %3632 = zext i1 %3631 to i8
  store i8 %3632, i8* %14, align 1
  %3633 = and i32 %3630, 255
  %3634 = tail call i32 @llvm.ctpop.i32(i32 %3633)
  %3635 = trunc i32 %3634 to i8
  %3636 = and i8 %3635, 1
  %3637 = xor i8 %3636, 1
  store i8 %3637, i8* %21, align 1
  %3638 = xor i32 %3629, 16
  %3639 = xor i32 %3630, %3638
  %3640 = lshr i32 %3639, 4
  %3641 = trunc i32 %3640 to i8
  %3642 = and i8 %3641, 1
  store i8 %3642, i8* %27, align 1
  %3643 = icmp eq i32 %3630, 0
  %3644 = zext i1 %3643 to i8
  store i8 %3644, i8* %30, align 1
  %3645 = lshr i32 %3630, 31
  %3646 = trunc i32 %3645 to i8
  store i8 %3646, i8* %33, align 1
  %3647 = lshr i32 %3629, 31
  %3648 = xor i32 %3647, 1
  %3649 = xor i32 %3645, %3647
  %3650 = add nuw nsw i32 %3649, %3648
  %3651 = icmp eq i32 %3650, 2
  %3652 = zext i1 %3651 to i8
  store i8 %3652, i8* %39, align 1
  %.v121 = select i1 %3643, i64 90, i64 18
  %3653 = add i64 %3620, %.v121
  store i64 %3653, i64* %3, align 8
  br i1 %3643, label %block_.L_40116d, label %block_401125

block_401125:                                     ; preds = %block_401113
  store i64 255, i64* %RAX.i1508, align 8
  %3654 = add i64 %3653, 9
  store i64 %3654, i64* %3, align 8
  %3655 = load i32, i32* %3580, align 4
  %3656 = sext i32 %3655 to i64
  store i64 %3656, i64* %RCX.i2066, align 8
  %3657 = shl nsw i64 %3656, 2
  %3658 = add i64 %3625, %3657
  %3659 = add i64 %3653, 16
  store i64 %3659, i64* %3, align 8
  %3660 = inttoptr i64 %3658 to i32*
  %3661 = load i32, i32* %3660, align 4
  %3662 = zext i32 %3661 to i64
  store i64 %3662, i64* %RDX.i2064, align 8
  %3663 = add i64 %3653, 19
  store i64 %3663, i64* %3, align 8
  %3664 = load i32, i32* %3580, align 4
  %3665 = add i32 %3664, %3661
  %3666 = zext i32 %3665 to i64
  store i64 %3666, i64* %RDX.i2064, align 8
  %3667 = icmp ult i32 %3665, %3661
  %3668 = icmp ult i32 %3665, %3664
  %3669 = or i1 %3667, %3668
  %3670 = zext i1 %3669 to i8
  store i8 %3670, i8* %14, align 1
  %3671 = and i32 %3665, 255
  %3672 = tail call i32 @llvm.ctpop.i32(i32 %3671)
  %3673 = trunc i32 %3672 to i8
  %3674 = and i8 %3673, 1
  %3675 = xor i8 %3674, 1
  store i8 %3675, i8* %21, align 1
  %3676 = xor i32 %3664, %3661
  %3677 = xor i32 %3676, %3665
  %3678 = lshr i32 %3677, 4
  %3679 = trunc i32 %3678 to i8
  %3680 = and i8 %3679, 1
  store i8 %3680, i8* %27, align 1
  %3681 = icmp eq i32 %3665, 0
  %3682 = zext i1 %3681 to i8
  store i8 %3682, i8* %30, align 1
  %3683 = lshr i32 %3665, 31
  %3684 = trunc i32 %3683 to i8
  store i8 %3684, i8* %33, align 1
  %3685 = lshr i32 %3661, 31
  %3686 = lshr i32 %3664, 31
  %3687 = xor i32 %3683, %3685
  %3688 = xor i32 %3683, %3686
  %3689 = add nuw nsw i32 %3687, %3688
  %3690 = icmp eq i32 %3689, 2
  %3691 = zext i1 %3690 to i8
  store i8 %3691, i8* %39, align 1
  %3692 = add i64 %3577, -2716
  %3693 = add i64 %3653, 25
  store i64 %3693, i64* %3, align 8
  %3694 = inttoptr i64 %3692 to i32*
  store i32 255, i32* %3694, align 4
  %3695 = load i32, i32* %EDX.i2048, align 4
  %3696 = zext i32 %3695 to i64
  %3697 = load i64, i64* %3, align 8
  store i64 %3696, i64* %RAX.i1508, align 8
  %3698 = sext i32 %3695 to i64
  %3699 = lshr i64 %3698, 32
  store i64 %3699, i64* %57, align 8
  %3700 = load i64, i64* %RBP.i, align 8
  %3701 = add i64 %3700, -2716
  %3702 = add i64 %3697, 9
  store i64 %3702, i64* %3, align 8
  %3703 = inttoptr i64 %3701 to i32*
  %3704 = load i32, i32* %3703, align 4
  %3705 = zext i32 %3704 to i64
  store i64 %3705, i64* %RSI.i2060, align 8
  %3706 = add i64 %3697, 11
  store i64 %3706, i64* %3, align 8
  %3707 = sext i32 %3704 to i64
  %3708 = shl nuw i64 %3699, 32
  %3709 = or i64 %3708, %3696
  %3710 = sdiv i64 %3709, %3707
  %3711 = shl i64 %3710, 32
  %3712 = ashr exact i64 %3711, 32
  %3713 = icmp eq i64 %3710, %3712
  br i1 %3713, label %3716, label %3714

; <label>:3714:                                   ; preds = %block_401125
  %3715 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3706, %struct.Memory* %MEMORY.26)
  %.pre39 = load i64, i64* %RBP.i, align 8
  %.pre40 = load i64, i64* %3, align 8
  %.pre41 = load i32, i32* %EDX.i2048, align 4
  br label %routine_idivl__esi.exit897

; <label>:3716:                                   ; preds = %block_401125
  %3717 = srem i64 %3709, %3707
  %3718 = and i64 %3710, 4294967295
  store i64 %3718, i64* %58, align 8
  %3719 = and i64 %3717, 4294967295
  store i64 %3719, i64* %57, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %3720 = trunc i64 %3717 to i32
  br label %routine_idivl__esi.exit897

routine_idivl__esi.exit897:                       ; preds = %3716, %3714
  %3721 = phi i32 [ %.pre41, %3714 ], [ %3720, %3716 ]
  %3722 = phi i64 [ %.pre40, %3714 ], [ %3706, %3716 ]
  %3723 = phi i64 [ %.pre39, %3714 ], [ %3700, %3716 ]
  %3724 = phi %struct.Memory* [ %3715, %3714 ], [ %MEMORY.26, %3716 ]
  %3725 = add i64 %3723, -8
  %3726 = add i64 %3722, 4
  store i64 %3726, i64* %3, align 8
  %3727 = inttoptr i64 %3725 to i32*
  %3728 = load i32, i32* %3727, align 4
  %3729 = sext i32 %3728 to i64
  store i64 %3729, i64* %RCX.i2066, align 8
  %3730 = shl nsw i64 %3729, 2
  %3731 = add i64 %3723, -2688
  %3732 = add i64 %3731, %3730
  %3733 = add i64 %3722, 11
  store i64 %3733, i64* %3, align 8
  %3734 = inttoptr i64 %3732 to i32*
  store i32 %3721, i32* %3734, align 4
  %3735 = load i64, i64* %RBP.i, align 8
  %3736 = add i64 %3735, -8
  %3737 = load i64, i64* %3, align 8
  %3738 = add i64 %3737, 4
  store i64 %3738, i64* %3, align 8
  %3739 = inttoptr i64 %3736 to i32*
  %3740 = load i32, i32* %3739, align 4
  %3741 = sext i32 %3740 to i64
  store i64 %3741, i64* %RCX.i2066, align 8
  %3742 = shl nsw i64 %3741, 2
  %3743 = add i64 %3735, -2688
  %3744 = add i64 %3743, %3742
  %3745 = add i64 %3737, 12
  store i64 %3745, i64* %3, align 8
  %3746 = inttoptr i64 %3744 to i32*
  %3747 = load i32, i32* %3746, align 4
  %3748 = sext i32 %3747 to i64
  store i64 %3748, i64* %RCX.i2066, align 8
  %3749 = shl nsw i64 %3748, 2
  %3750 = add nsw i64 %3749, 6305920
  %3751 = add i64 %3737, 19
  store i64 %3751, i64* %3, align 8
  %3752 = inttoptr i64 %3750 to i32*
  %3753 = load i32, i32* %3752, align 4
  %3754 = zext i32 %3753 to i64
  store i64 %3754, i64* %RDX.i2064, align 8
  %3755 = add i64 %3735, -16
  %3756 = add i64 %3737, 22
  store i64 %3756, i64* %3, align 8
  %3757 = inttoptr i64 %3755 to i32*
  %3758 = load i32, i32* %3757, align 4
  %3759 = xor i32 %3758, %3753
  %3760 = zext i32 %3759 to i64
  store i64 %3760, i64* %RDX.i2064, align 8
  store i8 0, i8* %14, align 1
  %3761 = and i32 %3759, 255
  %3762 = tail call i32 @llvm.ctpop.i32(i32 %3761)
  %3763 = trunc i32 %3762 to i8
  %3764 = and i8 %3763, 1
  %3765 = xor i8 %3764, 1
  store i8 %3765, i8* %21, align 1
  %3766 = icmp eq i32 %3759, 0
  %3767 = zext i1 %3766 to i8
  store i8 %3767, i8* %30, align 1
  %3768 = lshr i32 %3759, 31
  %3769 = trunc i32 %3768 to i8
  store i8 %3769, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %3770 = add i64 %3737, 25
  store i64 %3770, i64* %3, align 8
  store i32 %3759, i32* %3757, align 4
  %.pre42 = load i64, i64* %3, align 8
  %.pre43 = load i64, i64* %RBP.i, align 8
  br label %block_.L_40116d

block_.L_40116d:                                  ; preds = %routine_idivl__esi.exit897, %block_401113
  %3771 = phi i64 [ %3577, %block_401113 ], [ %.pre43, %routine_idivl__esi.exit897 ]
  %3772 = phi i64 [ %3653, %block_401113 ], [ %.pre42, %routine_idivl__esi.exit897 ]
  %MEMORY.27 = phi %struct.Memory* [ %MEMORY.26, %block_401113 ], [ %3724, %routine_idivl__esi.exit897 ]
  %3773 = add i64 %3771, -8
  %3774 = add i64 %3772, 8
  store i64 %3774, i64* %3, align 8
  %3775 = inttoptr i64 %3773 to i32*
  %3776 = load i32, i32* %3775, align 4
  %3777 = add i32 %3776, 1
  %3778 = zext i32 %3777 to i64
  store i64 %3778, i64* %RAX.i1508, align 8
  %3779 = icmp eq i32 %3776, -1
  %3780 = icmp eq i32 %3777, 0
  %3781 = or i1 %3779, %3780
  %3782 = zext i1 %3781 to i8
  store i8 %3782, i8* %14, align 1
  %3783 = and i32 %3777, 255
  %3784 = tail call i32 @llvm.ctpop.i32(i32 %3783)
  %3785 = trunc i32 %3784 to i8
  %3786 = and i8 %3785, 1
  %3787 = xor i8 %3786, 1
  store i8 %3787, i8* %21, align 1
  %3788 = xor i32 %3776, %3777
  %3789 = lshr i32 %3788, 4
  %3790 = trunc i32 %3789 to i8
  %3791 = and i8 %3790, 1
  store i8 %3791, i8* %27, align 1
  %3792 = zext i1 %3780 to i8
  store i8 %3792, i8* %30, align 1
  %3793 = lshr i32 %3777, 31
  %3794 = trunc i32 %3793 to i8
  store i8 %3794, i8* %33, align 1
  %3795 = lshr i32 %3776, 31
  %3796 = xor i32 %3793, %3795
  %3797 = add nuw nsw i32 %3796, %3793
  %3798 = icmp eq i32 %3797, 2
  %3799 = zext i1 %3798 to i8
  store i8 %3799, i8* %39, align 1
  %3800 = add i64 %3772, 14
  store i64 %3800, i64* %3, align 8
  store i32 %3777, i32* %3775, align 4
  %3801 = load i64, i64* %3, align 8
  %3802 = add i64 %3801, -124
  store i64 %3802, i64* %3, align 8
  br label %block_.L_4010ff

block_.L_401180:                                  ; preds = %block_.L_4010ff
  %3803 = add i64 %3577, -16
  %3804 = add i64 %3620, 4
  store i64 %3804, i64* %3, align 8
  %3805 = inttoptr i64 %3803 to i32*
  %3806 = load i32, i32* %3805, align 4
  store i8 0, i8* %14, align 1
  %3807 = and i32 %3806, 255
  %3808 = tail call i32 @llvm.ctpop.i32(i32 %3807)
  %3809 = trunc i32 %3808 to i8
  %3810 = and i8 %3809, 1
  %3811 = xor i8 %3810, 1
  store i8 %3811, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %3812 = icmp eq i32 %3806, 0
  %3813 = zext i1 %3812 to i8
  store i8 %3813, i8* %30, align 1
  %3814 = lshr i32 %3806, 31
  %3815 = trunc i32 %3814 to i8
  store i8 %3815, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v122 = select i1 %3812, i64 10, i64 64
  %3816 = add i64 %3620, %.v122
  store i64 %3816, i64* %3, align 8
  br i1 %3812, label %block_40118a, label %block_.L_4011c0

block_40118a:                                     ; preds = %block_.L_401180
  store i64 255, i64* %RAX.i1508, align 8
  %3817 = add i64 %3577, -4
  %3818 = add i64 %3816, 8
  store i64 %3818, i64* %3, align 8
  %3819 = inttoptr i64 %3817 to i32*
  %3820 = load i32, i32* %3819, align 4
  %3821 = zext i32 %3820 to i64
  store i64 %3821, i64* %RCX.i2066, align 8
  %3822 = add i64 %3577, -1492
  %3823 = add i64 %3816, 15
  store i64 %3823, i64* %3, align 8
  %3824 = inttoptr i64 %3822 to i32*
  %3825 = load i32, i32* %3824, align 4
  %3826 = sext i32 %3825 to i64
  store i64 %3826, i64* %RDX.i2064, align 8
  %3827 = shl nsw i64 %3826, 2
  %3828 = add i64 %3577, -1536
  %3829 = add i64 %3828, %3827
  %3830 = add i64 %3816, 22
  store i64 %3830, i64* %3, align 8
  %3831 = inttoptr i64 %3829 to i32*
  store i32 %3820, i32* %3831, align 4
  %3832 = load i64, i64* %RAX.i1508, align 8
  %3833 = load i64, i64* %RBP.i, align 8
  %3834 = add i64 %3833, -4
  %3835 = load i64, i64* %3, align 8
  %3836 = add i64 %3835, 3
  store i64 %3836, i64* %3, align 8
  %3837 = trunc i64 %3832 to i32
  %3838 = inttoptr i64 %3834 to i32*
  %3839 = load i32, i32* %3838, align 4
  %3840 = sub i32 %3837, %3839
  %3841 = zext i32 %3840 to i64
  store i64 %3841, i64* %RAX.i1508, align 8
  %3842 = icmp ult i32 %3837, %3839
  %3843 = zext i1 %3842 to i8
  store i8 %3843, i8* %14, align 1
  %3844 = and i32 %3840, 255
  %3845 = tail call i32 @llvm.ctpop.i32(i32 %3844)
  %3846 = trunc i32 %3845 to i8
  %3847 = and i8 %3846, 1
  %3848 = xor i8 %3847, 1
  store i8 %3848, i8* %21, align 1
  %3849 = xor i32 %3839, %3837
  %3850 = xor i32 %3849, %3840
  %3851 = lshr i32 %3850, 4
  %3852 = trunc i32 %3851 to i8
  %3853 = and i8 %3852, 1
  store i8 %3853, i8* %27, align 1
  %3854 = icmp eq i32 %3840, 0
  %3855 = zext i1 %3854 to i8
  store i8 %3855, i8* %30, align 1
  %3856 = lshr i32 %3840, 31
  %3857 = trunc i32 %3856 to i8
  store i8 %3857, i8* %33, align 1
  %3858 = lshr i32 %3837, 31
  %3859 = lshr i32 %3839, 31
  %3860 = xor i32 %3859, %3858
  %3861 = xor i32 %3856, %3858
  %3862 = add nuw nsw i32 %3861, %3860
  %3863 = icmp eq i32 %3862, 2
  %3864 = zext i1 %3863 to i8
  store i8 %3864, i8* %39, align 1
  %3865 = add i64 %3833, -1492
  %3866 = add i64 %3835, 10
  store i64 %3866, i64* %3, align 8
  %3867 = inttoptr i64 %3865 to i32*
  %3868 = load i32, i32* %3867, align 4
  %3869 = sext i32 %3868 to i64
  store i64 %3869, i64* %RDX.i2064, align 8
  %3870 = shl nsw i64 %3869, 2
  %3871 = add i64 %3833, -1568
  %3872 = add i64 %3871, %3870
  %3873 = add i64 %3835, 17
  store i64 %3873, i64* %3, align 8
  %3874 = inttoptr i64 %3872 to i32*
  store i32 %3840, i32* %3874, align 4
  %3875 = load i64, i64* %RBP.i, align 8
  %3876 = add i64 %3875, -1492
  %3877 = load i64, i64* %3, align 8
  %3878 = add i64 %3877, 6
  store i64 %3878, i64* %3, align 8
  %3879 = inttoptr i64 %3876 to i32*
  %3880 = load i32, i32* %3879, align 4
  %3881 = add i32 %3880, 1
  %3882 = zext i32 %3881 to i64
  store i64 %3882, i64* %RAX.i1508, align 8
  %3883 = icmp eq i32 %3880, -1
  %3884 = icmp eq i32 %3881, 0
  %3885 = or i1 %3883, %3884
  %3886 = zext i1 %3885 to i8
  store i8 %3886, i8* %14, align 1
  %3887 = and i32 %3881, 255
  %3888 = tail call i32 @llvm.ctpop.i32(i32 %3887)
  %3889 = trunc i32 %3888 to i8
  %3890 = and i8 %3889, 1
  %3891 = xor i8 %3890, 1
  store i8 %3891, i8* %21, align 1
  %3892 = xor i32 %3880, %3881
  %3893 = lshr i32 %3892, 4
  %3894 = trunc i32 %3893 to i8
  %3895 = and i8 %3894, 1
  store i8 %3895, i8* %27, align 1
  %3896 = zext i1 %3884 to i8
  store i8 %3896, i8* %30, align 1
  %3897 = lshr i32 %3881, 31
  %3898 = trunc i32 %3897 to i8
  store i8 %3898, i8* %33, align 1
  %3899 = lshr i32 %3880, 31
  %3900 = xor i32 %3897, %3899
  %3901 = add nuw nsw i32 %3900, %3897
  %3902 = icmp eq i32 %3901, 2
  %3903 = zext i1 %3902 to i8
  store i8 %3903, i8* %39, align 1
  %3904 = add i64 %3877, 15
  store i64 %3904, i64* %3, align 8
  store i32 %3881, i32* %3879, align 4
  %.pre44 = load i64, i64* %3, align 8
  %.pre45 = load i64, i64* %RBP.i, align 8
  br label %block_.L_4011c0

block_.L_4011c0:                                  ; preds = %block_.L_401180, %block_40118a
  %3905 = phi i64 [ %.pre45, %block_40118a ], [ %3577, %block_.L_401180 ]
  %3906 = phi i64 [ %.pre44, %block_40118a ], [ %3816, %block_.L_401180 ]
  %3907 = add i64 %3905, -4
  %3908 = add i64 %3906, 8
  store i64 %3908, i64* %3, align 8
  %3909 = inttoptr i64 %3907 to i32*
  %3910 = load i32, i32* %3909, align 4
  %3911 = add i32 %3910, 1
  %3912 = zext i32 %3911 to i64
  store i64 %3912, i64* %RAX.i1508, align 8
  %3913 = icmp eq i32 %3910, -1
  %3914 = icmp eq i32 %3911, 0
  %3915 = or i1 %3913, %3914
  %3916 = zext i1 %3915 to i8
  store i8 %3916, i8* %14, align 1
  %3917 = and i32 %3911, 255
  %3918 = tail call i32 @llvm.ctpop.i32(i32 %3917)
  %3919 = trunc i32 %3918 to i8
  %3920 = and i8 %3919, 1
  %3921 = xor i8 %3920, 1
  store i8 %3921, i8* %21, align 1
  %3922 = xor i32 %3910, %3911
  %3923 = lshr i32 %3922, 4
  %3924 = trunc i32 %3923 to i8
  %3925 = and i8 %3924, 1
  store i8 %3925, i8* %27, align 1
  %3926 = zext i1 %3914 to i8
  store i8 %3926, i8* %30, align 1
  %3927 = lshr i32 %3911, 31
  %3928 = trunc i32 %3927 to i8
  store i8 %3928, i8* %33, align 1
  %3929 = lshr i32 %3910, 31
  %3930 = xor i32 %3927, %3929
  %3931 = add nuw nsw i32 %3930, %3927
  %3932 = icmp eq i32 %3931, 2
  %3933 = zext i1 %3932 to i8
  store i8 %3933, i8* %39, align 1
  %3934 = add i64 %3906, 14
  store i64 %3934, i64* %3, align 8
  store i32 %3911, i32* %3909, align 4
  %3935 = load i64, i64* %3, align 8
  %3936 = add i64 %3935, -234
  store i64 %3936, i64* %3, align 8
  br label %block_.L_4010e4

block_.L_4011d3:                                  ; preds = %block_.L_4010e4
  %3937 = add i64 %3538, -1492
  %3938 = add i64 %3567, 6
  store i64 %3938, i64* %3, align 8
  %3939 = inttoptr i64 %3937 to i32*
  %3940 = load i32, i32* %3939, align 4
  %3941 = zext i32 %3940 to i64
  store i64 %3941, i64* %RAX.i1508, align 8
  %3942 = add i64 %3538, -12
  %3943 = add i64 %3567, 10
  store i64 %3943, i64* %3, align 8
  %3944 = inttoptr i64 %3942 to i32*
  %3945 = load i32, i32* %3944, align 4
  %3946 = sext i32 %3945 to i64
  store i64 %3946, i64* %RCX.i2066, align 8
  %3947 = shl nsw i64 %3946, 2
  %3948 = add i64 %3538, -1328
  %3949 = add i64 %3948, %3947
  %3950 = add i64 %3567, 17
  store i64 %3950, i64* %3, align 8
  %3951 = inttoptr i64 %3949 to i32*
  %3952 = load i32, i32* %3951, align 4
  %3953 = sub i32 %3940, %3952
  %3954 = icmp ult i32 %3940, %3952
  %3955 = zext i1 %3954 to i8
  store i8 %3955, i8* %14, align 1
  %3956 = and i32 %3953, 255
  %3957 = tail call i32 @llvm.ctpop.i32(i32 %3956)
  %3958 = trunc i32 %3957 to i8
  %3959 = and i8 %3958, 1
  %3960 = xor i8 %3959, 1
  store i8 %3960, i8* %21, align 1
  %3961 = xor i32 %3952, %3940
  %3962 = xor i32 %3961, %3953
  %3963 = lshr i32 %3962, 4
  %3964 = trunc i32 %3963 to i8
  %3965 = and i8 %3964, 1
  store i8 %3965, i8* %27, align 1
  %3966 = icmp eq i32 %3953, 0
  %3967 = zext i1 %3966 to i8
  store i8 %3967, i8* %30, align 1
  %3968 = lshr i32 %3953, 31
  %3969 = trunc i32 %3968 to i8
  store i8 %3969, i8* %33, align 1
  %3970 = lshr i32 %3940, 31
  %3971 = lshr i32 %3952, 31
  %3972 = xor i32 %3971, %3970
  %3973 = xor i32 %3968, %3970
  %3974 = add nuw nsw i32 %3973, %3972
  %3975 = icmp eq i32 %3974, 2
  %3976 = zext i1 %3975 to i8
  store i8 %3976, i8* %39, align 1
  %.v123 = select i1 %3966, i64 23, i64 1296
  %3977 = add i64 %3567, %.v123
  %3978 = add i64 %3977, 7
  store i64 %3978, i64* %3, align 8
  br i1 %3966, label %block_4011ea, label %block_.L_4016e3

block_4011ea:                                     ; preds = %block_.L_4011d3
  store i32 1, i32* %3541, align 4
  %.pre46 = load i64, i64* %3, align 8
  br label %block_.L_4011f1

block_.L_4011f1:                                  ; preds = %block_.L_401404, %block_4011ea
  %3979 = phi i64 [ %.pre46, %block_4011ea ], [ %4954, %block_.L_401404 ]
  %MEMORY.29 = phi %struct.Memory* [ %MEMORY.25, %block_4011ea ], [ %MEMORY.36, %block_.L_401404 ]
  %3980 = load i64, i64* %RBP.i, align 8
  %3981 = add i64 %3980, -4
  %3982 = add i64 %3979, 3
  store i64 %3982, i64* %3, align 8
  %3983 = inttoptr i64 %3981 to i32*
  %3984 = load i32, i32* %3983, align 4
  %3985 = zext i32 %3984 to i64
  store i64 %3985, i64* %RAX.i1508, align 8
  %3986 = add i64 %3980, -12
  %3987 = add i64 %3979, 7
  store i64 %3987, i64* %3, align 8
  %3988 = inttoptr i64 %3986 to i32*
  %3989 = load i32, i32* %3988, align 4
  %3990 = sext i32 %3989 to i64
  store i64 %3990, i64* %RCX.i2066, align 8
  %3991 = shl nsw i64 %3990, 2
  %3992 = add i64 %3980, -1328
  %3993 = add i64 %3992, %3991
  %3994 = add i64 %3979, 14
  store i64 %3994, i64* %3, align 8
  %3995 = inttoptr i64 %3993 to i32*
  %3996 = load i32, i32* %3995, align 4
  %3997 = sub i32 %3984, %3996
  %3998 = icmp ult i32 %3984, %3996
  %3999 = zext i1 %3998 to i8
  store i8 %3999, i8* %14, align 1
  %4000 = and i32 %3997, 255
  %4001 = tail call i32 @llvm.ctpop.i32(i32 %4000)
  %4002 = trunc i32 %4001 to i8
  %4003 = and i8 %4002, 1
  %4004 = xor i8 %4003, 1
  store i8 %4004, i8* %21, align 1
  %4005 = xor i32 %3996, %3984
  %4006 = xor i32 %4005, %3997
  %4007 = lshr i32 %4006, 4
  %4008 = trunc i32 %4007 to i8
  %4009 = and i8 %4008, 1
  store i8 %4009, i8* %27, align 1
  %4010 = icmp eq i32 %3997, 0
  %4011 = zext i1 %4010 to i8
  store i8 %4011, i8* %30, align 1
  %4012 = lshr i32 %3997, 31
  %4013 = trunc i32 %4012 to i8
  store i8 %4013, i8* %33, align 1
  %4014 = lshr i32 %3984, 31
  %4015 = lshr i32 %3996, 31
  %4016 = xor i32 %4015, %4014
  %4017 = xor i32 %4012, %4014
  %4018 = add nuw nsw i32 %4017, %4016
  %4019 = icmp eq i32 %4018, 2
  %4020 = zext i1 %4019 to i8
  store i8 %4020, i8* %39, align 1
  %4021 = icmp ne i8 %4013, 0
  %4022 = xor i1 %4021, %4019
  %.demorgan124 = or i1 %4010, %4022
  %.v125 = select i1 %.demorgan124, i64 20, i64 575
  %4023 = add i64 %3979, %.v125
  store i64 %4023, i64* %3, align 8
  br i1 %.demorgan124, label %block_401205, label %block_.L_401430

block_401205:                                     ; preds = %block_.L_4011f1
  %4024 = add i64 %4023, 4
  store i64 %4024, i64* %3, align 8
  %4025 = load i32, i32* %3983, align 4
  %4026 = sext i32 %4025 to i64
  store i64 %4026, i64* %RAX.i1508, align 8
  %4027 = shl nsw i64 %4026, 2
  %4028 = add i64 %3980, -1488
  %4029 = add i64 %4028, %4027
  %4030 = add i64 %4023, 12
  store i64 %4030, i64* %3, align 8
  %4031 = inttoptr i64 %4029 to i32*
  %4032 = load i32, i32* %4031, align 4
  %4033 = add i32 %4032, 1
  %4034 = icmp ne i32 %4032, -1
  %4035 = zext i1 %4034 to i8
  store i8 %4035, i8* %14, align 1
  %4036 = and i32 %4033, 255
  %4037 = tail call i32 @llvm.ctpop.i32(i32 %4036)
  %4038 = trunc i32 %4037 to i8
  %4039 = and i8 %4038, 1
  %4040 = xor i8 %4039, 1
  store i8 %4040, i8* %21, align 1
  %4041 = xor i32 %4032, 16
  %4042 = xor i32 %4033, %4041
  %4043 = lshr i32 %4042, 4
  %4044 = trunc i32 %4043 to i8
  %4045 = and i8 %4044, 1
  store i8 %4045, i8* %27, align 1
  %4046 = icmp eq i32 %4033, 0
  %4047 = zext i1 %4046 to i8
  store i8 %4047, i8* %30, align 1
  %4048 = lshr i32 %4033, 31
  %4049 = trunc i32 %4048 to i8
  store i8 %4049, i8* %33, align 1
  %4050 = lshr i32 %4032, 31
  %4051 = xor i32 %4050, 1
  %4052 = xor i32 %4048, %4050
  %4053 = add nuw nsw i32 %4052, %4051
  %4054 = icmp eq i32 %4053, 2
  %4055 = zext i1 %4054 to i8
  store i8 %4055, i8* %39, align 1
  %.v126 = select i1 %4046, i64 118, i64 18
  %4056 = add i64 %4023, %.v126
  store i64 %4056, i64* %3, align 8
  br i1 %4046, label %block_.L_40127b, label %block_401217

block_401217:                                     ; preds = %block_401205
  %4057 = add i64 %3980, -1168
  store i64 %4057, i64* %RAX.i1508, align 8
  %4058 = add i64 %4056, 11
  store i64 %4058, i64* %3, align 8
  %4059 = load i32, i32* %3988, align 4
  %4060 = sext i32 %4059 to i64
  %4061 = shl nsw i64 %4060, 6
  store i64 %4061, i64* %RCX.i2066, align 8
  %4062 = lshr i64 %4060, 57
  %4063 = and i64 %4062, 1
  %4064 = add i64 %4061, %4057
  store i64 %4064, i64* %RAX.i1508, align 8
  %4065 = icmp ult i64 %4064, %4057
  %4066 = icmp ult i64 %4064, %4061
  %4067 = or i1 %4065, %4066
  %4068 = zext i1 %4067 to i8
  store i8 %4068, i8* %14, align 1
  %4069 = trunc i64 %4064 to i32
  %4070 = and i32 %4069, 255
  %4071 = tail call i32 @llvm.ctpop.i32(i32 %4070)
  %4072 = trunc i32 %4071 to i8
  %4073 = and i8 %4072, 1
  %4074 = xor i8 %4073, 1
  store i8 %4074, i8* %21, align 1
  %4075 = xor i64 %4057, %4064
  %4076 = lshr i64 %4075, 4
  %4077 = trunc i64 %4076 to i8
  %4078 = and i8 %4077, 1
  store i8 %4078, i8* %27, align 1
  %4079 = icmp eq i64 %4064, 0
  %4080 = zext i1 %4079 to i8
  store i8 %4080, i8* %30, align 1
  %4081 = lshr i64 %4064, 63
  %4082 = trunc i64 %4081 to i8
  store i8 %4082, i8* %33, align 1
  %4083 = lshr i64 %4057, 63
  %4084 = xor i64 %4081, %4083
  %4085 = xor i64 %4081, %4063
  %4086 = add nuw nsw i64 %4084, %4085
  %4087 = icmp eq i64 %4086, 2
  %4088 = zext i1 %4087 to i8
  store i8 %4088, i8* %39, align 1
  %4089 = add i64 %4056, 22
  store i64 %4089, i64* %3, align 8
  %4090 = load i32, i32* %3983, align 4
  %4091 = sext i32 %4090 to i64
  store i64 %4091, i64* %RCX.i2066, align 8
  %4092 = shl nsw i64 %4091, 2
  %4093 = add i64 %4092, %4064
  %4094 = add i64 %4056, 26
  store i64 %4094, i64* %3, align 8
  %4095 = inttoptr i64 %4093 to i32*
  %4096 = load i32, i32* %4095, align 4
  %4097 = add i32 %4096, 1
  %4098 = icmp ne i32 %4096, -1
  %4099 = zext i1 %4098 to i8
  store i8 %4099, i8* %14, align 1
  %4100 = and i32 %4097, 255
  %4101 = tail call i32 @llvm.ctpop.i32(i32 %4100)
  %4102 = trunc i32 %4101 to i8
  %4103 = and i8 %4102, 1
  %4104 = xor i8 %4103, 1
  store i8 %4104, i8* %21, align 1
  %4105 = xor i32 %4096, 16
  %4106 = xor i32 %4097, %4105
  %4107 = lshr i32 %4106, 4
  %4108 = trunc i32 %4107 to i8
  %4109 = and i8 %4108, 1
  store i8 %4109, i8* %27, align 1
  %4110 = icmp eq i32 %4097, 0
  %4111 = zext i1 %4110 to i8
  store i8 %4111, i8* %30, align 1
  %4112 = lshr i32 %4097, 31
  %4113 = trunc i32 %4112 to i8
  store i8 %4113, i8* %33, align 1
  %4114 = lshr i32 %4096, 31
  %4115 = xor i32 %4114, 1
  %4116 = xor i32 %4112, %4114
  %4117 = add nuw nsw i32 %4116, %4115
  %4118 = icmp eq i32 %4117, 2
  %4119 = zext i1 %4118 to i8
  store i8 %4119, i8* %39, align 1
  %.v127 = select i1 %4110, i64 100, i64 32
  %4120 = add i64 %4056, %.v127
  store i64 %4120, i64* %3, align 8
  %.pre47 = load i64, i64* %RBP.i, align 8
  br i1 %4110, label %block_.L_40127b, label %block_401237

block_401237:                                     ; preds = %block_401217
  %4121 = add i64 %.pre47, -1168
  store i64 %4121, i64* %RAX.i1508, align 8
  %4122 = add i64 %.pre47, -4
  %4123 = add i64 %4120, 11
  store i64 %4123, i64* %3, align 8
  %4124 = inttoptr i64 %4122 to i32*
  %4125 = load i32, i32* %4124, align 4
  %4126 = sext i32 %4125 to i64
  store i64 %4126, i64* %RCX.i2066, align 8
  %4127 = shl nsw i64 %4126, 2
  %4128 = add i64 %.pre47, -1488
  %4129 = add i64 %4128, %4127
  %4130 = add i64 %4120, 19
  store i64 %4130, i64* %3, align 8
  %4131 = inttoptr i64 %4129 to i32*
  %4132 = load i32, i32* %4131, align 4
  %4133 = sext i32 %4132 to i64
  store i64 %4133, i64* %RCX.i2066, align 8
  %4134 = shl nsw i64 %4133, 2
  %4135 = add nsw i64 %4134, 6305920
  %4136 = add i64 %4120, 26
  store i64 %4136, i64* %3, align 8
  %4137 = inttoptr i64 %4135 to i32*
  %4138 = load i32, i32* %4137, align 4
  %4139 = zext i32 %4138 to i64
  store i64 %4139, i64* %RDX.i2064, align 8
  %4140 = add i64 %.pre47, -12
  %4141 = add i64 %4120, 30
  store i64 %4141, i64* %3, align 8
  %4142 = inttoptr i64 %4140 to i32*
  %4143 = load i32, i32* %4142, align 4
  %4144 = sext i32 %4143 to i64
  %4145 = shl nsw i64 %4144, 6
  store i64 %4145, i64* %RCX.i2066, align 8
  %4146 = lshr i64 %4144, 57
  %4147 = and i64 %4146, 1
  %4148 = add i64 %4145, %4121
  store i64 %4148, i64* %RAX.i1508, align 8
  %4149 = icmp ult i64 %4148, %4121
  %4150 = icmp ult i64 %4148, %4145
  %4151 = or i1 %4149, %4150
  %4152 = zext i1 %4151 to i8
  store i8 %4152, i8* %14, align 1
  %4153 = trunc i64 %4148 to i32
  %4154 = and i32 %4153, 255
  %4155 = tail call i32 @llvm.ctpop.i32(i32 %4154)
  %4156 = trunc i32 %4155 to i8
  %4157 = and i8 %4156, 1
  %4158 = xor i8 %4157, 1
  store i8 %4158, i8* %21, align 1
  %4159 = xor i64 %4121, %4148
  %4160 = lshr i64 %4159, 4
  %4161 = trunc i64 %4160 to i8
  %4162 = and i8 %4161, 1
  store i8 %4162, i8* %27, align 1
  %4163 = icmp eq i64 %4148, 0
  %4164 = zext i1 %4163 to i8
  store i8 %4164, i8* %30, align 1
  %4165 = lshr i64 %4148, 63
  %4166 = trunc i64 %4165 to i8
  store i8 %4166, i8* %33, align 1
  %4167 = lshr i64 %4121, 63
  %4168 = xor i64 %4165, %4167
  %4169 = xor i64 %4165, %4147
  %4170 = add nuw nsw i64 %4168, %4169
  %4171 = icmp eq i64 %4170, 2
  %4172 = zext i1 %4171 to i8
  store i8 %4172, i8* %39, align 1
  %4173 = add i64 %4120, 41
  store i64 %4173, i64* %3, align 8
  %4174 = load i32, i32* %4124, align 4
  %4175 = sext i32 %4174 to i64
  store i64 %4175, i64* %RCX.i2066, align 8
  %4176 = shl nsw i64 %4175, 2
  %4177 = add i64 %4176, %4148
  %4178 = add i64 %4120, 45
  store i64 %4178, i64* %3, align 8
  %4179 = inttoptr i64 %4177 to i32*
  %4180 = load i32, i32* %4179, align 4
  %4181 = sext i32 %4180 to i64
  store i64 %4181, i64* %RAX.i1508, align 8
  %4182 = shl nsw i64 %4181, 2
  %4183 = add nsw i64 %4182, 6305920
  %4184 = add i64 %4120, 52
  store i64 %4184, i64* %3, align 8
  %4185 = inttoptr i64 %4183 to i32*
  %4186 = load i32, i32* %4185, align 4
  %4187 = xor i32 %4186, %4138
  %4188 = zext i32 %4187 to i64
  store i64 %4188, i64* %RDX.i2064, align 8
  store i8 0, i8* %14, align 1
  %4189 = and i32 %4187, 255
  %4190 = tail call i32 @llvm.ctpop.i32(i32 %4189)
  %4191 = trunc i32 %4190 to i8
  %4192 = and i8 %4191, 1
  %4193 = xor i8 %4192, 1
  store i8 %4193, i8* %21, align 1
  %4194 = icmp eq i32 %4187, 0
  %4195 = zext i1 %4194 to i8
  store i8 %4195, i8* %30, align 1
  %4196 = lshr i32 %4187, 31
  %4197 = trunc i32 %4196 to i8
  store i8 %4197, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %4198 = load i64, i64* %RBP.i, align 8
  %4199 = add i64 %4198, -4
  %4200 = add i64 %4120, 56
  store i64 %4200, i64* %3, align 8
  %4201 = inttoptr i64 %4199 to i32*
  %4202 = load i32, i32* %4201, align 4
  %4203 = sext i32 %4202 to i64
  store i64 %4203, i64* %RAX.i1508, align 8
  %4204 = shl nsw i64 %4203, 2
  %4205 = add i64 %4198, -1616
  %4206 = add i64 %4205, %4204
  %4207 = add i64 %4120, 63
  store i64 %4207, i64* %3, align 8
  %4208 = inttoptr i64 %4206 to i32*
  store i32 %4187, i32* %4208, align 4
  %4209 = load i64, i64* %3, align 8
  %4210 = add i64 %4209, 214
  br label %block_.L_40134c

block_.L_40127b:                                  ; preds = %block_401217, %block_401205
  %4211 = phi i64 [ %4056, %block_401205 ], [ %4120, %block_401217 ]
  %4212 = phi i64 [ %3980, %block_401205 ], [ %.pre47, %block_401217 ]
  %4213 = add i64 %4212, -4
  %4214 = add i64 %4211, 4
  store i64 %4214, i64* %3, align 8
  %4215 = inttoptr i64 %4213 to i32*
  %4216 = load i32, i32* %4215, align 4
  %4217 = sext i32 %4216 to i64
  store i64 %4217, i64* %RAX.i1508, align 8
  %4218 = shl nsw i64 %4217, 2
  %4219 = add i64 %4212, -1488
  %4220 = add i64 %4219, %4218
  %4221 = add i64 %4211, 12
  store i64 %4221, i64* %3, align 8
  %4222 = inttoptr i64 %4220 to i32*
  %4223 = load i32, i32* %4222, align 4
  %4224 = add i32 %4223, 1
  %4225 = icmp ne i32 %4223, -1
  %4226 = zext i1 %4225 to i8
  store i8 %4226, i8* %14, align 1
  %4227 = and i32 %4224, 255
  %4228 = tail call i32 @llvm.ctpop.i32(i32 %4227)
  %4229 = trunc i32 %4228 to i8
  %4230 = and i8 %4229, 1
  %4231 = xor i8 %4230, 1
  store i8 %4231, i8* %21, align 1
  %4232 = xor i32 %4223, 16
  %4233 = xor i32 %4224, %4232
  %4234 = lshr i32 %4233, 4
  %4235 = trunc i32 %4234 to i8
  %4236 = and i8 %4235, 1
  store i8 %4236, i8* %27, align 1
  %4237 = icmp eq i32 %4224, 0
  %4238 = zext i1 %4237 to i8
  store i8 %4238, i8* %30, align 1
  %4239 = lshr i32 %4224, 31
  %4240 = trunc i32 %4239 to i8
  store i8 %4240, i8* %33, align 1
  %4241 = lshr i32 %4223, 31
  %4242 = xor i32 %4241, 1
  %4243 = xor i32 %4239, %4241
  %4244 = add nuw nsw i32 %4243, %4242
  %4245 = icmp eq i32 %4244, 2
  %4246 = zext i1 %4245 to i8
  store i8 %4246, i8* %39, align 1
  %.v131 = select i1 %4237, i64 85, i64 18
  %4247 = add i64 %4211, %.v131
  store i64 %4247, i64* %3, align 8
  br i1 %4237, label %block_.L_4012d0, label %block_40128d

block_40128d:                                     ; preds = %block_.L_40127b
  %4248 = add i64 %4212, -1168
  store i64 %4248, i64* %RAX.i1508, align 8
  %4249 = add i64 %4212, -12
  %4250 = add i64 %4247, 11
  store i64 %4250, i64* %3, align 8
  %4251 = inttoptr i64 %4249 to i32*
  %4252 = load i32, i32* %4251, align 4
  %4253 = sext i32 %4252 to i64
  %4254 = shl nsw i64 %4253, 6
  store i64 %4254, i64* %RCX.i2066, align 8
  %4255 = lshr i64 %4253, 57
  %4256 = and i64 %4255, 1
  %4257 = add i64 %4254, %4248
  store i64 %4257, i64* %RAX.i1508, align 8
  %4258 = icmp ult i64 %4257, %4248
  %4259 = icmp ult i64 %4257, %4254
  %4260 = or i1 %4258, %4259
  %4261 = zext i1 %4260 to i8
  store i8 %4261, i8* %14, align 1
  %4262 = trunc i64 %4257 to i32
  %4263 = and i32 %4262, 255
  %4264 = tail call i32 @llvm.ctpop.i32(i32 %4263)
  %4265 = trunc i32 %4264 to i8
  %4266 = and i8 %4265, 1
  %4267 = xor i8 %4266, 1
  store i8 %4267, i8* %21, align 1
  %4268 = xor i64 %4248, %4257
  %4269 = lshr i64 %4268, 4
  %4270 = trunc i64 %4269 to i8
  %4271 = and i8 %4270, 1
  store i8 %4271, i8* %27, align 1
  %4272 = icmp eq i64 %4257, 0
  %4273 = zext i1 %4272 to i8
  store i8 %4273, i8* %30, align 1
  %4274 = lshr i64 %4257, 63
  %4275 = trunc i64 %4274 to i8
  store i8 %4275, i8* %33, align 1
  %4276 = lshr i64 %4248, 63
  %4277 = xor i64 %4274, %4276
  %4278 = xor i64 %4274, %4256
  %4279 = add nuw nsw i64 %4277, %4278
  %4280 = icmp eq i64 %4279, 2
  %4281 = zext i1 %4280 to i8
  store i8 %4281, i8* %39, align 1
  %4282 = add i64 %4247, 22
  store i64 %4282, i64* %3, align 8
  %4283 = load i32, i32* %4215, align 4
  %4284 = sext i32 %4283 to i64
  store i64 %4284, i64* %RCX.i2066, align 8
  %4285 = shl nsw i64 %4284, 2
  %4286 = add i64 %4285, %4257
  %4287 = add i64 %4247, 26
  store i64 %4287, i64* %3, align 8
  %4288 = inttoptr i64 %4286 to i32*
  %4289 = load i32, i32* %4288, align 4
  %4290 = add i32 %4289, 1
  %4291 = icmp ne i32 %4289, -1
  %4292 = zext i1 %4291 to i8
  store i8 %4292, i8* %14, align 1
  %4293 = and i32 %4290, 255
  %4294 = tail call i32 @llvm.ctpop.i32(i32 %4293)
  %4295 = trunc i32 %4294 to i8
  %4296 = and i8 %4295, 1
  %4297 = xor i8 %4296, 1
  store i8 %4297, i8* %21, align 1
  %4298 = xor i32 %4289, 16
  %4299 = xor i32 %4290, %4298
  %4300 = lshr i32 %4299, 4
  %4301 = trunc i32 %4300 to i8
  %4302 = and i8 %4301, 1
  store i8 %4302, i8* %27, align 1
  %4303 = icmp eq i32 %4290, 0
  %4304 = zext i1 %4303 to i8
  store i8 %4304, i8* %30, align 1
  %4305 = lshr i32 %4290, 31
  %4306 = trunc i32 %4305 to i8
  store i8 %4306, i8* %33, align 1
  %4307 = lshr i32 %4289, 31
  %4308 = xor i32 %4307, 1
  %4309 = xor i32 %4305, %4307
  %4310 = add nuw nsw i32 %4309, %4308
  %4311 = icmp eq i32 %4310, 2
  %4312 = zext i1 %4311 to i8
  store i8 %4312, i8* %39, align 1
  %.v132 = select i1 %4303, i64 32, i64 67
  %4313 = add i64 %4247, %.v132
  store i64 %4313, i64* %3, align 8
  %.pre48 = load i64, i64* %RBP.i, align 8
  br i1 %4303, label %block_4012ad, label %block_.L_4012d0

block_4012ad:                                     ; preds = %block_40128d
  %4314 = add i64 %.pre48, -4
  %4315 = add i64 %4313, 4
  store i64 %4315, i64* %3, align 8
  %4316 = inttoptr i64 %4314 to i32*
  %4317 = load i32, i32* %4316, align 4
  %4318 = sext i32 %4317 to i64
  store i64 %4318, i64* %RAX.i1508, align 8
  %4319 = shl nsw i64 %4318, 2
  %4320 = add i64 %.pre48, -1488
  %4321 = add i64 %4320, %4319
  %4322 = add i64 %4313, 12
  store i64 %4322, i64* %3, align 8
  %4323 = inttoptr i64 %4321 to i32*
  %4324 = load i32, i32* %4323, align 4
  %4325 = sext i32 %4324 to i64
  store i64 %4325, i64* %RAX.i1508, align 8
  %4326 = shl nsw i64 %4325, 2
  %4327 = add nsw i64 %4326, 6305920
  %4328 = add i64 %4313, 19
  store i64 %4328, i64* %3, align 8
  %4329 = inttoptr i64 %4327 to i32*
  %4330 = load i32, i32* %4329, align 4
  %4331 = zext i32 %4330 to i64
  store i64 %4331, i64* %RCX.i2066, align 8
  %4332 = add i64 %4313, 23
  store i64 %4332, i64* %3, align 8
  %4333 = load i32, i32* %4316, align 4
  %4334 = sext i32 %4333 to i64
  store i64 %4334, i64* %RAX.i1508, align 8
  %4335 = shl nsw i64 %4334, 2
  %4336 = add i64 %.pre48, -1616
  %4337 = add i64 %4336, %4335
  %4338 = add i64 %4313, 30
  store i64 %4338, i64* %3, align 8
  %4339 = inttoptr i64 %4337 to i32*
  store i32 %4330, i32* %4339, align 4
  %4340 = load i64, i64* %3, align 8
  %4341 = add i64 %4340, 124
  br label %block_.L_401347

block_.L_4012d0:                                  ; preds = %block_40128d, %block_.L_40127b
  %4342 = phi i64 [ %4247, %block_.L_40127b ], [ %4313, %block_40128d ]
  %4343 = phi i64 [ %4212, %block_.L_40127b ], [ %.pre48, %block_40128d ]
  %4344 = add i64 %4343, -4
  %4345 = add i64 %4342, 4
  store i64 %4345, i64* %3, align 8
  %4346 = inttoptr i64 %4344 to i32*
  %4347 = load i32, i32* %4346, align 4
  %4348 = sext i32 %4347 to i64
  store i64 %4348, i64* %RAX.i1508, align 8
  %4349 = shl nsw i64 %4348, 2
  %4350 = add i64 %4343, -1488
  %4351 = add i64 %4350, %4349
  %4352 = add i64 %4342, 12
  store i64 %4352, i64* %3, align 8
  %4353 = inttoptr i64 %4351 to i32*
  %4354 = load i32, i32* %4353, align 4
  %4355 = add i32 %4354, 1
  %4356 = icmp ne i32 %4354, -1
  %4357 = zext i1 %4356 to i8
  store i8 %4357, i8* %14, align 1
  %4358 = and i32 %4355, 255
  %4359 = tail call i32 @llvm.ctpop.i32(i32 %4358)
  %4360 = trunc i32 %4359 to i8
  %4361 = and i8 %4360, 1
  %4362 = xor i8 %4361, 1
  store i8 %4362, i8* %21, align 1
  %4363 = xor i32 %4354, 16
  %4364 = xor i32 %4355, %4363
  %4365 = lshr i32 %4364, 4
  %4366 = trunc i32 %4365 to i8
  %4367 = and i8 %4366, 1
  store i8 %4367, i8* %27, align 1
  %4368 = icmp eq i32 %4355, 0
  %4369 = zext i1 %4368 to i8
  store i8 %4369, i8* %30, align 1
  %4370 = lshr i32 %4355, 31
  %4371 = trunc i32 %4370 to i8
  store i8 %4371, i8* %33, align 1
  %4372 = lshr i32 %4354, 31
  %4373 = xor i32 %4372, 1
  %4374 = xor i32 %4370, %4372
  %4375 = add nuw nsw i32 %4374, %4373
  %4376 = icmp eq i32 %4375, 2
  %4377 = zext i1 %4376 to i8
  store i8 %4377, i8* %39, align 1
  %.v133 = select i1 %4368, i64 18, i64 99
  %4378 = add i64 %4342, %.v133
  store i64 %4378, i64* %3, align 8
  br i1 %4368, label %block_4012e2, label %block_.L_401333

block_4012e2:                                     ; preds = %block_.L_4012d0
  %4379 = add i64 %4343, -1168
  store i64 %4379, i64* %RAX.i1508, align 8
  %4380 = add i64 %4343, -12
  %4381 = add i64 %4378, 11
  store i64 %4381, i64* %3, align 8
  %4382 = inttoptr i64 %4380 to i32*
  %4383 = load i32, i32* %4382, align 4
  %4384 = sext i32 %4383 to i64
  %4385 = shl nsw i64 %4384, 6
  store i64 %4385, i64* %RCX.i2066, align 8
  %4386 = lshr i64 %4384, 57
  %4387 = and i64 %4386, 1
  %4388 = add i64 %4385, %4379
  store i64 %4388, i64* %RAX.i1508, align 8
  %4389 = icmp ult i64 %4388, %4379
  %4390 = icmp ult i64 %4388, %4385
  %4391 = or i1 %4389, %4390
  %4392 = zext i1 %4391 to i8
  store i8 %4392, i8* %14, align 1
  %4393 = trunc i64 %4388 to i32
  %4394 = and i32 %4393, 255
  %4395 = tail call i32 @llvm.ctpop.i32(i32 %4394)
  %4396 = trunc i32 %4395 to i8
  %4397 = and i8 %4396, 1
  %4398 = xor i8 %4397, 1
  store i8 %4398, i8* %21, align 1
  %4399 = xor i64 %4379, %4388
  %4400 = lshr i64 %4399, 4
  %4401 = trunc i64 %4400 to i8
  %4402 = and i8 %4401, 1
  store i8 %4402, i8* %27, align 1
  %4403 = icmp eq i64 %4388, 0
  %4404 = zext i1 %4403 to i8
  store i8 %4404, i8* %30, align 1
  %4405 = lshr i64 %4388, 63
  %4406 = trunc i64 %4405 to i8
  store i8 %4406, i8* %33, align 1
  %4407 = lshr i64 %4379, 63
  %4408 = xor i64 %4405, %4407
  %4409 = xor i64 %4405, %4387
  %4410 = add nuw nsw i64 %4408, %4409
  %4411 = icmp eq i64 %4410, 2
  %4412 = zext i1 %4411 to i8
  store i8 %4412, i8* %39, align 1
  %4413 = add i64 %4378, 22
  store i64 %4413, i64* %3, align 8
  %4414 = load i32, i32* %4346, align 4
  %4415 = sext i32 %4414 to i64
  store i64 %4415, i64* %RCX.i2066, align 8
  %4416 = shl nsw i64 %4415, 2
  %4417 = add i64 %4416, %4388
  %4418 = add i64 %4378, 26
  store i64 %4418, i64* %3, align 8
  %4419 = inttoptr i64 %4417 to i32*
  %4420 = load i32, i32* %4419, align 4
  %4421 = add i32 %4420, 1
  %4422 = icmp ne i32 %4420, -1
  %4423 = zext i1 %4422 to i8
  store i8 %4423, i8* %14, align 1
  %4424 = and i32 %4421, 255
  %4425 = tail call i32 @llvm.ctpop.i32(i32 %4424)
  %4426 = trunc i32 %4425 to i8
  %4427 = and i8 %4426, 1
  %4428 = xor i8 %4427, 1
  store i8 %4428, i8* %21, align 1
  %4429 = xor i32 %4420, 16
  %4430 = xor i32 %4421, %4429
  %4431 = lshr i32 %4430, 4
  %4432 = trunc i32 %4431 to i8
  %4433 = and i8 %4432, 1
  store i8 %4433, i8* %27, align 1
  %4434 = icmp eq i32 %4421, 0
  %4435 = zext i1 %4434 to i8
  store i8 %4435, i8* %30, align 1
  %4436 = lshr i32 %4421, 31
  %4437 = trunc i32 %4436 to i8
  store i8 %4437, i8* %33, align 1
  %4438 = lshr i32 %4420, 31
  %4439 = xor i32 %4438, 1
  %4440 = xor i32 %4436, %4438
  %4441 = add nuw nsw i32 %4440, %4439
  %4442 = icmp eq i32 %4441, 2
  %4443 = zext i1 %4442 to i8
  store i8 %4443, i8* %39, align 1
  %.v134 = select i1 %4434, i64 81, i64 32
  %4444 = add i64 %4378, %.v134
  store i64 %4444, i64* %3, align 8
  %.pre49 = load i64, i64* %RBP.i, align 8
  br i1 %4434, label %block_.L_401333, label %block_401302

block_401302:                                     ; preds = %block_4012e2
  %4445 = add i64 %.pre49, -1168
  store i64 %4445, i64* %RAX.i1508, align 8
  %4446 = add i64 %.pre49, -12
  %4447 = add i64 %4444, 11
  store i64 %4447, i64* %3, align 8
  %4448 = inttoptr i64 %4446 to i32*
  %4449 = load i32, i32* %4448, align 4
  %4450 = sext i32 %4449 to i64
  %4451 = shl nsw i64 %4450, 6
  store i64 %4451, i64* %RCX.i2066, align 8
  %4452 = lshr i64 %4450, 57
  %4453 = and i64 %4452, 1
  %4454 = add i64 %4451, %4445
  store i64 %4454, i64* %RAX.i1508, align 8
  %4455 = icmp ult i64 %4454, %4445
  %4456 = icmp ult i64 %4454, %4451
  %4457 = or i1 %4455, %4456
  %4458 = zext i1 %4457 to i8
  store i8 %4458, i8* %14, align 1
  %4459 = trunc i64 %4454 to i32
  %4460 = and i32 %4459, 255
  %4461 = tail call i32 @llvm.ctpop.i32(i32 %4460)
  %4462 = trunc i32 %4461 to i8
  %4463 = and i8 %4462, 1
  %4464 = xor i8 %4463, 1
  store i8 %4464, i8* %21, align 1
  %4465 = xor i64 %4445, %4454
  %4466 = lshr i64 %4465, 4
  %4467 = trunc i64 %4466 to i8
  %4468 = and i8 %4467, 1
  store i8 %4468, i8* %27, align 1
  %4469 = icmp eq i64 %4454, 0
  %4470 = zext i1 %4469 to i8
  store i8 %4470, i8* %30, align 1
  %4471 = lshr i64 %4454, 63
  %4472 = trunc i64 %4471 to i8
  store i8 %4472, i8* %33, align 1
  %4473 = lshr i64 %4445, 63
  %4474 = xor i64 %4471, %4473
  %4475 = xor i64 %4471, %4453
  %4476 = add nuw nsw i64 %4474, %4475
  %4477 = icmp eq i64 %4476, 2
  %4478 = zext i1 %4477 to i8
  store i8 %4478, i8* %39, align 1
  %4479 = add i64 %.pre49, -4
  %4480 = add i64 %4444, 22
  store i64 %4480, i64* %3, align 8
  %4481 = inttoptr i64 %4479 to i32*
  %4482 = load i32, i32* %4481, align 4
  %4483 = sext i32 %4482 to i64
  store i64 %4483, i64* %RCX.i2066, align 8
  %4484 = shl nsw i64 %4483, 2
  %4485 = add i64 %4484, %4454
  %4486 = add i64 %4444, 26
  store i64 %4486, i64* %3, align 8
  %4487 = inttoptr i64 %4485 to i32*
  %4488 = load i32, i32* %4487, align 4
  %4489 = sext i32 %4488 to i64
  store i64 %4489, i64* %RAX.i1508, align 8
  %4490 = shl nsw i64 %4489, 2
  %4491 = add nsw i64 %4490, 6305920
  %4492 = add i64 %4444, 33
  store i64 %4492, i64* %3, align 8
  %4493 = inttoptr i64 %4491 to i32*
  %4494 = load i32, i32* %4493, align 4
  %4495 = zext i32 %4494 to i64
  store i64 %4495, i64* %RDX.i2064, align 8
  %4496 = add i64 %4444, 37
  store i64 %4496, i64* %3, align 8
  %4497 = load i32, i32* %4481, align 4
  %4498 = sext i32 %4497 to i64
  store i64 %4498, i64* %RAX.i1508, align 8
  %4499 = shl nsw i64 %4498, 2
  %4500 = add i64 %.pre49, -1616
  %4501 = add i64 %4500, %4499
  %4502 = add i64 %4444, 44
  store i64 %4502, i64* %3, align 8
  %4503 = inttoptr i64 %4501 to i32*
  store i32 %4494, i32* %4503, align 4
  %4504 = load i64, i64* %3, align 8
  %4505 = add i64 %4504, 20
  store i64 %4505, i64* %3, align 8
  br label %block_.L_401342

block_.L_401333:                                  ; preds = %block_.L_4012d0, %block_4012e2
  %4506 = phi i64 [ %4378, %block_.L_4012d0 ], [ %4444, %block_4012e2 ]
  %4507 = phi i64 [ %4343, %block_.L_4012d0 ], [ %.pre49, %block_4012e2 ]
  %4508 = add i64 %4507, -4
  %4509 = add i64 %4506, 4
  store i64 %4509, i64* %3, align 8
  %4510 = inttoptr i64 %4508 to i32*
  %4511 = load i32, i32* %4510, align 4
  %4512 = sext i32 %4511 to i64
  store i64 %4512, i64* %RAX.i1508, align 8
  %4513 = shl nsw i64 %4512, 2
  %4514 = add i64 %4507, -1616
  %4515 = add i64 %4514, %4513
  %4516 = add i64 %4506, 15
  store i64 %4516, i64* %3, align 8
  %4517 = inttoptr i64 %4515 to i32*
  store i32 0, i32* %4517, align 4
  %.pre50 = load i64, i64* %3, align 8
  br label %block_.L_401342

block_.L_401342:                                  ; preds = %block_.L_401333, %block_401302
  %4518 = phi i64 [ %.pre50, %block_.L_401333 ], [ %4505, %block_401302 ]
  %4519 = add i64 %4518, 5
  br label %block_.L_401347

block_.L_401347:                                  ; preds = %block_.L_401342, %block_4012ad
  %.sink87 = phi i64 [ %4519, %block_.L_401342 ], [ %4341, %block_4012ad ]
  store i64 %.sink87, i64* %3, align 8
  %4520 = add i64 %.sink87, 5
  br label %block_.L_40134c

block_.L_40134c:                                  ; preds = %block_.L_401347, %block_401237
  %.sink85 = phi i64 [ %4520, %block_.L_401347 ], [ %4210, %block_401237 ]
  %4521 = load i64, i64* %RBP.i, align 8
  %4522 = add i64 %4521, -8
  %4523 = add i64 %.sink85, 7
  store i64 %4523, i64* %3, align 8
  %4524 = inttoptr i64 %4522 to i32*
  store i32 1, i32* %4524, align 4
  %.pre51 = load i64, i64* %3, align 8
  br label %block_.L_401353

block_.L_401353:                                  ; preds = %block_.L_4013f1, %block_.L_40134c
  %4525 = phi i64 [ %.pre51, %block_.L_40134c ], [ %4900, %block_.L_4013f1 ]
  %MEMORY.36 = phi %struct.Memory* [ %MEMORY.29, %block_.L_40134c ], [ %MEMORY.37, %block_.L_4013f1 ]
  %4526 = load i64, i64* %RBP.i, align 8
  %4527 = add i64 %4526, -8
  %4528 = add i64 %4525, 3
  store i64 %4528, i64* %3, align 8
  %4529 = inttoptr i64 %4527 to i32*
  %4530 = load i32, i32* %4529, align 4
  %4531 = zext i32 %4530 to i64
  store i64 %4531, i64* %RAX.i1508, align 8
  %4532 = add i64 %4526, -4
  %4533 = add i64 %4525, 6
  store i64 %4533, i64* %3, align 8
  %4534 = inttoptr i64 %4532 to i32*
  %4535 = load i32, i32* %4534, align 4
  %4536 = sub i32 %4530, %4535
  %4537 = icmp ult i32 %4530, %4535
  %4538 = zext i1 %4537 to i8
  store i8 %4538, i8* %14, align 1
  %4539 = and i32 %4536, 255
  %4540 = tail call i32 @llvm.ctpop.i32(i32 %4539)
  %4541 = trunc i32 %4540 to i8
  %4542 = and i8 %4541, 1
  %4543 = xor i8 %4542, 1
  store i8 %4543, i8* %21, align 1
  %4544 = xor i32 %4535, %4530
  %4545 = xor i32 %4544, %4536
  %4546 = lshr i32 %4545, 4
  %4547 = trunc i32 %4546 to i8
  %4548 = and i8 %4547, 1
  store i8 %4548, i8* %27, align 1
  %4549 = icmp eq i32 %4536, 0
  %4550 = zext i1 %4549 to i8
  store i8 %4550, i8* %30, align 1
  %4551 = lshr i32 %4536, 31
  %4552 = trunc i32 %4551 to i8
  store i8 %4552, i8* %33, align 1
  %4553 = lshr i32 %4530, 31
  %4554 = lshr i32 %4535, 31
  %4555 = xor i32 %4554, %4553
  %4556 = xor i32 %4551, %4553
  %4557 = add nuw nsw i32 %4556, %4555
  %4558 = icmp eq i32 %4557, 2
  %4559 = zext i1 %4558 to i8
  store i8 %4559, i8* %39, align 1
  %4560 = icmp ne i8 %4552, 0
  %4561 = xor i1 %4560, %4558
  %.v128 = select i1 %4561, i64 12, i64 177
  %4562 = add i64 %4525, %.v128
  %4563 = add i64 %4562, 4
  store i64 %4563, i64* %3, align 8
  br i1 %4561, label %block_40135f, label %block_.L_401404

block_40135f:                                     ; preds = %block_.L_401353
  %4564 = load i32, i32* %4529, align 4
  %4565 = sext i32 %4564 to i64
  store i64 %4565, i64* %RAX.i1508, align 8
  %4566 = shl nsw i64 %4565, 2
  %4567 = add i64 %4526, -1488
  %4568 = add i64 %4567, %4566
  %4569 = add i64 %4562, 12
  store i64 %4569, i64* %3, align 8
  %4570 = inttoptr i64 %4568 to i32*
  %4571 = load i32, i32* %4570, align 4
  %4572 = add i32 %4571, 1
  %4573 = icmp ne i32 %4571, -1
  %4574 = zext i1 %4573 to i8
  store i8 %4574, i8* %14, align 1
  %4575 = and i32 %4572, 255
  %4576 = tail call i32 @llvm.ctpop.i32(i32 %4575)
  %4577 = trunc i32 %4576 to i8
  %4578 = and i8 %4577, 1
  %4579 = xor i8 %4578, 1
  store i8 %4579, i8* %21, align 1
  %4580 = xor i32 %4571, 16
  %4581 = xor i32 %4572, %4580
  %4582 = lshr i32 %4581, 4
  %4583 = trunc i32 %4582 to i8
  %4584 = and i8 %4583, 1
  store i8 %4584, i8* %27, align 1
  %4585 = icmp eq i32 %4572, 0
  %4586 = zext i1 %4585 to i8
  store i8 %4586, i8* %30, align 1
  %4587 = lshr i32 %4572, 31
  %4588 = trunc i32 %4587 to i8
  store i8 %4588, i8* %33, align 1
  %4589 = lshr i32 %4571, 31
  %4590 = xor i32 %4589, 1
  %4591 = xor i32 %4587, %4589
  %4592 = add nuw nsw i32 %4591, %4590
  %4593 = icmp eq i32 %4592, 2
  %4594 = zext i1 %4593 to i8
  store i8 %4594, i8* %39, align 1
  %.v129 = select i1 %4585, i64 146, i64 18
  %4595 = add i64 %4562, %.v129
  store i64 %4595, i64* %3, align 8
  br i1 %4585, label %block_.L_4013f1, label %block_401371

block_401371:                                     ; preds = %block_40135f
  %4596 = add i64 %4526, -1168
  store i64 %4596, i64* %RAX.i1508, align 8
  %4597 = add i64 %4526, -12
  %4598 = add i64 %4595, 11
  store i64 %4598, i64* %3, align 8
  %4599 = inttoptr i64 %4597 to i32*
  %4600 = load i32, i32* %4599, align 4
  %4601 = sext i32 %4600 to i64
  %4602 = shl nsw i64 %4601, 6
  store i64 %4602, i64* %RCX.i2066, align 8
  %4603 = lshr i64 %4601, 57
  %4604 = and i64 %4603, 1
  %4605 = add i64 %4602, %4596
  store i64 %4605, i64* %RAX.i1508, align 8
  %4606 = icmp ult i64 %4605, %4596
  %4607 = icmp ult i64 %4605, %4602
  %4608 = or i1 %4606, %4607
  %4609 = zext i1 %4608 to i8
  store i8 %4609, i8* %14, align 1
  %4610 = trunc i64 %4605 to i32
  %4611 = and i32 %4610, 255
  %4612 = tail call i32 @llvm.ctpop.i32(i32 %4611)
  %4613 = trunc i32 %4612 to i8
  %4614 = and i8 %4613, 1
  %4615 = xor i8 %4614, 1
  store i8 %4615, i8* %21, align 1
  %4616 = xor i64 %4596, %4605
  %4617 = lshr i64 %4616, 4
  %4618 = trunc i64 %4617 to i8
  %4619 = and i8 %4618, 1
  store i8 %4619, i8* %27, align 1
  %4620 = icmp eq i64 %4605, 0
  %4621 = zext i1 %4620 to i8
  store i8 %4621, i8* %30, align 1
  %4622 = lshr i64 %4605, 63
  %4623 = trunc i64 %4622 to i8
  store i8 %4623, i8* %33, align 1
  %4624 = lshr i64 %4596, 63
  %4625 = xor i64 %4622, %4624
  %4626 = xor i64 %4622, %4604
  %4627 = add nuw nsw i64 %4625, %4626
  %4628 = icmp eq i64 %4627, 2
  %4629 = zext i1 %4628 to i8
  store i8 %4629, i8* %39, align 1
  %4630 = add i64 %4595, 21
  store i64 %4630, i64* %3, align 8
  %4631 = load i32, i32* %4534, align 4
  %4632 = zext i32 %4631 to i64
  store i64 %4632, i64* %RDX.i2064, align 8
  %4633 = add i64 %4595, 24
  store i64 %4633, i64* %3, align 8
  %4634 = load i32, i32* %4529, align 4
  %4635 = sub i32 %4631, %4634
  %4636 = zext i32 %4635 to i64
  store i64 %4636, i64* %RDX.i2064, align 8
  %4637 = icmp ult i32 %4631, %4634
  %4638 = zext i1 %4637 to i8
  store i8 %4638, i8* %14, align 1
  %4639 = and i32 %4635, 255
  %4640 = tail call i32 @llvm.ctpop.i32(i32 %4639)
  %4641 = trunc i32 %4640 to i8
  %4642 = and i8 %4641, 1
  %4643 = xor i8 %4642, 1
  store i8 %4643, i8* %21, align 1
  %4644 = xor i32 %4634, %4631
  %4645 = xor i32 %4644, %4635
  %4646 = lshr i32 %4645, 4
  %4647 = trunc i32 %4646 to i8
  %4648 = and i8 %4647, 1
  store i8 %4648, i8* %27, align 1
  %4649 = icmp eq i32 %4635, 0
  %4650 = zext i1 %4649 to i8
  store i8 %4650, i8* %30, align 1
  %4651 = lshr i32 %4635, 31
  %4652 = trunc i32 %4651 to i8
  store i8 %4652, i8* %33, align 1
  %4653 = lshr i32 %4631, 31
  %4654 = lshr i32 %4634, 31
  %4655 = xor i32 %4654, %4653
  %4656 = xor i32 %4651, %4653
  %4657 = add nuw nsw i32 %4656, %4655
  %4658 = icmp eq i32 %4657, 2
  %4659 = zext i1 %4658 to i8
  store i8 %4659, i8* %39, align 1
  %4660 = sext i32 %4635 to i64
  store i64 %4660, i64* %RCX.i2066, align 8
  %4661 = shl nsw i64 %4660, 2
  %4662 = add i64 %4661, %4605
  %4663 = add i64 %4595, 31
  store i64 %4663, i64* %3, align 8
  %4664 = inttoptr i64 %4662 to i32*
  %4665 = load i32, i32* %4664, align 4
  %4666 = add i32 %4665, 1
  %4667 = icmp ne i32 %4665, -1
  %4668 = zext i1 %4667 to i8
  store i8 %4668, i8* %14, align 1
  %4669 = and i32 %4666, 255
  %4670 = tail call i32 @llvm.ctpop.i32(i32 %4669)
  %4671 = trunc i32 %4670 to i8
  %4672 = and i8 %4671, 1
  %4673 = xor i8 %4672, 1
  store i8 %4673, i8* %21, align 1
  %4674 = xor i32 %4665, 16
  %4675 = xor i32 %4666, %4674
  %4676 = lshr i32 %4675, 4
  %4677 = trunc i32 %4676 to i8
  %4678 = and i8 %4677, 1
  store i8 %4678, i8* %27, align 1
  %4679 = icmp eq i32 %4666, 0
  %4680 = zext i1 %4679 to i8
  store i8 %4680, i8* %30, align 1
  %4681 = lshr i32 %4666, 31
  %4682 = trunc i32 %4681 to i8
  store i8 %4682, i8* %33, align 1
  %4683 = lshr i32 %4665, 31
  %4684 = xor i32 %4683, 1
  %4685 = xor i32 %4681, %4683
  %4686 = add nuw nsw i32 %4685, %4684
  %4687 = icmp eq i32 %4686, 2
  %4688 = zext i1 %4687 to i8
  store i8 %4688, i8* %39, align 1
  %.v130 = select i1 %4679, i64 128, i64 37
  %4689 = add i64 %4595, %.v130
  store i64 %4689, i64* %3, align 8
  br i1 %4679, label %block_.L_4013f1, label %block_401396

block_401396:                                     ; preds = %block_401371
  store i64 255, i64* %RAX.i1508, align 8
  %4690 = load i64, i64* %RBP.i, align 8
  %4691 = add i64 %4690, -1168
  store i64 %4691, i64* %RCX.i2066, align 8
  %4692 = add i64 %4690, -12
  %4693 = add i64 %4689, 16
  store i64 %4693, i64* %3, align 8
  %4694 = inttoptr i64 %4692 to i32*
  %4695 = load i32, i32* %4694, align 4
  %4696 = sext i32 %4695 to i64
  %4697 = shl nsw i64 %4696, 6
  store i64 %4697, i64* %RDX.i2064, align 8
  %4698 = lshr i64 %4696, 57
  %4699 = and i64 %4698, 1
  %4700 = add i64 %4697, %4691
  store i64 %4700, i64* %RCX.i2066, align 8
  %4701 = icmp ult i64 %4700, %4691
  %4702 = icmp ult i64 %4700, %4697
  %4703 = or i1 %4701, %4702
  %4704 = zext i1 %4703 to i8
  store i8 %4704, i8* %14, align 1
  %4705 = trunc i64 %4700 to i32
  %4706 = and i32 %4705, 255
  %4707 = tail call i32 @llvm.ctpop.i32(i32 %4706)
  %4708 = trunc i32 %4707 to i8
  %4709 = and i8 %4708, 1
  %4710 = xor i8 %4709, 1
  store i8 %4710, i8* %21, align 1
  %4711 = xor i64 %4691, %4700
  %4712 = lshr i64 %4711, 4
  %4713 = trunc i64 %4712 to i8
  %4714 = and i8 %4713, 1
  store i8 %4714, i8* %27, align 1
  %4715 = icmp eq i64 %4700, 0
  %4716 = zext i1 %4715 to i8
  store i8 %4716, i8* %30, align 1
  %4717 = lshr i64 %4700, 63
  %4718 = trunc i64 %4717 to i8
  store i8 %4718, i8* %33, align 1
  %4719 = lshr i64 %4691, 63
  %4720 = xor i64 %4717, %4719
  %4721 = xor i64 %4717, %4699
  %4722 = add nuw nsw i64 %4720, %4721
  %4723 = icmp eq i64 %4722, 2
  %4724 = zext i1 %4723 to i8
  store i8 %4724, i8* %39, align 1
  %4725 = add i64 %4690, -4
  %4726 = add i64 %4689, 26
  store i64 %4726, i64* %3, align 8
  %4727 = inttoptr i64 %4725 to i32*
  %4728 = load i32, i32* %4727, align 4
  %4729 = zext i32 %4728 to i64
  store i64 %4729, i64* %RSI.i2060, align 8
  %4730 = add i64 %4690, -8
  %4731 = add i64 %4689, 29
  store i64 %4731, i64* %3, align 8
  %4732 = inttoptr i64 %4730 to i32*
  %4733 = load i32, i32* %4732, align 4
  %4734 = sub i32 %4728, %4733
  %4735 = zext i32 %4734 to i64
  store i64 %4735, i64* %RSI.i2060, align 8
  %4736 = icmp ult i32 %4728, %4733
  %4737 = zext i1 %4736 to i8
  store i8 %4737, i8* %14, align 1
  %4738 = and i32 %4734, 255
  %4739 = tail call i32 @llvm.ctpop.i32(i32 %4738)
  %4740 = trunc i32 %4739 to i8
  %4741 = and i8 %4740, 1
  %4742 = xor i8 %4741, 1
  store i8 %4742, i8* %21, align 1
  %4743 = xor i32 %4733, %4728
  %4744 = xor i32 %4743, %4734
  %4745 = lshr i32 %4744, 4
  %4746 = trunc i32 %4745 to i8
  %4747 = and i8 %4746, 1
  store i8 %4747, i8* %27, align 1
  %4748 = icmp eq i32 %4734, 0
  %4749 = zext i1 %4748 to i8
  store i8 %4749, i8* %30, align 1
  %4750 = lshr i32 %4734, 31
  %4751 = trunc i32 %4750 to i8
  store i8 %4751, i8* %33, align 1
  %4752 = lshr i32 %4728, 31
  %4753 = lshr i32 %4733, 31
  %4754 = xor i32 %4753, %4752
  %4755 = xor i32 %4750, %4752
  %4756 = add nuw nsw i32 %4755, %4754
  %4757 = icmp eq i32 %4756, 2
  %4758 = zext i1 %4757 to i8
  store i8 %4758, i8* %39, align 1
  %4759 = sext i32 %4734 to i64
  store i64 %4759, i64* %RDX.i2064, align 8
  %4760 = shl nsw i64 %4759, 2
  %4761 = add i64 %4760, %4700
  %4762 = add i64 %4689, 35
  store i64 %4762, i64* %3, align 8
  %4763 = inttoptr i64 %4761 to i32*
  %4764 = load i32, i32* %4763, align 4
  %4765 = zext i32 %4764 to i64
  store i64 %4765, i64* %RSI.i2060, align 8
  %4766 = load i64, i64* %RBP.i, align 8
  %4767 = add i64 %4766, -8
  %4768 = add i64 %4689, 39
  store i64 %4768, i64* %3, align 8
  %4769 = inttoptr i64 %4767 to i32*
  %4770 = load i32, i32* %4769, align 4
  %4771 = sext i32 %4770 to i64
  store i64 %4771, i64* %RCX.i2066, align 8
  %4772 = shl nsw i64 %4771, 2
  %4773 = add i64 %4766, -1488
  %4774 = add i64 %4773, %4772
  %4775 = add i64 %4689, 46
  store i64 %4775, i64* %3, align 8
  %4776 = inttoptr i64 %4774 to i32*
  %4777 = load i32, i32* %4776, align 4
  %4778 = add i32 %4777, %4764
  %4779 = zext i32 %4778 to i64
  store i64 %4779, i64* %RSI.i2060, align 8
  %4780 = icmp ult i32 %4778, %4764
  %4781 = icmp ult i32 %4778, %4777
  %4782 = or i1 %4780, %4781
  %4783 = zext i1 %4782 to i8
  store i8 %4783, i8* %14, align 1
  %4784 = and i32 %4778, 255
  %4785 = tail call i32 @llvm.ctpop.i32(i32 %4784)
  %4786 = trunc i32 %4785 to i8
  %4787 = and i8 %4786, 1
  %4788 = xor i8 %4787, 1
  store i8 %4788, i8* %21, align 1
  %4789 = xor i32 %4777, %4764
  %4790 = xor i32 %4789, %4778
  %4791 = lshr i32 %4790, 4
  %4792 = trunc i32 %4791 to i8
  %4793 = and i8 %4792, 1
  store i8 %4793, i8* %27, align 1
  %4794 = icmp eq i32 %4778, 0
  %4795 = zext i1 %4794 to i8
  store i8 %4795, i8* %30, align 1
  %4796 = lshr i32 %4778, 31
  %4797 = trunc i32 %4796 to i8
  store i8 %4797, i8* %33, align 1
  %4798 = lshr i32 %4764, 31
  %4799 = lshr i32 %4777, 31
  %4800 = xor i32 %4796, %4798
  %4801 = xor i32 %4796, %4799
  %4802 = add nuw nsw i32 %4800, %4801
  %4803 = icmp eq i32 %4802, 2
  %4804 = zext i1 %4803 to i8
  store i8 %4804, i8* %39, align 1
  %4805 = add i64 %4766, -2720
  %4806 = load i32, i32* %EAX.i2012, align 4
  %4807 = add i64 %4689, 52
  store i64 %4807, i64* %3, align 8
  %4808 = inttoptr i64 %4805 to i32*
  store i32 %4806, i32* %4808, align 4
  %4809 = load i32, i32* %ESI.i2054, align 4
  %4810 = zext i32 %4809 to i64
  %4811 = load i64, i64* %3, align 8
  store i64 %4810, i64* %RAX.i1508, align 8
  %4812 = sext i32 %4809 to i64
  %4813 = lshr i64 %4812, 32
  store i64 %4813, i64* %57, align 8
  %4814 = load i64, i64* %RBP.i, align 8
  %4815 = add i64 %4814, -2720
  %4816 = add i64 %4811, 9
  store i64 %4816, i64* %3, align 8
  %4817 = inttoptr i64 %4815 to i32*
  %4818 = load i32, i32* %4817, align 4
  %4819 = zext i32 %4818 to i64
  store i64 %4819, i64* %RSI.i2060, align 8
  %4820 = add i64 %4811, 11
  store i64 %4820, i64* %3, align 8
  %4821 = sext i32 %4818 to i64
  %4822 = shl nuw i64 %4813, 32
  %4823 = or i64 %4822, %4810
  %4824 = sdiv i64 %4823, %4821
  %4825 = shl i64 %4824, 32
  %4826 = ashr exact i64 %4825, 32
  %4827 = icmp eq i64 %4824, %4826
  br i1 %4827, label %4830, label %4828

; <label>:4828:                                   ; preds = %block_401396
  %4829 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %4820, %struct.Memory* %MEMORY.36)
  %.pre52 = load i32, i32* %EDX.i2048, align 4
  %.pre53 = load i64, i64* %3, align 8
  %.pre54 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__esi.exit545

; <label>:4830:                                   ; preds = %block_401396
  %4831 = srem i64 %4823, %4821
  %4832 = and i64 %4824, 4294967295
  store i64 %4832, i64* %58, align 8
  %4833 = and i64 %4831, 4294967295
  store i64 %4833, i64* %57, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %4834 = trunc i64 %4831 to i32
  br label %routine_idivl__esi.exit545

routine_idivl__esi.exit545:                       ; preds = %4830, %4828
  %4835 = phi i64 [ %.pre54, %4828 ], [ %4814, %4830 ]
  %4836 = phi i64 [ %.pre53, %4828 ], [ %4820, %4830 ]
  %4837 = phi i32 [ %.pre52, %4828 ], [ %4834, %4830 ]
  %4838 = phi %struct.Memory* [ %4829, %4828 ], [ %MEMORY.36, %4830 ]
  %4839 = sext i32 %4837 to i64
  store i64 %4839, i64* %RCX.i2066, align 8
  %4840 = shl nsw i64 %4839, 2
  %4841 = add nsw i64 %4840, 6305920
  %4842 = add i64 %4836, 10
  store i64 %4842, i64* %3, align 8
  %4843 = inttoptr i64 %4841 to i32*
  %4844 = load i32, i32* %4843, align 4
  %4845 = zext i32 %4844 to i64
  store i64 %4845, i64* %RDX.i2064, align 8
  %4846 = add i64 %4835, -4
  %4847 = add i64 %4836, 14
  store i64 %4847, i64* %3, align 8
  %4848 = inttoptr i64 %4846 to i32*
  %4849 = load i32, i32* %4848, align 4
  %4850 = sext i32 %4849 to i64
  store i64 %4850, i64* %RCX.i2066, align 8
  %4851 = shl nsw i64 %4850, 2
  %4852 = add i64 %4835, -1616
  %4853 = add i64 %4852, %4851
  %4854 = add i64 %4836, 21
  store i64 %4854, i64* %3, align 8
  %4855 = inttoptr i64 %4853 to i32*
  %4856 = load i32, i32* %4855, align 4
  %4857 = xor i32 %4856, %4844
  %4858 = zext i32 %4857 to i64
  store i64 %4858, i64* %RDX.i2064, align 8
  store i8 0, i8* %14, align 1
  %4859 = and i32 %4857, 255
  %4860 = tail call i32 @llvm.ctpop.i32(i32 %4859)
  %4861 = trunc i32 %4860 to i8
  %4862 = and i8 %4861, 1
  %4863 = xor i8 %4862, 1
  store i8 %4863, i8* %21, align 1
  %4864 = icmp eq i32 %4857, 0
  %4865 = zext i1 %4864 to i8
  store i8 %4865, i8* %30, align 1
  %4866 = lshr i32 %4857, 31
  %4867 = trunc i32 %4866 to i8
  store i8 %4867, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %4868 = add i64 %4836, 28
  store i64 %4868, i64* %3, align 8
  store i32 %4857, i32* %4855, align 4
  %.pre55 = load i64, i64* %3, align 8
  br label %block_.L_4013f1

block_.L_4013f1:                                  ; preds = %routine_idivl__esi.exit545, %block_401371, %block_40135f
  %4869 = phi i64 [ %4595, %block_40135f ], [ %4689, %block_401371 ], [ %.pre55, %routine_idivl__esi.exit545 ]
  %MEMORY.37 = phi %struct.Memory* [ %MEMORY.36, %block_40135f ], [ %MEMORY.36, %block_401371 ], [ %4838, %routine_idivl__esi.exit545 ]
  %4870 = load i64, i64* %RBP.i, align 8
  %4871 = add i64 %4870, -8
  %4872 = add i64 %4869, 8
  store i64 %4872, i64* %3, align 8
  %4873 = inttoptr i64 %4871 to i32*
  %4874 = load i32, i32* %4873, align 4
  %4875 = add i32 %4874, 1
  %4876 = zext i32 %4875 to i64
  store i64 %4876, i64* %RAX.i1508, align 8
  %4877 = icmp eq i32 %4874, -1
  %4878 = icmp eq i32 %4875, 0
  %4879 = or i1 %4877, %4878
  %4880 = zext i1 %4879 to i8
  store i8 %4880, i8* %14, align 1
  %4881 = and i32 %4875, 255
  %4882 = tail call i32 @llvm.ctpop.i32(i32 %4881)
  %4883 = trunc i32 %4882 to i8
  %4884 = and i8 %4883, 1
  %4885 = xor i8 %4884, 1
  store i8 %4885, i8* %21, align 1
  %4886 = xor i32 %4874, %4875
  %4887 = lshr i32 %4886, 4
  %4888 = trunc i32 %4887 to i8
  %4889 = and i8 %4888, 1
  store i8 %4889, i8* %27, align 1
  %4890 = zext i1 %4878 to i8
  store i8 %4890, i8* %30, align 1
  %4891 = lshr i32 %4875, 31
  %4892 = trunc i32 %4891 to i8
  store i8 %4892, i8* %33, align 1
  %4893 = lshr i32 %4874, 31
  %4894 = xor i32 %4891, %4893
  %4895 = add nuw nsw i32 %4894, %4891
  %4896 = icmp eq i32 %4895, 2
  %4897 = zext i1 %4896 to i8
  store i8 %4897, i8* %39, align 1
  %4898 = add i64 %4869, 14
  store i64 %4898, i64* %3, align 8
  store i32 %4875, i32* %4873, align 4
  %4899 = load i64, i64* %3, align 8
  %4900 = add i64 %4899, -172
  store i64 %4900, i64* %3, align 8
  br label %block_.L_401353

block_.L_401404:                                  ; preds = %block_.L_401353
  %4901 = load i32, i32* %4534, align 4
  %4902 = sext i32 %4901 to i64
  store i64 %4902, i64* %RAX.i1508, align 8
  %4903 = shl nsw i64 %4902, 2
  %4904 = add i64 %4526, -1616
  %4905 = add i64 %4904, %4903
  %4906 = add i64 %4562, 12
  store i64 %4906, i64* %3, align 8
  %4907 = inttoptr i64 %4905 to i32*
  %4908 = load i32, i32* %4907, align 4
  %4909 = sext i32 %4908 to i64
  store i64 %4909, i64* %RAX.i1508, align 8
  %4910 = shl nsw i64 %4909, 2
  %4911 = add nsw i64 %4910, 6304896
  %4912 = add i64 %4562, 19
  store i64 %4912, i64* %3, align 8
  %4913 = inttoptr i64 %4911 to i32*
  %4914 = load i32, i32* %4913, align 4
  %4915 = zext i32 %4914 to i64
  store i64 %4915, i64* %RCX.i2066, align 8
  %4916 = add i64 %4562, 23
  store i64 %4916, i64* %3, align 8
  %4917 = load i32, i32* %4534, align 4
  %4918 = sext i32 %4917 to i64
  store i64 %4918, i64* %RAX.i1508, align 8
  %4919 = shl nsw i64 %4918, 2
  %4920 = add i64 %4904, %4919
  %4921 = add i64 %4562, 30
  store i64 %4921, i64* %3, align 8
  %4922 = inttoptr i64 %4920 to i32*
  store i32 %4914, i32* %4922, align 4
  %4923 = load i64, i64* %RBP.i, align 8
  %4924 = add i64 %4923, -4
  %4925 = load i64, i64* %3, align 8
  %4926 = add i64 %4925, 3
  store i64 %4926, i64* %3, align 8
  %4927 = inttoptr i64 %4924 to i32*
  %4928 = load i32, i32* %4927, align 4
  %4929 = add i32 %4928, 1
  %4930 = zext i32 %4929 to i64
  store i64 %4930, i64* %RAX.i1508, align 8
  %4931 = icmp eq i32 %4928, -1
  %4932 = icmp eq i32 %4929, 0
  %4933 = or i1 %4931, %4932
  %4934 = zext i1 %4933 to i8
  store i8 %4934, i8* %14, align 1
  %4935 = and i32 %4929, 255
  %4936 = tail call i32 @llvm.ctpop.i32(i32 %4935)
  %4937 = trunc i32 %4936 to i8
  %4938 = and i8 %4937, 1
  %4939 = xor i8 %4938, 1
  store i8 %4939, i8* %21, align 1
  %4940 = xor i32 %4928, %4929
  %4941 = lshr i32 %4940, 4
  %4942 = trunc i32 %4941 to i8
  %4943 = and i8 %4942, 1
  store i8 %4943, i8* %27, align 1
  %4944 = zext i1 %4932 to i8
  store i8 %4944, i8* %30, align 1
  %4945 = lshr i32 %4929, 31
  %4946 = trunc i32 %4945 to i8
  store i8 %4946, i8* %33, align 1
  %4947 = lshr i32 %4928, 31
  %4948 = xor i32 %4945, %4947
  %4949 = add nuw nsw i32 %4948, %4945
  %4950 = icmp eq i32 %4949, 2
  %4951 = zext i1 %4950 to i8
  store i8 %4951, i8* %39, align 1
  %4952 = add i64 %4925, 9
  store i64 %4952, i64* %3, align 8
  store i32 %4929, i32* %4927, align 4
  %4953 = load i64, i64* %3, align 8
  %4954 = add i64 %4953, -570
  store i64 %4954, i64* %3, align 8
  br label %block_.L_4011f1

block_.L_401430:                                  ; preds = %block_.L_4011f1
  %4955 = add i64 %4023, 7
  store i64 %4955, i64* %3, align 8
  store i32 0, i32* %3983, align 4
  %.pre56 = load i64, i64* %3, align 8
  br label %block_.L_401437

block_.L_401437:                                  ; preds = %block_.L_401497, %block_.L_401430
  %4956 = phi i64 [ %5088, %block_.L_401497 ], [ %.pre56, %block_.L_401430 ]
  %4957 = load i64, i64* %RBP.i, align 8
  %4958 = add i64 %4957, -4
  %4959 = add i64 %4956, 7
  store i64 %4959, i64* %3, align 8
  %4960 = inttoptr i64 %4958 to i32*
  %4961 = load i32, i32* %4960, align 4
  %4962 = add i32 %4961, -255
  %4963 = icmp ult i32 %4961, 255
  %4964 = zext i1 %4963 to i8
  store i8 %4964, i8* %14, align 1
  %4965 = and i32 %4962, 255
  %4966 = tail call i32 @llvm.ctpop.i32(i32 %4965)
  %4967 = trunc i32 %4966 to i8
  %4968 = and i8 %4967, 1
  %4969 = xor i8 %4968, 1
  store i8 %4969, i8* %21, align 1
  %4970 = xor i32 %4961, 16
  %4971 = xor i32 %4970, %4962
  %4972 = lshr i32 %4971, 4
  %4973 = trunc i32 %4972 to i8
  %4974 = and i8 %4973, 1
  store i8 %4974, i8* %27, align 1
  %4975 = icmp eq i32 %4962, 0
  %4976 = zext i1 %4975 to i8
  store i8 %4976, i8* %30, align 1
  %4977 = lshr i32 %4962, 31
  %4978 = trunc i32 %4977 to i8
  store i8 %4978, i8* %33, align 1
  %4979 = lshr i32 %4961, 31
  %4980 = xor i32 %4977, %4979
  %4981 = add nuw nsw i32 %4980, %4979
  %4982 = icmp eq i32 %4981, 2
  %4983 = zext i1 %4982 to i8
  store i8 %4983, i8* %39, align 1
  %4984 = icmp ne i8 %4978, 0
  %4985 = xor i1 %4984, %4982
  %.v135 = select i1 %4985, i64 13, i64 115
  %4986 = add i64 %4956, %.v135
  store i64 %4986, i64* %3, align 8
  br i1 %4985, label %block_401444, label %block_.L_4014aa

block_401444:                                     ; preds = %block_.L_401437
  %4987 = add i64 %4986, 4
  store i64 %4987, i64* %3, align 8
  %4988 = load i32, i32* %4960, align 4
  %4989 = sext i32 %4988 to i64
  store i64 %4989, i64* %RAX.i1508, align 8
  %4990 = shl nsw i64 %4989, 2
  %4991 = add i64 %4957, -2640
  %4992 = add i64 %4991, %4990
  %4993 = add i64 %4986, 15
  store i64 %4993, i64* %3, align 8
  %4994 = inttoptr i64 %4992 to i32*
  store i32 0, i32* %4994, align 4
  %4995 = load i64, i64* %RBP.i, align 8
  %4996 = add i64 %4995, -4
  %4997 = load i64, i64* %3, align 8
  %4998 = add i64 %4997, 4
  store i64 %4998, i64* %3, align 8
  %4999 = inttoptr i64 %4996 to i32*
  %5000 = load i32, i32* %4999, align 4
  %5001 = sext i32 %5000 to i64
  store i64 %5001, i64* %RAX.i1508, align 8
  %5002 = shl nsw i64 %5001, 2
  %5003 = add nsw i64 %5002, 6303872
  %5004 = add i64 %4997, 12
  store i64 %5004, i64* %3, align 8
  %5005 = inttoptr i64 %5003 to i32*
  %5006 = load i32, i32* %5005, align 4
  %5007 = add i32 %5006, 1
  %5008 = icmp ne i32 %5006, -1
  %5009 = zext i1 %5008 to i8
  store i8 %5009, i8* %14, align 1
  %5010 = and i32 %5007, 255
  %5011 = tail call i32 @llvm.ctpop.i32(i32 %5010)
  %5012 = trunc i32 %5011 to i8
  %5013 = and i8 %5012, 1
  %5014 = xor i8 %5013, 1
  store i8 %5014, i8* %21, align 1
  %5015 = xor i32 %5006, 16
  %5016 = xor i32 %5007, %5015
  %5017 = lshr i32 %5016, 4
  %5018 = trunc i32 %5017 to i8
  %5019 = and i8 %5018, 1
  store i8 %5019, i8* %27, align 1
  %5020 = icmp eq i32 %5007, 0
  %5021 = zext i1 %5020 to i8
  store i8 %5021, i8* %30, align 1
  %5022 = lshr i32 %5007, 31
  %5023 = trunc i32 %5022 to i8
  store i8 %5023, i8* %33, align 1
  %5024 = lshr i32 %5006, 31
  %5025 = xor i32 %5024, 1
  %5026 = xor i32 %5022, %5024
  %5027 = add nuw nsw i32 %5026, %5025
  %5028 = icmp eq i32 %5027, 2
  %5029 = zext i1 %5028 to i8
  store i8 %5029, i8* %39, align 1
  %.v136 = select i1 %5020, i64 53, i64 18
  %5030 = add i64 %4997, %.v136
  %5031 = add i64 %5030, 4
  store i64 %5031, i64* %3, align 8
  %5032 = load i32, i32* %4999, align 4
  %5033 = sext i32 %5032 to i64
  store i64 %5033, i64* %RAX.i1508, align 8
  %5034 = shl nsw i64 %5033, 2
  %5035 = add nsw i64 %5034, 6303872
  br i1 %5020, label %block_.L_401488, label %block_401465

block_401465:                                     ; preds = %block_401444
  %5036 = add i64 %5030, 12
  store i64 %5036, i64* %3, align 8
  %5037 = inttoptr i64 %5035 to i32*
  %5038 = load i32, i32* %5037, align 4
  %5039 = sext i32 %5038 to i64
  store i64 %5039, i64* %RAX.i1508, align 8
  %5040 = shl nsw i64 %5039, 2
  %5041 = add nsw i64 %5040, 6305920
  %5042 = add i64 %5030, 19
  store i64 %5042, i64* %3, align 8
  %5043 = inttoptr i64 %5041 to i32*
  %5044 = load i32, i32* %5043, align 4
  %5045 = zext i32 %5044 to i64
  store i64 %5045, i64* %RCX.i2066, align 8
  %5046 = add i64 %5030, 23
  store i64 %5046, i64* %3, align 8
  %5047 = load i32, i32* %4999, align 4
  %5048 = sext i32 %5047 to i64
  store i64 %5048, i64* %RAX.i1508, align 8
  %5049 = shl nsw i64 %5048, 2
  %5050 = add nsw i64 %5049, 6303872
  %5051 = add i64 %5030, 30
  store i64 %5051, i64* %3, align 8
  %5052 = inttoptr i64 %5050 to i32*
  store i32 %5044, i32* %5052, align 4
  %5053 = load i64, i64* %3, align 8
  %5054 = add i64 %5053, 20
  store i64 %5054, i64* %3, align 8
  br label %block_.L_401497

block_.L_401488:                                  ; preds = %block_401444
  %5055 = add i64 %5030, 15
  store i64 %5055, i64* %3, align 8
  %5056 = inttoptr i64 %5035 to i32*
  store i32 0, i32* %5056, align 4
  %.pre57 = load i64, i64* %3, align 8
  br label %block_.L_401497

block_.L_401497:                                  ; preds = %block_.L_401488, %block_401465
  %5057 = phi i64 [ %.pre57, %block_.L_401488 ], [ %5054, %block_401465 ]
  %5058 = load i64, i64* %RBP.i, align 8
  %5059 = add i64 %5058, -4
  %5060 = add i64 %5057, 8
  store i64 %5060, i64* %3, align 8
  %5061 = inttoptr i64 %5059 to i32*
  %5062 = load i32, i32* %5061, align 4
  %5063 = add i32 %5062, 1
  %5064 = zext i32 %5063 to i64
  store i64 %5064, i64* %RAX.i1508, align 8
  %5065 = icmp eq i32 %5062, -1
  %5066 = icmp eq i32 %5063, 0
  %5067 = or i1 %5065, %5066
  %5068 = zext i1 %5067 to i8
  store i8 %5068, i8* %14, align 1
  %5069 = and i32 %5063, 255
  %5070 = tail call i32 @llvm.ctpop.i32(i32 %5069)
  %5071 = trunc i32 %5070 to i8
  %5072 = and i8 %5071, 1
  %5073 = xor i8 %5072, 1
  store i8 %5073, i8* %21, align 1
  %5074 = xor i32 %5062, %5063
  %5075 = lshr i32 %5074, 4
  %5076 = trunc i32 %5075 to i8
  %5077 = and i8 %5076, 1
  store i8 %5077, i8* %27, align 1
  %5078 = zext i1 %5066 to i8
  store i8 %5078, i8* %30, align 1
  %5079 = lshr i32 %5063, 31
  %5080 = trunc i32 %5079 to i8
  store i8 %5080, i8* %33, align 1
  %5081 = lshr i32 %5062, 31
  %5082 = xor i32 %5079, %5081
  %5083 = add nuw nsw i32 %5082, %5079
  %5084 = icmp eq i32 %5083, 2
  %5085 = zext i1 %5084 to i8
  store i8 %5085, i8* %39, align 1
  %5086 = add i64 %5057, 14
  store i64 %5086, i64* %3, align 8
  store i32 %5063, i32* %5061, align 4
  %5087 = load i64, i64* %3, align 8
  %5088 = add i64 %5087, -110
  store i64 %5088, i64* %3, align 8
  br label %block_.L_401437

block_.L_4014aa:                                  ; preds = %block_.L_401437
  %5089 = add i64 %4986, 7
  store i64 %5089, i64* %3, align 8
  store i32 0, i32* %4960, align 4
  %.pre58 = load i64, i64* %3, align 8
  br label %block_.L_4014b1

block_.L_4014b1:                                  ; preds = %block_.L_4016cb, %block_.L_4014aa
  %5090 = phi i64 [ %.pre58, %block_.L_4014aa ], [ %5921, %block_.L_4016cb ]
  %MEMORY.40 = phi %struct.Memory* [ %MEMORY.29, %block_.L_4014aa ], [ %MEMORY.45, %block_.L_4016cb ]
  %5091 = load i64, i64* %RBP.i, align 8
  %5092 = add i64 %5091, -4
  %5093 = add i64 %5090, 3
  store i64 %5093, i64* %3, align 8
  %5094 = inttoptr i64 %5092 to i32*
  %5095 = load i32, i32* %5094, align 4
  %5096 = zext i32 %5095 to i64
  store i64 %5096, i64* %RAX.i1508, align 8
  %5097 = add i64 %5091, -12
  %5098 = add i64 %5090, 7
  store i64 %5098, i64* %3, align 8
  %5099 = inttoptr i64 %5097 to i32*
  %5100 = load i32, i32* %5099, align 4
  %5101 = sext i32 %5100 to i64
  store i64 %5101, i64* %RCX.i2066, align 8
  %5102 = shl nsw i64 %5101, 2
  %5103 = add i64 %5091, -1328
  %5104 = add i64 %5103, %5102
  %5105 = add i64 %5090, 14
  store i64 %5105, i64* %3, align 8
  %5106 = inttoptr i64 %5104 to i32*
  %5107 = load i32, i32* %5106, align 4
  %5108 = sub i32 %5095, %5107
  %5109 = icmp ult i32 %5095, %5107
  %5110 = zext i1 %5109 to i8
  store i8 %5110, i8* %14, align 1
  %5111 = and i32 %5108, 255
  %5112 = tail call i32 @llvm.ctpop.i32(i32 %5111)
  %5113 = trunc i32 %5112 to i8
  %5114 = and i8 %5113, 1
  %5115 = xor i8 %5114, 1
  store i8 %5115, i8* %21, align 1
  %5116 = xor i32 %5107, %5095
  %5117 = xor i32 %5116, %5108
  %5118 = lshr i32 %5117, 4
  %5119 = trunc i32 %5118 to i8
  %5120 = and i8 %5119, 1
  store i8 %5120, i8* %27, align 1
  %5121 = icmp eq i32 %5108, 0
  %5122 = zext i1 %5121 to i8
  store i8 %5122, i8* %30, align 1
  %5123 = lshr i32 %5108, 31
  %5124 = trunc i32 %5123 to i8
  store i8 %5124, i8* %33, align 1
  %5125 = lshr i32 %5095, 31
  %5126 = lshr i32 %5107, 31
  %5127 = xor i32 %5126, %5125
  %5128 = xor i32 %5123, %5125
  %5129 = add nuw nsw i32 %5128, %5127
  %5130 = icmp eq i32 %5129, 2
  %5131 = zext i1 %5130 to i8
  store i8 %5131, i8* %39, align 1
  %5132 = icmp ne i8 %5124, 0
  %5133 = xor i1 %5132, %5130
  %.v137 = select i1 %5133, i64 20, i64 557
  %5134 = add i64 %5090, %.v137
  store i64 %5134, i64* %3, align 8
  br i1 %5133, label %block_4014c5, label %block_.L_4016de

block_4014c5:                                     ; preds = %block_.L_4014b1
  %5135 = add i64 %5134, 4
  store i64 %5135, i64* %3, align 8
  %5136 = load i32, i32* %5094, align 4
  %5137 = sext i32 %5136 to i64
  store i64 %5137, i64* %RAX.i1508, align 8
  %5138 = shl nsw i64 %5137, 2
  %5139 = add i64 %5091, -1568
  %5140 = add i64 %5139, %5138
  %5141 = add i64 %5134, 12
  store i64 %5141, i64* %3, align 8
  %5142 = inttoptr i64 %5140 to i32*
  %5143 = load i32, i32* %5142, align 4
  %5144 = sext i32 %5143 to i64
  store i64 %5144, i64* %RAX.i1508, align 8
  %5145 = shl nsw i64 %5144, 2
  %5146 = add i64 %5091, -2640
  %5147 = add i64 %5146, %5145
  %5148 = add i64 %5134, 23
  store i64 %5148, i64* %3, align 8
  %5149 = inttoptr i64 %5147 to i32*
  store i32 1, i32* %5149, align 4
  %5150 = load i64, i64* %RBP.i, align 8
  %5151 = add i64 %5150, -8
  %5152 = load i64, i64* %3, align 8
  %5153 = add i64 %5152, 7
  store i64 %5153, i64* %3, align 8
  %5154 = inttoptr i64 %5151 to i32*
  store i32 1, i32* %5154, align 4
  %.pre59 = load i64, i64* %3, align 8
  br label %block_.L_4014e3

block_.L_4014e3:                                  ; preds = %block_.L_40155f, %block_4014c5
  %5155 = phi i64 [ %.pre59, %block_4014c5 ], [ %5390, %block_.L_40155f ]
  %MEMORY.41 = phi %struct.Memory* [ %MEMORY.40, %block_4014c5 ], [ %MEMORY.42, %block_.L_40155f ]
  %5156 = load i64, i64* %RBP.i, align 8
  %5157 = add i64 %5156, -8
  %5158 = add i64 %5155, 3
  store i64 %5158, i64* %3, align 8
  %5159 = inttoptr i64 %5157 to i32*
  %5160 = load i32, i32* %5159, align 4
  %5161 = zext i32 %5160 to i64
  store i64 %5161, i64* %RAX.i1508, align 8
  %5162 = add i64 %5156, -12
  %5163 = add i64 %5155, 7
  store i64 %5163, i64* %3, align 8
  %5164 = inttoptr i64 %5162 to i32*
  %5165 = load i32, i32* %5164, align 4
  %5166 = sext i32 %5165 to i64
  store i64 %5166, i64* %RCX.i2066, align 8
  %5167 = shl nsw i64 %5166, 2
  %5168 = add i64 %5156, -1328
  %5169 = add i64 %5168, %5167
  %5170 = add i64 %5155, 14
  store i64 %5170, i64* %3, align 8
  %5171 = inttoptr i64 %5169 to i32*
  %5172 = load i32, i32* %5171, align 4
  %5173 = sub i32 %5160, %5172
  %5174 = icmp ult i32 %5160, %5172
  %5175 = zext i1 %5174 to i8
  store i8 %5175, i8* %14, align 1
  %5176 = and i32 %5173, 255
  %5177 = tail call i32 @llvm.ctpop.i32(i32 %5176)
  %5178 = trunc i32 %5177 to i8
  %5179 = and i8 %5178, 1
  %5180 = xor i8 %5179, 1
  store i8 %5180, i8* %21, align 1
  %5181 = xor i32 %5172, %5160
  %5182 = xor i32 %5181, %5173
  %5183 = lshr i32 %5182, 4
  %5184 = trunc i32 %5183 to i8
  %5185 = and i8 %5184, 1
  store i8 %5185, i8* %27, align 1
  %5186 = icmp eq i32 %5173, 0
  %5187 = zext i1 %5186 to i8
  store i8 %5187, i8* %30, align 1
  %5188 = lshr i32 %5173, 31
  %5189 = trunc i32 %5188 to i8
  store i8 %5189, i8* %33, align 1
  %5190 = lshr i32 %5160, 31
  %5191 = lshr i32 %5172, 31
  %5192 = xor i32 %5191, %5190
  %5193 = xor i32 %5188, %5190
  %5194 = add nuw nsw i32 %5193, %5192
  %5195 = icmp eq i32 %5194, 2
  %5196 = zext i1 %5195 to i8
  store i8 %5196, i8* %39, align 1
  %5197 = icmp ne i8 %5189, 0
  %5198 = xor i1 %5197, %5195
  %.demorgan138 = or i1 %5186, %5198
  %.v139 = select i1 %.demorgan138, i64 20, i64 143
  %5199 = add i64 %5155, %.v139
  store i64 %5199, i64* %3, align 8
  br i1 %.demorgan138, label %block_4014f7, label %block_.L_401572

block_4014f7:                                     ; preds = %block_.L_4014e3
  %5200 = add i64 %5199, 4
  store i64 %5200, i64* %3, align 8
  %5201 = load i32, i32* %5159, align 4
  %5202 = sext i32 %5201 to i64
  store i64 %5202, i64* %RAX.i1508, align 8
  %5203 = shl nsw i64 %5202, 2
  %5204 = add i64 %5156, -1616
  %5205 = add i64 %5204, %5203
  %5206 = add i64 %5199, 12
  store i64 %5206, i64* %3, align 8
  %5207 = inttoptr i64 %5205 to i32*
  %5208 = load i32, i32* %5207, align 4
  %5209 = add i32 %5208, 1
  %5210 = icmp ne i32 %5208, -1
  %5211 = zext i1 %5210 to i8
  store i8 %5211, i8* %14, align 1
  %5212 = and i32 %5209, 255
  %5213 = tail call i32 @llvm.ctpop.i32(i32 %5212)
  %5214 = trunc i32 %5213 to i8
  %5215 = and i8 %5214, 1
  %5216 = xor i8 %5215, 1
  store i8 %5216, i8* %21, align 1
  %5217 = xor i32 %5208, 16
  %5218 = xor i32 %5209, %5217
  %5219 = lshr i32 %5218, 4
  %5220 = trunc i32 %5219 to i8
  %5221 = and i8 %5220, 1
  store i8 %5221, i8* %27, align 1
  %5222 = icmp eq i32 %5209, 0
  %5223 = zext i1 %5222 to i8
  store i8 %5223, i8* %30, align 1
  %5224 = lshr i32 %5209, 31
  %5225 = trunc i32 %5224 to i8
  store i8 %5225, i8* %33, align 1
  %5226 = lshr i32 %5208, 31
  %5227 = xor i32 %5226, 1
  %5228 = xor i32 %5224, %5226
  %5229 = add nuw nsw i32 %5228, %5227
  %5230 = icmp eq i32 %5229, 2
  %5231 = zext i1 %5230 to i8
  store i8 %5231, i8* %39, align 1
  %.v140 = select i1 %5222, i64 104, i64 18
  %5232 = add i64 %5199, %.v140
  store i64 %5232, i64* %3, align 8
  br i1 %5222, label %block_.L_40155f, label %block_401509

block_401509:                                     ; preds = %block_4014f7
  store i64 255, i64* %RAX.i1508, align 8
  %5233 = add i64 %5232, 9
  store i64 %5233, i64* %3, align 8
  %5234 = load i32, i32* %5159, align 4
  %5235 = sext i32 %5234 to i64
  store i64 %5235, i64* %RCX.i2066, align 8
  %5236 = shl nsw i64 %5235, 2
  %5237 = add i64 %5204, %5236
  %5238 = add i64 %5232, 16
  store i64 %5238, i64* %3, align 8
  %5239 = inttoptr i64 %5237 to i32*
  %5240 = load i32, i32* %5239, align 4
  %5241 = zext i32 %5240 to i64
  store i64 %5241, i64* %RDX.i2064, align 8
  %5242 = add i64 %5232, 19
  store i64 %5242, i64* %3, align 8
  %5243 = load i32, i32* %5159, align 4
  %5244 = zext i32 %5243 to i64
  store i64 %5244, i64* %RSI.i2060, align 8
  %5245 = add i64 %5156, -4
  %5246 = add i64 %5232, 23
  store i64 %5246, i64* %3, align 8
  %5247 = inttoptr i64 %5245 to i32*
  %5248 = load i32, i32* %5247, align 4
  %5249 = sext i32 %5248 to i64
  store i64 %5249, i64* %RCX.i2066, align 8
  %5250 = shl nsw i64 %5249, 2
  %5251 = add i64 %5156, -1536
  %5252 = add i64 %5251, %5250
  %5253 = add i64 %5232, 31
  store i64 %5253, i64* %3, align 8
  %5254 = inttoptr i64 %5252 to i32*
  %5255 = load i32, i32* %5254, align 4
  %5256 = sext i32 %5243 to i64
  %5257 = sext i32 %5255 to i64
  %5258 = mul nsw i64 %5257, %5256
  %5259 = and i64 %5258, 4294967295
  store i64 %5259, i64* %RSI.i2060, align 8
  %5260 = trunc i64 %5258 to i32
  %5261 = add i32 %5260, %5240
  %5262 = zext i32 %5261 to i64
  store i64 %5262, i64* %RDX.i2064, align 8
  %5263 = icmp ult i32 %5261, %5240
  %5264 = icmp ult i32 %5261, %5260
  %5265 = or i1 %5263, %5264
  %5266 = zext i1 %5265 to i8
  store i8 %5266, i8* %14, align 1
  %5267 = and i32 %5261, 255
  %5268 = tail call i32 @llvm.ctpop.i32(i32 %5267)
  %5269 = trunc i32 %5268 to i8
  %5270 = and i8 %5269, 1
  %5271 = xor i8 %5270, 1
  store i8 %5271, i8* %21, align 1
  %5272 = xor i64 %5258, %5241
  %5273 = trunc i64 %5272 to i32
  %5274 = xor i32 %5273, %5261
  %5275 = lshr i32 %5274, 4
  %5276 = trunc i32 %5275 to i8
  %5277 = and i8 %5276, 1
  store i8 %5277, i8* %27, align 1
  %5278 = icmp eq i32 %5261, 0
  %5279 = zext i1 %5278 to i8
  store i8 %5279, i8* %30, align 1
  %5280 = lshr i32 %5261, 31
  %5281 = trunc i32 %5280 to i8
  store i8 %5281, i8* %33, align 1
  %5282 = lshr i32 %5240, 31
  %5283 = lshr i32 %5260, 31
  %5284 = xor i32 %5280, %5282
  %5285 = xor i32 %5280, %5283
  %5286 = add nuw nsw i32 %5284, %5285
  %5287 = icmp eq i32 %5286, 2
  %5288 = zext i1 %5287 to i8
  store i8 %5288, i8* %39, align 1
  %5289 = add i64 %5156, -2724
  %5290 = add i64 %5232, 39
  store i64 %5290, i64* %3, align 8
  %5291 = inttoptr i64 %5289 to i32*
  store i32 255, i32* %5291, align 4
  %5292 = load i32, i32* %EDX.i2048, align 4
  %5293 = zext i32 %5292 to i64
  %5294 = load i64, i64* %3, align 8
  store i64 %5293, i64* %RAX.i1508, align 8
  %5295 = sext i32 %5292 to i64
  %5296 = lshr i64 %5295, 32
  store i64 %5296, i64* %57, align 8
  %5297 = load i64, i64* %RBP.i, align 8
  %5298 = add i64 %5297, -2724
  %5299 = add i64 %5294, 9
  store i64 %5299, i64* %3, align 8
  %5300 = inttoptr i64 %5298 to i32*
  %5301 = load i32, i32* %5300, align 4
  %5302 = zext i32 %5301 to i64
  store i64 %5302, i64* %RSI.i2060, align 8
  %5303 = add i64 %5294, 11
  store i64 %5303, i64* %3, align 8
  %5304 = sext i32 %5301 to i64
  %5305 = shl nuw i64 %5296, 32
  %5306 = or i64 %5305, %5293
  %5307 = sdiv i64 %5306, %5304
  %5308 = shl i64 %5307, 32
  %5309 = ashr exact i64 %5308, 32
  %5310 = icmp eq i64 %5307, %5309
  br i1 %5310, label %5313, label %5311

; <label>:5311:                                   ; preds = %block_401509
  %5312 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %5303, %struct.Memory* %MEMORY.41)
  %.pre60 = load i32, i32* %EDX.i2048, align 4
  %.pre61 = load i64, i64* %3, align 8
  %.pre62 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__esi.exit367

; <label>:5313:                                   ; preds = %block_401509
  %5314 = srem i64 %5306, %5304
  %5315 = and i64 %5307, 4294967295
  store i64 %5315, i64* %58, align 8
  %5316 = and i64 %5314, 4294967295
  store i64 %5316, i64* %57, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %5317 = trunc i64 %5314 to i32
  br label %routine_idivl__esi.exit367

routine_idivl__esi.exit367:                       ; preds = %5313, %5311
  %5318 = phi i64 [ %.pre62, %5311 ], [ %5297, %5313 ]
  %5319 = phi i64 [ %.pre61, %5311 ], [ %5303, %5313 ]
  %5320 = phi i32 [ %.pre60, %5311 ], [ %5317, %5313 ]
  %5321 = phi %struct.Memory* [ %5312, %5311 ], [ %MEMORY.41, %5313 ]
  %5322 = sext i32 %5320 to i64
  store i64 %5322, i64* %RCX.i2066, align 8
  %5323 = shl nsw i64 %5322, 2
  %5324 = add nsw i64 %5323, 6305920
  %5325 = add i64 %5319, 10
  store i64 %5325, i64* %3, align 8
  %5326 = inttoptr i64 %5324 to i32*
  %5327 = load i32, i32* %5326, align 4
  %5328 = zext i32 %5327 to i64
  store i64 %5328, i64* %RDX.i2064, align 8
  %5329 = add i64 %5318, -4
  %5330 = add i64 %5319, 14
  store i64 %5330, i64* %3, align 8
  %5331 = inttoptr i64 %5329 to i32*
  %5332 = load i32, i32* %5331, align 4
  %5333 = sext i32 %5332 to i64
  store i64 %5333, i64* %RCX.i2066, align 8
  %5334 = shl nsw i64 %5333, 2
  %5335 = add i64 %5318, -1568
  %5336 = add i64 %5335, %5334
  %5337 = add i64 %5319, 22
  store i64 %5337, i64* %3, align 8
  %5338 = inttoptr i64 %5336 to i32*
  %5339 = load i32, i32* %5338, align 4
  %5340 = sext i32 %5339 to i64
  store i64 %5340, i64* %RCX.i2066, align 8
  %5341 = shl nsw i64 %5340, 2
  %5342 = add i64 %5318, -2640
  %5343 = add i64 %5342, %5341
  %5344 = add i64 %5319, 29
  store i64 %5344, i64* %3, align 8
  %5345 = inttoptr i64 %5343 to i32*
  %5346 = load i32, i32* %5345, align 4
  %5347 = xor i32 %5346, %5327
  %5348 = zext i32 %5347 to i64
  store i64 %5348, i64* %RDX.i2064, align 8
  store i8 0, i8* %14, align 1
  %5349 = and i32 %5347, 255
  %5350 = tail call i32 @llvm.ctpop.i32(i32 %5349)
  %5351 = trunc i32 %5350 to i8
  %5352 = and i8 %5351, 1
  %5353 = xor i8 %5352, 1
  store i8 %5353, i8* %21, align 1
  %5354 = icmp eq i32 %5347, 0
  %5355 = zext i1 %5354 to i8
  store i8 %5355, i8* %30, align 1
  %5356 = lshr i32 %5347, 31
  %5357 = trunc i32 %5356 to i8
  store i8 %5357, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %5358 = add i64 %5319, 36
  store i64 %5358, i64* %3, align 8
  store i32 %5347, i32* %5345, align 4
  %.pre63 = load i64, i64* %3, align 8
  %.pre64 = load i64, i64* %RBP.i, align 8
  br label %block_.L_40155f

block_.L_40155f:                                  ; preds = %routine_idivl__esi.exit367, %block_4014f7
  %5359 = phi i64 [ %5156, %block_4014f7 ], [ %.pre64, %routine_idivl__esi.exit367 ]
  %5360 = phi i64 [ %5232, %block_4014f7 ], [ %.pre63, %routine_idivl__esi.exit367 ]
  %MEMORY.42 = phi %struct.Memory* [ %MEMORY.41, %block_4014f7 ], [ %5321, %routine_idivl__esi.exit367 ]
  %5361 = add i64 %5359, -8
  %5362 = add i64 %5360, 8
  store i64 %5362, i64* %3, align 8
  %5363 = inttoptr i64 %5361 to i32*
  %5364 = load i32, i32* %5363, align 4
  %5365 = add i32 %5364, 1
  %5366 = zext i32 %5365 to i64
  store i64 %5366, i64* %RAX.i1508, align 8
  %5367 = icmp eq i32 %5364, -1
  %5368 = icmp eq i32 %5365, 0
  %5369 = or i1 %5367, %5368
  %5370 = zext i1 %5369 to i8
  store i8 %5370, i8* %14, align 1
  %5371 = and i32 %5365, 255
  %5372 = tail call i32 @llvm.ctpop.i32(i32 %5371)
  %5373 = trunc i32 %5372 to i8
  %5374 = and i8 %5373, 1
  %5375 = xor i8 %5374, 1
  store i8 %5375, i8* %21, align 1
  %5376 = xor i32 %5364, %5365
  %5377 = lshr i32 %5376, 4
  %5378 = trunc i32 %5377 to i8
  %5379 = and i8 %5378, 1
  store i8 %5379, i8* %27, align 1
  %5380 = zext i1 %5368 to i8
  store i8 %5380, i8* %30, align 1
  %5381 = lshr i32 %5365, 31
  %5382 = trunc i32 %5381 to i8
  store i8 %5382, i8* %33, align 1
  %5383 = lshr i32 %5364, 31
  %5384 = xor i32 %5381, %5383
  %5385 = add nuw nsw i32 %5384, %5381
  %5386 = icmp eq i32 %5385, 2
  %5387 = zext i1 %5386 to i8
  store i8 %5387, i8* %39, align 1
  %5388 = add i64 %5360, 14
  store i64 %5388, i64* %3, align 8
  store i32 %5365, i32* %5363, align 4
  %5389 = load i64, i64* %3, align 8
  %5390 = add i64 %5389, -138
  store i64 %5390, i64* %3, align 8
  br label %block_.L_4014e3

block_.L_401572:                                  ; preds = %block_.L_4014e3
  %5391 = add i64 %5156, -4
  %5392 = add i64 %5199, 4
  store i64 %5392, i64* %3, align 8
  %5393 = inttoptr i64 %5391 to i32*
  %5394 = load i32, i32* %5393, align 4
  %5395 = sext i32 %5394 to i64
  store i64 %5395, i64* %RAX.i1508, align 8
  %5396 = shl nsw i64 %5395, 2
  %5397 = add i64 %5156, -1568
  %5398 = add i64 %5397, %5396
  %5399 = add i64 %5199, 12
  store i64 %5399, i64* %3, align 8
  %5400 = inttoptr i64 %5398 to i32*
  %5401 = load i32, i32* %5400, align 4
  %5402 = sext i32 %5401 to i64
  store i64 %5402, i64* %RAX.i1508, align 8
  %5403 = shl nsw i64 %5402, 2
  %5404 = add i64 %5156, -2640
  %5405 = add i64 %5404, %5403
  %5406 = add i64 %5199, 20
  store i64 %5406, i64* %3, align 8
  %5407 = inttoptr i64 %5405 to i32*
  %5408 = load i32, i32* %5407, align 4
  store i8 0, i8* %14, align 1
  %5409 = and i32 %5408, 255
  %5410 = tail call i32 @llvm.ctpop.i32(i32 %5409)
  %5411 = trunc i32 %5410 to i8
  %5412 = and i8 %5411, 1
  %5413 = xor i8 %5412, 1
  store i8 %5413, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %5414 = icmp eq i32 %5408, 0
  %5415 = zext i1 %5414 to i8
  store i8 %5415, i8* %30, align 1
  %5416 = lshr i32 %5408, 31
  %5417 = trunc i32 %5416 to i8
  store i8 %5417, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v141 = select i1 %5414, i64 345, i64 26
  %5418 = add i64 %5199, %.v141
  store i64 %5418, i64* %3, align 8
  br i1 %5414, label %block_.L_4016cb, label %block_40158c

block_40158c:                                     ; preds = %block_.L_401572
  %5419 = add i64 %5418, 4
  store i64 %5419, i64* %3, align 8
  %5420 = load i32, i32* %5393, align 4
  %5421 = sext i32 %5420 to i64
  store i64 %5421, i64* %RAX.i1508, align 8
  %5422 = shl nsw i64 %5421, 2
  %5423 = add i64 %5397, %5422
  %5424 = add i64 %5418, 12
  store i64 %5424, i64* %3, align 8
  %5425 = inttoptr i64 %5423 to i32*
  %5426 = load i32, i32* %5425, align 4
  %5427 = sext i32 %5426 to i64
  store i64 %5427, i64* %RAX.i1508, align 8
  %5428 = shl nsw i64 %5427, 2
  %5429 = add i64 %5404, %5428
  %5430 = add i64 %5418, 20
  store i64 %5430, i64* %3, align 8
  %5431 = inttoptr i64 %5429 to i32*
  %5432 = load i32, i32* %5431, align 4
  %5433 = sext i32 %5432 to i64
  store i64 %5433, i64* %RAX.i1508, align 8
  %5434 = shl nsw i64 %5433, 2
  %5435 = add nsw i64 %5434, 6304896
  %5436 = add i64 %5418, 27
  store i64 %5436, i64* %3, align 8
  %5437 = inttoptr i64 %5435 to i32*
  %5438 = load i32, i32* %5437, align 4
  %5439 = zext i32 %5438 to i64
  store i64 %5439, i64* %RCX.i2066, align 8
  %5440 = add i64 %5418, 31
  store i64 %5440, i64* %3, align 8
  %5441 = load i32, i32* %5393, align 4
  %5442 = sext i32 %5441 to i64
  store i64 %5442, i64* %RAX.i1508, align 8
  %5443 = shl nsw i64 %5442, 2
  %5444 = add i64 %5397, %5443
  %5445 = add i64 %5418, 39
  store i64 %5445, i64* %3, align 8
  %5446 = inttoptr i64 %5444 to i32*
  %5447 = load i32, i32* %5446, align 4
  %5448 = sext i32 %5447 to i64
  store i64 %5448, i64* %RAX.i1508, align 8
  %5449 = shl nsw i64 %5448, 2
  %5450 = add i64 %5404, %5449
  %5451 = add i64 %5418, 46
  store i64 %5451, i64* %3, align 8
  %5452 = inttoptr i64 %5450 to i32*
  store i32 %5438, i32* %5452, align 4
  %5453 = load i64, i64* %RBP.i, align 8
  %5454 = add i64 %5453, -16
  %5455 = load i64, i64* %3, align 8
  %5456 = add i64 %5455, 7
  store i64 %5456, i64* %3, align 8
  %5457 = inttoptr i64 %5454 to i32*
  store i32 0, i32* %5457, align 4
  %5458 = load i64, i64* %RBP.i, align 8
  %5459 = add i64 %5458, -8
  %5460 = load i64, i64* %3, align 8
  %5461 = add i64 %5460, 7
  store i64 %5461, i64* %3, align 8
  %5462 = inttoptr i64 %5459 to i32*
  store i32 0, i32* %5462, align 4
  %.pre65 = load i64, i64* %3, align 8
  br label %block_.L_4015c8

block_.L_4015c8:                                  ; preds = %block_.L_401631, %block_40158c
  %5463 = phi i64 [ %.pre65, %block_40158c ], [ %5706, %block_.L_401631 ]
  %MEMORY.43 = phi %struct.Memory* [ %MEMORY.41, %block_40158c ], [ %MEMORY.44, %block_.L_401631 ]
  %5464 = load i64, i64* %RBP.i, align 8
  %5465 = add i64 %5464, -8
  %5466 = add i64 %5463, 3
  store i64 %5466, i64* %3, align 8
  %5467 = inttoptr i64 %5465 to i32*
  %5468 = load i32, i32* %5467, align 4
  %5469 = zext i32 %5468 to i64
  store i64 %5469, i64* %RAX.i1508, align 8
  %5470 = add i64 %5464, -12
  %5471 = add i64 %5463, 7
  store i64 %5471, i64* %3, align 8
  %5472 = inttoptr i64 %5470 to i32*
  %5473 = load i32, i32* %5472, align 4
  %5474 = sext i32 %5473 to i64
  store i64 %5474, i64* %RCX.i2066, align 8
  %5475 = shl nsw i64 %5474, 2
  %5476 = add i64 %5464, -1328
  %5477 = add i64 %5476, %5475
  %5478 = add i64 %5463, 14
  store i64 %5478, i64* %3, align 8
  %5479 = inttoptr i64 %5477 to i32*
  %5480 = load i32, i32* %5479, align 4
  %5481 = sub i32 %5468, %5480
  %5482 = icmp ult i32 %5468, %5480
  %5483 = zext i1 %5482 to i8
  store i8 %5483, i8* %14, align 1
  %5484 = and i32 %5481, 255
  %5485 = tail call i32 @llvm.ctpop.i32(i32 %5484)
  %5486 = trunc i32 %5485 to i8
  %5487 = and i8 %5486, 1
  %5488 = xor i8 %5487, 1
  store i8 %5488, i8* %21, align 1
  %5489 = xor i32 %5480, %5468
  %5490 = xor i32 %5489, %5481
  %5491 = lshr i32 %5490, 4
  %5492 = trunc i32 %5491 to i8
  %5493 = and i8 %5492, 1
  store i8 %5493, i8* %27, align 1
  %5494 = icmp eq i32 %5481, 0
  %5495 = zext i1 %5494 to i8
  store i8 %5495, i8* %30, align 1
  %5496 = lshr i32 %5481, 31
  %5497 = trunc i32 %5496 to i8
  store i8 %5497, i8* %33, align 1
  %5498 = lshr i32 %5468, 31
  %5499 = lshr i32 %5480, 31
  %5500 = xor i32 %5499, %5498
  %5501 = xor i32 %5496, %5498
  %5502 = add nuw nsw i32 %5501, %5500
  %5503 = icmp eq i32 %5502, 2
  %5504 = zext i1 %5503 to i8
  store i8 %5504, i8* %39, align 1
  %5505 = icmp ne i8 %5497, 0
  %5506 = xor i1 %5505, %5503
  %.v142 = select i1 %5506, i64 20, i64 124
  %5507 = add i64 %5463, %.v142
  store i64 %5507, i64* %3, align 8
  br i1 %5506, label %block_4015dc, label %block_.L_401644

block_4015dc:                                     ; preds = %block_.L_4015c8
  %5508 = add i64 %5507, 3
  store i64 %5508, i64* %3, align 8
  %5509 = load i32, i32* %5467, align 4
  %5510 = zext i32 %5509 to i64
  store i64 %5510, i64* %RAX.i1508, align 8
  %5511 = add i64 %5464, -4
  %5512 = add i64 %5507, 6
  store i64 %5512, i64* %3, align 8
  %5513 = inttoptr i64 %5511 to i32*
  %5514 = load i32, i32* %5513, align 4
  %5515 = sub i32 %5509, %5514
  %5516 = icmp ult i32 %5509, %5514
  %5517 = zext i1 %5516 to i8
  store i8 %5517, i8* %14, align 1
  %5518 = and i32 %5515, 255
  %5519 = tail call i32 @llvm.ctpop.i32(i32 %5518)
  %5520 = trunc i32 %5519 to i8
  %5521 = and i8 %5520, 1
  %5522 = xor i8 %5521, 1
  store i8 %5522, i8* %21, align 1
  %5523 = xor i32 %5514, %5509
  %5524 = xor i32 %5523, %5515
  %5525 = lshr i32 %5524, 4
  %5526 = trunc i32 %5525 to i8
  %5527 = and i8 %5526, 1
  store i8 %5527, i8* %27, align 1
  %5528 = icmp eq i32 %5515, 0
  %5529 = zext i1 %5528 to i8
  store i8 %5529, i8* %30, align 1
  %5530 = lshr i32 %5515, 31
  %5531 = trunc i32 %5530 to i8
  store i8 %5531, i8* %33, align 1
  %5532 = lshr i32 %5509, 31
  %5533 = lshr i32 %5514, 31
  %5534 = xor i32 %5533, %5532
  %5535 = xor i32 %5530, %5532
  %5536 = add nuw nsw i32 %5535, %5534
  %5537 = icmp eq i32 %5536, 2
  %5538 = zext i1 %5537 to i8
  store i8 %5538, i8* %39, align 1
  %.v143 = select i1 %5528, i64 85, i64 12
  %5539 = add i64 %5507, %.v143
  store i64 %5539, i64* %3, align 8
  br i1 %5528, label %block_.L_401631, label %block_4015e8

block_4015e8:                                     ; preds = %block_4015dc
  store i64 255, i64* %RAX.i1508, align 8
  %5540 = add i64 %5539, 9
  store i64 %5540, i64* %3, align 8
  %5541 = load i32, i32* %5467, align 4
  %5542 = sext i32 %5541 to i64
  store i64 %5542, i64* %RCX.i2066, align 8
  %5543 = shl nsw i64 %5542, 2
  %5544 = add i64 %5464, -1568
  %5545 = add i64 %5544, %5543
  %5546 = add i64 %5539, 16
  store i64 %5546, i64* %3, align 8
  %5547 = inttoptr i64 %5545 to i32*
  %5548 = load i32, i32* %5547, align 4
  %5549 = zext i32 %5548 to i64
  store i64 %5549, i64* %RDX.i2064, align 8
  %5550 = add i64 %5539, 20
  store i64 %5550, i64* %3, align 8
  %5551 = load i32, i32* %5513, align 4
  %5552 = sext i32 %5551 to i64
  store i64 %5552, i64* %RCX.i2066, align 8
  %5553 = shl nsw i64 %5552, 2
  %5554 = add i64 %5464, -1536
  %5555 = add i64 %5554, %5553
  %5556 = add i64 %5539, 27
  store i64 %5556, i64* %3, align 8
  %5557 = inttoptr i64 %5555 to i32*
  %5558 = load i32, i32* %5557, align 4
  %5559 = add i32 %5558, %5548
  %5560 = zext i32 %5559 to i64
  store i64 %5560, i64* %RDX.i2064, align 8
  %5561 = icmp ult i32 %5559, %5548
  %5562 = icmp ult i32 %5559, %5558
  %5563 = or i1 %5561, %5562
  %5564 = zext i1 %5563 to i8
  store i8 %5564, i8* %14, align 1
  %5565 = and i32 %5559, 255
  %5566 = tail call i32 @llvm.ctpop.i32(i32 %5565)
  %5567 = trunc i32 %5566 to i8
  %5568 = and i8 %5567, 1
  %5569 = xor i8 %5568, 1
  store i8 %5569, i8* %21, align 1
  %5570 = xor i32 %5558, %5548
  %5571 = xor i32 %5570, %5559
  %5572 = lshr i32 %5571, 4
  %5573 = trunc i32 %5572 to i8
  %5574 = and i8 %5573, 1
  store i8 %5574, i8* %27, align 1
  %5575 = icmp eq i32 %5559, 0
  %5576 = zext i1 %5575 to i8
  store i8 %5576, i8* %30, align 1
  %5577 = lshr i32 %5559, 31
  %5578 = trunc i32 %5577 to i8
  store i8 %5578, i8* %33, align 1
  %5579 = lshr i32 %5548, 31
  %5580 = lshr i32 %5558, 31
  %5581 = xor i32 %5577, %5579
  %5582 = xor i32 %5577, %5580
  %5583 = add nuw nsw i32 %5581, %5582
  %5584 = icmp eq i32 %5583, 2
  %5585 = zext i1 %5584 to i8
  store i8 %5585, i8* %39, align 1
  %5586 = add i64 %5464, -2728
  %5587 = add i64 %5539, 33
  store i64 %5587, i64* %3, align 8
  %5588 = inttoptr i64 %5586 to i32*
  store i32 255, i32* %5588, align 4
  %5589 = load i32, i32* %EDX.i2048, align 4
  %5590 = zext i32 %5589 to i64
  %5591 = load i64, i64* %3, align 8
  store i64 %5590, i64* %RAX.i1508, align 8
  %5592 = sext i32 %5589 to i64
  %5593 = lshr i64 %5592, 32
  store i64 %5593, i64* %57, align 8
  %5594 = load i64, i64* %RBP.i, align 8
  %5595 = add i64 %5594, -2728
  %5596 = add i64 %5591, 9
  store i64 %5596, i64* %3, align 8
  %5597 = inttoptr i64 %5595 to i32*
  %5598 = load i32, i32* %5597, align 4
  %5599 = zext i32 %5598 to i64
  store i64 %5599, i64* %RSI.i2060, align 8
  %5600 = add i64 %5591, 11
  store i64 %5600, i64* %3, align 8
  %5601 = sext i32 %5598 to i64
  %5602 = shl nuw i64 %5593, 32
  %5603 = or i64 %5602, %5590
  %5604 = sdiv i64 %5603, %5601
  %5605 = shl i64 %5604, 32
  %5606 = ashr exact i64 %5605, 32
  %5607 = icmp eq i64 %5604, %5606
  br i1 %5607, label %5610, label %5608

; <label>:5608:                                   ; preds = %block_4015e8
  %5609 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %5600, %struct.Memory* %MEMORY.43)
  %.pre66 = load i32, i32* %EDX.i2048, align 4
  %.pre67 = load i64, i64* %3, align 8
  %.pre68 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__esi.exit

; <label>:5610:                                   ; preds = %block_4015e8
  %5611 = srem i64 %5603, %5601
  %5612 = and i64 %5604, 4294967295
  store i64 %5612, i64* %58, align 8
  %5613 = and i64 %5611, 4294967295
  store i64 %5613, i64* %57, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %5614 = trunc i64 %5611 to i32
  br label %routine_idivl__esi.exit

routine_idivl__esi.exit:                          ; preds = %5610, %5608
  %5615 = phi i64 [ %.pre68, %5608 ], [ %5594, %5610 ]
  %5616 = phi i64 [ %.pre67, %5608 ], [ %5600, %5610 ]
  %5617 = phi i32 [ %.pre66, %5608 ], [ %5614, %5610 ]
  %5618 = phi %struct.Memory* [ %5609, %5608 ], [ %MEMORY.43, %5610 ]
  %5619 = sext i32 %5617 to i64
  store i64 %5619, i64* %RCX.i2066, align 8
  %5620 = shl nsw i64 %5619, 2
  %5621 = add nsw i64 %5620, 6305920
  %5622 = add i64 %5616, 10
  store i64 %5622, i64* %3, align 8
  %5623 = inttoptr i64 %5621 to i32*
  %5624 = load i32, i32* %5623, align 4
  %5625 = xor i32 %5624, 1
  %5626 = zext i32 %5625 to i64
  store i64 %5626, i64* %RDX.i2064, align 8
  store i8 0, i8* %14, align 1
  %5627 = and i32 %5625, 255
  %5628 = tail call i32 @llvm.ctpop.i32(i32 %5627)
  %5629 = trunc i32 %5628 to i8
  %5630 = and i8 %5629, 1
  %5631 = xor i8 %5630, 1
  store i8 %5631, i8* %21, align 1
  %5632 = icmp eq i32 %5625, 0
  %5633 = zext i1 %5632 to i8
  store i8 %5633, i8* %30, align 1
  %5634 = lshr i32 %5624, 31
  %5635 = trunc i32 %5634 to i8
  store i8 %5635, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %5636 = sext i32 %5625 to i64
  store i64 %5636, i64* %RCX.i2066, align 8
  %5637 = shl nsw i64 %5636, 2
  %5638 = add nsw i64 %5637, 6304896
  %5639 = add i64 %5616, 23
  store i64 %5639, i64* %3, align 8
  %5640 = inttoptr i64 %5638 to i32*
  %5641 = load i32, i32* %5640, align 4
  %5642 = zext i32 %5641 to i64
  store i64 %5642, i64* %RDX.i2064, align 8
  %5643 = add i64 %5615, -16
  %5644 = add i64 %5616, 26
  store i64 %5644, i64* %3, align 8
  %5645 = inttoptr i64 %5643 to i32*
  %5646 = load i32, i32* %5645, align 4
  %5647 = add i32 %5646, %5641
  %5648 = zext i32 %5647 to i64
  store i64 %5648, i64* %RDX.i2064, align 8
  %5649 = icmp ult i32 %5647, %5641
  %5650 = icmp ult i32 %5647, %5646
  %5651 = or i1 %5649, %5650
  %5652 = zext i1 %5651 to i8
  store i8 %5652, i8* %14, align 1
  %5653 = and i32 %5647, 255
  %5654 = tail call i32 @llvm.ctpop.i32(i32 %5653)
  %5655 = trunc i32 %5654 to i8
  %5656 = and i8 %5655, 1
  %5657 = xor i8 %5656, 1
  store i8 %5657, i8* %21, align 1
  %5658 = xor i32 %5646, %5641
  %5659 = xor i32 %5658, %5647
  %5660 = lshr i32 %5659, 4
  %5661 = trunc i32 %5660 to i8
  %5662 = and i8 %5661, 1
  store i8 %5662, i8* %27, align 1
  %5663 = icmp eq i32 %5647, 0
  %5664 = zext i1 %5663 to i8
  store i8 %5664, i8* %30, align 1
  %5665 = lshr i32 %5647, 31
  %5666 = trunc i32 %5665 to i8
  store i8 %5666, i8* %33, align 1
  %5667 = lshr i32 %5641, 31
  %5668 = lshr i32 %5646, 31
  %5669 = xor i32 %5665, %5667
  %5670 = xor i32 %5665, %5668
  %5671 = add nuw nsw i32 %5669, %5670
  %5672 = icmp eq i32 %5671, 2
  %5673 = zext i1 %5672 to i8
  store i8 %5673, i8* %39, align 1
  %5674 = add i64 %5616, 29
  store i64 %5674, i64* %3, align 8
  store i32 %5647, i32* %5645, align 4
  %.pre69 = load i64, i64* %3, align 8
  %.pre70 = load i64, i64* %RBP.i, align 8
  br label %block_.L_401631

block_.L_401631:                                  ; preds = %routine_idivl__esi.exit, %block_4015dc
  %5675 = phi i64 [ %5464, %block_4015dc ], [ %.pre70, %routine_idivl__esi.exit ]
  %5676 = phi i64 [ %5539, %block_4015dc ], [ %.pre69, %routine_idivl__esi.exit ]
  %MEMORY.44 = phi %struct.Memory* [ %MEMORY.43, %block_4015dc ], [ %5618, %routine_idivl__esi.exit ]
  %5677 = add i64 %5675, -8
  %5678 = add i64 %5676, 8
  store i64 %5678, i64* %3, align 8
  %5679 = inttoptr i64 %5677 to i32*
  %5680 = load i32, i32* %5679, align 4
  %5681 = add i32 %5680, 1
  %5682 = zext i32 %5681 to i64
  store i64 %5682, i64* %RAX.i1508, align 8
  %5683 = icmp eq i32 %5680, -1
  %5684 = icmp eq i32 %5681, 0
  %5685 = or i1 %5683, %5684
  %5686 = zext i1 %5685 to i8
  store i8 %5686, i8* %14, align 1
  %5687 = and i32 %5681, 255
  %5688 = tail call i32 @llvm.ctpop.i32(i32 %5687)
  %5689 = trunc i32 %5688 to i8
  %5690 = and i8 %5689, 1
  %5691 = xor i8 %5690, 1
  store i8 %5691, i8* %21, align 1
  %5692 = xor i32 %5680, %5681
  %5693 = lshr i32 %5692, 4
  %5694 = trunc i32 %5693 to i8
  %5695 = and i8 %5694, 1
  store i8 %5695, i8* %27, align 1
  %5696 = zext i1 %5684 to i8
  store i8 %5696, i8* %30, align 1
  %5697 = lshr i32 %5681, 31
  %5698 = trunc i32 %5697 to i8
  store i8 %5698, i8* %33, align 1
  %5699 = lshr i32 %5680, 31
  %5700 = xor i32 %5697, %5699
  %5701 = add nuw nsw i32 %5700, %5697
  %5702 = icmp eq i32 %5701, 2
  %5703 = zext i1 %5702 to i8
  store i8 %5703, i8* %39, align 1
  %5704 = add i64 %5676, 14
  store i64 %5704, i64* %3, align 8
  store i32 %5681, i32* %5679, align 4
  %5705 = load i64, i64* %3, align 8
  %5706 = add i64 %5705, -119
  store i64 %5706, i64* %3, align 8
  br label %block_.L_4015c8

block_.L_401644:                                  ; preds = %block_.L_4015c8
  store i64 255, i64* %RAX.i1508, align 8
  %5707 = add i64 %5464, -16
  %5708 = add i64 %5507, 8
  store i64 %5708, i64* %3, align 8
  %5709 = inttoptr i64 %5707 to i32*
  %5710 = load i32, i32* %5709, align 4
  %5711 = zext i32 %5710 to i64
  store i64 %5711, i64* %RCX.i2066, align 8
  %5712 = add i64 %5464, -2732
  %5713 = add i64 %5507, 14
  store i64 %5713, i64* %3, align 8
  %5714 = inttoptr i64 %5712 to i32*
  store i32 255, i32* %5714, align 4
  %5715 = load i32, i32* %ECX.i1986, align 4
  %5716 = zext i32 %5715 to i64
  %5717 = load i64, i64* %3, align 8
  store i64 %5716, i64* %RAX.i1508, align 8
  %5718 = sext i32 %5715 to i64
  %5719 = lshr i64 %5718, 32
  store i64 %5719, i64* %57, align 8
  %5720 = load i64, i64* %RBP.i, align 8
  %5721 = add i64 %5720, -2732
  %5722 = add i64 %5717, 9
  store i64 %5722, i64* %3, align 8
  %5723 = inttoptr i64 %5721 to i32*
  %5724 = load i32, i32* %5723, align 4
  %5725 = zext i32 %5724 to i64
  store i64 %5725, i64* %RCX.i2066, align 8
  %5726 = add i64 %5717, 11
  store i64 %5726, i64* %3, align 8
  %5727 = sext i32 %5724 to i64
  %5728 = shl nuw i64 %5719, 32
  %5729 = or i64 %5728, %5716
  %5730 = sdiv i64 %5729, %5727
  %5731 = shl i64 %5730, 32
  %5732 = ashr exact i64 %5731, 32
  %5733 = icmp eq i64 %5730, %5732
  br i1 %5733, label %5736, label %5734

; <label>:5734:                                   ; preds = %block_.L_401644
  %5735 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %5726, %struct.Memory* %MEMORY.43)
  %.pre71 = load i64, i64* %RBP.i, align 8
  %.pre72 = load i32, i32* %EDX.i2048, align 4
  %.pre73 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit204

; <label>:5736:                                   ; preds = %block_.L_401644
  %5737 = srem i64 %5729, %5727
  %5738 = and i64 %5730, 4294967295
  store i64 %5738, i64* %58, align 8
  %5739 = and i64 %5737, 4294967295
  store i64 %5739, i64* %57, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %5740 = trunc i64 %5737 to i32
  br label %routine_idivl__ecx.exit204

routine_idivl__ecx.exit204:                       ; preds = %5736, %5734
  %5741 = phi i64 [ %.pre73, %5734 ], [ %5726, %5736 ]
  %5742 = phi i32 [ %.pre72, %5734 ], [ %5740, %5736 ]
  %5743 = phi i64 [ %.pre71, %5734 ], [ %5720, %5736 ]
  %5744 = phi %struct.Memory* [ %5735, %5734 ], [ %MEMORY.43, %5736 ]
  %5745 = add i64 %5743, -16
  %5746 = add i64 %5741, 3
  store i64 %5746, i64* %3, align 8
  %5747 = inttoptr i64 %5745 to i32*
  store i32 %5742, i32* %5747, align 4
  %5748 = load i64, i64* %RBP.i, align 8
  %5749 = add i64 %5748, -4
  %5750 = load i64, i64* %3, align 8
  %5751 = add i64 %5750, 4
  store i64 %5751, i64* %3, align 8
  %5752 = inttoptr i64 %5749 to i32*
  %5753 = load i32, i32* %5752, align 4
  %5754 = sext i32 %5753 to i64
  store i64 %5754, i64* %RSI.i2060, align 8
  %5755 = shl nsw i64 %5754, 2
  %5756 = add i64 %5748, -1568
  %5757 = add i64 %5756, %5755
  %5758 = add i64 %5750, 12
  store i64 %5758, i64* %3, align 8
  %5759 = inttoptr i64 %5757 to i32*
  %5760 = load i32, i32* %5759, align 4
  %5761 = sext i32 %5760 to i64
  store i64 %5761, i64* %RSI.i2060, align 8
  %5762 = shl nsw i64 %5761, 2
  %5763 = add i64 %5748, -2640
  %5764 = add i64 %5763, %5762
  %5765 = add i64 %5750, 19
  store i64 %5765, i64* %3, align 8
  %5766 = inttoptr i64 %5764 to i32*
  %5767 = load i32, i32* %5766, align 4
  %5768 = zext i32 %5767 to i64
  store i64 %5768, i64* %RDX.i2064, align 8
  %5769 = add i64 %5748, -16
  %5770 = add i64 %5750, 22
  store i64 %5770, i64* %3, align 8
  %5771 = inttoptr i64 %5769 to i32*
  %5772 = load i32, i32* %5771, align 4
  %5773 = sub i32 %5767, %5772
  %5774 = lshr i32 %5773, 31
  %5775 = add i32 %5773, 255
  %5776 = zext i32 %5775 to i64
  %5777 = icmp ugt i32 %5773, -256
  %5778 = zext i1 %5777 to i8
  store i8 %5778, i8* %14, align 1
  %5779 = and i32 %5775, 255
  %5780 = tail call i32 @llvm.ctpop.i32(i32 %5779)
  %5781 = trunc i32 %5780 to i8
  %5782 = and i8 %5781, 1
  %5783 = xor i8 %5782, 1
  store i8 %5783, i8* %21, align 1
  %5784 = xor i32 %5773, 16
  %5785 = xor i32 %5784, %5775
  %5786 = lshr i32 %5785, 4
  %5787 = trunc i32 %5786 to i8
  %5788 = and i8 %5787, 1
  store i8 %5788, i8* %27, align 1
  %5789 = icmp eq i32 %5775, 0
  %5790 = zext i1 %5789 to i8
  store i8 %5790, i8* %30, align 1
  %5791 = lshr i32 %5775, 31
  %5792 = trunc i32 %5791 to i8
  store i8 %5792, i8* %33, align 1
  %5793 = xor i32 %5791, %5774
  %5794 = add nuw nsw i32 %5793, %5791
  %5795 = icmp eq i32 %5794, 2
  %5796 = zext i1 %5795 to i8
  store i8 %5796, i8* %39, align 1
  store i64 %5776, i64* %RAX.i1508, align 8
  %5797 = sext i32 %5775 to i64
  %5798 = lshr i64 %5797, 32
  store i64 %5798, i64* %57, align 8
  %5799 = load i32, i32* %ECX.i1986, align 4
  %5800 = add i64 %5750, 33
  store i64 %5800, i64* %3, align 8
  %5801 = sext i32 %5799 to i64
  %5802 = shl nuw i64 %5798, 32
  %5803 = or i64 %5802, %5776
  %5804 = sdiv i64 %5803, %5801
  %5805 = shl i64 %5804, 32
  %5806 = ashr exact i64 %5805, 32
  %5807 = icmp eq i64 %5804, %5806
  br i1 %5807, label %5810, label %5808

; <label>:5808:                                   ; preds = %routine_idivl__ecx.exit204
  %5809 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %5800, %struct.Memory* %5744)
  %.pre74 = load i32, i32* %EDX.i2048, align 4
  %.pre75 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit

; <label>:5810:                                   ; preds = %routine_idivl__ecx.exit204
  %5811 = srem i64 %5803, %5801
  %5812 = and i64 %5804, 4294967295
  store i64 %5812, i64* %58, align 8
  %5813 = and i64 %5811, 4294967295
  store i64 %5813, i64* %57, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %5814 = trunc i64 %5811 to i32
  br label %routine_idivl__ecx.exit

routine_idivl__ecx.exit:                          ; preds = %5810, %5808
  %5815 = phi i64 [ %.pre75, %5808 ], [ %5800, %5810 ]
  %5816 = phi i32 [ %.pre74, %5808 ], [ %5814, %5810 ]
  %5817 = phi %struct.Memory* [ %5809, %5808 ], [ %5744, %5810 ]
  %5818 = sext i32 %5816 to i64
  store i64 %5818, i64* %RSI.i2060, align 8
  %5819 = shl nsw i64 %5818, 2
  %5820 = add nsw i64 %5819, 6305920
  %5821 = add i64 %5815, 10
  store i64 %5821, i64* %3, align 8
  %5822 = inttoptr i64 %5820 to i32*
  %5823 = load i32, i32* %5822, align 4
  %5824 = zext i32 %5823 to i64
  store i64 %5824, i64* %RDX.i2064, align 8
  %5825 = load i64, i64* %RBP.i, align 8
  %5826 = add i64 %5825, -4
  %5827 = add i64 %5815, 14
  store i64 %5827, i64* %3, align 8
  %5828 = inttoptr i64 %5826 to i32*
  %5829 = load i32, i32* %5828, align 4
  %5830 = sext i32 %5829 to i64
  store i64 %5830, i64* %RSI.i2060, align 8
  %5831 = shl nsw i64 %5830, 2
  %5832 = add i64 %5825, -1568
  %5833 = add i64 %5832, %5831
  %5834 = add i64 %5815, 22
  store i64 %5834, i64* %3, align 8
  %5835 = inttoptr i64 %5833 to i32*
  %5836 = load i32, i32* %5835, align 4
  %5837 = sext i32 %5836 to i64
  store i64 %5837, i64* %RSI.i2060, align 8
  %5838 = shl nsw i64 %5837, 2
  %5839 = add i64 %5825, -2640
  %5840 = add i64 %5839, %5838
  %5841 = add i64 %5815, 29
  store i64 %5841, i64* %3, align 8
  %5842 = inttoptr i64 %5840 to i32*
  store i32 %5823, i32* %5842, align 4
  %5843 = load i64, i64* %RBP.i, align 8
  %5844 = add i64 %5843, -4
  %5845 = load i64, i64* %3, align 8
  %5846 = add i64 %5845, 4
  store i64 %5846, i64* %3, align 8
  %5847 = inttoptr i64 %5844 to i32*
  %5848 = load i32, i32* %5847, align 4
  %5849 = sext i32 %5848 to i64
  store i64 %5849, i64* %RSI.i2060, align 8
  %5850 = shl nsw i64 %5849, 2
  %5851 = add i64 %5843, -1568
  %5852 = add i64 %5851, %5850
  %5853 = add i64 %5845, 12
  store i64 %5853, i64* %3, align 8
  %5854 = inttoptr i64 %5852 to i32*
  %5855 = load i32, i32* %5854, align 4
  %5856 = sext i32 %5855 to i64
  store i64 %5856, i64* %RSI.i2060, align 8
  %5857 = shl nsw i64 %5856, 2
  %5858 = add i64 %5843, -2640
  %5859 = add i64 %5858, %5857
  %5860 = add i64 %5845, 19
  store i64 %5860, i64* %3, align 8
  %5861 = inttoptr i64 %5859 to i32*
  %5862 = load i32, i32* %5861, align 4
  %5863 = zext i32 %5862 to i64
  store i64 %5863, i64* %RDX.i2064, align 8
  %5864 = add i64 %5845, 23
  store i64 %5864, i64* %3, align 8
  %5865 = load i32, i32* %5847, align 4
  %5866 = sext i32 %5865 to i64
  store i64 %5866, i64* %RSI.i2060, align 8
  %5867 = shl nsw i64 %5866, 2
  %5868 = add i64 %5851, %5867
  %5869 = add i64 %5845, 31
  store i64 %5869, i64* %3, align 8
  %5870 = inttoptr i64 %5868 to i32*
  %5871 = load i32, i32* %5870, align 4
  %5872 = sext i32 %5871 to i64
  store i64 %5872, i64* %RSI.i2060, align 8
  %5873 = shl nsw i64 %5872, 2
  %5874 = add nsw i64 %5873, 6303872
  %5875 = add i64 %5845, 38
  store i64 %5875, i64* %3, align 8
  %5876 = inttoptr i64 %5874 to i32*
  %5877 = load i32, i32* %5876, align 4
  %5878 = xor i32 %5877, %5862
  %5879 = zext i32 %5878 to i64
  store i64 %5879, i64* %RDX.i2064, align 8
  store i8 0, i8* %14, align 1
  %5880 = and i32 %5878, 255
  %5881 = tail call i32 @llvm.ctpop.i32(i32 %5880)
  %5882 = trunc i32 %5881 to i8
  %5883 = and i8 %5882, 1
  %5884 = xor i8 %5883, 1
  store i8 %5884, i8* %21, align 1
  %5885 = icmp eq i32 %5878, 0
  %5886 = zext i1 %5885 to i8
  store i8 %5886, i8* %30, align 1
  %5887 = lshr i32 %5878, 31
  %5888 = trunc i32 %5887 to i8
  store i8 %5888, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %5889 = add i64 %5845, 45
  store i64 %5889, i64* %3, align 8
  store i32 %5878, i32* %5876, align 4
  %.pre76 = load i64, i64* %3, align 8
  %.pre77 = load i64, i64* %RBP.i, align 8
  br label %block_.L_4016cb

block_.L_4016cb:                                  ; preds = %routine_idivl__ecx.exit, %block_.L_401572
  %5890 = phi i64 [ %5156, %block_.L_401572 ], [ %.pre77, %routine_idivl__ecx.exit ]
  %5891 = phi i64 [ %5418, %block_.L_401572 ], [ %.pre76, %routine_idivl__ecx.exit ]
  %MEMORY.45 = phi %struct.Memory* [ %MEMORY.41, %block_.L_401572 ], [ %5817, %routine_idivl__ecx.exit ]
  %5892 = add i64 %5890, -4
  %5893 = add i64 %5891, 8
  store i64 %5893, i64* %3, align 8
  %5894 = inttoptr i64 %5892 to i32*
  %5895 = load i32, i32* %5894, align 4
  %5896 = add i32 %5895, 1
  %5897 = zext i32 %5896 to i64
  store i64 %5897, i64* %RAX.i1508, align 8
  %5898 = icmp eq i32 %5895, -1
  %5899 = icmp eq i32 %5896, 0
  %5900 = or i1 %5898, %5899
  %5901 = zext i1 %5900 to i8
  store i8 %5901, i8* %14, align 1
  %5902 = and i32 %5896, 255
  %5903 = tail call i32 @llvm.ctpop.i32(i32 %5902)
  %5904 = trunc i32 %5903 to i8
  %5905 = and i8 %5904, 1
  %5906 = xor i8 %5905, 1
  store i8 %5906, i8* %21, align 1
  %5907 = xor i32 %5895, %5896
  %5908 = lshr i32 %5907, 4
  %5909 = trunc i32 %5908 to i8
  %5910 = and i8 %5909, 1
  store i8 %5910, i8* %27, align 1
  %5911 = zext i1 %5899 to i8
  store i8 %5911, i8* %30, align 1
  %5912 = lshr i32 %5896, 31
  %5913 = trunc i32 %5912 to i8
  store i8 %5913, i8* %33, align 1
  %5914 = lshr i32 %5895, 31
  %5915 = xor i32 %5912, %5914
  %5916 = add nuw nsw i32 %5915, %5912
  %5917 = icmp eq i32 %5916, 2
  %5918 = zext i1 %5917 to i8
  store i8 %5918, i8* %39, align 1
  %5919 = add i64 %5891, 14
  store i64 %5919, i64* %3, align 8
  store i32 %5896, i32* %5894, align 4
  %5920 = load i64, i64* %3, align 8
  %5921 = add i64 %5920, -552
  store i64 %5921, i64* %3, align 8
  br label %block_.L_4014b1

block_.L_4016de:                                  ; preds = %block_.L_4014b1
  %5922 = add i64 %5134, 117
  br label %block_.L_401753

block_.L_4016e3:                                  ; preds = %block_.L_4011d3
  store i32 0, i32* %3541, align 4
  %.pre78 = load i64, i64* %3, align 8
  br label %block_.L_4016ea

block_.L_4016ea:                                  ; preds = %block_.L_40173b, %block_.L_4016e3
  %5923 = phi i64 [ %6043, %block_.L_40173b ], [ %.pre78, %block_.L_4016e3 ]
  %5924 = load i64, i64* %RBP.i, align 8
  %5925 = add i64 %5924, -4
  %5926 = add i64 %5923, 7
  store i64 %5926, i64* %3, align 8
  %5927 = inttoptr i64 %5925 to i32*
  %5928 = load i32, i32* %5927, align 4
  %5929 = add i32 %5928, -255
  %5930 = icmp ult i32 %5928, 255
  %5931 = zext i1 %5930 to i8
  store i8 %5931, i8* %14, align 1
  %5932 = and i32 %5929, 255
  %5933 = tail call i32 @llvm.ctpop.i32(i32 %5932)
  %5934 = trunc i32 %5933 to i8
  %5935 = and i8 %5934, 1
  %5936 = xor i8 %5935, 1
  store i8 %5936, i8* %21, align 1
  %5937 = xor i32 %5928, 16
  %5938 = xor i32 %5937, %5929
  %5939 = lshr i32 %5938, 4
  %5940 = trunc i32 %5939 to i8
  %5941 = and i8 %5940, 1
  store i8 %5941, i8* %27, align 1
  %5942 = icmp eq i32 %5929, 0
  %5943 = zext i1 %5942 to i8
  store i8 %5943, i8* %30, align 1
  %5944 = lshr i32 %5929, 31
  %5945 = trunc i32 %5944 to i8
  store i8 %5945, i8* %33, align 1
  %5946 = lshr i32 %5928, 31
  %5947 = xor i32 %5944, %5946
  %5948 = add nuw nsw i32 %5947, %5946
  %5949 = icmp eq i32 %5948, 2
  %5950 = zext i1 %5949 to i8
  store i8 %5950, i8* %39, align 1
  %5951 = icmp ne i8 %5945, 0
  %5952 = xor i1 %5951, %5949
  %.v144 = select i1 %5952, i64 13, i64 100
  %5953 = add i64 %5923, %.v144
  store i64 %5953, i64* %3, align 8
  br i1 %5952, label %block_4016f7, label %block_.L_40174e

block_4016f7:                                     ; preds = %block_.L_4016ea
  %5954 = add i64 %5953, 4
  store i64 %5954, i64* %3, align 8
  %5955 = load i32, i32* %5927, align 4
  %5956 = sext i32 %5955 to i64
  store i64 %5956, i64* %RAX.i1508, align 8
  %5957 = shl nsw i64 %5956, 2
  %5958 = add nsw i64 %5957, 6303872
  %5959 = add i64 %5953, 12
  store i64 %5959, i64* %3, align 8
  %5960 = inttoptr i64 %5958 to i32*
  %5961 = load i32, i32* %5960, align 4
  %5962 = add i32 %5961, 1
  %5963 = icmp ne i32 %5961, -1
  %5964 = zext i1 %5963 to i8
  store i8 %5964, i8* %14, align 1
  %5965 = and i32 %5962, 255
  %5966 = tail call i32 @llvm.ctpop.i32(i32 %5965)
  %5967 = trunc i32 %5966 to i8
  %5968 = and i8 %5967, 1
  %5969 = xor i8 %5968, 1
  store i8 %5969, i8* %21, align 1
  %5970 = xor i32 %5961, 16
  %5971 = xor i32 %5962, %5970
  %5972 = lshr i32 %5971, 4
  %5973 = trunc i32 %5972 to i8
  %5974 = and i8 %5973, 1
  store i8 %5974, i8* %27, align 1
  %5975 = icmp eq i32 %5962, 0
  %5976 = zext i1 %5975 to i8
  store i8 %5976, i8* %30, align 1
  %5977 = lshr i32 %5962, 31
  %5978 = trunc i32 %5977 to i8
  store i8 %5978, i8* %33, align 1
  %5979 = lshr i32 %5961, 31
  %5980 = xor i32 %5979, 1
  %5981 = xor i32 %5977, %5979
  %5982 = add nuw nsw i32 %5981, %5980
  %5983 = icmp eq i32 %5982, 2
  %5984 = zext i1 %5983 to i8
  store i8 %5984, i8* %39, align 1
  %.v145 = select i1 %5975, i64 53, i64 18
  %5985 = add i64 %5953, %.v145
  %5986 = add i64 %5985, 4
  store i64 %5986, i64* %3, align 8
  %5987 = load i32, i32* %5927, align 4
  %5988 = sext i32 %5987 to i64
  store i64 %5988, i64* %RAX.i1508, align 8
  %5989 = shl nsw i64 %5988, 2
  %5990 = add nsw i64 %5989, 6303872
  br i1 %5975, label %block_.L_40172c, label %block_401709

block_401709:                                     ; preds = %block_4016f7
  %5991 = add i64 %5985, 12
  store i64 %5991, i64* %3, align 8
  %5992 = inttoptr i64 %5990 to i32*
  %5993 = load i32, i32* %5992, align 4
  %5994 = sext i32 %5993 to i64
  store i64 %5994, i64* %RAX.i1508, align 8
  %5995 = shl nsw i64 %5994, 2
  %5996 = add nsw i64 %5995, 6305920
  %5997 = add i64 %5985, 19
  store i64 %5997, i64* %3, align 8
  %5998 = inttoptr i64 %5996 to i32*
  %5999 = load i32, i32* %5998, align 4
  %6000 = zext i32 %5999 to i64
  store i64 %6000, i64* %RCX.i2066, align 8
  %6001 = add i64 %5985, 23
  store i64 %6001, i64* %3, align 8
  %6002 = load i32, i32* %5927, align 4
  %6003 = sext i32 %6002 to i64
  store i64 %6003, i64* %RAX.i1508, align 8
  %6004 = shl nsw i64 %6003, 2
  %6005 = add nsw i64 %6004, 6303872
  %6006 = add i64 %5985, 30
  store i64 %6006, i64* %3, align 8
  %6007 = inttoptr i64 %6005 to i32*
  store i32 %5999, i32* %6007, align 4
  %6008 = load i64, i64* %3, align 8
  %6009 = add i64 %6008, 20
  store i64 %6009, i64* %3, align 8
  br label %block_.L_40173b

block_.L_40172c:                                  ; preds = %block_4016f7
  %6010 = add i64 %5985, 15
  store i64 %6010, i64* %3, align 8
  %6011 = inttoptr i64 %5990 to i32*
  store i32 0, i32* %6011, align 4
  %.pre79 = load i64, i64* %3, align 8
  br label %block_.L_40173b

block_.L_40173b:                                  ; preds = %block_.L_40172c, %block_401709
  %6012 = phi i64 [ %.pre79, %block_.L_40172c ], [ %6009, %block_401709 ]
  %6013 = load i64, i64* %RBP.i, align 8
  %6014 = add i64 %6013, -4
  %6015 = add i64 %6012, 8
  store i64 %6015, i64* %3, align 8
  %6016 = inttoptr i64 %6014 to i32*
  %6017 = load i32, i32* %6016, align 4
  %6018 = add i32 %6017, 1
  %6019 = zext i32 %6018 to i64
  store i64 %6019, i64* %RAX.i1508, align 8
  %6020 = icmp eq i32 %6017, -1
  %6021 = icmp eq i32 %6018, 0
  %6022 = or i1 %6020, %6021
  %6023 = zext i1 %6022 to i8
  store i8 %6023, i8* %14, align 1
  %6024 = and i32 %6018, 255
  %6025 = tail call i32 @llvm.ctpop.i32(i32 %6024)
  %6026 = trunc i32 %6025 to i8
  %6027 = and i8 %6026, 1
  %6028 = xor i8 %6027, 1
  store i8 %6028, i8* %21, align 1
  %6029 = xor i32 %6017, %6018
  %6030 = lshr i32 %6029, 4
  %6031 = trunc i32 %6030 to i8
  %6032 = and i8 %6031, 1
  store i8 %6032, i8* %27, align 1
  %6033 = zext i1 %6021 to i8
  store i8 %6033, i8* %30, align 1
  %6034 = lshr i32 %6018, 31
  %6035 = trunc i32 %6034 to i8
  store i8 %6035, i8* %33, align 1
  %6036 = lshr i32 %6017, 31
  %6037 = xor i32 %6034, %6036
  %6038 = add nuw nsw i32 %6037, %6034
  %6039 = icmp eq i32 %6038, 2
  %6040 = zext i1 %6039 to i8
  store i8 %6040, i8* %39, align 1
  %6041 = add i64 %6012, 14
  store i64 %6041, i64* %3, align 8
  store i32 %6018, i32* %6016, align 4
  %6042 = load i64, i64* %3, align 8
  %6043 = add i64 %6042, -95
  store i64 %6043, i64* %3, align 8
  br label %block_.L_4016ea

block_.L_40174e:                                  ; preds = %block_.L_4016ea
  %6044 = add i64 %5953, 5
  br label %block_.L_401753

block_.L_401753:                                  ; preds = %block_.L_40174e, %block_.L_4016de
  %.sink89 = phi i64 [ %6044, %block_.L_40174e ], [ %5922, %block_.L_4016de ]
  %MEMORY.48 = phi %struct.Memory* [ %MEMORY.25, %block_.L_40174e ], [ %MEMORY.40, %block_.L_4016de ]
  store i64 %.sink89, i64* %3, align 8
  %6045 = add i64 %.sink89, 117
  br label %block_.L_4017c8

block_.L_40175f:                                  ; preds = %block_40100c, %block_.L_4017b0
  %6046 = phi i64 [ %6166, %block_.L_4017b0 ], [ %.pre80, %block_40100c ]
  %6047 = load i64, i64* %RBP.i, align 8
  %6048 = add i64 %6047, -4
  %6049 = add i64 %6046, 7
  store i64 %6049, i64* %3, align 8
  %6050 = inttoptr i64 %6048 to i32*
  %6051 = load i32, i32* %6050, align 4
  %6052 = add i32 %6051, -255
  %6053 = icmp ult i32 %6051, 255
  %6054 = zext i1 %6053 to i8
  store i8 %6054, i8* %14, align 1
  %6055 = and i32 %6052, 255
  %6056 = tail call i32 @llvm.ctpop.i32(i32 %6055)
  %6057 = trunc i32 %6056 to i8
  %6058 = and i8 %6057, 1
  %6059 = xor i8 %6058, 1
  store i8 %6059, i8* %21, align 1
  %6060 = xor i32 %6051, 16
  %6061 = xor i32 %6060, %6052
  %6062 = lshr i32 %6061, 4
  %6063 = trunc i32 %6062 to i8
  %6064 = and i8 %6063, 1
  store i8 %6064, i8* %27, align 1
  %6065 = icmp eq i32 %6052, 0
  %6066 = zext i1 %6065 to i8
  store i8 %6066, i8* %30, align 1
  %6067 = lshr i32 %6052, 31
  %6068 = trunc i32 %6067 to i8
  store i8 %6068, i8* %33, align 1
  %6069 = lshr i32 %6051, 31
  %6070 = xor i32 %6067, %6069
  %6071 = add nuw nsw i32 %6070, %6069
  %6072 = icmp eq i32 %6071, 2
  %6073 = zext i1 %6072 to i8
  store i8 %6073, i8* %39, align 1
  %6074 = icmp ne i8 %6068, 0
  %6075 = xor i1 %6074, %6072
  %.v146 = select i1 %6075, i64 13, i64 100
  %6076 = add i64 %6046, %.v146
  store i64 %6076, i64* %3, align 8
  br i1 %6075, label %block_40176c, label %block_.L_4017c3

block_40176c:                                     ; preds = %block_.L_40175f
  %6077 = add i64 %6076, 4
  store i64 %6077, i64* %3, align 8
  %6078 = load i32, i32* %6050, align 4
  %6079 = sext i32 %6078 to i64
  store i64 %6079, i64* %RAX.i1508, align 8
  %6080 = shl nsw i64 %6079, 2
  %6081 = add nsw i64 %6080, 6303872
  %6082 = add i64 %6076, 12
  store i64 %6082, i64* %3, align 8
  %6083 = inttoptr i64 %6081 to i32*
  %6084 = load i32, i32* %6083, align 4
  %6085 = add i32 %6084, 1
  %6086 = icmp ne i32 %6084, -1
  %6087 = zext i1 %6086 to i8
  store i8 %6087, i8* %14, align 1
  %6088 = and i32 %6085, 255
  %6089 = tail call i32 @llvm.ctpop.i32(i32 %6088)
  %6090 = trunc i32 %6089 to i8
  %6091 = and i8 %6090, 1
  %6092 = xor i8 %6091, 1
  store i8 %6092, i8* %21, align 1
  %6093 = xor i32 %6084, 16
  %6094 = xor i32 %6085, %6093
  %6095 = lshr i32 %6094, 4
  %6096 = trunc i32 %6095 to i8
  %6097 = and i8 %6096, 1
  store i8 %6097, i8* %27, align 1
  %6098 = icmp eq i32 %6085, 0
  %6099 = zext i1 %6098 to i8
  store i8 %6099, i8* %30, align 1
  %6100 = lshr i32 %6085, 31
  %6101 = trunc i32 %6100 to i8
  store i8 %6101, i8* %33, align 1
  %6102 = lshr i32 %6084, 31
  %6103 = xor i32 %6102, 1
  %6104 = xor i32 %6100, %6102
  %6105 = add nuw nsw i32 %6104, %6103
  %6106 = icmp eq i32 %6105, 2
  %6107 = zext i1 %6106 to i8
  store i8 %6107, i8* %39, align 1
  %.v147 = select i1 %6098, i64 53, i64 18
  %6108 = add i64 %6076, %.v147
  %6109 = add i64 %6108, 4
  store i64 %6109, i64* %3, align 8
  %6110 = load i32, i32* %6050, align 4
  %6111 = sext i32 %6110 to i64
  store i64 %6111, i64* %RAX.i1508, align 8
  %6112 = shl nsw i64 %6111, 2
  %6113 = add nsw i64 %6112, 6303872
  br i1 %6098, label %block_.L_4017a1, label %block_40177e

block_40177e:                                     ; preds = %block_40176c
  %6114 = add i64 %6108, 12
  store i64 %6114, i64* %3, align 8
  %6115 = inttoptr i64 %6113 to i32*
  %6116 = load i32, i32* %6115, align 4
  %6117 = sext i32 %6116 to i64
  store i64 %6117, i64* %RAX.i1508, align 8
  %6118 = shl nsw i64 %6117, 2
  %6119 = add nsw i64 %6118, 6305920
  %6120 = add i64 %6108, 19
  store i64 %6120, i64* %3, align 8
  %6121 = inttoptr i64 %6119 to i32*
  %6122 = load i32, i32* %6121, align 4
  %6123 = zext i32 %6122 to i64
  store i64 %6123, i64* %RCX.i2066, align 8
  %6124 = add i64 %6108, 23
  store i64 %6124, i64* %3, align 8
  %6125 = load i32, i32* %6050, align 4
  %6126 = sext i32 %6125 to i64
  store i64 %6126, i64* %RAX.i1508, align 8
  %6127 = shl nsw i64 %6126, 2
  %6128 = add nsw i64 %6127, 6303872
  %6129 = add i64 %6108, 30
  store i64 %6129, i64* %3, align 8
  %6130 = inttoptr i64 %6128 to i32*
  store i32 %6122, i32* %6130, align 4
  %6131 = load i64, i64* %3, align 8
  %6132 = add i64 %6131, 20
  store i64 %6132, i64* %3, align 8
  br label %block_.L_4017b0

block_.L_4017a1:                                  ; preds = %block_40176c
  %6133 = add i64 %6108, 15
  store i64 %6133, i64* %3, align 8
  %6134 = inttoptr i64 %6113 to i32*
  store i32 0, i32* %6134, align 4
  %.pre81 = load i64, i64* %3, align 8
  br label %block_.L_4017b0

block_.L_4017b0:                                  ; preds = %block_.L_4017a1, %block_40177e
  %6135 = phi i64 [ %.pre81, %block_.L_4017a1 ], [ %6132, %block_40177e ]
  %6136 = load i64, i64* %RBP.i, align 8
  %6137 = add i64 %6136, -4
  %6138 = add i64 %6135, 8
  store i64 %6138, i64* %3, align 8
  %6139 = inttoptr i64 %6137 to i32*
  %6140 = load i32, i32* %6139, align 4
  %6141 = add i32 %6140, 1
  %6142 = zext i32 %6141 to i64
  store i64 %6142, i64* %RAX.i1508, align 8
  %6143 = icmp eq i32 %6140, -1
  %6144 = icmp eq i32 %6141, 0
  %6145 = or i1 %6143, %6144
  %6146 = zext i1 %6145 to i8
  store i8 %6146, i8* %14, align 1
  %6147 = and i32 %6141, 255
  %6148 = tail call i32 @llvm.ctpop.i32(i32 %6147)
  %6149 = trunc i32 %6148 to i8
  %6150 = and i8 %6149, 1
  %6151 = xor i8 %6150, 1
  store i8 %6151, i8* %21, align 1
  %6152 = xor i32 %6140, %6141
  %6153 = lshr i32 %6152, 4
  %6154 = trunc i32 %6153 to i8
  %6155 = and i8 %6154, 1
  store i8 %6155, i8* %27, align 1
  %6156 = zext i1 %6144 to i8
  store i8 %6156, i8* %30, align 1
  %6157 = lshr i32 %6141, 31
  %6158 = trunc i32 %6157 to i8
  store i8 %6158, i8* %33, align 1
  %6159 = lshr i32 %6140, 31
  %6160 = xor i32 %6157, %6159
  %6161 = add nuw nsw i32 %6160, %6157
  %6162 = icmp eq i32 %6161, 2
  %6163 = zext i1 %6162 to i8
  store i8 %6163, i8* %39, align 1
  %6164 = add i64 %6135, 14
  store i64 %6164, i64* %3, align 8
  store i32 %6141, i32* %6139, align 4
  %6165 = load i64, i64* %3, align 8
  %6166 = add i64 %6165, -95
  store i64 %6166, i64* %3, align 8
  br label %block_.L_40175f

block_.L_4017c3:                                  ; preds = %block_.L_40175f
  %6167 = add i64 %6076, 5
  br label %block_.L_4017c8

block_.L_4017c8:                                  ; preds = %block_.L_4017c3, %block_.L_401753
  %.sink91 = phi i64 [ %6167, %block_.L_4017c3 ], [ %6045, %block_.L_401753 ]
  %MEMORY.51 = phi %struct.Memory* [ %MEMORY.21, %block_.L_4017c3 ], [ %MEMORY.48, %block_.L_401753 ]
  store i64 %.sink91, i64* %3, align 8
  %6168 = add i64 %.sink91, 117
  br label %block_.L_40183d

block_.L_4017cd:                                  ; preds = %block_.L_400a16
  %6169 = add i64 %406, 7
  store i64 %6169, i64* %3, align 8
  store i32 0, i32* %63, align 4
  %.pre82 = load i64, i64* %3, align 8
  br label %block_.L_4017d4

block_.L_4017d4:                                  ; preds = %block_.L_401825, %block_.L_4017cd
  %6170 = phi i64 [ %6290, %block_.L_401825 ], [ %.pre82, %block_.L_4017cd ]
  %6171 = load i64, i64* %RBP.i, align 8
  %6172 = add i64 %6171, -4
  %6173 = add i64 %6170, 7
  store i64 %6173, i64* %3, align 8
  %6174 = inttoptr i64 %6172 to i32*
  %6175 = load i32, i32* %6174, align 4
  %6176 = add i32 %6175, -255
  %6177 = icmp ult i32 %6175, 255
  %6178 = zext i1 %6177 to i8
  store i8 %6178, i8* %14, align 1
  %6179 = and i32 %6176, 255
  %6180 = tail call i32 @llvm.ctpop.i32(i32 %6179)
  %6181 = trunc i32 %6180 to i8
  %6182 = and i8 %6181, 1
  %6183 = xor i8 %6182, 1
  store i8 %6183, i8* %21, align 1
  %6184 = xor i32 %6175, 16
  %6185 = xor i32 %6184, %6176
  %6186 = lshr i32 %6185, 4
  %6187 = trunc i32 %6186 to i8
  %6188 = and i8 %6187, 1
  store i8 %6188, i8* %27, align 1
  %6189 = icmp eq i32 %6176, 0
  %6190 = zext i1 %6189 to i8
  store i8 %6190, i8* %30, align 1
  %6191 = lshr i32 %6176, 31
  %6192 = trunc i32 %6191 to i8
  store i8 %6192, i8* %33, align 1
  %6193 = lshr i32 %6175, 31
  %6194 = xor i32 %6191, %6193
  %6195 = add nuw nsw i32 %6194, %6193
  %6196 = icmp eq i32 %6195, 2
  %6197 = zext i1 %6196 to i8
  store i8 %6197, i8* %39, align 1
  %6198 = icmp ne i8 %6192, 0
  %6199 = xor i1 %6198, %6196
  %.v161 = select i1 %6199, i64 13, i64 100
  %6200 = add i64 %6170, %.v161
  store i64 %6200, i64* %3, align 8
  br i1 %6199, label %block_4017e1, label %block_.L_401838

block_4017e1:                                     ; preds = %block_.L_4017d4
  %6201 = add i64 %6200, 4
  store i64 %6201, i64* %3, align 8
  %6202 = load i32, i32* %6174, align 4
  %6203 = sext i32 %6202 to i64
  store i64 %6203, i64* %RAX.i1508, align 8
  %6204 = shl nsw i64 %6203, 2
  %6205 = add nsw i64 %6204, 6303872
  %6206 = add i64 %6200, 12
  store i64 %6206, i64* %3, align 8
  %6207 = inttoptr i64 %6205 to i32*
  %6208 = load i32, i32* %6207, align 4
  %6209 = add i32 %6208, 1
  %6210 = icmp ne i32 %6208, -1
  %6211 = zext i1 %6210 to i8
  store i8 %6211, i8* %14, align 1
  %6212 = and i32 %6209, 255
  %6213 = tail call i32 @llvm.ctpop.i32(i32 %6212)
  %6214 = trunc i32 %6213 to i8
  %6215 = and i8 %6214, 1
  %6216 = xor i8 %6215, 1
  store i8 %6216, i8* %21, align 1
  %6217 = xor i32 %6208, 16
  %6218 = xor i32 %6209, %6217
  %6219 = lshr i32 %6218, 4
  %6220 = trunc i32 %6219 to i8
  %6221 = and i8 %6220, 1
  store i8 %6221, i8* %27, align 1
  %6222 = icmp eq i32 %6209, 0
  %6223 = zext i1 %6222 to i8
  store i8 %6223, i8* %30, align 1
  %6224 = lshr i32 %6209, 31
  %6225 = trunc i32 %6224 to i8
  store i8 %6225, i8* %33, align 1
  %6226 = lshr i32 %6208, 31
  %6227 = xor i32 %6226, 1
  %6228 = xor i32 %6224, %6226
  %6229 = add nuw nsw i32 %6228, %6227
  %6230 = icmp eq i32 %6229, 2
  %6231 = zext i1 %6230 to i8
  store i8 %6231, i8* %39, align 1
  %.v162 = select i1 %6222, i64 53, i64 18
  %6232 = add i64 %6200, %.v162
  %6233 = add i64 %6232, 4
  store i64 %6233, i64* %3, align 8
  %6234 = load i32, i32* %6174, align 4
  %6235 = sext i32 %6234 to i64
  store i64 %6235, i64* %RAX.i1508, align 8
  %6236 = shl nsw i64 %6235, 2
  %6237 = add nsw i64 %6236, 6303872
  br i1 %6222, label %block_.L_401816, label %block_4017f3

block_4017f3:                                     ; preds = %block_4017e1
  %6238 = add i64 %6232, 12
  store i64 %6238, i64* %3, align 8
  %6239 = inttoptr i64 %6237 to i32*
  %6240 = load i32, i32* %6239, align 4
  %6241 = sext i32 %6240 to i64
  store i64 %6241, i64* %RAX.i1508, align 8
  %6242 = shl nsw i64 %6241, 2
  %6243 = add nsw i64 %6242, 6305920
  %6244 = add i64 %6232, 19
  store i64 %6244, i64* %3, align 8
  %6245 = inttoptr i64 %6243 to i32*
  %6246 = load i32, i32* %6245, align 4
  %6247 = zext i32 %6246 to i64
  store i64 %6247, i64* %RCX.i2066, align 8
  %6248 = add i64 %6232, 23
  store i64 %6248, i64* %3, align 8
  %6249 = load i32, i32* %6174, align 4
  %6250 = sext i32 %6249 to i64
  store i64 %6250, i64* %RAX.i1508, align 8
  %6251 = shl nsw i64 %6250, 2
  %6252 = add nsw i64 %6251, 6303872
  %6253 = add i64 %6232, 30
  store i64 %6253, i64* %3, align 8
  %6254 = inttoptr i64 %6252 to i32*
  store i32 %6246, i32* %6254, align 4
  %6255 = load i64, i64* %3, align 8
  %6256 = add i64 %6255, 20
  store i64 %6256, i64* %3, align 8
  br label %block_.L_401825

block_.L_401816:                                  ; preds = %block_4017e1
  %6257 = add i64 %6232, 15
  store i64 %6257, i64* %3, align 8
  %6258 = inttoptr i64 %6237 to i32*
  store i32 0, i32* %6258, align 4
  %.pre83 = load i64, i64* %3, align 8
  br label %block_.L_401825

block_.L_401825:                                  ; preds = %block_.L_401816, %block_4017f3
  %6259 = phi i64 [ %.pre83, %block_.L_401816 ], [ %6256, %block_4017f3 ]
  %6260 = load i64, i64* %RBP.i, align 8
  %6261 = add i64 %6260, -4
  %6262 = add i64 %6259, 8
  store i64 %6262, i64* %3, align 8
  %6263 = inttoptr i64 %6261 to i32*
  %6264 = load i32, i32* %6263, align 4
  %6265 = add i32 %6264, 1
  %6266 = zext i32 %6265 to i64
  store i64 %6266, i64* %RAX.i1508, align 8
  %6267 = icmp eq i32 %6264, -1
  %6268 = icmp eq i32 %6265, 0
  %6269 = or i1 %6267, %6268
  %6270 = zext i1 %6269 to i8
  store i8 %6270, i8* %14, align 1
  %6271 = and i32 %6265, 255
  %6272 = tail call i32 @llvm.ctpop.i32(i32 %6271)
  %6273 = trunc i32 %6272 to i8
  %6274 = and i8 %6273, 1
  %6275 = xor i8 %6274, 1
  store i8 %6275, i8* %21, align 1
  %6276 = xor i32 %6264, %6265
  %6277 = lshr i32 %6276, 4
  %6278 = trunc i32 %6277 to i8
  %6279 = and i8 %6278, 1
  store i8 %6279, i8* %27, align 1
  %6280 = zext i1 %6268 to i8
  store i8 %6280, i8* %30, align 1
  %6281 = lshr i32 %6265, 31
  %6282 = trunc i32 %6281 to i8
  store i8 %6282, i8* %33, align 1
  %6283 = lshr i32 %6264, 31
  %6284 = xor i32 %6281, %6283
  %6285 = add nuw nsw i32 %6284, %6281
  %6286 = icmp eq i32 %6285, 2
  %6287 = zext i1 %6286 to i8
  store i8 %6287, i8* %39, align 1
  %6288 = add i64 %6259, 14
  store i64 %6288, i64* %3, align 8
  store i32 %6265, i32* %6263, align 4
  %6289 = load i64, i64* %3, align 8
  %6290 = add i64 %6289, -95
  store i64 %6290, i64* %3, align 8
  br label %block_.L_4017d4

block_.L_401838:                                  ; preds = %block_.L_4017d4
  %6291 = add i64 %6200, 5
  br label %block_.L_40183d

block_.L_40183d:                                  ; preds = %block_.L_401838, %block_.L_4017c8
  %.sink93 = phi i64 [ %6291, %block_.L_401838 ], [ %6168, %block_.L_4017c8 ]
  %MEMORY.54 = phi %struct.Memory* [ %MEMORY.0, %block_.L_401838 ], [ %MEMORY.51, %block_.L_4017c8 ]
  %6292 = load i64, i64* %6, align 8
  %6293 = add i64 %6292, 2608
  store i64 %6293, i64* %6, align 8
  %6294 = icmp ugt i64 %6292, -2609
  %6295 = zext i1 %6294 to i8
  store i8 %6295, i8* %14, align 1
  %6296 = trunc i64 %6293 to i32
  %6297 = and i32 %6296, 255
  %6298 = tail call i32 @llvm.ctpop.i32(i32 %6297)
  %6299 = trunc i32 %6298 to i8
  %6300 = and i8 %6299, 1
  %6301 = xor i8 %6300, 1
  store i8 %6301, i8* %21, align 1
  %6302 = xor i64 %6292, 16
  %6303 = xor i64 %6302, %6293
  %6304 = lshr i64 %6303, 4
  %6305 = trunc i64 %6304 to i8
  %6306 = and i8 %6305, 1
  store i8 %6306, i8* %27, align 1
  %6307 = icmp eq i64 %6293, 0
  %6308 = zext i1 %6307 to i8
  store i8 %6308, i8* %30, align 1
  %6309 = lshr i64 %6293, 63
  %6310 = trunc i64 %6309 to i8
  store i8 %6310, i8* %33, align 1
  %6311 = lshr i64 %6292, 63
  %6312 = xor i64 %6309, %6311
  %6313 = add nuw nsw i64 %6312, %6309
  %6314 = icmp eq i64 %6313, 2
  %6315 = zext i1 %6314 to i8
  store i8 %6315, i8* %39, align 1
  %6316 = add i64 %.sink93, 8
  store i64 %6316, i64* %3, align 8
  %6317 = add i64 %6292, 2616
  %6318 = inttoptr i64 %6293 to i64*
  %6319 = load i64, i64* %6318, align 8
  store i64 %6319, i64* %RBP.i, align 8
  store i64 %6317, i64* %6, align 8
  %6320 = add i64 %.sink93, 9
  store i64 %6320, i64* %3, align 8
  %6321 = inttoptr i64 %6317 to i64*
  %6322 = load i64, i64* %6321, align 8
  store i64 %6322, i64* %3, align 8
  %6323 = add i64 %6292, 2624
  store i64 %6323, i64* %6, align 8
  ret %struct.Memory* %MEMORY.54
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

define %struct.Memory* @routine_subq__0xa30___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -2608
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 2608
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

define %struct.Memory* @routine_movl__0x0__MINUS0x5d4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1492
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x5d8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1496
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_cmpl__0x10__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -16
  %10 = icmp ult i32 %8, 16
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

define %struct.Memory* @routine_jg_.L_400a16(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = xor i1 %13, true
  %15 = and i1 %6, %14
  %16 = zext i1 %15 to i8
  store i8 %16, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %17 = add i64 %3, %.v
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x4__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x5d0__rbp__rax_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -1488
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 11
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  store i32 0, i32* %10, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0xff__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -255
  %10 = icmp ult i32 %8, 255
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

define %struct.Memory* @routine_jge_.L_4009ce(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movslq_MINUS0x8__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_cmpl__0xffffffff__0x603080___rax_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 6303872
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = add i32 %9, 1
  %11 = icmp ne i32 %9, -1
  %12 = zext i1 %11 to i8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %12, i8* %13, align 1
  %14 = and i32 %10, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1
  %20 = xor i32 %9, 16
  %21 = xor i32 %10, %20
  %22 = lshr i32 %21, 4
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1
  %26 = icmp eq i32 %10, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %10, 31
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %9, 31
  %33 = xor i32 %32, 1
  %34 = xor i32 %29, %32
  %35 = add nuw nsw i32 %34, %33
  %36 = icmp eq i32 %35, 2
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %37, i8* %38, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_4009bb(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %3, %.v
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0xff___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 255, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x603080___rcx_4____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 6303872
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x4__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imull_MINUS0x8__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
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

define %struct.Memory* @routine_addl__esi___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = load i32, i32* %ESI, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %4 to i32
  %10 = add i32 %5, %9
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RDX, align 8
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

define %struct.Memory* @routine_movl__eax__MINUS0xa84__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -2692
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cltd(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 1
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %7 = bitcast %union.anon* %6 to i32*
  %8 = load i32, i32* %7, align 8
  %9 = sext i32 %8 to i64
  %10 = lshr i64 %9, 32
  store i64 %10, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0xa84__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2692
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_idivl__esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ESI, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %8 = bitcast %union.anon* %7 to i32*
  %9 = load i32, i32* %8, align 8
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %12 = bitcast %union.anon* %11 to i32*
  %13 = load i32, i32* %12, align 8
  %14 = zext i32 %13 to i64
  %15 = sext i32 %4 to i64
  %16 = shl nuw i64 %14, 32
  %17 = or i64 %16, %10
  %18 = sdiv i64 %17, %15
  %19 = shl i64 %18, 32
  %20 = ashr exact i64 %19, 32
  %21 = icmp eq i64 %18, %20
  br i1 %21, label %24, label %22

; <label>:22:                                     ; preds = %block_400478
  %23 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %6, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:24:                                     ; preds = %block_400478
  %25 = srem i64 %17, %15
  %26 = getelementptr inbounds %union.anon, %union.anon* %7, i64 0, i32 0
  %27 = and i64 %18, 4294967295
  store i64 %27, i64* %26, align 8
  %28 = getelementptr inbounds %union.anon, %union.anon* %11, i64 0, i32 0
  %29 = and i64 %25, 4294967295
  store i64 %29, i64* %28, align 8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %30, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %32, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %35, align 1
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %24, %22
  %36 = phi %struct.Memory* [ %23, %22 ], [ %2, %24 ]
  ret %struct.Memory* %36
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

define %struct.Memory* @routine_movl_0x603880___rcx_4____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 6305920
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_xorl_MINUS0x5d0__rbp__rcx_4____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -1488
  %8 = add i64 %7, %6
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC, align 8
  %11 = trunc i64 %3 to i32
  %12 = inttoptr i64 %8 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = xor i32 %13, %11
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %RDX, align 8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %16, align 1
  %17 = and i32 %14, 255
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = icmp eq i32 %14, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1
  %26 = lshr i32 %14, 31
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %29, align 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %30, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0x5d0__rbp__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -1488
  %8 = add i64 %7, %6
  %9 = load i32, i32* %EDX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4009c0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__eax__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400956(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0__MINUS0x5d0__rbp__rax_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -1488
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 8
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %12, align 1
  %13 = and i32 %11, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %19, align 1
  %20 = icmp eq i32 %11, 0
  %21 = zext i1 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %21, i8* %22, align 1
  %23 = lshr i32 %11, 31
  %24 = trunc i32 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %24, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_4009ea(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %3, %.v
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1__MINUS0x5d8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1496
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x5d0__rbp__rax_4____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -1488
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 8
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = sext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x603480___rax_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 6304896
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__MINUS0x5d0__rbp__rax_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -1488
  %8 = add i64 %7, %6
  %9 = load i32, i32* %ECX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__eax__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400936(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0__MINUS0x5d8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1496
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
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

define %struct.Memory* @routine_je_.L_4017cd(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %3, %.v
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x4e0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1248
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x5cc__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1484
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x4dc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1244
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x490__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1__MINUS0x450__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_400a8a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movl__0xffffffff__MINUS0x490__rbp__rax_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -1168
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 11
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  store i32 -1, i32* %10, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x450__rbp__rax_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -1104
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 11
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  store i32 0, i32* %10, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400a54(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x530__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1328
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x52c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1324
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0xffffffff__MINUS0x580__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1408
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 -1, i32* %7, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x57c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1404
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0xc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__eax__MINUS0xc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_cmpl__0xffffffff__MINUS0x4e0__rbp__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -1248
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 8
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = add i32 %11, 1
  %13 = icmp ne i32 %11, -1
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = and i32 %12, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = xor i32 %11, 16
  %23 = xor i32 %12, %22
  %24 = lshr i32 %23, 4
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1
  %28 = icmp eq i32 %12, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %12, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %11, 31
  %35 = xor i32 %34, 1
  %36 = xor i32 %31, %34
  %37 = add nuw nsw i32 %36, %35
  %38 = icmp eq i32 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_400b82(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movslq_MINUS0xc__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x530__rbp__rax_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -1328
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

define %struct.Memory* @routine_movl_MINUS0xc__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
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

define %struct.Memory* @routine_movslq__edx___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__MINUS0x530__rbp__rax_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -1328
  %8 = add i64 %7, %6
  %9 = load i32, i32* %ECX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_cmpl_MINUS0x530__rbp__rcx_4____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = load i64, i64* %RCX, align 8
  %7 = shl i64 %6, 2
  %8 = add i64 %5, -1328
  %9 = add i64 %8, %7
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %9 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = sub i32 %4, %13
  %15 = icmp ult i32 %4, %13
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %16, i8* %17, align 1
  %18 = and i32 %14, 255
  %19 = tail call i32 @llvm.ctpop.i32(i32 %18)
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1
  %24 = xor i32 %13, %4
  %25 = xor i32 %24, %14
  %26 = lshr i32 %25, 4
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1
  %30 = icmp eq i32 %14, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %14, 31
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %4, 31
  %37 = lshr i32 %13, 31
  %38 = xor i32 %37, %36
  %39 = xor i32 %33, %36
  %40 = add nuw nsw i32 %39, %38
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jg_.L_400b7d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = xor i1 %13, true
  %15 = and i1 %6, %14
  %16 = zext i1 %15 to i8
  store i8 %16, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %17 = add i64 %3, %.v
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_leaq_MINUS0x490__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 6
  store i64 %6, i64* %RCX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 58
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 192
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
  %23 = lshr i64 %3, 57
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_addq__rcx___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl___rdx__rcx_4____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
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

define %struct.Memory* @routine_movl_MINUS0xc__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__0x1___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movslq__edi___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EDI, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__esi____rdx__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i32, i32* %ESI, align 4
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 3
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i32*
  store i32 %8, i32* %11, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq___rdx__rcx_4____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RCX, align 8
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

define %struct.Memory* @routine_movl_0x603480___rcx_4____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 6304896
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__rcx___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__esi____rax__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i32, i32* %ESI, align 4
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 3
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i32*
  store i32 %8, i32* %11, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400af6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400e3a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl__0x1___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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
  %18 = xor i32 %6, %7
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

define %struct.Memory* @routine_movl__eax__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_xorl__eax___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movb__al___cl(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movslq_MINUS0x10__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_cmpl__0xffffffff__MINUS0x4e0__rbp__rdx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -1248
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 8
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = add i32 %11, 1
  %13 = icmp ne i32 %11, -1
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = and i32 %12, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = xor i32 %11, 16
  %23 = xor i32 %12, %22
  %24 = lshr i32 %23, 4
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1
  %28 = icmp eq i32 %12, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %12, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %11, 31
  %35 = xor i32 %34, 1
  %36 = xor i32 %31, %34
  %37 = add nuw nsw i32 %36, %35
  %38 = icmp eq i32 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__cl__MINUS0xa85__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -2693
  %6 = load i8, i8* %CL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_400bb4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_cmpl__0x0__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
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

define %struct.Memory* @routine_setg__al(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  %8 = icmp eq i8 %7, 0
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %10 = load i8, i8* %9, align 1
  %11 = icmp ne i8 %10, 0
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %13 = load i8, i8* %12, align 1
  %14 = icmp ne i8 %13, 0
  %15 = xor i1 %11, %14
  %16 = xor i1 %15, true
  %17 = and i1 %8, %16
  %18 = zext i1 %17 to i8
  store i8 %18, i8* %AL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__al__MINUS0xa85__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -2693
  %6 = load i8, i8* %AL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb_MINUS0xa85__rbp____al(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -2693
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %AL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_testb__0x1___al(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_jne_.L_400bc7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_jmpq_.L_400bd5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x10__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_addl__0xffffffff___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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
  %19 = xor i32 %7, %18
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

define %struct.Memory* @routine_jmpq_.L_400b8b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jle_.L_400c36(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %16 = add i64 %3, %.v
  store i64 %16, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_400c22(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %3, %.v
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x10__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl_MINUS0x580__rbp__rax_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -1408
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

define %struct.Memory* @routine_cmpl_MINUS0x580__rbp__rax_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = load i64, i64* %RAX, align 8
  %7 = shl i64 %6, 2
  %8 = add i64 %5, -1408
  %9 = add i64 %8, %7
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %9 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = sub i32 %4, %13
  %15 = icmp ult i32 %4, %13
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %16, i8* %17, align 1
  %18 = and i32 %14, 255
  %19 = tail call i32 @llvm.ctpop.i32(i32 %18)
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1
  %24 = xor i32 %13, %4
  %25 = xor i32 %24, %14
  %26 = lshr i32 %25, 4
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1
  %30 = icmp eq i32 %14, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %14, 31
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %4, 31
  %37 = lshr i32 %13, 31
  %38 = xor i32 %37, %36
  %39 = xor i32 %33, %36
  %40 = add nuw nsw i32 %39, %38
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_400c22(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_jmpq_.L_400c27(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
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

define %struct.Memory* @routine_jg_.L_400be5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = xor i1 %13, true
  %15 = and i1 %6, %14
  %16 = zext i1 %15 to i8
  store i8 %16, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %17 = add i64 %3, %.v
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400c36(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x530__rbp__rax_4____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -1328
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0xc__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12
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

define %struct.Memory* @routine_subl_MINUS0x10__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %8, %10
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDX, align 8
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

define %struct.Memory* @routine_cmpl__edx___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %4 to i32*
  %5 = load i32, i32* %ECX, align 4
  %6 = load i32, i32* %EDX, align 4
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

define %struct.Memory* @routine_jle_.L_400c7a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %16 = add i64 %3, %.v
  store i64 %16, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400c9b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0xc__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12
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

define %struct.Memory* @routine_subl_MINUS0x10__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %8, %10
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
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

define %struct.Memory* @routine_jge_.L_400cdc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movl_MINUS0xc__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
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

define %struct.Memory* @routine_shlq__0x6___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 6
  store i64 %6, i64* %RDX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 58
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 192
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
  %23 = lshr i64 %3, 57
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__rdx___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__0x0____rax__rdx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  store i32 0, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400ca2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x10__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_jg_.L_400da4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = xor i1 %13, true
  %15 = and i1 %6, %14
  %16 = zext i1 %15 to i8
  store i8 %16, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %17 = add i64 %3, %.v
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0xffffffff____rax__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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
  %11 = add i32 %10, 1
  %12 = icmp ne i32 %10, -1
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
  %21 = xor i32 %10, 16
  %22 = xor i32 %11, %21
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
  %33 = lshr i32 %10, 31
  %34 = xor i32 %33, 1
  %35 = xor i32 %30, %33
  %36 = add nuw nsw i32 %35, %34
  %37 = icmp eq i32 %36, 2
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %38, i8* %39, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_400d91(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %3, %.v
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0xff___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 255, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0xc__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x4e0__rbp__rdx_4____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -1248
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__0xff___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 255
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RSI, align 8
  %9 = icmp ugt i32 %6, -256
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

define %struct.Memory* @routine_subl_MINUS0x4e0__rbp__rdx_4____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -1248
  %8 = add i64 %7, %6
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC, align 8
  %11 = trunc i64 %3 to i32
  %12 = inttoptr i64 %8 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = sub i32 %11, %13
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %RSI, align 8
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

define %struct.Memory* @routine_movq__rax___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_addq__rdx___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_addl___rdi__rdx_4____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RDI, align 8
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

define %struct.Memory* @routine_movq__rax__MINUS0xa90__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2704
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__esi___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %ESI, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_idivl__ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %8 = bitcast %union.anon* %7 to i32*
  %9 = load i32, i32* %8, align 8
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %12 = bitcast %union.anon* %11 to i32*
  %13 = load i32, i32* %12, align 8
  %14 = zext i32 %13 to i64
  %15 = sext i32 %4 to i64
  %16 = shl nuw i64 %14, 32
  %17 = or i64 %16, %10
  %18 = sdiv i64 %17, %15
  %19 = shl i64 %18, 32
  %20 = ashr exact i64 %19, 32
  %21 = icmp eq i64 %18, %20
  br i1 %21, label %24, label %22

; <label>:22:                                     ; preds = %block_400478
  %23 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %6, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:24:                                     ; preds = %block_400478
  %25 = srem i64 %17, %15
  %26 = getelementptr inbounds %union.anon, %union.anon* %7, i64 0, i32 0
  %27 = and i64 %18, 4294967295
  store i64 %27, i64* %26, align 8
  %28 = getelementptr inbounds %union.anon, %union.anon* %11, i64 0, i32 0
  %29 = and i64 %25, 4294967295
  store i64 %29, i64* %28, align 8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %30, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %32, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %35, align 1
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %24, %22
  %36 = phi %struct.Memory* [ %23, %22 ], [ %2, %24 ]
  ret %struct.Memory* %36
}

define %struct.Memory* @routine_movslq__edx___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x603880___rdi_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 6305920
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shlq__0x6___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 6
  store i64 %6, i64* %RDI, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 58
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 192
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
  %23 = lshr i64 %3, 57
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0xa90__rbp____r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2704
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__rdi___r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = load i64, i64* %RDI, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %R8, align 8
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

define %struct.Memory* @routine_movl_MINUS0x4__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx____r8__rdi_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %R8, align 8
  %5 = load i64, i64* %RDI, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i32, i32* %ECX, align 4
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 4
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i32*
  store i32 %8, i32* %11, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400d96(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400ce3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jg_.L_400e35(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = xor i1 %13, true
  %15 = and i1 %6, %14
  %16 = zext i1 %15 to i8
  store i8 %16, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %17 = add i64 %3, %.v
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_xorl___rdx__rcx_4____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 3
  store i64 %9, i64* %PC, align 8
  %10 = trunc i64 %3 to i32
  %11 = inttoptr i64 %7 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = xor i32 %12, %10
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RSI, align 8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %15, align 1
  %16 = and i32 %13, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = icmp eq i32 %13, 0
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %23, i8* %24, align 1
  %25 = lshr i32 %13, 31
  %26 = trunc i32 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %28, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %29, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400dab(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl_MINUS0x530__rbp__rdx_4____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -1328
  %8 = add i64 %7, %6
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC, align 8
  %11 = trunc i64 %3 to i32
  %12 = inttoptr i64 %8 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = sub i32 %11, %13
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %RAX, align 8
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

define %struct.Memory* @routine_movl__eax__MINUS0x580__rbp__rdx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -1408
  %8 = add i64 %7, %6
  %9 = load i32, i32* %EAX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x10__MINUS0xc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -16
  %10 = icmp ult i32 %8, 16
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

define %struct.Memory* @routine_jge_.L_400fcb(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movslq__eax___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_cmpl__0xffffffff__MINUS0x5d0__rbp__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -1488
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 8
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = add i32 %11, 1
  %13 = icmp ne i32 %11, -1
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = and i32 %12, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = xor i32 %11, 16
  %23 = xor i32 %12, %22
  %24 = lshr i32 %23, 4
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1
  %28 = icmp eq i32 %12, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %12, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %11, 31
  %35 = xor i32 %34, 1
  %36 = xor i32 %31, %34
  %37 = add nuw nsw i32 %36, %35
  %38 = icmp eq i32 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_400eab(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %3, %.v
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x5d0__rbp__rcx_4____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -1488
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 8
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = sext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x603880___rcx_4____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 6305920
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x4e0__rbp__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -1248
  %8 = add i64 %7, %6
  %9 = load i32, i32* %EAX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400ebf(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x4e0__rbp__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -1248
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 11
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  store i32 0, i32* %10, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_MINUS0x530__rbp__rdx_4____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = load i64, i64* %RDX, align 8
  %7 = shl i64 %6, 2
  %8 = add i64 %5, -1328
  %9 = add i64 %8, %7
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %9 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = sub i32 %4, %13
  %15 = icmp ult i32 %4, %13
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %16, i8* %17, align 1
  %18 = and i32 %14, 255
  %19 = tail call i32 @llvm.ctpop.i32(i32 %18)
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1
  %24 = xor i32 %13, %4
  %25 = xor i32 %24, %14
  %26 = lshr i32 %25, 4
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1
  %30 = icmp eq i32 %14, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %14, 31
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %4, 31
  %37 = lshr i32 %13, 31
  %38 = xor i32 %37, %36
  %39 = xor i32 %33, %36
  %40 = add nuw nsw i32 %39, %38
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jg_.L_400fa3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = xor i1 %13, true
  %15 = and i1 %6, %14
  %16 = zext i1 %15 to i8
  store i8 %16, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %17 = add i64 %3, %.v
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl_MINUS0x4__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %8, %10
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
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

define %struct.Memory* @routine_je_.L_400f90(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %3, %.v
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0____rax__rdx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RDX, align 8
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

define %struct.Memory* @routine_leaq_MINUS0x490__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl_MINUS0x4__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %8, %10
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDX, align 8
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

define %struct.Memory* @routine_movl_MINUS0x5d0__rbp__rsi_4____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RSI, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -1488
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq__edi___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i32, i32* %EDI, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shlq__0x6___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 6
  store i64 %6, i64* %RSI, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 58
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 192
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
  %23 = lshr i64 %3, 57
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__rsi___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RSI, align 8
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

define %struct.Memory* @routine_movslq_MINUS0x4__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movslq___rcx__rsi_4____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RSI, align 8
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

define %struct.Memory* @routine_addl_0x603480___rcx_4____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 6304896
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %3 to i32
  %10 = inttoptr i64 %6 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = add i32 %11, %9
  %13 = zext i32 %12 to i64
  store i64 %13, i64* %RDX, align 8
  %14 = icmp ult i32 %12, %9
  %15 = icmp ult i32 %12, %11
  %16 = or i1 %14, %15
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %17, i8* %18, align 1
  %19 = and i32 %12, 255
  %20 = tail call i32 @llvm.ctpop.i32(i32 %19)
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %23, i8* %24, align 1
  %25 = xor i32 %11, %9
  %26 = xor i32 %25, %12
  %27 = lshr i32 %26, 4
  %28 = trunc i32 %27 to i8
  %29 = and i8 %28, 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %29, i8* %30, align 1
  %31 = icmp eq i32 %12, 0
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %12, 31
  %35 = trunc i32 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %35, i8* %36, align 1
  %37 = lshr i32 %9, 31
  %38 = lshr i32 %11, 31
  %39 = xor i32 %34, %37
  %40 = xor i32 %34, %38
  %41 = add nuw nsw i32 %39, %40
  %42 = icmp eq i32 %41, 2
  %43 = zext i1 %42 to i8
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %43, i8* %44, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0xa94__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -2708
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0xa94__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2708
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_idivl__edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EDI, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %8 = bitcast %union.anon* %7 to i32*
  %9 = load i32, i32* %8, align 8
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %12 = bitcast %union.anon* %11 to i32*
  %13 = load i32, i32* %12, align 8
  %14 = zext i32 %13 to i64
  %15 = sext i32 %4 to i64
  %16 = shl nuw i64 %14, 32
  %17 = or i64 %16, %10
  %18 = sdiv i64 %17, %15
  %19 = shl i64 %18, 32
  %20 = ashr exact i64 %19, 32
  %21 = icmp eq i64 %18, %20
  br i1 %21, label %24, label %22

; <label>:22:                                     ; preds = %block_400478
  %23 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %6, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:24:                                     ; preds = %block_400478
  %25 = srem i64 %17, %15
  %26 = getelementptr inbounds %union.anon, %union.anon* %7, i64 0, i32 0
  %27 = and i64 %18, 4294967295
  store i64 %27, i64* %26, align 8
  %28 = getelementptr inbounds %union.anon, %union.anon* %11, i64 0, i32 0
  %29 = and i64 %25, 4294967295
  store i64 %29, i64* %28, align 8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %30, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %32, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %35, align 1
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %24, %22
  %36 = phi %struct.Memory* [ %23, %22 ], [ %2, %24 ]
  ret %struct.Memory* %36
}

define %struct.Memory* @routine_movl_MINUS0xc__rbp____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__0x1___r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %5 = load i32, i32* %R8D, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = add i32 %5, 1
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %4, align 8
  %10 = icmp eq i32 %5, -1
  %11 = icmp eq i32 %8, 0
  %12 = or i1 %10, %11
  %13 = zext i1 %12 to i8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %13, i8* %14, align 1
  %15 = and i32 %8, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i32 %5, %8
  %22 = lshr i32 %21, 4
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1
  %26 = zext i1 %11 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %8, 31
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %5, 31
  %32 = xor i32 %28, %31
  %33 = add nuw nsw i32 %32, %28
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq__r8d___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %R8D, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_xorl_MINUS0x4e0__rbp__rcx_4____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -1248
  %8 = add i64 %7, %6
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC, align 8
  %11 = trunc i64 %3 to i32
  %12 = inttoptr i64 %8 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = xor i32 %13, %11
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %RDX, align 8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %16, align 1
  %17 = and i32 %14, 255
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = icmp eq i32 %14, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1
  %26 = lshr i32 %14, 31
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %29, align 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %30, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0x4e0__rbp__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -1248
  %8 = add i64 %7, %6
  %9 = load i32, i32* %EDX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400f95(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400ec6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x4e0__rbp__rcx_4____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -1248
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 8
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = sext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x603480___rcx_4____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 6304896
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400fd0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__cl__MINUS0xa95__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -2709
  %6 = load i8, i8* %CL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_400ffe(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_cmpl__0x8__MINUS0x530__rbp__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -1328
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 8
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = add i32 %11, -8
  %13 = icmp ult i32 %11, 8
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = and i32 %12, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = xor i32 %11, %12
  %23 = lshr i32 %22, 4
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i32 %12, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %12, 31
  %31 = trunc i32 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %11, 31
  %34 = xor i32 %30, %33
  %35 = add nuw nsw i32 %34, %33
  %36 = icmp eq i32 %35, 2
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %37, i8* %38, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_setle__dl(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  %8 = icmp ne i8 %7, 0
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %10 = load i8, i8* %9, align 1
  %11 = icmp ne i8 %10, 0
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %13 = load i8, i8* %12, align 1
  %14 = icmp ne i8 %13, 0
  %15 = xor i1 %11, %14
  %16 = or i1 %8, %15
  %17 = zext i1 %16 to i8
  store i8 %17, i8* %DL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__dl__MINUS0xa95__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -2709
  %6 = load i8, i8* %DL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb_MINUS0xa95__rbp____al(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -2709
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %AL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_400ab9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_jg_.L_401758(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = xor i1 %13, true
  %15 = and i1 %6, %14
  %16 = zext i1 %15 to i8
  store i8 %16, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %17 = add i64 %3, %.v
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jg_.L_401086(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = xor i1 %13, true
  %15 = and i1 %6, %14
  %16 = zext i1 %15 to i8
  store i8 %16, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %17 = add i64 %3, %.v
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_40102e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jg_.L_4010d3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = xor i1 %13, true
  %15 = and i1 %6, %14
  %16 = zext i1 %15 to i8
  store i8 %16, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %17 = add i64 %3, %.v
  store i64 %17, i64* %PC, align 8
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

define %struct.Memory* @routine_movl__edx__MINUS0xa80__rbp__rax_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -2688
  %8 = add i64 %7, %6
  %9 = load i32, i32* %EDX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_40108d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0xff__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -255
  %10 = icmp ult i32 %8, 255
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

define %struct.Memory* @routine_jg_.L_4011d3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = xor i1 %13, true
  %15 = and i1 %6, %14
  %16 = zext i1 %15 to i8
  store i8 %16, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %17 = add i64 %3, %.v
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jg_.L_401180(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = xor i1 %13, true
  %15 = and i1 %6, %14
  %16 = zext i1 %15 to i8
  store i8 %16, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %17 = add i64 %3, %.v
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0xffffffff__MINUS0xa80__rbp__rax_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -2688
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 8
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = add i32 %11, 1
  %13 = icmp ne i32 %11, -1
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = and i32 %12, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = xor i32 %11, 16
  %23 = xor i32 %12, %22
  %24 = lshr i32 %23, 4
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1
  %28 = icmp eq i32 %12, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %12, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %11, 31
  %35 = xor i32 %34, 1
  %36 = xor i32 %31, %34
  %37 = add nuw nsw i32 %36, %35
  %38 = icmp eq i32 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_40116d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %3, %.v
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0xa80__rbp__rcx_4____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -2688
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x8__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
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

define %struct.Memory* @routine_movl__eax__MINUS0xa9c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -2716
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0xa9c__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2716
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0xa80__rbp__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -2688
  %8 = add i64 %7, %6
  %9 = load i32, i32* %EDX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0xa80__rbp__rcx_4____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -2688
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 8
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = sext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_xorl_MINUS0x10__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = xor i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDX, align 8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %13, align 1
  %14 = and i32 %11, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1
  %20 = icmp eq i32 %11, 0
  %21 = zext i1 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %21, i8* %22, align 1
  %23 = lshr i32 %11, 31
  %24 = trunc i32 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %24, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_401172(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4010ff(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_4011c0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movl_MINUS0x4__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x5d4__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1492
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__MINUS0x600__rbp__rdx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -1536
  %8 = add i64 %7, %6
  %9 = load i32, i32* %ECX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x620__rbp__rdx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -1568
  %8 = add i64 %7, %6
  %9 = load i32, i32* %EAX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x5d4__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1492
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x5d4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1492
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4011c5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4010e4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_4016e3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_jg_.L_401430(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = xor i1 %13, true
  %15 = and i1 %6, %14
  %16 = zext i1 %15 to i8
  store i8 %16, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %17 = add i64 %3, %.v
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0xffffffff__MINUS0x5d0__rbp__rax_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -1488
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 8
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = add i32 %11, 1
  %13 = icmp ne i32 %11, -1
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = and i32 %12, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = xor i32 %11, 16
  %23 = xor i32 %12, %22
  %24 = lshr i32 %23, 4
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1
  %28 = icmp eq i32 %12, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %12, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %11, 31
  %35 = xor i32 %34, 1
  %36 = xor i32 %31, %34
  %37 = add nuw nsw i32 %36, %35
  %38 = icmp eq i32 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_40127b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %3, %.v
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq___rax__rcx_4____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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
  %11 = sext i32 %10 to i64
  store i64 %11, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_xorl_0x603880___rax_4____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 6305920
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %3 to i32
  %10 = inttoptr i64 %6 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = xor i32 %11, %9
  %13 = zext i32 %12 to i64
  store i64 %13, i64* %RDX, align 8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %14, align 1
  %15 = and i32 %12, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = icmp eq i32 %12, 0
  %22 = zext i1 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %22, i8* %23, align 1
  %24 = lshr i32 %12, 31
  %25 = trunc i32 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %25, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %28, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0x650__rbp__rax_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -1616
  %8 = add i64 %7, %6
  %9 = load i32, i32* %EDX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_40134c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_4012d0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %3, %.v
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_4012d0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movl_0x603880___rax_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 6305920
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__MINUS0x650__rbp__rax_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -1616
  %8 = add i64 %7, %6
  %9 = load i32, i32* %ECX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_401347(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_401333(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_je_.L_401333(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %3, %.v
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x603880___rax_4____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 6305920
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_401342(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x650__rbp__rax_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -1616
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 11
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  store i32 0, i32* %10, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_MINUS0x4__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_jge_.L_401404(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_je_.L_4013f1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %3, %.v
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl_MINUS0x8__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %8, %10
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDX, align 8
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

define %struct.Memory* @routine_addq__rdx___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_subl_MINUS0x8__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8
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

define %struct.Memory* @routine_movslq__esi___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %ESI, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl___rcx__rdx_4____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
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

define %struct.Memory* @routine_addl_MINUS0x5d0__rbp__rcx_4____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -1488
  %8 = add i64 %7, %6
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC, align 8
  %11 = trunc i64 %3 to i32
  %12 = inttoptr i64 %8 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = add i32 %13, %11
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %RSI, align 8
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

define %struct.Memory* @routine_movl__eax__MINUS0xaa0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -2720
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0xaa0__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2720
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_xorl_MINUS0x650__rbp__rcx_4____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -1616
  %8 = add i64 %7, %6
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC, align 8
  %11 = trunc i64 %3 to i32
  %12 = inttoptr i64 %8 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = xor i32 %13, %11
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %RDX, align 8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %16, align 1
  %17 = and i32 %14, 255
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = icmp eq i32 %14, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1
  %26 = lshr i32 %14, 31
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %29, align 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %30, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0x650__rbp__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -1616
  %8 = add i64 %7, %6
  %9 = load i32, i32* %EDX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4013f6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_401353(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x650__rbp__rax_4____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -1616
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 8
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = sext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4011f1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_4014aa(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movl__0x0__MINUS0xa50__rbp__rax_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -2640
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 11
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  store i32 0, i32* %10, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_401488(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %3, %.v
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_0x603080___rax_4____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 6303872
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = sext i32 %9 to i64
  store i64 %10, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__0x603080___rax_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 6303872
  %7 = load i32, i32* %ECX, align 4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %6 to i32*
  store i32 %7, i32* %10, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_401497(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__0x603080___rax_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 6303872
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  store i32 0, i32* %8, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_40149c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_401437(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_4016de(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movslq_MINUS0x620__rbp__rax_4____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -1568
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 8
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = sext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1__MINUS0xa50__rbp__rax_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -2640
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 11
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  store i32 1, i32* %10, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jg_.L_401572(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = xor i1 %13, true
  %15 = and i1 %6, %14
  %16 = zext i1 %15 to i8
  store i8 %16, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %17 = add i64 %3, %.v
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0xffffffff__MINUS0x650__rbp__rax_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -1616
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 8
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = add i32 %11, 1
  %13 = icmp ne i32 %11, -1
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = and i32 %12, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = xor i32 %11, 16
  %23 = xor i32 %12, %22
  %24 = lshr i32 %23, 4
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1
  %28 = icmp eq i32 %12, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %12, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %11, 31
  %35 = xor i32 %34, 1
  %36 = xor i32 %31, %34
  %37 = add nuw nsw i32 %36, %35
  %38 = icmp eq i32 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_40155f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %3, %.v
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x650__rbp__rcx_4____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -1616
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x8__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_imull_MINUS0x600__rbp__rcx_4____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -1536
  %8 = add i64 %7, %6
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %8 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = shl i64 %3, 32
  %14 = ashr exact i64 %13, 32
  %15 = sext i32 %12 to i64
  %16 = mul nsw i64 %15, %14
  %17 = trunc i64 %16 to i32
  %18 = and i64 %16, 4294967295
  store i64 %18, i64* %RSI, align 8
  %19 = shl i64 %16, 32
  %20 = ashr exact i64 %19, 32
  %21 = icmp ne i64 %20, %16
  %22 = zext i1 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %22, i8* %23, align 1
  %24 = and i32 %17, 255
  %25 = tail call i32 @llvm.ctpop.i32(i32 %24)
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  %28 = xor i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %28, i8* %29, align 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %30, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %31, align 1
  %32 = lshr i32 %17, 31
  %33 = trunc i32 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %33, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %22, i8* %35, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0xaa4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -2724
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0xaa4__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2724
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x620__rbp__rcx_4____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -1568
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 8
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = sext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_xorl_MINUS0xa50__rbp__rcx_4____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -2640
  %8 = add i64 %7, %6
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC, align 8
  %11 = trunc i64 %3 to i32
  %12 = inttoptr i64 %8 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = xor i32 %13, %11
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %RDX, align 8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %16, align 1
  %17 = and i32 %14, 255
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = icmp eq i32 %14, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1
  %26 = lshr i32 %14, 31
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %29, align 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %30, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0xa50__rbp__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -2640
  %8 = add i64 %7, %6
  %9 = load i32, i32* %EDX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_401564(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4014e3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0__MINUS0xa50__rbp__rax_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -2640
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 8
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %12, align 1
  %13 = and i32 %11, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %19, align 1
  %20 = icmp eq i32 %11, 0
  %21 = zext i1 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %21, i8* %22, align 1
  %23 = lshr i32 %11, 31
  %24 = trunc i32 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %24, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_4016cb(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %3, %.v
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0xa50__rbp__rax_4____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -2640
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 8
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = sext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__MINUS0xa50__rbp__rax_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -2640
  %8 = add i64 %7, %6
  %9 = load i32, i32* %ECX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_jge_.L_401644(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_je_.L_401631(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %3, %.v
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x620__rbp__rcx_4____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -1568
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x600__rbp__rcx_4____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -1536
  %8 = add i64 %7, %6
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC, align 8
  %11 = trunc i64 %3 to i32
  %12 = inttoptr i64 %8 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = add i32 %13, %11
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %RDX, align 8
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

define %struct.Memory* @routine_movl__eax__MINUS0xaa8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -2728
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0xaa8__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2728
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_xorl__0x1___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = xor i64 %3, 1
  %7 = trunc i64 %6 to i32
  %8 = and i64 %6, 4294967295
  store i64 %8, i64* %RDX, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = and i32 %7, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = icmp eq i32 %7, 0
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %17, i8* %18, align 1
  %19 = lshr i32 %7, 31
  %20 = trunc i32 %19 to i8
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %20, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %23, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x603480___rcx_4____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 6304896
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x10__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16
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

define %struct.Memory* @routine_jmpq_.L_401636(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4015c8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x10__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0xaac__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -2732
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0xaac__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2732
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x620__rbp__rsi_4____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RSI, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -1568
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 8
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = sext i32 %11 to i64
  store i64 %12, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0xa50__rbp__rsi_4____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RSI, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -2640
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__0xff___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 255
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDX, align 8
  %9 = icmp ugt i32 %6, -256
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

define %struct.Memory* @routine_movl_0x603880___rsi_4____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 6305920
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0xa50__rbp__rsi_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RSI, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -2640
  %8 = add i64 %7, %6
  %9 = load i32, i32* %EDX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_xorl_0x603080___rsi_4____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RSI, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 6303872
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %3 to i32
  %10 = inttoptr i64 %6 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = xor i32 %11, %9
  %13 = zext i32 %12 to i64
  store i64 %13, i64* %RDX, align 8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %14, align 1
  %15 = and i32 %12, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = icmp eq i32 %12, 0
  %22 = zext i1 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %22, i8* %23, align 1
  %24 = lshr i32 %12, 31
  %25 = trunc i32 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %25, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %28, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__0x603080___rsi_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RSI, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 6303872
  %7 = load i32, i32* %EDX, align 4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %6 to i32*
  store i32 %7, i32* %10, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4016d0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4014b1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_401753(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_40174e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_je_.L_40172c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %3, %.v
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_40173b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_401740(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4016ea(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4017c8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_4017c3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_je_.L_4017a1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %3, %.v
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4017b0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4017b5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_40175f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_40183d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_401838(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_je_.L_401816(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %3, %.v
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_401825(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_40182a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4017d4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__0xa30___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 2608
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -2609
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
