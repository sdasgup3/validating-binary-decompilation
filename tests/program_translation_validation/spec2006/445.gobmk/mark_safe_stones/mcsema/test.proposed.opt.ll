; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G__0xb0eff0_type = type <{ [8 x i8] }>
%G__0xb4bd20_type = type <{ [8 x i8] }>
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
@G__0xb0eff0 = global %G__0xb0eff0_type zeroinitializer
@G__0xb4bd20 = global %G__0xb4bd20_type zeroinitializer
@G__0xb9d8f0 = global %G__0xb9d8f0_type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @mark_safe_stones(%struct.State* noalias, i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #1 {
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
  %12 = add i64 %7, -12
  %13 = load i32, i32* %EDI.i, align 4
  %14 = add i64 %10, 6
  store i64 %14, i64* %3, align 8
  %15 = inttoptr i64 %12 to i32*
  store i32 %13, i32* %15, align 4
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i = bitcast %union.anon* %16 to i32*
  %17 = load i64, i64* %RBP.i, align 8
  %18 = add i64 %17, -8
  %19 = load i32, i32* %ESI.i, align 4
  %20 = load i64, i64* %3, align 8
  %21 = add i64 %20, 3
  store i64 %21, i64* %3, align 8
  %22 = inttoptr i64 %18 to i32*
  store i32 %19, i32* %22, align 4
  %RDX.i251 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %23 = load i64, i64* %RBP.i, align 8
  %24 = add i64 %23, -16
  %25 = load i64, i64* %RDX.i251, align 8
  %26 = load i64, i64* %3, align 8
  %27 = add i64 %26, 4
  store i64 %27, i64* %3, align 8
  %28 = inttoptr i64 %24 to i64*
  store i64 %25, i64* %28, align 8
  %RCX.i248 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %29 = load i64, i64* %RBP.i, align 8
  %30 = add i64 %29, -24
  %31 = load i64, i64* %RCX.i248, align 8
  %32 = load i64, i64* %3, align 8
  %33 = add i64 %32, 4
  store i64 %33, i64* %3, align 8
  %34 = inttoptr i64 %30 to i64*
  store i64 %31, i64* %34, align 8
  %R8.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %35 = load i64, i64* %RBP.i, align 8
  %36 = add i64 %35, -32
  %37 = load i64, i64* %R8.i, align 8
  %38 = load i64, i64* %3, align 8
  %39 = add i64 %38, 4
  store i64 %39, i64* %3, align 8
  %40 = inttoptr i64 %36 to i64*
  store i64 %37, i64* %40, align 8
  %41 = load i64, i64* %RBP.i, align 8
  %42 = add i64 %41, -36
  %43 = load i64, i64* %3, align 8
  %44 = add i64 %43, 7
  store i64 %44, i64* %3, align 8
  %45 = inttoptr i64 %42 to i32*
  store i32 21, i32* %45, align 4
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %RAX.i24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_4362ad

block_.L_4362ad:                                  ; preds = %block_.L_43647b, %entry
  %52 = phi i64 [ %626, %block_.L_43647b ], [ %.pre, %entry ]
  %53 = load i64, i64* %RBP.i, align 8
  %54 = add i64 %53, -36
  %55 = add i64 %52, 7
  store i64 %55, i64* %3, align 8
  %56 = inttoptr i64 %54 to i32*
  %57 = load i32, i32* %56, align 4
  %58 = add i32 %57, -400
  %59 = icmp ult i32 %57, 400
  %60 = zext i1 %59 to i8
  store i8 %60, i8* %46, align 1
  %61 = and i32 %58, 255
  %62 = tail call i32 @llvm.ctpop.i32(i32 %61)
  %63 = trunc i32 %62 to i8
  %64 = and i8 %63, 1
  %65 = xor i8 %64, 1
  store i8 %65, i8* %47, align 1
  %66 = xor i32 %57, 16
  %67 = xor i32 %66, %58
  %68 = lshr i32 %67, 4
  %69 = trunc i32 %68 to i8
  %70 = and i8 %69, 1
  store i8 %70, i8* %48, align 1
  %71 = icmp eq i32 %58, 0
  %72 = zext i1 %71 to i8
  store i8 %72, i8* %49, align 1
  %73 = lshr i32 %58, 31
  %74 = trunc i32 %73 to i8
  store i8 %74, i8* %50, align 1
  %75 = lshr i32 %57, 31
  %76 = xor i32 %73, %75
  %77 = add nuw nsw i32 %76, %75
  %78 = icmp eq i32 %77, 2
  %79 = zext i1 %78 to i8
  store i8 %79, i8* %51, align 1
  %80 = icmp ne i8 %74, 0
  %81 = xor i1 %80, %78
  %.v = select i1 %81, i64 13, i64 481
  %82 = add i64 %52, %.v
  store i64 %82, i64* %3, align 8
  br i1 %81, label %block_4362ba, label %block_.L_43648e

block_4362ba:                                     ; preds = %block_.L_4362ad
  store i64 3, i64* %RAX.i24, align 8
  %83 = add i64 %82, 9
  store i64 %83, i64* %3, align 8
  %84 = load i32, i32* %56, align 4
  %85 = sext i32 %84 to i64
  store i64 %85, i64* %RCX.i248, align 8
  %86 = add nsw i64 %85, 12099168
  %87 = add i64 %82, 17
  store i64 %87, i64* %3, align 8
  %88 = inttoptr i64 %86 to i8*
  %89 = load i8, i8* %88, align 1
  %90 = zext i8 %89 to i64
  store i64 %90, i64* %RDX.i251, align 8
  %91 = add i64 %53, -4
  %92 = add i64 %82, 20
  store i64 %92, i64* %3, align 8
  %93 = inttoptr i64 %91 to i32*
  %94 = load i32, i32* %93, align 4
  %95 = sub i32 3, %94
  %96 = zext i32 %95 to i64
  store i64 %96, i64* %RAX.i24, align 8
  %97 = lshr i32 %95, 31
  %98 = zext i8 %89 to i32
  %99 = sub i32 %98, %95
  %100 = icmp ult i32 %98, %95
  %101 = zext i1 %100 to i8
  store i8 %101, i8* %46, align 1
  %102 = and i32 %99, 255
  %103 = tail call i32 @llvm.ctpop.i32(i32 %102)
  %104 = trunc i32 %103 to i8
  %105 = and i8 %104, 1
  %106 = xor i8 %105, 1
  store i8 %106, i8* %47, align 1
  %107 = xor i32 %95, %98
  %108 = xor i32 %107, %99
  %109 = lshr i32 %108, 4
  %110 = trunc i32 %109 to i8
  %111 = and i8 %110, 1
  store i8 %111, i8* %48, align 1
  %112 = icmp eq i32 %99, 0
  %113 = zext i1 %112 to i8
  store i8 %113, i8* %49, align 1
  %114 = lshr i32 %99, 31
  %115 = trunc i32 %114 to i8
  store i8 %115, i8* %50, align 1
  %116 = add nuw nsw i32 %114, %97
  %117 = icmp eq i32 %116, 2
  %118 = zext i1 %117 to i8
  store i8 %118, i8* %51, align 1
  %.v23 = select i1 %112, i64 28, i64 164
  %119 = add i64 %82, %.v23
  store i64 %119, i64* %3, align 8
  br i1 %112, label %block_4362d6, label %block_.L_43635e

block_4362d6:                                     ; preds = %block_4362ba
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i24, align 8
  %120 = add i64 %119, 14
  store i64 %120, i64* %3, align 8
  %121 = load i32, i32* %56, align 4
  %122 = sext i32 %121 to i64
  %123 = mul nsw i64 %122, 76
  store i64 %123, i64* %RCX.i248, align 8
  %124 = lshr i64 %123, 63
  %125 = add i64 %123, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %125, i64* %RAX.i24, align 8
  %126 = icmp ult i64 %125, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %127 = icmp ult i64 %125, %123
  %128 = or i1 %126, %127
  %129 = zext i1 %128 to i8
  store i8 %129, i8* %46, align 1
  %130 = trunc i64 %125 to i32
  %131 = and i32 %130, 252
  %132 = tail call i32 @llvm.ctpop.i32(i32 %131)
  %133 = trunc i32 %132 to i8
  %134 = and i8 %133, 1
  %135 = xor i8 %134, 1
  store i8 %135, i8* %47, align 1
  %136 = xor i64 %123, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %137 = xor i64 %136, %125
  %138 = lshr i64 %137, 4
  %139 = trunc i64 %138 to i8
  %140 = and i8 %139, 1
  store i8 %140, i8* %48, align 1
  %141 = icmp eq i64 %125, 0
  %142 = zext i1 %141 to i8
  store i8 %142, i8* %49, align 1
  %143 = lshr i64 %125, 63
  %144 = trunc i64 %143 to i8
  store i8 %144, i8* %50, align 1
  %145 = xor i64 %143, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %146 = xor i64 %143, %124
  %147 = add nuw nsw i64 %145, %146
  %148 = icmp eq i64 %147, 2
  %149 = zext i1 %148 to i8
  store i8 %149, i8* %51, align 1
  %150 = add i64 %123, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 64)
  %151 = add i64 %119, 25
  store i64 %151, i64* %3, align 8
  %152 = inttoptr i64 %150 to i32*
  %153 = load i32, i32* %152, align 4
  store i8 0, i8* %46, align 1
  %154 = and i32 %153, 255
  %155 = tail call i32 @llvm.ctpop.i32(i32 %154)
  %156 = trunc i32 %155 to i8
  %157 = and i8 %156, 1
  %158 = xor i8 %157, 1
  store i8 %158, i8* %47, align 1
  store i8 0, i8* %48, align 1
  %159 = icmp eq i32 %153, 0
  %160 = zext i1 %159 to i8
  store i8 %160, i8* %49, align 1
  %161 = lshr i32 %153, 31
  %162 = trunc i32 %161 to i8
  store i8 %162, i8* %50, align 1
  store i8 0, i8* %51, align 1
  %.v31 = select i1 %159, i64 102, i64 31
  %163 = add i64 %119, %.v31
  store i64 %163, i64* %3, align 8
  br i1 %159, label %block_.L_43633c, label %block_4362f5

block_4362f5:                                     ; preds = %block_4362d6
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i24, align 8
  %164 = add i64 %163, 14
  store i64 %164, i64* %3, align 8
  %165 = load i32, i32* %56, align 4
  %166 = sext i32 %165 to i64
  %167 = mul nsw i64 %166, 380
  store i64 %167, i64* %RCX.i248, align 8
  %168 = lshr i64 %167, 63
  %169 = add i64 %167, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  store i64 %169, i64* %RAX.i24, align 8
  %170 = icmp ult i64 %169, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %171 = icmp ult i64 %169, %167
  %172 = or i1 %170, %171
  %173 = zext i1 %172 to i8
  store i8 %173, i8* %46, align 1
  %174 = trunc i64 %169 to i32
  %175 = and i32 %174, 252
  %176 = tail call i32 @llvm.ctpop.i32(i32 %175)
  %177 = trunc i32 %176 to i8
  %178 = and i8 %177, 1
  %179 = xor i8 %178, 1
  store i8 %179, i8* %47, align 1
  %180 = xor i64 %167, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %181 = xor i64 %180, %169
  %182 = lshr i64 %181, 4
  %183 = trunc i64 %182 to i8
  %184 = and i8 %183, 1
  store i8 %184, i8* %48, align 1
  %185 = icmp eq i64 %169, 0
  %186 = zext i1 %185 to i8
  store i8 %186, i8* %49, align 1
  %187 = lshr i64 %169, 63
  %188 = trunc i64 %187 to i8
  store i8 %188, i8* %50, align 1
  %189 = xor i64 %187, lshr (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 63)
  %190 = xor i64 %187, %168
  %191 = add nuw nsw i64 %189, %190
  %192 = icmp eq i64 %191, 2
  %193 = zext i1 %192 to i8
  store i8 %193, i8* %51, align 1
  %194 = add i64 %167, add (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 100)
  %195 = add i64 %163, 28
  store i64 %195, i64* %3, align 8
  %196 = inttoptr i64 %194 to i32*
  %197 = load i32, i32* %196, align 4
  store i8 0, i8* %46, align 1
  %198 = and i32 %197, 255
  %199 = tail call i32 @llvm.ctpop.i32(i32 %198)
  %200 = trunc i32 %199 to i8
  %201 = and i8 %200, 1
  %202 = xor i8 %201, 1
  store i8 %202, i8* %47, align 1
  store i8 0, i8* %48, align 1
  %203 = icmp eq i32 %197, 0
  %204 = zext i1 %203 to i8
  store i8 %204, i8* %49, align 1
  %205 = lshr i32 %197, 31
  %206 = trunc i32 %205 to i8
  store i8 %206, i8* %50, align 1
  store i8 0, i8* %51, align 1
  %.v32 = select i1 %203, i64 88, i64 34
  %207 = add i64 %163, %.v32
  store i64 %207, i64* %3, align 8
  br i1 %203, label %block_.L_43634d, label %block_436317

block_436317:                                     ; preds = %block_4362f5
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i24, align 8
  %208 = add i64 %207, 14
  store i64 %208, i64* %3, align 8
  %209 = load i32, i32* %56, align 4
  %210 = sext i32 %209 to i64
  %211 = mul nsw i64 %210, 380
  store i64 %211, i64* %RCX.i248, align 8
  %212 = lshr i64 %211, 63
  %213 = add i64 %211, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  store i64 %213, i64* %RAX.i24, align 8
  %214 = icmp ult i64 %213, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %215 = icmp ult i64 %213, %211
  %216 = or i1 %214, %215
  %217 = zext i1 %216 to i8
  store i8 %217, i8* %46, align 1
  %218 = trunc i64 %213 to i32
  %219 = and i32 %218, 252
  %220 = tail call i32 @llvm.ctpop.i32(i32 %219)
  %221 = trunc i32 %220 to i8
  %222 = and i8 %221, 1
  %223 = xor i8 %222, 1
  store i8 %223, i8* %47, align 1
  %224 = xor i64 %211, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %225 = xor i64 %224, %213
  %226 = lshr i64 %225, 4
  %227 = trunc i64 %226 to i8
  %228 = and i8 %227, 1
  store i8 %228, i8* %48, align 1
  %229 = icmp eq i64 %213, 0
  %230 = zext i1 %229 to i8
  store i8 %230, i8* %49, align 1
  %231 = lshr i64 %213, 63
  %232 = trunc i64 %231 to i8
  store i8 %232, i8* %50, align 1
  %233 = xor i64 %231, lshr (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 63)
  %234 = xor i64 %231, %212
  %235 = add nuw nsw i64 %233, %234
  %236 = icmp eq i64 %235, 2
  %237 = zext i1 %236 to i8
  store i8 %237, i8* %51, align 1
  %238 = add i64 %211, add (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 180)
  %239 = add i64 %207, 31
  store i64 %239, i64* %3, align 8
  %240 = inttoptr i64 %238 to i32*
  %241 = load i32, i32* %240, align 4
  store i8 0, i8* %46, align 1
  %242 = and i32 %241, 255
  %243 = tail call i32 @llvm.ctpop.i32(i32 %242)
  %244 = trunc i32 %243 to i8
  %245 = and i8 %244, 1
  %246 = xor i8 %245, 1
  store i8 %246, i8* %47, align 1
  store i8 0, i8* %48, align 1
  %247 = icmp eq i32 %241, 0
  %248 = zext i1 %247 to i8
  store i8 %248, i8* %49, align 1
  %249 = lshr i32 %241, 31
  %250 = trunc i32 %249 to i8
  store i8 %250, i8* %50, align 1
  store i8 0, i8* %51, align 1
  %.v33 = select i1 %247, i64 37, i64 54
  %251 = add i64 %207, %.v33
  store i64 %251, i64* %3, align 8
  br i1 %247, label %block_.L_43633c, label %block_.L_43634d

block_.L_43633c:                                  ; preds = %block_436317, %block_4362d6
  %252 = phi i64 [ %251, %block_436317 ], [ %163, %block_4362d6 ]
  %253 = add i64 %53, -32
  %254 = add i64 %252, 4
  store i64 %254, i64* %3, align 8
  %255 = inttoptr i64 %253 to i64*
  %256 = load i64, i64* %255, align 8
  store i64 %256, i64* %RAX.i24, align 8
  %257 = add i64 %252, 8
  store i64 %257, i64* %3, align 8
  %258 = load i32, i32* %56, align 4
  %259 = sext i32 %258 to i64
  store i64 %259, i64* %RCX.i248, align 8
  %260 = add i64 %256, %259
  %261 = add i64 %252, 12
  store i64 %261, i64* %3, align 8
  %262 = inttoptr i64 %260 to i8*
  store i8 0, i8* %262, align 1
  %263 = load i64, i64* %3, align 8
  %264 = add i64 %263, 17
  store i64 %264, i64* %3, align 8
  br label %block_.L_436359

block_.L_43634d:                                  ; preds = %block_436317, %block_4362f5
  %265 = phi i64 [ %251, %block_436317 ], [ %207, %block_4362f5 ]
  %266 = add i64 %53, -32
  %267 = add i64 %265, 4
  store i64 %267, i64* %3, align 8
  %268 = inttoptr i64 %266 to i64*
  %269 = load i64, i64* %268, align 8
  store i64 %269, i64* %RAX.i24, align 8
  %270 = add i64 %265, 8
  store i64 %270, i64* %3, align 8
  %271 = load i32, i32* %56, align 4
  %272 = sext i32 %271 to i64
  store i64 %272, i64* %RCX.i248, align 8
  %273 = add i64 %269, %272
  %274 = add i64 %265, 12
  store i64 %274, i64* %3, align 8
  %275 = inttoptr i64 %273 to i8*
  store i8 1, i8* %275, align 1
  %.pre20 = load i64, i64* %3, align 8
  br label %block_.L_436359

block_.L_436359:                                  ; preds = %block_.L_43634d, %block_.L_43633c
  %276 = phi i64 [ %.pre20, %block_.L_43634d ], [ %264, %block_.L_43633c ]
  %277 = add i64 %276, 290
  br label %block_.L_43647b

block_.L_43635e:                                  ; preds = %block_4362ba
  %278 = add i64 %119, 4
  store i64 %278, i64* %3, align 8
  %279 = load i32, i32* %56, align 4
  %280 = sext i32 %279 to i64
  store i64 %280, i64* %RAX.i24, align 8
  %281 = add nsw i64 %280, 12099168
  %282 = add i64 %119, 12
  store i64 %282, i64* %3, align 8
  %283 = inttoptr i64 %281 to i8*
  %284 = load i8, i8* %283, align 1
  %285 = zext i8 %284 to i64
  store i64 %285, i64* %RCX.i248, align 8
  %286 = zext i8 %284 to i32
  %287 = add i64 %119, 15
  store i64 %287, i64* %3, align 8
  %288 = load i32, i32* %93, align 4
  %289 = sub i32 %286, %288
  %290 = icmp ult i32 %286, %288
  %291 = zext i1 %290 to i8
  store i8 %291, i8* %46, align 1
  %292 = and i32 %289, 255
  %293 = tail call i32 @llvm.ctpop.i32(i32 %292)
  %294 = trunc i32 %293 to i8
  %295 = and i8 %294, 1
  %296 = xor i8 %295, 1
  store i8 %296, i8* %47, align 1
  %297 = xor i32 %288, %286
  %298 = xor i32 %297, %289
  %299 = lshr i32 %298, 4
  %300 = trunc i32 %299 to i8
  %301 = and i8 %300, 1
  store i8 %301, i8* %48, align 1
  %302 = icmp eq i32 %289, 0
  %303 = zext i1 %302 to i8
  store i8 %303, i8* %49, align 1
  %304 = lshr i32 %289, 31
  %305 = trunc i32 %304 to i8
  store i8 %305, i8* %50, align 1
  %306 = lshr i32 %288, 31
  %307 = add nuw nsw i32 %304, %306
  %308 = icmp eq i32 %307, 2
  %309 = zext i1 %308 to i8
  store i8 %309, i8* %51, align 1
  %.v24 = select i1 %302, i64 21, i64 268
  %310 = add i64 %119, %.v24
  store i64 %310, i64* %3, align 8
  br i1 %302, label %block_436373, label %block_.L_43646a

block_436373:                                     ; preds = %block_.L_43635e
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i24, align 8
  %311 = add i64 %310, 14
  store i64 %311, i64* %3, align 8
  %312 = load i32, i32* %56, align 4
  %313 = sext i32 %312 to i64
  %314 = mul nsw i64 %313, 380
  store i64 %314, i64* %RCX.i248, align 8
  %315 = lshr i64 %314, 63
  %316 = add i64 %314, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  store i64 %316, i64* %RAX.i24, align 8
  %317 = icmp ult i64 %316, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %318 = icmp ult i64 %316, %314
  %319 = or i1 %317, %318
  %320 = zext i1 %319 to i8
  store i8 %320, i8* %46, align 1
  %321 = trunc i64 %316 to i32
  %322 = and i32 %321, 252
  %323 = tail call i32 @llvm.ctpop.i32(i32 %322)
  %324 = trunc i32 %323 to i8
  %325 = and i8 %324, 1
  %326 = xor i8 %325, 1
  store i8 %326, i8* %47, align 1
  %327 = xor i64 %314, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %328 = xor i64 %327, %316
  %329 = lshr i64 %328, 4
  %330 = trunc i64 %329 to i8
  %331 = and i8 %330, 1
  store i8 %331, i8* %48, align 1
  %332 = icmp eq i64 %316, 0
  %333 = zext i1 %332 to i8
  store i8 %333, i8* %49, align 1
  %334 = lshr i64 %316, 63
  %335 = trunc i64 %334 to i8
  store i8 %335, i8* %50, align 1
  %336 = xor i64 %334, lshr (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 63)
  %337 = xor i64 %334, %315
  %338 = add nuw nsw i64 %336, %337
  %339 = icmp eq i64 %338, 2
  %340 = zext i1 %339 to i8
  store i8 %340, i8* %51, align 1
  %341 = add i64 %314, add (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 100)
  %342 = add i64 %310, 28
  store i64 %342, i64* %3, align 8
  %343 = inttoptr i64 %341 to i32*
  %344 = load i32, i32* %343, align 4
  store i8 0, i8* %46, align 1
  %345 = and i32 %344, 255
  %346 = tail call i32 @llvm.ctpop.i32(i32 %345)
  %347 = trunc i32 %346 to i8
  %348 = and i8 %347, 1
  %349 = xor i8 %348, 1
  store i8 %349, i8* %47, align 1
  store i8 0, i8* %48, align 1
  %350 = icmp eq i32 %344, 0
  %351 = zext i1 %350 to i8
  store i8 %351, i8* %49, align 1
  %352 = lshr i32 %344, 31
  %353 = trunc i32 %352 to i8
  store i8 %353, i8* %50, align 1
  store i8 0, i8* %51, align 1
  %.v25 = select i1 %350, i64 89, i64 34
  %354 = add i64 %310, %.v25
  store i64 %354, i64* %3, align 8
  br i1 %350, label %block_.L_4363cc, label %block_436395

block_436395:                                     ; preds = %block_436373
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i24, align 8
  %355 = add i64 %354, 14
  store i64 %355, i64* %3, align 8
  %356 = load i32, i32* %56, align 4
  %357 = sext i32 %356 to i64
  %358 = mul nsw i64 %357, 380
  store i64 %358, i64* %RCX.i248, align 8
  %359 = lshr i64 %358, 63
  %360 = add i64 %358, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  store i64 %360, i64* %RAX.i24, align 8
  %361 = icmp ult i64 %360, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %362 = icmp ult i64 %360, %358
  %363 = or i1 %361, %362
  %364 = zext i1 %363 to i8
  store i8 %364, i8* %46, align 1
  %365 = trunc i64 %360 to i32
  %366 = and i32 %365, 252
  %367 = tail call i32 @llvm.ctpop.i32(i32 %366)
  %368 = trunc i32 %367 to i8
  %369 = and i8 %368, 1
  %370 = xor i8 %369, 1
  store i8 %370, i8* %47, align 1
  %371 = xor i64 %358, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %372 = xor i64 %371, %360
  %373 = lshr i64 %372, 4
  %374 = trunc i64 %373 to i8
  %375 = and i8 %374, 1
  store i8 %375, i8* %48, align 1
  %376 = icmp eq i64 %360, 0
  %377 = zext i1 %376 to i8
  store i8 %377, i8* %49, align 1
  %378 = lshr i64 %360, 63
  %379 = trunc i64 %378 to i8
  store i8 %379, i8* %50, align 1
  %380 = xor i64 %378, lshr (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 63)
  %381 = xor i64 %378, %359
  %382 = add nuw nsw i64 %380, %381
  %383 = icmp eq i64 %382, 2
  %384 = zext i1 %383 to i8
  store i8 %384, i8* %51, align 1
  %385 = add i64 %358, add (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 180)
  %386 = add i64 %354, 31
  store i64 %386, i64* %3, align 8
  %387 = inttoptr i64 %385 to i32*
  %388 = load i32, i32* %387, align 4
  store i8 0, i8* %46, align 1
  %389 = and i32 %388, 255
  %390 = tail call i32 @llvm.ctpop.i32(i32 %389)
  %391 = trunc i32 %390 to i8
  %392 = and i8 %391, 1
  %393 = xor i8 %392, 1
  store i8 %393, i8* %47, align 1
  store i8 0, i8* %48, align 1
  %394 = icmp eq i32 %388, 0
  %395 = zext i1 %394 to i8
  store i8 %395, i8* %49, align 1
  %396 = lshr i32 %388, 31
  %397 = trunc i32 %396 to i8
  store i8 %397, i8* %50, align 1
  store i8 0, i8* %51, align 1
  %.v26 = select i1 %394, i64 86, i64 37
  %398 = add i64 %354, %.v26
  store i64 %398, i64* %3, align 8
  br i1 %394, label %block_.L_4363eb, label %block_4363ba

block_4363ba:                                     ; preds = %block_436395
  %399 = add i64 %53, -24
  %400 = add i64 %398, 4
  store i64 %400, i64* %3, align 8
  %401 = inttoptr i64 %399 to i64*
  %402 = load i64, i64* %401, align 8
  store i64 %402, i64* %RAX.i24, align 8
  %403 = add i64 %398, 8
  store i64 %403, i64* %3, align 8
  %404 = load i32, i32* %56, align 4
  %405 = sext i32 %404 to i64
  store i64 %405, i64* %RCX.i248, align 8
  %406 = add i64 %402, %405
  %407 = add i64 %398, 12
  store i64 %407, i64* %3, align 8
  %408 = inttoptr i64 %406 to i8*
  %409 = load i8, i8* %408, align 1
  store i8 0, i8* %46, align 1
  %410 = zext i8 %409 to i32
  %411 = tail call i32 @llvm.ctpop.i32(i32 %410)
  %412 = trunc i32 %411 to i8
  %413 = and i8 %412, 1
  %414 = xor i8 %413, 1
  store i8 %414, i8* %47, align 1
  store i8 0, i8* %48, align 1
  %415 = icmp eq i8 %409, 0
  %416 = zext i1 %415 to i8
  store i8 %416, i8* %49, align 1
  %417 = lshr i8 %409, 7
  store i8 %417, i8* %50, align 1
  store i8 0, i8* %51, align 1
  %.v27 = select i1 %415, i64 49, i64 18
  %418 = add i64 %398, %.v27
  store i64 %418, i64* %3, align 8
  br i1 %415, label %block_.L_4363eb, label %block_.L_4363cc

block_.L_4363cc:                                  ; preds = %block_4363ba, %block_436373
  %419 = phi i64 [ %418, %block_4363ba ], [ %354, %block_436373 ]
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i24, align 8
  %420 = add i64 %419, 14
  store i64 %420, i64* %3, align 8
  %421 = load i32, i32* %56, align 4
  %422 = sext i32 %421 to i64
  %423 = mul nsw i64 %422, 76
  store i64 %423, i64* %RCX.i248, align 8
  %424 = lshr i64 %423, 63
  %425 = add i64 %423, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %425, i64* %RAX.i24, align 8
  %426 = icmp ult i64 %425, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %427 = icmp ult i64 %425, %423
  %428 = or i1 %426, %427
  %429 = zext i1 %428 to i8
  store i8 %429, i8* %46, align 1
  %430 = trunc i64 %425 to i32
  %431 = and i32 %430, 252
  %432 = tail call i32 @llvm.ctpop.i32(i32 %431)
  %433 = trunc i32 %432 to i8
  %434 = and i8 %433, 1
  %435 = xor i8 %434, 1
  store i8 %435, i8* %47, align 1
  %436 = xor i64 %423, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %437 = xor i64 %436, %425
  %438 = lshr i64 %437, 4
  %439 = trunc i64 %438 to i8
  %440 = and i8 %439, 1
  store i8 %440, i8* %48, align 1
  %441 = icmp eq i64 %425, 0
  %442 = zext i1 %441 to i8
  store i8 %442, i8* %49, align 1
  %443 = lshr i64 %425, 63
  %444 = trunc i64 %443 to i8
  store i8 %444, i8* %50, align 1
  %445 = xor i64 %443, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %446 = xor i64 %443, %424
  %447 = add nuw nsw i64 %445, %446
  %448 = icmp eq i64 %447, 2
  %449 = zext i1 %448 to i8
  store i8 %449, i8* %51, align 1
  %450 = add i64 %423, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 64)
  %451 = add i64 %419, 25
  store i64 %451, i64* %3, align 8
  %452 = inttoptr i64 %450 to i32*
  %453 = load i32, i32* %452, align 4
  store i8 0, i8* %46, align 1
  %454 = and i32 %453, 255
  %455 = tail call i32 @llvm.ctpop.i32(i32 %454)
  %456 = trunc i32 %455 to i8
  %457 = and i8 %456, 1
  %458 = xor i8 %457, 1
  store i8 %458, i8* %47, align 1
  store i8 0, i8* %48, align 1
  %459 = icmp eq i32 %453, 0
  %460 = zext i1 %459 to i8
  store i8 %460, i8* %49, align 1
  %461 = lshr i32 %453, 31
  %462 = trunc i32 %461 to i8
  store i8 %462, i8* %50, align 1
  store i8 0, i8* %51, align 1
  %.v28 = select i1 %459, i64 31, i64 48
  %463 = add i64 %419, %.v28
  store i64 %463, i64* %3, align 8
  br i1 %459, label %block_.L_4363eb, label %block_.L_4363fc

block_.L_4363eb:                                  ; preds = %block_.L_4363cc, %block_4363ba, %block_436395
  %464 = phi i64 [ %463, %block_.L_4363cc ], [ %418, %block_4363ba ], [ %398, %block_436395 ]
  %465 = add i64 %53, -32
  %466 = add i64 %464, 4
  store i64 %466, i64* %3, align 8
  %467 = inttoptr i64 %465 to i64*
  %468 = load i64, i64* %467, align 8
  store i64 %468, i64* %RAX.i24, align 8
  %469 = add i64 %464, 8
  store i64 %469, i64* %3, align 8
  %470 = load i32, i32* %56, align 4
  %471 = sext i32 %470 to i64
  store i64 %471, i64* %RCX.i248, align 8
  %472 = add i64 %468, %471
  %473 = add i64 %464, 12
  store i64 %473, i64* %3, align 8
  %474 = inttoptr i64 %472 to i8*
  store i8 0, i8* %474, align 1
  %475 = load i64, i64* %3, align 8
  %476 = add i64 %475, 110
  br label %block_.L_436465

block_.L_4363fc:                                  ; preds = %block_.L_4363cc
  %477 = add i64 %53, -16
  %478 = add i64 %463, 4
  store i64 %478, i64* %3, align 8
  %479 = inttoptr i64 %477 to i64*
  %480 = load i64, i64* %479, align 8
  store i64 %480, i64* %RAX.i24, align 8
  %481 = add i64 %463, 8
  store i64 %481, i64* %3, align 8
  %482 = load i32, i32* %56, align 4
  %483 = sext i32 %482 to i64
  store i64 %483, i64* %RCX.i248, align 8
  %484 = add i64 %480, %483
  %485 = add i64 %463, 12
  store i64 %485, i64* %3, align 8
  %486 = inttoptr i64 %484 to i8*
  %487 = load i8, i8* %486, align 1
  store i8 0, i8* %46, align 1
  %488 = zext i8 %487 to i32
  %489 = tail call i32 @llvm.ctpop.i32(i32 %488)
  %490 = trunc i32 %489 to i8
  %491 = and i8 %490, 1
  %492 = xor i8 %491, 1
  store i8 %492, i8* %47, align 1
  store i8 0, i8* %48, align 1
  %493 = icmp eq i8 %487, 0
  %494 = zext i1 %493 to i8
  store i8 %494, i8* %49, align 1
  %495 = lshr i8 %487, 7
  store i8 %495, i8* %50, align 1
  store i8 0, i8* %51, align 1
  %.v29 = select i1 %493, i64 35, i64 18
  %496 = add i64 %463, %.v29
  store i64 %496, i64* %3, align 8
  br i1 %493, label %block_.L_43641f, label %block_43640e

block_43640e:                                     ; preds = %block_.L_4363fc
  %497 = add i64 %53, -32
  %498 = add i64 %496, 4
  store i64 %498, i64* %3, align 8
  %499 = inttoptr i64 %497 to i64*
  %500 = load i64, i64* %499, align 8
  store i64 %500, i64* %RAX.i24, align 8
  %501 = add i64 %496, 8
  store i64 %501, i64* %3, align 8
  %502 = load i32, i32* %56, align 4
  %503 = sext i32 %502 to i64
  store i64 %503, i64* %RCX.i248, align 8
  %504 = add i64 %500, %503
  %505 = add i64 %496, 12
  store i64 %505, i64* %3, align 8
  %506 = inttoptr i64 %504 to i8*
  store i8 2, i8* %506, align 1
  %507 = load i64, i64* %3, align 8
  %508 = add i64 %507, 70
  br label %block_.L_436460

block_.L_43641f:                                  ; preds = %block_.L_4363fc
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i24, align 8
  %509 = add i64 %496, 14
  store i64 %509, i64* %3, align 8
  %510 = load i32, i32* %56, align 4
  %511 = sext i32 %510 to i64
  %512 = mul nsw i64 %511, 76
  store i64 %512, i64* %RCX.i248, align 8
  %513 = lshr i64 %512, 63
  %514 = add i64 %512, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %514, i64* %RAX.i24, align 8
  %515 = icmp ult i64 %514, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %516 = icmp ult i64 %514, %512
  %517 = or i1 %515, %516
  %518 = zext i1 %517 to i8
  store i8 %518, i8* %46, align 1
  %519 = trunc i64 %514 to i32
  %520 = and i32 %519, 252
  %521 = tail call i32 @llvm.ctpop.i32(i32 %520)
  %522 = trunc i32 %521 to i8
  %523 = and i8 %522, 1
  %524 = xor i8 %523, 1
  store i8 %524, i8* %47, align 1
  %525 = xor i64 %512, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %526 = xor i64 %525, %514
  %527 = lshr i64 %526, 4
  %528 = trunc i64 %527 to i8
  %529 = and i8 %528, 1
  store i8 %529, i8* %48, align 1
  %530 = icmp eq i64 %514, 0
  %531 = zext i1 %530 to i8
  store i8 %531, i8* %49, align 1
  %532 = lshr i64 %514, 63
  %533 = trunc i64 %532 to i8
  store i8 %533, i8* %50, align 1
  %534 = xor i64 %532, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %535 = xor i64 %532, %513
  %536 = add nuw nsw i64 %534, %535
  %537 = icmp eq i64 %536, 2
  %538 = zext i1 %537 to i8
  store i8 %538, i8* %51, align 1
  %539 = add i64 %512, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 64)
  %540 = add i64 %496, 25
  store i64 %540, i64* %3, align 8
  %541 = inttoptr i64 %539 to i32*
  %542 = load i32, i32* %541, align 4
  %543 = add i32 %542, -2
  %544 = icmp ult i32 %542, 2
  %545 = zext i1 %544 to i8
  store i8 %545, i8* %46, align 1
  %546 = and i32 %543, 255
  %547 = tail call i32 @llvm.ctpop.i32(i32 %546)
  %548 = trunc i32 %547 to i8
  %549 = and i8 %548, 1
  %550 = xor i8 %549, 1
  store i8 %550, i8* %47, align 1
  %551 = xor i32 %543, %542
  %552 = lshr i32 %551, 4
  %553 = trunc i32 %552 to i8
  %554 = and i8 %553, 1
  store i8 %554, i8* %48, align 1
  %555 = icmp eq i32 %543, 0
  %556 = zext i1 %555 to i8
  store i8 %556, i8* %49, align 1
  %557 = lshr i32 %543, 31
  %558 = trunc i32 %557 to i8
  store i8 %558, i8* %50, align 1
  %559 = lshr i32 %542, 31
  %560 = xor i32 %557, %559
  %561 = add nuw nsw i32 %560, %559
  %562 = icmp eq i32 %561, 2
  %563 = zext i1 %562 to i8
  store i8 %563, i8* %51, align 1
  %.v30 = select i1 %555, i64 31, i64 48
  %564 = add i64 %496, %.v30
  %565 = load i64, i64* %RBP.i, align 8
  %566 = add i64 %565, -32
  %567 = add i64 %564, 4
  store i64 %567, i64* %3, align 8
  %568 = inttoptr i64 %566 to i64*
  %569 = load i64, i64* %568, align 8
  store i64 %569, i64* %RAX.i24, align 8
  %570 = add i64 %565, -36
  %571 = add i64 %564, 8
  store i64 %571, i64* %3, align 8
  %572 = inttoptr i64 %570 to i32*
  %573 = load i32, i32* %572, align 4
  %574 = sext i32 %573 to i64
  store i64 %574, i64* %RCX.i248, align 8
  %575 = add i64 %569, %574
  %576 = add i64 %564, 12
  store i64 %576, i64* %3, align 8
  %577 = inttoptr i64 %575 to i8*
  br i1 %555, label %block_43643e, label %block_.L_43644f

block_43643e:                                     ; preds = %block_.L_43641f
  store i8 0, i8* %577, align 1
  %578 = load i64, i64* %3, align 8
  %579 = add i64 %578, 17
  store i64 %579, i64* %3, align 8
  br label %block_.L_43645b

block_.L_43644f:                                  ; preds = %block_.L_43641f
  store i8 1, i8* %577, align 1
  %.pre21 = load i64, i64* %3, align 8
  br label %block_.L_43645b

block_.L_43645b:                                  ; preds = %block_.L_43644f, %block_43643e
  %580 = phi i64 [ %.pre21, %block_.L_43644f ], [ %579, %block_43643e ]
  %581 = add i64 %580, 5
  store i64 %581, i64* %3, align 8
  br label %block_.L_436460

block_.L_436460:                                  ; preds = %block_.L_43645b, %block_43640e
  %storemerge13 = phi i64 [ %508, %block_43640e ], [ %581, %block_.L_43645b ]
  %582 = add i64 %storemerge13, 5
  store i64 %582, i64* %3, align 8
  br label %block_.L_436465

block_.L_436465:                                  ; preds = %block_.L_436460, %block_.L_4363eb
  %storemerge12 = phi i64 [ %476, %block_.L_4363eb ], [ %582, %block_.L_436460 ]
  %583 = add i64 %storemerge12, 17
  store i64 %583, i64* %3, align 8
  br label %block_.L_436476

block_.L_43646a:                                  ; preds = %block_.L_43635e
  %584 = add i64 %53, -32
  %585 = add i64 %310, 4
  store i64 %585, i64* %3, align 8
  %586 = inttoptr i64 %584 to i64*
  %587 = load i64, i64* %586, align 8
  store i64 %587, i64* %RAX.i24, align 8
  %588 = add i64 %310, 8
  store i64 %588, i64* %3, align 8
  %589 = load i32, i32* %56, align 4
  %590 = sext i32 %589 to i64
  store i64 %590, i64* %RCX.i248, align 8
  %591 = add i64 %587, %590
  %592 = add i64 %310, 12
  store i64 %592, i64* %3, align 8
  %593 = inttoptr i64 %591 to i8*
  store i8 0, i8* %593, align 1
  %.pre22 = load i64, i64* %3, align 8
  br label %block_.L_436476

block_.L_436476:                                  ; preds = %block_.L_43646a, %block_.L_436465
  %594 = phi i64 [ %.pre22, %block_.L_43646a ], [ %583, %block_.L_436465 ]
  %595 = add i64 %594, 5
  store i64 %595, i64* %3, align 8
  br label %block_.L_43647b

block_.L_43647b:                                  ; preds = %block_.L_436476, %block_.L_436359
  %storemerge = phi i64 [ %277, %block_.L_436359 ], [ %595, %block_.L_436476 ]
  %596 = load i64, i64* %RBP.i, align 8
  %597 = add i64 %596, -36
  %598 = add i64 %storemerge, 8
  store i64 %598, i64* %3, align 8
  %599 = inttoptr i64 %597 to i32*
  %600 = load i32, i32* %599, align 4
  %601 = add i32 %600, 1
  %602 = zext i32 %601 to i64
  store i64 %602, i64* %RAX.i24, align 8
  %603 = icmp eq i32 %600, -1
  %604 = icmp eq i32 %601, 0
  %605 = or i1 %603, %604
  %606 = zext i1 %605 to i8
  store i8 %606, i8* %46, align 1
  %607 = and i32 %601, 255
  %608 = tail call i32 @llvm.ctpop.i32(i32 %607)
  %609 = trunc i32 %608 to i8
  %610 = and i8 %609, 1
  %611 = xor i8 %610, 1
  store i8 %611, i8* %47, align 1
  %612 = xor i32 %601, %600
  %613 = lshr i32 %612, 4
  %614 = trunc i32 %613 to i8
  %615 = and i8 %614, 1
  store i8 %615, i8* %48, align 1
  %616 = zext i1 %604 to i8
  store i8 %616, i8* %49, align 1
  %617 = lshr i32 %601, 31
  %618 = trunc i32 %617 to i8
  store i8 %618, i8* %50, align 1
  %619 = lshr i32 %600, 31
  %620 = xor i32 %617, %619
  %621 = add nuw nsw i32 %620, %617
  %622 = icmp eq i32 %621, 2
  %623 = zext i1 %622 to i8
  store i8 %623, i8* %51, align 1
  %624 = add i64 %storemerge, 14
  store i64 %624, i64* %3, align 8
  store i32 %601, i32* %599, align 4
  %625 = load i64, i64* %3, align 8
  %626 = add i64 %625, -476
  store i64 %626, i64* %3, align 8
  br label %block_.L_4362ad

block_.L_43648e:                                  ; preds = %block_.L_4362ad
  store i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64* %RAX.i24, align 8
  %627 = add i64 %53, -8
  %628 = add i64 %82, 14
  store i64 %628, i64* %3, align 8
  %629 = inttoptr i64 %627 to i32*
  %630 = load i32, i32* %629, align 4
  %631 = sext i32 %630 to i64
  %632 = mul nsw i64 %631, 564
  store i64 %632, i64* %RCX.i248, align 8
  %633 = lshr i64 %632, 63
  %634 = add i64 %632, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  store i64 %634, i64* %RAX.i24, align 8
  %635 = icmp ult i64 %634, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  %636 = icmp ult i64 %634, %632
  %637 = or i1 %635, %636
  %638 = zext i1 %637 to i8
  store i8 %638, i8* %46, align 1
  %639 = trunc i64 %634 to i32
  %640 = and i32 %639, 252
  %641 = tail call i32 @llvm.ctpop.i32(i32 %640)
  %642 = trunc i32 %641 to i8
  %643 = and i8 %642, 1
  %644 = xor i8 %643, 1
  store i8 %644, i8* %47, align 1
  %645 = xor i64 %632, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  %646 = xor i64 %645, %634
  %647 = lshr i64 %646, 4
  %648 = trunc i64 %647 to i8
  %649 = and i8 %648, 1
  store i8 %649, i8* %48, align 1
  %650 = icmp eq i64 %634, 0
  %651 = zext i1 %650 to i8
  store i8 %651, i8* %49, align 1
  %652 = lshr i64 %634, 63
  %653 = trunc i64 %652 to i8
  store i8 %653, i8* %50, align 1
  %654 = xor i64 %652, lshr (i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64 63)
  %655 = xor i64 %652, %633
  %656 = add nuw nsw i64 %654, %655
  %657 = icmp eq i64 %656, 2
  %658 = zext i1 %657 to i8
  store i8 %658, i8* %51, align 1
  %659 = add i64 %632, add (i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64 552)
  %660 = add i64 %82, 30
  store i64 %660, i64* %3, align 8
  %661 = inttoptr i64 %659 to i32*
  %662 = load i32, i32* %661, align 4
  %663 = zext i32 %662 to i64
  store i64 %663, i64* %RDX.i251, align 8
  %SIL.i12 = bitcast %union.anon* %16 to i8*
  %664 = trunc i32 %662 to i8
  store i8 %664, i8* %SIL.i12, align 1
  %665 = add i64 %53, -32
  %666 = add i64 %82, 37
  store i64 %666, i64* %3, align 8
  %667 = inttoptr i64 %665 to i64*
  %668 = load i64, i64* %667, align 8
  store i64 %668, i64* %RAX.i24, align 8
  %669 = add i64 %82, 41
  store i64 %669, i64* %3, align 8
  %670 = load i32, i32* %629, align 4
  %671 = sext i32 %670 to i64
  store i64 %671, i64* %RCX.i248, align 8
  %672 = add i64 %668, %671
  %673 = add i64 %82, 45
  store i64 %673, i64* %3, align 8
  %674 = inttoptr i64 %672 to i8*
  store i8 %664, i8* %674, align 1
  %675 = load i64, i64* %3, align 8
  %676 = add i64 %675, 1
  store i64 %676, i64* %3, align 8
  %677 = load i64, i64* %6, align 8
  %678 = add i64 %677, 8
  %679 = inttoptr i64 %677 to i64*
  %680 = load i64, i64* %679, align 8
  store i64 %680, i64* %RBP.i, align 8
  store i64 %678, i64* %6, align 8
  %681 = add i64 %675, 2
  store i64 %681, i64* %3, align 8
  %682 = inttoptr i64 %678 to i64*
  %683 = load i64, i64* %682, align 8
  store i64 %683, i64* %3, align 8
  %684 = add i64 %677, 16
  store i64 %684, i64* %6, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edi__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r8__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %R8, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x15__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 21, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x190__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
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
define %struct.Memory* @routine_jge_.L_43648e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x3___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 3, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x24__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
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
define %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
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
define %struct.Memory* @routine_subl_MINUS0x4__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %8, %10
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__eax___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %4 to i32*
  %5 = load i32, i32* %EDX, align 4
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = sub i32 %5, %6
  %10 = icmp ult i32 %5, %6
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
  %19 = xor i32 %6, %5
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
  %31 = lshr i32 %5, 31
  %32 = lshr i32 %6, 31
  %33 = xor i32 %32, %31
  %34 = xor i32 %28, %31
  %35 = add nuw nsw i32 %34, %33
  %36 = icmp eq i32 %35, 2
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %37, i8* %38, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_43635e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x40__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 64
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
define %struct.Memory* @routine_je_.L_43633c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0xb0eff0___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x17c___rcx___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %10 = mul nsw i128 %9, 380
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
define %struct.Memory* @routine_cmpl__0x0__0x64__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 100
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
define %struct.Memory* @routine_je_.L_43634d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__0xb4__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 180
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
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
define %struct.Memory* @routine_jne_.L_43634d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__0x0____rax__rcx_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, %3
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  store i8 0, i8* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_436359(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__0x1____rax__rcx_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, %3
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  store i8 1, i8* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43647b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x24__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
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
define %struct.Memory* @routine_cmpl_MINUS0x4__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
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
define %struct.Memory* @routine_jne_.L_43646a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_4363cc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_4363eb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpb__0x0____rax__rcx_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, %3
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %10, align 1
  %11 = zext i8 %9 to i32
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %17, align 1
  %18 = icmp eq i8 %9, 0
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %19, i8* %20, align 1
  %21 = lshr i8 %9, 7
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4363fc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_436465(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_je_.L_43641f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movb__0x2____rax__rcx_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, %3
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  store i8 2, i8* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_436460(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x2__0x40__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -2
  %10 = icmp ult i32 %8, 2
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
define %struct.Memory* @routine_jne_.L_43644f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_43645b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_436476(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_436480(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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
define %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4362ad(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_movl_0x228__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 552
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__dl___sil(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL = bitcast %union.anon* %3 to i8*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SIL = bitcast %union.anon* %4 to i8*
  %5 = load i8, i8* %DL, align 1
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i8 %5, i8* %SIL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__sil____rax__rcx_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SIL = bitcast %union.anon* %3 to i8*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = add i64 %5, %4
  %7 = load i8, i8* %SIL, align 1
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %6 to i8*
  store i8 %7, i8* %10, align 1
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
attributes #1 = { alwaysinline nounwind }
attributes #2 = { norecurse nounwind }
attributes #3 = { nounwind }
