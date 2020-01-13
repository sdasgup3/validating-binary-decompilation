; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x218__rip__4199424__type = type <{ [16 x i8] }>
%G_0x2b0__rip__4199280__type = type <{ [16 x i8] }>
%G_0x602340_type = type <{ [2 x i8] }>
%G_0x602348_type = type <{ [16 x i8] }>
%G_0x602370_type = type <{ [16 x i8] }>
%G_0x602630_type = type <{ [16 x i8] }>
%G_0x602638_type = type <{ [16 x i8] }>
%G_0x602640_type = type <{ [16 x i8] }>
%G_0x602648_type = type <{ [16 x i8] }>
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
@G_0x218__rip__4199424_ = local_unnamed_addr global %G_0x218__rip__4199424__type zeroinitializer
@G_0x2b0__rip__4199280_ = local_unnamed_addr global %G_0x2b0__rip__4199280__type zeroinitializer
@G_0x602340 = local_unnamed_addr global %G_0x602340_type zeroinitializer
@G_0x602348 = local_unnamed_addr global %G_0x602348_type zeroinitializer
@G_0x602370 = local_unnamed_addr global %G_0x602370_type zeroinitializer
@G_0x602630 = local_unnamed_addr global %G_0x602630_type zeroinitializer
@G_0x602638 = local_unnamed_addr global %G_0x602638_type zeroinitializer
@G_0x602640 = local_unnamed_addr global %G_0x602640_type zeroinitializer
@G_0x602648 = local_unnamed_addr global %G_0x602648_type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @asin(i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @ext_cos(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr

declare %struct.Memory* @ext_tan(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr

declare %struct.Memory* @ext_sin(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @transit_surface(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -152
  store i64 %11, i64* %6, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %18 = load i16, i16* bitcast (%G_0x602340_type* @G_0x602340 to i16*), align 8
  store i8 0, i8* %12, align 1
  %19 = and i16 %18, 255
  %20 = zext i16 %19 to i32
  %21 = tail call i32 @llvm.ctpop.i32(i32 %20)
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  store i8 %24, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %25 = icmp eq i16 %18, 0
  %26 = zext i1 %25 to i8
  store i8 %26, i8* %15, align 1
  %27 = lshr i16 %18, 15
  %28 = trunc i16 %27 to i8
  store i8 %28, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v = select i1 %25, i64 410, i64 25
  %29 = add i64 %10, %.v
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %31 = bitcast [32 x %union.VectorReg]* %30 to i8*
  %32 = add i64 %29, 3
  store i64 %32, i64* %3, align 8
  br i1 %25, label %block_.L_40126b, label %block_4010ea

block_4010ea:                                     ; preds = %entry
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %34 = bitcast [32 x %union.VectorReg]* %30 to i32*
  store i32 0, i32* %34, align 1
  %35 = getelementptr inbounds i8, i8* %31, i64 4
  %36 = bitcast i8* %35 to i32*
  store i32 0, i32* %36, align 1
  %37 = bitcast i64* %33 to i32*
  store i32 0, i32* %37, align 1
  %38 = getelementptr inbounds i8, i8* %31, i64 12
  %39 = bitcast i8* %38 to i32*
  store i32 0, i32* %39, align 1
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %41 = load double, double* bitcast (%G_0x602640_type* @G_0x602640 to double*), align 8
  %42 = bitcast %union.VectorReg* %40 to double*
  store double %41, double* %42, align 1
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %44 = bitcast i64* %43 to double*
  store double 0.000000e+00, double* %44, align 1
  %45 = add i64 %29, 16
  store i64 %45, i64* %3, align 8
  %46 = bitcast [32 x %union.VectorReg]* %30 to double*
  %47 = load double, double* %46, align 1
  %48 = fcmp uno double %41, %47
  br i1 %48, label %49, label %59

; <label>:49:                                     ; preds = %block_4010ea
  %50 = fadd double %41, %47
  %51 = bitcast double %50 to i64
  %52 = and i64 %51, 9221120237041090560
  %53 = icmp eq i64 %52, 9218868437227405312
  %54 = and i64 %51, 2251799813685247
  %55 = icmp ne i64 %54, 0
  %56 = and i1 %53, %55
  br i1 %56, label %57, label %65

; <label>:57:                                     ; preds = %49
  %58 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %45, %struct.Memory* %2)
  %.pre = load i64, i64* %3, align 8
  %.pre1 = load i8, i8* %15, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit419

; <label>:59:                                     ; preds = %block_4010ea
  %60 = fcmp ogt double %41, %47
  br i1 %60, label %65, label %61

; <label>:61:                                     ; preds = %59
  %62 = fcmp olt double %41, %47
  br i1 %62, label %65, label %63

; <label>:63:                                     ; preds = %61
  %64 = fcmp oeq double %41, %47
  br i1 %64, label %65, label %69

; <label>:65:                                     ; preds = %63, %61, %59, %49
  %66 = phi i8 [ 0, %59 ], [ 0, %61 ], [ 1, %63 ], [ 1, %49 ]
  %67 = phi i8 [ 0, %59 ], [ 0, %61 ], [ 0, %63 ], [ 1, %49 ]
  %68 = phi i8 [ 0, %59 ], [ 1, %61 ], [ 0, %63 ], [ 1, %49 ]
  store i8 %66, i8* %15, align 1
  store i8 %67, i8* %13, align 1
  store i8 %68, i8* %12, align 1
  br label %69

; <label>:69:                                     ; preds = %65, %63
  %70 = phi i8 [ %66, %65 ], [ %26, %63 ]
  store i8 0, i8* %17, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %14, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit419

routine_ucomisd__xmm0___xmm1.exit419:             ; preds = %69, %57
  %71 = phi i8 [ %.pre1, %57 ], [ %70, %69 ]
  %72 = phi i64 [ %.pre, %57 ], [ %45, %69 ]
  %73 = phi %struct.Memory* [ %58, %57 ], [ %2, %69 ]
  %74 = icmp eq i8 %71, 0
  %.v25 = select i1 %74, i64 17, i64 6
  %75 = add i64 %72, %.v25
  store i64 %75, i64* %3, align 8
  br i1 %74, label %block_.L_40110b, label %block_401100

block_401100:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit419
  %76 = load i8, i8* %13, align 1
  %77 = icmp ne i8 %76, 0
  %.v26 = select i1 %77, i64 11, i64 6
  %78 = add i64 %75, %.v26
  store i64 %78, i64* %3, align 8
  %cmpBr_401100 = icmp eq i8 %76, 1
  br i1 %cmpBr_401100, label %block_.L_40110b, label %block_401106

block_401106:                                     ; preds = %block_401100
  %79 = load double, double* bitcast (%G_0x602348_type* @G_0x602348 to double*), align 8
  %80 = load double, double* bitcast (%G_0x602648_type* @G_0x602648 to double*), align 8
  %81 = load double, double* bitcast (%G_0x602638_type* @G_0x602638 to double*), align 8
  %82 = fdiv double %80, %81
  %83 = fmul double %79, %82
  store double %83, double* bitcast (%G_0x602348_type* @G_0x602348 to double*), align 8
  %84 = load double, double* bitcast (%G_0x602370_type* @G_0x602370 to double*), align 8
  %85 = fdiv double %81, %80
  store double %85, double* %42, align 1
  store i64 0, i64* %43, align 1
  %86 = fmul double %84, %85
  store double %86, double* %46, align 1
  store i64 0, i64* %33, align 1
  store double %86, double* bitcast (%G_0x602370_type* @G_0x602370 to double*), align 8
  %87 = add i64 %78, 1055
  store i64 %87, i64* %3, align 8
  br label %block_.L_401525

block_.L_40110b:                                  ; preds = %block_401100, %routine_ucomisd__xmm0___xmm1.exit419
  %88 = phi i64 [ %78, %block_401100 ], [ %75, %routine_ucomisd__xmm0___xmm1.exit419 ]
  store i32 0, i32* %34, align 1
  store i32 0, i32* %36, align 1
  store i32 0, i32* %37, align 1
  store i32 0, i32* %39, align 1
  %89 = load double, double* bitcast (%G_0x602348_type* @G_0x602348 to double*), align 8
  store double %89, double* %42, align 1
  store double 0.000000e+00, double* %44, align 1
  %90 = add i64 %88, 16
  store i64 %90, i64* %3, align 8
  %91 = load double, double* %46, align 1
  %92 = fcmp uno double %89, %91
  br i1 %92, label %93, label %103

; <label>:93:                                     ; preds = %block_.L_40110b
  %94 = fadd double %89, %91
  %95 = bitcast double %94 to i64
  %96 = and i64 %95, 9221120237041090560
  %97 = icmp eq i64 %96, 9218868437227405312
  %98 = and i64 %95, 2251799813685247
  %99 = icmp ne i64 %98, 0
  %100 = and i1 %97, %99
  br i1 %100, label %101, label %109

; <label>:101:                                    ; preds = %93
  %102 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %90, %struct.Memory* %73)
  %.pre2 = load i64, i64* %3, align 8
  %.pre3 = load i8, i8* %15, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit415

; <label>:103:                                    ; preds = %block_.L_40110b
  %104 = fcmp ogt double %89, %91
  br i1 %104, label %109, label %105

; <label>:105:                                    ; preds = %103
  %106 = fcmp olt double %89, %91
  br i1 %106, label %109, label %107

; <label>:107:                                    ; preds = %105
  %108 = fcmp oeq double %89, %91
  br i1 %108, label %109, label %113

; <label>:109:                                    ; preds = %107, %105, %103, %93
  %110 = phi i8 [ 0, %103 ], [ 0, %105 ], [ 1, %107 ], [ 1, %93 ]
  %111 = phi i8 [ 0, %103 ], [ 0, %105 ], [ 0, %107 ], [ 1, %93 ]
  %112 = phi i8 [ 0, %103 ], [ 1, %105 ], [ 0, %107 ], [ 1, %93 ]
  store i8 %110, i8* %15, align 1
  store i8 %111, i8* %13, align 1
  store i8 %112, i8* %12, align 1
  br label %113

; <label>:113:                                    ; preds = %109, %107
  %114 = phi i8 [ %110, %109 ], [ %71, %107 ]
  store i8 0, i8* %17, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %14, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit415

routine_ucomisd__xmm0___xmm1.exit415:             ; preds = %113, %101
  %115 = phi i8 [ %.pre3, %101 ], [ %114, %113 ]
  %116 = phi i64 [ %.pre2, %101 ], [ %90, %113 ]
  %117 = phi %struct.Memory* [ %102, %101 ], [ %73, %113 ]
  %118 = icmp eq i8 %115, 0
  %.v27 = select i1 %118, i64 52, i64 6
  %119 = add i64 %116, %.v27
  store i64 %119, i64* %3, align 8
  br i1 %118, label %block_.L_40114f, label %block_401121

block_401121:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit415
  %120 = load i8, i8* %13, align 1
  %121 = icmp ne i8 %120, 0
  %.v28 = select i1 %121, i64 46, i64 6
  %122 = add i64 %119, %.v28
  store i64 %122, i64* %3, align 8
  %cmpBr_401121 = icmp eq i8 %120, 1
  br i1 %cmpBr_401121, label %block_.L_40114f, label %block_401127

block_401127:                                     ; preds = %block_401121
  store i32 0, i32* %34, align 1
  store i32 0, i32* %36, align 1
  %123 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %30, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %124 = load i64, i64* %123, align 1
  store i64 %124, i64* bitcast (%G_0x602370_type* @G_0x602370 to i64*), align 8
  %125 = load double, double* bitcast (%G_0x602630_type* @G_0x602630 to double*), align 8
  %126 = load double, double* bitcast (%G_0x602640_type* @G_0x602640 to double*), align 8
  %127 = fdiv double %125, %126
  store double %127, double* %46, align 1
  store i64 0, i64* %33, align 1
  %128 = load i64, i64* %RBP.i, align 8
  %129 = add i64 %128, -24
  %130 = add i64 %122, 35
  store i64 %130, i64* %3, align 8
  %131 = inttoptr i64 %129 to double*
  store double %127, double* %131, align 8
  %132 = load i64, i64* %3, align 8
  %133 = add i64 %132, 46
  store i64 %133, i64* %3, align 8
  br label %block_.L_401178

block_.L_40114f:                                  ; preds = %block_401121, %routine_ucomisd__xmm0___xmm1.exit415
  %134 = phi i64 [ %122, %block_401121 ], [ %119, %routine_ucomisd__xmm0___xmm1.exit415 ]
  %135 = load double, double* bitcast (%G_0x602348_type* @G_0x602348 to double*), align 8
  %136 = load double, double* bitcast (%G_0x602640_type* @G_0x602640 to double*), align 8
  %137 = fsub double %135, %136
  %138 = fdiv double %137, %136
  %139 = load double, double* bitcast (%G_0x602370_type* @G_0x602370 to double*), align 8
  %140 = fmul double %138, %139
  store double %140, double* %46, align 1
  store i64 0, i64* %33, align 1
  %141 = load i64, i64* %RBP.i, align 8
  %142 = add i64 %141, -24
  %143 = add i64 %134, 41
  store i64 %143, i64* %3, align 8
  %144 = inttoptr i64 %142 to double*
  store double %140, double* %144, align 8
  %.pre4 = load i64, i64* %3, align 8
  br label %block_.L_401178

block_.L_401178:                                  ; preds = %block_.L_40114f, %block_401127
  %145 = phi i64 [ %.pre4, %block_.L_40114f ], [ %133, %block_401127 ]
  store i32 0, i32* %34, align 1
  store i32 0, i32* %36, align 1
  store i32 0, i32* %37, align 1
  store i32 0, i32* %39, align 1
  %146 = load double, double* bitcast (%G_0x602638_type* @G_0x602638 to double*), align 8
  %147 = load double, double* bitcast (%G_0x602648_type* @G_0x602648 to double*), align 8
  %148 = fdiv double %146, %147
  store double %148, double* %42, align 1
  store i64 0, i64* %43, align 1
  %149 = load i64, i64* %RBP.i, align 8
  %150 = add i64 %149, -24
  %151 = add i64 %145, 26
  store i64 %151, i64* %3, align 8
  %152 = inttoptr i64 %150 to double*
  %153 = load double, double* %152, align 8
  %154 = fmul double %148, %153
  %155 = add i64 %149, -32
  %156 = add i64 %145, 31
  store i64 %156, i64* %3, align 8
  %157 = inttoptr i64 %155 to double*
  store double %154, double* %157, align 8
  %158 = load i64, i64* %3, align 8
  %159 = load i64, i64* bitcast (%G_0x602370_type* @G_0x602370 to i64*), align 8
  %160 = load i64, i64* %RBP.i, align 8
  %161 = add i64 %160, -40
  %162 = add i64 %158, 14
  store i64 %162, i64* %3, align 8
  %163 = inttoptr i64 %161 to i64*
  store i64 %159, i64* %163, align 8
  %164 = load i64, i64* %3, align 8
  %165 = load double, double* bitcast (%G_0x602370_type* @G_0x602370 to double*), align 8
  store double %165, double* %42, align 1
  store double 0.000000e+00, double* %44, align 1
  %166 = load i64, i64* %RBP.i, align 8
  %167 = add i64 %166, -24
  %168 = add i64 %164, 14
  store i64 %168, i64* %3, align 8
  %169 = inttoptr i64 %167 to double*
  %170 = load double, double* %169, align 8
  %171 = fadd double %165, %170
  store double %171, double* %42, align 1
  store i64 0, i64* %43, align 1
  %172 = add i64 %166, -32
  %173 = add i64 %164, 19
  store i64 %173, i64* %3, align 8
  %174 = inttoptr i64 %172 to double*
  %175 = load double, double* %174, align 8
  %176 = fsub double %171, %175
  store double %176, double* bitcast (%G_0x602370_type* @G_0x602370 to double*), align 8
  %177 = load double, double* bitcast (%G_0x602348_type* @G_0x602348 to double*), align 8
  store double %177, double* %42, align 1
  store double 0.000000e+00, double* %44, align 1
  %178 = add i64 %164, 41
  store i64 %178, i64* %3, align 8
  %179 = load double, double* %46, align 1
  %180 = fcmp uno double %177, %179
  br i1 %180, label %181, label %191

; <label>:181:                                    ; preds = %block_.L_401178
  %182 = fadd double %177, %179
  %183 = bitcast double %182 to i64
  %184 = and i64 %183, 9221120237041090560
  %185 = icmp eq i64 %184, 9218868437227405312
  %186 = and i64 %183, 2251799813685247
  %187 = icmp ne i64 %186, 0
  %188 = and i1 %185, %187
  br i1 %188, label %189, label %197

; <label>:189:                                    ; preds = %181
  %190 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %178, %struct.Memory* %117)
  %.pre5 = load i64, i64* %3, align 8
  br label %routine_ucomisd__xmm0___xmm1.exit353

; <label>:191:                                    ; preds = %block_.L_401178
  %192 = fcmp ogt double %177, %179
  br i1 %192, label %197, label %193

; <label>:193:                                    ; preds = %191
  %194 = fcmp olt double %177, %179
  br i1 %194, label %197, label %195

; <label>:195:                                    ; preds = %193
  %196 = fcmp oeq double %177, %179
  br i1 %196, label %197, label %201

; <label>:197:                                    ; preds = %195, %193, %191, %181
  %198 = phi i8 [ 0, %191 ], [ 0, %193 ], [ 1, %195 ], [ 1, %181 ]
  %199 = phi i8 [ 0, %191 ], [ 0, %193 ], [ 0, %195 ], [ 1, %181 ]
  %200 = phi i8 [ 0, %191 ], [ 1, %193 ], [ 0, %195 ], [ 1, %181 ]
  store i8 %198, i8* %15, align 1
  store i8 %199, i8* %13, align 1
  store i8 %200, i8* %12, align 1
  br label %201

; <label>:201:                                    ; preds = %197, %195
  store i8 0, i8* %17, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %14, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit353

routine_ucomisd__xmm0___xmm1.exit353:             ; preds = %201, %189
  %202 = phi i64 [ %.pre5, %189 ], [ %178, %201 ]
  %203 = phi %struct.Memory* [ %190, %189 ], [ %117, %201 ]
  %204 = load i8, i8* %15, align 1
  %205 = icmp eq i8 %204, 0
  %.v29 = select i1 %205, i64 17, i64 6
  %206 = add i64 %202, %.v29
  store i64 %206, i64* %3, align 8
  br i1 %205, label %block_.L_4011df, label %block_4011d4

block_4011d4:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit353
  %207 = load i8, i8* %13, align 1
  %208 = icmp ne i8 %207, 0
  %.v30 = select i1 %208, i64 11, i64 6
  %209 = add i64 %206, %.v30
  store i64 %209, i64* %3, align 8
  %cmpBr_4011d4 = icmp eq i8 %207, 1
  br i1 %cmpBr_4011d4, label %block_.L_4011df, label %block_4011da

block_4011da:                                     ; preds = %block_4011d4
  %210 = add i64 %209, 28
  store i64 %210, i64* %3, align 8
  %.pre6 = load double, double* bitcast (%G_0x602630_type* @G_0x602630 to double*), align 8
  %.pre23 = bitcast i64* %33 to double*
  br label %block_.L_4011f6

block_.L_4011df:                                  ; preds = %block_4011d4, %routine_ucomisd__xmm0___xmm1.exit353
  %211 = phi i64 [ %209, %block_4011d4 ], [ %206, %routine_ucomisd__xmm0___xmm1.exit353 ]
  %212 = load double, double* bitcast (%G_0x602348_type* @G_0x602348 to double*), align 8
  store double %212, double* %46, align 1
  %213 = bitcast i64* %33 to double*
  store double 0.000000e+00, double* %213, align 1
  %214 = load i64, i64* %RBP.i, align 8
  %215 = add i64 %214, -40
  %216 = add i64 %211, 14
  store i64 %216, i64* %3, align 8
  %217 = inttoptr i64 %215 to double*
  %218 = load double, double* %217, align 8
  %219 = fmul double %212, %218
  store double %219, double* %46, align 1
  store i64 0, i64* %33, align 1
  %220 = add i64 %211, 23
  store i64 %220, i64* %3, align 8
  store double %219, double* bitcast (%G_0x602630_type* @G_0x602630 to double*), align 8
  br label %block_.L_4011f6

block_.L_4011f6:                                  ; preds = %block_.L_4011df, %block_4011da
  %.pre-phi24 = phi double* [ %213, %block_.L_4011df ], [ %.pre23, %block_4011da ]
  %.pre-phi22 = phi double* [ %46, %block_.L_4011df ], [ %46, %block_4011da ]
  %221 = phi double [ %219, %block_.L_4011df ], [ %.pre6, %block_4011da ]
  %222 = phi i64 [ %220, %block_.L_4011df ], [ %210, %block_4011da ]
  store double 0.000000e+00, double* %.pre-phi24, align 1
  %223 = load double, double* bitcast (%G_0x602370_type* @G_0x602370 to double*), align 8
  %224 = fdiv double %221, %223
  store double %224, double* %.pre-phi22, align 1
  store i64 0, i64* %33, align 1
  store double %224, double* bitcast (%G_0x602348_type* @G_0x602348 to double*), align 8
  %225 = add i64 %222, 815
  store i64 %225, i64* %3, align 8
  br label %block_.L_401525

block_.L_40126b:                                  ; preds = %entry
  %226 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %30, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %228 = bitcast [32 x %union.VectorReg]* %30 to i32*
  store i32 0, i32* %228, align 1
  %229 = getelementptr inbounds i8, i8* %31, i64 4
  %230 = bitcast i8* %229 to i32*
  store i32 0, i32* %230, align 1
  %231 = bitcast i64* %227 to i32*
  store i32 0, i32* %231, align 1
  %232 = getelementptr inbounds i8, i8* %31, i64 12
  %233 = bitcast i8* %232 to i32*
  store i32 0, i32* %233, align 1
  %234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %235 = load double, double* bitcast (%G_0x602640_type* @G_0x602640 to double*), align 8
  %236 = bitcast %union.VectorReg* %234 to double*
  store double %235, double* %236, align 1
  %237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %238 = bitcast i64* %237 to double*
  store double 0.000000e+00, double* %238, align 1
  %239 = add i64 %29, 16
  store i64 %239, i64* %3, align 8
  %240 = bitcast [32 x %union.VectorReg]* %30 to double*
  %241 = load double, double* %240, align 1
  %242 = fcmp uno double %235, %241
  br i1 %242, label %243, label %253

; <label>:243:                                    ; preds = %block_.L_40126b
  %244 = fadd double %235, %241
  %245 = bitcast double %244 to i64
  %246 = and i64 %245, 9221120237041090560
  %247 = icmp eq i64 %246, 9218868437227405312
  %248 = and i64 %245, 2251799813685247
  %249 = icmp ne i64 %248, 0
  %250 = and i1 %247, %249
  br i1 %250, label %251, label %259

; <label>:251:                                    ; preds = %243
  %252 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %239, %struct.Memory* %2)
  %.pre7 = load i64, i64* %3, align 8
  %.pre8 = load i8, i8* %15, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit301

; <label>:253:                                    ; preds = %block_.L_40126b
  %254 = fcmp ogt double %235, %241
  br i1 %254, label %259, label %255

; <label>:255:                                    ; preds = %253
  %256 = fcmp olt double %235, %241
  br i1 %256, label %259, label %257

; <label>:257:                                    ; preds = %255
  %258 = fcmp oeq double %235, %241
  br i1 %258, label %259, label %263

; <label>:259:                                    ; preds = %257, %255, %253, %243
  %260 = phi i8 [ 0, %253 ], [ 0, %255 ], [ 1, %257 ], [ 1, %243 ]
  %261 = phi i8 [ 0, %253 ], [ 0, %255 ], [ 0, %257 ], [ 1, %243 ]
  %262 = phi i8 [ 0, %253 ], [ 1, %255 ], [ 0, %257 ], [ 1, %243 ]
  store i8 %260, i8* %15, align 1
  store i8 %261, i8* %13, align 1
  store i8 %262, i8* %12, align 1
  br label %263

; <label>:263:                                    ; preds = %259, %257
  %264 = phi i8 [ %260, %259 ], [ %26, %257 ]
  store i8 0, i8* %17, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %14, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit301

routine_ucomisd__xmm0___xmm1.exit301:             ; preds = %263, %251
  %265 = phi i8 [ %.pre8, %251 ], [ %264, %263 ]
  %266 = phi i64 [ %.pre7, %251 ], [ %239, %263 ]
  %267 = phi %struct.Memory* [ %252, %251 ], [ %2, %263 ]
  %268 = icmp eq i8 %265, 0
  %.v31 = select i1 %268, i64 17, i64 6
  %269 = add i64 %266, %.v31
  store i64 %269, i64* %3, align 8
  br i1 %268, label %block_.L_40128c, label %block_401281

block_401281:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit301
  %270 = load i8, i8* %13, align 1
  %271 = icmp ne i8 %270, 0
  %.v32 = select i1 %271, i64 11, i64 6
  %272 = add i64 %269, %.v32
  store i64 %272, i64* %3, align 8
  %cmpBr_401281 = icmp eq i8 %270, 1
  br i1 %cmpBr_401281, label %block_.L_40128c, label %block_401287

block_401287:                                     ; preds = %block_401281
  %273 = load double, double* bitcast (%G_0x602638_type* @G_0x602638 to double*), align 8
  %274 = bitcast i64* %227 to double*
  %275 = load double, double* bitcast (%G_0x602648_type* @G_0x602648 to double*), align 8
  %276 = fdiv double %273, %275
  %277 = load i64, i64* bitcast (%G_0x602370_type* @G_0x602370 to i64*), align 8
  %278 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %234, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %277, i64* %278, align 1
  store double 0.000000e+00, double* %238, align 1
  %279 = load i64, i64* %RBP.i, align 8
  %280 = add i64 %279, -96
  %281 = add i64 %272, 441
  store i64 %281, i64* %3, align 8
  %282 = inttoptr i64 %280 to double*
  store double %276, double* %282, align 8
  %283 = load i64, i64* %3, align 8
  %284 = bitcast %union.VectorReg* %234 to <2 x i32>*
  %285 = load <2 x i32>, <2 x i32>* %284, align 1
  %286 = bitcast i64* %237 to <2 x i32>*
  %287 = load <2 x i32>, <2 x i32>* %286, align 1
  %288 = extractelement <2 x i32> %285, i32 0
  store i32 %288, i32* %228, align 1
  %289 = extractelement <2 x i32> %285, i32 1
  store i32 %289, i32* %230, align 1
  %290 = extractelement <2 x i32> %287, i32 0
  store i32 %290, i32* %231, align 1
  %291 = extractelement <2 x i32> %287, i32 1
  store i32 %291, i32* %233, align 1
  %292 = add i64 %283, -3680
  %293 = add i64 %283, 8
  %294 = load i64, i64* %6, align 8
  %295 = add i64 %294, -8
  %296 = inttoptr i64 %295 to i64*
  store i64 %293, i64* %296, align 8
  store i64 %295, i64* %6, align 8
  store i64 %292, i64* %3, align 8
  %call2_401443 = tail call %struct.Memory* @ext_sin(%struct.State* %0, i64 %292, %struct.Memory* %267)
  %297 = load i64, i64* %RBP.i, align 8
  %298 = add i64 %297, -96
  %299 = load i64, i64* %3, align 8
  %300 = add i64 %299, 5
  store i64 %300, i64* %3, align 8
  %301 = inttoptr i64 %298 to double*
  %302 = load double, double* %301, align 8
  %303 = load double, double* %240, align 1
  %304 = fmul double %302, %303
  store double %304, double* %236, align 1
  store i64 0, i64* %237, align 1
  %305 = bitcast double %304 to <2 x i32>
  %306 = extractelement <2 x i32> %305, i32 0
  store i32 %306, i32* %228, align 1
  %307 = extractelement <2 x i32> %305, i32 1
  store i32 %307, i32* %230, align 1
  store i32 0, i32* %231, align 1
  store i32 0, i32* %233, align 1
  %308 = add i64 %299, -3672
  %309 = add i64 %299, 17
  %310 = load i64, i64* %6, align 8
  %311 = add i64 %310, -8
  %312 = inttoptr i64 %311 to i64*
  store i64 %309, i64* %312, align 8
  store i64 %311, i64* %6, align 8
  store i64 %308, i64* %3, align 8
  %313 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @asin to i64), %struct.Memory* %call2_401443)
  %RAX.i96 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %314 = load i64, i64* %3, align 8
  store i64 -9223372036854775808, i64* %RAX.i96, align 8
  %RCX.i93 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %315 = load i64, i64* %226, align 1
  %316 = xor i64 %315, -9223372036854775808
  store i64 %316, i64* %RCX.i93, align 8
  store i8 0, i8* %12, align 1
  %317 = trunc i64 %315 to i32
  %318 = and i32 %317, 255
  %319 = tail call i32 @llvm.ctpop.i32(i32 %318)
  %320 = trunc i32 %319 to i8
  %321 = and i8 %320, 1
  %322 = xor i8 %321, 1
  store i8 %322, i8* %13, align 1
  %323 = icmp eq i64 %316, 0
  %324 = zext i1 %323 to i8
  store i8 %324, i8* %15, align 1
  %325 = lshr i64 %316, 63
  %326 = trunc i64 %325 to i8
  store i8 %326, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  %327 = load i64, i64* %RBP.i, align 8
  %328 = add i64 %327, -16
  %329 = add i64 %314, 28
  store i64 %329, i64* %3, align 8
  %330 = inttoptr i64 %328 to i64*
  store i64 %316, i64* %330, align 8
  %331 = load i64, i64* %3, align 8
  %332 = load i64, i64* bitcast (%G_0x602348_type* @G_0x602348 to i64*), align 8
  store i64 %332, i64* %226, align 1
  store double 0.000000e+00, double* %274, align 1
  %333 = load i64, i64* bitcast (%G_0x602648_type* @G_0x602648 to i64*), align 8
  store i64 %333, i64* %278, align 1
  store double 0.000000e+00, double* %238, align 1
  %334 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %335 = load i64, i64* %RBP.i, align 8
  %336 = add i64 %335, -16
  %337 = add i64 %331, 23
  store i64 %337, i64* %3, align 8
  %338 = inttoptr i64 %336 to i64*
  %339 = load i64, i64* %338, align 8
  %340 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %341 = bitcast i64* %340 to double*
  %342 = load i64, i64* %RAX.i96, align 8
  %343 = xor i64 %342, %339
  store i64 %343, i64* %RCX.i93, align 8
  store i8 0, i8* %12, align 1
  %344 = trunc i64 %343 to i32
  %345 = and i32 %344, 255
  %346 = tail call i32 @llvm.ctpop.i32(i32 %345)
  %347 = trunc i32 %346 to i8
  %348 = and i8 %347, 1
  %349 = xor i8 %348, 1
  store i8 %349, i8* %13, align 1
  %350 = icmp eq i64 %343, 0
  %351 = zext i1 %350 to i8
  store i8 %351, i8* %15, align 1
  %352 = lshr i64 %343, 63
  %353 = trunc i64 %352 to i8
  store i8 %353, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  %354 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %334, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %343, i64* %354, align 1
  store i64 0, i64* %340, align 1
  %355 = add i64 %335, -104
  %356 = add i64 %331, 41
  store i64 %356, i64* %3, align 8
  %357 = inttoptr i64 %355 to i64*
  store i64 %332, i64* %357, align 8
  %358 = load i64, i64* %3, align 8
  %359 = bitcast %union.VectorReg* %334 to <2 x i32>*
  %360 = load <2 x i32>, <2 x i32>* %359, align 1
  %361 = bitcast i64* %340 to <2 x i32>*
  %362 = load <2 x i32>, <2 x i32>* %361, align 1
  %363 = extractelement <2 x i32> %360, i32 0
  store i32 %363, i32* %228, align 1
  %364 = extractelement <2 x i32> %360, i32 1
  store i32 %364, i32* %230, align 1
  %365 = extractelement <2 x i32> %362, i32 0
  store i32 %365, i32* %231, align 1
  %366 = extractelement <2 x i32> %362, i32 1
  store i32 %366, i32* %233, align 1
  %367 = load i64, i64* %RBP.i, align 8
  %368 = add i64 %367, -112
  %369 = load i64, i64* %RAX.i96, align 8
  %370 = add i64 %358, 7
  store i64 %370, i64* %3, align 8
  %371 = inttoptr i64 %368 to i64*
  store i64 %369, i64* %371, align 8
  %372 = load i64, i64* %RBP.i, align 8
  %373 = add i64 %372, -120
  %374 = load i64, i64* %3, align 8
  %375 = add i64 %374, 5
  store i64 %375, i64* %3, align 8
  %376 = load i64, i64* %278, align 1
  %377 = inttoptr i64 %373 to i64*
  store i64 %376, i64* %377, align 8
  %378 = load i64, i64* %3, align 8
  %379 = add i64 %378, -3834
  %380 = add i64 %378, 5
  %381 = load i64, i64* %6, align 8
  %382 = add i64 %381, -8
  %383 = inttoptr i64 %382 to i64*
  store i64 %380, i64* %383, align 8
  store i64 %382, i64* %6, align 8
  store i64 %379, i64* %3, align 8
  %call2_4014aa = tail call %struct.Memory* @ext_cos(%struct.State* %0, i64 %379, %struct.Memory* %313)
  %384 = load i64, i64* %RBP.i, align 8
  %385 = add i64 %384, -120
  %386 = load i64, i64* %3, align 8
  %387 = add i64 %386, 5
  store i64 %387, i64* %3, align 8
  %388 = inttoptr i64 %385 to double*
  %389 = load double, double* %388, align 8
  %390 = load double, double* %240, align 1
  %391 = fmul double %389, %390
  store double %391, double* %236, align 1
  store i64 0, i64* %237, align 1
  %392 = load i64, i64* bitcast (%G_0x602638_type* @G_0x602638 to i64*), align 8
  %393 = load i64, i64* bitcast (%G_0x602370_type* @G_0x602370 to i64*), align 8
  store i64 %393, i64* %354, align 1
  store double 0.000000e+00, double* %341, align 1
  %394 = add i64 %384, -128
  %395 = add i64 %386, 32
  store i64 %395, i64* %3, align 8
  %396 = inttoptr i64 %394 to i64*
  store i64 %392, i64* %396, align 8
  %397 = load i64, i64* %3, align 8
  %398 = load <2 x i32>, <2 x i32>* %359, align 1
  %399 = load <2 x i32>, <2 x i32>* %361, align 1
  %400 = extractelement <2 x i32> %398, i32 0
  store i32 %400, i32* %228, align 1
  %401 = extractelement <2 x i32> %398, i32 1
  store i32 %401, i32* %230, align 1
  %402 = extractelement <2 x i32> %399, i32 0
  store i32 %402, i32* %231, align 1
  %403 = extractelement <2 x i32> %399, i32 1
  store i32 %403, i32* %233, align 1
  %404 = load i64, i64* %RBP.i, align 8
  %405 = add i64 %404, -136
  %406 = add i64 %397, 11
  store i64 %406, i64* %3, align 8
  %407 = load i64, i64* %278, align 1
  %408 = inttoptr i64 %405 to i64*
  store i64 %407, i64* %408, align 8
  %409 = load i64, i64* %3, align 8
  %410 = add i64 %409, -3882
  %411 = add i64 %409, 5
  %412 = load i64, i64* %6, align 8
  %413 = add i64 %412, -8
  %414 = inttoptr i64 %413 to i64*
  store i64 %411, i64* %414, align 8
  store i64 %413, i64* %6, align 8
  store i64 %410, i64* %3, align 8
  %call2_4014da = tail call %struct.Memory* @ext_cos(%struct.State* %0, i64 %410, %struct.Memory* %call2_4014aa)
  %415 = load i64, i64* %RBP.i, align 8
  %416 = add i64 %415, -128
  %417 = load i64, i64* %3, align 8
  %418 = add i64 %417, 5
  store i64 %418, i64* %3, align 8
  %419 = inttoptr i64 %416 to double*
  %420 = load double, double* %419, align 8
  %421 = load double, double* %240, align 1
  %422 = fmul double %420, %421
  store double %422, double* %236, align 1
  store i64 0, i64* %237, align 1
  %423 = add i64 %415, -136
  %424 = add i64 %417, 17
  store i64 %424, i64* %3, align 8
  %425 = inttoptr i64 %423 to double*
  %426 = load double, double* %425, align 8
  %427 = fdiv double %426, %422
  store double %427, double* %240, align 1
  store i64 0, i64* %227, align 1
  %428 = add i64 %415, -104
  %429 = add i64 %417, 26
  store i64 %429, i64* %3, align 8
  %430 = inttoptr i64 %428 to double*
  %431 = load double, double* %430, align 8
  %432 = fmul double %431, %427
  store double %432, double* %236, align 1
  store i64 0, i64* %237, align 1
  store double %432, double* bitcast (%G_0x602348_type* @G_0x602348 to double*), align 8
  %433 = add i64 %415, -16
  %434 = add i64 %417, 44
  store i64 %434, i64* %3, align 8
  %435 = inttoptr i64 %433 to double*
  %436 = load double, double* %435, align 8
  store double %436, double* %240, align 1
  store double 0.000000e+00, double* %274, align 1
  %437 = bitcast double %436 to i64
  %438 = bitcast i64* %RAX.i96 to double*
  store double %436, double* %438, align 1
  %439 = add i64 %415, -112
  %440 = add i64 %417, 53
  store i64 %440, i64* %3, align 8
  %441 = inttoptr i64 %439 to i64*
  %442 = load i64, i64* %441, align 8
  store i64 %442, i64* %RCX.i93, align 8
  %443 = xor i64 %442, %437
  store i64 %443, i64* %RAX.i96, align 8
  store i8 0, i8* %12, align 1
  %444 = trunc i64 %443 to i32
  %445 = and i32 %444, 255
  %446 = tail call i32 @llvm.ctpop.i32(i32 %445)
  %447 = trunc i32 %446 to i8
  %448 = and i8 %447, 1
  %449 = xor i8 %448, 1
  store i8 %449, i8* %13, align 1
  %450 = icmp eq i64 %443, 0
  %451 = zext i1 %450 to i8
  store i8 %451, i8* %15, align 1
  %452 = lshr i64 %443, 63
  %453 = trunc i64 %452 to i8
  store i8 %453, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  store i64 %443, i64* %226, align 1
  store i64 0, i64* %227, align 1
  %454 = add i64 %417, 70
  store i64 %454, i64* %3, align 8
  store i64 %443, i64* bitcast (%G_0x602370_type* @G_0x602370 to i64*), align 8
  br label %block_.L_401525

block_.L_40128c:                                  ; preds = %block_401281, %routine_ucomisd__xmm0___xmm1.exit301
  %455 = phi i64 [ %272, %block_401281 ], [ %269, %routine_ucomisd__xmm0___xmm1.exit301 ]
  store i32 0, i32* %228, align 1
  store i32 0, i32* %230, align 1
  store i32 0, i32* %231, align 1
  store i32 0, i32* %233, align 1
  %456 = load double, double* bitcast (%G_0x602348_type* @G_0x602348 to double*), align 8
  store double %456, double* %236, align 1
  store double 0.000000e+00, double* %238, align 1
  %457 = add i64 %455, 16
  store i64 %457, i64* %3, align 8
  %458 = load double, double* %240, align 1
  %459 = fcmp uno double %456, %458
  br i1 %459, label %460, label %470

; <label>:460:                                    ; preds = %block_.L_40128c
  %461 = fadd double %456, %458
  %462 = bitcast double %461 to i64
  %463 = and i64 %462, 9221120237041090560
  %464 = icmp eq i64 %463, 9218868437227405312
  %465 = and i64 %462, 2251799813685247
  %466 = icmp ne i64 %465, 0
  %467 = and i1 %464, %466
  br i1 %467, label %468, label %476

; <label>:468:                                    ; preds = %460
  %469 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %457, %struct.Memory* %267)
  %.pre9 = load i64, i64* %3, align 8
  %.pre10 = load i8, i8* %15, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit

; <label>:470:                                    ; preds = %block_.L_40128c
  %471 = fcmp ogt double %456, %458
  br i1 %471, label %476, label %472

; <label>:472:                                    ; preds = %470
  %473 = fcmp olt double %456, %458
  br i1 %473, label %476, label %474

; <label>:474:                                    ; preds = %472
  %475 = fcmp oeq double %456, %458
  br i1 %475, label %476, label %480

; <label>:476:                                    ; preds = %474, %472, %470, %460
  %477 = phi i8 [ 0, %470 ], [ 0, %472 ], [ 1, %474 ], [ 1, %460 ]
  %478 = phi i8 [ 0, %470 ], [ 0, %472 ], [ 0, %474 ], [ 1, %460 ]
  %479 = phi i8 [ 0, %470 ], [ 1, %472 ], [ 0, %474 ], [ 1, %460 ]
  store i8 %477, i8* %15, align 1
  store i8 %478, i8* %13, align 1
  store i8 %479, i8* %12, align 1
  br label %480

; <label>:480:                                    ; preds = %476, %474
  %481 = phi i8 [ %477, %476 ], [ %265, %474 ]
  store i8 0, i8* %17, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %14, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit

routine_ucomisd__xmm0___xmm1.exit:                ; preds = %480, %468
  %482 = phi i8 [ %.pre10, %468 ], [ %481, %480 ]
  %483 = phi i64 [ %.pre9, %468 ], [ %457, %480 ]
  %484 = phi %struct.Memory* [ %469, %468 ], [ %267, %480 ]
  %485 = icmp eq i8 %482, 0
  %.v33 = select i1 %485, i64 52, i64 6
  %486 = add i64 %483, %.v33
  store i64 %486, i64* %3, align 8
  br i1 %485, label %block_.L_4012d0, label %block_4012a2

block_4012a2:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit
  %487 = load i8, i8* %13, align 1
  %488 = icmp ne i8 %487, 0
  %.v34 = select i1 %488, i64 46, i64 6
  %489 = add i64 %486, %.v34
  store i64 %489, i64* %3, align 8
  %cmpBr_4012a2 = icmp eq i8 %487, 1
  br i1 %cmpBr_4012a2, label %block_.L_4012d0, label %block_4012a8

block_4012a8:                                     ; preds = %block_4012a2
  store i32 0, i32* %228, align 1
  store i32 0, i32* %230, align 1
  %490 = load i64, i64* %226, align 1
  store i64 %490, i64* bitcast (%G_0x602370_type* @G_0x602370 to i64*), align 8
  %491 = load double, double* bitcast (%G_0x602630_type* @G_0x602630 to double*), align 8
  %492 = load double, double* bitcast (%G_0x602640_type* @G_0x602640 to double*), align 8
  %493 = fdiv double %491, %492
  store double %493, double* %240, align 1
  store i64 0, i64* %227, align 1
  %494 = load i64, i64* %RBP.i, align 8
  %495 = add i64 %494, -24
  %496 = add i64 %489, 35
  store i64 %496, i64* %3, align 8
  %497 = inttoptr i64 %495 to double*
  store double %493, double* %497, align 8
  %498 = load i64, i64* %3, align 8
  %499 = add i64 %498, 68
  store i64 %499, i64* %3, align 8
  %.pre13 = bitcast %union.VectorReg* %234 to <2 x i32>*
  %.pre17 = bitcast i64* %237 to <2 x i32>*
  br label %block_.L_40130f

block_.L_4012d0:                                  ; preds = %block_4012a2, %routine_ucomisd__xmm0___xmm1.exit
  %500 = phi i64 [ %489, %block_4012a2 ], [ %486, %routine_ucomisd__xmm0___xmm1.exit ]
  %501 = load double, double* bitcast (%G_0x602348_type* @G_0x602348 to double*), align 8
  %502 = load double, double* bitcast (%G_0x602640_type* @G_0x602640 to double*), align 8
  %503 = fsub double %501, %502
  %504 = fdiv double %503, %502
  %505 = load i64, i64* bitcast (%G_0x602370_type* @G_0x602370 to i64*), align 8
  %506 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %234, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %505, i64* %506, align 1
  store double 0.000000e+00, double* %238, align 1
  %507 = load i64, i64* %RBP.i, align 8
  %508 = add i64 %507, -56
  %509 = add i64 %500, 41
  store i64 %509, i64* %3, align 8
  %510 = inttoptr i64 %508 to double*
  store double %504, double* %510, align 8
  %511 = load i64, i64* %3, align 8
  %512 = bitcast %union.VectorReg* %234 to <2 x i32>*
  %513 = load <2 x i32>, <2 x i32>* %512, align 1
  %514 = bitcast i64* %237 to <2 x i32>*
  %515 = load <2 x i32>, <2 x i32>* %514, align 1
  %516 = extractelement <2 x i32> %513, i32 0
  store i32 %516, i32* %228, align 1
  %517 = extractelement <2 x i32> %513, i32 1
  store i32 %517, i32* %230, align 1
  %518 = extractelement <2 x i32> %515, i32 0
  store i32 %518, i32* %231, align 1
  %519 = extractelement <2 x i32> %515, i32 1
  store i32 %519, i32* %233, align 1
  %520 = add i64 %511, -3353
  %521 = add i64 %511, 8
  %522 = load i64, i64* %6, align 8
  %523 = add i64 %522, -8
  %524 = inttoptr i64 %523 to i64*
  store i64 %521, i64* %524, align 8
  store i64 %523, i64* %6, align 8
  store i64 %520, i64* %3, align 8
  %call2_4012fc = tail call %struct.Memory* @ext_sin(%struct.State* %0, i64 %520, %struct.Memory* %484)
  %525 = load i64, i64* %RBP.i, align 8
  %526 = add i64 %525, -56
  %527 = load i64, i64* %3, align 8
  %528 = add i64 %527, 5
  store i64 %528, i64* %3, align 8
  %529 = inttoptr i64 %526 to double*
  %530 = load double, double* %529, align 8
  %531 = load double, double* %240, align 1
  %532 = fmul double %530, %531
  store double %532, double* %236, align 1
  store i64 0, i64* %237, align 1
  %533 = add i64 %525, -24
  %534 = add i64 %527, 14
  store i64 %534, i64* %3, align 8
  %535 = inttoptr i64 %533 to double*
  store double %532, double* %535, align 8
  %.pre11 = load i64, i64* %3, align 8
  br label %block_.L_40130f

block_.L_40130f:                                  ; preds = %block_.L_4012d0, %block_4012a8
  %.pre-phi18 = phi <2 x i32>* [ %514, %block_.L_4012d0 ], [ %.pre17, %block_4012a8 ]
  %.pre-phi14 = phi <2 x i32>* [ %512, %block_.L_4012d0 ], [ %.pre13, %block_4012a8 ]
  %.pre-phi = phi double* [ %240, %block_.L_4012d0 ], [ %240, %block_4012a8 ]
  %536 = phi i64 [ %.pre11, %block_.L_4012d0 ], [ %499, %block_4012a8 ]
  %MEMORY.7 = phi %struct.Memory* [ %call2_4012fc, %block_.L_4012d0 ], [ %484, %block_4012a8 ]
  %.pre-phi12 = bitcast i64* %227 to double*
  %537 = load i64, i64* %RBP.i, align 8
  %538 = add i64 %537, -24
  %539 = add i64 %536, 5
  store i64 %539, i64* %3, align 8
  %540 = inttoptr i64 %538 to i64*
  %541 = load i64, i64* %540, align 8
  %542 = bitcast double* %.pre-phi to i64*
  store i64 %541, i64* %542, align 1
  store double 0.000000e+00, double* %.pre-phi12, align 1
  %543 = add i64 %536, -3359
  %544 = add i64 %536, 10
  %545 = load i64, i64* %6, align 8
  %546 = add i64 %545, -8
  %547 = inttoptr i64 %546 to i64*
  store i64 %544, i64* %547, align 8
  store i64 %546, i64* %6, align 8
  store i64 %543, i64* %3, align 8
  %548 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @asin to i64), %struct.Memory* %MEMORY.7)
  %549 = load i64, i64* %RBP.i, align 8
  %550 = add i64 %549, -8
  %551 = load i64, i64* %3, align 8
  %552 = add i64 %551, 5
  store i64 %552, i64* %3, align 8
  %553 = load i64, i64* %226, align 1
  %554 = inttoptr i64 %550 to i64*
  store i64 %553, i64* %554, align 8
  %555 = load i64, i64* %3, align 8
  %556 = load double, double* bitcast (%G_0x602638_type* @G_0x602638 to double*), align 8
  store double 0.000000e+00, double* %.pre-phi12, align 1
  %557 = load double, double* bitcast (%G_0x602648_type* @G_0x602648 to double*), align 8
  %558 = fdiv double %556, %557
  store double %558, double* %.pre-phi, align 1
  store i64 0, i64* %227, align 1
  %559 = load i64, i64* %RBP.i, align 8
  %560 = add i64 %559, -24
  %561 = add i64 %555, 23
  store i64 %561, i64* %3, align 8
  %562 = inttoptr i64 %560 to double*
  %563 = load double, double* %562, align 8
  %564 = fmul double %558, %563
  store i64 0, i64* %227, align 1
  %565 = add i64 %559, -32
  %566 = add i64 %555, 28
  store i64 %566, i64* %3, align 8
  %567 = inttoptr i64 %565 to double*
  store double %564, double* %567, align 8
  %568 = load i64, i64* %3, align 8
  %569 = load i64, i64* bitcast (%G_0x602370_type* @G_0x602370 to i64*), align 8
  %570 = load i64, i64* %RBP.i, align 8
  %571 = add i64 %570, -40
  %572 = add i64 %568, 14
  store i64 %572, i64* %3, align 8
  %573 = inttoptr i64 %571 to i64*
  store i64 %569, i64* %573, align 8
  %574 = load i64, i64* %3, align 8
  %575 = load double, double* bitcast (%G_0x602370_type* @G_0x602370 to double*), align 8
  store double %575, double* %.pre-phi, align 1
  store double 0.000000e+00, double* %.pre-phi12, align 1
  %576 = load i64, i64* %RBP.i, align 8
  %577 = add i64 %576, -8
  %578 = add i64 %574, 14
  store i64 %578, i64* %3, align 8
  %579 = inttoptr i64 %577 to double*
  %580 = load double, double* %579, align 8
  %581 = fadd double %575, %580
  store double %581, double* %.pre-phi, align 1
  store i64 0, i64* %227, align 1
  %582 = add i64 %576, -32
  %583 = add i64 %574, 19
  store i64 %583, i64* %3, align 8
  %584 = inttoptr i64 %582 to i64*
  %585 = load i64, i64* %584, align 8
  %586 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %234, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %585, i64* %586, align 1
  store double 0.000000e+00, double* %238, align 1
  %587 = add i64 %576, -64
  %588 = add i64 %574, 24
  store i64 %588, i64* %3, align 8
  %589 = inttoptr i64 %587 to double*
  store double %581, double* %589, align 8
  %590 = load i64, i64* %3, align 8
  %591 = load <2 x i32>, <2 x i32>* %.pre-phi14, align 1
  %592 = load <2 x i32>, <2 x i32>* %.pre-phi18, align 1
  %593 = extractelement <2 x i32> %591, i32 0
  store i32 %593, i32* %228, align 1
  %594 = extractelement <2 x i32> %591, i32 1
  store i32 %594, i32* %230, align 1
  %595 = extractelement <2 x i32> %592, i32 0
  store i32 %595, i32* %231, align 1
  %596 = extractelement <2 x i32> %592, i32 1
  store i32 %596, i32* %233, align 1
  %597 = add i64 %590, -3440
  %598 = add i64 %590, 8
  %599 = load i64, i64* %6, align 8
  %600 = add i64 %599, -8
  %601 = inttoptr i64 %600 to i64*
  store i64 %598, i64* %601, align 8
  store i64 %600, i64* %6, align 8
  store i64 %597, i64* %3, align 8
  %602 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @asin to i64), %struct.Memory* %548)
  %603 = load i64, i64* %3, align 8
  %604 = load double, double* bitcast (%G_0x2b0__rip__4199280__type* @G_0x2b0__rip__4199280_ to double*), align 8
  store double %604, double* %236, align 1
  store double 0.000000e+00, double* %238, align 1
  %605 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %606 = load i64, i64* %RBP.i, align 8
  %607 = add i64 %606, -64
  %608 = add i64 %603, 13
  store i64 %608, i64* %3, align 8
  %609 = inttoptr i64 %607 to double*
  %610 = load double, double* %609, align 8
  %611 = bitcast %union.VectorReg* %605 to double*
  %612 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %613 = load double, double* %240, align 1
  %614 = fsub double %610, %613
  store double %614, double* %611, align 1
  store i64 0, i64* %612, align 1
  store double %614, double* bitcast (%G_0x602370_type* @G_0x602370 to double*), align 8
  %615 = add i64 %606, -40
  %616 = add i64 %603, 31
  store i64 %616, i64* %3, align 8
  %617 = inttoptr i64 %615 to double*
  %618 = load double, double* %617, align 8
  store double %618, double* %.pre-phi, align 1
  store double 0.000000e+00, double* %.pre-phi12, align 1
  %619 = add i64 %606, -8
  %620 = add i64 %603, 36
  store i64 %620, i64* %3, align 8
  %621 = inttoptr i64 %619 to double*
  %622 = load double, double* %621, align 8
  %623 = fadd double %618, %622
  %624 = fdiv double %623, %604
  store double %624, double* %.pre-phi, align 1
  store i64 0, i64* %227, align 1
  %625 = add i64 %606, -72
  %626 = add i64 %603, 45
  store i64 %626, i64* %3, align 8
  %627 = inttoptr i64 %625 to double*
  store double %604, double* %627, align 8
  %628 = load i64, i64* %3, align 8
  %629 = add i64 %628, -3509
  %630 = add i64 %628, 5
  %631 = load i64, i64* %6, align 8
  %632 = add i64 %631, -8
  %633 = inttoptr i64 %632 to i64*
  store i64 %630, i64* %633, align 8
  store i64 %632, i64* %6, align 8
  store i64 %629, i64* %3, align 8
  %call2_401395 = tail call %struct.Memory* @ext_sin(%struct.State* %0, i64 %629, %struct.Memory* %602)
  %634 = load i64, i64* %RBP.i, align 8
  %635 = add i64 %634, -48
  %636 = load i64, i64* %3, align 8
  %637 = add i64 %636, 5
  store i64 %637, i64* %3, align 8
  %638 = load i64, i64* %226, align 1
  %639 = inttoptr i64 %635 to i64*
  store i64 %638, i64* %639, align 8
  %640 = load i64, i64* %RBP.i, align 8
  %641 = add i64 %640, -72
  %642 = load i64, i64* %3, align 8
  %643 = add i64 %642, 5
  store i64 %643, i64* %3, align 8
  %644 = inttoptr i64 %641 to double*
  %645 = load double, double* %644, align 8
  store double 0.000000e+00, double* %.pre-phi12, align 1
  %646 = load double, double* bitcast (%G_0x602640_type* @G_0x602640 to double*), align 8
  %647 = fmul double %645, %646
  store double %647, double* %.pre-phi, align 1
  store i64 0, i64* %227, align 1
  %648 = add i64 %640, -48
  %649 = add i64 %642, 19
  store i64 %649, i64* %3, align 8
  %650 = inttoptr i64 %648 to double*
  %651 = load double, double* %650, align 8
  %652 = fmul double %647, %651
  store double %652, double* %.pre-phi, align 1
  store i64 0, i64* %227, align 1
  %653 = add i64 %642, 24
  store i64 %653, i64* %3, align 8
  %654 = load double, double* %650, align 8
  %655 = fmul double %652, %654
  store i64 0, i64* %227, align 1
  %656 = add i64 %642, 29
  store i64 %656, i64* %3, align 8
  store double %655, double* %650, align 8
  %657 = load i64, i64* %3, align 8
  %658 = load i64, i64* bitcast (%G_0x602640_type* @G_0x602640 to i64*), align 8
  store i64 %658, i64* %542, align 1
  store double 0.000000e+00, double* %.pre-phi12, align 1
  %659 = load i64, i64* %RBP.i, align 8
  %660 = add i64 %659, -40
  %661 = add i64 %657, 14
  store i64 %661, i64* %3, align 8
  %662 = inttoptr i64 %660 to double*
  %663 = load double, double* %662, align 8
  store double %663, double* %236, align 1
  store double 0.000000e+00, double* %238, align 1
  %664 = add i64 %659, -8
  %665 = add i64 %657, 19
  store i64 %665, i64* %3, align 8
  %666 = inttoptr i64 %664 to double*
  %667 = load double, double* %666, align 8
  %668 = fadd double %663, %667
  store double %668, double* %236, align 1
  store i64 0, i64* %237, align 1
  %669 = add i64 %659, -80
  %670 = add i64 %657, 24
  store i64 %670, i64* %3, align 8
  %671 = inttoptr i64 %669 to i64*
  store i64 %658, i64* %671, align 8
  %672 = load i64, i64* %3, align 8
  %673 = load <2 x i32>, <2 x i32>* %.pre-phi14, align 1
  %674 = load <2 x i32>, <2 x i32>* %.pre-phi18, align 1
  %675 = extractelement <2 x i32> %673, i32 0
  store i32 %675, i32* %228, align 1
  %676 = extractelement <2 x i32> %673, i32 1
  store i32 %676, i32* %230, align 1
  %677 = extractelement <2 x i32> %674, i32 0
  store i32 %677, i32* %231, align 1
  %678 = extractelement <2 x i32> %674, i32 1
  store i32 %678, i32* %233, align 1
  %679 = add i64 %672, -3572
  %680 = add i64 %672, 8
  %681 = load i64, i64* %6, align 8
  %682 = add i64 %681, -8
  %683 = inttoptr i64 %682 to i64*
  store i64 %680, i64* %683, align 8
  store i64 %682, i64* %6, align 8
  store i64 %679, i64* %3, align 8
  %call2_4013d7 = tail call %struct.Memory* @ext_sin(%struct.State* %0, i64 %679, %struct.Memory* %call2_401395)
  %684 = load i64, i64* %RBP.i, align 8
  %685 = add i64 %684, -80
  %686 = load i64, i64* %3, align 8
  %687 = add i64 %686, 5
  store i64 %687, i64* %3, align 8
  %688 = inttoptr i64 %685 to double*
  %689 = load double, double* %688, align 8
  store double 0.000000e+00, double* %238, align 1
  %690 = load double, double* %240, align 1
  %691 = fmul double %689, %690
  store double %691, double* %236, align 1
  store i64 0, i64* %237, align 1
  %692 = load i64, i64* bitcast (%G_0x602370_type* @G_0x602370 to i64*), align 8
  store i64 %692, i64* %542, align 1
  store double 0.000000e+00, double* %.pre-phi12, align 1
  %693 = add i64 %684, -88
  %694 = add i64 %686, 23
  store i64 %694, i64* %3, align 8
  %695 = inttoptr i64 %693 to double*
  store double %691, double* %695, align 8
  %696 = load i64, i64* %3, align 8
  %697 = add i64 %696, -3619
  %698 = add i64 %696, 5
  %699 = load i64, i64* %6, align 8
  %700 = add i64 %699, -8
  %701 = inttoptr i64 %700 to i64*
  store i64 %698, i64* %701, align 8
  store i64 %700, i64* %6, align 8
  store i64 %697, i64* %3, align 8
  %call2_4013f3 = tail call %struct.Memory* @ext_tan(%struct.State* %0, i64 %697, %struct.Memory* %call2_4013d7)
  %702 = load i64, i64* %3, align 8
  %703 = load double, double* bitcast (%G_0x218__rip__4199424__type* @G_0x218__rip__4199424_ to double*), align 8
  store double 0.000000e+00, double* %238, align 1
  %704 = load double, double* %240, align 1
  %705 = fdiv double %703, %704
  store double %705, double* %236, align 1
  store i64 0, i64* %237, align 1
  %706 = load i64, i64* %RBP.i, align 8
  %707 = add i64 %706, -88
  %708 = add i64 %702, 17
  store i64 %708, i64* %3, align 8
  %709 = inttoptr i64 %707 to double*
  %710 = load double, double* %709, align 8
  store double 0.000000e+00, double* %.pre-phi12, align 1
  %711 = fmul double %710, %705
  store double %711, double* %.pre-phi, align 1
  store i64 0, i64* %227, align 1
  %712 = add i64 %706, -48
  %713 = add i64 %702, 26
  store i64 %713, i64* %3, align 8
  %714 = inttoptr i64 %712 to double*
  %715 = load double, double* %714, align 8
  %716 = fadd double %711, %715
  store double %716, double* %.pre-phi, align 1
  store i64 0, i64* %227, align 1
  store double %716, double* bitcast (%G_0x602348_type* @G_0x602348 to double*), align 8
  %717 = add i64 %702, 301
  store i64 %717, i64* %3, align 8
  br label %block_.L_401525

block_.L_401525:                                  ; preds = %block_401287, %block_.L_40130f, %block_401106, %block_.L_4011f6
  %718 = phi i64 [ %717, %block_.L_40130f ], [ %454, %block_401287 ], [ %225, %block_.L_4011f6 ], [ %87, %block_401106 ]
  %MEMORY.8 = phi %struct.Memory* [ %call2_4013f3, %block_.L_40130f ], [ %call2_4014da, %block_401287 ], [ %203, %block_.L_4011f6 ], [ %73, %block_401106 ]
  %719 = load i64, i64* %6, align 8
  %720 = add i64 %719, 144
  store i64 %720, i64* %6, align 8
  %721 = icmp ugt i64 %719, -145
  %722 = zext i1 %721 to i8
  store i8 %722, i8* %12, align 1
  %723 = trunc i64 %720 to i32
  %724 = and i32 %723, 255
  %725 = tail call i32 @llvm.ctpop.i32(i32 %724)
  %726 = trunc i32 %725 to i8
  %727 = and i8 %726, 1
  %728 = xor i8 %727, 1
  store i8 %728, i8* %13, align 1
  %729 = xor i64 %719, 16
  %730 = xor i64 %729, %720
  %731 = lshr i64 %730, 4
  %732 = trunc i64 %731 to i8
  %733 = and i8 %732, 1
  store i8 %733, i8* %14, align 1
  %734 = icmp eq i64 %720, 0
  %735 = zext i1 %734 to i8
  store i8 %735, i8* %15, align 1
  %736 = lshr i64 %720, 63
  %737 = trunc i64 %736 to i8
  store i8 %737, i8* %16, align 1
  %738 = lshr i64 %719, 63
  %739 = xor i64 %736, %738
  %740 = add nuw nsw i64 %739, %736
  %741 = icmp eq i64 %740, 2
  %742 = zext i1 %741 to i8
  store i8 %742, i8* %17, align 1
  %743 = add i64 %718, 8
  store i64 %743, i64* %3, align 8
  %744 = add i64 %719, 152
  %745 = inttoptr i64 %720 to i64*
  %746 = load i64, i64* %745, align 8
  store i64 %746, i64* %RBP.i, align 8
  store i64 %744, i64* %6, align 8
  %747 = add i64 %718, 9
  store i64 %747, i64* %3, align 8
  %748 = inttoptr i64 %744 to i64*
  %749 = load i64, i64* %748, align 8
  store i64 %749, i64* %3, align 8
  %750 = add i64 %719, 160
  store i64 %750, i64* %6, align 8
  ret %struct.Memory* %MEMORY.8
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

define %struct.Memory* @routine_subq__0x90___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -144
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 144
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

define %struct.Memory* @routine_cmpw__0x0__0x602340(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i16, i16* bitcast (%G_0x602340_type* @G_0x602340 to i16*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6, align 1
  %7 = and i16 %5, 255
  %8 = zext i16 %7 to i32
  %9 = tail call i32 @llvm.ctpop.i32(i32 %8)
  %10 = trunc i32 %9 to i8
  %11 = and i8 %10, 1
  %12 = xor i8 %11, 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %12, i8* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %14, align 1
  %15 = icmp eq i16 %5, 0
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %16, i8* %17, align 1
  %18 = lshr i16 %5, 15
  %19 = trunc i16 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %19, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_40126b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast %union.VectorReg* %3 to i32*
  store i32 0, i32* %8, align 1
  %9 = getelementptr inbounds i8, i8* %4, i64 4
  %10 = bitcast i8* %9 to i32*
  store i32 0, i32* %10, align 1
  %11 = bitcast i64* %7 to i32*
  store i32 0, i32* %11, align 1
  %12 = getelementptr inbounds i8, i8* %4, i64 12
  %13 = bitcast i8* %12 to i32*
  store i32 0, i32* %13, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x602640___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x602640_type* @G_0x602640 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
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

define %struct.Memory* @routine_jne_.L_40110b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_jp_.L_40110b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %3, %.v
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_401216(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x602348___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x602348_type* @G_0x602348 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_40114f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_jp_.L_40114f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %3, %.v
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__0x602370(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* bitcast (%G_0x602370_type* @G_0x602370 to i64*), align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x602630___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x602630_type* @G_0x602630 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_divsd_0x602640___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = load double, double* bitcast (%G_0x602640_type* @G_0x602640 to double*), align 8
  %9 = fdiv double %7, %8
  store double %9, double* %6, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_jmpq_.L_401178(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x602348___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x602348_type* @G_0x602348 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subsd_0x602640___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = load double, double* bitcast (%G_0x602640_type* @G_0x602640 to double*), align 8
  %9 = fsub double %7, %8
  store double %9, double* %6, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd_0x602370___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = load double, double* bitcast (%G_0x602370_type* @G_0x602370 to double*), align 8
  %9 = fmul double %7, %8
  store double %9, double* %6, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x602638___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x602638_type* @G_0x602638 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_divsd_0x602648___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = load double, double* bitcast (%G_0x602648_type* @G_0x602648 to double*), align 8
  %9 = fdiv double %7, %8
  store double %9, double* %6, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd_MINUS0x18__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24
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

define %struct.Memory* @routine_movsd__xmm1__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x602370___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x602370_type* @G_0x602370 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm1__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_addsd_MINUS0x18__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
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

define %struct.Memory* @routine_subsd_MINUS0x20__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -32
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fsub double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm1__0x602370(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* bitcast (%G_0x602370_type* @G_0x602370 to i64*), align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_4011df(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_jp_.L_4011df(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %3, %.v
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4011f6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd_MINUS0x28__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd__xmm0__0x602630(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* bitcast (%G_0x602630_type* @G_0x602630 to i64*), align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_divsd_0x602370___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = load double, double* bitcast (%G_0x602370_type* @G_0x602370 to double*), align 8
  %9 = fdiv double %7, %8
  store double %9, double* %6, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__0x602348(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* bitcast (%G_0x602348_type* @G_0x602348 to i64*), align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_401525(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x602648___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x602648_type* @G_0x602648 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_divsd_0x602638___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = load double, double* bitcast (%G_0x602638_type* @G_0x602638 to double*), align 8
  %9 = fdiv double %7, %8
  store double %9, double* %6, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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
  %11 = fmul double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x602370___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x602370_type* @G_0x602370 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_40128c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_jp_.L_40128c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %3, %.v
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_401420(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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

define %struct.Memory* @routine_jp_.L_4012d0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %3, %.v
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_40130f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x38__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movaps__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_callq_.sin_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd_MINUS0x38__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_mulsd__xmm0___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd__xmm1__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd_MINUS0x18__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_callq_.asin_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x602638___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x602638_type* @G_0x602638 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_divsd_0x602648___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = load double, double* bitcast (%G_0x602648_type* @G_0x602648 to double*), align 8
  %9 = fdiv double %7, %8
  store double %9, double* %6, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd_MINUS0x18__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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
  %12 = fmul double %9, %11
  store double %12, double* %8, align 1
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_addsd_MINUS0x8__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0x40__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd_0x2b0__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x2b0__rip__4199280__type* @G_0x2b0__rip__4199280_ to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x40__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_subsd__xmm0___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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
  %11 = fsub double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm2__0x602370(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* bitcast (%G_0x602370_type* @G_0x602370 to i64*), align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x28__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_divsd__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd__xmm1__MINUS0x48__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
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

define %struct.Memory* @routine_mulsd_0x602640___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = load double, double* bitcast (%G_0x602640_type* @G_0x602640 to double*), align 8
  %9 = fmul double %7, %8
  store double %9, double* %6, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd_MINUS0x30__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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
  %12 = fmul double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x602640___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x602640_type* @G_0x602640 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x28__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_addsd_MINUS0x8__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0x50__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x50__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd__xmm1__MINUS0x58__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_callq_.tan_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd_0x218__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x218__rip__4199424__type* @G_0x218__rip__4199424_ to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_divsd__xmm0___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd_MINUS0x58__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_addsd_MINUS0x30__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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
  %12 = fadd double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x60__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd_MINUS0x60__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__0x8000000000000000___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 -9223372036854775808, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__xmm0___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_xorq__rax___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__rcx___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd_MINUS0x10__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
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

define %struct.Memory* @routine_movq__xmm2___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* %RCX, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rcx___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 5
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %3, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  store i64 0, i64* %7, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x68__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movaps__xmm2___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__rax__MINUS0x70__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm1__MINUS0x78__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -120
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.cos_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd_MINUS0x78__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -120
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

define %struct.Memory* @routine_movsd_0x602370___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x602370_type* @G_0x602370 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x80__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -128
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm1__MINUS0x88__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -136
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x80__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -128
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

define %struct.Memory* @routine_movsd_MINUS0x88__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -136
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
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

define %struct.Memory* @routine_movsd_MINUS0x68__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd__xmm1__0x602348(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* bitcast (%G_0x602348_type* @G_0x602348 to i64*), align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x10__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
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

define %struct.Memory* @routine_movq__xmm0___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* %RAX, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x70__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_xorq__rcx___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = xor i64 %4, %3
  store i64 %7, i64* %RAX, align 8
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

define %struct.Memory* @routine_movq__rax___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 5
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %3, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  store i64 0, i64* %7, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__0x90___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 144
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -145
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
