; ModuleID = 'mcsema/test1.target.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%struct.State.0 = type { %struct.ArchState.1, [32 x %union.VectorReg.2], %struct.ArithFlags.3, %union.anon.4, %struct.Segments.5, %struct.AddressSpace.6, %struct.GPR.7, %struct.X87Stack.8, %struct.MMX.9, %struct.FPUStatusFlags.10, %union.anon.4, %union.FPU.11, %struct.SegmentCaches.12 }
%struct.ArchState.1 = type { i32, i32, %union.anon.4 }
%union.VectorReg.2 = type { %union.vec512_t.13 }
%union.vec512_t.13 = type { %struct.uint64v8_t.14 }
%struct.uint64v8_t.14 = type { [8 x i64] }
%struct.ArithFlags.3 = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.Segments.5 = type { i16, %union.SegmentSelector.15, i16, %union.SegmentSelector.15, i16, %union.SegmentSelector.15, i16, %union.SegmentSelector.15, i16, %union.SegmentSelector.15, i16, %union.SegmentSelector.15 }
%union.SegmentSelector.15 = type { i16 }
%struct.AddressSpace.6 = type { i64, %struct.Reg.16, i64, %struct.Reg.16, i64, %struct.Reg.16, i64, %struct.Reg.16, i64, %struct.Reg.16, i64, %struct.Reg.16 }
%struct.Reg.16 = type { %union.anon.4 }
%struct.GPR.7 = type { i64, %struct.Reg.16, i64, %struct.Reg.16, i64, %struct.Reg.16, i64, %struct.Reg.16, i64, %struct.Reg.16, i64, %struct.Reg.16, i64, %struct.Reg.16, i64, %struct.Reg.16, i64, %struct.Reg.16, i64, %struct.Reg.16, i64, %struct.Reg.16, i64, %struct.Reg.16, i64, %struct.Reg.16, i64, %struct.Reg.16, i64, %struct.Reg.16, i64, %struct.Reg.16, i64, %struct.Reg.16 }
%struct.X87Stack.8 = type { [8 x %struct.anon.3.17] }
%struct.anon.3.17 = type { i64, double }
%struct.MMX.9 = type { [8 x %struct.anon.4.18] }
%struct.anon.4.18 = type { i64, %union.vec64_t.19 }
%union.vec64_t.19 = type { %struct.uint64v1_t.20 }
%struct.uint64v1_t.20 = type { [1 x i64] }
%struct.FPUStatusFlags.10 = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8] }
%union.anon.4 = type { i64 }
%union.FPU.11 = type { %struct.anon.13.21 }
%struct.anon.13.21 = type { %struct.FpuFXSAVE.22, [96 x i8] }
%struct.FpuFXSAVE.22 = type { %union.SegmentSelector.15, %union.SegmentSelector.15, %union.FPUAbridgedTagWord.23, i8, i16, i32, %union.SegmentSelector.15, i16, i32, %union.SegmentSelector.15, i16, %union.FPUControlStatus.24, %union.FPUControlStatus.24, [8 x %struct.FPUStackElem.25], [16 x %union.vec128_t.26] }
%union.FPUAbridgedTagWord.23 = type { i8 }
%union.FPUControlStatus.24 = type { i32 }
%struct.FPUStackElem.25 = type { %union.anon.11.27, [6 x i8] }
%union.anon.11.27 = type { %struct.float80_t.28 }
%struct.float80_t.28 = type { [10 x i8] }
%union.vec128_t.26 = type { %struct.uint128v1_t.29 }
%struct.uint128v1_t.29 = type { [1 x i128] }
%struct.SegmentCaches.12 = type { %struct.SegmentShadow.30, %struct.SegmentShadow.30, %struct.SegmentShadow.30, %struct.SegmentShadow.30, %struct.SegmentShadow.30, %struct.SegmentShadow.30 }
%struct.SegmentShadow.30 = type { %union.anon.4, i32, i32 }
%struct.Memory.31 = type opaque

declare %struct.Memory.31* @__remill_error(%struct.State.0* dereferenceable(3376), i64, %struct.Memory.31*)

; Function Attrs: alwaysinline
define %struct.Memory.31* @binary_search(%struct.State.0* noalias, i64, %struct.Memory.31* noalias) #0 {
entry:
  %3 = getelementptr inbounds %struct.State.0, %struct.State.0* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP.i = getelementptr inbounds %struct.State.0, %struct.State.0* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP.i, align 8
  %5 = add i64 %1, 1
  store i64 %5, i64* %3, align 8
  %6 = getelementptr inbounds %struct.State.0, %struct.State.0* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %4, i64* %9, align 8
  %10 = load i64, i64* %3, align 8
  %RDI.i107 = getelementptr inbounds %struct.State.0, %struct.State.0* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %11 = add i64 %7, -24
  %12 = load i64, i64* %RDI.i107, align 8
  %13 = add i64 %10, 7
  store i64 %13, i64* %3, align 8
  %14 = inttoptr i64 %11 to i64*
  store i64 %12, i64* %14, align 8
  %15 = getelementptr inbounds %struct.State.0, %struct.State.0* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i104 = bitcast %union.anon.4* %15 to i32*
  %16 = load i64, i64* %RBP.i, align 8
  %17 = add i64 %16, -20
  %18 = load i32, i32* %ESI.i104, align 4
  %19 = load i64, i64* %3, align 8
  %20 = add i64 %19, 3
  store i64 %20, i64* %3, align 8
  %21 = inttoptr i64 %17 to i32*
  store i32 %18, i32* %21, align 4
  %22 = getelementptr inbounds %struct.State.0, %struct.State.0* %0, i64 0, i32 6, i32 7, i32 0
  %EDX.i101 = bitcast %union.anon.4* %22 to i32*
  %23 = load i64, i64* %RBP.i, align 8
  %24 = add i64 %23, -24
  %25 = load i32, i32* %EDX.i101, align 4
  %26 = load i64, i64* %3, align 8
  %27 = add i64 %26, 3
  store i64 %27, i64* %3, align 8
  %28 = inttoptr i64 %24 to i32*
  store i32 %25, i32* %28, align 4
  %29 = load i64, i64* %RBP.i, align 8
  %30 = add i64 %29, -28
  %31 = load i64, i64* %3, align 8
  %32 = add i64 %31, 7
  store i64 %32, i64* %3, align 8
  %33 = inttoptr i64 %30 to i32*
  store i32 0, i32* %33, align 4
  %34 = load i64, i64* %RBP.i, align 8
  %35 = add i64 %34, -20
  %36 = load i64, i64* %3, align 8
  %37 = add i64 %36, 3
  store i64 %37, i64* %3, align 8
  %38 = inttoptr i64 %35 to i32*
  %39 = load i32, i32* %38, align 4
  %40 = add i32 %39, -1
  %41 = getelementptr inbounds %struct.State.0, %struct.State.0* %0, i64 0, i32 2, i32 13
  %42 = add i64 %34, -32
  %43 = add i64 %36, 9
  store i64 %43, i64* %3, align 8
  %44 = inttoptr i64 %42 to i32*
  store i32 %40, i32* %44, align 4
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_4004ae

block_.L_4004ae:                                  ; preds = %block_.L_400523, %entry
  %45 = phi i64 [ %158, %block_.L_400523 ], [ %.pre, %entry ]
  %loadMem_400528 = phi %struct.Memory.31* [ %loadMem_40051a, %block_.L_400523 ], [ %2, %entry ]
  %46 = getelementptr inbounds %struct.State.0, %struct.State.0* %0, i64 0, i32 6, i32 1, i32 0
  %47 = load i64, i64* %RBP.i, align 8
  %48 = add i64 %47, -28
  %49 = add i64 %45, 3
  store i64 %49, i64* %3, align 8
  %50 = inttoptr i64 %48 to i32*
  %51 = load i32, i32* %50, align 4
  %EAX.i85 = bitcast %union.anon.4* %46 to i32*
  %52 = add i64 %47, -32
  %53 = add i64 %45, 6
  store i64 %53, i64* %3, align 8
  %54 = inttoptr i64 %52 to i32*
  %55 = load i32, i32* %54, align 4
  %56 = sub i32 %51, %55
  %57 = lshr i32 %56, 31
  %58 = lshr i32 %51, 31
  %59 = lshr i32 %55, 31
  %60 = xor i32 %59, %58
  %61 = xor i32 %57, %58
  %62 = add nuw nsw i32 %61, %60
  %63 = icmp eq i32 %62, 2
  %64 = icmp ne i32 %57, 0
  %65 = xor i1 %64, %63
  %.v = select i1 %65, i64 12, i64 122
  %66 = add i64 %45, %.v
  store i64 %66, i64* %3, align 8
  br i1 %65, label %block_4004ba, label %block_.L_40052f

block_4004ba:                                     ; preds = %block_.L_4004ae
  %RCX.i79 = getelementptr inbounds %struct.State.0, %struct.State.0* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %67 = add i64 %47, -40
  %68 = add i64 %66, 17
  store i64 %68, i64* %3, align 8
  %69 = inttoptr i64 %67 to i32*
  store i32 2, i32* %69, align 4
  %70 = load i32, i32* %EDX.i101, align 4
  %71 = load i64, i64* %3, align 8
  %72 = load i64, i64* %RBP.i, align 8
  %73 = add i64 %71, 6
  store i64 %73, i64* %3, align 8
  %74 = add i64 %71, 8
  br i1 undef, label %77, label %75

; <label>:75:                                     ; preds = %block_4004ba
  %76 = call %struct.Memory.31* @__remill_error(%struct.State.0* nonnull dereferenceable(3376) %0, i64 %74, %struct.Memory.31* %loadMem_400528)
  %.pre2 = load i32, i32* %EAX.i85, align 4
  %.pre3 = load i64, i64* %3, align 8
  %.pre4 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__esi.exit

; <label>:77:                                     ; preds = %block_4004ba
  %78 = sext i32 %70 to i64
  %79 = and i64 %78, -4294967296
  %80 = zext i32 %70 to i64
  %81 = or i64 %79, %80
  %82 = add i64 %72, -40
  %83 = inttoptr i64 %82 to i32*
  %84 = load i32, i32* %83, align 4
  %85 = sext i32 %84 to i64
  %86 = sdiv i64 %81, %85
  store i8 0, i8* %41, align 1
  %87 = trunc i64 %86 to i32
  br label %routine_idivl__esi.exit

routine_idivl__esi.exit:                          ; preds = %77, %75
  %88 = phi i64 [ %.pre4, %75 ], [ %72, %77 ]
  %89 = phi i64 [ %.pre3, %75 ], [ %74, %77 ]
  %90 = phi i32 [ %.pre2, %75 ], [ %87, %77 ]
  %loadMem_40051a = phi %struct.Memory.31* [ %76, %75 ], [ %loadMem_400528, %77 ]
  %91 = load i64, i64* %RCX.i79, align 8
  %92 = trunc i64 %91 to i32
  %93 = add i32 %90, %92
  %94 = add i64 %88, -36
  %95 = add i64 %89, 5
  store i64 %95, i64* %3, align 8
  %96 = inttoptr i64 %94 to i32*
  store i32 %93, i32* %96, align 4
  %97 = load i64, i64* %RBP.i, align 8
  %98 = add i64 %97, -16
  %99 = load i64, i64* %3, align 8
  %100 = add i64 %99, 4
  store i64 %100, i64* %3, align 8
  %101 = inttoptr i64 %98 to i64*
  %102 = load i64, i64* %101, align 8
  %103 = add i64 %97, -36
  %104 = add i64 %99, 8
  store i64 %104, i64* %3, align 8
  %105 = inttoptr i64 %103 to i32*
  %106 = load i32, i32* %105, align 4
  %107 = sext i32 %106 to i64
  %108 = shl nsw i64 %107, 2
  %109 = add i64 %108, %102
  %110 = add i64 %99, 12
  store i64 %110, i64* %3, align 8
  %111 = inttoptr i64 %109 to i32*
  %112 = load i32, i32* %111, align 4
  %113 = add i64 %97, -24
  %114 = add i64 %99, 15
  store i64 %114, i64* %3, align 8
  %115 = inttoptr i64 %113 to i32*
  %116 = load i32, i32* %115, align 4
  %117 = icmp eq i32 %112, %116
  %.v9 = select i1 %117, i64 21, i64 32
  %118 = add i64 %99, %.v9
  %119 = add i64 %118, 3
  store i64 %119, i64* %3, align 8
  br i1 %117, label %block_.L_40052f, label %block_.L_4004f8

block_.L_4004f8:                                  ; preds = %routine_idivl__esi.exit
  %120 = load i32, i32* %115, align 4
  %121 = add i64 %118, 7
  store i64 %121, i64* %3, align 8
  %122 = load i64, i64* %101, align 8
  %123 = add i64 %118, 11
  store i64 %123, i64* %3, align 8
  %124 = load i32, i32* %105, align 4
  %125 = sext i32 %124 to i64
  %126 = shl nsw i64 %125, 2
  %127 = add i64 %126, %122
  %128 = add i64 %118, 14
  store i64 %128, i64* %3, align 8
  %129 = inttoptr i64 %127 to i32*
  %130 = load i32, i32* %129, align 4
  %131 = sub i32 %120, %130
  %132 = icmp eq i32 %131, 0
  %133 = lshr i32 %131, 31
  %134 = lshr i32 %120, 31
  %135 = lshr i32 %130, 31
  %136 = xor i32 %135, %134
  %137 = xor i32 %133, %134
  %138 = add nuw nsw i32 %137, %136
  %139 = icmp eq i32 %138, 2
  %140 = icmp ne i32 %133, 0
  %141 = xor i1 %140, %139
  %142 = or i1 %132, %141
  %.v10 = select i1 %142, i64 34, i64 20
  %143 = add i64 %118, %.v10
  %144 = add i64 %143, 3
  store i64 %144, i64* %3, align 8
  %145 = load i32, i32* %105, align 4
  %146 = add i64 %143, 6
  store i64 %146, i64* %3, align 8
  br i1 %142, label %block_.L_40051a, label %block_40050c

block_40050c:                                     ; preds = %block_.L_4004f8
  %147 = add i32 %145, 1
  %148 = add i64 %97, -28
  %149 = add i64 %143, 9
  store i64 %149, i64* %3, align 8
  %150 = inttoptr i64 %148 to i32*
  store i32 %147, i32* %150, align 4
  %151 = load i64, i64* %3, align 8
  %152 = add i64 %151, 14
  store i64 %152, i64* %3, align 8
  br label %block_.L_400523

block_.L_40051a:                                  ; preds = %block_.L_4004f8
  %153 = add i32 %145, -1
  %154 = add i64 %97, -32
  %155 = add i64 %143, 9
  store i64 %155, i64* %3, align 8
  %156 = inttoptr i64 %154 to i32*
  store i32 %153, i32* %156, align 4
  %.pre6 = load i64, i64* %3, align 8
  br label %block_.L_400523

block_.L_400523:                                  ; preds = %block_.L_40051a, %block_40050c
  %157 = phi i64 [ %.pre6, %block_.L_40051a ], [ %152, %block_40050c ]
  %158 = add i64 %157, -117
  store i64 %158, i64* %3, align 8
  br label %block_.L_4004ae

block_.L_40052f:                                  ; preds = %routine_idivl__esi.exit, %block_.L_4004ae
  ret %struct.Memory.31* undef
}

attributes #0 = { alwaysinline }
