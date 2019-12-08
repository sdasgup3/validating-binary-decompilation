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
  store i64 %8, i64* %6, align 8
  %10 = load i64, i64* %PC.i, align 8
  store i64 %8, i64* %RBP.i, align 8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i498 = getelementptr inbounds %union.anon, %union.anon* %11, i64 0, i32 0
  store i64 2, i64* %RAX.i498, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i495 = bitcast %union.anon* %12 to i32*
  %13 = add i64 %7, -12
  %14 = load i32, i32* %EDI.i495, align 4
  %15 = add i64 %10, 11
  store i64 %15, i64* %PC.i, align 8
  %16 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %16, align 4
  %RSI.i492 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %17 = load i64, i64* %RBP.i, align 8
  %18 = add i64 %17, -16
  %19 = load i64, i64* %RSI.i492, align 8
  %20 = load i64, i64* %PC.i, align 8
  %21 = add i64 %20, 4
  store i64 %21, i64* %PC.i, align 8
  %22 = inttoptr i64 %18 to i64*
  store i64 %19, i64* %22, align 8
  %RDX.i489 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %23 = load i64, i64* %RBP.i, align 8
  %24 = add i64 %23, -24
  %25 = load i64, i64* %RDX.i489, align 8
  %26 = load i64, i64* %PC.i, align 8
  %27 = add i64 %26, 4
  store i64 %27, i64* %PC.i, align 8
  %28 = inttoptr i64 %24 to i64*
  store i64 %25, i64* %28, align 8
  %RCX.i486 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %29 = load i64, i64* %RBP.i, align 8
  %30 = add i64 %29, -32
  %31 = load i64, i64* %RCX.i486, align 8
  %32 = load i64, i64* %PC.i, align 8
  %33 = add i64 %32, 4
  store i64 %33, i64* %PC.i, align 8
  %34 = inttoptr i64 %30 to i64*
  store i64 %31, i64* %34, align 8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %36 = load i64, i64* %RBP.i, align 8
  %37 = add i64 %36, -36
  %38 = load i64, i64* %PC.i, align 8
  %39 = add i64 %38, 5
  store i64 %39, i64* %PC.i, align 8
  %40 = bitcast [32 x %union.VectorReg]* %35 to <2 x float>*
  %41 = load <2 x float>, <2 x float>* %40, align 1
  %42 = extractelement <2 x float> %41, i32 0
  %43 = inttoptr i64 %37 to float*
  store float %42, float* %43, align 4
  %RDI.i480 = getelementptr inbounds %union.anon, %union.anon* %12, i64 0, i32 0
  %44 = load i64, i64* %RBP.i, align 8
  %45 = add i64 %44, -4
  %46 = load i64, i64* %PC.i, align 8
  %47 = add i64 %46, 3
  store i64 %47, i64* %PC.i, align 8
  %48 = inttoptr i64 %45 to i32*
  %49 = load i32, i32* %48, align 4
  %50 = zext i32 %49 to i64
  store i64 %50, i64* %RDI.i480, align 8
  %EAX.i477 = bitcast %union.anon* %11 to i32*
  %51 = add i64 %44, -64
  %52 = load i32, i32* %EAX.i477, align 4
  %53 = add i64 %46, 6
  store i64 %53, i64* %PC.i, align 8
  %54 = inttoptr i64 %51 to i32*
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* %EDI.i495, align 4
  %56 = zext i32 %55 to i64
  %57 = load i64, i64* %PC.i, align 8
  store i64 %56, i64* %RAX.i498, align 8
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %59 = sext i32 %55 to i64
  %60 = lshr i64 %59, 32
  store i64 %60, i64* %58, align 8
  %61 = load i64, i64* %RBP.i, align 8
  %62 = add i64 %61, -64
  %63 = add i64 %57, 6
  store i64 %63, i64* %PC.i, align 8
  %64 = inttoptr i64 %62 to i32*
  %65 = load i32, i32* %64, align 4
  %66 = zext i32 %65 to i64
  store i64 %66, i64* %RDI.i480, align 8
  %67 = add i64 %57, 8
  store i64 %67, i64* %PC.i, align 8
  %68 = zext i32 %55 to i64
  %69 = sext i32 %65 to i64
  %70 = shl nuw i64 %60, 32
  %71 = or i64 %70, %68
  %72 = sdiv i64 %71, %69
  %73 = shl i64 %72, 32
  %74 = ashr exact i64 %73, 32
  %75 = icmp eq i64 %72, %74
  br i1 %75, label %78, label %76

; <label>:76:                                     ; preds = %entry
  %77 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %67, %struct.Memory* %2)
  %.pre = load i64, i64* %RBP.i, align 8
  %.pre1 = load i32, i32* %EAX.i477, align 4
  %.pre2 = load i64, i64* %PC.i, align 8
  %.pre11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %.pre12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %.pre14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %.pre16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %.pre18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %.pre20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  br label %routine_idivl__edi.exit

; <label>:78:                                     ; preds = %entry
  %79 = srem i64 %71, %69
  %80 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %81 = and i64 %72, 4294967295
  store i64 %81, i64* %80, align 8
  %82 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %83 = and i64 %79, 4294967295
  store i64 %83, i64* %82, align 8
  %84 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %84, align 1
  %85 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %85, align 1
  %86 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %86, align 1
  %87 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %87, align 1
  %88 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %88, align 1
  %89 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %89, align 1
  %90 = trunc i64 %72 to i32
  br label %routine_idivl__edi.exit

routine_idivl__edi.exit:                          ; preds = %78, %76
  %.pre-phi21 = phi i8* [ %89, %78 ], [ %.pre20, %76 ]
  %.pre-phi19 = phi i8* [ %88, %78 ], [ %.pre18, %76 ]
  %.pre-phi17 = phi i8* [ %87, %78 ], [ %.pre16, %76 ]
  %.pre-phi15 = phi i8* [ %86, %78 ], [ %.pre14, %76 ]
  %.pre-phi13 = phi i8* [ %85, %78 ], [ %.pre12, %76 ]
  %.pre-phi = phi i8* [ %84, %78 ], [ %.pre11, %76 ]
  %91 = phi i64 [ %67, %78 ], [ %.pre2, %76 ]
  %92 = phi i32 [ %90, %78 ], [ %.pre1, %76 ]
  %93 = phi i64 [ %61, %78 ], [ %.pre, %76 ]
  %94 = phi %struct.Memory* [ %2, %78 ], [ %77, %76 ]
  %95 = add i64 %93, -56
  %96 = add i64 %91, 3
  store i64 %96, i64* %PC.i, align 8
  %97 = inttoptr i64 %95 to i32*
  store i32 %92, i32* %97, align 4
  %98 = load i64, i64* %RBP.i, align 8
  %99 = add i64 %98, -52
  %100 = load i64, i64* %PC.i, align 8
  %101 = add i64 %100, 7
  store i64 %101, i64* %PC.i, align 8
  %102 = inttoptr i64 %99 to i32*
  store i32 1, i32* %102, align 4
  %103 = bitcast [32 x %union.VectorReg]* %35 to i8*
  %104 = bitcast [32 x %union.VectorReg]* %35 to float*
  %105 = getelementptr inbounds i8, i8* %103, i64 4
  %106 = bitcast i8* %105 to float*
  %107 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %108 = bitcast i64* %107 to float*
  %109 = getelementptr inbounds i8, i8* %103, i64 12
  %110 = bitcast i8* %109 to float*
  %111 = bitcast [32 x %union.VectorReg]* %35 to <2 x float>*
  %112 = bitcast i64* %107 to <2 x i32>*
  %113 = bitcast i8* %105 to i32*
  %114 = bitcast i64* %107 to i32*
  %115 = bitcast i8* %109 to i32*
  %116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %117 = bitcast %union.VectorReg* %116 to i8*
  %118 = bitcast %union.VectorReg* %116 to float*
  %119 = getelementptr inbounds i8, i8* %117, i64 4
  %120 = bitcast i8* %119 to float*
  %121 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %122 = bitcast i64* %121 to float*
  %123 = getelementptr inbounds i8, i8* %117, i64 12
  %124 = bitcast i8* %123 to float*
  %125 = bitcast %union.VectorReg* %116 to <2 x float>*
  %126 = bitcast i64* %121 to <2 x i32>*
  %127 = bitcast i8* %119 to i32*
  %128 = bitcast i64* %121 to i32*
  %129 = bitcast i8* %123 to i32*
  %130 = bitcast %union.VectorReg* %116 to <2 x float>*
  %131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %132 = bitcast %union.VectorReg* %131 to i8*
  %133 = bitcast %union.VectorReg* %131 to float*
  %134 = getelementptr inbounds i8, i8* %132, i64 4
  %135 = bitcast i8* %134 to float*
  %136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %137 = bitcast i64* %136 to float*
  %138 = getelementptr inbounds i8, i8* %132, i64 12
  %139 = bitcast i8* %138 to float*
  %140 = bitcast %union.VectorReg* %131 to <2 x float>*
  %141 = bitcast i64* %136 to <2 x i32>*
  %142 = bitcast i8* %134 to i32*
  %143 = bitcast i64* %136 to i32*
  %144 = bitcast i8* %138 to i32*
  %145 = bitcast %union.VectorReg* %131 to <2 x float>*
  %.pre3 = load i64, i64* %RBP.i, align 8
  %.pre4 = load i64, i64* %PC.i, align 8
  br label %block_.L_400a55

block_.L_400a55:                                  ; preds = %block_400c3e, %routine_idivl__edi.exit
  %146 = phi i64 [ %1317, %block_400c3e ], [ %.pre4, %routine_idivl__edi.exit ]
  %147 = phi i64 [ %1279, %block_400c3e ], [ %.pre3, %routine_idivl__edi.exit ]
  %148 = add i64 %147, -48
  %149 = add i64 %146, 7
  store i64 %149, i64* %PC.i, align 8
  %150 = inttoptr i64 %148 to i32*
  store i32 0, i32* %150, align 4
  %151 = load i64, i64* %RBP.i, align 8
  %152 = add i64 %151, -52
  %153 = load i64, i64* %PC.i, align 8
  %154 = add i64 %153, 3
  store i64 %154, i64* %PC.i, align 8
  %155 = inttoptr i64 %152 to i32*
  %156 = load i32, i32* %155, align 4
  %157 = zext i32 %156 to i64
  store i64 %157, i64* %RAX.i498, align 8
  %158 = add i64 %151, -44
  %159 = add i64 %153, 6
  store i64 %159, i64* %PC.i, align 8
  %160 = inttoptr i64 %158 to i32*
  store i32 %156, i32* %160, align 4
  %161 = load i64, i64* %RBP.i, align 8
  %162 = add i64 %161, -40
  %163 = load i64, i64* %PC.i, align 8
  %164 = add i64 %163, 7
  store i64 %164, i64* %PC.i, align 8
  %165 = inttoptr i64 %162 to i32*
  store i32 1, i32* %165, align 4
  %.pre5 = load i64, i64* %PC.i, align 8
  %.pre6.pre = load i64, i64* %RBP.i, align 8
  br label %block_.L_400a69

block_.L_400a69:                                  ; preds = %block_400bef, %block_.L_400a55
  %.pre6 = phi i64 [ %1105, %block_400bef ], [ %.pre6.pre, %block_.L_400a55 ]
  %166 = phi i64 [ %1143, %block_400bef ], [ %.pre5, %block_.L_400a55 ]
  %167 = add i64 %166, 5
  store i64 %167, i64* %3, align 8
  br label %block_.L_400a6e

block_.L_400a6e:                                  ; preds = %block_.L_400a6e, %block_.L_400a69
  %168 = phi i64 [ %1057, %block_.L_400a6e ], [ %167, %block_.L_400a69 ]
  %169 = phi i64 [ %1019, %block_.L_400a6e ], [ %.pre6, %block_.L_400a69 ]
  %170 = add i64 %169, -16
  %171 = add i64 %168, 4
  store i64 %171, i64* %PC.i, align 8
  %172 = inttoptr i64 %170 to i64*
  %173 = load i64, i64* %172, align 8
  store i64 %173, i64* %RAX.i498, align 8
  %174 = add i64 %169, -40
  %175 = add i64 %168, 8
  store i64 %175, i64* %PC.i, align 8
  %176 = inttoptr i64 %174 to i32*
  %177 = load i32, i32* %176, align 4
  %178 = sext i32 %177 to i64
  store i64 %178, i64* %RCX.i486, align 8
  %179 = shl nsw i64 %178, 3
  %180 = add i64 %179, %173
  %181 = add i64 %168, 13
  store i64 %181, i64* %PC.i, align 8
  %182 = inttoptr i64 %180 to i32*
  %183 = load i32, i32* %182, align 4
  %184 = bitcast [32 x %union.VectorReg]* %35 to i32*
  store i32 %183, i32* %184, align 1
  store float 0.000000e+00, float* %106, align 1
  store float 0.000000e+00, float* %108, align 1
  store float 0.000000e+00, float* %110, align 1
  %185 = add i64 %168, 17
  store i64 %185, i64* %PC.i, align 8
  %186 = load i64, i64* %172, align 8
  store i64 %186, i64* %RAX.i498, align 8
  %187 = add i64 %169, -56
  %188 = add i64 %168, 20
  store i64 %188, i64* %PC.i, align 8
  %189 = inttoptr i64 %187 to i32*
  %190 = load i32, i32* %189, align 4
  %191 = zext i32 %190 to i64
  store i64 %191, i64* %RDX.i489, align 8
  %192 = add i64 %168, 23
  store i64 %192, i64* %PC.i, align 8
  %193 = load i32, i32* %176, align 4
  %194 = add i32 %193, %190
  %195 = zext i32 %194 to i64
  store i64 %195, i64* %RDX.i489, align 8
  %196 = icmp ult i32 %194, %190
  %197 = icmp ult i32 %194, %193
  %198 = or i1 %196, %197
  %199 = zext i1 %198 to i8
  store i8 %199, i8* %.pre-phi, align 1
  %200 = and i32 %194, 255
  %201 = tail call i32 @llvm.ctpop.i32(i32 %200)
  %202 = trunc i32 %201 to i8
  %203 = and i8 %202, 1
  %204 = xor i8 %203, 1
  store i8 %204, i8* %.pre-phi13, align 1
  %205 = xor i32 %193, %190
  %206 = xor i32 %205, %194
  %207 = lshr i32 %206, 4
  %208 = trunc i32 %207 to i8
  %209 = and i8 %208, 1
  store i8 %209, i8* %.pre-phi15, align 1
  %210 = icmp eq i32 %194, 0
  %211 = zext i1 %210 to i8
  store i8 %211, i8* %.pre-phi17, align 1
  %212 = lshr i32 %194, 31
  %213 = trunc i32 %212 to i8
  store i8 %213, i8* %.pre-phi19, align 1
  %214 = lshr i32 %190, 31
  %215 = lshr i32 %193, 31
  %216 = xor i32 %212, %214
  %217 = xor i32 %212, %215
  %218 = add nuw nsw i32 %216, %217
  %219 = icmp eq i32 %218, 2
  %220 = zext i1 %219 to i8
  store i8 %220, i8* %.pre-phi21, align 1
  %221 = sext i32 %194 to i64
  store i64 %221, i64* %RCX.i486, align 8
  %222 = shl nsw i64 %221, 3
  %223 = add i64 %222, %186
  %224 = add i64 %168, 31
  store i64 %224, i64* %PC.i, align 8
  %225 = load <2 x float>, <2 x float>* %111, align 1
  %226 = load <2 x i32>, <2 x i32>* %112, align 1
  %227 = inttoptr i64 %223 to float*
  %228 = load float, float* %227, align 4
  %229 = extractelement <2 x float> %225, i32 0
  %230 = fadd float %229, %228
  store float %230, float* %104, align 1
  %231 = bitcast <2 x float> %225 to <2 x i32>
  %232 = extractelement <2 x i32> %231, i32 1
  store i32 %232, i32* %113, align 1
  %233 = extractelement <2 x i32> %226, i32 0
  store i32 %233, i32* %114, align 1
  %234 = extractelement <2 x i32> %226, i32 1
  store i32 %234, i32* %115, align 1
  %235 = add i64 %169, -24
  %236 = add i64 %168, 35
  store i64 %236, i64* %PC.i, align 8
  %237 = inttoptr i64 %235 to i64*
  %238 = load i64, i64* %237, align 8
  store i64 %238, i64* %RAX.i498, align 8
  %239 = load i64, i64* %RBP.i, align 8
  %240 = add i64 %239, -40
  %241 = add i64 %168, 38
  store i64 %241, i64* %PC.i, align 8
  %242 = inttoptr i64 %240 to i32*
  %243 = load i32, i32* %242, align 4
  %244 = zext i32 %243 to i64
  store i64 %244, i64* %RDX.i489, align 8
  %245 = add i64 %239, -48
  %246 = add i64 %168, 41
  store i64 %246, i64* %PC.i, align 8
  %247 = inttoptr i64 %245 to i32*
  %248 = load i32, i32* %247, align 4
  %249 = add i32 %248, %243
  %250 = zext i32 %249 to i64
  store i64 %250, i64* %RDX.i489, align 8
  %251 = icmp ult i32 %249, %243
  %252 = icmp ult i32 %249, %248
  %253 = or i1 %251, %252
  %254 = zext i1 %253 to i8
  store i8 %254, i8* %.pre-phi, align 1
  %255 = and i32 %249, 255
  %256 = tail call i32 @llvm.ctpop.i32(i32 %255)
  %257 = trunc i32 %256 to i8
  %258 = and i8 %257, 1
  %259 = xor i8 %258, 1
  store i8 %259, i8* %.pre-phi13, align 1
  %260 = xor i32 %248, %243
  %261 = xor i32 %260, %249
  %262 = lshr i32 %261, 4
  %263 = trunc i32 %262 to i8
  %264 = and i8 %263, 1
  store i8 %264, i8* %.pre-phi15, align 1
  %265 = icmp eq i32 %249, 0
  %266 = zext i1 %265 to i8
  store i8 %266, i8* %.pre-phi17, align 1
  %267 = lshr i32 %249, 31
  %268 = trunc i32 %267 to i8
  store i8 %268, i8* %.pre-phi19, align 1
  %269 = lshr i32 %243, 31
  %270 = lshr i32 %248, 31
  %271 = xor i32 %267, %269
  %272 = xor i32 %267, %270
  %273 = add nuw nsw i32 %271, %272
  %274 = icmp eq i32 %273, 2
  %275 = zext i1 %274 to i8
  store i8 %275, i8* %.pre-phi21, align 1
  %276 = sext i32 %249 to i64
  store i64 %276, i64* %RCX.i486, align 8
  %277 = shl nsw i64 %276, 3
  %278 = add i64 %277, %238
  %279 = add i64 %168, 49
  store i64 %279, i64* %PC.i, align 8
  %280 = load <2 x float>, <2 x float>* %40, align 1
  %281 = extractelement <2 x float> %280, i32 0
  %282 = inttoptr i64 %278 to float*
  store float %281, float* %282, align 4
  %283 = load i64, i64* %RBP.i, align 8
  %284 = add i64 %283, -16
  %285 = load i64, i64* %PC.i, align 8
  %286 = add i64 %285, 4
  store i64 %286, i64* %PC.i, align 8
  %287 = inttoptr i64 %284 to i64*
  %288 = load i64, i64* %287, align 8
  store i64 %288, i64* %RAX.i498, align 8
  %289 = add i64 %283, -40
  %290 = add i64 %285, 8
  store i64 %290, i64* %PC.i, align 8
  %291 = inttoptr i64 %289 to i32*
  %292 = load i32, i32* %291, align 4
  %293 = sext i32 %292 to i64
  store i64 %293, i64* %RCX.i486, align 8
  %294 = shl nsw i64 %293, 3
  %295 = add i64 %288, 4
  %296 = add i64 %295, %294
  %297 = add i64 %285, 14
  store i64 %297, i64* %PC.i, align 8
  %298 = inttoptr i64 %296 to i32*
  %299 = load i32, i32* %298, align 4
  %300 = bitcast [32 x %union.VectorReg]* %35 to i32*
  store i32 %299, i32* %300, align 1
  store float 0.000000e+00, float* %106, align 1
  store float 0.000000e+00, float* %108, align 1
  store float 0.000000e+00, float* %110, align 1
  %301 = add i64 %285, 18
  store i64 %301, i64* %PC.i, align 8
  %302 = load i64, i64* %287, align 8
  store i64 %302, i64* %RAX.i498, align 8
  %303 = add i64 %283, -56
  %304 = add i64 %285, 21
  store i64 %304, i64* %PC.i, align 8
  %305 = inttoptr i64 %303 to i32*
  %306 = load i32, i32* %305, align 4
  %307 = zext i32 %306 to i64
  store i64 %307, i64* %RDX.i489, align 8
  %308 = add i64 %285, 24
  store i64 %308, i64* %PC.i, align 8
  %309 = load i32, i32* %291, align 4
  %310 = add i32 %309, %306
  %311 = zext i32 %310 to i64
  store i64 %311, i64* %RDX.i489, align 8
  %312 = icmp ult i32 %310, %306
  %313 = icmp ult i32 %310, %309
  %314 = or i1 %312, %313
  %315 = zext i1 %314 to i8
  store i8 %315, i8* %.pre-phi, align 1
  %316 = and i32 %310, 255
  %317 = tail call i32 @llvm.ctpop.i32(i32 %316)
  %318 = trunc i32 %317 to i8
  %319 = and i8 %318, 1
  %320 = xor i8 %319, 1
  store i8 %320, i8* %.pre-phi13, align 1
  %321 = xor i32 %309, %306
  %322 = xor i32 %321, %310
  %323 = lshr i32 %322, 4
  %324 = trunc i32 %323 to i8
  %325 = and i8 %324, 1
  store i8 %325, i8* %.pre-phi15, align 1
  %326 = icmp eq i32 %310, 0
  %327 = zext i1 %326 to i8
  store i8 %327, i8* %.pre-phi17, align 1
  %328 = lshr i32 %310, 31
  %329 = trunc i32 %328 to i8
  store i8 %329, i8* %.pre-phi19, align 1
  %330 = lshr i32 %306, 31
  %331 = lshr i32 %309, 31
  %332 = xor i32 %328, %330
  %333 = xor i32 %328, %331
  %334 = add nuw nsw i32 %332, %333
  %335 = icmp eq i32 %334, 2
  %336 = zext i1 %335 to i8
  store i8 %336, i8* %.pre-phi21, align 1
  %337 = sext i32 %310 to i64
  store i64 %337, i64* %RCX.i486, align 8
  %338 = shl nsw i64 %337, 3
  %339 = add i64 %302, 4
  %340 = add i64 %339, %338
  %341 = add i64 %285, 33
  store i64 %341, i64* %PC.i, align 8
  %342 = load <2 x float>, <2 x float>* %111, align 1
  %343 = load <2 x i32>, <2 x i32>* %112, align 1
  %344 = inttoptr i64 %340 to float*
  %345 = load float, float* %344, align 4
  %346 = extractelement <2 x float> %342, i32 0
  %347 = fadd float %346, %345
  store float %347, float* %104, align 1
  %348 = bitcast <2 x float> %342 to <2 x i32>
  %349 = extractelement <2 x i32> %348, i32 1
  store i32 %349, i32* %113, align 1
  %350 = extractelement <2 x i32> %343, i32 0
  store i32 %350, i32* %114, align 1
  %351 = extractelement <2 x i32> %343, i32 1
  store i32 %351, i32* %115, align 1
  %352 = load i64, i64* %RBP.i, align 8
  %353 = add i64 %352, -24
  %354 = add i64 %285, 37
  store i64 %354, i64* %PC.i, align 8
  %355 = inttoptr i64 %353 to i64*
  %356 = load i64, i64* %355, align 8
  store i64 %356, i64* %RAX.i498, align 8
  %357 = add i64 %352, -40
  %358 = add i64 %285, 40
  store i64 %358, i64* %PC.i, align 8
  %359 = inttoptr i64 %357 to i32*
  %360 = load i32, i32* %359, align 4
  %361 = zext i32 %360 to i64
  store i64 %361, i64* %RDX.i489, align 8
  %362 = add i64 %352, -48
  %363 = add i64 %285, 43
  store i64 %363, i64* %PC.i, align 8
  %364 = inttoptr i64 %362 to i32*
  %365 = load i32, i32* %364, align 4
  %366 = add i32 %365, %360
  %367 = zext i32 %366 to i64
  store i64 %367, i64* %RDX.i489, align 8
  %368 = icmp ult i32 %366, %360
  %369 = icmp ult i32 %366, %365
  %370 = or i1 %368, %369
  %371 = zext i1 %370 to i8
  store i8 %371, i8* %.pre-phi, align 1
  %372 = and i32 %366, 255
  %373 = tail call i32 @llvm.ctpop.i32(i32 %372)
  %374 = trunc i32 %373 to i8
  %375 = and i8 %374, 1
  %376 = xor i8 %375, 1
  store i8 %376, i8* %.pre-phi13, align 1
  %377 = xor i32 %365, %360
  %378 = xor i32 %377, %366
  %379 = lshr i32 %378, 4
  %380 = trunc i32 %379 to i8
  %381 = and i8 %380, 1
  store i8 %381, i8* %.pre-phi15, align 1
  %382 = icmp eq i32 %366, 0
  %383 = zext i1 %382 to i8
  store i8 %383, i8* %.pre-phi17, align 1
  %384 = lshr i32 %366, 31
  %385 = trunc i32 %384 to i8
  store i8 %385, i8* %.pre-phi19, align 1
  %386 = lshr i32 %360, 31
  %387 = lshr i32 %365, 31
  %388 = xor i32 %384, %386
  %389 = xor i32 %384, %387
  %390 = add nuw nsw i32 %388, %389
  %391 = icmp eq i32 %390, 2
  %392 = zext i1 %391 to i8
  store i8 %392, i8* %.pre-phi21, align 1
  %393 = sext i32 %366 to i64
  store i64 %393, i64* %RCX.i486, align 8
  %394 = shl nsw i64 %393, 3
  %395 = add i64 %356, 4
  %396 = add i64 %395, %394
  %397 = add i64 %285, 52
  store i64 %397, i64* %PC.i, align 8
  %398 = load <2 x float>, <2 x float>* %40, align 1
  %399 = extractelement <2 x float> %398, i32 0
  %400 = inttoptr i64 %396 to float*
  store float %399, float* %400, align 4
  %401 = load i64, i64* %RBP.i, align 8
  %402 = add i64 %401, -32
  %403 = load i64, i64* %PC.i, align 8
  %404 = add i64 %403, 4
  store i64 %404, i64* %PC.i, align 8
  %405 = inttoptr i64 %402 to i64*
  %406 = load i64, i64* %405, align 8
  store i64 %406, i64* %RAX.i498, align 8
  %407 = add i64 %401, -48
  %408 = add i64 %403, 7
  store i64 %408, i64* %PC.i, align 8
  %409 = inttoptr i64 %407 to i32*
  %410 = load i32, i32* %409, align 4
  %411 = add i32 %410, 1
  %412 = zext i32 %411 to i64
  store i64 %412, i64* %RDX.i489, align 8
  %413 = icmp eq i32 %410, -1
  %414 = icmp eq i32 %411, 0
  %415 = or i1 %413, %414
  %416 = zext i1 %415 to i8
  store i8 %416, i8* %.pre-phi, align 1
  %417 = and i32 %411, 255
  %418 = tail call i32 @llvm.ctpop.i32(i32 %417)
  %419 = trunc i32 %418 to i8
  %420 = and i8 %419, 1
  %421 = xor i8 %420, 1
  store i8 %421, i8* %.pre-phi13, align 1
  %422 = xor i32 %410, %411
  %423 = lshr i32 %422, 4
  %424 = trunc i32 %423 to i8
  %425 = and i8 %424, 1
  store i8 %425, i8* %.pre-phi15, align 1
  %426 = icmp eq i32 %411, 0
  %427 = zext i1 %426 to i8
  store i8 %427, i8* %.pre-phi17, align 1
  %428 = lshr i32 %411, 31
  %429 = trunc i32 %428 to i8
  store i8 %429, i8* %.pre-phi19, align 1
  %430 = lshr i32 %410, 31
  %431 = xor i32 %428, %430
  %432 = add nuw nsw i32 %431, %428
  %433 = icmp eq i32 %432, 2
  %434 = zext i1 %433 to i8
  store i8 %434, i8* %.pre-phi21, align 1
  %435 = sext i32 %411 to i64
  store i64 %435, i64* %RCX.i486, align 8
  %436 = shl nsw i64 %435, 3
  %437 = add i64 %436, %406
  %438 = add i64 %403, 18
  store i64 %438, i64* %PC.i, align 8
  %439 = inttoptr i64 %437 to i32*
  %440 = load i32, i32* %439, align 4
  %441 = bitcast [32 x %union.VectorReg]* %35 to i32*
  store i32 %440, i32* %441, align 1
  store float 0.000000e+00, float* %106, align 1
  store float 0.000000e+00, float* %108, align 1
  store float 0.000000e+00, float* %110, align 1
  %442 = add i64 %401, -16
  %443 = add i64 %403, 22
  store i64 %443, i64* %PC.i, align 8
  %444 = inttoptr i64 %442 to i64*
  %445 = load i64, i64* %444, align 8
  store i64 %445, i64* %RAX.i498, align 8
  %446 = add i64 %401, -40
  %447 = add i64 %403, 26
  store i64 %447, i64* %PC.i, align 8
  %448 = inttoptr i64 %446 to i32*
  %449 = load i32, i32* %448, align 4
  %450 = sext i32 %449 to i64
  store i64 %450, i64* %RCX.i486, align 8
  %451 = shl nsw i64 %450, 3
  %452 = add i64 %451, %445
  %453 = add i64 %403, 31
  store i64 %453, i64* %PC.i, align 8
  %454 = inttoptr i64 %452 to i32*
  %455 = load i32, i32* %454, align 4
  %456 = bitcast %union.VectorReg* %116 to i32*
  store i32 %455, i32* %456, align 1
  store float 0.000000e+00, float* %120, align 1
  store float 0.000000e+00, float* %122, align 1
  store float 0.000000e+00, float* %124, align 1
  %457 = add i64 %403, 35
  store i64 %457, i64* %PC.i, align 8
  %458 = load i64, i64* %444, align 8
  store i64 %458, i64* %RAX.i498, align 8
  %459 = add i64 %403, 38
  store i64 %459, i64* %PC.i, align 8
  %460 = load i32, i32* %448, align 4
  %461 = zext i32 %460 to i64
  store i64 %461, i64* %RDX.i489, align 8
  %462 = add i64 %401, -56
  %463 = add i64 %403, 41
  store i64 %463, i64* %PC.i, align 8
  %464 = inttoptr i64 %462 to i32*
  %465 = load i32, i32* %464, align 4
  %466 = add i32 %465, %460
  %467 = zext i32 %466 to i64
  store i64 %467, i64* %RDX.i489, align 8
  %468 = icmp ult i32 %466, %460
  %469 = icmp ult i32 %466, %465
  %470 = or i1 %468, %469
  %471 = zext i1 %470 to i8
  store i8 %471, i8* %.pre-phi, align 1
  %472 = and i32 %466, 255
  %473 = tail call i32 @llvm.ctpop.i32(i32 %472)
  %474 = trunc i32 %473 to i8
  %475 = and i8 %474, 1
  %476 = xor i8 %475, 1
  store i8 %476, i8* %.pre-phi13, align 1
  %477 = xor i32 %465, %460
  %478 = xor i32 %477, %466
  %479 = lshr i32 %478, 4
  %480 = trunc i32 %479 to i8
  %481 = and i8 %480, 1
  store i8 %481, i8* %.pre-phi15, align 1
  %482 = icmp eq i32 %466, 0
  %483 = zext i1 %482 to i8
  store i8 %483, i8* %.pre-phi17, align 1
  %484 = lshr i32 %466, 31
  %485 = trunc i32 %484 to i8
  store i8 %485, i8* %.pre-phi19, align 1
  %486 = lshr i32 %460, 31
  %487 = lshr i32 %465, 31
  %488 = xor i32 %484, %486
  %489 = xor i32 %484, %487
  %490 = add nuw nsw i32 %488, %489
  %491 = icmp eq i32 %490, 2
  %492 = zext i1 %491 to i8
  store i8 %492, i8* %.pre-phi21, align 1
  %493 = sext i32 %466 to i64
  store i64 %493, i64* %RCX.i486, align 8
  %494 = shl nsw i64 %493, 3
  %495 = add i64 %494, %458
  %496 = add i64 %403, 49
  store i64 %496, i64* %PC.i, align 8
  %497 = load <2 x float>, <2 x float>* %125, align 1
  %498 = load <2 x i32>, <2 x i32>* %126, align 1
  %499 = inttoptr i64 %495 to float*
  %500 = load float, float* %499, align 4
  %501 = extractelement <2 x float> %497, i32 0
  %502 = fsub float %501, %500
  store float %502, float* %118, align 1
  %503 = bitcast <2 x float> %497 to <2 x i32>
  %504 = extractelement <2 x i32> %503, i32 1
  store i32 %504, i32* %127, align 1
  %505 = extractelement <2 x i32> %498, i32 0
  store i32 %505, i32* %128, align 1
  %506 = extractelement <2 x i32> %498, i32 1
  store i32 %506, i32* %129, align 1
  %507 = load <2 x float>, <2 x float>* %111, align 1
  %508 = load <2 x i32>, <2 x i32>* %112, align 1
  %509 = load <2 x float>, <2 x float>* %130, align 1
  %510 = extractelement <2 x float> %507, i32 0
  %511 = extractelement <2 x float> %509, i32 0
  %512 = fmul float %510, %511
  store float %512, float* %104, align 1
  %513 = bitcast <2 x float> %507 to <2 x i32>
  %514 = extractelement <2 x i32> %513, i32 1
  store i32 %514, i32* %113, align 1
  %515 = extractelement <2 x i32> %508, i32 0
  store i32 %515, i32* %114, align 1
  %516 = extractelement <2 x i32> %508, i32 1
  store i32 %516, i32* %115, align 1
  %517 = load i64, i64* %RBP.i, align 8
  %518 = add i64 %517, -32
  %519 = add i64 %403, 57
  store i64 %519, i64* %PC.i, align 8
  %520 = inttoptr i64 %518 to i64*
  %521 = load i64, i64* %520, align 8
  store i64 %521, i64* %RAX.i498, align 8
  %522 = add i64 %517, -48
  %523 = add i64 %403, 60
  store i64 %523, i64* %PC.i, align 8
  %524 = inttoptr i64 %522 to i32*
  %525 = load i32, i32* %524, align 4
  %526 = add i32 %525, 1
  %527 = zext i32 %526 to i64
  store i64 %527, i64* %RDX.i489, align 8
  %528 = icmp eq i32 %525, -1
  %529 = icmp eq i32 %526, 0
  %530 = or i1 %528, %529
  %531 = zext i1 %530 to i8
  store i8 %531, i8* %.pre-phi, align 1
  %532 = and i32 %526, 255
  %533 = tail call i32 @llvm.ctpop.i32(i32 %532)
  %534 = trunc i32 %533 to i8
  %535 = and i8 %534, 1
  %536 = xor i8 %535, 1
  store i8 %536, i8* %.pre-phi13, align 1
  %537 = xor i32 %525, %526
  %538 = lshr i32 %537, 4
  %539 = trunc i32 %538 to i8
  %540 = and i8 %539, 1
  store i8 %540, i8* %.pre-phi15, align 1
  %541 = icmp eq i32 %526, 0
  %542 = zext i1 %541 to i8
  store i8 %542, i8* %.pre-phi17, align 1
  %543 = lshr i32 %526, 31
  %544 = trunc i32 %543 to i8
  store i8 %544, i8* %.pre-phi19, align 1
  %545 = lshr i32 %525, 31
  %546 = xor i32 %543, %545
  %547 = add nuw nsw i32 %546, %543
  %548 = icmp eq i32 %547, 2
  %549 = zext i1 %548 to i8
  store i8 %549, i8* %.pre-phi21, align 1
  %550 = sext i32 %526 to i64
  store i64 %550, i64* %RCX.i486, align 8
  %551 = shl nsw i64 %550, 3
  %552 = add i64 %521, 4
  %553 = add i64 %552, %551
  %554 = add i64 %403, 72
  store i64 %554, i64* %PC.i, align 8
  %555 = inttoptr i64 %553 to i32*
  %556 = load i32, i32* %555, align 4
  %557 = bitcast %union.VectorReg* %116 to i32*
  store i32 %556, i32* %557, align 1
  store float 0.000000e+00, float* %120, align 1
  store float 0.000000e+00, float* %122, align 1
  store float 0.000000e+00, float* %124, align 1
  %558 = add i64 %517, -16
  %559 = add i64 %403, 76
  store i64 %559, i64* %PC.i, align 8
  %560 = inttoptr i64 %558 to i64*
  %561 = load i64, i64* %560, align 8
  store i64 %561, i64* %RAX.i498, align 8
  %562 = add i64 %517, -40
  %563 = add i64 %403, 80
  store i64 %563, i64* %PC.i, align 8
  %564 = inttoptr i64 %562 to i32*
  %565 = load i32, i32* %564, align 4
  %566 = sext i32 %565 to i64
  store i64 %566, i64* %RCX.i486, align 8
  %567 = shl nsw i64 %566, 3
  %568 = add i64 %561, 4
  %569 = add i64 %568, %567
  %570 = add i64 %403, 86
  store i64 %570, i64* %PC.i, align 8
  %571 = inttoptr i64 %569 to i32*
  %572 = load i32, i32* %571, align 4
  %573 = bitcast %union.VectorReg* %131 to i32*
  store i32 %572, i32* %573, align 1
  store float 0.000000e+00, float* %135, align 1
  store float 0.000000e+00, float* %137, align 1
  store float 0.000000e+00, float* %139, align 1
  %574 = add i64 %403, 90
  store i64 %574, i64* %PC.i, align 8
  %575 = load i64, i64* %560, align 8
  store i64 %575, i64* %RAX.i498, align 8
  %576 = add i64 %403, 93
  store i64 %576, i64* %PC.i, align 8
  %577 = load i32, i32* %564, align 4
  %578 = zext i32 %577 to i64
  store i64 %578, i64* %RDX.i489, align 8
  %579 = load i64, i64* %RBP.i, align 8
  %580 = add i64 %579, -56
  %581 = add i64 %403, 96
  store i64 %581, i64* %PC.i, align 8
  %582 = inttoptr i64 %580 to i32*
  %583 = load i32, i32* %582, align 4
  %584 = add i32 %583, %577
  %585 = zext i32 %584 to i64
  store i64 %585, i64* %RDX.i489, align 8
  %586 = icmp ult i32 %584, %577
  %587 = icmp ult i32 %584, %583
  %588 = or i1 %586, %587
  %589 = zext i1 %588 to i8
  store i8 %589, i8* %.pre-phi, align 1
  %590 = and i32 %584, 255
  %591 = tail call i32 @llvm.ctpop.i32(i32 %590)
  %592 = trunc i32 %591 to i8
  %593 = and i8 %592, 1
  %594 = xor i8 %593, 1
  store i8 %594, i8* %.pre-phi13, align 1
  %595 = xor i32 %583, %577
  %596 = xor i32 %595, %584
  %597 = lshr i32 %596, 4
  %598 = trunc i32 %597 to i8
  %599 = and i8 %598, 1
  store i8 %599, i8* %.pre-phi15, align 1
  %600 = icmp eq i32 %584, 0
  %601 = zext i1 %600 to i8
  store i8 %601, i8* %.pre-phi17, align 1
  %602 = lshr i32 %584, 31
  %603 = trunc i32 %602 to i8
  store i8 %603, i8* %.pre-phi19, align 1
  %604 = lshr i32 %577, 31
  %605 = lshr i32 %583, 31
  %606 = xor i32 %602, %604
  %607 = xor i32 %602, %605
  %608 = add nuw nsw i32 %606, %607
  %609 = icmp eq i32 %608, 2
  %610 = zext i1 %609 to i8
  store i8 %610, i8* %.pre-phi21, align 1
  %611 = sext i32 %584 to i64
  store i64 %611, i64* %RCX.i486, align 8
  %612 = shl nsw i64 %611, 3
  %613 = add i64 %575, 4
  %614 = add i64 %613, %612
  %615 = add i64 %403, 105
  store i64 %615, i64* %PC.i, align 8
  %616 = load <2 x float>, <2 x float>* %140, align 1
  %617 = load <2 x i32>, <2 x i32>* %141, align 1
  %618 = inttoptr i64 %614 to float*
  %619 = load float, float* %618, align 4
  %620 = extractelement <2 x float> %616, i32 0
  %621 = fsub float %620, %619
  store float %621, float* %133, align 1
  %622 = bitcast <2 x float> %616 to <2 x i32>
  %623 = extractelement <2 x i32> %622, i32 1
  store i32 %623, i32* %142, align 1
  %624 = extractelement <2 x i32> %617, i32 0
  store i32 %624, i32* %143, align 1
  %625 = extractelement <2 x i32> %617, i32 1
  store i32 %625, i32* %144, align 1
  %626 = load <2 x float>, <2 x float>* %125, align 1
  %627 = load <2 x i32>, <2 x i32>* %126, align 1
  %628 = load <2 x float>, <2 x float>* %145, align 1
  %629 = extractelement <2 x float> %626, i32 0
  %630 = extractelement <2 x float> %628, i32 0
  %631 = fmul float %629, %630
  store float %631, float* %118, align 1
  %632 = bitcast <2 x float> %626 to <2 x i32>
  %633 = extractelement <2 x i32> %632, i32 1
  store i32 %633, i32* %127, align 1
  %634 = extractelement <2 x i32> %627, i32 0
  store i32 %634, i32* %128, align 1
  %635 = extractelement <2 x i32> %627, i32 1
  store i32 %635, i32* %129, align 1
  %636 = load <2 x float>, <2 x float>* %111, align 1
  %637 = load <2 x i32>, <2 x i32>* %112, align 1
  %638 = load <2 x float>, <2 x float>* %130, align 1
  %639 = extractelement <2 x float> %636, i32 0
  %640 = extractelement <2 x float> %638, i32 0
  %641 = fsub float %639, %640
  store float %641, float* %104, align 1
  %642 = bitcast <2 x float> %636 to <2 x i32>
  %643 = extractelement <2 x i32> %642, i32 1
  store i32 %643, i32* %113, align 1
  %644 = extractelement <2 x i32> %637, i32 0
  store i32 %644, i32* %114, align 1
  %645 = extractelement <2 x i32> %637, i32 1
  store i32 %645, i32* %115, align 1
  %646 = add i64 %579, -24
  %647 = add i64 %403, 117
  store i64 %647, i64* %PC.i, align 8
  %648 = inttoptr i64 %646 to i64*
  %649 = load i64, i64* %648, align 8
  store i64 %649, i64* %RAX.i498, align 8
  %650 = load i64, i64* %RBP.i, align 8
  %651 = add i64 %650, -40
  %652 = add i64 %403, 120
  store i64 %652, i64* %PC.i, align 8
  %653 = inttoptr i64 %651 to i32*
  %654 = load i32, i32* %653, align 4
  %655 = zext i32 %654 to i64
  store i64 %655, i64* %RDX.i489, align 8
  %656 = add i64 %650, -44
  %657 = add i64 %403, 123
  store i64 %657, i64* %PC.i, align 8
  %658 = inttoptr i64 %656 to i32*
  %659 = load i32, i32* %658, align 4
  %660 = add i32 %659, %654
  %661 = zext i32 %660 to i64
  store i64 %661, i64* %RDX.i489, align 8
  %662 = icmp ult i32 %660, %654
  %663 = icmp ult i32 %660, %659
  %664 = or i1 %662, %663
  %665 = zext i1 %664 to i8
  store i8 %665, i8* %.pre-phi, align 1
  %666 = and i32 %660, 255
  %667 = tail call i32 @llvm.ctpop.i32(i32 %666)
  %668 = trunc i32 %667 to i8
  %669 = and i8 %668, 1
  %670 = xor i8 %669, 1
  store i8 %670, i8* %.pre-phi13, align 1
  %671 = xor i32 %659, %654
  %672 = xor i32 %671, %660
  %673 = lshr i32 %672, 4
  %674 = trunc i32 %673 to i8
  %675 = and i8 %674, 1
  store i8 %675, i8* %.pre-phi15, align 1
  %676 = icmp eq i32 %660, 0
  %677 = zext i1 %676 to i8
  store i8 %677, i8* %.pre-phi17, align 1
  %678 = lshr i32 %660, 31
  %679 = trunc i32 %678 to i8
  store i8 %679, i8* %.pre-phi19, align 1
  %680 = lshr i32 %654, 31
  %681 = lshr i32 %659, 31
  %682 = xor i32 %678, %680
  %683 = xor i32 %678, %681
  %684 = add nuw nsw i32 %682, %683
  %685 = icmp eq i32 %684, 2
  %686 = zext i1 %685 to i8
  store i8 %686, i8* %.pre-phi21, align 1
  %687 = sext i32 %660 to i64
  store i64 %687, i64* %RCX.i486, align 8
  %688 = shl nsw i64 %687, 3
  %689 = add i64 %688, %649
  %690 = add i64 %403, 131
  store i64 %690, i64* %PC.i, align 8
  %691 = load <2 x float>, <2 x float>* %40, align 1
  %692 = extractelement <2 x float> %691, i32 0
  %693 = inttoptr i64 %689 to float*
  store float %692, float* %693, align 4
  %694 = load i64, i64* %RBP.i, align 8
  %695 = add i64 %694, -32
  %696 = load i64, i64* %PC.i, align 8
  %697 = add i64 %696, 4
  store i64 %697, i64* %PC.i, align 8
  %698 = inttoptr i64 %695 to i64*
  %699 = load i64, i64* %698, align 8
  store i64 %699, i64* %RAX.i498, align 8
  %700 = add i64 %694, -48
  %701 = add i64 %696, 7
  store i64 %701, i64* %PC.i, align 8
  %702 = inttoptr i64 %700 to i32*
  %703 = load i32, i32* %702, align 4
  %704 = add i32 %703, 1
  %705 = zext i32 %704 to i64
  store i64 %705, i64* %RDX.i489, align 8
  %706 = icmp eq i32 %703, -1
  %707 = icmp eq i32 %704, 0
  %708 = or i1 %706, %707
  %709 = zext i1 %708 to i8
  store i8 %709, i8* %.pre-phi, align 1
  %710 = and i32 %704, 255
  %711 = tail call i32 @llvm.ctpop.i32(i32 %710)
  %712 = trunc i32 %711 to i8
  %713 = and i8 %712, 1
  %714 = xor i8 %713, 1
  store i8 %714, i8* %.pre-phi13, align 1
  %715 = xor i32 %703, %704
  %716 = lshr i32 %715, 4
  %717 = trunc i32 %716 to i8
  %718 = and i8 %717, 1
  store i8 %718, i8* %.pre-phi15, align 1
  %719 = icmp eq i32 %704, 0
  %720 = zext i1 %719 to i8
  store i8 %720, i8* %.pre-phi17, align 1
  %721 = lshr i32 %704, 31
  %722 = trunc i32 %721 to i8
  store i8 %722, i8* %.pre-phi19, align 1
  %723 = lshr i32 %703, 31
  %724 = xor i32 %721, %723
  %725 = add nuw nsw i32 %724, %721
  %726 = icmp eq i32 %725, 2
  %727 = zext i1 %726 to i8
  store i8 %727, i8* %.pre-phi21, align 1
  %728 = sext i32 %704 to i64
  store i64 %728, i64* %RCX.i486, align 8
  %729 = shl nsw i64 %728, 3
  %730 = add i64 %729, %699
  %731 = add i64 %696, 18
  store i64 %731, i64* %PC.i, align 8
  %732 = inttoptr i64 %730 to i32*
  %733 = load i32, i32* %732, align 4
  %734 = bitcast [32 x %union.VectorReg]* %35 to i32*
  store i32 %733, i32* %734, align 1
  store float 0.000000e+00, float* %106, align 1
  store float 0.000000e+00, float* %108, align 1
  store float 0.000000e+00, float* %110, align 1
  %735 = add i64 %694, -16
  %736 = add i64 %696, 22
  store i64 %736, i64* %PC.i, align 8
  %737 = inttoptr i64 %735 to i64*
  %738 = load i64, i64* %737, align 8
  store i64 %738, i64* %RAX.i498, align 8
  %739 = add i64 %694, -40
  %740 = add i64 %696, 26
  store i64 %740, i64* %PC.i, align 8
  %741 = inttoptr i64 %739 to i32*
  %742 = load i32, i32* %741, align 4
  %743 = sext i32 %742 to i64
  store i64 %743, i64* %RCX.i486, align 8
  %744 = shl nsw i64 %743, 3
  %745 = add i64 %738, 4
  %746 = add i64 %745, %744
  %747 = add i64 %696, 32
  store i64 %747, i64* %PC.i, align 8
  %748 = inttoptr i64 %746 to i32*
  %749 = load i32, i32* %748, align 4
  %750 = bitcast %union.VectorReg* %116 to i32*
  store i32 %749, i32* %750, align 1
  store float 0.000000e+00, float* %120, align 1
  store float 0.000000e+00, float* %122, align 1
  store float 0.000000e+00, float* %124, align 1
  %751 = add i64 %696, 36
  store i64 %751, i64* %PC.i, align 8
  %752 = load i64, i64* %737, align 8
  store i64 %752, i64* %RAX.i498, align 8
  %753 = add i64 %696, 39
  store i64 %753, i64* %PC.i, align 8
  %754 = load i32, i32* %741, align 4
  %755 = zext i32 %754 to i64
  store i64 %755, i64* %RDX.i489, align 8
  %756 = load i64, i64* %RBP.i, align 8
  %757 = add i64 %756, -56
  %758 = add i64 %696, 42
  store i64 %758, i64* %PC.i, align 8
  %759 = inttoptr i64 %757 to i32*
  %760 = load i32, i32* %759, align 4
  %761 = add i32 %760, %754
  %762 = zext i32 %761 to i64
  store i64 %762, i64* %RDX.i489, align 8
  %763 = icmp ult i32 %761, %754
  %764 = icmp ult i32 %761, %760
  %765 = or i1 %763, %764
  %766 = zext i1 %765 to i8
  store i8 %766, i8* %.pre-phi, align 1
  %767 = and i32 %761, 255
  %768 = tail call i32 @llvm.ctpop.i32(i32 %767)
  %769 = trunc i32 %768 to i8
  %770 = and i8 %769, 1
  %771 = xor i8 %770, 1
  store i8 %771, i8* %.pre-phi13, align 1
  %772 = xor i32 %760, %754
  %773 = xor i32 %772, %761
  %774 = lshr i32 %773, 4
  %775 = trunc i32 %774 to i8
  %776 = and i8 %775, 1
  store i8 %776, i8* %.pre-phi15, align 1
  %777 = icmp eq i32 %761, 0
  %778 = zext i1 %777 to i8
  store i8 %778, i8* %.pre-phi17, align 1
  %779 = lshr i32 %761, 31
  %780 = trunc i32 %779 to i8
  store i8 %780, i8* %.pre-phi19, align 1
  %781 = lshr i32 %754, 31
  %782 = lshr i32 %760, 31
  %783 = xor i32 %779, %781
  %784 = xor i32 %779, %782
  %785 = add nuw nsw i32 %783, %784
  %786 = icmp eq i32 %785, 2
  %787 = zext i1 %786 to i8
  store i8 %787, i8* %.pre-phi21, align 1
  %788 = sext i32 %761 to i64
  store i64 %788, i64* %RCX.i486, align 8
  %789 = shl nsw i64 %788, 3
  %790 = add i64 %752, 4
  %791 = add i64 %790, %789
  %792 = add i64 %696, 51
  store i64 %792, i64* %PC.i, align 8
  %793 = load <2 x float>, <2 x float>* %125, align 1
  %794 = load <2 x i32>, <2 x i32>* %126, align 1
  %795 = inttoptr i64 %791 to float*
  %796 = load float, float* %795, align 4
  %797 = extractelement <2 x float> %793, i32 0
  %798 = fsub float %797, %796
  store float %798, float* %118, align 1
  %799 = bitcast <2 x float> %793 to <2 x i32>
  %800 = extractelement <2 x i32> %799, i32 1
  store i32 %800, i32* %127, align 1
  %801 = extractelement <2 x i32> %794, i32 0
  store i32 %801, i32* %128, align 1
  %802 = extractelement <2 x i32> %794, i32 1
  store i32 %802, i32* %129, align 1
  %803 = load <2 x float>, <2 x float>* %111, align 1
  %804 = load <2 x i32>, <2 x i32>* %112, align 1
  %805 = load <2 x float>, <2 x float>* %130, align 1
  %806 = extractelement <2 x float> %803, i32 0
  %807 = extractelement <2 x float> %805, i32 0
  %808 = fmul float %806, %807
  store float %808, float* %104, align 1
  %809 = bitcast <2 x float> %803 to <2 x i32>
  %810 = extractelement <2 x i32> %809, i32 1
  store i32 %810, i32* %113, align 1
  %811 = extractelement <2 x i32> %804, i32 0
  store i32 %811, i32* %114, align 1
  %812 = extractelement <2 x i32> %804, i32 1
  store i32 %812, i32* %115, align 1
  %813 = add i64 %756, -32
  %814 = add i64 %696, 59
  store i64 %814, i64* %PC.i, align 8
  %815 = inttoptr i64 %813 to i64*
  %816 = load i64, i64* %815, align 8
  store i64 %816, i64* %RAX.i498, align 8
  %817 = add i64 %756, -48
  %818 = add i64 %696, 62
  store i64 %818, i64* %PC.i, align 8
  %819 = inttoptr i64 %817 to i32*
  %820 = load i32, i32* %819, align 4
  %821 = add i32 %820, 1
  %822 = zext i32 %821 to i64
  store i64 %822, i64* %RDX.i489, align 8
  %823 = icmp eq i32 %820, -1
  %824 = icmp eq i32 %821, 0
  %825 = or i1 %823, %824
  %826 = zext i1 %825 to i8
  store i8 %826, i8* %.pre-phi, align 1
  %827 = and i32 %821, 255
  %828 = tail call i32 @llvm.ctpop.i32(i32 %827)
  %829 = trunc i32 %828 to i8
  %830 = and i8 %829, 1
  %831 = xor i8 %830, 1
  store i8 %831, i8* %.pre-phi13, align 1
  %832 = xor i32 %820, %821
  %833 = lshr i32 %832, 4
  %834 = trunc i32 %833 to i8
  %835 = and i8 %834, 1
  store i8 %835, i8* %.pre-phi15, align 1
  %836 = icmp eq i32 %821, 0
  %837 = zext i1 %836 to i8
  store i8 %837, i8* %.pre-phi17, align 1
  %838 = lshr i32 %821, 31
  %839 = trunc i32 %838 to i8
  store i8 %839, i8* %.pre-phi19, align 1
  %840 = lshr i32 %820, 31
  %841 = xor i32 %838, %840
  %842 = add nuw nsw i32 %841, %838
  %843 = icmp eq i32 %842, 2
  %844 = zext i1 %843 to i8
  store i8 %844, i8* %.pre-phi21, align 1
  %845 = sext i32 %821 to i64
  store i64 %845, i64* %RCX.i486, align 8
  %846 = shl nsw i64 %845, 3
  %847 = add i64 %816, 4
  %848 = add i64 %847, %846
  %849 = add i64 %696, 74
  store i64 %849, i64* %PC.i, align 8
  %850 = inttoptr i64 %848 to i32*
  %851 = load i32, i32* %850, align 4
  %852 = bitcast %union.VectorReg* %116 to i32*
  store i32 %851, i32* %852, align 1
  store float 0.000000e+00, float* %120, align 1
  store float 0.000000e+00, float* %122, align 1
  store float 0.000000e+00, float* %124, align 1
  %853 = load i64, i64* %RBP.i, align 8
  %854 = add i64 %853, -16
  %855 = add i64 %696, 78
  store i64 %855, i64* %PC.i, align 8
  %856 = inttoptr i64 %854 to i64*
  %857 = load i64, i64* %856, align 8
  store i64 %857, i64* %RAX.i498, align 8
  %858 = add i64 %853, -40
  %859 = add i64 %696, 82
  store i64 %859, i64* %PC.i, align 8
  %860 = inttoptr i64 %858 to i32*
  %861 = load i32, i32* %860, align 4
  %862 = sext i32 %861 to i64
  store i64 %862, i64* %RCX.i486, align 8
  %863 = shl nsw i64 %862, 3
  %864 = add i64 %863, %857
  %865 = add i64 %696, 87
  store i64 %865, i64* %PC.i, align 8
  %866 = inttoptr i64 %864 to i32*
  %867 = load i32, i32* %866, align 4
  %868 = bitcast %union.VectorReg* %131 to i32*
  store i32 %867, i32* %868, align 1
  store float 0.000000e+00, float* %135, align 1
  store float 0.000000e+00, float* %137, align 1
  store float 0.000000e+00, float* %139, align 1
  %869 = add i64 %696, 91
  store i64 %869, i64* %PC.i, align 8
  %870 = load i64, i64* %856, align 8
  store i64 %870, i64* %RAX.i498, align 8
  %871 = add i64 %696, 94
  store i64 %871, i64* %PC.i, align 8
  %872 = load i32, i32* %860, align 4
  %873 = zext i32 %872 to i64
  store i64 %873, i64* %RDX.i489, align 8
  %874 = add i64 %853, -56
  %875 = add i64 %696, 97
  store i64 %875, i64* %PC.i, align 8
  %876 = inttoptr i64 %874 to i32*
  %877 = load i32, i32* %876, align 4
  %878 = add i32 %877, %872
  %879 = zext i32 %878 to i64
  store i64 %879, i64* %RDX.i489, align 8
  %880 = icmp ult i32 %878, %872
  %881 = icmp ult i32 %878, %877
  %882 = or i1 %880, %881
  %883 = zext i1 %882 to i8
  store i8 %883, i8* %.pre-phi, align 1
  %884 = and i32 %878, 255
  %885 = tail call i32 @llvm.ctpop.i32(i32 %884)
  %886 = trunc i32 %885 to i8
  %887 = and i8 %886, 1
  %888 = xor i8 %887, 1
  store i8 %888, i8* %.pre-phi13, align 1
  %889 = xor i32 %877, %872
  %890 = xor i32 %889, %878
  %891 = lshr i32 %890, 4
  %892 = trunc i32 %891 to i8
  %893 = and i8 %892, 1
  store i8 %893, i8* %.pre-phi15, align 1
  %894 = icmp eq i32 %878, 0
  %895 = zext i1 %894 to i8
  store i8 %895, i8* %.pre-phi17, align 1
  %896 = lshr i32 %878, 31
  %897 = trunc i32 %896 to i8
  store i8 %897, i8* %.pre-phi19, align 1
  %898 = lshr i32 %872, 31
  %899 = lshr i32 %877, 31
  %900 = xor i32 %896, %898
  %901 = xor i32 %896, %899
  %902 = add nuw nsw i32 %900, %901
  %903 = icmp eq i32 %902, 2
  %904 = zext i1 %903 to i8
  store i8 %904, i8* %.pre-phi21, align 1
  %905 = sext i32 %878 to i64
  store i64 %905, i64* %RCX.i486, align 8
  %906 = shl nsw i64 %905, 3
  %907 = add i64 %906, %870
  %908 = add i64 %696, 105
  store i64 %908, i64* %PC.i, align 8
  %909 = load <2 x float>, <2 x float>* %140, align 1
  %910 = load <2 x i32>, <2 x i32>* %141, align 1
  %911 = inttoptr i64 %907 to float*
  %912 = load float, float* %911, align 4
  %913 = extractelement <2 x float> %909, i32 0
  %914 = fsub float %913, %912
  store float %914, float* %133, align 1
  %915 = bitcast <2 x float> %909 to <2 x i32>
  %916 = extractelement <2 x i32> %915, i32 1
  store i32 %916, i32* %142, align 1
  %917 = extractelement <2 x i32> %910, i32 0
  store i32 %917, i32* %143, align 1
  %918 = extractelement <2 x i32> %910, i32 1
  store i32 %918, i32* %144, align 1
  %919 = load <2 x float>, <2 x float>* %125, align 1
  %920 = load <2 x i32>, <2 x i32>* %126, align 1
  %921 = load <2 x float>, <2 x float>* %145, align 1
  %922 = extractelement <2 x float> %919, i32 0
  %923 = extractelement <2 x float> %921, i32 0
  %924 = fmul float %922, %923
  store float %924, float* %118, align 1
  %925 = bitcast <2 x float> %919 to <2 x i32>
  %926 = extractelement <2 x i32> %925, i32 1
  store i32 %926, i32* %127, align 1
  %927 = extractelement <2 x i32> %920, i32 0
  store i32 %927, i32* %128, align 1
  %928 = extractelement <2 x i32> %920, i32 1
  store i32 %928, i32* %129, align 1
  %929 = load <2 x float>, <2 x float>* %111, align 1
  %930 = load <2 x i32>, <2 x i32>* %112, align 1
  %931 = load <2 x float>, <2 x float>* %130, align 1
  %932 = extractelement <2 x float> %929, i32 0
  %933 = extractelement <2 x float> %931, i32 0
  %934 = fadd float %932, %933
  store float %934, float* %104, align 1
  %935 = bitcast <2 x float> %929 to <2 x i32>
  %936 = extractelement <2 x i32> %935, i32 1
  store i32 %936, i32* %113, align 1
  %937 = extractelement <2 x i32> %930, i32 0
  store i32 %937, i32* %114, align 1
  %938 = extractelement <2 x i32> %930, i32 1
  store i32 %938, i32* %115, align 1
  %939 = load i64, i64* %RBP.i, align 8
  %940 = add i64 %939, -24
  %941 = add i64 %696, 117
  store i64 %941, i64* %PC.i, align 8
  %942 = inttoptr i64 %940 to i64*
  %943 = load i64, i64* %942, align 8
  store i64 %943, i64* %RAX.i498, align 8
  %944 = add i64 %939, -40
  %945 = add i64 %696, 120
  store i64 %945, i64* %PC.i, align 8
  %946 = inttoptr i64 %944 to i32*
  %947 = load i32, i32* %946, align 4
  %948 = zext i32 %947 to i64
  store i64 %948, i64* %RDX.i489, align 8
  %949 = add i64 %939, -44
  %950 = add i64 %696, 123
  store i64 %950, i64* %PC.i, align 8
  %951 = inttoptr i64 %949 to i32*
  %952 = load i32, i32* %951, align 4
  %953 = add i32 %952, %947
  %954 = zext i32 %953 to i64
  store i64 %954, i64* %RDX.i489, align 8
  %955 = icmp ult i32 %953, %947
  %956 = icmp ult i32 %953, %952
  %957 = or i1 %955, %956
  %958 = zext i1 %957 to i8
  store i8 %958, i8* %.pre-phi, align 1
  %959 = and i32 %953, 255
  %960 = tail call i32 @llvm.ctpop.i32(i32 %959)
  %961 = trunc i32 %960 to i8
  %962 = and i8 %961, 1
  %963 = xor i8 %962, 1
  store i8 %963, i8* %.pre-phi13, align 1
  %964 = xor i32 %952, %947
  %965 = xor i32 %964, %953
  %966 = lshr i32 %965, 4
  %967 = trunc i32 %966 to i8
  %968 = and i8 %967, 1
  store i8 %968, i8* %.pre-phi15, align 1
  %969 = icmp eq i32 %953, 0
  %970 = zext i1 %969 to i8
  store i8 %970, i8* %.pre-phi17, align 1
  %971 = lshr i32 %953, 31
  %972 = trunc i32 %971 to i8
  store i8 %972, i8* %.pre-phi19, align 1
  %973 = lshr i32 %947, 31
  %974 = lshr i32 %952, 31
  %975 = xor i32 %971, %973
  %976 = xor i32 %971, %974
  %977 = add nuw nsw i32 %975, %976
  %978 = icmp eq i32 %977, 2
  %979 = zext i1 %978 to i8
  store i8 %979, i8* %.pre-phi21, align 1
  %980 = sext i32 %953 to i64
  store i64 %980, i64* %RCX.i486, align 8
  %981 = shl nsw i64 %980, 3
  %982 = add i64 %943, 4
  %983 = add i64 %982, %981
  %984 = add i64 %696, 132
  store i64 %984, i64* %PC.i, align 8
  %985 = load <2 x float>, <2 x float>* %40, align 1
  %986 = extractelement <2 x float> %985, i32 0
  %987 = inttoptr i64 %983 to float*
  store float %986, float* %987, align 4
  %988 = load i64, i64* %RBP.i, align 8
  %989 = add i64 %988, -40
  %990 = load i64, i64* %PC.i, align 8
  %991 = add i64 %990, 3
  store i64 %991, i64* %PC.i, align 8
  %992 = inttoptr i64 %989 to i32*
  %993 = load i32, i32* %992, align 4
  %994 = add i32 %993, 1
  %995 = zext i32 %994 to i64
  store i64 %995, i64* %RDX.i489, align 8
  %996 = icmp eq i32 %993, -1
  %997 = icmp eq i32 %994, 0
  %998 = or i1 %996, %997
  %999 = zext i1 %998 to i8
  store i8 %999, i8* %.pre-phi, align 1
  %1000 = and i32 %994, 255
  %1001 = tail call i32 @llvm.ctpop.i32(i32 %1000)
  %1002 = trunc i32 %1001 to i8
  %1003 = and i8 %1002, 1
  %1004 = xor i8 %1003, 1
  store i8 %1004, i8* %.pre-phi13, align 1
  %1005 = xor i32 %993, %994
  %1006 = lshr i32 %1005, 4
  %1007 = trunc i32 %1006 to i8
  %1008 = and i8 %1007, 1
  store i8 %1008, i8* %.pre-phi15, align 1
  %1009 = icmp eq i32 %994, 0
  %1010 = zext i1 %1009 to i8
  store i8 %1010, i8* %.pre-phi17, align 1
  %1011 = lshr i32 %994, 31
  %1012 = trunc i32 %1011 to i8
  store i8 %1012, i8* %.pre-phi19, align 1
  %1013 = lshr i32 %993, 31
  %1014 = xor i32 %1011, %1013
  %1015 = add nuw nsw i32 %1014, %1011
  %1016 = icmp eq i32 %1015, 2
  %1017 = zext i1 %1016 to i8
  store i8 %1017, i8* %.pre-phi21, align 1
  %1018 = add i64 %990, 9
  store i64 %1018, i64* %PC.i, align 8
  store i32 %994, i32* %992, align 4
  %1019 = load i64, i64* %RBP.i, align 8
  %1020 = add i64 %1019, -40
  %1021 = load i64, i64* %PC.i, align 8
  %1022 = add i64 %1021, 3
  store i64 %1022, i64* %PC.i, align 8
  %1023 = inttoptr i64 %1020 to i32*
  %1024 = load i32, i32* %1023, align 4
  %1025 = zext i32 %1024 to i64
  store i64 %1025, i64* %RAX.i498, align 8
  %1026 = add i64 %1019, -44
  %1027 = add i64 %1021, 6
  store i64 %1027, i64* %PC.i, align 8
  %1028 = inttoptr i64 %1026 to i32*
  %1029 = load i32, i32* %1028, align 4
  %1030 = sub i32 %1024, %1029
  %1031 = icmp ult i32 %1024, %1029
  %1032 = zext i1 %1031 to i8
  store i8 %1032, i8* %.pre-phi, align 1
  %1033 = and i32 %1030, 255
  %1034 = tail call i32 @llvm.ctpop.i32(i32 %1033)
  %1035 = trunc i32 %1034 to i8
  %1036 = and i8 %1035, 1
  %1037 = xor i8 %1036, 1
  store i8 %1037, i8* %.pre-phi13, align 1
  %1038 = xor i32 %1029, %1024
  %1039 = xor i32 %1038, %1030
  %1040 = lshr i32 %1039, 4
  %1041 = trunc i32 %1040 to i8
  %1042 = and i8 %1041, 1
  store i8 %1042, i8* %.pre-phi15, align 1
  %1043 = icmp eq i32 %1030, 0
  %1044 = zext i1 %1043 to i8
  store i8 %1044, i8* %.pre-phi17, align 1
  %1045 = lshr i32 %1030, 31
  %1046 = trunc i32 %1045 to i8
  store i8 %1046, i8* %.pre-phi19, align 1
  %1047 = lshr i32 %1024, 31
  %1048 = lshr i32 %1029, 31
  %1049 = xor i32 %1048, %1047
  %1050 = xor i32 %1045, %1047
  %1051 = add nuw nsw i32 %1050, %1049
  %1052 = icmp eq i32 %1051, 2
  %1053 = zext i1 %1052 to i8
  store i8 %1053, i8* %.pre-phi21, align 1
  %1054 = icmp ne i8 %1046, 0
  %1055 = xor i1 %1054, %1052
  %1056 = or i1 %1043, %1055
  %.v = select i1 %1056, i64 -373, i64 12
  %1057 = add i64 %1021, %.v
  store i64 %1057, i64* %3, align 8
  br i1 %1056, label %block_.L_400a6e, label %block_400bef

block_400bef:                                     ; preds = %block_.L_400a6e
  %1058 = add i64 %1057, 3
  store i64 %1058, i64* %PC.i, align 8
  %1059 = load i32, i32* %1028, align 4
  %1060 = zext i32 %1059 to i64
  store i64 %1060, i64* %RAX.i498, align 8
  %1061 = add i64 %1019, -48
  %1062 = add i64 %1057, 6
  store i64 %1062, i64* %PC.i, align 8
  %1063 = inttoptr i64 %1061 to i32*
  store i32 %1059, i32* %1063, align 4
  %1064 = load i64, i64* %RBP.i, align 8
  %1065 = add i64 %1064, -48
  %1066 = load i64, i64* %PC.i, align 8
  %1067 = add i64 %1066, 3
  store i64 %1067, i64* %PC.i, align 8
  %1068 = inttoptr i64 %1065 to i32*
  %1069 = load i32, i32* %1068, align 4
  %1070 = zext i32 %1069 to i64
  store i64 %1070, i64* %RAX.i498, align 8
  %1071 = add i64 %1064, -52
  %1072 = add i64 %1066, 6
  store i64 %1072, i64* %PC.i, align 8
  %1073 = inttoptr i64 %1071 to i32*
  %1074 = load i32, i32* %1073, align 4
  %1075 = add i32 %1074, %1069
  %1076 = zext i32 %1075 to i64
  store i64 %1076, i64* %RAX.i498, align 8
  %1077 = icmp ult i32 %1075, %1069
  %1078 = icmp ult i32 %1075, %1074
  %1079 = or i1 %1077, %1078
  %1080 = zext i1 %1079 to i8
  store i8 %1080, i8* %.pre-phi, align 1
  %1081 = and i32 %1075, 255
  %1082 = tail call i32 @llvm.ctpop.i32(i32 %1081)
  %1083 = trunc i32 %1082 to i8
  %1084 = and i8 %1083, 1
  %1085 = xor i8 %1084, 1
  store i8 %1085, i8* %.pre-phi13, align 1
  %1086 = xor i32 %1074, %1069
  %1087 = xor i32 %1086, %1075
  %1088 = lshr i32 %1087, 4
  %1089 = trunc i32 %1088 to i8
  %1090 = and i8 %1089, 1
  store i8 %1090, i8* %.pre-phi15, align 1
  %1091 = icmp eq i32 %1075, 0
  %1092 = zext i1 %1091 to i8
  store i8 %1092, i8* %.pre-phi17, align 1
  %1093 = lshr i32 %1075, 31
  %1094 = trunc i32 %1093 to i8
  store i8 %1094, i8* %.pre-phi19, align 1
  %1095 = lshr i32 %1069, 31
  %1096 = lshr i32 %1074, 31
  %1097 = xor i32 %1093, %1095
  %1098 = xor i32 %1093, %1096
  %1099 = add nuw nsw i32 %1097, %1098
  %1100 = icmp eq i32 %1099, 2
  %1101 = zext i1 %1100 to i8
  store i8 %1101, i8* %.pre-phi21, align 1
  %1102 = add i64 %1064, -44
  %1103 = add i64 %1066, 9
  store i64 %1103, i64* %PC.i, align 8
  %1104 = inttoptr i64 %1102 to i32*
  store i32 %1075, i32* %1104, align 4
  %1105 = load i64, i64* %RBP.i, align 8
  %1106 = add i64 %1105, -44
  %1107 = load i64, i64* %PC.i, align 8
  %1108 = add i64 %1107, 3
  store i64 %1108, i64* %PC.i, align 8
  %1109 = inttoptr i64 %1106 to i32*
  %1110 = load i32, i32* %1109, align 4
  %1111 = zext i32 %1110 to i64
  store i64 %1111, i64* %RAX.i498, align 8
  %1112 = add i64 %1105, -56
  %1113 = add i64 %1107, 6
  store i64 %1113, i64* %PC.i, align 8
  %1114 = inttoptr i64 %1112 to i32*
  %1115 = load i32, i32* %1114, align 4
  %1116 = sub i32 %1110, %1115
  %1117 = icmp ult i32 %1110, %1115
  %1118 = zext i1 %1117 to i8
  store i8 %1118, i8* %.pre-phi, align 1
  %1119 = and i32 %1116, 255
  %1120 = tail call i32 @llvm.ctpop.i32(i32 %1119)
  %1121 = trunc i32 %1120 to i8
  %1122 = and i8 %1121, 1
  %1123 = xor i8 %1122, 1
  store i8 %1123, i8* %.pre-phi13, align 1
  %1124 = xor i32 %1115, %1110
  %1125 = xor i32 %1124, %1116
  %1126 = lshr i32 %1125, 4
  %1127 = trunc i32 %1126 to i8
  %1128 = and i8 %1127, 1
  store i8 %1128, i8* %.pre-phi15, align 1
  %1129 = icmp eq i32 %1116, 0
  %1130 = zext i1 %1129 to i8
  store i8 %1130, i8* %.pre-phi17, align 1
  %1131 = lshr i32 %1116, 31
  %1132 = trunc i32 %1131 to i8
  store i8 %1132, i8* %.pre-phi19, align 1
  %1133 = lshr i32 %1110, 31
  %1134 = lshr i32 %1115, 31
  %1135 = xor i32 %1134, %1133
  %1136 = xor i32 %1131, %1133
  %1137 = add nuw nsw i32 %1136, %1135
  %1138 = icmp eq i32 %1137, 2
  %1139 = zext i1 %1138 to i8
  store i8 %1139, i8* %.pre-phi21, align 1
  %1140 = icmp ne i8 %1132, 0
  %1141 = xor i1 %1140, %1138
  %1142 = or i1 %1129, %1141
  %.v22 = select i1 %1142, i64 -405, i64 12
  %1143 = add i64 %1107, %.v22
  store i64 %1143, i64* %3, align 8
  br i1 %1142, label %block_.L_400a69, label %block_400c0a

block_400c0a:                                     ; preds = %block_400bef
  %1144 = add i64 %1105, -60
  %1145 = add i64 %1143, 7
  store i64 %1145, i64* %PC.i, align 8
  %1146 = inttoptr i64 %1144 to i32*
  store i32 1, i32* %1146, align 4
  %.pre7 = load i64, i64* %RBP.i, align 8
  %.pre8 = load i64, i64* %PC.i, align 8
  br label %block_.L_400c11

block_.L_400c11:                                  ; preds = %block_.L_400c11, %block_400c0a
  %1147 = phi i64 [ %1243, %block_.L_400c11 ], [ %.pre8, %block_400c0a ]
  %1148 = phi i64 [ %1205, %block_.L_400c11 ], [ %.pre7, %block_400c0a ]
  %1149 = add i64 %1148, -16
  %1150 = add i64 %1147, 4
  store i64 %1150, i64* %PC.i, align 8
  %1151 = inttoptr i64 %1149 to i64*
  %1152 = load i64, i64* %1151, align 8
  store i64 %1152, i64* %RAX.i498, align 8
  %1153 = add i64 %1148, -60
  %1154 = add i64 %1147, 8
  store i64 %1154, i64* %PC.i, align 8
  %1155 = inttoptr i64 %1153 to i32*
  %1156 = load i32, i32* %1155, align 4
  %1157 = sext i32 %1156 to i64
  store i64 %1157, i64* %RCX.i486, align 8
  %1158 = add i64 %1148, -24
  %1159 = add i64 %1147, 12
  store i64 %1159, i64* %PC.i, align 8
  %1160 = inttoptr i64 %1158 to i64*
  %1161 = load i64, i64* %1160, align 8
  store i64 %1161, i64* %RDX.i489, align 8
  %1162 = add i64 %1147, 16
  store i64 %1162, i64* %PC.i, align 8
  %1163 = load i32, i32* %1155, align 4
  %1164 = sext i32 %1163 to i64
  store i64 %1164, i64* %RSI.i492, align 8
  %1165 = shl nsw i64 %1164, 3
  %1166 = add i64 %1165, %1161
  %1167 = add i64 %1147, 20
  store i64 %1167, i64* %PC.i, align 8
  %1168 = inttoptr i64 %1166 to i64*
  %1169 = load i64, i64* %1168, align 8
  store i64 %1169, i64* %RDX.i489, align 8
  %1170 = shl nsw i64 %1157, 3
  %1171 = add i64 %1170, %1152
  %1172 = add i64 %1147, 24
  store i64 %1172, i64* %PC.i, align 8
  %1173 = inttoptr i64 %1171 to i64*
  store i64 %1169, i64* %1173, align 8
  %1174 = load i64, i64* %RBP.i, align 8
  %1175 = add i64 %1174, -60
  %1176 = load i64, i64* %PC.i, align 8
  %1177 = add i64 %1176, 3
  store i64 %1177, i64* %PC.i, align 8
  %1178 = inttoptr i64 %1175 to i32*
  %1179 = load i32, i32* %1178, align 4
  %1180 = add i32 %1179, 1
  %1181 = zext i32 %1180 to i64
  store i64 %1181, i64* %RDI.i480, align 8
  %1182 = icmp eq i32 %1179, -1
  %1183 = icmp eq i32 %1180, 0
  %1184 = or i1 %1182, %1183
  %1185 = zext i1 %1184 to i8
  store i8 %1185, i8* %.pre-phi, align 1
  %1186 = and i32 %1180, 255
  %1187 = tail call i32 @llvm.ctpop.i32(i32 %1186)
  %1188 = trunc i32 %1187 to i8
  %1189 = and i8 %1188, 1
  %1190 = xor i8 %1189, 1
  store i8 %1190, i8* %.pre-phi13, align 1
  %1191 = xor i32 %1179, %1180
  %1192 = lshr i32 %1191, 4
  %1193 = trunc i32 %1192 to i8
  %1194 = and i8 %1193, 1
  store i8 %1194, i8* %.pre-phi15, align 1
  %1195 = icmp eq i32 %1180, 0
  %1196 = zext i1 %1195 to i8
  store i8 %1196, i8* %.pre-phi17, align 1
  %1197 = lshr i32 %1180, 31
  %1198 = trunc i32 %1197 to i8
  store i8 %1198, i8* %.pre-phi19, align 1
  %1199 = lshr i32 %1179, 31
  %1200 = xor i32 %1197, %1199
  %1201 = add nuw nsw i32 %1200, %1197
  %1202 = icmp eq i32 %1201, 2
  %1203 = zext i1 %1202 to i8
  store i8 %1203, i8* %.pre-phi21, align 1
  %1204 = add i64 %1176, 9
  store i64 %1204, i64* %PC.i, align 8
  store i32 %1180, i32* %1178, align 4
  %1205 = load i64, i64* %RBP.i, align 8
  %1206 = add i64 %1205, -60
  %1207 = load i64, i64* %PC.i, align 8
  %1208 = add i64 %1207, 3
  store i64 %1208, i64* %PC.i, align 8
  %1209 = inttoptr i64 %1206 to i32*
  %1210 = load i32, i32* %1209, align 4
  %1211 = zext i32 %1210 to i64
  store i64 %1211, i64* %RAX.i498, align 8
  %1212 = add i64 %1205, -4
  %1213 = add i64 %1207, 6
  store i64 %1213, i64* %PC.i, align 8
  %1214 = inttoptr i64 %1212 to i32*
  %1215 = load i32, i32* %1214, align 4
  %1216 = sub i32 %1210, %1215
  %1217 = icmp ult i32 %1210, %1215
  %1218 = zext i1 %1217 to i8
  store i8 %1218, i8* %.pre-phi, align 1
  %1219 = and i32 %1216, 255
  %1220 = tail call i32 @llvm.ctpop.i32(i32 %1219)
  %1221 = trunc i32 %1220 to i8
  %1222 = and i8 %1221, 1
  %1223 = xor i8 %1222, 1
  store i8 %1223, i8* %.pre-phi13, align 1
  %1224 = xor i32 %1215, %1210
  %1225 = xor i32 %1224, %1216
  %1226 = lshr i32 %1225, 4
  %1227 = trunc i32 %1226 to i8
  %1228 = and i8 %1227, 1
  store i8 %1228, i8* %.pre-phi15, align 1
  %1229 = icmp eq i32 %1216, 0
  %1230 = zext i1 %1229 to i8
  store i8 %1230, i8* %.pre-phi17, align 1
  %1231 = lshr i32 %1216, 31
  %1232 = trunc i32 %1231 to i8
  store i8 %1232, i8* %.pre-phi19, align 1
  %1233 = lshr i32 %1210, 31
  %1234 = lshr i32 %1215, 31
  %1235 = xor i32 %1234, %1233
  %1236 = xor i32 %1231, %1233
  %1237 = add nuw nsw i32 %1236, %1235
  %1238 = icmp eq i32 %1237, 2
  %1239 = zext i1 %1238 to i8
  store i8 %1239, i8* %.pre-phi21, align 1
  %1240 = icmp ne i8 %1232, 0
  %1241 = xor i1 %1240, %1238
  %1242 = or i1 %1229, %1241
  %.v23 = select i1 %1242, i64 -33, i64 12
  %1243 = add i64 %1207, %.v23
  store i64 %1243, i64* %3, align 8
  br i1 %1242, label %block_.L_400c11, label %block_400c3e

block_400c3e:                                     ; preds = %block_.L_400c11
  %1244 = add i64 %1205, -52
  %1245 = add i64 %1243, 3
  store i64 %1245, i64* %PC.i, align 8
  %1246 = inttoptr i64 %1244 to i32*
  %1247 = load i32, i32* %1246, align 4
  %1248 = zext i32 %1247 to i64
  store i64 %1248, i64* %RAX.i498, align 8
  %1249 = add i64 %1243, 6
  store i64 %1249, i64* %PC.i, align 8
  %1250 = load i32, i32* %1246, align 4
  %1251 = add i32 %1250, %1247
  %1252 = zext i32 %1251 to i64
  store i64 %1252, i64* %RAX.i498, align 8
  %1253 = icmp ult i32 %1251, %1247
  %1254 = icmp ult i32 %1251, %1250
  %1255 = or i1 %1253, %1254
  %1256 = zext i1 %1255 to i8
  store i8 %1256, i8* %.pre-phi, align 1
  %1257 = and i32 %1251, 255
  %1258 = tail call i32 @llvm.ctpop.i32(i32 %1257)
  %1259 = trunc i32 %1258 to i8
  %1260 = and i8 %1259, 1
  %1261 = xor i8 %1260, 1
  store i8 %1261, i8* %.pre-phi13, align 1
  %1262 = xor i32 %1250, %1247
  %1263 = xor i32 %1262, %1251
  %1264 = lshr i32 %1263, 4
  %1265 = trunc i32 %1264 to i8
  %1266 = and i8 %1265, 1
  store i8 %1266, i8* %.pre-phi15, align 1
  %1267 = icmp eq i32 %1251, 0
  %1268 = zext i1 %1267 to i8
  store i8 %1268, i8* %.pre-phi17, align 1
  %1269 = lshr i32 %1251, 31
  %1270 = trunc i32 %1269 to i8
  store i8 %1270, i8* %.pre-phi19, align 1
  %1271 = lshr i32 %1247, 31
  %1272 = lshr i32 %1250, 31
  %1273 = xor i32 %1269, %1271
  %1274 = xor i32 %1269, %1272
  %1275 = add nuw nsw i32 %1273, %1274
  %1276 = icmp eq i32 %1275, 2
  %1277 = zext i1 %1276 to i8
  store i8 %1277, i8* %.pre-phi21, align 1
  %1278 = add i64 %1243, 9
  store i64 %1278, i64* %PC.i, align 8
  store i32 %1251, i32* %1246, align 4
  %1279 = load i64, i64* %RBP.i, align 8
  %1280 = add i64 %1279, -52
  %1281 = load i64, i64* %PC.i, align 8
  %1282 = add i64 %1281, 3
  store i64 %1282, i64* %PC.i, align 8
  %1283 = inttoptr i64 %1280 to i32*
  %1284 = load i32, i32* %1283, align 4
  %1285 = zext i32 %1284 to i64
  store i64 %1285, i64* %RAX.i498, align 8
  %1286 = add i64 %1279, -56
  %1287 = add i64 %1281, 6
  store i64 %1287, i64* %PC.i, align 8
  %1288 = inttoptr i64 %1286 to i32*
  %1289 = load i32, i32* %1288, align 4
  %1290 = sub i32 %1284, %1289
  %1291 = icmp ult i32 %1284, %1289
  %1292 = zext i1 %1291 to i8
  store i8 %1292, i8* %.pre-phi, align 1
  %1293 = and i32 %1290, 255
  %1294 = tail call i32 @llvm.ctpop.i32(i32 %1293)
  %1295 = trunc i32 %1294 to i8
  %1296 = and i8 %1295, 1
  %1297 = xor i8 %1296, 1
  store i8 %1297, i8* %.pre-phi13, align 1
  %1298 = xor i32 %1289, %1284
  %1299 = xor i32 %1298, %1290
  %1300 = lshr i32 %1299, 4
  %1301 = trunc i32 %1300 to i8
  %1302 = and i8 %1301, 1
  store i8 %1302, i8* %.pre-phi15, align 1
  %1303 = icmp eq i32 %1290, 0
  %1304 = zext i1 %1303 to i8
  store i8 %1304, i8* %.pre-phi17, align 1
  %1305 = lshr i32 %1290, 31
  %1306 = trunc i32 %1305 to i8
  store i8 %1306, i8* %.pre-phi19, align 1
  %1307 = lshr i32 %1284, 31
  %1308 = lshr i32 %1289, 31
  %1309 = xor i32 %1308, %1307
  %1310 = xor i32 %1305, %1307
  %1311 = add nuw nsw i32 %1310, %1309
  %1312 = icmp eq i32 %1311, 2
  %1313 = zext i1 %1312 to i8
  store i8 %1313, i8* %.pre-phi21, align 1
  %1314 = icmp ne i8 %1306, 0
  %1315 = xor i1 %1314, %1312
  %1316 = or i1 %1303, %1315
  %.v24 = select i1 %1316, i64 -498, i64 12
  %1317 = add i64 %1281, %.v24
  store i64 %1317, i64* %3, align 8
  br i1 %1316, label %block_.L_400a55, label %block_400c53

block_400c53:                                     ; preds = %block_400c3e
  %1318 = add i64 %1279, -40
  %1319 = add i64 %1317, 7
  store i64 %1319, i64* %PC.i, align 8
  %1320 = inttoptr i64 %1318 to i32*
  store i32 1, i32* %1320, align 4
  %1321 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %35, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %1322 = bitcast i64* %RDX.i489 to [2 x i32]*
  %1323 = bitcast i64* %RDX.i489 to i32*
  %1324 = getelementptr inbounds [2 x i32], [2 x i32]* %1322, i64 0, i64 1
  %1325 = bitcast [32 x %union.VectorReg]* %35 to i32*
  %.pre9 = load i64, i64* %PC.i, align 8
  br label %block_.L_400c5a

block_.L_400c5a:                                  ; preds = %block_400c66, %block_400c53
  %1326 = phi i64 [ %1492, %block_400c66 ], [ %.pre9, %block_400c53 ]
  %1327 = load i64, i64* %RBP.i, align 8
  %1328 = add i64 %1327, -40
  %1329 = add i64 %1326, 3
  store i64 %1329, i64* %PC.i, align 8
  %1330 = inttoptr i64 %1328 to i32*
  %1331 = load i32, i32* %1330, align 4
  %1332 = zext i32 %1331 to i64
  store i64 %1332, i64* %RAX.i498, align 8
  %1333 = add i64 %1327, -4
  %1334 = add i64 %1326, 6
  store i64 %1334, i64* %PC.i, align 8
  %1335 = inttoptr i64 %1333 to i32*
  %1336 = load i32, i32* %1335, align 4
  %1337 = sub i32 %1331, %1336
  %1338 = icmp ult i32 %1331, %1336
  %1339 = zext i1 %1338 to i8
  store i8 %1339, i8* %.pre-phi, align 1
  %1340 = and i32 %1337, 255
  %1341 = tail call i32 @llvm.ctpop.i32(i32 %1340)
  %1342 = trunc i32 %1341 to i8
  %1343 = and i8 %1342, 1
  %1344 = xor i8 %1343, 1
  store i8 %1344, i8* %.pre-phi13, align 1
  %1345 = xor i32 %1336, %1331
  %1346 = xor i32 %1345, %1337
  %1347 = lshr i32 %1346, 4
  %1348 = trunc i32 %1347 to i8
  %1349 = and i8 %1348, 1
  store i8 %1349, i8* %.pre-phi15, align 1
  %1350 = icmp eq i32 %1337, 0
  %1351 = zext i1 %1350 to i8
  store i8 %1351, i8* %.pre-phi17, align 1
  %1352 = lshr i32 %1337, 31
  %1353 = trunc i32 %1352 to i8
  store i8 %1353, i8* %.pre-phi19, align 1
  %1354 = lshr i32 %1331, 31
  %1355 = lshr i32 %1336, 31
  %1356 = xor i32 %1355, %1354
  %1357 = xor i32 %1352, %1354
  %1358 = add nuw nsw i32 %1357, %1356
  %1359 = icmp eq i32 %1358, 2
  %1360 = zext i1 %1359 to i8
  store i8 %1360, i8* %.pre-phi21, align 1
  %1361 = icmp ne i8 %1353, 0
  %1362 = xor i1 %1361, %1359
  %.demorgan = or i1 %1350, %1362
  %.v25 = select i1 %.demorgan, i64 12, i64 104
  %1363 = add i64 %1326, %.v25
  store i64 %1363, i64* %3, align 8
  br i1 %.demorgan, label %block_400c66, label %block_.L_400cc2

block_400c66:                                     ; preds = %block_.L_400c5a
  %1364 = add i64 %1327, -36
  %1365 = add i64 %1363, 5
  store i64 %1365, i64* %PC.i, align 8
  %1366 = inttoptr i64 %1364 to i32*
  %1367 = load i32, i32* %1366, align 4
  %1368 = bitcast [32 x %union.VectorReg]* %35 to i32*
  store i32 %1367, i32* %1368, align 1
  store float 0.000000e+00, float* %106, align 1
  store float 0.000000e+00, float* %108, align 1
  store float 0.000000e+00, float* %110, align 1
  %1369 = add i64 %1327, -16
  %1370 = add i64 %1363, 9
  store i64 %1370, i64* %PC.i, align 8
  %1371 = inttoptr i64 %1369 to i64*
  %1372 = load i64, i64* %1371, align 8
  store i64 %1372, i64* %RAX.i498, align 8
  %1373 = add i64 %1363, 13
  store i64 %1373, i64* %PC.i, align 8
  %1374 = load i32, i32* %1330, align 4
  %1375 = sext i32 %1374 to i64
  store i64 %1375, i64* %RCX.i486, align 8
  %1376 = shl nsw i64 %1375, 3
  %1377 = add i64 %1376, %1372
  %1378 = add i64 %1363, 18
  store i64 %1378, i64* %PC.i, align 8
  %1379 = load <2 x float>, <2 x float>* %111, align 1
  %1380 = load <2 x i32>, <2 x i32>* %112, align 1
  %1381 = inttoptr i64 %1377 to float*
  %1382 = load float, float* %1381, align 4
  %1383 = extractelement <2 x float> %1379, i32 0
  %1384 = fmul float %1383, %1382
  store float %1384, float* %104, align 1
  %1385 = bitcast <2 x float> %1379 to <2 x i32>
  %1386 = extractelement <2 x i32> %1385, i32 1
  store i32 %1386, i32* %113, align 1
  %1387 = extractelement <2 x i32> %1380, i32 0
  store i32 %1387, i32* %114, align 1
  %1388 = extractelement <2 x i32> %1380, i32 1
  store i32 %1388, i32* %115, align 1
  %1389 = add i64 %1363, 22
  store i64 %1389, i64* %PC.i, align 8
  %1390 = load i64, i64* %1371, align 8
  store i64 %1390, i64* %RAX.i498, align 8
  %1391 = add i64 %1363, 26
  store i64 %1391, i64* %PC.i, align 8
  %1392 = load i32, i32* %1330, align 4
  %1393 = sext i32 %1392 to i64
  store i64 %1393, i64* %RCX.i486, align 8
  %1394 = shl nsw i64 %1393, 3
  %1395 = add i64 %1394, %1390
  %1396 = add i64 %1363, 31
  store i64 %1396, i64* %PC.i, align 8
  %1397 = load <2 x float>, <2 x float>* %40, align 1
  %1398 = extractelement <2 x float> %1397, i32 0
  %1399 = inttoptr i64 %1395 to float*
  store float %1398, float* %1399, align 4
  %1400 = load i64, i64* %RBP.i, align 8
  %1401 = add i64 %1400, -36
  %1402 = load i64, i64* %PC.i, align 8
  %1403 = add i64 %1402, 5
  store i64 %1403, i64* %PC.i, align 8
  %1404 = inttoptr i64 %1401 to i32*
  %1405 = load i32, i32* %1404, align 4
  %1406 = bitcast [32 x %union.VectorReg]* %35 to i32*
  store i32 %1405, i32* %1406, align 1
  store float 0.000000e+00, float* %106, align 1
  %1407 = add i64 %1402, 9
  store i64 %1407, i64* %PC.i, align 8
  %1408 = load i64, i64* %1321, align 1
  %1409 = trunc i64 %1408 to i32
  store i32 %1409, i32* %1323, align 1
  store i32 0, i32* %1324, align 1
  %1410 = load i64, i64* %RDX.i489, align 8
  %1411 = xor i64 %1410, -2147483648
  %1412 = trunc i64 %1411 to i32
  %1413 = and i64 %1411, 4294967295
  store i64 %1413, i64* %RDX.i489, align 8
  store i8 0, i8* %.pre-phi, align 1
  %1414 = and i32 %1412, 255
  %1415 = tail call i32 @llvm.ctpop.i32(i32 %1414)
  %1416 = trunc i32 %1415 to i8
  %1417 = and i8 %1416, 1
  %1418 = xor i8 %1417, 1
  store i8 %1418, i8* %.pre-phi13, align 1
  %1419 = icmp eq i32 %1412, 0
  %1420 = zext i1 %1419 to i8
  store i8 %1420, i8* %.pre-phi17, align 1
  %1421 = lshr i32 %1412, 31
  %1422 = trunc i32 %1421 to i8
  store i8 %1422, i8* %.pre-phi19, align 1
  store i8 0, i8* %.pre-phi21, align 1
  store i8 0, i8* %.pre-phi15, align 1
  %1423 = trunc i64 %1411 to i32
  store i32 %1423, i32* %1325, align 1
  store i32 0, i32* %113, align 1
  store i32 0, i32* %114, align 1
  store i32 0, i32* %115, align 1
  %1424 = load i64, i64* %RBP.i, align 8
  %1425 = add i64 %1424, -16
  %1426 = add i64 %1402, 23
  store i64 %1426, i64* %PC.i, align 8
  %1427 = inttoptr i64 %1425 to i64*
  %1428 = load i64, i64* %1427, align 8
  store i64 %1428, i64* %RAX.i498, align 8
  %1429 = add i64 %1424, -40
  %1430 = add i64 %1402, 27
  store i64 %1430, i64* %PC.i, align 8
  %1431 = inttoptr i64 %1429 to i32*
  %1432 = load i32, i32* %1431, align 4
  %1433 = sext i32 %1432 to i64
  store i64 %1433, i64* %RCX.i486, align 8
  %1434 = shl nsw i64 %1433, 3
  %1435 = add i64 %1428, 4
  %1436 = add i64 %1435, %1434
  %1437 = add i64 %1402, 33
  store i64 %1437, i64* %PC.i, align 8
  %1438 = load <2 x float>, <2 x float>* %111, align 1
  %1439 = load <2 x i32>, <2 x i32>* %112, align 1
  %1440 = inttoptr i64 %1436 to float*
  %1441 = load float, float* %1440, align 4
  %1442 = extractelement <2 x float> %1438, i32 0
  %1443 = fmul float %1442, %1441
  store float %1443, float* %104, align 1
  %1444 = bitcast <2 x float> %1438 to <2 x i32>
  %1445 = extractelement <2 x i32> %1444, i32 1
  store i32 %1445, i32* %113, align 1
  %1446 = extractelement <2 x i32> %1439, i32 0
  store i32 %1446, i32* %114, align 1
  %1447 = extractelement <2 x i32> %1439, i32 1
  store i32 %1447, i32* %115, align 1
  %1448 = add i64 %1402, 37
  store i64 %1448, i64* %PC.i, align 8
  %1449 = load i64, i64* %1427, align 8
  store i64 %1449, i64* %RAX.i498, align 8
  %1450 = add i64 %1402, 41
  store i64 %1450, i64* %PC.i, align 8
  %1451 = load i32, i32* %1431, align 4
  %1452 = sext i32 %1451 to i64
  store i64 %1452, i64* %RCX.i486, align 8
  %1453 = shl nsw i64 %1452, 3
  %1454 = add i64 %1449, 4
  %1455 = add i64 %1454, %1453
  %1456 = add i64 %1402, 47
  store i64 %1456, i64* %PC.i, align 8
  %1457 = load <2 x float>, <2 x float>* %40, align 1
  %1458 = extractelement <2 x float> %1457, i32 0
  %1459 = inttoptr i64 %1455 to float*
  store float %1458, float* %1459, align 4
  %1460 = load i64, i64* %RBP.i, align 8
  %1461 = add i64 %1460, -40
  %1462 = load i64, i64* %PC.i, align 8
  %1463 = add i64 %1462, 3
  store i64 %1463, i64* %PC.i, align 8
  %1464 = inttoptr i64 %1461 to i32*
  %1465 = load i32, i32* %1464, align 4
  %1466 = add i32 %1465, 1
  %1467 = zext i32 %1466 to i64
  store i64 %1467, i64* %RAX.i498, align 8
  %1468 = icmp eq i32 %1465, -1
  %1469 = icmp eq i32 %1466, 0
  %1470 = or i1 %1468, %1469
  %1471 = zext i1 %1470 to i8
  store i8 %1471, i8* %.pre-phi, align 1
  %1472 = and i32 %1466, 255
  %1473 = tail call i32 @llvm.ctpop.i32(i32 %1472)
  %1474 = trunc i32 %1473 to i8
  %1475 = and i8 %1474, 1
  %1476 = xor i8 %1475, 1
  store i8 %1476, i8* %.pre-phi13, align 1
  %1477 = xor i32 %1465, %1466
  %1478 = lshr i32 %1477, 4
  %1479 = trunc i32 %1478 to i8
  %1480 = and i8 %1479, 1
  store i8 %1480, i8* %.pre-phi15, align 1
  %1481 = icmp eq i32 %1466, 0
  %1482 = zext i1 %1481 to i8
  store i8 %1482, i8* %.pre-phi17, align 1
  %1483 = lshr i32 %1466, 31
  %1484 = trunc i32 %1483 to i8
  store i8 %1484, i8* %.pre-phi19, align 1
  %1485 = lshr i32 %1465, 31
  %1486 = xor i32 %1483, %1485
  %1487 = add nuw nsw i32 %1486, %1483
  %1488 = icmp eq i32 %1487, 2
  %1489 = zext i1 %1488 to i8
  store i8 %1489, i8* %.pre-phi21, align 1
  %1490 = add i64 %1462, 9
  store i64 %1490, i64* %PC.i, align 8
  store i32 %1466, i32* %1464, align 4
  %1491 = load i64, i64* %PC.i, align 8
  %1492 = add i64 %1491, -99
  store i64 %1492, i64* %3, align 8
  br label %block_.L_400c5a

block_.L_400cc2:                                  ; preds = %block_.L_400c5a
  %1493 = add i64 %1363, 1
  store i64 %1493, i64* %PC.i, align 8
  %1494 = load i64, i64* %6, align 8
  %1495 = add i64 %1494, 8
  %1496 = inttoptr i64 %1494 to i64*
  %1497 = load i64, i64* %1496, align 8
  store i64 %1497, i64* %RBP.i, align 8
  store i64 %1495, i64* %6, align 8
  %1498 = add i64 %1363, 2
  store i64 %1498, i64* %PC.i, align 8
  %1499 = inttoptr i64 %1495 to i64*
  %1500 = load i64, i64* %1499, align 8
  store i64 %1500, i64* %3, align 8
  %1501 = add i64 %1494, 16
  store i64 %1501, i64* %6, align 8
  ret %struct.Memory* %94
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
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
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
  %20 = trunc i64 %3 to i32
  %21 = xor i32 %20, %7
  %22 = lshr i32 %21, 4
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1
  %26 = icmp eq i32 %7, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %7, 31
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %6, 31
  %33 = xor i32 %29, %32
  %34 = add nuw nsw i32 %33, %29
  %35 = icmp eq i32 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
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
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %14, i64 %rel_off1, i64 %rel_off2
  %17 = add i64 %3, %.v
  store i64 %17, i64* %16, align 8
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
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %14, i64 %rel_off1, i64 %rel_off2
  %17 = add i64 %3, %.v
  store i64 %17, i64* %16, align 8
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
  %20 = trunc i64 %3 to i32
  %21 = xor i32 %20, %7
  %22 = lshr i32 %21, 4
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1
  %26 = icmp eq i32 %7, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %7, 31
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %6, 31
  %33 = xor i32 %29, %32
  %34 = add nuw nsw i32 %33, %29
  %35 = icmp eq i32 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
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
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %14, i64 %rel_off1, i64 %rel_off2
  %17 = add i64 %3, %.v
  store i64 %17, i64* %16, align 8
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
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %14, i64 %rel_off1, i64 %rel_off2
  %17 = add i64 %3, %.v
  store i64 %17, i64* %16, align 8
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
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %18 = add i64 %3, %.v
  store i64 %18, i64* %17, align 8
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
  %20 = trunc i64 %3 to i32
  %21 = xor i32 %20, %7
  %22 = lshr i32 %21, 4
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1
  %26 = icmp eq i32 %7, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %7, 31
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %6, 31
  %33 = xor i32 %29, %32
  %34 = add nuw nsw i32 %33, %29
  %35 = icmp eq i32 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
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
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
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
