; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x2c664__rip__type = type <{ [8 x i8] }>
%G_0x2c6e8__rip__type = type <{ [8 x i8] }>
%G_0x2c7cb__rip__type = type <{ [8 x i8] }>
%G_0x2c84f__rip__type = type <{ [8 x i8] }>
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
@G_0x2c664__rip_ = global %G_0x2c664__rip__type zeroinitializer
@G_0x2c6e8__rip_ = global %G_0x2c6e8__rip__type zeroinitializer
@G_0x2c7cb__rip_ = global %G_0x2c7cb__rip__type zeroinitializer
@G_0x2c84f__rip_ = global %G_0x2c84f__rip__type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @exp(i64)

declare extern_weak x86_64_sysvcc i64 @log(i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @LogSum(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -56
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 48
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
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %41 = add i64 %7, -16
  %42 = add i64 %10, 12
  store i64 %42, i64* %3, align 8
  %43 = bitcast [32 x %union.VectorReg]* %40 to <2 x float>*
  %44 = load <2 x float>, <2 x float>* %43, align 1
  %45 = extractelement <2 x float> %44, i32 0
  %46 = inttoptr i64 %41 to float*
  store float %45, float* %46, align 4
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %48 = load i64, i64* %RBP.i, align 8
  %49 = add i64 %48, -12
  %50 = load i64, i64* %3, align 8
  %51 = add i64 %50, 5
  store i64 %51, i64* %3, align 8
  %52 = bitcast %union.VectorReg* %47 to <2 x float>*
  %53 = load <2 x float>, <2 x float>* %52, align 1
  %54 = extractelement <2 x float> %53, i32 0
  %55 = inttoptr i64 %49 to float*
  store float %54, float* %55, align 4
  %56 = bitcast [32 x %union.VectorReg]* %40 to i8*
  %57 = load i64, i64* %RBP.i, align 8
  %58 = add i64 %57, -8
  %59 = load i64, i64* %3, align 8
  %60 = add i64 %59, 5
  store i64 %60, i64* %3, align 8
  %61 = inttoptr i64 %58 to i32*
  %62 = load i32, i32* %61, align 4
  %63 = bitcast [32 x %union.VectorReg]* %40 to float*
  %64 = bitcast [32 x %union.VectorReg]* %40 to i32*
  store i32 %62, i32* %64, align 1
  %65 = getelementptr inbounds i8, i8* %56, i64 4
  %66 = bitcast i8* %65 to float*
  store float 0.000000e+00, float* %66, align 1
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %68 = bitcast i64* %67 to float*
  store float 0.000000e+00, float* %68, align 1
  %69 = getelementptr inbounds i8, i8* %56, i64 12
  %70 = bitcast i8* %69 to float*
  store float 0.000000e+00, float* %70, align 1
  %71 = add i64 %57, -12
  %72 = add i64 %59, 9
  store i64 %72, i64* %3, align 8
  %73 = load <2 x float>, <2 x float>* %43, align 1
  %74 = extractelement <2 x float> %73, i32 0
  %75 = inttoptr i64 %71 to float*
  %76 = load float, float* %75, align 4
  %77 = fcmp uno float %74, %76
  br i1 %77, label %78, label %88

; <label>:78:                                     ; preds = %entry
  %79 = fadd float %74, %76
  %80 = bitcast float %79 to i32
  %81 = and i32 %80, 2143289344
  %82 = icmp eq i32 %81, 2139095040
  %83 = and i32 %80, 4194303
  %84 = icmp ne i32 %83, 0
  %85 = and i1 %82, %84
  br i1 %85, label %86, label %94

; <label>:86:                                     ; preds = %78
  %87 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %72, %struct.Memory* %2)
  %.pre = load i64, i64* %3, align 8
  br label %routine_ucomiss_MINUS0xc__rbp____xmm0.exit

; <label>:88:                                     ; preds = %entry
  %89 = fcmp ogt float %74, %76
  br i1 %89, label %94, label %90

; <label>:90:                                     ; preds = %88
  %91 = fcmp olt float %74, %76
  br i1 %91, label %94, label %92

; <label>:92:                                     ; preds = %90
  %93 = fcmp oeq float %74, %76
  br i1 %93, label %94, label %98

; <label>:94:                                     ; preds = %92, %90, %88, %78
  %95 = phi i8 [ 0, %88 ], [ 0, %90 ], [ 1, %92 ], [ 1, %78 ]
  %96 = phi i8 [ 0, %88 ], [ 0, %90 ], [ 0, %92 ], [ 1, %78 ]
  %97 = phi i8 [ 0, %88 ], [ 1, %90 ], [ 0, %92 ], [ 1, %78 ]
  store i8 %95, i8* %30, align 1
  store i8 %96, i8* %21, align 1
  store i8 %97, i8* %14, align 1
  br label %98

; <label>:98:                                     ; preds = %94, %92
  store i8 0, i8* %39, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %27, align 1
  br label %routine_ucomiss_MINUS0xc__rbp____xmm0.exit

routine_ucomiss_MINUS0xc__rbp____xmm0.exit:       ; preds = %98, %86
  %99 = phi i64 [ %.pre, %86 ], [ %72, %98 ]
  %100 = phi %struct.Memory* [ %87, %86 ], [ %2, %98 ]
  %101 = load i8, i8* %14, align 1
  %102 = load i8, i8* %30, align 1
  %103 = or i8 %102, %101
  %104 = icmp ne i8 %103, 0
  %.v35 = select i1 %104, i64 138, i64 6
  %105 = add i64 %99, %.v35
  store i64 %105, i64* %3, align 8
  br i1 %104, label %block_.L_428125, label %block_4280a1

block_4280a1:                                     ; preds = %routine_ucomiss_MINUS0xc__rbp____xmm0.exit
  %106 = add i64 %105, ptrtoint (%G_0x2c84f__rip__type* @G_0x2c84f__rip_ to i64)
  %107 = add i64 %105, 8
  store i64 %107, i64* %3, align 8
  %108 = inttoptr i64 %106 to i64*
  %109 = load i64, i64* %108, align 8
  %110 = bitcast [32 x %union.VectorReg]* %40 to double*
  %111 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %40, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %109, i64* %111, align 1
  %112 = bitcast i64* %67 to double*
  store double 0.000000e+00, double* %112, align 1
  %113 = bitcast %union.VectorReg* %47 to i8*
  %114 = load i64, i64* %RBP.i, align 8
  %115 = add i64 %114, -8
  %116 = add i64 %105, 13
  store i64 %116, i64* %3, align 8
  %117 = inttoptr i64 %115 to i32*
  %118 = load i32, i32* %117, align 4
  %119 = bitcast %union.VectorReg* %47 to float*
  %120 = bitcast %union.VectorReg* %47 to i32*
  store i32 %118, i32* %120, align 1
  %121 = getelementptr inbounds i8, i8* %113, i64 4
  %122 = bitcast i8* %121 to float*
  store float 0.000000e+00, float* %122, align 1
  %123 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %124 = bitcast i64* %123 to float*
  store float 0.000000e+00, float* %124, align 1
  %125 = getelementptr inbounds i8, i8* %113, i64 12
  %126 = bitcast i8* %125 to float*
  store float 0.000000e+00, float* %126, align 1
  %127 = add i64 %114, -12
  %128 = add i64 %105, 18
  store i64 %128, i64* %3, align 8
  %129 = load <2 x float>, <2 x float>* %52, align 1
  %130 = bitcast i64* %123 to <2 x i32>*
  %131 = load <2 x i32>, <2 x i32>* %130, align 1
  %132 = inttoptr i64 %127 to float*
  %133 = load float, float* %132, align 4
  %134 = extractelement <2 x float> %129, i32 0
  %135 = fsub float %134, %133
  store float %135, float* %119, align 1
  %136 = bitcast <2 x float> %129 to <2 x i32>
  %137 = extractelement <2 x i32> %136, i32 1
  %138 = bitcast i8* %121 to i32*
  store i32 %137, i32* %138, align 1
  %139 = extractelement <2 x i32> %131, i32 0
  %140 = bitcast i64* %123 to i32*
  store i32 %139, i32* %140, align 1
  %141 = extractelement <2 x i32> %131, i32 1
  %142 = bitcast i8* %125 to i32*
  store i32 %141, i32* %142, align 1
  %143 = load <2 x float>, <2 x float>* %52, align 1
  %144 = extractelement <2 x float> %143, i32 0
  %145 = fpext float %144 to double
  %146 = bitcast %union.VectorReg* %47 to double*
  store double %145, double* %146, align 1
  %147 = add i64 %105, 26
  store i64 %147, i64* %3, align 8
  %148 = bitcast i64 %109 to double
  %149 = fcmp uno double %145, %148
  br i1 %149, label %150, label %160

; <label>:150:                                    ; preds = %block_4280a1
  %151 = fadd double %145, %148
  %152 = bitcast double %151 to i64
  %153 = and i64 %152, 9221120237041090560
  %154 = icmp eq i64 %153, 9218868437227405312
  %155 = and i64 %152, 2251799813685247
  %156 = icmp ne i64 %155, 0
  %157 = and i1 %154, %156
  br i1 %157, label %158, label %166

; <label>:158:                                    ; preds = %150
  %159 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %147, %struct.Memory* %100)
  %.pre12 = load i64, i64* %3, align 8
  %.pre13 = load i8, i8* %14, align 1
  %.pre14 = load i8, i8* %30, align 1
  %.pre15 = load i64, i64* %RBP.i, align 8
  br label %routine_ucomisd__xmm0___xmm1.exit144

; <label>:160:                                    ; preds = %block_4280a1
  %161 = fcmp ogt double %145, %148
  br i1 %161, label %166, label %162

; <label>:162:                                    ; preds = %160
  %163 = fcmp olt double %145, %148
  br i1 %163, label %166, label %164

; <label>:164:                                    ; preds = %162
  %165 = fcmp oeq double %145, %148
  br i1 %165, label %166, label %170

; <label>:166:                                    ; preds = %164, %162, %160, %150
  %167 = phi i8 [ 0, %160 ], [ 0, %162 ], [ 1, %164 ], [ 1, %150 ]
  %168 = phi i8 [ 0, %160 ], [ 0, %162 ], [ 0, %164 ], [ 1, %150 ]
  %169 = phi i8 [ 0, %160 ], [ 1, %162 ], [ 0, %164 ], [ 1, %150 ]
  store i8 %167, i8* %30, align 1
  store i8 %168, i8* %21, align 1
  store i8 %169, i8* %14, align 1
  br label %170

; <label>:170:                                    ; preds = %166, %164
  %171 = phi i8 [ %167, %166 ], [ %102, %164 ]
  %172 = phi i8 [ %169, %166 ], [ %101, %164 ]
  store i8 0, i8* %39, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %27, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit144

routine_ucomisd__xmm0___xmm1.exit144:             ; preds = %170, %158
  %173 = phi i64 [ %.pre15, %158 ], [ %114, %170 ]
  %174 = phi i8 [ %.pre14, %158 ], [ %171, %170 ]
  %175 = phi i8 [ %.pre13, %158 ], [ %172, %170 ]
  %176 = phi i64 [ %.pre12, %158 ], [ %147, %170 ]
  %177 = phi %struct.Memory* [ %159, %158 ], [ %100, %170 ]
  %178 = or i8 %174, %175
  %179 = icmp ne i8 %178, 0
  %.v = select i1 %179, i64 21, i64 6
  %180 = add i64 %176, %.v
  %181 = add i64 %173, -8
  %182 = add i64 %180, 5
  store i64 %182, i64* %3, align 8
  %183 = inttoptr i64 %181 to float*
  %184 = load float, float* %183, align 4
  %185 = fpext float %184 to double
  store double %185, double* %110, align 1
  br i1 %179, label %block_.L_4280d0, label %block_4280c1

block_4280c1:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit144
  %186 = add i64 %173, -24
  %187 = add i64 %180, 10
  store i64 %187, i64* %3, align 8
  %188 = inttoptr i64 %186 to double*
  store double %185, double* %188, align 8
  %189 = load i64, i64* %3, align 8
  %190 = add i64 %189, 71
  store i64 %190, i64* %3, align 8
  %.pre28 = bitcast i8* %65 to i32*
  %.pre30 = bitcast i64* %67 to i32*
  %.pre32 = bitcast i8* %69 to i32*
  br label %block_.L_428112

block_.L_4280d0:                                  ; preds = %routine_ucomisd__xmm0___xmm1.exit144
  %191 = add i64 %173, -12
  %192 = add i64 %180, 10
  store i64 %192, i64* %3, align 8
  %193 = inttoptr i64 %191 to i32*
  %194 = load i32, i32* %193, align 4
  store i32 %194, i32* %120, align 1
  store float 0.000000e+00, float* %122, align 1
  store float 0.000000e+00, float* %124, align 1
  store float 0.000000e+00, float* %126, align 1
  %195 = add i64 %180, 15
  store i64 %195, i64* %3, align 8
  %196 = load <2 x float>, <2 x float>* %52, align 1
  %197 = load <2 x i32>, <2 x i32>* %130, align 1
  %198 = load float, float* %183, align 4
  %199 = extractelement <2 x float> %196, i32 0
  %200 = fsub float %199, %198
  store float %200, float* %119, align 1
  %201 = bitcast <2 x float> %196 to <2 x i32>
  %202 = extractelement <2 x i32> %201, i32 1
  store i32 %202, i32* %138, align 1
  %203 = extractelement <2 x i32> %197, i32 0
  store i32 %203, i32* %140, align 1
  %204 = extractelement <2 x i32> %197, i32 1
  store i32 %204, i32* %142, align 1
  %205 = load <2 x float>, <2 x float>* %52, align 1
  %206 = extractelement <2 x float> %205, i32 0
  %207 = fpext float %206 to double
  store double %207, double* %146, align 1
  %208 = add i64 %173, -32
  %209 = add i64 %180, 24
  store i64 %209, i64* %3, align 8
  %210 = inttoptr i64 %208 to double*
  store double %185, double* %210, align 8
  %211 = load i64, i64* %3, align 8
  %212 = bitcast %union.VectorReg* %47 to <2 x i32>*
  %213 = load <2 x i32>, <2 x i32>* %212, align 1
  %214 = load <2 x i32>, <2 x i32>* %130, align 1
  %215 = extractelement <2 x i32> %213, i32 0
  store i32 %215, i32* %64, align 1
  %216 = extractelement <2 x i32> %213, i32 1
  %217 = bitcast i8* %65 to i32*
  store i32 %216, i32* %217, align 1
  %218 = extractelement <2 x i32> %214, i32 0
  %219 = bitcast i64* %67 to i32*
  store i32 %218, i32* %219, align 1
  %220 = extractelement <2 x i32> %214, i32 1
  %221 = bitcast i8* %69 to i32*
  store i32 %220, i32* %221, align 1
  %222 = add i64 %211, -158920
  %223 = add i64 %211, 8
  %224 = load i64, i64* %6, align 8
  %225 = add i64 %224, -8
  %226 = inttoptr i64 %225 to i64*
  store i64 %223, i64* %226, align 8
  store i64 %225, i64* %6, align 8
  store i64 %222, i64* %3, align 8
  %227 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @exp to i64), %struct.Memory* %177)
  %228 = load i64, i64* %3, align 8
  %229 = add i64 %228, ptrtoint (%G_0x2c6e8__rip__type* @G_0x2c6e8__rip_ to i64)
  %230 = add i64 %228, 8
  store i64 %230, i64* %3, align 8
  %231 = inttoptr i64 %229 to double*
  %232 = load double, double* %231, align 8
  %233 = load double, double* %110, align 1
  %234 = fadd double %232, %233
  store double %234, double* %146, align 1
  store i64 0, i64* %123, align 1
  %.cast5 = bitcast double %234 to <2 x i32>
  %235 = extractelement <2 x i32> %.cast5, i32 0
  store i32 %235, i32* %64, align 1
  %236 = extractelement <2 x i32> %.cast5, i32 1
  store i32 %236, i32* %217, align 1
  store i32 0, i32* %219, align 1
  store i32 0, i32* %221, align 1
  %237 = add i64 %228, -158720
  %238 = add i64 %228, 20
  %239 = load i64, i64* %6, align 8
  %240 = add i64 %239, -8
  %241 = inttoptr i64 %240 to i64*
  store i64 %238, i64* %241, align 8
  store i64 %240, i64* %6, align 8
  store i64 %237, i64* %3, align 8
  %242 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @log to i64), %struct.Memory* %227)
  %243 = load i64, i64* %RBP.i, align 8
  %244 = add i64 %243, -32
  %245 = load i64, i64* %3, align 8
  %246 = add i64 %245, 5
  store i64 %246, i64* %3, align 8
  %247 = inttoptr i64 %244 to double*
  %248 = load double, double* %247, align 8
  %249 = load double, double* %110, align 1
  %250 = fadd double %248, %249
  store double %250, double* %146, align 1
  store i64 0, i64* %123, align 1
  %251 = add i64 %243, -24
  %252 = add i64 %245, 14
  store i64 %252, i64* %3, align 8
  %253 = inttoptr i64 %251 to double*
  store double %250, double* %253, align 8
  %.pre16 = load i64, i64* %3, align 8
  br label %block_.L_428112

block_.L_428112:                                  ; preds = %block_.L_4280d0, %block_4280c1
  %.pre-phi33 = phi i32* [ %221, %block_.L_4280d0 ], [ %.pre32, %block_4280c1 ]
  %.pre-phi31 = phi i32* [ %219, %block_.L_4280d0 ], [ %.pre30, %block_4280c1 ]
  %.pre-phi29 = phi i32* [ %217, %block_.L_4280d0 ], [ %.pre28, %block_4280c1 ]
  %254 = phi i64 [ %.pre16, %block_.L_4280d0 ], [ %190, %block_4280c1 ]
  %MEMORY.0 = phi %struct.Memory* [ %242, %block_.L_4280d0 ], [ %177, %block_4280c1 ]
  %255 = load i64, i64* %RBP.i, align 8
  %256 = add i64 %255, -24
  %257 = add i64 %254, 5
  store i64 %257, i64* %3, align 8
  %258 = inttoptr i64 %256 to i64*
  %259 = load i64, i64* %258, align 8
  store i64 %259, i64* %111, align 1
  store double 0.000000e+00, double* %112, align 1
  %.cast = bitcast i64 %259 to <2 x i32>
  %.cast3 = bitcast i64 %259 to double
  %260 = fptrunc double %.cast3 to float
  store float %260, float* %63, align 1
  %261 = extractelement <2 x i32> %.cast, i32 1
  store i32 %261, i32* %.pre-phi29, align 1
  store i32 0, i32* %.pre-phi31, align 1
  store i32 0, i32* %.pre-phi33, align 1
  %262 = add i64 %255, -4
  %263 = add i64 %254, 14
  store i64 %263, i64* %3, align 8
  %264 = load <2 x float>, <2 x float>* %43, align 1
  %265 = extractelement <2 x float> %264, i32 0
  %266 = inttoptr i64 %262 to float*
  store float %265, float* %266, align 4
  %267 = load i64, i64* %3, align 8
  %268 = add i64 %267, 132
  store i64 %268, i64* %3, align 8
  br label %block_.L_4281a4

block_.L_428125:                                  ; preds = %routine_ucomiss_MINUS0xc__rbp____xmm0.exit
  %269 = add i64 %105, ptrtoint (%G_0x2c7cb__rip__type* @G_0x2c7cb__rip_ to i64)
  %270 = add i64 %105, 8
  store i64 %270, i64* %3, align 8
  %271 = inttoptr i64 %269 to i64*
  %272 = load i64, i64* %271, align 8
  %273 = bitcast [32 x %union.VectorReg]* %40 to double*
  %274 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %40, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %272, i64* %274, align 1
  %275 = bitcast i64* %67 to double*
  store double 0.000000e+00, double* %275, align 1
  %276 = bitcast %union.VectorReg* %47 to i8*
  %277 = load i64, i64* %RBP.i, align 8
  %278 = add i64 %277, -12
  %279 = add i64 %105, 13
  store i64 %279, i64* %3, align 8
  %280 = inttoptr i64 %278 to i32*
  %281 = load i32, i32* %280, align 4
  %282 = bitcast %union.VectorReg* %47 to float*
  %283 = bitcast %union.VectorReg* %47 to i32*
  store i32 %281, i32* %283, align 1
  %284 = getelementptr inbounds i8, i8* %276, i64 4
  %285 = bitcast i8* %284 to float*
  store float 0.000000e+00, float* %285, align 1
  %286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %287 = bitcast i64* %286 to float*
  store float 0.000000e+00, float* %287, align 1
  %288 = getelementptr inbounds i8, i8* %276, i64 12
  %289 = bitcast i8* %288 to float*
  store float 0.000000e+00, float* %289, align 1
  %290 = add i64 %277, -8
  %291 = add i64 %105, 18
  store i64 %291, i64* %3, align 8
  %292 = load <2 x float>, <2 x float>* %52, align 1
  %293 = bitcast i64* %286 to <2 x i32>*
  %294 = load <2 x i32>, <2 x i32>* %293, align 1
  %295 = inttoptr i64 %290 to float*
  %296 = load float, float* %295, align 4
  %297 = extractelement <2 x float> %292, i32 0
  %298 = fsub float %297, %296
  store float %298, float* %282, align 1
  %299 = bitcast <2 x float> %292 to <2 x i32>
  %300 = extractelement <2 x i32> %299, i32 1
  %301 = bitcast i8* %284 to i32*
  store i32 %300, i32* %301, align 1
  %302 = extractelement <2 x i32> %294, i32 0
  %303 = bitcast i64* %286 to i32*
  store i32 %302, i32* %303, align 1
  %304 = extractelement <2 x i32> %294, i32 1
  %305 = bitcast i8* %288 to i32*
  store i32 %304, i32* %305, align 1
  %306 = load <2 x float>, <2 x float>* %52, align 1
  %307 = extractelement <2 x float> %306, i32 0
  %308 = fpext float %307 to double
  %309 = bitcast %union.VectorReg* %47 to double*
  store double %308, double* %309, align 1
  %310 = add i64 %105, 26
  store i64 %310, i64* %3, align 8
  %311 = bitcast i64 %272 to double
  %312 = fcmp uno double %308, %311
  br i1 %312, label %313, label %323

; <label>:313:                                    ; preds = %block_.L_428125
  %314 = fadd double %308, %311
  %315 = bitcast double %314 to i64
  %316 = and i64 %315, 9221120237041090560
  %317 = icmp eq i64 %316, 9218868437227405312
  %318 = and i64 %315, 2251799813685247
  %319 = icmp ne i64 %318, 0
  %320 = and i1 %317, %319
  br i1 %320, label %321, label %329

; <label>:321:                                    ; preds = %313
  %322 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %310, %struct.Memory* %100)
  %.pre17 = load i64, i64* %3, align 8
  %.pre18 = load i8, i8* %14, align 1
  %.pre19 = load i8, i8* %30, align 1
  %.pre20 = load i64, i64* %RBP.i, align 8
  br label %routine_ucomisd__xmm0___xmm1.exit

; <label>:323:                                    ; preds = %block_.L_428125
  %324 = fcmp ogt double %308, %311
  br i1 %324, label %329, label %325

; <label>:325:                                    ; preds = %323
  %326 = fcmp olt double %308, %311
  br i1 %326, label %329, label %327

; <label>:327:                                    ; preds = %325
  %328 = fcmp oeq double %308, %311
  br i1 %328, label %329, label %333

; <label>:329:                                    ; preds = %327, %325, %323, %313
  %330 = phi i8 [ 0, %323 ], [ 0, %325 ], [ 1, %327 ], [ 1, %313 ]
  %331 = phi i8 [ 0, %323 ], [ 0, %325 ], [ 0, %327 ], [ 1, %313 ]
  %332 = phi i8 [ 0, %323 ], [ 1, %325 ], [ 0, %327 ], [ 1, %313 ]
  store i8 %330, i8* %30, align 1
  store i8 %331, i8* %21, align 1
  store i8 %332, i8* %14, align 1
  br label %333

; <label>:333:                                    ; preds = %329, %327
  %334 = phi i8 [ %330, %329 ], [ %102, %327 ]
  %335 = phi i8 [ %332, %329 ], [ %101, %327 ]
  store i8 0, i8* %39, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %27, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit

routine_ucomisd__xmm0___xmm1.exit:                ; preds = %333, %321
  %336 = phi i64 [ %.pre20, %321 ], [ %277, %333 ]
  %337 = phi i8 [ %.pre19, %321 ], [ %334, %333 ]
  %338 = phi i8 [ %.pre18, %321 ], [ %335, %333 ]
  %339 = phi i64 [ %.pre17, %321 ], [ %310, %333 ]
  %340 = phi %struct.Memory* [ %322, %321 ], [ %100, %333 ]
  %341 = or i8 %337, %338
  %342 = icmp ne i8 %341, 0
  %.v34 = select i1 %342, i64 21, i64 6
  %343 = add i64 %339, %.v34
  %344 = add i64 %336, -12
  %345 = add i64 %343, 5
  store i64 %345, i64* %3, align 8
  %346 = inttoptr i64 %344 to float*
  %347 = load float, float* %346, align 4
  %348 = fpext float %347 to double
  store double %348, double* %273, align 1
  br i1 %342, label %block_.L_428154, label %block_428145

block_428145:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit
  %349 = add i64 %336, -40
  %350 = add i64 %343, 10
  store i64 %350, i64* %3, align 8
  %351 = inttoptr i64 %349 to double*
  store double %348, double* %351, align 8
  %352 = load i64, i64* %3, align 8
  %353 = add i64 %352, 71
  store i64 %353, i64* %3, align 8
  %.pre23 = bitcast i8* %65 to i32*
  %.pre24 = bitcast i64* %67 to i32*
  %.pre26 = bitcast i8* %69 to i32*
  br label %block_.L_428196

block_.L_428154:                                  ; preds = %routine_ucomisd__xmm0___xmm1.exit
  %354 = add i64 %336, -8
  %355 = add i64 %343, 10
  store i64 %355, i64* %3, align 8
  %356 = inttoptr i64 %354 to i32*
  %357 = load i32, i32* %356, align 4
  store i32 %357, i32* %283, align 1
  store float 0.000000e+00, float* %285, align 1
  store float 0.000000e+00, float* %287, align 1
  store float 0.000000e+00, float* %289, align 1
  %358 = add i64 %343, 15
  store i64 %358, i64* %3, align 8
  %359 = load <2 x float>, <2 x float>* %52, align 1
  %360 = load <2 x i32>, <2 x i32>* %293, align 1
  %361 = load float, float* %346, align 4
  %362 = extractelement <2 x float> %359, i32 0
  %363 = fsub float %362, %361
  store float %363, float* %282, align 1
  %364 = bitcast <2 x float> %359 to <2 x i32>
  %365 = extractelement <2 x i32> %364, i32 1
  store i32 %365, i32* %301, align 1
  %366 = extractelement <2 x i32> %360, i32 0
  store i32 %366, i32* %303, align 1
  %367 = extractelement <2 x i32> %360, i32 1
  store i32 %367, i32* %305, align 1
  %368 = load <2 x float>, <2 x float>* %52, align 1
  %369 = extractelement <2 x float> %368, i32 0
  %370 = fpext float %369 to double
  store double %370, double* %309, align 1
  %371 = add i64 %336, -48
  %372 = add i64 %343, 24
  store i64 %372, i64* %3, align 8
  %373 = inttoptr i64 %371 to double*
  store double %348, double* %373, align 8
  %374 = load i64, i64* %3, align 8
  %375 = bitcast %union.VectorReg* %47 to <2 x i32>*
  %376 = load <2 x i32>, <2 x i32>* %375, align 1
  %377 = load <2 x i32>, <2 x i32>* %293, align 1
  %378 = extractelement <2 x i32> %376, i32 0
  store i32 %378, i32* %64, align 1
  %379 = extractelement <2 x i32> %376, i32 1
  %380 = bitcast i8* %65 to i32*
  store i32 %379, i32* %380, align 1
  %381 = extractelement <2 x i32> %377, i32 0
  %382 = bitcast i64* %67 to i32*
  store i32 %381, i32* %382, align 1
  %383 = extractelement <2 x i32> %377, i32 1
  %384 = bitcast i8* %69 to i32*
  store i32 %383, i32* %384, align 1
  %385 = add i64 %374, -159052
  %386 = add i64 %374, 8
  %387 = load i64, i64* %6, align 8
  %388 = add i64 %387, -8
  %389 = inttoptr i64 %388 to i64*
  store i64 %386, i64* %389, align 8
  store i64 %388, i64* %6, align 8
  store i64 %385, i64* %3, align 8
  %390 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @exp to i64), %struct.Memory* %340)
  %391 = load i64, i64* %3, align 8
  %392 = add i64 %391, ptrtoint (%G_0x2c664__rip__type* @G_0x2c664__rip_ to i64)
  %393 = add i64 %391, 8
  store i64 %393, i64* %3, align 8
  %394 = inttoptr i64 %392 to double*
  %395 = load double, double* %394, align 8
  %396 = load double, double* %273, align 1
  %397 = fadd double %395, %396
  store double %397, double* %309, align 1
  store i64 0, i64* %286, align 1
  %.cast10 = bitcast double %397 to <2 x i32>
  %398 = extractelement <2 x i32> %.cast10, i32 0
  store i32 %398, i32* %64, align 1
  %399 = extractelement <2 x i32> %.cast10, i32 1
  store i32 %399, i32* %380, align 1
  store i32 0, i32* %382, align 1
  store i32 0, i32* %384, align 1
  %400 = add i64 %391, -158852
  %401 = add i64 %391, 20
  %402 = load i64, i64* %6, align 8
  %403 = add i64 %402, -8
  %404 = inttoptr i64 %403 to i64*
  store i64 %401, i64* %404, align 8
  store i64 %403, i64* %6, align 8
  store i64 %400, i64* %3, align 8
  %405 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @log to i64), %struct.Memory* %390)
  %406 = load i64, i64* %RBP.i, align 8
  %407 = add i64 %406, -48
  %408 = load i64, i64* %3, align 8
  %409 = add i64 %408, 5
  store i64 %409, i64* %3, align 8
  %410 = inttoptr i64 %407 to double*
  %411 = load double, double* %410, align 8
  %412 = load double, double* %273, align 1
  %413 = fadd double %411, %412
  store double %413, double* %309, align 1
  store i64 0, i64* %286, align 1
  %414 = add i64 %406, -40
  %415 = add i64 %408, 14
  store i64 %415, i64* %3, align 8
  %416 = inttoptr i64 %414 to double*
  store double %413, double* %416, align 8
  %.pre21 = load i64, i64* %3, align 8
  br label %block_.L_428196

block_.L_428196:                                  ; preds = %block_.L_428154, %block_428145
  %.pre-phi27 = phi i32* [ %384, %block_.L_428154 ], [ %.pre26, %block_428145 ]
  %.pre-phi25 = phi i32* [ %382, %block_.L_428154 ], [ %.pre24, %block_428145 ]
  %.pre-phi = phi i32* [ %380, %block_.L_428154 ], [ %.pre23, %block_428145 ]
  %417 = phi i64 [ %.pre21, %block_.L_428154 ], [ %353, %block_428145 ]
  %MEMORY.1 = phi %struct.Memory* [ %405, %block_.L_428154 ], [ %340, %block_428145 ]
  %418 = load i64, i64* %RBP.i, align 8
  %419 = add i64 %418, -40
  %420 = add i64 %417, 5
  store i64 %420, i64* %3, align 8
  %421 = inttoptr i64 %419 to i64*
  %422 = load i64, i64* %421, align 8
  store i64 %422, i64* %274, align 1
  store double 0.000000e+00, double* %275, align 1
  %.cast7 = bitcast i64 %422 to <2 x i32>
  %.cast8 = bitcast i64 %422 to double
  %423 = fptrunc double %.cast8 to float
  store float %423, float* %63, align 1
  %424 = extractelement <2 x i32> %.cast7, i32 1
  store i32 %424, i32* %.pre-phi, align 1
  store i32 0, i32* %.pre-phi25, align 1
  store i32 0, i32* %.pre-phi27, align 1
  %425 = add i64 %418, -4
  %426 = add i64 %417, 14
  store i64 %426, i64* %3, align 8
  %427 = load <2 x float>, <2 x float>* %43, align 1
  %428 = extractelement <2 x float> %427, i32 0
  %429 = inttoptr i64 %425 to float*
  store float %428, float* %429, align 4
  %.pre22 = load i64, i64* %3, align 8
  br label %block_.L_4281a4

block_.L_4281a4:                                  ; preds = %block_.L_428196, %block_.L_428112
  %430 = phi i64 [ %.pre22, %block_.L_428196 ], [ %268, %block_.L_428112 ]
  %MEMORY.2 = phi %struct.Memory* [ %MEMORY.1, %block_.L_428196 ], [ %MEMORY.0, %block_.L_428112 ]
  %431 = load i64, i64* %RBP.i, align 8
  %432 = add i64 %431, -4
  %433 = add i64 %430, 5
  store i64 %433, i64* %3, align 8
  %434 = inttoptr i64 %432 to i32*
  %435 = load i32, i32* %434, align 4
  store i32 %435, i32* %64, align 1
  store float 0.000000e+00, float* %66, align 1
  store float 0.000000e+00, float* %68, align 1
  store float 0.000000e+00, float* %70, align 1
  %436 = load i64, i64* %6, align 8
  %437 = add i64 %436, 48
  store i64 %437, i64* %6, align 8
  %438 = icmp ugt i64 %436, -49
  %439 = zext i1 %438 to i8
  store i8 %439, i8* %14, align 1
  %440 = trunc i64 %437 to i32
  %441 = and i32 %440, 255
  %442 = tail call i32 @llvm.ctpop.i32(i32 %441)
  %443 = trunc i32 %442 to i8
  %444 = and i8 %443, 1
  %445 = xor i8 %444, 1
  store i8 %445, i8* %21, align 1
  %446 = xor i64 %436, 16
  %447 = xor i64 %446, %437
  %448 = lshr i64 %447, 4
  %449 = trunc i64 %448 to i8
  %450 = and i8 %449, 1
  store i8 %450, i8* %27, align 1
  %451 = icmp eq i64 %437, 0
  %452 = zext i1 %451 to i8
  store i8 %452, i8* %30, align 1
  %453 = lshr i64 %437, 63
  %454 = trunc i64 %453 to i8
  store i8 %454, i8* %33, align 1
  %455 = lshr i64 %436, 63
  %456 = xor i64 %453, %455
  %457 = add nuw nsw i64 %456, %453
  %458 = icmp eq i64 %457, 2
  %459 = zext i1 %458 to i8
  store i8 %459, i8* %39, align 1
  %460 = add i64 %430, 10
  store i64 %460, i64* %3, align 8
  %461 = add i64 %436, 56
  %462 = inttoptr i64 %437 to i64*
  %463 = load i64, i64* %462, align 8
  store i64 %463, i64* %RBP.i, align 8
  store i64 %461, i64* %6, align 8
  %464 = add i64 %430, 11
  store i64 %464, i64* %3, align 8
  %465 = inttoptr i64 %461 to i64*
  %466 = load i64, i64* %465, align 8
  store i64 %466, i64* %3, align 8
  %467 = add i64 %436, 64
  store i64 %467, i64* %6, align 8
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
define %struct.Memory* @routine_subq__0x30___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -48
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 48
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8
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
define %struct.Memory* @routine_movss__xmm1__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12
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
define %struct.Memory* @routine_movss_MINUS0x8__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -8
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

define %struct.Memory* @routine_ucomiss_MINUS0xc__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  %12 = load float, float* %11, align 4
  %13 = fcmp uno float %10, %12
  br i1 %13, label %14, label %24

; <label>:14:                                     ; preds = %block_400488
  %15 = fadd float %10, %12
  %16 = bitcast float %15 to i32
  %17 = and i32 %16, 2143289344
  %18 = icmp eq i32 %17, 2139095040
  %19 = and i32 %16, 4194303
  %20 = icmp ne i32 %19, 0
  %21 = and i1 %18, %20
  br i1 %21, label %22, label %30

; <label>:22:                                     ; preds = %14
  %23 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %7, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_.exit

; <label>:24:                                     ; preds = %block_400488
  %25 = fcmp ogt float %10, %12
  br i1 %25, label %30, label %26

; <label>:26:                                     ; preds = %24
  %27 = fcmp olt float %10, %12
  br i1 %27, label %30, label %28

; <label>:28:                                     ; preds = %26
  %29 = fcmp oeq float %10, %12
  br i1 %29, label %30, label %37

; <label>:30:                                     ; preds = %28, %26, %24, %14
  %31 = phi i8 [ 0, %24 ], [ 0, %26 ], [ 1, %28 ], [ 1, %14 ]
  %32 = phi i8 [ 0, %24 ], [ 0, %26 ], [ 0, %28 ], [ 1, %14 ]
  %33 = phi i8 [ 0, %24 ], [ 1, %26 ], [ 0, %28 ], [ 1, %14 ]
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %32, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %33, i8* %36, align 1
  br label %37

; <label>:37:                                     ; preds = %30, %28
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %38, align 1
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %39, align 1
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %40, align 1
  br label %_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_.exit: ; preds = %37, %22
  %41 = phi %struct.Memory* [ %23, %22 ], [ %2, %37 ]
  ret %struct.Memory* %41
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jbe_.L_428125(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_0x2c84f__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x2c84f__rip__type* @G_0x2c84f__rip_ to i64)
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
define %struct.Memory* @routine_movss_MINUS0x8__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -8
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
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subss_MINUS0xc__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -12
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
  %17 = fsub float %16, %15
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
define %struct.Memory* @routine_cvtss2sd__xmm1___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = extractelement <2 x float> %7, i32 0
  %9 = fpext float %8 to double
  %10 = bitcast %union.VectorReg* %3 to double*
  store double %9, double* %10, align 1
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
define %struct.Memory* @routine_jbe_.L_4280d0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cvtss2sd_MINUS0x8__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8
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
define %struct.Memory* @routine_movsd__xmm0__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_428112(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_MINUS0xc__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -12
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
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subss_MINUS0x8__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -8
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
  %17 = fsub float %16, %15
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
define %struct.Memory* @routine_movsd__xmm0__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movaps__xmm1___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = bitcast [32 x %union.VectorReg]* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %4 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x i32>*
  %12 = load <2 x i32>, <2 x i32>* %11, align 1
  %13 = extractelement <2 x i32> %9, i32 0
  %14 = bitcast [32 x %union.VectorReg]* %3 to i32*
  store i32 %13, i32* %14, align 1
  %15 = extractelement <2 x i32> %9, i32 1
  %16 = getelementptr inbounds i8, i8* %5, i64 4
  %17 = bitcast i8* %16 to i32*
  store i32 %15, i32* %17, align 1
  %18 = extractelement <2 x i32> %12, i32 0
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %20 = bitcast i64* %19 to i32*
  store i32 %18, i32* %20, align 1
  %21 = extractelement <2 x i32> %12, i32 1
  %22 = getelementptr inbounds i8, i8* %5, i64 12
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.exp_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_0x2c6e8__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x2c6e8__rip__type* @G_0x2c6e8__rip_ to i64)
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd__xmm0___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast %union.VectorReg* %4 to double*
  %10 = load double, double* %9, align 1
  %11 = fadd double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.log_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_MINUS0x20__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm1__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x18__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
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
define %struct.Memory* @routine_movss__xmm0__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4
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
define %struct.Memory* @routine_jmpq_.L_4281a4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x2c7cb__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x2c7cb__rip__type* @G_0x2c7cb__rip_ to i64)
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
define %struct.Memory* @routine_jbe_.L_428154(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cvtss2sd_MINUS0xc__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12
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
define %struct.Memory* @routine_movsd__xmm0__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_428196(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x2c664__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x2c664__rip__type* @G_0x2c664__rip_ to i64)
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x30__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm1__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x28__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_MINUS0x4__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -4
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
define %struct.Memory* @routine_addq__0x30___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 48
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -49
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
