; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x1ec__rip__4205876__type = type <{ [16 x i8] }>
%G_0x221__rip__4205823__type = type <{ [16 x i8] }>
%G_0x259__rip__4205767__type = type <{ [16 x i8] }>
%G_0x29c__rip__4205700__type = type <{ [16 x i8] }>
%G_0x2d1__rip__4205647__type = type <{ [16 x i8] }>
%G_0x312__rip__4205582__type = type <{ [16 x i8] }>
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
@G_0x1ec__rip__4205876_ = global %G_0x1ec__rip__4205876__type zeroinitializer
@G_0x221__rip__4205823_ = global %G_0x221__rip__4205823__type zeroinitializer
@G_0x259__rip__4205767_ = global %G_0x259__rip__4205767__type zeroinitializer
@G_0x29c__rip__4205700_ = global %G_0x29c__rip__4205700__type zeroinitializer
@G_0x2d1__rip__4205647_ = global %G_0x2d1__rip__4205647__type zeroinitializer
@G_0x312__rip__4205582_ = global %G_0x312__rip__4205582__type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: alwaysinline
define %struct.Memory* @idamax(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i = bitcast %union.anon* %11 to i32*
  %12 = add i64 %7, -16
  %13 = load i32, i32* %EDI.i, align 4
  %14 = add i64 %10, 6
  store i64 %14, i64* %3, align 8
  %15 = inttoptr i64 %12 to i32*
  store i32 %13, i32* %15, align 4
  %RSI.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %16 = load i64, i64* %RBP.i, align 8
  %17 = add i64 %16, -16
  %18 = load i64, i64* %RSI.i, align 8
  %19 = load i64, i64* %3, align 8
  %20 = add i64 %19, 4
  store i64 %20, i64* %3, align 8
  %21 = inttoptr i64 %17 to i64*
  store i64 %18, i64* %21, align 8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX.i = bitcast %union.anon* %22 to i32*
  %23 = load i64, i64* %RBP.i, align 8
  %24 = add i64 %23, -20
  %25 = load i32, i32* %EDX.i, align 4
  %26 = load i64, i64* %3, align 8
  %27 = add i64 %26, 3
  store i64 %27, i64* %3, align 8
  %28 = inttoptr i64 %24 to i32*
  store i32 %25, i32* %28, align 4
  %29 = load i64, i64* %RBP.i, align 8
  %30 = add i64 %29, -8
  %31 = load i64, i64* %3, align 8
  %32 = add i64 %31, 4
  store i64 %32, i64* %3, align 8
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
  store i64 %66, i64* %3, align 8
  %67 = inttoptr i64 %65 to i32*
  store i32 -1, i32* %67, align 4
  %68 = load i64, i64* %3, align 8
  %69 = add i64 %68, 400
  store i64 %69, i64* %3, align 8
  br label %block_.L_402d5f

block_.L_402bd4:                                  ; preds = %entry
  %70 = add i64 %64, 4
  store i64 %70, i64* %3, align 8
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
  store i64 %95, i64* %3, align 8
  %96 = inttoptr i64 %94 to i32*
  store i32 0, i32* %96, align 4
  %97 = load i64, i64* %3, align 8
  %98 = add i64 %97, 378
  store i64 %98, i64* %3, align 8
  br label %block_.L_402d5f

block_.L_402bea:                                  ; preds = %block_.L_402bd4
  %99 = add i64 %29, -20
  %100 = add i64 %93, 4
  store i64 %100, i64* %3, align 8
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
  store i64 %126, i64* %3, align 8
  %127 = inttoptr i64 %125 to i32*
  store i32 1, i32* %127, align 4
  %RAX.i222 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %128 = load i64, i64* %RBP.i, align 8
  %129 = add i64 %128, -16
  %130 = load i64, i64* %3, align 8
  %131 = add i64 %130, 4
  store i64 %131, i64* %3, align 8
  %132 = inttoptr i64 %129 to i64*
  %133 = load i64, i64* %132, align 8
  store i64 %133, i64* %RAX.i222, align 8
  %134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %135 = bitcast [32 x %union.VectorReg]* %134 to i8*
  %136 = add i64 %130, 8
  store i64 %136, i64* %3, align 8
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
  %153 = load i32, i32* bitcast (%G_0x312__rip__4205582__type* @G_0x312__rip__4205582_ to i32*), align 8
  %154 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x312__rip__4205582__type* @G_0x312__rip__4205582_ to i64), i64 4) to i32*), align 4
  %155 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x312__rip__4205582__type* @G_0x312__rip__4205582_ to i64), i64 8) to i32*), align 8
  %156 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x312__rip__4205582__type* @G_0x312__rip__4205582_ to i64), i64 12) to i32*), align 4
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
  %171 = load i64, i64* %161, align 1
  %172 = and i64 %170, %167
  %173 = and i64 %171, %168
  %174 = trunc i64 %172 to i32
  %175 = lshr i64 %172, 32
  %176 = trunc i64 %175 to i32
  store i32 %174, i32* %140, align 1
  %177 = bitcast i8* %141 to i32*
  store i32 %176, i32* %177, align 1
  %178 = trunc i64 %173 to i32
  %179 = bitcast i64* %143 to i32*
  store i32 %178, i32* %179, align 1
  %180 = lshr i64 %173, 32
  %181 = trunc i64 %180 to i32
  %182 = bitcast i8* %145 to i32*
  store i32 %181, i32* %182, align 1
  %183 = bitcast [32 x %union.VectorReg]* %134 to <2 x i32>*
  %184 = load <2 x i32>, <2 x i32>* %183, align 1
  %185 = bitcast i64* %143 to <2 x i32>*
  %186 = load <2 x i32>, <2 x i32>* %185, align 1
  %187 = bitcast [32 x %union.VectorReg]* %134 to double*
  %188 = bitcast <2 x i32> %184 to double
  %189 = fptrunc double %188 to float
  store float %189, float* %139, align 1
  %190 = extractelement <2 x i32> %184, i32 1
  store i32 %190, i32* %177, align 1
  %191 = extractelement <2 x i32> %186, i32 0
  store i32 %191, i32* %179, align 1
  %192 = extractelement <2 x i32> %186, i32 1
  store i32 %192, i32* %182, align 1
  %193 = load i64, i64* %RBP.i, align 8
  %194 = add i64 %193, -24
  %195 = add i64 %130, 32
  store i64 %195, i64* %3, align 8
  %196 = load <2 x float>, <2 x float>* %147, align 1
  %197 = extractelement <2 x float> %196, i32 0
  %198 = inttoptr i64 %194 to float*
  store float %197, float* %198, align 4
  %RCX.i202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %199 = load i64, i64* %RBP.i, align 8
  %200 = add i64 %199, -32
  %201 = load i64, i64* %3, align 8
  %202 = add i64 %201, 3
  store i64 %202, i64* %3, align 8
  %203 = inttoptr i64 %200 to i32*
  %204 = load i32, i32* %203, align 4
  %205 = zext i32 %204 to i64
  store i64 %205, i64* %RCX.i202, align 8
  %206 = add i64 %199, -20
  %207 = add i64 %201, 6
  store i64 %207, i64* %3, align 8
  %208 = inttoptr i64 %206 to i32*
  %209 = load i32, i32* %208, align 4
  %210 = add i32 %209, %204
  %211 = zext i32 %210 to i64
  store i64 %211, i64* %RCX.i202, align 8
  %212 = icmp ult i32 %210, %204
  %213 = icmp ult i32 %210, %209
  %214 = or i1 %212, %213
  %215 = zext i1 %214 to i8
  store i8 %215, i8* %38, align 1
  %216 = and i32 %210, 255
  %217 = tail call i32 @llvm.ctpop.i32(i32 %216)
  %218 = trunc i32 %217 to i8
  %219 = and i8 %218, 1
  %220 = xor i8 %219, 1
  store i8 %220, i8* %44, align 1
  %221 = xor i32 %209, %204
  %222 = xor i32 %221, %210
  %223 = lshr i32 %222, 4
  %224 = trunc i32 %223 to i8
  %225 = and i8 %224, 1
  store i8 %225, i8* %49, align 1
  %226 = icmp eq i32 %210, 0
  %227 = zext i1 %226 to i8
  store i8 %227, i8* %52, align 1
  %228 = lshr i32 %210, 31
  %229 = trunc i32 %228 to i8
  store i8 %229, i8* %55, align 1
  %230 = lshr i32 %204, 31
  %231 = lshr i32 %209, 31
  %232 = xor i32 %228, %230
  %233 = xor i32 %228, %231
  %234 = add nuw nsw i32 %232, %233
  %235 = icmp eq i32 %234, 2
  %236 = zext i1 %235 to i8
  store i8 %236, i8* %61, align 1
  %237 = add i64 %201, 9
  store i64 %237, i64* %3, align 8
  store i32 %210, i32* %203, align 4
  %238 = load i64, i64* %RBP.i, align 8
  %239 = add i64 %238, -28
  %240 = load i64, i64* %3, align 8
  %241 = add i64 %240, 7
  store i64 %241, i64* %3, align 8
  %242 = inttoptr i64 %239 to i32*
  store i32 1, i32* %242, align 4
  %243 = bitcast %union.VectorReg* %151 to <2 x float>*
  %244 = bitcast %union.VectorReg* %151 to double*
  %RDX.i145 = getelementptr inbounds %union.anon, %union.anon* %22, i64 0, i32 0
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_402c2b

block_.L_402c2b:                                  ; preds = %block_.L_402c91, %block_402bf4
  %245 = phi i64 [ %.pre, %block_402bf4 ], [ %482, %block_.L_402c91 ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_402bf4 ], [ %352, %block_.L_402c91 ]
  %246 = load i64, i64* %RBP.i, align 8
  %247 = add i64 %246, -28
  %248 = add i64 %245, 3
  store i64 %248, i64* %3, align 8
  %249 = inttoptr i64 %247 to i32*
  %250 = load i32, i32* %249, align 4
  %251 = zext i32 %250 to i64
  store i64 %251, i64* %RAX.i222, align 8
  %252 = add i64 %246, -8
  %253 = add i64 %245, 6
  store i64 %253, i64* %3, align 8
  %254 = inttoptr i64 %252 to i32*
  %255 = load i32, i32* %254, align 4
  %256 = sub i32 %250, %255
  %257 = icmp ult i32 %250, %255
  %258 = zext i1 %257 to i8
  store i8 %258, i8* %38, align 1
  %259 = and i32 %256, 255
  %260 = tail call i32 @llvm.ctpop.i32(i32 %259)
  %261 = trunc i32 %260 to i8
  %262 = and i8 %261, 1
  %263 = xor i8 %262, 1
  store i8 %263, i8* %44, align 1
  %264 = xor i32 %255, %250
  %265 = xor i32 %264, %256
  %266 = lshr i32 %265, 4
  %267 = trunc i32 %266 to i8
  %268 = and i8 %267, 1
  store i8 %268, i8* %49, align 1
  %269 = icmp eq i32 %256, 0
  %270 = zext i1 %269 to i8
  store i8 %270, i8* %52, align 1
  %271 = lshr i32 %256, 31
  %272 = trunc i32 %271 to i8
  store i8 %272, i8* %55, align 1
  %273 = lshr i32 %250, 31
  %274 = lshr i32 %255, 31
  %275 = xor i32 %274, %273
  %276 = xor i32 %271, %273
  %277 = add nuw nsw i32 %276, %275
  %278 = icmp eq i32 %277, 2
  %279 = zext i1 %278 to i8
  store i8 %279, i8* %61, align 1
  %280 = icmp ne i8 %272, 0
  %281 = xor i1 %280, %278
  %.v15 = select i1 %281, i64 12, i64 125
  %282 = add i64 %245, %.v15
  store i64 %282, i64* %3, align 8
  br i1 %281, label %block_402c37, label %block_.L_402ca8

block_402c37:                                     ; preds = %block_.L_402c2b
  %283 = add i64 %246, -16
  %284 = add i64 %282, 4
  store i64 %284, i64* %3, align 8
  %285 = inttoptr i64 %283 to i64*
  %286 = load i64, i64* %285, align 8
  store i64 %286, i64* %RAX.i222, align 8
  %287 = add i64 %246, -32
  %288 = add i64 %282, 8
  store i64 %288, i64* %3, align 8
  %289 = inttoptr i64 %287 to i32*
  %290 = load i32, i32* %289, align 4
  %291 = sext i32 %290 to i64
  store i64 %291, i64* %RCX.i202, align 8
  %292 = shl nsw i64 %291, 2
  %293 = add i64 %292, %286
  %294 = add i64 %282, 13
  store i64 %294, i64* %3, align 8
  %295 = inttoptr i64 %293 to i32*
  %296 = load i32, i32* %295, align 4
  store i32 %296, i32* %140, align 1
  store float 0.000000e+00, float* %142, align 1
  store float 0.000000e+00, float* %144, align 1
  store float 0.000000e+00, float* %146, align 1
  %297 = load <2 x float>, <2 x float>* %147, align 1
  %298 = extractelement <2 x float> %297, i32 0
  %299 = fpext float %298 to double
  %300 = load i32, i32* bitcast (%G_0x2d1__rip__4205647__type* @G_0x2d1__rip__4205647_ to i32*), align 8
  %301 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x2d1__rip__4205647__type* @G_0x2d1__rip__4205647_ to i64), i64 4) to i32*), align 4
  %302 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x2d1__rip__4205647__type* @G_0x2d1__rip__4205647_ to i64), i64 8) to i32*), align 8
  %303 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x2d1__rip__4205647__type* @G_0x2d1__rip__4205647_ to i64), i64 12) to i32*), align 4
  store i32 %300, i32* %157, align 1
  store i32 %301, i32* %160, align 1
  store i32 %302, i32* %163, align 1
  store i32 %303, i32* %166, align 1
  %304 = bitcast double %299 to i64
  %305 = load i64, i64* %143, align 1
  %306 = load i64, i64* %169, align 1
  %307 = load i64, i64* %161, align 1
  %308 = and i64 %306, %304
  %309 = and i64 %307, %305
  %310 = trunc i64 %308 to i32
  %311 = lshr i64 %308, 32
  %312 = trunc i64 %311 to i32
  store i32 %310, i32* %140, align 1
  store i32 %312, i32* %177, align 1
  %313 = trunc i64 %309 to i32
  store i32 %313, i32* %179, align 1
  %314 = lshr i64 %309, 32
  %315 = trunc i64 %314 to i32
  store i32 %315, i32* %182, align 1
  %316 = add i64 %246, -24
  %317 = add i64 %282, 33
  store i64 %317, i64* %3, align 8
  %318 = inttoptr i64 %316 to i32*
  %319 = load i32, i32* %318, align 4
  store i32 %319, i32* %157, align 1
  store float 0.000000e+00, float* %159, align 1
  store float 0.000000e+00, float* %162, align 1
  store float 0.000000e+00, float* %165, align 1
  %320 = load <2 x float>, <2 x float>* %243, align 1
  %321 = extractelement <2 x float> %320, i32 0
  %322 = fpext float %321 to double
  store double %322, double* %244, align 1
  %323 = add i64 %282, 41
  store i64 %323, i64* %3, align 8
  %324 = load double, double* %187, align 1
  %325 = fcmp uno double %324, %322
  br i1 %325, label %326, label %336

; <label>:326:                                    ; preds = %block_402c37
  %327 = fadd double %324, %322
  %328 = bitcast double %327 to i64
  %329 = and i64 %328, 9221120237041090560
  %330 = icmp eq i64 %329, 9218868437227405312
  %331 = and i64 %328, 2251799813685247
  %332 = icmp ne i64 %331, 0
  %333 = and i1 %330, %332
  br i1 %333, label %334, label %342

; <label>:334:                                    ; preds = %326
  %335 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %323, %struct.Memory* %MEMORY.0)
  %.pre1 = load i64, i64* %3, align 8
  %.pre2 = load i8, i8* %38, align 1
  %.pre3 = load i8, i8* %52, align 1
  br label %routine_ucomisd__xmm1___xmm0.exit160

; <label>:336:                                    ; preds = %block_402c37
  %337 = fcmp ogt double %324, %322
  br i1 %337, label %342, label %338

; <label>:338:                                    ; preds = %336
  %339 = fcmp olt double %324, %322
  br i1 %339, label %342, label %340

; <label>:340:                                    ; preds = %338
  %341 = fcmp oeq double %324, %322
  br i1 %341, label %342, label %346

; <label>:342:                                    ; preds = %340, %338, %336, %326
  %343 = phi i8 [ 0, %336 ], [ 0, %338 ], [ 1, %340 ], [ 1, %326 ]
  %344 = phi i8 [ 0, %336 ], [ 0, %338 ], [ 0, %340 ], [ 1, %326 ]
  %345 = phi i8 [ 0, %336 ], [ 1, %338 ], [ 0, %340 ], [ 1, %326 ]
  store i8 %343, i8* %52, align 1
  store i8 %344, i8* %44, align 1
  store i8 %345, i8* %38, align 1
  br label %346

; <label>:346:                                    ; preds = %342, %340
  %347 = phi i8 [ %343, %342 ], [ %270, %340 ]
  %348 = phi i8 [ %345, %342 ], [ %258, %340 ]
  store i8 0, i8* %61, align 1
  store i8 0, i8* %55, align 1
  store i8 0, i8* %49, align 1
  br label %routine_ucomisd__xmm1___xmm0.exit160

routine_ucomisd__xmm1___xmm0.exit160:             ; preds = %346, %334
  %349 = phi i8 [ %.pre3, %334 ], [ %347, %346 ]
  %350 = phi i8 [ %.pre2, %334 ], [ %348, %346 ]
  %351 = phi i64 [ %.pre1, %334 ], [ %323, %346 ]
  %352 = phi %struct.Memory* [ %335, %334 ], [ %MEMORY.0, %346 ]
  %353 = or i8 %349, %350
  %354 = icmp ne i8 %353, 0
  %.v16 = select i1 %354, i64 49, i64 6
  %355 = add i64 %351, %.v16
  store i64 %355, i64* %3, align 8
  br i1 %354, label %block_.L_402c91, label %block_402c66

block_402c66:                                     ; preds = %routine_ucomisd__xmm1___xmm0.exit160
  %356 = load i64, i64* %RBP.i, align 8
  %357 = add i64 %356, -28
  %358 = add i64 %355, 3
  store i64 %358, i64* %3, align 8
  %359 = inttoptr i64 %357 to i32*
  %360 = load i32, i32* %359, align 4
  %361 = zext i32 %360 to i64
  store i64 %361, i64* %RAX.i222, align 8
  %362 = add i64 %356, -36
  %363 = add i64 %355, 6
  store i64 %363, i64* %3, align 8
  %364 = inttoptr i64 %362 to i32*
  store i32 %360, i32* %364, align 4
  %365 = load i64, i64* %RBP.i, align 8
  %366 = add i64 %365, -16
  %367 = load i64, i64* %3, align 8
  %368 = add i64 %367, 4
  store i64 %368, i64* %3, align 8
  %369 = inttoptr i64 %366 to i64*
  %370 = load i64, i64* %369, align 8
  store i64 %370, i64* %RCX.i202, align 8
  %371 = add i64 %365, -32
  %372 = add i64 %367, 8
  store i64 %372, i64* %3, align 8
  %373 = inttoptr i64 %371 to i32*
  %374 = load i32, i32* %373, align 4
  %375 = sext i32 %374 to i64
  store i64 %375, i64* %RDX.i145, align 8
  %376 = shl nsw i64 %375, 2
  %377 = add i64 %376, %370
  %378 = add i64 %367, 13
  store i64 %378, i64* %3, align 8
  %379 = inttoptr i64 %377 to i32*
  %380 = load i32, i32* %379, align 4
  store i32 %380, i32* %140, align 1
  store float 0.000000e+00, float* %142, align 1
  store float 0.000000e+00, float* %144, align 1
  store float 0.000000e+00, float* %146, align 1
  %381 = load <2 x float>, <2 x float>* %147, align 1
  %382 = extractelement <2 x float> %381, i32 0
  %383 = fpext float %382 to double
  %384 = load i32, i32* bitcast (%G_0x29c__rip__4205700__type* @G_0x29c__rip__4205700_ to i32*), align 8
  %385 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x29c__rip__4205700__type* @G_0x29c__rip__4205700_ to i64), i64 4) to i32*), align 4
  %386 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x29c__rip__4205700__type* @G_0x29c__rip__4205700_ to i64), i64 8) to i32*), align 8
  %387 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x29c__rip__4205700__type* @G_0x29c__rip__4205700_ to i64), i64 12) to i32*), align 4
  store i32 %384, i32* %157, align 1
  store i32 %385, i32* %160, align 1
  store i32 %386, i32* %163, align 1
  store i32 %387, i32* %166, align 1
  %388 = bitcast double %383 to i64
  %389 = load i64, i64* %143, align 1
  %390 = load i64, i64* %169, align 1
  %391 = load i64, i64* %161, align 1
  %392 = and i64 %390, %388
  %393 = and i64 %391, %389
  %394 = trunc i64 %392 to i32
  %395 = lshr i64 %392, 32
  %396 = trunc i64 %395 to i32
  store i32 %394, i32* %140, align 1
  store i32 %396, i32* %177, align 1
  %397 = trunc i64 %393 to i32
  store i32 %397, i32* %179, align 1
  %398 = lshr i64 %393, 32
  %399 = trunc i64 %398 to i32
  store i32 %399, i32* %182, align 1
  %400 = load <2 x i32>, <2 x i32>* %183, align 1
  %401 = load <2 x i32>, <2 x i32>* %185, align 1
  %402 = bitcast <2 x i32> %400 to double
  %403 = fptrunc double %402 to float
  store float %403, float* %139, align 1
  %404 = extractelement <2 x i32> %400, i32 1
  store i32 %404, i32* %177, align 1
  %405 = extractelement <2 x i32> %401, i32 0
  store i32 %405, i32* %179, align 1
  %406 = extractelement <2 x i32> %401, i32 1
  store i32 %406, i32* %182, align 1
  %407 = add i64 %365, -24
  %408 = add i64 %367, 37
  store i64 %408, i64* %3, align 8
  %409 = load <2 x float>, <2 x float>* %147, align 1
  %410 = extractelement <2 x float> %409, i32 0
  %411 = inttoptr i64 %407 to float*
  store float %410, float* %411, align 4
  %.pre4 = load i64, i64* %3, align 8
  br label %block_.L_402c91

block_.L_402c91:                                  ; preds = %block_402c66, %routine_ucomisd__xmm1___xmm0.exit160
  %412 = phi i64 [ %.pre4, %block_402c66 ], [ %355, %routine_ucomisd__xmm1___xmm0.exit160 ]
  %413 = load i64, i64* %RBP.i, align 8
  %414 = add i64 %413, -32
  %415 = add i64 %412, 3
  store i64 %415, i64* %3, align 8
  %416 = inttoptr i64 %414 to i32*
  %417 = load i32, i32* %416, align 4
  %418 = zext i32 %417 to i64
  store i64 %418, i64* %RAX.i222, align 8
  %419 = add i64 %413, -20
  %420 = add i64 %412, 6
  store i64 %420, i64* %3, align 8
  %421 = inttoptr i64 %419 to i32*
  %422 = load i32, i32* %421, align 4
  %423 = add i32 %422, %417
  %424 = zext i32 %423 to i64
  store i64 %424, i64* %RAX.i222, align 8
  %425 = icmp ult i32 %423, %417
  %426 = icmp ult i32 %423, %422
  %427 = or i1 %425, %426
  %428 = zext i1 %427 to i8
  store i8 %428, i8* %38, align 1
  %429 = and i32 %423, 255
  %430 = tail call i32 @llvm.ctpop.i32(i32 %429)
  %431 = trunc i32 %430 to i8
  %432 = and i8 %431, 1
  %433 = xor i8 %432, 1
  store i8 %433, i8* %44, align 1
  %434 = xor i32 %422, %417
  %435 = xor i32 %434, %423
  %436 = lshr i32 %435, 4
  %437 = trunc i32 %436 to i8
  %438 = and i8 %437, 1
  store i8 %438, i8* %49, align 1
  %439 = icmp eq i32 %423, 0
  %440 = zext i1 %439 to i8
  store i8 %440, i8* %52, align 1
  %441 = lshr i32 %423, 31
  %442 = trunc i32 %441 to i8
  store i8 %442, i8* %55, align 1
  %443 = lshr i32 %417, 31
  %444 = lshr i32 %422, 31
  %445 = xor i32 %441, %443
  %446 = xor i32 %441, %444
  %447 = add nuw nsw i32 %445, %446
  %448 = icmp eq i32 %447, 2
  %449 = zext i1 %448 to i8
  store i8 %449, i8* %61, align 1
  %450 = add i64 %412, 9
  store i64 %450, i64* %3, align 8
  store i32 %423, i32* %416, align 4
  %451 = load i64, i64* %RBP.i, align 8
  %452 = add i64 %451, -28
  %453 = load i64, i64* %3, align 8
  %454 = add i64 %453, 3
  store i64 %454, i64* %3, align 8
  %455 = inttoptr i64 %452 to i32*
  %456 = load i32, i32* %455, align 4
  %457 = add i32 %456, 1
  %458 = zext i32 %457 to i64
  store i64 %458, i64* %RAX.i222, align 8
  %459 = icmp eq i32 %456, -1
  %460 = icmp eq i32 %457, 0
  %461 = or i1 %459, %460
  %462 = zext i1 %461 to i8
  store i8 %462, i8* %38, align 1
  %463 = and i32 %457, 255
  %464 = tail call i32 @llvm.ctpop.i32(i32 %463)
  %465 = trunc i32 %464 to i8
  %466 = and i8 %465, 1
  %467 = xor i8 %466, 1
  store i8 %467, i8* %44, align 1
  %468 = xor i32 %456, %457
  %469 = lshr i32 %468, 4
  %470 = trunc i32 %469 to i8
  %471 = and i8 %470, 1
  store i8 %471, i8* %49, align 1
  %472 = zext i1 %460 to i8
  store i8 %472, i8* %52, align 1
  %473 = lshr i32 %457, 31
  %474 = trunc i32 %473 to i8
  store i8 %474, i8* %55, align 1
  %475 = lshr i32 %456, 31
  %476 = xor i32 %473, %475
  %477 = add nuw nsw i32 %476, %473
  %478 = icmp eq i32 %477, 2
  %479 = zext i1 %478 to i8
  store i8 %479, i8* %61, align 1
  %480 = add i64 %453, 9
  store i64 %480, i64* %3, align 8
  store i32 %457, i32* %455, align 4
  %481 = load i64, i64* %3, align 8
  %482 = add i64 %481, -120
  store i64 %482, i64* %3, align 8
  br label %block_.L_402c2b

block_.L_402ca8:                                  ; preds = %block_.L_402c2b
  %483 = add i64 %282, 177
  br label %block_.L_402d59

block_.L_402cad:                                  ; preds = %block_.L_402bea
  %484 = add i64 %29, -36
  %485 = add i64 %124, 7
  store i64 %485, i64* %3, align 8
  %486 = inttoptr i64 %484 to i32*
  store i32 0, i32* %486, align 4
  %RAX.i103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %487 = load i64, i64* %RBP.i, align 8
  %488 = add i64 %487, -16
  %489 = load i64, i64* %3, align 8
  %490 = add i64 %489, 4
  store i64 %490, i64* %3, align 8
  %491 = inttoptr i64 %488 to i64*
  %492 = load i64, i64* %491, align 8
  store i64 %492, i64* %RAX.i103, align 8
  %493 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %494 = bitcast [32 x %union.VectorReg]* %493 to i8*
  %495 = add i64 %489, 8
  store i64 %495, i64* %3, align 8
  %496 = inttoptr i64 %492 to i32*
  %497 = load i32, i32* %496, align 4
  %498 = bitcast [32 x %union.VectorReg]* %493 to float*
  %499 = bitcast [32 x %union.VectorReg]* %493 to i32*
  store i32 %497, i32* %499, align 1
  %500 = getelementptr inbounds i8, i8* %494, i64 4
  %501 = bitcast i8* %500 to float*
  store float 0.000000e+00, float* %501, align 1
  %502 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %503 = bitcast i64* %502 to float*
  store float 0.000000e+00, float* %503, align 1
  %504 = getelementptr inbounds i8, i8* %494, i64 12
  %505 = bitcast i8* %504 to float*
  store float 0.000000e+00, float* %505, align 1
  %506 = bitcast [32 x %union.VectorReg]* %493 to <2 x float>*
  %507 = load <2 x float>, <2 x float>* %506, align 1
  %508 = extractelement <2 x float> %507, i32 0
  %509 = fpext float %508 to double
  %510 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %511 = bitcast %union.VectorReg* %510 to i8*
  %512 = load i32, i32* bitcast (%G_0x259__rip__4205767__type* @G_0x259__rip__4205767_ to i32*), align 8
  %513 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x259__rip__4205767__type* @G_0x259__rip__4205767_ to i64), i64 4) to i32*), align 4
  %514 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x259__rip__4205767__type* @G_0x259__rip__4205767_ to i64), i64 8) to i32*), align 8
  %515 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x259__rip__4205767__type* @G_0x259__rip__4205767_ to i64), i64 12) to i32*), align 4
  %516 = bitcast %union.VectorReg* %510 to i32*
  store i32 %512, i32* %516, align 1
  %517 = getelementptr inbounds i8, i8* %511, i64 4
  %518 = bitcast i8* %517 to float*
  %519 = bitcast i8* %517 to i32*
  store i32 %513, i32* %519, align 1
  %520 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %521 = bitcast i64* %520 to float*
  %522 = bitcast i64* %520 to i32*
  store i32 %514, i32* %522, align 1
  %523 = getelementptr inbounds i8, i8* %511, i64 12
  %524 = bitcast i8* %523 to float*
  %525 = bitcast i8* %523 to i32*
  store i32 %515, i32* %525, align 1
  %526 = bitcast double %509 to i64
  %527 = load i64, i64* %502, align 1
  %528 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %510, i64 0, i32 0, i32 0, i32 0, i64 0
  %529 = load i64, i64* %528, align 1
  %530 = load i64, i64* %520, align 1
  %531 = and i64 %529, %526
  %532 = and i64 %530, %527
  %533 = trunc i64 %531 to i32
  %534 = lshr i64 %531, 32
  %535 = trunc i64 %534 to i32
  store i32 %533, i32* %499, align 1
  %536 = bitcast i8* %500 to i32*
  store i32 %535, i32* %536, align 1
  %537 = trunc i64 %532 to i32
  %538 = bitcast i64* %502 to i32*
  store i32 %537, i32* %538, align 1
  %539 = lshr i64 %532, 32
  %540 = trunc i64 %539 to i32
  %541 = bitcast i8* %504 to i32*
  store i32 %540, i32* %541, align 1
  %542 = bitcast [32 x %union.VectorReg]* %493 to <2 x i32>*
  %543 = load <2 x i32>, <2 x i32>* %542, align 1
  %544 = bitcast i64* %502 to <2 x i32>*
  %545 = load <2 x i32>, <2 x i32>* %544, align 1
  %546 = bitcast [32 x %union.VectorReg]* %493 to double*
  %547 = bitcast <2 x i32> %543 to double
  %548 = fptrunc double %547 to float
  store float %548, float* %498, align 1
  %549 = extractelement <2 x i32> %543, i32 1
  store i32 %549, i32* %536, align 1
  %550 = extractelement <2 x i32> %545, i32 0
  store i32 %550, i32* %538, align 1
  %551 = extractelement <2 x i32> %545, i32 1
  store i32 %551, i32* %541, align 1
  %552 = load i64, i64* %RBP.i, align 8
  %553 = add i64 %552, -24
  %554 = add i64 %489, 32
  store i64 %554, i64* %3, align 8
  %555 = load <2 x float>, <2 x float>* %506, align 1
  %556 = extractelement <2 x float> %555, i32 0
  %557 = inttoptr i64 %553 to float*
  store float %556, float* %557, align 4
  %558 = load i64, i64* %RBP.i, align 8
  %559 = add i64 %558, -28
  %560 = load i64, i64* %3, align 8
  %561 = add i64 %560, 7
  store i64 %561, i64* %3, align 8
  %562 = inttoptr i64 %559 to i32*
  store i32 1, i32* %562, align 4
  %RCX.i71 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %563 = bitcast %union.VectorReg* %510 to <2 x float>*
  %564 = bitcast %union.VectorReg* %510 to double*
  %RDX.i35 = getelementptr inbounds %union.anon, %union.anon* %22, i64 0, i32 0
  %.pre5 = load i64, i64* %3, align 8
  br label %block_.L_402cdb

block_.L_402cdb:                                  ; preds = %block_.L_402d41, %block_.L_402cad
  %565 = phi i64 [ %.pre5, %block_.L_402cad ], [ %761, %block_.L_402d41 ]
  %MEMORY.2 = phi %struct.Memory* [ %2, %block_.L_402cad ], [ %670, %block_.L_402d41 ]
  %566 = load i64, i64* %RBP.i, align 8
  %567 = add i64 %566, -28
  %568 = add i64 %565, 3
  store i64 %568, i64* %3, align 8
  %569 = inttoptr i64 %567 to i32*
  %570 = load i32, i32* %569, align 4
  %571 = zext i32 %570 to i64
  store i64 %571, i64* %RAX.i103, align 8
  %572 = add i64 %566, -8
  %573 = add i64 %565, 6
  store i64 %573, i64* %3, align 8
  %574 = inttoptr i64 %572 to i32*
  %575 = load i32, i32* %574, align 4
  %576 = sub i32 %570, %575
  %577 = icmp ult i32 %570, %575
  %578 = zext i1 %577 to i8
  store i8 %578, i8* %38, align 1
  %579 = and i32 %576, 255
  %580 = tail call i32 @llvm.ctpop.i32(i32 %579)
  %581 = trunc i32 %580 to i8
  %582 = and i8 %581, 1
  %583 = xor i8 %582, 1
  store i8 %583, i8* %44, align 1
  %584 = xor i32 %575, %570
  %585 = xor i32 %584, %576
  %586 = lshr i32 %585, 4
  %587 = trunc i32 %586 to i8
  %588 = and i8 %587, 1
  store i8 %588, i8* %49, align 1
  %589 = icmp eq i32 %576, 0
  %590 = zext i1 %589 to i8
  store i8 %590, i8* %52, align 1
  %591 = lshr i32 %576, 31
  %592 = trunc i32 %591 to i8
  store i8 %592, i8* %55, align 1
  %593 = lshr i32 %570, 31
  %594 = lshr i32 %575, 31
  %595 = xor i32 %594, %593
  %596 = xor i32 %591, %593
  %597 = add nuw nsw i32 %596, %595
  %598 = icmp eq i32 %597, 2
  %599 = zext i1 %598 to i8
  store i8 %599, i8* %61, align 1
  %600 = icmp ne i8 %592, 0
  %601 = xor i1 %600, %598
  %.v17 = select i1 %601, i64 12, i64 121
  %602 = add i64 %565, %.v17
  store i64 %602, i64* %3, align 8
  br i1 %601, label %block_402ce7, label %block_.L_402d54

block_402ce7:                                     ; preds = %block_.L_402cdb
  %603 = add i64 %566, -16
  %604 = add i64 %602, 4
  store i64 %604, i64* %3, align 8
  %605 = inttoptr i64 %603 to i64*
  %606 = load i64, i64* %605, align 8
  store i64 %606, i64* %RAX.i103, align 8
  %607 = add i64 %602, 8
  store i64 %607, i64* %3, align 8
  %608 = load i32, i32* %569, align 4
  %609 = sext i32 %608 to i64
  store i64 %609, i64* %RCX.i71, align 8
  %610 = shl nsw i64 %609, 2
  %611 = add i64 %610, %606
  %612 = add i64 %602, 13
  store i64 %612, i64* %3, align 8
  %613 = inttoptr i64 %611 to i32*
  %614 = load i32, i32* %613, align 4
  store i32 %614, i32* %499, align 1
  store float 0.000000e+00, float* %501, align 1
  store float 0.000000e+00, float* %503, align 1
  store float 0.000000e+00, float* %505, align 1
  %615 = load <2 x float>, <2 x float>* %506, align 1
  %616 = extractelement <2 x float> %615, i32 0
  %617 = fpext float %616 to double
  %618 = load i32, i32* bitcast (%G_0x221__rip__4205823__type* @G_0x221__rip__4205823_ to i32*), align 8
  %619 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x221__rip__4205823__type* @G_0x221__rip__4205823_ to i64), i64 4) to i32*), align 4
  %620 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x221__rip__4205823__type* @G_0x221__rip__4205823_ to i64), i64 8) to i32*), align 8
  %621 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x221__rip__4205823__type* @G_0x221__rip__4205823_ to i64), i64 12) to i32*), align 4
  store i32 %618, i32* %516, align 1
  store i32 %619, i32* %519, align 1
  store i32 %620, i32* %522, align 1
  store i32 %621, i32* %525, align 1
  %622 = bitcast double %617 to i64
  %623 = load i64, i64* %502, align 1
  %624 = load i64, i64* %528, align 1
  %625 = load i64, i64* %520, align 1
  %626 = and i64 %624, %622
  %627 = and i64 %625, %623
  %628 = trunc i64 %626 to i32
  %629 = lshr i64 %626, 32
  %630 = trunc i64 %629 to i32
  store i32 %628, i32* %499, align 1
  store i32 %630, i32* %536, align 1
  %631 = trunc i64 %627 to i32
  store i32 %631, i32* %538, align 1
  %632 = lshr i64 %627, 32
  %633 = trunc i64 %632 to i32
  store i32 %633, i32* %541, align 1
  %634 = add i64 %566, -24
  %635 = add i64 %602, 33
  store i64 %635, i64* %3, align 8
  %636 = inttoptr i64 %634 to i32*
  %637 = load i32, i32* %636, align 4
  store i32 %637, i32* %516, align 1
  store float 0.000000e+00, float* %518, align 1
  store float 0.000000e+00, float* %521, align 1
  store float 0.000000e+00, float* %524, align 1
  %638 = load <2 x float>, <2 x float>* %563, align 1
  %639 = extractelement <2 x float> %638, i32 0
  %640 = fpext float %639 to double
  store double %640, double* %564, align 1
  %641 = add i64 %602, 41
  store i64 %641, i64* %3, align 8
  %642 = load double, double* %546, align 1
  %643 = fcmp uno double %642, %640
  br i1 %643, label %644, label %654

; <label>:644:                                    ; preds = %block_402ce7
  %645 = fadd double %642, %640
  %646 = bitcast double %645 to i64
  %647 = and i64 %646, 9221120237041090560
  %648 = icmp eq i64 %647, 9218868437227405312
  %649 = and i64 %646, 2251799813685247
  %650 = icmp ne i64 %649, 0
  %651 = and i1 %648, %650
  br i1 %651, label %652, label %660

; <label>:652:                                    ; preds = %644
  %653 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %641, %struct.Memory* %MEMORY.2)
  %.pre6 = load i64, i64* %3, align 8
  %.pre7 = load i8, i8* %38, align 1
  %.pre8 = load i8, i8* %52, align 1
  br label %routine_ucomisd__xmm1___xmm0.exit

; <label>:654:                                    ; preds = %block_402ce7
  %655 = fcmp ogt double %642, %640
  br i1 %655, label %660, label %656

; <label>:656:                                    ; preds = %654
  %657 = fcmp olt double %642, %640
  br i1 %657, label %660, label %658

; <label>:658:                                    ; preds = %656
  %659 = fcmp oeq double %642, %640
  br i1 %659, label %660, label %664

; <label>:660:                                    ; preds = %658, %656, %654, %644
  %661 = phi i8 [ 0, %654 ], [ 0, %656 ], [ 1, %658 ], [ 1, %644 ]
  %662 = phi i8 [ 0, %654 ], [ 0, %656 ], [ 0, %658 ], [ 1, %644 ]
  %663 = phi i8 [ 0, %654 ], [ 1, %656 ], [ 0, %658 ], [ 1, %644 ]
  store i8 %661, i8* %52, align 1
  store i8 %662, i8* %44, align 1
  store i8 %663, i8* %38, align 1
  br label %664

; <label>:664:                                    ; preds = %660, %658
  %665 = phi i8 [ %661, %660 ], [ %590, %658 ]
  %666 = phi i8 [ %663, %660 ], [ %578, %658 ]
  store i8 0, i8* %61, align 1
  store i8 0, i8* %55, align 1
  store i8 0, i8* %49, align 1
  br label %routine_ucomisd__xmm1___xmm0.exit

routine_ucomisd__xmm1___xmm0.exit:                ; preds = %664, %652
  %667 = phi i8 [ %.pre8, %652 ], [ %665, %664 ]
  %668 = phi i8 [ %.pre7, %652 ], [ %666, %664 ]
  %669 = phi i64 [ %.pre6, %652 ], [ %641, %664 ]
  %670 = phi %struct.Memory* [ %653, %652 ], [ %MEMORY.2, %664 ]
  %671 = or i8 %667, %668
  %672 = icmp ne i8 %671, 0
  %.v18 = select i1 %672, i64 49, i64 6
  %673 = add i64 %669, %.v18
  store i64 %673, i64* %3, align 8
  br i1 %672, label %block_.L_402d41, label %block_402d16

block_402d16:                                     ; preds = %routine_ucomisd__xmm1___xmm0.exit
  %674 = load i64, i64* %RBP.i, align 8
  %675 = add i64 %674, -28
  %676 = add i64 %673, 3
  store i64 %676, i64* %3, align 8
  %677 = inttoptr i64 %675 to i32*
  %678 = load i32, i32* %677, align 4
  %679 = zext i32 %678 to i64
  store i64 %679, i64* %RAX.i103, align 8
  %680 = add i64 %674, -36
  %681 = add i64 %673, 6
  store i64 %681, i64* %3, align 8
  %682 = inttoptr i64 %680 to i32*
  store i32 %678, i32* %682, align 4
  %683 = load i64, i64* %RBP.i, align 8
  %684 = add i64 %683, -16
  %685 = load i64, i64* %3, align 8
  %686 = add i64 %685, 4
  store i64 %686, i64* %3, align 8
  %687 = inttoptr i64 %684 to i64*
  %688 = load i64, i64* %687, align 8
  store i64 %688, i64* %RCX.i71, align 8
  %689 = add i64 %683, -28
  %690 = add i64 %685, 8
  store i64 %690, i64* %3, align 8
  %691 = inttoptr i64 %689 to i32*
  %692 = load i32, i32* %691, align 4
  %693 = sext i32 %692 to i64
  store i64 %693, i64* %RDX.i35, align 8
  %694 = shl nsw i64 %693, 2
  %695 = add i64 %694, %688
  %696 = add i64 %685, 13
  store i64 %696, i64* %3, align 8
  %697 = inttoptr i64 %695 to i32*
  %698 = load i32, i32* %697, align 4
  store i32 %698, i32* %499, align 1
  store float 0.000000e+00, float* %501, align 1
  store float 0.000000e+00, float* %503, align 1
  store float 0.000000e+00, float* %505, align 1
  %699 = load <2 x float>, <2 x float>* %506, align 1
  %700 = extractelement <2 x float> %699, i32 0
  %701 = fpext float %700 to double
  %702 = load i32, i32* bitcast (%G_0x1ec__rip__4205876__type* @G_0x1ec__rip__4205876_ to i32*), align 8
  %703 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x1ec__rip__4205876__type* @G_0x1ec__rip__4205876_ to i64), i64 4) to i32*), align 4
  %704 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x1ec__rip__4205876__type* @G_0x1ec__rip__4205876_ to i64), i64 8) to i32*), align 8
  %705 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x1ec__rip__4205876__type* @G_0x1ec__rip__4205876_ to i64), i64 12) to i32*), align 4
  store i32 %702, i32* %516, align 1
  store i32 %703, i32* %519, align 1
  store i32 %704, i32* %522, align 1
  store i32 %705, i32* %525, align 1
  %706 = bitcast double %701 to i64
  %707 = load i64, i64* %502, align 1
  %708 = load i64, i64* %528, align 1
  %709 = load i64, i64* %520, align 1
  %710 = and i64 %708, %706
  %711 = and i64 %709, %707
  %712 = trunc i64 %710 to i32
  %713 = lshr i64 %710, 32
  %714 = trunc i64 %713 to i32
  store i32 %712, i32* %499, align 1
  store i32 %714, i32* %536, align 1
  %715 = trunc i64 %711 to i32
  store i32 %715, i32* %538, align 1
  %716 = lshr i64 %711, 32
  %717 = trunc i64 %716 to i32
  store i32 %717, i32* %541, align 1
  %718 = load <2 x i32>, <2 x i32>* %542, align 1
  %719 = load <2 x i32>, <2 x i32>* %544, align 1
  %720 = bitcast <2 x i32> %718 to double
  %721 = fptrunc double %720 to float
  store float %721, float* %498, align 1
  %722 = extractelement <2 x i32> %718, i32 1
  store i32 %722, i32* %536, align 1
  %723 = extractelement <2 x i32> %719, i32 0
  store i32 %723, i32* %538, align 1
  %724 = extractelement <2 x i32> %719, i32 1
  store i32 %724, i32* %541, align 1
  %725 = add i64 %683, -24
  %726 = add i64 %685, 37
  store i64 %726, i64* %3, align 8
  %727 = load <2 x float>, <2 x float>* %506, align 1
  %728 = extractelement <2 x float> %727, i32 0
  %729 = inttoptr i64 %725 to float*
  store float %728, float* %729, align 4
  %.pre9 = load i64, i64* %3, align 8
  br label %block_.L_402d41

block_.L_402d41:                                  ; preds = %block_402d16, %routine_ucomisd__xmm1___xmm0.exit
  %730 = phi i64 [ %.pre9, %block_402d16 ], [ %673, %routine_ucomisd__xmm1___xmm0.exit ]
  %731 = load i64, i64* %RBP.i, align 8
  %732 = add i64 %731, -28
  %733 = add i64 %730, 8
  store i64 %733, i64* %3, align 8
  %734 = inttoptr i64 %732 to i32*
  %735 = load i32, i32* %734, align 4
  %736 = add i32 %735, 1
  %737 = zext i32 %736 to i64
  store i64 %737, i64* %RAX.i103, align 8
  %738 = icmp eq i32 %735, -1
  %739 = icmp eq i32 %736, 0
  %740 = or i1 %738, %739
  %741 = zext i1 %740 to i8
  store i8 %741, i8* %38, align 1
  %742 = and i32 %736, 255
  %743 = tail call i32 @llvm.ctpop.i32(i32 %742)
  %744 = trunc i32 %743 to i8
  %745 = and i8 %744, 1
  %746 = xor i8 %745, 1
  store i8 %746, i8* %44, align 1
  %747 = xor i32 %735, %736
  %748 = lshr i32 %747, 4
  %749 = trunc i32 %748 to i8
  %750 = and i8 %749, 1
  store i8 %750, i8* %49, align 1
  %751 = zext i1 %739 to i8
  store i8 %751, i8* %52, align 1
  %752 = lshr i32 %736, 31
  %753 = trunc i32 %752 to i8
  store i8 %753, i8* %55, align 1
  %754 = lshr i32 %735, 31
  %755 = xor i32 %752, %754
  %756 = add nuw nsw i32 %755, %752
  %757 = icmp eq i32 %756, 2
  %758 = zext i1 %757 to i8
  store i8 %758, i8* %61, align 1
  %759 = add i64 %730, 14
  store i64 %759, i64* %3, align 8
  store i32 %736, i32* %734, align 4
  %760 = load i64, i64* %3, align 8
  %761 = add i64 %760, -116
  store i64 %761, i64* %3, align 8
  br label %block_.L_402cdb

block_.L_402d54:                                  ; preds = %block_.L_402cdb
  %762 = add i64 %602, 5
  br label %block_.L_402d59

block_.L_402d59:                                  ; preds = %block_.L_402d54, %block_.L_402ca8
  %.sink = phi i64 [ %762, %block_.L_402d54 ], [ %483, %block_.L_402ca8 ]
  %RAX.i9.pre-phi = phi i64* [ %RAX.i103, %block_.L_402d54 ], [ %RAX.i222, %block_.L_402ca8 ]
  %763 = phi i64 [ %566, %block_.L_402d54 ], [ %246, %block_.L_402ca8 ]
  %MEMORY.4 = phi %struct.Memory* [ %MEMORY.2, %block_.L_402d54 ], [ %MEMORY.0, %block_.L_402ca8 ]
  %764 = add i64 %763, -36
  %765 = add i64 %.sink, 3
  store i64 %765, i64* %3, align 8
  %766 = inttoptr i64 %764 to i32*
  %767 = load i32, i32* %766, align 4
  %768 = zext i32 %767 to i64
  store i64 %768, i64* %RAX.i9.pre-phi, align 8
  %769 = add i64 %763, -4
  %770 = add i64 %.sink, 6
  store i64 %770, i64* %3, align 8
  %771 = inttoptr i64 %769 to i32*
  store i32 %767, i32* %771, align 4
  %.pre10 = load i64, i64* %3, align 8
  br label %block_.L_402d5f

block_.L_402d5f:                                  ; preds = %block_.L_402d59, %block_402bde, %block_402bc8
  %772 = phi i64 [ %.pre10, %block_.L_402d59 ], [ %98, %block_402bde ], [ %69, %block_402bc8 ]
  %MEMORY.5 = phi %struct.Memory* [ %MEMORY.4, %block_.L_402d59 ], [ %2, %block_402bde ], [ %2, %block_402bc8 ]
  %RAX.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %773 = load i64, i64* %RBP.i, align 8
  %774 = add i64 %773, -4
  %775 = add i64 %772, 3
  store i64 %775, i64* %3, align 8
  %776 = inttoptr i64 %774 to i32*
  %777 = load i32, i32* %776, align 4
  %778 = zext i32 %777 to i64
  store i64 %778, i64* %RAX.i, align 8
  %779 = add i64 %772, 4
  store i64 %779, i64* %3, align 8
  %780 = load i64, i64* %6, align 8
  %781 = add i64 %780, 8
  %782 = inttoptr i64 %780 to i64*
  %783 = load i64, i64* %782, align 8
  store i64 %783, i64* %RBP.i, align 8
  store i64 %781, i64* %6, align 8
  %784 = add i64 %772, 5
  store i64 %784, i64* %3, align 8
  %785 = inttoptr i64 %781 to i64*
  %786 = load i64, i64* %785, align 8
  store i64 %786, i64* %3, align 8
  %787 = add i64 %780, 16
  store i64 %787, i64* %6, align 8
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
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %3, %.v
  store i64 %13, i64* %PC, align 8
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
  store i64 %4, i64* %PC, align 8
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
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %3, %.v
  store i64 %8, i64* %PC, align 8
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
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %3, %.v
  store i64 %7, i64* %PC, align 8
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
  %7 = load i32, i32* bitcast (%G_0x312__rip__4205582__type* @G_0x312__rip__4205582_ to i32*), align 8
  %8 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x312__rip__4205582__type* @G_0x312__rip__4205582_ to i64), i64 4) to i32*), align 4
  %9 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x312__rip__4205582__type* @G_0x312__rip__4205582_ to i64), i64 8) to i32*), align 8
  %10 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x312__rip__4205582__type* @G_0x312__rip__4205582_ to i64), i64 12) to i32*), align 4
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
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %3, %.v
  store i64 %13, i64* %PC, align 8
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
  %7 = load i32, i32* bitcast (%G_0x2d1__rip__4205647__type* @G_0x2d1__rip__4205647_ to i32*), align 8
  %8 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x2d1__rip__4205647__type* @G_0x2d1__rip__4205647_ to i64), i64 4) to i32*), align 4
  %9 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x2d1__rip__4205647__type* @G_0x2d1__rip__4205647_ to i64), i64 8) to i32*), align 8
  %10 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x2d1__rip__4205647__type* @G_0x2d1__rip__4205647_ to i64), i64 12) to i32*), align 4
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
  %.v = select i1 %9, i64 %rel_off1, i64 %rel_off2
  %11 = add i64 %3, %.v
  store i64 %11, i64* %PC, align 8
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
  %7 = load i32, i32* bitcast (%G_0x29c__rip__4205700__type* @G_0x29c__rip__4205700_ to i32*), align 8
  %8 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x29c__rip__4205700__type* @G_0x29c__rip__4205700_ to i64), i64 4) to i32*), align 4
  %9 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x29c__rip__4205700__type* @G_0x29c__rip__4205700_ to i64), i64 8) to i32*), align 8
  %10 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x29c__rip__4205700__type* @G_0x29c__rip__4205700_ to i64), i64 12) to i32*), align 4
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
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_402d59(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
  %7 = load i32, i32* bitcast (%G_0x259__rip__4205767__type* @G_0x259__rip__4205767_ to i32*), align 8
  %8 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x259__rip__4205767__type* @G_0x259__rip__4205767_ to i64), i64 4) to i32*), align 4
  %9 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x259__rip__4205767__type* @G_0x259__rip__4205767_ to i64), i64 8) to i32*), align 8
  %10 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x259__rip__4205767__type* @G_0x259__rip__4205767_ to i64), i64 12) to i32*), align 4
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
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %3, %.v
  store i64 %13, i64* %PC, align 8
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
  %7 = load i32, i32* bitcast (%G_0x221__rip__4205823__type* @G_0x221__rip__4205823_ to i32*), align 8
  %8 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x221__rip__4205823__type* @G_0x221__rip__4205823_ to i64), i64 4) to i32*), align 4
  %9 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x221__rip__4205823__type* @G_0x221__rip__4205823_ to i64), i64 8) to i32*), align 8
  %10 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x221__rip__4205823__type* @G_0x221__rip__4205823_ to i64), i64 12) to i32*), align 4
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
  %.v = select i1 %9, i64 %rel_off1, i64 %rel_off2
  %11 = add i64 %3, %.v
  store i64 %11, i64* %PC, align 8
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
  %7 = load i32, i32* bitcast (%G_0x1ec__rip__4205876__type* @G_0x1ec__rip__4205876_ to i32*), align 8
  %8 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x1ec__rip__4205876__type* @G_0x1ec__rip__4205876_ to i64), i64 4) to i32*), align 4
  %9 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x1ec__rip__4205876__type* @G_0x1ec__rip__4205876_ to i64), i64 8) to i32*), align 8
  %10 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x1ec__rip__4205876__type* @G_0x1ec__rip__4205876_ to i64), i64 12) to i32*), align 4
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
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_402cdb(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
