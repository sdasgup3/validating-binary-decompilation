; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x6b7__rip__type = type <{ [4 x i8] }>
%G_0x6cf__rip__type = type <{ [4 x i8] }>
%G_0x70a__rip__type = type <{ [4 x i8] }>
%G_0x716__rip__type = type <{ [4 x i8] }>
%G_0x755__rip__type = type <{ [4 x i8] }>
%G_0x759__rip__type = type <{ [4 x i8] }>
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
@G_0x6b7__rip_ = local_unnamed_addr global %G_0x6b7__rip__type zeroinitializer
@G_0x6cf__rip_ = local_unnamed_addr global %G_0x6cf__rip__type zeroinitializer
@G_0x70a__rip_ = local_unnamed_addr global %G_0x70a__rip__type zeroinitializer
@G_0x716__rip_ = local_unnamed_addr global %G_0x716__rip__type zeroinitializer
@G_0x755__rip_ = local_unnamed_addr global %G_0x755__rip__type zeroinitializer
@G_0x759__rip_ = local_unnamed_addr global %G_0x759__rip__type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare %struct.Memory* @sub_400550.Cos(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400620.Min0(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @Exptab(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %RSP.i167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %10 = load i64, i64* %PC.i, align 8
  store i64 %8, i64* %RBP.i, align 8
  %11 = add i64 %7, -168
  store i64 %11, i64* %RSP.i167, align 8
  %12 = icmp ult i64 %8, 160
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
  %22 = xor i64 %8, %11
  %23 = lshr i64 %22, 4
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i64 %11, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i64 %11, 63
  %31 = trunc i64 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i64 %8, 63
  %34 = xor i64 %30, %33
  %35 = add nuw nsw i64 %34, %33
  %36 = icmp eq i64 %35, 2
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %37, i8* %38, align 1
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %40 = bitcast [32 x %union.VectorReg]* %39 to i8*
  %41 = load i32, i32* bitcast (%G_0x759__rip__type* @G_0x759__rip_ to i32*), align 8
  %42 = bitcast [32 x %union.VectorReg]* %39 to float*
  %43 = bitcast [32 x %union.VectorReg]* %39 to i32*
  store i32 %41, i32* %43, align 1
  %44 = getelementptr inbounds i8, i8* %40, i64 4
  %45 = bitcast i8* %44 to float*
  store float 0.000000e+00, float* %45, align 1
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %47 = bitcast i64* %46 to float*
  store float 0.000000e+00, float* %47, align 1
  %48 = getelementptr inbounds i8, i8* %40, i64 12
  %49 = bitcast i8* %48 to float*
  store float 0.000000e+00, float* %49, align 1
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %51 = bitcast %union.VectorReg* %50 to i8*
  %52 = load i32, i32* bitcast (%G_0x755__rip__type* @G_0x755__rip_ to i32*), align 8
  %53 = bitcast %union.VectorReg* %50 to float*
  %54 = bitcast %union.VectorReg* %50 to i32*
  store i32 %52, i32* %54, align 1
  %55 = getelementptr inbounds i8, i8* %51, i64 4
  %56 = bitcast i8* %55 to float*
  store float 0.000000e+00, float* %56, align 1
  %57 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %58 = bitcast i64* %57 to float*
  store float 0.000000e+00, float* %58, align 1
  %59 = getelementptr inbounds i8, i8* %51, i64 12
  %60 = bitcast i8* %59 to float*
  store float 0.000000e+00, float* %60, align 1
  %61 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i = bitcast %union.anon* %61 to i32*
  %62 = add i64 %7, -12
  %63 = load i32, i32* %EDI.i, align 4
  %64 = add i64 %10, 29
  store i64 %64, i64* %PC.i, align 8
  %65 = inttoptr i64 %62 to i32*
  store i32 %63, i32* %65, align 4
  %RSI.i352 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %66 = load i64, i64* %RBP.i, align 8
  %67 = add i64 %66, -16
  %68 = load i64, i64* %RSI.i352, align 8
  %69 = load i64, i64* %PC.i, align 8
  %70 = add i64 %69, 4
  store i64 %70, i64* %PC.i, align 8
  %71 = inttoptr i64 %67 to i64*
  store i64 %68, i64* %71, align 8
  %72 = load i64, i64* %RBP.i, align 8
  %73 = add i64 %72, -20
  %74 = load i64, i64* %PC.i, align 8
  %75 = add i64 %74, 5
  store i64 %75, i64* %PC.i, align 8
  %76 = bitcast %union.VectorReg* %50 to <2 x float>*
  %77 = load <2 x float>, <2 x float>* %76, align 1
  %78 = extractelement <2 x float> %77, i32 0
  %79 = inttoptr i64 %73 to float*
  store float %78, float* %79, align 4
  %80 = load i64, i64* %RBP.i, align 8
  %81 = add i64 %80, -24
  %82 = load i64, i64* %PC.i, align 8
  %83 = add i64 %82, 5
  store i64 %83, i64* %PC.i, align 8
  %84 = bitcast [32 x %union.VectorReg]* %39 to <2 x float>*
  %85 = load <2 x float>, <2 x float>* %84, align 1
  %86 = extractelement <2 x float> %85, i32 0
  %87 = inttoptr i64 %81 to float*
  store float %86, float* %87, align 4
  %88 = load i64, i64* %RBP.i, align 8
  %89 = add i64 %88, -132
  %90 = load i64, i64* %PC.i, align 8
  %91 = add i64 %90, 10
  store i64 %91, i64* %PC.i, align 8
  %92 = inttoptr i64 %89 to i32*
  store i32 1, i32* %92, align 4
  %93 = bitcast [32 x %union.VectorReg]* %39 to <2 x float>*
  %94 = bitcast i64* %46 to <2 x i32>*
  %95 = bitcast i8* %44 to i32*
  %96 = bitcast i64* %46 to i32*
  %97 = bitcast i8* %48 to i32*
  %98 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %99 = bitcast %union.VectorReg* %98 to i8*
  %100 = bitcast %union.VectorReg* %98 to float*
  %101 = getelementptr inbounds i8, i8* %99, i64 4
  %102 = bitcast i8* %101 to float*
  %103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %104 = bitcast i64* %103 to float*
  %105 = getelementptr inbounds i8, i8* %99, i64 12
  %106 = bitcast i8* %105 to float*
  %107 = bitcast %union.VectorReg* %98 to <2 x float>*
  %108 = bitcast i64* %103 to <2 x i32>*
  %109 = bitcast i8* %101 to i32*
  %110 = bitcast i64* %103 to i32*
  %111 = bitcast i8* %105 to i32*
  %112 = bitcast %union.VectorReg* %50 to <2 x float>*
  %113 = bitcast i64* %57 to <2 x i32>*
  %114 = bitcast %union.VectorReg* %98 to <2 x float>*
  %115 = bitcast i8* %55 to i32*
  %116 = bitcast i64* %57 to i32*
  %117 = bitcast i8* %59 to i32*
  %118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i321 = getelementptr inbounds %union.anon, %union.anon* %118, i64 0, i32 0
  %EAX.i300 = bitcast %union.anon* %118 to i32*
  %.pre = load i64, i64* %PC.i, align 8
  br label %block_.L_4007b6

block_.L_4007b6:                                  ; preds = %block_4007c3, %entry
  %119 = phi i64 [ %.pre, %entry ], [ %263, %block_4007c3 ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %entry ], [ %call2_4007cd, %block_4007c3 ]
  %120 = load i64, i64* %RBP.i, align 8
  %121 = add i64 %120, -132
  %122 = add i64 %119, 7
  store i64 %122, i64* %PC.i, align 8
  %123 = inttoptr i64 %121 to i32*
  %124 = load i32, i32* %123, align 4
  %125 = add i32 %124, -25
  %126 = icmp ult i32 %124, 25
  %127 = zext i1 %126 to i8
  store i8 %127, i8* %14, align 1
  %128 = and i32 %125, 255
  %129 = tail call i32 @llvm.ctpop.i32(i32 %128)
  %130 = trunc i32 %129 to i8
  %131 = and i8 %130, 1
  %132 = xor i8 %131, 1
  store i8 %132, i8* %21, align 1
  %133 = xor i32 %124, 16
  %134 = xor i32 %133, %125
  %135 = lshr i32 %134, 4
  %136 = trunc i32 %135 to i8
  %137 = and i8 %136, 1
  store i8 %137, i8* %26, align 1
  %138 = icmp eq i32 %125, 0
  %139 = zext i1 %138 to i8
  store i8 %139, i8* %29, align 1
  %140 = lshr i32 %125, 31
  %141 = trunc i32 %140 to i8
  store i8 %141, i8* %32, align 1
  %142 = lshr i32 %124, 31
  %143 = xor i32 %140, %142
  %144 = add nuw nsw i32 %143, %142
  %145 = icmp eq i32 %144, 2
  %146 = zext i1 %145 to i8
  store i8 %146, i8* %38, align 1
  %147 = icmp ne i8 %141, 0
  %148 = xor i1 %147, %145
  %.demorgan = or i1 %138, %148
  %.v = select i1 %.demorgan, i64 13, i64 100
  %149 = add i64 %119, %.v
  store i64 %149, i64* %3, align 8
  br i1 %.demorgan, label %block_4007c3, label %block_.L_40081a

block_4007c3:                                     ; preds = %block_.L_4007b6
  %150 = add i64 %120, -20
  %151 = add i64 %149, 5
  store i64 %151, i64* %PC.i, align 8
  %152 = inttoptr i64 %150 to i32*
  %153 = load i32, i32* %152, align 4
  %154 = bitcast [32 x %union.VectorReg]* %39 to i32*
  store i32 %153, i32* %154, align 1
  store float 0.000000e+00, float* %45, align 1
  store float 0.000000e+00, float* %47, align 1
  store float 0.000000e+00, float* %49, align 1
  %155 = add i64 %120, -24
  %156 = add i64 %149, 10
  store i64 %156, i64* %PC.i, align 8
  %157 = load <2 x float>, <2 x float>* %93, align 1
  %158 = load <2 x i32>, <2 x i32>* %94, align 1
  %159 = inttoptr i64 %155 to float*
  %160 = load float, float* %159, align 4
  %161 = extractelement <2 x float> %157, i32 0
  %162 = fdiv float %161, %160
  store float %162, float* %42, align 1
  %163 = bitcast <2 x float> %157 to <2 x i32>
  %164 = extractelement <2 x i32> %163, i32 1
  store i32 %164, i32* %95, align 1
  %165 = extractelement <2 x i32> %158, i32 0
  store i32 %165, i32* %96, align 1
  %166 = extractelement <2 x i32> %158, i32 1
  store i32 %166, i32* %97, align 1
  %167 = add i64 %149, -627
  %168 = add i64 %149, 15
  %169 = load i64, i64* %6, align 8
  %170 = add i64 %169, -8
  %171 = inttoptr i64 %170 to i64*
  store i64 %168, i64* %171, align 8
  store i64 %170, i64* %6, align 8
  store i64 %167, i64* %3, align 8
  %call2_4007cd = tail call %struct.Memory* @sub_400550.Cos(%struct.State* %0, i64 %167, %struct.Memory* %MEMORY.0)
  %172 = load i64, i64* %PC.i, align 8
  %173 = load i32, i32* bitcast (%G_0x70a__rip__type* @G_0x70a__rip_ to i32*), align 8
  %174 = bitcast %union.VectorReg* %50 to i32*
  store i32 %173, i32* %174, align 1
  store float 0.000000e+00, float* %56, align 1
  store float 0.000000e+00, float* %58, align 1
  store float 0.000000e+00, float* %60, align 1
  %175 = load i32, i32* bitcast (%G_0x716__rip__type* @G_0x716__rip_ to i32*), align 8
  %176 = bitcast %union.VectorReg* %98 to i32*
  store i32 %175, i32* %176, align 1
  store float 0.000000e+00, float* %102, align 1
  store float 0.000000e+00, float* %104, align 1
  store float 0.000000e+00, float* %106, align 1
  %177 = load <2 x float>, <2 x float>* %107, align 1
  %178 = load <2 x i32>, <2 x i32>* %108, align 1
  %179 = load <2 x float>, <2 x float>* %84, align 1
  %180 = extractelement <2 x float> %177, i32 0
  %181 = extractelement <2 x float> %179, i32 0
  %182 = fmul float %180, %181
  store float %182, float* %100, align 1
  %183 = bitcast <2 x float> %177 to <2 x i32>
  %184 = extractelement <2 x i32> %183, i32 1
  store i32 %184, i32* %109, align 1
  %185 = extractelement <2 x i32> %178, i32 0
  store i32 %185, i32* %110, align 1
  %186 = extractelement <2 x i32> %178, i32 1
  store i32 %186, i32* %111, align 1
  %187 = load <2 x float>, <2 x float>* %112, align 1
  %188 = load <2 x i32>, <2 x i32>* %113, align 1
  %189 = load <2 x float>, <2 x float>* %114, align 1
  %190 = extractelement <2 x float> %187, i32 0
  %191 = extractelement <2 x float> %189, i32 0
  %192 = fdiv float %190, %191
  store float %192, float* %53, align 1
  %193 = bitcast <2 x float> %187 to <2 x i32>
  %194 = extractelement <2 x i32> %193, i32 1
  store i32 %194, i32* %115, align 1
  %195 = extractelement <2 x i32> %188, i32 0
  store i32 %195, i32* %116, align 1
  %196 = extractelement <2 x i32> %188, i32 1
  store i32 %196, i32* %117, align 1
  %197 = load i64, i64* %RBP.i, align 8
  %198 = add i64 %197, -132
  %199 = add i64 %172, 31
  store i64 %199, i64* %PC.i, align 8
  %200 = inttoptr i64 %198 to i32*
  %201 = load i32, i32* %200, align 4
  %202 = sext i32 %201 to i64
  store i64 %202, i64* %RAX.i321, align 8
  %203 = shl nsw i64 %202, 2
  %204 = add i64 %197, -128
  %205 = add i64 %204, %203
  %206 = add i64 %172, 37
  store i64 %206, i64* %PC.i, align 8
  %207 = load <2 x float>, <2 x float>* %76, align 1
  %208 = extractelement <2 x float> %207, i32 0
  %209 = inttoptr i64 %205 to float*
  store float %208, float* %209, align 4
  %210 = load i64, i64* %RBP.i, align 8
  %211 = add i64 %210, -24
  %212 = load i64, i64* %PC.i, align 8
  %213 = add i64 %212, 5
  store i64 %213, i64* %PC.i, align 8
  %214 = inttoptr i64 %211 to float*
  %215 = inttoptr i64 %211 to i32*
  %216 = load i32, i32* %215, align 4
  %217 = bitcast [32 x %union.VectorReg]* %39 to i32*
  store i32 %216, i32* %217, align 1
  store float 0.000000e+00, float* %45, align 1
  store float 0.000000e+00, float* %47, align 1
  store float 0.000000e+00, float* %49, align 1
  %218 = add i64 %212, 10
  store i64 %218, i64* %PC.i, align 8
  %219 = load <2 x float>, <2 x float>* %93, align 1
  %220 = load <2 x i32>, <2 x i32>* %94, align 1
  %221 = load float, float* %214, align 4
  %222 = extractelement <2 x float> %219, i32 0
  %223 = fadd float %222, %221
  store float %223, float* %42, align 1
  %224 = bitcast <2 x float> %219 to <2 x i32>
  %225 = extractelement <2 x i32> %224, i32 1
  store i32 %225, i32* %95, align 1
  %226 = extractelement <2 x i32> %220, i32 0
  store i32 %226, i32* %96, align 1
  %227 = extractelement <2 x i32> %220, i32 1
  store i32 %227, i32* %97, align 1
  %228 = add i64 %212, 15
  store i64 %228, i64* %PC.i, align 8
  %229 = load <2 x float>, <2 x float>* %84, align 1
  %230 = extractelement <2 x float> %229, i32 0
  store float %230, float* %214, align 4
  %231 = load i64, i64* %RBP.i, align 8
  %232 = add i64 %231, -132
  %233 = load i64, i64* %PC.i, align 8
  %234 = add i64 %233, 6
  store i64 %234, i64* %PC.i, align 8
  %235 = inttoptr i64 %232 to i32*
  %236 = load i32, i32* %235, align 4
  %237 = add i32 %236, 1
  %238 = zext i32 %237 to i64
  store i64 %238, i64* %RAX.i321, align 8
  %239 = icmp eq i32 %236, -1
  %240 = icmp eq i32 %237, 0
  %241 = or i1 %239, %240
  %242 = zext i1 %241 to i8
  store i8 %242, i8* %14, align 1
  %243 = and i32 %237, 255
  %244 = tail call i32 @llvm.ctpop.i32(i32 %243)
  %245 = trunc i32 %244 to i8
  %246 = and i8 %245, 1
  %247 = xor i8 %246, 1
  store i8 %247, i8* %21, align 1
  %248 = xor i32 %236, %237
  %249 = lshr i32 %248, 4
  %250 = trunc i32 %249 to i8
  %251 = and i8 %250, 1
  store i8 %251, i8* %26, align 1
  %252 = icmp eq i32 %237, 0
  %253 = zext i1 %252 to i8
  store i8 %253, i8* %29, align 1
  %254 = lshr i32 %237, 31
  %255 = trunc i32 %254 to i8
  store i8 %255, i8* %32, align 1
  %256 = lshr i32 %236, 31
  %257 = xor i32 %254, %256
  %258 = add nuw nsw i32 %257, %254
  %259 = icmp eq i32 %258, 2
  %260 = zext i1 %259 to i8
  store i8 %260, i8* %38, align 1
  %261 = add i64 %233, 15
  store i64 %261, i64* %PC.i, align 8
  store i32 %237, i32* %235, align 4
  %262 = load i64, i64* %PC.i, align 8
  %263 = add i64 %262, -95
  store i64 %263, i64* %3, align 8
  br label %block_.L_4007b6

block_.L_40081a:                                  ; preds = %block_.L_4007b6
  %264 = bitcast [32 x %union.VectorReg]* %39 to i32*
  store i32 0, i32* %264, align 1
  store i32 0, i32* %95, align 1
  store i32 0, i32* %96, align 1
  store i32 0, i32* %97, align 1
  %265 = load i32, i32* bitcast (%G_0x6cf__rip__type* @G_0x6cf__rip_ to i32*), align 8
  %266 = bitcast %union.VectorReg* %50 to i32*
  store i32 %265, i32* %266, align 1
  store float 0.000000e+00, float* %56, align 1
  store float 0.000000e+00, float* %58, align 1
  store float 0.000000e+00, float* %60, align 1
  %267 = load i32, i32* bitcast (%G_0x6b7__rip__type* @G_0x6b7__rip_ to i32*), align 8
  %268 = bitcast %union.VectorReg* %98 to i32*
  store i32 %267, i32* %268, align 1
  store float 0.000000e+00, float* %102, align 1
  store float 0.000000e+00, float* %104, align 1
  store float 0.000000e+00, float* %106, align 1
  store i64 2, i64* %RAX.i321, align 8
  %269 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i288 = getelementptr inbounds %union.anon, %union.anon* %269, i64 0, i32 0
  %270 = add i64 %120, -4
  %271 = add i64 %149, 27
  store i64 %271, i64* %PC.i, align 8
  %272 = inttoptr i64 %270 to i32*
  %273 = load i32, i32* %272, align 4
  %274 = zext i32 %273 to i64
  store i64 %274, i64* %RCX.i288, align 8
  %275 = add i64 %120, -152
  %276 = add i64 %149, 33
  store i64 %276, i64* %PC.i, align 8
  %277 = inttoptr i64 %275 to i32*
  store i32 2, i32* %277, align 4
  %ECX.i282 = bitcast %union.anon* %269 to i32*
  %278 = load i32, i32* %ECX.i282, align 4
  %279 = zext i32 %278 to i64
  %280 = load i64, i64* %PC.i, align 8
  store i64 %279, i64* %RAX.i321, align 8
  %281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %283 = sext i32 %278 to i64
  %284 = lshr i64 %283, 32
  store i64 %284, i64* %281, align 8
  %285 = load i64, i64* %RBP.i, align 8
  %286 = add i64 %285, -152
  %287 = add i64 %280, 9
  store i64 %287, i64* %PC.i, align 8
  %288 = inttoptr i64 %286 to i32*
  %289 = load i32, i32* %288, align 4
  %290 = zext i32 %289 to i64
  store i64 %290, i64* %RCX.i288, align 8
  %291 = add i64 %280, 11
  store i64 %291, i64* %PC.i, align 8
  %292 = zext i32 %278 to i64
  %293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %294 = sext i32 %289 to i64
  %295 = shl nuw i64 %284, 32
  %296 = or i64 %295, %292
  %297 = sdiv i64 %296, %294
  %298 = shl i64 %297, 32
  %299 = ashr exact i64 %298, 32
  %300 = icmp eq i64 %297, %299
  br i1 %300, label %303, label %301

; <label>:301:                                    ; preds = %block_.L_40081a
  %302 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %291, %struct.Memory* %MEMORY.0)
  %.pre1 = load i64, i64* %RBP.i, align 8
  %.pre2 = load i32, i32* %EAX.i300, align 4
  %.pre3 = load i64, i64* %PC.i, align 8
  br label %routine_idivl__ecx.exit274

; <label>:303:                                    ; preds = %block_.L_40081a
  %304 = srem i64 %296, %294
  %305 = getelementptr inbounds %union.anon, %union.anon* %282, i64 0, i32 0
  %306 = and i64 %297, 4294967295
  store i64 %306, i64* %305, align 8
  %307 = getelementptr inbounds %union.anon, %union.anon* %293, i64 0, i32 0
  %308 = and i64 %304, 4294967295
  store i64 %308, i64* %307, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %309 = trunc i64 %297 to i32
  br label %routine_idivl__ecx.exit274

routine_idivl__ecx.exit274:                       ; preds = %303, %301
  %310 = phi i64 [ %.pre3, %301 ], [ %291, %303 ]
  %311 = phi i32 [ %.pre2, %301 ], [ %309, %303 ]
  %312 = phi i64 [ %.pre1, %301 ], [ %285, %303 ]
  %313 = phi %struct.Memory* [ %302, %301 ], [ %MEMORY.0, %303 ]
  %314 = add i64 %312, -148
  %315 = add i64 %310, 6
  store i64 %315, i64* %PC.i, align 8
  %316 = inttoptr i64 %314 to i32*
  store i32 %311, i32* %316, align 4
  %317 = load i64, i64* %RBP.i, align 8
  %318 = add i64 %317, -148
  %319 = load i64, i64* %PC.i, align 8
  %320 = add i64 %319, 6
  store i64 %320, i64* %PC.i, align 8
  %321 = inttoptr i64 %318 to i32*
  %322 = load i32, i32* %321, align 4
  %323 = zext i32 %322 to i64
  store i64 %323, i64* %RAX.i321, align 8
  %324 = sext i32 %322 to i64
  %325 = lshr i64 %324, 32
  store i64 %325, i64* %281, align 8
  %326 = load i32, i32* %ECX.i282, align 4
  %327 = add i64 %319, 9
  store i64 %327, i64* %PC.i, align 8
  %328 = sext i32 %326 to i64
  %329 = shl nuw i64 %325, 32
  %330 = or i64 %329, %323
  %331 = sdiv i64 %330, %328
  %332 = shl i64 %331, 32
  %333 = ashr exact i64 %332, 32
  %334 = icmp eq i64 %331, %333
  br i1 %334, label %337, label %335

; <label>:335:                                    ; preds = %routine_idivl__ecx.exit274
  %336 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %327, %struct.Memory* %313)
  %.pre4 = load i64, i64* %RBP.i, align 8
  %.pre5 = load i32, i32* %EAX.i300, align 4
  %.pre6 = load i64, i64* %PC.i, align 8
  %.pre14 = getelementptr inbounds %union.anon, %union.anon* %282, i64 0, i32 0
  %.pre15 = getelementptr inbounds %union.anon, %union.anon* %293, i64 0, i32 0
  br label %routine_idivl__ecx.exit262

; <label>:337:                                    ; preds = %routine_idivl__ecx.exit274
  %338 = srem i64 %330, %328
  %339 = getelementptr inbounds %union.anon, %union.anon* %282, i64 0, i32 0
  %340 = and i64 %331, 4294967295
  store i64 %340, i64* %339, align 8
  %341 = getelementptr inbounds %union.anon, %union.anon* %293, i64 0, i32 0
  %342 = and i64 %338, 4294967295
  store i64 %342, i64* %341, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %343 = trunc i64 %331 to i32
  br label %routine_idivl__ecx.exit262

routine_idivl__ecx.exit262:                       ; preds = %337, %335
  %.pre-phi16 = phi i64* [ %341, %337 ], [ %.pre15, %335 ]
  %.pre-phi = phi i64* [ %339, %337 ], [ %.pre14, %335 ]
  %344 = phi i64 [ %327, %337 ], [ %.pre6, %335 ]
  %345 = phi i32 [ %343, %337 ], [ %.pre5, %335 ]
  %346 = phi i64 [ %317, %337 ], [ %.pre4, %335 ]
  %347 = phi %struct.Memory* [ %313, %337 ], [ %336, %335 ]
  %348 = add i64 %346, -144
  %349 = add i64 %344, 6
  store i64 %349, i64* %PC.i, align 8
  %350 = inttoptr i64 %348 to i32*
  store i32 %345, i32* %350, align 4
  %351 = load i64, i64* %RBP.i, align 8
  %352 = add i64 %351, -136
  %353 = load i64, i64* %PC.i, align 8
  %354 = add i64 %353, 10
  store i64 %354, i64* %PC.i, align 8
  %355 = inttoptr i64 %352 to i32*
  store i32 1, i32* %355, align 4
  %356 = load i64, i64* %RBP.i, align 8
  %357 = add i64 %356, -16
  %358 = load i64, i64* %PC.i, align 8
  %359 = add i64 %358, 4
  store i64 %359, i64* %PC.i, align 8
  %360 = inttoptr i64 %357 to i64*
  %361 = load i64, i64* %360, align 8
  store i64 %361, i64* %RSI.i352, align 8
  %362 = add i64 %361, 8
  %363 = add i64 %358, 9
  store i64 %363, i64* %PC.i, align 8
  %364 = load <2 x float>, <2 x float>* %114, align 1
  %365 = extractelement <2 x float> %364, i32 0
  %366 = inttoptr i64 %362 to float*
  store float %365, float* %366, align 4
  %367 = load i64, i64* %RBP.i, align 8
  %368 = add i64 %367, -16
  %369 = load i64, i64* %PC.i, align 8
  %370 = add i64 %369, 4
  store i64 %370, i64* %PC.i, align 8
  %371 = inttoptr i64 %368 to i64*
  %372 = load i64, i64* %371, align 8
  store i64 %372, i64* %RSI.i352, align 8
  %373 = add i64 %372, 12
  %374 = add i64 %369, 9
  store i64 %374, i64* %PC.i, align 8
  %375 = load <2 x float>, <2 x float>* %84, align 1
  %376 = extractelement <2 x float> %375, i32 0
  %377 = inttoptr i64 %373 to float*
  store float %376, float* %377, align 4
  %378 = load i64, i64* %RBP.i, align 8
  %379 = add i64 %378, -16
  %380 = load i64, i64* %PC.i, align 8
  %381 = add i64 %380, 4
  store i64 %381, i64* %PC.i, align 8
  %382 = inttoptr i64 %379 to i64*
  %383 = load i64, i64* %382, align 8
  store i64 %383, i64* %RSI.i352, align 8
  %384 = add i64 %378, -144
  %385 = add i64 %380, 10
  store i64 %385, i64* %PC.i, align 8
  %386 = inttoptr i64 %384 to i32*
  %387 = load i32, i32* %386, align 4
  %388 = add i32 %387, 1
  %389 = zext i32 %388 to i64
  store i64 %389, i64* %RAX.i321, align 8
  %390 = icmp eq i32 %387, -1
  %391 = icmp eq i32 %388, 0
  %392 = or i1 %390, %391
  %393 = zext i1 %392 to i8
  store i8 %393, i8* %14, align 1
  %394 = and i32 %388, 255
  %395 = tail call i32 @llvm.ctpop.i32(i32 %394)
  %396 = trunc i32 %395 to i8
  %397 = and i8 %396, 1
  %398 = xor i8 %397, 1
  store i8 %398, i8* %21, align 1
  %399 = xor i32 %387, %388
  %400 = lshr i32 %399, 4
  %401 = trunc i32 %400 to i8
  %402 = and i8 %401, 1
  store i8 %402, i8* %26, align 1
  %403 = icmp eq i32 %388, 0
  %404 = zext i1 %403 to i8
  store i8 %404, i8* %29, align 1
  %405 = lshr i32 %388, 31
  %406 = trunc i32 %405 to i8
  store i8 %406, i8* %32, align 1
  %407 = lshr i32 %387, 31
  %408 = xor i32 %405, %407
  %409 = add nuw nsw i32 %408, %405
  %410 = icmp eq i32 %409, 2
  %411 = zext i1 %410 to i8
  store i8 %411, i8* %38, align 1
  %RDI.i234 = getelementptr inbounds %union.anon, %union.anon* %61, i64 0, i32 0
  %412 = sext i32 %388 to i64
  store i64 %412, i64* %RDI.i234, align 8
  %413 = shl nsw i64 %412, 3
  %414 = add i64 %413, %383
  %415 = add i64 %380, 21
  store i64 %415, i64* %PC.i, align 8
  %416 = load <2 x float>, <2 x float>* %84, align 1
  %417 = extractelement <2 x float> %416, i32 0
  %418 = inttoptr i64 %414 to float*
  store float %417, float* %418, align 4
  %419 = load i64, i64* %RBP.i, align 8
  %420 = add i64 %419, -16
  %421 = load i64, i64* %PC.i, align 8
  %422 = add i64 %421, 4
  store i64 %422, i64* %PC.i, align 8
  %423 = inttoptr i64 %420 to i64*
  %424 = load i64, i64* %423, align 8
  store i64 %424, i64* %RSI.i352, align 8
  %425 = add i64 %419, -144
  %426 = add i64 %421, 10
  store i64 %426, i64* %PC.i, align 8
  %427 = inttoptr i64 %425 to i32*
  %428 = load i32, i32* %427, align 4
  %429 = add i32 %428, 1
  %430 = zext i32 %429 to i64
  store i64 %430, i64* %RAX.i321, align 8
  %431 = icmp eq i32 %428, -1
  %432 = icmp eq i32 %429, 0
  %433 = or i1 %431, %432
  %434 = zext i1 %433 to i8
  store i8 %434, i8* %14, align 1
  %435 = and i32 %429, 255
  %436 = tail call i32 @llvm.ctpop.i32(i32 %435)
  %437 = trunc i32 %436 to i8
  %438 = and i8 %437, 1
  %439 = xor i8 %438, 1
  store i8 %439, i8* %21, align 1
  %440 = xor i32 %428, %429
  %441 = lshr i32 %440, 4
  %442 = trunc i32 %441 to i8
  %443 = and i8 %442, 1
  store i8 %443, i8* %26, align 1
  %444 = icmp eq i32 %429, 0
  %445 = zext i1 %444 to i8
  store i8 %445, i8* %29, align 1
  %446 = lshr i32 %429, 31
  %447 = trunc i32 %446 to i8
  store i8 %447, i8* %32, align 1
  %448 = lshr i32 %428, 31
  %449 = xor i32 %446, %448
  %450 = add nuw nsw i32 %449, %446
  %451 = icmp eq i32 %450, 2
  %452 = zext i1 %451 to i8
  store i8 %452, i8* %38, align 1
  %453 = sext i32 %429 to i64
  store i64 %453, i64* %RDI.i234, align 8
  %454 = shl nsw i64 %453, 3
  %455 = add i64 %424, 4
  %456 = add i64 %455, %454
  %457 = add i64 %421, 22
  store i64 %457, i64* %PC.i, align 8
  %458 = load <2 x float>, <2 x float>* %114, align 1
  %459 = extractelement <2 x float> %458, i32 0
  %460 = inttoptr i64 %456 to float*
  store float %459, float* %460, align 4
  %461 = load i64, i64* %RBP.i, align 8
  %462 = add i64 %461, -16
  %463 = load i64, i64* %PC.i, align 8
  %464 = add i64 %463, 4
  store i64 %464, i64* %PC.i, align 8
  %465 = inttoptr i64 %462 to i64*
  %466 = load i64, i64* %465, align 8
  store i64 %466, i64* %RSI.i352, align 8
  %467 = add i64 %461, -148
  %468 = add i64 %463, 10
  store i64 %468, i64* %PC.i, align 8
  %469 = inttoptr i64 %467 to i32*
  %470 = load i32, i32* %469, align 4
  %471 = add i32 %470, 1
  %472 = zext i32 %471 to i64
  store i64 %472, i64* %RAX.i321, align 8
  %473 = icmp eq i32 %470, -1
  %474 = icmp eq i32 %471, 0
  %475 = or i1 %473, %474
  %476 = zext i1 %475 to i8
  store i8 %476, i8* %14, align 1
  %477 = and i32 %471, 255
  %478 = tail call i32 @llvm.ctpop.i32(i32 %477)
  %479 = trunc i32 %478 to i8
  %480 = and i8 %479, 1
  %481 = xor i8 %480, 1
  store i8 %481, i8* %21, align 1
  %482 = xor i32 %470, %471
  %483 = lshr i32 %482, 4
  %484 = trunc i32 %483 to i8
  %485 = and i8 %484, 1
  store i8 %485, i8* %26, align 1
  %486 = icmp eq i32 %471, 0
  %487 = zext i1 %486 to i8
  store i8 %487, i8* %29, align 1
  %488 = lshr i32 %471, 31
  %489 = trunc i32 %488 to i8
  store i8 %489, i8* %32, align 1
  %490 = lshr i32 %470, 31
  %491 = xor i32 %488, %490
  %492 = add nuw nsw i32 %491, %488
  %493 = icmp eq i32 %492, 2
  %494 = zext i1 %493 to i8
  store i8 %494, i8* %38, align 1
  %495 = sext i32 %471 to i64
  store i64 %495, i64* %RDI.i234, align 8
  %496 = shl nsw i64 %495, 3
  %497 = add i64 %496, %466
  %498 = add i64 %463, 21
  store i64 %498, i64* %PC.i, align 8
  %499 = load <2 x float>, <2 x float>* %76, align 1
  %500 = extractelement <2 x float> %499, i32 0
  %501 = inttoptr i64 %497 to float*
  store float %500, float* %501, align 4
  %502 = load i64, i64* %RBP.i, align 8
  %503 = add i64 %502, -16
  %504 = load i64, i64* %PC.i, align 8
  %505 = add i64 %504, 4
  store i64 %505, i64* %PC.i, align 8
  %506 = inttoptr i64 %503 to i64*
  %507 = load i64, i64* %506, align 8
  store i64 %507, i64* %RSI.i352, align 8
  %508 = add i64 %502, -148
  %509 = add i64 %504, 10
  store i64 %509, i64* %PC.i, align 8
  %510 = inttoptr i64 %508 to i32*
  %511 = load i32, i32* %510, align 4
  %512 = add i32 %511, 1
  %513 = zext i32 %512 to i64
  store i64 %513, i64* %RAX.i321, align 8
  %514 = icmp eq i32 %511, -1
  %515 = icmp eq i32 %512, 0
  %516 = or i1 %514, %515
  %517 = zext i1 %516 to i8
  store i8 %517, i8* %14, align 1
  %518 = and i32 %512, 255
  %519 = tail call i32 @llvm.ctpop.i32(i32 %518)
  %520 = trunc i32 %519 to i8
  %521 = and i8 %520, 1
  %522 = xor i8 %521, 1
  store i8 %522, i8* %21, align 1
  %523 = xor i32 %511, %512
  %524 = lshr i32 %523, 4
  %525 = trunc i32 %524 to i8
  %526 = and i8 %525, 1
  store i8 %526, i8* %26, align 1
  %527 = icmp eq i32 %512, 0
  %528 = zext i1 %527 to i8
  store i8 %528, i8* %29, align 1
  %529 = lshr i32 %512, 31
  %530 = trunc i32 %529 to i8
  store i8 %530, i8* %32, align 1
  %531 = lshr i32 %511, 31
  %532 = xor i32 %529, %531
  %533 = add nuw nsw i32 %532, %529
  %534 = icmp eq i32 %533, 2
  %535 = zext i1 %534 to i8
  store i8 %535, i8* %38, align 1
  %536 = sext i32 %512 to i64
  store i64 %536, i64* %RDI.i234, align 8
  %537 = shl nsw i64 %536, 3
  %538 = add i64 %507, 4
  %539 = add i64 %538, %537
  %540 = add i64 %504, 22
  store i64 %540, i64* %PC.i, align 8
  %541 = load <2 x float>, <2 x float>* %84, align 1
  %542 = extractelement <2 x float> %541, i32 0
  %543 = inttoptr i64 %539 to float*
  store float %542, float* %543, align 4
  %RDX.i136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %.pre7 = load i64, i64* %PC.i, align 8
  %.pre8 = load i64, i64* %RBP.i, align 8
  br label %block_.L_4008cd

block_.L_4008cd:                                  ; preds = %block_4009da, %routine_idivl__ecx.exit262
  %544 = phi i64 [ %.pre8, %routine_idivl__ecx.exit262 ], [ %1052, %block_4009da ]
  %545 = phi i64 [ %.pre7, %routine_idivl__ecx.exit262 ], [ %1081, %block_4009da ]
  %MEMORY.1 = phi %struct.Memory* [ %347, %routine_idivl__ecx.exit262 ], [ %call2_4009ea, %block_4009da ]
  store i64 2, i64* %RAX.i321, align 8
  %546 = add i64 %544, -144
  %547 = add i64 %545, 11
  store i64 %547, i64* %PC.i, align 8
  %548 = inttoptr i64 %546 to i32*
  %549 = load i32, i32* %548, align 4
  %550 = zext i32 %549 to i64
  store i64 %550, i64* %RCX.i288, align 8
  %551 = add i64 %544, -156
  %552 = add i64 %545, 17
  store i64 %552, i64* %PC.i, align 8
  %553 = inttoptr i64 %551 to i32*
  store i32 2, i32* %553, align 4
  %554 = load i32, i32* %ECX.i282, align 4
  %555 = zext i32 %554 to i64
  %556 = load i64, i64* %PC.i, align 8
  store i64 %555, i64* %RAX.i321, align 8
  %557 = sext i32 %554 to i64
  %558 = lshr i64 %557, 32
  store i64 %558, i64* %281, align 8
  %559 = load i64, i64* %RBP.i, align 8
  %560 = add i64 %559, -156
  %561 = add i64 %556, 9
  store i64 %561, i64* %PC.i, align 8
  %562 = inttoptr i64 %560 to i32*
  %563 = load i32, i32* %562, align 4
  %564 = zext i32 %563 to i64
  store i64 %564, i64* %RCX.i288, align 8
  %565 = add i64 %556, 11
  store i64 %565, i64* %PC.i, align 8
  %566 = zext i32 %554 to i64
  %567 = sext i32 %563 to i64
  %568 = shl nuw i64 %558, 32
  %569 = or i64 %568, %566
  %570 = sdiv i64 %569, %567
  %571 = shl i64 %570, 32
  %572 = ashr exact i64 %571, 32
  %573 = icmp eq i64 %570, %572
  br i1 %573, label %576, label %574

; <label>:574:                                    ; preds = %block_.L_4008cd
  %575 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %565, %struct.Memory* %MEMORY.1)
  %.pre9 = load i64, i64* %RBP.i, align 8
  %.pre10 = load i32, i32* %EAX.i300, align 4
  %.pre11 = load i64, i64* %PC.i, align 8
  br label %routine_idivl__ecx.exit

; <label>:576:                                    ; preds = %block_.L_4008cd
  %577 = srem i64 %569, %567
  %578 = and i64 %570, 4294967295
  store i64 %578, i64* %.pre-phi, align 8
  %579 = and i64 %577, 4294967295
  store i64 %579, i64* %.pre-phi16, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %580 = trunc i64 %570 to i32
  br label %routine_idivl__ecx.exit

routine_idivl__ecx.exit:                          ; preds = %576, %574
  %581 = phi i64 [ %.pre11, %574 ], [ %565, %576 ]
  %582 = phi i32 [ %.pre10, %574 ], [ %580, %576 ]
  %583 = phi i64 [ %.pre9, %574 ], [ %559, %576 ]
  %584 = phi %struct.Memory* [ %575, %574 ], [ %MEMORY.1, %576 ]
  %585 = add i64 %583, -132
  %586 = add i64 %581, 6
  store i64 %586, i64* %PC.i, align 8
  %587 = inttoptr i64 %585 to i32*
  store i32 %582, i32* %587, align 4
  %588 = load i64, i64* %RBP.i, align 8
  %589 = add i64 %588, -132
  %590 = load i64, i64* %PC.i, align 8
  %591 = add i64 %590, 6
  store i64 %591, i64* %PC.i, align 8
  %592 = inttoptr i64 %589 to i32*
  %593 = load i32, i32* %592, align 4
  %594 = zext i32 %593 to i64
  store i64 %594, i64* %RAX.i321, align 8
  %595 = add i64 %588, -140
  %596 = add i64 %590, 12
  store i64 %596, i64* %PC.i, align 8
  %597 = inttoptr i64 %595 to i32*
  store i32 %593, i32* %597, align 4
  %.pre12 = load i64, i64* %RBP.i, align 8
  %.pre13 = load i64, i64* %PC.i, align 8
  br label %block_.L_4008fb

block_.L_4008fb:                                  ; preds = %block_.L_4008fb, %routine_idivl__ecx.exit
  %598 = phi i64 [ %1002, %block_.L_4008fb ], [ %.pre13, %routine_idivl__ecx.exit ]
  %599 = phi i64 [ %964, %block_.L_4008fb ], [ %.pre12, %routine_idivl__ecx.exit ]
  %600 = add i64 %599, -136
  %601 = add i64 %598, 7
  store i64 %601, i64* %PC.i, align 8
  %602 = inttoptr i64 %600 to i32*
  %603 = load i32, i32* %602, align 4
  %604 = sext i32 %603 to i64
  store i64 %604, i64* %RAX.i321, align 8
  %605 = shl nsw i64 %604, 2
  %606 = add i64 %599, -128
  %607 = add i64 %606, %605
  %608 = add i64 %598, 13
  store i64 %608, i64* %PC.i, align 8
  %609 = inttoptr i64 %607 to i32*
  %610 = load i32, i32* %609, align 4
  %611 = bitcast [32 x %union.VectorReg]* %39 to i32*
  store i32 %610, i32* %611, align 1
  store float 0.000000e+00, float* %45, align 1
  store float 0.000000e+00, float* %47, align 1
  store float 0.000000e+00, float* %49, align 1
  %612 = add i64 %599, -16
  %613 = add i64 %598, 17
  store i64 %613, i64* %PC.i, align 8
  %614 = inttoptr i64 %612 to i64*
  %615 = load i64, i64* %614, align 8
  store i64 %615, i64* %RAX.i321, align 8
  %616 = add i64 %599, -140
  %617 = add i64 %598, 23
  store i64 %617, i64* %PC.i, align 8
  %618 = inttoptr i64 %616 to i32*
  %619 = load i32, i32* %618, align 4
  %620 = zext i32 %619 to i64
  store i64 %620, i64* %RCX.i288, align 8
  %621 = add i64 %599, -132
  %622 = add i64 %598, 29
  store i64 %622, i64* %PC.i, align 8
  %623 = inttoptr i64 %621 to i32*
  %624 = load i32, i32* %623, align 4
  %625 = add i32 %624, %619
  %626 = lshr i32 %625, 31
  %627 = add i32 %625, 1
  %628 = zext i32 %627 to i64
  store i64 %628, i64* %RCX.i288, align 8
  %629 = icmp eq i32 %625, -1
  %630 = icmp eq i32 %627, 0
  %631 = or i1 %629, %630
  %632 = zext i1 %631 to i8
  store i8 %632, i8* %14, align 1
  %633 = and i32 %627, 255
  %634 = tail call i32 @llvm.ctpop.i32(i32 %633)
  %635 = trunc i32 %634 to i8
  %636 = and i8 %635, 1
  %637 = xor i8 %636, 1
  store i8 %637, i8* %21, align 1
  %638 = xor i32 %625, %627
  %639 = lshr i32 %638, 4
  %640 = trunc i32 %639 to i8
  %641 = and i8 %640, 1
  store i8 %641, i8* %26, align 1
  %642 = icmp eq i32 %627, 0
  %643 = zext i1 %642 to i8
  store i8 %643, i8* %29, align 1
  %644 = lshr i32 %627, 31
  %645 = trunc i32 %644 to i8
  store i8 %645, i8* %32, align 1
  %646 = xor i32 %644, %626
  %647 = add nuw nsw i32 %646, %644
  %648 = icmp eq i32 %647, 2
  %649 = zext i1 %648 to i8
  store i8 %649, i8* %38, align 1
  %650 = sext i32 %627 to i64
  store i64 %650, i64* %RDX.i136, align 8
  %651 = shl nsw i64 %650, 3
  %652 = add i64 %651, %615
  %653 = add i64 %598, 40
  store i64 %653, i64* %PC.i, align 8
  %654 = inttoptr i64 %652 to i32*
  %655 = load i32, i32* %654, align 4
  %656 = bitcast %union.VectorReg* %50 to i32*
  store i32 %655, i32* %656, align 1
  store float 0.000000e+00, float* %56, align 1
  store float 0.000000e+00, float* %58, align 1
  store float 0.000000e+00, float* %60, align 1
  %657 = load i64, i64* %RBP.i, align 8
  %658 = add i64 %657, -16
  %659 = add i64 %598, 44
  store i64 %659, i64* %PC.i, align 8
  %660 = inttoptr i64 %658 to i64*
  %661 = load i64, i64* %660, align 8
  store i64 %661, i64* %RAX.i321, align 8
  %662 = add i64 %657, -140
  %663 = add i64 %598, 50
  store i64 %663, i64* %PC.i, align 8
  %664 = inttoptr i64 %662 to i32*
  %665 = load i32, i32* %664, align 4
  %666 = zext i32 %665 to i64
  store i64 %666, i64* %RCX.i288, align 8
  %667 = add i64 %657, -132
  %668 = add i64 %598, 56
  store i64 %668, i64* %PC.i, align 8
  %669 = inttoptr i64 %667 to i32*
  %670 = load i32, i32* %669, align 4
  %671 = sub i32 %665, %670
  %672 = lshr i32 %671, 31
  %673 = add i32 %671, 1
  %674 = zext i32 %673 to i64
  store i64 %674, i64* %RCX.i288, align 8
  %675 = icmp eq i32 %671, -1
  %676 = icmp eq i32 %673, 0
  %677 = or i1 %675, %676
  %678 = zext i1 %677 to i8
  store i8 %678, i8* %14, align 1
  %679 = and i32 %673, 255
  %680 = tail call i32 @llvm.ctpop.i32(i32 %679)
  %681 = trunc i32 %680 to i8
  %682 = and i8 %681, 1
  %683 = xor i8 %682, 1
  store i8 %683, i8* %21, align 1
  %684 = xor i32 %671, %673
  %685 = lshr i32 %684, 4
  %686 = trunc i32 %685 to i8
  %687 = and i8 %686, 1
  store i8 %687, i8* %26, align 1
  %688 = icmp eq i32 %673, 0
  %689 = zext i1 %688 to i8
  store i8 %689, i8* %29, align 1
  %690 = lshr i32 %673, 31
  %691 = trunc i32 %690 to i8
  store i8 %691, i8* %32, align 1
  %692 = xor i32 %690, %672
  %693 = add nuw nsw i32 %692, %690
  %694 = icmp eq i32 %693, 2
  %695 = zext i1 %694 to i8
  store i8 %695, i8* %38, align 1
  %696 = sext i32 %673 to i64
  store i64 %696, i64* %RDX.i136, align 8
  %697 = shl nsw i64 %696, 3
  %698 = add i64 %697, %661
  %699 = add i64 %598, 67
  store i64 %699, i64* %PC.i, align 8
  %700 = load <2 x float>, <2 x float>* %112, align 1
  %701 = load <2 x i32>, <2 x i32>* %113, align 1
  %702 = inttoptr i64 %698 to float*
  %703 = load float, float* %702, align 4
  %704 = extractelement <2 x float> %700, i32 0
  %705 = fadd float %704, %703
  store float %705, float* %53, align 1
  %706 = bitcast <2 x float> %700 to <2 x i32>
  %707 = extractelement <2 x i32> %706, i32 1
  store i32 %707, i32* %115, align 1
  %708 = extractelement <2 x i32> %701, i32 0
  store i32 %708, i32* %116, align 1
  %709 = extractelement <2 x i32> %701, i32 1
  store i32 %709, i32* %117, align 1
  %710 = load <2 x float>, <2 x float>* %93, align 1
  %711 = load <2 x i32>, <2 x i32>* %94, align 1
  %712 = load <2 x float>, <2 x float>* %76, align 1
  %713 = extractelement <2 x float> %710, i32 0
  %714 = extractelement <2 x float> %712, i32 0
  %715 = fmul float %713, %714
  store float %715, float* %42, align 1
  %716 = bitcast <2 x float> %710 to <2 x i32>
  %717 = extractelement <2 x i32> %716, i32 1
  store i32 %717, i32* %95, align 1
  %718 = extractelement <2 x i32> %711, i32 0
  store i32 %718, i32* %96, align 1
  %719 = extractelement <2 x i32> %711, i32 1
  store i32 %719, i32* %97, align 1
  %720 = load i64, i64* %RBP.i, align 8
  %721 = add i64 %720, -16
  %722 = add i64 %598, 75
  store i64 %722, i64* %PC.i, align 8
  %723 = inttoptr i64 %721 to i64*
  %724 = load i64, i64* %723, align 8
  store i64 %724, i64* %RAX.i321, align 8
  %725 = add i64 %720, -140
  %726 = add i64 %598, 81
  store i64 %726, i64* %PC.i, align 8
  %727 = inttoptr i64 %725 to i32*
  %728 = load i32, i32* %727, align 4
  %729 = add i32 %728, 1
  %730 = zext i32 %729 to i64
  store i64 %730, i64* %RCX.i288, align 8
  %731 = icmp eq i32 %728, -1
  %732 = icmp eq i32 %729, 0
  %733 = or i1 %731, %732
  %734 = zext i1 %733 to i8
  store i8 %734, i8* %14, align 1
  %735 = and i32 %729, 255
  %736 = tail call i32 @llvm.ctpop.i32(i32 %735)
  %737 = trunc i32 %736 to i8
  %738 = and i8 %737, 1
  %739 = xor i8 %738, 1
  store i8 %739, i8* %21, align 1
  %740 = xor i32 %728, %729
  %741 = lshr i32 %740, 4
  %742 = trunc i32 %741 to i8
  %743 = and i8 %742, 1
  store i8 %743, i8* %26, align 1
  %744 = icmp eq i32 %729, 0
  %745 = zext i1 %744 to i8
  store i8 %745, i8* %29, align 1
  %746 = lshr i32 %729, 31
  %747 = trunc i32 %746 to i8
  store i8 %747, i8* %32, align 1
  %748 = lshr i32 %728, 31
  %749 = xor i32 %746, %748
  %750 = add nuw nsw i32 %749, %746
  %751 = icmp eq i32 %750, 2
  %752 = zext i1 %751 to i8
  store i8 %752, i8* %38, align 1
  %753 = sext i32 %729 to i64
  store i64 %753, i64* %RDX.i136, align 8
  %754 = shl nsw i64 %753, 3
  %755 = add i64 %754, %724
  %756 = add i64 %598, 92
  store i64 %756, i64* %PC.i, align 8
  %757 = load <2 x float>, <2 x float>* %84, align 1
  %758 = extractelement <2 x float> %757, i32 0
  %759 = inttoptr i64 %755 to float*
  store float %758, float* %759, align 4
  %760 = load i64, i64* %RBP.i, align 8
  %761 = add i64 %760, -136
  %762 = load i64, i64* %PC.i, align 8
  %763 = add i64 %762, 7
  store i64 %763, i64* %PC.i, align 8
  %764 = inttoptr i64 %761 to i32*
  %765 = load i32, i32* %764, align 4
  %766 = sext i32 %765 to i64
  store i64 %766, i64* %RAX.i321, align 8
  %767 = shl nsw i64 %766, 2
  %768 = add i64 %760, -128
  %769 = add i64 %768, %767
  %770 = add i64 %762, 13
  store i64 %770, i64* %PC.i, align 8
  %771 = inttoptr i64 %769 to i32*
  %772 = load i32, i32* %771, align 4
  %773 = bitcast [32 x %union.VectorReg]* %39 to i32*
  store i32 %772, i32* %773, align 1
  store float 0.000000e+00, float* %45, align 1
  store float 0.000000e+00, float* %47, align 1
  store float 0.000000e+00, float* %49, align 1
  %774 = add i64 %760, -16
  %775 = add i64 %762, 17
  store i64 %775, i64* %PC.i, align 8
  %776 = inttoptr i64 %774 to i64*
  %777 = load i64, i64* %776, align 8
  store i64 %777, i64* %RAX.i321, align 8
  %778 = add i64 %760, -140
  %779 = add i64 %762, 23
  store i64 %779, i64* %PC.i, align 8
  %780 = inttoptr i64 %778 to i32*
  %781 = load i32, i32* %780, align 4
  %782 = zext i32 %781 to i64
  store i64 %782, i64* %RCX.i288, align 8
  %783 = add i64 %760, -132
  %784 = add i64 %762, 29
  store i64 %784, i64* %PC.i, align 8
  %785 = inttoptr i64 %783 to i32*
  %786 = load i32, i32* %785, align 4
  %787 = add i32 %786, %781
  %788 = lshr i32 %787, 31
  %789 = add i32 %787, 1
  %790 = zext i32 %789 to i64
  store i64 %790, i64* %RCX.i288, align 8
  %791 = icmp eq i32 %787, -1
  %792 = icmp eq i32 %789, 0
  %793 = or i1 %791, %792
  %794 = zext i1 %793 to i8
  store i8 %794, i8* %14, align 1
  %795 = and i32 %789, 255
  %796 = tail call i32 @llvm.ctpop.i32(i32 %795)
  %797 = trunc i32 %796 to i8
  %798 = and i8 %797, 1
  %799 = xor i8 %798, 1
  store i8 %799, i8* %21, align 1
  %800 = xor i32 %787, %789
  %801 = lshr i32 %800, 4
  %802 = trunc i32 %801 to i8
  %803 = and i8 %802, 1
  store i8 %803, i8* %26, align 1
  %804 = icmp eq i32 %789, 0
  %805 = zext i1 %804 to i8
  store i8 %805, i8* %29, align 1
  %806 = lshr i32 %789, 31
  %807 = trunc i32 %806 to i8
  store i8 %807, i8* %32, align 1
  %808 = xor i32 %806, %788
  %809 = add nuw nsw i32 %808, %806
  %810 = icmp eq i32 %809, 2
  %811 = zext i1 %810 to i8
  store i8 %811, i8* %38, align 1
  %812 = sext i32 %789 to i64
  store i64 %812, i64* %RDX.i136, align 8
  %813 = shl nsw i64 %812, 3
  %814 = add i64 %777, 4
  %815 = add i64 %814, %813
  %816 = add i64 %762, 41
  store i64 %816, i64* %PC.i, align 8
  %817 = inttoptr i64 %815 to i32*
  %818 = load i32, i32* %817, align 4
  %819 = bitcast %union.VectorReg* %50 to i32*
  store i32 %818, i32* %819, align 1
  store float 0.000000e+00, float* %56, align 1
  store float 0.000000e+00, float* %58, align 1
  store float 0.000000e+00, float* %60, align 1
  %820 = load i64, i64* %RBP.i, align 8
  %821 = add i64 %820, -16
  %822 = add i64 %762, 45
  store i64 %822, i64* %PC.i, align 8
  %823 = inttoptr i64 %821 to i64*
  %824 = load i64, i64* %823, align 8
  store i64 %824, i64* %RAX.i321, align 8
  %825 = add i64 %820, -140
  %826 = add i64 %762, 51
  store i64 %826, i64* %PC.i, align 8
  %827 = inttoptr i64 %825 to i32*
  %828 = load i32, i32* %827, align 4
  %829 = zext i32 %828 to i64
  store i64 %829, i64* %RCX.i288, align 8
  %830 = add i64 %820, -132
  %831 = add i64 %762, 57
  store i64 %831, i64* %PC.i, align 8
  %832 = inttoptr i64 %830 to i32*
  %833 = load i32, i32* %832, align 4
  %834 = sub i32 %828, %833
  %835 = lshr i32 %834, 31
  %836 = add i32 %834, 1
  %837 = zext i32 %836 to i64
  store i64 %837, i64* %RCX.i288, align 8
  %838 = icmp eq i32 %834, -1
  %839 = icmp eq i32 %836, 0
  %840 = or i1 %838, %839
  %841 = zext i1 %840 to i8
  store i8 %841, i8* %14, align 1
  %842 = and i32 %836, 255
  %843 = tail call i32 @llvm.ctpop.i32(i32 %842)
  %844 = trunc i32 %843 to i8
  %845 = and i8 %844, 1
  %846 = xor i8 %845, 1
  store i8 %846, i8* %21, align 1
  %847 = xor i32 %834, %836
  %848 = lshr i32 %847, 4
  %849 = trunc i32 %848 to i8
  %850 = and i8 %849, 1
  store i8 %850, i8* %26, align 1
  %851 = icmp eq i32 %836, 0
  %852 = zext i1 %851 to i8
  store i8 %852, i8* %29, align 1
  %853 = lshr i32 %836, 31
  %854 = trunc i32 %853 to i8
  store i8 %854, i8* %32, align 1
  %855 = xor i32 %853, %835
  %856 = add nuw nsw i32 %855, %853
  %857 = icmp eq i32 %856, 2
  %858 = zext i1 %857 to i8
  store i8 %858, i8* %38, align 1
  %859 = sext i32 %836 to i64
  store i64 %859, i64* %RDX.i136, align 8
  %860 = shl nsw i64 %859, 3
  %861 = add i64 %824, 4
  %862 = add i64 %861, %860
  %863 = add i64 %762, 69
  store i64 %863, i64* %PC.i, align 8
  %864 = load <2 x float>, <2 x float>* %112, align 1
  %865 = load <2 x i32>, <2 x i32>* %113, align 1
  %866 = inttoptr i64 %862 to float*
  %867 = load float, float* %866, align 4
  %868 = extractelement <2 x float> %864, i32 0
  %869 = fadd float %868, %867
  store float %869, float* %53, align 1
  %870 = bitcast <2 x float> %864 to <2 x i32>
  %871 = extractelement <2 x i32> %870, i32 1
  store i32 %871, i32* %115, align 1
  %872 = extractelement <2 x i32> %865, i32 0
  store i32 %872, i32* %116, align 1
  %873 = extractelement <2 x i32> %865, i32 1
  store i32 %873, i32* %117, align 1
  %874 = load <2 x float>, <2 x float>* %93, align 1
  %875 = load <2 x i32>, <2 x i32>* %94, align 1
  %876 = load <2 x float>, <2 x float>* %76, align 1
  %877 = extractelement <2 x float> %874, i32 0
  %878 = extractelement <2 x float> %876, i32 0
  %879 = fmul float %877, %878
  store float %879, float* %42, align 1
  %880 = bitcast <2 x float> %874 to <2 x i32>
  %881 = extractelement <2 x i32> %880, i32 1
  store i32 %881, i32* %95, align 1
  %882 = extractelement <2 x i32> %875, i32 0
  store i32 %882, i32* %96, align 1
  %883 = extractelement <2 x i32> %875, i32 1
  store i32 %883, i32* %97, align 1
  %884 = load i64, i64* %RBP.i, align 8
  %885 = add i64 %884, -16
  %886 = add i64 %762, 77
  store i64 %886, i64* %PC.i, align 8
  %887 = inttoptr i64 %885 to i64*
  %888 = load i64, i64* %887, align 8
  store i64 %888, i64* %RAX.i321, align 8
  %889 = add i64 %884, -140
  %890 = add i64 %762, 83
  store i64 %890, i64* %PC.i, align 8
  %891 = inttoptr i64 %889 to i32*
  %892 = load i32, i32* %891, align 4
  %893 = add i32 %892, 1
  %894 = zext i32 %893 to i64
  store i64 %894, i64* %RCX.i288, align 8
  %895 = icmp eq i32 %892, -1
  %896 = icmp eq i32 %893, 0
  %897 = or i1 %895, %896
  %898 = zext i1 %897 to i8
  store i8 %898, i8* %14, align 1
  %899 = and i32 %893, 255
  %900 = tail call i32 @llvm.ctpop.i32(i32 %899)
  %901 = trunc i32 %900 to i8
  %902 = and i8 %901, 1
  %903 = xor i8 %902, 1
  store i8 %903, i8* %21, align 1
  %904 = xor i32 %892, %893
  %905 = lshr i32 %904, 4
  %906 = trunc i32 %905 to i8
  %907 = and i8 %906, 1
  store i8 %907, i8* %26, align 1
  %908 = icmp eq i32 %893, 0
  %909 = zext i1 %908 to i8
  store i8 %909, i8* %29, align 1
  %910 = lshr i32 %893, 31
  %911 = trunc i32 %910 to i8
  store i8 %911, i8* %32, align 1
  %912 = lshr i32 %892, 31
  %913 = xor i32 %910, %912
  %914 = add nuw nsw i32 %913, %910
  %915 = icmp eq i32 %914, 2
  %916 = zext i1 %915 to i8
  store i8 %916, i8* %38, align 1
  %917 = sext i32 %893 to i64
  store i64 %917, i64* %RDX.i136, align 8
  %918 = shl nsw i64 %917, 3
  %919 = add i64 %888, 4
  %920 = add i64 %919, %918
  %921 = add i64 %762, 95
  store i64 %921, i64* %PC.i, align 8
  %922 = load <2 x float>, <2 x float>* %84, align 1
  %923 = extractelement <2 x float> %922, i32 0
  %924 = inttoptr i64 %920 to float*
  store float %923, float* %924, align 4
  %925 = load i64, i64* %RBP.i, align 8
  %926 = add i64 %925, -140
  %927 = load i64, i64* %PC.i, align 8
  %928 = add i64 %927, 6
  store i64 %928, i64* %PC.i, align 8
  %929 = inttoptr i64 %926 to i32*
  %930 = load i32, i32* %929, align 4
  %931 = zext i32 %930 to i64
  store i64 %931, i64* %RCX.i288, align 8
  %932 = add i64 %925, -144
  %933 = add i64 %927, 12
  store i64 %933, i64* %PC.i, align 8
  %934 = inttoptr i64 %932 to i32*
  %935 = load i32, i32* %934, align 4
  %936 = add i32 %935, %930
  %937 = zext i32 %936 to i64
  store i64 %937, i64* %RCX.i288, align 8
  %938 = icmp ult i32 %936, %930
  %939 = icmp ult i32 %936, %935
  %940 = or i1 %938, %939
  %941 = zext i1 %940 to i8
  store i8 %941, i8* %14, align 1
  %942 = and i32 %936, 255
  %943 = tail call i32 @llvm.ctpop.i32(i32 %942)
  %944 = trunc i32 %943 to i8
  %945 = and i8 %944, 1
  %946 = xor i8 %945, 1
  store i8 %946, i8* %21, align 1
  %947 = xor i32 %935, %930
  %948 = xor i32 %947, %936
  %949 = lshr i32 %948, 4
  %950 = trunc i32 %949 to i8
  %951 = and i8 %950, 1
  store i8 %951, i8* %26, align 1
  %952 = icmp eq i32 %936, 0
  %953 = zext i1 %952 to i8
  store i8 %953, i8* %29, align 1
  %954 = lshr i32 %936, 31
  %955 = trunc i32 %954 to i8
  store i8 %955, i8* %32, align 1
  %956 = lshr i32 %930, 31
  %957 = lshr i32 %935, 31
  %958 = xor i32 %954, %956
  %959 = xor i32 %954, %957
  %960 = add nuw nsw i32 %958, %959
  %961 = icmp eq i32 %960, 2
  %962 = zext i1 %961 to i8
  store i8 %962, i8* %38, align 1
  %963 = add i64 %927, 18
  store i64 %963, i64* %PC.i, align 8
  store i32 %936, i32* %929, align 4
  %964 = load i64, i64* %RBP.i, align 8
  %965 = add i64 %964, -140
  %966 = load i64, i64* %PC.i, align 8
  %967 = add i64 %966, 6
  store i64 %967, i64* %PC.i, align 8
  %968 = inttoptr i64 %965 to i32*
  %969 = load i32, i32* %968, align 4
  %970 = zext i32 %969 to i64
  store i64 %970, i64* %RAX.i321, align 8
  %971 = add i64 %964, -148
  %972 = add i64 %966, 12
  store i64 %972, i64* %PC.i, align 8
  %973 = inttoptr i64 %971 to i32*
  %974 = load i32, i32* %973, align 4
  %975 = sub i32 %969, %974
  %976 = icmp ult i32 %969, %974
  %977 = zext i1 %976 to i8
  store i8 %977, i8* %14, align 1
  %978 = and i32 %975, 255
  %979 = tail call i32 @llvm.ctpop.i32(i32 %978)
  %980 = trunc i32 %979 to i8
  %981 = and i8 %980, 1
  %982 = xor i8 %981, 1
  store i8 %982, i8* %21, align 1
  %983 = xor i32 %974, %969
  %984 = xor i32 %983, %975
  %985 = lshr i32 %984, 4
  %986 = trunc i32 %985 to i8
  %987 = and i8 %986, 1
  store i8 %987, i8* %26, align 1
  %988 = icmp eq i32 %975, 0
  %989 = zext i1 %988 to i8
  store i8 %989, i8* %29, align 1
  %990 = lshr i32 %975, 31
  %991 = trunc i32 %990 to i8
  store i8 %991, i8* %32, align 1
  %992 = lshr i32 %969, 31
  %993 = lshr i32 %974, 31
  %994 = xor i32 %993, %992
  %995 = xor i32 %990, %992
  %996 = add nuw nsw i32 %995, %994
  %997 = icmp eq i32 %996, 2
  %998 = zext i1 %997 to i8
  store i8 %998, i8* %38, align 1
  %999 = icmp ne i8 %991, 0
  %1000 = xor i1 %999, %997
  %1001 = or i1 %988, %1000
  %.v17 = select i1 %1001, i64 -205, i64 18
  %1002 = add i64 %966, %.v17
  store i64 %1002, i64* %3, align 8
  br i1 %1001, label %block_.L_4008fb, label %block_4009da

block_4009da:                                     ; preds = %block_.L_4008fb
  store i64 25, i64* %RSI.i352, align 8
  %1003 = add i64 %964, -136
  %1004 = add i64 %1002, 11
  store i64 %1004, i64* %PC.i, align 8
  %1005 = inttoptr i64 %1003 to i32*
  %1006 = load i32, i32* %1005, align 4
  %1007 = add i32 %1006, 1
  %1008 = zext i32 %1007 to i64
  store i64 %1008, i64* %RAX.i321, align 8
  %1009 = icmp eq i32 %1006, -1
  %1010 = icmp eq i32 %1007, 0
  %1011 = or i1 %1009, %1010
  %1012 = zext i1 %1011 to i8
  store i8 %1012, i8* %14, align 1
  %1013 = and i32 %1007, 255
  %1014 = tail call i32 @llvm.ctpop.i32(i32 %1013)
  %1015 = trunc i32 %1014 to i8
  %1016 = and i8 %1015, 1
  %1017 = xor i8 %1016, 1
  store i8 %1017, i8* %21, align 1
  %1018 = xor i32 %1006, %1007
  %1019 = lshr i32 %1018, 4
  %1020 = trunc i32 %1019 to i8
  %1021 = and i8 %1020, 1
  store i8 %1021, i8* %26, align 1
  %1022 = icmp eq i32 %1007, 0
  %1023 = zext i1 %1022 to i8
  store i8 %1023, i8* %29, align 1
  %1024 = lshr i32 %1007, 31
  %1025 = trunc i32 %1024 to i8
  store i8 %1025, i8* %32, align 1
  %1026 = lshr i32 %1006, 31
  %1027 = xor i32 %1024, %1026
  %1028 = add nuw nsw i32 %1027, %1024
  %1029 = icmp eq i32 %1028, 2
  %1030 = zext i1 %1029 to i8
  store i8 %1030, i8* %38, align 1
  store i64 %1008, i64* %RDI.i234, align 8
  %1031 = add i64 %1002, -954
  %1032 = add i64 %1002, 21
  %1033 = load i64, i64* %6, align 8
  %1034 = add i64 %1033, -8
  %1035 = inttoptr i64 %1034 to i64*
  store i64 %1032, i64* %1035, align 8
  store i64 %1034, i64* %6, align 8
  store i64 %1031, i64* %3, align 8
  %call2_4009ea = tail call %struct.Memory* @sub_400620.Min0(%struct.State* %0, i64 %1031, %struct.Memory* %584)
  %1036 = load i64, i64* %RBP.i, align 8
  %1037 = add i64 %1036, -136
  %1038 = load i32, i32* %EAX.i300, align 4
  %1039 = load i64, i64* %PC.i, align 8
  %1040 = add i64 %1039, 6
  store i64 %1040, i64* %PC.i, align 8
  %1041 = inttoptr i64 %1037 to i32*
  store i32 %1038, i32* %1041, align 4
  %1042 = load i64, i64* %RBP.i, align 8
  %1043 = add i64 %1042, -132
  %1044 = load i64, i64* %PC.i, align 8
  %1045 = add i64 %1044, 6
  store i64 %1045, i64* %PC.i, align 8
  %1046 = inttoptr i64 %1043 to i32*
  %1047 = load i32, i32* %1046, align 4
  %1048 = zext i32 %1047 to i64
  store i64 %1048, i64* %RAX.i321, align 8
  %1049 = add i64 %1042, -144
  %1050 = add i64 %1044, 12
  store i64 %1050, i64* %PC.i, align 8
  %1051 = inttoptr i64 %1049 to i32*
  store i32 %1047, i32* %1051, align 4
  %1052 = load i64, i64* %RBP.i, align 8
  %1053 = add i64 %1052, -144
  %1054 = load i64, i64* %PC.i, align 8
  %1055 = add i64 %1054, 7
  store i64 %1055, i64* %PC.i, align 8
  %1056 = inttoptr i64 %1053 to i32*
  %1057 = load i32, i32* %1056, align 4
  %1058 = add i32 %1057, -1
  %1059 = icmp eq i32 %1057, 0
  %1060 = zext i1 %1059 to i8
  store i8 %1060, i8* %14, align 1
  %1061 = and i32 %1058, 255
  %1062 = tail call i32 @llvm.ctpop.i32(i32 %1061)
  %1063 = trunc i32 %1062 to i8
  %1064 = and i8 %1063, 1
  %1065 = xor i8 %1064, 1
  store i8 %1065, i8* %21, align 1
  %1066 = xor i32 %1057, %1058
  %1067 = lshr i32 %1066, 4
  %1068 = trunc i32 %1067 to i8
  %1069 = and i8 %1068, 1
  store i8 %1069, i8* %26, align 1
  %1070 = icmp eq i32 %1058, 0
  %1071 = zext i1 %1070 to i8
  store i8 %1071, i8* %29, align 1
  %1072 = lshr i32 %1058, 31
  %1073 = trunc i32 %1072 to i8
  store i8 %1073, i8* %32, align 1
  %1074 = lshr i32 %1057, 31
  %1075 = xor i32 %1072, %1074
  %1076 = add nuw nsw i32 %1075, %1074
  %1077 = icmp eq i32 %1076, 2
  %1078 = zext i1 %1077 to i8
  store i8 %1078, i8* %38, align 1
  %1079 = icmp ne i8 %1073, 0
  %1080 = xor i1 %1079, %1077
  %.demorgan18 = or i1 %1070, %1080
  %.v19 = select i1 %.demorgan18, i64 13, i64 -308
  %1081 = add i64 %1054, %.v19
  store i64 %1081, i64* %3, align 8
  br i1 %.demorgan18, label %block_400a0e, label %block_.L_4008cd

block_400a0e:                                     ; preds = %block_4009da
  %1082 = load i64, i64* %RSP.i167, align 8
  %1083 = add i64 %1082, 160
  store i64 %1083, i64* %RSP.i167, align 8
  %1084 = icmp ugt i64 %1082, -161
  %1085 = zext i1 %1084 to i8
  store i8 %1085, i8* %14, align 1
  %1086 = trunc i64 %1083 to i32
  %1087 = and i32 %1086, 255
  %1088 = tail call i32 @llvm.ctpop.i32(i32 %1087)
  %1089 = trunc i32 %1088 to i8
  %1090 = and i8 %1089, 1
  %1091 = xor i8 %1090, 1
  store i8 %1091, i8* %21, align 1
  %1092 = xor i64 %1082, %1083
  %1093 = lshr i64 %1092, 4
  %1094 = trunc i64 %1093 to i8
  %1095 = and i8 %1094, 1
  store i8 %1095, i8* %26, align 1
  %1096 = icmp eq i64 %1083, 0
  %1097 = zext i1 %1096 to i8
  store i8 %1097, i8* %29, align 1
  %1098 = lshr i64 %1083, 63
  %1099 = trunc i64 %1098 to i8
  store i8 %1099, i8* %32, align 1
  %1100 = lshr i64 %1082, 63
  %1101 = xor i64 %1098, %1100
  %1102 = add nuw nsw i64 %1101, %1098
  %1103 = icmp eq i64 %1102, 2
  %1104 = zext i1 %1103 to i8
  store i8 %1104, i8* %38, align 1
  %1105 = add i64 %1081, 8
  store i64 %1105, i64* %PC.i, align 8
  %1106 = add i64 %1082, 168
  %1107 = inttoptr i64 %1083 to i64*
  %1108 = load i64, i64* %1107, align 8
  store i64 %1108, i64* %RBP.i, align 8
  store i64 %1106, i64* %6, align 8
  %1109 = add i64 %1081, 9
  store i64 %1109, i64* %PC.i, align 8
  %1110 = inttoptr i64 %1106 to i64*
  %1111 = load i64, i64* %1110, align 8
  store i64 %1111, i64* %3, align 8
  %1112 = add i64 %1082, 176
  store i64 %1112, i64* %6, align 8
  ret %struct.Memory* %call2_4009ea
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

define %struct.Memory* @routine_subq__0xa0___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -160
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 160
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
  %17 = xor i64 %3, %6
  %18 = lshr i64 %17, 4
  %19 = trunc i64 %18 to i8
  %20 = and i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %20, i8* %21, align 1
  %22 = icmp eq i64 %6, 0
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %23, i8* %24, align 1
  %25 = lshr i64 %6, 63
  %26 = trunc i64 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = lshr i64 %3, 63
  %29 = xor i64 %25, %28
  %30 = add nuw nsw i64 %29, %28
  %31 = icmp eq i64 %30, 2
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %32, i8* %33, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_0x759__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x759__rip__type* @G_0x759__rip_ to i32*), align 8
  %8 = bitcast %union.VectorReg* %3 to i32*
  store i32 %7, i32* %8, align 1
  %9 = getelementptr inbounds i8, i8* %4, i64 4
  %10 = bitcast i8* %9 to float*
  store float 0.000000e+00, float* %10, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to float*
  store float 0.000000e+00, float* %12, align 1
  %13 = getelementptr inbounds i8, i8* %4, i64 12
  %14 = bitcast i8* %13 to float*
  store float 0.000000e+00, float* %14, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_0x755__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x755__rip__type* @G_0x755__rip_ to i32*), align 8
  %8 = bitcast %union.VectorReg* %3 to i32*
  store i32 %7, i32* %8, align 1
  %9 = getelementptr inbounds i8, i8* %4, i64 4
  %10 = bitcast i8* %9 to float*
  store float 0.000000e+00, float* %10, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to float*
  store float 0.000000e+00, float* %12, align 1
  %13 = getelementptr inbounds i8, i8* %4, i64 12
  %14 = bitcast i8* %13 to float*
  store float 0.000000e+00, float* %14, align 1
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

define %struct.Memory* @routine_movss__xmm1__MINUS0x14__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
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

define %struct.Memory* @routine_movss__xmm0__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__0x1__MINUS0x84__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -132
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x19__MINUS0x84__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -132
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -25
  %10 = icmp ult i32 %8, 25
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = and i32 %9, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = xor i32 %8, 16
  %20 = xor i32 %19, %9
  %21 = lshr i32 %20, 4
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %23, i8* %24, align 1
  %25 = icmp eq i32 %9, 0
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %9, 31
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %8, 31
  %32 = xor i32 %28, %31
  %33 = add nuw nsw i32 %32, %31
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jg_.L_40081a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movss_MINUS0x14__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_divss_MINUS0x18__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -24
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

define %struct.Memory* @routine_callq_.Cos(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movss_0x70a__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x70a__rip__type* @G_0x70a__rip_ to i32*), align 8
  %8 = bitcast %union.VectorReg* %3 to i32*
  store i32 %7, i32* %8, align 1
  %9 = getelementptr inbounds i8, i8* %4, i64 4
  %10 = bitcast i8* %9 to float*
  store float 0.000000e+00, float* %10, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to float*
  store float 0.000000e+00, float* %12, align 1
  %13 = getelementptr inbounds i8, i8* %4, i64 12
  %14 = bitcast i8* %13 to float*
  store float 0.000000e+00, float* %14, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_0x716__rip____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x716__rip__type* @G_0x716__rip_ to i32*), align 8
  %8 = bitcast %union.VectorReg* %3 to i32*
  store i32 %7, i32* %8, align 1
  %9 = getelementptr inbounds i8, i8* %4, i64 4
  %10 = bitcast i8* %9 to float*
  store float 0.000000e+00, float* %10, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to float*
  store float 0.000000e+00, float* %12, align 1
  %13 = getelementptr inbounds i8, i8* %4, i64 12
  %14 = bitcast i8* %13 to float*
  store float 0.000000e+00, float* %14, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulss__xmm0___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %5 = bitcast %union.VectorReg* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
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

define %struct.Memory* @routine_divss__xmm2___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
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
  %17 = fdiv float %15, %16
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

define %struct.Memory* @routine_movslq_MINUS0x84__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -132
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm1__MINUS0x80__rbp__rax_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -128
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

define %struct.Memory* @routine_movss_MINUS0x18__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -24
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

define %struct.Memory* @routine_addss_MINUS0x18__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -24
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

define %struct.Memory* @routine_movl_MINUS0x84__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -132
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
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

define %struct.Memory* @routine_movl__eax__MINUS0x84__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -132
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4007b6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
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

define %struct.Memory* @routine_movss_0x6cf__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x6cf__rip__type* @G_0x6cf__rip_ to i32*), align 8
  %8 = bitcast %union.VectorReg* %3 to i32*
  store i32 %7, i32* %8, align 1
  %9 = getelementptr inbounds i8, i8* %4, i64 4
  %10 = bitcast i8* %9 to float*
  store float 0.000000e+00, float* %10, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to float*
  store float 0.000000e+00, float* %12, align 1
  %13 = getelementptr inbounds i8, i8* %4, i64 12
  %14 = bitcast i8* %13 to float*
  store float 0.000000e+00, float* %14, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_0x6b7__rip____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x6b7__rip__type* @G_0x6b7__rip_ to i32*), align 8
  %8 = bitcast %union.VectorReg* %3 to i32*
  store i32 %7, i32* %8, align 1
  %9 = getelementptr inbounds i8, i8* %4, i64 4
  %10 = bitcast i8* %9 to float*
  store float 0.000000e+00, float* %10, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to float*
  store float 0.000000e+00, float* %12, align 1
  %13 = getelementptr inbounds i8, i8* %4, i64 12
  %14 = bitcast i8* %13 to float*
  store float 0.000000e+00, float* %14, align 1
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

define %struct.Memory* @routine_movl_MINUS0x4__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x98__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -152
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
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

define %struct.Memory* @routine_movl_MINUS0x98__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -152
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_idivl__ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
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

define %struct.Memory* @routine_movl__eax__MINUS0x94__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -148
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x94__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -148
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x90__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -144
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1__MINUS0x88__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -136
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x10__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm2__0x8__rsi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %RSI, align 8
  %5 = add i64 %4, 8
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

define %struct.Memory* @routine_movss__xmm0__0xc__rsi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RSI, align 8
  %5 = add i64 %4, 12
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

define %struct.Memory* @routine_movl_MINUS0x90__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -144
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq__eax___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm0____rsi__rdi_8_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RSI, align 8
  %5 = load i64, i64* %RDI, align 8
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

define %struct.Memory* @routine_movss__xmm2__0x4__rsi__rdi_8_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %RSI, align 8
  %5 = load i64, i64* %RDI, align 8
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

define %struct.Memory* @routine_movss__xmm1____rsi__rdi_8_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RSI, align 8
  %5 = load i64, i64* %RDI, align 8
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

define %struct.Memory* @routine_movss__xmm0__0x4__rsi__rdi_8_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RSI, align 8
  %5 = load i64, i64* %RDI, align 8
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

define %struct.Memory* @routine_movl_MINUS0x90__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -144
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x9c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -156
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x9c__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -156
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x8c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -140
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x88__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -136
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_MINUS0x80__rbp__rax_4____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = load i64, i64* %RAX, align 8
  %7 = shl i64 %6, 2
  %8 = add i64 %5, -128
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

define %struct.Memory* @routine_movl_MINUS0x8c__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -140
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x84__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -132
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
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

define %struct.Memory* @routine_addl__0x1___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
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

define %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss___rax__rdx_8____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %RDX, align 8
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

define %struct.Memory* @routine_subl_MINUS0x84__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -132
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %8, %10
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  %13 = icmp ult i32 %8, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = and i32 %11, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = xor i32 %10, %8
  %23 = xor i32 %22, %11
  %24 = lshr i32 %23, 4
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1
  %28 = icmp eq i32 %11, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %11, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %8, 31
  %35 = lshr i32 %10, 31
  %36 = xor i32 %35, %34
  %37 = xor i32 %31, %34
  %38 = add nuw nsw i32 %37, %36
  %39 = icmp eq i32 %38, 2
  %40 = zext i1 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %40, i8* %41, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addss___rax__rdx_8____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %RDX, align 8
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

define %struct.Memory* @routine_movss__xmm0____rax__rdx_8_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RDX, align 8
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

define %struct.Memory* @routine_movss_0x4__rax__rdx_8____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %RDX, align 8
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

define %struct.Memory* @routine_addss_0x4__rax__rdx_8____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %RDX, align 8
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

define %struct.Memory* @routine_movss__xmm0__0x4__rax__rdx_8_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RDX, align 8
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

define %struct.Memory* @routine_addl_MINUS0x90__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -144
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
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

define %struct.Memory* @routine_movl__ecx__MINUS0x8c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -140
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x8c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -140
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_MINUS0x94__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -148
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
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

define %struct.Memory* @routine_jle_.L_4008fb(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movl__0x19___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 25, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x88__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -136
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.Min0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movl__eax__MINUS0x88__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -136
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x1__MINUS0x90__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -144
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -1
  %10 = icmp eq i32 %8, 0
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = and i32 %9, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = xor i32 %8, %9
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %9, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %9, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %8, 31
  %31 = xor i32 %27, %30
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jg_.L_4008cd(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_addq__0xa0___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 160
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -161
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
  %17 = xor i64 %3, %6
  %18 = lshr i64 %17, 4
  %19 = trunc i64 %18 to i8
  %20 = and i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %20, i8* %21, align 1
  %22 = icmp eq i64 %6, 0
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %23, i8* %24, align 1
  %25 = lshr i64 %6, 63
  %26 = trunc i64 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = lshr i64 %3, 63
  %29 = xor i64 %25, %28
  %30 = add nuw nsw i64 %29, %25
  %31 = icmp eq i64 %30, 2
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %32, i8* %33, align 1
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
