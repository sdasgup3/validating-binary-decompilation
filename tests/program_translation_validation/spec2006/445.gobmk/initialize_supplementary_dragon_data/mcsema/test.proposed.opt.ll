; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0xaaf050_type = type <{ [4 x i8] }>
%G_0xab0fe0_type = type <{ [8 x i8] }>
%G_0xb54cec_type = type <{ [4 x i8] }>
%G__0x57ad9b_type = type <{ [8 x i8] }>
%G__0x57b2be_type = type <{ [8 x i8] }>
%G__0xb4bd20_type = type <{ [8 x i8] }>
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
@G_0xaaf050 = local_unnamed_addr global %G_0xaaf050_type zeroinitializer
@G_0xab0fe0 = local_unnamed_addr global %G_0xab0fe0_type zeroinitializer
@G_0xb54cec = local_unnamed_addr global %G_0xb54cec_type zeroinitializer
@G__0x57ad9b = global %G__0x57ad9b_type zeroinitializer
@G__0x57b2be = global %G__0x57b2be_type zeroinitializer
@G__0xb4bd20 = global %G__0xb4bd20_type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @free(i64)

declare extern_weak x86_64_sysvcc i64 @malloc(i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_452090.abortgo(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4393a0.set_eyevalue(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @initialize_supplementary_dragon_data(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  store i32 0, i32* bitcast (%G_0xb54cec_type* @G_0xb54cec to i32*), align 8
  %40 = add i64 %7, -12
  %41 = add i64 %10, 25
  store i64 %41, i64* %3, align 8
  %42 = inttoptr i64 %40 to i32*
  store i32 21, i32* %42, align 4
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i407 = getelementptr inbounds %union.anon, %union.anon* %43, i64 0, i32 0
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i405 = getelementptr inbounds %union.anon, %union.anon* %44, i64 0, i32 0
  %ECX.i402 = bitcast %union.anon* %44 to i32*
  %RDX.i388 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI.i324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RSI.i347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %EAX.i305 = bitcast %union.anon* %43 to i32*
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_41e65a

block_.L_41e65a:                                  ; preds = %block_.L_41e729, %entry
  %45 = phi i64 [ %391, %block_.L_41e729 ], [ %.pre, %entry ]
  %46 = load i64, i64* %RBP.i, align 8
  %47 = add i64 %46, -4
  %48 = add i64 %45, 7
  store i64 %48, i64* %3, align 8
  %49 = inttoptr i64 %47 to i32*
  %50 = load i32, i32* %49, align 4
  %51 = add i32 %50, -400
  %52 = icmp ult i32 %50, 400
  %53 = zext i1 %52 to i8
  store i8 %53, i8* %14, align 1
  %54 = and i32 %51, 255
  %55 = tail call i32 @llvm.ctpop.i32(i32 %54)
  %56 = trunc i32 %55 to i8
  %57 = and i8 %56, 1
  %58 = xor i8 %57, 1
  store i8 %58, i8* %21, align 1
  %59 = xor i32 %50, 16
  %60 = xor i32 %59, %51
  %61 = lshr i32 %60, 4
  %62 = trunc i32 %61 to i8
  %63 = and i8 %62, 1
  store i8 %63, i8* %27, align 1
  %64 = icmp eq i32 %51, 0
  %65 = zext i1 %64 to i8
  store i8 %65, i8* %30, align 1
  %66 = lshr i32 %51, 31
  %67 = trunc i32 %66 to i8
  store i8 %67, i8* %33, align 1
  %68 = lshr i32 %50, 31
  %69 = xor i32 %66, %68
  %70 = add nuw nsw i32 %69, %68
  %71 = icmp eq i32 %70, 2
  %72 = zext i1 %71 to i8
  store i8 %72, i8* %39, align 1
  %73 = icmp ne i8 %67, 0
  %74 = xor i1 %73, %71
  %.v = select i1 %74, i64 13, i64 221
  %75 = add i64 %45, %.v
  store i64 %75, i64* %3, align 8
  br i1 %74, label %block_41e667, label %block_.L_41e737

block_41e667:                                     ; preds = %block_.L_41e65a
  %76 = add i64 %75, 4
  store i64 %76, i64* %3, align 8
  %77 = load i32, i32* %49, align 4
  %78 = sext i32 %77 to i64
  store i64 %78, i64* %RAX.i407, align 8
  %79 = add nsw i64 %78, 12099168
  %80 = add i64 %75, 12
  store i64 %80, i64* %3, align 8
  %81 = inttoptr i64 %79 to i8*
  %82 = load i8, i8* %81, align 1
  %83 = zext i8 %82 to i64
  store i64 %83, i64* %RCX.i405, align 8
  %84 = zext i8 %82 to i32
  %85 = add nsw i32 %84, -3
  %86 = icmp ult i8 %82, 3
  %87 = zext i1 %86 to i8
  store i8 %87, i8* %14, align 1
  %88 = and i32 %85, 255
  %89 = tail call i32 @llvm.ctpop.i32(i32 %88)
  %90 = trunc i32 %89 to i8
  %91 = and i8 %90, 1
  %92 = xor i8 %91, 1
  store i8 %92, i8* %21, align 1
  %93 = xor i32 %85, %84
  %94 = lshr i32 %93, 4
  %95 = trunc i32 %94 to i8
  %96 = and i8 %95, 1
  store i8 %96, i8* %27, align 1
  %97 = icmp eq i32 %85, 0
  %98 = zext i1 %97 to i8
  store i8 %98, i8* %30, align 1
  %99 = lshr i32 %85, 31
  %100 = trunc i32 %99 to i8
  store i8 %100, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v36 = select i1 %97, i64 21, i64 26
  %101 = add i64 %75, %.v36
  store i64 %101, i64* %3, align 8
  br i1 %97, label %block_41e67c, label %block_.L_41e681

block_41e67c:                                     ; preds = %block_41e667
  %102 = add i64 %101, 173
  store i64 %102, i64* %3, align 8
  br label %block_.L_41e729

block_.L_41e681:                                  ; preds = %block_41e667
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i407, align 8
  %103 = add i64 %101, 14
  store i64 %103, i64* %3, align 8
  %104 = load i32, i32* %49, align 4
  %105 = sext i32 %104 to i64
  %106 = mul nsw i64 %105, 76
  store i64 %106, i64* %RCX.i405, align 8
  %107 = lshr i64 %106, 63
  %108 = add i64 %106, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %108, i64* %RAX.i407, align 8
  %109 = icmp ult i64 %108, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %110 = icmp ult i64 %108, %106
  %111 = or i1 %109, %110
  %112 = zext i1 %111 to i8
  store i8 %112, i8* %14, align 1
  %113 = trunc i64 %108 to i32
  %114 = and i32 %113, 252
  %115 = tail call i32 @llvm.ctpop.i32(i32 %114)
  %116 = trunc i32 %115 to i8
  %117 = and i8 %116, 1
  %118 = xor i8 %117, 1
  store i8 %118, i8* %21, align 1
  %119 = xor i64 %106, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %120 = xor i64 %119, %108
  %121 = lshr i64 %120, 4
  %122 = trunc i64 %121 to i8
  %123 = and i8 %122, 1
  store i8 %123, i8* %27, align 1
  %124 = icmp eq i64 %108, 0
  %125 = zext i1 %124 to i8
  store i8 %125, i8* %30, align 1
  %126 = lshr i64 %108, 63
  %127 = trunc i64 %126 to i8
  store i8 %127, i8* %33, align 1
  %128 = xor i64 %126, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %129 = xor i64 %126, %107
  %130 = add nuw nsw i64 %128, %129
  %131 = icmp eq i64 %130, 2
  %132 = zext i1 %131 to i8
  store i8 %132, i8* %39, align 1
  %133 = add i64 %106, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 8)
  %134 = add i64 %101, 24
  store i64 %134, i64* %3, align 8
  %135 = inttoptr i64 %133 to i32*
  %136 = load i32, i32* %135, align 4
  %137 = zext i32 %136 to i64
  store i64 %137, i64* %RDX.i388, align 8
  %138 = add i64 %46, -12
  %139 = add i64 %101, 27
  store i64 %139, i64* %3, align 8
  %140 = inttoptr i64 %138 to i32*
  store i32 %136, i32* %140, align 4
  %141 = load i64, i64* %RBP.i, align 8
  %142 = add i64 %141, -4
  %143 = load i64, i64* %3, align 8
  %144 = add i64 %143, 4
  store i64 %144, i64* %3, align 8
  %145 = inttoptr i64 %142 to i32*
  %146 = load i32, i32* %145, align 4
  %147 = sext i32 %146 to i64
  store i64 %147, i64* %RAX.i407, align 8
  %148 = add nsw i64 %147, 12099168
  %149 = add i64 %143, 12
  store i64 %149, i64* %3, align 8
  %150 = inttoptr i64 %148 to i8*
  %151 = load i8, i8* %150, align 1
  %152 = zext i8 %151 to i64
  store i64 %152, i64* %RDX.i388, align 8
  %153 = zext i8 %151 to i32
  store i8 0, i8* %14, align 1
  %154 = tail call i32 @llvm.ctpop.i32(i32 %153)
  %155 = trunc i32 %154 to i8
  %156 = and i8 %155, 1
  %157 = xor i8 %156, 1
  store i8 %157, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %158 = icmp eq i8 %151, 0
  %159 = zext i1 %158 to i8
  store i8 %159, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v37 = select i1 %158, i64 21, i64 26
  %160 = add i64 %143, %.v37
  store i64 %160, i64* %3, align 8
  br i1 %158, label %block_41e6b1, label %block_.L_41e6b6

block_41e6b1:                                     ; preds = %block_.L_41e681
  %161 = add i64 %160, 120
  store i64 %161, i64* %3, align 8
  br label %block_.L_41e729

block_.L_41e6b6:                                  ; preds = %block_.L_41e681
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i407, align 8
  %162 = add i64 %141, -12
  %163 = add i64 %160, 14
  store i64 %163, i64* %3, align 8
  %164 = inttoptr i64 %162 to i32*
  %165 = load i32, i32* %164, align 4
  %166 = sext i32 %165 to i64
  %167 = mul nsw i64 %166, 76
  store i64 %167, i64* %RCX.i405, align 8
  %168 = lshr i64 %167, 63
  %169 = add i64 %167, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %169, i64* %RAX.i407, align 8
  %170 = icmp ult i64 %169, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %171 = icmp ult i64 %169, %167
  %172 = or i1 %170, %171
  %173 = zext i1 %172 to i8
  store i8 %173, i8* %14, align 1
  %174 = trunc i64 %169 to i32
  %175 = and i32 %174, 252
  %176 = tail call i32 @llvm.ctpop.i32(i32 %175)
  %177 = trunc i32 %176 to i8
  %178 = and i8 %177, 1
  %179 = xor i8 %178, 1
  store i8 %179, i8* %21, align 1
  %180 = xor i64 %167, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %181 = xor i64 %180, %169
  %182 = lshr i64 %181, 4
  %183 = trunc i64 %182 to i8
  %184 = and i8 %183, 1
  store i8 %184, i8* %27, align 1
  %185 = icmp eq i64 %169, 0
  %186 = zext i1 %185 to i8
  store i8 %186, i8* %30, align 1
  %187 = lshr i64 %169, 63
  %188 = trunc i64 %187 to i8
  store i8 %188, i8* %33, align 1
  %189 = xor i64 %187, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %190 = xor i64 %187, %168
  %191 = add nuw nsw i64 %189, %190
  %192 = icmp eq i64 %191, 2
  %193 = zext i1 %192 to i8
  store i8 %193, i8* %39, align 1
  %194 = add i64 %167, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 4)
  %195 = add i64 %160, 25
  store i64 %195, i64* %3, align 8
  %196 = inttoptr i64 %194 to i32*
  %197 = load i32, i32* %196, align 4
  %198 = add i32 %197, 1
  %199 = icmp ne i32 %197, -1
  %200 = zext i1 %199 to i8
  store i8 %200, i8* %14, align 1
  %201 = and i32 %198, 255
  %202 = tail call i32 @llvm.ctpop.i32(i32 %201)
  %203 = trunc i32 %202 to i8
  %204 = and i8 %203, 1
  %205 = xor i8 %204, 1
  store i8 %205, i8* %21, align 1
  %206 = xor i32 %197, 16
  %207 = xor i32 %206, %198
  %208 = lshr i32 %207, 4
  %209 = trunc i32 %208 to i8
  %210 = and i8 %209, 1
  store i8 %210, i8* %27, align 1
  %211 = icmp eq i32 %198, 0
  %212 = zext i1 %211 to i8
  store i8 %212, i8* %30, align 1
  %213 = lshr i32 %198, 31
  %214 = trunc i32 %213 to i8
  store i8 %214, i8* %33, align 1
  %215 = lshr i32 %197, 31
  %216 = xor i32 %215, 1
  %217 = xor i32 %213, %215
  %218 = add nuw nsw i32 %217, %216
  %219 = icmp eq i32 %218, 2
  %220 = zext i1 %219 to i8
  store i8 %220, i8* %39, align 1
  %.v38 = select i1 %211, i64 31, i64 74
  %221 = add i64 %160, %.v38
  store i64 %221, i64* %3, align 8
  br i1 %211, label %block_41e6d5, label %block_.L_41e700

block_41e6d5:                                     ; preds = %block_.L_41e6b6
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i407, align 8
  %222 = load i32, i32* bitcast (%G_0xb54cec_type* @G_0xb54cec to i32*), align 8
  %223 = zext i32 %222 to i64
  store i64 %223, i64* %RCX.i405, align 8
  %224 = add i32 %222, 1
  %225 = zext i32 %224 to i64
  store i64 %225, i64* %RDX.i388, align 8
  %226 = icmp eq i32 %222, -1
  %227 = icmp eq i32 %224, 0
  %228 = or i1 %226, %227
  %229 = zext i1 %228 to i8
  store i8 %229, i8* %14, align 1
  %230 = and i32 %224, 255
  %231 = tail call i32 @llvm.ctpop.i32(i32 %230)
  %232 = trunc i32 %231 to i8
  %233 = and i8 %232, 1
  %234 = xor i8 %233, 1
  store i8 %234, i8* %21, align 1
  %235 = xor i32 %224, %222
  %236 = lshr i32 %235, 4
  %237 = trunc i32 %236 to i8
  %238 = and i8 %237, 1
  store i8 %238, i8* %27, align 1
  %239 = zext i1 %227 to i8
  store i8 %239, i8* %30, align 1
  %240 = lshr i32 %224, 31
  %241 = trunc i32 %240 to i8
  store i8 %241, i8* %33, align 1
  %242 = lshr i32 %222, 31
  %243 = xor i32 %240, %242
  %244 = add nuw nsw i32 %243, %240
  %245 = icmp eq i32 %244, 2
  %246 = zext i1 %245 to i8
  store i8 %246, i8* %39, align 1
  store i32 %224, i32* bitcast (%G_0xb54cec_type* @G_0xb54cec to i32*), align 8
  %247 = load i64, i64* %RBP.i, align 8
  %248 = add i64 %247, -12
  %249 = add i64 %221, 33
  store i64 %249, i64* %3, align 8
  %250 = inttoptr i64 %248 to i32*
  %251 = load i32, i32* %250, align 4
  %252 = sext i32 %251 to i64
  %253 = mul nsw i64 %252, 76
  store i64 %253, i64* %RSI.i347, align 8
  %254 = lshr i64 %253, 63
  %255 = add i64 %253, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %255, i64* %RAX.i407, align 8
  %256 = icmp ult i64 %255, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %257 = icmp ult i64 %255, %253
  %258 = or i1 %256, %257
  %259 = zext i1 %258 to i8
  store i8 %259, i8* %14, align 1
  %260 = trunc i64 %255 to i32
  %261 = and i32 %260, 252
  %262 = tail call i32 @llvm.ctpop.i32(i32 %261)
  %263 = trunc i32 %262 to i8
  %264 = and i8 %263, 1
  %265 = xor i8 %264, 1
  store i8 %265, i8* %21, align 1
  %266 = xor i64 %253, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %267 = xor i64 %266, %255
  %268 = lshr i64 %267, 4
  %269 = trunc i64 %268 to i8
  %270 = and i8 %269, 1
  store i8 %270, i8* %27, align 1
  %271 = icmp eq i64 %255, 0
  %272 = zext i1 %271 to i8
  store i8 %272, i8* %30, align 1
  %273 = lshr i64 %255, 63
  %274 = trunc i64 %273 to i8
  store i8 %274, i8* %33, align 1
  %275 = xor i64 %273, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %276 = xor i64 %273, %254
  %277 = add nuw nsw i64 %275, %276
  %278 = icmp eq i64 %277, 2
  %279 = zext i1 %278 to i8
  store i8 %279, i8* %39, align 1
  %280 = add i64 %253, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 4)
  %281 = load i32, i32* %ECX.i402, align 4
  %282 = add i64 %221, 43
  store i64 %282, i64* %3, align 8
  %283 = inttoptr i64 %280 to i32*
  store i32 %281, i32* %283, align 4
  %.pre24 = load i64, i64* %3, align 8
  br label %block_.L_41e700

block_.L_41e700:                                  ; preds = %block_.L_41e6b6, %block_41e6d5
  %284 = phi i64 [ %.pre24, %block_41e6d5 ], [ %221, %block_.L_41e6b6 ]
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i407, align 8
  %285 = load i64, i64* %RBP.i, align 8
  %286 = add i64 %285, -12
  %287 = add i64 %284, 14
  store i64 %287, i64* %3, align 8
  %288 = inttoptr i64 %286 to i32*
  %289 = load i32, i32* %288, align 4
  %290 = sext i32 %289 to i64
  %291 = mul nsw i64 %290, 76
  store i64 %291, i64* %RCX.i405, align 8
  %292 = lshr i64 %291, 63
  %293 = add i64 %291, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %293, i64* %RDX.i388, align 8
  %294 = icmp ult i64 %293, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %295 = icmp ult i64 %293, %291
  %296 = or i1 %294, %295
  %297 = zext i1 %296 to i8
  store i8 %297, i8* %14, align 1
  %298 = trunc i64 %293 to i32
  %299 = and i32 %298, 252
  %300 = tail call i32 @llvm.ctpop.i32(i32 %299)
  %301 = trunc i32 %300 to i8
  %302 = and i8 %301, 1
  %303 = xor i8 %302, 1
  store i8 %303, i8* %21, align 1
  %304 = xor i64 %291, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %305 = xor i64 %304, %293
  %306 = lshr i64 %305, 4
  %307 = trunc i64 %306 to i8
  %308 = and i8 %307, 1
  store i8 %308, i8* %27, align 1
  %309 = icmp eq i64 %293, 0
  %310 = zext i1 %309 to i8
  store i8 %310, i8* %30, align 1
  %311 = lshr i64 %293, 63
  %312 = trunc i64 %311 to i8
  store i8 %312, i8* %33, align 1
  %313 = xor i64 %311, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %314 = xor i64 %311, %292
  %315 = add nuw nsw i64 %313, %314
  %316 = icmp eq i64 %315, 2
  %317 = zext i1 %316 to i8
  store i8 %317, i8* %39, align 1
  %318 = add i64 %291, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 4)
  %319 = add i64 %284, 27
  store i64 %319, i64* %3, align 8
  %320 = inttoptr i64 %318 to i32*
  %321 = load i32, i32* %320, align 4
  %322 = zext i32 %321 to i64
  store i64 %322, i64* %RSI.i324, align 8
  %323 = add i64 %285, -4
  %324 = add i64 %284, 31
  store i64 %324, i64* %3, align 8
  %325 = inttoptr i64 %323 to i32*
  %326 = load i32, i32* %325, align 4
  %327 = sext i32 %326 to i64
  %328 = mul nsw i64 %327, 76
  store i64 %328, i64* %RCX.i405, align 8
  %329 = lshr i64 %328, 63
  %330 = load i64, i64* %RAX.i407, align 8
  %331 = add i64 %328, %330
  store i64 %331, i64* %RAX.i407, align 8
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
  %357 = add i64 %331, 4
  %358 = add i64 %284, 41
  store i64 %358, i64* %3, align 8
  %359 = inttoptr i64 %357 to i32*
  store i32 %321, i32* %359, align 4
  %.pre25 = load i64, i64* %RBP.i, align 8
  %.pre26 = load i64, i64* %3, align 8
  br label %block_.L_41e729

block_.L_41e729:                                  ; preds = %block_.L_41e700, %block_41e6b1, %block_41e67c
  %360 = phi i64 [ %.pre26, %block_.L_41e700 ], [ %161, %block_41e6b1 ], [ %102, %block_41e67c ]
  %361 = phi i64 [ %.pre25, %block_.L_41e700 ], [ %141, %block_41e6b1 ], [ %46, %block_41e67c ]
  %362 = add i64 %361, -4
  %363 = add i64 %360, 3
  store i64 %363, i64* %3, align 8
  %364 = inttoptr i64 %362 to i32*
  %365 = load i32, i32* %364, align 4
  %366 = add i32 %365, 1
  %367 = zext i32 %366 to i64
  store i64 %367, i64* %RAX.i407, align 8
  %368 = icmp eq i32 %365, -1
  %369 = icmp eq i32 %366, 0
  %370 = or i1 %368, %369
  %371 = zext i1 %370 to i8
  store i8 %371, i8* %14, align 1
  %372 = and i32 %366, 255
  %373 = tail call i32 @llvm.ctpop.i32(i32 %372)
  %374 = trunc i32 %373 to i8
  %375 = and i8 %374, 1
  %376 = xor i8 %375, 1
  store i8 %376, i8* %21, align 1
  %377 = xor i32 %366, %365
  %378 = lshr i32 %377, 4
  %379 = trunc i32 %378 to i8
  %380 = and i8 %379, 1
  store i8 %380, i8* %27, align 1
  %381 = zext i1 %369 to i8
  store i8 %381, i8* %30, align 1
  %382 = lshr i32 %366, 31
  %383 = trunc i32 %382 to i8
  store i8 %383, i8* %33, align 1
  %384 = lshr i32 %365, 31
  %385 = xor i32 %382, %384
  %386 = add nuw nsw i32 %385, %382
  %387 = icmp eq i32 %386, 2
  %388 = zext i1 %387 to i8
  store i8 %388, i8* %39, align 1
  %389 = add i64 %360, 9
  store i64 %389, i64* %3, align 8
  store i32 %366, i32* %364, align 4
  %390 = load i64, i64* %3, align 8
  %391 = add i64 %390, -216
  store i64 %391, i64* %3, align 8
  br label %block_.L_41e65a

block_.L_41e737:                                  ; preds = %block_.L_41e65a
  %392 = load i64, i64* bitcast (%G_0xab0fe0_type* @G_0xab0fe0 to i64*), align 8
  store i8 0, i8* %14, align 1
  %393 = trunc i64 %392 to i32
  %394 = and i32 %393, 255
  %395 = tail call i32 @llvm.ctpop.i32(i32 %394)
  %396 = trunc i32 %395 to i8
  %397 = and i8 %396, 1
  %398 = xor i8 %397, 1
  store i8 %398, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %399 = icmp eq i64 %392, 0
  %400 = zext i1 %399 to i8
  store i8 %400, i8* %30, align 1
  %401 = lshr i64 %392, 63
  %402 = trunc i64 %401 to i8
  store i8 %402, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v28 = select i1 %399, i64 31, i64 15
  %403 = add i64 %75, %.v28
  store i64 %403, i64* %3, align 8
  br i1 %399, label %block_.L_41e737.block_.L_41e756_crit_edge, label %block_41e746

block_.L_41e737.block_.L_41e756_crit_edge:        ; preds = %block_.L_41e737
  %.pre27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  br label %block_.L_41e756

block_41e746:                                     ; preds = %block_.L_41e737
  %RAX.i300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  store i64 %392, i64* %RAX.i300, align 8
  %RDI.i298 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  store i64 %392, i64* %RDI.i298, align 8
  %404 = add i64 %403, -120758
  %405 = add i64 %403, 16
  %406 = load i64, i64* %6, align 8
  %407 = add i64 %406, -8
  %408 = inttoptr i64 %407 to i64*
  store i64 %405, i64* %408, align 8
  store i64 %407, i64* %6, align 8
  store i64 %404, i64* %3, align 8
  %409 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %2)
  %.pre18 = load i64, i64* %3, align 8
  br label %block_.L_41e756

block_.L_41e756:                                  ; preds = %block_.L_41e737.block_.L_41e756_crit_edge, %block_41e746
  %RDI.i290.pre-phi = phi i64* [ %.pre27, %block_.L_41e737.block_.L_41e756_crit_edge ], [ %RDI.i298, %block_41e746 ]
  %410 = phi i64 [ %403, %block_.L_41e737.block_.L_41e756_crit_edge ], [ %.pre18, %block_41e746 ]
  %MEMORY.3 = phi %struct.Memory* [ %2, %block_.L_41e737.block_.L_41e756_crit_edge ], [ %409, %block_41e746 ]
  %411 = load i32, i32* bitcast (%G_0xb54cec_type* @G_0xb54cec to i32*), align 8
  %412 = sext i32 %411 to i64
  store i64 %412, i64* %RAX.i407, align 8
  %413 = sext i32 %411 to i128
  %414 = and i128 %413, -18446744073709551616
  %415 = zext i64 %412 to i128
  %416 = or i128 %414, %415
  %417 = mul nsw i128 %416, 104
  %418 = trunc i128 %417 to i64
  store i64 %418, i64* %RDI.i290.pre-phi, align 8
  %419 = sext i64 %418 to i128
  %420 = icmp ne i128 %419, %417
  %421 = zext i1 %420 to i8
  store i8 %421, i8* %14, align 1
  %422 = trunc i128 %417 to i32
  %423 = and i32 %422, 248
  %424 = tail call i32 @llvm.ctpop.i32(i32 %423)
  %425 = trunc i32 %424 to i8
  %426 = and i8 %425, 1
  %427 = xor i8 %426, 1
  store i8 %427, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  %428 = lshr i64 %418, 63
  %429 = trunc i64 %428 to i8
  store i8 %429, i8* %33, align 1
  store i8 %421, i8* %39, align 1
  %430 = add i64 %410, -120390
  %431 = add i64 %410, 17
  %432 = load i64, i64* %6, align 8
  %433 = add i64 %432, -8
  %434 = inttoptr i64 %433 to i64*
  store i64 %431, i64* %434, align 8
  store i64 %433, i64* %6, align 8
  store i64 %430, i64* %3, align 8
  %435 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @malloc to i64), %struct.Memory* %MEMORY.3)
  %436 = load i64, i64* %RAX.i407, align 8
  %437 = load i64, i64* %3, align 8
  store i64 %436, i64* bitcast (%G_0xab0fe0_type* @G_0xab0fe0 to i64*), align 8
  store i8 0, i8* %14, align 1
  %438 = trunc i64 %436 to i32
  %439 = and i32 %438, 255
  %440 = tail call i32 @llvm.ctpop.i32(i32 %439)
  %441 = trunc i32 %440 to i8
  %442 = and i8 %441, 1
  %443 = xor i8 %442, 1
  store i8 %443, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %444 = icmp eq i64 %436, 0
  %445 = zext i1 %444 to i8
  store i8 %445, i8* %30, align 1
  %446 = lshr i64 %436, 63
  %447 = trunc i64 %446 to i8
  store i8 %447, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v29 = select i1 %444, i64 28, i64 23
  %448 = add i64 %437, %.v29
  store i64 %448, i64* %3, align 8
  br i1 %444, label %block_.L_41e783, label %block_41e77e

block_41e77e:                                     ; preds = %block_.L_41e756
  %449 = add i64 %448, 45
  store i64 %449, i64* %3, align 8
  br label %block_.L_41e7ab

block_.L_41e783:                                  ; preds = %block_.L_41e756
  store i64 ptrtoint (%G__0x57ad9b_type* @G__0x57ad9b to i64), i64* %RDI.i290.pre-phi, align 8
  store i64 773, i64* %RSI.i347, align 8
  %RDX.i274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  store i64 ptrtoint (%G__0x57b2be_type* @G__0x57b2be to i64), i64* %RDX.i274, align 8
  store i64 4294967295, i64* %RAX.i407, align 8
  %RCX.i270 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  store i64 4294967295, i64* %RCX.i270, align 8
  %450 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  store i64 4294967295, i64* %450, align 8
  %451 = add i64 %448, 211213
  %452 = add i64 %448, 40
  %453 = load i64, i64* %6, align 8
  %454 = add i64 %453, -8
  %455 = inttoptr i64 %454 to i64*
  store i64 %452, i64* %455, align 8
  store i64 %454, i64* %6, align 8
  store i64 %451, i64* %3, align 8
  %call2_41e7a6 = tail call %struct.Memory* @sub_452090.abortgo(%struct.State* nonnull %0, i64 %451, %struct.Memory* %435)
  %.pre19 = load i64, i64* %3, align 8
  br label %block_.L_41e7ab

block_.L_41e7ab:                                  ; preds = %block_.L_41e783, %block_41e77e
  %456 = phi i64 [ %.pre19, %block_.L_41e783 ], [ %449, %block_41e77e ]
  %MEMORY.4 = phi %struct.Memory* [ %call2_41e7a6, %block_.L_41e783 ], [ %435, %block_41e77e ]
  %457 = load i64, i64* %RBP.i, align 8
  %458 = add i64 %457, -4
  %459 = add i64 %456, 7
  store i64 %459, i64* %3, align 8
  %460 = inttoptr i64 %458 to i32*
  store i32 21, i32* %460, align 4
  %.pre20 = load i64, i64* %3, align 8
  br label %block_.L_41e7b2

block_.L_41e7b2:                                  ; preds = %block_.L_41e856, %block_.L_41e7ab
  %461 = phi i64 [ %739, %block_.L_41e856 ], [ %.pre20, %block_.L_41e7ab ]
  %462 = load i64, i64* %RBP.i, align 8
  %463 = add i64 %462, -4
  %464 = add i64 %461, 7
  store i64 %464, i64* %3, align 8
  %465 = inttoptr i64 %463 to i32*
  %466 = load i32, i32* %465, align 4
  %467 = add i32 %466, -400
  %468 = icmp ult i32 %466, 400
  %469 = zext i1 %468 to i8
  store i8 %469, i8* %14, align 1
  %470 = and i32 %467, 255
  %471 = tail call i32 @llvm.ctpop.i32(i32 %470)
  %472 = trunc i32 %471 to i8
  %473 = and i8 %472, 1
  %474 = xor i8 %473, 1
  store i8 %474, i8* %21, align 1
  %475 = xor i32 %466, 16
  %476 = xor i32 %475, %467
  %477 = lshr i32 %476, 4
  %478 = trunc i32 %477 to i8
  %479 = and i8 %478, 1
  store i8 %479, i8* %27, align 1
  %480 = icmp eq i32 %467, 0
  %481 = zext i1 %480 to i8
  store i8 %481, i8* %30, align 1
  %482 = lshr i32 %467, 31
  %483 = trunc i32 %482 to i8
  store i8 %483, i8* %33, align 1
  %484 = lshr i32 %466, 31
  %485 = xor i32 %482, %484
  %486 = add nuw nsw i32 %485, %484
  %487 = icmp eq i32 %486, 2
  %488 = zext i1 %487 to i8
  store i8 %488, i8* %39, align 1
  %489 = icmp ne i8 %483, 0
  %490 = xor i1 %489, %487
  %.v30 = select i1 %490, i64 13, i64 178
  %491 = add i64 %461, %.v30
  store i64 %491, i64* %3, align 8
  br i1 %490, label %block_41e7bf, label %block_.L_41e864

block_41e7bf:                                     ; preds = %block_.L_41e7b2
  %492 = add i64 %491, 4
  store i64 %492, i64* %3, align 8
  %493 = load i32, i32* %465, align 4
  %494 = sext i32 %493 to i64
  store i64 %494, i64* %RAX.i407, align 8
  %495 = add nsw i64 %494, 12099168
  %496 = add i64 %491, 12
  store i64 %496, i64* %3, align 8
  %497 = inttoptr i64 %495 to i8*
  %498 = load i8, i8* %497, align 1
  %499 = zext i8 %498 to i64
  store i64 %499, i64* %RCX.i405, align 8
  %500 = zext i8 %498 to i32
  %501 = add nsw i32 %500, -3
  %502 = icmp ult i8 %498, 3
  %503 = zext i1 %502 to i8
  store i8 %503, i8* %14, align 1
  %504 = and i32 %501, 255
  %505 = tail call i32 @llvm.ctpop.i32(i32 %504)
  %506 = trunc i32 %505 to i8
  %507 = and i8 %506, 1
  %508 = xor i8 %507, 1
  store i8 %508, i8* %21, align 1
  %509 = xor i32 %501, %500
  %510 = lshr i32 %509, 4
  %511 = trunc i32 %510 to i8
  %512 = and i8 %511, 1
  store i8 %512, i8* %27, align 1
  %513 = icmp eq i32 %501, 0
  %514 = zext i1 %513 to i8
  store i8 %514, i8* %30, align 1
  %515 = lshr i32 %501, 31
  %516 = trunc i32 %515 to i8
  store i8 %516, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v32 = select i1 %513, i64 21, i64 26
  %517 = add i64 %491, %.v32
  store i64 %517, i64* %3, align 8
  br i1 %513, label %block_41e7d4, label %block_.L_41e7d9

block_41e7d4:                                     ; preds = %block_41e7bf
  %518 = add i64 %517, 130
  br label %block_.L_41e856

block_.L_41e7d9:                                  ; preds = %block_41e7bf
  %519 = add i64 %517, 4
  store i64 %519, i64* %3, align 8
  %520 = load i32, i32* %465, align 4
  %521 = sext i32 %520 to i64
  store i64 %521, i64* %RAX.i407, align 8
  %522 = add nsw i64 %521, 12099168
  %523 = add i64 %517, 12
  store i64 %523, i64* %3, align 8
  %524 = inttoptr i64 %522 to i8*
  %525 = load i8, i8* %524, align 1
  %526 = zext i8 %525 to i64
  store i64 %526, i64* %RCX.i405, align 8
  %527 = zext i8 %525 to i32
  %528 = add nsw i32 %527, -1
  %529 = icmp eq i8 %525, 0
  %530 = zext i1 %529 to i8
  store i8 %530, i8* %14, align 1
  %531 = and i32 %528, 255
  %532 = tail call i32 @llvm.ctpop.i32(i32 %531)
  %533 = trunc i32 %532 to i8
  %534 = and i8 %533, 1
  %535 = xor i8 %534, 1
  store i8 %535, i8* %21, align 1
  %536 = xor i32 %528, %527
  %537 = lshr i32 %536, 4
  %538 = trunc i32 %537 to i8
  %539 = and i8 %538, 1
  store i8 %539, i8* %27, align 1
  %540 = icmp eq i32 %528, 0
  %541 = zext i1 %540 to i8
  store i8 %541, i8* %30, align 1
  %542 = lshr i32 %528, 31
  %543 = trunc i32 %542 to i8
  store i8 %543, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v33 = select i1 %540, i64 42, i64 21
  %544 = add i64 %517, %.v33
  store i64 %544, i64* %3, align 8
  br i1 %540, label %block_.L_41e803, label %block_41e7ee

block_41e7ee:                                     ; preds = %block_.L_41e7d9
  %545 = add i64 %544, 4
  store i64 %545, i64* %3, align 8
  %546 = load i32, i32* %465, align 4
  %547 = sext i32 %546 to i64
  store i64 %547, i64* %RAX.i407, align 8
  %548 = add nsw i64 %547, 12099168
  %549 = add i64 %544, 12
  store i64 %549, i64* %3, align 8
  %550 = inttoptr i64 %548 to i8*
  %551 = load i8, i8* %550, align 1
  %552 = zext i8 %551 to i64
  store i64 %552, i64* %RCX.i405, align 8
  %553 = zext i8 %551 to i32
  %554 = add nsw i32 %553, -2
  %555 = icmp ult i8 %551, 2
  %556 = zext i1 %555 to i8
  store i8 %556, i8* %14, align 1
  %557 = and i32 %554, 255
  %558 = tail call i32 @llvm.ctpop.i32(i32 %557)
  %559 = trunc i32 %558 to i8
  %560 = and i8 %559, 1
  %561 = xor i8 %560, 1
  store i8 %561, i8* %21, align 1
  %562 = xor i32 %554, %553
  %563 = lshr i32 %562, 4
  %564 = trunc i32 %563 to i8
  %565 = and i8 %564, 1
  store i8 %565, i8* %27, align 1
  %566 = icmp eq i32 %554, 0
  %567 = zext i1 %566 to i8
  store i8 %567, i8* %30, align 1
  %568 = lshr i32 %554, 31
  %569 = trunc i32 %568 to i8
  store i8 %569, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v34 = select i1 %566, i64 21, i64 99
  %570 = add i64 %544, %.v34
  store i64 %570, i64* %3, align 8
  br i1 %566, label %block_.L_41e803, label %block_.L_41e851

block_.L_41e803:                                  ; preds = %block_41e7ee, %block_.L_41e7d9
  %571 = phi i64 [ %570, %block_41e7ee ], [ %544, %block_.L_41e7d9 ]
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i407, align 8
  %572 = add i64 %571, 14
  store i64 %572, i64* %3, align 8
  %573 = load i32, i32* %465, align 4
  %574 = sext i32 %573 to i64
  %575 = mul nsw i64 %574, 76
  store i64 %575, i64* %RCX.i405, align 8
  %576 = lshr i64 %575, 63
  %577 = add i64 %575, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %577, i64* %RAX.i407, align 8
  %578 = icmp ult i64 %577, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %579 = icmp ult i64 %577, %575
  %580 = or i1 %578, %579
  %581 = zext i1 %580 to i8
  store i8 %581, i8* %14, align 1
  %582 = trunc i64 %577 to i32
  %583 = and i32 %582, 252
  %584 = tail call i32 @llvm.ctpop.i32(i32 %583)
  %585 = trunc i32 %584 to i8
  %586 = and i8 %585, 1
  %587 = xor i8 %586, 1
  store i8 %587, i8* %21, align 1
  %588 = xor i64 %575, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %589 = xor i64 %588, %577
  %590 = lshr i64 %589, 4
  %591 = trunc i64 %590 to i8
  %592 = and i8 %591, 1
  store i8 %592, i8* %27, align 1
  %593 = icmp eq i64 %577, 0
  %594 = zext i1 %593 to i8
  store i8 %594, i8* %30, align 1
  %595 = lshr i64 %577, 63
  %596 = trunc i64 %595 to i8
  store i8 %596, i8* %33, align 1
  %597 = xor i64 %595, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %598 = xor i64 %595, %576
  %599 = add nuw nsw i64 %597, %598
  %600 = icmp eq i64 %599, 2
  %601 = zext i1 %600 to i8
  store i8 %601, i8* %39, align 1
  %602 = add i64 %575, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 8)
  %603 = add i64 %571, 24
  store i64 %603, i64* %3, align 8
  %604 = inttoptr i64 %602 to i32*
  %605 = load i32, i32* %604, align 4
  %606 = zext i32 %605 to i64
  store i64 %606, i64* %RDX.i388, align 8
  %607 = add i64 %571, 27
  store i64 %607, i64* %3, align 8
  %608 = load i32, i32* %465, align 4
  %609 = sub i32 %605, %608
  %610 = icmp ult i32 %605, %608
  %611 = zext i1 %610 to i8
  store i8 %611, i8* %14, align 1
  %612 = and i32 %609, 255
  %613 = tail call i32 @llvm.ctpop.i32(i32 %612)
  %614 = trunc i32 %613 to i8
  %615 = and i8 %614, 1
  %616 = xor i8 %615, 1
  store i8 %616, i8* %21, align 1
  %617 = xor i32 %608, %605
  %618 = xor i32 %617, %609
  %619 = lshr i32 %618, 4
  %620 = trunc i32 %619 to i8
  %621 = and i8 %620, 1
  store i8 %621, i8* %27, align 1
  %622 = icmp eq i32 %609, 0
  %623 = zext i1 %622 to i8
  store i8 %623, i8* %30, align 1
  %624 = lshr i32 %609, 31
  %625 = trunc i32 %624 to i8
  store i8 %625, i8* %33, align 1
  %626 = lshr i32 %605, 31
  %627 = lshr i32 %608, 31
  %628 = xor i32 %627, %626
  %629 = xor i32 %624, %626
  %630 = add nuw nsw i32 %629, %628
  %631 = icmp eq i32 %630, 2
  %632 = zext i1 %631 to i8
  store i8 %632, i8* %39, align 1
  %.v35 = select i1 %622, i64 33, i64 78
  %633 = add i64 %571, %.v35
  store i64 %633, i64* %3, align 8
  br i1 %622, label %block_41e824, label %block_.L_41e851

block_41e824:                                     ; preds = %block_.L_41e803
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i407, align 8
  %634 = load i64, i64* %RBP.i, align 8
  %635 = add i64 %634, -4
  %636 = add i64 %633, 13
  store i64 %636, i64* %3, align 8
  %637 = inttoptr i64 %635 to i32*
  %638 = load i32, i32* %637, align 4
  %639 = zext i32 %638 to i64
  store i64 %639, i64* %RCX.i405, align 8
  %640 = load i64, i64* bitcast (%G_0xab0fe0_type* @G_0xab0fe0 to i64*), align 8
  store i64 %640, i64* %RDX.i388, align 8
  %641 = add i64 %633, 25
  store i64 %641, i64* %3, align 8
  %642 = load i32, i32* %637, align 4
  %643 = sext i32 %642 to i64
  %644 = mul nsw i64 %643, 76
  store i64 %644, i64* %RSI.i347, align 8
  %645 = lshr i64 %644, 63
  %646 = add i64 %644, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %646, i64* %RAX.i407, align 8
  %647 = icmp ult i64 %646, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %648 = icmp ult i64 %646, %644
  %649 = or i1 %647, %648
  %650 = zext i1 %649 to i8
  store i8 %650, i8* %14, align 1
  %651 = trunc i64 %646 to i32
  %652 = and i32 %651, 252
  %653 = tail call i32 @llvm.ctpop.i32(i32 %652)
  %654 = trunc i32 %653 to i8
  %655 = and i8 %654, 1
  %656 = xor i8 %655, 1
  store i8 %656, i8* %21, align 1
  %657 = xor i64 %644, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %658 = xor i64 %657, %646
  %659 = lshr i64 %658, 4
  %660 = trunc i64 %659 to i8
  %661 = and i8 %660, 1
  store i8 %661, i8* %27, align 1
  %662 = icmp eq i64 %646, 0
  %663 = zext i1 %662 to i8
  store i8 %663, i8* %30, align 1
  %664 = lshr i64 %646, 63
  %665 = trunc i64 %664 to i8
  store i8 %665, i8* %33, align 1
  %666 = xor i64 %664, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %667 = xor i64 %664, %645
  %668 = add nuw nsw i64 %666, %667
  %669 = icmp eq i64 %668, 2
  %670 = zext i1 %669 to i8
  store i8 %670, i8* %39, align 1
  %671 = add i64 %644, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 4)
  %672 = add i64 %633, 36
  store i64 %672, i64* %3, align 8
  %673 = inttoptr i64 %671 to i32*
  %674 = load i32, i32* %673, align 4
  %675 = sext i32 %674 to i64
  %676 = mul nsw i64 %675, 104
  store i64 %676, i64* %RAX.i407, align 8
  %677 = lshr i64 %676, 63
  %678 = add i64 %676, %640
  store i64 %678, i64* %RDX.i388, align 8
  %679 = icmp ult i64 %678, %640
  %680 = icmp ult i64 %678, %676
  %681 = or i1 %679, %680
  %682 = zext i1 %681 to i8
  store i8 %682, i8* %14, align 1
  %683 = trunc i64 %678 to i32
  %684 = and i32 %683, 255
  %685 = tail call i32 @llvm.ctpop.i32(i32 %684)
  %686 = trunc i32 %685 to i8
  %687 = and i8 %686, 1
  %688 = xor i8 %687, 1
  store i8 %688, i8* %21, align 1
  %689 = xor i64 %676, %640
  %690 = xor i64 %689, %678
  %691 = lshr i64 %690, 4
  %692 = trunc i64 %691 to i8
  %693 = and i8 %692, 1
  store i8 %693, i8* %27, align 1
  %694 = icmp eq i64 %678, 0
  %695 = zext i1 %694 to i8
  store i8 %695, i8* %30, align 1
  %696 = lshr i64 %678, 63
  %697 = trunc i64 %696 to i8
  store i8 %697, i8* %33, align 1
  %698 = lshr i64 %640, 63
  %699 = xor i64 %696, %698
  %700 = xor i64 %696, %677
  %701 = add nuw nsw i64 %699, %700
  %702 = icmp eq i64 %701, 2
  %703 = zext i1 %702 to i8
  store i8 %703, i8* %39, align 1
  %704 = inttoptr i64 %678 to i32*
  %705 = load i32, i32* %ECX.i402, align 4
  %706 = add i64 %633, 45
  store i64 %706, i64* %3, align 8
  store i32 %705, i32* %704, align 4
  %.pre22 = load i64, i64* %3, align 8
  br label %block_.L_41e851

block_.L_41e851:                                  ; preds = %block_.L_41e803, %block_41e7ee, %block_41e824
  %707 = phi i64 [ %.pre22, %block_41e824 ], [ %633, %block_.L_41e803 ], [ %570, %block_41e7ee ]
  %708 = add i64 %707, 5
  store i64 %708, i64* %3, align 8
  %.pre23 = load i64, i64* %RBP.i, align 8
  br label %block_.L_41e856

block_.L_41e856:                                  ; preds = %block_.L_41e851, %block_41e7d4
  %709 = phi i64 [ %462, %block_41e7d4 ], [ %.pre23, %block_.L_41e851 ]
  %storemerge = phi i64 [ %518, %block_41e7d4 ], [ %708, %block_.L_41e851 ]
  %710 = add i64 %709, -4
  %711 = add i64 %storemerge, 3
  store i64 %711, i64* %3, align 8
  %712 = inttoptr i64 %710 to i32*
  %713 = load i32, i32* %712, align 4
  %714 = add i32 %713, 1
  %715 = zext i32 %714 to i64
  store i64 %715, i64* %RAX.i407, align 8
  %716 = icmp eq i32 %713, -1
  %717 = icmp eq i32 %714, 0
  %718 = or i1 %716, %717
  %719 = zext i1 %718 to i8
  store i8 %719, i8* %14, align 1
  %720 = and i32 %714, 255
  %721 = tail call i32 @llvm.ctpop.i32(i32 %720)
  %722 = trunc i32 %721 to i8
  %723 = and i8 %722, 1
  %724 = xor i8 %723, 1
  store i8 %724, i8* %21, align 1
  %725 = xor i32 %714, %713
  %726 = lshr i32 %725, 4
  %727 = trunc i32 %726 to i8
  %728 = and i8 %727, 1
  store i8 %728, i8* %27, align 1
  %729 = zext i1 %717 to i8
  store i8 %729, i8* %30, align 1
  %730 = lshr i32 %714, 31
  %731 = trunc i32 %730 to i8
  store i8 %731, i8* %33, align 1
  %732 = lshr i32 %713, 31
  %733 = xor i32 %730, %732
  %734 = add nuw nsw i32 %733, %730
  %735 = icmp eq i32 %734, 2
  %736 = zext i1 %735 to i8
  store i8 %736, i8* %39, align 1
  %737 = add i64 %storemerge, 9
  store i64 %737, i64* %3, align 8
  store i32 %714, i32* %712, align 4
  %738 = load i64, i64* %3, align 8
  %739 = add i64 %738, -173
  store i64 %739, i64* %3, align 8
  br label %block_.L_41e7b2

block_.L_41e864:                                  ; preds = %block_.L_41e7b2
  %740 = add i64 %462, -8
  %741 = add i64 %491, 7
  store i64 %741, i64* %3, align 8
  %742 = inttoptr i64 %740 to i32*
  store i32 0, i32* %742, align 4
  %743 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %RCX.i167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX.i164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %744 = bitcast %union.VectorReg* %743 to <2 x float>*
  %745 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %.pre21 = load i64, i64* %3, align 8
  %746 = bitcast %union.VectorReg* %743 to <4 x i32>*
  br label %block_.L_41e86b

block_.L_41e86b:                                  ; preds = %block_41e87b, %block_.L_41e864
  %747 = phi i64 [ %1279, %block_41e87b ], [ %.pre21, %block_.L_41e864 ]
  %748 = load i64, i64* %RBP.i, align 8
  %749 = add i64 %748, -8
  %750 = add i64 %747, 3
  store i64 %750, i64* %3, align 8
  %751 = inttoptr i64 %749 to i32*
  %752 = load i32, i32* %751, align 4
  %753 = zext i32 %752 to i64
  store i64 %753, i64* %RAX.i407, align 8
  %754 = load i32, i32* bitcast (%G_0xb54cec_type* @G_0xb54cec to i32*), align 8
  %755 = sub i32 %752, %754
  %756 = icmp ult i32 %752, %754
  %757 = zext i1 %756 to i8
  store i8 %757, i8* %14, align 1
  %758 = and i32 %755, 255
  %759 = tail call i32 @llvm.ctpop.i32(i32 %758)
  %760 = trunc i32 %759 to i8
  %761 = and i8 %760, 1
  %762 = xor i8 %761, 1
  store i8 %762, i8* %21, align 1
  %763 = xor i32 %754, %752
  %764 = xor i32 %763, %755
  %765 = lshr i32 %764, 4
  %766 = trunc i32 %765 to i8
  %767 = and i8 %766, 1
  store i8 %767, i8* %27, align 1
  %768 = icmp eq i32 %755, 0
  %769 = zext i1 %768 to i8
  store i8 %769, i8* %30, align 1
  %770 = lshr i32 %755, 31
  %771 = trunc i32 %770 to i8
  store i8 %771, i8* %33, align 1
  %772 = lshr i32 %752, 31
  %773 = lshr i32 %754, 31
  %774 = xor i32 %773, %772
  %775 = xor i32 %770, %772
  %776 = add nuw nsw i32 %775, %774
  %777 = icmp eq i32 %776, 2
  %778 = zext i1 %777 to i8
  store i8 %778, i8* %39, align 1
  %779 = icmp ne i8 %771, 0
  %780 = xor i1 %779, %777
  %.v31 = select i1 %780, i64 16, i64 359
  %781 = add i64 %747, %.v31
  store i64 %781, i64* %3, align 8
  br i1 %780, label %block_41e87b, label %block_.L_41e9d2

block_41e87b:                                     ; preds = %block_.L_41e86b
  store i64 0, i64* %RAX.i407, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  store <4 x i32> zeroinitializer, <4 x i32>* %746, align 1
  %782 = load i64, i64* bitcast (%G_0xab0fe0_type* @G_0xab0fe0 to i64*), align 8
  store i64 %782, i64* %RCX.i167, align 8
  %783 = add i64 %781, 17
  store i64 %783, i64* %3, align 8
  %784 = load i32, i32* %751, align 4
  %785 = sext i32 %784 to i64
  %786 = mul nsw i64 %785, 104
  store i64 %786, i64* %RDX.i164, align 8
  %787 = lshr i64 %786, 63
  %788 = add i64 %786, %782
  %789 = icmp ult i64 %788, %782
  %790 = icmp ult i64 %788, %786
  %791 = or i1 %789, %790
  %792 = zext i1 %791 to i8
  store i8 %792, i8* %14, align 1
  %793 = trunc i64 %788 to i32
  %794 = and i32 %793, 255
  %795 = tail call i32 @llvm.ctpop.i32(i32 %794)
  %796 = trunc i32 %795 to i8
  %797 = and i8 %796, 1
  %798 = xor i8 %797, 1
  store i8 %798, i8* %21, align 1
  %799 = xor i64 %786, %782
  %800 = xor i64 %799, %788
  %801 = lshr i64 %800, 4
  %802 = trunc i64 %801 to i8
  %803 = and i8 %802, 1
  store i8 %803, i8* %27, align 1
  %804 = icmp eq i64 %788, 0
  %805 = zext i1 %804 to i8
  store i8 %805, i8* %30, align 1
  %806 = lshr i64 %788, 63
  %807 = trunc i64 %806 to i8
  store i8 %807, i8* %33, align 1
  %808 = lshr i64 %782, 63
  %809 = xor i64 %806, %808
  %810 = xor i64 %806, %787
  %811 = add nuw nsw i64 %809, %810
  %812 = icmp eq i64 %811, 2
  %813 = zext i1 %812 to i8
  store i8 %813, i8* %39, align 1
  %814 = add i64 %788, 44
  %815 = add i64 %781, 31
  store i64 %815, i64* %3, align 8
  %816 = inttoptr i64 %814 to i32*
  store i32 0, i32* %816, align 4
  %817 = load i64, i64* %3, align 8
  %818 = load i64, i64* bitcast (%G_0xab0fe0_type* @G_0xab0fe0 to i64*), align 8
  store i64 %818, i64* %RCX.i167, align 8
  %819 = load i64, i64* %RBP.i, align 8
  %820 = add i64 %819, -8
  %821 = add i64 %817, 12
  store i64 %821, i64* %3, align 8
  %822 = inttoptr i64 %820 to i32*
  %823 = load i32, i32* %822, align 4
  %824 = sext i32 %823 to i64
  %825 = mul nsw i64 %824, 104
  store i64 %825, i64* %RDX.i164, align 8
  %826 = lshr i64 %825, 63
  %827 = add i64 %825, %818
  %828 = icmp ult i64 %827, %818
  %829 = icmp ult i64 %827, %825
  %830 = or i1 %828, %829
  %831 = zext i1 %830 to i8
  store i8 %831, i8* %14, align 1
  %832 = trunc i64 %827 to i32
  %833 = and i32 %832, 255
  %834 = tail call i32 @llvm.ctpop.i32(i32 %833)
  %835 = trunc i32 %834 to i8
  %836 = and i8 %835, 1
  %837 = xor i8 %836, 1
  store i8 %837, i8* %21, align 1
  %838 = xor i64 %825, %818
  %839 = xor i64 %838, %827
  %840 = lshr i64 %839, 4
  %841 = trunc i64 %840 to i8
  %842 = and i8 %841, 1
  store i8 %842, i8* %27, align 1
  %843 = icmp eq i64 %827, 0
  %844 = zext i1 %843 to i8
  store i8 %844, i8* %30, align 1
  %845 = lshr i64 %827, 63
  %846 = trunc i64 %845 to i8
  store i8 %846, i8* %33, align 1
  %847 = lshr i64 %818, 63
  %848 = xor i64 %845, %847
  %849 = xor i64 %845, %826
  %850 = add nuw nsw i64 %848, %849
  %851 = icmp eq i64 %850, 2
  %852 = zext i1 %851 to i8
  store i8 %852, i8* %39, align 1
  %853 = add i64 %827, 48
  %854 = add i64 %817, 26
  store i64 %854, i64* %3, align 8
  %855 = inttoptr i64 %853 to i32*
  store i32 0, i32* %855, align 4
  %856 = load i64, i64* %3, align 8
  %857 = load i64, i64* bitcast (%G_0xab0fe0_type* @G_0xab0fe0 to i64*), align 8
  store i64 %857, i64* %RCX.i167, align 8
  %858 = load i64, i64* %RBP.i, align 8
  %859 = add i64 %858, -8
  %860 = add i64 %856, 12
  store i64 %860, i64* %3, align 8
  %861 = inttoptr i64 %859 to i32*
  %862 = load i32, i32* %861, align 4
  %863 = sext i32 %862 to i64
  %864 = mul nsw i64 %863, 104
  store i64 %864, i64* %RDX.i164, align 8
  %865 = lshr i64 %864, 63
  %866 = add i64 %864, %857
  %867 = icmp ult i64 %866, %857
  %868 = icmp ult i64 %866, %864
  %869 = or i1 %867, %868
  %870 = zext i1 %869 to i8
  store i8 %870, i8* %14, align 1
  %871 = trunc i64 %866 to i32
  %872 = and i32 %871, 255
  %873 = tail call i32 @llvm.ctpop.i32(i32 %872)
  %874 = trunc i32 %873 to i8
  %875 = and i8 %874, 1
  %876 = xor i8 %875, 1
  store i8 %876, i8* %21, align 1
  %877 = xor i64 %864, %857
  %878 = xor i64 %877, %866
  %879 = lshr i64 %878, 4
  %880 = trunc i64 %879 to i8
  %881 = and i8 %880, 1
  store i8 %881, i8* %27, align 1
  %882 = icmp eq i64 %866, 0
  %883 = zext i1 %882 to i8
  store i8 %883, i8* %30, align 1
  %884 = lshr i64 %866, 63
  %885 = trunc i64 %884 to i8
  store i8 %885, i8* %33, align 1
  %886 = lshr i64 %857, 63
  %887 = xor i64 %884, %886
  %888 = xor i64 %884, %865
  %889 = add nuw nsw i64 %887, %888
  %890 = icmp eq i64 %889, 2
  %891 = zext i1 %890 to i8
  store i8 %891, i8* %39, align 1
  %892 = add i64 %866, 52
  %893 = add i64 %856, 26
  store i64 %893, i64* %3, align 8
  %894 = inttoptr i64 %892 to i32*
  store i32 -1, i32* %894, align 4
  %895 = load i64, i64* %3, align 8
  %896 = load i64, i64* bitcast (%G_0xab0fe0_type* @G_0xab0fe0 to i64*), align 8
  store i64 %896, i64* %RCX.i167, align 8
  %897 = load i64, i64* %RBP.i, align 8
  %898 = add i64 %897, -8
  %899 = add i64 %895, 12
  store i64 %899, i64* %3, align 8
  %900 = inttoptr i64 %898 to i32*
  %901 = load i32, i32* %900, align 4
  %902 = sext i32 %901 to i64
  %903 = mul nsw i64 %902, 104
  store i64 %903, i64* %RDX.i164, align 8
  %904 = lshr i64 %903, 63
  %905 = add i64 %903, %896
  %906 = icmp ult i64 %905, %896
  %907 = icmp ult i64 %905, %903
  %908 = or i1 %906, %907
  %909 = zext i1 %908 to i8
  store i8 %909, i8* %14, align 1
  %910 = trunc i64 %905 to i32
  %911 = and i32 %910, 255
  %912 = tail call i32 @llvm.ctpop.i32(i32 %911)
  %913 = trunc i32 %912 to i8
  %914 = and i8 %913, 1
  %915 = xor i8 %914, 1
  store i8 %915, i8* %21, align 1
  %916 = xor i64 %903, %896
  %917 = xor i64 %916, %905
  %918 = lshr i64 %917, 4
  %919 = trunc i64 %918 to i8
  %920 = and i8 %919, 1
  store i8 %920, i8* %27, align 1
  %921 = icmp eq i64 %905, 0
  %922 = zext i1 %921 to i8
  store i8 %922, i8* %30, align 1
  %923 = lshr i64 %905, 63
  %924 = trunc i64 %923 to i8
  store i8 %924, i8* %33, align 1
  %925 = lshr i64 %896, 63
  %926 = xor i64 %923, %925
  %927 = xor i64 %923, %904
  %928 = add nuw nsw i64 %926, %927
  %929 = icmp eq i64 %928, 2
  %930 = zext i1 %929 to i8
  store i8 %930, i8* %39, align 1
  %931 = add i64 %905, 56
  %932 = add i64 %895, 24
  store i64 %932, i64* %3, align 8
  %933 = load <2 x float>, <2 x float>* %744, align 1
  %934 = extractelement <2 x float> %933, i32 0
  %935 = inttoptr i64 %931 to float*
  store float %934, float* %935, align 4
  %936 = load i64, i64* %3, align 8
  %937 = load i64, i64* bitcast (%G_0xab0fe0_type* @G_0xab0fe0 to i64*), align 8
  store i64 %937, i64* %RCX.i167, align 8
  %938 = load i64, i64* %RBP.i, align 8
  %939 = add i64 %938, -8
  %940 = add i64 %936, 12
  store i64 %940, i64* %3, align 8
  %941 = inttoptr i64 %939 to i32*
  %942 = load i32, i32* %941, align 4
  %943 = sext i32 %942 to i64
  %944 = mul nsw i64 %943, 104
  store i64 %944, i64* %RDX.i164, align 8
  %945 = lshr i64 %944, 63
  %946 = add i64 %944, %937
  %947 = icmp ult i64 %946, %937
  %948 = icmp ult i64 %946, %944
  %949 = or i1 %947, %948
  %950 = zext i1 %949 to i8
  store i8 %950, i8* %14, align 1
  %951 = trunc i64 %946 to i32
  %952 = and i32 %951, 255
  %953 = tail call i32 @llvm.ctpop.i32(i32 %952)
  %954 = trunc i32 %953 to i8
  %955 = and i8 %954, 1
  %956 = xor i8 %955, 1
  store i8 %956, i8* %21, align 1
  %957 = xor i64 %944, %937
  %958 = xor i64 %957, %946
  %959 = lshr i64 %958, 4
  %960 = trunc i64 %959 to i8
  %961 = and i8 %960, 1
  store i8 %961, i8* %27, align 1
  %962 = icmp eq i64 %946, 0
  %963 = zext i1 %962 to i8
  store i8 %963, i8* %30, align 1
  %964 = lshr i64 %946, 63
  %965 = trunc i64 %964 to i8
  store i8 %965, i8* %33, align 1
  %966 = lshr i64 %937, 63
  %967 = xor i64 %964, %966
  %968 = xor i64 %964, %945
  %969 = add nuw nsw i64 %967, %968
  %970 = icmp eq i64 %969, 2
  %971 = zext i1 %970 to i8
  store i8 %971, i8* %39, align 1
  %972 = add i64 %946, 60
  %973 = add i64 %936, 26
  store i64 %973, i64* %3, align 8
  %974 = inttoptr i64 %972 to i32*
  store i32 -1, i32* %974, align 4
  %975 = load i64, i64* %3, align 8
  %976 = load i64, i64* bitcast (%G_0xab0fe0_type* @G_0xab0fe0 to i64*), align 8
  store i64 %976, i64* %RCX.i167, align 8
  %977 = load i64, i64* %RBP.i, align 8
  %978 = add i64 %977, -8
  %979 = add i64 %975, 12
  store i64 %979, i64* %3, align 8
  %980 = inttoptr i64 %978 to i32*
  %981 = load i32, i32* %980, align 4
  %982 = sext i32 %981 to i64
  %983 = mul nsw i64 %982, 104
  store i64 %983, i64* %RDX.i164, align 8
  %984 = lshr i64 %983, 63
  %985 = add i64 %983, %976
  %986 = icmp ult i64 %985, %976
  %987 = icmp ult i64 %985, %983
  %988 = or i1 %986, %987
  %989 = zext i1 %988 to i8
  store i8 %989, i8* %14, align 1
  %990 = trunc i64 %985 to i32
  %991 = and i32 %990, 255
  %992 = tail call i32 @llvm.ctpop.i32(i32 %991)
  %993 = trunc i32 %992 to i8
  %994 = and i8 %993, 1
  %995 = xor i8 %994, 1
  store i8 %995, i8* %21, align 1
  %996 = xor i64 %983, %976
  %997 = xor i64 %996, %985
  %998 = lshr i64 %997, 4
  %999 = trunc i64 %998 to i8
  %1000 = and i8 %999, 1
  store i8 %1000, i8* %27, align 1
  %1001 = icmp eq i64 %985, 0
  %1002 = zext i1 %1001 to i8
  store i8 %1002, i8* %30, align 1
  %1003 = lshr i64 %985, 63
  %1004 = trunc i64 %1003 to i8
  store i8 %1004, i8* %33, align 1
  %1005 = lshr i64 %976, 63
  %1006 = xor i64 %1003, %1005
  %1007 = xor i64 %1003, %984
  %1008 = add nuw nsw i64 %1006, %1007
  %1009 = icmp eq i64 %1008, 2
  %1010 = zext i1 %1009 to i8
  store i8 %1010, i8* %39, align 1
  %1011 = add i64 %985, 72
  %1012 = add i64 %975, 26
  store i64 %1012, i64* %3, align 8
  %1013 = inttoptr i64 %1011 to i32*
  store i32 0, i32* %1013, align 4
  %1014 = load i64, i64* %3, align 8
  %1015 = load i64, i64* bitcast (%G_0xab0fe0_type* @G_0xab0fe0 to i64*), align 8
  store i64 %1015, i64* %RCX.i167, align 8
  %1016 = load i64, i64* %RBP.i, align 8
  %1017 = add i64 %1016, -8
  %1018 = add i64 %1014, 12
  store i64 %1018, i64* %3, align 8
  %1019 = inttoptr i64 %1017 to i32*
  %1020 = load i32, i32* %1019, align 4
  %1021 = sext i32 %1020 to i64
  %1022 = mul nsw i64 %1021, 104
  store i64 %1022, i64* %RDX.i164, align 8
  %1023 = lshr i64 %1022, 63
  %1024 = add i64 %1022, %1015
  %1025 = icmp ult i64 %1024, %1015
  %1026 = icmp ult i64 %1024, %1022
  %1027 = or i1 %1025, %1026
  %1028 = zext i1 %1027 to i8
  store i8 %1028, i8* %14, align 1
  %1029 = trunc i64 %1024 to i32
  %1030 = and i32 %1029, 255
  %1031 = tail call i32 @llvm.ctpop.i32(i32 %1030)
  %1032 = trunc i32 %1031 to i8
  %1033 = and i8 %1032, 1
  %1034 = xor i8 %1033, 1
  store i8 %1034, i8* %21, align 1
  %1035 = xor i64 %1022, %1015
  %1036 = xor i64 %1035, %1024
  %1037 = lshr i64 %1036, 4
  %1038 = trunc i64 %1037 to i8
  %1039 = and i8 %1038, 1
  store i8 %1039, i8* %27, align 1
  %1040 = icmp eq i64 %1024, 0
  %1041 = zext i1 %1040 to i8
  store i8 %1041, i8* %30, align 1
  %1042 = lshr i64 %1024, 63
  %1043 = trunc i64 %1042 to i8
  store i8 %1043, i8* %33, align 1
  %1044 = lshr i64 %1015, 63
  %1045 = xor i64 %1042, %1044
  %1046 = xor i64 %1042, %1023
  %1047 = add nuw nsw i64 %1045, %1046
  %1048 = icmp eq i64 %1047, 2
  %1049 = zext i1 %1048 to i8
  store i8 %1049, i8* %39, align 1
  %1050 = add i64 %1024, 80
  %1051 = add i64 %1014, 26
  store i64 %1051, i64* %3, align 8
  %1052 = inttoptr i64 %1050 to i32*
  store i32 0, i32* %1052, align 4
  %1053 = load i64, i64* %3, align 8
  %1054 = load i64, i64* bitcast (%G_0xab0fe0_type* @G_0xab0fe0 to i64*), align 8
  store i64 %1054, i64* %RCX.i167, align 8
  %1055 = load i64, i64* %RBP.i, align 8
  %1056 = add i64 %1055, -8
  %1057 = add i64 %1053, 12
  store i64 %1057, i64* %3, align 8
  %1058 = inttoptr i64 %1056 to i32*
  %1059 = load i32, i32* %1058, align 4
  %1060 = sext i32 %1059 to i64
  %1061 = mul nsw i64 %1060, 104
  store i64 %1061, i64* %RDX.i164, align 8
  %1062 = lshr i64 %1061, 63
  %1063 = add i64 %1061, %1054
  %1064 = icmp ult i64 %1063, %1054
  %1065 = icmp ult i64 %1063, %1061
  %1066 = or i1 %1064, %1065
  %1067 = zext i1 %1066 to i8
  store i8 %1067, i8* %14, align 1
  %1068 = trunc i64 %1063 to i32
  %1069 = and i32 %1068, 255
  %1070 = tail call i32 @llvm.ctpop.i32(i32 %1069)
  %1071 = trunc i32 %1070 to i8
  %1072 = and i8 %1071, 1
  %1073 = xor i8 %1072, 1
  store i8 %1073, i8* %21, align 1
  %1074 = xor i64 %1061, %1054
  %1075 = xor i64 %1074, %1063
  %1076 = lshr i64 %1075, 4
  %1077 = trunc i64 %1076 to i8
  %1078 = and i8 %1077, 1
  store i8 %1078, i8* %27, align 1
  %1079 = icmp eq i64 %1063, 0
  %1080 = zext i1 %1079 to i8
  store i8 %1080, i8* %30, align 1
  %1081 = lshr i64 %1063, 63
  %1082 = trunc i64 %1081 to i8
  store i8 %1082, i8* %33, align 1
  %1083 = lshr i64 %1054, 63
  %1084 = xor i64 %1081, %1083
  %1085 = xor i64 %1081, %1062
  %1086 = add nuw nsw i64 %1084, %1085
  %1087 = icmp eq i64 %1086, 2
  %1088 = zext i1 %1087 to i8
  store i8 %1088, i8* %39, align 1
  %1089 = add i64 %1063, 84
  %1090 = add i64 %1053, 26
  store i64 %1090, i64* %3, align 8
  %1091 = inttoptr i64 %1089 to i32*
  store i32 0, i32* %1091, align 4
  %1092 = load i64, i64* %3, align 8
  %1093 = load i64, i64* bitcast (%G_0xab0fe0_type* @G_0xab0fe0 to i64*), align 8
  store i64 %1093, i64* %RCX.i167, align 8
  %1094 = load i64, i64* %RBP.i, align 8
  %1095 = add i64 %1094, -8
  %1096 = add i64 %1092, 12
  store i64 %1096, i64* %3, align 8
  %1097 = inttoptr i64 %1095 to i32*
  %1098 = load i32, i32* %1097, align 4
  %1099 = sext i32 %1098 to i64
  %1100 = mul nsw i64 %1099, 104
  store i64 %1100, i64* %RDX.i164, align 8
  %1101 = lshr i64 %1100, 63
  %1102 = add i64 %1100, %1093
  %1103 = icmp ult i64 %1102, %1093
  %1104 = icmp ult i64 %1102, %1100
  %1105 = or i1 %1103, %1104
  %1106 = zext i1 %1105 to i8
  store i8 %1106, i8* %14, align 1
  %1107 = trunc i64 %1102 to i32
  %1108 = and i32 %1107, 255
  %1109 = tail call i32 @llvm.ctpop.i32(i32 %1108)
  %1110 = trunc i32 %1109 to i8
  %1111 = and i8 %1110, 1
  %1112 = xor i8 %1111, 1
  store i8 %1112, i8* %21, align 1
  %1113 = xor i64 %1100, %1093
  %1114 = xor i64 %1113, %1102
  %1115 = lshr i64 %1114, 4
  %1116 = trunc i64 %1115 to i8
  %1117 = and i8 %1116, 1
  store i8 %1117, i8* %27, align 1
  %1118 = icmp eq i64 %1102, 0
  %1119 = zext i1 %1118 to i8
  store i8 %1119, i8* %30, align 1
  %1120 = lshr i64 %1102, 63
  %1121 = trunc i64 %1120 to i8
  store i8 %1121, i8* %33, align 1
  %1122 = lshr i64 %1093, 63
  %1123 = xor i64 %1120, %1122
  %1124 = xor i64 %1120, %1101
  %1125 = add nuw nsw i64 %1123, %1124
  %1126 = icmp eq i64 %1125, 2
  %1127 = zext i1 %1126 to i8
  store i8 %1127, i8* %39, align 1
  %1128 = add i64 %1102, 88
  %1129 = add i64 %1092, 26
  store i64 %1129, i64* %3, align 8
  %1130 = inttoptr i64 %1128 to i32*
  store i32 0, i32* %1130, align 4
  %1131 = load i64, i64* %3, align 8
  %1132 = load i64, i64* bitcast (%G_0xab0fe0_type* @G_0xab0fe0 to i64*), align 8
  store i64 %1132, i64* %RCX.i167, align 8
  %1133 = load i64, i64* %RBP.i, align 8
  %1134 = add i64 %1133, -8
  %1135 = add i64 %1131, 12
  store i64 %1135, i64* %3, align 8
  %1136 = inttoptr i64 %1134 to i32*
  %1137 = load i32, i32* %1136, align 4
  %1138 = sext i32 %1137 to i64
  %1139 = mul nsw i64 %1138, 104
  store i64 %1139, i64* %RDX.i164, align 8
  %1140 = lshr i64 %1139, 63
  %1141 = add i64 %1139, %1132
  %1142 = icmp ult i64 %1141, %1132
  %1143 = icmp ult i64 %1141, %1139
  %1144 = or i1 %1142, %1143
  %1145 = zext i1 %1144 to i8
  store i8 %1145, i8* %14, align 1
  %1146 = trunc i64 %1141 to i32
  %1147 = and i32 %1146, 255
  %1148 = tail call i32 @llvm.ctpop.i32(i32 %1147)
  %1149 = trunc i32 %1148 to i8
  %1150 = and i8 %1149, 1
  %1151 = xor i8 %1150, 1
  store i8 %1151, i8* %21, align 1
  %1152 = xor i64 %1139, %1132
  %1153 = xor i64 %1152, %1141
  %1154 = lshr i64 %1153, 4
  %1155 = trunc i64 %1154 to i8
  %1156 = and i8 %1155, 1
  store i8 %1156, i8* %27, align 1
  %1157 = icmp eq i64 %1141, 0
  %1158 = zext i1 %1157 to i8
  store i8 %1158, i8* %30, align 1
  %1159 = lshr i64 %1141, 63
  %1160 = trunc i64 %1159 to i8
  store i8 %1160, i8* %33, align 1
  %1161 = lshr i64 %1132, 63
  %1162 = xor i64 %1159, %1161
  %1163 = xor i64 %1159, %1140
  %1164 = add nuw nsw i64 %1162, %1163
  %1165 = icmp eq i64 %1164, 2
  %1166 = zext i1 %1165 to i8
  store i8 %1166, i8* %39, align 1
  %1167 = add i64 %1141, 92
  %1168 = add i64 %1131, 26
  store i64 %1168, i64* %3, align 8
  %1169 = inttoptr i64 %1167 to i32*
  store i32 -1, i32* %1169, align 4
  %1170 = load i64, i64* %3, align 8
  %1171 = load i64, i64* bitcast (%G_0xab0fe0_type* @G_0xab0fe0 to i64*), align 8
  store i64 %1171, i64* %RCX.i167, align 8
  %1172 = load i64, i64* %RBP.i, align 8
  %1173 = add i64 %1172, -8
  %1174 = add i64 %1170, 12
  store i64 %1174, i64* %3, align 8
  %1175 = inttoptr i64 %1173 to i32*
  %1176 = load i32, i32* %1175, align 4
  %1177 = sext i32 %1176 to i64
  %1178 = mul nsw i64 %1177, 104
  store i64 %1178, i64* %RDX.i164, align 8
  %1179 = lshr i64 %1178, 63
  %1180 = add i64 %1178, %1171
  %1181 = icmp ult i64 %1180, %1171
  %1182 = icmp ult i64 %1180, %1178
  %1183 = or i1 %1181, %1182
  %1184 = zext i1 %1183 to i8
  store i8 %1184, i8* %14, align 1
  %1185 = trunc i64 %1180 to i32
  %1186 = and i32 %1185, 255
  %1187 = tail call i32 @llvm.ctpop.i32(i32 %1186)
  %1188 = trunc i32 %1187 to i8
  %1189 = and i8 %1188, 1
  %1190 = xor i8 %1189, 1
  store i8 %1190, i8* %21, align 1
  %1191 = xor i64 %1178, %1171
  %1192 = xor i64 %1191, %1180
  %1193 = lshr i64 %1192, 4
  %1194 = trunc i64 %1193 to i8
  %1195 = and i8 %1194, 1
  store i8 %1195, i8* %27, align 1
  %1196 = icmp eq i64 %1180, 0
  %1197 = zext i1 %1196 to i8
  store i8 %1197, i8* %30, align 1
  %1198 = lshr i64 %1180, 63
  %1199 = trunc i64 %1198 to i8
  store i8 %1199, i8* %33, align 1
  %1200 = lshr i64 %1171, 63
  %1201 = xor i64 %1198, %1200
  %1202 = xor i64 %1198, %1179
  %1203 = add nuw nsw i64 %1201, %1202
  %1204 = icmp eq i64 %1203, 2
  %1205 = zext i1 %1204 to i8
  store i8 %1205, i8* %39, align 1
  %1206 = add i64 %1180, 96
  %1207 = add i64 %1170, 26
  store i64 %1207, i64* %3, align 8
  %1208 = inttoptr i64 %1206 to i32*
  store i32 0, i32* %1208, align 4
  %1209 = load i64, i64* %3, align 8
  %1210 = load i64, i64* bitcast (%G_0xab0fe0_type* @G_0xab0fe0 to i64*), align 8
  store i64 %1210, i64* %RCX.i167, align 8
  %1211 = load i64, i64* %RBP.i, align 8
  %1212 = add i64 %1211, -8
  %1213 = add i64 %1209, 12
  store i64 %1213, i64* %3, align 8
  %1214 = inttoptr i64 %1212 to i32*
  %1215 = load i32, i32* %1214, align 4
  %1216 = sext i32 %1215 to i64
  %1217 = mul nsw i64 %1216, 104
  %1218 = add i64 %1217, %1210
  %1219 = lshr i64 %1218, 63
  %1220 = add i64 %1218, 76
  %1221 = icmp ugt i64 %1218, -77
  %1222 = zext i1 %1221 to i8
  store i8 %1222, i8* %14, align 1
  %1223 = trunc i64 %1220 to i32
  %1224 = and i32 %1223, 255
  %1225 = tail call i32 @llvm.ctpop.i32(i32 %1224)
  %1226 = trunc i32 %1225 to i8
  %1227 = and i8 %1226, 1
  %1228 = xor i8 %1227, 1
  store i8 %1228, i8* %21, align 1
  %1229 = xor i64 %1220, %1218
  %1230 = lshr i64 %1229, 4
  %1231 = trunc i64 %1230 to i8
  %1232 = and i8 %1231, 1
  store i8 %1232, i8* %27, align 1
  %1233 = icmp eq i64 %1220, 0
  %1234 = zext i1 %1233 to i8
  store i8 %1234, i8* %30, align 1
  %1235 = lshr i64 %1220, 63
  %1236 = trunc i64 %1235 to i8
  store i8 %1236, i8* %33, align 1
  %1237 = xor i64 %1235, %1219
  %1238 = add nuw nsw i64 %1237, %1235
  %1239 = icmp eq i64 %1238, 2
  %1240 = zext i1 %1239 to i8
  store i8 %1240, i8* %39, align 1
  store i64 %1220, i64* %RDI.i290.pre-phi, align 8
  %1241 = load i32, i32* %EAX.i305, align 4
  %1242 = zext i32 %1241 to i64
  store i64 %1242, i64* %RSI.i347, align 8
  store i64 %1242, i64* %RDX.i164, align 8
  store i64 %1242, i64* %RCX.i167, align 8
  store i64 %1242, i64* %745, align 8
  %1243 = add i64 %1209, 109060
  %1244 = add i64 %1209, 40
  %1245 = load i64, i64* %6, align 8
  %1246 = add i64 %1245, -8
  %1247 = inttoptr i64 %1246 to i64*
  store i64 %1244, i64* %1247, align 8
  store i64 %1246, i64* %6, align 8
  store i64 %1243, i64* %3, align 8
  %call2_41e9bf = tail call %struct.Memory* @sub_4393a0.set_eyevalue(%struct.State* nonnull %0, i64 %1243, %struct.Memory* %MEMORY.4)
  %1248 = load i64, i64* %RBP.i, align 8
  %1249 = add i64 %1248, -8
  %1250 = load i64, i64* %3, align 8
  %1251 = add i64 %1250, 3
  store i64 %1251, i64* %3, align 8
  %1252 = inttoptr i64 %1249 to i32*
  %1253 = load i32, i32* %1252, align 4
  %1254 = add i32 %1253, 1
  %1255 = zext i32 %1254 to i64
  store i64 %1255, i64* %RAX.i407, align 8
  %1256 = icmp eq i32 %1253, -1
  %1257 = icmp eq i32 %1254, 0
  %1258 = or i1 %1256, %1257
  %1259 = zext i1 %1258 to i8
  store i8 %1259, i8* %14, align 1
  %1260 = and i32 %1254, 255
  %1261 = tail call i32 @llvm.ctpop.i32(i32 %1260)
  %1262 = trunc i32 %1261 to i8
  %1263 = and i8 %1262, 1
  %1264 = xor i8 %1263, 1
  store i8 %1264, i8* %21, align 1
  %1265 = xor i32 %1254, %1253
  %1266 = lshr i32 %1265, 4
  %1267 = trunc i32 %1266 to i8
  %1268 = and i8 %1267, 1
  store i8 %1268, i8* %27, align 1
  %1269 = zext i1 %1257 to i8
  store i8 %1269, i8* %30, align 1
  %1270 = lshr i32 %1254, 31
  %1271 = trunc i32 %1270 to i8
  store i8 %1271, i8* %33, align 1
  %1272 = lshr i32 %1253, 31
  %1273 = xor i32 %1270, %1272
  %1274 = add nuw nsw i32 %1273, %1270
  %1275 = icmp eq i32 %1274, 2
  %1276 = zext i1 %1275 to i8
  store i8 %1276, i8* %39, align 1
  %1277 = add i64 %1250, 9
  store i64 %1277, i64* %3, align 8
  store i32 %1254, i32* %1252, align 4
  %1278 = load i64, i64* %3, align 8
  %1279 = add i64 %1278, -354
  store i64 %1279, i64* %3, align 8
  br label %block_.L_41e86b

block_.L_41e9d2:                                  ; preds = %block_.L_41e86b
  store i32 1, i32* bitcast (%G_0xaaf050_type* @G_0xaaf050 to i32*), align 8
  %1280 = load i64, i64* %6, align 8
  %1281 = add i64 %1280, 16
  store i64 %1281, i64* %6, align 8
  %1282 = icmp ugt i64 %1280, -17
  %1283 = zext i1 %1282 to i8
  store i8 %1283, i8* %14, align 1
  %1284 = trunc i64 %1281 to i32
  %1285 = and i32 %1284, 255
  %1286 = tail call i32 @llvm.ctpop.i32(i32 %1285)
  %1287 = trunc i32 %1286 to i8
  %1288 = and i8 %1287, 1
  %1289 = xor i8 %1288, 1
  store i8 %1289, i8* %21, align 1
  %1290 = xor i64 %1280, 16
  %1291 = xor i64 %1290, %1281
  %1292 = lshr i64 %1291, 4
  %1293 = trunc i64 %1292 to i8
  %1294 = and i8 %1293, 1
  store i8 %1294, i8* %27, align 1
  %1295 = icmp eq i64 %1281, 0
  %1296 = zext i1 %1295 to i8
  store i8 %1296, i8* %30, align 1
  %1297 = lshr i64 %1281, 63
  %1298 = trunc i64 %1297 to i8
  store i8 %1298, i8* %33, align 1
  %1299 = lshr i64 %1280, 63
  %1300 = xor i64 %1297, %1299
  %1301 = add nuw nsw i64 %1300, %1297
  %1302 = icmp eq i64 %1301, 2
  %1303 = zext i1 %1302 to i8
  store i8 %1303, i8* %39, align 1
  %1304 = add i64 %781, 16
  store i64 %1304, i64* %3, align 8
  %1305 = add i64 %1280, 24
  %1306 = inttoptr i64 %1281 to i64*
  %1307 = load i64, i64* %1306, align 8
  store i64 %1307, i64* %RBP.i, align 8
  store i64 %1305, i64* %6, align 8
  %1308 = add i64 %781, 17
  store i64 %1308, i64* %3, align 8
  %1309 = inttoptr i64 %1305 to i64*
  %1310 = load i64, i64* %1309, align 8
  store i64 %1310, i64* %3, align 8
  %1311 = add i64 %1280, 32
  store i64 %1311, i64* %6, align 8
  ret %struct.Memory* %MEMORY.4
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
define %struct.Memory* @routine_movl__0x0__0xb54cec(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* bitcast (%G_0xb54cec_type* @G_0xb54cec to i32*), align 8
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
define %struct.Memory* @routine_jge_.L_41e737(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_41e681(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_41e729(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX, align 8
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
define %struct.Memory* @routine_imulq__0x4c___rcx___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 76
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
define %struct.Memory* @routine_movl_0x8__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 8
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
define %struct.Memory* @routine_movl__edx__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzbl_0xb89e60___rax_1____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 12099168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EDX, align 4
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
define %struct.Memory* @routine_jne_.L_41e6b6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
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
define %struct.Memory* @routine_cmpl__0xffffffff__0x4__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, 1
  %10 = icmp ne i32 %8, -1
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
  %32 = xor i32 %31, 1
  %33 = xor i32 %28, %31
  %34 = add nuw nsw i32 %33, %32
  %35 = icmp eq i32 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_41e700(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0xb54cec___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xb54cec_type* @G_0xb54cec to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x1___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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
define %struct.Memory* @routine_movl__edx__0xb54cec(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0xb54cec_type* @G_0xb54cec to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0xc__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x4c___rsi___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 76
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RSI, align 8
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
define %struct.Memory* @routine_addq__rsi___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RSI, align 8
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
define %struct.Memory* @routine_movl__ecx__0x4__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 4
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movl_0x4__rdx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 4
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
define %struct.Memory* @routine_movl__esi__0x4__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 4
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_jmpq_.L_41e65a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__0x0__0xab0fe0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0xab0fe0_type* @G_0xab0fe0 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6, align 1
  %7 = trunc i64 %5 to i32
  %8 = and i32 %7, 255
  %9 = tail call i32 @llvm.ctpop.i32(i32 %8)
  %10 = trunc i32 %9 to i8
  %11 = and i8 %10, 1
  %12 = xor i8 %11, 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %12, i8* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %14, align 1
  %15 = icmp eq i64 %5, 0
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %16, i8* %17, align 1
  %18 = lshr i64 %5, 63
  %19 = trunc i64 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %19, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %21, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_41e756(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0xab0fe0___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0xab0fe0_type* @G_0xab0fe0 to i64*), align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.free_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_0xb54cec___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xb54cec_type* @G_0xb54cec to i32*), align 8
  %6 = sext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x68___rax___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 104
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RDI, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i128 %10 to i32
  %17 = and i32 %16, 248
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
define %struct.Memory* @routine_callq_.malloc_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__rax__0xab0fe0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 8
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* bitcast (%G_0xab0fe0_type* @G_0xab0fe0 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_41e783(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_41e7ab(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57ad9b___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57ad9b_type* @G__0x57ad9b to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x305___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 773, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57b2be___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57b2be_type* @G__0x57b2be to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xffffffff___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4294967295, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax___r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %5 = load i32, i32* %EAX, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  store i64 %6, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.abortgo(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_41e864(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_41e7d9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_41e856(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -1
  %8 = icmp eq i32 %4, 0
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
define %struct.Memory* @routine_je_.L_41e803(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x2___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -2
  %8 = icmp ult i32 %4, 2
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
define %struct.Memory* @routine_jne_.L_41e851(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl_MINUS0x4__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x4__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0xab0fe0___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0xab0fe0_type* @G_0xab0fe0 to i64*), align 8
  store i64 %5, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x4__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_0x4__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x68___rax___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 104
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RAX, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i128 %10 to i32
  %17 = and i32 %16, 248
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
define %struct.Memory* @routine_addq__rax___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RAX, align 8
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
define %struct.Memory* @routine_movl__ecx____rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = bitcast i64* %RDX to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  store i32 %6, i32* %5, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41e7b2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_cmpl_0xb54cec___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0xb54cec_type* @G_0xb54cec to i32*), align 8
  %8 = sub i32 %4, %7
  %9 = icmp ult i32 %4, %7
  %10 = zext i1 %9 to i8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %10, i8* %11, align 1
  %12 = and i32 %8, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = xor i32 %7, %4
  %19 = xor i32 %18, %8
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %8, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %8, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %4, 31
  %31 = lshr i32 %7, 31
  %32 = xor i32 %31, %30
  %33 = xor i32 %27, %30
  %34 = add nuw nsw i32 %33, %32
  %35 = icmp eq i32 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_41e9d2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0xab0fe0___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0xab0fe0_type* @G_0xab0fe0 to i64*), align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x68___rdx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 104
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RDX, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i128 %10 to i32
  %17 = and i32 %16, 248
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
define %struct.Memory* @routine_addq__rdx___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %RCX, align 8
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
define %struct.Memory* @routine_movl__0x0__0x2c__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 44
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x30__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xffffffff__0x34__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 52
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 -1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__0x38__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RCX, align 8
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
define %struct.Memory* @routine_movl__0xffffffff__0x3c__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 60
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 -1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x48__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x50__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x54__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 84
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x58__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 88
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xffffffff__0x5c__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 92
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 -1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x60__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 96
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x4c___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 76
  store i64 %6, i64* %RCX, align 8
  %7 = icmp ugt i64 %3, -77
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
define %struct.Memory* @routine_movq__rcx___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RDI, align 8
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
define %struct.Memory* @routine_movl__eax___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.set_eyevalue(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_41e86b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__0xaaf050(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 1, i32* bitcast (%G_0xaaf050_type* @G_0xaaf050 to i32*), align 8
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
