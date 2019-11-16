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
define %struct.Memory* @edge_closing_backfill(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %RAX.i390 = getelementptr inbounds %union.anon, %union.anon* %11, i64 0, i32 0
  store i64 3, i64* %RAX.i390, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i = bitcast %union.anon* %12 to i32*
  %13 = add i64 %7, -16
  %14 = load i32, i32* %EDI.i, align 4
  %15 = add i64 %10, 11
  store i64 %15, i64* %3, align 8
  %16 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %16, align 4
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i385 = bitcast %union.anon* %17 to i32*
  %18 = load i64, i64* %RBP.i, align 8
  %19 = add i64 %18, -12
  %20 = load i32, i32* %ESI.i385, align 4
  %21 = load i64, i64* %3, align 8
  %22 = add i64 %21, 3
  store i64 %22, i64* %3, align 8
  %23 = inttoptr i64 %19 to i32*
  store i32 %20, i32* %23, align 4
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %RDX.i382 = getelementptr inbounds %union.anon, %union.anon* %24, i64 0, i32 0
  %25 = load i64, i64* %RBP.i, align 8
  %26 = add i64 %25, -24
  %27 = load i64, i64* %RDX.i382, align 8
  %28 = load i64, i64* %3, align 8
  %29 = add i64 %28, 4
  store i64 %29, i64* %3, align 8
  %30 = inttoptr i64 %26 to i64*
  store i64 %27, i64* %30, align 8
  %31 = load i64, i64* %RBP.i, align 8
  %32 = add i64 %31, -8
  %33 = load i64, i64* %3, align 8
  %34 = add i64 %33, 4
  store i64 %34, i64* %3, align 8
  %35 = inttoptr i64 %32 to i32*
  %36 = load i32, i32* %35, align 4
  %37 = sext i32 %36 to i64
  store i64 %37, i64* %RDX.i382, align 8
  %RSI.i377 = getelementptr inbounds %union.anon, %union.anon* %17, i64 0, i32 0
  %38 = add nsw i64 %37, 12099168
  %39 = add i64 %33, 12
  store i64 %39, i64* %3, align 8
  %40 = inttoptr i64 %38 to i8*
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i64
  store i64 %42, i64* %RSI.i377, align 8
  %43 = add i64 %31, -28
  %44 = zext i8 %41 to i32
  %45 = add i64 %33, 15
  store i64 %45, i64* %3, align 8
  %46 = inttoptr i64 %43 to i32*
  store i32 %44, i32* %46, align 4
  %47 = load i64, i64* %RAX.i390, align 8
  %48 = load i64, i64* %RBP.i, align 8
  %49 = add i64 %48, -28
  %50 = load i64, i64* %3, align 8
  %51 = add i64 %50, 3
  store i64 %51, i64* %3, align 8
  %52 = trunc i64 %47 to i32
  %53 = inttoptr i64 %49 to i32*
  %54 = load i32, i32* %53, align 4
  %55 = sub i32 %52, %54
  %56 = zext i32 %55 to i64
  store i64 %56, i64* %RAX.i390, align 8
  %57 = icmp ult i32 %52, %54
  %58 = zext i1 %57 to i8
  %59 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %58, i8* %59, align 1
  %60 = and i32 %55, 255
  %61 = tail call i32 @llvm.ctpop.i32(i32 %60)
  %62 = trunc i32 %61 to i8
  %63 = and i8 %62, 1
  %64 = xor i8 %63, 1
  %65 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %64, i8* %65, align 1
  %66 = xor i32 %54, %52
  %67 = xor i32 %66, %55
  %68 = lshr i32 %67, 4
  %69 = trunc i32 %68 to i8
  %70 = and i8 %69, 1
  %71 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %70, i8* %71, align 1
  %72 = icmp eq i32 %55, 0
  %73 = zext i1 %72 to i8
  %74 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %73, i8* %74, align 1
  %75 = lshr i32 %55, 31
  %76 = trunc i32 %75 to i8
  %77 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %76, i8* %77, align 1
  %78 = lshr i32 %52, 31
  %79 = lshr i32 %54, 31
  %80 = xor i32 %79, %78
  %81 = xor i32 %75, %78
  %82 = add nuw nsw i32 %81, %80
  %83 = icmp eq i32 %82, 2
  %84 = zext i1 %83 to i8
  %85 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %84, i8* %85, align 1
  %EAX.i367 = bitcast %union.anon* %11 to i32*
  %86 = add i64 %48, -32
  %87 = add i64 %50, 6
  store i64 %87, i64* %3, align 8
  %88 = inttoptr i64 %86 to i32*
  store i32 %55, i32* %88, align 4
  %89 = load i64, i64* %RBP.i, align 8
  %90 = add i64 %89, -36
  %91 = load i64, i64* %3, align 8
  %92 = add i64 %91, 7
  store i64 %92, i64* %3, align 8
  %93 = inttoptr i64 %90 to i32*
  store i32 0, i32* %93, align 4
  %RCX.i357 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %EDX.i351 = bitcast %union.anon* %24 to i32*
  %94 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_46215f

block_.L_46215f:                                  ; preds = %block_4621b4, %entry
  %95 = phi i64 [ %.pre, %entry ], [ %299, %block_4621b4 ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %entry ], [ %199, %block_4621b4 ]
  %96 = load i64, i64* %RBP.i, align 8
  %97 = add i64 %96, -36
  %98 = add i64 %95, 4
  store i64 %98, i64* %3, align 8
  %99 = inttoptr i64 %97 to i32*
  %100 = load i32, i32* %99, align 4
  %101 = add i32 %100, -4
  %102 = icmp ult i32 %100, 4
  %103 = zext i1 %102 to i8
  store i8 %103, i8* %59, align 1
  %104 = and i32 %101, 255
  %105 = tail call i32 @llvm.ctpop.i32(i32 %104)
  %106 = trunc i32 %105 to i8
  %107 = and i8 %106, 1
  %108 = xor i8 %107, 1
  store i8 %108, i8* %65, align 1
  %109 = xor i32 %101, %100
  %110 = lshr i32 %109, 4
  %111 = trunc i32 %110 to i8
  %112 = and i8 %111, 1
  store i8 %112, i8* %71, align 1
  %113 = icmp eq i32 %101, 0
  %114 = zext i1 %113 to i8
  store i8 %114, i8* %74, align 1
  %115 = lshr i32 %101, 31
  %116 = trunc i32 %115 to i8
  store i8 %116, i8* %77, align 1
  %117 = lshr i32 %100, 31
  %118 = xor i32 %115, %117
  %119 = add nuw nsw i32 %118, %117
  %120 = icmp eq i32 %119, 2
  %121 = zext i1 %120 to i8
  store i8 %121, i8* %85, align 1
  %122 = icmp ne i8 %116, 0
  %123 = xor i1 %122, %120
  %.v36 = select i1 %123, i64 10, i64 640
  %124 = add i64 %95, %.v36
  store i64 %124, i64* %3, align 8
  br i1 %123, label %block_462169, label %block_.L_4623df

block_462169:                                     ; preds = %block_.L_46215f
  store i64 4, i64* %RAX.i390, align 8
  %125 = add i64 %124, 9
  store i64 %125, i64* %3, align 8
  %126 = load i32, i32* %99, align 4
  %127 = sext i32 %126 to i64
  store i64 %127, i64* %RCX.i357, align 8
  %128 = shl nsw i64 %127, 2
  %129 = add nsw i64 %128, 8053168
  %130 = add i64 %124, 16
  store i64 %130, i64* %3, align 8
  %131 = inttoptr i64 %129 to i32*
  %132 = load i32, i32* %131, align 4
  %133 = zext i32 %132 to i64
  store i64 %133, i64* %RDX.i382, align 8
  %134 = add i64 %96, -56
  %135 = add i64 %124, 19
  store i64 %135, i64* %3, align 8
  %136 = inttoptr i64 %134 to i32*
  store i32 %132, i32* %136, align 4
  %137 = load i64, i64* %RBP.i, align 8
  %138 = add i64 %137, -36
  %139 = load i64, i64* %3, align 8
  %140 = add i64 %139, 3
  store i64 %140, i64* %3, align 8
  %141 = inttoptr i64 %138 to i32*
  %142 = load i32, i32* %141, align 4
  %143 = add i32 %142, 1
  %144 = zext i32 %143 to i64
  store i64 %144, i64* %RDX.i382, align 8
  %145 = icmp eq i32 %142, -1
  %146 = icmp eq i32 %143, 0
  %147 = or i1 %145, %146
  %148 = zext i1 %147 to i8
  store i8 %148, i8* %59, align 1
  %149 = and i32 %143, 255
  %150 = tail call i32 @llvm.ctpop.i32(i32 %149)
  %151 = trunc i32 %150 to i8
  %152 = and i8 %151, 1
  %153 = xor i8 %152, 1
  store i8 %153, i8* %65, align 1
  %154 = xor i32 %143, %142
  %155 = lshr i32 %154, 4
  %156 = trunc i32 %155 to i8
  %157 = and i8 %156, 1
  store i8 %157, i8* %71, align 1
  %158 = zext i1 %146 to i8
  store i8 %158, i8* %74, align 1
  %159 = lshr i32 %143, 31
  %160 = trunc i32 %159 to i8
  store i8 %160, i8* %77, align 1
  %161 = lshr i32 %142, 31
  %162 = xor i32 %159, %161
  %163 = add nuw nsw i32 %162, %159
  %164 = icmp eq i32 %163, 2
  %165 = zext i1 %164 to i8
  store i8 %165, i8* %85, align 1
  %166 = add i64 %137, -64
  %167 = load i32, i32* %EAX.i367, align 4
  %168 = add i64 %139, 9
  store i64 %168, i64* %3, align 8
  %169 = inttoptr i64 %166 to i32*
  store i32 %167, i32* %169, align 4
  %170 = load i32, i32* %EDX.i351, align 4
  %171 = zext i32 %170 to i64
  %172 = load i64, i64* %3, align 8
  store i64 %171, i64* %RAX.i390, align 8
  %173 = sext i32 %170 to i64
  %174 = lshr i64 %173, 32
  store i64 %174, i64* %94, align 8
  %175 = load i64, i64* %RBP.i, align 8
  %176 = add i64 %175, -64
  %177 = add i64 %172, 6
  store i64 %177, i64* %3, align 8
  %178 = inttoptr i64 %176 to i32*
  %179 = load i32, i32* %178, align 4
  %180 = zext i32 %179 to i64
  store i64 %180, i64* %RSI.i377, align 8
  %181 = add i64 %172, 8
  store i64 %181, i64* %3, align 8
  %182 = sext i32 %179 to i64
  %183 = shl nuw i64 %174, 32
  %184 = or i64 %183, %171
  %185 = sdiv i64 %184, %182
  %186 = shl i64 %185, 32
  %187 = ashr exact i64 %186, 32
  %188 = icmp eq i64 %185, %187
  br i1 %188, label %191, label %189

; <label>:189:                                    ; preds = %block_462169
  %190 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %181, %struct.Memory* %MEMORY.0)
  %.pre29 = load i32, i32* %EDX.i351, align 4
  %.pre30 = load i64, i64* %3, align 8
  %.pre31 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__esi.exit

; <label>:191:                                    ; preds = %block_462169
  %192 = srem i64 %184, %182
  %193 = and i64 %185, 4294967295
  store i64 %193, i64* %RAX.i390, align 8
  %194 = and i64 %192, 4294967295
  store i64 %194, i64* %RDX.i382, align 8
  store i8 0, i8* %59, align 1
  store i8 0, i8* %65, align 1
  store i8 0, i8* %71, align 1
  store i8 0, i8* %74, align 1
  store i8 0, i8* %77, align 1
  store i8 0, i8* %85, align 1
  %195 = trunc i64 %192 to i32
  br label %routine_idivl__esi.exit

routine_idivl__esi.exit:                          ; preds = %191, %189
  %196 = phi i64 [ %.pre31, %189 ], [ %175, %191 ]
  %197 = phi i64 [ %.pre30, %189 ], [ %181, %191 ]
  %198 = phi i32 [ %.pre29, %189 ], [ %195, %191 ]
  %199 = phi %struct.Memory* [ %190, %189 ], [ %MEMORY.0, %191 ]
  %200 = sext i32 %198 to i64
  store i64 %200, i64* %RCX.i357, align 8
  %201 = shl nsw i64 %200, 2
  %202 = add nsw i64 %201, 8053168
  %203 = add i64 %197, 10
  store i64 %203, i64* %3, align 8
  %204 = inttoptr i64 %202 to i32*
  %205 = load i32, i32* %204, align 4
  %206 = zext i32 %205 to i64
  store i64 %206, i64* %RDX.i382, align 8
  %207 = add i64 %196, -60
  %208 = add i64 %197, 13
  store i64 %208, i64* %3, align 8
  %209 = inttoptr i64 %207 to i32*
  store i32 %205, i32* %209, align 4
  %210 = load i64, i64* %RBP.i, align 8
  %211 = add i64 %210, -12
  %212 = load i64, i64* %3, align 8
  %213 = add i64 %212, 3
  store i64 %213, i64* %3, align 8
  %214 = inttoptr i64 %211 to i32*
  %215 = load i32, i32* %214, align 4
  %216 = zext i32 %215 to i64
  store i64 %216, i64* %RDX.i382, align 8
  %217 = add i64 %210, -56
  %218 = add i64 %212, 6
  store i64 %218, i64* %3, align 8
  %219 = inttoptr i64 %217 to i32*
  %220 = load i32, i32* %219, align 4
  %221 = sub i32 %215, %220
  %222 = zext i32 %221 to i64
  store i64 %222, i64* %RDX.i382, align 8
  %223 = icmp ult i32 %215, %220
  %224 = zext i1 %223 to i8
  store i8 %224, i8* %59, align 1
  %225 = and i32 %221, 255
  %226 = tail call i32 @llvm.ctpop.i32(i32 %225)
  %227 = trunc i32 %226 to i8
  %228 = and i8 %227, 1
  %229 = xor i8 %228, 1
  store i8 %229, i8* %65, align 1
  %230 = xor i32 %220, %215
  %231 = xor i32 %230, %221
  %232 = lshr i32 %231, 4
  %233 = trunc i32 %232 to i8
  %234 = and i8 %233, 1
  store i8 %234, i8* %71, align 1
  %235 = icmp eq i32 %221, 0
  %236 = zext i1 %235 to i8
  store i8 %236, i8* %74, align 1
  %237 = lshr i32 %221, 31
  %238 = trunc i32 %237 to i8
  store i8 %238, i8* %77, align 1
  %239 = lshr i32 %215, 31
  %240 = lshr i32 %220, 31
  %241 = xor i32 %240, %239
  %242 = xor i32 %237, %239
  %243 = add nuw nsw i32 %242, %241
  %244 = icmp eq i32 %243, 2
  %245 = zext i1 %244 to i8
  store i8 %245, i8* %85, align 1
  %246 = sext i32 %221 to i64
  store i64 %246, i64* %RCX.i357, align 8
  %247 = add nsw i64 %246, 12099168
  %248 = add i64 %212, 17
  store i64 %248, i64* %3, align 8
  %249 = inttoptr i64 %247 to i8*
  %250 = load i8, i8* %249, align 1
  %251 = zext i8 %250 to i64
  store i64 %251, i64* %RDX.i382, align 8
  %252 = zext i8 %250 to i32
  %253 = add nsw i32 %252, -3
  %254 = icmp ult i8 %250, 3
  %255 = zext i1 %254 to i8
  store i8 %255, i8* %59, align 1
  %256 = and i32 %253, 255
  %257 = tail call i32 @llvm.ctpop.i32(i32 %256)
  %258 = trunc i32 %257 to i8
  %259 = and i8 %258, 1
  %260 = xor i8 %259, 1
  store i8 %260, i8* %65, align 1
  %261 = xor i32 %253, %252
  %262 = lshr i32 %261, 4
  %263 = trunc i32 %262 to i8
  %264 = and i8 %263, 1
  store i8 %264, i8* %71, align 1
  %265 = icmp eq i32 %253, 0
  %266 = zext i1 %265 to i8
  store i8 %266, i8* %74, align 1
  %267 = lshr i32 %253, 31
  %268 = trunc i32 %267 to i8
  store i8 %268, i8* %77, align 1
  store i8 0, i8* %85, align 1
  %.v = select i1 %265, i64 31, i64 26
  %269 = add i64 %212, %.v
  store i64 %269, i64* %3, align 8
  br i1 %265, label %block_.L_4621b9, label %block_4621b4

block_4621b4:                                     ; preds = %routine_idivl__esi.exit
  %270 = add i64 %210, -36
  %271 = add i64 %269, 544
  store i64 %271, i64* %3, align 8
  %272 = inttoptr i64 %270 to i32*
  %273 = load i32, i32* %272, align 4
  %274 = add i32 %273, 1
  %275 = zext i32 %274 to i64
  store i64 %275, i64* %RAX.i390, align 8
  %276 = icmp eq i32 %273, -1
  %277 = icmp eq i32 %274, 0
  %278 = or i1 %276, %277
  %279 = zext i1 %278 to i8
  store i8 %279, i8* %59, align 1
  %280 = and i32 %274, 255
  %281 = tail call i32 @llvm.ctpop.i32(i32 %280)
  %282 = trunc i32 %281 to i8
  %283 = and i8 %282, 1
  %284 = xor i8 %283, 1
  store i8 %284, i8* %65, align 1
  %285 = xor i32 %274, %273
  %286 = lshr i32 %285, 4
  %287 = trunc i32 %286 to i8
  %288 = and i8 %287, 1
  store i8 %288, i8* %71, align 1
  %289 = zext i1 %277 to i8
  store i8 %289, i8* %74, align 1
  %290 = lshr i32 %274, 31
  %291 = trunc i32 %290 to i8
  store i8 %291, i8* %77, align 1
  %292 = lshr i32 %273, 31
  %293 = xor i32 %290, %292
  %294 = add nuw nsw i32 %293, %290
  %295 = icmp eq i32 %294, 2
  %296 = zext i1 %295 to i8
  store i8 %296, i8* %85, align 1
  %297 = add i64 %269, 550
  store i64 %297, i64* %3, align 8
  store i32 %274, i32* %272, align 4
  %298 = load i64, i64* %3, align 8
  %299 = add i64 %298, -635
  store i64 %299, i64* %3, align 8
  br label %block_.L_46215f

block_.L_4621b9:                                  ; preds = %routine_idivl__esi.exit
  %300 = add i64 %269, 3
  store i64 %300, i64* %3, align 8
  %301 = load i32, i32* %214, align 4
  %302 = zext i32 %301 to i64
  store i64 %302, i64* %RAX.i390, align 8
  %303 = add i64 %269, 6
  store i64 %303, i64* %3, align 8
  %304 = load i32, i32* %219, align 4
  %305 = add i32 %304, %301
  %306 = zext i32 %305 to i64
  store i64 %306, i64* %RAX.i390, align 8
  %307 = icmp ult i32 %305, %301
  %308 = icmp ult i32 %305, %304
  %309 = or i1 %307, %308
  %310 = zext i1 %309 to i8
  store i8 %310, i8* %59, align 1
  %311 = and i32 %305, 255
  %312 = tail call i32 @llvm.ctpop.i32(i32 %311)
  %313 = trunc i32 %312 to i8
  %314 = and i8 %313, 1
  %315 = xor i8 %314, 1
  store i8 %315, i8* %65, align 1
  %316 = xor i32 %304, %301
  %317 = xor i32 %316, %305
  %318 = lshr i32 %317, 4
  %319 = trunc i32 %318 to i8
  %320 = and i8 %319, 1
  store i8 %320, i8* %71, align 1
  %321 = icmp eq i32 %305, 0
  %322 = zext i1 %321 to i8
  store i8 %322, i8* %74, align 1
  %323 = lshr i32 %305, 31
  %324 = trunc i32 %323 to i8
  store i8 %324, i8* %77, align 1
  %325 = lshr i32 %301, 31
  %326 = lshr i32 %304, 31
  %327 = xor i32 %323, %325
  %328 = xor i32 %323, %326
  %329 = add nuw nsw i32 %327, %328
  %330 = icmp eq i32 %329, 2
  %331 = zext i1 %330 to i8
  store i8 %331, i8* %85, align 1
  %332 = sext i32 %305 to i64
  store i64 %332, i64* %RCX.i357, align 8
  %333 = add nsw i64 %332, 12099168
  %334 = add i64 %269, 17
  store i64 %334, i64* %3, align 8
  %335 = inttoptr i64 %333 to i8*
  %336 = load i8, i8* %335, align 1
  %337 = zext i8 %336 to i64
  store i64 %337, i64* %RAX.i390, align 8
  %338 = zext i8 %336 to i32
  %339 = add i64 %210, -28
  %340 = add i64 %269, 20
  store i64 %340, i64* %3, align 8
  %341 = inttoptr i64 %339 to i32*
  %342 = load i32, i32* %341, align 4
  %343 = sub i32 %338, %342
  %344 = icmp ult i32 %338, %342
  %345 = zext i1 %344 to i8
  store i8 %345, i8* %59, align 1
  %346 = and i32 %343, 255
  %347 = tail call i32 @llvm.ctpop.i32(i32 %346)
  %348 = trunc i32 %347 to i8
  %349 = and i8 %348, 1
  %350 = xor i8 %349, 1
  store i8 %350, i8* %65, align 1
  %351 = xor i32 %342, %338
  %352 = xor i32 %351, %343
  %353 = lshr i32 %352, 4
  %354 = trunc i32 %353 to i8
  %355 = and i8 %354, 1
  store i8 %355, i8* %71, align 1
  %356 = icmp eq i32 %343, 0
  %357 = zext i1 %356 to i8
  store i8 %357, i8* %74, align 1
  %358 = lshr i32 %343, 31
  %359 = trunc i32 %358 to i8
  store i8 %359, i8* %77, align 1
  %360 = lshr i32 %342, 31
  %361 = add nuw nsw i32 %358, %360
  %362 = icmp eq i32 %361, 2
  %363 = zext i1 %362 to i8
  store i8 %363, i8* %85, align 1
  %.v37 = select i1 %356, i64 38, i64 26
  %364 = add i64 %269, %.v37
  store i64 %364, i64* %3, align 8
  br i1 %356, label %block_.L_4621df, label %block_4621d3

block_4621d3:                                     ; preds = %block_.L_4621b9
  %365 = add i64 %210, -4
  %366 = add i64 %364, 7
  store i64 %366, i64* %3, align 8
  %367 = inttoptr i64 %365 to i32*
  store i32 0, i32* %367, align 4
  %368 = load i64, i64* %3, align 8
  %369 = add i64 %368, 524
  store i64 %369, i64* %3, align 8
  br label %block_.L_4623e6

block_.L_4621df:                                  ; preds = %block_.L_4621b9
  %370 = add i64 %364, 3
  store i64 %370, i64* %3, align 8
  %371 = load i32, i32* %214, align 4
  %372 = zext i32 %371 to i64
  store i64 %372, i64* %RAX.i390, align 8
  %373 = add i64 %210, -60
  %374 = add i64 %364, 6
  store i64 %374, i64* %3, align 8
  %375 = inttoptr i64 %373 to i32*
  %376 = load i32, i32* %375, align 4
  %377 = add i32 %376, %371
  %378 = zext i32 %377 to i64
  store i64 %378, i64* %RAX.i390, align 8
  %379 = icmp ult i32 %377, %371
  %380 = icmp ult i32 %377, %376
  %381 = or i1 %379, %380
  %382 = zext i1 %381 to i8
  store i8 %382, i8* %59, align 1
  %383 = and i32 %377, 255
  %384 = tail call i32 @llvm.ctpop.i32(i32 %383)
  %385 = trunc i32 %384 to i8
  %386 = and i8 %385, 1
  %387 = xor i8 %386, 1
  store i8 %387, i8* %65, align 1
  %388 = xor i32 %376, %371
  %389 = xor i32 %388, %377
  %390 = lshr i32 %389, 4
  %391 = trunc i32 %390 to i8
  %392 = and i8 %391, 1
  store i8 %392, i8* %71, align 1
  %393 = icmp eq i32 %377, 0
  %394 = zext i1 %393 to i8
  store i8 %394, i8* %74, align 1
  %395 = lshr i32 %377, 31
  %396 = trunc i32 %395 to i8
  store i8 %396, i8* %77, align 1
  %397 = lshr i32 %371, 31
  %398 = lshr i32 %376, 31
  %399 = xor i32 %395, %397
  %400 = xor i32 %395, %398
  %401 = add nuw nsw i32 %399, %400
  %402 = icmp eq i32 %401, 2
  %403 = zext i1 %402 to i8
  store i8 %403, i8* %85, align 1
  %404 = sext i32 %377 to i64
  store i64 %404, i64* %RCX.i357, align 8
  %405 = add nsw i64 %404, 12099168
  %406 = add i64 %364, 17
  store i64 %406, i64* %3, align 8
  %407 = inttoptr i64 %405 to i8*
  %408 = load i8, i8* %407, align 1
  %409 = zext i8 %408 to i64
  store i64 %409, i64* %RAX.i390, align 8
  %410 = zext i8 %408 to i32
  store i8 0, i8* %59, align 1
  %411 = tail call i32 @llvm.ctpop.i32(i32 %410)
  %412 = trunc i32 %411 to i8
  %413 = and i8 %412, 1
  %414 = xor i8 %413, 1
  store i8 %414, i8* %65, align 1
  store i8 0, i8* %71, align 1
  %415 = icmp eq i8 %408, 0
  %416 = zext i1 %415 to i8
  store i8 %416, i8* %74, align 1
  store i8 0, i8* %77, align 1
  store i8 0, i8* %85, align 1
  %.v38 = select i1 %415, i64 26, i64 83
  %417 = add i64 %364, %.v38
  store i64 %417, i64* %3, align 8
  br i1 %415, label %block_4621f9, label %block_.L_462232

block_4621f9:                                     ; preds = %block_.L_4621df
  %418 = add i64 %417, 3
  store i64 %418, i64* %3, align 8
  %419 = load i32, i32* %214, align 4
  %420 = zext i32 %419 to i64
  store i64 %420, i64* %RAX.i390, align 8
  %421 = add i64 %417, 6
  store i64 %421, i64* %3, align 8
  %422 = load i32, i32* %375, align 4
  %423 = sub i32 %419, %422
  %424 = zext i32 %423 to i64
  store i64 %424, i64* %RAX.i390, align 8
  %425 = icmp ult i32 %419, %422
  %426 = zext i1 %425 to i8
  store i8 %426, i8* %59, align 1
  %427 = and i32 %423, 255
  %428 = tail call i32 @llvm.ctpop.i32(i32 %427)
  %429 = trunc i32 %428 to i8
  %430 = and i8 %429, 1
  %431 = xor i8 %430, 1
  store i8 %431, i8* %65, align 1
  %432 = xor i32 %422, %419
  %433 = xor i32 %432, %423
  %434 = lshr i32 %433, 4
  %435 = trunc i32 %434 to i8
  %436 = and i8 %435, 1
  store i8 %436, i8* %71, align 1
  %437 = icmp eq i32 %423, 0
  %438 = zext i1 %437 to i8
  store i8 %438, i8* %74, align 1
  %439 = lshr i32 %423, 31
  %440 = trunc i32 %439 to i8
  store i8 %440, i8* %77, align 1
  %441 = lshr i32 %419, 31
  %442 = lshr i32 %422, 31
  %443 = xor i32 %442, %441
  %444 = xor i32 %439, %441
  %445 = add nuw nsw i32 %444, %443
  %446 = icmp eq i32 %445, 2
  %447 = zext i1 %446 to i8
  store i8 %447, i8* %85, align 1
  %448 = sext i32 %423 to i64
  store i64 %448, i64* %RCX.i357, align 8
  %449 = add nsw i64 %448, 12099168
  %450 = add i64 %417, 17
  store i64 %450, i64* %3, align 8
  %451 = inttoptr i64 %449 to i8*
  %452 = load i8, i8* %451, align 1
  %453 = zext i8 %452 to i64
  store i64 %453, i64* %RAX.i390, align 8
  %454 = zext i8 %452 to i32
  %455 = add nsw i32 %454, -3
  %456 = icmp ult i8 %452, 3
  %457 = zext i1 %456 to i8
  store i8 %457, i8* %59, align 1
  %458 = and i32 %455, 255
  %459 = tail call i32 @llvm.ctpop.i32(i32 %458)
  %460 = trunc i32 %459 to i8
  %461 = and i8 %460, 1
  %462 = xor i8 %461, 1
  store i8 %462, i8* %65, align 1
  %463 = xor i32 %455, %454
  %464 = lshr i32 %463, 4
  %465 = trunc i32 %464 to i8
  %466 = and i8 %465, 1
  store i8 %466, i8* %71, align 1
  %467 = icmp eq i32 %455, 0
  %468 = zext i1 %467 to i8
  store i8 %468, i8* %74, align 1
  %469 = lshr i32 %455, 31
  %470 = trunc i32 %469 to i8
  store i8 %470, i8* %77, align 1
  store i8 0, i8* %85, align 1
  %.v49 = select i1 %467, i64 52, i64 26
  %471 = add i64 %417, %.v49
  store i64 %471, i64* %3, align 8
  br i1 %467, label %block_.L_46222d, label %block_462213

block_462213:                                     ; preds = %block_4621f9
  %472 = add i64 %471, 3
  store i64 %472, i64* %3, align 8
  %473 = load i32, i32* %214, align 4
  %474 = zext i32 %473 to i64
  store i64 %474, i64* %RAX.i390, align 8
  %475 = add i64 %471, 6
  store i64 %475, i64* %3, align 8
  %476 = load i32, i32* %375, align 4
  %477 = sub i32 %473, %476
  %478 = zext i32 %477 to i64
  store i64 %478, i64* %RAX.i390, align 8
  %479 = icmp ult i32 %473, %476
  %480 = zext i1 %479 to i8
  store i8 %480, i8* %59, align 1
  %481 = and i32 %477, 255
  %482 = tail call i32 @llvm.ctpop.i32(i32 %481)
  %483 = trunc i32 %482 to i8
  %484 = and i8 %483, 1
  %485 = xor i8 %484, 1
  store i8 %485, i8* %65, align 1
  %486 = xor i32 %476, %473
  %487 = xor i32 %486, %477
  %488 = lshr i32 %487, 4
  %489 = trunc i32 %488 to i8
  %490 = and i8 %489, 1
  store i8 %490, i8* %71, align 1
  %491 = icmp eq i32 %477, 0
  %492 = zext i1 %491 to i8
  store i8 %492, i8* %74, align 1
  %493 = lshr i32 %477, 31
  %494 = trunc i32 %493 to i8
  store i8 %494, i8* %77, align 1
  %495 = lshr i32 %473, 31
  %496 = lshr i32 %476, 31
  %497 = xor i32 %496, %495
  %498 = xor i32 %493, %495
  %499 = add nuw nsw i32 %498, %497
  %500 = icmp eq i32 %499, 2
  %501 = zext i1 %500 to i8
  store i8 %501, i8* %85, align 1
  %502 = sext i32 %477 to i64
  store i64 %502, i64* %RCX.i357, align 8
  %503 = add nsw i64 %502, 12099168
  %504 = add i64 %471, 17
  store i64 %504, i64* %3, align 8
  %505 = inttoptr i64 %503 to i8*
  %506 = load i8, i8* %505, align 1
  %507 = zext i8 %506 to i64
  store i64 %507, i64* %RAX.i390, align 8
  %508 = zext i8 %506 to i32
  %509 = add i64 %471, 20
  store i64 %509, i64* %3, align 8
  %510 = load i32, i32* %341, align 4
  %511 = sub i32 %508, %510
  %512 = icmp ult i32 %508, %510
  %513 = zext i1 %512 to i8
  store i8 %513, i8* %59, align 1
  %514 = and i32 %511, 255
  %515 = tail call i32 @llvm.ctpop.i32(i32 %514)
  %516 = trunc i32 %515 to i8
  %517 = and i8 %516, 1
  %518 = xor i8 %517, 1
  store i8 %518, i8* %65, align 1
  %519 = xor i32 %510, %508
  %520 = xor i32 %519, %511
  %521 = lshr i32 %520, 4
  %522 = trunc i32 %521 to i8
  %523 = and i8 %522, 1
  store i8 %523, i8* %71, align 1
  %524 = icmp eq i32 %511, 0
  %525 = zext i1 %524 to i8
  store i8 %525, i8* %74, align 1
  %526 = lshr i32 %511, 31
  %527 = trunc i32 %526 to i8
  store i8 %527, i8* %77, align 1
  %528 = lshr i32 %510, 31
  %529 = add nuw nsw i32 %526, %528
  %530 = icmp eq i32 %529, 2
  %531 = zext i1 %530 to i8
  store i8 %531, i8* %85, align 1
  %.v50 = select i1 %524, i64 26, i64 31
  %532 = add i64 %471, %.v50
  store i64 %532, i64* %3, align 8
  br i1 %524, label %block_.L_46222d, label %block_.L_462232

block_.L_46222d:                                  ; preds = %block_462213, %block_4621f9
  %533 = phi i64 [ %532, %block_462213 ], [ %471, %block_4621f9 ]
  %534 = add i64 %533, 113
  br label %block_.L_46229e

block_.L_462232:                                  ; preds = %block_462213, %block_.L_4621df
  %535 = phi i64 [ %532, %block_462213 ], [ %417, %block_.L_4621df ]
  %536 = add i64 %535, 3
  store i64 %536, i64* %3, align 8
  %537 = load i32, i32* %214, align 4
  %538 = zext i32 %537 to i64
  store i64 %538, i64* %RAX.i390, align 8
  %539 = add i64 %535, 6
  store i64 %539, i64* %3, align 8
  %540 = load i32, i32* %375, align 4
  %541 = sub i32 %537, %540
  %542 = zext i32 %541 to i64
  store i64 %542, i64* %RAX.i390, align 8
  %543 = icmp ult i32 %537, %540
  %544 = zext i1 %543 to i8
  store i8 %544, i8* %59, align 1
  %545 = and i32 %541, 255
  %546 = tail call i32 @llvm.ctpop.i32(i32 %545)
  %547 = trunc i32 %546 to i8
  %548 = and i8 %547, 1
  %549 = xor i8 %548, 1
  store i8 %549, i8* %65, align 1
  %550 = xor i32 %540, %537
  %551 = xor i32 %550, %541
  %552 = lshr i32 %551, 4
  %553 = trunc i32 %552 to i8
  %554 = and i8 %553, 1
  store i8 %554, i8* %71, align 1
  %555 = icmp eq i32 %541, 0
  %556 = zext i1 %555 to i8
  store i8 %556, i8* %74, align 1
  %557 = lshr i32 %541, 31
  %558 = trunc i32 %557 to i8
  store i8 %558, i8* %77, align 1
  %559 = lshr i32 %537, 31
  %560 = lshr i32 %540, 31
  %561 = xor i32 %560, %559
  %562 = xor i32 %557, %559
  %563 = add nuw nsw i32 %562, %561
  %564 = icmp eq i32 %563, 2
  %565 = zext i1 %564 to i8
  store i8 %565, i8* %85, align 1
  %566 = sext i32 %541 to i64
  store i64 %566, i64* %RCX.i357, align 8
  %567 = add nsw i64 %566, 12099168
  %568 = add i64 %535, 17
  store i64 %568, i64* %3, align 8
  %569 = inttoptr i64 %567 to i8*
  %570 = load i8, i8* %569, align 1
  %571 = zext i8 %570 to i64
  store i64 %571, i64* %RAX.i390, align 8
  %572 = zext i8 %570 to i32
  store i8 0, i8* %59, align 1
  %573 = tail call i32 @llvm.ctpop.i32(i32 %572)
  %574 = trunc i32 %573 to i8
  %575 = and i8 %574, 1
  %576 = xor i8 %575, 1
  store i8 %576, i8* %65, align 1
  store i8 0, i8* %71, align 1
  %577 = icmp eq i8 %570, 0
  %578 = zext i1 %577 to i8
  store i8 %578, i8* %74, align 1
  store i8 0, i8* %77, align 1
  store i8 0, i8* %85, align 1
  %.v39 = select i1 %577, i64 26, i64 91
  %579 = add i64 %535, %.v39
  store i64 %579, i64* %3, align 8
  br i1 %577, label %block_46224c, label %block_.L_46228d

block_46224c:                                     ; preds = %block_.L_462232
  %580 = add i64 %579, 3
  store i64 %580, i64* %3, align 8
  %581 = load i32, i32* %214, align 4
  %582 = zext i32 %581 to i64
  store i64 %582, i64* %RAX.i390, align 8
  %583 = add i64 %579, 6
  store i64 %583, i64* %3, align 8
  %584 = load i32, i32* %375, align 4
  %585 = add i32 %584, %581
  %586 = zext i32 %585 to i64
  store i64 %586, i64* %RAX.i390, align 8
  %587 = icmp ult i32 %585, %581
  %588 = icmp ult i32 %585, %584
  %589 = or i1 %587, %588
  %590 = zext i1 %589 to i8
  store i8 %590, i8* %59, align 1
  %591 = and i32 %585, 255
  %592 = tail call i32 @llvm.ctpop.i32(i32 %591)
  %593 = trunc i32 %592 to i8
  %594 = and i8 %593, 1
  %595 = xor i8 %594, 1
  store i8 %595, i8* %65, align 1
  %596 = xor i32 %584, %581
  %597 = xor i32 %596, %585
  %598 = lshr i32 %597, 4
  %599 = trunc i32 %598 to i8
  %600 = and i8 %599, 1
  store i8 %600, i8* %71, align 1
  %601 = icmp eq i32 %585, 0
  %602 = zext i1 %601 to i8
  store i8 %602, i8* %74, align 1
  %603 = lshr i32 %585, 31
  %604 = trunc i32 %603 to i8
  store i8 %604, i8* %77, align 1
  %605 = lshr i32 %581, 31
  %606 = lshr i32 %584, 31
  %607 = xor i32 %603, %605
  %608 = xor i32 %603, %606
  %609 = add nuw nsw i32 %607, %608
  %610 = icmp eq i32 %609, 2
  %611 = zext i1 %610 to i8
  store i8 %611, i8* %85, align 1
  %612 = sext i32 %585 to i64
  store i64 %612, i64* %RCX.i357, align 8
  %613 = add nsw i64 %612, 12099168
  %614 = add i64 %579, 17
  store i64 %614, i64* %3, align 8
  %615 = inttoptr i64 %613 to i8*
  %616 = load i8, i8* %615, align 1
  %617 = zext i8 %616 to i64
  store i64 %617, i64* %RAX.i390, align 8
  %618 = zext i8 %616 to i32
  %619 = add nsw i32 %618, -3
  %620 = icmp ult i8 %616, 3
  %621 = zext i1 %620 to i8
  store i8 %621, i8* %59, align 1
  %622 = and i32 %619, 255
  %623 = tail call i32 @llvm.ctpop.i32(i32 %622)
  %624 = trunc i32 %623 to i8
  %625 = and i8 %624, 1
  %626 = xor i8 %625, 1
  store i8 %626, i8* %65, align 1
  %627 = xor i32 %619, %618
  %628 = lshr i32 %627, 4
  %629 = trunc i32 %628 to i8
  %630 = and i8 %629, 1
  store i8 %630, i8* %71, align 1
  %631 = icmp eq i32 %619, 0
  %632 = zext i1 %631 to i8
  store i8 %632, i8* %74, align 1
  %633 = lshr i32 %619, 31
  %634 = trunc i32 %633 to i8
  store i8 %634, i8* %77, align 1
  store i8 0, i8* %85, align 1
  %.v40 = select i1 %631, i64 52, i64 26
  %635 = add i64 %579, %.v40
  store i64 %635, i64* %3, align 8
  br i1 %631, label %block_.L_462280, label %block_462266

block_462266:                                     ; preds = %block_46224c
  %636 = add i64 %635, 3
  store i64 %636, i64* %3, align 8
  %637 = load i32, i32* %214, align 4
  %638 = zext i32 %637 to i64
  store i64 %638, i64* %RAX.i390, align 8
  %639 = add i64 %635, 6
  store i64 %639, i64* %3, align 8
  %640 = load i32, i32* %375, align 4
  %641 = add i32 %640, %637
  %642 = zext i32 %641 to i64
  store i64 %642, i64* %RAX.i390, align 8
  %643 = icmp ult i32 %641, %637
  %644 = icmp ult i32 %641, %640
  %645 = or i1 %643, %644
  %646 = zext i1 %645 to i8
  store i8 %646, i8* %59, align 1
  %647 = and i32 %641, 255
  %648 = tail call i32 @llvm.ctpop.i32(i32 %647)
  %649 = trunc i32 %648 to i8
  %650 = and i8 %649, 1
  %651 = xor i8 %650, 1
  store i8 %651, i8* %65, align 1
  %652 = xor i32 %640, %637
  %653 = xor i32 %652, %641
  %654 = lshr i32 %653, 4
  %655 = trunc i32 %654 to i8
  %656 = and i8 %655, 1
  store i8 %656, i8* %71, align 1
  %657 = icmp eq i32 %641, 0
  %658 = zext i1 %657 to i8
  store i8 %658, i8* %74, align 1
  %659 = lshr i32 %641, 31
  %660 = trunc i32 %659 to i8
  store i8 %660, i8* %77, align 1
  %661 = lshr i32 %637, 31
  %662 = lshr i32 %640, 31
  %663 = xor i32 %659, %661
  %664 = xor i32 %659, %662
  %665 = add nuw nsw i32 %663, %664
  %666 = icmp eq i32 %665, 2
  %667 = zext i1 %666 to i8
  store i8 %667, i8* %85, align 1
  %668 = sext i32 %641 to i64
  store i64 %668, i64* %RCX.i357, align 8
  %669 = add nsw i64 %668, 12099168
  %670 = add i64 %635, 17
  store i64 %670, i64* %3, align 8
  %671 = inttoptr i64 %669 to i8*
  %672 = load i8, i8* %671, align 1
  %673 = zext i8 %672 to i64
  store i64 %673, i64* %RAX.i390, align 8
  %674 = zext i8 %672 to i32
  %675 = add i64 %635, 20
  store i64 %675, i64* %3, align 8
  %676 = load i32, i32* %341, align 4
  %677 = sub i32 %674, %676
  %678 = icmp ult i32 %674, %676
  %679 = zext i1 %678 to i8
  store i8 %679, i8* %59, align 1
  %680 = and i32 %677, 255
  %681 = tail call i32 @llvm.ctpop.i32(i32 %680)
  %682 = trunc i32 %681 to i8
  %683 = and i8 %682, 1
  %684 = xor i8 %683, 1
  store i8 %684, i8* %65, align 1
  %685 = xor i32 %676, %674
  %686 = xor i32 %685, %677
  %687 = lshr i32 %686, 4
  %688 = trunc i32 %687 to i8
  %689 = and i8 %688, 1
  store i8 %689, i8* %71, align 1
  %690 = icmp eq i32 %677, 0
  %691 = zext i1 %690 to i8
  store i8 %691, i8* %74, align 1
  %692 = lshr i32 %677, 31
  %693 = trunc i32 %692 to i8
  store i8 %693, i8* %77, align 1
  %694 = lshr i32 %676, 31
  %695 = add nuw nsw i32 %692, %694
  %696 = icmp eq i32 %695, 2
  %697 = zext i1 %696 to i8
  store i8 %697, i8* %85, align 1
  %.v41 = select i1 %690, i64 26, i64 39
  %698 = add i64 %635, %.v41
  store i64 %698, i64* %3, align 8
  br i1 %690, label %block_.L_462280, label %block_.L_46228d

block_.L_462280:                                  ; preds = %block_462266, %block_46224c
  %699 = phi i64 [ %698, %block_462266 ], [ %635, %block_46224c ]
  %700 = phi i32 [ %674, %block_462266 ], [ 3, %block_46224c ]
  %701 = phi i64 [ %673, %block_462266 ], [ %617, %block_46224c ]
  %702 = zext i32 %700 to i64
  %703 = xor i64 %702, %701
  %704 = trunc i64 %703 to i32
  store i64 %703, i64* %RAX.i390, align 8
  store i8 0, i8* %59, align 1
  %705 = tail call i32 @llvm.ctpop.i32(i32 %704)
  %706 = trunc i32 %705 to i8
  %707 = and i8 %706, 1
  %708 = xor i8 %707, 1
  store i8 %708, i8* %65, align 1
  %709 = icmp eq i32 %704, 0
  %710 = zext i1 %709 to i8
  store i8 %710, i8* %74, align 1
  store i8 0, i8* %77, align 1
  store i8 0, i8* %85, align 1
  store i8 0, i8* %71, align 1
  %711 = add i64 %699, 5
  store i64 %711, i64* %3, align 8
  %712 = trunc i64 %703 to i32
  %713 = load i32, i32* %375, align 4
  %714 = sub i32 %712, %713
  %715 = zext i32 %714 to i64
  store i64 %715, i64* %RAX.i390, align 8
  %716 = icmp ult i32 %712, %713
  %717 = zext i1 %716 to i8
  store i8 %717, i8* %59, align 1
  %718 = and i32 %714, 255
  %719 = tail call i32 @llvm.ctpop.i32(i32 %718)
  %720 = trunc i32 %719 to i8
  %721 = and i8 %720, 1
  %722 = xor i8 %721, 1
  store i8 %722, i8* %65, align 1
  %723 = xor i32 %713, %712
  %724 = xor i32 %723, %714
  %725 = lshr i32 %724, 4
  %726 = trunc i32 %725 to i8
  %727 = and i8 %726, 1
  store i8 %727, i8* %71, align 1
  %728 = icmp eq i32 %714, 0
  %729 = zext i1 %728 to i8
  store i8 %729, i8* %74, align 1
  %730 = lshr i32 %714, 31
  %731 = trunc i32 %730 to i8
  store i8 %731, i8* %77, align 1
  %732 = lshr i32 %713, 31
  %733 = add nuw nsw i32 %730, %732
  %734 = icmp eq i32 %733, 2
  %735 = zext i1 %734 to i8
  store i8 %735, i8* %85, align 1
  %736 = add i64 %699, 8
  store i64 %736, i64* %3, align 8
  store i32 %714, i32* %375, align 4
  %737 = load i64, i64* %3, align 8
  %738 = add i64 %737, 22
  store i64 %738, i64* %3, align 8
  %.pre32 = load i64, i64* %RBP.i, align 8
  br label %block_.L_46229e

block_.L_46228d:                                  ; preds = %block_462266, %block_.L_462232
  %739 = phi i64 [ %698, %block_462266 ], [ %579, %block_.L_462232 ]
  %740 = add i64 %210, -4
  %741 = add i64 %739, 7
  store i64 %741, i64* %3, align 8
  %742 = inttoptr i64 %740 to i32*
  store i32 0, i32* %742, align 4
  %743 = load i64, i64* %3, align 8
  %744 = add i64 %743, 338
  store i64 %744, i64* %3, align 8
  br label %block_.L_4623e6

block_.L_46229e:                                  ; preds = %block_.L_462280, %block_.L_46222d
  %745 = phi i64 [ %210, %block_.L_46222d ], [ %.pre32, %block_.L_462280 ]
  %storemerge = phi i64 [ %534, %block_.L_46222d ], [ %738, %block_.L_462280 ]
  %746 = add i64 %745, -12
  %747 = add i64 %storemerge, 3
  store i64 %747, i64* %3, align 8
  %748 = inttoptr i64 %746 to i32*
  %749 = load i32, i32* %748, align 4
  %750 = zext i32 %749 to i64
  store i64 %750, i64* %RAX.i390, align 8
  %751 = add i64 %745, -56
  %752 = add i64 %storemerge, 6
  store i64 %752, i64* %3, align 8
  %753 = inttoptr i64 %751 to i32*
  %754 = load i32, i32* %753, align 4
  %755 = add i32 %754, %749
  %756 = zext i32 %755 to i64
  store i64 %756, i64* %RAX.i390, align 8
  %757 = icmp ult i32 %755, %749
  %758 = icmp ult i32 %755, %754
  %759 = or i1 %757, %758
  %760 = zext i1 %759 to i8
  store i8 %760, i8* %59, align 1
  %761 = and i32 %755, 255
  %762 = tail call i32 @llvm.ctpop.i32(i32 %761)
  %763 = trunc i32 %762 to i8
  %764 = and i8 %763, 1
  %765 = xor i8 %764, 1
  store i8 %765, i8* %65, align 1
  %766 = xor i32 %754, %749
  %767 = xor i32 %766, %755
  %768 = lshr i32 %767, 4
  %769 = trunc i32 %768 to i8
  %770 = and i8 %769, 1
  store i8 %770, i8* %71, align 1
  %771 = icmp eq i32 %755, 0
  %772 = zext i1 %771 to i8
  store i8 %772, i8* %74, align 1
  %773 = lshr i32 %755, 31
  %774 = trunc i32 %773 to i8
  store i8 %774, i8* %77, align 1
  %775 = lshr i32 %749, 31
  %776 = lshr i32 %754, 31
  %777 = xor i32 %773, %775
  %778 = xor i32 %773, %776
  %779 = add nuw nsw i32 %777, %778
  %780 = icmp eq i32 %779, 2
  %781 = zext i1 %780 to i8
  store i8 %781, i8* %85, align 1
  %782 = add i64 %745, -60
  %783 = add i64 %storemerge, 9
  store i64 %783, i64* %3, align 8
  %784 = inttoptr i64 %782 to i32*
  %785 = load i32, i32* %784, align 4
  %786 = add i32 %785, %755
  %787 = zext i32 %786 to i64
  store i64 %787, i64* %RAX.i390, align 8
  %788 = icmp ult i32 %786, %755
  %789 = icmp ult i32 %786, %785
  %790 = or i1 %788, %789
  %791 = zext i1 %790 to i8
  store i8 %791, i8* %59, align 1
  %792 = and i32 %786, 255
  %793 = tail call i32 @llvm.ctpop.i32(i32 %792)
  %794 = trunc i32 %793 to i8
  %795 = and i8 %794, 1
  %796 = xor i8 %795, 1
  store i8 %796, i8* %65, align 1
  %797 = xor i32 %785, %755
  %798 = xor i32 %797, %786
  %799 = lshr i32 %798, 4
  %800 = trunc i32 %799 to i8
  %801 = and i8 %800, 1
  store i8 %801, i8* %71, align 1
  %802 = icmp eq i32 %786, 0
  %803 = zext i1 %802 to i8
  store i8 %803, i8* %74, align 1
  %804 = lshr i32 %786, 31
  %805 = trunc i32 %804 to i8
  store i8 %805, i8* %77, align 1
  %806 = lshr i32 %785, 31
  %807 = xor i32 %804, %773
  %808 = xor i32 %804, %806
  %809 = add nuw nsw i32 %807, %808
  %810 = icmp eq i32 %809, 2
  %811 = zext i1 %810 to i8
  store i8 %811, i8* %85, align 1
  %812 = sext i32 %786 to i64
  store i64 %812, i64* %RCX.i357, align 8
  %813 = add nsw i64 %812, 12099168
  %814 = add i64 %storemerge, 20
  store i64 %814, i64* %3, align 8
  %815 = inttoptr i64 %813 to i8*
  %816 = load i8, i8* %815, align 1
  %817 = zext i8 %816 to i64
  store i64 %817, i64* %RAX.i390, align 8
  %818 = zext i8 %816 to i32
  %819 = load i64, i64* %RBP.i, align 8
  %820 = add i64 %819, -32
  %821 = add i64 %storemerge, 23
  store i64 %821, i64* %3, align 8
  %822 = inttoptr i64 %820 to i32*
  %823 = load i32, i32* %822, align 4
  %824 = sub i32 %818, %823
  %825 = icmp ult i32 %818, %823
  %826 = zext i1 %825 to i8
  store i8 %826, i8* %59, align 1
  %827 = and i32 %824, 255
  %828 = tail call i32 @llvm.ctpop.i32(i32 %827)
  %829 = trunc i32 %828 to i8
  %830 = and i8 %829, 1
  %831 = xor i8 %830, 1
  store i8 %831, i8* %65, align 1
  %832 = xor i32 %823, %818
  %833 = xor i32 %832, %824
  %834 = lshr i32 %833, 4
  %835 = trunc i32 %834 to i8
  %836 = and i8 %835, 1
  store i8 %836, i8* %71, align 1
  %837 = icmp eq i32 %824, 0
  %838 = zext i1 %837 to i8
  store i8 %838, i8* %74, align 1
  %839 = lshr i32 %824, 31
  %840 = trunc i32 %839 to i8
  store i8 %840, i8* %77, align 1
  %841 = lshr i32 %823, 31
  %842 = add nuw nsw i32 %839, %841
  %843 = icmp eq i32 %842, 2
  %844 = zext i1 %843 to i8
  store i8 %844, i8* %85, align 1
  %.v42 = select i1 %837, i64 41, i64 29
  %845 = add i64 %storemerge, %.v42
  store i64 %845, i64* %3, align 8
  br i1 %837, label %block_.L_4622c7, label %block_4622bb

block_4622bb:                                     ; preds = %block_.L_46229e
  %846 = add i64 %819, -4
  %847 = add i64 %845, 7
  store i64 %847, i64* %3, align 8
  %848 = inttoptr i64 %846 to i32*
  store i32 0, i32* %848, align 4
  %849 = load i64, i64* %3, align 8
  %850 = add i64 %849, 292
  store i64 %850, i64* %3, align 8
  br label %block_.L_4623e6

block_.L_4622c7:                                  ; preds = %block_.L_46229e
  %851 = add i64 %819, -12
  %852 = add i64 %845, 3
  store i64 %852, i64* %3, align 8
  %853 = inttoptr i64 %851 to i32*
  %854 = load i32, i32* %853, align 4
  %855 = zext i32 %854 to i64
  store i64 %855, i64* %RAX.i390, align 8
  %856 = add i64 %819, -56
  %857 = add i64 %845, 6
  store i64 %857, i64* %3, align 8
  %858 = inttoptr i64 %856 to i32*
  %859 = load i32, i32* %858, align 4
  %860 = add i32 %859, %854
  %861 = zext i32 %860 to i64
  store i64 %861, i64* %RAX.i390, align 8
  %862 = icmp ult i32 %860, %854
  %863 = icmp ult i32 %860, %859
  %864 = or i1 %862, %863
  %865 = zext i1 %864 to i8
  store i8 %865, i8* %59, align 1
  %866 = and i32 %860, 255
  %867 = tail call i32 @llvm.ctpop.i32(i32 %866)
  %868 = trunc i32 %867 to i8
  %869 = and i8 %868, 1
  %870 = xor i8 %869, 1
  store i8 %870, i8* %65, align 1
  %871 = xor i32 %859, %854
  %872 = xor i32 %871, %860
  %873 = lshr i32 %872, 4
  %874 = trunc i32 %873 to i8
  %875 = and i8 %874, 1
  store i8 %875, i8* %71, align 1
  %876 = icmp eq i32 %860, 0
  %877 = zext i1 %876 to i8
  store i8 %877, i8* %74, align 1
  %878 = lshr i32 %860, 31
  %879 = trunc i32 %878 to i8
  store i8 %879, i8* %77, align 1
  %880 = lshr i32 %854, 31
  %881 = lshr i32 %859, 31
  %882 = xor i32 %878, %880
  %883 = xor i32 %878, %881
  %884 = add nuw nsw i32 %882, %883
  %885 = icmp eq i32 %884, 2
  %886 = zext i1 %885 to i8
  store i8 %886, i8* %85, align 1
  %887 = add i64 %819, -60
  %888 = add i64 %845, 9
  store i64 %888, i64* %3, align 8
  %889 = inttoptr i64 %887 to i32*
  %890 = load i32, i32* %889, align 4
  %891 = shl i32 %890, 1
  %892 = zext i32 %891 to i64
  store i64 %892, i64* %RCX.i357, align 8
  %893 = add i32 %891, %860
  %894 = zext i32 %893 to i64
  store i64 %894, i64* %RAX.i390, align 8
  %895 = icmp ult i32 %893, %860
  %896 = icmp ult i32 %893, %891
  %897 = or i1 %895, %896
  %898 = zext i1 %897 to i8
  store i8 %898, i8* %59, align 1
  %899 = and i32 %893, 255
  %900 = tail call i32 @llvm.ctpop.i32(i32 %899)
  %901 = trunc i32 %900 to i8
  %902 = and i8 %901, 1
  %903 = xor i8 %902, 1
  store i8 %903, i8* %65, align 1
  %904 = xor i32 %891, %860
  %905 = xor i32 %904, %893
  %906 = lshr i32 %905, 4
  %907 = trunc i32 %906 to i8
  %908 = and i8 %907, 1
  store i8 %908, i8* %71, align 1
  %909 = icmp eq i32 %893, 0
  %910 = zext i1 %909 to i8
  store i8 %910, i8* %74, align 1
  %911 = lshr i32 %893, 31
  %912 = trunc i32 %911 to i8
  store i8 %912, i8* %77, align 1
  %913 = lshr i32 %890, 30
  %914 = and i32 %913, 1
  %915 = xor i32 %911, %878
  %916 = xor i32 %911, %914
  %917 = add nuw nsw i32 %915, %916
  %918 = icmp eq i32 %917, 2
  %919 = zext i1 %918 to i8
  store i8 %919, i8* %85, align 1
  %920 = load i64, i64* %RBP.i, align 8
  %921 = add i64 %920, -40
  %922 = add i64 %845, 16
  store i64 %922, i64* %3, align 8
  %923 = inttoptr i64 %921 to i32*
  store i32 %893, i32* %923, align 4
  %924 = load i64, i64* %RBP.i, align 8
  %925 = add i64 %924, -40
  %926 = load i64, i64* %3, align 8
  %927 = add i64 %926, 4
  store i64 %927, i64* %3, align 8
  %928 = inttoptr i64 %925 to i32*
  %929 = load i32, i32* %928, align 4
  %930 = sext i32 %929 to i64
  store i64 %930, i64* %RDX.i382, align 8
  %931 = add nsw i64 %930, 12099168
  %932 = add i64 %926, 12
  store i64 %932, i64* %3, align 8
  %933 = inttoptr i64 %931 to i8*
  %934 = load i8, i8* %933, align 1
  %935 = zext i8 %934 to i64
  store i64 %935, i64* %RAX.i390, align 8
  %936 = zext i8 %934 to i32
  %937 = add nsw i32 %936, -3
  %938 = icmp ult i8 %934, 3
  %939 = zext i1 %938 to i8
  store i8 %939, i8* %59, align 1
  %940 = and i32 %937, 255
  %941 = tail call i32 @llvm.ctpop.i32(i32 %940)
  %942 = trunc i32 %941 to i8
  %943 = and i8 %942, 1
  %944 = xor i8 %943, 1
  store i8 %944, i8* %65, align 1
  %945 = xor i32 %937, %936
  %946 = lshr i32 %945, 4
  %947 = trunc i32 %946 to i8
  %948 = and i8 %947, 1
  store i8 %948, i8* %71, align 1
  %949 = icmp eq i32 %937, 0
  %950 = zext i1 %949 to i8
  store i8 %950, i8* %74, align 1
  %951 = lshr i32 %937, 31
  %952 = trunc i32 %951 to i8
  store i8 %952, i8* %77, align 1
  store i8 0, i8* %85, align 1
  %.v43 = select i1 %949, i64 21, i64 33
  %953 = add i64 %926, %.v43
  store i64 %953, i64* %3, align 8
  br i1 %949, label %block_4622ed, label %block_.L_4622f9

block_4622ed:                                     ; preds = %block_.L_4622c7
  %954 = add i64 %924, -4
  %955 = add i64 %953, 7
  store i64 %955, i64* %3, align 8
  %956 = inttoptr i64 %954 to i32*
  store i32 0, i32* %956, align 4
  %957 = load i64, i64* %3, align 8
  %958 = add i64 %957, 242
  store i64 %958, i64* %3, align 8
  br label %block_.L_4623e6

block_.L_4622f9:                                  ; preds = %block_.L_4622c7
  %959 = add i64 %924, -12
  %960 = add i64 %953, 3
  store i64 %960, i64* %3, align 8
  %961 = inttoptr i64 %959 to i32*
  %962 = load i32, i32* %961, align 4
  %963 = zext i32 %962 to i64
  store i64 %963, i64* %RAX.i390, align 8
  %964 = add i64 %924, -60
  %965 = add i64 %953, 6
  store i64 %965, i64* %3, align 8
  %966 = inttoptr i64 %964 to i32*
  %967 = load i32, i32* %966, align 4
  %968 = shl i32 %967, 1
  %969 = zext i32 %968 to i64
  store i64 %969, i64* %RCX.i357, align 8
  %970 = add i32 %968, %962
  %971 = zext i32 %970 to i64
  store i64 %971, i64* %RAX.i390, align 8
  %972 = icmp ult i32 %970, %962
  %973 = icmp ult i32 %970, %968
  %974 = or i1 %972, %973
  %975 = zext i1 %974 to i8
  store i8 %975, i8* %59, align 1
  %976 = and i32 %970, 255
  %977 = tail call i32 @llvm.ctpop.i32(i32 %976)
  %978 = trunc i32 %977 to i8
  %979 = and i8 %978, 1
  %980 = xor i8 %979, 1
  store i8 %980, i8* %65, align 1
  %981 = xor i32 %968, %962
  %982 = xor i32 %981, %970
  %983 = lshr i32 %982, 4
  %984 = trunc i32 %983 to i8
  %985 = and i8 %984, 1
  store i8 %985, i8* %71, align 1
  %986 = icmp eq i32 %970, 0
  %987 = zext i1 %986 to i8
  store i8 %987, i8* %74, align 1
  %988 = lshr i32 %970, 31
  %989 = trunc i32 %988 to i8
  store i8 %989, i8* %77, align 1
  %990 = lshr i32 %962, 31
  %991 = lshr i32 %967, 30
  %992 = and i32 %991, 1
  %993 = xor i32 %988, %990
  %994 = xor i32 %988, %992
  %995 = add nuw nsw i32 %993, %994
  %996 = icmp eq i32 %995, 2
  %997 = zext i1 %996 to i8
  store i8 %997, i8* %85, align 1
  %998 = add i64 %924, -44
  %999 = add i64 %953, 13
  store i64 %999, i64* %3, align 8
  %1000 = inttoptr i64 %998 to i32*
  store i32 %970, i32* %1000, align 4
  %1001 = load i64, i64* %RBP.i, align 8
  %1002 = add i64 %1001, -48
  %1003 = load i64, i64* %3, align 8
  %1004 = add i64 %1003, 7
  store i64 %1004, i64* %3, align 8
  %1005 = inttoptr i64 %1002 to i32*
  store i32 0, i32* %1005, align 4
  %1006 = load i64, i64* %RBP.i, align 8
  %1007 = add i64 %1006, -52
  %1008 = load i64, i64* %3, align 8
  %1009 = add i64 %1008, 7
  store i64 %1009, i64* %3, align 8
  %1010 = inttoptr i64 %1007 to i32*
  store i32 0, i32* %1010, align 4
  %1011 = load i64, i64* %RBP.i, align 8
  %1012 = add i64 %1011, -40
  %1013 = load i64, i64* %3, align 8
  %1014 = add i64 %1013, 4
  store i64 %1014, i64* %3, align 8
  %1015 = inttoptr i64 %1012 to i32*
  %1016 = load i32, i32* %1015, align 4
  %1017 = sext i32 %1016 to i64
  store i64 %1017, i64* %RDX.i382, align 8
  %1018 = add nsw i64 %1017, 12099168
  %1019 = add i64 %1013, 12
  store i64 %1019, i64* %3, align 8
  %1020 = inttoptr i64 %1018 to i8*
  %1021 = load i8, i8* %1020, align 1
  %1022 = zext i8 %1021 to i64
  store i64 %1022, i64* %RAX.i390, align 8
  %1023 = zext i8 %1021 to i32
  %1024 = add i64 %1011, -28
  %1025 = add i64 %1013, 15
  store i64 %1025, i64* %3, align 8
  %1026 = inttoptr i64 %1024 to i32*
  %1027 = load i32, i32* %1026, align 4
  %1028 = sub i32 %1023, %1027
  %1029 = icmp ult i32 %1023, %1027
  %1030 = zext i1 %1029 to i8
  store i8 %1030, i8* %59, align 1
  %1031 = and i32 %1028, 255
  %1032 = tail call i32 @llvm.ctpop.i32(i32 %1031)
  %1033 = trunc i32 %1032 to i8
  %1034 = and i8 %1033, 1
  %1035 = xor i8 %1034, 1
  store i8 %1035, i8* %65, align 1
  %1036 = xor i32 %1027, %1023
  %1037 = xor i32 %1036, %1028
  %1038 = lshr i32 %1037, 4
  %1039 = trunc i32 %1038 to i8
  %1040 = and i8 %1039, 1
  store i8 %1040, i8* %71, align 1
  %1041 = icmp eq i32 %1028, 0
  %1042 = zext i1 %1041 to i8
  store i8 %1042, i8* %74, align 1
  %1043 = lshr i32 %1028, 31
  %1044 = trunc i32 %1043 to i8
  store i8 %1044, i8* %77, align 1
  %1045 = lshr i32 %1027, 31
  %1046 = add nuw nsw i32 %1043, %1045
  %1047 = icmp eq i32 %1046, 2
  %1048 = zext i1 %1047 to i8
  store i8 %1048, i8* %85, align 1
  %.v44 = select i1 %1041, i64 21, i64 35
  %1049 = add i64 %1013, %.v44
  store i64 %1049, i64* %3, align 8
  br i1 %1041, label %block_46232a, label %block_.L_462338

block_46232a:                                     ; preds = %block_.L_4622f9
  %1050 = add i64 %1011, -48
  %1051 = add i64 %1049, 3
  store i64 %1051, i64* %3, align 8
  %1052 = inttoptr i64 %1050 to i32*
  %1053 = load i32, i32* %1052, align 4
  %1054 = add i32 %1053, 1
  %1055 = zext i32 %1054 to i64
  store i64 %1055, i64* %RAX.i390, align 8
  %1056 = icmp eq i32 %1053, -1
  %1057 = icmp eq i32 %1054, 0
  %1058 = or i1 %1056, %1057
  %1059 = zext i1 %1058 to i8
  store i8 %1059, i8* %59, align 1
  %1060 = and i32 %1054, 255
  %1061 = tail call i32 @llvm.ctpop.i32(i32 %1060)
  %1062 = trunc i32 %1061 to i8
  %1063 = and i8 %1062, 1
  %1064 = xor i8 %1063, 1
  store i8 %1064, i8* %65, align 1
  %1065 = xor i32 %1054, %1053
  %1066 = lshr i32 %1065, 4
  %1067 = trunc i32 %1066 to i8
  %1068 = and i8 %1067, 1
  store i8 %1068, i8* %71, align 1
  %1069 = zext i1 %1057 to i8
  store i8 %1069, i8* %74, align 1
  %1070 = lshr i32 %1054, 31
  %1071 = trunc i32 %1070 to i8
  store i8 %1071, i8* %77, align 1
  %1072 = lshr i32 %1053, 31
  %1073 = xor i32 %1070, %1072
  %1074 = add nuw nsw i32 %1073, %1070
  %1075 = icmp eq i32 %1074, 2
  %1076 = zext i1 %1075 to i8
  store i8 %1076, i8* %85, align 1
  %1077 = add i64 %1049, 9
  store i64 %1077, i64* %3, align 8
  store i32 %1054, i32* %1052, align 4
  %1078 = load i64, i64* %3, align 8
  %1079 = add i64 %1078, 40
  br label %block_.L_46235b

block_.L_462338:                                  ; preds = %block_.L_4622f9
  %1080 = add i64 %1049, 4
  store i64 %1080, i64* %3, align 8
  %1081 = load i32, i32* %1015, align 4
  %1082 = sext i32 %1081 to i64
  store i64 %1082, i64* %RAX.i390, align 8
  %1083 = add nsw i64 %1082, 12099168
  %1084 = add i64 %1049, 12
  store i64 %1084, i64* %3, align 8
  %1085 = inttoptr i64 %1083 to i8*
  %1086 = load i8, i8* %1085, align 1
  %1087 = zext i8 %1086 to i64
  store i64 %1087, i64* %RCX.i357, align 8
  %1088 = zext i8 %1086 to i32
  %1089 = add i64 %1011, -32
  %1090 = add i64 %1049, 15
  store i64 %1090, i64* %3, align 8
  %1091 = inttoptr i64 %1089 to i32*
  %1092 = load i32, i32* %1091, align 4
  %1093 = sub i32 %1088, %1092
  %1094 = icmp ult i32 %1088, %1092
  %1095 = zext i1 %1094 to i8
  store i8 %1095, i8* %59, align 1
  %1096 = and i32 %1093, 255
  %1097 = tail call i32 @llvm.ctpop.i32(i32 %1096)
  %1098 = trunc i32 %1097 to i8
  %1099 = and i8 %1098, 1
  %1100 = xor i8 %1099, 1
  store i8 %1100, i8* %65, align 1
  %1101 = xor i32 %1092, %1088
  %1102 = xor i32 %1101, %1093
  %1103 = lshr i32 %1102, 4
  %1104 = trunc i32 %1103 to i8
  %1105 = and i8 %1104, 1
  store i8 %1105, i8* %71, align 1
  %1106 = icmp eq i32 %1093, 0
  %1107 = zext i1 %1106 to i8
  store i8 %1107, i8* %74, align 1
  %1108 = lshr i32 %1093, 31
  %1109 = trunc i32 %1108 to i8
  store i8 %1109, i8* %77, align 1
  %1110 = lshr i32 %1092, 31
  %1111 = add nuw nsw i32 %1108, %1110
  %1112 = icmp eq i32 %1111, 2
  %1113 = zext i1 %1112 to i8
  store i8 %1113, i8* %85, align 1
  %.v45 = select i1 %1106, i64 21, i64 30
  %1114 = add i64 %1049, %.v45
  store i64 %1114, i64* %3, align 8
  br i1 %1106, label %block_46234d, label %block_.L_462356

block_46234d:                                     ; preds = %block_.L_462338
  %1115 = add i64 %1011, -52
  %1116 = add i64 %1114, 3
  store i64 %1116, i64* %3, align 8
  %1117 = inttoptr i64 %1115 to i32*
  %1118 = load i32, i32* %1117, align 4
  %1119 = add i32 %1118, 1
  %1120 = zext i32 %1119 to i64
  store i64 %1120, i64* %RAX.i390, align 8
  %1121 = icmp eq i32 %1118, -1
  %1122 = icmp eq i32 %1119, 0
  %1123 = or i1 %1121, %1122
  %1124 = zext i1 %1123 to i8
  store i8 %1124, i8* %59, align 1
  %1125 = and i32 %1119, 255
  %1126 = tail call i32 @llvm.ctpop.i32(i32 %1125)
  %1127 = trunc i32 %1126 to i8
  %1128 = and i8 %1127, 1
  %1129 = xor i8 %1128, 1
  store i8 %1129, i8* %65, align 1
  %1130 = xor i32 %1119, %1118
  %1131 = lshr i32 %1130, 4
  %1132 = trunc i32 %1131 to i8
  %1133 = and i8 %1132, 1
  store i8 %1133, i8* %71, align 1
  %1134 = zext i1 %1122 to i8
  store i8 %1134, i8* %74, align 1
  %1135 = lshr i32 %1119, 31
  %1136 = trunc i32 %1135 to i8
  store i8 %1136, i8* %77, align 1
  %1137 = lshr i32 %1118, 31
  %1138 = xor i32 %1135, %1137
  %1139 = add nuw nsw i32 %1138, %1135
  %1140 = icmp eq i32 %1139, 2
  %1141 = zext i1 %1140 to i8
  store i8 %1141, i8* %85, align 1
  %1142 = add i64 %1114, 9
  store i64 %1142, i64* %3, align 8
  store i32 %1119, i32* %1117, align 4
  %.pre33 = load i64, i64* %3, align 8
  br label %block_.L_462356

block_.L_462356:                                  ; preds = %block_.L_462338, %block_46234d
  %1143 = phi i64 [ %.pre33, %block_46234d ], [ %1114, %block_.L_462338 ]
  %1144 = add i64 %1143, 5
  store i64 %1144, i64* %3, align 8
  br label %block_.L_46235b

block_.L_46235b:                                  ; preds = %block_.L_462356, %block_46232a
  %storemerge17 = phi i64 [ %1079, %block_46232a ], [ %1144, %block_.L_462356 ]
  %1145 = load i64, i64* %RBP.i, align 8
  %1146 = add i64 %1145, -44
  %1147 = add i64 %storemerge17, 4
  store i64 %1147, i64* %3, align 8
  %1148 = inttoptr i64 %1146 to i32*
  %1149 = load i32, i32* %1148, align 4
  %1150 = sext i32 %1149 to i64
  store i64 %1150, i64* %RAX.i390, align 8
  %1151 = add nsw i64 %1150, 12099168
  %1152 = add i64 %storemerge17, 12
  store i64 %1152, i64* %3, align 8
  %1153 = inttoptr i64 %1151 to i8*
  %1154 = load i8, i8* %1153, align 1
  %1155 = zext i8 %1154 to i64
  store i64 %1155, i64* %RCX.i357, align 8
  %1156 = zext i8 %1154 to i32
  %1157 = add i64 %1145, -28
  %1158 = add i64 %storemerge17, 15
  store i64 %1158, i64* %3, align 8
  %1159 = inttoptr i64 %1157 to i32*
  %1160 = load i32, i32* %1159, align 4
  %1161 = sub i32 %1156, %1160
  %1162 = icmp ult i32 %1156, %1160
  %1163 = zext i1 %1162 to i8
  store i8 %1163, i8* %59, align 1
  %1164 = and i32 %1161, 255
  %1165 = tail call i32 @llvm.ctpop.i32(i32 %1164)
  %1166 = trunc i32 %1165 to i8
  %1167 = and i8 %1166, 1
  %1168 = xor i8 %1167, 1
  store i8 %1168, i8* %65, align 1
  %1169 = xor i32 %1160, %1156
  %1170 = xor i32 %1169, %1161
  %1171 = lshr i32 %1170, 4
  %1172 = trunc i32 %1171 to i8
  %1173 = and i8 %1172, 1
  store i8 %1173, i8* %71, align 1
  %1174 = icmp eq i32 %1161, 0
  %1175 = zext i1 %1174 to i8
  store i8 %1175, i8* %74, align 1
  %1176 = lshr i32 %1161, 31
  %1177 = trunc i32 %1176 to i8
  store i8 %1177, i8* %77, align 1
  %1178 = lshr i32 %1160, 31
  %1179 = add nuw nsw i32 %1176, %1178
  %1180 = icmp eq i32 %1179, 2
  %1181 = zext i1 %1180 to i8
  store i8 %1181, i8* %85, align 1
  %.v46 = select i1 %1174, i64 21, i64 35
  %1182 = add i64 %storemerge17, %.v46
  store i64 %1182, i64* %3, align 8
  br i1 %1174, label %block_462370, label %block_.L_46237e

block_462370:                                     ; preds = %block_.L_46235b
  %1183 = add i64 %1145, -48
  %1184 = add i64 %1182, 3
  store i64 %1184, i64* %3, align 8
  %1185 = inttoptr i64 %1183 to i32*
  %1186 = load i32, i32* %1185, align 4
  %1187 = add i32 %1186, 1
  %1188 = zext i32 %1187 to i64
  store i64 %1188, i64* %RAX.i390, align 8
  %1189 = icmp eq i32 %1186, -1
  %1190 = icmp eq i32 %1187, 0
  %1191 = or i1 %1189, %1190
  %1192 = zext i1 %1191 to i8
  store i8 %1192, i8* %59, align 1
  %1193 = and i32 %1187, 255
  %1194 = tail call i32 @llvm.ctpop.i32(i32 %1193)
  %1195 = trunc i32 %1194 to i8
  %1196 = and i8 %1195, 1
  %1197 = xor i8 %1196, 1
  store i8 %1197, i8* %65, align 1
  %1198 = xor i32 %1187, %1186
  %1199 = lshr i32 %1198, 4
  %1200 = trunc i32 %1199 to i8
  %1201 = and i8 %1200, 1
  store i8 %1201, i8* %71, align 1
  %1202 = zext i1 %1190 to i8
  store i8 %1202, i8* %74, align 1
  %1203 = lshr i32 %1187, 31
  %1204 = trunc i32 %1203 to i8
  store i8 %1204, i8* %77, align 1
  %1205 = lshr i32 %1186, 31
  %1206 = xor i32 %1203, %1205
  %1207 = add nuw nsw i32 %1206, %1203
  %1208 = icmp eq i32 %1207, 2
  %1209 = zext i1 %1208 to i8
  store i8 %1209, i8* %85, align 1
  %1210 = add i64 %1182, 9
  store i64 %1210, i64* %3, align 8
  store i32 %1187, i32* %1185, align 4
  %1211 = load i64, i64* %3, align 8
  %1212 = add i64 %1211, 40
  br label %block_.L_4623a1

block_.L_46237e:                                  ; preds = %block_.L_46235b
  %1213 = add i64 %1182, 4
  store i64 %1213, i64* %3, align 8
  %1214 = load i32, i32* %1148, align 4
  %1215 = sext i32 %1214 to i64
  store i64 %1215, i64* %RAX.i390, align 8
  %1216 = add nsw i64 %1215, 12099168
  %1217 = add i64 %1182, 12
  store i64 %1217, i64* %3, align 8
  %1218 = inttoptr i64 %1216 to i8*
  %1219 = load i8, i8* %1218, align 1
  %1220 = zext i8 %1219 to i64
  store i64 %1220, i64* %RCX.i357, align 8
  %1221 = zext i8 %1219 to i32
  %1222 = add i64 %1145, -32
  %1223 = add i64 %1182, 15
  store i64 %1223, i64* %3, align 8
  %1224 = inttoptr i64 %1222 to i32*
  %1225 = load i32, i32* %1224, align 4
  %1226 = sub i32 %1221, %1225
  %1227 = icmp ult i32 %1221, %1225
  %1228 = zext i1 %1227 to i8
  store i8 %1228, i8* %59, align 1
  %1229 = and i32 %1226, 255
  %1230 = tail call i32 @llvm.ctpop.i32(i32 %1229)
  %1231 = trunc i32 %1230 to i8
  %1232 = and i8 %1231, 1
  %1233 = xor i8 %1232, 1
  store i8 %1233, i8* %65, align 1
  %1234 = xor i32 %1225, %1221
  %1235 = xor i32 %1234, %1226
  %1236 = lshr i32 %1235, 4
  %1237 = trunc i32 %1236 to i8
  %1238 = and i8 %1237, 1
  store i8 %1238, i8* %71, align 1
  %1239 = icmp eq i32 %1226, 0
  %1240 = zext i1 %1239 to i8
  store i8 %1240, i8* %74, align 1
  %1241 = lshr i32 %1226, 31
  %1242 = trunc i32 %1241 to i8
  store i8 %1242, i8* %77, align 1
  %1243 = lshr i32 %1225, 31
  %1244 = add nuw nsw i32 %1241, %1243
  %1245 = icmp eq i32 %1244, 2
  %1246 = zext i1 %1245 to i8
  store i8 %1246, i8* %85, align 1
  %.v47 = select i1 %1239, i64 21, i64 30
  %1247 = add i64 %1182, %.v47
  store i64 %1247, i64* %3, align 8
  br i1 %1239, label %block_462393, label %block_.L_46239c

block_462393:                                     ; preds = %block_.L_46237e
  %1248 = add i64 %1145, -52
  %1249 = add i64 %1247, 3
  store i64 %1249, i64* %3, align 8
  %1250 = inttoptr i64 %1248 to i32*
  %1251 = load i32, i32* %1250, align 4
  %1252 = add i32 %1251, 1
  %1253 = zext i32 %1252 to i64
  store i64 %1253, i64* %RAX.i390, align 8
  %1254 = icmp eq i32 %1251, -1
  %1255 = icmp eq i32 %1252, 0
  %1256 = or i1 %1254, %1255
  %1257 = zext i1 %1256 to i8
  store i8 %1257, i8* %59, align 1
  %1258 = and i32 %1252, 255
  %1259 = tail call i32 @llvm.ctpop.i32(i32 %1258)
  %1260 = trunc i32 %1259 to i8
  %1261 = and i8 %1260, 1
  %1262 = xor i8 %1261, 1
  store i8 %1262, i8* %65, align 1
  %1263 = xor i32 %1252, %1251
  %1264 = lshr i32 %1263, 4
  %1265 = trunc i32 %1264 to i8
  %1266 = and i8 %1265, 1
  store i8 %1266, i8* %71, align 1
  %1267 = zext i1 %1255 to i8
  store i8 %1267, i8* %74, align 1
  %1268 = lshr i32 %1252, 31
  %1269 = trunc i32 %1268 to i8
  store i8 %1269, i8* %77, align 1
  %1270 = lshr i32 %1251, 31
  %1271 = xor i32 %1268, %1270
  %1272 = add nuw nsw i32 %1271, %1268
  %1273 = icmp eq i32 %1272, 2
  %1274 = zext i1 %1273 to i8
  store i8 %1274, i8* %85, align 1
  %1275 = add i64 %1247, 9
  store i64 %1275, i64* %3, align 8
  store i32 %1252, i32* %1250, align 4
  %.pre34 = load i64, i64* %3, align 8
  br label %block_.L_46239c

block_.L_46239c:                                  ; preds = %block_.L_46237e, %block_462393
  %1276 = phi i64 [ %.pre34, %block_462393 ], [ %1247, %block_.L_46237e ]
  %1277 = add i64 %1276, 5
  store i64 %1277, i64* %3, align 8
  br label %block_.L_4623a1

block_.L_4623a1:                                  ; preds = %block_.L_46239c, %block_462370
  %storemerge18 = phi i64 [ %1212, %block_462370 ], [ %1277, %block_.L_46239c ]
  %1278 = load i64, i64* %RBP.i, align 8
  %1279 = add i64 %1278, -52
  %1280 = add i64 %storemerge18, 3
  store i64 %1280, i64* %3, align 8
  %1281 = inttoptr i64 %1279 to i32*
  %1282 = load i32, i32* %1281, align 4
  %1283 = zext i32 %1282 to i64
  store i64 %1283, i64* %RAX.i390, align 8
  %1284 = add i64 %1278, -48
  %1285 = add i64 %storemerge18, 6
  store i64 %1285, i64* %3, align 8
  %1286 = inttoptr i64 %1284 to i32*
  %1287 = load i32, i32* %1286, align 4
  %1288 = sub i32 %1282, %1287
  %1289 = icmp ult i32 %1282, %1287
  %1290 = zext i1 %1289 to i8
  store i8 %1290, i8* %59, align 1
  %1291 = and i32 %1288, 255
  %1292 = tail call i32 @llvm.ctpop.i32(i32 %1291)
  %1293 = trunc i32 %1292 to i8
  %1294 = and i8 %1293, 1
  %1295 = xor i8 %1294, 1
  store i8 %1295, i8* %65, align 1
  %1296 = xor i32 %1287, %1282
  %1297 = xor i32 %1296, %1288
  %1298 = lshr i32 %1297, 4
  %1299 = trunc i32 %1298 to i8
  %1300 = and i8 %1299, 1
  store i8 %1300, i8* %71, align 1
  %1301 = icmp eq i32 %1288, 0
  %1302 = zext i1 %1301 to i8
  store i8 %1302, i8* %74, align 1
  %1303 = lshr i32 %1288, 31
  %1304 = trunc i32 %1303 to i8
  store i8 %1304, i8* %77, align 1
  %1305 = lshr i32 %1282, 31
  %1306 = lshr i32 %1287, 31
  %1307 = xor i32 %1306, %1305
  %1308 = xor i32 %1303, %1305
  %1309 = add nuw nsw i32 %1308, %1307
  %1310 = icmp eq i32 %1309, 2
  %1311 = zext i1 %1310 to i8
  store i8 %1311, i8* %85, align 1
  %1312 = icmp ne i8 %1304, 0
  %1313 = xor i1 %1312, %1310
  %1314 = or i1 %1301, %1313
  %.v48 = select i1 %1314, i64 24, i64 12
  %1315 = add i64 %storemerge18, %.v48
  store i64 %1315, i64* %3, align 8
  br i1 %1314, label %block_.L_4623b9, label %block_4623ad

block_4623ad:                                     ; preds = %block_.L_4623a1
  %1316 = add i64 %1278, -4
  %1317 = add i64 %1315, 7
  store i64 %1317, i64* %3, align 8
  %1318 = inttoptr i64 %1316 to i32*
  store i32 0, i32* %1318, align 4
  %1319 = load i64, i64* %3, align 8
  %1320 = add i64 %1319, 50
  store i64 %1320, i64* %3, align 8
  br label %block_.L_4623e6

block_.L_4623b9:                                  ; preds = %block_.L_4623a1
  %1321 = add i64 %1278, -12
  %1322 = add i64 %1315, 3
  store i64 %1322, i64* %3, align 8
  %1323 = inttoptr i64 %1321 to i32*
  %1324 = load i32, i32* %1323, align 4
  %1325 = zext i32 %1324 to i64
  store i64 %1325, i64* %RAX.i390, align 8
  %1326 = add i64 %1278, -60
  %1327 = add i64 %1315, 6
  store i64 %1327, i64* %3, align 8
  %1328 = inttoptr i64 %1326 to i32*
  %1329 = load i32, i32* %1328, align 4
  %1330 = add i32 %1329, %1324
  %1331 = zext i32 %1330 to i64
  store i64 %1331, i64* %RAX.i390, align 8
  %1332 = icmp ult i32 %1330, %1324
  %1333 = icmp ult i32 %1330, %1329
  %1334 = or i1 %1332, %1333
  %1335 = zext i1 %1334 to i8
  store i8 %1335, i8* %59, align 1
  %1336 = and i32 %1330, 255
  %1337 = tail call i32 @llvm.ctpop.i32(i32 %1336)
  %1338 = trunc i32 %1337 to i8
  %1339 = and i8 %1338, 1
  %1340 = xor i8 %1339, 1
  store i8 %1340, i8* %65, align 1
  %1341 = xor i32 %1329, %1324
  %1342 = xor i32 %1341, %1330
  %1343 = lshr i32 %1342, 4
  %1344 = trunc i32 %1343 to i8
  %1345 = and i8 %1344, 1
  store i8 %1345, i8* %71, align 1
  %1346 = icmp eq i32 %1330, 0
  %1347 = zext i1 %1346 to i8
  store i8 %1347, i8* %74, align 1
  %1348 = lshr i32 %1330, 31
  %1349 = trunc i32 %1348 to i8
  store i8 %1349, i8* %77, align 1
  %1350 = lshr i32 %1324, 31
  %1351 = lshr i32 %1329, 31
  %1352 = xor i32 %1348, %1350
  %1353 = xor i32 %1348, %1351
  %1354 = add nuw nsw i32 %1352, %1353
  %1355 = icmp eq i32 %1354, 2
  %1356 = zext i1 %1355 to i8
  store i8 %1356, i8* %85, align 1
  %1357 = add i64 %1278, -24
  %1358 = add i64 %1315, 10
  store i64 %1358, i64* %3, align 8
  %1359 = inttoptr i64 %1357 to i64*
  %1360 = load i64, i64* %1359, align 8
  store i64 %1360, i64* %RCX.i357, align 8
  %1361 = add i64 %1315, 12
  store i64 %1361, i64* %3, align 8
  %1362 = inttoptr i64 %1360 to i32*
  store i32 %1330, i32* %1362, align 4
  %1363 = load i64, i64* %RBP.i, align 8
  %1364 = add i64 %1363, -4
  %1365 = load i64, i64* %3, align 8
  %1366 = add i64 %1365, 7
  store i64 %1366, i64* %3, align 8
  %1367 = inttoptr i64 %1364 to i32*
  store i32 5, i32* %1367, align 4
  %1368 = load i64, i64* %3, align 8
  %1369 = add i64 %1368, 26
  store i64 %1369, i64* %3, align 8
  br label %block_.L_4623e6

block_.L_4623df:                                  ; preds = %block_.L_46215f
  %1370 = add i64 %96, -4
  %1371 = add i64 %124, 7
  store i64 %1371, i64* %3, align 8
  %1372 = inttoptr i64 %1370 to i32*
  store i32 0, i32* %1372, align 4
  %.pre35 = load i64, i64* %3, align 8
  br label %block_.L_4623e6

block_.L_4623e6:                                  ; preds = %block_.L_4623df, %block_.L_4623b9, %block_4623ad, %block_4622ed, %block_4622bb, %block_.L_46228d, %block_4621d3
  %1373 = phi i64 [ %.pre35, %block_.L_4623df ], [ %744, %block_.L_46228d ], [ %1369, %block_.L_4623b9 ], [ %1320, %block_4623ad ], [ %958, %block_4622ed ], [ %850, %block_4622bb ], [ %369, %block_4621d3 ]
  %MEMORY.10 = phi %struct.Memory* [ %MEMORY.0, %block_.L_4623df ], [ %199, %block_.L_46228d ], [ %199, %block_.L_4623b9 ], [ %199, %block_4623ad ], [ %199, %block_4622ed ], [ %199, %block_4622bb ], [ %199, %block_4621d3 ]
  %1374 = load i64, i64* %RBP.i, align 8
  %1375 = add i64 %1374, -4
  %1376 = add i64 %1373, 3
  store i64 %1376, i64* %3, align 8
  %1377 = inttoptr i64 %1375 to i32*
  %1378 = load i32, i32* %1377, align 4
  %1379 = zext i32 %1378 to i64
  store i64 %1379, i64* %RAX.i390, align 8
  %1380 = add i64 %1373, 4
  store i64 %1380, i64* %3, align 8
  %1381 = load i64, i64* %6, align 8
  %1382 = add i64 %1381, 8
  %1383 = inttoptr i64 %1381 to i64*
  %1384 = load i64, i64* %1383, align 8
  store i64 %1384, i64* %RBP.i, align 8
  store i64 %1382, i64* %6, align 8
  %1385 = add i64 %1373, 5
  store i64 %1385, i64* %3, align 8
  %1386 = inttoptr i64 %1382 to i64*
  %1387 = load i64, i64* %1386, align 8
  store i64 %1387, i64* %3, align 8
  %1388 = add i64 %1381, 16
  store i64 %1388, i64* %6, align 8
  ret %struct.Memory* %MEMORY.10
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
define %struct.Memory* @routine_movl__0x3___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 3, i64* %RAX, align 8
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
define %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
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
define %struct.Memory* @routine_movzbl_0xb89e60___rdx_1____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 12099168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -28
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x1c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -28
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x4__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -4
  %10 = icmp ult i32 %8, 4
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
define %struct.Memory* @routine_jge_.L_4623df(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x4___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x24__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
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
define %struct.Memory* @routine_movl_0x7ae1b0___rcx_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 8053168
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -56
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x24__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
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
define %struct.Memory* @routine_movl__eax__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -64
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cltd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x40__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_idivl__esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
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

; <label>:22:                                     ; preds = %block_400488
  %23 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %6, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:24:                                     ; preds = %block_400488
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq__edx___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x3c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -60
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xc__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x38__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 12099168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x3___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -3
  %8 = icmp ult i32 %4, 3
  %9 = zext i1 %8 to i8
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9, i8* %10, align 1
  %11 = and i32 %7, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = xor i32 %7, %4
  %18 = lshr i32 %17, 4
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %20, i8* %21, align 1
  %22 = icmp eq i32 %7, 0
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %23, i8* %24, align 1
  %25 = lshr i32 %7, 31
  %26 = trunc i32 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %4, 31
  %29 = xor i32 %25, %28
  %30 = add nuw nsw i32 %29, %28
  %31 = icmp eq i32 %30, 2
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %32, i8* %33, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4621b9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4623d1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x38__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
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
define %struct.Memory* @routine_cmpl_MINUS0x1c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -28
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
define %struct.Memory* @routine_je_.L_4621df(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4623e6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x3c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -60
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
define %struct.Memory* @routine_jne_.L_462232(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x3c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -60
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x3___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -3
  %8 = icmp ult i32 %4, 3
  %9 = zext i1 %8 to i8
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9, i8* %10, align 1
  %11 = and i32 %7, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = xor i32 %7, %4
  %18 = lshr i32 %17, 4
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %20, i8* %21, align 1
  %22 = icmp eq i32 %7, 0
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %23, i8* %24, align 1
  %25 = lshr i32 %7, 31
  %26 = trunc i32 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %4, 31
  %29 = xor i32 %25, %28
  %30 = add nuw nsw i32 %29, %28
  %31 = icmp eq i32 %30, 2
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %32, i8* %33, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_46222d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_46229e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_46228d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_462280(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_462299(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x20__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -32
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
define %struct.Memory* @routine_je_.L_4622c7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x3c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -60
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__ecx___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i32, i32* %ECX, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %4 to i32
  %10 = add i32 %5, %9
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RAX, align 8
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
define %struct.Memory* @routine_movzbl_0xb89e60___rdx_1____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4622f9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x34__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_462338(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_46235b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x28__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
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
define %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 12099168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x20__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -32
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
define %struct.Memory* @routine_jne_.L_462356(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x1c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -28
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
define %struct.Memory* @routine_jne_.L_46237e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4623a1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_46239c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jle_.L_4623b9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x5__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 5, i32* %7, align 4
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
define %struct.Memory* @routine_jmpq_.L_46215f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
attributes #1 = { alwaysinline }
attributes #2 = { norecurse nounwind }
attributes #3 = { nounwind }
