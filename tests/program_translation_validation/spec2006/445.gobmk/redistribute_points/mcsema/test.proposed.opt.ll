; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0xab0f28_type = type <{ [1 x i8] }>
%G__0x581e6d_type = type <{ [8 x i8] }>
%G__0x581fd9_type = type <{ [8 x i8] }>
%G__0x582001_type = type <{ [8 x i8] }>
%G__0xb9d8f0_type = type <{ [8 x i8] }>
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
@G_0xab0f28 = local_unnamed_addr global %G_0xab0f28_type zeroinitializer
@G__0x581e6d = global %G__0x581e6d_type zeroinitializer
@G__0x581fd9 = global %G__0x581fd9_type zeroinitializer
@G__0x582001 = global %G__0x582001_type zeroinitializer
@G__0xb9d8f0 = global %G__0xb9d8f0_type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare %struct.Memory* @sub_451db0.gprintf(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @redistribute_points(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -40
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 32
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
  %39 = add i64 %7, -16
  %40 = add i64 %10, 14
  store i64 %40, i64* %3, align 8
  %41 = inttoptr i64 %39 to i32*
  store i32 21, i32* %41, align 4
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i209 = getelementptr inbounds %union.anon, %union.anon* %42, i64 0, i32 0
  %RCX.i207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %EAX.i167 = bitcast %union.anon* %42 to i32*
  %RDX.i194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %44 = bitcast %union.VectorReg* %43 to i8*
  %45 = bitcast %union.VectorReg* %43 to i32*
  %46 = getelementptr inbounds i8, i8* %44, i64 4
  %47 = bitcast i8* %46 to float*
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %49 = bitcast i64* %48 to float*
  %50 = getelementptr inbounds i8, i8* %44, i64 12
  %51 = bitcast i8* %50 to float*
  %52 = bitcast %union.VectorReg* %43 to <2 x float>*
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_47ef6f

block_.L_47ef6f:                                  ; preds = %block_.L_47efc3, %entry
  %53 = phi i64 [ %211, %block_.L_47efc3 ], [ %.pre, %entry ]
  %54 = load i64, i64* %RBP.i, align 8
  %55 = add i64 %54, -8
  %56 = add i64 %53, 7
  store i64 %56, i64* %3, align 8
  %57 = inttoptr i64 %55 to i32*
  %58 = load i32, i32* %57, align 4
  %59 = add i32 %58, -400
  %60 = icmp ult i32 %58, 400
  %61 = zext i1 %60 to i8
  store i8 %61, i8* %14, align 1
  %62 = and i32 %59, 255
  %63 = tail call i32 @llvm.ctpop.i32(i32 %62)
  %64 = trunc i32 %63 to i8
  %65 = and i8 %64, 1
  %66 = xor i8 %65, 1
  store i8 %66, i8* %21, align 1
  %67 = xor i32 %58, 16
  %68 = xor i32 %67, %59
  %69 = lshr i32 %68, 4
  %70 = trunc i32 %69 to i8
  %71 = and i8 %70, 1
  store i8 %71, i8* %26, align 1
  %72 = icmp eq i32 %59, 0
  %73 = zext i1 %72 to i8
  store i8 %73, i8* %29, align 1
  %74 = lshr i32 %59, 31
  %75 = trunc i32 %74 to i8
  store i8 %75, i8* %32, align 1
  %76 = lshr i32 %58, 31
  %77 = xor i32 %74, %76
  %78 = add nuw nsw i32 %77, %76
  %79 = icmp eq i32 %78, 2
  %80 = zext i1 %79 to i8
  store i8 %80, i8* %38, align 1
  %81 = icmp ne i8 %75, 0
  %82 = xor i1 %81, %79
  %.v = select i1 %82, i64 13, i64 103
  %83 = add i64 %53, %.v
  store i64 %83, i64* %3, align 8
  br i1 %82, label %block_47ef7c, label %block_.L_47efd6

block_47ef7c:                                     ; preds = %block_.L_47ef6f
  %84 = add i64 %83, 4
  store i64 %84, i64* %3, align 8
  %85 = load i32, i32* %57, align 4
  %86 = sext i32 %85 to i64
  store i64 %86, i64* %RAX.i209, align 8
  %87 = add nsw i64 %86, 12099168
  %88 = add i64 %83, 12
  store i64 %88, i64* %3, align 8
  %89 = inttoptr i64 %87 to i8*
  %90 = load i8, i8* %89, align 1
  %91 = zext i8 %90 to i64
  store i64 %91, i64* %RCX.i207, align 8
  %92 = zext i8 %90 to i32
  %93 = add nsw i32 %92, -3
  %94 = icmp ult i8 %90, 3
  %95 = zext i1 %94 to i8
  store i8 %95, i8* %14, align 1
  %96 = and i32 %93, 255
  %97 = tail call i32 @llvm.ctpop.i32(i32 %96)
  %98 = trunc i32 %97 to i8
  %99 = and i8 %98, 1
  %100 = xor i8 %99, 1
  store i8 %100, i8* %21, align 1
  %101 = xor i32 %93, %92
  %102 = lshr i32 %101, 4
  %103 = trunc i32 %102 to i8
  %104 = and i8 %103, 1
  store i8 %104, i8* %26, align 1
  %105 = icmp eq i32 %93, 0
  %106 = zext i1 %105 to i8
  store i8 %106, i8* %29, align 1
  %107 = lshr i32 %93, 31
  %108 = trunc i32 %107 to i8
  store i8 %108, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v31 = select i1 %105, i64 71, i64 21
  %109 = add i64 %83, %.v31
  store i64 %109, i64* %3, align 8
  br i1 %105, label %block_.L_47efc3, label %block_47ef91

block_47ef91:                                     ; preds = %block_47ef7c
  store i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64* %RAX.i209, align 8
  %110 = add i64 %109, 14
  store i64 %110, i64* %3, align 8
  %111 = load i32, i32* %57, align 4
  %112 = sext i32 %111 to i64
  %113 = mul nsw i64 %112, 564
  store i64 %113, i64* %RCX.i207, align 8
  %114 = lshr i64 %113, 63
  %115 = add i64 %113, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  store i64 %115, i64* %RDX.i194, align 8
  %116 = icmp ult i64 %115, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  %117 = icmp ult i64 %115, %113
  %118 = or i1 %116, %117
  %119 = zext i1 %118 to i8
  store i8 %119, i8* %14, align 1
  %120 = trunc i64 %115 to i32
  %121 = and i32 %120, 252
  %122 = tail call i32 @llvm.ctpop.i32(i32 %121)
  %123 = trunc i32 %122 to i8
  %124 = and i8 %123, 1
  %125 = xor i8 %124, 1
  store i8 %125, i8* %21, align 1
  %126 = xor i64 %113, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  %127 = xor i64 %126, %115
  %128 = lshr i64 %127, 4
  %129 = trunc i64 %128 to i8
  %130 = and i8 %129, 1
  store i8 %130, i8* %26, align 1
  %131 = icmp eq i64 %115, 0
  %132 = zext i1 %131 to i8
  store i8 %132, i8* %29, align 1
  %133 = lshr i64 %115, 63
  %134 = trunc i64 %133 to i8
  store i8 %134, i8* %32, align 1
  %135 = xor i64 %133, lshr (i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64 63)
  %136 = xor i64 %133, %114
  %137 = add nuw nsw i64 %135, %136
  %138 = icmp eq i64 %137, 2
  %139 = zext i1 %138 to i8
  store i8 %139, i8* %38, align 1
  %140 = inttoptr i64 %115 to i32*
  %141 = add i64 %109, 31
  store i64 %141, i64* %3, align 8
  %142 = load i32, i32* %140, align 4
  store i32 %142, i32* %45, align 1
  store float 0.000000e+00, float* %47, align 1
  store float 0.000000e+00, float* %49, align 1
  store float 0.000000e+00, float* %51, align 1
  %143 = add i64 %109, 35
  store i64 %143, i64* %3, align 8
  %144 = load i32, i32* %57, align 4
  %145 = sext i32 %144 to i64
  %146 = mul nsw i64 %145, 564
  store i64 %146, i64* %RCX.i207, align 8
  %147 = lshr i64 %146, 63
  %148 = load i64, i64* %RAX.i209, align 8
  %149 = add i64 %146, %148
  store i64 %149, i64* %RAX.i209, align 8
  %150 = icmp ult i64 %149, %148
  %151 = icmp ult i64 %149, %146
  %152 = or i1 %150, %151
  %153 = zext i1 %152 to i8
  store i8 %153, i8* %14, align 1
  %154 = trunc i64 %149 to i32
  %155 = and i32 %154, 255
  %156 = tail call i32 @llvm.ctpop.i32(i32 %155)
  %157 = trunc i32 %156 to i8
  %158 = and i8 %157, 1
  %159 = xor i8 %158, 1
  store i8 %159, i8* %21, align 1
  %160 = xor i64 %146, %148
  %161 = xor i64 %160, %149
  %162 = lshr i64 %161, 4
  %163 = trunc i64 %162 to i8
  %164 = and i8 %163, 1
  store i8 %164, i8* %26, align 1
  %165 = icmp eq i64 %149, 0
  %166 = zext i1 %165 to i8
  store i8 %166, i8* %29, align 1
  %167 = lshr i64 %149, 63
  %168 = trunc i64 %167 to i8
  store i8 %168, i8* %32, align 1
  %169 = lshr i64 %148, 63
  %170 = xor i64 %167, %169
  %171 = xor i64 %167, %147
  %172 = add nuw nsw i64 %170, %171
  %173 = icmp eq i64 %172, 2
  %174 = zext i1 %173 to i8
  store i8 %174, i8* %38, align 1
  %175 = add i64 %149, 4
  %176 = add i64 %109, 50
  store i64 %176, i64* %3, align 8
  %177 = load <2 x float>, <2 x float>* %52, align 1
  %178 = extractelement <2 x float> %177, i32 0
  %179 = inttoptr i64 %175 to float*
  store float %178, float* %179, align 4
  %.pre22 = load i64, i64* %3, align 8
  %.pre23 = load i64, i64* %RBP.i, align 8
  br label %block_.L_47efc3

block_.L_47efc3:                                  ; preds = %block_47ef91, %block_47ef7c
  %180 = phi i64 [ %.pre23, %block_47ef91 ], [ %54, %block_47ef7c ]
  %181 = phi i64 [ %.pre22, %block_47ef91 ], [ %109, %block_47ef7c ]
  %182 = add i64 %180, -8
  %183 = add i64 %181, 8
  store i64 %183, i64* %3, align 8
  %184 = inttoptr i64 %182 to i32*
  %185 = load i32, i32* %184, align 4
  %186 = add i32 %185, 1
  %187 = zext i32 %186 to i64
  store i64 %187, i64* %RAX.i209, align 8
  %188 = icmp eq i32 %185, -1
  %189 = icmp eq i32 %186, 0
  %190 = or i1 %188, %189
  %191 = zext i1 %190 to i8
  store i8 %191, i8* %14, align 1
  %192 = and i32 %186, 255
  %193 = tail call i32 @llvm.ctpop.i32(i32 %192)
  %194 = trunc i32 %193 to i8
  %195 = and i8 %194, 1
  %196 = xor i8 %195, 1
  store i8 %196, i8* %21, align 1
  %197 = xor i32 %186, %185
  %198 = lshr i32 %197, 4
  %199 = trunc i32 %198 to i8
  %200 = and i8 %199, 1
  store i8 %200, i8* %26, align 1
  %201 = zext i1 %189 to i8
  store i8 %201, i8* %29, align 1
  %202 = lshr i32 %186, 31
  %203 = trunc i32 %202 to i8
  store i8 %203, i8* %32, align 1
  %204 = lshr i32 %185, 31
  %205 = xor i32 %202, %204
  %206 = add nuw nsw i32 %205, %202
  %207 = icmp eq i32 %206, 2
  %208 = zext i1 %207 to i8
  store i8 %208, i8* %38, align 1
  %209 = add i64 %181, 14
  store i64 %209, i64* %3, align 8
  store i32 %186, i32* %184, align 4
  %210 = load i64, i64* %3, align 8
  %211 = add i64 %210, -98
  store i64 %211, i64* %3, align 8
  br label %block_.L_47ef6f

block_.L_47efd6:                                  ; preds = %block_.L_47ef6f
  %212 = add i64 %54, -4
  %213 = add i64 %83, 7
  store i64 %213, i64* %3, align 8
  %214 = inttoptr i64 %212 to i32*
  store i32 21, i32* %214, align 4
  %RDI.i134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RSI.i131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %AL.i126 = bitcast %union.anon* %42 to i8*
  %215 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %216 = bitcast [32 x %union.VectorReg]* %215 to i8*
  %217 = bitcast [32 x %union.VectorReg]* %215 to i32*
  %218 = getelementptr inbounds i8, i8* %216, i64 4
  %219 = bitcast i8* %218 to float*
  %220 = getelementptr inbounds i8, i8* %216, i64 12
  %221 = bitcast i8* %220 to float*
  %222 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %223 = bitcast %union.VectorReg* %222 to i8*
  %224 = bitcast %union.VectorReg* %222 to i32*
  %225 = getelementptr inbounds i8, i8* %223, i64 4
  %226 = bitcast i8* %225 to float*
  %227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %228 = bitcast i64* %227 to float*
  %229 = getelementptr inbounds i8, i8* %223, i64 12
  %230 = bitcast i8* %229 to float*
  %231 = bitcast %union.VectorReg* %222 to <2 x float>*
  %232 = bitcast [32 x %union.VectorReg]* %215 to <2 x float>*
  %233 = bitcast [32 x %union.VectorReg]* %215 to double*
  %.pre11 = load i64, i64* %3, align 8
  %234 = bitcast [32 x %union.VectorReg]* %215 to <4 x i32>*
  br label %block_.L_47efdd

block_.L_47efdd:                                  ; preds = %block_.L_47f14e, %block_.L_47efd6
  %235 = phi i64 [ %.pre11, %block_.L_47efd6 ], [ %708, %block_.L_47f14e ]
  %MEMORY.2 = phi %struct.Memory* [ %2, %block_.L_47efd6 ], [ %MEMORY.7, %block_.L_47f14e ]
  %236 = load i64, i64* %RBP.i, align 8
  %237 = add i64 %236, -4
  %238 = add i64 %235, 7
  store i64 %238, i64* %3, align 8
  %239 = inttoptr i64 %237 to i32*
  %240 = load i32, i32* %239, align 4
  %241 = add i32 %240, -400
  %242 = icmp ult i32 %240, 400
  %243 = zext i1 %242 to i8
  store i8 %243, i8* %14, align 1
  %244 = and i32 %241, 255
  %245 = tail call i32 @llvm.ctpop.i32(i32 %244)
  %246 = trunc i32 %245 to i8
  %247 = and i8 %246, 1
  %248 = xor i8 %247, 1
  store i8 %248, i8* %21, align 1
  %249 = xor i32 %240, 16
  %250 = xor i32 %249, %241
  %251 = lshr i32 %250, 4
  %252 = trunc i32 %251 to i8
  %253 = and i8 %252, 1
  store i8 %253, i8* %26, align 1
  %254 = icmp eq i32 %241, 0
  %255 = zext i1 %254 to i8
  store i8 %255, i8* %29, align 1
  %256 = lshr i32 %241, 31
  %257 = trunc i32 %256 to i8
  store i8 %257, i8* %32, align 1
  %258 = lshr i32 %240, 31
  %259 = xor i32 %256, %258
  %260 = add nuw nsw i32 %259, %258
  %261 = icmp eq i32 %260, 2
  %262 = zext i1 %261 to i8
  store i8 %262, i8* %38, align 1
  %263 = icmp ne i8 %257, 0
  %264 = xor i1 %263, %261
  %.v24 = select i1 %264, i64 13, i64 383
  %265 = add i64 %235, %.v24
  store i64 %265, i64* %3, align 8
  br i1 %264, label %block_47efea, label %block_.L_47f15c

block_47efea:                                     ; preds = %block_.L_47efdd
  %266 = add i64 %265, 4
  store i64 %266, i64* %3, align 8
  %267 = load i32, i32* %239, align 4
  %268 = sext i32 %267 to i64
  store i64 %268, i64* %RAX.i209, align 8
  %269 = add nsw i64 %268, 12099168
  %270 = add i64 %265, 12
  store i64 %270, i64* %3, align 8
  %271 = inttoptr i64 %269 to i8*
  %272 = load i8, i8* %271, align 1
  %273 = zext i8 %272 to i64
  store i64 %273, i64* %RCX.i207, align 8
  %274 = zext i8 %272 to i32
  %275 = add nsw i32 %274, -3
  %276 = icmp ult i8 %272, 3
  %277 = zext i1 %276 to i8
  store i8 %277, i8* %14, align 1
  %278 = and i32 %275, 255
  %279 = tail call i32 @llvm.ctpop.i32(i32 %278)
  %280 = trunc i32 %279 to i8
  %281 = and i8 %280, 1
  %282 = xor i8 %281, 1
  store i8 %282, i8* %21, align 1
  %283 = xor i32 %275, %274
  %284 = lshr i32 %283, 4
  %285 = trunc i32 %284 to i8
  %286 = and i8 %285, 1
  store i8 %286, i8* %26, align 1
  %287 = icmp eq i32 %275, 0
  %288 = zext i1 %287 to i8
  store i8 %288, i8* %29, align 1
  %289 = lshr i32 %275, 31
  %290 = trunc i32 %289 to i8
  store i8 %290, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v25 = select i1 %287, i64 21, i64 26
  %291 = add i64 %265, %.v25
  store i64 %291, i64* %3, align 8
  br i1 %287, label %block_47efff, label %block_.L_47f004

block_47efff:                                     ; preds = %block_47efea
  %292 = add i64 %291, 335
  store i64 %292, i64* %3, align 8
  br label %block_.L_47f14e

block_.L_47f004:                                  ; preds = %block_47efea
  %293 = add i64 %291, 4
  store i64 %293, i64* %3, align 8
  %294 = load i32, i32* %239, align 4
  %295 = sext i32 %294 to i64
  store i64 %295, i64* %RAX.i209, align 8
  %296 = shl nsw i64 %295, 2
  %297 = add nsw i64 %296, 12097552
  %298 = add i64 %291, 11
  store i64 %298, i64* %3, align 8
  %299 = inttoptr i64 %297 to i32*
  %300 = load i32, i32* %299, align 4
  %301 = zext i32 %300 to i64
  store i64 %301, i64* %RCX.i207, align 8
  %302 = add i64 %236, -8
  %303 = add i64 %291, 14
  store i64 %303, i64* %3, align 8
  %304 = inttoptr i64 %302 to i32*
  store i32 %300, i32* %304, align 4
  %305 = load i64, i64* %RBP.i, align 8
  %306 = add i64 %305, -8
  %307 = load i64, i64* %3, align 8
  %308 = add i64 %307, 4
  store i64 %308, i64* %3, align 8
  %309 = inttoptr i64 %306 to i32*
  %310 = load i32, i32* %309, align 4
  store i8 0, i8* %14, align 1
  %311 = and i32 %310, 255
  %312 = tail call i32 @llvm.ctpop.i32(i32 %311)
  %313 = trunc i32 %312 to i8
  %314 = and i8 %313, 1
  %315 = xor i8 %314, 1
  store i8 %315, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %316 = icmp eq i32 %310, 0
  %317 = zext i1 %316 to i8
  store i8 %317, i8* %29, align 1
  %318 = lshr i32 %310, 31
  %319 = trunc i32 %318 to i8
  store i8 %319, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v26 = select i1 %316, i64 10, i64 15
  %320 = add i64 %307, %.v26
  store i64 %320, i64* %3, align 8
  br i1 %316, label %block_47f01c, label %block_.L_47f021

block_47f01c:                                     ; preds = %block_.L_47f004
  %321 = add i64 %320, 306
  store i64 %321, i64* %3, align 8
  br label %block_.L_47f14e

block_.L_47f021:                                  ; preds = %block_.L_47f004
  %322 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*), align 8
  store i8 0, i8* %14, align 1
  %323 = and i32 %322, 255
  %324 = tail call i32 @llvm.ctpop.i32(i32 %323)
  %325 = trunc i32 %324 to i8
  %326 = and i8 %325, 1
  %327 = xor i8 %326, 1
  store i8 %327, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %328 = icmp eq i32 %322, 0
  %329 = zext i1 %328 to i8
  store i8 %329, i8* %29, align 1
  %330 = lshr i32 %322, 31
  %331 = trunc i32 %330 to i8
  store i8 %331, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v27 = select i1 %328, i64 14, i64 19
  %332 = add i64 %320, %.v27
  store i64 %332, i64* %3, align 8
  br i1 %328, label %block_47f02f, label %block_.L_47f034

block_47f02f:                                     ; preds = %block_.L_47f021
  %333 = add i64 %332, 31
  store i64 %333, i64* %3, align 8
  br label %block_.L_47f04e

block_.L_47f034:                                  ; preds = %block_.L_47f021
  store i64 ptrtoint (%G__0x581fd9_type* @G__0x581fd9 to i64), i64* %RDI.i134, align 8
  %334 = add i64 %305, -4
  %335 = add i64 %332, 13
  store i64 %335, i64* %3, align 8
  %336 = inttoptr i64 %334 to i32*
  %337 = load i32, i32* %336, align 4
  %338 = zext i32 %337 to i64
  store i64 %338, i64* %RSI.i131, align 8
  %339 = add i64 %332, 16
  store i64 %339, i64* %3, align 8
  %340 = load i32, i32* %309, align 4
  %341 = zext i32 %340 to i64
  store i64 %341, i64* %RDX.i194, align 8
  store i8 0, i8* %AL.i126, align 1
  %342 = add i64 %332, -184964
  %343 = add i64 %332, 23
  %344 = load i64, i64* %6, align 8
  %345 = add i64 %344, -8
  %346 = inttoptr i64 %345 to i64*
  store i64 %343, i64* %346, align 8
  store i64 %345, i64* %6, align 8
  store i64 %342, i64* %3, align 8
  %call2_47f046 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %342, %struct.Memory* %MEMORY.2)
  %347 = load i64, i64* %RBP.i, align 8
  %348 = add i64 %347, -12
  %349 = load i32, i32* %EAX.i167, align 4
  %350 = load i64, i64* %3, align 8
  %351 = add i64 %350, 3
  store i64 %351, i64* %3, align 8
  %352 = inttoptr i64 %348 to i32*
  store i32 %349, i32* %352, align 4
  %.pre12 = load i64, i64* %3, align 8
  %.pre13 = load i64, i64* %RBP.i, align 8
  br label %block_.L_47f04e

block_.L_47f04e:                                  ; preds = %block_.L_47f034, %block_47f02f
  %353 = phi i64 [ %.pre13, %block_.L_47f034 ], [ %305, %block_47f02f ]
  %354 = phi i64 [ %.pre12, %block_.L_47f034 ], [ %333, %block_47f02f ]
  store i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64* %RAX.i209, align 8
  %355 = add i64 %353, -8
  %356 = add i64 %354, 14
  store i64 %356, i64* %3, align 8
  %357 = inttoptr i64 %355 to i32*
  %358 = load i32, i32* %357, align 4
  %359 = sext i32 %358 to i64
  %360 = mul nsw i64 %359, 564
  store i64 %360, i64* %RCX.i207, align 8
  %361 = lshr i64 %360, 63
  %362 = add i64 %360, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  store i64 %362, i64* %RDX.i194, align 8
  %363 = icmp ult i64 %362, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  %364 = icmp ult i64 %362, %360
  %365 = or i1 %363, %364
  %366 = zext i1 %365 to i8
  store i8 %366, i8* %14, align 1
  %367 = trunc i64 %362 to i32
  %368 = and i32 %367, 252
  %369 = tail call i32 @llvm.ctpop.i32(i32 %368)
  %370 = trunc i32 %369 to i8
  %371 = and i8 %370, 1
  %372 = xor i8 %371, 1
  store i8 %372, i8* %21, align 1
  %373 = xor i64 %360, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  %374 = xor i64 %373, %362
  %375 = lshr i64 %374, 4
  %376 = trunc i64 %375 to i8
  %377 = and i8 %376, 1
  store i8 %377, i8* %26, align 1
  %378 = icmp eq i64 %362, 0
  %379 = zext i1 %378 to i8
  store i8 %379, i8* %29, align 1
  %380 = lshr i64 %362, 63
  %381 = trunc i64 %380 to i8
  store i8 %381, i8* %32, align 1
  %382 = xor i64 %380, lshr (i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64 63)
  %383 = xor i64 %380, %361
  %384 = add nuw nsw i64 %382, %383
  %385 = icmp eq i64 %384, 2
  %386 = zext i1 %385 to i8
  store i8 %386, i8* %38, align 1
  %387 = add i64 %360, add (i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64 4)
  %388 = add i64 %354, 32
  store i64 %388, i64* %3, align 8
  %389 = inttoptr i64 %387 to i32*
  %390 = load i32, i32* %389, align 4
  store i32 %390, i32* %217, align 1
  store float 0.000000e+00, float* %219, align 1
  store float 0.000000e+00, float* %49, align 1
  store float 0.000000e+00, float* %221, align 1
  %391 = add i64 %353, -4
  %392 = add i64 %354, 36
  store i64 %392, i64* %3, align 8
  %393 = inttoptr i64 %391 to i32*
  %394 = load i32, i32* %393, align 4
  %395 = sext i32 %394 to i64
  %396 = mul nsw i64 %395, 564
  store i64 %396, i64* %RCX.i207, align 8
  %397 = lshr i64 %396, 63
  %398 = load i64, i64* %RAX.i209, align 8
  %399 = add i64 %396, %398
  store i64 %399, i64* %RAX.i209, align 8
  %400 = icmp ult i64 %399, %398
  %401 = icmp ult i64 %399, %396
  %402 = or i1 %400, %401
  %403 = zext i1 %402 to i8
  store i8 %403, i8* %14, align 1
  %404 = trunc i64 %399 to i32
  %405 = and i32 %404, 255
  %406 = tail call i32 @llvm.ctpop.i32(i32 %405)
  %407 = trunc i32 %406 to i8
  %408 = and i8 %407, 1
  %409 = xor i8 %408, 1
  store i8 %409, i8* %21, align 1
  %410 = xor i64 %396, %398
  %411 = xor i64 %410, %399
  %412 = lshr i64 %411, 4
  %413 = trunc i64 %412 to i8
  %414 = and i8 %413, 1
  store i8 %414, i8* %26, align 1
  %415 = icmp eq i64 %399, 0
  %416 = zext i1 %415 to i8
  store i8 %416, i8* %29, align 1
  %417 = lshr i64 %399, 63
  %418 = trunc i64 %417 to i8
  store i8 %418, i8* %32, align 1
  %419 = lshr i64 %398, 63
  %420 = xor i64 %417, %419
  %421 = xor i64 %417, %397
  %422 = add nuw nsw i64 %420, %421
  %423 = icmp eq i64 %422, 2
  %424 = zext i1 %423 to i8
  store i8 %424, i8* %38, align 1
  %425 = add i64 %399, 4
  %426 = add i64 %354, 51
  store i64 %426, i64* %3, align 8
  %427 = inttoptr i64 %425 to i32*
  %428 = load i32, i32* %427, align 4
  store i32 %428, i32* %224, align 1
  store float 0.000000e+00, float* %226, align 1
  store float 0.000000e+00, float* %228, align 1
  store float 0.000000e+00, float* %230, align 1
  %429 = add i64 %354, 54
  store i64 %429, i64* %3, align 8
  %430 = load <2 x float>, <2 x float>* %231, align 1
  %431 = extractelement <2 x float> %430, i32 0
  %432 = load <2 x float>, <2 x float>* %232, align 1
  %433 = extractelement <2 x float> %432, i32 0
  %434 = fcmp uno float %431, %433
  br i1 %434, label %435, label %445

; <label>:435:                                    ; preds = %block_.L_47f04e
  %436 = fadd float %431, %433
  %437 = bitcast float %436 to i32
  %438 = and i32 %437, 2143289344
  %439 = icmp eq i32 %438, 2139095040
  %440 = and i32 %437, 4194303
  %441 = icmp ne i32 %440, 0
  %442 = and i1 %439, %441
  br i1 %442, label %443, label %451

; <label>:443:                                    ; preds = %435
  %444 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %429, %struct.Memory* %MEMORY.2)
  %.pre14 = load i64, i64* %3, align 8
  %.pre15 = load i8, i8* %14, align 1
  %.pre16 = load i8, i8* %29, align 1
  br label %routine_ucomiss__xmm0___xmm1.exit

; <label>:445:                                    ; preds = %block_.L_47f04e
  %446 = fcmp ogt float %431, %433
  br i1 %446, label %451, label %447

; <label>:447:                                    ; preds = %445
  %448 = fcmp olt float %431, %433
  br i1 %448, label %451, label %449

; <label>:449:                                    ; preds = %447
  %450 = fcmp oeq float %431, %433
  br i1 %450, label %451, label %455

; <label>:451:                                    ; preds = %449, %447, %445, %435
  %452 = phi i8 [ 0, %445 ], [ 0, %447 ], [ 1, %449 ], [ 1, %435 ]
  %453 = phi i8 [ 0, %445 ], [ 0, %447 ], [ 0, %449 ], [ 1, %435 ]
  %454 = phi i8 [ 0, %445 ], [ 1, %447 ], [ 0, %449 ], [ 1, %435 ]
  store i8 %452, i8* %29, align 1
  store i8 %453, i8* %21, align 1
  store i8 %454, i8* %14, align 1
  br label %455

; <label>:455:                                    ; preds = %451, %449
  %456 = phi i8 [ %452, %451 ], [ %416, %449 ]
  %457 = phi i8 [ %454, %451 ], [ %403, %449 ]
  store i8 0, i8* %38, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %26, align 1
  br label %routine_ucomiss__xmm0___xmm1.exit

routine_ucomiss__xmm0___xmm1.exit:                ; preds = %455, %443
  %458 = phi i8 [ %.pre16, %443 ], [ %456, %455 ]
  %459 = phi i8 [ %.pre15, %443 ], [ %457, %455 ]
  %460 = phi i64 [ %.pre14, %443 ], [ %429, %455 ]
  %461 = phi %struct.Memory* [ %444, %443 ], [ %MEMORY.2, %455 ]
  %462 = or i8 %458, %459
  %463 = icmp ne i8 %462, 0
  %.v28 = select i1 %463, i64 128, i64 6
  %464 = add i64 %460, %.v28
  store i64 %464, i64* %3, align 8
  br i1 %463, label %block_.L_47f104, label %block_47f08a

block_47f08a:                                     ; preds = %routine_ucomiss__xmm0___xmm1.exit
  %465 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*), align 8
  store i8 0, i8* %14, align 1
  %466 = and i32 %465, 255
  %467 = tail call i32 @llvm.ctpop.i32(i32 %466)
  %468 = trunc i32 %467 to i8
  %469 = and i8 %468, 1
  %470 = xor i8 %469, 1
  store i8 %470, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %471 = icmp eq i32 %465, 0
  %472 = zext i1 %471 to i8
  store i8 %472, i8* %29, align 1
  %473 = lshr i32 %465, 31
  %474 = trunc i32 %473 to i8
  store i8 %474, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v29 = select i1 %471, i64 14, i64 19
  %475 = add i64 %464, %.v29
  store i64 %475, i64* %3, align 8
  br i1 %471, label %block_47f098, label %block_.L_47f09d

block_47f098:                                     ; preds = %block_47f08a
  %476 = add i64 %475, 57
  store i64 %476, i64* %3, align 8
  br label %block_.L_47f0d1

block_.L_47f09d:                                  ; preds = %block_47f08a
  store i64 ptrtoint (%G__0x581e6d_type* @G__0x581e6d to i64), i64* %RDI.i134, align 8
  store i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64* %RAX.i209, align 8
  %477 = load i64, i64* %RBP.i, align 8
  %478 = add i64 %477, -8
  %479 = add i64 %475, 23
  store i64 %479, i64* %3, align 8
  %480 = inttoptr i64 %478 to i32*
  %481 = load i32, i32* %480, align 4
  %482 = zext i32 %481 to i64
  store i64 %482, i64* %RSI.i131, align 8
  %483 = add i64 %477, -4
  %484 = add i64 %475, 27
  store i64 %484, i64* %3, align 8
  %485 = inttoptr i64 %483 to i32*
  %486 = load i32, i32* %485, align 4
  %487 = sext i32 %486 to i64
  %488 = mul nsw i64 %487, 564
  store i64 %488, i64* %RCX.i207, align 8
  %489 = lshr i64 %488, 63
  %490 = add i64 %488, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  store i64 %490, i64* %RAX.i209, align 8
  %491 = icmp ult i64 %490, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  %492 = icmp ult i64 %490, %488
  %493 = or i1 %491, %492
  %494 = zext i1 %493 to i8
  store i8 %494, i8* %14, align 1
  %495 = trunc i64 %490 to i32
  %496 = and i32 %495, 252
  %497 = tail call i32 @llvm.ctpop.i32(i32 %496)
  %498 = trunc i32 %497 to i8
  %499 = and i8 %498, 1
  %500 = xor i8 %499, 1
  store i8 %500, i8* %21, align 1
  %501 = xor i64 %488, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  %502 = xor i64 %501, %490
  %503 = lshr i64 %502, 4
  %504 = trunc i64 %503 to i8
  %505 = and i8 %504, 1
  store i8 %505, i8* %26, align 1
  %506 = icmp eq i64 %490, 0
  %507 = zext i1 %506 to i8
  store i8 %507, i8* %29, align 1
  %508 = lshr i64 %490, 63
  %509 = trunc i64 %508 to i8
  store i8 %509, i8* %32, align 1
  %510 = xor i64 %508, lshr (i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64 63)
  %511 = xor i64 %508, %489
  %512 = add nuw nsw i64 %510, %511
  %513 = icmp eq i64 %512, 2
  %514 = zext i1 %513 to i8
  store i8 %514, i8* %38, align 1
  %515 = add i64 %488, add (i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64 4)
  %516 = add i64 %475, 42
  store i64 %516, i64* %3, align 8
  %517 = inttoptr i64 %515 to float*
  %518 = load float, float* %517, align 4
  %519 = fpext float %518 to double
  store double %519, double* %233, align 1
  store i8 1, i8* %AL.i126, align 1
  %520 = add i64 %475, -185069
  %521 = add i64 %475, 49
  %522 = load i64, i64* %6, align 8
  %523 = add i64 %522, -8
  %524 = inttoptr i64 %523 to i64*
  store i64 %521, i64* %524, align 8
  store i64 %523, i64* %6, align 8
  store i64 %520, i64* %3, align 8
  %call2_47f0c9 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %520, %struct.Memory* %461)
  %525 = load i64, i64* %RBP.i, align 8
  %526 = add i64 %525, -16
  %527 = load i32, i32* %EAX.i167, align 4
  %528 = load i64, i64* %3, align 8
  %529 = add i64 %528, 3
  store i64 %529, i64* %3, align 8
  %530 = inttoptr i64 %526 to i32*
  store i32 %527, i32* %530, align 4
  %.pre17 = load i64, i64* %3, align 8
  br label %block_.L_47f0d1

block_.L_47f0d1:                                  ; preds = %block_.L_47f09d, %block_47f098
  %531 = phi i64 [ %.pre17, %block_.L_47f09d ], [ %476, %block_47f098 ]
  %MEMORY.4 = phi %struct.Memory* [ %call2_47f0c9, %block_.L_47f09d ], [ %461, %block_47f098 ]
  store i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64* %RAX.i209, align 8
  %532 = load i64, i64* %RBP.i, align 8
  %533 = add i64 %532, -4
  %534 = add i64 %531, 14
  store i64 %534, i64* %3, align 8
  %535 = inttoptr i64 %533 to i32*
  %536 = load i32, i32* %535, align 4
  %537 = sext i32 %536 to i64
  %538 = mul nsw i64 %537, 564
  store i64 %538, i64* %RCX.i207, align 8
  %539 = lshr i64 %538, 63
  %540 = add i64 %538, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  store i64 %540, i64* %RDX.i194, align 8
  %541 = icmp ult i64 %540, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  %542 = icmp ult i64 %540, %538
  %543 = or i1 %541, %542
  %544 = zext i1 %543 to i8
  store i8 %544, i8* %14, align 1
  %545 = trunc i64 %540 to i32
  %546 = and i32 %545, 252
  %547 = tail call i32 @llvm.ctpop.i32(i32 %546)
  %548 = trunc i32 %547 to i8
  %549 = and i8 %548, 1
  %550 = xor i8 %549, 1
  store i8 %550, i8* %21, align 1
  %551 = xor i64 %538, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  %552 = xor i64 %551, %540
  %553 = lshr i64 %552, 4
  %554 = trunc i64 %553 to i8
  %555 = and i8 %554, 1
  store i8 %555, i8* %26, align 1
  %556 = icmp eq i64 %540, 0
  %557 = zext i1 %556 to i8
  store i8 %557, i8* %29, align 1
  %558 = lshr i64 %540, 63
  %559 = trunc i64 %558 to i8
  store i8 %559, i8* %32, align 1
  %560 = xor i64 %558, lshr (i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64 63)
  %561 = xor i64 %558, %539
  %562 = add nuw nsw i64 %560, %561
  %563 = icmp eq i64 %562, 2
  %564 = zext i1 %563 to i8
  store i8 %564, i8* %38, align 1
  %565 = add i64 %538, add (i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64 4)
  %566 = add i64 %531, 32
  store i64 %566, i64* %3, align 8
  %567 = inttoptr i64 %565 to i32*
  %568 = load i32, i32* %567, align 4
  store i32 %568, i32* %217, align 1
  store float 0.000000e+00, float* %219, align 1
  store float 0.000000e+00, float* %49, align 1
  store float 0.000000e+00, float* %221, align 1
  %569 = add i64 %532, -8
  %570 = add i64 %531, 36
  store i64 %570, i64* %3, align 8
  %571 = inttoptr i64 %569 to i32*
  %572 = load i32, i32* %571, align 4
  %573 = sext i32 %572 to i64
  %574 = mul nsw i64 %573, 564
  store i64 %574, i64* %RCX.i207, align 8
  %575 = lshr i64 %574, 63
  %576 = load i64, i64* %RAX.i209, align 8
  %577 = add i64 %574, %576
  store i64 %577, i64* %RAX.i209, align 8
  %578 = icmp ult i64 %577, %576
  %579 = icmp ult i64 %577, %574
  %580 = or i1 %578, %579
  %581 = zext i1 %580 to i8
  store i8 %581, i8* %14, align 1
  %582 = trunc i64 %577 to i32
  %583 = and i32 %582, 255
  %584 = tail call i32 @llvm.ctpop.i32(i32 %583)
  %585 = trunc i32 %584 to i8
  %586 = and i8 %585, 1
  %587 = xor i8 %586, 1
  store i8 %587, i8* %21, align 1
  %588 = xor i64 %574, %576
  %589 = xor i64 %588, %577
  %590 = lshr i64 %589, 4
  %591 = trunc i64 %590 to i8
  %592 = and i8 %591, 1
  store i8 %592, i8* %26, align 1
  %593 = icmp eq i64 %577, 0
  %594 = zext i1 %593 to i8
  store i8 %594, i8* %29, align 1
  %595 = lshr i64 %577, 63
  %596 = trunc i64 %595 to i8
  store i8 %596, i8* %32, align 1
  %597 = lshr i64 %576, 63
  %598 = xor i64 %595, %597
  %599 = xor i64 %595, %575
  %600 = add nuw nsw i64 %598, %599
  %601 = icmp eq i64 %600, 2
  %602 = zext i1 %601 to i8
  store i8 %602, i8* %38, align 1
  %603 = add i64 %577, 4
  %604 = add i64 %531, 51
  store i64 %604, i64* %3, align 8
  %605 = load <2 x float>, <2 x float>* %232, align 1
  %606 = extractelement <2 x float> %605, i32 0
  %607 = inttoptr i64 %603 to float*
  store float %606, float* %607, align 4
  %.pre18 = load i64, i64* %3, align 8
  br label %block_.L_47f104

block_.L_47f104:                                  ; preds = %block_.L_47f0d1, %routine_ucomiss__xmm0___xmm1.exit
  %608 = phi i64 [ %464, %routine_ucomiss__xmm0___xmm1.exit ], [ %.pre18, %block_.L_47f0d1 ]
  %MEMORY.5 = phi %struct.Memory* [ %461, %routine_ucomiss__xmm0___xmm1.exit ], [ %MEMORY.4, %block_.L_47f0d1 ]
  %609 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*), align 8
  store i8 0, i8* %14, align 1
  %610 = and i32 %609, 255
  %611 = tail call i32 @llvm.ctpop.i32(i32 %610)
  %612 = trunc i32 %611 to i8
  %613 = and i8 %612, 1
  %614 = xor i8 %613, 1
  store i8 %614, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %615 = icmp eq i32 %609, 0
  %616 = zext i1 %615 to i8
  store i8 %616, i8* %29, align 1
  %617 = lshr i32 %609, 31
  %618 = trunc i32 %617 to i8
  store i8 %618, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v30 = select i1 %615, i64 14, i64 19
  %619 = add i64 %608, %.v30
  store i64 %619, i64* %3, align 8
  br i1 %615, label %block_47f112, label %block_.L_47f117

block_47f112:                                     ; preds = %block_.L_47f104
  %620 = add i64 %619, 28
  store i64 %620, i64* %3, align 8
  br label %block_.L_47f12e

block_.L_47f117:                                  ; preds = %block_.L_47f104
  store i64 ptrtoint (%G__0x582001_type* @G__0x582001 to i64), i64* %RDI.i134, align 8
  %621 = load i64, i64* %RBP.i, align 8
  %622 = add i64 %621, -4
  %623 = add i64 %619, 13
  store i64 %623, i64* %3, align 8
  %624 = inttoptr i64 %622 to i32*
  %625 = load i32, i32* %624, align 4
  %626 = zext i32 %625 to i64
  store i64 %626, i64* %RSI.i131, align 8
  store i8 0, i8* %AL.i126, align 1
  %627 = add i64 %619, -185191
  %628 = add i64 %619, 20
  %629 = load i64, i64* %6, align 8
  %630 = add i64 %629, -8
  %631 = inttoptr i64 %630 to i64*
  store i64 %628, i64* %631, align 8
  store i64 %630, i64* %6, align 8
  store i64 %627, i64* %3, align 8
  %call2_47f126 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %627, %struct.Memory* %MEMORY.5)
  %632 = load i64, i64* %RBP.i, align 8
  %633 = add i64 %632, -20
  %634 = load i32, i32* %EAX.i167, align 4
  %635 = load i64, i64* %3, align 8
  %636 = add i64 %635, 3
  store i64 %636, i64* %3, align 8
  %637 = inttoptr i64 %633 to i32*
  store i32 %634, i32* %637, align 4
  %.pre19 = load i64, i64* %3, align 8
  br label %block_.L_47f12e

block_.L_47f12e:                                  ; preds = %block_.L_47f117, %block_47f112
  %638 = phi i64 [ %.pre19, %block_.L_47f117 ], [ %620, %block_47f112 ]
  %MEMORY.6 = phi %struct.Memory* [ %call2_47f126, %block_.L_47f117 ], [ %MEMORY.5, %block_47f112 ]
  store <4 x i32> zeroinitializer, <4 x i32>* %234, align 1
  store i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64* %RAX.i209, align 8
  %639 = load i64, i64* %RBP.i, align 8
  %640 = add i64 %639, -4
  %641 = add i64 %638, 17
  store i64 %641, i64* %3, align 8
  %642 = inttoptr i64 %640 to i32*
  %643 = load i32, i32* %642, align 4
  %644 = sext i32 %643 to i64
  %645 = mul nsw i64 %644, 564
  store i64 %645, i64* %RCX.i207, align 8
  %646 = lshr i64 %645, 63
  %647 = add i64 %645, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  store i64 %647, i64* %RAX.i209, align 8
  %648 = icmp ult i64 %647, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  %649 = icmp ult i64 %647, %645
  %650 = or i1 %648, %649
  %651 = zext i1 %650 to i8
  store i8 %651, i8* %14, align 1
  %652 = trunc i64 %647 to i32
  %653 = and i32 %652, 252
  %654 = tail call i32 @llvm.ctpop.i32(i32 %653)
  %655 = trunc i32 %654 to i8
  %656 = and i8 %655, 1
  %657 = xor i8 %656, 1
  store i8 %657, i8* %21, align 1
  %658 = xor i64 %645, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  %659 = xor i64 %658, %647
  %660 = lshr i64 %659, 4
  %661 = trunc i64 %660 to i8
  %662 = and i8 %661, 1
  store i8 %662, i8* %26, align 1
  %663 = icmp eq i64 %647, 0
  %664 = zext i1 %663 to i8
  store i8 %664, i8* %29, align 1
  %665 = lshr i64 %647, 63
  %666 = trunc i64 %665 to i8
  store i8 %666, i8* %32, align 1
  %667 = xor i64 %665, lshr (i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64 63)
  %668 = xor i64 %665, %646
  %669 = add nuw nsw i64 %667, %668
  %670 = icmp eq i64 %669, 2
  %671 = zext i1 %670 to i8
  store i8 %671, i8* %38, align 1
  %672 = add i64 %645, add (i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64 4)
  %673 = add i64 %638, 32
  store i64 %673, i64* %3, align 8
  %674 = load <2 x float>, <2 x float>* %232, align 1
  %675 = extractelement <2 x float> %674, i32 0
  %676 = inttoptr i64 %672 to float*
  store float %675, float* %676, align 4
  %.pre20 = load i64, i64* %RBP.i, align 8
  %.pre21 = load i64, i64* %3, align 8
  br label %block_.L_47f14e

block_.L_47f14e:                                  ; preds = %block_.L_47f12e, %block_47f01c, %block_47efff
  %677 = phi i64 [ %.pre21, %block_.L_47f12e ], [ %321, %block_47f01c ], [ %292, %block_47efff ]
  %678 = phi i64 [ %.pre20, %block_.L_47f12e ], [ %305, %block_47f01c ], [ %236, %block_47efff ]
  %MEMORY.7 = phi %struct.Memory* [ %MEMORY.6, %block_.L_47f12e ], [ %MEMORY.2, %block_47f01c ], [ %MEMORY.2, %block_47efff ]
  %679 = add i64 %678, -4
  %680 = add i64 %677, 3
  store i64 %680, i64* %3, align 8
  %681 = inttoptr i64 %679 to i32*
  %682 = load i32, i32* %681, align 4
  %683 = add i32 %682, 1
  %684 = zext i32 %683 to i64
  store i64 %684, i64* %RAX.i209, align 8
  %685 = icmp eq i32 %682, -1
  %686 = icmp eq i32 %683, 0
  %687 = or i1 %685, %686
  %688 = zext i1 %687 to i8
  store i8 %688, i8* %14, align 1
  %689 = and i32 %683, 255
  %690 = tail call i32 @llvm.ctpop.i32(i32 %689)
  %691 = trunc i32 %690 to i8
  %692 = and i8 %691, 1
  %693 = xor i8 %692, 1
  store i8 %693, i8* %21, align 1
  %694 = xor i32 %683, %682
  %695 = lshr i32 %694, 4
  %696 = trunc i32 %695 to i8
  %697 = and i8 %696, 1
  store i8 %697, i8* %26, align 1
  %698 = zext i1 %686 to i8
  store i8 %698, i8* %29, align 1
  %699 = lshr i32 %683, 31
  %700 = trunc i32 %699 to i8
  store i8 %700, i8* %32, align 1
  %701 = lshr i32 %682, 31
  %702 = xor i32 %699, %701
  %703 = add nuw nsw i32 %702, %699
  %704 = icmp eq i32 %703, 2
  %705 = zext i1 %704 to i8
  store i8 %705, i8* %38, align 1
  %706 = add i64 %677, 9
  store i64 %706, i64* %3, align 8
  store i32 %683, i32* %681, align 4
  %707 = load i64, i64* %3, align 8
  %708 = add i64 %707, -378
  store i64 %708, i64* %3, align 8
  br label %block_.L_47efdd

block_.L_47f15c:                                  ; preds = %block_.L_47efdd
  %709 = load i64, i64* %6, align 8
  %710 = add i64 %709, 32
  store i64 %710, i64* %6, align 8
  %711 = icmp ugt i64 %709, -33
  %712 = zext i1 %711 to i8
  store i8 %712, i8* %14, align 1
  %713 = trunc i64 %710 to i32
  %714 = and i32 %713, 255
  %715 = tail call i32 @llvm.ctpop.i32(i32 %714)
  %716 = trunc i32 %715 to i8
  %717 = and i8 %716, 1
  %718 = xor i8 %717, 1
  store i8 %718, i8* %21, align 1
  %719 = xor i64 %710, %709
  %720 = lshr i64 %719, 4
  %721 = trunc i64 %720 to i8
  %722 = and i8 %721, 1
  store i8 %722, i8* %26, align 1
  %723 = icmp eq i64 %710, 0
  %724 = zext i1 %723 to i8
  store i8 %724, i8* %29, align 1
  %725 = lshr i64 %710, 63
  %726 = trunc i64 %725 to i8
  store i8 %726, i8* %32, align 1
  %727 = lshr i64 %709, 63
  %728 = xor i64 %725, %727
  %729 = add nuw nsw i64 %728, %725
  %730 = icmp eq i64 %729, 2
  %731 = zext i1 %730 to i8
  store i8 %731, i8* %38, align 1
  %732 = add i64 %265, 5
  store i64 %732, i64* %3, align 8
  %733 = add i64 %709, 40
  %734 = inttoptr i64 %710 to i64*
  %735 = load i64, i64* %734, align 8
  store i64 %735, i64* %RBP.i, align 8
  store i64 %733, i64* %6, align 8
  %736 = add i64 %265, 6
  store i64 %736, i64* %3, align 8
  %737 = inttoptr i64 %733 to i64*
  %738 = load i64, i64* %737, align 8
  store i64 %738, i64* %3, align 8
  %739 = add i64 %709, 48
  store i64 %739, i64* %6, align 8
  ret %struct.Memory* %MEMORY.2
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
define %struct.Memory* @routine_subq__0x20___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -32
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 32
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
  %17 = xor i64 %6, %3
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x15__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 21, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x190__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -400
  %10 = icmp ult i32 %8, 400
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_47efd6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x8__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 12099168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x3___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -3
  %8 = icmp ult i32 %4, 3
  %9 = zext i1 %8 to i8
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9, i8* %10, align 1
  %11 = and i32 %7, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = xor i32 %7, %4
  %18 = lshr i32 %17, 4
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %20, i8* %21, align 1
  %22 = icmp eq i32 %7, 0
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %23, i8* %24, align 1
  %25 = lshr i32 %7, 31
  %26 = trunc i32 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %4, 31
  %29 = xor i32 %25, %28
  %30 = add nuw nsw i32 %29, %28
  %31 = icmp eq i32 %30, 2
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %32, i8* %33, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_47efc3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0xb9d8f0___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x234___rcx___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 564
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RCX, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i128 %10 to i32
  %17 = and i32 %16, 252
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %24, align 1
  %25 = lshr i64 %11, 63
  %26 = trunc i64 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %14, i8* %28, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rcx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %RDX, align 8
  %8 = icmp ult i64 %7, %3
  %9 = icmp ult i64 %7, %4
  %10 = or i1 %8, %9
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = trunc i64 %7 to i32
  %14 = and i32 %13, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1
  %20 = xor i64 %4, %3
  %21 = xor i64 %20, %7
  %22 = lshr i64 %21, 4
  %23 = trunc i64 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1
  %26 = icmp eq i64 %7, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1
  %29 = lshr i64 %7, 63
  %30 = trunc i64 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = lshr i64 %3, 63
  %33 = lshr i64 %4, 63
  %34 = xor i64 %29, %32
  %35 = xor i64 %29, %33
  %36 = add nuw nsw i64 %34, %35
  %37 = icmp eq i64 %36, 2
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %38, i8* %39, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss___rdx____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = bitcast i64* %RDX to i32**
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rcx___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %RAX, align 8
  %8 = icmp ult i64 %7, %3
  %9 = icmp ult i64 %7, %4
  %10 = or i1 %8, %9
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = trunc i64 %7 to i32
  %14 = and i32 %13, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1
  %20 = xor i64 %4, %3
  %21 = xor i64 %20, %7
  %22 = lshr i64 %21, 4
  %23 = trunc i64 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1
  %26 = icmp eq i64 %7, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1
  %29 = lshr i64 %7, 63
  %30 = trunc i64 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = lshr i64 %3, 63
  %33 = lshr i64 %4, 63
  %34 = xor i64 %29, %32
  %35 = xor i64 %29, %33
  %36 = add nuw nsw i64 %34, %35
  %37 = icmp eq i64 %36, 2
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %38, i8* %39, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__0x4__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 4
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
define %struct.Memory* @routine_jmpq_.L_47efc8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
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
define %struct.Memory* @routine_movl__eax__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47ef6f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x15__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 21, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x190__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -400
  %10 = icmp ult i32 %8, 400
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_47f15c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x4__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_47f004(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_47f14e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xb89810___rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 12097552
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = and i32 %8, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %16, align 1
  %17 = icmp eq i32 %8, 0
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %18, i8* %19, align 1
  %20 = lshr i32 %8, 31
  %21 = trunc i32 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_47f021(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0xab0f28(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6, align 1
  %7 = and i32 %5, 255
  %8 = tail call i32 @llvm.ctpop.i32(i32 %7)
  %9 = trunc i32 %8 to i8
  %10 = and i8 %9, 1
  %11 = xor i8 %10, 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %11, i8* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %13, align 1
  %14 = icmp eq i32 %5, 0
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %15, i8* %16, align 1
  %17 = lshr i32 %5, 31
  %18 = trunc i32 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %18, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %20, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_47f034(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_47f04e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x581fd9___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x581fd9_type* @G__0x581fd9 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x4__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x8__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
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
define %struct.Memory* @routine_movb__0x0___al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  store i8 0, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.gprintf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0x4__rdx____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RDX, align 8
  %6 = add i64 %5, 4
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
define %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
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
define %struct.Memory* @routine_movss_0x4__rax____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %5, 4
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

define %struct.Memory* @routine_ucomiss__xmm0___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %4 to <2 x float>*
  %8 = load <2 x float>, <2 x float>* %7, align 1
  %9 = extractelement <2 x float> %8, i32 0
  %10 = bitcast [32 x %union.VectorReg]* %3 to <2 x float>*
  %11 = load <2 x float>, <2 x float>* %10, align 1
  %12 = extractelement <2 x float> %11, i32 0
  %13 = fcmp uno float %9, %12
  br i1 %13, label %14, label %24

; <label>:14:                                     ; preds = %block_400488
  %15 = fadd float %9, %12
  %16 = bitcast float %15 to i32
  %17 = and i32 %16, 2143289344
  %18 = icmp eq i32 %17, 2139095040
  %19 = and i32 %16, 4194303
  %20 = icmp ne i32 %19, 0
  %21 = and i1 %18, %20
  br i1 %21, label %22, label %30

; <label>:22:                                     ; preds = %14
  %23 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %6, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

; <label>:24:                                     ; preds = %block_400488
  %25 = fcmp ogt float %9, %12
  br i1 %25, label %30, label %26

; <label>:26:                                     ; preds = %24
  %27 = fcmp olt float %9, %12
  br i1 %27, label %30, label %28

; <label>:28:                                     ; preds = %26
  %29 = fcmp oeq float %9, %12
  br i1 %29, label %30, label %37

; <label>:30:                                     ; preds = %28, %26, %24, %14
  %31 = phi i8 [ 0, %24 ], [ 0, %26 ], [ 1, %28 ], [ 1, %14 ]
  %32 = phi i8 [ 0, %24 ], [ 0, %26 ], [ 0, %28 ], [ 1, %14 ]
  %33 = phi i8 [ 0, %24 ], [ 1, %26 ], [ 0, %28 ], [ 1, %14 ]
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %32, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %33, i8* %36, align 1
  br label %37

; <label>:37:                                     ; preds = %30, %28
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %38, align 1
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %39, align 1
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %40, align 1
  br label %_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit: ; preds = %37, %22
  %41 = phi %struct.Memory* [ %23, %22 ], [ %2, %37 ]
  ret %struct.Memory* %41
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jbe_.L_47f104(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_47f09d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_47f0d1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x581e6d___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x581e6d_type* @G__0x581e6d to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x8__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd_0x4__rax____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 4
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
define %struct.Memory* @routine_movb__0x1___al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  store i8 1, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_47f117(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_47f12e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x582001___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x582001_type* @G__0x582001 to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_jmpq_.L_47efdd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x20___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 32
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -33
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
  %17 = xor i64 %6, %3
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
