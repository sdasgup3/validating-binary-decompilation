; ModuleID = 'mcsema/test0.target.extract.ll'
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

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: alwaysinline
define %struct.Memory.31* @binary_search(%struct.State.0* noalias, i64, %struct.Memory.31* noalias) #1 {
entry:
  %3 = getelementptr inbounds %struct.State.0, %struct.State.0* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %PC.i = getelementptr inbounds %struct.State.0, %struct.State.0* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP.i = getelementptr inbounds %struct.State.0, %struct.State.0* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP.i, align 8
  %5 = add i64 %1, 1
  store i64 %5, i64* %PC.i, align 8
  %6 = getelementptr inbounds %struct.State.0, %struct.State.0* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %4, i64* %9, align 8
  %10 = load i64, i64* %PC.i, align 8
  %RDI.i107 = getelementptr inbounds %struct.State.0, %struct.State.0* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %11 = add i64 %7, -24
  %12 = load i64, i64* %RDI.i107, align 8
  %13 = add i64 %10, 7
  store i64 %13, i64* %PC.i, align 8
  %14 = inttoptr i64 %11 to i64*
  store i64 %12, i64* %14, align 8
  %15 = getelementptr inbounds %struct.State.0, %struct.State.0* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i104 = bitcast %union.anon.4* %15 to i32*
  %16 = load i64, i64* %RBP.i, align 8
  %17 = add i64 %16, -20
  %18 = load i32, i32* %ESI.i104, align 4
  %19 = load i64, i64* %PC.i, align 8
  %20 = add i64 %19, 3
  store i64 %20, i64* %PC.i, align 8
  %21 = inttoptr i64 %17 to i32*
  store i32 %18, i32* %21, align 4
  %22 = getelementptr inbounds %struct.State.0, %struct.State.0* %0, i64 0, i32 6, i32 7, i32 0
  %EDX.i101 = bitcast %union.anon.4* %22 to i32*
  %23 = load i64, i64* %RBP.i, align 8
  %24 = add i64 %23, -24
  %25 = load i32, i32* %EDX.i101, align 4
  %26 = load i64, i64* %PC.i, align 8
  %27 = add i64 %26, 3
  store i64 %27, i64* %PC.i, align 8
  %28 = inttoptr i64 %24 to i32*
  store i32 %25, i32* %28, align 4
  %29 = load i64, i64* %RBP.i, align 8
  %30 = add i64 %29, -28
  %31 = load i64, i64* %PC.i, align 8
  %32 = add i64 %31, 7
  store i64 %32, i64* %PC.i, align 8
  %33 = inttoptr i64 %30 to i32*
  store i32 0, i32* %33, align 4
  %34 = load i64, i64* %RBP.i, align 8
  %35 = add i64 %34, -20
  %36 = load i64, i64* %PC.i, align 8
  %37 = add i64 %36, 3
  store i64 %37, i64* %PC.i, align 8
  %38 = inttoptr i64 %35 to i32*
  %39 = load i32, i32* %38, align 4
  %40 = add i32 %39, -1
  %41 = getelementptr inbounds %struct.State.0, %struct.State.0* %0, i64 0, i32 2, i32 13
  %42 = add i64 %34, -32
  %43 = add i64 %36, 9
  store i64 %43, i64* %PC.i, align 8
  %44 = inttoptr i64 %42 to i32*
  store i32 %40, i32* %44, align 4
  %.pre = load i64, i64* %PC.i, align 8
  br label %block_.L_4004ae

block_.L_4004ae:                                  ; preds = %block_.L_400523, %entry
  %45 = phi i64 [ %165, %block_.L_400523 ], [ %.pre, %entry ]
  %loadMem_400528 = phi %struct.Memory.31* [ %loadMem_40051a, %block_.L_400523 ], [ %2, %entry ]
  %46 = getelementptr inbounds %struct.State.0, %struct.State.0* %0, i64 0, i32 6, i32 1, i32 0
  %47 = load i64, i64* %RBP.i, align 8
  %48 = add i64 %47, -28
  %49 = add i64 %45, 3
  store i64 %49, i64* %PC.i, align 8
  %50 = inttoptr i64 %48 to i32*
  %51 = load i32, i32* %50, align 4
  %EAX.i85 = bitcast %union.anon.4* %46 to i32*
  %52 = add i64 %47, -32
  %53 = add i64 %45, 6
  store i64 %53, i64* %PC.i, align 8
  %54 = inttoptr i64 %52 to i32*
  %55 = load i32, i32* %54, align 4
  %56 = sub i32 %51, %55
  %57 = lshr i32 %56, 31
  %58 = trunc i32 %57 to i8
  %59 = lshr i32 %51, 31
  %60 = lshr i32 %55, 31
  %61 = xor i32 %60, %59
  %62 = xor i32 %57, %59
  %63 = add nuw nsw i32 %62, %61
  %64 = icmp eq i32 %63, 2
  %65 = icmp ne i8 %58, 0
  %66 = xor i1 %65, %64
  %.v = select i1 %66, i64 12, i64 122
  %67 = add i64 %45, %.v
  store i64 %67, i64* %3, align 8
  br i1 %66, label %block_4004ba, label %block_.L_400528

block_4004ba:                                     ; preds = %block_.L_4004ae
  %RCX.i79 = getelementptr inbounds %struct.State.0, %struct.State.0* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %68 = add i64 %67, 8
  store i64 %68, i64* %PC.i, align 8
  %69 = add i64 %67, 11
  store i64 %69, i64* %PC.i, align 8
  %70 = add i64 %67, 14
  store i64 %70, i64* %PC.i, align 8
  %71 = add i64 %47, -40
  %72 = add i64 %67, 17
  store i64 %72, i64* %PC.i, align 8
  %73 = inttoptr i64 %71 to i32*
  store i32 2, i32* %73, align 4
  %74 = load i32, i32* %EDX.i101, align 4
  %75 = load i64, i64* %PC.i, align 8
  %76 = sext i32 %74 to i64
  %77 = lshr i64 %76, 32
  %78 = load i64, i64* %RBP.i, align 8
  %79 = add i64 %78, -40
  %80 = add i64 %75, 6
  store i64 %80, i64* %PC.i, align 8
  %81 = inttoptr i64 %79 to i32*
  %82 = load i32, i32* %81, align 4
  %83 = add i64 %75, 8
  %84 = zext i32 %74 to i64
  %85 = sext i32 %82 to i64
  %86 = shl nuw i64 %77, 32
  %87 = or i64 %86, %84
  %88 = sdiv i64 %87, %85
  br i1 undef, label %91, label %89

; <label>:89:                                     ; preds = %block_4004ba
  %90 = call %struct.Memory.31* @__remill_error(%struct.State.0* nonnull dereferenceable(3376) %0, i64 %83, %struct.Memory.31* %loadMem_400528)
  %.pre2 = load i32, i32* %EAX.i85, align 4
  %.pre3 = load i64, i64* %PC.i, align 8
  %.pre4 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__esi.exit

; <label>:91:                                     ; preds = %block_4004ba
  store i8 0, i8* %41, align 1
  %92 = trunc i64 %88 to i32
  br label %routine_idivl__esi.exit

routine_idivl__esi.exit:                          ; preds = %91, %89
  %93 = phi i64 [ %.pre4, %89 ], [ %78, %91 ]
  %94 = phi i64 [ %.pre3, %89 ], [ %83, %91 ]
  %95 = phi i32 [ %.pre2, %89 ], [ %92, %91 ]
  %loadMem_40051a = phi %struct.Memory.31* [ %90, %89 ], [ %loadMem_400528, %91 ]
  %96 = load i64, i64* %RCX.i79, align 8
  %97 = trunc i64 %96 to i32
  %98 = add i32 %95, %97
  %99 = add i64 %93, -36
  %100 = add i64 %94, 5
  store i64 %100, i64* %PC.i, align 8
  %101 = inttoptr i64 %99 to i32*
  store i32 %98, i32* %101, align 4
  %102 = load i64, i64* %RBP.i, align 8
  %103 = add i64 %102, -16
  %104 = load i64, i64* %PC.i, align 8
  %105 = add i64 %104, 4
  store i64 %105, i64* %PC.i, align 8
  %106 = inttoptr i64 %103 to i64*
  %107 = load i64, i64* %106, align 8
  %108 = add i64 %102, -36
  %109 = add i64 %104, 8
  store i64 %109, i64* %PC.i, align 8
  %110 = inttoptr i64 %108 to i32*
  %111 = load i32, i32* %110, align 4
  %112 = sext i32 %111 to i64
  %113 = shl nsw i64 %112, 2
  %114 = add i64 %113, %107
  %115 = add i64 %104, 12
  store i64 %115, i64* %PC.i, align 8
  %116 = inttoptr i64 %114 to i32*
  %117 = load i32, i32* %116, align 4
  %118 = add i64 %102, -24
  %119 = add i64 %104, 15
  store i64 %119, i64* %PC.i, align 8
  %120 = inttoptr i64 %118 to i32*
  %121 = load i32, i32* %120, align 4
  %122 = sub i32 %117, %121
  %123 = icmp eq i32 %122, 0
  %.v9 = select i1 %123, i64 21, i64 32
  %124 = add i64 %104, %.v9
  %125 = add i64 %124, 3
  store i64 %125, i64* %PC.i, align 8
  br i1 %123, label %block_4004ed, label %block_.L_4004f8

block_4004ed:                                     ; preds = %routine_idivl__esi.exit
  br label %block_.L_40052f

block_.L_4004f8:                                  ; preds = %routine_idivl__esi.exit
  %126 = load i32, i32* %120, align 4
  %127 = add i64 %124, 7
  store i64 %127, i64* %PC.i, align 8
  %128 = load i64, i64* %106, align 8
  %129 = add i64 %124, 11
  store i64 %129, i64* %PC.i, align 8
  %130 = load i32, i32* %110, align 4
  %131 = sext i32 %130 to i64
  %132 = shl nsw i64 %131, 2
  %133 = add i64 %132, %128
  %134 = add i64 %124, 14
  store i64 %134, i64* %PC.i, align 8
  %135 = inttoptr i64 %133 to i32*
  %136 = load i32, i32* %135, align 4
  %137 = sub i32 %126, %136
  %138 = icmp eq i32 %137, 0
  %139 = lshr i32 %137, 31
  %140 = trunc i32 %139 to i8
  %141 = lshr i32 %126, 31
  %142 = lshr i32 %136, 31
  %143 = xor i32 %142, %141
  %144 = xor i32 %139, %141
  %145 = add nuw nsw i32 %144, %143
  %146 = icmp eq i32 %145, 2
  %147 = icmp ne i8 %140, 0
  %148 = xor i1 %147, %146
  %149 = or i1 %138, %148
  %.v10 = select i1 %149, i64 34, i64 20
  %150 = add i64 %124, %.v10
  %151 = add i64 %150, 3
  store i64 %151, i64* %PC.i, align 8
  %152 = load i32, i32* %110, align 4
  %153 = add i64 %150, 6
  store i64 %153, i64* %PC.i, align 8
  br i1 %149, label %block_.L_40051a, label %block_40050c

block_40050c:                                     ; preds = %block_.L_4004f8
  %154 = add i32 %152, 1
  %155 = add i64 %102, -28
  %156 = add i64 %150, 9
  store i64 %156, i64* %PC.i, align 8
  %157 = inttoptr i64 %155 to i32*
  store i32 %154, i32* %157, align 4
  %158 = load i64, i64* %PC.i, align 8
  %159 = add i64 %158, 14
  store i64 %159, i64* %3, align 8
  br label %block_.L_400523

block_.L_40051a:                                  ; preds = %block_.L_4004f8
  %160 = add i32 %152, -1
  %161 = add i64 %102, -32
  %162 = add i64 %150, 9
  store i64 %162, i64* %PC.i, align 8
  %163 = inttoptr i64 %161 to i32*
  store i32 %160, i32* %163, align 4
  %.pre6 = load i64, i64* %PC.i, align 8
  br label %block_.L_400523

block_.L_400523:                                  ; preds = %block_.L_40051a, %block_40050c
  %164 = phi i64 [ %.pre6, %block_.L_40051a ], [ %159, %block_40050c ]
  %165 = add i64 %164, -117
  store i64 %165, i64* %3, align 8
  br label %block_.L_4004ae

block_.L_400528:                                  ; preds = %block_.L_4004ae
  br label %block_.L_40052f

block_.L_40052f:                                  ; preds = %block_.L_400528, %block_4004ed
  ret %struct.Memory.31* undef
}

attributes #0 = { nounwind readnone }
attributes #1 = { alwaysinline }
