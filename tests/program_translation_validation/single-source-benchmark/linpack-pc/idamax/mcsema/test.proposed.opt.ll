; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x1ec__rip__type = type <{ [16 x i8] }>
%G_0x221__rip__type = type <{ [16 x i8] }>
%G_0x259__rip__type = type <{ [16 x i8] }>
%G_0x29c__rip__type = type <{ [16 x i8] }>
%G_0x2d1__rip__type = type <{ [16 x i8] }>
%G_0x312__rip__type = type <{ [16 x i8] }>
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
@G_0x1ec__rip_ = global %G_0x1ec__rip__type zeroinitializer
@G_0x221__rip_ = global %G_0x221__rip__type zeroinitializer
@G_0x259__rip_ = global %G_0x259__rip__type zeroinitializer
@G_0x29c__rip_ = global %G_0x29c__rip__type zeroinitializer
@G_0x2d1__rip_ = global %G_0x2d1__rip__type zeroinitializer
@G_0x312__rip_ = global %G_0x312__rip__type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: alwaysinline
define %struct.Memory* @idamax(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i = bitcast %union.anon* %11 to i32*
  %12 = add i64 %7, -16
  %13 = load i32, i32* %EDI.i, align 4
  %14 = add i64 %10, 6
  store i64 %14, i64* %PC.i, align 8
  %15 = inttoptr i64 %12 to i32*
  store i32 %13, i32* %15, align 4
  %RSI.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %16 = load i64, i64* %RBP.i, align 8
  %17 = add i64 %16, -16
  %18 = load i64, i64* %RSI.i, align 8
  %19 = load i64, i64* %PC.i, align 8
  %20 = add i64 %19, 4
  store i64 %20, i64* %PC.i, align 8
  %21 = inttoptr i64 %17 to i64*
  store i64 %18, i64* %21, align 8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX.i = bitcast %union.anon* %22 to i32*
  %23 = load i64, i64* %RBP.i, align 8
  %24 = add i64 %23, -20
  %25 = load i32, i32* %EDX.i, align 4
  %26 = load i64, i64* %PC.i, align 8
  %27 = add i64 %26, 3
  store i64 %27, i64* %PC.i, align 8
  %28 = inttoptr i64 %24 to i32*
  store i32 %25, i32* %28, align 4
  %29 = load i64, i64* %RBP.i, align 8
  %30 = add i64 %29, -8
  %31 = load i64, i64* %PC.i, align 8
  %32 = add i64 %31, 4
  store i64 %32, i64* %PC.i, align 8
  %33 = inttoptr i64 %30 to i32*
  %34 = load i32, i32* %33, align 4
  %35 = add i32 %34, -1
  %36 = icmp eq i32 %34, 0
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %37, i8* %38, align 1
  %39 = and i32 %35, 255
  %40 = tail call i32 @llvm.ctpop.i32(i32 %39)
  %41 = trunc i32 %40 to i8
  %42 = and i8 %41, 1
  %43 = xor i8 %42, 1
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %43, i8* %44, align 1
  %45 = xor i32 %34, %35
  %46 = lshr i32 %45, 4
  %47 = trunc i32 %46 to i8
  %48 = and i8 %47, 1
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %48, i8* %49, align 1
  %50 = icmp eq i32 %35, 0
  %51 = zext i1 %50 to i8
  %52 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %51, i8* %52, align 1
  %53 = lshr i32 %35, 31
  %54 = trunc i32 %53 to i8
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %54, i8* %55, align 1
  %56 = lshr i32 %34, 31
  %57 = xor i32 %53, %56
  %58 = add nuw nsw i32 %57, %56
  %59 = icmp eq i32 %58, 2
  %60 = zext i1 %59 to i8
  %61 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %60, i8* %61, align 1
  %62 = icmp ne i8 %54, 0
  %63 = xor i1 %62, %59
  %.v = select i1 %63, i64 10, i64 22
  %64 = add i64 %31, %.v
  store i64 %64, i64* %3, align 8
  br i1 %63, label %block_402bc8, label %block_.L_402bd4

block_402bc8:                                     ; preds = %entry
  %65 = add i64 %29, -4
  %66 = add i64 %64, 7
  store i64 %66, i64* %PC.i, align 8
  %67 = inttoptr i64 %65 to i32*
  store i32 -1, i32* %67, align 4
  %68 = load i64, i64* %PC.i, align 8
  %69 = add i64 %68, 400
  store i64 %69, i64* %3, align 8
  br label %block_.L_402d5f

block_.L_402bd4:                                  ; preds = %entry
  %70 = add i64 %64, 4
  store i64 %70, i64* %PC.i, align 8
  %71 = load i32, i32* %33, align 4
  %72 = add i32 %71, -1
  %73 = icmp eq i32 %71, 0
  %74 = zext i1 %73 to i8
  store i8 %74, i8* %38, align 1
  %75 = and i32 %72, 255
  %76 = tail call i32 @llvm.ctpop.i32(i32 %75)
  %77 = trunc i32 %76 to i8
  %78 = and i8 %77, 1
  %79 = xor i8 %78, 1
  store i8 %79, i8* %44, align 1
  %80 = xor i32 %71, %72
  %81 = lshr i32 %80, 4
  %82 = trunc i32 %81 to i8
  %83 = and i8 %82, 1
  store i8 %83, i8* %49, align 1
  %84 = icmp eq i32 %72, 0
  %85 = zext i1 %84 to i8
  store i8 %85, i8* %52, align 1
  %86 = lshr i32 %72, 31
  %87 = trunc i32 %86 to i8
  store i8 %87, i8* %55, align 1
  %88 = lshr i32 %71, 31
  %89 = xor i32 %86, %88
  %90 = add nuw nsw i32 %89, %88
  %91 = icmp eq i32 %90, 2
  %92 = zext i1 %91 to i8
  store i8 %92, i8* %61, align 1
  %.v13 = select i1 %84, i64 10, i64 22
  %93 = add i64 %64, %.v13
  store i64 %93, i64* %3, align 8
  br i1 %84, label %block_402bde, label %block_.L_402bea

block_402bde:                                     ; preds = %block_.L_402bd4
  %94 = add i64 %29, -4
  %95 = add i64 %93, 7
  store i64 %95, i64* %PC.i, align 8
  %96 = inttoptr i64 %94 to i32*
  store i32 0, i32* %96, align 4
  %97 = load i64, i64* %PC.i, align 8
  %98 = add i64 %97, 378
  store i64 %98, i64* %3, align 8
  br label %block_.L_402d5f

block_.L_402bea:                                  ; preds = %block_.L_402bd4
  %99 = add i64 %29, -20
  %100 = add i64 %93, 4
  store i64 %100, i64* %PC.i, align 8
  %101 = inttoptr i64 %99 to i32*
  %102 = load i32, i32* %101, align 4
  %103 = add i32 %102, -1
  %104 = icmp eq i32 %102, 0
  %105 = zext i1 %104 to i8
  store i8 %105, i8* %38, align 1
  %106 = and i32 %103, 255
  %107 = tail call i32 @llvm.ctpop.i32(i32 %106)
  %108 = trunc i32 %107 to i8
  %109 = and i8 %108, 1
  %110 = xor i8 %109, 1
  store i8 %110, i8* %44, align 1
  %111 = xor i32 %102, %103
  %112 = lshr i32 %111, 4
  %113 = trunc i32 %112 to i8
  %114 = and i8 %113, 1
  store i8 %114, i8* %49, align 1
  %115 = icmp eq i32 %103, 0
  %116 = zext i1 %115 to i8
  store i8 %116, i8* %52, align 1
  %117 = lshr i32 %103, 31
  %118 = trunc i32 %117 to i8
  store i8 %118, i8* %55, align 1
  %119 = lshr i32 %102, 31
  %120 = xor i32 %117, %119
  %121 = add nuw nsw i32 %120, %119
  %122 = icmp eq i32 %121, 2
  %123 = zext i1 %122 to i8
  store i8 %123, i8* %61, align 1
  %.v14 = select i1 %115, i64 195, i64 10
  %124 = add i64 %93, %.v14
  store i64 %124, i64* %3, align 8
  br i1 %115, label %block_.L_402cad, label %block_402bf4

block_402bf4:                                     ; preds = %block_.L_402bea
  %125 = add i64 %29, -32
  %126 = add i64 %124, 7
  store i64 %126, i64* %PC.i, align 8
  %127 = inttoptr i64 %125 to i32*
  store i32 1, i32* %127, align 4
  %RAX.i222 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %128 = load i64, i64* %RBP.i, align 8
  %129 = add i64 %128, -16
  %130 = load i64, i64* %PC.i, align 8
  %131 = add i64 %130, 4
  store i64 %131, i64* %PC.i, align 8
  %132 = inttoptr i64 %129 to i64*
  %133 = load i64, i64* %132, align 8
  store i64 %133, i64* %RAX.i222, align 8
  %134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %135 = bitcast [32 x %union.VectorReg]* %134 to i8*
  %136 = add i64 %130, 8
  store i64 %136, i64* %PC.i, align 8
  %137 = inttoptr i64 %133 to i32*
  %138 = load i32, i32* %137, align 4
  %139 = bitcast [32 x %union.VectorReg]* %134 to float*
  %140 = bitcast [32 x %union.VectorReg]* %134 to i32*
  store i32 %138, i32* %140, align 1
  %141 = getelementptr inbounds i8, i8* %135, i64 4
  %142 = bitcast i8* %141 to float*
  store float 0.000000e+00, float* %142, align 1
  %143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %144 = bitcast i64* %143 to float*
  store float 0.000000e+00, float* %144, align 1
  %145 = getelementptr inbounds i8, i8* %135, i64 12
  %146 = bitcast i8* %145 to float*
  store float 0.000000e+00, float* %146, align 1
  %147 = bitcast [32 x %union.VectorReg]* %134 to <2 x float>*
  %148 = load <2 x float>, <2 x float>* %147, align 1
  %149 = extractelement <2 x float> %148, i32 0
  %150 = fpext float %149 to double
  %151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %152 = bitcast %union.VectorReg* %151 to i8*
  %153 = load i32, i32* bitcast (%G_0x312__rip__type* @G_0x312__rip_ to i32*), align 8
  %154 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x312__rip__type* @G_0x312__rip_ to i64), i64 4) to i32*), align 4
  %155 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x312__rip__type* @G_0x312__rip_ to i64), i64 8) to i32*), align 8
  %156 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x312__rip__type* @G_0x312__rip_ to i64), i64 12) to i32*), align 4
  %157 = bitcast %union.VectorReg* %151 to i32*
  store i32 %153, i32* %157, align 1
  %158 = getelementptr inbounds i8, i8* %152, i64 4
  %159 = bitcast i8* %158 to float*
  %160 = bitcast i8* %158 to i32*
  store i32 %154, i32* %160, align 1
  %161 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %162 = bitcast i64* %161 to float*
  %163 = bitcast i64* %161 to i32*
  store i32 %155, i32* %163, align 1
  %164 = getelementptr inbounds i8, i8* %152, i64 12
  %165 = bitcast i8* %164 to float*
  %166 = bitcast i8* %164 to i32*
  store i32 %156, i32* %166, align 1
  %167 = bitcast double %150 to i64
  %168 = load i64, i64* %143, align 1
  %169 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %151, i64 0, i32 0, i32 0, i32 0, i64 0
  %170 = load i64, i64* %169, align 1
  %171 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %172 = load i64, i64* %171, align 1
  %173 = and i64 %170, %167
  %174 = and i64 %172, %168
  %175 = trunc i64 %173 to i32
  %176 = lshr i64 %173, 32
  %177 = trunc i64 %176 to i32
  %178 = bitcast [32 x %union.VectorReg]* %134 to i32*
  store i32 %175, i32* %178, align 1
  %179 = bitcast i8* %141 to i32*
  store i32 %177, i32* %179, align 1
  %180 = trunc i64 %174 to i32
  %181 = bitcast i64* %143 to i32*
  store i32 %180, i32* %181, align 1
  %182 = lshr i64 %174, 32
  %183 = trunc i64 %182 to i32
  %184 = bitcast i8* %145 to i32*
  store i32 %183, i32* %184, align 1
  %185 = bitcast [32 x %union.VectorReg]* %134 to <2 x i32>*
  %186 = load <2 x i32>, <2 x i32>* %185, align 1
  %187 = bitcast i64* %143 to <2 x i32>*
  %188 = load <2 x i32>, <2 x i32>* %187, align 1
  %189 = bitcast [32 x %union.VectorReg]* %134 to double*
  %190 = bitcast <2 x i32> %186 to double
  %191 = fptrunc double %190 to float
  store float %191, float* %139, align 1
  %192 = extractelement <2 x i32> %186, i32 1
  store i32 %192, i32* %179, align 1
  %193 = extractelement <2 x i32> %188, i32 0
  store i32 %193, i32* %181, align 1
  %194 = extractelement <2 x i32> %188, i32 1
  store i32 %194, i32* %184, align 1
  %195 = load i64, i64* %RBP.i, align 8
  %196 = add i64 %195, -24
  %197 = add i64 %130, 32
  store i64 %197, i64* %PC.i, align 8
  %198 = load <2 x float>, <2 x float>* %147, align 1
  %199 = extractelement <2 x float> %198, i32 0
  %200 = inttoptr i64 %196 to float*
  store float %199, float* %200, align 4
  %RCX.i202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %201 = load i64, i64* %RBP.i, align 8
  %202 = add i64 %201, -32
  %203 = load i64, i64* %PC.i, align 8
  %204 = add i64 %203, 3
  store i64 %204, i64* %PC.i, align 8
  %205 = inttoptr i64 %202 to i32*
  %206 = load i32, i32* %205, align 4
  %207 = zext i32 %206 to i64
  store i64 %207, i64* %RCX.i202, align 8
  %208 = add i64 %201, -20
  %209 = add i64 %203, 6
  store i64 %209, i64* %PC.i, align 8
  %210 = inttoptr i64 %208 to i32*
  %211 = load i32, i32* %210, align 4
  %212 = add i32 %211, %206
  %213 = zext i32 %212 to i64
  store i64 %213, i64* %RCX.i202, align 8
  %214 = icmp ult i32 %212, %206
  %215 = icmp ult i32 %212, %211
  %216 = or i1 %214, %215
  %217 = zext i1 %216 to i8
  store i8 %217, i8* %38, align 1
  %218 = and i32 %212, 255
  %219 = tail call i32 @llvm.ctpop.i32(i32 %218)
  %220 = trunc i32 %219 to i8
  %221 = and i8 %220, 1
  %222 = xor i8 %221, 1
  store i8 %222, i8* %44, align 1
  %223 = xor i32 %211, %206
  %224 = xor i32 %223, %212
  %225 = lshr i32 %224, 4
  %226 = trunc i32 %225 to i8
  %227 = and i8 %226, 1
  store i8 %227, i8* %49, align 1
  %228 = icmp eq i32 %212, 0
  %229 = zext i1 %228 to i8
  store i8 %229, i8* %52, align 1
  %230 = lshr i32 %212, 31
  %231 = trunc i32 %230 to i8
  store i8 %231, i8* %55, align 1
  %232 = lshr i32 %206, 31
  %233 = lshr i32 %211, 31
  %234 = xor i32 %230, %232
  %235 = xor i32 %230, %233
  %236 = add nuw nsw i32 %234, %235
  %237 = icmp eq i32 %236, 2
  %238 = zext i1 %237 to i8
  store i8 %238, i8* %61, align 1
  %239 = add i64 %203, 9
  store i64 %239, i64* %PC.i, align 8
  store i32 %212, i32* %205, align 4
  %240 = load i64, i64* %RBP.i, align 8
  %241 = add i64 %240, -28
  %242 = load i64, i64* %PC.i, align 8
  %243 = add i64 %242, 7
  store i64 %243, i64* %PC.i, align 8
  %244 = inttoptr i64 %241 to i32*
  store i32 1, i32* %244, align 4
  %245 = bitcast %union.VectorReg* %151 to <2 x float>*
  %246 = bitcast %union.VectorReg* %151 to double*
  %RDX.i145 = getelementptr inbounds %union.anon, %union.anon* %22, i64 0, i32 0
  %.pre = load i64, i64* %PC.i, align 8
  br label %block_.L_402c2b

block_.L_402c2b:                                  ; preds = %block_.L_402c91, %block_402bf4
  %247 = phi i64 [ %.pre, %block_402bf4 ], [ %496, %block_.L_402c91 ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_402bf4 ], [ %360, %block_.L_402c91 ]
  %248 = load i64, i64* %RBP.i, align 8
  %249 = add i64 %248, -28
  %250 = add i64 %247, 3
  store i64 %250, i64* %PC.i, align 8
  %251 = inttoptr i64 %249 to i32*
  %252 = load i32, i32* %251, align 4
  %253 = zext i32 %252 to i64
  store i64 %253, i64* %RAX.i222, align 8
  %254 = add i64 %248, -8
  %255 = add i64 %247, 6
  store i64 %255, i64* %PC.i, align 8
  %256 = inttoptr i64 %254 to i32*
  %257 = load i32, i32* %256, align 4
  %258 = sub i32 %252, %257
  %259 = icmp ult i32 %252, %257
  %260 = zext i1 %259 to i8
  store i8 %260, i8* %38, align 1
  %261 = and i32 %258, 255
  %262 = tail call i32 @llvm.ctpop.i32(i32 %261)
  %263 = trunc i32 %262 to i8
  %264 = and i8 %263, 1
  %265 = xor i8 %264, 1
  store i8 %265, i8* %44, align 1
  %266 = xor i32 %257, %252
  %267 = xor i32 %266, %258
  %268 = lshr i32 %267, 4
  %269 = trunc i32 %268 to i8
  %270 = and i8 %269, 1
  store i8 %270, i8* %49, align 1
  %271 = icmp eq i32 %258, 0
  %272 = zext i1 %271 to i8
  store i8 %272, i8* %52, align 1
  %273 = lshr i32 %258, 31
  %274 = trunc i32 %273 to i8
  store i8 %274, i8* %55, align 1
  %275 = lshr i32 %252, 31
  %276 = lshr i32 %257, 31
  %277 = xor i32 %276, %275
  %278 = xor i32 %273, %275
  %279 = add nuw nsw i32 %278, %277
  %280 = icmp eq i32 %279, 2
  %281 = zext i1 %280 to i8
  store i8 %281, i8* %61, align 1
  %282 = icmp ne i8 %274, 0
  %283 = xor i1 %282, %280
  %.v15 = select i1 %283, i64 12, i64 125
  %284 = add i64 %247, %.v15
  store i64 %284, i64* %3, align 8
  br i1 %283, label %block_402c37, label %block_.L_402ca8

block_402c37:                                     ; preds = %block_.L_402c2b
  %285 = add i64 %248, -16
  %286 = add i64 %284, 4
  store i64 %286, i64* %PC.i, align 8
  %287 = inttoptr i64 %285 to i64*
  %288 = load i64, i64* %287, align 8
  store i64 %288, i64* %RAX.i222, align 8
  %289 = add i64 %248, -32
  %290 = add i64 %284, 8
  store i64 %290, i64* %PC.i, align 8
  %291 = inttoptr i64 %289 to i32*
  %292 = load i32, i32* %291, align 4
  %293 = sext i32 %292 to i64
  store i64 %293, i64* %RCX.i202, align 8
  %294 = shl nsw i64 %293, 2
  %295 = add i64 %294, %288
  %296 = add i64 %284, 13
  store i64 %296, i64* %PC.i, align 8
  %297 = inttoptr i64 %295 to i32*
  %298 = load i32, i32* %297, align 4
  %299 = bitcast [32 x %union.VectorReg]* %134 to i32*
  store i32 %298, i32* %299, align 1
  store float 0.000000e+00, float* %142, align 1
  store float 0.000000e+00, float* %144, align 1
  store float 0.000000e+00, float* %146, align 1
  %300 = load <2 x float>, <2 x float>* %147, align 1
  %301 = extractelement <2 x float> %300, i32 0
  %302 = fpext float %301 to double
  %303 = load i32, i32* bitcast (%G_0x2d1__rip__type* @G_0x2d1__rip_ to i32*), align 8
  %304 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x2d1__rip__type* @G_0x2d1__rip_ to i64), i64 4) to i32*), align 4
  %305 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x2d1__rip__type* @G_0x2d1__rip_ to i64), i64 8) to i32*), align 8
  %306 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x2d1__rip__type* @G_0x2d1__rip_ to i64), i64 12) to i32*), align 4
  %307 = bitcast %union.VectorReg* %151 to i32*
  store i32 %303, i32* %307, align 1
  %308 = bitcast i8* %158 to i32*
  store i32 %304, i32* %308, align 1
  %309 = bitcast i64* %161 to i32*
  store i32 %305, i32* %309, align 1
  %310 = bitcast i8* %164 to i32*
  store i32 %306, i32* %310, align 1
  %311 = bitcast double %302 to i64
  %312 = load i64, i64* %143, align 1
  %313 = load i64, i64* %169, align 1
  %314 = load i64, i64* %171, align 1
  %315 = and i64 %313, %311
  %316 = and i64 %314, %312
  %317 = trunc i64 %315 to i32
  %318 = lshr i64 %315, 32
  %319 = trunc i64 %318 to i32
  store i32 %317, i32* %178, align 1
  store i32 %319, i32* %179, align 1
  %320 = trunc i64 %316 to i32
  store i32 %320, i32* %181, align 1
  %321 = lshr i64 %316, 32
  %322 = trunc i64 %321 to i32
  store i32 %322, i32* %184, align 1
  %323 = add i64 %248, -24
  %324 = add i64 %284, 33
  store i64 %324, i64* %PC.i, align 8
  %325 = inttoptr i64 %323 to i32*
  %326 = load i32, i32* %325, align 4
  %327 = bitcast %union.VectorReg* %151 to i32*
  store i32 %326, i32* %327, align 1
  store float 0.000000e+00, float* %159, align 1
  store float 0.000000e+00, float* %162, align 1
  store float 0.000000e+00, float* %165, align 1
  %328 = load <2 x float>, <2 x float>* %245, align 1
  %329 = extractelement <2 x float> %328, i32 0
  %330 = fpext float %329 to double
  store double %330, double* %246, align 1
  %331 = add i64 %284, 41
  store i64 %331, i64* %PC.i, align 8
  %332 = load double, double* %189, align 1
  %333 = fcmp uno double %332, %330
  br i1 %333, label %334, label %344

; <label>:334:                                    ; preds = %block_402c37
  %335 = fadd double %332, %330
  %336 = bitcast double %335 to i64
  %337 = and i64 %336, 9221120237041090560
  %338 = icmp eq i64 %337, 9218868437227405312
  %339 = and i64 %336, 2251799813685247
  %340 = icmp ne i64 %339, 0
  %341 = and i1 %338, %340
  br i1 %341, label %342, label %350

; <label>:342:                                    ; preds = %334
  %343 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %331, %struct.Memory* %MEMORY.0)
  %.pre1 = load i64, i64* %PC.i, align 8
  %.pre2 = load i8, i8* %38, align 1
  %.pre3 = load i8, i8* %52, align 1
  br label %routine_ucomisd__xmm1___xmm0.exit160

; <label>:344:                                    ; preds = %block_402c37
  %345 = fcmp ogt double %332, %330
  br i1 %345, label %350, label %346

; <label>:346:                                    ; preds = %344
  %347 = fcmp olt double %332, %330
  br i1 %347, label %350, label %348

; <label>:348:                                    ; preds = %346
  %349 = fcmp oeq double %332, %330
  br i1 %349, label %350, label %354

; <label>:350:                                    ; preds = %348, %346, %344, %334
  %351 = phi i8 [ 0, %344 ], [ 0, %346 ], [ 1, %348 ], [ 1, %334 ]
  %352 = phi i8 [ 0, %344 ], [ 0, %346 ], [ 0, %348 ], [ 1, %334 ]
  %353 = phi i8 [ 0, %344 ], [ 1, %346 ], [ 0, %348 ], [ 1, %334 ]
  store i8 %351, i8* %52, align 1
  store i8 %352, i8* %44, align 1
  store i8 %353, i8* %38, align 1
  br label %354

; <label>:354:                                    ; preds = %350, %348
  %355 = phi i8 [ %351, %350 ], [ %272, %348 ]
  %356 = phi i8 [ %353, %350 ], [ %260, %348 ]
  store i8 0, i8* %61, align 1
  store i8 0, i8* %55, align 1
  store i8 0, i8* %49, align 1
  br label %routine_ucomisd__xmm1___xmm0.exit160

routine_ucomisd__xmm1___xmm0.exit160:             ; preds = %354, %342
  %357 = phi i8 [ %.pre3, %342 ], [ %355, %354 ]
  %358 = phi i8 [ %.pre2, %342 ], [ %356, %354 ]
  %359 = phi i64 [ %.pre1, %342 ], [ %331, %354 ]
  %360 = phi %struct.Memory* [ %343, %342 ], [ %MEMORY.0, %354 ]
  %361 = or i8 %357, %358
  %362 = icmp ne i8 %361, 0
  %.v16 = select i1 %362, i64 49, i64 6
  %363 = add i64 %359, %.v16
  store i64 %363, i64* %3, align 8
  br i1 %362, label %block_.L_402c91, label %block_402c66

block_402c66:                                     ; preds = %routine_ucomisd__xmm1___xmm0.exit160
  %364 = load i64, i64* %RBP.i, align 8
  %365 = add i64 %364, -28
  %366 = add i64 %363, 3
  store i64 %366, i64* %PC.i, align 8
  %367 = inttoptr i64 %365 to i32*
  %368 = load i32, i32* %367, align 4
  %369 = zext i32 %368 to i64
  store i64 %369, i64* %RAX.i222, align 8
  %370 = add i64 %364, -36
  %371 = add i64 %363, 6
  store i64 %371, i64* %PC.i, align 8
  %372 = inttoptr i64 %370 to i32*
  store i32 %368, i32* %372, align 4
  %373 = load i64, i64* %RBP.i, align 8
  %374 = add i64 %373, -16
  %375 = load i64, i64* %PC.i, align 8
  %376 = add i64 %375, 4
  store i64 %376, i64* %PC.i, align 8
  %377 = inttoptr i64 %374 to i64*
  %378 = load i64, i64* %377, align 8
  store i64 %378, i64* %RCX.i202, align 8
  %379 = add i64 %373, -32
  %380 = add i64 %375, 8
  store i64 %380, i64* %PC.i, align 8
  %381 = inttoptr i64 %379 to i32*
  %382 = load i32, i32* %381, align 4
  %383 = sext i32 %382 to i64
  store i64 %383, i64* %RDX.i145, align 8
  %384 = shl nsw i64 %383, 2
  %385 = add i64 %384, %378
  %386 = add i64 %375, 13
  store i64 %386, i64* %PC.i, align 8
  %387 = inttoptr i64 %385 to i32*
  %388 = load i32, i32* %387, align 4
  %389 = bitcast [32 x %union.VectorReg]* %134 to i32*
  store i32 %388, i32* %389, align 1
  store float 0.000000e+00, float* %142, align 1
  store float 0.000000e+00, float* %144, align 1
  store float 0.000000e+00, float* %146, align 1
  %390 = load <2 x float>, <2 x float>* %147, align 1
  %391 = extractelement <2 x float> %390, i32 0
  %392 = fpext float %391 to double
  %393 = load i32, i32* bitcast (%G_0x29c__rip__type* @G_0x29c__rip_ to i32*), align 8
  %394 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x29c__rip__type* @G_0x29c__rip_ to i64), i64 4) to i32*), align 4
  %395 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x29c__rip__type* @G_0x29c__rip_ to i64), i64 8) to i32*), align 8
  %396 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x29c__rip__type* @G_0x29c__rip_ to i64), i64 12) to i32*), align 4
  %397 = bitcast %union.VectorReg* %151 to i32*
  store i32 %393, i32* %397, align 1
  %398 = bitcast i8* %158 to i32*
  store i32 %394, i32* %398, align 1
  %399 = bitcast i64* %161 to i32*
  store i32 %395, i32* %399, align 1
  %400 = bitcast i8* %164 to i32*
  store i32 %396, i32* %400, align 1
  %401 = bitcast double %392 to i64
  %402 = load i64, i64* %143, align 1
  %403 = load i64, i64* %169, align 1
  %404 = load i64, i64* %171, align 1
  %405 = and i64 %403, %401
  %406 = and i64 %404, %402
  %407 = trunc i64 %405 to i32
  %408 = lshr i64 %405, 32
  %409 = trunc i64 %408 to i32
  store i32 %407, i32* %178, align 1
  store i32 %409, i32* %179, align 1
  %410 = trunc i64 %406 to i32
  store i32 %410, i32* %181, align 1
  %411 = lshr i64 %406, 32
  %412 = trunc i64 %411 to i32
  store i32 %412, i32* %184, align 1
  %413 = load <2 x i32>, <2 x i32>* %185, align 1
  %414 = load <2 x i32>, <2 x i32>* %187, align 1
  %415 = bitcast <2 x i32> %413 to double
  %416 = fptrunc double %415 to float
  store float %416, float* %139, align 1
  %417 = extractelement <2 x i32> %413, i32 1
  store i32 %417, i32* %179, align 1
  %418 = extractelement <2 x i32> %414, i32 0
  store i32 %418, i32* %181, align 1
  %419 = extractelement <2 x i32> %414, i32 1
  store i32 %419, i32* %184, align 1
  %420 = add i64 %373, -24
  %421 = add i64 %375, 37
  store i64 %421, i64* %PC.i, align 8
  %422 = load <2 x float>, <2 x float>* %147, align 1
  %423 = extractelement <2 x float> %422, i32 0
  %424 = inttoptr i64 %420 to float*
  store float %423, float* %424, align 4
  %.pre4 = load i64, i64* %PC.i, align 8
  br label %block_.L_402c91

block_.L_402c91:                                  ; preds = %block_402c66, %routine_ucomisd__xmm1___xmm0.exit160
  %425 = phi i64 [ %.pre4, %block_402c66 ], [ %363, %routine_ucomisd__xmm1___xmm0.exit160 ]
  %426 = load i64, i64* %RBP.i, align 8
  %427 = add i64 %426, -32
  %428 = add i64 %425, 3
  store i64 %428, i64* %PC.i, align 8
  %429 = inttoptr i64 %427 to i32*
  %430 = load i32, i32* %429, align 4
  %431 = zext i32 %430 to i64
  store i64 %431, i64* %RAX.i222, align 8
  %432 = add i64 %426, -20
  %433 = add i64 %425, 6
  store i64 %433, i64* %PC.i, align 8
  %434 = inttoptr i64 %432 to i32*
  %435 = load i32, i32* %434, align 4
  %436 = add i32 %435, %430
  %437 = zext i32 %436 to i64
  store i64 %437, i64* %RAX.i222, align 8
  %438 = icmp ult i32 %436, %430
  %439 = icmp ult i32 %436, %435
  %440 = or i1 %438, %439
  %441 = zext i1 %440 to i8
  store i8 %441, i8* %38, align 1
  %442 = and i32 %436, 255
  %443 = tail call i32 @llvm.ctpop.i32(i32 %442)
  %444 = trunc i32 %443 to i8
  %445 = and i8 %444, 1
  %446 = xor i8 %445, 1
  store i8 %446, i8* %44, align 1
  %447 = xor i32 %435, %430
  %448 = xor i32 %447, %436
  %449 = lshr i32 %448, 4
  %450 = trunc i32 %449 to i8
  %451 = and i8 %450, 1
  store i8 %451, i8* %49, align 1
  %452 = icmp eq i32 %436, 0
  %453 = zext i1 %452 to i8
  store i8 %453, i8* %52, align 1
  %454 = lshr i32 %436, 31
  %455 = trunc i32 %454 to i8
  store i8 %455, i8* %55, align 1
  %456 = lshr i32 %430, 31
  %457 = lshr i32 %435, 31
  %458 = xor i32 %454, %456
  %459 = xor i32 %454, %457
  %460 = add nuw nsw i32 %458, %459
  %461 = icmp eq i32 %460, 2
  %462 = zext i1 %461 to i8
  store i8 %462, i8* %61, align 1
  %463 = add i64 %425, 9
  store i64 %463, i64* %PC.i, align 8
  store i32 %436, i32* %429, align 4
  %464 = load i64, i64* %RBP.i, align 8
  %465 = add i64 %464, -28
  %466 = load i64, i64* %PC.i, align 8
  %467 = add i64 %466, 3
  store i64 %467, i64* %PC.i, align 8
  %468 = inttoptr i64 %465 to i32*
  %469 = load i32, i32* %468, align 4
  %470 = add i32 %469, 1
  %471 = zext i32 %470 to i64
  store i64 %471, i64* %RAX.i222, align 8
  %472 = icmp eq i32 %469, -1
  %473 = icmp eq i32 %470, 0
  %474 = or i1 %472, %473
  %475 = zext i1 %474 to i8
  store i8 %475, i8* %38, align 1
  %476 = and i32 %470, 255
  %477 = tail call i32 @llvm.ctpop.i32(i32 %476)
  %478 = trunc i32 %477 to i8
  %479 = and i8 %478, 1
  %480 = xor i8 %479, 1
  store i8 %480, i8* %44, align 1
  %481 = xor i32 %469, %470
  %482 = lshr i32 %481, 4
  %483 = trunc i32 %482 to i8
  %484 = and i8 %483, 1
  store i8 %484, i8* %49, align 1
  %485 = icmp eq i32 %470, 0
  %486 = zext i1 %485 to i8
  store i8 %486, i8* %52, align 1
  %487 = lshr i32 %470, 31
  %488 = trunc i32 %487 to i8
  store i8 %488, i8* %55, align 1
  %489 = lshr i32 %469, 31
  %490 = xor i32 %487, %489
  %491 = add nuw nsw i32 %490, %487
  %492 = icmp eq i32 %491, 2
  %493 = zext i1 %492 to i8
  store i8 %493, i8* %61, align 1
  %494 = add i64 %466, 9
  store i64 %494, i64* %PC.i, align 8
  store i32 %470, i32* %468, align 4
  %495 = load i64, i64* %PC.i, align 8
  %496 = add i64 %495, -120
  store i64 %496, i64* %3, align 8
  br label %block_.L_402c2b

block_.L_402ca8:                                  ; preds = %block_.L_402c2b
  %497 = add i64 %284, 177
  br label %block_.L_402d59

block_.L_402cad:                                  ; preds = %block_.L_402bea
  %498 = add i64 %29, -36
  %499 = add i64 %124, 7
  store i64 %499, i64* %PC.i, align 8
  %500 = inttoptr i64 %498 to i32*
  store i32 0, i32* %500, align 4
  %RAX.i103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %501 = load i64, i64* %RBP.i, align 8
  %502 = add i64 %501, -16
  %503 = load i64, i64* %PC.i, align 8
  %504 = add i64 %503, 4
  store i64 %504, i64* %PC.i, align 8
  %505 = inttoptr i64 %502 to i64*
  %506 = load i64, i64* %505, align 8
  store i64 %506, i64* %RAX.i103, align 8
  %507 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %508 = bitcast [32 x %union.VectorReg]* %507 to i8*
  %509 = add i64 %503, 8
  store i64 %509, i64* %PC.i, align 8
  %510 = inttoptr i64 %506 to i32*
  %511 = load i32, i32* %510, align 4
  %512 = bitcast [32 x %union.VectorReg]* %507 to float*
  %513 = bitcast [32 x %union.VectorReg]* %507 to i32*
  store i32 %511, i32* %513, align 1
  %514 = getelementptr inbounds i8, i8* %508, i64 4
  %515 = bitcast i8* %514 to float*
  store float 0.000000e+00, float* %515, align 1
  %516 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %517 = bitcast i64* %516 to float*
  store float 0.000000e+00, float* %517, align 1
  %518 = getelementptr inbounds i8, i8* %508, i64 12
  %519 = bitcast i8* %518 to float*
  store float 0.000000e+00, float* %519, align 1
  %520 = bitcast [32 x %union.VectorReg]* %507 to <2 x float>*
  %521 = load <2 x float>, <2 x float>* %520, align 1
  %522 = extractelement <2 x float> %521, i32 0
  %523 = fpext float %522 to double
  %524 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %525 = bitcast %union.VectorReg* %524 to i8*
  %526 = load i32, i32* bitcast (%G_0x259__rip__type* @G_0x259__rip_ to i32*), align 8
  %527 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x259__rip__type* @G_0x259__rip_ to i64), i64 4) to i32*), align 4
  %528 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x259__rip__type* @G_0x259__rip_ to i64), i64 8) to i32*), align 8
  %529 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x259__rip__type* @G_0x259__rip_ to i64), i64 12) to i32*), align 4
  %530 = bitcast %union.VectorReg* %524 to i32*
  store i32 %526, i32* %530, align 1
  %531 = getelementptr inbounds i8, i8* %525, i64 4
  %532 = bitcast i8* %531 to float*
  %533 = bitcast i8* %531 to i32*
  store i32 %527, i32* %533, align 1
  %534 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %535 = bitcast i64* %534 to float*
  %536 = bitcast i64* %534 to i32*
  store i32 %528, i32* %536, align 1
  %537 = getelementptr inbounds i8, i8* %525, i64 12
  %538 = bitcast i8* %537 to float*
  %539 = bitcast i8* %537 to i32*
  store i32 %529, i32* %539, align 1
  %540 = bitcast double %523 to i64
  %541 = load i64, i64* %516, align 1
  %542 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %524, i64 0, i32 0, i32 0, i32 0, i64 0
  %543 = load i64, i64* %542, align 1
  %544 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %545 = load i64, i64* %544, align 1
  %546 = and i64 %543, %540
  %547 = and i64 %545, %541
  %548 = trunc i64 %546 to i32
  %549 = lshr i64 %546, 32
  %550 = trunc i64 %549 to i32
  %551 = bitcast [32 x %union.VectorReg]* %507 to i32*
  store i32 %548, i32* %551, align 1
  %552 = bitcast i8* %514 to i32*
  store i32 %550, i32* %552, align 1
  %553 = trunc i64 %547 to i32
  %554 = bitcast i64* %516 to i32*
  store i32 %553, i32* %554, align 1
  %555 = lshr i64 %547, 32
  %556 = trunc i64 %555 to i32
  %557 = bitcast i8* %518 to i32*
  store i32 %556, i32* %557, align 1
  %558 = bitcast [32 x %union.VectorReg]* %507 to <2 x i32>*
  %559 = load <2 x i32>, <2 x i32>* %558, align 1
  %560 = bitcast i64* %516 to <2 x i32>*
  %561 = load <2 x i32>, <2 x i32>* %560, align 1
  %562 = bitcast [32 x %union.VectorReg]* %507 to double*
  %563 = bitcast <2 x i32> %559 to double
  %564 = fptrunc double %563 to float
  store float %564, float* %512, align 1
  %565 = extractelement <2 x i32> %559, i32 1
  store i32 %565, i32* %552, align 1
  %566 = extractelement <2 x i32> %561, i32 0
  store i32 %566, i32* %554, align 1
  %567 = extractelement <2 x i32> %561, i32 1
  store i32 %567, i32* %557, align 1
  %568 = load i64, i64* %RBP.i, align 8
  %569 = add i64 %568, -24
  %570 = add i64 %503, 32
  store i64 %570, i64* %PC.i, align 8
  %571 = load <2 x float>, <2 x float>* %520, align 1
  %572 = extractelement <2 x float> %571, i32 0
  %573 = inttoptr i64 %569 to float*
  store float %572, float* %573, align 4
  %574 = load i64, i64* %RBP.i, align 8
  %575 = add i64 %574, -28
  %576 = load i64, i64* %PC.i, align 8
  %577 = add i64 %576, 7
  store i64 %577, i64* %PC.i, align 8
  %578 = inttoptr i64 %575 to i32*
  store i32 1, i32* %578, align 4
  %RCX.i71 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %579 = bitcast %union.VectorReg* %524 to <2 x float>*
  %580 = bitcast %union.VectorReg* %524 to double*
  %RDX.i35 = getelementptr inbounds %union.anon, %union.anon* %22, i64 0, i32 0
  %.pre5 = load i64, i64* %PC.i, align 8
  br label %block_.L_402cdb

block_.L_402cdb:                                  ; preds = %block_.L_402d41, %block_.L_402cad
  %581 = phi i64 [ %.pre5, %block_.L_402cad ], [ %789, %block_.L_402d41 ]
  %MEMORY.2 = phi %struct.Memory* [ %2, %block_.L_402cad ], [ %692, %block_.L_402d41 ]
  %582 = load i64, i64* %RBP.i, align 8
  %583 = add i64 %582, -28
  %584 = add i64 %581, 3
  store i64 %584, i64* %PC.i, align 8
  %585 = inttoptr i64 %583 to i32*
  %586 = load i32, i32* %585, align 4
  %587 = zext i32 %586 to i64
  store i64 %587, i64* %RAX.i103, align 8
  %588 = add i64 %582, -8
  %589 = add i64 %581, 6
  store i64 %589, i64* %PC.i, align 8
  %590 = inttoptr i64 %588 to i32*
  %591 = load i32, i32* %590, align 4
  %592 = sub i32 %586, %591
  %593 = icmp ult i32 %586, %591
  %594 = zext i1 %593 to i8
  store i8 %594, i8* %38, align 1
  %595 = and i32 %592, 255
  %596 = tail call i32 @llvm.ctpop.i32(i32 %595)
  %597 = trunc i32 %596 to i8
  %598 = and i8 %597, 1
  %599 = xor i8 %598, 1
  store i8 %599, i8* %44, align 1
  %600 = xor i32 %591, %586
  %601 = xor i32 %600, %592
  %602 = lshr i32 %601, 4
  %603 = trunc i32 %602 to i8
  %604 = and i8 %603, 1
  store i8 %604, i8* %49, align 1
  %605 = icmp eq i32 %592, 0
  %606 = zext i1 %605 to i8
  store i8 %606, i8* %52, align 1
  %607 = lshr i32 %592, 31
  %608 = trunc i32 %607 to i8
  store i8 %608, i8* %55, align 1
  %609 = lshr i32 %586, 31
  %610 = lshr i32 %591, 31
  %611 = xor i32 %610, %609
  %612 = xor i32 %607, %609
  %613 = add nuw nsw i32 %612, %611
  %614 = icmp eq i32 %613, 2
  %615 = zext i1 %614 to i8
  store i8 %615, i8* %61, align 1
  %616 = icmp ne i8 %608, 0
  %617 = xor i1 %616, %614
  %.v17 = select i1 %617, i64 12, i64 121
  %618 = add i64 %581, %.v17
  store i64 %618, i64* %3, align 8
  br i1 %617, label %block_402ce7, label %block_.L_402d54

block_402ce7:                                     ; preds = %block_.L_402cdb
  %619 = add i64 %582, -16
  %620 = add i64 %618, 4
  store i64 %620, i64* %PC.i, align 8
  %621 = inttoptr i64 %619 to i64*
  %622 = load i64, i64* %621, align 8
  store i64 %622, i64* %RAX.i103, align 8
  %623 = add i64 %618, 8
  store i64 %623, i64* %PC.i, align 8
  %624 = load i32, i32* %585, align 4
  %625 = sext i32 %624 to i64
  store i64 %625, i64* %RCX.i71, align 8
  %626 = shl nsw i64 %625, 2
  %627 = add i64 %626, %622
  %628 = add i64 %618, 13
  store i64 %628, i64* %PC.i, align 8
  %629 = inttoptr i64 %627 to i32*
  %630 = load i32, i32* %629, align 4
  %631 = bitcast [32 x %union.VectorReg]* %507 to i32*
  store i32 %630, i32* %631, align 1
  store float 0.000000e+00, float* %515, align 1
  store float 0.000000e+00, float* %517, align 1
  store float 0.000000e+00, float* %519, align 1
  %632 = load <2 x float>, <2 x float>* %520, align 1
  %633 = extractelement <2 x float> %632, i32 0
  %634 = fpext float %633 to double
  %635 = load i32, i32* bitcast (%G_0x221__rip__type* @G_0x221__rip_ to i32*), align 8
  %636 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x221__rip__type* @G_0x221__rip_ to i64), i64 4) to i32*), align 4
  %637 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x221__rip__type* @G_0x221__rip_ to i64), i64 8) to i32*), align 8
  %638 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x221__rip__type* @G_0x221__rip_ to i64), i64 12) to i32*), align 4
  %639 = bitcast %union.VectorReg* %524 to i32*
  store i32 %635, i32* %639, align 1
  %640 = bitcast i8* %531 to i32*
  store i32 %636, i32* %640, align 1
  %641 = bitcast i64* %534 to i32*
  store i32 %637, i32* %641, align 1
  %642 = bitcast i8* %537 to i32*
  store i32 %638, i32* %642, align 1
  %643 = bitcast double %634 to i64
  %644 = load i64, i64* %516, align 1
  %645 = load i64, i64* %542, align 1
  %646 = load i64, i64* %544, align 1
  %647 = and i64 %645, %643
  %648 = and i64 %646, %644
  %649 = trunc i64 %647 to i32
  %650 = lshr i64 %647, 32
  %651 = trunc i64 %650 to i32
  store i32 %649, i32* %551, align 1
  store i32 %651, i32* %552, align 1
  %652 = trunc i64 %648 to i32
  store i32 %652, i32* %554, align 1
  %653 = lshr i64 %648, 32
  %654 = trunc i64 %653 to i32
  store i32 %654, i32* %557, align 1
  %655 = add i64 %582, -24
  %656 = add i64 %618, 33
  store i64 %656, i64* %PC.i, align 8
  %657 = inttoptr i64 %655 to i32*
  %658 = load i32, i32* %657, align 4
  %659 = bitcast %union.VectorReg* %524 to i32*
  store i32 %658, i32* %659, align 1
  store float 0.000000e+00, float* %532, align 1
  store float 0.000000e+00, float* %535, align 1
  store float 0.000000e+00, float* %538, align 1
  %660 = load <2 x float>, <2 x float>* %579, align 1
  %661 = extractelement <2 x float> %660, i32 0
  %662 = fpext float %661 to double
  store double %662, double* %580, align 1
  %663 = add i64 %618, 41
  store i64 %663, i64* %PC.i, align 8
  %664 = load double, double* %562, align 1
  %665 = fcmp uno double %664, %662
  br i1 %665, label %666, label %676

; <label>:666:                                    ; preds = %block_402ce7
  %667 = fadd double %664, %662
  %668 = bitcast double %667 to i64
  %669 = and i64 %668, 9221120237041090560
  %670 = icmp eq i64 %669, 9218868437227405312
  %671 = and i64 %668, 2251799813685247
  %672 = icmp ne i64 %671, 0
  %673 = and i1 %670, %672
  br i1 %673, label %674, label %682

; <label>:674:                                    ; preds = %666
  %675 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %663, %struct.Memory* %MEMORY.2)
  %.pre6 = load i64, i64* %PC.i, align 8
  %.pre7 = load i8, i8* %38, align 1
  %.pre8 = load i8, i8* %52, align 1
  br label %routine_ucomisd__xmm1___xmm0.exit

; <label>:676:                                    ; preds = %block_402ce7
  %677 = fcmp ogt double %664, %662
  br i1 %677, label %682, label %678

; <label>:678:                                    ; preds = %676
  %679 = fcmp olt double %664, %662
  br i1 %679, label %682, label %680

; <label>:680:                                    ; preds = %678
  %681 = fcmp oeq double %664, %662
  br i1 %681, label %682, label %686

; <label>:682:                                    ; preds = %680, %678, %676, %666
  %683 = phi i8 [ 0, %676 ], [ 0, %678 ], [ 1, %680 ], [ 1, %666 ]
  %684 = phi i8 [ 0, %676 ], [ 0, %678 ], [ 0, %680 ], [ 1, %666 ]
  %685 = phi i8 [ 0, %676 ], [ 1, %678 ], [ 0, %680 ], [ 1, %666 ]
  store i8 %683, i8* %52, align 1
  store i8 %684, i8* %44, align 1
  store i8 %685, i8* %38, align 1
  br label %686

; <label>:686:                                    ; preds = %682, %680
  %687 = phi i8 [ %683, %682 ], [ %606, %680 ]
  %688 = phi i8 [ %685, %682 ], [ %594, %680 ]
  store i8 0, i8* %61, align 1
  store i8 0, i8* %55, align 1
  store i8 0, i8* %49, align 1
  br label %routine_ucomisd__xmm1___xmm0.exit

routine_ucomisd__xmm1___xmm0.exit:                ; preds = %686, %674
  %689 = phi i8 [ %.pre8, %674 ], [ %687, %686 ]
  %690 = phi i8 [ %.pre7, %674 ], [ %688, %686 ]
  %691 = phi i64 [ %.pre6, %674 ], [ %663, %686 ]
  %692 = phi %struct.Memory* [ %675, %674 ], [ %MEMORY.2, %686 ]
  %693 = or i8 %689, %690
  %694 = icmp ne i8 %693, 0
  %.v18 = select i1 %694, i64 49, i64 6
  %695 = add i64 %691, %.v18
  store i64 %695, i64* %3, align 8
  br i1 %694, label %block_.L_402d41, label %block_402d16

block_402d16:                                     ; preds = %routine_ucomisd__xmm1___xmm0.exit
  %696 = load i64, i64* %RBP.i, align 8
  %697 = add i64 %696, -28
  %698 = add i64 %695, 3
  store i64 %698, i64* %PC.i, align 8
  %699 = inttoptr i64 %697 to i32*
  %700 = load i32, i32* %699, align 4
  %701 = zext i32 %700 to i64
  store i64 %701, i64* %RAX.i103, align 8
  %702 = add i64 %696, -36
  %703 = add i64 %695, 6
  store i64 %703, i64* %PC.i, align 8
  %704 = inttoptr i64 %702 to i32*
  store i32 %700, i32* %704, align 4
  %705 = load i64, i64* %RBP.i, align 8
  %706 = add i64 %705, -16
  %707 = load i64, i64* %PC.i, align 8
  %708 = add i64 %707, 4
  store i64 %708, i64* %PC.i, align 8
  %709 = inttoptr i64 %706 to i64*
  %710 = load i64, i64* %709, align 8
  store i64 %710, i64* %RCX.i71, align 8
  %711 = add i64 %705, -28
  %712 = add i64 %707, 8
  store i64 %712, i64* %PC.i, align 8
  %713 = inttoptr i64 %711 to i32*
  %714 = load i32, i32* %713, align 4
  %715 = sext i32 %714 to i64
  store i64 %715, i64* %RDX.i35, align 8
  %716 = shl nsw i64 %715, 2
  %717 = add i64 %716, %710
  %718 = add i64 %707, 13
  store i64 %718, i64* %PC.i, align 8
  %719 = inttoptr i64 %717 to i32*
  %720 = load i32, i32* %719, align 4
  %721 = bitcast [32 x %union.VectorReg]* %507 to i32*
  store i32 %720, i32* %721, align 1
  store float 0.000000e+00, float* %515, align 1
  store float 0.000000e+00, float* %517, align 1
  store float 0.000000e+00, float* %519, align 1
  %722 = load <2 x float>, <2 x float>* %520, align 1
  %723 = extractelement <2 x float> %722, i32 0
  %724 = fpext float %723 to double
  %725 = load i32, i32* bitcast (%G_0x1ec__rip__type* @G_0x1ec__rip_ to i32*), align 8
  %726 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x1ec__rip__type* @G_0x1ec__rip_ to i64), i64 4) to i32*), align 4
  %727 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x1ec__rip__type* @G_0x1ec__rip_ to i64), i64 8) to i32*), align 8
  %728 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x1ec__rip__type* @G_0x1ec__rip_ to i64), i64 12) to i32*), align 4
  %729 = bitcast %union.VectorReg* %524 to i32*
  store i32 %725, i32* %729, align 1
  %730 = bitcast i8* %531 to i32*
  store i32 %726, i32* %730, align 1
  %731 = bitcast i64* %534 to i32*
  store i32 %727, i32* %731, align 1
  %732 = bitcast i8* %537 to i32*
  store i32 %728, i32* %732, align 1
  %733 = bitcast double %724 to i64
  %734 = load i64, i64* %516, align 1
  %735 = load i64, i64* %542, align 1
  %736 = load i64, i64* %544, align 1
  %737 = and i64 %735, %733
  %738 = and i64 %736, %734
  %739 = trunc i64 %737 to i32
  %740 = lshr i64 %737, 32
  %741 = trunc i64 %740 to i32
  store i32 %739, i32* %551, align 1
  store i32 %741, i32* %552, align 1
  %742 = trunc i64 %738 to i32
  store i32 %742, i32* %554, align 1
  %743 = lshr i64 %738, 32
  %744 = trunc i64 %743 to i32
  store i32 %744, i32* %557, align 1
  %745 = load <2 x i32>, <2 x i32>* %558, align 1
  %746 = load <2 x i32>, <2 x i32>* %560, align 1
  %747 = bitcast <2 x i32> %745 to double
  %748 = fptrunc double %747 to float
  store float %748, float* %512, align 1
  %749 = extractelement <2 x i32> %745, i32 1
  store i32 %749, i32* %552, align 1
  %750 = extractelement <2 x i32> %746, i32 0
  store i32 %750, i32* %554, align 1
  %751 = extractelement <2 x i32> %746, i32 1
  store i32 %751, i32* %557, align 1
  %752 = add i64 %705, -24
  %753 = add i64 %707, 37
  store i64 %753, i64* %PC.i, align 8
  %754 = load <2 x float>, <2 x float>* %520, align 1
  %755 = extractelement <2 x float> %754, i32 0
  %756 = inttoptr i64 %752 to float*
  store float %755, float* %756, align 4
  %.pre9 = load i64, i64* %PC.i, align 8
  br label %block_.L_402d41

block_.L_402d41:                                  ; preds = %block_402d16, %routine_ucomisd__xmm1___xmm0.exit
  %757 = phi i64 [ %.pre9, %block_402d16 ], [ %695, %routine_ucomisd__xmm1___xmm0.exit ]
  %758 = load i64, i64* %RBP.i, align 8
  %759 = add i64 %758, -28
  %760 = add i64 %757, 8
  store i64 %760, i64* %PC.i, align 8
  %761 = inttoptr i64 %759 to i32*
  %762 = load i32, i32* %761, align 4
  %763 = add i32 %762, 1
  %764 = zext i32 %763 to i64
  store i64 %764, i64* %RAX.i103, align 8
  %765 = icmp eq i32 %762, -1
  %766 = icmp eq i32 %763, 0
  %767 = or i1 %765, %766
  %768 = zext i1 %767 to i8
  store i8 %768, i8* %38, align 1
  %769 = and i32 %763, 255
  %770 = tail call i32 @llvm.ctpop.i32(i32 %769)
  %771 = trunc i32 %770 to i8
  %772 = and i8 %771, 1
  %773 = xor i8 %772, 1
  store i8 %773, i8* %44, align 1
  %774 = xor i32 %762, %763
  %775 = lshr i32 %774, 4
  %776 = trunc i32 %775 to i8
  %777 = and i8 %776, 1
  store i8 %777, i8* %49, align 1
  %778 = icmp eq i32 %763, 0
  %779 = zext i1 %778 to i8
  store i8 %779, i8* %52, align 1
  %780 = lshr i32 %763, 31
  %781 = trunc i32 %780 to i8
  store i8 %781, i8* %55, align 1
  %782 = lshr i32 %762, 31
  %783 = xor i32 %780, %782
  %784 = add nuw nsw i32 %783, %780
  %785 = icmp eq i32 %784, 2
  %786 = zext i1 %785 to i8
  store i8 %786, i8* %61, align 1
  %787 = add i64 %757, 14
  store i64 %787, i64* %PC.i, align 8
  store i32 %763, i32* %761, align 4
  %788 = load i64, i64* %PC.i, align 8
  %789 = add i64 %788, -116
  store i64 %789, i64* %3, align 8
  br label %block_.L_402cdb

block_.L_402d54:                                  ; preds = %block_.L_402cdb
  %790 = add i64 %618, 5
  br label %block_.L_402d59

block_.L_402d59:                                  ; preds = %block_.L_402d54, %block_.L_402ca8
  %.sink = phi i64 [ %790, %block_.L_402d54 ], [ %497, %block_.L_402ca8 ]
  %RAX.i9.pre-phi = phi i64* [ %RAX.i103, %block_.L_402d54 ], [ %RAX.i222, %block_.L_402ca8 ]
  %791 = phi i64 [ %582, %block_.L_402d54 ], [ %248, %block_.L_402ca8 ]
  %MEMORY.4 = phi %struct.Memory* [ %MEMORY.2, %block_.L_402d54 ], [ %MEMORY.0, %block_.L_402ca8 ]
  %792 = add i64 %791, -36
  %793 = add i64 %.sink, 3
  store i64 %793, i64* %PC.i, align 8
  %794 = inttoptr i64 %792 to i32*
  %795 = load i32, i32* %794, align 4
  %796 = zext i32 %795 to i64
  store i64 %796, i64* %RAX.i9.pre-phi, align 8
  %797 = add i64 %791, -4
  %798 = add i64 %.sink, 6
  store i64 %798, i64* %PC.i, align 8
  %799 = inttoptr i64 %797 to i32*
  store i32 %795, i32* %799, align 4
  %.pre10 = load i64, i64* %PC.i, align 8
  br label %block_.L_402d5f

block_.L_402d5f:                                  ; preds = %block_.L_402d59, %block_402bde, %block_402bc8
  %800 = phi i64 [ %.pre10, %block_.L_402d59 ], [ %98, %block_402bde ], [ %69, %block_402bc8 ]
  %MEMORY.5 = phi %struct.Memory* [ %MEMORY.4, %block_.L_402d59 ], [ %2, %block_402bde ], [ %2, %block_402bc8 ]
  %RAX.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %801 = load i64, i64* %RBP.i, align 8
  %802 = add i64 %801, -4
  %803 = add i64 %800, 3
  store i64 %803, i64* %PC.i, align 8
  %804 = inttoptr i64 %802 to i32*
  %805 = load i32, i32* %804, align 4
  %806 = zext i32 %805 to i64
  store i64 %806, i64* %RAX.i, align 8
  %807 = add i64 %800, 4
  store i64 %807, i64* %PC.i, align 8
  %808 = load i64, i64* %6, align 8
  %809 = add i64 %808, 8
  %810 = inttoptr i64 %808 to i64*
  %811 = load i64, i64* %810, align 8
  store i64 %811, i64* %RBP.i, align 8
  store i64 %809, i64* %6, align 8
  %812 = add i64 %800, 5
  store i64 %812, i64* %PC.i, align 8
  %813 = inttoptr i64 %809 to i64*
  %814 = load i64, i64* %813, align 8
  store i64 %814, i64* %3, align 8
  %815 = add i64 %808, 16
  store i64 %815, i64* %6, align 8
  ret %struct.Memory* %MEMORY.5
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

define %struct.Memory* @routine_movl__edi__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8
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

define %struct.Memory* @routine_movl__edx__MINUS0x14__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x1__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
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

define %struct.Memory* @routine_jge_.L_402bd4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %14 = add i64 %3, %.v
  store i64 %14, i64* %13, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0xffffffff__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 -1, i32* %7, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_402d5f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_402bea(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movl__0x0__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_cmpl__0x1__MINUS0x14__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
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

define %struct.Memory* @routine_je_.L_402cad(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movl__0x1__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
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

define %struct.Memory* @routine_movss___rax____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = bitcast i64* %RAX to i32**
  %6 = load i32*, i32** %5, align 8
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = load i32, i32* %6, align 4
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

define %struct.Memory* @routine_cvtss2sd__xmm0___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
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

define %struct.Memory* @routine_movaps_0x312__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x312__rip__type* @G_0x312__rip_ to i32*), align 8
  %8 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x312__rip__type* @G_0x312__rip_ to i64), i64 4) to i32*), align 4
  %9 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x312__rip__type* @G_0x312__rip_ to i64), i64 8) to i32*), align 8
  %10 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x312__rip__type* @G_0x312__rip_ to i64), i64 12) to i32*), align 4
  %11 = bitcast %union.VectorReg* %3 to i32*
  store i32 %7, i32* %11, align 1
  %12 = getelementptr inbounds i8, i8* %4, i64 4
  %13 = bitcast i8* %12 to i32*
  store i32 %8, i32* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to i32*
  store i32 %9, i32* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to i32*
  store i32 %10, i32* %17, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_pand__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_cvtsd2ss__xmm0___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to <2 x i32>*
  %8 = load <2 x i32>, <2 x i32>* %7, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to <2 x i32>*
  %11 = load <2 x i32>, <2 x i32>* %10, align 1
  %12 = bitcast <2 x i32> %8 to double
  %13 = fptrunc double %12 to float
  %14 = bitcast %union.VectorReg* %3 to float*
  store float %13, float* %14, align 1
  %15 = extractelement <2 x i32> %8, i32 1
  %16 = getelementptr inbounds i8, i8* %4, i64 4
  %17 = bitcast i8* %16 to i32*
  store i32 %15, i32* %17, align 1
  %18 = extractelement <2 x i32> %11, i32 0
  %19 = bitcast i64* %9 to i32*
  store i32 %18, i32* %19, align 1
  %20 = extractelement <2 x i32> %11, i32 1
  %21 = getelementptr inbounds i8, i8* %4, i64 12
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
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

define %struct.Memory* @routine_movl_MINUS0x20__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_addl_MINUS0x14__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
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

define %struct.Memory* @routine_movl__ecx__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__0x1__MINUS0x1c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_MINUS0x8__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -8
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

define %struct.Memory* @routine_jge_.L_402ca8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %14 = add i64 %3, %.v
  store i64 %14, i64* %13, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x20__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss___rax__rcx_4____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %RCX, align 8
  %7 = shl i64 %6, 2
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

define %struct.Memory* @routine_movaps_0x2d1__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x2d1__rip__type* @G_0x2d1__rip_ to i32*), align 8
  %8 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x2d1__rip__type* @G_0x2d1__rip_ to i64), i64 4) to i32*), align 4
  %9 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x2d1__rip__type* @G_0x2d1__rip_ to i64), i64 8) to i32*), align 8
  %10 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x2d1__rip__type* @G_0x2d1__rip_ to i64), i64 12) to i32*), align 4
  %11 = bitcast %union.VectorReg* %3 to i32*
  store i32 %7, i32* %11, align 1
  %12 = getelementptr inbounds i8, i8* %4, i64 4
  %13 = bitcast i8* %12 to i32*
  store i32 %8, i32* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to i32*
  store i32 %9, i32* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to i32*
  store i32 %10, i32* %17, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_MINUS0x18__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
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
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtss2sd__xmm1___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_ucomisd__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
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

define %struct.Memory* @routine_jbe_.L_402c91(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %9, i64 %rel_off1, i64 %rel_off2
  %12 = add i64 %3, %.v
  store i64 %12, i64* %11, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -36
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss___rcx__rdx_4____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %RDX, align 8
  %7 = shl i64 %6, 2
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

define %struct.Memory* @routine_movaps_0x29c__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x29c__rip__type* @G_0x29c__rip_ to i32*), align 8
  %8 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x29c__rip__type* @G_0x29c__rip_ to i64), i64 4) to i32*), align 4
  %9 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x29c__rip__type* @G_0x29c__rip_ to i64), i64 8) to i32*), align 8
  %10 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x29c__rip__type* @G_0x29c__rip_ to i64), i64 12) to i32*), align 4
  %11 = bitcast %union.VectorReg* %3 to i32*
  store i32 %7, i32* %11, align 1
  %12 = getelementptr inbounds i8, i8* %4, i64 4
  %13 = bitcast i8* %12 to i32*
  store i32 %8, i32* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to i32*
  store i32 %9, i32* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to i32*
  store i32 %10, i32* %17, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x14__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20
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

define %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -32
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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

define %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -28
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_402c2b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_402d59(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x24__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movaps_0x259__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x259__rip__type* @G_0x259__rip_ to i32*), align 8
  %8 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x259__rip__type* @G_0x259__rip_ to i64), i64 4) to i32*), align 4
  %9 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x259__rip__type* @G_0x259__rip_ to i64), i64 8) to i32*), align 8
  %10 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x259__rip__type* @G_0x259__rip_ to i64), i64 12) to i32*), align 4
  %11 = bitcast %union.VectorReg* %3 to i32*
  store i32 %7, i32* %11, align 1
  %12 = getelementptr inbounds i8, i8* %4, i64 4
  %13 = bitcast i8* %12 to i32*
  store i32 %8, i32* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to i32*
  store i32 %9, i32* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to i32*
  store i32 %10, i32* %17, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_402d54(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %14 = add i64 %3, %.v
  store i64 %14, i64* %13, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movaps_0x221__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x221__rip__type* @G_0x221__rip_ to i32*), align 8
  %8 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x221__rip__type* @G_0x221__rip_ to i64), i64 4) to i32*), align 4
  %9 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x221__rip__type* @G_0x221__rip_ to i64), i64 8) to i32*), align 8
  %10 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x221__rip__type* @G_0x221__rip_ to i64), i64 12) to i32*), align 4
  %11 = bitcast %union.VectorReg* %3 to i32*
  store i32 %7, i32* %11, align 1
  %12 = getelementptr inbounds i8, i8* %4, i64 4
  %13 = bitcast i8* %12 to i32*
  store i32 %8, i32* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to i32*
  store i32 %9, i32* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to i32*
  store i32 %10, i32* %17, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jbe_.L_402d41(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %9, i64 %rel_off1, i64 %rel_off2
  %12 = add i64 %3, %.v
  store i64 %12, i64* %11, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movaps_0x1ec__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x1ec__rip__type* @G_0x1ec__rip_ to i32*), align 8
  %8 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x1ec__rip__type* @G_0x1ec__rip_ to i64), i64 4) to i32*), align 4
  %9 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x1ec__rip__type* @G_0x1ec__rip_ to i64), i64 8) to i32*), align 8
  %10 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x1ec__rip__type* @G_0x1ec__rip_ to i64), i64 12) to i32*), align 4
  %11 = bitcast %union.VectorReg* %3 to i32*
  store i32 %7, i32* %11, align 1
  %12 = getelementptr inbounds i8, i8* %4, i64 4
  %13 = bitcast i8* %12 to i32*
  store i32 %8, i32* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to i32*
  store i32 %9, i32* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to i32*
  store i32 %10, i32* %17, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_402d46(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_402cdb(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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
