; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x3a0c1__rip__type = type <{ [8 x i8] }>
%G_0x3a112__rip__type = type <{ [8 x i8] }>
%G_0x3a15a__rip__type = type <{ [8 x i8] }>
%G_0x3a181__rip__type = type <{ [8 x i8] }>
%G_0x3a24f__rip__type = type <{ [8 x i8] }>
%G_0x3a30e__rip__type = type <{ [4 x i8] }>
%G_0x3a327__rip__type = type <{ [8 x i8] }>
%G_0x3a348__rip__type = type <{ [4 x i8] }>
%G_0x3a366__rip__type = type <{ [8 x i8] }>
%G_0x3a3ec__rip__type = type <{ [8 x i8] }>
%G_0x3a3f5__rip__type = type <{ [4 x i8] }>
%G_0x3a3f9__rip__type = type <{ [4 x i8] }>
%G_0x3b333__rip__type = type <{ [16 x i8] }>
%G_0x3b54e__rip__type = type <{ [16 x i8] }>
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
@G_0x3a0c1__rip_ = global %G_0x3a0c1__rip__type zeroinitializer
@G_0x3a112__rip_ = global %G_0x3a112__rip__type zeroinitializer
@G_0x3a15a__rip_ = global %G_0x3a15a__rip__type zeroinitializer
@G_0x3a181__rip_ = global %G_0x3a181__rip__type zeroinitializer
@G_0x3a24f__rip_ = global %G_0x3a24f__rip__type zeroinitializer
@G_0x3a30e__rip_ = global %G_0x3a30e__rip__type zeroinitializer
@G_0x3a327__rip_ = global %G_0x3a327__rip__type zeroinitializer
@G_0x3a348__rip_ = global %G_0x3a348__rip__type zeroinitializer
@G_0x3a366__rip_ = global %G_0x3a366__rip__type zeroinitializer
@G_0x3a3ec__rip_ = global %G_0x3a3ec__rip__type zeroinitializer
@G_0x3a3f5__rip_ = global %G_0x3a3f5__rip__type zeroinitializer
@G_0x3a3f9__rip_ = global %G_0x3a3f9__rip__type zeroinitializer
@G_0x3b333__rip_ = global %G_0x3b333__rip__type zeroinitializer
@G_0x3b54e__rip_ = global %G_0x3b54e__rip__type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @exp(i64)

declare extern_weak x86_64_sysvcc i64 @log(i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_41ae20.Lawless422(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @EVDCensoredFit(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %12 = icmp ult i64 %8, 144
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
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %41 = bitcast %union.VectorReg* %40 to i8*
  %42 = add i64 %10, add (i64 ptrtoint (%G_0x3a3f9__rip__type* @G_0x3a3f9__rip_ to i64), i64 10)
  %43 = add i64 %10, 18
  store i64 %43, i64* %3, align 8
  %44 = inttoptr i64 %42 to i32*
  %45 = load i32, i32* %44, align 4
  %46 = bitcast %union.VectorReg* %40 to float*
  %47 = bitcast %union.VectorReg* %40 to i32*
  store i32 %45, i32* %47, align 1
  %48 = getelementptr inbounds i8, i8* %41, i64 4
  %49 = bitcast i8* %48 to float*
  store float 0.000000e+00, float* %49, align 1
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %51 = bitcast i64* %50 to float*
  store float 0.000000e+00, float* %51, align 1
  %52 = getelementptr inbounds i8, i8* %41, i64 12
  %53 = bitcast i8* %52 to float*
  store float 0.000000e+00, float* %53, align 1
  %54 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %55 = bitcast %union.VectorReg* %54 to i8*
  %56 = add i64 %10, add (i64 ptrtoint (%G_0x3a3f5__rip__type* @G_0x3a3f5__rip_ to i64), i64 18)
  %57 = add i64 %10, 26
  store i64 %57, i64* %3, align 8
  %58 = inttoptr i64 %56 to i32*
  %59 = load i32, i32* %58, align 4
  %60 = bitcast %union.VectorReg* %54 to float*
  %61 = bitcast %union.VectorReg* %54 to i32*
  store i32 %59, i32* %61, align 1
  %62 = getelementptr inbounds i8, i8* %55, i64 4
  %63 = bitcast i8* %62 to float*
  store float 0.000000e+00, float* %63, align 1
  %64 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %65 = bitcast i64* %64 to float*
  store float 0.000000e+00, float* %65, align 1
  %66 = getelementptr inbounds i8, i8* %55, i64 12
  %67 = bitcast i8* %66 to float*
  store float 0.000000e+00, float* %67, align 1
  %RDI.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %68 = add i64 %7, -24
  %69 = load i64, i64* %RDI.i, align 8
  %70 = add i64 %10, 30
  store i64 %70, i64* %3, align 8
  %71 = inttoptr i64 %68 to i64*
  store i64 %69, i64* %71, align 8
  %RSI.i309 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %72 = load i64, i64* %RBP.i, align 8
  %73 = add i64 %72, -24
  %74 = load i64, i64* %RSI.i309, align 8
  %75 = load i64, i64* %3, align 8
  %76 = add i64 %75, 4
  store i64 %76, i64* %3, align 8
  %77 = inttoptr i64 %73 to i64*
  store i64 %74, i64* %77, align 8
  %78 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX.i = bitcast %union.anon* %78 to i32*
  %79 = load i64, i64* %RBP.i, align 8
  %80 = add i64 %79, -28
  %81 = load i32, i32* %EDX.i, align 4
  %82 = load i64, i64* %3, align 8
  %83 = add i64 %82, 3
  store i64 %83, i64* %3, align 8
  %84 = inttoptr i64 %80 to i32*
  store i32 %81, i32* %84, align 4
  %85 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX.i = bitcast %union.anon* %85 to i32*
  %86 = load i64, i64* %RBP.i, align 8
  %87 = add i64 %86, -32
  %88 = load i32, i32* %ECX.i, align 4
  %89 = load i64, i64* %3, align 8
  %90 = add i64 %89, 3
  store i64 %90, i64* %3, align 8
  %91 = inttoptr i64 %87 to i32*
  store i32 %88, i32* %91, align 4
  %92 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %93 = load i64, i64* %RBP.i, align 8
  %94 = add i64 %93, -36
  %95 = load i64, i64* %3, align 8
  %96 = add i64 %95, 5
  store i64 %96, i64* %3, align 8
  %97 = bitcast %union.VectorReg* %92 to <2 x float>*
  %98 = load <2 x float>, <2 x float>* %97, align 1
  %99 = extractelement <2 x float> %98, i32 0
  %100 = inttoptr i64 %94 to float*
  store float %99, float* %100, align 4
  %R8.i450 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %101 = load i64, i64* %RBP.i, align 8
  %102 = add i64 %101, -48
  %103 = load i64, i64* %R8.i450, align 8
  %104 = load i64, i64* %3, align 8
  %105 = add i64 %104, 4
  store i64 %105, i64* %3, align 8
  %106 = inttoptr i64 %102 to i64*
  store i64 %103, i64* %106, align 8
  %R9.i518 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %107 = load i64, i64* %RBP.i, align 8
  %108 = add i64 %107, -56
  %109 = load i64, i64* %R9.i518, align 8
  %110 = load i64, i64* %3, align 8
  %111 = add i64 %110, 4
  store i64 %111, i64* %3, align 8
  %112 = inttoptr i64 %108 to i64*
  store i64 %109, i64* %112, align 8
  %113 = load i64, i64* %RBP.i, align 8
  %114 = add i64 %113, -100
  %115 = load i64, i64* %3, align 8
  %116 = add i64 %115, 5
  store i64 %116, i64* %3, align 8
  %117 = bitcast %union.VectorReg* %54 to <2 x float>*
  %118 = load <2 x float>, <2 x float>* %117, align 1
  %119 = extractelement <2 x float> %118, i32 0
  %120 = inttoptr i64 %114 to float*
  store float %119, float* %120, align 4
  %121 = load i64, i64* %RBP.i, align 8
  %122 = add i64 %121, -60
  %123 = load i64, i64* %3, align 8
  %124 = add i64 %123, 5
  store i64 %124, i64* %3, align 8
  %125 = bitcast %union.VectorReg* %40 to <2 x float>*
  %126 = load <2 x float>, <2 x float>* %125, align 1
  %127 = extractelement <2 x float> %126, i32 0
  %128 = inttoptr i64 %122 to float*
  store float %127, float* %128, align 4
  %129 = load i64, i64* %RBP.i, align 8
  %130 = add i64 %129, -104
  %131 = load i64, i64* %3, align 8
  %132 = add i64 %131, 7
  store i64 %132, i64* %3, align 8
  %133 = inttoptr i64 %130 to i32*
  store i32 0, i32* %133, align 4
  %RDX.i571 = getelementptr inbounds %union.anon, %union.anon* %78, i64 0, i32 0
  %RCX.i568 = getelementptr inbounds %union.anon, %union.anon* %85, i64 0, i32 0
  %134 = bitcast %union.VectorReg* %92 to i8*
  %135 = bitcast %union.VectorReg* %92 to i32*
  %136 = getelementptr inbounds i8, i8* %134, i64 4
  %137 = bitcast i8* %136 to float*
  %138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %139 = bitcast i64* %138 to float*
  %140 = getelementptr inbounds i8, i8* %134, i64 12
  %141 = bitcast i8* %140 to float*
  %142 = bitcast %union.VectorReg* %92 to double*
  %143 = bitcast i8* %48 to i32*
  %144 = bitcast i64* %50 to i32*
  %145 = bitcast i8* %52 to i32*
  %146 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %92, i64 0, i32 0, i32 0, i32 0, i64 0
  %147 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %40, i64 0, i32 0, i32 0, i32 0, i64 0
  %148 = bitcast i8* %136 to i32*
  %149 = bitcast i64* %138 to i32*
  %150 = bitcast i8* %140 to i32*
  %151 = bitcast %union.VectorReg* %40 to double*
  %152 = bitcast i64* %64 to <2 x i32>*
  %153 = bitcast i8* %62 to i32*
  %154 = bitcast i64* %64 to i32*
  %155 = bitcast i8* %66 to i32*
  %156 = bitcast i64* %50 to <2 x i32>*
  %RAX.i503 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %.pre = load i64, i64* %3, align 8
  %157 = bitcast %union.VectorReg* %92 to <4 x i32>*
  br label %block_.L_41a387

block_.L_41a387:                                  ; preds = %block_.L_41a411, %entry
  %158 = phi i64 [ %.pre, %entry ], [ %402, %block_.L_41a411 ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %entry ], [ %357, %block_.L_41a411 ]
  %159 = load i64, i64* %RBP.i, align 8
  %160 = add i64 %159, -104
  %161 = add i64 %158, 4
  store i64 %161, i64* %3, align 8
  %162 = inttoptr i64 %160 to i32*
  %163 = load i32, i32* %162, align 4
  %164 = add i32 %163, -100
  %165 = icmp ult i32 %163, 100
  %166 = zext i1 %165 to i8
  store i8 %166, i8* %14, align 1
  %167 = and i32 %164, 255
  %168 = tail call i32 @llvm.ctpop.i32(i32 %167)
  %169 = trunc i32 %168 to i8
  %170 = and i8 %169, 1
  %171 = xor i8 %170, 1
  store i8 %171, i8* %21, align 1
  %172 = xor i32 %164, %163
  %173 = lshr i32 %172, 4
  %174 = trunc i32 %173 to i8
  %175 = and i8 %174, 1
  store i8 %175, i8* %27, align 1
  %176 = icmp eq i32 %164, 0
  %177 = zext i1 %176 to i8
  store i8 %177, i8* %30, align 1
  %178 = lshr i32 %164, 31
  %179 = trunc i32 %178 to i8
  store i8 %179, i8* %33, align 1
  %180 = lshr i32 %163, 31
  %181 = xor i32 %178, %180
  %182 = add nuw nsw i32 %181, %180
  %183 = icmp eq i32 %182, 2
  %184 = zext i1 %183 to i8
  store i8 %184, i8* %39, align 1
  %185 = icmp ne i8 %179, 0
  %186 = xor i1 %185, %183
  %.v91 = select i1 %186, i64 10, i64 157
  %187 = add i64 %158, %.v91
  store i64 %187, i64* %3, align 8
  br i1 %186, label %block_41a391, label %block_.L_41a424.loopexit

block_41a391:                                     ; preds = %block_.L_41a387
  %188 = add i64 %159, -68
  store i64 %188, i64* %R8.i450, align 8
  %189 = add i64 %159, -72
  store i64 %189, i64* %R9.i518, align 8
  %190 = add i64 %159, -16
  %191 = add i64 %187, 12
  store i64 %191, i64* %3, align 8
  %192 = inttoptr i64 %190 to i64*
  %193 = load i64, i64* %192, align 8
  store i64 %193, i64* %RDI.i, align 8
  %194 = add i64 %159, -24
  %195 = add i64 %187, 16
  store i64 %195, i64* %3, align 8
  %196 = inttoptr i64 %194 to i64*
  %197 = load i64, i64* %196, align 8
  store i64 %197, i64* %RSI.i309, align 8
  %198 = add i64 %159, -28
  %199 = add i64 %187, 19
  store i64 %199, i64* %3, align 8
  %200 = inttoptr i64 %198 to i32*
  %201 = load i32, i32* %200, align 4
  %202 = zext i32 %201 to i64
  store i64 %202, i64* %RDX.i571, align 8
  %203 = add i64 %159, -32
  %204 = add i64 %187, 22
  store i64 %204, i64* %3, align 8
  %205 = inttoptr i64 %203 to i32*
  %206 = load i32, i32* %205, align 4
  %207 = zext i32 %206 to i64
  store i64 %207, i64* %RCX.i568, align 8
  %208 = add i64 %159, -36
  %209 = add i64 %187, 27
  store i64 %209, i64* %3, align 8
  %210 = inttoptr i64 %208 to i32*
  %211 = load i32, i32* %210, align 4
  store i32 %211, i32* %135, align 1
  store float 0.000000e+00, float* %137, align 1
  store float 0.000000e+00, float* %139, align 1
  store float 0.000000e+00, float* %141, align 1
  %212 = add i64 %159, -60
  %213 = add i64 %187, 32
  store i64 %213, i64* %3, align 8
  %214 = inttoptr i64 %212 to i32*
  %215 = load i32, i32* %214, align 4
  store i32 %215, i32* %47, align 1
  store float 0.000000e+00, float* %49, align 1
  store float 0.000000e+00, float* %51, align 1
  store float 0.000000e+00, float* %53, align 1
  %216 = add i64 %187, 2703
  %217 = add i64 %187, 37
  %218 = load i64, i64* %6, align 8
  %219 = add i64 %218, -8
  %220 = inttoptr i64 %219 to i64*
  store i64 %217, i64* %220, align 8
  store i64 %219, i64* %6, align 8
  store i64 %216, i64* %3, align 8
  %call2_41a3b1 = tail call %struct.Memory* @sub_41ae20.Lawless422(%struct.State* nonnull %0, i64 %216, %struct.Memory* %MEMORY.0)
  %221 = load i64, i64* %RBP.i, align 8
  %222 = add i64 %221, -68
  %223 = load i64, i64* %3, align 8
  %224 = add i64 %223, 5
  store i64 %224, i64* %3, align 8
  %225 = inttoptr i64 %222 to float*
  %226 = load float, float* %225, align 4
  %227 = fpext float %226 to double
  store double %227, double* %142, align 1
  %228 = add i64 %223, add (i64 ptrtoint (%G_0x3b54e__rip__type* @G_0x3b54e__rip_ to i64), i64 5)
  %229 = add i64 %223, 12
  store i64 %229, i64* %3, align 8
  %230 = inttoptr i64 %228 to i32*
  %231 = load i32, i32* %230, align 4
  %232 = add i64 %223, add (i64 ptrtoint (%G_0x3b54e__rip__type* @G_0x3b54e__rip_ to i64), i64 9)
  %233 = inttoptr i64 %232 to i32*
  %234 = load i32, i32* %233, align 4
  %235 = add i64 %223, add (i64 ptrtoint (%G_0x3b54e__rip__type* @G_0x3b54e__rip_ to i64), i64 13)
  %236 = inttoptr i64 %235 to i32*
  %237 = load i32, i32* %236, align 4
  %238 = add i64 %223, add (i64 ptrtoint (%G_0x3b54e__rip__type* @G_0x3b54e__rip_ to i64), i64 17)
  %239 = inttoptr i64 %238 to i32*
  %240 = load i32, i32* %239, align 4
  store i32 %231, i32* %47, align 1
  store i32 %234, i32* %143, align 1
  store i32 %237, i32* %144, align 1
  store i32 %240, i32* %145, align 1
  %241 = bitcast double %227 to i64
  %242 = load i64, i64* %138, align 1
  %243 = load i64, i64* %147, align 1
  %244 = load i64, i64* %50, align 1
  %245 = and i64 %243, %241
  %246 = and i64 %244, %242
  %247 = trunc i64 %245 to i32
  %248 = lshr i64 %245, 32
  %249 = trunc i64 %248 to i32
  store i32 %247, i32* %135, align 1
  store i32 %249, i32* %148, align 1
  %250 = trunc i64 %246 to i32
  store i32 %250, i32* %149, align 1
  %251 = lshr i64 %246, 32
  %252 = trunc i64 %251 to i32
  store i32 %252, i32* %150, align 1
  %253 = add i64 %221, -100
  %254 = add i64 %223, 21
  store i64 %254, i64* %3, align 8
  %255 = inttoptr i64 %253 to float*
  %256 = load float, float* %255, align 4
  %257 = fpext float %256 to double
  store double %257, double* %151, align 1
  %258 = add i64 %223, 25
  store i64 %258, i64* %3, align 8
  %259 = load double, double* %142, align 1
  %260 = fcmp uno double %257, %259
  br i1 %260, label %261, label %271

; <label>:261:                                    ; preds = %block_41a391
  %262 = fadd double %257, %259
  %263 = bitcast double %262 to i64
  %264 = and i64 %263, 9221120237041090560
  %265 = icmp eq i64 %264, 9218868437227405312
  %266 = and i64 %263, 2251799813685247
  %267 = icmp ne i64 %266, 0
  %268 = and i1 %265, %267
  br i1 %268, label %269, label %277

; <label>:269:                                    ; preds = %261
  %270 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %258, %struct.Memory* %MEMORY.0)
  %.pre61 = load i64, i64* %3, align 8
  br label %routine_ucomisd__xmm0___xmm1.exit545

; <label>:271:                                    ; preds = %block_41a391
  %272 = fcmp ogt double %257, %259
  br i1 %272, label %277, label %273

; <label>:273:                                    ; preds = %271
  %274 = fcmp olt double %257, %259
  br i1 %274, label %277, label %275

; <label>:275:                                    ; preds = %273
  %276 = fcmp oeq double %257, %259
  br i1 %276, label %277, label %281

; <label>:277:                                    ; preds = %275, %273, %271, %261
  %278 = phi i8 [ 0, %271 ], [ 0, %273 ], [ 1, %275 ], [ 1, %261 ]
  %279 = phi i8 [ 0, %271 ], [ 0, %273 ], [ 0, %275 ], [ 1, %261 ]
  %280 = phi i8 [ 0, %271 ], [ 1, %273 ], [ 0, %275 ], [ 1, %261 ]
  store i8 %278, i8* %30, align 1
  store i8 %279, i8* %21, align 1
  store i8 %280, i8* %14, align 1
  br label %281

; <label>:281:                                    ; preds = %277, %275
  store i8 0, i8* %39, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %27, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit545

routine_ucomisd__xmm0___xmm1.exit545:             ; preds = %281, %269
  %282 = phi i64 [ %.pre61, %269 ], [ %258, %281 ]
  %283 = phi %struct.Memory* [ %270, %269 ], [ %MEMORY.0, %281 ]
  %284 = load i8, i8* %14, align 1
  %285 = load i8, i8* %30, align 1
  %286 = or i8 %285, %284
  %287 = icmp ne i8 %286, 0
  %.v131 = select i1 %287, i64 11, i64 6
  %288 = add i64 %282, %.v131
  store i64 %288, i64* %3, align 8
  br i1 %287, label %block_.L_41a3da, label %block_41a3d5

block_41a3d5:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit545
  %289 = add i64 %288, 79
  store i64 %289, i64* %3, align 8
  %.pre62 = load i64, i64* %RBP.i, align 8
  br label %block_.L_41a424

block_.L_41a3da:                                  ; preds = %routine_ucomisd__xmm0___xmm1.exit545
  store <4 x i32> zeroinitializer, <4 x i32>* %157, align 1
  %290 = load i64, i64* %RBP.i, align 8
  %291 = add i64 %290, -60
  %292 = add i64 %288, 8
  store i64 %292, i64* %3, align 8
  %293 = inttoptr i64 %291 to i32*
  %294 = load i32, i32* %293, align 4
  store i32 %294, i32* %47, align 1
  store float 0.000000e+00, float* %49, align 1
  store float 0.000000e+00, float* %51, align 1
  store float 0.000000e+00, float* %53, align 1
  %295 = add i64 %290, -68
  %296 = add i64 %288, 13
  store i64 %296, i64* %3, align 8
  %297 = inttoptr i64 %295 to i32*
  %298 = load i32, i32* %297, align 4
  store i32 %298, i32* %61, align 1
  store float 0.000000e+00, float* %63, align 1
  store float 0.000000e+00, float* %65, align 1
  store float 0.000000e+00, float* %67, align 1
  %299 = add i64 %290, -72
  %300 = add i64 %288, 18
  store i64 %300, i64* %3, align 8
  %301 = load <2 x float>, <2 x float>* %117, align 1
  %302 = load <2 x i32>, <2 x i32>* %152, align 1
  %303 = inttoptr i64 %299 to float*
  %304 = load float, float* %303, align 4
  %305 = extractelement <2 x float> %301, i32 0
  %306 = fdiv float %305, %304
  store float %306, float* %60, align 1
  %307 = bitcast <2 x float> %301 to <2 x i32>
  %308 = extractelement <2 x i32> %307, i32 1
  store i32 %308, i32* %153, align 1
  %309 = extractelement <2 x i32> %302, i32 0
  store i32 %309, i32* %154, align 1
  %310 = extractelement <2 x i32> %302, i32 1
  store i32 %310, i32* %155, align 1
  %311 = load <2 x float>, <2 x float>* %125, align 1
  %312 = load <2 x i32>, <2 x i32>* %156, align 1
  %313 = load <2 x float>, <2 x float>* %117, align 1
  %314 = extractelement <2 x float> %311, i32 0
  %315 = extractelement <2 x float> %313, i32 0
  %316 = fsub float %314, %315
  store float %316, float* %46, align 1
  %317 = bitcast <2 x float> %311 to <2 x i32>
  %318 = extractelement <2 x i32> %317, i32 1
  store i32 %318, i32* %143, align 1
  %319 = extractelement <2 x i32> %312, i32 0
  store i32 %319, i32* %144, align 1
  %320 = extractelement <2 x i32> %312, i32 1
  store i32 %320, i32* %145, align 1
  %321 = add i64 %288, 27
  store i64 %321, i64* %3, align 8
  %322 = load <2 x float>, <2 x float>* %125, align 1
  %323 = extractelement <2 x float> %322, i32 0
  %324 = inttoptr i64 %291 to float*
  store float %323, float* %324, align 4
  %325 = load i64, i64* %RBP.i, align 8
  %326 = add i64 %325, -60
  %327 = load i64, i64* %3, align 8
  %328 = add i64 %327, 5
  store i64 %328, i64* %3, align 8
  %329 = inttoptr i64 %326 to float*
  %330 = load float, float* %329, align 4
  %331 = fpext float %330 to double
  store double %331, double* %151, align 1
  %332 = add i64 %327, 9
  store i64 %332, i64* %3, align 8
  %333 = load double, double* %142, align 1
  %334 = fcmp uno double %333, %331
  br i1 %334, label %335, label %345

; <label>:335:                                    ; preds = %block_.L_41a3da
  %336 = fadd double %331, %333
  %337 = bitcast double %336 to i64
  %338 = and i64 %337, 9221120237041090560
  %339 = icmp eq i64 %338, 9218868437227405312
  %340 = and i64 %337, 2251799813685247
  %341 = icmp ne i64 %340, 0
  %342 = and i1 %339, %341
  br i1 %342, label %343, label %351

; <label>:343:                                    ; preds = %335
  %344 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %332, %struct.Memory* %283)
  %.pre84 = load i64, i64* %3, align 8
  br label %routine_ucomisd__xmm1___xmm0.exit515

; <label>:345:                                    ; preds = %block_.L_41a3da
  %346 = fcmp ogt double %333, %331
  br i1 %346, label %351, label %347

; <label>:347:                                    ; preds = %345
  %348 = fcmp olt double %333, %331
  br i1 %348, label %351, label %349

; <label>:349:                                    ; preds = %347
  %350 = fcmp oeq double %333, %331
  br i1 %350, label %351, label %355

; <label>:351:                                    ; preds = %349, %347, %345, %335
  %352 = phi i8 [ 0, %345 ], [ 0, %347 ], [ 1, %349 ], [ 1, %335 ]
  %353 = phi i8 [ 0, %345 ], [ 0, %347 ], [ 0, %349 ], [ 1, %335 ]
  %354 = phi i8 [ 0, %345 ], [ 1, %347 ], [ 0, %349 ], [ 1, %335 ]
  store i8 %352, i8* %30, align 1
  store i8 %353, i8* %21, align 1
  store i8 %354, i8* %14, align 1
  br label %355

; <label>:355:                                    ; preds = %351, %349
  store i8 0, i8* %39, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %27, align 1
  br label %routine_ucomisd__xmm1___xmm0.exit515

routine_ucomisd__xmm1___xmm0.exit515:             ; preds = %355, %343
  %356 = phi i64 [ %.pre84, %343 ], [ %332, %355 ]
  %357 = phi %struct.Memory* [ %344, %343 ], [ %283, %355 ]
  %358 = load i8, i8* %14, align 1
  %359 = icmp ne i8 %358, 0
  %.v132 = select i1 %359, i64 19, i64 6
  %360 = add i64 %356, %.v132
  store i64 %360, i64* %3, align 8
  %cmpBr_41a3fe = icmp eq i8 %358, 1
  br i1 %cmpBr_41a3fe, label %block_.L_41a411, label %block_41a404

block_41a404:                                     ; preds = %routine_ucomisd__xmm1___xmm0.exit515
  %361 = add i64 %360, ptrtoint (%G_0x3a348__rip__type* @G_0x3a348__rip_ to i64)
  %362 = add i64 %360, 8
  store i64 %362, i64* %3, align 8
  %363 = inttoptr i64 %361 to i32*
  %364 = load i32, i32* %363, align 4
  store i32 %364, i32* %135, align 1
  store float 0.000000e+00, float* %137, align 1
  store float 0.000000e+00, float* %139, align 1
  store float 0.000000e+00, float* %141, align 1
  %365 = load i64, i64* %RBP.i, align 8
  %366 = add i64 %365, -60
  %367 = add i64 %360, 13
  store i64 %367, i64* %3, align 8
  %368 = load <2 x float>, <2 x float>* %97, align 1
  %369 = extractelement <2 x float> %368, i32 0
  %370 = inttoptr i64 %366 to float*
  store float %369, float* %370, align 4
  %.pre85 = load i64, i64* %3, align 8
  br label %block_.L_41a411

block_.L_41a411:                                  ; preds = %block_41a404, %routine_ucomisd__xmm1___xmm0.exit515
  %371 = phi i64 [ %.pre85, %block_41a404 ], [ %360, %routine_ucomisd__xmm1___xmm0.exit515 ]
  %372 = load i64, i64* %RBP.i, align 8
  %373 = add i64 %372, -104
  %374 = add i64 %371, 8
  store i64 %374, i64* %3, align 8
  %375 = inttoptr i64 %373 to i32*
  %376 = load i32, i32* %375, align 4
  %377 = add i32 %376, 1
  %378 = zext i32 %377 to i64
  store i64 %378, i64* %RAX.i503, align 8
  %379 = icmp eq i32 %376, -1
  %380 = icmp eq i32 %377, 0
  %381 = or i1 %379, %380
  %382 = zext i1 %381 to i8
  store i8 %382, i8* %14, align 1
  %383 = and i32 %377, 255
  %384 = tail call i32 @llvm.ctpop.i32(i32 %383)
  %385 = trunc i32 %384 to i8
  %386 = and i8 %385, 1
  %387 = xor i8 %386, 1
  store i8 %387, i8* %21, align 1
  %388 = xor i32 %377, %376
  %389 = lshr i32 %388, 4
  %390 = trunc i32 %389 to i8
  %391 = and i8 %390, 1
  store i8 %391, i8* %27, align 1
  %392 = zext i1 %380 to i8
  store i8 %392, i8* %30, align 1
  %393 = lshr i32 %377, 31
  %394 = trunc i32 %393 to i8
  store i8 %394, i8* %33, align 1
  %395 = lshr i32 %376, 31
  %396 = xor i32 %393, %395
  %397 = add nuw nsw i32 %396, %393
  %398 = icmp eq i32 %397, 2
  %399 = zext i1 %398 to i8
  store i8 %399, i8* %39, align 1
  %400 = add i64 %371, 14
  store i64 %400, i64* %3, align 8
  store i32 %377, i32* %375, align 4
  %401 = load i64, i64* %3, align 8
  %402 = add i64 %401, -152
  store i64 %402, i64* %3, align 8
  br label %block_.L_41a387

block_.L_41a424.loopexit:                         ; preds = %block_.L_41a387
  br label %block_.L_41a424

block_.L_41a424:                                  ; preds = %block_.L_41a424.loopexit, %block_41a3d5
  %403 = phi i64 [ %289, %block_41a3d5 ], [ %187, %block_.L_41a424.loopexit ]
  %404 = phi i64 [ %.pre62, %block_41a3d5 ], [ %159, %block_.L_41a424.loopexit ]
  %MEMORY.2 = phi %struct.Memory* [ %283, %block_41a3d5 ], [ %MEMORY.0, %block_.L_41a424.loopexit ]
  %405 = add i64 %404, -104
  %406 = add i64 %403, 4
  store i64 %406, i64* %3, align 8
  %407 = inttoptr i64 %405 to i32*
  %408 = load i32, i32* %407, align 4
  %409 = add i32 %408, -100
  %410 = icmp ult i32 %408, 100
  %411 = zext i1 %410 to i8
  store i8 %411, i8* %14, align 1
  %412 = and i32 %409, 255
  %413 = tail call i32 @llvm.ctpop.i32(i32 %412)
  %414 = trunc i32 %413 to i8
  %415 = and i8 %414, 1
  %416 = xor i8 %415, 1
  store i8 %416, i8* %21, align 1
  %417 = xor i32 %409, %408
  %418 = lshr i32 %417, 4
  %419 = trunc i32 %418 to i8
  %420 = and i8 %419, 1
  store i8 %420, i8* %27, align 1
  %421 = icmp eq i32 %409, 0
  %422 = zext i1 %421 to i8
  store i8 %422, i8* %30, align 1
  %423 = lshr i32 %409, 31
  %424 = trunc i32 %423 to i8
  store i8 %424, i8* %33, align 1
  %425 = lshr i32 %408, 31
  %426 = xor i32 %423, %425
  %427 = add nuw nsw i32 %426, %425
  %428 = icmp eq i32 %427, 2
  %429 = zext i1 %428 to i8
  store i8 %429, i8* %39, align 1
  %.v92 = select i1 %421, i64 10, i64 559
  %430 = add i64 %403, %.v92
  store i64 %430, i64* %3, align 8
  br i1 %421, label %block_41a42e, label %block_.L_41a424.block_.L_41a653_crit_edge

block_.L_41a424.block_.L_41a653_crit_edge:        ; preds = %block_.L_41a424
  %.pre89 = bitcast i64* %138 to double*
  br label %block_.L_41a653

block_41a42e:                                     ; preds = %block_.L_41a424
  %431 = add i64 %404, -68
  store i64 %431, i64* %R8.i450, align 8
  %432 = add i64 %404, -72
  store i64 %432, i64* %R9.i518, align 8
  %433 = add i64 %430, add (i64 ptrtoint (%G_0x3a30e__rip__type* @G_0x3a30e__rip_ to i64), i64 8)
  %434 = add i64 %430, 16
  store i64 %434, i64* %3, align 8
  %435 = inttoptr i64 %433 to i32*
  %436 = load i32, i32* %435, align 4
  %437 = bitcast %union.VectorReg* %92 to float*
  store i32 %436, i32* %135, align 1
  store float 0.000000e+00, float* %137, align 1
  store float 0.000000e+00, float* %139, align 1
  store float 0.000000e+00, float* %141, align 1
  %438 = add i64 %404, -108
  %439 = add i64 %430, 21
  store i64 %439, i64* %3, align 8
  %440 = load <2 x float>, <2 x float>* %97, align 1
  %441 = extractelement <2 x float> %440, i32 0
  %442 = inttoptr i64 %438 to float*
  store float %441, float* %442, align 4
  %443 = load i64, i64* %RBP.i, align 8
  %444 = add i64 %443, -112
  %445 = load i64, i64* %3, align 8
  %446 = add i64 %445, 5
  store i64 %446, i64* %3, align 8
  %447 = load <2 x float>, <2 x float>* %97, align 1
  %448 = extractelement <2 x float> %447, i32 0
  %449 = inttoptr i64 %444 to float*
  store float %448, float* %449, align 4
  %450 = load i64, i64* %RBP.i, align 8
  %451 = add i64 %450, -60
  %452 = load i64, i64* %3, align 8
  %453 = add i64 %452, 5
  store i64 %453, i64* %3, align 8
  %454 = load <2 x float>, <2 x float>* %97, align 1
  %455 = extractelement <2 x float> %454, i32 0
  %456 = inttoptr i64 %451 to float*
  store float %455, float* %456, align 4
  %457 = load i64, i64* %RBP.i, align 8
  %458 = add i64 %457, -16
  %459 = load i64, i64* %3, align 8
  %460 = add i64 %459, 4
  store i64 %460, i64* %3, align 8
  %461 = inttoptr i64 %458 to i64*
  %462 = load i64, i64* %461, align 8
  store i64 %462, i64* %RDI.i, align 8
  %463 = add i64 %457, -24
  %464 = add i64 %459, 8
  store i64 %464, i64* %3, align 8
  %465 = inttoptr i64 %463 to i64*
  %466 = load i64, i64* %465, align 8
  store i64 %466, i64* %RSI.i309, align 8
  %467 = add i64 %457, -28
  %468 = add i64 %459, 11
  store i64 %468, i64* %3, align 8
  %469 = inttoptr i64 %467 to i32*
  %470 = load i32, i32* %469, align 4
  %471 = zext i32 %470 to i64
  store i64 %471, i64* %RDX.i571, align 8
  %472 = add i64 %457, -32
  %473 = add i64 %459, 14
  store i64 %473, i64* %3, align 8
  %474 = inttoptr i64 %472 to i32*
  %475 = load i32, i32* %474, align 4
  %476 = zext i32 %475 to i64
  store i64 %476, i64* %RCX.i568, align 8
  %477 = add i64 %457, -36
  %478 = add i64 %459, 19
  store i64 %478, i64* %3, align 8
  %479 = inttoptr i64 %477 to i32*
  %480 = load i32, i32* %479, align 4
  store i32 %480, i32* %135, align 1
  store float 0.000000e+00, float* %137, align 1
  store float 0.000000e+00, float* %139, align 1
  store float 0.000000e+00, float* %141, align 1
  %481 = add i64 %457, -60
  %482 = add i64 %459, 24
  store i64 %482, i64* %3, align 8
  %483 = inttoptr i64 %481 to i32*
  %484 = load i32, i32* %483, align 4
  store i32 %484, i32* %47, align 1
  store float 0.000000e+00, float* %49, align 1
  store float 0.000000e+00, float* %51, align 1
  store float 0.000000e+00, float* %53, align 1
  %485 = add i64 %459, 2515
  %486 = add i64 %459, 29
  %487 = load i64, i64* %6, align 8
  %488 = add i64 %487, -8
  %489 = inttoptr i64 %488 to i64*
  store i64 %486, i64* %489, align 8
  store i64 %488, i64* %6, align 8
  store i64 %485, i64* %3, align 8
  %call2_41a465 = tail call %struct.Memory* @sub_41ae20.Lawless422(%struct.State* nonnull %0, i64 %485, %struct.Memory* %MEMORY.2)
  %490 = load i64, i64* %3, align 8
  store i32 0, i32* %135, align 1
  store i32 0, i32* %148, align 1
  store i32 0, i32* %149, align 1
  store i32 0, i32* %150, align 1
  %491 = load i64, i64* %RBP.i, align 8
  %492 = add i64 %491, -68
  %493 = add i64 %490, 8
  store i64 %493, i64* %3, align 8
  %494 = inttoptr i64 %492 to float*
  %495 = load float, float* %494, align 4
  %496 = fpext float %495 to double
  store double %496, double* %151, align 1
  %497 = add i64 %490, 12
  store i64 %497, i64* %3, align 8
  %498 = load double, double* %142, align 1
  %499 = fcmp uno double %498, %496
  br i1 %499, label %500, label %510

; <label>:500:                                    ; preds = %block_41a42e
  %501 = fadd double %496, %498
  %502 = bitcast double %501 to i64
  %503 = and i64 %502, 9221120237041090560
  %504 = icmp eq i64 %503, 9218868437227405312
  %505 = and i64 %502, 2251799813685247
  %506 = icmp ne i64 %505, 0
  %507 = and i1 %504, %506
  br i1 %507, label %508, label %516

; <label>:508:                                    ; preds = %500
  %509 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %497, %struct.Memory* %call2_41a465)
  %.pre63 = load i64, i64* %3, align 8
  br label %routine_ucomisd__xmm1___xmm0.exit447

; <label>:510:                                    ; preds = %block_41a42e
  %511 = fcmp ogt double %498, %496
  br i1 %511, label %516, label %512

; <label>:512:                                    ; preds = %510
  %513 = fcmp olt double %498, %496
  br i1 %513, label %516, label %514

; <label>:514:                                    ; preds = %512
  %515 = fcmp oeq double %498, %496
  br i1 %515, label %516, label %520

; <label>:516:                                    ; preds = %514, %512, %510, %500
  %517 = phi i8 [ 0, %510 ], [ 0, %512 ], [ 1, %514 ], [ 1, %500 ]
  %518 = phi i8 [ 0, %510 ], [ 0, %512 ], [ 0, %514 ], [ 1, %500 ]
  %519 = phi i8 [ 0, %510 ], [ 1, %512 ], [ 0, %514 ], [ 1, %500 ]
  store i8 %517, i8* %30, align 1
  store i8 %518, i8* %21, align 1
  store i8 %519, i8* %14, align 1
  br label %520

; <label>:520:                                    ; preds = %516, %514
  store i8 0, i8* %39, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %27, align 1
  br label %routine_ucomisd__xmm1___xmm0.exit447

routine_ucomisd__xmm1___xmm0.exit447:             ; preds = %520, %508
  %521 = phi i64 [ %.pre63, %508 ], [ %497, %520 ]
  %522 = phi %struct.Memory* [ %509, %508 ], [ %call2_41a465, %520 ]
  %523 = load i8, i8* %14, align 1
  %524 = load i8, i8* %30, align 1
  %525 = or i8 %524, %523
  %526 = icmp ne i8 %525, 0
  %.v127 = select i1 %526, i64 127, i64 6
  %527 = add i64 %521, %.v127
  %528 = add i64 %527, 5
  store i64 %528, i64* %3, align 8
  br i1 %526, label %block_.L_41a4fa.preheader, label %block_.L_41a481.preheader

block_.L_41a481.preheader:                        ; preds = %routine_ucomisd__xmm1___xmm0.exit447
  %529 = bitcast i64* %50 to double*
  %530 = bitcast %union.VectorReg* %54 to double*
  %531 = bitcast %union.VectorReg* %92 to <4 x i32>*
  %532 = bitcast %union.VectorReg* %92 to <4 x i32>*
  br label %block_.L_41a481

block_.L_41a4fa.preheader:                        ; preds = %routine_ucomisd__xmm1___xmm0.exit447
  %533 = bitcast i64* %138 to double*
  %534 = bitcast %union.VectorReg* %92 to <4 x i32>*
  br label %block_.L_41a4fa

block_.L_41a481:                                  ; preds = %block_.L_41a481.preheader, %routine_ucomisd__xmm1___xmm0.exit
  %535 = phi i64 [ %663, %routine_ucomisd__xmm1___xmm0.exit ], [ %528, %block_.L_41a481.preheader ]
  %MEMORY.3 = phi %struct.Memory* [ %662, %routine_ucomisd__xmm1___xmm0.exit ], [ %522, %block_.L_41a481.preheader ]
  store <4 x i32> zeroinitializer, <4 x i32>* %531, align 1
  %536 = add i64 %535, add (i64 ptrtoint (%G_0x3a3ec__rip__type* @G_0x3a3ec__rip_ to i64), i64 3)
  %537 = add i64 %535, 11
  store i64 %537, i64* %3, align 8
  %538 = inttoptr i64 %536 to i64*
  %539 = load i64, i64* %538, align 8
  store i64 %539, i64* %147, align 1
  store double 0.000000e+00, double* %529, align 1
  %540 = load i64, i64* %RBP.i, align 8
  %541 = add i64 %540, -108
  %542 = add i64 %535, 16
  store i64 %542, i64* %3, align 8
  %543 = inttoptr i64 %541 to float*
  %544 = load float, float* %543, align 4
  %545 = fpext float %544 to double
  %546 = bitcast i64 %539 to double
  %547 = fsub double %545, %546
  store double %547, double* %530, align 1
  %.cast38 = bitcast i64 %539 to <2 x i32>
  %548 = fptrunc double %547 to float
  store float %548, float* %46, align 1
  %549 = extractelement <2 x i32> %.cast38, i32 1
  store i32 %549, i32* %143, align 1
  store i32 0, i32* %144, align 1
  store i32 0, i32* %145, align 1
  %550 = add i64 %535, 29
  store i64 %550, i64* %3, align 8
  %551 = load <2 x float>, <2 x float>* %125, align 1
  %552 = extractelement <2 x float> %551, i32 0
  store float %552, float* %543, align 4
  %553 = load i64, i64* %RBP.i, align 8
  %554 = add i64 %553, -108
  %555 = load i64, i64* %3, align 8
  %556 = add i64 %555, 5
  store i64 %556, i64* %3, align 8
  %557 = inttoptr i64 %554 to float*
  %558 = load float, float* %557, align 4
  %559 = fpext float %558 to double
  store double %559, double* %151, align 1
  %560 = add i64 %555, 9
  store i64 %560, i64* %3, align 8
  %561 = load double, double* %142, align 1
  %562 = fcmp uno double %561, %559
  br i1 %562, label %563, label %573

; <label>:563:                                    ; preds = %block_.L_41a481
  %564 = fadd double %559, %561
  %565 = bitcast double %564 to i64
  %566 = and i64 %565, 9221120237041090560
  %567 = icmp eq i64 %566, 9218868437227405312
  %568 = and i64 %565, 2251799813685247
  %569 = icmp ne i64 %568, 0
  %570 = and i1 %567, %569
  br i1 %570, label %571, label %579

; <label>:571:                                    ; preds = %563
  %572 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %560, %struct.Memory* %MEMORY.3)
  %.pre64 = load i64, i64* %3, align 8
  %.pre65 = load i64, i64* %RBP.i, align 8
  br label %routine_ucomisd__xmm1___xmm0.exit418

; <label>:573:                                    ; preds = %block_.L_41a481
  %574 = fcmp ogt double %561, %559
  br i1 %574, label %579, label %575

; <label>:575:                                    ; preds = %573
  %576 = fcmp olt double %561, %559
  br i1 %576, label %579, label %577

; <label>:577:                                    ; preds = %575
  %578 = fcmp oeq double %561, %559
  br i1 %578, label %579, label %583

; <label>:579:                                    ; preds = %577, %575, %573, %563
  %580 = phi i8 [ 0, %573 ], [ 0, %575 ], [ 1, %577 ], [ 1, %563 ]
  %581 = phi i8 [ 0, %573 ], [ 0, %575 ], [ 0, %577 ], [ 1, %563 ]
  %582 = phi i8 [ 0, %573 ], [ 1, %575 ], [ 0, %577 ], [ 1, %563 ]
  store i8 %580, i8* %30, align 1
  store i8 %581, i8* %21, align 1
  store i8 %582, i8* %14, align 1
  br label %583

; <label>:583:                                    ; preds = %579, %577
  store i8 0, i8* %39, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %27, align 1
  br label %routine_ucomisd__xmm1___xmm0.exit418

routine_ucomisd__xmm1___xmm0.exit418:             ; preds = %583, %571
  %584 = phi i64 [ %.pre65, %571 ], [ %553, %583 ]
  %585 = phi i64 [ %.pre64, %571 ], [ %560, %583 ]
  %586 = phi %struct.Memory* [ %572, %571 ], [ %MEMORY.3, %583 ]
  %587 = load i8, i8* %14, align 1
  %588 = load i8, i8* %30, align 1
  %589 = or i8 %588, %587
  %590 = icmp ne i8 %589, 0
  %.v128 = select i1 %590, i64 18, i64 6
  %591 = add i64 %585, %.v128
  store i64 %591, i64* %3, align 8
  br i1 %590, label %block_.L_41a4b9, label %block_41a4ad

block_41a4ad:                                     ; preds = %routine_ucomisd__xmm1___xmm0.exit418
  %592 = add i64 %584, -4
  %593 = add i64 %591, 7
  store i64 %593, i64* %3, align 8
  %594 = inttoptr i64 %592 to i32*
  store i32 0, i32* %594, align 4
  %595 = load i64, i64* %3, align 8
  %596 = add i64 %595, 754
  store i64 %596, i64* %3, align 8
  br label %block_.L_41a7a6

block_.L_41a4b9:                                  ; preds = %routine_ucomisd__xmm1___xmm0.exit418
  %597 = add i64 %584, -68
  store i64 %597, i64* %R8.i450, align 8
  %598 = add i64 %584, -72
  store i64 %598, i64* %R9.i518, align 8
  %599 = add i64 %584, -16
  %600 = add i64 %591, 12
  store i64 %600, i64* %3, align 8
  %601 = inttoptr i64 %599 to i64*
  %602 = load i64, i64* %601, align 8
  store i64 %602, i64* %RDI.i, align 8
  %603 = add i64 %584, -24
  %604 = add i64 %591, 16
  store i64 %604, i64* %3, align 8
  %605 = inttoptr i64 %603 to i64*
  %606 = load i64, i64* %605, align 8
  store i64 %606, i64* %RSI.i309, align 8
  %607 = add i64 %584, -28
  %608 = add i64 %591, 19
  store i64 %608, i64* %3, align 8
  %609 = inttoptr i64 %607 to i32*
  %610 = load i32, i32* %609, align 4
  %611 = zext i32 %610 to i64
  store i64 %611, i64* %RDX.i571, align 8
  %612 = add i64 %584, -32
  %613 = add i64 %591, 22
  store i64 %613, i64* %3, align 8
  %614 = inttoptr i64 %612 to i32*
  %615 = load i32, i32* %614, align 4
  %616 = zext i32 %615 to i64
  store i64 %616, i64* %RCX.i568, align 8
  %617 = add i64 %584, -36
  %618 = add i64 %591, 27
  store i64 %618, i64* %3, align 8
  %619 = inttoptr i64 %617 to i32*
  %620 = load i32, i32* %619, align 4
  store i32 %620, i32* %135, align 1
  store float 0.000000e+00, float* %137, align 1
  store float 0.000000e+00, float* %139, align 1
  store float 0.000000e+00, float* %141, align 1
  %621 = add i64 %584, -108
  %622 = add i64 %591, 32
  store i64 %622, i64* %3, align 8
  %623 = inttoptr i64 %621 to i32*
  %624 = load i32, i32* %623, align 4
  store i32 %624, i32* %47, align 1
  store float 0.000000e+00, float* %49, align 1
  store float 0.000000e+00, float* %51, align 1
  store float 0.000000e+00, float* %53, align 1
  %625 = add i64 %591, 2407
  %626 = add i64 %591, 37
  %627 = load i64, i64* %6, align 8
  %628 = add i64 %627, -8
  %629 = inttoptr i64 %628 to i64*
  store i64 %626, i64* %629, align 8
  store i64 %628, i64* %6, align 8
  store i64 %625, i64* %3, align 8
  %call2_41a4d9 = tail call %struct.Memory* @sub_41ae20.Lawless422(%struct.State* nonnull %0, i64 %625, %struct.Memory* %586)
  %630 = load i64, i64* %3, align 8
  store <4 x i32> zeroinitializer, <4 x i32>* %532, align 1
  %631 = load i64, i64* %RBP.i, align 8
  %632 = add i64 %631, -68
  %633 = add i64 %630, 8
  store i64 %633, i64* %3, align 8
  %634 = inttoptr i64 %632 to float*
  %635 = load float, float* %634, align 4
  %636 = fpext float %635 to double
  store double %636, double* %151, align 1
  %637 = add i64 %630, 12
  store i64 %637, i64* %3, align 8
  %638 = load double, double* %142, align 1
  %639 = fcmp uno double %638, %636
  br i1 %639, label %640, label %650

; <label>:640:                                    ; preds = %block_.L_41a4b9
  %641 = fadd double %636, %638
  %642 = bitcast double %641 to i64
  %643 = and i64 %642, 9221120237041090560
  %644 = icmp eq i64 %643, 9218868437227405312
  %645 = and i64 %642, 2251799813685247
  %646 = icmp ne i64 %645, 0
  %647 = and i1 %644, %646
  br i1 %647, label %648, label %656

; <label>:648:                                    ; preds = %640
  %649 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %637, %struct.Memory* %call2_41a4d9)
  %.pre66 = load i64, i64* %3, align 8
  br label %routine_ucomisd__xmm1___xmm0.exit

; <label>:650:                                    ; preds = %block_.L_41a4b9
  %651 = fcmp ogt double %638, %636
  br i1 %651, label %656, label %652

; <label>:652:                                    ; preds = %650
  %653 = fcmp olt double %638, %636
  br i1 %653, label %656, label %654

; <label>:654:                                    ; preds = %652
  %655 = fcmp oeq double %638, %636
  br i1 %655, label %656, label %660

; <label>:656:                                    ; preds = %654, %652, %650, %640
  %657 = phi i8 [ 0, %650 ], [ 0, %652 ], [ 1, %654 ], [ 1, %640 ]
  %658 = phi i8 [ 0, %650 ], [ 0, %652 ], [ 0, %654 ], [ 1, %640 ]
  %659 = phi i8 [ 0, %650 ], [ 1, %652 ], [ 0, %654 ], [ 1, %640 ]
  store i8 %657, i8* %30, align 1
  store i8 %658, i8* %21, align 1
  store i8 %659, i8* %14, align 1
  br label %660

; <label>:660:                                    ; preds = %656, %654
  store i8 0, i8* %39, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %27, align 1
  br label %routine_ucomisd__xmm1___xmm0.exit

routine_ucomisd__xmm1___xmm0.exit:                ; preds = %660, %648
  %661 = phi i64 [ %.pre66, %648 ], [ %637, %660 ]
  %662 = phi %struct.Memory* [ %649, %648 ], [ %call2_41a4d9, %660 ]
  %663 = add i64 %661, -105
  %664 = add i64 %661, 6
  %665 = load i8, i8* %14, align 1
  %666 = load i8, i8* %30, align 1
  %667 = or i8 %666, %665
  %668 = icmp eq i8 %667, 0
  %669 = select i1 %668, i64 %663, i64 %664
  store i64 %669, i64* %3, align 8
  br i1 %668, label %block_.L_41a481, label %block_41a4f0

block_41a4f0:                                     ; preds = %routine_ucomisd__xmm1___xmm0.exit
  %670 = add i64 %669, 136
  %.pre86 = bitcast i64* %138 to double*
  br label %block_.L_41a578

block_.L_41a4fa:                                  ; preds = %block_.L_41a4fa.preheader, %routine_ucomisd__xmm0___xmm1.exit307
  %671 = phi i64 [ %810, %routine_ucomisd__xmm0___xmm1.exit307 ], [ %528, %block_.L_41a4fa.preheader ]
  %MEMORY.4 = phi %struct.Memory* [ %807, %routine_ucomisd__xmm0___xmm1.exit307 ], [ %522, %block_.L_41a4fa.preheader ]
  %672 = load i64, i64* %RBP.i, align 8
  %673 = add i64 %672, -68
  store i64 %673, i64* %R8.i450, align 8
  %674 = add i64 %672, -72
  store i64 %674, i64* %R9.i518, align 8
  %675 = add i64 %671, add (i64 ptrtoint (%G_0x3a366__rip__type* @G_0x3a366__rip_ to i64), i64 8)
  %676 = add i64 %671, 16
  store i64 %676, i64* %3, align 8
  %677 = inttoptr i64 %675 to i64*
  %678 = load i64, i64* %677, align 8
  store i64 %678, i64* %146, align 1
  store double 0.000000e+00, double* %533, align 1
  %679 = add i64 %672, -112
  %680 = add i64 %671, 21
  store i64 %680, i64* %3, align 8
  %681 = inttoptr i64 %679 to float*
  %682 = load float, float* %681, align 4
  %683 = fpext float %682 to double
  %684 = bitcast i64 %678 to double
  %685 = fadd double %683, %684
  store double %685, double* %151, align 1
  %.cast40 = bitcast i64 %678 to <2 x i32>
  %686 = fptrunc double %685 to float
  store float %686, float* %437, align 1
  %687 = extractelement <2 x i32> %.cast40, i32 1
  store i32 %687, i32* %148, align 1
  store i32 0, i32* %149, align 1
  store i32 0, i32* %150, align 1
  %688 = add i64 %671, 34
  store i64 %688, i64* %3, align 8
  %689 = load <2 x float>, <2 x float>* %97, align 1
  %690 = extractelement <2 x float> %689, i32 0
  store float %690, float* %681, align 4
  %691 = load i64, i64* %RBP.i, align 8
  %692 = add i64 %691, -16
  %693 = load i64, i64* %3, align 8
  %694 = add i64 %693, 4
  store i64 %694, i64* %3, align 8
  %695 = inttoptr i64 %692 to i64*
  %696 = load i64, i64* %695, align 8
  store i64 %696, i64* %RDI.i, align 8
  %697 = add i64 %691, -24
  %698 = add i64 %693, 8
  store i64 %698, i64* %3, align 8
  %699 = inttoptr i64 %697 to i64*
  %700 = load i64, i64* %699, align 8
  store i64 %700, i64* %RSI.i309, align 8
  %701 = add i64 %691, -28
  %702 = add i64 %693, 11
  store i64 %702, i64* %3, align 8
  %703 = inttoptr i64 %701 to i32*
  %704 = load i32, i32* %703, align 4
  %705 = zext i32 %704 to i64
  store i64 %705, i64* %RDX.i571, align 8
  %706 = add i64 %691, -32
  %707 = add i64 %693, 14
  store i64 %707, i64* %3, align 8
  %708 = inttoptr i64 %706 to i32*
  %709 = load i32, i32* %708, align 4
  %710 = zext i32 %709 to i64
  store i64 %710, i64* %RCX.i568, align 8
  %711 = add i64 %691, -36
  %712 = add i64 %693, 19
  store i64 %712, i64* %3, align 8
  %713 = inttoptr i64 %711 to i32*
  %714 = load i32, i32* %713, align 4
  store i32 %714, i32* %135, align 1
  store float 0.000000e+00, float* %137, align 1
  store float 0.000000e+00, float* %139, align 1
  store float 0.000000e+00, float* %141, align 1
  %715 = add i64 %691, -108
  %716 = add i64 %693, 24
  store i64 %716, i64* %3, align 8
  %717 = inttoptr i64 %715 to i32*
  %718 = load i32, i32* %717, align 4
  store i32 %718, i32* %47, align 1
  store float 0.000000e+00, float* %49, align 1
  store float 0.000000e+00, float* %51, align 1
  store float 0.000000e+00, float* %53, align 1
  %719 = add i64 %693, 2308
  %720 = add i64 %693, 29
  %721 = load i64, i64* %6, align 8
  %722 = add i64 %721, -8
  %723 = inttoptr i64 %722 to i64*
  store i64 %720, i64* %723, align 8
  store i64 %722, i64* %6, align 8
  store i64 %719, i64* %3, align 8
  %call2_41a534 = tail call %struct.Memory* @sub_41ae20.Lawless422(%struct.State* nonnull %0, i64 %719, %struct.Memory* %MEMORY.4)
  %724 = load i64, i64* %3, align 8
  %725 = add i64 %724, ptrtoint (%G_0x3a327__rip__type* @G_0x3a327__rip_ to i64)
  %726 = add i64 %724, 8
  store i64 %726, i64* %3, align 8
  %727 = inttoptr i64 %725 to i64*
  %728 = load i64, i64* %727, align 8
  store i64 %728, i64* %146, align 1
  store double 0.000000e+00, double* %533, align 1
  %729 = load i64, i64* %RBP.i, align 8
  %730 = add i64 %729, -112
  %731 = add i64 %724, 13
  store i64 %731, i64* %3, align 8
  %732 = inttoptr i64 %730 to float*
  %733 = load float, float* %732, align 4
  %734 = fpext float %733 to double
  store double %734, double* %151, align 1
  %735 = add i64 %724, 17
  store i64 %735, i64* %3, align 8
  %736 = bitcast i64 %728 to double
  %737 = fcmp uno double %734, %736
  br i1 %737, label %738, label %748

; <label>:738:                                    ; preds = %block_.L_41a4fa
  %739 = fadd double %734, %736
  %740 = bitcast double %739 to i64
  %741 = and i64 %740, 9221120237041090560
  %742 = icmp eq i64 %741, 9218868437227405312
  %743 = and i64 %740, 2251799813685247
  %744 = icmp ne i64 %743, 0
  %745 = and i1 %742, %744
  br i1 %745, label %746, label %754

; <label>:746:                                    ; preds = %738
  %747 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %735, %struct.Memory* %MEMORY.4)
  %.pre67 = load i64, i64* %3, align 8
  br label %routine_ucomisd__xmm0___xmm1.exit325

; <label>:748:                                    ; preds = %block_.L_41a4fa
  %749 = fcmp ogt double %734, %736
  br i1 %749, label %754, label %750

; <label>:750:                                    ; preds = %748
  %751 = fcmp olt double %734, %736
  br i1 %751, label %754, label %752

; <label>:752:                                    ; preds = %750
  %753 = fcmp oeq double %734, %736
  br i1 %753, label %754, label %758

; <label>:754:                                    ; preds = %752, %750, %748, %738
  %755 = phi i8 [ 0, %748 ], [ 0, %750 ], [ 1, %752 ], [ 1, %738 ]
  %756 = phi i8 [ 0, %748 ], [ 0, %750 ], [ 0, %752 ], [ 1, %738 ]
  %757 = phi i8 [ 0, %748 ], [ 1, %750 ], [ 0, %752 ], [ 1, %738 ]
  store i8 %755, i8* %30, align 1
  store i8 %756, i8* %21, align 1
  store i8 %757, i8* %14, align 1
  br label %758

; <label>:758:                                    ; preds = %754, %752
  store i8 0, i8* %39, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %27, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit325

routine_ucomisd__xmm0___xmm1.exit325:             ; preds = %758, %746
  %759 = phi i64 [ %.pre67, %746 ], [ %735, %758 ]
  %760 = phi %struct.Memory* [ %747, %746 ], [ %MEMORY.4, %758 ]
  %761 = load i8, i8* %14, align 1
  %762 = load i8, i8* %30, align 1
  %763 = or i8 %762, %761
  %764 = icmp ne i8 %763, 0
  %.v130 = select i1 %764, i64 18, i64 6
  %765 = add i64 %759, %.v130
  store i64 %765, i64* %3, align 8
  br i1 %764, label %block_.L_41a55c, label %block_41a550

block_41a550:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit325
  %766 = load i64, i64* %RBP.i, align 8
  %767 = add i64 %766, -4
  %768 = add i64 %765, 7
  store i64 %768, i64* %3, align 8
  %769 = inttoptr i64 %767 to i32*
  store i32 0, i32* %769, align 4
  %770 = load i64, i64* %3, align 8
  %771 = add i64 %770, 591
  store i64 %771, i64* %3, align 8
  br label %block_.L_41a7a6

block_.L_41a55c:                                  ; preds = %routine_ucomisd__xmm0___xmm1.exit325
  store <4 x i32> zeroinitializer, <4 x i32>* %534, align 1
  %772 = load i64, i64* %RBP.i, align 8
  %773 = add i64 %772, -68
  %774 = add i64 %765, 13
  store i64 %774, i64* %3, align 8
  %775 = inttoptr i64 %773 to float*
  %776 = load float, float* %775, align 4
  %777 = fpext float %776 to double
  store double %777, double* %151, align 1
  %778 = add i64 %765, 17
  store i64 %778, i64* %3, align 8
  %779 = load double, double* %142, align 1
  %780 = fcmp uno double %777, %779
  br i1 %780, label %781, label %791

; <label>:781:                                    ; preds = %block_.L_41a55c
  %782 = fadd double %777, %779
  %783 = bitcast double %782 to i64
  %784 = and i64 %783, 9221120237041090560
  %785 = icmp eq i64 %784, 9218868437227405312
  %786 = and i64 %783, 2251799813685247
  %787 = icmp ne i64 %786, 0
  %788 = and i1 %785, %787
  br i1 %788, label %789, label %797

; <label>:789:                                    ; preds = %781
  %790 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %778, %struct.Memory* %760)
  %.pre68 = load i64, i64* %3, align 8
  %.pre69 = load i8, i8* %14, align 1
  %.pre70 = load i8, i8* %30, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit307

; <label>:791:                                    ; preds = %block_.L_41a55c
  %792 = fcmp ogt double %777, %779
  br i1 %792, label %797, label %793

; <label>:793:                                    ; preds = %791
  %794 = fcmp olt double %777, %779
  br i1 %794, label %797, label %795

; <label>:795:                                    ; preds = %793
  %796 = fcmp oeq double %777, %779
  br i1 %796, label %797, label %801

; <label>:797:                                    ; preds = %795, %793, %791, %781
  %798 = phi i8 [ 0, %791 ], [ 0, %793 ], [ 1, %795 ], [ 1, %781 ]
  %799 = phi i8 [ 0, %791 ], [ 0, %793 ], [ 0, %795 ], [ 1, %781 ]
  %800 = phi i8 [ 0, %791 ], [ 1, %793 ], [ 0, %795 ], [ 1, %781 ]
  store i8 %798, i8* %30, align 1
  store i8 %799, i8* %21, align 1
  store i8 %800, i8* %14, align 1
  br label %801

; <label>:801:                                    ; preds = %797, %795
  %802 = phi i8 [ %798, %797 ], [ %762, %795 ]
  %803 = phi i8 [ %800, %797 ], [ %761, %795 ]
  store i8 0, i8* %39, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %27, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit307

routine_ucomisd__xmm0___xmm1.exit307:             ; preds = %801, %789
  %804 = phi i8 [ %.pre70, %789 ], [ %802, %801 ]
  %805 = phi i8 [ %.pre69, %789 ], [ %803, %801 ]
  %806 = phi i64 [ %.pre68, %789 ], [ %778, %801 ]
  %807 = phi %struct.Memory* [ %790, %789 ], [ %760, %801 ]
  %808 = or i8 %804, %805
  %809 = icmp eq i8 %808, 0
  %.v97 = select i1 %809, i64 -115, i64 6
  %810 = add i64 %806, %.v97
  store i64 %810, i64* %3, align 8
  br i1 %809, label %block_.L_41a4fa, label %block_41a573

block_41a573:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit307
  %811 = add i64 %810, 5
  store i64 %811, i64* %3, align 8
  br label %block_.L_41a578

block_.L_41a578:                                  ; preds = %block_41a573, %block_41a4f0
  %.pre-phi = phi double* [ %533, %block_41a573 ], [ %.pre86, %block_41a4f0 ]
  %storemerge = phi i64 [ %811, %block_41a573 ], [ %670, %block_41a4f0 ]
  %MEMORY.5 = phi %struct.Memory* [ %807, %block_41a573 ], [ %662, %block_41a4f0 ]
  %812 = load i64, i64* %RBP.i, align 8
  %813 = add i64 %812, -104
  %814 = add i64 %storemerge, 7
  store i64 %814, i64* %3, align 8
  %815 = inttoptr i64 %813 to i32*
  store i32 0, i32* %815, align 4
  %.pre71 = load i64, i64* %3, align 8
  %816 = bitcast %union.VectorReg* %92 to <4 x i32>*
  br label %block_.L_41a57f

block_.L_41a57f:                                  ; preds = %block_.L_41a620, %block_.L_41a578
  %817 = phi i64 [ %.pre71, %block_.L_41a578 ], [ %1070, %block_.L_41a620 ]
  %MEMORY.6 = phi %struct.Memory* [ %MEMORY.5, %block_.L_41a578 ], [ %1019, %block_.L_41a620 ]
  %818 = load i64, i64* %RBP.i, align 8
  %819 = add i64 %818, -104
  %820 = add i64 %817, 4
  store i64 %820, i64* %3, align 8
  %821 = inttoptr i64 %819 to i32*
  %822 = load i32, i32* %821, align 4
  %823 = add i32 %822, -100
  %824 = icmp ult i32 %822, 100
  %825 = zext i1 %824 to i8
  store i8 %825, i8* %14, align 1
  %826 = and i32 %823, 255
  %827 = tail call i32 @llvm.ctpop.i32(i32 %826)
  %828 = trunc i32 %827 to i8
  %829 = and i8 %828, 1
  %830 = xor i8 %829, 1
  store i8 %830, i8* %21, align 1
  %831 = xor i32 %823, %822
  %832 = lshr i32 %831, 4
  %833 = trunc i32 %832 to i8
  %834 = and i8 %833, 1
  store i8 %834, i8* %27, align 1
  %835 = icmp eq i32 %823, 0
  %836 = zext i1 %835 to i8
  store i8 %836, i8* %30, align 1
  %837 = lshr i32 %823, 31
  %838 = trunc i32 %837 to i8
  store i8 %838, i8* %33, align 1
  %839 = lshr i32 %822, 31
  %840 = xor i32 %837, %839
  %841 = add nuw nsw i32 %840, %839
  %842 = icmp eq i32 %841, 2
  %843 = zext i1 %842 to i8
  store i8 %843, i8* %39, align 1
  %844 = icmp ne i8 %838, 0
  %845 = xor i1 %844, %842
  %.v95 = select i1 %845, i64 10, i64 180
  %846 = add i64 %817, %.v95
  store i64 %846, i64* %3, align 8
  br i1 %845, label %block_41a589, label %block_.L_41a633.loopexit

block_41a589:                                     ; preds = %block_.L_41a57f
  %847 = add i64 %818, -68
  store i64 %847, i64* %R8.i450, align 8
  %848 = add i64 %818, -72
  store i64 %848, i64* %R9.i518, align 8
  %849 = add i64 %846, add (i64 ptrtoint (%G_0x3a24f__rip__type* @G_0x3a24f__rip_ to i64), i64 8)
  %850 = add i64 %846, 16
  store i64 %850, i64* %3, align 8
  %851 = inttoptr i64 %849 to i64*
  %852 = load i64, i64* %851, align 8
  store i64 %852, i64* %146, align 1
  store double 0.000000e+00, double* %.pre-phi, align 1
  %853 = add i64 %818, -108
  %854 = add i64 %846, 21
  store i64 %854, i64* %3, align 8
  %855 = inttoptr i64 %853 to i32*
  %856 = load i32, i32* %855, align 4
  store i32 %856, i32* %47, align 1
  store float 0.000000e+00, float* %49, align 1
  store float 0.000000e+00, float* %51, align 1
  store float 0.000000e+00, float* %53, align 1
  %857 = add i64 %818, -112
  %858 = add i64 %846, 26
  store i64 %858, i64* %3, align 8
  %859 = load <2 x float>, <2 x float>* %125, align 1
  %860 = load <2 x i32>, <2 x i32>* %156, align 1
  %861 = inttoptr i64 %857 to float*
  %862 = load float, float* %861, align 4
  %863 = extractelement <2 x float> %859, i32 0
  %864 = fadd float %863, %862
  store float %864, float* %46, align 1
  %865 = bitcast <2 x float> %859 to <2 x i32>
  %866 = extractelement <2 x i32> %865, i32 1
  store i32 %866, i32* %143, align 1
  %867 = extractelement <2 x i32> %860, i32 0
  store i32 %867, i32* %144, align 1
  %868 = extractelement <2 x i32> %860, i32 1
  store i32 %868, i32* %145, align 1
  %869 = load <2 x float>, <2 x float>* %125, align 1
  %870 = extractelement <2 x float> %869, i32 0
  %871 = fpext float %870 to double
  %872 = bitcast i64 %852 to double
  %873 = fdiv double %871, %872
  store double %873, double* %151, align 1
  %.cast39 = bitcast i64 %852 to <2 x i32>
  %874 = fptrunc double %873 to float
  store float %874, float* %437, align 1
  %875 = extractelement <2 x i32> %.cast39, i32 1
  store i32 %875, i32* %148, align 1
  store i32 0, i32* %149, align 1
  store i32 0, i32* %150, align 1
  %876 = add i64 %818, -116
  %877 = add i64 %846, 43
  store i64 %877, i64* %3, align 8
  %878 = load <2 x float>, <2 x float>* %97, align 1
  %879 = extractelement <2 x float> %878, i32 0
  %880 = inttoptr i64 %876 to float*
  store float %879, float* %880, align 4
  %881 = load i64, i64* %RBP.i, align 8
  %882 = add i64 %881, -16
  %883 = load i64, i64* %3, align 8
  %884 = add i64 %883, 4
  store i64 %884, i64* %3, align 8
  %885 = inttoptr i64 %882 to i64*
  %886 = load i64, i64* %885, align 8
  store i64 %886, i64* %RDI.i, align 8
  %887 = add i64 %881, -24
  %888 = add i64 %883, 8
  store i64 %888, i64* %3, align 8
  %889 = inttoptr i64 %887 to i64*
  %890 = load i64, i64* %889, align 8
  store i64 %890, i64* %RSI.i309, align 8
  %891 = add i64 %881, -28
  %892 = add i64 %883, 11
  store i64 %892, i64* %3, align 8
  %893 = inttoptr i64 %891 to i32*
  %894 = load i32, i32* %893, align 4
  %895 = zext i32 %894 to i64
  store i64 %895, i64* %RDX.i571, align 8
  %896 = add i64 %881, -32
  %897 = add i64 %883, 14
  store i64 %897, i64* %3, align 8
  %898 = inttoptr i64 %896 to i32*
  %899 = load i32, i32* %898, align 4
  %900 = zext i32 %899 to i64
  store i64 %900, i64* %RCX.i568, align 8
  %901 = add i64 %881, -36
  %902 = add i64 %883, 19
  store i64 %902, i64* %3, align 8
  %903 = inttoptr i64 %901 to i32*
  %904 = load i32, i32* %903, align 4
  store i32 %904, i32* %135, align 1
  store float 0.000000e+00, float* %137, align 1
  store float 0.000000e+00, float* %139, align 1
  store float 0.000000e+00, float* %141, align 1
  %905 = add i64 %881, -108
  %906 = add i64 %883, 24
  store i64 %906, i64* %3, align 8
  %907 = inttoptr i64 %905 to i32*
  %908 = load i32, i32* %907, align 4
  store i32 %908, i32* %47, align 1
  store float 0.000000e+00, float* %49, align 1
  store float 0.000000e+00, float* %51, align 1
  store float 0.000000e+00, float* %53, align 1
  %909 = add i64 %883, 2156
  %910 = add i64 %883, 29
  %911 = load i64, i64* %6, align 8
  %912 = add i64 %911, -8
  %913 = inttoptr i64 %912 to i64*
  store i64 %910, i64* %913, align 8
  store i64 %912, i64* %6, align 8
  store i64 %909, i64* %3, align 8
  %call2_41a5cc = tail call %struct.Memory* @sub_41ae20.Lawless422(%struct.State* nonnull %0, i64 %909, %struct.Memory* %MEMORY.6)
  %914 = load i64, i64* %RBP.i, align 8
  %915 = add i64 %914, -68
  %916 = load i64, i64* %3, align 8
  %917 = add i64 %916, 5
  store i64 %917, i64* %3, align 8
  %918 = inttoptr i64 %915 to float*
  %919 = load float, float* %918, align 4
  %920 = fpext float %919 to double
  store double %920, double* %142, align 1
  %921 = add i64 %916, add (i64 ptrtoint (%G_0x3b333__rip__type* @G_0x3b333__rip_ to i64), i64 5)
  %922 = add i64 %916, 12
  store i64 %922, i64* %3, align 8
  %923 = inttoptr i64 %921 to i32*
  %924 = load i32, i32* %923, align 4
  %925 = add i64 %916, add (i64 ptrtoint (%G_0x3b333__rip__type* @G_0x3b333__rip_ to i64), i64 9)
  %926 = inttoptr i64 %925 to i32*
  %927 = load i32, i32* %926, align 4
  %928 = add i64 %916, add (i64 ptrtoint (%G_0x3b333__rip__type* @G_0x3b333__rip_ to i64), i64 13)
  %929 = inttoptr i64 %928 to i32*
  %930 = load i32, i32* %929, align 4
  %931 = add i64 %916, add (i64 ptrtoint (%G_0x3b333__rip__type* @G_0x3b333__rip_ to i64), i64 17)
  %932 = inttoptr i64 %931 to i32*
  %933 = load i32, i32* %932, align 4
  store i32 %924, i32* %47, align 1
  store i32 %927, i32* %143, align 1
  store i32 %930, i32* %144, align 1
  store i32 %933, i32* %145, align 1
  %934 = bitcast double %920 to i64
  %935 = load i64, i64* %138, align 1
  %936 = load i64, i64* %147, align 1
  %937 = load i64, i64* %50, align 1
  %938 = and i64 %936, %934
  %939 = and i64 %937, %935
  %940 = trunc i64 %938 to i32
  %941 = lshr i64 %938, 32
  %942 = trunc i64 %941 to i32
  store i32 %940, i32* %135, align 1
  store i32 %942, i32* %148, align 1
  %943 = trunc i64 %939 to i32
  store i32 %943, i32* %149, align 1
  %944 = lshr i64 %939, 32
  %945 = trunc i64 %944 to i32
  store i32 %945, i32* %150, align 1
  %946 = add i64 %914, -100
  %947 = add i64 %916, 21
  store i64 %947, i64* %3, align 8
  %948 = inttoptr i64 %946 to float*
  %949 = load float, float* %948, align 4
  %950 = fpext float %949 to double
  store double %950, double* %151, align 1
  %951 = add i64 %916, 25
  store i64 %951, i64* %3, align 8
  %952 = load double, double* %142, align 1
  %953 = fcmp uno double %950, %952
  br i1 %953, label %954, label %964

; <label>:954:                                    ; preds = %block_41a589
  %955 = fadd double %950, %952
  %956 = bitcast double %955 to i64
  %957 = and i64 %956, 9221120237041090560
  %958 = icmp eq i64 %957, 9218868437227405312
  %959 = and i64 %956, 2251799813685247
  %960 = icmp ne i64 %959, 0
  %961 = and i1 %958, %960
  br i1 %961, label %962, label %970

; <label>:962:                                    ; preds = %954
  %963 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %951, %struct.Memory* %MEMORY.6)
  %.pre72 = load i64, i64* %3, align 8
  br label %routine_ucomisd__xmm0___xmm1.exit242

; <label>:964:                                    ; preds = %block_41a589
  %965 = fcmp ogt double %950, %952
  br i1 %965, label %970, label %966

; <label>:966:                                    ; preds = %964
  %967 = fcmp olt double %950, %952
  br i1 %967, label %970, label %968

; <label>:968:                                    ; preds = %966
  %969 = fcmp oeq double %950, %952
  br i1 %969, label %970, label %974

; <label>:970:                                    ; preds = %968, %966, %964, %954
  %971 = phi i8 [ 0, %964 ], [ 0, %966 ], [ 1, %968 ], [ 1, %954 ]
  %972 = phi i8 [ 0, %964 ], [ 0, %966 ], [ 0, %968 ], [ 1, %954 ]
  %973 = phi i8 [ 0, %964 ], [ 1, %966 ], [ 0, %968 ], [ 1, %954 ]
  store i8 %971, i8* %30, align 1
  store i8 %972, i8* %21, align 1
  store i8 %973, i8* %14, align 1
  br label %974

; <label>:974:                                    ; preds = %970, %968
  store i8 0, i8* %39, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %27, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit242

routine_ucomisd__xmm0___xmm1.exit242:             ; preds = %974, %962
  %975 = phi i64 [ %.pre72, %962 ], [ %951, %974 ]
  %976 = phi %struct.Memory* [ %963, %962 ], [ %MEMORY.6, %974 ]
  %977 = load i8, i8* %14, align 1
  %978 = load i8, i8* %30, align 1
  %979 = or i8 %978, %977
  %980 = icmp ne i8 %979, 0
  %.v129 = select i1 %980, i64 11, i64 6
  %981 = add i64 %975, %.v129
  store i64 %981, i64* %3, align 8
  br i1 %980, label %block_.L_41a5f5, label %block_41a5f0

block_41a5f0:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit242
  %982 = add i64 %981, 67
  store i64 %982, i64* %3, align 8
  %.pre73 = load i64, i64* %RBP.i, align 8
  br label %block_.L_41a633

block_.L_41a5f5:                                  ; preds = %routine_ucomisd__xmm0___xmm1.exit242
  store <4 x i32> zeroinitializer, <4 x i32>* %816, align 1
  %983 = load i64, i64* %RBP.i, align 8
  %984 = add i64 %983, -68
  %985 = add i64 %981, 8
  store i64 %985, i64* %3, align 8
  %986 = inttoptr i64 %984 to float*
  %987 = load float, float* %986, align 4
  %988 = fpext float %987 to double
  store double %988, double* %151, align 1
  %989 = add i64 %981, 12
  store i64 %989, i64* %3, align 8
  %990 = load double, double* %142, align 1
  %991 = fcmp uno double %988, %990
  br i1 %991, label %992, label %1002

; <label>:992:                                    ; preds = %block_.L_41a5f5
  %993 = fadd double %988, %990
  %994 = bitcast double %993 to i64
  %995 = and i64 %994, 9221120237041090560
  %996 = icmp eq i64 %995, 9218868437227405312
  %997 = and i64 %994, 2251799813685247
  %998 = icmp ne i64 %997, 0
  %999 = and i1 %996, %998
  br i1 %999, label %1000, label %1008

; <label>:1000:                                   ; preds = %992
  %1001 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %989, %struct.Memory* %976)
  %.pre74 = load i64, i64* %3, align 8
  %.pre75 = load i8, i8* %14, align 1
  %.pre76 = load i8, i8* %30, align 1
  %.pre77 = load i64, i64* %RBP.i, align 8
  br label %routine_ucomisd__xmm0___xmm1.exit

; <label>:1002:                                   ; preds = %block_.L_41a5f5
  %1003 = fcmp ogt double %988, %990
  br i1 %1003, label %1008, label %1004

; <label>:1004:                                   ; preds = %1002
  %1005 = fcmp olt double %988, %990
  br i1 %1005, label %1008, label %1006

; <label>:1006:                                   ; preds = %1004
  %1007 = fcmp oeq double %988, %990
  br i1 %1007, label %1008, label %1012

; <label>:1008:                                   ; preds = %1006, %1004, %1002, %992
  %1009 = phi i8 [ 0, %1002 ], [ 0, %1004 ], [ 1, %1006 ], [ 1, %992 ]
  %1010 = phi i8 [ 0, %1002 ], [ 0, %1004 ], [ 0, %1006 ], [ 1, %992 ]
  %1011 = phi i8 [ 0, %1002 ], [ 1, %1004 ], [ 0, %1006 ], [ 1, %992 ]
  store i8 %1009, i8* %30, align 1
  store i8 %1010, i8* %21, align 1
  store i8 %1011, i8* %14, align 1
  br label %1012

; <label>:1012:                                   ; preds = %1008, %1006
  %1013 = phi i8 [ %1009, %1008 ], [ %978, %1006 ]
  %1014 = phi i8 [ %1011, %1008 ], [ %977, %1006 ]
  store i8 0, i8* %39, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %27, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit

routine_ucomisd__xmm0___xmm1.exit:                ; preds = %1012, %1000
  %1015 = phi i64 [ %.pre77, %1000 ], [ %983, %1012 ]
  %1016 = phi i8 [ %.pre76, %1000 ], [ %1013, %1012 ]
  %1017 = phi i8 [ %.pre75, %1000 ], [ %1014, %1012 ]
  %1018 = phi i64 [ %.pre74, %1000 ], [ %989, %1012 ]
  %1019 = phi %struct.Memory* [ %1001, %1000 ], [ %976, %1012 ]
  %1020 = or i8 %1016, %1017
  %1021 = icmp ne i8 %1020, 0
  %.v = select i1 %1021, i64 21, i64 6
  %1022 = add i64 %1018, %.v
  %1023 = add i64 %1015, -116
  %1024 = add i64 %1022, 5
  store i64 %1024, i64* %3, align 8
  %1025 = inttoptr i64 %1023 to i32*
  %1026 = load i32, i32* %1025, align 4
  store i32 %1026, i32* %135, align 1
  store float 0.000000e+00, float* %137, align 1
  store float 0.000000e+00, float* %139, align 1
  store float 0.000000e+00, float* %141, align 1
  br i1 %1021, label %block_.L_41a616, label %block_41a607

block_41a607:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit
  %1027 = add i64 %1015, -108
  %1028 = add i64 %1022, 10
  store i64 %1028, i64* %3, align 8
  %1029 = load <2 x float>, <2 x float>* %97, align 1
  %1030 = extractelement <2 x float> %1029, i32 0
  %1031 = inttoptr i64 %1027 to float*
  store float %1030, float* %1031, align 4
  %1032 = load i64, i64* %3, align 8
  %1033 = add i64 %1032, 15
  store i64 %1033, i64* %3, align 8
  br label %block_.L_41a620

block_.L_41a616:                                  ; preds = %routine_ucomisd__xmm0___xmm1.exit
  %1034 = add i64 %1015, -112
  %1035 = add i64 %1022, 10
  store i64 %1035, i64* %3, align 8
  %1036 = load <2 x float>, <2 x float>* %97, align 1
  %1037 = extractelement <2 x float> %1036, i32 0
  %1038 = inttoptr i64 %1034 to float*
  store float %1037, float* %1038, align 4
  %.pre78 = load i64, i64* %3, align 8
  br label %block_.L_41a620

block_.L_41a620:                                  ; preds = %block_.L_41a616, %block_41a607
  %1039 = phi i64 [ %.pre78, %block_.L_41a616 ], [ %1033, %block_41a607 ]
  %1040 = load i64, i64* %RBP.i, align 8
  %1041 = add i64 %1040, -104
  %1042 = add i64 %1039, 8
  store i64 %1042, i64* %3, align 8
  %1043 = inttoptr i64 %1041 to i32*
  %1044 = load i32, i32* %1043, align 4
  %1045 = add i32 %1044, 1
  %1046 = zext i32 %1045 to i64
  store i64 %1046, i64* %RAX.i503, align 8
  %1047 = icmp eq i32 %1044, -1
  %1048 = icmp eq i32 %1045, 0
  %1049 = or i1 %1047, %1048
  %1050 = zext i1 %1049 to i8
  store i8 %1050, i8* %14, align 1
  %1051 = and i32 %1045, 255
  %1052 = tail call i32 @llvm.ctpop.i32(i32 %1051)
  %1053 = trunc i32 %1052 to i8
  %1054 = and i8 %1053, 1
  %1055 = xor i8 %1054, 1
  store i8 %1055, i8* %21, align 1
  %1056 = xor i32 %1045, %1044
  %1057 = lshr i32 %1056, 4
  %1058 = trunc i32 %1057 to i8
  %1059 = and i8 %1058, 1
  store i8 %1059, i8* %27, align 1
  %1060 = zext i1 %1048 to i8
  store i8 %1060, i8* %30, align 1
  %1061 = lshr i32 %1045, 31
  %1062 = trunc i32 %1061 to i8
  store i8 %1062, i8* %33, align 1
  %1063 = lshr i32 %1044, 31
  %1064 = xor i32 %1061, %1063
  %1065 = add nuw nsw i32 %1064, %1061
  %1066 = icmp eq i32 %1065, 2
  %1067 = zext i1 %1066 to i8
  store i8 %1067, i8* %39, align 1
  %1068 = add i64 %1039, 14
  store i64 %1068, i64* %3, align 8
  store i32 %1045, i32* %1043, align 4
  %1069 = load i64, i64* %3, align 8
  %1070 = add i64 %1069, -175
  store i64 %1070, i64* %3, align 8
  br label %block_.L_41a57f

block_.L_41a633.loopexit:                         ; preds = %block_.L_41a57f
  br label %block_.L_41a633

block_.L_41a633:                                  ; preds = %block_.L_41a633.loopexit, %block_41a5f0
  %1071 = phi i64 [ %982, %block_41a5f0 ], [ %846, %block_.L_41a633.loopexit ]
  %1072 = phi i64 [ %.pre73, %block_41a5f0 ], [ %818, %block_.L_41a633.loopexit ]
  %MEMORY.8 = phi %struct.Memory* [ %976, %block_41a5f0 ], [ %MEMORY.6, %block_.L_41a633.loopexit ]
  %1073 = add i64 %1072, -104
  %1074 = add i64 %1071, 4
  store i64 %1074, i64* %3, align 8
  %1075 = inttoptr i64 %1073 to i32*
  %1076 = load i32, i32* %1075, align 4
  %1077 = add i32 %1076, -100
  %1078 = icmp ult i32 %1076, 100
  %1079 = zext i1 %1078 to i8
  store i8 %1079, i8* %14, align 1
  %1080 = and i32 %1077, 255
  %1081 = tail call i32 @llvm.ctpop.i32(i32 %1080)
  %1082 = trunc i32 %1081 to i8
  %1083 = and i8 %1082, 1
  %1084 = xor i8 %1083, 1
  store i8 %1084, i8* %21, align 1
  %1085 = xor i32 %1077, %1076
  %1086 = lshr i32 %1085, 4
  %1087 = trunc i32 %1086 to i8
  %1088 = and i8 %1087, 1
  store i8 %1088, i8* %27, align 1
  %1089 = icmp eq i32 %1077, 0
  %1090 = zext i1 %1089 to i8
  store i8 %1090, i8* %30, align 1
  %1091 = lshr i32 %1077, 31
  %1092 = trunc i32 %1091 to i8
  store i8 %1092, i8* %33, align 1
  %1093 = lshr i32 %1076, 31
  %1094 = xor i32 %1091, %1093
  %1095 = add nuw nsw i32 %1094, %1093
  %1096 = icmp eq i32 %1095, 2
  %1097 = zext i1 %1096 to i8
  store i8 %1097, i8* %39, align 1
  %.v96 = select i1 %1089, i64 10, i64 22
  %1098 = add i64 %1071, %.v96
  store i64 %1098, i64* %3, align 8
  br i1 %1089, label %block_41a63d, label %block_.L_41a649

block_41a63d:                                     ; preds = %block_.L_41a633
  %1099 = add i64 %1072, -4
  %1100 = add i64 %1098, 7
  store i64 %1100, i64* %3, align 8
  %1101 = inttoptr i64 %1099 to i32*
  store i32 0, i32* %1101, align 4
  %1102 = load i64, i64* %3, align 8
  %1103 = add i64 %1102, 354
  store i64 %1103, i64* %3, align 8
  br label %block_.L_41a7a6

block_.L_41a649:                                  ; preds = %block_.L_41a633
  %1104 = add i64 %1072, -116
  %1105 = add i64 %1098, 5
  store i64 %1105, i64* %3, align 8
  %1106 = inttoptr i64 %1104 to i32*
  %1107 = load i32, i32* %1106, align 4
  store i32 %1107, i32* %135, align 1
  store float 0.000000e+00, float* %137, align 1
  store float 0.000000e+00, float* %139, align 1
  store float 0.000000e+00, float* %141, align 1
  %1108 = add i64 %1072, -60
  %1109 = add i64 %1098, 10
  store i64 %1109, i64* %3, align 8
  %1110 = load <2 x float>, <2 x float>* %97, align 1
  %1111 = extractelement <2 x float> %1110, i32 0
  %1112 = inttoptr i64 %1108 to float*
  store float %1111, float* %1112, align 4
  %.pre79 = load i64, i64* %3, align 8
  %.pre80 = load i64, i64* %RBP.i, align 8
  br label %block_.L_41a653

block_.L_41a653:                                  ; preds = %block_.L_41a424.block_.L_41a653_crit_edge, %block_.L_41a649
  %.pre-phi90 = phi double* [ %.pre89, %block_.L_41a424.block_.L_41a653_crit_edge ], [ %.pre-phi, %block_.L_41a649 ]
  %1113 = phi i64 [ %404, %block_.L_41a424.block_.L_41a653_crit_edge ], [ %.pre80, %block_.L_41a649 ]
  %1114 = phi i64 [ %430, %block_.L_41a424.block_.L_41a653_crit_edge ], [ %.pre79, %block_.L_41a649 ]
  %MEMORY.9 = phi %struct.Memory* [ %MEMORY.2, %block_.L_41a424.block_.L_41a653_crit_edge ], [ %MEMORY.8, %block_.L_41a649 ]
  %1115 = bitcast %union.VectorReg* %92 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %1115, align 1
  %1116 = add i64 %1113, -96
  %1117 = add i64 %1114, 8
  store i64 %1117, i64* %3, align 8
  %1118 = load i64, i64* %146, align 1
  %1119 = inttoptr i64 %1116 to i64*
  store i64 %1118, i64* %1119, align 8
  %1120 = load i64, i64* %RBP.i, align 8
  %1121 = add i64 %1120, -80
  %1122 = load i64, i64* %3, align 8
  %1123 = add i64 %1122, 5
  store i64 %1123, i64* %3, align 8
  %1124 = load i64, i64* %146, align 1
  %1125 = inttoptr i64 %1121 to i64*
  store i64 %1124, i64* %1125, align 8
  %1126 = load i64, i64* %RBP.i, align 8
  %1127 = add i64 %1126, -104
  %1128 = load i64, i64* %3, align 8
  %1129 = add i64 %1128, 7
  store i64 %1129, i64* %3, align 8
  %1130 = inttoptr i64 %1127 to i32*
  store i32 0, i32* %1130, align 4
  %1131 = bitcast i64* %50 to double*
  %1132 = bitcast %union.VectorReg* %54 to double*
  %1133 = bitcast %union.VectorReg* %40 to <2 x i32>*
  %.pre81 = load i64, i64* %3, align 8
  br label %block_.L_41a667

block_.L_41a667:                                  ; preds = %block_.L_41a6a2, %block_.L_41a653
  %1134 = phi i64 [ %.pre81, %block_.L_41a653 ], [ %1328, %block_.L_41a6a2 ]
  %MEMORY.10 = phi %struct.Memory* [ %MEMORY.9, %block_.L_41a653 ], [ %1267, %block_.L_41a6a2 ]
  %1135 = load i64, i64* %RBP.i, align 8
  %1136 = add i64 %1135, -104
  %1137 = add i64 %1134, 3
  store i64 %1137, i64* %3, align 8
  %1138 = inttoptr i64 %1136 to i32*
  %1139 = load i32, i32* %1138, align 4
  %1140 = zext i32 %1139 to i64
  store i64 %1140, i64* %RAX.i503, align 8
  %1141 = add i64 %1135, -28
  %1142 = add i64 %1134, 6
  store i64 %1142, i64* %3, align 8
  %1143 = inttoptr i64 %1141 to i32*
  %1144 = load i32, i32* %1143, align 4
  %1145 = sub i32 %1139, %1144
  %1146 = icmp ult i32 %1139, %1144
  %1147 = zext i1 %1146 to i8
  store i8 %1147, i8* %14, align 1
  %1148 = and i32 %1145, 255
  %1149 = tail call i32 @llvm.ctpop.i32(i32 %1148)
  %1150 = trunc i32 %1149 to i8
  %1151 = and i8 %1150, 1
  %1152 = xor i8 %1151, 1
  store i8 %1152, i8* %21, align 1
  %1153 = xor i32 %1144, %1139
  %1154 = xor i32 %1153, %1145
  %1155 = lshr i32 %1154, 4
  %1156 = trunc i32 %1155 to i8
  %1157 = and i8 %1156, 1
  store i8 %1157, i8* %27, align 1
  %1158 = icmp eq i32 %1145, 0
  %1159 = zext i1 %1158 to i8
  store i8 %1159, i8* %30, align 1
  %1160 = lshr i32 %1145, 31
  %1161 = trunc i32 %1160 to i8
  store i8 %1161, i8* %33, align 1
  %1162 = lshr i32 %1139, 31
  %1163 = lshr i32 %1144, 31
  %1164 = xor i32 %1163, %1162
  %1165 = xor i32 %1160, %1162
  %1166 = add nuw nsw i32 %1165, %1164
  %1167 = icmp eq i32 %1166, 2
  %1168 = zext i1 %1167 to i8
  store i8 %1168, i8* %39, align 1
  %1169 = icmp ne i8 %1161, 0
  %1170 = xor i1 %1169, %1167
  %.v93 = select i1 %1170, i64 12, i64 175
  %1171 = add i64 %1134, %.v93
  store i64 %1171, i64* %3, align 8
  br i1 %1170, label %block_41a673, label %block_.L_41a716

block_41a673:                                     ; preds = %block_.L_41a667
  %1172 = add i64 %1135, -24
  %1173 = add i64 %1171, 5
  store i64 %1173, i64* %3, align 8
  %1174 = inttoptr i64 %1172 to i64*
  %1175 = load i64, i64* %1174, align 8
  store i8 0, i8* %14, align 1
  %1176 = trunc i64 %1175 to i32
  %1177 = and i32 %1176, 255
  %1178 = tail call i32 @llvm.ctpop.i32(i32 %1177)
  %1179 = trunc i32 %1178 to i8
  %1180 = and i8 %1179, 1
  %1181 = xor i8 %1180, 1
  store i8 %1181, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1182 = icmp eq i64 %1175, 0
  %1183 = zext i1 %1182 to i8
  store i8 %1183, i8* %30, align 1
  %1184 = lshr i64 %1175, 63
  %1185 = trunc i64 %1184 to i8
  store i8 %1185, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v94 = select i1 %1182, i64 11, i64 29
  %1186 = add i64 %1171, %.v94
  store i64 %1186, i64* %3, align 8
  br i1 %1182, label %block_41a67e, label %block_.L_41a690

block_41a67e:                                     ; preds = %block_41a673
  %1187 = add i64 %1186, ptrtoint (%G_0x3a15a__rip__type* @G_0x3a15a__rip_ to i64)
  %1188 = add i64 %1186, 8
  store i64 %1188, i64* %3, align 8
  %1189 = inttoptr i64 %1187 to i64*
  %1190 = load i64, i64* %1189, align 8
  store i64 %1190, i64* %146, align 1
  store double 0.000000e+00, double* %.pre-phi90, align 1
  %1191 = add i64 %1135, -128
  %1192 = add i64 %1186, 13
  store i64 %1192, i64* %3, align 8
  %1193 = inttoptr i64 %1191 to i64*
  store i64 %1190, i64* %1193, align 8
  %1194 = load i64, i64* %3, align 8
  %1195 = add i64 %1194, 23
  store i64 %1195, i64* %3, align 8
  br label %block_.L_41a6a2

block_.L_41a690:                                  ; preds = %block_41a673
  %1196 = add i64 %1186, 4
  store i64 %1196, i64* %3, align 8
  %1197 = load i64, i64* %1174, align 8
  store i64 %1197, i64* %RAX.i503, align 8
  %1198 = add i64 %1186, 8
  store i64 %1198, i64* %3, align 8
  %1199 = load i32, i32* %1138, align 4
  %1200 = sext i32 %1199 to i64
  store i64 %1200, i64* %RCX.i568, align 8
  %1201 = shl nsw i64 %1200, 2
  %1202 = add i64 %1201, %1197
  %1203 = add i64 %1186, 13
  store i64 %1203, i64* %3, align 8
  %1204 = inttoptr i64 %1202 to i32*
  %1205 = load i32, i32* %1204, align 4
  %1206 = sitofp i32 %1205 to double
  store double %1206, double* %142, align 1
  %1207 = add i64 %1135, -128
  %1208 = add i64 %1186, 18
  store i64 %1208, i64* %3, align 8
  %1209 = inttoptr i64 %1207 to double*
  store double %1206, double* %1209, align 8
  %.pre83 = load i64, i64* %3, align 8
  br label %block_.L_41a6a2

block_.L_41a6a2:                                  ; preds = %block_.L_41a690, %block_41a67e
  %1210 = phi i64 [ %.pre83, %block_.L_41a690 ], [ %1195, %block_41a67e ]
  %1211 = load i64, i64* %RBP.i, align 8
  %1212 = add i64 %1211, -128
  %1213 = add i64 %1210, 5
  store i64 %1213, i64* %3, align 8
  %1214 = inttoptr i64 %1212 to i64*
  %1215 = load i64, i64* %1214, align 8
  store i64 %1215, i64* %146, align 1
  store double 0.000000e+00, double* %.pre-phi90, align 1
  %1216 = add i64 %1210, add (i64 ptrtoint (%G_0x3a181__rip__type* @G_0x3a181__rip_ to i64), i64 5)
  %1217 = add i64 %1210, 13
  store i64 %1217, i64* %3, align 8
  %1218 = inttoptr i64 %1216 to i64*
  %1219 = load i64, i64* %1218, align 8
  store i64 %1219, i64* %147, align 1
  store double 0.000000e+00, double* %1131, align 1
  %1220 = add i64 %1211, -88
  %1221 = add i64 %1210, 18
  store i64 %1221, i64* %3, align 8
  %1222 = inttoptr i64 %1220 to i64*
  store i64 %1215, i64* %1222, align 8
  %1223 = load i64, i64* %RBP.i, align 8
  %1224 = add i64 %1223, -88
  %1225 = load i64, i64* %3, align 8
  %1226 = add i64 %1225, 5
  store i64 %1226, i64* %3, align 8
  %1227 = inttoptr i64 %1224 to i64*
  %1228 = load i64, i64* %1227, align 8
  store i64 %1228, i64* %146, align 1
  store double 0.000000e+00, double* %.pre-phi90, align 1
  %1229 = add i64 %1223, -60
  %1230 = add i64 %1225, 10
  store i64 %1230, i64* %3, align 8
  %1231 = inttoptr i64 %1229 to float*
  %1232 = load float, float* %1231, align 4
  %1233 = fpext float %1232 to double
  store double %1233, double* %1132, align 1
  %1234 = load double, double* %151, align 1
  %1235 = fmul double %1233, %1234
  store double %1235, double* %151, align 1
  %1236 = add i64 %1223, -16
  %1237 = add i64 %1225, 18
  store i64 %1237, i64* %3, align 8
  %1238 = inttoptr i64 %1236 to i64*
  %1239 = load i64, i64* %1238, align 8
  store i64 %1239, i64* %RAX.i503, align 8
  %1240 = add i64 %1223, -104
  %1241 = add i64 %1225, 22
  store i64 %1241, i64* %3, align 8
  %1242 = inttoptr i64 %1240 to i32*
  %1243 = load i32, i32* %1242, align 4
  %1244 = sext i32 %1243 to i64
  store i64 %1244, i64* %RCX.i568, align 8
  %1245 = shl nsw i64 %1244, 2
  %1246 = add i64 %1245, %1239
  %1247 = add i64 %1225, 27
  store i64 %1247, i64* %3, align 8
  %1248 = inttoptr i64 %1246 to float*
  %1249 = load float, float* %1248, align 4
  %1250 = fpext float %1249 to double
  store double %1250, double* %1132, align 1
  %1251 = fmul double %1250, %1235
  store double %1251, double* %151, align 1
  %1252 = add i64 %1223, -136
  %1253 = add i64 %1225, 39
  store i64 %1253, i64* %3, align 8
  %1254 = inttoptr i64 %1252 to i64*
  store i64 %1228, i64* %1254, align 8
  %1255 = load i64, i64* %3, align 8
  %1256 = load <2 x i32>, <2 x i32>* %1133, align 1
  %1257 = load <2 x i32>, <2 x i32>* %156, align 1
  %1258 = extractelement <2 x i32> %1256, i32 0
  store i32 %1258, i32* %135, align 1
  %1259 = extractelement <2 x i32> %1256, i32 1
  store i32 %1259, i32* %148, align 1
  %1260 = extractelement <2 x i32> %1257, i32 0
  store i32 %1260, i32* %149, align 1
  %1261 = extractelement <2 x i32> %1257, i32 1
  store i32 %1261, i32* %150, align 1
  %1262 = add i64 %1255, -103099
  %1263 = add i64 %1255, 8
  %1264 = load i64, i64* %6, align 8
  %1265 = add i64 %1264, -8
  %1266 = inttoptr i64 %1265 to i64*
  store i64 %1263, i64* %1266, align 8
  store i64 %1265, i64* %6, align 8
  store i64 %1262, i64* %3, align 8
  %1267 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @exp to i64), %struct.Memory* %MEMORY.10)
  %1268 = load i64, i64* %RBP.i, align 8
  %1269 = add i64 %1268, -136
  %1270 = load i64, i64* %3, align 8
  %1271 = add i64 %1270, 8
  store i64 %1271, i64* %3, align 8
  %1272 = inttoptr i64 %1269 to double*
  %1273 = load double, double* %1272, align 8
  %1274 = load double, double* %142, align 1
  %1275 = fmul double %1273, %1274
  store double %1275, double* %151, align 1
  store i64 0, i64* %50, align 1
  %1276 = add i64 %1268, -80
  %1277 = add i64 %1270, 17
  store i64 %1277, i64* %3, align 8
  %1278 = inttoptr i64 %1276 to double*
  %1279 = load double, double* %1278, align 8
  %1280 = fadd double %1275, %1279
  store double %1280, double* %151, align 1
  store i64 0, i64* %50, align 1
  %1281 = add i64 %1270, 22
  store i64 %1281, i64* %3, align 8
  %1282 = inttoptr i64 %1276 to double*
  store double %1280, double* %1282, align 8
  %1283 = load i64, i64* %RBP.i, align 8
  %1284 = add i64 %1283, -88
  %1285 = load i64, i64* %3, align 8
  %1286 = add i64 %1285, 5
  store i64 %1286, i64* %3, align 8
  %1287 = inttoptr i64 %1284 to i64*
  %1288 = load i64, i64* %1287, align 8
  store i64 %1288, i64* %146, align 1
  store double 0.000000e+00, double* %.pre-phi90, align 1
  %1289 = add i64 %1283, -96
  %1290 = add i64 %1285, 10
  store i64 %1290, i64* %3, align 8
  %1291 = bitcast i64 %1288 to double
  %1292 = inttoptr i64 %1289 to double*
  %1293 = load double, double* %1292, align 8
  %1294 = fadd double %1291, %1293
  store double %1294, double* %142, align 1
  store i64 0, i64* %138, align 1
  %1295 = add i64 %1285, 15
  store i64 %1295, i64* %3, align 8
  %1296 = inttoptr i64 %1289 to double*
  store double %1294, double* %1296, align 8
  %1297 = load i64, i64* %RBP.i, align 8
  %1298 = add i64 %1297, -104
  %1299 = load i64, i64* %3, align 8
  %1300 = add i64 %1299, 3
  store i64 %1300, i64* %3, align 8
  %1301 = inttoptr i64 %1298 to i32*
  %1302 = load i32, i32* %1301, align 4
  %1303 = add i32 %1302, 1
  %1304 = zext i32 %1303 to i64
  store i64 %1304, i64* %RAX.i503, align 8
  %1305 = icmp eq i32 %1302, -1
  %1306 = icmp eq i32 %1303, 0
  %1307 = or i1 %1305, %1306
  %1308 = zext i1 %1307 to i8
  store i8 %1308, i8* %14, align 1
  %1309 = and i32 %1303, 255
  %1310 = tail call i32 @llvm.ctpop.i32(i32 %1309)
  %1311 = trunc i32 %1310 to i8
  %1312 = and i8 %1311, 1
  %1313 = xor i8 %1312, 1
  store i8 %1313, i8* %21, align 1
  %1314 = xor i32 %1303, %1302
  %1315 = lshr i32 %1314, 4
  %1316 = trunc i32 %1315 to i8
  %1317 = and i8 %1316, 1
  store i8 %1317, i8* %27, align 1
  %1318 = zext i1 %1306 to i8
  store i8 %1318, i8* %30, align 1
  %1319 = lshr i32 %1303, 31
  %1320 = trunc i32 %1319 to i8
  store i8 %1320, i8* %33, align 1
  %1321 = lshr i32 %1302, 31
  %1322 = xor i32 %1319, %1321
  %1323 = add nuw nsw i32 %1322, %1319
  %1324 = icmp eq i32 %1323, 2
  %1325 = zext i1 %1324 to i8
  store i8 %1325, i8* %39, align 1
  %1326 = add i64 %1299, 9
  store i64 %1326, i64* %3, align 8
  store i32 %1303, i32* %1301, align 4
  %1327 = load i64, i64* %3, align 8
  %1328 = add i64 %1327, -170
  store i64 %1328, i64* %3, align 8
  br label %block_.L_41a667

block_.L_41a716:                                  ; preds = %block_.L_41a667
  %1329 = add i64 %1171, ptrtoint (%G_0x3a112__rip__type* @G_0x3a112__rip_ to i64)
  %1330 = add i64 %1171, 8
  store i64 %1330, i64* %3, align 8
  %1331 = inttoptr i64 %1329 to i64*
  %1332 = load i64, i64* %1331, align 8
  store i64 %1332, i64* %146, align 1
  store double 0.000000e+00, double* %.pre-phi90, align 1
  %1333 = add i64 %1135, -32
  %1334 = add i64 %1171, 13
  store i64 %1334, i64* %3, align 8
  %1335 = inttoptr i64 %1333 to i32*
  %1336 = load i32, i32* %1335, align 4
  %1337 = sitofp i32 %1336 to double
  store double %1337, double* %151, align 1
  %1338 = add i64 %1135, -60
  %1339 = add i64 %1171, 18
  store i64 %1339, i64* %3, align 8
  %1340 = inttoptr i64 %1338 to float*
  %1341 = load float, float* %1340, align 4
  %1342 = fpext float %1341 to double
  store double %1342, double* %1132, align 1
  %1343 = bitcast i64 %1332 to double
  %1344 = fmul double %1342, %1343
  store double %1344, double* %142, align 1
  store i64 0, i64* %138, align 1
  %1345 = add i64 %1135, -36
  %1346 = add i64 %1171, 27
  store i64 %1346, i64* %3, align 8
  %1347 = inttoptr i64 %1345 to float*
  %1348 = load float, float* %1347, align 4
  %1349 = fpext float %1348 to double
  store double %1349, double* %1132, align 1
  %1350 = fmul double %1349, %1344
  store double %1350, double* %142, align 1
  store i64 0, i64* %138, align 1
  %1351 = add i64 %1135, -144
  %1352 = add i64 %1171, 39
  store i64 %1352, i64* %3, align 8
  %1353 = inttoptr i64 %1351 to double*
  store double %1337, double* %1353, align 8
  %1354 = load i64, i64* %3, align 8
  %1355 = add i64 %1354, -103197
  %1356 = add i64 %1354, 5
  %1357 = load i64, i64* %6, align 8
  %1358 = add i64 %1357, -8
  %1359 = inttoptr i64 %1358 to i64*
  store i64 %1356, i64* %1359, align 8
  store i64 %1358, i64* %6, align 8
  store i64 %1355, i64* %3, align 8
  %1360 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @exp to i64), %struct.Memory* %MEMORY.10)
  %1361 = load i64, i64* %RBP.i, align 8
  %1362 = add i64 %1361, -144
  %1363 = load i64, i64* %3, align 8
  %1364 = add i64 %1363, 8
  store i64 %1364, i64* %3, align 8
  %1365 = inttoptr i64 %1362 to double*
  %1366 = load double, double* %1365, align 8
  %1367 = load double, double* %142, align 1
  %1368 = fmul double %1366, %1367
  store double %1368, double* %151, align 1
  store i64 0, i64* %50, align 1
  %1369 = add i64 %1361, -80
  %1370 = add i64 %1363, 17
  store i64 %1370, i64* %3, align 8
  %1371 = inttoptr i64 %1369 to double*
  %1372 = load double, double* %1371, align 8
  %1373 = fadd double %1368, %1372
  store double %1373, double* %151, align 1
  store i64 0, i64* %50, align 1
  %1374 = add i64 %1363, 22
  store i64 %1374, i64* %3, align 8
  %1375 = inttoptr i64 %1369 to double*
  store double %1373, double* %1375, align 8
  %1376 = load i64, i64* %RBP.i, align 8
  %1377 = add i64 %1376, -80
  %1378 = load i64, i64* %3, align 8
  %1379 = add i64 %1378, 5
  store i64 %1379, i64* %3, align 8
  %1380 = inttoptr i64 %1377 to i64*
  %1381 = load i64, i64* %1380, align 8
  store i64 %1381, i64* %146, align 1
  store double 0.000000e+00, double* %.pre-phi90, align 1
  %1382 = add i64 %1376, -96
  %1383 = add i64 %1378, 10
  store i64 %1383, i64* %3, align 8
  %1384 = bitcast i64 %1381 to double
  %1385 = inttoptr i64 %1382 to double*
  %1386 = load double, double* %1385, align 8
  %1387 = fdiv double %1384, %1386
  store double %1387, double* %142, align 1
  store i64 0, i64* %138, align 1
  %1388 = add i64 %1378, -103016
  %1389 = add i64 %1378, 15
  %1390 = load i64, i64* %6, align 8
  %1391 = add i64 %1390, -8
  %1392 = inttoptr i64 %1391 to i64*
  store i64 %1389, i64* %1392, align 8
  store i64 %1391, i64* %6, align 8
  store i64 %1388, i64* %3, align 8
  %1393 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @log to i64), %struct.Memory* %1360)
  %1394 = load i64, i64* %3, align 8
  %1395 = add i64 %1394, ptrtoint (%G_0x3a0c1__rip__type* @G_0x3a0c1__rip_ to i64)
  %1396 = add i64 %1394, 8
  store i64 %1396, i64* %3, align 8
  %1397 = inttoptr i64 %1395 to double*
  %1398 = load double, double* %1397, align 8
  %1399 = load double, double* %142, align 1
  %1400 = fmul double %1398, %1399
  store double %1400, double* %151, align 1
  store i64 0, i64* %50, align 1
  %1401 = load i64, i64* %RBP.i, align 8
  %1402 = add i64 %1401, -60
  %1403 = add i64 %1394, 17
  store i64 %1403, i64* %3, align 8
  %1404 = inttoptr i64 %1402 to float*
  %1405 = load float, float* %1404, align 4
  %1406 = fpext float %1405 to double
  %1407 = fdiv double %1400, %1406
  store double %1407, double* %151, align 1
  store i64 0, i64* %50, align 1
  %1408 = bitcast double %1406 to <2 x i32>
  %1409 = bitcast i64* %138 to <2 x i32>*
  %1410 = load <2 x i32>, <2 x i32>* %1409, align 1
  %1411 = fptrunc double %1407 to float
  %1412 = bitcast %union.VectorReg* %92 to float*
  store float %1411, float* %1412, align 1
  %1413 = extractelement <2 x i32> %1408, i32 1
  store i32 %1413, i32* %148, align 1
  %1414 = extractelement <2 x i32> %1410, i32 0
  store i32 %1414, i32* %149, align 1
  %1415 = extractelement <2 x i32> %1410, i32 1
  store i32 %1415, i32* %150, align 1
  %1416 = add i64 %1401, -64
  %1417 = add i64 %1394, 30
  store i64 %1417, i64* %3, align 8
  %1418 = load <2 x float>, <2 x float>* %97, align 1
  %1419 = extractelement <2 x float> %1418, i32 0
  %1420 = inttoptr i64 %1416 to float*
  store float %1419, float* %1420, align 4
  %1421 = load i64, i64* %RBP.i, align 8
  %1422 = add i64 %1421, -60
  %1423 = load i64, i64* %3, align 8
  %1424 = add i64 %1423, 5
  store i64 %1424, i64* %3, align 8
  %1425 = inttoptr i64 %1422 to i32*
  %1426 = load i32, i32* %1425, align 4
  store i32 %1426, i32* %135, align 1
  store float 0.000000e+00, float* %137, align 1
  store float 0.000000e+00, float* %139, align 1
  store float 0.000000e+00, float* %141, align 1
  %1427 = add i64 %1421, -56
  %1428 = add i64 %1423, 9
  store i64 %1428, i64* %3, align 8
  %1429 = inttoptr i64 %1427 to i64*
  %1430 = load i64, i64* %1429, align 8
  store i64 %1430, i64* %RAX.i503, align 8
  %1431 = add i64 %1423, 13
  store i64 %1431, i64* %3, align 8
  %1432 = load <2 x float>, <2 x float>* %97, align 1
  %1433 = extractelement <2 x float> %1432, i32 0
  %1434 = inttoptr i64 %1430 to float*
  store float %1433, float* %1434, align 4
  %1435 = load i64, i64* %RBP.i, align 8
  %1436 = add i64 %1435, -64
  %1437 = load i64, i64* %3, align 8
  %1438 = add i64 %1437, 5
  store i64 %1438, i64* %3, align 8
  %1439 = inttoptr i64 %1436 to i32*
  %1440 = load i32, i32* %1439, align 4
  store i32 %1440, i32* %135, align 1
  store float 0.000000e+00, float* %137, align 1
  store float 0.000000e+00, float* %139, align 1
  store float 0.000000e+00, float* %141, align 1
  %1441 = add i64 %1435, -48
  %1442 = add i64 %1437, 9
  store i64 %1442, i64* %3, align 8
  %1443 = inttoptr i64 %1441 to i64*
  %1444 = load i64, i64* %1443, align 8
  store i64 %1444, i64* %RAX.i503, align 8
  %1445 = add i64 %1437, 13
  store i64 %1445, i64* %3, align 8
  %1446 = load <2 x float>, <2 x float>* %97, align 1
  %1447 = extractelement <2 x float> %1446, i32 0
  %1448 = inttoptr i64 %1444 to float*
  store float %1447, float* %1448, align 4
  %1449 = load i64, i64* %RBP.i, align 8
  %1450 = add i64 %1449, -4
  %1451 = load i64, i64* %3, align 8
  %1452 = add i64 %1451, 7
  store i64 %1452, i64* %3, align 8
  %1453 = inttoptr i64 %1450 to i32*
  store i32 1, i32* %1453, align 4
  %.pre82 = load i64, i64* %3, align 8
  br label %block_.L_41a7a6

block_.L_41a7a6:                                  ; preds = %block_.L_41a716, %block_41a63d, %block_41a550, %block_41a4ad
  %1454 = phi i64 [ %.pre82, %block_.L_41a716 ], [ %1103, %block_41a63d ], [ %771, %block_41a550 ], [ %596, %block_41a4ad ]
  %MEMORY.12 = phi %struct.Memory* [ %1393, %block_.L_41a716 ], [ %MEMORY.8, %block_41a63d ], [ %760, %block_41a550 ], [ %586, %block_41a4ad ]
  %RAX.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %1455 = load i64, i64* %RBP.i, align 8
  %1456 = add i64 %1455, -4
  %1457 = add i64 %1454, 3
  store i64 %1457, i64* %3, align 8
  %1458 = inttoptr i64 %1456 to i32*
  %1459 = load i32, i32* %1458, align 4
  %1460 = zext i32 %1459 to i64
  store i64 %1460, i64* %RAX.i, align 8
  %1461 = load i64, i64* %6, align 8
  %1462 = add i64 %1461, 144
  store i64 %1462, i64* %6, align 8
  %1463 = icmp ugt i64 %1461, -145
  %1464 = zext i1 %1463 to i8
  store i8 %1464, i8* %14, align 1
  %1465 = trunc i64 %1462 to i32
  %1466 = and i32 %1465, 255
  %1467 = tail call i32 @llvm.ctpop.i32(i32 %1466)
  %1468 = trunc i32 %1467 to i8
  %1469 = and i8 %1468, 1
  %1470 = xor i8 %1469, 1
  store i8 %1470, i8* %21, align 1
  %1471 = xor i64 %1461, 16
  %1472 = xor i64 %1471, %1462
  %1473 = lshr i64 %1472, 4
  %1474 = trunc i64 %1473 to i8
  %1475 = and i8 %1474, 1
  store i8 %1475, i8* %27, align 1
  %1476 = icmp eq i64 %1462, 0
  %1477 = zext i1 %1476 to i8
  store i8 %1477, i8* %30, align 1
  %1478 = lshr i64 %1462, 63
  %1479 = trunc i64 %1478 to i8
  store i8 %1479, i8* %33, align 1
  %1480 = lshr i64 %1461, 63
  %1481 = xor i64 %1478, %1480
  %1482 = add nuw nsw i64 %1481, %1478
  %1483 = icmp eq i64 %1482, 2
  %1484 = zext i1 %1483 to i8
  store i8 %1484, i8* %39, align 1
  %1485 = add i64 %1454, 11
  store i64 %1485, i64* %3, align 8
  %1486 = add i64 %1461, 152
  %1487 = inttoptr i64 %1462 to i64*
  %1488 = load i64, i64* %1487, align 8
  store i64 %1488, i64* %RBP.i, align 8
  store i64 %1486, i64* %6, align 8
  %1489 = add i64 %1454, 12
  store i64 %1489, i64* %3, align 8
  %1490 = inttoptr i64 %1486 to i64*
  %1491 = load i64, i64* %1490, align 8
  store i64 %1491, i64* %3, align 8
  %1492 = add i64 %1461, 160
  store i64 %1492, i64* %6, align 8
  ret %struct.Memory* %MEMORY.12
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
define %struct.Memory* @routine_subq__0x90___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0x3a3f9__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x3a3f9__rip__type* @G_0x3a3f9__rip_ to i64)
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
define %struct.Memory* @routine_movss_0x3a3f5__rip____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x3a3f5__rip__type* @G_0x3a3f5__rip_ to i64)
  %7 = add i64 %5, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %6 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = bitcast %union.VectorReg* %3 to i32*
  store i32 %9, i32* %10, align 1
  %11 = getelementptr inbounds i8, i8* %4, i64 4
  %12 = bitcast i8* %11 to float*
  store float 0.000000e+00, float* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %14 = bitcast i64* %13 to float*
  store float 0.000000e+00, float* %14, align 1
  %15 = getelementptr inbounds i8, i8* %4, i64 12
  %16 = bitcast i8* %15 to float*
  store float 0.000000e+00, float* %16, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdi__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rsi__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %RSI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -28
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -32
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r8__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %R8, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r9__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %R9, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm2__MINUS0x64__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -100
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
define %struct.Memory* @routine_movss__xmm1__MINUS0x3c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -60
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
define %struct.Memory* @routine_movl__0x0__MINUS0x68__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x64__MINUS0x68__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -100
  %10 = icmp ult i32 %8, 100
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
  %19 = xor i32 %9, %8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_41a424(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = xor i1 %6, %9
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i8
  store i8 %12, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %.v, %3
  store i64 %13, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x44__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -68
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x48__rbp____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x18__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x1c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x20__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_MINUS0x24__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_MINUS0x3c__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -60
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
define %struct.Memory* @routine_callq_.Lawless422(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cvtss2sd_MINUS0x44__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -68
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
define %struct.Memory* @routine_movaps_0x3b54e__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x3b54e__rip__type* @G_0x3b54e__rip_ to i64)
  %7 = add i64 %5, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %6 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = add i64 %5, add (i64 ptrtoint (%G_0x3b54e__rip__type* @G_0x3b54e__rip_ to i64), i64 4)
  %11 = inttoptr i64 %10 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = add i64 %5, add (i64 ptrtoint (%G_0x3b54e__rip__type* @G_0x3b54e__rip_ to i64), i64 8)
  %14 = inttoptr i64 %13 to i32*
  %15 = load i32, i32* %14, align 4
  %16 = add i64 %5, add (i64 ptrtoint (%G_0x3b54e__rip__type* @G_0x3b54e__rip_ to i64), i64 12)
  %17 = inttoptr i64 %16 to i32*
  %18 = load i32, i32* %17, align 4
  %19 = bitcast %union.VectorReg* %3 to i32*
  store i32 %9, i32* %19, align 1
  %20 = getelementptr inbounds i8, i8* %4, i64 4
  %21 = bitcast i8* %20 to i32*
  store i32 %12, i32* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %23 = bitcast i64* %22 to i32*
  store i32 %15, i32* %23, align 1
  %24 = getelementptr inbounds i8, i8* %4, i64 12
  %25 = bitcast i8* %24 to i32*
  store i32 %18, i32* %25, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_pand__xmm1___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = bitcast [32 x %union.VectorReg]* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = load i64, i64* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %12 = load i64, i64* %11, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %14 = load i64, i64* %13, align 1
  %15 = and i64 %12, %8
  %16 = and i64 %14, %10
  %17 = trunc i64 %15 to i32
  %18 = lshr i64 %15, 32
  %19 = trunc i64 %18 to i32
  %20 = bitcast [32 x %union.VectorReg]* %3 to i32*
  store i32 %17, i32* %20, align 1
  %21 = getelementptr inbounds i8, i8* %4, i64 4
  %22 = bitcast i8* %21 to i32*
  store i32 %19, i32* %22, align 1
  %23 = trunc i64 %16 to i32
  %24 = bitcast i64* %9 to i32*
  store i32 %23, i32* %24, align 1
  %25 = lshr i64 %16, 32
  %26 = trunc i64 %25 to i32
  %27 = getelementptr inbounds i8, i8* %4, i64 12
  %28 = bitcast i8* %27 to i32*
  store i32 %26, i32* %28, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd_MINUS0x64__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -100
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
define %struct.Memory* @routine_jbe_.L_41a3da(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_41a424(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss_MINUS0x44__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -68
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
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_divss_MINUS0x48__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -72
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
define %struct.Memory* @routine_subss__xmm2___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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
  %17 = fsub float %15, %16
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd_MINUS0x3c__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -60
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
define %struct.Memory* @routine_jb_.L_41a411(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss_0x3a348__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x3a348__rip__type* @G_0x3a348__rip_ to i64)
  %7 = add i64 %5, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %6 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = bitcast %union.VectorReg* %3 to i32*
  store i32 %9, i32* %10, align 1
  %11 = getelementptr inbounds i8, i8* %4, i64 4
  %12 = bitcast i8* %11 to float*
  store float 0.000000e+00, float* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %14 = bitcast i64* %13 to float*
  store float 0.000000e+00, float* %14, align 1
  %15 = getelementptr inbounds i8, i8* %4, i64 12
  %16 = bitcast i8* %15 to float*
  store float 0.000000e+00, float* %16, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__MINUS0x3c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -60
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
define %struct.Memory* @routine_jmpq_.L_41a416(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x68__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
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
define %struct.Memory* @routine_movl__eax__MINUS0x68__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -104
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41a387(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_41a653(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss_0x3a30e__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x3a30e__rip__type* @G_0x3a30e__rip_ to i64)
  %7 = add i64 %5, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %6 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = bitcast %union.VectorReg* %3 to i32*
  store i32 %9, i32* %10, align 1
  %11 = getelementptr inbounds i8, i8* %4, i64 4
  %12 = bitcast i8* %11 to float*
  store float 0.000000e+00, float* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %14 = bitcast i64* %13 to float*
  store float 0.000000e+00, float* %14, align 1
  %15 = getelementptr inbounds i8, i8* %4, i64 12
  %16 = bitcast i8* %15 to float*
  store float 0.000000e+00, float* %16, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__MINUS0x6c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -108
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
define %struct.Memory* @routine_movss__xmm0__MINUS0x70__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -112
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
define %struct.Memory* @routine_cvtss2sd_MINUS0x44__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -68
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
define %struct.Memory* @routine_jbe_.L_41a4f5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_41a481(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x3a3ec__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x3a3ec__rip__type* @G_0x3a3ec__rip_ to i64)
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
define %struct.Memory* @routine_cvtss2sd_MINUS0x6c__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -108
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
define %struct.Memory* @routine_subsd__xmm1___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
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
define %struct.Memory* @routine_cvtsd2ss__xmm2___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %5 = bitcast %union.VectorReg* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x i32>*
  %12 = load <2 x i32>, <2 x i32>* %11, align 1
  %13 = bitcast %union.VectorReg* %4 to double*
  %14 = load double, double* %13, align 1
  %15 = fptrunc double %14 to float
  %16 = bitcast %union.VectorReg* %3 to float*
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
define %struct.Memory* @routine_movss__xmm1__MINUS0x6c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -108
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
define %struct.Memory* @routine_cvtss2sd_MINUS0x6c__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -108
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
define %struct.Memory* @routine_jbe_.L_41a4b9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_41a7a6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_MINUS0x6c__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -108
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
define %struct.Memory* @routine_ja_.L_41a481(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_41a578(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41a4fa(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x3a366__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x3a366__rip__type* @G_0x3a366__rip_ to i64)
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
define %struct.Memory* @routine_cvtss2sd_MINUS0x70__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -112
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
define %struct.Memory* @routine_addsd__xmm0___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %11 = fadd double %8, %10
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
define %struct.Memory* @routine_movsd_0x3a327__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x3a327__rip__type* @G_0x3a327__rip_ to i64)
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
define %struct.Memory* @routine_jbe_.L_41a55c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_41a561(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_ja_.L_41a4fa(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_41a633(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = xor i1 %6, %9
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i8
  store i8 %12, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %.v, %3
  store i64 %13, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x3a24f__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x3a24f__rip__type* @G_0x3a24f__rip_ to i64)
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
define %struct.Memory* @routine_addss_MINUS0x70__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -112
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
define %struct.Memory* @routine_movss__xmm0__MINUS0x74__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -116
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
define %struct.Memory* @routine_movaps_0x3b333__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x3b333__rip__type* @G_0x3b333__rip_ to i64)
  %7 = add i64 %5, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %6 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = add i64 %5, add (i64 ptrtoint (%G_0x3b333__rip__type* @G_0x3b333__rip_ to i64), i64 4)
  %11 = inttoptr i64 %10 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = add i64 %5, add (i64 ptrtoint (%G_0x3b333__rip__type* @G_0x3b333__rip_ to i64), i64 8)
  %14 = inttoptr i64 %13 to i32*
  %15 = load i32, i32* %14, align 4
  %16 = add i64 %5, add (i64 ptrtoint (%G_0x3b333__rip__type* @G_0x3b333__rip_ to i64), i64 12)
  %17 = inttoptr i64 %16 to i32*
  %18 = load i32, i32* %17, align 4
  %19 = bitcast %union.VectorReg* %3 to i32*
  store i32 %9, i32* %19, align 1
  %20 = getelementptr inbounds i8, i8* %4, i64 4
  %21 = bitcast i8* %20 to i32*
  store i32 %12, i32* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %23 = bitcast i64* %22 to i32*
  store i32 %15, i32* %23, align 1
  %24 = getelementptr inbounds i8, i8* %4, i64 12
  %25 = bitcast i8* %24 to i32*
  store i32 %18, i32* %25, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jbe_.L_41a5f5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_41a633(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jbe_.L_41a616(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss_MINUS0x74__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -116
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
define %struct.Memory* @routine_jmpq_.L_41a620(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41a625(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41a57f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_41a649(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd__xmm0__MINUS0x50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x1c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -28
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_41a716(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = xor i1 %6, %9
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i8
  store i8 %12, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %.v, %3
  store i64 %13, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__0x0__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = trunc i64 %8 to i32
  %11 = and i32 %10, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %17, align 1
  %18 = icmp eq i64 %8, 0
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %19, i8* %20, align 1
  %21 = lshr i64 %8, 63
  %22 = trunc i64 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %24, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_41a690(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_0x3a15a__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x3a15a__rip__type* @G_0x3a15a__rip_ to i64)
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
define %struct.Memory* @routine_movsd__xmm0__MINUS0x80__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41a6a2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x68__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2sdl___rax__rcx_4____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 5
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = sitofp i32 %11 to double
  %13 = bitcast %union.VectorReg* %3 to double*
  store double %12, double* %13, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x80__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -128
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
define %struct.Memory* @routine_movsd_0x3a181__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x3a181__rip__type* @G_0x3a181__rip_ to i64)
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
define %struct.Memory* @routine_movsd__xmm0__MINUS0x58__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
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
define %struct.Memory* @routine_cvtss2sd_MINUS0x3c__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -60
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
define %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd___rax__rcx_4____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 5
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to float*
  %11 = load float, float* %10, align 4
  %12 = fpext float %11 to double
  %13 = bitcast %union.VectorReg* %3 to double*
  store double %12, double* %13, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x88__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -136
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
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
define %struct.Memory* @routine_movsd_MINUS0x88__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -136
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
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
define %struct.Memory* @routine_addsd_MINUS0x50__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -80
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
define %struct.Memory* @routine_movsd__xmm1__MINUS0x50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
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
define %struct.Memory* @routine_addsd_MINUS0x60__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -96
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
define %struct.Memory* @routine_jmpq_.L_41a667(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x3a112__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x3a112__rip__type* @G_0x3a112__rip_ to i64)
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
define %struct.Memory* @routine_cvtsi2sdl_MINUS0x20__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
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
define %struct.Memory* @routine_mulsd__xmm2___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %11 = fmul double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd_MINUS0x24__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -36
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
define %struct.Memory* @routine_movsd__xmm1__MINUS0x90__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -144
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x90__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -144
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
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
define %struct.Memory* @routine_movsd_MINUS0x50__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_divsd_MINUS0x60__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -96
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fdiv double %9, %11
  store double %12, double* %8, align 1
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
define %struct.Memory* @routine_movsd_0x3a0c1__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x3a0c1__rip__type* @G_0x3a0c1__rip_ to i64)
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
define %struct.Memory* @routine_cvtss2sd_MINUS0x3c__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -60
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
define %struct.Memory* @routine_movss__xmm0__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -64
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
define %struct.Memory* @routine_movss_MINUS0x3c__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -60
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
define %struct.Memory* @routine_movq_MINUS0x38__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast i64* %RAX to float**
  %5 = load float*, float** %4, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  store float %10, float* %5, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_MINUS0x40__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -64
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
define %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addq__0x90___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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
