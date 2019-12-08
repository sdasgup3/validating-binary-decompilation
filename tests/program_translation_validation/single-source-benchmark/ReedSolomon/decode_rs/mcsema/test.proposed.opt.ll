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
  %RSP.i178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %10 = load i64, i64* %PC.i, align 8
  store i64 %8, i64* %RBP.i, align 8
  %11 = add i64 %7, -2616
  store i64 %11, i64* %RSP.i178, align 8
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
  store i64 %41, i64* %PC.i, align 8
  %42 = inttoptr i64 %40 to i32*
  store i32 0, i32* %42, align 4
  %43 = load i64, i64* %RBP.i, align 8
  %44 = add i64 %43, -1496
  %45 = load i64, i64* %PC.i, align 8
  %46 = add i64 %45, 10
  store i64 %46, i64* %PC.i, align 8
  %47 = inttoptr i64 %44 to i32*
  store i32 0, i32* %47, align 4
  %48 = load i64, i64* %RBP.i, align 8
  %49 = add i64 %48, -4
  %50 = load i64, i64* %PC.i, align 8
  %51 = add i64 %50, 7
  store i64 %51, i64* %PC.i, align 8
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
  %59 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %ECX.i1986 = bitcast %union.anon* %54 to i32*
  %.pre = load i64, i64* %PC.i, align 8
  br label %block_.L_400936

block_.L_400936:                                  ; preds = %block_.L_4009ea, %entry
  %60 = phi i64 [ %.pre, %entry ], [ %396, %block_.L_4009ea ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %entry ], [ %MEMORY.1, %block_.L_4009ea ]
  %61 = load i64, i64* %RBP.i, align 8
  %62 = add i64 %61, -4
  %63 = add i64 %60, 4
  store i64 %63, i64* %PC.i, align 8
  %64 = inttoptr i64 %62 to i32*
  %65 = load i32, i32* %64, align 4
  %66 = add i32 %65, -16
  %67 = icmp ult i32 %65, 16
  %68 = zext i1 %67 to i8
  store i8 %68, i8* %14, align 1
  %69 = and i32 %66, 255
  %70 = tail call i32 @llvm.ctpop.i32(i32 %69)
  %71 = trunc i32 %70 to i8
  %72 = and i8 %71, 1
  %73 = xor i8 %72, 1
  store i8 %73, i8* %21, align 1
  %74 = xor i32 %65, 16
  %75 = xor i32 %74, %66
  %76 = lshr i32 %75, 4
  %77 = trunc i32 %76 to i8
  %78 = and i8 %77, 1
  store i8 %78, i8* %27, align 1
  %79 = icmp eq i32 %66, 0
  %80 = zext i1 %79 to i8
  store i8 %80, i8* %30, align 1
  %81 = lshr i32 %66, 31
  %82 = trunc i32 %81 to i8
  store i8 %82, i8* %33, align 1
  %83 = lshr i32 %65, 31
  %84 = xor i32 %81, %83
  %85 = add nuw nsw i32 %84, %83
  %86 = icmp eq i32 %85, 2
  %87 = zext i1 %86 to i8
  store i8 %87, i8* %39, align 1
  %88 = icmp ne i8 %82, 0
  %89 = xor i1 %88, %86
  %.demorgan = or i1 %79, %89
  %.v = select i1 %.demorgan, i64 10, i64 224
  %90 = add i64 %60, %.v
  store i64 %90, i64* %3, align 8
  br i1 %.demorgan, label %block_400940, label %block_.L_400a16

block_400940:                                     ; preds = %block_.L_400936
  %91 = add i64 %90, 4
  store i64 %91, i64* %PC.i, align 8
  %92 = load i32, i32* %64, align 4
  %93 = sext i32 %92 to i64
  store i64 %93, i64* %RAX.i1508, align 8
  %94 = shl nsw i64 %93, 2
  %95 = add i64 %61, -1488
  %96 = add i64 %95, %94
  %97 = add i64 %90, 15
  store i64 %97, i64* %PC.i, align 8
  %98 = inttoptr i64 %96 to i32*
  store i32 0, i32* %98, align 4
  %99 = load i64, i64* %RBP.i, align 8
  %100 = add i64 %99, -8
  %101 = load i64, i64* %PC.i, align 8
  %102 = add i64 %101, 7
  store i64 %102, i64* %PC.i, align 8
  %103 = inttoptr i64 %100 to i32*
  store i32 0, i32* %103, align 4
  %.pre1 = load i64, i64* %PC.i, align 8
  br label %block_.L_400956

block_.L_400956:                                  ; preds = %block_.L_4009bb, %block_400940
  %104 = phi i64 [ %.pre1, %block_400940 ], [ %312, %block_.L_4009bb ]
  %MEMORY.1 = phi %struct.Memory* [ %MEMORY.0, %block_400940 ], [ %MEMORY.2, %block_.L_4009bb ]
  %105 = load i64, i64* %RBP.i, align 8
  %106 = add i64 %105, -8
  %107 = add i64 %104, 7
  store i64 %107, i64* %PC.i, align 8
  %108 = inttoptr i64 %106 to i32*
  %109 = load i32, i32* %108, align 4
  %110 = add i32 %109, -255
  %111 = icmp ult i32 %109, 255
  %112 = zext i1 %111 to i8
  store i8 %112, i8* %14, align 1
  %113 = and i32 %110, 255
  %114 = tail call i32 @llvm.ctpop.i32(i32 %113)
  %115 = trunc i32 %114 to i8
  %116 = and i8 %115, 1
  %117 = xor i8 %116, 1
  store i8 %117, i8* %21, align 1
  %118 = xor i32 %109, 16
  %119 = xor i32 %118, %110
  %120 = lshr i32 %119, 4
  %121 = trunc i32 %120 to i8
  %122 = and i8 %121, 1
  store i8 %122, i8* %27, align 1
  %123 = icmp eq i32 %110, 0
  %124 = zext i1 %123 to i8
  store i8 %124, i8* %30, align 1
  %125 = lshr i32 %110, 31
  %126 = trunc i32 %125 to i8
  store i8 %126, i8* %33, align 1
  %127 = lshr i32 %109, 31
  %128 = xor i32 %125, %127
  %129 = add nuw nsw i32 %128, %127
  %130 = icmp eq i32 %129, 2
  %131 = zext i1 %130 to i8
  store i8 %131, i8* %39, align 1
  %132 = icmp ne i8 %126, 0
  %133 = xor i1 %132, %130
  %.v95 = select i1 %133, i64 13, i64 120
  %134 = add i64 %104, %.v95
  store i64 %134, i64* %3, align 8
  br i1 %133, label %block_400963, label %block_.L_4009ce

block_400963:                                     ; preds = %block_.L_400956
  %135 = add i64 %134, 4
  store i64 %135, i64* %PC.i, align 8
  %136 = load i32, i32* %108, align 4
  %137 = sext i32 %136 to i64
  store i64 %137, i64* %RAX.i1508, align 8
  %138 = shl nsw i64 %137, 2
  %139 = add nsw i64 %138, 6303872
  %140 = add i64 %134, 12
  store i64 %140, i64* %PC.i, align 8
  %141 = inttoptr i64 %139 to i32*
  %142 = load i32, i32* %141, align 4
  %143 = add i32 %142, 1
  %144 = icmp ne i32 %142, -1
  %145 = zext i1 %144 to i8
  store i8 %145, i8* %14, align 1
  %146 = and i32 %143, 255
  %147 = tail call i32 @llvm.ctpop.i32(i32 %146)
  %148 = trunc i32 %147 to i8
  %149 = and i8 %148, 1
  %150 = xor i8 %149, 1
  store i8 %150, i8* %21, align 1
  %151 = xor i32 %142, 16
  %152 = xor i32 %143, %151
  %153 = lshr i32 %152, 4
  %154 = trunc i32 %153 to i8
  %155 = and i8 %154, 1
  store i8 %155, i8* %27, align 1
  %156 = icmp eq i32 %143, 0
  %157 = zext i1 %156 to i8
  store i8 %157, i8* %30, align 1
  %158 = lshr i32 %143, 31
  %159 = trunc i32 %158 to i8
  store i8 %159, i8* %33, align 1
  %160 = lshr i32 %142, 31
  %161 = xor i32 %160, 1
  %162 = xor i32 %158, %160
  %163 = add nuw nsw i32 %162, %161
  %164 = icmp eq i32 %163, 2
  %165 = zext i1 %164 to i8
  store i8 %165, i8* %39, align 1
  %.v96 = select i1 %156, i64 88, i64 18
  %166 = add i64 %134, %.v96
  store i64 %166, i64* %3, align 8
  br i1 %156, label %block_.L_4009bb, label %block_400975

block_400975:                                     ; preds = %block_400963
  store i64 255, i64* %RAX.i1508, align 8
  %167 = add i64 %166, 9
  store i64 %167, i64* %PC.i, align 8
  %168 = load i32, i32* %108, align 4
  %169 = sext i32 %168 to i64
  store i64 %169, i64* %RCX.i2066, align 8
  %170 = shl nsw i64 %169, 2
  %171 = add nsw i64 %170, 6303872
  %172 = add i64 %166, 16
  store i64 %172, i64* %PC.i, align 8
  %173 = inttoptr i64 %171 to i32*
  %174 = load i32, i32* %173, align 4
  %175 = zext i32 %174 to i64
  store i64 %175, i64* %RDX.i2064, align 8
  %176 = add i64 %105, -4
  %177 = add i64 %166, 19
  store i64 %177, i64* %PC.i, align 8
  %178 = inttoptr i64 %176 to i32*
  %179 = load i32, i32* %178, align 4
  %180 = zext i32 %179 to i64
  store i64 %180, i64* %RSI.i2060, align 8
  %181 = add i64 %166, 23
  store i64 %181, i64* %PC.i, align 8
  %182 = load i32, i32* %108, align 4
  %183 = sext i32 %179 to i64
  %184 = sext i32 %182 to i64
  %185 = mul nsw i64 %184, %183
  %186 = and i64 %185, 4294967295
  store i64 %186, i64* %RSI.i2060, align 8
  %187 = trunc i64 %185 to i32
  %188 = add i32 %187, %174
  %189 = zext i32 %188 to i64
  store i64 %189, i64* %RDX.i2064, align 8
  %190 = icmp ult i32 %188, %174
  %191 = icmp ult i32 %188, %187
  %192 = or i1 %190, %191
  %193 = zext i1 %192 to i8
  store i8 %193, i8* %14, align 1
  %194 = and i32 %188, 255
  %195 = tail call i32 @llvm.ctpop.i32(i32 %194)
  %196 = trunc i32 %195 to i8
  %197 = and i8 %196, 1
  %198 = xor i8 %197, 1
  store i8 %198, i8* %21, align 1
  %199 = xor i64 %185, %175
  %200 = trunc i64 %199 to i32
  %201 = xor i32 %200, %188
  %202 = lshr i32 %201, 4
  %203 = trunc i32 %202 to i8
  %204 = and i8 %203, 1
  store i8 %204, i8* %27, align 1
  %205 = icmp eq i32 %188, 0
  %206 = zext i1 %205 to i8
  store i8 %206, i8* %30, align 1
  %207 = lshr i32 %188, 31
  %208 = trunc i32 %207 to i8
  store i8 %208, i8* %33, align 1
  %209 = lshr i32 %174, 31
  %210 = lshr i32 %187, 31
  %211 = xor i32 %207, %209
  %212 = xor i32 %207, %210
  %213 = add nuw nsw i32 %211, %212
  %214 = icmp eq i32 %213, 2
  %215 = zext i1 %214 to i8
  store i8 %215, i8* %39, align 1
  %216 = add i64 %105, -2692
  %217 = add i64 %166, 31
  store i64 %217, i64* %PC.i, align 8
  %218 = inttoptr i64 %216 to i32*
  store i32 255, i32* %218, align 4
  %219 = load i32, i32* %EDX.i2048, align 4
  %220 = zext i32 %219 to i64
  %221 = load i64, i64* %PC.i, align 8
  store i64 %220, i64* %RAX.i1508, align 8
  %222 = sext i32 %219 to i64
  %223 = lshr i64 %222, 32
  store i64 %223, i64* %57, align 8
  %224 = load i64, i64* %RBP.i, align 8
  %225 = add i64 %224, -2692
  %226 = add i64 %221, 9
  store i64 %226, i64* %PC.i, align 8
  %227 = inttoptr i64 %225 to i32*
  %228 = load i32, i32* %227, align 4
  %229 = zext i32 %228 to i64
  store i64 %229, i64* %RSI.i2060, align 8
  %230 = add i64 %221, 11
  store i64 %230, i64* %PC.i, align 8
  %231 = zext i32 %219 to i64
  %232 = sext i32 %228 to i64
  %233 = shl nuw i64 %223, 32
  %234 = or i64 %233, %231
  %235 = sdiv i64 %234, %232
  %236 = shl i64 %235, 32
  %237 = ashr exact i64 %236, 32
  %238 = icmp eq i64 %235, %237
  br i1 %238, label %241, label %239

; <label>:239:                                    ; preds = %block_400975
  %240 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %230, %struct.Memory* %MEMORY.1)
  %.pre2 = load i32, i32* %EDX.i2048, align 4
  %.pre3 = load i64, i64* %PC.i, align 8
  %.pre4 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__esi.exit2039

; <label>:241:                                    ; preds = %block_400975
  %242 = srem i64 %234, %232
  %243 = and i64 %235, 4294967295
  store i64 %243, i64* %58, align 8
  %244 = and i64 %242, 4294967295
  store i64 %244, i64* %59, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %245 = trunc i64 %242 to i32
  br label %routine_idivl__esi.exit2039

routine_idivl__esi.exit2039:                      ; preds = %241, %239
  %246 = phi i64 [ %.pre4, %239 ], [ %224, %241 ]
  %247 = phi i64 [ %.pre3, %239 ], [ %230, %241 ]
  %248 = phi i32 [ %.pre2, %239 ], [ %245, %241 ]
  %249 = phi %struct.Memory* [ %240, %239 ], [ %MEMORY.1, %241 ]
  %250 = sext i32 %248 to i64
  store i64 %250, i64* %RCX.i2066, align 8
  %251 = shl nsw i64 %250, 2
  %252 = add nsw i64 %251, 6305920
  %253 = add i64 %247, 10
  store i64 %253, i64* %PC.i, align 8
  %254 = inttoptr i64 %252 to i32*
  %255 = load i32, i32* %254, align 4
  %256 = zext i32 %255 to i64
  store i64 %256, i64* %RDX.i2064, align 8
  %257 = add i64 %246, -4
  %258 = add i64 %247, 14
  store i64 %258, i64* %PC.i, align 8
  %259 = inttoptr i64 %257 to i32*
  %260 = load i32, i32* %259, align 4
  %261 = sext i32 %260 to i64
  store i64 %261, i64* %RCX.i2066, align 8
  %262 = shl nsw i64 %261, 2
  %263 = add i64 %246, -1488
  %264 = add i64 %263, %262
  %265 = add i64 %247, 21
  store i64 %265, i64* %PC.i, align 8
  %266 = inttoptr i64 %264 to i32*
  %267 = load i32, i32* %266, align 4
  %268 = xor i32 %267, %255
  %269 = zext i32 %268 to i64
  store i64 %269, i64* %RDX.i2064, align 8
  store i8 0, i8* %14, align 1
  %270 = and i32 %268, 255
  %271 = tail call i32 @llvm.ctpop.i32(i32 %270)
  %272 = trunc i32 %271 to i8
  %273 = and i8 %272, 1
  %274 = xor i8 %273, 1
  store i8 %274, i8* %21, align 1
  %275 = icmp eq i32 %268, 0
  %276 = zext i1 %275 to i8
  store i8 %276, i8* %30, align 1
  %277 = lshr i32 %268, 31
  %278 = trunc i32 %277 to i8
  store i8 %278, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %279 = add i64 %247, 28
  store i64 %279, i64* %PC.i, align 8
  store i32 %268, i32* %266, align 4
  %.pre5 = load i64, i64* %PC.i, align 8
  %.pre6 = load i64, i64* %RBP.i, align 8
  br label %block_.L_4009bb

block_.L_4009bb:                                  ; preds = %routine_idivl__esi.exit2039, %block_400963
  %280 = phi i64 [ %105, %block_400963 ], [ %.pre6, %routine_idivl__esi.exit2039 ]
  %281 = phi i64 [ %166, %block_400963 ], [ %.pre5, %routine_idivl__esi.exit2039 ]
  %MEMORY.2 = phi %struct.Memory* [ %MEMORY.1, %block_400963 ], [ %249, %routine_idivl__esi.exit2039 ]
  %282 = add i64 %280, -8
  %283 = add i64 %281, 8
  store i64 %283, i64* %PC.i, align 8
  %284 = inttoptr i64 %282 to i32*
  %285 = load i32, i32* %284, align 4
  %286 = add i32 %285, 1
  %287 = zext i32 %286 to i64
  store i64 %287, i64* %RAX.i1508, align 8
  %288 = icmp eq i32 %285, -1
  %289 = icmp eq i32 %286, 0
  %290 = or i1 %288, %289
  %291 = zext i1 %290 to i8
  store i8 %291, i8* %14, align 1
  %292 = and i32 %286, 255
  %293 = tail call i32 @llvm.ctpop.i32(i32 %292)
  %294 = trunc i32 %293 to i8
  %295 = and i8 %294, 1
  %296 = xor i8 %295, 1
  store i8 %296, i8* %21, align 1
  %297 = xor i32 %285, %286
  %298 = lshr i32 %297, 4
  %299 = trunc i32 %298 to i8
  %300 = and i8 %299, 1
  store i8 %300, i8* %27, align 1
  %301 = icmp eq i32 %286, 0
  %302 = zext i1 %301 to i8
  store i8 %302, i8* %30, align 1
  %303 = lshr i32 %286, 31
  %304 = trunc i32 %303 to i8
  store i8 %304, i8* %33, align 1
  %305 = lshr i32 %285, 31
  %306 = xor i32 %303, %305
  %307 = add nuw nsw i32 %306, %303
  %308 = icmp eq i32 %307, 2
  %309 = zext i1 %308 to i8
  store i8 %309, i8* %39, align 1
  %310 = add i64 %281, 14
  store i64 %310, i64* %PC.i, align 8
  store i32 %286, i32* %284, align 4
  %311 = load i64, i64* %PC.i, align 8
  %312 = add i64 %311, -115
  store i64 %312, i64* %3, align 8
  br label %block_.L_400956

block_.L_4009ce:                                  ; preds = %block_.L_400956
  %313 = add i64 %105, -4
  %314 = add i64 %134, 4
  store i64 %314, i64* %PC.i, align 8
  %315 = inttoptr i64 %313 to i32*
  %316 = load i32, i32* %315, align 4
  %317 = sext i32 %316 to i64
  store i64 %317, i64* %RAX.i1508, align 8
  %318 = shl nsw i64 %317, 2
  %319 = add i64 %105, -1488
  %320 = add i64 %319, %318
  %321 = add i64 %134, 12
  store i64 %321, i64* %PC.i, align 8
  %322 = inttoptr i64 %320 to i32*
  %323 = load i32, i32* %322, align 4
  store i8 0, i8* %14, align 1
  %324 = and i32 %323, 255
  %325 = tail call i32 @llvm.ctpop.i32(i32 %324)
  %326 = trunc i32 %325 to i8
  %327 = and i8 %326, 1
  %328 = xor i8 %327, 1
  store i8 %328, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %329 = icmp eq i32 %323, 0
  %330 = zext i1 %329 to i8
  store i8 %330, i8* %30, align 1
  %331 = lshr i32 %323, 31
  %332 = trunc i32 %331 to i8
  store i8 %332, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v97 = select i1 %329, i64 28, i64 18
  %333 = add i64 %134, %.v97
  store i64 %333, i64* %3, align 8
  br i1 %329, label %block_.L_4009ea, label %block_4009e0

block_4009e0:                                     ; preds = %block_.L_4009ce
  %334 = add i64 %105, -1496
  %335 = add i64 %333, 10
  store i64 %335, i64* %PC.i, align 8
  %336 = inttoptr i64 %334 to i32*
  store i32 1, i32* %336, align 4
  %.pre7 = load i64, i64* %RBP.i, align 8
  %.pre8 = load i64, i64* %PC.i, align 8
  br label %block_.L_4009ea

block_.L_4009ea:                                  ; preds = %block_4009e0, %block_.L_4009ce
  %337 = phi i64 [ %.pre8, %block_4009e0 ], [ %333, %block_.L_4009ce ]
  %338 = phi i64 [ %.pre7, %block_4009e0 ], [ %105, %block_.L_4009ce ]
  %339 = add i64 %338, -4
  %340 = add i64 %337, 4
  store i64 %340, i64* %PC.i, align 8
  %341 = inttoptr i64 %339 to i32*
  %342 = load i32, i32* %341, align 4
  %343 = sext i32 %342 to i64
  store i64 %343, i64* %RAX.i1508, align 8
  %344 = shl nsw i64 %343, 2
  %345 = add i64 %338, -1488
  %346 = add i64 %345, %344
  %347 = add i64 %337, 12
  store i64 %347, i64* %PC.i, align 8
  %348 = inttoptr i64 %346 to i32*
  %349 = load i32, i32* %348, align 4
  %350 = sext i32 %349 to i64
  store i64 %350, i64* %RAX.i1508, align 8
  %351 = shl nsw i64 %350, 2
  %352 = add nsw i64 %351, 6304896
  %353 = add i64 %337, 19
  store i64 %353, i64* %PC.i, align 8
  %354 = inttoptr i64 %352 to i32*
  %355 = load i32, i32* %354, align 4
  %356 = zext i32 %355 to i64
  store i64 %356, i64* %RCX.i2066, align 8
  %357 = add i64 %337, 23
  store i64 %357, i64* %PC.i, align 8
  %358 = load i32, i32* %341, align 4
  %359 = sext i32 %358 to i64
  store i64 %359, i64* %RAX.i1508, align 8
  %360 = shl nsw i64 %359, 2
  %361 = add i64 %345, %360
  %362 = add i64 %337, 30
  store i64 %362, i64* %PC.i, align 8
  %363 = inttoptr i64 %361 to i32*
  store i32 %355, i32* %363, align 4
  %364 = load i64, i64* %RBP.i, align 8
  %365 = add i64 %364, -4
  %366 = load i64, i64* %PC.i, align 8
  %367 = add i64 %366, 3
  store i64 %367, i64* %PC.i, align 8
  %368 = inttoptr i64 %365 to i32*
  %369 = load i32, i32* %368, align 4
  %370 = add i32 %369, 1
  %371 = zext i32 %370 to i64
  store i64 %371, i64* %RAX.i1508, align 8
  %372 = icmp eq i32 %369, -1
  %373 = icmp eq i32 %370, 0
  %374 = or i1 %372, %373
  %375 = zext i1 %374 to i8
  store i8 %375, i8* %14, align 1
  %376 = and i32 %370, 255
  %377 = tail call i32 @llvm.ctpop.i32(i32 %376)
  %378 = trunc i32 %377 to i8
  %379 = and i8 %378, 1
  %380 = xor i8 %379, 1
  store i8 %380, i8* %21, align 1
  %381 = xor i32 %369, %370
  %382 = lshr i32 %381, 4
  %383 = trunc i32 %382 to i8
  %384 = and i8 %383, 1
  store i8 %384, i8* %27, align 1
  %385 = icmp eq i32 %370, 0
  %386 = zext i1 %385 to i8
  store i8 %386, i8* %30, align 1
  %387 = lshr i32 %370, 31
  %388 = trunc i32 %387 to i8
  store i8 %388, i8* %33, align 1
  %389 = lshr i32 %369, 31
  %390 = xor i32 %387, %389
  %391 = add nuw nsw i32 %390, %387
  %392 = icmp eq i32 %391, 2
  %393 = zext i1 %392 to i8
  store i8 %393, i8* %39, align 1
  %394 = add i64 %366, 9
  store i64 %394, i64* %PC.i, align 8
  store i32 %370, i32* %368, align 4
  %395 = load i64, i64* %PC.i, align 8
  %396 = add i64 %395, -219
  store i64 %396, i64* %3, align 8
  br label %block_.L_400936

block_.L_400a16:                                  ; preds = %block_.L_400936
  %397 = add i64 %61, -1496
  %398 = add i64 %90, 7
  store i64 %398, i64* %PC.i, align 8
  %399 = inttoptr i64 %397 to i32*
  %400 = load i32, i32* %399, align 4
  store i8 0, i8* %14, align 1
  %401 = and i32 %400, 255
  %402 = tail call i32 @llvm.ctpop.i32(i32 %401)
  %403 = trunc i32 %402 to i8
  %404 = and i8 %403, 1
  %405 = xor i8 %404, 1
  store i8 %405, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %406 = icmp eq i32 %400, 0
  %407 = zext i1 %406 to i8
  store i8 %407, i8* %30, align 1
  %408 = lshr i32 %400, 31
  %409 = trunc i32 %408 to i8
  store i8 %409, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v98 = select i1 %406, i64 3511, i64 13
  %410 = add i64 %90, %.v98
  store i64 %410, i64* %3, align 8
  br i1 %406, label %block_.L_4017cd, label %block_400a23

block_400a23:                                     ; preds = %block_.L_400a16
  %411 = add i64 %61, -1248
  %412 = add i64 %410, 10
  store i64 %412, i64* %PC.i, align 8
  %413 = inttoptr i64 %411 to i32*
  store i32 0, i32* %413, align 4
  %414 = load i64, i64* %RBP.i, align 8
  %415 = add i64 %414, -1484
  %416 = load i64, i64* %PC.i, align 8
  %417 = add i64 %416, 6
  store i64 %417, i64* %PC.i, align 8
  %418 = inttoptr i64 %415 to i32*
  %419 = load i32, i32* %418, align 4
  %420 = zext i32 %419 to i64
  store i64 %420, i64* %RAX.i1508, align 8
  %421 = add i64 %414, -1244
  %422 = add i64 %416, 12
  store i64 %422, i64* %PC.i, align 8
  %423 = inttoptr i64 %421 to i32*
  store i32 %419, i32* %423, align 4
  %424 = load i64, i64* %RBP.i, align 8
  %425 = add i64 %424, -1168
  %426 = load i64, i64* %PC.i, align 8
  %427 = add i64 %426, 10
  store i64 %427, i64* %PC.i, align 8
  %428 = inttoptr i64 %425 to i32*
  store i32 0, i32* %428, align 4
  %429 = load i64, i64* %RBP.i, align 8
  %430 = add i64 %429, -1104
  %431 = load i64, i64* %PC.i, align 8
  %432 = add i64 %431, 10
  store i64 %432, i64* %PC.i, align 8
  %433 = inttoptr i64 %430 to i32*
  store i32 1, i32* %433, align 4
  %434 = load i64, i64* %RBP.i, align 8
  %435 = add i64 %434, -4
  %436 = load i64, i64* %PC.i, align 8
  %437 = add i64 %436, 7
  store i64 %437, i64* %PC.i, align 8
  %438 = inttoptr i64 %435 to i32*
  store i32 1, i32* %438, align 4
  %.pre9 = load i64, i64* %PC.i, align 8
  br label %block_.L_400a54

block_.L_400a54:                                  ; preds = %block_400a5e, %block_400a23
  %439 = phi i64 [ %522, %block_400a5e ], [ %.pre9, %block_400a23 ]
  %440 = load i64, i64* %RBP.i, align 8
  %441 = add i64 %440, -4
  %442 = add i64 %439, 4
  store i64 %442, i64* %PC.i, align 8
  %443 = inttoptr i64 %441 to i32*
  %444 = load i32, i32* %443, align 4
  %445 = add i32 %444, -16
  %446 = icmp ult i32 %444, 16
  %447 = zext i1 %446 to i8
  store i8 %447, i8* %14, align 1
  %448 = and i32 %445, 255
  %449 = tail call i32 @llvm.ctpop.i32(i32 %448)
  %450 = trunc i32 %449 to i8
  %451 = and i8 %450, 1
  %452 = xor i8 %451, 1
  store i8 %452, i8* %21, align 1
  %453 = xor i32 %444, 16
  %454 = xor i32 %453, %445
  %455 = lshr i32 %454, 4
  %456 = trunc i32 %455 to i8
  %457 = and i8 %456, 1
  store i8 %457, i8* %27, align 1
  %458 = icmp eq i32 %445, 0
  %459 = zext i1 %458 to i8
  store i8 %459, i8* %30, align 1
  %460 = lshr i32 %445, 31
  %461 = trunc i32 %460 to i8
  store i8 %461, i8* %33, align 1
  %462 = lshr i32 %444, 31
  %463 = xor i32 %460, %462
  %464 = add nuw nsw i32 %463, %462
  %465 = icmp eq i32 %464, 2
  %466 = zext i1 %465 to i8
  store i8 %466, i8* %39, align 1
  %467 = icmp ne i8 %461, 0
  %468 = xor i1 %467, %465
  %.v99 = select i1 %468, i64 10, i64 54
  %469 = add i64 %439, %.v99
  store i64 %469, i64* %3, align 8
  br i1 %468, label %block_400a5e, label %block_.L_400a8a

block_400a5e:                                     ; preds = %block_.L_400a54
  %470 = add i64 %469, 4
  store i64 %470, i64* %PC.i, align 8
  %471 = load i32, i32* %443, align 4
  %472 = sext i32 %471 to i64
  store i64 %472, i64* %RAX.i1508, align 8
  %473 = shl nsw i64 %472, 2
  %474 = add i64 %440, -1168
  %475 = add i64 %474, %473
  %476 = add i64 %469, 15
  store i64 %476, i64* %PC.i, align 8
  %477 = inttoptr i64 %475 to i32*
  store i32 -1, i32* %477, align 4
  %478 = load i64, i64* %RBP.i, align 8
  %479 = add i64 %478, -4
  %480 = load i64, i64* %PC.i, align 8
  %481 = add i64 %480, 4
  store i64 %481, i64* %PC.i, align 8
  %482 = inttoptr i64 %479 to i32*
  %483 = load i32, i32* %482, align 4
  %484 = sext i32 %483 to i64
  store i64 %484, i64* %RAX.i1508, align 8
  %485 = shl nsw i64 %484, 2
  %486 = add i64 %478, -1104
  %487 = add i64 %486, %485
  %488 = add i64 %480, 15
  store i64 %488, i64* %PC.i, align 8
  %489 = inttoptr i64 %487 to i32*
  store i32 0, i32* %489, align 4
  %490 = load i64, i64* %RBP.i, align 8
  %491 = add i64 %490, -4
  %492 = load i64, i64* %PC.i, align 8
  %493 = add i64 %492, 3
  store i64 %493, i64* %PC.i, align 8
  %494 = inttoptr i64 %491 to i32*
  %495 = load i32, i32* %494, align 4
  %496 = add i32 %495, 1
  %497 = zext i32 %496 to i64
  store i64 %497, i64* %RAX.i1508, align 8
  %498 = icmp eq i32 %495, -1
  %499 = icmp eq i32 %496, 0
  %500 = or i1 %498, %499
  %501 = zext i1 %500 to i8
  store i8 %501, i8* %14, align 1
  %502 = and i32 %496, 255
  %503 = tail call i32 @llvm.ctpop.i32(i32 %502)
  %504 = trunc i32 %503 to i8
  %505 = and i8 %504, 1
  %506 = xor i8 %505, 1
  store i8 %506, i8* %21, align 1
  %507 = xor i32 %495, %496
  %508 = lshr i32 %507, 4
  %509 = trunc i32 %508 to i8
  %510 = and i8 %509, 1
  store i8 %510, i8* %27, align 1
  %511 = icmp eq i32 %496, 0
  %512 = zext i1 %511 to i8
  store i8 %512, i8* %30, align 1
  %513 = lshr i32 %496, 31
  %514 = trunc i32 %513 to i8
  store i8 %514, i8* %33, align 1
  %515 = lshr i32 %495, 31
  %516 = xor i32 %513, %515
  %517 = add nuw nsw i32 %516, %513
  %518 = icmp eq i32 %517, 2
  %519 = zext i1 %518 to i8
  store i8 %519, i8* %39, align 1
  %520 = add i64 %492, 9
  store i64 %520, i64* %PC.i, align 8
  store i32 %496, i32* %494, align 4
  %521 = load i64, i64* %PC.i, align 8
  %522 = add i64 %521, -49
  store i64 %522, i64* %3, align 8
  br label %block_.L_400a54

block_.L_400a8a:                                  ; preds = %block_.L_400a54
  %523 = add i64 %440, -1328
  %524 = add i64 %469, 10
  store i64 %524, i64* %PC.i, align 8
  %525 = inttoptr i64 %523 to i32*
  store i32 0, i32* %525, align 4
  %526 = load i64, i64* %RBP.i, align 8
  %527 = add i64 %526, -1324
  %528 = load i64, i64* %PC.i, align 8
  %529 = add i64 %528, 10
  store i64 %529, i64* %PC.i, align 8
  %530 = inttoptr i64 %527 to i32*
  store i32 0, i32* %530, align 4
  %531 = load i64, i64* %RBP.i, align 8
  %532 = add i64 %531, -1408
  %533 = load i64, i64* %PC.i, align 8
  %534 = add i64 %533, 10
  store i64 %534, i64* %PC.i, align 8
  %535 = inttoptr i64 %532 to i32*
  store i32 -1, i32* %535, align 4
  %536 = load i64, i64* %RBP.i, align 8
  %537 = add i64 %536, -1404
  %538 = load i64, i64* %PC.i, align 8
  %539 = add i64 %538, 10
  store i64 %539, i64* %PC.i, align 8
  %540 = inttoptr i64 %537 to i32*
  store i32 0, i32* %540, align 4
  %541 = load i64, i64* %RBP.i, align 8
  %542 = add i64 %541, -12
  %543 = load i64, i64* %PC.i, align 8
  %544 = add i64 %543, 7
  store i64 %544, i64* %PC.i, align 8
  %545 = inttoptr i64 %542 to i32*
  store i32 0, i32* %545, align 4
  %AL.i1776 = bitcast %union.anon* %53 to i8*
  %CL.i1777 = bitcast %union.anon* %54 to i8*
  %RDI.i1529 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %546 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8.i1487 = getelementptr inbounds %union.anon, %union.anon* %546, i64 0, i32 0
  %DL.i1081 = bitcast %union.anon* %55 to i8*
  %547 = getelementptr inbounds %union.anon, %union.anon* %546, i64 0, i32 0
  %.pre10 = load i64, i64* %RBP.i, align 8
  %.pre11 = load i64, i64* %PC.i, align 8
  br label %block_.L_400ab9

block_.L_400ab9:                                  ; preds = %block_.L_400ffe, %block_.L_400a8a
  %548 = phi i64 [ %.pre11, %block_.L_400a8a ], [ %3195, %block_.L_400ffe ]
  %549 = phi i64 [ %.pre10, %block_.L_400a8a ], [ %3183, %block_.L_400ffe ]
  %MEMORY.5 = phi %struct.Memory* [ %MEMORY.0, %block_.L_400a8a ], [ %MEMORY.21, %block_.L_400ffe ]
  %550 = add i64 %549, -12
  %551 = add i64 %548, 3
  store i64 %551, i64* %PC.i, align 8
  %552 = inttoptr i64 %550 to i32*
  %553 = load i32, i32* %552, align 4
  %554 = add i32 %553, 1
  %555 = zext i32 %554 to i64
  store i64 %555, i64* %RAX.i1508, align 8
  %556 = icmp eq i32 %553, -1
  %557 = icmp eq i32 %554, 0
  %558 = or i1 %556, %557
  %559 = zext i1 %558 to i8
  store i8 %559, i8* %14, align 1
  %560 = and i32 %554, 255
  %561 = tail call i32 @llvm.ctpop.i32(i32 %560)
  %562 = trunc i32 %561 to i8
  %563 = and i8 %562, 1
  %564 = xor i8 %563, 1
  store i8 %564, i8* %21, align 1
  %565 = xor i32 %553, %554
  %566 = lshr i32 %565, 4
  %567 = trunc i32 %566 to i8
  %568 = and i8 %567, 1
  store i8 %568, i8* %27, align 1
  %569 = icmp eq i32 %554, 0
  %570 = zext i1 %569 to i8
  store i8 %570, i8* %30, align 1
  %571 = lshr i32 %554, 31
  %572 = trunc i32 %571 to i8
  store i8 %572, i8* %33, align 1
  %573 = lshr i32 %553, 31
  %574 = xor i32 %571, %573
  %575 = add nuw nsw i32 %574, %571
  %576 = icmp eq i32 %575, 2
  %577 = zext i1 %576 to i8
  store i8 %577, i8* %39, align 1
  %578 = add i64 %548, 9
  store i64 %578, i64* %PC.i, align 8
  store i32 %554, i32* %552, align 4
  %579 = load i64, i64* %RBP.i, align 8
  %580 = add i64 %579, -12
  %581 = load i64, i64* %PC.i, align 8
  %582 = add i64 %581, 4
  store i64 %582, i64* %PC.i, align 8
  %583 = inttoptr i64 %580 to i32*
  %584 = load i32, i32* %583, align 4
  %585 = sext i32 %584 to i64
  store i64 %585, i64* %RCX.i2066, align 8
  %586 = shl nsw i64 %585, 2
  %587 = add i64 %579, -1248
  %588 = add i64 %587, %586
  %589 = add i64 %581, 12
  store i64 %589, i64* %PC.i, align 8
  %590 = inttoptr i64 %588 to i32*
  %591 = load i32, i32* %590, align 4
  %592 = add i32 %591, 1
  %593 = icmp ne i32 %591, -1
  %594 = zext i1 %593 to i8
  store i8 %594, i8* %14, align 1
  %595 = and i32 %592, 255
  %596 = tail call i32 @llvm.ctpop.i32(i32 %595)
  %597 = trunc i32 %596 to i8
  %598 = and i8 %597, 1
  %599 = xor i8 %598, 1
  store i8 %599, i8* %21, align 1
  %600 = xor i32 %591, 16
  %601 = xor i32 %592, %600
  %602 = lshr i32 %601, 4
  %603 = trunc i32 %602 to i8
  %604 = and i8 %603, 1
  store i8 %604, i8* %27, align 1
  %605 = icmp eq i32 %592, 0
  %606 = zext i1 %605 to i8
  store i8 %606, i8* %30, align 1
  %607 = lshr i32 %592, 31
  %608 = trunc i32 %607 to i8
  store i8 %608, i8* %33, align 1
  %609 = lshr i32 %591, 31
  %610 = xor i32 %609, 1
  %611 = xor i32 %607, %609
  %612 = add nuw nsw i32 %611, %610
  %613 = icmp eq i32 %612, 2
  %614 = zext i1 %613 to i8
  store i8 %614, i8* %39, align 1
  %.v100 = select i1 %605, i64 18, i64 192
  %615 = add i64 %581, %.v100
  store i64 %615, i64* %3, align 8
  br i1 %605, label %block_400ad4, label %block_.L_400b82

block_400ad4:                                     ; preds = %block_.L_400ab9
  %616 = add i64 %615, 4
  store i64 %616, i64* %PC.i, align 8
  %617 = load i32, i32* %583, align 4
  %618 = sext i32 %617 to i64
  store i64 %618, i64* %RAX.i1508, align 8
  %619 = shl nsw i64 %618, 2
  %620 = add i64 %579, -1328
  %621 = add i64 %620, %619
  %622 = add i64 %615, 11
  store i64 %622, i64* %PC.i, align 8
  %623 = inttoptr i64 %621 to i32*
  %624 = load i32, i32* %623, align 4
  %625 = zext i32 %624 to i64
  store i64 %625, i64* %RCX.i2066, align 8
  %626 = add i64 %615, 14
  store i64 %626, i64* %PC.i, align 8
  %627 = load i32, i32* %583, align 4
  %628 = add i32 %627, 1
  %629 = zext i32 %628 to i64
  store i64 %629, i64* %RDX.i2064, align 8
  %630 = icmp eq i32 %627, -1
  %631 = icmp eq i32 %628, 0
  %632 = or i1 %630, %631
  %633 = zext i1 %632 to i8
  store i8 %633, i8* %14, align 1
  %634 = and i32 %628, 255
  %635 = tail call i32 @llvm.ctpop.i32(i32 %634)
  %636 = trunc i32 %635 to i8
  %637 = and i8 %636, 1
  %638 = xor i8 %637, 1
  store i8 %638, i8* %21, align 1
  %639 = xor i32 %627, %628
  %640 = lshr i32 %639, 4
  %641 = trunc i32 %640 to i8
  %642 = and i8 %641, 1
  store i8 %642, i8* %27, align 1
  %643 = icmp eq i32 %628, 0
  %644 = zext i1 %643 to i8
  store i8 %644, i8* %30, align 1
  %645 = lshr i32 %628, 31
  %646 = trunc i32 %645 to i8
  store i8 %646, i8* %33, align 1
  %647 = lshr i32 %627, 31
  %648 = xor i32 %645, %647
  %649 = add nuw nsw i32 %648, %645
  %650 = icmp eq i32 %649, 2
  %651 = zext i1 %650 to i8
  store i8 %651, i8* %39, align 1
  %652 = sext i32 %628 to i64
  store i64 %652, i64* %RAX.i1508, align 8
  %653 = shl nsw i64 %652, 2
  %654 = add i64 %620, %653
  %655 = add i64 %615, 27
  store i64 %655, i64* %PC.i, align 8
  %656 = inttoptr i64 %654 to i32*
  store i32 %624, i32* %656, align 4
  %657 = load i64, i64* %RBP.i, align 8
  %658 = add i64 %657, -4
  %659 = load i64, i64* %PC.i, align 8
  %660 = add i64 %659, 7
  store i64 %660, i64* %PC.i, align 8
  %661 = inttoptr i64 %658 to i32*
  store i32 0, i32* %661, align 4
  %.pre12 = load i64, i64* %PC.i, align 8
  br label %block_.L_400af6

block_.L_400af6:                                  ; preds = %block_400b0a, %block_400ad4
  %662 = phi i64 [ %918, %block_400b0a ], [ %.pre12, %block_400ad4 ]
  %663 = load i64, i64* %RBP.i, align 8
  %664 = add i64 %663, -4
  %665 = add i64 %662, 3
  store i64 %665, i64* %PC.i, align 8
  %666 = inttoptr i64 %664 to i32*
  %667 = load i32, i32* %666, align 4
  %668 = zext i32 %667 to i64
  store i64 %668, i64* %RAX.i1508, align 8
  %669 = add i64 %663, -12
  %670 = add i64 %662, 7
  store i64 %670, i64* %PC.i, align 8
  %671 = inttoptr i64 %669 to i32*
  %672 = load i32, i32* %671, align 4
  %673 = sext i32 %672 to i64
  store i64 %673, i64* %RCX.i2066, align 8
  %674 = shl nsw i64 %673, 2
  %675 = add i64 %663, -1328
  %676 = add i64 %675, %674
  %677 = add i64 %662, 14
  store i64 %677, i64* %PC.i, align 8
  %678 = inttoptr i64 %676 to i32*
  %679 = load i32, i32* %678, align 4
  %680 = sub i32 %667, %679
  %681 = icmp ult i32 %667, %679
  %682 = zext i1 %681 to i8
  store i8 %682, i8* %14, align 1
  %683 = and i32 %680, 255
  %684 = tail call i32 @llvm.ctpop.i32(i32 %683)
  %685 = trunc i32 %684 to i8
  %686 = and i8 %685, 1
  %687 = xor i8 %686, 1
  store i8 %687, i8* %21, align 1
  %688 = xor i32 %679, %667
  %689 = xor i32 %688, %680
  %690 = lshr i32 %689, 4
  %691 = trunc i32 %690 to i8
  %692 = and i8 %691, 1
  store i8 %692, i8* %27, align 1
  %693 = icmp eq i32 %680, 0
  %694 = zext i1 %693 to i8
  store i8 %694, i8* %30, align 1
  %695 = lshr i32 %680, 31
  %696 = trunc i32 %695 to i8
  store i8 %696, i8* %33, align 1
  %697 = lshr i32 %667, 31
  %698 = lshr i32 %679, 31
  %699 = xor i32 %698, %697
  %700 = xor i32 %695, %697
  %701 = add nuw nsw i32 %700, %699
  %702 = icmp eq i32 %701, 2
  %703 = zext i1 %702 to i8
  store i8 %703, i8* %39, align 1
  %704 = icmp ne i8 %696, 0
  %705 = xor i1 %704, %702
  %.demorgan101 = or i1 %693, %705
  %.v102 = select i1 %.demorgan101, i64 20, i64 135
  %706 = add i64 %662, %.v102
  store i64 %706, i64* %3, align 8
  br i1 %.demorgan101, label %block_400b0a, label %block_.L_400b7d

block_400b0a:                                     ; preds = %block_.L_400af6
  %707 = add i64 %663, -1168
  store i64 %707, i64* %RAX.i1508, align 8
  %708 = add i64 %706, 11
  store i64 %708, i64* %PC.i, align 8
  %709 = load i32, i32* %671, align 4
  %710 = sext i32 %709 to i64
  %711 = shl nsw i64 %710, 6
  store i64 %711, i64* %RCX.i2066, align 8
  %712 = lshr i64 %710, 57
  %713 = and i64 %712, 1
  %714 = add i64 %711, %707
  store i64 %714, i64* %RDX.i2064, align 8
  %715 = icmp ult i64 %714, %707
  %716 = icmp ult i64 %714, %711
  %717 = or i1 %715, %716
  %718 = zext i1 %717 to i8
  store i8 %718, i8* %14, align 1
  %719 = trunc i64 %714 to i32
  %720 = and i32 %719, 255
  %721 = tail call i32 @llvm.ctpop.i32(i32 %720)
  %722 = trunc i32 %721 to i8
  %723 = and i8 %722, 1
  %724 = xor i8 %723, 1
  store i8 %724, i8* %21, align 1
  %725 = xor i64 %707, %714
  %726 = lshr i64 %725, 4
  %727 = trunc i64 %726 to i8
  %728 = and i8 %727, 1
  store i8 %728, i8* %27, align 1
  %729 = icmp eq i64 %714, 0
  %730 = zext i1 %729 to i8
  store i8 %730, i8* %30, align 1
  %731 = lshr i64 %714, 63
  %732 = trunc i64 %731 to i8
  store i8 %732, i8* %33, align 1
  %733 = lshr i64 %707, 63
  %734 = xor i64 %731, %733
  %735 = xor i64 %731, %713
  %736 = add nuw nsw i64 %734, %735
  %737 = icmp eq i64 %736, 2
  %738 = zext i1 %737 to i8
  store i8 %738, i8* %39, align 1
  %739 = add i64 %706, 25
  store i64 %739, i64* %PC.i, align 8
  %740 = load i32, i32* %666, align 4
  %741 = sext i32 %740 to i64
  store i64 %741, i64* %RCX.i2066, align 8
  %742 = shl nsw i64 %741, 2
  %743 = add i64 %742, %714
  %744 = add i64 %706, 28
  store i64 %744, i64* %PC.i, align 8
  %745 = inttoptr i64 %743 to i32*
  %746 = load i32, i32* %745, align 4
  %747 = zext i32 %746 to i64
  store i64 %747, i64* %RSI.i2060, align 8
  %748 = add i64 %706, 31
  store i64 %748, i64* %PC.i, align 8
  %749 = load i32, i32* %671, align 4
  %750 = add i32 %749, 1
  %751 = zext i32 %750 to i64
  store i64 %751, i64* %RDI.i1529, align 8
  %752 = sext i32 %750 to i64
  %753 = shl nsw i64 %752, 6
  store i64 %753, i64* %RCX.i2066, align 8
  %754 = lshr i64 %752, 57
  %755 = and i64 %754, 1
  %756 = load i64, i64* %RAX.i1508, align 8
  %757 = add i64 %753, %756
  store i64 %757, i64* %RDX.i2064, align 8
  %758 = icmp ult i64 %757, %756
  %759 = icmp ult i64 %757, %753
  %760 = or i1 %758, %759
  %761 = zext i1 %760 to i8
  store i8 %761, i8* %14, align 1
  %762 = trunc i64 %757 to i32
  %763 = and i32 %762, 255
  %764 = tail call i32 @llvm.ctpop.i32(i32 %763)
  %765 = trunc i32 %764 to i8
  %766 = and i8 %765, 1
  %767 = xor i8 %766, 1
  store i8 %767, i8* %21, align 1
  %768 = xor i64 %756, %757
  %769 = lshr i64 %768, 4
  %770 = trunc i64 %769 to i8
  %771 = and i8 %770, 1
  store i8 %771, i8* %27, align 1
  %772 = icmp eq i64 %757, 0
  %773 = zext i1 %772 to i8
  store i8 %773, i8* %30, align 1
  %774 = lshr i64 %757, 63
  %775 = trunc i64 %774 to i8
  store i8 %775, i8* %33, align 1
  %776 = lshr i64 %756, 63
  %777 = xor i64 %774, %776
  %778 = xor i64 %774, %755
  %779 = add nuw nsw i64 %777, %778
  %780 = icmp eq i64 %779, 2
  %781 = zext i1 %780 to i8
  store i8 %781, i8* %39, align 1
  %782 = load i64, i64* %RBP.i, align 8
  %783 = add i64 %782, -4
  %784 = add i64 %706, 51
  store i64 %784, i64* %PC.i, align 8
  %785 = inttoptr i64 %783 to i32*
  %786 = load i32, i32* %785, align 4
  %787 = sext i32 %786 to i64
  store i64 %787, i64* %RCX.i2066, align 8
  %788 = shl nsw i64 %787, 2
  %789 = add i64 %788, %757
  %790 = load i32, i32* %ESI.i2054, align 4
  %791 = add i64 %706, 54
  store i64 %791, i64* %PC.i, align 8
  %792 = inttoptr i64 %789 to i32*
  store i32 %790, i32* %792, align 4
  %793 = load i64, i64* %RBP.i, align 8
  %794 = add i64 %793, -12
  %795 = load i64, i64* %PC.i, align 8
  %796 = add i64 %795, 4
  store i64 %796, i64* %PC.i, align 8
  %797 = inttoptr i64 %794 to i32*
  %798 = load i32, i32* %797, align 4
  %799 = sext i32 %798 to i64
  %800 = shl nsw i64 %799, 6
  store i64 %800, i64* %RCX.i2066, align 8
  %801 = lshr i64 %799, 57
  %802 = and i64 %801, 1
  %803 = load i64, i64* %RAX.i1508, align 8
  %804 = add i64 %800, %803
  store i64 %804, i64* %RDX.i2064, align 8
  %805 = icmp ult i64 %804, %803
  %806 = icmp ult i64 %804, %800
  %807 = or i1 %805, %806
  %808 = zext i1 %807 to i8
  store i8 %808, i8* %14, align 1
  %809 = trunc i64 %804 to i32
  %810 = and i32 %809, 255
  %811 = tail call i32 @llvm.ctpop.i32(i32 %810)
  %812 = trunc i32 %811 to i8
  %813 = and i8 %812, 1
  %814 = xor i8 %813, 1
  store i8 %814, i8* %21, align 1
  %815 = xor i64 %803, %804
  %816 = lshr i64 %815, 4
  %817 = trunc i64 %816 to i8
  %818 = and i8 %817, 1
  store i8 %818, i8* %27, align 1
  %819 = icmp eq i64 %804, 0
  %820 = zext i1 %819 to i8
  store i8 %820, i8* %30, align 1
  %821 = lshr i64 %804, 63
  %822 = trunc i64 %821 to i8
  store i8 %822, i8* %33, align 1
  %823 = lshr i64 %803, 63
  %824 = xor i64 %821, %823
  %825 = xor i64 %821, %802
  %826 = add nuw nsw i64 %824, %825
  %827 = icmp eq i64 %826, 2
  %828 = zext i1 %827 to i8
  store i8 %828, i8* %39, align 1
  %829 = add i64 %793, -4
  %830 = add i64 %795, 18
  store i64 %830, i64* %PC.i, align 8
  %831 = inttoptr i64 %829 to i32*
  %832 = load i32, i32* %831, align 4
  %833 = sext i32 %832 to i64
  store i64 %833, i64* %RCX.i2066, align 8
  %834 = shl nsw i64 %833, 2
  %835 = add i64 %834, %804
  %836 = add i64 %795, 22
  store i64 %836, i64* %PC.i, align 8
  %837 = inttoptr i64 %835 to i32*
  %838 = load i32, i32* %837, align 4
  %839 = sext i32 %838 to i64
  store i64 %839, i64* %RCX.i2066, align 8
  %840 = shl nsw i64 %839, 2
  %841 = add nsw i64 %840, 6304896
  %842 = add i64 %795, 29
  store i64 %842, i64* %PC.i, align 8
  %843 = inttoptr i64 %841 to i32*
  %844 = load i32, i32* %843, align 4
  %845 = zext i32 %844 to i64
  store i64 %845, i64* %RSI.i2060, align 8
  %846 = add i64 %795, 33
  store i64 %846, i64* %PC.i, align 8
  %847 = load i32, i32* %797, align 4
  %848 = sext i32 %847 to i64
  %849 = shl nsw i64 %848, 6
  store i64 %849, i64* %RCX.i2066, align 8
  %850 = lshr i64 %848, 57
  %851 = and i64 %850, 1
  %852 = add i64 %849, %803
  store i64 %852, i64* %RAX.i1508, align 8
  %853 = icmp ult i64 %852, %803
  %854 = icmp ult i64 %852, %849
  %855 = or i1 %853, %854
  %856 = zext i1 %855 to i8
  store i8 %856, i8* %14, align 1
  %857 = trunc i64 %852 to i32
  %858 = and i32 %857, 255
  %859 = tail call i32 @llvm.ctpop.i32(i32 %858)
  %860 = trunc i32 %859 to i8
  %861 = and i8 %860, 1
  %862 = xor i8 %861, 1
  store i8 %862, i8* %21, align 1
  %863 = xor i64 %803, %852
  %864 = lshr i64 %863, 4
  %865 = trunc i64 %864 to i8
  %866 = and i8 %865, 1
  store i8 %866, i8* %27, align 1
  %867 = icmp eq i64 %852, 0
  %868 = zext i1 %867 to i8
  store i8 %868, i8* %30, align 1
  %869 = lshr i64 %852, 63
  %870 = trunc i64 %869 to i8
  store i8 %870, i8* %33, align 1
  %871 = xor i64 %869, %823
  %872 = xor i64 %869, %851
  %873 = add nuw nsw i64 %871, %872
  %874 = icmp eq i64 %873, 2
  %875 = zext i1 %874 to i8
  store i8 %875, i8* %39, align 1
  %876 = load i64, i64* %RBP.i, align 8
  %877 = add i64 %876, -4
  %878 = add i64 %795, 44
  store i64 %878, i64* %PC.i, align 8
  %879 = inttoptr i64 %877 to i32*
  %880 = load i32, i32* %879, align 4
  %881 = sext i32 %880 to i64
  store i64 %881, i64* %RCX.i2066, align 8
  %882 = shl nsw i64 %881, 2
  %883 = add i64 %882, %852
  %884 = add i64 %795, 47
  store i64 %884, i64* %PC.i, align 8
  %885 = inttoptr i64 %883 to i32*
  store i32 %844, i32* %885, align 4
  %886 = load i64, i64* %RBP.i, align 8
  %887 = add i64 %886, -4
  %888 = load i64, i64* %PC.i, align 8
  %889 = add i64 %888, 3
  store i64 %889, i64* %PC.i, align 8
  %890 = inttoptr i64 %887 to i32*
  %891 = load i32, i32* %890, align 4
  %892 = add i32 %891, 1
  %893 = zext i32 %892 to i64
  store i64 %893, i64* %RAX.i1508, align 8
  %894 = icmp eq i32 %891, -1
  %895 = icmp eq i32 %892, 0
  %896 = or i1 %894, %895
  %897 = zext i1 %896 to i8
  store i8 %897, i8* %14, align 1
  %898 = and i32 %892, 255
  %899 = tail call i32 @llvm.ctpop.i32(i32 %898)
  %900 = trunc i32 %899 to i8
  %901 = and i8 %900, 1
  %902 = xor i8 %901, 1
  store i8 %902, i8* %21, align 1
  %903 = xor i32 %891, %892
  %904 = lshr i32 %903, 4
  %905 = trunc i32 %904 to i8
  %906 = and i8 %905, 1
  store i8 %906, i8* %27, align 1
  %907 = icmp eq i32 %892, 0
  %908 = zext i1 %907 to i8
  store i8 %908, i8* %30, align 1
  %909 = lshr i32 %892, 31
  %910 = trunc i32 %909 to i8
  store i8 %910, i8* %33, align 1
  %911 = lshr i32 %891, 31
  %912 = xor i32 %909, %911
  %913 = add nuw nsw i32 %912, %909
  %914 = icmp eq i32 %913, 2
  %915 = zext i1 %914 to i8
  store i8 %915, i8* %39, align 1
  %916 = add i64 %888, 9
  store i64 %916, i64* %PC.i, align 8
  store i32 %892, i32* %890, align 4
  %917 = load i64, i64* %PC.i, align 8
  %918 = add i64 %917, -130
  store i64 %918, i64* %3, align 8
  br label %block_.L_400af6

block_.L_400b7d:                                  ; preds = %block_.L_400af6
  %919 = add i64 %706, 701
  br label %block_.L_400e3a

block_.L_400b82:                                  ; preds = %block_.L_400ab9
  %920 = add i64 %615, 3
  store i64 %920, i64* %PC.i, align 8
  %921 = load i32, i32* %583, align 4
  %922 = add i32 %921, -1
  %923 = zext i32 %922 to i64
  store i64 %923, i64* %RAX.i1508, align 8
  %924 = icmp eq i32 %921, 0
  %925 = zext i1 %924 to i8
  store i8 %925, i8* %14, align 1
  %926 = and i32 %922, 255
  %927 = tail call i32 @llvm.ctpop.i32(i32 %926)
  %928 = trunc i32 %927 to i8
  %929 = and i8 %928, 1
  %930 = xor i8 %929, 1
  store i8 %930, i8* %21, align 1
  %931 = xor i32 %921, %922
  %932 = lshr i32 %931, 4
  %933 = trunc i32 %932 to i8
  %934 = and i8 %933, 1
  store i8 %934, i8* %27, align 1
  %935 = icmp eq i32 %922, 0
  %936 = zext i1 %935 to i8
  store i8 %936, i8* %30, align 1
  %937 = lshr i32 %922, 31
  %938 = trunc i32 %937 to i8
  store i8 %938, i8* %33, align 1
  %939 = lshr i32 %921, 31
  %940 = xor i32 %937, %939
  %941 = add nuw nsw i32 %940, %939
  %942 = icmp eq i32 %941, 2
  %943 = zext i1 %942 to i8
  store i8 %943, i8* %39, align 1
  %944 = add i64 %579, -16
  %945 = add i64 %615, 9
  store i64 %945, i64* %PC.i, align 8
  %946 = inttoptr i64 %944 to i32*
  store i32 %922, i32* %946, align 4
  %.pre13 = load i64, i64* %PC.i, align 8
  br label %block_.L_400b8b

block_.L_400b8b:                                  ; preds = %block_.L_400bc7, %block_.L_400b82
  %947 = phi i64 [ %1070, %block_.L_400bc7 ], [ %.pre13, %block_.L_400b82 ]
  store i64 0, i64* %RAX.i1508, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %CL.i1777, align 1
  %948 = load i64, i64* %RBP.i, align 8
  %949 = add i64 %948, -16
  %950 = add i64 %947, 8
  store i64 %950, i64* %PC.i, align 8
  %951 = inttoptr i64 %949 to i32*
  %952 = load i32, i32* %951, align 4
  %953 = sext i32 %952 to i64
  store i64 %953, i64* %RDX.i2064, align 8
  %954 = shl nsw i64 %953, 2
  %955 = add i64 %948, -1248
  %956 = add i64 %955, %954
  %957 = add i64 %947, 16
  store i64 %957, i64* %PC.i, align 8
  %958 = inttoptr i64 %956 to i32*
  %959 = load i32, i32* %958, align 4
  %960 = add i32 %959, 1
  %961 = icmp ne i32 %959, -1
  %962 = zext i1 %961 to i8
  store i8 %962, i8* %14, align 1
  %963 = and i32 %960, 255
  %964 = tail call i32 @llvm.ctpop.i32(i32 %963)
  %965 = trunc i32 %964 to i8
  %966 = and i8 %965, 1
  %967 = xor i8 %966, 1
  store i8 %967, i8* %21, align 1
  %968 = xor i32 %959, 16
  %969 = xor i32 %960, %968
  %970 = lshr i32 %969, 4
  %971 = trunc i32 %970 to i8
  %972 = and i8 %971, 1
  store i8 %972, i8* %27, align 1
  %973 = icmp eq i32 %960, 0
  %974 = zext i1 %973 to i8
  store i8 %974, i8* %30, align 1
  %975 = lshr i32 %960, 31
  %976 = trunc i32 %975 to i8
  store i8 %976, i8* %33, align 1
  %977 = lshr i32 %959, 31
  %978 = xor i32 %977, 1
  %979 = xor i32 %975, %977
  %980 = add nuw nsw i32 %979, %978
  %981 = icmp eq i32 %980, 2
  %982 = zext i1 %981 to i8
  store i8 %982, i8* %39, align 1
  %983 = add i64 %948, -2693
  %984 = add i64 %947, 22
  store i64 %984, i64* %PC.i, align 8
  %985 = inttoptr i64 %983 to i8*
  store i8 0, i8* %985, align 1
  %986 = load i64, i64* %PC.i, align 8
  %987 = load i8, i8* %30, align 1
  %988 = icmp eq i8 %987, 0
  %.v148 = select i1 %988, i64 19, i64 6
  %989 = add i64 %986, %.v148
  store i64 %989, i64* %3, align 8
  br i1 %988, label %block_.L_400bb4, label %block_400ba7

block_400ba7:                                     ; preds = %block_.L_400b8b
  %990 = load i64, i64* %RBP.i, align 8
  %991 = add i64 %990, -16
  %992 = add i64 %989, 4
  store i64 %992, i64* %PC.i, align 8
  %993 = inttoptr i64 %991 to i32*
  %994 = load i32, i32* %993, align 4
  store i8 0, i8* %14, align 1
  %995 = and i32 %994, 255
  %996 = tail call i32 @llvm.ctpop.i32(i32 %995)
  %997 = trunc i32 %996 to i8
  %998 = and i8 %997, 1
  %999 = xor i8 %998, 1
  store i8 %999, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1000 = icmp eq i32 %994, 0
  %1001 = zext i1 %1000 to i8
  store i8 %1001, i8* %30, align 1
  %1002 = lshr i32 %994, 31
  %1003 = trunc i32 %1002 to i8
  store i8 %1003, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1004 = xor i1 %1000, true
  %1005 = icmp eq i8 %1003, 0
  %1006 = and i1 %1005, %1004
  %1007 = zext i1 %1006 to i8
  store i8 %1007, i8* %AL.i1776, align 1
  %1008 = add i64 %990, -2693
  %1009 = add i64 %989, 13
  store i64 %1009, i64* %PC.i, align 8
  %1010 = inttoptr i64 %1008 to i8*
  store i8 %1007, i8* %1010, align 1
  %.pre14 = load i64, i64* %PC.i, align 8
  br label %block_.L_400bb4

block_.L_400bb4:                                  ; preds = %block_400ba7, %block_.L_400b8b
  %1011 = phi i64 [ %.pre14, %block_400ba7 ], [ %989, %block_.L_400b8b ]
  %1012 = load i64, i64* %RBP.i, align 8
  %1013 = add i64 %1012, -2693
  %1014 = add i64 %1011, 6
  store i64 %1014, i64* %PC.i, align 8
  %1015 = inttoptr i64 %1013 to i8*
  %1016 = load i8, i8* %1015, align 1
  store i8 %1016, i8* %AL.i1776, align 1
  %1017 = and i8 %1016, 1
  store i8 0, i8* %14, align 1
  %1018 = zext i8 %1017 to i32
  %1019 = tail call i32 @llvm.ctpop.i32(i32 %1018)
  %1020 = trunc i32 %1019 to i8
  %1021 = xor i8 %1020, 1
  store i8 %1021, i8* %21, align 1
  %1022 = xor i8 %1017, 1
  store i8 %1022, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %1023 = icmp eq i8 %1022, 0
  %.v149 = select i1 %1023, i64 19, i64 14
  %1024 = add i64 %1011, %.v149
  store i64 %1024, i64* %3, align 8
  %1025 = add i64 %1012, -16
  br i1 %1023, label %block_.L_400bc7, label %block_400bc2

block_400bc2:                                     ; preds = %block_.L_400bb4
  %1026 = add i64 %1024, 23
  store i64 %1026, i64* %PC.i, align 8
  %1027 = inttoptr i64 %1025 to i32*
  %1028 = load i32, i32* %1027, align 4
  store i8 0, i8* %14, align 1
  %1029 = and i32 %1028, 255
  %1030 = tail call i32 @llvm.ctpop.i32(i32 %1029)
  %1031 = trunc i32 %1030 to i8
  %1032 = and i8 %1031, 1
  %1033 = xor i8 %1032, 1
  store i8 %1033, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1034 = icmp eq i32 %1028, 0
  %1035 = zext i1 %1034 to i8
  store i8 %1035, i8* %30, align 1
  %1036 = lshr i32 %1028, 31
  %1037 = trunc i32 %1036 to i8
  store i8 %1037, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1038 = icmp ne i8 %1037, 0
  %1039 = or i1 %1034, %1038
  %.v150 = select i1 %1039, i64 116, i64 29
  %1040 = add i64 %1024, %.v150
  store i64 %1040, i64* %3, align 8
  br i1 %1039, label %block_.L_400c36, label %block_400bdf

block_.L_400bc7:                                  ; preds = %block_.L_400bb4
  %1041 = add i64 %1024, 3
  store i64 %1041, i64* %PC.i, align 8
  %1042 = inttoptr i64 %1025 to i32*
  %1043 = load i32, i32* %1042, align 4
  %1044 = add i32 %1043, -1
  %1045 = zext i32 %1044 to i64
  store i64 %1045, i64* %RAX.i1508, align 8
  %1046 = icmp ne i32 %1043, 0
  %1047 = zext i1 %1046 to i8
  store i8 %1047, i8* %14, align 1
  %1048 = and i32 %1044, 255
  %1049 = tail call i32 @llvm.ctpop.i32(i32 %1048)
  %1050 = trunc i32 %1049 to i8
  %1051 = and i8 %1050, 1
  %1052 = xor i8 %1051, 1
  store i8 %1052, i8* %21, align 1
  %1053 = xor i32 %1043, 16
  %1054 = xor i32 %1044, %1053
  %1055 = lshr i32 %1054, 4
  %1056 = trunc i32 %1055 to i8
  %1057 = and i8 %1056, 1
  store i8 %1057, i8* %27, align 1
  %1058 = icmp eq i32 %1044, 0
  %1059 = zext i1 %1058 to i8
  store i8 %1059, i8* %30, align 1
  %1060 = lshr i32 %1044, 31
  %1061 = trunc i32 %1060 to i8
  store i8 %1061, i8* %33, align 1
  %1062 = lshr i32 %1043, 31
  %1063 = xor i32 %1060, %1062
  %1064 = xor i32 %1060, 1
  %1065 = add nuw nsw i32 %1063, %1064
  %1066 = icmp eq i32 %1065, 2
  %1067 = zext i1 %1066 to i8
  store i8 %1067, i8* %39, align 1
  %1068 = add i64 %1024, 9
  store i64 %1068, i64* %PC.i, align 8
  store i32 %1044, i32* %1042, align 4
  %1069 = load i64, i64* %PC.i, align 8
  %1070 = add i64 %1069, -69
  store i64 %1070, i64* %3, align 8
  br label %block_.L_400b8b

block_400bdf:                                     ; preds = %block_400bc2
  %1071 = add i64 %1040, 3
  store i64 %1071, i64* %PC.i, align 8
  %1072 = load i32, i32* %1027, align 4
  %1073 = zext i32 %1072 to i64
  store i64 %1073, i64* %RAX.i1508, align 8
  %1074 = add i64 %1012, -8
  %1075 = add i64 %1040, 6
  store i64 %1075, i64* %PC.i, align 8
  %1076 = inttoptr i64 %1074 to i32*
  store i32 %1072, i32* %1076, align 4
  %.pre15 = load i64, i64* %RBP.i, align 8
  %.pre16 = load i64, i64* %PC.i, align 8
  br label %block_.L_400be5

block_.L_400be5:                                  ; preds = %block_.L_400c22, %block_400bdf
  %1077 = phi i64 [ %1214, %block_.L_400c22 ], [ %.pre16, %block_400bdf ]
  %1078 = phi i64 [ %1196, %block_.L_400c22 ], [ %.pre15, %block_400bdf ]
  %1079 = add i64 %1078, -8
  %1080 = add i64 %1077, 3
  store i64 %1080, i64* %PC.i, align 8
  %1081 = inttoptr i64 %1079 to i32*
  %1082 = load i32, i32* %1081, align 4
  %1083 = add i32 %1082, -1
  %1084 = zext i32 %1083 to i64
  store i64 %1084, i64* %RAX.i1508, align 8
  %1085 = icmp ne i32 %1082, 0
  %1086 = zext i1 %1085 to i8
  store i8 %1086, i8* %14, align 1
  %1087 = and i32 %1083, 255
  %1088 = tail call i32 @llvm.ctpop.i32(i32 %1087)
  %1089 = trunc i32 %1088 to i8
  %1090 = and i8 %1089, 1
  %1091 = xor i8 %1090, 1
  store i8 %1091, i8* %21, align 1
  %1092 = xor i32 %1082, 16
  %1093 = xor i32 %1083, %1092
  %1094 = lshr i32 %1093, 4
  %1095 = trunc i32 %1094 to i8
  %1096 = and i8 %1095, 1
  store i8 %1096, i8* %27, align 1
  %1097 = icmp eq i32 %1083, 0
  %1098 = zext i1 %1097 to i8
  store i8 %1098, i8* %30, align 1
  %1099 = lshr i32 %1083, 31
  %1100 = trunc i32 %1099 to i8
  store i8 %1100, i8* %33, align 1
  %1101 = lshr i32 %1082, 31
  %1102 = xor i32 %1099, %1101
  %1103 = xor i32 %1099, 1
  %1104 = add nuw nsw i32 %1102, %1103
  %1105 = icmp eq i32 %1104, 2
  %1106 = zext i1 %1105 to i8
  store i8 %1106, i8* %39, align 1
  %1107 = add i64 %1077, 9
  store i64 %1107, i64* %PC.i, align 8
  store i32 %1083, i32* %1081, align 4
  %1108 = load i64, i64* %RBP.i, align 8
  %1109 = add i64 %1108, -8
  %1110 = load i64, i64* %PC.i, align 8
  %1111 = add i64 %1110, 4
  store i64 %1111, i64* %PC.i, align 8
  %1112 = inttoptr i64 %1109 to i32*
  %1113 = load i32, i32* %1112, align 4
  %1114 = sext i32 %1113 to i64
  store i64 %1114, i64* %RCX.i2066, align 8
  %1115 = shl nsw i64 %1114, 2
  %1116 = add i64 %1108, -1248
  %1117 = add i64 %1116, %1115
  %1118 = add i64 %1110, 12
  store i64 %1118, i64* %PC.i, align 8
  %1119 = inttoptr i64 %1117 to i32*
  %1120 = load i32, i32* %1119, align 4
  %1121 = add i32 %1120, 1
  %1122 = icmp ne i32 %1120, -1
  %1123 = zext i1 %1122 to i8
  store i8 %1123, i8* %14, align 1
  %1124 = and i32 %1121, 255
  %1125 = tail call i32 @llvm.ctpop.i32(i32 %1124)
  %1126 = trunc i32 %1125 to i8
  %1127 = and i8 %1126, 1
  %1128 = xor i8 %1127, 1
  store i8 %1128, i8* %21, align 1
  %1129 = xor i32 %1120, 16
  %1130 = xor i32 %1121, %1129
  %1131 = lshr i32 %1130, 4
  %1132 = trunc i32 %1131 to i8
  %1133 = and i8 %1132, 1
  store i8 %1133, i8* %27, align 1
  %1134 = icmp eq i32 %1121, 0
  %1135 = zext i1 %1134 to i8
  store i8 %1135, i8* %30, align 1
  %1136 = lshr i32 %1121, 31
  %1137 = trunc i32 %1136 to i8
  store i8 %1137, i8* %33, align 1
  %1138 = lshr i32 %1120, 31
  %1139 = xor i32 %1138, 1
  %1140 = xor i32 %1136, %1138
  %1141 = add nuw nsw i32 %1140, %1139
  %1142 = icmp eq i32 %1141, 2
  %1143 = zext i1 %1142 to i8
  store i8 %1143, i8* %39, align 1
  %.v151 = select i1 %1134, i64 52, i64 18
  %1144 = add i64 %1110, %.v151
  store i64 %1144, i64* %3, align 8
  br i1 %1134, label %block_.L_400c22, label %block_400c00

block_400c00:                                     ; preds = %block_.L_400be5
  %1145 = add i64 %1108, -16
  %1146 = add i64 %1144, 4
  store i64 %1146, i64* %PC.i, align 8
  %1147 = inttoptr i64 %1145 to i32*
  %1148 = load i32, i32* %1147, align 4
  %1149 = sext i32 %1148 to i64
  store i64 %1149, i64* %RAX.i1508, align 8
  %1150 = shl nsw i64 %1149, 2
  %1151 = add i64 %1108, -1408
  %1152 = add i64 %1151, %1150
  %1153 = add i64 %1144, 11
  store i64 %1153, i64* %PC.i, align 8
  %1154 = inttoptr i64 %1152 to i32*
  %1155 = load i32, i32* %1154, align 4
  %1156 = zext i32 %1155 to i64
  store i64 %1156, i64* %RCX.i2066, align 8
  %1157 = add i64 %1144, 15
  store i64 %1157, i64* %PC.i, align 8
  %1158 = load i32, i32* %1112, align 4
  %1159 = sext i32 %1158 to i64
  store i64 %1159, i64* %RAX.i1508, align 8
  %1160 = shl nsw i64 %1159, 2
  %1161 = add i64 %1151, %1160
  %1162 = add i64 %1144, 22
  store i64 %1162, i64* %PC.i, align 8
  %1163 = inttoptr i64 %1161 to i32*
  %1164 = load i32, i32* %1163, align 4
  %1165 = sub i32 %1155, %1164
  %1166 = icmp ult i32 %1155, %1164
  %1167 = zext i1 %1166 to i8
  store i8 %1167, i8* %14, align 1
  %1168 = and i32 %1165, 255
  %1169 = tail call i32 @llvm.ctpop.i32(i32 %1168)
  %1170 = trunc i32 %1169 to i8
  %1171 = and i8 %1170, 1
  %1172 = xor i8 %1171, 1
  store i8 %1172, i8* %21, align 1
  %1173 = xor i32 %1164, %1155
  %1174 = xor i32 %1173, %1165
  %1175 = lshr i32 %1174, 4
  %1176 = trunc i32 %1175 to i8
  %1177 = and i8 %1176, 1
  store i8 %1177, i8* %27, align 1
  %1178 = icmp eq i32 %1165, 0
  %1179 = zext i1 %1178 to i8
  store i8 %1179, i8* %30, align 1
  %1180 = lshr i32 %1165, 31
  %1181 = trunc i32 %1180 to i8
  store i8 %1181, i8* %33, align 1
  %1182 = lshr i32 %1155, 31
  %1183 = lshr i32 %1164, 31
  %1184 = xor i32 %1183, %1182
  %1185 = xor i32 %1180, %1182
  %1186 = add nuw nsw i32 %1185, %1184
  %1187 = icmp eq i32 %1186, 2
  %1188 = zext i1 %1187 to i8
  store i8 %1188, i8* %39, align 1
  %1189 = icmp ne i8 %1181, 0
  %1190 = xor i1 %1189, %1187
  %.v152 = select i1 %1190, i64 28, i64 34
  %1191 = add i64 %1144, %.v152
  store i64 %1191, i64* %3, align 8
  br i1 %1190, label %block_400c1c, label %block_.L_400c22

block_400c1c:                                     ; preds = %block_400c00
  %1192 = add i64 %1191, 3
  store i64 %1192, i64* %PC.i, align 8
  %1193 = load i32, i32* %1112, align 4
  %1194 = zext i32 %1193 to i64
  store i64 %1194, i64* %RAX.i1508, align 8
  %1195 = add i64 %1191, 6
  store i64 %1195, i64* %PC.i, align 8
  store i32 %1193, i32* %1147, align 4
  %.pre17 = load i64, i64* %PC.i, align 8
  %.pre18 = load i64, i64* %RBP.i, align 8
  br label %block_.L_400c22

block_.L_400c22:                                  ; preds = %block_400c00, %block_400c1c, %block_.L_400be5
  %1196 = phi i64 [ %.pre18, %block_400c1c ], [ %1108, %block_400c00 ], [ %1108, %block_.L_400be5 ]
  %1197 = phi i64 [ %.pre17, %block_400c1c ], [ %1191, %block_400c00 ], [ %1144, %block_.L_400be5 ]
  %1198 = add i64 %1196, -8
  %1199 = add i64 %1197, 9
  store i64 %1199, i64* %PC.i, align 8
  %1200 = inttoptr i64 %1198 to i32*
  %1201 = load i32, i32* %1200, align 4
  store i8 0, i8* %14, align 1
  %1202 = and i32 %1201, 255
  %1203 = tail call i32 @llvm.ctpop.i32(i32 %1202)
  %1204 = trunc i32 %1203 to i8
  %1205 = and i8 %1204, 1
  %1206 = xor i8 %1205, 1
  store i8 %1206, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1207 = icmp eq i32 %1201, 0
  %1208 = zext i1 %1207 to i8
  store i8 %1208, i8* %30, align 1
  %1209 = lshr i32 %1201, 31
  %1210 = trunc i32 %1209 to i8
  store i8 %1210, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1211 = xor i1 %1207, true
  %1212 = icmp eq i8 %1210, 0
  %1213 = and i1 %1212, %1211
  %.v153 = select i1 %1213, i64 -61, i64 15
  %1214 = add i64 %1197, %.v153
  store i64 %1214, i64* %3, align 8
  br i1 %1213, label %block_.L_400be5, label %block_400c31

block_400c31:                                     ; preds = %block_.L_400c22
  %1215 = add i64 %1214, 5
  store i64 %1215, i64* %3, align 8
  br label %block_.L_400c36

block_.L_400c36:                                  ; preds = %block_400c31, %block_400bc2
  %1216 = phi i64 [ %1215, %block_400c31 ], [ %1040, %block_400bc2 ]
  %1217 = phi i64 [ %1196, %block_400c31 ], [ %1012, %block_400bc2 ]
  %1218 = add i64 %1217, -12
  %1219 = add i64 %1216, 4
  store i64 %1219, i64* %PC.i, align 8
  %1220 = inttoptr i64 %1218 to i32*
  %1221 = load i32, i32* %1220, align 4
  %1222 = sext i32 %1221 to i64
  store i64 %1222, i64* %RAX.i1508, align 8
  %1223 = shl nsw i64 %1222, 2
  %1224 = add i64 %1217, -1328
  %1225 = add i64 %1224, %1223
  %1226 = add i64 %1216, 11
  store i64 %1226, i64* %PC.i, align 8
  %1227 = inttoptr i64 %1225 to i32*
  %1228 = load i32, i32* %1227, align 4
  %1229 = zext i32 %1228 to i64
  store i64 %1229, i64* %RCX.i2066, align 8
  %1230 = add i64 %1217, -16
  %1231 = add i64 %1216, 15
  store i64 %1231, i64* %PC.i, align 8
  %1232 = inttoptr i64 %1230 to i32*
  %1233 = load i32, i32* %1232, align 4
  %1234 = sext i32 %1233 to i64
  store i64 %1234, i64* %RAX.i1508, align 8
  %1235 = shl nsw i64 %1234, 2
  %1236 = add i64 %1224, %1235
  %1237 = add i64 %1216, 22
  store i64 %1237, i64* %PC.i, align 8
  %1238 = inttoptr i64 %1236 to i32*
  %1239 = load i32, i32* %1238, align 4
  %1240 = zext i32 %1239 to i64
  store i64 %1240, i64* %RDX.i2064, align 8
  %1241 = add i64 %1216, 25
  store i64 %1241, i64* %PC.i, align 8
  %1242 = load i32, i32* %1220, align 4
  %1243 = add i32 %1242, %1239
  %1244 = zext i32 %1243 to i64
  store i64 %1244, i64* %RDX.i2064, align 8
  %1245 = icmp ult i32 %1243, %1239
  %1246 = icmp ult i32 %1243, %1242
  %1247 = or i1 %1245, %1246
  %1248 = zext i1 %1247 to i8
  store i8 %1248, i8* %14, align 1
  %1249 = and i32 %1243, 255
  %1250 = tail call i32 @llvm.ctpop.i32(i32 %1249)
  %1251 = trunc i32 %1250 to i8
  %1252 = and i8 %1251, 1
  %1253 = xor i8 %1252, 1
  store i8 %1253, i8* %21, align 1
  %1254 = xor i32 %1242, %1239
  %1255 = xor i32 %1254, %1243
  %1256 = lshr i32 %1255, 4
  %1257 = trunc i32 %1256 to i8
  %1258 = and i8 %1257, 1
  store i8 %1258, i8* %27, align 1
  %1259 = icmp eq i32 %1243, 0
  %1260 = zext i1 %1259 to i8
  store i8 %1260, i8* %30, align 1
  %1261 = lshr i32 %1243, 31
  %1262 = trunc i32 %1261 to i8
  store i8 %1262, i8* %33, align 1
  %1263 = lshr i32 %1239, 31
  %1264 = lshr i32 %1242, 31
  %1265 = xor i32 %1261, %1263
  %1266 = xor i32 %1261, %1264
  %1267 = add nuw nsw i32 %1265, %1266
  %1268 = icmp eq i32 %1267, 2
  %1269 = zext i1 %1268 to i8
  store i8 %1269, i8* %39, align 1
  %1270 = add i64 %1216, 28
  store i64 %1270, i64* %PC.i, align 8
  %1271 = load i32, i32* %1232, align 4
  %1272 = sub i32 %1243, %1271
  %1273 = zext i32 %1272 to i64
  store i64 %1273, i64* %RDX.i2064, align 8
  %1274 = lshr i32 %1272, 31
  %1275 = sub i32 %1228, %1272
  %1276 = icmp ult i32 %1228, %1272
  %1277 = zext i1 %1276 to i8
  store i8 %1277, i8* %14, align 1
  %1278 = and i32 %1275, 255
  %1279 = tail call i32 @llvm.ctpop.i32(i32 %1278)
  %1280 = trunc i32 %1279 to i8
  %1281 = and i8 %1280, 1
  %1282 = xor i8 %1281, 1
  store i8 %1282, i8* %21, align 1
  %1283 = xor i32 %1272, %1228
  %1284 = xor i32 %1283, %1275
  %1285 = lshr i32 %1284, 4
  %1286 = trunc i32 %1285 to i8
  %1287 = and i8 %1286, 1
  store i8 %1287, i8* %27, align 1
  %1288 = icmp eq i32 %1275, 0
  %1289 = zext i1 %1288 to i8
  store i8 %1289, i8* %30, align 1
  %1290 = lshr i32 %1275, 31
  %1291 = trunc i32 %1290 to i8
  store i8 %1291, i8* %33, align 1
  %1292 = lshr i32 %1228, 31
  %1293 = xor i32 %1274, %1292
  %1294 = xor i32 %1290, %1292
  %1295 = add nuw nsw i32 %1294, %1293
  %1296 = icmp eq i32 %1295, 2
  %1297 = zext i1 %1296 to i8
  store i8 %1297, i8* %39, align 1
  %1298 = icmp ne i8 %1291, 0
  %1299 = xor i1 %1298, %1296
  %1300 = or i1 %1288, %1299
  %.v154 = select i1 %1300, i64 68, i64 36
  %1301 = add i64 %1216, %.v154
  store i64 %1301, i64* %3, align 8
  %1302 = load i64, i64* %RBP.i, align 8
  br i1 %1300, label %block_.L_400c7a, label %block_400c5a

block_400c5a:                                     ; preds = %block_.L_400c36
  %1303 = add i64 %1302, -12
  %1304 = add i64 %1301, 4
  store i64 %1304, i64* %PC.i, align 8
  %1305 = inttoptr i64 %1303 to i32*
  %1306 = load i32, i32* %1305, align 4
  %1307 = sext i32 %1306 to i64
  store i64 %1307, i64* %RAX.i1508, align 8
  %1308 = shl nsw i64 %1307, 2
  %1309 = add i64 %1302, -1328
  %1310 = add i64 %1309, %1308
  %1311 = add i64 %1301, 11
  store i64 %1311, i64* %PC.i, align 8
  %1312 = inttoptr i64 %1310 to i32*
  %1313 = load i32, i32* %1312, align 4
  %1314 = zext i32 %1313 to i64
  store i64 %1314, i64* %RCX.i2066, align 8
  %1315 = add i64 %1301, 14
  store i64 %1315, i64* %PC.i, align 8
  %1316 = load i32, i32* %1305, align 4
  %1317 = add i32 %1316, 1
  %1318 = zext i32 %1317 to i64
  store i64 %1318, i64* %RDX.i2064, align 8
  %1319 = icmp eq i32 %1316, -1
  %1320 = icmp eq i32 %1317, 0
  %1321 = or i1 %1319, %1320
  %1322 = zext i1 %1321 to i8
  store i8 %1322, i8* %14, align 1
  %1323 = and i32 %1317, 255
  %1324 = tail call i32 @llvm.ctpop.i32(i32 %1323)
  %1325 = trunc i32 %1324 to i8
  %1326 = and i8 %1325, 1
  %1327 = xor i8 %1326, 1
  store i8 %1327, i8* %21, align 1
  %1328 = xor i32 %1316, %1317
  %1329 = lshr i32 %1328, 4
  %1330 = trunc i32 %1329 to i8
  %1331 = and i8 %1330, 1
  store i8 %1331, i8* %27, align 1
  %1332 = icmp eq i32 %1317, 0
  %1333 = zext i1 %1332 to i8
  store i8 %1333, i8* %30, align 1
  %1334 = lshr i32 %1317, 31
  %1335 = trunc i32 %1334 to i8
  store i8 %1335, i8* %33, align 1
  %1336 = lshr i32 %1316, 31
  %1337 = xor i32 %1334, %1336
  %1338 = add nuw nsw i32 %1337, %1334
  %1339 = icmp eq i32 %1338, 2
  %1340 = zext i1 %1339 to i8
  store i8 %1340, i8* %39, align 1
  %1341 = sext i32 %1317 to i64
  store i64 %1341, i64* %RAX.i1508, align 8
  %1342 = shl nsw i64 %1341, 2
  %1343 = add i64 %1309, %1342
  %1344 = add i64 %1301, 27
  store i64 %1344, i64* %PC.i, align 8
  %1345 = inttoptr i64 %1343 to i32*
  store i32 %1313, i32* %1345, align 4
  %1346 = load i64, i64* %PC.i, align 8
  %1347 = add i64 %1346, 38
  store i64 %1347, i64* %3, align 8
  br label %block_.L_400c9b

block_.L_400c7a:                                  ; preds = %block_.L_400c36
  %1348 = add i64 %1302, -16
  %1349 = add i64 %1301, 4
  store i64 %1349, i64* %PC.i, align 8
  %1350 = inttoptr i64 %1348 to i32*
  %1351 = load i32, i32* %1350, align 4
  %1352 = sext i32 %1351 to i64
  store i64 %1352, i64* %RAX.i1508, align 8
  %1353 = shl nsw i64 %1352, 2
  %1354 = add i64 %1302, -1328
  %1355 = add i64 %1354, %1353
  %1356 = add i64 %1301, 11
  store i64 %1356, i64* %PC.i, align 8
  %1357 = inttoptr i64 %1355 to i32*
  %1358 = load i32, i32* %1357, align 4
  %1359 = zext i32 %1358 to i64
  store i64 %1359, i64* %RCX.i2066, align 8
  %1360 = add i64 %1302, -12
  %1361 = add i64 %1301, 14
  store i64 %1361, i64* %PC.i, align 8
  %1362 = inttoptr i64 %1360 to i32*
  %1363 = load i32, i32* %1362, align 4
  %1364 = add i32 %1363, %1358
  %1365 = zext i32 %1364 to i64
  store i64 %1365, i64* %RCX.i2066, align 8
  %1366 = icmp ult i32 %1364, %1358
  %1367 = icmp ult i32 %1364, %1363
  %1368 = or i1 %1366, %1367
  %1369 = zext i1 %1368 to i8
  store i8 %1369, i8* %14, align 1
  %1370 = and i32 %1364, 255
  %1371 = tail call i32 @llvm.ctpop.i32(i32 %1370)
  %1372 = trunc i32 %1371 to i8
  %1373 = and i8 %1372, 1
  %1374 = xor i8 %1373, 1
  store i8 %1374, i8* %21, align 1
  %1375 = xor i32 %1363, %1358
  %1376 = xor i32 %1375, %1364
  %1377 = lshr i32 %1376, 4
  %1378 = trunc i32 %1377 to i8
  %1379 = and i8 %1378, 1
  store i8 %1379, i8* %27, align 1
  %1380 = icmp eq i32 %1364, 0
  %1381 = zext i1 %1380 to i8
  store i8 %1381, i8* %30, align 1
  %1382 = lshr i32 %1364, 31
  %1383 = trunc i32 %1382 to i8
  store i8 %1383, i8* %33, align 1
  %1384 = lshr i32 %1358, 31
  %1385 = lshr i32 %1363, 31
  %1386 = xor i32 %1382, %1384
  %1387 = xor i32 %1382, %1385
  %1388 = add nuw nsw i32 %1386, %1387
  %1389 = icmp eq i32 %1388, 2
  %1390 = zext i1 %1389 to i8
  store i8 %1390, i8* %39, align 1
  %1391 = add i64 %1301, 17
  store i64 %1391, i64* %PC.i, align 8
  %1392 = load i32, i32* %1350, align 4
  %1393 = sub i32 %1364, %1392
  %1394 = zext i32 %1393 to i64
  store i64 %1394, i64* %RCX.i2066, align 8
  %1395 = icmp ult i32 %1364, %1392
  %1396 = zext i1 %1395 to i8
  store i8 %1396, i8* %14, align 1
  %1397 = and i32 %1393, 255
  %1398 = tail call i32 @llvm.ctpop.i32(i32 %1397)
  %1399 = trunc i32 %1398 to i8
  %1400 = and i8 %1399, 1
  %1401 = xor i8 %1400, 1
  store i8 %1401, i8* %21, align 1
  %1402 = xor i32 %1392, %1364
  %1403 = xor i32 %1402, %1393
  %1404 = lshr i32 %1403, 4
  %1405 = trunc i32 %1404 to i8
  %1406 = and i8 %1405, 1
  store i8 %1406, i8* %27, align 1
  %1407 = icmp eq i32 %1393, 0
  %1408 = zext i1 %1407 to i8
  store i8 %1408, i8* %30, align 1
  %1409 = lshr i32 %1393, 31
  %1410 = trunc i32 %1409 to i8
  store i8 %1410, i8* %33, align 1
  %1411 = lshr i32 %1392, 31
  %1412 = xor i32 %1411, %1382
  %1413 = xor i32 %1409, %1382
  %1414 = add nuw nsw i32 %1413, %1412
  %1415 = icmp eq i32 %1414, 2
  %1416 = zext i1 %1415 to i8
  store i8 %1416, i8* %39, align 1
  %1417 = add i64 %1301, 20
  store i64 %1417, i64* %PC.i, align 8
  %1418 = load i32, i32* %1362, align 4
  %1419 = add i32 %1418, 1
  %1420 = zext i32 %1419 to i64
  store i64 %1420, i64* %RDX.i2064, align 8
  %1421 = icmp eq i32 %1418, -1
  %1422 = icmp eq i32 %1419, 0
  %1423 = or i1 %1421, %1422
  %1424 = zext i1 %1423 to i8
  store i8 %1424, i8* %14, align 1
  %1425 = and i32 %1419, 255
  %1426 = tail call i32 @llvm.ctpop.i32(i32 %1425)
  %1427 = trunc i32 %1426 to i8
  %1428 = and i8 %1427, 1
  %1429 = xor i8 %1428, 1
  store i8 %1429, i8* %21, align 1
  %1430 = xor i32 %1418, %1419
  %1431 = lshr i32 %1430, 4
  %1432 = trunc i32 %1431 to i8
  %1433 = and i8 %1432, 1
  store i8 %1433, i8* %27, align 1
  %1434 = icmp eq i32 %1419, 0
  %1435 = zext i1 %1434 to i8
  store i8 %1435, i8* %30, align 1
  %1436 = lshr i32 %1419, 31
  %1437 = trunc i32 %1436 to i8
  store i8 %1437, i8* %33, align 1
  %1438 = lshr i32 %1418, 31
  %1439 = xor i32 %1436, %1438
  %1440 = add nuw nsw i32 %1439, %1436
  %1441 = icmp eq i32 %1440, 2
  %1442 = zext i1 %1441 to i8
  store i8 %1442, i8* %39, align 1
  %1443 = sext i32 %1419 to i64
  store i64 %1443, i64* %RAX.i1508, align 8
  %1444 = load i64, i64* %RBP.i, align 8
  %1445 = shl nsw i64 %1443, 2
  %1446 = add i64 %1444, -1328
  %1447 = add i64 %1446, %1445
  %1448 = add i64 %1301, 33
  store i64 %1448, i64* %PC.i, align 8
  %1449 = inttoptr i64 %1447 to i32*
  store i32 %1393, i32* %1449, align 4
  %.pre19 = load i64, i64* %PC.i, align 8
  br label %block_.L_400c9b

block_.L_400c9b:                                  ; preds = %block_.L_400c7a, %block_400c5a
  %1450 = phi i64 [ %.pre19, %block_.L_400c7a ], [ %1347, %block_400c5a ]
  %1451 = load i64, i64* %RBP.i, align 8
  %1452 = add i64 %1451, -4
  %1453 = add i64 %1450, 7
  store i64 %1453, i64* %PC.i, align 8
  %1454 = inttoptr i64 %1452 to i32*
  store i32 0, i32* %1454, align 4
  %.pre20 = load i64, i64* %PC.i, align 8
  br label %block_.L_400ca2

block_.L_400ca2:                                  ; preds = %block_400cac, %block_.L_400c9b
  %1455 = phi i64 [ %1564, %block_400cac ], [ %.pre20, %block_.L_400c9b ]
  %1456 = load i64, i64* %RBP.i, align 8
  %1457 = add i64 %1456, -4
  %1458 = add i64 %1455, 4
  store i64 %1458, i64* %PC.i, align 8
  %1459 = inttoptr i64 %1457 to i32*
  %1460 = load i32, i32* %1459, align 4
  %1461 = add i32 %1460, -16
  %1462 = icmp ult i32 %1460, 16
  %1463 = zext i1 %1462 to i8
  store i8 %1463, i8* %14, align 1
  %1464 = and i32 %1461, 255
  %1465 = tail call i32 @llvm.ctpop.i32(i32 %1464)
  %1466 = trunc i32 %1465 to i8
  %1467 = and i8 %1466, 1
  %1468 = xor i8 %1467, 1
  store i8 %1468, i8* %21, align 1
  %1469 = xor i32 %1460, 16
  %1470 = xor i32 %1469, %1461
  %1471 = lshr i32 %1470, 4
  %1472 = trunc i32 %1471 to i8
  %1473 = and i8 %1472, 1
  store i8 %1473, i8* %27, align 1
  %1474 = icmp eq i32 %1461, 0
  %1475 = zext i1 %1474 to i8
  store i8 %1475, i8* %30, align 1
  %1476 = lshr i32 %1461, 31
  %1477 = trunc i32 %1476 to i8
  store i8 %1477, i8* %33, align 1
  %1478 = lshr i32 %1460, 31
  %1479 = xor i32 %1476, %1478
  %1480 = add nuw nsw i32 %1479, %1478
  %1481 = icmp eq i32 %1480, 2
  %1482 = zext i1 %1481 to i8
  store i8 %1482, i8* %39, align 1
  %1483 = icmp ne i8 %1477, 0
  %1484 = xor i1 %1483, %1481
  %.v155 = select i1 %1484, i64 10, i64 58
  %1485 = add i64 %1455, %.v155
  store i64 %1485, i64* %3, align 8
  br i1 %1484, label %block_400cac, label %block_.L_400cdc

block_400cac:                                     ; preds = %block_.L_400ca2
  %1486 = add i64 %1456, -1168
  store i64 %1486, i64* %RAX.i1508, align 8
  %1487 = add i64 %1456, -12
  %1488 = add i64 %1485, 10
  store i64 %1488, i64* %PC.i, align 8
  %1489 = inttoptr i64 %1487 to i32*
  %1490 = load i32, i32* %1489, align 4
  %1491 = add i32 %1490, 1
  %1492 = zext i32 %1491 to i64
  store i64 %1492, i64* %RCX.i2066, align 8
  %1493 = sext i32 %1491 to i64
  %1494 = shl nsw i64 %1493, 6
  store i64 %1494, i64* %RDX.i2064, align 8
  %1495 = lshr i64 %1493, 57
  %1496 = and i64 %1495, 1
  %1497 = add i64 %1494, %1486
  store i64 %1497, i64* %RAX.i1508, align 8
  %1498 = icmp ult i64 %1497, %1486
  %1499 = icmp ult i64 %1497, %1494
  %1500 = or i1 %1498, %1499
  %1501 = zext i1 %1500 to i8
  store i8 %1501, i8* %14, align 1
  %1502 = trunc i64 %1497 to i32
  %1503 = and i32 %1502, 255
  %1504 = tail call i32 @llvm.ctpop.i32(i32 %1503)
  %1505 = trunc i32 %1504 to i8
  %1506 = and i8 %1505, 1
  %1507 = xor i8 %1506, 1
  store i8 %1507, i8* %21, align 1
  %1508 = xor i64 %1486, %1497
  %1509 = lshr i64 %1508, 4
  %1510 = trunc i64 %1509 to i8
  %1511 = and i8 %1510, 1
  store i8 %1511, i8* %27, align 1
  %1512 = icmp eq i64 %1497, 0
  %1513 = zext i1 %1512 to i8
  store i8 %1513, i8* %30, align 1
  %1514 = lshr i64 %1497, 63
  %1515 = trunc i64 %1514 to i8
  store i8 %1515, i8* %33, align 1
  %1516 = lshr i64 %1486, 63
  %1517 = xor i64 %1514, %1516
  %1518 = xor i64 %1514, %1496
  %1519 = add nuw nsw i64 %1517, %1518
  %1520 = icmp eq i64 %1519, 2
  %1521 = zext i1 %1520 to i8
  store i8 %1521, i8* %39, align 1
  %1522 = load i64, i64* %RBP.i, align 8
  %1523 = add i64 %1522, -4
  %1524 = add i64 %1485, 27
  store i64 %1524, i64* %PC.i, align 8
  %1525 = inttoptr i64 %1523 to i32*
  %1526 = load i32, i32* %1525, align 4
  %1527 = sext i32 %1526 to i64
  store i64 %1527, i64* %RDX.i2064, align 8
  %1528 = shl nsw i64 %1527, 2
  %1529 = add i64 %1528, %1497
  %1530 = add i64 %1485, 34
  store i64 %1530, i64* %PC.i, align 8
  %1531 = inttoptr i64 %1529 to i32*
  store i32 0, i32* %1531, align 4
  %1532 = load i64, i64* %RBP.i, align 8
  %1533 = add i64 %1532, -4
  %1534 = load i64, i64* %PC.i, align 8
  %1535 = add i64 %1534, 3
  store i64 %1535, i64* %PC.i, align 8
  %1536 = inttoptr i64 %1533 to i32*
  %1537 = load i32, i32* %1536, align 4
  %1538 = add i32 %1537, 1
  %1539 = zext i32 %1538 to i64
  store i64 %1539, i64* %RAX.i1508, align 8
  %1540 = icmp eq i32 %1537, -1
  %1541 = icmp eq i32 %1538, 0
  %1542 = or i1 %1540, %1541
  %1543 = zext i1 %1542 to i8
  store i8 %1543, i8* %14, align 1
  %1544 = and i32 %1538, 255
  %1545 = tail call i32 @llvm.ctpop.i32(i32 %1544)
  %1546 = trunc i32 %1545 to i8
  %1547 = and i8 %1546, 1
  %1548 = xor i8 %1547, 1
  store i8 %1548, i8* %21, align 1
  %1549 = xor i32 %1537, %1538
  %1550 = lshr i32 %1549, 4
  %1551 = trunc i32 %1550 to i8
  %1552 = and i8 %1551, 1
  store i8 %1552, i8* %27, align 1
  %1553 = icmp eq i32 %1538, 0
  %1554 = zext i1 %1553 to i8
  store i8 %1554, i8* %30, align 1
  %1555 = lshr i32 %1538, 31
  %1556 = trunc i32 %1555 to i8
  store i8 %1556, i8* %33, align 1
  %1557 = lshr i32 %1537, 31
  %1558 = xor i32 %1555, %1557
  %1559 = add nuw nsw i32 %1558, %1555
  %1560 = icmp eq i32 %1559, 2
  %1561 = zext i1 %1560 to i8
  store i8 %1561, i8* %39, align 1
  %1562 = add i64 %1534, 9
  store i64 %1562, i64* %PC.i, align 8
  store i32 %1538, i32* %1536, align 4
  %1563 = load i64, i64* %PC.i, align 8
  %1564 = add i64 %1563, -53
  store i64 %1564, i64* %3, align 8
  br label %block_.L_400ca2

block_.L_400cdc:                                  ; preds = %block_.L_400ca2
  %1565 = add i64 %1485, 7
  store i64 %1565, i64* %PC.i, align 8
  store i32 0, i32* %1459, align 4
  %.pre21 = load i64, i64* %PC.i, align 8
  br label %block_.L_400ce3

block_.L_400ce3:                                  ; preds = %block_.L_400d91, %block_.L_400cdc
  %1566 = phi i64 [ %.pre21, %block_.L_400cdc ], [ %2009, %block_.L_400d91 ]
  %MEMORY.14 = phi %struct.Memory* [ %MEMORY.5, %block_.L_400cdc ], [ %MEMORY.15, %block_.L_400d91 ]
  %1567 = load i64, i64* %RBP.i, align 8
  %1568 = add i64 %1567, -4
  %1569 = add i64 %1566, 3
  store i64 %1569, i64* %PC.i, align 8
  %1570 = inttoptr i64 %1568 to i32*
  %1571 = load i32, i32* %1570, align 4
  %1572 = zext i32 %1571 to i64
  store i64 %1572, i64* %RAX.i1508, align 8
  %1573 = add i64 %1567, -16
  %1574 = add i64 %1566, 7
  store i64 %1574, i64* %PC.i, align 8
  %1575 = inttoptr i64 %1573 to i32*
  %1576 = load i32, i32* %1575, align 4
  %1577 = sext i32 %1576 to i64
  store i64 %1577, i64* %RCX.i2066, align 8
  %1578 = shl nsw i64 %1577, 2
  %1579 = add i64 %1567, -1328
  %1580 = add i64 %1579, %1578
  %1581 = add i64 %1566, 14
  store i64 %1581, i64* %PC.i, align 8
  %1582 = inttoptr i64 %1580 to i32*
  %1583 = load i32, i32* %1582, align 4
  %1584 = sub i32 %1571, %1583
  %1585 = icmp ult i32 %1571, %1583
  %1586 = zext i1 %1585 to i8
  store i8 %1586, i8* %14, align 1
  %1587 = and i32 %1584, 255
  %1588 = tail call i32 @llvm.ctpop.i32(i32 %1587)
  %1589 = trunc i32 %1588 to i8
  %1590 = and i8 %1589, 1
  %1591 = xor i8 %1590, 1
  store i8 %1591, i8* %21, align 1
  %1592 = xor i32 %1583, %1571
  %1593 = xor i32 %1592, %1584
  %1594 = lshr i32 %1593, 4
  %1595 = trunc i32 %1594 to i8
  %1596 = and i8 %1595, 1
  store i8 %1596, i8* %27, align 1
  %1597 = icmp eq i32 %1584, 0
  %1598 = zext i1 %1597 to i8
  store i8 %1598, i8* %30, align 1
  %1599 = lshr i32 %1584, 31
  %1600 = trunc i32 %1599 to i8
  store i8 %1600, i8* %33, align 1
  %1601 = lshr i32 %1571, 31
  %1602 = lshr i32 %1583, 31
  %1603 = xor i32 %1602, %1601
  %1604 = xor i32 %1599, %1601
  %1605 = add nuw nsw i32 %1604, %1603
  %1606 = icmp eq i32 %1605, 2
  %1607 = zext i1 %1606 to i8
  store i8 %1607, i8* %39, align 1
  %1608 = icmp ne i8 %1600, 0
  %1609 = xor i1 %1608, %1606
  %.demorgan156 = or i1 %1597, %1609
  %.v157 = select i1 %.demorgan156, i64 20, i64 193
  %1610 = add i64 %1566, %.v157
  store i64 %1610, i64* %3, align 8
  br i1 %.demorgan156, label %block_400cf7, label %block_.L_400da4

block_400cf7:                                     ; preds = %block_.L_400ce3
  %1611 = add i64 %1567, -1168
  store i64 %1611, i64* %RAX.i1508, align 8
  %1612 = add i64 %1610, 11
  store i64 %1612, i64* %PC.i, align 8
  %1613 = load i32, i32* %1575, align 4
  %1614 = sext i32 %1613 to i64
  %1615 = shl nsw i64 %1614, 6
  store i64 %1615, i64* %RCX.i2066, align 8
  %1616 = lshr i64 %1614, 57
  %1617 = and i64 %1616, 1
  %1618 = add i64 %1615, %1611
  store i64 %1618, i64* %RAX.i1508, align 8
  %1619 = icmp ult i64 %1618, %1611
  %1620 = icmp ult i64 %1618, %1615
  %1621 = or i1 %1619, %1620
  %1622 = zext i1 %1621 to i8
  store i8 %1622, i8* %14, align 1
  %1623 = trunc i64 %1618 to i32
  %1624 = and i32 %1623, 255
  %1625 = tail call i32 @llvm.ctpop.i32(i32 %1624)
  %1626 = trunc i32 %1625 to i8
  %1627 = and i8 %1626, 1
  %1628 = xor i8 %1627, 1
  store i8 %1628, i8* %21, align 1
  %1629 = xor i64 %1611, %1618
  %1630 = lshr i64 %1629, 4
  %1631 = trunc i64 %1630 to i8
  %1632 = and i8 %1631, 1
  store i8 %1632, i8* %27, align 1
  %1633 = icmp eq i64 %1618, 0
  %1634 = zext i1 %1633 to i8
  store i8 %1634, i8* %30, align 1
  %1635 = lshr i64 %1618, 63
  %1636 = trunc i64 %1635 to i8
  store i8 %1636, i8* %33, align 1
  %1637 = lshr i64 %1611, 63
  %1638 = xor i64 %1635, %1637
  %1639 = xor i64 %1635, %1617
  %1640 = add nuw nsw i64 %1638, %1639
  %1641 = icmp eq i64 %1640, 2
  %1642 = zext i1 %1641 to i8
  store i8 %1642, i8* %39, align 1
  %1643 = add i64 %1610, 22
  store i64 %1643, i64* %PC.i, align 8
  %1644 = load i32, i32* %1570, align 4
  %1645 = sext i32 %1644 to i64
  store i64 %1645, i64* %RCX.i2066, align 8
  %1646 = shl nsw i64 %1645, 2
  %1647 = add i64 %1646, %1618
  %1648 = add i64 %1610, 26
  store i64 %1648, i64* %PC.i, align 8
  %1649 = inttoptr i64 %1647 to i32*
  %1650 = load i32, i32* %1649, align 4
  %1651 = add i32 %1650, 1
  %1652 = icmp ne i32 %1650, -1
  %1653 = zext i1 %1652 to i8
  store i8 %1653, i8* %14, align 1
  %1654 = and i32 %1651, 255
  %1655 = tail call i32 @llvm.ctpop.i32(i32 %1654)
  %1656 = trunc i32 %1655 to i8
  %1657 = and i8 %1656, 1
  %1658 = xor i8 %1657, 1
  store i8 %1658, i8* %21, align 1
  %1659 = xor i32 %1650, 16
  %1660 = xor i32 %1651, %1659
  %1661 = lshr i32 %1660, 4
  %1662 = trunc i32 %1661 to i8
  %1663 = and i8 %1662, 1
  store i8 %1663, i8* %27, align 1
  %1664 = icmp eq i32 %1651, 0
  %1665 = zext i1 %1664 to i8
  store i8 %1665, i8* %30, align 1
  %1666 = lshr i32 %1651, 31
  %1667 = trunc i32 %1666 to i8
  store i8 %1667, i8* %33, align 1
  %1668 = lshr i32 %1650, 31
  %1669 = xor i32 %1668, 1
  %1670 = xor i32 %1666, %1668
  %1671 = add nuw nsw i32 %1670, %1669
  %1672 = icmp eq i32 %1671, 2
  %1673 = zext i1 %1672 to i8
  store i8 %1673, i8* %39, align 1
  %.v158 = select i1 %1664, i64 154, i64 32
  %1674 = add i64 %1610, %.v158
  store i64 %1674, i64* %3, align 8
  br i1 %1664, label %block_.L_400d91, label %block_400d17

block_400d17:                                     ; preds = %block_400cf7
  %1675 = load i64, i64* %RBP.i, align 8
  %1676 = add i64 %1675, -1168
  store i64 %1676, i64* %RAX.i1508, align 8
  store i64 255, i64* %RCX.i2066, align 8
  %1677 = add i64 %1675, -12
  %1678 = add i64 %1674, 16
  store i64 %1678, i64* %PC.i, align 8
  %1679 = inttoptr i64 %1677 to i32*
  %1680 = load i32, i32* %1679, align 4
  %1681 = sext i32 %1680 to i64
  store i64 %1681, i64* %RDX.i2064, align 8
  %1682 = shl nsw i64 %1681, 2
  %1683 = add i64 %1675, -1248
  %1684 = add i64 %1683, %1682
  %1685 = add i64 %1674, 23
  store i64 %1685, i64* %PC.i, align 8
  %1686 = inttoptr i64 %1684 to i32*
  %1687 = load i32, i32* %1686, align 4
  %1688 = add i32 %1687, 255
  %1689 = zext i32 %1688 to i64
  store i64 %1689, i64* %RSI.i2060, align 8
  %1690 = icmp ugt i32 %1687, -256
  %1691 = zext i1 %1690 to i8
  store i8 %1691, i8* %14, align 1
  %1692 = and i32 %1688, 255
  %1693 = tail call i32 @llvm.ctpop.i32(i32 %1692)
  %1694 = trunc i32 %1693 to i8
  %1695 = and i8 %1694, 1
  %1696 = xor i8 %1695, 1
  store i8 %1696, i8* %21, align 1
  %1697 = xor i32 %1687, 16
  %1698 = xor i32 %1697, %1688
  %1699 = lshr i32 %1698, 4
  %1700 = trunc i32 %1699 to i8
  %1701 = and i8 %1700, 1
  store i8 %1701, i8* %27, align 1
  %1702 = icmp eq i32 %1688, 0
  %1703 = zext i1 %1702 to i8
  store i8 %1703, i8* %30, align 1
  %1704 = lshr i32 %1688, 31
  %1705 = trunc i32 %1704 to i8
  store i8 %1705, i8* %33, align 1
  %1706 = lshr i32 %1687, 31
  %1707 = xor i32 %1704, %1706
  %1708 = add nuw nsw i32 %1707, %1704
  %1709 = icmp eq i32 %1708, 2
  %1710 = zext i1 %1709 to i8
  store i8 %1710, i8* %39, align 1
  %1711 = add i64 %1675, -16
  %1712 = add i64 %1674, 33
  store i64 %1712, i64* %PC.i, align 8
  %1713 = inttoptr i64 %1711 to i32*
  %1714 = load i32, i32* %1713, align 4
  %1715 = sext i32 %1714 to i64
  store i64 %1715, i64* %RDX.i2064, align 8
  %1716 = shl nsw i64 %1715, 2
  %1717 = add i64 %1683, %1716
  %1718 = add i64 %1674, 40
  store i64 %1718, i64* %PC.i, align 8
  %1719 = inttoptr i64 %1717 to i32*
  %1720 = load i32, i32* %1719, align 4
  %1721 = sub i32 %1688, %1720
  %1722 = zext i32 %1721 to i64
  store i64 %1722, i64* %RSI.i2060, align 8
  %1723 = icmp ult i32 %1688, %1720
  %1724 = zext i1 %1723 to i8
  store i8 %1724, i8* %14, align 1
  %1725 = and i32 %1721, 255
  %1726 = tail call i32 @llvm.ctpop.i32(i32 %1725)
  %1727 = trunc i32 %1726 to i8
  %1728 = and i8 %1727, 1
  %1729 = xor i8 %1728, 1
  store i8 %1729, i8* %21, align 1
  %1730 = xor i32 %1720, %1688
  %1731 = xor i32 %1730, %1721
  %1732 = lshr i32 %1731, 4
  %1733 = trunc i32 %1732 to i8
  %1734 = and i8 %1733, 1
  store i8 %1734, i8* %27, align 1
  %1735 = icmp eq i32 %1721, 0
  %1736 = zext i1 %1735 to i8
  store i8 %1736, i8* %30, align 1
  %1737 = lshr i32 %1721, 31
  %1738 = trunc i32 %1737 to i8
  store i8 %1738, i8* %33, align 1
  %1739 = lshr i32 %1720, 31
  %1740 = xor i32 %1739, %1704
  %1741 = xor i32 %1737, %1704
  %1742 = add nuw nsw i32 %1741, %1740
  %1743 = icmp eq i32 %1742, 2
  %1744 = zext i1 %1743 to i8
  store i8 %1744, i8* %39, align 1
  %1745 = load i64, i64* %RBP.i, align 8
  %1746 = add i64 %1745, -16
  %1747 = add i64 %1674, 44
  store i64 %1747, i64* %PC.i, align 8
  %1748 = inttoptr i64 %1746 to i32*
  %1749 = load i32, i32* %1748, align 4
  %1750 = sext i32 %1749 to i64
  %1751 = shl nsw i64 %1750, 6
  store i64 %1751, i64* %RDX.i2064, align 8
  %1752 = lshr i64 %1750, 57
  %1753 = and i64 %1752, 1
  %1754 = load i64, i64* %RAX.i1508, align 8
  %1755 = add i64 %1751, %1754
  store i64 %1755, i64* %RDI.i1529, align 8
  %1756 = icmp ult i64 %1755, %1754
  %1757 = icmp ult i64 %1755, %1751
  %1758 = or i1 %1756, %1757
  %1759 = zext i1 %1758 to i8
  store i8 %1759, i8* %14, align 1
  %1760 = trunc i64 %1755 to i32
  %1761 = and i32 %1760, 255
  %1762 = tail call i32 @llvm.ctpop.i32(i32 %1761)
  %1763 = trunc i32 %1762 to i8
  %1764 = and i8 %1763, 1
  %1765 = xor i8 %1764, 1
  store i8 %1765, i8* %21, align 1
  %1766 = xor i64 %1754, %1755
  %1767 = lshr i64 %1766, 4
  %1768 = trunc i64 %1767 to i8
  %1769 = and i8 %1768, 1
  store i8 %1769, i8* %27, align 1
  %1770 = icmp eq i64 %1755, 0
  %1771 = zext i1 %1770 to i8
  store i8 %1771, i8* %30, align 1
  %1772 = lshr i64 %1755, 63
  %1773 = trunc i64 %1772 to i8
  store i8 %1773, i8* %33, align 1
  %1774 = lshr i64 %1754, 63
  %1775 = xor i64 %1772, %1774
  %1776 = xor i64 %1772, %1753
  %1777 = add nuw nsw i64 %1775, %1776
  %1778 = icmp eq i64 %1777, 2
  %1779 = zext i1 %1778 to i8
  store i8 %1779, i8* %39, align 1
  %1780 = add i64 %1745, -4
  %1781 = add i64 %1674, 58
  store i64 %1781, i64* %PC.i, align 8
  %1782 = inttoptr i64 %1780 to i32*
  %1783 = load i32, i32* %1782, align 4
  %1784 = sext i32 %1783 to i64
  store i64 %1784, i64* %RDX.i2064, align 8
  %1785 = load i64, i64* %RSI.i2060, align 8
  %1786 = shl nsw i64 %1784, 2
  %1787 = add i64 %1786, %1755
  %1788 = add i64 %1674, 61
  store i64 %1788, i64* %PC.i, align 8
  %1789 = trunc i64 %1785 to i32
  %1790 = inttoptr i64 %1787 to i32*
  %1791 = load i32, i32* %1790, align 4
  %1792 = add i32 %1791, %1789
  %1793 = zext i32 %1792 to i64
  store i64 %1793, i64* %RSI.i2060, align 8
  %1794 = icmp ult i32 %1792, %1789
  %1795 = icmp ult i32 %1792, %1791
  %1796 = or i1 %1794, %1795
  %1797 = zext i1 %1796 to i8
  store i8 %1797, i8* %14, align 1
  %1798 = and i32 %1792, 255
  %1799 = tail call i32 @llvm.ctpop.i32(i32 %1798)
  %1800 = trunc i32 %1799 to i8
  %1801 = and i8 %1800, 1
  %1802 = xor i8 %1801, 1
  store i8 %1802, i8* %21, align 1
  %1803 = xor i32 %1791, %1789
  %1804 = xor i32 %1803, %1792
  %1805 = lshr i32 %1804, 4
  %1806 = trunc i32 %1805 to i8
  %1807 = and i8 %1806, 1
  store i8 %1807, i8* %27, align 1
  %1808 = icmp eq i32 %1792, 0
  %1809 = zext i1 %1808 to i8
  store i8 %1809, i8* %30, align 1
  %1810 = lshr i32 %1792, 31
  %1811 = trunc i32 %1810 to i8
  store i8 %1811, i8* %33, align 1
  %1812 = lshr i32 %1789, 31
  %1813 = lshr i32 %1791, 31
  %1814 = xor i32 %1810, %1812
  %1815 = xor i32 %1810, %1813
  %1816 = add nuw nsw i32 %1814, %1815
  %1817 = icmp eq i32 %1816, 2
  %1818 = zext i1 %1817 to i8
  store i8 %1818, i8* %39, align 1
  %1819 = load i64, i64* %RBP.i, align 8
  %1820 = add i64 %1819, -2704
  %1821 = add i64 %1674, 68
  store i64 %1821, i64* %PC.i, align 8
  %1822 = inttoptr i64 %1820 to i64*
  store i64 %1754, i64* %1822, align 8
  %1823 = load i32, i32* %ESI.i2054, align 4
  %1824 = zext i32 %1823 to i64
  %1825 = load i64, i64* %PC.i, align 8
  store i64 %1824, i64* %RAX.i1508, align 8
  %1826 = sext i32 %1823 to i64
  %1827 = lshr i64 %1826, 32
  store i64 %1827, i64* %57, align 8
  %1828 = load i32, i32* %ECX.i1986, align 4
  %1829 = add i64 %1825, 5
  store i64 %1829, i64* %PC.i, align 8
  %1830 = zext i32 %1823 to i64
  %1831 = sext i32 %1828 to i64
  %1832 = shl nuw i64 %1827, 32
  %1833 = or i64 %1832, %1830
  %1834 = sdiv i64 %1833, %1831
  %1835 = shl i64 %1834, 32
  %1836 = ashr exact i64 %1835, 32
  %1837 = icmp eq i64 %1834, %1836
  br i1 %1837, label %1840, label %1838

; <label>:1838:                                   ; preds = %block_400d17
  %1839 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1829, %struct.Memory* %MEMORY.14)
  %.pre22 = load i32, i32* %EDX.i2048, align 4
  %.pre23 = load i64, i64* %PC.i, align 8
  br label %routine_idivl__ecx.exit1506

; <label>:1840:                                   ; preds = %block_400d17
  %1841 = srem i64 %1833, %1831
  %1842 = and i64 %1834, 4294967295
  store i64 %1842, i64* %58, align 8
  %1843 = and i64 %1841, 4294967295
  store i64 %1843, i64* %59, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1844 = trunc i64 %1841 to i32
  br label %routine_idivl__ecx.exit1506

routine_idivl__ecx.exit1506:                      ; preds = %1840, %1838
  %1845 = phi i64 [ %.pre23, %1838 ], [ %1829, %1840 ]
  %1846 = phi i32 [ %.pre22, %1838 ], [ %1844, %1840 ]
  %1847 = phi %struct.Memory* [ %1839, %1838 ], [ %MEMORY.14, %1840 ]
  %1848 = sext i32 %1846 to i64
  store i64 %1848, i64* %RDI.i1529, align 8
  %1849 = shl nsw i64 %1848, 2
  %1850 = add nsw i64 %1849, 6305920
  %1851 = add i64 %1845, 10
  store i64 %1851, i64* %PC.i, align 8
  %1852 = inttoptr i64 %1850 to i32*
  %1853 = load i32, i32* %1852, align 4
  %1854 = zext i32 %1853 to i64
  store i64 %1854, i64* %RCX.i2066, align 8
  %1855 = load i64, i64* %RBP.i, align 8
  %1856 = add i64 %1855, -12
  %1857 = add i64 %1845, 13
  store i64 %1857, i64* %PC.i, align 8
  %1858 = inttoptr i64 %1856 to i32*
  %1859 = load i32, i32* %1858, align 4
  %1860 = add i32 %1859, 1
  %1861 = zext i32 %1860 to i64
  store i64 %1861, i64* %RDX.i2064, align 8
  %1862 = sext i32 %1860 to i64
  %1863 = shl nsw i64 %1862, 6
  store i64 %1863, i64* %RDI.i1529, align 8
  %.lobit = lshr i32 %1860, 31
  %1864 = trunc i32 %.lobit to i8
  store i8 %1864, i8* %14, align 1
  %1865 = trunc i64 %1863 to i32
  %1866 = and i32 %1865, 192
  %1867 = tail call i32 @llvm.ctpop.i32(i32 %1866)
  %1868 = trunc i32 %1867 to i8
  %1869 = and i8 %1868, 1
  %1870 = xor i8 %1869, 1
  store i8 %1870, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1871 = icmp eq i32 %1860, 0
  %1872 = zext i1 %1871 to i8
  store i8 %1872, i8* %30, align 1
  %1873 = lshr i64 %1862, 57
  %1874 = and i64 %1873, 1
  %1875 = trunc i64 %1874 to i8
  store i8 %1875, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1876 = add i64 %1855, -2704
  %1877 = add i64 %1845, 30
  store i64 %1877, i64* %PC.i, align 8
  %1878 = inttoptr i64 %1876 to i64*
  %1879 = load i64, i64* %1878, align 8
  %1880 = add i64 %1863, %1879
  store i64 %1880, i64* %R8.i1487, align 8
  %1881 = icmp ult i64 %1880, %1879
  %1882 = icmp ult i64 %1880, %1863
  %1883 = or i1 %1881, %1882
  %1884 = zext i1 %1883 to i8
  store i8 %1884, i8* %14, align 1
  %1885 = trunc i64 %1880 to i32
  %1886 = and i32 %1885, 255
  %1887 = tail call i32 @llvm.ctpop.i32(i32 %1886)
  %1888 = trunc i32 %1887 to i8
  %1889 = and i8 %1888, 1
  %1890 = xor i8 %1889, 1
  store i8 %1890, i8* %21, align 1
  %1891 = xor i64 %1879, %1880
  %1892 = lshr i64 %1891, 4
  %1893 = trunc i64 %1892 to i8
  %1894 = and i8 %1893, 1
  store i8 %1894, i8* %27, align 1
  %1895 = icmp eq i64 %1880, 0
  %1896 = zext i1 %1895 to i8
  store i8 %1896, i8* %30, align 1
  %1897 = lshr i64 %1880, 63
  %1898 = trunc i64 %1897 to i8
  store i8 %1898, i8* %33, align 1
  %1899 = lshr i64 %1879, 63
  %1900 = xor i64 %1897, %1899
  %1901 = xor i64 %1897, %1874
  %1902 = add nuw nsw i64 %1900, %1901
  %1903 = icmp eq i64 %1902, 2
  %1904 = zext i1 %1903 to i8
  store i8 %1904, i8* %39, align 1
  %1905 = load i64, i64* %RBP.i, align 8
  %1906 = add i64 %1905, -4
  %1907 = add i64 %1845, 36
  store i64 %1907, i64* %PC.i, align 8
  %1908 = inttoptr i64 %1906 to i32*
  %1909 = load i32, i32* %1908, align 4
  %1910 = zext i32 %1909 to i64
  store i64 %1910, i64* %RDX.i2064, align 8
  %1911 = add i64 %1905, -12
  %1912 = add i64 %1845, 39
  store i64 %1912, i64* %PC.i, align 8
  %1913 = inttoptr i64 %1911 to i32*
  %1914 = load i32, i32* %1913, align 4
  %1915 = add i32 %1914, %1909
  %1916 = zext i32 %1915 to i64
  store i64 %1916, i64* %RDX.i2064, align 8
  %1917 = icmp ult i32 %1915, %1909
  %1918 = icmp ult i32 %1915, %1914
  %1919 = or i1 %1917, %1918
  %1920 = zext i1 %1919 to i8
  store i8 %1920, i8* %14, align 1
  %1921 = and i32 %1915, 255
  %1922 = tail call i32 @llvm.ctpop.i32(i32 %1921)
  %1923 = trunc i32 %1922 to i8
  %1924 = and i8 %1923, 1
  %1925 = xor i8 %1924, 1
  store i8 %1925, i8* %21, align 1
  %1926 = xor i32 %1914, %1909
  %1927 = xor i32 %1926, %1915
  %1928 = lshr i32 %1927, 4
  %1929 = trunc i32 %1928 to i8
  %1930 = and i8 %1929, 1
  store i8 %1930, i8* %27, align 1
  %1931 = icmp eq i32 %1915, 0
  %1932 = zext i1 %1931 to i8
  store i8 %1932, i8* %30, align 1
  %1933 = lshr i32 %1915, 31
  %1934 = trunc i32 %1933 to i8
  store i8 %1934, i8* %33, align 1
  %1935 = lshr i32 %1909, 31
  %1936 = lshr i32 %1914, 31
  %1937 = xor i32 %1933, %1935
  %1938 = xor i32 %1933, %1936
  %1939 = add nuw nsw i32 %1937, %1938
  %1940 = icmp eq i32 %1939, 2
  %1941 = zext i1 %1940 to i8
  store i8 %1941, i8* %39, align 1
  %1942 = add i64 %1905, -16
  %1943 = add i64 %1845, 42
  store i64 %1943, i64* %PC.i, align 8
  %1944 = inttoptr i64 %1942 to i32*
  %1945 = load i32, i32* %1944, align 4
  %1946 = sub i32 %1915, %1945
  %1947 = zext i32 %1946 to i64
  store i64 %1947, i64* %RDX.i2064, align 8
  %1948 = icmp ult i32 %1915, %1945
  %1949 = zext i1 %1948 to i8
  store i8 %1949, i8* %14, align 1
  %1950 = and i32 %1946, 255
  %1951 = tail call i32 @llvm.ctpop.i32(i32 %1950)
  %1952 = trunc i32 %1951 to i8
  %1953 = and i8 %1952, 1
  %1954 = xor i8 %1953, 1
  store i8 %1954, i8* %21, align 1
  %1955 = xor i32 %1945, %1915
  %1956 = xor i32 %1955, %1946
  %1957 = lshr i32 %1956, 4
  %1958 = trunc i32 %1957 to i8
  %1959 = and i8 %1958, 1
  store i8 %1959, i8* %27, align 1
  %1960 = icmp eq i32 %1946, 0
  %1961 = zext i1 %1960 to i8
  store i8 %1961, i8* %30, align 1
  %1962 = lshr i32 %1946, 31
  %1963 = trunc i32 %1962 to i8
  store i8 %1963, i8* %33, align 1
  %1964 = lshr i32 %1945, 31
  %1965 = xor i32 %1964, %1933
  %1966 = xor i32 %1962, %1933
  %1967 = add nuw nsw i32 %1966, %1965
  %1968 = icmp eq i32 %1967, 2
  %1969 = zext i1 %1968 to i8
  store i8 %1969, i8* %39, align 1
  %1970 = sext i32 %1946 to i64
  store i64 %1970, i64* %RDI.i1529, align 8
  %1971 = load i64, i64* %R8.i1487, align 8
  %1972 = shl nsw i64 %1970, 2
  %1973 = add i64 %1972, %1971
  %1974 = load i32, i32* %ECX.i1986, align 4
  %1975 = add i64 %1845, 49
  store i64 %1975, i64* %PC.i, align 8
  %1976 = inttoptr i64 %1973 to i32*
  store i32 %1974, i32* %1976, align 4
  %.pre24 = load i64, i64* %PC.i, align 8
  br label %block_.L_400d91

block_.L_400d91:                                  ; preds = %routine_idivl__ecx.exit1506, %block_400cf7
  %1977 = phi i64 [ %1674, %block_400cf7 ], [ %.pre24, %routine_idivl__ecx.exit1506 ]
  %MEMORY.15 = phi %struct.Memory* [ %MEMORY.14, %block_400cf7 ], [ %1847, %routine_idivl__ecx.exit1506 ]
  %1978 = load i64, i64* %RBP.i, align 8
  %1979 = add i64 %1978, -4
  %1980 = add i64 %1977, 8
  store i64 %1980, i64* %PC.i, align 8
  %1981 = inttoptr i64 %1979 to i32*
  %1982 = load i32, i32* %1981, align 4
  %1983 = add i32 %1982, 1
  %1984 = zext i32 %1983 to i64
  store i64 %1984, i64* %RAX.i1508, align 8
  %1985 = icmp eq i32 %1982, -1
  %1986 = icmp eq i32 %1983, 0
  %1987 = or i1 %1985, %1986
  %1988 = zext i1 %1987 to i8
  store i8 %1988, i8* %14, align 1
  %1989 = and i32 %1983, 255
  %1990 = tail call i32 @llvm.ctpop.i32(i32 %1989)
  %1991 = trunc i32 %1990 to i8
  %1992 = and i8 %1991, 1
  %1993 = xor i8 %1992, 1
  store i8 %1993, i8* %21, align 1
  %1994 = xor i32 %1982, %1983
  %1995 = lshr i32 %1994, 4
  %1996 = trunc i32 %1995 to i8
  %1997 = and i8 %1996, 1
  store i8 %1997, i8* %27, align 1
  %1998 = icmp eq i32 %1983, 0
  %1999 = zext i1 %1998 to i8
  store i8 %1999, i8* %30, align 1
  %2000 = lshr i32 %1983, 31
  %2001 = trunc i32 %2000 to i8
  store i8 %2001, i8* %33, align 1
  %2002 = lshr i32 %1982, 31
  %2003 = xor i32 %2000, %2002
  %2004 = add nuw nsw i32 %2003, %2000
  %2005 = icmp eq i32 %2004, 2
  %2006 = zext i1 %2005 to i8
  store i8 %2006, i8* %39, align 1
  %2007 = add i64 %1977, 14
  store i64 %2007, i64* %PC.i, align 8
  store i32 %1983, i32* %1981, align 4
  %2008 = load i64, i64* %PC.i, align 8
  %2009 = add i64 %2008, -188
  store i64 %2009, i64* %3, align 8
  br label %block_.L_400ce3

block_.L_400da4:                                  ; preds = %block_.L_400ce3
  %2010 = add i64 %1610, 7
  store i64 %2010, i64* %PC.i, align 8
  store i32 0, i32* %1570, align 4
  %.pre25 = load i64, i64* %PC.i, align 8
  br label %block_.L_400dab

block_.L_400dab:                                  ; preds = %block_400dbf, %block_.L_400da4
  %2011 = phi i64 [ %2281, %block_400dbf ], [ %.pre25, %block_.L_400da4 ]
  %2012 = load i64, i64* %RBP.i, align 8
  %2013 = add i64 %2012, -4
  %2014 = add i64 %2011, 3
  store i64 %2014, i64* %PC.i, align 8
  %2015 = inttoptr i64 %2013 to i32*
  %2016 = load i32, i32* %2015, align 4
  %2017 = zext i32 %2016 to i64
  store i64 %2017, i64* %RAX.i1508, align 8
  %2018 = add i64 %2012, -12
  %2019 = add i64 %2011, 7
  store i64 %2019, i64* %PC.i, align 8
  %2020 = inttoptr i64 %2018 to i32*
  %2021 = load i32, i32* %2020, align 4
  %2022 = sext i32 %2021 to i64
  store i64 %2022, i64* %RCX.i2066, align 8
  %2023 = shl nsw i64 %2022, 2
  %2024 = add i64 %2012, -1328
  %2025 = add i64 %2024, %2023
  %2026 = add i64 %2011, 14
  store i64 %2026, i64* %PC.i, align 8
  %2027 = inttoptr i64 %2025 to i32*
  %2028 = load i32, i32* %2027, align 4
  %2029 = sub i32 %2016, %2028
  %2030 = icmp ult i32 %2016, %2028
  %2031 = zext i1 %2030 to i8
  store i8 %2031, i8* %14, align 1
  %2032 = and i32 %2029, 255
  %2033 = tail call i32 @llvm.ctpop.i32(i32 %2032)
  %2034 = trunc i32 %2033 to i8
  %2035 = and i8 %2034, 1
  %2036 = xor i8 %2035, 1
  store i8 %2036, i8* %21, align 1
  %2037 = xor i32 %2028, %2016
  %2038 = xor i32 %2037, %2029
  %2039 = lshr i32 %2038, 4
  %2040 = trunc i32 %2039 to i8
  %2041 = and i8 %2040, 1
  store i8 %2041, i8* %27, align 1
  %2042 = icmp eq i32 %2029, 0
  %2043 = zext i1 %2042 to i8
  store i8 %2043, i8* %30, align 1
  %2044 = lshr i32 %2029, 31
  %2045 = trunc i32 %2044 to i8
  store i8 %2045, i8* %33, align 1
  %2046 = lshr i32 %2016, 31
  %2047 = lshr i32 %2028, 31
  %2048 = xor i32 %2047, %2046
  %2049 = xor i32 %2044, %2046
  %2050 = add nuw nsw i32 %2049, %2048
  %2051 = icmp eq i32 %2050, 2
  %2052 = zext i1 %2051 to i8
  store i8 %2052, i8* %39, align 1
  %2053 = icmp ne i8 %2045, 0
  %2054 = xor i1 %2053, %2051
  %.demorgan159 = or i1 %2042, %2054
  %.v160 = select i1 %.demorgan159, i64 20, i64 138
  %2055 = add i64 %2011, %.v160
  store i64 %2055, i64* %3, align 8
  br i1 %.demorgan159, label %block_400dbf, label %block_.L_400e35

block_400dbf:                                     ; preds = %block_.L_400dab
  %2056 = add i64 %2012, -1168
  store i64 %2056, i64* %RAX.i1508, align 8
  %2057 = add i64 %2055, 11
  store i64 %2057, i64* %PC.i, align 8
  %2058 = load i32, i32* %2020, align 4
  %2059 = sext i32 %2058 to i64
  %2060 = shl nsw i64 %2059, 6
  store i64 %2060, i64* %RCX.i2066, align 8
  %2061 = lshr i64 %2059, 57
  %2062 = and i64 %2061, 1
  %2063 = add i64 %2060, %2056
  store i64 %2063, i64* %RDX.i2064, align 8
  %2064 = icmp ult i64 %2063, %2056
  %2065 = icmp ult i64 %2063, %2060
  %2066 = or i1 %2064, %2065
  %2067 = zext i1 %2066 to i8
  store i8 %2067, i8* %14, align 1
  %2068 = trunc i64 %2063 to i32
  %2069 = and i32 %2068, 255
  %2070 = tail call i32 @llvm.ctpop.i32(i32 %2069)
  %2071 = trunc i32 %2070 to i8
  %2072 = and i8 %2071, 1
  %2073 = xor i8 %2072, 1
  store i8 %2073, i8* %21, align 1
  %2074 = xor i64 %2056, %2063
  %2075 = lshr i64 %2074, 4
  %2076 = trunc i64 %2075 to i8
  %2077 = and i8 %2076, 1
  store i8 %2077, i8* %27, align 1
  %2078 = icmp eq i64 %2063, 0
  %2079 = zext i1 %2078 to i8
  store i8 %2079, i8* %30, align 1
  %2080 = lshr i64 %2063, 63
  %2081 = trunc i64 %2080 to i8
  store i8 %2081, i8* %33, align 1
  %2082 = lshr i64 %2056, 63
  %2083 = xor i64 %2080, %2082
  %2084 = xor i64 %2080, %2062
  %2085 = add nuw nsw i64 %2083, %2084
  %2086 = icmp eq i64 %2085, 2
  %2087 = zext i1 %2086 to i8
  store i8 %2087, i8* %39, align 1
  %2088 = add i64 %2055, 25
  store i64 %2088, i64* %PC.i, align 8
  %2089 = load i32, i32* %2015, align 4
  %2090 = sext i32 %2089 to i64
  store i64 %2090, i64* %RCX.i2066, align 8
  %2091 = shl nsw i64 %2090, 2
  %2092 = add i64 %2091, %2063
  %2093 = add i64 %2055, 28
  store i64 %2093, i64* %PC.i, align 8
  %2094 = inttoptr i64 %2092 to i32*
  %2095 = load i32, i32* %2094, align 4
  %2096 = zext i32 %2095 to i64
  store i64 %2096, i64* %RSI.i2060, align 8
  %2097 = add i64 %2055, 31
  store i64 %2097, i64* %PC.i, align 8
  %2098 = load i32, i32* %2020, align 4
  %2099 = add i32 %2098, 1
  %2100 = zext i32 %2099 to i64
  store i64 %2100, i64* %RDI.i1529, align 8
  %2101 = sext i32 %2099 to i64
  %2102 = shl nsw i64 %2101, 6
  store i64 %2102, i64* %RCX.i2066, align 8
  %2103 = lshr i64 %2101, 57
  %2104 = and i64 %2103, 1
  %2105 = load i64, i64* %RAX.i1508, align 8
  %2106 = add i64 %2102, %2105
  store i64 %2106, i64* %RDX.i2064, align 8
  %2107 = icmp ult i64 %2106, %2105
  %2108 = icmp ult i64 %2106, %2102
  %2109 = or i1 %2107, %2108
  %2110 = zext i1 %2109 to i8
  store i8 %2110, i8* %14, align 1
  %2111 = trunc i64 %2106 to i32
  %2112 = and i32 %2111, 255
  %2113 = tail call i32 @llvm.ctpop.i32(i32 %2112)
  %2114 = trunc i32 %2113 to i8
  %2115 = and i8 %2114, 1
  %2116 = xor i8 %2115, 1
  store i8 %2116, i8* %21, align 1
  %2117 = xor i64 %2105, %2106
  %2118 = lshr i64 %2117, 4
  %2119 = trunc i64 %2118 to i8
  %2120 = and i8 %2119, 1
  store i8 %2120, i8* %27, align 1
  %2121 = icmp eq i64 %2106, 0
  %2122 = zext i1 %2121 to i8
  store i8 %2122, i8* %30, align 1
  %2123 = lshr i64 %2106, 63
  %2124 = trunc i64 %2123 to i8
  store i8 %2124, i8* %33, align 1
  %2125 = lshr i64 %2105, 63
  %2126 = xor i64 %2123, %2125
  %2127 = xor i64 %2123, %2104
  %2128 = add nuw nsw i64 %2126, %2127
  %2129 = icmp eq i64 %2128, 2
  %2130 = zext i1 %2129 to i8
  store i8 %2130, i8* %39, align 1
  %2131 = load i64, i64* %RBP.i, align 8
  %2132 = add i64 %2131, -4
  %2133 = add i64 %2055, 51
  store i64 %2133, i64* %PC.i, align 8
  %2134 = inttoptr i64 %2132 to i32*
  %2135 = load i32, i32* %2134, align 4
  %2136 = sext i32 %2135 to i64
  store i64 %2136, i64* %RCX.i2066, align 8
  %2137 = load i64, i64* %RSI.i2060, align 8
  %2138 = shl nsw i64 %2136, 2
  %2139 = add i64 %2138, %2106
  %2140 = add i64 %2055, 54
  store i64 %2140, i64* %PC.i, align 8
  %2141 = trunc i64 %2137 to i32
  %2142 = inttoptr i64 %2139 to i32*
  %2143 = load i32, i32* %2142, align 4
  %2144 = xor i32 %2143, %2141
  %2145 = zext i32 %2144 to i64
  store i64 %2145, i64* %RSI.i2060, align 8
  store i8 0, i8* %14, align 1
  %2146 = and i32 %2144, 255
  %2147 = tail call i32 @llvm.ctpop.i32(i32 %2146)
  %2148 = trunc i32 %2147 to i8
  %2149 = and i8 %2148, 1
  %2150 = xor i8 %2149, 1
  store i8 %2150, i8* %21, align 1
  %2151 = icmp eq i32 %2144, 0
  %2152 = zext i1 %2151 to i8
  store i8 %2152, i8* %30, align 1
  %2153 = lshr i32 %2144, 31
  %2154 = trunc i32 %2153 to i8
  store i8 %2154, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %2155 = add i64 %2055, 57
  store i64 %2155, i64* %PC.i, align 8
  store i32 %2144, i32* %2142, align 4
  %2156 = load i64, i64* %RBP.i, align 8
  %2157 = add i64 %2156, -12
  %2158 = load i64, i64* %PC.i, align 8
  %2159 = add i64 %2158, 4
  store i64 %2159, i64* %PC.i, align 8
  %2160 = inttoptr i64 %2157 to i32*
  %2161 = load i32, i32* %2160, align 4
  %2162 = sext i32 %2161 to i64
  %2163 = shl nsw i64 %2162, 6
  store i64 %2163, i64* %RCX.i2066, align 8
  %2164 = lshr i64 %2162, 57
  %2165 = and i64 %2164, 1
  %2166 = load i64, i64* %RAX.i1508, align 8
  %2167 = add i64 %2163, %2166
  store i64 %2167, i64* %RDX.i2064, align 8
  %2168 = icmp ult i64 %2167, %2166
  %2169 = icmp ult i64 %2167, %2163
  %2170 = or i1 %2168, %2169
  %2171 = zext i1 %2170 to i8
  store i8 %2171, i8* %14, align 1
  %2172 = trunc i64 %2167 to i32
  %2173 = and i32 %2172, 255
  %2174 = tail call i32 @llvm.ctpop.i32(i32 %2173)
  %2175 = trunc i32 %2174 to i8
  %2176 = and i8 %2175, 1
  %2177 = xor i8 %2176, 1
  store i8 %2177, i8* %21, align 1
  %2178 = xor i64 %2166, %2167
  %2179 = lshr i64 %2178, 4
  %2180 = trunc i64 %2179 to i8
  %2181 = and i8 %2180, 1
  store i8 %2181, i8* %27, align 1
  %2182 = icmp eq i64 %2167, 0
  %2183 = zext i1 %2182 to i8
  store i8 %2183, i8* %30, align 1
  %2184 = lshr i64 %2167, 63
  %2185 = trunc i64 %2184 to i8
  store i8 %2185, i8* %33, align 1
  %2186 = lshr i64 %2166, 63
  %2187 = xor i64 %2184, %2186
  %2188 = xor i64 %2184, %2165
  %2189 = add nuw nsw i64 %2187, %2188
  %2190 = icmp eq i64 %2189, 2
  %2191 = zext i1 %2190 to i8
  store i8 %2191, i8* %39, align 1
  %2192 = add i64 %2156, -4
  %2193 = add i64 %2158, 18
  store i64 %2193, i64* %PC.i, align 8
  %2194 = inttoptr i64 %2192 to i32*
  %2195 = load i32, i32* %2194, align 4
  %2196 = sext i32 %2195 to i64
  store i64 %2196, i64* %RCX.i2066, align 8
  %2197 = shl nsw i64 %2196, 2
  %2198 = add i64 %2197, %2167
  %2199 = add i64 %2158, 22
  store i64 %2199, i64* %PC.i, align 8
  %2200 = inttoptr i64 %2198 to i32*
  %2201 = load i32, i32* %2200, align 4
  %2202 = sext i32 %2201 to i64
  store i64 %2202, i64* %RCX.i2066, align 8
  %2203 = shl nsw i64 %2202, 2
  %2204 = add nsw i64 %2203, 6304896
  %2205 = add i64 %2158, 29
  store i64 %2205, i64* %PC.i, align 8
  %2206 = inttoptr i64 %2204 to i32*
  %2207 = load i32, i32* %2206, align 4
  %2208 = zext i32 %2207 to i64
  store i64 %2208, i64* %RSI.i2060, align 8
  %2209 = add i64 %2158, 33
  store i64 %2209, i64* %PC.i, align 8
  %2210 = load i32, i32* %2160, align 4
  %2211 = sext i32 %2210 to i64
  %2212 = shl nsw i64 %2211, 6
  store i64 %2212, i64* %RCX.i2066, align 8
  %2213 = lshr i64 %2211, 57
  %2214 = and i64 %2213, 1
  %2215 = add i64 %2212, %2166
  store i64 %2215, i64* %RAX.i1508, align 8
  %2216 = icmp ult i64 %2215, %2166
  %2217 = icmp ult i64 %2215, %2212
  %2218 = or i1 %2216, %2217
  %2219 = zext i1 %2218 to i8
  store i8 %2219, i8* %14, align 1
  %2220 = trunc i64 %2215 to i32
  %2221 = and i32 %2220, 255
  %2222 = tail call i32 @llvm.ctpop.i32(i32 %2221)
  %2223 = trunc i32 %2222 to i8
  %2224 = and i8 %2223, 1
  %2225 = xor i8 %2224, 1
  store i8 %2225, i8* %21, align 1
  %2226 = xor i64 %2166, %2215
  %2227 = lshr i64 %2226, 4
  %2228 = trunc i64 %2227 to i8
  %2229 = and i8 %2228, 1
  store i8 %2229, i8* %27, align 1
  %2230 = icmp eq i64 %2215, 0
  %2231 = zext i1 %2230 to i8
  store i8 %2231, i8* %30, align 1
  %2232 = lshr i64 %2215, 63
  %2233 = trunc i64 %2232 to i8
  store i8 %2233, i8* %33, align 1
  %2234 = xor i64 %2232, %2186
  %2235 = xor i64 %2232, %2214
  %2236 = add nuw nsw i64 %2234, %2235
  %2237 = icmp eq i64 %2236, 2
  %2238 = zext i1 %2237 to i8
  store i8 %2238, i8* %39, align 1
  %2239 = load i64, i64* %RBP.i, align 8
  %2240 = add i64 %2239, -4
  %2241 = add i64 %2158, 44
  store i64 %2241, i64* %PC.i, align 8
  %2242 = inttoptr i64 %2240 to i32*
  %2243 = load i32, i32* %2242, align 4
  %2244 = sext i32 %2243 to i64
  store i64 %2244, i64* %RCX.i2066, align 8
  %2245 = shl nsw i64 %2244, 2
  %2246 = add i64 %2245, %2215
  %2247 = add i64 %2158, 47
  store i64 %2247, i64* %PC.i, align 8
  %2248 = inttoptr i64 %2246 to i32*
  store i32 %2207, i32* %2248, align 4
  %2249 = load i64, i64* %RBP.i, align 8
  %2250 = add i64 %2249, -4
  %2251 = load i64, i64* %PC.i, align 8
  %2252 = add i64 %2251, 3
  store i64 %2252, i64* %PC.i, align 8
  %2253 = inttoptr i64 %2250 to i32*
  %2254 = load i32, i32* %2253, align 4
  %2255 = add i32 %2254, 1
  %2256 = zext i32 %2255 to i64
  store i64 %2256, i64* %RAX.i1508, align 8
  %2257 = icmp eq i32 %2254, -1
  %2258 = icmp eq i32 %2255, 0
  %2259 = or i1 %2257, %2258
  %2260 = zext i1 %2259 to i8
  store i8 %2260, i8* %14, align 1
  %2261 = and i32 %2255, 255
  %2262 = tail call i32 @llvm.ctpop.i32(i32 %2261)
  %2263 = trunc i32 %2262 to i8
  %2264 = and i8 %2263, 1
  %2265 = xor i8 %2264, 1
  store i8 %2265, i8* %21, align 1
  %2266 = xor i32 %2254, %2255
  %2267 = lshr i32 %2266, 4
  %2268 = trunc i32 %2267 to i8
  %2269 = and i8 %2268, 1
  store i8 %2269, i8* %27, align 1
  %2270 = icmp eq i32 %2255, 0
  %2271 = zext i1 %2270 to i8
  store i8 %2271, i8* %30, align 1
  %2272 = lshr i32 %2255, 31
  %2273 = trunc i32 %2272 to i8
  store i8 %2273, i8* %33, align 1
  %2274 = lshr i32 %2254, 31
  %2275 = xor i32 %2272, %2274
  %2276 = add nuw nsw i32 %2275, %2272
  %2277 = icmp eq i32 %2276, 2
  %2278 = zext i1 %2277 to i8
  store i8 %2278, i8* %39, align 1
  %2279 = add i64 %2251, 9
  store i64 %2279, i64* %PC.i, align 8
  store i32 %2255, i32* %2253, align 4
  %2280 = load i64, i64* %PC.i, align 8
  %2281 = add i64 %2280, -133
  store i64 %2281, i64* %3, align 8
  br label %block_.L_400dab

block_.L_400e35:                                  ; preds = %block_.L_400dab
  %2282 = add i64 %2055, 5
  br label %block_.L_400e3a

block_.L_400e3a:                                  ; preds = %block_.L_400e35, %block_.L_400b7d
  %.sink = phi i64 [ %2282, %block_.L_400e35 ], [ %919, %block_.L_400b7d ]
  %2283 = phi i64 [ %2012, %block_.L_400e35 ], [ %663, %block_.L_400b7d ]
  %MEMORY.17 = phi %struct.Memory* [ %MEMORY.14, %block_.L_400e35 ], [ %MEMORY.5, %block_.L_400b7d ]
  %2284 = add i64 %2283, -12
  %2285 = add i64 %.sink, 3
  store i64 %2285, i64* %PC.i, align 8
  %2286 = inttoptr i64 %2284 to i32*
  %2287 = load i32, i32* %2286, align 4
  %2288 = zext i32 %2287 to i64
  store i64 %2288, i64* %RAX.i1508, align 8
  %2289 = add i64 %.sink, 6
  store i64 %2289, i64* %PC.i, align 8
  %2290 = load i32, i32* %2286, align 4
  %2291 = add i32 %2290, 1
  %2292 = zext i32 %2291 to i64
  store i64 %2292, i64* %RCX.i2066, align 8
  %2293 = icmp eq i32 %2290, -1
  %2294 = icmp eq i32 %2291, 0
  %2295 = or i1 %2293, %2294
  %2296 = zext i1 %2295 to i8
  store i8 %2296, i8* %14, align 1
  %2297 = and i32 %2291, 255
  %2298 = tail call i32 @llvm.ctpop.i32(i32 %2297)
  %2299 = trunc i32 %2298 to i8
  %2300 = and i8 %2299, 1
  %2301 = xor i8 %2300, 1
  store i8 %2301, i8* %21, align 1
  %2302 = xor i32 %2290, %2291
  %2303 = lshr i32 %2302, 4
  %2304 = trunc i32 %2303 to i8
  %2305 = and i8 %2304, 1
  store i8 %2305, i8* %27, align 1
  %2306 = icmp eq i32 %2291, 0
  %2307 = zext i1 %2306 to i8
  store i8 %2307, i8* %30, align 1
  %2308 = lshr i32 %2291, 31
  %2309 = trunc i32 %2308 to i8
  store i8 %2309, i8* %33, align 1
  %2310 = lshr i32 %2290, 31
  %2311 = xor i32 %2308, %2310
  %2312 = add nuw nsw i32 %2311, %2308
  %2313 = icmp eq i32 %2312, 2
  %2314 = zext i1 %2313 to i8
  store i8 %2314, i8* %39, align 1
  %2315 = sext i32 %2291 to i64
  store i64 %2315, i64* %RDX.i2064, align 8
  %2316 = shl nsw i64 %2315, 2
  %2317 = add i64 %2283, -1328
  %2318 = add i64 %2317, %2316
  %2319 = add i64 %.sink, 19
  store i64 %2319, i64* %PC.i, align 8
  %2320 = inttoptr i64 %2318 to i32*
  %2321 = load i32, i32* %2320, align 4
  %2322 = sub i32 %2287, %2321
  %2323 = zext i32 %2322 to i64
  store i64 %2323, i64* %RAX.i1508, align 8
  %2324 = icmp ult i32 %2287, %2321
  %2325 = zext i1 %2324 to i8
  store i8 %2325, i8* %14, align 1
  %2326 = and i32 %2322, 255
  %2327 = tail call i32 @llvm.ctpop.i32(i32 %2326)
  %2328 = trunc i32 %2327 to i8
  %2329 = and i8 %2328, 1
  %2330 = xor i8 %2329, 1
  store i8 %2330, i8* %21, align 1
  %2331 = xor i32 %2321, %2287
  %2332 = xor i32 %2331, %2322
  %2333 = lshr i32 %2332, 4
  %2334 = trunc i32 %2333 to i8
  %2335 = and i8 %2334, 1
  store i8 %2335, i8* %27, align 1
  %2336 = icmp eq i32 %2322, 0
  %2337 = zext i1 %2336 to i8
  store i8 %2337, i8* %30, align 1
  %2338 = lshr i32 %2322, 31
  %2339 = trunc i32 %2338 to i8
  store i8 %2339, i8* %33, align 1
  %2340 = lshr i32 %2287, 31
  %2341 = lshr i32 %2321, 31
  %2342 = xor i32 %2341, %2340
  %2343 = xor i32 %2338, %2340
  %2344 = add nuw nsw i32 %2343, %2342
  %2345 = icmp eq i32 %2344, 2
  %2346 = zext i1 %2345 to i8
  store i8 %2346, i8* %39, align 1
  %2347 = add i64 %.sink, 22
  store i64 %2347, i64* %PC.i, align 8
  %2348 = load i32, i32* %2286, align 4
  %2349 = add i32 %2348, 1
  %2350 = zext i32 %2349 to i64
  store i64 %2350, i64* %RCX.i2066, align 8
  %2351 = icmp eq i32 %2348, -1
  %2352 = icmp eq i32 %2349, 0
  %2353 = or i1 %2351, %2352
  %2354 = zext i1 %2353 to i8
  store i8 %2354, i8* %14, align 1
  %2355 = and i32 %2349, 255
  %2356 = tail call i32 @llvm.ctpop.i32(i32 %2355)
  %2357 = trunc i32 %2356 to i8
  %2358 = and i8 %2357, 1
  %2359 = xor i8 %2358, 1
  store i8 %2359, i8* %21, align 1
  %2360 = xor i32 %2348, %2349
  %2361 = lshr i32 %2360, 4
  %2362 = trunc i32 %2361 to i8
  %2363 = and i8 %2362, 1
  store i8 %2363, i8* %27, align 1
  %2364 = icmp eq i32 %2349, 0
  %2365 = zext i1 %2364 to i8
  store i8 %2365, i8* %30, align 1
  %2366 = lshr i32 %2349, 31
  %2367 = trunc i32 %2366 to i8
  store i8 %2367, i8* %33, align 1
  %2368 = lshr i32 %2348, 31
  %2369 = xor i32 %2366, %2368
  %2370 = add nuw nsw i32 %2369, %2366
  %2371 = icmp eq i32 %2370, 2
  %2372 = zext i1 %2371 to i8
  store i8 %2372, i8* %39, align 1
  %2373 = sext i32 %2349 to i64
  store i64 %2373, i64* %RDX.i2064, align 8
  %2374 = load i64, i64* %RBP.i, align 8
  %2375 = shl nsw i64 %2373, 2
  %2376 = add i64 %2374, -1408
  %2377 = add i64 %2376, %2375
  %2378 = add i64 %.sink, 35
  store i64 %2378, i64* %PC.i, align 8
  %2379 = inttoptr i64 %2377 to i32*
  store i32 %2322, i32* %2379, align 4
  %2380 = load i64, i64* %RBP.i, align 8
  %2381 = add i64 %2380, -12
  %2382 = load i64, i64* %PC.i, align 8
  %2383 = add i64 %2382, 4
  store i64 %2383, i64* %PC.i, align 8
  %2384 = inttoptr i64 %2381 to i32*
  %2385 = load i32, i32* %2384, align 4
  %2386 = add i32 %2385, -16
  %2387 = icmp ult i32 %2385, 16
  %2388 = zext i1 %2387 to i8
  store i8 %2388, i8* %14, align 1
  %2389 = and i32 %2386, 255
  %2390 = tail call i32 @llvm.ctpop.i32(i32 %2389)
  %2391 = trunc i32 %2390 to i8
  %2392 = and i8 %2391, 1
  %2393 = xor i8 %2392, 1
  store i8 %2393, i8* %21, align 1
  %2394 = xor i32 %2385, 16
  %2395 = xor i32 %2394, %2386
  %2396 = lshr i32 %2395, 4
  %2397 = trunc i32 %2396 to i8
  %2398 = and i8 %2397, 1
  store i8 %2398, i8* %27, align 1
  %2399 = icmp eq i32 %2386, 0
  %2400 = zext i1 %2399 to i8
  store i8 %2400, i8* %30, align 1
  %2401 = lshr i32 %2386, 31
  %2402 = trunc i32 %2401 to i8
  store i8 %2402, i8* %33, align 1
  %2403 = lshr i32 %2385, 31
  %2404 = xor i32 %2401, %2403
  %2405 = add nuw nsw i32 %2404, %2403
  %2406 = icmp eq i32 %2405, 2
  %2407 = zext i1 %2406 to i8
  store i8 %2407, i8* %39, align 1
  %2408 = icmp ne i8 %2402, 0
  %2409 = xor i1 %2408, %2406
  %.v103 = select i1 %2409, i64 10, i64 366
  %2410 = add i64 %2382, %.v103
  store i64 %2410, i64* %3, align 8
  br i1 %2409, label %block_400e67, label %block_.L_400fcb

block_400e67:                                     ; preds = %block_.L_400e3a
  %2411 = add i64 %2410, 3
  store i64 %2411, i64* %PC.i, align 8
  %2412 = load i32, i32* %2384, align 4
  %2413 = add i32 %2412, 1
  %2414 = zext i32 %2413 to i64
  store i64 %2414, i64* %RAX.i1508, align 8
  %2415 = icmp eq i32 %2412, -1
  %2416 = icmp eq i32 %2413, 0
  %2417 = or i1 %2415, %2416
  %2418 = zext i1 %2417 to i8
  store i8 %2418, i8* %14, align 1
  %2419 = and i32 %2413, 255
  %2420 = tail call i32 @llvm.ctpop.i32(i32 %2419)
  %2421 = trunc i32 %2420 to i8
  %2422 = and i8 %2421, 1
  %2423 = xor i8 %2422, 1
  store i8 %2423, i8* %21, align 1
  %2424 = xor i32 %2412, %2413
  %2425 = lshr i32 %2424, 4
  %2426 = trunc i32 %2425 to i8
  %2427 = and i8 %2426, 1
  store i8 %2427, i8* %27, align 1
  %2428 = icmp eq i32 %2413, 0
  %2429 = zext i1 %2428 to i8
  store i8 %2429, i8* %30, align 1
  %2430 = lshr i32 %2413, 31
  %2431 = trunc i32 %2430 to i8
  store i8 %2431, i8* %33, align 1
  %2432 = lshr i32 %2412, 31
  %2433 = xor i32 %2430, %2432
  %2434 = add nuw nsw i32 %2433, %2430
  %2435 = icmp eq i32 %2434, 2
  %2436 = zext i1 %2435 to i8
  store i8 %2436, i8* %39, align 1
  %2437 = sext i32 %2413 to i64
  store i64 %2437, i64* %RCX.i2066, align 8
  %2438 = shl nsw i64 %2437, 2
  %2439 = add i64 %2380, -1488
  %2440 = add i64 %2439, %2438
  %2441 = add i64 %2410, 17
  store i64 %2441, i64* %PC.i, align 8
  %2442 = inttoptr i64 %2440 to i32*
  %2443 = load i32, i32* %2442, align 4
  %2444 = add i32 %2443, 1
  %2445 = icmp ne i32 %2443, -1
  %2446 = zext i1 %2445 to i8
  store i8 %2446, i8* %14, align 1
  %2447 = and i32 %2444, 255
  %2448 = tail call i32 @llvm.ctpop.i32(i32 %2447)
  %2449 = trunc i32 %2448 to i8
  %2450 = and i8 %2449, 1
  %2451 = xor i8 %2450, 1
  store i8 %2451, i8* %21, align 1
  %2452 = xor i32 %2443, 16
  %2453 = xor i32 %2444, %2452
  %2454 = lshr i32 %2453, 4
  %2455 = trunc i32 %2454 to i8
  %2456 = and i8 %2455, 1
  store i8 %2456, i8* %27, align 1
  %2457 = icmp eq i32 %2444, 0
  %2458 = zext i1 %2457 to i8
  store i8 %2458, i8* %30, align 1
  %2459 = lshr i32 %2444, 31
  %2460 = trunc i32 %2459 to i8
  store i8 %2460, i8* %33, align 1
  %2461 = lshr i32 %2443, 31
  %2462 = xor i32 %2461, 1
  %2463 = xor i32 %2459, %2461
  %2464 = add nuw nsw i32 %2463, %2462
  %2465 = icmp eq i32 %2464, 2
  %2466 = zext i1 %2465 to i8
  store i8 %2466, i8* %39, align 1
  %.v104 = select i1 %2457, i64 68, i64 23
  %2467 = add i64 %2410, %.v104
  %2468 = add i64 %2467, 3
  store i64 %2468, i64* %PC.i, align 8
  %2469 = load i32, i32* %2384, align 4
  %2470 = add i32 %2469, 1
  %2471 = zext i32 %2470 to i64
  store i64 %2471, i64* %RAX.i1508, align 8
  %2472 = icmp eq i32 %2469, -1
  %2473 = icmp eq i32 %2470, 0
  %2474 = or i1 %2472, %2473
  %2475 = zext i1 %2474 to i8
  store i8 %2475, i8* %14, align 1
  %2476 = and i32 %2470, 255
  %2477 = tail call i32 @llvm.ctpop.i32(i32 %2476)
  %2478 = trunc i32 %2477 to i8
  %2479 = and i8 %2478, 1
  %2480 = xor i8 %2479, 1
  store i8 %2480, i8* %21, align 1
  %2481 = xor i32 %2469, %2470
  %2482 = lshr i32 %2481, 4
  %2483 = trunc i32 %2482 to i8
  %2484 = and i8 %2483, 1
  store i8 %2484, i8* %27, align 1
  %2485 = icmp eq i32 %2470, 0
  %2486 = zext i1 %2485 to i8
  store i8 %2486, i8* %30, align 1
  %2487 = lshr i32 %2470, 31
  %2488 = trunc i32 %2487 to i8
  store i8 %2488, i8* %33, align 1
  %2489 = lshr i32 %2469, 31
  %2490 = xor i32 %2487, %2489
  %2491 = add nuw nsw i32 %2490, %2487
  %2492 = icmp eq i32 %2491, 2
  %2493 = zext i1 %2492 to i8
  store i8 %2493, i8* %39, align 1
  %2494 = add i64 %2467, 9
  store i64 %2494, i64* %PC.i, align 8
  %2495 = sext i32 %2470 to i64
  store i64 %2495, i64* %RCX.i2066, align 8
  %2496 = shl nsw i64 %2495, 2
  br i1 %2457, label %block_.L_400eab, label %block_400e7e

block_400e7e:                                     ; preds = %block_400e67
  %2497 = add i64 %2439, %2496
  %2498 = add i64 %2467, 17
  store i64 %2498, i64* %PC.i, align 8
  %2499 = inttoptr i64 %2497 to i32*
  %2500 = load i32, i32* %2499, align 4
  %2501 = sext i32 %2500 to i64
  store i64 %2501, i64* %RCX.i2066, align 8
  %2502 = shl nsw i64 %2501, 2
  %2503 = add nsw i64 %2502, 6305920
  %2504 = add i64 %2467, 24
  store i64 %2504, i64* %PC.i, align 8
  %2505 = inttoptr i64 %2503 to i32*
  %2506 = load i32, i32* %2505, align 4
  %2507 = zext i32 %2506 to i64
  store i64 %2507, i64* %RAX.i1508, align 8
  %2508 = add i64 %2467, 27
  store i64 %2508, i64* %PC.i, align 8
  %2509 = load i32, i32* %2384, align 4
  %2510 = add i32 %2509, 1
  %2511 = zext i32 %2510 to i64
  store i64 %2511, i64* %RDX.i2064, align 8
  %2512 = icmp eq i32 %2509, -1
  %2513 = icmp eq i32 %2510, 0
  %2514 = or i1 %2512, %2513
  %2515 = zext i1 %2514 to i8
  store i8 %2515, i8* %14, align 1
  %2516 = and i32 %2510, 255
  %2517 = tail call i32 @llvm.ctpop.i32(i32 %2516)
  %2518 = trunc i32 %2517 to i8
  %2519 = and i8 %2518, 1
  %2520 = xor i8 %2519, 1
  store i8 %2520, i8* %21, align 1
  %2521 = xor i32 %2509, %2510
  %2522 = lshr i32 %2521, 4
  %2523 = trunc i32 %2522 to i8
  %2524 = and i8 %2523, 1
  store i8 %2524, i8* %27, align 1
  %2525 = icmp eq i32 %2510, 0
  %2526 = zext i1 %2525 to i8
  store i8 %2526, i8* %30, align 1
  %2527 = lshr i32 %2510, 31
  %2528 = trunc i32 %2527 to i8
  store i8 %2528, i8* %33, align 1
  %2529 = lshr i32 %2509, 31
  %2530 = xor i32 %2527, %2529
  %2531 = add nuw nsw i32 %2530, %2527
  %2532 = icmp eq i32 %2531, 2
  %2533 = zext i1 %2532 to i8
  store i8 %2533, i8* %39, align 1
  %2534 = sext i32 %2510 to i64
  store i64 %2534, i64* %RCX.i2066, align 8
  %2535 = load i64, i64* %RBP.i, align 8
  %2536 = shl nsw i64 %2534, 2
  %2537 = add i64 %2535, -1248
  %2538 = add i64 %2537, %2536
  %2539 = add i64 %2467, 40
  store i64 %2539, i64* %PC.i, align 8
  %2540 = inttoptr i64 %2538 to i32*
  store i32 %2506, i32* %2540, align 4
  %2541 = load i64, i64* %PC.i, align 8
  %2542 = add i64 %2541, 25
  store i64 %2542, i64* %3, align 8
  br label %block_.L_400ebf

block_.L_400eab:                                  ; preds = %block_400e67
  %2543 = add i64 %2380, -1248
  %2544 = add i64 %2543, %2496
  %2545 = add i64 %2467, 20
  store i64 %2545, i64* %PC.i, align 8
  %2546 = inttoptr i64 %2544 to i32*
  store i32 0, i32* %2546, align 4
  %.pre26 = load i64, i64* %PC.i, align 8
  br label %block_.L_400ebf

block_.L_400ebf:                                  ; preds = %block_.L_400eab, %block_400e7e
  %2547 = phi i64 [ %.pre26, %block_.L_400eab ], [ %2542, %block_400e7e ]
  %2548 = load i64, i64* %RBP.i, align 8
  %2549 = add i64 %2548, -4
  %2550 = add i64 %2547, 7
  store i64 %2550, i64* %PC.i, align 8
  %2551 = inttoptr i64 %2549 to i32*
  store i32 1, i32* %2551, align 4
  %.pre27 = load i64, i64* %PC.i, align 8
  br label %block_.L_400ec6

block_.L_400ec6:                                  ; preds = %block_.L_400f90, %block_.L_400ebf
  %2552 = phi i64 [ %.pre27, %block_.L_400ebf ], [ %3032, %block_.L_400f90 ]
  %MEMORY.19 = phi %struct.Memory* [ %MEMORY.17, %block_.L_400ebf ], [ %MEMORY.20, %block_.L_400f90 ]
  %2553 = load i64, i64* %RBP.i, align 8
  %2554 = add i64 %2553, -4
  %2555 = add i64 %2552, 3
  store i64 %2555, i64* %PC.i, align 8
  %2556 = inttoptr i64 %2554 to i32*
  %2557 = load i32, i32* %2556, align 4
  %2558 = zext i32 %2557 to i64
  store i64 %2558, i64* %RAX.i1508, align 8
  %2559 = add i64 %2553, -12
  %2560 = add i64 %2552, 6
  store i64 %2560, i64* %PC.i, align 8
  %2561 = inttoptr i64 %2559 to i32*
  %2562 = load i32, i32* %2561, align 4
  %2563 = add i32 %2562, 1
  %2564 = zext i32 %2563 to i64
  store i64 %2564, i64* %RCX.i2066, align 8
  %2565 = icmp eq i32 %2562, -1
  %2566 = icmp eq i32 %2563, 0
  %2567 = or i1 %2565, %2566
  %2568 = zext i1 %2567 to i8
  store i8 %2568, i8* %14, align 1
  %2569 = and i32 %2563, 255
  %2570 = tail call i32 @llvm.ctpop.i32(i32 %2569)
  %2571 = trunc i32 %2570 to i8
  %2572 = and i8 %2571, 1
  %2573 = xor i8 %2572, 1
  store i8 %2573, i8* %21, align 1
  %2574 = xor i32 %2562, %2563
  %2575 = lshr i32 %2574, 4
  %2576 = trunc i32 %2575 to i8
  %2577 = and i8 %2576, 1
  store i8 %2577, i8* %27, align 1
  %2578 = icmp eq i32 %2563, 0
  %2579 = zext i1 %2578 to i8
  store i8 %2579, i8* %30, align 1
  %2580 = lshr i32 %2563, 31
  %2581 = trunc i32 %2580 to i8
  store i8 %2581, i8* %33, align 1
  %2582 = lshr i32 %2562, 31
  %2583 = xor i32 %2580, %2582
  %2584 = add nuw nsw i32 %2583, %2580
  %2585 = icmp eq i32 %2584, 2
  %2586 = zext i1 %2585 to i8
  store i8 %2586, i8* %39, align 1
  %2587 = sext i32 %2563 to i64
  store i64 %2587, i64* %RDX.i2064, align 8
  %2588 = shl nsw i64 %2587, 2
  %2589 = add i64 %2553, -1328
  %2590 = add i64 %2589, %2588
  %2591 = add i64 %2552, 19
  store i64 %2591, i64* %PC.i, align 8
  %2592 = inttoptr i64 %2590 to i32*
  %2593 = load i32, i32* %2592, align 4
  %2594 = sub i32 %2557, %2593
  %2595 = icmp ult i32 %2557, %2593
  %2596 = zext i1 %2595 to i8
  store i8 %2596, i8* %14, align 1
  %2597 = and i32 %2594, 255
  %2598 = tail call i32 @llvm.ctpop.i32(i32 %2597)
  %2599 = trunc i32 %2598 to i8
  %2600 = and i8 %2599, 1
  %2601 = xor i8 %2600, 1
  store i8 %2601, i8* %21, align 1
  %2602 = xor i32 %2593, %2557
  %2603 = xor i32 %2602, %2594
  %2604 = lshr i32 %2603, 4
  %2605 = trunc i32 %2604 to i8
  %2606 = and i8 %2605, 1
  store i8 %2606, i8* %27, align 1
  %2607 = icmp eq i32 %2594, 0
  %2608 = zext i1 %2607 to i8
  store i8 %2608, i8* %30, align 1
  %2609 = lshr i32 %2594, 31
  %2610 = trunc i32 %2609 to i8
  store i8 %2610, i8* %33, align 1
  %2611 = lshr i32 %2557, 31
  %2612 = lshr i32 %2593, 31
  %2613 = xor i32 %2612, %2611
  %2614 = xor i32 %2609, %2611
  %2615 = add nuw nsw i32 %2614, %2613
  %2616 = icmp eq i32 %2615, 2
  %2617 = zext i1 %2616 to i8
  store i8 %2617, i8* %39, align 1
  %2618 = icmp ne i8 %2610, 0
  %2619 = xor i1 %2618, %2616
  %.demorgan105 = or i1 %2607, %2619
  %.v106 = select i1 %.demorgan105, i64 25, i64 221
  %2620 = add i64 %2552, %.v106
  %2621 = load i64, i64* %RBP.i, align 8
  %2622 = add i64 %2621, -12
  %2623 = add i64 %2620, 3
  store i64 %2623, i64* %PC.i, align 8
  %2624 = inttoptr i64 %2622 to i32*
  %2625 = load i32, i32* %2624, align 4
  %2626 = add i64 %2620, 6
  store i64 %2626, i64* %PC.i, align 8
  %2627 = add i32 %2625, 1
  %2628 = zext i32 %2627 to i64
  store i64 %2628, i64* %RAX.i1508, align 8
  %2629 = icmp eq i32 %2625, -1
  %2630 = icmp eq i32 %2627, 0
  %2631 = or i1 %2629, %2630
  %2632 = zext i1 %2631 to i8
  store i8 %2632, i8* %14, align 1
  %2633 = and i32 %2627, 255
  %2634 = tail call i32 @llvm.ctpop.i32(i32 %2633)
  %2635 = trunc i32 %2634 to i8
  %2636 = and i8 %2635, 1
  %2637 = xor i8 %2636, 1
  store i8 %2637, i8* %21, align 1
  %2638 = xor i32 %2625, %2627
  %2639 = lshr i32 %2638, 4
  %2640 = trunc i32 %2639 to i8
  %2641 = and i8 %2640, 1
  store i8 %2641, i8* %27, align 1
  %2642 = icmp eq i32 %2627, 0
  %2643 = zext i1 %2642 to i8
  store i8 %2643, i8* %30, align 1
  %2644 = lshr i32 %2627, 31
  %2645 = trunc i32 %2644 to i8
  store i8 %2645, i8* %33, align 1
  %2646 = lshr i32 %2625, 31
  %2647 = xor i32 %2644, %2646
  %2648 = add nuw nsw i32 %2647, %2644
  %2649 = icmp eq i32 %2648, 2
  %2650 = zext i1 %2649 to i8
  store i8 %2650, i8* %39, align 1
  br i1 %.demorgan105, label %block_400edf, label %block_.L_400fa3

block_400edf:                                     ; preds = %block_.L_400ec6
  %2651 = add i64 %2621, -4
  %2652 = add i64 %2620, 9
  store i64 %2652, i64* %PC.i, align 8
  %2653 = inttoptr i64 %2651 to i32*
  %2654 = load i32, i32* %2653, align 4
  %2655 = sub i32 %2627, %2654
  %2656 = zext i32 %2655 to i64
  store i64 %2656, i64* %RAX.i1508, align 8
  %2657 = icmp ult i32 %2627, %2654
  %2658 = zext i1 %2657 to i8
  store i8 %2658, i8* %14, align 1
  %2659 = and i32 %2655, 255
  %2660 = tail call i32 @llvm.ctpop.i32(i32 %2659)
  %2661 = trunc i32 %2660 to i8
  %2662 = and i8 %2661, 1
  %2663 = xor i8 %2662, 1
  store i8 %2663, i8* %21, align 1
  %2664 = xor i32 %2654, %2627
  %2665 = xor i32 %2664, %2655
  %2666 = lshr i32 %2665, 4
  %2667 = trunc i32 %2666 to i8
  %2668 = and i8 %2667, 1
  store i8 %2668, i8* %27, align 1
  %2669 = icmp eq i32 %2655, 0
  %2670 = zext i1 %2669 to i8
  store i8 %2670, i8* %30, align 1
  %2671 = lshr i32 %2655, 31
  %2672 = trunc i32 %2671 to i8
  store i8 %2672, i8* %33, align 1
  %2673 = lshr i32 %2654, 31
  %2674 = xor i32 %2673, %2644
  %2675 = xor i32 %2671, %2644
  %2676 = add nuw nsw i32 %2675, %2674
  %2677 = icmp eq i32 %2676, 2
  %2678 = zext i1 %2677 to i8
  store i8 %2678, i8* %39, align 1
  %2679 = sext i32 %2655 to i64
  store i64 %2679, i64* %RCX.i2066, align 8
  %2680 = shl nsw i64 %2679, 2
  %2681 = add i64 %2621, -1488
  %2682 = add i64 %2681, %2680
  %2683 = add i64 %2620, 20
  store i64 %2683, i64* %PC.i, align 8
  %2684 = inttoptr i64 %2682 to i32*
  %2685 = load i32, i32* %2684, align 4
  %2686 = add i32 %2685, 1
  %2687 = icmp ne i32 %2685, -1
  %2688 = zext i1 %2687 to i8
  store i8 %2688, i8* %14, align 1
  %2689 = and i32 %2686, 255
  %2690 = tail call i32 @llvm.ctpop.i32(i32 %2689)
  %2691 = trunc i32 %2690 to i8
  %2692 = and i8 %2691, 1
  %2693 = xor i8 %2692, 1
  store i8 %2693, i8* %21, align 1
  %2694 = xor i32 %2685, 16
  %2695 = xor i32 %2686, %2694
  %2696 = lshr i32 %2695, 4
  %2697 = trunc i32 %2696 to i8
  %2698 = and i8 %2697, 1
  store i8 %2698, i8* %27, align 1
  %2699 = icmp eq i32 %2686, 0
  %2700 = zext i1 %2699 to i8
  store i8 %2700, i8* %30, align 1
  %2701 = lshr i32 %2686, 31
  %2702 = trunc i32 %2701 to i8
  store i8 %2702, i8* %33, align 1
  %2703 = lshr i32 %2685, 31
  %2704 = xor i32 %2703, 1
  %2705 = xor i32 %2701, %2703
  %2706 = add nuw nsw i32 %2705, %2704
  %2707 = icmp eq i32 %2706, 2
  %2708 = zext i1 %2707 to i8
  store i8 %2708, i8* %39, align 1
  %.v107 = select i1 %2699, i64 177, i64 26
  %2709 = add i64 %2620, %.v107
  store i64 %2709, i64* %3, align 8
  br i1 %2699, label %block_.L_400f90, label %block_400ef9

block_400ef9:                                     ; preds = %block_400edf
  %2710 = load i64, i64* %RBP.i, align 8
  %2711 = add i64 %2710, -1168
  store i64 %2711, i64* %RAX.i1508, align 8
  %2712 = add i64 %2710, -12
  %2713 = add i64 %2709, 10
  store i64 %2713, i64* %PC.i, align 8
  %2714 = inttoptr i64 %2712 to i32*
  %2715 = load i32, i32* %2714, align 4
  %2716 = add i32 %2715, 1
  %2717 = zext i32 %2716 to i64
  store i64 %2717, i64* %RCX.i2066, align 8
  %2718 = sext i32 %2716 to i64
  %2719 = shl nsw i64 %2718, 6
  store i64 %2719, i64* %RDX.i2064, align 8
  %2720 = lshr i64 %2718, 57
  %2721 = and i64 %2720, 1
  %2722 = add i64 %2719, %2711
  store i64 %2722, i64* %RAX.i1508, align 8
  %2723 = icmp ult i64 %2722, %2711
  %2724 = icmp ult i64 %2722, %2719
  %2725 = or i1 %2723, %2724
  %2726 = zext i1 %2725 to i8
  store i8 %2726, i8* %14, align 1
  %2727 = trunc i64 %2722 to i32
  %2728 = and i32 %2727, 255
  %2729 = tail call i32 @llvm.ctpop.i32(i32 %2728)
  %2730 = trunc i32 %2729 to i8
  %2731 = and i8 %2730, 1
  %2732 = xor i8 %2731, 1
  store i8 %2732, i8* %21, align 1
  %2733 = xor i64 %2711, %2722
  %2734 = lshr i64 %2733, 4
  %2735 = trunc i64 %2734 to i8
  %2736 = and i8 %2735, 1
  store i8 %2736, i8* %27, align 1
  %2737 = icmp eq i64 %2722, 0
  %2738 = zext i1 %2737 to i8
  store i8 %2738, i8* %30, align 1
  %2739 = lshr i64 %2722, 63
  %2740 = trunc i64 %2739 to i8
  store i8 %2740, i8* %33, align 1
  %2741 = lshr i64 %2711, 63
  %2742 = xor i64 %2739, %2741
  %2743 = xor i64 %2739, %2721
  %2744 = add nuw nsw i64 %2742, %2743
  %2745 = icmp eq i64 %2744, 2
  %2746 = zext i1 %2745 to i8
  store i8 %2746, i8* %39, align 1
  %2747 = load i64, i64* %RBP.i, align 8
  %2748 = add i64 %2747, -4
  %2749 = add i64 %2709, 27
  store i64 %2749, i64* %PC.i, align 8
  %2750 = inttoptr i64 %2748 to i32*
  %2751 = load i32, i32* %2750, align 4
  %2752 = sext i32 %2751 to i64
  store i64 %2752, i64* %RDX.i2064, align 8
  %2753 = shl nsw i64 %2752, 2
  %2754 = add i64 %2753, %2722
  %2755 = add i64 %2709, 31
  store i64 %2755, i64* %PC.i, align 8
  %2756 = inttoptr i64 %2754 to i32*
  %2757 = load i32, i32* %2756, align 4
  store i8 0, i8* %14, align 1
  %2758 = and i32 %2757, 255
  %2759 = tail call i32 @llvm.ctpop.i32(i32 %2758)
  %2760 = trunc i32 %2759 to i8
  %2761 = and i8 %2760, 1
  %2762 = xor i8 %2761, 1
  store i8 %2762, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2763 = icmp eq i32 %2757, 0
  %2764 = zext i1 %2763 to i8
  store i8 %2764, i8* %30, align 1
  %2765 = lshr i32 %2757, 31
  %2766 = trunc i32 %2765 to i8
  store i8 %2766, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v108 = select i1 %2763, i64 151, i64 37
  %2767 = add i64 %2709, %.v108
  store i64 %2767, i64* %3, align 8
  br i1 %2763, label %block_.L_400f90, label %block_400f1e

block_400f1e:                                     ; preds = %block_400ef9
  store i64 255, i64* %RAX.i1508, align 8
  %2768 = add i64 %2747, -1168
  store i64 %2768, i64* %RCX.i2066, align 8
  %2769 = add i64 %2747, -12
  %2770 = add i64 %2767, 15
  store i64 %2770, i64* %PC.i, align 8
  %2771 = inttoptr i64 %2769 to i32*
  %2772 = load i32, i32* %2771, align 4
  %2773 = add i32 %2772, 1
  %2774 = zext i32 %2773 to i64
  store i64 %2774, i64* %RDX.i2064, align 8
  %2775 = icmp eq i32 %2772, -1
  %2776 = icmp eq i32 %2773, 0
  %2777 = or i1 %2775, %2776
  %2778 = zext i1 %2777 to i8
  store i8 %2778, i8* %14, align 1
  %2779 = and i32 %2773, 255
  %2780 = tail call i32 @llvm.ctpop.i32(i32 %2779)
  %2781 = trunc i32 %2780 to i8
  %2782 = and i8 %2781, 1
  %2783 = xor i8 %2782, 1
  store i8 %2783, i8* %21, align 1
  %2784 = xor i32 %2772, %2773
  %2785 = lshr i32 %2784, 4
  %2786 = trunc i32 %2785 to i8
  %2787 = and i8 %2786, 1
  store i8 %2787, i8* %27, align 1
  %2788 = icmp eq i32 %2773, 0
  %2789 = zext i1 %2788 to i8
  store i8 %2789, i8* %30, align 1
  %2790 = lshr i32 %2773, 31
  %2791 = trunc i32 %2790 to i8
  store i8 %2791, i8* %33, align 1
  %2792 = lshr i32 %2772, 31
  %2793 = xor i32 %2790, %2792
  %2794 = add nuw nsw i32 %2793, %2790
  %2795 = icmp eq i32 %2794, 2
  %2796 = zext i1 %2795 to i8
  store i8 %2796, i8* %39, align 1
  %2797 = add i64 %2767, 21
  store i64 %2797, i64* %PC.i, align 8
  %2798 = load i32, i32* %2750, align 4
  %2799 = sub i32 %2773, %2798
  %2800 = zext i32 %2799 to i64
  store i64 %2800, i64* %RDX.i2064, align 8
  %2801 = icmp ult i32 %2773, %2798
  %2802 = zext i1 %2801 to i8
  store i8 %2802, i8* %14, align 1
  %2803 = and i32 %2799, 255
  %2804 = tail call i32 @llvm.ctpop.i32(i32 %2803)
  %2805 = trunc i32 %2804 to i8
  %2806 = and i8 %2805, 1
  %2807 = xor i8 %2806, 1
  store i8 %2807, i8* %21, align 1
  %2808 = xor i32 %2798, %2773
  %2809 = xor i32 %2808, %2799
  %2810 = lshr i32 %2809, 4
  %2811 = trunc i32 %2810 to i8
  %2812 = and i8 %2811, 1
  store i8 %2812, i8* %27, align 1
  %2813 = icmp eq i32 %2799, 0
  %2814 = zext i1 %2813 to i8
  store i8 %2814, i8* %30, align 1
  %2815 = lshr i32 %2799, 31
  %2816 = trunc i32 %2815 to i8
  store i8 %2816, i8* %33, align 1
  %2817 = lshr i32 %2798, 31
  %2818 = xor i32 %2817, %2790
  %2819 = xor i32 %2815, %2790
  %2820 = add nuw nsw i32 %2819, %2818
  %2821 = icmp eq i32 %2820, 2
  %2822 = zext i1 %2821 to i8
  store i8 %2822, i8* %39, align 1
  %2823 = sext i32 %2799 to i64
  store i64 %2823, i64* %RSI.i2060, align 8
  %2824 = shl nsw i64 %2823, 2
  %2825 = add i64 %2747, -1488
  %2826 = add i64 %2825, %2824
  %2827 = add i64 %2767, 31
  store i64 %2827, i64* %PC.i, align 8
  %2828 = inttoptr i64 %2826 to i32*
  %2829 = load i32, i32* %2828, align 4
  %2830 = zext i32 %2829 to i64
  store i64 %2830, i64* %RDX.i2064, align 8
  %2831 = add i64 %2767, 34
  store i64 %2831, i64* %PC.i, align 8
  %2832 = load i32, i32* %2771, align 4
  %2833 = add i32 %2832, 1
  %2834 = zext i32 %2833 to i64
  store i64 %2834, i64* %RDI.i1529, align 8
  %2835 = sext i32 %2833 to i64
  %2836 = shl nsw i64 %2835, 6
  store i64 %2836, i64* %RSI.i2060, align 8
  %2837 = lshr i64 %2835, 57
  %2838 = and i64 %2837, 1
  %2839 = load i64, i64* %RCX.i2066, align 8
  %2840 = add i64 %2836, %2839
  store i64 %2840, i64* %RCX.i2066, align 8
  %2841 = icmp ult i64 %2840, %2839
  %2842 = icmp ult i64 %2840, %2836
  %2843 = or i1 %2841, %2842
  %2844 = zext i1 %2843 to i8
  store i8 %2844, i8* %14, align 1
  %2845 = trunc i64 %2840 to i32
  %2846 = and i32 %2845, 255
  %2847 = tail call i32 @llvm.ctpop.i32(i32 %2846)
  %2848 = trunc i32 %2847 to i8
  %2849 = and i8 %2848, 1
  %2850 = xor i8 %2849, 1
  store i8 %2850, i8* %21, align 1
  %2851 = xor i64 %2839, %2840
  %2852 = lshr i64 %2851, 4
  %2853 = trunc i64 %2852 to i8
  %2854 = and i8 %2853, 1
  store i8 %2854, i8* %27, align 1
  %2855 = icmp eq i64 %2840, 0
  %2856 = zext i1 %2855 to i8
  store i8 %2856, i8* %30, align 1
  %2857 = lshr i64 %2840, 63
  %2858 = trunc i64 %2857 to i8
  store i8 %2858, i8* %33, align 1
  %2859 = lshr i64 %2839, 63
  %2860 = xor i64 %2857, %2859
  %2861 = xor i64 %2857, %2838
  %2862 = add nuw nsw i64 %2860, %2861
  %2863 = icmp eq i64 %2862, 2
  %2864 = zext i1 %2863 to i8
  store i8 %2864, i8* %39, align 1
  %2865 = load i64, i64* %RBP.i, align 8
  %2866 = add i64 %2865, -4
  %2867 = add i64 %2767, 51
  store i64 %2867, i64* %PC.i, align 8
  %2868 = inttoptr i64 %2866 to i32*
  %2869 = load i32, i32* %2868, align 4
  %2870 = sext i32 %2869 to i64
  store i64 %2870, i64* %RSI.i2060, align 8
  %2871 = shl nsw i64 %2870, 2
  %2872 = add i64 %2871, %2840
  %2873 = add i64 %2767, 55
  store i64 %2873, i64* %PC.i, align 8
  %2874 = inttoptr i64 %2872 to i32*
  %2875 = load i32, i32* %2874, align 4
  %2876 = sext i32 %2875 to i64
  store i64 %2876, i64* %RCX.i2066, align 8
  %2877 = load i64, i64* %RDX.i2064, align 8
  %2878 = shl nsw i64 %2876, 2
  %2879 = add nsw i64 %2878, 6304896
  %2880 = add i64 %2767, 62
  store i64 %2880, i64* %PC.i, align 8
  %2881 = trunc i64 %2877 to i32
  %2882 = inttoptr i64 %2879 to i32*
  %2883 = load i32, i32* %2882, align 4
  %2884 = add i32 %2883, %2881
  %2885 = zext i32 %2884 to i64
  store i64 %2885, i64* %RDX.i2064, align 8
  %2886 = icmp ult i32 %2884, %2881
  %2887 = icmp ult i32 %2884, %2883
  %2888 = or i1 %2886, %2887
  %2889 = zext i1 %2888 to i8
  store i8 %2889, i8* %14, align 1
  %2890 = and i32 %2884, 255
  %2891 = tail call i32 @llvm.ctpop.i32(i32 %2890)
  %2892 = trunc i32 %2891 to i8
  %2893 = and i8 %2892, 1
  %2894 = xor i8 %2893, 1
  store i8 %2894, i8* %21, align 1
  %2895 = xor i32 %2883, %2881
  %2896 = xor i32 %2895, %2884
  %2897 = lshr i32 %2896, 4
  %2898 = trunc i32 %2897 to i8
  %2899 = and i8 %2898, 1
  store i8 %2899, i8* %27, align 1
  %2900 = icmp eq i32 %2884, 0
  %2901 = zext i1 %2900 to i8
  store i8 %2901, i8* %30, align 1
  %2902 = lshr i32 %2884, 31
  %2903 = trunc i32 %2902 to i8
  store i8 %2903, i8* %33, align 1
  %2904 = lshr i32 %2881, 31
  %2905 = lshr i32 %2883, 31
  %2906 = xor i32 %2902, %2904
  %2907 = xor i32 %2902, %2905
  %2908 = add nuw nsw i32 %2906, %2907
  %2909 = icmp eq i32 %2908, 2
  %2910 = zext i1 %2909 to i8
  store i8 %2910, i8* %39, align 1
  %2911 = add i64 %2865, -2708
  %2912 = load i32, i32* %EAX.i2012, align 4
  %2913 = add i64 %2767, 68
  store i64 %2913, i64* %PC.i, align 8
  %2914 = inttoptr i64 %2911 to i32*
  store i32 %2912, i32* %2914, align 4
  %2915 = load i32, i32* %EDX.i2048, align 4
  %2916 = zext i32 %2915 to i64
  %2917 = load i64, i64* %PC.i, align 8
  store i64 %2916, i64* %RAX.i1508, align 8
  %2918 = sext i32 %2915 to i64
  %2919 = lshr i64 %2918, 32
  store i64 %2919, i64* %57, align 8
  %2920 = load i64, i64* %RBP.i, align 8
  %2921 = add i64 %2920, -2708
  %2922 = add i64 %2917, 9
  store i64 %2922, i64* %PC.i, align 8
  %2923 = inttoptr i64 %2921 to i32*
  %2924 = load i32, i32* %2923, align 4
  %2925 = zext i32 %2924 to i64
  store i64 %2925, i64* %RDI.i1529, align 8
  %2926 = add i64 %2917, 11
  store i64 %2926, i64* %PC.i, align 8
  %2927 = zext i32 %2915 to i64
  %2928 = sext i32 %2924 to i64
  %2929 = shl nuw i64 %2919, 32
  %2930 = or i64 %2929, %2927
  %2931 = sdiv i64 %2930, %2928
  %2932 = shl i64 %2931, 32
  %2933 = ashr exact i64 %2932, 32
  %2934 = icmp eq i64 %2931, %2933
  br i1 %2934, label %2937, label %2935

; <label>:2935:                                   ; preds = %block_400f1e
  %2936 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2926, %struct.Memory* %MEMORY.19)
  %.pre28 = load i32, i32* %EDX.i2048, align 4
  %.pre29 = load i64, i64* %PC.i, align 8
  %.pre30 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__edi.exit

; <label>:2937:                                   ; preds = %block_400f1e
  %2938 = srem i64 %2930, %2928
  %2939 = and i64 %2931, 4294967295
  store i64 %2939, i64* %58, align 8
  %2940 = and i64 %2938, 4294967295
  store i64 %2940, i64* %59, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %2941 = trunc i64 %2938 to i32
  br label %routine_idivl__edi.exit

routine_idivl__edi.exit:                          ; preds = %2937, %2935
  %2942 = phi i64 [ %.pre30, %2935 ], [ %2920, %2937 ]
  %2943 = phi i64 [ %.pre29, %2935 ], [ %2926, %2937 ]
  %2944 = phi i32 [ %.pre28, %2935 ], [ %2941, %2937 ]
  %2945 = phi %struct.Memory* [ %2936, %2935 ], [ %MEMORY.19, %2937 ]
  %2946 = sext i32 %2944 to i64
  store i64 %2946, i64* %RCX.i2066, align 8
  %2947 = shl nsw i64 %2946, 2
  %2948 = add nsw i64 %2947, 6305920
  %2949 = add i64 %2943, 10
  store i64 %2949, i64* %PC.i, align 8
  %2950 = inttoptr i64 %2948 to i32*
  %2951 = load i32, i32* %2950, align 4
  %2952 = zext i32 %2951 to i64
  store i64 %2952, i64* %RDX.i2064, align 8
  %2953 = add i64 %2942, -12
  %2954 = add i64 %2943, 14
  store i64 %2954, i64* %PC.i, align 8
  %2955 = inttoptr i64 %2953 to i32*
  %2956 = load i32, i32* %2955, align 4
  %2957 = add i32 %2956, 1
  %2958 = zext i32 %2957 to i64
  store i64 %2958, i64* %547, align 8
  %2959 = icmp eq i32 %2956, -1
  %2960 = icmp eq i32 %2957, 0
  %2961 = or i1 %2959, %2960
  %2962 = zext i1 %2961 to i8
  store i8 %2962, i8* %14, align 1
  %2963 = and i32 %2957, 255
  %2964 = tail call i32 @llvm.ctpop.i32(i32 %2963)
  %2965 = trunc i32 %2964 to i8
  %2966 = and i8 %2965, 1
  %2967 = xor i8 %2966, 1
  store i8 %2967, i8* %21, align 1
  %2968 = xor i32 %2956, %2957
  %2969 = lshr i32 %2968, 4
  %2970 = trunc i32 %2969 to i8
  %2971 = and i8 %2970, 1
  store i8 %2971, i8* %27, align 1
  %2972 = icmp eq i32 %2957, 0
  %2973 = zext i1 %2972 to i8
  store i8 %2973, i8* %30, align 1
  %2974 = lshr i32 %2957, 31
  %2975 = trunc i32 %2974 to i8
  store i8 %2975, i8* %33, align 1
  %2976 = lshr i32 %2956, 31
  %2977 = xor i32 %2974, %2976
  %2978 = add nuw nsw i32 %2977, %2974
  %2979 = icmp eq i32 %2978, 2
  %2980 = zext i1 %2979 to i8
  store i8 %2980, i8* %39, align 1
  %2981 = sext i32 %2957 to i64
  store i64 %2981, i64* %RCX.i2066, align 8
  %2982 = shl nsw i64 %2981, 2
  %2983 = add i64 %2942, -1248
  %2984 = add i64 %2983, %2982
  %2985 = add i64 %2943, 28
  store i64 %2985, i64* %PC.i, align 8
  %2986 = inttoptr i64 %2984 to i32*
  %2987 = load i32, i32* %2986, align 4
  %2988 = xor i32 %2987, %2951
  %2989 = zext i32 %2988 to i64
  store i64 %2989, i64* %RDX.i2064, align 8
  store i8 0, i8* %14, align 1
  %2990 = and i32 %2988, 255
  %2991 = tail call i32 @llvm.ctpop.i32(i32 %2990)
  %2992 = trunc i32 %2991 to i8
  %2993 = and i8 %2992, 1
  %2994 = xor i8 %2993, 1
  store i8 %2994, i8* %21, align 1
  %2995 = icmp eq i32 %2988, 0
  %2996 = zext i1 %2995 to i8
  store i8 %2996, i8* %30, align 1
  %2997 = lshr i32 %2988, 31
  %2998 = trunc i32 %2997 to i8
  store i8 %2998, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %2999 = add i64 %2943, 35
  store i64 %2999, i64* %PC.i, align 8
  store i32 %2988, i32* %2986, align 4
  %.pre31 = load i64, i64* %PC.i, align 8
  br label %block_.L_400f90

block_.L_400f90:                                  ; preds = %routine_idivl__edi.exit, %block_400ef9, %block_400edf
  %3000 = phi i64 [ %2709, %block_400edf ], [ %2767, %block_400ef9 ], [ %.pre31, %routine_idivl__edi.exit ]
  %MEMORY.20 = phi %struct.Memory* [ %MEMORY.19, %block_400edf ], [ %MEMORY.19, %block_400ef9 ], [ %2945, %routine_idivl__edi.exit ]
  %3001 = load i64, i64* %RBP.i, align 8
  %3002 = add i64 %3001, -4
  %3003 = add i64 %3000, 8
  store i64 %3003, i64* %PC.i, align 8
  %3004 = inttoptr i64 %3002 to i32*
  %3005 = load i32, i32* %3004, align 4
  %3006 = add i32 %3005, 1
  %3007 = zext i32 %3006 to i64
  store i64 %3007, i64* %RAX.i1508, align 8
  %3008 = icmp eq i32 %3005, -1
  %3009 = icmp eq i32 %3006, 0
  %3010 = or i1 %3008, %3009
  %3011 = zext i1 %3010 to i8
  store i8 %3011, i8* %14, align 1
  %3012 = and i32 %3006, 255
  %3013 = tail call i32 @llvm.ctpop.i32(i32 %3012)
  %3014 = trunc i32 %3013 to i8
  %3015 = and i8 %3014, 1
  %3016 = xor i8 %3015, 1
  store i8 %3016, i8* %21, align 1
  %3017 = xor i32 %3005, %3006
  %3018 = lshr i32 %3017, 4
  %3019 = trunc i32 %3018 to i8
  %3020 = and i8 %3019, 1
  store i8 %3020, i8* %27, align 1
  %3021 = icmp eq i32 %3006, 0
  %3022 = zext i1 %3021 to i8
  store i8 %3022, i8* %30, align 1
  %3023 = lshr i32 %3006, 31
  %3024 = trunc i32 %3023 to i8
  store i8 %3024, i8* %33, align 1
  %3025 = lshr i32 %3005, 31
  %3026 = xor i32 %3023, %3025
  %3027 = add nuw nsw i32 %3026, %3023
  %3028 = icmp eq i32 %3027, 2
  %3029 = zext i1 %3028 to i8
  store i8 %3029, i8* %39, align 1
  %3030 = add i64 %3000, 14
  store i64 %3030, i64* %PC.i, align 8
  store i32 %3006, i32* %3004, align 4
  %3031 = load i64, i64* %PC.i, align 8
  %3032 = add i64 %3031, -216
  store i64 %3032, i64* %3, align 8
  br label %block_.L_400ec6

block_.L_400fa3:                                  ; preds = %block_.L_400ec6
  %3033 = sext i32 %2627 to i64
  store i64 %3033, i64* %RCX.i2066, align 8
  %3034 = shl nsw i64 %3033, 2
  %3035 = add i64 %2621, -1248
  %3036 = add i64 %3035, %3034
  %3037 = add i64 %2620, 17
  store i64 %3037, i64* %PC.i, align 8
  %3038 = inttoptr i64 %3036 to i32*
  %3039 = load i32, i32* %3038, align 4
  %3040 = sext i32 %3039 to i64
  store i64 %3040, i64* %RCX.i2066, align 8
  %3041 = shl nsw i64 %3040, 2
  %3042 = add nsw i64 %3041, 6304896
  %3043 = add i64 %2620, 24
  store i64 %3043, i64* %PC.i, align 8
  %3044 = inttoptr i64 %3042 to i32*
  %3045 = load i32, i32* %3044, align 4
  %3046 = zext i32 %3045 to i64
  store i64 %3046, i64* %RAX.i1508, align 8
  %3047 = add i64 %2620, 27
  store i64 %3047, i64* %PC.i, align 8
  %3048 = load i32, i32* %2624, align 4
  %3049 = add i32 %3048, 1
  %3050 = zext i32 %3049 to i64
  store i64 %3050, i64* %RDX.i2064, align 8
  %3051 = icmp eq i32 %3048, -1
  %3052 = icmp eq i32 %3049, 0
  %3053 = or i1 %3051, %3052
  %3054 = zext i1 %3053 to i8
  store i8 %3054, i8* %14, align 1
  %3055 = and i32 %3049, 255
  %3056 = tail call i32 @llvm.ctpop.i32(i32 %3055)
  %3057 = trunc i32 %3056 to i8
  %3058 = and i8 %3057, 1
  %3059 = xor i8 %3058, 1
  store i8 %3059, i8* %21, align 1
  %3060 = xor i32 %3048, %3049
  %3061 = lshr i32 %3060, 4
  %3062 = trunc i32 %3061 to i8
  %3063 = and i8 %3062, 1
  store i8 %3063, i8* %27, align 1
  %3064 = icmp eq i32 %3049, 0
  %3065 = zext i1 %3064 to i8
  store i8 %3065, i8* %30, align 1
  %3066 = lshr i32 %3049, 31
  %3067 = trunc i32 %3066 to i8
  store i8 %3067, i8* %33, align 1
  %3068 = lshr i32 %3048, 31
  %3069 = xor i32 %3066, %3068
  %3070 = add nuw nsw i32 %3069, %3066
  %3071 = icmp eq i32 %3070, 2
  %3072 = zext i1 %3071 to i8
  store i8 %3072, i8* %39, align 1
  %3073 = sext i32 %3049 to i64
  store i64 %3073, i64* %RCX.i2066, align 8
  %3074 = load i64, i64* %RBP.i, align 8
  %3075 = shl nsw i64 %3073, 2
  %3076 = add i64 %3074, -1248
  %3077 = add i64 %3076, %3075
  %3078 = add i64 %2620, 40
  store i64 %3078, i64* %PC.i, align 8
  %3079 = inttoptr i64 %3077 to i32*
  store i32 %3045, i32* %3079, align 4
  %.pre32 = load i64, i64* %PC.i, align 8
  %.pre33 = load i64, i64* %RBP.i, align 8
  br label %block_.L_400fcb

block_.L_400fcb:                                  ; preds = %block_.L_400e3a, %block_.L_400fa3
  %3080 = phi i64 [ %2380, %block_.L_400e3a ], [ %.pre33, %block_.L_400fa3 ]
  %3081 = phi i64 [ %2410, %block_.L_400e3a ], [ %.pre32, %block_.L_400fa3 ]
  %MEMORY.21 = phi %struct.Memory* [ %MEMORY.17, %block_.L_400e3a ], [ %MEMORY.19, %block_.L_400fa3 ]
  store i64 0, i64* %RAX.i1508, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %CL.i1777, align 1
  %3082 = add i64 %3080, -12
  %3083 = add i64 %3081, 13
  store i64 %3083, i64* %PC.i, align 8
  %3084 = inttoptr i64 %3082 to i32*
  %3085 = load i32, i32* %3084, align 4
  %3086 = add i32 %3085, -16
  %3087 = icmp ult i32 %3085, 16
  %3088 = zext i1 %3087 to i8
  store i8 %3088, i8* %14, align 1
  %3089 = and i32 %3086, 255
  %3090 = tail call i32 @llvm.ctpop.i32(i32 %3089)
  %3091 = trunc i32 %3090 to i8
  %3092 = and i8 %3091, 1
  %3093 = xor i8 %3092, 1
  store i8 %3093, i8* %21, align 1
  %3094 = xor i32 %3085, 16
  %3095 = xor i32 %3094, %3086
  %3096 = lshr i32 %3095, 4
  %3097 = trunc i32 %3096 to i8
  %3098 = and i8 %3097, 1
  store i8 %3098, i8* %27, align 1
  %3099 = icmp eq i32 %3086, 0
  %3100 = zext i1 %3099 to i8
  store i8 %3100, i8* %30, align 1
  %3101 = lshr i32 %3086, 31
  %3102 = trunc i32 %3101 to i8
  store i8 %3102, i8* %33, align 1
  %3103 = lshr i32 %3085, 31
  %3104 = xor i32 %3101, %3103
  %3105 = add nuw nsw i32 %3104, %3103
  %3106 = icmp eq i32 %3105, 2
  %3107 = zext i1 %3106 to i8
  store i8 %3107, i8* %39, align 1
  %3108 = add i64 %3080, -2709
  %3109 = add i64 %3081, 19
  store i64 %3109, i64* %PC.i, align 8
  %3110 = inttoptr i64 %3108 to i8*
  store i8 0, i8* %3110, align 1
  %3111 = load i64, i64* %PC.i, align 8
  %3112 = load i8, i8* %33, align 1
  %3113 = icmp ne i8 %3112, 0
  %3114 = load i8, i8* %39, align 1
  %3115 = icmp ne i8 %3114, 0
  %3116 = xor i1 %3113, %3115
  %.v109 = select i1 %3116, i64 6, i64 32
  %3117 = add i64 %3111, %.v109
  store i64 %3117, i64* %3, align 8
  br i1 %3116, label %block_400fe4, label %block_.L_400ffe

block_400fe4:                                     ; preds = %block_.L_400fcb
  %3118 = load i64, i64* %RBP.i, align 8
  %3119 = add i64 %3118, -12
  %3120 = add i64 %3117, 3
  store i64 %3120, i64* %PC.i, align 8
  %3121 = inttoptr i64 %3119 to i32*
  %3122 = load i32, i32* %3121, align 4
  %3123 = add i32 %3122, 1
  %3124 = zext i32 %3123 to i64
  store i64 %3124, i64* %RAX.i1508, align 8
  %3125 = icmp eq i32 %3122, -1
  %3126 = icmp eq i32 %3123, 0
  %3127 = or i1 %3125, %3126
  %3128 = zext i1 %3127 to i8
  store i8 %3128, i8* %14, align 1
  %3129 = and i32 %3123, 255
  %3130 = tail call i32 @llvm.ctpop.i32(i32 %3129)
  %3131 = trunc i32 %3130 to i8
  %3132 = and i8 %3131, 1
  %3133 = xor i8 %3132, 1
  store i8 %3133, i8* %21, align 1
  %3134 = xor i32 %3122, %3123
  %3135 = lshr i32 %3134, 4
  %3136 = trunc i32 %3135 to i8
  %3137 = and i8 %3136, 1
  store i8 %3137, i8* %27, align 1
  %3138 = icmp eq i32 %3123, 0
  %3139 = zext i1 %3138 to i8
  store i8 %3139, i8* %30, align 1
  %3140 = lshr i32 %3123, 31
  %3141 = trunc i32 %3140 to i8
  store i8 %3141, i8* %33, align 1
  %3142 = lshr i32 %3122, 31
  %3143 = xor i32 %3140, %3142
  %3144 = add nuw nsw i32 %3143, %3140
  %3145 = icmp eq i32 %3144, 2
  %3146 = zext i1 %3145 to i8
  store i8 %3146, i8* %39, align 1
  %3147 = sext i32 %3123 to i64
  store i64 %3147, i64* %RCX.i2066, align 8
  %3148 = shl nsw i64 %3147, 2
  %3149 = add i64 %3118, -1328
  %3150 = add i64 %3149, %3148
  %3151 = add i64 %3117, 17
  store i64 %3151, i64* %PC.i, align 8
  %3152 = inttoptr i64 %3150 to i32*
  %3153 = load i32, i32* %3152, align 4
  %3154 = add i32 %3153, -8
  %3155 = icmp ult i32 %3153, 8
  %3156 = zext i1 %3155 to i8
  store i8 %3156, i8* %14, align 1
  %3157 = and i32 %3154, 255
  %3158 = tail call i32 @llvm.ctpop.i32(i32 %3157)
  %3159 = trunc i32 %3158 to i8
  %3160 = and i8 %3159, 1
  %3161 = xor i8 %3160, 1
  store i8 %3161, i8* %21, align 1
  %3162 = xor i32 %3153, %3154
  %3163 = lshr i32 %3162, 4
  %3164 = trunc i32 %3163 to i8
  %3165 = and i8 %3164, 1
  store i8 %3165, i8* %27, align 1
  %3166 = icmp eq i32 %3154, 0
  %3167 = zext i1 %3166 to i8
  store i8 %3167, i8* %30, align 1
  %3168 = lshr i32 %3154, 31
  %3169 = trunc i32 %3168 to i8
  store i8 %3169, i8* %33, align 1
  %3170 = lshr i32 %3153, 31
  %3171 = xor i32 %3168, %3170
  %3172 = add nuw nsw i32 %3171, %3170
  %3173 = icmp eq i32 %3172, 2
  %3174 = zext i1 %3173 to i8
  store i8 %3174, i8* %39, align 1
  %3175 = icmp ne i8 %3169, 0
  %3176 = xor i1 %3175, %3173
  %3177 = or i1 %3166, %3176
  %3178 = zext i1 %3177 to i8
  store i8 %3178, i8* %DL.i1081, align 1
  %3179 = add i64 %3118, -2709
  %3180 = add i64 %3117, 26
  store i64 %3180, i64* %PC.i, align 8
  %3181 = inttoptr i64 %3179 to i8*
  store i8 %3178, i8* %3181, align 1
  %.pre34 = load i64, i64* %PC.i, align 8
  br label %block_.L_400ffe

block_.L_400ffe:                                  ; preds = %block_.L_400fcb, %block_400fe4
  %3182 = phi i64 [ %.pre34, %block_400fe4 ], [ %3117, %block_.L_400fcb ]
  %3183 = load i64, i64* %RBP.i, align 8
  %3184 = add i64 %3183, -2709
  %3185 = add i64 %3182, 6
  store i64 %3185, i64* %PC.i, align 8
  %3186 = inttoptr i64 %3184 to i8*
  %3187 = load i8, i8* %3186, align 1
  store i8 %3187, i8* %AL.i1776, align 1
  %3188 = and i8 %3187, 1
  store i8 0, i8* %14, align 1
  %3189 = zext i8 %3188 to i32
  %3190 = tail call i32 @llvm.ctpop.i32(i32 %3189)
  %3191 = trunc i32 %3190 to i8
  %3192 = xor i8 %3191, 1
  store i8 %3192, i8* %21, align 1
  %3193 = xor i8 %3188, 1
  store i8 %3193, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %3194 = icmp eq i8 %3193, 0
  %.v110 = select i1 %3194, i64 -1349, i64 14
  %3195 = add i64 %3182, %.v110
  store i64 %3195, i64* %3, align 8
  br i1 %3194, label %block_.L_400ab9, label %block_40100c

block_40100c:                                     ; preds = %block_.L_400ffe
  %3196 = add i64 %3183, -12
  %3197 = add i64 %3195, 3
  store i64 %3197, i64* %PC.i, align 8
  %3198 = inttoptr i64 %3196 to i32*
  %3199 = load i32, i32* %3198, align 4
  %3200 = add i32 %3199, 1
  %3201 = zext i32 %3200 to i64
  store i64 %3201, i64* %RAX.i1508, align 8
  %3202 = icmp eq i32 %3199, -1
  %3203 = icmp eq i32 %3200, 0
  %3204 = or i1 %3202, %3203
  %3205 = zext i1 %3204 to i8
  store i8 %3205, i8* %14, align 1
  %3206 = and i32 %3200, 255
  %3207 = tail call i32 @llvm.ctpop.i32(i32 %3206)
  %3208 = trunc i32 %3207 to i8
  %3209 = and i8 %3208, 1
  %3210 = xor i8 %3209, 1
  store i8 %3210, i8* %21, align 1
  %3211 = xor i32 %3199, %3200
  %3212 = lshr i32 %3211, 4
  %3213 = trunc i32 %3212 to i8
  %3214 = and i8 %3213, 1
  store i8 %3214, i8* %27, align 1
  %3215 = icmp eq i32 %3200, 0
  %3216 = zext i1 %3215 to i8
  store i8 %3216, i8* %30, align 1
  %3217 = lshr i32 %3200, 31
  %3218 = trunc i32 %3217 to i8
  store i8 %3218, i8* %33, align 1
  %3219 = lshr i32 %3199, 31
  %3220 = xor i32 %3217, %3219
  %3221 = add nuw nsw i32 %3220, %3217
  %3222 = icmp eq i32 %3221, 2
  %3223 = zext i1 %3222 to i8
  store i8 %3223, i8* %39, align 1
  %3224 = add i64 %3195, 9
  store i64 %3224, i64* %PC.i, align 8
  store i32 %3200, i32* %3198, align 4
  %3225 = load i64, i64* %RBP.i, align 8
  %3226 = add i64 %3225, -12
  %3227 = load i64, i64* %PC.i, align 8
  %3228 = add i64 %3227, 4
  store i64 %3228, i64* %PC.i, align 8
  %3229 = inttoptr i64 %3226 to i32*
  %3230 = load i32, i32* %3229, align 4
  %3231 = sext i32 %3230 to i64
  store i64 %3231, i64* %RCX.i2066, align 8
  %3232 = shl nsw i64 %3231, 2
  %3233 = add i64 %3225, -1328
  %3234 = add i64 %3233, %3232
  %3235 = add i64 %3227, 12
  store i64 %3235, i64* %PC.i, align 8
  %3236 = inttoptr i64 %3234 to i32*
  %3237 = load i32, i32* %3236, align 4
  %3238 = add i32 %3237, -8
  %3239 = icmp ult i32 %3237, 8
  %3240 = zext i1 %3239 to i8
  store i8 %3240, i8* %14, align 1
  %3241 = and i32 %3238, 255
  %3242 = tail call i32 @llvm.ctpop.i32(i32 %3241)
  %3243 = trunc i32 %3242 to i8
  %3244 = and i8 %3243, 1
  %3245 = xor i8 %3244, 1
  store i8 %3245, i8* %21, align 1
  %3246 = xor i32 %3237, %3238
  %3247 = lshr i32 %3246, 4
  %3248 = trunc i32 %3247 to i8
  %3249 = and i8 %3248, 1
  store i8 %3249, i8* %27, align 1
  %3250 = icmp eq i32 %3238, 0
  %3251 = zext i1 %3250 to i8
  store i8 %3251, i8* %30, align 1
  %3252 = lshr i32 %3238, 31
  %3253 = trunc i32 %3252 to i8
  store i8 %3253, i8* %33, align 1
  %3254 = lshr i32 %3237, 31
  %3255 = xor i32 %3252, %3254
  %3256 = add nuw nsw i32 %3255, %3254
  %3257 = icmp eq i32 %3256, 2
  %3258 = zext i1 %3257 to i8
  store i8 %3258, i8* %39, align 1
  %3259 = icmp ne i8 %3253, 0
  %3260 = xor i1 %3259, %3257
  %.demorgan111 = or i1 %3250, %3260
  %.v112 = select i1 %.demorgan111, i64 18, i64 1859
  %3261 = add i64 %3227, %.v112
  %3262 = add i64 %3225, -4
  %3263 = add i64 %3261, 7
  store i64 %3263, i64* %PC.i, align 8
  %3264 = inttoptr i64 %3262 to i32*
  store i32 0, i32* %3264, align 4
  %.pre80 = load i64, i64* %PC.i, align 8
  br i1 %.demorgan111, label %block_.L_40102e, label %block_.L_40175f

block_.L_40102e:                                  ; preds = %block_40100c, %block_401042
  %3265 = phi i64 [ %3431, %block_401042 ], [ %.pre80, %block_40100c ]
  %3266 = load i64, i64* %RBP.i, align 8
  %3267 = add i64 %3266, -4
  %3268 = add i64 %3265, 3
  store i64 %3268, i64* %PC.i, align 8
  %3269 = inttoptr i64 %3267 to i32*
  %3270 = load i32, i32* %3269, align 4
  %3271 = zext i32 %3270 to i64
  store i64 %3271, i64* %RAX.i1508, align 8
  %3272 = add i64 %3266, -12
  %3273 = add i64 %3265, 7
  store i64 %3273, i64* %PC.i, align 8
  %3274 = inttoptr i64 %3272 to i32*
  %3275 = load i32, i32* %3274, align 4
  %3276 = sext i32 %3275 to i64
  store i64 %3276, i64* %RCX.i2066, align 8
  %3277 = shl nsw i64 %3276, 2
  %3278 = add i64 %3266, -1328
  %3279 = add i64 %3278, %3277
  %3280 = add i64 %3265, 14
  store i64 %3280, i64* %PC.i, align 8
  %3281 = inttoptr i64 %3279 to i32*
  %3282 = load i32, i32* %3281, align 4
  %3283 = sub i32 %3270, %3282
  %3284 = icmp ult i32 %3270, %3282
  %3285 = zext i1 %3284 to i8
  store i8 %3285, i8* %14, align 1
  %3286 = and i32 %3283, 255
  %3287 = tail call i32 @llvm.ctpop.i32(i32 %3286)
  %3288 = trunc i32 %3287 to i8
  %3289 = and i8 %3288, 1
  %3290 = xor i8 %3289, 1
  store i8 %3290, i8* %21, align 1
  %3291 = xor i32 %3282, %3270
  %3292 = xor i32 %3291, %3283
  %3293 = lshr i32 %3292, 4
  %3294 = trunc i32 %3293 to i8
  %3295 = and i8 %3294, 1
  store i8 %3295, i8* %27, align 1
  %3296 = icmp eq i32 %3283, 0
  %3297 = zext i1 %3296 to i8
  store i8 %3297, i8* %30, align 1
  %3298 = lshr i32 %3283, 31
  %3299 = trunc i32 %3298 to i8
  store i8 %3299, i8* %33, align 1
  %3300 = lshr i32 %3270, 31
  %3301 = lshr i32 %3282, 31
  %3302 = xor i32 %3301, %3300
  %3303 = xor i32 %3298, %3300
  %3304 = add nuw nsw i32 %3303, %3302
  %3305 = icmp eq i32 %3304, 2
  %3306 = zext i1 %3305 to i8
  store i8 %3306, i8* %39, align 1
  %3307 = icmp ne i8 %3299, 0
  %3308 = xor i1 %3307, %3305
  %.demorgan113 = or i1 %3296, %3308
  %.v114 = select i1 %.demorgan113, i64 20, i64 88
  %3309 = add i64 %3265, %.v114
  store i64 %3309, i64* %3, align 8
  br i1 %.demorgan113, label %block_401042, label %block_.L_401086

block_401042:                                     ; preds = %block_.L_40102e
  %3310 = add i64 %3266, -1168
  store i64 %3310, i64* %RAX.i1508, align 8
  %3311 = add i64 %3309, 11
  store i64 %3311, i64* %PC.i, align 8
  %3312 = load i32, i32* %3274, align 4
  %3313 = sext i32 %3312 to i64
  %3314 = shl nsw i64 %3313, 6
  store i64 %3314, i64* %RCX.i2066, align 8
  %3315 = lshr i64 %3313, 57
  %3316 = and i64 %3315, 1
  %3317 = add i64 %3314, %3310
  store i64 %3317, i64* %RDX.i2064, align 8
  %3318 = icmp ult i64 %3317, %3310
  %3319 = icmp ult i64 %3317, %3314
  %3320 = or i1 %3318, %3319
  %3321 = zext i1 %3320 to i8
  store i8 %3321, i8* %14, align 1
  %3322 = trunc i64 %3317 to i32
  %3323 = and i32 %3322, 255
  %3324 = tail call i32 @llvm.ctpop.i32(i32 %3323)
  %3325 = trunc i32 %3324 to i8
  %3326 = and i8 %3325, 1
  %3327 = xor i8 %3326, 1
  store i8 %3327, i8* %21, align 1
  %3328 = xor i64 %3310, %3317
  %3329 = lshr i64 %3328, 4
  %3330 = trunc i64 %3329 to i8
  %3331 = and i8 %3330, 1
  store i8 %3331, i8* %27, align 1
  %3332 = icmp eq i64 %3317, 0
  %3333 = zext i1 %3332 to i8
  store i8 %3333, i8* %30, align 1
  %3334 = lshr i64 %3317, 63
  %3335 = trunc i64 %3334 to i8
  store i8 %3335, i8* %33, align 1
  %3336 = lshr i64 %3310, 63
  %3337 = xor i64 %3334, %3336
  %3338 = xor i64 %3334, %3316
  %3339 = add nuw nsw i64 %3337, %3338
  %3340 = icmp eq i64 %3339, 2
  %3341 = zext i1 %3340 to i8
  store i8 %3341, i8* %39, align 1
  %3342 = add i64 %3309, 25
  store i64 %3342, i64* %PC.i, align 8
  %3343 = load i32, i32* %3269, align 4
  %3344 = sext i32 %3343 to i64
  store i64 %3344, i64* %RCX.i2066, align 8
  %3345 = shl nsw i64 %3344, 2
  %3346 = add i64 %3345, %3317
  %3347 = add i64 %3309, 29
  store i64 %3347, i64* %PC.i, align 8
  %3348 = inttoptr i64 %3346 to i32*
  %3349 = load i32, i32* %3348, align 4
  %3350 = sext i32 %3349 to i64
  store i64 %3350, i64* %RCX.i2066, align 8
  %3351 = shl nsw i64 %3350, 2
  %3352 = add nsw i64 %3351, 6304896
  %3353 = add i64 %3309, 36
  store i64 %3353, i64* %PC.i, align 8
  %3354 = inttoptr i64 %3352 to i32*
  %3355 = load i32, i32* %3354, align 4
  %3356 = zext i32 %3355 to i64
  store i64 %3356, i64* %RSI.i2060, align 8
  %3357 = add i64 %3309, 40
  store i64 %3357, i64* %PC.i, align 8
  %3358 = load i32, i32* %3274, align 4
  %3359 = sext i32 %3358 to i64
  %3360 = shl nsw i64 %3359, 6
  store i64 %3360, i64* %RCX.i2066, align 8
  %3361 = lshr i64 %3359, 57
  %3362 = and i64 %3361, 1
  %3363 = load i64, i64* %RAX.i1508, align 8
  %3364 = add i64 %3360, %3363
  store i64 %3364, i64* %RAX.i1508, align 8
  %3365 = icmp ult i64 %3364, %3363
  %3366 = icmp ult i64 %3364, %3360
  %3367 = or i1 %3365, %3366
  %3368 = zext i1 %3367 to i8
  store i8 %3368, i8* %14, align 1
  %3369 = trunc i64 %3364 to i32
  %3370 = and i32 %3369, 255
  %3371 = tail call i32 @llvm.ctpop.i32(i32 %3370)
  %3372 = trunc i32 %3371 to i8
  %3373 = and i8 %3372, 1
  %3374 = xor i8 %3373, 1
  store i8 %3374, i8* %21, align 1
  %3375 = xor i64 %3363, %3364
  %3376 = lshr i64 %3375, 4
  %3377 = trunc i64 %3376 to i8
  %3378 = and i8 %3377, 1
  store i8 %3378, i8* %27, align 1
  %3379 = icmp eq i64 %3364, 0
  %3380 = zext i1 %3379 to i8
  store i8 %3380, i8* %30, align 1
  %3381 = lshr i64 %3364, 63
  %3382 = trunc i64 %3381 to i8
  store i8 %3382, i8* %33, align 1
  %3383 = lshr i64 %3363, 63
  %3384 = xor i64 %3381, %3383
  %3385 = xor i64 %3381, %3362
  %3386 = add nuw nsw i64 %3384, %3385
  %3387 = icmp eq i64 %3386, 2
  %3388 = zext i1 %3387 to i8
  store i8 %3388, i8* %39, align 1
  %3389 = load i64, i64* %RBP.i, align 8
  %3390 = add i64 %3389, -4
  %3391 = add i64 %3309, 51
  store i64 %3391, i64* %PC.i, align 8
  %3392 = inttoptr i64 %3390 to i32*
  %3393 = load i32, i32* %3392, align 4
  %3394 = sext i32 %3393 to i64
  store i64 %3394, i64* %RCX.i2066, align 8
  %3395 = shl nsw i64 %3394, 2
  %3396 = add i64 %3395, %3364
  %3397 = add i64 %3309, 54
  store i64 %3397, i64* %PC.i, align 8
  %3398 = inttoptr i64 %3396 to i32*
  store i32 %3355, i32* %3398, align 4
  %3399 = load i64, i64* %RBP.i, align 8
  %3400 = add i64 %3399, -4
  %3401 = load i64, i64* %PC.i, align 8
  %3402 = add i64 %3401, 3
  store i64 %3402, i64* %PC.i, align 8
  %3403 = inttoptr i64 %3400 to i32*
  %3404 = load i32, i32* %3403, align 4
  %3405 = add i32 %3404, 1
  %3406 = zext i32 %3405 to i64
  store i64 %3406, i64* %RAX.i1508, align 8
  %3407 = icmp eq i32 %3404, -1
  %3408 = icmp eq i32 %3405, 0
  %3409 = or i1 %3407, %3408
  %3410 = zext i1 %3409 to i8
  store i8 %3410, i8* %14, align 1
  %3411 = and i32 %3405, 255
  %3412 = tail call i32 @llvm.ctpop.i32(i32 %3411)
  %3413 = trunc i32 %3412 to i8
  %3414 = and i8 %3413, 1
  %3415 = xor i8 %3414, 1
  store i8 %3415, i8* %21, align 1
  %3416 = xor i32 %3404, %3405
  %3417 = lshr i32 %3416, 4
  %3418 = trunc i32 %3417 to i8
  %3419 = and i8 %3418, 1
  store i8 %3419, i8* %27, align 1
  %3420 = icmp eq i32 %3405, 0
  %3421 = zext i1 %3420 to i8
  store i8 %3421, i8* %30, align 1
  %3422 = lshr i32 %3405, 31
  %3423 = trunc i32 %3422 to i8
  store i8 %3423, i8* %33, align 1
  %3424 = lshr i32 %3404, 31
  %3425 = xor i32 %3422, %3424
  %3426 = add nuw nsw i32 %3425, %3422
  %3427 = icmp eq i32 %3426, 2
  %3428 = zext i1 %3427 to i8
  store i8 %3428, i8* %39, align 1
  %3429 = add i64 %3401, 9
  store i64 %3429, i64* %PC.i, align 8
  store i32 %3405, i32* %3403, align 4
  %3430 = load i64, i64* %PC.i, align 8
  %3431 = add i64 %3430, -83
  store i64 %3431, i64* %3, align 8
  br label %block_.L_40102e

block_.L_401086:                                  ; preds = %block_.L_40102e
  %3432 = add i64 %3309, 7
  store i64 %3432, i64* %PC.i, align 8
  store i32 1, i32* %3269, align 4
  %.pre36 = load i64, i64* %PC.i, align 8
  br label %block_.L_40108d

block_.L_40108d:                                  ; preds = %block_4010a1, %block_.L_401086
  %3433 = phi i64 [ %3559, %block_4010a1 ], [ %.pre36, %block_.L_401086 ]
  %3434 = load i64, i64* %RBP.i, align 8
  %3435 = add i64 %3434, -4
  %3436 = add i64 %3433, 3
  store i64 %3436, i64* %PC.i, align 8
  %3437 = inttoptr i64 %3435 to i32*
  %3438 = load i32, i32* %3437, align 4
  %3439 = zext i32 %3438 to i64
  store i64 %3439, i64* %RAX.i1508, align 8
  %3440 = add i64 %3434, -12
  %3441 = add i64 %3433, 7
  store i64 %3441, i64* %PC.i, align 8
  %3442 = inttoptr i64 %3440 to i32*
  %3443 = load i32, i32* %3442, align 4
  %3444 = sext i32 %3443 to i64
  store i64 %3444, i64* %RCX.i2066, align 8
  %3445 = shl nsw i64 %3444, 2
  %3446 = add i64 %3434, -1328
  %3447 = add i64 %3446, %3445
  %3448 = add i64 %3433, 14
  store i64 %3448, i64* %PC.i, align 8
  %3449 = inttoptr i64 %3447 to i32*
  %3450 = load i32, i32* %3449, align 4
  %3451 = sub i32 %3438, %3450
  %3452 = icmp ult i32 %3438, %3450
  %3453 = zext i1 %3452 to i8
  store i8 %3453, i8* %14, align 1
  %3454 = and i32 %3451, 255
  %3455 = tail call i32 @llvm.ctpop.i32(i32 %3454)
  %3456 = trunc i32 %3455 to i8
  %3457 = and i8 %3456, 1
  %3458 = xor i8 %3457, 1
  store i8 %3458, i8* %21, align 1
  %3459 = xor i32 %3450, %3438
  %3460 = xor i32 %3459, %3451
  %3461 = lshr i32 %3460, 4
  %3462 = trunc i32 %3461 to i8
  %3463 = and i8 %3462, 1
  store i8 %3463, i8* %27, align 1
  %3464 = icmp eq i32 %3451, 0
  %3465 = zext i1 %3464 to i8
  store i8 %3465, i8* %30, align 1
  %3466 = lshr i32 %3451, 31
  %3467 = trunc i32 %3466 to i8
  store i8 %3467, i8* %33, align 1
  %3468 = lshr i32 %3438, 31
  %3469 = lshr i32 %3450, 31
  %3470 = xor i32 %3469, %3468
  %3471 = xor i32 %3466, %3468
  %3472 = add nuw nsw i32 %3471, %3470
  %3473 = icmp eq i32 %3472, 2
  %3474 = zext i1 %3473 to i8
  store i8 %3474, i8* %39, align 1
  %3475 = icmp ne i8 %3467, 0
  %3476 = xor i1 %3475, %3473
  %.demorgan115 = or i1 %3464, %3476
  %.v116 = select i1 %.demorgan115, i64 20, i64 70
  %3477 = add i64 %3433, %.v116
  store i64 %3477, i64* %3, align 8
  br i1 %.demorgan115, label %block_4010a1, label %block_.L_4010d3

block_4010a1:                                     ; preds = %block_.L_40108d
  %3478 = add i64 %3434, -1168
  store i64 %3478, i64* %RAX.i1508, align 8
  %3479 = add i64 %3477, 11
  store i64 %3479, i64* %PC.i, align 8
  %3480 = load i32, i32* %3442, align 4
  %3481 = sext i32 %3480 to i64
  %3482 = shl nsw i64 %3481, 6
  store i64 %3482, i64* %RCX.i2066, align 8
  %3483 = lshr i64 %3481, 57
  %3484 = and i64 %3483, 1
  %3485 = add i64 %3482, %3478
  store i64 %3485, i64* %RAX.i1508, align 8
  %3486 = icmp ult i64 %3485, %3478
  %3487 = icmp ult i64 %3485, %3482
  %3488 = or i1 %3486, %3487
  %3489 = zext i1 %3488 to i8
  store i8 %3489, i8* %14, align 1
  %3490 = trunc i64 %3485 to i32
  %3491 = and i32 %3490, 255
  %3492 = tail call i32 @llvm.ctpop.i32(i32 %3491)
  %3493 = trunc i32 %3492 to i8
  %3494 = and i8 %3493, 1
  %3495 = xor i8 %3494, 1
  store i8 %3495, i8* %21, align 1
  %3496 = xor i64 %3478, %3485
  %3497 = lshr i64 %3496, 4
  %3498 = trunc i64 %3497 to i8
  %3499 = and i8 %3498, 1
  store i8 %3499, i8* %27, align 1
  %3500 = icmp eq i64 %3485, 0
  %3501 = zext i1 %3500 to i8
  store i8 %3501, i8* %30, align 1
  %3502 = lshr i64 %3485, 63
  %3503 = trunc i64 %3502 to i8
  store i8 %3503, i8* %33, align 1
  %3504 = lshr i64 %3478, 63
  %3505 = xor i64 %3502, %3504
  %3506 = xor i64 %3502, %3484
  %3507 = add nuw nsw i64 %3505, %3506
  %3508 = icmp eq i64 %3507, 2
  %3509 = zext i1 %3508 to i8
  store i8 %3509, i8* %39, align 1
  %3510 = add i64 %3477, 22
  store i64 %3510, i64* %PC.i, align 8
  %3511 = load i32, i32* %3437, align 4
  %3512 = sext i32 %3511 to i64
  store i64 %3512, i64* %RCX.i2066, align 8
  %3513 = shl nsw i64 %3512, 2
  %3514 = add i64 %3513, %3485
  %3515 = add i64 %3477, 25
  store i64 %3515, i64* %PC.i, align 8
  %3516 = inttoptr i64 %3514 to i32*
  %3517 = load i32, i32* %3516, align 4
  %3518 = zext i32 %3517 to i64
  store i64 %3518, i64* %RDX.i2064, align 8
  %3519 = add i64 %3477, 29
  store i64 %3519, i64* %PC.i, align 8
  %3520 = load i32, i32* %3437, align 4
  %3521 = sext i32 %3520 to i64
  store i64 %3521, i64* %RAX.i1508, align 8
  %3522 = shl nsw i64 %3521, 2
  %3523 = add i64 %3434, -2688
  %3524 = add i64 %3523, %3522
  %3525 = add i64 %3477, 36
  store i64 %3525, i64* %PC.i, align 8
  %3526 = inttoptr i64 %3524 to i32*
  store i32 %3517, i32* %3526, align 4
  %3527 = load i64, i64* %RBP.i, align 8
  %3528 = add i64 %3527, -4
  %3529 = load i64, i64* %PC.i, align 8
  %3530 = add i64 %3529, 3
  store i64 %3530, i64* %PC.i, align 8
  %3531 = inttoptr i64 %3528 to i32*
  %3532 = load i32, i32* %3531, align 4
  %3533 = add i32 %3532, 1
  %3534 = zext i32 %3533 to i64
  store i64 %3534, i64* %RAX.i1508, align 8
  %3535 = icmp eq i32 %3532, -1
  %3536 = icmp eq i32 %3533, 0
  %3537 = or i1 %3535, %3536
  %3538 = zext i1 %3537 to i8
  store i8 %3538, i8* %14, align 1
  %3539 = and i32 %3533, 255
  %3540 = tail call i32 @llvm.ctpop.i32(i32 %3539)
  %3541 = trunc i32 %3540 to i8
  %3542 = and i8 %3541, 1
  %3543 = xor i8 %3542, 1
  store i8 %3543, i8* %21, align 1
  %3544 = xor i32 %3532, %3533
  %3545 = lshr i32 %3544, 4
  %3546 = trunc i32 %3545 to i8
  %3547 = and i8 %3546, 1
  store i8 %3547, i8* %27, align 1
  %3548 = icmp eq i32 %3533, 0
  %3549 = zext i1 %3548 to i8
  store i8 %3549, i8* %30, align 1
  %3550 = lshr i32 %3533, 31
  %3551 = trunc i32 %3550 to i8
  store i8 %3551, i8* %33, align 1
  %3552 = lshr i32 %3532, 31
  %3553 = xor i32 %3550, %3552
  %3554 = add nuw nsw i32 %3553, %3550
  %3555 = icmp eq i32 %3554, 2
  %3556 = zext i1 %3555 to i8
  store i8 %3556, i8* %39, align 1
  %3557 = add i64 %3529, 9
  store i64 %3557, i64* %PC.i, align 8
  store i32 %3533, i32* %3531, align 4
  %3558 = load i64, i64* %PC.i, align 8
  %3559 = add i64 %3558, -65
  store i64 %3559, i64* %3, align 8
  br label %block_.L_40108d

block_.L_4010d3:                                  ; preds = %block_.L_40108d
  %3560 = add i64 %3434, -1492
  %3561 = add i64 %3477, 10
  store i64 %3561, i64* %PC.i, align 8
  %3562 = inttoptr i64 %3560 to i32*
  store i32 0, i32* %3562, align 4
  %3563 = load i64, i64* %RBP.i, align 8
  %3564 = add i64 %3563, -4
  %3565 = load i64, i64* %PC.i, align 8
  %3566 = add i64 %3565, 7
  store i64 %3566, i64* %PC.i, align 8
  %3567 = inttoptr i64 %3564 to i32*
  store i32 1, i32* %3567, align 4
  %.pre37 = load i64, i64* %PC.i, align 8
  br label %block_.L_4010e4

block_.L_4010e4:                                  ; preds = %block_.L_4011c0, %block_.L_4010d3
  %3568 = phi i64 [ %.pre37, %block_.L_4010d3 ], [ %3971, %block_.L_4011c0 ]
  %MEMORY.25 = phi %struct.Memory* [ %MEMORY.21, %block_.L_4010d3 ], [ %MEMORY.26, %block_.L_4011c0 ]
  %3569 = load i64, i64* %RBP.i, align 8
  %3570 = add i64 %3569, -4
  %3571 = add i64 %3568, 7
  store i64 %3571, i64* %PC.i, align 8
  %3572 = inttoptr i64 %3570 to i32*
  %3573 = load i32, i32* %3572, align 4
  %3574 = add i32 %3573, -255
  %3575 = icmp ult i32 %3573, 255
  %3576 = zext i1 %3575 to i8
  store i8 %3576, i8* %14, align 1
  %3577 = and i32 %3574, 255
  %3578 = tail call i32 @llvm.ctpop.i32(i32 %3577)
  %3579 = trunc i32 %3578 to i8
  %3580 = and i8 %3579, 1
  %3581 = xor i8 %3580, 1
  store i8 %3581, i8* %21, align 1
  %3582 = xor i32 %3573, 16
  %3583 = xor i32 %3582, %3574
  %3584 = lshr i32 %3583, 4
  %3585 = trunc i32 %3584 to i8
  %3586 = and i8 %3585, 1
  store i8 %3586, i8* %27, align 1
  %3587 = icmp eq i32 %3574, 0
  %3588 = zext i1 %3587 to i8
  store i8 %3588, i8* %30, align 1
  %3589 = lshr i32 %3574, 31
  %3590 = trunc i32 %3589 to i8
  store i8 %3590, i8* %33, align 1
  %3591 = lshr i32 %3573, 31
  %3592 = xor i32 %3589, %3591
  %3593 = add nuw nsw i32 %3592, %3591
  %3594 = icmp eq i32 %3593, 2
  %3595 = zext i1 %3594 to i8
  store i8 %3595, i8* %39, align 1
  %3596 = icmp ne i8 %3590, 0
  %3597 = xor i1 %3596, %3594
  %.demorgan117 = or i1 %3587, %3597
  %.v118 = select i1 %.demorgan117, i64 13, i64 239
  %3598 = add i64 %3568, %.v118
  store i64 %3598, i64* %3, align 8
  br i1 %.demorgan117, label %block_4010f1, label %block_.L_4011d3

block_4010f1:                                     ; preds = %block_.L_4010e4
  %3599 = add i64 %3569, -16
  %3600 = add i64 %3598, 7
  store i64 %3600, i64* %PC.i, align 8
  %3601 = inttoptr i64 %3599 to i32*
  store i32 1, i32* %3601, align 4
  %3602 = load i64, i64* %RBP.i, align 8
  %3603 = add i64 %3602, -8
  %3604 = load i64, i64* %PC.i, align 8
  %3605 = add i64 %3604, 7
  store i64 %3605, i64* %PC.i, align 8
  %3606 = inttoptr i64 %3603 to i32*
  store i32 1, i32* %3606, align 4
  %.pre38 = load i64, i64* %PC.i, align 8
  br label %block_.L_4010ff

block_.L_4010ff:                                  ; preds = %block_.L_40116d, %block_4010f1
  %3607 = phi i64 [ %.pre38, %block_4010f1 ], [ %3835, %block_.L_40116d ]
  %MEMORY.26 = phi %struct.Memory* [ %MEMORY.25, %block_4010f1 ], [ %MEMORY.27, %block_.L_40116d ]
  %3608 = load i64, i64* %RBP.i, align 8
  %3609 = add i64 %3608, -8
  %3610 = add i64 %3607, 3
  store i64 %3610, i64* %PC.i, align 8
  %3611 = inttoptr i64 %3609 to i32*
  %3612 = load i32, i32* %3611, align 4
  %3613 = zext i32 %3612 to i64
  store i64 %3613, i64* %RAX.i1508, align 8
  %3614 = add i64 %3608, -12
  %3615 = add i64 %3607, 7
  store i64 %3615, i64* %PC.i, align 8
  %3616 = inttoptr i64 %3614 to i32*
  %3617 = load i32, i32* %3616, align 4
  %3618 = sext i32 %3617 to i64
  store i64 %3618, i64* %RCX.i2066, align 8
  %3619 = shl nsw i64 %3618, 2
  %3620 = add i64 %3608, -1328
  %3621 = add i64 %3620, %3619
  %3622 = add i64 %3607, 14
  store i64 %3622, i64* %PC.i, align 8
  %3623 = inttoptr i64 %3621 to i32*
  %3624 = load i32, i32* %3623, align 4
  %3625 = sub i32 %3612, %3624
  %3626 = icmp ult i32 %3612, %3624
  %3627 = zext i1 %3626 to i8
  store i8 %3627, i8* %14, align 1
  %3628 = and i32 %3625, 255
  %3629 = tail call i32 @llvm.ctpop.i32(i32 %3628)
  %3630 = trunc i32 %3629 to i8
  %3631 = and i8 %3630, 1
  %3632 = xor i8 %3631, 1
  store i8 %3632, i8* %21, align 1
  %3633 = xor i32 %3624, %3612
  %3634 = xor i32 %3633, %3625
  %3635 = lshr i32 %3634, 4
  %3636 = trunc i32 %3635 to i8
  %3637 = and i8 %3636, 1
  store i8 %3637, i8* %27, align 1
  %3638 = icmp eq i32 %3625, 0
  %3639 = zext i1 %3638 to i8
  store i8 %3639, i8* %30, align 1
  %3640 = lshr i32 %3625, 31
  %3641 = trunc i32 %3640 to i8
  store i8 %3641, i8* %33, align 1
  %3642 = lshr i32 %3612, 31
  %3643 = lshr i32 %3624, 31
  %3644 = xor i32 %3643, %3642
  %3645 = xor i32 %3640, %3642
  %3646 = add nuw nsw i32 %3645, %3644
  %3647 = icmp eq i32 %3646, 2
  %3648 = zext i1 %3647 to i8
  store i8 %3648, i8* %39, align 1
  %3649 = icmp ne i8 %3641, 0
  %3650 = xor i1 %3649, %3647
  %.demorgan119 = or i1 %3638, %3650
  %.v120 = select i1 %.demorgan119, i64 20, i64 129
  %3651 = add i64 %3607, %.v120
  store i64 %3651, i64* %3, align 8
  br i1 %.demorgan119, label %block_401113, label %block_.L_401180

block_401113:                                     ; preds = %block_.L_4010ff
  %3652 = add i64 %3651, 4
  store i64 %3652, i64* %PC.i, align 8
  %3653 = load i32, i32* %3611, align 4
  %3654 = sext i32 %3653 to i64
  store i64 %3654, i64* %RAX.i1508, align 8
  %3655 = shl nsw i64 %3654, 2
  %3656 = add i64 %3608, -2688
  %3657 = add i64 %3656, %3655
  %3658 = add i64 %3651, 12
  store i64 %3658, i64* %PC.i, align 8
  %3659 = inttoptr i64 %3657 to i32*
  %3660 = load i32, i32* %3659, align 4
  %3661 = add i32 %3660, 1
  %3662 = icmp ne i32 %3660, -1
  %3663 = zext i1 %3662 to i8
  store i8 %3663, i8* %14, align 1
  %3664 = and i32 %3661, 255
  %3665 = tail call i32 @llvm.ctpop.i32(i32 %3664)
  %3666 = trunc i32 %3665 to i8
  %3667 = and i8 %3666, 1
  %3668 = xor i8 %3667, 1
  store i8 %3668, i8* %21, align 1
  %3669 = xor i32 %3660, 16
  %3670 = xor i32 %3661, %3669
  %3671 = lshr i32 %3670, 4
  %3672 = trunc i32 %3671 to i8
  %3673 = and i8 %3672, 1
  store i8 %3673, i8* %27, align 1
  %3674 = icmp eq i32 %3661, 0
  %3675 = zext i1 %3674 to i8
  store i8 %3675, i8* %30, align 1
  %3676 = lshr i32 %3661, 31
  %3677 = trunc i32 %3676 to i8
  store i8 %3677, i8* %33, align 1
  %3678 = lshr i32 %3660, 31
  %3679 = xor i32 %3678, 1
  %3680 = xor i32 %3676, %3678
  %3681 = add nuw nsw i32 %3680, %3679
  %3682 = icmp eq i32 %3681, 2
  %3683 = zext i1 %3682 to i8
  store i8 %3683, i8* %39, align 1
  %.v121 = select i1 %3674, i64 90, i64 18
  %3684 = add i64 %3651, %.v121
  store i64 %3684, i64* %3, align 8
  br i1 %3674, label %block_.L_40116d, label %block_401125

block_401125:                                     ; preds = %block_401113
  store i64 255, i64* %RAX.i1508, align 8
  %3685 = add i64 %3684, 9
  store i64 %3685, i64* %PC.i, align 8
  %3686 = load i32, i32* %3611, align 4
  %3687 = sext i32 %3686 to i64
  store i64 %3687, i64* %RCX.i2066, align 8
  %3688 = shl nsw i64 %3687, 2
  %3689 = add i64 %3656, %3688
  %3690 = add i64 %3684, 16
  store i64 %3690, i64* %PC.i, align 8
  %3691 = inttoptr i64 %3689 to i32*
  %3692 = load i32, i32* %3691, align 4
  %3693 = zext i32 %3692 to i64
  store i64 %3693, i64* %RDX.i2064, align 8
  %3694 = add i64 %3684, 19
  store i64 %3694, i64* %PC.i, align 8
  %3695 = load i32, i32* %3611, align 4
  %3696 = add i32 %3695, %3692
  %3697 = zext i32 %3696 to i64
  store i64 %3697, i64* %RDX.i2064, align 8
  %3698 = icmp ult i32 %3696, %3692
  %3699 = icmp ult i32 %3696, %3695
  %3700 = or i1 %3698, %3699
  %3701 = zext i1 %3700 to i8
  store i8 %3701, i8* %14, align 1
  %3702 = and i32 %3696, 255
  %3703 = tail call i32 @llvm.ctpop.i32(i32 %3702)
  %3704 = trunc i32 %3703 to i8
  %3705 = and i8 %3704, 1
  %3706 = xor i8 %3705, 1
  store i8 %3706, i8* %21, align 1
  %3707 = xor i32 %3695, %3692
  %3708 = xor i32 %3707, %3696
  %3709 = lshr i32 %3708, 4
  %3710 = trunc i32 %3709 to i8
  %3711 = and i8 %3710, 1
  store i8 %3711, i8* %27, align 1
  %3712 = icmp eq i32 %3696, 0
  %3713 = zext i1 %3712 to i8
  store i8 %3713, i8* %30, align 1
  %3714 = lshr i32 %3696, 31
  %3715 = trunc i32 %3714 to i8
  store i8 %3715, i8* %33, align 1
  %3716 = lshr i32 %3692, 31
  %3717 = lshr i32 %3695, 31
  %3718 = xor i32 %3714, %3716
  %3719 = xor i32 %3714, %3717
  %3720 = add nuw nsw i32 %3718, %3719
  %3721 = icmp eq i32 %3720, 2
  %3722 = zext i1 %3721 to i8
  store i8 %3722, i8* %39, align 1
  %3723 = add i64 %3608, -2716
  %3724 = add i64 %3684, 25
  store i64 %3724, i64* %PC.i, align 8
  %3725 = inttoptr i64 %3723 to i32*
  store i32 255, i32* %3725, align 4
  %3726 = load i32, i32* %EDX.i2048, align 4
  %3727 = zext i32 %3726 to i64
  %3728 = load i64, i64* %PC.i, align 8
  store i64 %3727, i64* %RAX.i1508, align 8
  %3729 = sext i32 %3726 to i64
  %3730 = lshr i64 %3729, 32
  store i64 %3730, i64* %57, align 8
  %3731 = load i64, i64* %RBP.i, align 8
  %3732 = add i64 %3731, -2716
  %3733 = add i64 %3728, 9
  store i64 %3733, i64* %PC.i, align 8
  %3734 = inttoptr i64 %3732 to i32*
  %3735 = load i32, i32* %3734, align 4
  %3736 = zext i32 %3735 to i64
  store i64 %3736, i64* %RSI.i2060, align 8
  %3737 = add i64 %3728, 11
  store i64 %3737, i64* %PC.i, align 8
  %3738 = zext i32 %3726 to i64
  %3739 = sext i32 %3735 to i64
  %3740 = shl nuw i64 %3730, 32
  %3741 = or i64 %3740, %3738
  %3742 = sdiv i64 %3741, %3739
  %3743 = shl i64 %3742, 32
  %3744 = ashr exact i64 %3743, 32
  %3745 = icmp eq i64 %3742, %3744
  br i1 %3745, label %3748, label %3746

; <label>:3746:                                   ; preds = %block_401125
  %3747 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3737, %struct.Memory* %MEMORY.26)
  %.pre39 = load i64, i64* %RBP.i, align 8
  %.pre40 = load i64, i64* %PC.i, align 8
  %.pre41 = load i32, i32* %EDX.i2048, align 4
  br label %routine_idivl__esi.exit897

; <label>:3748:                                   ; preds = %block_401125
  %3749 = srem i64 %3741, %3739
  %3750 = and i64 %3742, 4294967295
  store i64 %3750, i64* %58, align 8
  %3751 = and i64 %3749, 4294967295
  store i64 %3751, i64* %59, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %3752 = trunc i64 %3749 to i32
  br label %routine_idivl__esi.exit897

routine_idivl__esi.exit897:                       ; preds = %3748, %3746
  %3753 = phi i32 [ %.pre41, %3746 ], [ %3752, %3748 ]
  %3754 = phi i64 [ %.pre40, %3746 ], [ %3737, %3748 ]
  %3755 = phi i64 [ %.pre39, %3746 ], [ %3731, %3748 ]
  %3756 = phi %struct.Memory* [ %3747, %3746 ], [ %MEMORY.26, %3748 ]
  %3757 = add i64 %3755, -8
  %3758 = add i64 %3754, 4
  store i64 %3758, i64* %PC.i, align 8
  %3759 = inttoptr i64 %3757 to i32*
  %3760 = load i32, i32* %3759, align 4
  %3761 = sext i32 %3760 to i64
  store i64 %3761, i64* %RCX.i2066, align 8
  %3762 = shl nsw i64 %3761, 2
  %3763 = add i64 %3755, -2688
  %3764 = add i64 %3763, %3762
  %3765 = add i64 %3754, 11
  store i64 %3765, i64* %PC.i, align 8
  %3766 = inttoptr i64 %3764 to i32*
  store i32 %3753, i32* %3766, align 4
  %3767 = load i64, i64* %RBP.i, align 8
  %3768 = add i64 %3767, -8
  %3769 = load i64, i64* %PC.i, align 8
  %3770 = add i64 %3769, 4
  store i64 %3770, i64* %PC.i, align 8
  %3771 = inttoptr i64 %3768 to i32*
  %3772 = load i32, i32* %3771, align 4
  %3773 = sext i32 %3772 to i64
  store i64 %3773, i64* %RCX.i2066, align 8
  %3774 = shl nsw i64 %3773, 2
  %3775 = add i64 %3767, -2688
  %3776 = add i64 %3775, %3774
  %3777 = add i64 %3769, 12
  store i64 %3777, i64* %PC.i, align 8
  %3778 = inttoptr i64 %3776 to i32*
  %3779 = load i32, i32* %3778, align 4
  %3780 = sext i32 %3779 to i64
  store i64 %3780, i64* %RCX.i2066, align 8
  %3781 = shl nsw i64 %3780, 2
  %3782 = add nsw i64 %3781, 6305920
  %3783 = add i64 %3769, 19
  store i64 %3783, i64* %PC.i, align 8
  %3784 = inttoptr i64 %3782 to i32*
  %3785 = load i32, i32* %3784, align 4
  %3786 = zext i32 %3785 to i64
  store i64 %3786, i64* %RDX.i2064, align 8
  %3787 = add i64 %3767, -16
  %3788 = add i64 %3769, 22
  store i64 %3788, i64* %PC.i, align 8
  %3789 = inttoptr i64 %3787 to i32*
  %3790 = load i32, i32* %3789, align 4
  %3791 = xor i32 %3790, %3785
  %3792 = zext i32 %3791 to i64
  store i64 %3792, i64* %RDX.i2064, align 8
  store i8 0, i8* %14, align 1
  %3793 = and i32 %3791, 255
  %3794 = tail call i32 @llvm.ctpop.i32(i32 %3793)
  %3795 = trunc i32 %3794 to i8
  %3796 = and i8 %3795, 1
  %3797 = xor i8 %3796, 1
  store i8 %3797, i8* %21, align 1
  %3798 = icmp eq i32 %3791, 0
  %3799 = zext i1 %3798 to i8
  store i8 %3799, i8* %30, align 1
  %3800 = lshr i32 %3791, 31
  %3801 = trunc i32 %3800 to i8
  store i8 %3801, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %3802 = add i64 %3769, 25
  store i64 %3802, i64* %PC.i, align 8
  store i32 %3791, i32* %3789, align 4
  %.pre42 = load i64, i64* %PC.i, align 8
  %.pre43 = load i64, i64* %RBP.i, align 8
  br label %block_.L_40116d

block_.L_40116d:                                  ; preds = %routine_idivl__esi.exit897, %block_401113
  %3803 = phi i64 [ %3608, %block_401113 ], [ %.pre43, %routine_idivl__esi.exit897 ]
  %3804 = phi i64 [ %3684, %block_401113 ], [ %.pre42, %routine_idivl__esi.exit897 ]
  %MEMORY.27 = phi %struct.Memory* [ %MEMORY.26, %block_401113 ], [ %3756, %routine_idivl__esi.exit897 ]
  %3805 = add i64 %3803, -8
  %3806 = add i64 %3804, 8
  store i64 %3806, i64* %PC.i, align 8
  %3807 = inttoptr i64 %3805 to i32*
  %3808 = load i32, i32* %3807, align 4
  %3809 = add i32 %3808, 1
  %3810 = zext i32 %3809 to i64
  store i64 %3810, i64* %RAX.i1508, align 8
  %3811 = icmp eq i32 %3808, -1
  %3812 = icmp eq i32 %3809, 0
  %3813 = or i1 %3811, %3812
  %3814 = zext i1 %3813 to i8
  store i8 %3814, i8* %14, align 1
  %3815 = and i32 %3809, 255
  %3816 = tail call i32 @llvm.ctpop.i32(i32 %3815)
  %3817 = trunc i32 %3816 to i8
  %3818 = and i8 %3817, 1
  %3819 = xor i8 %3818, 1
  store i8 %3819, i8* %21, align 1
  %3820 = xor i32 %3808, %3809
  %3821 = lshr i32 %3820, 4
  %3822 = trunc i32 %3821 to i8
  %3823 = and i8 %3822, 1
  store i8 %3823, i8* %27, align 1
  %3824 = icmp eq i32 %3809, 0
  %3825 = zext i1 %3824 to i8
  store i8 %3825, i8* %30, align 1
  %3826 = lshr i32 %3809, 31
  %3827 = trunc i32 %3826 to i8
  store i8 %3827, i8* %33, align 1
  %3828 = lshr i32 %3808, 31
  %3829 = xor i32 %3826, %3828
  %3830 = add nuw nsw i32 %3829, %3826
  %3831 = icmp eq i32 %3830, 2
  %3832 = zext i1 %3831 to i8
  store i8 %3832, i8* %39, align 1
  %3833 = add i64 %3804, 14
  store i64 %3833, i64* %PC.i, align 8
  store i32 %3809, i32* %3807, align 4
  %3834 = load i64, i64* %PC.i, align 8
  %3835 = add i64 %3834, -124
  store i64 %3835, i64* %3, align 8
  br label %block_.L_4010ff

block_.L_401180:                                  ; preds = %block_.L_4010ff
  %3836 = add i64 %3608, -16
  %3837 = add i64 %3651, 4
  store i64 %3837, i64* %PC.i, align 8
  %3838 = inttoptr i64 %3836 to i32*
  %3839 = load i32, i32* %3838, align 4
  store i8 0, i8* %14, align 1
  %3840 = and i32 %3839, 255
  %3841 = tail call i32 @llvm.ctpop.i32(i32 %3840)
  %3842 = trunc i32 %3841 to i8
  %3843 = and i8 %3842, 1
  %3844 = xor i8 %3843, 1
  store i8 %3844, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %3845 = icmp eq i32 %3839, 0
  %3846 = zext i1 %3845 to i8
  store i8 %3846, i8* %30, align 1
  %3847 = lshr i32 %3839, 31
  %3848 = trunc i32 %3847 to i8
  store i8 %3848, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v122 = select i1 %3845, i64 10, i64 64
  %3849 = add i64 %3651, %.v122
  store i64 %3849, i64* %3, align 8
  br i1 %3845, label %block_40118a, label %block_.L_4011c0

block_40118a:                                     ; preds = %block_.L_401180
  store i64 255, i64* %RAX.i1508, align 8
  %3850 = add i64 %3608, -4
  %3851 = add i64 %3849, 8
  store i64 %3851, i64* %PC.i, align 8
  %3852 = inttoptr i64 %3850 to i32*
  %3853 = load i32, i32* %3852, align 4
  %3854 = zext i32 %3853 to i64
  store i64 %3854, i64* %RCX.i2066, align 8
  %3855 = add i64 %3608, -1492
  %3856 = add i64 %3849, 15
  store i64 %3856, i64* %PC.i, align 8
  %3857 = inttoptr i64 %3855 to i32*
  %3858 = load i32, i32* %3857, align 4
  %3859 = sext i32 %3858 to i64
  store i64 %3859, i64* %RDX.i2064, align 8
  %3860 = shl nsw i64 %3859, 2
  %3861 = add i64 %3608, -1536
  %3862 = add i64 %3861, %3860
  %3863 = add i64 %3849, 22
  store i64 %3863, i64* %PC.i, align 8
  %3864 = inttoptr i64 %3862 to i32*
  store i32 %3853, i32* %3864, align 4
  %3865 = load i64, i64* %RAX.i1508, align 8
  %3866 = load i64, i64* %RBP.i, align 8
  %3867 = add i64 %3866, -4
  %3868 = load i64, i64* %PC.i, align 8
  %3869 = add i64 %3868, 3
  store i64 %3869, i64* %PC.i, align 8
  %3870 = trunc i64 %3865 to i32
  %3871 = inttoptr i64 %3867 to i32*
  %3872 = load i32, i32* %3871, align 4
  %3873 = sub i32 %3870, %3872
  %3874 = zext i32 %3873 to i64
  store i64 %3874, i64* %RAX.i1508, align 8
  %3875 = icmp ult i32 %3870, %3872
  %3876 = zext i1 %3875 to i8
  store i8 %3876, i8* %14, align 1
  %3877 = and i32 %3873, 255
  %3878 = tail call i32 @llvm.ctpop.i32(i32 %3877)
  %3879 = trunc i32 %3878 to i8
  %3880 = and i8 %3879, 1
  %3881 = xor i8 %3880, 1
  store i8 %3881, i8* %21, align 1
  %3882 = xor i32 %3872, %3870
  %3883 = xor i32 %3882, %3873
  %3884 = lshr i32 %3883, 4
  %3885 = trunc i32 %3884 to i8
  %3886 = and i8 %3885, 1
  store i8 %3886, i8* %27, align 1
  %3887 = icmp eq i32 %3873, 0
  %3888 = zext i1 %3887 to i8
  store i8 %3888, i8* %30, align 1
  %3889 = lshr i32 %3873, 31
  %3890 = trunc i32 %3889 to i8
  store i8 %3890, i8* %33, align 1
  %3891 = lshr i32 %3870, 31
  %3892 = lshr i32 %3872, 31
  %3893 = xor i32 %3892, %3891
  %3894 = xor i32 %3889, %3891
  %3895 = add nuw nsw i32 %3894, %3893
  %3896 = icmp eq i32 %3895, 2
  %3897 = zext i1 %3896 to i8
  store i8 %3897, i8* %39, align 1
  %3898 = add i64 %3866, -1492
  %3899 = add i64 %3868, 10
  store i64 %3899, i64* %PC.i, align 8
  %3900 = inttoptr i64 %3898 to i32*
  %3901 = load i32, i32* %3900, align 4
  %3902 = sext i32 %3901 to i64
  store i64 %3902, i64* %RDX.i2064, align 8
  %3903 = shl nsw i64 %3902, 2
  %3904 = add i64 %3866, -1568
  %3905 = add i64 %3904, %3903
  %3906 = add i64 %3868, 17
  store i64 %3906, i64* %PC.i, align 8
  %3907 = inttoptr i64 %3905 to i32*
  store i32 %3873, i32* %3907, align 4
  %3908 = load i64, i64* %RBP.i, align 8
  %3909 = add i64 %3908, -1492
  %3910 = load i64, i64* %PC.i, align 8
  %3911 = add i64 %3910, 6
  store i64 %3911, i64* %PC.i, align 8
  %3912 = inttoptr i64 %3909 to i32*
  %3913 = load i32, i32* %3912, align 4
  %3914 = add i32 %3913, 1
  %3915 = zext i32 %3914 to i64
  store i64 %3915, i64* %RAX.i1508, align 8
  %3916 = icmp eq i32 %3913, -1
  %3917 = icmp eq i32 %3914, 0
  %3918 = or i1 %3916, %3917
  %3919 = zext i1 %3918 to i8
  store i8 %3919, i8* %14, align 1
  %3920 = and i32 %3914, 255
  %3921 = tail call i32 @llvm.ctpop.i32(i32 %3920)
  %3922 = trunc i32 %3921 to i8
  %3923 = and i8 %3922, 1
  %3924 = xor i8 %3923, 1
  store i8 %3924, i8* %21, align 1
  %3925 = xor i32 %3913, %3914
  %3926 = lshr i32 %3925, 4
  %3927 = trunc i32 %3926 to i8
  %3928 = and i8 %3927, 1
  store i8 %3928, i8* %27, align 1
  %3929 = icmp eq i32 %3914, 0
  %3930 = zext i1 %3929 to i8
  store i8 %3930, i8* %30, align 1
  %3931 = lshr i32 %3914, 31
  %3932 = trunc i32 %3931 to i8
  store i8 %3932, i8* %33, align 1
  %3933 = lshr i32 %3913, 31
  %3934 = xor i32 %3931, %3933
  %3935 = add nuw nsw i32 %3934, %3931
  %3936 = icmp eq i32 %3935, 2
  %3937 = zext i1 %3936 to i8
  store i8 %3937, i8* %39, align 1
  %3938 = add i64 %3910, 15
  store i64 %3938, i64* %PC.i, align 8
  store i32 %3914, i32* %3912, align 4
  %.pre44 = load i64, i64* %PC.i, align 8
  %.pre45 = load i64, i64* %RBP.i, align 8
  br label %block_.L_4011c0

block_.L_4011c0:                                  ; preds = %block_.L_401180, %block_40118a
  %3939 = phi i64 [ %.pre45, %block_40118a ], [ %3608, %block_.L_401180 ]
  %3940 = phi i64 [ %.pre44, %block_40118a ], [ %3849, %block_.L_401180 ]
  %3941 = add i64 %3939, -4
  %3942 = add i64 %3940, 8
  store i64 %3942, i64* %PC.i, align 8
  %3943 = inttoptr i64 %3941 to i32*
  %3944 = load i32, i32* %3943, align 4
  %3945 = add i32 %3944, 1
  %3946 = zext i32 %3945 to i64
  store i64 %3946, i64* %RAX.i1508, align 8
  %3947 = icmp eq i32 %3944, -1
  %3948 = icmp eq i32 %3945, 0
  %3949 = or i1 %3947, %3948
  %3950 = zext i1 %3949 to i8
  store i8 %3950, i8* %14, align 1
  %3951 = and i32 %3945, 255
  %3952 = tail call i32 @llvm.ctpop.i32(i32 %3951)
  %3953 = trunc i32 %3952 to i8
  %3954 = and i8 %3953, 1
  %3955 = xor i8 %3954, 1
  store i8 %3955, i8* %21, align 1
  %3956 = xor i32 %3944, %3945
  %3957 = lshr i32 %3956, 4
  %3958 = trunc i32 %3957 to i8
  %3959 = and i8 %3958, 1
  store i8 %3959, i8* %27, align 1
  %3960 = icmp eq i32 %3945, 0
  %3961 = zext i1 %3960 to i8
  store i8 %3961, i8* %30, align 1
  %3962 = lshr i32 %3945, 31
  %3963 = trunc i32 %3962 to i8
  store i8 %3963, i8* %33, align 1
  %3964 = lshr i32 %3944, 31
  %3965 = xor i32 %3962, %3964
  %3966 = add nuw nsw i32 %3965, %3962
  %3967 = icmp eq i32 %3966, 2
  %3968 = zext i1 %3967 to i8
  store i8 %3968, i8* %39, align 1
  %3969 = add i64 %3940, 14
  store i64 %3969, i64* %PC.i, align 8
  store i32 %3945, i32* %3943, align 4
  %3970 = load i64, i64* %PC.i, align 8
  %3971 = add i64 %3970, -234
  store i64 %3971, i64* %3, align 8
  br label %block_.L_4010e4

block_.L_4011d3:                                  ; preds = %block_.L_4010e4
  %3972 = add i64 %3569, -1492
  %3973 = add i64 %3598, 6
  store i64 %3973, i64* %PC.i, align 8
  %3974 = inttoptr i64 %3972 to i32*
  %3975 = load i32, i32* %3974, align 4
  %3976 = zext i32 %3975 to i64
  store i64 %3976, i64* %RAX.i1508, align 8
  %3977 = add i64 %3569, -12
  %3978 = add i64 %3598, 10
  store i64 %3978, i64* %PC.i, align 8
  %3979 = inttoptr i64 %3977 to i32*
  %3980 = load i32, i32* %3979, align 4
  %3981 = sext i32 %3980 to i64
  store i64 %3981, i64* %RCX.i2066, align 8
  %3982 = shl nsw i64 %3981, 2
  %3983 = add i64 %3569, -1328
  %3984 = add i64 %3983, %3982
  %3985 = add i64 %3598, 17
  store i64 %3985, i64* %PC.i, align 8
  %3986 = inttoptr i64 %3984 to i32*
  %3987 = load i32, i32* %3986, align 4
  %3988 = sub i32 %3975, %3987
  %3989 = icmp ult i32 %3975, %3987
  %3990 = zext i1 %3989 to i8
  store i8 %3990, i8* %14, align 1
  %3991 = and i32 %3988, 255
  %3992 = tail call i32 @llvm.ctpop.i32(i32 %3991)
  %3993 = trunc i32 %3992 to i8
  %3994 = and i8 %3993, 1
  %3995 = xor i8 %3994, 1
  store i8 %3995, i8* %21, align 1
  %3996 = xor i32 %3987, %3975
  %3997 = xor i32 %3996, %3988
  %3998 = lshr i32 %3997, 4
  %3999 = trunc i32 %3998 to i8
  %4000 = and i8 %3999, 1
  store i8 %4000, i8* %27, align 1
  %4001 = icmp eq i32 %3988, 0
  %4002 = zext i1 %4001 to i8
  store i8 %4002, i8* %30, align 1
  %4003 = lshr i32 %3988, 31
  %4004 = trunc i32 %4003 to i8
  store i8 %4004, i8* %33, align 1
  %4005 = lshr i32 %3975, 31
  %4006 = lshr i32 %3987, 31
  %4007 = xor i32 %4006, %4005
  %4008 = xor i32 %4003, %4005
  %4009 = add nuw nsw i32 %4008, %4007
  %4010 = icmp eq i32 %4009, 2
  %4011 = zext i1 %4010 to i8
  store i8 %4011, i8* %39, align 1
  %.v123 = select i1 %4001, i64 23, i64 1296
  %4012 = add i64 %3598, %.v123
  %4013 = add i64 %4012, 7
  store i64 %4013, i64* %PC.i, align 8
  br i1 %4001, label %block_4011ea, label %block_.L_4016e3

block_4011ea:                                     ; preds = %block_.L_4011d3
  store i32 1, i32* %3572, align 4
  %.pre46 = load i64, i64* %PC.i, align 8
  br label %block_.L_4011f1

block_.L_4011f1:                                  ; preds = %block_.L_401404, %block_4011ea
  %4014 = phi i64 [ %.pre46, %block_4011ea ], [ %4992, %block_.L_401404 ]
  %MEMORY.29 = phi %struct.Memory* [ %MEMORY.25, %block_4011ea ], [ %MEMORY.36, %block_.L_401404 ]
  %4015 = load i64, i64* %RBP.i, align 8
  %4016 = add i64 %4015, -4
  %4017 = add i64 %4014, 3
  store i64 %4017, i64* %PC.i, align 8
  %4018 = inttoptr i64 %4016 to i32*
  %4019 = load i32, i32* %4018, align 4
  %4020 = zext i32 %4019 to i64
  store i64 %4020, i64* %RAX.i1508, align 8
  %4021 = add i64 %4015, -12
  %4022 = add i64 %4014, 7
  store i64 %4022, i64* %PC.i, align 8
  %4023 = inttoptr i64 %4021 to i32*
  %4024 = load i32, i32* %4023, align 4
  %4025 = sext i32 %4024 to i64
  store i64 %4025, i64* %RCX.i2066, align 8
  %4026 = shl nsw i64 %4025, 2
  %4027 = add i64 %4015, -1328
  %4028 = add i64 %4027, %4026
  %4029 = add i64 %4014, 14
  store i64 %4029, i64* %PC.i, align 8
  %4030 = inttoptr i64 %4028 to i32*
  %4031 = load i32, i32* %4030, align 4
  %4032 = sub i32 %4019, %4031
  %4033 = icmp ult i32 %4019, %4031
  %4034 = zext i1 %4033 to i8
  store i8 %4034, i8* %14, align 1
  %4035 = and i32 %4032, 255
  %4036 = tail call i32 @llvm.ctpop.i32(i32 %4035)
  %4037 = trunc i32 %4036 to i8
  %4038 = and i8 %4037, 1
  %4039 = xor i8 %4038, 1
  store i8 %4039, i8* %21, align 1
  %4040 = xor i32 %4031, %4019
  %4041 = xor i32 %4040, %4032
  %4042 = lshr i32 %4041, 4
  %4043 = trunc i32 %4042 to i8
  %4044 = and i8 %4043, 1
  store i8 %4044, i8* %27, align 1
  %4045 = icmp eq i32 %4032, 0
  %4046 = zext i1 %4045 to i8
  store i8 %4046, i8* %30, align 1
  %4047 = lshr i32 %4032, 31
  %4048 = trunc i32 %4047 to i8
  store i8 %4048, i8* %33, align 1
  %4049 = lshr i32 %4019, 31
  %4050 = lshr i32 %4031, 31
  %4051 = xor i32 %4050, %4049
  %4052 = xor i32 %4047, %4049
  %4053 = add nuw nsw i32 %4052, %4051
  %4054 = icmp eq i32 %4053, 2
  %4055 = zext i1 %4054 to i8
  store i8 %4055, i8* %39, align 1
  %4056 = icmp ne i8 %4048, 0
  %4057 = xor i1 %4056, %4054
  %.demorgan124 = or i1 %4045, %4057
  %.v125 = select i1 %.demorgan124, i64 20, i64 575
  %4058 = add i64 %4014, %.v125
  store i64 %4058, i64* %3, align 8
  br i1 %.demorgan124, label %block_401205, label %block_.L_401430

block_401205:                                     ; preds = %block_.L_4011f1
  %4059 = add i64 %4058, 4
  store i64 %4059, i64* %PC.i, align 8
  %4060 = load i32, i32* %4018, align 4
  %4061 = sext i32 %4060 to i64
  store i64 %4061, i64* %RAX.i1508, align 8
  %4062 = shl nsw i64 %4061, 2
  %4063 = add i64 %4015, -1488
  %4064 = add i64 %4063, %4062
  %4065 = add i64 %4058, 12
  store i64 %4065, i64* %PC.i, align 8
  %4066 = inttoptr i64 %4064 to i32*
  %4067 = load i32, i32* %4066, align 4
  %4068 = add i32 %4067, 1
  %4069 = icmp ne i32 %4067, -1
  %4070 = zext i1 %4069 to i8
  store i8 %4070, i8* %14, align 1
  %4071 = and i32 %4068, 255
  %4072 = tail call i32 @llvm.ctpop.i32(i32 %4071)
  %4073 = trunc i32 %4072 to i8
  %4074 = and i8 %4073, 1
  %4075 = xor i8 %4074, 1
  store i8 %4075, i8* %21, align 1
  %4076 = xor i32 %4067, 16
  %4077 = xor i32 %4068, %4076
  %4078 = lshr i32 %4077, 4
  %4079 = trunc i32 %4078 to i8
  %4080 = and i8 %4079, 1
  store i8 %4080, i8* %27, align 1
  %4081 = icmp eq i32 %4068, 0
  %4082 = zext i1 %4081 to i8
  store i8 %4082, i8* %30, align 1
  %4083 = lshr i32 %4068, 31
  %4084 = trunc i32 %4083 to i8
  store i8 %4084, i8* %33, align 1
  %4085 = lshr i32 %4067, 31
  %4086 = xor i32 %4085, 1
  %4087 = xor i32 %4083, %4085
  %4088 = add nuw nsw i32 %4087, %4086
  %4089 = icmp eq i32 %4088, 2
  %4090 = zext i1 %4089 to i8
  store i8 %4090, i8* %39, align 1
  %.v126 = select i1 %4081, i64 118, i64 18
  %4091 = add i64 %4058, %.v126
  store i64 %4091, i64* %3, align 8
  br i1 %4081, label %block_.L_40127b, label %block_401217

block_401217:                                     ; preds = %block_401205
  %4092 = add i64 %4015, -1168
  store i64 %4092, i64* %RAX.i1508, align 8
  %4093 = add i64 %4091, 11
  store i64 %4093, i64* %PC.i, align 8
  %4094 = load i32, i32* %4023, align 4
  %4095 = sext i32 %4094 to i64
  %4096 = shl nsw i64 %4095, 6
  store i64 %4096, i64* %RCX.i2066, align 8
  %4097 = lshr i64 %4095, 57
  %4098 = and i64 %4097, 1
  %4099 = add i64 %4096, %4092
  store i64 %4099, i64* %RAX.i1508, align 8
  %4100 = icmp ult i64 %4099, %4092
  %4101 = icmp ult i64 %4099, %4096
  %4102 = or i1 %4100, %4101
  %4103 = zext i1 %4102 to i8
  store i8 %4103, i8* %14, align 1
  %4104 = trunc i64 %4099 to i32
  %4105 = and i32 %4104, 255
  %4106 = tail call i32 @llvm.ctpop.i32(i32 %4105)
  %4107 = trunc i32 %4106 to i8
  %4108 = and i8 %4107, 1
  %4109 = xor i8 %4108, 1
  store i8 %4109, i8* %21, align 1
  %4110 = xor i64 %4092, %4099
  %4111 = lshr i64 %4110, 4
  %4112 = trunc i64 %4111 to i8
  %4113 = and i8 %4112, 1
  store i8 %4113, i8* %27, align 1
  %4114 = icmp eq i64 %4099, 0
  %4115 = zext i1 %4114 to i8
  store i8 %4115, i8* %30, align 1
  %4116 = lshr i64 %4099, 63
  %4117 = trunc i64 %4116 to i8
  store i8 %4117, i8* %33, align 1
  %4118 = lshr i64 %4092, 63
  %4119 = xor i64 %4116, %4118
  %4120 = xor i64 %4116, %4098
  %4121 = add nuw nsw i64 %4119, %4120
  %4122 = icmp eq i64 %4121, 2
  %4123 = zext i1 %4122 to i8
  store i8 %4123, i8* %39, align 1
  %4124 = add i64 %4091, 22
  store i64 %4124, i64* %PC.i, align 8
  %4125 = load i32, i32* %4018, align 4
  %4126 = sext i32 %4125 to i64
  store i64 %4126, i64* %RCX.i2066, align 8
  %4127 = shl nsw i64 %4126, 2
  %4128 = add i64 %4127, %4099
  %4129 = add i64 %4091, 26
  store i64 %4129, i64* %PC.i, align 8
  %4130 = inttoptr i64 %4128 to i32*
  %4131 = load i32, i32* %4130, align 4
  %4132 = add i32 %4131, 1
  %4133 = icmp ne i32 %4131, -1
  %4134 = zext i1 %4133 to i8
  store i8 %4134, i8* %14, align 1
  %4135 = and i32 %4132, 255
  %4136 = tail call i32 @llvm.ctpop.i32(i32 %4135)
  %4137 = trunc i32 %4136 to i8
  %4138 = and i8 %4137, 1
  %4139 = xor i8 %4138, 1
  store i8 %4139, i8* %21, align 1
  %4140 = xor i32 %4131, 16
  %4141 = xor i32 %4132, %4140
  %4142 = lshr i32 %4141, 4
  %4143 = trunc i32 %4142 to i8
  %4144 = and i8 %4143, 1
  store i8 %4144, i8* %27, align 1
  %4145 = icmp eq i32 %4132, 0
  %4146 = zext i1 %4145 to i8
  store i8 %4146, i8* %30, align 1
  %4147 = lshr i32 %4132, 31
  %4148 = trunc i32 %4147 to i8
  store i8 %4148, i8* %33, align 1
  %4149 = lshr i32 %4131, 31
  %4150 = xor i32 %4149, 1
  %4151 = xor i32 %4147, %4149
  %4152 = add nuw nsw i32 %4151, %4150
  %4153 = icmp eq i32 %4152, 2
  %4154 = zext i1 %4153 to i8
  store i8 %4154, i8* %39, align 1
  %.v127 = select i1 %4145, i64 100, i64 32
  %4155 = add i64 %4091, %.v127
  store i64 %4155, i64* %3, align 8
  %.pre47 = load i64, i64* %RBP.i, align 8
  br i1 %4145, label %block_.L_40127b, label %block_401237

block_401237:                                     ; preds = %block_401217
  %4156 = add i64 %.pre47, -1168
  store i64 %4156, i64* %RAX.i1508, align 8
  %4157 = add i64 %.pre47, -4
  %4158 = add i64 %4155, 11
  store i64 %4158, i64* %PC.i, align 8
  %4159 = inttoptr i64 %4157 to i32*
  %4160 = load i32, i32* %4159, align 4
  %4161 = sext i32 %4160 to i64
  store i64 %4161, i64* %RCX.i2066, align 8
  %4162 = shl nsw i64 %4161, 2
  %4163 = add i64 %.pre47, -1488
  %4164 = add i64 %4163, %4162
  %4165 = add i64 %4155, 19
  store i64 %4165, i64* %PC.i, align 8
  %4166 = inttoptr i64 %4164 to i32*
  %4167 = load i32, i32* %4166, align 4
  %4168 = sext i32 %4167 to i64
  store i64 %4168, i64* %RCX.i2066, align 8
  %4169 = shl nsw i64 %4168, 2
  %4170 = add nsw i64 %4169, 6305920
  %4171 = add i64 %4155, 26
  store i64 %4171, i64* %PC.i, align 8
  %4172 = inttoptr i64 %4170 to i32*
  %4173 = load i32, i32* %4172, align 4
  %4174 = zext i32 %4173 to i64
  store i64 %4174, i64* %RDX.i2064, align 8
  %4175 = add i64 %.pre47, -12
  %4176 = add i64 %4155, 30
  store i64 %4176, i64* %PC.i, align 8
  %4177 = inttoptr i64 %4175 to i32*
  %4178 = load i32, i32* %4177, align 4
  %4179 = sext i32 %4178 to i64
  %4180 = shl nsw i64 %4179, 6
  store i64 %4180, i64* %RCX.i2066, align 8
  %4181 = lshr i64 %4179, 57
  %4182 = and i64 %4181, 1
  %4183 = add i64 %4180, %4156
  store i64 %4183, i64* %RAX.i1508, align 8
  %4184 = icmp ult i64 %4183, %4156
  %4185 = icmp ult i64 %4183, %4180
  %4186 = or i1 %4184, %4185
  %4187 = zext i1 %4186 to i8
  store i8 %4187, i8* %14, align 1
  %4188 = trunc i64 %4183 to i32
  %4189 = and i32 %4188, 255
  %4190 = tail call i32 @llvm.ctpop.i32(i32 %4189)
  %4191 = trunc i32 %4190 to i8
  %4192 = and i8 %4191, 1
  %4193 = xor i8 %4192, 1
  store i8 %4193, i8* %21, align 1
  %4194 = xor i64 %4156, %4183
  %4195 = lshr i64 %4194, 4
  %4196 = trunc i64 %4195 to i8
  %4197 = and i8 %4196, 1
  store i8 %4197, i8* %27, align 1
  %4198 = icmp eq i64 %4183, 0
  %4199 = zext i1 %4198 to i8
  store i8 %4199, i8* %30, align 1
  %4200 = lshr i64 %4183, 63
  %4201 = trunc i64 %4200 to i8
  store i8 %4201, i8* %33, align 1
  %4202 = lshr i64 %4156, 63
  %4203 = xor i64 %4200, %4202
  %4204 = xor i64 %4200, %4182
  %4205 = add nuw nsw i64 %4203, %4204
  %4206 = icmp eq i64 %4205, 2
  %4207 = zext i1 %4206 to i8
  store i8 %4207, i8* %39, align 1
  %4208 = add i64 %4155, 41
  store i64 %4208, i64* %PC.i, align 8
  %4209 = load i32, i32* %4159, align 4
  %4210 = sext i32 %4209 to i64
  store i64 %4210, i64* %RCX.i2066, align 8
  %4211 = shl nsw i64 %4210, 2
  %4212 = add i64 %4211, %4183
  %4213 = add i64 %4155, 45
  store i64 %4213, i64* %PC.i, align 8
  %4214 = inttoptr i64 %4212 to i32*
  %4215 = load i32, i32* %4214, align 4
  %4216 = sext i32 %4215 to i64
  store i64 %4216, i64* %RAX.i1508, align 8
  %4217 = shl nsw i64 %4216, 2
  %4218 = add nsw i64 %4217, 6305920
  %4219 = add i64 %4155, 52
  store i64 %4219, i64* %PC.i, align 8
  %4220 = inttoptr i64 %4218 to i32*
  %4221 = load i32, i32* %4220, align 4
  %4222 = xor i32 %4221, %4173
  %4223 = zext i32 %4222 to i64
  store i64 %4223, i64* %RDX.i2064, align 8
  store i8 0, i8* %14, align 1
  %4224 = and i32 %4222, 255
  %4225 = tail call i32 @llvm.ctpop.i32(i32 %4224)
  %4226 = trunc i32 %4225 to i8
  %4227 = and i8 %4226, 1
  %4228 = xor i8 %4227, 1
  store i8 %4228, i8* %21, align 1
  %4229 = icmp eq i32 %4222, 0
  %4230 = zext i1 %4229 to i8
  store i8 %4230, i8* %30, align 1
  %4231 = lshr i32 %4222, 31
  %4232 = trunc i32 %4231 to i8
  store i8 %4232, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %4233 = load i64, i64* %RBP.i, align 8
  %4234 = add i64 %4233, -4
  %4235 = add i64 %4155, 56
  store i64 %4235, i64* %PC.i, align 8
  %4236 = inttoptr i64 %4234 to i32*
  %4237 = load i32, i32* %4236, align 4
  %4238 = sext i32 %4237 to i64
  store i64 %4238, i64* %RAX.i1508, align 8
  %4239 = shl nsw i64 %4238, 2
  %4240 = add i64 %4233, -1616
  %4241 = add i64 %4240, %4239
  %4242 = add i64 %4155, 63
  store i64 %4242, i64* %PC.i, align 8
  %4243 = inttoptr i64 %4241 to i32*
  store i32 %4222, i32* %4243, align 4
  %4244 = load i64, i64* %PC.i, align 8
  %4245 = add i64 %4244, 214
  br label %block_.L_40134c

block_.L_40127b:                                  ; preds = %block_401217, %block_401205
  %4246 = phi i64 [ %4091, %block_401205 ], [ %4155, %block_401217 ]
  %4247 = phi i64 [ %4015, %block_401205 ], [ %.pre47, %block_401217 ]
  %4248 = add i64 %4247, -4
  %4249 = add i64 %4246, 4
  store i64 %4249, i64* %PC.i, align 8
  %4250 = inttoptr i64 %4248 to i32*
  %4251 = load i32, i32* %4250, align 4
  %4252 = sext i32 %4251 to i64
  store i64 %4252, i64* %RAX.i1508, align 8
  %4253 = shl nsw i64 %4252, 2
  %4254 = add i64 %4247, -1488
  %4255 = add i64 %4254, %4253
  %4256 = add i64 %4246, 12
  store i64 %4256, i64* %PC.i, align 8
  %4257 = inttoptr i64 %4255 to i32*
  %4258 = load i32, i32* %4257, align 4
  %4259 = add i32 %4258, 1
  %4260 = icmp ne i32 %4258, -1
  %4261 = zext i1 %4260 to i8
  store i8 %4261, i8* %14, align 1
  %4262 = and i32 %4259, 255
  %4263 = tail call i32 @llvm.ctpop.i32(i32 %4262)
  %4264 = trunc i32 %4263 to i8
  %4265 = and i8 %4264, 1
  %4266 = xor i8 %4265, 1
  store i8 %4266, i8* %21, align 1
  %4267 = xor i32 %4258, 16
  %4268 = xor i32 %4259, %4267
  %4269 = lshr i32 %4268, 4
  %4270 = trunc i32 %4269 to i8
  %4271 = and i8 %4270, 1
  store i8 %4271, i8* %27, align 1
  %4272 = icmp eq i32 %4259, 0
  %4273 = zext i1 %4272 to i8
  store i8 %4273, i8* %30, align 1
  %4274 = lshr i32 %4259, 31
  %4275 = trunc i32 %4274 to i8
  store i8 %4275, i8* %33, align 1
  %4276 = lshr i32 %4258, 31
  %4277 = xor i32 %4276, 1
  %4278 = xor i32 %4274, %4276
  %4279 = add nuw nsw i32 %4278, %4277
  %4280 = icmp eq i32 %4279, 2
  %4281 = zext i1 %4280 to i8
  store i8 %4281, i8* %39, align 1
  %.v131 = select i1 %4272, i64 85, i64 18
  %4282 = add i64 %4246, %.v131
  store i64 %4282, i64* %3, align 8
  br i1 %4272, label %block_.L_4012d0, label %block_40128d

block_40128d:                                     ; preds = %block_.L_40127b
  %4283 = add i64 %4247, -1168
  store i64 %4283, i64* %RAX.i1508, align 8
  %4284 = add i64 %4247, -12
  %4285 = add i64 %4282, 11
  store i64 %4285, i64* %PC.i, align 8
  %4286 = inttoptr i64 %4284 to i32*
  %4287 = load i32, i32* %4286, align 4
  %4288 = sext i32 %4287 to i64
  %4289 = shl nsw i64 %4288, 6
  store i64 %4289, i64* %RCX.i2066, align 8
  %4290 = lshr i64 %4288, 57
  %4291 = and i64 %4290, 1
  %4292 = add i64 %4289, %4283
  store i64 %4292, i64* %RAX.i1508, align 8
  %4293 = icmp ult i64 %4292, %4283
  %4294 = icmp ult i64 %4292, %4289
  %4295 = or i1 %4293, %4294
  %4296 = zext i1 %4295 to i8
  store i8 %4296, i8* %14, align 1
  %4297 = trunc i64 %4292 to i32
  %4298 = and i32 %4297, 255
  %4299 = tail call i32 @llvm.ctpop.i32(i32 %4298)
  %4300 = trunc i32 %4299 to i8
  %4301 = and i8 %4300, 1
  %4302 = xor i8 %4301, 1
  store i8 %4302, i8* %21, align 1
  %4303 = xor i64 %4283, %4292
  %4304 = lshr i64 %4303, 4
  %4305 = trunc i64 %4304 to i8
  %4306 = and i8 %4305, 1
  store i8 %4306, i8* %27, align 1
  %4307 = icmp eq i64 %4292, 0
  %4308 = zext i1 %4307 to i8
  store i8 %4308, i8* %30, align 1
  %4309 = lshr i64 %4292, 63
  %4310 = trunc i64 %4309 to i8
  store i8 %4310, i8* %33, align 1
  %4311 = lshr i64 %4283, 63
  %4312 = xor i64 %4309, %4311
  %4313 = xor i64 %4309, %4291
  %4314 = add nuw nsw i64 %4312, %4313
  %4315 = icmp eq i64 %4314, 2
  %4316 = zext i1 %4315 to i8
  store i8 %4316, i8* %39, align 1
  %4317 = add i64 %4282, 22
  store i64 %4317, i64* %PC.i, align 8
  %4318 = load i32, i32* %4250, align 4
  %4319 = sext i32 %4318 to i64
  store i64 %4319, i64* %RCX.i2066, align 8
  %4320 = shl nsw i64 %4319, 2
  %4321 = add i64 %4320, %4292
  %4322 = add i64 %4282, 26
  store i64 %4322, i64* %PC.i, align 8
  %4323 = inttoptr i64 %4321 to i32*
  %4324 = load i32, i32* %4323, align 4
  %4325 = add i32 %4324, 1
  %4326 = icmp ne i32 %4324, -1
  %4327 = zext i1 %4326 to i8
  store i8 %4327, i8* %14, align 1
  %4328 = and i32 %4325, 255
  %4329 = tail call i32 @llvm.ctpop.i32(i32 %4328)
  %4330 = trunc i32 %4329 to i8
  %4331 = and i8 %4330, 1
  %4332 = xor i8 %4331, 1
  store i8 %4332, i8* %21, align 1
  %4333 = xor i32 %4324, 16
  %4334 = xor i32 %4325, %4333
  %4335 = lshr i32 %4334, 4
  %4336 = trunc i32 %4335 to i8
  %4337 = and i8 %4336, 1
  store i8 %4337, i8* %27, align 1
  %4338 = icmp eq i32 %4325, 0
  %4339 = zext i1 %4338 to i8
  store i8 %4339, i8* %30, align 1
  %4340 = lshr i32 %4325, 31
  %4341 = trunc i32 %4340 to i8
  store i8 %4341, i8* %33, align 1
  %4342 = lshr i32 %4324, 31
  %4343 = xor i32 %4342, 1
  %4344 = xor i32 %4340, %4342
  %4345 = add nuw nsw i32 %4344, %4343
  %4346 = icmp eq i32 %4345, 2
  %4347 = zext i1 %4346 to i8
  store i8 %4347, i8* %39, align 1
  %.v132 = select i1 %4338, i64 32, i64 67
  %4348 = add i64 %4282, %.v132
  store i64 %4348, i64* %3, align 8
  %.pre48 = load i64, i64* %RBP.i, align 8
  br i1 %4338, label %block_4012ad, label %block_.L_4012d0

block_4012ad:                                     ; preds = %block_40128d
  %4349 = add i64 %.pre48, -4
  %4350 = add i64 %4348, 4
  store i64 %4350, i64* %PC.i, align 8
  %4351 = inttoptr i64 %4349 to i32*
  %4352 = load i32, i32* %4351, align 4
  %4353 = sext i32 %4352 to i64
  store i64 %4353, i64* %RAX.i1508, align 8
  %4354 = shl nsw i64 %4353, 2
  %4355 = add i64 %.pre48, -1488
  %4356 = add i64 %4355, %4354
  %4357 = add i64 %4348, 12
  store i64 %4357, i64* %PC.i, align 8
  %4358 = inttoptr i64 %4356 to i32*
  %4359 = load i32, i32* %4358, align 4
  %4360 = sext i32 %4359 to i64
  store i64 %4360, i64* %RAX.i1508, align 8
  %4361 = shl nsw i64 %4360, 2
  %4362 = add nsw i64 %4361, 6305920
  %4363 = add i64 %4348, 19
  store i64 %4363, i64* %PC.i, align 8
  %4364 = inttoptr i64 %4362 to i32*
  %4365 = load i32, i32* %4364, align 4
  %4366 = zext i32 %4365 to i64
  store i64 %4366, i64* %RCX.i2066, align 8
  %4367 = add i64 %4348, 23
  store i64 %4367, i64* %PC.i, align 8
  %4368 = load i32, i32* %4351, align 4
  %4369 = sext i32 %4368 to i64
  store i64 %4369, i64* %RAX.i1508, align 8
  %4370 = shl nsw i64 %4369, 2
  %4371 = add i64 %.pre48, -1616
  %4372 = add i64 %4371, %4370
  %4373 = add i64 %4348, 30
  store i64 %4373, i64* %PC.i, align 8
  %4374 = inttoptr i64 %4372 to i32*
  store i32 %4365, i32* %4374, align 4
  %4375 = load i64, i64* %PC.i, align 8
  %4376 = add i64 %4375, 124
  br label %block_.L_401347

block_.L_4012d0:                                  ; preds = %block_40128d, %block_.L_40127b
  %4377 = phi i64 [ %4282, %block_.L_40127b ], [ %4348, %block_40128d ]
  %4378 = phi i64 [ %4247, %block_.L_40127b ], [ %.pre48, %block_40128d ]
  %4379 = add i64 %4378, -4
  %4380 = add i64 %4377, 4
  store i64 %4380, i64* %PC.i, align 8
  %4381 = inttoptr i64 %4379 to i32*
  %4382 = load i32, i32* %4381, align 4
  %4383 = sext i32 %4382 to i64
  store i64 %4383, i64* %RAX.i1508, align 8
  %4384 = shl nsw i64 %4383, 2
  %4385 = add i64 %4378, -1488
  %4386 = add i64 %4385, %4384
  %4387 = add i64 %4377, 12
  store i64 %4387, i64* %PC.i, align 8
  %4388 = inttoptr i64 %4386 to i32*
  %4389 = load i32, i32* %4388, align 4
  %4390 = add i32 %4389, 1
  %4391 = icmp ne i32 %4389, -1
  %4392 = zext i1 %4391 to i8
  store i8 %4392, i8* %14, align 1
  %4393 = and i32 %4390, 255
  %4394 = tail call i32 @llvm.ctpop.i32(i32 %4393)
  %4395 = trunc i32 %4394 to i8
  %4396 = and i8 %4395, 1
  %4397 = xor i8 %4396, 1
  store i8 %4397, i8* %21, align 1
  %4398 = xor i32 %4389, 16
  %4399 = xor i32 %4390, %4398
  %4400 = lshr i32 %4399, 4
  %4401 = trunc i32 %4400 to i8
  %4402 = and i8 %4401, 1
  store i8 %4402, i8* %27, align 1
  %4403 = icmp eq i32 %4390, 0
  %4404 = zext i1 %4403 to i8
  store i8 %4404, i8* %30, align 1
  %4405 = lshr i32 %4390, 31
  %4406 = trunc i32 %4405 to i8
  store i8 %4406, i8* %33, align 1
  %4407 = lshr i32 %4389, 31
  %4408 = xor i32 %4407, 1
  %4409 = xor i32 %4405, %4407
  %4410 = add nuw nsw i32 %4409, %4408
  %4411 = icmp eq i32 %4410, 2
  %4412 = zext i1 %4411 to i8
  store i8 %4412, i8* %39, align 1
  %.v133 = select i1 %4403, i64 18, i64 99
  %4413 = add i64 %4377, %.v133
  store i64 %4413, i64* %3, align 8
  br i1 %4403, label %block_4012e2, label %block_.L_401333

block_4012e2:                                     ; preds = %block_.L_4012d0
  %4414 = add i64 %4378, -1168
  store i64 %4414, i64* %RAX.i1508, align 8
  %4415 = add i64 %4378, -12
  %4416 = add i64 %4413, 11
  store i64 %4416, i64* %PC.i, align 8
  %4417 = inttoptr i64 %4415 to i32*
  %4418 = load i32, i32* %4417, align 4
  %4419 = sext i32 %4418 to i64
  %4420 = shl nsw i64 %4419, 6
  store i64 %4420, i64* %RCX.i2066, align 8
  %4421 = lshr i64 %4419, 57
  %4422 = and i64 %4421, 1
  %4423 = add i64 %4420, %4414
  store i64 %4423, i64* %RAX.i1508, align 8
  %4424 = icmp ult i64 %4423, %4414
  %4425 = icmp ult i64 %4423, %4420
  %4426 = or i1 %4424, %4425
  %4427 = zext i1 %4426 to i8
  store i8 %4427, i8* %14, align 1
  %4428 = trunc i64 %4423 to i32
  %4429 = and i32 %4428, 255
  %4430 = tail call i32 @llvm.ctpop.i32(i32 %4429)
  %4431 = trunc i32 %4430 to i8
  %4432 = and i8 %4431, 1
  %4433 = xor i8 %4432, 1
  store i8 %4433, i8* %21, align 1
  %4434 = xor i64 %4414, %4423
  %4435 = lshr i64 %4434, 4
  %4436 = trunc i64 %4435 to i8
  %4437 = and i8 %4436, 1
  store i8 %4437, i8* %27, align 1
  %4438 = icmp eq i64 %4423, 0
  %4439 = zext i1 %4438 to i8
  store i8 %4439, i8* %30, align 1
  %4440 = lshr i64 %4423, 63
  %4441 = trunc i64 %4440 to i8
  store i8 %4441, i8* %33, align 1
  %4442 = lshr i64 %4414, 63
  %4443 = xor i64 %4440, %4442
  %4444 = xor i64 %4440, %4422
  %4445 = add nuw nsw i64 %4443, %4444
  %4446 = icmp eq i64 %4445, 2
  %4447 = zext i1 %4446 to i8
  store i8 %4447, i8* %39, align 1
  %4448 = add i64 %4413, 22
  store i64 %4448, i64* %PC.i, align 8
  %4449 = load i32, i32* %4381, align 4
  %4450 = sext i32 %4449 to i64
  store i64 %4450, i64* %RCX.i2066, align 8
  %4451 = shl nsw i64 %4450, 2
  %4452 = add i64 %4451, %4423
  %4453 = add i64 %4413, 26
  store i64 %4453, i64* %PC.i, align 8
  %4454 = inttoptr i64 %4452 to i32*
  %4455 = load i32, i32* %4454, align 4
  %4456 = add i32 %4455, 1
  %4457 = icmp ne i32 %4455, -1
  %4458 = zext i1 %4457 to i8
  store i8 %4458, i8* %14, align 1
  %4459 = and i32 %4456, 255
  %4460 = tail call i32 @llvm.ctpop.i32(i32 %4459)
  %4461 = trunc i32 %4460 to i8
  %4462 = and i8 %4461, 1
  %4463 = xor i8 %4462, 1
  store i8 %4463, i8* %21, align 1
  %4464 = xor i32 %4455, 16
  %4465 = xor i32 %4456, %4464
  %4466 = lshr i32 %4465, 4
  %4467 = trunc i32 %4466 to i8
  %4468 = and i8 %4467, 1
  store i8 %4468, i8* %27, align 1
  %4469 = icmp eq i32 %4456, 0
  %4470 = zext i1 %4469 to i8
  store i8 %4470, i8* %30, align 1
  %4471 = lshr i32 %4456, 31
  %4472 = trunc i32 %4471 to i8
  store i8 %4472, i8* %33, align 1
  %4473 = lshr i32 %4455, 31
  %4474 = xor i32 %4473, 1
  %4475 = xor i32 %4471, %4473
  %4476 = add nuw nsw i32 %4475, %4474
  %4477 = icmp eq i32 %4476, 2
  %4478 = zext i1 %4477 to i8
  store i8 %4478, i8* %39, align 1
  %.v134 = select i1 %4469, i64 81, i64 32
  %4479 = add i64 %4413, %.v134
  store i64 %4479, i64* %3, align 8
  %.pre49 = load i64, i64* %RBP.i, align 8
  br i1 %4469, label %block_.L_401333, label %block_401302

block_401302:                                     ; preds = %block_4012e2
  %4480 = add i64 %.pre49, -1168
  store i64 %4480, i64* %RAX.i1508, align 8
  %4481 = add i64 %.pre49, -12
  %4482 = add i64 %4479, 11
  store i64 %4482, i64* %PC.i, align 8
  %4483 = inttoptr i64 %4481 to i32*
  %4484 = load i32, i32* %4483, align 4
  %4485 = sext i32 %4484 to i64
  %4486 = shl nsw i64 %4485, 6
  store i64 %4486, i64* %RCX.i2066, align 8
  %4487 = lshr i64 %4485, 57
  %4488 = and i64 %4487, 1
  %4489 = add i64 %4486, %4480
  store i64 %4489, i64* %RAX.i1508, align 8
  %4490 = icmp ult i64 %4489, %4480
  %4491 = icmp ult i64 %4489, %4486
  %4492 = or i1 %4490, %4491
  %4493 = zext i1 %4492 to i8
  store i8 %4493, i8* %14, align 1
  %4494 = trunc i64 %4489 to i32
  %4495 = and i32 %4494, 255
  %4496 = tail call i32 @llvm.ctpop.i32(i32 %4495)
  %4497 = trunc i32 %4496 to i8
  %4498 = and i8 %4497, 1
  %4499 = xor i8 %4498, 1
  store i8 %4499, i8* %21, align 1
  %4500 = xor i64 %4480, %4489
  %4501 = lshr i64 %4500, 4
  %4502 = trunc i64 %4501 to i8
  %4503 = and i8 %4502, 1
  store i8 %4503, i8* %27, align 1
  %4504 = icmp eq i64 %4489, 0
  %4505 = zext i1 %4504 to i8
  store i8 %4505, i8* %30, align 1
  %4506 = lshr i64 %4489, 63
  %4507 = trunc i64 %4506 to i8
  store i8 %4507, i8* %33, align 1
  %4508 = lshr i64 %4480, 63
  %4509 = xor i64 %4506, %4508
  %4510 = xor i64 %4506, %4488
  %4511 = add nuw nsw i64 %4509, %4510
  %4512 = icmp eq i64 %4511, 2
  %4513 = zext i1 %4512 to i8
  store i8 %4513, i8* %39, align 1
  %4514 = add i64 %.pre49, -4
  %4515 = add i64 %4479, 22
  store i64 %4515, i64* %PC.i, align 8
  %4516 = inttoptr i64 %4514 to i32*
  %4517 = load i32, i32* %4516, align 4
  %4518 = sext i32 %4517 to i64
  store i64 %4518, i64* %RCX.i2066, align 8
  %4519 = shl nsw i64 %4518, 2
  %4520 = add i64 %4519, %4489
  %4521 = add i64 %4479, 26
  store i64 %4521, i64* %PC.i, align 8
  %4522 = inttoptr i64 %4520 to i32*
  %4523 = load i32, i32* %4522, align 4
  %4524 = sext i32 %4523 to i64
  store i64 %4524, i64* %RAX.i1508, align 8
  %4525 = shl nsw i64 %4524, 2
  %4526 = add nsw i64 %4525, 6305920
  %4527 = add i64 %4479, 33
  store i64 %4527, i64* %PC.i, align 8
  %4528 = inttoptr i64 %4526 to i32*
  %4529 = load i32, i32* %4528, align 4
  %4530 = zext i32 %4529 to i64
  store i64 %4530, i64* %RDX.i2064, align 8
  %4531 = add i64 %4479, 37
  store i64 %4531, i64* %PC.i, align 8
  %4532 = load i32, i32* %4516, align 4
  %4533 = sext i32 %4532 to i64
  store i64 %4533, i64* %RAX.i1508, align 8
  %4534 = shl nsw i64 %4533, 2
  %4535 = add i64 %.pre49, -1616
  %4536 = add i64 %4535, %4534
  %4537 = add i64 %4479, 44
  store i64 %4537, i64* %PC.i, align 8
  %4538 = inttoptr i64 %4536 to i32*
  store i32 %4529, i32* %4538, align 4
  %4539 = load i64, i64* %PC.i, align 8
  %4540 = add i64 %4539, 20
  store i64 %4540, i64* %3, align 8
  br label %block_.L_401342

block_.L_401333:                                  ; preds = %block_.L_4012d0, %block_4012e2
  %4541 = phi i64 [ %4413, %block_.L_4012d0 ], [ %4479, %block_4012e2 ]
  %4542 = phi i64 [ %4378, %block_.L_4012d0 ], [ %.pre49, %block_4012e2 ]
  %4543 = add i64 %4542, -4
  %4544 = add i64 %4541, 4
  store i64 %4544, i64* %PC.i, align 8
  %4545 = inttoptr i64 %4543 to i32*
  %4546 = load i32, i32* %4545, align 4
  %4547 = sext i32 %4546 to i64
  store i64 %4547, i64* %RAX.i1508, align 8
  %4548 = shl nsw i64 %4547, 2
  %4549 = add i64 %4542, -1616
  %4550 = add i64 %4549, %4548
  %4551 = add i64 %4541, 15
  store i64 %4551, i64* %PC.i, align 8
  %4552 = inttoptr i64 %4550 to i32*
  store i32 0, i32* %4552, align 4
  %.pre50 = load i64, i64* %PC.i, align 8
  br label %block_.L_401342

block_.L_401342:                                  ; preds = %block_.L_401333, %block_401302
  %4553 = phi i64 [ %.pre50, %block_.L_401333 ], [ %4540, %block_401302 ]
  %4554 = add i64 %4553, 5
  br label %block_.L_401347

block_.L_401347:                                  ; preds = %block_.L_401342, %block_4012ad
  %.sink87 = phi i64 [ %4554, %block_.L_401342 ], [ %4376, %block_4012ad ]
  store i64 %.sink87, i64* %3, align 8
  %4555 = add i64 %.sink87, 5
  br label %block_.L_40134c

block_.L_40134c:                                  ; preds = %block_.L_401347, %block_401237
  %.sink85 = phi i64 [ %4555, %block_.L_401347 ], [ %4245, %block_401237 ]
  %4556 = load i64, i64* %RBP.i, align 8
  %4557 = add i64 %4556, -8
  %4558 = add i64 %.sink85, 7
  store i64 %4558, i64* %PC.i, align 8
  %4559 = inttoptr i64 %4557 to i32*
  store i32 1, i32* %4559, align 4
  %.pre51 = load i64, i64* %PC.i, align 8
  br label %block_.L_401353

block_.L_401353:                                  ; preds = %block_.L_4013f1, %block_.L_40134c
  %4560 = phi i64 [ %.pre51, %block_.L_40134c ], [ %4937, %block_.L_4013f1 ]
  %MEMORY.36 = phi %struct.Memory* [ %MEMORY.29, %block_.L_40134c ], [ %MEMORY.37, %block_.L_4013f1 ]
  %4561 = load i64, i64* %RBP.i, align 8
  %4562 = add i64 %4561, -8
  %4563 = add i64 %4560, 3
  store i64 %4563, i64* %PC.i, align 8
  %4564 = inttoptr i64 %4562 to i32*
  %4565 = load i32, i32* %4564, align 4
  %4566 = zext i32 %4565 to i64
  store i64 %4566, i64* %RAX.i1508, align 8
  %4567 = add i64 %4561, -4
  %4568 = add i64 %4560, 6
  store i64 %4568, i64* %PC.i, align 8
  %4569 = inttoptr i64 %4567 to i32*
  %4570 = load i32, i32* %4569, align 4
  %4571 = sub i32 %4565, %4570
  %4572 = icmp ult i32 %4565, %4570
  %4573 = zext i1 %4572 to i8
  store i8 %4573, i8* %14, align 1
  %4574 = and i32 %4571, 255
  %4575 = tail call i32 @llvm.ctpop.i32(i32 %4574)
  %4576 = trunc i32 %4575 to i8
  %4577 = and i8 %4576, 1
  %4578 = xor i8 %4577, 1
  store i8 %4578, i8* %21, align 1
  %4579 = xor i32 %4570, %4565
  %4580 = xor i32 %4579, %4571
  %4581 = lshr i32 %4580, 4
  %4582 = trunc i32 %4581 to i8
  %4583 = and i8 %4582, 1
  store i8 %4583, i8* %27, align 1
  %4584 = icmp eq i32 %4571, 0
  %4585 = zext i1 %4584 to i8
  store i8 %4585, i8* %30, align 1
  %4586 = lshr i32 %4571, 31
  %4587 = trunc i32 %4586 to i8
  store i8 %4587, i8* %33, align 1
  %4588 = lshr i32 %4565, 31
  %4589 = lshr i32 %4570, 31
  %4590 = xor i32 %4589, %4588
  %4591 = xor i32 %4586, %4588
  %4592 = add nuw nsw i32 %4591, %4590
  %4593 = icmp eq i32 %4592, 2
  %4594 = zext i1 %4593 to i8
  store i8 %4594, i8* %39, align 1
  %4595 = icmp ne i8 %4587, 0
  %4596 = xor i1 %4595, %4593
  %.v128 = select i1 %4596, i64 12, i64 177
  %4597 = add i64 %4560, %.v128
  %4598 = add i64 %4597, 4
  store i64 %4598, i64* %PC.i, align 8
  br i1 %4596, label %block_40135f, label %block_.L_401404

block_40135f:                                     ; preds = %block_.L_401353
  %4599 = load i32, i32* %4564, align 4
  %4600 = sext i32 %4599 to i64
  store i64 %4600, i64* %RAX.i1508, align 8
  %4601 = shl nsw i64 %4600, 2
  %4602 = add i64 %4561, -1488
  %4603 = add i64 %4602, %4601
  %4604 = add i64 %4597, 12
  store i64 %4604, i64* %PC.i, align 8
  %4605 = inttoptr i64 %4603 to i32*
  %4606 = load i32, i32* %4605, align 4
  %4607 = add i32 %4606, 1
  %4608 = icmp ne i32 %4606, -1
  %4609 = zext i1 %4608 to i8
  store i8 %4609, i8* %14, align 1
  %4610 = and i32 %4607, 255
  %4611 = tail call i32 @llvm.ctpop.i32(i32 %4610)
  %4612 = trunc i32 %4611 to i8
  %4613 = and i8 %4612, 1
  %4614 = xor i8 %4613, 1
  store i8 %4614, i8* %21, align 1
  %4615 = xor i32 %4606, 16
  %4616 = xor i32 %4607, %4615
  %4617 = lshr i32 %4616, 4
  %4618 = trunc i32 %4617 to i8
  %4619 = and i8 %4618, 1
  store i8 %4619, i8* %27, align 1
  %4620 = icmp eq i32 %4607, 0
  %4621 = zext i1 %4620 to i8
  store i8 %4621, i8* %30, align 1
  %4622 = lshr i32 %4607, 31
  %4623 = trunc i32 %4622 to i8
  store i8 %4623, i8* %33, align 1
  %4624 = lshr i32 %4606, 31
  %4625 = xor i32 %4624, 1
  %4626 = xor i32 %4622, %4624
  %4627 = add nuw nsw i32 %4626, %4625
  %4628 = icmp eq i32 %4627, 2
  %4629 = zext i1 %4628 to i8
  store i8 %4629, i8* %39, align 1
  %.v129 = select i1 %4620, i64 146, i64 18
  %4630 = add i64 %4597, %.v129
  store i64 %4630, i64* %3, align 8
  br i1 %4620, label %block_.L_4013f1, label %block_401371

block_401371:                                     ; preds = %block_40135f
  %4631 = add i64 %4561, -1168
  store i64 %4631, i64* %RAX.i1508, align 8
  %4632 = add i64 %4561, -12
  %4633 = add i64 %4630, 11
  store i64 %4633, i64* %PC.i, align 8
  %4634 = inttoptr i64 %4632 to i32*
  %4635 = load i32, i32* %4634, align 4
  %4636 = sext i32 %4635 to i64
  %4637 = shl nsw i64 %4636, 6
  store i64 %4637, i64* %RCX.i2066, align 8
  %4638 = lshr i64 %4636, 57
  %4639 = and i64 %4638, 1
  %4640 = add i64 %4637, %4631
  store i64 %4640, i64* %RAX.i1508, align 8
  %4641 = icmp ult i64 %4640, %4631
  %4642 = icmp ult i64 %4640, %4637
  %4643 = or i1 %4641, %4642
  %4644 = zext i1 %4643 to i8
  store i8 %4644, i8* %14, align 1
  %4645 = trunc i64 %4640 to i32
  %4646 = and i32 %4645, 255
  %4647 = tail call i32 @llvm.ctpop.i32(i32 %4646)
  %4648 = trunc i32 %4647 to i8
  %4649 = and i8 %4648, 1
  %4650 = xor i8 %4649, 1
  store i8 %4650, i8* %21, align 1
  %4651 = xor i64 %4631, %4640
  %4652 = lshr i64 %4651, 4
  %4653 = trunc i64 %4652 to i8
  %4654 = and i8 %4653, 1
  store i8 %4654, i8* %27, align 1
  %4655 = icmp eq i64 %4640, 0
  %4656 = zext i1 %4655 to i8
  store i8 %4656, i8* %30, align 1
  %4657 = lshr i64 %4640, 63
  %4658 = trunc i64 %4657 to i8
  store i8 %4658, i8* %33, align 1
  %4659 = lshr i64 %4631, 63
  %4660 = xor i64 %4657, %4659
  %4661 = xor i64 %4657, %4639
  %4662 = add nuw nsw i64 %4660, %4661
  %4663 = icmp eq i64 %4662, 2
  %4664 = zext i1 %4663 to i8
  store i8 %4664, i8* %39, align 1
  %4665 = add i64 %4630, 21
  store i64 %4665, i64* %PC.i, align 8
  %4666 = load i32, i32* %4569, align 4
  %4667 = zext i32 %4666 to i64
  store i64 %4667, i64* %RDX.i2064, align 8
  %4668 = add i64 %4630, 24
  store i64 %4668, i64* %PC.i, align 8
  %4669 = load i32, i32* %4564, align 4
  %4670 = sub i32 %4666, %4669
  %4671 = zext i32 %4670 to i64
  store i64 %4671, i64* %RDX.i2064, align 8
  %4672 = icmp ult i32 %4666, %4669
  %4673 = zext i1 %4672 to i8
  store i8 %4673, i8* %14, align 1
  %4674 = and i32 %4670, 255
  %4675 = tail call i32 @llvm.ctpop.i32(i32 %4674)
  %4676 = trunc i32 %4675 to i8
  %4677 = and i8 %4676, 1
  %4678 = xor i8 %4677, 1
  store i8 %4678, i8* %21, align 1
  %4679 = xor i32 %4669, %4666
  %4680 = xor i32 %4679, %4670
  %4681 = lshr i32 %4680, 4
  %4682 = trunc i32 %4681 to i8
  %4683 = and i8 %4682, 1
  store i8 %4683, i8* %27, align 1
  %4684 = icmp eq i32 %4670, 0
  %4685 = zext i1 %4684 to i8
  store i8 %4685, i8* %30, align 1
  %4686 = lshr i32 %4670, 31
  %4687 = trunc i32 %4686 to i8
  store i8 %4687, i8* %33, align 1
  %4688 = lshr i32 %4666, 31
  %4689 = lshr i32 %4669, 31
  %4690 = xor i32 %4689, %4688
  %4691 = xor i32 %4686, %4688
  %4692 = add nuw nsw i32 %4691, %4690
  %4693 = icmp eq i32 %4692, 2
  %4694 = zext i1 %4693 to i8
  store i8 %4694, i8* %39, align 1
  %4695 = sext i32 %4670 to i64
  store i64 %4695, i64* %RCX.i2066, align 8
  %4696 = shl nsw i64 %4695, 2
  %4697 = add i64 %4696, %4640
  %4698 = add i64 %4630, 31
  store i64 %4698, i64* %PC.i, align 8
  %4699 = inttoptr i64 %4697 to i32*
  %4700 = load i32, i32* %4699, align 4
  %4701 = add i32 %4700, 1
  %4702 = icmp ne i32 %4700, -1
  %4703 = zext i1 %4702 to i8
  store i8 %4703, i8* %14, align 1
  %4704 = and i32 %4701, 255
  %4705 = tail call i32 @llvm.ctpop.i32(i32 %4704)
  %4706 = trunc i32 %4705 to i8
  %4707 = and i8 %4706, 1
  %4708 = xor i8 %4707, 1
  store i8 %4708, i8* %21, align 1
  %4709 = xor i32 %4700, 16
  %4710 = xor i32 %4701, %4709
  %4711 = lshr i32 %4710, 4
  %4712 = trunc i32 %4711 to i8
  %4713 = and i8 %4712, 1
  store i8 %4713, i8* %27, align 1
  %4714 = icmp eq i32 %4701, 0
  %4715 = zext i1 %4714 to i8
  store i8 %4715, i8* %30, align 1
  %4716 = lshr i32 %4701, 31
  %4717 = trunc i32 %4716 to i8
  store i8 %4717, i8* %33, align 1
  %4718 = lshr i32 %4700, 31
  %4719 = xor i32 %4718, 1
  %4720 = xor i32 %4716, %4718
  %4721 = add nuw nsw i32 %4720, %4719
  %4722 = icmp eq i32 %4721, 2
  %4723 = zext i1 %4722 to i8
  store i8 %4723, i8* %39, align 1
  %.v130 = select i1 %4714, i64 128, i64 37
  %4724 = add i64 %4630, %.v130
  store i64 %4724, i64* %3, align 8
  br i1 %4714, label %block_.L_4013f1, label %block_401396

block_401396:                                     ; preds = %block_401371
  store i64 255, i64* %RAX.i1508, align 8
  %4725 = load i64, i64* %RBP.i, align 8
  %4726 = add i64 %4725, -1168
  store i64 %4726, i64* %RCX.i2066, align 8
  %4727 = add i64 %4725, -12
  %4728 = add i64 %4724, 16
  store i64 %4728, i64* %PC.i, align 8
  %4729 = inttoptr i64 %4727 to i32*
  %4730 = load i32, i32* %4729, align 4
  %4731 = sext i32 %4730 to i64
  %4732 = shl nsw i64 %4731, 6
  store i64 %4732, i64* %RDX.i2064, align 8
  %4733 = lshr i64 %4731, 57
  %4734 = and i64 %4733, 1
  %4735 = add i64 %4732, %4726
  store i64 %4735, i64* %RCX.i2066, align 8
  %4736 = icmp ult i64 %4735, %4726
  %4737 = icmp ult i64 %4735, %4732
  %4738 = or i1 %4736, %4737
  %4739 = zext i1 %4738 to i8
  store i8 %4739, i8* %14, align 1
  %4740 = trunc i64 %4735 to i32
  %4741 = and i32 %4740, 255
  %4742 = tail call i32 @llvm.ctpop.i32(i32 %4741)
  %4743 = trunc i32 %4742 to i8
  %4744 = and i8 %4743, 1
  %4745 = xor i8 %4744, 1
  store i8 %4745, i8* %21, align 1
  %4746 = xor i64 %4726, %4735
  %4747 = lshr i64 %4746, 4
  %4748 = trunc i64 %4747 to i8
  %4749 = and i8 %4748, 1
  store i8 %4749, i8* %27, align 1
  %4750 = icmp eq i64 %4735, 0
  %4751 = zext i1 %4750 to i8
  store i8 %4751, i8* %30, align 1
  %4752 = lshr i64 %4735, 63
  %4753 = trunc i64 %4752 to i8
  store i8 %4753, i8* %33, align 1
  %4754 = lshr i64 %4726, 63
  %4755 = xor i64 %4752, %4754
  %4756 = xor i64 %4752, %4734
  %4757 = add nuw nsw i64 %4755, %4756
  %4758 = icmp eq i64 %4757, 2
  %4759 = zext i1 %4758 to i8
  store i8 %4759, i8* %39, align 1
  %4760 = add i64 %4725, -4
  %4761 = add i64 %4724, 26
  store i64 %4761, i64* %PC.i, align 8
  %4762 = inttoptr i64 %4760 to i32*
  %4763 = load i32, i32* %4762, align 4
  %4764 = zext i32 %4763 to i64
  store i64 %4764, i64* %RSI.i2060, align 8
  %4765 = add i64 %4725, -8
  %4766 = add i64 %4724, 29
  store i64 %4766, i64* %PC.i, align 8
  %4767 = inttoptr i64 %4765 to i32*
  %4768 = load i32, i32* %4767, align 4
  %4769 = sub i32 %4763, %4768
  %4770 = zext i32 %4769 to i64
  store i64 %4770, i64* %RSI.i2060, align 8
  %4771 = icmp ult i32 %4763, %4768
  %4772 = zext i1 %4771 to i8
  store i8 %4772, i8* %14, align 1
  %4773 = and i32 %4769, 255
  %4774 = tail call i32 @llvm.ctpop.i32(i32 %4773)
  %4775 = trunc i32 %4774 to i8
  %4776 = and i8 %4775, 1
  %4777 = xor i8 %4776, 1
  store i8 %4777, i8* %21, align 1
  %4778 = xor i32 %4768, %4763
  %4779 = xor i32 %4778, %4769
  %4780 = lshr i32 %4779, 4
  %4781 = trunc i32 %4780 to i8
  %4782 = and i8 %4781, 1
  store i8 %4782, i8* %27, align 1
  %4783 = icmp eq i32 %4769, 0
  %4784 = zext i1 %4783 to i8
  store i8 %4784, i8* %30, align 1
  %4785 = lshr i32 %4769, 31
  %4786 = trunc i32 %4785 to i8
  store i8 %4786, i8* %33, align 1
  %4787 = lshr i32 %4763, 31
  %4788 = lshr i32 %4768, 31
  %4789 = xor i32 %4788, %4787
  %4790 = xor i32 %4785, %4787
  %4791 = add nuw nsw i32 %4790, %4789
  %4792 = icmp eq i32 %4791, 2
  %4793 = zext i1 %4792 to i8
  store i8 %4793, i8* %39, align 1
  %4794 = sext i32 %4769 to i64
  store i64 %4794, i64* %RDX.i2064, align 8
  %4795 = shl nsw i64 %4794, 2
  %4796 = add i64 %4795, %4735
  %4797 = add i64 %4724, 35
  store i64 %4797, i64* %PC.i, align 8
  %4798 = inttoptr i64 %4796 to i32*
  %4799 = load i32, i32* %4798, align 4
  %4800 = zext i32 %4799 to i64
  store i64 %4800, i64* %RSI.i2060, align 8
  %4801 = load i64, i64* %RBP.i, align 8
  %4802 = add i64 %4801, -8
  %4803 = add i64 %4724, 39
  store i64 %4803, i64* %PC.i, align 8
  %4804 = inttoptr i64 %4802 to i32*
  %4805 = load i32, i32* %4804, align 4
  %4806 = sext i32 %4805 to i64
  store i64 %4806, i64* %RCX.i2066, align 8
  %4807 = shl nsw i64 %4806, 2
  %4808 = add i64 %4801, -1488
  %4809 = add i64 %4808, %4807
  %4810 = add i64 %4724, 46
  store i64 %4810, i64* %PC.i, align 8
  %4811 = inttoptr i64 %4809 to i32*
  %4812 = load i32, i32* %4811, align 4
  %4813 = add i32 %4812, %4799
  %4814 = zext i32 %4813 to i64
  store i64 %4814, i64* %RSI.i2060, align 8
  %4815 = icmp ult i32 %4813, %4799
  %4816 = icmp ult i32 %4813, %4812
  %4817 = or i1 %4815, %4816
  %4818 = zext i1 %4817 to i8
  store i8 %4818, i8* %14, align 1
  %4819 = and i32 %4813, 255
  %4820 = tail call i32 @llvm.ctpop.i32(i32 %4819)
  %4821 = trunc i32 %4820 to i8
  %4822 = and i8 %4821, 1
  %4823 = xor i8 %4822, 1
  store i8 %4823, i8* %21, align 1
  %4824 = xor i32 %4812, %4799
  %4825 = xor i32 %4824, %4813
  %4826 = lshr i32 %4825, 4
  %4827 = trunc i32 %4826 to i8
  %4828 = and i8 %4827, 1
  store i8 %4828, i8* %27, align 1
  %4829 = icmp eq i32 %4813, 0
  %4830 = zext i1 %4829 to i8
  store i8 %4830, i8* %30, align 1
  %4831 = lshr i32 %4813, 31
  %4832 = trunc i32 %4831 to i8
  store i8 %4832, i8* %33, align 1
  %4833 = lshr i32 %4799, 31
  %4834 = lshr i32 %4812, 31
  %4835 = xor i32 %4831, %4833
  %4836 = xor i32 %4831, %4834
  %4837 = add nuw nsw i32 %4835, %4836
  %4838 = icmp eq i32 %4837, 2
  %4839 = zext i1 %4838 to i8
  store i8 %4839, i8* %39, align 1
  %4840 = add i64 %4801, -2720
  %4841 = load i32, i32* %EAX.i2012, align 4
  %4842 = add i64 %4724, 52
  store i64 %4842, i64* %PC.i, align 8
  %4843 = inttoptr i64 %4840 to i32*
  store i32 %4841, i32* %4843, align 4
  %4844 = load i32, i32* %ESI.i2054, align 4
  %4845 = zext i32 %4844 to i64
  %4846 = load i64, i64* %PC.i, align 8
  store i64 %4845, i64* %RAX.i1508, align 8
  %4847 = sext i32 %4844 to i64
  %4848 = lshr i64 %4847, 32
  store i64 %4848, i64* %57, align 8
  %4849 = load i64, i64* %RBP.i, align 8
  %4850 = add i64 %4849, -2720
  %4851 = add i64 %4846, 9
  store i64 %4851, i64* %PC.i, align 8
  %4852 = inttoptr i64 %4850 to i32*
  %4853 = load i32, i32* %4852, align 4
  %4854 = zext i32 %4853 to i64
  store i64 %4854, i64* %RSI.i2060, align 8
  %4855 = add i64 %4846, 11
  store i64 %4855, i64* %PC.i, align 8
  %4856 = zext i32 %4844 to i64
  %4857 = sext i32 %4853 to i64
  %4858 = shl nuw i64 %4848, 32
  %4859 = or i64 %4858, %4856
  %4860 = sdiv i64 %4859, %4857
  %4861 = shl i64 %4860, 32
  %4862 = ashr exact i64 %4861, 32
  %4863 = icmp eq i64 %4860, %4862
  br i1 %4863, label %4866, label %4864

; <label>:4864:                                   ; preds = %block_401396
  %4865 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %4855, %struct.Memory* %MEMORY.36)
  %.pre52 = load i32, i32* %EDX.i2048, align 4
  %.pre53 = load i64, i64* %PC.i, align 8
  %.pre54 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__esi.exit545

; <label>:4866:                                   ; preds = %block_401396
  %4867 = srem i64 %4859, %4857
  %4868 = and i64 %4860, 4294967295
  store i64 %4868, i64* %58, align 8
  %4869 = and i64 %4867, 4294967295
  store i64 %4869, i64* %59, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %4870 = trunc i64 %4867 to i32
  br label %routine_idivl__esi.exit545

routine_idivl__esi.exit545:                       ; preds = %4866, %4864
  %4871 = phi i64 [ %.pre54, %4864 ], [ %4849, %4866 ]
  %4872 = phi i64 [ %.pre53, %4864 ], [ %4855, %4866 ]
  %4873 = phi i32 [ %.pre52, %4864 ], [ %4870, %4866 ]
  %4874 = phi %struct.Memory* [ %4865, %4864 ], [ %MEMORY.36, %4866 ]
  %4875 = sext i32 %4873 to i64
  store i64 %4875, i64* %RCX.i2066, align 8
  %4876 = shl nsw i64 %4875, 2
  %4877 = add nsw i64 %4876, 6305920
  %4878 = add i64 %4872, 10
  store i64 %4878, i64* %PC.i, align 8
  %4879 = inttoptr i64 %4877 to i32*
  %4880 = load i32, i32* %4879, align 4
  %4881 = zext i32 %4880 to i64
  store i64 %4881, i64* %RDX.i2064, align 8
  %4882 = add i64 %4871, -4
  %4883 = add i64 %4872, 14
  store i64 %4883, i64* %PC.i, align 8
  %4884 = inttoptr i64 %4882 to i32*
  %4885 = load i32, i32* %4884, align 4
  %4886 = sext i32 %4885 to i64
  store i64 %4886, i64* %RCX.i2066, align 8
  %4887 = shl nsw i64 %4886, 2
  %4888 = add i64 %4871, -1616
  %4889 = add i64 %4888, %4887
  %4890 = add i64 %4872, 21
  store i64 %4890, i64* %PC.i, align 8
  %4891 = inttoptr i64 %4889 to i32*
  %4892 = load i32, i32* %4891, align 4
  %4893 = xor i32 %4892, %4880
  %4894 = zext i32 %4893 to i64
  store i64 %4894, i64* %RDX.i2064, align 8
  store i8 0, i8* %14, align 1
  %4895 = and i32 %4893, 255
  %4896 = tail call i32 @llvm.ctpop.i32(i32 %4895)
  %4897 = trunc i32 %4896 to i8
  %4898 = and i8 %4897, 1
  %4899 = xor i8 %4898, 1
  store i8 %4899, i8* %21, align 1
  %4900 = icmp eq i32 %4893, 0
  %4901 = zext i1 %4900 to i8
  store i8 %4901, i8* %30, align 1
  %4902 = lshr i32 %4893, 31
  %4903 = trunc i32 %4902 to i8
  store i8 %4903, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %4904 = add i64 %4872, 28
  store i64 %4904, i64* %PC.i, align 8
  store i32 %4893, i32* %4891, align 4
  %.pre55 = load i64, i64* %PC.i, align 8
  br label %block_.L_4013f1

block_.L_4013f1:                                  ; preds = %routine_idivl__esi.exit545, %block_401371, %block_40135f
  %4905 = phi i64 [ %4630, %block_40135f ], [ %4724, %block_401371 ], [ %.pre55, %routine_idivl__esi.exit545 ]
  %MEMORY.37 = phi %struct.Memory* [ %MEMORY.36, %block_40135f ], [ %MEMORY.36, %block_401371 ], [ %4874, %routine_idivl__esi.exit545 ]
  %4906 = load i64, i64* %RBP.i, align 8
  %4907 = add i64 %4906, -8
  %4908 = add i64 %4905, 8
  store i64 %4908, i64* %PC.i, align 8
  %4909 = inttoptr i64 %4907 to i32*
  %4910 = load i32, i32* %4909, align 4
  %4911 = add i32 %4910, 1
  %4912 = zext i32 %4911 to i64
  store i64 %4912, i64* %RAX.i1508, align 8
  %4913 = icmp eq i32 %4910, -1
  %4914 = icmp eq i32 %4911, 0
  %4915 = or i1 %4913, %4914
  %4916 = zext i1 %4915 to i8
  store i8 %4916, i8* %14, align 1
  %4917 = and i32 %4911, 255
  %4918 = tail call i32 @llvm.ctpop.i32(i32 %4917)
  %4919 = trunc i32 %4918 to i8
  %4920 = and i8 %4919, 1
  %4921 = xor i8 %4920, 1
  store i8 %4921, i8* %21, align 1
  %4922 = xor i32 %4910, %4911
  %4923 = lshr i32 %4922, 4
  %4924 = trunc i32 %4923 to i8
  %4925 = and i8 %4924, 1
  store i8 %4925, i8* %27, align 1
  %4926 = icmp eq i32 %4911, 0
  %4927 = zext i1 %4926 to i8
  store i8 %4927, i8* %30, align 1
  %4928 = lshr i32 %4911, 31
  %4929 = trunc i32 %4928 to i8
  store i8 %4929, i8* %33, align 1
  %4930 = lshr i32 %4910, 31
  %4931 = xor i32 %4928, %4930
  %4932 = add nuw nsw i32 %4931, %4928
  %4933 = icmp eq i32 %4932, 2
  %4934 = zext i1 %4933 to i8
  store i8 %4934, i8* %39, align 1
  %4935 = add i64 %4905, 14
  store i64 %4935, i64* %PC.i, align 8
  store i32 %4911, i32* %4909, align 4
  %4936 = load i64, i64* %PC.i, align 8
  %4937 = add i64 %4936, -172
  store i64 %4937, i64* %3, align 8
  br label %block_.L_401353

block_.L_401404:                                  ; preds = %block_.L_401353
  %4938 = load i32, i32* %4569, align 4
  %4939 = sext i32 %4938 to i64
  store i64 %4939, i64* %RAX.i1508, align 8
  %4940 = shl nsw i64 %4939, 2
  %4941 = add i64 %4561, -1616
  %4942 = add i64 %4941, %4940
  %4943 = add i64 %4597, 12
  store i64 %4943, i64* %PC.i, align 8
  %4944 = inttoptr i64 %4942 to i32*
  %4945 = load i32, i32* %4944, align 4
  %4946 = sext i32 %4945 to i64
  store i64 %4946, i64* %RAX.i1508, align 8
  %4947 = shl nsw i64 %4946, 2
  %4948 = add nsw i64 %4947, 6304896
  %4949 = add i64 %4597, 19
  store i64 %4949, i64* %PC.i, align 8
  %4950 = inttoptr i64 %4948 to i32*
  %4951 = load i32, i32* %4950, align 4
  %4952 = zext i32 %4951 to i64
  store i64 %4952, i64* %RCX.i2066, align 8
  %4953 = add i64 %4597, 23
  store i64 %4953, i64* %PC.i, align 8
  %4954 = load i32, i32* %4569, align 4
  %4955 = sext i32 %4954 to i64
  store i64 %4955, i64* %RAX.i1508, align 8
  %4956 = shl nsw i64 %4955, 2
  %4957 = add i64 %4941, %4956
  %4958 = add i64 %4597, 30
  store i64 %4958, i64* %PC.i, align 8
  %4959 = inttoptr i64 %4957 to i32*
  store i32 %4951, i32* %4959, align 4
  %4960 = load i64, i64* %RBP.i, align 8
  %4961 = add i64 %4960, -4
  %4962 = load i64, i64* %PC.i, align 8
  %4963 = add i64 %4962, 3
  store i64 %4963, i64* %PC.i, align 8
  %4964 = inttoptr i64 %4961 to i32*
  %4965 = load i32, i32* %4964, align 4
  %4966 = add i32 %4965, 1
  %4967 = zext i32 %4966 to i64
  store i64 %4967, i64* %RAX.i1508, align 8
  %4968 = icmp eq i32 %4965, -1
  %4969 = icmp eq i32 %4966, 0
  %4970 = or i1 %4968, %4969
  %4971 = zext i1 %4970 to i8
  store i8 %4971, i8* %14, align 1
  %4972 = and i32 %4966, 255
  %4973 = tail call i32 @llvm.ctpop.i32(i32 %4972)
  %4974 = trunc i32 %4973 to i8
  %4975 = and i8 %4974, 1
  %4976 = xor i8 %4975, 1
  store i8 %4976, i8* %21, align 1
  %4977 = xor i32 %4965, %4966
  %4978 = lshr i32 %4977, 4
  %4979 = trunc i32 %4978 to i8
  %4980 = and i8 %4979, 1
  store i8 %4980, i8* %27, align 1
  %4981 = icmp eq i32 %4966, 0
  %4982 = zext i1 %4981 to i8
  store i8 %4982, i8* %30, align 1
  %4983 = lshr i32 %4966, 31
  %4984 = trunc i32 %4983 to i8
  store i8 %4984, i8* %33, align 1
  %4985 = lshr i32 %4965, 31
  %4986 = xor i32 %4983, %4985
  %4987 = add nuw nsw i32 %4986, %4983
  %4988 = icmp eq i32 %4987, 2
  %4989 = zext i1 %4988 to i8
  store i8 %4989, i8* %39, align 1
  %4990 = add i64 %4962, 9
  store i64 %4990, i64* %PC.i, align 8
  store i32 %4966, i32* %4964, align 4
  %4991 = load i64, i64* %PC.i, align 8
  %4992 = add i64 %4991, -570
  store i64 %4992, i64* %3, align 8
  br label %block_.L_4011f1

block_.L_401430:                                  ; preds = %block_.L_4011f1
  %4993 = add i64 %4058, 7
  store i64 %4993, i64* %PC.i, align 8
  store i32 0, i32* %4018, align 4
  %.pre56 = load i64, i64* %PC.i, align 8
  br label %block_.L_401437

block_.L_401437:                                  ; preds = %block_.L_401497, %block_.L_401430
  %4994 = phi i64 [ %5127, %block_.L_401497 ], [ %.pre56, %block_.L_401430 ]
  %4995 = load i64, i64* %RBP.i, align 8
  %4996 = add i64 %4995, -4
  %4997 = add i64 %4994, 7
  store i64 %4997, i64* %PC.i, align 8
  %4998 = inttoptr i64 %4996 to i32*
  %4999 = load i32, i32* %4998, align 4
  %5000 = add i32 %4999, -255
  %5001 = icmp ult i32 %4999, 255
  %5002 = zext i1 %5001 to i8
  store i8 %5002, i8* %14, align 1
  %5003 = and i32 %5000, 255
  %5004 = tail call i32 @llvm.ctpop.i32(i32 %5003)
  %5005 = trunc i32 %5004 to i8
  %5006 = and i8 %5005, 1
  %5007 = xor i8 %5006, 1
  store i8 %5007, i8* %21, align 1
  %5008 = xor i32 %4999, 16
  %5009 = xor i32 %5008, %5000
  %5010 = lshr i32 %5009, 4
  %5011 = trunc i32 %5010 to i8
  %5012 = and i8 %5011, 1
  store i8 %5012, i8* %27, align 1
  %5013 = icmp eq i32 %5000, 0
  %5014 = zext i1 %5013 to i8
  store i8 %5014, i8* %30, align 1
  %5015 = lshr i32 %5000, 31
  %5016 = trunc i32 %5015 to i8
  store i8 %5016, i8* %33, align 1
  %5017 = lshr i32 %4999, 31
  %5018 = xor i32 %5015, %5017
  %5019 = add nuw nsw i32 %5018, %5017
  %5020 = icmp eq i32 %5019, 2
  %5021 = zext i1 %5020 to i8
  store i8 %5021, i8* %39, align 1
  %5022 = icmp ne i8 %5016, 0
  %5023 = xor i1 %5022, %5020
  %.v135 = select i1 %5023, i64 13, i64 115
  %5024 = add i64 %4994, %.v135
  store i64 %5024, i64* %3, align 8
  br i1 %5023, label %block_401444, label %block_.L_4014aa

block_401444:                                     ; preds = %block_.L_401437
  %5025 = add i64 %5024, 4
  store i64 %5025, i64* %PC.i, align 8
  %5026 = load i32, i32* %4998, align 4
  %5027 = sext i32 %5026 to i64
  store i64 %5027, i64* %RAX.i1508, align 8
  %5028 = shl nsw i64 %5027, 2
  %5029 = add i64 %4995, -2640
  %5030 = add i64 %5029, %5028
  %5031 = add i64 %5024, 15
  store i64 %5031, i64* %PC.i, align 8
  %5032 = inttoptr i64 %5030 to i32*
  store i32 0, i32* %5032, align 4
  %5033 = load i64, i64* %RBP.i, align 8
  %5034 = add i64 %5033, -4
  %5035 = load i64, i64* %PC.i, align 8
  %5036 = add i64 %5035, 4
  store i64 %5036, i64* %PC.i, align 8
  %5037 = inttoptr i64 %5034 to i32*
  %5038 = load i32, i32* %5037, align 4
  %5039 = sext i32 %5038 to i64
  store i64 %5039, i64* %RAX.i1508, align 8
  %5040 = shl nsw i64 %5039, 2
  %5041 = add nsw i64 %5040, 6303872
  %5042 = add i64 %5035, 12
  store i64 %5042, i64* %PC.i, align 8
  %5043 = inttoptr i64 %5041 to i32*
  %5044 = load i32, i32* %5043, align 4
  %5045 = add i32 %5044, 1
  %5046 = icmp ne i32 %5044, -1
  %5047 = zext i1 %5046 to i8
  store i8 %5047, i8* %14, align 1
  %5048 = and i32 %5045, 255
  %5049 = tail call i32 @llvm.ctpop.i32(i32 %5048)
  %5050 = trunc i32 %5049 to i8
  %5051 = and i8 %5050, 1
  %5052 = xor i8 %5051, 1
  store i8 %5052, i8* %21, align 1
  %5053 = xor i32 %5044, 16
  %5054 = xor i32 %5045, %5053
  %5055 = lshr i32 %5054, 4
  %5056 = trunc i32 %5055 to i8
  %5057 = and i8 %5056, 1
  store i8 %5057, i8* %27, align 1
  %5058 = icmp eq i32 %5045, 0
  %5059 = zext i1 %5058 to i8
  store i8 %5059, i8* %30, align 1
  %5060 = lshr i32 %5045, 31
  %5061 = trunc i32 %5060 to i8
  store i8 %5061, i8* %33, align 1
  %5062 = lshr i32 %5044, 31
  %5063 = xor i32 %5062, 1
  %5064 = xor i32 %5060, %5062
  %5065 = add nuw nsw i32 %5064, %5063
  %5066 = icmp eq i32 %5065, 2
  %5067 = zext i1 %5066 to i8
  store i8 %5067, i8* %39, align 1
  %.v136 = select i1 %5058, i64 53, i64 18
  %5068 = add i64 %5035, %.v136
  %5069 = add i64 %5068, 4
  store i64 %5069, i64* %PC.i, align 8
  %5070 = load i32, i32* %5037, align 4
  %5071 = sext i32 %5070 to i64
  store i64 %5071, i64* %RAX.i1508, align 8
  %5072 = shl nsw i64 %5071, 2
  %5073 = add nsw i64 %5072, 6303872
  br i1 %5058, label %block_.L_401488, label %block_401465

block_401465:                                     ; preds = %block_401444
  %5074 = add i64 %5068, 12
  store i64 %5074, i64* %PC.i, align 8
  %5075 = inttoptr i64 %5073 to i32*
  %5076 = load i32, i32* %5075, align 4
  %5077 = sext i32 %5076 to i64
  store i64 %5077, i64* %RAX.i1508, align 8
  %5078 = shl nsw i64 %5077, 2
  %5079 = add nsw i64 %5078, 6305920
  %5080 = add i64 %5068, 19
  store i64 %5080, i64* %PC.i, align 8
  %5081 = inttoptr i64 %5079 to i32*
  %5082 = load i32, i32* %5081, align 4
  %5083 = zext i32 %5082 to i64
  store i64 %5083, i64* %RCX.i2066, align 8
  %5084 = add i64 %5068, 23
  store i64 %5084, i64* %PC.i, align 8
  %5085 = load i32, i32* %5037, align 4
  %5086 = sext i32 %5085 to i64
  store i64 %5086, i64* %RAX.i1508, align 8
  %5087 = shl nsw i64 %5086, 2
  %5088 = add nsw i64 %5087, 6303872
  %5089 = add i64 %5068, 30
  store i64 %5089, i64* %PC.i, align 8
  %5090 = inttoptr i64 %5088 to i32*
  store i32 %5082, i32* %5090, align 4
  %5091 = load i64, i64* %PC.i, align 8
  %5092 = add i64 %5091, 20
  store i64 %5092, i64* %3, align 8
  br label %block_.L_401497

block_.L_401488:                                  ; preds = %block_401444
  %5093 = add i64 %5068, 15
  store i64 %5093, i64* %PC.i, align 8
  %5094 = inttoptr i64 %5073 to i32*
  store i32 0, i32* %5094, align 4
  %.pre57 = load i64, i64* %PC.i, align 8
  br label %block_.L_401497

block_.L_401497:                                  ; preds = %block_.L_401488, %block_401465
  %5095 = phi i64 [ %.pre57, %block_.L_401488 ], [ %5092, %block_401465 ]
  %5096 = load i64, i64* %RBP.i, align 8
  %5097 = add i64 %5096, -4
  %5098 = add i64 %5095, 8
  store i64 %5098, i64* %PC.i, align 8
  %5099 = inttoptr i64 %5097 to i32*
  %5100 = load i32, i32* %5099, align 4
  %5101 = add i32 %5100, 1
  %5102 = zext i32 %5101 to i64
  store i64 %5102, i64* %RAX.i1508, align 8
  %5103 = icmp eq i32 %5100, -1
  %5104 = icmp eq i32 %5101, 0
  %5105 = or i1 %5103, %5104
  %5106 = zext i1 %5105 to i8
  store i8 %5106, i8* %14, align 1
  %5107 = and i32 %5101, 255
  %5108 = tail call i32 @llvm.ctpop.i32(i32 %5107)
  %5109 = trunc i32 %5108 to i8
  %5110 = and i8 %5109, 1
  %5111 = xor i8 %5110, 1
  store i8 %5111, i8* %21, align 1
  %5112 = xor i32 %5100, %5101
  %5113 = lshr i32 %5112, 4
  %5114 = trunc i32 %5113 to i8
  %5115 = and i8 %5114, 1
  store i8 %5115, i8* %27, align 1
  %5116 = icmp eq i32 %5101, 0
  %5117 = zext i1 %5116 to i8
  store i8 %5117, i8* %30, align 1
  %5118 = lshr i32 %5101, 31
  %5119 = trunc i32 %5118 to i8
  store i8 %5119, i8* %33, align 1
  %5120 = lshr i32 %5100, 31
  %5121 = xor i32 %5118, %5120
  %5122 = add nuw nsw i32 %5121, %5118
  %5123 = icmp eq i32 %5122, 2
  %5124 = zext i1 %5123 to i8
  store i8 %5124, i8* %39, align 1
  %5125 = add i64 %5095, 14
  store i64 %5125, i64* %PC.i, align 8
  store i32 %5101, i32* %5099, align 4
  %5126 = load i64, i64* %PC.i, align 8
  %5127 = add i64 %5126, -110
  store i64 %5127, i64* %3, align 8
  br label %block_.L_401437

block_.L_4014aa:                                  ; preds = %block_.L_401437
  %5128 = add i64 %5024, 7
  store i64 %5128, i64* %PC.i, align 8
  store i32 0, i32* %4998, align 4
  %.pre58 = load i64, i64* %PC.i, align 8
  br label %block_.L_4014b1

block_.L_4014b1:                                  ; preds = %block_.L_4016cb, %block_.L_4014aa
  %5129 = phi i64 [ %.pre58, %block_.L_4014aa ], [ %5967, %block_.L_4016cb ]
  %MEMORY.40 = phi %struct.Memory* [ %MEMORY.29, %block_.L_4014aa ], [ %MEMORY.45, %block_.L_4016cb ]
  %5130 = load i64, i64* %RBP.i, align 8
  %5131 = add i64 %5130, -4
  %5132 = add i64 %5129, 3
  store i64 %5132, i64* %PC.i, align 8
  %5133 = inttoptr i64 %5131 to i32*
  %5134 = load i32, i32* %5133, align 4
  %5135 = zext i32 %5134 to i64
  store i64 %5135, i64* %RAX.i1508, align 8
  %5136 = add i64 %5130, -12
  %5137 = add i64 %5129, 7
  store i64 %5137, i64* %PC.i, align 8
  %5138 = inttoptr i64 %5136 to i32*
  %5139 = load i32, i32* %5138, align 4
  %5140 = sext i32 %5139 to i64
  store i64 %5140, i64* %RCX.i2066, align 8
  %5141 = shl nsw i64 %5140, 2
  %5142 = add i64 %5130, -1328
  %5143 = add i64 %5142, %5141
  %5144 = add i64 %5129, 14
  store i64 %5144, i64* %PC.i, align 8
  %5145 = inttoptr i64 %5143 to i32*
  %5146 = load i32, i32* %5145, align 4
  %5147 = sub i32 %5134, %5146
  %5148 = icmp ult i32 %5134, %5146
  %5149 = zext i1 %5148 to i8
  store i8 %5149, i8* %14, align 1
  %5150 = and i32 %5147, 255
  %5151 = tail call i32 @llvm.ctpop.i32(i32 %5150)
  %5152 = trunc i32 %5151 to i8
  %5153 = and i8 %5152, 1
  %5154 = xor i8 %5153, 1
  store i8 %5154, i8* %21, align 1
  %5155 = xor i32 %5146, %5134
  %5156 = xor i32 %5155, %5147
  %5157 = lshr i32 %5156, 4
  %5158 = trunc i32 %5157 to i8
  %5159 = and i8 %5158, 1
  store i8 %5159, i8* %27, align 1
  %5160 = icmp eq i32 %5147, 0
  %5161 = zext i1 %5160 to i8
  store i8 %5161, i8* %30, align 1
  %5162 = lshr i32 %5147, 31
  %5163 = trunc i32 %5162 to i8
  store i8 %5163, i8* %33, align 1
  %5164 = lshr i32 %5134, 31
  %5165 = lshr i32 %5146, 31
  %5166 = xor i32 %5165, %5164
  %5167 = xor i32 %5162, %5164
  %5168 = add nuw nsw i32 %5167, %5166
  %5169 = icmp eq i32 %5168, 2
  %5170 = zext i1 %5169 to i8
  store i8 %5170, i8* %39, align 1
  %5171 = icmp ne i8 %5163, 0
  %5172 = xor i1 %5171, %5169
  %.v137 = select i1 %5172, i64 20, i64 557
  %5173 = add i64 %5129, %.v137
  store i64 %5173, i64* %3, align 8
  br i1 %5172, label %block_4014c5, label %block_.L_4016de

block_4014c5:                                     ; preds = %block_.L_4014b1
  %5174 = add i64 %5173, 4
  store i64 %5174, i64* %PC.i, align 8
  %5175 = load i32, i32* %5133, align 4
  %5176 = sext i32 %5175 to i64
  store i64 %5176, i64* %RAX.i1508, align 8
  %5177 = shl nsw i64 %5176, 2
  %5178 = add i64 %5130, -1568
  %5179 = add i64 %5178, %5177
  %5180 = add i64 %5173, 12
  store i64 %5180, i64* %PC.i, align 8
  %5181 = inttoptr i64 %5179 to i32*
  %5182 = load i32, i32* %5181, align 4
  %5183 = sext i32 %5182 to i64
  store i64 %5183, i64* %RAX.i1508, align 8
  %5184 = shl nsw i64 %5183, 2
  %5185 = add i64 %5130, -2640
  %5186 = add i64 %5185, %5184
  %5187 = add i64 %5173, 23
  store i64 %5187, i64* %PC.i, align 8
  %5188 = inttoptr i64 %5186 to i32*
  store i32 1, i32* %5188, align 4
  %5189 = load i64, i64* %RBP.i, align 8
  %5190 = add i64 %5189, -8
  %5191 = load i64, i64* %PC.i, align 8
  %5192 = add i64 %5191, 7
  store i64 %5192, i64* %PC.i, align 8
  %5193 = inttoptr i64 %5190 to i32*
  store i32 1, i32* %5193, align 4
  %.pre59 = load i64, i64* %PC.i, align 8
  br label %block_.L_4014e3

block_.L_4014e3:                                  ; preds = %block_.L_40155f, %block_4014c5
  %5194 = phi i64 [ %.pre59, %block_4014c5 ], [ %5431, %block_.L_40155f ]
  %MEMORY.41 = phi %struct.Memory* [ %MEMORY.40, %block_4014c5 ], [ %MEMORY.42, %block_.L_40155f ]
  %5195 = load i64, i64* %RBP.i, align 8
  %5196 = add i64 %5195, -8
  %5197 = add i64 %5194, 3
  store i64 %5197, i64* %PC.i, align 8
  %5198 = inttoptr i64 %5196 to i32*
  %5199 = load i32, i32* %5198, align 4
  %5200 = zext i32 %5199 to i64
  store i64 %5200, i64* %RAX.i1508, align 8
  %5201 = add i64 %5195, -12
  %5202 = add i64 %5194, 7
  store i64 %5202, i64* %PC.i, align 8
  %5203 = inttoptr i64 %5201 to i32*
  %5204 = load i32, i32* %5203, align 4
  %5205 = sext i32 %5204 to i64
  store i64 %5205, i64* %RCX.i2066, align 8
  %5206 = shl nsw i64 %5205, 2
  %5207 = add i64 %5195, -1328
  %5208 = add i64 %5207, %5206
  %5209 = add i64 %5194, 14
  store i64 %5209, i64* %PC.i, align 8
  %5210 = inttoptr i64 %5208 to i32*
  %5211 = load i32, i32* %5210, align 4
  %5212 = sub i32 %5199, %5211
  %5213 = icmp ult i32 %5199, %5211
  %5214 = zext i1 %5213 to i8
  store i8 %5214, i8* %14, align 1
  %5215 = and i32 %5212, 255
  %5216 = tail call i32 @llvm.ctpop.i32(i32 %5215)
  %5217 = trunc i32 %5216 to i8
  %5218 = and i8 %5217, 1
  %5219 = xor i8 %5218, 1
  store i8 %5219, i8* %21, align 1
  %5220 = xor i32 %5211, %5199
  %5221 = xor i32 %5220, %5212
  %5222 = lshr i32 %5221, 4
  %5223 = trunc i32 %5222 to i8
  %5224 = and i8 %5223, 1
  store i8 %5224, i8* %27, align 1
  %5225 = icmp eq i32 %5212, 0
  %5226 = zext i1 %5225 to i8
  store i8 %5226, i8* %30, align 1
  %5227 = lshr i32 %5212, 31
  %5228 = trunc i32 %5227 to i8
  store i8 %5228, i8* %33, align 1
  %5229 = lshr i32 %5199, 31
  %5230 = lshr i32 %5211, 31
  %5231 = xor i32 %5230, %5229
  %5232 = xor i32 %5227, %5229
  %5233 = add nuw nsw i32 %5232, %5231
  %5234 = icmp eq i32 %5233, 2
  %5235 = zext i1 %5234 to i8
  store i8 %5235, i8* %39, align 1
  %5236 = icmp ne i8 %5228, 0
  %5237 = xor i1 %5236, %5234
  %.demorgan138 = or i1 %5225, %5237
  %.v139 = select i1 %.demorgan138, i64 20, i64 143
  %5238 = add i64 %5194, %.v139
  store i64 %5238, i64* %3, align 8
  br i1 %.demorgan138, label %block_4014f7, label %block_.L_401572

block_4014f7:                                     ; preds = %block_.L_4014e3
  %5239 = add i64 %5238, 4
  store i64 %5239, i64* %PC.i, align 8
  %5240 = load i32, i32* %5198, align 4
  %5241 = sext i32 %5240 to i64
  store i64 %5241, i64* %RAX.i1508, align 8
  %5242 = shl nsw i64 %5241, 2
  %5243 = add i64 %5195, -1616
  %5244 = add i64 %5243, %5242
  %5245 = add i64 %5238, 12
  store i64 %5245, i64* %PC.i, align 8
  %5246 = inttoptr i64 %5244 to i32*
  %5247 = load i32, i32* %5246, align 4
  %5248 = add i32 %5247, 1
  %5249 = icmp ne i32 %5247, -1
  %5250 = zext i1 %5249 to i8
  store i8 %5250, i8* %14, align 1
  %5251 = and i32 %5248, 255
  %5252 = tail call i32 @llvm.ctpop.i32(i32 %5251)
  %5253 = trunc i32 %5252 to i8
  %5254 = and i8 %5253, 1
  %5255 = xor i8 %5254, 1
  store i8 %5255, i8* %21, align 1
  %5256 = xor i32 %5247, 16
  %5257 = xor i32 %5248, %5256
  %5258 = lshr i32 %5257, 4
  %5259 = trunc i32 %5258 to i8
  %5260 = and i8 %5259, 1
  store i8 %5260, i8* %27, align 1
  %5261 = icmp eq i32 %5248, 0
  %5262 = zext i1 %5261 to i8
  store i8 %5262, i8* %30, align 1
  %5263 = lshr i32 %5248, 31
  %5264 = trunc i32 %5263 to i8
  store i8 %5264, i8* %33, align 1
  %5265 = lshr i32 %5247, 31
  %5266 = xor i32 %5265, 1
  %5267 = xor i32 %5263, %5265
  %5268 = add nuw nsw i32 %5267, %5266
  %5269 = icmp eq i32 %5268, 2
  %5270 = zext i1 %5269 to i8
  store i8 %5270, i8* %39, align 1
  %.v140 = select i1 %5261, i64 104, i64 18
  %5271 = add i64 %5238, %.v140
  store i64 %5271, i64* %3, align 8
  br i1 %5261, label %block_.L_40155f, label %block_401509

block_401509:                                     ; preds = %block_4014f7
  store i64 255, i64* %RAX.i1508, align 8
  %5272 = add i64 %5271, 9
  store i64 %5272, i64* %PC.i, align 8
  %5273 = load i32, i32* %5198, align 4
  %5274 = sext i32 %5273 to i64
  store i64 %5274, i64* %RCX.i2066, align 8
  %5275 = shl nsw i64 %5274, 2
  %5276 = add i64 %5243, %5275
  %5277 = add i64 %5271, 16
  store i64 %5277, i64* %PC.i, align 8
  %5278 = inttoptr i64 %5276 to i32*
  %5279 = load i32, i32* %5278, align 4
  %5280 = zext i32 %5279 to i64
  store i64 %5280, i64* %RDX.i2064, align 8
  %5281 = add i64 %5271, 19
  store i64 %5281, i64* %PC.i, align 8
  %5282 = load i32, i32* %5198, align 4
  %5283 = zext i32 %5282 to i64
  store i64 %5283, i64* %RSI.i2060, align 8
  %5284 = add i64 %5195, -4
  %5285 = add i64 %5271, 23
  store i64 %5285, i64* %PC.i, align 8
  %5286 = inttoptr i64 %5284 to i32*
  %5287 = load i32, i32* %5286, align 4
  %5288 = sext i32 %5287 to i64
  store i64 %5288, i64* %RCX.i2066, align 8
  %5289 = shl nsw i64 %5288, 2
  %5290 = add i64 %5195, -1536
  %5291 = add i64 %5290, %5289
  %5292 = add i64 %5271, 31
  store i64 %5292, i64* %PC.i, align 8
  %5293 = inttoptr i64 %5291 to i32*
  %5294 = load i32, i32* %5293, align 4
  %5295 = sext i32 %5282 to i64
  %5296 = sext i32 %5294 to i64
  %5297 = mul nsw i64 %5296, %5295
  %5298 = and i64 %5297, 4294967295
  store i64 %5298, i64* %RSI.i2060, align 8
  %5299 = trunc i64 %5297 to i32
  %5300 = add i32 %5299, %5279
  %5301 = zext i32 %5300 to i64
  store i64 %5301, i64* %RDX.i2064, align 8
  %5302 = icmp ult i32 %5300, %5279
  %5303 = icmp ult i32 %5300, %5299
  %5304 = or i1 %5302, %5303
  %5305 = zext i1 %5304 to i8
  store i8 %5305, i8* %14, align 1
  %5306 = and i32 %5300, 255
  %5307 = tail call i32 @llvm.ctpop.i32(i32 %5306)
  %5308 = trunc i32 %5307 to i8
  %5309 = and i8 %5308, 1
  %5310 = xor i8 %5309, 1
  store i8 %5310, i8* %21, align 1
  %5311 = xor i64 %5297, %5280
  %5312 = trunc i64 %5311 to i32
  %5313 = xor i32 %5312, %5300
  %5314 = lshr i32 %5313, 4
  %5315 = trunc i32 %5314 to i8
  %5316 = and i8 %5315, 1
  store i8 %5316, i8* %27, align 1
  %5317 = icmp eq i32 %5300, 0
  %5318 = zext i1 %5317 to i8
  store i8 %5318, i8* %30, align 1
  %5319 = lshr i32 %5300, 31
  %5320 = trunc i32 %5319 to i8
  store i8 %5320, i8* %33, align 1
  %5321 = lshr i32 %5279, 31
  %5322 = lshr i32 %5299, 31
  %5323 = xor i32 %5319, %5321
  %5324 = xor i32 %5319, %5322
  %5325 = add nuw nsw i32 %5323, %5324
  %5326 = icmp eq i32 %5325, 2
  %5327 = zext i1 %5326 to i8
  store i8 %5327, i8* %39, align 1
  %5328 = add i64 %5195, -2724
  %5329 = add i64 %5271, 39
  store i64 %5329, i64* %PC.i, align 8
  %5330 = inttoptr i64 %5328 to i32*
  store i32 255, i32* %5330, align 4
  %5331 = load i32, i32* %EDX.i2048, align 4
  %5332 = zext i32 %5331 to i64
  %5333 = load i64, i64* %PC.i, align 8
  store i64 %5332, i64* %RAX.i1508, align 8
  %5334 = sext i32 %5331 to i64
  %5335 = lshr i64 %5334, 32
  store i64 %5335, i64* %57, align 8
  %5336 = load i64, i64* %RBP.i, align 8
  %5337 = add i64 %5336, -2724
  %5338 = add i64 %5333, 9
  store i64 %5338, i64* %PC.i, align 8
  %5339 = inttoptr i64 %5337 to i32*
  %5340 = load i32, i32* %5339, align 4
  %5341 = zext i32 %5340 to i64
  store i64 %5341, i64* %RSI.i2060, align 8
  %5342 = add i64 %5333, 11
  store i64 %5342, i64* %PC.i, align 8
  %5343 = zext i32 %5331 to i64
  %5344 = sext i32 %5340 to i64
  %5345 = shl nuw i64 %5335, 32
  %5346 = or i64 %5345, %5343
  %5347 = sdiv i64 %5346, %5344
  %5348 = shl i64 %5347, 32
  %5349 = ashr exact i64 %5348, 32
  %5350 = icmp eq i64 %5347, %5349
  br i1 %5350, label %5353, label %5351

; <label>:5351:                                   ; preds = %block_401509
  %5352 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %5342, %struct.Memory* %MEMORY.41)
  %.pre60 = load i32, i32* %EDX.i2048, align 4
  %.pre61 = load i64, i64* %PC.i, align 8
  %.pre62 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__esi.exit367

; <label>:5353:                                   ; preds = %block_401509
  %5354 = srem i64 %5346, %5344
  %5355 = and i64 %5347, 4294967295
  store i64 %5355, i64* %58, align 8
  %5356 = and i64 %5354, 4294967295
  store i64 %5356, i64* %59, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %5357 = trunc i64 %5354 to i32
  br label %routine_idivl__esi.exit367

routine_idivl__esi.exit367:                       ; preds = %5353, %5351
  %5358 = phi i64 [ %.pre62, %5351 ], [ %5336, %5353 ]
  %5359 = phi i64 [ %.pre61, %5351 ], [ %5342, %5353 ]
  %5360 = phi i32 [ %.pre60, %5351 ], [ %5357, %5353 ]
  %5361 = phi %struct.Memory* [ %5352, %5351 ], [ %MEMORY.41, %5353 ]
  %5362 = sext i32 %5360 to i64
  store i64 %5362, i64* %RCX.i2066, align 8
  %5363 = shl nsw i64 %5362, 2
  %5364 = add nsw i64 %5363, 6305920
  %5365 = add i64 %5359, 10
  store i64 %5365, i64* %PC.i, align 8
  %5366 = inttoptr i64 %5364 to i32*
  %5367 = load i32, i32* %5366, align 4
  %5368 = zext i32 %5367 to i64
  store i64 %5368, i64* %RDX.i2064, align 8
  %5369 = add i64 %5358, -4
  %5370 = add i64 %5359, 14
  store i64 %5370, i64* %PC.i, align 8
  %5371 = inttoptr i64 %5369 to i32*
  %5372 = load i32, i32* %5371, align 4
  %5373 = sext i32 %5372 to i64
  store i64 %5373, i64* %RCX.i2066, align 8
  %5374 = shl nsw i64 %5373, 2
  %5375 = add i64 %5358, -1568
  %5376 = add i64 %5375, %5374
  %5377 = add i64 %5359, 22
  store i64 %5377, i64* %PC.i, align 8
  %5378 = inttoptr i64 %5376 to i32*
  %5379 = load i32, i32* %5378, align 4
  %5380 = sext i32 %5379 to i64
  store i64 %5380, i64* %RCX.i2066, align 8
  %5381 = shl nsw i64 %5380, 2
  %5382 = add i64 %5358, -2640
  %5383 = add i64 %5382, %5381
  %5384 = add i64 %5359, 29
  store i64 %5384, i64* %PC.i, align 8
  %5385 = inttoptr i64 %5383 to i32*
  %5386 = load i32, i32* %5385, align 4
  %5387 = xor i32 %5386, %5367
  %5388 = zext i32 %5387 to i64
  store i64 %5388, i64* %RDX.i2064, align 8
  store i8 0, i8* %14, align 1
  %5389 = and i32 %5387, 255
  %5390 = tail call i32 @llvm.ctpop.i32(i32 %5389)
  %5391 = trunc i32 %5390 to i8
  %5392 = and i8 %5391, 1
  %5393 = xor i8 %5392, 1
  store i8 %5393, i8* %21, align 1
  %5394 = icmp eq i32 %5387, 0
  %5395 = zext i1 %5394 to i8
  store i8 %5395, i8* %30, align 1
  %5396 = lshr i32 %5387, 31
  %5397 = trunc i32 %5396 to i8
  store i8 %5397, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %5398 = add i64 %5359, 36
  store i64 %5398, i64* %PC.i, align 8
  store i32 %5387, i32* %5385, align 4
  %.pre63 = load i64, i64* %PC.i, align 8
  %.pre64 = load i64, i64* %RBP.i, align 8
  br label %block_.L_40155f

block_.L_40155f:                                  ; preds = %routine_idivl__esi.exit367, %block_4014f7
  %5399 = phi i64 [ %5195, %block_4014f7 ], [ %.pre64, %routine_idivl__esi.exit367 ]
  %5400 = phi i64 [ %5271, %block_4014f7 ], [ %.pre63, %routine_idivl__esi.exit367 ]
  %MEMORY.42 = phi %struct.Memory* [ %MEMORY.41, %block_4014f7 ], [ %5361, %routine_idivl__esi.exit367 ]
  %5401 = add i64 %5399, -8
  %5402 = add i64 %5400, 8
  store i64 %5402, i64* %PC.i, align 8
  %5403 = inttoptr i64 %5401 to i32*
  %5404 = load i32, i32* %5403, align 4
  %5405 = add i32 %5404, 1
  %5406 = zext i32 %5405 to i64
  store i64 %5406, i64* %RAX.i1508, align 8
  %5407 = icmp eq i32 %5404, -1
  %5408 = icmp eq i32 %5405, 0
  %5409 = or i1 %5407, %5408
  %5410 = zext i1 %5409 to i8
  store i8 %5410, i8* %14, align 1
  %5411 = and i32 %5405, 255
  %5412 = tail call i32 @llvm.ctpop.i32(i32 %5411)
  %5413 = trunc i32 %5412 to i8
  %5414 = and i8 %5413, 1
  %5415 = xor i8 %5414, 1
  store i8 %5415, i8* %21, align 1
  %5416 = xor i32 %5404, %5405
  %5417 = lshr i32 %5416, 4
  %5418 = trunc i32 %5417 to i8
  %5419 = and i8 %5418, 1
  store i8 %5419, i8* %27, align 1
  %5420 = icmp eq i32 %5405, 0
  %5421 = zext i1 %5420 to i8
  store i8 %5421, i8* %30, align 1
  %5422 = lshr i32 %5405, 31
  %5423 = trunc i32 %5422 to i8
  store i8 %5423, i8* %33, align 1
  %5424 = lshr i32 %5404, 31
  %5425 = xor i32 %5422, %5424
  %5426 = add nuw nsw i32 %5425, %5422
  %5427 = icmp eq i32 %5426, 2
  %5428 = zext i1 %5427 to i8
  store i8 %5428, i8* %39, align 1
  %5429 = add i64 %5400, 14
  store i64 %5429, i64* %PC.i, align 8
  store i32 %5405, i32* %5403, align 4
  %5430 = load i64, i64* %PC.i, align 8
  %5431 = add i64 %5430, -138
  store i64 %5431, i64* %3, align 8
  br label %block_.L_4014e3

block_.L_401572:                                  ; preds = %block_.L_4014e3
  %5432 = add i64 %5195, -4
  %5433 = add i64 %5238, 4
  store i64 %5433, i64* %PC.i, align 8
  %5434 = inttoptr i64 %5432 to i32*
  %5435 = load i32, i32* %5434, align 4
  %5436 = sext i32 %5435 to i64
  store i64 %5436, i64* %RAX.i1508, align 8
  %5437 = shl nsw i64 %5436, 2
  %5438 = add i64 %5195, -1568
  %5439 = add i64 %5438, %5437
  %5440 = add i64 %5238, 12
  store i64 %5440, i64* %PC.i, align 8
  %5441 = inttoptr i64 %5439 to i32*
  %5442 = load i32, i32* %5441, align 4
  %5443 = sext i32 %5442 to i64
  store i64 %5443, i64* %RAX.i1508, align 8
  %5444 = shl nsw i64 %5443, 2
  %5445 = add i64 %5195, -2640
  %5446 = add i64 %5445, %5444
  %5447 = add i64 %5238, 20
  store i64 %5447, i64* %PC.i, align 8
  %5448 = inttoptr i64 %5446 to i32*
  %5449 = load i32, i32* %5448, align 4
  store i8 0, i8* %14, align 1
  %5450 = and i32 %5449, 255
  %5451 = tail call i32 @llvm.ctpop.i32(i32 %5450)
  %5452 = trunc i32 %5451 to i8
  %5453 = and i8 %5452, 1
  %5454 = xor i8 %5453, 1
  store i8 %5454, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %5455 = icmp eq i32 %5449, 0
  %5456 = zext i1 %5455 to i8
  store i8 %5456, i8* %30, align 1
  %5457 = lshr i32 %5449, 31
  %5458 = trunc i32 %5457 to i8
  store i8 %5458, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v141 = select i1 %5455, i64 345, i64 26
  %5459 = add i64 %5238, %.v141
  store i64 %5459, i64* %3, align 8
  br i1 %5455, label %block_.L_4016cb, label %block_40158c

block_40158c:                                     ; preds = %block_.L_401572
  %5460 = add i64 %5459, 4
  store i64 %5460, i64* %PC.i, align 8
  %5461 = load i32, i32* %5434, align 4
  %5462 = sext i32 %5461 to i64
  store i64 %5462, i64* %RAX.i1508, align 8
  %5463 = shl nsw i64 %5462, 2
  %5464 = add i64 %5438, %5463
  %5465 = add i64 %5459, 12
  store i64 %5465, i64* %PC.i, align 8
  %5466 = inttoptr i64 %5464 to i32*
  %5467 = load i32, i32* %5466, align 4
  %5468 = sext i32 %5467 to i64
  store i64 %5468, i64* %RAX.i1508, align 8
  %5469 = shl nsw i64 %5468, 2
  %5470 = add i64 %5445, %5469
  %5471 = add i64 %5459, 20
  store i64 %5471, i64* %PC.i, align 8
  %5472 = inttoptr i64 %5470 to i32*
  %5473 = load i32, i32* %5472, align 4
  %5474 = sext i32 %5473 to i64
  store i64 %5474, i64* %RAX.i1508, align 8
  %5475 = shl nsw i64 %5474, 2
  %5476 = add nsw i64 %5475, 6304896
  %5477 = add i64 %5459, 27
  store i64 %5477, i64* %PC.i, align 8
  %5478 = inttoptr i64 %5476 to i32*
  %5479 = load i32, i32* %5478, align 4
  %5480 = zext i32 %5479 to i64
  store i64 %5480, i64* %RCX.i2066, align 8
  %5481 = add i64 %5459, 31
  store i64 %5481, i64* %PC.i, align 8
  %5482 = load i32, i32* %5434, align 4
  %5483 = sext i32 %5482 to i64
  store i64 %5483, i64* %RAX.i1508, align 8
  %5484 = shl nsw i64 %5483, 2
  %5485 = add i64 %5438, %5484
  %5486 = add i64 %5459, 39
  store i64 %5486, i64* %PC.i, align 8
  %5487 = inttoptr i64 %5485 to i32*
  %5488 = load i32, i32* %5487, align 4
  %5489 = sext i32 %5488 to i64
  store i64 %5489, i64* %RAX.i1508, align 8
  %5490 = shl nsw i64 %5489, 2
  %5491 = add i64 %5445, %5490
  %5492 = add i64 %5459, 46
  store i64 %5492, i64* %PC.i, align 8
  %5493 = inttoptr i64 %5491 to i32*
  store i32 %5479, i32* %5493, align 4
  %5494 = load i64, i64* %RBP.i, align 8
  %5495 = add i64 %5494, -16
  %5496 = load i64, i64* %PC.i, align 8
  %5497 = add i64 %5496, 7
  store i64 %5497, i64* %PC.i, align 8
  %5498 = inttoptr i64 %5495 to i32*
  store i32 0, i32* %5498, align 4
  %5499 = load i64, i64* %RBP.i, align 8
  %5500 = add i64 %5499, -8
  %5501 = load i64, i64* %PC.i, align 8
  %5502 = add i64 %5501, 7
  store i64 %5502, i64* %PC.i, align 8
  %5503 = inttoptr i64 %5500 to i32*
  store i32 0, i32* %5503, align 4
  %.pre65 = load i64, i64* %PC.i, align 8
  br label %block_.L_4015c8

block_.L_4015c8:                                  ; preds = %block_.L_401631, %block_40158c
  %5504 = phi i64 [ %.pre65, %block_40158c ], [ %5749, %block_.L_401631 ]
  %MEMORY.43 = phi %struct.Memory* [ %MEMORY.41, %block_40158c ], [ %MEMORY.44, %block_.L_401631 ]
  %5505 = load i64, i64* %RBP.i, align 8
  %5506 = add i64 %5505, -8
  %5507 = add i64 %5504, 3
  store i64 %5507, i64* %PC.i, align 8
  %5508 = inttoptr i64 %5506 to i32*
  %5509 = load i32, i32* %5508, align 4
  %5510 = zext i32 %5509 to i64
  store i64 %5510, i64* %RAX.i1508, align 8
  %5511 = add i64 %5505, -12
  %5512 = add i64 %5504, 7
  store i64 %5512, i64* %PC.i, align 8
  %5513 = inttoptr i64 %5511 to i32*
  %5514 = load i32, i32* %5513, align 4
  %5515 = sext i32 %5514 to i64
  store i64 %5515, i64* %RCX.i2066, align 8
  %5516 = shl nsw i64 %5515, 2
  %5517 = add i64 %5505, -1328
  %5518 = add i64 %5517, %5516
  %5519 = add i64 %5504, 14
  store i64 %5519, i64* %PC.i, align 8
  %5520 = inttoptr i64 %5518 to i32*
  %5521 = load i32, i32* %5520, align 4
  %5522 = sub i32 %5509, %5521
  %5523 = icmp ult i32 %5509, %5521
  %5524 = zext i1 %5523 to i8
  store i8 %5524, i8* %14, align 1
  %5525 = and i32 %5522, 255
  %5526 = tail call i32 @llvm.ctpop.i32(i32 %5525)
  %5527 = trunc i32 %5526 to i8
  %5528 = and i8 %5527, 1
  %5529 = xor i8 %5528, 1
  store i8 %5529, i8* %21, align 1
  %5530 = xor i32 %5521, %5509
  %5531 = xor i32 %5530, %5522
  %5532 = lshr i32 %5531, 4
  %5533 = trunc i32 %5532 to i8
  %5534 = and i8 %5533, 1
  store i8 %5534, i8* %27, align 1
  %5535 = icmp eq i32 %5522, 0
  %5536 = zext i1 %5535 to i8
  store i8 %5536, i8* %30, align 1
  %5537 = lshr i32 %5522, 31
  %5538 = trunc i32 %5537 to i8
  store i8 %5538, i8* %33, align 1
  %5539 = lshr i32 %5509, 31
  %5540 = lshr i32 %5521, 31
  %5541 = xor i32 %5540, %5539
  %5542 = xor i32 %5537, %5539
  %5543 = add nuw nsw i32 %5542, %5541
  %5544 = icmp eq i32 %5543, 2
  %5545 = zext i1 %5544 to i8
  store i8 %5545, i8* %39, align 1
  %5546 = icmp ne i8 %5538, 0
  %5547 = xor i1 %5546, %5544
  %.v142 = select i1 %5547, i64 20, i64 124
  %5548 = add i64 %5504, %.v142
  store i64 %5548, i64* %3, align 8
  br i1 %5547, label %block_4015dc, label %block_.L_401644

block_4015dc:                                     ; preds = %block_.L_4015c8
  %5549 = add i64 %5548, 3
  store i64 %5549, i64* %PC.i, align 8
  %5550 = load i32, i32* %5508, align 4
  %5551 = zext i32 %5550 to i64
  store i64 %5551, i64* %RAX.i1508, align 8
  %5552 = add i64 %5505, -4
  %5553 = add i64 %5548, 6
  store i64 %5553, i64* %PC.i, align 8
  %5554 = inttoptr i64 %5552 to i32*
  %5555 = load i32, i32* %5554, align 4
  %5556 = sub i32 %5550, %5555
  %5557 = icmp ult i32 %5550, %5555
  %5558 = zext i1 %5557 to i8
  store i8 %5558, i8* %14, align 1
  %5559 = and i32 %5556, 255
  %5560 = tail call i32 @llvm.ctpop.i32(i32 %5559)
  %5561 = trunc i32 %5560 to i8
  %5562 = and i8 %5561, 1
  %5563 = xor i8 %5562, 1
  store i8 %5563, i8* %21, align 1
  %5564 = xor i32 %5555, %5550
  %5565 = xor i32 %5564, %5556
  %5566 = lshr i32 %5565, 4
  %5567 = trunc i32 %5566 to i8
  %5568 = and i8 %5567, 1
  store i8 %5568, i8* %27, align 1
  %5569 = icmp eq i32 %5556, 0
  %5570 = zext i1 %5569 to i8
  store i8 %5570, i8* %30, align 1
  %5571 = lshr i32 %5556, 31
  %5572 = trunc i32 %5571 to i8
  store i8 %5572, i8* %33, align 1
  %5573 = lshr i32 %5550, 31
  %5574 = lshr i32 %5555, 31
  %5575 = xor i32 %5574, %5573
  %5576 = xor i32 %5571, %5573
  %5577 = add nuw nsw i32 %5576, %5575
  %5578 = icmp eq i32 %5577, 2
  %5579 = zext i1 %5578 to i8
  store i8 %5579, i8* %39, align 1
  %.v143 = select i1 %5569, i64 85, i64 12
  %5580 = add i64 %5548, %.v143
  store i64 %5580, i64* %3, align 8
  br i1 %5569, label %block_.L_401631, label %block_4015e8

block_4015e8:                                     ; preds = %block_4015dc
  store i64 255, i64* %RAX.i1508, align 8
  %5581 = add i64 %5580, 9
  store i64 %5581, i64* %PC.i, align 8
  %5582 = load i32, i32* %5508, align 4
  %5583 = sext i32 %5582 to i64
  store i64 %5583, i64* %RCX.i2066, align 8
  %5584 = shl nsw i64 %5583, 2
  %5585 = add i64 %5505, -1568
  %5586 = add i64 %5585, %5584
  %5587 = add i64 %5580, 16
  store i64 %5587, i64* %PC.i, align 8
  %5588 = inttoptr i64 %5586 to i32*
  %5589 = load i32, i32* %5588, align 4
  %5590 = zext i32 %5589 to i64
  store i64 %5590, i64* %RDX.i2064, align 8
  %5591 = add i64 %5580, 20
  store i64 %5591, i64* %PC.i, align 8
  %5592 = load i32, i32* %5554, align 4
  %5593 = sext i32 %5592 to i64
  store i64 %5593, i64* %RCX.i2066, align 8
  %5594 = shl nsw i64 %5593, 2
  %5595 = add i64 %5505, -1536
  %5596 = add i64 %5595, %5594
  %5597 = add i64 %5580, 27
  store i64 %5597, i64* %PC.i, align 8
  %5598 = inttoptr i64 %5596 to i32*
  %5599 = load i32, i32* %5598, align 4
  %5600 = add i32 %5599, %5589
  %5601 = zext i32 %5600 to i64
  store i64 %5601, i64* %RDX.i2064, align 8
  %5602 = icmp ult i32 %5600, %5589
  %5603 = icmp ult i32 %5600, %5599
  %5604 = or i1 %5602, %5603
  %5605 = zext i1 %5604 to i8
  store i8 %5605, i8* %14, align 1
  %5606 = and i32 %5600, 255
  %5607 = tail call i32 @llvm.ctpop.i32(i32 %5606)
  %5608 = trunc i32 %5607 to i8
  %5609 = and i8 %5608, 1
  %5610 = xor i8 %5609, 1
  store i8 %5610, i8* %21, align 1
  %5611 = xor i32 %5599, %5589
  %5612 = xor i32 %5611, %5600
  %5613 = lshr i32 %5612, 4
  %5614 = trunc i32 %5613 to i8
  %5615 = and i8 %5614, 1
  store i8 %5615, i8* %27, align 1
  %5616 = icmp eq i32 %5600, 0
  %5617 = zext i1 %5616 to i8
  store i8 %5617, i8* %30, align 1
  %5618 = lshr i32 %5600, 31
  %5619 = trunc i32 %5618 to i8
  store i8 %5619, i8* %33, align 1
  %5620 = lshr i32 %5589, 31
  %5621 = lshr i32 %5599, 31
  %5622 = xor i32 %5618, %5620
  %5623 = xor i32 %5618, %5621
  %5624 = add nuw nsw i32 %5622, %5623
  %5625 = icmp eq i32 %5624, 2
  %5626 = zext i1 %5625 to i8
  store i8 %5626, i8* %39, align 1
  %5627 = add i64 %5505, -2728
  %5628 = add i64 %5580, 33
  store i64 %5628, i64* %PC.i, align 8
  %5629 = inttoptr i64 %5627 to i32*
  store i32 255, i32* %5629, align 4
  %5630 = load i32, i32* %EDX.i2048, align 4
  %5631 = zext i32 %5630 to i64
  %5632 = load i64, i64* %PC.i, align 8
  store i64 %5631, i64* %RAX.i1508, align 8
  %5633 = sext i32 %5630 to i64
  %5634 = lshr i64 %5633, 32
  store i64 %5634, i64* %57, align 8
  %5635 = load i64, i64* %RBP.i, align 8
  %5636 = add i64 %5635, -2728
  %5637 = add i64 %5632, 9
  store i64 %5637, i64* %PC.i, align 8
  %5638 = inttoptr i64 %5636 to i32*
  %5639 = load i32, i32* %5638, align 4
  %5640 = zext i32 %5639 to i64
  store i64 %5640, i64* %RSI.i2060, align 8
  %5641 = add i64 %5632, 11
  store i64 %5641, i64* %PC.i, align 8
  %5642 = zext i32 %5630 to i64
  %5643 = sext i32 %5639 to i64
  %5644 = shl nuw i64 %5634, 32
  %5645 = or i64 %5644, %5642
  %5646 = sdiv i64 %5645, %5643
  %5647 = shl i64 %5646, 32
  %5648 = ashr exact i64 %5647, 32
  %5649 = icmp eq i64 %5646, %5648
  br i1 %5649, label %5652, label %5650

; <label>:5650:                                   ; preds = %block_4015e8
  %5651 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %5641, %struct.Memory* %MEMORY.43)
  %.pre66 = load i32, i32* %EDX.i2048, align 4
  %.pre67 = load i64, i64* %PC.i, align 8
  %.pre68 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__esi.exit

; <label>:5652:                                   ; preds = %block_4015e8
  %5653 = srem i64 %5645, %5643
  %5654 = and i64 %5646, 4294967295
  store i64 %5654, i64* %58, align 8
  %5655 = and i64 %5653, 4294967295
  store i64 %5655, i64* %59, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %5656 = trunc i64 %5653 to i32
  br label %routine_idivl__esi.exit

routine_idivl__esi.exit:                          ; preds = %5652, %5650
  %5657 = phi i64 [ %.pre68, %5650 ], [ %5635, %5652 ]
  %5658 = phi i64 [ %.pre67, %5650 ], [ %5641, %5652 ]
  %5659 = phi i32 [ %.pre66, %5650 ], [ %5656, %5652 ]
  %5660 = phi %struct.Memory* [ %5651, %5650 ], [ %MEMORY.43, %5652 ]
  %5661 = sext i32 %5659 to i64
  store i64 %5661, i64* %RCX.i2066, align 8
  %5662 = shl nsw i64 %5661, 2
  %5663 = add nsw i64 %5662, 6305920
  %5664 = add i64 %5658, 10
  store i64 %5664, i64* %PC.i, align 8
  %5665 = inttoptr i64 %5663 to i32*
  %5666 = load i32, i32* %5665, align 4
  %5667 = xor i32 %5666, 1
  %5668 = zext i32 %5667 to i64
  store i64 %5668, i64* %RDX.i2064, align 8
  store i8 0, i8* %14, align 1
  %5669 = and i32 %5667, 255
  %5670 = tail call i32 @llvm.ctpop.i32(i32 %5669)
  %5671 = trunc i32 %5670 to i8
  %5672 = and i8 %5671, 1
  %5673 = xor i8 %5672, 1
  store i8 %5673, i8* %21, align 1
  %5674 = icmp eq i32 %5667, 0
  %5675 = zext i1 %5674 to i8
  store i8 %5675, i8* %30, align 1
  %5676 = lshr i32 %5666, 31
  %5677 = trunc i32 %5676 to i8
  store i8 %5677, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %5678 = sext i32 %5667 to i64
  store i64 %5678, i64* %RCX.i2066, align 8
  %5679 = shl nsw i64 %5678, 2
  %5680 = add nsw i64 %5679, 6304896
  %5681 = add i64 %5658, 23
  store i64 %5681, i64* %PC.i, align 8
  %5682 = inttoptr i64 %5680 to i32*
  %5683 = load i32, i32* %5682, align 4
  %5684 = zext i32 %5683 to i64
  store i64 %5684, i64* %RDX.i2064, align 8
  %5685 = add i64 %5657, -16
  %5686 = add i64 %5658, 26
  store i64 %5686, i64* %PC.i, align 8
  %5687 = inttoptr i64 %5685 to i32*
  %5688 = load i32, i32* %5687, align 4
  %5689 = add i32 %5688, %5683
  %5690 = zext i32 %5689 to i64
  store i64 %5690, i64* %RDX.i2064, align 8
  %5691 = icmp ult i32 %5689, %5683
  %5692 = icmp ult i32 %5689, %5688
  %5693 = or i1 %5691, %5692
  %5694 = zext i1 %5693 to i8
  store i8 %5694, i8* %14, align 1
  %5695 = and i32 %5689, 255
  %5696 = tail call i32 @llvm.ctpop.i32(i32 %5695)
  %5697 = trunc i32 %5696 to i8
  %5698 = and i8 %5697, 1
  %5699 = xor i8 %5698, 1
  store i8 %5699, i8* %21, align 1
  %5700 = xor i32 %5688, %5683
  %5701 = xor i32 %5700, %5689
  %5702 = lshr i32 %5701, 4
  %5703 = trunc i32 %5702 to i8
  %5704 = and i8 %5703, 1
  store i8 %5704, i8* %27, align 1
  %5705 = icmp eq i32 %5689, 0
  %5706 = zext i1 %5705 to i8
  store i8 %5706, i8* %30, align 1
  %5707 = lshr i32 %5689, 31
  %5708 = trunc i32 %5707 to i8
  store i8 %5708, i8* %33, align 1
  %5709 = lshr i32 %5683, 31
  %5710 = lshr i32 %5688, 31
  %5711 = xor i32 %5707, %5709
  %5712 = xor i32 %5707, %5710
  %5713 = add nuw nsw i32 %5711, %5712
  %5714 = icmp eq i32 %5713, 2
  %5715 = zext i1 %5714 to i8
  store i8 %5715, i8* %39, align 1
  %5716 = add i64 %5658, 29
  store i64 %5716, i64* %PC.i, align 8
  store i32 %5689, i32* %5687, align 4
  %.pre69 = load i64, i64* %PC.i, align 8
  %.pre70 = load i64, i64* %RBP.i, align 8
  br label %block_.L_401631

block_.L_401631:                                  ; preds = %routine_idivl__esi.exit, %block_4015dc
  %5717 = phi i64 [ %5505, %block_4015dc ], [ %.pre70, %routine_idivl__esi.exit ]
  %5718 = phi i64 [ %5580, %block_4015dc ], [ %.pre69, %routine_idivl__esi.exit ]
  %MEMORY.44 = phi %struct.Memory* [ %MEMORY.43, %block_4015dc ], [ %5660, %routine_idivl__esi.exit ]
  %5719 = add i64 %5717, -8
  %5720 = add i64 %5718, 8
  store i64 %5720, i64* %PC.i, align 8
  %5721 = inttoptr i64 %5719 to i32*
  %5722 = load i32, i32* %5721, align 4
  %5723 = add i32 %5722, 1
  %5724 = zext i32 %5723 to i64
  store i64 %5724, i64* %RAX.i1508, align 8
  %5725 = icmp eq i32 %5722, -1
  %5726 = icmp eq i32 %5723, 0
  %5727 = or i1 %5725, %5726
  %5728 = zext i1 %5727 to i8
  store i8 %5728, i8* %14, align 1
  %5729 = and i32 %5723, 255
  %5730 = tail call i32 @llvm.ctpop.i32(i32 %5729)
  %5731 = trunc i32 %5730 to i8
  %5732 = and i8 %5731, 1
  %5733 = xor i8 %5732, 1
  store i8 %5733, i8* %21, align 1
  %5734 = xor i32 %5722, %5723
  %5735 = lshr i32 %5734, 4
  %5736 = trunc i32 %5735 to i8
  %5737 = and i8 %5736, 1
  store i8 %5737, i8* %27, align 1
  %5738 = icmp eq i32 %5723, 0
  %5739 = zext i1 %5738 to i8
  store i8 %5739, i8* %30, align 1
  %5740 = lshr i32 %5723, 31
  %5741 = trunc i32 %5740 to i8
  store i8 %5741, i8* %33, align 1
  %5742 = lshr i32 %5722, 31
  %5743 = xor i32 %5740, %5742
  %5744 = add nuw nsw i32 %5743, %5740
  %5745 = icmp eq i32 %5744, 2
  %5746 = zext i1 %5745 to i8
  store i8 %5746, i8* %39, align 1
  %5747 = add i64 %5718, 14
  store i64 %5747, i64* %PC.i, align 8
  store i32 %5723, i32* %5721, align 4
  %5748 = load i64, i64* %PC.i, align 8
  %5749 = add i64 %5748, -119
  store i64 %5749, i64* %3, align 8
  br label %block_.L_4015c8

block_.L_401644:                                  ; preds = %block_.L_4015c8
  store i64 255, i64* %RAX.i1508, align 8
  %5750 = add i64 %5505, -16
  %5751 = add i64 %5548, 8
  store i64 %5751, i64* %PC.i, align 8
  %5752 = inttoptr i64 %5750 to i32*
  %5753 = load i32, i32* %5752, align 4
  %5754 = zext i32 %5753 to i64
  store i64 %5754, i64* %RCX.i2066, align 8
  %5755 = add i64 %5505, -2732
  %5756 = add i64 %5548, 14
  store i64 %5756, i64* %PC.i, align 8
  %5757 = inttoptr i64 %5755 to i32*
  store i32 255, i32* %5757, align 4
  %5758 = load i32, i32* %ECX.i1986, align 4
  %5759 = zext i32 %5758 to i64
  %5760 = load i64, i64* %PC.i, align 8
  store i64 %5759, i64* %RAX.i1508, align 8
  %5761 = sext i32 %5758 to i64
  %5762 = lshr i64 %5761, 32
  store i64 %5762, i64* %57, align 8
  %5763 = load i64, i64* %RBP.i, align 8
  %5764 = add i64 %5763, -2732
  %5765 = add i64 %5760, 9
  store i64 %5765, i64* %PC.i, align 8
  %5766 = inttoptr i64 %5764 to i32*
  %5767 = load i32, i32* %5766, align 4
  %5768 = zext i32 %5767 to i64
  store i64 %5768, i64* %RCX.i2066, align 8
  %5769 = add i64 %5760, 11
  store i64 %5769, i64* %PC.i, align 8
  %5770 = zext i32 %5758 to i64
  %5771 = sext i32 %5767 to i64
  %5772 = shl nuw i64 %5762, 32
  %5773 = or i64 %5772, %5770
  %5774 = sdiv i64 %5773, %5771
  %5775 = shl i64 %5774, 32
  %5776 = ashr exact i64 %5775, 32
  %5777 = icmp eq i64 %5774, %5776
  br i1 %5777, label %5780, label %5778

; <label>:5778:                                   ; preds = %block_.L_401644
  %5779 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %5769, %struct.Memory* %MEMORY.43)
  %.pre71 = load i64, i64* %RBP.i, align 8
  %.pre72 = load i32, i32* %EDX.i2048, align 4
  %.pre73 = load i64, i64* %PC.i, align 8
  br label %routine_idivl__ecx.exit204

; <label>:5780:                                   ; preds = %block_.L_401644
  %5781 = srem i64 %5773, %5771
  %5782 = and i64 %5774, 4294967295
  store i64 %5782, i64* %58, align 8
  %5783 = and i64 %5781, 4294967295
  store i64 %5783, i64* %59, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %5784 = trunc i64 %5781 to i32
  br label %routine_idivl__ecx.exit204

routine_idivl__ecx.exit204:                       ; preds = %5780, %5778
  %5785 = phi i64 [ %.pre73, %5778 ], [ %5769, %5780 ]
  %5786 = phi i32 [ %.pre72, %5778 ], [ %5784, %5780 ]
  %5787 = phi i64 [ %.pre71, %5778 ], [ %5763, %5780 ]
  %5788 = phi %struct.Memory* [ %5779, %5778 ], [ %MEMORY.43, %5780 ]
  %5789 = add i64 %5787, -16
  %5790 = add i64 %5785, 3
  store i64 %5790, i64* %PC.i, align 8
  %5791 = inttoptr i64 %5789 to i32*
  store i32 %5786, i32* %5791, align 4
  %5792 = load i64, i64* %RBP.i, align 8
  %5793 = add i64 %5792, -4
  %5794 = load i64, i64* %PC.i, align 8
  %5795 = add i64 %5794, 4
  store i64 %5795, i64* %PC.i, align 8
  %5796 = inttoptr i64 %5793 to i32*
  %5797 = load i32, i32* %5796, align 4
  %5798 = sext i32 %5797 to i64
  store i64 %5798, i64* %RSI.i2060, align 8
  %5799 = shl nsw i64 %5798, 2
  %5800 = add i64 %5792, -1568
  %5801 = add i64 %5800, %5799
  %5802 = add i64 %5794, 12
  store i64 %5802, i64* %PC.i, align 8
  %5803 = inttoptr i64 %5801 to i32*
  %5804 = load i32, i32* %5803, align 4
  %5805 = sext i32 %5804 to i64
  store i64 %5805, i64* %RSI.i2060, align 8
  %5806 = shl nsw i64 %5805, 2
  %5807 = add i64 %5792, -2640
  %5808 = add i64 %5807, %5806
  %5809 = add i64 %5794, 19
  store i64 %5809, i64* %PC.i, align 8
  %5810 = inttoptr i64 %5808 to i32*
  %5811 = load i32, i32* %5810, align 4
  %5812 = zext i32 %5811 to i64
  store i64 %5812, i64* %RDX.i2064, align 8
  %5813 = add i64 %5792, -16
  %5814 = add i64 %5794, 22
  store i64 %5814, i64* %PC.i, align 8
  %5815 = inttoptr i64 %5813 to i32*
  %5816 = load i32, i32* %5815, align 4
  %5817 = sub i32 %5811, %5816
  %5818 = lshr i32 %5817, 31
  %5819 = add i32 %5817, 255
  %5820 = zext i32 %5819 to i64
  %5821 = icmp ugt i32 %5817, -256
  %5822 = zext i1 %5821 to i8
  store i8 %5822, i8* %14, align 1
  %5823 = and i32 %5819, 255
  %5824 = tail call i32 @llvm.ctpop.i32(i32 %5823)
  %5825 = trunc i32 %5824 to i8
  %5826 = and i8 %5825, 1
  %5827 = xor i8 %5826, 1
  store i8 %5827, i8* %21, align 1
  %5828 = xor i32 %5817, 16
  %5829 = xor i32 %5828, %5819
  %5830 = lshr i32 %5829, 4
  %5831 = trunc i32 %5830 to i8
  %5832 = and i8 %5831, 1
  store i8 %5832, i8* %27, align 1
  %5833 = icmp eq i32 %5819, 0
  %5834 = zext i1 %5833 to i8
  store i8 %5834, i8* %30, align 1
  %5835 = lshr i32 %5819, 31
  %5836 = trunc i32 %5835 to i8
  store i8 %5836, i8* %33, align 1
  %5837 = xor i32 %5835, %5818
  %5838 = add nuw nsw i32 %5837, %5835
  %5839 = icmp eq i32 %5838, 2
  %5840 = zext i1 %5839 to i8
  store i8 %5840, i8* %39, align 1
  store i64 %5820, i64* %RAX.i1508, align 8
  %5841 = sext i32 %5819 to i64
  %5842 = lshr i64 %5841, 32
  store i64 %5842, i64* %57, align 8
  %5843 = load i32, i32* %ECX.i1986, align 4
  %5844 = add i64 %5794, 33
  store i64 %5844, i64* %PC.i, align 8
  %5845 = zext i32 %5819 to i64
  %5846 = sext i32 %5843 to i64
  %5847 = shl nuw i64 %5842, 32
  %5848 = or i64 %5847, %5845
  %5849 = sdiv i64 %5848, %5846
  %5850 = shl i64 %5849, 32
  %5851 = ashr exact i64 %5850, 32
  %5852 = icmp eq i64 %5849, %5851
  br i1 %5852, label %5855, label %5853

; <label>:5853:                                   ; preds = %routine_idivl__ecx.exit204
  %5854 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %5844, %struct.Memory* %5788)
  %.pre74 = load i32, i32* %EDX.i2048, align 4
  %.pre75 = load i64, i64* %PC.i, align 8
  br label %routine_idivl__ecx.exit

; <label>:5855:                                   ; preds = %routine_idivl__ecx.exit204
  %5856 = srem i64 %5848, %5846
  %5857 = and i64 %5849, 4294967295
  store i64 %5857, i64* %58, align 8
  %5858 = and i64 %5856, 4294967295
  store i64 %5858, i64* %59, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %5859 = trunc i64 %5856 to i32
  br label %routine_idivl__ecx.exit

routine_idivl__ecx.exit:                          ; preds = %5855, %5853
  %5860 = phi i64 [ %.pre75, %5853 ], [ %5844, %5855 ]
  %5861 = phi i32 [ %.pre74, %5853 ], [ %5859, %5855 ]
  %5862 = phi %struct.Memory* [ %5854, %5853 ], [ %5788, %5855 ]
  %5863 = sext i32 %5861 to i64
  store i64 %5863, i64* %RSI.i2060, align 8
  %5864 = shl nsw i64 %5863, 2
  %5865 = add nsw i64 %5864, 6305920
  %5866 = add i64 %5860, 10
  store i64 %5866, i64* %PC.i, align 8
  %5867 = inttoptr i64 %5865 to i32*
  %5868 = load i32, i32* %5867, align 4
  %5869 = zext i32 %5868 to i64
  store i64 %5869, i64* %RDX.i2064, align 8
  %5870 = load i64, i64* %RBP.i, align 8
  %5871 = add i64 %5870, -4
  %5872 = add i64 %5860, 14
  store i64 %5872, i64* %PC.i, align 8
  %5873 = inttoptr i64 %5871 to i32*
  %5874 = load i32, i32* %5873, align 4
  %5875 = sext i32 %5874 to i64
  store i64 %5875, i64* %RSI.i2060, align 8
  %5876 = shl nsw i64 %5875, 2
  %5877 = add i64 %5870, -1568
  %5878 = add i64 %5877, %5876
  %5879 = add i64 %5860, 22
  store i64 %5879, i64* %PC.i, align 8
  %5880 = inttoptr i64 %5878 to i32*
  %5881 = load i32, i32* %5880, align 4
  %5882 = sext i32 %5881 to i64
  store i64 %5882, i64* %RSI.i2060, align 8
  %5883 = shl nsw i64 %5882, 2
  %5884 = add i64 %5870, -2640
  %5885 = add i64 %5884, %5883
  %5886 = add i64 %5860, 29
  store i64 %5886, i64* %PC.i, align 8
  %5887 = inttoptr i64 %5885 to i32*
  store i32 %5868, i32* %5887, align 4
  %5888 = load i64, i64* %RBP.i, align 8
  %5889 = add i64 %5888, -4
  %5890 = load i64, i64* %PC.i, align 8
  %5891 = add i64 %5890, 4
  store i64 %5891, i64* %PC.i, align 8
  %5892 = inttoptr i64 %5889 to i32*
  %5893 = load i32, i32* %5892, align 4
  %5894 = sext i32 %5893 to i64
  store i64 %5894, i64* %RSI.i2060, align 8
  %5895 = shl nsw i64 %5894, 2
  %5896 = add i64 %5888, -1568
  %5897 = add i64 %5896, %5895
  %5898 = add i64 %5890, 12
  store i64 %5898, i64* %PC.i, align 8
  %5899 = inttoptr i64 %5897 to i32*
  %5900 = load i32, i32* %5899, align 4
  %5901 = sext i32 %5900 to i64
  store i64 %5901, i64* %RSI.i2060, align 8
  %5902 = shl nsw i64 %5901, 2
  %5903 = add i64 %5888, -2640
  %5904 = add i64 %5903, %5902
  %5905 = add i64 %5890, 19
  store i64 %5905, i64* %PC.i, align 8
  %5906 = inttoptr i64 %5904 to i32*
  %5907 = load i32, i32* %5906, align 4
  %5908 = zext i32 %5907 to i64
  store i64 %5908, i64* %RDX.i2064, align 8
  %5909 = add i64 %5890, 23
  store i64 %5909, i64* %PC.i, align 8
  %5910 = load i32, i32* %5892, align 4
  %5911 = sext i32 %5910 to i64
  store i64 %5911, i64* %RSI.i2060, align 8
  %5912 = shl nsw i64 %5911, 2
  %5913 = add i64 %5896, %5912
  %5914 = add i64 %5890, 31
  store i64 %5914, i64* %PC.i, align 8
  %5915 = inttoptr i64 %5913 to i32*
  %5916 = load i32, i32* %5915, align 4
  %5917 = sext i32 %5916 to i64
  store i64 %5917, i64* %RSI.i2060, align 8
  %5918 = shl nsw i64 %5917, 2
  %5919 = add nsw i64 %5918, 6303872
  %5920 = add i64 %5890, 38
  store i64 %5920, i64* %PC.i, align 8
  %5921 = inttoptr i64 %5919 to i32*
  %5922 = load i32, i32* %5921, align 4
  %5923 = xor i32 %5922, %5907
  %5924 = zext i32 %5923 to i64
  store i64 %5924, i64* %RDX.i2064, align 8
  store i8 0, i8* %14, align 1
  %5925 = and i32 %5923, 255
  %5926 = tail call i32 @llvm.ctpop.i32(i32 %5925)
  %5927 = trunc i32 %5926 to i8
  %5928 = and i8 %5927, 1
  %5929 = xor i8 %5928, 1
  store i8 %5929, i8* %21, align 1
  %5930 = icmp eq i32 %5923, 0
  %5931 = zext i1 %5930 to i8
  store i8 %5931, i8* %30, align 1
  %5932 = lshr i32 %5923, 31
  %5933 = trunc i32 %5932 to i8
  store i8 %5933, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %5934 = add i64 %5890, 45
  store i64 %5934, i64* %PC.i, align 8
  store i32 %5923, i32* %5921, align 4
  %.pre76 = load i64, i64* %PC.i, align 8
  %.pre77 = load i64, i64* %RBP.i, align 8
  br label %block_.L_4016cb

block_.L_4016cb:                                  ; preds = %routine_idivl__ecx.exit, %block_.L_401572
  %5935 = phi i64 [ %5195, %block_.L_401572 ], [ %.pre77, %routine_idivl__ecx.exit ]
  %5936 = phi i64 [ %5459, %block_.L_401572 ], [ %.pre76, %routine_idivl__ecx.exit ]
  %MEMORY.45 = phi %struct.Memory* [ %MEMORY.41, %block_.L_401572 ], [ %5862, %routine_idivl__ecx.exit ]
  %5937 = add i64 %5935, -4
  %5938 = add i64 %5936, 8
  store i64 %5938, i64* %PC.i, align 8
  %5939 = inttoptr i64 %5937 to i32*
  %5940 = load i32, i32* %5939, align 4
  %5941 = add i32 %5940, 1
  %5942 = zext i32 %5941 to i64
  store i64 %5942, i64* %RAX.i1508, align 8
  %5943 = icmp eq i32 %5940, -1
  %5944 = icmp eq i32 %5941, 0
  %5945 = or i1 %5943, %5944
  %5946 = zext i1 %5945 to i8
  store i8 %5946, i8* %14, align 1
  %5947 = and i32 %5941, 255
  %5948 = tail call i32 @llvm.ctpop.i32(i32 %5947)
  %5949 = trunc i32 %5948 to i8
  %5950 = and i8 %5949, 1
  %5951 = xor i8 %5950, 1
  store i8 %5951, i8* %21, align 1
  %5952 = xor i32 %5940, %5941
  %5953 = lshr i32 %5952, 4
  %5954 = trunc i32 %5953 to i8
  %5955 = and i8 %5954, 1
  store i8 %5955, i8* %27, align 1
  %5956 = icmp eq i32 %5941, 0
  %5957 = zext i1 %5956 to i8
  store i8 %5957, i8* %30, align 1
  %5958 = lshr i32 %5941, 31
  %5959 = trunc i32 %5958 to i8
  store i8 %5959, i8* %33, align 1
  %5960 = lshr i32 %5940, 31
  %5961 = xor i32 %5958, %5960
  %5962 = add nuw nsw i32 %5961, %5958
  %5963 = icmp eq i32 %5962, 2
  %5964 = zext i1 %5963 to i8
  store i8 %5964, i8* %39, align 1
  %5965 = add i64 %5936, 14
  store i64 %5965, i64* %PC.i, align 8
  store i32 %5941, i32* %5939, align 4
  %5966 = load i64, i64* %PC.i, align 8
  %5967 = add i64 %5966, -552
  store i64 %5967, i64* %3, align 8
  br label %block_.L_4014b1

block_.L_4016de:                                  ; preds = %block_.L_4014b1
  %5968 = add i64 %5173, 117
  br label %block_.L_401753

block_.L_4016e3:                                  ; preds = %block_.L_4011d3
  store i32 0, i32* %3572, align 4
  %.pre78 = load i64, i64* %PC.i, align 8
  br label %block_.L_4016ea

block_.L_4016ea:                                  ; preds = %block_.L_40173b, %block_.L_4016e3
  %5969 = phi i64 [ %6090, %block_.L_40173b ], [ %.pre78, %block_.L_4016e3 ]
  %5970 = load i64, i64* %RBP.i, align 8
  %5971 = add i64 %5970, -4
  %5972 = add i64 %5969, 7
  store i64 %5972, i64* %PC.i, align 8
  %5973 = inttoptr i64 %5971 to i32*
  %5974 = load i32, i32* %5973, align 4
  %5975 = add i32 %5974, -255
  %5976 = icmp ult i32 %5974, 255
  %5977 = zext i1 %5976 to i8
  store i8 %5977, i8* %14, align 1
  %5978 = and i32 %5975, 255
  %5979 = tail call i32 @llvm.ctpop.i32(i32 %5978)
  %5980 = trunc i32 %5979 to i8
  %5981 = and i8 %5980, 1
  %5982 = xor i8 %5981, 1
  store i8 %5982, i8* %21, align 1
  %5983 = xor i32 %5974, 16
  %5984 = xor i32 %5983, %5975
  %5985 = lshr i32 %5984, 4
  %5986 = trunc i32 %5985 to i8
  %5987 = and i8 %5986, 1
  store i8 %5987, i8* %27, align 1
  %5988 = icmp eq i32 %5975, 0
  %5989 = zext i1 %5988 to i8
  store i8 %5989, i8* %30, align 1
  %5990 = lshr i32 %5975, 31
  %5991 = trunc i32 %5990 to i8
  store i8 %5991, i8* %33, align 1
  %5992 = lshr i32 %5974, 31
  %5993 = xor i32 %5990, %5992
  %5994 = add nuw nsw i32 %5993, %5992
  %5995 = icmp eq i32 %5994, 2
  %5996 = zext i1 %5995 to i8
  store i8 %5996, i8* %39, align 1
  %5997 = icmp ne i8 %5991, 0
  %5998 = xor i1 %5997, %5995
  %.v144 = select i1 %5998, i64 13, i64 100
  %5999 = add i64 %5969, %.v144
  store i64 %5999, i64* %3, align 8
  br i1 %5998, label %block_4016f7, label %block_.L_40174e

block_4016f7:                                     ; preds = %block_.L_4016ea
  %6000 = add i64 %5999, 4
  store i64 %6000, i64* %PC.i, align 8
  %6001 = load i32, i32* %5973, align 4
  %6002 = sext i32 %6001 to i64
  store i64 %6002, i64* %RAX.i1508, align 8
  %6003 = shl nsw i64 %6002, 2
  %6004 = add nsw i64 %6003, 6303872
  %6005 = add i64 %5999, 12
  store i64 %6005, i64* %PC.i, align 8
  %6006 = inttoptr i64 %6004 to i32*
  %6007 = load i32, i32* %6006, align 4
  %6008 = add i32 %6007, 1
  %6009 = icmp ne i32 %6007, -1
  %6010 = zext i1 %6009 to i8
  store i8 %6010, i8* %14, align 1
  %6011 = and i32 %6008, 255
  %6012 = tail call i32 @llvm.ctpop.i32(i32 %6011)
  %6013 = trunc i32 %6012 to i8
  %6014 = and i8 %6013, 1
  %6015 = xor i8 %6014, 1
  store i8 %6015, i8* %21, align 1
  %6016 = xor i32 %6007, 16
  %6017 = xor i32 %6008, %6016
  %6018 = lshr i32 %6017, 4
  %6019 = trunc i32 %6018 to i8
  %6020 = and i8 %6019, 1
  store i8 %6020, i8* %27, align 1
  %6021 = icmp eq i32 %6008, 0
  %6022 = zext i1 %6021 to i8
  store i8 %6022, i8* %30, align 1
  %6023 = lshr i32 %6008, 31
  %6024 = trunc i32 %6023 to i8
  store i8 %6024, i8* %33, align 1
  %6025 = lshr i32 %6007, 31
  %6026 = xor i32 %6025, 1
  %6027 = xor i32 %6023, %6025
  %6028 = add nuw nsw i32 %6027, %6026
  %6029 = icmp eq i32 %6028, 2
  %6030 = zext i1 %6029 to i8
  store i8 %6030, i8* %39, align 1
  %.v145 = select i1 %6021, i64 53, i64 18
  %6031 = add i64 %5999, %.v145
  %6032 = add i64 %6031, 4
  store i64 %6032, i64* %PC.i, align 8
  %6033 = load i32, i32* %5973, align 4
  %6034 = sext i32 %6033 to i64
  store i64 %6034, i64* %RAX.i1508, align 8
  %6035 = shl nsw i64 %6034, 2
  %6036 = add nsw i64 %6035, 6303872
  br i1 %6021, label %block_.L_40172c, label %block_401709

block_401709:                                     ; preds = %block_4016f7
  %6037 = add i64 %6031, 12
  store i64 %6037, i64* %PC.i, align 8
  %6038 = inttoptr i64 %6036 to i32*
  %6039 = load i32, i32* %6038, align 4
  %6040 = sext i32 %6039 to i64
  store i64 %6040, i64* %RAX.i1508, align 8
  %6041 = shl nsw i64 %6040, 2
  %6042 = add nsw i64 %6041, 6305920
  %6043 = add i64 %6031, 19
  store i64 %6043, i64* %PC.i, align 8
  %6044 = inttoptr i64 %6042 to i32*
  %6045 = load i32, i32* %6044, align 4
  %6046 = zext i32 %6045 to i64
  store i64 %6046, i64* %RCX.i2066, align 8
  %6047 = add i64 %6031, 23
  store i64 %6047, i64* %PC.i, align 8
  %6048 = load i32, i32* %5973, align 4
  %6049 = sext i32 %6048 to i64
  store i64 %6049, i64* %RAX.i1508, align 8
  %6050 = shl nsw i64 %6049, 2
  %6051 = add nsw i64 %6050, 6303872
  %6052 = add i64 %6031, 30
  store i64 %6052, i64* %PC.i, align 8
  %6053 = inttoptr i64 %6051 to i32*
  store i32 %6045, i32* %6053, align 4
  %6054 = load i64, i64* %PC.i, align 8
  %6055 = add i64 %6054, 20
  store i64 %6055, i64* %3, align 8
  br label %block_.L_40173b

block_.L_40172c:                                  ; preds = %block_4016f7
  %6056 = add i64 %6031, 15
  store i64 %6056, i64* %PC.i, align 8
  %6057 = inttoptr i64 %6036 to i32*
  store i32 0, i32* %6057, align 4
  %.pre79 = load i64, i64* %PC.i, align 8
  br label %block_.L_40173b

block_.L_40173b:                                  ; preds = %block_.L_40172c, %block_401709
  %6058 = phi i64 [ %.pre79, %block_.L_40172c ], [ %6055, %block_401709 ]
  %6059 = load i64, i64* %RBP.i, align 8
  %6060 = add i64 %6059, -4
  %6061 = add i64 %6058, 8
  store i64 %6061, i64* %PC.i, align 8
  %6062 = inttoptr i64 %6060 to i32*
  %6063 = load i32, i32* %6062, align 4
  %6064 = add i32 %6063, 1
  %6065 = zext i32 %6064 to i64
  store i64 %6065, i64* %RAX.i1508, align 8
  %6066 = icmp eq i32 %6063, -1
  %6067 = icmp eq i32 %6064, 0
  %6068 = or i1 %6066, %6067
  %6069 = zext i1 %6068 to i8
  store i8 %6069, i8* %14, align 1
  %6070 = and i32 %6064, 255
  %6071 = tail call i32 @llvm.ctpop.i32(i32 %6070)
  %6072 = trunc i32 %6071 to i8
  %6073 = and i8 %6072, 1
  %6074 = xor i8 %6073, 1
  store i8 %6074, i8* %21, align 1
  %6075 = xor i32 %6063, %6064
  %6076 = lshr i32 %6075, 4
  %6077 = trunc i32 %6076 to i8
  %6078 = and i8 %6077, 1
  store i8 %6078, i8* %27, align 1
  %6079 = icmp eq i32 %6064, 0
  %6080 = zext i1 %6079 to i8
  store i8 %6080, i8* %30, align 1
  %6081 = lshr i32 %6064, 31
  %6082 = trunc i32 %6081 to i8
  store i8 %6082, i8* %33, align 1
  %6083 = lshr i32 %6063, 31
  %6084 = xor i32 %6081, %6083
  %6085 = add nuw nsw i32 %6084, %6081
  %6086 = icmp eq i32 %6085, 2
  %6087 = zext i1 %6086 to i8
  store i8 %6087, i8* %39, align 1
  %6088 = add i64 %6058, 14
  store i64 %6088, i64* %PC.i, align 8
  store i32 %6064, i32* %6062, align 4
  %6089 = load i64, i64* %PC.i, align 8
  %6090 = add i64 %6089, -95
  store i64 %6090, i64* %3, align 8
  br label %block_.L_4016ea

block_.L_40174e:                                  ; preds = %block_.L_4016ea
  %6091 = add i64 %5999, 5
  br label %block_.L_401753

block_.L_401753:                                  ; preds = %block_.L_40174e, %block_.L_4016de
  %.sink89 = phi i64 [ %6091, %block_.L_40174e ], [ %5968, %block_.L_4016de ]
  %MEMORY.48 = phi %struct.Memory* [ %MEMORY.25, %block_.L_40174e ], [ %MEMORY.40, %block_.L_4016de ]
  store i64 %.sink89, i64* %3, align 8
  %6092 = add i64 %.sink89, 117
  br label %block_.L_4017c8

block_.L_40175f:                                  ; preds = %block_40100c, %block_.L_4017b0
  %6093 = phi i64 [ %6214, %block_.L_4017b0 ], [ %.pre80, %block_40100c ]
  %6094 = load i64, i64* %RBP.i, align 8
  %6095 = add i64 %6094, -4
  %6096 = add i64 %6093, 7
  store i64 %6096, i64* %PC.i, align 8
  %6097 = inttoptr i64 %6095 to i32*
  %6098 = load i32, i32* %6097, align 4
  %6099 = add i32 %6098, -255
  %6100 = icmp ult i32 %6098, 255
  %6101 = zext i1 %6100 to i8
  store i8 %6101, i8* %14, align 1
  %6102 = and i32 %6099, 255
  %6103 = tail call i32 @llvm.ctpop.i32(i32 %6102)
  %6104 = trunc i32 %6103 to i8
  %6105 = and i8 %6104, 1
  %6106 = xor i8 %6105, 1
  store i8 %6106, i8* %21, align 1
  %6107 = xor i32 %6098, 16
  %6108 = xor i32 %6107, %6099
  %6109 = lshr i32 %6108, 4
  %6110 = trunc i32 %6109 to i8
  %6111 = and i8 %6110, 1
  store i8 %6111, i8* %27, align 1
  %6112 = icmp eq i32 %6099, 0
  %6113 = zext i1 %6112 to i8
  store i8 %6113, i8* %30, align 1
  %6114 = lshr i32 %6099, 31
  %6115 = trunc i32 %6114 to i8
  store i8 %6115, i8* %33, align 1
  %6116 = lshr i32 %6098, 31
  %6117 = xor i32 %6114, %6116
  %6118 = add nuw nsw i32 %6117, %6116
  %6119 = icmp eq i32 %6118, 2
  %6120 = zext i1 %6119 to i8
  store i8 %6120, i8* %39, align 1
  %6121 = icmp ne i8 %6115, 0
  %6122 = xor i1 %6121, %6119
  %.v146 = select i1 %6122, i64 13, i64 100
  %6123 = add i64 %6093, %.v146
  store i64 %6123, i64* %3, align 8
  br i1 %6122, label %block_40176c, label %block_.L_4017c3

block_40176c:                                     ; preds = %block_.L_40175f
  %6124 = add i64 %6123, 4
  store i64 %6124, i64* %PC.i, align 8
  %6125 = load i32, i32* %6097, align 4
  %6126 = sext i32 %6125 to i64
  store i64 %6126, i64* %RAX.i1508, align 8
  %6127 = shl nsw i64 %6126, 2
  %6128 = add nsw i64 %6127, 6303872
  %6129 = add i64 %6123, 12
  store i64 %6129, i64* %PC.i, align 8
  %6130 = inttoptr i64 %6128 to i32*
  %6131 = load i32, i32* %6130, align 4
  %6132 = add i32 %6131, 1
  %6133 = icmp ne i32 %6131, -1
  %6134 = zext i1 %6133 to i8
  store i8 %6134, i8* %14, align 1
  %6135 = and i32 %6132, 255
  %6136 = tail call i32 @llvm.ctpop.i32(i32 %6135)
  %6137 = trunc i32 %6136 to i8
  %6138 = and i8 %6137, 1
  %6139 = xor i8 %6138, 1
  store i8 %6139, i8* %21, align 1
  %6140 = xor i32 %6131, 16
  %6141 = xor i32 %6132, %6140
  %6142 = lshr i32 %6141, 4
  %6143 = trunc i32 %6142 to i8
  %6144 = and i8 %6143, 1
  store i8 %6144, i8* %27, align 1
  %6145 = icmp eq i32 %6132, 0
  %6146 = zext i1 %6145 to i8
  store i8 %6146, i8* %30, align 1
  %6147 = lshr i32 %6132, 31
  %6148 = trunc i32 %6147 to i8
  store i8 %6148, i8* %33, align 1
  %6149 = lshr i32 %6131, 31
  %6150 = xor i32 %6149, 1
  %6151 = xor i32 %6147, %6149
  %6152 = add nuw nsw i32 %6151, %6150
  %6153 = icmp eq i32 %6152, 2
  %6154 = zext i1 %6153 to i8
  store i8 %6154, i8* %39, align 1
  %.v147 = select i1 %6145, i64 53, i64 18
  %6155 = add i64 %6123, %.v147
  %6156 = add i64 %6155, 4
  store i64 %6156, i64* %PC.i, align 8
  %6157 = load i32, i32* %6097, align 4
  %6158 = sext i32 %6157 to i64
  store i64 %6158, i64* %RAX.i1508, align 8
  %6159 = shl nsw i64 %6158, 2
  %6160 = add nsw i64 %6159, 6303872
  br i1 %6145, label %block_.L_4017a1, label %block_40177e

block_40177e:                                     ; preds = %block_40176c
  %6161 = add i64 %6155, 12
  store i64 %6161, i64* %PC.i, align 8
  %6162 = inttoptr i64 %6160 to i32*
  %6163 = load i32, i32* %6162, align 4
  %6164 = sext i32 %6163 to i64
  store i64 %6164, i64* %RAX.i1508, align 8
  %6165 = shl nsw i64 %6164, 2
  %6166 = add nsw i64 %6165, 6305920
  %6167 = add i64 %6155, 19
  store i64 %6167, i64* %PC.i, align 8
  %6168 = inttoptr i64 %6166 to i32*
  %6169 = load i32, i32* %6168, align 4
  %6170 = zext i32 %6169 to i64
  store i64 %6170, i64* %RCX.i2066, align 8
  %6171 = add i64 %6155, 23
  store i64 %6171, i64* %PC.i, align 8
  %6172 = load i32, i32* %6097, align 4
  %6173 = sext i32 %6172 to i64
  store i64 %6173, i64* %RAX.i1508, align 8
  %6174 = shl nsw i64 %6173, 2
  %6175 = add nsw i64 %6174, 6303872
  %6176 = add i64 %6155, 30
  store i64 %6176, i64* %PC.i, align 8
  %6177 = inttoptr i64 %6175 to i32*
  store i32 %6169, i32* %6177, align 4
  %6178 = load i64, i64* %PC.i, align 8
  %6179 = add i64 %6178, 20
  store i64 %6179, i64* %3, align 8
  br label %block_.L_4017b0

block_.L_4017a1:                                  ; preds = %block_40176c
  %6180 = add i64 %6155, 15
  store i64 %6180, i64* %PC.i, align 8
  %6181 = inttoptr i64 %6160 to i32*
  store i32 0, i32* %6181, align 4
  %.pre81 = load i64, i64* %PC.i, align 8
  br label %block_.L_4017b0

block_.L_4017b0:                                  ; preds = %block_.L_4017a1, %block_40177e
  %6182 = phi i64 [ %.pre81, %block_.L_4017a1 ], [ %6179, %block_40177e ]
  %6183 = load i64, i64* %RBP.i, align 8
  %6184 = add i64 %6183, -4
  %6185 = add i64 %6182, 8
  store i64 %6185, i64* %PC.i, align 8
  %6186 = inttoptr i64 %6184 to i32*
  %6187 = load i32, i32* %6186, align 4
  %6188 = add i32 %6187, 1
  %6189 = zext i32 %6188 to i64
  store i64 %6189, i64* %RAX.i1508, align 8
  %6190 = icmp eq i32 %6187, -1
  %6191 = icmp eq i32 %6188, 0
  %6192 = or i1 %6190, %6191
  %6193 = zext i1 %6192 to i8
  store i8 %6193, i8* %14, align 1
  %6194 = and i32 %6188, 255
  %6195 = tail call i32 @llvm.ctpop.i32(i32 %6194)
  %6196 = trunc i32 %6195 to i8
  %6197 = and i8 %6196, 1
  %6198 = xor i8 %6197, 1
  store i8 %6198, i8* %21, align 1
  %6199 = xor i32 %6187, %6188
  %6200 = lshr i32 %6199, 4
  %6201 = trunc i32 %6200 to i8
  %6202 = and i8 %6201, 1
  store i8 %6202, i8* %27, align 1
  %6203 = icmp eq i32 %6188, 0
  %6204 = zext i1 %6203 to i8
  store i8 %6204, i8* %30, align 1
  %6205 = lshr i32 %6188, 31
  %6206 = trunc i32 %6205 to i8
  store i8 %6206, i8* %33, align 1
  %6207 = lshr i32 %6187, 31
  %6208 = xor i32 %6205, %6207
  %6209 = add nuw nsw i32 %6208, %6205
  %6210 = icmp eq i32 %6209, 2
  %6211 = zext i1 %6210 to i8
  store i8 %6211, i8* %39, align 1
  %6212 = add i64 %6182, 14
  store i64 %6212, i64* %PC.i, align 8
  store i32 %6188, i32* %6186, align 4
  %6213 = load i64, i64* %PC.i, align 8
  %6214 = add i64 %6213, -95
  store i64 %6214, i64* %3, align 8
  br label %block_.L_40175f

block_.L_4017c3:                                  ; preds = %block_.L_40175f
  %6215 = add i64 %6123, 5
  br label %block_.L_4017c8

block_.L_4017c8:                                  ; preds = %block_.L_4017c3, %block_.L_401753
  %.sink91 = phi i64 [ %6215, %block_.L_4017c3 ], [ %6092, %block_.L_401753 ]
  %MEMORY.51 = phi %struct.Memory* [ %MEMORY.21, %block_.L_4017c3 ], [ %MEMORY.48, %block_.L_401753 ]
  store i64 %.sink91, i64* %3, align 8
  %6216 = add i64 %.sink91, 117
  br label %block_.L_40183d

block_.L_4017cd:                                  ; preds = %block_.L_400a16
  %6217 = add i64 %410, 7
  store i64 %6217, i64* %PC.i, align 8
  store i32 0, i32* %64, align 4
  %.pre82 = load i64, i64* %PC.i, align 8
  br label %block_.L_4017d4

block_.L_4017d4:                                  ; preds = %block_.L_401825, %block_.L_4017cd
  %6218 = phi i64 [ %6339, %block_.L_401825 ], [ %.pre82, %block_.L_4017cd ]
  %6219 = load i64, i64* %RBP.i, align 8
  %6220 = add i64 %6219, -4
  %6221 = add i64 %6218, 7
  store i64 %6221, i64* %PC.i, align 8
  %6222 = inttoptr i64 %6220 to i32*
  %6223 = load i32, i32* %6222, align 4
  %6224 = add i32 %6223, -255
  %6225 = icmp ult i32 %6223, 255
  %6226 = zext i1 %6225 to i8
  store i8 %6226, i8* %14, align 1
  %6227 = and i32 %6224, 255
  %6228 = tail call i32 @llvm.ctpop.i32(i32 %6227)
  %6229 = trunc i32 %6228 to i8
  %6230 = and i8 %6229, 1
  %6231 = xor i8 %6230, 1
  store i8 %6231, i8* %21, align 1
  %6232 = xor i32 %6223, 16
  %6233 = xor i32 %6232, %6224
  %6234 = lshr i32 %6233, 4
  %6235 = trunc i32 %6234 to i8
  %6236 = and i8 %6235, 1
  store i8 %6236, i8* %27, align 1
  %6237 = icmp eq i32 %6224, 0
  %6238 = zext i1 %6237 to i8
  store i8 %6238, i8* %30, align 1
  %6239 = lshr i32 %6224, 31
  %6240 = trunc i32 %6239 to i8
  store i8 %6240, i8* %33, align 1
  %6241 = lshr i32 %6223, 31
  %6242 = xor i32 %6239, %6241
  %6243 = add nuw nsw i32 %6242, %6241
  %6244 = icmp eq i32 %6243, 2
  %6245 = zext i1 %6244 to i8
  store i8 %6245, i8* %39, align 1
  %6246 = icmp ne i8 %6240, 0
  %6247 = xor i1 %6246, %6244
  %.v161 = select i1 %6247, i64 13, i64 100
  %6248 = add i64 %6218, %.v161
  store i64 %6248, i64* %3, align 8
  br i1 %6247, label %block_4017e1, label %block_.L_401838

block_4017e1:                                     ; preds = %block_.L_4017d4
  %6249 = add i64 %6248, 4
  store i64 %6249, i64* %PC.i, align 8
  %6250 = load i32, i32* %6222, align 4
  %6251 = sext i32 %6250 to i64
  store i64 %6251, i64* %RAX.i1508, align 8
  %6252 = shl nsw i64 %6251, 2
  %6253 = add nsw i64 %6252, 6303872
  %6254 = add i64 %6248, 12
  store i64 %6254, i64* %PC.i, align 8
  %6255 = inttoptr i64 %6253 to i32*
  %6256 = load i32, i32* %6255, align 4
  %6257 = add i32 %6256, 1
  %6258 = icmp ne i32 %6256, -1
  %6259 = zext i1 %6258 to i8
  store i8 %6259, i8* %14, align 1
  %6260 = and i32 %6257, 255
  %6261 = tail call i32 @llvm.ctpop.i32(i32 %6260)
  %6262 = trunc i32 %6261 to i8
  %6263 = and i8 %6262, 1
  %6264 = xor i8 %6263, 1
  store i8 %6264, i8* %21, align 1
  %6265 = xor i32 %6256, 16
  %6266 = xor i32 %6257, %6265
  %6267 = lshr i32 %6266, 4
  %6268 = trunc i32 %6267 to i8
  %6269 = and i8 %6268, 1
  store i8 %6269, i8* %27, align 1
  %6270 = icmp eq i32 %6257, 0
  %6271 = zext i1 %6270 to i8
  store i8 %6271, i8* %30, align 1
  %6272 = lshr i32 %6257, 31
  %6273 = trunc i32 %6272 to i8
  store i8 %6273, i8* %33, align 1
  %6274 = lshr i32 %6256, 31
  %6275 = xor i32 %6274, 1
  %6276 = xor i32 %6272, %6274
  %6277 = add nuw nsw i32 %6276, %6275
  %6278 = icmp eq i32 %6277, 2
  %6279 = zext i1 %6278 to i8
  store i8 %6279, i8* %39, align 1
  %.v162 = select i1 %6270, i64 53, i64 18
  %6280 = add i64 %6248, %.v162
  %6281 = add i64 %6280, 4
  store i64 %6281, i64* %PC.i, align 8
  %6282 = load i32, i32* %6222, align 4
  %6283 = sext i32 %6282 to i64
  store i64 %6283, i64* %RAX.i1508, align 8
  %6284 = shl nsw i64 %6283, 2
  %6285 = add nsw i64 %6284, 6303872
  br i1 %6270, label %block_.L_401816, label %block_4017f3

block_4017f3:                                     ; preds = %block_4017e1
  %6286 = add i64 %6280, 12
  store i64 %6286, i64* %PC.i, align 8
  %6287 = inttoptr i64 %6285 to i32*
  %6288 = load i32, i32* %6287, align 4
  %6289 = sext i32 %6288 to i64
  store i64 %6289, i64* %RAX.i1508, align 8
  %6290 = shl nsw i64 %6289, 2
  %6291 = add nsw i64 %6290, 6305920
  %6292 = add i64 %6280, 19
  store i64 %6292, i64* %PC.i, align 8
  %6293 = inttoptr i64 %6291 to i32*
  %6294 = load i32, i32* %6293, align 4
  %6295 = zext i32 %6294 to i64
  store i64 %6295, i64* %RCX.i2066, align 8
  %6296 = add i64 %6280, 23
  store i64 %6296, i64* %PC.i, align 8
  %6297 = load i32, i32* %6222, align 4
  %6298 = sext i32 %6297 to i64
  store i64 %6298, i64* %RAX.i1508, align 8
  %6299 = shl nsw i64 %6298, 2
  %6300 = add nsw i64 %6299, 6303872
  %6301 = add i64 %6280, 30
  store i64 %6301, i64* %PC.i, align 8
  %6302 = inttoptr i64 %6300 to i32*
  store i32 %6294, i32* %6302, align 4
  %6303 = load i64, i64* %PC.i, align 8
  %6304 = add i64 %6303, 20
  store i64 %6304, i64* %3, align 8
  br label %block_.L_401825

block_.L_401816:                                  ; preds = %block_4017e1
  %6305 = add i64 %6280, 15
  store i64 %6305, i64* %PC.i, align 8
  %6306 = inttoptr i64 %6285 to i32*
  store i32 0, i32* %6306, align 4
  %.pre83 = load i64, i64* %PC.i, align 8
  br label %block_.L_401825

block_.L_401825:                                  ; preds = %block_.L_401816, %block_4017f3
  %6307 = phi i64 [ %.pre83, %block_.L_401816 ], [ %6304, %block_4017f3 ]
  %6308 = load i64, i64* %RBP.i, align 8
  %6309 = add i64 %6308, -4
  %6310 = add i64 %6307, 8
  store i64 %6310, i64* %PC.i, align 8
  %6311 = inttoptr i64 %6309 to i32*
  %6312 = load i32, i32* %6311, align 4
  %6313 = add i32 %6312, 1
  %6314 = zext i32 %6313 to i64
  store i64 %6314, i64* %RAX.i1508, align 8
  %6315 = icmp eq i32 %6312, -1
  %6316 = icmp eq i32 %6313, 0
  %6317 = or i1 %6315, %6316
  %6318 = zext i1 %6317 to i8
  store i8 %6318, i8* %14, align 1
  %6319 = and i32 %6313, 255
  %6320 = tail call i32 @llvm.ctpop.i32(i32 %6319)
  %6321 = trunc i32 %6320 to i8
  %6322 = and i8 %6321, 1
  %6323 = xor i8 %6322, 1
  store i8 %6323, i8* %21, align 1
  %6324 = xor i32 %6312, %6313
  %6325 = lshr i32 %6324, 4
  %6326 = trunc i32 %6325 to i8
  %6327 = and i8 %6326, 1
  store i8 %6327, i8* %27, align 1
  %6328 = icmp eq i32 %6313, 0
  %6329 = zext i1 %6328 to i8
  store i8 %6329, i8* %30, align 1
  %6330 = lshr i32 %6313, 31
  %6331 = trunc i32 %6330 to i8
  store i8 %6331, i8* %33, align 1
  %6332 = lshr i32 %6312, 31
  %6333 = xor i32 %6330, %6332
  %6334 = add nuw nsw i32 %6333, %6330
  %6335 = icmp eq i32 %6334, 2
  %6336 = zext i1 %6335 to i8
  store i8 %6336, i8* %39, align 1
  %6337 = add i64 %6307, 14
  store i64 %6337, i64* %PC.i, align 8
  store i32 %6313, i32* %6311, align 4
  %6338 = load i64, i64* %PC.i, align 8
  %6339 = add i64 %6338, -95
  store i64 %6339, i64* %3, align 8
  br label %block_.L_4017d4

block_.L_401838:                                  ; preds = %block_.L_4017d4
  %6340 = add i64 %6248, 5
  br label %block_.L_40183d

block_.L_40183d:                                  ; preds = %block_.L_401838, %block_.L_4017c8
  %.sink93 = phi i64 [ %6340, %block_.L_401838 ], [ %6216, %block_.L_4017c8 ]
  %MEMORY.54 = phi %struct.Memory* [ %MEMORY.0, %block_.L_401838 ], [ %MEMORY.51, %block_.L_4017c8 ]
  %6341 = load i64, i64* %RSP.i178, align 8
  %6342 = add i64 %6341, 2608
  store i64 %6342, i64* %RSP.i178, align 8
  %6343 = icmp ugt i64 %6341, -2609
  %6344 = zext i1 %6343 to i8
  store i8 %6344, i8* %14, align 1
  %6345 = trunc i64 %6342 to i32
  %6346 = and i32 %6345, 255
  %6347 = tail call i32 @llvm.ctpop.i32(i32 %6346)
  %6348 = trunc i32 %6347 to i8
  %6349 = and i8 %6348, 1
  %6350 = xor i8 %6349, 1
  store i8 %6350, i8* %21, align 1
  %6351 = xor i64 %6341, 16
  %6352 = xor i64 %6351, %6342
  %6353 = lshr i64 %6352, 4
  %6354 = trunc i64 %6353 to i8
  %6355 = and i8 %6354, 1
  store i8 %6355, i8* %27, align 1
  %6356 = icmp eq i64 %6342, 0
  %6357 = zext i1 %6356 to i8
  store i8 %6357, i8* %30, align 1
  %6358 = lshr i64 %6342, 63
  %6359 = trunc i64 %6358 to i8
  store i8 %6359, i8* %33, align 1
  %6360 = lshr i64 %6341, 63
  %6361 = xor i64 %6358, %6360
  %6362 = add nuw nsw i64 %6361, %6358
  %6363 = icmp eq i64 %6362, 2
  %6364 = zext i1 %6363 to i8
  store i8 %6364, i8* %39, align 1
  %6365 = add i64 %.sink93, 8
  store i64 %6365, i64* %PC.i, align 8
  %6366 = add i64 %6341, 2616
  %6367 = inttoptr i64 %6342 to i64*
  %6368 = load i64, i64* %6367, align 8
  store i64 %6368, i64* %RBP.i, align 8
  store i64 %6366, i64* %6, align 8
  %6369 = add i64 %.sink93, 9
  store i64 %6369, i64* %PC.i, align 8
  %6370 = inttoptr i64 %6366 to i64*
  %6371 = load i64, i64* %6370, align 8
  store i64 %6371, i64* %3, align 8
  %6372 = add i64 %6341, 2624
  store i64 %6372, i64* %6, align 8
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
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %18 = add i64 %3, %.v
  store i64 %18, i64* %17, align 8
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
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %14 = add i64 %3, %.v
  store i64 %14, i64* %13, align 8
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
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7 = icmp ne i8 %5, 0
  %.v = select i1 %7, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %3, %.v
  store i64 %8, i64* %6, align 8
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
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
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
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
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
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7 = icmp ne i8 %5, 0
  %.v = select i1 %7, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %3, %.v
  store i64 %8, i64* %6, align 8
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
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
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
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7 = icmp ne i8 %5, 0
  %.v = select i1 %7, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %3, %.v
  store i64 %8, i64* %6, align 8
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
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %14 = add i64 %3, %.v
  store i64 %14, i64* %13, align 8
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
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
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
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %9 = add i64 %3, %.v
  store i64 %9, i64* %8, align 8
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
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %18 = add i64 %3, %.v
  store i64 %18, i64* %17, align 8
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
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400e3a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
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
  %18 = trunc i64 %3 to i32
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
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %9 = add i64 %3, %.v
  store i64 %9, i64* %8, align 8
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
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %9 = add i64 %3, %.v
  store i64 %9, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400bd5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
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
  %18 = trunc i64 %3 to i32
  %19 = xor i32 %18, 16
  %20 = xor i32 %7, %19
  %21 = lshr i32 %20, 4
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %23, i8* %24, align 1
  %25 = icmp eq i32 %7, 0
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %7, 31
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %6, 31
  %32 = xor i32 %28, %31
  %33 = xor i32 %28, 1
  %34 = add nuw nsw i32 %32, %33
  %35 = icmp eq i32 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400b8b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
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
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %14, i64 %rel_off1, i64 %rel_off2
  %17 = add i64 %3, %.v
  store i64 %17, i64* %16, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_400c22(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7 = icmp ne i8 %5, 0
  %.v = select i1 %7, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %3, %.v
  store i64 %8, i64* %6, align 8
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
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %14 = add i64 %3, %.v
  store i64 %14, i64* %13, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400c27(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
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
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %18 = add i64 %3, %.v
  store i64 %18, i64* %17, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400c36(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
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
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %14, i64 %rel_off1, i64 %rel_off2
  %17 = add i64 %3, %.v
  store i64 %17, i64* %16, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400c9b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
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
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %14 = add i64 %3, %.v
  store i64 %14, i64* %13, align 8
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
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
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
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %18 = add i64 %3, %.v
  store i64 %18, i64* %17, align 8
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
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7 = icmp ne i8 %5, 0
  %.v = select i1 %7, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %3, %.v
  store i64 %8, i64* %6, align 8
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
  %18 = trunc i64 %3 to i32
  %19 = xor i32 %18, 16
  %20 = xor i32 %19, %7
  %21 = lshr i32 %20, 4
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %23, i8* %24, align 1
  %25 = icmp eq i32 %7, 0
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %7, 31
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %6, 31
  %32 = xor i32 %28, %31
  %33 = add nuw nsw i32 %32, %28
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
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
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400ce3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
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
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %18 = add i64 %3, %.v
  store i64 %18, i64* %17, align 8
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
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
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
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %14 = add i64 %3, %.v
  store i64 %14, i64* %13, align 8
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
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7 = icmp ne i8 %5, 0
  %.v = select i1 %7, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %3, %.v
  store i64 %8, i64* %6, align 8
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
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
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
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %18 = add i64 %3, %.v
  store i64 %18, i64* %17, align 8
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
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7 = icmp ne i8 %5, 0
  %.v = select i1 %7, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %3, %.v
  store i64 %8, i64* %6, align 8
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
  %26 = icmp eq i32 %8, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %8, 31
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %5, 31
  %33 = xor i32 %29, %32
  %34 = add nuw nsw i32 %33, %29
  %35 = icmp eq i32 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
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
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400ec6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
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
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
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
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %14 = add i64 %3, %.v
  store i64 %14, i64* %13, align 8
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
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %9 = add i64 %3, %.v
  store i64 %9, i64* %8, align 8
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
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %18 = add i64 %3, %.v
  store i64 %18, i64* %17, align 8
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
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %18 = add i64 %3, %.v
  store i64 %18, i64* %17, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_40102e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
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
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %18 = add i64 %3, %.v
  store i64 %18, i64* %17, align 8
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
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
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
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %18 = add i64 %3, %.v
  store i64 %18, i64* %17, align 8
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
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %18 = add i64 %3, %.v
  store i64 %18, i64* %17, align 8
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
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7 = icmp ne i8 %5, 0
  %.v = select i1 %7, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %3, %.v
  store i64 %8, i64* %6, align 8
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
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4010ff(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
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
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %9 = add i64 %3, %.v
  store i64 %9, i64* %8, align 8
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
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4010e4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
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
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %9 = add i64 %3, %.v
  store i64 %9, i64* %8, align 8
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
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %18 = add i64 %3, %.v
  store i64 %18, i64* %17, align 8
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
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7 = icmp ne i8 %5, 0
  %.v = select i1 %7, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %3, %.v
  store i64 %8, i64* %6, align 8
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
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_4012d0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7 = icmp ne i8 %5, 0
  %.v = select i1 %7, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %3, %.v
  store i64 %8, i64* %6, align 8
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
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %9 = add i64 %3, %.v
  store i64 %9, i64* %8, align 8
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
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
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
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %9 = add i64 %3, %.v
  store i64 %9, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_401333(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7 = icmp ne i8 %5, 0
  %.v = select i1 %7, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %3, %.v
  store i64 %8, i64* %6, align 8
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
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
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
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %14 = add i64 %3, %.v
  store i64 %14, i64* %13, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_4013f1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7 = icmp ne i8 %5, 0
  %.v = select i1 %7, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %3, %.v
  store i64 %8, i64* %6, align 8
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
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_401353(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
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
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
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
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %14 = add i64 %3, %.v
  store i64 %14, i64* %13, align 8
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
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7 = icmp ne i8 %5, 0
  %.v = select i1 %7, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %3, %.v
  store i64 %8, i64* %6, align 8
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
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
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
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_401437(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
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
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %14 = add i64 %3, %.v
  store i64 %14, i64* %13, align 8
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
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %18 = add i64 %3, %.v
  store i64 %18, i64* %17, align 8
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
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7 = icmp ne i8 %5, 0
  %.v = select i1 %7, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %3, %.v
  store i64 %8, i64* %6, align 8
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
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4014e3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
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
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7 = icmp ne i8 %5, 0
  %.v = select i1 %7, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %3, %.v
  store i64 %8, i64* %6, align 8
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
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %14 = add i64 %3, %.v
  store i64 %14, i64* %13, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_401631(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7 = icmp ne i8 %5, 0
  %.v = select i1 %7, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %3, %.v
  store i64 %8, i64* %6, align 8
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
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4015c8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
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
  %18 = trunc i64 %3 to i32
  %19 = xor i32 %18, 16
  %20 = xor i32 %19, %7
  %21 = lshr i32 %20, 4
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %23, i8* %24, align 1
  %25 = icmp eq i32 %7, 0
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %7, 31
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %6, 31
  %32 = xor i32 %28, %31
  %33 = add nuw nsw i32 %32, %28
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
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
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4014b1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_401753(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
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
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %14 = add i64 %3, %.v
  store i64 %14, i64* %13, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_40172c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7 = icmp ne i8 %5, 0
  %.v = select i1 %7, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %3, %.v
  store i64 %8, i64* %6, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_40173b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_401740(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4016ea(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4017c8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
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
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %14 = add i64 %3, %.v
  store i64 %14, i64* %13, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_4017a1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7 = icmp ne i8 %5, 0
  %.v = select i1 %7, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %3, %.v
  store i64 %8, i64* %6, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4017b0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4017b5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_40175f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_40183d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
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
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %14 = add i64 %3, %.v
  store i64 %14, i64* %13, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_401816(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7 = icmp ne i8 %5, 0
  %.v = select i1 %7, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %3, %.v
  store i64 %8, i64* %6, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_401825(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_40182a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4017d4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
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
