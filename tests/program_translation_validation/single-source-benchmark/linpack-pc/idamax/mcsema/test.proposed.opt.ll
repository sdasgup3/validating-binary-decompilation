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

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @idamax(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %EDI.i = bitcast %union.anon* %11 to i32*
  %12 = add i64 %7, -16
  %13 = load i32, i32* %EDI.i, align 4
  %14 = add i64 %10, 6
  store i64 %14, i64* %3, align 8
  %15 = inttoptr i64 %12 to i32*
  store i32 %13, i32* %15, align 4
  %RSI.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %16 = load i64, i64* %RBP.i, align 8
  %17 = add i64 %16, -16
  %18 = load i64, i64* %RSI.i, align 8
  %19 = load i64, i64* %3, align 8
  %20 = add i64 %19, 4
  store i64 %20, i64* %3, align 8
  %21 = inttoptr i64 %17 to i64*
  store i64 %18, i64* %21, align 8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX.i = bitcast %union.anon* %22 to i32*
  %23 = load i64, i64* %RBP.i, align 8
  %24 = add i64 %23, -20
  %25 = load i32, i32* %EDX.i, align 4
  %26 = load i64, i64* %3, align 8
  %27 = add i64 %26, 3
  store i64 %27, i64* %3, align 8
  %28 = inttoptr i64 %24 to i32*
  store i32 %25, i32* %28, align 4
  %29 = load i64, i64* %RBP.i, align 8
  %30 = add i64 %29, -8
  %31 = load i64, i64* %3, align 8
  %32 = add i64 %31, 4
  store i64 %32, i64* %3, align 8
  %33 = inttoptr i64 %30 to i32*
  %34 = load i32, i32* %33, align 4
  %35 = add i32 %34, -1
  %36 = icmp eq i32 %34, 0
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %37, i8* %38, align 1
  %39 = and i32 %35, 255
  %40 = tail call i32 @llvm.ctpop.i32(i32 %39)
  %41 = trunc i32 %40 to i8
  %42 = and i8 %41, 1
  %43 = xor i8 %42, 1
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %43, i8* %44, align 1
  %45 = xor i32 %35, %34
  %46 = lshr i32 %45, 4
  %47 = trunc i32 %46 to i8
  %48 = and i8 %47, 1
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %48, i8* %49, align 1
  %50 = icmp eq i32 %35, 0
  %51 = zext i1 %50 to i8
  %52 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %51, i8* %52, align 1
  %53 = lshr i32 %35, 31
  %54 = trunc i32 %53 to i8
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %54, i8* %55, align 1
  %56 = lshr i32 %34, 31
  %57 = xor i32 %53, %56
  %58 = add nuw nsw i32 %57, %56
  %59 = icmp eq i32 %58, 2
  %60 = zext i1 %59 to i8
  %61 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %60, i8* %61, align 1
  %62 = icmp ne i8 %54, 0
  %63 = xor i1 %62, %59
  %.v = select i1 %63, i64 10, i64 22
  %64 = add i64 %31, %.v
  store i64 %64, i64* %3, align 8
  br i1 %63, label %block_402b58, label %block_.L_402b64

block_402b58:                                     ; preds = %entry
  %65 = add i64 %29, -4
  %66 = add i64 %64, 7
  store i64 %66, i64* %3, align 8
  %67 = inttoptr i64 %65 to i32*
  store i32 -1, i32* %67, align 4
  %68 = load i64, i64* %3, align 8
  %69 = add i64 %68, 368
  store i64 %69, i64* %3, align 8
  br label %block_.L_402ccf

block_.L_402b64:                                  ; preds = %entry
  %70 = add i64 %64, 4
  store i64 %70, i64* %3, align 8
  %71 = load i32, i32* %33, align 4
  %72 = add i32 %71, -1
  %73 = icmp eq i32 %71, 0
  %74 = zext i1 %73 to i8
  store i8 %74, i8* %38, align 1
  %75 = and i32 %72, 255
  %76 = tail call i32 @llvm.ctpop.i32(i32 %75)
  %77 = trunc i32 %76 to i8
  %78 = and i8 %77, 1
  %79 = xor i8 %78, 1
  store i8 %79, i8* %44, align 1
  %80 = xor i32 %72, %71
  %81 = lshr i32 %80, 4
  %82 = trunc i32 %81 to i8
  %83 = and i8 %82, 1
  store i8 %83, i8* %49, align 1
  %84 = icmp eq i32 %72, 0
  %85 = zext i1 %84 to i8
  store i8 %85, i8* %52, align 1
  %86 = lshr i32 %72, 31
  %87 = trunc i32 %86 to i8
  store i8 %87, i8* %55, align 1
  %88 = lshr i32 %71, 31
  %89 = xor i32 %86, %88
  %90 = add nuw nsw i32 %89, %88
  %91 = icmp eq i32 %90, 2
  %92 = zext i1 %91 to i8
  store i8 %92, i8* %61, align 1
  %.v22 = select i1 %84, i64 10, i64 22
  %93 = add i64 %64, %.v22
  store i64 %93, i64* %3, align 8
  br i1 %84, label %block_402b6e, label %block_.L_402b7a

block_402b6e:                                     ; preds = %block_.L_402b64
  %94 = add i64 %29, -4
  %95 = add i64 %93, 7
  store i64 %95, i64* %3, align 8
  %96 = inttoptr i64 %94 to i32*
  store i32 0, i32* %96, align 4
  %97 = load i64, i64* %3, align 8
  %98 = add i64 %97, 346
  store i64 %98, i64* %3, align 8
  br label %block_.L_402ccf

block_.L_402b7a:                                  ; preds = %block_.L_402b64
  %99 = add i64 %29, -20
  %100 = add i64 %93, 4
  store i64 %100, i64* %3, align 8
  %101 = inttoptr i64 %99 to i32*
  %102 = load i32, i32* %101, align 4
  %103 = add i32 %102, -1
  %104 = icmp eq i32 %102, 0
  %105 = zext i1 %104 to i8
  store i8 %105, i8* %38, align 1
  %106 = and i32 %103, 255
  %107 = tail call i32 @llvm.ctpop.i32(i32 %106)
  %108 = trunc i32 %107 to i8
  %109 = and i8 %108, 1
  %110 = xor i8 %109, 1
  store i8 %110, i8* %44, align 1
  %111 = xor i32 %103, %102
  %112 = lshr i32 %111, 4
  %113 = trunc i32 %112 to i8
  %114 = and i8 %113, 1
  store i8 %114, i8* %49, align 1
  %115 = icmp eq i32 %103, 0
  %116 = zext i1 %115 to i8
  store i8 %116, i8* %52, align 1
  %117 = lshr i32 %103, 31
  %118 = trunc i32 %117 to i8
  store i8 %118, i8* %55, align 1
  %119 = lshr i32 %102, 31
  %120 = xor i32 %117, %119
  %121 = add nuw nsw i32 %120, %119
  %122 = icmp eq i32 %121, 2
  %123 = zext i1 %122 to i8
  store i8 %123, i8* %61, align 1
  %.v23 = select i1 %115, i64 179, i64 10
  %124 = add i64 %93, %.v23
  store i64 %124, i64* %3, align 8
  br i1 %115, label %block_.L_402c2d, label %block_402b84

block_402b84:                                     ; preds = %block_.L_402b7a
  %125 = add i64 %29, -32
  %126 = add i64 %124, 7
  store i64 %126, i64* %3, align 8
  %127 = inttoptr i64 %125 to i32*
  store i32 1, i32* %127, align 4
  %RAX.i198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %128 = load i64, i64* %RBP.i, align 8
  %129 = add i64 %128, -16
  %130 = load i64, i64* %3, align 8
  %131 = add i64 %130, 4
  store i64 %131, i64* %3, align 8
  %132 = inttoptr i64 %129 to i64*
  %133 = load i64, i64* %132, align 8
  store i64 %133, i64* %RAX.i198, align 8
  %134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %135 = bitcast [32 x %union.VectorReg]* %134 to i8*
  %136 = add i64 %130, 8
  store i64 %136, i64* %3, align 8
  %137 = inttoptr i64 %133 to float*
  %138 = load float, float* %137, align 4
  %139 = fpext float %138 to double
  %140 = bitcast [32 x %union.VectorReg]* %134 to double*
  store double %139, double* %140, align 1
  %141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %142 = bitcast %union.VectorReg* %141 to i8*
  %143 = add i64 %130, 773
  %144 = add i64 %130, 15
  store i64 %144, i64* %3, align 8
  %145 = inttoptr i64 %143 to i32*
  %146 = load i32, i32* %145, align 4
  %147 = add i64 %130, 777
  %148 = inttoptr i64 %147 to i32*
  %149 = load i32, i32* %148, align 4
  %150 = add i64 %130, 781
  %151 = inttoptr i64 %150 to i32*
  %152 = load i32, i32* %151, align 4
  %153 = add i64 %130, 785
  %154 = inttoptr i64 %153 to i32*
  %155 = load i32, i32* %154, align 4
  %156 = bitcast %union.VectorReg* %141 to i32*
  store i32 %146, i32* %156, align 1
  %157 = getelementptr inbounds i8, i8* %142, i64 4
  %158 = bitcast i8* %157 to i32*
  store i32 %149, i32* %158, align 1
  %159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %160 = bitcast i64* %159 to i32*
  store i32 %152, i32* %160, align 1
  %161 = getelementptr inbounds i8, i8* %142, i64 12
  %162 = bitcast i8* %161 to i32*
  store i32 %155, i32* %162, align 1
  %163 = bitcast double %139 to i64
  %164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %165 = load i64, i64* %164, align 1
  %166 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %141, i64 0, i32 0, i32 0, i32 0, i64 0
  %167 = load i64, i64* %166, align 1
  %168 = load i64, i64* %159, align 1
  %169 = and i64 %167, %163
  %170 = and i64 %168, %165
  %171 = trunc i64 %169 to i32
  %172 = lshr i64 %169, 32
  %173 = trunc i64 %172 to i32
  %174 = bitcast [32 x %union.VectorReg]* %134 to i32*
  store i32 %171, i32* %174, align 1
  %175 = getelementptr inbounds i8, i8* %135, i64 4
  %176 = bitcast i8* %175 to i32*
  store i32 %173, i32* %176, align 1
  %177 = trunc i64 %170 to i32
  %178 = bitcast i64* %164 to i32*
  store i32 %177, i32* %178, align 1
  %179 = lshr i64 %170, 32
  %180 = trunc i64 %179 to i32
  %181 = getelementptr inbounds i8, i8* %135, i64 12
  %182 = bitcast i8* %181 to i32*
  store i32 %180, i32* %182, align 1
  %183 = bitcast [32 x %union.VectorReg]* %134 to <2 x i32>*
  %184 = load <2 x i32>, <2 x i32>* %183, align 1
  %185 = bitcast i64* %164 to <2 x i32>*
  %186 = load <2 x i32>, <2 x i32>* %185, align 1
  %.cast = bitcast <2 x i32> %184 to double
  %187 = fptrunc double %.cast to float
  %188 = bitcast [32 x %union.VectorReg]* %134 to float*
  store float %187, float* %188, align 1
  %189 = extractelement <2 x i32> %184, i32 1
  store i32 %189, i32* %176, align 1
  %190 = extractelement <2 x i32> %186, i32 0
  store i32 %190, i32* %178, align 1
  %191 = extractelement <2 x i32> %186, i32 1
  store i32 %191, i32* %182, align 1
  %192 = add i64 %128, -24
  %193 = add i64 %130, 28
  store i64 %193, i64* %3, align 8
  %194 = bitcast [32 x %union.VectorReg]* %134 to <2 x float>*
  %195 = load <2 x float>, <2 x float>* %194, align 1
  %196 = extractelement <2 x float> %195, i32 0
  %197 = inttoptr i64 %192 to float*
  store float %196, float* %197, align 4
  %RCX.i181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %198 = load i64, i64* %RBP.i, align 8
  %199 = add i64 %198, -32
  %200 = load i64, i64* %3, align 8
  %201 = add i64 %200, 3
  store i64 %201, i64* %3, align 8
  %202 = inttoptr i64 %199 to i32*
  %203 = load i32, i32* %202, align 4
  %204 = zext i32 %203 to i64
  store i64 %204, i64* %RCX.i181, align 8
  %205 = add i64 %198, -20
  %206 = add i64 %200, 6
  store i64 %206, i64* %3, align 8
  %207 = inttoptr i64 %205 to i32*
  %208 = load i32, i32* %207, align 4
  %209 = add i32 %208, %203
  %210 = zext i32 %209 to i64
  store i64 %210, i64* %RCX.i181, align 8
  %211 = icmp ult i32 %209, %203
  %212 = icmp ult i32 %209, %208
  %213 = or i1 %211, %212
  %214 = zext i1 %213 to i8
  store i8 %214, i8* %38, align 1
  %215 = and i32 %209, 255
  %216 = tail call i32 @llvm.ctpop.i32(i32 %215)
  %217 = trunc i32 %216 to i8
  %218 = and i8 %217, 1
  %219 = xor i8 %218, 1
  store i8 %219, i8* %44, align 1
  %220 = xor i32 %208, %203
  %221 = xor i32 %220, %209
  %222 = lshr i32 %221, 4
  %223 = trunc i32 %222 to i8
  %224 = and i8 %223, 1
  store i8 %224, i8* %49, align 1
  %225 = icmp eq i32 %209, 0
  %226 = zext i1 %225 to i8
  store i8 %226, i8* %52, align 1
  %227 = lshr i32 %209, 31
  %228 = trunc i32 %227 to i8
  store i8 %228, i8* %55, align 1
  %229 = lshr i32 %203, 31
  %230 = lshr i32 %208, 31
  %231 = xor i32 %227, %229
  %232 = xor i32 %227, %230
  %233 = add nuw nsw i32 %231, %232
  %234 = icmp eq i32 %233, 2
  %235 = zext i1 %234 to i8
  store i8 %235, i8* %61, align 1
  %236 = add i64 %200, 9
  store i64 %236, i64* %3, align 8
  store i32 %209, i32* %202, align 4
  %237 = load i64, i64* %RBP.i, align 8
  %238 = add i64 %237, -28
  %239 = load i64, i64* %3, align 8
  %240 = add i64 %239, 7
  store i64 %240, i64* %3, align 8
  %241 = inttoptr i64 %238 to i32*
  store i32 1, i32* %241, align 4
  %242 = bitcast %union.VectorReg* %141 to double*
  %RDX.i130 = getelementptr inbounds %union.anon, %union.anon* %22, i64 0, i32 0
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_402bb7

block_.L_402bb7:                                  ; preds = %block_.L_402c11, %block_402b84
  %243 = phi i64 [ %.pre, %block_402b84 ], [ %491, %block_.L_402c11 ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_402b84 ], [ %355, %block_.L_402c11 ]
  %244 = load i64, i64* %RBP.i, align 8
  %245 = add i64 %244, -28
  %246 = add i64 %243, 3
  store i64 %246, i64* %3, align 8
  %247 = inttoptr i64 %245 to i32*
  %248 = load i32, i32* %247, align 4
  %249 = zext i32 %248 to i64
  store i64 %249, i64* %RAX.i198, align 8
  %250 = add i64 %244, -8
  %251 = add i64 %243, 6
  store i64 %251, i64* %3, align 8
  %252 = inttoptr i64 %250 to i32*
  %253 = load i32, i32* %252, align 4
  %254 = sub i32 %248, %253
  %255 = icmp ult i32 %248, %253
  %256 = zext i1 %255 to i8
  store i8 %256, i8* %38, align 1
  %257 = and i32 %254, 255
  %258 = tail call i32 @llvm.ctpop.i32(i32 %257)
  %259 = trunc i32 %258 to i8
  %260 = and i8 %259, 1
  %261 = xor i8 %260, 1
  store i8 %261, i8* %44, align 1
  %262 = xor i32 %253, %248
  %263 = xor i32 %262, %254
  %264 = lshr i32 %263, 4
  %265 = trunc i32 %264 to i8
  %266 = and i8 %265, 1
  store i8 %266, i8* %49, align 1
  %267 = icmp eq i32 %254, 0
  %268 = zext i1 %267 to i8
  store i8 %268, i8* %52, align 1
  %269 = lshr i32 %254, 31
  %270 = trunc i32 %269 to i8
  store i8 %270, i8* %55, align 1
  %271 = lshr i32 %248, 31
  %272 = lshr i32 %253, 31
  %273 = xor i32 %272, %271
  %274 = xor i32 %269, %271
  %275 = add nuw nsw i32 %274, %273
  %276 = icmp eq i32 %275, 2
  %277 = zext i1 %276 to i8
  store i8 %277, i8* %61, align 1
  %278 = icmp ne i8 %270, 0
  %279 = xor i1 %278, %276
  %.v24 = select i1 %279, i64 12, i64 113
  %280 = add i64 %243, %.v24
  store i64 %280, i64* %3, align 8
  br i1 %279, label %block_402bc3, label %block_.L_402c28

block_402bc3:                                     ; preds = %block_.L_402bb7
  %281 = add i64 %244, -16
  %282 = add i64 %280, 4
  store i64 %282, i64* %3, align 8
  %283 = inttoptr i64 %281 to i64*
  %284 = load i64, i64* %283, align 8
  store i64 %284, i64* %RAX.i198, align 8
  %285 = add i64 %244, -32
  %286 = add i64 %280, 8
  store i64 %286, i64* %3, align 8
  %287 = inttoptr i64 %285 to i32*
  %288 = load i32, i32* %287, align 4
  %289 = sext i32 %288 to i64
  store i64 %289, i64* %RCX.i181, align 8
  %290 = shl nsw i64 %289, 2
  %291 = add i64 %290, %284
  %292 = add i64 %280, 13
  store i64 %292, i64* %3, align 8
  %293 = inttoptr i64 %291 to float*
  %294 = load float, float* %293, align 4
  %295 = fpext float %294 to double
  store double %295, double* %140, align 1
  %296 = add i64 %280, 717
  %297 = add i64 %280, 20
  store i64 %297, i64* %3, align 8
  %298 = inttoptr i64 %296 to i32*
  %299 = load i32, i32* %298, align 4
  %300 = add i64 %280, 721
  %301 = inttoptr i64 %300 to i32*
  %302 = load i32, i32* %301, align 4
  %303 = add i64 %280, 725
  %304 = inttoptr i64 %303 to i32*
  %305 = load i32, i32* %304, align 4
  %306 = add i64 %280, 729
  %307 = inttoptr i64 %306 to i32*
  %308 = load i32, i32* %307, align 4
  store i32 %299, i32* %156, align 1
  store i32 %302, i32* %158, align 1
  store i32 %305, i32* %160, align 1
  store i32 %308, i32* %162, align 1
  %309 = bitcast double %295 to i64
  %310 = load i64, i64* %164, align 1
  %311 = load i64, i64* %166, align 1
  %312 = load i64, i64* %159, align 1
  %313 = and i64 %311, %309
  %314 = and i64 %312, %310
  %315 = trunc i64 %313 to i32
  %316 = lshr i64 %313, 32
  %317 = trunc i64 %316 to i32
  store i32 %315, i32* %174, align 1
  store i32 %317, i32* %176, align 1
  %318 = trunc i64 %314 to i32
  store i32 %318, i32* %178, align 1
  %319 = lshr i64 %314, 32
  %320 = trunc i64 %319 to i32
  store i32 %320, i32* %182, align 1
  %321 = add i64 %244, -24
  %322 = add i64 %280, 29
  store i64 %322, i64* %3, align 8
  %323 = inttoptr i64 %321 to float*
  %324 = load float, float* %323, align 4
  %325 = fpext float %324 to double
  store double %325, double* %242, align 1
  %326 = add i64 %280, 33
  store i64 %326, i64* %3, align 8
  %327 = load double, double* %140, align 1
  %328 = fcmp uno double %327, %325
  br i1 %328, label %329, label %339

; <label>:329:                                    ; preds = %block_402bc3
  %330 = fadd double %325, %327
  %331 = bitcast double %330 to i64
  %332 = and i64 %331, 9221120237041090560
  %333 = icmp eq i64 %332, 9218868437227405312
  %334 = and i64 %331, 2251799813685247
  %335 = icmp ne i64 %334, 0
  %336 = and i1 %333, %335
  br i1 %336, label %337, label %345

; <label>:337:                                    ; preds = %329
  %338 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %326, %struct.Memory* %MEMORY.0)
  %.pre12 = load i64, i64* %3, align 8
  %.pre13 = load i8, i8* %38, align 1
  %.pre14 = load i8, i8* %52, align 1
  br label %routine_ucomisd__xmm1___xmm0.exit145

; <label>:339:                                    ; preds = %block_402bc3
  %340 = fcmp ogt double %327, %325
  br i1 %340, label %345, label %341

; <label>:341:                                    ; preds = %339
  %342 = fcmp olt double %327, %325
  br i1 %342, label %345, label %343

; <label>:343:                                    ; preds = %341
  %344 = fcmp oeq double %327, %325
  br i1 %344, label %345, label %349

; <label>:345:                                    ; preds = %343, %341, %339, %329
  %346 = phi i8 [ 0, %339 ], [ 0, %341 ], [ 1, %343 ], [ 1, %329 ]
  %347 = phi i8 [ 0, %339 ], [ 0, %341 ], [ 0, %343 ], [ 1, %329 ]
  %348 = phi i8 [ 0, %339 ], [ 1, %341 ], [ 0, %343 ], [ 1, %329 ]
  store i8 %346, i8* %52, align 1
  store i8 %347, i8* %44, align 1
  store i8 %348, i8* %38, align 1
  br label %349

; <label>:349:                                    ; preds = %345, %343
  %350 = phi i8 [ %346, %345 ], [ %268, %343 ]
  %351 = phi i8 [ %348, %345 ], [ %256, %343 ]
  store i8 0, i8* %61, align 1
  store i8 0, i8* %55, align 1
  store i8 0, i8* %49, align 1
  br label %routine_ucomisd__xmm1___xmm0.exit145

routine_ucomisd__xmm1___xmm0.exit145:             ; preds = %349, %337
  %352 = phi i8 [ %.pre14, %337 ], [ %350, %349 ]
  %353 = phi i8 [ %.pre13, %337 ], [ %351, %349 ]
  %354 = phi i64 [ %.pre12, %337 ], [ %326, %349 ]
  %355 = phi %struct.Memory* [ %338, %337 ], [ %MEMORY.0, %349 ]
  %356 = or i8 %352, %353
  %357 = icmp ne i8 %356, 0
  %.v25 = select i1 %357, i64 45, i64 6
  %358 = add i64 %354, %.v25
  store i64 %358, i64* %3, align 8
  br i1 %357, label %block_.L_402c11, label %block_402bea

block_402bea:                                     ; preds = %routine_ucomisd__xmm1___xmm0.exit145
  %359 = load i64, i64* %RBP.i, align 8
  %360 = add i64 %359, -28
  %361 = add i64 %358, 3
  store i64 %361, i64* %3, align 8
  %362 = inttoptr i64 %360 to i32*
  %363 = load i32, i32* %362, align 4
  %364 = zext i32 %363 to i64
  store i64 %364, i64* %RAX.i198, align 8
  %365 = add i64 %359, -36
  %366 = add i64 %358, 6
  store i64 %366, i64* %3, align 8
  %367 = inttoptr i64 %365 to i32*
  store i32 %363, i32* %367, align 4
  %368 = load i64, i64* %RBP.i, align 8
  %369 = add i64 %368, -16
  %370 = load i64, i64* %3, align 8
  %371 = add i64 %370, 4
  store i64 %371, i64* %3, align 8
  %372 = inttoptr i64 %369 to i64*
  %373 = load i64, i64* %372, align 8
  store i64 %373, i64* %RCX.i181, align 8
  %374 = add i64 %368, -32
  %375 = add i64 %370, 8
  store i64 %375, i64* %3, align 8
  %376 = inttoptr i64 %374 to i32*
  %377 = load i32, i32* %376, align 4
  %378 = sext i32 %377 to i64
  store i64 %378, i64* %RDX.i130, align 8
  %379 = shl nsw i64 %378, 2
  %380 = add i64 %379, %373
  %381 = add i64 %370, 13
  store i64 %381, i64* %3, align 8
  %382 = inttoptr i64 %380 to float*
  %383 = load float, float* %382, align 4
  %384 = fpext float %383 to double
  store double %384, double* %140, align 1
  %385 = add i64 %370, 672
  %386 = add i64 %370, 20
  store i64 %386, i64* %3, align 8
  %387 = inttoptr i64 %385 to i32*
  %388 = load i32, i32* %387, align 4
  %389 = add i64 %370, 676
  %390 = inttoptr i64 %389 to i32*
  %391 = load i32, i32* %390, align 4
  %392 = add i64 %370, 680
  %393 = inttoptr i64 %392 to i32*
  %394 = load i32, i32* %393, align 4
  %395 = add i64 %370, 684
  %396 = inttoptr i64 %395 to i32*
  %397 = load i32, i32* %396, align 4
  store i32 %388, i32* %156, align 1
  store i32 %391, i32* %158, align 1
  store i32 %394, i32* %160, align 1
  store i32 %397, i32* %162, align 1
  %398 = bitcast double %384 to i64
  %399 = load i64, i64* %164, align 1
  %400 = load i64, i64* %166, align 1
  %401 = load i64, i64* %159, align 1
  %402 = and i64 %400, %398
  %403 = and i64 %401, %399
  %404 = trunc i64 %402 to i32
  %405 = lshr i64 %402, 32
  %406 = trunc i64 %405 to i32
  store i32 %404, i32* %174, align 1
  store i32 %406, i32* %176, align 1
  %407 = trunc i64 %403 to i32
  store i32 %407, i32* %178, align 1
  %408 = lshr i64 %403, 32
  %409 = trunc i64 %408 to i32
  store i32 %409, i32* %182, align 1
  %410 = load <2 x i32>, <2 x i32>* %183, align 1
  %411 = load <2 x i32>, <2 x i32>* %185, align 1
  %.cast7 = bitcast <2 x i32> %410 to double
  %412 = fptrunc double %.cast7 to float
  store float %412, float* %188, align 1
  %413 = extractelement <2 x i32> %410, i32 1
  store i32 %413, i32* %176, align 1
  %414 = extractelement <2 x i32> %411, i32 0
  store i32 %414, i32* %178, align 1
  %415 = extractelement <2 x i32> %411, i32 1
  store i32 %415, i32* %182, align 1
  %416 = add i64 %368, -24
  %417 = add i64 %370, 33
  store i64 %417, i64* %3, align 8
  %418 = load <2 x float>, <2 x float>* %194, align 1
  %419 = extractelement <2 x float> %418, i32 0
  %420 = inttoptr i64 %416 to float*
  store float %419, float* %420, align 4
  %.pre15 = load i64, i64* %3, align 8
  br label %block_.L_402c11

block_.L_402c11:                                  ; preds = %block_402bea, %routine_ucomisd__xmm1___xmm0.exit145
  %421 = phi i64 [ %.pre15, %block_402bea ], [ %358, %routine_ucomisd__xmm1___xmm0.exit145 ]
  %422 = load i64, i64* %RBP.i, align 8
  %423 = add i64 %422, -32
  %424 = add i64 %421, 3
  store i64 %424, i64* %3, align 8
  %425 = inttoptr i64 %423 to i32*
  %426 = load i32, i32* %425, align 4
  %427 = zext i32 %426 to i64
  store i64 %427, i64* %RAX.i198, align 8
  %428 = add i64 %422, -20
  %429 = add i64 %421, 6
  store i64 %429, i64* %3, align 8
  %430 = inttoptr i64 %428 to i32*
  %431 = load i32, i32* %430, align 4
  %432 = add i32 %431, %426
  %433 = zext i32 %432 to i64
  store i64 %433, i64* %RAX.i198, align 8
  %434 = icmp ult i32 %432, %426
  %435 = icmp ult i32 %432, %431
  %436 = or i1 %434, %435
  %437 = zext i1 %436 to i8
  store i8 %437, i8* %38, align 1
  %438 = and i32 %432, 255
  %439 = tail call i32 @llvm.ctpop.i32(i32 %438)
  %440 = trunc i32 %439 to i8
  %441 = and i8 %440, 1
  %442 = xor i8 %441, 1
  store i8 %442, i8* %44, align 1
  %443 = xor i32 %431, %426
  %444 = xor i32 %443, %432
  %445 = lshr i32 %444, 4
  %446 = trunc i32 %445 to i8
  %447 = and i8 %446, 1
  store i8 %447, i8* %49, align 1
  %448 = icmp eq i32 %432, 0
  %449 = zext i1 %448 to i8
  store i8 %449, i8* %52, align 1
  %450 = lshr i32 %432, 31
  %451 = trunc i32 %450 to i8
  store i8 %451, i8* %55, align 1
  %452 = lshr i32 %426, 31
  %453 = lshr i32 %431, 31
  %454 = xor i32 %450, %452
  %455 = xor i32 %450, %453
  %456 = add nuw nsw i32 %454, %455
  %457 = icmp eq i32 %456, 2
  %458 = zext i1 %457 to i8
  store i8 %458, i8* %61, align 1
  %459 = add i64 %421, 9
  store i64 %459, i64* %3, align 8
  store i32 %432, i32* %425, align 4
  %460 = load i64, i64* %RBP.i, align 8
  %461 = add i64 %460, -28
  %462 = load i64, i64* %3, align 8
  %463 = add i64 %462, 3
  store i64 %463, i64* %3, align 8
  %464 = inttoptr i64 %461 to i32*
  %465 = load i32, i32* %464, align 4
  %466 = add i32 %465, 1
  %467 = zext i32 %466 to i64
  store i64 %467, i64* %RAX.i198, align 8
  %468 = icmp eq i32 %465, -1
  %469 = icmp eq i32 %466, 0
  %470 = or i1 %468, %469
  %471 = zext i1 %470 to i8
  store i8 %471, i8* %38, align 1
  %472 = and i32 %466, 255
  %473 = tail call i32 @llvm.ctpop.i32(i32 %472)
  %474 = trunc i32 %473 to i8
  %475 = and i8 %474, 1
  %476 = xor i8 %475, 1
  store i8 %476, i8* %44, align 1
  %477 = xor i32 %466, %465
  %478 = lshr i32 %477, 4
  %479 = trunc i32 %478 to i8
  %480 = and i8 %479, 1
  store i8 %480, i8* %49, align 1
  %481 = zext i1 %469 to i8
  store i8 %481, i8* %52, align 1
  %482 = lshr i32 %466, 31
  %483 = trunc i32 %482 to i8
  store i8 %483, i8* %55, align 1
  %484 = lshr i32 %465, 31
  %485 = xor i32 %482, %484
  %486 = add nuw nsw i32 %485, %482
  %487 = icmp eq i32 %486, 2
  %488 = zext i1 %487 to i8
  store i8 %488, i8* %61, align 1
  %489 = add i64 %462, 9
  store i64 %489, i64* %3, align 8
  store i32 %466, i32* %464, align 4
  %490 = load i64, i64* %3, align 8
  %491 = add i64 %490, -108
  store i64 %491, i64* %3, align 8
  br label %block_.L_402bb7

block_.L_402c28:                                  ; preds = %block_.L_402bb7
  %492 = add i64 %280, 161
  br label %block_.L_402cc9

block_.L_402c2d:                                  ; preds = %block_.L_402b7a
  %493 = add i64 %29, -36
  %494 = add i64 %124, 7
  store i64 %494, i64* %3, align 8
  %495 = inttoptr i64 %493 to i32*
  store i32 0, i32* %495, align 4
  %RAX.i91 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %496 = load i64, i64* %RBP.i, align 8
  %497 = add i64 %496, -16
  %498 = load i64, i64* %3, align 8
  %499 = add i64 %498, 4
  store i64 %499, i64* %3, align 8
  %500 = inttoptr i64 %497 to i64*
  %501 = load i64, i64* %500, align 8
  store i64 %501, i64* %RAX.i91, align 8
  %502 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %503 = bitcast [32 x %union.VectorReg]* %502 to i8*
  %504 = add i64 %498, 8
  store i64 %504, i64* %3, align 8
  %505 = inttoptr i64 %501 to float*
  %506 = load float, float* %505, align 4
  %507 = fpext float %506 to double
  %508 = bitcast [32 x %union.VectorReg]* %502 to double*
  store double %507, double* %508, align 1
  %509 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %510 = bitcast %union.VectorReg* %509 to i8*
  %511 = add i64 %498, 604
  %512 = add i64 %498, 15
  store i64 %512, i64* %3, align 8
  %513 = inttoptr i64 %511 to i32*
  %514 = load i32, i32* %513, align 4
  %515 = add i64 %498, 608
  %516 = inttoptr i64 %515 to i32*
  %517 = load i32, i32* %516, align 4
  %518 = add i64 %498, 612
  %519 = inttoptr i64 %518 to i32*
  %520 = load i32, i32* %519, align 4
  %521 = add i64 %498, 616
  %522 = inttoptr i64 %521 to i32*
  %523 = load i32, i32* %522, align 4
  %524 = bitcast %union.VectorReg* %509 to i32*
  store i32 %514, i32* %524, align 1
  %525 = getelementptr inbounds i8, i8* %510, i64 4
  %526 = bitcast i8* %525 to i32*
  store i32 %517, i32* %526, align 1
  %527 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %528 = bitcast i64* %527 to i32*
  store i32 %520, i32* %528, align 1
  %529 = getelementptr inbounds i8, i8* %510, i64 12
  %530 = bitcast i8* %529 to i32*
  store i32 %523, i32* %530, align 1
  %531 = bitcast double %507 to i64
  %532 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %533 = load i64, i64* %532, align 1
  %534 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %509, i64 0, i32 0, i32 0, i32 0, i64 0
  %535 = load i64, i64* %534, align 1
  %536 = load i64, i64* %527, align 1
  %537 = and i64 %535, %531
  %538 = and i64 %536, %533
  %539 = trunc i64 %537 to i32
  %540 = lshr i64 %537, 32
  %541 = trunc i64 %540 to i32
  %542 = bitcast [32 x %union.VectorReg]* %502 to i32*
  store i32 %539, i32* %542, align 1
  %543 = getelementptr inbounds i8, i8* %503, i64 4
  %544 = bitcast i8* %543 to i32*
  store i32 %541, i32* %544, align 1
  %545 = trunc i64 %538 to i32
  %546 = bitcast i64* %532 to i32*
  store i32 %545, i32* %546, align 1
  %547 = lshr i64 %538, 32
  %548 = trunc i64 %547 to i32
  %549 = getelementptr inbounds i8, i8* %503, i64 12
  %550 = bitcast i8* %549 to i32*
  store i32 %548, i32* %550, align 1
  %551 = bitcast [32 x %union.VectorReg]* %502 to <2 x i32>*
  %552 = load <2 x i32>, <2 x i32>* %551, align 1
  %553 = bitcast i64* %532 to <2 x i32>*
  %554 = load <2 x i32>, <2 x i32>* %553, align 1
  %.cast8 = bitcast <2 x i32> %552 to double
  %555 = fptrunc double %.cast8 to float
  %556 = bitcast [32 x %union.VectorReg]* %502 to float*
  store float %555, float* %556, align 1
  %557 = extractelement <2 x i32> %552, i32 1
  store i32 %557, i32* %544, align 1
  %558 = extractelement <2 x i32> %554, i32 0
  store i32 %558, i32* %546, align 1
  %559 = extractelement <2 x i32> %554, i32 1
  store i32 %559, i32* %550, align 1
  %560 = add i64 %496, -24
  %561 = add i64 %498, 28
  store i64 %561, i64* %3, align 8
  %562 = bitcast [32 x %union.VectorReg]* %502 to <2 x float>*
  %563 = load <2 x float>, <2 x float>* %562, align 1
  %564 = extractelement <2 x float> %563, i32 0
  %565 = inttoptr i64 %560 to float*
  store float %564, float* %565, align 4
  %566 = load i64, i64* %RBP.i, align 8
  %567 = add i64 %566, -28
  %568 = load i64, i64* %3, align 8
  %569 = add i64 %568, 7
  store i64 %569, i64* %3, align 8
  %570 = inttoptr i64 %567 to i32*
  store i32 1, i32* %570, align 4
  %RCX.i62 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %571 = bitcast %union.VectorReg* %509 to double*
  %RDX.i32 = getelementptr inbounds %union.anon, %union.anon* %22, i64 0, i32 0
  %.pre16 = load i64, i64* %3, align 8
  br label %block_.L_402c57

block_.L_402c57:                                  ; preds = %block_.L_402cb1, %block_.L_402c2d
  %572 = phi i64 [ %.pre16, %block_.L_402c2d ], [ %779, %block_.L_402cb1 ]
  %MEMORY.2 = phi %struct.Memory* [ %2, %block_.L_402c2d ], [ %682, %block_.L_402cb1 ]
  %573 = load i64, i64* %RBP.i, align 8
  %574 = add i64 %573, -28
  %575 = add i64 %572, 3
  store i64 %575, i64* %3, align 8
  %576 = inttoptr i64 %574 to i32*
  %577 = load i32, i32* %576, align 4
  %578 = zext i32 %577 to i64
  store i64 %578, i64* %RAX.i91, align 8
  %579 = add i64 %573, -8
  %580 = add i64 %572, 6
  store i64 %580, i64* %3, align 8
  %581 = inttoptr i64 %579 to i32*
  %582 = load i32, i32* %581, align 4
  %583 = sub i32 %577, %582
  %584 = icmp ult i32 %577, %582
  %585 = zext i1 %584 to i8
  store i8 %585, i8* %38, align 1
  %586 = and i32 %583, 255
  %587 = tail call i32 @llvm.ctpop.i32(i32 %586)
  %588 = trunc i32 %587 to i8
  %589 = and i8 %588, 1
  %590 = xor i8 %589, 1
  store i8 %590, i8* %44, align 1
  %591 = xor i32 %582, %577
  %592 = xor i32 %591, %583
  %593 = lshr i32 %592, 4
  %594 = trunc i32 %593 to i8
  %595 = and i8 %594, 1
  store i8 %595, i8* %49, align 1
  %596 = icmp eq i32 %583, 0
  %597 = zext i1 %596 to i8
  store i8 %597, i8* %52, align 1
  %598 = lshr i32 %583, 31
  %599 = trunc i32 %598 to i8
  store i8 %599, i8* %55, align 1
  %600 = lshr i32 %577, 31
  %601 = lshr i32 %582, 31
  %602 = xor i32 %601, %600
  %603 = xor i32 %598, %600
  %604 = add nuw nsw i32 %603, %602
  %605 = icmp eq i32 %604, 2
  %606 = zext i1 %605 to i8
  store i8 %606, i8* %61, align 1
  %607 = icmp ne i8 %599, 0
  %608 = xor i1 %607, %605
  %.v26 = select i1 %608, i64 12, i64 109
  %609 = add i64 %572, %.v26
  store i64 %609, i64* %3, align 8
  br i1 %608, label %block_402c63, label %block_.L_402cc4

block_402c63:                                     ; preds = %block_.L_402c57
  %610 = add i64 %573, -16
  %611 = add i64 %609, 4
  store i64 %611, i64* %3, align 8
  %612 = inttoptr i64 %610 to i64*
  %613 = load i64, i64* %612, align 8
  store i64 %613, i64* %RAX.i91, align 8
  %614 = add i64 %609, 8
  store i64 %614, i64* %3, align 8
  %615 = load i32, i32* %576, align 4
  %616 = sext i32 %615 to i64
  store i64 %616, i64* %RCX.i62, align 8
  %617 = shl nsw i64 %616, 2
  %618 = add i64 %617, %613
  %619 = add i64 %609, 13
  store i64 %619, i64* %3, align 8
  %620 = inttoptr i64 %618 to float*
  %621 = load float, float* %620, align 4
  %622 = fpext float %621 to double
  store double %622, double* %508, align 1
  %623 = add i64 %609, 557
  %624 = add i64 %609, 20
  store i64 %624, i64* %3, align 8
  %625 = inttoptr i64 %623 to i32*
  %626 = load i32, i32* %625, align 4
  %627 = add i64 %609, 561
  %628 = inttoptr i64 %627 to i32*
  %629 = load i32, i32* %628, align 4
  %630 = add i64 %609, 565
  %631 = inttoptr i64 %630 to i32*
  %632 = load i32, i32* %631, align 4
  %633 = add i64 %609, 569
  %634 = inttoptr i64 %633 to i32*
  %635 = load i32, i32* %634, align 4
  store i32 %626, i32* %524, align 1
  store i32 %629, i32* %526, align 1
  store i32 %632, i32* %528, align 1
  store i32 %635, i32* %530, align 1
  %636 = bitcast double %622 to i64
  %637 = load i64, i64* %532, align 1
  %638 = load i64, i64* %534, align 1
  %639 = load i64, i64* %527, align 1
  %640 = and i64 %638, %636
  %641 = and i64 %639, %637
  %642 = trunc i64 %640 to i32
  %643 = lshr i64 %640, 32
  %644 = trunc i64 %643 to i32
  store i32 %642, i32* %542, align 1
  store i32 %644, i32* %544, align 1
  %645 = trunc i64 %641 to i32
  store i32 %645, i32* %546, align 1
  %646 = lshr i64 %641, 32
  %647 = trunc i64 %646 to i32
  store i32 %647, i32* %550, align 1
  %648 = add i64 %573, -24
  %649 = add i64 %609, 29
  store i64 %649, i64* %3, align 8
  %650 = inttoptr i64 %648 to float*
  %651 = load float, float* %650, align 4
  %652 = fpext float %651 to double
  store double %652, double* %571, align 1
  %653 = add i64 %609, 33
  store i64 %653, i64* %3, align 8
  %654 = load double, double* %508, align 1
  %655 = fcmp uno double %654, %652
  br i1 %655, label %656, label %666

; <label>:656:                                    ; preds = %block_402c63
  %657 = fadd double %652, %654
  %658 = bitcast double %657 to i64
  %659 = and i64 %658, 9221120237041090560
  %660 = icmp eq i64 %659, 9218868437227405312
  %661 = and i64 %658, 2251799813685247
  %662 = icmp ne i64 %661, 0
  %663 = and i1 %660, %662
  br i1 %663, label %664, label %672

; <label>:664:                                    ; preds = %656
  %665 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %653, %struct.Memory* %MEMORY.2)
  %.pre17 = load i64, i64* %3, align 8
  %.pre18 = load i8, i8* %38, align 1
  %.pre19 = load i8, i8* %52, align 1
  br label %routine_ucomisd__xmm1___xmm0.exit

; <label>:666:                                    ; preds = %block_402c63
  %667 = fcmp ogt double %654, %652
  br i1 %667, label %672, label %668

; <label>:668:                                    ; preds = %666
  %669 = fcmp olt double %654, %652
  br i1 %669, label %672, label %670

; <label>:670:                                    ; preds = %668
  %671 = fcmp oeq double %654, %652
  br i1 %671, label %672, label %676

; <label>:672:                                    ; preds = %670, %668, %666, %656
  %673 = phi i8 [ 0, %666 ], [ 0, %668 ], [ 1, %670 ], [ 1, %656 ]
  %674 = phi i8 [ 0, %666 ], [ 0, %668 ], [ 0, %670 ], [ 1, %656 ]
  %675 = phi i8 [ 0, %666 ], [ 1, %668 ], [ 0, %670 ], [ 1, %656 ]
  store i8 %673, i8* %52, align 1
  store i8 %674, i8* %44, align 1
  store i8 %675, i8* %38, align 1
  br label %676

; <label>:676:                                    ; preds = %672, %670
  %677 = phi i8 [ %673, %672 ], [ %597, %670 ]
  %678 = phi i8 [ %675, %672 ], [ %585, %670 ]
  store i8 0, i8* %61, align 1
  store i8 0, i8* %55, align 1
  store i8 0, i8* %49, align 1
  br label %routine_ucomisd__xmm1___xmm0.exit

routine_ucomisd__xmm1___xmm0.exit:                ; preds = %676, %664
  %679 = phi i8 [ %.pre19, %664 ], [ %677, %676 ]
  %680 = phi i8 [ %.pre18, %664 ], [ %678, %676 ]
  %681 = phi i64 [ %.pre17, %664 ], [ %653, %676 ]
  %682 = phi %struct.Memory* [ %665, %664 ], [ %MEMORY.2, %676 ]
  %683 = or i8 %679, %680
  %684 = icmp ne i8 %683, 0
  %.v27 = select i1 %684, i64 45, i64 6
  %685 = add i64 %681, %.v27
  store i64 %685, i64* %3, align 8
  br i1 %684, label %block_.L_402cb1, label %block_402c8a

block_402c8a:                                     ; preds = %routine_ucomisd__xmm1___xmm0.exit
  %686 = load i64, i64* %RBP.i, align 8
  %687 = add i64 %686, -28
  %688 = add i64 %685, 3
  store i64 %688, i64* %3, align 8
  %689 = inttoptr i64 %687 to i32*
  %690 = load i32, i32* %689, align 4
  %691 = zext i32 %690 to i64
  store i64 %691, i64* %RAX.i91, align 8
  %692 = add i64 %686, -36
  %693 = add i64 %685, 6
  store i64 %693, i64* %3, align 8
  %694 = inttoptr i64 %692 to i32*
  store i32 %690, i32* %694, align 4
  %695 = load i64, i64* %RBP.i, align 8
  %696 = add i64 %695, -16
  %697 = load i64, i64* %3, align 8
  %698 = add i64 %697, 4
  store i64 %698, i64* %3, align 8
  %699 = inttoptr i64 %696 to i64*
  %700 = load i64, i64* %699, align 8
  store i64 %700, i64* %RCX.i62, align 8
  %701 = add i64 %695, -28
  %702 = add i64 %697, 8
  store i64 %702, i64* %3, align 8
  %703 = inttoptr i64 %701 to i32*
  %704 = load i32, i32* %703, align 4
  %705 = sext i32 %704 to i64
  store i64 %705, i64* %RDX.i32, align 8
  %706 = shl nsw i64 %705, 2
  %707 = add i64 %706, %700
  %708 = add i64 %697, 13
  store i64 %708, i64* %3, align 8
  %709 = inttoptr i64 %707 to float*
  %710 = load float, float* %709, align 4
  %711 = fpext float %710 to double
  store double %711, double* %508, align 1
  %712 = add i64 %697, 512
  %713 = add i64 %697, 20
  store i64 %713, i64* %3, align 8
  %714 = inttoptr i64 %712 to i32*
  %715 = load i32, i32* %714, align 4
  %716 = add i64 %697, 516
  %717 = inttoptr i64 %716 to i32*
  %718 = load i32, i32* %717, align 4
  %719 = add i64 %697, 520
  %720 = inttoptr i64 %719 to i32*
  %721 = load i32, i32* %720, align 4
  %722 = add i64 %697, 524
  %723 = inttoptr i64 %722 to i32*
  %724 = load i32, i32* %723, align 4
  store i32 %715, i32* %524, align 1
  store i32 %718, i32* %526, align 1
  store i32 %721, i32* %528, align 1
  store i32 %724, i32* %530, align 1
  %725 = bitcast double %711 to i64
  %726 = load i64, i64* %532, align 1
  %727 = load i64, i64* %534, align 1
  %728 = load i64, i64* %527, align 1
  %729 = and i64 %727, %725
  %730 = and i64 %728, %726
  %731 = trunc i64 %729 to i32
  %732 = lshr i64 %729, 32
  %733 = trunc i64 %732 to i32
  store i32 %731, i32* %542, align 1
  store i32 %733, i32* %544, align 1
  %734 = trunc i64 %730 to i32
  store i32 %734, i32* %546, align 1
  %735 = lshr i64 %730, 32
  %736 = trunc i64 %735 to i32
  store i32 %736, i32* %550, align 1
  %737 = load <2 x i32>, <2 x i32>* %551, align 1
  %738 = load <2 x i32>, <2 x i32>* %553, align 1
  %.cast9 = bitcast <2 x i32> %737 to double
  %739 = fptrunc double %.cast9 to float
  store float %739, float* %556, align 1
  %740 = extractelement <2 x i32> %737, i32 1
  store i32 %740, i32* %544, align 1
  %741 = extractelement <2 x i32> %738, i32 0
  store i32 %741, i32* %546, align 1
  %742 = extractelement <2 x i32> %738, i32 1
  store i32 %742, i32* %550, align 1
  %743 = add i64 %695, -24
  %744 = add i64 %697, 33
  store i64 %744, i64* %3, align 8
  %745 = load <2 x float>, <2 x float>* %562, align 1
  %746 = extractelement <2 x float> %745, i32 0
  %747 = inttoptr i64 %743 to float*
  store float %746, float* %747, align 4
  %.pre20 = load i64, i64* %3, align 8
  br label %block_.L_402cb1

block_.L_402cb1:                                  ; preds = %block_402c8a, %routine_ucomisd__xmm1___xmm0.exit
  %748 = phi i64 [ %.pre20, %block_402c8a ], [ %685, %routine_ucomisd__xmm1___xmm0.exit ]
  %749 = load i64, i64* %RBP.i, align 8
  %750 = add i64 %749, -28
  %751 = add i64 %748, 8
  store i64 %751, i64* %3, align 8
  %752 = inttoptr i64 %750 to i32*
  %753 = load i32, i32* %752, align 4
  %754 = add i32 %753, 1
  %755 = zext i32 %754 to i64
  store i64 %755, i64* %RAX.i91, align 8
  %756 = icmp eq i32 %753, -1
  %757 = icmp eq i32 %754, 0
  %758 = or i1 %756, %757
  %759 = zext i1 %758 to i8
  store i8 %759, i8* %38, align 1
  %760 = and i32 %754, 255
  %761 = tail call i32 @llvm.ctpop.i32(i32 %760)
  %762 = trunc i32 %761 to i8
  %763 = and i8 %762, 1
  %764 = xor i8 %763, 1
  store i8 %764, i8* %44, align 1
  %765 = xor i32 %754, %753
  %766 = lshr i32 %765, 4
  %767 = trunc i32 %766 to i8
  %768 = and i8 %767, 1
  store i8 %768, i8* %49, align 1
  %769 = zext i1 %757 to i8
  store i8 %769, i8* %52, align 1
  %770 = lshr i32 %754, 31
  %771 = trunc i32 %770 to i8
  store i8 %771, i8* %55, align 1
  %772 = lshr i32 %753, 31
  %773 = xor i32 %770, %772
  %774 = add nuw nsw i32 %773, %770
  %775 = icmp eq i32 %774, 2
  %776 = zext i1 %775 to i8
  store i8 %776, i8* %61, align 1
  %777 = add i64 %748, 14
  store i64 %777, i64* %3, align 8
  store i32 %754, i32* %752, align 4
  %778 = load i64, i64* %3, align 8
  %779 = add i64 %778, -104
  store i64 %779, i64* %3, align 8
  br label %block_.L_402c57

block_.L_402cc4:                                  ; preds = %block_.L_402c57
  %780 = add i64 %609, 5
  store i64 %780, i64* %3, align 8
  br label %block_.L_402cc9

block_.L_402cc9:                                  ; preds = %block_.L_402cc4, %block_.L_402c28
  %RAX.i9.pre-phi = phi i64* [ %RAX.i91, %block_.L_402cc4 ], [ %RAX.i198, %block_.L_402c28 ]
  %781 = phi i64 [ %573, %block_.L_402cc4 ], [ %244, %block_.L_402c28 ]
  %storemerge = phi i64 [ %780, %block_.L_402cc4 ], [ %492, %block_.L_402c28 ]
  %MEMORY.4 = phi %struct.Memory* [ %MEMORY.2, %block_.L_402cc4 ], [ %MEMORY.0, %block_.L_402c28 ]
  %782 = add i64 %781, -36
  %783 = add i64 %storemerge, 3
  store i64 %783, i64* %3, align 8
  %784 = inttoptr i64 %782 to i32*
  %785 = load i32, i32* %784, align 4
  %786 = zext i32 %785 to i64
  store i64 %786, i64* %RAX.i9.pre-phi, align 8
  %787 = add i64 %781, -4
  %788 = add i64 %storemerge, 6
  store i64 %788, i64* %3, align 8
  %789 = inttoptr i64 %787 to i32*
  store i32 %785, i32* %789, align 4
  %.pre21 = load i64, i64* %3, align 8
  br label %block_.L_402ccf

block_.L_402ccf:                                  ; preds = %block_.L_402cc9, %block_402b6e, %block_402b58
  %790 = phi i64 [ %.pre21, %block_.L_402cc9 ], [ %98, %block_402b6e ], [ %69, %block_402b58 ]
  %MEMORY.5 = phi %struct.Memory* [ %MEMORY.4, %block_.L_402cc9 ], [ %2, %block_402b6e ], [ %2, %block_402b58 ]
  %RAX.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %791 = load i64, i64* %RBP.i, align 8
  %792 = add i64 %791, -4
  %793 = add i64 %790, 3
  store i64 %793, i64* %3, align 8
  %794 = inttoptr i64 %792 to i32*
  %795 = load i32, i32* %794, align 4
  %796 = zext i32 %795 to i64
  store i64 %796, i64* %RAX.i, align 8
  %797 = add i64 %790, 4
  store i64 %797, i64* %3, align 8
  %798 = load i64, i64* %6, align 8
  %799 = add i64 %798, 8
  %800 = inttoptr i64 %798 to i64*
  %801 = load i64, i64* %800, align 8
  store i64 %801, i64* %RBP.i, align 8
  store i64 %799, i64* %6, align 8
  %802 = add i64 %790, 5
  store i64 %802, i64* %3, align 8
  %803 = inttoptr i64 %799 to i64*
  %804 = load i64, i64* %803, align 8
  store i64 %804, i64* %3, align 8
  %805 = add i64 %798, 16
  store i64 %805, i64* %6, align 8
  ret %struct.Memory* %MEMORY.5
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
define %struct.Memory* @routine_movl__edx__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -1
  %10 = icmp eq i32 %8, 0
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
define %struct.Memory* @routine_jge_.L_402b64(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0xffffffff__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 -1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_402ccf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_402b7a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %9 = add i32 %8, -1
  %10 = icmp eq i32 %8, 0
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
define %struct.Memory* @routine_je_.L_402c2d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
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
define %struct.Memory* @routine_cvtss2sd___rax____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast i64* %RAX to float**
  %5 = load float*, float** %4, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = load float, float* %5, align 4
  %9 = fpext float %8 to double
  %10 = bitcast %union.VectorReg* %3 to double*
  store double %9, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movaps_0x2f6__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 765
  %7 = add i64 %5, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %6 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = add i64 %5, 769
  %11 = inttoptr i64 %10 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = add i64 %5, 773
  %14 = inttoptr i64 %13 to i32*
  %15 = load i32, i32* %14, align 4
  %16 = add i64 %5, 777
  %17 = inttoptr i64 %16 to i32*
  %18 = load i32, i32* %17, align 4
  %19 = bitcast %union.VectorReg* %3 to i32*
  store i32 %9, i32* %19, align 1
  %20 = getelementptr inbounds i8, i8* %4, i64 4
  %21 = bitcast i8* %20 to i32*
  store i32 %12, i32* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %23 = bitcast i64* %22 to i32*
  store i32 %15, i32* %23, align 1
  %24 = getelementptr inbounds i8, i8* %4, i64 12
  %25 = bitcast i8* %24 to i32*
  store i32 %18, i32* %25, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_pand__xmm1___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = bitcast [32 x %union.VectorReg]* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = load i64, i64* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %12 = load i64, i64* %11, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %14 = load i64, i64* %13, align 1
  %15 = and i64 %12, %8
  %16 = and i64 %14, %10
  %17 = trunc i64 %15 to i32
  %18 = lshr i64 %15, 32
  %19 = trunc i64 %18 to i32
  %20 = bitcast [32 x %union.VectorReg]* %3 to i32*
  store i32 %17, i32* %20, align 1
  %21 = getelementptr inbounds i8, i8* %4, i64 4
  %22 = bitcast i8* %21 to i32*
  store i32 %19, i32* %22, align 1
  %23 = trunc i64 %16 to i32
  %24 = bitcast i64* %9 to i32*
  store i32 %23, i32* %24, align 1
  %25 = lshr i64 %16, 32
  %26 = trunc i64 %25 to i32
  %27 = getelementptr inbounds i8, i8* %4, i64 12
  %28 = bitcast i8* %27 to i32*
  store i32 %26, i32* %28, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsd2ss__xmm0___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to <2 x i32>*
  %8 = load <2 x i32>, <2 x i32>* %7, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to <2 x i32>*
  %11 = load <2 x i32>, <2 x i32>* %10, align 1
  %.cast = bitcast <2 x i32> %8 to double
  %12 = fptrunc double %.cast to float
  %13 = bitcast %union.VectorReg* %3 to float*
  store float %12, float* %13, align 1
  %14 = extractelement <2 x i32> %8, i32 1
  %15 = getelementptr inbounds i8, i8* %4, i64 4
  %16 = bitcast i8* %15 to i32*
  store i32 %14, i32* %16, align 1
  %17 = extractelement <2 x i32> %11, i32 0
  %18 = bitcast i64* %9 to i32*
  store i32 %17, i32* %18, align 1
  %19 = extractelement <2 x i32> %11, i32 1
  %20 = getelementptr inbounds i8, i8* %4, i64 12
  %21 = bitcast i8* %20 to i32*
  store i32 %19, i32* %21, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24
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
define %struct.Memory* @routine_movl_MINUS0x20__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
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
define %struct.Memory* @routine_addl_MINUS0x14__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -32
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
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
define %struct.Memory* @routine_cmpl_MINUS0x8__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
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
define %struct.Memory* @routine_jge_.L_402c28(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x20__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
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
define %struct.Memory* @routine_cvtss2sd___rax__rcx_4____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %10 = inttoptr i64 %7 to float*
  %11 = load float, float* %10, align 4
  %12 = fpext float %11 to double
  %13 = bitcast %union.VectorReg* %3 to double*
  store double %12, double* %13, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movaps_0x2b9__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 704
  %7 = add i64 %5, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %6 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = add i64 %5, 708
  %11 = inttoptr i64 %10 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = add i64 %5, 712
  %14 = inttoptr i64 %13 to i32*
  %15 = load i32, i32* %14, align 4
  %16 = add i64 %5, 716
  %17 = inttoptr i64 %16 to i32*
  %18 = load i32, i32* %17, align 4
  %19 = bitcast %union.VectorReg* %3 to i32*
  store i32 %9, i32* %19, align 1
  %20 = getelementptr inbounds i8, i8* %4, i64 4
  %21 = bitcast i8* %20 to i32*
  store i32 %12, i32* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %23 = bitcast i64* %22 to i32*
  store i32 %15, i32* %23, align 1
  %24 = getelementptr inbounds i8, i8* %4, i64 12
  %25 = bitcast i8* %24 to i32*
  store i32 %18, i32* %25, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd_MINUS0x18__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to float*
  %9 = load float, float* %8, align 4
  %10 = fpext float %9 to double
  %11 = bitcast %union.VectorReg* %3 to double*
  store double %10, double* %11, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_ucomisd__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast [32 x %union.VectorReg]* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast %union.VectorReg* %4 to double*
  %10 = load double, double* %9, align 1
  %11 = fcmp uno double %8, %10
  br i1 %11, label %12, label %22

; <label>:12:                                     ; preds = %block_400488
  %13 = fadd double %8, %10
  %14 = bitcast double %13 to i64
  %15 = and i64 %14, 9221120237041090560
  %16 = icmp eq i64 %15, 9218868437227405312
  %17 = and i64 %14, 2251799813685247
  %18 = icmp ne i64 %17, 0
  %19 = and i1 %16, %18
  br i1 %19, label %20, label %28

; <label>:20:                                     ; preds = %12
  %21 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %6, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

; <label>:22:                                     ; preds = %block_400488
  %23 = fcmp ogt double %8, %10
  br i1 %23, label %28, label %24

; <label>:24:                                     ; preds = %22
  %25 = fcmp olt double %8, %10
  br i1 %25, label %28, label %26

; <label>:26:                                     ; preds = %24
  %27 = fcmp oeq double %8, %10
  br i1 %27, label %28, label %35

; <label>:28:                                     ; preds = %26, %24, %22, %12
  %29 = phi i8 [ 0, %22 ], [ 0, %24 ], [ 1, %26 ], [ 1, %12 ]
  %30 = phi i8 [ 0, %22 ], [ 0, %24 ], [ 0, %26 ], [ 1, %12 ]
  %31 = phi i8 [ 0, %22 ], [ 1, %24 ], [ 0, %26 ], [ 1, %12 ]
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %32, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %30, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %31, i8* %34, align 1
  br label %35

; <label>:35:                                     ; preds = %28, %26
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %36, align 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %37, align 1
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %38, align 1
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit: ; preds = %35, %20
  %39 = phi %struct.Memory* [ %21, %20 ], [ %2, %35 ]
  ret %struct.Memory* %39
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jbe_.L_402c11(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cvtss2sd___rcx__rdx_4____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 5
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to float*
  %11 = load float, float* %10, align 4
  %12 = fpext float %11 to double
  %13 = bitcast %union.VectorReg* %3 to double*
  store double %12, double* %13, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movaps_0x28c__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 659
  %7 = add i64 %5, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %6 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = add i64 %5, 663
  %11 = inttoptr i64 %10 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = add i64 %5, 667
  %14 = inttoptr i64 %13 to i32*
  %15 = load i32, i32* %14, align 4
  %16 = add i64 %5, 671
  %17 = inttoptr i64 %16 to i32*
  %18 = load i32, i32* %17, align 4
  %19 = bitcast %union.VectorReg* %3 to i32*
  store i32 %9, i32* %19, align 1
  %20 = getelementptr inbounds i8, i8* %4, i64 4
  %21 = bitcast i8* %20 to i32*
  store i32 %12, i32* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %23 = bitcast i64* %22 to i32*
  store i32 %15, i32* %23, align 1
  %24 = getelementptr inbounds i8, i8* %4, i64 12
  %25 = bitcast i8* %24 to i32*
  store i32 %18, i32* %25, align 1
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
define %struct.Memory* @routine_jmpq_.L_402bb7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_402cc9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_movaps_0x24d__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 596
  %7 = add i64 %5, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %6 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = add i64 %5, 600
  %11 = inttoptr i64 %10 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = add i64 %5, 604
  %14 = inttoptr i64 %13 to i32*
  %15 = load i32, i32* %14, align 4
  %16 = add i64 %5, 608
  %17 = inttoptr i64 %16 to i32*
  %18 = load i32, i32* %17, align 4
  %19 = bitcast %union.VectorReg* %3 to i32*
  store i32 %9, i32* %19, align 1
  %20 = getelementptr inbounds i8, i8* %4, i64 4
  %21 = bitcast i8* %20 to i32*
  store i32 %12, i32* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %23 = bitcast i64* %22 to i32*
  store i32 %15, i32* %23, align 1
  %24 = getelementptr inbounds i8, i8* %4, i64 12
  %25 = bitcast i8* %24 to i32*
  store i32 %18, i32* %25, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_402cc4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movaps_0x219__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 544
  %7 = add i64 %5, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %6 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = add i64 %5, 548
  %11 = inttoptr i64 %10 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = add i64 %5, 552
  %14 = inttoptr i64 %13 to i32*
  %15 = load i32, i32* %14, align 4
  %16 = add i64 %5, 556
  %17 = inttoptr i64 %16 to i32*
  %18 = load i32, i32* %17, align 4
  %19 = bitcast %union.VectorReg* %3 to i32*
  store i32 %9, i32* %19, align 1
  %20 = getelementptr inbounds i8, i8* %4, i64 4
  %21 = bitcast i8* %20 to i32*
  store i32 %12, i32* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %23 = bitcast i64* %22 to i32*
  store i32 %15, i32* %23, align 1
  %24 = getelementptr inbounds i8, i8* %4, i64 12
  %25 = bitcast i8* %24 to i32*
  store i32 %18, i32* %25, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jbe_.L_402cb1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movaps_0x1ec__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 499
  %7 = add i64 %5, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %6 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = add i64 %5, 503
  %11 = inttoptr i64 %10 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = add i64 %5, 507
  %14 = inttoptr i64 %13 to i32*
  %15 = load i32, i32* %14, align 4
  %16 = add i64 %5, 511
  %17 = inttoptr i64 %16 to i32*
  %18 = load i32, i32* %17, align 4
  %19 = bitcast %union.VectorReg* %3 to i32*
  store i32 %9, i32* %19, align 1
  %20 = getelementptr inbounds i8, i8* %4, i64 4
  %21 = bitcast i8* %20 to i32*
  store i32 %12, i32* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %23 = bitcast i64* %22 to i32*
  store i32 %15, i32* %23, align 1
  %24 = getelementptr inbounds i8, i8* %4, i64 12
  %25 = bitcast i8* %24 to i32*
  store i32 %18, i32* %25, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_402cb6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_402c57(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_movl__eax__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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
