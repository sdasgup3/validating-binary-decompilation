; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0xb797f__rip__type = type <{ [8 x i8] }>
%G_0xb79d9__rip__type = type <{ [8 x i8] }>
%G_0xb7a20__rip__type = type <{ [8 x i8] }>
%G_0xb7a4f__rip__type = type <{ [8 x i8] }>
%G_0xb7a7a__rip__type = type <{ [8 x i8] }>
%G_0xb7aa9__rip__type = type <{ [8 x i8] }>
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
@G_0xb797f__rip_ = global %G_0xb797f__rip__type zeroinitializer
@G_0xb79d9__rip_ = global %G_0xb79d9__rip__type zeroinitializer
@G_0xb7a20__rip_ = global %G_0xb7a20__rip__type zeroinitializer
@G_0xb7a4f__rip_ = global %G_0xb7a4f__rip__type zeroinitializer
@G_0xb7a7a__rip_ = global %G_0xb7a7a__rip__type zeroinitializer
@G_0xb7aa9__rip_ = global %G_0xb7aa9__rip__type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare %struct.Memory* @sub_42b3d0.whose_moyo(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @whose_area(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -40
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 32
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
  %22 = xor i64 %8, %11
  %23 = lshr i64 %22, 4
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i64 %11, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i64 %11, 63
  %31 = trunc i64 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i64 %8, 63
  %34 = xor i64 %30, %33
  %35 = add nuw nsw i64 %34, %33
  %36 = icmp eq i64 %35, 2
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %37, i8* %38, align 1
  %RDI.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %39 = add i64 %7, -24
  %40 = load i64, i64* %RDI.i, align 8
  %41 = add i64 %10, 11
  store i64 %41, i64* %3, align 8
  %42 = inttoptr i64 %39 to i64*
  store i64 %40, i64* %42, align 8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i = bitcast %union.anon* %43 to i32*
  %44 = load i64, i64* %RBP.i, align 8
  %45 = add i64 %44, -20
  %46 = load i32, i32* %ESI.i, align 4
  %47 = load i64, i64* %3, align 8
  %48 = add i64 %47, 3
  store i64 %48, i64* %3, align 8
  %49 = inttoptr i64 %45 to i32*
  store i32 %46, i32* %49, align 4
  %50 = load i64, i64* %RBP.i, align 8
  %51 = add i64 %50, -16
  %52 = load i64, i64* %3, align 8
  %53 = add i64 %52, 4
  store i64 %53, i64* %3, align 8
  %54 = inttoptr i64 %51 to i64*
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %RDI.i, align 8
  %56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i81 = getelementptr inbounds %union.anon, %union.anon* %56, i64 0, i32 0
  %57 = add i64 %50, -20
  %58 = add i64 %52, 8
  store i64 %58, i64* %3, align 8
  %59 = inttoptr i64 %57 to i32*
  %60 = load i32, i32* %59, align 4
  %61 = sext i32 %60 to i64
  store i64 %61, i64* %RAX.i81, align 8
  %62 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %63 = bitcast [32 x %union.VectorReg]* %62 to i8*
  %64 = shl nsw i64 %61, 2
  %65 = add i64 %55, 2000
  %66 = add i64 %65, %64
  %67 = add i64 %52, 17
  store i64 %67, i64* %3, align 8
  %68 = inttoptr i64 %66 to i32*
  %69 = load i32, i32* %68, align 4
  %70 = bitcast [32 x %union.VectorReg]* %62 to i32*
  store i32 %69, i32* %70, align 1
  %71 = getelementptr inbounds i8, i8* %63, i64 4
  %72 = bitcast i8* %71 to float*
  store float 0.000000e+00, float* %72, align 1
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %74 = bitcast i64* %73 to float*
  store float 0.000000e+00, float* %74, align 1
  %75 = getelementptr inbounds i8, i8* %63, i64 12
  %76 = bitcast i8* %75 to float*
  store float 0.000000e+00, float* %76, align 1
  %77 = add i64 %50, -24
  %78 = add i64 %52, 22
  store i64 %78, i64* %3, align 8
  %79 = bitcast [32 x %union.VectorReg]* %62 to <2 x float>*
  %80 = load <2 x float>, <2 x float>* %79, align 1
  %81 = extractelement <2 x float> %80, i32 0
  %82 = inttoptr i64 %77 to float*
  store float %81, float* %82, align 4
  %83 = load i64, i64* %RBP.i, align 8
  %84 = add i64 %83, -16
  %85 = load i64, i64* %3, align 8
  %86 = add i64 %85, 4
  store i64 %86, i64* %3, align 8
  %87 = inttoptr i64 %84 to i64*
  %88 = load i64, i64* %87, align 8
  store i64 %88, i64* %RAX.i81, align 8
  %89 = add i64 %83, -20
  %90 = add i64 %85, 8
  store i64 %90, i64* %3, align 8
  %91 = inttoptr i64 %89 to i32*
  %92 = load i32, i32* %91, align 4
  %93 = sext i32 %92 to i64
  store i64 %93, i64* %RDI.i, align 8
  %94 = shl nsw i64 %93, 2
  %95 = add i64 %88, 400
  %96 = add i64 %95, %94
  %97 = add i64 %85, 17
  store i64 %97, i64* %3, align 8
  %98 = inttoptr i64 %96 to i32*
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %70, align 1
  store float 0.000000e+00, float* %72, align 1
  store float 0.000000e+00, float* %74, align 1
  store float 0.000000e+00, float* %76, align 1
  %100 = add i64 %83, -28
  %101 = add i64 %85, 22
  store i64 %101, i64* %3, align 8
  %102 = load <2 x float>, <2 x float>* %79, align 1
  %103 = extractelement <2 x float> %102, i32 0
  %104 = inttoptr i64 %100 to float*
  store float %103, float* %104, align 4
  %105 = load i64, i64* %RBP.i, align 8
  %106 = add i64 %105, -16
  %107 = load i64, i64* %3, align 8
  %108 = add i64 %107, 4
  store i64 %108, i64* %3, align 8
  %109 = inttoptr i64 %106 to i64*
  %110 = load i64, i64* %109, align 8
  store i64 %110, i64* %RDI.i, align 8
  %RSI.i = getelementptr inbounds %union.anon, %union.anon* %43, i64 0, i32 0
  %111 = add i64 %105, -20
  %112 = add i64 %107, 7
  store i64 %112, i64* %3, align 8
  %113 = inttoptr i64 %111 to i32*
  %114 = load i32, i32* %113, align 4
  %115 = zext i32 %114 to i64
  store i64 %115, i64* %RSI.i, align 8
  %116 = add i64 %107, -363
  %117 = add i64 %107, 12
  %118 = load i64, i64* %6, align 8
  %119 = add i64 %118, -8
  %120 = inttoptr i64 %119 to i64*
  store i64 %117, i64* %120, align 8
  store i64 %119, i64* %6, align 8
  store i64 %116, i64* %3, align 8
  %call2_42b542 = tail call %struct.Memory* @sub_42b3d0.whose_moyo(%struct.State* %0, i64 %116, %struct.Memory* %2)
  %EAX.i104 = bitcast %union.anon* %56 to i32*
  %121 = load i64, i64* %RBP.i, align 8
  %122 = add i64 %121, -32
  %123 = load i32, i32* %EAX.i104, align 4
  %124 = load i64, i64* %3, align 8
  %125 = add i64 %124, 3
  store i64 %125, i64* %3, align 8
  %126 = inttoptr i64 %122 to i32*
  store i32 %123, i32* %126, align 4
  %127 = load i64, i64* %RBP.i, align 8
  %128 = add i64 %127, -32
  %129 = load i64, i64* %3, align 8
  %130 = add i64 %129, 4
  store i64 %130, i64* %3, align 8
  %131 = inttoptr i64 %128 to i32*
  %132 = load i32, i32* %131, align 4
  store i8 0, i8* %14, align 1
  %133 = and i32 %132, 255
  %134 = tail call i32 @llvm.ctpop.i32(i32 %133)
  %135 = trunc i32 %134 to i8
  %136 = and i8 %135, 1
  %137 = xor i8 %136, 1
  store i8 %137, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %138 = icmp eq i32 %132, 0
  %139 = zext i1 %138 to i8
  store i8 %139, i8* %29, align 1
  %140 = lshr i32 %132, 31
  %141 = trunc i32 %140 to i8
  store i8 %141, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v = select i1 %138, i64 21, i64 10
  %142 = add i64 %129, %.v
  store i64 %142, i64* %3, align 8
  br i1 %138, label %block_.L_42b55f, label %block_42b554

block_42b554:                                     ; preds = %entry
  %143 = add i64 %142, 3
  store i64 %143, i64* %3, align 8
  %144 = load i32, i32* %131, align 4
  %145 = zext i32 %144 to i64
  store i64 %145, i64* %RAX.i81, align 8
  %146 = add i64 %127, -4
  %147 = add i64 %142, 6
  store i64 %147, i64* %3, align 8
  %148 = inttoptr i64 %146 to i32*
  store i32 %144, i32* %148, align 4
  %149 = load i64, i64* %3, align 8
  %150 = add i64 %149, 192
  store i64 %150, i64* %3, align 8
  br label %block_.L_42b61a

block_.L_42b55f:                                  ; preds = %entry
  %151 = add i64 %142, ptrtoint (%G_0xb7aa9__rip__type* @G_0xb7aa9__rip_ to i64)
  %152 = add i64 %142, 8
  store i64 %152, i64* %3, align 8
  %153 = inttoptr i64 %151 to i64*
  %154 = load i64, i64* %153, align 8
  %155 = bitcast [32 x %union.VectorReg]* %62 to double*
  %156 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %62, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %154, i64* %156, align 1
  %157 = bitcast i64* %73 to double*
  store double 0.000000e+00, double* %157, align 1
  %158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %159 = add i64 %127, -24
  %160 = add i64 %142, 13
  store i64 %160, i64* %3, align 8
  %161 = inttoptr i64 %159 to float*
  %162 = load float, float* %161, align 4
  %163 = fpext float %162 to double
  %164 = bitcast %union.VectorReg* %158 to double*
  store double %163, double* %164, align 1
  %165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %166 = add i64 %127, -28
  %167 = add i64 %142, 18
  store i64 %167, i64* %3, align 8
  %168 = inttoptr i64 %166 to float*
  %169 = load float, float* %168, align 4
  %170 = fpext float %169 to double
  %171 = bitcast %union.VectorReg* %165 to double*
  store double %170, double* %171, align 1
  %172 = bitcast i64 %154 to double
  %173 = fmul double %170, %172
  store double %173, double* %155, align 1
  store i64 0, i64* %73, align 1
  %174 = add i64 %142, 26
  store i64 %174, i64* %3, align 8
  %175 = fcmp uno double %163, %173
  br i1 %175, label %176, label %186

; <label>:176:                                    ; preds = %block_.L_42b55f
  %177 = fadd double %173, %163
  %178 = bitcast double %177 to i64
  %179 = and i64 %178, 9221120237041090560
  %180 = icmp eq i64 %179, 9218868437227405312
  %181 = and i64 %178, 2251799813685247
  %182 = icmp ne i64 %181, 0
  %183 = and i1 %180, %182
  br i1 %183, label %184, label %192

; <label>:184:                                    ; preds = %176
  %185 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %174, %struct.Memory* %call2_42b542)
  %.pre = load i64, i64* %3, align 8
  %.pre7 = load i8, i8* %14, align 1
  %.pre8 = load i8, i8* %29, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit79

; <label>:186:                                    ; preds = %block_.L_42b55f
  %187 = fcmp ogt double %163, %173
  br i1 %187, label %192, label %188

; <label>:188:                                    ; preds = %186
  %189 = fcmp olt double %163, %173
  br i1 %189, label %192, label %190

; <label>:190:                                    ; preds = %188
  %191 = fcmp oeq double %163, %173
  br i1 %191, label %192, label %196

; <label>:192:                                    ; preds = %190, %188, %186, %176
  %193 = phi i8 [ 0, %186 ], [ 0, %188 ], [ 1, %190 ], [ 1, %176 ]
  %194 = phi i8 [ 0, %186 ], [ 0, %188 ], [ 0, %190 ], [ 1, %176 ]
  %195 = phi i8 [ 0, %186 ], [ 1, %188 ], [ 0, %190 ], [ 1, %176 ]
  store i8 %193, i8* %29, align 1
  store i8 %194, i8* %21, align 1
  store i8 %195, i8* %14, align 1
  br label %196

; <label>:196:                                    ; preds = %192, %190
  %197 = phi i8 [ %193, %192 ], [ %139, %190 ]
  %198 = phi i8 [ %195, %192 ], [ 0, %190 ]
  store i8 0, i8* %38, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %26, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit79

routine_ucomisd__xmm0___xmm1.exit79:              ; preds = %196, %184
  %199 = phi i8 [ %.pre8, %184 ], [ %197, %196 ]
  %200 = phi i8 [ %.pre7, %184 ], [ %198, %196 ]
  %201 = phi i64 [ %.pre, %184 ], [ %174, %196 ]
  %202 = phi %struct.Memory* [ %185, %184 ], [ %call2_42b542, %196 ]
  %203 = or i8 %199, %200
  %204 = icmp ne i8 %203, 0
  %.v25 = select i1 %204, i64 64, i64 6
  %205 = add i64 %201, %.v25
  store i64 %205, i64* %3, align 8
  br i1 %204, label %block_.L_42b5b9, label %block_42b57f

block_42b57f:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit79
  %206 = add i64 %205, ptrtoint (%G_0xb79d9__rip__type* @G_0xb79d9__rip_ to i64)
  %207 = add i64 %205, 8
  store i64 %207, i64* %3, align 8
  %208 = inttoptr i64 %206 to i64*
  %209 = load i64, i64* %208, align 8
  store i64 %209, i64* %156, align 1
  store double 0.000000e+00, double* %157, align 1
  %210 = load i64, i64* %RBP.i, align 8
  %211 = add i64 %210, -24
  %212 = add i64 %205, 13
  store i64 %212, i64* %3, align 8
  %213 = inttoptr i64 %211 to float*
  %214 = load float, float* %213, align 4
  %215 = fpext float %214 to double
  store double %215, double* %164, align 1
  %216 = add i64 %205, 17
  store i64 %216, i64* %3, align 8
  %217 = bitcast i64 %209 to double
  %218 = fcmp uno double %215, %217
  br i1 %218, label %219, label %229

; <label>:219:                                    ; preds = %block_42b57f
  %220 = fadd double %215, %217
  %221 = bitcast double %220 to i64
  %222 = and i64 %221, 9221120237041090560
  %223 = icmp eq i64 %222, 9218868437227405312
  %224 = and i64 %221, 2251799813685247
  %225 = icmp ne i64 %224, 0
  %226 = and i1 %223, %225
  br i1 %226, label %227, label %235

; <label>:227:                                    ; preds = %219
  %228 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %216, %struct.Memory* %202)
  %.pre9 = load i64, i64* %3, align 8
  %.pre10 = load i8, i8* %14, align 1
  %.pre11 = load i8, i8* %29, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit66

; <label>:229:                                    ; preds = %block_42b57f
  %230 = fcmp ogt double %215, %217
  br i1 %230, label %235, label %231

; <label>:231:                                    ; preds = %229
  %232 = fcmp olt double %215, %217
  br i1 %232, label %235, label %233

; <label>:233:                                    ; preds = %231
  %234 = fcmp oeq double %215, %217
  br i1 %234, label %235, label %239

; <label>:235:                                    ; preds = %233, %231, %229, %219
  %236 = phi i8 [ 0, %229 ], [ 0, %231 ], [ 1, %233 ], [ 1, %219 ]
  %237 = phi i8 [ 0, %229 ], [ 0, %231 ], [ 0, %233 ], [ 1, %219 ]
  %238 = phi i8 [ 0, %229 ], [ 1, %231 ], [ 0, %233 ], [ 1, %219 ]
  store i8 %236, i8* %29, align 1
  store i8 %237, i8* %21, align 1
  store i8 %238, i8* %14, align 1
  br label %239

; <label>:239:                                    ; preds = %235, %233
  %240 = phi i8 [ %236, %235 ], [ %199, %233 ]
  %241 = phi i8 [ %238, %235 ], [ %200, %233 ]
  store i8 0, i8* %38, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %26, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit66

routine_ucomisd__xmm0___xmm1.exit66:              ; preds = %239, %227
  %242 = phi i8 [ %.pre11, %227 ], [ %240, %239 ]
  %243 = phi i8 [ %.pre10, %227 ], [ %241, %239 ]
  %244 = phi i64 [ %.pre9, %227 ], [ %216, %239 ]
  %245 = phi %struct.Memory* [ %228, %227 ], [ %202, %239 ]
  %246 = or i8 %242, %243
  %247 = icmp ne i8 %246, 0
  %.v26 = select i1 %247, i64 41, i64 6
  %248 = add i64 %244, %.v26
  store i64 %248, i64* %3, align 8
  br i1 %247, label %block_.L_42b5b9, label %block_42b596

block_42b596:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit66
  %249 = add i64 %248, ptrtoint (%G_0xb7a7a__rip__type* @G_0xb7a7a__rip_ to i64)
  %250 = add i64 %248, 8
  store i64 %250, i64* %3, align 8
  %251 = inttoptr i64 %249 to i64*
  %252 = load i64, i64* %251, align 8
  store i64 %252, i64* %156, align 1
  store double 0.000000e+00, double* %157, align 1
  %253 = load i64, i64* %RBP.i, align 8
  %254 = add i64 %253, -28
  %255 = add i64 %248, 13
  store i64 %255, i64* %3, align 8
  %256 = inttoptr i64 %254 to float*
  %257 = load float, float* %256, align 4
  %258 = fpext float %257 to double
  store double %258, double* %164, align 1
  %259 = add i64 %248, 17
  store i64 %259, i64* %3, align 8
  %260 = bitcast i64 %252 to double
  %261 = fcmp uno double %260, %258
  br i1 %261, label %262, label %272

; <label>:262:                                    ; preds = %block_42b596
  %263 = fadd double %258, %260
  %264 = bitcast double %263 to i64
  %265 = and i64 %264, 9221120237041090560
  %266 = icmp eq i64 %265, 9218868437227405312
  %267 = and i64 %264, 2251799813685247
  %268 = icmp ne i64 %267, 0
  %269 = and i1 %266, %268
  br i1 %269, label %270, label %278

; <label>:270:                                    ; preds = %262
  %271 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %259, %struct.Memory* %245)
  %.pre12 = load i64, i64* %3, align 8
  %.pre13 = load i8, i8* %14, align 1
  %.pre14 = load i8, i8* %29, align 1
  br label %routine_ucomisd__xmm1___xmm0.exit54

; <label>:272:                                    ; preds = %block_42b596
  %273 = fcmp ogt double %260, %258
  br i1 %273, label %278, label %274

; <label>:274:                                    ; preds = %272
  %275 = fcmp olt double %260, %258
  br i1 %275, label %278, label %276

; <label>:276:                                    ; preds = %274
  %277 = fcmp oeq double %260, %258
  br i1 %277, label %278, label %282

; <label>:278:                                    ; preds = %276, %274, %272, %262
  %279 = phi i8 [ 0, %272 ], [ 0, %274 ], [ 1, %276 ], [ 1, %262 ]
  %280 = phi i8 [ 0, %272 ], [ 0, %274 ], [ 0, %276 ], [ 1, %262 ]
  %281 = phi i8 [ 0, %272 ], [ 1, %274 ], [ 0, %276 ], [ 1, %262 ]
  store i8 %279, i8* %29, align 1
  store i8 %280, i8* %21, align 1
  store i8 %281, i8* %14, align 1
  br label %282

; <label>:282:                                    ; preds = %278, %276
  %283 = phi i8 [ %279, %278 ], [ %242, %276 ]
  %284 = phi i8 [ %281, %278 ], [ %243, %276 ]
  store i8 0, i8* %38, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %26, align 1
  br label %routine_ucomisd__xmm1___xmm0.exit54

routine_ucomisd__xmm1___xmm0.exit54:              ; preds = %282, %270
  %285 = phi i8 [ %.pre14, %270 ], [ %283, %282 ]
  %286 = phi i8 [ %.pre13, %270 ], [ %284, %282 ]
  %287 = phi i64 [ %.pre12, %270 ], [ %259, %282 ]
  %288 = phi %struct.Memory* [ %271, %270 ], [ %245, %282 ]
  %289 = or i8 %285, %286
  %290 = icmp ne i8 %289, 0
  %.v27 = select i1 %290, i64 18, i64 6
  %291 = add i64 %287, %.v27
  store i64 %291, i64* %3, align 8
  br i1 %290, label %block_.L_42b5b9, label %block_42b5ad

block_42b5ad:                                     ; preds = %routine_ucomisd__xmm1___xmm0.exit54
  %292 = load i64, i64* %RBP.i, align 8
  %293 = add i64 %292, -4
  %294 = add i64 %291, 7
  store i64 %294, i64* %3, align 8
  %295 = inttoptr i64 %293 to i32*
  store i32 2, i32* %295, align 4
  %296 = load i64, i64* %3, align 8
  %297 = add i64 %296, 102
  store i64 %297, i64* %3, align 8
  br label %block_.L_42b61a

block_.L_42b5b9:                                  ; preds = %routine_ucomisd__xmm1___xmm0.exit54, %routine_ucomisd__xmm0___xmm1.exit66, %routine_ucomisd__xmm0___xmm1.exit79
  %298 = phi i8 [ %199, %routine_ucomisd__xmm0___xmm1.exit79 ], [ %242, %routine_ucomisd__xmm0___xmm1.exit66 ], [ %285, %routine_ucomisd__xmm1___xmm0.exit54 ]
  %299 = phi i8 [ %200, %routine_ucomisd__xmm0___xmm1.exit79 ], [ %243, %routine_ucomisd__xmm0___xmm1.exit66 ], [ %286, %routine_ucomisd__xmm1___xmm0.exit54 ]
  %300 = phi i64 [ %205, %routine_ucomisd__xmm0___xmm1.exit79 ], [ %248, %routine_ucomisd__xmm0___xmm1.exit66 ], [ %291, %routine_ucomisd__xmm1___xmm0.exit54 ]
  %MEMORY.0 = phi %struct.Memory* [ %202, %routine_ucomisd__xmm0___xmm1.exit79 ], [ %245, %routine_ucomisd__xmm0___xmm1.exit66 ], [ %288, %routine_ucomisd__xmm1___xmm0.exit54 ]
  %301 = add i64 %300, ptrtoint (%G_0xb7a4f__rip__type* @G_0xb7a4f__rip_ to i64)
  %302 = add i64 %300, 8
  store i64 %302, i64* %3, align 8
  %303 = inttoptr i64 %301 to i64*
  %304 = load i64, i64* %303, align 8
  store i64 %304, i64* %156, align 1
  store double 0.000000e+00, double* %157, align 1
  %305 = load i64, i64* %RBP.i, align 8
  %306 = add i64 %305, -28
  %307 = add i64 %300, 13
  store i64 %307, i64* %3, align 8
  %308 = inttoptr i64 %306 to float*
  %309 = load float, float* %308, align 4
  %310 = fpext float %309 to double
  store double %310, double* %164, align 1
  %311 = add i64 %305, -24
  %312 = add i64 %300, 18
  store i64 %312, i64* %3, align 8
  %313 = inttoptr i64 %311 to float*
  %314 = load float, float* %313, align 4
  %315 = fpext float %314 to double
  store double %315, double* %171, align 1
  %316 = bitcast i64 %304 to double
  %317 = fmul double %315, %316
  store double %317, double* %155, align 1
  store i64 0, i64* %73, align 1
  %318 = add i64 %300, 26
  store i64 %318, i64* %3, align 8
  %319 = fcmp uno double %310, %317
  br i1 %319, label %320, label %330

; <label>:320:                                    ; preds = %block_.L_42b5b9
  %321 = fadd double %317, %310
  %322 = bitcast double %321 to i64
  %323 = and i64 %322, 9221120237041090560
  %324 = icmp eq i64 %323, 9218868437227405312
  %325 = and i64 %322, 2251799813685247
  %326 = icmp ne i64 %325, 0
  %327 = and i1 %324, %326
  br i1 %327, label %328, label %336

; <label>:328:                                    ; preds = %320
  %329 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %318, %struct.Memory* %MEMORY.0)
  %.pre15 = load i64, i64* %3, align 8
  %.pre16 = load i8, i8* %14, align 1
  %.pre17 = load i8, i8* %29, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit35

; <label>:330:                                    ; preds = %block_.L_42b5b9
  %331 = fcmp ogt double %310, %317
  br i1 %331, label %336, label %332

; <label>:332:                                    ; preds = %330
  %333 = fcmp olt double %310, %317
  br i1 %333, label %336, label %334

; <label>:334:                                    ; preds = %332
  %335 = fcmp oeq double %310, %317
  br i1 %335, label %336, label %340

; <label>:336:                                    ; preds = %334, %332, %330, %320
  %337 = phi i8 [ 0, %330 ], [ 0, %332 ], [ 1, %334 ], [ 1, %320 ]
  %338 = phi i8 [ 0, %330 ], [ 0, %332 ], [ 0, %334 ], [ 1, %320 ]
  %339 = phi i8 [ 0, %330 ], [ 1, %332 ], [ 0, %334 ], [ 1, %320 ]
  store i8 %337, i8* %29, align 1
  store i8 %338, i8* %21, align 1
  store i8 %339, i8* %14, align 1
  br label %340

; <label>:340:                                    ; preds = %336, %334
  %341 = phi i8 [ %337, %336 ], [ %298, %334 ]
  %342 = phi i8 [ %339, %336 ], [ %299, %334 ]
  store i8 0, i8* %38, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %26, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit35

routine_ucomisd__xmm0___xmm1.exit35:              ; preds = %340, %328
  %343 = phi i8 [ %.pre17, %328 ], [ %341, %340 ]
  %344 = phi i8 [ %.pre16, %328 ], [ %342, %340 ]
  %345 = phi i64 [ %.pre15, %328 ], [ %318, %340 ]
  %346 = phi %struct.Memory* [ %329, %328 ], [ %MEMORY.0, %340 ]
  %347 = or i8 %343, %344
  %348 = icmp ne i8 %347, 0
  %.v28 = select i1 %348, i64 64, i64 6
  %349 = add i64 %345, %.v28
  store i64 %349, i64* %3, align 8
  br i1 %348, label %block_.L_42b613, label %block_42b5d9

block_42b5d9:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit35
  %350 = add i64 %349, ptrtoint (%G_0xb797f__rip__type* @G_0xb797f__rip_ to i64)
  %351 = add i64 %349, 8
  store i64 %351, i64* %3, align 8
  %352 = inttoptr i64 %350 to i64*
  %353 = load i64, i64* %352, align 8
  store i64 %353, i64* %156, align 1
  store double 0.000000e+00, double* %157, align 1
  %354 = load i64, i64* %RBP.i, align 8
  %355 = add i64 %354, -28
  %356 = add i64 %349, 13
  store i64 %356, i64* %3, align 8
  %357 = inttoptr i64 %355 to float*
  %358 = load float, float* %357, align 4
  %359 = fpext float %358 to double
  store double %359, double* %164, align 1
  %360 = add i64 %349, 17
  store i64 %360, i64* %3, align 8
  %361 = bitcast i64 %353 to double
  %362 = fcmp uno double %359, %361
  br i1 %362, label %363, label %373

; <label>:363:                                    ; preds = %block_42b5d9
  %364 = fadd double %359, %361
  %365 = bitcast double %364 to i64
  %366 = and i64 %365, 9221120237041090560
  %367 = icmp eq i64 %366, 9218868437227405312
  %368 = and i64 %365, 2251799813685247
  %369 = icmp ne i64 %368, 0
  %370 = and i1 %367, %369
  br i1 %370, label %371, label %379

; <label>:371:                                    ; preds = %363
  %372 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %360, %struct.Memory* %346)
  %.pre18 = load i64, i64* %3, align 8
  %.pre19 = load i8, i8* %14, align 1
  %.pre20 = load i8, i8* %29, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit

; <label>:373:                                    ; preds = %block_42b5d9
  %374 = fcmp ogt double %359, %361
  br i1 %374, label %379, label %375

; <label>:375:                                    ; preds = %373
  %376 = fcmp olt double %359, %361
  br i1 %376, label %379, label %377

; <label>:377:                                    ; preds = %375
  %378 = fcmp oeq double %359, %361
  br i1 %378, label %379, label %383

; <label>:379:                                    ; preds = %377, %375, %373, %363
  %380 = phi i8 [ 0, %373 ], [ 0, %375 ], [ 1, %377 ], [ 1, %363 ]
  %381 = phi i8 [ 0, %373 ], [ 0, %375 ], [ 0, %377 ], [ 1, %363 ]
  %382 = phi i8 [ 0, %373 ], [ 1, %375 ], [ 0, %377 ], [ 1, %363 ]
  store i8 %380, i8* %29, align 1
  store i8 %381, i8* %21, align 1
  store i8 %382, i8* %14, align 1
  br label %383

; <label>:383:                                    ; preds = %379, %377
  %384 = phi i8 [ %380, %379 ], [ %343, %377 ]
  %385 = phi i8 [ %382, %379 ], [ %344, %377 ]
  store i8 0, i8* %38, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %26, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit

routine_ucomisd__xmm0___xmm1.exit:                ; preds = %383, %371
  %386 = phi i8 [ %.pre20, %371 ], [ %384, %383 ]
  %387 = phi i8 [ %.pre19, %371 ], [ %385, %383 ]
  %388 = phi i64 [ %.pre18, %371 ], [ %360, %383 ]
  %389 = phi %struct.Memory* [ %372, %371 ], [ %346, %383 ]
  %390 = or i8 %386, %387
  %391 = icmp ne i8 %390, 0
  %.v29 = select i1 %391, i64 41, i64 6
  %392 = add i64 %388, %.v29
  store i64 %392, i64* %3, align 8
  br i1 %391, label %block_.L_42b613, label %block_42b5f0

block_42b5f0:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit
  %393 = add i64 %392, ptrtoint (%G_0xb7a20__rip__type* @G_0xb7a20__rip_ to i64)
  %394 = add i64 %392, 8
  store i64 %394, i64* %3, align 8
  %395 = inttoptr i64 %393 to i64*
  %396 = load i64, i64* %395, align 8
  store i64 %396, i64* %156, align 1
  store double 0.000000e+00, double* %157, align 1
  %397 = load i64, i64* %RBP.i, align 8
  %398 = add i64 %397, -24
  %399 = add i64 %392, 13
  store i64 %399, i64* %3, align 8
  %400 = inttoptr i64 %398 to float*
  %401 = load float, float* %400, align 4
  %402 = fpext float %401 to double
  store double %402, double* %164, align 1
  %403 = add i64 %392, 17
  store i64 %403, i64* %3, align 8
  %404 = bitcast i64 %396 to double
  %405 = fcmp uno double %404, %402
  br i1 %405, label %406, label %416

; <label>:406:                                    ; preds = %block_42b5f0
  %407 = fadd double %402, %404
  %408 = bitcast double %407 to i64
  %409 = and i64 %408, 9221120237041090560
  %410 = icmp eq i64 %409, 9218868437227405312
  %411 = and i64 %408, 2251799813685247
  %412 = icmp ne i64 %411, 0
  %413 = and i1 %410, %412
  br i1 %413, label %414, label %422

; <label>:414:                                    ; preds = %406
  %415 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %403, %struct.Memory* %389)
  %.pre21 = load i64, i64* %3, align 8
  %.pre22 = load i8, i8* %14, align 1
  %.pre23 = load i8, i8* %29, align 1
  br label %routine_ucomisd__xmm1___xmm0.exit

; <label>:416:                                    ; preds = %block_42b5f0
  %417 = fcmp ogt double %404, %402
  br i1 %417, label %422, label %418

; <label>:418:                                    ; preds = %416
  %419 = fcmp olt double %404, %402
  br i1 %419, label %422, label %420

; <label>:420:                                    ; preds = %418
  %421 = fcmp oeq double %404, %402
  br i1 %421, label %422, label %426

; <label>:422:                                    ; preds = %420, %418, %416, %406
  %423 = phi i8 [ 0, %416 ], [ 0, %418 ], [ 1, %420 ], [ 1, %406 ]
  %424 = phi i8 [ 0, %416 ], [ 0, %418 ], [ 0, %420 ], [ 1, %406 ]
  %425 = phi i8 [ 0, %416 ], [ 1, %418 ], [ 0, %420 ], [ 1, %406 ]
  store i8 %423, i8* %29, align 1
  store i8 %424, i8* %21, align 1
  store i8 %425, i8* %14, align 1
  br label %426

; <label>:426:                                    ; preds = %422, %420
  %427 = phi i8 [ %423, %422 ], [ %386, %420 ]
  %428 = phi i8 [ %425, %422 ], [ %387, %420 ]
  store i8 0, i8* %38, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %26, align 1
  br label %routine_ucomisd__xmm1___xmm0.exit

routine_ucomisd__xmm1___xmm0.exit:                ; preds = %426, %414
  %429 = phi i8 [ %.pre23, %414 ], [ %427, %426 ]
  %430 = phi i8 [ %.pre22, %414 ], [ %428, %426 ]
  %431 = phi i64 [ %.pre21, %414 ], [ %403, %426 ]
  %432 = phi %struct.Memory* [ %415, %414 ], [ %389, %426 ]
  %433 = or i8 %429, %430
  %434 = icmp ne i8 %433, 0
  %.v30 = select i1 %434, i64 18, i64 6
  %435 = add i64 %431, %.v30
  store i64 %435, i64* %3, align 8
  br i1 %434, label %block_.L_42b613, label %block_42b607

block_42b607:                                     ; preds = %routine_ucomisd__xmm1___xmm0.exit
  %436 = load i64, i64* %RBP.i, align 8
  %437 = add i64 %436, -4
  %438 = add i64 %435, 7
  store i64 %438, i64* %3, align 8
  %439 = inttoptr i64 %437 to i32*
  store i32 1, i32* %439, align 4
  %440 = load i64, i64* %3, align 8
  %441 = add i64 %440, 12
  store i64 %441, i64* %3, align 8
  br label %block_.L_42b61a

block_.L_42b613:                                  ; preds = %routine_ucomisd__xmm1___xmm0.exit, %routine_ucomisd__xmm0___xmm1.exit, %routine_ucomisd__xmm0___xmm1.exit35
  %442 = phi i64 [ %349, %routine_ucomisd__xmm0___xmm1.exit35 ], [ %392, %routine_ucomisd__xmm0___xmm1.exit ], [ %435, %routine_ucomisd__xmm1___xmm0.exit ]
  %MEMORY.1 = phi %struct.Memory* [ %346, %routine_ucomisd__xmm0___xmm1.exit35 ], [ %389, %routine_ucomisd__xmm0___xmm1.exit ], [ %432, %routine_ucomisd__xmm1___xmm0.exit ]
  %443 = load i64, i64* %RBP.i, align 8
  %444 = add i64 %443, -4
  %445 = add i64 %442, 7
  store i64 %445, i64* %3, align 8
  %446 = inttoptr i64 %444 to i32*
  store i32 0, i32* %446, align 4
  %.pre24 = load i64, i64* %3, align 8
  br label %block_.L_42b61a

block_.L_42b61a:                                  ; preds = %block_.L_42b613, %block_42b607, %block_42b5ad, %block_42b554
  %447 = phi i64 [ %.pre24, %block_.L_42b613 ], [ %441, %block_42b607 ], [ %297, %block_42b5ad ], [ %150, %block_42b554 ]
  %MEMORY.2 = phi %struct.Memory* [ %MEMORY.1, %block_.L_42b613 ], [ %432, %block_42b607 ], [ %288, %block_42b5ad ], [ %call2_42b542, %block_42b554 ]
  %448 = load i64, i64* %RBP.i, align 8
  %449 = add i64 %448, -4
  %450 = add i64 %447, 3
  store i64 %450, i64* %3, align 8
  %451 = inttoptr i64 %449 to i32*
  %452 = load i32, i32* %451, align 4
  %453 = zext i32 %452 to i64
  store i64 %453, i64* %RAX.i81, align 8
  %454 = load i64, i64* %6, align 8
  %455 = add i64 %454, 32
  store i64 %455, i64* %6, align 8
  %456 = icmp ugt i64 %454, -33
  %457 = zext i1 %456 to i8
  store i8 %457, i8* %14, align 1
  %458 = trunc i64 %455 to i32
  %459 = and i32 %458, 255
  %460 = tail call i32 @llvm.ctpop.i32(i32 %459)
  %461 = trunc i32 %460 to i8
  %462 = and i8 %461, 1
  %463 = xor i8 %462, 1
  store i8 %463, i8* %21, align 1
  %464 = xor i64 %455, %454
  %465 = lshr i64 %464, 4
  %466 = trunc i64 %465 to i8
  %467 = and i8 %466, 1
  store i8 %467, i8* %26, align 1
  %468 = icmp eq i64 %455, 0
  %469 = zext i1 %468 to i8
  store i8 %469, i8* %29, align 1
  %470 = lshr i64 %455, 63
  %471 = trunc i64 %470 to i8
  store i8 %471, i8* %32, align 1
  %472 = lshr i64 %454, 63
  %473 = xor i64 %470, %472
  %474 = add nuw nsw i64 %473, %470
  %475 = icmp eq i64 %474, 2
  %476 = zext i1 %475 to i8
  store i8 %476, i8* %38, align 1
  %477 = add i64 %447, 8
  store i64 %477, i64* %3, align 8
  %478 = add i64 %454, 40
  %479 = inttoptr i64 %455 to i64*
  %480 = load i64, i64* %479, align 8
  store i64 %480, i64* %RBP.i, align 8
  store i64 %478, i64* %6, align 8
  %481 = add i64 %447, 9
  store i64 %481, i64* %3, align 8
  %482 = inttoptr i64 %478 to i64*
  %483 = load i64, i64* %482, align 8
  store i64 %483, i64* %3, align 8
  %484 = add i64 %454, 48
  store i64 %484, i64* %6, align 8
  ret %struct.Memory* %MEMORY.2
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
define %struct.Memory* @routine_subq__0x20___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -32
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 32
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
  %30 = add nuw nsw i64 %29, %28
  %31 = icmp eq i64 %30, 2
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %32, i8* %33, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdi__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x14__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
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
define %struct.Memory* @routine_movss_0x7d0__rdi__rax_4____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %RAX, align 8
  %7 = shl i64 %6, 2
  %8 = add i64 %5, 2000
  %9 = add i64 %8, %7
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %9 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = bitcast %union.VectorReg* %3 to i32*
  store i32 %13, i32* %14, align 1
  %15 = getelementptr inbounds i8, i8* %4, i64 4
  %16 = bitcast i8* %15 to float*
  store float 0.000000e+00, float* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %18 = bitcast i64* %17 to float*
  store float 0.000000e+00, float* %18, align 1
  %19 = getelementptr inbounds i8, i8* %4, i64 12
  %20 = bitcast i8* %19 to float*
  store float 0.000000e+00, float* %20, align 1
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
define %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0x190__rax__rdi_4____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %RDI, align 8
  %7 = shl i64 %6, 2
  %8 = add i64 %5, 400
  %9 = add i64 %8, %7
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %9 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = bitcast %union.VectorReg* %3 to i32*
  store i32 %13, i32* %14, align 1
  %15 = getelementptr inbounds i8, i8* %4, i64 4
  %16 = bitcast i8* %15 to float*
  store float 0.000000e+00, float* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %18 = bitcast i64* %17 to float*
  store float 0.000000e+00, float* %18, align 1
  %19 = getelementptr inbounds i8, i8* %4, i64 12
  %20 = bitcast i8* %19 to float*
  store float 0.000000e+00, float* %20, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -28
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.whose_moyo(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_cmpl__0x0__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
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
define %struct.Memory* @routine_je_.L_42b55f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_42b61a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0xb7aa9__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0xb7aa9__rip__type* @G_0xb7aa9__rip_ to i64)
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd_MINUS0x1c__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -28
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd__xmm2___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast [32 x %union.VectorReg]* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast %union.VectorReg* %4 to double*
  %10 = load double, double* %9, align 1
  %11 = fmul double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_ucomisd__xmm0___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
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
define %struct.Memory* @routine_jbe_.L_42b5b9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_0xb79d9__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0xb79d9__rip__type* @G_0xb79d9__rip_ to i64)
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0xb7a7a__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0xb7a7a__rip__type* @G_0xb7a7a__rip_ to i64)
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd_MINUS0x1c__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -28
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
define %struct.Memory* @routine_movl__0x2__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 2, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0xb7a4f__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0xb7a4f__rip__type* @G_0xb7a4f__rip_ to i64)
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd_MINUS0x18__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jbe_.L_42b613(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_0xb797f__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0xb797f__rip__type* @G_0xb797f__rip_ to i64)
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0xb7a20__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0xb7a20__rip__type* @G_0xb7a20__rip_ to i64)
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x20___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 32
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -33
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
