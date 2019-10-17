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
define %struct.Memory* @jacobi(%struct.State* noalias, i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #1 {
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
  %RAX.i2556 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %11 = add i64 %7, 16
  %12 = add i64 %10, 7
  store i64 %12, i64* %3, align 8
  %13 = inttoptr i64 %11 to i64*
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %RAX.i2556, align 8
  %R10.i2554 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %15 = add i64 %7, 8
  %16 = add i64 %10, 11
  store i64 %16, i64* %3, align 8
  %17 = inttoptr i64 %15 to i64*
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %R10.i2554, align 8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i2550 = bitcast %union.anon* %19 to i32*
  %20 = add i64 %7, -12
  %21 = load i32, i32* %EDI.i2550, align 4
  %22 = add i64 %10, 14
  store i64 %22, i64* %3, align 8
  %23 = inttoptr i64 %20 to i32*
  store i32 %21, i32* %23, align 4
  %RSI.i2547 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %24 = load i64, i64* %RBP.i, align 8
  %25 = add i64 %24, -16
  %26 = load i64, i64* %RSI.i2547, align 8
  %27 = load i64, i64* %3, align 8
  %28 = add i64 %27, 4
  store i64 %28, i64* %3, align 8
  %29 = inttoptr i64 %25 to i64*
  store i64 %26, i64* %29, align 8
  %RDX.i2544 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %30 = load i64, i64* %RBP.i, align 8
  %31 = add i64 %30, -24
  %32 = load i64, i64* %RDX.i2544, align 8
  %33 = load i64, i64* %3, align 8
  %34 = add i64 %33, 4
  store i64 %34, i64* %3, align 8
  %35 = inttoptr i64 %31 to i64*
  store i64 %32, i64* %35, align 8
  %RCX.i2541 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %36 = load i64, i64* %RBP.i, align 8
  %37 = add i64 %36, -32
  %38 = load i64, i64* %RCX.i2541, align 8
  %39 = load i64, i64* %3, align 8
  %40 = add i64 %39, 4
  store i64 %40, i64* %3, align 8
  %41 = inttoptr i64 %37 to i64*
  store i64 %38, i64* %41, align 8
  %R8.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %42 = load i64, i64* %RBP.i, align 8
  %43 = add i64 %42, -40
  %44 = load i64, i64* %R8.i, align 8
  %45 = load i64, i64* %3, align 8
  %46 = add i64 %45, 4
  store i64 %46, i64* %3, align 8
  %47 = inttoptr i64 %43 to i64*
  store i64 %44, i64* %47, align 8
  %R9.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %48 = load i64, i64* %RBP.i, align 8
  %49 = add i64 %48, -48
  %50 = load i64, i64* %R9.i, align 8
  %51 = load i64, i64* %3, align 8
  %52 = add i64 %51, 4
  store i64 %52, i64* %3, align 8
  %53 = inttoptr i64 %49 to i64*
  store i64 %50, i64* %53, align 8
  %54 = load i64, i64* %RBP.i, align 8
  %55 = add i64 %54, -56
  %56 = load i64, i64* %R10.i2554, align 8
  %57 = load i64, i64* %3, align 8
  %58 = add i64 %57, 4
  store i64 %58, i64* %3, align 8
  %59 = inttoptr i64 %55 to i64*
  store i64 %56, i64* %59, align 8
  %60 = load i64, i64* %RBP.i, align 8
  %61 = add i64 %60, -64
  %62 = load i64, i64* %RAX.i2556, align 8
  %63 = load i64, i64* %3, align 8
  %64 = add i64 %63, 4
  store i64 %64, i64* %3, align 8
  %65 = inttoptr i64 %61 to i64*
  store i64 %62, i64* %65, align 8
  %66 = load i64, i64* %RBP.i, align 8
  %67 = add i64 %66, -40
  %68 = load i64, i64* %3, align 8
  %69 = add i64 %68, 4
  store i64 %69, i64* %3, align 8
  %70 = inttoptr i64 %67 to i64*
  %71 = load i64, i64* %70, align 8
  store i64 %71, i64* %RAX.i2556, align 8
  %RDI.i2527 = getelementptr inbounds %union.anon, %union.anon* %19, i64 0, i32 0
  %72 = add i64 %71, 12
  %73 = add i64 %68, 7
  store i64 %73, i64* %3, align 8
  %74 = inttoptr i64 %72 to i32*
  %75 = load i32, i32* %74, align 4
  %76 = add i32 %75, -1
  %77 = zext i32 %76 to i64
  store i64 %77, i64* %RDI.i2527, align 8
  %78 = icmp eq i32 %75, 0
  %79 = zext i1 %78 to i8
  %80 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %79, i8* %80, align 1
  %81 = and i32 %76, 255
  %82 = tail call i32 @llvm.ctpop.i32(i32 %81)
  %83 = trunc i32 %82 to i8
  %84 = and i8 %83, 1
  %85 = xor i8 %84, 1
  %86 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %85, i8* %86, align 1
  %87 = xor i32 %76, %75
  %88 = lshr i32 %87, 4
  %89 = trunc i32 %88 to i8
  %90 = and i8 %89, 1
  %91 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %90, i8* %91, align 1
  %92 = icmp eq i32 %76, 0
  %93 = zext i1 %92 to i8
  %94 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %93, i8* %94, align 1
  %95 = lshr i32 %76, 31
  %96 = trunc i32 %95 to i8
  %97 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %96, i8* %97, align 1
  %98 = lshr i32 %75, 31
  %99 = xor i32 %95, %98
  %100 = add nuw nsw i32 %99, %98
  %101 = icmp eq i32 %100, 2
  %102 = zext i1 %101 to i8
  %103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %102, i8* %103, align 1
  %104 = add i64 %66, -84
  %105 = add i64 %68, 13
  store i64 %105, i64* %3, align 8
  %106 = inttoptr i64 %104 to i32*
  store i32 %76, i32* %106, align 4
  %107 = load i64, i64* %RBP.i, align 8
  %108 = add i64 %107, -40
  %109 = load i64, i64* %3, align 8
  %110 = add i64 %109, 4
  store i64 %110, i64* %3, align 8
  %111 = inttoptr i64 %108 to i64*
  %112 = load i64, i64* %111, align 8
  store i64 %112, i64* %RAX.i2556, align 8
  %113 = add i64 %112, 16
  %114 = add i64 %109, 7
  store i64 %114, i64* %3, align 8
  %115 = inttoptr i64 %113 to i32*
  %116 = load i32, i32* %115, align 4
  %117 = add i32 %116, -1
  %118 = zext i32 %117 to i64
  store i64 %118, i64* %RDI.i2527, align 8
  %119 = icmp eq i32 %116, 0
  %120 = zext i1 %119 to i8
  store i8 %120, i8* %80, align 1
  %121 = and i32 %117, 255
  %122 = tail call i32 @llvm.ctpop.i32(i32 %121)
  %123 = trunc i32 %122 to i8
  %124 = and i8 %123, 1
  %125 = xor i8 %124, 1
  store i8 %125, i8* %86, align 1
  %126 = xor i32 %117, %116
  %127 = lshr i32 %126, 4
  %128 = trunc i32 %127 to i8
  %129 = and i8 %128, 1
  store i8 %129, i8* %91, align 1
  %130 = icmp eq i32 %117, 0
  %131 = zext i1 %130 to i8
  store i8 %131, i8* %94, align 1
  %132 = lshr i32 %117, 31
  %133 = trunc i32 %132 to i8
  store i8 %133, i8* %97, align 1
  %134 = lshr i32 %116, 31
  %135 = xor i32 %132, %134
  %136 = add nuw nsw i32 %135, %134
  %137 = icmp eq i32 %136, 2
  %138 = zext i1 %137 to i8
  store i8 %138, i8* %103, align 1
  %139 = add i64 %107, -88
  %140 = add i64 %109, 13
  store i64 %140, i64* %3, align 8
  %141 = inttoptr i64 %139 to i32*
  store i32 %117, i32* %141, align 4
  %142 = load i64, i64* %RBP.i, align 8
  %143 = add i64 %142, -40
  %144 = load i64, i64* %3, align 8
  %145 = add i64 %144, 4
  store i64 %145, i64* %3, align 8
  %146 = inttoptr i64 %143 to i64*
  %147 = load i64, i64* %146, align 8
  store i64 %147, i64* %RAX.i2556, align 8
  %148 = add i64 %147, 20
  %149 = add i64 %144, 7
  store i64 %149, i64* %3, align 8
  %150 = inttoptr i64 %148 to i32*
  %151 = load i32, i32* %150, align 4
  %152 = add i32 %151, -1
  %153 = zext i32 %152 to i64
  store i64 %153, i64* %RDI.i2527, align 8
  %154 = icmp eq i32 %151, 0
  %155 = zext i1 %154 to i8
  store i8 %155, i8* %80, align 1
  %156 = and i32 %152, 255
  %157 = tail call i32 @llvm.ctpop.i32(i32 %156)
  %158 = trunc i32 %157 to i8
  %159 = and i8 %158, 1
  %160 = xor i8 %159, 1
  store i8 %160, i8* %86, align 1
  %161 = xor i32 %152, %151
  %162 = lshr i32 %161, 4
  %163 = trunc i32 %162 to i8
  %164 = and i8 %163, 1
  store i8 %164, i8* %91, align 1
  %165 = icmp eq i32 %152, 0
  %166 = zext i1 %165 to i8
  store i8 %166, i8* %94, align 1
  %167 = lshr i32 %152, 31
  %168 = trunc i32 %167 to i8
  store i8 %168, i8* %97, align 1
  %169 = lshr i32 %151, 31
  %170 = xor i32 %167, %169
  %171 = add nuw nsw i32 %170, %169
  %172 = icmp eq i32 %171, 2
  %173 = zext i1 %172 to i8
  store i8 %173, i8* %103, align 1
  %174 = add i64 %142, -92
  %175 = add i64 %144, 13
  store i64 %175, i64* %3, align 8
  %176 = inttoptr i64 %174 to i32*
  store i32 %152, i32* %176, align 4
  %177 = load i64, i64* %RBP.i, align 8
  %178 = add i64 %177, -80
  %179 = load i64, i64* %3, align 8
  %180 = add i64 %179, 7
  store i64 %180, i64* %3, align 8
  %181 = inttoptr i64 %178 to i32*
  store i32 0, i32* %181, align 4
  %182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %183 = bitcast [32 x %union.VectorReg]* %182 to i8*
  %184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %185 = bitcast [32 x %union.VectorReg]* %182 to i32*
  %186 = getelementptr inbounds i8, i8* %183, i64 4
  %187 = bitcast i8* %186 to i32*
  %188 = bitcast i64* %184 to i32*
  %189 = getelementptr inbounds i8, i8* %183, i64 12
  %190 = bitcast i8* %189 to i32*
  %191 = bitcast [32 x %union.VectorReg]* %182 to <2 x float>*
  %192 = bitcast [32 x %union.VectorReg]* %182 to float*
  %193 = bitcast i8* %186 to float*
  %194 = bitcast i64* %184 to float*
  %195 = bitcast i8* %189 to float*
  %196 = bitcast i64* %184 to <2 x i32>*
  %197 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %198 = bitcast %union.VectorReg* %197 to i8*
  %199 = bitcast %union.VectorReg* %197 to float*
  %200 = bitcast %union.VectorReg* %197 to i32*
  %201 = getelementptr inbounds i8, i8* %198, i64 4
  %202 = bitcast i8* %201 to float*
  %203 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %204 = bitcast i64* %203 to float*
  %205 = getelementptr inbounds i8, i8* %198, i64 12
  %206 = bitcast i8* %205 to float*
  %207 = bitcast %union.VectorReg* %197 to <2 x float>*
  %208 = bitcast i64* %203 to <2 x i32>*
  %209 = bitcast i8* %201 to i32*
  %210 = bitcast i64* %203 to i32*
  %211 = bitcast i8* %205 to i32*
  %212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %213 = bitcast %union.VectorReg* %212 to i8*
  %214 = bitcast %union.VectorReg* %212 to float*
  %215 = bitcast %union.VectorReg* %212 to i32*
  %216 = getelementptr inbounds i8, i8* %213, i64 4
  %217 = bitcast i8* %216 to float*
  %218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %219 = bitcast i64* %218 to float*
  %220 = getelementptr inbounds i8, i8* %213, i64 12
  %221 = bitcast i8* %220 to float*
  %222 = bitcast %union.VectorReg* %212 to <2 x float>*
  %223 = bitcast i64* %218 to <2 x i32>*
  %224 = bitcast i8* %216 to i32*
  %225 = bitcast i64* %218 to i32*
  %226 = bitcast i8* %220 to i32*
  %.pre = load i64, i64* %3, align 8
  %227 = bitcast [32 x %union.VectorReg]* %182 to <4 x i32>*
  br label %block_.L_400d49

block_.L_400d49:                                  ; preds = %block_.L_401976, %entry
  %228 = phi i64 [ %7406, %block_.L_401976 ], [ %.pre, %entry ]
  %229 = load i64, i64* %RBP.i, align 8
  %230 = add i64 %229, -80
  %231 = add i64 %228, 3
  store i64 %231, i64* %3, align 8
  %232 = inttoptr i64 %230 to i32*
  %233 = load i32, i32* %232, align 4
  %234 = zext i32 %233 to i64
  store i64 %234, i64* %RAX.i2556, align 8
  %235 = add i64 %229, -4
  %236 = add i64 %228, 6
  store i64 %236, i64* %3, align 8
  %237 = inttoptr i64 %235 to i32*
  %238 = load i32, i32* %237, align 4
  %239 = sub i32 %233, %238
  %240 = icmp ult i32 %233, %238
  %241 = zext i1 %240 to i8
  store i8 %241, i8* %80, align 1
  %242 = and i32 %239, 255
  %243 = tail call i32 @llvm.ctpop.i32(i32 %242)
  %244 = trunc i32 %243 to i8
  %245 = and i8 %244, 1
  %246 = xor i8 %245, 1
  store i8 %246, i8* %86, align 1
  %247 = xor i32 %238, %233
  %248 = xor i32 %247, %239
  %249 = lshr i32 %248, 4
  %250 = trunc i32 %249 to i8
  %251 = and i8 %250, 1
  store i8 %251, i8* %91, align 1
  %252 = icmp eq i32 %239, 0
  %253 = zext i1 %252 to i8
  store i8 %253, i8* %94, align 1
  %254 = lshr i32 %239, 31
  %255 = trunc i32 %254 to i8
  store i8 %255, i8* %97, align 1
  %256 = lshr i32 %233, 31
  %257 = lshr i32 %238, 31
  %258 = xor i32 %257, %256
  %259 = xor i32 %254, %256
  %260 = add nuw nsw i32 %259, %258
  %261 = icmp eq i32 %260, 2
  %262 = zext i1 %261 to i8
  store i8 %262, i8* %103, align 1
  %263 = icmp ne i8 %255, 0
  %264 = xor i1 %263, %261
  %.v33 = select i1 %264, i64 12, i64 3136
  %265 = add i64 %228, %.v33
  store i64 %265, i64* %3, align 8
  br i1 %264, label %block_400d55, label %block_.L_401989

block_400d55:                                     ; preds = %block_.L_400d49
  store <4 x i32> zeroinitializer, <4 x i32>* %227, align 1
  %266 = add i64 %229, -96
  %267 = add i64 %265, 8
  store i64 %267, i64* %3, align 8
  %268 = load <2 x float>, <2 x float>* %191, align 1
  %269 = extractelement <2 x float> %268, i32 0
  %270 = inttoptr i64 %266 to float*
  store float %269, float* %270, align 4
  %271 = load i64, i64* %RBP.i, align 8
  %272 = add i64 %271, -68
  %273 = load i64, i64* %3, align 8
  %274 = add i64 %273, 7
  store i64 %274, i64* %3, align 8
  %275 = inttoptr i64 %272 to i32*
  store i32 1, i32* %275, align 4
  %.pre23 = load i64, i64* %3, align 8
  br label %block_.L_400d64

block_.L_400d64:                                  ; preds = %block_.L_40185e, %block_400d55
  %276 = phi i64 [ %6871, %block_.L_40185e ], [ %.pre23, %block_400d55 ]
  %277 = load i64, i64* %RBP.i, align 8
  %278 = add i64 %277, -68
  %279 = add i64 %276, 3
  store i64 %279, i64* %3, align 8
  %280 = inttoptr i64 %278 to i32*
  %281 = load i32, i32* %280, align 4
  %282 = zext i32 %281 to i64
  store i64 %282, i64* %RAX.i2556, align 8
  %283 = add i64 %277, -84
  %284 = add i64 %276, 6
  store i64 %284, i64* %3, align 8
  %285 = inttoptr i64 %283 to i32*
  %286 = load i32, i32* %285, align 4
  %287 = sub i32 %281, %286
  %288 = icmp ult i32 %281, %286
  %289 = zext i1 %288 to i8
  store i8 %289, i8* %80, align 1
  %290 = and i32 %287, 255
  %291 = tail call i32 @llvm.ctpop.i32(i32 %290)
  %292 = trunc i32 %291 to i8
  %293 = and i8 %292, 1
  %294 = xor i8 %293, 1
  store i8 %294, i8* %86, align 1
  %295 = xor i32 %286, %281
  %296 = xor i32 %295, %287
  %297 = lshr i32 %296, 4
  %298 = trunc i32 %297 to i8
  %299 = and i8 %298, 1
  store i8 %299, i8* %91, align 1
  %300 = icmp eq i32 %287, 0
  %301 = zext i1 %300 to i8
  store i8 %301, i8* %94, align 1
  %302 = lshr i32 %287, 31
  %303 = trunc i32 %302 to i8
  store i8 %303, i8* %97, align 1
  %304 = lshr i32 %281, 31
  %305 = lshr i32 %286, 31
  %306 = xor i32 %305, %304
  %307 = xor i32 %302, %304
  %308 = add nuw nsw i32 %307, %306
  %309 = icmp eq i32 %308, 2
  %310 = zext i1 %309 to i8
  store i8 %310, i8* %103, align 1
  %311 = icmp ne i8 %303, 0
  %312 = xor i1 %311, %309
  %.v34 = select i1 %312, i64 12, i64 2829
  %313 = add i64 %276, %.v34
  store i64 %313, i64* %3, align 8
  br i1 %312, label %block_400d70, label %block_.L_401871

block_400d70:                                     ; preds = %block_.L_400d64
  %314 = add i64 %277, -72
  %315 = add i64 %313, 7
  store i64 %315, i64* %3, align 8
  %316 = inttoptr i64 %314 to i32*
  store i32 1, i32* %316, align 4
  %.pre27 = load i64, i64* %3, align 8
  br label %block_.L_400d77

block_.L_400d77:                                  ; preds = %block_.L_40184b, %block_400d70
  %317 = phi i64 [ %6841, %block_.L_40184b ], [ %.pre27, %block_400d70 ]
  %318 = load i64, i64* %RBP.i, align 8
  %319 = add i64 %318, -72
  %320 = add i64 %317, 3
  store i64 %320, i64* %3, align 8
  %321 = inttoptr i64 %319 to i32*
  %322 = load i32, i32* %321, align 4
  %323 = zext i32 %322 to i64
  store i64 %323, i64* %RAX.i2556, align 8
  %324 = add i64 %318, -88
  %325 = add i64 %317, 6
  store i64 %325, i64* %3, align 8
  %326 = inttoptr i64 %324 to i32*
  %327 = load i32, i32* %326, align 4
  %328 = sub i32 %322, %327
  %329 = icmp ult i32 %322, %327
  %330 = zext i1 %329 to i8
  store i8 %330, i8* %80, align 1
  %331 = and i32 %328, 255
  %332 = tail call i32 @llvm.ctpop.i32(i32 %331)
  %333 = trunc i32 %332 to i8
  %334 = and i8 %333, 1
  %335 = xor i8 %334, 1
  store i8 %335, i8* %86, align 1
  %336 = xor i32 %327, %322
  %337 = xor i32 %336, %328
  %338 = lshr i32 %337, 4
  %339 = trunc i32 %338 to i8
  %340 = and i8 %339, 1
  store i8 %340, i8* %91, align 1
  %341 = icmp eq i32 %328, 0
  %342 = zext i1 %341 to i8
  store i8 %342, i8* %94, align 1
  %343 = lshr i32 %328, 31
  %344 = trunc i32 %343 to i8
  store i8 %344, i8* %97, align 1
  %345 = lshr i32 %322, 31
  %346 = lshr i32 %327, 31
  %347 = xor i32 %346, %345
  %348 = xor i32 %343, %345
  %349 = add nuw nsw i32 %348, %347
  %350 = icmp eq i32 %349, 2
  %351 = zext i1 %350 to i8
  store i8 %351, i8* %103, align 1
  %352 = icmp ne i8 %344, 0
  %353 = xor i1 %352, %350
  %.v31 = select i1 %353, i64 12, i64 2791
  %354 = add i64 %317, %.v31
  store i64 %354, i64* %3, align 8
  br i1 %353, label %block_400d83, label %block_.L_40185e

block_400d83:                                     ; preds = %block_.L_400d77
  %355 = add i64 %318, -76
  %356 = add i64 %354, 7
  store i64 %356, i64* %3, align 8
  %357 = inttoptr i64 %355 to i32*
  store i32 1, i32* %357, align 4
  %.pre28 = load i64, i64* %3, align 8
  br label %block_.L_400d8a

block_.L_400d8a:                                  ; preds = %block_400d96, %block_400d83
  %358 = phi i64 [ %6811, %block_400d96 ], [ %.pre28, %block_400d83 ]
  %359 = load i64, i64* %RBP.i, align 8
  %360 = add i64 %359, -76
  %361 = add i64 %358, 3
  store i64 %361, i64* %3, align 8
  %362 = inttoptr i64 %360 to i32*
  %363 = load i32, i32* %362, align 4
  %364 = zext i32 %363 to i64
  store i64 %364, i64* %RAX.i2556, align 8
  %365 = add i64 %359, -92
  %366 = add i64 %358, 6
  store i64 %366, i64* %3, align 8
  %367 = inttoptr i64 %365 to i32*
  %368 = load i32, i32* %367, align 4
  %369 = sub i32 %363, %368
  %370 = icmp ult i32 %363, %368
  %371 = zext i1 %370 to i8
  store i8 %371, i8* %80, align 1
  %372 = and i32 %369, 255
  %373 = tail call i32 @llvm.ctpop.i32(i32 %372)
  %374 = trunc i32 %373 to i8
  %375 = and i8 %374, 1
  %376 = xor i8 %375, 1
  store i8 %376, i8* %86, align 1
  %377 = xor i32 %368, %363
  %378 = xor i32 %377, %369
  %379 = lshr i32 %378, 4
  %380 = trunc i32 %379 to i8
  %381 = and i8 %380, 1
  store i8 %381, i8* %91, align 1
  %382 = icmp eq i32 %369, 0
  %383 = zext i1 %382 to i8
  store i8 %383, i8* %94, align 1
  %384 = lshr i32 %369, 31
  %385 = trunc i32 %384 to i8
  store i8 %385, i8* %97, align 1
  %386 = lshr i32 %363, 31
  %387 = lshr i32 %368, 31
  %388 = xor i32 %387, %386
  %389 = xor i32 %384, %386
  %390 = add nuw nsw i32 %389, %388
  %391 = icmp eq i32 %390, 2
  %392 = zext i1 %391 to i8
  store i8 %392, i8* %103, align 1
  %393 = icmp ne i8 %385, 0
  %394 = xor i1 %393, %391
  %.v32 = select i1 %394, i64 12, i64 2753
  %395 = add i64 %358, %.v32
  store i64 %395, i64* %3, align 8
  br i1 %394, label %block_400d96, label %block_.L_40184b

block_400d96:                                     ; preds = %block_.L_400d8a
  %396 = add i64 %359, -16
  %397 = add i64 %395, 4
  store i64 %397, i64* %3, align 8
  %398 = inttoptr i64 %396 to i64*
  %399 = load i64, i64* %398, align 8
  store i64 %399, i64* %RAX.i2556, align 8
  %400 = add i64 %395, 7
  store i64 %400, i64* %3, align 8
  %401 = inttoptr i64 %399 to i64*
  %402 = load i64, i64* %401, align 8
  store i64 %402, i64* %RAX.i2556, align 8
  %403 = add i64 %395, 11
  store i64 %403, i64* %3, align 8
  %404 = load i64, i64* %398, align 8
  store i64 %404, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %80, align 1
  store i8 1, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  store i8 0, i8* %97, align 1
  store i8 0, i8* %103, align 1
  %405 = add i64 %395, 19
  store i64 %405, i64* %3, align 8
  %406 = load i64, i64* %398, align 8
  store i64 %406, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %80, align 1
  store i8 1, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  store i8 0, i8* %97, align 1
  store i8 0, i8* %103, align 1
  %407 = add i64 %395, 27
  store i64 %407, i64* %3, align 8
  %408 = load i64, i64* %398, align 8
  store i64 %408, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %80, align 1
  store i8 1, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  store i8 0, i8* %97, align 1
  store i8 0, i8* %103, align 1
  %409 = add i64 %359, -68
  %410 = add i64 %395, 34
  store i64 %410, i64* %3, align 8
  %411 = inttoptr i64 %409 to i32*
  %412 = load i32, i32* %411, align 4
  %413 = zext i32 %412 to i64
  store i64 %413, i64* %RSI.i2547, align 8
  %414 = add i64 %395, 38
  store i64 %414, i64* %3, align 8
  %415 = load i64, i64* %398, align 8
  store i64 %415, i64* %RCX.i2541, align 8
  %416 = add i64 %415, 16
  %417 = add i64 %395, 42
  store i64 %417, i64* %3, align 8
  %418 = inttoptr i64 %416 to i32*
  %419 = load i32, i32* %418, align 4
  %420 = sext i32 %412 to i64
  %421 = sext i32 %419 to i64
  %422 = mul nsw i64 %421, %420
  %423 = trunc i64 %422 to i32
  %424 = and i64 %422, 4294967295
  store i64 %424, i64* %RSI.i2547, align 8
  %425 = shl i64 %422, 32
  %426 = ashr exact i64 %425, 32
  %427 = icmp ne i64 %426, %422
  %428 = zext i1 %427 to i8
  store i8 %428, i8* %80, align 1
  %429 = and i32 %423, 255
  %430 = tail call i32 @llvm.ctpop.i32(i32 %429)
  %431 = trunc i32 %430 to i8
  %432 = and i8 %431, 1
  %433 = xor i8 %432, 1
  store i8 %433, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  %434 = lshr i32 %423, 31
  %435 = trunc i32 %434 to i8
  store i8 %435, i8* %97, align 1
  store i8 %428, i8* %103, align 1
  %436 = add i64 %395, 46
  store i64 %436, i64* %3, align 8
  %437 = load i64, i64* %398, align 8
  store i64 %437, i64* %RCX.i2541, align 8
  %438 = add i64 %437, 20
  %439 = add i64 %395, 50
  store i64 %439, i64* %3, align 8
  %440 = inttoptr i64 %438 to i32*
  %441 = load i32, i32* %440, align 4
  %442 = shl i64 %422, 32
  %443 = ashr exact i64 %442, 32
  %444 = sext i32 %441 to i64
  %445 = mul nsw i64 %444, %443
  %446 = and i64 %445, 4294967295
  store i64 %446, i64* %RSI.i2547, align 8
  %447 = trunc i64 %445 to i32
  %448 = and i64 %445, 4294967295
  store i64 %448, i64* %RDX.i2544, align 8
  store i8 0, i8* %80, align 1
  %449 = and i32 %447, 255
  %450 = tail call i32 @llvm.ctpop.i32(i32 %449)
  %451 = trunc i32 %450 to i8
  %452 = and i8 %451, 1
  %453 = xor i8 %452, 1
  store i8 %453, i8* %86, align 1
  store i8 0, i8* %91, align 1
  %454 = icmp eq i32 %447, 0
  %455 = zext i1 %454 to i8
  store i8 %455, i8* %94, align 1
  %456 = lshr i32 %447, 31
  %457 = trunc i32 %456 to i8
  store i8 %457, i8* %97, align 1
  store i8 0, i8* %103, align 1
  %458 = load i64, i64* %RBP.i, align 8
  %459 = add i64 %458, -72
  %460 = add i64 %395, 55
  store i64 %460, i64* %3, align 8
  %461 = inttoptr i64 %459 to i32*
  %462 = load i32, i32* %461, align 4
  %463 = zext i32 %462 to i64
  store i64 %463, i64* %RSI.i2547, align 8
  %464 = add i64 %458, -16
  %465 = add i64 %395, 59
  store i64 %465, i64* %3, align 8
  %466 = inttoptr i64 %464 to i64*
  %467 = load i64, i64* %466, align 8
  store i64 %467, i64* %RCX.i2541, align 8
  %468 = add i64 %467, 20
  %469 = add i64 %395, 63
  store i64 %469, i64* %3, align 8
  %470 = inttoptr i64 %468 to i32*
  %471 = load i32, i32* %470, align 4
  %472 = sext i32 %462 to i64
  %473 = sext i32 %471 to i64
  %474 = mul nsw i64 %473, %472
  %475 = and i64 %474, 4294967295
  store i64 %475, i64* %RSI.i2547, align 8
  %476 = trunc i64 %474 to i32
  %477 = add i32 %476, %447
  %478 = zext i32 %477 to i64
  store i64 %478, i64* %RDX.i2544, align 8
  %479 = icmp ult i32 %477, %447
  %480 = icmp ult i32 %477, %476
  %481 = or i1 %479, %480
  %482 = zext i1 %481 to i8
  store i8 %482, i8* %80, align 1
  %483 = and i32 %477, 255
  %484 = tail call i32 @llvm.ctpop.i32(i32 %483)
  %485 = trunc i32 %484 to i8
  %486 = and i8 %485, 1
  %487 = xor i8 %486, 1
  store i8 %487, i8* %86, align 1
  %488 = xor i64 %474, %445
  %489 = trunc i64 %488 to i32
  %490 = xor i32 %489, %477
  %491 = lshr i32 %490, 4
  %492 = trunc i32 %491 to i8
  %493 = and i8 %492, 1
  store i8 %493, i8* %91, align 1
  %494 = icmp eq i32 %477, 0
  %495 = zext i1 %494 to i8
  store i8 %495, i8* %94, align 1
  %496 = lshr i32 %477, 31
  %497 = trunc i32 %496 to i8
  store i8 %497, i8* %97, align 1
  %498 = lshr i32 %476, 31
  %499 = xor i32 %496, %456
  %500 = xor i32 %496, %498
  %501 = add nuw nsw i32 %499, %500
  %502 = icmp eq i32 %501, 2
  %503 = zext i1 %502 to i8
  store i8 %503, i8* %103, align 1
  %504 = add i64 %458, -76
  %505 = add i64 %395, 68
  store i64 %505, i64* %3, align 8
  %506 = inttoptr i64 %504 to i32*
  %507 = load i32, i32* %506, align 4
  %508 = add i32 %507, %477
  %509 = zext i32 %508 to i64
  store i64 %509, i64* %RDX.i2544, align 8
  %510 = icmp ult i32 %508, %477
  %511 = icmp ult i32 %508, %507
  %512 = or i1 %510, %511
  %513 = zext i1 %512 to i8
  store i8 %513, i8* %80, align 1
  %514 = and i32 %508, 255
  %515 = tail call i32 @llvm.ctpop.i32(i32 %514)
  %516 = trunc i32 %515 to i8
  %517 = and i8 %516, 1
  %518 = xor i8 %517, 1
  store i8 %518, i8* %86, align 1
  %519 = xor i32 %507, %477
  %520 = xor i32 %519, %508
  %521 = lshr i32 %520, 4
  %522 = trunc i32 %521 to i8
  %523 = and i8 %522, 1
  store i8 %523, i8* %91, align 1
  %524 = icmp eq i32 %508, 0
  %525 = zext i1 %524 to i8
  store i8 %525, i8* %94, align 1
  %526 = lshr i32 %508, 31
  %527 = trunc i32 %526 to i8
  store i8 %527, i8* %97, align 1
  %528 = lshr i32 %507, 31
  %529 = xor i32 %526, %496
  %530 = xor i32 %526, %528
  %531 = add nuw nsw i32 %529, %530
  %532 = icmp eq i32 %531, 2
  %533 = zext i1 %532 to i8
  store i8 %533, i8* %103, align 1
  %534 = sext i32 %508 to i64
  store i64 %534, i64* %RCX.i2541, align 8
  %535 = load i64, i64* %RAX.i2556, align 8
  %536 = shl nsw i64 %534, 2
  %537 = add i64 %535, %536
  %538 = add i64 %395, 76
  store i64 %538, i64* %3, align 8
  %539 = inttoptr i64 %537 to i32*
  %540 = load i32, i32* %539, align 4
  store i32 %540, i32* %185, align 1
  store float 0.000000e+00, float* %193, align 1
  store float 0.000000e+00, float* %194, align 1
  store float 0.000000e+00, float* %195, align 1
  %541 = load i64, i64* %RBP.i, align 8
  %542 = add i64 %541, -40
  %543 = add i64 %395, 80
  store i64 %543, i64* %3, align 8
  %544 = inttoptr i64 %542 to i64*
  %545 = load i64, i64* %544, align 8
  store i64 %545, i64* %RAX.i2556, align 8
  %546 = add i64 %395, 83
  store i64 %546, i64* %3, align 8
  %547 = inttoptr i64 %545 to i64*
  %548 = load i64, i64* %547, align 8
  store i64 %548, i64* %RAX.i2556, align 8
  %549 = add i64 %395, 87
  store i64 %549, i64* %3, align 8
  %550 = load i64, i64* %544, align 8
  store i64 %550, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %80, align 1
  store i8 1, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  store i8 0, i8* %97, align 1
  store i8 0, i8* %103, align 1
  %551 = add i64 %395, 95
  store i64 %551, i64* %3, align 8
  %552 = load i64, i64* %544, align 8
  store i64 %552, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %80, align 1
  store i8 1, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  store i8 0, i8* %97, align 1
  store i8 0, i8* %103, align 1
  %553 = add i64 %395, 103
  store i64 %553, i64* %3, align 8
  %554 = load i64, i64* %544, align 8
  store i64 %554, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %80, align 1
  store i8 1, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  store i8 0, i8* %97, align 1
  store i8 0, i8* %103, align 1
  %555 = add i64 %541, -68
  %556 = add i64 %395, 110
  store i64 %556, i64* %3, align 8
  %557 = inttoptr i64 %555 to i32*
  %558 = load i32, i32* %557, align 4
  %559 = add i32 %558, 1
  %560 = zext i32 %559 to i64
  store i64 %560, i64* %RSI.i2547, align 8
  %561 = icmp eq i32 %558, -1
  %562 = icmp eq i32 %559, 0
  %563 = or i1 %561, %562
  %564 = zext i1 %563 to i8
  store i8 %564, i8* %80, align 1
  %565 = and i32 %559, 255
  %566 = tail call i32 @llvm.ctpop.i32(i32 %565)
  %567 = trunc i32 %566 to i8
  %568 = and i8 %567, 1
  %569 = xor i8 %568, 1
  store i8 %569, i8* %86, align 1
  %570 = xor i32 %559, %558
  %571 = lshr i32 %570, 4
  %572 = trunc i32 %571 to i8
  %573 = and i8 %572, 1
  store i8 %573, i8* %91, align 1
  %574 = zext i1 %562 to i8
  store i8 %574, i8* %94, align 1
  %575 = lshr i32 %559, 31
  %576 = trunc i32 %575 to i8
  store i8 %576, i8* %97, align 1
  %577 = lshr i32 %558, 31
  %578 = xor i32 %575, %577
  %579 = add nuw nsw i32 %578, %575
  %580 = icmp eq i32 %579, 2
  %581 = zext i1 %580 to i8
  store i8 %581, i8* %103, align 1
  %582 = add i64 %395, 117
  store i64 %582, i64* %3, align 8
  %583 = load i64, i64* %544, align 8
  store i64 %583, i64* %RCX.i2541, align 8
  %584 = add i64 %583, 16
  %585 = add i64 %395, 121
  store i64 %585, i64* %3, align 8
  %586 = inttoptr i64 %584 to i32*
  %587 = load i32, i32* %586, align 4
  %588 = sext i32 %559 to i64
  %589 = sext i32 %587 to i64
  %590 = mul nsw i64 %589, %588
  %591 = trunc i64 %590 to i32
  %592 = and i64 %590, 4294967295
  store i64 %592, i64* %RSI.i2547, align 8
  %593 = shl i64 %590, 32
  %594 = ashr exact i64 %593, 32
  %595 = icmp ne i64 %594, %590
  %596 = zext i1 %595 to i8
  store i8 %596, i8* %80, align 1
  %597 = and i32 %591, 255
  %598 = tail call i32 @llvm.ctpop.i32(i32 %597)
  %599 = trunc i32 %598 to i8
  %600 = and i8 %599, 1
  %601 = xor i8 %600, 1
  store i8 %601, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  %602 = lshr i32 %591, 31
  %603 = trunc i32 %602 to i8
  store i8 %603, i8* %97, align 1
  store i8 %596, i8* %103, align 1
  %604 = load i64, i64* %RBP.i, align 8
  %605 = add i64 %604, -40
  %606 = add i64 %395, 125
  store i64 %606, i64* %3, align 8
  %607 = inttoptr i64 %605 to i64*
  %608 = load i64, i64* %607, align 8
  store i64 %608, i64* %RCX.i2541, align 8
  %609 = add i64 %608, 20
  %610 = add i64 %395, 129
  store i64 %610, i64* %3, align 8
  %611 = inttoptr i64 %609 to i32*
  %612 = load i32, i32* %611, align 4
  %613 = shl i64 %590, 32
  %614 = ashr exact i64 %613, 32
  %615 = sext i32 %612 to i64
  %616 = mul nsw i64 %615, %614
  %617 = and i64 %616, 4294967295
  store i64 %617, i64* %RSI.i2547, align 8
  %618 = load i64, i64* %RDX.i2544, align 8
  %619 = trunc i64 %616 to i32
  %620 = trunc i64 %618 to i32
  %621 = add i32 %619, %620
  %622 = zext i32 %621 to i64
  store i64 %622, i64* %RDX.i2544, align 8
  %623 = icmp ult i32 %621, %620
  %624 = icmp ult i32 %621, %619
  %625 = or i1 %623, %624
  %626 = zext i1 %625 to i8
  store i8 %626, i8* %80, align 1
  %627 = and i32 %621, 255
  %628 = tail call i32 @llvm.ctpop.i32(i32 %627)
  %629 = trunc i32 %628 to i8
  %630 = and i8 %629, 1
  %631 = xor i8 %630, 1
  store i8 %631, i8* %86, align 1
  %632 = xor i64 %616, %618
  %633 = trunc i64 %632 to i32
  %634 = xor i32 %633, %621
  %635 = lshr i32 %634, 4
  %636 = trunc i32 %635 to i8
  %637 = and i8 %636, 1
  store i8 %637, i8* %91, align 1
  %638 = icmp eq i32 %621, 0
  %639 = zext i1 %638 to i8
  store i8 %639, i8* %94, align 1
  %640 = lshr i32 %621, 31
  %641 = trunc i32 %640 to i8
  store i8 %641, i8* %97, align 1
  %642 = lshr i32 %620, 31
  %643 = lshr i32 %619, 31
  %644 = xor i32 %640, %642
  %645 = xor i32 %640, %643
  %646 = add nuw nsw i32 %644, %645
  %647 = icmp eq i32 %646, 2
  %648 = zext i1 %647 to i8
  store i8 %648, i8* %103, align 1
  %649 = add i64 %604, -72
  %650 = add i64 %395, 134
  store i64 %650, i64* %3, align 8
  %651 = inttoptr i64 %649 to i32*
  %652 = load i32, i32* %651, align 4
  %653 = zext i32 %652 to i64
  store i64 %653, i64* %RSI.i2547, align 8
  %654 = add i64 %395, 138
  store i64 %654, i64* %3, align 8
  %655 = load i64, i64* %607, align 8
  store i64 %655, i64* %RCX.i2541, align 8
  %656 = add i64 %655, 20
  %657 = add i64 %395, 142
  store i64 %657, i64* %3, align 8
  %658 = inttoptr i64 %656 to i32*
  %659 = load i32, i32* %658, align 4
  %660 = sext i32 %652 to i64
  %661 = sext i32 %659 to i64
  %662 = mul nsw i64 %661, %660
  %663 = and i64 %662, 4294967295
  store i64 %663, i64* %RSI.i2547, align 8
  %664 = trunc i64 %662 to i32
  %665 = add i32 %664, %621
  %666 = zext i32 %665 to i64
  store i64 %666, i64* %RDX.i2544, align 8
  %667 = icmp ult i32 %665, %621
  %668 = icmp ult i32 %665, %664
  %669 = or i1 %667, %668
  %670 = zext i1 %669 to i8
  store i8 %670, i8* %80, align 1
  %671 = and i32 %665, 255
  %672 = tail call i32 @llvm.ctpop.i32(i32 %671)
  %673 = trunc i32 %672 to i8
  %674 = and i8 %673, 1
  %675 = xor i8 %674, 1
  store i8 %675, i8* %86, align 1
  %676 = xor i64 %662, %622
  %677 = trunc i64 %676 to i32
  %678 = xor i32 %677, %665
  %679 = lshr i32 %678, 4
  %680 = trunc i32 %679 to i8
  %681 = and i8 %680, 1
  store i8 %681, i8* %91, align 1
  %682 = icmp eq i32 %665, 0
  %683 = zext i1 %682 to i8
  store i8 %683, i8* %94, align 1
  %684 = lshr i32 %665, 31
  %685 = trunc i32 %684 to i8
  store i8 %685, i8* %97, align 1
  %686 = lshr i32 %664, 31
  %687 = xor i32 %684, %640
  %688 = xor i32 %684, %686
  %689 = add nuw nsw i32 %687, %688
  %690 = icmp eq i32 %689, 2
  %691 = zext i1 %690 to i8
  store i8 %691, i8* %103, align 1
  %692 = load i64, i64* %RBP.i, align 8
  %693 = add i64 %692, -76
  %694 = add i64 %395, 147
  store i64 %694, i64* %3, align 8
  %695 = inttoptr i64 %693 to i32*
  %696 = load i32, i32* %695, align 4
  %697 = add i32 %696, %665
  %698 = zext i32 %697 to i64
  store i64 %698, i64* %RDX.i2544, align 8
  %699 = icmp ult i32 %697, %665
  %700 = icmp ult i32 %697, %696
  %701 = or i1 %699, %700
  %702 = zext i1 %701 to i8
  store i8 %702, i8* %80, align 1
  %703 = and i32 %697, 255
  %704 = tail call i32 @llvm.ctpop.i32(i32 %703)
  %705 = trunc i32 %704 to i8
  %706 = and i8 %705, 1
  %707 = xor i8 %706, 1
  store i8 %707, i8* %86, align 1
  %708 = xor i32 %696, %665
  %709 = xor i32 %708, %697
  %710 = lshr i32 %709, 4
  %711 = trunc i32 %710 to i8
  %712 = and i8 %711, 1
  store i8 %712, i8* %91, align 1
  %713 = icmp eq i32 %697, 0
  %714 = zext i1 %713 to i8
  store i8 %714, i8* %94, align 1
  %715 = lshr i32 %697, 31
  %716 = trunc i32 %715 to i8
  store i8 %716, i8* %97, align 1
  %717 = lshr i32 %696, 31
  %718 = xor i32 %715, %684
  %719 = xor i32 %715, %717
  %720 = add nuw nsw i32 %718, %719
  %721 = icmp eq i32 %720, 2
  %722 = zext i1 %721 to i8
  store i8 %722, i8* %103, align 1
  %723 = sext i32 %697 to i64
  store i64 %723, i64* %RCX.i2541, align 8
  %724 = load i64, i64* %RAX.i2556, align 8
  %725 = shl nsw i64 %723, 2
  %726 = add i64 %724, %725
  %727 = add i64 %395, 155
  store i64 %727, i64* %3, align 8
  %728 = load <2 x float>, <2 x float>* %191, align 1
  %729 = load <2 x i32>, <2 x i32>* %196, align 1
  %730 = inttoptr i64 %726 to float*
  %731 = load float, float* %730, align 4
  %732 = extractelement <2 x float> %728, i32 0
  %733 = fmul float %732, %731
  store float %733, float* %192, align 1
  %734 = bitcast <2 x float> %728 to <2 x i32>
  %735 = extractelement <2 x i32> %734, i32 1
  store i32 %735, i32* %187, align 1
  %736 = extractelement <2 x i32> %729, i32 0
  store i32 %736, i32* %188, align 1
  %737 = extractelement <2 x i32> %729, i32 1
  store i32 %737, i32* %190, align 1
  %738 = add i64 %692, -16
  %739 = add i64 %395, 159
  store i64 %739, i64* %3, align 8
  %740 = inttoptr i64 %738 to i64*
  %741 = load i64, i64* %740, align 8
  store i64 %741, i64* %RAX.i2556, align 8
  %742 = add i64 %395, 162
  store i64 %742, i64* %3, align 8
  %743 = inttoptr i64 %741 to i64*
  %744 = load i64, i64* %743, align 8
  store i64 %744, i64* %RAX.i2556, align 8
  %745 = add i64 %395, 166
  store i64 %745, i64* %3, align 8
  %746 = load i64, i64* %740, align 8
  store i64 %746, i64* %RCX.i2541, align 8
  %747 = add i64 %746, 12
  %748 = add i64 %395, 169
  store i64 %748, i64* %3, align 8
  %749 = inttoptr i64 %747 to i32*
  %750 = load i32, i32* %749, align 4
  %751 = zext i32 %750 to i64
  store i64 %751, i64* %RDX.i2544, align 8
  %752 = add i64 %395, 176
  store i64 %752, i64* %3, align 8
  %753 = load i64, i64* %740, align 8
  store i64 %753, i64* %RCX.i2541, align 8
  %754 = add i64 %753, 16
  %755 = add i64 %395, 180
  store i64 %755, i64* %3, align 8
  %756 = inttoptr i64 %754 to i32*
  %757 = load i32, i32* %756, align 4
  %758 = sext i32 %750 to i64
  %759 = sext i32 %757 to i64
  %760 = mul nsw i64 %759, %758
  %761 = trunc i64 %760 to i32
  %762 = and i64 %760, 4294967295
  store i64 %762, i64* %RDX.i2544, align 8
  %763 = shl i64 %760, 32
  %764 = ashr exact i64 %763, 32
  %765 = icmp ne i64 %764, %760
  %766 = zext i1 %765 to i8
  store i8 %766, i8* %80, align 1
  %767 = and i32 %761, 255
  %768 = tail call i32 @llvm.ctpop.i32(i32 %767)
  %769 = trunc i32 %768 to i8
  %770 = and i8 %769, 1
  %771 = xor i8 %770, 1
  store i8 %771, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  %772 = lshr i32 %761, 31
  %773 = trunc i32 %772 to i8
  store i8 %773, i8* %97, align 1
  store i8 %766, i8* %103, align 1
  %774 = load i64, i64* %RBP.i, align 8
  %775 = add i64 %774, -16
  %776 = add i64 %395, 184
  store i64 %776, i64* %3, align 8
  %777 = inttoptr i64 %775 to i64*
  %778 = load i64, i64* %777, align 8
  store i64 %778, i64* %RCX.i2541, align 8
  %779 = add i64 %778, 20
  %780 = add i64 %395, 188
  store i64 %780, i64* %3, align 8
  %781 = inttoptr i64 %779 to i32*
  %782 = load i32, i32* %781, align 4
  %783 = shl i64 %760, 32
  %784 = ashr exact i64 %783, 32
  %785 = sext i32 %782 to i64
  %786 = mul nsw i64 %785, %784
  %787 = trunc i64 %786 to i32
  %788 = and i64 %786, 4294967295
  store i64 %788, i64* %RDX.i2544, align 8
  %789 = shl i64 %786, 32
  %790 = ashr exact i64 %789, 32
  %791 = icmp ne i64 %790, %786
  %792 = zext i1 %791 to i8
  store i8 %792, i8* %80, align 1
  %793 = and i32 %787, 255
  %794 = tail call i32 @llvm.ctpop.i32(i32 %793)
  %795 = trunc i32 %794 to i8
  %796 = and i8 %795, 1
  %797 = xor i8 %796, 1
  store i8 %797, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  %798 = lshr i32 %787, 31
  %799 = trunc i32 %798 to i8
  store i8 %799, i8* %97, align 1
  store i8 %792, i8* %103, align 1
  %800 = add i64 %774, -68
  %801 = add i64 %395, 191
  store i64 %801, i64* %3, align 8
  %802 = inttoptr i64 %800 to i32*
  %803 = load i32, i32* %802, align 4
  %804 = zext i32 %803 to i64
  store i64 %804, i64* %RSI.i2547, align 8
  %805 = add i64 %395, 195
  store i64 %805, i64* %3, align 8
  %806 = load i64, i64* %777, align 8
  store i64 %806, i64* %RCX.i2541, align 8
  %807 = add i64 %806, 16
  %808 = add i64 %395, 199
  store i64 %808, i64* %3, align 8
  %809 = inttoptr i64 %807 to i32*
  %810 = load i32, i32* %809, align 4
  %811 = sext i32 %803 to i64
  %812 = sext i32 %810 to i64
  %813 = mul nsw i64 %812, %811
  %814 = trunc i64 %813 to i32
  %815 = and i64 %813, 4294967295
  store i64 %815, i64* %RSI.i2547, align 8
  %816 = shl i64 %813, 32
  %817 = ashr exact i64 %816, 32
  %818 = icmp ne i64 %817, %813
  %819 = zext i1 %818 to i8
  store i8 %819, i8* %80, align 1
  %820 = and i32 %814, 255
  %821 = tail call i32 @llvm.ctpop.i32(i32 %820)
  %822 = trunc i32 %821 to i8
  %823 = and i8 %822, 1
  %824 = xor i8 %823, 1
  store i8 %824, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  %825 = lshr i32 %814, 31
  %826 = trunc i32 %825 to i8
  store i8 %826, i8* %97, align 1
  store i8 %819, i8* %103, align 1
  %827 = add i64 %395, 203
  store i64 %827, i64* %3, align 8
  %828 = load i64, i64* %777, align 8
  store i64 %828, i64* %RCX.i2541, align 8
  %829 = add i64 %828, 20
  %830 = add i64 %395, 207
  store i64 %830, i64* %3, align 8
  %831 = inttoptr i64 %829 to i32*
  %832 = load i32, i32* %831, align 4
  %833 = shl i64 %813, 32
  %834 = ashr exact i64 %833, 32
  %835 = sext i32 %832 to i64
  %836 = mul nsw i64 %835, %834
  %837 = and i64 %836, 4294967295
  store i64 %837, i64* %RSI.i2547, align 8
  %838 = trunc i64 %836 to i32
  %839 = trunc i64 %786 to i32
  %840 = add i32 %838, %839
  %841 = zext i32 %840 to i64
  store i64 %841, i64* %RDX.i2544, align 8
  %842 = icmp ult i32 %840, %839
  %843 = icmp ult i32 %840, %838
  %844 = or i1 %842, %843
  %845 = zext i1 %844 to i8
  store i8 %845, i8* %80, align 1
  %846 = and i32 %840, 255
  %847 = tail call i32 @llvm.ctpop.i32(i32 %846)
  %848 = trunc i32 %847 to i8
  %849 = and i8 %848, 1
  %850 = xor i8 %849, 1
  store i8 %850, i8* %86, align 1
  %851 = xor i64 %836, %786
  %852 = trunc i64 %851 to i32
  %853 = xor i32 %852, %840
  %854 = lshr i32 %853, 4
  %855 = trunc i32 %854 to i8
  %856 = and i8 %855, 1
  store i8 %856, i8* %91, align 1
  %857 = icmp eq i32 %840, 0
  %858 = zext i1 %857 to i8
  store i8 %858, i8* %94, align 1
  %859 = lshr i32 %840, 31
  %860 = trunc i32 %859 to i8
  store i8 %860, i8* %97, align 1
  %861 = lshr i32 %839, 31
  %862 = lshr i32 %838, 31
  %863 = xor i32 %859, %861
  %864 = xor i32 %859, %862
  %865 = add nuw nsw i32 %863, %864
  %866 = icmp eq i32 %865, 2
  %867 = zext i1 %866 to i8
  store i8 %867, i8* %103, align 1
  %868 = load i64, i64* %RBP.i, align 8
  %869 = add i64 %868, -72
  %870 = add i64 %395, 212
  store i64 %870, i64* %3, align 8
  %871 = inttoptr i64 %869 to i32*
  %872 = load i32, i32* %871, align 4
  %873 = zext i32 %872 to i64
  store i64 %873, i64* %RSI.i2547, align 8
  %874 = add i64 %868, -16
  %875 = add i64 %395, 216
  store i64 %875, i64* %3, align 8
  %876 = inttoptr i64 %874 to i64*
  %877 = load i64, i64* %876, align 8
  store i64 %877, i64* %RCX.i2541, align 8
  %878 = add i64 %877, 20
  %879 = add i64 %395, 220
  store i64 %879, i64* %3, align 8
  %880 = inttoptr i64 %878 to i32*
  %881 = load i32, i32* %880, align 4
  %882 = sext i32 %872 to i64
  %883 = sext i32 %881 to i64
  %884 = mul nsw i64 %883, %882
  %885 = and i64 %884, 4294967295
  store i64 %885, i64* %RSI.i2547, align 8
  %886 = trunc i64 %884 to i32
  %887 = add i32 %886, %840
  %888 = zext i32 %887 to i64
  store i64 %888, i64* %RDX.i2544, align 8
  %889 = icmp ult i32 %887, %840
  %890 = icmp ult i32 %887, %886
  %891 = or i1 %889, %890
  %892 = zext i1 %891 to i8
  store i8 %892, i8* %80, align 1
  %893 = and i32 %887, 255
  %894 = tail call i32 @llvm.ctpop.i32(i32 %893)
  %895 = trunc i32 %894 to i8
  %896 = and i8 %895, 1
  %897 = xor i8 %896, 1
  store i8 %897, i8* %86, align 1
  %898 = xor i64 %884, %841
  %899 = trunc i64 %898 to i32
  %900 = xor i32 %899, %887
  %901 = lshr i32 %900, 4
  %902 = trunc i32 %901 to i8
  %903 = and i8 %902, 1
  store i8 %903, i8* %91, align 1
  %904 = icmp eq i32 %887, 0
  %905 = zext i1 %904 to i8
  store i8 %905, i8* %94, align 1
  %906 = lshr i32 %887, 31
  %907 = trunc i32 %906 to i8
  store i8 %907, i8* %97, align 1
  %908 = lshr i32 %886, 31
  %909 = xor i32 %906, %859
  %910 = xor i32 %906, %908
  %911 = add nuw nsw i32 %909, %910
  %912 = icmp eq i32 %911, 2
  %913 = zext i1 %912 to i8
  store i8 %913, i8* %103, align 1
  %914 = add i64 %868, -76
  %915 = add i64 %395, 225
  store i64 %915, i64* %3, align 8
  %916 = inttoptr i64 %914 to i32*
  %917 = load i32, i32* %916, align 4
  %918 = add i32 %917, %887
  %919 = zext i32 %918 to i64
  store i64 %919, i64* %RDX.i2544, align 8
  %920 = icmp ult i32 %918, %887
  %921 = icmp ult i32 %918, %917
  %922 = or i1 %920, %921
  %923 = zext i1 %922 to i8
  store i8 %923, i8* %80, align 1
  %924 = and i32 %918, 255
  %925 = tail call i32 @llvm.ctpop.i32(i32 %924)
  %926 = trunc i32 %925 to i8
  %927 = and i8 %926, 1
  %928 = xor i8 %927, 1
  store i8 %928, i8* %86, align 1
  %929 = xor i32 %917, %887
  %930 = xor i32 %929, %918
  %931 = lshr i32 %930, 4
  %932 = trunc i32 %931 to i8
  %933 = and i8 %932, 1
  store i8 %933, i8* %91, align 1
  %934 = icmp eq i32 %918, 0
  %935 = zext i1 %934 to i8
  store i8 %935, i8* %94, align 1
  %936 = lshr i32 %918, 31
  %937 = trunc i32 %936 to i8
  store i8 %937, i8* %97, align 1
  %938 = lshr i32 %917, 31
  %939 = xor i32 %936, %906
  %940 = xor i32 %936, %938
  %941 = add nuw nsw i32 %939, %940
  %942 = icmp eq i32 %941, 2
  %943 = zext i1 %942 to i8
  store i8 %943, i8* %103, align 1
  %944 = sext i32 %918 to i64
  store i64 %944, i64* %RCX.i2541, align 8
  %945 = load i64, i64* %RAX.i2556, align 8
  %946 = shl nsw i64 %944, 2
  %947 = add i64 %945, %946
  %948 = add i64 %395, 233
  store i64 %948, i64* %3, align 8
  %949 = inttoptr i64 %947 to i32*
  %950 = load i32, i32* %949, align 4
  store i32 %950, i32* %200, align 1
  store float 0.000000e+00, float* %202, align 1
  store float 0.000000e+00, float* %204, align 1
  store float 0.000000e+00, float* %206, align 1
  %951 = load i64, i64* %RBP.i, align 8
  %952 = add i64 %951, -40
  %953 = add i64 %395, 237
  store i64 %953, i64* %3, align 8
  %954 = inttoptr i64 %952 to i64*
  %955 = load i64, i64* %954, align 8
  store i64 %955, i64* %RAX.i2556, align 8
  %956 = add i64 %395, 240
  store i64 %956, i64* %3, align 8
  %957 = inttoptr i64 %955 to i64*
  %958 = load i64, i64* %957, align 8
  store i64 %958, i64* %RAX.i2556, align 8
  %959 = add i64 %395, 244
  store i64 %959, i64* %3, align 8
  %960 = load i64, i64* %954, align 8
  store i64 %960, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %80, align 1
  store i8 1, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  store i8 0, i8* %97, align 1
  store i8 0, i8* %103, align 1
  %961 = add i64 %395, 252
  store i64 %961, i64* %3, align 8
  %962 = load i64, i64* %954, align 8
  store i64 %962, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %80, align 1
  store i8 1, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  store i8 0, i8* %97, align 1
  store i8 0, i8* %103, align 1
  %963 = add i64 %395, 260
  store i64 %963, i64* %3, align 8
  %964 = load i64, i64* %954, align 8
  store i64 %964, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %80, align 1
  store i8 1, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  store i8 0, i8* %97, align 1
  store i8 0, i8* %103, align 1
  %965 = add i64 %951, -68
  %966 = add i64 %395, 267
  store i64 %966, i64* %3, align 8
  %967 = inttoptr i64 %965 to i32*
  %968 = load i32, i32* %967, align 4
  %969 = zext i32 %968 to i64
  store i64 %969, i64* %RSI.i2547, align 8
  %970 = add i64 %395, 271
  store i64 %970, i64* %3, align 8
  %971 = load i64, i64* %954, align 8
  store i64 %971, i64* %RCX.i2541, align 8
  %972 = add i64 %971, 16
  %973 = add i64 %395, 275
  store i64 %973, i64* %3, align 8
  %974 = inttoptr i64 %972 to i32*
  %975 = load i32, i32* %974, align 4
  %976 = sext i32 %968 to i64
  %977 = sext i32 %975 to i64
  %978 = mul nsw i64 %977, %976
  %979 = trunc i64 %978 to i32
  %980 = and i64 %978, 4294967295
  store i64 %980, i64* %RSI.i2547, align 8
  %981 = shl i64 %978, 32
  %982 = ashr exact i64 %981, 32
  %983 = icmp ne i64 %982, %978
  %984 = zext i1 %983 to i8
  store i8 %984, i8* %80, align 1
  %985 = and i32 %979, 255
  %986 = tail call i32 @llvm.ctpop.i32(i32 %985)
  %987 = trunc i32 %986 to i8
  %988 = and i8 %987, 1
  %989 = xor i8 %988, 1
  store i8 %989, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  %990 = lshr i32 %979, 31
  %991 = trunc i32 %990 to i8
  store i8 %991, i8* %97, align 1
  store i8 %984, i8* %103, align 1
  %992 = add i64 %395, 279
  store i64 %992, i64* %3, align 8
  %993 = load i64, i64* %954, align 8
  store i64 %993, i64* %RCX.i2541, align 8
  %994 = add i64 %993, 20
  %995 = add i64 %395, 283
  store i64 %995, i64* %3, align 8
  %996 = inttoptr i64 %994 to i32*
  %997 = load i32, i32* %996, align 4
  %998 = shl i64 %978, 32
  %999 = ashr exact i64 %998, 32
  %1000 = sext i32 %997 to i64
  %1001 = mul nsw i64 %1000, %999
  %1002 = and i64 %1001, 4294967295
  store i64 %1002, i64* %RSI.i2547, align 8
  %1003 = trunc i64 %1001 to i32
  %1004 = and i64 %1001, 4294967295
  store i64 %1004, i64* %RDX.i2544, align 8
  store i8 0, i8* %80, align 1
  %1005 = and i32 %1003, 255
  %1006 = tail call i32 @llvm.ctpop.i32(i32 %1005)
  %1007 = trunc i32 %1006 to i8
  %1008 = and i8 %1007, 1
  %1009 = xor i8 %1008, 1
  store i8 %1009, i8* %86, align 1
  store i8 0, i8* %91, align 1
  %1010 = icmp eq i32 %1003, 0
  %1011 = zext i1 %1010 to i8
  store i8 %1011, i8* %94, align 1
  %1012 = lshr i32 %1003, 31
  %1013 = trunc i32 %1012 to i8
  store i8 %1013, i8* %97, align 1
  store i8 0, i8* %103, align 1
  %1014 = load i64, i64* %RBP.i, align 8
  %1015 = add i64 %1014, -72
  %1016 = add i64 %395, 288
  store i64 %1016, i64* %3, align 8
  %1017 = inttoptr i64 %1015 to i32*
  %1018 = load i32, i32* %1017, align 4
  %1019 = add i32 %1018, 1
  %1020 = zext i32 %1019 to i64
  store i64 %1020, i64* %RSI.i2547, align 8
  %1021 = icmp eq i32 %1018, -1
  %1022 = icmp eq i32 %1019, 0
  %1023 = or i1 %1021, %1022
  %1024 = zext i1 %1023 to i8
  store i8 %1024, i8* %80, align 1
  %1025 = and i32 %1019, 255
  %1026 = tail call i32 @llvm.ctpop.i32(i32 %1025)
  %1027 = trunc i32 %1026 to i8
  %1028 = and i8 %1027, 1
  %1029 = xor i8 %1028, 1
  store i8 %1029, i8* %86, align 1
  %1030 = xor i32 %1019, %1018
  %1031 = lshr i32 %1030, 4
  %1032 = trunc i32 %1031 to i8
  %1033 = and i8 %1032, 1
  store i8 %1033, i8* %91, align 1
  %1034 = zext i1 %1022 to i8
  store i8 %1034, i8* %94, align 1
  %1035 = lshr i32 %1019, 31
  %1036 = trunc i32 %1035 to i8
  store i8 %1036, i8* %97, align 1
  %1037 = lshr i32 %1018, 31
  %1038 = xor i32 %1035, %1037
  %1039 = add nuw nsw i32 %1038, %1035
  %1040 = icmp eq i32 %1039, 2
  %1041 = zext i1 %1040 to i8
  store i8 %1041, i8* %103, align 1
  %1042 = add i64 %1014, -40
  %1043 = add i64 %395, 295
  store i64 %1043, i64* %3, align 8
  %1044 = inttoptr i64 %1042 to i64*
  %1045 = load i64, i64* %1044, align 8
  store i64 %1045, i64* %RCX.i2541, align 8
  %1046 = add i64 %1045, 20
  %1047 = add i64 %395, 299
  store i64 %1047, i64* %3, align 8
  %1048 = inttoptr i64 %1046 to i32*
  %1049 = load i32, i32* %1048, align 4
  %1050 = sext i32 %1019 to i64
  %1051 = sext i32 %1049 to i64
  %1052 = mul nsw i64 %1051, %1050
  %1053 = and i64 %1052, 4294967295
  store i64 %1053, i64* %RSI.i2547, align 8
  %1054 = trunc i64 %1052 to i32
  %1055 = add i32 %1054, %1003
  %1056 = zext i32 %1055 to i64
  store i64 %1056, i64* %RDX.i2544, align 8
  %1057 = icmp ult i32 %1055, %1003
  %1058 = icmp ult i32 %1055, %1054
  %1059 = or i1 %1057, %1058
  %1060 = zext i1 %1059 to i8
  store i8 %1060, i8* %80, align 1
  %1061 = and i32 %1055, 255
  %1062 = tail call i32 @llvm.ctpop.i32(i32 %1061)
  %1063 = trunc i32 %1062 to i8
  %1064 = and i8 %1063, 1
  %1065 = xor i8 %1064, 1
  store i8 %1065, i8* %86, align 1
  %1066 = xor i64 %1052, %1001
  %1067 = trunc i64 %1066 to i32
  %1068 = xor i32 %1067, %1055
  %1069 = lshr i32 %1068, 4
  %1070 = trunc i32 %1069 to i8
  %1071 = and i8 %1070, 1
  store i8 %1071, i8* %91, align 1
  %1072 = icmp eq i32 %1055, 0
  %1073 = zext i1 %1072 to i8
  store i8 %1073, i8* %94, align 1
  %1074 = lshr i32 %1055, 31
  %1075 = trunc i32 %1074 to i8
  store i8 %1075, i8* %97, align 1
  %1076 = lshr i32 %1054, 31
  %1077 = xor i32 %1074, %1012
  %1078 = xor i32 %1074, %1076
  %1079 = add nuw nsw i32 %1077, %1078
  %1080 = icmp eq i32 %1079, 2
  %1081 = zext i1 %1080 to i8
  store i8 %1081, i8* %103, align 1
  %1082 = load i64, i64* %RBP.i, align 8
  %1083 = add i64 %1082, -76
  %1084 = add i64 %395, 304
  store i64 %1084, i64* %3, align 8
  %1085 = inttoptr i64 %1083 to i32*
  %1086 = load i32, i32* %1085, align 4
  %1087 = add i32 %1086, %1055
  %1088 = zext i32 %1087 to i64
  store i64 %1088, i64* %RDX.i2544, align 8
  %1089 = icmp ult i32 %1087, %1055
  %1090 = icmp ult i32 %1087, %1086
  %1091 = or i1 %1089, %1090
  %1092 = zext i1 %1091 to i8
  store i8 %1092, i8* %80, align 1
  %1093 = and i32 %1087, 255
  %1094 = tail call i32 @llvm.ctpop.i32(i32 %1093)
  %1095 = trunc i32 %1094 to i8
  %1096 = and i8 %1095, 1
  %1097 = xor i8 %1096, 1
  store i8 %1097, i8* %86, align 1
  %1098 = xor i32 %1086, %1055
  %1099 = xor i32 %1098, %1087
  %1100 = lshr i32 %1099, 4
  %1101 = trunc i32 %1100 to i8
  %1102 = and i8 %1101, 1
  store i8 %1102, i8* %91, align 1
  %1103 = icmp eq i32 %1087, 0
  %1104 = zext i1 %1103 to i8
  store i8 %1104, i8* %94, align 1
  %1105 = lshr i32 %1087, 31
  %1106 = trunc i32 %1105 to i8
  store i8 %1106, i8* %97, align 1
  %1107 = lshr i32 %1086, 31
  %1108 = xor i32 %1105, %1074
  %1109 = xor i32 %1105, %1107
  %1110 = add nuw nsw i32 %1108, %1109
  %1111 = icmp eq i32 %1110, 2
  %1112 = zext i1 %1111 to i8
  store i8 %1112, i8* %103, align 1
  %1113 = sext i32 %1087 to i64
  store i64 %1113, i64* %RCX.i2541, align 8
  %1114 = load i64, i64* %RAX.i2556, align 8
  %1115 = shl nsw i64 %1113, 2
  %1116 = add i64 %1114, %1115
  %1117 = add i64 %395, 312
  store i64 %1117, i64* %3, align 8
  %1118 = load <2 x float>, <2 x float>* %207, align 1
  %1119 = load <2 x i32>, <2 x i32>* %208, align 1
  %1120 = inttoptr i64 %1116 to float*
  %1121 = load float, float* %1120, align 4
  %1122 = extractelement <2 x float> %1118, i32 0
  %1123 = fmul float %1122, %1121
  store float %1123, float* %199, align 1
  %1124 = bitcast <2 x float> %1118 to <2 x i32>
  %1125 = extractelement <2 x i32> %1124, i32 1
  store i32 %1125, i32* %209, align 1
  %1126 = extractelement <2 x i32> %1119, i32 0
  store i32 %1126, i32* %210, align 1
  %1127 = extractelement <2 x i32> %1119, i32 1
  store i32 %1127, i32* %211, align 1
  %1128 = load <2 x float>, <2 x float>* %191, align 1
  %1129 = load <2 x i32>, <2 x i32>* %196, align 1
  %1130 = load <2 x float>, <2 x float>* %207, align 1
  %1131 = extractelement <2 x float> %1128, i32 0
  %1132 = extractelement <2 x float> %1130, i32 0
  %1133 = fadd float %1131, %1132
  store float %1133, float* %192, align 1
  %1134 = bitcast <2 x float> %1128 to <2 x i32>
  %1135 = extractelement <2 x i32> %1134, i32 1
  store i32 %1135, i32* %187, align 1
  %1136 = extractelement <2 x i32> %1129, i32 0
  store i32 %1136, i32* %188, align 1
  %1137 = extractelement <2 x i32> %1129, i32 1
  store i32 %1137, i32* %190, align 1
  %1138 = add i64 %1082, -16
  %1139 = add i64 %395, 320
  store i64 %1139, i64* %3, align 8
  %1140 = inttoptr i64 %1138 to i64*
  %1141 = load i64, i64* %1140, align 8
  store i64 %1141, i64* %RAX.i2556, align 8
  %1142 = add i64 %395, 323
  store i64 %1142, i64* %3, align 8
  %1143 = inttoptr i64 %1141 to i64*
  %1144 = load i64, i64* %1143, align 8
  store i64 %1144, i64* %RAX.i2556, align 8
  %1145 = add i64 %395, 327
  store i64 %1145, i64* %3, align 8
  %1146 = load i64, i64* %1140, align 8
  store i64 %1146, i64* %RCX.i2541, align 8
  %1147 = add i64 %1146, 12
  %1148 = add i64 %395, 330
  store i64 %1148, i64* %3, align 8
  %1149 = inttoptr i64 %1147 to i32*
  %1150 = load i32, i32* %1149, align 4
  %1151 = shl i32 %1150, 1
  %1152 = icmp slt i32 %1150, 0
  %1153 = icmp slt i32 %1151, 0
  %1154 = xor i1 %1152, %1153
  %1155 = zext i32 %1151 to i64
  store i64 %1155, i64* %RDX.i2544, align 8
  %.lobit = lshr i32 %1150, 31
  %1156 = trunc i32 %.lobit to i8
  store i8 %1156, i8* %80, align 1
  %1157 = and i32 %1151, 254
  %1158 = tail call i32 @llvm.ctpop.i32(i32 %1157)
  %1159 = trunc i32 %1158 to i8
  %1160 = and i8 %1159, 1
  %1161 = xor i8 %1160, 1
  store i8 %1161, i8* %86, align 1
  store i8 0, i8* %91, align 1
  %1162 = icmp eq i32 %1151, 0
  %1163 = zext i1 %1162 to i8
  store i8 %1163, i8* %94, align 1
  %1164 = lshr i32 %1150, 30
  %1165 = trunc i32 %1164 to i8
  %1166 = and i8 %1165, 1
  store i8 %1166, i8* %97, align 1
  %1167 = zext i1 %1154 to i8
  store i8 %1167, i8* %103, align 1
  %1168 = load i64, i64* %RBP.i, align 8
  %1169 = add i64 %1168, -16
  %1170 = add i64 %395, 336
  store i64 %1170, i64* %3, align 8
  %1171 = inttoptr i64 %1169 to i64*
  %1172 = load i64, i64* %1171, align 8
  store i64 %1172, i64* %RCX.i2541, align 8
  %1173 = add i64 %1172, 16
  %1174 = add i64 %395, 340
  store i64 %1174, i64* %3, align 8
  %1175 = inttoptr i64 %1173 to i32*
  %1176 = load i32, i32* %1175, align 4
  %1177 = sext i32 %1151 to i64
  %1178 = sext i32 %1176 to i64
  %1179 = mul nsw i64 %1178, %1177
  %1180 = trunc i64 %1179 to i32
  %1181 = and i64 %1179, 4294967294
  store i64 %1181, i64* %RDX.i2544, align 8
  %1182 = shl i64 %1179, 32
  %1183 = ashr exact i64 %1182, 32
  %1184 = icmp ne i64 %1183, %1179
  %1185 = zext i1 %1184 to i8
  store i8 %1185, i8* %80, align 1
  %1186 = and i32 %1180, 254
  %1187 = tail call i32 @llvm.ctpop.i32(i32 %1186)
  %1188 = trunc i32 %1187 to i8
  %1189 = and i8 %1188, 1
  %1190 = xor i8 %1189, 1
  store i8 %1190, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  %1191 = lshr i32 %1180, 31
  %1192 = trunc i32 %1191 to i8
  store i8 %1192, i8* %97, align 1
  store i8 %1185, i8* %103, align 1
  %1193 = add i64 %395, 344
  store i64 %1193, i64* %3, align 8
  %1194 = load i64, i64* %1171, align 8
  store i64 %1194, i64* %RCX.i2541, align 8
  %1195 = add i64 %1194, 20
  %1196 = add i64 %395, 348
  store i64 %1196, i64* %3, align 8
  %1197 = inttoptr i64 %1195 to i32*
  %1198 = load i32, i32* %1197, align 4
  %1199 = shl i64 %1179, 32
  %1200 = ashr exact i64 %1199, 32
  %1201 = sext i32 %1198 to i64
  %1202 = mul nsw i64 %1201, %1200
  %1203 = trunc i64 %1202 to i32
  %1204 = and i64 %1202, 4294967295
  store i64 %1204, i64* %RDX.i2544, align 8
  %1205 = shl i64 %1202, 32
  %1206 = ashr exact i64 %1205, 32
  %1207 = icmp ne i64 %1206, %1202
  %1208 = zext i1 %1207 to i8
  store i8 %1208, i8* %80, align 1
  %1209 = and i32 %1203, 255
  %1210 = tail call i32 @llvm.ctpop.i32(i32 %1209)
  %1211 = trunc i32 %1210 to i8
  %1212 = and i8 %1211, 1
  %1213 = xor i8 %1212, 1
  store i8 %1213, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  %1214 = lshr i32 %1203, 31
  %1215 = trunc i32 %1214 to i8
  store i8 %1215, i8* %97, align 1
  store i8 %1208, i8* %103, align 1
  %1216 = add i64 %1168, -68
  %1217 = add i64 %395, 351
  store i64 %1217, i64* %3, align 8
  %1218 = inttoptr i64 %1216 to i32*
  %1219 = load i32, i32* %1218, align 4
  %1220 = zext i32 %1219 to i64
  store i64 %1220, i64* %RSI.i2547, align 8
  %1221 = add i64 %395, 355
  store i64 %1221, i64* %3, align 8
  %1222 = load i64, i64* %1171, align 8
  store i64 %1222, i64* %RCX.i2541, align 8
  %1223 = add i64 %1222, 16
  %1224 = add i64 %395, 359
  store i64 %1224, i64* %3, align 8
  %1225 = inttoptr i64 %1223 to i32*
  %1226 = load i32, i32* %1225, align 4
  %1227 = sext i32 %1219 to i64
  %1228 = sext i32 %1226 to i64
  %1229 = mul nsw i64 %1228, %1227
  %1230 = trunc i64 %1229 to i32
  %1231 = and i64 %1229, 4294967295
  store i64 %1231, i64* %RSI.i2547, align 8
  %1232 = shl i64 %1229, 32
  %1233 = ashr exact i64 %1232, 32
  %1234 = icmp ne i64 %1233, %1229
  %1235 = zext i1 %1234 to i8
  store i8 %1235, i8* %80, align 1
  %1236 = and i32 %1230, 255
  %1237 = tail call i32 @llvm.ctpop.i32(i32 %1236)
  %1238 = trunc i32 %1237 to i8
  %1239 = and i8 %1238, 1
  %1240 = xor i8 %1239, 1
  store i8 %1240, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  %1241 = lshr i32 %1230, 31
  %1242 = trunc i32 %1241 to i8
  store i8 %1242, i8* %97, align 1
  store i8 %1235, i8* %103, align 1
  %1243 = load i64, i64* %RBP.i, align 8
  %1244 = add i64 %1243, -16
  %1245 = add i64 %395, 363
  store i64 %1245, i64* %3, align 8
  %1246 = inttoptr i64 %1244 to i64*
  %1247 = load i64, i64* %1246, align 8
  store i64 %1247, i64* %RCX.i2541, align 8
  %1248 = add i64 %1247, 20
  %1249 = add i64 %395, 367
  store i64 %1249, i64* %3, align 8
  %1250 = inttoptr i64 %1248 to i32*
  %1251 = load i32, i32* %1250, align 4
  %1252 = shl i64 %1229, 32
  %1253 = ashr exact i64 %1252, 32
  %1254 = sext i32 %1251 to i64
  %1255 = mul nsw i64 %1254, %1253
  %1256 = and i64 %1255, 4294967295
  store i64 %1256, i64* %RSI.i2547, align 8
  %1257 = trunc i64 %1255 to i32
  %1258 = trunc i64 %1202 to i32
  %1259 = add i32 %1257, %1258
  %1260 = zext i32 %1259 to i64
  store i64 %1260, i64* %RDX.i2544, align 8
  %1261 = icmp ult i32 %1259, %1258
  %1262 = icmp ult i32 %1259, %1257
  %1263 = or i1 %1261, %1262
  %1264 = zext i1 %1263 to i8
  store i8 %1264, i8* %80, align 1
  %1265 = and i32 %1259, 255
  %1266 = tail call i32 @llvm.ctpop.i32(i32 %1265)
  %1267 = trunc i32 %1266 to i8
  %1268 = and i8 %1267, 1
  %1269 = xor i8 %1268, 1
  store i8 %1269, i8* %86, align 1
  %1270 = xor i64 %1255, %1202
  %1271 = trunc i64 %1270 to i32
  %1272 = xor i32 %1271, %1259
  %1273 = lshr i32 %1272, 4
  %1274 = trunc i32 %1273 to i8
  %1275 = and i8 %1274, 1
  store i8 %1275, i8* %91, align 1
  %1276 = icmp eq i32 %1259, 0
  %1277 = zext i1 %1276 to i8
  store i8 %1277, i8* %94, align 1
  %1278 = lshr i32 %1259, 31
  %1279 = trunc i32 %1278 to i8
  store i8 %1279, i8* %97, align 1
  %1280 = lshr i32 %1258, 31
  %1281 = lshr i32 %1257, 31
  %1282 = xor i32 %1278, %1280
  %1283 = xor i32 %1278, %1281
  %1284 = add nuw nsw i32 %1282, %1283
  %1285 = icmp eq i32 %1284, 2
  %1286 = zext i1 %1285 to i8
  store i8 %1286, i8* %103, align 1
  %1287 = add i64 %1243, -72
  %1288 = add i64 %395, 372
  store i64 %1288, i64* %3, align 8
  %1289 = inttoptr i64 %1287 to i32*
  %1290 = load i32, i32* %1289, align 4
  %1291 = zext i32 %1290 to i64
  store i64 %1291, i64* %RSI.i2547, align 8
  %1292 = add i64 %395, 376
  store i64 %1292, i64* %3, align 8
  %1293 = load i64, i64* %1246, align 8
  store i64 %1293, i64* %RCX.i2541, align 8
  %1294 = add i64 %1293, 20
  %1295 = add i64 %395, 380
  store i64 %1295, i64* %3, align 8
  %1296 = inttoptr i64 %1294 to i32*
  %1297 = load i32, i32* %1296, align 4
  %1298 = sext i32 %1290 to i64
  %1299 = sext i32 %1297 to i64
  %1300 = mul nsw i64 %1299, %1298
  %1301 = and i64 %1300, 4294967295
  store i64 %1301, i64* %RSI.i2547, align 8
  %1302 = trunc i64 %1300 to i32
  %1303 = add i32 %1302, %1259
  %1304 = zext i32 %1303 to i64
  store i64 %1304, i64* %RDX.i2544, align 8
  %1305 = icmp ult i32 %1303, %1259
  %1306 = icmp ult i32 %1303, %1302
  %1307 = or i1 %1305, %1306
  %1308 = zext i1 %1307 to i8
  store i8 %1308, i8* %80, align 1
  %1309 = and i32 %1303, 255
  %1310 = tail call i32 @llvm.ctpop.i32(i32 %1309)
  %1311 = trunc i32 %1310 to i8
  %1312 = and i8 %1311, 1
  %1313 = xor i8 %1312, 1
  store i8 %1313, i8* %86, align 1
  %1314 = xor i64 %1300, %1260
  %1315 = trunc i64 %1314 to i32
  %1316 = xor i32 %1315, %1303
  %1317 = lshr i32 %1316, 4
  %1318 = trunc i32 %1317 to i8
  %1319 = and i8 %1318, 1
  store i8 %1319, i8* %91, align 1
  %1320 = icmp eq i32 %1303, 0
  %1321 = zext i1 %1320 to i8
  store i8 %1321, i8* %94, align 1
  %1322 = lshr i32 %1303, 31
  %1323 = trunc i32 %1322 to i8
  store i8 %1323, i8* %97, align 1
  %1324 = lshr i32 %1302, 31
  %1325 = xor i32 %1322, %1278
  %1326 = xor i32 %1322, %1324
  %1327 = add nuw nsw i32 %1325, %1326
  %1328 = icmp eq i32 %1327, 2
  %1329 = zext i1 %1328 to i8
  store i8 %1329, i8* %103, align 1
  %1330 = load i64, i64* %RBP.i, align 8
  %1331 = add i64 %1330, -76
  %1332 = add i64 %395, 385
  store i64 %1332, i64* %3, align 8
  %1333 = inttoptr i64 %1331 to i32*
  %1334 = load i32, i32* %1333, align 4
  %1335 = add i32 %1334, %1303
  %1336 = zext i32 %1335 to i64
  store i64 %1336, i64* %RDX.i2544, align 8
  %1337 = icmp ult i32 %1335, %1303
  %1338 = icmp ult i32 %1335, %1334
  %1339 = or i1 %1337, %1338
  %1340 = zext i1 %1339 to i8
  store i8 %1340, i8* %80, align 1
  %1341 = and i32 %1335, 255
  %1342 = tail call i32 @llvm.ctpop.i32(i32 %1341)
  %1343 = trunc i32 %1342 to i8
  %1344 = and i8 %1343, 1
  %1345 = xor i8 %1344, 1
  store i8 %1345, i8* %86, align 1
  %1346 = xor i32 %1334, %1303
  %1347 = xor i32 %1346, %1335
  %1348 = lshr i32 %1347, 4
  %1349 = trunc i32 %1348 to i8
  %1350 = and i8 %1349, 1
  store i8 %1350, i8* %91, align 1
  %1351 = icmp eq i32 %1335, 0
  %1352 = zext i1 %1351 to i8
  store i8 %1352, i8* %94, align 1
  %1353 = lshr i32 %1335, 31
  %1354 = trunc i32 %1353 to i8
  store i8 %1354, i8* %97, align 1
  %1355 = lshr i32 %1334, 31
  %1356 = xor i32 %1353, %1322
  %1357 = xor i32 %1353, %1355
  %1358 = add nuw nsw i32 %1356, %1357
  %1359 = icmp eq i32 %1358, 2
  %1360 = zext i1 %1359 to i8
  store i8 %1360, i8* %103, align 1
  %1361 = sext i32 %1335 to i64
  store i64 %1361, i64* %RCX.i2541, align 8
  %1362 = load i64, i64* %RAX.i2556, align 8
  %1363 = shl nsw i64 %1361, 2
  %1364 = add i64 %1362, %1363
  %1365 = add i64 %395, 393
  store i64 %1365, i64* %3, align 8
  %1366 = inttoptr i64 %1364 to i32*
  %1367 = load i32, i32* %1366, align 4
  store i32 %1367, i32* %200, align 1
  store float 0.000000e+00, float* %202, align 1
  store float 0.000000e+00, float* %204, align 1
  store float 0.000000e+00, float* %206, align 1
  %1368 = add i64 %1330, -40
  %1369 = add i64 %395, 397
  store i64 %1369, i64* %3, align 8
  %1370 = inttoptr i64 %1368 to i64*
  %1371 = load i64, i64* %1370, align 8
  store i64 %1371, i64* %RAX.i2556, align 8
  %1372 = add i64 %395, 400
  store i64 %1372, i64* %3, align 8
  %1373 = inttoptr i64 %1371 to i64*
  %1374 = load i64, i64* %1373, align 8
  store i64 %1374, i64* %RAX.i2556, align 8
  %1375 = add i64 %395, 404
  store i64 %1375, i64* %3, align 8
  %1376 = load i64, i64* %1370, align 8
  store i64 %1376, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %80, align 1
  store i8 1, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  store i8 0, i8* %97, align 1
  store i8 0, i8* %103, align 1
  %1377 = add i64 %395, 412
  store i64 %1377, i64* %3, align 8
  %1378 = load i64, i64* %1370, align 8
  store i64 %1378, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %80, align 1
  store i8 1, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  store i8 0, i8* %97, align 1
  store i8 0, i8* %103, align 1
  %1379 = add i64 %395, 420
  store i64 %1379, i64* %3, align 8
  %1380 = load i64, i64* %1370, align 8
  store i64 %1380, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %80, align 1
  store i8 1, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  store i8 0, i8* %97, align 1
  store i8 0, i8* %103, align 1
  %1381 = load i64, i64* %RBP.i, align 8
  %1382 = add i64 %1381, -68
  %1383 = add i64 %395, 427
  store i64 %1383, i64* %3, align 8
  %1384 = inttoptr i64 %1382 to i32*
  %1385 = load i32, i32* %1384, align 4
  %1386 = zext i32 %1385 to i64
  store i64 %1386, i64* %RSI.i2547, align 8
  %1387 = add i64 %1381, -40
  %1388 = add i64 %395, 431
  store i64 %1388, i64* %3, align 8
  %1389 = inttoptr i64 %1387 to i64*
  %1390 = load i64, i64* %1389, align 8
  store i64 %1390, i64* %RCX.i2541, align 8
  %1391 = add i64 %1390, 16
  %1392 = add i64 %395, 435
  store i64 %1392, i64* %3, align 8
  %1393 = inttoptr i64 %1391 to i32*
  %1394 = load i32, i32* %1393, align 4
  %1395 = sext i32 %1385 to i64
  %1396 = sext i32 %1394 to i64
  %1397 = mul nsw i64 %1396, %1395
  %1398 = trunc i64 %1397 to i32
  %1399 = and i64 %1397, 4294967295
  store i64 %1399, i64* %RSI.i2547, align 8
  %1400 = shl i64 %1397, 32
  %1401 = ashr exact i64 %1400, 32
  %1402 = icmp ne i64 %1401, %1397
  %1403 = zext i1 %1402 to i8
  store i8 %1403, i8* %80, align 1
  %1404 = and i32 %1398, 255
  %1405 = tail call i32 @llvm.ctpop.i32(i32 %1404)
  %1406 = trunc i32 %1405 to i8
  %1407 = and i8 %1406, 1
  %1408 = xor i8 %1407, 1
  store i8 %1408, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  %1409 = lshr i32 %1398, 31
  %1410 = trunc i32 %1409 to i8
  store i8 %1410, i8* %97, align 1
  store i8 %1403, i8* %103, align 1
  %1411 = add i64 %395, 439
  store i64 %1411, i64* %3, align 8
  %1412 = load i64, i64* %1389, align 8
  store i64 %1412, i64* %RCX.i2541, align 8
  %1413 = add i64 %1412, 20
  %1414 = add i64 %395, 443
  store i64 %1414, i64* %3, align 8
  %1415 = inttoptr i64 %1413 to i32*
  %1416 = load i32, i32* %1415, align 4
  %1417 = shl i64 %1397, 32
  %1418 = ashr exact i64 %1417, 32
  %1419 = sext i32 %1416 to i64
  %1420 = mul nsw i64 %1419, %1418
  %1421 = and i64 %1420, 4294967295
  store i64 %1421, i64* %RSI.i2547, align 8
  %1422 = trunc i64 %1420 to i32
  %1423 = and i64 %1420, 4294967295
  store i64 %1423, i64* %RDX.i2544, align 8
  store i8 0, i8* %80, align 1
  %1424 = and i32 %1422, 255
  %1425 = tail call i32 @llvm.ctpop.i32(i32 %1424)
  %1426 = trunc i32 %1425 to i8
  %1427 = and i8 %1426, 1
  %1428 = xor i8 %1427, 1
  store i8 %1428, i8* %86, align 1
  store i8 0, i8* %91, align 1
  %1429 = icmp eq i32 %1422, 0
  %1430 = zext i1 %1429 to i8
  store i8 %1430, i8* %94, align 1
  %1431 = lshr i32 %1422, 31
  %1432 = trunc i32 %1431 to i8
  store i8 %1432, i8* %97, align 1
  store i8 0, i8* %103, align 1
  %1433 = add i64 %1381, -72
  %1434 = add i64 %395, 448
  store i64 %1434, i64* %3, align 8
  %1435 = inttoptr i64 %1433 to i32*
  %1436 = load i32, i32* %1435, align 4
  %1437 = zext i32 %1436 to i64
  store i64 %1437, i64* %RSI.i2547, align 8
  %1438 = load i64, i64* %RBP.i, align 8
  %1439 = add i64 %1438, -40
  %1440 = add i64 %395, 452
  store i64 %1440, i64* %3, align 8
  %1441 = inttoptr i64 %1439 to i64*
  %1442 = load i64, i64* %1441, align 8
  store i64 %1442, i64* %RCX.i2541, align 8
  %1443 = add i64 %1442, 20
  %1444 = add i64 %395, 456
  store i64 %1444, i64* %3, align 8
  %1445 = inttoptr i64 %1443 to i32*
  %1446 = load i32, i32* %1445, align 4
  %1447 = sext i32 %1436 to i64
  %1448 = sext i32 %1446 to i64
  %1449 = mul nsw i64 %1448, %1447
  %1450 = and i64 %1449, 4294967295
  store i64 %1450, i64* %RSI.i2547, align 8
  %1451 = trunc i64 %1449 to i32
  %1452 = add i32 %1451, %1422
  %1453 = zext i32 %1452 to i64
  store i64 %1453, i64* %RDX.i2544, align 8
  %1454 = icmp ult i32 %1452, %1422
  %1455 = icmp ult i32 %1452, %1451
  %1456 = or i1 %1454, %1455
  %1457 = zext i1 %1456 to i8
  store i8 %1457, i8* %80, align 1
  %1458 = and i32 %1452, 255
  %1459 = tail call i32 @llvm.ctpop.i32(i32 %1458)
  %1460 = trunc i32 %1459 to i8
  %1461 = and i8 %1460, 1
  %1462 = xor i8 %1461, 1
  store i8 %1462, i8* %86, align 1
  %1463 = xor i64 %1449, %1420
  %1464 = trunc i64 %1463 to i32
  %1465 = xor i32 %1464, %1452
  %1466 = lshr i32 %1465, 4
  %1467 = trunc i32 %1466 to i8
  %1468 = and i8 %1467, 1
  store i8 %1468, i8* %91, align 1
  %1469 = icmp eq i32 %1452, 0
  %1470 = zext i1 %1469 to i8
  store i8 %1470, i8* %94, align 1
  %1471 = lshr i32 %1452, 31
  %1472 = trunc i32 %1471 to i8
  store i8 %1472, i8* %97, align 1
  %1473 = lshr i32 %1451, 31
  %1474 = xor i32 %1471, %1431
  %1475 = xor i32 %1471, %1473
  %1476 = add nuw nsw i32 %1474, %1475
  %1477 = icmp eq i32 %1476, 2
  %1478 = zext i1 %1477 to i8
  store i8 %1478, i8* %103, align 1
  %1479 = add i64 %1438, -76
  %1480 = add i64 %395, 461
  store i64 %1480, i64* %3, align 8
  %1481 = inttoptr i64 %1479 to i32*
  %1482 = load i32, i32* %1481, align 4
  %1483 = add i32 %1482, 1
  %1484 = zext i32 %1483 to i64
  store i64 %1484, i64* %RSI.i2547, align 8
  %1485 = lshr i32 %1483, 31
  %1486 = add i32 %1483, %1452
  %1487 = zext i32 %1486 to i64
  store i64 %1487, i64* %RDX.i2544, align 8
  %1488 = icmp ult i32 %1486, %1452
  %1489 = icmp ult i32 %1486, %1483
  %1490 = or i1 %1488, %1489
  %1491 = zext i1 %1490 to i8
  store i8 %1491, i8* %80, align 1
  %1492 = and i32 %1486, 255
  %1493 = tail call i32 @llvm.ctpop.i32(i32 %1492)
  %1494 = trunc i32 %1493 to i8
  %1495 = and i8 %1494, 1
  %1496 = xor i8 %1495, 1
  store i8 %1496, i8* %86, align 1
  %1497 = xor i32 %1483, %1452
  %1498 = xor i32 %1497, %1486
  %1499 = lshr i32 %1498, 4
  %1500 = trunc i32 %1499 to i8
  %1501 = and i8 %1500, 1
  store i8 %1501, i8* %91, align 1
  %1502 = icmp eq i32 %1486, 0
  %1503 = zext i1 %1502 to i8
  store i8 %1503, i8* %94, align 1
  %1504 = lshr i32 %1486, 31
  %1505 = trunc i32 %1504 to i8
  store i8 %1505, i8* %97, align 1
  %1506 = xor i32 %1504, %1471
  %1507 = xor i32 %1504, %1485
  %1508 = add nuw nsw i32 %1506, %1507
  %1509 = icmp eq i32 %1508, 2
  %1510 = zext i1 %1509 to i8
  store i8 %1510, i8* %103, align 1
  %1511 = sext i32 %1486 to i64
  store i64 %1511, i64* %RCX.i2541, align 8
  %1512 = load i64, i64* %RAX.i2556, align 8
  %1513 = shl nsw i64 %1511, 2
  %1514 = add i64 %1512, %1513
  %1515 = add i64 %395, 474
  store i64 %1515, i64* %3, align 8
  %1516 = load <2 x float>, <2 x float>* %207, align 1
  %1517 = load <2 x i32>, <2 x i32>* %208, align 1
  %1518 = inttoptr i64 %1514 to float*
  %1519 = load float, float* %1518, align 4
  %1520 = extractelement <2 x float> %1516, i32 0
  %1521 = fmul float %1520, %1519
  store float %1521, float* %199, align 1
  %1522 = bitcast <2 x float> %1516 to <2 x i32>
  %1523 = extractelement <2 x i32> %1522, i32 1
  store i32 %1523, i32* %209, align 1
  %1524 = extractelement <2 x i32> %1517, i32 0
  store i32 %1524, i32* %210, align 1
  %1525 = extractelement <2 x i32> %1517, i32 1
  store i32 %1525, i32* %211, align 1
  %1526 = load <2 x float>, <2 x float>* %191, align 1
  %1527 = load <2 x i32>, <2 x i32>* %196, align 1
  %1528 = load <2 x float>, <2 x float>* %207, align 1
  %1529 = extractelement <2 x float> %1526, i32 0
  %1530 = extractelement <2 x float> %1528, i32 0
  %1531 = fadd float %1529, %1530
  store float %1531, float* %192, align 1
  %1532 = bitcast <2 x float> %1526 to <2 x i32>
  %1533 = extractelement <2 x i32> %1532, i32 1
  store i32 %1533, i32* %187, align 1
  %1534 = extractelement <2 x i32> %1527, i32 0
  store i32 %1534, i32* %188, align 1
  %1535 = extractelement <2 x i32> %1527, i32 1
  store i32 %1535, i32* %190, align 1
  %1536 = load i64, i64* %RBP.i, align 8
  %1537 = add i64 %1536, -24
  %1538 = add i64 %395, 482
  store i64 %1538, i64* %3, align 8
  %1539 = inttoptr i64 %1537 to i64*
  %1540 = load i64, i64* %1539, align 8
  store i64 %1540, i64* %RAX.i2556, align 8
  %1541 = add i64 %395, 485
  store i64 %1541, i64* %3, align 8
  %1542 = inttoptr i64 %1540 to i64*
  %1543 = load i64, i64* %1542, align 8
  store i64 %1543, i64* %RAX.i2556, align 8
  %1544 = add i64 %395, 489
  store i64 %1544, i64* %3, align 8
  %1545 = load i64, i64* %1539, align 8
  store i64 %1545, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %80, align 1
  store i8 1, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  store i8 0, i8* %97, align 1
  store i8 0, i8* %103, align 1
  %1546 = add i64 %395, 497
  store i64 %1546, i64* %3, align 8
  %1547 = load i64, i64* %1539, align 8
  store i64 %1547, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %80, align 1
  store i8 1, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  store i8 0, i8* %97, align 1
  store i8 0, i8* %103, align 1
  %1548 = add i64 %395, 505
  store i64 %1548, i64* %3, align 8
  %1549 = load i64, i64* %1539, align 8
  store i64 %1549, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %80, align 1
  store i8 1, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  store i8 0, i8* %97, align 1
  store i8 0, i8* %103, align 1
  %1550 = add i64 %1536, -68
  %1551 = add i64 %395, 512
  store i64 %1551, i64* %3, align 8
  %1552 = inttoptr i64 %1550 to i32*
  %1553 = load i32, i32* %1552, align 4
  %1554 = zext i32 %1553 to i64
  store i64 %1554, i64* %RSI.i2547, align 8
  %1555 = add i64 %395, 516
  store i64 %1555, i64* %3, align 8
  %1556 = load i64, i64* %1539, align 8
  store i64 %1556, i64* %RCX.i2541, align 8
  %1557 = add i64 %1556, 16
  %1558 = add i64 %395, 520
  store i64 %1558, i64* %3, align 8
  %1559 = inttoptr i64 %1557 to i32*
  %1560 = load i32, i32* %1559, align 4
  %1561 = sext i32 %1553 to i64
  %1562 = sext i32 %1560 to i64
  %1563 = mul nsw i64 %1562, %1561
  %1564 = trunc i64 %1563 to i32
  %1565 = and i64 %1563, 4294967295
  store i64 %1565, i64* %RSI.i2547, align 8
  %1566 = shl i64 %1563, 32
  %1567 = ashr exact i64 %1566, 32
  %1568 = icmp ne i64 %1567, %1563
  %1569 = zext i1 %1568 to i8
  store i8 %1569, i8* %80, align 1
  %1570 = and i32 %1564, 255
  %1571 = tail call i32 @llvm.ctpop.i32(i32 %1570)
  %1572 = trunc i32 %1571 to i8
  %1573 = and i8 %1572, 1
  %1574 = xor i8 %1573, 1
  store i8 %1574, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  %1575 = lshr i32 %1564, 31
  %1576 = trunc i32 %1575 to i8
  store i8 %1576, i8* %97, align 1
  store i8 %1569, i8* %103, align 1
  %1577 = add i64 %395, 524
  store i64 %1577, i64* %3, align 8
  %1578 = load i64, i64* %1539, align 8
  store i64 %1578, i64* %RCX.i2541, align 8
  %1579 = add i64 %1578, 20
  %1580 = add i64 %395, 528
  store i64 %1580, i64* %3, align 8
  %1581 = inttoptr i64 %1579 to i32*
  %1582 = load i32, i32* %1581, align 4
  %1583 = shl i64 %1563, 32
  %1584 = ashr exact i64 %1583, 32
  %1585 = sext i32 %1582 to i64
  %1586 = mul nsw i64 %1585, %1584
  %1587 = and i64 %1586, 4294967295
  store i64 %1587, i64* %RSI.i2547, align 8
  %1588 = trunc i64 %1586 to i32
  %1589 = and i64 %1586, 4294967295
  store i64 %1589, i64* %RDX.i2544, align 8
  store i8 0, i8* %80, align 1
  %1590 = and i32 %1588, 255
  %1591 = tail call i32 @llvm.ctpop.i32(i32 %1590)
  %1592 = trunc i32 %1591 to i8
  %1593 = and i8 %1592, 1
  %1594 = xor i8 %1593, 1
  store i8 %1594, i8* %86, align 1
  store i8 0, i8* %91, align 1
  %1595 = icmp eq i32 %1588, 0
  %1596 = zext i1 %1595 to i8
  store i8 %1596, i8* %94, align 1
  %1597 = lshr i32 %1588, 31
  %1598 = trunc i32 %1597 to i8
  store i8 %1598, i8* %97, align 1
  store i8 0, i8* %103, align 1
  %1599 = load i64, i64* %RBP.i, align 8
  %1600 = add i64 %1599, -72
  %1601 = add i64 %395, 533
  store i64 %1601, i64* %3, align 8
  %1602 = inttoptr i64 %1600 to i32*
  %1603 = load i32, i32* %1602, align 4
  %1604 = zext i32 %1603 to i64
  store i64 %1604, i64* %RSI.i2547, align 8
  %1605 = add i64 %1599, -24
  %1606 = add i64 %395, 537
  store i64 %1606, i64* %3, align 8
  %1607 = inttoptr i64 %1605 to i64*
  %1608 = load i64, i64* %1607, align 8
  store i64 %1608, i64* %RCX.i2541, align 8
  %1609 = add i64 %1608, 20
  %1610 = add i64 %395, 541
  store i64 %1610, i64* %3, align 8
  %1611 = inttoptr i64 %1609 to i32*
  %1612 = load i32, i32* %1611, align 4
  %1613 = sext i32 %1603 to i64
  %1614 = sext i32 %1612 to i64
  %1615 = mul nsw i64 %1614, %1613
  %1616 = and i64 %1615, 4294967295
  store i64 %1616, i64* %RSI.i2547, align 8
  %1617 = trunc i64 %1615 to i32
  %1618 = add i32 %1617, %1588
  %1619 = zext i32 %1618 to i64
  store i64 %1619, i64* %RDX.i2544, align 8
  %1620 = icmp ult i32 %1618, %1588
  %1621 = icmp ult i32 %1618, %1617
  %1622 = or i1 %1620, %1621
  %1623 = zext i1 %1622 to i8
  store i8 %1623, i8* %80, align 1
  %1624 = and i32 %1618, 255
  %1625 = tail call i32 @llvm.ctpop.i32(i32 %1624)
  %1626 = trunc i32 %1625 to i8
  %1627 = and i8 %1626, 1
  %1628 = xor i8 %1627, 1
  store i8 %1628, i8* %86, align 1
  %1629 = xor i64 %1615, %1586
  %1630 = trunc i64 %1629 to i32
  %1631 = xor i32 %1630, %1618
  %1632 = lshr i32 %1631, 4
  %1633 = trunc i32 %1632 to i8
  %1634 = and i8 %1633, 1
  store i8 %1634, i8* %91, align 1
  %1635 = icmp eq i32 %1618, 0
  %1636 = zext i1 %1635 to i8
  store i8 %1636, i8* %94, align 1
  %1637 = lshr i32 %1618, 31
  %1638 = trunc i32 %1637 to i8
  store i8 %1638, i8* %97, align 1
  %1639 = lshr i32 %1617, 31
  %1640 = xor i32 %1637, %1597
  %1641 = xor i32 %1637, %1639
  %1642 = add nuw nsw i32 %1640, %1641
  %1643 = icmp eq i32 %1642, 2
  %1644 = zext i1 %1643 to i8
  store i8 %1644, i8* %103, align 1
  %1645 = add i64 %1599, -76
  %1646 = add i64 %395, 546
  store i64 %1646, i64* %3, align 8
  %1647 = inttoptr i64 %1645 to i32*
  %1648 = load i32, i32* %1647, align 4
  %1649 = add i32 %1648, %1618
  %1650 = zext i32 %1649 to i64
  store i64 %1650, i64* %RDX.i2544, align 8
  %1651 = icmp ult i32 %1649, %1618
  %1652 = icmp ult i32 %1649, %1648
  %1653 = or i1 %1651, %1652
  %1654 = zext i1 %1653 to i8
  store i8 %1654, i8* %80, align 1
  %1655 = and i32 %1649, 255
  %1656 = tail call i32 @llvm.ctpop.i32(i32 %1655)
  %1657 = trunc i32 %1656 to i8
  %1658 = and i8 %1657, 1
  %1659 = xor i8 %1658, 1
  store i8 %1659, i8* %86, align 1
  %1660 = xor i32 %1648, %1618
  %1661 = xor i32 %1660, %1649
  %1662 = lshr i32 %1661, 4
  %1663 = trunc i32 %1662 to i8
  %1664 = and i8 %1663, 1
  store i8 %1664, i8* %91, align 1
  %1665 = icmp eq i32 %1649, 0
  %1666 = zext i1 %1665 to i8
  store i8 %1666, i8* %94, align 1
  %1667 = lshr i32 %1649, 31
  %1668 = trunc i32 %1667 to i8
  store i8 %1668, i8* %97, align 1
  %1669 = lshr i32 %1648, 31
  %1670 = xor i32 %1667, %1637
  %1671 = xor i32 %1667, %1669
  %1672 = add nuw nsw i32 %1670, %1671
  %1673 = icmp eq i32 %1672, 2
  %1674 = zext i1 %1673 to i8
  store i8 %1674, i8* %103, align 1
  %1675 = sext i32 %1649 to i64
  store i64 %1675, i64* %RCX.i2541, align 8
  %1676 = load i64, i64* %RAX.i2556, align 8
  %1677 = shl nsw i64 %1675, 2
  %1678 = add i64 %1676, %1677
  %1679 = add i64 %395, 554
  store i64 %1679, i64* %3, align 8
  %1680 = inttoptr i64 %1678 to i32*
  %1681 = load i32, i32* %1680, align 4
  store i32 %1681, i32* %200, align 1
  store float 0.000000e+00, float* %202, align 1
  store float 0.000000e+00, float* %204, align 1
  store float 0.000000e+00, float* %206, align 1
  %1682 = load i64, i64* %RBP.i, align 8
  %1683 = add i64 %1682, -40
  %1684 = add i64 %395, 558
  store i64 %1684, i64* %3, align 8
  %1685 = inttoptr i64 %1683 to i64*
  %1686 = load i64, i64* %1685, align 8
  store i64 %1686, i64* %RAX.i2556, align 8
  %1687 = add i64 %395, 561
  store i64 %1687, i64* %3, align 8
  %1688 = inttoptr i64 %1686 to i64*
  %1689 = load i64, i64* %1688, align 8
  store i64 %1689, i64* %RAX.i2556, align 8
  %1690 = add i64 %395, 565
  store i64 %1690, i64* %3, align 8
  %1691 = load i64, i64* %1685, align 8
  store i64 %1691, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %80, align 1
  store i8 1, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  store i8 0, i8* %97, align 1
  store i8 0, i8* %103, align 1
  %1692 = add i64 %395, 573
  store i64 %1692, i64* %3, align 8
  %1693 = load i64, i64* %1685, align 8
  store i64 %1693, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %80, align 1
  store i8 1, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  store i8 0, i8* %97, align 1
  store i8 0, i8* %103, align 1
  %1694 = add i64 %395, 581
  store i64 %1694, i64* %3, align 8
  %1695 = load i64, i64* %1685, align 8
  store i64 %1695, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %80, align 1
  store i8 1, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  store i8 0, i8* %97, align 1
  store i8 0, i8* %103, align 1
  %1696 = add i64 %1682, -68
  %1697 = add i64 %395, 588
  store i64 %1697, i64* %3, align 8
  %1698 = inttoptr i64 %1696 to i32*
  %1699 = load i32, i32* %1698, align 4
  %1700 = add i32 %1699, 1
  %1701 = zext i32 %1700 to i64
  store i64 %1701, i64* %RSI.i2547, align 8
  %1702 = icmp eq i32 %1699, -1
  %1703 = icmp eq i32 %1700, 0
  %1704 = or i1 %1702, %1703
  %1705 = zext i1 %1704 to i8
  store i8 %1705, i8* %80, align 1
  %1706 = and i32 %1700, 255
  %1707 = tail call i32 @llvm.ctpop.i32(i32 %1706)
  %1708 = trunc i32 %1707 to i8
  %1709 = and i8 %1708, 1
  %1710 = xor i8 %1709, 1
  store i8 %1710, i8* %86, align 1
  %1711 = xor i32 %1700, %1699
  %1712 = lshr i32 %1711, 4
  %1713 = trunc i32 %1712 to i8
  %1714 = and i8 %1713, 1
  store i8 %1714, i8* %91, align 1
  %1715 = zext i1 %1703 to i8
  store i8 %1715, i8* %94, align 1
  %1716 = lshr i32 %1700, 31
  %1717 = trunc i32 %1716 to i8
  store i8 %1717, i8* %97, align 1
  %1718 = lshr i32 %1699, 31
  %1719 = xor i32 %1716, %1718
  %1720 = add nuw nsw i32 %1719, %1716
  %1721 = icmp eq i32 %1720, 2
  %1722 = zext i1 %1721 to i8
  store i8 %1722, i8* %103, align 1
  %1723 = add i64 %395, 595
  store i64 %1723, i64* %3, align 8
  %1724 = load i64, i64* %1685, align 8
  store i64 %1724, i64* %RCX.i2541, align 8
  %1725 = add i64 %1724, 16
  %1726 = add i64 %395, 599
  store i64 %1726, i64* %3, align 8
  %1727 = inttoptr i64 %1725 to i32*
  %1728 = load i32, i32* %1727, align 4
  %1729 = sext i32 %1700 to i64
  %1730 = sext i32 %1728 to i64
  %1731 = mul nsw i64 %1730, %1729
  %1732 = trunc i64 %1731 to i32
  %1733 = and i64 %1731, 4294967295
  store i64 %1733, i64* %RSI.i2547, align 8
  %1734 = shl i64 %1731, 32
  %1735 = ashr exact i64 %1734, 32
  %1736 = icmp ne i64 %1735, %1731
  %1737 = zext i1 %1736 to i8
  store i8 %1737, i8* %80, align 1
  %1738 = and i32 %1732, 255
  %1739 = tail call i32 @llvm.ctpop.i32(i32 %1738)
  %1740 = trunc i32 %1739 to i8
  %1741 = and i8 %1740, 1
  %1742 = xor i8 %1741, 1
  store i8 %1742, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  %1743 = lshr i32 %1732, 31
  %1744 = trunc i32 %1743 to i8
  store i8 %1744, i8* %97, align 1
  store i8 %1737, i8* %103, align 1
  %1745 = load i64, i64* %RBP.i, align 8
  %1746 = add i64 %1745, -40
  %1747 = add i64 %395, 603
  store i64 %1747, i64* %3, align 8
  %1748 = inttoptr i64 %1746 to i64*
  %1749 = load i64, i64* %1748, align 8
  store i64 %1749, i64* %RCX.i2541, align 8
  %1750 = add i64 %1749, 20
  %1751 = add i64 %395, 607
  store i64 %1751, i64* %3, align 8
  %1752 = inttoptr i64 %1750 to i32*
  %1753 = load i32, i32* %1752, align 4
  %1754 = shl i64 %1731, 32
  %1755 = ashr exact i64 %1754, 32
  %1756 = sext i32 %1753 to i64
  %1757 = mul nsw i64 %1756, %1755
  %1758 = and i64 %1757, 4294967295
  store i64 %1758, i64* %RSI.i2547, align 8
  %1759 = load i64, i64* %RDX.i2544, align 8
  %1760 = trunc i64 %1757 to i32
  %1761 = trunc i64 %1759 to i32
  %1762 = add i32 %1760, %1761
  %1763 = zext i32 %1762 to i64
  store i64 %1763, i64* %RDX.i2544, align 8
  %1764 = icmp ult i32 %1762, %1761
  %1765 = icmp ult i32 %1762, %1760
  %1766 = or i1 %1764, %1765
  %1767 = zext i1 %1766 to i8
  store i8 %1767, i8* %80, align 1
  %1768 = and i32 %1762, 255
  %1769 = tail call i32 @llvm.ctpop.i32(i32 %1768)
  %1770 = trunc i32 %1769 to i8
  %1771 = and i8 %1770, 1
  %1772 = xor i8 %1771, 1
  store i8 %1772, i8* %86, align 1
  %1773 = xor i64 %1757, %1759
  %1774 = trunc i64 %1773 to i32
  %1775 = xor i32 %1774, %1762
  %1776 = lshr i32 %1775, 4
  %1777 = trunc i32 %1776 to i8
  %1778 = and i8 %1777, 1
  store i8 %1778, i8* %91, align 1
  %1779 = icmp eq i32 %1762, 0
  %1780 = zext i1 %1779 to i8
  store i8 %1780, i8* %94, align 1
  %1781 = lshr i32 %1762, 31
  %1782 = trunc i32 %1781 to i8
  store i8 %1782, i8* %97, align 1
  %1783 = lshr i32 %1761, 31
  %1784 = lshr i32 %1760, 31
  %1785 = xor i32 %1781, %1783
  %1786 = xor i32 %1781, %1784
  %1787 = add nuw nsw i32 %1785, %1786
  %1788 = icmp eq i32 %1787, 2
  %1789 = zext i1 %1788 to i8
  store i8 %1789, i8* %103, align 1
  %1790 = add i64 %1745, -72
  %1791 = add i64 %395, 612
  store i64 %1791, i64* %3, align 8
  %1792 = inttoptr i64 %1790 to i32*
  %1793 = load i32, i32* %1792, align 4
  %1794 = add i32 %1793, 1
  %1795 = zext i32 %1794 to i64
  store i64 %1795, i64* %RSI.i2547, align 8
  %1796 = icmp eq i32 %1793, -1
  %1797 = icmp eq i32 %1794, 0
  %1798 = or i1 %1796, %1797
  %1799 = zext i1 %1798 to i8
  store i8 %1799, i8* %80, align 1
  %1800 = and i32 %1794, 255
  %1801 = tail call i32 @llvm.ctpop.i32(i32 %1800)
  %1802 = trunc i32 %1801 to i8
  %1803 = and i8 %1802, 1
  %1804 = xor i8 %1803, 1
  store i8 %1804, i8* %86, align 1
  %1805 = xor i32 %1794, %1793
  %1806 = lshr i32 %1805, 4
  %1807 = trunc i32 %1806 to i8
  %1808 = and i8 %1807, 1
  store i8 %1808, i8* %91, align 1
  %1809 = zext i1 %1797 to i8
  store i8 %1809, i8* %94, align 1
  %1810 = lshr i32 %1794, 31
  %1811 = trunc i32 %1810 to i8
  store i8 %1811, i8* %97, align 1
  %1812 = lshr i32 %1793, 31
  %1813 = xor i32 %1810, %1812
  %1814 = add nuw nsw i32 %1813, %1810
  %1815 = icmp eq i32 %1814, 2
  %1816 = zext i1 %1815 to i8
  store i8 %1816, i8* %103, align 1
  %1817 = load i64, i64* %RBP.i, align 8
  %1818 = add i64 %1817, -40
  %1819 = add i64 %395, 619
  store i64 %1819, i64* %3, align 8
  %1820 = inttoptr i64 %1818 to i64*
  %1821 = load i64, i64* %1820, align 8
  store i64 %1821, i64* %RCX.i2541, align 8
  %1822 = add i64 %1821, 20
  %1823 = add i64 %395, 623
  store i64 %1823, i64* %3, align 8
  %1824 = inttoptr i64 %1822 to i32*
  %1825 = load i32, i32* %1824, align 4
  %1826 = sext i32 %1794 to i64
  %1827 = sext i32 %1825 to i64
  %1828 = mul nsw i64 %1827, %1826
  %1829 = and i64 %1828, 4294967295
  store i64 %1829, i64* %RSI.i2547, align 8
  %1830 = load i64, i64* %RDX.i2544, align 8
  %1831 = trunc i64 %1828 to i32
  %1832 = trunc i64 %1830 to i32
  %1833 = add i32 %1831, %1832
  %1834 = zext i32 %1833 to i64
  store i64 %1834, i64* %RDX.i2544, align 8
  %1835 = icmp ult i32 %1833, %1832
  %1836 = icmp ult i32 %1833, %1831
  %1837 = or i1 %1835, %1836
  %1838 = zext i1 %1837 to i8
  store i8 %1838, i8* %80, align 1
  %1839 = and i32 %1833, 255
  %1840 = tail call i32 @llvm.ctpop.i32(i32 %1839)
  %1841 = trunc i32 %1840 to i8
  %1842 = and i8 %1841, 1
  %1843 = xor i8 %1842, 1
  store i8 %1843, i8* %86, align 1
  %1844 = xor i64 %1828, %1830
  %1845 = trunc i64 %1844 to i32
  %1846 = xor i32 %1845, %1833
  %1847 = lshr i32 %1846, 4
  %1848 = trunc i32 %1847 to i8
  %1849 = and i8 %1848, 1
  store i8 %1849, i8* %91, align 1
  %1850 = icmp eq i32 %1833, 0
  %1851 = zext i1 %1850 to i8
  store i8 %1851, i8* %94, align 1
  %1852 = lshr i32 %1833, 31
  %1853 = trunc i32 %1852 to i8
  store i8 %1853, i8* %97, align 1
  %1854 = lshr i32 %1832, 31
  %1855 = lshr i32 %1831, 31
  %1856 = xor i32 %1852, %1854
  %1857 = xor i32 %1852, %1855
  %1858 = add nuw nsw i32 %1856, %1857
  %1859 = icmp eq i32 %1858, 2
  %1860 = zext i1 %1859 to i8
  store i8 %1860, i8* %103, align 1
  %1861 = add i64 %1817, -76
  %1862 = add i64 %395, 628
  store i64 %1862, i64* %3, align 8
  %1863 = inttoptr i64 %1861 to i32*
  %1864 = load i32, i32* %1863, align 4
  %1865 = add i32 %1864, %1833
  %1866 = zext i32 %1865 to i64
  store i64 %1866, i64* %RDX.i2544, align 8
  %1867 = icmp ult i32 %1865, %1833
  %1868 = icmp ult i32 %1865, %1864
  %1869 = or i1 %1867, %1868
  %1870 = zext i1 %1869 to i8
  store i8 %1870, i8* %80, align 1
  %1871 = and i32 %1865, 255
  %1872 = tail call i32 @llvm.ctpop.i32(i32 %1871)
  %1873 = trunc i32 %1872 to i8
  %1874 = and i8 %1873, 1
  %1875 = xor i8 %1874, 1
  store i8 %1875, i8* %86, align 1
  %1876 = xor i32 %1864, %1833
  %1877 = xor i32 %1876, %1865
  %1878 = lshr i32 %1877, 4
  %1879 = trunc i32 %1878 to i8
  %1880 = and i8 %1879, 1
  store i8 %1880, i8* %91, align 1
  %1881 = icmp eq i32 %1865, 0
  %1882 = zext i1 %1881 to i8
  store i8 %1882, i8* %94, align 1
  %1883 = lshr i32 %1865, 31
  %1884 = trunc i32 %1883 to i8
  store i8 %1884, i8* %97, align 1
  %1885 = lshr i32 %1864, 31
  %1886 = xor i32 %1883, %1852
  %1887 = xor i32 %1883, %1885
  %1888 = add nuw nsw i32 %1886, %1887
  %1889 = icmp eq i32 %1888, 2
  %1890 = zext i1 %1889 to i8
  store i8 %1890, i8* %103, align 1
  %1891 = sext i32 %1865 to i64
  store i64 %1891, i64* %RCX.i2541, align 8
  %1892 = load i64, i64* %RAX.i2556, align 8
  %1893 = shl nsw i64 %1891, 2
  %1894 = add i64 %1892, %1893
  %1895 = add i64 %395, 636
  store i64 %1895, i64* %3, align 8
  %1896 = inttoptr i64 %1894 to i32*
  %1897 = load i32, i32* %1896, align 4
  store i32 %1897, i32* %215, align 1
  store float 0.000000e+00, float* %217, align 1
  store float 0.000000e+00, float* %219, align 1
  store float 0.000000e+00, float* %221, align 1
  %1898 = load i64, i64* %RBP.i, align 8
  %1899 = add i64 %1898, -40
  %1900 = add i64 %395, 640
  store i64 %1900, i64* %3, align 8
  %1901 = inttoptr i64 %1899 to i64*
  %1902 = load i64, i64* %1901, align 8
  store i64 %1902, i64* %RAX.i2556, align 8
  %1903 = add i64 %395, 643
  store i64 %1903, i64* %3, align 8
  %1904 = inttoptr i64 %1902 to i64*
  %1905 = load i64, i64* %1904, align 8
  store i64 %1905, i64* %RAX.i2556, align 8
  %1906 = add i64 %395, 647
  store i64 %1906, i64* %3, align 8
  %1907 = load i64, i64* %1901, align 8
  store i64 %1907, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %80, align 1
  store i8 1, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  store i8 0, i8* %97, align 1
  store i8 0, i8* %103, align 1
  %1908 = add i64 %395, 655
  store i64 %1908, i64* %3, align 8
  %1909 = load i64, i64* %1901, align 8
  store i64 %1909, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %80, align 1
  store i8 1, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  store i8 0, i8* %97, align 1
  store i8 0, i8* %103, align 1
  %1910 = add i64 %395, 663
  store i64 %1910, i64* %3, align 8
  %1911 = load i64, i64* %1901, align 8
  store i64 %1911, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %80, align 1
  store i8 1, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  store i8 0, i8* %97, align 1
  store i8 0, i8* %103, align 1
  %1912 = add i64 %1898, -68
  %1913 = add i64 %395, 670
  store i64 %1913, i64* %3, align 8
  %1914 = inttoptr i64 %1912 to i32*
  %1915 = load i32, i32* %1914, align 4
  %1916 = add i32 %1915, 1
  %1917 = zext i32 %1916 to i64
  store i64 %1917, i64* %RSI.i2547, align 8
  %1918 = icmp eq i32 %1915, -1
  %1919 = icmp eq i32 %1916, 0
  %1920 = or i1 %1918, %1919
  %1921 = zext i1 %1920 to i8
  store i8 %1921, i8* %80, align 1
  %1922 = and i32 %1916, 255
  %1923 = tail call i32 @llvm.ctpop.i32(i32 %1922)
  %1924 = trunc i32 %1923 to i8
  %1925 = and i8 %1924, 1
  %1926 = xor i8 %1925, 1
  store i8 %1926, i8* %86, align 1
  %1927 = xor i32 %1916, %1915
  %1928 = lshr i32 %1927, 4
  %1929 = trunc i32 %1928 to i8
  %1930 = and i8 %1929, 1
  store i8 %1930, i8* %91, align 1
  %1931 = zext i1 %1919 to i8
  store i8 %1931, i8* %94, align 1
  %1932 = lshr i32 %1916, 31
  %1933 = trunc i32 %1932 to i8
  store i8 %1933, i8* %97, align 1
  %1934 = lshr i32 %1915, 31
  %1935 = xor i32 %1932, %1934
  %1936 = add nuw nsw i32 %1935, %1932
  %1937 = icmp eq i32 %1936, 2
  %1938 = zext i1 %1937 to i8
  store i8 %1938, i8* %103, align 1
  %1939 = add i64 %395, 677
  store i64 %1939, i64* %3, align 8
  %1940 = load i64, i64* %1901, align 8
  store i64 %1940, i64* %RCX.i2541, align 8
  %1941 = add i64 %1940, 16
  %1942 = add i64 %395, 681
  store i64 %1942, i64* %3, align 8
  %1943 = inttoptr i64 %1941 to i32*
  %1944 = load i32, i32* %1943, align 4
  %1945 = sext i32 %1916 to i64
  %1946 = sext i32 %1944 to i64
  %1947 = mul nsw i64 %1946, %1945
  %1948 = trunc i64 %1947 to i32
  %1949 = and i64 %1947, 4294967295
  store i64 %1949, i64* %RSI.i2547, align 8
  %1950 = shl i64 %1947, 32
  %1951 = ashr exact i64 %1950, 32
  %1952 = icmp ne i64 %1951, %1947
  %1953 = zext i1 %1952 to i8
  store i8 %1953, i8* %80, align 1
  %1954 = and i32 %1948, 255
  %1955 = tail call i32 @llvm.ctpop.i32(i32 %1954)
  %1956 = trunc i32 %1955 to i8
  %1957 = and i8 %1956, 1
  %1958 = xor i8 %1957, 1
  store i8 %1958, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  %1959 = lshr i32 %1948, 31
  %1960 = trunc i32 %1959 to i8
  store i8 %1960, i8* %97, align 1
  store i8 %1953, i8* %103, align 1
  %1961 = load i64, i64* %RBP.i, align 8
  %1962 = add i64 %1961, -40
  %1963 = add i64 %395, 685
  store i64 %1963, i64* %3, align 8
  %1964 = inttoptr i64 %1962 to i64*
  %1965 = load i64, i64* %1964, align 8
  store i64 %1965, i64* %RCX.i2541, align 8
  %1966 = add i64 %1965, 20
  %1967 = add i64 %395, 689
  store i64 %1967, i64* %3, align 8
  %1968 = inttoptr i64 %1966 to i32*
  %1969 = load i32, i32* %1968, align 4
  %1970 = shl i64 %1947, 32
  %1971 = ashr exact i64 %1970, 32
  %1972 = sext i32 %1969 to i64
  %1973 = mul nsw i64 %1972, %1971
  %1974 = and i64 %1973, 4294967295
  store i64 %1974, i64* %RSI.i2547, align 8
  %1975 = load i64, i64* %RDX.i2544, align 8
  %1976 = trunc i64 %1973 to i32
  %1977 = trunc i64 %1975 to i32
  %1978 = add i32 %1976, %1977
  %1979 = zext i32 %1978 to i64
  store i64 %1979, i64* %RDX.i2544, align 8
  %1980 = icmp ult i32 %1978, %1977
  %1981 = icmp ult i32 %1978, %1976
  %1982 = or i1 %1980, %1981
  %1983 = zext i1 %1982 to i8
  store i8 %1983, i8* %80, align 1
  %1984 = and i32 %1978, 255
  %1985 = tail call i32 @llvm.ctpop.i32(i32 %1984)
  %1986 = trunc i32 %1985 to i8
  %1987 = and i8 %1986, 1
  %1988 = xor i8 %1987, 1
  store i8 %1988, i8* %86, align 1
  %1989 = xor i64 %1973, %1975
  %1990 = trunc i64 %1989 to i32
  %1991 = xor i32 %1990, %1978
  %1992 = lshr i32 %1991, 4
  %1993 = trunc i32 %1992 to i8
  %1994 = and i8 %1993, 1
  store i8 %1994, i8* %91, align 1
  %1995 = icmp eq i32 %1978, 0
  %1996 = zext i1 %1995 to i8
  store i8 %1996, i8* %94, align 1
  %1997 = lshr i32 %1978, 31
  %1998 = trunc i32 %1997 to i8
  store i8 %1998, i8* %97, align 1
  %1999 = lshr i32 %1977, 31
  %2000 = lshr i32 %1976, 31
  %2001 = xor i32 %1997, %1999
  %2002 = xor i32 %1997, %2000
  %2003 = add nuw nsw i32 %2001, %2002
  %2004 = icmp eq i32 %2003, 2
  %2005 = zext i1 %2004 to i8
  store i8 %2005, i8* %103, align 1
  %2006 = add i64 %1961, -72
  %2007 = add i64 %395, 694
  store i64 %2007, i64* %3, align 8
  %2008 = inttoptr i64 %2006 to i32*
  %2009 = load i32, i32* %2008, align 4
  %2010 = add i32 %2009, -1
  %2011 = zext i32 %2010 to i64
  store i64 %2011, i64* %RSI.i2547, align 8
  %2012 = icmp eq i32 %2009, 0
  %2013 = zext i1 %2012 to i8
  store i8 %2013, i8* %80, align 1
  %2014 = and i32 %2010, 255
  %2015 = tail call i32 @llvm.ctpop.i32(i32 %2014)
  %2016 = trunc i32 %2015 to i8
  %2017 = and i8 %2016, 1
  %2018 = xor i8 %2017, 1
  store i8 %2018, i8* %86, align 1
  %2019 = xor i32 %2010, %2009
  %2020 = lshr i32 %2019, 4
  %2021 = trunc i32 %2020 to i8
  %2022 = and i8 %2021, 1
  store i8 %2022, i8* %91, align 1
  %2023 = icmp eq i32 %2010, 0
  %2024 = zext i1 %2023 to i8
  store i8 %2024, i8* %94, align 1
  %2025 = lshr i32 %2010, 31
  %2026 = trunc i32 %2025 to i8
  store i8 %2026, i8* %97, align 1
  %2027 = lshr i32 %2009, 31
  %2028 = xor i32 %2025, %2027
  %2029 = add nuw nsw i32 %2028, %2027
  %2030 = icmp eq i32 %2029, 2
  %2031 = zext i1 %2030 to i8
  store i8 %2031, i8* %103, align 1
  %2032 = load i64, i64* %RBP.i, align 8
  %2033 = add i64 %2032, -40
  %2034 = add i64 %395, 701
  store i64 %2034, i64* %3, align 8
  %2035 = inttoptr i64 %2033 to i64*
  %2036 = load i64, i64* %2035, align 8
  store i64 %2036, i64* %RCX.i2541, align 8
  %2037 = add i64 %2036, 20
  %2038 = add i64 %395, 705
  store i64 %2038, i64* %3, align 8
  %2039 = inttoptr i64 %2037 to i32*
  %2040 = load i32, i32* %2039, align 4
  %2041 = sext i32 %2010 to i64
  %2042 = sext i32 %2040 to i64
  %2043 = mul nsw i64 %2042, %2041
  %2044 = and i64 %2043, 4294967295
  store i64 %2044, i64* %RSI.i2547, align 8
  %2045 = load i64, i64* %RDX.i2544, align 8
  %2046 = trunc i64 %2043 to i32
  %2047 = trunc i64 %2045 to i32
  %2048 = add i32 %2046, %2047
  %2049 = zext i32 %2048 to i64
  store i64 %2049, i64* %RDX.i2544, align 8
  %2050 = icmp ult i32 %2048, %2047
  %2051 = icmp ult i32 %2048, %2046
  %2052 = or i1 %2050, %2051
  %2053 = zext i1 %2052 to i8
  store i8 %2053, i8* %80, align 1
  %2054 = and i32 %2048, 255
  %2055 = tail call i32 @llvm.ctpop.i32(i32 %2054)
  %2056 = trunc i32 %2055 to i8
  %2057 = and i8 %2056, 1
  %2058 = xor i8 %2057, 1
  store i8 %2058, i8* %86, align 1
  %2059 = xor i64 %2043, %2045
  %2060 = trunc i64 %2059 to i32
  %2061 = xor i32 %2060, %2048
  %2062 = lshr i32 %2061, 4
  %2063 = trunc i32 %2062 to i8
  %2064 = and i8 %2063, 1
  store i8 %2064, i8* %91, align 1
  %2065 = icmp eq i32 %2048, 0
  %2066 = zext i1 %2065 to i8
  store i8 %2066, i8* %94, align 1
  %2067 = lshr i32 %2048, 31
  %2068 = trunc i32 %2067 to i8
  store i8 %2068, i8* %97, align 1
  %2069 = lshr i32 %2047, 31
  %2070 = lshr i32 %2046, 31
  %2071 = xor i32 %2067, %2069
  %2072 = xor i32 %2067, %2070
  %2073 = add nuw nsw i32 %2071, %2072
  %2074 = icmp eq i32 %2073, 2
  %2075 = zext i1 %2074 to i8
  store i8 %2075, i8* %103, align 1
  %2076 = add i64 %2032, -76
  %2077 = add i64 %395, 710
  store i64 %2077, i64* %3, align 8
  %2078 = inttoptr i64 %2076 to i32*
  %2079 = load i32, i32* %2078, align 4
  %2080 = add i32 %2079, %2048
  %2081 = zext i32 %2080 to i64
  store i64 %2081, i64* %RDX.i2544, align 8
  %2082 = icmp ult i32 %2080, %2048
  %2083 = icmp ult i32 %2080, %2079
  %2084 = or i1 %2082, %2083
  %2085 = zext i1 %2084 to i8
  store i8 %2085, i8* %80, align 1
  %2086 = and i32 %2080, 255
  %2087 = tail call i32 @llvm.ctpop.i32(i32 %2086)
  %2088 = trunc i32 %2087 to i8
  %2089 = and i8 %2088, 1
  %2090 = xor i8 %2089, 1
  store i8 %2090, i8* %86, align 1
  %2091 = xor i32 %2079, %2048
  %2092 = xor i32 %2091, %2080
  %2093 = lshr i32 %2092, 4
  %2094 = trunc i32 %2093 to i8
  %2095 = and i8 %2094, 1
  store i8 %2095, i8* %91, align 1
  %2096 = icmp eq i32 %2080, 0
  %2097 = zext i1 %2096 to i8
  store i8 %2097, i8* %94, align 1
  %2098 = lshr i32 %2080, 31
  %2099 = trunc i32 %2098 to i8
  store i8 %2099, i8* %97, align 1
  %2100 = lshr i32 %2079, 31
  %2101 = xor i32 %2098, %2067
  %2102 = xor i32 %2098, %2100
  %2103 = add nuw nsw i32 %2101, %2102
  %2104 = icmp eq i32 %2103, 2
  %2105 = zext i1 %2104 to i8
  store i8 %2105, i8* %103, align 1
  %2106 = sext i32 %2080 to i64
  store i64 %2106, i64* %RCX.i2541, align 8
  %2107 = load i64, i64* %RAX.i2556, align 8
  %2108 = shl nsw i64 %2106, 2
  %2109 = add i64 %2107, %2108
  %2110 = add i64 %395, 718
  store i64 %2110, i64* %3, align 8
  %2111 = load <2 x float>, <2 x float>* %222, align 1
  %2112 = load <2 x i32>, <2 x i32>* %223, align 1
  %2113 = inttoptr i64 %2109 to float*
  %2114 = load float, float* %2113, align 4
  %2115 = extractelement <2 x float> %2111, i32 0
  %2116 = fsub float %2115, %2114
  store float %2116, float* %214, align 1
  %2117 = bitcast <2 x float> %2111 to <2 x i32>
  %2118 = extractelement <2 x i32> %2117, i32 1
  store i32 %2118, i32* %224, align 1
  %2119 = extractelement <2 x i32> %2112, i32 0
  store i32 %2119, i32* %225, align 1
  %2120 = extractelement <2 x i32> %2112, i32 1
  store i32 %2120, i32* %226, align 1
  %2121 = load i64, i64* %RBP.i, align 8
  %2122 = add i64 %2121, -40
  %2123 = add i64 %395, 722
  store i64 %2123, i64* %3, align 8
  %2124 = inttoptr i64 %2122 to i64*
  %2125 = load i64, i64* %2124, align 8
  store i64 %2125, i64* %RAX.i2556, align 8
  %2126 = add i64 %395, 725
  store i64 %2126, i64* %3, align 8
  %2127 = inttoptr i64 %2125 to i64*
  %2128 = load i64, i64* %2127, align 8
  store i64 %2128, i64* %RAX.i2556, align 8
  %2129 = add i64 %395, 729
  store i64 %2129, i64* %3, align 8
  %2130 = load i64, i64* %2124, align 8
  store i64 %2130, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %80, align 1
  store i8 1, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  store i8 0, i8* %97, align 1
  store i8 0, i8* %103, align 1
  %2131 = add i64 %395, 737
  store i64 %2131, i64* %3, align 8
  %2132 = load i64, i64* %2124, align 8
  store i64 %2132, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %80, align 1
  store i8 1, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  store i8 0, i8* %97, align 1
  store i8 0, i8* %103, align 1
  %2133 = add i64 %395, 745
  store i64 %2133, i64* %3, align 8
  %2134 = load i64, i64* %2124, align 8
  store i64 %2134, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %80, align 1
  store i8 1, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  store i8 0, i8* %97, align 1
  store i8 0, i8* %103, align 1
  %2135 = add i64 %2121, -68
  %2136 = add i64 %395, 752
  store i64 %2136, i64* %3, align 8
  %2137 = inttoptr i64 %2135 to i32*
  %2138 = load i32, i32* %2137, align 4
  %2139 = add i32 %2138, -1
  %2140 = zext i32 %2139 to i64
  store i64 %2140, i64* %RSI.i2547, align 8
  %2141 = icmp eq i32 %2138, 0
  %2142 = zext i1 %2141 to i8
  store i8 %2142, i8* %80, align 1
  %2143 = and i32 %2139, 255
  %2144 = tail call i32 @llvm.ctpop.i32(i32 %2143)
  %2145 = trunc i32 %2144 to i8
  %2146 = and i8 %2145, 1
  %2147 = xor i8 %2146, 1
  store i8 %2147, i8* %86, align 1
  %2148 = xor i32 %2139, %2138
  %2149 = lshr i32 %2148, 4
  %2150 = trunc i32 %2149 to i8
  %2151 = and i8 %2150, 1
  store i8 %2151, i8* %91, align 1
  %2152 = icmp eq i32 %2139, 0
  %2153 = zext i1 %2152 to i8
  store i8 %2153, i8* %94, align 1
  %2154 = lshr i32 %2139, 31
  %2155 = trunc i32 %2154 to i8
  store i8 %2155, i8* %97, align 1
  %2156 = lshr i32 %2138, 31
  %2157 = xor i32 %2154, %2156
  %2158 = add nuw nsw i32 %2157, %2156
  %2159 = icmp eq i32 %2158, 2
  %2160 = zext i1 %2159 to i8
  store i8 %2160, i8* %103, align 1
  %2161 = add i64 %395, 759
  store i64 %2161, i64* %3, align 8
  %2162 = load i64, i64* %2124, align 8
  store i64 %2162, i64* %RCX.i2541, align 8
  %2163 = add i64 %2162, 16
  %2164 = add i64 %395, 763
  store i64 %2164, i64* %3, align 8
  %2165 = inttoptr i64 %2163 to i32*
  %2166 = load i32, i32* %2165, align 4
  %2167 = sext i32 %2139 to i64
  %2168 = sext i32 %2166 to i64
  %2169 = mul nsw i64 %2168, %2167
  %2170 = trunc i64 %2169 to i32
  %2171 = and i64 %2169, 4294967295
  store i64 %2171, i64* %RSI.i2547, align 8
  %2172 = shl i64 %2169, 32
  %2173 = ashr exact i64 %2172, 32
  %2174 = icmp ne i64 %2173, %2169
  %2175 = zext i1 %2174 to i8
  store i8 %2175, i8* %80, align 1
  %2176 = and i32 %2170, 255
  %2177 = tail call i32 @llvm.ctpop.i32(i32 %2176)
  %2178 = trunc i32 %2177 to i8
  %2179 = and i8 %2178, 1
  %2180 = xor i8 %2179, 1
  store i8 %2180, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  %2181 = lshr i32 %2170, 31
  %2182 = trunc i32 %2181 to i8
  store i8 %2182, i8* %97, align 1
  store i8 %2175, i8* %103, align 1
  %2183 = load i64, i64* %RBP.i, align 8
  %2184 = add i64 %2183, -40
  %2185 = add i64 %395, 767
  store i64 %2185, i64* %3, align 8
  %2186 = inttoptr i64 %2184 to i64*
  %2187 = load i64, i64* %2186, align 8
  store i64 %2187, i64* %RCX.i2541, align 8
  %2188 = add i64 %2187, 20
  %2189 = add i64 %395, 771
  store i64 %2189, i64* %3, align 8
  %2190 = inttoptr i64 %2188 to i32*
  %2191 = load i32, i32* %2190, align 4
  %2192 = shl i64 %2169, 32
  %2193 = ashr exact i64 %2192, 32
  %2194 = sext i32 %2191 to i64
  %2195 = mul nsw i64 %2194, %2193
  %2196 = and i64 %2195, 4294967295
  store i64 %2196, i64* %RSI.i2547, align 8
  %2197 = load i64, i64* %RDX.i2544, align 8
  %2198 = trunc i64 %2195 to i32
  %2199 = trunc i64 %2197 to i32
  %2200 = add i32 %2198, %2199
  %2201 = zext i32 %2200 to i64
  store i64 %2201, i64* %RDX.i2544, align 8
  %2202 = icmp ult i32 %2200, %2199
  %2203 = icmp ult i32 %2200, %2198
  %2204 = or i1 %2202, %2203
  %2205 = zext i1 %2204 to i8
  store i8 %2205, i8* %80, align 1
  %2206 = and i32 %2200, 255
  %2207 = tail call i32 @llvm.ctpop.i32(i32 %2206)
  %2208 = trunc i32 %2207 to i8
  %2209 = and i8 %2208, 1
  %2210 = xor i8 %2209, 1
  store i8 %2210, i8* %86, align 1
  %2211 = xor i64 %2195, %2197
  %2212 = trunc i64 %2211 to i32
  %2213 = xor i32 %2212, %2200
  %2214 = lshr i32 %2213, 4
  %2215 = trunc i32 %2214 to i8
  %2216 = and i8 %2215, 1
  store i8 %2216, i8* %91, align 1
  %2217 = icmp eq i32 %2200, 0
  %2218 = zext i1 %2217 to i8
  store i8 %2218, i8* %94, align 1
  %2219 = lshr i32 %2200, 31
  %2220 = trunc i32 %2219 to i8
  store i8 %2220, i8* %97, align 1
  %2221 = lshr i32 %2199, 31
  %2222 = lshr i32 %2198, 31
  %2223 = xor i32 %2219, %2221
  %2224 = xor i32 %2219, %2222
  %2225 = add nuw nsw i32 %2223, %2224
  %2226 = icmp eq i32 %2225, 2
  %2227 = zext i1 %2226 to i8
  store i8 %2227, i8* %103, align 1
  %2228 = add i64 %2183, -72
  %2229 = add i64 %395, 776
  store i64 %2229, i64* %3, align 8
  %2230 = inttoptr i64 %2228 to i32*
  %2231 = load i32, i32* %2230, align 4
  %2232 = add i32 %2231, 1
  %2233 = zext i32 %2232 to i64
  store i64 %2233, i64* %RSI.i2547, align 8
  %2234 = icmp eq i32 %2231, -1
  %2235 = icmp eq i32 %2232, 0
  %2236 = or i1 %2234, %2235
  %2237 = zext i1 %2236 to i8
  store i8 %2237, i8* %80, align 1
  %2238 = and i32 %2232, 255
  %2239 = tail call i32 @llvm.ctpop.i32(i32 %2238)
  %2240 = trunc i32 %2239 to i8
  %2241 = and i8 %2240, 1
  %2242 = xor i8 %2241, 1
  store i8 %2242, i8* %86, align 1
  %2243 = xor i32 %2232, %2231
  %2244 = lshr i32 %2243, 4
  %2245 = trunc i32 %2244 to i8
  %2246 = and i8 %2245, 1
  store i8 %2246, i8* %91, align 1
  %2247 = zext i1 %2235 to i8
  store i8 %2247, i8* %94, align 1
  %2248 = lshr i32 %2232, 31
  %2249 = trunc i32 %2248 to i8
  store i8 %2249, i8* %97, align 1
  %2250 = lshr i32 %2231, 31
  %2251 = xor i32 %2248, %2250
  %2252 = add nuw nsw i32 %2251, %2248
  %2253 = icmp eq i32 %2252, 2
  %2254 = zext i1 %2253 to i8
  store i8 %2254, i8* %103, align 1
  %2255 = load i64, i64* %RBP.i, align 8
  %2256 = add i64 %2255, -40
  %2257 = add i64 %395, 783
  store i64 %2257, i64* %3, align 8
  %2258 = inttoptr i64 %2256 to i64*
  %2259 = load i64, i64* %2258, align 8
  store i64 %2259, i64* %RCX.i2541, align 8
  %2260 = add i64 %2259, 20
  %2261 = add i64 %395, 787
  store i64 %2261, i64* %3, align 8
  %2262 = inttoptr i64 %2260 to i32*
  %2263 = load i32, i32* %2262, align 4
  %2264 = sext i32 %2232 to i64
  %2265 = sext i32 %2263 to i64
  %2266 = mul nsw i64 %2265, %2264
  %2267 = and i64 %2266, 4294967295
  store i64 %2267, i64* %RSI.i2547, align 8
  %2268 = load i64, i64* %RDX.i2544, align 8
  %2269 = trunc i64 %2266 to i32
  %2270 = trunc i64 %2268 to i32
  %2271 = add i32 %2269, %2270
  %2272 = zext i32 %2271 to i64
  store i64 %2272, i64* %RDX.i2544, align 8
  %2273 = icmp ult i32 %2271, %2270
  %2274 = icmp ult i32 %2271, %2269
  %2275 = or i1 %2273, %2274
  %2276 = zext i1 %2275 to i8
  store i8 %2276, i8* %80, align 1
  %2277 = and i32 %2271, 255
  %2278 = tail call i32 @llvm.ctpop.i32(i32 %2277)
  %2279 = trunc i32 %2278 to i8
  %2280 = and i8 %2279, 1
  %2281 = xor i8 %2280, 1
  store i8 %2281, i8* %86, align 1
  %2282 = xor i64 %2266, %2268
  %2283 = trunc i64 %2282 to i32
  %2284 = xor i32 %2283, %2271
  %2285 = lshr i32 %2284, 4
  %2286 = trunc i32 %2285 to i8
  %2287 = and i8 %2286, 1
  store i8 %2287, i8* %91, align 1
  %2288 = icmp eq i32 %2271, 0
  %2289 = zext i1 %2288 to i8
  store i8 %2289, i8* %94, align 1
  %2290 = lshr i32 %2271, 31
  %2291 = trunc i32 %2290 to i8
  store i8 %2291, i8* %97, align 1
  %2292 = lshr i32 %2270, 31
  %2293 = lshr i32 %2269, 31
  %2294 = xor i32 %2290, %2292
  %2295 = xor i32 %2290, %2293
  %2296 = add nuw nsw i32 %2294, %2295
  %2297 = icmp eq i32 %2296, 2
  %2298 = zext i1 %2297 to i8
  store i8 %2298, i8* %103, align 1
  %2299 = add i64 %2255, -76
  %2300 = add i64 %395, 792
  store i64 %2300, i64* %3, align 8
  %2301 = inttoptr i64 %2299 to i32*
  %2302 = load i32, i32* %2301, align 4
  %2303 = add i32 %2302, %2271
  %2304 = zext i32 %2303 to i64
  store i64 %2304, i64* %RDX.i2544, align 8
  %2305 = icmp ult i32 %2303, %2271
  %2306 = icmp ult i32 %2303, %2302
  %2307 = or i1 %2305, %2306
  %2308 = zext i1 %2307 to i8
  store i8 %2308, i8* %80, align 1
  %2309 = and i32 %2303, 255
  %2310 = tail call i32 @llvm.ctpop.i32(i32 %2309)
  %2311 = trunc i32 %2310 to i8
  %2312 = and i8 %2311, 1
  %2313 = xor i8 %2312, 1
  store i8 %2313, i8* %86, align 1
  %2314 = xor i32 %2302, %2271
  %2315 = xor i32 %2314, %2303
  %2316 = lshr i32 %2315, 4
  %2317 = trunc i32 %2316 to i8
  %2318 = and i8 %2317, 1
  store i8 %2318, i8* %91, align 1
  %2319 = icmp eq i32 %2303, 0
  %2320 = zext i1 %2319 to i8
  store i8 %2320, i8* %94, align 1
  %2321 = lshr i32 %2303, 31
  %2322 = trunc i32 %2321 to i8
  store i8 %2322, i8* %97, align 1
  %2323 = lshr i32 %2302, 31
  %2324 = xor i32 %2321, %2290
  %2325 = xor i32 %2321, %2323
  %2326 = add nuw nsw i32 %2324, %2325
  %2327 = icmp eq i32 %2326, 2
  %2328 = zext i1 %2327 to i8
  store i8 %2328, i8* %103, align 1
  %2329 = sext i32 %2303 to i64
  store i64 %2329, i64* %RCX.i2541, align 8
  %2330 = load i64, i64* %RAX.i2556, align 8
  %2331 = shl nsw i64 %2329, 2
  %2332 = add i64 %2330, %2331
  %2333 = add i64 %395, 800
  store i64 %2333, i64* %3, align 8
  %2334 = load <2 x float>, <2 x float>* %222, align 1
  %2335 = load <2 x i32>, <2 x i32>* %223, align 1
  %2336 = inttoptr i64 %2332 to float*
  %2337 = load float, float* %2336, align 4
  %2338 = extractelement <2 x float> %2334, i32 0
  %2339 = fsub float %2338, %2337
  store float %2339, float* %214, align 1
  %2340 = bitcast <2 x float> %2334 to <2 x i32>
  %2341 = extractelement <2 x i32> %2340, i32 1
  store i32 %2341, i32* %224, align 1
  %2342 = extractelement <2 x i32> %2335, i32 0
  store i32 %2342, i32* %225, align 1
  %2343 = extractelement <2 x i32> %2335, i32 1
  store i32 %2343, i32* %226, align 1
  %2344 = load i64, i64* %RBP.i, align 8
  %2345 = add i64 %2344, -40
  %2346 = add i64 %395, 804
  store i64 %2346, i64* %3, align 8
  %2347 = inttoptr i64 %2345 to i64*
  %2348 = load i64, i64* %2347, align 8
  store i64 %2348, i64* %RAX.i2556, align 8
  %2349 = add i64 %395, 807
  store i64 %2349, i64* %3, align 8
  %2350 = inttoptr i64 %2348 to i64*
  %2351 = load i64, i64* %2350, align 8
  store i64 %2351, i64* %RAX.i2556, align 8
  %2352 = add i64 %395, 811
  store i64 %2352, i64* %3, align 8
  %2353 = load i64, i64* %2347, align 8
  store i64 %2353, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %80, align 1
  store i8 1, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  store i8 0, i8* %97, align 1
  store i8 0, i8* %103, align 1
  %2354 = add i64 %395, 819
  store i64 %2354, i64* %3, align 8
  %2355 = load i64, i64* %2347, align 8
  store i64 %2355, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %80, align 1
  store i8 1, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  store i8 0, i8* %97, align 1
  store i8 0, i8* %103, align 1
  %2356 = add i64 %395, 827
  store i64 %2356, i64* %3, align 8
  %2357 = load i64, i64* %2347, align 8
  store i64 %2357, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %80, align 1
  store i8 1, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  store i8 0, i8* %97, align 1
  store i8 0, i8* %103, align 1
  %2358 = add i64 %2344, -68
  %2359 = add i64 %395, 834
  store i64 %2359, i64* %3, align 8
  %2360 = inttoptr i64 %2358 to i32*
  %2361 = load i32, i32* %2360, align 4
  %2362 = add i32 %2361, -1
  %2363 = zext i32 %2362 to i64
  store i64 %2363, i64* %RSI.i2547, align 8
  %2364 = icmp eq i32 %2361, 0
  %2365 = zext i1 %2364 to i8
  store i8 %2365, i8* %80, align 1
  %2366 = and i32 %2362, 255
  %2367 = tail call i32 @llvm.ctpop.i32(i32 %2366)
  %2368 = trunc i32 %2367 to i8
  %2369 = and i8 %2368, 1
  %2370 = xor i8 %2369, 1
  store i8 %2370, i8* %86, align 1
  %2371 = xor i32 %2362, %2361
  %2372 = lshr i32 %2371, 4
  %2373 = trunc i32 %2372 to i8
  %2374 = and i8 %2373, 1
  store i8 %2374, i8* %91, align 1
  %2375 = icmp eq i32 %2362, 0
  %2376 = zext i1 %2375 to i8
  store i8 %2376, i8* %94, align 1
  %2377 = lshr i32 %2362, 31
  %2378 = trunc i32 %2377 to i8
  store i8 %2378, i8* %97, align 1
  %2379 = lshr i32 %2361, 31
  %2380 = xor i32 %2377, %2379
  %2381 = add nuw nsw i32 %2380, %2379
  %2382 = icmp eq i32 %2381, 2
  %2383 = zext i1 %2382 to i8
  store i8 %2383, i8* %103, align 1
  %2384 = add i64 %395, 841
  store i64 %2384, i64* %3, align 8
  %2385 = load i64, i64* %2347, align 8
  store i64 %2385, i64* %RCX.i2541, align 8
  %2386 = add i64 %2385, 16
  %2387 = add i64 %395, 845
  store i64 %2387, i64* %3, align 8
  %2388 = inttoptr i64 %2386 to i32*
  %2389 = load i32, i32* %2388, align 4
  %2390 = sext i32 %2362 to i64
  %2391 = sext i32 %2389 to i64
  %2392 = mul nsw i64 %2391, %2390
  %2393 = trunc i64 %2392 to i32
  %2394 = and i64 %2392, 4294967295
  store i64 %2394, i64* %RSI.i2547, align 8
  %2395 = shl i64 %2392, 32
  %2396 = ashr exact i64 %2395, 32
  %2397 = icmp ne i64 %2396, %2392
  %2398 = zext i1 %2397 to i8
  store i8 %2398, i8* %80, align 1
  %2399 = and i32 %2393, 255
  %2400 = tail call i32 @llvm.ctpop.i32(i32 %2399)
  %2401 = trunc i32 %2400 to i8
  %2402 = and i8 %2401, 1
  %2403 = xor i8 %2402, 1
  store i8 %2403, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  %2404 = lshr i32 %2393, 31
  %2405 = trunc i32 %2404 to i8
  store i8 %2405, i8* %97, align 1
  store i8 %2398, i8* %103, align 1
  %2406 = load i64, i64* %RBP.i, align 8
  %2407 = add i64 %2406, -40
  %2408 = add i64 %395, 849
  store i64 %2408, i64* %3, align 8
  %2409 = inttoptr i64 %2407 to i64*
  %2410 = load i64, i64* %2409, align 8
  store i64 %2410, i64* %RCX.i2541, align 8
  %2411 = add i64 %2410, 20
  %2412 = add i64 %395, 853
  store i64 %2412, i64* %3, align 8
  %2413 = inttoptr i64 %2411 to i32*
  %2414 = load i32, i32* %2413, align 4
  %2415 = shl i64 %2392, 32
  %2416 = ashr exact i64 %2415, 32
  %2417 = sext i32 %2414 to i64
  %2418 = mul nsw i64 %2417, %2416
  %2419 = and i64 %2418, 4294967295
  store i64 %2419, i64* %RSI.i2547, align 8
  %2420 = load i64, i64* %RDX.i2544, align 8
  %2421 = trunc i64 %2418 to i32
  %2422 = trunc i64 %2420 to i32
  %2423 = add i32 %2421, %2422
  %2424 = zext i32 %2423 to i64
  store i64 %2424, i64* %RDX.i2544, align 8
  %2425 = icmp ult i32 %2423, %2422
  %2426 = icmp ult i32 %2423, %2421
  %2427 = or i1 %2425, %2426
  %2428 = zext i1 %2427 to i8
  store i8 %2428, i8* %80, align 1
  %2429 = and i32 %2423, 255
  %2430 = tail call i32 @llvm.ctpop.i32(i32 %2429)
  %2431 = trunc i32 %2430 to i8
  %2432 = and i8 %2431, 1
  %2433 = xor i8 %2432, 1
  store i8 %2433, i8* %86, align 1
  %2434 = xor i64 %2418, %2420
  %2435 = trunc i64 %2434 to i32
  %2436 = xor i32 %2435, %2423
  %2437 = lshr i32 %2436, 4
  %2438 = trunc i32 %2437 to i8
  %2439 = and i8 %2438, 1
  store i8 %2439, i8* %91, align 1
  %2440 = icmp eq i32 %2423, 0
  %2441 = zext i1 %2440 to i8
  store i8 %2441, i8* %94, align 1
  %2442 = lshr i32 %2423, 31
  %2443 = trunc i32 %2442 to i8
  store i8 %2443, i8* %97, align 1
  %2444 = lshr i32 %2422, 31
  %2445 = lshr i32 %2421, 31
  %2446 = xor i32 %2442, %2444
  %2447 = xor i32 %2442, %2445
  %2448 = add nuw nsw i32 %2446, %2447
  %2449 = icmp eq i32 %2448, 2
  %2450 = zext i1 %2449 to i8
  store i8 %2450, i8* %103, align 1
  %2451 = add i64 %2406, -72
  %2452 = add i64 %395, 858
  store i64 %2452, i64* %3, align 8
  %2453 = inttoptr i64 %2451 to i32*
  %2454 = load i32, i32* %2453, align 4
  %2455 = add i32 %2454, -1
  %2456 = zext i32 %2455 to i64
  store i64 %2456, i64* %RSI.i2547, align 8
  %2457 = icmp eq i32 %2454, 0
  %2458 = zext i1 %2457 to i8
  store i8 %2458, i8* %80, align 1
  %2459 = and i32 %2455, 255
  %2460 = tail call i32 @llvm.ctpop.i32(i32 %2459)
  %2461 = trunc i32 %2460 to i8
  %2462 = and i8 %2461, 1
  %2463 = xor i8 %2462, 1
  store i8 %2463, i8* %86, align 1
  %2464 = xor i32 %2455, %2454
  %2465 = lshr i32 %2464, 4
  %2466 = trunc i32 %2465 to i8
  %2467 = and i8 %2466, 1
  store i8 %2467, i8* %91, align 1
  %2468 = icmp eq i32 %2455, 0
  %2469 = zext i1 %2468 to i8
  store i8 %2469, i8* %94, align 1
  %2470 = lshr i32 %2455, 31
  %2471 = trunc i32 %2470 to i8
  store i8 %2471, i8* %97, align 1
  %2472 = lshr i32 %2454, 31
  %2473 = xor i32 %2470, %2472
  %2474 = add nuw nsw i32 %2473, %2472
  %2475 = icmp eq i32 %2474, 2
  %2476 = zext i1 %2475 to i8
  store i8 %2476, i8* %103, align 1
  %2477 = load i64, i64* %RBP.i, align 8
  %2478 = add i64 %2477, -40
  %2479 = add i64 %395, 865
  store i64 %2479, i64* %3, align 8
  %2480 = inttoptr i64 %2478 to i64*
  %2481 = load i64, i64* %2480, align 8
  store i64 %2481, i64* %RCX.i2541, align 8
  %2482 = add i64 %2481, 20
  %2483 = add i64 %395, 869
  store i64 %2483, i64* %3, align 8
  %2484 = inttoptr i64 %2482 to i32*
  %2485 = load i32, i32* %2484, align 4
  %2486 = sext i32 %2455 to i64
  %2487 = sext i32 %2485 to i64
  %2488 = mul nsw i64 %2487, %2486
  %2489 = and i64 %2488, 4294967295
  store i64 %2489, i64* %RSI.i2547, align 8
  %2490 = load i64, i64* %RDX.i2544, align 8
  %2491 = trunc i64 %2488 to i32
  %2492 = trunc i64 %2490 to i32
  %2493 = add i32 %2491, %2492
  %2494 = zext i32 %2493 to i64
  store i64 %2494, i64* %RDX.i2544, align 8
  %2495 = icmp ult i32 %2493, %2492
  %2496 = icmp ult i32 %2493, %2491
  %2497 = or i1 %2495, %2496
  %2498 = zext i1 %2497 to i8
  store i8 %2498, i8* %80, align 1
  %2499 = and i32 %2493, 255
  %2500 = tail call i32 @llvm.ctpop.i32(i32 %2499)
  %2501 = trunc i32 %2500 to i8
  %2502 = and i8 %2501, 1
  %2503 = xor i8 %2502, 1
  store i8 %2503, i8* %86, align 1
  %2504 = xor i64 %2488, %2490
  %2505 = trunc i64 %2504 to i32
  %2506 = xor i32 %2505, %2493
  %2507 = lshr i32 %2506, 4
  %2508 = trunc i32 %2507 to i8
  %2509 = and i8 %2508, 1
  store i8 %2509, i8* %91, align 1
  %2510 = icmp eq i32 %2493, 0
  %2511 = zext i1 %2510 to i8
  store i8 %2511, i8* %94, align 1
  %2512 = lshr i32 %2493, 31
  %2513 = trunc i32 %2512 to i8
  store i8 %2513, i8* %97, align 1
  %2514 = lshr i32 %2492, 31
  %2515 = lshr i32 %2491, 31
  %2516 = xor i32 %2512, %2514
  %2517 = xor i32 %2512, %2515
  %2518 = add nuw nsw i32 %2516, %2517
  %2519 = icmp eq i32 %2518, 2
  %2520 = zext i1 %2519 to i8
  store i8 %2520, i8* %103, align 1
  %2521 = add i64 %2477, -76
  %2522 = add i64 %395, 874
  store i64 %2522, i64* %3, align 8
  %2523 = inttoptr i64 %2521 to i32*
  %2524 = load i32, i32* %2523, align 4
  %2525 = add i32 %2524, %2493
  %2526 = zext i32 %2525 to i64
  store i64 %2526, i64* %RDX.i2544, align 8
  %2527 = icmp ult i32 %2525, %2493
  %2528 = icmp ult i32 %2525, %2524
  %2529 = or i1 %2527, %2528
  %2530 = zext i1 %2529 to i8
  store i8 %2530, i8* %80, align 1
  %2531 = and i32 %2525, 255
  %2532 = tail call i32 @llvm.ctpop.i32(i32 %2531)
  %2533 = trunc i32 %2532 to i8
  %2534 = and i8 %2533, 1
  %2535 = xor i8 %2534, 1
  store i8 %2535, i8* %86, align 1
  %2536 = xor i32 %2524, %2493
  %2537 = xor i32 %2536, %2525
  %2538 = lshr i32 %2537, 4
  %2539 = trunc i32 %2538 to i8
  %2540 = and i8 %2539, 1
  store i8 %2540, i8* %91, align 1
  %2541 = icmp eq i32 %2525, 0
  %2542 = zext i1 %2541 to i8
  store i8 %2542, i8* %94, align 1
  %2543 = lshr i32 %2525, 31
  %2544 = trunc i32 %2543 to i8
  store i8 %2544, i8* %97, align 1
  %2545 = lshr i32 %2524, 31
  %2546 = xor i32 %2543, %2512
  %2547 = xor i32 %2543, %2545
  %2548 = add nuw nsw i32 %2546, %2547
  %2549 = icmp eq i32 %2548, 2
  %2550 = zext i1 %2549 to i8
  store i8 %2550, i8* %103, align 1
  %2551 = sext i32 %2525 to i64
  store i64 %2551, i64* %RCX.i2541, align 8
  %2552 = load i64, i64* %RAX.i2556, align 8
  %2553 = shl nsw i64 %2551, 2
  %2554 = add i64 %2552, %2553
  %2555 = add i64 %395, 882
  store i64 %2555, i64* %3, align 8
  %2556 = load <2 x float>, <2 x float>* %222, align 1
  %2557 = load <2 x i32>, <2 x i32>* %223, align 1
  %2558 = inttoptr i64 %2554 to float*
  %2559 = load float, float* %2558, align 4
  %2560 = extractelement <2 x float> %2556, i32 0
  %2561 = fadd float %2560, %2559
  store float %2561, float* %214, align 1
  %2562 = bitcast <2 x float> %2556 to <2 x i32>
  %2563 = extractelement <2 x i32> %2562, i32 1
  store i32 %2563, i32* %224, align 1
  %2564 = extractelement <2 x i32> %2557, i32 0
  store i32 %2564, i32* %225, align 1
  %2565 = extractelement <2 x i32> %2557, i32 1
  store i32 %2565, i32* %226, align 1
  %2566 = load <2 x float>, <2 x float>* %207, align 1
  %2567 = load <2 x i32>, <2 x i32>* %208, align 1
  %2568 = load <2 x float>, <2 x float>* %222, align 1
  %2569 = extractelement <2 x float> %2566, i32 0
  %2570 = extractelement <2 x float> %2568, i32 0
  %2571 = fmul float %2569, %2570
  store float %2571, float* %199, align 1
  %2572 = bitcast <2 x float> %2566 to <2 x i32>
  %2573 = extractelement <2 x i32> %2572, i32 1
  store i32 %2573, i32* %209, align 1
  %2574 = extractelement <2 x i32> %2567, i32 0
  store i32 %2574, i32* %210, align 1
  %2575 = extractelement <2 x i32> %2567, i32 1
  store i32 %2575, i32* %211, align 1
  %2576 = load <2 x float>, <2 x float>* %191, align 1
  %2577 = load <2 x i32>, <2 x i32>* %196, align 1
  %2578 = load <2 x float>, <2 x float>* %207, align 1
  %2579 = extractelement <2 x float> %2576, i32 0
  %2580 = extractelement <2 x float> %2578, i32 0
  %2581 = fadd float %2579, %2580
  store float %2581, float* %192, align 1
  %2582 = bitcast <2 x float> %2576 to <2 x i32>
  %2583 = extractelement <2 x i32> %2582, i32 1
  store i32 %2583, i32* %187, align 1
  %2584 = extractelement <2 x i32> %2577, i32 0
  store i32 %2584, i32* %188, align 1
  %2585 = extractelement <2 x i32> %2577, i32 1
  store i32 %2585, i32* %190, align 1
  %2586 = load i64, i64* %RBP.i, align 8
  %2587 = add i64 %2586, -24
  %2588 = add i64 %395, 894
  store i64 %2588, i64* %3, align 8
  %2589 = inttoptr i64 %2587 to i64*
  %2590 = load i64, i64* %2589, align 8
  store i64 %2590, i64* %RAX.i2556, align 8
  %2591 = add i64 %395, 897
  store i64 %2591, i64* %3, align 8
  %2592 = inttoptr i64 %2590 to i64*
  %2593 = load i64, i64* %2592, align 8
  store i64 %2593, i64* %RAX.i2556, align 8
  %2594 = add i64 %395, 901
  store i64 %2594, i64* %3, align 8
  %2595 = load i64, i64* %2589, align 8
  store i64 %2595, i64* %RCX.i2541, align 8
  %2596 = add i64 %2595, 12
  %2597 = add i64 %395, 904
  store i64 %2597, i64* %3, align 8
  %2598 = inttoptr i64 %2596 to i32*
  %2599 = load i32, i32* %2598, align 4
  %2600 = zext i32 %2599 to i64
  store i64 %2600, i64* %RDX.i2544, align 8
  %2601 = add i64 %395, 911
  store i64 %2601, i64* %3, align 8
  %2602 = load i64, i64* %2589, align 8
  store i64 %2602, i64* %RCX.i2541, align 8
  %2603 = add i64 %2602, 16
  %2604 = add i64 %395, 915
  store i64 %2604, i64* %3, align 8
  %2605 = inttoptr i64 %2603 to i32*
  %2606 = load i32, i32* %2605, align 4
  %2607 = sext i32 %2599 to i64
  %2608 = sext i32 %2606 to i64
  %2609 = mul nsw i64 %2608, %2607
  %2610 = trunc i64 %2609 to i32
  %2611 = and i64 %2609, 4294967295
  store i64 %2611, i64* %RDX.i2544, align 8
  %2612 = shl i64 %2609, 32
  %2613 = ashr exact i64 %2612, 32
  %2614 = icmp ne i64 %2613, %2609
  %2615 = zext i1 %2614 to i8
  store i8 %2615, i8* %80, align 1
  %2616 = and i32 %2610, 255
  %2617 = tail call i32 @llvm.ctpop.i32(i32 %2616)
  %2618 = trunc i32 %2617 to i8
  %2619 = and i8 %2618, 1
  %2620 = xor i8 %2619, 1
  store i8 %2620, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  %2621 = lshr i32 %2610, 31
  %2622 = trunc i32 %2621 to i8
  store i8 %2622, i8* %97, align 1
  store i8 %2615, i8* %103, align 1
  %2623 = add i64 %395, 919
  store i64 %2623, i64* %3, align 8
  %2624 = load i64, i64* %2589, align 8
  store i64 %2624, i64* %RCX.i2541, align 8
  %2625 = add i64 %2624, 20
  %2626 = add i64 %395, 923
  store i64 %2626, i64* %3, align 8
  %2627 = inttoptr i64 %2625 to i32*
  %2628 = load i32, i32* %2627, align 4
  %2629 = shl i64 %2609, 32
  %2630 = ashr exact i64 %2629, 32
  %2631 = sext i32 %2628 to i64
  %2632 = mul nsw i64 %2631, %2630
  %2633 = trunc i64 %2632 to i32
  %2634 = and i64 %2632, 4294967295
  store i64 %2634, i64* %RDX.i2544, align 8
  %2635 = shl i64 %2632, 32
  %2636 = ashr exact i64 %2635, 32
  %2637 = icmp ne i64 %2636, %2632
  %2638 = zext i1 %2637 to i8
  store i8 %2638, i8* %80, align 1
  %2639 = and i32 %2633, 255
  %2640 = tail call i32 @llvm.ctpop.i32(i32 %2639)
  %2641 = trunc i32 %2640 to i8
  %2642 = and i8 %2641, 1
  %2643 = xor i8 %2642, 1
  store i8 %2643, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  %2644 = lshr i32 %2633, 31
  %2645 = trunc i32 %2644 to i8
  store i8 %2645, i8* %97, align 1
  store i8 %2638, i8* %103, align 1
  %2646 = add i64 %2586, -68
  %2647 = add i64 %395, 926
  store i64 %2647, i64* %3, align 8
  %2648 = inttoptr i64 %2646 to i32*
  %2649 = load i32, i32* %2648, align 4
  %2650 = zext i32 %2649 to i64
  store i64 %2650, i64* %RSI.i2547, align 8
  %2651 = add i64 %395, 930
  store i64 %2651, i64* %3, align 8
  %2652 = load i64, i64* %2589, align 8
  store i64 %2652, i64* %RCX.i2541, align 8
  %2653 = add i64 %2652, 16
  %2654 = add i64 %395, 934
  store i64 %2654, i64* %3, align 8
  %2655 = inttoptr i64 %2653 to i32*
  %2656 = load i32, i32* %2655, align 4
  %2657 = sext i32 %2649 to i64
  %2658 = sext i32 %2656 to i64
  %2659 = mul nsw i64 %2658, %2657
  %2660 = trunc i64 %2659 to i32
  %2661 = and i64 %2659, 4294967295
  store i64 %2661, i64* %RSI.i2547, align 8
  %2662 = shl i64 %2659, 32
  %2663 = ashr exact i64 %2662, 32
  %2664 = icmp ne i64 %2663, %2659
  %2665 = zext i1 %2664 to i8
  store i8 %2665, i8* %80, align 1
  %2666 = and i32 %2660, 255
  %2667 = tail call i32 @llvm.ctpop.i32(i32 %2666)
  %2668 = trunc i32 %2667 to i8
  %2669 = and i8 %2668, 1
  %2670 = xor i8 %2669, 1
  store i8 %2670, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  %2671 = lshr i32 %2660, 31
  %2672 = trunc i32 %2671 to i8
  store i8 %2672, i8* %97, align 1
  store i8 %2665, i8* %103, align 1
  %2673 = load i64, i64* %RBP.i, align 8
  %2674 = add i64 %2673, -24
  %2675 = add i64 %395, 938
  store i64 %2675, i64* %3, align 8
  %2676 = inttoptr i64 %2674 to i64*
  %2677 = load i64, i64* %2676, align 8
  store i64 %2677, i64* %RCX.i2541, align 8
  %2678 = add i64 %2677, 20
  %2679 = add i64 %395, 942
  store i64 %2679, i64* %3, align 8
  %2680 = inttoptr i64 %2678 to i32*
  %2681 = load i32, i32* %2680, align 4
  %2682 = shl i64 %2659, 32
  %2683 = ashr exact i64 %2682, 32
  %2684 = sext i32 %2681 to i64
  %2685 = mul nsw i64 %2684, %2683
  %2686 = and i64 %2685, 4294967295
  store i64 %2686, i64* %RSI.i2547, align 8
  %2687 = trunc i64 %2685 to i32
  %2688 = trunc i64 %2632 to i32
  %2689 = add i32 %2687, %2688
  %2690 = zext i32 %2689 to i64
  store i64 %2690, i64* %RDX.i2544, align 8
  %2691 = icmp ult i32 %2689, %2688
  %2692 = icmp ult i32 %2689, %2687
  %2693 = or i1 %2691, %2692
  %2694 = zext i1 %2693 to i8
  store i8 %2694, i8* %80, align 1
  %2695 = and i32 %2689, 255
  %2696 = tail call i32 @llvm.ctpop.i32(i32 %2695)
  %2697 = trunc i32 %2696 to i8
  %2698 = and i8 %2697, 1
  %2699 = xor i8 %2698, 1
  store i8 %2699, i8* %86, align 1
  %2700 = xor i64 %2685, %2632
  %2701 = trunc i64 %2700 to i32
  %2702 = xor i32 %2701, %2689
  %2703 = lshr i32 %2702, 4
  %2704 = trunc i32 %2703 to i8
  %2705 = and i8 %2704, 1
  store i8 %2705, i8* %91, align 1
  %2706 = icmp eq i32 %2689, 0
  %2707 = zext i1 %2706 to i8
  store i8 %2707, i8* %94, align 1
  %2708 = lshr i32 %2689, 31
  %2709 = trunc i32 %2708 to i8
  store i8 %2709, i8* %97, align 1
  %2710 = lshr i32 %2688, 31
  %2711 = lshr i32 %2687, 31
  %2712 = xor i32 %2708, %2710
  %2713 = xor i32 %2708, %2711
  %2714 = add nuw nsw i32 %2712, %2713
  %2715 = icmp eq i32 %2714, 2
  %2716 = zext i1 %2715 to i8
  store i8 %2716, i8* %103, align 1
  %2717 = add i64 %2673, -72
  %2718 = add i64 %395, 947
  store i64 %2718, i64* %3, align 8
  %2719 = inttoptr i64 %2717 to i32*
  %2720 = load i32, i32* %2719, align 4
  %2721 = zext i32 %2720 to i64
  store i64 %2721, i64* %RSI.i2547, align 8
  %2722 = add i64 %395, 951
  store i64 %2722, i64* %3, align 8
  %2723 = load i64, i64* %2676, align 8
  store i64 %2723, i64* %RCX.i2541, align 8
  %2724 = add i64 %2723, 20
  %2725 = add i64 %395, 955
  store i64 %2725, i64* %3, align 8
  %2726 = inttoptr i64 %2724 to i32*
  %2727 = load i32, i32* %2726, align 4
  %2728 = sext i32 %2720 to i64
  %2729 = sext i32 %2727 to i64
  %2730 = mul nsw i64 %2729, %2728
  %2731 = and i64 %2730, 4294967295
  store i64 %2731, i64* %RSI.i2547, align 8
  %2732 = trunc i64 %2730 to i32
  %2733 = add i32 %2732, %2689
  %2734 = zext i32 %2733 to i64
  store i64 %2734, i64* %RDX.i2544, align 8
  %2735 = icmp ult i32 %2733, %2689
  %2736 = icmp ult i32 %2733, %2732
  %2737 = or i1 %2735, %2736
  %2738 = zext i1 %2737 to i8
  store i8 %2738, i8* %80, align 1
  %2739 = and i32 %2733, 255
  %2740 = tail call i32 @llvm.ctpop.i32(i32 %2739)
  %2741 = trunc i32 %2740 to i8
  %2742 = and i8 %2741, 1
  %2743 = xor i8 %2742, 1
  store i8 %2743, i8* %86, align 1
  %2744 = xor i64 %2730, %2690
  %2745 = trunc i64 %2744 to i32
  %2746 = xor i32 %2745, %2733
  %2747 = lshr i32 %2746, 4
  %2748 = trunc i32 %2747 to i8
  %2749 = and i8 %2748, 1
  store i8 %2749, i8* %91, align 1
  %2750 = icmp eq i32 %2733, 0
  %2751 = zext i1 %2750 to i8
  store i8 %2751, i8* %94, align 1
  %2752 = lshr i32 %2733, 31
  %2753 = trunc i32 %2752 to i8
  store i8 %2753, i8* %97, align 1
  %2754 = lshr i32 %2732, 31
  %2755 = xor i32 %2752, %2708
  %2756 = xor i32 %2752, %2754
  %2757 = add nuw nsw i32 %2755, %2756
  %2758 = icmp eq i32 %2757, 2
  %2759 = zext i1 %2758 to i8
  store i8 %2759, i8* %103, align 1
  %2760 = load i64, i64* %RBP.i, align 8
  %2761 = add i64 %2760, -76
  %2762 = add i64 %395, 960
  store i64 %2762, i64* %3, align 8
  %2763 = inttoptr i64 %2761 to i32*
  %2764 = load i32, i32* %2763, align 4
  %2765 = add i32 %2764, %2733
  %2766 = zext i32 %2765 to i64
  store i64 %2766, i64* %RDX.i2544, align 8
  %2767 = icmp ult i32 %2765, %2733
  %2768 = icmp ult i32 %2765, %2764
  %2769 = or i1 %2767, %2768
  %2770 = zext i1 %2769 to i8
  store i8 %2770, i8* %80, align 1
  %2771 = and i32 %2765, 255
  %2772 = tail call i32 @llvm.ctpop.i32(i32 %2771)
  %2773 = trunc i32 %2772 to i8
  %2774 = and i8 %2773, 1
  %2775 = xor i8 %2774, 1
  store i8 %2775, i8* %86, align 1
  %2776 = xor i32 %2764, %2733
  %2777 = xor i32 %2776, %2765
  %2778 = lshr i32 %2777, 4
  %2779 = trunc i32 %2778 to i8
  %2780 = and i8 %2779, 1
  store i8 %2780, i8* %91, align 1
  %2781 = icmp eq i32 %2765, 0
  %2782 = zext i1 %2781 to i8
  store i8 %2782, i8* %94, align 1
  %2783 = lshr i32 %2765, 31
  %2784 = trunc i32 %2783 to i8
  store i8 %2784, i8* %97, align 1
  %2785 = lshr i32 %2764, 31
  %2786 = xor i32 %2783, %2752
  %2787 = xor i32 %2783, %2785
  %2788 = add nuw nsw i32 %2786, %2787
  %2789 = icmp eq i32 %2788, 2
  %2790 = zext i1 %2789 to i8
  store i8 %2790, i8* %103, align 1
  %2791 = sext i32 %2765 to i64
  store i64 %2791, i64* %RCX.i2541, align 8
  %2792 = load i64, i64* %RAX.i2556, align 8
  %2793 = shl nsw i64 %2791, 2
  %2794 = add i64 %2792, %2793
  %2795 = add i64 %395, 968
  store i64 %2795, i64* %3, align 8
  %2796 = inttoptr i64 %2794 to i32*
  %2797 = load i32, i32* %2796, align 4
  store i32 %2797, i32* %200, align 1
  store float 0.000000e+00, float* %202, align 1
  store float 0.000000e+00, float* %204, align 1
  store float 0.000000e+00, float* %206, align 1
  %2798 = add i64 %2760, -40
  %2799 = add i64 %395, 972
  store i64 %2799, i64* %3, align 8
  %2800 = inttoptr i64 %2798 to i64*
  %2801 = load i64, i64* %2800, align 8
  store i64 %2801, i64* %RAX.i2556, align 8
  %2802 = add i64 %395, 975
  store i64 %2802, i64* %3, align 8
  %2803 = inttoptr i64 %2801 to i64*
  %2804 = load i64, i64* %2803, align 8
  store i64 %2804, i64* %RAX.i2556, align 8
  %2805 = add i64 %395, 979
  store i64 %2805, i64* %3, align 8
  %2806 = load i64, i64* %2800, align 8
  store i64 %2806, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %80, align 1
  store i8 1, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  store i8 0, i8* %97, align 1
  store i8 0, i8* %103, align 1
  %2807 = add i64 %395, 987
  store i64 %2807, i64* %3, align 8
  %2808 = load i64, i64* %2800, align 8
  store i64 %2808, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %80, align 1
  store i8 1, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  store i8 0, i8* %97, align 1
  store i8 0, i8* %103, align 1
  %2809 = add i64 %395, 995
  store i64 %2809, i64* %3, align 8
  %2810 = load i64, i64* %2800, align 8
  store i64 %2810, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %80, align 1
  store i8 1, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  store i8 0, i8* %97, align 1
  store i8 0, i8* %103, align 1
  %2811 = load i64, i64* %RBP.i, align 8
  %2812 = add i64 %2811, -68
  %2813 = add i64 %395, 1002
  store i64 %2813, i64* %3, align 8
  %2814 = inttoptr i64 %2812 to i32*
  %2815 = load i32, i32* %2814, align 4
  %2816 = zext i32 %2815 to i64
  store i64 %2816, i64* %RSI.i2547, align 8
  %2817 = add i64 %2811, -40
  %2818 = add i64 %395, 1006
  store i64 %2818, i64* %3, align 8
  %2819 = inttoptr i64 %2817 to i64*
  %2820 = load i64, i64* %2819, align 8
  store i64 %2820, i64* %RCX.i2541, align 8
  %2821 = add i64 %2820, 16
  %2822 = add i64 %395, 1010
  store i64 %2822, i64* %3, align 8
  %2823 = inttoptr i64 %2821 to i32*
  %2824 = load i32, i32* %2823, align 4
  %2825 = sext i32 %2815 to i64
  %2826 = sext i32 %2824 to i64
  %2827 = mul nsw i64 %2826, %2825
  %2828 = trunc i64 %2827 to i32
  %2829 = and i64 %2827, 4294967295
  store i64 %2829, i64* %RSI.i2547, align 8
  %2830 = shl i64 %2827, 32
  %2831 = ashr exact i64 %2830, 32
  %2832 = icmp ne i64 %2831, %2827
  %2833 = zext i1 %2832 to i8
  store i8 %2833, i8* %80, align 1
  %2834 = and i32 %2828, 255
  %2835 = tail call i32 @llvm.ctpop.i32(i32 %2834)
  %2836 = trunc i32 %2835 to i8
  %2837 = and i8 %2836, 1
  %2838 = xor i8 %2837, 1
  store i8 %2838, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  %2839 = lshr i32 %2828, 31
  %2840 = trunc i32 %2839 to i8
  store i8 %2840, i8* %97, align 1
  store i8 %2833, i8* %103, align 1
  %2841 = add i64 %395, 1014
  store i64 %2841, i64* %3, align 8
  %2842 = load i64, i64* %2819, align 8
  store i64 %2842, i64* %RCX.i2541, align 8
  %2843 = add i64 %2842, 20
  %2844 = add i64 %395, 1018
  store i64 %2844, i64* %3, align 8
  %2845 = inttoptr i64 %2843 to i32*
  %2846 = load i32, i32* %2845, align 4
  %2847 = shl i64 %2827, 32
  %2848 = ashr exact i64 %2847, 32
  %2849 = sext i32 %2846 to i64
  %2850 = mul nsw i64 %2849, %2848
  %2851 = and i64 %2850, 4294967295
  store i64 %2851, i64* %RSI.i2547, align 8
  %2852 = trunc i64 %2850 to i32
  %2853 = and i64 %2850, 4294967295
  store i64 %2853, i64* %RDX.i2544, align 8
  store i8 0, i8* %80, align 1
  %2854 = and i32 %2852, 255
  %2855 = tail call i32 @llvm.ctpop.i32(i32 %2854)
  %2856 = trunc i32 %2855 to i8
  %2857 = and i8 %2856, 1
  %2858 = xor i8 %2857, 1
  store i8 %2858, i8* %86, align 1
  store i8 0, i8* %91, align 1
  %2859 = icmp eq i32 %2852, 0
  %2860 = zext i1 %2859 to i8
  store i8 %2860, i8* %94, align 1
  %2861 = lshr i32 %2852, 31
  %2862 = trunc i32 %2861 to i8
  store i8 %2862, i8* %97, align 1
  store i8 0, i8* %103, align 1
  %2863 = add i64 %2811, -72
  %2864 = add i64 %395, 1023
  store i64 %2864, i64* %3, align 8
  %2865 = inttoptr i64 %2863 to i32*
  %2866 = load i32, i32* %2865, align 4
  %2867 = add i32 %2866, 1
  %2868 = zext i32 %2867 to i64
  store i64 %2868, i64* %RSI.i2547, align 8
  %2869 = icmp eq i32 %2866, -1
  %2870 = icmp eq i32 %2867, 0
  %2871 = or i1 %2869, %2870
  %2872 = zext i1 %2871 to i8
  store i8 %2872, i8* %80, align 1
  %2873 = and i32 %2867, 255
  %2874 = tail call i32 @llvm.ctpop.i32(i32 %2873)
  %2875 = trunc i32 %2874 to i8
  %2876 = and i8 %2875, 1
  %2877 = xor i8 %2876, 1
  store i8 %2877, i8* %86, align 1
  %2878 = xor i32 %2867, %2866
  %2879 = lshr i32 %2878, 4
  %2880 = trunc i32 %2879 to i8
  %2881 = and i8 %2880, 1
  store i8 %2881, i8* %91, align 1
  %2882 = zext i1 %2870 to i8
  store i8 %2882, i8* %94, align 1
  %2883 = lshr i32 %2867, 31
  %2884 = trunc i32 %2883 to i8
  store i8 %2884, i8* %97, align 1
  %2885 = lshr i32 %2866, 31
  %2886 = xor i32 %2883, %2885
  %2887 = add nuw nsw i32 %2886, %2883
  %2888 = icmp eq i32 %2887, 2
  %2889 = zext i1 %2888 to i8
  store i8 %2889, i8* %103, align 1
  %2890 = load i64, i64* %RBP.i, align 8
  %2891 = add i64 %2890, -40
  %2892 = add i64 %395, 1030
  store i64 %2892, i64* %3, align 8
  %2893 = inttoptr i64 %2891 to i64*
  %2894 = load i64, i64* %2893, align 8
  store i64 %2894, i64* %RCX.i2541, align 8
  %2895 = add i64 %2894, 20
  %2896 = add i64 %395, 1034
  store i64 %2896, i64* %3, align 8
  %2897 = inttoptr i64 %2895 to i32*
  %2898 = load i32, i32* %2897, align 4
  %2899 = sext i32 %2867 to i64
  %2900 = sext i32 %2898 to i64
  %2901 = mul nsw i64 %2900, %2899
  %2902 = and i64 %2901, 4294967295
  store i64 %2902, i64* %RSI.i2547, align 8
  %2903 = trunc i64 %2901 to i32
  %2904 = add i32 %2903, %2852
  %2905 = zext i32 %2904 to i64
  store i64 %2905, i64* %RDX.i2544, align 8
  %2906 = icmp ult i32 %2904, %2852
  %2907 = icmp ult i32 %2904, %2903
  %2908 = or i1 %2906, %2907
  %2909 = zext i1 %2908 to i8
  store i8 %2909, i8* %80, align 1
  %2910 = and i32 %2904, 255
  %2911 = tail call i32 @llvm.ctpop.i32(i32 %2910)
  %2912 = trunc i32 %2911 to i8
  %2913 = and i8 %2912, 1
  %2914 = xor i8 %2913, 1
  store i8 %2914, i8* %86, align 1
  %2915 = xor i64 %2901, %2850
  %2916 = trunc i64 %2915 to i32
  %2917 = xor i32 %2916, %2904
  %2918 = lshr i32 %2917, 4
  %2919 = trunc i32 %2918 to i8
  %2920 = and i8 %2919, 1
  store i8 %2920, i8* %91, align 1
  %2921 = icmp eq i32 %2904, 0
  %2922 = zext i1 %2921 to i8
  store i8 %2922, i8* %94, align 1
  %2923 = lshr i32 %2904, 31
  %2924 = trunc i32 %2923 to i8
  store i8 %2924, i8* %97, align 1
  %2925 = lshr i32 %2903, 31
  %2926 = xor i32 %2923, %2861
  %2927 = xor i32 %2923, %2925
  %2928 = add nuw nsw i32 %2926, %2927
  %2929 = icmp eq i32 %2928, 2
  %2930 = zext i1 %2929 to i8
  store i8 %2930, i8* %103, align 1
  %2931 = add i64 %2890, -76
  %2932 = add i64 %395, 1039
  store i64 %2932, i64* %3, align 8
  %2933 = inttoptr i64 %2931 to i32*
  %2934 = load i32, i32* %2933, align 4
  %2935 = add i32 %2934, 1
  %2936 = zext i32 %2935 to i64
  store i64 %2936, i64* %RSI.i2547, align 8
  %2937 = lshr i32 %2935, 31
  %2938 = add i32 %2935, %2904
  %2939 = zext i32 %2938 to i64
  store i64 %2939, i64* %RDX.i2544, align 8
  %2940 = icmp ult i32 %2938, %2904
  %2941 = icmp ult i32 %2938, %2935
  %2942 = or i1 %2940, %2941
  %2943 = zext i1 %2942 to i8
  store i8 %2943, i8* %80, align 1
  %2944 = and i32 %2938, 255
  %2945 = tail call i32 @llvm.ctpop.i32(i32 %2944)
  %2946 = trunc i32 %2945 to i8
  %2947 = and i8 %2946, 1
  %2948 = xor i8 %2947, 1
  store i8 %2948, i8* %86, align 1
  %2949 = xor i32 %2935, %2904
  %2950 = xor i32 %2949, %2938
  %2951 = lshr i32 %2950, 4
  %2952 = trunc i32 %2951 to i8
  %2953 = and i8 %2952, 1
  store i8 %2953, i8* %91, align 1
  %2954 = icmp eq i32 %2938, 0
  %2955 = zext i1 %2954 to i8
  store i8 %2955, i8* %94, align 1
  %2956 = lshr i32 %2938, 31
  %2957 = trunc i32 %2956 to i8
  store i8 %2957, i8* %97, align 1
  %2958 = xor i32 %2956, %2923
  %2959 = xor i32 %2956, %2937
  %2960 = add nuw nsw i32 %2958, %2959
  %2961 = icmp eq i32 %2960, 2
  %2962 = zext i1 %2961 to i8
  store i8 %2962, i8* %103, align 1
  %2963 = sext i32 %2938 to i64
  store i64 %2963, i64* %RCX.i2541, align 8
  %2964 = load i64, i64* %RAX.i2556, align 8
  %2965 = shl nsw i64 %2963, 2
  %2966 = add i64 %2964, %2965
  %2967 = add i64 %395, 1052
  store i64 %2967, i64* %3, align 8
  %2968 = inttoptr i64 %2966 to i32*
  %2969 = load i32, i32* %2968, align 4
  store i32 %2969, i32* %215, align 1
  store float 0.000000e+00, float* %217, align 1
  store float 0.000000e+00, float* %219, align 1
  store float 0.000000e+00, float* %221, align 1
  %2970 = load i64, i64* %RBP.i, align 8
  %2971 = add i64 %2970, -40
  %2972 = add i64 %395, 1056
  store i64 %2972, i64* %3, align 8
  %2973 = inttoptr i64 %2971 to i64*
  %2974 = load i64, i64* %2973, align 8
  store i64 %2974, i64* %RAX.i2556, align 8
  %2975 = add i64 %395, 1059
  store i64 %2975, i64* %3, align 8
  %2976 = inttoptr i64 %2974 to i64*
  %2977 = load i64, i64* %2976, align 8
  store i64 %2977, i64* %RAX.i2556, align 8
  %2978 = add i64 %395, 1063
  store i64 %2978, i64* %3, align 8
  %2979 = load i64, i64* %2973, align 8
  store i64 %2979, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %80, align 1
  store i8 1, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  store i8 0, i8* %97, align 1
  store i8 0, i8* %103, align 1
  %2980 = add i64 %395, 1071
  store i64 %2980, i64* %3, align 8
  %2981 = load i64, i64* %2973, align 8
  store i64 %2981, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %80, align 1
  store i8 1, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  store i8 0, i8* %97, align 1
  store i8 0, i8* %103, align 1
  %2982 = add i64 %395, 1079
  store i64 %2982, i64* %3, align 8
  %2983 = load i64, i64* %2973, align 8
  store i64 %2983, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %80, align 1
  store i8 1, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  store i8 0, i8* %97, align 1
  store i8 0, i8* %103, align 1
  %2984 = add i64 %2970, -68
  %2985 = add i64 %395, 1086
  store i64 %2985, i64* %3, align 8
  %2986 = inttoptr i64 %2984 to i32*
  %2987 = load i32, i32* %2986, align 4
  %2988 = zext i32 %2987 to i64
  store i64 %2988, i64* %RSI.i2547, align 8
  %2989 = add i64 %395, 1090
  store i64 %2989, i64* %3, align 8
  %2990 = load i64, i64* %2973, align 8
  store i64 %2990, i64* %RCX.i2541, align 8
  %2991 = add i64 %2990, 16
  %2992 = add i64 %395, 1094
  store i64 %2992, i64* %3, align 8
  %2993 = inttoptr i64 %2991 to i32*
  %2994 = load i32, i32* %2993, align 4
  %2995 = sext i32 %2987 to i64
  %2996 = sext i32 %2994 to i64
  %2997 = mul nsw i64 %2996, %2995
  %2998 = trunc i64 %2997 to i32
  %2999 = and i64 %2997, 4294967295
  store i64 %2999, i64* %RSI.i2547, align 8
  %3000 = shl i64 %2997, 32
  %3001 = ashr exact i64 %3000, 32
  %3002 = icmp ne i64 %3001, %2997
  %3003 = zext i1 %3002 to i8
  store i8 %3003, i8* %80, align 1
  %3004 = and i32 %2998, 255
  %3005 = tail call i32 @llvm.ctpop.i32(i32 %3004)
  %3006 = trunc i32 %3005 to i8
  %3007 = and i8 %3006, 1
  %3008 = xor i8 %3007, 1
  store i8 %3008, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  %3009 = lshr i32 %2998, 31
  %3010 = trunc i32 %3009 to i8
  store i8 %3010, i8* %97, align 1
  store i8 %3003, i8* %103, align 1
  %3011 = add i64 %395, 1098
  store i64 %3011, i64* %3, align 8
  %3012 = load i64, i64* %2973, align 8
  store i64 %3012, i64* %RCX.i2541, align 8
  %3013 = add i64 %3012, 20
  %3014 = add i64 %395, 1102
  store i64 %3014, i64* %3, align 8
  %3015 = inttoptr i64 %3013 to i32*
  %3016 = load i32, i32* %3015, align 4
  %3017 = shl i64 %2997, 32
  %3018 = ashr exact i64 %3017, 32
  %3019 = sext i32 %3016 to i64
  %3020 = mul nsw i64 %3019, %3018
  %3021 = and i64 %3020, 4294967295
  store i64 %3021, i64* %RSI.i2547, align 8
  %3022 = trunc i64 %3020 to i32
  %3023 = and i64 %3020, 4294967295
  store i64 %3023, i64* %RDX.i2544, align 8
  store i8 0, i8* %80, align 1
  %3024 = and i32 %3022, 255
  %3025 = tail call i32 @llvm.ctpop.i32(i32 %3024)
  %3026 = trunc i32 %3025 to i8
  %3027 = and i8 %3026, 1
  %3028 = xor i8 %3027, 1
  store i8 %3028, i8* %86, align 1
  store i8 0, i8* %91, align 1
  %3029 = icmp eq i32 %3022, 0
  %3030 = zext i1 %3029 to i8
  store i8 %3030, i8* %94, align 1
  %3031 = lshr i32 %3022, 31
  %3032 = trunc i32 %3031 to i8
  store i8 %3032, i8* %97, align 1
  store i8 0, i8* %103, align 1
  %3033 = load i64, i64* %RBP.i, align 8
  %3034 = add i64 %3033, -72
  %3035 = add i64 %395, 1107
  store i64 %3035, i64* %3, align 8
  %3036 = inttoptr i64 %3034 to i32*
  %3037 = load i32, i32* %3036, align 4
  %3038 = add i32 %3037, -1
  %3039 = zext i32 %3038 to i64
  store i64 %3039, i64* %RSI.i2547, align 8
  %3040 = icmp eq i32 %3037, 0
  %3041 = zext i1 %3040 to i8
  store i8 %3041, i8* %80, align 1
  %3042 = and i32 %3038, 255
  %3043 = tail call i32 @llvm.ctpop.i32(i32 %3042)
  %3044 = trunc i32 %3043 to i8
  %3045 = and i8 %3044, 1
  %3046 = xor i8 %3045, 1
  store i8 %3046, i8* %86, align 1
  %3047 = xor i32 %3038, %3037
  %3048 = lshr i32 %3047, 4
  %3049 = trunc i32 %3048 to i8
  %3050 = and i8 %3049, 1
  store i8 %3050, i8* %91, align 1
  %3051 = icmp eq i32 %3038, 0
  %3052 = zext i1 %3051 to i8
  store i8 %3052, i8* %94, align 1
  %3053 = lshr i32 %3038, 31
  %3054 = trunc i32 %3053 to i8
  store i8 %3054, i8* %97, align 1
  %3055 = lshr i32 %3037, 31
  %3056 = xor i32 %3053, %3055
  %3057 = add nuw nsw i32 %3056, %3055
  %3058 = icmp eq i32 %3057, 2
  %3059 = zext i1 %3058 to i8
  store i8 %3059, i8* %103, align 1
  %3060 = add i64 %3033, -40
  %3061 = add i64 %395, 1114
  store i64 %3061, i64* %3, align 8
  %3062 = inttoptr i64 %3060 to i64*
  %3063 = load i64, i64* %3062, align 8
  store i64 %3063, i64* %RCX.i2541, align 8
  %3064 = add i64 %3063, 20
  %3065 = add i64 %395, 1118
  store i64 %3065, i64* %3, align 8
  %3066 = inttoptr i64 %3064 to i32*
  %3067 = load i32, i32* %3066, align 4
  %3068 = sext i32 %3038 to i64
  %3069 = sext i32 %3067 to i64
  %3070 = mul nsw i64 %3069, %3068
  %3071 = and i64 %3070, 4294967295
  store i64 %3071, i64* %RSI.i2547, align 8
  %3072 = trunc i64 %3070 to i32
  %3073 = add i32 %3072, %3022
  %3074 = zext i32 %3073 to i64
  store i64 %3074, i64* %RDX.i2544, align 8
  %3075 = icmp ult i32 %3073, %3022
  %3076 = icmp ult i32 %3073, %3072
  %3077 = or i1 %3075, %3076
  %3078 = zext i1 %3077 to i8
  store i8 %3078, i8* %80, align 1
  %3079 = and i32 %3073, 255
  %3080 = tail call i32 @llvm.ctpop.i32(i32 %3079)
  %3081 = trunc i32 %3080 to i8
  %3082 = and i8 %3081, 1
  %3083 = xor i8 %3082, 1
  store i8 %3083, i8* %86, align 1
  %3084 = xor i64 %3070, %3020
  %3085 = trunc i64 %3084 to i32
  %3086 = xor i32 %3085, %3073
  %3087 = lshr i32 %3086, 4
  %3088 = trunc i32 %3087 to i8
  %3089 = and i8 %3088, 1
  store i8 %3089, i8* %91, align 1
  %3090 = icmp eq i32 %3073, 0
  %3091 = zext i1 %3090 to i8
  store i8 %3091, i8* %94, align 1
  %3092 = lshr i32 %3073, 31
  %3093 = trunc i32 %3092 to i8
  store i8 %3093, i8* %97, align 1
  %3094 = lshr i32 %3072, 31
  %3095 = xor i32 %3092, %3031
  %3096 = xor i32 %3092, %3094
  %3097 = add nuw nsw i32 %3095, %3096
  %3098 = icmp eq i32 %3097, 2
  %3099 = zext i1 %3098 to i8
  store i8 %3099, i8* %103, align 1
  %3100 = load i64, i64* %RBP.i, align 8
  %3101 = add i64 %3100, -76
  %3102 = add i64 %395, 1123
  store i64 %3102, i64* %3, align 8
  %3103 = inttoptr i64 %3101 to i32*
  %3104 = load i32, i32* %3103, align 4
  %3105 = add i32 %3104, 1
  %3106 = zext i32 %3105 to i64
  store i64 %3106, i64* %RSI.i2547, align 8
  %3107 = lshr i32 %3105, 31
  %3108 = add i32 %3105, %3073
  %3109 = zext i32 %3108 to i64
  store i64 %3109, i64* %RDX.i2544, align 8
  %3110 = icmp ult i32 %3108, %3073
  %3111 = icmp ult i32 %3108, %3105
  %3112 = or i1 %3110, %3111
  %3113 = zext i1 %3112 to i8
  store i8 %3113, i8* %80, align 1
  %3114 = and i32 %3108, 255
  %3115 = tail call i32 @llvm.ctpop.i32(i32 %3114)
  %3116 = trunc i32 %3115 to i8
  %3117 = and i8 %3116, 1
  %3118 = xor i8 %3117, 1
  store i8 %3118, i8* %86, align 1
  %3119 = xor i32 %3105, %3073
  %3120 = xor i32 %3119, %3108
  %3121 = lshr i32 %3120, 4
  %3122 = trunc i32 %3121 to i8
  %3123 = and i8 %3122, 1
  store i8 %3123, i8* %91, align 1
  %3124 = icmp eq i32 %3108, 0
  %3125 = zext i1 %3124 to i8
  store i8 %3125, i8* %94, align 1
  %3126 = lshr i32 %3108, 31
  %3127 = trunc i32 %3126 to i8
  store i8 %3127, i8* %97, align 1
  %3128 = xor i32 %3126, %3092
  %3129 = xor i32 %3126, %3107
  %3130 = add nuw nsw i32 %3128, %3129
  %3131 = icmp eq i32 %3130, 2
  %3132 = zext i1 %3131 to i8
  store i8 %3132, i8* %103, align 1
  %3133 = sext i32 %3108 to i64
  store i64 %3133, i64* %RCX.i2541, align 8
  %3134 = load i64, i64* %RAX.i2556, align 8
  %3135 = shl nsw i64 %3133, 2
  %3136 = add i64 %3134, %3135
  %3137 = add i64 %395, 1136
  store i64 %3137, i64* %3, align 8
  %3138 = load <2 x float>, <2 x float>* %222, align 1
  %3139 = load <2 x i32>, <2 x i32>* %223, align 1
  %3140 = inttoptr i64 %3136 to float*
  %3141 = load float, float* %3140, align 4
  %3142 = extractelement <2 x float> %3138, i32 0
  %3143 = fsub float %3142, %3141
  store float %3143, float* %214, align 1
  %3144 = bitcast <2 x float> %3138 to <2 x i32>
  %3145 = extractelement <2 x i32> %3144, i32 1
  store i32 %3145, i32* %224, align 1
  %3146 = extractelement <2 x i32> %3139, i32 0
  store i32 %3146, i32* %225, align 1
  %3147 = extractelement <2 x i32> %3139, i32 1
  store i32 %3147, i32* %226, align 1
  %3148 = load i64, i64* %RBP.i, align 8
  %3149 = add i64 %3148, -40
  %3150 = add i64 %395, 1140
  store i64 %3150, i64* %3, align 8
  %3151 = inttoptr i64 %3149 to i64*
  %3152 = load i64, i64* %3151, align 8
  store i64 %3152, i64* %RAX.i2556, align 8
  %3153 = add i64 %395, 1143
  store i64 %3153, i64* %3, align 8
  %3154 = inttoptr i64 %3152 to i64*
  %3155 = load i64, i64* %3154, align 8
  store i64 %3155, i64* %RAX.i2556, align 8
  %3156 = add i64 %395, 1147
  store i64 %3156, i64* %3, align 8
  %3157 = load i64, i64* %3151, align 8
  store i64 %3157, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %80, align 1
  store i8 1, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  store i8 0, i8* %97, align 1
  store i8 0, i8* %103, align 1
  %3158 = add i64 %395, 1155
  store i64 %3158, i64* %3, align 8
  %3159 = load i64, i64* %3151, align 8
  store i64 %3159, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %80, align 1
  store i8 1, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  store i8 0, i8* %97, align 1
  store i8 0, i8* %103, align 1
  %3160 = add i64 %395, 1163
  store i64 %3160, i64* %3, align 8
  %3161 = load i64, i64* %3151, align 8
  store i64 %3161, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %80, align 1
  store i8 1, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  store i8 0, i8* %97, align 1
  store i8 0, i8* %103, align 1
  %3162 = add i64 %3148, -68
  %3163 = add i64 %395, 1170
  store i64 %3163, i64* %3, align 8
  %3164 = inttoptr i64 %3162 to i32*
  %3165 = load i32, i32* %3164, align 4
  %3166 = zext i32 %3165 to i64
  store i64 %3166, i64* %RSI.i2547, align 8
  %3167 = add i64 %395, 1174
  store i64 %3167, i64* %3, align 8
  %3168 = load i64, i64* %3151, align 8
  store i64 %3168, i64* %RCX.i2541, align 8
  %3169 = add i64 %3168, 16
  %3170 = add i64 %395, 1178
  store i64 %3170, i64* %3, align 8
  %3171 = inttoptr i64 %3169 to i32*
  %3172 = load i32, i32* %3171, align 4
  %3173 = sext i32 %3165 to i64
  %3174 = sext i32 %3172 to i64
  %3175 = mul nsw i64 %3174, %3173
  %3176 = trunc i64 %3175 to i32
  %3177 = and i64 %3175, 4294967295
  store i64 %3177, i64* %RSI.i2547, align 8
  %3178 = shl i64 %3175, 32
  %3179 = ashr exact i64 %3178, 32
  %3180 = icmp ne i64 %3179, %3175
  %3181 = zext i1 %3180 to i8
  store i8 %3181, i8* %80, align 1
  %3182 = and i32 %3176, 255
  %3183 = tail call i32 @llvm.ctpop.i32(i32 %3182)
  %3184 = trunc i32 %3183 to i8
  %3185 = and i8 %3184, 1
  %3186 = xor i8 %3185, 1
  store i8 %3186, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  %3187 = lshr i32 %3176, 31
  %3188 = trunc i32 %3187 to i8
  store i8 %3188, i8* %97, align 1
  store i8 %3181, i8* %103, align 1
  %3189 = add i64 %395, 1182
  store i64 %3189, i64* %3, align 8
  %3190 = load i64, i64* %3151, align 8
  store i64 %3190, i64* %RCX.i2541, align 8
  %3191 = add i64 %3190, 20
  %3192 = add i64 %395, 1186
  store i64 %3192, i64* %3, align 8
  %3193 = inttoptr i64 %3191 to i32*
  %3194 = load i32, i32* %3193, align 4
  %3195 = shl i64 %3175, 32
  %3196 = ashr exact i64 %3195, 32
  %3197 = sext i32 %3194 to i64
  %3198 = mul nsw i64 %3197, %3196
  %3199 = and i64 %3198, 4294967295
  store i64 %3199, i64* %RSI.i2547, align 8
  %3200 = trunc i64 %3198 to i32
  %3201 = and i64 %3198, 4294967295
  store i64 %3201, i64* %RDX.i2544, align 8
  store i8 0, i8* %80, align 1
  %3202 = and i32 %3200, 255
  %3203 = tail call i32 @llvm.ctpop.i32(i32 %3202)
  %3204 = trunc i32 %3203 to i8
  %3205 = and i8 %3204, 1
  %3206 = xor i8 %3205, 1
  store i8 %3206, i8* %86, align 1
  store i8 0, i8* %91, align 1
  %3207 = icmp eq i32 %3200, 0
  %3208 = zext i1 %3207 to i8
  store i8 %3208, i8* %94, align 1
  %3209 = lshr i32 %3200, 31
  %3210 = trunc i32 %3209 to i8
  store i8 %3210, i8* %97, align 1
  store i8 0, i8* %103, align 1
  %3211 = load i64, i64* %RBP.i, align 8
  %3212 = add i64 %3211, -72
  %3213 = add i64 %395, 1191
  store i64 %3213, i64* %3, align 8
  %3214 = inttoptr i64 %3212 to i32*
  %3215 = load i32, i32* %3214, align 4
  %3216 = add i32 %3215, 1
  %3217 = zext i32 %3216 to i64
  store i64 %3217, i64* %RSI.i2547, align 8
  %3218 = icmp eq i32 %3215, -1
  %3219 = icmp eq i32 %3216, 0
  %3220 = or i1 %3218, %3219
  %3221 = zext i1 %3220 to i8
  store i8 %3221, i8* %80, align 1
  %3222 = and i32 %3216, 255
  %3223 = tail call i32 @llvm.ctpop.i32(i32 %3222)
  %3224 = trunc i32 %3223 to i8
  %3225 = and i8 %3224, 1
  %3226 = xor i8 %3225, 1
  store i8 %3226, i8* %86, align 1
  %3227 = xor i32 %3216, %3215
  %3228 = lshr i32 %3227, 4
  %3229 = trunc i32 %3228 to i8
  %3230 = and i8 %3229, 1
  store i8 %3230, i8* %91, align 1
  %3231 = zext i1 %3219 to i8
  store i8 %3231, i8* %94, align 1
  %3232 = lshr i32 %3216, 31
  %3233 = trunc i32 %3232 to i8
  store i8 %3233, i8* %97, align 1
  %3234 = lshr i32 %3215, 31
  %3235 = xor i32 %3232, %3234
  %3236 = add nuw nsw i32 %3235, %3232
  %3237 = icmp eq i32 %3236, 2
  %3238 = zext i1 %3237 to i8
  store i8 %3238, i8* %103, align 1
  %3239 = add i64 %3211, -40
  %3240 = add i64 %395, 1198
  store i64 %3240, i64* %3, align 8
  %3241 = inttoptr i64 %3239 to i64*
  %3242 = load i64, i64* %3241, align 8
  store i64 %3242, i64* %RCX.i2541, align 8
  %3243 = add i64 %3242, 20
  %3244 = add i64 %395, 1202
  store i64 %3244, i64* %3, align 8
  %3245 = inttoptr i64 %3243 to i32*
  %3246 = load i32, i32* %3245, align 4
  %3247 = sext i32 %3216 to i64
  %3248 = sext i32 %3246 to i64
  %3249 = mul nsw i64 %3248, %3247
  %3250 = and i64 %3249, 4294967295
  store i64 %3250, i64* %RSI.i2547, align 8
  %3251 = trunc i64 %3249 to i32
  %3252 = add i32 %3251, %3200
  %3253 = zext i32 %3252 to i64
  store i64 %3253, i64* %RDX.i2544, align 8
  %3254 = icmp ult i32 %3252, %3200
  %3255 = icmp ult i32 %3252, %3251
  %3256 = or i1 %3254, %3255
  %3257 = zext i1 %3256 to i8
  store i8 %3257, i8* %80, align 1
  %3258 = and i32 %3252, 255
  %3259 = tail call i32 @llvm.ctpop.i32(i32 %3258)
  %3260 = trunc i32 %3259 to i8
  %3261 = and i8 %3260, 1
  %3262 = xor i8 %3261, 1
  store i8 %3262, i8* %86, align 1
  %3263 = xor i64 %3249, %3198
  %3264 = trunc i64 %3263 to i32
  %3265 = xor i32 %3264, %3252
  %3266 = lshr i32 %3265, 4
  %3267 = trunc i32 %3266 to i8
  %3268 = and i8 %3267, 1
  store i8 %3268, i8* %91, align 1
  %3269 = icmp eq i32 %3252, 0
  %3270 = zext i1 %3269 to i8
  store i8 %3270, i8* %94, align 1
  %3271 = lshr i32 %3252, 31
  %3272 = trunc i32 %3271 to i8
  store i8 %3272, i8* %97, align 1
  %3273 = lshr i32 %3251, 31
  %3274 = xor i32 %3271, %3209
  %3275 = xor i32 %3271, %3273
  %3276 = add nuw nsw i32 %3274, %3275
  %3277 = icmp eq i32 %3276, 2
  %3278 = zext i1 %3277 to i8
  store i8 %3278, i8* %103, align 1
  %3279 = load i64, i64* %RBP.i, align 8
  %3280 = add i64 %3279, -76
  %3281 = add i64 %395, 1207
  store i64 %3281, i64* %3, align 8
  %3282 = inttoptr i64 %3280 to i32*
  %3283 = load i32, i32* %3282, align 4
  %3284 = add i32 %3283, -1
  %3285 = zext i32 %3284 to i64
  store i64 %3285, i64* %RSI.i2547, align 8
  %3286 = lshr i32 %3284, 31
  %3287 = add i32 %3284, %3252
  %3288 = zext i32 %3287 to i64
  store i64 %3288, i64* %RDX.i2544, align 8
  %3289 = icmp ult i32 %3287, %3252
  %3290 = icmp ult i32 %3287, %3284
  %3291 = or i1 %3289, %3290
  %3292 = zext i1 %3291 to i8
  store i8 %3292, i8* %80, align 1
  %3293 = and i32 %3287, 255
  %3294 = tail call i32 @llvm.ctpop.i32(i32 %3293)
  %3295 = trunc i32 %3294 to i8
  %3296 = and i8 %3295, 1
  %3297 = xor i8 %3296, 1
  store i8 %3297, i8* %86, align 1
  %3298 = xor i32 %3284, %3252
  %3299 = xor i32 %3298, %3287
  %3300 = lshr i32 %3299, 4
  %3301 = trunc i32 %3300 to i8
  %3302 = and i8 %3301, 1
  store i8 %3302, i8* %91, align 1
  %3303 = icmp eq i32 %3287, 0
  %3304 = zext i1 %3303 to i8
  store i8 %3304, i8* %94, align 1
  %3305 = lshr i32 %3287, 31
  %3306 = trunc i32 %3305 to i8
  store i8 %3306, i8* %97, align 1
  %3307 = xor i32 %3305, %3271
  %3308 = xor i32 %3305, %3286
  %3309 = add nuw nsw i32 %3307, %3308
  %3310 = icmp eq i32 %3309, 2
  %3311 = zext i1 %3310 to i8
  store i8 %3311, i8* %103, align 1
  %3312 = sext i32 %3287 to i64
  store i64 %3312, i64* %RCX.i2541, align 8
  %3313 = load i64, i64* %RAX.i2556, align 8
  %3314 = shl nsw i64 %3312, 2
  %3315 = add i64 %3313, %3314
  %3316 = add i64 %395, 1220
  store i64 %3316, i64* %3, align 8
  %3317 = load <2 x float>, <2 x float>* %222, align 1
  %3318 = load <2 x i32>, <2 x i32>* %223, align 1
  %3319 = inttoptr i64 %3315 to float*
  %3320 = load float, float* %3319, align 4
  %3321 = extractelement <2 x float> %3317, i32 0
  %3322 = fsub float %3321, %3320
  store float %3322, float* %214, align 1
  %3323 = bitcast <2 x float> %3317 to <2 x i32>
  %3324 = extractelement <2 x i32> %3323, i32 1
  store i32 %3324, i32* %224, align 1
  %3325 = extractelement <2 x i32> %3318, i32 0
  store i32 %3325, i32* %225, align 1
  %3326 = extractelement <2 x i32> %3318, i32 1
  store i32 %3326, i32* %226, align 1
  %3327 = load i64, i64* %RBP.i, align 8
  %3328 = add i64 %3327, -40
  %3329 = add i64 %395, 1224
  store i64 %3329, i64* %3, align 8
  %3330 = inttoptr i64 %3328 to i64*
  %3331 = load i64, i64* %3330, align 8
  store i64 %3331, i64* %RAX.i2556, align 8
  %3332 = add i64 %395, 1227
  store i64 %3332, i64* %3, align 8
  %3333 = inttoptr i64 %3331 to i64*
  %3334 = load i64, i64* %3333, align 8
  store i64 %3334, i64* %RAX.i2556, align 8
  %3335 = add i64 %395, 1231
  store i64 %3335, i64* %3, align 8
  %3336 = load i64, i64* %3330, align 8
  store i64 %3336, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %80, align 1
  store i8 1, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  store i8 0, i8* %97, align 1
  store i8 0, i8* %103, align 1
  %3337 = add i64 %395, 1239
  store i64 %3337, i64* %3, align 8
  %3338 = load i64, i64* %3330, align 8
  store i64 %3338, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %80, align 1
  store i8 1, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  store i8 0, i8* %97, align 1
  store i8 0, i8* %103, align 1
  %3339 = add i64 %395, 1247
  store i64 %3339, i64* %3, align 8
  %3340 = load i64, i64* %3330, align 8
  store i64 %3340, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %80, align 1
  store i8 1, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  store i8 0, i8* %97, align 1
  store i8 0, i8* %103, align 1
  %3341 = add i64 %3327, -68
  %3342 = add i64 %395, 1254
  store i64 %3342, i64* %3, align 8
  %3343 = inttoptr i64 %3341 to i32*
  %3344 = load i32, i32* %3343, align 4
  %3345 = zext i32 %3344 to i64
  store i64 %3345, i64* %RSI.i2547, align 8
  %3346 = add i64 %395, 1258
  store i64 %3346, i64* %3, align 8
  %3347 = load i64, i64* %3330, align 8
  store i64 %3347, i64* %RCX.i2541, align 8
  %3348 = add i64 %3347, 16
  %3349 = add i64 %395, 1262
  store i64 %3349, i64* %3, align 8
  %3350 = inttoptr i64 %3348 to i32*
  %3351 = load i32, i32* %3350, align 4
  %3352 = sext i32 %3344 to i64
  %3353 = sext i32 %3351 to i64
  %3354 = mul nsw i64 %3353, %3352
  %3355 = trunc i64 %3354 to i32
  %3356 = and i64 %3354, 4294967295
  store i64 %3356, i64* %RSI.i2547, align 8
  %3357 = shl i64 %3354, 32
  %3358 = ashr exact i64 %3357, 32
  %3359 = icmp ne i64 %3358, %3354
  %3360 = zext i1 %3359 to i8
  store i8 %3360, i8* %80, align 1
  %3361 = and i32 %3355, 255
  %3362 = tail call i32 @llvm.ctpop.i32(i32 %3361)
  %3363 = trunc i32 %3362 to i8
  %3364 = and i8 %3363, 1
  %3365 = xor i8 %3364, 1
  store i8 %3365, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  %3366 = lshr i32 %3355, 31
  %3367 = trunc i32 %3366 to i8
  store i8 %3367, i8* %97, align 1
  store i8 %3360, i8* %103, align 1
  %3368 = add i64 %395, 1266
  store i64 %3368, i64* %3, align 8
  %3369 = load i64, i64* %3330, align 8
  store i64 %3369, i64* %RCX.i2541, align 8
  %3370 = add i64 %3369, 20
  %3371 = add i64 %395, 1270
  store i64 %3371, i64* %3, align 8
  %3372 = inttoptr i64 %3370 to i32*
  %3373 = load i32, i32* %3372, align 4
  %3374 = shl i64 %3354, 32
  %3375 = ashr exact i64 %3374, 32
  %3376 = sext i32 %3373 to i64
  %3377 = mul nsw i64 %3376, %3375
  %3378 = and i64 %3377, 4294967295
  store i64 %3378, i64* %RSI.i2547, align 8
  %3379 = trunc i64 %3377 to i32
  %3380 = and i64 %3377, 4294967295
  store i64 %3380, i64* %RDX.i2544, align 8
  store i8 0, i8* %80, align 1
  %3381 = and i32 %3379, 255
  %3382 = tail call i32 @llvm.ctpop.i32(i32 %3381)
  %3383 = trunc i32 %3382 to i8
  %3384 = and i8 %3383, 1
  %3385 = xor i8 %3384, 1
  store i8 %3385, i8* %86, align 1
  store i8 0, i8* %91, align 1
  %3386 = icmp eq i32 %3379, 0
  %3387 = zext i1 %3386 to i8
  store i8 %3387, i8* %94, align 1
  %3388 = lshr i32 %3379, 31
  %3389 = trunc i32 %3388 to i8
  store i8 %3389, i8* %97, align 1
  store i8 0, i8* %103, align 1
  %3390 = load i64, i64* %RBP.i, align 8
  %3391 = add i64 %3390, -72
  %3392 = add i64 %395, 1275
  store i64 %3392, i64* %3, align 8
  %3393 = inttoptr i64 %3391 to i32*
  %3394 = load i32, i32* %3393, align 4
  %3395 = add i32 %3394, -1
  %3396 = zext i32 %3395 to i64
  store i64 %3396, i64* %RSI.i2547, align 8
  %3397 = icmp eq i32 %3394, 0
  %3398 = zext i1 %3397 to i8
  store i8 %3398, i8* %80, align 1
  %3399 = and i32 %3395, 255
  %3400 = tail call i32 @llvm.ctpop.i32(i32 %3399)
  %3401 = trunc i32 %3400 to i8
  %3402 = and i8 %3401, 1
  %3403 = xor i8 %3402, 1
  store i8 %3403, i8* %86, align 1
  %3404 = xor i32 %3395, %3394
  %3405 = lshr i32 %3404, 4
  %3406 = trunc i32 %3405 to i8
  %3407 = and i8 %3406, 1
  store i8 %3407, i8* %91, align 1
  %3408 = icmp eq i32 %3395, 0
  %3409 = zext i1 %3408 to i8
  store i8 %3409, i8* %94, align 1
  %3410 = lshr i32 %3395, 31
  %3411 = trunc i32 %3410 to i8
  store i8 %3411, i8* %97, align 1
  %3412 = lshr i32 %3394, 31
  %3413 = xor i32 %3410, %3412
  %3414 = add nuw nsw i32 %3413, %3412
  %3415 = icmp eq i32 %3414, 2
  %3416 = zext i1 %3415 to i8
  store i8 %3416, i8* %103, align 1
  %3417 = add i64 %3390, -40
  %3418 = add i64 %395, 1282
  store i64 %3418, i64* %3, align 8
  %3419 = inttoptr i64 %3417 to i64*
  %3420 = load i64, i64* %3419, align 8
  store i64 %3420, i64* %RCX.i2541, align 8
  %3421 = add i64 %3420, 20
  %3422 = add i64 %395, 1286
  store i64 %3422, i64* %3, align 8
  %3423 = inttoptr i64 %3421 to i32*
  %3424 = load i32, i32* %3423, align 4
  %3425 = sext i32 %3395 to i64
  %3426 = sext i32 %3424 to i64
  %3427 = mul nsw i64 %3426, %3425
  %3428 = and i64 %3427, 4294967295
  store i64 %3428, i64* %RSI.i2547, align 8
  %3429 = trunc i64 %3427 to i32
  %3430 = add i32 %3429, %3379
  %3431 = zext i32 %3430 to i64
  store i64 %3431, i64* %RDX.i2544, align 8
  %3432 = icmp ult i32 %3430, %3379
  %3433 = icmp ult i32 %3430, %3429
  %3434 = or i1 %3432, %3433
  %3435 = zext i1 %3434 to i8
  store i8 %3435, i8* %80, align 1
  %3436 = and i32 %3430, 255
  %3437 = tail call i32 @llvm.ctpop.i32(i32 %3436)
  %3438 = trunc i32 %3437 to i8
  %3439 = and i8 %3438, 1
  %3440 = xor i8 %3439, 1
  store i8 %3440, i8* %86, align 1
  %3441 = xor i64 %3427, %3377
  %3442 = trunc i64 %3441 to i32
  %3443 = xor i32 %3442, %3430
  %3444 = lshr i32 %3443, 4
  %3445 = trunc i32 %3444 to i8
  %3446 = and i8 %3445, 1
  store i8 %3446, i8* %91, align 1
  %3447 = icmp eq i32 %3430, 0
  %3448 = zext i1 %3447 to i8
  store i8 %3448, i8* %94, align 1
  %3449 = lshr i32 %3430, 31
  %3450 = trunc i32 %3449 to i8
  store i8 %3450, i8* %97, align 1
  %3451 = lshr i32 %3429, 31
  %3452 = xor i32 %3449, %3388
  %3453 = xor i32 %3449, %3451
  %3454 = add nuw nsw i32 %3452, %3453
  %3455 = icmp eq i32 %3454, 2
  %3456 = zext i1 %3455 to i8
  store i8 %3456, i8* %103, align 1
  %3457 = load i64, i64* %RBP.i, align 8
  %3458 = add i64 %3457, -76
  %3459 = add i64 %395, 1291
  store i64 %3459, i64* %3, align 8
  %3460 = inttoptr i64 %3458 to i32*
  %3461 = load i32, i32* %3460, align 4
  %3462 = add i32 %3461, -1
  %3463 = zext i32 %3462 to i64
  store i64 %3463, i64* %RSI.i2547, align 8
  %3464 = lshr i32 %3462, 31
  %3465 = add i32 %3462, %3430
  %3466 = zext i32 %3465 to i64
  store i64 %3466, i64* %RDX.i2544, align 8
  %3467 = icmp ult i32 %3465, %3430
  %3468 = icmp ult i32 %3465, %3462
  %3469 = or i1 %3467, %3468
  %3470 = zext i1 %3469 to i8
  store i8 %3470, i8* %80, align 1
  %3471 = and i32 %3465, 255
  %3472 = tail call i32 @llvm.ctpop.i32(i32 %3471)
  %3473 = trunc i32 %3472 to i8
  %3474 = and i8 %3473, 1
  %3475 = xor i8 %3474, 1
  store i8 %3475, i8* %86, align 1
  %3476 = xor i32 %3462, %3430
  %3477 = xor i32 %3476, %3465
  %3478 = lshr i32 %3477, 4
  %3479 = trunc i32 %3478 to i8
  %3480 = and i8 %3479, 1
  store i8 %3480, i8* %91, align 1
  %3481 = icmp eq i32 %3465, 0
  %3482 = zext i1 %3481 to i8
  store i8 %3482, i8* %94, align 1
  %3483 = lshr i32 %3465, 31
  %3484 = trunc i32 %3483 to i8
  store i8 %3484, i8* %97, align 1
  %3485 = xor i32 %3483, %3449
  %3486 = xor i32 %3483, %3464
  %3487 = add nuw nsw i32 %3485, %3486
  %3488 = icmp eq i32 %3487, 2
  %3489 = zext i1 %3488 to i8
  store i8 %3489, i8* %103, align 1
  %3490 = sext i32 %3465 to i64
  store i64 %3490, i64* %RCX.i2541, align 8
  %3491 = load i64, i64* %RAX.i2556, align 8
  %3492 = shl nsw i64 %3490, 2
  %3493 = add i64 %3491, %3492
  %3494 = add i64 %395, 1304
  store i64 %3494, i64* %3, align 8
  %3495 = load <2 x float>, <2 x float>* %222, align 1
  %3496 = load <2 x i32>, <2 x i32>* %223, align 1
  %3497 = inttoptr i64 %3493 to float*
  %3498 = load float, float* %3497, align 4
  %3499 = extractelement <2 x float> %3495, i32 0
  %3500 = fadd float %3499, %3498
  store float %3500, float* %214, align 1
  %3501 = bitcast <2 x float> %3495 to <2 x i32>
  %3502 = extractelement <2 x i32> %3501, i32 1
  store i32 %3502, i32* %224, align 1
  %3503 = extractelement <2 x i32> %3496, i32 0
  store i32 %3503, i32* %225, align 1
  %3504 = extractelement <2 x i32> %3496, i32 1
  store i32 %3504, i32* %226, align 1
  %3505 = load <2 x float>, <2 x float>* %207, align 1
  %3506 = load <2 x i32>, <2 x i32>* %208, align 1
  %3507 = load <2 x float>, <2 x float>* %222, align 1
  %3508 = extractelement <2 x float> %3505, i32 0
  %3509 = extractelement <2 x float> %3507, i32 0
  %3510 = fmul float %3508, %3509
  store float %3510, float* %199, align 1
  %3511 = bitcast <2 x float> %3505 to <2 x i32>
  %3512 = extractelement <2 x i32> %3511, i32 1
  store i32 %3512, i32* %209, align 1
  %3513 = extractelement <2 x i32> %3506, i32 0
  store i32 %3513, i32* %210, align 1
  %3514 = extractelement <2 x i32> %3506, i32 1
  store i32 %3514, i32* %211, align 1
  %3515 = load <2 x float>, <2 x float>* %191, align 1
  %3516 = load <2 x i32>, <2 x i32>* %196, align 1
  %3517 = load <2 x float>, <2 x float>* %207, align 1
  %3518 = extractelement <2 x float> %3515, i32 0
  %3519 = extractelement <2 x float> %3517, i32 0
  %3520 = fadd float %3518, %3519
  store float %3520, float* %192, align 1
  %3521 = bitcast <2 x float> %3515 to <2 x i32>
  %3522 = extractelement <2 x i32> %3521, i32 1
  store i32 %3522, i32* %187, align 1
  %3523 = extractelement <2 x i32> %3516, i32 0
  store i32 %3523, i32* %188, align 1
  %3524 = extractelement <2 x i32> %3516, i32 1
  store i32 %3524, i32* %190, align 1
  %3525 = load i64, i64* %RBP.i, align 8
  %3526 = add i64 %3525, -24
  %3527 = add i64 %395, 1316
  store i64 %3527, i64* %3, align 8
  %3528 = inttoptr i64 %3526 to i64*
  %3529 = load i64, i64* %3528, align 8
  store i64 %3529, i64* %RAX.i2556, align 8
  %3530 = add i64 %395, 1319
  store i64 %3530, i64* %3, align 8
  %3531 = inttoptr i64 %3529 to i64*
  %3532 = load i64, i64* %3531, align 8
  store i64 %3532, i64* %RAX.i2556, align 8
  %3533 = add i64 %395, 1323
  store i64 %3533, i64* %3, align 8
  %3534 = load i64, i64* %3528, align 8
  store i64 %3534, i64* %RCX.i2541, align 8
  %3535 = add i64 %3534, 12
  %3536 = add i64 %395, 1326
  store i64 %3536, i64* %3, align 8
  %3537 = inttoptr i64 %3535 to i32*
  %3538 = load i32, i32* %3537, align 4
  %3539 = shl i32 %3538, 1
  %3540 = icmp slt i32 %3538, 0
  %3541 = icmp slt i32 %3539, 0
  %3542 = xor i1 %3540, %3541
  %3543 = zext i32 %3539 to i64
  store i64 %3543, i64* %RDX.i2544, align 8
  %.lobit7 = lshr i32 %3538, 31
  %3544 = trunc i32 %.lobit7 to i8
  store i8 %3544, i8* %80, align 1
  %3545 = and i32 %3539, 254
  %3546 = tail call i32 @llvm.ctpop.i32(i32 %3545)
  %3547 = trunc i32 %3546 to i8
  %3548 = and i8 %3547, 1
  %3549 = xor i8 %3548, 1
  store i8 %3549, i8* %86, align 1
  store i8 0, i8* %91, align 1
  %3550 = icmp eq i32 %3539, 0
  %3551 = zext i1 %3550 to i8
  store i8 %3551, i8* %94, align 1
  %3552 = lshr i32 %3538, 30
  %3553 = trunc i32 %3552 to i8
  %3554 = and i8 %3553, 1
  store i8 %3554, i8* %97, align 1
  %3555 = zext i1 %3542 to i8
  store i8 %3555, i8* %103, align 1
  %3556 = add i64 %395, 1332
  store i64 %3556, i64* %3, align 8
  %3557 = load i64, i64* %3528, align 8
  store i64 %3557, i64* %RCX.i2541, align 8
  %3558 = add i64 %3557, 16
  %3559 = add i64 %395, 1336
  store i64 %3559, i64* %3, align 8
  %3560 = inttoptr i64 %3558 to i32*
  %3561 = load i32, i32* %3560, align 4
  %3562 = sext i32 %3539 to i64
  %3563 = sext i32 %3561 to i64
  %3564 = mul nsw i64 %3563, %3562
  %3565 = trunc i64 %3564 to i32
  %3566 = and i64 %3564, 4294967294
  store i64 %3566, i64* %RDX.i2544, align 8
  %3567 = shl i64 %3564, 32
  %3568 = ashr exact i64 %3567, 32
  %3569 = icmp ne i64 %3568, %3564
  %3570 = zext i1 %3569 to i8
  store i8 %3570, i8* %80, align 1
  %3571 = and i32 %3565, 254
  %3572 = tail call i32 @llvm.ctpop.i32(i32 %3571)
  %3573 = trunc i32 %3572 to i8
  %3574 = and i8 %3573, 1
  %3575 = xor i8 %3574, 1
  store i8 %3575, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  %3576 = lshr i32 %3565, 31
  %3577 = trunc i32 %3576 to i8
  store i8 %3577, i8* %97, align 1
  store i8 %3570, i8* %103, align 1
  %3578 = add i64 %395, 1340
  store i64 %3578, i64* %3, align 8
  %3579 = load i64, i64* %3528, align 8
  store i64 %3579, i64* %RCX.i2541, align 8
  %3580 = add i64 %3579, 20
  %3581 = add i64 %395, 1344
  store i64 %3581, i64* %3, align 8
  %3582 = inttoptr i64 %3580 to i32*
  %3583 = load i32, i32* %3582, align 4
  %3584 = shl i64 %3564, 32
  %3585 = ashr exact i64 %3584, 32
  %3586 = sext i32 %3583 to i64
  %3587 = mul nsw i64 %3586, %3585
  %3588 = trunc i64 %3587 to i32
  %3589 = and i64 %3587, 4294967295
  store i64 %3589, i64* %RDX.i2544, align 8
  %3590 = shl i64 %3587, 32
  %3591 = ashr exact i64 %3590, 32
  %3592 = icmp ne i64 %3591, %3587
  %3593 = zext i1 %3592 to i8
  store i8 %3593, i8* %80, align 1
  %3594 = and i32 %3588, 255
  %3595 = tail call i32 @llvm.ctpop.i32(i32 %3594)
  %3596 = trunc i32 %3595 to i8
  %3597 = and i8 %3596, 1
  %3598 = xor i8 %3597, 1
  store i8 %3598, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  %3599 = lshr i32 %3588, 31
  %3600 = trunc i32 %3599 to i8
  store i8 %3600, i8* %97, align 1
  store i8 %3593, i8* %103, align 1
  %3601 = load i64, i64* %RBP.i, align 8
  %3602 = add i64 %3601, -68
  %3603 = add i64 %395, 1347
  store i64 %3603, i64* %3, align 8
  %3604 = inttoptr i64 %3602 to i32*
  %3605 = load i32, i32* %3604, align 4
  %3606 = zext i32 %3605 to i64
  store i64 %3606, i64* %RSI.i2547, align 8
  %3607 = add i64 %3601, -24
  %3608 = add i64 %395, 1351
  store i64 %3608, i64* %3, align 8
  %3609 = inttoptr i64 %3607 to i64*
  %3610 = load i64, i64* %3609, align 8
  store i64 %3610, i64* %RCX.i2541, align 8
  %3611 = add i64 %3610, 16
  %3612 = add i64 %395, 1355
  store i64 %3612, i64* %3, align 8
  %3613 = inttoptr i64 %3611 to i32*
  %3614 = load i32, i32* %3613, align 4
  %3615 = sext i32 %3605 to i64
  %3616 = sext i32 %3614 to i64
  %3617 = mul nsw i64 %3616, %3615
  %3618 = trunc i64 %3617 to i32
  %3619 = and i64 %3617, 4294967295
  store i64 %3619, i64* %RSI.i2547, align 8
  %3620 = shl i64 %3617, 32
  %3621 = ashr exact i64 %3620, 32
  %3622 = icmp ne i64 %3621, %3617
  %3623 = zext i1 %3622 to i8
  store i8 %3623, i8* %80, align 1
  %3624 = and i32 %3618, 255
  %3625 = tail call i32 @llvm.ctpop.i32(i32 %3624)
  %3626 = trunc i32 %3625 to i8
  %3627 = and i8 %3626, 1
  %3628 = xor i8 %3627, 1
  store i8 %3628, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  %3629 = lshr i32 %3618, 31
  %3630 = trunc i32 %3629 to i8
  store i8 %3630, i8* %97, align 1
  store i8 %3623, i8* %103, align 1
  %3631 = add i64 %395, 1359
  store i64 %3631, i64* %3, align 8
  %3632 = load i64, i64* %3609, align 8
  store i64 %3632, i64* %RCX.i2541, align 8
  %3633 = add i64 %3632, 20
  %3634 = add i64 %395, 1363
  store i64 %3634, i64* %3, align 8
  %3635 = inttoptr i64 %3633 to i32*
  %3636 = load i32, i32* %3635, align 4
  %3637 = shl i64 %3617, 32
  %3638 = ashr exact i64 %3637, 32
  %3639 = sext i32 %3636 to i64
  %3640 = mul nsw i64 %3639, %3638
  %3641 = and i64 %3640, 4294967295
  store i64 %3641, i64* %RSI.i2547, align 8
  %3642 = trunc i64 %3640 to i32
  %3643 = trunc i64 %3587 to i32
  %3644 = add i32 %3642, %3643
  %3645 = zext i32 %3644 to i64
  store i64 %3645, i64* %RDX.i2544, align 8
  %3646 = icmp ult i32 %3644, %3643
  %3647 = icmp ult i32 %3644, %3642
  %3648 = or i1 %3646, %3647
  %3649 = zext i1 %3648 to i8
  store i8 %3649, i8* %80, align 1
  %3650 = and i32 %3644, 255
  %3651 = tail call i32 @llvm.ctpop.i32(i32 %3650)
  %3652 = trunc i32 %3651 to i8
  %3653 = and i8 %3652, 1
  %3654 = xor i8 %3653, 1
  store i8 %3654, i8* %86, align 1
  %3655 = xor i64 %3640, %3587
  %3656 = trunc i64 %3655 to i32
  %3657 = xor i32 %3656, %3644
  %3658 = lshr i32 %3657, 4
  %3659 = trunc i32 %3658 to i8
  %3660 = and i8 %3659, 1
  store i8 %3660, i8* %91, align 1
  %3661 = icmp eq i32 %3644, 0
  %3662 = zext i1 %3661 to i8
  store i8 %3662, i8* %94, align 1
  %3663 = lshr i32 %3644, 31
  %3664 = trunc i32 %3663 to i8
  store i8 %3664, i8* %97, align 1
  %3665 = lshr i32 %3643, 31
  %3666 = lshr i32 %3642, 31
  %3667 = xor i32 %3663, %3665
  %3668 = xor i32 %3663, %3666
  %3669 = add nuw nsw i32 %3667, %3668
  %3670 = icmp eq i32 %3669, 2
  %3671 = zext i1 %3670 to i8
  store i8 %3671, i8* %103, align 1
  %3672 = load i64, i64* %RBP.i, align 8
  %3673 = add i64 %3672, -72
  %3674 = add i64 %395, 1368
  store i64 %3674, i64* %3, align 8
  %3675 = inttoptr i64 %3673 to i32*
  %3676 = load i32, i32* %3675, align 4
  %3677 = zext i32 %3676 to i64
  store i64 %3677, i64* %RSI.i2547, align 8
  %3678 = add i64 %3672, -24
  %3679 = add i64 %395, 1372
  store i64 %3679, i64* %3, align 8
  %3680 = inttoptr i64 %3678 to i64*
  %3681 = load i64, i64* %3680, align 8
  store i64 %3681, i64* %RCX.i2541, align 8
  %3682 = add i64 %3681, 20
  %3683 = add i64 %395, 1376
  store i64 %3683, i64* %3, align 8
  %3684 = inttoptr i64 %3682 to i32*
  %3685 = load i32, i32* %3684, align 4
  %3686 = sext i32 %3676 to i64
  %3687 = sext i32 %3685 to i64
  %3688 = mul nsw i64 %3687, %3686
  %3689 = and i64 %3688, 4294967295
  store i64 %3689, i64* %RSI.i2547, align 8
  %3690 = trunc i64 %3688 to i32
  %3691 = add i32 %3690, %3644
  %3692 = zext i32 %3691 to i64
  store i64 %3692, i64* %RDX.i2544, align 8
  %3693 = icmp ult i32 %3691, %3644
  %3694 = icmp ult i32 %3691, %3690
  %3695 = or i1 %3693, %3694
  %3696 = zext i1 %3695 to i8
  store i8 %3696, i8* %80, align 1
  %3697 = and i32 %3691, 255
  %3698 = tail call i32 @llvm.ctpop.i32(i32 %3697)
  %3699 = trunc i32 %3698 to i8
  %3700 = and i8 %3699, 1
  %3701 = xor i8 %3700, 1
  store i8 %3701, i8* %86, align 1
  %3702 = xor i64 %3688, %3645
  %3703 = trunc i64 %3702 to i32
  %3704 = xor i32 %3703, %3691
  %3705 = lshr i32 %3704, 4
  %3706 = trunc i32 %3705 to i8
  %3707 = and i8 %3706, 1
  store i8 %3707, i8* %91, align 1
  %3708 = icmp eq i32 %3691, 0
  %3709 = zext i1 %3708 to i8
  store i8 %3709, i8* %94, align 1
  %3710 = lshr i32 %3691, 31
  %3711 = trunc i32 %3710 to i8
  store i8 %3711, i8* %97, align 1
  %3712 = lshr i32 %3690, 31
  %3713 = xor i32 %3710, %3663
  %3714 = xor i32 %3710, %3712
  %3715 = add nuw nsw i32 %3713, %3714
  %3716 = icmp eq i32 %3715, 2
  %3717 = zext i1 %3716 to i8
  store i8 %3717, i8* %103, align 1
  %3718 = add i64 %3672, -76
  %3719 = add i64 %395, 1381
  store i64 %3719, i64* %3, align 8
  %3720 = inttoptr i64 %3718 to i32*
  %3721 = load i32, i32* %3720, align 4
  %3722 = add i32 %3721, %3691
  %3723 = zext i32 %3722 to i64
  store i64 %3723, i64* %RDX.i2544, align 8
  %3724 = icmp ult i32 %3722, %3691
  %3725 = icmp ult i32 %3722, %3721
  %3726 = or i1 %3724, %3725
  %3727 = zext i1 %3726 to i8
  store i8 %3727, i8* %80, align 1
  %3728 = and i32 %3722, 255
  %3729 = tail call i32 @llvm.ctpop.i32(i32 %3728)
  %3730 = trunc i32 %3729 to i8
  %3731 = and i8 %3730, 1
  %3732 = xor i8 %3731, 1
  store i8 %3732, i8* %86, align 1
  %3733 = xor i32 %3721, %3691
  %3734 = xor i32 %3733, %3722
  %3735 = lshr i32 %3734, 4
  %3736 = trunc i32 %3735 to i8
  %3737 = and i8 %3736, 1
  store i8 %3737, i8* %91, align 1
  %3738 = icmp eq i32 %3722, 0
  %3739 = zext i1 %3738 to i8
  store i8 %3739, i8* %94, align 1
  %3740 = lshr i32 %3722, 31
  %3741 = trunc i32 %3740 to i8
  store i8 %3741, i8* %97, align 1
  %3742 = lshr i32 %3721, 31
  %3743 = xor i32 %3740, %3710
  %3744 = xor i32 %3740, %3742
  %3745 = add nuw nsw i32 %3743, %3744
  %3746 = icmp eq i32 %3745, 2
  %3747 = zext i1 %3746 to i8
  store i8 %3747, i8* %103, align 1
  %3748 = sext i32 %3722 to i64
  store i64 %3748, i64* %RCX.i2541, align 8
  %3749 = load i64, i64* %RAX.i2556, align 8
  %3750 = shl nsw i64 %3748, 2
  %3751 = add i64 %3749, %3750
  %3752 = add i64 %395, 1389
  store i64 %3752, i64* %3, align 8
  %3753 = inttoptr i64 %3751 to i32*
  %3754 = load i32, i32* %3753, align 4
  store i32 %3754, i32* %200, align 1
  store float 0.000000e+00, float* %202, align 1
  store float 0.000000e+00, float* %204, align 1
  store float 0.000000e+00, float* %206, align 1
  %3755 = load i64, i64* %RBP.i, align 8
  %3756 = add i64 %3755, -40
  %3757 = add i64 %395, 1393
  store i64 %3757, i64* %3, align 8
  %3758 = inttoptr i64 %3756 to i64*
  %3759 = load i64, i64* %3758, align 8
  store i64 %3759, i64* %RAX.i2556, align 8
  %3760 = add i64 %395, 1396
  store i64 %3760, i64* %3, align 8
  %3761 = inttoptr i64 %3759 to i64*
  %3762 = load i64, i64* %3761, align 8
  store i64 %3762, i64* %RAX.i2556, align 8
  %3763 = add i64 %395, 1400
  store i64 %3763, i64* %3, align 8
  %3764 = load i64, i64* %3758, align 8
  store i64 %3764, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %80, align 1
  store i8 1, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  store i8 0, i8* %97, align 1
  store i8 0, i8* %103, align 1
  %3765 = add i64 %395, 1408
  store i64 %3765, i64* %3, align 8
  %3766 = load i64, i64* %3758, align 8
  store i64 %3766, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %80, align 1
  store i8 1, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  store i8 0, i8* %97, align 1
  store i8 0, i8* %103, align 1
  %3767 = add i64 %395, 1416
  store i64 %3767, i64* %3, align 8
  %3768 = load i64, i64* %3758, align 8
  store i64 %3768, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %80, align 1
  store i8 1, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  store i8 0, i8* %97, align 1
  store i8 0, i8* %103, align 1
  %3769 = add i64 %3755, -68
  %3770 = add i64 %395, 1423
  store i64 %3770, i64* %3, align 8
  %3771 = inttoptr i64 %3769 to i32*
  %3772 = load i32, i32* %3771, align 4
  %3773 = add i32 %3772, 1
  %3774 = zext i32 %3773 to i64
  store i64 %3774, i64* %RSI.i2547, align 8
  %3775 = icmp eq i32 %3772, -1
  %3776 = icmp eq i32 %3773, 0
  %3777 = or i1 %3775, %3776
  %3778 = zext i1 %3777 to i8
  store i8 %3778, i8* %80, align 1
  %3779 = and i32 %3773, 255
  %3780 = tail call i32 @llvm.ctpop.i32(i32 %3779)
  %3781 = trunc i32 %3780 to i8
  %3782 = and i8 %3781, 1
  %3783 = xor i8 %3782, 1
  store i8 %3783, i8* %86, align 1
  %3784 = xor i32 %3773, %3772
  %3785 = lshr i32 %3784, 4
  %3786 = trunc i32 %3785 to i8
  %3787 = and i8 %3786, 1
  store i8 %3787, i8* %91, align 1
  %3788 = zext i1 %3776 to i8
  store i8 %3788, i8* %94, align 1
  %3789 = lshr i32 %3773, 31
  %3790 = trunc i32 %3789 to i8
  store i8 %3790, i8* %97, align 1
  %3791 = lshr i32 %3772, 31
  %3792 = xor i32 %3789, %3791
  %3793 = add nuw nsw i32 %3792, %3789
  %3794 = icmp eq i32 %3793, 2
  %3795 = zext i1 %3794 to i8
  store i8 %3795, i8* %103, align 1
  %3796 = add i64 %395, 1430
  store i64 %3796, i64* %3, align 8
  %3797 = load i64, i64* %3758, align 8
  store i64 %3797, i64* %RCX.i2541, align 8
  %3798 = add i64 %3797, 16
  %3799 = add i64 %395, 1434
  store i64 %3799, i64* %3, align 8
  %3800 = inttoptr i64 %3798 to i32*
  %3801 = load i32, i32* %3800, align 4
  %3802 = sext i32 %3773 to i64
  %3803 = sext i32 %3801 to i64
  %3804 = mul nsw i64 %3803, %3802
  %3805 = trunc i64 %3804 to i32
  %3806 = and i64 %3804, 4294967295
  store i64 %3806, i64* %RSI.i2547, align 8
  %3807 = shl i64 %3804, 32
  %3808 = ashr exact i64 %3807, 32
  %3809 = icmp ne i64 %3808, %3804
  %3810 = zext i1 %3809 to i8
  store i8 %3810, i8* %80, align 1
  %3811 = and i32 %3805, 255
  %3812 = tail call i32 @llvm.ctpop.i32(i32 %3811)
  %3813 = trunc i32 %3812 to i8
  %3814 = and i8 %3813, 1
  %3815 = xor i8 %3814, 1
  store i8 %3815, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  %3816 = lshr i32 %3805, 31
  %3817 = trunc i32 %3816 to i8
  store i8 %3817, i8* %97, align 1
  store i8 %3810, i8* %103, align 1
  %3818 = load i64, i64* %RBP.i, align 8
  %3819 = add i64 %3818, -40
  %3820 = add i64 %395, 1438
  store i64 %3820, i64* %3, align 8
  %3821 = inttoptr i64 %3819 to i64*
  %3822 = load i64, i64* %3821, align 8
  store i64 %3822, i64* %RCX.i2541, align 8
  %3823 = add i64 %3822, 20
  %3824 = add i64 %395, 1442
  store i64 %3824, i64* %3, align 8
  %3825 = inttoptr i64 %3823 to i32*
  %3826 = load i32, i32* %3825, align 4
  %3827 = shl i64 %3804, 32
  %3828 = ashr exact i64 %3827, 32
  %3829 = sext i32 %3826 to i64
  %3830 = mul nsw i64 %3829, %3828
  %3831 = and i64 %3830, 4294967295
  store i64 %3831, i64* %RSI.i2547, align 8
  %3832 = load i64, i64* %RDX.i2544, align 8
  %3833 = trunc i64 %3830 to i32
  %3834 = trunc i64 %3832 to i32
  %3835 = add i32 %3833, %3834
  %3836 = zext i32 %3835 to i64
  store i64 %3836, i64* %RDX.i2544, align 8
  %3837 = icmp ult i32 %3835, %3834
  %3838 = icmp ult i32 %3835, %3833
  %3839 = or i1 %3837, %3838
  %3840 = zext i1 %3839 to i8
  store i8 %3840, i8* %80, align 1
  %3841 = and i32 %3835, 255
  %3842 = tail call i32 @llvm.ctpop.i32(i32 %3841)
  %3843 = trunc i32 %3842 to i8
  %3844 = and i8 %3843, 1
  %3845 = xor i8 %3844, 1
  store i8 %3845, i8* %86, align 1
  %3846 = xor i64 %3830, %3832
  %3847 = trunc i64 %3846 to i32
  %3848 = xor i32 %3847, %3835
  %3849 = lshr i32 %3848, 4
  %3850 = trunc i32 %3849 to i8
  %3851 = and i8 %3850, 1
  store i8 %3851, i8* %91, align 1
  %3852 = icmp eq i32 %3835, 0
  %3853 = zext i1 %3852 to i8
  store i8 %3853, i8* %94, align 1
  %3854 = lshr i32 %3835, 31
  %3855 = trunc i32 %3854 to i8
  store i8 %3855, i8* %97, align 1
  %3856 = lshr i32 %3834, 31
  %3857 = lshr i32 %3833, 31
  %3858 = xor i32 %3854, %3856
  %3859 = xor i32 %3854, %3857
  %3860 = add nuw nsw i32 %3858, %3859
  %3861 = icmp eq i32 %3860, 2
  %3862 = zext i1 %3861 to i8
  store i8 %3862, i8* %103, align 1
  %3863 = add i64 %3818, -72
  %3864 = add i64 %395, 1447
  store i64 %3864, i64* %3, align 8
  %3865 = inttoptr i64 %3863 to i32*
  %3866 = load i32, i32* %3865, align 4
  %3867 = zext i32 %3866 to i64
  store i64 %3867, i64* %RSI.i2547, align 8
  %3868 = add i64 %395, 1451
  store i64 %3868, i64* %3, align 8
  %3869 = load i64, i64* %3821, align 8
  store i64 %3869, i64* %RCX.i2541, align 8
  %3870 = add i64 %3869, 20
  %3871 = add i64 %395, 1455
  store i64 %3871, i64* %3, align 8
  %3872 = inttoptr i64 %3870 to i32*
  %3873 = load i32, i32* %3872, align 4
  %3874 = sext i32 %3866 to i64
  %3875 = sext i32 %3873 to i64
  %3876 = mul nsw i64 %3875, %3874
  %3877 = and i64 %3876, 4294967295
  store i64 %3877, i64* %RSI.i2547, align 8
  %3878 = trunc i64 %3876 to i32
  %3879 = add i32 %3878, %3835
  %3880 = zext i32 %3879 to i64
  store i64 %3880, i64* %RDX.i2544, align 8
  %3881 = icmp ult i32 %3879, %3835
  %3882 = icmp ult i32 %3879, %3878
  %3883 = or i1 %3881, %3882
  %3884 = zext i1 %3883 to i8
  store i8 %3884, i8* %80, align 1
  %3885 = and i32 %3879, 255
  %3886 = tail call i32 @llvm.ctpop.i32(i32 %3885)
  %3887 = trunc i32 %3886 to i8
  %3888 = and i8 %3887, 1
  %3889 = xor i8 %3888, 1
  store i8 %3889, i8* %86, align 1
  %3890 = xor i64 %3876, %3836
  %3891 = trunc i64 %3890 to i32
  %3892 = xor i32 %3891, %3879
  %3893 = lshr i32 %3892, 4
  %3894 = trunc i32 %3893 to i8
  %3895 = and i8 %3894, 1
  store i8 %3895, i8* %91, align 1
  %3896 = icmp eq i32 %3879, 0
  %3897 = zext i1 %3896 to i8
  store i8 %3897, i8* %94, align 1
  %3898 = lshr i32 %3879, 31
  %3899 = trunc i32 %3898 to i8
  store i8 %3899, i8* %97, align 1
  %3900 = lshr i32 %3878, 31
  %3901 = xor i32 %3898, %3854
  %3902 = xor i32 %3898, %3900
  %3903 = add nuw nsw i32 %3901, %3902
  %3904 = icmp eq i32 %3903, 2
  %3905 = zext i1 %3904 to i8
  store i8 %3905, i8* %103, align 1
  %3906 = load i64, i64* %RBP.i, align 8
  %3907 = add i64 %3906, -76
  %3908 = add i64 %395, 1460
  store i64 %3908, i64* %3, align 8
  %3909 = inttoptr i64 %3907 to i32*
  %3910 = load i32, i32* %3909, align 4
  %3911 = add i32 %3910, 1
  %3912 = zext i32 %3911 to i64
  store i64 %3912, i64* %RSI.i2547, align 8
  %3913 = lshr i32 %3911, 31
  %3914 = add i32 %3911, %3879
  %3915 = zext i32 %3914 to i64
  store i64 %3915, i64* %RDX.i2544, align 8
  %3916 = icmp ult i32 %3914, %3879
  %3917 = icmp ult i32 %3914, %3911
  %3918 = or i1 %3916, %3917
  %3919 = zext i1 %3918 to i8
  store i8 %3919, i8* %80, align 1
  %3920 = and i32 %3914, 255
  %3921 = tail call i32 @llvm.ctpop.i32(i32 %3920)
  %3922 = trunc i32 %3921 to i8
  %3923 = and i8 %3922, 1
  %3924 = xor i8 %3923, 1
  store i8 %3924, i8* %86, align 1
  %3925 = xor i32 %3911, %3879
  %3926 = xor i32 %3925, %3914
  %3927 = lshr i32 %3926, 4
  %3928 = trunc i32 %3927 to i8
  %3929 = and i8 %3928, 1
  store i8 %3929, i8* %91, align 1
  %3930 = icmp eq i32 %3914, 0
  %3931 = zext i1 %3930 to i8
  store i8 %3931, i8* %94, align 1
  %3932 = lshr i32 %3914, 31
  %3933 = trunc i32 %3932 to i8
  store i8 %3933, i8* %97, align 1
  %3934 = xor i32 %3932, %3898
  %3935 = xor i32 %3932, %3913
  %3936 = add nuw nsw i32 %3934, %3935
  %3937 = icmp eq i32 %3936, 2
  %3938 = zext i1 %3937 to i8
  store i8 %3938, i8* %103, align 1
  %3939 = sext i32 %3914 to i64
  store i64 %3939, i64* %RCX.i2541, align 8
  %3940 = load i64, i64* %RAX.i2556, align 8
  %3941 = shl nsw i64 %3939, 2
  %3942 = add i64 %3940, %3941
  %3943 = add i64 %395, 1473
  store i64 %3943, i64* %3, align 8
  %3944 = inttoptr i64 %3942 to i32*
  %3945 = load i32, i32* %3944, align 4
  store i32 %3945, i32* %215, align 1
  store float 0.000000e+00, float* %217, align 1
  store float 0.000000e+00, float* %219, align 1
  store float 0.000000e+00, float* %221, align 1
  %3946 = add i64 %3906, -40
  %3947 = add i64 %395, 1477
  store i64 %3947, i64* %3, align 8
  %3948 = inttoptr i64 %3946 to i64*
  %3949 = load i64, i64* %3948, align 8
  store i64 %3949, i64* %RAX.i2556, align 8
  %3950 = add i64 %395, 1480
  store i64 %3950, i64* %3, align 8
  %3951 = inttoptr i64 %3949 to i64*
  %3952 = load i64, i64* %3951, align 8
  store i64 %3952, i64* %RAX.i2556, align 8
  %3953 = load i64, i64* %RBP.i, align 8
  %3954 = add i64 %3953, -40
  %3955 = add i64 %395, 1484
  store i64 %3955, i64* %3, align 8
  %3956 = inttoptr i64 %3954 to i64*
  %3957 = load i64, i64* %3956, align 8
  store i64 %3957, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %80, align 1
  store i8 1, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  store i8 0, i8* %97, align 1
  store i8 0, i8* %103, align 1
  %3958 = add i64 %395, 1492
  store i64 %3958, i64* %3, align 8
  %3959 = load i64, i64* %3956, align 8
  store i64 %3959, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %80, align 1
  store i8 1, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  store i8 0, i8* %97, align 1
  store i8 0, i8* %103, align 1
  %3960 = add i64 %395, 1500
  store i64 %3960, i64* %3, align 8
  %3961 = load i64, i64* %3956, align 8
  store i64 %3961, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %80, align 1
  store i8 1, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  store i8 0, i8* %97, align 1
  store i8 0, i8* %103, align 1
  %3962 = add i64 %3953, -68
  %3963 = add i64 %395, 1507
  store i64 %3963, i64* %3, align 8
  %3964 = inttoptr i64 %3962 to i32*
  %3965 = load i32, i32* %3964, align 4
  %3966 = add i32 %3965, -1
  %3967 = zext i32 %3966 to i64
  store i64 %3967, i64* %RSI.i2547, align 8
  %3968 = icmp eq i32 %3965, 0
  %3969 = zext i1 %3968 to i8
  store i8 %3969, i8* %80, align 1
  %3970 = and i32 %3966, 255
  %3971 = tail call i32 @llvm.ctpop.i32(i32 %3970)
  %3972 = trunc i32 %3971 to i8
  %3973 = and i8 %3972, 1
  %3974 = xor i8 %3973, 1
  store i8 %3974, i8* %86, align 1
  %3975 = xor i32 %3966, %3965
  %3976 = lshr i32 %3975, 4
  %3977 = trunc i32 %3976 to i8
  %3978 = and i8 %3977, 1
  store i8 %3978, i8* %91, align 1
  %3979 = icmp eq i32 %3966, 0
  %3980 = zext i1 %3979 to i8
  store i8 %3980, i8* %94, align 1
  %3981 = lshr i32 %3966, 31
  %3982 = trunc i32 %3981 to i8
  store i8 %3982, i8* %97, align 1
  %3983 = lshr i32 %3965, 31
  %3984 = xor i32 %3981, %3983
  %3985 = add nuw nsw i32 %3984, %3983
  %3986 = icmp eq i32 %3985, 2
  %3987 = zext i1 %3986 to i8
  store i8 %3987, i8* %103, align 1
  %3988 = add i64 %395, 1514
  store i64 %3988, i64* %3, align 8
  %3989 = load i64, i64* %3956, align 8
  store i64 %3989, i64* %RCX.i2541, align 8
  %3990 = add i64 %3989, 16
  %3991 = add i64 %395, 1518
  store i64 %3991, i64* %3, align 8
  %3992 = inttoptr i64 %3990 to i32*
  %3993 = load i32, i32* %3992, align 4
  %3994 = sext i32 %3966 to i64
  %3995 = sext i32 %3993 to i64
  %3996 = mul nsw i64 %3995, %3994
  %3997 = trunc i64 %3996 to i32
  %3998 = and i64 %3996, 4294967295
  store i64 %3998, i64* %RSI.i2547, align 8
  %3999 = shl i64 %3996, 32
  %4000 = ashr exact i64 %3999, 32
  %4001 = icmp ne i64 %4000, %3996
  %4002 = zext i1 %4001 to i8
  store i8 %4002, i8* %80, align 1
  %4003 = and i32 %3997, 255
  %4004 = tail call i32 @llvm.ctpop.i32(i32 %4003)
  %4005 = trunc i32 %4004 to i8
  %4006 = and i8 %4005, 1
  %4007 = xor i8 %4006, 1
  store i8 %4007, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  %4008 = lshr i32 %3997, 31
  %4009 = trunc i32 %4008 to i8
  store i8 %4009, i8* %97, align 1
  store i8 %4002, i8* %103, align 1
  %4010 = load i64, i64* %RBP.i, align 8
  %4011 = add i64 %4010, -40
  %4012 = add i64 %395, 1522
  store i64 %4012, i64* %3, align 8
  %4013 = inttoptr i64 %4011 to i64*
  %4014 = load i64, i64* %4013, align 8
  store i64 %4014, i64* %RCX.i2541, align 8
  %4015 = add i64 %4014, 20
  %4016 = add i64 %395, 1526
  store i64 %4016, i64* %3, align 8
  %4017 = inttoptr i64 %4015 to i32*
  %4018 = load i32, i32* %4017, align 4
  %4019 = shl i64 %3996, 32
  %4020 = ashr exact i64 %4019, 32
  %4021 = sext i32 %4018 to i64
  %4022 = mul nsw i64 %4021, %4020
  %4023 = and i64 %4022, 4294967295
  store i64 %4023, i64* %RSI.i2547, align 8
  %4024 = load i64, i64* %RDX.i2544, align 8
  %4025 = trunc i64 %4022 to i32
  %4026 = trunc i64 %4024 to i32
  %4027 = add i32 %4025, %4026
  %4028 = zext i32 %4027 to i64
  store i64 %4028, i64* %RDX.i2544, align 8
  %4029 = icmp ult i32 %4027, %4026
  %4030 = icmp ult i32 %4027, %4025
  %4031 = or i1 %4029, %4030
  %4032 = zext i1 %4031 to i8
  store i8 %4032, i8* %80, align 1
  %4033 = and i32 %4027, 255
  %4034 = tail call i32 @llvm.ctpop.i32(i32 %4033)
  %4035 = trunc i32 %4034 to i8
  %4036 = and i8 %4035, 1
  %4037 = xor i8 %4036, 1
  store i8 %4037, i8* %86, align 1
  %4038 = xor i64 %4022, %4024
  %4039 = trunc i64 %4038 to i32
  %4040 = xor i32 %4039, %4027
  %4041 = lshr i32 %4040, 4
  %4042 = trunc i32 %4041 to i8
  %4043 = and i8 %4042, 1
  store i8 %4043, i8* %91, align 1
  %4044 = icmp eq i32 %4027, 0
  %4045 = zext i1 %4044 to i8
  store i8 %4045, i8* %94, align 1
  %4046 = lshr i32 %4027, 31
  %4047 = trunc i32 %4046 to i8
  store i8 %4047, i8* %97, align 1
  %4048 = lshr i32 %4026, 31
  %4049 = lshr i32 %4025, 31
  %4050 = xor i32 %4046, %4048
  %4051 = xor i32 %4046, %4049
  %4052 = add nuw nsw i32 %4050, %4051
  %4053 = icmp eq i32 %4052, 2
  %4054 = zext i1 %4053 to i8
  store i8 %4054, i8* %103, align 1
  %4055 = add i64 %4010, -72
  %4056 = add i64 %395, 1531
  store i64 %4056, i64* %3, align 8
  %4057 = inttoptr i64 %4055 to i32*
  %4058 = load i32, i32* %4057, align 4
  %4059 = zext i32 %4058 to i64
  store i64 %4059, i64* %RSI.i2547, align 8
  %4060 = add i64 %395, 1535
  store i64 %4060, i64* %3, align 8
  %4061 = load i64, i64* %4013, align 8
  store i64 %4061, i64* %RCX.i2541, align 8
  %4062 = add i64 %4061, 20
  %4063 = add i64 %395, 1539
  store i64 %4063, i64* %3, align 8
  %4064 = inttoptr i64 %4062 to i32*
  %4065 = load i32, i32* %4064, align 4
  %4066 = sext i32 %4058 to i64
  %4067 = sext i32 %4065 to i64
  %4068 = mul nsw i64 %4067, %4066
  %4069 = and i64 %4068, 4294967295
  store i64 %4069, i64* %RSI.i2547, align 8
  %4070 = trunc i64 %4068 to i32
  %4071 = add i32 %4070, %4027
  %4072 = zext i32 %4071 to i64
  store i64 %4072, i64* %RDX.i2544, align 8
  %4073 = icmp ult i32 %4071, %4027
  %4074 = icmp ult i32 %4071, %4070
  %4075 = or i1 %4073, %4074
  %4076 = zext i1 %4075 to i8
  store i8 %4076, i8* %80, align 1
  %4077 = and i32 %4071, 255
  %4078 = tail call i32 @llvm.ctpop.i32(i32 %4077)
  %4079 = trunc i32 %4078 to i8
  %4080 = and i8 %4079, 1
  %4081 = xor i8 %4080, 1
  store i8 %4081, i8* %86, align 1
  %4082 = xor i64 %4068, %4028
  %4083 = trunc i64 %4082 to i32
  %4084 = xor i32 %4083, %4071
  %4085 = lshr i32 %4084, 4
  %4086 = trunc i32 %4085 to i8
  %4087 = and i8 %4086, 1
  store i8 %4087, i8* %91, align 1
  %4088 = icmp eq i32 %4071, 0
  %4089 = zext i1 %4088 to i8
  store i8 %4089, i8* %94, align 1
  %4090 = lshr i32 %4071, 31
  %4091 = trunc i32 %4090 to i8
  store i8 %4091, i8* %97, align 1
  %4092 = lshr i32 %4070, 31
  %4093 = xor i32 %4090, %4046
  %4094 = xor i32 %4090, %4092
  %4095 = add nuw nsw i32 %4093, %4094
  %4096 = icmp eq i32 %4095, 2
  %4097 = zext i1 %4096 to i8
  store i8 %4097, i8* %103, align 1
  %4098 = load i64, i64* %RBP.i, align 8
  %4099 = add i64 %4098, -76
  %4100 = add i64 %395, 1544
  store i64 %4100, i64* %3, align 8
  %4101 = inttoptr i64 %4099 to i32*
  %4102 = load i32, i32* %4101, align 4
  %4103 = add i32 %4102, 1
  %4104 = zext i32 %4103 to i64
  store i64 %4104, i64* %RSI.i2547, align 8
  %4105 = lshr i32 %4103, 31
  %4106 = add i32 %4103, %4071
  %4107 = zext i32 %4106 to i64
  store i64 %4107, i64* %RDX.i2544, align 8
  %4108 = icmp ult i32 %4106, %4071
  %4109 = icmp ult i32 %4106, %4103
  %4110 = or i1 %4108, %4109
  %4111 = zext i1 %4110 to i8
  store i8 %4111, i8* %80, align 1
  %4112 = and i32 %4106, 255
  %4113 = tail call i32 @llvm.ctpop.i32(i32 %4112)
  %4114 = trunc i32 %4113 to i8
  %4115 = and i8 %4114, 1
  %4116 = xor i8 %4115, 1
  store i8 %4116, i8* %86, align 1
  %4117 = xor i32 %4103, %4071
  %4118 = xor i32 %4117, %4106
  %4119 = lshr i32 %4118, 4
  %4120 = trunc i32 %4119 to i8
  %4121 = and i8 %4120, 1
  store i8 %4121, i8* %91, align 1
  %4122 = icmp eq i32 %4106, 0
  %4123 = zext i1 %4122 to i8
  store i8 %4123, i8* %94, align 1
  %4124 = lshr i32 %4106, 31
  %4125 = trunc i32 %4124 to i8
  store i8 %4125, i8* %97, align 1
  %4126 = xor i32 %4124, %4090
  %4127 = xor i32 %4124, %4105
  %4128 = add nuw nsw i32 %4126, %4127
  %4129 = icmp eq i32 %4128, 2
  %4130 = zext i1 %4129 to i8
  store i8 %4130, i8* %103, align 1
  %4131 = sext i32 %4106 to i64
  store i64 %4131, i64* %RCX.i2541, align 8
  %4132 = load i64, i64* %RAX.i2556, align 8
  %4133 = shl nsw i64 %4131, 2
  %4134 = add i64 %4132, %4133
  %4135 = add i64 %395, 1557
  store i64 %4135, i64* %3, align 8
  %4136 = load <2 x float>, <2 x float>* %222, align 1
  %4137 = load <2 x i32>, <2 x i32>* %223, align 1
  %4138 = inttoptr i64 %4134 to float*
  %4139 = load float, float* %4138, align 4
  %4140 = extractelement <2 x float> %4136, i32 0
  %4141 = fsub float %4140, %4139
  store float %4141, float* %214, align 1
  %4142 = bitcast <2 x float> %4136 to <2 x i32>
  %4143 = extractelement <2 x i32> %4142, i32 1
  store i32 %4143, i32* %224, align 1
  %4144 = extractelement <2 x i32> %4137, i32 0
  store i32 %4144, i32* %225, align 1
  %4145 = extractelement <2 x i32> %4137, i32 1
  store i32 %4145, i32* %226, align 1
  %4146 = load i64, i64* %RBP.i, align 8
  %4147 = add i64 %4146, -40
  %4148 = add i64 %395, 1561
  store i64 %4148, i64* %3, align 8
  %4149 = inttoptr i64 %4147 to i64*
  %4150 = load i64, i64* %4149, align 8
  store i64 %4150, i64* %RAX.i2556, align 8
  %4151 = add i64 %395, 1564
  store i64 %4151, i64* %3, align 8
  %4152 = inttoptr i64 %4150 to i64*
  %4153 = load i64, i64* %4152, align 8
  store i64 %4153, i64* %RAX.i2556, align 8
  %4154 = add i64 %395, 1568
  store i64 %4154, i64* %3, align 8
  %4155 = load i64, i64* %4149, align 8
  store i64 %4155, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %80, align 1
  store i8 1, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  store i8 0, i8* %97, align 1
  store i8 0, i8* %103, align 1
  %4156 = add i64 %395, 1576
  store i64 %4156, i64* %3, align 8
  %4157 = load i64, i64* %4149, align 8
  store i64 %4157, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %80, align 1
  store i8 1, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  store i8 0, i8* %97, align 1
  store i8 0, i8* %103, align 1
  %4158 = add i64 %395, 1584
  store i64 %4158, i64* %3, align 8
  %4159 = load i64, i64* %4149, align 8
  store i64 %4159, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %80, align 1
  store i8 1, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  store i8 0, i8* %97, align 1
  store i8 0, i8* %103, align 1
  %4160 = add i64 %4146, -68
  %4161 = add i64 %395, 1591
  store i64 %4161, i64* %3, align 8
  %4162 = inttoptr i64 %4160 to i32*
  %4163 = load i32, i32* %4162, align 4
  %4164 = add i32 %4163, 1
  %4165 = zext i32 %4164 to i64
  store i64 %4165, i64* %RSI.i2547, align 8
  %4166 = icmp eq i32 %4163, -1
  %4167 = icmp eq i32 %4164, 0
  %4168 = or i1 %4166, %4167
  %4169 = zext i1 %4168 to i8
  store i8 %4169, i8* %80, align 1
  %4170 = and i32 %4164, 255
  %4171 = tail call i32 @llvm.ctpop.i32(i32 %4170)
  %4172 = trunc i32 %4171 to i8
  %4173 = and i8 %4172, 1
  %4174 = xor i8 %4173, 1
  store i8 %4174, i8* %86, align 1
  %4175 = xor i32 %4164, %4163
  %4176 = lshr i32 %4175, 4
  %4177 = trunc i32 %4176 to i8
  %4178 = and i8 %4177, 1
  store i8 %4178, i8* %91, align 1
  %4179 = zext i1 %4167 to i8
  store i8 %4179, i8* %94, align 1
  %4180 = lshr i32 %4164, 31
  %4181 = trunc i32 %4180 to i8
  store i8 %4181, i8* %97, align 1
  %4182 = lshr i32 %4163, 31
  %4183 = xor i32 %4180, %4182
  %4184 = add nuw nsw i32 %4183, %4180
  %4185 = icmp eq i32 %4184, 2
  %4186 = zext i1 %4185 to i8
  store i8 %4186, i8* %103, align 1
  %4187 = add i64 %395, 1598
  store i64 %4187, i64* %3, align 8
  %4188 = load i64, i64* %4149, align 8
  store i64 %4188, i64* %RCX.i2541, align 8
  %4189 = add i64 %4188, 16
  %4190 = add i64 %395, 1602
  store i64 %4190, i64* %3, align 8
  %4191 = inttoptr i64 %4189 to i32*
  %4192 = load i32, i32* %4191, align 4
  %4193 = sext i32 %4164 to i64
  %4194 = sext i32 %4192 to i64
  %4195 = mul nsw i64 %4194, %4193
  %4196 = trunc i64 %4195 to i32
  %4197 = and i64 %4195, 4294967295
  store i64 %4197, i64* %RSI.i2547, align 8
  %4198 = shl i64 %4195, 32
  %4199 = ashr exact i64 %4198, 32
  %4200 = icmp ne i64 %4199, %4195
  %4201 = zext i1 %4200 to i8
  store i8 %4201, i8* %80, align 1
  %4202 = and i32 %4196, 255
  %4203 = tail call i32 @llvm.ctpop.i32(i32 %4202)
  %4204 = trunc i32 %4203 to i8
  %4205 = and i8 %4204, 1
  %4206 = xor i8 %4205, 1
  store i8 %4206, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  %4207 = lshr i32 %4196, 31
  %4208 = trunc i32 %4207 to i8
  store i8 %4208, i8* %97, align 1
  store i8 %4201, i8* %103, align 1
  %4209 = load i64, i64* %RBP.i, align 8
  %4210 = add i64 %4209, -40
  %4211 = add i64 %395, 1606
  store i64 %4211, i64* %3, align 8
  %4212 = inttoptr i64 %4210 to i64*
  %4213 = load i64, i64* %4212, align 8
  store i64 %4213, i64* %RCX.i2541, align 8
  %4214 = add i64 %4213, 20
  %4215 = add i64 %395, 1610
  store i64 %4215, i64* %3, align 8
  %4216 = inttoptr i64 %4214 to i32*
  %4217 = load i32, i32* %4216, align 4
  %4218 = shl i64 %4195, 32
  %4219 = ashr exact i64 %4218, 32
  %4220 = sext i32 %4217 to i64
  %4221 = mul nsw i64 %4220, %4219
  %4222 = and i64 %4221, 4294967295
  store i64 %4222, i64* %RSI.i2547, align 8
  %4223 = load i64, i64* %RDX.i2544, align 8
  %4224 = trunc i64 %4221 to i32
  %4225 = trunc i64 %4223 to i32
  %4226 = add i32 %4224, %4225
  %4227 = zext i32 %4226 to i64
  store i64 %4227, i64* %RDX.i2544, align 8
  %4228 = icmp ult i32 %4226, %4225
  %4229 = icmp ult i32 %4226, %4224
  %4230 = or i1 %4228, %4229
  %4231 = zext i1 %4230 to i8
  store i8 %4231, i8* %80, align 1
  %4232 = and i32 %4226, 255
  %4233 = tail call i32 @llvm.ctpop.i32(i32 %4232)
  %4234 = trunc i32 %4233 to i8
  %4235 = and i8 %4234, 1
  %4236 = xor i8 %4235, 1
  store i8 %4236, i8* %86, align 1
  %4237 = xor i64 %4221, %4223
  %4238 = trunc i64 %4237 to i32
  %4239 = xor i32 %4238, %4226
  %4240 = lshr i32 %4239, 4
  %4241 = trunc i32 %4240 to i8
  %4242 = and i8 %4241, 1
  store i8 %4242, i8* %91, align 1
  %4243 = icmp eq i32 %4226, 0
  %4244 = zext i1 %4243 to i8
  store i8 %4244, i8* %94, align 1
  %4245 = lshr i32 %4226, 31
  %4246 = trunc i32 %4245 to i8
  store i8 %4246, i8* %97, align 1
  %4247 = lshr i32 %4225, 31
  %4248 = lshr i32 %4224, 31
  %4249 = xor i32 %4245, %4247
  %4250 = xor i32 %4245, %4248
  %4251 = add nuw nsw i32 %4249, %4250
  %4252 = icmp eq i32 %4251, 2
  %4253 = zext i1 %4252 to i8
  store i8 %4253, i8* %103, align 1
  %4254 = add i64 %4209, -72
  %4255 = add i64 %395, 1615
  store i64 %4255, i64* %3, align 8
  %4256 = inttoptr i64 %4254 to i32*
  %4257 = load i32, i32* %4256, align 4
  %4258 = zext i32 %4257 to i64
  store i64 %4258, i64* %RSI.i2547, align 8
  %4259 = add i64 %395, 1619
  store i64 %4259, i64* %3, align 8
  %4260 = load i64, i64* %4212, align 8
  store i64 %4260, i64* %RCX.i2541, align 8
  %4261 = add i64 %4260, 20
  %4262 = add i64 %395, 1623
  store i64 %4262, i64* %3, align 8
  %4263 = inttoptr i64 %4261 to i32*
  %4264 = load i32, i32* %4263, align 4
  %4265 = sext i32 %4257 to i64
  %4266 = sext i32 %4264 to i64
  %4267 = mul nsw i64 %4266, %4265
  %4268 = and i64 %4267, 4294967295
  store i64 %4268, i64* %RSI.i2547, align 8
  %4269 = trunc i64 %4267 to i32
  %4270 = add i32 %4269, %4226
  %4271 = zext i32 %4270 to i64
  store i64 %4271, i64* %RDX.i2544, align 8
  %4272 = icmp ult i32 %4270, %4226
  %4273 = icmp ult i32 %4270, %4269
  %4274 = or i1 %4272, %4273
  %4275 = zext i1 %4274 to i8
  store i8 %4275, i8* %80, align 1
  %4276 = and i32 %4270, 255
  %4277 = tail call i32 @llvm.ctpop.i32(i32 %4276)
  %4278 = trunc i32 %4277 to i8
  %4279 = and i8 %4278, 1
  %4280 = xor i8 %4279, 1
  store i8 %4280, i8* %86, align 1
  %4281 = xor i64 %4267, %4227
  %4282 = trunc i64 %4281 to i32
  %4283 = xor i32 %4282, %4270
  %4284 = lshr i32 %4283, 4
  %4285 = trunc i32 %4284 to i8
  %4286 = and i8 %4285, 1
  store i8 %4286, i8* %91, align 1
  %4287 = icmp eq i32 %4270, 0
  %4288 = zext i1 %4287 to i8
  store i8 %4288, i8* %94, align 1
  %4289 = lshr i32 %4270, 31
  %4290 = trunc i32 %4289 to i8
  store i8 %4290, i8* %97, align 1
  %4291 = lshr i32 %4269, 31
  %4292 = xor i32 %4289, %4245
  %4293 = xor i32 %4289, %4291
  %4294 = add nuw nsw i32 %4292, %4293
  %4295 = icmp eq i32 %4294, 2
  %4296 = zext i1 %4295 to i8
  store i8 %4296, i8* %103, align 1
  %4297 = load i64, i64* %RBP.i, align 8
  %4298 = add i64 %4297, -76
  %4299 = add i64 %395, 1628
  store i64 %4299, i64* %3, align 8
  %4300 = inttoptr i64 %4298 to i32*
  %4301 = load i32, i32* %4300, align 4
  %4302 = add i32 %4301, -1
  %4303 = zext i32 %4302 to i64
  store i64 %4303, i64* %RSI.i2547, align 8
  %4304 = lshr i32 %4302, 31
  %4305 = add i32 %4302, %4270
  %4306 = zext i32 %4305 to i64
  store i64 %4306, i64* %RDX.i2544, align 8
  %4307 = icmp ult i32 %4305, %4270
  %4308 = icmp ult i32 %4305, %4302
  %4309 = or i1 %4307, %4308
  %4310 = zext i1 %4309 to i8
  store i8 %4310, i8* %80, align 1
  %4311 = and i32 %4305, 255
  %4312 = tail call i32 @llvm.ctpop.i32(i32 %4311)
  %4313 = trunc i32 %4312 to i8
  %4314 = and i8 %4313, 1
  %4315 = xor i8 %4314, 1
  store i8 %4315, i8* %86, align 1
  %4316 = xor i32 %4302, %4270
  %4317 = xor i32 %4316, %4305
  %4318 = lshr i32 %4317, 4
  %4319 = trunc i32 %4318 to i8
  %4320 = and i8 %4319, 1
  store i8 %4320, i8* %91, align 1
  %4321 = icmp eq i32 %4305, 0
  %4322 = zext i1 %4321 to i8
  store i8 %4322, i8* %94, align 1
  %4323 = lshr i32 %4305, 31
  %4324 = trunc i32 %4323 to i8
  store i8 %4324, i8* %97, align 1
  %4325 = xor i32 %4323, %4289
  %4326 = xor i32 %4323, %4304
  %4327 = add nuw nsw i32 %4325, %4326
  %4328 = icmp eq i32 %4327, 2
  %4329 = zext i1 %4328 to i8
  store i8 %4329, i8* %103, align 1
  %4330 = sext i32 %4305 to i64
  store i64 %4330, i64* %RCX.i2541, align 8
  %4331 = load i64, i64* %RAX.i2556, align 8
  %4332 = shl nsw i64 %4330, 2
  %4333 = add i64 %4331, %4332
  %4334 = add i64 %395, 1641
  store i64 %4334, i64* %3, align 8
  %4335 = load <2 x float>, <2 x float>* %222, align 1
  %4336 = load <2 x i32>, <2 x i32>* %223, align 1
  %4337 = inttoptr i64 %4333 to float*
  %4338 = load float, float* %4337, align 4
  %4339 = extractelement <2 x float> %4335, i32 0
  %4340 = fsub float %4339, %4338
  store float %4340, float* %214, align 1
  %4341 = bitcast <2 x float> %4335 to <2 x i32>
  %4342 = extractelement <2 x i32> %4341, i32 1
  store i32 %4342, i32* %224, align 1
  %4343 = extractelement <2 x i32> %4336, i32 0
  store i32 %4343, i32* %225, align 1
  %4344 = extractelement <2 x i32> %4336, i32 1
  store i32 %4344, i32* %226, align 1
  %4345 = load i64, i64* %RBP.i, align 8
  %4346 = add i64 %4345, -40
  %4347 = add i64 %395, 1645
  store i64 %4347, i64* %3, align 8
  %4348 = inttoptr i64 %4346 to i64*
  %4349 = load i64, i64* %4348, align 8
  store i64 %4349, i64* %RAX.i2556, align 8
  %4350 = add i64 %395, 1648
  store i64 %4350, i64* %3, align 8
  %4351 = inttoptr i64 %4349 to i64*
  %4352 = load i64, i64* %4351, align 8
  store i64 %4352, i64* %RAX.i2556, align 8
  %4353 = add i64 %395, 1652
  store i64 %4353, i64* %3, align 8
  %4354 = load i64, i64* %4348, align 8
  store i64 %4354, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %80, align 1
  store i8 1, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  store i8 0, i8* %97, align 1
  store i8 0, i8* %103, align 1
  %4355 = add i64 %395, 1660
  store i64 %4355, i64* %3, align 8
  %4356 = load i64, i64* %4348, align 8
  store i64 %4356, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %80, align 1
  store i8 1, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  store i8 0, i8* %97, align 1
  store i8 0, i8* %103, align 1
  %4357 = add i64 %395, 1668
  store i64 %4357, i64* %3, align 8
  %4358 = load i64, i64* %4348, align 8
  store i64 %4358, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %80, align 1
  store i8 1, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  store i8 0, i8* %97, align 1
  store i8 0, i8* %103, align 1
  %4359 = add i64 %4345, -68
  %4360 = add i64 %395, 1675
  store i64 %4360, i64* %3, align 8
  %4361 = inttoptr i64 %4359 to i32*
  %4362 = load i32, i32* %4361, align 4
  %4363 = add i32 %4362, -1
  %4364 = zext i32 %4363 to i64
  store i64 %4364, i64* %RSI.i2547, align 8
  %4365 = icmp eq i32 %4362, 0
  %4366 = zext i1 %4365 to i8
  store i8 %4366, i8* %80, align 1
  %4367 = and i32 %4363, 255
  %4368 = tail call i32 @llvm.ctpop.i32(i32 %4367)
  %4369 = trunc i32 %4368 to i8
  %4370 = and i8 %4369, 1
  %4371 = xor i8 %4370, 1
  store i8 %4371, i8* %86, align 1
  %4372 = xor i32 %4363, %4362
  %4373 = lshr i32 %4372, 4
  %4374 = trunc i32 %4373 to i8
  %4375 = and i8 %4374, 1
  store i8 %4375, i8* %91, align 1
  %4376 = icmp eq i32 %4363, 0
  %4377 = zext i1 %4376 to i8
  store i8 %4377, i8* %94, align 1
  %4378 = lshr i32 %4363, 31
  %4379 = trunc i32 %4378 to i8
  store i8 %4379, i8* %97, align 1
  %4380 = lshr i32 %4362, 31
  %4381 = xor i32 %4378, %4380
  %4382 = add nuw nsw i32 %4381, %4380
  %4383 = icmp eq i32 %4382, 2
  %4384 = zext i1 %4383 to i8
  store i8 %4384, i8* %103, align 1
  %4385 = add i64 %395, 1682
  store i64 %4385, i64* %3, align 8
  %4386 = load i64, i64* %4348, align 8
  store i64 %4386, i64* %RCX.i2541, align 8
  %4387 = add i64 %4386, 16
  %4388 = add i64 %395, 1686
  store i64 %4388, i64* %3, align 8
  %4389 = inttoptr i64 %4387 to i32*
  %4390 = load i32, i32* %4389, align 4
  %4391 = sext i32 %4363 to i64
  %4392 = sext i32 %4390 to i64
  %4393 = mul nsw i64 %4392, %4391
  %4394 = trunc i64 %4393 to i32
  %4395 = and i64 %4393, 4294967295
  store i64 %4395, i64* %RSI.i2547, align 8
  %4396 = shl i64 %4393, 32
  %4397 = ashr exact i64 %4396, 32
  %4398 = icmp ne i64 %4397, %4393
  %4399 = zext i1 %4398 to i8
  store i8 %4399, i8* %80, align 1
  %4400 = and i32 %4394, 255
  %4401 = tail call i32 @llvm.ctpop.i32(i32 %4400)
  %4402 = trunc i32 %4401 to i8
  %4403 = and i8 %4402, 1
  %4404 = xor i8 %4403, 1
  store i8 %4404, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  %4405 = lshr i32 %4394, 31
  %4406 = trunc i32 %4405 to i8
  store i8 %4406, i8* %97, align 1
  store i8 %4399, i8* %103, align 1
  %4407 = load i64, i64* %RBP.i, align 8
  %4408 = add i64 %4407, -40
  %4409 = add i64 %395, 1690
  store i64 %4409, i64* %3, align 8
  %4410 = inttoptr i64 %4408 to i64*
  %4411 = load i64, i64* %4410, align 8
  store i64 %4411, i64* %RCX.i2541, align 8
  %4412 = add i64 %4411, 20
  %4413 = add i64 %395, 1694
  store i64 %4413, i64* %3, align 8
  %4414 = inttoptr i64 %4412 to i32*
  %4415 = load i32, i32* %4414, align 4
  %4416 = shl i64 %4393, 32
  %4417 = ashr exact i64 %4416, 32
  %4418 = sext i32 %4415 to i64
  %4419 = mul nsw i64 %4418, %4417
  %4420 = and i64 %4419, 4294967295
  store i64 %4420, i64* %RSI.i2547, align 8
  %4421 = load i64, i64* %RDX.i2544, align 8
  %4422 = trunc i64 %4419 to i32
  %4423 = trunc i64 %4421 to i32
  %4424 = add i32 %4422, %4423
  %4425 = zext i32 %4424 to i64
  store i64 %4425, i64* %RDX.i2544, align 8
  %4426 = icmp ult i32 %4424, %4423
  %4427 = icmp ult i32 %4424, %4422
  %4428 = or i1 %4426, %4427
  %4429 = zext i1 %4428 to i8
  store i8 %4429, i8* %80, align 1
  %4430 = and i32 %4424, 255
  %4431 = tail call i32 @llvm.ctpop.i32(i32 %4430)
  %4432 = trunc i32 %4431 to i8
  %4433 = and i8 %4432, 1
  %4434 = xor i8 %4433, 1
  store i8 %4434, i8* %86, align 1
  %4435 = xor i64 %4419, %4421
  %4436 = trunc i64 %4435 to i32
  %4437 = xor i32 %4436, %4424
  %4438 = lshr i32 %4437, 4
  %4439 = trunc i32 %4438 to i8
  %4440 = and i8 %4439, 1
  store i8 %4440, i8* %91, align 1
  %4441 = icmp eq i32 %4424, 0
  %4442 = zext i1 %4441 to i8
  store i8 %4442, i8* %94, align 1
  %4443 = lshr i32 %4424, 31
  %4444 = trunc i32 %4443 to i8
  store i8 %4444, i8* %97, align 1
  %4445 = lshr i32 %4423, 31
  %4446 = lshr i32 %4422, 31
  %4447 = xor i32 %4443, %4445
  %4448 = xor i32 %4443, %4446
  %4449 = add nuw nsw i32 %4447, %4448
  %4450 = icmp eq i32 %4449, 2
  %4451 = zext i1 %4450 to i8
  store i8 %4451, i8* %103, align 1
  %4452 = add i64 %4407, -72
  %4453 = add i64 %395, 1699
  store i64 %4453, i64* %3, align 8
  %4454 = inttoptr i64 %4452 to i32*
  %4455 = load i32, i32* %4454, align 4
  %4456 = zext i32 %4455 to i64
  store i64 %4456, i64* %RSI.i2547, align 8
  %4457 = add i64 %395, 1703
  store i64 %4457, i64* %3, align 8
  %4458 = load i64, i64* %4410, align 8
  store i64 %4458, i64* %RCX.i2541, align 8
  %4459 = add i64 %4458, 20
  %4460 = add i64 %395, 1707
  store i64 %4460, i64* %3, align 8
  %4461 = inttoptr i64 %4459 to i32*
  %4462 = load i32, i32* %4461, align 4
  %4463 = sext i32 %4455 to i64
  %4464 = sext i32 %4462 to i64
  %4465 = mul nsw i64 %4464, %4463
  %4466 = and i64 %4465, 4294967295
  store i64 %4466, i64* %RSI.i2547, align 8
  %4467 = trunc i64 %4465 to i32
  %4468 = add i32 %4467, %4424
  %4469 = zext i32 %4468 to i64
  store i64 %4469, i64* %RDX.i2544, align 8
  %4470 = icmp ult i32 %4468, %4424
  %4471 = icmp ult i32 %4468, %4467
  %4472 = or i1 %4470, %4471
  %4473 = zext i1 %4472 to i8
  store i8 %4473, i8* %80, align 1
  %4474 = and i32 %4468, 255
  %4475 = tail call i32 @llvm.ctpop.i32(i32 %4474)
  %4476 = trunc i32 %4475 to i8
  %4477 = and i8 %4476, 1
  %4478 = xor i8 %4477, 1
  store i8 %4478, i8* %86, align 1
  %4479 = xor i64 %4465, %4425
  %4480 = trunc i64 %4479 to i32
  %4481 = xor i32 %4480, %4468
  %4482 = lshr i32 %4481, 4
  %4483 = trunc i32 %4482 to i8
  %4484 = and i8 %4483, 1
  store i8 %4484, i8* %91, align 1
  %4485 = icmp eq i32 %4468, 0
  %4486 = zext i1 %4485 to i8
  store i8 %4486, i8* %94, align 1
  %4487 = lshr i32 %4468, 31
  %4488 = trunc i32 %4487 to i8
  store i8 %4488, i8* %97, align 1
  %4489 = lshr i32 %4467, 31
  %4490 = xor i32 %4487, %4443
  %4491 = xor i32 %4487, %4489
  %4492 = add nuw nsw i32 %4490, %4491
  %4493 = icmp eq i32 %4492, 2
  %4494 = zext i1 %4493 to i8
  store i8 %4494, i8* %103, align 1
  %4495 = load i64, i64* %RBP.i, align 8
  %4496 = add i64 %4495, -76
  %4497 = add i64 %395, 1712
  store i64 %4497, i64* %3, align 8
  %4498 = inttoptr i64 %4496 to i32*
  %4499 = load i32, i32* %4498, align 4
  %4500 = add i32 %4499, -1
  %4501 = zext i32 %4500 to i64
  store i64 %4501, i64* %RSI.i2547, align 8
  %4502 = lshr i32 %4500, 31
  %4503 = add i32 %4500, %4468
  %4504 = zext i32 %4503 to i64
  store i64 %4504, i64* %RDX.i2544, align 8
  %4505 = icmp ult i32 %4503, %4468
  %4506 = icmp ult i32 %4503, %4500
  %4507 = or i1 %4505, %4506
  %4508 = zext i1 %4507 to i8
  store i8 %4508, i8* %80, align 1
  %4509 = and i32 %4503, 255
  %4510 = tail call i32 @llvm.ctpop.i32(i32 %4509)
  %4511 = trunc i32 %4510 to i8
  %4512 = and i8 %4511, 1
  %4513 = xor i8 %4512, 1
  store i8 %4513, i8* %86, align 1
  %4514 = xor i32 %4500, %4468
  %4515 = xor i32 %4514, %4503
  %4516 = lshr i32 %4515, 4
  %4517 = trunc i32 %4516 to i8
  %4518 = and i8 %4517, 1
  store i8 %4518, i8* %91, align 1
  %4519 = icmp eq i32 %4503, 0
  %4520 = zext i1 %4519 to i8
  store i8 %4520, i8* %94, align 1
  %4521 = lshr i32 %4503, 31
  %4522 = trunc i32 %4521 to i8
  store i8 %4522, i8* %97, align 1
  %4523 = xor i32 %4521, %4487
  %4524 = xor i32 %4521, %4502
  %4525 = add nuw nsw i32 %4523, %4524
  %4526 = icmp eq i32 %4525, 2
  %4527 = zext i1 %4526 to i8
  store i8 %4527, i8* %103, align 1
  %4528 = sext i32 %4503 to i64
  store i64 %4528, i64* %RCX.i2541, align 8
  %4529 = load i64, i64* %RAX.i2556, align 8
  %4530 = shl nsw i64 %4528, 2
  %4531 = add i64 %4529, %4530
  %4532 = add i64 %395, 1725
  store i64 %4532, i64* %3, align 8
  %4533 = load <2 x float>, <2 x float>* %222, align 1
  %4534 = load <2 x i32>, <2 x i32>* %223, align 1
  %4535 = inttoptr i64 %4531 to float*
  %4536 = load float, float* %4535, align 4
  %4537 = extractelement <2 x float> %4533, i32 0
  %4538 = fadd float %4537, %4536
  store float %4538, float* %214, align 1
  %4539 = bitcast <2 x float> %4533 to <2 x i32>
  %4540 = extractelement <2 x i32> %4539, i32 1
  store i32 %4540, i32* %224, align 1
  %4541 = extractelement <2 x i32> %4534, i32 0
  store i32 %4541, i32* %225, align 1
  %4542 = extractelement <2 x i32> %4534, i32 1
  store i32 %4542, i32* %226, align 1
  %4543 = load <2 x float>, <2 x float>* %207, align 1
  %4544 = load <2 x i32>, <2 x i32>* %208, align 1
  %4545 = load <2 x float>, <2 x float>* %222, align 1
  %4546 = extractelement <2 x float> %4543, i32 0
  %4547 = extractelement <2 x float> %4545, i32 0
  %4548 = fmul float %4546, %4547
  store float %4548, float* %199, align 1
  %4549 = bitcast <2 x float> %4543 to <2 x i32>
  %4550 = extractelement <2 x i32> %4549, i32 1
  store i32 %4550, i32* %209, align 1
  %4551 = extractelement <2 x i32> %4544, i32 0
  store i32 %4551, i32* %210, align 1
  %4552 = extractelement <2 x i32> %4544, i32 1
  store i32 %4552, i32* %211, align 1
  %4553 = load <2 x float>, <2 x float>* %191, align 1
  %4554 = load <2 x i32>, <2 x i32>* %196, align 1
  %4555 = load <2 x float>, <2 x float>* %207, align 1
  %4556 = extractelement <2 x float> %4553, i32 0
  %4557 = extractelement <2 x float> %4555, i32 0
  %4558 = fadd float %4556, %4557
  store float %4558, float* %192, align 1
  %4559 = bitcast <2 x float> %4553 to <2 x i32>
  %4560 = extractelement <2 x i32> %4559, i32 1
  store i32 %4560, i32* %187, align 1
  %4561 = extractelement <2 x i32> %4554, i32 0
  store i32 %4561, i32* %188, align 1
  %4562 = extractelement <2 x i32> %4554, i32 1
  store i32 %4562, i32* %190, align 1
  %4563 = load i64, i64* %RBP.i, align 8
  %4564 = add i64 %4563, -32
  %4565 = add i64 %395, 1737
  store i64 %4565, i64* %3, align 8
  %4566 = inttoptr i64 %4564 to i64*
  %4567 = load i64, i64* %4566, align 8
  store i64 %4567, i64* %RAX.i2556, align 8
  %4568 = add i64 %395, 1740
  store i64 %4568, i64* %3, align 8
  %4569 = inttoptr i64 %4567 to i64*
  %4570 = load i64, i64* %4569, align 8
  store i64 %4570, i64* %RAX.i2556, align 8
  %4571 = add i64 %395, 1744
  store i64 %4571, i64* %3, align 8
  %4572 = load i64, i64* %4566, align 8
  store i64 %4572, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %80, align 1
  store i8 1, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  store i8 0, i8* %97, align 1
  store i8 0, i8* %103, align 1
  %4573 = add i64 %395, 1752
  store i64 %4573, i64* %3, align 8
  %4574 = load i64, i64* %4566, align 8
  store i64 %4574, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %80, align 1
  store i8 1, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  store i8 0, i8* %97, align 1
  store i8 0, i8* %103, align 1
  %4575 = add i64 %395, 1760
  store i64 %4575, i64* %3, align 8
  %4576 = load i64, i64* %4566, align 8
  store i64 %4576, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %80, align 1
  store i8 1, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  store i8 0, i8* %97, align 1
  store i8 0, i8* %103, align 1
  %4577 = add i64 %4563, -68
  %4578 = add i64 %395, 1767
  store i64 %4578, i64* %3, align 8
  %4579 = inttoptr i64 %4577 to i32*
  %4580 = load i32, i32* %4579, align 4
  %4581 = zext i32 %4580 to i64
  store i64 %4581, i64* %RSI.i2547, align 8
  %4582 = add i64 %395, 1771
  store i64 %4582, i64* %3, align 8
  %4583 = load i64, i64* %4566, align 8
  store i64 %4583, i64* %RCX.i2541, align 8
  %4584 = add i64 %4583, 16
  %4585 = add i64 %395, 1775
  store i64 %4585, i64* %3, align 8
  %4586 = inttoptr i64 %4584 to i32*
  %4587 = load i32, i32* %4586, align 4
  %4588 = sext i32 %4580 to i64
  %4589 = sext i32 %4587 to i64
  %4590 = mul nsw i64 %4589, %4588
  %4591 = trunc i64 %4590 to i32
  %4592 = and i64 %4590, 4294967295
  store i64 %4592, i64* %RSI.i2547, align 8
  %4593 = shl i64 %4590, 32
  %4594 = ashr exact i64 %4593, 32
  %4595 = icmp ne i64 %4594, %4590
  %4596 = zext i1 %4595 to i8
  store i8 %4596, i8* %80, align 1
  %4597 = and i32 %4591, 255
  %4598 = tail call i32 @llvm.ctpop.i32(i32 %4597)
  %4599 = trunc i32 %4598 to i8
  %4600 = and i8 %4599, 1
  %4601 = xor i8 %4600, 1
  store i8 %4601, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  %4602 = lshr i32 %4591, 31
  %4603 = trunc i32 %4602 to i8
  store i8 %4603, i8* %97, align 1
  store i8 %4596, i8* %103, align 1
  %4604 = add i64 %395, 1779
  store i64 %4604, i64* %3, align 8
  %4605 = load i64, i64* %4566, align 8
  store i64 %4605, i64* %RCX.i2541, align 8
  %4606 = add i64 %4605, 20
  %4607 = add i64 %395, 1783
  store i64 %4607, i64* %3, align 8
  %4608 = inttoptr i64 %4606 to i32*
  %4609 = load i32, i32* %4608, align 4
  %4610 = shl i64 %4590, 32
  %4611 = ashr exact i64 %4610, 32
  %4612 = sext i32 %4609 to i64
  %4613 = mul nsw i64 %4612, %4611
  %4614 = and i64 %4613, 4294967295
  store i64 %4614, i64* %RSI.i2547, align 8
  %4615 = trunc i64 %4613 to i32
  %4616 = and i64 %4613, 4294967295
  store i64 %4616, i64* %RDX.i2544, align 8
  store i8 0, i8* %80, align 1
  %4617 = and i32 %4615, 255
  %4618 = tail call i32 @llvm.ctpop.i32(i32 %4617)
  %4619 = trunc i32 %4618 to i8
  %4620 = and i8 %4619, 1
  %4621 = xor i8 %4620, 1
  store i8 %4621, i8* %86, align 1
  store i8 0, i8* %91, align 1
  %4622 = icmp eq i32 %4615, 0
  %4623 = zext i1 %4622 to i8
  store i8 %4623, i8* %94, align 1
  %4624 = lshr i32 %4615, 31
  %4625 = trunc i32 %4624 to i8
  store i8 %4625, i8* %97, align 1
  store i8 0, i8* %103, align 1
  %4626 = load i64, i64* %RBP.i, align 8
  %4627 = add i64 %4626, -72
  %4628 = add i64 %395, 1788
  store i64 %4628, i64* %3, align 8
  %4629 = inttoptr i64 %4627 to i32*
  %4630 = load i32, i32* %4629, align 4
  %4631 = zext i32 %4630 to i64
  store i64 %4631, i64* %RSI.i2547, align 8
  %4632 = add i64 %4626, -32
  %4633 = add i64 %395, 1792
  store i64 %4633, i64* %3, align 8
  %4634 = inttoptr i64 %4632 to i64*
  %4635 = load i64, i64* %4634, align 8
  store i64 %4635, i64* %RCX.i2541, align 8
  %4636 = add i64 %4635, 20
  %4637 = add i64 %395, 1796
  store i64 %4637, i64* %3, align 8
  %4638 = inttoptr i64 %4636 to i32*
  %4639 = load i32, i32* %4638, align 4
  %4640 = sext i32 %4630 to i64
  %4641 = sext i32 %4639 to i64
  %4642 = mul nsw i64 %4641, %4640
  %4643 = and i64 %4642, 4294967295
  store i64 %4643, i64* %RSI.i2547, align 8
  %4644 = trunc i64 %4642 to i32
  %4645 = add i32 %4644, %4615
  %4646 = zext i32 %4645 to i64
  store i64 %4646, i64* %RDX.i2544, align 8
  %4647 = icmp ult i32 %4645, %4615
  %4648 = icmp ult i32 %4645, %4644
  %4649 = or i1 %4647, %4648
  %4650 = zext i1 %4649 to i8
  store i8 %4650, i8* %80, align 1
  %4651 = and i32 %4645, 255
  %4652 = tail call i32 @llvm.ctpop.i32(i32 %4651)
  %4653 = trunc i32 %4652 to i8
  %4654 = and i8 %4653, 1
  %4655 = xor i8 %4654, 1
  store i8 %4655, i8* %86, align 1
  %4656 = xor i64 %4642, %4613
  %4657 = trunc i64 %4656 to i32
  %4658 = xor i32 %4657, %4645
  %4659 = lshr i32 %4658, 4
  %4660 = trunc i32 %4659 to i8
  %4661 = and i8 %4660, 1
  store i8 %4661, i8* %91, align 1
  %4662 = icmp eq i32 %4645, 0
  %4663 = zext i1 %4662 to i8
  store i8 %4663, i8* %94, align 1
  %4664 = lshr i32 %4645, 31
  %4665 = trunc i32 %4664 to i8
  store i8 %4665, i8* %97, align 1
  %4666 = lshr i32 %4644, 31
  %4667 = xor i32 %4664, %4624
  %4668 = xor i32 %4664, %4666
  %4669 = add nuw nsw i32 %4667, %4668
  %4670 = icmp eq i32 %4669, 2
  %4671 = zext i1 %4670 to i8
  store i8 %4671, i8* %103, align 1
  %4672 = add i64 %4626, -76
  %4673 = add i64 %395, 1801
  store i64 %4673, i64* %3, align 8
  %4674 = inttoptr i64 %4672 to i32*
  %4675 = load i32, i32* %4674, align 4
  %4676 = add i32 %4675, %4645
  %4677 = zext i32 %4676 to i64
  store i64 %4677, i64* %RDX.i2544, align 8
  %4678 = icmp ult i32 %4676, %4645
  %4679 = icmp ult i32 %4676, %4675
  %4680 = or i1 %4678, %4679
  %4681 = zext i1 %4680 to i8
  store i8 %4681, i8* %80, align 1
  %4682 = and i32 %4676, 255
  %4683 = tail call i32 @llvm.ctpop.i32(i32 %4682)
  %4684 = trunc i32 %4683 to i8
  %4685 = and i8 %4684, 1
  %4686 = xor i8 %4685, 1
  store i8 %4686, i8* %86, align 1
  %4687 = xor i32 %4675, %4645
  %4688 = xor i32 %4687, %4676
  %4689 = lshr i32 %4688, 4
  %4690 = trunc i32 %4689 to i8
  %4691 = and i8 %4690, 1
  store i8 %4691, i8* %91, align 1
  %4692 = icmp eq i32 %4676, 0
  %4693 = zext i1 %4692 to i8
  store i8 %4693, i8* %94, align 1
  %4694 = lshr i32 %4676, 31
  %4695 = trunc i32 %4694 to i8
  store i8 %4695, i8* %97, align 1
  %4696 = lshr i32 %4675, 31
  %4697 = xor i32 %4694, %4664
  %4698 = xor i32 %4694, %4696
  %4699 = add nuw nsw i32 %4697, %4698
  %4700 = icmp eq i32 %4699, 2
  %4701 = zext i1 %4700 to i8
  store i8 %4701, i8* %103, align 1
  %4702 = sext i32 %4676 to i64
  store i64 %4702, i64* %RCX.i2541, align 8
  %4703 = load i64, i64* %RAX.i2556, align 8
  %4704 = shl nsw i64 %4702, 2
  %4705 = add i64 %4703, %4704
  %4706 = add i64 %395, 1809
  store i64 %4706, i64* %3, align 8
  %4707 = inttoptr i64 %4705 to i32*
  %4708 = load i32, i32* %4707, align 4
  store i32 %4708, i32* %200, align 1
  store float 0.000000e+00, float* %202, align 1
  store float 0.000000e+00, float* %204, align 1
  store float 0.000000e+00, float* %206, align 1
  %4709 = load i64, i64* %RBP.i, align 8
  %4710 = add i64 %4709, -40
  %4711 = add i64 %395, 1813
  store i64 %4711, i64* %3, align 8
  %4712 = inttoptr i64 %4710 to i64*
  %4713 = load i64, i64* %4712, align 8
  store i64 %4713, i64* %RAX.i2556, align 8
  %4714 = add i64 %395, 1816
  store i64 %4714, i64* %3, align 8
  %4715 = inttoptr i64 %4713 to i64*
  %4716 = load i64, i64* %4715, align 8
  store i64 %4716, i64* %RAX.i2556, align 8
  %4717 = add i64 %395, 1820
  store i64 %4717, i64* %3, align 8
  %4718 = load i64, i64* %4712, align 8
  store i64 %4718, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %80, align 1
  store i8 1, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  store i8 0, i8* %97, align 1
  store i8 0, i8* %103, align 1
  %4719 = add i64 %395, 1828
  store i64 %4719, i64* %3, align 8
  %4720 = load i64, i64* %4712, align 8
  store i64 %4720, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %80, align 1
  store i8 1, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  store i8 0, i8* %97, align 1
  store i8 0, i8* %103, align 1
  %4721 = add i64 %395, 1836
  store i64 %4721, i64* %3, align 8
  %4722 = load i64, i64* %4712, align 8
  store i64 %4722, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %80, align 1
  store i8 1, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  store i8 0, i8* %97, align 1
  store i8 0, i8* %103, align 1
  %4723 = add i64 %4709, -68
  %4724 = add i64 %395, 1843
  store i64 %4724, i64* %3, align 8
  %4725 = inttoptr i64 %4723 to i32*
  %4726 = load i32, i32* %4725, align 4
  %4727 = add i32 %4726, -1
  %4728 = zext i32 %4727 to i64
  store i64 %4728, i64* %RSI.i2547, align 8
  %4729 = icmp eq i32 %4726, 0
  %4730 = zext i1 %4729 to i8
  store i8 %4730, i8* %80, align 1
  %4731 = and i32 %4727, 255
  %4732 = tail call i32 @llvm.ctpop.i32(i32 %4731)
  %4733 = trunc i32 %4732 to i8
  %4734 = and i8 %4733, 1
  %4735 = xor i8 %4734, 1
  store i8 %4735, i8* %86, align 1
  %4736 = xor i32 %4727, %4726
  %4737 = lshr i32 %4736, 4
  %4738 = trunc i32 %4737 to i8
  %4739 = and i8 %4738, 1
  store i8 %4739, i8* %91, align 1
  %4740 = icmp eq i32 %4727, 0
  %4741 = zext i1 %4740 to i8
  store i8 %4741, i8* %94, align 1
  %4742 = lshr i32 %4727, 31
  %4743 = trunc i32 %4742 to i8
  store i8 %4743, i8* %97, align 1
  %4744 = lshr i32 %4726, 31
  %4745 = xor i32 %4742, %4744
  %4746 = add nuw nsw i32 %4745, %4744
  %4747 = icmp eq i32 %4746, 2
  %4748 = zext i1 %4747 to i8
  store i8 %4748, i8* %103, align 1
  %4749 = add i64 %395, 1850
  store i64 %4749, i64* %3, align 8
  %4750 = load i64, i64* %4712, align 8
  store i64 %4750, i64* %RCX.i2541, align 8
  %4751 = add i64 %4750, 16
  %4752 = add i64 %395, 1854
  store i64 %4752, i64* %3, align 8
  %4753 = inttoptr i64 %4751 to i32*
  %4754 = load i32, i32* %4753, align 4
  %4755 = sext i32 %4727 to i64
  %4756 = sext i32 %4754 to i64
  %4757 = mul nsw i64 %4756, %4755
  %4758 = trunc i64 %4757 to i32
  %4759 = and i64 %4757, 4294967295
  store i64 %4759, i64* %RSI.i2547, align 8
  %4760 = shl i64 %4757, 32
  %4761 = ashr exact i64 %4760, 32
  %4762 = icmp ne i64 %4761, %4757
  %4763 = zext i1 %4762 to i8
  store i8 %4763, i8* %80, align 1
  %4764 = and i32 %4758, 255
  %4765 = tail call i32 @llvm.ctpop.i32(i32 %4764)
  %4766 = trunc i32 %4765 to i8
  %4767 = and i8 %4766, 1
  %4768 = xor i8 %4767, 1
  store i8 %4768, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  %4769 = lshr i32 %4758, 31
  %4770 = trunc i32 %4769 to i8
  store i8 %4770, i8* %97, align 1
  store i8 %4763, i8* %103, align 1
  %4771 = load i64, i64* %RBP.i, align 8
  %4772 = add i64 %4771, -40
  %4773 = add i64 %395, 1858
  store i64 %4773, i64* %3, align 8
  %4774 = inttoptr i64 %4772 to i64*
  %4775 = load i64, i64* %4774, align 8
  store i64 %4775, i64* %RCX.i2541, align 8
  %4776 = add i64 %4775, 20
  %4777 = add i64 %395, 1862
  store i64 %4777, i64* %3, align 8
  %4778 = inttoptr i64 %4776 to i32*
  %4779 = load i32, i32* %4778, align 4
  %4780 = shl i64 %4757, 32
  %4781 = ashr exact i64 %4780, 32
  %4782 = sext i32 %4779 to i64
  %4783 = mul nsw i64 %4782, %4781
  %4784 = and i64 %4783, 4294967295
  store i64 %4784, i64* %RSI.i2547, align 8
  %4785 = load i64, i64* %RDX.i2544, align 8
  %4786 = trunc i64 %4783 to i32
  %4787 = trunc i64 %4785 to i32
  %4788 = add i32 %4786, %4787
  %4789 = zext i32 %4788 to i64
  store i64 %4789, i64* %RDX.i2544, align 8
  %4790 = icmp ult i32 %4788, %4787
  %4791 = icmp ult i32 %4788, %4786
  %4792 = or i1 %4790, %4791
  %4793 = zext i1 %4792 to i8
  store i8 %4793, i8* %80, align 1
  %4794 = and i32 %4788, 255
  %4795 = tail call i32 @llvm.ctpop.i32(i32 %4794)
  %4796 = trunc i32 %4795 to i8
  %4797 = and i8 %4796, 1
  %4798 = xor i8 %4797, 1
  store i8 %4798, i8* %86, align 1
  %4799 = xor i64 %4783, %4785
  %4800 = trunc i64 %4799 to i32
  %4801 = xor i32 %4800, %4788
  %4802 = lshr i32 %4801, 4
  %4803 = trunc i32 %4802 to i8
  %4804 = and i8 %4803, 1
  store i8 %4804, i8* %91, align 1
  %4805 = icmp eq i32 %4788, 0
  %4806 = zext i1 %4805 to i8
  store i8 %4806, i8* %94, align 1
  %4807 = lshr i32 %4788, 31
  %4808 = trunc i32 %4807 to i8
  store i8 %4808, i8* %97, align 1
  %4809 = lshr i32 %4787, 31
  %4810 = lshr i32 %4786, 31
  %4811 = xor i32 %4807, %4809
  %4812 = xor i32 %4807, %4810
  %4813 = add nuw nsw i32 %4811, %4812
  %4814 = icmp eq i32 %4813, 2
  %4815 = zext i1 %4814 to i8
  store i8 %4815, i8* %103, align 1
  %4816 = add i64 %4771, -72
  %4817 = add i64 %395, 1867
  store i64 %4817, i64* %3, align 8
  %4818 = inttoptr i64 %4816 to i32*
  %4819 = load i32, i32* %4818, align 4
  %4820 = zext i32 %4819 to i64
  store i64 %4820, i64* %RSI.i2547, align 8
  %4821 = add i64 %395, 1871
  store i64 %4821, i64* %3, align 8
  %4822 = load i64, i64* %4774, align 8
  store i64 %4822, i64* %RCX.i2541, align 8
  %4823 = add i64 %4822, 20
  %4824 = add i64 %395, 1875
  store i64 %4824, i64* %3, align 8
  %4825 = inttoptr i64 %4823 to i32*
  %4826 = load i32, i32* %4825, align 4
  %4827 = sext i32 %4819 to i64
  %4828 = sext i32 %4826 to i64
  %4829 = mul nsw i64 %4828, %4827
  %4830 = and i64 %4829, 4294967295
  store i64 %4830, i64* %RSI.i2547, align 8
  %4831 = trunc i64 %4829 to i32
  %4832 = add i32 %4831, %4788
  %4833 = zext i32 %4832 to i64
  store i64 %4833, i64* %RDX.i2544, align 8
  %4834 = icmp ult i32 %4832, %4788
  %4835 = icmp ult i32 %4832, %4831
  %4836 = or i1 %4834, %4835
  %4837 = zext i1 %4836 to i8
  store i8 %4837, i8* %80, align 1
  %4838 = and i32 %4832, 255
  %4839 = tail call i32 @llvm.ctpop.i32(i32 %4838)
  %4840 = trunc i32 %4839 to i8
  %4841 = and i8 %4840, 1
  %4842 = xor i8 %4841, 1
  store i8 %4842, i8* %86, align 1
  %4843 = xor i64 %4829, %4789
  %4844 = trunc i64 %4843 to i32
  %4845 = xor i32 %4844, %4832
  %4846 = lshr i32 %4845, 4
  %4847 = trunc i32 %4846 to i8
  %4848 = and i8 %4847, 1
  store i8 %4848, i8* %91, align 1
  %4849 = icmp eq i32 %4832, 0
  %4850 = zext i1 %4849 to i8
  store i8 %4850, i8* %94, align 1
  %4851 = lshr i32 %4832, 31
  %4852 = trunc i32 %4851 to i8
  store i8 %4852, i8* %97, align 1
  %4853 = lshr i32 %4831, 31
  %4854 = xor i32 %4851, %4807
  %4855 = xor i32 %4851, %4853
  %4856 = add nuw nsw i32 %4854, %4855
  %4857 = icmp eq i32 %4856, 2
  %4858 = zext i1 %4857 to i8
  store i8 %4858, i8* %103, align 1
  %4859 = load i64, i64* %RBP.i, align 8
  %4860 = add i64 %4859, -76
  %4861 = add i64 %395, 1880
  store i64 %4861, i64* %3, align 8
  %4862 = inttoptr i64 %4860 to i32*
  %4863 = load i32, i32* %4862, align 4
  %4864 = add i32 %4863, %4832
  %4865 = zext i32 %4864 to i64
  store i64 %4865, i64* %RDX.i2544, align 8
  %4866 = icmp ult i32 %4864, %4832
  %4867 = icmp ult i32 %4864, %4863
  %4868 = or i1 %4866, %4867
  %4869 = zext i1 %4868 to i8
  store i8 %4869, i8* %80, align 1
  %4870 = and i32 %4864, 255
  %4871 = tail call i32 @llvm.ctpop.i32(i32 %4870)
  %4872 = trunc i32 %4871 to i8
  %4873 = and i8 %4872, 1
  %4874 = xor i8 %4873, 1
  store i8 %4874, i8* %86, align 1
  %4875 = xor i32 %4863, %4832
  %4876 = xor i32 %4875, %4864
  %4877 = lshr i32 %4876, 4
  %4878 = trunc i32 %4877 to i8
  %4879 = and i8 %4878, 1
  store i8 %4879, i8* %91, align 1
  %4880 = icmp eq i32 %4864, 0
  %4881 = zext i1 %4880 to i8
  store i8 %4881, i8* %94, align 1
  %4882 = lshr i32 %4864, 31
  %4883 = trunc i32 %4882 to i8
  store i8 %4883, i8* %97, align 1
  %4884 = lshr i32 %4863, 31
  %4885 = xor i32 %4882, %4851
  %4886 = xor i32 %4882, %4884
  %4887 = add nuw nsw i32 %4885, %4886
  %4888 = icmp eq i32 %4887, 2
  %4889 = zext i1 %4888 to i8
  store i8 %4889, i8* %103, align 1
  %4890 = sext i32 %4864 to i64
  store i64 %4890, i64* %RCX.i2541, align 8
  %4891 = load i64, i64* %RAX.i2556, align 8
  %4892 = shl nsw i64 %4890, 2
  %4893 = add i64 %4891, %4892
  %4894 = add i64 %395, 1888
  store i64 %4894, i64* %3, align 8
  %4895 = load <2 x float>, <2 x float>* %207, align 1
  %4896 = load <2 x i32>, <2 x i32>* %208, align 1
  %4897 = inttoptr i64 %4893 to float*
  %4898 = load float, float* %4897, align 4
  %4899 = extractelement <2 x float> %4895, i32 0
  %4900 = fmul float %4899, %4898
  store float %4900, float* %199, align 1
  %4901 = bitcast <2 x float> %4895 to <2 x i32>
  %4902 = extractelement <2 x i32> %4901, i32 1
  store i32 %4902, i32* %209, align 1
  %4903 = extractelement <2 x i32> %4896, i32 0
  store i32 %4903, i32* %210, align 1
  %4904 = extractelement <2 x i32> %4896, i32 1
  store i32 %4904, i32* %211, align 1
  %4905 = load <2 x float>, <2 x float>* %191, align 1
  %4906 = load <2 x i32>, <2 x i32>* %196, align 1
  %4907 = load <2 x float>, <2 x float>* %207, align 1
  %4908 = extractelement <2 x float> %4905, i32 0
  %4909 = extractelement <2 x float> %4907, i32 0
  %4910 = fadd float %4908, %4909
  store float %4910, float* %192, align 1
  %4911 = bitcast <2 x float> %4905 to <2 x i32>
  %4912 = extractelement <2 x i32> %4911, i32 1
  store i32 %4912, i32* %187, align 1
  %4913 = extractelement <2 x i32> %4906, i32 0
  store i32 %4913, i32* %188, align 1
  %4914 = extractelement <2 x i32> %4906, i32 1
  store i32 %4914, i32* %190, align 1
  %4915 = add i64 %4859, -32
  %4916 = add i64 %395, 1896
  store i64 %4916, i64* %3, align 8
  %4917 = inttoptr i64 %4915 to i64*
  %4918 = load i64, i64* %4917, align 8
  store i64 %4918, i64* %RAX.i2556, align 8
  %4919 = add i64 %395, 1899
  store i64 %4919, i64* %3, align 8
  %4920 = inttoptr i64 %4918 to i64*
  %4921 = load i64, i64* %4920, align 8
  store i64 %4921, i64* %RAX.i2556, align 8
  %4922 = add i64 %395, 1903
  store i64 %4922, i64* %3, align 8
  %4923 = load i64, i64* %4917, align 8
  store i64 %4923, i64* %RCX.i2541, align 8
  %4924 = add i64 %4923, 12
  %4925 = add i64 %395, 1906
  store i64 %4925, i64* %3, align 8
  %4926 = inttoptr i64 %4924 to i32*
  %4927 = load i32, i32* %4926, align 4
  %4928 = zext i32 %4927 to i64
  store i64 %4928, i64* %RDX.i2544, align 8
  %4929 = load i64, i64* %RBP.i, align 8
  %4930 = add i64 %4929, -32
  %4931 = add i64 %395, 1913
  store i64 %4931, i64* %3, align 8
  %4932 = inttoptr i64 %4930 to i64*
  %4933 = load i64, i64* %4932, align 8
  store i64 %4933, i64* %RCX.i2541, align 8
  %4934 = add i64 %4933, 16
  %4935 = add i64 %395, 1917
  store i64 %4935, i64* %3, align 8
  %4936 = inttoptr i64 %4934 to i32*
  %4937 = load i32, i32* %4936, align 4
  %4938 = sext i32 %4927 to i64
  %4939 = sext i32 %4937 to i64
  %4940 = mul nsw i64 %4939, %4938
  %4941 = trunc i64 %4940 to i32
  %4942 = and i64 %4940, 4294967295
  store i64 %4942, i64* %RDX.i2544, align 8
  %4943 = shl i64 %4940, 32
  %4944 = ashr exact i64 %4943, 32
  %4945 = icmp ne i64 %4944, %4940
  %4946 = zext i1 %4945 to i8
  store i8 %4946, i8* %80, align 1
  %4947 = and i32 %4941, 255
  %4948 = tail call i32 @llvm.ctpop.i32(i32 %4947)
  %4949 = trunc i32 %4948 to i8
  %4950 = and i8 %4949, 1
  %4951 = xor i8 %4950, 1
  store i8 %4951, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  %4952 = lshr i32 %4941, 31
  %4953 = trunc i32 %4952 to i8
  store i8 %4953, i8* %97, align 1
  store i8 %4946, i8* %103, align 1
  %4954 = add i64 %395, 1921
  store i64 %4954, i64* %3, align 8
  %4955 = load i64, i64* %4932, align 8
  store i64 %4955, i64* %RCX.i2541, align 8
  %4956 = add i64 %4955, 20
  %4957 = add i64 %395, 1925
  store i64 %4957, i64* %3, align 8
  %4958 = inttoptr i64 %4956 to i32*
  %4959 = load i32, i32* %4958, align 4
  %4960 = shl i64 %4940, 32
  %4961 = ashr exact i64 %4960, 32
  %4962 = sext i32 %4959 to i64
  %4963 = mul nsw i64 %4962, %4961
  %4964 = trunc i64 %4963 to i32
  %4965 = and i64 %4963, 4294967295
  store i64 %4965, i64* %RDX.i2544, align 8
  %4966 = shl i64 %4963, 32
  %4967 = ashr exact i64 %4966, 32
  %4968 = icmp ne i64 %4967, %4963
  %4969 = zext i1 %4968 to i8
  store i8 %4969, i8* %80, align 1
  %4970 = and i32 %4964, 255
  %4971 = tail call i32 @llvm.ctpop.i32(i32 %4970)
  %4972 = trunc i32 %4971 to i8
  %4973 = and i8 %4972, 1
  %4974 = xor i8 %4973, 1
  store i8 %4974, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  %4975 = lshr i32 %4964, 31
  %4976 = trunc i32 %4975 to i8
  store i8 %4976, i8* %97, align 1
  store i8 %4969, i8* %103, align 1
  %4977 = add i64 %4929, -68
  %4978 = add i64 %395, 1928
  store i64 %4978, i64* %3, align 8
  %4979 = inttoptr i64 %4977 to i32*
  %4980 = load i32, i32* %4979, align 4
  %4981 = zext i32 %4980 to i64
  store i64 %4981, i64* %RSI.i2547, align 8
  %4982 = add i64 %395, 1932
  store i64 %4982, i64* %3, align 8
  %4983 = load i64, i64* %4932, align 8
  store i64 %4983, i64* %RCX.i2541, align 8
  %4984 = add i64 %4983, 16
  %4985 = add i64 %395, 1936
  store i64 %4985, i64* %3, align 8
  %4986 = inttoptr i64 %4984 to i32*
  %4987 = load i32, i32* %4986, align 4
  %4988 = sext i32 %4980 to i64
  %4989 = sext i32 %4987 to i64
  %4990 = mul nsw i64 %4989, %4988
  %4991 = trunc i64 %4990 to i32
  %4992 = and i64 %4990, 4294967295
  store i64 %4992, i64* %RSI.i2547, align 8
  %4993 = shl i64 %4990, 32
  %4994 = ashr exact i64 %4993, 32
  %4995 = icmp ne i64 %4994, %4990
  %4996 = zext i1 %4995 to i8
  store i8 %4996, i8* %80, align 1
  %4997 = and i32 %4991, 255
  %4998 = tail call i32 @llvm.ctpop.i32(i32 %4997)
  %4999 = trunc i32 %4998 to i8
  %5000 = and i8 %4999, 1
  %5001 = xor i8 %5000, 1
  store i8 %5001, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  %5002 = lshr i32 %4991, 31
  %5003 = trunc i32 %5002 to i8
  store i8 %5003, i8* %97, align 1
  store i8 %4996, i8* %103, align 1
  %5004 = load i64, i64* %RBP.i, align 8
  %5005 = add i64 %5004, -32
  %5006 = add i64 %395, 1940
  store i64 %5006, i64* %3, align 8
  %5007 = inttoptr i64 %5005 to i64*
  %5008 = load i64, i64* %5007, align 8
  store i64 %5008, i64* %RCX.i2541, align 8
  %5009 = add i64 %5008, 20
  %5010 = add i64 %395, 1944
  store i64 %5010, i64* %3, align 8
  %5011 = inttoptr i64 %5009 to i32*
  %5012 = load i32, i32* %5011, align 4
  %5013 = shl i64 %4990, 32
  %5014 = ashr exact i64 %5013, 32
  %5015 = sext i32 %5012 to i64
  %5016 = mul nsw i64 %5015, %5014
  %5017 = and i64 %5016, 4294967295
  store i64 %5017, i64* %RSI.i2547, align 8
  %5018 = trunc i64 %5016 to i32
  %5019 = trunc i64 %4963 to i32
  %5020 = add i32 %5018, %5019
  %5021 = zext i32 %5020 to i64
  store i64 %5021, i64* %RDX.i2544, align 8
  %5022 = icmp ult i32 %5020, %5019
  %5023 = icmp ult i32 %5020, %5018
  %5024 = or i1 %5022, %5023
  %5025 = zext i1 %5024 to i8
  store i8 %5025, i8* %80, align 1
  %5026 = and i32 %5020, 255
  %5027 = tail call i32 @llvm.ctpop.i32(i32 %5026)
  %5028 = trunc i32 %5027 to i8
  %5029 = and i8 %5028, 1
  %5030 = xor i8 %5029, 1
  store i8 %5030, i8* %86, align 1
  %5031 = xor i64 %5016, %4963
  %5032 = trunc i64 %5031 to i32
  %5033 = xor i32 %5032, %5020
  %5034 = lshr i32 %5033, 4
  %5035 = trunc i32 %5034 to i8
  %5036 = and i8 %5035, 1
  store i8 %5036, i8* %91, align 1
  %5037 = icmp eq i32 %5020, 0
  %5038 = zext i1 %5037 to i8
  store i8 %5038, i8* %94, align 1
  %5039 = lshr i32 %5020, 31
  %5040 = trunc i32 %5039 to i8
  store i8 %5040, i8* %97, align 1
  %5041 = lshr i32 %5019, 31
  %5042 = lshr i32 %5018, 31
  %5043 = xor i32 %5039, %5041
  %5044 = xor i32 %5039, %5042
  %5045 = add nuw nsw i32 %5043, %5044
  %5046 = icmp eq i32 %5045, 2
  %5047 = zext i1 %5046 to i8
  store i8 %5047, i8* %103, align 1
  %5048 = add i64 %5004, -72
  %5049 = add i64 %395, 1949
  store i64 %5049, i64* %3, align 8
  %5050 = inttoptr i64 %5048 to i32*
  %5051 = load i32, i32* %5050, align 4
  %5052 = zext i32 %5051 to i64
  store i64 %5052, i64* %RSI.i2547, align 8
  %5053 = add i64 %395, 1953
  store i64 %5053, i64* %3, align 8
  %5054 = load i64, i64* %5007, align 8
  store i64 %5054, i64* %RCX.i2541, align 8
  %5055 = add i64 %5054, 20
  %5056 = add i64 %395, 1957
  store i64 %5056, i64* %3, align 8
  %5057 = inttoptr i64 %5055 to i32*
  %5058 = load i32, i32* %5057, align 4
  %5059 = sext i32 %5051 to i64
  %5060 = sext i32 %5058 to i64
  %5061 = mul nsw i64 %5060, %5059
  %5062 = and i64 %5061, 4294967295
  store i64 %5062, i64* %RSI.i2547, align 8
  %5063 = trunc i64 %5061 to i32
  %5064 = add i32 %5063, %5020
  %5065 = zext i32 %5064 to i64
  store i64 %5065, i64* %RDX.i2544, align 8
  %5066 = icmp ult i32 %5064, %5020
  %5067 = icmp ult i32 %5064, %5063
  %5068 = or i1 %5066, %5067
  %5069 = zext i1 %5068 to i8
  store i8 %5069, i8* %80, align 1
  %5070 = and i32 %5064, 255
  %5071 = tail call i32 @llvm.ctpop.i32(i32 %5070)
  %5072 = trunc i32 %5071 to i8
  %5073 = and i8 %5072, 1
  %5074 = xor i8 %5073, 1
  store i8 %5074, i8* %86, align 1
  %5075 = xor i64 %5061, %5021
  %5076 = trunc i64 %5075 to i32
  %5077 = xor i32 %5076, %5064
  %5078 = lshr i32 %5077, 4
  %5079 = trunc i32 %5078 to i8
  %5080 = and i8 %5079, 1
  store i8 %5080, i8* %91, align 1
  %5081 = icmp eq i32 %5064, 0
  %5082 = zext i1 %5081 to i8
  store i8 %5082, i8* %94, align 1
  %5083 = lshr i32 %5064, 31
  %5084 = trunc i32 %5083 to i8
  store i8 %5084, i8* %97, align 1
  %5085 = lshr i32 %5063, 31
  %5086 = xor i32 %5083, %5039
  %5087 = xor i32 %5083, %5085
  %5088 = add nuw nsw i32 %5086, %5087
  %5089 = icmp eq i32 %5088, 2
  %5090 = zext i1 %5089 to i8
  store i8 %5090, i8* %103, align 1
  %5091 = load i64, i64* %RBP.i, align 8
  %5092 = add i64 %5091, -76
  %5093 = add i64 %395, 1962
  store i64 %5093, i64* %3, align 8
  %5094 = inttoptr i64 %5092 to i32*
  %5095 = load i32, i32* %5094, align 4
  %5096 = add i32 %5095, %5064
  %5097 = zext i32 %5096 to i64
  store i64 %5097, i64* %RDX.i2544, align 8
  %5098 = icmp ult i32 %5096, %5064
  %5099 = icmp ult i32 %5096, %5095
  %5100 = or i1 %5098, %5099
  %5101 = zext i1 %5100 to i8
  store i8 %5101, i8* %80, align 1
  %5102 = and i32 %5096, 255
  %5103 = tail call i32 @llvm.ctpop.i32(i32 %5102)
  %5104 = trunc i32 %5103 to i8
  %5105 = and i8 %5104, 1
  %5106 = xor i8 %5105, 1
  store i8 %5106, i8* %86, align 1
  %5107 = xor i32 %5095, %5064
  %5108 = xor i32 %5107, %5096
  %5109 = lshr i32 %5108, 4
  %5110 = trunc i32 %5109 to i8
  %5111 = and i8 %5110, 1
  store i8 %5111, i8* %91, align 1
  %5112 = icmp eq i32 %5096, 0
  %5113 = zext i1 %5112 to i8
  store i8 %5113, i8* %94, align 1
  %5114 = lshr i32 %5096, 31
  %5115 = trunc i32 %5114 to i8
  store i8 %5115, i8* %97, align 1
  %5116 = lshr i32 %5095, 31
  %5117 = xor i32 %5114, %5083
  %5118 = xor i32 %5114, %5116
  %5119 = add nuw nsw i32 %5117, %5118
  %5120 = icmp eq i32 %5119, 2
  %5121 = zext i1 %5120 to i8
  store i8 %5121, i8* %103, align 1
  %5122 = sext i32 %5096 to i64
  store i64 %5122, i64* %RCX.i2541, align 8
  %5123 = load i64, i64* %RAX.i2556, align 8
  %5124 = shl nsw i64 %5122, 2
  %5125 = add i64 %5123, %5124
  %5126 = add i64 %395, 1970
  store i64 %5126, i64* %3, align 8
  %5127 = inttoptr i64 %5125 to i32*
  %5128 = load i32, i32* %5127, align 4
  store i32 %5128, i32* %200, align 1
  store float 0.000000e+00, float* %202, align 1
  store float 0.000000e+00, float* %204, align 1
  store float 0.000000e+00, float* %206, align 1
  %5129 = add i64 %5091, -40
  %5130 = add i64 %395, 1974
  store i64 %5130, i64* %3, align 8
  %5131 = inttoptr i64 %5129 to i64*
  %5132 = load i64, i64* %5131, align 8
  store i64 %5132, i64* %RAX.i2556, align 8
  %5133 = add i64 %395, 1977
  store i64 %5133, i64* %3, align 8
  %5134 = inttoptr i64 %5132 to i64*
  %5135 = load i64, i64* %5134, align 8
  store i64 %5135, i64* %RAX.i2556, align 8
  %5136 = add i64 %395, 1981
  store i64 %5136, i64* %3, align 8
  %5137 = load i64, i64* %5131, align 8
  store i64 %5137, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %80, align 1
  store i8 1, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  store i8 0, i8* %97, align 1
  store i8 0, i8* %103, align 1
  %5138 = add i64 %395, 1989
  store i64 %5138, i64* %3, align 8
  %5139 = load i64, i64* %5131, align 8
  store i64 %5139, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %80, align 1
  store i8 1, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  store i8 0, i8* %97, align 1
  store i8 0, i8* %103, align 1
  %5140 = add i64 %395, 1997
  store i64 %5140, i64* %3, align 8
  %5141 = load i64, i64* %5131, align 8
  store i64 %5141, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %80, align 1
  store i8 1, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  store i8 0, i8* %97, align 1
  store i8 0, i8* %103, align 1
  %5142 = load i64, i64* %RBP.i, align 8
  %5143 = add i64 %5142, -68
  %5144 = add i64 %395, 2004
  store i64 %5144, i64* %3, align 8
  %5145 = inttoptr i64 %5143 to i32*
  %5146 = load i32, i32* %5145, align 4
  %5147 = zext i32 %5146 to i64
  store i64 %5147, i64* %RSI.i2547, align 8
  %5148 = add i64 %5142, -40
  %5149 = add i64 %395, 2008
  store i64 %5149, i64* %3, align 8
  %5150 = inttoptr i64 %5148 to i64*
  %5151 = load i64, i64* %5150, align 8
  store i64 %5151, i64* %RCX.i2541, align 8
  %5152 = add i64 %5151, 16
  %5153 = add i64 %395, 2012
  store i64 %5153, i64* %3, align 8
  %5154 = inttoptr i64 %5152 to i32*
  %5155 = load i32, i32* %5154, align 4
  %5156 = sext i32 %5146 to i64
  %5157 = sext i32 %5155 to i64
  %5158 = mul nsw i64 %5157, %5156
  %5159 = trunc i64 %5158 to i32
  %5160 = and i64 %5158, 4294967295
  store i64 %5160, i64* %RSI.i2547, align 8
  %5161 = shl i64 %5158, 32
  %5162 = ashr exact i64 %5161, 32
  %5163 = icmp ne i64 %5162, %5158
  %5164 = zext i1 %5163 to i8
  store i8 %5164, i8* %80, align 1
  %5165 = and i32 %5159, 255
  %5166 = tail call i32 @llvm.ctpop.i32(i32 %5165)
  %5167 = trunc i32 %5166 to i8
  %5168 = and i8 %5167, 1
  %5169 = xor i8 %5168, 1
  store i8 %5169, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  %5170 = lshr i32 %5159, 31
  %5171 = trunc i32 %5170 to i8
  store i8 %5171, i8* %97, align 1
  store i8 %5164, i8* %103, align 1
  %5172 = add i64 %395, 2016
  store i64 %5172, i64* %3, align 8
  %5173 = load i64, i64* %5150, align 8
  store i64 %5173, i64* %RCX.i2541, align 8
  %5174 = add i64 %5173, 20
  %5175 = add i64 %395, 2020
  store i64 %5175, i64* %3, align 8
  %5176 = inttoptr i64 %5174 to i32*
  %5177 = load i32, i32* %5176, align 4
  %5178 = shl i64 %5158, 32
  %5179 = ashr exact i64 %5178, 32
  %5180 = sext i32 %5177 to i64
  %5181 = mul nsw i64 %5180, %5179
  %5182 = and i64 %5181, 4294967295
  store i64 %5182, i64* %RSI.i2547, align 8
  %5183 = trunc i64 %5181 to i32
  %5184 = and i64 %5181, 4294967295
  store i64 %5184, i64* %RDX.i2544, align 8
  store i8 0, i8* %80, align 1
  %5185 = and i32 %5183, 255
  %5186 = tail call i32 @llvm.ctpop.i32(i32 %5185)
  %5187 = trunc i32 %5186 to i8
  %5188 = and i8 %5187, 1
  %5189 = xor i8 %5188, 1
  store i8 %5189, i8* %86, align 1
  store i8 0, i8* %91, align 1
  %5190 = icmp eq i32 %5183, 0
  %5191 = zext i1 %5190 to i8
  store i8 %5191, i8* %94, align 1
  %5192 = lshr i32 %5183, 31
  %5193 = trunc i32 %5192 to i8
  store i8 %5193, i8* %97, align 1
  store i8 0, i8* %103, align 1
  %5194 = add i64 %5142, -72
  %5195 = add i64 %395, 2025
  store i64 %5195, i64* %3, align 8
  %5196 = inttoptr i64 %5194 to i32*
  %5197 = load i32, i32* %5196, align 4
  %5198 = add i32 %5197, -1
  %5199 = zext i32 %5198 to i64
  store i64 %5199, i64* %RSI.i2547, align 8
  %5200 = icmp eq i32 %5197, 0
  %5201 = zext i1 %5200 to i8
  store i8 %5201, i8* %80, align 1
  %5202 = and i32 %5198, 255
  %5203 = tail call i32 @llvm.ctpop.i32(i32 %5202)
  %5204 = trunc i32 %5203 to i8
  %5205 = and i8 %5204, 1
  %5206 = xor i8 %5205, 1
  store i8 %5206, i8* %86, align 1
  %5207 = xor i32 %5198, %5197
  %5208 = lshr i32 %5207, 4
  %5209 = trunc i32 %5208 to i8
  %5210 = and i8 %5209, 1
  store i8 %5210, i8* %91, align 1
  %5211 = icmp eq i32 %5198, 0
  %5212 = zext i1 %5211 to i8
  store i8 %5212, i8* %94, align 1
  %5213 = lshr i32 %5198, 31
  %5214 = trunc i32 %5213 to i8
  store i8 %5214, i8* %97, align 1
  %5215 = lshr i32 %5197, 31
  %5216 = xor i32 %5213, %5215
  %5217 = add nuw nsw i32 %5216, %5215
  %5218 = icmp eq i32 %5217, 2
  %5219 = zext i1 %5218 to i8
  store i8 %5219, i8* %103, align 1
  %5220 = load i64, i64* %RBP.i, align 8
  %5221 = add i64 %5220, -40
  %5222 = add i64 %395, 2032
  store i64 %5222, i64* %3, align 8
  %5223 = inttoptr i64 %5221 to i64*
  %5224 = load i64, i64* %5223, align 8
  store i64 %5224, i64* %RCX.i2541, align 8
  %5225 = add i64 %5224, 20
  %5226 = add i64 %395, 2036
  store i64 %5226, i64* %3, align 8
  %5227 = inttoptr i64 %5225 to i32*
  %5228 = load i32, i32* %5227, align 4
  %5229 = sext i32 %5198 to i64
  %5230 = sext i32 %5228 to i64
  %5231 = mul nsw i64 %5230, %5229
  %5232 = and i64 %5231, 4294967295
  store i64 %5232, i64* %RSI.i2547, align 8
  %5233 = trunc i64 %5231 to i32
  %5234 = add i32 %5233, %5183
  %5235 = zext i32 %5234 to i64
  store i64 %5235, i64* %RDX.i2544, align 8
  %5236 = icmp ult i32 %5234, %5183
  %5237 = icmp ult i32 %5234, %5233
  %5238 = or i1 %5236, %5237
  %5239 = zext i1 %5238 to i8
  store i8 %5239, i8* %80, align 1
  %5240 = and i32 %5234, 255
  %5241 = tail call i32 @llvm.ctpop.i32(i32 %5240)
  %5242 = trunc i32 %5241 to i8
  %5243 = and i8 %5242, 1
  %5244 = xor i8 %5243, 1
  store i8 %5244, i8* %86, align 1
  %5245 = xor i64 %5231, %5181
  %5246 = trunc i64 %5245 to i32
  %5247 = xor i32 %5246, %5234
  %5248 = lshr i32 %5247, 4
  %5249 = trunc i32 %5248 to i8
  %5250 = and i8 %5249, 1
  store i8 %5250, i8* %91, align 1
  %5251 = icmp eq i32 %5234, 0
  %5252 = zext i1 %5251 to i8
  store i8 %5252, i8* %94, align 1
  %5253 = lshr i32 %5234, 31
  %5254 = trunc i32 %5253 to i8
  store i8 %5254, i8* %97, align 1
  %5255 = lshr i32 %5233, 31
  %5256 = xor i32 %5253, %5192
  %5257 = xor i32 %5253, %5255
  %5258 = add nuw nsw i32 %5256, %5257
  %5259 = icmp eq i32 %5258, 2
  %5260 = zext i1 %5259 to i8
  store i8 %5260, i8* %103, align 1
  %5261 = add i64 %5220, -76
  %5262 = add i64 %395, 2041
  store i64 %5262, i64* %3, align 8
  %5263 = inttoptr i64 %5261 to i32*
  %5264 = load i32, i32* %5263, align 4
  %5265 = add i32 %5264, %5234
  %5266 = zext i32 %5265 to i64
  store i64 %5266, i64* %RDX.i2544, align 8
  %5267 = icmp ult i32 %5265, %5234
  %5268 = icmp ult i32 %5265, %5264
  %5269 = or i1 %5267, %5268
  %5270 = zext i1 %5269 to i8
  store i8 %5270, i8* %80, align 1
  %5271 = and i32 %5265, 255
  %5272 = tail call i32 @llvm.ctpop.i32(i32 %5271)
  %5273 = trunc i32 %5272 to i8
  %5274 = and i8 %5273, 1
  %5275 = xor i8 %5274, 1
  store i8 %5275, i8* %86, align 1
  %5276 = xor i32 %5264, %5234
  %5277 = xor i32 %5276, %5265
  %5278 = lshr i32 %5277, 4
  %5279 = trunc i32 %5278 to i8
  %5280 = and i8 %5279, 1
  store i8 %5280, i8* %91, align 1
  %5281 = icmp eq i32 %5265, 0
  %5282 = zext i1 %5281 to i8
  store i8 %5282, i8* %94, align 1
  %5283 = lshr i32 %5265, 31
  %5284 = trunc i32 %5283 to i8
  store i8 %5284, i8* %97, align 1
  %5285 = lshr i32 %5264, 31
  %5286 = xor i32 %5283, %5253
  %5287 = xor i32 %5283, %5285
  %5288 = add nuw nsw i32 %5286, %5287
  %5289 = icmp eq i32 %5288, 2
  %5290 = zext i1 %5289 to i8
  store i8 %5290, i8* %103, align 1
  %5291 = sext i32 %5265 to i64
  store i64 %5291, i64* %RCX.i2541, align 8
  %5292 = load i64, i64* %RAX.i2556, align 8
  %5293 = shl nsw i64 %5291, 2
  %5294 = add i64 %5292, %5293
  %5295 = add i64 %395, 2049
  store i64 %5295, i64* %3, align 8
  %5296 = load <2 x float>, <2 x float>* %207, align 1
  %5297 = load <2 x i32>, <2 x i32>* %208, align 1
  %5298 = inttoptr i64 %5294 to float*
  %5299 = load float, float* %5298, align 4
  %5300 = extractelement <2 x float> %5296, i32 0
  %5301 = fmul float %5300, %5299
  store float %5301, float* %199, align 1
  %5302 = bitcast <2 x float> %5296 to <2 x i32>
  %5303 = extractelement <2 x i32> %5302, i32 1
  store i32 %5303, i32* %209, align 1
  %5304 = extractelement <2 x i32> %5297, i32 0
  store i32 %5304, i32* %210, align 1
  %5305 = extractelement <2 x i32> %5297, i32 1
  store i32 %5305, i32* %211, align 1
  %5306 = load <2 x float>, <2 x float>* %191, align 1
  %5307 = load <2 x i32>, <2 x i32>* %196, align 1
  %5308 = load <2 x float>, <2 x float>* %207, align 1
  %5309 = extractelement <2 x float> %5306, i32 0
  %5310 = extractelement <2 x float> %5308, i32 0
  %5311 = fadd float %5309, %5310
  store float %5311, float* %192, align 1
  %5312 = bitcast <2 x float> %5306 to <2 x i32>
  %5313 = extractelement <2 x i32> %5312, i32 1
  store i32 %5313, i32* %187, align 1
  %5314 = extractelement <2 x i32> %5307, i32 0
  store i32 %5314, i32* %188, align 1
  %5315 = extractelement <2 x i32> %5307, i32 1
  store i32 %5315, i32* %190, align 1
  %5316 = load i64, i64* %RBP.i, align 8
  %5317 = add i64 %5316, -32
  %5318 = add i64 %395, 2057
  store i64 %5318, i64* %3, align 8
  %5319 = inttoptr i64 %5317 to i64*
  %5320 = load i64, i64* %5319, align 8
  store i64 %5320, i64* %RAX.i2556, align 8
  %5321 = add i64 %395, 2060
  store i64 %5321, i64* %3, align 8
  %5322 = inttoptr i64 %5320 to i64*
  %5323 = load i64, i64* %5322, align 8
  store i64 %5323, i64* %RAX.i2556, align 8
  %5324 = add i64 %395, 2064
  store i64 %5324, i64* %3, align 8
  %5325 = load i64, i64* %5319, align 8
  store i64 %5325, i64* %RCX.i2541, align 8
  %5326 = add i64 %5325, 12
  %5327 = add i64 %395, 2067
  store i64 %5327, i64* %3, align 8
  %5328 = inttoptr i64 %5326 to i32*
  %5329 = load i32, i32* %5328, align 4
  %5330 = shl i32 %5329, 1
  %5331 = icmp slt i32 %5329, 0
  %5332 = icmp slt i32 %5330, 0
  %5333 = xor i1 %5331, %5332
  %5334 = zext i32 %5330 to i64
  store i64 %5334, i64* %RDX.i2544, align 8
  %.lobit8 = lshr i32 %5329, 31
  %5335 = trunc i32 %.lobit8 to i8
  store i8 %5335, i8* %80, align 1
  %5336 = and i32 %5330, 254
  %5337 = tail call i32 @llvm.ctpop.i32(i32 %5336)
  %5338 = trunc i32 %5337 to i8
  %5339 = and i8 %5338, 1
  %5340 = xor i8 %5339, 1
  store i8 %5340, i8* %86, align 1
  store i8 0, i8* %91, align 1
  %5341 = icmp eq i32 %5330, 0
  %5342 = zext i1 %5341 to i8
  store i8 %5342, i8* %94, align 1
  %5343 = lshr i32 %5329, 30
  %5344 = trunc i32 %5343 to i8
  %5345 = and i8 %5344, 1
  store i8 %5345, i8* %97, align 1
  %5346 = zext i1 %5333 to i8
  store i8 %5346, i8* %103, align 1
  %5347 = add i64 %395, 2073
  store i64 %5347, i64* %3, align 8
  %5348 = load i64, i64* %5319, align 8
  store i64 %5348, i64* %RCX.i2541, align 8
  %5349 = add i64 %5348, 16
  %5350 = add i64 %395, 2077
  store i64 %5350, i64* %3, align 8
  %5351 = inttoptr i64 %5349 to i32*
  %5352 = load i32, i32* %5351, align 4
  %5353 = sext i32 %5330 to i64
  %5354 = sext i32 %5352 to i64
  %5355 = mul nsw i64 %5354, %5353
  %5356 = trunc i64 %5355 to i32
  %5357 = and i64 %5355, 4294967294
  store i64 %5357, i64* %RDX.i2544, align 8
  %5358 = shl i64 %5355, 32
  %5359 = ashr exact i64 %5358, 32
  %5360 = icmp ne i64 %5359, %5355
  %5361 = zext i1 %5360 to i8
  store i8 %5361, i8* %80, align 1
  %5362 = and i32 %5356, 254
  %5363 = tail call i32 @llvm.ctpop.i32(i32 %5362)
  %5364 = trunc i32 %5363 to i8
  %5365 = and i8 %5364, 1
  %5366 = xor i8 %5365, 1
  store i8 %5366, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  %5367 = lshr i32 %5356, 31
  %5368 = trunc i32 %5367 to i8
  store i8 %5368, i8* %97, align 1
  store i8 %5361, i8* %103, align 1
  %5369 = add i64 %395, 2081
  store i64 %5369, i64* %3, align 8
  %5370 = load i64, i64* %5319, align 8
  store i64 %5370, i64* %RCX.i2541, align 8
  %5371 = add i64 %5370, 20
  %5372 = add i64 %395, 2085
  store i64 %5372, i64* %3, align 8
  %5373 = inttoptr i64 %5371 to i32*
  %5374 = load i32, i32* %5373, align 4
  %5375 = shl i64 %5355, 32
  %5376 = ashr exact i64 %5375, 32
  %5377 = sext i32 %5374 to i64
  %5378 = mul nsw i64 %5377, %5376
  %5379 = trunc i64 %5378 to i32
  %5380 = and i64 %5378, 4294967295
  store i64 %5380, i64* %RDX.i2544, align 8
  %5381 = shl i64 %5378, 32
  %5382 = ashr exact i64 %5381, 32
  %5383 = icmp ne i64 %5382, %5378
  %5384 = zext i1 %5383 to i8
  store i8 %5384, i8* %80, align 1
  %5385 = and i32 %5379, 255
  %5386 = tail call i32 @llvm.ctpop.i32(i32 %5385)
  %5387 = trunc i32 %5386 to i8
  %5388 = and i8 %5387, 1
  %5389 = xor i8 %5388, 1
  store i8 %5389, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  %5390 = lshr i32 %5379, 31
  %5391 = trunc i32 %5390 to i8
  store i8 %5391, i8* %97, align 1
  store i8 %5384, i8* %103, align 1
  %5392 = load i64, i64* %RBP.i, align 8
  %5393 = add i64 %5392, -68
  %5394 = add i64 %395, 2088
  store i64 %5394, i64* %3, align 8
  %5395 = inttoptr i64 %5393 to i32*
  %5396 = load i32, i32* %5395, align 4
  %5397 = zext i32 %5396 to i64
  store i64 %5397, i64* %RSI.i2547, align 8
  %5398 = add i64 %5392, -32
  %5399 = add i64 %395, 2092
  store i64 %5399, i64* %3, align 8
  %5400 = inttoptr i64 %5398 to i64*
  %5401 = load i64, i64* %5400, align 8
  store i64 %5401, i64* %RCX.i2541, align 8
  %5402 = add i64 %5401, 16
  %5403 = add i64 %395, 2096
  store i64 %5403, i64* %3, align 8
  %5404 = inttoptr i64 %5402 to i32*
  %5405 = load i32, i32* %5404, align 4
  %5406 = sext i32 %5396 to i64
  %5407 = sext i32 %5405 to i64
  %5408 = mul nsw i64 %5407, %5406
  %5409 = trunc i64 %5408 to i32
  %5410 = and i64 %5408, 4294967295
  store i64 %5410, i64* %RSI.i2547, align 8
  %5411 = shl i64 %5408, 32
  %5412 = ashr exact i64 %5411, 32
  %5413 = icmp ne i64 %5412, %5408
  %5414 = zext i1 %5413 to i8
  store i8 %5414, i8* %80, align 1
  %5415 = and i32 %5409, 255
  %5416 = tail call i32 @llvm.ctpop.i32(i32 %5415)
  %5417 = trunc i32 %5416 to i8
  %5418 = and i8 %5417, 1
  %5419 = xor i8 %5418, 1
  store i8 %5419, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  %5420 = lshr i32 %5409, 31
  %5421 = trunc i32 %5420 to i8
  store i8 %5421, i8* %97, align 1
  store i8 %5414, i8* %103, align 1
  %5422 = add i64 %395, 2100
  store i64 %5422, i64* %3, align 8
  %5423 = load i64, i64* %5400, align 8
  store i64 %5423, i64* %RCX.i2541, align 8
  %5424 = add i64 %5423, 20
  %5425 = add i64 %395, 2104
  store i64 %5425, i64* %3, align 8
  %5426 = inttoptr i64 %5424 to i32*
  %5427 = load i32, i32* %5426, align 4
  %5428 = shl i64 %5408, 32
  %5429 = ashr exact i64 %5428, 32
  %5430 = sext i32 %5427 to i64
  %5431 = mul nsw i64 %5430, %5429
  %5432 = and i64 %5431, 4294967295
  store i64 %5432, i64* %RSI.i2547, align 8
  %5433 = trunc i64 %5431 to i32
  %5434 = trunc i64 %5378 to i32
  %5435 = add i32 %5433, %5434
  %5436 = zext i32 %5435 to i64
  store i64 %5436, i64* %RDX.i2544, align 8
  %5437 = icmp ult i32 %5435, %5434
  %5438 = icmp ult i32 %5435, %5433
  %5439 = or i1 %5437, %5438
  %5440 = zext i1 %5439 to i8
  store i8 %5440, i8* %80, align 1
  %5441 = and i32 %5435, 255
  %5442 = tail call i32 @llvm.ctpop.i32(i32 %5441)
  %5443 = trunc i32 %5442 to i8
  %5444 = and i8 %5443, 1
  %5445 = xor i8 %5444, 1
  store i8 %5445, i8* %86, align 1
  %5446 = xor i64 %5431, %5378
  %5447 = trunc i64 %5446 to i32
  %5448 = xor i32 %5447, %5435
  %5449 = lshr i32 %5448, 4
  %5450 = trunc i32 %5449 to i8
  %5451 = and i8 %5450, 1
  store i8 %5451, i8* %91, align 1
  %5452 = icmp eq i32 %5435, 0
  %5453 = zext i1 %5452 to i8
  store i8 %5453, i8* %94, align 1
  %5454 = lshr i32 %5435, 31
  %5455 = trunc i32 %5454 to i8
  store i8 %5455, i8* %97, align 1
  %5456 = lshr i32 %5434, 31
  %5457 = lshr i32 %5433, 31
  %5458 = xor i32 %5454, %5456
  %5459 = xor i32 %5454, %5457
  %5460 = add nuw nsw i32 %5458, %5459
  %5461 = icmp eq i32 %5460, 2
  %5462 = zext i1 %5461 to i8
  store i8 %5462, i8* %103, align 1
  %5463 = load i64, i64* %RBP.i, align 8
  %5464 = add i64 %5463, -72
  %5465 = add i64 %395, 2109
  store i64 %5465, i64* %3, align 8
  %5466 = inttoptr i64 %5464 to i32*
  %5467 = load i32, i32* %5466, align 4
  %5468 = zext i32 %5467 to i64
  store i64 %5468, i64* %RSI.i2547, align 8
  %5469 = add i64 %5463, -32
  %5470 = add i64 %395, 2113
  store i64 %5470, i64* %3, align 8
  %5471 = inttoptr i64 %5469 to i64*
  %5472 = load i64, i64* %5471, align 8
  store i64 %5472, i64* %RCX.i2541, align 8
  %5473 = add i64 %5472, 20
  %5474 = add i64 %395, 2117
  store i64 %5474, i64* %3, align 8
  %5475 = inttoptr i64 %5473 to i32*
  %5476 = load i32, i32* %5475, align 4
  %5477 = sext i32 %5467 to i64
  %5478 = sext i32 %5476 to i64
  %5479 = mul nsw i64 %5478, %5477
  %5480 = and i64 %5479, 4294967295
  store i64 %5480, i64* %RSI.i2547, align 8
  %5481 = trunc i64 %5479 to i32
  %5482 = add i32 %5481, %5435
  %5483 = zext i32 %5482 to i64
  store i64 %5483, i64* %RDX.i2544, align 8
  %5484 = icmp ult i32 %5482, %5435
  %5485 = icmp ult i32 %5482, %5481
  %5486 = or i1 %5484, %5485
  %5487 = zext i1 %5486 to i8
  store i8 %5487, i8* %80, align 1
  %5488 = and i32 %5482, 255
  %5489 = tail call i32 @llvm.ctpop.i32(i32 %5488)
  %5490 = trunc i32 %5489 to i8
  %5491 = and i8 %5490, 1
  %5492 = xor i8 %5491, 1
  store i8 %5492, i8* %86, align 1
  %5493 = xor i64 %5479, %5436
  %5494 = trunc i64 %5493 to i32
  %5495 = xor i32 %5494, %5482
  %5496 = lshr i32 %5495, 4
  %5497 = trunc i32 %5496 to i8
  %5498 = and i8 %5497, 1
  store i8 %5498, i8* %91, align 1
  %5499 = icmp eq i32 %5482, 0
  %5500 = zext i1 %5499 to i8
  store i8 %5500, i8* %94, align 1
  %5501 = lshr i32 %5482, 31
  %5502 = trunc i32 %5501 to i8
  store i8 %5502, i8* %97, align 1
  %5503 = lshr i32 %5481, 31
  %5504 = xor i32 %5501, %5454
  %5505 = xor i32 %5501, %5503
  %5506 = add nuw nsw i32 %5504, %5505
  %5507 = icmp eq i32 %5506, 2
  %5508 = zext i1 %5507 to i8
  store i8 %5508, i8* %103, align 1
  %5509 = add i64 %5463, -76
  %5510 = add i64 %395, 2122
  store i64 %5510, i64* %3, align 8
  %5511 = inttoptr i64 %5509 to i32*
  %5512 = load i32, i32* %5511, align 4
  %5513 = add i32 %5512, %5482
  %5514 = zext i32 %5513 to i64
  store i64 %5514, i64* %RDX.i2544, align 8
  %5515 = icmp ult i32 %5513, %5482
  %5516 = icmp ult i32 %5513, %5512
  %5517 = or i1 %5515, %5516
  %5518 = zext i1 %5517 to i8
  store i8 %5518, i8* %80, align 1
  %5519 = and i32 %5513, 255
  %5520 = tail call i32 @llvm.ctpop.i32(i32 %5519)
  %5521 = trunc i32 %5520 to i8
  %5522 = and i8 %5521, 1
  %5523 = xor i8 %5522, 1
  store i8 %5523, i8* %86, align 1
  %5524 = xor i32 %5512, %5482
  %5525 = xor i32 %5524, %5513
  %5526 = lshr i32 %5525, 4
  %5527 = trunc i32 %5526 to i8
  %5528 = and i8 %5527, 1
  store i8 %5528, i8* %91, align 1
  %5529 = icmp eq i32 %5513, 0
  %5530 = zext i1 %5529 to i8
  store i8 %5530, i8* %94, align 1
  %5531 = lshr i32 %5513, 31
  %5532 = trunc i32 %5531 to i8
  store i8 %5532, i8* %97, align 1
  %5533 = lshr i32 %5512, 31
  %5534 = xor i32 %5531, %5501
  %5535 = xor i32 %5531, %5533
  %5536 = add nuw nsw i32 %5534, %5535
  %5537 = icmp eq i32 %5536, 2
  %5538 = zext i1 %5537 to i8
  store i8 %5538, i8* %103, align 1
  %5539 = sext i32 %5513 to i64
  store i64 %5539, i64* %RCX.i2541, align 8
  %5540 = load i64, i64* %RAX.i2556, align 8
  %5541 = shl nsw i64 %5539, 2
  %5542 = add i64 %5540, %5541
  %5543 = add i64 %395, 2130
  store i64 %5543, i64* %3, align 8
  %5544 = inttoptr i64 %5542 to i32*
  %5545 = load i32, i32* %5544, align 4
  store i32 %5545, i32* %200, align 1
  store float 0.000000e+00, float* %202, align 1
  store float 0.000000e+00, float* %204, align 1
  store float 0.000000e+00, float* %206, align 1
  %5546 = load i64, i64* %RBP.i, align 8
  %5547 = add i64 %5546, -40
  %5548 = add i64 %395, 2134
  store i64 %5548, i64* %3, align 8
  %5549 = inttoptr i64 %5547 to i64*
  %5550 = load i64, i64* %5549, align 8
  store i64 %5550, i64* %RAX.i2556, align 8
  %5551 = add i64 %395, 2137
  store i64 %5551, i64* %3, align 8
  %5552 = inttoptr i64 %5550 to i64*
  %5553 = load i64, i64* %5552, align 8
  store i64 %5553, i64* %RAX.i2556, align 8
  %5554 = add i64 %395, 2141
  store i64 %5554, i64* %3, align 8
  %5555 = load i64, i64* %5549, align 8
  store i64 %5555, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %80, align 1
  store i8 1, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  store i8 0, i8* %97, align 1
  store i8 0, i8* %103, align 1
  %5556 = add i64 %395, 2149
  store i64 %5556, i64* %3, align 8
  %5557 = load i64, i64* %5549, align 8
  store i64 %5557, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %80, align 1
  store i8 1, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  store i8 0, i8* %97, align 1
  store i8 0, i8* %103, align 1
  %5558 = add i64 %395, 2157
  store i64 %5558, i64* %3, align 8
  %5559 = load i64, i64* %5549, align 8
  store i64 %5559, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %80, align 1
  store i8 1, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  store i8 0, i8* %97, align 1
  store i8 0, i8* %103, align 1
  %5560 = add i64 %5546, -68
  %5561 = add i64 %395, 2164
  store i64 %5561, i64* %3, align 8
  %5562 = inttoptr i64 %5560 to i32*
  %5563 = load i32, i32* %5562, align 4
  %5564 = zext i32 %5563 to i64
  store i64 %5564, i64* %RSI.i2547, align 8
  %5565 = add i64 %395, 2168
  store i64 %5565, i64* %3, align 8
  %5566 = load i64, i64* %5549, align 8
  store i64 %5566, i64* %RCX.i2541, align 8
  %5567 = add i64 %5566, 16
  %5568 = add i64 %395, 2172
  store i64 %5568, i64* %3, align 8
  %5569 = inttoptr i64 %5567 to i32*
  %5570 = load i32, i32* %5569, align 4
  %5571 = sext i32 %5563 to i64
  %5572 = sext i32 %5570 to i64
  %5573 = mul nsw i64 %5572, %5571
  %5574 = trunc i64 %5573 to i32
  %5575 = and i64 %5573, 4294967295
  store i64 %5575, i64* %RSI.i2547, align 8
  %5576 = shl i64 %5573, 32
  %5577 = ashr exact i64 %5576, 32
  %5578 = icmp ne i64 %5577, %5573
  %5579 = zext i1 %5578 to i8
  store i8 %5579, i8* %80, align 1
  %5580 = and i32 %5574, 255
  %5581 = tail call i32 @llvm.ctpop.i32(i32 %5580)
  %5582 = trunc i32 %5581 to i8
  %5583 = and i8 %5582, 1
  %5584 = xor i8 %5583, 1
  store i8 %5584, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  %5585 = lshr i32 %5574, 31
  %5586 = trunc i32 %5585 to i8
  store i8 %5586, i8* %97, align 1
  store i8 %5579, i8* %103, align 1
  %5587 = add i64 %395, 2176
  store i64 %5587, i64* %3, align 8
  %5588 = load i64, i64* %5549, align 8
  store i64 %5588, i64* %RCX.i2541, align 8
  %5589 = add i64 %5588, 20
  %5590 = add i64 %395, 2180
  store i64 %5590, i64* %3, align 8
  %5591 = inttoptr i64 %5589 to i32*
  %5592 = load i32, i32* %5591, align 4
  %5593 = shl i64 %5573, 32
  %5594 = ashr exact i64 %5593, 32
  %5595 = sext i32 %5592 to i64
  %5596 = mul nsw i64 %5595, %5594
  %5597 = and i64 %5596, 4294967295
  store i64 %5597, i64* %RSI.i2547, align 8
  %5598 = trunc i64 %5596 to i32
  %5599 = and i64 %5596, 4294967295
  store i64 %5599, i64* %RDX.i2544, align 8
  store i8 0, i8* %80, align 1
  %5600 = and i32 %5598, 255
  %5601 = tail call i32 @llvm.ctpop.i32(i32 %5600)
  %5602 = trunc i32 %5601 to i8
  %5603 = and i8 %5602, 1
  %5604 = xor i8 %5603, 1
  store i8 %5604, i8* %86, align 1
  store i8 0, i8* %91, align 1
  %5605 = icmp eq i32 %5598, 0
  %5606 = zext i1 %5605 to i8
  store i8 %5606, i8* %94, align 1
  %5607 = lshr i32 %5598, 31
  %5608 = trunc i32 %5607 to i8
  store i8 %5608, i8* %97, align 1
  store i8 0, i8* %103, align 1
  %5609 = load i64, i64* %RBP.i, align 8
  %5610 = add i64 %5609, -72
  %5611 = add i64 %395, 2185
  store i64 %5611, i64* %3, align 8
  %5612 = inttoptr i64 %5610 to i32*
  %5613 = load i32, i32* %5612, align 4
  %5614 = zext i32 %5613 to i64
  store i64 %5614, i64* %RSI.i2547, align 8
  %5615 = add i64 %5609, -40
  %5616 = add i64 %395, 2189
  store i64 %5616, i64* %3, align 8
  %5617 = inttoptr i64 %5615 to i64*
  %5618 = load i64, i64* %5617, align 8
  store i64 %5618, i64* %RCX.i2541, align 8
  %5619 = add i64 %5618, 20
  %5620 = add i64 %395, 2193
  store i64 %5620, i64* %3, align 8
  %5621 = inttoptr i64 %5619 to i32*
  %5622 = load i32, i32* %5621, align 4
  %5623 = sext i32 %5613 to i64
  %5624 = sext i32 %5622 to i64
  %5625 = mul nsw i64 %5624, %5623
  %5626 = and i64 %5625, 4294967295
  store i64 %5626, i64* %RSI.i2547, align 8
  %5627 = trunc i64 %5625 to i32
  %5628 = add i32 %5627, %5598
  %5629 = zext i32 %5628 to i64
  store i64 %5629, i64* %RDX.i2544, align 8
  %5630 = icmp ult i32 %5628, %5598
  %5631 = icmp ult i32 %5628, %5627
  %5632 = or i1 %5630, %5631
  %5633 = zext i1 %5632 to i8
  store i8 %5633, i8* %80, align 1
  %5634 = and i32 %5628, 255
  %5635 = tail call i32 @llvm.ctpop.i32(i32 %5634)
  %5636 = trunc i32 %5635 to i8
  %5637 = and i8 %5636, 1
  %5638 = xor i8 %5637, 1
  store i8 %5638, i8* %86, align 1
  %5639 = xor i64 %5625, %5596
  %5640 = trunc i64 %5639 to i32
  %5641 = xor i32 %5640, %5628
  %5642 = lshr i32 %5641, 4
  %5643 = trunc i32 %5642 to i8
  %5644 = and i8 %5643, 1
  store i8 %5644, i8* %91, align 1
  %5645 = icmp eq i32 %5628, 0
  %5646 = zext i1 %5645 to i8
  store i8 %5646, i8* %94, align 1
  %5647 = lshr i32 %5628, 31
  %5648 = trunc i32 %5647 to i8
  store i8 %5648, i8* %97, align 1
  %5649 = lshr i32 %5627, 31
  %5650 = xor i32 %5647, %5607
  %5651 = xor i32 %5647, %5649
  %5652 = add nuw nsw i32 %5650, %5651
  %5653 = icmp eq i32 %5652, 2
  %5654 = zext i1 %5653 to i8
  store i8 %5654, i8* %103, align 1
  %5655 = add i64 %5609, -76
  %5656 = add i64 %395, 2198
  store i64 %5656, i64* %3, align 8
  %5657 = inttoptr i64 %5655 to i32*
  %5658 = load i32, i32* %5657, align 4
  %5659 = add i32 %5658, -1
  %5660 = zext i32 %5659 to i64
  store i64 %5660, i64* %RSI.i2547, align 8
  %5661 = lshr i32 %5659, 31
  %5662 = add i32 %5659, %5628
  %5663 = zext i32 %5662 to i64
  store i64 %5663, i64* %RDX.i2544, align 8
  %5664 = icmp ult i32 %5662, %5628
  %5665 = icmp ult i32 %5662, %5659
  %5666 = or i1 %5664, %5665
  %5667 = zext i1 %5666 to i8
  store i8 %5667, i8* %80, align 1
  %5668 = and i32 %5662, 255
  %5669 = tail call i32 @llvm.ctpop.i32(i32 %5668)
  %5670 = trunc i32 %5669 to i8
  %5671 = and i8 %5670, 1
  %5672 = xor i8 %5671, 1
  store i8 %5672, i8* %86, align 1
  %5673 = xor i32 %5659, %5628
  %5674 = xor i32 %5673, %5662
  %5675 = lshr i32 %5674, 4
  %5676 = trunc i32 %5675 to i8
  %5677 = and i8 %5676, 1
  store i8 %5677, i8* %91, align 1
  %5678 = icmp eq i32 %5662, 0
  %5679 = zext i1 %5678 to i8
  store i8 %5679, i8* %94, align 1
  %5680 = lshr i32 %5662, 31
  %5681 = trunc i32 %5680 to i8
  store i8 %5681, i8* %97, align 1
  %5682 = xor i32 %5680, %5647
  %5683 = xor i32 %5680, %5661
  %5684 = add nuw nsw i32 %5682, %5683
  %5685 = icmp eq i32 %5684, 2
  %5686 = zext i1 %5685 to i8
  store i8 %5686, i8* %103, align 1
  %5687 = sext i32 %5662 to i64
  store i64 %5687, i64* %RCX.i2541, align 8
  %5688 = load i64, i64* %RAX.i2556, align 8
  %5689 = shl nsw i64 %5687, 2
  %5690 = add i64 %5688, %5689
  %5691 = add i64 %395, 2211
  store i64 %5691, i64* %3, align 8
  %5692 = load <2 x float>, <2 x float>* %207, align 1
  %5693 = load <2 x i32>, <2 x i32>* %208, align 1
  %5694 = inttoptr i64 %5690 to float*
  %5695 = load float, float* %5694, align 4
  %5696 = extractelement <2 x float> %5692, i32 0
  %5697 = fmul float %5696, %5695
  store float %5697, float* %199, align 1
  %5698 = bitcast <2 x float> %5692 to <2 x i32>
  %5699 = extractelement <2 x i32> %5698, i32 1
  store i32 %5699, i32* %209, align 1
  %5700 = extractelement <2 x i32> %5693, i32 0
  store i32 %5700, i32* %210, align 1
  %5701 = extractelement <2 x i32> %5693, i32 1
  store i32 %5701, i32* %211, align 1
  %5702 = load <2 x float>, <2 x float>* %191, align 1
  %5703 = load <2 x i32>, <2 x i32>* %196, align 1
  %5704 = load <2 x float>, <2 x float>* %207, align 1
  %5705 = extractelement <2 x float> %5702, i32 0
  %5706 = extractelement <2 x float> %5704, i32 0
  %5707 = fadd float %5705, %5706
  store float %5707, float* %192, align 1
  %5708 = bitcast <2 x float> %5702 to <2 x i32>
  %5709 = extractelement <2 x i32> %5708, i32 1
  store i32 %5709, i32* %187, align 1
  %5710 = extractelement <2 x i32> %5703, i32 0
  store i32 %5710, i32* %188, align 1
  %5711 = extractelement <2 x i32> %5703, i32 1
  store i32 %5711, i32* %190, align 1
  %5712 = load i64, i64* %RBP.i, align 8
  %5713 = add i64 %5712, -56
  %5714 = add i64 %395, 2219
  store i64 %5714, i64* %3, align 8
  %5715 = inttoptr i64 %5713 to i64*
  %5716 = load i64, i64* %5715, align 8
  store i64 %5716, i64* %RAX.i2556, align 8
  %5717 = add i64 %395, 2222
  store i64 %5717, i64* %3, align 8
  %5718 = inttoptr i64 %5716 to i64*
  %5719 = load i64, i64* %5718, align 8
  store i64 %5719, i64* %RAX.i2556, align 8
  %5720 = add i64 %395, 2226
  store i64 %5720, i64* %3, align 8
  %5721 = load i64, i64* %5715, align 8
  store i64 %5721, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %80, align 1
  store i8 1, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  store i8 0, i8* %97, align 1
  store i8 0, i8* %103, align 1
  %5722 = add i64 %395, 2234
  store i64 %5722, i64* %3, align 8
  %5723 = load i64, i64* %5715, align 8
  store i64 %5723, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %80, align 1
  store i8 1, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  store i8 0, i8* %97, align 1
  store i8 0, i8* %103, align 1
  %5724 = add i64 %395, 2242
  store i64 %5724, i64* %3, align 8
  %5725 = load i64, i64* %5715, align 8
  store i64 %5725, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %80, align 1
  store i8 1, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  store i8 0, i8* %97, align 1
  store i8 0, i8* %103, align 1
  %5726 = add i64 %5712, -68
  %5727 = add i64 %395, 2249
  store i64 %5727, i64* %3, align 8
  %5728 = inttoptr i64 %5726 to i32*
  %5729 = load i32, i32* %5728, align 4
  %5730 = zext i32 %5729 to i64
  store i64 %5730, i64* %RSI.i2547, align 8
  %5731 = add i64 %395, 2253
  store i64 %5731, i64* %3, align 8
  %5732 = load i64, i64* %5715, align 8
  store i64 %5732, i64* %RCX.i2541, align 8
  %5733 = add i64 %5732, 16
  %5734 = add i64 %395, 2257
  store i64 %5734, i64* %3, align 8
  %5735 = inttoptr i64 %5733 to i32*
  %5736 = load i32, i32* %5735, align 4
  %5737 = sext i32 %5729 to i64
  %5738 = sext i32 %5736 to i64
  %5739 = mul nsw i64 %5738, %5737
  %5740 = trunc i64 %5739 to i32
  %5741 = and i64 %5739, 4294967295
  store i64 %5741, i64* %RSI.i2547, align 8
  %5742 = shl i64 %5739, 32
  %5743 = ashr exact i64 %5742, 32
  %5744 = icmp ne i64 %5743, %5739
  %5745 = zext i1 %5744 to i8
  store i8 %5745, i8* %80, align 1
  %5746 = and i32 %5740, 255
  %5747 = tail call i32 @llvm.ctpop.i32(i32 %5746)
  %5748 = trunc i32 %5747 to i8
  %5749 = and i8 %5748, 1
  %5750 = xor i8 %5749, 1
  store i8 %5750, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  %5751 = lshr i32 %5740, 31
  %5752 = trunc i32 %5751 to i8
  store i8 %5752, i8* %97, align 1
  store i8 %5745, i8* %103, align 1
  %5753 = add i64 %395, 2261
  store i64 %5753, i64* %3, align 8
  %5754 = load i64, i64* %5715, align 8
  store i64 %5754, i64* %RCX.i2541, align 8
  %5755 = add i64 %5754, 20
  %5756 = add i64 %395, 2265
  store i64 %5756, i64* %3, align 8
  %5757 = inttoptr i64 %5755 to i32*
  %5758 = load i32, i32* %5757, align 4
  %5759 = shl i64 %5739, 32
  %5760 = ashr exact i64 %5759, 32
  %5761 = sext i32 %5758 to i64
  %5762 = mul nsw i64 %5761, %5760
  %5763 = and i64 %5762, 4294967295
  store i64 %5763, i64* %RSI.i2547, align 8
  %5764 = trunc i64 %5762 to i32
  %5765 = and i64 %5762, 4294967295
  store i64 %5765, i64* %RDX.i2544, align 8
  store i8 0, i8* %80, align 1
  %5766 = and i32 %5764, 255
  %5767 = tail call i32 @llvm.ctpop.i32(i32 %5766)
  %5768 = trunc i32 %5767 to i8
  %5769 = and i8 %5768, 1
  %5770 = xor i8 %5769, 1
  store i8 %5770, i8* %86, align 1
  store i8 0, i8* %91, align 1
  %5771 = icmp eq i32 %5764, 0
  %5772 = zext i1 %5771 to i8
  store i8 %5772, i8* %94, align 1
  %5773 = lshr i32 %5764, 31
  %5774 = trunc i32 %5773 to i8
  store i8 %5774, i8* %97, align 1
  store i8 0, i8* %103, align 1
  %5775 = load i64, i64* %RBP.i, align 8
  %5776 = add i64 %5775, -72
  %5777 = add i64 %395, 2270
  store i64 %5777, i64* %3, align 8
  %5778 = inttoptr i64 %5776 to i32*
  %5779 = load i32, i32* %5778, align 4
  %5780 = zext i32 %5779 to i64
  store i64 %5780, i64* %RSI.i2547, align 8
  %5781 = add i64 %5775, -56
  %5782 = add i64 %395, 2274
  store i64 %5782, i64* %3, align 8
  %5783 = inttoptr i64 %5781 to i64*
  %5784 = load i64, i64* %5783, align 8
  store i64 %5784, i64* %RCX.i2541, align 8
  %5785 = add i64 %5784, 20
  %5786 = add i64 %395, 2278
  store i64 %5786, i64* %3, align 8
  %5787 = inttoptr i64 %5785 to i32*
  %5788 = load i32, i32* %5787, align 4
  %5789 = sext i32 %5779 to i64
  %5790 = sext i32 %5788 to i64
  %5791 = mul nsw i64 %5790, %5789
  %5792 = and i64 %5791, 4294967295
  store i64 %5792, i64* %RSI.i2547, align 8
  %5793 = trunc i64 %5791 to i32
  %5794 = add i32 %5793, %5764
  %5795 = zext i32 %5794 to i64
  store i64 %5795, i64* %RDX.i2544, align 8
  %5796 = icmp ult i32 %5794, %5764
  %5797 = icmp ult i32 %5794, %5793
  %5798 = or i1 %5796, %5797
  %5799 = zext i1 %5798 to i8
  store i8 %5799, i8* %80, align 1
  %5800 = and i32 %5794, 255
  %5801 = tail call i32 @llvm.ctpop.i32(i32 %5800)
  %5802 = trunc i32 %5801 to i8
  %5803 = and i8 %5802, 1
  %5804 = xor i8 %5803, 1
  store i8 %5804, i8* %86, align 1
  %5805 = xor i64 %5791, %5762
  %5806 = trunc i64 %5805 to i32
  %5807 = xor i32 %5806, %5794
  %5808 = lshr i32 %5807, 4
  %5809 = trunc i32 %5808 to i8
  %5810 = and i8 %5809, 1
  store i8 %5810, i8* %91, align 1
  %5811 = icmp eq i32 %5794, 0
  %5812 = zext i1 %5811 to i8
  store i8 %5812, i8* %94, align 1
  %5813 = lshr i32 %5794, 31
  %5814 = trunc i32 %5813 to i8
  store i8 %5814, i8* %97, align 1
  %5815 = lshr i32 %5793, 31
  %5816 = xor i32 %5813, %5773
  %5817 = xor i32 %5813, %5815
  %5818 = add nuw nsw i32 %5816, %5817
  %5819 = icmp eq i32 %5818, 2
  %5820 = zext i1 %5819 to i8
  store i8 %5820, i8* %103, align 1
  %5821 = add i64 %5775, -76
  %5822 = add i64 %395, 2283
  store i64 %5822, i64* %3, align 8
  %5823 = inttoptr i64 %5821 to i32*
  %5824 = load i32, i32* %5823, align 4
  %5825 = add i32 %5824, %5794
  %5826 = zext i32 %5825 to i64
  store i64 %5826, i64* %RDX.i2544, align 8
  %5827 = icmp ult i32 %5825, %5794
  %5828 = icmp ult i32 %5825, %5824
  %5829 = or i1 %5827, %5828
  %5830 = zext i1 %5829 to i8
  store i8 %5830, i8* %80, align 1
  %5831 = and i32 %5825, 255
  %5832 = tail call i32 @llvm.ctpop.i32(i32 %5831)
  %5833 = trunc i32 %5832 to i8
  %5834 = and i8 %5833, 1
  %5835 = xor i8 %5834, 1
  store i8 %5835, i8* %86, align 1
  %5836 = xor i32 %5824, %5794
  %5837 = xor i32 %5836, %5825
  %5838 = lshr i32 %5837, 4
  %5839 = trunc i32 %5838 to i8
  %5840 = and i8 %5839, 1
  store i8 %5840, i8* %91, align 1
  %5841 = icmp eq i32 %5825, 0
  %5842 = zext i1 %5841 to i8
  store i8 %5842, i8* %94, align 1
  %5843 = lshr i32 %5825, 31
  %5844 = trunc i32 %5843 to i8
  store i8 %5844, i8* %97, align 1
  %5845 = lshr i32 %5824, 31
  %5846 = xor i32 %5843, %5813
  %5847 = xor i32 %5843, %5845
  %5848 = add nuw nsw i32 %5846, %5847
  %5849 = icmp eq i32 %5848, 2
  %5850 = zext i1 %5849 to i8
  store i8 %5850, i8* %103, align 1
  %5851 = sext i32 %5825 to i64
  store i64 %5851, i64* %RCX.i2541, align 8
  %5852 = load i64, i64* %RAX.i2556, align 8
  %5853 = shl nsw i64 %5851, 2
  %5854 = add i64 %5852, %5853
  %5855 = add i64 %395, 2291
  store i64 %5855, i64* %3, align 8
  %5856 = load <2 x float>, <2 x float>* %191, align 1
  %5857 = load <2 x i32>, <2 x i32>* %196, align 1
  %5858 = inttoptr i64 %5854 to float*
  %5859 = load float, float* %5858, align 4
  %5860 = extractelement <2 x float> %5856, i32 0
  %5861 = fadd float %5860, %5859
  store float %5861, float* %192, align 1
  %5862 = bitcast <2 x float> %5856 to <2 x i32>
  %5863 = extractelement <2 x i32> %5862, i32 1
  store i32 %5863, i32* %187, align 1
  %5864 = extractelement <2 x i32> %5857, i32 0
  store i32 %5864, i32* %188, align 1
  %5865 = extractelement <2 x i32> %5857, i32 1
  store i32 %5865, i32* %190, align 1
  %5866 = load i64, i64* %RBP.i, align 8
  %5867 = add i64 %5866, -100
  %5868 = add i64 %395, 2296
  store i64 %5868, i64* %3, align 8
  %5869 = load <2 x float>, <2 x float>* %191, align 1
  %5870 = extractelement <2 x float> %5869, i32 0
  %5871 = inttoptr i64 %5867 to float*
  store float %5870, float* %5871, align 4
  %5872 = load i64, i64* %RBP.i, align 8
  %5873 = add i64 %5872, -100
  %5874 = load i64, i64* %3, align 8
  %5875 = add i64 %5874, 5
  store i64 %5875, i64* %3, align 8
  %5876 = inttoptr i64 %5873 to i32*
  %5877 = load i32, i32* %5876, align 4
  store i32 %5877, i32* %185, align 1
  store float 0.000000e+00, float* %193, align 1
  store float 0.000000e+00, float* %194, align 1
  store float 0.000000e+00, float* %195, align 1
  %5878 = add i64 %5872, -16
  %5879 = add i64 %5874, 9
  store i64 %5879, i64* %3, align 8
  %5880 = inttoptr i64 %5878 to i64*
  %5881 = load i64, i64* %5880, align 8
  store i64 %5881, i64* %RAX.i2556, align 8
  %5882 = add i64 %5874, 12
  store i64 %5882, i64* %3, align 8
  %5883 = inttoptr i64 %5881 to i64*
  %5884 = load i64, i64* %5883, align 8
  store i64 %5884, i64* %RAX.i2556, align 8
  %5885 = add i64 %5874, 16
  store i64 %5885, i64* %3, align 8
  %5886 = load i64, i64* %5880, align 8
  store i64 %5886, i64* %RCX.i2541, align 8
  %5887 = add i64 %5886, 12
  %5888 = add i64 %5874, 20
  store i64 %5888, i64* %3, align 8
  %5889 = inttoptr i64 %5887 to i32*
  %5890 = load i32, i32* %5889, align 4
  %5891 = sext i32 %5890 to i64
  %5892 = mul nsw i64 %5891, 3
  %5893 = trunc i64 %5892 to i32
  %5894 = and i64 %5892, 4294967295
  store i64 %5894, i64* %RDX.i2544, align 8
  %5895 = mul i64 %5891, 12884901888
  %5896 = ashr exact i64 %5895, 32
  %5897 = icmp ne i64 %5896, %5892
  %5898 = zext i1 %5897 to i8
  store i8 %5898, i8* %80, align 1
  %5899 = and i32 %5893, 255
  %5900 = tail call i32 @llvm.ctpop.i32(i32 %5899)
  %5901 = trunc i32 %5900 to i8
  %5902 = and i8 %5901, 1
  %5903 = xor i8 %5902, 1
  store i8 %5903, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  %5904 = lshr i32 %5893, 31
  %5905 = trunc i32 %5904 to i8
  store i8 %5905, i8* %97, align 1
  store i8 %5898, i8* %103, align 1
  %5906 = add i64 %5874, 24
  store i64 %5906, i64* %3, align 8
  %5907 = load i64, i64* %5880, align 8
  store i64 %5907, i64* %RCX.i2541, align 8
  %5908 = add i64 %5907, 16
  %5909 = add i64 %5874, 28
  store i64 %5909, i64* %3, align 8
  %5910 = inttoptr i64 %5908 to i32*
  %5911 = load i32, i32* %5910, align 4
  %5912 = mul i64 %5891, 12884901888
  %5913 = ashr exact i64 %5912, 32
  %5914 = sext i32 %5911 to i64
  %5915 = mul nsw i64 %5914, %5913
  %5916 = trunc i64 %5915 to i32
  %5917 = and i64 %5915, 4294967295
  store i64 %5917, i64* %RDX.i2544, align 8
  %5918 = shl i64 %5915, 32
  %5919 = ashr exact i64 %5918, 32
  %5920 = icmp ne i64 %5919, %5915
  %5921 = zext i1 %5920 to i8
  store i8 %5921, i8* %80, align 1
  %5922 = and i32 %5916, 255
  %5923 = tail call i32 @llvm.ctpop.i32(i32 %5922)
  %5924 = trunc i32 %5923 to i8
  %5925 = and i8 %5924, 1
  %5926 = xor i8 %5925, 1
  store i8 %5926, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  %5927 = lshr i32 %5916, 31
  %5928 = trunc i32 %5927 to i8
  store i8 %5928, i8* %97, align 1
  store i8 %5921, i8* %103, align 1
  %5929 = add i64 %5874, 32
  store i64 %5929, i64* %3, align 8
  %5930 = load i64, i64* %5880, align 8
  store i64 %5930, i64* %RCX.i2541, align 8
  %5931 = add i64 %5930, 20
  %5932 = add i64 %5874, 36
  store i64 %5932, i64* %3, align 8
  %5933 = inttoptr i64 %5931 to i32*
  %5934 = load i32, i32* %5933, align 4
  %5935 = shl i64 %5915, 32
  %5936 = ashr exact i64 %5935, 32
  %5937 = sext i32 %5934 to i64
  %5938 = mul nsw i64 %5937, %5936
  %5939 = trunc i64 %5938 to i32
  %5940 = and i64 %5938, 4294967295
  store i64 %5940, i64* %RDX.i2544, align 8
  %5941 = shl i64 %5938, 32
  %5942 = ashr exact i64 %5941, 32
  %5943 = icmp ne i64 %5942, %5938
  %5944 = zext i1 %5943 to i8
  store i8 %5944, i8* %80, align 1
  %5945 = and i32 %5939, 255
  %5946 = tail call i32 @llvm.ctpop.i32(i32 %5945)
  %5947 = trunc i32 %5946 to i8
  %5948 = and i8 %5947, 1
  %5949 = xor i8 %5948, 1
  store i8 %5949, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  %5950 = lshr i32 %5939, 31
  %5951 = trunc i32 %5950 to i8
  store i8 %5951, i8* %97, align 1
  store i8 %5944, i8* %103, align 1
  %5952 = load i64, i64* %RBP.i, align 8
  %5953 = add i64 %5952, -68
  %5954 = add i64 %5874, 39
  store i64 %5954, i64* %3, align 8
  %5955 = inttoptr i64 %5953 to i32*
  %5956 = load i32, i32* %5955, align 4
  %5957 = zext i32 %5956 to i64
  store i64 %5957, i64* %RSI.i2547, align 8
  %5958 = add i64 %5952, -16
  %5959 = add i64 %5874, 43
  store i64 %5959, i64* %3, align 8
  %5960 = inttoptr i64 %5958 to i64*
  %5961 = load i64, i64* %5960, align 8
  store i64 %5961, i64* %RCX.i2541, align 8
  %5962 = add i64 %5961, 16
  %5963 = add i64 %5874, 47
  store i64 %5963, i64* %3, align 8
  %5964 = inttoptr i64 %5962 to i32*
  %5965 = load i32, i32* %5964, align 4
  %5966 = sext i32 %5956 to i64
  %5967 = sext i32 %5965 to i64
  %5968 = mul nsw i64 %5967, %5966
  %5969 = trunc i64 %5968 to i32
  %5970 = and i64 %5968, 4294967295
  store i64 %5970, i64* %RSI.i2547, align 8
  %5971 = shl i64 %5968, 32
  %5972 = ashr exact i64 %5971, 32
  %5973 = icmp ne i64 %5972, %5968
  %5974 = zext i1 %5973 to i8
  store i8 %5974, i8* %80, align 1
  %5975 = and i32 %5969, 255
  %5976 = tail call i32 @llvm.ctpop.i32(i32 %5975)
  %5977 = trunc i32 %5976 to i8
  %5978 = and i8 %5977, 1
  %5979 = xor i8 %5978, 1
  store i8 %5979, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  %5980 = lshr i32 %5969, 31
  %5981 = trunc i32 %5980 to i8
  store i8 %5981, i8* %97, align 1
  store i8 %5974, i8* %103, align 1
  %5982 = add i64 %5874, 51
  store i64 %5982, i64* %3, align 8
  %5983 = load i64, i64* %5960, align 8
  store i64 %5983, i64* %RCX.i2541, align 8
  %5984 = add i64 %5983, 20
  %5985 = add i64 %5874, 55
  store i64 %5985, i64* %3, align 8
  %5986 = inttoptr i64 %5984 to i32*
  %5987 = load i32, i32* %5986, align 4
  %5988 = shl i64 %5968, 32
  %5989 = ashr exact i64 %5988, 32
  %5990 = sext i32 %5987 to i64
  %5991 = mul nsw i64 %5990, %5989
  %5992 = and i64 %5991, 4294967295
  store i64 %5992, i64* %RSI.i2547, align 8
  %5993 = trunc i64 %5991 to i32
  %5994 = trunc i64 %5938 to i32
  %5995 = add i32 %5993, %5994
  %5996 = zext i32 %5995 to i64
  store i64 %5996, i64* %RDX.i2544, align 8
  %5997 = icmp ult i32 %5995, %5994
  %5998 = icmp ult i32 %5995, %5993
  %5999 = or i1 %5997, %5998
  %6000 = zext i1 %5999 to i8
  store i8 %6000, i8* %80, align 1
  %6001 = and i32 %5995, 255
  %6002 = tail call i32 @llvm.ctpop.i32(i32 %6001)
  %6003 = trunc i32 %6002 to i8
  %6004 = and i8 %6003, 1
  %6005 = xor i8 %6004, 1
  store i8 %6005, i8* %86, align 1
  %6006 = xor i64 %5991, %5938
  %6007 = trunc i64 %6006 to i32
  %6008 = xor i32 %6007, %5995
  %6009 = lshr i32 %6008, 4
  %6010 = trunc i32 %6009 to i8
  %6011 = and i8 %6010, 1
  store i8 %6011, i8* %91, align 1
  %6012 = icmp eq i32 %5995, 0
  %6013 = zext i1 %6012 to i8
  store i8 %6013, i8* %94, align 1
  %6014 = lshr i32 %5995, 31
  %6015 = trunc i32 %6014 to i8
  store i8 %6015, i8* %97, align 1
  %6016 = lshr i32 %5994, 31
  %6017 = lshr i32 %5993, 31
  %6018 = xor i32 %6014, %6016
  %6019 = xor i32 %6014, %6017
  %6020 = add nuw nsw i32 %6018, %6019
  %6021 = icmp eq i32 %6020, 2
  %6022 = zext i1 %6021 to i8
  store i8 %6022, i8* %103, align 1
  %6023 = load i64, i64* %RBP.i, align 8
  %6024 = add i64 %6023, -72
  %6025 = add i64 %5874, 60
  store i64 %6025, i64* %3, align 8
  %6026 = inttoptr i64 %6024 to i32*
  %6027 = load i32, i32* %6026, align 4
  %6028 = zext i32 %6027 to i64
  store i64 %6028, i64* %RSI.i2547, align 8
  %6029 = add i64 %6023, -16
  %6030 = add i64 %5874, 64
  store i64 %6030, i64* %3, align 8
  %6031 = inttoptr i64 %6029 to i64*
  %6032 = load i64, i64* %6031, align 8
  store i64 %6032, i64* %RCX.i2541, align 8
  %6033 = add i64 %6032, 20
  %6034 = add i64 %5874, 68
  store i64 %6034, i64* %3, align 8
  %6035 = inttoptr i64 %6033 to i32*
  %6036 = load i32, i32* %6035, align 4
  %6037 = sext i32 %6027 to i64
  %6038 = sext i32 %6036 to i64
  %6039 = mul nsw i64 %6038, %6037
  %6040 = and i64 %6039, 4294967295
  store i64 %6040, i64* %RSI.i2547, align 8
  %6041 = trunc i64 %6039 to i32
  %6042 = add i32 %6041, %5995
  %6043 = zext i32 %6042 to i64
  store i64 %6043, i64* %RDX.i2544, align 8
  %6044 = icmp ult i32 %6042, %5995
  %6045 = icmp ult i32 %6042, %6041
  %6046 = or i1 %6044, %6045
  %6047 = zext i1 %6046 to i8
  store i8 %6047, i8* %80, align 1
  %6048 = and i32 %6042, 255
  %6049 = tail call i32 @llvm.ctpop.i32(i32 %6048)
  %6050 = trunc i32 %6049 to i8
  %6051 = and i8 %6050, 1
  %6052 = xor i8 %6051, 1
  store i8 %6052, i8* %86, align 1
  %6053 = xor i64 %6039, %5996
  %6054 = trunc i64 %6053 to i32
  %6055 = xor i32 %6054, %6042
  %6056 = lshr i32 %6055, 4
  %6057 = trunc i32 %6056 to i8
  %6058 = and i8 %6057, 1
  store i8 %6058, i8* %91, align 1
  %6059 = icmp eq i32 %6042, 0
  %6060 = zext i1 %6059 to i8
  store i8 %6060, i8* %94, align 1
  %6061 = lshr i32 %6042, 31
  %6062 = trunc i32 %6061 to i8
  store i8 %6062, i8* %97, align 1
  %6063 = lshr i32 %6041, 31
  %6064 = xor i32 %6061, %6014
  %6065 = xor i32 %6061, %6063
  %6066 = add nuw nsw i32 %6064, %6065
  %6067 = icmp eq i32 %6066, 2
  %6068 = zext i1 %6067 to i8
  store i8 %6068, i8* %103, align 1
  %6069 = add i64 %6023, -76
  %6070 = add i64 %5874, 73
  store i64 %6070, i64* %3, align 8
  %6071 = inttoptr i64 %6069 to i32*
  %6072 = load i32, i32* %6071, align 4
  %6073 = add i32 %6072, %6042
  %6074 = zext i32 %6073 to i64
  store i64 %6074, i64* %RDX.i2544, align 8
  %6075 = icmp ult i32 %6073, %6042
  %6076 = icmp ult i32 %6073, %6072
  %6077 = or i1 %6075, %6076
  %6078 = zext i1 %6077 to i8
  store i8 %6078, i8* %80, align 1
  %6079 = and i32 %6073, 255
  %6080 = tail call i32 @llvm.ctpop.i32(i32 %6079)
  %6081 = trunc i32 %6080 to i8
  %6082 = and i8 %6081, 1
  %6083 = xor i8 %6082, 1
  store i8 %6083, i8* %86, align 1
  %6084 = xor i32 %6072, %6042
  %6085 = xor i32 %6084, %6073
  %6086 = lshr i32 %6085, 4
  %6087 = trunc i32 %6086 to i8
  %6088 = and i8 %6087, 1
  store i8 %6088, i8* %91, align 1
  %6089 = icmp eq i32 %6073, 0
  %6090 = zext i1 %6089 to i8
  store i8 %6090, i8* %94, align 1
  %6091 = lshr i32 %6073, 31
  %6092 = trunc i32 %6091 to i8
  store i8 %6092, i8* %97, align 1
  %6093 = lshr i32 %6072, 31
  %6094 = xor i32 %6091, %6061
  %6095 = xor i32 %6091, %6093
  %6096 = add nuw nsw i32 %6094, %6095
  %6097 = icmp eq i32 %6096, 2
  %6098 = zext i1 %6097 to i8
  store i8 %6098, i8* %103, align 1
  %6099 = sext i32 %6073 to i64
  store i64 %6099, i64* %RCX.i2541, align 8
  %6100 = load i64, i64* %RAX.i2556, align 8
  %6101 = shl nsw i64 %6099, 2
  %6102 = add i64 %6100, %6101
  %6103 = add i64 %5874, 81
  store i64 %6103, i64* %3, align 8
  %6104 = load <2 x float>, <2 x float>* %191, align 1
  %6105 = load <2 x i32>, <2 x i32>* %196, align 1
  %6106 = inttoptr i64 %6102 to float*
  %6107 = load float, float* %6106, align 4
  %6108 = extractelement <2 x float> %6104, i32 0
  %6109 = fmul float %6108, %6107
  store float %6109, float* %192, align 1
  %6110 = bitcast <2 x float> %6104 to <2 x i32>
  %6111 = extractelement <2 x i32> %6110, i32 1
  store i32 %6111, i32* %187, align 1
  %6112 = extractelement <2 x i32> %6105, i32 0
  store i32 %6112, i32* %188, align 1
  %6113 = extractelement <2 x i32> %6105, i32 1
  store i32 %6113, i32* %190, align 1
  %6114 = load i64, i64* %RBP.i, align 8
  %6115 = add i64 %6114, -40
  %6116 = add i64 %5874, 85
  store i64 %6116, i64* %3, align 8
  %6117 = inttoptr i64 %6115 to i64*
  %6118 = load i64, i64* %6117, align 8
  store i64 %6118, i64* %RAX.i2556, align 8
  %6119 = add i64 %5874, 88
  store i64 %6119, i64* %3, align 8
  %6120 = inttoptr i64 %6118 to i64*
  %6121 = load i64, i64* %6120, align 8
  store i64 %6121, i64* %RAX.i2556, align 8
  %6122 = add i64 %5874, 92
  store i64 %6122, i64* %3, align 8
  %6123 = load i64, i64* %6117, align 8
  store i64 %6123, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %80, align 1
  store i8 1, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  store i8 0, i8* %97, align 1
  store i8 0, i8* %103, align 1
  %6124 = add i64 %5874, 100
  store i64 %6124, i64* %3, align 8
  %6125 = load i64, i64* %6117, align 8
  store i64 %6125, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %80, align 1
  store i8 1, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  store i8 0, i8* %97, align 1
  store i8 0, i8* %103, align 1
  %6126 = add i64 %5874, 108
  store i64 %6126, i64* %3, align 8
  %6127 = load i64, i64* %6117, align 8
  store i64 %6127, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %80, align 1
  store i8 1, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  store i8 0, i8* %97, align 1
  store i8 0, i8* %103, align 1
  %6128 = add i64 %6114, -68
  %6129 = add i64 %5874, 115
  store i64 %6129, i64* %3, align 8
  %6130 = inttoptr i64 %6128 to i32*
  %6131 = load i32, i32* %6130, align 4
  %6132 = zext i32 %6131 to i64
  store i64 %6132, i64* %RSI.i2547, align 8
  %6133 = add i64 %5874, 119
  store i64 %6133, i64* %3, align 8
  %6134 = load i64, i64* %6117, align 8
  store i64 %6134, i64* %RCX.i2541, align 8
  %6135 = add i64 %6134, 16
  %6136 = add i64 %5874, 123
  store i64 %6136, i64* %3, align 8
  %6137 = inttoptr i64 %6135 to i32*
  %6138 = load i32, i32* %6137, align 4
  %6139 = sext i32 %6131 to i64
  %6140 = sext i32 %6138 to i64
  %6141 = mul nsw i64 %6140, %6139
  %6142 = trunc i64 %6141 to i32
  %6143 = and i64 %6141, 4294967295
  store i64 %6143, i64* %RSI.i2547, align 8
  %6144 = shl i64 %6141, 32
  %6145 = ashr exact i64 %6144, 32
  %6146 = icmp ne i64 %6145, %6141
  %6147 = zext i1 %6146 to i8
  store i8 %6147, i8* %80, align 1
  %6148 = and i32 %6142, 255
  %6149 = tail call i32 @llvm.ctpop.i32(i32 %6148)
  %6150 = trunc i32 %6149 to i8
  %6151 = and i8 %6150, 1
  %6152 = xor i8 %6151, 1
  store i8 %6152, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  %6153 = lshr i32 %6142, 31
  %6154 = trunc i32 %6153 to i8
  store i8 %6154, i8* %97, align 1
  store i8 %6147, i8* %103, align 1
  %6155 = add i64 %5874, 127
  store i64 %6155, i64* %3, align 8
  %6156 = load i64, i64* %6117, align 8
  store i64 %6156, i64* %RCX.i2541, align 8
  %6157 = add i64 %6156, 20
  %6158 = add i64 %5874, 131
  store i64 %6158, i64* %3, align 8
  %6159 = inttoptr i64 %6157 to i32*
  %6160 = load i32, i32* %6159, align 4
  %6161 = shl i64 %6141, 32
  %6162 = ashr exact i64 %6161, 32
  %6163 = sext i32 %6160 to i64
  %6164 = mul nsw i64 %6163, %6162
  %6165 = and i64 %6164, 4294967295
  store i64 %6165, i64* %RSI.i2547, align 8
  %6166 = trunc i64 %6164 to i32
  %6167 = and i64 %6164, 4294967295
  store i64 %6167, i64* %RDX.i2544, align 8
  store i8 0, i8* %80, align 1
  %6168 = and i32 %6166, 255
  %6169 = tail call i32 @llvm.ctpop.i32(i32 %6168)
  %6170 = trunc i32 %6169 to i8
  %6171 = and i8 %6170, 1
  %6172 = xor i8 %6171, 1
  store i8 %6172, i8* %86, align 1
  store i8 0, i8* %91, align 1
  %6173 = icmp eq i32 %6166, 0
  %6174 = zext i1 %6173 to i8
  store i8 %6174, i8* %94, align 1
  %6175 = lshr i32 %6166, 31
  %6176 = trunc i32 %6175 to i8
  store i8 %6176, i8* %97, align 1
  store i8 0, i8* %103, align 1
  %6177 = load i64, i64* %RBP.i, align 8
  %6178 = add i64 %6177, -72
  %6179 = add i64 %5874, 136
  store i64 %6179, i64* %3, align 8
  %6180 = inttoptr i64 %6178 to i32*
  %6181 = load i32, i32* %6180, align 4
  %6182 = zext i32 %6181 to i64
  store i64 %6182, i64* %RSI.i2547, align 8
  %6183 = add i64 %6177, -40
  %6184 = add i64 %5874, 140
  store i64 %6184, i64* %3, align 8
  %6185 = inttoptr i64 %6183 to i64*
  %6186 = load i64, i64* %6185, align 8
  store i64 %6186, i64* %RCX.i2541, align 8
  %6187 = add i64 %6186, 20
  %6188 = add i64 %5874, 144
  store i64 %6188, i64* %3, align 8
  %6189 = inttoptr i64 %6187 to i32*
  %6190 = load i32, i32* %6189, align 4
  %6191 = sext i32 %6181 to i64
  %6192 = sext i32 %6190 to i64
  %6193 = mul nsw i64 %6192, %6191
  %6194 = and i64 %6193, 4294967295
  store i64 %6194, i64* %RSI.i2547, align 8
  %6195 = trunc i64 %6193 to i32
  %6196 = add i32 %6195, %6166
  %6197 = zext i32 %6196 to i64
  store i64 %6197, i64* %RDX.i2544, align 8
  %6198 = icmp ult i32 %6196, %6166
  %6199 = icmp ult i32 %6196, %6195
  %6200 = or i1 %6198, %6199
  %6201 = zext i1 %6200 to i8
  store i8 %6201, i8* %80, align 1
  %6202 = and i32 %6196, 255
  %6203 = tail call i32 @llvm.ctpop.i32(i32 %6202)
  %6204 = trunc i32 %6203 to i8
  %6205 = and i8 %6204, 1
  %6206 = xor i8 %6205, 1
  store i8 %6206, i8* %86, align 1
  %6207 = xor i64 %6193, %6164
  %6208 = trunc i64 %6207 to i32
  %6209 = xor i32 %6208, %6196
  %6210 = lshr i32 %6209, 4
  %6211 = trunc i32 %6210 to i8
  %6212 = and i8 %6211, 1
  store i8 %6212, i8* %91, align 1
  %6213 = icmp eq i32 %6196, 0
  %6214 = zext i1 %6213 to i8
  store i8 %6214, i8* %94, align 1
  %6215 = lshr i32 %6196, 31
  %6216 = trunc i32 %6215 to i8
  store i8 %6216, i8* %97, align 1
  %6217 = lshr i32 %6195, 31
  %6218 = xor i32 %6215, %6175
  %6219 = xor i32 %6215, %6217
  %6220 = add nuw nsw i32 %6218, %6219
  %6221 = icmp eq i32 %6220, 2
  %6222 = zext i1 %6221 to i8
  store i8 %6222, i8* %103, align 1
  %6223 = add i64 %6177, -76
  %6224 = add i64 %5874, 149
  store i64 %6224, i64* %3, align 8
  %6225 = inttoptr i64 %6223 to i32*
  %6226 = load i32, i32* %6225, align 4
  %6227 = add i32 %6226, %6196
  %6228 = zext i32 %6227 to i64
  store i64 %6228, i64* %RDX.i2544, align 8
  %6229 = icmp ult i32 %6227, %6196
  %6230 = icmp ult i32 %6227, %6226
  %6231 = or i1 %6229, %6230
  %6232 = zext i1 %6231 to i8
  store i8 %6232, i8* %80, align 1
  %6233 = and i32 %6227, 255
  %6234 = tail call i32 @llvm.ctpop.i32(i32 %6233)
  %6235 = trunc i32 %6234 to i8
  %6236 = and i8 %6235, 1
  %6237 = xor i8 %6236, 1
  store i8 %6237, i8* %86, align 1
  %6238 = xor i32 %6226, %6196
  %6239 = xor i32 %6238, %6227
  %6240 = lshr i32 %6239, 4
  %6241 = trunc i32 %6240 to i8
  %6242 = and i8 %6241, 1
  store i8 %6242, i8* %91, align 1
  %6243 = icmp eq i32 %6227, 0
  %6244 = zext i1 %6243 to i8
  store i8 %6244, i8* %94, align 1
  %6245 = lshr i32 %6227, 31
  %6246 = trunc i32 %6245 to i8
  store i8 %6246, i8* %97, align 1
  %6247 = lshr i32 %6226, 31
  %6248 = xor i32 %6245, %6215
  %6249 = xor i32 %6245, %6247
  %6250 = add nuw nsw i32 %6248, %6249
  %6251 = icmp eq i32 %6250, 2
  %6252 = zext i1 %6251 to i8
  store i8 %6252, i8* %103, align 1
  %6253 = sext i32 %6227 to i64
  store i64 %6253, i64* %RCX.i2541, align 8
  %6254 = load i64, i64* %RAX.i2556, align 8
  %6255 = shl nsw i64 %6253, 2
  %6256 = add i64 %6254, %6255
  %6257 = add i64 %5874, 157
  store i64 %6257, i64* %3, align 8
  %6258 = load <2 x float>, <2 x float>* %191, align 1
  %6259 = load <2 x i32>, <2 x i32>* %196, align 1
  %6260 = inttoptr i64 %6256 to float*
  %6261 = load float, float* %6260, align 4
  %6262 = extractelement <2 x float> %6258, i32 0
  %6263 = fsub float %6262, %6261
  store float %6263, float* %192, align 1
  %6264 = bitcast <2 x float> %6258 to <2 x i32>
  %6265 = extractelement <2 x i32> %6264, i32 1
  store i32 %6265, i32* %187, align 1
  %6266 = extractelement <2 x i32> %6259, i32 0
  store i32 %6266, i32* %188, align 1
  %6267 = extractelement <2 x i32> %6259, i32 1
  store i32 %6267, i32* %190, align 1
  %6268 = load i64, i64* %RBP.i, align 8
  %6269 = add i64 %6268, -48
  %6270 = add i64 %5874, 161
  store i64 %6270, i64* %3, align 8
  %6271 = inttoptr i64 %6269 to i64*
  %6272 = load i64, i64* %6271, align 8
  store i64 %6272, i64* %RAX.i2556, align 8
  %6273 = add i64 %5874, 164
  store i64 %6273, i64* %3, align 8
  %6274 = inttoptr i64 %6272 to i64*
  %6275 = load i64, i64* %6274, align 8
  store i64 %6275, i64* %RAX.i2556, align 8
  %6276 = add i64 %5874, 168
  store i64 %6276, i64* %3, align 8
  %6277 = load i64, i64* %6271, align 8
  store i64 %6277, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %80, align 1
  store i8 1, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  store i8 0, i8* %97, align 1
  store i8 0, i8* %103, align 1
  %6278 = add i64 %5874, 176
  store i64 %6278, i64* %3, align 8
  %6279 = load i64, i64* %6271, align 8
  store i64 %6279, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %80, align 1
  store i8 1, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  store i8 0, i8* %97, align 1
  store i8 0, i8* %103, align 1
  %6280 = add i64 %5874, 184
  store i64 %6280, i64* %3, align 8
  %6281 = load i64, i64* %6271, align 8
  store i64 %6281, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %80, align 1
  store i8 1, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  store i8 0, i8* %97, align 1
  store i8 0, i8* %103, align 1
  %6282 = add i64 %6268, -68
  %6283 = add i64 %5874, 191
  store i64 %6283, i64* %3, align 8
  %6284 = inttoptr i64 %6282 to i32*
  %6285 = load i32, i32* %6284, align 4
  %6286 = zext i32 %6285 to i64
  store i64 %6286, i64* %RSI.i2547, align 8
  %6287 = add i64 %5874, 195
  store i64 %6287, i64* %3, align 8
  %6288 = load i64, i64* %6271, align 8
  store i64 %6288, i64* %RCX.i2541, align 8
  %6289 = add i64 %6288, 16
  %6290 = add i64 %5874, 199
  store i64 %6290, i64* %3, align 8
  %6291 = inttoptr i64 %6289 to i32*
  %6292 = load i32, i32* %6291, align 4
  %6293 = sext i32 %6285 to i64
  %6294 = sext i32 %6292 to i64
  %6295 = mul nsw i64 %6294, %6293
  %6296 = trunc i64 %6295 to i32
  %6297 = and i64 %6295, 4294967295
  store i64 %6297, i64* %RSI.i2547, align 8
  %6298 = shl i64 %6295, 32
  %6299 = ashr exact i64 %6298, 32
  %6300 = icmp ne i64 %6299, %6295
  %6301 = zext i1 %6300 to i8
  store i8 %6301, i8* %80, align 1
  %6302 = and i32 %6296, 255
  %6303 = tail call i32 @llvm.ctpop.i32(i32 %6302)
  %6304 = trunc i32 %6303 to i8
  %6305 = and i8 %6304, 1
  %6306 = xor i8 %6305, 1
  store i8 %6306, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  %6307 = lshr i32 %6296, 31
  %6308 = trunc i32 %6307 to i8
  store i8 %6308, i8* %97, align 1
  store i8 %6301, i8* %103, align 1
  %6309 = add i64 %5874, 203
  store i64 %6309, i64* %3, align 8
  %6310 = load i64, i64* %6271, align 8
  store i64 %6310, i64* %RCX.i2541, align 8
  %6311 = add i64 %6310, 20
  %6312 = add i64 %5874, 207
  store i64 %6312, i64* %3, align 8
  %6313 = inttoptr i64 %6311 to i32*
  %6314 = load i32, i32* %6313, align 4
  %6315 = shl i64 %6295, 32
  %6316 = ashr exact i64 %6315, 32
  %6317 = sext i32 %6314 to i64
  %6318 = mul nsw i64 %6317, %6316
  %6319 = and i64 %6318, 4294967295
  store i64 %6319, i64* %RSI.i2547, align 8
  %6320 = trunc i64 %6318 to i32
  %6321 = and i64 %6318, 4294967295
  store i64 %6321, i64* %RDX.i2544, align 8
  store i8 0, i8* %80, align 1
  %6322 = and i32 %6320, 255
  %6323 = tail call i32 @llvm.ctpop.i32(i32 %6322)
  %6324 = trunc i32 %6323 to i8
  %6325 = and i8 %6324, 1
  %6326 = xor i8 %6325, 1
  store i8 %6326, i8* %86, align 1
  store i8 0, i8* %91, align 1
  %6327 = icmp eq i32 %6320, 0
  %6328 = zext i1 %6327 to i8
  store i8 %6328, i8* %94, align 1
  %6329 = lshr i32 %6320, 31
  %6330 = trunc i32 %6329 to i8
  store i8 %6330, i8* %97, align 1
  store i8 0, i8* %103, align 1
  %6331 = load i64, i64* %RBP.i, align 8
  %6332 = add i64 %6331, -72
  %6333 = add i64 %5874, 212
  store i64 %6333, i64* %3, align 8
  %6334 = inttoptr i64 %6332 to i32*
  %6335 = load i32, i32* %6334, align 4
  %6336 = zext i32 %6335 to i64
  store i64 %6336, i64* %RSI.i2547, align 8
  %6337 = add i64 %6331, -48
  %6338 = add i64 %5874, 216
  store i64 %6338, i64* %3, align 8
  %6339 = inttoptr i64 %6337 to i64*
  %6340 = load i64, i64* %6339, align 8
  store i64 %6340, i64* %RCX.i2541, align 8
  %6341 = add i64 %6340, 20
  %6342 = add i64 %5874, 220
  store i64 %6342, i64* %3, align 8
  %6343 = inttoptr i64 %6341 to i32*
  %6344 = load i32, i32* %6343, align 4
  %6345 = sext i32 %6335 to i64
  %6346 = sext i32 %6344 to i64
  %6347 = mul nsw i64 %6346, %6345
  %6348 = and i64 %6347, 4294967295
  store i64 %6348, i64* %RSI.i2547, align 8
  %6349 = trunc i64 %6347 to i32
  %6350 = add i32 %6349, %6320
  %6351 = zext i32 %6350 to i64
  store i64 %6351, i64* %RDX.i2544, align 8
  %6352 = icmp ult i32 %6350, %6320
  %6353 = icmp ult i32 %6350, %6349
  %6354 = or i1 %6352, %6353
  %6355 = zext i1 %6354 to i8
  store i8 %6355, i8* %80, align 1
  %6356 = and i32 %6350, 255
  %6357 = tail call i32 @llvm.ctpop.i32(i32 %6356)
  %6358 = trunc i32 %6357 to i8
  %6359 = and i8 %6358, 1
  %6360 = xor i8 %6359, 1
  store i8 %6360, i8* %86, align 1
  %6361 = xor i64 %6347, %6318
  %6362 = trunc i64 %6361 to i32
  %6363 = xor i32 %6362, %6350
  %6364 = lshr i32 %6363, 4
  %6365 = trunc i32 %6364 to i8
  %6366 = and i8 %6365, 1
  store i8 %6366, i8* %91, align 1
  %6367 = icmp eq i32 %6350, 0
  %6368 = zext i1 %6367 to i8
  store i8 %6368, i8* %94, align 1
  %6369 = lshr i32 %6350, 31
  %6370 = trunc i32 %6369 to i8
  store i8 %6370, i8* %97, align 1
  %6371 = lshr i32 %6349, 31
  %6372 = xor i32 %6369, %6329
  %6373 = xor i32 %6369, %6371
  %6374 = add nuw nsw i32 %6372, %6373
  %6375 = icmp eq i32 %6374, 2
  %6376 = zext i1 %6375 to i8
  store i8 %6376, i8* %103, align 1
  %6377 = add i64 %6331, -76
  %6378 = add i64 %5874, 225
  store i64 %6378, i64* %3, align 8
  %6379 = inttoptr i64 %6377 to i32*
  %6380 = load i32, i32* %6379, align 4
  %6381 = add i32 %6380, %6350
  %6382 = zext i32 %6381 to i64
  store i64 %6382, i64* %RDX.i2544, align 8
  %6383 = icmp ult i32 %6381, %6350
  %6384 = icmp ult i32 %6381, %6380
  %6385 = or i1 %6383, %6384
  %6386 = zext i1 %6385 to i8
  store i8 %6386, i8* %80, align 1
  %6387 = and i32 %6381, 255
  %6388 = tail call i32 @llvm.ctpop.i32(i32 %6387)
  %6389 = trunc i32 %6388 to i8
  %6390 = and i8 %6389, 1
  %6391 = xor i8 %6390, 1
  store i8 %6391, i8* %86, align 1
  %6392 = xor i32 %6380, %6350
  %6393 = xor i32 %6392, %6381
  %6394 = lshr i32 %6393, 4
  %6395 = trunc i32 %6394 to i8
  %6396 = and i8 %6395, 1
  store i8 %6396, i8* %91, align 1
  %6397 = icmp eq i32 %6381, 0
  %6398 = zext i1 %6397 to i8
  store i8 %6398, i8* %94, align 1
  %6399 = lshr i32 %6381, 31
  %6400 = trunc i32 %6399 to i8
  store i8 %6400, i8* %97, align 1
  %6401 = lshr i32 %6380, 31
  %6402 = xor i32 %6399, %6369
  %6403 = xor i32 %6399, %6401
  %6404 = add nuw nsw i32 %6402, %6403
  %6405 = icmp eq i32 %6404, 2
  %6406 = zext i1 %6405 to i8
  store i8 %6406, i8* %103, align 1
  %6407 = sext i32 %6381 to i64
  store i64 %6407, i64* %RCX.i2541, align 8
  %6408 = load i64, i64* %RAX.i2556, align 8
  %6409 = shl nsw i64 %6407, 2
  %6410 = add i64 %6408, %6409
  %6411 = add i64 %5874, 233
  store i64 %6411, i64* %3, align 8
  %6412 = load <2 x float>, <2 x float>* %191, align 1
  %6413 = load <2 x i32>, <2 x i32>* %196, align 1
  %6414 = inttoptr i64 %6410 to float*
  %6415 = load float, float* %6414, align 4
  %6416 = extractelement <2 x float> %6412, i32 0
  %6417 = fmul float %6416, %6415
  store float %6417, float* %192, align 1
  %6418 = bitcast <2 x float> %6412 to <2 x i32>
  %6419 = extractelement <2 x i32> %6418, i32 1
  store i32 %6419, i32* %187, align 1
  %6420 = extractelement <2 x i32> %6413, i32 0
  store i32 %6420, i32* %188, align 1
  %6421 = extractelement <2 x i32> %6413, i32 1
  store i32 %6421, i32* %190, align 1
  %6422 = load i64, i64* %RBP.i, align 8
  %6423 = add i64 %6422, -104
  %6424 = add i64 %5874, 238
  store i64 %6424, i64* %3, align 8
  %6425 = load <2 x float>, <2 x float>* %191, align 1
  %6426 = extractelement <2 x float> %6425, i32 0
  %6427 = inttoptr i64 %6423 to float*
  store float %6426, float* %6427, align 4
  %6428 = load i64, i64* %RBP.i, align 8
  %6429 = add i64 %6428, -104
  %6430 = load i64, i64* %3, align 8
  %6431 = add i64 %6430, 5
  store i64 %6431, i64* %3, align 8
  %6432 = inttoptr i64 %6429 to i32*
  %6433 = load i32, i32* %6432, align 4
  store i32 %6433, i32* %185, align 1
  store float 0.000000e+00, float* %193, align 1
  store float 0.000000e+00, float* %194, align 1
  store float 0.000000e+00, float* %195, align 1
  %6434 = add i64 %6430, 10
  store i64 %6434, i64* %3, align 8
  %6435 = load <2 x float>, <2 x float>* %191, align 1
  %6436 = load <2 x i32>, <2 x i32>* %196, align 1
  %6437 = inttoptr i64 %6429 to float*
  %6438 = load float, float* %6437, align 4
  %6439 = extractelement <2 x float> %6435, i32 0
  %6440 = fmul float %6439, %6438
  store float %6440, float* %192, align 1
  %6441 = bitcast <2 x float> %6435 to <2 x i32>
  %6442 = extractelement <2 x i32> %6441, i32 1
  store i32 %6442, i32* %187, align 1
  %6443 = extractelement <2 x i32> %6436, i32 0
  store i32 %6443, i32* %188, align 1
  %6444 = extractelement <2 x i32> %6436, i32 1
  store i32 %6444, i32* %190, align 1
  %6445 = add i64 %6428, -96
  %6446 = add i64 %6430, 15
  store i64 %6446, i64* %3, align 8
  %6447 = load <2 x float>, <2 x float>* %191, align 1
  %6448 = load <2 x i32>, <2 x i32>* %196, align 1
  %6449 = inttoptr i64 %6445 to float*
  %6450 = load float, float* %6449, align 4
  %6451 = extractelement <2 x float> %6447, i32 0
  %6452 = fadd float %6451, %6450
  store float %6452, float* %192, align 1
  %6453 = bitcast <2 x float> %6447 to <2 x i32>
  %6454 = extractelement <2 x i32> %6453, i32 1
  store i32 %6454, i32* %187, align 1
  %6455 = extractelement <2 x i32> %6448, i32 0
  store i32 %6455, i32* %188, align 1
  %6456 = extractelement <2 x i32> %6448, i32 1
  store i32 %6456, i32* %190, align 1
  %6457 = add i64 %6430, 20
  store i64 %6457, i64* %3, align 8
  %6458 = load <2 x float>, <2 x float>* %191, align 1
  %6459 = extractelement <2 x float> %6458, i32 0
  store float %6459, float* %6449, align 4
  %6460 = load i64, i64* %RBP.i, align 8
  %6461 = add i64 %6460, -40
  %6462 = load i64, i64* %3, align 8
  %6463 = add i64 %6462, 4
  store i64 %6463, i64* %3, align 8
  %6464 = inttoptr i64 %6461 to i64*
  %6465 = load i64, i64* %6464, align 8
  store i64 %6465, i64* %RAX.i2556, align 8
  %6466 = add i64 %6462, 7
  store i64 %6466, i64* %3, align 8
  %6467 = inttoptr i64 %6465 to i64*
  %6468 = load i64, i64* %6467, align 8
  store i64 %6468, i64* %RAX.i2556, align 8
  %6469 = add i64 %6462, 11
  store i64 %6469, i64* %3, align 8
  %6470 = load i64, i64* %6464, align 8
  store i64 %6470, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %80, align 1
  store i8 1, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  store i8 0, i8* %97, align 1
  store i8 0, i8* %103, align 1
  %6471 = add i64 %6462, 19
  store i64 %6471, i64* %3, align 8
  %6472 = load i64, i64* %6464, align 8
  store i64 %6472, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %80, align 1
  store i8 1, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  store i8 0, i8* %97, align 1
  store i8 0, i8* %103, align 1
  %6473 = add i64 %6462, 27
  store i64 %6473, i64* %3, align 8
  %6474 = load i64, i64* %6464, align 8
  store i64 %6474, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %80, align 1
  store i8 1, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  store i8 0, i8* %97, align 1
  store i8 0, i8* %103, align 1
  %6475 = add i64 %6460, -68
  %6476 = add i64 %6462, 34
  store i64 %6476, i64* %3, align 8
  %6477 = inttoptr i64 %6475 to i32*
  %6478 = load i32, i32* %6477, align 4
  %6479 = zext i32 %6478 to i64
  store i64 %6479, i64* %RSI.i2547, align 8
  %6480 = add i64 %6462, 38
  store i64 %6480, i64* %3, align 8
  %6481 = load i64, i64* %6464, align 8
  store i64 %6481, i64* %RCX.i2541, align 8
  %6482 = add i64 %6481, 16
  %6483 = add i64 %6462, 42
  store i64 %6483, i64* %3, align 8
  %6484 = inttoptr i64 %6482 to i32*
  %6485 = load i32, i32* %6484, align 4
  %6486 = sext i32 %6478 to i64
  %6487 = sext i32 %6485 to i64
  %6488 = mul nsw i64 %6487, %6486
  %6489 = trunc i64 %6488 to i32
  %6490 = and i64 %6488, 4294967295
  store i64 %6490, i64* %RSI.i2547, align 8
  %6491 = shl i64 %6488, 32
  %6492 = ashr exact i64 %6491, 32
  %6493 = icmp ne i64 %6492, %6488
  %6494 = zext i1 %6493 to i8
  store i8 %6494, i8* %80, align 1
  %6495 = and i32 %6489, 255
  %6496 = tail call i32 @llvm.ctpop.i32(i32 %6495)
  %6497 = trunc i32 %6496 to i8
  %6498 = and i8 %6497, 1
  %6499 = xor i8 %6498, 1
  store i8 %6499, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  %6500 = lshr i32 %6489, 31
  %6501 = trunc i32 %6500 to i8
  store i8 %6501, i8* %97, align 1
  store i8 %6494, i8* %103, align 1
  %6502 = load i64, i64* %RBP.i, align 8
  %6503 = add i64 %6502, -40
  %6504 = add i64 %6462, 46
  store i64 %6504, i64* %3, align 8
  %6505 = inttoptr i64 %6503 to i64*
  %6506 = load i64, i64* %6505, align 8
  store i64 %6506, i64* %RCX.i2541, align 8
  %6507 = add i64 %6506, 20
  %6508 = add i64 %6462, 50
  store i64 %6508, i64* %3, align 8
  %6509 = inttoptr i64 %6507 to i32*
  %6510 = load i32, i32* %6509, align 4
  %6511 = shl i64 %6488, 32
  %6512 = ashr exact i64 %6511, 32
  %6513 = sext i32 %6510 to i64
  %6514 = mul nsw i64 %6513, %6512
  %6515 = and i64 %6514, 4294967295
  store i64 %6515, i64* %RSI.i2547, align 8
  %6516 = trunc i64 %6514 to i32
  %6517 = and i64 %6514, 4294967295
  store i64 %6517, i64* %RDX.i2544, align 8
  store i8 0, i8* %80, align 1
  %6518 = and i32 %6516, 255
  %6519 = tail call i32 @llvm.ctpop.i32(i32 %6518)
  %6520 = trunc i32 %6519 to i8
  %6521 = and i8 %6520, 1
  %6522 = xor i8 %6521, 1
  store i8 %6522, i8* %86, align 1
  store i8 0, i8* %91, align 1
  %6523 = icmp eq i32 %6516, 0
  %6524 = zext i1 %6523 to i8
  store i8 %6524, i8* %94, align 1
  %6525 = lshr i32 %6516, 31
  %6526 = trunc i32 %6525 to i8
  store i8 %6526, i8* %97, align 1
  store i8 0, i8* %103, align 1
  %6527 = add i64 %6502, -72
  %6528 = add i64 %6462, 55
  store i64 %6528, i64* %3, align 8
  %6529 = inttoptr i64 %6527 to i32*
  %6530 = load i32, i32* %6529, align 4
  %6531 = zext i32 %6530 to i64
  store i64 %6531, i64* %RSI.i2547, align 8
  %6532 = add i64 %6462, 59
  store i64 %6532, i64* %3, align 8
  %6533 = load i64, i64* %6505, align 8
  store i64 %6533, i64* %RCX.i2541, align 8
  %6534 = add i64 %6533, 20
  %6535 = add i64 %6462, 63
  store i64 %6535, i64* %3, align 8
  %6536 = inttoptr i64 %6534 to i32*
  %6537 = load i32, i32* %6536, align 4
  %6538 = sext i32 %6530 to i64
  %6539 = sext i32 %6537 to i64
  %6540 = mul nsw i64 %6539, %6538
  %6541 = and i64 %6540, 4294967295
  store i64 %6541, i64* %RSI.i2547, align 8
  %6542 = trunc i64 %6540 to i32
  %6543 = add i32 %6542, %6516
  %6544 = zext i32 %6543 to i64
  store i64 %6544, i64* %RDX.i2544, align 8
  %6545 = icmp ult i32 %6543, %6516
  %6546 = icmp ult i32 %6543, %6542
  %6547 = or i1 %6545, %6546
  %6548 = zext i1 %6547 to i8
  store i8 %6548, i8* %80, align 1
  %6549 = and i32 %6543, 255
  %6550 = tail call i32 @llvm.ctpop.i32(i32 %6549)
  %6551 = trunc i32 %6550 to i8
  %6552 = and i8 %6551, 1
  %6553 = xor i8 %6552, 1
  store i8 %6553, i8* %86, align 1
  %6554 = xor i64 %6540, %6514
  %6555 = trunc i64 %6554 to i32
  %6556 = xor i32 %6555, %6543
  %6557 = lshr i32 %6556, 4
  %6558 = trunc i32 %6557 to i8
  %6559 = and i8 %6558, 1
  store i8 %6559, i8* %91, align 1
  %6560 = icmp eq i32 %6543, 0
  %6561 = zext i1 %6560 to i8
  store i8 %6561, i8* %94, align 1
  %6562 = lshr i32 %6543, 31
  %6563 = trunc i32 %6562 to i8
  store i8 %6563, i8* %97, align 1
  %6564 = lshr i32 %6542, 31
  %6565 = xor i32 %6562, %6525
  %6566 = xor i32 %6562, %6564
  %6567 = add nuw nsw i32 %6565, %6566
  %6568 = icmp eq i32 %6567, 2
  %6569 = zext i1 %6568 to i8
  store i8 %6569, i8* %103, align 1
  %6570 = load i64, i64* %RBP.i, align 8
  %6571 = add i64 %6570, -76
  %6572 = add i64 %6462, 68
  store i64 %6572, i64* %3, align 8
  %6573 = inttoptr i64 %6571 to i32*
  %6574 = load i32, i32* %6573, align 4
  %6575 = add i32 %6574, %6543
  %6576 = zext i32 %6575 to i64
  store i64 %6576, i64* %RDX.i2544, align 8
  %6577 = icmp ult i32 %6575, %6543
  %6578 = icmp ult i32 %6575, %6574
  %6579 = or i1 %6577, %6578
  %6580 = zext i1 %6579 to i8
  store i8 %6580, i8* %80, align 1
  %6581 = and i32 %6575, 255
  %6582 = tail call i32 @llvm.ctpop.i32(i32 %6581)
  %6583 = trunc i32 %6582 to i8
  %6584 = and i8 %6583, 1
  %6585 = xor i8 %6584, 1
  store i8 %6585, i8* %86, align 1
  %6586 = xor i32 %6574, %6543
  %6587 = xor i32 %6586, %6575
  %6588 = lshr i32 %6587, 4
  %6589 = trunc i32 %6588 to i8
  %6590 = and i8 %6589, 1
  store i8 %6590, i8* %91, align 1
  %6591 = icmp eq i32 %6575, 0
  %6592 = zext i1 %6591 to i8
  store i8 %6592, i8* %94, align 1
  %6593 = lshr i32 %6575, 31
  %6594 = trunc i32 %6593 to i8
  store i8 %6594, i8* %97, align 1
  %6595 = lshr i32 %6574, 31
  %6596 = xor i32 %6593, %6562
  %6597 = xor i32 %6593, %6595
  %6598 = add nuw nsw i32 %6596, %6597
  %6599 = icmp eq i32 %6598, 2
  %6600 = zext i1 %6599 to i8
  store i8 %6600, i8* %103, align 1
  %6601 = sext i32 %6575 to i64
  store i64 %6601, i64* %RCX.i2541, align 8
  %6602 = load i64, i64* %RAX.i2556, align 8
  %6603 = shl nsw i64 %6601, 2
  %6604 = add i64 %6602, %6603
  %6605 = add i64 %6462, 76
  store i64 %6605, i64* %3, align 8
  %6606 = inttoptr i64 %6604 to i32*
  %6607 = load i32, i32* %6606, align 4
  store i32 %6607, i32* %185, align 1
  store float 0.000000e+00, float* %193, align 1
  store float 0.000000e+00, float* %194, align 1
  store float 0.000000e+00, float* %195, align 1
  %6608 = load i32, i32* inttoptr (i64 6303832 to i32*), align 8
  store i32 %6608, i32* %200, align 1
  store float 0.000000e+00, float* %202, align 1
  store float 0.000000e+00, float* %204, align 1
  store float 0.000000e+00, float* %206, align 1
  %6609 = add i64 %6570, -104
  %6610 = add i64 %6462, 90
  store i64 %6610, i64* %3, align 8
  %6611 = load <2 x float>, <2 x float>* %207, align 1
  %6612 = load <2 x i32>, <2 x i32>* %208, align 1
  %6613 = inttoptr i64 %6609 to float*
  %6614 = load float, float* %6613, align 4
  %6615 = extractelement <2 x float> %6611, i32 0
  %6616 = fmul float %6615, %6614
  store float %6616, float* %199, align 1
  %6617 = bitcast <2 x float> %6611 to <2 x i32>
  %6618 = extractelement <2 x i32> %6617, i32 1
  store i32 %6618, i32* %209, align 1
  %6619 = extractelement <2 x i32> %6612, i32 0
  store i32 %6619, i32* %210, align 1
  %6620 = extractelement <2 x i32> %6612, i32 1
  store i32 %6620, i32* %211, align 1
  %6621 = load <2 x float>, <2 x float>* %191, align 1
  %6622 = load <2 x i32>, <2 x i32>* %196, align 1
  %6623 = load <2 x float>, <2 x float>* %207, align 1
  %6624 = extractelement <2 x float> %6621, i32 0
  %6625 = extractelement <2 x float> %6623, i32 0
  %6626 = fadd float %6624, %6625
  store float %6626, float* %192, align 1
  %6627 = bitcast <2 x float> %6621 to <2 x i32>
  %6628 = extractelement <2 x i32> %6627, i32 1
  store i32 %6628, i32* %187, align 1
  %6629 = extractelement <2 x i32> %6622, i32 0
  store i32 %6629, i32* %188, align 1
  %6630 = extractelement <2 x i32> %6622, i32 1
  store i32 %6630, i32* %190, align 1
  %6631 = add i64 %6570, -64
  %6632 = add i64 %6462, 98
  store i64 %6632, i64* %3, align 8
  %6633 = inttoptr i64 %6631 to i64*
  %6634 = load i64, i64* %6633, align 8
  store i64 %6634, i64* %RAX.i2556, align 8
  %6635 = add i64 %6462, 101
  store i64 %6635, i64* %3, align 8
  %6636 = inttoptr i64 %6634 to i64*
  %6637 = load i64, i64* %6636, align 8
  store i64 %6637, i64* %RAX.i2556, align 8
  %6638 = load i64, i64* %RBP.i, align 8
  %6639 = add i64 %6638, -64
  %6640 = add i64 %6462, 105
  store i64 %6640, i64* %3, align 8
  %6641 = inttoptr i64 %6639 to i64*
  %6642 = load i64, i64* %6641, align 8
  store i64 %6642, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %80, align 1
  store i8 1, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  store i8 0, i8* %97, align 1
  store i8 0, i8* %103, align 1
  %6643 = add i64 %6462, 113
  store i64 %6643, i64* %3, align 8
  %6644 = load i64, i64* %6641, align 8
  store i64 %6644, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %80, align 1
  store i8 1, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  store i8 0, i8* %97, align 1
  store i8 0, i8* %103, align 1
  %6645 = add i64 %6462, 121
  store i64 %6645, i64* %3, align 8
  %6646 = load i64, i64* %6641, align 8
  store i64 %6646, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %80, align 1
  store i8 1, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  store i8 0, i8* %97, align 1
  store i8 0, i8* %103, align 1
  %6647 = add i64 %6638, -68
  %6648 = add i64 %6462, 128
  store i64 %6648, i64* %3, align 8
  %6649 = inttoptr i64 %6647 to i32*
  %6650 = load i32, i32* %6649, align 4
  %6651 = zext i32 %6650 to i64
  store i64 %6651, i64* %RSI.i2547, align 8
  %6652 = add i64 %6462, 132
  store i64 %6652, i64* %3, align 8
  %6653 = load i64, i64* %6641, align 8
  store i64 %6653, i64* %RCX.i2541, align 8
  %6654 = add i64 %6653, 16
  %6655 = add i64 %6462, 136
  store i64 %6655, i64* %3, align 8
  %6656 = inttoptr i64 %6654 to i32*
  %6657 = load i32, i32* %6656, align 4
  %6658 = sext i32 %6650 to i64
  %6659 = sext i32 %6657 to i64
  %6660 = mul nsw i64 %6659, %6658
  %6661 = trunc i64 %6660 to i32
  %6662 = and i64 %6660, 4294967295
  store i64 %6662, i64* %RSI.i2547, align 8
  %6663 = shl i64 %6660, 32
  %6664 = ashr exact i64 %6663, 32
  %6665 = icmp ne i64 %6664, %6660
  %6666 = zext i1 %6665 to i8
  store i8 %6666, i8* %80, align 1
  %6667 = and i32 %6661, 255
  %6668 = tail call i32 @llvm.ctpop.i32(i32 %6667)
  %6669 = trunc i32 %6668 to i8
  %6670 = and i8 %6669, 1
  %6671 = xor i8 %6670, 1
  store i8 %6671, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  %6672 = lshr i32 %6661, 31
  %6673 = trunc i32 %6672 to i8
  store i8 %6673, i8* %97, align 1
  store i8 %6666, i8* %103, align 1
  %6674 = add i64 %6462, 140
  store i64 %6674, i64* %3, align 8
  %6675 = load i64, i64* %6641, align 8
  store i64 %6675, i64* %RCX.i2541, align 8
  %6676 = add i64 %6675, 20
  %6677 = add i64 %6462, 144
  store i64 %6677, i64* %3, align 8
  %6678 = inttoptr i64 %6676 to i32*
  %6679 = load i32, i32* %6678, align 4
  %6680 = shl i64 %6660, 32
  %6681 = ashr exact i64 %6680, 32
  %6682 = sext i32 %6679 to i64
  %6683 = mul nsw i64 %6682, %6681
  %6684 = and i64 %6683, 4294967295
  store i64 %6684, i64* %RSI.i2547, align 8
  %6685 = trunc i64 %6683 to i32
  %6686 = and i64 %6683, 4294967295
  store i64 %6686, i64* %RDX.i2544, align 8
  store i8 0, i8* %80, align 1
  %6687 = and i32 %6685, 255
  %6688 = tail call i32 @llvm.ctpop.i32(i32 %6687)
  %6689 = trunc i32 %6688 to i8
  %6690 = and i8 %6689, 1
  %6691 = xor i8 %6690, 1
  store i8 %6691, i8* %86, align 1
  store i8 0, i8* %91, align 1
  %6692 = icmp eq i32 %6685, 0
  %6693 = zext i1 %6692 to i8
  store i8 %6693, i8* %94, align 1
  %6694 = lshr i32 %6685, 31
  %6695 = trunc i32 %6694 to i8
  store i8 %6695, i8* %97, align 1
  store i8 0, i8* %103, align 1
  %6696 = load i64, i64* %RBP.i, align 8
  %6697 = add i64 %6696, -72
  %6698 = add i64 %6462, 149
  store i64 %6698, i64* %3, align 8
  %6699 = inttoptr i64 %6697 to i32*
  %6700 = load i32, i32* %6699, align 4
  %6701 = zext i32 %6700 to i64
  store i64 %6701, i64* %RSI.i2547, align 8
  %6702 = add i64 %6696, -64
  %6703 = add i64 %6462, 153
  store i64 %6703, i64* %3, align 8
  %6704 = inttoptr i64 %6702 to i64*
  %6705 = load i64, i64* %6704, align 8
  store i64 %6705, i64* %RCX.i2541, align 8
  %6706 = add i64 %6705, 20
  %6707 = add i64 %6462, 157
  store i64 %6707, i64* %3, align 8
  %6708 = inttoptr i64 %6706 to i32*
  %6709 = load i32, i32* %6708, align 4
  %6710 = sext i32 %6700 to i64
  %6711 = sext i32 %6709 to i64
  %6712 = mul nsw i64 %6711, %6710
  %6713 = and i64 %6712, 4294967295
  store i64 %6713, i64* %RSI.i2547, align 8
  %6714 = trunc i64 %6712 to i32
  %6715 = add i32 %6714, %6685
  %6716 = zext i32 %6715 to i64
  store i64 %6716, i64* %RDX.i2544, align 8
  %6717 = icmp ult i32 %6715, %6685
  %6718 = icmp ult i32 %6715, %6714
  %6719 = or i1 %6717, %6718
  %6720 = zext i1 %6719 to i8
  store i8 %6720, i8* %80, align 1
  %6721 = and i32 %6715, 255
  %6722 = tail call i32 @llvm.ctpop.i32(i32 %6721)
  %6723 = trunc i32 %6722 to i8
  %6724 = and i8 %6723, 1
  %6725 = xor i8 %6724, 1
  store i8 %6725, i8* %86, align 1
  %6726 = xor i64 %6712, %6683
  %6727 = trunc i64 %6726 to i32
  %6728 = xor i32 %6727, %6715
  %6729 = lshr i32 %6728, 4
  %6730 = trunc i32 %6729 to i8
  %6731 = and i8 %6730, 1
  store i8 %6731, i8* %91, align 1
  %6732 = icmp eq i32 %6715, 0
  %6733 = zext i1 %6732 to i8
  store i8 %6733, i8* %94, align 1
  %6734 = lshr i32 %6715, 31
  %6735 = trunc i32 %6734 to i8
  store i8 %6735, i8* %97, align 1
  %6736 = lshr i32 %6714, 31
  %6737 = xor i32 %6734, %6694
  %6738 = xor i32 %6734, %6736
  %6739 = add nuw nsw i32 %6737, %6738
  %6740 = icmp eq i32 %6739, 2
  %6741 = zext i1 %6740 to i8
  store i8 %6741, i8* %103, align 1
  %6742 = add i64 %6696, -76
  %6743 = add i64 %6462, 162
  store i64 %6743, i64* %3, align 8
  %6744 = inttoptr i64 %6742 to i32*
  %6745 = load i32, i32* %6744, align 4
  %6746 = add i32 %6745, %6715
  %6747 = zext i32 %6746 to i64
  store i64 %6747, i64* %RDX.i2544, align 8
  %6748 = icmp ult i32 %6746, %6715
  %6749 = icmp ult i32 %6746, %6745
  %6750 = or i1 %6748, %6749
  %6751 = zext i1 %6750 to i8
  store i8 %6751, i8* %80, align 1
  %6752 = and i32 %6746, 255
  %6753 = tail call i32 @llvm.ctpop.i32(i32 %6752)
  %6754 = trunc i32 %6753 to i8
  %6755 = and i8 %6754, 1
  %6756 = xor i8 %6755, 1
  store i8 %6756, i8* %86, align 1
  %6757 = xor i32 %6745, %6715
  %6758 = xor i32 %6757, %6746
  %6759 = lshr i32 %6758, 4
  %6760 = trunc i32 %6759 to i8
  %6761 = and i8 %6760, 1
  store i8 %6761, i8* %91, align 1
  %6762 = icmp eq i32 %6746, 0
  %6763 = zext i1 %6762 to i8
  store i8 %6763, i8* %94, align 1
  %6764 = lshr i32 %6746, 31
  %6765 = trunc i32 %6764 to i8
  store i8 %6765, i8* %97, align 1
  %6766 = lshr i32 %6745, 31
  %6767 = xor i32 %6764, %6734
  %6768 = xor i32 %6764, %6766
  %6769 = add nuw nsw i32 %6767, %6768
  %6770 = icmp eq i32 %6769, 2
  %6771 = zext i1 %6770 to i8
  store i8 %6771, i8* %103, align 1
  %6772 = sext i32 %6746 to i64
  store i64 %6772, i64* %RCX.i2541, align 8
  %6773 = load i64, i64* %RAX.i2556, align 8
  %6774 = shl nsw i64 %6772, 2
  %6775 = add i64 %6773, %6774
  %6776 = add i64 %6462, 170
  store i64 %6776, i64* %3, align 8
  %6777 = load <2 x float>, <2 x float>* %191, align 1
  %6778 = extractelement <2 x float> %6777, i32 0
  %6779 = inttoptr i64 %6775 to float*
  store float %6778, float* %6779, align 4
  %6780 = load i64, i64* %RBP.i, align 8
  %6781 = add i64 %6780, -76
  %6782 = load i64, i64* %3, align 8
  %6783 = add i64 %6782, 3
  store i64 %6783, i64* %3, align 8
  %6784 = inttoptr i64 %6781 to i32*
  %6785 = load i32, i32* %6784, align 4
  %6786 = add i32 %6785, 1
  %6787 = zext i32 %6786 to i64
  store i64 %6787, i64* %RAX.i2556, align 8
  %6788 = icmp eq i32 %6785, -1
  %6789 = icmp eq i32 %6786, 0
  %6790 = or i1 %6788, %6789
  %6791 = zext i1 %6790 to i8
  store i8 %6791, i8* %80, align 1
  %6792 = and i32 %6786, 255
  %6793 = tail call i32 @llvm.ctpop.i32(i32 %6792)
  %6794 = trunc i32 %6793 to i8
  %6795 = and i8 %6794, 1
  %6796 = xor i8 %6795, 1
  store i8 %6796, i8* %86, align 1
  %6797 = xor i32 %6786, %6785
  %6798 = lshr i32 %6797, 4
  %6799 = trunc i32 %6798 to i8
  %6800 = and i8 %6799, 1
  store i8 %6800, i8* %91, align 1
  %6801 = zext i1 %6789 to i8
  store i8 %6801, i8* %94, align 1
  %6802 = lshr i32 %6786, 31
  %6803 = trunc i32 %6802 to i8
  store i8 %6803, i8* %97, align 1
  %6804 = lshr i32 %6785, 31
  %6805 = xor i32 %6802, %6804
  %6806 = add nuw nsw i32 %6805, %6802
  %6807 = icmp eq i32 %6806, 2
  %6808 = zext i1 %6807 to i8
  store i8 %6808, i8* %103, align 1
  %6809 = add i64 %6782, 9
  store i64 %6809, i64* %3, align 8
  store i32 %6786, i32* %6784, align 4
  %6810 = load i64, i64* %3, align 8
  %6811 = add i64 %6810, -2748
  store i64 %6811, i64* %3, align 8
  br label %block_.L_400d8a

block_.L_40184b:                                  ; preds = %block_.L_400d8a
  %6812 = add i64 %359, -72
  %6813 = add i64 %395, 8
  store i64 %6813, i64* %3, align 8
  %6814 = inttoptr i64 %6812 to i32*
  %6815 = load i32, i32* %6814, align 4
  %6816 = add i32 %6815, 1
  %6817 = zext i32 %6816 to i64
  store i64 %6817, i64* %RAX.i2556, align 8
  %6818 = icmp eq i32 %6815, -1
  %6819 = icmp eq i32 %6816, 0
  %6820 = or i1 %6818, %6819
  %6821 = zext i1 %6820 to i8
  store i8 %6821, i8* %80, align 1
  %6822 = and i32 %6816, 255
  %6823 = tail call i32 @llvm.ctpop.i32(i32 %6822)
  %6824 = trunc i32 %6823 to i8
  %6825 = and i8 %6824, 1
  %6826 = xor i8 %6825, 1
  store i8 %6826, i8* %86, align 1
  %6827 = xor i32 %6816, %6815
  %6828 = lshr i32 %6827, 4
  %6829 = trunc i32 %6828 to i8
  %6830 = and i8 %6829, 1
  store i8 %6830, i8* %91, align 1
  %6831 = zext i1 %6819 to i8
  store i8 %6831, i8* %94, align 1
  %6832 = lshr i32 %6816, 31
  %6833 = trunc i32 %6832 to i8
  store i8 %6833, i8* %97, align 1
  %6834 = lshr i32 %6815, 31
  %6835 = xor i32 %6832, %6834
  %6836 = add nuw nsw i32 %6835, %6832
  %6837 = icmp eq i32 %6836, 2
  %6838 = zext i1 %6837 to i8
  store i8 %6838, i8* %103, align 1
  %6839 = add i64 %395, 14
  store i64 %6839, i64* %3, align 8
  store i32 %6816, i32* %6814, align 4
  %6840 = load i64, i64* %3, align 8
  %6841 = add i64 %6840, -2786
  store i64 %6841, i64* %3, align 8
  br label %block_.L_400d77

block_.L_40185e:                                  ; preds = %block_.L_400d77
  %6842 = add i64 %318, -68
  %6843 = add i64 %354, 8
  store i64 %6843, i64* %3, align 8
  %6844 = inttoptr i64 %6842 to i32*
  %6845 = load i32, i32* %6844, align 4
  %6846 = add i32 %6845, 1
  %6847 = zext i32 %6846 to i64
  store i64 %6847, i64* %RAX.i2556, align 8
  %6848 = icmp eq i32 %6845, -1
  %6849 = icmp eq i32 %6846, 0
  %6850 = or i1 %6848, %6849
  %6851 = zext i1 %6850 to i8
  store i8 %6851, i8* %80, align 1
  %6852 = and i32 %6846, 255
  %6853 = tail call i32 @llvm.ctpop.i32(i32 %6852)
  %6854 = trunc i32 %6853 to i8
  %6855 = and i8 %6854, 1
  %6856 = xor i8 %6855, 1
  store i8 %6856, i8* %86, align 1
  %6857 = xor i32 %6846, %6845
  %6858 = lshr i32 %6857, 4
  %6859 = trunc i32 %6858 to i8
  %6860 = and i8 %6859, 1
  store i8 %6860, i8* %91, align 1
  %6861 = zext i1 %6849 to i8
  store i8 %6861, i8* %94, align 1
  %6862 = lshr i32 %6846, 31
  %6863 = trunc i32 %6862 to i8
  store i8 %6863, i8* %97, align 1
  %6864 = lshr i32 %6845, 31
  %6865 = xor i32 %6862, %6864
  %6866 = add nuw nsw i32 %6865, %6862
  %6867 = icmp eq i32 %6866, 2
  %6868 = zext i1 %6867 to i8
  store i8 %6868, i8* %103, align 1
  %6869 = add i64 %354, 14
  store i64 %6869, i64* %3, align 8
  store i32 %6846, i32* %6844, align 4
  %6870 = load i64, i64* %3, align 8
  %6871 = add i64 %6870, -2824
  store i64 %6871, i64* %3, align 8
  br label %block_.L_400d64

block_.L_401871:                                  ; preds = %block_.L_400d64
  %6872 = add i64 %313, 7
  store i64 %6872, i64* %3, align 8
  store i32 1, i32* %280, align 4
  %.pre24 = load i64, i64* %3, align 8
  br label %block_.L_401878

block_.L_401878:                                  ; preds = %block_.L_401963, %block_.L_401871
  %6873 = phi i64 [ %7376, %block_.L_401963 ], [ %.pre24, %block_.L_401871 ]
  %6874 = load i64, i64* %RBP.i, align 8
  %6875 = add i64 %6874, -68
  %6876 = add i64 %6873, 3
  store i64 %6876, i64* %3, align 8
  %6877 = inttoptr i64 %6875 to i32*
  %6878 = load i32, i32* %6877, align 4
  %6879 = zext i32 %6878 to i64
  store i64 %6879, i64* %RAX.i2556, align 8
  %6880 = add i64 %6874, -84
  %6881 = add i64 %6873, 6
  store i64 %6881, i64* %3, align 8
  %6882 = inttoptr i64 %6880 to i32*
  %6883 = load i32, i32* %6882, align 4
  %6884 = sub i32 %6878, %6883
  %6885 = icmp ult i32 %6878, %6883
  %6886 = zext i1 %6885 to i8
  store i8 %6886, i8* %80, align 1
  %6887 = and i32 %6884, 255
  %6888 = tail call i32 @llvm.ctpop.i32(i32 %6887)
  %6889 = trunc i32 %6888 to i8
  %6890 = and i8 %6889, 1
  %6891 = xor i8 %6890, 1
  store i8 %6891, i8* %86, align 1
  %6892 = xor i32 %6883, %6878
  %6893 = xor i32 %6892, %6884
  %6894 = lshr i32 %6893, 4
  %6895 = trunc i32 %6894 to i8
  %6896 = and i8 %6895, 1
  store i8 %6896, i8* %91, align 1
  %6897 = icmp eq i32 %6884, 0
  %6898 = zext i1 %6897 to i8
  store i8 %6898, i8* %94, align 1
  %6899 = lshr i32 %6884, 31
  %6900 = trunc i32 %6899 to i8
  store i8 %6900, i8* %97, align 1
  %6901 = lshr i32 %6878, 31
  %6902 = lshr i32 %6883, 31
  %6903 = xor i32 %6902, %6901
  %6904 = xor i32 %6899, %6901
  %6905 = add nuw nsw i32 %6904, %6903
  %6906 = icmp eq i32 %6905, 2
  %6907 = zext i1 %6906 to i8
  store i8 %6907, i8* %103, align 1
  %6908 = icmp ne i8 %6900, 0
  %6909 = xor i1 %6908, %6906
  %.v = select i1 %6909, i64 12, i64 254
  %6910 = add i64 %6873, %.v
  store i64 %6910, i64* %3, align 8
  br i1 %6909, label %block_401884, label %block_.L_401976

block_401884:                                     ; preds = %block_.L_401878
  %6911 = add i64 %6874, -72
  %6912 = add i64 %6910, 7
  store i64 %6912, i64* %3, align 8
  %6913 = inttoptr i64 %6911 to i32*
  store i32 1, i32* %6913, align 4
  %.pre25 = load i64, i64* %3, align 8
  br label %block_.L_40188b

block_.L_40188b:                                  ; preds = %block_.L_401950, %block_401884
  %6914 = phi i64 [ %7346, %block_.L_401950 ], [ %.pre25, %block_401884 ]
  %6915 = load i64, i64* %RBP.i, align 8
  %6916 = add i64 %6915, -72
  %6917 = add i64 %6914, 3
  store i64 %6917, i64* %3, align 8
  %6918 = inttoptr i64 %6916 to i32*
  %6919 = load i32, i32* %6918, align 4
  %6920 = zext i32 %6919 to i64
  store i64 %6920, i64* %RAX.i2556, align 8
  %6921 = add i64 %6915, -88
  %6922 = add i64 %6914, 6
  store i64 %6922, i64* %3, align 8
  %6923 = inttoptr i64 %6921 to i32*
  %6924 = load i32, i32* %6923, align 4
  %6925 = sub i32 %6919, %6924
  %6926 = icmp ult i32 %6919, %6924
  %6927 = zext i1 %6926 to i8
  store i8 %6927, i8* %80, align 1
  %6928 = and i32 %6925, 255
  %6929 = tail call i32 @llvm.ctpop.i32(i32 %6928)
  %6930 = trunc i32 %6929 to i8
  %6931 = and i8 %6930, 1
  %6932 = xor i8 %6931, 1
  store i8 %6932, i8* %86, align 1
  %6933 = xor i32 %6924, %6919
  %6934 = xor i32 %6933, %6925
  %6935 = lshr i32 %6934, 4
  %6936 = trunc i32 %6935 to i8
  %6937 = and i8 %6936, 1
  store i8 %6937, i8* %91, align 1
  %6938 = icmp eq i32 %6925, 0
  %6939 = zext i1 %6938 to i8
  store i8 %6939, i8* %94, align 1
  %6940 = lshr i32 %6925, 31
  %6941 = trunc i32 %6940 to i8
  store i8 %6941, i8* %97, align 1
  %6942 = lshr i32 %6919, 31
  %6943 = lshr i32 %6924, 31
  %6944 = xor i32 %6943, %6942
  %6945 = xor i32 %6940, %6942
  %6946 = add nuw nsw i32 %6945, %6944
  %6947 = icmp eq i32 %6946, 2
  %6948 = zext i1 %6947 to i8
  store i8 %6948, i8* %103, align 1
  %6949 = icmp ne i8 %6941, 0
  %6950 = xor i1 %6949, %6947
  %.v29 = select i1 %6950, i64 12, i64 216
  %6951 = add i64 %6914, %.v29
  store i64 %6951, i64* %3, align 8
  br i1 %6950, label %block_401897, label %block_.L_401963

block_401897:                                     ; preds = %block_.L_40188b
  %6952 = add i64 %6915, -76
  %6953 = add i64 %6951, 7
  store i64 %6953, i64* %3, align 8
  %6954 = inttoptr i64 %6952 to i32*
  store i32 1, i32* %6954, align 4
  %.pre26 = load i64, i64* %3, align 8
  br label %block_.L_40189e

block_.L_40189e:                                  ; preds = %block_4018aa, %block_401897
  %6955 = phi i64 [ %7316, %block_4018aa ], [ %.pre26, %block_401897 ]
  %6956 = load i64, i64* %RBP.i, align 8
  %6957 = add i64 %6956, -76
  %6958 = add i64 %6955, 3
  store i64 %6958, i64* %3, align 8
  %6959 = inttoptr i64 %6957 to i32*
  %6960 = load i32, i32* %6959, align 4
  %6961 = zext i32 %6960 to i64
  store i64 %6961, i64* %RAX.i2556, align 8
  %6962 = add i64 %6956, -92
  %6963 = add i64 %6955, 6
  store i64 %6963, i64* %3, align 8
  %6964 = inttoptr i64 %6962 to i32*
  %6965 = load i32, i32* %6964, align 4
  %6966 = sub i32 %6960, %6965
  %6967 = icmp ult i32 %6960, %6965
  %6968 = zext i1 %6967 to i8
  store i8 %6968, i8* %80, align 1
  %6969 = and i32 %6966, 255
  %6970 = tail call i32 @llvm.ctpop.i32(i32 %6969)
  %6971 = trunc i32 %6970 to i8
  %6972 = and i8 %6971, 1
  %6973 = xor i8 %6972, 1
  store i8 %6973, i8* %86, align 1
  %6974 = xor i32 %6965, %6960
  %6975 = xor i32 %6974, %6966
  %6976 = lshr i32 %6975, 4
  %6977 = trunc i32 %6976 to i8
  %6978 = and i8 %6977, 1
  store i8 %6978, i8* %91, align 1
  %6979 = icmp eq i32 %6966, 0
  %6980 = zext i1 %6979 to i8
  store i8 %6980, i8* %94, align 1
  %6981 = lshr i32 %6966, 31
  %6982 = trunc i32 %6981 to i8
  store i8 %6982, i8* %97, align 1
  %6983 = lshr i32 %6960, 31
  %6984 = lshr i32 %6965, 31
  %6985 = xor i32 %6984, %6983
  %6986 = xor i32 %6981, %6983
  %6987 = add nuw nsw i32 %6986, %6985
  %6988 = icmp eq i32 %6987, 2
  %6989 = zext i1 %6988 to i8
  store i8 %6989, i8* %103, align 1
  %6990 = icmp ne i8 %6982, 0
  %6991 = xor i1 %6990, %6988
  %.v30 = select i1 %6991, i64 12, i64 178
  %6992 = add i64 %6955, %.v30
  store i64 %6992, i64* %3, align 8
  br i1 %6991, label %block_4018aa, label %block_.L_401950

block_4018aa:                                     ; preds = %block_.L_40189e
  %6993 = add i64 %6956, -64
  %6994 = add i64 %6992, 4
  store i64 %6994, i64* %3, align 8
  %6995 = inttoptr i64 %6993 to i64*
  %6996 = load i64, i64* %6995, align 8
  store i64 %6996, i64* %RAX.i2556, align 8
  %6997 = add i64 %6992, 7
  store i64 %6997, i64* %3, align 8
  %6998 = inttoptr i64 %6996 to i64*
  %6999 = load i64, i64* %6998, align 8
  store i64 %6999, i64* %RAX.i2556, align 8
  %7000 = add i64 %6992, 11
  store i64 %7000, i64* %3, align 8
  %7001 = load i64, i64* %6995, align 8
  store i64 %7001, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %80, align 1
  store i8 1, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  store i8 0, i8* %97, align 1
  store i8 0, i8* %103, align 1
  %7002 = add i64 %6992, 19
  store i64 %7002, i64* %3, align 8
  %7003 = load i64, i64* %6995, align 8
  store i64 %7003, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %80, align 1
  store i8 1, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  store i8 0, i8* %97, align 1
  store i8 0, i8* %103, align 1
  %7004 = add i64 %6992, 27
  store i64 %7004, i64* %3, align 8
  %7005 = load i64, i64* %6995, align 8
  store i64 %7005, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %80, align 1
  store i8 1, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  store i8 0, i8* %97, align 1
  store i8 0, i8* %103, align 1
  %7006 = add i64 %6956, -68
  %7007 = add i64 %6992, 34
  store i64 %7007, i64* %3, align 8
  %7008 = inttoptr i64 %7006 to i32*
  %7009 = load i32, i32* %7008, align 4
  %7010 = zext i32 %7009 to i64
  store i64 %7010, i64* %RSI.i2547, align 8
  %7011 = add i64 %6992, 38
  store i64 %7011, i64* %3, align 8
  %7012 = load i64, i64* %6995, align 8
  store i64 %7012, i64* %RCX.i2541, align 8
  %7013 = add i64 %7012, 16
  %7014 = add i64 %6992, 42
  store i64 %7014, i64* %3, align 8
  %7015 = inttoptr i64 %7013 to i32*
  %7016 = load i32, i32* %7015, align 4
  %7017 = sext i32 %7009 to i64
  %7018 = sext i32 %7016 to i64
  %7019 = mul nsw i64 %7018, %7017
  %7020 = trunc i64 %7019 to i32
  %7021 = and i64 %7019, 4294967295
  store i64 %7021, i64* %RSI.i2547, align 8
  %7022 = shl i64 %7019, 32
  %7023 = ashr exact i64 %7022, 32
  %7024 = icmp ne i64 %7023, %7019
  %7025 = zext i1 %7024 to i8
  store i8 %7025, i8* %80, align 1
  %7026 = and i32 %7020, 255
  %7027 = tail call i32 @llvm.ctpop.i32(i32 %7026)
  %7028 = trunc i32 %7027 to i8
  %7029 = and i8 %7028, 1
  %7030 = xor i8 %7029, 1
  store i8 %7030, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  %7031 = lshr i32 %7020, 31
  %7032 = trunc i32 %7031 to i8
  store i8 %7032, i8* %97, align 1
  store i8 %7025, i8* %103, align 1
  %7033 = add i64 %6992, 46
  store i64 %7033, i64* %3, align 8
  %7034 = load i64, i64* %6995, align 8
  store i64 %7034, i64* %RCX.i2541, align 8
  %7035 = add i64 %7034, 20
  %7036 = add i64 %6992, 50
  store i64 %7036, i64* %3, align 8
  %7037 = inttoptr i64 %7035 to i32*
  %7038 = load i32, i32* %7037, align 4
  %7039 = shl i64 %7019, 32
  %7040 = ashr exact i64 %7039, 32
  %7041 = sext i32 %7038 to i64
  %7042 = mul nsw i64 %7041, %7040
  %7043 = and i64 %7042, 4294967295
  store i64 %7043, i64* %RSI.i2547, align 8
  %7044 = trunc i64 %7042 to i32
  %7045 = and i64 %7042, 4294967295
  store i64 %7045, i64* %RDX.i2544, align 8
  store i8 0, i8* %80, align 1
  %7046 = and i32 %7044, 255
  %7047 = tail call i32 @llvm.ctpop.i32(i32 %7046)
  %7048 = trunc i32 %7047 to i8
  %7049 = and i8 %7048, 1
  %7050 = xor i8 %7049, 1
  store i8 %7050, i8* %86, align 1
  store i8 0, i8* %91, align 1
  %7051 = icmp eq i32 %7044, 0
  %7052 = zext i1 %7051 to i8
  store i8 %7052, i8* %94, align 1
  %7053 = lshr i32 %7044, 31
  %7054 = trunc i32 %7053 to i8
  store i8 %7054, i8* %97, align 1
  store i8 0, i8* %103, align 1
  %7055 = load i64, i64* %RBP.i, align 8
  %7056 = add i64 %7055, -72
  %7057 = add i64 %6992, 55
  store i64 %7057, i64* %3, align 8
  %7058 = inttoptr i64 %7056 to i32*
  %7059 = load i32, i32* %7058, align 4
  %7060 = zext i32 %7059 to i64
  store i64 %7060, i64* %RSI.i2547, align 8
  %7061 = add i64 %7055, -64
  %7062 = add i64 %6992, 59
  store i64 %7062, i64* %3, align 8
  %7063 = inttoptr i64 %7061 to i64*
  %7064 = load i64, i64* %7063, align 8
  store i64 %7064, i64* %RCX.i2541, align 8
  %7065 = add i64 %7064, 20
  %7066 = add i64 %6992, 63
  store i64 %7066, i64* %3, align 8
  %7067 = inttoptr i64 %7065 to i32*
  %7068 = load i32, i32* %7067, align 4
  %7069 = sext i32 %7059 to i64
  %7070 = sext i32 %7068 to i64
  %7071 = mul nsw i64 %7070, %7069
  %7072 = and i64 %7071, 4294967295
  store i64 %7072, i64* %RSI.i2547, align 8
  %7073 = trunc i64 %7071 to i32
  %7074 = add i32 %7073, %7044
  %7075 = zext i32 %7074 to i64
  store i64 %7075, i64* %RDX.i2544, align 8
  %7076 = icmp ult i32 %7074, %7044
  %7077 = icmp ult i32 %7074, %7073
  %7078 = or i1 %7076, %7077
  %7079 = zext i1 %7078 to i8
  store i8 %7079, i8* %80, align 1
  %7080 = and i32 %7074, 255
  %7081 = tail call i32 @llvm.ctpop.i32(i32 %7080)
  %7082 = trunc i32 %7081 to i8
  %7083 = and i8 %7082, 1
  %7084 = xor i8 %7083, 1
  store i8 %7084, i8* %86, align 1
  %7085 = xor i64 %7071, %7042
  %7086 = trunc i64 %7085 to i32
  %7087 = xor i32 %7086, %7074
  %7088 = lshr i32 %7087, 4
  %7089 = trunc i32 %7088 to i8
  %7090 = and i8 %7089, 1
  store i8 %7090, i8* %91, align 1
  %7091 = icmp eq i32 %7074, 0
  %7092 = zext i1 %7091 to i8
  store i8 %7092, i8* %94, align 1
  %7093 = lshr i32 %7074, 31
  %7094 = trunc i32 %7093 to i8
  store i8 %7094, i8* %97, align 1
  %7095 = lshr i32 %7073, 31
  %7096 = xor i32 %7093, %7053
  %7097 = xor i32 %7093, %7095
  %7098 = add nuw nsw i32 %7096, %7097
  %7099 = icmp eq i32 %7098, 2
  %7100 = zext i1 %7099 to i8
  store i8 %7100, i8* %103, align 1
  %7101 = add i64 %7055, -76
  %7102 = add i64 %6992, 68
  store i64 %7102, i64* %3, align 8
  %7103 = inttoptr i64 %7101 to i32*
  %7104 = load i32, i32* %7103, align 4
  %7105 = add i32 %7104, %7074
  %7106 = zext i32 %7105 to i64
  store i64 %7106, i64* %RDX.i2544, align 8
  %7107 = icmp ult i32 %7105, %7074
  %7108 = icmp ult i32 %7105, %7104
  %7109 = or i1 %7107, %7108
  %7110 = zext i1 %7109 to i8
  store i8 %7110, i8* %80, align 1
  %7111 = and i32 %7105, 255
  %7112 = tail call i32 @llvm.ctpop.i32(i32 %7111)
  %7113 = trunc i32 %7112 to i8
  %7114 = and i8 %7113, 1
  %7115 = xor i8 %7114, 1
  store i8 %7115, i8* %86, align 1
  %7116 = xor i32 %7104, %7074
  %7117 = xor i32 %7116, %7105
  %7118 = lshr i32 %7117, 4
  %7119 = trunc i32 %7118 to i8
  %7120 = and i8 %7119, 1
  store i8 %7120, i8* %91, align 1
  %7121 = icmp eq i32 %7105, 0
  %7122 = zext i1 %7121 to i8
  store i8 %7122, i8* %94, align 1
  %7123 = lshr i32 %7105, 31
  %7124 = trunc i32 %7123 to i8
  store i8 %7124, i8* %97, align 1
  %7125 = lshr i32 %7104, 31
  %7126 = xor i32 %7123, %7093
  %7127 = xor i32 %7123, %7125
  %7128 = add nuw nsw i32 %7126, %7127
  %7129 = icmp eq i32 %7128, 2
  %7130 = zext i1 %7129 to i8
  store i8 %7130, i8* %103, align 1
  %7131 = sext i32 %7105 to i64
  store i64 %7131, i64* %RCX.i2541, align 8
  %7132 = load i64, i64* %RAX.i2556, align 8
  %7133 = shl nsw i64 %7131, 2
  %7134 = add i64 %7132, %7133
  %7135 = add i64 %6992, 76
  store i64 %7135, i64* %3, align 8
  %7136 = inttoptr i64 %7134 to i32*
  %7137 = load i32, i32* %7136, align 4
  store i32 %7137, i32* %185, align 1
  store float 0.000000e+00, float* %193, align 1
  store float 0.000000e+00, float* %194, align 1
  store float 0.000000e+00, float* %195, align 1
  %7138 = load i64, i64* %RBP.i, align 8
  %7139 = add i64 %7138, -40
  %7140 = add i64 %6992, 80
  store i64 %7140, i64* %3, align 8
  %7141 = inttoptr i64 %7139 to i64*
  %7142 = load i64, i64* %7141, align 8
  store i64 %7142, i64* %RAX.i2556, align 8
  %7143 = add i64 %6992, 83
  store i64 %7143, i64* %3, align 8
  %7144 = inttoptr i64 %7142 to i64*
  %7145 = load i64, i64* %7144, align 8
  store i64 %7145, i64* %RAX.i2556, align 8
  %7146 = add i64 %6992, 87
  store i64 %7146, i64* %3, align 8
  %7147 = load i64, i64* %7141, align 8
  store i64 %7147, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %80, align 1
  store i8 1, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  store i8 0, i8* %97, align 1
  store i8 0, i8* %103, align 1
  %7148 = add i64 %6992, 95
  store i64 %7148, i64* %3, align 8
  %7149 = load i64, i64* %7141, align 8
  store i64 %7149, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %80, align 1
  store i8 1, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  store i8 0, i8* %97, align 1
  store i8 0, i8* %103, align 1
  %7150 = add i64 %6992, 103
  store i64 %7150, i64* %3, align 8
  %7151 = load i64, i64* %7141, align 8
  store i64 %7151, i64* %RCX.i2541, align 8
  store i64 0, i64* %RDX.i2544, align 8
  store i8 0, i8* %80, align 1
  store i8 1, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  store i8 0, i8* %97, align 1
  store i8 0, i8* %103, align 1
  %7152 = add i64 %7138, -68
  %7153 = add i64 %6992, 110
  store i64 %7153, i64* %3, align 8
  %7154 = inttoptr i64 %7152 to i32*
  %7155 = load i32, i32* %7154, align 4
  %7156 = zext i32 %7155 to i64
  store i64 %7156, i64* %RSI.i2547, align 8
  %7157 = add i64 %6992, 114
  store i64 %7157, i64* %3, align 8
  %7158 = load i64, i64* %7141, align 8
  store i64 %7158, i64* %RCX.i2541, align 8
  %7159 = add i64 %7158, 16
  %7160 = add i64 %6992, 118
  store i64 %7160, i64* %3, align 8
  %7161 = inttoptr i64 %7159 to i32*
  %7162 = load i32, i32* %7161, align 4
  %7163 = sext i32 %7155 to i64
  %7164 = sext i32 %7162 to i64
  %7165 = mul nsw i64 %7164, %7163
  %7166 = trunc i64 %7165 to i32
  %7167 = and i64 %7165, 4294967295
  store i64 %7167, i64* %RSI.i2547, align 8
  %7168 = shl i64 %7165, 32
  %7169 = ashr exact i64 %7168, 32
  %7170 = icmp ne i64 %7169, %7165
  %7171 = zext i1 %7170 to i8
  store i8 %7171, i8* %80, align 1
  %7172 = and i32 %7166, 255
  %7173 = tail call i32 @llvm.ctpop.i32(i32 %7172)
  %7174 = trunc i32 %7173 to i8
  %7175 = and i8 %7174, 1
  %7176 = xor i8 %7175, 1
  store i8 %7176, i8* %86, align 1
  store i8 0, i8* %91, align 1
  store i8 0, i8* %94, align 1
  %7177 = lshr i32 %7166, 31
  %7178 = trunc i32 %7177 to i8
  store i8 %7178, i8* %97, align 1
  store i8 %7171, i8* %103, align 1
  %7179 = add i64 %6992, 122
  store i64 %7179, i64* %3, align 8
  %7180 = load i64, i64* %7141, align 8
  store i64 %7180, i64* %RCX.i2541, align 8
  %7181 = add i64 %7180, 20
  %7182 = add i64 %6992, 126
  store i64 %7182, i64* %3, align 8
  %7183 = inttoptr i64 %7181 to i32*
  %7184 = load i32, i32* %7183, align 4
  %7185 = shl i64 %7165, 32
  %7186 = ashr exact i64 %7185, 32
  %7187 = sext i32 %7184 to i64
  %7188 = mul nsw i64 %7187, %7186
  %7189 = and i64 %7188, 4294967295
  store i64 %7189, i64* %RSI.i2547, align 8
  %7190 = trunc i64 %7188 to i32
  %7191 = and i64 %7188, 4294967295
  store i64 %7191, i64* %RDX.i2544, align 8
  store i8 0, i8* %80, align 1
  %7192 = and i32 %7190, 255
  %7193 = tail call i32 @llvm.ctpop.i32(i32 %7192)
  %7194 = trunc i32 %7193 to i8
  %7195 = and i8 %7194, 1
  %7196 = xor i8 %7195, 1
  store i8 %7196, i8* %86, align 1
  store i8 0, i8* %91, align 1
  %7197 = icmp eq i32 %7190, 0
  %7198 = zext i1 %7197 to i8
  store i8 %7198, i8* %94, align 1
  %7199 = lshr i32 %7190, 31
  %7200 = trunc i32 %7199 to i8
  store i8 %7200, i8* %97, align 1
  store i8 0, i8* %103, align 1
  %7201 = load i64, i64* %RBP.i, align 8
  %7202 = add i64 %7201, -72
  %7203 = add i64 %6992, 131
  store i64 %7203, i64* %3, align 8
  %7204 = inttoptr i64 %7202 to i32*
  %7205 = load i32, i32* %7204, align 4
  %7206 = zext i32 %7205 to i64
  store i64 %7206, i64* %RSI.i2547, align 8
  %7207 = add i64 %7201, -40
  %7208 = add i64 %6992, 135
  store i64 %7208, i64* %3, align 8
  %7209 = inttoptr i64 %7207 to i64*
  %7210 = load i64, i64* %7209, align 8
  store i64 %7210, i64* %RCX.i2541, align 8
  %7211 = add i64 %7210, 20
  %7212 = add i64 %6992, 139
  store i64 %7212, i64* %3, align 8
  %7213 = inttoptr i64 %7211 to i32*
  %7214 = load i32, i32* %7213, align 4
  %7215 = sext i32 %7205 to i64
  %7216 = sext i32 %7214 to i64
  %7217 = mul nsw i64 %7216, %7215
  %7218 = and i64 %7217, 4294967295
  store i64 %7218, i64* %RSI.i2547, align 8
  %7219 = trunc i64 %7217 to i32
  %7220 = add i32 %7219, %7190
  %7221 = zext i32 %7220 to i64
  store i64 %7221, i64* %RDX.i2544, align 8
  %7222 = icmp ult i32 %7220, %7190
  %7223 = icmp ult i32 %7220, %7219
  %7224 = or i1 %7222, %7223
  %7225 = zext i1 %7224 to i8
  store i8 %7225, i8* %80, align 1
  %7226 = and i32 %7220, 255
  %7227 = tail call i32 @llvm.ctpop.i32(i32 %7226)
  %7228 = trunc i32 %7227 to i8
  %7229 = and i8 %7228, 1
  %7230 = xor i8 %7229, 1
  store i8 %7230, i8* %86, align 1
  %7231 = xor i64 %7217, %7188
  %7232 = trunc i64 %7231 to i32
  %7233 = xor i32 %7232, %7220
  %7234 = lshr i32 %7233, 4
  %7235 = trunc i32 %7234 to i8
  %7236 = and i8 %7235, 1
  store i8 %7236, i8* %91, align 1
  %7237 = icmp eq i32 %7220, 0
  %7238 = zext i1 %7237 to i8
  store i8 %7238, i8* %94, align 1
  %7239 = lshr i32 %7220, 31
  %7240 = trunc i32 %7239 to i8
  store i8 %7240, i8* %97, align 1
  %7241 = lshr i32 %7219, 31
  %7242 = xor i32 %7239, %7199
  %7243 = xor i32 %7239, %7241
  %7244 = add nuw nsw i32 %7242, %7243
  %7245 = icmp eq i32 %7244, 2
  %7246 = zext i1 %7245 to i8
  store i8 %7246, i8* %103, align 1
  %7247 = add i64 %7201, -76
  %7248 = add i64 %6992, 144
  store i64 %7248, i64* %3, align 8
  %7249 = inttoptr i64 %7247 to i32*
  %7250 = load i32, i32* %7249, align 4
  %7251 = add i32 %7250, %7220
  %7252 = zext i32 %7251 to i64
  store i64 %7252, i64* %RDX.i2544, align 8
  %7253 = icmp ult i32 %7251, %7220
  %7254 = icmp ult i32 %7251, %7250
  %7255 = or i1 %7253, %7254
  %7256 = zext i1 %7255 to i8
  store i8 %7256, i8* %80, align 1
  %7257 = and i32 %7251, 255
  %7258 = tail call i32 @llvm.ctpop.i32(i32 %7257)
  %7259 = trunc i32 %7258 to i8
  %7260 = and i8 %7259, 1
  %7261 = xor i8 %7260, 1
  store i8 %7261, i8* %86, align 1
  %7262 = xor i32 %7250, %7220
  %7263 = xor i32 %7262, %7251
  %7264 = lshr i32 %7263, 4
  %7265 = trunc i32 %7264 to i8
  %7266 = and i8 %7265, 1
  store i8 %7266, i8* %91, align 1
  %7267 = icmp eq i32 %7251, 0
  %7268 = zext i1 %7267 to i8
  store i8 %7268, i8* %94, align 1
  %7269 = lshr i32 %7251, 31
  %7270 = trunc i32 %7269 to i8
  store i8 %7270, i8* %97, align 1
  %7271 = lshr i32 %7250, 31
  %7272 = xor i32 %7269, %7239
  %7273 = xor i32 %7269, %7271
  %7274 = add nuw nsw i32 %7272, %7273
  %7275 = icmp eq i32 %7274, 2
  %7276 = zext i1 %7275 to i8
  store i8 %7276, i8* %103, align 1
  %7277 = sext i32 %7251 to i64
  store i64 %7277, i64* %RCX.i2541, align 8
  %7278 = load i64, i64* %RAX.i2556, align 8
  %7279 = shl nsw i64 %7277, 2
  %7280 = add i64 %7278, %7279
  %7281 = add i64 %6992, 152
  store i64 %7281, i64* %3, align 8
  %7282 = load <2 x float>, <2 x float>* %191, align 1
  %7283 = extractelement <2 x float> %7282, i32 0
  %7284 = inttoptr i64 %7280 to float*
  store float %7283, float* %7284, align 4
  %7285 = load i64, i64* %RBP.i, align 8
  %7286 = add i64 %7285, -76
  %7287 = load i64, i64* %3, align 8
  %7288 = add i64 %7287, 3
  store i64 %7288, i64* %3, align 8
  %7289 = inttoptr i64 %7286 to i32*
  %7290 = load i32, i32* %7289, align 4
  %7291 = add i32 %7290, 1
  %7292 = zext i32 %7291 to i64
  store i64 %7292, i64* %RAX.i2556, align 8
  %7293 = icmp eq i32 %7290, -1
  %7294 = icmp eq i32 %7291, 0
  %7295 = or i1 %7293, %7294
  %7296 = zext i1 %7295 to i8
  store i8 %7296, i8* %80, align 1
  %7297 = and i32 %7291, 255
  %7298 = tail call i32 @llvm.ctpop.i32(i32 %7297)
  %7299 = trunc i32 %7298 to i8
  %7300 = and i8 %7299, 1
  %7301 = xor i8 %7300, 1
  store i8 %7301, i8* %86, align 1
  %7302 = xor i32 %7291, %7290
  %7303 = lshr i32 %7302, 4
  %7304 = trunc i32 %7303 to i8
  %7305 = and i8 %7304, 1
  store i8 %7305, i8* %91, align 1
  %7306 = zext i1 %7294 to i8
  store i8 %7306, i8* %94, align 1
  %7307 = lshr i32 %7291, 31
  %7308 = trunc i32 %7307 to i8
  store i8 %7308, i8* %97, align 1
  %7309 = lshr i32 %7290, 31
  %7310 = xor i32 %7307, %7309
  %7311 = add nuw nsw i32 %7310, %7307
  %7312 = icmp eq i32 %7311, 2
  %7313 = zext i1 %7312 to i8
  store i8 %7313, i8* %103, align 1
  %7314 = add i64 %7287, 9
  store i64 %7314, i64* %3, align 8
  store i32 %7291, i32* %7289, align 4
  %7315 = load i64, i64* %3, align 8
  %7316 = add i64 %7315, -173
  store i64 %7316, i64* %3, align 8
  br label %block_.L_40189e

block_.L_401950:                                  ; preds = %block_.L_40189e
  %7317 = add i64 %6956, -72
  %7318 = add i64 %6992, 8
  store i64 %7318, i64* %3, align 8
  %7319 = inttoptr i64 %7317 to i32*
  %7320 = load i32, i32* %7319, align 4
  %7321 = add i32 %7320, 1
  %7322 = zext i32 %7321 to i64
  store i64 %7322, i64* %RAX.i2556, align 8
  %7323 = icmp eq i32 %7320, -1
  %7324 = icmp eq i32 %7321, 0
  %7325 = or i1 %7323, %7324
  %7326 = zext i1 %7325 to i8
  store i8 %7326, i8* %80, align 1
  %7327 = and i32 %7321, 255
  %7328 = tail call i32 @llvm.ctpop.i32(i32 %7327)
  %7329 = trunc i32 %7328 to i8
  %7330 = and i8 %7329, 1
  %7331 = xor i8 %7330, 1
  store i8 %7331, i8* %86, align 1
  %7332 = xor i32 %7321, %7320
  %7333 = lshr i32 %7332, 4
  %7334 = trunc i32 %7333 to i8
  %7335 = and i8 %7334, 1
  store i8 %7335, i8* %91, align 1
  %7336 = zext i1 %7324 to i8
  store i8 %7336, i8* %94, align 1
  %7337 = lshr i32 %7321, 31
  %7338 = trunc i32 %7337 to i8
  store i8 %7338, i8* %97, align 1
  %7339 = lshr i32 %7320, 31
  %7340 = xor i32 %7337, %7339
  %7341 = add nuw nsw i32 %7340, %7337
  %7342 = icmp eq i32 %7341, 2
  %7343 = zext i1 %7342 to i8
  store i8 %7343, i8* %103, align 1
  %7344 = add i64 %6992, 14
  store i64 %7344, i64* %3, align 8
  store i32 %7321, i32* %7319, align 4
  %7345 = load i64, i64* %3, align 8
  %7346 = add i64 %7345, -211
  store i64 %7346, i64* %3, align 8
  br label %block_.L_40188b

block_.L_401963:                                  ; preds = %block_.L_40188b
  %7347 = add i64 %6915, -68
  %7348 = add i64 %6951, 8
  store i64 %7348, i64* %3, align 8
  %7349 = inttoptr i64 %7347 to i32*
  %7350 = load i32, i32* %7349, align 4
  %7351 = add i32 %7350, 1
  %7352 = zext i32 %7351 to i64
  store i64 %7352, i64* %RAX.i2556, align 8
  %7353 = icmp eq i32 %7350, -1
  %7354 = icmp eq i32 %7351, 0
  %7355 = or i1 %7353, %7354
  %7356 = zext i1 %7355 to i8
  store i8 %7356, i8* %80, align 1
  %7357 = and i32 %7351, 255
  %7358 = tail call i32 @llvm.ctpop.i32(i32 %7357)
  %7359 = trunc i32 %7358 to i8
  %7360 = and i8 %7359, 1
  %7361 = xor i8 %7360, 1
  store i8 %7361, i8* %86, align 1
  %7362 = xor i32 %7351, %7350
  %7363 = lshr i32 %7362, 4
  %7364 = trunc i32 %7363 to i8
  %7365 = and i8 %7364, 1
  store i8 %7365, i8* %91, align 1
  %7366 = zext i1 %7354 to i8
  store i8 %7366, i8* %94, align 1
  %7367 = lshr i32 %7351, 31
  %7368 = trunc i32 %7367 to i8
  store i8 %7368, i8* %97, align 1
  %7369 = lshr i32 %7350, 31
  %7370 = xor i32 %7367, %7369
  %7371 = add nuw nsw i32 %7370, %7367
  %7372 = icmp eq i32 %7371, 2
  %7373 = zext i1 %7372 to i8
  store i8 %7373, i8* %103, align 1
  %7374 = add i64 %6951, 14
  store i64 %7374, i64* %3, align 8
  store i32 %7351, i32* %7349, align 4
  %7375 = load i64, i64* %3, align 8
  %7376 = add i64 %7375, -249
  store i64 %7376, i64* %3, align 8
  br label %block_.L_401878

block_.L_401976:                                  ; preds = %block_.L_401878
  %7377 = add i64 %6874, -80
  %7378 = add i64 %6910, 8
  store i64 %7378, i64* %3, align 8
  %7379 = inttoptr i64 %7377 to i32*
  %7380 = load i32, i32* %7379, align 4
  %7381 = add i32 %7380, 1
  %7382 = zext i32 %7381 to i64
  store i64 %7382, i64* %RAX.i2556, align 8
  %7383 = icmp eq i32 %7380, -1
  %7384 = icmp eq i32 %7381, 0
  %7385 = or i1 %7383, %7384
  %7386 = zext i1 %7385 to i8
  store i8 %7386, i8* %80, align 1
  %7387 = and i32 %7381, 255
  %7388 = tail call i32 @llvm.ctpop.i32(i32 %7387)
  %7389 = trunc i32 %7388 to i8
  %7390 = and i8 %7389, 1
  %7391 = xor i8 %7390, 1
  store i8 %7391, i8* %86, align 1
  %7392 = xor i32 %7381, %7380
  %7393 = lshr i32 %7392, 4
  %7394 = trunc i32 %7393 to i8
  %7395 = and i8 %7394, 1
  store i8 %7395, i8* %91, align 1
  %7396 = zext i1 %7384 to i8
  store i8 %7396, i8* %94, align 1
  %7397 = lshr i32 %7381, 31
  %7398 = trunc i32 %7397 to i8
  store i8 %7398, i8* %97, align 1
  %7399 = lshr i32 %7380, 31
  %7400 = xor i32 %7397, %7399
  %7401 = add nuw nsw i32 %7400, %7397
  %7402 = icmp eq i32 %7401, 2
  %7403 = zext i1 %7402 to i8
  store i8 %7403, i8* %103, align 1
  %7404 = add i64 %6910, 14
  store i64 %7404, i64* %3, align 8
  store i32 %7381, i32* %7379, align 4
  %7405 = load i64, i64* %3, align 8
  %7406 = add i64 %7405, -3131
  store i64 %7406, i64* %3, align 8
  br label %block_.L_400d49

block_.L_401989:                                  ; preds = %block_.L_400d49
  %7407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %7408 = bitcast %union.VectorReg* %7407 to i8*
  %7409 = add i64 %229, -96
  %7410 = add i64 %265, 5
  store i64 %7410, i64* %3, align 8
  %7411 = inttoptr i64 %7409 to i32*
  %7412 = load i32, i32* %7411, align 4
  %7413 = bitcast %union.VectorReg* %7407 to i32*
  store i32 %7412, i32* %7413, align 1
  %7414 = getelementptr inbounds i8, i8* %7408, i64 4
  %7415 = bitcast i8* %7414 to float*
  store float 0.000000e+00, float* %7415, align 1
  store float 0.000000e+00, float* %194, align 1
  %7416 = getelementptr inbounds i8, i8* %7408, i64 12
  %7417 = bitcast i8* %7416 to float*
  store float 0.000000e+00, float* %7417, align 1
  %7418 = add i64 %265, 6
  store i64 %7418, i64* %3, align 8
  %7419 = load i64, i64* %6, align 8
  %7420 = add i64 %7419, 8
  %7421 = inttoptr i64 %7419 to i64*
  %7422 = load i64, i64* %7421, align 8
  store i64 %7422, i64* %RBP.i, align 8
  store i64 %7420, i64* %6, align 8
  %7423 = add i64 %265, 7
  store i64 %7423, i64* %3, align 8
  %7424 = inttoptr i64 %7420 to i64*
  %7425 = load i64, i64* %7424, align 8
  store i64 %7425, i64* %3, align 8
  %7426 = add i64 %7419, 16
  store i64 %7426, i64* %6, align 8
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
define %struct.Memory* @routine_movq_0x18__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
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
define %struct.Memory* @routine_movq_0x10__rbp____r10(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, 16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R10, align 8
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
define %struct.Memory* @routine_movq__rcx__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r8__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %R8, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r9__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %R9, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r10__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %R10, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x1___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDI, align 8
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
define %struct.Memory* @routine_movl__edi__MINUS0x54__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -84
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x10__rax____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 16
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
define %struct.Memory* @routine_movl__edi__MINUS0x58__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -88
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x14__rax____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 20
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
define %struct.Memory* @routine_movl__edi__MINUS0x5c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -92
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x50__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
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
define %struct.Memory* @routine_jge_.L_401989(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %6, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__MINUS0x60__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -96
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  store float %10, float* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__MINUS0x44__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -68
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x44__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -68
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
define %struct.Memory* @routine_cmpl_MINUS0x54__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -84
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
define %struct.Memory* @routine_jge_.L_401871(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x48__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
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
define %struct.Memory* @routine_cmpl_MINUS0x58__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -88
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
define %struct.Memory* @routine_jge_.L_40185e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1__MINUS0x4c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -76
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x4c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -76
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
define %struct.Memory* @routine_cmpl_MINUS0x5c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -92
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
define %struct.Memory* @routine_jge_.L_40184b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq___rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i64, i64* %4, align 8
  store i64 %7, i64* %RAX, align 8
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
define %struct.Memory* @routine_imull__0x0__0xc__rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 4
  store i64 %4, i64* %PC, align 8
  store i64 0, i64* %RDX, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5, align 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imull_0x10__rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 16
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
  store i64 %15, i64* %RDX, align 8
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
define %struct.Memory* @routine_imull_0x14__rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 20
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
  store i64 %15, i64* %RDX, align 8
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
define %struct.Memory* @routine_movl_MINUS0x44__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -68
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
define %struct.Memory* @routine_imull_0x10__rcx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 16
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

; Function Attrs: nounwind
define %struct.Memory* @routine_imull_0x14__rcx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 20
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__esi___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x48__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
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
define %struct.Memory* @routine_addl_MINUS0x4c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -76
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
define %struct.Memory* @routine_movss___rax__rcx_4____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %RCX, align 8
  %7 = shl i64 %6, 2
  %8 = add i64 %7, %5
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %8 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = bitcast %union.VectorReg* %3 to i32*
  store i32 %12, i32* %13, align 1
  %14 = getelementptr inbounds i8, i8* %4, i64 4
  %15 = bitcast i8* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %17 = bitcast i64* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  %18 = getelementptr inbounds i8, i8* %4, i64 12
  %19 = bitcast i8* %18 to float*
  store float 0.000000e+00, float* %19, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
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
define %struct.Memory* @routine_mulss___rax__rcx_4____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %RCX, align 8
  %7 = shl i64 %6, 2
  %8 = add i64 %7, %5
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC, align 8
  %11 = bitcast %union.VectorReg* %3 to <2 x float>*
  %12 = load <2 x float>, <2 x float>* %11, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %14 = bitcast i64* %13 to <2 x i32>*
  %15 = load <2 x i32>, <2 x i32>* %14, align 1
  %16 = inttoptr i64 %8 to float*
  %17 = load float, float* %16, align 4
  %18 = extractelement <2 x float> %12, i32 0
  %19 = fmul float %18, %17
  %20 = bitcast %union.VectorReg* %3 to float*
  store float %19, float* %20, align 1
  %21 = bitcast <2 x float> %12 to <2 x i32>
  %22 = extractelement <2 x i32> %21, i32 1
  %23 = getelementptr inbounds i8, i8* %4, i64 4
  %24 = bitcast i8* %23 to i32*
  store i32 %22, i32* %24, align 1
  %25 = extractelement <2 x i32> %15, i32 0
  %26 = bitcast i64* %13 to i32*
  store i32 %25, i32* %26, align 1
  %27 = extractelement <2 x i32> %15, i32 1
  %28 = getelementptr inbounds i8, i8* %4, i64 12
  %29 = bitcast i8* %28 to i32*
  store i32 %27, i32* %29, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xc__rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_shll__0x0___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 3
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss___rax__rcx_4____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %RCX, align 8
  %7 = shl i64 %6, 2
  %8 = add i64 %7, %5
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %8 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = bitcast %union.VectorReg* %3 to i32*
  store i32 %12, i32* %13, align 1
  %14 = getelementptr inbounds i8, i8* %4, i64 4
  %15 = bitcast i8* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %17 = bitcast i64* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  %18 = getelementptr inbounds i8, i8* %4, i64 12
  %19 = bitcast i8* %18 to float*
  store float 0.000000e+00, float* %19, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulss___rax__rcx_4____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %RCX, align 8
  %7 = shl i64 %6, 2
  %8 = add i64 %7, %5
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC, align 8
  %11 = bitcast %union.VectorReg* %3 to <2 x float>*
  %12 = load <2 x float>, <2 x float>* %11, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %14 = bitcast i64* %13 to <2 x i32>*
  %15 = load <2 x i32>, <2 x i32>* %14, align 1
  %16 = inttoptr i64 %8 to float*
  %17 = load float, float* %16, align 4
  %18 = extractelement <2 x float> %12, i32 0
  %19 = fmul float %18, %17
  %20 = bitcast %union.VectorReg* %3 to float*
  store float %19, float* %20, align 1
  %21 = bitcast <2 x float> %12 to <2 x i32>
  %22 = extractelement <2 x i32> %21, i32 1
  %23 = getelementptr inbounds i8, i8* %4, i64 4
  %24 = bitcast i8* %23 to i32*
  store i32 %22, i32* %24, align 1
  %25 = extractelement <2 x i32> %15, i32 0
  %26 = bitcast i64* %13 to i32*
  store i32 %25, i32* %26, align 1
  %27 = extractelement <2 x i32> %15, i32 1
  %28 = getelementptr inbounds i8, i8* %4, i64 12
  %29 = bitcast i8* %28 to i32*
  store i32 %27, i32* %29, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addss__xmm1___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = bitcast [32 x %union.VectorReg]* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = bitcast [32 x %union.VectorReg]* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x i32>*
  %12 = load <2 x i32>, <2 x i32>* %11, align 1
  %13 = bitcast %union.VectorReg* %4 to <2 x float>*
  %14 = load <2 x float>, <2 x float>* %13, align 1
  %15 = extractelement <2 x float> %9, i32 0
  %16 = extractelement <2 x float> %14, i32 0
  %17 = fadd float %15, %16
  %18 = bitcast [32 x %union.VectorReg]* %3 to float*
  store float %17, float* %18, align 1
  %19 = bitcast <2 x float> %9 to <2 x i32>
  %20 = extractelement <2 x i32> %19, i32 1
  %21 = getelementptr inbounds i8, i8* %5, i64 4
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  %23 = extractelement <2 x i32> %12, i32 0
  %24 = bitcast i64* %10 to i32*
  store i32 %23, i32* %24, align 1
  %25 = extractelement <2 x i32> %12, i32 1
  %26 = getelementptr inbounds i8, i8* %5, i64 12
  %27 = bitcast i8* %26 to i32*
  store i32 %25, i32* %27, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shll__0x1___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = shl i32 %6, 1
  %8 = icmp slt i32 %6, 0
  %9 = icmp slt i32 %7, 0
  %10 = xor i1 %8, %9
  %11 = zext i32 %7 to i64
  store i64 %11, i64* %RDX, align 8
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
define %struct.Memory* @routine_movl_MINUS0x4c__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -76
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
define %struct.Memory* @routine_movss___rax__rcx_4____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %RCX, align 8
  %7 = shl i64 %6, 2
  %8 = add i64 %7, %5
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %8 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = bitcast %union.VectorReg* %3 to i32*
  store i32 %12, i32* %13, align 1
  %14 = getelementptr inbounds i8, i8* %4, i64 4
  %15 = bitcast i8* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %17 = bitcast i64* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  %18 = getelementptr inbounds i8, i8* %4, i64 12
  %19 = bitcast i8* %18 to float*
  store float 0.000000e+00, float* %19, align 1
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
define %struct.Memory* @routine_subss___rax__rcx_4____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %RCX, align 8
  %7 = shl i64 %6, 2
  %8 = add i64 %7, %5
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC, align 8
  %11 = bitcast %union.VectorReg* %3 to <2 x float>*
  %12 = load <2 x float>, <2 x float>* %11, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %14 = bitcast i64* %13 to <2 x i32>*
  %15 = load <2 x i32>, <2 x i32>* %14, align 1
  %16 = inttoptr i64 %8 to float*
  %17 = load float, float* %16, align 4
  %18 = extractelement <2 x float> %12, i32 0
  %19 = fsub float %18, %17
  %20 = bitcast %union.VectorReg* %3 to float*
  store float %19, float* %20, align 1
  %21 = bitcast <2 x float> %12 to <2 x i32>
  %22 = extractelement <2 x i32> %21, i32 1
  %23 = getelementptr inbounds i8, i8* %4, i64 4
  %24 = bitcast i8* %23 to i32*
  store i32 %22, i32* %24, align 1
  %25 = extractelement <2 x i32> %15, i32 0
  %26 = bitcast i64* %13 to i32*
  store i32 %25, i32* %26, align 1
  %27 = extractelement <2 x i32> %15, i32 1
  %28 = getelementptr inbounds i8, i8* %4, i64 12
  %29 = bitcast i8* %28 to i32*
  store i32 %27, i32* %29, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addss___rax__rcx_4____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %RCX, align 8
  %7 = shl i64 %6, 2
  %8 = add i64 %7, %5
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC, align 8
  %11 = bitcast %union.VectorReg* %3 to <2 x float>*
  %12 = load <2 x float>, <2 x float>* %11, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %14 = bitcast i64* %13 to <2 x i32>*
  %15 = load <2 x i32>, <2 x i32>* %14, align 1
  %16 = inttoptr i64 %8 to float*
  %17 = load float, float* %16, align 4
  %18 = extractelement <2 x float> %12, i32 0
  %19 = fadd float %18, %17
  %20 = bitcast %union.VectorReg* %3 to float*
  store float %19, float* %20, align 1
  %21 = bitcast <2 x float> %12 to <2 x i32>
  %22 = extractelement <2 x i32> %21, i32 1
  %23 = getelementptr inbounds i8, i8* %4, i64 4
  %24 = bitcast i8* %23 to i32*
  store i32 %22, i32* %24, align 1
  %25 = extractelement <2 x i32> %15, i32 0
  %26 = bitcast i64* %13 to i32*
  store i32 %25, i32* %26, align 1
  %27 = extractelement <2 x i32> %15, i32 1
  %28 = getelementptr inbounds i8, i8* %4, i64 12
  %29 = bitcast i8* %28 to i32*
  store i32 %27, i32* %29, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulss__xmm2___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %5 = bitcast %union.VectorReg* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x i32>*
  %12 = load <2 x i32>, <2 x i32>* %11, align 1
  %13 = bitcast %union.VectorReg* %4 to <2 x float>*
  %14 = load <2 x float>, <2 x float>* %13, align 1
  %15 = extractelement <2 x float> %9, i32 0
  %16 = extractelement <2 x float> %14, i32 0
  %17 = fmul float %15, %16
  %18 = bitcast %union.VectorReg* %3 to float*
  store float %17, float* %18, align 1
  %19 = bitcast <2 x float> %9 to <2 x i32>
  %20 = extractelement <2 x i32> %19, i32 1
  %21 = getelementptr inbounds i8, i8* %5, i64 4
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  %23 = extractelement <2 x i32> %12, i32 0
  %24 = bitcast i64* %10 to i32*
  store i32 %23, i32* %24, align 1
  %25 = extractelement <2 x i32> %12, i32 1
  %26 = getelementptr inbounds i8, i8* %5, i64 12
  %27 = bitcast i8* %26 to i32*
  store i32 %25, i32* %27, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x38__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x38__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addss___rax__rcx_4____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %RCX, align 8
  %7 = shl i64 %6, 2
  %8 = add i64 %7, %5
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC, align 8
  %11 = bitcast %union.VectorReg* %3 to <2 x float>*
  %12 = load <2 x float>, <2 x float>* %11, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %14 = bitcast i64* %13 to <2 x i32>*
  %15 = load <2 x i32>, <2 x i32>* %14, align 1
  %16 = inttoptr i64 %8 to float*
  %17 = load float, float* %16, align 4
  %18 = extractelement <2 x float> %12, i32 0
  %19 = fadd float %18, %17
  %20 = bitcast %union.VectorReg* %3 to float*
  store float %19, float* %20, align 1
  %21 = bitcast <2 x float> %12 to <2 x i32>
  %22 = extractelement <2 x i32> %21, i32 1
  %23 = getelementptr inbounds i8, i8* %4, i64 4
  %24 = bitcast i8* %23 to i32*
  store i32 %22, i32* %24, align 1
  %25 = extractelement <2 x i32> %15, i32 0
  %26 = bitcast i64* %13 to i32*
  store i32 %25, i32* %26, align 1
  %27 = extractelement <2 x i32> %15, i32 1
  %28 = getelementptr inbounds i8, i8* %4, i64 12
  %29 = bitcast i8* %28 to i32*
  store i32 %27, i32* %29, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__MINUS0x64__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -100
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  store float %10, float* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_MINUS0x64__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -100
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = bitcast %union.VectorReg* %3 to i32*
  store i32 %10, i32* %11, align 1
  %12 = getelementptr inbounds i8, i8* %4, i64 4
  %13 = bitcast i8* %12 to float*
  store float 0.000000e+00, float* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imull__0x3__0xc__rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  %10 = mul nsw i64 %9, 3
  %11 = trunc i64 %10 to i32
  %12 = and i64 %10, 4294967295
  store i64 %12, i64* %RDX, align 8
  %13 = mul i64 %9, 12884901888
  %14 = ashr exact i64 %13, 32
  %15 = icmp ne i64 %14, %10
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
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %25, align 1
  %26 = lshr i32 %11, 31
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %16, i8* %29, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subss___rax__rcx_4____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %RCX, align 8
  %7 = shl i64 %6, 2
  %8 = add i64 %7, %5
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC, align 8
  %11 = bitcast %union.VectorReg* %3 to <2 x float>*
  %12 = load <2 x float>, <2 x float>* %11, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %14 = bitcast i64* %13 to <2 x i32>*
  %15 = load <2 x i32>, <2 x i32>* %14, align 1
  %16 = inttoptr i64 %8 to float*
  %17 = load float, float* %16, align 4
  %18 = extractelement <2 x float> %12, i32 0
  %19 = fsub float %18, %17
  %20 = bitcast %union.VectorReg* %3 to float*
  store float %19, float* %20, align 1
  %21 = bitcast <2 x float> %12 to <2 x i32>
  %22 = extractelement <2 x i32> %21, i32 1
  %23 = getelementptr inbounds i8, i8* %4, i64 4
  %24 = bitcast i8* %23 to i32*
  store i32 %22, i32* %24, align 1
  %25 = extractelement <2 x i32> %15, i32 0
  %26 = bitcast i64* %13 to i32*
  store i32 %25, i32* %26, align 1
  %27 = extractelement <2 x i32> %15, i32 1
  %28 = getelementptr inbounds i8, i8* %4, i64 12
  %29 = bitcast i8* %28 to i32*
  store i32 %27, i32* %29, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x30__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__MINUS0x68__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -104
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  store float %10, float* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_MINUS0x68__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -104
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = bitcast %union.VectorReg* %3 to i32*
  store i32 %10, i32* %11, align 1
  %12 = getelementptr inbounds i8, i8* %4, i64 4
  %13 = bitcast i8* %12 to float*
  store float 0.000000e+00, float* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulss_MINUS0x68__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -104
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x float>*
  %10 = load <2 x float>, <2 x float>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to <2 x i32>*
  %13 = load <2 x i32>, <2 x i32>* %12, align 1
  %14 = inttoptr i64 %6 to float*
  %15 = load float, float* %14, align 4
  %16 = extractelement <2 x float> %10, i32 0
  %17 = fmul float %16, %15
  %18 = bitcast %union.VectorReg* %3 to float*
  store float %17, float* %18, align 1
  %19 = bitcast <2 x float> %10 to <2 x i32>
  %20 = extractelement <2 x i32> %19, i32 1
  %21 = getelementptr inbounds i8, i8* %4, i64 4
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  %23 = extractelement <2 x i32> %13, i32 0
  %24 = bitcast i64* %11 to i32*
  store i32 %23, i32* %24, align 1
  %25 = extractelement <2 x i32> %13, i32 1
  %26 = getelementptr inbounds i8, i8* %4, i64 12
  %27 = bitcast i8* %26 to i32*
  store i32 %25, i32* %27, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addss_MINUS0x60__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -96
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x float>*
  %10 = load <2 x float>, <2 x float>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to <2 x i32>*
  %13 = load <2 x i32>, <2 x i32>* %12, align 1
  %14 = inttoptr i64 %6 to float*
  %15 = load float, float* %14, align 4
  %16 = extractelement <2 x float> %10, i32 0
  %17 = fadd float %16, %15
  %18 = bitcast %union.VectorReg* %3 to float*
  store float %17, float* %18, align 1
  %19 = bitcast <2 x float> %10 to <2 x i32>
  %20 = extractelement <2 x i32> %19, i32 1
  %21 = getelementptr inbounds i8, i8* %4, i64 4
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  %23 = extractelement <2 x i32> %13, i32 0
  %24 = bitcast i64* %11 to i32*
  store i32 %23, i32* %24, align 1
  %25 = extractelement <2 x i32> %13, i32 1
  %26 = getelementptr inbounds i8, i8* %4, i64 12
  %27 = bitcast i8* %26 to i32*
  store i32 %25, i32* %27, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0x603058___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 9
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* inttoptr (i64 6303832 to i32*), align 8
  %8 = bitcast %union.VectorReg* %3 to i32*
  store i32 %7, i32* %8, align 1
  %9 = getelementptr inbounds i8, i8* %4, i64 4
  %10 = bitcast i8* %9 to float*
  store float 0.000000e+00, float* %10, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to float*
  store float 0.000000e+00, float* %12, align 1
  %13 = getelementptr inbounds i8, i8* %4, i64 12
  %14 = bitcast i8* %13 to float*
  store float 0.000000e+00, float* %14, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulss_MINUS0x68__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -104
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x float>*
  %10 = load <2 x float>, <2 x float>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to <2 x i32>*
  %13 = load <2 x i32>, <2 x i32>* %12, align 1
  %14 = inttoptr i64 %6 to float*
  %15 = load float, float* %14, align 4
  %16 = extractelement <2 x float> %10, i32 0
  %17 = fmul float %16, %15
  %18 = bitcast %union.VectorReg* %3 to float*
  store float %17, float* %18, align 1
  %19 = bitcast <2 x float> %10 to <2 x i32>
  %20 = extractelement <2 x i32> %19, i32 1
  %21 = getelementptr inbounds i8, i8* %4, i64 4
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  %23 = extractelement <2 x i32> %13, i32 0
  %24 = bitcast i64* %11 to i32*
  store i32 %23, i32* %24, align 1
  %25 = extractelement <2 x i32> %13, i32 1
  %26 = getelementptr inbounds i8, i8* %4, i64 12
  %27 = bitcast i8* %26 to i32*
  store i32 %25, i32* %27, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x40__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x40__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0____rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 5
  store i64 %9, i64* %PC, align 8
  %10 = bitcast %union.VectorReg* %3 to <2 x float>*
  %11 = load <2 x float>, <2 x float>* %10, align 1
  %12 = extractelement <2 x float> %11, i32 0
  %13 = inttoptr i64 %7 to float*
  store float %12, float* %13, align 4
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
define %struct.Memory* @routine_movl__eax__MINUS0x4c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -76
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400d8a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_401850(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -72
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400d77(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_401863(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x44__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -68
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400d64(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_401976(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_401963(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_401950(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_40189e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_401955(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40188b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_401968(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_401878(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40197b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -80
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400d49(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_MINUS0x60__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -96
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = bitcast %union.VectorReg* %3 to i32*
  store i32 %10, i32* %11, align 1
  %12 = getelementptr inbounds i8, i8* %4, i64 4
  %13 = bitcast i8* %12 to float*
  store float 0.000000e+00, float* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
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
