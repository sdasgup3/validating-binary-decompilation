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

; Function Attrs: alwaysinline
define %struct.Memory* @rd_pic_decision(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #0 {
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
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %12 = add i64 %7, -24
  %13 = add i64 %10, 8
  store i64 %13, i64* %3, align 8
  %14 = bitcast [32 x %union.VectorReg]* %11 to double*
  %15 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %11, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %16 = load i64, i64* %15, align 1
  %17 = inttoptr i64 %12 to i64*
  store i64 %16, i64* %17, align 8
  %18 = load i64, i64* %RBP.i, align 8
  %19 = add i64 %18, -24
  %20 = load i64, i64* %3, align 8
  %21 = add i64 %20, 5
  store i64 %21, i64* %3, align 8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %23 = load i64, i64* %22, align 1
  %24 = inttoptr i64 %19 to i64*
  store i64 %23, i64* %24, align 8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i = bitcast %union.anon* %25 to i32*
  %26 = load i64, i64* %RBP.i, align 8
  %27 = add i64 %26, -28
  %28 = load i32, i32* %EDI.i, align 4
  %29 = load i64, i64* %3, align 8
  %30 = add i64 %29, 3
  store i64 %30, i64* %3, align 8
  %31 = inttoptr i64 %27 to i32*
  store i32 %28, i32* %31, align 4
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i = bitcast %union.anon* %32 to i32*
  %33 = load i64, i64* %RBP.i, align 8
  %34 = add i64 %33, -32
  %35 = load i32, i32* %ESI.i, align 4
  %36 = load i64, i64* %3, align 8
  %37 = add i64 %36, 3
  store i64 %37, i64* %3, align 8
  %38 = inttoptr i64 %34 to i32*
  store i32 %35, i32* %38, align 4
  %39 = load i64, i64* %RBP.i, align 8
  %40 = add i64 %39, -40
  %41 = load i64, i64* %3, align 8
  %42 = add i64 %41, 5
  store i64 %42, i64* %3, align 8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  %44 = load i64, i64* %43, align 1
  %45 = inttoptr i64 %40 to i64*
  store i64 %44, i64* %45, align 8
  %46 = load i64, i64* %RBP.i, align 8
  %47 = add i64 %46, -28
  %48 = load i64, i64* %3, align 8
  %49 = add i64 %48, 5
  store i64 %49, i64* %3, align 8
  %50 = inttoptr i64 %47 to i32*
  %51 = load i32, i32* %50, align 4
  %52 = sitofp i32 %51 to double
  store double %52, double* %14, align 1
  %53 = add i64 %46, -40
  %54 = add i64 %48, 10
  store i64 %54, i64* %3, align 8
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %56 = inttoptr i64 %53 to double*
  %57 = load double, double* %56, align 8
  %58 = fmul double %52, %57
  store double %58, double* %14, align 1
  %59 = add i64 %46, -16
  %60 = add i64 %48, 15
  store i64 %60, i64* %3, align 8
  %61 = inttoptr i64 %59 to double*
  %62 = load double, double* %61, align 8
  %63 = fadd double %58, %62
  store double %63, double* %14, align 1
  %64 = add i64 %46, -48
  %65 = add i64 %48, 20
  store i64 %65, i64* %3, align 8
  %66 = inttoptr i64 %64 to double*
  store double %63, double* %66, align 8
  %67 = load i64, i64* %RBP.i, align 8
  %68 = add i64 %67, -32
  %69 = load i64, i64* %3, align 8
  %70 = add i64 %69, 5
  store i64 %70, i64* %3, align 8
  %71 = inttoptr i64 %68 to i32*
  %72 = load i32, i32* %71, align 4
  %73 = sitofp i32 %72 to double
  store double %73, double* %14, align 1
  %74 = add i64 %67, -40
  %75 = add i64 %69, 10
  store i64 %75, i64* %3, align 8
  %76 = inttoptr i64 %74 to double*
  %77 = load double, double* %76, align 8
  %78 = fmul double %73, %77
  store double %78, double* %14, align 1
  %79 = add i64 %67, -24
  %80 = add i64 %69, 15
  store i64 %80, i64* %3, align 8
  %81 = inttoptr i64 %79 to double*
  %82 = load double, double* %81, align 8
  %83 = fadd double %78, %82
  store double %83, double* %14, align 1
  %84 = add i64 %67, -56
  %85 = add i64 %69, 20
  store i64 %85, i64* %3, align 8
  %86 = inttoptr i64 %84 to double*
  store double %83, double* %86, align 8
  %87 = load i64, i64* %RBP.i, align 8
  %88 = add i64 %87, -56
  %89 = load i64, i64* %3, align 8
  %90 = add i64 %89, 5
  store i64 %90, i64* %3, align 8
  %91 = inttoptr i64 %88 to i64*
  %92 = load i64, i64* %91, align 8
  store i64 %92, i64* %15, align 1
  %93 = bitcast i64* %55 to double*
  store double 0.000000e+00, double* %93, align 1
  %94 = add i64 %87, -48
  %95 = add i64 %89, 10
  store i64 %95, i64* %3, align 8
  %96 = bitcast i64 %92 to double
  %97 = inttoptr i64 %94 to double*
  %98 = load double, double* %97, align 8
  %99 = fcmp uno double %96, %98
  br i1 %99, label %100, label %110

; <label>:100:                                    ; preds = %entry
  %101 = fadd double %96, %98
  %102 = bitcast double %101 to i64
  %103 = and i64 %102, 9221120237041090560
  %104 = icmp eq i64 %103, 9218868437227405312
  %105 = and i64 %102, 2251799813685247
  %106 = icmp ne i64 %105, 0
  %107 = and i1 %104, %106
  br i1 %107, label %108, label %116

; <label>:108:                                    ; preds = %100
  %109 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %95, %struct.Memory* %2)
  %.pre = load i64, i64* %3, align 8
  br label %routine_ucomisd_MINUS0x30__rbp____xmm0.exit33

; <label>:110:                                    ; preds = %entry
  %111 = fcmp ogt double %96, %98
  br i1 %111, label %116, label %112

; <label>:112:                                    ; preds = %110
  %113 = fcmp olt double %96, %98
  br i1 %113, label %116, label %114

; <label>:114:                                    ; preds = %112
  %115 = fcmp oeq double %96, %98
  br i1 %115, label %116, label %123

; <label>:116:                                    ; preds = %114, %112, %110, %100
  %117 = phi i8 [ 0, %110 ], [ 0, %112 ], [ 1, %114 ], [ 1, %100 ]
  %118 = phi i8 [ 0, %110 ], [ 0, %112 ], [ 0, %114 ], [ 1, %100 ]
  %119 = phi i8 [ 0, %110 ], [ 1, %112 ], [ 0, %114 ], [ 1, %100 ]
  %120 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %117, i8* %120, align 1
  %121 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %118, i8* %121, align 1
  %122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %119, i8* %122, align 1
  br label %123

; <label>:123:                                    ; preds = %116, %114
  %124 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %124, align 1
  %125 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %125, align 1
  %126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %126, align 1
  br label %routine_ucomisd_MINUS0x30__rbp____xmm0.exit33

routine_ucomisd_MINUS0x30__rbp____xmm0.exit33:    ; preds = %123, %108
  %127 = phi i64 [ %.pre, %108 ], [ %95, %123 ]
  %128 = phi %struct.Memory* [ %109, %108 ], [ %2, %123 ]
  %129 = add i64 %127, 44
  %130 = add i64 %127, 6
  %131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %132 = load i8, i8* %131, align 1
  %133 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %134 = load i8, i8* %133, align 1
  %135 = or i8 %134, %132
  %136 = icmp eq i8 %135, 0
  %137 = select i1 %136, i64 %129, i64 %130
  store i64 %137, i64* %3, align 8
  br i1 %136, label %block_.L_49dfb7, label %block_49df91

block_49df91:                                     ; preds = %routine_ucomisd_MINUS0x30__rbp____xmm0.exit33
  %138 = load i64, i64* %RBP.i, align 8
  %139 = add i64 %138, -56
  %140 = add i64 %137, 5
  store i64 %140, i64* %3, align 8
  %141 = inttoptr i64 %139 to i64*
  %142 = load i64, i64* %141, align 8
  store i64 %142, i64* %15, align 1
  store double 0.000000e+00, double* %93, align 1
  %143 = add i64 %138, -48
  %144 = add i64 %137, 10
  store i64 %144, i64* %3, align 8
  %145 = bitcast i64 %142 to double
  %146 = inttoptr i64 %143 to double*
  %147 = load double, double* %146, align 8
  %148 = fcmp uno double %145, %147
  br i1 %148, label %149, label %159

; <label>:149:                                    ; preds = %block_49df91
  %150 = fadd double %145, %147
  %151 = bitcast double %150 to i64
  %152 = and i64 %151, 9221120237041090560
  %153 = icmp eq i64 %152, 9218868437227405312
  %154 = and i64 %151, 2251799813685247
  %155 = icmp ne i64 %154, 0
  %156 = and i1 %153, %155
  br i1 %156, label %157, label %165

; <label>:157:                                    ; preds = %149
  %158 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %144, %struct.Memory* %128)
  %.pre4 = load i64, i64* %3, align 8
  %.pre5 = load i8, i8* %133, align 1
  br label %routine_ucomisd_MINUS0x30__rbp____xmm0.exit

; <label>:159:                                    ; preds = %block_49df91
  %160 = fcmp ogt double %145, %147
  br i1 %160, label %165, label %161

; <label>:161:                                    ; preds = %159
  %162 = fcmp olt double %145, %147
  br i1 %162, label %165, label %163

; <label>:163:                                    ; preds = %161
  %164 = fcmp oeq double %145, %147
  br i1 %164, label %165, label %170

; <label>:165:                                    ; preds = %163, %161, %159, %149
  %166 = phi i8 [ 0, %159 ], [ 0, %161 ], [ 1, %163 ], [ 1, %149 ]
  %167 = phi i8 [ 0, %159 ], [ 0, %161 ], [ 0, %163 ], [ 1, %149 ]
  %168 = phi i8 [ 0, %159 ], [ 1, %161 ], [ 0, %163 ], [ 1, %149 ]
  store i8 %166, i8* %133, align 1
  %169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %167, i8* %169, align 1
  store i8 %168, i8* %131, align 1
  br label %170

; <label>:170:                                    ; preds = %165, %163
  %171 = phi i8 [ %166, %165 ], [ %134, %163 ]
  %172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %172, align 1
  %173 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %173, align 1
  %174 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %174, align 1
  br label %routine_ucomisd_MINUS0x30__rbp____xmm0.exit

routine_ucomisd_MINUS0x30__rbp____xmm0.exit:      ; preds = %170, %157
  %175 = phi i8 [ %.pre5, %157 ], [ %171, %170 ]
  %176 = phi i64 [ %.pre4, %157 ], [ %144, %170 ]
  %177 = phi %struct.Memory* [ %158, %157 ], [ %128, %170 ]
  %178 = icmp eq i8 %175, 0
  %.v = select i1 %178, i64 40, i64 6
  %179 = add i64 %176, %.v
  store i64 %179, i64* %3, align 8
  br i1 %178, label %block_.L_49dfc3, label %block_49dfa1

block_49dfa1:                                     ; preds = %routine_ucomisd_MINUS0x30__rbp____xmm0.exit
  %180 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %181 = load i8, i8* %180, align 1
  %182 = icmp ne i8 %181, 0
  %.v8 = select i1 %182, i64 34, i64 6
  %183 = add i64 %179, %.v8
  store i64 %183, i64* %3, align 8
  %cmpBr_49dfa1 = icmp eq i8 %181, 1
  br i1 %cmpBr_49dfa1, label %block_.L_49dfc3, label %block_49dfa7

block_49dfa7:                                     ; preds = %block_49dfa1
  %184 = load i64, i64* %RBP.i, align 8
  %185 = add i64 %184, -24
  %186 = add i64 %183, 5
  store i64 %186, i64* %3, align 8
  %187 = inttoptr i64 %185 to i64*
  %188 = load i64, i64* %187, align 8
  store i64 %188, i64* %15, align 1
  store double 0.000000e+00, double* %93, align 1
  %189 = add i64 %184, -16
  %190 = add i64 %183, 10
  store i64 %190, i64* %3, align 8
  %191 = bitcast i64 %188 to double
  %192 = inttoptr i64 %189 to double*
  %193 = load double, double* %192, align 8
  %194 = fcmp uno double %191, %193
  br i1 %194, label %195, label %205

; <label>:195:                                    ; preds = %block_49dfa7
  %196 = fadd double %191, %193
  %197 = bitcast double %196 to i64
  %198 = and i64 %197, 9221120237041090560
  %199 = icmp eq i64 %198, 9218868437227405312
  %200 = and i64 %197, 2251799813685247
  %201 = icmp ne i64 %200, 0
  %202 = and i1 %199, %201
  br i1 %202, label %203, label %211

; <label>:203:                                    ; preds = %195
  %204 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %190, %struct.Memory* %177)
  %.pre6 = load i64, i64* %3, align 8
  br label %routine_ucomisd_MINUS0x10__rbp____xmm0.exit

; <label>:205:                                    ; preds = %block_49dfa7
  %206 = fcmp ogt double %191, %193
  br i1 %206, label %211, label %207

; <label>:207:                                    ; preds = %205
  %208 = fcmp olt double %191, %193
  br i1 %208, label %211, label %209

; <label>:209:                                    ; preds = %207
  %210 = fcmp oeq double %191, %193
  br i1 %210, label %211, label %215

; <label>:211:                                    ; preds = %209, %207, %205, %195
  %212 = phi i8 [ 0, %205 ], [ 0, %207 ], [ 1, %209 ], [ 1, %195 ]
  %213 = phi i8 [ 0, %205 ], [ 0, %207 ], [ 0, %209 ], [ 1, %195 ]
  %214 = phi i8 [ 0, %205 ], [ 1, %207 ], [ 0, %209 ], [ 1, %195 ]
  store i8 %212, i8* %133, align 1
  store i8 %213, i8* %180, align 1
  store i8 %214, i8* %131, align 1
  br label %215

; <label>:215:                                    ; preds = %211, %209
  %216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %216, align 1
  %217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %217, align 1
  %218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %218, align 1
  br label %routine_ucomisd_MINUS0x10__rbp____xmm0.exit

routine_ucomisd_MINUS0x10__rbp____xmm0.exit:      ; preds = %215, %203
  %219 = phi i64 [ %.pre6, %203 ], [ %190, %215 ]
  %220 = phi %struct.Memory* [ %204, %203 ], [ %177, %215 ]
  %221 = load i8, i8* %131, align 1
  %222 = icmp ne i8 %221, 0
  %.v9 = select i1 %222, i64 18, i64 6
  %223 = add i64 %219, %.v9
  store i64 %223, i64* %3, align 8
  %cmpBr_49dfb1 = icmp eq i8 %221, 1
  br i1 %cmpBr_49dfb1, label %block_.L_49dfc3, label %block_.L_49dfb7

block_.L_49dfb7:                                  ; preds = %routine_ucomisd_MINUS0x10__rbp____xmm0.exit, %routine_ucomisd_MINUS0x30__rbp____xmm0.exit33
  %224 = phi i64 [ %129, %routine_ucomisd_MINUS0x30__rbp____xmm0.exit33 ], [ %223, %routine_ucomisd_MINUS0x10__rbp____xmm0.exit ]
  %MEMORY.0 = phi %struct.Memory* [ %128, %routine_ucomisd_MINUS0x30__rbp____xmm0.exit33 ], [ %220, %routine_ucomisd_MINUS0x10__rbp____xmm0.exit ]
  %225 = load i64, i64* %RBP.i, align 8
  %226 = add i64 %225, -4
  %227 = add i64 %224, 7
  store i64 %227, i64* %3, align 8
  %228 = inttoptr i64 %226 to i32*
  store i32 0, i32* %228, align 4
  %229 = load i64, i64* %3, align 8
  %230 = add i64 %229, 12
  store i64 %230, i64* %3, align 8
  br label %block_.L_49dfca

block_.L_49dfc3:                                  ; preds = %routine_ucomisd_MINUS0x10__rbp____xmm0.exit, %block_49dfa1, %routine_ucomisd_MINUS0x30__rbp____xmm0.exit
  %231 = phi i64 [ %179, %routine_ucomisd_MINUS0x30__rbp____xmm0.exit ], [ %183, %block_49dfa1 ], [ %223, %routine_ucomisd_MINUS0x10__rbp____xmm0.exit ]
  %MEMORY.1 = phi %struct.Memory* [ %177, %routine_ucomisd_MINUS0x30__rbp____xmm0.exit ], [ %177, %block_49dfa1 ], [ %220, %routine_ucomisd_MINUS0x10__rbp____xmm0.exit ]
  %232 = load i64, i64* %RBP.i, align 8
  %233 = add i64 %232, -4
  %234 = add i64 %231, 7
  store i64 %234, i64* %3, align 8
  %235 = inttoptr i64 %233 to i32*
  store i32 1, i32* %235, align 4
  %.pre7 = load i64, i64* %3, align 8
  br label %block_.L_49dfca

block_.L_49dfca:                                  ; preds = %block_.L_49dfc3, %block_.L_49dfb7
  %236 = phi i64 [ %230, %block_.L_49dfb7 ], [ %.pre7, %block_.L_49dfc3 ]
  %MEMORY.2 = phi %struct.Memory* [ %MEMORY.0, %block_.L_49dfb7 ], [ %MEMORY.1, %block_.L_49dfc3 ]
  %RAX.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %237 = load i64, i64* %RBP.i, align 8
  %238 = add i64 %237, -4
  %239 = add i64 %236, 3
  store i64 %239, i64* %3, align 8
  %240 = inttoptr i64 %238 to i32*
  %241 = load i32, i32* %240, align 4
  %242 = zext i32 %241 to i64
  store i64 %242, i64* %RAX.i, align 8
  %243 = add i64 %236, 4
  store i64 %243, i64* %3, align 8
  %244 = load i64, i64* %6, align 8
  %245 = add i64 %244, 8
  %246 = inttoptr i64 %244 to i64*
  %247 = load i64, i64* %246, align 8
  store i64 %247, i64* %RBP.i, align 8
  store i64 %245, i64* %6, align 8
  %248 = add i64 %236, 5
  store i64 %248, i64* %3, align 8
  %249 = inttoptr i64 %245 to i64*
  %250 = load i64, i64* %249, align 8
  store i64 %250, i64* %3, align 8
  %251 = add i64 %244, 16
  store i64 %251, i64* %6, align 8
  ret %struct.Memory* %MEMORY.2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_pushq__rbp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #1 {
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
define %struct.Memory* @routine_movq__rsp___rbp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #1 {
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
define %struct.Memory* @routine_movsd__xmm0__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #1 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
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
define %struct.Memory* @routine_movsd__xmm1__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #1 {
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
define %struct.Memory* @routine_movl__edi__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #1 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -28
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #1 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -32
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm2__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #1 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
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
define %struct.Memory* @routine_cvtsi2sdl_MINUS0x1c__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #1 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -28
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = sitofp i32 %9 to double
  %11 = bitcast %union.VectorReg* %3 to double*
  store double %10, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd_MINUS0x28__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #1 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -40
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fmul double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd_MINUS0x10__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #1 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fadd double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #1 {
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
define %struct.Memory* @routine_cvtsi2sdl_MINUS0x20__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #1 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -32
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = sitofp i32 %9 to double
  %11 = bitcast %union.VectorReg* %3 to double*
  store double %10, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd_MINUS0x18__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #1 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fadd double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #1 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
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
define %struct.Memory* @routine_movsd_MINUS0x38__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #1 {
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_ucomisd_MINUS0x30__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -48
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fcmp uno double %9, %11
  br i1 %12, label %13, label %23

; <label>:13:                                     ; preds = %block_400488
  %14 = fadd double %9, %11
  %15 = bitcast double %14 to i64
  %16 = and i64 %15, 9221120237041090560
  %17 = icmp eq i64 %16, 9218868437227405312
  %18 = and i64 %15, 2251799813685247
  %19 = icmp ne i64 %18, 0
  %20 = and i1 %17, %19
  br i1 %20, label %21, label %29

; <label>:21:                                     ; preds = %13
  %22 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %7, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit

; <label>:23:                                     ; preds = %block_400488
  %24 = fcmp ogt double %9, %11
  br i1 %24, label %29, label %25

; <label>:25:                                     ; preds = %23
  %26 = fcmp olt double %9, %11
  br i1 %26, label %29, label %27

; <label>:27:                                     ; preds = %25
  %28 = fcmp oeq double %9, %11
  br i1 %28, label %29, label %36

; <label>:29:                                     ; preds = %27, %25, %23, %13
  %30 = phi i8 [ 0, %23 ], [ 0, %25 ], [ 1, %27 ], [ 1, %13 ]
  %31 = phi i8 [ 0, %23 ], [ 0, %25 ], [ 0, %27 ], [ 1, %13 ]
  %32 = phi i8 [ 0, %23 ], [ 1, %25 ], [ 0, %27 ], [ 1, %13 ]
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %30, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %31, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %32, i8* %35, align 1
  br label %36

; <label>:36:                                     ; preds = %29, %27
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %37, align 1
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %38, align 1
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %39, align 1
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit: ; preds = %36, %21
  %40 = phi %struct.Memory* [ %22, %21 ], [ %2, %36 ]
  ret %struct.Memory* %40
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_ja_.L_49dfb7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #1 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5 = load i8, i8* %4, align 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  %8 = or i8 %7, %5
  %9 = icmp eq i8 %8, 0
  %10 = zext i1 %9 to i8
  store i8 %10, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %9, i64 %rel_off1, i64 %rel_off2
  %11 = add i64 %.v, %3
  store i64 %11, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_49dfc3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #1 {
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
define %struct.Memory* @routine_jp_.L_49dfc3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #1 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x18__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #1 {
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

define %struct.Memory* @routine_ucomisd_MINUS0x10__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fcmp uno double %9, %11
  br i1 %12, label %13, label %23

; <label>:13:                                     ; preds = %block_400488
  %14 = fadd double %9, %11
  %15 = bitcast double %14 to i64
  %16 = and i64 %15, 9221120237041090560
  %17 = icmp eq i64 %16, 9218868437227405312
  %18 = and i64 %15, 2251799813685247
  %19 = icmp ne i64 %18, 0
  %20 = and i1 %17, %19
  br i1 %20, label %21, label %29

; <label>:21:                                     ; preds = %13
  %22 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %7, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit

; <label>:23:                                     ; preds = %block_400488
  %24 = fcmp ogt double %9, %11
  br i1 %24, label %29, label %25

; <label>:25:                                     ; preds = %23
  %26 = fcmp olt double %9, %11
  br i1 %26, label %29, label %27

; <label>:27:                                     ; preds = %25
  %28 = fcmp oeq double %9, %11
  br i1 %28, label %29, label %36

; <label>:29:                                     ; preds = %27, %25, %23, %13
  %30 = phi i8 [ 0, %23 ], [ 0, %25 ], [ 1, %27 ], [ 1, %13 ]
  %31 = phi i8 [ 0, %23 ], [ 0, %25 ], [ 0, %27 ], [ 1, %13 ]
  %32 = phi i8 [ 0, %23 ], [ 1, %25 ], [ 0, %27 ], [ 1, %13 ]
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %30, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %31, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %32, i8* %35, align 1
  br label %36

; <label>:36:                                     ; preds = %29, %27
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %37, align 1
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %38, align 1
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %39, align 1
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit: ; preds = %36, %21
  %40 = phi %struct.Memory* [ %22, %21 ], [ %2, %36 ]
  ret %struct.Memory* %40
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jb_.L_49dfc3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #1 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #1 {
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
define %struct.Memory* @routine_jmpq_.L_49dfca(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #1 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #1 {
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
define %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #1 {
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
define %struct.Memory* @routine_popq__rbp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #1 {
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
define %struct.Memory* @routine_retq(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #1 {
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

attributes #0 = { alwaysinline }
attributes #1 = { norecurse nounwind }
