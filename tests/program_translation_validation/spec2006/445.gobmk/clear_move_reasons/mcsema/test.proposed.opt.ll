; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0xb1a03__rip__type = type <{ [4 x i8] }>
%G_0xb1c0d__rip__type = type <{ [4 x i8] }>
%G_0xb4bce4_type = type <{ [4 x i8] }>
%G_0xb6e914_type = type <{ [4 x i8] }>
%G_0xb89e58_type = type <{ [4 x i8] }>
%G_0xb8b858_type = type <{ [4 x i8] }>
%G_0xb8b864_type = type <{ [4 x i8] }>
%G_0xb8c044_type = type <{ [4 x i8] }>
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
@G_0xb1a03__rip_ = global %G_0xb1a03__rip__type zeroinitializer
@G_0xb1c0d__rip_ = global %G_0xb1c0d__rip__type zeroinitializer
@G_0xb4bce4 = local_unnamed_addr global %G_0xb4bce4_type zeroinitializer
@G_0xb6e914 = local_unnamed_addr global %G_0xb6e914_type zeroinitializer
@G_0xb89e58 = local_unnamed_addr global %G_0xb89e58_type zeroinitializer
@G_0xb8b858 = local_unnamed_addr global %G_0xb8b858_type zeroinitializer
@G_0xb8b864 = local_unnamed_addr global %G_0xb8b864_type zeroinitializer
@G_0xb8c044 = local_unnamed_addr global %G_0xb8c044_type zeroinitializer
@G__0xb9d8f0 = global %G__0xb9d8f0_type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare %struct.Memory* @sub_4e2dd0.gg_drand(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @clear_move_reasons(%struct.State* noalias, i64, %struct.Memory* noalias readnone) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -24
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 16
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
  store i32 0, i32* bitcast (%G_0xb8c044_type* @G_0xb8c044 to i32*), align 8
  store i32 0, i32* bitcast (%G_0xb6e914_type* @G_0xb6e914 to i32*), align 8
  store i32 0, i32* bitcast (%G_0xb8b864_type* @G_0xb8b864 to i32*), align 8
  store i32 0, i32* bitcast (%G_0xb89e58_type* @G_0xb89e58 to i32*), align 8
  store i32 0, i32* bitcast (%G_0xb4bce4_type* @G_0xb4bce4 to i32*), align 8
  store i32 0, i32* bitcast (%G_0xb8b858_type* @G_0xb8b858 to i32*), align 8
  %40 = add i64 %7, -12
  %41 = add i64 %10, 80
  store i64 %41, i64* %3, align 8
  %42 = inttoptr i64 %40 to i32*
  store i32 21, i32* %42, align 4
  %RAX.i346 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX.i344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %44 = bitcast [32 x %union.VectorReg]* %43 to i8*
  %45 = bitcast [32 x %union.VectorReg]* %43 to float*
  %46 = bitcast [32 x %union.VectorReg]* %43 to i32*
  %47 = getelementptr inbounds i8, i8* %44, i64 4
  %48 = bitcast i8* %47 to float*
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %50 = bitcast i64* %49 to float*
  %51 = getelementptr inbounds i8, i8* %44, i64 12
  %52 = bitcast i8* %51 to float*
  %53 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %RDX.i328 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %54 = bitcast %union.VectorReg* %53 to <2 x float>*
  %55 = bitcast [32 x %union.VectorReg]* %43 to <2 x float>*
  %56 = bitcast [32 x %union.VectorReg]* %43 to <2 x i32>*
  %57 = bitcast i64* %49 to <2 x i32>*
  %58 = bitcast i8* %47 to i32*
  %59 = bitcast i64* %49 to i32*
  %60 = bitcast i8* %51 to i32*
  %.pre = load i64, i64* %3, align 8
  %61 = bitcast %union.VectorReg* %53 to <4 x i32>*
  br label %block_.L_431511

block_.L_431511:                                  ; preds = %block_.L_431794, %entry
  %62 = phi i64 [ %.pre, %entry ], [ %1129, %block_.L_431794 ]
  %63 = load i64, i64* %RBP.i, align 8
  %64 = add i64 %63, -4
  %65 = add i64 %62, 7
  store i64 %65, i64* %3, align 8
  %66 = inttoptr i64 %64 to i32*
  %67 = load i32, i32* %66, align 4
  %68 = add i32 %67, -400
  %69 = icmp ult i32 %67, 400
  %70 = zext i1 %69 to i8
  store i8 %70, i8* %14, align 1
  %71 = and i32 %68, 255
  %72 = tail call i32 @llvm.ctpop.i32(i32 %71)
  %73 = trunc i32 %72 to i8
  %74 = and i8 %73, 1
  %75 = xor i8 %74, 1
  store i8 %75, i8* %21, align 1
  %76 = xor i32 %67, 16
  %77 = xor i32 %76, %68
  %78 = lshr i32 %77, 4
  %79 = trunc i32 %78 to i8
  %80 = and i8 %79, 1
  store i8 %80, i8* %27, align 1
  %81 = icmp eq i32 %68, 0
  %82 = zext i1 %81 to i8
  store i8 %82, i8* %30, align 1
  %83 = lshr i32 %68, 31
  %84 = trunc i32 %83 to i8
  store i8 %84, i8* %33, align 1
  %85 = lshr i32 %67, 31
  %86 = xor i32 %83, %85
  %87 = add nuw nsw i32 %86, %85
  %88 = icmp eq i32 %87, 2
  %89 = zext i1 %88 to i8
  store i8 %89, i8* %39, align 1
  %90 = icmp ne i8 %84, 0
  %91 = xor i1 %90, %88
  %.v = select i1 %91, i64 13, i64 662
  %92 = add i64 %62, %.v
  store i64 %92, i64* %3, align 8
  br i1 %91, label %block_43151e, label %block_.L_4317a7

block_43151e:                                     ; preds = %block_.L_431511
  %93 = add i64 %92, 4
  store i64 %93, i64* %3, align 8
  %94 = load i32, i32* %66, align 4
  %95 = sext i32 %94 to i64
  store i64 %95, i64* %RAX.i346, align 8
  %96 = add nsw i64 %95, 12099168
  %97 = add i64 %92, 12
  store i64 %97, i64* %3, align 8
  %98 = inttoptr i64 %96 to i8*
  %99 = load i8, i8* %98, align 1
  %100 = zext i8 %99 to i64
  store i64 %100, i64* %RCX.i344, align 8
  %101 = zext i8 %99 to i32
  %102 = add nsw i32 %101, -3
  %103 = icmp ult i8 %99, 3
  %104 = zext i1 %103 to i8
  store i8 %104, i8* %14, align 1
  %105 = and i32 %102, 255
  %106 = tail call i32 @llvm.ctpop.i32(i32 %105)
  %107 = trunc i32 %106 to i8
  %108 = and i8 %107, 1
  %109 = xor i8 %108, 1
  store i8 %109, i8* %21, align 1
  %110 = xor i32 %102, %101
  %111 = lshr i32 %110, 4
  %112 = trunc i32 %111 to i8
  %113 = and i8 %112, 1
  store i8 %113, i8* %27, align 1
  %114 = icmp eq i32 %102, 0
  %115 = zext i1 %114 to i8
  store i8 %115, i8* %30, align 1
  %116 = lshr i32 %102, 31
  %117 = trunc i32 %116 to i8
  store i8 %117, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v8 = select i1 %114, i64 630, i64 21
  %118 = add i64 %92, %.v8
  store i64 %118, i64* %3, align 8
  br i1 %114, label %block_.L_431794, label %block_431533

block_431533:                                     ; preds = %block_43151e
  %119 = add i64 %118, ptrtoint (%G_0xb1c0d__rip__type* @G_0xb1c0d__rip_ to i64)
  %120 = add i64 %118, 8
  store i64 %120, i64* %3, align 8
  %121 = inttoptr i64 %119 to i32*
  %122 = load i32, i32* %121, align 4
  store i32 %122, i32* %46, align 1
  store float 0.000000e+00, float* %48, align 1
  store float 0.000000e+00, float* %50, align 1
  store float 0.000000e+00, float* %52, align 1
  store i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64* %RAX.i346, align 8
  store <4 x i32> zeroinitializer, <4 x i32>* %61, align 1
  %123 = add i64 %118, 25
  store i64 %123, i64* %3, align 8
  %124 = load i32, i32* %66, align 4
  %125 = sext i32 %124 to i64
  %126 = mul nsw i64 %125, 564
  store i64 %126, i64* %RCX.i344, align 8
  %127 = lshr i64 %126, 63
  %128 = add i64 %126, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  store i64 %128, i64* %RDX.i328, align 8
  %129 = icmp ult i64 %128, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  %130 = icmp ult i64 %128, %126
  %131 = or i1 %129, %130
  %132 = zext i1 %131 to i8
  store i8 %132, i8* %14, align 1
  %133 = trunc i64 %128 to i32
  %134 = and i32 %133, 252
  %135 = tail call i32 @llvm.ctpop.i32(i32 %134)
  %136 = trunc i32 %135 to i8
  %137 = and i8 %136, 1
  %138 = xor i8 %137, 1
  store i8 %138, i8* %21, align 1
  %139 = xor i64 %126, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  %140 = xor i64 %139, %128
  %141 = lshr i64 %140, 4
  %142 = trunc i64 %141 to i8
  %143 = and i8 %142, 1
  store i8 %143, i8* %27, align 1
  %144 = icmp eq i64 %128, 0
  %145 = zext i1 %144 to i8
  store i8 %145, i8* %30, align 1
  %146 = lshr i64 %128, 63
  %147 = trunc i64 %146 to i8
  store i8 %147, i8* %33, align 1
  %148 = xor i64 %146, lshr (i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64 63)
  %149 = xor i64 %146, %127
  %150 = add nuw nsw i64 %148, %149
  %151 = icmp eq i64 %150, 2
  %152 = zext i1 %151 to i8
  store i8 %152, i8* %39, align 1
  %153 = inttoptr i64 %128 to float*
  %154 = add i64 %118, 42
  store i64 %154, i64* %3, align 8
  %155 = load <2 x float>, <2 x float>* %54, align 1
  %156 = extractelement <2 x float> %155, i32 0
  store float %156, float* %153, align 4
  %157 = load i64, i64* %RBP.i, align 8
  %158 = add i64 %157, -4
  %159 = load i64, i64* %3, align 8
  %160 = add i64 %159, 4
  store i64 %160, i64* %3, align 8
  %161 = inttoptr i64 %158 to i32*
  %162 = load i32, i32* %161, align 4
  %163 = sext i32 %162 to i64
  %164 = mul nsw i64 %163, 564
  store i64 %164, i64* %RCX.i344, align 8
  %165 = lshr i64 %164, 63
  %166 = load i64, i64* %RAX.i346, align 8
  %167 = add i64 %164, %166
  store i64 %167, i64* %RDX.i328, align 8
  %168 = icmp ult i64 %167, %166
  %169 = icmp ult i64 %167, %164
  %170 = or i1 %168, %169
  %171 = zext i1 %170 to i8
  store i8 %171, i8* %14, align 1
  %172 = trunc i64 %167 to i32
  %173 = and i32 %172, 255
  %174 = tail call i32 @llvm.ctpop.i32(i32 %173)
  %175 = trunc i32 %174 to i8
  %176 = and i8 %175, 1
  %177 = xor i8 %176, 1
  store i8 %177, i8* %21, align 1
  %178 = xor i64 %164, %166
  %179 = xor i64 %178, %167
  %180 = lshr i64 %179, 4
  %181 = trunc i64 %180 to i8
  %182 = and i8 %181, 1
  store i8 %182, i8* %27, align 1
  %183 = icmp eq i64 %167, 0
  %184 = zext i1 %183 to i8
  store i8 %184, i8* %30, align 1
  %185 = lshr i64 %167, 63
  %186 = trunc i64 %185 to i8
  store i8 %186, i8* %33, align 1
  %187 = lshr i64 %166, 63
  %188 = xor i64 %185, %187
  %189 = xor i64 %185, %165
  %190 = add nuw nsw i64 %188, %189
  %191 = icmp eq i64 %190, 2
  %192 = zext i1 %191 to i8
  store i8 %192, i8* %39, align 1
  %193 = add i64 %167, 4
  %194 = add i64 %159, 22
  store i64 %194, i64* %3, align 8
  %195 = load <2 x float>, <2 x float>* %54, align 1
  %196 = extractelement <2 x float> %195, i32 0
  %197 = inttoptr i64 %193 to float*
  store float %196, float* %197, align 4
  %198 = load i64, i64* %RBP.i, align 8
  %199 = add i64 %198, -4
  %200 = load i64, i64* %3, align 8
  %201 = add i64 %200, 4
  store i64 %201, i64* %3, align 8
  %202 = inttoptr i64 %199 to i32*
  %203 = load i32, i32* %202, align 4
  %204 = sext i32 %203 to i64
  %205 = mul nsw i64 %204, 564
  store i64 %205, i64* %RCX.i344, align 8
  %206 = lshr i64 %205, 63
  %207 = load i64, i64* %RAX.i346, align 8
  %208 = add i64 %205, %207
  store i64 %208, i64* %RDX.i328, align 8
  %209 = icmp ult i64 %208, %207
  %210 = icmp ult i64 %208, %205
  %211 = or i1 %209, %210
  %212 = zext i1 %211 to i8
  store i8 %212, i8* %14, align 1
  %213 = trunc i64 %208 to i32
  %214 = and i32 %213, 255
  %215 = tail call i32 @llvm.ctpop.i32(i32 %214)
  %216 = trunc i32 %215 to i8
  %217 = and i8 %216, 1
  %218 = xor i8 %217, 1
  store i8 %218, i8* %21, align 1
  %219 = xor i64 %205, %207
  %220 = xor i64 %219, %208
  %221 = lshr i64 %220, 4
  %222 = trunc i64 %221 to i8
  %223 = and i8 %222, 1
  store i8 %223, i8* %27, align 1
  %224 = icmp eq i64 %208, 0
  %225 = zext i1 %224 to i8
  store i8 %225, i8* %30, align 1
  %226 = lshr i64 %208, 63
  %227 = trunc i64 %226 to i8
  store i8 %227, i8* %33, align 1
  %228 = lshr i64 %207, 63
  %229 = xor i64 %226, %228
  %230 = xor i64 %226, %206
  %231 = add nuw nsw i64 %229, %230
  %232 = icmp eq i64 %231, 2
  %233 = zext i1 %232 to i8
  store i8 %233, i8* %39, align 1
  %234 = add i64 %208, 8
  %235 = add i64 %200, 22
  store i64 %235, i64* %3, align 8
  %236 = load <2 x float>, <2 x float>* %54, align 1
  %237 = extractelement <2 x float> %236, i32 0
  %238 = inttoptr i64 %234 to float*
  store float %237, float* %238, align 4
  %239 = load i64, i64* %RBP.i, align 8
  %240 = add i64 %239, -4
  %241 = load i64, i64* %3, align 8
  %242 = add i64 %241, 4
  store i64 %242, i64* %3, align 8
  %243 = inttoptr i64 %240 to i32*
  %244 = load i32, i32* %243, align 4
  %245 = sext i32 %244 to i64
  %246 = mul nsw i64 %245, 564
  store i64 %246, i64* %RCX.i344, align 8
  %247 = lshr i64 %246, 63
  %248 = load i64, i64* %RAX.i346, align 8
  %249 = add i64 %246, %248
  store i64 %249, i64* %RDX.i328, align 8
  %250 = icmp ult i64 %249, %248
  %251 = icmp ult i64 %249, %246
  %252 = or i1 %250, %251
  %253 = zext i1 %252 to i8
  store i8 %253, i8* %14, align 1
  %254 = trunc i64 %249 to i32
  %255 = and i32 %254, 255
  %256 = tail call i32 @llvm.ctpop.i32(i32 %255)
  %257 = trunc i32 %256 to i8
  %258 = and i8 %257, 1
  %259 = xor i8 %258, 1
  store i8 %259, i8* %21, align 1
  %260 = xor i64 %246, %248
  %261 = xor i64 %260, %249
  %262 = lshr i64 %261, 4
  %263 = trunc i64 %262 to i8
  %264 = and i8 %263, 1
  store i8 %264, i8* %27, align 1
  %265 = icmp eq i64 %249, 0
  %266 = zext i1 %265 to i8
  store i8 %266, i8* %30, align 1
  %267 = lshr i64 %249, 63
  %268 = trunc i64 %267 to i8
  store i8 %268, i8* %33, align 1
  %269 = lshr i64 %248, 63
  %270 = xor i64 %267, %269
  %271 = xor i64 %267, %247
  %272 = add nuw nsw i64 %270, %271
  %273 = icmp eq i64 %272, 2
  %274 = zext i1 %273 to i8
  store i8 %274, i8* %39, align 1
  %275 = add i64 %249, 12
  %276 = add i64 %241, 22
  store i64 %276, i64* %3, align 8
  %277 = load <2 x float>, <2 x float>* %54, align 1
  %278 = extractelement <2 x float> %277, i32 0
  %279 = inttoptr i64 %275 to float*
  store float %278, float* %279, align 4
  %280 = load i64, i64* %RBP.i, align 8
  %281 = add i64 %280, -4
  %282 = load i64, i64* %3, align 8
  %283 = add i64 %282, 4
  store i64 %283, i64* %3, align 8
  %284 = inttoptr i64 %281 to i32*
  %285 = load i32, i32* %284, align 4
  %286 = sext i32 %285 to i64
  %287 = mul nsw i64 %286, 564
  store i64 %287, i64* %RCX.i344, align 8
  %288 = lshr i64 %287, 63
  %289 = load i64, i64* %RAX.i346, align 8
  %290 = add i64 %287, %289
  store i64 %290, i64* %RDX.i328, align 8
  %291 = icmp ult i64 %290, %289
  %292 = icmp ult i64 %290, %287
  %293 = or i1 %291, %292
  %294 = zext i1 %293 to i8
  store i8 %294, i8* %14, align 1
  %295 = trunc i64 %290 to i32
  %296 = and i32 %295, 255
  %297 = tail call i32 @llvm.ctpop.i32(i32 %296)
  %298 = trunc i32 %297 to i8
  %299 = and i8 %298, 1
  %300 = xor i8 %299, 1
  store i8 %300, i8* %21, align 1
  %301 = xor i64 %287, %289
  %302 = xor i64 %301, %290
  %303 = lshr i64 %302, 4
  %304 = trunc i64 %303 to i8
  %305 = and i8 %304, 1
  store i8 %305, i8* %27, align 1
  %306 = icmp eq i64 %290, 0
  %307 = zext i1 %306 to i8
  store i8 %307, i8* %30, align 1
  %308 = lshr i64 %290, 63
  %309 = trunc i64 %308 to i8
  store i8 %309, i8* %33, align 1
  %310 = lshr i64 %289, 63
  %311 = xor i64 %308, %310
  %312 = xor i64 %308, %288
  %313 = add nuw nsw i64 %311, %312
  %314 = icmp eq i64 %313, 2
  %315 = zext i1 %314 to i8
  store i8 %315, i8* %39, align 1
  %316 = add i64 %290, 16
  %317 = add i64 %282, 22
  store i64 %317, i64* %3, align 8
  %318 = load <2 x float>, <2 x float>* %54, align 1
  %319 = extractelement <2 x float> %318, i32 0
  %320 = inttoptr i64 %316 to float*
  store float %319, float* %320, align 4
  %321 = load i64, i64* %RBP.i, align 8
  %322 = add i64 %321, -4
  %323 = load i64, i64* %3, align 8
  %324 = add i64 %323, 4
  store i64 %324, i64* %3, align 8
  %325 = inttoptr i64 %322 to i32*
  %326 = load i32, i32* %325, align 4
  %327 = sext i32 %326 to i64
  %328 = mul nsw i64 %327, 564
  store i64 %328, i64* %RCX.i344, align 8
  %329 = lshr i64 %328, 63
  %330 = load i64, i64* %RAX.i346, align 8
  %331 = add i64 %328, %330
  store i64 %331, i64* %RDX.i328, align 8
  %332 = icmp ult i64 %331, %330
  %333 = icmp ult i64 %331, %328
  %334 = or i1 %332, %333
  %335 = zext i1 %334 to i8
  store i8 %335, i8* %14, align 1
  %336 = trunc i64 %331 to i32
  %337 = and i32 %336, 255
  %338 = tail call i32 @llvm.ctpop.i32(i32 %337)
  %339 = trunc i32 %338 to i8
  %340 = and i8 %339, 1
  %341 = xor i8 %340, 1
  store i8 %341, i8* %21, align 1
  %342 = xor i64 %328, %330
  %343 = xor i64 %342, %331
  %344 = lshr i64 %343, 4
  %345 = trunc i64 %344 to i8
  %346 = and i8 %345, 1
  store i8 %346, i8* %27, align 1
  %347 = icmp eq i64 %331, 0
  %348 = zext i1 %347 to i8
  store i8 %348, i8* %30, align 1
  %349 = lshr i64 %331, 63
  %350 = trunc i64 %349 to i8
  store i8 %350, i8* %33, align 1
  %351 = lshr i64 %330, 63
  %352 = xor i64 %349, %351
  %353 = xor i64 %349, %329
  %354 = add nuw nsw i64 %352, %353
  %355 = icmp eq i64 %354, 2
  %356 = zext i1 %355 to i8
  store i8 %356, i8* %39, align 1
  %357 = add i64 %331, 20
  %358 = add i64 %323, 22
  store i64 %358, i64* %3, align 8
  %359 = load <2 x float>, <2 x float>* %54, align 1
  %360 = extractelement <2 x float> %359, i32 0
  %361 = inttoptr i64 %357 to float*
  store float %360, float* %361, align 4
  %362 = load i64, i64* %RBP.i, align 8
  %363 = add i64 %362, -4
  %364 = load i64, i64* %3, align 8
  %365 = add i64 %364, 4
  store i64 %365, i64* %3, align 8
  %366 = inttoptr i64 %363 to i32*
  %367 = load i32, i32* %366, align 4
  %368 = sext i32 %367 to i64
  %369 = mul nsw i64 %368, 564
  store i64 %369, i64* %RCX.i344, align 8
  %370 = lshr i64 %369, 63
  %371 = load i64, i64* %RAX.i346, align 8
  %372 = add i64 %369, %371
  store i64 %372, i64* %RDX.i328, align 8
  %373 = icmp ult i64 %372, %371
  %374 = icmp ult i64 %372, %369
  %375 = or i1 %373, %374
  %376 = zext i1 %375 to i8
  store i8 %376, i8* %14, align 1
  %377 = trunc i64 %372 to i32
  %378 = and i32 %377, 255
  %379 = tail call i32 @llvm.ctpop.i32(i32 %378)
  %380 = trunc i32 %379 to i8
  %381 = and i8 %380, 1
  %382 = xor i8 %381, 1
  store i8 %382, i8* %21, align 1
  %383 = xor i64 %369, %371
  %384 = xor i64 %383, %372
  %385 = lshr i64 %384, 4
  %386 = trunc i64 %385 to i8
  %387 = and i8 %386, 1
  store i8 %387, i8* %27, align 1
  %388 = icmp eq i64 %372, 0
  %389 = zext i1 %388 to i8
  store i8 %389, i8* %30, align 1
  %390 = lshr i64 %372, 63
  %391 = trunc i64 %390 to i8
  store i8 %391, i8* %33, align 1
  %392 = lshr i64 %371, 63
  %393 = xor i64 %390, %392
  %394 = xor i64 %390, %370
  %395 = add nuw nsw i64 %393, %394
  %396 = icmp eq i64 %395, 2
  %397 = zext i1 %396 to i8
  store i8 %397, i8* %39, align 1
  %398 = add i64 %372, 28
  %399 = add i64 %364, 24
  store i64 %399, i64* %3, align 8
  %400 = inttoptr i64 %398 to i32*
  store i32 0, i32* %400, align 4
  %401 = load i64, i64* %RBP.i, align 8
  %402 = add i64 %401, -4
  %403 = load i64, i64* %3, align 8
  %404 = add i64 %403, 4
  store i64 %404, i64* %3, align 8
  %405 = inttoptr i64 %402 to i32*
  %406 = load i32, i32* %405, align 4
  %407 = sext i32 %406 to i64
  %408 = mul nsw i64 %407, 564
  store i64 %408, i64* %RCX.i344, align 8
  %409 = lshr i64 %408, 63
  %410 = load i64, i64* %RAX.i346, align 8
  %411 = add i64 %408, %410
  store i64 %411, i64* %RDX.i328, align 8
  %412 = icmp ult i64 %411, %410
  %413 = icmp ult i64 %411, %408
  %414 = or i1 %412, %413
  %415 = zext i1 %414 to i8
  store i8 %415, i8* %14, align 1
  %416 = trunc i64 %411 to i32
  %417 = and i32 %416, 255
  %418 = tail call i32 @llvm.ctpop.i32(i32 %417)
  %419 = trunc i32 %418 to i8
  %420 = and i8 %419, 1
  %421 = xor i8 %420, 1
  store i8 %421, i8* %21, align 1
  %422 = xor i64 %408, %410
  %423 = xor i64 %422, %411
  %424 = lshr i64 %423, 4
  %425 = trunc i64 %424 to i8
  %426 = and i8 %425, 1
  store i8 %426, i8* %27, align 1
  %427 = icmp eq i64 %411, 0
  %428 = zext i1 %427 to i8
  store i8 %428, i8* %30, align 1
  %429 = lshr i64 %411, 63
  %430 = trunc i64 %429 to i8
  store i8 %430, i8* %33, align 1
  %431 = lshr i64 %410, 63
  %432 = xor i64 %429, %431
  %433 = xor i64 %429, %409
  %434 = add nuw nsw i64 %432, %433
  %435 = icmp eq i64 %434, 2
  %436 = zext i1 %435 to i8
  store i8 %436, i8* %39, align 1
  %437 = add i64 %411, 24
  %438 = add i64 %403, 22
  store i64 %438, i64* %3, align 8
  %439 = load <2 x float>, <2 x float>* %54, align 1
  %440 = extractelement <2 x float> %439, i32 0
  %441 = inttoptr i64 %437 to float*
  store float %440, float* %441, align 4
  %442 = load i64, i64* %RBP.i, align 8
  %443 = add i64 %442, -4
  %444 = load i64, i64* %3, align 8
  %445 = add i64 %444, 4
  store i64 %445, i64* %3, align 8
  %446 = inttoptr i64 %443 to i32*
  %447 = load i32, i32* %446, align 4
  %448 = sext i32 %447 to i64
  %449 = mul nsw i64 %448, 564
  store i64 %449, i64* %RCX.i344, align 8
  %450 = lshr i64 %449, 63
  %451 = load i64, i64* %RAX.i346, align 8
  %452 = add i64 %449, %451
  store i64 %452, i64* %RDX.i328, align 8
  %453 = icmp ult i64 %452, %451
  %454 = icmp ult i64 %452, %449
  %455 = or i1 %453, %454
  %456 = zext i1 %455 to i8
  store i8 %456, i8* %14, align 1
  %457 = trunc i64 %452 to i32
  %458 = and i32 %457, 255
  %459 = tail call i32 @llvm.ctpop.i32(i32 %458)
  %460 = trunc i32 %459 to i8
  %461 = and i8 %460, 1
  %462 = xor i8 %461, 1
  store i8 %462, i8* %21, align 1
  %463 = xor i64 %449, %451
  %464 = xor i64 %463, %452
  %465 = lshr i64 %464, 4
  %466 = trunc i64 %465 to i8
  %467 = and i8 %466, 1
  store i8 %467, i8* %27, align 1
  %468 = icmp eq i64 %452, 0
  %469 = zext i1 %468 to i8
  store i8 %469, i8* %30, align 1
  %470 = lshr i64 %452, 63
  %471 = trunc i64 %470 to i8
  store i8 %471, i8* %33, align 1
  %472 = lshr i64 %451, 63
  %473 = xor i64 %470, %472
  %474 = xor i64 %470, %450
  %475 = add nuw nsw i64 %473, %474
  %476 = icmp eq i64 %475, 2
  %477 = zext i1 %476 to i8
  store i8 %477, i8* %39, align 1
  %478 = add i64 %452, 32
  %479 = add i64 %444, 24
  store i64 %479, i64* %3, align 8
  %480 = inttoptr i64 %478 to i32*
  store i32 0, i32* %480, align 4
  %481 = load i64, i64* %RBP.i, align 8
  %482 = add i64 %481, -4
  %483 = load i64, i64* %3, align 8
  %484 = add i64 %483, 4
  store i64 %484, i64* %3, align 8
  %485 = inttoptr i64 %482 to i32*
  %486 = load i32, i32* %485, align 4
  %487 = sext i32 %486 to i64
  %488 = mul nsw i64 %487, 564
  store i64 %488, i64* %RCX.i344, align 8
  %489 = lshr i64 %488, 63
  %490 = load i64, i64* %RAX.i346, align 8
  %491 = add i64 %488, %490
  store i64 %491, i64* %RDX.i328, align 8
  %492 = icmp ult i64 %491, %490
  %493 = icmp ult i64 %491, %488
  %494 = or i1 %492, %493
  %495 = zext i1 %494 to i8
  store i8 %495, i8* %14, align 1
  %496 = trunc i64 %491 to i32
  %497 = and i32 %496, 255
  %498 = tail call i32 @llvm.ctpop.i32(i32 %497)
  %499 = trunc i32 %498 to i8
  %500 = and i8 %499, 1
  %501 = xor i8 %500, 1
  store i8 %501, i8* %21, align 1
  %502 = xor i64 %488, %490
  %503 = xor i64 %502, %491
  %504 = lshr i64 %503, 4
  %505 = trunc i64 %504 to i8
  %506 = and i8 %505, 1
  store i8 %506, i8* %27, align 1
  %507 = icmp eq i64 %491, 0
  %508 = zext i1 %507 to i8
  store i8 %508, i8* %30, align 1
  %509 = lshr i64 %491, 63
  %510 = trunc i64 %509 to i8
  store i8 %510, i8* %33, align 1
  %511 = lshr i64 %490, 63
  %512 = xor i64 %509, %511
  %513 = xor i64 %509, %489
  %514 = add nuw nsw i64 %512, %513
  %515 = icmp eq i64 %514, 2
  %516 = zext i1 %515 to i8
  store i8 %516, i8* %39, align 1
  %517 = add i64 %491, 36
  %518 = add i64 %483, 22
  store i64 %518, i64* %3, align 8
  %519 = load <2 x float>, <2 x float>* %54, align 1
  %520 = extractelement <2 x float> %519, i32 0
  %521 = inttoptr i64 %517 to float*
  store float %520, float* %521, align 4
  %522 = load i64, i64* %RBP.i, align 8
  %523 = add i64 %522, -4
  %524 = load i64, i64* %3, align 8
  %525 = add i64 %524, 4
  store i64 %525, i64* %3, align 8
  %526 = inttoptr i64 %523 to i32*
  %527 = load i32, i32* %526, align 4
  %528 = sext i32 %527 to i64
  %529 = mul nsw i64 %528, 564
  store i64 %529, i64* %RCX.i344, align 8
  %530 = lshr i64 %529, 63
  %531 = load i64, i64* %RAX.i346, align 8
  %532 = add i64 %529, %531
  store i64 %532, i64* %RDX.i328, align 8
  %533 = icmp ult i64 %532, %531
  %534 = icmp ult i64 %532, %529
  %535 = or i1 %533, %534
  %536 = zext i1 %535 to i8
  store i8 %536, i8* %14, align 1
  %537 = trunc i64 %532 to i32
  %538 = and i32 %537, 255
  %539 = tail call i32 @llvm.ctpop.i32(i32 %538)
  %540 = trunc i32 %539 to i8
  %541 = and i8 %540, 1
  %542 = xor i8 %541, 1
  store i8 %542, i8* %21, align 1
  %543 = xor i64 %529, %531
  %544 = xor i64 %543, %532
  %545 = lshr i64 %544, 4
  %546 = trunc i64 %545 to i8
  %547 = and i8 %546, 1
  store i8 %547, i8* %27, align 1
  %548 = icmp eq i64 %532, 0
  %549 = zext i1 %548 to i8
  store i8 %549, i8* %30, align 1
  %550 = lshr i64 %532, 63
  %551 = trunc i64 %550 to i8
  store i8 %551, i8* %33, align 1
  %552 = lshr i64 %531, 63
  %553 = xor i64 %550, %552
  %554 = xor i64 %550, %530
  %555 = add nuw nsw i64 %553, %554
  %556 = icmp eq i64 %555, 2
  %557 = zext i1 %556 to i8
  store i8 %557, i8* %39, align 1
  %558 = add i64 %532, 40
  %559 = add i64 %524, 22
  store i64 %559, i64* %3, align 8
  %560 = load <2 x float>, <2 x float>* %54, align 1
  %561 = extractelement <2 x float> %560, i32 0
  %562 = inttoptr i64 %558 to float*
  store float %561, float* %562, align 4
  %563 = load i64, i64* %RBP.i, align 8
  %564 = add i64 %563, -4
  %565 = load i64, i64* %3, align 8
  %566 = add i64 %565, 4
  store i64 %566, i64* %3, align 8
  %567 = inttoptr i64 %564 to i32*
  %568 = load i32, i32* %567, align 4
  %569 = sext i32 %568 to i64
  %570 = mul nsw i64 %569, 564
  store i64 %570, i64* %RCX.i344, align 8
  %571 = lshr i64 %570, 63
  %572 = load i64, i64* %RAX.i346, align 8
  %573 = add i64 %570, %572
  store i64 %573, i64* %RDX.i328, align 8
  %574 = icmp ult i64 %573, %572
  %575 = icmp ult i64 %573, %570
  %576 = or i1 %574, %575
  %577 = zext i1 %576 to i8
  store i8 %577, i8* %14, align 1
  %578 = trunc i64 %573 to i32
  %579 = and i32 %578, 255
  %580 = tail call i32 @llvm.ctpop.i32(i32 %579)
  %581 = trunc i32 %580 to i8
  %582 = and i8 %581, 1
  %583 = xor i8 %582, 1
  store i8 %583, i8* %21, align 1
  %584 = xor i64 %570, %572
  %585 = xor i64 %584, %573
  %586 = lshr i64 %585, 4
  %587 = trunc i64 %586 to i8
  %588 = and i8 %587, 1
  store i8 %588, i8* %27, align 1
  %589 = icmp eq i64 %573, 0
  %590 = zext i1 %589 to i8
  store i8 %590, i8* %30, align 1
  %591 = lshr i64 %573, 63
  %592 = trunc i64 %591 to i8
  store i8 %592, i8* %33, align 1
  %593 = lshr i64 %572, 63
  %594 = xor i64 %591, %593
  %595 = xor i64 %591, %571
  %596 = add nuw nsw i64 %594, %595
  %597 = icmp eq i64 %596, 2
  %598 = zext i1 %597 to i8
  store i8 %598, i8* %39, align 1
  %599 = add i64 %573, 44
  %600 = add i64 %565, 22
  store i64 %600, i64* %3, align 8
  %601 = load <2 x float>, <2 x float>* %54, align 1
  %602 = extractelement <2 x float> %601, i32 0
  %603 = inttoptr i64 %599 to float*
  store float %602, float* %603, align 4
  %604 = load i64, i64* %RBP.i, align 8
  %605 = add i64 %604, -4
  %606 = load i64, i64* %3, align 8
  %607 = add i64 %606, 4
  store i64 %607, i64* %3, align 8
  %608 = inttoptr i64 %605 to i32*
  %609 = load i32, i32* %608, align 4
  %610 = sext i32 %609 to i64
  %611 = mul nsw i64 %610, 564
  store i64 %611, i64* %RCX.i344, align 8
  %612 = lshr i64 %611, 63
  %613 = load i64, i64* %RAX.i346, align 8
  %614 = add i64 %611, %613
  store i64 %614, i64* %RDX.i328, align 8
  %615 = icmp ult i64 %614, %613
  %616 = icmp ult i64 %614, %611
  %617 = or i1 %615, %616
  %618 = zext i1 %617 to i8
  store i8 %618, i8* %14, align 1
  %619 = trunc i64 %614 to i32
  %620 = and i32 %619, 255
  %621 = tail call i32 @llvm.ctpop.i32(i32 %620)
  %622 = trunc i32 %621 to i8
  %623 = and i8 %622, 1
  %624 = xor i8 %623, 1
  store i8 %624, i8* %21, align 1
  %625 = xor i64 %611, %613
  %626 = xor i64 %625, %614
  %627 = lshr i64 %626, 4
  %628 = trunc i64 %627 to i8
  %629 = and i8 %628, 1
  store i8 %629, i8* %27, align 1
  %630 = icmp eq i64 %614, 0
  %631 = zext i1 %630 to i8
  store i8 %631, i8* %30, align 1
  %632 = lshr i64 %614, 63
  %633 = trunc i64 %632 to i8
  store i8 %633, i8* %33, align 1
  %634 = lshr i64 %613, 63
  %635 = xor i64 %632, %634
  %636 = xor i64 %632, %612
  %637 = add nuw nsw i64 %635, %636
  %638 = icmp eq i64 %637, 2
  %639 = zext i1 %638 to i8
  store i8 %639, i8* %39, align 1
  %640 = add i64 %614, 48
  %641 = add i64 %606, 22
  store i64 %641, i64* %3, align 8
  %642 = load <2 x float>, <2 x float>* %54, align 1
  %643 = extractelement <2 x float> %642, i32 0
  %644 = inttoptr i64 %640 to float*
  store float %643, float* %644, align 4
  %645 = load i64, i64* %RBP.i, align 8
  %646 = add i64 %645, -4
  %647 = load i64, i64* %3, align 8
  %648 = add i64 %647, 4
  store i64 %648, i64* %3, align 8
  %649 = inttoptr i64 %646 to i32*
  %650 = load i32, i32* %649, align 4
  %651 = sext i32 %650 to i64
  %652 = mul nsw i64 %651, 564
  store i64 %652, i64* %RCX.i344, align 8
  %653 = lshr i64 %652, 63
  %654 = load i64, i64* %RAX.i346, align 8
  %655 = add i64 %652, %654
  store i64 %655, i64* %RDX.i328, align 8
  %656 = icmp ult i64 %655, %654
  %657 = icmp ult i64 %655, %652
  %658 = or i1 %656, %657
  %659 = zext i1 %658 to i8
  store i8 %659, i8* %14, align 1
  %660 = trunc i64 %655 to i32
  %661 = and i32 %660, 255
  %662 = tail call i32 @llvm.ctpop.i32(i32 %661)
  %663 = trunc i32 %662 to i8
  %664 = and i8 %663, 1
  %665 = xor i8 %664, 1
  store i8 %665, i8* %21, align 1
  %666 = xor i64 %652, %654
  %667 = xor i64 %666, %655
  %668 = lshr i64 %667, 4
  %669 = trunc i64 %668 to i8
  %670 = and i8 %669, 1
  store i8 %670, i8* %27, align 1
  %671 = icmp eq i64 %655, 0
  %672 = zext i1 %671 to i8
  store i8 %672, i8* %30, align 1
  %673 = lshr i64 %655, 63
  %674 = trunc i64 %673 to i8
  store i8 %674, i8* %33, align 1
  %675 = lshr i64 %654, 63
  %676 = xor i64 %673, %675
  %677 = xor i64 %673, %653
  %678 = add nuw nsw i64 %676, %677
  %679 = icmp eq i64 %678, 2
  %680 = zext i1 %679 to i8
  store i8 %680, i8* %39, align 1
  %681 = add i64 %655, 52
  %682 = add i64 %647, 22
  store i64 %682, i64* %3, align 8
  %683 = load <2 x float>, <2 x float>* %54, align 1
  %684 = extractelement <2 x float> %683, i32 0
  %685 = inttoptr i64 %681 to float*
  store float %684, float* %685, align 4
  %686 = load i64, i64* %RBP.i, align 8
  %687 = add i64 %686, -4
  %688 = load i64, i64* %3, align 8
  %689 = add i64 %688, 4
  store i64 %689, i64* %3, align 8
  %690 = inttoptr i64 %687 to i32*
  %691 = load i32, i32* %690, align 4
  %692 = sext i32 %691 to i64
  %693 = mul nsw i64 %692, 564
  store i64 %693, i64* %RCX.i344, align 8
  %694 = lshr i64 %693, 63
  %695 = load i64, i64* %RAX.i346, align 8
  %696 = add i64 %693, %695
  store i64 %696, i64* %RDX.i328, align 8
  %697 = icmp ult i64 %696, %695
  %698 = icmp ult i64 %696, %693
  %699 = or i1 %697, %698
  %700 = zext i1 %699 to i8
  store i8 %700, i8* %14, align 1
  %701 = trunc i64 %696 to i32
  %702 = and i32 %701, 255
  %703 = tail call i32 @llvm.ctpop.i32(i32 %702)
  %704 = trunc i32 %703 to i8
  %705 = and i8 %704, 1
  %706 = xor i8 %705, 1
  store i8 %706, i8* %21, align 1
  %707 = xor i64 %693, %695
  %708 = xor i64 %707, %696
  %709 = lshr i64 %708, 4
  %710 = trunc i64 %709 to i8
  %711 = and i8 %710, 1
  store i8 %711, i8* %27, align 1
  %712 = icmp eq i64 %696, 0
  %713 = zext i1 %712 to i8
  store i8 %713, i8* %30, align 1
  %714 = lshr i64 %696, 63
  %715 = trunc i64 %714 to i8
  store i8 %715, i8* %33, align 1
  %716 = lshr i64 %695, 63
  %717 = xor i64 %714, %716
  %718 = xor i64 %714, %694
  %719 = add nuw nsw i64 %717, %718
  %720 = icmp eq i64 %719, 2
  %721 = zext i1 %720 to i8
  store i8 %721, i8* %39, align 1
  %722 = add i64 %696, 56
  %723 = add i64 %688, 22
  store i64 %723, i64* %3, align 8
  %724 = load <2 x float>, <2 x float>* %55, align 1
  %725 = extractelement <2 x float> %724, i32 0
  %726 = inttoptr i64 %722 to float*
  store float %725, float* %726, align 4
  %727 = load i64, i64* %RBP.i, align 8
  %728 = add i64 %727, -4
  %729 = load i64, i64* %3, align 8
  %730 = add i64 %729, 4
  store i64 %730, i64* %3, align 8
  %731 = inttoptr i64 %728 to i32*
  %732 = load i32, i32* %731, align 4
  %733 = sext i32 %732 to i64
  %734 = mul nsw i64 %733, 564
  store i64 %734, i64* %RCX.i344, align 8
  %735 = lshr i64 %734, 63
  %736 = load i64, i64* %RAX.i346, align 8
  %737 = add i64 %734, %736
  store i64 %737, i64* %RDX.i328, align 8
  %738 = icmp ult i64 %737, %736
  %739 = icmp ult i64 %737, %734
  %740 = or i1 %738, %739
  %741 = zext i1 %740 to i8
  store i8 %741, i8* %14, align 1
  %742 = trunc i64 %737 to i32
  %743 = and i32 %742, 255
  %744 = tail call i32 @llvm.ctpop.i32(i32 %743)
  %745 = trunc i32 %744 to i8
  %746 = and i8 %745, 1
  %747 = xor i8 %746, 1
  store i8 %747, i8* %21, align 1
  %748 = xor i64 %734, %736
  %749 = xor i64 %748, %737
  %750 = lshr i64 %749, 4
  %751 = trunc i64 %750 to i8
  %752 = and i8 %751, 1
  store i8 %752, i8* %27, align 1
  %753 = icmp eq i64 %737, 0
  %754 = zext i1 %753 to i8
  store i8 %754, i8* %30, align 1
  %755 = lshr i64 %737, 63
  %756 = trunc i64 %755 to i8
  store i8 %756, i8* %33, align 1
  %757 = lshr i64 %736, 63
  %758 = xor i64 %755, %757
  %759 = xor i64 %755, %735
  %760 = add nuw nsw i64 %758, %759
  %761 = icmp eq i64 %760, 2
  %762 = zext i1 %761 to i8
  store i8 %762, i8* %39, align 1
  %763 = add i64 %737, 60
  %764 = add i64 %729, 22
  store i64 %764, i64* %3, align 8
  %765 = load <2 x float>, <2 x float>* %54, align 1
  %766 = extractelement <2 x float> %765, i32 0
  %767 = inttoptr i64 %763 to float*
  store float %766, float* %767, align 4
  %768 = load i64, i64* %RBP.i, align 8
  %769 = add i64 %768, -4
  %770 = load i64, i64* %3, align 8
  %771 = add i64 %770, 4
  store i64 %771, i64* %3, align 8
  %772 = inttoptr i64 %769 to i32*
  %773 = load i32, i32* %772, align 4
  %774 = sext i32 %773 to i64
  %775 = mul nsw i64 %774, 564
  store i64 %775, i64* %RCX.i344, align 8
  %776 = lshr i64 %775, 63
  %777 = load i64, i64* %RAX.i346, align 8
  %778 = add i64 %775, %777
  store i64 %778, i64* %RAX.i346, align 8
  %779 = icmp ult i64 %778, %777
  %780 = icmp ult i64 %778, %775
  %781 = or i1 %779, %780
  %782 = zext i1 %781 to i8
  store i8 %782, i8* %14, align 1
  %783 = trunc i64 %778 to i32
  %784 = and i32 %783, 255
  %785 = tail call i32 @llvm.ctpop.i32(i32 %784)
  %786 = trunc i32 %785 to i8
  %787 = and i8 %786, 1
  %788 = xor i8 %787, 1
  store i8 %788, i8* %21, align 1
  %789 = xor i64 %775, %777
  %790 = xor i64 %789, %778
  %791 = lshr i64 %790, 4
  %792 = trunc i64 %791 to i8
  %793 = and i8 %792, 1
  store i8 %793, i8* %27, align 1
  %794 = icmp eq i64 %778, 0
  %795 = zext i1 %794 to i8
  store i8 %795, i8* %30, align 1
  %796 = lshr i64 %778, 63
  %797 = trunc i64 %796 to i8
  store i8 %797, i8* %33, align 1
  %798 = lshr i64 %777, 63
  %799 = xor i64 %796, %798
  %800 = xor i64 %796, %776
  %801 = add nuw nsw i64 %799, %800
  %802 = icmp eq i64 %801, 2
  %803 = zext i1 %802 to i8
  store i8 %803, i8* %39, align 1
  %804 = add i64 %778, 64
  %805 = add i64 %770, 19
  store i64 %805, i64* %3, align 8
  %806 = load <2 x float>, <2 x float>* %55, align 1
  %807 = extractelement <2 x float> %806, i32 0
  %808 = inttoptr i64 %804 to float*
  store float %807, float* %808, align 4
  %809 = load i64, i64* %RBP.i, align 8
  %810 = add i64 %809, -8
  %811 = load i64, i64* %3, align 8
  %812 = add i64 %811, 7
  store i64 %812, i64* %3, align 8
  %813 = inttoptr i64 %810 to i32*
  store i32 0, i32* %813, align 4
  %.pre5 = load i64, i64* %3, align 8
  br label %block_.L_4316c5

block_.L_4316c5:                                  ; preds = %block_4316cf, %block_431533
  %814 = phi i64 [ %916, %block_4316cf ], [ %.pre5, %block_431533 ]
  %815 = load i64, i64* %RBP.i, align 8
  %816 = add i64 %815, -8
  %817 = add i64 %814, 4
  store i64 %817, i64* %3, align 8
  %818 = inttoptr i64 %816 to i32*
  %819 = load i32, i32* %818, align 4
  %820 = add i32 %819, -120
  %821 = icmp ult i32 %819, 120
  %822 = zext i1 %821 to i8
  store i8 %822, i8* %14, align 1
  %823 = and i32 %820, 255
  %824 = tail call i32 @llvm.ctpop.i32(i32 %823)
  %825 = trunc i32 %824 to i8
  %826 = and i8 %825, 1
  %827 = xor i8 %826, 1
  store i8 %827, i8* %21, align 1
  %828 = xor i32 %819, 16
  %829 = xor i32 %828, %820
  %830 = lshr i32 %829, 4
  %831 = trunc i32 %830 to i8
  %832 = and i8 %831, 1
  store i8 %832, i8* %27, align 1
  %833 = icmp eq i32 %820, 0
  %834 = zext i1 %833 to i8
  store i8 %834, i8* %30, align 1
  %835 = lshr i32 %820, 31
  %836 = trunc i32 %835 to i8
  store i8 %836, i8* %33, align 1
  %837 = lshr i32 %819, 31
  %838 = xor i32 %835, %837
  %839 = add nuw nsw i32 %838, %837
  %840 = icmp eq i32 %839, 2
  %841 = zext i1 %840 to i8
  store i8 %841, i8* %39, align 1
  %842 = icmp ne i8 %836, 0
  %843 = xor i1 %842, %840
  %.v9 = select i1 %843, i64 10, i64 60
  %844 = add i64 %814, %.v9
  store i64 %844, i64* %3, align 8
  br i1 %843, label %block_4316cf, label %block_.L_431701

block_4316cf:                                     ; preds = %block_.L_4316c5
  store i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64* %RAX.i346, align 8
  %845 = add i64 %815, -4
  %846 = add i64 %844, 14
  store i64 %846, i64* %3, align 8
  %847 = inttoptr i64 %845 to i32*
  %848 = load i32, i32* %847, align 4
  %849 = sext i32 %848 to i64
  %850 = mul nsw i64 %849, 564
  store i64 %850, i64* %RCX.i344, align 8
  %851 = lshr i64 %850, 63
  %852 = add i64 %850, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  store i64 %852, i64* %RAX.i346, align 8
  %853 = icmp ult i64 %852, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  %854 = icmp ult i64 %852, %850
  %855 = or i1 %853, %854
  %856 = zext i1 %855 to i8
  store i8 %856, i8* %14, align 1
  %857 = trunc i64 %852 to i32
  %858 = and i32 %857, 252
  %859 = tail call i32 @llvm.ctpop.i32(i32 %858)
  %860 = trunc i32 %859 to i8
  %861 = and i8 %860, 1
  %862 = xor i8 %861, 1
  store i8 %862, i8* %21, align 1
  %863 = xor i64 %850, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  %864 = xor i64 %863, %852
  %865 = lshr i64 %864, 4
  %866 = trunc i64 %865 to i8
  %867 = and i8 %866, 1
  store i8 %867, i8* %27, align 1
  %868 = icmp eq i64 %852, 0
  %869 = zext i1 %868 to i8
  store i8 %869, i8* %30, align 1
  %870 = lshr i64 %852, 63
  %871 = trunc i64 %870 to i8
  store i8 %871, i8* %33, align 1
  %872 = xor i64 %870, lshr (i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64 63)
  %873 = xor i64 %870, %851
  %874 = add nuw nsw i64 %872, %873
  %875 = icmp eq i64 %874, 2
  %876 = zext i1 %875 to i8
  store i8 %876, i8* %39, align 1
  %877 = add i64 %844, 28
  store i64 %877, i64* %3, align 8
  %878 = load i32, i32* %818, align 4
  %879 = sext i32 %878 to i64
  store i64 %879, i64* %RCX.i344, align 8
  %880 = shl nsw i64 %879, 2
  %881 = add i64 %850, add (i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64 72)
  %882 = add i64 %881, %880
  %883 = add i64 %844, 36
  store i64 %883, i64* %3, align 8
  %884 = inttoptr i64 %882 to i32*
  store i32 -1, i32* %884, align 4
  %885 = load i64, i64* %RBP.i, align 8
  %886 = add i64 %885, -8
  %887 = load i64, i64* %3, align 8
  %888 = add i64 %887, 3
  store i64 %888, i64* %3, align 8
  %889 = inttoptr i64 %886 to i32*
  %890 = load i32, i32* %889, align 4
  %891 = add i32 %890, 1
  %892 = zext i32 %891 to i64
  store i64 %892, i64* %RAX.i346, align 8
  %893 = icmp eq i32 %890, -1
  %894 = icmp eq i32 %891, 0
  %895 = or i1 %893, %894
  %896 = zext i1 %895 to i8
  store i8 %896, i8* %14, align 1
  %897 = and i32 %891, 255
  %898 = tail call i32 @llvm.ctpop.i32(i32 %897)
  %899 = trunc i32 %898 to i8
  %900 = and i8 %899, 1
  %901 = xor i8 %900, 1
  store i8 %901, i8* %21, align 1
  %902 = xor i32 %891, %890
  %903 = lshr i32 %902, 4
  %904 = trunc i32 %903 to i8
  %905 = and i8 %904, 1
  store i8 %905, i8* %27, align 1
  %906 = zext i1 %894 to i8
  store i8 %906, i8* %30, align 1
  %907 = lshr i32 %891, 31
  %908 = trunc i32 %907 to i8
  store i8 %908, i8* %33, align 1
  %909 = lshr i32 %890, 31
  %910 = xor i32 %907, %909
  %911 = add nuw nsw i32 %910, %907
  %912 = icmp eq i32 %911, 2
  %913 = zext i1 %912 to i8
  store i8 %913, i8* %39, align 1
  %914 = add i64 %887, 9
  store i64 %914, i64* %3, align 8
  store i32 %891, i32* %889, align 4
  %915 = load i64, i64* %3, align 8
  %916 = add i64 %915, -55
  store i64 %916, i64* %3, align 8
  br label %block_.L_4316c5

block_.L_431701:                                  ; preds = %block_.L_4316c5
  %917 = add i64 %844, ptrtoint (%G_0xb1a03__rip__type* @G_0xb1a03__rip_ to i64)
  %918 = add i64 %844, 8
  store i64 %918, i64* %3, align 8
  %919 = inttoptr i64 %917 to i32*
  %920 = load i32, i32* %919, align 4
  store i32 %920, i32* %46, align 1
  store float 0.000000e+00, float* %48, align 1
  store float 0.000000e+00, float* %50, align 1
  store float 0.000000e+00, float* %52, align 1
  store i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64* %RAX.i346, align 8
  %921 = add i64 %815, -4
  %922 = add i64 %844, 22
  store i64 %922, i64* %3, align 8
  %923 = inttoptr i64 %921 to i32*
  %924 = load i32, i32* %923, align 4
  %925 = sext i32 %924 to i64
  %926 = mul nsw i64 %925, 564
  store i64 %926, i64* %RCX.i344, align 8
  %927 = lshr i64 %926, 63
  %928 = add i64 %926, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  store i64 %928, i64* %RDX.i328, align 8
  %929 = icmp ult i64 %928, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  %930 = icmp ult i64 %928, %926
  %931 = or i1 %929, %930
  %932 = zext i1 %931 to i8
  store i8 %932, i8* %14, align 1
  %933 = trunc i64 %928 to i32
  %934 = and i32 %933, 252
  %935 = tail call i32 @llvm.ctpop.i32(i32 %934)
  %936 = trunc i32 %935 to i8
  %937 = and i8 %936, 1
  %938 = xor i8 %937, 1
  store i8 %938, i8* %21, align 1
  %939 = xor i64 %926, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  %940 = xor i64 %939, %928
  %941 = lshr i64 %940, 4
  %942 = trunc i64 %941 to i8
  %943 = and i8 %942, 1
  store i8 %943, i8* %27, align 1
  %944 = icmp eq i64 %928, 0
  %945 = zext i1 %944 to i8
  store i8 %945, i8* %30, align 1
  %946 = lshr i64 %928, 63
  %947 = trunc i64 %946 to i8
  store i8 %947, i8* %33, align 1
  %948 = xor i64 %946, lshr (i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64 63)
  %949 = xor i64 %946, %927
  %950 = add nuw nsw i64 %948, %949
  %951 = icmp eq i64 %950, 2
  %952 = zext i1 %951 to i8
  store i8 %952, i8* %39, align 1
  %953 = add i64 %926, add (i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64 552)
  %954 = add i64 %844, 45
  store i64 %954, i64* %3, align 8
  %955 = inttoptr i64 %953 to i32*
  store i32 0, i32* %955, align 4
  %956 = load i64, i64* %RBP.i, align 8
  %957 = add i64 %956, -4
  %958 = load i64, i64* %3, align 8
  %959 = add i64 %958, 4
  store i64 %959, i64* %3, align 8
  %960 = inttoptr i64 %957 to i32*
  %961 = load i32, i32* %960, align 4
  %962 = sext i32 %961 to i64
  %963 = mul nsw i64 %962, 564
  store i64 %963, i64* %RCX.i344, align 8
  %964 = lshr i64 %963, 63
  %965 = load i64, i64* %RAX.i346, align 8
  %966 = add i64 %963, %965
  store i64 %966, i64* %RDX.i328, align 8
  %967 = icmp ult i64 %966, %965
  %968 = icmp ult i64 %966, %963
  %969 = or i1 %967, %968
  %970 = zext i1 %969 to i8
  store i8 %970, i8* %14, align 1
  %971 = trunc i64 %966 to i32
  %972 = and i32 %971, 255
  %973 = tail call i32 @llvm.ctpop.i32(i32 %972)
  %974 = trunc i32 %973 to i8
  %975 = and i8 %974, 1
  %976 = xor i8 %975, 1
  store i8 %976, i8* %21, align 1
  %977 = xor i64 %963, %965
  %978 = xor i64 %977, %966
  %979 = lshr i64 %978, 4
  %980 = trunc i64 %979 to i8
  %981 = and i8 %980, 1
  store i8 %981, i8* %27, align 1
  %982 = icmp eq i64 %966, 0
  %983 = zext i1 %982 to i8
  store i8 %983, i8* %30, align 1
  %984 = lshr i64 %966, 63
  %985 = trunc i64 %984 to i8
  store i8 %985, i8* %33, align 1
  %986 = lshr i64 %965, 63
  %987 = xor i64 %984, %986
  %988 = xor i64 %984, %964
  %989 = add nuw nsw i64 %987, %988
  %990 = icmp eq i64 %989, 2
  %991 = zext i1 %990 to i8
  store i8 %991, i8* %39, align 1
  %992 = add i64 %966, 556
  %993 = add i64 %958, 27
  store i64 %993, i64* %3, align 8
  %994 = inttoptr i64 %992 to i32*
  store i32 0, i32* %994, align 4
  %995 = load i64, i64* %RBP.i, align 8
  %996 = add i64 %995, -4
  %997 = load i64, i64* %3, align 8
  %998 = add i64 %997, 4
  store i64 %998, i64* %3, align 8
  %999 = inttoptr i64 %996 to i32*
  %1000 = load i32, i32* %999, align 4
  %1001 = sext i32 %1000 to i64
  %1002 = mul nsw i64 %1001, 564
  store i64 %1002, i64* %RCX.i344, align 8
  %1003 = lshr i64 %1002, 63
  %1004 = load i64, i64* %RAX.i346, align 8
  %1005 = add i64 %1002, %1004
  store i64 %1005, i64* %RAX.i346, align 8
  %1006 = icmp ult i64 %1005, %1004
  %1007 = icmp ult i64 %1005, %1002
  %1008 = or i1 %1006, %1007
  %1009 = zext i1 %1008 to i8
  store i8 %1009, i8* %14, align 1
  %1010 = trunc i64 %1005 to i32
  %1011 = and i32 %1010, 255
  %1012 = tail call i32 @llvm.ctpop.i32(i32 %1011)
  %1013 = trunc i32 %1012 to i8
  %1014 = and i8 %1013, 1
  %1015 = xor i8 %1014, 1
  store i8 %1015, i8* %21, align 1
  %1016 = xor i64 %1002, %1004
  %1017 = xor i64 %1016, %1005
  %1018 = lshr i64 %1017, 4
  %1019 = trunc i64 %1018 to i8
  %1020 = and i8 %1019, 1
  store i8 %1020, i8* %27, align 1
  %1021 = icmp eq i64 %1005, 0
  %1022 = zext i1 %1021 to i8
  store i8 %1022, i8* %30, align 1
  %1023 = lshr i64 %1005, 63
  %1024 = trunc i64 %1023 to i8
  store i8 %1024, i8* %33, align 1
  %1025 = lshr i64 %1004, 63
  %1026 = xor i64 %1023, %1025
  %1027 = xor i64 %1023, %1003
  %1028 = add nuw nsw i64 %1026, %1027
  %1029 = icmp eq i64 %1028, 2
  %1030 = zext i1 %1029 to i8
  store i8 %1030, i8* %39, align 1
  %1031 = add i64 %1005, 68
  %1032 = add i64 %997, 19
  store i64 %1032, i64* %3, align 8
  %1033 = load <2 x float>, <2 x float>* %55, align 1
  %1034 = extractelement <2 x float> %1033, i32 0
  %1035 = inttoptr i64 %1031 to float*
  store float %1034, float* %1035, align 4
  %1036 = load i64, i64* %3, align 8
  %1037 = add i64 %1036, 726644
  %1038 = add i64 %1036, 5
  %1039 = load i64, i64* %6, align 8
  %1040 = add i64 %1039, -8
  %1041 = inttoptr i64 %1040 to i64*
  store i64 %1038, i64* %1041, align 8
  store i64 %1040, i64* %6, align 8
  store i64 %1037, i64* %3, align 8
  %call2_43175c = tail call %struct.Memory* @sub_4e2dd0.gg_drand(%struct.State* nonnull %0, i64 %1037, %struct.Memory* %2)
  %1042 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64* %RAX.i346, align 8
  %1043 = load <2 x i32>, <2 x i32>* %56, align 1
  %1044 = load <2 x i32>, <2 x i32>* %57, align 1
  %.cast = bitcast <2 x i32> %1043 to double
  %1045 = fptrunc double %.cast to float
  store float %1045, float* %45, align 1
  %1046 = extractelement <2 x i32> %1043, i32 1
  store i32 %1046, i32* %58, align 1
  %1047 = extractelement <2 x i32> %1044, i32 0
  store i32 %1047, i32* %59, align 1
  %1048 = extractelement <2 x i32> %1044, i32 1
  store i32 %1048, i32* %60, align 1
  %1049 = load i64, i64* %RBP.i, align 8
  %1050 = add i64 %1049, -4
  %1051 = add i64 %1042, 18
  store i64 %1051, i64* %3, align 8
  %1052 = inttoptr i64 %1050 to i32*
  %1053 = load i32, i32* %1052, align 4
  %1054 = sext i32 %1053 to i64
  %1055 = mul nsw i64 %1054, 564
  store i64 %1055, i64* %RCX.i344, align 8
  %1056 = lshr i64 %1055, 63
  %1057 = add i64 %1055, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  store i64 %1057, i64* %RAX.i346, align 8
  %1058 = icmp ult i64 %1057, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  %1059 = icmp ult i64 %1057, %1055
  %1060 = or i1 %1058, %1059
  %1061 = zext i1 %1060 to i8
  store i8 %1061, i8* %14, align 1
  %1062 = trunc i64 %1057 to i32
  %1063 = and i32 %1062, 252
  %1064 = tail call i32 @llvm.ctpop.i32(i32 %1063)
  %1065 = trunc i32 %1064 to i8
  %1066 = and i8 %1065, 1
  %1067 = xor i8 %1066, 1
  store i8 %1067, i8* %21, align 1
  %1068 = xor i64 %1055, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  %1069 = xor i64 %1068, %1057
  %1070 = lshr i64 %1069, 4
  %1071 = trunc i64 %1070 to i8
  %1072 = and i8 %1071, 1
  store i8 %1072, i8* %27, align 1
  %1073 = icmp eq i64 %1057, 0
  %1074 = zext i1 %1073 to i8
  store i8 %1074, i8* %30, align 1
  %1075 = lshr i64 %1057, 63
  %1076 = trunc i64 %1075 to i8
  store i8 %1076, i8* %33, align 1
  %1077 = xor i64 %1075, lshr (i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64 63)
  %1078 = xor i64 %1075, %1056
  %1079 = add nuw nsw i64 %1077, %1078
  %1080 = icmp eq i64 %1079, 2
  %1081 = zext i1 %1080 to i8
  store i8 %1081, i8* %39, align 1
  %1082 = add i64 %1055, add (i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64 560)
  %1083 = add i64 %1042, 36
  store i64 %1083, i64* %3, align 8
  %1084 = load <2 x float>, <2 x float>* %55, align 1
  %1085 = extractelement <2 x float> %1084, i32 0
  %1086 = inttoptr i64 %1082 to float*
  store float %1085, float* %1086, align 4
  %1087 = load i64, i64* %RBP.i, align 8
  %1088 = add i64 %1087, -4
  %1089 = load i64, i64* %3, align 8
  %1090 = add i64 %1089, 4
  store i64 %1090, i64* %3, align 8
  %1091 = inttoptr i64 %1088 to i32*
  %1092 = load i32, i32* %1091, align 4
  %1093 = sext i32 %1092 to i64
  store i64 %1093, i64* %RAX.i346, align 8
  %1094 = shl nsw i64 %1093, 2
  %1095 = add nsw i64 %1094, 12097552
  %1096 = add i64 %1089, 15
  store i64 %1096, i64* %3, align 8
  %1097 = inttoptr i64 %1095 to i32*
  store i32 0, i32* %1097, align 4
  %.pre6 = load i64, i64* %3, align 8
  %.pre7 = load i64, i64* %RBP.i, align 8
  br label %block_.L_431794

block_.L_431794:                                  ; preds = %block_.L_431701, %block_43151e
  %1098 = phi i64 [ %.pre7, %block_.L_431701 ], [ %63, %block_43151e ]
  %1099 = phi i64 [ %.pre6, %block_.L_431701 ], [ %118, %block_43151e ]
  %1100 = add i64 %1098, -4
  %1101 = add i64 %1099, 8
  store i64 %1101, i64* %3, align 8
  %1102 = inttoptr i64 %1100 to i32*
  %1103 = load i32, i32* %1102, align 4
  %1104 = add i32 %1103, 1
  %1105 = zext i32 %1104 to i64
  store i64 %1105, i64* %RAX.i346, align 8
  %1106 = icmp eq i32 %1103, -1
  %1107 = icmp eq i32 %1104, 0
  %1108 = or i1 %1106, %1107
  %1109 = zext i1 %1108 to i8
  store i8 %1109, i8* %14, align 1
  %1110 = and i32 %1104, 255
  %1111 = tail call i32 @llvm.ctpop.i32(i32 %1110)
  %1112 = trunc i32 %1111 to i8
  %1113 = and i8 %1112, 1
  %1114 = xor i8 %1113, 1
  store i8 %1114, i8* %21, align 1
  %1115 = xor i32 %1104, %1103
  %1116 = lshr i32 %1115, 4
  %1117 = trunc i32 %1116 to i8
  %1118 = and i8 %1117, 1
  store i8 %1118, i8* %27, align 1
  %1119 = zext i1 %1107 to i8
  store i8 %1119, i8* %30, align 1
  %1120 = lshr i32 %1104, 31
  %1121 = trunc i32 %1120 to i8
  store i8 %1121, i8* %33, align 1
  %1122 = lshr i32 %1103, 31
  %1123 = xor i32 %1120, %1122
  %1124 = add nuw nsw i32 %1123, %1120
  %1125 = icmp eq i32 %1124, 2
  %1126 = zext i1 %1125 to i8
  store i8 %1126, i8* %39, align 1
  %1127 = add i64 %1099, 14
  store i64 %1127, i64* %3, align 8
  store i32 %1104, i32* %1102, align 4
  %1128 = load i64, i64* %3, align 8
  %1129 = add i64 %1128, -657
  store i64 %1129, i64* %3, align 8
  br label %block_.L_431511

block_.L_4317a7:                                  ; preds = %block_.L_431511
  %1130 = load i64, i64* %6, align 8
  %1131 = add i64 %1130, 16
  store i64 %1131, i64* %6, align 8
  %1132 = icmp ugt i64 %1130, -17
  %1133 = zext i1 %1132 to i8
  store i8 %1133, i8* %14, align 1
  %1134 = trunc i64 %1131 to i32
  %1135 = and i32 %1134, 255
  %1136 = tail call i32 @llvm.ctpop.i32(i32 %1135)
  %1137 = trunc i32 %1136 to i8
  %1138 = and i8 %1137, 1
  %1139 = xor i8 %1138, 1
  store i8 %1139, i8* %21, align 1
  %1140 = xor i64 %1130, 16
  %1141 = xor i64 %1140, %1131
  %1142 = lshr i64 %1141, 4
  %1143 = trunc i64 %1142 to i8
  %1144 = and i8 %1143, 1
  store i8 %1144, i8* %27, align 1
  %1145 = icmp eq i64 %1131, 0
  %1146 = zext i1 %1145 to i8
  store i8 %1146, i8* %30, align 1
  %1147 = lshr i64 %1131, 63
  %1148 = trunc i64 %1147 to i8
  store i8 %1148, i8* %33, align 1
  %1149 = lshr i64 %1130, 63
  %1150 = xor i64 %1147, %1149
  %1151 = add nuw nsw i64 %1150, %1147
  %1152 = icmp eq i64 %1151, 2
  %1153 = zext i1 %1152 to i8
  store i8 %1153, i8* %39, align 1
  %1154 = add i64 %92, 5
  store i64 %1154, i64* %3, align 8
  %1155 = add i64 %1130, 24
  %1156 = inttoptr i64 %1131 to i64*
  %1157 = load i64, i64* %1156, align 8
  store i64 %1157, i64* %RBP.i, align 8
  store i64 %1155, i64* %6, align 8
  %1158 = add i64 %92, 6
  store i64 %1158, i64* %3, align 8
  %1159 = inttoptr i64 %1155 to i64*
  %1160 = load i64, i64* %1159, align 8
  store i64 %1160, i64* %3, align 8
  %1161 = add i64 %1130, 32
  store i64 %1161, i64* %6, align 8
  ret %struct.Memory* %2
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
define %struct.Memory* @routine_subq__0x10___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -16
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 16
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
define %struct.Memory* @routine_movl__0x0__0xb8c044(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* bitcast (%G_0xb8c044_type* @G_0xb8c044 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0xb6e914(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* bitcast (%G_0xb6e914_type* @G_0xb6e914 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0xb8b864(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* bitcast (%G_0xb8b864_type* @G_0xb8b864 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0xb89e58(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* bitcast (%G_0xb89e58_type* @G_0xb89e58 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0xb4bce4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* bitcast (%G_0xb4bce4_type* @G_0xb4bce4 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0xb8b858(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* bitcast (%G_0xb8b858_type* @G_0xb8b858 to i32*), align 8
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
define %struct.Memory* @routine_jge_.L_4317a7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_431794(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss_0xb1c0d__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0xb1c0d__rip__type* @G_0xb1c0d__rip_ to i64)
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
define %struct.Memory* @routine_xorps__xmm1___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %6, align 1
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
define %struct.Memory* @routine_movss__xmm1____rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast i64* %RDX to float**
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
define %struct.Memory* @routine_movss__xmm1__0x4__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RDX, align 8
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
define %struct.Memory* @routine_movss__xmm1__0x8__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RDX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm1__0xc__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RDX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm1__0x10__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, 16
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
define %struct.Memory* @routine_movss__xmm1__0x14__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, 20
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
define %struct.Memory* @routine_movl__0x0__0x1c__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 28
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm1__0x18__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, 24
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
define %struct.Memory* @routine_movl__0x0__0x20__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm1__0x24__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, 36
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
define %struct.Memory* @routine_movss__xmm1__0x28__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, 40
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
define %struct.Memory* @routine_movss__xmm1__0x2c__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, 44
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
define %struct.Memory* @routine_movss__xmm1__0x30__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, 48
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
define %struct.Memory* @routine_movss__xmm1__0x34__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, 52
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
define %struct.Memory* @routine_movss__xmm0__0x38__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, 56
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
define %struct.Memory* @routine_movss__xmm1__0x3c__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, 60
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
define %struct.Memory* @routine_movss__xmm0__0x40__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 64
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
define %struct.Memory* @routine_movl__0x0__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x78__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %9 = add i32 %8, -120
  %10 = icmp ult i32 %8, 120
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
define %struct.Memory* @routine_jge_.L_431701(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xffffffff__0x48__rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, 72
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 8
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  store i32 -1, i32* %10, align 4
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
define %struct.Memory* @routine_jmpq_.L_4316c5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0xb1a03__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0xb1a03__rip__type* @G_0xb1a03__rip_ to i64)
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
define %struct.Memory* @routine_movl__0x0__0x228__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 552
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x22c__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 556
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__0x44__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 68
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
define %struct.Memory* @routine_callq_.gg_drand(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cvtsd2ss__xmm0___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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
  %.cast = bitcast <2 x i32> %8 to double
  %12 = fptrunc double %.cast to float
  %13 = bitcast %union.VectorReg* %3 to float*
  store float %12, float* %13, align 1
  %14 = extractelement <2 x i32> %8, i32 1
  %15 = getelementptr inbounds i8, i8* %4, i64 4
  %16 = bitcast i8* %15 to i32*
  store i32 %14, i32* %16, align 1
  %17 = extractelement <2 x i32> %11, i32 0
  %18 = bitcast i64* %9 to i32*
  store i32 %17, i32* %18, align 1
  %19 = extractelement <2 x i32> %11, i32 1
  %20 = getelementptr inbounds i8, i8* %4, i64 12
  %21 = bitcast i8* %20 to i32*
  store i32 %19, i32* %21, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__0x230__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 560
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  store float %10, float* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0xb89810___rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 12097552
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  store i32 0, i32* %8, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_431799(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jmpq_.L_431511(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x10___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 16
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -17
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
