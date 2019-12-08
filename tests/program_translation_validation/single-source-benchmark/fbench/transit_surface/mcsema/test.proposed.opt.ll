; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x218__rip__type = type <{ [8 x i8] }>
%G_0x2b0__rip__type = type <{ [8 x i8] }>
%G_0x602340_type = type <{ [1 x i8] }>
%G_0x602348_type = type <{ [16 x i8] }>
%G_0x602370_type = type <{ [16 x i8] }>
%G_0x602630_type = type <{ [16 x i8] }>
%G_0x602638_type = type <{ [8 x i8] }>
%G_0x602640_type = type <{ [8 x i8] }>
%G_0x602648_type = type <{ [8 x i8] }>
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
@G_0x218__rip_ = local_unnamed_addr global %G_0x218__rip__type zeroinitializer
@G_0x2b0__rip_ = local_unnamed_addr global %G_0x2b0__rip__type zeroinitializer
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
  %RSP.i98 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %10 = load i64, i64* %PC.i, align 8
  store i64 %8, i64* %RBP.i, align 8
  %11 = add i64 %7, -152
  store i64 %11, i64* %RSP.i98, align 8
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
  store i64 %32, i64* %PC.i, align 8
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
  store i64 %45, i64* %PC.i, align 8
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
  %.pre = load i64, i64* %PC.i, align 8
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
  %80 = bitcast [32 x %union.VectorReg]* %30 to double*
  %81 = load double, double* bitcast (%G_0x602648_type* @G_0x602648 to double*), align 8
  %82 = load double, double* bitcast (%G_0x602638_type* @G_0x602638 to double*), align 8
  %83 = fdiv double %81, %82
  %84 = fmul double %79, %83
  store double %84, double* bitcast (%G_0x602348_type* @G_0x602348 to double*), align 8
  %85 = load double, double* bitcast (%G_0x602370_type* @G_0x602370 to double*), align 8
  %86 = fdiv double %82, %81
  store double %86, double* %42, align 1
  store i64 0, i64* %43, align 1
  %87 = fmul double %85, %86
  store double %87, double* %80, align 1
  store i64 0, i64* %33, align 1
  store double %87, double* bitcast (%G_0x602370_type* @G_0x602370 to double*), align 8
  %88 = add i64 %78, 1055
  store i64 %88, i64* %3, align 8
  br label %block_.L_401525

block_.L_40110b:                                  ; preds = %block_401100, %routine_ucomisd__xmm0___xmm1.exit419
  %89 = phi i64 [ %78, %block_401100 ], [ %75, %routine_ucomisd__xmm0___xmm1.exit419 ]
  store i32 0, i32* %34, align 1
  store i32 0, i32* %36, align 1
  store i32 0, i32* %37, align 1
  store i32 0, i32* %39, align 1
  %90 = load double, double* bitcast (%G_0x602348_type* @G_0x602348 to double*), align 8
  store double %90, double* %42, align 1
  store double 0.000000e+00, double* %44, align 1
  %91 = add i64 %89, 16
  store i64 %91, i64* %PC.i, align 8
  %92 = load double, double* %46, align 1
  %93 = fcmp uno double %90, %92
  br i1 %93, label %94, label %104

; <label>:94:                                     ; preds = %block_.L_40110b
  %95 = fadd double %90, %92
  %96 = bitcast double %95 to i64
  %97 = and i64 %96, 9221120237041090560
  %98 = icmp eq i64 %97, 9218868437227405312
  %99 = and i64 %96, 2251799813685247
  %100 = icmp ne i64 %99, 0
  %101 = and i1 %98, %100
  br i1 %101, label %102, label %110

; <label>:102:                                    ; preds = %94
  %103 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %91, %struct.Memory* %73)
  %.pre2 = load i64, i64* %PC.i, align 8
  %.pre3 = load i8, i8* %15, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit415

; <label>:104:                                    ; preds = %block_.L_40110b
  %105 = fcmp ogt double %90, %92
  br i1 %105, label %110, label %106

; <label>:106:                                    ; preds = %104
  %107 = fcmp olt double %90, %92
  br i1 %107, label %110, label %108

; <label>:108:                                    ; preds = %106
  %109 = fcmp oeq double %90, %92
  br i1 %109, label %110, label %114

; <label>:110:                                    ; preds = %108, %106, %104, %94
  %111 = phi i8 [ 0, %104 ], [ 0, %106 ], [ 1, %108 ], [ 1, %94 ]
  %112 = phi i8 [ 0, %104 ], [ 0, %106 ], [ 0, %108 ], [ 1, %94 ]
  %113 = phi i8 [ 0, %104 ], [ 1, %106 ], [ 0, %108 ], [ 1, %94 ]
  store i8 %111, i8* %15, align 1
  store i8 %112, i8* %13, align 1
  store i8 %113, i8* %12, align 1
  br label %114

; <label>:114:                                    ; preds = %110, %108
  %115 = phi i8 [ %111, %110 ], [ %71, %108 ]
  store i8 0, i8* %17, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %14, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit415

routine_ucomisd__xmm0___xmm1.exit415:             ; preds = %114, %102
  %116 = phi i8 [ %.pre3, %102 ], [ %115, %114 ]
  %117 = phi i64 [ %.pre2, %102 ], [ %91, %114 ]
  %118 = phi %struct.Memory* [ %103, %102 ], [ %73, %114 ]
  %119 = icmp eq i8 %116, 0
  %.v27 = select i1 %119, i64 52, i64 6
  %120 = add i64 %117, %.v27
  store i64 %120, i64* %3, align 8
  br i1 %119, label %block_.L_40114f, label %block_401121

block_401121:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit415
  %121 = load i8, i8* %13, align 1
  %122 = icmp ne i8 %121, 0
  %.v28 = select i1 %122, i64 46, i64 6
  %123 = add i64 %120, %.v28
  store i64 %123, i64* %3, align 8
  %cmpBr_401121 = icmp eq i8 %121, 1
  br i1 %cmpBr_401121, label %block_.L_40114f, label %block_401127

block_401127:                                     ; preds = %block_401121
  store i32 0, i32* %34, align 1
  store i32 0, i32* %36, align 1
  %124 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %30, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %125 = load i64, i64* %124, align 1
  store i64 %125, i64* bitcast (%G_0x602370_type* @G_0x602370 to i64*), align 8
  %126 = load double, double* bitcast (%G_0x602630_type* @G_0x602630 to double*), align 8
  %127 = bitcast [32 x %union.VectorReg]* %30 to double*
  %128 = load double, double* bitcast (%G_0x602640_type* @G_0x602640 to double*), align 8
  %129 = fdiv double %126, %128
  store double %129, double* %127, align 1
  store i64 0, i64* %33, align 1
  %130 = load i64, i64* %RBP.i, align 8
  %131 = add i64 %130, -24
  %132 = add i64 %123, 35
  store i64 %132, i64* %PC.i, align 8
  %133 = inttoptr i64 %131 to double*
  store double %129, double* %133, align 8
  %134 = load i64, i64* %PC.i, align 8
  %135 = add i64 %134, 46
  store i64 %135, i64* %3, align 8
  br label %block_.L_401178

block_.L_40114f:                                  ; preds = %block_401121, %routine_ucomisd__xmm0___xmm1.exit415
  %136 = phi i64 [ %123, %block_401121 ], [ %120, %routine_ucomisd__xmm0___xmm1.exit415 ]
  %137 = load double, double* bitcast (%G_0x602348_type* @G_0x602348 to double*), align 8
  %138 = bitcast [32 x %union.VectorReg]* %30 to double*
  %139 = load double, double* bitcast (%G_0x602640_type* @G_0x602640 to double*), align 8
  %140 = fsub double %137, %139
  %141 = fdiv double %140, %139
  %142 = load double, double* bitcast (%G_0x602370_type* @G_0x602370 to double*), align 8
  %143 = fmul double %141, %142
  store double %143, double* %138, align 1
  store i64 0, i64* %33, align 1
  %144 = load i64, i64* %RBP.i, align 8
  %145 = add i64 %144, -24
  %146 = add i64 %136, 41
  store i64 %146, i64* %PC.i, align 8
  %147 = inttoptr i64 %145 to double*
  store double %143, double* %147, align 8
  %.pre4 = load i64, i64* %PC.i, align 8
  br label %block_.L_401178

block_.L_401178:                                  ; preds = %block_.L_40114f, %block_401127
  %148 = phi i64 [ %.pre4, %block_.L_40114f ], [ %135, %block_401127 ]
  store i32 0, i32* %34, align 1
  store i32 0, i32* %36, align 1
  store i32 0, i32* %37, align 1
  store i32 0, i32* %39, align 1
  %149 = load double, double* bitcast (%G_0x602638_type* @G_0x602638 to double*), align 8
  %150 = load double, double* bitcast (%G_0x602648_type* @G_0x602648 to double*), align 8
  %151 = fdiv double %149, %150
  store double %151, double* %42, align 1
  store i64 0, i64* %43, align 1
  %152 = load i64, i64* %RBP.i, align 8
  %153 = add i64 %152, -24
  %154 = add i64 %148, 26
  store i64 %154, i64* %PC.i, align 8
  %155 = inttoptr i64 %153 to double*
  %156 = load double, double* %155, align 8
  %157 = fmul double %151, %156
  %158 = add i64 %152, -32
  %159 = add i64 %148, 31
  store i64 %159, i64* %PC.i, align 8
  %160 = inttoptr i64 %158 to double*
  store double %157, double* %160, align 8
  %161 = load i64, i64* %PC.i, align 8
  %162 = load i64, i64* bitcast (%G_0x602370_type* @G_0x602370 to i64*), align 8
  %163 = load i64, i64* %RBP.i, align 8
  %164 = add i64 %163, -40
  %165 = add i64 %161, 14
  store i64 %165, i64* %PC.i, align 8
  %166 = inttoptr i64 %164 to i64*
  store i64 %162, i64* %166, align 8
  %167 = load i64, i64* %PC.i, align 8
  %168 = load double, double* bitcast (%G_0x602370_type* @G_0x602370 to double*), align 8
  store double %168, double* %42, align 1
  store double 0.000000e+00, double* %44, align 1
  %169 = load i64, i64* %RBP.i, align 8
  %170 = add i64 %169, -24
  %171 = add i64 %167, 14
  store i64 %171, i64* %PC.i, align 8
  %172 = inttoptr i64 %170 to double*
  %173 = load double, double* %172, align 8
  %174 = fadd double %168, %173
  store double %174, double* %42, align 1
  store i64 0, i64* %43, align 1
  %175 = add i64 %169, -32
  %176 = add i64 %167, 19
  store i64 %176, i64* %PC.i, align 8
  %177 = inttoptr i64 %175 to double*
  %178 = load double, double* %177, align 8
  %179 = fsub double %174, %178
  store double %179, double* bitcast (%G_0x602370_type* @G_0x602370 to double*), align 8
  %180 = load double, double* bitcast (%G_0x602348_type* @G_0x602348 to double*), align 8
  store double %180, double* %42, align 1
  store double 0.000000e+00, double* %44, align 1
  %181 = add i64 %167, 41
  store i64 %181, i64* %PC.i, align 8
  %182 = load double, double* %46, align 1
  %183 = fcmp uno double %180, %182
  br i1 %183, label %184, label %194

; <label>:184:                                    ; preds = %block_.L_401178
  %185 = fadd double %180, %182
  %186 = bitcast double %185 to i64
  %187 = and i64 %186, 9221120237041090560
  %188 = icmp eq i64 %187, 9218868437227405312
  %189 = and i64 %186, 2251799813685247
  %190 = icmp ne i64 %189, 0
  %191 = and i1 %188, %190
  br i1 %191, label %192, label %200

; <label>:192:                                    ; preds = %184
  %193 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %181, %struct.Memory* %118)
  %.pre5 = load i64, i64* %PC.i, align 8
  br label %routine_ucomisd__xmm0___xmm1.exit353

; <label>:194:                                    ; preds = %block_.L_401178
  %195 = fcmp ogt double %180, %182
  br i1 %195, label %200, label %196

; <label>:196:                                    ; preds = %194
  %197 = fcmp olt double %180, %182
  br i1 %197, label %200, label %198

; <label>:198:                                    ; preds = %196
  %199 = fcmp oeq double %180, %182
  br i1 %199, label %200, label %204

; <label>:200:                                    ; preds = %198, %196, %194, %184
  %201 = phi i8 [ 0, %194 ], [ 0, %196 ], [ 1, %198 ], [ 1, %184 ]
  %202 = phi i8 [ 0, %194 ], [ 0, %196 ], [ 0, %198 ], [ 1, %184 ]
  %203 = phi i8 [ 0, %194 ], [ 1, %196 ], [ 0, %198 ], [ 1, %184 ]
  store i8 %201, i8* %15, align 1
  store i8 %202, i8* %13, align 1
  store i8 %203, i8* %12, align 1
  br label %204

; <label>:204:                                    ; preds = %200, %198
  store i8 0, i8* %17, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %14, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit353

routine_ucomisd__xmm0___xmm1.exit353:             ; preds = %204, %192
  %205 = phi i64 [ %.pre5, %192 ], [ %181, %204 ]
  %206 = phi %struct.Memory* [ %193, %192 ], [ %118, %204 ]
  %207 = load i8, i8* %15, align 1
  %208 = icmp eq i8 %207, 0
  %.v29 = select i1 %208, i64 17, i64 6
  %209 = add i64 %205, %.v29
  store i64 %209, i64* %3, align 8
  br i1 %208, label %block_.L_4011df, label %block_4011d4

block_4011d4:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit353
  %210 = load i8, i8* %13, align 1
  %211 = icmp ne i8 %210, 0
  %.v30 = select i1 %211, i64 11, i64 6
  %212 = add i64 %209, %.v30
  store i64 %212, i64* %3, align 8
  %cmpBr_4011d4 = icmp eq i8 %210, 1
  br i1 %cmpBr_4011d4, label %block_.L_4011df, label %block_4011da

block_4011da:                                     ; preds = %block_4011d4
  %213 = add i64 %212, 28
  store i64 %213, i64* %3, align 8
  %.pre6 = load double, double* bitcast (%G_0x602630_type* @G_0x602630 to double*), align 8
  %.pre21 = bitcast [32 x %union.VectorReg]* %30 to double*
  %.pre23 = bitcast i64* %33 to double*
  br label %block_.L_4011f6

block_.L_4011df:                                  ; preds = %block_4011d4, %routine_ucomisd__xmm0___xmm1.exit353
  %214 = phi i64 [ %212, %block_4011d4 ], [ %209, %routine_ucomisd__xmm0___xmm1.exit353 ]
  %215 = load double, double* bitcast (%G_0x602348_type* @G_0x602348 to double*), align 8
  %216 = bitcast [32 x %union.VectorReg]* %30 to double*
  store double %215, double* %216, align 1
  %217 = bitcast i64* %33 to double*
  store double 0.000000e+00, double* %217, align 1
  %218 = load i64, i64* %RBP.i, align 8
  %219 = add i64 %218, -40
  %220 = add i64 %214, 14
  store i64 %220, i64* %PC.i, align 8
  %221 = inttoptr i64 %219 to double*
  %222 = load double, double* %221, align 8
  %223 = fmul double %215, %222
  store double %223, double* %216, align 1
  store i64 0, i64* %33, align 1
  %224 = add i64 %214, 23
  store i64 %224, i64* %PC.i, align 8
  store double %223, double* bitcast (%G_0x602630_type* @G_0x602630 to double*), align 8
  br label %block_.L_4011f6

block_.L_4011f6:                                  ; preds = %block_.L_4011df, %block_4011da
  %.pre-phi24 = phi double* [ %217, %block_.L_4011df ], [ %.pre23, %block_4011da ]
  %.pre-phi22 = phi double* [ %216, %block_.L_4011df ], [ %.pre21, %block_4011da ]
  %225 = phi double [ %223, %block_.L_4011df ], [ %.pre6, %block_4011da ]
  %226 = phi i64 [ %224, %block_.L_4011df ], [ %213, %block_4011da ]
  store double 0.000000e+00, double* %.pre-phi24, align 1
  %227 = load double, double* bitcast (%G_0x602370_type* @G_0x602370 to double*), align 8
  %228 = fdiv double %225, %227
  store double %228, double* %.pre-phi22, align 1
  store i64 0, i64* %33, align 1
  store double %228, double* bitcast (%G_0x602348_type* @G_0x602348 to double*), align 8
  %229 = add i64 %226, 815
  store i64 %229, i64* %3, align 8
  br label %block_.L_401525

block_.L_40126b:                                  ; preds = %entry
  %230 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %30, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %232 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %30, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %233 = bitcast [32 x %union.VectorReg]* %30 to i32*
  store i32 0, i32* %233, align 1
  %234 = getelementptr inbounds i8, i8* %31, i64 4
  %235 = bitcast i8* %234 to i32*
  store i32 0, i32* %235, align 1
  %236 = bitcast i64* %231 to i32*
  store i32 0, i32* %236, align 1
  %237 = getelementptr inbounds i8, i8* %31, i64 12
  %238 = bitcast i8* %237 to i32*
  store i32 0, i32* %238, align 1
  %239 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %240 = load double, double* bitcast (%G_0x602640_type* @G_0x602640 to double*), align 8
  %241 = bitcast %union.VectorReg* %239 to double*
  store double %240, double* %241, align 1
  %242 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %243 = bitcast i64* %242 to double*
  store double 0.000000e+00, double* %243, align 1
  %244 = add i64 %29, 16
  store i64 %244, i64* %PC.i, align 8
  %245 = bitcast [32 x %union.VectorReg]* %30 to double*
  %246 = load double, double* %245, align 1
  %247 = fcmp uno double %240, %246
  br i1 %247, label %248, label %258

; <label>:248:                                    ; preds = %block_.L_40126b
  %249 = fadd double %240, %246
  %250 = bitcast double %249 to i64
  %251 = and i64 %250, 9221120237041090560
  %252 = icmp eq i64 %251, 9218868437227405312
  %253 = and i64 %250, 2251799813685247
  %254 = icmp ne i64 %253, 0
  %255 = and i1 %252, %254
  br i1 %255, label %256, label %264

; <label>:256:                                    ; preds = %248
  %257 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %244, %struct.Memory* %2)
  %.pre7 = load i64, i64* %PC.i, align 8
  %.pre8 = load i8, i8* %15, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit301

; <label>:258:                                    ; preds = %block_.L_40126b
  %259 = fcmp ogt double %240, %246
  br i1 %259, label %264, label %260

; <label>:260:                                    ; preds = %258
  %261 = fcmp olt double %240, %246
  br i1 %261, label %264, label %262

; <label>:262:                                    ; preds = %260
  %263 = fcmp oeq double %240, %246
  br i1 %263, label %264, label %268

; <label>:264:                                    ; preds = %262, %260, %258, %248
  %265 = phi i8 [ 0, %258 ], [ 0, %260 ], [ 1, %262 ], [ 1, %248 ]
  %266 = phi i8 [ 0, %258 ], [ 0, %260 ], [ 0, %262 ], [ 1, %248 ]
  %267 = phi i8 [ 0, %258 ], [ 1, %260 ], [ 0, %262 ], [ 1, %248 ]
  store i8 %265, i8* %15, align 1
  store i8 %266, i8* %13, align 1
  store i8 %267, i8* %12, align 1
  br label %268

; <label>:268:                                    ; preds = %264, %262
  %269 = phi i8 [ %265, %264 ], [ %26, %262 ]
  store i8 0, i8* %17, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %14, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit301

routine_ucomisd__xmm0___xmm1.exit301:             ; preds = %268, %256
  %270 = phi i8 [ %.pre8, %256 ], [ %269, %268 ]
  %271 = phi i64 [ %.pre7, %256 ], [ %244, %268 ]
  %272 = phi %struct.Memory* [ %257, %256 ], [ %2, %268 ]
  %273 = icmp eq i8 %270, 0
  %.v31 = select i1 %273, i64 17, i64 6
  %274 = add i64 %271, %.v31
  store i64 %274, i64* %3, align 8
  br i1 %273, label %block_.L_40128c, label %block_401281

block_401281:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit301
  %275 = load i8, i8* %13, align 1
  %276 = icmp ne i8 %275, 0
  %.v32 = select i1 %276, i64 11, i64 6
  %277 = add i64 %274, %.v32
  store i64 %277, i64* %3, align 8
  %cmpBr_401281 = icmp eq i8 %275, 1
  br i1 %cmpBr_401281, label %block_.L_40128c, label %block_401287

block_401287:                                     ; preds = %block_401281
  %278 = load double, double* bitcast (%G_0x602638_type* @G_0x602638 to double*), align 8
  %279 = bitcast [32 x %union.VectorReg]* %30 to double*
  %280 = bitcast i64* %231 to double*
  %281 = load double, double* bitcast (%G_0x602648_type* @G_0x602648 to double*), align 8
  %282 = fdiv double %278, %281
  %283 = load i64, i64* bitcast (%G_0x602370_type* @G_0x602370 to i64*), align 8
  %284 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %239, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %283, i64* %284, align 1
  store double 0.000000e+00, double* %243, align 1
  %285 = load i64, i64* %RBP.i, align 8
  %286 = add i64 %285, -96
  %287 = add i64 %277, 441
  store i64 %287, i64* %PC.i, align 8
  %288 = inttoptr i64 %286 to double*
  store double %282, double* %288, align 8
  %289 = load i64, i64* %PC.i, align 8
  %290 = bitcast %union.VectorReg* %239 to <2 x i32>*
  %291 = load <2 x i32>, <2 x i32>* %290, align 1
  %292 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %293 = bitcast i64* %292 to <2 x i32>*
  %294 = load <2 x i32>, <2 x i32>* %293, align 1
  %295 = extractelement <2 x i32> %291, i32 0
  store i32 %295, i32* %233, align 1
  %296 = extractelement <2 x i32> %291, i32 1
  store i32 %296, i32* %235, align 1
  %297 = extractelement <2 x i32> %294, i32 0
  store i32 %297, i32* %236, align 1
  %298 = extractelement <2 x i32> %294, i32 1
  store i32 %298, i32* %238, align 1
  %299 = add i64 %289, -3680
  %300 = add i64 %289, 8
  %301 = load i64, i64* %6, align 8
  %302 = add i64 %301, -8
  %303 = inttoptr i64 %302 to i64*
  store i64 %300, i64* %303, align 8
  store i64 %302, i64* %6, align 8
  store i64 %299, i64* %3, align 8
  %call2_401443 = tail call %struct.Memory* @ext_sin(%struct.State* %0, i64 %299, %struct.Memory* %272)
  %304 = load i64, i64* %RBP.i, align 8
  %305 = add i64 %304, -96
  %306 = load i64, i64* %PC.i, align 8
  %307 = add i64 %306, 5
  store i64 %307, i64* %PC.i, align 8
  %308 = inttoptr i64 %305 to double*
  %309 = load double, double* %308, align 8
  %310 = load double, double* %245, align 1
  %311 = fmul double %309, %310
  store double %311, double* %241, align 1
  store i64 0, i64* %242, align 1
  %312 = bitcast double %311 to <2 x i32>
  %313 = extractelement <2 x i32> %312, i32 0
  store i32 %313, i32* %233, align 1
  %314 = extractelement <2 x i32> %312, i32 1
  store i32 %314, i32* %235, align 1
  store i32 0, i32* %236, align 1
  store i32 0, i32* %238, align 1
  %315 = add i64 %306, -3672
  %316 = add i64 %306, 17
  %317 = load i64, i64* %6, align 8
  %318 = add i64 %317, -8
  %319 = inttoptr i64 %318 to i64*
  store i64 %316, i64* %319, align 8
  store i64 %318, i64* %6, align 8
  store i64 %315, i64* %3, align 8
  %320 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @asin to i64), %struct.Memory* %call2_401443)
  %RAX.i96 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %321 = load i64, i64* %PC.i, align 8
  store i64 -9223372036854775808, i64* %RAX.i96, align 8
  %RCX.i93 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %322 = load i64, i64* %232, align 1
  %323 = xor i64 %322, -9223372036854775808
  store i64 %323, i64* %RCX.i93, align 8
  store i8 0, i8* %12, align 1
  %324 = trunc i64 %322 to i32
  %325 = and i32 %324, 255
  %326 = tail call i32 @llvm.ctpop.i32(i32 %325)
  %327 = trunc i32 %326 to i8
  %328 = and i8 %327, 1
  %329 = xor i8 %328, 1
  store i8 %329, i8* %13, align 1
  %330 = icmp eq i64 %323, 0
  %331 = zext i1 %330 to i8
  store i8 %331, i8* %15, align 1
  %332 = lshr i64 %323, 63
  %333 = trunc i64 %332 to i8
  store i8 %333, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  %334 = load i64, i64* %RBP.i, align 8
  %335 = add i64 %334, -16
  %336 = add i64 %321, 28
  store i64 %336, i64* %PC.i, align 8
  %337 = inttoptr i64 %335 to i64*
  store i64 %323, i64* %337, align 8
  %338 = load i64, i64* %PC.i, align 8
  %339 = load i64, i64* bitcast (%G_0x602348_type* @G_0x602348 to i64*), align 8
  %340 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %30, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %339, i64* %340, align 1
  store double 0.000000e+00, double* %280, align 1
  %341 = load i64, i64* bitcast (%G_0x602648_type* @G_0x602648 to i64*), align 8
  %342 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %239, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %341, i64* %342, align 1
  store double 0.000000e+00, double* %243, align 1
  %343 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %344 = load i64, i64* %RBP.i, align 8
  %345 = add i64 %344, -16
  %346 = add i64 %338, 23
  store i64 %346, i64* %PC.i, align 8
  %347 = inttoptr i64 %345 to i64*
  %348 = load i64, i64* %347, align 8
  %349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %350 = bitcast i64* %349 to double*
  %351 = load i64, i64* %RAX.i96, align 8
  %352 = xor i64 %351, %348
  store i64 %352, i64* %RCX.i93, align 8
  store i8 0, i8* %12, align 1
  %353 = trunc i64 %352 to i32
  %354 = and i32 %353, 255
  %355 = tail call i32 @llvm.ctpop.i32(i32 %354)
  %356 = trunc i32 %355 to i8
  %357 = and i8 %356, 1
  %358 = xor i8 %357, 1
  store i8 %358, i8* %13, align 1
  %359 = icmp eq i64 %352, 0
  %360 = zext i1 %359 to i8
  store i8 %360, i8* %15, align 1
  %361 = lshr i64 %352, 63
  %362 = trunc i64 %361 to i8
  store i8 %362, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  %363 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %343, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %352, i64* %363, align 1
  store i64 0, i64* %349, align 1
  %364 = add i64 %344, -104
  %365 = add i64 %338, 41
  store i64 %365, i64* %PC.i, align 8
  %366 = inttoptr i64 %364 to i64*
  store i64 %339, i64* %366, align 8
  %367 = load i64, i64* %PC.i, align 8
  %368 = bitcast %union.VectorReg* %343 to <2 x i32>*
  %369 = load <2 x i32>, <2 x i32>* %368, align 1
  %370 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %371 = bitcast i64* %370 to <2 x i32>*
  %372 = load <2 x i32>, <2 x i32>* %371, align 1
  %373 = extractelement <2 x i32> %369, i32 0
  store i32 %373, i32* %233, align 1
  %374 = extractelement <2 x i32> %369, i32 1
  store i32 %374, i32* %235, align 1
  %375 = extractelement <2 x i32> %372, i32 0
  store i32 %375, i32* %236, align 1
  %376 = extractelement <2 x i32> %372, i32 1
  store i32 %376, i32* %238, align 1
  %377 = load i64, i64* %RBP.i, align 8
  %378 = add i64 %377, -112
  %379 = load i64, i64* %RAX.i96, align 8
  %380 = add i64 %367, 7
  store i64 %380, i64* %PC.i, align 8
  %381 = inttoptr i64 %378 to i64*
  store i64 %379, i64* %381, align 8
  %382 = load i64, i64* %RBP.i, align 8
  %383 = add i64 %382, -120
  %384 = load i64, i64* %PC.i, align 8
  %385 = add i64 %384, 5
  store i64 %385, i64* %PC.i, align 8
  %386 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %239, i64 0, i32 0, i32 0, i32 0, i64 0
  %387 = load i64, i64* %386, align 1
  %388 = inttoptr i64 %383 to i64*
  store i64 %387, i64* %388, align 8
  %389 = load i64, i64* %PC.i, align 8
  %390 = add i64 %389, -3834
  %391 = add i64 %389, 5
  %392 = load i64, i64* %6, align 8
  %393 = add i64 %392, -8
  %394 = inttoptr i64 %393 to i64*
  store i64 %391, i64* %394, align 8
  store i64 %393, i64* %6, align 8
  store i64 %390, i64* %3, align 8
  %call2_4014aa = tail call %struct.Memory* @ext_cos(%struct.State* %0, i64 %390, %struct.Memory* %320)
  %395 = load i64, i64* %RBP.i, align 8
  %396 = add i64 %395, -120
  %397 = load i64, i64* %PC.i, align 8
  %398 = add i64 %397, 5
  store i64 %398, i64* %PC.i, align 8
  %399 = inttoptr i64 %396 to double*
  %400 = load double, double* %399, align 8
  %401 = load double, double* %245, align 1
  %402 = fmul double %400, %401
  store double %402, double* %241, align 1
  store i64 0, i64* %242, align 1
  %403 = load i64, i64* bitcast (%G_0x602638_type* @G_0x602638 to i64*), align 8
  %404 = load i64, i64* bitcast (%G_0x602370_type* @G_0x602370 to i64*), align 8
  %405 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %343, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %404, i64* %405, align 1
  store double 0.000000e+00, double* %350, align 1
  %406 = add i64 %395, -128
  %407 = add i64 %397, 32
  store i64 %407, i64* %PC.i, align 8
  %408 = inttoptr i64 %406 to i64*
  store i64 %403, i64* %408, align 8
  %409 = load i64, i64* %PC.i, align 8
  %410 = load <2 x i32>, <2 x i32>* %368, align 1
  %411 = load <2 x i32>, <2 x i32>* %371, align 1
  %412 = extractelement <2 x i32> %410, i32 0
  store i32 %412, i32* %233, align 1
  %413 = extractelement <2 x i32> %410, i32 1
  store i32 %413, i32* %235, align 1
  %414 = extractelement <2 x i32> %411, i32 0
  store i32 %414, i32* %236, align 1
  %415 = extractelement <2 x i32> %411, i32 1
  store i32 %415, i32* %238, align 1
  %416 = load i64, i64* %RBP.i, align 8
  %417 = add i64 %416, -136
  %418 = add i64 %409, 11
  store i64 %418, i64* %PC.i, align 8
  %419 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %239, i64 0, i32 0, i32 0, i32 0, i64 0
  %420 = load i64, i64* %419, align 1
  %421 = inttoptr i64 %417 to i64*
  store i64 %420, i64* %421, align 8
  %422 = load i64, i64* %PC.i, align 8
  %423 = add i64 %422, -3882
  %424 = add i64 %422, 5
  %425 = load i64, i64* %6, align 8
  %426 = add i64 %425, -8
  %427 = inttoptr i64 %426 to i64*
  store i64 %424, i64* %427, align 8
  store i64 %426, i64* %6, align 8
  store i64 %423, i64* %3, align 8
  %call2_4014da = tail call %struct.Memory* @ext_cos(%struct.State* %0, i64 %423, %struct.Memory* %call2_4014aa)
  %428 = load i64, i64* %RBP.i, align 8
  %429 = add i64 %428, -128
  %430 = load i64, i64* %PC.i, align 8
  %431 = add i64 %430, 5
  store i64 %431, i64* %PC.i, align 8
  %432 = inttoptr i64 %429 to double*
  %433 = load double, double* %432, align 8
  %434 = load double, double* %245, align 1
  %435 = fmul double %433, %434
  store double %435, double* %241, align 1
  store i64 0, i64* %242, align 1
  %436 = add i64 %428, -136
  %437 = add i64 %430, 17
  store i64 %437, i64* %PC.i, align 8
  %438 = inttoptr i64 %436 to double*
  %439 = load double, double* %438, align 8
  %440 = fdiv double %439, %435
  store double %440, double* %279, align 1
  store i64 0, i64* %231, align 1
  %441 = add i64 %428, -104
  %442 = add i64 %430, 26
  store i64 %442, i64* %PC.i, align 8
  %443 = inttoptr i64 %441 to double*
  %444 = load double, double* %443, align 8
  %445 = fmul double %444, %440
  store double %445, double* %241, align 1
  store i64 0, i64* %242, align 1
  store double %445, double* bitcast (%G_0x602348_type* @G_0x602348 to double*), align 8
  %446 = add i64 %428, -16
  %447 = add i64 %430, 44
  store i64 %447, i64* %PC.i, align 8
  %448 = inttoptr i64 %446 to double*
  %449 = load double, double* %448, align 8
  store double %449, double* %279, align 1
  store double 0.000000e+00, double* %280, align 1
  %450 = bitcast double %449 to i64
  %451 = bitcast i64* %RAX.i96 to double*
  store double %449, double* %451, align 1
  %452 = add i64 %428, -112
  %453 = add i64 %430, 53
  store i64 %453, i64* %PC.i, align 8
  %454 = inttoptr i64 %452 to i64*
  %455 = load i64, i64* %454, align 8
  store i64 %455, i64* %RCX.i93, align 8
  %456 = xor i64 %455, %450
  store i64 %456, i64* %RAX.i96, align 8
  store i8 0, i8* %12, align 1
  %457 = trunc i64 %456 to i32
  %458 = and i32 %457, 255
  %459 = tail call i32 @llvm.ctpop.i32(i32 %458)
  %460 = trunc i32 %459 to i8
  %461 = and i8 %460, 1
  %462 = xor i8 %461, 1
  store i8 %462, i8* %13, align 1
  %463 = icmp eq i64 %456, 0
  %464 = zext i1 %463 to i8
  store i8 %464, i8* %15, align 1
  %465 = lshr i64 %456, 63
  %466 = trunc i64 %465 to i8
  store i8 %466, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  store i64 %456, i64* %230, align 1
  store i64 0, i64* %231, align 1
  %467 = add i64 %430, 70
  store i64 %467, i64* %PC.i, align 8
  store i64 %456, i64* bitcast (%G_0x602370_type* @G_0x602370 to i64*), align 8
  br label %block_.L_401525

block_.L_40128c:                                  ; preds = %block_401281, %routine_ucomisd__xmm0___xmm1.exit301
  %468 = phi i64 [ %277, %block_401281 ], [ %274, %routine_ucomisd__xmm0___xmm1.exit301 ]
  store i32 0, i32* %233, align 1
  store i32 0, i32* %235, align 1
  store i32 0, i32* %236, align 1
  store i32 0, i32* %238, align 1
  %469 = load double, double* bitcast (%G_0x602348_type* @G_0x602348 to double*), align 8
  store double %469, double* %241, align 1
  store double 0.000000e+00, double* %243, align 1
  %470 = add i64 %468, 16
  store i64 %470, i64* %PC.i, align 8
  %471 = load double, double* %245, align 1
  %472 = fcmp uno double %469, %471
  br i1 %472, label %473, label %483

; <label>:473:                                    ; preds = %block_.L_40128c
  %474 = fadd double %469, %471
  %475 = bitcast double %474 to i64
  %476 = and i64 %475, 9221120237041090560
  %477 = icmp eq i64 %476, 9218868437227405312
  %478 = and i64 %475, 2251799813685247
  %479 = icmp ne i64 %478, 0
  %480 = and i1 %477, %479
  br i1 %480, label %481, label %489

; <label>:481:                                    ; preds = %473
  %482 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %470, %struct.Memory* %272)
  %.pre9 = load i64, i64* %PC.i, align 8
  %.pre10 = load i8, i8* %15, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit

; <label>:483:                                    ; preds = %block_.L_40128c
  %484 = fcmp ogt double %469, %471
  br i1 %484, label %489, label %485

; <label>:485:                                    ; preds = %483
  %486 = fcmp olt double %469, %471
  br i1 %486, label %489, label %487

; <label>:487:                                    ; preds = %485
  %488 = fcmp oeq double %469, %471
  br i1 %488, label %489, label %493

; <label>:489:                                    ; preds = %487, %485, %483, %473
  %490 = phi i8 [ 0, %483 ], [ 0, %485 ], [ 1, %487 ], [ 1, %473 ]
  %491 = phi i8 [ 0, %483 ], [ 0, %485 ], [ 0, %487 ], [ 1, %473 ]
  %492 = phi i8 [ 0, %483 ], [ 1, %485 ], [ 0, %487 ], [ 1, %473 ]
  store i8 %490, i8* %15, align 1
  store i8 %491, i8* %13, align 1
  store i8 %492, i8* %12, align 1
  br label %493

; <label>:493:                                    ; preds = %489, %487
  %494 = phi i8 [ %490, %489 ], [ %270, %487 ]
  store i8 0, i8* %17, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %14, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit

routine_ucomisd__xmm0___xmm1.exit:                ; preds = %493, %481
  %495 = phi i8 [ %.pre10, %481 ], [ %494, %493 ]
  %496 = phi i64 [ %.pre9, %481 ], [ %470, %493 ]
  %497 = phi %struct.Memory* [ %482, %481 ], [ %272, %493 ]
  %498 = icmp eq i8 %495, 0
  %.v33 = select i1 %498, i64 52, i64 6
  %499 = add i64 %496, %.v33
  store i64 %499, i64* %3, align 8
  br i1 %498, label %block_.L_4012d0, label %block_4012a2

block_4012a2:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit
  %500 = load i8, i8* %13, align 1
  %501 = icmp ne i8 %500, 0
  %.v34 = select i1 %501, i64 46, i64 6
  %502 = add i64 %499, %.v34
  store i64 %502, i64* %3, align 8
  %cmpBr_4012a2 = icmp eq i8 %500, 1
  br i1 %cmpBr_4012a2, label %block_.L_4012d0, label %block_4012a8

block_4012a8:                                     ; preds = %block_4012a2
  store i32 0, i32* %233, align 1
  store i32 0, i32* %235, align 1
  %503 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %30, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %504 = load i64, i64* %503, align 1
  store i64 %504, i64* bitcast (%G_0x602370_type* @G_0x602370 to i64*), align 8
  %505 = load double, double* bitcast (%G_0x602630_type* @G_0x602630 to double*), align 8
  %506 = bitcast [32 x %union.VectorReg]* %30 to double*
  %507 = load double, double* bitcast (%G_0x602640_type* @G_0x602640 to double*), align 8
  %508 = fdiv double %505, %507
  store double %508, double* %506, align 1
  store i64 0, i64* %231, align 1
  %509 = load i64, i64* %RBP.i, align 8
  %510 = add i64 %509, -24
  %511 = add i64 %502, 35
  store i64 %511, i64* %PC.i, align 8
  %512 = inttoptr i64 %510 to double*
  store double %508, double* %512, align 8
  %513 = load i64, i64* %PC.i, align 8
  %514 = add i64 %513, 68
  store i64 %514, i64* %3, align 8
  %.pre13 = bitcast %union.VectorReg* %239 to <2 x i32>*
  %.pre15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %.pre17 = bitcast i64* %.pre15 to <2 x i32>*
  br label %block_.L_40130f

block_.L_4012d0:                                  ; preds = %block_4012a2, %routine_ucomisd__xmm0___xmm1.exit
  %515 = phi i64 [ %502, %block_4012a2 ], [ %499, %routine_ucomisd__xmm0___xmm1.exit ]
  %516 = load double, double* bitcast (%G_0x602348_type* @G_0x602348 to double*), align 8
  %517 = bitcast [32 x %union.VectorReg]* %30 to double*
  %518 = load double, double* bitcast (%G_0x602640_type* @G_0x602640 to double*), align 8
  %519 = fsub double %516, %518
  %520 = fdiv double %519, %518
  %521 = load i64, i64* bitcast (%G_0x602370_type* @G_0x602370 to i64*), align 8
  %522 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %239, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %521, i64* %522, align 1
  store double 0.000000e+00, double* %243, align 1
  %523 = load i64, i64* %RBP.i, align 8
  %524 = add i64 %523, -56
  %525 = add i64 %515, 41
  store i64 %525, i64* %PC.i, align 8
  %526 = inttoptr i64 %524 to double*
  store double %520, double* %526, align 8
  %527 = load i64, i64* %PC.i, align 8
  %528 = bitcast %union.VectorReg* %239 to <2 x i32>*
  %529 = load <2 x i32>, <2 x i32>* %528, align 1
  %530 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %531 = bitcast i64* %530 to <2 x i32>*
  %532 = load <2 x i32>, <2 x i32>* %531, align 1
  %533 = extractelement <2 x i32> %529, i32 0
  store i32 %533, i32* %233, align 1
  %534 = extractelement <2 x i32> %529, i32 1
  store i32 %534, i32* %235, align 1
  %535 = extractelement <2 x i32> %532, i32 0
  store i32 %535, i32* %236, align 1
  %536 = extractelement <2 x i32> %532, i32 1
  store i32 %536, i32* %238, align 1
  %537 = add i64 %527, -3353
  %538 = add i64 %527, 8
  %539 = load i64, i64* %6, align 8
  %540 = add i64 %539, -8
  %541 = inttoptr i64 %540 to i64*
  store i64 %538, i64* %541, align 8
  store i64 %540, i64* %6, align 8
  store i64 %537, i64* %3, align 8
  %call2_4012fc = tail call %struct.Memory* @ext_sin(%struct.State* %0, i64 %537, %struct.Memory* %497)
  %542 = load i64, i64* %RBP.i, align 8
  %543 = add i64 %542, -56
  %544 = load i64, i64* %PC.i, align 8
  %545 = add i64 %544, 5
  store i64 %545, i64* %PC.i, align 8
  %546 = inttoptr i64 %543 to double*
  %547 = load double, double* %546, align 8
  %548 = load double, double* %245, align 1
  %549 = fmul double %547, %548
  store double %549, double* %241, align 1
  store i64 0, i64* %242, align 1
  %550 = add i64 %542, -24
  %551 = add i64 %544, 14
  store i64 %551, i64* %PC.i, align 8
  %552 = inttoptr i64 %550 to double*
  store double %549, double* %552, align 8
  %.pre11 = load i64, i64* %PC.i, align 8
  br label %block_.L_40130f

block_.L_40130f:                                  ; preds = %block_.L_4012d0, %block_4012a8
  %.pre-phi18 = phi <2 x i32>* [ %531, %block_.L_4012d0 ], [ %.pre17, %block_4012a8 ]
  %.pre-phi14 = phi <2 x i32>* [ %528, %block_.L_4012d0 ], [ %.pre13, %block_4012a8 ]
  %.pre-phi = phi double* [ %517, %block_.L_4012d0 ], [ %506, %block_4012a8 ]
  %553 = phi i64 [ %.pre11, %block_.L_4012d0 ], [ %514, %block_4012a8 ]
  %MEMORY.7 = phi %struct.Memory* [ %call2_4012fc, %block_.L_4012d0 ], [ %497, %block_4012a8 ]
  %.pre-phi12 = bitcast i64* %231 to double*
  %554 = load i64, i64* %RBP.i, align 8
  %555 = add i64 %554, -24
  %556 = add i64 %553, 5
  store i64 %556, i64* %PC.i, align 8
  %557 = inttoptr i64 %555 to i64*
  %558 = load i64, i64* %557, align 8
  %559 = bitcast double* %.pre-phi to i64*
  store i64 %558, i64* %559, align 1
  store double 0.000000e+00, double* %.pre-phi12, align 1
  %560 = add i64 %553, -3359
  %561 = add i64 %553, 10
  %562 = load i64, i64* %6, align 8
  %563 = add i64 %562, -8
  %564 = inttoptr i64 %563 to i64*
  store i64 %561, i64* %564, align 8
  store i64 %563, i64* %6, align 8
  store i64 %560, i64* %3, align 8
  %565 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @asin to i64), %struct.Memory* %MEMORY.7)
  %566 = load i64, i64* %RBP.i, align 8
  %567 = add i64 %566, -8
  %568 = load i64, i64* %PC.i, align 8
  %569 = add i64 %568, 5
  store i64 %569, i64* %PC.i, align 8
  %570 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %30, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %571 = load i64, i64* %570, align 1
  %572 = inttoptr i64 %567 to i64*
  store i64 %571, i64* %572, align 8
  %573 = load i64, i64* %PC.i, align 8
  %574 = load double, double* bitcast (%G_0x602638_type* @G_0x602638 to double*), align 8
  store double 0.000000e+00, double* %.pre-phi12, align 1
  %575 = load double, double* bitcast (%G_0x602648_type* @G_0x602648 to double*), align 8
  %576 = fdiv double %574, %575
  store double %576, double* %.pre-phi, align 1
  store i64 0, i64* %231, align 1
  %577 = load i64, i64* %RBP.i, align 8
  %578 = add i64 %577, -24
  %579 = add i64 %573, 23
  store i64 %579, i64* %PC.i, align 8
  %580 = inttoptr i64 %578 to double*
  %581 = load double, double* %580, align 8
  %582 = fmul double %576, %581
  store i64 0, i64* %231, align 1
  %583 = add i64 %577, -32
  %584 = add i64 %573, 28
  store i64 %584, i64* %PC.i, align 8
  %585 = inttoptr i64 %583 to double*
  store double %582, double* %585, align 8
  %586 = load i64, i64* %PC.i, align 8
  %587 = load i64, i64* bitcast (%G_0x602370_type* @G_0x602370 to i64*), align 8
  %588 = load i64, i64* %RBP.i, align 8
  %589 = add i64 %588, -40
  %590 = add i64 %586, 14
  store i64 %590, i64* %PC.i, align 8
  %591 = inttoptr i64 %589 to i64*
  store i64 %587, i64* %591, align 8
  %592 = load i64, i64* %PC.i, align 8
  %593 = load double, double* bitcast (%G_0x602370_type* @G_0x602370 to double*), align 8
  store double %593, double* %.pre-phi, align 1
  store double 0.000000e+00, double* %.pre-phi12, align 1
  %594 = load i64, i64* %RBP.i, align 8
  %595 = add i64 %594, -8
  %596 = add i64 %592, 14
  store i64 %596, i64* %PC.i, align 8
  %597 = inttoptr i64 %595 to double*
  %598 = load double, double* %597, align 8
  %599 = fadd double %593, %598
  store double %599, double* %.pre-phi, align 1
  store i64 0, i64* %231, align 1
  %600 = add i64 %594, -32
  %601 = add i64 %592, 19
  store i64 %601, i64* %PC.i, align 8
  %602 = inttoptr i64 %600 to i64*
  %603 = load i64, i64* %602, align 8
  %604 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %239, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %603, i64* %604, align 1
  store double 0.000000e+00, double* %243, align 1
  %605 = add i64 %594, -64
  %606 = add i64 %592, 24
  store i64 %606, i64* %PC.i, align 8
  %607 = inttoptr i64 %605 to double*
  store double %599, double* %607, align 8
  %608 = load i64, i64* %PC.i, align 8
  %609 = load <2 x i32>, <2 x i32>* %.pre-phi14, align 1
  %610 = load <2 x i32>, <2 x i32>* %.pre-phi18, align 1
  %611 = extractelement <2 x i32> %609, i32 0
  store i32 %611, i32* %233, align 1
  %612 = extractelement <2 x i32> %609, i32 1
  store i32 %612, i32* %235, align 1
  %613 = extractelement <2 x i32> %610, i32 0
  store i32 %613, i32* %236, align 1
  %614 = extractelement <2 x i32> %610, i32 1
  store i32 %614, i32* %238, align 1
  %615 = add i64 %608, -3440
  %616 = add i64 %608, 8
  %617 = load i64, i64* %6, align 8
  %618 = add i64 %617, -8
  %619 = inttoptr i64 %618 to i64*
  store i64 %616, i64* %619, align 8
  store i64 %618, i64* %6, align 8
  store i64 %615, i64* %3, align 8
  %620 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @asin to i64), %struct.Memory* %565)
  %621 = load i64, i64* %PC.i, align 8
  %622 = load double, double* bitcast (%G_0x2b0__rip__type* @G_0x2b0__rip_ to double*), align 8
  store double %622, double* %241, align 1
  store double 0.000000e+00, double* %243, align 1
  %623 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %624 = load i64, i64* %RBP.i, align 8
  %625 = add i64 %624, -64
  %626 = add i64 %621, 13
  store i64 %626, i64* %PC.i, align 8
  %627 = inttoptr i64 %625 to double*
  %628 = load double, double* %627, align 8
  %629 = bitcast %union.VectorReg* %623 to double*
  %630 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %631 = load double, double* %245, align 1
  %632 = fsub double %628, %631
  store double %632, double* %629, align 1
  store i64 0, i64* %630, align 1
  store double %632, double* bitcast (%G_0x602370_type* @G_0x602370 to double*), align 8
  %633 = add i64 %624, -40
  %634 = add i64 %621, 31
  store i64 %634, i64* %PC.i, align 8
  %635 = inttoptr i64 %633 to double*
  %636 = load double, double* %635, align 8
  store double %636, double* %.pre-phi, align 1
  store double 0.000000e+00, double* %.pre-phi12, align 1
  %637 = add i64 %624, -8
  %638 = add i64 %621, 36
  store i64 %638, i64* %PC.i, align 8
  %639 = inttoptr i64 %637 to double*
  %640 = load double, double* %639, align 8
  %641 = fadd double %636, %640
  %642 = fdiv double %641, %622
  store double %642, double* %.pre-phi, align 1
  store i64 0, i64* %231, align 1
  %643 = add i64 %624, -72
  %644 = add i64 %621, 45
  store i64 %644, i64* %PC.i, align 8
  %645 = inttoptr i64 %643 to double*
  store double %622, double* %645, align 8
  %646 = load i64, i64* %PC.i, align 8
  %647 = add i64 %646, -3509
  %648 = add i64 %646, 5
  %649 = load i64, i64* %6, align 8
  %650 = add i64 %649, -8
  %651 = inttoptr i64 %650 to i64*
  store i64 %648, i64* %651, align 8
  store i64 %650, i64* %6, align 8
  store i64 %647, i64* %3, align 8
  %call2_401395 = tail call %struct.Memory* @ext_sin(%struct.State* %0, i64 %647, %struct.Memory* %620)
  %652 = load i64, i64* %RBP.i, align 8
  %653 = add i64 %652, -48
  %654 = load i64, i64* %PC.i, align 8
  %655 = add i64 %654, 5
  store i64 %655, i64* %PC.i, align 8
  %656 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %30, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %657 = load i64, i64* %656, align 1
  %658 = inttoptr i64 %653 to i64*
  store i64 %657, i64* %658, align 8
  %659 = load i64, i64* %RBP.i, align 8
  %660 = add i64 %659, -72
  %661 = load i64, i64* %PC.i, align 8
  %662 = add i64 %661, 5
  store i64 %662, i64* %PC.i, align 8
  %663 = inttoptr i64 %660 to double*
  %664 = load double, double* %663, align 8
  store double 0.000000e+00, double* %.pre-phi12, align 1
  %665 = load double, double* bitcast (%G_0x602640_type* @G_0x602640 to double*), align 8
  %666 = fmul double %664, %665
  store double %666, double* %.pre-phi, align 1
  store i64 0, i64* %231, align 1
  %667 = add i64 %659, -48
  %668 = add i64 %661, 19
  store i64 %668, i64* %PC.i, align 8
  %669 = inttoptr i64 %667 to double*
  %670 = load double, double* %669, align 8
  %671 = fmul double %666, %670
  store double %671, double* %.pre-phi, align 1
  store i64 0, i64* %231, align 1
  %672 = add i64 %661, 24
  store i64 %672, i64* %PC.i, align 8
  %673 = load double, double* %669, align 8
  %674 = fmul double %671, %673
  store i64 0, i64* %231, align 1
  %675 = add i64 %661, 29
  store i64 %675, i64* %PC.i, align 8
  store double %674, double* %669, align 8
  %676 = load i64, i64* %PC.i, align 8
  %677 = load i64, i64* bitcast (%G_0x602640_type* @G_0x602640 to i64*), align 8
  %678 = bitcast double* %.pre-phi to i64*
  store i64 %677, i64* %678, align 1
  store double 0.000000e+00, double* %.pre-phi12, align 1
  %679 = load i64, i64* %RBP.i, align 8
  %680 = add i64 %679, -40
  %681 = add i64 %676, 14
  store i64 %681, i64* %PC.i, align 8
  %682 = inttoptr i64 %680 to double*
  %683 = load double, double* %682, align 8
  store double %683, double* %241, align 1
  store double 0.000000e+00, double* %243, align 1
  %684 = add i64 %679, -8
  %685 = add i64 %676, 19
  store i64 %685, i64* %PC.i, align 8
  %686 = inttoptr i64 %684 to double*
  %687 = load double, double* %686, align 8
  %688 = fadd double %683, %687
  store double %688, double* %241, align 1
  store i64 0, i64* %242, align 1
  %689 = add i64 %679, -80
  %690 = add i64 %676, 24
  store i64 %690, i64* %PC.i, align 8
  %691 = inttoptr i64 %689 to i64*
  store i64 %677, i64* %691, align 8
  %692 = load i64, i64* %PC.i, align 8
  %693 = load <2 x i32>, <2 x i32>* %.pre-phi14, align 1
  %694 = load <2 x i32>, <2 x i32>* %.pre-phi18, align 1
  %695 = extractelement <2 x i32> %693, i32 0
  store i32 %695, i32* %233, align 1
  %696 = extractelement <2 x i32> %693, i32 1
  store i32 %696, i32* %235, align 1
  %697 = extractelement <2 x i32> %694, i32 0
  store i32 %697, i32* %236, align 1
  %698 = extractelement <2 x i32> %694, i32 1
  store i32 %698, i32* %238, align 1
  %699 = add i64 %692, -3572
  %700 = add i64 %692, 8
  %701 = load i64, i64* %6, align 8
  %702 = add i64 %701, -8
  %703 = inttoptr i64 %702 to i64*
  store i64 %700, i64* %703, align 8
  store i64 %702, i64* %6, align 8
  store i64 %699, i64* %3, align 8
  %call2_4013d7 = tail call %struct.Memory* @ext_sin(%struct.State* %0, i64 %699, %struct.Memory* %call2_401395)
  %704 = load i64, i64* %RBP.i, align 8
  %705 = add i64 %704, -80
  %706 = load i64, i64* %PC.i, align 8
  %707 = add i64 %706, 5
  store i64 %707, i64* %PC.i, align 8
  %708 = inttoptr i64 %705 to double*
  %709 = load double, double* %708, align 8
  store double 0.000000e+00, double* %243, align 1
  %710 = load double, double* %245, align 1
  %711 = fmul double %709, %710
  store double %711, double* %241, align 1
  store i64 0, i64* %242, align 1
  %712 = load i64, i64* bitcast (%G_0x602370_type* @G_0x602370 to i64*), align 8
  %713 = bitcast double* %.pre-phi to i64*
  store i64 %712, i64* %713, align 1
  store double 0.000000e+00, double* %.pre-phi12, align 1
  %714 = add i64 %704, -88
  %715 = add i64 %706, 23
  store i64 %715, i64* %PC.i, align 8
  %716 = inttoptr i64 %714 to double*
  store double %711, double* %716, align 8
  %717 = load i64, i64* %PC.i, align 8
  %718 = add i64 %717, -3619
  %719 = add i64 %717, 5
  %720 = load i64, i64* %6, align 8
  %721 = add i64 %720, -8
  %722 = inttoptr i64 %721 to i64*
  store i64 %719, i64* %722, align 8
  store i64 %721, i64* %6, align 8
  store i64 %718, i64* %3, align 8
  %call2_4013f3 = tail call %struct.Memory* @ext_tan(%struct.State* %0, i64 %718, %struct.Memory* %call2_4013d7)
  %723 = load i64, i64* %PC.i, align 8
  %724 = load double, double* bitcast (%G_0x218__rip__type* @G_0x218__rip_ to double*), align 8
  store double 0.000000e+00, double* %243, align 1
  %725 = load double, double* %245, align 1
  %726 = fdiv double %724, %725
  store double %726, double* %241, align 1
  store i64 0, i64* %242, align 1
  %727 = load i64, i64* %RBP.i, align 8
  %728 = add i64 %727, -88
  %729 = add i64 %723, 17
  store i64 %729, i64* %PC.i, align 8
  %730 = inttoptr i64 %728 to double*
  %731 = load double, double* %730, align 8
  store double 0.000000e+00, double* %.pre-phi12, align 1
  %732 = fmul double %731, %726
  store double %732, double* %.pre-phi, align 1
  store i64 0, i64* %231, align 1
  %733 = add i64 %727, -48
  %734 = add i64 %723, 26
  store i64 %734, i64* %PC.i, align 8
  %735 = inttoptr i64 %733 to double*
  %736 = load double, double* %735, align 8
  %737 = fadd double %732, %736
  store double %737, double* %.pre-phi, align 1
  store i64 0, i64* %231, align 1
  store double %737, double* bitcast (%G_0x602348_type* @G_0x602348 to double*), align 8
  %738 = add i64 %723, 301
  store i64 %738, i64* %3, align 8
  br label %block_.L_401525

block_.L_401525:                                  ; preds = %block_401287, %block_.L_40130f, %block_401106, %block_.L_4011f6
  %739 = phi i64 [ %738, %block_.L_40130f ], [ %467, %block_401287 ], [ %229, %block_.L_4011f6 ], [ %88, %block_401106 ]
  %MEMORY.8 = phi %struct.Memory* [ %call2_4013f3, %block_.L_40130f ], [ %call2_4014da, %block_401287 ], [ %206, %block_.L_4011f6 ], [ %73, %block_401106 ]
  %740 = load i64, i64* %RSP.i98, align 8
  %741 = add i64 %740, 144
  store i64 %741, i64* %RSP.i98, align 8
  %742 = icmp ugt i64 %740, -145
  %743 = zext i1 %742 to i8
  store i8 %743, i8* %12, align 1
  %744 = trunc i64 %741 to i32
  %745 = and i32 %744, 255
  %746 = tail call i32 @llvm.ctpop.i32(i32 %745)
  %747 = trunc i32 %746 to i8
  %748 = and i8 %747, 1
  %749 = xor i8 %748, 1
  store i8 %749, i8* %13, align 1
  %750 = xor i64 %740, 16
  %751 = xor i64 %750, %741
  %752 = lshr i64 %751, 4
  %753 = trunc i64 %752 to i8
  %754 = and i8 %753, 1
  store i8 %754, i8* %14, align 1
  %755 = icmp eq i64 %741, 0
  %756 = zext i1 %755 to i8
  store i8 %756, i8* %15, align 1
  %757 = lshr i64 %741, 63
  %758 = trunc i64 %757 to i8
  store i8 %758, i8* %16, align 1
  %759 = lshr i64 %740, 63
  %760 = xor i64 %757, %759
  %761 = add nuw nsw i64 %760, %757
  %762 = icmp eq i64 %761, 2
  %763 = zext i1 %762 to i8
  store i8 %763, i8* %17, align 1
  %764 = add i64 %739, 8
  store i64 %764, i64* %PC.i, align 8
  %765 = add i64 %740, 152
  %766 = inttoptr i64 %741 to i64*
  %767 = load i64, i64* %766, align 8
  store i64 %767, i64* %RBP.i, align 8
  store i64 %765, i64* %6, align 8
  %768 = add i64 %739, 9
  store i64 %768, i64* %PC.i, align 8
  %769 = inttoptr i64 %765 to i64*
  %770 = load i64, i64* %769, align 8
  store i64 %770, i64* %3, align 8
  %771 = add i64 %740, 160
  store i64 %771, i64* %6, align 8
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
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7 = icmp ne i8 %5, 0
  %.v = select i1 %7, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %3, %.v
  store i64 %8, i64* %6, align 8
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
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %9 = add i64 %3, %.v
  store i64 %9, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jp_.L_40110b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7 = icmp ne i8 %5, 0
  %.v = select i1 %7, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %3, %.v
  store i64 %8, i64* %6, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_401216(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
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
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %9 = add i64 %3, %.v
  store i64 %9, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jp_.L_40114f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7 = icmp ne i8 %5, 0
  %.v = select i1 %7, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %3, %.v
  store i64 %8, i64* %6, align 8
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
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
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
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %9 = add i64 %3, %.v
  store i64 %9, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jp_.L_4011df(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7 = icmp ne i8 %5, 0
  %.v = select i1 %7, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %3, %.v
  store i64 %8, i64* %6, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4011f6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
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
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
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
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %9 = add i64 %3, %.v
  store i64 %9, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jp_.L_40128c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7 = icmp ne i8 %5, 0
  %.v = select i1 %7, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %3, %.v
  store i64 %8, i64* %6, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_401420(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
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

define %struct.Memory* @routine_jp_.L_4012d0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7 = icmp ne i8 %5, 0
  %.v = select i1 %7, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %3, %.v
  store i64 %8, i64* %6, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_40130f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
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
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %10, align 8
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
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %10, align 8
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
  %5 = load i64, i64* bitcast (%G_0x2b0__rip__type* @G_0x2b0__rip_ to i64*), align 8
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
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %10, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x218__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x218__rip__type* @G_0x218__rip_ to i64*), align 8
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
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %10, align 8
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
