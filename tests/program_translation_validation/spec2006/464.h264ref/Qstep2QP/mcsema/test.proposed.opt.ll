; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x3103e__rip__type = type <{ [8 x i8] }>
%G_0x3110d__rip__type = type <{ [8 x i8] }>
%G_0x31135__rip__type = type <{ [8 x i8] }>
%G_0x31159__rip__type = type <{ [8 x i8] }>
%G_0x3117d__rip__type = type <{ [8 x i8] }>
%G_0x31182__rip__type = type <{ [8 x i8] }>
%G_0x311a1__rip__type = type <{ [8 x i8] }>
%G_0x311b6__rip__type = type <{ [8 x i8] }>
%G_0x311c5__rip__type = type <{ [8 x i8] }>
%G_0x311e9__rip__type = type <{ [8 x i8] }>
%G_0x311ea__rip__type = type <{ [8 x i8] }>
%G_0x3121e__rip__type = type <{ [8 x i8] }>
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
@G_0x3103e__rip_ = global %G_0x3103e__rip__type zeroinitializer
@G_0x3110d__rip_ = global %G_0x3110d__rip__type zeroinitializer
@G_0x31135__rip_ = global %G_0x31135__rip__type zeroinitializer
@G_0x31159__rip_ = global %G_0x31159__rip__type zeroinitializer
@G_0x3117d__rip_ = global %G_0x3117d__rip__type zeroinitializer
@G_0x31182__rip_ = global %G_0x31182__rip__type zeroinitializer
@G_0x311a1__rip_ = global %G_0x311a1__rip__type zeroinitializer
@G_0x311b6__rip_ = global %G_0x311b6__rip__type zeroinitializer
@G_0x311c5__rip_ = global %G_0x311c5__rip__type zeroinitializer
@G_0x311e9__rip_ = global %G_0x311e9__rip__type zeroinitializer
@G_0x311ea__rip_ = global %G_0x311ea__rip__type zeroinitializer
@G_0x3121e__rip_ = global %G_0x3121e__rip__type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare %struct.Memory* @sub_480870.QP2Qstep(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @Qstep2QP(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %RDI.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  store i64 0, i64* %RDI.i, align 8
  store i8 0, i8* %12, align 1
  store i8 1, i8* %13, align 1
  store i8 1, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %19 = add i64 %7, -24
  %20 = add i64 %10, 14
  store i64 %20, i64* %3, align 8
  %21 = bitcast [32 x %union.VectorReg]* %18 to double*
  %22 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %18, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %23 = load i64, i64* %22, align 1
  %24 = inttoptr i64 %19 to i64*
  store i64 %23, i64* %24, align 8
  %25 = load i64, i64* %RBP.i, align 8
  %26 = add i64 %25, -20
  %27 = load i64, i64* %3, align 8
  %28 = add i64 %27, 7
  store i64 %28, i64* %3, align 8
  %29 = inttoptr i64 %26 to i32*
  store i32 0, i32* %29, align 4
  %30 = load i64, i64* %RBP.i, align 8
  %31 = add i64 %30, -24
  %32 = load i64, i64* %3, align 8
  %33 = add i64 %32, 7
  store i64 %33, i64* %3, align 8
  %34 = inttoptr i64 %31 to i32*
  store i32 0, i32* %34, align 4
  %35 = load i64, i64* %RBP.i, align 8
  %36 = add i64 %35, -16
  %37 = load i64, i64* %3, align 8
  %38 = add i64 %37, 5
  store i64 %38, i64* %3, align 8
  %39 = inttoptr i64 %36 to i64*
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %22, align 1
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %42 = bitcast i64* %41 to double*
  store double 0.000000e+00, double* %42, align 1
  %43 = add i64 %35, -32
  %44 = add i64 %37, 10
  store i64 %44, i64* %3, align 8
  %45 = inttoptr i64 %43 to i64*
  store i64 %40, i64* %45, align 8
  %46 = load i64, i64* %3, align 8
  %47 = add i64 %46, 441
  %48 = add i64 %46, 5
  %49 = load i64, i64* %6, align 8
  %50 = add i64 %49, -8
  %51 = inttoptr i64 %50 to i64*
  store i64 %48, i64* %51, align 8
  store i64 %50, i64* %6, align 8
  store i64 %47, i64* %3, align 8
  %call2_4806b7 = tail call %struct.Memory* @sub_480870.QP2Qstep(%struct.State* %0, i64 %47, %struct.Memory* %2)
  %52 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %53 = load i64, i64* %RBP.i, align 8
  %54 = add i64 %53, -32
  %55 = load i64, i64* %3, align 8
  %56 = add i64 %55, 5
  store i64 %56, i64* %3, align 8
  %57 = inttoptr i64 %54 to i64*
  %58 = load i64, i64* %57, align 8
  %59 = bitcast %union.VectorReg* %52 to double*
  %60 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %52, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %58, i64* %60, align 1
  %61 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %62 = bitcast i64* %61 to double*
  store double 0.000000e+00, double* %62, align 1
  %63 = add i64 %55, 9
  store i64 %63, i64* %3, align 8
  %64 = load double, double* %21, align 1
  %65 = bitcast i64 %58 to double
  %66 = fcmp uno double %64, %65
  br i1 %66, label %67, label %77

; <label>:67:                                     ; preds = %entry
  %68 = fadd double %64, %65
  %69 = bitcast double %68 to i64
  %70 = and i64 %69, 9221120237041090560
  %71 = icmp eq i64 %70, 9218868437227405312
  %72 = and i64 %69, 2251799813685247
  %73 = icmp ne i64 %72, 0
  %74 = and i1 %71, %73
  br i1 %74, label %75, label %83

; <label>:75:                                     ; preds = %67
  %76 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %63, %struct.Memory* %call2_4806b7)
  %.pre = load i64, i64* %3, align 8
  br label %routine_ucomisd__xmm1___xmm0.exit

; <label>:77:                                     ; preds = %entry
  %78 = fcmp ogt double %64, %65
  br i1 %78, label %83, label %79

; <label>:79:                                     ; preds = %77
  %80 = fcmp olt double %64, %65
  br i1 %80, label %83, label %81

; <label>:81:                                     ; preds = %79
  %82 = fcmp oeq double %64, %65
  br i1 %82, label %83, label %87

; <label>:83:                                     ; preds = %81, %79, %77, %67
  %84 = phi i8 [ 0, %77 ], [ 0, %79 ], [ 1, %81 ], [ 1, %67 ]
  %85 = phi i8 [ 0, %77 ], [ 0, %79 ], [ 0, %81 ], [ 1, %67 ]
  %86 = phi i8 [ 0, %77 ], [ 1, %79 ], [ 0, %81 ], [ 1, %67 ]
  store i8 %84, i8* %15, align 1
  store i8 %85, i8* %13, align 1
  store i8 %86, i8* %12, align 1
  br label %87

; <label>:87:                                     ; preds = %83, %81
  store i8 0, i8* %17, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %14, align 1
  br label %routine_ucomisd__xmm1___xmm0.exit

routine_ucomisd__xmm1___xmm0.exit:                ; preds = %87, %75
  %88 = phi i64 [ %.pre, %75 ], [ %63, %87 ]
  %89 = phi %struct.Memory* [ %76, %75 ], [ %call2_4806b7, %87 ]
  %90 = load i8, i8* %12, align 1
  %91 = load i8, i8* %15, align 1
  %92 = or i8 %91, %90
  %93 = icmp ne i8 %92, 0
  %.v36 = select i1 %93, i64 18, i64 6
  %94 = add i64 %88, %.v36
  store i64 %94, i64* %3, align 8
  br i1 %93, label %block_.L_4806d7, label %block_4806cb

block_4806cb:                                     ; preds = %routine_ucomisd__xmm1___xmm0.exit
  %95 = load i64, i64* %RBP.i, align 8
  %96 = add i64 %95, -4
  %97 = add i64 %94, 7
  store i64 %97, i64* %3, align 8
  %98 = inttoptr i64 %96 to i32*
  store i32 0, i32* %98, align 4
  %99 = load i64, i64* %3, align 8
  %100 = add i64 %99, 403
  store i64 %100, i64* %3, align 8
  br label %block_.L_480865

block_.L_4806d7:                                  ; preds = %routine_ucomisd__xmm1___xmm0.exit
  store i64 51, i64* %RDI.i, align 8
  %101 = load i64, i64* %RBP.i, align 8
  %102 = add i64 %101, -16
  %103 = add i64 %94, 10
  store i64 %103, i64* %3, align 8
  %104 = inttoptr i64 %102 to i64*
  %105 = load i64, i64* %104, align 8
  store i64 %105, i64* %22, align 1
  store double 0.000000e+00, double* %42, align 1
  %106 = add i64 %101, -40
  %107 = add i64 %94, 15
  store i64 %107, i64* %3, align 8
  %108 = inttoptr i64 %106 to i64*
  store i64 %105, i64* %108, align 8
  %109 = load i64, i64* %3, align 8
  %110 = add i64 %109, 394
  %111 = add i64 %109, 5
  %112 = load i64, i64* %6, align 8
  %113 = add i64 %112, -8
  %114 = inttoptr i64 %113 to i64*
  store i64 %111, i64* %114, align 8
  store i64 %113, i64* %6, align 8
  store i64 %110, i64* %3, align 8
  %call2_4806e6 = tail call %struct.Memory* @sub_480870.QP2Qstep(%struct.State* nonnull %0, i64 %110, %struct.Memory* %89)
  %115 = load i64, i64* %RBP.i, align 8
  %116 = add i64 %115, -40
  %117 = load i64, i64* %3, align 8
  %118 = add i64 %117, 5
  store i64 %118, i64* %3, align 8
  %119 = inttoptr i64 %116 to i64*
  %120 = load i64, i64* %119, align 8
  store i64 %120, i64* %60, align 1
  store double 0.000000e+00, double* %62, align 1
  %121 = add i64 %117, 9
  store i64 %121, i64* %3, align 8
  %.cast = bitcast i64 %120 to double
  %122 = load double, double* %21, align 1
  %123 = fcmp uno double %.cast, %122
  br i1 %123, label %124, label %134

; <label>:124:                                    ; preds = %block_.L_4806d7
  %125 = fadd double %.cast, %122
  %126 = bitcast double %125 to i64
  %127 = and i64 %126, 9221120237041090560
  %128 = icmp eq i64 %127, 9218868437227405312
  %129 = and i64 %126, 2251799813685247
  %130 = icmp ne i64 %129, 0
  %131 = and i1 %128, %130
  br i1 %131, label %132, label %140

; <label>:132:                                    ; preds = %124
  %133 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %121, %struct.Memory* %call2_4806e6)
  %.pre16 = load i64, i64* %3, align 8
  br label %routine_ucomisd__xmm0___xmm1.exit154

; <label>:134:                                    ; preds = %block_.L_4806d7
  %135 = fcmp ogt double %.cast, %122
  br i1 %135, label %140, label %136

; <label>:136:                                    ; preds = %134
  %137 = fcmp olt double %.cast, %122
  br i1 %137, label %140, label %138

; <label>:138:                                    ; preds = %136
  %139 = fcmp oeq double %.cast, %122
  br i1 %139, label %140, label %144

; <label>:140:                                    ; preds = %138, %136, %134, %124
  %141 = phi i8 [ 0, %134 ], [ 0, %136 ], [ 1, %138 ], [ 1, %124 ]
  %142 = phi i8 [ 0, %134 ], [ 0, %136 ], [ 0, %138 ], [ 1, %124 ]
  %143 = phi i8 [ 0, %134 ], [ 1, %136 ], [ 0, %138 ], [ 1, %124 ]
  store i8 %141, i8* %15, align 1
  store i8 %142, i8* %13, align 1
  store i8 %143, i8* %12, align 1
  br label %144

; <label>:144:                                    ; preds = %140, %138
  store i8 0, i8* %17, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %14, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit154

routine_ucomisd__xmm0___xmm1.exit154:             ; preds = %144, %132
  %145 = phi i64 [ %.pre16, %132 ], [ %121, %144 ]
  %146 = phi %struct.Memory* [ %133, %132 ], [ %call2_4806e6, %144 ]
  %147 = load i8, i8* %12, align 1
  %148 = load i8, i8* %15, align 1
  %149 = or i8 %148, %147
  %150 = icmp ne i8 %149, 0
  %.v37 = select i1 %150, i64 18, i64 6
  %151 = add i64 %145, %.v37
  store i64 %151, i64* %3, align 8
  br i1 %150, label %block_.L_480706, label %block_4806fa

block_4806fa:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit154
  %152 = load i64, i64* %RBP.i, align 8
  %153 = add i64 %152, -4
  %154 = add i64 %151, 7
  store i64 %154, i64* %3, align 8
  %155 = inttoptr i64 %153 to i32*
  store i32 51, i32* %155, align 4
  %156 = load i64, i64* %3, align 8
  %157 = add i64 %156, 356
  store i64 %157, i64* %3, align 8
  br label %block_.L_480865

block_.L_480706:                                  ; preds = %routine_ucomisd__xmm0___xmm1.exit154
  %158 = add i64 %151, 10
  %RAX.i116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  br label %block_.L_480710

block_.L_480710:                                  ; preds = %block_480733, %block_.L_480706
  %storemerge = phi i64 [ %158, %block_.L_480706 ], [ %254, %block_480733 ]
  %MEMORY.0 = phi %struct.Memory* [ %146, %block_.L_480706 ], [ %204, %block_480733 ]
  store i64 5, i64* %RDI.i, align 8
  %159 = load i64, i64* %RBP.i, align 8
  %160 = add i64 %159, -16
  %161 = add i64 %storemerge, 10
  store i64 %161, i64* %3, align 8
  %162 = inttoptr i64 %160 to i64*
  %163 = load i64, i64* %162, align 8
  store i64 %163, i64* %22, align 1
  store double 0.000000e+00, double* %42, align 1
  %164 = add i64 %159, -48
  %165 = add i64 %storemerge, 15
  store i64 %165, i64* %3, align 8
  %166 = inttoptr i64 %164 to i64*
  store i64 %163, i64* %166, align 8
  %167 = load i64, i64* %3, align 8
  %168 = add i64 %167, 337
  %169 = add i64 %167, 5
  %170 = load i64, i64* %6, align 8
  %171 = add i64 %170, -8
  %172 = inttoptr i64 %171 to i64*
  store i64 %169, i64* %172, align 8
  store i64 %171, i64* %6, align 8
  store i64 %168, i64* %3, align 8
  %call2_48071f = tail call %struct.Memory* @sub_480870.QP2Qstep(%struct.State* nonnull %0, i64 %168, %struct.Memory* %MEMORY.0)
  %173 = load i64, i64* %RBP.i, align 8
  %174 = add i64 %173, -48
  %175 = load i64, i64* %3, align 8
  %176 = add i64 %175, 5
  store i64 %176, i64* %3, align 8
  %177 = inttoptr i64 %174 to i64*
  %178 = load i64, i64* %177, align 8
  store i64 %178, i64* %60, align 1
  store double 0.000000e+00, double* %62, align 1
  %179 = add i64 %175, 9
  store i64 %179, i64* %3, align 8
  %.cast8 = bitcast i64 %178 to double
  %180 = load double, double* %21, align 1
  %181 = fcmp uno double %.cast8, %180
  br i1 %181, label %182, label %192

; <label>:182:                                    ; preds = %block_.L_480710
  %183 = fadd double %.cast8, %180
  %184 = bitcast double %183 to i64
  %185 = and i64 %184, 9221120237041090560
  %186 = icmp eq i64 %185, 9218868437227405312
  %187 = and i64 %184, 2251799813685247
  %188 = icmp ne i64 %187, 0
  %189 = and i1 %186, %188
  br i1 %189, label %190, label %198

; <label>:190:                                    ; preds = %182
  %191 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %179, %struct.Memory* %MEMORY.0)
  %.pre17 = load i64, i64* %3, align 8
  br label %routine_ucomisd__xmm0___xmm1.exit

; <label>:192:                                    ; preds = %block_.L_480710
  %193 = fcmp ogt double %.cast8, %180
  br i1 %193, label %198, label %194

; <label>:194:                                    ; preds = %192
  %195 = fcmp olt double %.cast8, %180
  br i1 %195, label %198, label %196

; <label>:196:                                    ; preds = %194
  %197 = fcmp oeq double %.cast8, %180
  br i1 %197, label %198, label %202

; <label>:198:                                    ; preds = %196, %194, %192, %182
  %199 = phi i8 [ 0, %192 ], [ 0, %194 ], [ 1, %196 ], [ 1, %182 ]
  %200 = phi i8 [ 0, %192 ], [ 0, %194 ], [ 0, %196 ], [ 1, %182 ]
  %201 = phi i8 [ 0, %192 ], [ 1, %194 ], [ 0, %196 ], [ 1, %182 ]
  store i8 %199, i8* %15, align 1
  store i8 %200, i8* %13, align 1
  store i8 %201, i8* %12, align 1
  br label %202

; <label>:202:                                    ; preds = %198, %196
  store i8 0, i8* %17, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %14, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit

routine_ucomisd__xmm0___xmm1.exit:                ; preds = %202, %190
  %203 = phi i64 [ %.pre17, %190 ], [ %179, %202 ]
  %204 = phi %struct.Memory* [ %191, %190 ], [ %MEMORY.0, %202 ]
  %205 = load i8, i8* %12, align 1
  %206 = load i8, i8* %15, align 1
  %207 = or i8 %206, %205
  %208 = icmp ne i8 %207, 0
  %.v38 = select i1 %208, i64 42, i64 6
  %209 = add i64 %203, %.v38
  store i64 %209, i64* %3, align 8
  br i1 %208, label %block_.L_480757, label %block_480733

block_480733:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit
  %210 = add i64 %209, ptrtoint (%G_0x3110d__rip__type* @G_0x3110d__rip_ to i64)
  %211 = add i64 %209, 8
  store i64 %211, i64* %3, align 8
  %212 = inttoptr i64 %210 to i64*
  %213 = load i64, i64* %212, align 8
  store i64 %213, i64* %22, align 1
  store double 0.000000e+00, double* %42, align 1
  %214 = load i64, i64* %RBP.i, align 8
  %215 = add i64 %214, -16
  %216 = add i64 %209, 13
  store i64 %216, i64* %3, align 8
  %217 = inttoptr i64 %215 to double*
  %218 = load double, double* %217, align 8
  %219 = bitcast i64 %213 to double
  %220 = fdiv double %218, %219
  store double %220, double* %59, align 1
  store i64 0, i64* %61, align 1
  %221 = add i64 %209, 22
  store i64 %221, i64* %3, align 8
  %222 = inttoptr i64 %215 to double*
  store double %220, double* %222, align 8
  %223 = load i64, i64* %RBP.i, align 8
  %224 = add i64 %223, -20
  %225 = load i64, i64* %3, align 8
  %226 = add i64 %225, 3
  store i64 %226, i64* %3, align 8
  %227 = inttoptr i64 %224 to i32*
  %228 = load i32, i32* %227, align 4
  %229 = add i32 %228, 1
  %230 = zext i32 %229 to i64
  store i64 %230, i64* %RAX.i116, align 8
  %231 = icmp eq i32 %228, -1
  %232 = icmp eq i32 %229, 0
  %233 = or i1 %231, %232
  %234 = zext i1 %233 to i8
  store i8 %234, i8* %12, align 1
  %235 = and i32 %229, 255
  %236 = tail call i32 @llvm.ctpop.i32(i32 %235)
  %237 = trunc i32 %236 to i8
  %238 = and i8 %237, 1
  %239 = xor i8 %238, 1
  store i8 %239, i8* %13, align 1
  %240 = xor i32 %229, %228
  %241 = lshr i32 %240, 4
  %242 = trunc i32 %241 to i8
  %243 = and i8 %242, 1
  store i8 %243, i8* %14, align 1
  %244 = zext i1 %232 to i8
  store i8 %244, i8* %15, align 1
  %245 = lshr i32 %229, 31
  %246 = trunc i32 %245 to i8
  store i8 %246, i8* %16, align 1
  %247 = lshr i32 %228, 31
  %248 = xor i32 %245, %247
  %249 = add nuw nsw i32 %248, %245
  %250 = icmp eq i32 %249, 2
  %251 = zext i1 %250 to i8
  store i8 %251, i8* %17, align 1
  %252 = add i64 %225, 9
  store i64 %252, i64* %3, align 8
  store i32 %229, i32* %227, align 4
  %253 = load i64, i64* %3, align 8
  %254 = add i64 %253, -66
  %255 = add i64 %253, 5
  store i64 %255, i64* %3, align 8
  br label %block_.L_480710

block_.L_480757:                                  ; preds = %routine_ucomisd__xmm0___xmm1.exit
  %256 = add i64 %209, ptrtoint (%G_0x311e9__rip__type* @G_0x311e9__rip_ to i64)
  %257 = add i64 %209, 8
  store i64 %257, i64* %3, align 8
  %258 = inttoptr i64 %256 to i64*
  %259 = load i64, i64* %258, align 8
  store i64 %259, i64* %22, align 1
  store double 0.000000e+00, double* %42, align 1
  %260 = load i64, i64* %RBP.i, align 8
  %261 = add i64 %260, -16
  %262 = add i64 %209, 13
  store i64 %262, i64* %3, align 8
  %263 = bitcast i64 %259 to double
  %264 = inttoptr i64 %261 to double*
  %265 = load double, double* %264, align 8
  %266 = fcmp uno double %263, %265
  br i1 %266, label %267, label %277

; <label>:267:                                    ; preds = %block_.L_480757
  %268 = fadd double %263, %265
  %269 = bitcast double %268 to i64
  %270 = and i64 %269, 9221120237041090560
  %271 = icmp eq i64 %270, 9218868437227405312
  %272 = and i64 %269, 2251799813685247
  %273 = icmp ne i64 %272, 0
  %274 = and i1 %271, %273
  br i1 %274, label %275, label %283

; <label>:275:                                    ; preds = %267
  %276 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %262, %struct.Memory* %204)
  %.pre18 = load i64, i64* %3, align 8
  %.pre19 = load i8, i8* %12, align 1
  br label %routine_ucomisd_MINUS0x10__rbp____xmm0.exit104

; <label>:277:                                    ; preds = %block_.L_480757
  %278 = fcmp ogt double %263, %265
  br i1 %278, label %283, label %279

; <label>:279:                                    ; preds = %277
  %280 = fcmp olt double %263, %265
  br i1 %280, label %283, label %281

; <label>:281:                                    ; preds = %279
  %282 = fcmp oeq double %263, %265
  br i1 %282, label %283, label %287

; <label>:283:                                    ; preds = %281, %279, %277, %267
  %284 = phi i8 [ 0, %277 ], [ 0, %279 ], [ 1, %281 ], [ 1, %267 ]
  %285 = phi i8 [ 0, %277 ], [ 0, %279 ], [ 0, %281 ], [ 1, %267 ]
  %286 = phi i8 [ 0, %277 ], [ 1, %279 ], [ 0, %281 ], [ 1, %267 ]
  store i8 %284, i8* %15, align 1
  store i8 %285, i8* %13, align 1
  store i8 %286, i8* %12, align 1
  br label %287

; <label>:287:                                    ; preds = %283, %281
  %288 = phi i8 [ %286, %283 ], [ %205, %281 ]
  store i8 0, i8* %17, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %14, align 1
  br label %routine_ucomisd_MINUS0x10__rbp____xmm0.exit104

routine_ucomisd_MINUS0x10__rbp____xmm0.exit104:   ; preds = %287, %275
  %289 = phi i8 [ %.pre19, %275 ], [ %288, %287 ]
  %290 = phi i64 [ %.pre18, %275 ], [ %262, %287 ]
  %291 = phi %struct.Memory* [ %276, %275 ], [ %204, %287 ]
  %292 = icmp ne i8 %289, 0
  %.v = select i1 %292, i64 31, i64 6
  %293 = add i64 %290, %.v
  store i64 %293, i64* %3, align 8
  %cmpBr_480764 = icmp eq i8 %289, 1
  br i1 %cmpBr_480764, label %block_.L_480783, label %block_48076a

block_48076a:                                     ; preds = %routine_ucomisd_MINUS0x10__rbp____xmm0.exit104
  %294 = add i64 %293, ptrtoint (%G_0x3121e__rip__type* @G_0x3121e__rip_ to i64)
  %295 = add i64 %293, 8
  store i64 %295, i64* %3, align 8
  %296 = inttoptr i64 %294 to i64*
  %297 = load i64, i64* %296, align 8
  store i64 %297, i64* %22, align 1
  store double 0.000000e+00, double* %42, align 1
  %298 = load i64, i64* %RBP.i, align 8
  %299 = add i64 %298, -16
  %300 = add i64 %293, 13
  store i64 %300, i64* %3, align 8
  %301 = inttoptr i64 %299 to i64*
  store i64 %297, i64* %301, align 8
  %302 = load i64, i64* %RBP.i, align 8
  %303 = add i64 %302, -24
  %304 = load i64, i64* %3, align 8
  %305 = add i64 %304, 7
  store i64 %305, i64* %3, align 8
  %306 = inttoptr i64 %303 to i32*
  store i32 0, i32* %306, align 4
  %307 = load i64, i64* %3, align 8
  %308 = add i64 %307, 221
  br label %block_.L_48085b

block_.L_480783:                                  ; preds = %routine_ucomisd_MINUS0x10__rbp____xmm0.exit104
  %309 = add i64 %293, ptrtoint (%G_0x311c5__rip__type* @G_0x311c5__rip_ to i64)
  %310 = add i64 %293, 8
  store i64 %310, i64* %3, align 8
  %311 = inttoptr i64 %309 to i64*
  %312 = load i64, i64* %311, align 8
  store i64 %312, i64* %22, align 1
  store double 0.000000e+00, double* %42, align 1
  %313 = load i64, i64* %RBP.i, align 8
  %314 = add i64 %313, -16
  %315 = add i64 %293, 13
  store i64 %315, i64* %3, align 8
  %316 = bitcast i64 %312 to double
  %317 = inttoptr i64 %314 to double*
  %318 = load double, double* %317, align 8
  %319 = fcmp uno double %316, %318
  br i1 %319, label %320, label %330

; <label>:320:                                    ; preds = %block_.L_480783
  %321 = fadd double %316, %318
  %322 = bitcast double %321 to i64
  %323 = and i64 %322, 9221120237041090560
  %324 = icmp eq i64 %323, 9218868437227405312
  %325 = and i64 %322, 2251799813685247
  %326 = icmp ne i64 %325, 0
  %327 = and i1 %324, %326
  br i1 %327, label %328, label %336

; <label>:328:                                    ; preds = %320
  %329 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %315, %struct.Memory* %291)
  %.pre20 = load i64, i64* %3, align 8
  %.pre21 = load i8, i8* %12, align 1
  br label %routine_ucomisd_MINUS0x10__rbp____xmm0.exit86

; <label>:330:                                    ; preds = %block_.L_480783
  %331 = fcmp ogt double %316, %318
  br i1 %331, label %336, label %332

; <label>:332:                                    ; preds = %330
  %333 = fcmp olt double %316, %318
  br i1 %333, label %336, label %334

; <label>:334:                                    ; preds = %332
  %335 = fcmp oeq double %316, %318
  br i1 %335, label %336, label %340

; <label>:336:                                    ; preds = %334, %332, %330, %320
  %337 = phi i8 [ 0, %330 ], [ 0, %332 ], [ 1, %334 ], [ 1, %320 ]
  %338 = phi i8 [ 0, %330 ], [ 0, %332 ], [ 0, %334 ], [ 1, %320 ]
  %339 = phi i8 [ 0, %330 ], [ 1, %332 ], [ 0, %334 ], [ 1, %320 ]
  store i8 %337, i8* %15, align 1
  store i8 %338, i8* %13, align 1
  store i8 %339, i8* %12, align 1
  br label %340

; <label>:340:                                    ; preds = %336, %334
  %341 = phi i8 [ %339, %336 ], [ 1, %334 ]
  store i8 0, i8* %17, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %14, align 1
  br label %routine_ucomisd_MINUS0x10__rbp____xmm0.exit86

routine_ucomisd_MINUS0x10__rbp____xmm0.exit86:    ; preds = %340, %328
  %342 = phi i8 [ %.pre21, %328 ], [ %341, %340 ]
  %343 = phi i64 [ %.pre20, %328 ], [ %315, %340 ]
  %344 = phi %struct.Memory* [ %329, %328 ], [ %291, %340 ]
  %345 = icmp ne i8 %342, 0
  %.v30 = select i1 %345, i64 31, i64 6
  %346 = add i64 %343, %.v30
  store i64 %346, i64* %3, align 8
  %cmpBr_480790 = icmp eq i8 %342, 1
  br i1 %cmpBr_480790, label %block_.L_4807af, label %block_480796

block_480796:                                     ; preds = %routine_ucomisd_MINUS0x10__rbp____xmm0.exit86
  %347 = add i64 %346, ptrtoint (%G_0x311ea__rip__type* @G_0x311ea__rip_ to i64)
  %348 = add i64 %346, 8
  store i64 %348, i64* %3, align 8
  %349 = inttoptr i64 %347 to i64*
  %350 = load i64, i64* %349, align 8
  store i64 %350, i64* %22, align 1
  store double 0.000000e+00, double* %42, align 1
  %351 = load i64, i64* %RBP.i, align 8
  %352 = add i64 %351, -16
  %353 = add i64 %346, 13
  store i64 %353, i64* %3, align 8
  %354 = inttoptr i64 %352 to i64*
  store i64 %350, i64* %354, align 8
  %355 = load i64, i64* %RBP.i, align 8
  %356 = add i64 %355, -24
  %357 = load i64, i64* %3, align 8
  %358 = add i64 %357, 7
  store i64 %358, i64* %3, align 8
  %359 = inttoptr i64 %356 to i32*
  store i32 1, i32* %359, align 4
  %360 = load i64, i64* %3, align 8
  %361 = add i64 %360, 172
  br label %block_.L_480856

block_.L_4807af:                                  ; preds = %routine_ucomisd_MINUS0x10__rbp____xmm0.exit86
  %362 = add i64 %346, ptrtoint (%G_0x311a1__rip__type* @G_0x311a1__rip_ to i64)
  %363 = add i64 %346, 8
  store i64 %363, i64* %3, align 8
  %364 = inttoptr i64 %362 to i64*
  %365 = load i64, i64* %364, align 8
  store i64 %365, i64* %22, align 1
  store double 0.000000e+00, double* %42, align 1
  %366 = load i64, i64* %RBP.i, align 8
  %367 = add i64 %366, -16
  %368 = add i64 %346, 13
  store i64 %368, i64* %3, align 8
  %369 = bitcast i64 %365 to double
  %370 = inttoptr i64 %367 to double*
  %371 = load double, double* %370, align 8
  %372 = fcmp uno double %369, %371
  br i1 %372, label %373, label %383

; <label>:373:                                    ; preds = %block_.L_4807af
  %374 = fadd double %369, %371
  %375 = bitcast double %374 to i64
  %376 = and i64 %375, 9221120237041090560
  %377 = icmp eq i64 %376, 9218868437227405312
  %378 = and i64 %375, 2251799813685247
  %379 = icmp ne i64 %378, 0
  %380 = and i1 %377, %379
  br i1 %380, label %381, label %389

; <label>:381:                                    ; preds = %373
  %382 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %368, %struct.Memory* %344)
  %.pre22 = load i64, i64* %3, align 8
  %.pre23 = load i8, i8* %12, align 1
  br label %routine_ucomisd_MINUS0x10__rbp____xmm0.exit70

; <label>:383:                                    ; preds = %block_.L_4807af
  %384 = fcmp ogt double %369, %371
  br i1 %384, label %389, label %385

; <label>:385:                                    ; preds = %383
  %386 = fcmp olt double %369, %371
  br i1 %386, label %389, label %387

; <label>:387:                                    ; preds = %385
  %388 = fcmp oeq double %369, %371
  br i1 %388, label %389, label %393

; <label>:389:                                    ; preds = %387, %385, %383, %373
  %390 = phi i8 [ 0, %383 ], [ 0, %385 ], [ 1, %387 ], [ 1, %373 ]
  %391 = phi i8 [ 0, %383 ], [ 0, %385 ], [ 0, %387 ], [ 1, %373 ]
  %392 = phi i8 [ 0, %383 ], [ 1, %385 ], [ 0, %387 ], [ 1, %373 ]
  store i8 %390, i8* %15, align 1
  store i8 %391, i8* %13, align 1
  store i8 %392, i8* %12, align 1
  br label %393

; <label>:393:                                    ; preds = %389, %387
  %394 = phi i8 [ %392, %389 ], [ 1, %387 ]
  store i8 0, i8* %17, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %14, align 1
  br label %routine_ucomisd_MINUS0x10__rbp____xmm0.exit70

routine_ucomisd_MINUS0x10__rbp____xmm0.exit70:    ; preds = %393, %381
  %395 = phi i8 [ %.pre23, %381 ], [ %394, %393 ]
  %396 = phi i64 [ %.pre22, %381 ], [ %368, %393 ]
  %397 = phi %struct.Memory* [ %382, %381 ], [ %344, %393 ]
  %398 = icmp ne i8 %395, 0
  %.v31 = select i1 %398, i64 31, i64 6
  %399 = add i64 %396, %.v31
  store i64 %399, i64* %3, align 8
  %cmpBr_4807bc = icmp eq i8 %395, 1
  br i1 %cmpBr_4807bc, label %block_.L_4807db, label %block_4807c2

block_4807c2:                                     ; preds = %routine_ucomisd_MINUS0x10__rbp____xmm0.exit70
  %400 = add i64 %399, ptrtoint (%G_0x311b6__rip__type* @G_0x311b6__rip_ to i64)
  %401 = add i64 %399, 8
  store i64 %401, i64* %3, align 8
  %402 = inttoptr i64 %400 to i64*
  %403 = load i64, i64* %402, align 8
  store i64 %403, i64* %22, align 1
  store double 0.000000e+00, double* %42, align 1
  %404 = load i64, i64* %RBP.i, align 8
  %405 = add i64 %404, -16
  %406 = add i64 %399, 13
  store i64 %406, i64* %3, align 8
  %407 = inttoptr i64 %405 to i64*
  store i64 %403, i64* %407, align 8
  %408 = load i64, i64* %RBP.i, align 8
  %409 = add i64 %408, -24
  %410 = load i64, i64* %3, align 8
  %411 = add i64 %410, 7
  store i64 %411, i64* %3, align 8
  %412 = inttoptr i64 %409 to i32*
  store i32 2, i32* %412, align 4
  %413 = load i64, i64* %3, align 8
  %414 = add i64 %413, 123
  br label %block_.L_480851

block_.L_4807db:                                  ; preds = %routine_ucomisd_MINUS0x10__rbp____xmm0.exit70
  %415 = add i64 %399, ptrtoint (%G_0x3117d__rip__type* @G_0x3117d__rip_ to i64)
  %416 = add i64 %399, 8
  store i64 %416, i64* %3, align 8
  %417 = inttoptr i64 %415 to i64*
  %418 = load i64, i64* %417, align 8
  store i64 %418, i64* %22, align 1
  store double 0.000000e+00, double* %42, align 1
  %419 = load i64, i64* %RBP.i, align 8
  %420 = add i64 %419, -16
  %421 = add i64 %399, 13
  store i64 %421, i64* %3, align 8
  %422 = bitcast i64 %418 to double
  %423 = inttoptr i64 %420 to double*
  %424 = load double, double* %423, align 8
  %425 = fcmp uno double %422, %424
  br i1 %425, label %426, label %436

; <label>:426:                                    ; preds = %block_.L_4807db
  %427 = fadd double %422, %424
  %428 = bitcast double %427 to i64
  %429 = and i64 %428, 9221120237041090560
  %430 = icmp eq i64 %429, 9218868437227405312
  %431 = and i64 %428, 2251799813685247
  %432 = icmp ne i64 %431, 0
  %433 = and i1 %430, %432
  br i1 %433, label %434, label %442

; <label>:434:                                    ; preds = %426
  %435 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %421, %struct.Memory* %397)
  %.pre24 = load i64, i64* %3, align 8
  %.pre25 = load i8, i8* %12, align 1
  br label %routine_ucomisd_MINUS0x10__rbp____xmm0.exit53

; <label>:436:                                    ; preds = %block_.L_4807db
  %437 = fcmp ogt double %422, %424
  br i1 %437, label %442, label %438

; <label>:438:                                    ; preds = %436
  %439 = fcmp olt double %422, %424
  br i1 %439, label %442, label %440

; <label>:440:                                    ; preds = %438
  %441 = fcmp oeq double %422, %424
  br i1 %441, label %442, label %446

; <label>:442:                                    ; preds = %440, %438, %436, %426
  %443 = phi i8 [ 0, %436 ], [ 0, %438 ], [ 1, %440 ], [ 1, %426 ]
  %444 = phi i8 [ 0, %436 ], [ 0, %438 ], [ 0, %440 ], [ 1, %426 ]
  %445 = phi i8 [ 0, %436 ], [ 1, %438 ], [ 0, %440 ], [ 1, %426 ]
  store i8 %443, i8* %15, align 1
  store i8 %444, i8* %13, align 1
  store i8 %445, i8* %12, align 1
  br label %446

; <label>:446:                                    ; preds = %442, %440
  %447 = phi i8 [ %445, %442 ], [ 1, %440 ]
  store i8 0, i8* %17, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %14, align 1
  br label %routine_ucomisd_MINUS0x10__rbp____xmm0.exit53

routine_ucomisd_MINUS0x10__rbp____xmm0.exit53:    ; preds = %446, %434
  %448 = phi i8 [ %.pre25, %434 ], [ %447, %446 ]
  %449 = phi i64 [ %.pre24, %434 ], [ %421, %446 ]
  %450 = phi %struct.Memory* [ %435, %434 ], [ %397, %446 ]
  %451 = icmp ne i8 %448, 0
  %.v32 = select i1 %451, i64 31, i64 6
  %452 = add i64 %449, %.v32
  store i64 %452, i64* %3, align 8
  %cmpBr_4807e8 = icmp eq i8 %448, 1
  br i1 %cmpBr_4807e8, label %block_.L_480807, label %block_4807ee

block_4807ee:                                     ; preds = %routine_ucomisd_MINUS0x10__rbp____xmm0.exit53
  %453 = add i64 %452, ptrtoint (%G_0x31182__rip__type* @G_0x31182__rip_ to i64)
  %454 = add i64 %452, 8
  store i64 %454, i64* %3, align 8
  %455 = inttoptr i64 %453 to i64*
  %456 = load i64, i64* %455, align 8
  store i64 %456, i64* %22, align 1
  store double 0.000000e+00, double* %42, align 1
  %457 = load i64, i64* %RBP.i, align 8
  %458 = add i64 %457, -16
  %459 = add i64 %452, 13
  store i64 %459, i64* %3, align 8
  %460 = inttoptr i64 %458 to i64*
  store i64 %456, i64* %460, align 8
  %461 = load i64, i64* %RBP.i, align 8
  %462 = add i64 %461, -24
  %463 = load i64, i64* %3, align 8
  %464 = add i64 %463, 7
  store i64 %464, i64* %3, align 8
  %465 = inttoptr i64 %462 to i32*
  store i32 3, i32* %465, align 4
  %466 = load i64, i64* %3, align 8
  %467 = add i64 %466, 74
  br label %block_.L_48084c

block_.L_480807:                                  ; preds = %routine_ucomisd_MINUS0x10__rbp____xmm0.exit53
  %468 = add i64 %452, ptrtoint (%G_0x31159__rip__type* @G_0x31159__rip_ to i64)
  %469 = add i64 %452, 8
  store i64 %469, i64* %3, align 8
  %470 = inttoptr i64 %468 to i64*
  %471 = load i64, i64* %470, align 8
  store i64 %471, i64* %22, align 1
  store double 0.000000e+00, double* %42, align 1
  %472 = load i64, i64* %RBP.i, align 8
  %473 = add i64 %472, -16
  %474 = add i64 %452, 13
  store i64 %474, i64* %3, align 8
  %475 = bitcast i64 %471 to double
  %476 = inttoptr i64 %473 to double*
  %477 = load double, double* %476, align 8
  %478 = fcmp uno double %475, %477
  br i1 %478, label %479, label %489

; <label>:479:                                    ; preds = %block_.L_480807
  %480 = fadd double %475, %477
  %481 = bitcast double %480 to i64
  %482 = and i64 %481, 9221120237041090560
  %483 = icmp eq i64 %482, 9218868437227405312
  %484 = and i64 %481, 2251799813685247
  %485 = icmp ne i64 %484, 0
  %486 = and i1 %483, %485
  br i1 %486, label %487, label %495

; <label>:487:                                    ; preds = %479
  %488 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %474, %struct.Memory* %450)
  %.pre26 = load i64, i64* %3, align 8
  %.pre27 = load i8, i8* %12, align 1
  br label %routine_ucomisd_MINUS0x10__rbp____xmm0.exit

; <label>:489:                                    ; preds = %block_.L_480807
  %490 = fcmp ogt double %475, %477
  br i1 %490, label %495, label %491

; <label>:491:                                    ; preds = %489
  %492 = fcmp olt double %475, %477
  br i1 %492, label %495, label %493

; <label>:493:                                    ; preds = %491
  %494 = fcmp oeq double %475, %477
  br i1 %494, label %495, label %499

; <label>:495:                                    ; preds = %493, %491, %489, %479
  %496 = phi i8 [ 0, %489 ], [ 0, %491 ], [ 1, %493 ], [ 1, %479 ]
  %497 = phi i8 [ 0, %489 ], [ 0, %491 ], [ 0, %493 ], [ 1, %479 ]
  %498 = phi i8 [ 0, %489 ], [ 1, %491 ], [ 0, %493 ], [ 1, %479 ]
  store i8 %496, i8* %15, align 1
  store i8 %497, i8* %13, align 1
  store i8 %498, i8* %12, align 1
  br label %499

; <label>:499:                                    ; preds = %495, %493
  %500 = phi i8 [ %498, %495 ], [ 1, %493 ]
  store i8 0, i8* %17, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %14, align 1
  br label %routine_ucomisd_MINUS0x10__rbp____xmm0.exit

routine_ucomisd_MINUS0x10__rbp____xmm0.exit:      ; preds = %499, %487
  %501 = phi i8 [ %.pre27, %487 ], [ %500, %499 ]
  %502 = phi i64 [ %.pre26, %487 ], [ %474, %499 ]
  %503 = phi %struct.Memory* [ %488, %487 ], [ %450, %499 ]
  %504 = icmp ne i8 %501, 0
  %.v33 = select i1 %504, i64 31, i64 6
  %505 = add i64 %502, %.v33
  store i64 %505, i64* %3, align 8
  %cmpBr_480814 = icmp eq i8 %501, 1
  br i1 %cmpBr_480814, label %block_.L_480833, label %block_48081a

block_48081a:                                     ; preds = %routine_ucomisd_MINUS0x10__rbp____xmm0.exit
  %506 = add i64 %505, ptrtoint (%G_0x3103e__rip__type* @G_0x3103e__rip_ to i64)
  %507 = add i64 %505, 8
  store i64 %507, i64* %3, align 8
  %508 = inttoptr i64 %506 to i64*
  %509 = load i64, i64* %508, align 8
  store i64 %509, i64* %22, align 1
  store double 0.000000e+00, double* %42, align 1
  %510 = load i64, i64* %RBP.i, align 8
  %511 = add i64 %510, -16
  %512 = add i64 %505, 13
  store i64 %512, i64* %3, align 8
  %513 = inttoptr i64 %511 to i64*
  store i64 %509, i64* %513, align 8
  %514 = load i64, i64* %RBP.i, align 8
  %515 = add i64 %514, -24
  %516 = load i64, i64* %3, align 8
  %517 = add i64 %516, 7
  store i64 %517, i64* %3, align 8
  %518 = inttoptr i64 %515 to i32*
  store i32 4, i32* %518, align 4
  %519 = load i64, i64* %3, align 8
  %520 = add i64 %519, 25
  store i64 %520, i64* %3, align 8
  br label %block_.L_480847

block_.L_480833:                                  ; preds = %routine_ucomisd_MINUS0x10__rbp____xmm0.exit
  %521 = add i64 %505, ptrtoint (%G_0x31135__rip__type* @G_0x31135__rip_ to i64)
  %522 = add i64 %505, 8
  store i64 %522, i64* %3, align 8
  %523 = inttoptr i64 %521 to i64*
  %524 = load i64, i64* %523, align 8
  store i64 %524, i64* %22, align 1
  store double 0.000000e+00, double* %42, align 1
  %525 = load i64, i64* %RBP.i, align 8
  %526 = add i64 %525, -16
  %527 = add i64 %505, 13
  store i64 %527, i64* %3, align 8
  %528 = inttoptr i64 %526 to i64*
  store i64 %524, i64* %528, align 8
  %529 = load i64, i64* %RBP.i, align 8
  %530 = add i64 %529, -24
  %531 = load i64, i64* %3, align 8
  %532 = add i64 %531, 7
  store i64 %532, i64* %3, align 8
  %533 = inttoptr i64 %530 to i32*
  store i32 5, i32* %533, align 4
  %.pre28 = load i64, i64* %3, align 8
  br label %block_.L_480847

block_.L_480847:                                  ; preds = %block_.L_480833, %block_48081a
  %534 = phi i64 [ %.pre28, %block_.L_480833 ], [ %520, %block_48081a ]
  %535 = add i64 %534, 5
  store i64 %535, i64* %3, align 8
  br label %block_.L_48084c

block_.L_48084c:                                  ; preds = %block_.L_480847, %block_4807ee
  %storemerge13 = phi i64 [ %467, %block_4807ee ], [ %535, %block_.L_480847 ]
  %MEMORY.2 = phi %struct.Memory* [ %450, %block_4807ee ], [ %503, %block_.L_480847 ]
  %536 = add i64 %storemerge13, 5
  store i64 %536, i64* %3, align 8
  br label %block_.L_480851

block_.L_480851:                                  ; preds = %block_.L_48084c, %block_4807c2
  %storemerge12 = phi i64 [ %414, %block_4807c2 ], [ %536, %block_.L_48084c ]
  %MEMORY.3 = phi %struct.Memory* [ %397, %block_4807c2 ], [ %MEMORY.2, %block_.L_48084c ]
  %537 = add i64 %storemerge12, 5
  store i64 %537, i64* %3, align 8
  br label %block_.L_480856

block_.L_480856:                                  ; preds = %block_.L_480851, %block_480796
  %storemerge11 = phi i64 [ %361, %block_480796 ], [ %537, %block_.L_480851 ]
  %MEMORY.4 = phi %struct.Memory* [ %344, %block_480796 ], [ %MEMORY.3, %block_.L_480851 ]
  %538 = add i64 %storemerge11, 5
  store i64 %538, i64* %3, align 8
  br label %block_.L_48085b

block_.L_48085b:                                  ; preds = %block_.L_480856, %block_48076a
  %storemerge10 = phi i64 [ %308, %block_48076a ], [ %538, %block_.L_480856 ]
  %MEMORY.5 = phi %struct.Memory* [ %291, %block_48076a ], [ %MEMORY.4, %block_.L_480856 ]
  %539 = load i64, i64* %RBP.i, align 8
  %540 = add i64 %539, -20
  %541 = add i64 %storemerge10, 4
  store i64 %541, i64* %3, align 8
  %542 = inttoptr i64 %540 to i32*
  %543 = load i32, i32* %542, align 4
  %544 = sext i32 %543 to i64
  %545 = mul nsw i64 %544, 6
  %546 = trunc i64 %545 to i32
  %547 = and i64 %545, 4294967294
  store i64 %547, i64* %RAX.i116, align 8
  %548 = mul i64 %544, 25769803776
  %549 = ashr exact i64 %548, 32
  %550 = icmp ne i64 %549, %545
  %551 = zext i1 %550 to i8
  store i8 %551, i8* %12, align 1
  %552 = and i32 %546, 254
  %553 = tail call i32 @llvm.ctpop.i32(i32 %552)
  %554 = trunc i32 %553 to i8
  %555 = and i8 %554, 1
  %556 = xor i8 %555, 1
  store i8 %556, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  %557 = lshr i32 %546, 31
  %558 = trunc i32 %557 to i8
  store i8 %558, i8* %16, align 1
  store i8 %551, i8* %17, align 1
  %559 = add i64 %539, -24
  %560 = add i64 %storemerge10, 7
  store i64 %560, i64* %3, align 8
  %561 = trunc i64 %545 to i32
  %562 = inttoptr i64 %559 to i32*
  %563 = load i32, i32* %562, align 4
  %564 = add i32 %563, %561
  %565 = zext i32 %564 to i64
  store i64 %565, i64* %RAX.i116, align 8
  %566 = icmp ult i32 %564, %561
  %567 = icmp ult i32 %564, %563
  %568 = or i1 %566, %567
  %569 = zext i1 %568 to i8
  store i8 %569, i8* %12, align 1
  %570 = and i32 %564, 255
  %571 = tail call i32 @llvm.ctpop.i32(i32 %570)
  %572 = trunc i32 %571 to i8
  %573 = and i8 %572, 1
  %574 = xor i8 %573, 1
  store i8 %574, i8* %13, align 1
  %575 = xor i32 %563, %561
  %576 = xor i32 %575, %564
  %577 = lshr i32 %576, 4
  %578 = trunc i32 %577 to i8
  %579 = and i8 %578, 1
  store i8 %579, i8* %14, align 1
  %580 = icmp eq i32 %564, 0
  %581 = zext i1 %580 to i8
  store i8 %581, i8* %15, align 1
  %582 = lshr i32 %564, 31
  %583 = trunc i32 %582 to i8
  store i8 %583, i8* %16, align 1
  %584 = lshr i32 %561, 31
  %585 = lshr i32 %563, 31
  %586 = xor i32 %582, %584
  %587 = xor i32 %582, %585
  %588 = add nuw nsw i32 %586, %587
  %589 = icmp eq i32 %588, 2
  %590 = zext i1 %589 to i8
  store i8 %590, i8* %17, align 1
  %591 = add i64 %539, -4
  %592 = add i64 %storemerge10, 10
  store i64 %592, i64* %3, align 8
  %593 = inttoptr i64 %591 to i32*
  store i32 %564, i32* %593, align 4
  %.pre29 = load i64, i64* %3, align 8
  br label %block_.L_480865

block_.L_480865:                                  ; preds = %block_.L_48085b, %block_4806fa, %block_4806cb
  %594 = phi i64 [ %.pre29, %block_.L_48085b ], [ %157, %block_4806fa ], [ %100, %block_4806cb ]
  %MEMORY.6 = phi %struct.Memory* [ %MEMORY.5, %block_.L_48085b ], [ %146, %block_4806fa ], [ %89, %block_4806cb ]
  %RAX.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %595 = load i64, i64* %RBP.i, align 8
  %596 = add i64 %595, -4
  %597 = add i64 %594, 3
  store i64 %597, i64* %3, align 8
  %598 = inttoptr i64 %596 to i32*
  %599 = load i32, i32* %598, align 4
  %600 = zext i32 %599 to i64
  store i64 %600, i64* %RAX.i, align 8
  %601 = load i64, i64* %6, align 8
  %602 = add i64 %601, 48
  store i64 %602, i64* %6, align 8
  %603 = icmp ugt i64 %601, -49
  %604 = zext i1 %603 to i8
  store i8 %604, i8* %12, align 1
  %605 = trunc i64 %602 to i32
  %606 = and i32 %605, 255
  %607 = tail call i32 @llvm.ctpop.i32(i32 %606)
  %608 = trunc i32 %607 to i8
  %609 = and i8 %608, 1
  %610 = xor i8 %609, 1
  store i8 %610, i8* %13, align 1
  %611 = xor i64 %601, 16
  %612 = xor i64 %611, %602
  %613 = lshr i64 %612, 4
  %614 = trunc i64 %613 to i8
  %615 = and i8 %614, 1
  store i8 %615, i8* %14, align 1
  %616 = icmp eq i64 %602, 0
  %617 = zext i1 %616 to i8
  store i8 %617, i8* %15, align 1
  %618 = lshr i64 %602, 63
  %619 = trunc i64 %618 to i8
  store i8 %619, i8* %16, align 1
  %620 = lshr i64 %601, 63
  %621 = xor i64 %618, %620
  %622 = add nuw nsw i64 %621, %618
  %623 = icmp eq i64 %622, 2
  %624 = zext i1 %623 to i8
  store i8 %624, i8* %17, align 1
  %625 = add i64 %594, 8
  store i64 %625, i64* %3, align 8
  %626 = add i64 %601, 56
  %627 = inttoptr i64 %602 to i64*
  %628 = load i64, i64* %627, align 8
  store i64 %628, i64* %RBP.i, align 8
  store i64 %626, i64* %6, align 8
  %629 = add i64 %594, 9
  store i64 %629, i64* %3, align 8
  %630 = inttoptr i64 %626 to i64*
  %631 = load i64, i64* %630, align 8
  store i64 %631, i64* %3, align 8
  %632 = add i64 %601, 64
  store i64 %632, i64* %6, align 8
  ret %struct.Memory* %MEMORY.6
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

; Function Attrs: nounwind
define %struct.Memory* @routine_xorl__edi___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2
  store i64 %4, i64* %PC, align 8
  store i64 0, i64* %RDI, align 8
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
define %struct.Memory* @routine_movsd__xmm0__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x10__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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
define %struct.Memory* @routine_callq_.QP2Qstep(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jbe_.L_4806d7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_480865(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x33___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 51, i64* %RDI, align 8
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
define %struct.Memory* @routine_jbe_.L_480706(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x33__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 51, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_48070b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_480710(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x5___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 5, i64* %RDI, align 8
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
define %struct.Memory* @routine_jbe_.L_480757(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_0x3110d__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x3110d__rip__type* @G_0x3110d__rip_ to i64)
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
define %struct.Memory* @routine_movsd_MINUS0x10__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
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
define %struct.Memory* @routine_movsd__xmm1__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
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
define %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
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
define %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x311e9__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x311e9__rip__type* @G_0x311e9__rip_ to i64)
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
define %struct.Memory* @routine_jb_.L_480783(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_0x3121e__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x3121e__rip__type* @G_0x3121e__rip_ to i64)
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
define %struct.Memory* @routine_jmpq_.L_48085b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x311c5__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x311c5__rip__type* @G_0x311c5__rip_ to i64)
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
define %struct.Memory* @routine_jb_.L_4807af(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_0x311ea__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x311ea__rip__type* @G_0x311ea__rip_ to i64)
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
define %struct.Memory* @routine_movl__0x1__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_480856(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x311a1__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x311a1__rip__type* @G_0x311a1__rip_ to i64)
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
define %struct.Memory* @routine_jb_.L_4807db(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_0x311b6__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x311b6__rip__type* @G_0x311b6__rip_ to i64)
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
define %struct.Memory* @routine_movl__0x2__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 2, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_480851(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x3117d__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x3117d__rip__type* @G_0x3117d__rip_ to i64)
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
define %struct.Memory* @routine_jb_.L_480807(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_0x31182__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x31182__rip__type* @G_0x31182__rip_ to i64)
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
define %struct.Memory* @routine_movl__0x3__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 3, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_48084c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x31159__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x31159__rip__type* @G_0x31159__rip_ to i64)
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
define %struct.Memory* @routine_jb_.L_480833(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_0x3103e__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x3103e__rip__type* @G_0x3103e__rip_ to i64)
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
define %struct.Memory* @routine_movl__0x4__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 4, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_480847(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x31135__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x31135__rip__type* @G_0x31135__rip_ to i64)
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
define %struct.Memory* @routine_movl__0x5__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 5, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imull__0x6__MINUS0x14__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %10 = mul nsw i64 %9, 6
  %11 = trunc i64 %10 to i32
  %12 = and i64 %10, 4294967294
  store i64 %12, i64* %RAX, align 8
  %13 = mul i64 %9, 25769803776
  %14 = ashr exact i64 %13, 32
  %15 = icmp ne i64 %14, %10
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %16, i8* %17, align 1
  %18 = and i32 %11, 254
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x18__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24
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
