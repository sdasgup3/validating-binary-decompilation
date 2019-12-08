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
define %struct.Memory* @_ZN9benchmark7sift_inIPddEEvlT_lT0_(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  store i64 %8, i64* %6, align 8
  %10 = load i64, i64* %PC.i, align 8
  store i64 %8, i64* %RBP.i, align 8
  %RDI.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %11 = add i64 %7, -16
  %12 = load i64, i64* %RDI.i, align 8
  %13 = add i64 %10, 7
  store i64 %13, i64* %PC.i, align 8
  %14 = inttoptr i64 %11 to i64*
  store i64 %12, i64* %14, align 8
  %RSI.i106 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %15 = load i64, i64* %RBP.i, align 8
  %16 = add i64 %15, -16
  %17 = load i64, i64* %RSI.i106, align 8
  %18 = load i64, i64* %PC.i, align 8
  %19 = add i64 %18, 4
  store i64 %19, i64* %PC.i, align 8
  %20 = inttoptr i64 %16 to i64*
  store i64 %17, i64* %20, align 8
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %RDX.i213 = getelementptr inbounds %union.anon, %union.anon* %21, i64 0, i32 0
  %22 = load i64, i64* %RBP.i, align 8
  %23 = add i64 %22, -24
  %24 = load i64, i64* %RDX.i213, align 8
  %25 = load i64, i64* %PC.i, align 8
  %26 = add i64 %25, 4
  store i64 %26, i64* %PC.i, align 8
  %27 = inttoptr i64 %23 to i64*
  store i64 %24, i64* %27, align 8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %29 = load i64, i64* %RBP.i, align 8
  %30 = add i64 %29, -32
  %31 = load i64, i64* %PC.i, align 8
  %32 = add i64 %31, 5
  store i64 %32, i64* %PC.i, align 8
  %33 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %28, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %34 = load i64, i64* %33, align 1
  %35 = inttoptr i64 %30 to i64*
  store i64 %34, i64* %35, align 8
  %36 = load i64, i64* %RBP.i, align 8
  %37 = add i64 %36, -24
  %38 = load i64, i64* %PC.i, align 8
  %39 = add i64 %38, 4
  store i64 %39, i64* %PC.i, align 8
  %40 = inttoptr i64 %37 to i64*
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %RDX.i213, align 8
  %42 = add i64 %36, -48
  %43 = add i64 %38, 8
  store i64 %43, i64* %PC.i, align 8
  %44 = inttoptr i64 %42 to i64*
  store i64 %41, i64* %44, align 8
  %45 = load i64, i64* %RBP.i, align 8
  %46 = add i64 %45, -48
  %47 = load i64, i64* %PC.i, align 8
  %48 = add i64 %47, 4
  store i64 %48, i64* %PC.i, align 8
  %49 = inttoptr i64 %46 to i64*
  %50 = load i64, i64* %49, align 8
  %51 = add i64 %50, 1
  %52 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %53 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %54 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %57 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %58 = shl i64 %51, 1
  %59 = icmp slt i64 %51, 0
  %60 = icmp slt i64 %58, 0
  %61 = xor i1 %59, %60
  store i64 %58, i64* %RDX.i213, align 8
  %.lobit = lshr i64 %51, 63
  %62 = trunc i64 %.lobit to i8
  store i8 %62, i8* %52, align 1
  %63 = trunc i64 %58 to i32
  %64 = and i32 %63, 254
  %65 = tail call i32 @llvm.ctpop.i32(i32 %64)
  %66 = trunc i32 %65 to i8
  %67 = and i8 %66, 1
  %68 = xor i8 %67, 1
  store i8 %68, i8* %53, align 1
  store i8 0, i8* %54, align 1
  %69 = icmp eq i64 %58, 0
  %70 = zext i1 %69 to i8
  store i8 %70, i8* %55, align 1
  %71 = lshr i64 %51, 62
  %72 = trunc i64 %71 to i8
  %73 = and i8 %72, 1
  store i8 %73, i8* %56, align 1
  %74 = zext i1 %61 to i8
  store i8 %74, i8* %57, align 1
  %75 = add i64 %45, -40
  %76 = add i64 %47, 15
  store i64 %76, i64* %PC.i, align 8
  %77 = inttoptr i64 %75 to i64*
  store i64 %58, i64* %77, align 8
  %78 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i242 = getelementptr inbounds %union.anon, %union.anon* %78, i64 0, i32 0
  %79 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i232 = getelementptr inbounds %union.anon, %union.anon* %79, i64 0, i32 0
  %80 = bitcast [32 x %union.VectorReg]* %28 to double*
  %81 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %82 = bitcast i64* %81 to double*
  %83 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %84 = bitcast %union.VectorReg* %83 to double*
  %85 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %86 = bitcast i64* %85 to double*
  %.pre = load i64, i64* %PC.i, align 8
  br label %block_.L_404c7d

block_.L_404c7d:                                  ; preds = %block_.L_404cbf, %entry
  %87 = phi i64 [ %.pre, %entry ], [ %345, %block_.L_404cbf ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %entry ], [ %195, %block_.L_404cbf ]
  %88 = load i64, i64* %RBP.i, align 8
  %89 = add i64 %88, -40
  %90 = add i64 %87, 4
  store i64 %90, i64* %PC.i, align 8
  %91 = inttoptr i64 %89 to i64*
  %92 = load i64, i64* %91, align 8
  store i64 %92, i64* %RAX.i242, align 8
  %93 = add i64 %88, -8
  %94 = add i64 %87, 8
  store i64 %94, i64* %PC.i, align 8
  %95 = inttoptr i64 %93 to i64*
  %96 = load i64, i64* %95, align 8
  %97 = sub i64 %92, %96
  %98 = icmp ult i64 %92, %96
  %99 = zext i1 %98 to i8
  store i8 %99, i8* %52, align 1
  %100 = trunc i64 %97 to i32
  %101 = and i32 %100, 255
  %102 = tail call i32 @llvm.ctpop.i32(i32 %101)
  %103 = trunc i32 %102 to i8
  %104 = and i8 %103, 1
  %105 = xor i8 %104, 1
  store i8 %105, i8* %53, align 1
  %106 = xor i64 %96, %92
  %107 = xor i64 %106, %97
  %108 = lshr i64 %107, 4
  %109 = trunc i64 %108 to i8
  %110 = and i8 %109, 1
  store i8 %110, i8* %54, align 1
  %111 = icmp eq i64 %97, 0
  %112 = zext i1 %111 to i8
  store i8 %112, i8* %55, align 1
  %113 = lshr i64 %97, 63
  %114 = trunc i64 %113 to i8
  store i8 %114, i8* %56, align 1
  %115 = lshr i64 %92, 63
  %116 = lshr i64 %96, 63
  %117 = xor i64 %116, %115
  %118 = xor i64 %113, %115
  %119 = add nuw nsw i64 %118, %117
  %120 = icmp eq i64 %119, 2
  %121 = zext i1 %120 to i8
  store i8 %121, i8* %57, align 1
  %122 = icmp ne i8 %114, 0
  %123 = xor i1 %122, %120
  %.v = select i1 %123, i64 14, i64 125
  %124 = add i64 %87, %.v
  store i64 %124, i64* %3, align 8
  br i1 %123, label %block_404c8b, label %block_.L_404cfa

block_404c8b:                                     ; preds = %block_.L_404c7d
  %125 = add i64 %88, -16
  %126 = add i64 %124, 4
  store i64 %126, i64* %PC.i, align 8
  %127 = inttoptr i64 %125 to i64*
  %128 = load i64, i64* %127, align 8
  store i64 %128, i64* %RAX.i242, align 8
  %129 = add i64 %124, 8
  store i64 %129, i64* %PC.i, align 8
  %130 = load i64, i64* %91, align 8
  %131 = add i64 %130, -1
  store i64 %131, i64* %RCX.i232, align 8
  %132 = icmp eq i64 %130, 0
  %133 = zext i1 %132 to i8
  store i8 %133, i8* %52, align 1
  %134 = trunc i64 %131 to i32
  %135 = and i32 %134, 255
  %136 = tail call i32 @llvm.ctpop.i32(i32 %135)
  %137 = trunc i32 %136 to i8
  %138 = and i8 %137, 1
  %139 = xor i8 %138, 1
  store i8 %139, i8* %53, align 1
  %140 = xor i64 %130, %131
  %141 = lshr i64 %140, 4
  %142 = trunc i64 %141 to i8
  %143 = and i8 %142, 1
  store i8 %143, i8* %54, align 1
  %144 = icmp eq i64 %131, 0
  %145 = zext i1 %144 to i8
  store i8 %145, i8* %55, align 1
  %146 = lshr i64 %131, 63
  %147 = trunc i64 %146 to i8
  store i8 %147, i8* %56, align 1
  %148 = lshr i64 %130, 63
  %149 = xor i64 %146, %148
  %150 = add nuw nsw i64 %149, %148
  %151 = icmp eq i64 %150, 2
  %152 = zext i1 %151 to i8
  store i8 %152, i8* %57, align 1
  %153 = shl i64 %131, 3
  %154 = add i64 %153, %128
  %155 = add i64 %124, 17
  store i64 %155, i64* %PC.i, align 8
  %156 = inttoptr i64 %154 to double*
  %157 = load double, double* %156, align 8
  store double %157, double* %80, align 1
  store double 0.000000e+00, double* %82, align 1
  %158 = add i64 %124, 21
  store i64 %158, i64* %PC.i, align 8
  %159 = load i64, i64* %127, align 8
  store i64 %159, i64* %RAX.i242, align 8
  %160 = add i64 %124, 25
  store i64 %160, i64* %PC.i, align 8
  %161 = load i64, i64* %91, align 8
  store i64 %161, i64* %RCX.i232, align 8
  %162 = shl i64 %161, 3
  %163 = add i64 %162, %159
  %164 = add i64 %124, 30
  store i64 %164, i64* %PC.i, align 8
  %165 = inttoptr i64 %163 to double*
  %166 = load double, double* %165, align 8
  store double %166, double* %84, align 1
  store double 0.000000e+00, double* %86, align 1
  %167 = add i64 %124, 34
  store i64 %167, i64* %PC.i, align 8
  %168 = fcmp uno double %166, %157
  br i1 %168, label %169, label %179

; <label>:169:                                    ; preds = %block_404c8b
  %170 = fadd double %166, %157
  %171 = bitcast double %170 to i64
  %172 = and i64 %171, 9221120237041090560
  %173 = icmp eq i64 %172, 9218868437227405312
  %174 = and i64 %171, 2251799813685247
  %175 = icmp ne i64 %174, 0
  %176 = and i1 %173, %175
  br i1 %176, label %177, label %185

; <label>:177:                                    ; preds = %169
  %178 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %167, %struct.Memory* %MEMORY.0)
  %.pre1 = load i64, i64* %PC.i, align 8
  %.pre2 = load i8, i8* %52, align 1
  %.pre3 = load i8, i8* %55, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit211

; <label>:179:                                    ; preds = %block_404c8b
  %180 = fcmp ogt double %166, %157
  br i1 %180, label %185, label %181

; <label>:181:                                    ; preds = %179
  %182 = fcmp olt double %166, %157
  br i1 %182, label %185, label %183

; <label>:183:                                    ; preds = %181
  %184 = fcmp oeq double %166, %157
  br i1 %184, label %185, label %189

; <label>:185:                                    ; preds = %183, %181, %179, %169
  %186 = phi i8 [ 0, %179 ], [ 0, %181 ], [ 1, %183 ], [ 1, %169 ]
  %187 = phi i8 [ 0, %179 ], [ 0, %181 ], [ 0, %183 ], [ 1, %169 ]
  %188 = phi i8 [ 0, %179 ], [ 1, %181 ], [ 0, %183 ], [ 1, %169 ]
  store i8 %186, i8* %55, align 1
  store i8 %187, i8* %53, align 1
  store i8 %188, i8* %52, align 1
  br label %189

; <label>:189:                                    ; preds = %185, %183
  %190 = phi i8 [ %186, %185 ], [ %145, %183 ]
  %191 = phi i8 [ %188, %185 ], [ %133, %183 ]
  store i8 0, i8* %57, align 1
  store i8 0, i8* %56, align 1
  store i8 0, i8* %54, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit211

routine_ucomisd__xmm0___xmm1.exit211:             ; preds = %189, %177
  %192 = phi i8 [ %.pre3, %177 ], [ %190, %189 ]
  %193 = phi i8 [ %.pre2, %177 ], [ %191, %189 ]
  %194 = phi i64 [ %.pre1, %177 ], [ %167, %189 ]
  %195 = phi %struct.Memory* [ %178, %177 ], [ %MEMORY.0, %189 ]
  %196 = or i8 %192, %193
  %197 = icmp ne i8 %196, 0
  %.v18 = select i1 %197, i64 18, i64 6
  %198 = add i64 %194, %.v18
  store i64 %198, i64* %3, align 8
  br i1 %197, label %block_.L_404cbf, label %block_404cb3

block_404cb3:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit211
  %199 = load i64, i64* %RBP.i, align 8
  %200 = add i64 %199, -40
  %201 = add i64 %198, 4
  store i64 %201, i64* %PC.i, align 8
  %202 = inttoptr i64 %200 to i64*
  %203 = load i64, i64* %202, align 8
  %204 = add i64 %203, 1
  store i64 %204, i64* %RAX.i242, align 8
  %205 = icmp eq i64 %203, -1
  %206 = icmp eq i64 %204, 0
  %207 = or i1 %205, %206
  %208 = zext i1 %207 to i8
  store i8 %208, i8* %52, align 1
  %209 = trunc i64 %204 to i32
  %210 = and i32 %209, 255
  %211 = tail call i32 @llvm.ctpop.i32(i32 %210)
  %212 = trunc i32 %211 to i8
  %213 = and i8 %212, 1
  %214 = xor i8 %213, 1
  store i8 %214, i8* %53, align 1
  %215 = xor i64 %203, %204
  %216 = lshr i64 %215, 4
  %217 = trunc i64 %216 to i8
  %218 = and i8 %217, 1
  store i8 %218, i8* %54, align 1
  %219 = icmp eq i64 %204, 0
  %220 = zext i1 %219 to i8
  store i8 %220, i8* %55, align 1
  %221 = lshr i64 %204, 63
  %222 = trunc i64 %221 to i8
  store i8 %222, i8* %56, align 1
  %223 = lshr i64 %203, 63
  %224 = xor i64 %221, %223
  %225 = add nuw nsw i64 %224, %221
  %226 = icmp eq i64 %225, 2
  %227 = zext i1 %226 to i8
  store i8 %227, i8* %57, align 1
  %228 = add i64 %198, 12
  store i64 %228, i64* %PC.i, align 8
  store i64 %204, i64* %202, align 8
  %.pre4 = load i64, i64* %PC.i, align 8
  br label %block_.L_404cbf

block_.L_404cbf:                                  ; preds = %block_404cb3, %routine_ucomisd__xmm0___xmm1.exit211
  %229 = phi i64 [ %.pre4, %block_404cb3 ], [ %198, %routine_ucomisd__xmm0___xmm1.exit211 ]
  %230 = load i64, i64* %RBP.i, align 8
  %231 = add i64 %230, -16
  %232 = add i64 %229, 4
  store i64 %232, i64* %PC.i, align 8
  %233 = inttoptr i64 %231 to i64*
  %234 = load i64, i64* %233, align 8
  store i64 %234, i64* %RAX.i242, align 8
  %235 = add i64 %230, -40
  %236 = add i64 %229, 8
  store i64 %236, i64* %PC.i, align 8
  %237 = inttoptr i64 %235 to i64*
  %238 = load i64, i64* %237, align 8
  %239 = add i64 %238, -1
  store i64 %239, i64* %RCX.i232, align 8
  %240 = icmp eq i64 %238, 0
  %241 = zext i1 %240 to i8
  store i8 %241, i8* %52, align 1
  %242 = trunc i64 %239 to i32
  %243 = and i32 %242, 255
  %244 = tail call i32 @llvm.ctpop.i32(i32 %243)
  %245 = trunc i32 %244 to i8
  %246 = and i8 %245, 1
  %247 = xor i8 %246, 1
  store i8 %247, i8* %53, align 1
  %248 = xor i64 %238, %239
  %249 = lshr i64 %248, 4
  %250 = trunc i64 %249 to i8
  %251 = and i8 %250, 1
  store i8 %251, i8* %54, align 1
  %252 = icmp eq i64 %239, 0
  %253 = zext i1 %252 to i8
  store i8 %253, i8* %55, align 1
  %254 = lshr i64 %239, 63
  %255 = trunc i64 %254 to i8
  store i8 %255, i8* %56, align 1
  %256 = lshr i64 %238, 63
  %257 = xor i64 %254, %256
  %258 = add nuw nsw i64 %257, %256
  %259 = icmp eq i64 %258, 2
  %260 = zext i1 %259 to i8
  store i8 %260, i8* %57, align 1
  %261 = shl i64 %239, 3
  %262 = add i64 %261, %234
  %263 = add i64 %229, 17
  store i64 %263, i64* %PC.i, align 8
  %264 = inttoptr i64 %262 to i64*
  %265 = load i64, i64* %264, align 8
  %266 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %28, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %265, i64* %266, align 1
  store double 0.000000e+00, double* %82, align 1
  %267 = add i64 %229, 21
  store i64 %267, i64* %PC.i, align 8
  %268 = load i64, i64* %233, align 8
  store i64 %268, i64* %RAX.i242, align 8
  %269 = add i64 %230, -48
  %270 = add i64 %229, 25
  store i64 %270, i64* %PC.i, align 8
  %271 = inttoptr i64 %269 to i64*
  %272 = load i64, i64* %271, align 8
  store i64 %272, i64* %RCX.i232, align 8
  %273 = shl i64 %272, 3
  %274 = add i64 %273, %268
  %275 = add i64 %229, 30
  store i64 %275, i64* %PC.i, align 8
  %276 = inttoptr i64 %274 to i64*
  store i64 %265, i64* %276, align 8
  %277 = load i64, i64* %RBP.i, align 8
  %278 = add i64 %277, -40
  %279 = load i64, i64* %PC.i, align 8
  %280 = add i64 %279, 4
  store i64 %280, i64* %PC.i, align 8
  %281 = inttoptr i64 %278 to i64*
  %282 = load i64, i64* %281, align 8
  %283 = add i64 %282, -1
  store i64 %283, i64* %RAX.i242, align 8
  %284 = icmp eq i64 %282, 0
  %285 = zext i1 %284 to i8
  store i8 %285, i8* %52, align 1
  %286 = trunc i64 %283 to i32
  %287 = and i32 %286, 255
  %288 = tail call i32 @llvm.ctpop.i32(i32 %287)
  %289 = trunc i32 %288 to i8
  %290 = and i8 %289, 1
  %291 = xor i8 %290, 1
  store i8 %291, i8* %53, align 1
  %292 = xor i64 %282, %283
  %293 = lshr i64 %292, 4
  %294 = trunc i64 %293 to i8
  %295 = and i8 %294, 1
  store i8 %295, i8* %54, align 1
  %296 = icmp eq i64 %283, 0
  %297 = zext i1 %296 to i8
  store i8 %297, i8* %55, align 1
  %298 = lshr i64 %283, 63
  %299 = trunc i64 %298 to i8
  store i8 %299, i8* %56, align 1
  %300 = lshr i64 %282, 63
  %301 = xor i64 %298, %300
  %302 = add nuw nsw i64 %301, %300
  %303 = icmp eq i64 %302, 2
  %304 = zext i1 %303 to i8
  store i8 %304, i8* %57, align 1
  %305 = add i64 %277, -48
  %306 = add i64 %279, 12
  store i64 %306, i64* %PC.i, align 8
  %307 = inttoptr i64 %305 to i64*
  store i64 %283, i64* %307, align 8
  %308 = load i64, i64* %RBP.i, align 8
  %309 = add i64 %308, -40
  %310 = load i64, i64* %PC.i, align 8
  %311 = add i64 %310, 4
  store i64 %311, i64* %PC.i, align 8
  %312 = inttoptr i64 %309 to i64*
  %313 = load i64, i64* %312, align 8
  store i64 %313, i64* %RAX.i242, align 8
  %314 = add i64 %310, 8
  store i64 %314, i64* %PC.i, align 8
  %315 = load i64, i64* %312, align 8
  %316 = add i64 %315, %313
  store i64 %316, i64* %RAX.i242, align 8
  %317 = icmp ult i64 %316, %313
  %318 = icmp ult i64 %316, %315
  %319 = or i1 %317, %318
  %320 = zext i1 %319 to i8
  store i8 %320, i8* %52, align 1
  %321 = trunc i64 %316 to i32
  %322 = and i32 %321, 255
  %323 = tail call i32 @llvm.ctpop.i32(i32 %322)
  %324 = trunc i32 %323 to i8
  %325 = and i8 %324, 1
  %326 = xor i8 %325, 1
  store i8 %326, i8* %53, align 1
  %327 = xor i64 %315, %313
  %328 = xor i64 %327, %316
  %329 = lshr i64 %328, 4
  %330 = trunc i64 %329 to i8
  %331 = and i8 %330, 1
  store i8 %331, i8* %54, align 1
  %332 = icmp eq i64 %316, 0
  %333 = zext i1 %332 to i8
  store i8 %333, i8* %55, align 1
  %334 = lshr i64 %316, 63
  %335 = trunc i64 %334 to i8
  store i8 %335, i8* %56, align 1
  %336 = lshr i64 %313, 63
  %337 = lshr i64 %315, 63
  %338 = xor i64 %334, %336
  %339 = xor i64 %334, %337
  %340 = add nuw nsw i64 %338, %339
  %341 = icmp eq i64 %340, 2
  %342 = zext i1 %341 to i8
  store i8 %342, i8* %57, align 1
  %343 = add i64 %310, 12
  store i64 %343, i64* %PC.i, align 8
  store i64 %316, i64* %312, align 8
  %344 = load i64, i64* %PC.i, align 8
  %345 = add i64 %344, -120
  store i64 %345, i64* %3, align 8
  br label %block_.L_404c7d

block_.L_404cfa:                                  ; preds = %block_.L_404c7d
  %346 = add i64 %124, 4
  store i64 %346, i64* %PC.i, align 8
  %347 = load i64, i64* %91, align 8
  store i64 %347, i64* %RAX.i242, align 8
  %348 = add i64 %124, 8
  store i64 %348, i64* %PC.i, align 8
  %349 = load i64, i64* %95, align 8
  %350 = sub i64 %347, %349
  %351 = icmp ult i64 %347, %349
  %352 = zext i1 %351 to i8
  store i8 %352, i8* %52, align 1
  %353 = trunc i64 %350 to i32
  %354 = and i32 %353, 255
  %355 = tail call i32 @llvm.ctpop.i32(i32 %354)
  %356 = trunc i32 %355 to i8
  %357 = and i8 %356, 1
  %358 = xor i8 %357, 1
  store i8 %358, i8* %53, align 1
  %359 = xor i64 %349, %347
  %360 = xor i64 %359, %350
  %361 = lshr i64 %360, 4
  %362 = trunc i64 %361 to i8
  %363 = and i8 %362, 1
  store i8 %363, i8* %54, align 1
  %364 = icmp eq i64 %350, 0
  %365 = zext i1 %364 to i8
  store i8 %365, i8* %55, align 1
  %366 = lshr i64 %350, 63
  %367 = trunc i64 %366 to i8
  store i8 %367, i8* %56, align 1
  %368 = lshr i64 %347, 63
  %369 = lshr i64 %349, 63
  %370 = xor i64 %369, %368
  %371 = xor i64 %366, %368
  %372 = add nuw nsw i64 %371, %370
  %373 = icmp eq i64 %372, 2
  %374 = zext i1 %373 to i8
  store i8 %374, i8* %57, align 1
  %.v19 = select i1 %364, i64 14, i64 56
  %375 = add i64 %124, %.v19
  store i64 %375, i64* %3, align 8
  br i1 %364, label %block_404d08, label %block_.L_404d32

block_404d08:                                     ; preds = %block_.L_404cfa
  %376 = add i64 %88, -16
  %377 = add i64 %375, 4
  store i64 %377, i64* %PC.i, align 8
  %378 = inttoptr i64 %376 to i64*
  %379 = load i64, i64* %378, align 8
  store i64 %379, i64* %RAX.i242, align 8
  %380 = add i64 %375, 8
  store i64 %380, i64* %PC.i, align 8
  %381 = load i64, i64* %91, align 8
  %382 = add i64 %381, -1
  store i64 %382, i64* %RCX.i232, align 8
  %383 = icmp eq i64 %381, 0
  %384 = zext i1 %383 to i8
  store i8 %384, i8* %52, align 1
  %385 = trunc i64 %382 to i32
  %386 = and i32 %385, 255
  %387 = tail call i32 @llvm.ctpop.i32(i32 %386)
  %388 = trunc i32 %387 to i8
  %389 = and i8 %388, 1
  %390 = xor i8 %389, 1
  store i8 %390, i8* %53, align 1
  %391 = xor i64 %381, %382
  %392 = lshr i64 %391, 4
  %393 = trunc i64 %392 to i8
  %394 = and i8 %393, 1
  store i8 %394, i8* %54, align 1
  %395 = icmp eq i64 %382, 0
  %396 = zext i1 %395 to i8
  store i8 %396, i8* %55, align 1
  %397 = lshr i64 %382, 63
  %398 = trunc i64 %397 to i8
  store i8 %398, i8* %56, align 1
  %399 = lshr i64 %381, 63
  %400 = xor i64 %397, %399
  %401 = add nuw nsw i64 %400, %399
  %402 = icmp eq i64 %401, 2
  %403 = zext i1 %402 to i8
  store i8 %403, i8* %57, align 1
  %404 = shl i64 %382, 3
  %405 = add i64 %404, %379
  %406 = add i64 %375, 17
  store i64 %406, i64* %PC.i, align 8
  %407 = inttoptr i64 %405 to i64*
  %408 = load i64, i64* %407, align 8
  %409 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %28, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %408, i64* %409, align 1
  store double 0.000000e+00, double* %82, align 1
  %410 = add i64 %375, 21
  store i64 %410, i64* %PC.i, align 8
  %411 = load i64, i64* %378, align 8
  store i64 %411, i64* %RAX.i242, align 8
  %412 = add i64 %88, -48
  %413 = add i64 %375, 25
  store i64 %413, i64* %PC.i, align 8
  %414 = inttoptr i64 %412 to i64*
  %415 = load i64, i64* %414, align 8
  store i64 %415, i64* %RCX.i232, align 8
  %416 = shl i64 %415, 3
  %417 = add i64 %416, %411
  %418 = add i64 %375, 30
  store i64 %418, i64* %PC.i, align 8
  %419 = inttoptr i64 %417 to i64*
  store i64 %408, i64* %419, align 8
  %420 = load i64, i64* %RBP.i, align 8
  %421 = add i64 %420, -40
  %422 = load i64, i64* %PC.i, align 8
  %423 = add i64 %422, 4
  store i64 %423, i64* %PC.i, align 8
  %424 = inttoptr i64 %421 to i64*
  %425 = load i64, i64* %424, align 8
  %426 = add i64 %425, -1
  store i64 %426, i64* %RAX.i242, align 8
  %427 = icmp eq i64 %425, 0
  %428 = zext i1 %427 to i8
  store i8 %428, i8* %52, align 1
  %429 = trunc i64 %426 to i32
  %430 = and i32 %429, 255
  %431 = tail call i32 @llvm.ctpop.i32(i32 %430)
  %432 = trunc i32 %431 to i8
  %433 = and i8 %432, 1
  %434 = xor i8 %433, 1
  store i8 %434, i8* %53, align 1
  %435 = xor i64 %425, %426
  %436 = lshr i64 %435, 4
  %437 = trunc i64 %436 to i8
  %438 = and i8 %437, 1
  store i8 %438, i8* %54, align 1
  %439 = icmp eq i64 %426, 0
  %440 = zext i1 %439 to i8
  store i8 %440, i8* %55, align 1
  %441 = lshr i64 %426, 63
  %442 = trunc i64 %441 to i8
  store i8 %442, i8* %56, align 1
  %443 = lshr i64 %425, 63
  %444 = xor i64 %441, %443
  %445 = add nuw nsw i64 %444, %443
  %446 = icmp eq i64 %445, 2
  %447 = zext i1 %446 to i8
  store i8 %447, i8* %57, align 1
  %448 = add i64 %420, -48
  %449 = add i64 %422, 12
  store i64 %449, i64* %PC.i, align 8
  %450 = inttoptr i64 %448 to i64*
  store i64 %426, i64* %450, align 8
  %.pre5 = load i64, i64* %PC.i, align 8
  %.pre6 = load i64, i64* %RBP.i, align 8
  br label %block_.L_404d32

block_.L_404d32:                                  ; preds = %block_.L_404cfa, %block_404d08
  %451 = phi i64 [ %.pre6, %block_404d08 ], [ %88, %block_.L_404cfa ]
  %452 = phi i64 [ %.pre5, %block_404d08 ], [ %375, %block_.L_404cfa ]
  store i64 2, i64* %RAX.i242, align 8
  store i64 2, i64* %RCX.i232, align 8
  %453 = add i64 %451, -48
  %454 = add i64 %452, 11
  store i64 %454, i64* %PC.i, align 8
  %455 = inttoptr i64 %453 to i64*
  %456 = load i64, i64* %455, align 8
  %457 = add i64 %456, -1
  %458 = icmp eq i64 %456, 0
  %459 = zext i1 %458 to i8
  store i8 %459, i8* %52, align 1
  %460 = trunc i64 %457 to i32
  %461 = and i32 %460, 255
  %462 = tail call i32 @llvm.ctpop.i32(i32 %461)
  %463 = trunc i32 %462 to i8
  %464 = and i8 %463, 1
  %465 = xor i8 %464, 1
  store i8 %465, i8* %53, align 1
  %466 = xor i64 %456, %457
  %467 = lshr i64 %466, 4
  %468 = trunc i64 %467 to i8
  %469 = and i8 %468, 1
  store i8 %469, i8* %54, align 1
  %470 = icmp eq i64 %457, 0
  %471 = zext i1 %470 to i8
  store i8 %471, i8* %55, align 1
  %472 = lshr i64 %457, 63
  %473 = trunc i64 %472 to i8
  store i8 %473, i8* %56, align 1
  %474 = lshr i64 %456, 63
  %475 = xor i64 %472, %474
  %476 = add nuw nsw i64 %475, %474
  %477 = icmp eq i64 %476, 2
  %478 = zext i1 %477 to i8
  store i8 %478, i8* %57, align 1
  store i64 %457, i64* %RAX.i242, align 8
  %479 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %480 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %481 = ashr i64 %457, 63
  store i64 %481, i64* %479, align 8
  %482 = add i64 %452, 23
  store i64 %482, i64* %PC.i, align 8
  %483 = zext i64 %481 to i128
  %484 = shl nuw i128 %483, 64
  %485 = zext i64 %457 to i128
  %486 = or i128 %484, %485
  %487 = sdiv i128 %486, 2
  %488 = trunc i128 %487 to i64
  %489 = and i128 %487, 18446744073709551615
  %490 = sext i64 %488 to i128
  %491 = and i128 %490, -18446744073709551616
  %492 = or i128 %491, %489
  %493 = icmp eq i128 %487, %492
  br i1 %493, label %496, label %494

; <label>:494:                                    ; preds = %block_.L_404d32
  %495 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %482, %struct.Memory* %MEMORY.0)
  %.pre7 = load i64, i64* %RBP.i, align 8
  %.pre8 = load i64, i64* %RAX.i242, align 8
  %.pre9 = load i64, i64* %PC.i, align 8
  br label %routine_idivq__rcx.exit104

; <label>:496:                                    ; preds = %block_.L_404d32
  %497 = srem i128 %486, 2
  %498 = trunc i128 %497 to i64
  store i64 %488, i64* %480, align 8
  store i64 %498, i64* %479, align 8
  store i8 0, i8* %52, align 1
  store i8 0, i8* %53, align 1
  store i8 0, i8* %54, align 1
  store i8 0, i8* %55, align 1
  store i8 0, i8* %56, align 1
  store i8 0, i8* %57, align 1
  br label %routine_idivq__rcx.exit104

routine_idivq__rcx.exit104:                       ; preds = %496, %494
  %499 = phi i64 [ %.pre9, %494 ], [ %482, %496 ]
  %500 = phi i64 [ %.pre8, %494 ], [ %488, %496 ]
  %501 = phi i64 [ %.pre7, %494 ], [ %451, %496 ]
  %502 = phi %struct.Memory* [ %495, %494 ], [ %MEMORY.0, %496 ]
  %503 = add i64 %501, -40
  %504 = add i64 %499, 4
  store i64 %504, i64* %PC.i, align 8
  %505 = inttoptr i64 %503 to i64*
  store i64 %500, i64* %505, align 8
  %AL.i94 = bitcast %union.anon* %78 to i8*
  %CL.i95 = bitcast %union.anon* %79 to i8*
  %DL.i67 = bitcast %union.anon* %21 to i8*
  %.pre10 = load i64, i64* %PC.i, align 8
  br label %block_.L_404d4d

block_.L_404d4d:                                  ; preds = %routine_idivq__rcx.exit, %routine_idivq__rcx.exit104
  %506 = phi i64 [ %.pre10, %routine_idivq__rcx.exit104 ], [ %740, %routine_idivq__rcx.exit ]
  %MEMORY.3 = phi %struct.Memory* [ %502, %routine_idivq__rcx.exit104 ], [ %735, %routine_idivq__rcx.exit ]
  store i64 0, i64* %RAX.i242, align 8
  store i8 0, i8* %52, align 1
  store i8 1, i8* %53, align 1
  store i8 1, i8* %55, align 1
  store i8 0, i8* %56, align 1
  store i8 0, i8* %57, align 1
  store i8 0, i8* %54, align 1
  store i8 0, i8* %CL.i95, align 1
  %507 = load i64, i64* %RBP.i, align 8
  %508 = add i64 %507, -48
  %509 = add i64 %506, 8
  store i64 %509, i64* %PC.i, align 8
  %510 = inttoptr i64 %508 to i64*
  %511 = load i64, i64* %510, align 8
  store i64 %511, i64* %RDX.i213, align 8
  %512 = add i64 %507, -24
  %513 = add i64 %506, 12
  store i64 %513, i64* %PC.i, align 8
  %514 = inttoptr i64 %512 to i64*
  %515 = load i64, i64* %514, align 8
  %516 = sub i64 %511, %515
  %517 = icmp ult i64 %511, %515
  %518 = zext i1 %517 to i8
  store i8 %518, i8* %52, align 1
  %519 = trunc i64 %516 to i32
  %520 = and i32 %519, 255
  %521 = tail call i32 @llvm.ctpop.i32(i32 %520)
  %522 = trunc i32 %521 to i8
  %523 = and i8 %522, 1
  %524 = xor i8 %523, 1
  store i8 %524, i8* %53, align 1
  %525 = xor i64 %515, %511
  %526 = xor i64 %525, %516
  %527 = lshr i64 %526, 4
  %528 = trunc i64 %527 to i8
  %529 = and i8 %528, 1
  store i8 %529, i8* %54, align 1
  %530 = icmp eq i64 %516, 0
  %531 = zext i1 %530 to i8
  store i8 %531, i8* %55, align 1
  %532 = lshr i64 %516, 63
  %533 = trunc i64 %532 to i8
  store i8 %533, i8* %56, align 1
  %534 = lshr i64 %511, 63
  %535 = lshr i64 %515, 63
  %536 = xor i64 %535, %534
  %537 = xor i64 %532, %534
  %538 = add nuw nsw i64 %537, %536
  %539 = icmp eq i64 %538, 2
  %540 = zext i1 %539 to i8
  store i8 %540, i8* %57, align 1
  %541 = add i64 %507, -49
  %542 = add i64 %506, 15
  store i64 %542, i64* %PC.i, align 8
  %543 = inttoptr i64 %541 to i8*
  store i8 0, i8* %543, align 1
  %544 = load i64, i64* %PC.i, align 8
  %545 = load i8, i8* %55, align 1
  %546 = icmp ne i8 %545, 0
  %547 = load i8, i8* %56, align 1
  %548 = icmp ne i8 %547, 0
  %549 = load i8, i8* %57, align 1
  %550 = icmp ne i8 %549, 0
  %551 = xor i1 %548, %550
  %552 = or i1 %546, %551
  %.v20 = select i1 %552, i64 34, i64 6
  %553 = add i64 %544, %.v20
  store i64 %553, i64* %3, align 8
  br i1 %552, label %block_.L_404d7e, label %block_404d62

block_404d62:                                     ; preds = %block_.L_404d4d
  %554 = load i64, i64* %RBP.i, align 8
  %555 = add i64 %554, -16
  %556 = add i64 %553, 4
  store i64 %556, i64* %PC.i, align 8
  %557 = inttoptr i64 %555 to i64*
  %558 = load i64, i64* %557, align 8
  store i64 %558, i64* %RAX.i242, align 8
  %559 = add i64 %554, -40
  %560 = add i64 %553, 8
  store i64 %560, i64* %PC.i, align 8
  %561 = inttoptr i64 %559 to i64*
  %562 = load i64, i64* %561, align 8
  store i64 %562, i64* %RCX.i232, align 8
  %563 = shl i64 %562, 3
  %564 = add i64 %563, %558
  %565 = add i64 %553, 13
  store i64 %565, i64* %PC.i, align 8
  %566 = inttoptr i64 %564 to double*
  %567 = load double, double* %566, align 8
  store double %567, double* %80, align 1
  store double 0.000000e+00, double* %82, align 1
  %568 = add i64 %554, -32
  %569 = add i64 %553, 18
  store i64 %569, i64* %PC.i, align 8
  %570 = inttoptr i64 %568 to double*
  %571 = load double, double* %570, align 8
  store double %571, double* %84, align 1
  store double 0.000000e+00, double* %86, align 1
  %572 = add i64 %553, 22
  store i64 %572, i64* %PC.i, align 8
  %573 = fcmp uno double %571, %567
  br i1 %573, label %574, label %584

; <label>:574:                                    ; preds = %block_404d62
  %575 = fadd double %571, %567
  %576 = bitcast double %575 to i64
  %577 = and i64 %576, 9221120237041090560
  %578 = icmp eq i64 %577, 9218868437227405312
  %579 = and i64 %576, 2251799813685247
  %580 = icmp ne i64 %579, 0
  %581 = and i1 %578, %580
  br i1 %581, label %582, label %590

; <label>:582:                                    ; preds = %574
  %583 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %572, %struct.Memory* %MEMORY.3)
  %.pre11 = load i64, i64* %PC.i, align 8
  %.pre12 = load i8, i8* %55, align 1
  %.pre13 = load i64, i64* %RBP.i, align 8
  br label %routine_ucomisd__xmm0___xmm1.exit

; <label>:584:                                    ; preds = %block_404d62
  %585 = fcmp ogt double %571, %567
  br i1 %585, label %590, label %586

; <label>:586:                                    ; preds = %584
  %587 = fcmp olt double %571, %567
  br i1 %587, label %590, label %588

; <label>:588:                                    ; preds = %586
  %589 = fcmp oeq double %571, %567
  br i1 %589, label %590, label %594

; <label>:590:                                    ; preds = %588, %586, %584, %574
  %591 = phi i8 [ 0, %584 ], [ 0, %586 ], [ 1, %588 ], [ 1, %574 ]
  %592 = phi i8 [ 0, %584 ], [ 0, %586 ], [ 0, %588 ], [ 1, %574 ]
  %593 = phi i8 [ 0, %584 ], [ 1, %586 ], [ 0, %588 ], [ 1, %574 ]
  store i8 %591, i8* %55, align 1
  store i8 %592, i8* %53, align 1
  store i8 %593, i8* %52, align 1
  br label %594

; <label>:594:                                    ; preds = %590, %588
  %595 = phi i8 [ %591, %590 ], [ 0, %588 ]
  store i8 0, i8* %57, align 1
  store i8 0, i8* %56, align 1
  store i8 0, i8* %54, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit

routine_ucomisd__xmm0___xmm1.exit:                ; preds = %594, %582
  %596 = phi i64 [ %.pre13, %582 ], [ %554, %594 ]
  %597 = phi i8 [ %.pre12, %582 ], [ %595, %594 ]
  %598 = phi i64 [ %.pre11, %582 ], [ %572, %594 ]
  %599 = phi %struct.Memory* [ %583, %582 ], [ %MEMORY.3, %594 ]
  %600 = load i8, i8* %52, align 1
  %601 = or i8 %597, %600
  %602 = icmp eq i8 %601, 0
  %603 = zext i1 %602 to i8
  store i8 %603, i8* %DL.i67, align 1
  %604 = add i64 %596, -49
  %605 = add i64 %598, 6
  store i64 %605, i64* %PC.i, align 8
  %606 = inttoptr i64 %604 to i8*
  store i8 %603, i8* %606, align 1
  %.pre14 = load i64, i64* %PC.i, align 8
  br label %block_.L_404d7e

block_.L_404d7e:                                  ; preds = %routine_ucomisd__xmm0___xmm1.exit, %block_.L_404d4d
  %607 = phi i64 [ %553, %block_.L_404d4d ], [ %.pre14, %routine_ucomisd__xmm0___xmm1.exit ]
  %MEMORY.4 = phi %struct.Memory* [ %MEMORY.3, %block_.L_404d4d ], [ %599, %routine_ucomisd__xmm0___xmm1.exit ]
  %608 = load i64, i64* %RBP.i, align 8
  %609 = add i64 %608, -49
  %610 = add i64 %607, 3
  store i64 %610, i64* %PC.i, align 8
  %611 = inttoptr i64 %609 to i8*
  %612 = load i8, i8* %611, align 1
  store i8 %612, i8* %AL.i94, align 1
  %613 = and i8 %612, 1
  store i8 0, i8* %52, align 1
  %614 = zext i8 %613 to i32
  %615 = tail call i32 @llvm.ctpop.i32(i32 %614)
  %616 = trunc i32 %615 to i8
  %617 = xor i8 %616, 1
  store i8 %617, i8* %53, align 1
  %618 = xor i8 %613, 1
  store i8 %618, i8* %55, align 1
  store i8 0, i8* %56, align 1
  store i8 0, i8* %57, align 1
  store i8 0, i8* %54, align 1
  %619 = icmp eq i8 %618, 0
  %.v21 = select i1 %619, i64 16, i64 11
  %620 = add i64 %607, %.v21
  store i64 %620, i64* %3, align 8
  br i1 %619, label %block_.L_404d8e, label %block_404d89

block_404d89:                                     ; preds = %block_.L_404d7e
  %621 = add i64 %608, -32
  %622 = add i64 %620, 76
  store i64 %622, i64* %PC.i, align 8
  %623 = inttoptr i64 %621 to i64*
  %624 = load i64, i64* %623, align 8
  %625 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %28, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %624, i64* %625, align 1
  store double 0.000000e+00, double* %82, align 1
  %626 = add i64 %608, -16
  %627 = add i64 %620, 80
  store i64 %627, i64* %PC.i, align 8
  %628 = inttoptr i64 %626 to i64*
  %629 = load i64, i64* %628, align 8
  store i64 %629, i64* %RAX.i242, align 8
  %630 = add i64 %608, -48
  %631 = add i64 %620, 84
  store i64 %631, i64* %PC.i, align 8
  %632 = inttoptr i64 %630 to i64*
  %633 = load i64, i64* %632, align 8
  store i64 %633, i64* %RCX.i232, align 8
  %634 = shl i64 %633, 3
  %635 = add i64 %634, %629
  %636 = add i64 %620, 89
  store i64 %636, i64* %PC.i, align 8
  %637 = inttoptr i64 %635 to i64*
  store i64 %624, i64* %637, align 8
  %638 = load i64, i64* %PC.i, align 8
  %639 = add i64 %638, 1
  store i64 %639, i64* %PC.i, align 8
  %640 = load i64, i64* %6, align 8
  %641 = add i64 %640, 8
  %642 = inttoptr i64 %640 to i64*
  %643 = load i64, i64* %642, align 8
  store i64 %643, i64* %RBP.i, align 8
  store i64 %641, i64* %6, align 8
  %644 = add i64 %638, 2
  store i64 %644, i64* %PC.i, align 8
  %645 = inttoptr i64 %641 to i64*
  %646 = load i64, i64* %645, align 8
  store i64 %646, i64* %3, align 8
  %647 = add i64 %640, 16
  store i64 %647, i64* %6, align 8
  ret %struct.Memory* %MEMORY.4

block_.L_404d8e:                                  ; preds = %block_.L_404d7e
  store i64 2, i64* %RAX.i242, align 8
  store i64 2, i64* %RCX.i232, align 8
  %648 = add i64 %608, -16
  %649 = add i64 %620, 11
  store i64 %649, i64* %PC.i, align 8
  %650 = inttoptr i64 %648 to i64*
  %651 = load i64, i64* %650, align 8
  store i64 %651, i64* %RDX.i213, align 8
  %652 = add i64 %608, -40
  %653 = add i64 %620, 15
  store i64 %653, i64* %PC.i, align 8
  %654 = inttoptr i64 %652 to i64*
  %655 = load i64, i64* %654, align 8
  store i64 %655, i64* %RSI.i106, align 8
  %656 = shl i64 %655, 3
  %657 = add i64 %656, %651
  %658 = add i64 %620, 20
  store i64 %658, i64* %PC.i, align 8
  %659 = inttoptr i64 %657 to i64*
  %660 = load i64, i64* %659, align 8
  %661 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %28, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %660, i64* %661, align 1
  store double 0.000000e+00, double* %82, align 1
  %662 = add i64 %620, 24
  store i64 %662, i64* %PC.i, align 8
  %663 = load i64, i64* %650, align 8
  store i64 %663, i64* %RDX.i213, align 8
  %664 = add i64 %608, -48
  %665 = add i64 %620, 28
  store i64 %665, i64* %PC.i, align 8
  %666 = inttoptr i64 %664 to i64*
  %667 = load i64, i64* %666, align 8
  store i64 %667, i64* %RSI.i106, align 8
  %668 = shl i64 %667, 3
  %669 = add i64 %668, %663
  %670 = add i64 %620, 33
  store i64 %670, i64* %PC.i, align 8
  %671 = inttoptr i64 %669 to i64*
  store i64 %660, i64* %671, align 8
  %672 = load i64, i64* %RBP.i, align 8
  %673 = add i64 %672, -40
  %674 = load i64, i64* %PC.i, align 8
  %675 = add i64 %674, 4
  store i64 %675, i64* %PC.i, align 8
  %676 = inttoptr i64 %673 to i64*
  %677 = load i64, i64* %676, align 8
  store i64 %677, i64* %RDX.i213, align 8
  %678 = add i64 %672, -48
  %679 = add i64 %674, 8
  store i64 %679, i64* %PC.i, align 8
  %680 = inttoptr i64 %678 to i64*
  store i64 %677, i64* %680, align 8
  %681 = load i64, i64* %RBP.i, align 8
  %682 = add i64 %681, -48
  %683 = load i64, i64* %PC.i, align 8
  %684 = add i64 %683, 4
  store i64 %684, i64* %PC.i, align 8
  %685 = inttoptr i64 %682 to i64*
  %686 = load i64, i64* %685, align 8
  %687 = add i64 %686, -1
  %688 = icmp eq i64 %686, 0
  %689 = zext i1 %688 to i8
  store i8 %689, i8* %52, align 1
  %690 = trunc i64 %687 to i32
  %691 = and i32 %690, 255
  %692 = tail call i32 @llvm.ctpop.i32(i32 %691)
  %693 = trunc i32 %692 to i8
  %694 = and i8 %693, 1
  %695 = xor i8 %694, 1
  store i8 %695, i8* %53, align 1
  %696 = xor i64 %686, %687
  %697 = lshr i64 %696, 4
  %698 = trunc i64 %697 to i8
  %699 = and i8 %698, 1
  store i8 %699, i8* %54, align 1
  %700 = icmp eq i64 %687, 0
  %701 = zext i1 %700 to i8
  store i8 %701, i8* %55, align 1
  %702 = lshr i64 %687, 63
  %703 = trunc i64 %702 to i8
  store i8 %703, i8* %56, align 1
  %704 = lshr i64 %686, 63
  %705 = xor i64 %702, %704
  %706 = add nuw nsw i64 %705, %704
  %707 = icmp eq i64 %706, 2
  %708 = zext i1 %707 to i8
  store i8 %708, i8* %57, align 1
  store i64 %687, i64* %RAX.i242, align 8
  %709 = ashr i64 %687, 63
  store i64 %709, i64* %479, align 8
  %710 = load i64, i64* %RCX.i232, align 8
  %711 = add i64 %683, 16
  store i64 %711, i64* %PC.i, align 8
  %712 = sext i64 %710 to i128
  %713 = and i128 %712, -18446744073709551616
  %714 = zext i64 %709 to i128
  %715 = shl nuw i128 %714, 64
  %716 = zext i64 %687 to i128
  %717 = or i128 %715, %716
  %718 = zext i64 %710 to i128
  %719 = or i128 %713, %718
  %720 = sdiv i128 %717, %719
  %721 = trunc i128 %720 to i64
  %722 = and i128 %720, 18446744073709551615
  %723 = sext i64 %721 to i128
  %724 = and i128 %723, -18446744073709551616
  %725 = or i128 %724, %722
  %726 = icmp eq i128 %720, %725
  br i1 %726, label %729, label %727

; <label>:727:                                    ; preds = %block_.L_404d8e
  %728 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %711, %struct.Memory* %MEMORY.4)
  %.pre15 = load i64, i64* %RBP.i, align 8
  %.pre16 = load i64, i64* %RAX.i242, align 8
  %.pre17 = load i64, i64* %PC.i, align 8
  br label %routine_idivq__rcx.exit

; <label>:729:                                    ; preds = %block_.L_404d8e
  %730 = srem i128 %717, %719
  %731 = trunc i128 %730 to i64
  store i64 %721, i64* %480, align 8
  store i64 %731, i64* %479, align 8
  store i8 0, i8* %52, align 1
  store i8 0, i8* %53, align 1
  store i8 0, i8* %54, align 1
  store i8 0, i8* %55, align 1
  store i8 0, i8* %56, align 1
  store i8 0, i8* %57, align 1
  br label %routine_idivq__rcx.exit

routine_idivq__rcx.exit:                          ; preds = %729, %727
  %732 = phi i64 [ %.pre17, %727 ], [ %711, %729 ]
  %733 = phi i64 [ %.pre16, %727 ], [ %721, %729 ]
  %734 = phi i64 [ %.pre15, %727 ], [ %681, %729 ]
  %735 = phi %struct.Memory* [ %728, %727 ], [ %MEMORY.4, %729 ]
  %736 = add i64 %734, -40
  %737 = add i64 %732, 4
  store i64 %737, i64* %PC.i, align 8
  %738 = inttoptr i64 %736 to i64*
  store i64 %733, i64* %738, align 8
  %739 = load i64, i64* %PC.i, align 8
  %740 = add i64 %739, -126
  store i64 %740, i64* %3, align 8
  br label %block_.L_404d4d
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

define %struct.Memory* @routine_movq__rdi__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__rsi__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__rdx__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rdx__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x30__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__0x1___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 1
  store i64 %6, i64* %RDX, align 8
  %7 = icmp eq i64 %3, -1
  %8 = icmp eq i64 %6, 0
  %9 = or i1 %7, %8
  %10 = zext i1 %9 to i8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %10, i8* %11, align 1
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = xor i64 %3, %6
  %20 = lshr i64 %19, 4
  %21 = trunc i64 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i64 %6, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i64 %6, 63
  %28 = trunc i64 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i64 %3, 63
  %31 = xor i64 %27, %30
  %32 = add nuw nsw i64 %31, %27
  %33 = icmp eq i64 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shlq__0x1___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 1
  %7 = icmp slt i64 %3, 0
  %8 = icmp slt i64 %6, 0
  %9 = xor i1 %7, %8
  store i64 %6, i64* %RDX, align 8
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %.lobit = lshr i64 %3, 63
  %11 = trunc i64 %.lobit to i8
  store i8 %11, i8* %10, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %13 = trunc i64 %6 to i32
  %14 = and i32 %13, 254
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  store i8 %18, i8* %12, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %21 = icmp eq i64 %6, 0
  %22 = zext i1 %21 to i8
  store i8 %22, i8* %20, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %24 = lshr i64 %3, 62
  %25 = trunc i64 %24 to i8
  %26 = and i8 %25, 1
  store i8 %26, i8* %23, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %28 = zext i1 %9 to i8
  store i8 %28, i8* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rdx__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_cmpq_MINUS0x8__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i64*
  %9 = load i64, i64* %8, align 8
  %10 = sub i64 %3, %9
  %11 = icmp ult i64 %3, %9
  %12 = zext i1 %11 to i8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %12, i8* %13, align 1
  %14 = trunc i64 %10 to i32
  %15 = and i32 %14, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i64 %9, %3
  %22 = xor i64 %21, %10
  %23 = lshr i64 %22, 4
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i64 %10, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i64 %10, 63
  %31 = trunc i64 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i64 %3, 63
  %34 = lshr i64 %9, 63
  %35 = xor i64 %34, %33
  %36 = xor i64 %30, %33
  %37 = add nuw nsw i64 %36, %35
  %38 = icmp eq i64 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_404cfa(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_subq__0x1___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -1
  store i64 %6, i64* %RCX, align 8
  %7 = icmp eq i64 %3, 0
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
  %17 = xor i64 %3, %6
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
  %30 = add nuw nsw i64 %29, %28
  %31 = icmp eq i64 %30, 2
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %32, i8* %33, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd___rax__rcx_8____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %10, i64* %11, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %13 = bitcast i64* %12 to double*
  store double 0.000000e+00, double* %13, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd___rax__rcx_8____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %10, i64* %11, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %13 = bitcast i64* %12 to double*
  store double 0.000000e+00, double* %13, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_ucomisd__xmm0___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %4 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast [32 x %union.VectorReg]* %3 to double*
  %10 = load double, double* %9, align 1
  %11 = fcmp uno double %8, %10
  br i1 %11, label %12, label %22

; <label>:12:                                     ; preds = %block_400478
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

; <label>:22:                                     ; preds = %block_400478
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

define %struct.Memory* @routine_jbe_.L_404cbf(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %9, i64 %rel_off1, i64 %rel_off2
  %12 = add i64 %3, %.v
  store i64 %12, i64* %11, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__0x1___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 1
  store i64 %6, i64* %RAX, align 8
  %7 = icmp eq i64 %3, -1
  %8 = icmp eq i64 %6, 0
  %9 = or i1 %7, %8
  %10 = zext i1 %9 to i8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %10, i8* %11, align 1
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = xor i64 %3, %6
  %20 = lshr i64 %19, 4
  %21 = trunc i64 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i64 %6, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i64 %6, 63
  %28 = trunc i64 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i64 %3, 63
  %31 = xor i64 %27, %30
  %32 = add nuw nsw i64 %31, %27
  %33 = icmp eq i64 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x30__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd__xmm0____rax__rcx_8_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %10 = load i64, i64* %9, align 1
  %11 = inttoptr i64 %6 to i64*
  store i64 %10, i64* %11, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subq__0x1___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -1
  store i64 %6, i64* %RAX, align 8
  %7 = icmp eq i64 %3, 0
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
  %17 = xor i64 %3, %6
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
  %30 = add nuw nsw i64 %29, %28
  %31 = icmp eq i64 %30, 2
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %32, i8* %33, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq_MINUS0x28__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -40
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i64*
  %9 = load i64, i64* %8, align 8
  %10 = add i64 %9, %3
  store i64 %10, i64* %RAX, align 8
  %11 = icmp ult i64 %10, %3
  %12 = icmp ult i64 %10, %9
  %13 = or i1 %11, %12
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i64 %10 to i32
  %17 = and i32 %16, 255
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = xor i64 %9, %3
  %24 = xor i64 %23, %10
  %25 = lshr i64 %24, 4
  %26 = trunc i64 %25 to i8
  %27 = and i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %27, i8* %28, align 1
  %29 = icmp eq i64 %10, 0
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %30, i8* %31, align 1
  %32 = lshr i64 %10, 63
  %33 = trunc i64 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %33, i8* %34, align 1
  %35 = lshr i64 %3, 63
  %36 = lshr i64 %9, 63
  %37 = xor i64 %32, %35
  %38 = xor i64 %32, %36
  %39 = add nuw nsw i64 %37, %38
  %40 = icmp eq i64 %39, 2
  %41 = zext i1 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %41, i8* %42, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_404c7d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_404d32(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movl__0x2___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 2, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subq__0x1___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -1
  store i64 %6, i64* %RDX, align 8
  %7 = icmp eq i64 %3, 0
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
  %17 = xor i64 %3, %6
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
  %30 = add nuw nsw i64 %29, %28
  %31 = icmp eq i64 %30, 2
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %32, i8* %33, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rdx___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cqto(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = ashr i64 %7, 63
  store i64 %8, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_idivq__rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = sext i64 %3 to i128
  %11 = and i128 %10, -18446744073709551616
  %12 = zext i64 %9 to i128
  %13 = shl nuw i128 %12, 64
  %14 = zext i64 %7 to i128
  %15 = or i128 %13, %14
  %16 = zext i64 %3 to i128
  %17 = or i128 %11, %16
  %18 = sdiv i128 %15, %17
  %19 = trunc i128 %18 to i64
  %20 = and i128 %18, 18446744073709551615
  %21 = sext i64 %19 to i128
  %22 = and i128 %21, -18446744073709551616
  %23 = or i128 %22, %20
  %24 = icmp eq i128 %18, %23
  br i1 %24, label %27, label %25

; <label>:25:                                     ; preds = %block_400478
  %26 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %5, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit

; <label>:27:                                     ; preds = %block_400478
  %28 = srem i128 %15, %17
  %29 = trunc i128 %28 to i64
  store i64 %19, i64* %6, align 8
  store i64 %29, i64* %8, align 8
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
  br label %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit: ; preds = %27, %25
  %36 = phi %struct.Memory* [ %26, %25 ], [ %2, %27 ]
  ret %struct.Memory* %36
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

define %struct.Memory* @routine_cmpq_MINUS0x18__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i64*
  %9 = load i64, i64* %8, align 8
  %10 = sub i64 %3, %9
  %11 = icmp ult i64 %3, %9
  %12 = zext i1 %11 to i8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %12, i8* %13, align 1
  %14 = trunc i64 %10 to i32
  %15 = and i32 %14, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i64 %9, %3
  %22 = xor i64 %21, %10
  %23 = lshr i64 %22, 4
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i64 %10, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i64 %10, 63
  %31 = trunc i64 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i64 %3, 63
  %34 = lshr i64 %9, 63
  %35 = xor i64 %34, %33
  %36 = xor i64 %30, %33
  %37 = add nuw nsw i64 %36, %35
  %38 = icmp eq i64 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__cl__MINUS0x31__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -49
  %6 = load i8, i8* %CL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jle_.L_404d7e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movsd_MINUS0x20__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_seta__dl(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %7 = load i8, i8* %6, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %9 = load i8, i8* %8, align 1
  %10 = or i8 %9, %7
  %11 = icmp eq i8 %10, 0
  %12 = zext i1 %11 to i8
  store i8 %12, i8* %DL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__dl__MINUS0x31__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -49
  %6 = load i8, i8* %DL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb_MINUS0x31__rbp____al(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -49
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
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

define %struct.Memory* @routine_jne_.L_404d8e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_jmpq_.L_404dd0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x28__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd___rdx__rsi_8____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RSI, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %10, i64* %11, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %13 = bitcast i64* %12 to double*
  store double 0.000000e+00, double* %13, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x30__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0____rdx__rsi_8_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RSI, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %10 = load i64, i64* %9, align 1
  %11 = inttoptr i64 %6 to i64*
  store i64 %10, i64* %11, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x28__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_404d4d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x20__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
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
