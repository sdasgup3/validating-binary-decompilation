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
  %193 = add i64 %128, -24
  %194 = add i64 %130, 32
  store i64 %194, i64* %3, align 8
  %195 = load <2 x float>, <2 x float>* %147, align 1
  %196 = extractelement <2 x float> %195, i32 0
  %197 = inttoptr i64 %193 to float*
  store float %196, float* %197, align 4
  %RCX.i202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %198 = load i64, i64* %RBP.i, align 8
  %199 = add i64 %198, -32
  %200 = load i64, i64* %3, align 8
  %201 = add i64 %200, 3
  store i64 %201, i64* %3, align 8
  %202 = inttoptr i64 %199 to i32*
  %203 = load i32, i32* %202, align 4
  %204 = zext i32 %203 to i64
  store i64 %204, i64* %RCX.i202, align 8
  %205 = add i64 %198, -20
  %206 = add i64 %200, 6
  store i64 %206, i64* %3, align 8
  %207 = inttoptr i64 %205 to i32*
  %208 = load i32, i32* %207, align 4
  %209 = add i32 %208, %203
  %210 = zext i32 %209 to i64
  store i64 %210, i64* %RCX.i202, align 8
  %211 = icmp ult i32 %209, %203
  %212 = icmp ult i32 %209, %208
  %213 = or i1 %211, %212
  %214 = zext i1 %213 to i8
  store i8 %214, i8* %38, align 1
  %215 = and i32 %209, 255
  %216 = tail call i32 @llvm.ctpop.i32(i32 %215)
  %217 = trunc i32 %216 to i8
  %218 = and i8 %217, 1
  %219 = xor i8 %218, 1
  store i8 %219, i8* %44, align 1
  %220 = xor i32 %208, %203
  %221 = xor i32 %220, %209
  %222 = lshr i32 %221, 4
  %223 = trunc i32 %222 to i8
  %224 = and i8 %223, 1
  store i8 %224, i8* %49, align 1
  %225 = icmp eq i32 %209, 0
  %226 = zext i1 %225 to i8
  store i8 %226, i8* %52, align 1
  %227 = lshr i32 %209, 31
  %228 = trunc i32 %227 to i8
  store i8 %228, i8* %55, align 1
  %229 = lshr i32 %203, 31
  %230 = lshr i32 %208, 31
  %231 = xor i32 %227, %229
  %232 = xor i32 %227, %230
  %233 = add nuw nsw i32 %231, %232
  %234 = icmp eq i32 %233, 2
  %235 = zext i1 %234 to i8
  store i8 %235, i8* %61, align 1
  %236 = add i64 %200, 9
  store i64 %236, i64* %3, align 8
  store i32 %209, i32* %202, align 4
  %237 = load i64, i64* %RBP.i, align 8
  %238 = add i64 %237, -28
  %239 = load i64, i64* %3, align 8
  %240 = add i64 %239, 7
  store i64 %240, i64* %3, align 8
  %241 = inttoptr i64 %238 to i32*
  store i32 1, i32* %241, align 4
  %242 = bitcast %union.VectorReg* %151 to <2 x float>*
  %243 = bitcast %union.VectorReg* %151 to double*
  %RDX.i145 = getelementptr inbounds %union.anon, %union.anon* %22, i64 0, i32 0
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_402c2b

block_.L_402c2b:                                  ; preds = %block_.L_402c91, %block_402bf4
  %244 = phi i64 [ %.pre, %block_402bf4 ], [ %481, %block_.L_402c91 ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_402bf4 ], [ %351, %block_.L_402c91 ]
  %245 = load i64, i64* %RBP.i, align 8
  %246 = add i64 %245, -28
  %247 = add i64 %244, 3
  store i64 %247, i64* %3, align 8
  %248 = inttoptr i64 %246 to i32*
  %249 = load i32, i32* %248, align 4
  %250 = zext i32 %249 to i64
  store i64 %250, i64* %RAX.i222, align 8
  %251 = add i64 %245, -8
  %252 = add i64 %244, 6
  store i64 %252, i64* %3, align 8
  %253 = inttoptr i64 %251 to i32*
  %254 = load i32, i32* %253, align 4
  %255 = sub i32 %249, %254
  %256 = icmp ult i32 %249, %254
  %257 = zext i1 %256 to i8
  store i8 %257, i8* %38, align 1
  %258 = and i32 %255, 255
  %259 = tail call i32 @llvm.ctpop.i32(i32 %258)
  %260 = trunc i32 %259 to i8
  %261 = and i8 %260, 1
  %262 = xor i8 %261, 1
  store i8 %262, i8* %44, align 1
  %263 = xor i32 %254, %249
  %264 = xor i32 %263, %255
  %265 = lshr i32 %264, 4
  %266 = trunc i32 %265 to i8
  %267 = and i8 %266, 1
  store i8 %267, i8* %49, align 1
  %268 = icmp eq i32 %255, 0
  %269 = zext i1 %268 to i8
  store i8 %269, i8* %52, align 1
  %270 = lshr i32 %255, 31
  %271 = trunc i32 %270 to i8
  store i8 %271, i8* %55, align 1
  %272 = lshr i32 %249, 31
  %273 = lshr i32 %254, 31
  %274 = xor i32 %273, %272
  %275 = xor i32 %270, %272
  %276 = add nuw nsw i32 %275, %274
  %277 = icmp eq i32 %276, 2
  %278 = zext i1 %277 to i8
  store i8 %278, i8* %61, align 1
  %279 = icmp ne i8 %271, 0
  %280 = xor i1 %279, %277
  %.v15 = select i1 %280, i64 12, i64 125
  %281 = add i64 %244, %.v15
  store i64 %281, i64* %3, align 8
  br i1 %280, label %block_402c37, label %block_.L_402ca8

block_402c37:                                     ; preds = %block_.L_402c2b
  %282 = add i64 %245, -16
  %283 = add i64 %281, 4
  store i64 %283, i64* %3, align 8
  %284 = inttoptr i64 %282 to i64*
  %285 = load i64, i64* %284, align 8
  store i64 %285, i64* %RAX.i222, align 8
  %286 = add i64 %245, -32
  %287 = add i64 %281, 8
  store i64 %287, i64* %3, align 8
  %288 = inttoptr i64 %286 to i32*
  %289 = load i32, i32* %288, align 4
  %290 = sext i32 %289 to i64
  store i64 %290, i64* %RCX.i202, align 8
  %291 = shl nsw i64 %290, 2
  %292 = add i64 %291, %285
  %293 = add i64 %281, 13
  store i64 %293, i64* %3, align 8
  %294 = inttoptr i64 %292 to i32*
  %295 = load i32, i32* %294, align 4
  store i32 %295, i32* %140, align 1
  store float 0.000000e+00, float* %142, align 1
  store float 0.000000e+00, float* %144, align 1
  store float 0.000000e+00, float* %146, align 1
  %296 = load <2 x float>, <2 x float>* %147, align 1
  %297 = extractelement <2 x float> %296, i32 0
  %298 = fpext float %297 to double
  %299 = load i32, i32* bitcast (%G_0x2d1__rip__4205647__type* @G_0x2d1__rip__4205647_ to i32*), align 8
  %300 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x2d1__rip__4205647__type* @G_0x2d1__rip__4205647_ to i64), i64 4) to i32*), align 4
  %301 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x2d1__rip__4205647__type* @G_0x2d1__rip__4205647_ to i64), i64 8) to i32*), align 8
  %302 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x2d1__rip__4205647__type* @G_0x2d1__rip__4205647_ to i64), i64 12) to i32*), align 4
  store i32 %299, i32* %157, align 1
  store i32 %300, i32* %160, align 1
  store i32 %301, i32* %163, align 1
  store i32 %302, i32* %166, align 1
  %303 = bitcast double %298 to i64
  %304 = load i64, i64* %143, align 1
  %305 = load i64, i64* %169, align 1
  %306 = load i64, i64* %161, align 1
  %307 = and i64 %305, %303
  %308 = and i64 %306, %304
  %309 = trunc i64 %307 to i32
  %310 = lshr i64 %307, 32
  %311 = trunc i64 %310 to i32
  store i32 %309, i32* %140, align 1
  store i32 %311, i32* %177, align 1
  %312 = trunc i64 %308 to i32
  store i32 %312, i32* %179, align 1
  %313 = lshr i64 %308, 32
  %314 = trunc i64 %313 to i32
  store i32 %314, i32* %182, align 1
  %315 = add i64 %245, -24
  %316 = add i64 %281, 33
  store i64 %316, i64* %3, align 8
  %317 = inttoptr i64 %315 to i32*
  %318 = load i32, i32* %317, align 4
  store i32 %318, i32* %157, align 1
  store float 0.000000e+00, float* %159, align 1
  store float 0.000000e+00, float* %162, align 1
  store float 0.000000e+00, float* %165, align 1
  %319 = load <2 x float>, <2 x float>* %242, align 1
  %320 = extractelement <2 x float> %319, i32 0
  %321 = fpext float %320 to double
  store double %321, double* %243, align 1
  %322 = add i64 %281, 41
  store i64 %322, i64* %3, align 8
  %323 = load double, double* %187, align 1
  %324 = fcmp uno double %323, %321
  br i1 %324, label %325, label %335

; <label>:325:                                    ; preds = %block_402c37
  %326 = fadd double %323, %321
  %327 = bitcast double %326 to i64
  %328 = and i64 %327, 9221120237041090560
  %329 = icmp eq i64 %328, 9218868437227405312
  %330 = and i64 %327, 2251799813685247
  %331 = icmp ne i64 %330, 0
  %332 = and i1 %329, %331
  br i1 %332, label %333, label %341

; <label>:333:                                    ; preds = %325
  %334 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %322, %struct.Memory* %MEMORY.0)
  %.pre1 = load i64, i64* %3, align 8
  %.pre2 = load i8, i8* %38, align 1
  %.pre3 = load i8, i8* %52, align 1
  br label %routine_ucomisd__xmm1___xmm0.exit160

; <label>:335:                                    ; preds = %block_402c37
  %336 = fcmp ogt double %323, %321
  br i1 %336, label %341, label %337

; <label>:337:                                    ; preds = %335
  %338 = fcmp olt double %323, %321
  br i1 %338, label %341, label %339

; <label>:339:                                    ; preds = %337
  %340 = fcmp oeq double %323, %321
  br i1 %340, label %341, label %345

; <label>:341:                                    ; preds = %339, %337, %335, %325
  %342 = phi i8 [ 0, %335 ], [ 0, %337 ], [ 1, %339 ], [ 1, %325 ]
  %343 = phi i8 [ 0, %335 ], [ 0, %337 ], [ 0, %339 ], [ 1, %325 ]
  %344 = phi i8 [ 0, %335 ], [ 1, %337 ], [ 0, %339 ], [ 1, %325 ]
  store i8 %342, i8* %52, align 1
  store i8 %343, i8* %44, align 1
  store i8 %344, i8* %38, align 1
  br label %345

; <label>:345:                                    ; preds = %341, %339
  %346 = phi i8 [ %342, %341 ], [ %269, %339 ]
  %347 = phi i8 [ %344, %341 ], [ %257, %339 ]
  store i8 0, i8* %61, align 1
  store i8 0, i8* %55, align 1
  store i8 0, i8* %49, align 1
  br label %routine_ucomisd__xmm1___xmm0.exit160

routine_ucomisd__xmm1___xmm0.exit160:             ; preds = %345, %333
  %348 = phi i8 [ %.pre3, %333 ], [ %346, %345 ]
  %349 = phi i8 [ %.pre2, %333 ], [ %347, %345 ]
  %350 = phi i64 [ %.pre1, %333 ], [ %322, %345 ]
  %351 = phi %struct.Memory* [ %334, %333 ], [ %MEMORY.0, %345 ]
  %352 = or i8 %348, %349
  %353 = icmp ne i8 %352, 0
  %.v16 = select i1 %353, i64 49, i64 6
  %354 = add i64 %350, %.v16
  store i64 %354, i64* %3, align 8
  br i1 %353, label %block_.L_402c91, label %block_402c66

block_402c66:                                     ; preds = %routine_ucomisd__xmm1___xmm0.exit160
  %355 = load i64, i64* %RBP.i, align 8
  %356 = add i64 %355, -28
  %357 = add i64 %354, 3
  store i64 %357, i64* %3, align 8
  %358 = inttoptr i64 %356 to i32*
  %359 = load i32, i32* %358, align 4
  %360 = zext i32 %359 to i64
  store i64 %360, i64* %RAX.i222, align 8
  %361 = add i64 %355, -36
  %362 = add i64 %354, 6
  store i64 %362, i64* %3, align 8
  %363 = inttoptr i64 %361 to i32*
  store i32 %359, i32* %363, align 4
  %364 = load i64, i64* %RBP.i, align 8
  %365 = add i64 %364, -16
  %366 = load i64, i64* %3, align 8
  %367 = add i64 %366, 4
  store i64 %367, i64* %3, align 8
  %368 = inttoptr i64 %365 to i64*
  %369 = load i64, i64* %368, align 8
  store i64 %369, i64* %RCX.i202, align 8
  %370 = add i64 %364, -32
  %371 = add i64 %366, 8
  store i64 %371, i64* %3, align 8
  %372 = inttoptr i64 %370 to i32*
  %373 = load i32, i32* %372, align 4
  %374 = sext i32 %373 to i64
  store i64 %374, i64* %RDX.i145, align 8
  %375 = shl nsw i64 %374, 2
  %376 = add i64 %375, %369
  %377 = add i64 %366, 13
  store i64 %377, i64* %3, align 8
  %378 = inttoptr i64 %376 to i32*
  %379 = load i32, i32* %378, align 4
  store i32 %379, i32* %140, align 1
  store float 0.000000e+00, float* %142, align 1
  store float 0.000000e+00, float* %144, align 1
  store float 0.000000e+00, float* %146, align 1
  %380 = load <2 x float>, <2 x float>* %147, align 1
  %381 = extractelement <2 x float> %380, i32 0
  %382 = fpext float %381 to double
  %383 = load i32, i32* bitcast (%G_0x29c__rip__4205700__type* @G_0x29c__rip__4205700_ to i32*), align 8
  %384 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x29c__rip__4205700__type* @G_0x29c__rip__4205700_ to i64), i64 4) to i32*), align 4
  %385 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x29c__rip__4205700__type* @G_0x29c__rip__4205700_ to i64), i64 8) to i32*), align 8
  %386 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x29c__rip__4205700__type* @G_0x29c__rip__4205700_ to i64), i64 12) to i32*), align 4
  store i32 %383, i32* %157, align 1
  store i32 %384, i32* %160, align 1
  store i32 %385, i32* %163, align 1
  store i32 %386, i32* %166, align 1
  %387 = bitcast double %382 to i64
  %388 = load i64, i64* %143, align 1
  %389 = load i64, i64* %169, align 1
  %390 = load i64, i64* %161, align 1
  %391 = and i64 %389, %387
  %392 = and i64 %390, %388
  %393 = trunc i64 %391 to i32
  %394 = lshr i64 %391, 32
  %395 = trunc i64 %394 to i32
  store i32 %393, i32* %140, align 1
  store i32 %395, i32* %177, align 1
  %396 = trunc i64 %392 to i32
  store i32 %396, i32* %179, align 1
  %397 = lshr i64 %392, 32
  %398 = trunc i64 %397 to i32
  store i32 %398, i32* %182, align 1
  %399 = load <2 x i32>, <2 x i32>* %183, align 1
  %400 = load <2 x i32>, <2 x i32>* %185, align 1
  %401 = bitcast <2 x i32> %399 to double
  %402 = fptrunc double %401 to float
  store float %402, float* %139, align 1
  %403 = extractelement <2 x i32> %399, i32 1
  store i32 %403, i32* %177, align 1
  %404 = extractelement <2 x i32> %400, i32 0
  store i32 %404, i32* %179, align 1
  %405 = extractelement <2 x i32> %400, i32 1
  store i32 %405, i32* %182, align 1
  %406 = add i64 %364, -24
  %407 = add i64 %366, 37
  store i64 %407, i64* %3, align 8
  %408 = load <2 x float>, <2 x float>* %147, align 1
  %409 = extractelement <2 x float> %408, i32 0
  %410 = inttoptr i64 %406 to float*
  store float %409, float* %410, align 4
  %.pre4 = load i64, i64* %3, align 8
  br label %block_.L_402c91

block_.L_402c91:                                  ; preds = %block_402c66, %routine_ucomisd__xmm1___xmm0.exit160
  %411 = phi i64 [ %.pre4, %block_402c66 ], [ %354, %routine_ucomisd__xmm1___xmm0.exit160 ]
  %412 = load i64, i64* %RBP.i, align 8
  %413 = add i64 %412, -32
  %414 = add i64 %411, 3
  store i64 %414, i64* %3, align 8
  %415 = inttoptr i64 %413 to i32*
  %416 = load i32, i32* %415, align 4
  %417 = zext i32 %416 to i64
  store i64 %417, i64* %RAX.i222, align 8
  %418 = add i64 %412, -20
  %419 = add i64 %411, 6
  store i64 %419, i64* %3, align 8
  %420 = inttoptr i64 %418 to i32*
  %421 = load i32, i32* %420, align 4
  %422 = add i32 %421, %416
  %423 = zext i32 %422 to i64
  store i64 %423, i64* %RAX.i222, align 8
  %424 = icmp ult i32 %422, %416
  %425 = icmp ult i32 %422, %421
  %426 = or i1 %424, %425
  %427 = zext i1 %426 to i8
  store i8 %427, i8* %38, align 1
  %428 = and i32 %422, 255
  %429 = tail call i32 @llvm.ctpop.i32(i32 %428)
  %430 = trunc i32 %429 to i8
  %431 = and i8 %430, 1
  %432 = xor i8 %431, 1
  store i8 %432, i8* %44, align 1
  %433 = xor i32 %421, %416
  %434 = xor i32 %433, %422
  %435 = lshr i32 %434, 4
  %436 = trunc i32 %435 to i8
  %437 = and i8 %436, 1
  store i8 %437, i8* %49, align 1
  %438 = icmp eq i32 %422, 0
  %439 = zext i1 %438 to i8
  store i8 %439, i8* %52, align 1
  %440 = lshr i32 %422, 31
  %441 = trunc i32 %440 to i8
  store i8 %441, i8* %55, align 1
  %442 = lshr i32 %416, 31
  %443 = lshr i32 %421, 31
  %444 = xor i32 %440, %442
  %445 = xor i32 %440, %443
  %446 = add nuw nsw i32 %444, %445
  %447 = icmp eq i32 %446, 2
  %448 = zext i1 %447 to i8
  store i8 %448, i8* %61, align 1
  %449 = add i64 %411, 9
  store i64 %449, i64* %3, align 8
  store i32 %422, i32* %415, align 4
  %450 = load i64, i64* %RBP.i, align 8
  %451 = add i64 %450, -28
  %452 = load i64, i64* %3, align 8
  %453 = add i64 %452, 3
  store i64 %453, i64* %3, align 8
  %454 = inttoptr i64 %451 to i32*
  %455 = load i32, i32* %454, align 4
  %456 = add i32 %455, 1
  %457 = zext i32 %456 to i64
  store i64 %457, i64* %RAX.i222, align 8
  %458 = icmp eq i32 %455, -1
  %459 = icmp eq i32 %456, 0
  %460 = or i1 %458, %459
  %461 = zext i1 %460 to i8
  store i8 %461, i8* %38, align 1
  %462 = and i32 %456, 255
  %463 = tail call i32 @llvm.ctpop.i32(i32 %462)
  %464 = trunc i32 %463 to i8
  %465 = and i8 %464, 1
  %466 = xor i8 %465, 1
  store i8 %466, i8* %44, align 1
  %467 = xor i32 %455, %456
  %468 = lshr i32 %467, 4
  %469 = trunc i32 %468 to i8
  %470 = and i8 %469, 1
  store i8 %470, i8* %49, align 1
  %471 = zext i1 %459 to i8
  store i8 %471, i8* %52, align 1
  %472 = lshr i32 %456, 31
  %473 = trunc i32 %472 to i8
  store i8 %473, i8* %55, align 1
  %474 = lshr i32 %455, 31
  %475 = xor i32 %472, %474
  %476 = add nuw nsw i32 %475, %472
  %477 = icmp eq i32 %476, 2
  %478 = zext i1 %477 to i8
  store i8 %478, i8* %61, align 1
  %479 = add i64 %452, 9
  store i64 %479, i64* %3, align 8
  store i32 %456, i32* %454, align 4
  %480 = load i64, i64* %3, align 8
  %481 = add i64 %480, -120
  store i64 %481, i64* %3, align 8
  br label %block_.L_402c2b

block_.L_402ca8:                                  ; preds = %block_.L_402c2b
  %482 = add i64 %281, 177
  br label %block_.L_402d59

block_.L_402cad:                                  ; preds = %block_.L_402bea
  %483 = add i64 %29, -36
  %484 = add i64 %124, 7
  store i64 %484, i64* %3, align 8
  %485 = inttoptr i64 %483 to i32*
  store i32 0, i32* %485, align 4
  %RAX.i103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %486 = load i64, i64* %RBP.i, align 8
  %487 = add i64 %486, -16
  %488 = load i64, i64* %3, align 8
  %489 = add i64 %488, 4
  store i64 %489, i64* %3, align 8
  %490 = inttoptr i64 %487 to i64*
  %491 = load i64, i64* %490, align 8
  store i64 %491, i64* %RAX.i103, align 8
  %492 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %493 = bitcast [32 x %union.VectorReg]* %492 to i8*
  %494 = add i64 %488, 8
  store i64 %494, i64* %3, align 8
  %495 = inttoptr i64 %491 to i32*
  %496 = load i32, i32* %495, align 4
  %497 = bitcast [32 x %union.VectorReg]* %492 to float*
  %498 = bitcast [32 x %union.VectorReg]* %492 to i32*
  store i32 %496, i32* %498, align 1
  %499 = getelementptr inbounds i8, i8* %493, i64 4
  %500 = bitcast i8* %499 to float*
  store float 0.000000e+00, float* %500, align 1
  %501 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %502 = bitcast i64* %501 to float*
  store float 0.000000e+00, float* %502, align 1
  %503 = getelementptr inbounds i8, i8* %493, i64 12
  %504 = bitcast i8* %503 to float*
  store float 0.000000e+00, float* %504, align 1
  %505 = bitcast [32 x %union.VectorReg]* %492 to <2 x float>*
  %506 = load <2 x float>, <2 x float>* %505, align 1
  %507 = extractelement <2 x float> %506, i32 0
  %508 = fpext float %507 to double
  %509 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %510 = bitcast %union.VectorReg* %509 to i8*
  %511 = load i32, i32* bitcast (%G_0x259__rip__4205767__type* @G_0x259__rip__4205767_ to i32*), align 8
  %512 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x259__rip__4205767__type* @G_0x259__rip__4205767_ to i64), i64 4) to i32*), align 4
  %513 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x259__rip__4205767__type* @G_0x259__rip__4205767_ to i64), i64 8) to i32*), align 8
  %514 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x259__rip__4205767__type* @G_0x259__rip__4205767_ to i64), i64 12) to i32*), align 4
  %515 = bitcast %union.VectorReg* %509 to i32*
  store i32 %511, i32* %515, align 1
  %516 = getelementptr inbounds i8, i8* %510, i64 4
  %517 = bitcast i8* %516 to float*
  %518 = bitcast i8* %516 to i32*
  store i32 %512, i32* %518, align 1
  %519 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %520 = bitcast i64* %519 to float*
  %521 = bitcast i64* %519 to i32*
  store i32 %513, i32* %521, align 1
  %522 = getelementptr inbounds i8, i8* %510, i64 12
  %523 = bitcast i8* %522 to float*
  %524 = bitcast i8* %522 to i32*
  store i32 %514, i32* %524, align 1
  %525 = bitcast double %508 to i64
  %526 = load i64, i64* %501, align 1
  %527 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %509, i64 0, i32 0, i32 0, i32 0, i64 0
  %528 = load i64, i64* %527, align 1
  %529 = load i64, i64* %519, align 1
  %530 = and i64 %528, %525
  %531 = and i64 %529, %526
  %532 = trunc i64 %530 to i32
  %533 = lshr i64 %530, 32
  %534 = trunc i64 %533 to i32
  store i32 %532, i32* %498, align 1
  %535 = bitcast i8* %499 to i32*
  store i32 %534, i32* %535, align 1
  %536 = trunc i64 %531 to i32
  %537 = bitcast i64* %501 to i32*
  store i32 %536, i32* %537, align 1
  %538 = lshr i64 %531, 32
  %539 = trunc i64 %538 to i32
  %540 = bitcast i8* %503 to i32*
  store i32 %539, i32* %540, align 1
  %541 = bitcast [32 x %union.VectorReg]* %492 to <2 x i32>*
  %542 = load <2 x i32>, <2 x i32>* %541, align 1
  %543 = bitcast i64* %501 to <2 x i32>*
  %544 = load <2 x i32>, <2 x i32>* %543, align 1
  %545 = bitcast [32 x %union.VectorReg]* %492 to double*
  %546 = bitcast <2 x i32> %542 to double
  %547 = fptrunc double %546 to float
  store float %547, float* %497, align 1
  %548 = extractelement <2 x i32> %542, i32 1
  store i32 %548, i32* %535, align 1
  %549 = extractelement <2 x i32> %544, i32 0
  store i32 %549, i32* %537, align 1
  %550 = extractelement <2 x i32> %544, i32 1
  store i32 %550, i32* %540, align 1
  %551 = add i64 %486, -24
  %552 = add i64 %488, 32
  store i64 %552, i64* %3, align 8
  %553 = load <2 x float>, <2 x float>* %505, align 1
  %554 = extractelement <2 x float> %553, i32 0
  %555 = inttoptr i64 %551 to float*
  store float %554, float* %555, align 4
  %556 = load i64, i64* %RBP.i, align 8
  %557 = add i64 %556, -28
  %558 = load i64, i64* %3, align 8
  %559 = add i64 %558, 7
  store i64 %559, i64* %3, align 8
  %560 = inttoptr i64 %557 to i32*
  store i32 1, i32* %560, align 4
  %RCX.i71 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %561 = bitcast %union.VectorReg* %509 to <2 x float>*
  %562 = bitcast %union.VectorReg* %509 to double*
  %RDX.i35 = getelementptr inbounds %union.anon, %union.anon* %22, i64 0, i32 0
  %.pre5 = load i64, i64* %3, align 8
  br label %block_.L_402cdb

block_.L_402cdb:                                  ; preds = %block_.L_402d41, %block_.L_402cad
  %563 = phi i64 [ %.pre5, %block_.L_402cad ], [ %759, %block_.L_402d41 ]
  %MEMORY.2 = phi %struct.Memory* [ %2, %block_.L_402cad ], [ %668, %block_.L_402d41 ]
  %564 = load i64, i64* %RBP.i, align 8
  %565 = add i64 %564, -28
  %566 = add i64 %563, 3
  store i64 %566, i64* %3, align 8
  %567 = inttoptr i64 %565 to i32*
  %568 = load i32, i32* %567, align 4
  %569 = zext i32 %568 to i64
  store i64 %569, i64* %RAX.i103, align 8
  %570 = add i64 %564, -8
  %571 = add i64 %563, 6
  store i64 %571, i64* %3, align 8
  %572 = inttoptr i64 %570 to i32*
  %573 = load i32, i32* %572, align 4
  %574 = sub i32 %568, %573
  %575 = icmp ult i32 %568, %573
  %576 = zext i1 %575 to i8
  store i8 %576, i8* %38, align 1
  %577 = and i32 %574, 255
  %578 = tail call i32 @llvm.ctpop.i32(i32 %577)
  %579 = trunc i32 %578 to i8
  %580 = and i8 %579, 1
  %581 = xor i8 %580, 1
  store i8 %581, i8* %44, align 1
  %582 = xor i32 %573, %568
  %583 = xor i32 %582, %574
  %584 = lshr i32 %583, 4
  %585 = trunc i32 %584 to i8
  %586 = and i8 %585, 1
  store i8 %586, i8* %49, align 1
  %587 = icmp eq i32 %574, 0
  %588 = zext i1 %587 to i8
  store i8 %588, i8* %52, align 1
  %589 = lshr i32 %574, 31
  %590 = trunc i32 %589 to i8
  store i8 %590, i8* %55, align 1
  %591 = lshr i32 %568, 31
  %592 = lshr i32 %573, 31
  %593 = xor i32 %592, %591
  %594 = xor i32 %589, %591
  %595 = add nuw nsw i32 %594, %593
  %596 = icmp eq i32 %595, 2
  %597 = zext i1 %596 to i8
  store i8 %597, i8* %61, align 1
  %598 = icmp ne i8 %590, 0
  %599 = xor i1 %598, %596
  %.v17 = select i1 %599, i64 12, i64 121
  %600 = add i64 %563, %.v17
  store i64 %600, i64* %3, align 8
  br i1 %599, label %block_402ce7, label %block_.L_402d54

block_402ce7:                                     ; preds = %block_.L_402cdb
  %601 = add i64 %564, -16
  %602 = add i64 %600, 4
  store i64 %602, i64* %3, align 8
  %603 = inttoptr i64 %601 to i64*
  %604 = load i64, i64* %603, align 8
  store i64 %604, i64* %RAX.i103, align 8
  %605 = add i64 %600, 8
  store i64 %605, i64* %3, align 8
  %606 = load i32, i32* %567, align 4
  %607 = sext i32 %606 to i64
  store i64 %607, i64* %RCX.i71, align 8
  %608 = shl nsw i64 %607, 2
  %609 = add i64 %608, %604
  %610 = add i64 %600, 13
  store i64 %610, i64* %3, align 8
  %611 = inttoptr i64 %609 to i32*
  %612 = load i32, i32* %611, align 4
  store i32 %612, i32* %498, align 1
  store float 0.000000e+00, float* %500, align 1
  store float 0.000000e+00, float* %502, align 1
  store float 0.000000e+00, float* %504, align 1
  %613 = load <2 x float>, <2 x float>* %505, align 1
  %614 = extractelement <2 x float> %613, i32 0
  %615 = fpext float %614 to double
  %616 = load i32, i32* bitcast (%G_0x221__rip__4205823__type* @G_0x221__rip__4205823_ to i32*), align 8
  %617 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x221__rip__4205823__type* @G_0x221__rip__4205823_ to i64), i64 4) to i32*), align 4
  %618 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x221__rip__4205823__type* @G_0x221__rip__4205823_ to i64), i64 8) to i32*), align 8
  %619 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x221__rip__4205823__type* @G_0x221__rip__4205823_ to i64), i64 12) to i32*), align 4
  store i32 %616, i32* %515, align 1
  store i32 %617, i32* %518, align 1
  store i32 %618, i32* %521, align 1
  store i32 %619, i32* %524, align 1
  %620 = bitcast double %615 to i64
  %621 = load i64, i64* %501, align 1
  %622 = load i64, i64* %527, align 1
  %623 = load i64, i64* %519, align 1
  %624 = and i64 %622, %620
  %625 = and i64 %623, %621
  %626 = trunc i64 %624 to i32
  %627 = lshr i64 %624, 32
  %628 = trunc i64 %627 to i32
  store i32 %626, i32* %498, align 1
  store i32 %628, i32* %535, align 1
  %629 = trunc i64 %625 to i32
  store i32 %629, i32* %537, align 1
  %630 = lshr i64 %625, 32
  %631 = trunc i64 %630 to i32
  store i32 %631, i32* %540, align 1
  %632 = add i64 %564, -24
  %633 = add i64 %600, 33
  store i64 %633, i64* %3, align 8
  %634 = inttoptr i64 %632 to i32*
  %635 = load i32, i32* %634, align 4
  store i32 %635, i32* %515, align 1
  store float 0.000000e+00, float* %517, align 1
  store float 0.000000e+00, float* %520, align 1
  store float 0.000000e+00, float* %523, align 1
  %636 = load <2 x float>, <2 x float>* %561, align 1
  %637 = extractelement <2 x float> %636, i32 0
  %638 = fpext float %637 to double
  store double %638, double* %562, align 1
  %639 = add i64 %600, 41
  store i64 %639, i64* %3, align 8
  %640 = load double, double* %545, align 1
  %641 = fcmp uno double %640, %638
  br i1 %641, label %642, label %652

; <label>:642:                                    ; preds = %block_402ce7
  %643 = fadd double %640, %638
  %644 = bitcast double %643 to i64
  %645 = and i64 %644, 9221120237041090560
  %646 = icmp eq i64 %645, 9218868437227405312
  %647 = and i64 %644, 2251799813685247
  %648 = icmp ne i64 %647, 0
  %649 = and i1 %646, %648
  br i1 %649, label %650, label %658

; <label>:650:                                    ; preds = %642
  %651 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %639, %struct.Memory* %MEMORY.2)
  %.pre6 = load i64, i64* %3, align 8
  %.pre7 = load i8, i8* %38, align 1
  %.pre8 = load i8, i8* %52, align 1
  br label %routine_ucomisd__xmm1___xmm0.exit

; <label>:652:                                    ; preds = %block_402ce7
  %653 = fcmp ogt double %640, %638
  br i1 %653, label %658, label %654

; <label>:654:                                    ; preds = %652
  %655 = fcmp olt double %640, %638
  br i1 %655, label %658, label %656

; <label>:656:                                    ; preds = %654
  %657 = fcmp oeq double %640, %638
  br i1 %657, label %658, label %662

; <label>:658:                                    ; preds = %656, %654, %652, %642
  %659 = phi i8 [ 0, %652 ], [ 0, %654 ], [ 1, %656 ], [ 1, %642 ]
  %660 = phi i8 [ 0, %652 ], [ 0, %654 ], [ 0, %656 ], [ 1, %642 ]
  %661 = phi i8 [ 0, %652 ], [ 1, %654 ], [ 0, %656 ], [ 1, %642 ]
  store i8 %659, i8* %52, align 1
  store i8 %660, i8* %44, align 1
  store i8 %661, i8* %38, align 1
  br label %662

; <label>:662:                                    ; preds = %658, %656
  %663 = phi i8 [ %659, %658 ], [ %588, %656 ]
  %664 = phi i8 [ %661, %658 ], [ %576, %656 ]
  store i8 0, i8* %61, align 1
  store i8 0, i8* %55, align 1
  store i8 0, i8* %49, align 1
  br label %routine_ucomisd__xmm1___xmm0.exit

routine_ucomisd__xmm1___xmm0.exit:                ; preds = %662, %650
  %665 = phi i8 [ %.pre8, %650 ], [ %663, %662 ]
  %666 = phi i8 [ %.pre7, %650 ], [ %664, %662 ]
  %667 = phi i64 [ %.pre6, %650 ], [ %639, %662 ]
  %668 = phi %struct.Memory* [ %651, %650 ], [ %MEMORY.2, %662 ]
  %669 = or i8 %665, %666
  %670 = icmp ne i8 %669, 0
  %.v18 = select i1 %670, i64 49, i64 6
  %671 = add i64 %667, %.v18
  store i64 %671, i64* %3, align 8
  br i1 %670, label %block_.L_402d41, label %block_402d16

block_402d16:                                     ; preds = %routine_ucomisd__xmm1___xmm0.exit
  %672 = load i64, i64* %RBP.i, align 8
  %673 = add i64 %672, -28
  %674 = add i64 %671, 3
  store i64 %674, i64* %3, align 8
  %675 = inttoptr i64 %673 to i32*
  %676 = load i32, i32* %675, align 4
  %677 = zext i32 %676 to i64
  store i64 %677, i64* %RAX.i103, align 8
  %678 = add i64 %672, -36
  %679 = add i64 %671, 6
  store i64 %679, i64* %3, align 8
  %680 = inttoptr i64 %678 to i32*
  store i32 %676, i32* %680, align 4
  %681 = load i64, i64* %RBP.i, align 8
  %682 = add i64 %681, -16
  %683 = load i64, i64* %3, align 8
  %684 = add i64 %683, 4
  store i64 %684, i64* %3, align 8
  %685 = inttoptr i64 %682 to i64*
  %686 = load i64, i64* %685, align 8
  store i64 %686, i64* %RCX.i71, align 8
  %687 = add i64 %681, -28
  %688 = add i64 %683, 8
  store i64 %688, i64* %3, align 8
  %689 = inttoptr i64 %687 to i32*
  %690 = load i32, i32* %689, align 4
  %691 = sext i32 %690 to i64
  store i64 %691, i64* %RDX.i35, align 8
  %692 = shl nsw i64 %691, 2
  %693 = add i64 %692, %686
  %694 = add i64 %683, 13
  store i64 %694, i64* %3, align 8
  %695 = inttoptr i64 %693 to i32*
  %696 = load i32, i32* %695, align 4
  store i32 %696, i32* %498, align 1
  store float 0.000000e+00, float* %500, align 1
  store float 0.000000e+00, float* %502, align 1
  store float 0.000000e+00, float* %504, align 1
  %697 = load <2 x float>, <2 x float>* %505, align 1
  %698 = extractelement <2 x float> %697, i32 0
  %699 = fpext float %698 to double
  %700 = load i32, i32* bitcast (%G_0x1ec__rip__4205876__type* @G_0x1ec__rip__4205876_ to i32*), align 8
  %701 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x1ec__rip__4205876__type* @G_0x1ec__rip__4205876_ to i64), i64 4) to i32*), align 4
  %702 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x1ec__rip__4205876__type* @G_0x1ec__rip__4205876_ to i64), i64 8) to i32*), align 8
  %703 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x1ec__rip__4205876__type* @G_0x1ec__rip__4205876_ to i64), i64 12) to i32*), align 4
  store i32 %700, i32* %515, align 1
  store i32 %701, i32* %518, align 1
  store i32 %702, i32* %521, align 1
  store i32 %703, i32* %524, align 1
  %704 = bitcast double %699 to i64
  %705 = load i64, i64* %501, align 1
  %706 = load i64, i64* %527, align 1
  %707 = load i64, i64* %519, align 1
  %708 = and i64 %706, %704
  %709 = and i64 %707, %705
  %710 = trunc i64 %708 to i32
  %711 = lshr i64 %708, 32
  %712 = trunc i64 %711 to i32
  store i32 %710, i32* %498, align 1
  store i32 %712, i32* %535, align 1
  %713 = trunc i64 %709 to i32
  store i32 %713, i32* %537, align 1
  %714 = lshr i64 %709, 32
  %715 = trunc i64 %714 to i32
  store i32 %715, i32* %540, align 1
  %716 = load <2 x i32>, <2 x i32>* %541, align 1
  %717 = load <2 x i32>, <2 x i32>* %543, align 1
  %718 = bitcast <2 x i32> %716 to double
  %719 = fptrunc double %718 to float
  store float %719, float* %497, align 1
  %720 = extractelement <2 x i32> %716, i32 1
  store i32 %720, i32* %535, align 1
  %721 = extractelement <2 x i32> %717, i32 0
  store i32 %721, i32* %537, align 1
  %722 = extractelement <2 x i32> %717, i32 1
  store i32 %722, i32* %540, align 1
  %723 = add i64 %681, -24
  %724 = add i64 %683, 37
  store i64 %724, i64* %3, align 8
  %725 = load <2 x float>, <2 x float>* %505, align 1
  %726 = extractelement <2 x float> %725, i32 0
  %727 = inttoptr i64 %723 to float*
  store float %726, float* %727, align 4
  %.pre9 = load i64, i64* %3, align 8
  br label %block_.L_402d41

block_.L_402d41:                                  ; preds = %block_402d16, %routine_ucomisd__xmm1___xmm0.exit
  %728 = phi i64 [ %.pre9, %block_402d16 ], [ %671, %routine_ucomisd__xmm1___xmm0.exit ]
  %729 = load i64, i64* %RBP.i, align 8
  %730 = add i64 %729, -28
  %731 = add i64 %728, 8
  store i64 %731, i64* %3, align 8
  %732 = inttoptr i64 %730 to i32*
  %733 = load i32, i32* %732, align 4
  %734 = add i32 %733, 1
  %735 = zext i32 %734 to i64
  store i64 %735, i64* %RAX.i103, align 8
  %736 = icmp eq i32 %733, -1
  %737 = icmp eq i32 %734, 0
  %738 = or i1 %736, %737
  %739 = zext i1 %738 to i8
  store i8 %739, i8* %38, align 1
  %740 = and i32 %734, 255
  %741 = tail call i32 @llvm.ctpop.i32(i32 %740)
  %742 = trunc i32 %741 to i8
  %743 = and i8 %742, 1
  %744 = xor i8 %743, 1
  store i8 %744, i8* %44, align 1
  %745 = xor i32 %733, %734
  %746 = lshr i32 %745, 4
  %747 = trunc i32 %746 to i8
  %748 = and i8 %747, 1
  store i8 %748, i8* %49, align 1
  %749 = zext i1 %737 to i8
  store i8 %749, i8* %52, align 1
  %750 = lshr i32 %734, 31
  %751 = trunc i32 %750 to i8
  store i8 %751, i8* %55, align 1
  %752 = lshr i32 %733, 31
  %753 = xor i32 %750, %752
  %754 = add nuw nsw i32 %753, %750
  %755 = icmp eq i32 %754, 2
  %756 = zext i1 %755 to i8
  store i8 %756, i8* %61, align 1
  %757 = add i64 %728, 14
  store i64 %757, i64* %3, align 8
  store i32 %734, i32* %732, align 4
  %758 = load i64, i64* %3, align 8
  %759 = add i64 %758, -116
  store i64 %759, i64* %3, align 8
  br label %block_.L_402cdb

block_.L_402d54:                                  ; preds = %block_.L_402cdb
  %760 = add i64 %600, 5
  br label %block_.L_402d59

block_.L_402d59:                                  ; preds = %block_.L_402d54, %block_.L_402ca8
  %.sink = phi i64 [ %760, %block_.L_402d54 ], [ %482, %block_.L_402ca8 ]
  %RAX.i9.pre-phi = phi i64* [ %RAX.i103, %block_.L_402d54 ], [ %RAX.i222, %block_.L_402ca8 ]
  %761 = phi i64 [ %564, %block_.L_402d54 ], [ %245, %block_.L_402ca8 ]
  %MEMORY.4 = phi %struct.Memory* [ %MEMORY.2, %block_.L_402d54 ], [ %MEMORY.0, %block_.L_402ca8 ]
  %762 = add i64 %761, -36
  %763 = add i64 %.sink, 3
  store i64 %763, i64* %3, align 8
  %764 = inttoptr i64 %762 to i32*
  %765 = load i32, i32* %764, align 4
  %766 = zext i32 %765 to i64
  store i64 %766, i64* %RAX.i9.pre-phi, align 8
  %767 = add i64 %761, -4
  %768 = add i64 %.sink, 6
  store i64 %768, i64* %3, align 8
  %769 = inttoptr i64 %767 to i32*
  store i32 %765, i32* %769, align 4
  %.pre10 = load i64, i64* %3, align 8
  br label %block_.L_402d5f

block_.L_402d5f:                                  ; preds = %block_.L_402d59, %block_402bde, %block_402bc8
  %770 = phi i64 [ %.pre10, %block_.L_402d59 ], [ %98, %block_402bde ], [ %69, %block_402bc8 ]
  %MEMORY.5 = phi %struct.Memory* [ %MEMORY.4, %block_.L_402d59 ], [ %2, %block_402bde ], [ %2, %block_402bc8 ]
  %RAX.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %771 = load i64, i64* %RBP.i, align 8
  %772 = add i64 %771, -4
  %773 = add i64 %770, 3
  store i64 %773, i64* %3, align 8
  %774 = inttoptr i64 %772 to i32*
  %775 = load i32, i32* %774, align 4
  %776 = zext i32 %775 to i64
  store i64 %776, i64* %RAX.i, align 8
  %777 = add i64 %770, 4
  store i64 %777, i64* %3, align 8
  %778 = load i64, i64* %6, align 8
  %779 = add i64 %778, 8
  %780 = inttoptr i64 %778 to i64*
  %781 = load i64, i64* %780, align 8
  store i64 %781, i64* %RBP.i, align 8
  store i64 %779, i64* %6, align 8
  %782 = add i64 %770, 5
  store i64 %782, i64* %3, align 8
  %783 = inttoptr i64 %779 to i64*
  %784 = load i64, i64* %783, align 8
  store i64 %784, i64* %3, align 8
  %785 = add i64 %778, 16
  store i64 %785, i64* %6, align 8
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
