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
define %struct.Memory* @Fft(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i498 = getelementptr inbounds %union.anon, %union.anon* %11, i64 0, i32 0
  store i64 2, i64* %RAX.i498, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i495 = bitcast %union.anon* %12 to i32*
  %13 = add i64 %7, -12
  %14 = load i32, i32* %EDI.i495, align 4
  %15 = add i64 %10, 11
  store i64 %15, i64* %3, align 8
  %16 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %16, align 4
  %RSI.i492 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %17 = load i64, i64* %RBP.i, align 8
  %18 = add i64 %17, -16
  %19 = load i64, i64* %RSI.i492, align 8
  %20 = load i64, i64* %3, align 8
  %21 = add i64 %20, 4
  store i64 %21, i64* %3, align 8
  %22 = inttoptr i64 %18 to i64*
  store i64 %19, i64* %22, align 8
  %RDX.i489 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %23 = load i64, i64* %RBP.i, align 8
  %24 = add i64 %23, -24
  %25 = load i64, i64* %RDX.i489, align 8
  %26 = load i64, i64* %3, align 8
  %27 = add i64 %26, 4
  store i64 %27, i64* %3, align 8
  %28 = inttoptr i64 %24 to i64*
  store i64 %25, i64* %28, align 8
  %RCX.i486 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %29 = load i64, i64* %RBP.i, align 8
  %30 = add i64 %29, -32
  %31 = load i64, i64* %RCX.i486, align 8
  %32 = load i64, i64* %3, align 8
  %33 = add i64 %32, 4
  store i64 %33, i64* %3, align 8
  %34 = inttoptr i64 %30 to i64*
  store i64 %31, i64* %34, align 8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %36 = load i64, i64* %RBP.i, align 8
  %37 = add i64 %36, -36
  %38 = load i64, i64* %3, align 8
  %39 = add i64 %38, 5
  store i64 %39, i64* %3, align 8
  %40 = bitcast [32 x %union.VectorReg]* %35 to <2 x float>*
  %41 = load <2 x float>, <2 x float>* %40, align 1
  %42 = extractelement <2 x float> %41, i32 0
  %43 = inttoptr i64 %37 to float*
  store float %42, float* %43, align 4
  %RDI.i480 = getelementptr inbounds %union.anon, %union.anon* %12, i64 0, i32 0
  %44 = load i64, i64* %RBP.i, align 8
  %45 = add i64 %44, -4
  %46 = load i64, i64* %3, align 8
  %47 = add i64 %46, 3
  store i64 %47, i64* %3, align 8
  %48 = inttoptr i64 %45 to i32*
  %49 = load i32, i32* %48, align 4
  %50 = zext i32 %49 to i64
  store i64 %50, i64* %RDI.i480, align 8
  %EAX.i477 = bitcast %union.anon* %11 to i32*
  %51 = add i64 %44, -64
  %52 = load i32, i32* %EAX.i477, align 4
  %53 = add i64 %46, 6
  store i64 %53, i64* %3, align 8
  %54 = inttoptr i64 %51 to i32*
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* %EDI.i495, align 4
  %56 = zext i32 %55 to i64
  %57 = load i64, i64* %3, align 8
  store i64 %56, i64* %RAX.i498, align 8
  %58 = sext i32 %55 to i64
  %59 = lshr i64 %58, 32
  store i64 %59, i64* %RDX.i489, align 8
  %60 = load i64, i64* %RBP.i, align 8
  %61 = add i64 %60, -64
  %62 = add i64 %57, 6
  store i64 %62, i64* %3, align 8
  %63 = inttoptr i64 %61 to i32*
  %64 = load i32, i32* %63, align 4
  %65 = zext i32 %64 to i64
  store i64 %65, i64* %RDI.i480, align 8
  %66 = add i64 %57, 8
  store i64 %66, i64* %3, align 8
  %67 = sext i32 %64 to i64
  %68 = shl nuw i64 %59, 32
  %69 = or i64 %68, %56
  %70 = sdiv i64 %69, %67
  %71 = shl i64 %70, 32
  %72 = ashr exact i64 %71, 32
  %73 = icmp eq i64 %70, %72
  br i1 %73, label %76, label %74

; <label>:74:                                     ; preds = %entry
  %75 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %66, %struct.Memory* %2)
  %.pre = load i64, i64* %RBP.i, align 8
  %.pre1 = load i32, i32* %EAX.i477, align 4
  %.pre2 = load i64, i64* %3, align 8
  %.pre11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %.pre12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %.pre14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %.pre16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %.pre18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %.pre20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  br label %routine_idivl__edi.exit

; <label>:76:                                     ; preds = %entry
  %77 = srem i64 %69, %67
  %78 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %79 = and i64 %70, 4294967295
  store i64 %79, i64* %78, align 8
  %80 = and i64 %77, 4294967295
  store i64 %80, i64* %RDX.i489, align 8
  %81 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %81, align 1
  %82 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %82, align 1
  %83 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %83, align 1
  %84 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %84, align 1
  %85 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %85, align 1
  %86 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %86, align 1
  %87 = trunc i64 %70 to i32
  br label %routine_idivl__edi.exit

routine_idivl__edi.exit:                          ; preds = %76, %74
  %.pre-phi21 = phi i8* [ %86, %76 ], [ %.pre20, %74 ]
  %.pre-phi19 = phi i8* [ %85, %76 ], [ %.pre18, %74 ]
  %.pre-phi17 = phi i8* [ %84, %76 ], [ %.pre16, %74 ]
  %.pre-phi15 = phi i8* [ %83, %76 ], [ %.pre14, %74 ]
  %.pre-phi13 = phi i8* [ %82, %76 ], [ %.pre12, %74 ]
  %.pre-phi = phi i8* [ %81, %76 ], [ %.pre11, %74 ]
  %88 = phi i64 [ %66, %76 ], [ %.pre2, %74 ]
  %89 = phi i32 [ %87, %76 ], [ %.pre1, %74 ]
  %90 = phi i64 [ %60, %76 ], [ %.pre, %74 ]
  %91 = phi %struct.Memory* [ %2, %76 ], [ %75, %74 ]
  %92 = add i64 %90, -56
  %93 = add i64 %88, 3
  store i64 %93, i64* %3, align 8
  %94 = inttoptr i64 %92 to i32*
  store i32 %89, i32* %94, align 4
  %95 = load i64, i64* %RBP.i, align 8
  %96 = add i64 %95, -52
  %97 = load i64, i64* %3, align 8
  %98 = add i64 %97, 7
  store i64 %98, i64* %3, align 8
  %99 = inttoptr i64 %96 to i32*
  store i32 1, i32* %99, align 4
  %100 = bitcast [32 x %union.VectorReg]* %35 to i8*
  %101 = bitcast [32 x %union.VectorReg]* %35 to float*
  %102 = getelementptr inbounds i8, i8* %100, i64 4
  %103 = bitcast i8* %102 to float*
  %104 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %105 = bitcast i64* %104 to float*
  %106 = getelementptr inbounds i8, i8* %100, i64 12
  %107 = bitcast i8* %106 to float*
  %108 = bitcast i64* %104 to <2 x i32>*
  %109 = bitcast i8* %102 to i32*
  %110 = bitcast i64* %104 to i32*
  %111 = bitcast i8* %106 to i32*
  %112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %113 = bitcast %union.VectorReg* %112 to i8*
  %114 = bitcast %union.VectorReg* %112 to float*
  %115 = getelementptr inbounds i8, i8* %113, i64 4
  %116 = bitcast i8* %115 to float*
  %117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %118 = bitcast i64* %117 to float*
  %119 = getelementptr inbounds i8, i8* %113, i64 12
  %120 = bitcast i8* %119 to float*
  %121 = bitcast %union.VectorReg* %112 to <2 x float>*
  %122 = bitcast i64* %117 to <2 x i32>*
  %123 = bitcast i8* %115 to i32*
  %124 = bitcast i64* %117 to i32*
  %125 = bitcast i8* %119 to i32*
  %126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %127 = bitcast %union.VectorReg* %126 to i8*
  %128 = bitcast %union.VectorReg* %126 to float*
  %129 = getelementptr inbounds i8, i8* %127, i64 4
  %130 = bitcast i8* %129 to float*
  %131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %132 = bitcast i64* %131 to float*
  %133 = getelementptr inbounds i8, i8* %127, i64 12
  %134 = bitcast i8* %133 to float*
  %135 = bitcast %union.VectorReg* %126 to <2 x float>*
  %136 = bitcast i64* %131 to <2 x i32>*
  %137 = bitcast i8* %129 to i32*
  %138 = bitcast i64* %131 to i32*
  %139 = bitcast i8* %133 to i32*
  %.pre3 = load i64, i64* %RBP.i, align 8
  %.pre4 = load i64, i64* %3, align 8
  br label %block_.L_400a55

block_.L_400a55:                                  ; preds = %block_400c3e, %routine_idivl__edi.exit
  %140 = phi i64 [ %1298, %block_400c3e ], [ %.pre4, %routine_idivl__edi.exit ]
  %141 = phi i64 [ %1260, %block_400c3e ], [ %.pre3, %routine_idivl__edi.exit ]
  %142 = add i64 %141, -48
  %143 = add i64 %140, 7
  store i64 %143, i64* %3, align 8
  %144 = inttoptr i64 %142 to i32*
  store i32 0, i32* %144, align 4
  %145 = load i64, i64* %RBP.i, align 8
  %146 = add i64 %145, -52
  %147 = load i64, i64* %3, align 8
  %148 = add i64 %147, 3
  store i64 %148, i64* %3, align 8
  %149 = inttoptr i64 %146 to i32*
  %150 = load i32, i32* %149, align 4
  %151 = zext i32 %150 to i64
  store i64 %151, i64* %RAX.i498, align 8
  %152 = add i64 %145, -44
  %153 = add i64 %147, 6
  store i64 %153, i64* %3, align 8
  %154 = inttoptr i64 %152 to i32*
  store i32 %150, i32* %154, align 4
  %155 = load i64, i64* %RBP.i, align 8
  %156 = add i64 %155, -40
  %157 = load i64, i64* %3, align 8
  %158 = add i64 %157, 7
  store i64 %158, i64* %3, align 8
  %159 = inttoptr i64 %156 to i32*
  store i32 1, i32* %159, align 4
  %.pre5 = load i64, i64* %3, align 8
  %.pre6.pre = load i64, i64* %RBP.i, align 8
  br label %block_.L_400a69

block_.L_400a69:                                  ; preds = %block_400bef, %block_.L_400a55
  %.pre6 = phi i64 [ %1087, %block_400bef ], [ %.pre6.pre, %block_.L_400a55 ]
  %160 = phi i64 [ %1125, %block_400bef ], [ %.pre5, %block_.L_400a55 ]
  %161 = add i64 %160, 5
  store i64 %161, i64* %3, align 8
  br label %block_.L_400a6e

block_.L_400a6e:                                  ; preds = %block_.L_400a6e, %block_.L_400a69
  %162 = phi i64 [ %1039, %block_.L_400a6e ], [ %161, %block_.L_400a69 ]
  %163 = phi i64 [ %1001, %block_.L_400a6e ], [ %.pre6, %block_.L_400a69 ]
  %164 = add i64 %163, -16
  %165 = add i64 %162, 4
  store i64 %165, i64* %3, align 8
  %166 = inttoptr i64 %164 to i64*
  %167 = load i64, i64* %166, align 8
  store i64 %167, i64* %RAX.i498, align 8
  %168 = add i64 %163, -40
  %169 = add i64 %162, 8
  store i64 %169, i64* %3, align 8
  %170 = inttoptr i64 %168 to i32*
  %171 = load i32, i32* %170, align 4
  %172 = sext i32 %171 to i64
  store i64 %172, i64* %RCX.i486, align 8
  %173 = shl nsw i64 %172, 3
  %174 = add i64 %173, %167
  %175 = add i64 %162, 13
  store i64 %175, i64* %3, align 8
  %176 = inttoptr i64 %174 to i32*
  %177 = load i32, i32* %176, align 4
  %178 = bitcast [32 x %union.VectorReg]* %35 to i32*
  store i32 %177, i32* %178, align 1
  store float 0.000000e+00, float* %103, align 1
  store float 0.000000e+00, float* %105, align 1
  store float 0.000000e+00, float* %107, align 1
  %179 = add i64 %162, 17
  store i64 %179, i64* %3, align 8
  %180 = load i64, i64* %166, align 8
  store i64 %180, i64* %RAX.i498, align 8
  %181 = add i64 %163, -56
  %182 = add i64 %162, 20
  store i64 %182, i64* %3, align 8
  %183 = inttoptr i64 %181 to i32*
  %184 = load i32, i32* %183, align 4
  %185 = zext i32 %184 to i64
  store i64 %185, i64* %RDX.i489, align 8
  %186 = add i64 %162, 23
  store i64 %186, i64* %3, align 8
  %187 = load i32, i32* %170, align 4
  %188 = add i32 %187, %184
  %189 = zext i32 %188 to i64
  store i64 %189, i64* %RDX.i489, align 8
  %190 = icmp ult i32 %188, %184
  %191 = icmp ult i32 %188, %187
  %192 = or i1 %190, %191
  %193 = zext i1 %192 to i8
  store i8 %193, i8* %.pre-phi, align 1
  %194 = and i32 %188, 255
  %195 = tail call i32 @llvm.ctpop.i32(i32 %194)
  %196 = trunc i32 %195 to i8
  %197 = and i8 %196, 1
  %198 = xor i8 %197, 1
  store i8 %198, i8* %.pre-phi13, align 1
  %199 = xor i32 %187, %184
  %200 = xor i32 %199, %188
  %201 = lshr i32 %200, 4
  %202 = trunc i32 %201 to i8
  %203 = and i8 %202, 1
  store i8 %203, i8* %.pre-phi15, align 1
  %204 = icmp eq i32 %188, 0
  %205 = zext i1 %204 to i8
  store i8 %205, i8* %.pre-phi17, align 1
  %206 = lshr i32 %188, 31
  %207 = trunc i32 %206 to i8
  store i8 %207, i8* %.pre-phi19, align 1
  %208 = lshr i32 %184, 31
  %209 = lshr i32 %187, 31
  %210 = xor i32 %206, %208
  %211 = xor i32 %206, %209
  %212 = add nuw nsw i32 %210, %211
  %213 = icmp eq i32 %212, 2
  %214 = zext i1 %213 to i8
  store i8 %214, i8* %.pre-phi21, align 1
  %215 = sext i32 %188 to i64
  store i64 %215, i64* %RCX.i486, align 8
  %216 = shl nsw i64 %215, 3
  %217 = add i64 %216, %180
  %218 = add i64 %162, 31
  store i64 %218, i64* %3, align 8
  %219 = load <2 x float>, <2 x float>* %40, align 1
  %220 = load <2 x i32>, <2 x i32>* %108, align 1
  %221 = inttoptr i64 %217 to float*
  %222 = load float, float* %221, align 4
  %223 = extractelement <2 x float> %219, i32 0
  %224 = fadd float %223, %222
  store float %224, float* %101, align 1
  %225 = bitcast <2 x float> %219 to <2 x i32>
  %226 = extractelement <2 x i32> %225, i32 1
  store i32 %226, i32* %109, align 1
  %227 = extractelement <2 x i32> %220, i32 0
  store i32 %227, i32* %110, align 1
  %228 = extractelement <2 x i32> %220, i32 1
  store i32 %228, i32* %111, align 1
  %229 = add i64 %163, -24
  %230 = add i64 %162, 35
  store i64 %230, i64* %3, align 8
  %231 = inttoptr i64 %229 to i64*
  %232 = load i64, i64* %231, align 8
  store i64 %232, i64* %RAX.i498, align 8
  %233 = load i64, i64* %RBP.i, align 8
  %234 = add i64 %233, -40
  %235 = add i64 %162, 38
  store i64 %235, i64* %3, align 8
  %236 = inttoptr i64 %234 to i32*
  %237 = load i32, i32* %236, align 4
  %238 = zext i32 %237 to i64
  store i64 %238, i64* %RDX.i489, align 8
  %239 = add i64 %233, -48
  %240 = add i64 %162, 41
  store i64 %240, i64* %3, align 8
  %241 = inttoptr i64 %239 to i32*
  %242 = load i32, i32* %241, align 4
  %243 = add i32 %242, %237
  %244 = zext i32 %243 to i64
  store i64 %244, i64* %RDX.i489, align 8
  %245 = icmp ult i32 %243, %237
  %246 = icmp ult i32 %243, %242
  %247 = or i1 %245, %246
  %248 = zext i1 %247 to i8
  store i8 %248, i8* %.pre-phi, align 1
  %249 = and i32 %243, 255
  %250 = tail call i32 @llvm.ctpop.i32(i32 %249)
  %251 = trunc i32 %250 to i8
  %252 = and i8 %251, 1
  %253 = xor i8 %252, 1
  store i8 %253, i8* %.pre-phi13, align 1
  %254 = xor i32 %242, %237
  %255 = xor i32 %254, %243
  %256 = lshr i32 %255, 4
  %257 = trunc i32 %256 to i8
  %258 = and i8 %257, 1
  store i8 %258, i8* %.pre-phi15, align 1
  %259 = icmp eq i32 %243, 0
  %260 = zext i1 %259 to i8
  store i8 %260, i8* %.pre-phi17, align 1
  %261 = lshr i32 %243, 31
  %262 = trunc i32 %261 to i8
  store i8 %262, i8* %.pre-phi19, align 1
  %263 = lshr i32 %237, 31
  %264 = lshr i32 %242, 31
  %265 = xor i32 %261, %263
  %266 = xor i32 %261, %264
  %267 = add nuw nsw i32 %265, %266
  %268 = icmp eq i32 %267, 2
  %269 = zext i1 %268 to i8
  store i8 %269, i8* %.pre-phi21, align 1
  %270 = sext i32 %243 to i64
  store i64 %270, i64* %RCX.i486, align 8
  %271 = shl nsw i64 %270, 3
  %272 = add i64 %271, %232
  %273 = add i64 %162, 49
  store i64 %273, i64* %3, align 8
  %274 = load <2 x float>, <2 x float>* %40, align 1
  %275 = extractelement <2 x float> %274, i32 0
  %276 = inttoptr i64 %272 to float*
  store float %275, float* %276, align 4
  %277 = load i64, i64* %RBP.i, align 8
  %278 = add i64 %277, -16
  %279 = load i64, i64* %3, align 8
  %280 = add i64 %279, 4
  store i64 %280, i64* %3, align 8
  %281 = inttoptr i64 %278 to i64*
  %282 = load i64, i64* %281, align 8
  store i64 %282, i64* %RAX.i498, align 8
  %283 = add i64 %277, -40
  %284 = add i64 %279, 8
  store i64 %284, i64* %3, align 8
  %285 = inttoptr i64 %283 to i32*
  %286 = load i32, i32* %285, align 4
  %287 = sext i32 %286 to i64
  store i64 %287, i64* %RCX.i486, align 8
  %288 = shl nsw i64 %287, 3
  %289 = add i64 %282, 4
  %290 = add i64 %289, %288
  %291 = add i64 %279, 14
  store i64 %291, i64* %3, align 8
  %292 = inttoptr i64 %290 to i32*
  %293 = load i32, i32* %292, align 4
  store i32 %293, i32* %178, align 1
  store float 0.000000e+00, float* %103, align 1
  store float 0.000000e+00, float* %105, align 1
  store float 0.000000e+00, float* %107, align 1
  %294 = add i64 %279, 18
  store i64 %294, i64* %3, align 8
  %295 = load i64, i64* %281, align 8
  store i64 %295, i64* %RAX.i498, align 8
  %296 = add i64 %277, -56
  %297 = add i64 %279, 21
  store i64 %297, i64* %3, align 8
  %298 = inttoptr i64 %296 to i32*
  %299 = load i32, i32* %298, align 4
  %300 = zext i32 %299 to i64
  store i64 %300, i64* %RDX.i489, align 8
  %301 = add i64 %279, 24
  store i64 %301, i64* %3, align 8
  %302 = load i32, i32* %285, align 4
  %303 = add i32 %302, %299
  %304 = zext i32 %303 to i64
  store i64 %304, i64* %RDX.i489, align 8
  %305 = icmp ult i32 %303, %299
  %306 = icmp ult i32 %303, %302
  %307 = or i1 %305, %306
  %308 = zext i1 %307 to i8
  store i8 %308, i8* %.pre-phi, align 1
  %309 = and i32 %303, 255
  %310 = tail call i32 @llvm.ctpop.i32(i32 %309)
  %311 = trunc i32 %310 to i8
  %312 = and i8 %311, 1
  %313 = xor i8 %312, 1
  store i8 %313, i8* %.pre-phi13, align 1
  %314 = xor i32 %302, %299
  %315 = xor i32 %314, %303
  %316 = lshr i32 %315, 4
  %317 = trunc i32 %316 to i8
  %318 = and i8 %317, 1
  store i8 %318, i8* %.pre-phi15, align 1
  %319 = icmp eq i32 %303, 0
  %320 = zext i1 %319 to i8
  store i8 %320, i8* %.pre-phi17, align 1
  %321 = lshr i32 %303, 31
  %322 = trunc i32 %321 to i8
  store i8 %322, i8* %.pre-phi19, align 1
  %323 = lshr i32 %299, 31
  %324 = lshr i32 %302, 31
  %325 = xor i32 %321, %323
  %326 = xor i32 %321, %324
  %327 = add nuw nsw i32 %325, %326
  %328 = icmp eq i32 %327, 2
  %329 = zext i1 %328 to i8
  store i8 %329, i8* %.pre-phi21, align 1
  %330 = sext i32 %303 to i64
  store i64 %330, i64* %RCX.i486, align 8
  %331 = shl nsw i64 %330, 3
  %332 = add i64 %295, 4
  %333 = add i64 %332, %331
  %334 = add i64 %279, 33
  store i64 %334, i64* %3, align 8
  %335 = load <2 x float>, <2 x float>* %40, align 1
  %336 = load <2 x i32>, <2 x i32>* %108, align 1
  %337 = inttoptr i64 %333 to float*
  %338 = load float, float* %337, align 4
  %339 = extractelement <2 x float> %335, i32 0
  %340 = fadd float %339, %338
  store float %340, float* %101, align 1
  %341 = bitcast <2 x float> %335 to <2 x i32>
  %342 = extractelement <2 x i32> %341, i32 1
  store i32 %342, i32* %109, align 1
  %343 = extractelement <2 x i32> %336, i32 0
  store i32 %343, i32* %110, align 1
  %344 = extractelement <2 x i32> %336, i32 1
  store i32 %344, i32* %111, align 1
  %345 = load i64, i64* %RBP.i, align 8
  %346 = add i64 %345, -24
  %347 = add i64 %279, 37
  store i64 %347, i64* %3, align 8
  %348 = inttoptr i64 %346 to i64*
  %349 = load i64, i64* %348, align 8
  store i64 %349, i64* %RAX.i498, align 8
  %350 = add i64 %345, -40
  %351 = add i64 %279, 40
  store i64 %351, i64* %3, align 8
  %352 = inttoptr i64 %350 to i32*
  %353 = load i32, i32* %352, align 4
  %354 = zext i32 %353 to i64
  store i64 %354, i64* %RDX.i489, align 8
  %355 = add i64 %345, -48
  %356 = add i64 %279, 43
  store i64 %356, i64* %3, align 8
  %357 = inttoptr i64 %355 to i32*
  %358 = load i32, i32* %357, align 4
  %359 = add i32 %358, %353
  %360 = zext i32 %359 to i64
  store i64 %360, i64* %RDX.i489, align 8
  %361 = icmp ult i32 %359, %353
  %362 = icmp ult i32 %359, %358
  %363 = or i1 %361, %362
  %364 = zext i1 %363 to i8
  store i8 %364, i8* %.pre-phi, align 1
  %365 = and i32 %359, 255
  %366 = tail call i32 @llvm.ctpop.i32(i32 %365)
  %367 = trunc i32 %366 to i8
  %368 = and i8 %367, 1
  %369 = xor i8 %368, 1
  store i8 %369, i8* %.pre-phi13, align 1
  %370 = xor i32 %358, %353
  %371 = xor i32 %370, %359
  %372 = lshr i32 %371, 4
  %373 = trunc i32 %372 to i8
  %374 = and i8 %373, 1
  store i8 %374, i8* %.pre-phi15, align 1
  %375 = icmp eq i32 %359, 0
  %376 = zext i1 %375 to i8
  store i8 %376, i8* %.pre-phi17, align 1
  %377 = lshr i32 %359, 31
  %378 = trunc i32 %377 to i8
  store i8 %378, i8* %.pre-phi19, align 1
  %379 = lshr i32 %353, 31
  %380 = lshr i32 %358, 31
  %381 = xor i32 %377, %379
  %382 = xor i32 %377, %380
  %383 = add nuw nsw i32 %381, %382
  %384 = icmp eq i32 %383, 2
  %385 = zext i1 %384 to i8
  store i8 %385, i8* %.pre-phi21, align 1
  %386 = sext i32 %359 to i64
  store i64 %386, i64* %RCX.i486, align 8
  %387 = shl nsw i64 %386, 3
  %388 = add i64 %349, 4
  %389 = add i64 %388, %387
  %390 = add i64 %279, 52
  store i64 %390, i64* %3, align 8
  %391 = load <2 x float>, <2 x float>* %40, align 1
  %392 = extractelement <2 x float> %391, i32 0
  %393 = inttoptr i64 %389 to float*
  store float %392, float* %393, align 4
  %394 = load i64, i64* %RBP.i, align 8
  %395 = add i64 %394, -32
  %396 = load i64, i64* %3, align 8
  %397 = add i64 %396, 4
  store i64 %397, i64* %3, align 8
  %398 = inttoptr i64 %395 to i64*
  %399 = load i64, i64* %398, align 8
  store i64 %399, i64* %RAX.i498, align 8
  %400 = add i64 %394, -48
  %401 = add i64 %396, 7
  store i64 %401, i64* %3, align 8
  %402 = inttoptr i64 %400 to i32*
  %403 = load i32, i32* %402, align 4
  %404 = add i32 %403, 1
  %405 = zext i32 %404 to i64
  store i64 %405, i64* %RDX.i489, align 8
  %406 = icmp eq i32 %403, -1
  %407 = icmp eq i32 %404, 0
  %408 = or i1 %406, %407
  %409 = zext i1 %408 to i8
  store i8 %409, i8* %.pre-phi, align 1
  %410 = and i32 %404, 255
  %411 = tail call i32 @llvm.ctpop.i32(i32 %410)
  %412 = trunc i32 %411 to i8
  %413 = and i8 %412, 1
  %414 = xor i8 %413, 1
  store i8 %414, i8* %.pre-phi13, align 1
  %415 = xor i32 %403, %404
  %416 = lshr i32 %415, 4
  %417 = trunc i32 %416 to i8
  %418 = and i8 %417, 1
  store i8 %418, i8* %.pre-phi15, align 1
  %419 = zext i1 %407 to i8
  store i8 %419, i8* %.pre-phi17, align 1
  %420 = lshr i32 %404, 31
  %421 = trunc i32 %420 to i8
  store i8 %421, i8* %.pre-phi19, align 1
  %422 = lshr i32 %403, 31
  %423 = xor i32 %420, %422
  %424 = add nuw nsw i32 %423, %420
  %425 = icmp eq i32 %424, 2
  %426 = zext i1 %425 to i8
  store i8 %426, i8* %.pre-phi21, align 1
  %427 = sext i32 %404 to i64
  store i64 %427, i64* %RCX.i486, align 8
  %428 = shl nsw i64 %427, 3
  %429 = add i64 %428, %399
  %430 = add i64 %396, 18
  store i64 %430, i64* %3, align 8
  %431 = inttoptr i64 %429 to i32*
  %432 = load i32, i32* %431, align 4
  store i32 %432, i32* %178, align 1
  store float 0.000000e+00, float* %103, align 1
  store float 0.000000e+00, float* %105, align 1
  store float 0.000000e+00, float* %107, align 1
  %433 = add i64 %394, -16
  %434 = add i64 %396, 22
  store i64 %434, i64* %3, align 8
  %435 = inttoptr i64 %433 to i64*
  %436 = load i64, i64* %435, align 8
  store i64 %436, i64* %RAX.i498, align 8
  %437 = add i64 %394, -40
  %438 = add i64 %396, 26
  store i64 %438, i64* %3, align 8
  %439 = inttoptr i64 %437 to i32*
  %440 = load i32, i32* %439, align 4
  %441 = sext i32 %440 to i64
  store i64 %441, i64* %RCX.i486, align 8
  %442 = shl nsw i64 %441, 3
  %443 = add i64 %442, %436
  %444 = add i64 %396, 31
  store i64 %444, i64* %3, align 8
  %445 = inttoptr i64 %443 to i32*
  %446 = load i32, i32* %445, align 4
  %447 = bitcast %union.VectorReg* %112 to i32*
  store i32 %446, i32* %447, align 1
  store float 0.000000e+00, float* %116, align 1
  store float 0.000000e+00, float* %118, align 1
  store float 0.000000e+00, float* %120, align 1
  %448 = add i64 %396, 35
  store i64 %448, i64* %3, align 8
  %449 = load i64, i64* %435, align 8
  store i64 %449, i64* %RAX.i498, align 8
  %450 = add i64 %396, 38
  store i64 %450, i64* %3, align 8
  %451 = load i32, i32* %439, align 4
  %452 = zext i32 %451 to i64
  store i64 %452, i64* %RDX.i489, align 8
  %453 = add i64 %394, -56
  %454 = add i64 %396, 41
  store i64 %454, i64* %3, align 8
  %455 = inttoptr i64 %453 to i32*
  %456 = load i32, i32* %455, align 4
  %457 = add i32 %456, %451
  %458 = zext i32 %457 to i64
  store i64 %458, i64* %RDX.i489, align 8
  %459 = icmp ult i32 %457, %451
  %460 = icmp ult i32 %457, %456
  %461 = or i1 %459, %460
  %462 = zext i1 %461 to i8
  store i8 %462, i8* %.pre-phi, align 1
  %463 = and i32 %457, 255
  %464 = tail call i32 @llvm.ctpop.i32(i32 %463)
  %465 = trunc i32 %464 to i8
  %466 = and i8 %465, 1
  %467 = xor i8 %466, 1
  store i8 %467, i8* %.pre-phi13, align 1
  %468 = xor i32 %456, %451
  %469 = xor i32 %468, %457
  %470 = lshr i32 %469, 4
  %471 = trunc i32 %470 to i8
  %472 = and i8 %471, 1
  store i8 %472, i8* %.pre-phi15, align 1
  %473 = icmp eq i32 %457, 0
  %474 = zext i1 %473 to i8
  store i8 %474, i8* %.pre-phi17, align 1
  %475 = lshr i32 %457, 31
  %476 = trunc i32 %475 to i8
  store i8 %476, i8* %.pre-phi19, align 1
  %477 = lshr i32 %451, 31
  %478 = lshr i32 %456, 31
  %479 = xor i32 %475, %477
  %480 = xor i32 %475, %478
  %481 = add nuw nsw i32 %479, %480
  %482 = icmp eq i32 %481, 2
  %483 = zext i1 %482 to i8
  store i8 %483, i8* %.pre-phi21, align 1
  %484 = sext i32 %457 to i64
  store i64 %484, i64* %RCX.i486, align 8
  %485 = shl nsw i64 %484, 3
  %486 = add i64 %485, %449
  %487 = add i64 %396, 49
  store i64 %487, i64* %3, align 8
  %488 = load <2 x float>, <2 x float>* %121, align 1
  %489 = load <2 x i32>, <2 x i32>* %122, align 1
  %490 = inttoptr i64 %486 to float*
  %491 = load float, float* %490, align 4
  %492 = extractelement <2 x float> %488, i32 0
  %493 = fsub float %492, %491
  store float %493, float* %114, align 1
  %494 = bitcast <2 x float> %488 to <2 x i32>
  %495 = extractelement <2 x i32> %494, i32 1
  store i32 %495, i32* %123, align 1
  %496 = extractelement <2 x i32> %489, i32 0
  store i32 %496, i32* %124, align 1
  %497 = extractelement <2 x i32> %489, i32 1
  store i32 %497, i32* %125, align 1
  %498 = load <2 x float>, <2 x float>* %40, align 1
  %499 = load <2 x i32>, <2 x i32>* %108, align 1
  %500 = load <2 x float>, <2 x float>* %121, align 1
  %501 = extractelement <2 x float> %498, i32 0
  %502 = extractelement <2 x float> %500, i32 0
  %503 = fmul float %501, %502
  store float %503, float* %101, align 1
  %504 = bitcast <2 x float> %498 to <2 x i32>
  %505 = extractelement <2 x i32> %504, i32 1
  store i32 %505, i32* %109, align 1
  %506 = extractelement <2 x i32> %499, i32 0
  store i32 %506, i32* %110, align 1
  %507 = extractelement <2 x i32> %499, i32 1
  store i32 %507, i32* %111, align 1
  %508 = load i64, i64* %RBP.i, align 8
  %509 = add i64 %508, -32
  %510 = add i64 %396, 57
  store i64 %510, i64* %3, align 8
  %511 = inttoptr i64 %509 to i64*
  %512 = load i64, i64* %511, align 8
  store i64 %512, i64* %RAX.i498, align 8
  %513 = add i64 %508, -48
  %514 = add i64 %396, 60
  store i64 %514, i64* %3, align 8
  %515 = inttoptr i64 %513 to i32*
  %516 = load i32, i32* %515, align 4
  %517 = add i32 %516, 1
  %518 = zext i32 %517 to i64
  store i64 %518, i64* %RDX.i489, align 8
  %519 = icmp eq i32 %516, -1
  %520 = icmp eq i32 %517, 0
  %521 = or i1 %519, %520
  %522 = zext i1 %521 to i8
  store i8 %522, i8* %.pre-phi, align 1
  %523 = and i32 %517, 255
  %524 = tail call i32 @llvm.ctpop.i32(i32 %523)
  %525 = trunc i32 %524 to i8
  %526 = and i8 %525, 1
  %527 = xor i8 %526, 1
  store i8 %527, i8* %.pre-phi13, align 1
  %528 = xor i32 %516, %517
  %529 = lshr i32 %528, 4
  %530 = trunc i32 %529 to i8
  %531 = and i8 %530, 1
  store i8 %531, i8* %.pre-phi15, align 1
  %532 = zext i1 %520 to i8
  store i8 %532, i8* %.pre-phi17, align 1
  %533 = lshr i32 %517, 31
  %534 = trunc i32 %533 to i8
  store i8 %534, i8* %.pre-phi19, align 1
  %535 = lshr i32 %516, 31
  %536 = xor i32 %533, %535
  %537 = add nuw nsw i32 %536, %533
  %538 = icmp eq i32 %537, 2
  %539 = zext i1 %538 to i8
  store i8 %539, i8* %.pre-phi21, align 1
  %540 = sext i32 %517 to i64
  store i64 %540, i64* %RCX.i486, align 8
  %541 = shl nsw i64 %540, 3
  %542 = add i64 %512, 4
  %543 = add i64 %542, %541
  %544 = add i64 %396, 72
  store i64 %544, i64* %3, align 8
  %545 = inttoptr i64 %543 to i32*
  %546 = load i32, i32* %545, align 4
  store i32 %546, i32* %447, align 1
  store float 0.000000e+00, float* %116, align 1
  store float 0.000000e+00, float* %118, align 1
  store float 0.000000e+00, float* %120, align 1
  %547 = add i64 %508, -16
  %548 = add i64 %396, 76
  store i64 %548, i64* %3, align 8
  %549 = inttoptr i64 %547 to i64*
  %550 = load i64, i64* %549, align 8
  store i64 %550, i64* %RAX.i498, align 8
  %551 = add i64 %508, -40
  %552 = add i64 %396, 80
  store i64 %552, i64* %3, align 8
  %553 = inttoptr i64 %551 to i32*
  %554 = load i32, i32* %553, align 4
  %555 = sext i32 %554 to i64
  store i64 %555, i64* %RCX.i486, align 8
  %556 = shl nsw i64 %555, 3
  %557 = add i64 %550, 4
  %558 = add i64 %557, %556
  %559 = add i64 %396, 86
  store i64 %559, i64* %3, align 8
  %560 = inttoptr i64 %558 to i32*
  %561 = load i32, i32* %560, align 4
  %562 = bitcast %union.VectorReg* %126 to i32*
  store i32 %561, i32* %562, align 1
  store float 0.000000e+00, float* %130, align 1
  store float 0.000000e+00, float* %132, align 1
  store float 0.000000e+00, float* %134, align 1
  %563 = add i64 %396, 90
  store i64 %563, i64* %3, align 8
  %564 = load i64, i64* %549, align 8
  store i64 %564, i64* %RAX.i498, align 8
  %565 = add i64 %396, 93
  store i64 %565, i64* %3, align 8
  %566 = load i32, i32* %553, align 4
  %567 = zext i32 %566 to i64
  store i64 %567, i64* %RDX.i489, align 8
  %568 = load i64, i64* %RBP.i, align 8
  %569 = add i64 %568, -56
  %570 = add i64 %396, 96
  store i64 %570, i64* %3, align 8
  %571 = inttoptr i64 %569 to i32*
  %572 = load i32, i32* %571, align 4
  %573 = add i32 %572, %566
  %574 = zext i32 %573 to i64
  store i64 %574, i64* %RDX.i489, align 8
  %575 = icmp ult i32 %573, %566
  %576 = icmp ult i32 %573, %572
  %577 = or i1 %575, %576
  %578 = zext i1 %577 to i8
  store i8 %578, i8* %.pre-phi, align 1
  %579 = and i32 %573, 255
  %580 = tail call i32 @llvm.ctpop.i32(i32 %579)
  %581 = trunc i32 %580 to i8
  %582 = and i8 %581, 1
  %583 = xor i8 %582, 1
  store i8 %583, i8* %.pre-phi13, align 1
  %584 = xor i32 %572, %566
  %585 = xor i32 %584, %573
  %586 = lshr i32 %585, 4
  %587 = trunc i32 %586 to i8
  %588 = and i8 %587, 1
  store i8 %588, i8* %.pre-phi15, align 1
  %589 = icmp eq i32 %573, 0
  %590 = zext i1 %589 to i8
  store i8 %590, i8* %.pre-phi17, align 1
  %591 = lshr i32 %573, 31
  %592 = trunc i32 %591 to i8
  store i8 %592, i8* %.pre-phi19, align 1
  %593 = lshr i32 %566, 31
  %594 = lshr i32 %572, 31
  %595 = xor i32 %591, %593
  %596 = xor i32 %591, %594
  %597 = add nuw nsw i32 %595, %596
  %598 = icmp eq i32 %597, 2
  %599 = zext i1 %598 to i8
  store i8 %599, i8* %.pre-phi21, align 1
  %600 = sext i32 %573 to i64
  store i64 %600, i64* %RCX.i486, align 8
  %601 = shl nsw i64 %600, 3
  %602 = add i64 %564, 4
  %603 = add i64 %602, %601
  %604 = add i64 %396, 105
  store i64 %604, i64* %3, align 8
  %605 = load <2 x float>, <2 x float>* %135, align 1
  %606 = load <2 x i32>, <2 x i32>* %136, align 1
  %607 = inttoptr i64 %603 to float*
  %608 = load float, float* %607, align 4
  %609 = extractelement <2 x float> %605, i32 0
  %610 = fsub float %609, %608
  store float %610, float* %128, align 1
  %611 = bitcast <2 x float> %605 to <2 x i32>
  %612 = extractelement <2 x i32> %611, i32 1
  store i32 %612, i32* %137, align 1
  %613 = extractelement <2 x i32> %606, i32 0
  store i32 %613, i32* %138, align 1
  %614 = extractelement <2 x i32> %606, i32 1
  store i32 %614, i32* %139, align 1
  %615 = load <2 x float>, <2 x float>* %121, align 1
  %616 = load <2 x i32>, <2 x i32>* %122, align 1
  %617 = load <2 x float>, <2 x float>* %135, align 1
  %618 = extractelement <2 x float> %615, i32 0
  %619 = extractelement <2 x float> %617, i32 0
  %620 = fmul float %618, %619
  store float %620, float* %114, align 1
  %621 = bitcast <2 x float> %615 to <2 x i32>
  %622 = extractelement <2 x i32> %621, i32 1
  store i32 %622, i32* %123, align 1
  %623 = extractelement <2 x i32> %616, i32 0
  store i32 %623, i32* %124, align 1
  %624 = extractelement <2 x i32> %616, i32 1
  store i32 %624, i32* %125, align 1
  %625 = load <2 x float>, <2 x float>* %40, align 1
  %626 = load <2 x i32>, <2 x i32>* %108, align 1
  %627 = load <2 x float>, <2 x float>* %121, align 1
  %628 = extractelement <2 x float> %625, i32 0
  %629 = extractelement <2 x float> %627, i32 0
  %630 = fsub float %628, %629
  store float %630, float* %101, align 1
  %631 = bitcast <2 x float> %625 to <2 x i32>
  %632 = extractelement <2 x i32> %631, i32 1
  store i32 %632, i32* %109, align 1
  %633 = extractelement <2 x i32> %626, i32 0
  store i32 %633, i32* %110, align 1
  %634 = extractelement <2 x i32> %626, i32 1
  store i32 %634, i32* %111, align 1
  %635 = add i64 %568, -24
  %636 = add i64 %396, 117
  store i64 %636, i64* %3, align 8
  %637 = inttoptr i64 %635 to i64*
  %638 = load i64, i64* %637, align 8
  store i64 %638, i64* %RAX.i498, align 8
  %639 = load i64, i64* %RBP.i, align 8
  %640 = add i64 %639, -40
  %641 = add i64 %396, 120
  store i64 %641, i64* %3, align 8
  %642 = inttoptr i64 %640 to i32*
  %643 = load i32, i32* %642, align 4
  %644 = zext i32 %643 to i64
  store i64 %644, i64* %RDX.i489, align 8
  %645 = add i64 %639, -44
  %646 = add i64 %396, 123
  store i64 %646, i64* %3, align 8
  %647 = inttoptr i64 %645 to i32*
  %648 = load i32, i32* %647, align 4
  %649 = add i32 %648, %643
  %650 = zext i32 %649 to i64
  store i64 %650, i64* %RDX.i489, align 8
  %651 = icmp ult i32 %649, %643
  %652 = icmp ult i32 %649, %648
  %653 = or i1 %651, %652
  %654 = zext i1 %653 to i8
  store i8 %654, i8* %.pre-phi, align 1
  %655 = and i32 %649, 255
  %656 = tail call i32 @llvm.ctpop.i32(i32 %655)
  %657 = trunc i32 %656 to i8
  %658 = and i8 %657, 1
  %659 = xor i8 %658, 1
  store i8 %659, i8* %.pre-phi13, align 1
  %660 = xor i32 %648, %643
  %661 = xor i32 %660, %649
  %662 = lshr i32 %661, 4
  %663 = trunc i32 %662 to i8
  %664 = and i8 %663, 1
  store i8 %664, i8* %.pre-phi15, align 1
  %665 = icmp eq i32 %649, 0
  %666 = zext i1 %665 to i8
  store i8 %666, i8* %.pre-phi17, align 1
  %667 = lshr i32 %649, 31
  %668 = trunc i32 %667 to i8
  store i8 %668, i8* %.pre-phi19, align 1
  %669 = lshr i32 %643, 31
  %670 = lshr i32 %648, 31
  %671 = xor i32 %667, %669
  %672 = xor i32 %667, %670
  %673 = add nuw nsw i32 %671, %672
  %674 = icmp eq i32 %673, 2
  %675 = zext i1 %674 to i8
  store i8 %675, i8* %.pre-phi21, align 1
  %676 = sext i32 %649 to i64
  store i64 %676, i64* %RCX.i486, align 8
  %677 = shl nsw i64 %676, 3
  %678 = add i64 %677, %638
  %679 = add i64 %396, 131
  store i64 %679, i64* %3, align 8
  %680 = load <2 x float>, <2 x float>* %40, align 1
  %681 = extractelement <2 x float> %680, i32 0
  %682 = inttoptr i64 %678 to float*
  store float %681, float* %682, align 4
  %683 = load i64, i64* %RBP.i, align 8
  %684 = add i64 %683, -32
  %685 = load i64, i64* %3, align 8
  %686 = add i64 %685, 4
  store i64 %686, i64* %3, align 8
  %687 = inttoptr i64 %684 to i64*
  %688 = load i64, i64* %687, align 8
  store i64 %688, i64* %RAX.i498, align 8
  %689 = add i64 %683, -48
  %690 = add i64 %685, 7
  store i64 %690, i64* %3, align 8
  %691 = inttoptr i64 %689 to i32*
  %692 = load i32, i32* %691, align 4
  %693 = add i32 %692, 1
  %694 = zext i32 %693 to i64
  store i64 %694, i64* %RDX.i489, align 8
  %695 = icmp eq i32 %692, -1
  %696 = icmp eq i32 %693, 0
  %697 = or i1 %695, %696
  %698 = zext i1 %697 to i8
  store i8 %698, i8* %.pre-phi, align 1
  %699 = and i32 %693, 255
  %700 = tail call i32 @llvm.ctpop.i32(i32 %699)
  %701 = trunc i32 %700 to i8
  %702 = and i8 %701, 1
  %703 = xor i8 %702, 1
  store i8 %703, i8* %.pre-phi13, align 1
  %704 = xor i32 %692, %693
  %705 = lshr i32 %704, 4
  %706 = trunc i32 %705 to i8
  %707 = and i8 %706, 1
  store i8 %707, i8* %.pre-phi15, align 1
  %708 = zext i1 %696 to i8
  store i8 %708, i8* %.pre-phi17, align 1
  %709 = lshr i32 %693, 31
  %710 = trunc i32 %709 to i8
  store i8 %710, i8* %.pre-phi19, align 1
  %711 = lshr i32 %692, 31
  %712 = xor i32 %709, %711
  %713 = add nuw nsw i32 %712, %709
  %714 = icmp eq i32 %713, 2
  %715 = zext i1 %714 to i8
  store i8 %715, i8* %.pre-phi21, align 1
  %716 = sext i32 %693 to i64
  store i64 %716, i64* %RCX.i486, align 8
  %717 = shl nsw i64 %716, 3
  %718 = add i64 %717, %688
  %719 = add i64 %685, 18
  store i64 %719, i64* %3, align 8
  %720 = inttoptr i64 %718 to i32*
  %721 = load i32, i32* %720, align 4
  store i32 %721, i32* %178, align 1
  store float 0.000000e+00, float* %103, align 1
  store float 0.000000e+00, float* %105, align 1
  store float 0.000000e+00, float* %107, align 1
  %722 = add i64 %683, -16
  %723 = add i64 %685, 22
  store i64 %723, i64* %3, align 8
  %724 = inttoptr i64 %722 to i64*
  %725 = load i64, i64* %724, align 8
  store i64 %725, i64* %RAX.i498, align 8
  %726 = add i64 %683, -40
  %727 = add i64 %685, 26
  store i64 %727, i64* %3, align 8
  %728 = inttoptr i64 %726 to i32*
  %729 = load i32, i32* %728, align 4
  %730 = sext i32 %729 to i64
  store i64 %730, i64* %RCX.i486, align 8
  %731 = shl nsw i64 %730, 3
  %732 = add i64 %725, 4
  %733 = add i64 %732, %731
  %734 = add i64 %685, 32
  store i64 %734, i64* %3, align 8
  %735 = inttoptr i64 %733 to i32*
  %736 = load i32, i32* %735, align 4
  store i32 %736, i32* %447, align 1
  store float 0.000000e+00, float* %116, align 1
  store float 0.000000e+00, float* %118, align 1
  store float 0.000000e+00, float* %120, align 1
  %737 = add i64 %685, 36
  store i64 %737, i64* %3, align 8
  %738 = load i64, i64* %724, align 8
  store i64 %738, i64* %RAX.i498, align 8
  %739 = add i64 %685, 39
  store i64 %739, i64* %3, align 8
  %740 = load i32, i32* %728, align 4
  %741 = zext i32 %740 to i64
  store i64 %741, i64* %RDX.i489, align 8
  %742 = load i64, i64* %RBP.i, align 8
  %743 = add i64 %742, -56
  %744 = add i64 %685, 42
  store i64 %744, i64* %3, align 8
  %745 = inttoptr i64 %743 to i32*
  %746 = load i32, i32* %745, align 4
  %747 = add i32 %746, %740
  %748 = zext i32 %747 to i64
  store i64 %748, i64* %RDX.i489, align 8
  %749 = icmp ult i32 %747, %740
  %750 = icmp ult i32 %747, %746
  %751 = or i1 %749, %750
  %752 = zext i1 %751 to i8
  store i8 %752, i8* %.pre-phi, align 1
  %753 = and i32 %747, 255
  %754 = tail call i32 @llvm.ctpop.i32(i32 %753)
  %755 = trunc i32 %754 to i8
  %756 = and i8 %755, 1
  %757 = xor i8 %756, 1
  store i8 %757, i8* %.pre-phi13, align 1
  %758 = xor i32 %746, %740
  %759 = xor i32 %758, %747
  %760 = lshr i32 %759, 4
  %761 = trunc i32 %760 to i8
  %762 = and i8 %761, 1
  store i8 %762, i8* %.pre-phi15, align 1
  %763 = icmp eq i32 %747, 0
  %764 = zext i1 %763 to i8
  store i8 %764, i8* %.pre-phi17, align 1
  %765 = lshr i32 %747, 31
  %766 = trunc i32 %765 to i8
  store i8 %766, i8* %.pre-phi19, align 1
  %767 = lshr i32 %740, 31
  %768 = lshr i32 %746, 31
  %769 = xor i32 %765, %767
  %770 = xor i32 %765, %768
  %771 = add nuw nsw i32 %769, %770
  %772 = icmp eq i32 %771, 2
  %773 = zext i1 %772 to i8
  store i8 %773, i8* %.pre-phi21, align 1
  %774 = sext i32 %747 to i64
  store i64 %774, i64* %RCX.i486, align 8
  %775 = shl nsw i64 %774, 3
  %776 = add i64 %738, 4
  %777 = add i64 %776, %775
  %778 = add i64 %685, 51
  store i64 %778, i64* %3, align 8
  %779 = load <2 x float>, <2 x float>* %121, align 1
  %780 = load <2 x i32>, <2 x i32>* %122, align 1
  %781 = inttoptr i64 %777 to float*
  %782 = load float, float* %781, align 4
  %783 = extractelement <2 x float> %779, i32 0
  %784 = fsub float %783, %782
  store float %784, float* %114, align 1
  %785 = bitcast <2 x float> %779 to <2 x i32>
  %786 = extractelement <2 x i32> %785, i32 1
  store i32 %786, i32* %123, align 1
  %787 = extractelement <2 x i32> %780, i32 0
  store i32 %787, i32* %124, align 1
  %788 = extractelement <2 x i32> %780, i32 1
  store i32 %788, i32* %125, align 1
  %789 = load <2 x float>, <2 x float>* %40, align 1
  %790 = load <2 x i32>, <2 x i32>* %108, align 1
  %791 = load <2 x float>, <2 x float>* %121, align 1
  %792 = extractelement <2 x float> %789, i32 0
  %793 = extractelement <2 x float> %791, i32 0
  %794 = fmul float %792, %793
  store float %794, float* %101, align 1
  %795 = bitcast <2 x float> %789 to <2 x i32>
  %796 = extractelement <2 x i32> %795, i32 1
  store i32 %796, i32* %109, align 1
  %797 = extractelement <2 x i32> %790, i32 0
  store i32 %797, i32* %110, align 1
  %798 = extractelement <2 x i32> %790, i32 1
  store i32 %798, i32* %111, align 1
  %799 = add i64 %742, -32
  %800 = add i64 %685, 59
  store i64 %800, i64* %3, align 8
  %801 = inttoptr i64 %799 to i64*
  %802 = load i64, i64* %801, align 8
  store i64 %802, i64* %RAX.i498, align 8
  %803 = add i64 %742, -48
  %804 = add i64 %685, 62
  store i64 %804, i64* %3, align 8
  %805 = inttoptr i64 %803 to i32*
  %806 = load i32, i32* %805, align 4
  %807 = add i32 %806, 1
  %808 = zext i32 %807 to i64
  store i64 %808, i64* %RDX.i489, align 8
  %809 = icmp eq i32 %806, -1
  %810 = icmp eq i32 %807, 0
  %811 = or i1 %809, %810
  %812 = zext i1 %811 to i8
  store i8 %812, i8* %.pre-phi, align 1
  %813 = and i32 %807, 255
  %814 = tail call i32 @llvm.ctpop.i32(i32 %813)
  %815 = trunc i32 %814 to i8
  %816 = and i8 %815, 1
  %817 = xor i8 %816, 1
  store i8 %817, i8* %.pre-phi13, align 1
  %818 = xor i32 %806, %807
  %819 = lshr i32 %818, 4
  %820 = trunc i32 %819 to i8
  %821 = and i8 %820, 1
  store i8 %821, i8* %.pre-phi15, align 1
  %822 = zext i1 %810 to i8
  store i8 %822, i8* %.pre-phi17, align 1
  %823 = lshr i32 %807, 31
  %824 = trunc i32 %823 to i8
  store i8 %824, i8* %.pre-phi19, align 1
  %825 = lshr i32 %806, 31
  %826 = xor i32 %823, %825
  %827 = add nuw nsw i32 %826, %823
  %828 = icmp eq i32 %827, 2
  %829 = zext i1 %828 to i8
  store i8 %829, i8* %.pre-phi21, align 1
  %830 = sext i32 %807 to i64
  store i64 %830, i64* %RCX.i486, align 8
  %831 = shl nsw i64 %830, 3
  %832 = add i64 %802, 4
  %833 = add i64 %832, %831
  %834 = add i64 %685, 74
  store i64 %834, i64* %3, align 8
  %835 = inttoptr i64 %833 to i32*
  %836 = load i32, i32* %835, align 4
  store i32 %836, i32* %447, align 1
  store float 0.000000e+00, float* %116, align 1
  store float 0.000000e+00, float* %118, align 1
  store float 0.000000e+00, float* %120, align 1
  %837 = load i64, i64* %RBP.i, align 8
  %838 = add i64 %837, -16
  %839 = add i64 %685, 78
  store i64 %839, i64* %3, align 8
  %840 = inttoptr i64 %838 to i64*
  %841 = load i64, i64* %840, align 8
  store i64 %841, i64* %RAX.i498, align 8
  %842 = add i64 %837, -40
  %843 = add i64 %685, 82
  store i64 %843, i64* %3, align 8
  %844 = inttoptr i64 %842 to i32*
  %845 = load i32, i32* %844, align 4
  %846 = sext i32 %845 to i64
  store i64 %846, i64* %RCX.i486, align 8
  %847 = shl nsw i64 %846, 3
  %848 = add i64 %847, %841
  %849 = add i64 %685, 87
  store i64 %849, i64* %3, align 8
  %850 = inttoptr i64 %848 to i32*
  %851 = load i32, i32* %850, align 4
  store i32 %851, i32* %562, align 1
  store float 0.000000e+00, float* %130, align 1
  store float 0.000000e+00, float* %132, align 1
  store float 0.000000e+00, float* %134, align 1
  %852 = add i64 %685, 91
  store i64 %852, i64* %3, align 8
  %853 = load i64, i64* %840, align 8
  store i64 %853, i64* %RAX.i498, align 8
  %854 = add i64 %685, 94
  store i64 %854, i64* %3, align 8
  %855 = load i32, i32* %844, align 4
  %856 = zext i32 %855 to i64
  store i64 %856, i64* %RDX.i489, align 8
  %857 = add i64 %837, -56
  %858 = add i64 %685, 97
  store i64 %858, i64* %3, align 8
  %859 = inttoptr i64 %857 to i32*
  %860 = load i32, i32* %859, align 4
  %861 = add i32 %860, %855
  %862 = zext i32 %861 to i64
  store i64 %862, i64* %RDX.i489, align 8
  %863 = icmp ult i32 %861, %855
  %864 = icmp ult i32 %861, %860
  %865 = or i1 %863, %864
  %866 = zext i1 %865 to i8
  store i8 %866, i8* %.pre-phi, align 1
  %867 = and i32 %861, 255
  %868 = tail call i32 @llvm.ctpop.i32(i32 %867)
  %869 = trunc i32 %868 to i8
  %870 = and i8 %869, 1
  %871 = xor i8 %870, 1
  store i8 %871, i8* %.pre-phi13, align 1
  %872 = xor i32 %860, %855
  %873 = xor i32 %872, %861
  %874 = lshr i32 %873, 4
  %875 = trunc i32 %874 to i8
  %876 = and i8 %875, 1
  store i8 %876, i8* %.pre-phi15, align 1
  %877 = icmp eq i32 %861, 0
  %878 = zext i1 %877 to i8
  store i8 %878, i8* %.pre-phi17, align 1
  %879 = lshr i32 %861, 31
  %880 = trunc i32 %879 to i8
  store i8 %880, i8* %.pre-phi19, align 1
  %881 = lshr i32 %855, 31
  %882 = lshr i32 %860, 31
  %883 = xor i32 %879, %881
  %884 = xor i32 %879, %882
  %885 = add nuw nsw i32 %883, %884
  %886 = icmp eq i32 %885, 2
  %887 = zext i1 %886 to i8
  store i8 %887, i8* %.pre-phi21, align 1
  %888 = sext i32 %861 to i64
  store i64 %888, i64* %RCX.i486, align 8
  %889 = shl nsw i64 %888, 3
  %890 = add i64 %889, %853
  %891 = add i64 %685, 105
  store i64 %891, i64* %3, align 8
  %892 = load <2 x float>, <2 x float>* %135, align 1
  %893 = load <2 x i32>, <2 x i32>* %136, align 1
  %894 = inttoptr i64 %890 to float*
  %895 = load float, float* %894, align 4
  %896 = extractelement <2 x float> %892, i32 0
  %897 = fsub float %896, %895
  store float %897, float* %128, align 1
  %898 = bitcast <2 x float> %892 to <2 x i32>
  %899 = extractelement <2 x i32> %898, i32 1
  store i32 %899, i32* %137, align 1
  %900 = extractelement <2 x i32> %893, i32 0
  store i32 %900, i32* %138, align 1
  %901 = extractelement <2 x i32> %893, i32 1
  store i32 %901, i32* %139, align 1
  %902 = load <2 x float>, <2 x float>* %121, align 1
  %903 = load <2 x i32>, <2 x i32>* %122, align 1
  %904 = load <2 x float>, <2 x float>* %135, align 1
  %905 = extractelement <2 x float> %902, i32 0
  %906 = extractelement <2 x float> %904, i32 0
  %907 = fmul float %905, %906
  store float %907, float* %114, align 1
  %908 = bitcast <2 x float> %902 to <2 x i32>
  %909 = extractelement <2 x i32> %908, i32 1
  store i32 %909, i32* %123, align 1
  %910 = extractelement <2 x i32> %903, i32 0
  store i32 %910, i32* %124, align 1
  %911 = extractelement <2 x i32> %903, i32 1
  store i32 %911, i32* %125, align 1
  %912 = load <2 x float>, <2 x float>* %40, align 1
  %913 = load <2 x i32>, <2 x i32>* %108, align 1
  %914 = load <2 x float>, <2 x float>* %121, align 1
  %915 = extractelement <2 x float> %912, i32 0
  %916 = extractelement <2 x float> %914, i32 0
  %917 = fadd float %915, %916
  store float %917, float* %101, align 1
  %918 = bitcast <2 x float> %912 to <2 x i32>
  %919 = extractelement <2 x i32> %918, i32 1
  store i32 %919, i32* %109, align 1
  %920 = extractelement <2 x i32> %913, i32 0
  store i32 %920, i32* %110, align 1
  %921 = extractelement <2 x i32> %913, i32 1
  store i32 %921, i32* %111, align 1
  %922 = load i64, i64* %RBP.i, align 8
  %923 = add i64 %922, -24
  %924 = add i64 %685, 117
  store i64 %924, i64* %3, align 8
  %925 = inttoptr i64 %923 to i64*
  %926 = load i64, i64* %925, align 8
  store i64 %926, i64* %RAX.i498, align 8
  %927 = add i64 %922, -40
  %928 = add i64 %685, 120
  store i64 %928, i64* %3, align 8
  %929 = inttoptr i64 %927 to i32*
  %930 = load i32, i32* %929, align 4
  %931 = zext i32 %930 to i64
  store i64 %931, i64* %RDX.i489, align 8
  %932 = add i64 %922, -44
  %933 = add i64 %685, 123
  store i64 %933, i64* %3, align 8
  %934 = inttoptr i64 %932 to i32*
  %935 = load i32, i32* %934, align 4
  %936 = add i32 %935, %930
  %937 = zext i32 %936 to i64
  store i64 %937, i64* %RDX.i489, align 8
  %938 = icmp ult i32 %936, %930
  %939 = icmp ult i32 %936, %935
  %940 = or i1 %938, %939
  %941 = zext i1 %940 to i8
  store i8 %941, i8* %.pre-phi, align 1
  %942 = and i32 %936, 255
  %943 = tail call i32 @llvm.ctpop.i32(i32 %942)
  %944 = trunc i32 %943 to i8
  %945 = and i8 %944, 1
  %946 = xor i8 %945, 1
  store i8 %946, i8* %.pre-phi13, align 1
  %947 = xor i32 %935, %930
  %948 = xor i32 %947, %936
  %949 = lshr i32 %948, 4
  %950 = trunc i32 %949 to i8
  %951 = and i8 %950, 1
  store i8 %951, i8* %.pre-phi15, align 1
  %952 = icmp eq i32 %936, 0
  %953 = zext i1 %952 to i8
  store i8 %953, i8* %.pre-phi17, align 1
  %954 = lshr i32 %936, 31
  %955 = trunc i32 %954 to i8
  store i8 %955, i8* %.pre-phi19, align 1
  %956 = lshr i32 %930, 31
  %957 = lshr i32 %935, 31
  %958 = xor i32 %954, %956
  %959 = xor i32 %954, %957
  %960 = add nuw nsw i32 %958, %959
  %961 = icmp eq i32 %960, 2
  %962 = zext i1 %961 to i8
  store i8 %962, i8* %.pre-phi21, align 1
  %963 = sext i32 %936 to i64
  store i64 %963, i64* %RCX.i486, align 8
  %964 = shl nsw i64 %963, 3
  %965 = add i64 %926, 4
  %966 = add i64 %965, %964
  %967 = add i64 %685, 132
  store i64 %967, i64* %3, align 8
  %968 = load <2 x float>, <2 x float>* %40, align 1
  %969 = extractelement <2 x float> %968, i32 0
  %970 = inttoptr i64 %966 to float*
  store float %969, float* %970, align 4
  %971 = load i64, i64* %RBP.i, align 8
  %972 = add i64 %971, -40
  %973 = load i64, i64* %3, align 8
  %974 = add i64 %973, 3
  store i64 %974, i64* %3, align 8
  %975 = inttoptr i64 %972 to i32*
  %976 = load i32, i32* %975, align 4
  %977 = add i32 %976, 1
  %978 = zext i32 %977 to i64
  store i64 %978, i64* %RDX.i489, align 8
  %979 = icmp eq i32 %976, -1
  %980 = icmp eq i32 %977, 0
  %981 = or i1 %979, %980
  %982 = zext i1 %981 to i8
  store i8 %982, i8* %.pre-phi, align 1
  %983 = and i32 %977, 255
  %984 = tail call i32 @llvm.ctpop.i32(i32 %983)
  %985 = trunc i32 %984 to i8
  %986 = and i8 %985, 1
  %987 = xor i8 %986, 1
  store i8 %987, i8* %.pre-phi13, align 1
  %988 = xor i32 %976, %977
  %989 = lshr i32 %988, 4
  %990 = trunc i32 %989 to i8
  %991 = and i8 %990, 1
  store i8 %991, i8* %.pre-phi15, align 1
  %992 = zext i1 %980 to i8
  store i8 %992, i8* %.pre-phi17, align 1
  %993 = lshr i32 %977, 31
  %994 = trunc i32 %993 to i8
  store i8 %994, i8* %.pre-phi19, align 1
  %995 = lshr i32 %976, 31
  %996 = xor i32 %993, %995
  %997 = add nuw nsw i32 %996, %993
  %998 = icmp eq i32 %997, 2
  %999 = zext i1 %998 to i8
  store i8 %999, i8* %.pre-phi21, align 1
  %1000 = add i64 %973, 9
  store i64 %1000, i64* %3, align 8
  store i32 %977, i32* %975, align 4
  %1001 = load i64, i64* %RBP.i, align 8
  %1002 = add i64 %1001, -40
  %1003 = load i64, i64* %3, align 8
  %1004 = add i64 %1003, 3
  store i64 %1004, i64* %3, align 8
  %1005 = inttoptr i64 %1002 to i32*
  %1006 = load i32, i32* %1005, align 4
  %1007 = zext i32 %1006 to i64
  store i64 %1007, i64* %RAX.i498, align 8
  %1008 = add i64 %1001, -44
  %1009 = add i64 %1003, 6
  store i64 %1009, i64* %3, align 8
  %1010 = inttoptr i64 %1008 to i32*
  %1011 = load i32, i32* %1010, align 4
  %1012 = sub i32 %1006, %1011
  %1013 = icmp ult i32 %1006, %1011
  %1014 = zext i1 %1013 to i8
  store i8 %1014, i8* %.pre-phi, align 1
  %1015 = and i32 %1012, 255
  %1016 = tail call i32 @llvm.ctpop.i32(i32 %1015)
  %1017 = trunc i32 %1016 to i8
  %1018 = and i8 %1017, 1
  %1019 = xor i8 %1018, 1
  store i8 %1019, i8* %.pre-phi13, align 1
  %1020 = xor i32 %1011, %1006
  %1021 = xor i32 %1020, %1012
  %1022 = lshr i32 %1021, 4
  %1023 = trunc i32 %1022 to i8
  %1024 = and i8 %1023, 1
  store i8 %1024, i8* %.pre-phi15, align 1
  %1025 = icmp eq i32 %1012, 0
  %1026 = zext i1 %1025 to i8
  store i8 %1026, i8* %.pre-phi17, align 1
  %1027 = lshr i32 %1012, 31
  %1028 = trunc i32 %1027 to i8
  store i8 %1028, i8* %.pre-phi19, align 1
  %1029 = lshr i32 %1006, 31
  %1030 = lshr i32 %1011, 31
  %1031 = xor i32 %1030, %1029
  %1032 = xor i32 %1027, %1029
  %1033 = add nuw nsw i32 %1032, %1031
  %1034 = icmp eq i32 %1033, 2
  %1035 = zext i1 %1034 to i8
  store i8 %1035, i8* %.pre-phi21, align 1
  %1036 = icmp ne i8 %1028, 0
  %1037 = xor i1 %1036, %1034
  %1038 = or i1 %1025, %1037
  %.v = select i1 %1038, i64 -373, i64 12
  %1039 = add i64 %1003, %.v
  store i64 %1039, i64* %3, align 8
  br i1 %1038, label %block_.L_400a6e, label %block_400bef

block_400bef:                                     ; preds = %block_.L_400a6e
  %1040 = add i64 %1039, 3
  store i64 %1040, i64* %3, align 8
  %1041 = load i32, i32* %1010, align 4
  %1042 = zext i32 %1041 to i64
  store i64 %1042, i64* %RAX.i498, align 8
  %1043 = add i64 %1001, -48
  %1044 = add i64 %1039, 6
  store i64 %1044, i64* %3, align 8
  %1045 = inttoptr i64 %1043 to i32*
  store i32 %1041, i32* %1045, align 4
  %1046 = load i64, i64* %RBP.i, align 8
  %1047 = add i64 %1046, -48
  %1048 = load i64, i64* %3, align 8
  %1049 = add i64 %1048, 3
  store i64 %1049, i64* %3, align 8
  %1050 = inttoptr i64 %1047 to i32*
  %1051 = load i32, i32* %1050, align 4
  %1052 = zext i32 %1051 to i64
  store i64 %1052, i64* %RAX.i498, align 8
  %1053 = add i64 %1046, -52
  %1054 = add i64 %1048, 6
  store i64 %1054, i64* %3, align 8
  %1055 = inttoptr i64 %1053 to i32*
  %1056 = load i32, i32* %1055, align 4
  %1057 = add i32 %1056, %1051
  %1058 = zext i32 %1057 to i64
  store i64 %1058, i64* %RAX.i498, align 8
  %1059 = icmp ult i32 %1057, %1051
  %1060 = icmp ult i32 %1057, %1056
  %1061 = or i1 %1059, %1060
  %1062 = zext i1 %1061 to i8
  store i8 %1062, i8* %.pre-phi, align 1
  %1063 = and i32 %1057, 255
  %1064 = tail call i32 @llvm.ctpop.i32(i32 %1063)
  %1065 = trunc i32 %1064 to i8
  %1066 = and i8 %1065, 1
  %1067 = xor i8 %1066, 1
  store i8 %1067, i8* %.pre-phi13, align 1
  %1068 = xor i32 %1056, %1051
  %1069 = xor i32 %1068, %1057
  %1070 = lshr i32 %1069, 4
  %1071 = trunc i32 %1070 to i8
  %1072 = and i8 %1071, 1
  store i8 %1072, i8* %.pre-phi15, align 1
  %1073 = icmp eq i32 %1057, 0
  %1074 = zext i1 %1073 to i8
  store i8 %1074, i8* %.pre-phi17, align 1
  %1075 = lshr i32 %1057, 31
  %1076 = trunc i32 %1075 to i8
  store i8 %1076, i8* %.pre-phi19, align 1
  %1077 = lshr i32 %1051, 31
  %1078 = lshr i32 %1056, 31
  %1079 = xor i32 %1075, %1077
  %1080 = xor i32 %1075, %1078
  %1081 = add nuw nsw i32 %1079, %1080
  %1082 = icmp eq i32 %1081, 2
  %1083 = zext i1 %1082 to i8
  store i8 %1083, i8* %.pre-phi21, align 1
  %1084 = add i64 %1046, -44
  %1085 = add i64 %1048, 9
  store i64 %1085, i64* %3, align 8
  %1086 = inttoptr i64 %1084 to i32*
  store i32 %1057, i32* %1086, align 4
  %1087 = load i64, i64* %RBP.i, align 8
  %1088 = add i64 %1087, -44
  %1089 = load i64, i64* %3, align 8
  %1090 = add i64 %1089, 3
  store i64 %1090, i64* %3, align 8
  %1091 = inttoptr i64 %1088 to i32*
  %1092 = load i32, i32* %1091, align 4
  %1093 = zext i32 %1092 to i64
  store i64 %1093, i64* %RAX.i498, align 8
  %1094 = add i64 %1087, -56
  %1095 = add i64 %1089, 6
  store i64 %1095, i64* %3, align 8
  %1096 = inttoptr i64 %1094 to i32*
  %1097 = load i32, i32* %1096, align 4
  %1098 = sub i32 %1092, %1097
  %1099 = icmp ult i32 %1092, %1097
  %1100 = zext i1 %1099 to i8
  store i8 %1100, i8* %.pre-phi, align 1
  %1101 = and i32 %1098, 255
  %1102 = tail call i32 @llvm.ctpop.i32(i32 %1101)
  %1103 = trunc i32 %1102 to i8
  %1104 = and i8 %1103, 1
  %1105 = xor i8 %1104, 1
  store i8 %1105, i8* %.pre-phi13, align 1
  %1106 = xor i32 %1097, %1092
  %1107 = xor i32 %1106, %1098
  %1108 = lshr i32 %1107, 4
  %1109 = trunc i32 %1108 to i8
  %1110 = and i8 %1109, 1
  store i8 %1110, i8* %.pre-phi15, align 1
  %1111 = icmp eq i32 %1098, 0
  %1112 = zext i1 %1111 to i8
  store i8 %1112, i8* %.pre-phi17, align 1
  %1113 = lshr i32 %1098, 31
  %1114 = trunc i32 %1113 to i8
  store i8 %1114, i8* %.pre-phi19, align 1
  %1115 = lshr i32 %1092, 31
  %1116 = lshr i32 %1097, 31
  %1117 = xor i32 %1116, %1115
  %1118 = xor i32 %1113, %1115
  %1119 = add nuw nsw i32 %1118, %1117
  %1120 = icmp eq i32 %1119, 2
  %1121 = zext i1 %1120 to i8
  store i8 %1121, i8* %.pre-phi21, align 1
  %1122 = icmp ne i8 %1114, 0
  %1123 = xor i1 %1122, %1120
  %1124 = or i1 %1111, %1123
  %.v22 = select i1 %1124, i64 -405, i64 12
  %1125 = add i64 %1089, %.v22
  store i64 %1125, i64* %3, align 8
  br i1 %1124, label %block_.L_400a69, label %block_400c0a

block_400c0a:                                     ; preds = %block_400bef
  %1126 = add i64 %1087, -60
  %1127 = add i64 %1125, 7
  store i64 %1127, i64* %3, align 8
  %1128 = inttoptr i64 %1126 to i32*
  store i32 1, i32* %1128, align 4
  %.pre7 = load i64, i64* %RBP.i, align 8
  %.pre8 = load i64, i64* %3, align 8
  br label %block_.L_400c11

block_.L_400c11:                                  ; preds = %block_.L_400c11, %block_400c0a
  %1129 = phi i64 [ %1224, %block_.L_400c11 ], [ %.pre8, %block_400c0a ]
  %1130 = phi i64 [ %1186, %block_.L_400c11 ], [ %.pre7, %block_400c0a ]
  %1131 = add i64 %1130, -16
  %1132 = add i64 %1129, 4
  store i64 %1132, i64* %3, align 8
  %1133 = inttoptr i64 %1131 to i64*
  %1134 = load i64, i64* %1133, align 8
  store i64 %1134, i64* %RAX.i498, align 8
  %1135 = add i64 %1130, -60
  %1136 = add i64 %1129, 8
  store i64 %1136, i64* %3, align 8
  %1137 = inttoptr i64 %1135 to i32*
  %1138 = load i32, i32* %1137, align 4
  %1139 = sext i32 %1138 to i64
  store i64 %1139, i64* %RCX.i486, align 8
  %1140 = add i64 %1130, -24
  %1141 = add i64 %1129, 12
  store i64 %1141, i64* %3, align 8
  %1142 = inttoptr i64 %1140 to i64*
  %1143 = load i64, i64* %1142, align 8
  store i64 %1143, i64* %RDX.i489, align 8
  %1144 = add i64 %1129, 16
  store i64 %1144, i64* %3, align 8
  %1145 = load i32, i32* %1137, align 4
  %1146 = sext i32 %1145 to i64
  store i64 %1146, i64* %RSI.i492, align 8
  %1147 = shl nsw i64 %1146, 3
  %1148 = add i64 %1147, %1143
  %1149 = add i64 %1129, 20
  store i64 %1149, i64* %3, align 8
  %1150 = inttoptr i64 %1148 to i64*
  %1151 = load i64, i64* %1150, align 8
  store i64 %1151, i64* %RDX.i489, align 8
  %1152 = shl nsw i64 %1139, 3
  %1153 = add i64 %1152, %1134
  %1154 = add i64 %1129, 24
  store i64 %1154, i64* %3, align 8
  %1155 = inttoptr i64 %1153 to i64*
  store i64 %1151, i64* %1155, align 8
  %1156 = load i64, i64* %RBP.i, align 8
  %1157 = add i64 %1156, -60
  %1158 = load i64, i64* %3, align 8
  %1159 = add i64 %1158, 3
  store i64 %1159, i64* %3, align 8
  %1160 = inttoptr i64 %1157 to i32*
  %1161 = load i32, i32* %1160, align 4
  %1162 = add i32 %1161, 1
  %1163 = zext i32 %1162 to i64
  store i64 %1163, i64* %RDI.i480, align 8
  %1164 = icmp eq i32 %1161, -1
  %1165 = icmp eq i32 %1162, 0
  %1166 = or i1 %1164, %1165
  %1167 = zext i1 %1166 to i8
  store i8 %1167, i8* %.pre-phi, align 1
  %1168 = and i32 %1162, 255
  %1169 = tail call i32 @llvm.ctpop.i32(i32 %1168)
  %1170 = trunc i32 %1169 to i8
  %1171 = and i8 %1170, 1
  %1172 = xor i8 %1171, 1
  store i8 %1172, i8* %.pre-phi13, align 1
  %1173 = xor i32 %1161, %1162
  %1174 = lshr i32 %1173, 4
  %1175 = trunc i32 %1174 to i8
  %1176 = and i8 %1175, 1
  store i8 %1176, i8* %.pre-phi15, align 1
  %1177 = zext i1 %1165 to i8
  store i8 %1177, i8* %.pre-phi17, align 1
  %1178 = lshr i32 %1162, 31
  %1179 = trunc i32 %1178 to i8
  store i8 %1179, i8* %.pre-phi19, align 1
  %1180 = lshr i32 %1161, 31
  %1181 = xor i32 %1178, %1180
  %1182 = add nuw nsw i32 %1181, %1178
  %1183 = icmp eq i32 %1182, 2
  %1184 = zext i1 %1183 to i8
  store i8 %1184, i8* %.pre-phi21, align 1
  %1185 = add i64 %1158, 9
  store i64 %1185, i64* %3, align 8
  store i32 %1162, i32* %1160, align 4
  %1186 = load i64, i64* %RBP.i, align 8
  %1187 = add i64 %1186, -60
  %1188 = load i64, i64* %3, align 8
  %1189 = add i64 %1188, 3
  store i64 %1189, i64* %3, align 8
  %1190 = inttoptr i64 %1187 to i32*
  %1191 = load i32, i32* %1190, align 4
  %1192 = zext i32 %1191 to i64
  store i64 %1192, i64* %RAX.i498, align 8
  %1193 = add i64 %1186, -4
  %1194 = add i64 %1188, 6
  store i64 %1194, i64* %3, align 8
  %1195 = inttoptr i64 %1193 to i32*
  %1196 = load i32, i32* %1195, align 4
  %1197 = sub i32 %1191, %1196
  %1198 = icmp ult i32 %1191, %1196
  %1199 = zext i1 %1198 to i8
  store i8 %1199, i8* %.pre-phi, align 1
  %1200 = and i32 %1197, 255
  %1201 = tail call i32 @llvm.ctpop.i32(i32 %1200)
  %1202 = trunc i32 %1201 to i8
  %1203 = and i8 %1202, 1
  %1204 = xor i8 %1203, 1
  store i8 %1204, i8* %.pre-phi13, align 1
  %1205 = xor i32 %1196, %1191
  %1206 = xor i32 %1205, %1197
  %1207 = lshr i32 %1206, 4
  %1208 = trunc i32 %1207 to i8
  %1209 = and i8 %1208, 1
  store i8 %1209, i8* %.pre-phi15, align 1
  %1210 = icmp eq i32 %1197, 0
  %1211 = zext i1 %1210 to i8
  store i8 %1211, i8* %.pre-phi17, align 1
  %1212 = lshr i32 %1197, 31
  %1213 = trunc i32 %1212 to i8
  store i8 %1213, i8* %.pre-phi19, align 1
  %1214 = lshr i32 %1191, 31
  %1215 = lshr i32 %1196, 31
  %1216 = xor i32 %1215, %1214
  %1217 = xor i32 %1212, %1214
  %1218 = add nuw nsw i32 %1217, %1216
  %1219 = icmp eq i32 %1218, 2
  %1220 = zext i1 %1219 to i8
  store i8 %1220, i8* %.pre-phi21, align 1
  %1221 = icmp ne i8 %1213, 0
  %1222 = xor i1 %1221, %1219
  %1223 = or i1 %1210, %1222
  %.v23 = select i1 %1223, i64 -33, i64 12
  %1224 = add i64 %1188, %.v23
  store i64 %1224, i64* %3, align 8
  br i1 %1223, label %block_.L_400c11, label %block_400c3e

block_400c3e:                                     ; preds = %block_.L_400c11
  %1225 = add i64 %1186, -52
  %1226 = add i64 %1224, 3
  store i64 %1226, i64* %3, align 8
  %1227 = inttoptr i64 %1225 to i32*
  %1228 = load i32, i32* %1227, align 4
  %1229 = zext i32 %1228 to i64
  store i64 %1229, i64* %RAX.i498, align 8
  %1230 = add i64 %1224, 6
  store i64 %1230, i64* %3, align 8
  %1231 = load i32, i32* %1227, align 4
  %1232 = add i32 %1231, %1228
  %1233 = zext i32 %1232 to i64
  store i64 %1233, i64* %RAX.i498, align 8
  %1234 = icmp ult i32 %1232, %1228
  %1235 = icmp ult i32 %1232, %1231
  %1236 = or i1 %1234, %1235
  %1237 = zext i1 %1236 to i8
  store i8 %1237, i8* %.pre-phi, align 1
  %1238 = and i32 %1232, 255
  %1239 = tail call i32 @llvm.ctpop.i32(i32 %1238)
  %1240 = trunc i32 %1239 to i8
  %1241 = and i8 %1240, 1
  %1242 = xor i8 %1241, 1
  store i8 %1242, i8* %.pre-phi13, align 1
  %1243 = xor i32 %1231, %1228
  %1244 = xor i32 %1243, %1232
  %1245 = lshr i32 %1244, 4
  %1246 = trunc i32 %1245 to i8
  %1247 = and i8 %1246, 1
  store i8 %1247, i8* %.pre-phi15, align 1
  %1248 = icmp eq i32 %1232, 0
  %1249 = zext i1 %1248 to i8
  store i8 %1249, i8* %.pre-phi17, align 1
  %1250 = lshr i32 %1232, 31
  %1251 = trunc i32 %1250 to i8
  store i8 %1251, i8* %.pre-phi19, align 1
  %1252 = lshr i32 %1228, 31
  %1253 = lshr i32 %1231, 31
  %1254 = xor i32 %1250, %1252
  %1255 = xor i32 %1250, %1253
  %1256 = add nuw nsw i32 %1254, %1255
  %1257 = icmp eq i32 %1256, 2
  %1258 = zext i1 %1257 to i8
  store i8 %1258, i8* %.pre-phi21, align 1
  %1259 = add i64 %1224, 9
  store i64 %1259, i64* %3, align 8
  store i32 %1232, i32* %1227, align 4
  %1260 = load i64, i64* %RBP.i, align 8
  %1261 = add i64 %1260, -52
  %1262 = load i64, i64* %3, align 8
  %1263 = add i64 %1262, 3
  store i64 %1263, i64* %3, align 8
  %1264 = inttoptr i64 %1261 to i32*
  %1265 = load i32, i32* %1264, align 4
  %1266 = zext i32 %1265 to i64
  store i64 %1266, i64* %RAX.i498, align 8
  %1267 = add i64 %1260, -56
  %1268 = add i64 %1262, 6
  store i64 %1268, i64* %3, align 8
  %1269 = inttoptr i64 %1267 to i32*
  %1270 = load i32, i32* %1269, align 4
  %1271 = sub i32 %1265, %1270
  %1272 = icmp ult i32 %1265, %1270
  %1273 = zext i1 %1272 to i8
  store i8 %1273, i8* %.pre-phi, align 1
  %1274 = and i32 %1271, 255
  %1275 = tail call i32 @llvm.ctpop.i32(i32 %1274)
  %1276 = trunc i32 %1275 to i8
  %1277 = and i8 %1276, 1
  %1278 = xor i8 %1277, 1
  store i8 %1278, i8* %.pre-phi13, align 1
  %1279 = xor i32 %1270, %1265
  %1280 = xor i32 %1279, %1271
  %1281 = lshr i32 %1280, 4
  %1282 = trunc i32 %1281 to i8
  %1283 = and i8 %1282, 1
  store i8 %1283, i8* %.pre-phi15, align 1
  %1284 = icmp eq i32 %1271, 0
  %1285 = zext i1 %1284 to i8
  store i8 %1285, i8* %.pre-phi17, align 1
  %1286 = lshr i32 %1271, 31
  %1287 = trunc i32 %1286 to i8
  store i8 %1287, i8* %.pre-phi19, align 1
  %1288 = lshr i32 %1265, 31
  %1289 = lshr i32 %1270, 31
  %1290 = xor i32 %1289, %1288
  %1291 = xor i32 %1286, %1288
  %1292 = add nuw nsw i32 %1291, %1290
  %1293 = icmp eq i32 %1292, 2
  %1294 = zext i1 %1293 to i8
  store i8 %1294, i8* %.pre-phi21, align 1
  %1295 = icmp ne i8 %1287, 0
  %1296 = xor i1 %1295, %1293
  %1297 = or i1 %1284, %1296
  %.v24 = select i1 %1297, i64 -498, i64 12
  %1298 = add i64 %1262, %.v24
  store i64 %1298, i64* %3, align 8
  br i1 %1297, label %block_.L_400a55, label %block_400c53

block_400c53:                                     ; preds = %block_400c3e
  %1299 = add i64 %1260, -40
  %1300 = add i64 %1298, 7
  store i64 %1300, i64* %3, align 8
  %1301 = inttoptr i64 %1299 to i32*
  store i32 1, i32* %1301, align 4
  %1302 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %35, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %1303 = bitcast i64* %RDX.i489 to [2 x i32]*
  %1304 = bitcast i64* %RDX.i489 to i32*
  %1305 = getelementptr inbounds [2 x i32], [2 x i32]* %1303, i64 0, i64 1
  %.pre9 = load i64, i64* %3, align 8
  br label %block_.L_400c5a

block_.L_400c5a:                                  ; preds = %block_400c66, %block_400c53
  %1306 = phi i64 [ %1468, %block_400c66 ], [ %.pre9, %block_400c53 ]
  %1307 = load i64, i64* %RBP.i, align 8
  %1308 = add i64 %1307, -40
  %1309 = add i64 %1306, 3
  store i64 %1309, i64* %3, align 8
  %1310 = inttoptr i64 %1308 to i32*
  %1311 = load i32, i32* %1310, align 4
  %1312 = zext i32 %1311 to i64
  store i64 %1312, i64* %RAX.i498, align 8
  %1313 = add i64 %1307, -4
  %1314 = add i64 %1306, 6
  store i64 %1314, i64* %3, align 8
  %1315 = inttoptr i64 %1313 to i32*
  %1316 = load i32, i32* %1315, align 4
  %1317 = sub i32 %1311, %1316
  %1318 = icmp ult i32 %1311, %1316
  %1319 = zext i1 %1318 to i8
  store i8 %1319, i8* %.pre-phi, align 1
  %1320 = and i32 %1317, 255
  %1321 = tail call i32 @llvm.ctpop.i32(i32 %1320)
  %1322 = trunc i32 %1321 to i8
  %1323 = and i8 %1322, 1
  %1324 = xor i8 %1323, 1
  store i8 %1324, i8* %.pre-phi13, align 1
  %1325 = xor i32 %1316, %1311
  %1326 = xor i32 %1325, %1317
  %1327 = lshr i32 %1326, 4
  %1328 = trunc i32 %1327 to i8
  %1329 = and i8 %1328, 1
  store i8 %1329, i8* %.pre-phi15, align 1
  %1330 = icmp eq i32 %1317, 0
  %1331 = zext i1 %1330 to i8
  store i8 %1331, i8* %.pre-phi17, align 1
  %1332 = lshr i32 %1317, 31
  %1333 = trunc i32 %1332 to i8
  store i8 %1333, i8* %.pre-phi19, align 1
  %1334 = lshr i32 %1311, 31
  %1335 = lshr i32 %1316, 31
  %1336 = xor i32 %1335, %1334
  %1337 = xor i32 %1332, %1334
  %1338 = add nuw nsw i32 %1337, %1336
  %1339 = icmp eq i32 %1338, 2
  %1340 = zext i1 %1339 to i8
  store i8 %1340, i8* %.pre-phi21, align 1
  %1341 = icmp ne i8 %1333, 0
  %1342 = xor i1 %1341, %1339
  %.demorgan = or i1 %1330, %1342
  %.v25 = select i1 %.demorgan, i64 12, i64 104
  %1343 = add i64 %1306, %.v25
  store i64 %1343, i64* %3, align 8
  br i1 %.demorgan, label %block_400c66, label %block_.L_400cc2

block_400c66:                                     ; preds = %block_.L_400c5a
  %1344 = add i64 %1307, -36
  %1345 = add i64 %1343, 5
  store i64 %1345, i64* %3, align 8
  %1346 = inttoptr i64 %1344 to i32*
  %1347 = load i32, i32* %1346, align 4
  store i32 %1347, i32* %178, align 1
  store float 0.000000e+00, float* %103, align 1
  store float 0.000000e+00, float* %105, align 1
  store float 0.000000e+00, float* %107, align 1
  %1348 = add i64 %1307, -16
  %1349 = add i64 %1343, 9
  store i64 %1349, i64* %3, align 8
  %1350 = inttoptr i64 %1348 to i64*
  %1351 = load i64, i64* %1350, align 8
  store i64 %1351, i64* %RAX.i498, align 8
  %1352 = add i64 %1343, 13
  store i64 %1352, i64* %3, align 8
  %1353 = load i32, i32* %1310, align 4
  %1354 = sext i32 %1353 to i64
  store i64 %1354, i64* %RCX.i486, align 8
  %1355 = shl nsw i64 %1354, 3
  %1356 = add i64 %1355, %1351
  %1357 = add i64 %1343, 18
  store i64 %1357, i64* %3, align 8
  %1358 = load <2 x float>, <2 x float>* %40, align 1
  %1359 = load <2 x i32>, <2 x i32>* %108, align 1
  %1360 = inttoptr i64 %1356 to float*
  %1361 = load float, float* %1360, align 4
  %1362 = extractelement <2 x float> %1358, i32 0
  %1363 = fmul float %1362, %1361
  store float %1363, float* %101, align 1
  %1364 = bitcast <2 x float> %1358 to <2 x i32>
  %1365 = extractelement <2 x i32> %1364, i32 1
  store i32 %1365, i32* %109, align 1
  %1366 = extractelement <2 x i32> %1359, i32 0
  store i32 %1366, i32* %110, align 1
  %1367 = extractelement <2 x i32> %1359, i32 1
  store i32 %1367, i32* %111, align 1
  %1368 = add i64 %1343, 22
  store i64 %1368, i64* %3, align 8
  %1369 = load i64, i64* %1350, align 8
  store i64 %1369, i64* %RAX.i498, align 8
  %1370 = add i64 %1343, 26
  store i64 %1370, i64* %3, align 8
  %1371 = load i32, i32* %1310, align 4
  %1372 = sext i32 %1371 to i64
  store i64 %1372, i64* %RCX.i486, align 8
  %1373 = shl nsw i64 %1372, 3
  %1374 = add i64 %1373, %1369
  %1375 = add i64 %1343, 31
  store i64 %1375, i64* %3, align 8
  %1376 = load <2 x float>, <2 x float>* %40, align 1
  %1377 = extractelement <2 x float> %1376, i32 0
  %1378 = inttoptr i64 %1374 to float*
  store float %1377, float* %1378, align 4
  %1379 = load i64, i64* %RBP.i, align 8
  %1380 = add i64 %1379, -36
  %1381 = load i64, i64* %3, align 8
  %1382 = add i64 %1381, 5
  store i64 %1382, i64* %3, align 8
  %1383 = inttoptr i64 %1380 to i32*
  %1384 = load i32, i32* %1383, align 4
  store i32 %1384, i32* %178, align 1
  store float 0.000000e+00, float* %103, align 1
  %1385 = add i64 %1381, 9
  store i64 %1385, i64* %3, align 8
  %1386 = load i64, i64* %1302, align 1
  %1387 = trunc i64 %1386 to i32
  store i32 %1387, i32* %1304, align 1
  store i32 0, i32* %1305, align 1
  %1388 = load i64, i64* %RDX.i489, align 8
  %1389 = xor i64 %1388, -2147483648
  %1390 = trunc i64 %1389 to i32
  %1391 = and i64 %1389, 4294967295
  store i64 %1391, i64* %RDX.i489, align 8
  store i8 0, i8* %.pre-phi, align 1
  %1392 = and i32 %1390, 255
  %1393 = tail call i32 @llvm.ctpop.i32(i32 %1392)
  %1394 = trunc i32 %1393 to i8
  %1395 = and i8 %1394, 1
  %1396 = xor i8 %1395, 1
  store i8 %1396, i8* %.pre-phi13, align 1
  %1397 = icmp eq i32 %1390, 0
  %1398 = zext i1 %1397 to i8
  store i8 %1398, i8* %.pre-phi17, align 1
  %1399 = lshr i32 %1390, 31
  %1400 = trunc i32 %1399 to i8
  store i8 %1400, i8* %.pre-phi19, align 1
  store i8 0, i8* %.pre-phi21, align 1
  store i8 0, i8* %.pre-phi15, align 1
  store i32 %1390, i32* %178, align 1
  store i32 0, i32* %109, align 1
  store i32 0, i32* %110, align 1
  store i32 0, i32* %111, align 1
  %1401 = load i64, i64* %RBP.i, align 8
  %1402 = add i64 %1401, -16
  %1403 = add i64 %1381, 23
  store i64 %1403, i64* %3, align 8
  %1404 = inttoptr i64 %1402 to i64*
  %1405 = load i64, i64* %1404, align 8
  store i64 %1405, i64* %RAX.i498, align 8
  %1406 = add i64 %1401, -40
  %1407 = add i64 %1381, 27
  store i64 %1407, i64* %3, align 8
  %1408 = inttoptr i64 %1406 to i32*
  %1409 = load i32, i32* %1408, align 4
  %1410 = sext i32 %1409 to i64
  store i64 %1410, i64* %RCX.i486, align 8
  %1411 = shl nsw i64 %1410, 3
  %1412 = add i64 %1405, 4
  %1413 = add i64 %1412, %1411
  %1414 = add i64 %1381, 33
  store i64 %1414, i64* %3, align 8
  %1415 = load <2 x float>, <2 x float>* %40, align 1
  %1416 = load <2 x i32>, <2 x i32>* %108, align 1
  %1417 = inttoptr i64 %1413 to float*
  %1418 = load float, float* %1417, align 4
  %1419 = extractelement <2 x float> %1415, i32 0
  %1420 = fmul float %1419, %1418
  store float %1420, float* %101, align 1
  %1421 = bitcast <2 x float> %1415 to <2 x i32>
  %1422 = extractelement <2 x i32> %1421, i32 1
  store i32 %1422, i32* %109, align 1
  %1423 = extractelement <2 x i32> %1416, i32 0
  store i32 %1423, i32* %110, align 1
  %1424 = extractelement <2 x i32> %1416, i32 1
  store i32 %1424, i32* %111, align 1
  %1425 = add i64 %1381, 37
  store i64 %1425, i64* %3, align 8
  %1426 = load i64, i64* %1404, align 8
  store i64 %1426, i64* %RAX.i498, align 8
  %1427 = add i64 %1381, 41
  store i64 %1427, i64* %3, align 8
  %1428 = load i32, i32* %1408, align 4
  %1429 = sext i32 %1428 to i64
  store i64 %1429, i64* %RCX.i486, align 8
  %1430 = shl nsw i64 %1429, 3
  %1431 = add i64 %1426, 4
  %1432 = add i64 %1431, %1430
  %1433 = add i64 %1381, 47
  store i64 %1433, i64* %3, align 8
  %1434 = load <2 x float>, <2 x float>* %40, align 1
  %1435 = extractelement <2 x float> %1434, i32 0
  %1436 = inttoptr i64 %1432 to float*
  store float %1435, float* %1436, align 4
  %1437 = load i64, i64* %RBP.i, align 8
  %1438 = add i64 %1437, -40
  %1439 = load i64, i64* %3, align 8
  %1440 = add i64 %1439, 3
  store i64 %1440, i64* %3, align 8
  %1441 = inttoptr i64 %1438 to i32*
  %1442 = load i32, i32* %1441, align 4
  %1443 = add i32 %1442, 1
  %1444 = zext i32 %1443 to i64
  store i64 %1444, i64* %RAX.i498, align 8
  %1445 = icmp eq i32 %1442, -1
  %1446 = icmp eq i32 %1443, 0
  %1447 = or i1 %1445, %1446
  %1448 = zext i1 %1447 to i8
  store i8 %1448, i8* %.pre-phi, align 1
  %1449 = and i32 %1443, 255
  %1450 = tail call i32 @llvm.ctpop.i32(i32 %1449)
  %1451 = trunc i32 %1450 to i8
  %1452 = and i8 %1451, 1
  %1453 = xor i8 %1452, 1
  store i8 %1453, i8* %.pre-phi13, align 1
  %1454 = xor i32 %1442, %1443
  %1455 = lshr i32 %1454, 4
  %1456 = trunc i32 %1455 to i8
  %1457 = and i8 %1456, 1
  store i8 %1457, i8* %.pre-phi15, align 1
  %1458 = zext i1 %1446 to i8
  store i8 %1458, i8* %.pre-phi17, align 1
  %1459 = lshr i32 %1443, 31
  %1460 = trunc i32 %1459 to i8
  store i8 %1460, i8* %.pre-phi19, align 1
  %1461 = lshr i32 %1442, 31
  %1462 = xor i32 %1459, %1461
  %1463 = add nuw nsw i32 %1462, %1459
  %1464 = icmp eq i32 %1463, 2
  %1465 = zext i1 %1464 to i8
  store i8 %1465, i8* %.pre-phi21, align 1
  %1466 = add i64 %1439, 9
  store i64 %1466, i64* %3, align 8
  store i32 %1443, i32* %1441, align 4
  %1467 = load i64, i64* %3, align 8
  %1468 = add i64 %1467, -99
  store i64 %1468, i64* %3, align 8
  br label %block_.L_400c5a

block_.L_400cc2:                                  ; preds = %block_.L_400c5a
  %1469 = add i64 %1343, 1
  store i64 %1469, i64* %3, align 8
  %1470 = load i64, i64* %6, align 8
  %1471 = add i64 %1470, 8
  %1472 = inttoptr i64 %1470 to i64*
  %1473 = load i64, i64* %1472, align 8
  store i64 %1473, i64* %RBP.i, align 8
  store i64 %1471, i64* %6, align 8
  %1474 = add i64 %1343, 2
  store i64 %1474, i64* %3, align 8
  %1475 = inttoptr i64 %1471 to i64*
  %1476 = load i64, i64* %1475, align 8
  store i64 %1476, i64* %3, align 8
  %1477 = add i64 %1470, 16
  store i64 %1477, i64* %6, align 8
  ret %struct.Memory* %91
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

define %struct.Memory* @routine_movl__edi__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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

define %struct.Memory* @routine_movq__rcx__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm0__MINUS0x24__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -36
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

define %struct.Memory* @routine_movl_MINUS0x4__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x40__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -64
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edi___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %EDI, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cltd(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 1
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %7 = bitcast %union.anon* %6 to i32*
  %8 = load i32, i32* %7, align 8
  %9 = sext i32 %8 to i64
  %10 = lshr i64 %9, 32
  store i64 %10, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x40__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_idivl__edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EDI, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %8 = bitcast %union.anon* %7 to i32*
  %9 = load i32, i32* %8, align 8
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %12 = bitcast %union.anon* %11 to i32*
  %13 = load i32, i32* %12, align 8
  %14 = zext i32 %13 to i64
  %15 = sext i32 %4 to i64
  %16 = shl nuw i64 %14, 32
  %17 = or i64 %16, %10
  %18 = sdiv i64 %17, %15
  %19 = shl i64 %18, 32
  %20 = ashr exact i64 %19, 32
  %21 = icmp eq i64 %18, %20
  br i1 %21, label %24, label %22

; <label>:22:                                     ; preds = %block_400478
  %23 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %6, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:24:                                     ; preds = %block_400478
  %25 = srem i64 %17, %15
  %26 = getelementptr inbounds %union.anon, %union.anon* %7, i64 0, i32 0
  %27 = and i64 %18, 4294967295
  store i64 %27, i64* %26, align 8
  %28 = getelementptr inbounds %union.anon, %union.anon* %11, i64 0, i32 0
  %29 = and i64 %25, 4294967295
  store i64 %29, i64* %28, align 8
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
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %24, %22
  %36 = phi %struct.Memory* [ %23, %22 ], [ %2, %24 ]
  ret %struct.Memory* %36
}

define %struct.Memory* @routine_movl__eax__MINUS0x38__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -56
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1__MINUS0x34__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -44
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400a6e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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

define %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss___rax__rcx_8____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %RCX, align 8
  %7 = shl i64 %6, 3
  %8 = add i64 %7, %5
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %8 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = bitcast %union.VectorReg* %3 to i32*
  store i32 %12, i32* %13, align 1
  %14 = getelementptr inbounds i8, i8* %4, i64 4
  %15 = bitcast i8* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %17 = bitcast i64* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  %18 = getelementptr inbounds i8, i8* %4, i64 12
  %19 = bitcast i8* %18 to float*
  store float 0.000000e+00, float* %19, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x38__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x28__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -40
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDX, align 8
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

define %struct.Memory* @routine_movslq__edx___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addss___rax__rcx_8____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %RCX, align 8
  %7 = shl i64 %6, 3
  %8 = add i64 %7, %5
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC, align 8
  %11 = bitcast %union.VectorReg* %3 to <2 x float>*
  %12 = load <2 x float>, <2 x float>* %11, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %14 = bitcast i64* %13 to <2 x i32>*
  %15 = load <2 x i32>, <2 x i32>* %14, align 1
  %16 = inttoptr i64 %8 to float*
  %17 = load float, float* %16, align 4
  %18 = extractelement <2 x float> %12, i32 0
  %19 = fadd float %18, %17
  %20 = bitcast %union.VectorReg* %3 to float*
  store float %19, float* %20, align 1
  %21 = bitcast <2 x float> %12 to <2 x i32>
  %22 = extractelement <2 x i32> %21, i32 1
  %23 = getelementptr inbounds i8, i8* %4, i64 4
  %24 = bitcast i8* %23 to i32*
  store i32 %22, i32* %24, align 1
  %25 = extractelement <2 x i32> %15, i32 0
  %26 = bitcast i64* %13 to i32*
  store i32 %25, i32* %26, align 1
  %27 = extractelement <2 x i32> %15, i32 1
  %28 = getelementptr inbounds i8, i8* %4, i64 12
  %29 = bitcast i8* %28 to i32*
  store i32 %27, i32* %29, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x28__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x30__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -48
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDX, align 8
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

define %struct.Memory* @routine_movss__xmm0____rax__rcx_8_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 3
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 5
  store i64 %9, i64* %PC, align 8
  %10 = bitcast %union.VectorReg* %3 to <2 x float>*
  %11 = load <2 x float>, <2 x float>* %10, align 1
  %12 = extractelement <2 x float> %11, i32 0
  %13 = inttoptr i64 %7 to float*
  store float %12, float* %13, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_0x4__rax__rcx_8____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %RCX, align 8
  %7 = shl i64 %6, 3
  %8 = add i64 %5, 4
  %9 = add i64 %8, %7
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 6
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

define %struct.Memory* @routine_addss_0x4__rax__rcx_8____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %RCX, align 8
  %7 = shl i64 %6, 3
  %8 = add i64 %5, 4
  %9 = add i64 %8, %7
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC, align 8
  %12 = bitcast %union.VectorReg* %3 to <2 x float>*
  %13 = load <2 x float>, <2 x float>* %12, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to <2 x i32>*
  %16 = load <2 x i32>, <2 x i32>* %15, align 1
  %17 = inttoptr i64 %9 to float*
  %18 = load float, float* %17, align 4
  %19 = extractelement <2 x float> %13, i32 0
  %20 = fadd float %19, %18
  %21 = bitcast %union.VectorReg* %3 to float*
  store float %20, float* %21, align 1
  %22 = bitcast <2 x float> %13 to <2 x i32>
  %23 = extractelement <2 x i32> %22, i32 1
  %24 = getelementptr inbounds i8, i8* %4, i64 4
  %25 = bitcast i8* %24 to i32*
  store i32 %23, i32* %25, align 1
  %26 = extractelement <2 x i32> %16, i32 0
  %27 = bitcast i64* %14 to i32*
  store i32 %26, i32* %27, align 1
  %28 = extractelement <2 x i32> %16, i32 1
  %29 = getelementptr inbounds i8, i8* %4, i64 12
  %30 = bitcast i8* %29 to i32*
  store i32 %28, i32* %30, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm0__0x4__rax__rcx_8_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 3
  %7 = add i64 %4, 4
  %8 = add i64 %7, %6
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 6
  store i64 %10, i64* %PC, align 8
  %11 = bitcast %union.VectorReg* %3 to <2 x float>*
  %12 = load <2 x float>, <2 x float>* %11, align 1
  %13 = extractelement <2 x float> %12, i32 0
  %14 = inttoptr i64 %8 to float*
  store float %13, float* %14, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x30__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__0x1___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDX, align 8
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
  %20 = xor i32 %6, %7
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

define %struct.Memory* @routine_movss___rax__rcx_8____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %RCX, align 8
  %7 = shl i64 %6, 3
  %8 = add i64 %7, %5
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %8 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = bitcast %union.VectorReg* %3 to i32*
  store i32 %12, i32* %13, align 1
  %14 = getelementptr inbounds i8, i8* %4, i64 4
  %15 = bitcast i8* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %17 = bitcast i64* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  %18 = getelementptr inbounds i8, i8* %4, i64 12
  %19 = bitcast i8* %18 to float*
  store float 0.000000e+00, float* %19, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x38__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -56
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDX, align 8
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

define %struct.Memory* @routine_subss___rax__rcx_8____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %RCX, align 8
  %7 = shl i64 %6, 3
  %8 = add i64 %7, %5
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC, align 8
  %11 = bitcast %union.VectorReg* %3 to <2 x float>*
  %12 = load <2 x float>, <2 x float>* %11, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %14 = bitcast i64* %13 to <2 x i32>*
  %15 = load <2 x i32>, <2 x i32>* %14, align 1
  %16 = inttoptr i64 %8 to float*
  %17 = load float, float* %16, align 4
  %18 = extractelement <2 x float> %12, i32 0
  %19 = fsub float %18, %17
  %20 = bitcast %union.VectorReg* %3 to float*
  store float %19, float* %20, align 1
  %21 = bitcast <2 x float> %12 to <2 x i32>
  %22 = extractelement <2 x i32> %21, i32 1
  %23 = getelementptr inbounds i8, i8* %4, i64 4
  %24 = bitcast i8* %23 to i32*
  store i32 %22, i32* %24, align 1
  %25 = extractelement <2 x i32> %15, i32 0
  %26 = bitcast i64* %13 to i32*
  store i32 %25, i32* %26, align 1
  %27 = extractelement <2 x i32> %15, i32 1
  %28 = getelementptr inbounds i8, i8* %4, i64 12
  %29 = bitcast i8* %28 to i32*
  store i32 %27, i32* %29, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulss__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
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
  %17 = fmul float %15, %16
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

define %struct.Memory* @routine_movss_0x4__rax__rcx_8____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %RCX, align 8
  %7 = shl i64 %6, 3
  %8 = add i64 %5, 4
  %9 = add i64 %8, %7
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %9 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = bitcast %union.VectorReg* %3 to i32*
  store i32 %13, i32* %14, align 1
  %15 = getelementptr inbounds i8, i8* %4, i64 4
  %16 = bitcast i8* %15 to float*
  store float 0.000000e+00, float* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %18 = bitcast i64* %17 to float*
  store float 0.000000e+00, float* %18, align 1
  %19 = getelementptr inbounds i8, i8* %4, i64 12
  %20 = bitcast i8* %19 to float*
  store float 0.000000e+00, float* %20, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_0x4__rax__rcx_8____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %RCX, align 8
  %7 = shl i64 %6, 3
  %8 = add i64 %5, 4
  %9 = add i64 %8, %7
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %9 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = bitcast %union.VectorReg* %3 to i32*
  store i32 %13, i32* %14, align 1
  %15 = getelementptr inbounds i8, i8* %4, i64 4
  %16 = bitcast i8* %15 to float*
  store float 0.000000e+00, float* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %18 = bitcast i64* %17 to float*
  store float 0.000000e+00, float* %18, align 1
  %19 = getelementptr inbounds i8, i8* %4, i64 12
  %20 = bitcast i8* %19 to float*
  store float 0.000000e+00, float* %20, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subss_0x4__rax__rcx_8____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %RCX, align 8
  %7 = shl i64 %6, 3
  %8 = add i64 %5, 4
  %9 = add i64 %8, %7
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC, align 8
  %12 = bitcast %union.VectorReg* %3 to <2 x float>*
  %13 = load <2 x float>, <2 x float>* %12, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to <2 x i32>*
  %16 = load <2 x i32>, <2 x i32>* %15, align 1
  %17 = inttoptr i64 %9 to float*
  %18 = load float, float* %17, align 4
  %19 = extractelement <2 x float> %13, i32 0
  %20 = fsub float %19, %18
  %21 = bitcast %union.VectorReg* %3 to float*
  store float %20, float* %21, align 1
  %22 = bitcast <2 x float> %13 to <2 x i32>
  %23 = extractelement <2 x i32> %22, i32 1
  %24 = getelementptr inbounds i8, i8* %4, i64 4
  %25 = bitcast i8* %24 to i32*
  store i32 %23, i32* %25, align 1
  %26 = extractelement <2 x i32> %16, i32 0
  %27 = bitcast i64* %14 to i32*
  store i32 %26, i32* %27, align 1
  %28 = extractelement <2 x i32> %16, i32 1
  %29 = getelementptr inbounds i8, i8* %4, i64 12
  %30 = bitcast i8* %29 to i32*
  store i32 %28, i32* %30, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulss__xmm2___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %5 = bitcast %union.VectorReg* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x i32>*
  %12 = load <2 x i32>, <2 x i32>* %11, align 1
  %13 = bitcast %union.VectorReg* %4 to <2 x float>*
  %14 = load <2 x float>, <2 x float>* %13, align 1
  %15 = extractelement <2 x float> %9, i32 0
  %16 = extractelement <2 x float> %14, i32 0
  %17 = fmul float %15, %16
  %18 = bitcast %union.VectorReg* %3 to float*
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

define %struct.Memory* @routine_subss__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
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
  %17 = fsub float %15, %16
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

define %struct.Memory* @routine_addl_MINUS0x2c__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -44
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDX, align 8
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

define %struct.Memory* @routine_subss_0x4__rax__rcx_8____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %RCX, align 8
  %7 = shl i64 %6, 3
  %8 = add i64 %5, 4
  %9 = add i64 %8, %7
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC, align 8
  %12 = bitcast %union.VectorReg* %3 to <2 x float>*
  %13 = load <2 x float>, <2 x float>* %12, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to <2 x i32>*
  %16 = load <2 x i32>, <2 x i32>* %15, align 1
  %17 = inttoptr i64 %9 to float*
  %18 = load float, float* %17, align 4
  %19 = extractelement <2 x float> %13, i32 0
  %20 = fsub float %19, %18
  %21 = bitcast %union.VectorReg* %3 to float*
  store float %20, float* %21, align 1
  %22 = bitcast <2 x float> %13 to <2 x i32>
  %23 = extractelement <2 x i32> %22, i32 1
  %24 = getelementptr inbounds i8, i8* %4, i64 4
  %25 = bitcast i8* %24 to i32*
  store i32 %23, i32* %25, align 1
  %26 = extractelement <2 x i32> %16, i32 0
  %27 = bitcast i64* %14 to i32*
  store i32 %26, i32* %27, align 1
  %28 = extractelement <2 x i32> %16, i32 1
  %29 = getelementptr inbounds i8, i8* %4, i64 12
  %30 = bitcast i8* %29 to i32*
  store i32 %28, i32* %30, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss___rax__rcx_8____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %RCX, align 8
  %7 = shl i64 %6, 3
  %8 = add i64 %7, %5
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %8 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = bitcast %union.VectorReg* %3 to i32*
  store i32 %12, i32* %13, align 1
  %14 = getelementptr inbounds i8, i8* %4, i64 4
  %15 = bitcast i8* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %17 = bitcast i64* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  %18 = getelementptr inbounds i8, i8* %4, i64 12
  %19 = bitcast i8* %18 to float*
  store float 0.000000e+00, float* %19, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subss___rax__rcx_8____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %RCX, align 8
  %7 = shl i64 %6, 3
  %8 = add i64 %7, %5
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC, align 8
  %11 = bitcast %union.VectorReg* %3 to <2 x float>*
  %12 = load <2 x float>, <2 x float>* %11, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %14 = bitcast i64* %13 to <2 x i32>*
  %15 = load <2 x i32>, <2 x i32>* %14, align 1
  %16 = inttoptr i64 %8 to float*
  %17 = load float, float* %16, align 4
  %18 = extractelement <2 x float> %12, i32 0
  %19 = fsub float %18, %17
  %20 = bitcast %union.VectorReg* %3 to float*
  store float %19, float* %20, align 1
  %21 = bitcast <2 x float> %12 to <2 x i32>
  %22 = extractelement <2 x i32> %21, i32 1
  %23 = getelementptr inbounds i8, i8* %4, i64 4
  %24 = bitcast i8* %23 to i32*
  store i32 %22, i32* %24, align 1
  %25 = extractelement <2 x i32> %15, i32 0
  %26 = bitcast i64* %13 to i32*
  store i32 %25, i32* %26, align 1
  %27 = extractelement <2 x i32> %15, i32 1
  %28 = getelementptr inbounds i8, i8* %4, i64 12
  %29 = bitcast i8* %28 to i32*
  store i32 %27, i32* %29, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addss__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
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
  %17 = fadd float %15, %16
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

define %struct.Memory* @routine_movl__edx__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -40
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_MINUS0x2c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -44
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %4, %10
  %12 = icmp ult i32 %4, %10
  %13 = zext i1 %12 to i8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %13, i8* %14, align 1
  %15 = and i32 %11, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i32 %10, %4
  %22 = xor i32 %21, %11
  %23 = lshr i32 %22, 4
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i32 %11, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %11, 31
  %31 = trunc i32 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %4, 31
  %34 = lshr i32 %10, 31
  %35 = xor i32 %34, %33
  %36 = xor i32 %30, %33
  %37 = add nuw nsw i32 %36, %35
  %38 = icmp eq i32 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jle_.L_400a6e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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
  %.v = select i1 %14, i64 %rel_off1, i64 %rel_off2
  %16 = add i64 %3, %.v
  store i64 %16, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -48
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x34__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -52
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

define %struct.Memory* @routine_cmpl_MINUS0x38__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -56
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %4, %10
  %12 = icmp ult i32 %4, %10
  %13 = zext i1 %12 to i8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %13, i8* %14, align 1
  %15 = and i32 %11, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i32 %10, %4
  %22 = xor i32 %21, %11
  %23 = lshr i32 %22, 4
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i32 %11, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %11, 31
  %31 = trunc i32 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %4, 31
  %34 = lshr i32 %10, 31
  %35 = xor i32 %34, %33
  %36 = xor i32 %30, %33
  %37 = add nuw nsw i32 %36, %35
  %38 = icmp eq i32 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jle_.L_400a69(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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
  %.v = select i1 %14, i64 %rel_off1, i64 %rel_off2
  %16 = add i64 %3, %.v
  store i64 %16, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1__MINUS0x3c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -60
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -60
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
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

define %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -60
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq___rdx__rsi_8____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RSI, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rdx____rax__rcx_8_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %RDX, align 8
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %6 to i64*
  store i64 %7, i64* %10, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x3c__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -60
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__0x1___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDI, align 8
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
  %20 = xor i32 %6, %7
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

define %struct.Memory* @routine_movl__edi__MINUS0x3c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -60
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x3c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -60
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_MINUS0x4__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %4, %10
  %12 = icmp ult i32 %4, %10
  %13 = zext i1 %12 to i8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %13, i8* %14, align 1
  %15 = and i32 %11, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i32 %10, %4
  %22 = xor i32 %21, %11
  %23 = lshr i32 %22, 4
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i32 %11, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %11, 31
  %31 = trunc i32 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %4, 31
  %34 = lshr i32 %10, 31
  %35 = xor i32 %34, %33
  %36 = xor i32 %30, %33
  %37 = add nuw nsw i32 %36, %35
  %38 = icmp eq i32 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jle_.L_400c11(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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
  %.v = select i1 %14, i64 %rel_off1, i64 %rel_off2
  %16 = add i64 %3, %.v
  store i64 %16, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x34__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -52
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jle_.L_400a55(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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
  %.v = select i1 %14, i64 %rel_off1, i64 %rel_off2
  %16 = add i64 %3, %.v
  store i64 %16, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jg_.L_400cc2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = xor i1 %13, true
  %15 = and i1 %6, %14
  %16 = zext i1 %15 to i8
  store i8 %16, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %17 = add i64 %3, %.v
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_MINUS0x24__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -36
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

define %struct.Memory* @routine_mulss___rax__rcx_8____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %RCX, align 8
  %7 = shl i64 %6, 3
  %8 = add i64 %7, %5
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC, align 8
  %11 = bitcast %union.VectorReg* %3 to <2 x float>*
  %12 = load <2 x float>, <2 x float>* %11, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %14 = bitcast i64* %13 to <2 x i32>*
  %15 = load <2 x i32>, <2 x i32>* %14, align 1
  %16 = inttoptr i64 %8 to float*
  %17 = load float, float* %16, align 4
  %18 = extractelement <2 x float> %12, i32 0
  %19 = fmul float %18, %17
  %20 = bitcast %union.VectorReg* %3 to float*
  store float %19, float* %20, align 1
  %21 = bitcast <2 x float> %12 to <2 x i32>
  %22 = extractelement <2 x i32> %21, i32 1
  %23 = getelementptr inbounds i8, i8* %4, i64 4
  %24 = bitcast i8* %23 to i32*
  store i32 %22, i32* %24, align 1
  %25 = extractelement <2 x i32> %15, i32 0
  %26 = bitcast i64* %13 to i32*
  store i32 %25, i32* %26, align 1
  %27 = extractelement <2 x i32> %15, i32 1
  %28 = getelementptr inbounds i8, i8* %4, i64 12
  %29 = bitcast i8* %28 to i32*
  store i32 %27, i32* %29, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movd__xmm0___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 4
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  %7 = trunc i64 %6 to i32
  %8 = bitcast i64* %RDX to [2 x i32]*
  %9 = bitcast i64* %RDX to i32*
  store i32 %7, i32* %9, align 1
  %10 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  store i32 0, i32* %10, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_xorl__0x80000000___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = xor i64 %3, -2147483648
  %7 = trunc i64 %6 to i32
  %8 = and i64 %6, 4294967295
  store i64 %8, i64* %RDX, align 8
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

define %struct.Memory* @routine_movd__edx___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %5 = bitcast %union.VectorReg* %4 to i8*
  %6 = load i32, i32* %EDX, align 4
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

define %struct.Memory* @routine_mulss_0x4__rax__rcx_8____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %RCX, align 8
  %7 = shl i64 %6, 3
  %8 = add i64 %5, 4
  %9 = add i64 %8, %7
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC, align 8
  %12 = bitcast %union.VectorReg* %3 to <2 x float>*
  %13 = load <2 x float>, <2 x float>* %12, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to <2 x i32>*
  %16 = load <2 x i32>, <2 x i32>* %15, align 1
  %17 = inttoptr i64 %9 to float*
  %18 = load float, float* %17, align 4
  %19 = extractelement <2 x float> %13, i32 0
  %20 = fmul float %19, %18
  %21 = bitcast %union.VectorReg* %3 to float*
  store float %20, float* %21, align 1
  %22 = bitcast <2 x float> %13 to <2 x i32>
  %23 = extractelement <2 x i32> %22, i32 1
  %24 = getelementptr inbounds i8, i8* %4, i64 4
  %25 = bitcast i8* %24 to i32*
  store i32 %23, i32* %25, align 1
  %26 = extractelement <2 x i32> %16, i32 0
  %27 = bitcast i64* %14 to i32*
  store i32 %26, i32* %27, align 1
  %28 = extractelement <2 x i32> %16, i32 1
  %29 = getelementptr inbounds i8, i8* %4, i64 12
  %30 = bitcast i8* %29 to i32*
  store i32 %28, i32* %30, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__0x1___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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
  %20 = xor i32 %6, %7
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

define %struct.Memory* @routine_movl__eax__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -40
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400c5a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
