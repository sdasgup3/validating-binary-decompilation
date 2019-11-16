; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x2be8c__rip__type = type <{ [4 x i8] }>
%G_0x2be91__rip__type = type <{ [8 x i8] }>
%G_0x2beda__rip__type = type <{ [8 x i8] }>
%G_0x2bf4c__rip__type = type <{ [8 x i8] }>
%G_0x2bf85__rip__type = type <{ [8 x i8] }>
%G_0x2bfb2__rip__type = type <{ [8 x i8] }>
%G_0x2c034__rip__type = type <{ [4 x i8] }>
%G_0x2c036__rip__type = type <{ [8 x i8] }>
%G_0x2c046__rip__type = type <{ [8 x i8] }>
%G_0x2c073__rip__type = type <{ [8 x i8] }>
%G_0x2c11f__rip__type = type <{ [8 x i8] }>
%G_0x2c140__rip__type = type <{ [8 x i8] }>
%G_0x2c193__rip__type = type <{ [8 x i8] }>
%G__0x458473_type = type <{ [8 x i8] }>
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
@G_0x2be8c__rip_ = global %G_0x2be8c__rip__type zeroinitializer
@G_0x2be91__rip_ = global %G_0x2be91__rip__type zeroinitializer
@G_0x2beda__rip_ = global %G_0x2beda__rip__type zeroinitializer
@G_0x2bf4c__rip_ = global %G_0x2bf4c__rip__type zeroinitializer
@G_0x2bf85__rip_ = global %G_0x2bf85__rip__type zeroinitializer
@G_0x2bfb2__rip_ = global %G_0x2bfb2__rip__type zeroinitializer
@G_0x2c034__rip_ = global %G_0x2c034__rip__type zeroinitializer
@G_0x2c036__rip_ = global %G_0x2c036__rip__type zeroinitializer
@G_0x2c046__rip_ = global %G_0x2c046__rip__type zeroinitializer
@G_0x2c073__rip_ = global %G_0x2c073__rip__type zeroinitializer
@G_0x2c11f__rip_ = global %G_0x2c11f__rip__type zeroinitializer
@G_0x2c140__rip_ = global %G_0x2c140__rip__type zeroinitializer
@G_0x2c193__rip_ = global %G_0x2c193__rip__type zeroinitializer
@G__0x458473 = global %G__0x458473_type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @exp(i64)

declare extern_weak x86_64_sysvcc i64 @log(i64)

declare extern_weak x86_64_sysvcc i64 @pow(i64, i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @ext_sqrt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr

declare %struct.Memory* @sub_445400.sre_random(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_43ea10.Die(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @SampleGamma(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -120
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 112
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
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %42 = bitcast %union.VectorReg* %41 to i8*
  %43 = add i64 %10, add (i64 ptrtoint (%G_0x2c140__rip__type* @G_0x2c140__rip_ to i64), i64 7)
  %44 = add i64 %10, 15
  store i64 %44, i64* %3, align 8
  %45 = inttoptr i64 %43 to i64*
  %46 = load i64, i64* %45, align 8
  %47 = bitcast %union.VectorReg* %41 to double*
  %48 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %41, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %46, i64* %48, align 1
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %50 = bitcast i64* %49 to double*
  store double 0.000000e+00, double* %50, align 1
  %51 = add i64 %7, -16
  %52 = add i64 %10, 20
  store i64 %52, i64* %3, align 8
  %53 = bitcast [32 x %union.VectorReg]* %40 to <2 x float>*
  %54 = load <2 x float>, <2 x float>* %53, align 1
  %55 = extractelement <2 x float> %54, i32 0
  %56 = inttoptr i64 %51 to float*
  store float %55, float* %56, align 4
  %57 = bitcast [32 x %union.VectorReg]* %40 to i8*
  %58 = load i64, i64* %RBP.i, align 8
  %59 = add i64 %58, -8
  %60 = load i64, i64* %3, align 8
  %61 = add i64 %60, 5
  store i64 %61, i64* %3, align 8
  %62 = inttoptr i64 %59 to float*
  %63 = load float, float* %62, align 4
  %64 = fpext float %63 to double
  %65 = bitcast [32 x %union.VectorReg]* %40 to double*
  store double %64, double* %65, align 1
  %66 = add i64 %60, 9
  store i64 %66, i64* %3, align 8
  %67 = load double, double* %47, align 1
  %68 = fcmp uno double %64, %67
  br i1 %68, label %69, label %79

; <label>:69:                                     ; preds = %entry
  %70 = fadd double %64, %67
  %71 = bitcast double %70 to i64
  %72 = and i64 %71, 9221120237041090560
  %73 = icmp eq i64 %72, 9218868437227405312
  %74 = and i64 %71, 2251799813685247
  %75 = icmp ne i64 %74, 0
  %76 = and i1 %73, %75
  br i1 %76, label %77, label %85

; <label>:77:                                     ; preds = %69
  %78 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %66, %struct.Memory* %2)
  %.pre = load i64, i64* %3, align 8
  br label %routine_ucomisd__xmm1___xmm0.exit143

; <label>:79:                                     ; preds = %entry
  %80 = fcmp ogt double %64, %67
  br i1 %80, label %85, label %81

; <label>:81:                                     ; preds = %79
  %82 = fcmp olt double %64, %67
  br i1 %82, label %85, label %83

; <label>:83:                                     ; preds = %81
  %84 = fcmp oeq double %64, %67
  br i1 %84, label %85, label %89

; <label>:85:                                     ; preds = %83, %81, %79, %69
  %86 = phi i8 [ 0, %79 ], [ 0, %81 ], [ 1, %83 ], [ 1, %69 ]
  %87 = phi i8 [ 0, %79 ], [ 0, %81 ], [ 0, %83 ], [ 1, %69 ]
  %88 = phi i8 [ 0, %79 ], [ 1, %81 ], [ 0, %83 ], [ 1, %69 ]
  store i8 %86, i8* %30, align 1
  store i8 %87, i8* %21, align 1
  store i8 %88, i8* %14, align 1
  br label %89

; <label>:89:                                     ; preds = %85, %83
  store i8 0, i8* %39, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %27, align 1
  br label %routine_ucomisd__xmm1___xmm0.exit143

routine_ucomisd__xmm1___xmm0.exit143:             ; preds = %89, %77
  %90 = phi i64 [ %.pre, %77 ], [ %66, %89 ]
  %91 = phi %struct.Memory* [ %78, %77 ], [ %2, %89 ]
  %92 = load i8, i8* %14, align 1
  %93 = icmp ne i8 %92, 0
  %.v = select i1 %93, i64 348, i64 6
  %94 = add i64 %90, %.v
  store i64 %94, i64* %3, align 8
  %cmpBr_4286ae = icmp eq i8 %92, 1
  br i1 %cmpBr_4286ae, label %block_.L_42880a, label %block_4286b4

block_4286b4:                                     ; preds = %routine_ucomisd__xmm1___xmm0.exit143
  %95 = add i64 %94, 5
  %96 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %40, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %97 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %98 = bitcast i64* %97 to double*
  %99 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %100 = bitcast %union.VectorReg* %99 to i8*
  %101 = bitcast %union.VectorReg* %99 to double*
  %102 = bitcast %union.VectorReg* %41 to <2 x i32>*
  %103 = bitcast i64* %49 to <2 x i32>*
  %104 = bitcast [32 x %union.VectorReg]* %40 to i32*
  %105 = getelementptr inbounds i8, i8* %57, i64 4
  %106 = bitcast i8* %105 to i32*
  %107 = bitcast i64* %97 to i32*
  %108 = getelementptr inbounds i8, i8* %57, i64 12
  %109 = bitcast i8* %108 to i32*
  %110 = bitcast [32 x %union.VectorReg]* %40 to <2 x i32>*
  %111 = bitcast i64* %97 to <2 x i32>*
  %112 = bitcast [32 x %union.VectorReg]* %40 to float*
  %113 = bitcast %union.VectorReg* %41 to float*
  %114 = bitcast %union.VectorReg* %41 to i32*
  %115 = getelementptr inbounds i8, i8* %42, i64 4
  %116 = bitcast i8* %115 to float*
  %117 = bitcast i64* %49 to float*
  %118 = getelementptr inbounds i8, i8* %42, i64 12
  %119 = bitcast i8* %118 to float*
  %120 = bitcast i8* %105 to float*
  %121 = bitcast i64* %97 to float*
  %122 = bitcast i8* %108 to float*
  %123 = bitcast %union.VectorReg* %99 to i32*
  %124 = getelementptr inbounds i8, i8* %100, i64 4
  %125 = bitcast i8* %124 to i32*
  %126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %127 = bitcast i64* %126 to i32*
  %128 = getelementptr inbounds i8, i8* %100, i64 12
  %129 = bitcast i8* %128 to i32*
  %130 = bitcast %union.VectorReg* %99 to <2 x float>*
  %131 = bitcast i64* %126 to <2 x i32>*
  %132 = bitcast %union.VectorReg* %99 to float*
  %133 = bitcast %union.VectorReg* %41 to <2 x float>*
  %134 = bitcast i8* %115 to i32*
  %135 = bitcast i64* %49 to i32*
  %136 = bitcast i8* %118 to i32*
  %137 = bitcast %union.VectorReg* %99 to <2 x i32>*
  %138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i367 = getelementptr inbounds %union.anon, %union.anon* %138, i64 0, i32 0
  %139 = bitcast %union.anon* %138 to [2 x i32]*
  %140 = bitcast %union.anon* %138 to i32*
  %141 = getelementptr inbounds [2 x i32], [2 x i32]* %139, i64 0, i64 1
  %142 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %99, i64 0, i32 0, i32 0, i32 0, i64 0
  %143 = bitcast i64* %126 to double*
  %144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %145 = bitcast %union.VectorReg* %144 to i8*
  %146 = bitcast %union.VectorReg* %144 to float*
  %147 = bitcast %union.VectorReg* %144 to i32*
  %148 = getelementptr inbounds i8, i8* %145, i64 4
  %149 = bitcast i8* %148 to float*
  %150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %151 = bitcast i64* %150 to float*
  %152 = getelementptr inbounds i8, i8* %145, i64 12
  %153 = bitcast i8* %152 to float*
  %154 = bitcast %union.VectorReg* %144 to <2 x float>*
  %155 = bitcast i64* %150 to <2 x i32>*
  %156 = bitcast i8* %148 to i32*
  %157 = bitcast i64* %150 to i32*
  %158 = bitcast i8* %152 to i32*
  %159 = bitcast %union.VectorReg* %144 to double*
  %160 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
  %161 = bitcast %union.VectorReg* %160 to i8*
  %162 = bitcast %union.VectorReg* %160 to i32*
  %163 = getelementptr inbounds i8, i8* %161, i64 4
  %164 = bitcast i8* %163 to i32*
  %165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 1
  %166 = bitcast i64* %165 to i32*
  %167 = getelementptr inbounds i8, i8* %161, i64 12
  %168 = bitcast i8* %167 to i32*
  %169 = bitcast %union.VectorReg* %160 to double*
  br label %block_.L_4286b9

block_.L_4286b9:                                  ; preds = %block_.L_428805, %block_4286b4
  %storemerge = phi i64 [ %95, %block_4286b4 ], [ %533, %block_.L_428805 ]
  %MEMORY.0 = phi %struct.Memory* [ %91, %block_4286b4 ], [ %517, %block_.L_428805 ]
  %170 = add i64 %storemerge, ptrtoint (%G_0x2c11f__rip__type* @G_0x2c11f__rip_ to i64)
  %171 = add i64 %storemerge, 8
  store i64 %171, i64* %3, align 8
  %172 = inttoptr i64 %170 to i64*
  %173 = load i64, i64* %172, align 8
  store i64 %173, i64* %96, align 1
  store double 0.000000e+00, double* %98, align 1
  %174 = add i64 %storemerge, add (i64 ptrtoint (%G_0x2c11f__rip__type* @G_0x2c11f__rip_ to i64), i64 8)
  %175 = add i64 %storemerge, 16
  store i64 %175, i64* %3, align 8
  %176 = inttoptr i64 %174 to i64*
  %177 = load i64, i64* %176, align 8
  store i64 %177, i64* %48, align 1
  store double 0.000000e+00, double* %50, align 1
  %178 = load i64, i64* %RBP.i, align 8
  %179 = add i64 %178, -8
  %180 = add i64 %storemerge, 21
  store i64 %180, i64* %3, align 8
  %181 = inttoptr i64 %179 to float*
  %182 = load float, float* %181, align 4
  %183 = fpext float %182 to double
  store double %183, double* %101, align 1
  %184 = bitcast i64 %177 to double
  %185 = fmul double %183, %184
  %186 = bitcast i64 %173 to double
  %187 = fsub double %185, %186
  store double %187, double* %47, align 1
  store i64 0, i64* %49, align 1
  %.cast = bitcast double %187 to <2 x i32>
  %188 = extractelement <2 x i32> %.cast, i32 0
  store i32 %188, i32* %104, align 1
  %189 = extractelement <2 x i32> %.cast, i32 1
  store i32 %189, i32* %106, align 1
  store i32 0, i32* %107, align 1
  store i32 0, i32* %109, align 1
  %190 = add i64 %storemerge, -159689
  %191 = add i64 %storemerge, 37
  %192 = load i64, i64* %6, align 8
  %193 = add i64 %192, -8
  %194 = inttoptr i64 %193 to i64*
  store i64 %191, i64* %194, align 8
  store i64 %193, i64* %6, align 8
  store i64 %190, i64* %3, align 8
  %call2_4286d9 = tail call %struct.Memory* @ext_sqrt(%struct.State* nonnull %0, i64 %190, %struct.Memory* %MEMORY.0)
  %195 = load i64, i64* %3, align 8
  %196 = load <2 x i32>, <2 x i32>* %110, align 1
  %197 = load <2 x i32>, <2 x i32>* %111, align 1
  %.cast6 = bitcast <2 x i32> %196 to double
  %198 = fptrunc double %.cast6 to float
  store float %198, float* %112, align 1
  %199 = extractelement <2 x i32> %196, i32 1
  store i32 %199, i32* %106, align 1
  %200 = extractelement <2 x i32> %197, i32 0
  store i32 %200, i32* %107, align 1
  %201 = extractelement <2 x i32> %197, i32 1
  store i32 %201, i32* %109, align 1
  %202 = load i64, i64* %RBP.i, align 8
  %203 = add i64 %202, -28
  %204 = add i64 %195, 9
  store i64 %204, i64* %3, align 8
  %205 = load <2 x float>, <2 x float>* %53, align 1
  %206 = extractelement <2 x float> %205, i32 0
  %207 = inttoptr i64 %203 to float*
  store float %206, float* %207, align 4
  %208 = load i64, i64* %3, align 8
  %209 = add i64 %208, 118041
  %210 = add i64 %208, 5
  %211 = load i64, i64* %6, align 8
  %212 = add i64 %211, -8
  %213 = inttoptr i64 %212 to i64*
  store i64 %210, i64* %213, align 8
  store i64 %212, i64* %6, align 8
  store i64 %209, i64* %3, align 8
  %call2_4286e7 = tail call %struct.Memory* @sub_445400.sre_random(%struct.State* nonnull %0, i64 %209, %struct.Memory* %call2_4286d9)
  %214 = load i64, i64* %3, align 8
  %215 = add i64 %214, ptrtoint (%G_0x2c034__rip__type* @G_0x2c034__rip_ to i64)
  %216 = add i64 %214, 8
  store i64 %216, i64* %3, align 8
  %217 = inttoptr i64 %215 to i32*
  %218 = load i32, i32* %217, align 4
  store i32 %218, i32* %114, align 1
  store float 0.000000e+00, float* %116, align 1
  store float 0.000000e+00, float* %117, align 1
  store float 0.000000e+00, float* %119, align 1
  %219 = load <2 x i32>, <2 x i32>* %110, align 1
  %220 = load <2 x i32>, <2 x i32>* %111, align 1
  %.cast7 = bitcast <2 x i32> %219 to double
  %221 = fptrunc double %.cast7 to float
  store float %221, float* %112, align 1
  %222 = extractelement <2 x i32> %219, i32 1
  store i32 %222, i32* %106, align 1
  %223 = extractelement <2 x i32> %220, i32 0
  store i32 %223, i32* %107, align 1
  %224 = extractelement <2 x i32> %220, i32 1
  store i32 %224, i32* %109, align 1
  %225 = load i64, i64* %RBP.i, align 8
  %226 = add i64 %225, -12
  %227 = add i64 %214, 17
  store i64 %227, i64* %3, align 8
  %228 = load <2 x float>, <2 x float>* %53, align 1
  %229 = extractelement <2 x float> %228, i32 0
  %230 = inttoptr i64 %226 to float*
  store float %229, float* %230, align 4
  %231 = load i64, i64* %RBP.i, align 8
  %232 = add i64 %231, -12
  %233 = load i64, i64* %3, align 8
  %234 = add i64 %233, 5
  store i64 %234, i64* %3, align 8
  %235 = inttoptr i64 %232 to i32*
  %236 = load i32, i32* %235, align 4
  store i32 %236, i32* %104, align 1
  store float 0.000000e+00, float* %120, align 1
  store float 0.000000e+00, float* %121, align 1
  store float 0.000000e+00, float* %122, align 1
  %237 = load <2 x i32>, <2 x i32>* %102, align 1
  %238 = load <2 x i32>, <2 x i32>* %103, align 1
  %239 = extractelement <2 x i32> %237, i32 0
  store i32 %239, i32* %123, align 1
  %240 = extractelement <2 x i32> %237, i32 1
  store i32 %240, i32* %125, align 1
  %241 = extractelement <2 x i32> %238, i32 0
  store i32 %241, i32* %127, align 1
  %242 = extractelement <2 x i32> %238, i32 1
  store i32 %242, i32* %129, align 1
  %243 = add i64 %233, 13
  store i64 %243, i64* %3, align 8
  %244 = load <2 x float>, <2 x float>* %130, align 1
  %245 = load <2 x i32>, <2 x i32>* %131, align 1
  %246 = inttoptr i64 %232 to float*
  %247 = load float, float* %246, align 4
  %248 = extractelement <2 x float> %244, i32 0
  %249 = fsub float %248, %247
  store float %249, float* %132, align 1
  %250 = bitcast <2 x float> %244 to <2 x i32>
  %251 = extractelement <2 x i32> %250, i32 1
  store i32 %251, i32* %125, align 1
  %252 = extractelement <2 x i32> %245, i32 0
  store i32 %252, i32* %127, align 1
  %253 = extractelement <2 x i32> %245, i32 1
  store i32 %253, i32* %129, align 1
  %254 = load <2 x float>, <2 x float>* %53, align 1
  %255 = load <2 x i32>, <2 x i32>* %111, align 1
  %256 = load <2 x float>, <2 x float>* %130, align 1
  %257 = extractelement <2 x float> %254, i32 0
  %258 = extractelement <2 x float> %256, i32 0
  %259 = fdiv float %257, %258
  store float %259, float* %112, align 1
  %260 = bitcast <2 x float> %254 to <2 x i32>
  %261 = extractelement <2 x i32> %260, i32 1
  store i32 %261, i32* %106, align 1
  %262 = extractelement <2 x i32> %255, i32 0
  store i32 %262, i32* %107, align 1
  %263 = extractelement <2 x i32> %255, i32 1
  store i32 %263, i32* %109, align 1
  %264 = add i64 %231, -16
  %265 = add i64 %233, 22
  store i64 %265, i64* %3, align 8
  %266 = load <2 x float>, <2 x float>* %53, align 1
  %267 = extractelement <2 x float> %266, i32 0
  %268 = inttoptr i64 %264 to float*
  store float %267, float* %268, align 4
  %269 = load i64, i64* %RBP.i, align 8
  %270 = add i64 %269, -8
  %271 = load i64, i64* %3, align 8
  %272 = add i64 %271, 5
  store i64 %272, i64* %3, align 8
  %273 = inttoptr i64 %270 to float*
  %274 = load float, float* %273, align 4
  %275 = fpext float %274 to double
  store double %275, double* %65, align 1
  %276 = add i64 %269, -16
  %277 = add i64 %271, 10
  store i64 %277, i64* %3, align 8
  %278 = inttoptr i64 %276 to float*
  %279 = load float, float* %278, align 4
  %280 = fpext float %279 to double
  store double %280, double* %101, align 1
  %281 = add i64 %269, -28
  %282 = add i64 %271, 15
  store i64 %282, i64* %3, align 8
  %283 = load <2 x float>, <2 x float>* %133, align 1
  %284 = load <2 x i32>, <2 x i32>* %103, align 1
  %285 = inttoptr i64 %281 to float*
  %286 = load float, float* %285, align 4
  %287 = extractelement <2 x float> %283, i32 0
  %288 = fdiv float %287, %286
  store float %288, float* %113, align 1
  %289 = bitcast <2 x float> %283 to <2 x i32>
  %290 = extractelement <2 x i32> %289, i32 1
  store i32 %290, i32* %134, align 1
  %291 = extractelement <2 x i32> %284, i32 0
  store i32 %291, i32* %135, align 1
  %292 = extractelement <2 x i32> %284, i32 1
  store i32 %292, i32* %136, align 1
  %293 = load <2 x float>, <2 x float>* %133, align 1
  %294 = extractelement <2 x float> %293, i32 0
  %295 = fpext float %294 to double
  store double %295, double* %47, align 1
  %296 = add i64 %269, -40
  %297 = add i64 %271, 24
  store i64 %297, i64* %3, align 8
  %298 = inttoptr i64 %296 to double*
  store double %275, double* %298, align 8
  %299 = load i64, i64* %3, align 8
  %300 = load <2 x i32>, <2 x i32>* %137, align 1
  %301 = load <2 x i32>, <2 x i32>* %131, align 1
  %302 = extractelement <2 x i32> %300, i32 0
  store i32 %302, i32* %104, align 1
  %303 = extractelement <2 x i32> %300, i32 1
  store i32 %303, i32* %106, align 1
  %304 = extractelement <2 x i32> %301, i32 0
  store i32 %304, i32* %107, align 1
  %305 = extractelement <2 x i32> %301, i32 1
  store i32 %305, i32* %109, align 1
  %306 = add i64 %299, -160331
  %307 = add i64 %299, 8
  %308 = load i64, i64* %6, align 8
  %309 = add i64 %308, -8
  %310 = inttoptr i64 %309 to i64*
  store i64 %307, i64* %310, align 8
  store i64 %309, i64* %6, align 8
  store i64 %306, i64* %3, align 8
  %311 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64)* @pow to i64), %struct.Memory* %call2_4286e7)
  %312 = load i64, i64* %RBP.i, align 8
  %313 = add i64 %312, -40
  %314 = load i64, i64* %3, align 8
  %315 = add i64 %314, 5
  store i64 %315, i64* %3, align 8
  %316 = inttoptr i64 %313 to double*
  %317 = load double, double* %316, align 8
  %318 = load double, double* %65, align 1
  %319 = fmul double %317, %318
  store double %319, double* %47, align 1
  store i64 0, i64* %49, align 1
  %.cast9 = bitcast double %318 to <2 x i32>
  %320 = load <2 x i32>, <2 x i32>* %111, align 1
  %321 = fptrunc double %319 to float
  store float %321, float* %112, align 1
  %322 = extractelement <2 x i32> %.cast9, i32 1
  store i32 %322, i32* %106, align 1
  %323 = extractelement <2 x i32> %320, i32 0
  store i32 %323, i32* %107, align 1
  %324 = extractelement <2 x i32> %320, i32 1
  store i32 %324, i32* %109, align 1
  %325 = add i64 %312, -20
  %326 = add i64 %314, 18
  store i64 %326, i64* %3, align 8
  %327 = load <2 x float>, <2 x float>* %53, align 1
  %328 = extractelement <2 x float> %327, i32 0
  %329 = inttoptr i64 %325 to float*
  store float %328, float* %329, align 4
  %330 = load i64, i64* %RBP.i, align 8
  %331 = add i64 %330, -20
  %332 = load i64, i64* %3, align 8
  %333 = add i64 %332, 5
  store i64 %333, i64* %3, align 8
  %334 = inttoptr i64 %331 to i32*
  %335 = load i32, i32* %334, align 4
  store i32 %335, i32* %104, align 1
  store float 0.000000e+00, float* %120, align 1
  %336 = load i64, i64* %96, align 1
  %337 = trunc i64 %336 to i32
  store i32 %337, i32* %140, align 1
  store i32 0, i32* %141, align 1
  %338 = load i64, i64* %RAX.i367, align 8
  %339 = xor i64 %338, -2147483648
  %340 = trunc i64 %339 to i32
  %341 = and i64 %339, 4294967295
  store i64 %341, i64* %RAX.i367, align 8
  store i8 0, i8* %14, align 1
  %342 = and i32 %340, 255
  %343 = tail call i32 @llvm.ctpop.i32(i32 %342)
  %344 = trunc i32 %343 to i8
  %345 = and i8 %344, 1
  %346 = xor i8 %345, 1
  store i8 %346, i8* %21, align 1
  %347 = icmp eq i32 %340, 0
  %348 = zext i1 %347 to i8
  store i8 %348, i8* %30, align 1
  %349 = lshr i32 %340, 31
  %350 = trunc i32 %349 to i8
  store i8 %350, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %351 = trunc i64 %339 to i32
  store i32 %351, i32* %104, align 1
  store i32 0, i32* %106, align 1
  store i32 0, i32* %107, align 1
  store i32 0, i32* %109, align 1
  %352 = add i64 %330, -8
  %353 = add i64 %332, 23
  store i64 %353, i64* %3, align 8
  %354 = load <2 x float>, <2 x float>* %53, align 1
  %355 = load <2 x i32>, <2 x i32>* %111, align 1
  %356 = inttoptr i64 %352 to float*
  %357 = load float, float* %356, align 4
  %358 = extractelement <2 x float> %354, i32 0
  %359 = fadd float %358, %357
  store float %359, float* %112, align 1
  %360 = bitcast <2 x float> %354 to <2 x i32>
  %361 = extractelement <2 x i32> %360, i32 1
  store i32 %361, i32* %106, align 1
  %362 = extractelement <2 x i32> %355, i32 0
  store i32 %362, i32* %107, align 1
  %363 = extractelement <2 x i32> %355, i32 1
  store i32 %363, i32* %109, align 1
  %364 = load <2 x float>, <2 x float>* %53, align 1
  %365 = extractelement <2 x float> %364, i32 0
  %366 = fpext float %365 to double
  store double %366, double* %65, align 1
  %367 = add i64 %332, -160549
  %368 = add i64 %332, 32
  %369 = load i64, i64* %6, align 8
  %370 = add i64 %369, -8
  %371 = inttoptr i64 %370 to i64*
  store i64 %368, i64* %371, align 8
  store i64 %370, i64* %6, align 8
  store i64 %367, i64* %3, align 8
  %372 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @exp to i64), %struct.Memory* %311)
  %373 = load i64, i64* %3, align 8
  %374 = add i64 %373, ptrtoint (%G_0x2c073__rip__type* @G_0x2c073__rip_ to i64)
  %375 = add i64 %373, 8
  store i64 %375, i64* %3, align 8
  %376 = inttoptr i64 %374 to i64*
  %377 = load i64, i64* %376, align 8
  store i64 %377, i64* %48, align 1
  store double 0.000000e+00, double* %50, align 1
  %378 = add i64 %373, add (i64 ptrtoint (%G_0x2c193__rip__type* @G_0x2c193__rip_ to i64), i64 8)
  %379 = add i64 %373, 16
  store i64 %379, i64* %3, align 8
  %380 = inttoptr i64 %378 to double*
  %381 = load double, double* %380, align 8
  %382 = load double, double* %65, align 1
  %383 = fmul double %381, %382
  store double %383, double* %101, align 1
  store i64 0, i64* %126, align 1
  %384 = load i64, i64* %RBP.i, align 8
  %385 = add i64 %384, -16
  %386 = add i64 %373, 25
  store i64 %386, i64* %3, align 8
  %387 = inttoptr i64 %385 to float*
  %388 = load float, float* %387, align 4
  %389 = fpext float %388 to double
  store double %389, double* %65, align 1
  %390 = add i64 %384, -8
  %391 = add i64 %373, 30
  store i64 %391, i64* %3, align 8
  %392 = inttoptr i64 %390 to i32*
  %393 = load i32, i32* %392, align 4
  store i32 %393, i32* %147, align 1
  store float 0.000000e+00, float* %149, align 1
  store float 0.000000e+00, float* %151, align 1
  store float 0.000000e+00, float* %153, align 1
  %394 = add i64 %384, -28
  %395 = add i64 %373, 35
  store i64 %395, i64* %3, align 8
  %396 = load <2 x float>, <2 x float>* %154, align 1
  %397 = load <2 x i32>, <2 x i32>* %155, align 1
  %398 = inttoptr i64 %394 to float*
  %399 = load float, float* %398, align 4
  %400 = extractelement <2 x float> %396, i32 0
  %401 = fdiv float %400, %399
  store float %401, float* %146, align 1
  %402 = bitcast <2 x float> %396 to <2 x i32>
  %403 = extractelement <2 x i32> %402, i32 1
  store i32 %403, i32* %156, align 1
  %404 = extractelement <2 x i32> %397, i32 0
  store i32 %404, i32* %157, align 1
  %405 = extractelement <2 x i32> %397, i32 1
  store i32 %405, i32* %158, align 1
  %406 = load <2 x float>, <2 x float>* %154, align 1
  %407 = extractelement <2 x float> %406, i32 0
  %408 = fpext float %407 to double
  store double %408, double* %159, align 1
  %409 = bitcast i64 %377 to double
  %410 = fadd double %408, %409
  store double %410, double* %47, align 1
  store i64 0, i64* %49, align 1
  %411 = add i64 %384, -48
  %412 = add i64 %373, 48
  store i64 %412, i64* %3, align 8
  %413 = inttoptr i64 %411 to double*
  store double %383, double* %413, align 8
  %414 = load i64, i64* %3, align 8
  %415 = add i64 %414, -160437
  %416 = add i64 %414, 5
  %417 = load i64, i64* %6, align 8
  %418 = add i64 %417, -8
  %419 = inttoptr i64 %418 to i64*
  store i64 %416, i64* %419, align 8
  store i64 %418, i64* %6, align 8
  store i64 %415, i64* %3, align 8
  %420 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64)* @pow to i64), %struct.Memory* %372)
  %421 = load i64, i64* %3, align 8
  %422 = add i64 %421, ptrtoint (%G_0x2c046__rip__type* @G_0x2c046__rip_ to i64)
  %423 = add i64 %421, 8
  store i64 %423, i64* %3, align 8
  %424 = inttoptr i64 %422 to i64*
  %425 = load i64, i64* %424, align 8
  store i64 %425, i64* %48, align 1
  store double 0.000000e+00, double* %50, align 1
  %426 = add i64 %421, add (i64 ptrtoint (%G_0x2c036__rip__type* @G_0x2c036__rip_ to i64), i64 8)
  %427 = add i64 %421, 16
  store i64 %427, i64* %3, align 8
  %428 = inttoptr i64 %426 to i64*
  %429 = load i64, i64* %428, align 8
  store i64 %429, i64* %142, align 1
  store double 0.000000e+00, double* %143, align 1
  %430 = load i64, i64* %RBP.i, align 8
  %431 = add i64 %430, -48
  %432 = add i64 %421, 21
  store i64 %432, i64* %3, align 8
  %433 = inttoptr i64 %431 to double*
  %434 = load double, double* %433, align 8
  %435 = load double, double* %65, align 1
  %436 = fmul double %434, %435
  store double %436, double* %159, align 1
  store i64 0, i64* %150, align 1
  %437 = add i64 %430, -16
  %438 = add i64 %421, 30
  store i64 %438, i64* %3, align 8
  %439 = inttoptr i64 %437 to float*
  %440 = load float, float* %439, align 4
  %441 = fpext float %440 to double
  %442 = bitcast i64 %429 to <2 x i32>
  %443 = extractelement <2 x i32> %442, i32 0
  store i32 %443, i32* %162, align 1
  %444 = extractelement <2 x i32> %442, i32 1
  store i32 %444, i32* %164, align 1
  store i32 0, i32* %166, align 1
  store i32 0, i32* %168, align 1
  %445 = load double, double* %169, align 1
  %446 = fdiv double %445, %441
  store double %446, double* %169, align 1
  %447 = bitcast i64 %429 to double
  %448 = fadd double %447, %446
  store double %448, double* %101, align 1
  store i64 0, i64* %126, align 1
  %.cast12 = bitcast double %448 to <2 x i32>
  %449 = extractelement <2 x i32> %.cast12, i32 0
  store i32 %449, i32* %104, align 1
  %450 = extractelement <2 x i32> %.cast12, i32 1
  store i32 %450, i32* %106, align 1
  store i32 0, i32* %107, align 1
  store i32 0, i32* %109, align 1
  %451 = add i64 %430, -56
  %452 = add i64 %421, 49
  store i64 %452, i64* %3, align 8
  %453 = inttoptr i64 %451 to double*
  store double %436, double* %453, align 8
  %454 = load i64, i64* %3, align 8
  %455 = add i64 %454, -160491
  %456 = add i64 %454, 5
  %457 = load i64, i64* %6, align 8
  %458 = add i64 %457, -8
  %459 = inttoptr i64 %458 to i64*
  store i64 %456, i64* %459, align 8
  store i64 %458, i64* %6, align 8
  store i64 %455, i64* %3, align 8
  %460 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64)* @pow to i64), %struct.Memory* %420)
  %461 = load i64, i64* %RBP.i, align 8
  %462 = add i64 %461, -56
  %463 = load i64, i64* %3, align 8
  %464 = add i64 %463, 5
  store i64 %464, i64* %3, align 8
  %465 = inttoptr i64 %462 to double*
  %466 = load double, double* %465, align 8
  %467 = load double, double* %65, align 1
  %468 = fmul double %466, %467
  store double %468, double* %47, align 1
  store i64 0, i64* %49, align 1
  %.cast15 = bitcast double %467 to <2 x i32>
  %469 = load <2 x i32>, <2 x i32>* %111, align 1
  %470 = fptrunc double %468 to float
  store float %470, float* %112, align 1
  %471 = extractelement <2 x i32> %.cast15, i32 1
  store i32 %471, i32* %106, align 1
  %472 = extractelement <2 x i32> %469, i32 0
  store i32 %472, i32* %107, align 1
  %473 = extractelement <2 x i32> %469, i32 1
  store i32 %473, i32* %109, align 1
  %474 = add i64 %461, -24
  %475 = add i64 %463, 18
  store i64 %475, i64* %3, align 8
  %476 = load <2 x float>, <2 x float>* %53, align 1
  %477 = extractelement <2 x float> %476, i32 0
  %478 = inttoptr i64 %474 to float*
  store float %477, float* %478, align 4
  %479 = load i64, i64* %3, align 8
  %480 = add i64 %479, 117790
  %481 = add i64 %479, 5
  %482 = load i64, i64* %6, align 8
  %483 = add i64 %482, -8
  %484 = inttoptr i64 %483 to i64*
  store i64 %481, i64* %484, align 8
  store i64 %483, i64* %6, align 8
  store i64 %480, i64* %3, align 8
  %call2_4287e2 = tail call %struct.Memory* @sub_445400.sre_random(%struct.State* nonnull %0, i64 %480, %struct.Memory* %460)
  %485 = load i64, i64* %RBP.i, align 8
  %486 = add i64 %485, -24
  %487 = load i64, i64* %3, align 8
  %488 = add i64 %487, 5
  store i64 %488, i64* %3, align 8
  %489 = inttoptr i64 %486 to float*
  %490 = load float, float* %489, align 4
  %491 = fpext float %490 to double
  store double %491, double* %47, align 1
  %492 = add i64 %487, 9
  store i64 %492, i64* %3, align 8
  %493 = load double, double* %65, align 1
  %494 = fcmp uno double %491, %493
  br i1 %494, label %495, label %505

; <label>:495:                                    ; preds = %block_.L_4286b9
  %496 = fadd double %491, %493
  %497 = bitcast double %496 to i64
  %498 = and i64 %497, 9221120237041090560
  %499 = icmp eq i64 %498, 9218868437227405312
  %500 = and i64 %497, 2251799813685247
  %501 = icmp ne i64 %500, 0
  %502 = and i1 %499, %501
  br i1 %502, label %503, label %511

; <label>:503:                                    ; preds = %495
  %504 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %492, %struct.Memory* %call2_4287e2)
  %.pre44 = load i64, i64* %3, align 8
  br label %routine_ucomisd__xmm0___xmm1.exit274

; <label>:505:                                    ; preds = %block_.L_4286b9
  %506 = fcmp ogt double %491, %493
  br i1 %506, label %511, label %507

; <label>:507:                                    ; preds = %505
  %508 = fcmp olt double %491, %493
  br i1 %508, label %511, label %509

; <label>:509:                                    ; preds = %507
  %510 = fcmp oeq double %491, %493
  br i1 %510, label %511, label %515

; <label>:511:                                    ; preds = %509, %507, %505, %495
  %512 = phi i8 [ 0, %505 ], [ 0, %507 ], [ 1, %509 ], [ 1, %495 ]
  %513 = phi i8 [ 0, %505 ], [ 0, %507 ], [ 0, %509 ], [ 1, %495 ]
  %514 = phi i8 [ 0, %505 ], [ 1, %507 ], [ 0, %509 ], [ 1, %495 ]
  store i8 %512, i8* %30, align 1
  store i8 %513, i8* %21, align 1
  store i8 %514, i8* %14, align 1
  br label %515

; <label>:515:                                    ; preds = %511, %509
  store i8 0, i8* %39, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %27, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit274

routine_ucomisd__xmm0___xmm1.exit274:             ; preds = %515, %503
  %516 = phi i64 [ %.pre44, %503 ], [ %492, %515 ]
  %517 = phi %struct.Memory* [ %504, %503 ], [ %call2_4287e2, %515 ]
  %518 = load i8, i8* %14, align 1
  %519 = icmp ne i8 %518, 0
  %.v65 = select i1 %519, i64 21, i64 6
  %520 = add i64 %516, %.v65
  store i64 %520, i64* %3, align 8
  %cmpBr_4287f0 = icmp eq i8 %518, 1
  br i1 %cmpBr_4287f0, label %block_.L_428805, label %block_4287f6

block_4287f6:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit274
  %521 = load i64, i64* %RBP.i, align 8
  %522 = add i64 %521, -20
  %523 = add i64 %520, 5
  store i64 %523, i64* %3, align 8
  %524 = inttoptr i64 %522 to i32*
  %525 = load i32, i32* %524, align 4
  store i32 %525, i32* %104, align 1
  store float 0.000000e+00, float* %120, align 1
  store float 0.000000e+00, float* %121, align 1
  store float 0.000000e+00, float* %122, align 1
  %526 = add i64 %521, -4
  %527 = add i64 %520, 10
  store i64 %527, i64* %3, align 8
  %528 = load <2 x float>, <2 x float>* %53, align 1
  %529 = extractelement <2 x float> %528, i32 0
  %530 = inttoptr i64 %526 to float*
  store float %529, float* %530, align 4
  %531 = load i64, i64* %3, align 8
  %532 = add i64 %531, 486
  store i64 %532, i64* %3, align 8
  br label %block_.L_4289e6

block_.L_428805:                                  ; preds = %routine_ucomisd__xmm0___xmm1.exit274
  %533 = add i64 %520, -332
  %534 = add i64 %520, 5
  store i64 %534, i64* %3, align 8
  br label %block_.L_4286b9

block_.L_42880a:                                  ; preds = %routine_ucomisd__xmm1___xmm0.exit143
  %535 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %40, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %536 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %537 = bitcast [32 x %union.VectorReg]* %40 to i32*
  %538 = getelementptr inbounds i8, i8* %57, i64 4
  %539 = bitcast i8* %538 to i32*
  %540 = bitcast i64* %536 to i32*
  %541 = getelementptr inbounds i8, i8* %57, i64 12
  %542 = bitcast i8* %541 to i32*
  %543 = bitcast [32 x %union.VectorReg]* %40 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %543, align 1
  %544 = load i64, i64* %RBP.i, align 8
  %545 = add i64 %544, -8
  %546 = add i64 %94, 8
  store i64 %546, i64* %3, align 8
  %547 = inttoptr i64 %545 to float*
  %548 = load float, float* %547, align 4
  %549 = fpext float %548 to double
  store double %549, double* %47, align 1
  %550 = add i64 %94, 12
  store i64 %550, i64* %3, align 8
  %551 = load double, double* %65, align 1
  %552 = fcmp uno double %549, %551
  br i1 %552, label %553, label %563

; <label>:553:                                    ; preds = %block_.L_42880a
  %554 = fadd double %549, %551
  %555 = bitcast double %554 to i64
  %556 = and i64 %555, 9221120237041090560
  %557 = icmp eq i64 %556, 9218868437227405312
  %558 = and i64 %555, 2251799813685247
  %559 = icmp ne i64 %558, 0
  %560 = and i1 %557, %559
  br i1 %560, label %561, label %569

; <label>:561:                                    ; preds = %553
  %562 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %550, %struct.Memory* %91)
  %.pre45 = load i64, i64* %3, align 8
  %.pre46 = load i8, i8* %14, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit

; <label>:563:                                    ; preds = %block_.L_42880a
  %564 = fcmp ogt double %549, %551
  br i1 %564, label %569, label %565

; <label>:565:                                    ; preds = %563
  %566 = fcmp olt double %549, %551
  br i1 %566, label %569, label %567

; <label>:567:                                    ; preds = %565
  %568 = fcmp oeq double %549, %551
  br i1 %568, label %569, label %573

; <label>:569:                                    ; preds = %567, %565, %563, %553
  %570 = phi i8 [ 0, %563 ], [ 0, %565 ], [ 1, %567 ], [ 1, %553 ]
  %571 = phi i8 [ 0, %563 ], [ 0, %565 ], [ 0, %567 ], [ 1, %553 ]
  %572 = phi i8 [ 0, %563 ], [ 1, %565 ], [ 0, %567 ], [ 1, %553 ]
  store i8 %570, i8* %30, align 1
  store i8 %571, i8* %21, align 1
  store i8 %572, i8* %14, align 1
  br label %573

; <label>:573:                                    ; preds = %569, %567
  %574 = phi i8 [ %572, %569 ], [ 1, %567 ]
  store i8 0, i8* %39, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %27, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit

routine_ucomisd__xmm0___xmm1.exit:                ; preds = %573, %561
  %575 = phi i8 [ %.pre46, %561 ], [ %574, %573 ]
  %576 = phi i64 [ %.pre45, %561 ], [ %550, %573 ]
  %577 = phi %struct.Memory* [ %562, %561 ], [ %91, %573 ]
  %578 = load i8, i8* %30, align 1
  %579 = or i8 %578, %575
  %580 = icmp ne i8 %579, 0
  %.v66 = select i1 %580, i64 434, i64 6
  %581 = add i64 %576, %.v66
  %582 = add i64 %581, 5
  store i64 %582, i64* %3, align 8
  br i1 %580, label %block_.L_4289cd, label %block_.L_428821.preheader

block_.L_428821.preheader:                        ; preds = %routine_ucomisd__xmm0___xmm1.exit
  %583 = bitcast [32 x %union.VectorReg]* %40 to <2 x i32>*
  %584 = bitcast i64* %536 to <2 x i32>*
  %585 = bitcast [32 x %union.VectorReg]* %40 to float*
  %586 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %587 = bitcast %union.VectorReg* %586 to double*
  %588 = bitcast %union.VectorReg* %41 to <2 x i32>*
  %589 = bitcast i64* %49 to <2 x i32>*
  %590 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %586, i64 0, i32 0, i32 0, i32 0, i64 0
  %591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %592 = bitcast i64* %536 to double*
  %593 = bitcast %union.VectorReg* %41 to i32*
  %594 = getelementptr inbounds i8, i8* %42, i64 4
  %595 = bitcast i8* %594 to float*
  %596 = bitcast i64* %49 to float*
  %597 = getelementptr inbounds i8, i8* %42, i64 12
  %598 = bitcast i8* %597 to float*
  %599 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i49 = getelementptr inbounds %union.anon, %union.anon* %599, i64 0, i32 0
  %600 = bitcast %union.anon* %599 to [2 x i32]*
  %601 = bitcast %union.anon* %599 to i32*
  %602 = getelementptr inbounds [2 x i32], [2 x i32]* %600, i64 0, i64 1
  %603 = bitcast i8* %594 to i32*
  %604 = bitcast i64* %49 to i32*
  %605 = bitcast i8* %597 to i32*
  %606 = bitcast %union.VectorReg* %41 to <2 x float>*
  %607 = bitcast %union.VectorReg* %41 to float*
  %RAX.i139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX.i136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %608 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %609 = bitcast %union.VectorReg* %608 to double*
  %610 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %611 = bitcast %union.VectorReg* %586 to <2 x i32>*
  %612 = bitcast i64* %591 to <2 x i32>*
  %613 = bitcast %union.VectorReg* %608 to <2 x i32>*
  %614 = bitcast i64* %610 to <2 x i32>*
  %615 = bitcast i64* %536 to <2 x i32>*
  br label %block_.L_428821

block_.L_428821:                                  ; preds = %block_.L_428821.preheader, %block_.L_4289c3
  %616 = phi i64 [ %1082, %block_.L_4289c3 ], [ %582, %block_.L_428821.preheader ]
  %MEMORY.1 = phi %struct.Memory* [ %MEMORY.2, %block_.L_4289c3 ], [ %577, %block_.L_428821.preheader ]
  %617 = add i64 %616, 117727
  %618 = add i64 %616, 5
  %619 = load i64, i64* %6, align 8
  %620 = add i64 %619, -8
  %621 = inttoptr i64 %620 to i64*
  store i64 %618, i64* %621, align 8
  store i64 %620, i64* %6, align 8
  store i64 %617, i64* %3, align 8
  %call2_428821 = tail call %struct.Memory* @sub_445400.sre_random(%struct.State* nonnull %0, i64 %617, %struct.Memory* %MEMORY.1)
  %622 = load i64, i64* %3, align 8
  %623 = add i64 %622, ptrtoint (%G_0x2bfb2__rip__type* @G_0x2bfb2__rip_ to i64)
  %624 = add i64 %622, 8
  store i64 %624, i64* %3, align 8
  %625 = inttoptr i64 %623 to i64*
  %626 = load i64, i64* %625, align 8
  store i64 %626, i64* %48, align 1
  store double 0.000000e+00, double* %50, align 1
  %627 = load <2 x i32>, <2 x i32>* %583, align 1
  %628 = load <2 x i32>, <2 x i32>* %584, align 1
  %.cast16 = bitcast <2 x i32> %627 to double
  %629 = fptrunc double %.cast16 to float
  store float %629, float* %585, align 1
  %630 = extractelement <2 x i32> %627, i32 1
  store i32 %630, i32* %539, align 1
  %631 = extractelement <2 x i32> %628, i32 0
  store i32 %631, i32* %540, align 1
  %632 = extractelement <2 x i32> %628, i32 1
  store i32 %632, i32* %542, align 1
  %633 = load i64, i64* %RBP.i, align 8
  %634 = add i64 %633, -12
  %635 = add i64 %622, 17
  store i64 %635, i64* %3, align 8
  %636 = load <2 x float>, <2 x float>* %53, align 1
  %637 = extractelement <2 x float> %636, i32 0
  %638 = inttoptr i64 %634 to float*
  store float %637, float* %638, align 4
  %639 = load i64, i64* %RBP.i, align 8
  %640 = add i64 %639, -12
  %641 = load i64, i64* %3, align 8
  %642 = add i64 %641, 5
  store i64 %642, i64* %3, align 8
  %643 = inttoptr i64 %640 to float*
  %644 = load float, float* %643, align 4
  %645 = fpext float %644 to double
  store double %645, double* %65, align 1
  %646 = add i64 %639, -8
  %647 = add i64 %641, 10
  store i64 %647, i64* %3, align 8
  %648 = inttoptr i64 %646 to float*
  %649 = load float, float* %648, align 4
  %650 = fpext float %649 to double
  store double %650, double* %587, align 1
  %651 = add i64 %639, -64
  %652 = add i64 %641, 15
  store i64 %652, i64* %3, align 8
  %653 = inttoptr i64 %651 to double*
  store double %645, double* %653, align 8
  %654 = load i64, i64* %3, align 8
  %655 = load <2 x i32>, <2 x i32>* %588, align 1
  %656 = load <2 x i32>, <2 x i32>* %589, align 1
  %657 = extractelement <2 x i32> %655, i32 0
  store i32 %657, i32* %537, align 1
  %658 = extractelement <2 x i32> %655, i32 1
  store i32 %658, i32* %539, align 1
  %659 = extractelement <2 x i32> %656, i32 0
  store i32 %659, i32* %540, align 1
  %660 = extractelement <2 x i32> %656, i32 1
  store i32 %660, i32* %542, align 1
  %661 = load i64, i64* %RBP.i, align 8
  %662 = add i64 %661, -72
  %663 = add i64 %654, 8
  store i64 %663, i64* %3, align 8
  %664 = load i64, i64* %590, align 1
  %665 = inttoptr i64 %662 to i64*
  store i64 %664, i64* %665, align 8
  %666 = load i64, i64* %3, align 8
  %667 = add i64 %666, -160814
  %668 = add i64 %666, 5
  %669 = load i64, i64* %6, align 8
  %670 = add i64 %669, -8
  %671 = inttoptr i64 %670 to i64*
  store i64 %668, i64* %671, align 8
  store i64 %670, i64* %6, align 8
  store i64 %667, i64* %3, align 8
  %672 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @exp to i64), %struct.Memory* %MEMORY.1)
  %673 = load i64, i64* %3, align 8
  %674 = add i64 %673, ptrtoint (%G_0x2bf85__rip__type* @G_0x2bf85__rip_ to i64)
  %675 = add i64 %673, 8
  store i64 %675, i64* %3, align 8
  %676 = inttoptr i64 %674 to i64*
  %677 = load i64, i64* %676, align 8
  store i64 %677, i64* %48, align 1
  store double 0.000000e+00, double* %50, align 1
  %678 = load i64, i64* %RBP.i, align 8
  %679 = add i64 %678, -72
  %680 = add i64 %673, 13
  store i64 %680, i64* %3, align 8
  %681 = inttoptr i64 %679 to double*
  %682 = load double, double* %681, align 8
  %683 = load double, double* %65, align 1
  %684 = fdiv double %682, %683
  store double %684, double* %587, align 1
  store i64 0, i64* %591, align 1
  %685 = bitcast i64 %677 to <2 x i32>
  %686 = extractelement <2 x i32> %685, i32 0
  store i32 %686, i32* %537, align 1
  %687 = extractelement <2 x i32> %685, i32 1
  store i32 %687, i32* %539, align 1
  store i32 0, i32* %540, align 1
  store i32 0, i32* %542, align 1
  %688 = load double, double* %65, align 1
  %689 = load <2 x i32>, <2 x i32>* %615, align 1
  %690 = fadd double %688, %684
  store double %690, double* %65, align 1
  %691 = add i64 %678, -64
  %692 = add i64 %673, 29
  store i64 %692, i64* %3, align 8
  %693 = inttoptr i64 %691 to double*
  %694 = load double, double* %693, align 8
  %695 = fmul double %694, %690
  store double %695, double* %587, align 1
  store i64 0, i64* %591, align 1
  %.cast18 = bitcast double %690 to <2 x i32>
  %696 = fptrunc double %695 to float
  store float %696, float* %585, align 1
  %697 = extractelement <2 x i32> %.cast18, i32 1
  store i32 %697, i32* %539, align 1
  %698 = extractelement <2 x i32> %689, i32 0
  store i32 %698, i32* %540, align 1
  %699 = extractelement <2 x i32> %689, i32 1
  store i32 %699, i32* %542, align 1
  %700 = add i64 %678, -16
  %701 = add i64 %673, 42
  store i64 %701, i64* %3, align 8
  %702 = load <2 x float>, <2 x float>* %53, align 1
  %703 = extractelement <2 x float> %702, i32 0
  %704 = inttoptr i64 %700 to float*
  store float %703, float* %704, align 4
  %705 = load i64, i64* %RBP.i, align 8
  %706 = add i64 %705, -16
  %707 = load i64, i64* %3, align 8
  %708 = add i64 %707, 5
  store i64 %708, i64* %3, align 8
  %709 = inttoptr i64 %706 to float*
  %710 = load float, float* %709, align 4
  %711 = fpext float %710 to double
  store double %711, double* %65, align 1
  %712 = add i64 %707, 9
  store i64 %712, i64* %3, align 8
  %713 = load double, double* %47, align 1
  %714 = fcmp uno double %711, %713
  br i1 %714, label %715, label %725

; <label>:715:                                    ; preds = %block_.L_428821
  %716 = fadd double %711, %713
  %717 = bitcast double %716 to i64
  %718 = and i64 %717, 9221120237041090560
  %719 = icmp eq i64 %718, 9218868437227405312
  %720 = and i64 %717, 2251799813685247
  %721 = icmp ne i64 %720, 0
  %722 = and i1 %719, %721
  br i1 %722, label %723, label %731

; <label>:723:                                    ; preds = %715
  %724 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %712, %struct.Memory* %672)
  %.pre47 = load i64, i64* %3, align 8
  br label %routine_ucomisd__xmm1___xmm0.exit189

; <label>:725:                                    ; preds = %block_.L_428821
  %726 = fcmp ogt double %711, %713
  br i1 %726, label %731, label %727

; <label>:727:                                    ; preds = %725
  %728 = fcmp olt double %711, %713
  br i1 %728, label %731, label %729

; <label>:729:                                    ; preds = %727
  %730 = fcmp oeq double %711, %713
  br i1 %730, label %731, label %735

; <label>:731:                                    ; preds = %729, %727, %725, %715
  %732 = phi i8 [ 0, %725 ], [ 0, %727 ], [ 1, %729 ], [ 1, %715 ]
  %733 = phi i8 [ 0, %725 ], [ 0, %727 ], [ 0, %729 ], [ 1, %715 ]
  %734 = phi i8 [ 0, %725 ], [ 1, %727 ], [ 0, %729 ], [ 1, %715 ]
  store i8 %732, i8* %30, align 1
  store i8 %733, i8* %21, align 1
  store i8 %734, i8* %14, align 1
  br label %735

; <label>:735:                                    ; preds = %731, %729
  store i8 0, i8* %39, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %27, align 1
  br label %routine_ucomisd__xmm1___xmm0.exit189

routine_ucomisd__xmm1___xmm0.exit189:             ; preds = %735, %723
  %736 = phi i64 [ %.pre47, %723 ], [ %712, %735 ]
  %737 = phi %struct.Memory* [ %724, %723 ], [ %672, %735 ]
  %738 = load i8, i8* %14, align 1
  %739 = load i8, i8* %30, align 1
  %740 = or i8 %739, %738
  %741 = icmp ne i8 %740, 0
  %.v67 = select i1 %741, i64 193, i64 6
  %742 = add i64 %736, %.v67
  store i64 %742, i64* %3, align 8
  br i1 %741, label %block_.L_428947, label %block_42888c

block_42888c:                                     ; preds = %routine_ucomisd__xmm1___xmm0.exit189
  %743 = add i64 %742, ptrtoint (%G_0x2bf4c__rip__type* @G_0x2bf4c__rip_ to i64)
  %744 = add i64 %742, 8
  store i64 %744, i64* %3, align 8
  %745 = inttoptr i64 %743 to i64*
  %746 = load i64, i64* %745, align 8
  store i64 %746, i64* %535, align 1
  store double 0.000000e+00, double* %592, align 1
  %747 = add i64 %742, add (i64 ptrtoint (%G_0x2be8c__rip__type* @G_0x2be8c__rip_ to i64), i64 8)
  %748 = add i64 %742, 16
  store i64 %748, i64* %3, align 8
  %749 = inttoptr i64 %747 to i32*
  %750 = load i32, i32* %749, align 4
  store i32 %750, i32* %593, align 1
  store float 0.000000e+00, float* %595, align 1
  store float 0.000000e+00, float* %596, align 1
  store float 0.000000e+00, float* %598, align 1
  %751 = load i64, i64* %RBP.i, align 8
  %752 = add i64 %751, -16
  %753 = add i64 %742, 21
  store i64 %753, i64* %3, align 8
  %754 = load <2 x float>, <2 x float>* %606, align 1
  %755 = load <2 x i32>, <2 x i32>* %589, align 1
  %756 = inttoptr i64 %752 to float*
  %757 = load float, float* %756, align 4
  %758 = extractelement <2 x float> %754, i32 0
  %759 = fsub float %758, %757
  store float %759, float* %607, align 1
  %760 = bitcast <2 x float> %754 to <2 x i32>
  %761 = extractelement <2 x i32> %760, i32 1
  store i32 %761, i32* %603, align 1
  %762 = extractelement <2 x i32> %755, i32 0
  store i32 %762, i32* %604, align 1
  %763 = extractelement <2 x i32> %755, i32 1
  store i32 %763, i32* %605, align 1
  %764 = load <2 x float>, <2 x float>* %606, align 1
  %765 = extractelement <2 x float> %764, i32 0
  %766 = fpext float %765 to double
  store double %766, double* %47, align 1
  %767 = add i64 %751, -8
  %768 = add i64 %742, 30
  store i64 %768, i64* %3, align 8
  %769 = inttoptr i64 %767 to float*
  %770 = load float, float* %769, align 4
  %771 = fpext float %770 to double
  store double %771, double* %587, align 1
  %772 = add i64 %751, -80
  %773 = add i64 %742, 35
  store i64 %773, i64* %3, align 8
  %774 = inttoptr i64 %772 to double*
  store double %771, double* %774, align 8
  %775 = load i64, i64* %RBP.i, align 8
  %776 = add i64 %775, -88
  %777 = load i64, i64* %3, align 8
  %778 = add i64 %777, 5
  store i64 %778, i64* %3, align 8
  %779 = load i64, i64* %48, align 1
  %780 = inttoptr i64 %776 to i64*
  store i64 %779, i64* %780, align 8
  %781 = load i64, i64* %3, align 8
  %782 = add i64 %781, -160916
  %783 = add i64 %781, 5
  %784 = load i64, i64* %6, align 8
  %785 = add i64 %784, -8
  %786 = inttoptr i64 %785 to i64*
  store i64 %783, i64* %786, align 8
  store i64 %785, i64* %6, align 8
  store i64 %782, i64* %3, align 8
  %787 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @exp to i64), %struct.Memory* %737)
  %788 = load i64, i64* %RBP.i, align 8
  %789 = add i64 %788, -80
  %790 = load i64, i64* %3, align 8
  %791 = add i64 %790, 5
  store i64 %791, i64* %3, align 8
  %792 = inttoptr i64 %789 to double*
  %793 = load double, double* %792, align 8
  %794 = load double, double* %65, align 1
  %795 = fdiv double %793, %794
  store double %795, double* %47, align 1
  store i64 0, i64* %49, align 1
  %796 = add i64 %788, -88
  %797 = add i64 %790, 14
  store i64 %797, i64* %3, align 8
  %798 = inttoptr i64 %796 to double*
  %799 = load double, double* %798, align 8
  %800 = fadd double %799, %795
  store double %800, double* %65, align 1
  store i64 0, i64* %536, align 1
  %801 = add i64 %788, -8
  %802 = add i64 %790, 23
  store i64 %802, i64* %3, align 8
  %803 = inttoptr i64 %801 to float*
  %804 = load float, float* %803, align 4
  %805 = fpext float %804 to double
  store double %805, double* %47, align 1
  %806 = fdiv double %800, %805
  store double %806, double* %65, align 1
  store i64 0, i64* %536, align 1
  %807 = add i64 %790, -160713
  %808 = add i64 %790, 32
  %809 = load i64, i64* %6, align 8
  %810 = add i64 %809, -8
  %811 = inttoptr i64 %810 to i64*
  store i64 %808, i64* %811, align 8
  store i64 %810, i64* %6, align 8
  store i64 %807, i64* %3, align 8
  %812 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @log to i64), %struct.Memory* %787)
  %813 = load i64, i64* %3, align 8
  store i64 -9223372036854775808, i64* %RAX.i139, align 8
  %814 = load i64, i64* %535, align 1
  %815 = xor i64 %814, -9223372036854775808
  store i64 %815, i64* %RCX.i136, align 8
  store i8 0, i8* %14, align 1
  %816 = trunc i64 %814 to i32
  %817 = and i32 %816, 255
  %818 = tail call i32 @llvm.ctpop.i32(i32 %817)
  %819 = trunc i32 %818 to i8
  %820 = and i8 %819, 1
  %821 = xor i8 %820, 1
  store i8 %821, i8* %21, align 1
  %822 = icmp eq i64 %815, 0
  %823 = zext i1 %822 to i8
  store i8 %823, i8* %30, align 1
  %824 = lshr i64 %815, 63
  %825 = trunc i64 %824 to i8
  store i8 %825, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %.cast21 = bitcast i64 %815 to <2 x i32>
  %.cast22 = bitcast i64 %815 to double
  %826 = fptrunc double %.cast22 to float
  store float %826, float* %585, align 1
  %827 = extractelement <2 x i32> %.cast21, i32 1
  store i32 %827, i32* %539, align 1
  store i32 0, i32* %540, align 1
  store i32 0, i32* %542, align 1
  %828 = load i64, i64* %RBP.i, align 8
  %829 = add i64 %828, -20
  %830 = add i64 %813, 32
  store i64 %830, i64* %3, align 8
  %831 = load <2 x float>, <2 x float>* %53, align 1
  %832 = extractelement <2 x float> %831, i32 0
  %833 = inttoptr i64 %829 to float*
  store float %832, float* %833, align 4
  %834 = load i64, i64* %3, align 8
  %835 = add i64 %834, 117511
  %836 = add i64 %834, 5
  %837 = load i64, i64* %6, align 8
  %838 = add i64 %837, -8
  %839 = inttoptr i64 %838 to i64*
  store i64 %836, i64* %839, align 8
  store i64 %838, i64* %6, align 8
  store i64 %835, i64* %3, align 8
  %call2_4288f9 = tail call %struct.Memory* @sub_445400.sre_random(%struct.State* nonnull %0, i64 %835, %struct.Memory* %812)
  %840 = load i64, i64* %3, align 8
  %841 = add i64 %840, ptrtoint (%G_0x2beda__rip__type* @G_0x2beda__rip_ to i64)
  %842 = add i64 %840, 8
  store i64 %842, i64* %3, align 8
  %843 = inttoptr i64 %841 to i64*
  %844 = load i64, i64* %843, align 8
  store i64 %844, i64* %48, align 1
  store double 0.000000e+00, double* %50, align 1
  %845 = load i64, i64* %RBP.i, align 8
  %846 = add i64 %845, -20
  %847 = add i64 %840, 13
  store i64 %847, i64* %3, align 8
  %848 = inttoptr i64 %846 to float*
  %849 = load float, float* %848, align 4
  %850 = fpext float %849 to double
  store double %850, double* %587, align 1
  %851 = add i64 %845, -8
  %852 = add i64 %840, 18
  store i64 %852, i64* %3, align 8
  %853 = inttoptr i64 %851 to float*
  %854 = load float, float* %853, align 4
  %855 = fpext float %854 to double
  %856 = bitcast i64 %844 to double
  %857 = fsub double %855, %856
  store double %857, double* %609, align 1
  %858 = add i64 %845, -96
  %859 = add i64 %840, 27
  store i64 %859, i64* %3, align 8
  %860 = load i64, i64* %535, align 1
  %861 = inttoptr i64 %858 to i64*
  store i64 %860, i64* %861, align 8
  %862 = load i64, i64* %3, align 8
  %863 = load <2 x i32>, <2 x i32>* %611, align 1
  %864 = load <2 x i32>, <2 x i32>* %612, align 1
  %865 = extractelement <2 x i32> %863, i32 0
  store i32 %865, i32* %537, align 1
  %866 = extractelement <2 x i32> %863, i32 1
  store i32 %866, i32* %539, align 1
  %867 = extractelement <2 x i32> %864, i32 0
  store i32 %867, i32* %540, align 1
  %868 = extractelement <2 x i32> %864, i32 1
  store i32 %868, i32* %542, align 1
  %869 = load <2 x i32>, <2 x i32>* %613, align 1
  %870 = load <2 x i32>, <2 x i32>* %614, align 1
  %871 = extractelement <2 x i32> %869, i32 0
  store i32 %871, i32* %593, align 1
  %872 = extractelement <2 x i32> %869, i32 1
  store i32 %872, i32* %603, align 1
  %873 = extractelement <2 x i32> %870, i32 0
  store i32 %873, i32* %604, align 1
  %874 = extractelement <2 x i32> %870, i32 1
  store i32 %874, i32* %605, align 1
  %875 = add i64 %862, -160825
  %876 = add i64 %862, 11
  %877 = load i64, i64* %6, align 8
  %878 = add i64 %877, -8
  %879 = inttoptr i64 %878 to i64*
  store i64 %876, i64* %879, align 8
  store i64 %878, i64* %6, align 8
  store i64 %875, i64* %3, align 8
  %880 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64)* @pow to i64), %struct.Memory* %call2_4288f9)
  %881 = load i64, i64* %RBP.i, align 8
  %882 = add i64 %881, -96
  %883 = load i64, i64* %3, align 8
  %884 = add i64 %883, 5
  store i64 %884, i64* %3, align 8
  %885 = inttoptr i64 %882 to i64*
  %886 = load i64, i64* %885, align 8
  store i64 %886, i64* %48, align 1
  store double 0.000000e+00, double* %50, align 1
  %887 = add i64 %883, 9
  store i64 %887, i64* %3, align 8
  %888 = load double, double* %65, align 1
  %.cast23 = bitcast i64 %886 to double
  %889 = fcmp uno double %888, %.cast23
  br i1 %889, label %890, label %900

; <label>:890:                                    ; preds = %block_42888c
  %891 = fadd double %.cast23, %888
  %892 = bitcast double %891 to i64
  %893 = and i64 %892, 9221120237041090560
  %894 = icmp eq i64 %893, 9218868437227405312
  %895 = and i64 %892, 2251799813685247
  %896 = icmp ne i64 %895, 0
  %897 = and i1 %894, %896
  br i1 %897, label %898, label %906

; <label>:898:                                    ; preds = %890
  %899 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %887, %struct.Memory* %880)
  %.pre48 = load i64, i64* %3, align 8
  br label %routine_ucomisd__xmm1___xmm0.exit94

; <label>:900:                                    ; preds = %block_42888c
  %901 = fcmp ogt double %888, %.cast23
  br i1 %901, label %906, label %902

; <label>:902:                                    ; preds = %900
  %903 = fcmp olt double %888, %.cast23
  br i1 %903, label %906, label %904

; <label>:904:                                    ; preds = %902
  %905 = fcmp oeq double %888, %.cast23
  br i1 %905, label %906, label %910

; <label>:906:                                    ; preds = %904, %902, %900, %890
  %907 = phi i8 [ 0, %900 ], [ 0, %902 ], [ 1, %904 ], [ 1, %890 ]
  %908 = phi i8 [ 0, %900 ], [ 0, %902 ], [ 0, %904 ], [ 1, %890 ]
  %909 = phi i8 [ 0, %900 ], [ 1, %902 ], [ 0, %904 ], [ 1, %890 ]
  store i8 %907, i8* %30, align 1
  store i8 %908, i8* %21, align 1
  store i8 %909, i8* %14, align 1
  br label %910

; <label>:910:                                    ; preds = %906, %904
  store i8 0, i8* %39, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %27, align 1
  br label %routine_ucomisd__xmm1___xmm0.exit94

routine_ucomisd__xmm1___xmm0.exit94:              ; preds = %910, %898
  %911 = phi i64 [ %.pre48, %898 ], [ %887, %910 ]
  %912 = phi %struct.Memory* [ %899, %898 ], [ %880, %910 ]
  %913 = load i8, i8* %14, align 1
  %914 = icmp ne i8 %913, 0
  %.v68 = select i1 %914, i64 21, i64 6
  %915 = add i64 %911, %.v68
  store i64 %915, i64* %3, align 8
  %cmpBr_42892d = icmp eq i8 %913, 1
  br i1 %cmpBr_42892d, label %block_.L_428942, label %block_428933

block_428933:                                     ; preds = %routine_ucomisd__xmm1___xmm0.exit94
  %916 = load i64, i64* %RBP.i, align 8
  %917 = add i64 %916, -20
  %918 = add i64 %915, 5
  store i64 %918, i64* %3, align 8
  %919 = inttoptr i64 %917 to i32*
  %920 = load i32, i32* %919, align 4
  store i32 %920, i32* %537, align 1
  %921 = bitcast i8* %538 to float*
  store float 0.000000e+00, float* %921, align 1
  %922 = bitcast i64* %536 to float*
  store float 0.000000e+00, float* %922, align 1
  %923 = bitcast i8* %541 to float*
  store float 0.000000e+00, float* %923, align 1
  %924 = add i64 %916, -4
  %925 = add i64 %915, 10
  store i64 %925, i64* %3, align 8
  %926 = load <2 x float>, <2 x float>* %53, align 1
  %927 = extractelement <2 x float> %926, i32 0
  %928 = inttoptr i64 %924 to float*
  store float %927, float* %928, align 4
  %929 = load i64, i64* %3, align 8
  %930 = add i64 %929, 169
  store i64 %930, i64* %3, align 8
  br label %block_.L_4289e6

block_.L_428942:                                  ; preds = %routine_ucomisd__xmm1___xmm0.exit94
  %931 = add i64 %915, 129
  br label %block_.L_4289c3

block_.L_428947:                                  ; preds = %routine_ucomisd__xmm1___xmm0.exit189
  %932 = add i64 %742, ptrtoint (%G_0x2be91__rip__type* @G_0x2be91__rip_ to i64)
  %933 = add i64 %742, 8
  store i64 %933, i64* %3, align 8
  %934 = inttoptr i64 %932 to i64*
  %935 = load i64, i64* %934, align 8
  store i64 %935, i64* %535, align 1
  store double 0.000000e+00, double* %592, align 1
  %936 = load i64, i64* %RBP.i, align 8
  %937 = add i64 %936, -16
  %938 = add i64 %742, 13
  store i64 %938, i64* %3, align 8
  %939 = inttoptr i64 %937 to float*
  %940 = load float, float* %939, align 4
  %941 = fpext float %940 to double
  store double %941, double* %47, align 1
  %942 = add i64 %936, -8
  %943 = add i64 %742, 18
  store i64 %943, i64* %3, align 8
  %944 = inttoptr i64 %942 to float*
  %945 = load float, float* %944, align 4
  %946 = fpext float %945 to double
  store double %946, double* %587, align 1
  %947 = bitcast i64 %935 to double
  %948 = fdiv double %947, %946
  %949 = add i64 %936, -104
  %950 = add i64 %742, 27
  store i64 %950, i64* %3, align 8
  %951 = inttoptr i64 %949 to double*
  store double %948, double* %951, align 8
  %952 = load i64, i64* %3, align 8
  %953 = load <2 x i32>, <2 x i32>* %588, align 1
  %954 = load <2 x i32>, <2 x i32>* %589, align 1
  %955 = extractelement <2 x i32> %953, i32 0
  store i32 %955, i32* %537, align 1
  %956 = extractelement <2 x i32> %953, i32 1
  store i32 %956, i32* %539, align 1
  %957 = extractelement <2 x i32> %954, i32 0
  store i32 %957, i32* %540, align 1
  %958 = extractelement <2 x i32> %954, i32 1
  store i32 %958, i32* %542, align 1
  %959 = load i64, i64* %RBP.i, align 8
  %960 = add i64 %959, -104
  %961 = add i64 %952, 8
  store i64 %961, i64* %3, align 8
  %962 = inttoptr i64 %960 to i64*
  %963 = load i64, i64* %962, align 8
  store i64 %963, i64* %48, align 1
  store double 0.000000e+00, double* %50, align 1
  %964 = add i64 %952, -160898
  %965 = add i64 %952, 13
  %966 = load i64, i64* %6, align 8
  %967 = add i64 %966, -8
  %968 = inttoptr i64 %967 to i64*
  store i64 %965, i64* %968, align 8
  store i64 %967, i64* %6, align 8
  store i64 %964, i64* %3, align 8
  %969 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64)* @pow to i64), %struct.Memory* %737)
  %970 = load i64, i64* %3, align 8
  %971 = load <2 x i32>, <2 x i32>* %583, align 1
  %972 = load <2 x i32>, <2 x i32>* %584, align 1
  %.cast25 = bitcast <2 x i32> %971 to double
  %973 = fptrunc double %.cast25 to float
  store float %973, float* %585, align 1
  %974 = extractelement <2 x i32> %971, i32 1
  store i32 %974, i32* %539, align 1
  %975 = extractelement <2 x i32> %972, i32 0
  store i32 %975, i32* %540, align 1
  %976 = extractelement <2 x i32> %972, i32 1
  store i32 %976, i32* %542, align 1
  %977 = load i64, i64* %RBP.i, align 8
  %978 = add i64 %977, -20
  %979 = add i64 %970, 9
  store i64 %979, i64* %3, align 8
  %980 = load <2 x float>, <2 x float>* %53, align 1
  %981 = extractelement <2 x float> %980, i32 0
  %982 = inttoptr i64 %978 to float*
  store float %981, float* %982, align 4
  %983 = load i64, i64* %3, align 8
  %984 = add i64 %983, 117384
  %985 = add i64 %983, 5
  %986 = load i64, i64* %6, align 8
  %987 = add i64 %986, -8
  %988 = inttoptr i64 %987 to i64*
  store i64 %985, i64* %988, align 8
  store i64 %987, i64* %6, align 8
  store i64 %984, i64* %3, align 8
  %call2_428978 = tail call %struct.Memory* @sub_445400.sre_random(%struct.State* nonnull %0, i64 %984, %struct.Memory* %969)
  %989 = load i64, i64* %RBP.i, align 8
  %990 = add i64 %989, -20
  %991 = load i64, i64* %3, align 8
  %992 = add i64 %991, 5
  store i64 %992, i64* %3, align 8
  %993 = inttoptr i64 %990 to i32*
  %994 = load i32, i32* %993, align 4
  store i32 %994, i32* %593, align 1
  store float 0.000000e+00, float* %595, align 1
  %995 = load i64, i64* %48, align 1
  %996 = trunc i64 %995 to i32
  store i32 %996, i32* %601, align 1
  store i32 0, i32* %602, align 1
  %997 = load i64, i64* %RAX.i49, align 8
  %998 = xor i64 %997, -2147483648
  %999 = trunc i64 %998 to i32
  %1000 = and i64 %998, 4294967295
  store i64 %1000, i64* %RAX.i49, align 8
  store i8 0, i8* %14, align 1
  %1001 = and i32 %999, 255
  %1002 = tail call i32 @llvm.ctpop.i32(i32 %1001)
  %1003 = trunc i32 %1002 to i8
  %1004 = and i8 %1003, 1
  %1005 = xor i8 %1004, 1
  store i8 %1005, i8* %21, align 1
  %1006 = icmp eq i32 %999, 0
  %1007 = zext i1 %1006 to i8
  store i8 %1007, i8* %30, align 1
  %1008 = lshr i32 %999, 31
  %1009 = trunc i32 %1008 to i8
  store i8 %1009, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %1010 = trunc i64 %998 to i32
  store i32 %1010, i32* %593, align 1
  store i32 0, i32* %603, align 1
  store i32 0, i32* %604, align 1
  store i32 0, i32* %605, align 1
  %1011 = load <2 x float>, <2 x float>* %606, align 1
  %1012 = extractelement <2 x float> %1011, i32 0
  %1013 = fpext float %1012 to double
  store double %1013, double* %47, align 1
  %1014 = add i64 %989, -112
  %1015 = add i64 %991, 27
  store i64 %1015, i64* %3, align 8
  %1016 = load i64, i64* %535, align 1
  %1017 = inttoptr i64 %1014 to i64*
  store i64 %1016, i64* %1017, align 8
  %1018 = load i64, i64* %3, align 8
  %1019 = load <2 x i32>, <2 x i32>* %588, align 1
  %1020 = load <2 x i32>, <2 x i32>* %589, align 1
  %1021 = extractelement <2 x i32> %1019, i32 0
  store i32 %1021, i32* %537, align 1
  %1022 = extractelement <2 x i32> %1019, i32 1
  store i32 %1022, i32* %539, align 1
  %1023 = extractelement <2 x i32> %1020, i32 0
  store i32 %1023, i32* %540, align 1
  %1024 = extractelement <2 x i32> %1020, i32 1
  store i32 %1024, i32* %542, align 1
  %1025 = add i64 %1018, -161144
  %1026 = add i64 %1018, 8
  %1027 = load i64, i64* %6, align 8
  %1028 = add i64 %1027, -8
  %1029 = inttoptr i64 %1028 to i64*
  store i64 %1026, i64* %1029, align 8
  store i64 %1028, i64* %6, align 8
  store i64 %1025, i64* %3, align 8
  %1030 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @exp to i64), %struct.Memory* %call2_428978)
  %1031 = load i64, i64* %RBP.i, align 8
  %1032 = add i64 %1031, -112
  %1033 = load i64, i64* %3, align 8
  %1034 = add i64 %1033, 5
  store i64 %1034, i64* %3, align 8
  %1035 = inttoptr i64 %1032 to i64*
  %1036 = load i64, i64* %1035, align 8
  store i64 %1036, i64* %48, align 1
  store double 0.000000e+00, double* %50, align 1
  %1037 = add i64 %1033, 9
  store i64 %1037, i64* %3, align 8
  %1038 = load double, double* %65, align 1
  %.cast26 = bitcast i64 %1036 to double
  %1039 = fcmp uno double %1038, %.cast26
  br i1 %1039, label %1040, label %1050

; <label>:1040:                                   ; preds = %block_.L_428947
  %1041 = fadd double %.cast26, %1038
  %1042 = bitcast double %1041 to i64
  %1043 = and i64 %1042, 9221120237041090560
  %1044 = icmp eq i64 %1043, 9218868437227405312
  %1045 = and i64 %1042, 2251799813685247
  %1046 = icmp ne i64 %1045, 0
  %1047 = and i1 %1044, %1046
  br i1 %1047, label %1048, label %1056

; <label>:1048:                                   ; preds = %1040
  %1049 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1037, %struct.Memory* %1030)
  %.pre49 = load i64, i64* %3, align 8
  br label %routine_ucomisd__xmm1___xmm0.exit

; <label>:1050:                                   ; preds = %block_.L_428947
  %1051 = fcmp ogt double %1038, %.cast26
  br i1 %1051, label %1056, label %1052

; <label>:1052:                                   ; preds = %1050
  %1053 = fcmp olt double %1038, %.cast26
  br i1 %1053, label %1056, label %1054

; <label>:1054:                                   ; preds = %1052
  %1055 = fcmp oeq double %1038, %.cast26
  br i1 %1055, label %1056, label %1060

; <label>:1056:                                   ; preds = %1054, %1052, %1050, %1040
  %1057 = phi i8 [ 0, %1050 ], [ 0, %1052 ], [ 1, %1054 ], [ 1, %1040 ]
  %1058 = phi i8 [ 0, %1050 ], [ 0, %1052 ], [ 0, %1054 ], [ 1, %1040 ]
  %1059 = phi i8 [ 0, %1050 ], [ 1, %1052 ], [ 0, %1054 ], [ 1, %1040 ]
  store i8 %1057, i8* %30, align 1
  store i8 %1058, i8* %21, align 1
  store i8 %1059, i8* %14, align 1
  br label %1060

; <label>:1060:                                   ; preds = %1056, %1054
  store i8 0, i8* %39, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %27, align 1
  br label %routine_ucomisd__xmm1___xmm0.exit

routine_ucomisd__xmm1___xmm0.exit:                ; preds = %1060, %1048
  %1061 = phi i64 [ %.pre49, %1048 ], [ %1037, %1060 ]
  %1062 = phi %struct.Memory* [ %1049, %1048 ], [ %1030, %1060 ]
  %1063 = load i8, i8* %14, align 1
  %1064 = icmp ne i8 %1063, 0
  %.v69 = select i1 %1064, i64 21, i64 6
  %1065 = add i64 %1061, %.v69
  store i64 %1065, i64* %3, align 8
  %cmpBr_4289a9 = icmp eq i8 %1063, 1
  br i1 %cmpBr_4289a9, label %block_.L_4289be, label %block_4289af

block_4289af:                                     ; preds = %routine_ucomisd__xmm1___xmm0.exit
  %1066 = load i64, i64* %RBP.i, align 8
  %1067 = add i64 %1066, -20
  %1068 = add i64 %1065, 5
  store i64 %1068, i64* %3, align 8
  %1069 = inttoptr i64 %1067 to i32*
  %1070 = load i32, i32* %1069, align 4
  store i32 %1070, i32* %537, align 1
  %1071 = bitcast i8* %538 to float*
  store float 0.000000e+00, float* %1071, align 1
  %1072 = bitcast i64* %536 to float*
  store float 0.000000e+00, float* %1072, align 1
  %1073 = bitcast i8* %541 to float*
  store float 0.000000e+00, float* %1073, align 1
  %1074 = add i64 %1066, -4
  %1075 = add i64 %1065, 10
  store i64 %1075, i64* %3, align 8
  %1076 = load <2 x float>, <2 x float>* %53, align 1
  %1077 = extractelement <2 x float> %1076, i32 0
  %1078 = inttoptr i64 %1074 to float*
  store float %1077, float* %1078, align 4
  %1079 = load i64, i64* %3, align 8
  %1080 = add i64 %1079, 45
  store i64 %1080, i64* %3, align 8
  br label %block_.L_4289e6

block_.L_4289be:                                  ; preds = %routine_ucomisd__xmm1___xmm0.exit
  %1081 = add i64 %1065, 5
  store i64 %1081, i64* %3, align 8
  br label %block_.L_4289c3

block_.L_4289c3:                                  ; preds = %block_.L_4289be, %block_.L_428942
  %storemerge24 = phi i64 [ %931, %block_.L_428942 ], [ %1081, %block_.L_4289be ]
  %MEMORY.2 = phi %struct.Memory* [ %912, %block_.L_428942 ], [ %1062, %block_.L_4289be ]
  %1082 = add i64 %storemerge24, -418
  store i64 %1082, i64* %3, align 8
  br label %block_.L_428821

block_.L_4289cd:                                  ; preds = %routine_ucomisd__xmm0___xmm1.exit
  %RDI.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  store i64 ptrtoint (%G__0x458473_type* @G__0x458473 to i64), i64* %RDI.i, align 8
  %1083 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL.i = bitcast %union.anon* %1083 to i8*
  store i8 0, i8* %AL.i, align 1
  %1084 = add i64 %581, 90184
  %1085 = add i64 %581, 22
  %1086 = load i64, i64* %6, align 8
  %1087 = add i64 %1086, -8
  %1088 = inttoptr i64 %1087 to i64*
  store i64 %1085, i64* %1088, align 8
  store i64 %1087, i64* %6, align 8
  store i64 %1084, i64* %3, align 8
  %call2_4289d9 = tail call %struct.Memory* @sub_43ea10.Die(%struct.State* nonnull %0, i64 %1084, %struct.Memory* %577)
  %1089 = load i64, i64* %3, align 8
  %1090 = bitcast [32 x %union.VectorReg]* %40 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %1090, align 1
  %1091 = load i64, i64* %RBP.i, align 8
  %1092 = add i64 %1091, -4
  %1093 = add i64 %1089, 8
  store i64 %1093, i64* %3, align 8
  %1094 = load <2 x float>, <2 x float>* %53, align 1
  %1095 = extractelement <2 x float> %1094, i32 0
  %1096 = inttoptr i64 %1092 to float*
  store float %1095, float* %1096, align 4
  %.pre50 = load i64, i64* %3, align 8
  %.pre52 = bitcast i8* %538 to float*
  %.pre55 = bitcast i64* %536 to float*
  %.pre58 = bitcast i8* %541 to float*
  br label %block_.L_4289e6

block_.L_4289e6:                                  ; preds = %block_.L_4289cd, %block_4289af, %block_428933, %block_4287f6
  %.pre-phi59 = phi float* [ %.pre58, %block_.L_4289cd ], [ %1073, %block_4289af ], [ %923, %block_428933 ], [ %122, %block_4287f6 ]
  %.pre-phi56 = phi float* [ %.pre55, %block_.L_4289cd ], [ %1072, %block_4289af ], [ %922, %block_428933 ], [ %121, %block_4287f6 ]
  %.pre-phi53 = phi float* [ %.pre52, %block_.L_4289cd ], [ %1071, %block_4289af ], [ %921, %block_428933 ], [ %120, %block_4287f6 ]
  %.pre-phi = phi i32* [ %537, %block_.L_4289cd ], [ %537, %block_4289af ], [ %537, %block_428933 ], [ %104, %block_4287f6 ]
  %1097 = phi i64 [ %.pre50, %block_.L_4289cd ], [ %1080, %block_4289af ], [ %930, %block_428933 ], [ %532, %block_4287f6 ]
  %MEMORY.3 = phi %struct.Memory* [ %call2_4289d9, %block_.L_4289cd ], [ %1062, %block_4289af ], [ %912, %block_428933 ], [ %517, %block_4287f6 ]
  %1098 = load i64, i64* %RBP.i, align 8
  %1099 = add i64 %1098, -4
  %1100 = add i64 %1097, 5
  store i64 %1100, i64* %3, align 8
  %1101 = inttoptr i64 %1099 to i32*
  %1102 = load i32, i32* %1101, align 4
  store i32 %1102, i32* %.pre-phi, align 1
  store float 0.000000e+00, float* %.pre-phi53, align 1
  store float 0.000000e+00, float* %.pre-phi56, align 1
  store float 0.000000e+00, float* %.pre-phi59, align 1
  %1103 = load i64, i64* %6, align 8
  %1104 = add i64 %1103, 112
  store i64 %1104, i64* %6, align 8
  %1105 = icmp ugt i64 %1103, -113
  %1106 = zext i1 %1105 to i8
  store i8 %1106, i8* %14, align 1
  %1107 = trunc i64 %1104 to i32
  %1108 = and i32 %1107, 255
  %1109 = tail call i32 @llvm.ctpop.i32(i32 %1108)
  %1110 = trunc i32 %1109 to i8
  %1111 = and i8 %1110, 1
  %1112 = xor i8 %1111, 1
  store i8 %1112, i8* %21, align 1
  %1113 = xor i64 %1103, 16
  %1114 = xor i64 %1113, %1104
  %1115 = lshr i64 %1114, 4
  %1116 = trunc i64 %1115 to i8
  %1117 = and i8 %1116, 1
  store i8 %1117, i8* %27, align 1
  %1118 = icmp eq i64 %1104, 0
  %1119 = zext i1 %1118 to i8
  store i8 %1119, i8* %30, align 1
  %1120 = lshr i64 %1104, 63
  %1121 = trunc i64 %1120 to i8
  store i8 %1121, i8* %33, align 1
  %1122 = lshr i64 %1103, 63
  %1123 = xor i64 %1120, %1122
  %1124 = add nuw nsw i64 %1123, %1120
  %1125 = icmp eq i64 %1124, 2
  %1126 = zext i1 %1125 to i8
  store i8 %1126, i8* %39, align 1
  %1127 = add i64 %1097, 10
  store i64 %1127, i64* %3, align 8
  %1128 = add i64 %1103, 120
  %1129 = inttoptr i64 %1104 to i64*
  %1130 = load i64, i64* %1129, align 8
  store i64 %1130, i64* %RBP.i, align 8
  store i64 %1128, i64* %6, align 8
  %1131 = add i64 %1097, 11
  store i64 %1131, i64* %3, align 8
  %1132 = inttoptr i64 %1128 to i64*
  %1133 = load i64, i64* %1132, align 8
  store i64 %1133, i64* %3, align 8
  %1134 = add i64 %1103, 128
  store i64 %1134, i64* %6, align 8
  ret %struct.Memory* %MEMORY.3
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
define %struct.Memory* @routine_subq__0x70___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -112
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 112
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
define %struct.Memory* @routine_movsd_0x2c140__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x2c140__rip__type* @G_0x2c140__rip_ to i64)
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
define %struct.Memory* @routine_jb_.L_42880a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4286b9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x2c11f__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x2c11f__rip__type* @G_0x2c11f__rip_ to i64)
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
define %struct.Memory* @routine_movsd_0x2c11f__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x2c11f__rip__type* @G_0x2c11f__rip_ to i64)
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
define %struct.Memory* @routine_cvtss2sd_MINUS0x8__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
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
define %struct.Memory* @routine_mulsd__xmm2___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast %union.VectorReg* %4 to double*
  %10 = load double, double* %9, align 1
  %11 = fmul double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subsd__xmm0___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %11 = fsub double %8, %10
  store double %11, double* %7, align 1
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
define %struct.Memory* @routine_callq_.sqrt_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.sre_random(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss_0x2c034__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x2c034__rip__type* @G_0x2c034__rip_ to i64)
  %7 = add i64 %5, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %6 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = bitcast %union.VectorReg* %3 to i32*
  store i32 %9, i32* %10, align 1
  %11 = getelementptr inbounds i8, i8* %4, i64 4
  %12 = bitcast i8* %11 to float*
  store float 0.000000e+00, float* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %14 = bitcast i64* %13 to float*
  store float 0.000000e+00, float* %14, align 1
  %15 = getelementptr inbounds i8, i8* %4, i64 12
  %16 = bitcast i8* %15 to float*
  store float 0.000000e+00, float* %16, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
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
define %struct.Memory* @routine_movss_MINUS0xc__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
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
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movaps__xmm1___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = bitcast %union.VectorReg* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %4 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x i32>*
  %12 = load <2 x i32>, <2 x i32>* %11, align 1
  %13 = extractelement <2 x i32> %9, i32 0
  %14 = bitcast %union.VectorReg* %3 to i32*
  store i32 %13, i32* %14, align 1
  %15 = extractelement <2 x i32> %9, i32 1
  %16 = getelementptr inbounds i8, i8* %5, i64 4
  %17 = bitcast i8* %16 to i32*
  store i32 %15, i32* %17, align 1
  %18 = extractelement <2 x i32> %12, i32 0
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %20 = bitcast i64* %19 to i32*
  store i32 %18, i32* %20, align 1
  %21 = extractelement <2 x i32> %12, i32 1
  %22 = getelementptr inbounds i8, i8* %5, i64 12
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subss_MINUS0xc__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -12
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x float>*
  %10 = load <2 x float>, <2 x float>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
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
define %struct.Memory* @routine_divss__xmm2___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
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
  %17 = fdiv float %15, %16
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16
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
define %struct.Memory* @routine_cvtss2sd_MINUS0x10__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16
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
define %struct.Memory* @routine_divss_MINUS0x1c__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -28
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
  %17 = fdiv float %16, %15
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
define %struct.Memory* @routine_movaps__xmm2___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %5 = bitcast [32 x %union.VectorReg]* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %4 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
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
define %struct.Memory* @routine_callq_.pow_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_MINUS0x28__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd__xmm0___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %11 = fmul double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsd2ss__xmm1___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = bitcast [32 x %union.VectorReg]* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = bitcast [32 x %union.VectorReg]* %3 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x i32>*
  %12 = load <2 x i32>, <2 x i32>* %11, align 1
  %13 = bitcast %union.VectorReg* %4 to double*
  %14 = load double, double* %13, align 1
  %15 = fptrunc double %14 to float
  %16 = bitcast [32 x %union.VectorReg]* %3 to float*
  store float %15, float* %16, align 1
  %17 = extractelement <2 x i32> %9, i32 1
  %18 = getelementptr inbounds i8, i8* %5, i64 4
  %19 = bitcast i8* %18 to i32*
  store i32 %17, i32* %19, align 1
  %20 = extractelement <2 x i32> %12, i32 0
  %21 = bitcast i64* %10 to i32*
  store i32 %20, i32* %21, align 1
  %22 = extractelement <2 x i32> %12, i32 1
  %23 = getelementptr inbounds i8, i8* %5, i64 12
  %24 = bitcast i8* %23 to i32*
  store i32 %22, i32* %24, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20
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
define %struct.Memory* @routine_movss_MINUS0x14__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -20
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
define %struct.Memory* @routine_movd__xmm0___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 4
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  %7 = trunc i64 %6 to i32
  %8 = bitcast i64* %RAX to [2 x i32]*
  %9 = bitcast i64* %RAX to i32*
  store i32 %7, i32* %9, align 1
  %10 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  store i32 0, i32* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_xorl__0x80000000___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 5
  store i64 %5, i64* %PC, align 8
  %6 = xor i64 %3, -2147483648
  %7 = trunc i64 %6 to i32
  %8 = and i64 %6, 4294967295
  store i64 %8, i64* %RAX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movd__eax___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %5 = bitcast %union.VectorReg* %4 to i8*
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %4 to i32*
  store i32 %6, i32* %9, align 1
  %10 = getelementptr inbounds i8, i8* %5, i64 4
  %11 = bitcast i8* %10 to i32*
  store i32 0, i32* %11, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %13 = bitcast i64* %12 to i32*
  store i32 0, i32* %13, align 1
  %14 = getelementptr inbounds i8, i8* %5, i64 12
  %15 = bitcast i8* %14 to i32*
  store i32 0, i32* %15, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addss_MINUS0x8__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cvtss2sd__xmm0___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
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
define %struct.Memory* @routine_movsd_0x2c073__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x2c073__rip__type* @G_0x2c073__rip_ to i64)
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
define %struct.Memory* @routine_movsd_0x2c193__rip____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x2c193__rip__type* @G_0x2c193__rip_ to i64)
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd__xmm0___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast %union.VectorReg* %4 to double*
  %10 = load double, double* %9, align 1
  %11 = fmul double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd_MINUS0x10__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16
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
define %struct.Memory* @routine_movss_MINUS0x8__rbp____xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
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
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_divss_MINUS0x1c__rbp____xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -28
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x float>*
  %10 = load <2 x float>, <2 x float>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to <2 x i32>*
  %13 = load <2 x i32>, <2 x i32>* %12, align 1
  %14 = inttoptr i64 %6 to float*
  %15 = load float, float* %14, align 4
  %16 = extractelement <2 x float> %10, i32 0
  %17 = fdiv float %16, %15
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
define %struct.Memory* @routine_cvtss2sd__xmm3___xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd__xmm3___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
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
define %struct.Memory* @routine_movsd__xmm2__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x2c046__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x2c046__rip__type* @G_0x2c046__rip_ to i64)
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
define %struct.Memory* @routine_movsd_0x2c036__rip____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x2c036__rip__type* @G_0x2c036__rip_ to i64)
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x30__rbp____xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd__xmm0___xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast %union.VectorReg* %4 to double*
  %10 = load double, double* %9, align 1
  %11 = fmul double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movaps__xmm2___xmm4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %5 = bitcast %union.VectorReg* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %4 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x i32>*
  %12 = load <2 x i32>, <2 x i32>* %11, align 1
  %13 = extractelement <2 x i32> %9, i32 0
  %14 = bitcast %union.VectorReg* %3 to i32*
  store i32 %13, i32* %14, align 1
  %15 = extractelement <2 x i32> %9, i32 1
  %16 = getelementptr inbounds i8, i8* %5, i64 4
  %17 = bitcast i8* %16 to i32*
  store i32 %15, i32* %17, align 1
  %18 = extractelement <2 x i32> %12, i32 0
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 1
  %20 = bitcast i64* %19 to i32*
  store i32 %18, i32* %20, align 1
  %21 = extractelement <2 x i32> %12, i32 1
  %22 = getelementptr inbounds i8, i8* %5, i64 12
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_divsd__xmm0___xmm4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast %union.VectorReg* %4 to double*
  %10 = load double, double* %9, align 1
  %11 = fdiv double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd__xmm4___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
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
define %struct.Memory* @routine_movsd__xmm3__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x38__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
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
define %struct.Memory* @routine_jb_.L_428805(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
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
define %struct.Memory* @routine_jmpq_.L_4289e6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_cvtss2sd_MINUS0x8__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
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
define %struct.Memory* @routine_jbe_.L_4289c8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_428821(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x2bfb2__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x2bfb2__rip__type* @G_0x2bfb2__rip_ to i64)
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
define %struct.Memory* @routine_movsd__xmm0__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
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
define %struct.Memory* @routine_movsd__xmm2__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x2bf85__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x2bf85__rip__type* @G_0x2bf85__rip_ to i64)
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
define %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_divsd__xmm0___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast %union.VectorReg* %4 to double*
  %10 = load double, double* %9, align 1
  %11 = fdiv double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd__xmm2___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %11 = fadd double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x40__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsd2ss__xmm2___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %5 = bitcast [32 x %union.VectorReg]* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = bitcast [32 x %union.VectorReg]* %3 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x i32>*
  %12 = load <2 x i32>, <2 x i32>* %11, align 1
  %13 = bitcast %union.VectorReg* %4 to double*
  %14 = load double, double* %13, align 1
  %15 = fptrunc double %14 to float
  %16 = bitcast [32 x %union.VectorReg]* %3 to float*
  store float %15, float* %16, align 1
  %17 = extractelement <2 x i32> %9, i32 1
  %18 = getelementptr inbounds i8, i8* %5, i64 4
  %19 = bitcast i8* %18 to i32*
  store i32 %17, i32* %19, align 1
  %20 = extractelement <2 x i32> %12, i32 0
  %21 = bitcast i64* %10 to i32*
  store i32 %20, i32* %21, align 1
  %22 = extractelement <2 x i32> %12, i32 1
  %23 = getelementptr inbounds i8, i8* %5, i64 12
  %24 = bitcast i8* %23 to i32*
  store i32 %22, i32* %24, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jbe_.L_428947(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_0x2bf4c__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x2bf4c__rip__type* @G_0x2bf4c__rip_ to i64)
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
define %struct.Memory* @routine_movss_0x2be8c__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x2be8c__rip__type* @G_0x2be8c__rip_ to i64)
  %7 = add i64 %5, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %6 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = bitcast %union.VectorReg* %3 to i32*
  store i32 %9, i32* %10, align 1
  %11 = getelementptr inbounds i8, i8* %4, i64 4
  %12 = bitcast i8* %11 to float*
  store float 0.000000e+00, float* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %14 = bitcast i64* %13 to float*
  store float 0.000000e+00, float* %14, align 1
  %15 = getelementptr inbounds i8, i8* %4, i64 12
  %16 = bitcast i8* %15 to float*
  store float 0.000000e+00, float* %16, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subss_MINUS0x10__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -16
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
define %struct.Memory* @routine_movsd__xmm2__MINUS0x50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm1__MINUS0x58__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
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
define %struct.Memory* @routine_movsd_MINUS0x50__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
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
define %struct.Memory* @routine_divsd__xmm0___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %11 = fdiv double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x58__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
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
define %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %11 = fadd double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_divsd__xmm1___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %11 = fdiv double %8, %10
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
define %struct.Memory* @routine_movq__0x8000000000000000___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 -9223372036854775808, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__xmm0___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* %RCX, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_xorq__rax___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = xor i64 %4, %3
  store i64 %7, i64* %RCX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = trunc i64 %7 to i32
  %10 = and i32 %9, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = icmp eq i64 %7, 0
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %17, i8* %18, align 1
  %19 = lshr i64 %7, 63
  %20 = trunc i64 %19 to i8
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %20, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 5
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %3, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  store i64 0, i64* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x2beda__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x2beda__rip__type* @G_0x2beda__rip_ to i64)
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
define %struct.Memory* @routine_cvtss2sd_MINUS0x14__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20
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
define %struct.Memory* @routine_cvtss2sd_MINUS0x8__rbp____xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
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
define %struct.Memory* @routine_subsd__xmm1___xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast %union.VectorReg* %4 to double*
  %10 = load double, double* %9, align 1
  %11 = fsub double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x60__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
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
define %struct.Memory* @routine_movaps__xmm3___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %5 = bitcast %union.VectorReg* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %4 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x i32>*
  %12 = load <2 x i32>, <2 x i32>* %11, align 1
  %13 = extractelement <2 x i32> %9, i32 0
  %14 = bitcast %union.VectorReg* %3 to i32*
  store i32 %13, i32* %14, align 1
  %15 = extractelement <2 x i32> %9, i32 1
  %16 = getelementptr inbounds i8, i8* %5, i64 4
  %17 = bitcast i8* %16 to i32*
  store i32 %15, i32* %17, align 1
  %18 = extractelement <2 x i32> %12, i32 0
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %20 = bitcast i64* %19 to i32*
  store i32 %18, i32* %20, align 1
  %21 = extractelement <2 x i32> %12, i32 1
  %22 = getelementptr inbounds i8, i8* %5, i64 12
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x60__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
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
define %struct.Memory* @routine_jb_.L_428942(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4289c3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x2be91__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x2be91__rip__type* @G_0x2be91__rip_ to i64)
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
define %struct.Memory* @routine_cvtss2sd_MINUS0x10__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16
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
define %struct.Memory* @routine_divsd__xmm2___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %11 = fdiv double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x68__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
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
define %struct.Memory* @routine_movsd_MINUS0x68__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
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
define %struct.Memory* @routine_movss_MINUS0x14__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -20
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
define %struct.Memory* @routine_movd__xmm1___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 4
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  %7 = trunc i64 %6 to i32
  %8 = bitcast i64* %RAX to [2 x i32]*
  %9 = bitcast i64* %RAX to i32*
  store i32 %7, i32* %9, align 1
  %10 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  store i32 0, i32* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movd__eax___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = bitcast %union.VectorReg* %4 to i8*
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %4 to i32*
  store i32 %6, i32* %9, align 1
  %10 = getelementptr inbounds i8, i8* %5, i64 4
  %11 = bitcast i8* %10 to i32*
  store i32 0, i32* %11, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %13 = bitcast i64* %12 to i32*
  store i32 0, i32* %13, align 1
  %14 = getelementptr inbounds i8, i8* %5, i64 12
  %15 = bitcast i8* %14 to i32*
  store i32 0, i32* %15, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x70__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
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
define %struct.Memory* @routine_movsd_MINUS0x70__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
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
define %struct.Memory* @routine_jb_.L_4289be(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4289cd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x458473___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x458473_type* @G__0x458473 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__0x0___al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  store i8 0, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.Die(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addq__0x70___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 112
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -113
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
