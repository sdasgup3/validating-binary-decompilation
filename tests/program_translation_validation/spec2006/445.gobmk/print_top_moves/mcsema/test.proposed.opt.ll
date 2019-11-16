; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0xab0f24_type = type <{ [4 x i8] }>
%G_0xab0f28_type = type <{ [1 x i8] }>
%G__0x581fc0_type = type <{ [8 x i8] }>
%G__0x581fcd_type = type <{ [8 x i8] }>
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
@G_0xab0f24 = local_unnamed_addr global %G_0xab0f24_type zeroinitializer
@G_0xab0f28 = local_unnamed_addr global %G_0xab0f28_type zeroinitializer
@G__0x581fc0 = global %G__0x581fc0_type zeroinitializer
@G__0x581fcd = global %G__0x581fcd_type zeroinitializer
@G__0xb9d8f0 = global %G__0xb9d8f0_type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare %struct.Memory* @sub_47c530.record_top_move(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_451db0.gprintf(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @print_top_moves(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %39 = add i64 %7, -12
  %40 = add i64 %10, 14
  store i64 %40, i64* %3, align 8
  %41 = inttoptr i64 %39 to i32*
  store i32 0, i32* %41, align 4
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i175 = getelementptr inbounds %union.anon, %union.anon* %44, i64 0, i32 0
  %45 = bitcast %union.VectorReg* %42 to <2 x float>*
  %EAX.i159 = bitcast %union.anon* %44 to i32*
  %.pre = load i64, i64* %3, align 8
  %46 = bitcast %union.VectorReg* %42 to <4 x i32>*
  br label %block_.L_47f17f

block_.L_47f17f:                                  ; preds = %block_47f189, %entry
  %47 = phi i64 [ %128, %block_47f189 ], [ %.pre, %entry ]
  %48 = load i64, i64* %RBP.i, align 8
  %49 = add i64 %48, -4
  %50 = add i64 %47, 4
  store i64 %50, i64* %3, align 8
  %51 = inttoptr i64 %49 to i32*
  %52 = load i32, i32* %51, align 4
  %53 = add i32 %52, -10
  %54 = icmp ult i32 %52, 10
  %55 = zext i1 %54 to i8
  store i8 %55, i8* %14, align 1
  %56 = and i32 %53, 255
  %57 = tail call i32 @llvm.ctpop.i32(i32 %56)
  %58 = trunc i32 %57 to i8
  %59 = and i8 %58, 1
  %60 = xor i8 %59, 1
  store i8 %60, i8* %21, align 1
  %61 = xor i32 %53, %52
  %62 = lshr i32 %61, 4
  %63 = trunc i32 %62 to i8
  %64 = and i8 %63, 1
  store i8 %64, i8* %26, align 1
  %65 = icmp eq i32 %53, 0
  %66 = zext i1 %65 to i8
  store i8 %66, i8* %29, align 1
  %67 = lshr i32 %53, 31
  %68 = trunc i32 %67 to i8
  store i8 %68, i8* %32, align 1
  %69 = lshr i32 %52, 31
  %70 = xor i32 %67, %69
  %71 = add nuw nsw i32 %70, %69
  %72 = icmp eq i32 %71, 2
  %73 = zext i1 %72 to i8
  store i8 %73, i8* %38, align 1
  %74 = icmp ne i8 %68, 0
  %75 = xor i1 %74, %72
  %.v = select i1 %75, i64 10, i64 55
  %76 = add i64 %47, %.v
  store i64 %76, i64* %3, align 8
  br i1 %75, label %block_47f189, label %block_.L_47f1b6

block_47f189:                                     ; preds = %block_.L_47f17f
  store <4 x i32> zeroinitializer, <4 x i32>* %46, align 1
  %77 = add i64 %76, 7
  store i64 %77, i64* %3, align 8
  %78 = load i32, i32* %51, align 4
  %79 = sext i32 %78 to i64
  store i64 %79, i64* %RAX.i175, align 8
  %80 = shl nsw i64 %79, 2
  %81 = add nsw i64 %80, 11939936
  %82 = add i64 %76, 18
  store i64 %82, i64* %3, align 8
  %83 = inttoptr i64 %81 to i32*
  store i32 0, i32* %83, align 4
  %84 = load i64, i64* %RBP.i, align 8
  %85 = add i64 %84, -4
  %86 = load i64, i64* %3, align 8
  %87 = add i64 %86, 4
  store i64 %87, i64* %3, align 8
  %88 = inttoptr i64 %85 to i32*
  %89 = load i32, i32* %88, align 4
  %90 = sext i32 %89 to i64
  store i64 %90, i64* %RAX.i175, align 8
  %91 = shl nsw i64 %90, 2
  %92 = add nsw i64 %91, 11844848
  %93 = add i64 %86, 13
  store i64 %93, i64* %3, align 8
  %94 = load <2 x float>, <2 x float>* %45, align 1
  %95 = extractelement <2 x float> %94, i32 0
  %96 = inttoptr i64 %92 to float*
  store float %95, float* %96, align 4
  %97 = load i64, i64* %RBP.i, align 8
  %98 = add i64 %97, -4
  %99 = load i64, i64* %3, align 8
  %100 = add i64 %99, 3
  store i64 %100, i64* %3, align 8
  %101 = inttoptr i64 %98 to i32*
  %102 = load i32, i32* %101, align 4
  %103 = add i32 %102, 1
  %104 = zext i32 %103 to i64
  store i64 %104, i64* %RAX.i175, align 8
  %105 = icmp eq i32 %102, -1
  %106 = icmp eq i32 %103, 0
  %107 = or i1 %105, %106
  %108 = zext i1 %107 to i8
  store i8 %108, i8* %14, align 1
  %109 = and i32 %103, 255
  %110 = tail call i32 @llvm.ctpop.i32(i32 %109)
  %111 = trunc i32 %110 to i8
  %112 = and i8 %111, 1
  %113 = xor i8 %112, 1
  store i8 %113, i8* %21, align 1
  %114 = xor i32 %103, %102
  %115 = lshr i32 %114, 4
  %116 = trunc i32 %115 to i8
  %117 = and i8 %116, 1
  store i8 %117, i8* %26, align 1
  %118 = zext i1 %106 to i8
  store i8 %118, i8* %29, align 1
  %119 = lshr i32 %103, 31
  %120 = trunc i32 %119 to i8
  store i8 %120, i8* %32, align 1
  %121 = lshr i32 %102, 31
  %122 = xor i32 %119, %121
  %123 = add nuw nsw i32 %122, %119
  %124 = icmp eq i32 %123, 2
  %125 = zext i1 %124 to i8
  store i8 %125, i8* %38, align 1
  %126 = add i64 %99, 9
  store i64 %126, i64* %3, align 8
  store i32 %103, i32* %101, align 4
  %127 = load i64, i64* %3, align 8
  %128 = add i64 %127, -50
  store i64 %128, i64* %3, align 8
  br label %block_.L_47f17f

block_.L_47f1b6:                                  ; preds = %block_.L_47f17f
  %129 = add i64 %48, -8
  %130 = add i64 %76, 7
  store i64 %130, i64* %3, align 8
  %131 = inttoptr i64 %129 to i32*
  store i32 21, i32* %131, align 4
  %132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i148 = getelementptr inbounds %union.anon, %union.anon* %132, i64 0, i32 0
  %133 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %134 = bitcast [32 x %union.VectorReg]* %133 to i8*
  %135 = bitcast [32 x %union.VectorReg]* %133 to i32*
  %136 = getelementptr inbounds i8, i8* %134, i64 4
  %137 = getelementptr inbounds i8, i8* %134, i64 12
  %138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %139 = bitcast %union.VectorReg* %138 to double*
  %140 = bitcast [32 x %union.VectorReg]* %133 to double*
  %141 = bitcast i8* %136 to float*
  %142 = bitcast i64* %43 to float*
  %143 = bitcast i8* %137 to float*
  %144 = bitcast [32 x %union.VectorReg]* %133 to <2 x float>*
  %RDI.i103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %.pre12 = load i64, i64* %3, align 8
  %145 = bitcast [32 x %union.VectorReg]* %133 to <4 x i32>*
  br label %block_.L_47f1bd

block_.L_47f1bd:                                  ; preds = %block_.L_47f23d, %block_.L_47f1b6
  %146 = phi i64 [ %.pre12, %block_.L_47f1b6 ], [ %359, %block_.L_47f23d ]
  %MEMORY.1 = phi %struct.Memory* [ %2, %block_.L_47f1b6 ], [ %MEMORY.3, %block_.L_47f23d ]
  %147 = load i64, i64* %RBP.i, align 8
  %148 = add i64 %147, -8
  %149 = add i64 %146, 7
  store i64 %149, i64* %3, align 8
  %150 = inttoptr i64 %148 to i32*
  %151 = load i32, i32* %150, align 4
  %152 = add i32 %151, -400
  %153 = icmp ult i32 %151, 400
  %154 = zext i1 %153 to i8
  store i8 %154, i8* %14, align 1
  %155 = and i32 %152, 255
  %156 = tail call i32 @llvm.ctpop.i32(i32 %155)
  %157 = trunc i32 %156 to i8
  %158 = and i8 %157, 1
  %159 = xor i8 %158, 1
  store i8 %159, i8* %21, align 1
  %160 = xor i32 %151, 16
  %161 = xor i32 %160, %152
  %162 = lshr i32 %161, 4
  %163 = trunc i32 %162 to i8
  %164 = and i8 %163, 1
  store i8 %164, i8* %26, align 1
  %165 = icmp eq i32 %152, 0
  %166 = zext i1 %165 to i8
  store i8 %166, i8* %29, align 1
  %167 = lshr i32 %152, 31
  %168 = trunc i32 %167 to i8
  store i8 %168, i8* %32, align 1
  %169 = lshr i32 %151, 31
  %170 = xor i32 %167, %169
  %171 = add nuw nsw i32 %170, %169
  %172 = icmp eq i32 %171, 2
  %173 = zext i1 %172 to i8
  store i8 %173, i8* %38, align 1
  %174 = icmp ne i8 %168, 0
  %175 = xor i1 %174, %172
  %.v21 = select i1 %175, i64 13, i64 142
  %176 = add i64 %146, %.v21
  store i64 %176, i64* %3, align 8
  br i1 %175, label %block_47f1ca, label %block_.L_47f24b

block_47f1ca:                                     ; preds = %block_.L_47f1bd
  %177 = add i64 %176, 4
  store i64 %177, i64* %3, align 8
  %178 = load i32, i32* %150, align 4
  %179 = sext i32 %178 to i64
  store i64 %179, i64* %RAX.i175, align 8
  %180 = add nsw i64 %179, 12099168
  %181 = add i64 %176, 12
  store i64 %181, i64* %3, align 8
  %182 = inttoptr i64 %180 to i8*
  %183 = load i8, i8* %182, align 1
  %184 = zext i8 %183 to i64
  store i64 %184, i64* %RCX.i148, align 8
  %185 = zext i8 %183 to i32
  %186 = add nsw i32 %185, -3
  %187 = icmp ult i8 %183, 3
  %188 = zext i1 %187 to i8
  store i8 %188, i8* %14, align 1
  %189 = and i32 %186, 255
  %190 = tail call i32 @llvm.ctpop.i32(i32 %189)
  %191 = trunc i32 %190 to i8
  %192 = and i8 %191, 1
  %193 = xor i8 %192, 1
  store i8 %193, i8* %21, align 1
  %194 = xor i32 %186, %185
  %195 = lshr i32 %194, 4
  %196 = trunc i32 %195 to i8
  %197 = and i8 %196, 1
  store i8 %197, i8* %26, align 1
  %198 = icmp eq i32 %186, 0
  %199 = zext i1 %198 to i8
  store i8 %199, i8* %29, align 1
  %200 = lshr i32 %186, 31
  %201 = trunc i32 %200 to i8
  store i8 %201, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v25 = select i1 %198, i64 63, i64 21
  %202 = add i64 %176, %.v25
  store i64 %202, i64* %3, align 8
  br i1 %198, label %block_.L_47f209, label %block_47f1df

block_47f1df:                                     ; preds = %block_47f1ca
  store <4 x i32> zeroinitializer, <4 x i32>* %145, align 1
  store i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64* %RAX.i175, align 8
  %203 = add i64 %202, 17
  store i64 %203, i64* %3, align 8
  %204 = load i32, i32* %150, align 4
  %205 = sext i32 %204 to i64
  %206 = mul nsw i64 %205, 564
  store i64 %206, i64* %RCX.i148, align 8
  %207 = lshr i64 %206, 63
  %208 = add i64 %206, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  store i64 %208, i64* %RAX.i175, align 8
  %209 = icmp ult i64 %208, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  %210 = icmp ult i64 %208, %206
  %211 = or i1 %209, %210
  %212 = zext i1 %211 to i8
  store i8 %212, i8* %14, align 1
  %213 = trunc i64 %208 to i32
  %214 = and i32 %213, 252
  %215 = tail call i32 @llvm.ctpop.i32(i32 %214)
  %216 = trunc i32 %215 to i8
  %217 = and i8 %216, 1
  %218 = xor i8 %217, 1
  store i8 %218, i8* %21, align 1
  %219 = xor i64 %206, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  %220 = xor i64 %219, %208
  %221 = lshr i64 %220, 4
  %222 = trunc i64 %221 to i8
  %223 = and i8 %222, 1
  store i8 %223, i8* %26, align 1
  %224 = icmp eq i64 %208, 0
  %225 = zext i1 %224 to i8
  store i8 %225, i8* %29, align 1
  %226 = lshr i64 %208, 63
  %227 = trunc i64 %226 to i8
  store i8 %227, i8* %32, align 1
  %228 = xor i64 %226, lshr (i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64 63)
  %229 = xor i64 %226, %207
  %230 = add nuw nsw i64 %228, %229
  %231 = icmp eq i64 %230, 2
  %232 = zext i1 %231 to i8
  store i8 %232, i8* %38, align 1
  %233 = add i64 %206, add (i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64 4)
  %234 = add i64 %202, 32
  store i64 %234, i64* %3, align 8
  %235 = inttoptr i64 %233 to float*
  %236 = load float, float* %235, align 4
  %237 = fpext float %236 to double
  store double %237, double* %139, align 1
  %238 = add i64 %202, 36
  store i64 %238, i64* %3, align 8
  %239 = load double, double* %140, align 1
  %240 = fcmp uno double %239, %237
  br i1 %240, label %241, label %251

; <label>:241:                                    ; preds = %block_47f1df
  %242 = fadd double %237, %239
  %243 = bitcast double %242 to i64
  %244 = and i64 %243, 9221120237041090560
  %245 = icmp eq i64 %244, 9218868437227405312
  %246 = and i64 %243, 2251799813685247
  %247 = icmp ne i64 %246, 0
  %248 = and i1 %245, %247
  br i1 %248, label %249, label %257

; <label>:249:                                    ; preds = %241
  %250 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %238, %struct.Memory* %MEMORY.1)
  %.pre17 = load i64, i64* %3, align 8
  %.pre18 = load i8, i8* %14, align 1
  br label %routine_ucomisd__xmm1___xmm0.exit

; <label>:251:                                    ; preds = %block_47f1df
  %252 = fcmp ogt double %239, %237
  br i1 %252, label %257, label %253

; <label>:253:                                    ; preds = %251
  %254 = fcmp olt double %239, %237
  br i1 %254, label %257, label %255

; <label>:255:                                    ; preds = %253
  %256 = fcmp oeq double %239, %237
  br i1 %256, label %257, label %261

; <label>:257:                                    ; preds = %255, %253, %251, %241
  %258 = phi i8 [ 0, %251 ], [ 0, %253 ], [ 1, %255 ], [ 1, %241 ]
  %259 = phi i8 [ 0, %251 ], [ 0, %253 ], [ 0, %255 ], [ 1, %241 ]
  %260 = phi i8 [ 0, %251 ], [ 1, %253 ], [ 0, %255 ], [ 1, %241 ]
  store i8 %258, i8* %29, align 1
  store i8 %259, i8* %21, align 1
  store i8 %260, i8* %14, align 1
  br label %261

; <label>:261:                                    ; preds = %257, %255
  %262 = phi i8 [ %260, %257 ], [ %212, %255 ]
  store i8 0, i8* %38, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %26, align 1
  br label %routine_ucomisd__xmm1___xmm0.exit

routine_ucomisd__xmm1___xmm0.exit:                ; preds = %261, %249
  %263 = phi i8 [ %.pre18, %249 ], [ %262, %261 ]
  %264 = phi i64 [ %.pre17, %249 ], [ %238, %261 ]
  %265 = phi %struct.Memory* [ %250, %249 ], [ %MEMORY.1, %261 ]
  %266 = icmp ne i8 %263, 0
  %.v26 = select i1 %266, i64 11, i64 6
  %267 = add i64 %264, %.v26
  store i64 %267, i64* %3, align 8
  %cmpBr_47f203 = icmp eq i8 %263, 1
  br i1 %cmpBr_47f203, label %block_.L_47f20e, label %block_.L_47f209

block_.L_47f209:                                  ; preds = %routine_ucomisd__xmm1___xmm0.exit, %block_47f1ca
  %268 = phi i64 [ %202, %block_47f1ca ], [ %267, %routine_ucomisd__xmm1___xmm0.exit ]
  %MEMORY.2 = phi %struct.Memory* [ %MEMORY.1, %block_47f1ca ], [ %265, %routine_ucomisd__xmm1___xmm0.exit ]
  %269 = add i64 %268, 52
  store i64 %269, i64* %3, align 8
  br label %block_.L_47f23d

block_.L_47f20e:                                  ; preds = %routine_ucomisd__xmm1___xmm0.exit
  store i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64* %RAX.i175, align 8
  %270 = load i64, i64* %RBP.i, align 8
  %271 = add i64 %270, -8
  %272 = add i64 %267, 14
  store i64 %272, i64* %3, align 8
  %273 = inttoptr i64 %271 to i32*
  %274 = load i32, i32* %273, align 4
  %275 = sext i32 %274 to i64
  %276 = mul nsw i64 %275, 564
  store i64 %276, i64* %RCX.i148, align 8
  %277 = lshr i64 %276, 63
  %278 = add i64 %276, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  store i64 %278, i64* %RAX.i175, align 8
  %279 = icmp ult i64 %278, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  %280 = icmp ult i64 %278, %276
  %281 = or i1 %279, %280
  %282 = zext i1 %281 to i8
  store i8 %282, i8* %14, align 1
  %283 = trunc i64 %278 to i32
  %284 = and i32 %283, 252
  %285 = tail call i32 @llvm.ctpop.i32(i32 %284)
  %286 = trunc i32 %285 to i8
  %287 = and i8 %286, 1
  %288 = xor i8 %287, 1
  store i8 %288, i8* %21, align 1
  %289 = xor i64 %276, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  %290 = xor i64 %289, %278
  %291 = lshr i64 %290, 4
  %292 = trunc i64 %291 to i8
  %293 = and i8 %292, 1
  store i8 %293, i8* %26, align 1
  %294 = icmp eq i64 %278, 0
  %295 = zext i1 %294 to i8
  store i8 %295, i8* %29, align 1
  %296 = lshr i64 %278, 63
  %297 = trunc i64 %296 to i8
  store i8 %297, i8* %32, align 1
  %298 = xor i64 %296, lshr (i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64 63)
  %299 = xor i64 %296, %277
  %300 = add nuw nsw i64 %298, %299
  %301 = icmp eq i64 %300, 2
  %302 = zext i1 %301 to i8
  store i8 %302, i8* %38, align 1
  %303 = add i64 %276, add (i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64 4)
  %304 = add i64 %267, 29
  store i64 %304, i64* %3, align 8
  %305 = inttoptr i64 %303 to i32*
  %306 = load i32, i32* %305, align 4
  store i32 %306, i32* %135, align 1
  store float 0.000000e+00, float* %141, align 1
  store float 0.000000e+00, float* %142, align 1
  store float 0.000000e+00, float* %143, align 1
  %307 = add i64 %270, -12
  %308 = add i64 %267, 34
  store i64 %308, i64* %3, align 8
  %309 = load <2 x float>, <2 x float>* %144, align 1
  %310 = extractelement <2 x float> %309, i32 0
  %311 = inttoptr i64 %307 to float*
  store float %310, float* %311, align 4
  %312 = load i64, i64* %RBP.i, align 8
  %313 = add i64 %312, -8
  %314 = load i64, i64* %3, align 8
  %315 = add i64 %314, 3
  store i64 %315, i64* %3, align 8
  %316 = inttoptr i64 %313 to i32*
  %317 = load i32, i32* %316, align 4
  %318 = zext i32 %317 to i64
  store i64 %318, i64* %RDI.i103, align 8
  %319 = add i64 %312, -12
  %320 = add i64 %314, 8
  store i64 %320, i64* %3, align 8
  %321 = inttoptr i64 %319 to i32*
  %322 = load i32, i32* %321, align 4
  store i32 %322, i32* %135, align 1
  store float 0.000000e+00, float* %141, align 1
  store float 0.000000e+00, float* %142, align 1
  store float 0.000000e+00, float* %143, align 1
  %323 = add i64 %314, -11520
  %324 = add i64 %314, 13
  %325 = load i64, i64* %6, align 8
  %326 = add i64 %325, -8
  %327 = inttoptr i64 %326 to i64*
  store i64 %324, i64* %327, align 8
  store i64 %326, i64* %6, align 8
  store i64 %323, i64* %3, align 8
  %call2_47f238 = tail call %struct.Memory* @sub_47c530.record_top_move(%struct.State* nonnull %0, i64 %323, %struct.Memory* %265)
  %.pre19 = load i64, i64* %3, align 8
  br label %block_.L_47f23d

block_.L_47f23d:                                  ; preds = %block_.L_47f20e, %block_.L_47f209
  %328 = phi i64 [ %269, %block_.L_47f209 ], [ %.pre19, %block_.L_47f20e ]
  %MEMORY.3 = phi %struct.Memory* [ %MEMORY.2, %block_.L_47f209 ], [ %call2_47f238, %block_.L_47f20e ]
  %329 = load i64, i64* %RBP.i, align 8
  %330 = add i64 %329, -8
  %331 = add i64 %328, 3
  store i64 %331, i64* %3, align 8
  %332 = inttoptr i64 %330 to i32*
  %333 = load i32, i32* %332, align 4
  %334 = add i32 %333, 1
  %335 = zext i32 %334 to i64
  store i64 %335, i64* %RAX.i175, align 8
  %336 = icmp eq i32 %333, -1
  %337 = icmp eq i32 %334, 0
  %338 = or i1 %336, %337
  %339 = zext i1 %338 to i8
  store i8 %339, i8* %14, align 1
  %340 = and i32 %334, 255
  %341 = tail call i32 @llvm.ctpop.i32(i32 %340)
  %342 = trunc i32 %341 to i8
  %343 = and i8 %342, 1
  %344 = xor i8 %343, 1
  store i8 %344, i8* %21, align 1
  %345 = xor i32 %334, %333
  %346 = lshr i32 %345, 4
  %347 = trunc i32 %346 to i8
  %348 = and i8 %347, 1
  store i8 %348, i8* %26, align 1
  %349 = zext i1 %337 to i8
  store i8 %349, i8* %29, align 1
  %350 = lshr i32 %334, 31
  %351 = trunc i32 %350 to i8
  store i8 %351, i8* %32, align 1
  %352 = lshr i32 %333, 31
  %353 = xor i32 %350, %352
  %354 = add nuw nsw i32 %353, %350
  %355 = icmp eq i32 %354, 2
  %356 = zext i1 %355 to i8
  store i8 %356, i8* %38, align 1
  %357 = add i64 %328, 9
  store i64 %357, i64* %3, align 8
  store i32 %334, i32* %332, align 4
  %358 = load i64, i64* %3, align 8
  %359 = add i64 %358, -137
  store i64 %359, i64* %3, align 8
  br label %block_.L_47f1bd

block_.L_47f24b:                                  ; preds = %block_.L_47f1bd
  %360 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*), align 8
  store i8 0, i8* %14, align 1
  %361 = and i32 %360, 255
  %362 = tail call i32 @llvm.ctpop.i32(i32 %361)
  %363 = trunc i32 %362 to i8
  %364 = and i8 %363, 1
  %365 = xor i8 %364, 1
  store i8 %365, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %366 = icmp eq i32 %360, 0
  %367 = zext i1 %366 to i8
  store i8 %367, i8* %29, align 1
  %368 = lshr i32 %360, 31
  %369 = trunc i32 %368 to i8
  store i8 %369, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %370 = xor i1 %366, true
  %371 = icmp eq i8 %369, 0
  %372 = and i1 %371, %370
  %.v22 = select i1 %372, i64 35, i64 14
  %373 = add i64 %176, %.v22
  store i64 %373, i64* %3, align 8
  br i1 %372, label %block_.L_47f26e, label %block_47f259

block_47f259:                                     ; preds = %block_.L_47f24b
  %374 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*), align 8
  %375 = and i32 %374, 4194304
  %376 = zext i32 %375 to i64
  store i64 %376, i64* %RAX.i175, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %377 = icmp eq i32 %375, 0
  %.lobit20 = lshr exact i32 %375, 22
  %378 = trunc i32 %.lobit20 to i8
  %379 = xor i8 %378, 1
  store i8 %379, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v23 = select i1 %377, i64 178, i64 21
  %380 = add i64 %373, %.v23
  store i64 %380, i64* %3, align 8
  br i1 %377, label %block_.L_47f30b, label %block_.L_47f26e

block_.L_47f26e:                                  ; preds = %block_47f259, %block_.L_47f24b
  %381 = phi i64 [ %380, %block_47f259 ], [ %373, %block_.L_47f24b ]
  store i64 ptrtoint (%G__0x581fc0_type* @G__0x581fc0 to i64), i64* %RDI.i103, align 8
  %AL.i77 = bitcast %union.anon* %44 to i8*
  store i8 0, i8* %AL.i77, align 1
  %382 = add i64 %381, -185534
  %383 = add i64 %381, 17
  %384 = load i64, i64* %6, align 8
  %385 = add i64 %384, -8
  %386 = inttoptr i64 %385 to i64*
  store i64 %383, i64* %386, align 8
  store i64 %385, i64* %6, align 8
  store i64 %382, i64* %3, align 8
  %call2_47f27a = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %382, %struct.Memory* %MEMORY.1)
  %387 = load i64, i64* %RBP.i, align 8
  %388 = add i64 %387, -4
  %389 = load i64, i64* %3, align 8
  %390 = add i64 %389, 7
  store i64 %390, i64* %3, align 8
  %391 = inttoptr i64 %388 to i32*
  store i32 0, i32* %391, align 4
  %392 = load i64, i64* %RBP.i, align 8
  %393 = add i64 %392, -16
  %394 = load i32, i32* %EAX.i159, align 4
  %395 = load i64, i64* %3, align 8
  %396 = add i64 %395, 3
  store i64 %396, i64* %3, align 8
  %397 = inttoptr i64 %393 to i32*
  store i32 %394, i32* %397, align 4
  %CL.i66 = bitcast %union.anon* %132 to i8*
  %RDX.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %398 = bitcast %union.VectorReg* %42 to double*
  %RSI.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %.pre13 = load i64, i64* %3, align 8
  %399 = bitcast [32 x %union.VectorReg]* %133 to <4 x i32>*
  br label %block_.L_47f289

block_.L_47f289:                                  ; preds = %block_.L_47f2c4, %block_.L_47f26e
  %400 = phi i64 [ %.pre13, %block_.L_47f26e ], [ %588, %block_.L_47f2c4 ]
  %MEMORY.5 = phi %struct.Memory* [ %call2_47f27a, %block_.L_47f26e ], [ %call2_47f2f0, %block_.L_47f2c4 ]
  store i64 0, i64* %RAX.i175, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %CL.i66, align 1
  %401 = load i64, i64* %RBP.i, align 8
  %402 = add i64 %401, -4
  %403 = add i64 %400, 8
  store i64 %403, i64* %3, align 8
  %404 = inttoptr i64 %402 to i32*
  %405 = load i32, i32* %404, align 4
  %406 = add i32 %405, -10
  %407 = icmp ult i32 %405, 10
  %408 = zext i1 %407 to i8
  store i8 %408, i8* %14, align 1
  %409 = and i32 %406, 255
  %410 = tail call i32 @llvm.ctpop.i32(i32 %409)
  %411 = trunc i32 %410 to i8
  %412 = and i8 %411, 1
  %413 = xor i8 %412, 1
  store i8 %413, i8* %21, align 1
  %414 = xor i32 %406, %405
  %415 = lshr i32 %414, 4
  %416 = trunc i32 %415 to i8
  %417 = and i8 %416, 1
  store i8 %417, i8* %26, align 1
  %418 = icmp eq i32 %406, 0
  %419 = zext i1 %418 to i8
  store i8 %419, i8* %29, align 1
  %420 = lshr i32 %406, 31
  %421 = trunc i32 %420 to i8
  store i8 %421, i8* %32, align 1
  %422 = lshr i32 %405, 31
  %423 = xor i32 %420, %422
  %424 = add nuw nsw i32 %423, %422
  %425 = icmp eq i32 %424, 2
  %426 = zext i1 %425 to i8
  store i8 %426, i8* %38, align 1
  %427 = add i64 %401, -17
  %428 = add i64 %400, 11
  store i64 %428, i64* %3, align 8
  %429 = inttoptr i64 %427 to i8*
  store i8 0, i8* %429, align 1
  %430 = load i64, i64* %3, align 8
  %431 = add i64 %430, 32
  %432 = add i64 %430, 6
  %433 = load i8, i8* %32, align 1
  %434 = icmp ne i8 %433, 0
  %435 = load i8, i8* %38, align 1
  %436 = icmp ne i8 %435, 0
  %437 = xor i1 %434, %436
  %438 = select i1 %437, i64 %432, i64 %431
  store i64 %438, i64* %3, align 8
  br i1 %437, label %block_47f29a, label %block_.L_47f2b4

block_47f29a:                                     ; preds = %block_.L_47f289
  store <4 x i32> zeroinitializer, <4 x i32>* %399, align 1
  %439 = load i64, i64* %RBP.i, align 8
  %440 = add i64 %439, -4
  %441 = add i64 %438, 7
  store i64 %441, i64* %3, align 8
  %442 = inttoptr i64 %440 to i32*
  %443 = load i32, i32* %442, align 4
  %444 = sext i32 %443 to i64
  store i64 %444, i64* %RAX.i175, align 8
  %445 = shl nsw i64 %444, 2
  %446 = add nsw i64 %445, 11844848
  %447 = add i64 %438, 16
  store i64 %447, i64* %3, align 8
  %448 = inttoptr i64 %446 to float*
  %449 = load float, float* %448, align 4
  %450 = fpext float %449 to double
  store double %450, double* %139, align 1
  %451 = add i64 %438, 20
  store i64 %451, i64* %3, align 8
  %452 = load double, double* %140, align 1
  %453 = fcmp uno double %450, %452
  br i1 %453, label %454, label %464

; <label>:454:                                    ; preds = %block_47f29a
  %455 = fadd double %450, %452
  %456 = bitcast double %455 to i64
  %457 = and i64 %456, 9221120237041090560
  %458 = icmp eq i64 %457, 9218868437227405312
  %459 = and i64 %456, 2251799813685247
  %460 = icmp ne i64 %459, 0
  %461 = and i1 %458, %460
  br i1 %461, label %462, label %470

; <label>:462:                                    ; preds = %454
  %463 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %451, %struct.Memory* %MEMORY.5)
  %.pre14 = load i64, i64* %3, align 8
  %.pre15 = load i64, i64* %RBP.i, align 8
  br label %routine_ucomisd__xmm0___xmm1.exit

; <label>:464:                                    ; preds = %block_47f29a
  %465 = fcmp ogt double %450, %452
  br i1 %465, label %470, label %466

; <label>:466:                                    ; preds = %464
  %467 = fcmp olt double %450, %452
  br i1 %467, label %470, label %468

; <label>:468:                                    ; preds = %466
  %469 = fcmp oeq double %450, %452
  br i1 %469, label %470, label %474

; <label>:470:                                    ; preds = %468, %466, %464, %454
  %471 = phi i8 [ 0, %464 ], [ 0, %466 ], [ 1, %468 ], [ 1, %454 ]
  %472 = phi i8 [ 0, %464 ], [ 0, %466 ], [ 0, %468 ], [ 1, %454 ]
  %473 = phi i8 [ 0, %464 ], [ 1, %466 ], [ 0, %468 ], [ 1, %454 ]
  store i8 %471, i8* %29, align 1
  store i8 %472, i8* %21, align 1
  store i8 %473, i8* %14, align 1
  br label %474

; <label>:474:                                    ; preds = %470, %468
  store i8 0, i8* %38, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %26, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit

routine_ucomisd__xmm0___xmm1.exit:                ; preds = %474, %462
  %475 = phi i64 [ %.pre15, %462 ], [ %439, %474 ]
  %476 = phi i64 [ %.pre14, %462 ], [ %451, %474 ]
  %477 = phi %struct.Memory* [ %463, %462 ], [ %MEMORY.5, %474 ]
  %478 = load i8, i8* %14, align 1
  %479 = load i8, i8* %29, align 1
  %480 = or i8 %479, %478
  %481 = icmp eq i8 %480, 0
  %482 = zext i1 %481 to i8
  store i8 %482, i8* %CL.i66, align 1
  %483 = add i64 %475, -17
  %484 = add i64 %476, 6
  store i64 %484, i64* %3, align 8
  %485 = inttoptr i64 %483 to i8*
  store i8 %482, i8* %485, align 1
  %.pre16 = load i64, i64* %3, align 8
  br label %block_.L_47f2b4

block_.L_47f2b4:                                  ; preds = %block_.L_47f289, %routine_ucomisd__xmm0___xmm1.exit
  %486 = phi i64 [ %431, %block_.L_47f289 ], [ %.pre16, %routine_ucomisd__xmm0___xmm1.exit ]
  %MEMORY.6 = phi %struct.Memory* [ %MEMORY.5, %block_.L_47f289 ], [ %477, %routine_ucomisd__xmm0___xmm1.exit ]
  %487 = load i64, i64* %RBP.i, align 8
  %488 = add i64 %487, -17
  %489 = add i64 %486, 3
  store i64 %489, i64* %3, align 8
  %490 = inttoptr i64 %488 to i8*
  %491 = load i8, i8* %490, align 1
  store i8 %491, i8* %AL.i77, align 1
  %492 = and i8 %491, 1
  store i8 0, i8* %14, align 1
  %493 = zext i8 %492 to i32
  %494 = tail call i32 @llvm.ctpop.i32(i32 %493)
  %495 = trunc i32 %494 to i8
  %496 = xor i8 %495, 1
  store i8 %496, i8* %21, align 1
  %497 = xor i8 %492, 1
  store i8 %497, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %498 = icmp eq i8 %497, 0
  %.v24 = select i1 %498, i64 16, i64 11
  %499 = add i64 %486, %.v24
  store i64 %499, i64* %3, align 8
  br i1 %498, label %block_.L_47f2c4, label %block_47f2bf

block_47f2bf:                                     ; preds = %block_.L_47f2b4
  %500 = add i64 %499, 76
  store i64 %500, i64* %3, align 8
  br label %block_.L_47f30b

block_.L_47f2c4:                                  ; preds = %block_.L_47f2b4
  store i64 ptrtoint (%G__0x581fcd_type* @G__0x581fcd to i64), i64* %RDI.i103, align 8
  %501 = add i64 %487, -4
  %502 = add i64 %499, 13
  store i64 %502, i64* %3, align 8
  %503 = inttoptr i64 %501 to i32*
  %504 = load i32, i32* %503, align 4
  %505 = add i32 %504, 1
  %506 = zext i32 %505 to i64
  store i64 %506, i64* %RAX.i175, align 8
  %507 = icmp eq i32 %504, -1
  %508 = icmp eq i32 %505, 0
  %509 = or i1 %507, %508
  %510 = zext i1 %509 to i8
  store i8 %510, i8* %14, align 1
  %511 = and i32 %505, 255
  %512 = tail call i32 @llvm.ctpop.i32(i32 %511)
  %513 = trunc i32 %512 to i8
  %514 = and i8 %513, 1
  %515 = xor i8 %514, 1
  store i8 %515, i8* %21, align 1
  %516 = xor i32 %505, %504
  %517 = lshr i32 %516, 4
  %518 = trunc i32 %517 to i8
  %519 = and i8 %518, 1
  store i8 %519, i8* %26, align 1
  %520 = zext i1 %508 to i8
  store i8 %520, i8* %29, align 1
  %521 = lshr i32 %505, 31
  %522 = trunc i32 %521 to i8
  store i8 %522, i8* %32, align 1
  %523 = lshr i32 %504, 31
  %524 = xor i32 %521, %523
  %525 = add nuw nsw i32 %524, %521
  %526 = icmp eq i32 %525, 2
  %527 = zext i1 %526 to i8
  store i8 %527, i8* %38, align 1
  %528 = add i64 %499, 20
  store i64 %528, i64* %3, align 8
  %529 = load i32, i32* %503, align 4
  %530 = sext i32 %529 to i64
  store i64 %530, i64* %RCX.i148, align 8
  %531 = shl nsw i64 %530, 2
  %532 = add nsw i64 %531, 11939936
  %533 = add i64 %499, 27
  store i64 %533, i64* %3, align 8
  %534 = inttoptr i64 %532 to i32*
  %535 = load i32, i32* %534, align 4
  %536 = zext i32 %535 to i64
  store i64 %536, i64* %RDX.i, align 8
  %537 = add i64 %499, 31
  store i64 %537, i64* %3, align 8
  %538 = load i32, i32* %503, align 4
  %539 = sext i32 %538 to i64
  store i64 %539, i64* %RCX.i148, align 8
  %540 = shl nsw i64 %539, 2
  %541 = add nsw i64 %540, 11844848
  %542 = add i64 %499, 40
  store i64 %542, i64* %3, align 8
  %543 = inttoptr i64 %541 to float*
  %544 = load float, float* %543, align 4
  %545 = fpext float %544 to double
  store double %545, double* %398, align 1
  store i64 %506, i64* %RSI.i, align 8
  store i8 1, i8* %AL.i77, align 1
  %546 = add i64 %499, -185620
  %547 = add i64 %499, 49
  %548 = load i64, i64* %6, align 8
  %549 = add i64 %548, -8
  %550 = inttoptr i64 %549 to i64*
  store i64 %547, i64* %550, align 8
  store i64 %549, i64* %6, align 8
  store i64 %546, i64* %3, align 8
  %call2_47f2f0 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %546, %struct.Memory* %MEMORY.6)
  %551 = load i64, i64* %RBP.i, align 8
  %552 = add i64 %551, -24
  %553 = load i32, i32* %EAX.i159, align 4
  %554 = load i64, i64* %3, align 8
  %555 = add i64 %554, 3
  store i64 %555, i64* %3, align 8
  %556 = inttoptr i64 %552 to i32*
  store i32 %553, i32* %556, align 4
  %557 = load i64, i64* %RBP.i, align 8
  %558 = add i64 %557, -4
  %559 = load i64, i64* %3, align 8
  %560 = add i64 %559, 3
  store i64 %560, i64* %3, align 8
  %561 = inttoptr i64 %558 to i32*
  %562 = load i32, i32* %561, align 4
  %563 = add i32 %562, 1
  %564 = zext i32 %563 to i64
  store i64 %564, i64* %RAX.i175, align 8
  %565 = icmp eq i32 %562, -1
  %566 = icmp eq i32 %563, 0
  %567 = or i1 %565, %566
  %568 = zext i1 %567 to i8
  store i8 %568, i8* %14, align 1
  %569 = and i32 %563, 255
  %570 = tail call i32 @llvm.ctpop.i32(i32 %569)
  %571 = trunc i32 %570 to i8
  %572 = and i8 %571, 1
  %573 = xor i8 %572, 1
  store i8 %573, i8* %21, align 1
  %574 = xor i32 %563, %562
  %575 = lshr i32 %574, 4
  %576 = trunc i32 %575 to i8
  %577 = and i8 %576, 1
  store i8 %577, i8* %26, align 1
  %578 = zext i1 %566 to i8
  store i8 %578, i8* %29, align 1
  %579 = lshr i32 %563, 31
  %580 = trunc i32 %579 to i8
  store i8 %580, i8* %32, align 1
  %581 = lshr i32 %562, 31
  %582 = xor i32 %579, %581
  %583 = add nuw nsw i32 %582, %579
  %584 = icmp eq i32 %583, 2
  %585 = zext i1 %584 to i8
  store i8 %585, i8* %38, align 1
  %586 = add i64 %559, 9
  store i64 %586, i64* %3, align 8
  store i32 %563, i32* %561, align 4
  %587 = load i64, i64* %3, align 8
  %588 = add i64 %587, -120
  store i64 %588, i64* %3, align 8
  br label %block_.L_47f289

block_.L_47f30b:                                  ; preds = %block_47f2bf, %block_47f259
  %589 = phi i64 [ %500, %block_47f2bf ], [ %380, %block_47f259 ]
  %MEMORY.7 = phi %struct.Memory* [ %MEMORY.6, %block_47f2bf ], [ %MEMORY.1, %block_47f259 ]
  %590 = load i64, i64* %6, align 8
  %591 = add i64 %590, 32
  store i64 %591, i64* %6, align 8
  %592 = icmp ugt i64 %590, -33
  %593 = zext i1 %592 to i8
  store i8 %593, i8* %14, align 1
  %594 = trunc i64 %591 to i32
  %595 = and i32 %594, 255
  %596 = tail call i32 @llvm.ctpop.i32(i32 %595)
  %597 = trunc i32 %596 to i8
  %598 = and i8 %597, 1
  %599 = xor i8 %598, 1
  store i8 %599, i8* %21, align 1
  %600 = xor i64 %591, %590
  %601 = lshr i64 %600, 4
  %602 = trunc i64 %601 to i8
  %603 = and i8 %602, 1
  store i8 %603, i8* %26, align 1
  %604 = icmp eq i64 %591, 0
  %605 = zext i1 %604 to i8
  store i8 %605, i8* %29, align 1
  %606 = lshr i64 %591, 63
  %607 = trunc i64 %606 to i8
  store i8 %607, i8* %32, align 1
  %608 = lshr i64 %590, 63
  %609 = xor i64 %606, %608
  %610 = add nuw nsw i64 %609, %606
  %611 = icmp eq i64 %610, 2
  %612 = zext i1 %611 to i8
  store i8 %612, i8* %38, align 1
  %613 = add i64 %589, 5
  store i64 %613, i64* %3, align 8
  %614 = add i64 %590, 40
  %615 = inttoptr i64 %591 to i64*
  %616 = load i64, i64* %615, align 8
  store i64 %616, i64* %RBP.i, align 8
  store i64 %614, i64* %6, align 8
  %617 = add i64 %589, 6
  store i64 %617, i64* %3, align 8
  %618 = inttoptr i64 %614 to i64*
  %619 = load i64, i64* %618, align 8
  store i64 %619, i64* %3, align 8
  %620 = add i64 %590, 48
  store i64 %620, i64* %6, align 8
  ret %struct.Memory* %MEMORY.7
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0xa__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -10
  %10 = icmp ult i32 %8, 10
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
define %struct.Memory* @routine_jge_.L_47f1b6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__0xb63060___rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 11939936
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  store i32 0, i32* %8, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__0xb4bcf0___rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 11844848
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 9
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x float>*
  %10 = load <2 x float>, <2 x float>* %9, align 1
  %11 = extractelement <2 x float> %10, i32 0
  %12 = inttoptr i64 %6 to float*
  store float %11, float* %12, align 4
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
define %struct.Memory* @routine_jmpq_.L_47f17f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jge_.L_47f24b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_47f209(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cvtss2sd_0x4__rax____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
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
define %struct.Memory* @routine_jb_.L_47f20e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_47f23d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0x4__rax____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
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
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12
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
define %struct.Memory* @routine_movl_MINUS0x8__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_MINUS0xc__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -12
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
define %struct.Memory* @routine_callq_.record_top_move(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_47f1bd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jg_.L_47f26e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
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
  %17 = add i64 %.v, %3
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xab0f24___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_andl__0x400000___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 5
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 4194304
  store i64 %6, i64* %RAX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %8, align 1
  %.lobit = lshr exact i64 %6, 22
  %9 = trunc i64 %.lobit to i8
  %10 = xor i8 %9, 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %10, i8* %11, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %14, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7, align 1
  %8 = and i32 %4, 255
  %9 = tail call i32 @llvm.ctpop.i32(i32 %8)
  %10 = trunc i32 %9 to i8
  %11 = and i8 %10, 1
  %12 = xor i8 %11, 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %12, i8* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %14, align 1
  %15 = icmp eq i32 %4, 0
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %16, i8* %17, align 1
  %18 = lshr i32 %4, 31
  %19 = trunc i32 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %19, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %21, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_47f30b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x581fc0___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x581fc0_type* @G__0x581fc0 to i64), i64* %RDI, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_xorl__eax___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2
  store i64 %4, i64* %PC, align 8
  store i64 0, i64* %RAX, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5, align 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 1, i8* %7, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__al___cl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %4 to i8*
  %5 = load i8, i8* %AL, align 1
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i8 %5, i8* %CL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__cl__MINUS0x11__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -17
  %6 = load i8, i8* %CL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_47f2b4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cvtss2sd_0xb4bcf0___rax_4____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 11844848
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 9
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to float*
  %10 = load float, float* %9, align 4
  %11 = fpext float %10 to double
  %12 = bitcast %union.VectorReg* %3 to double*
  store double %11, double* %12, align 1
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
define %struct.Memory* @routine_seta__cl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %7 = load i8, i8* %6, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %9 = load i8, i8* %8, align 1
  %10 = or i8 %9, %7
  %11 = icmp eq i8 %10, 0
  %12 = zext i1 %11 to i8
  store i8 %12, i8* %CL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb_MINUS0x11__rbp____al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -17
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_testb__0x1___al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = load i8, i8* %AL, align 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = and i8 %4, 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = zext i8 %7 to i32
  %10 = tail call i32 @llvm.ctpop.i32(i32 %9)
  %11 = trunc i32 %10 to i8
  %12 = xor i8 %11, 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %12, i8* %13, align 1
  %14 = xor i8 %7, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %14, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %17, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_47f2c4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_47f306(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x581fcd___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x581fcd_type* @G__0x581fcd to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_movl_0xb63060___rcx_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 11939936
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd_0xb4bcf0___rcx_4____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 11844848
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 9
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to float*
  %10 = load float, float* %9, align 4
  %11 = fpext float %10 to double
  %12 = bitcast %union.VectorReg* %3 to double*
  store double %11, double* %12, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RSI, align 8
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
define %struct.Memory* @routine_movl__eax__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47f289(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47f30b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
