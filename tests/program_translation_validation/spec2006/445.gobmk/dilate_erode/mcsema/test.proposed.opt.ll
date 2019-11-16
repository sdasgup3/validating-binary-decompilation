; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
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
@G__0xb4bd20 = global %G__0xb4bd20_type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @memcpy(i64, i64, i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_46de20.captured_territory(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @dilate_erode(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -1656
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 1648
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
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i = bitcast %union.anon* %40 to i32*
  %41 = add i64 %7, -12
  %42 = load i32, i32* %EDI.i, align 4
  %43 = add i64 %10, 13
  store i64 %43, i64* %3, align 8
  %44 = inttoptr i64 %41 to i32*
  store i32 %42, i32* %44, align 4
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i = bitcast %union.anon* %45 to i32*
  %46 = load i64, i64* %RBP.i, align 8
  %47 = add i64 %46, -8
  %48 = load i32, i32* %ESI.i, align 4
  %49 = load i64, i64* %3, align 8
  %50 = add i64 %49, 3
  store i64 %50, i64* %3, align 8
  %51 = inttoptr i64 %47 to i32*
  store i32 %48, i32* %51, align 4
  %RDX.i1252 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %52 = load i64, i64* %RBP.i, align 8
  %53 = add i64 %52, -16
  %54 = load i64, i64* %RDX.i1252, align 8
  %55 = load i64, i64* %3, align 8
  %56 = add i64 %55, 4
  store i64 %56, i64* %3, align 8
  %57 = inttoptr i64 %53 to i64*
  store i64 %54, i64* %57, align 8
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX.i1249 = bitcast %union.anon* %58 to i32*
  %59 = load i64, i64* %RBP.i, align 8
  %60 = add i64 %59, -20
  %61 = load i32, i32* %ECX.i1249, align 4
  %62 = load i64, i64* %3, align 8
  %63 = add i64 %62, 3
  store i64 %63, i64* %3, align 8
  %64 = inttoptr i64 %60 to i32*
  store i32 %61, i32* %64, align 4
  %65 = load i64, i64* %RBP.i, align 8
  %66 = add i64 %65, -1640
  %67 = load i64, i64* %3, align 8
  %68 = add i64 %67, 10
  store i64 %68, i64* %3, align 8
  %69 = inttoptr i64 %66 to i32*
  store i32 0, i32* %69, align 4
  %70 = load i64, i64* %RBP.i, align 8
  %71 = add i64 %70, -24
  %72 = load i64, i64* %3, align 8
  %73 = add i64 %72, 7
  store i64 %73, i64* %3, align 8
  %74 = inttoptr i64 %71 to i32*
  store i32 21, i32* %74, align 4
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i1128 = getelementptr inbounds %union.anon, %union.anon* %75, i64 0, i32 0
  %RCX.i1237 = getelementptr inbounds %union.anon, %union.anon* %58, i64 0, i32 0
  %RDI.i1167 = getelementptr inbounds %union.anon, %union.anon* %40, i64 0, i32 0
  %RSI.i1164 = getelementptr inbounds %union.anon, %union.anon* %45, i64 0, i32 0
  %EAX.i1161 = bitcast %union.anon* %75 to i32*
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_46ccf9

block_.L_46ccf9:                                  ; preds = %block_.L_46cdf1, %entry
  %76 = phi i64 [ %.pre, %entry ], [ %400, %block_.L_46cdf1 ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %entry ], [ %MEMORY.6, %block_.L_46cdf1 ]
  %77 = load i64, i64* %RBP.i, align 8
  %78 = add i64 %77, -24
  %79 = add i64 %76, 7
  store i64 %79, i64* %3, align 8
  %80 = inttoptr i64 %78 to i32*
  %81 = load i32, i32* %80, align 4
  %82 = add i32 %81, -400
  %83 = icmp ult i32 %81, 400
  %84 = zext i1 %83 to i8
  store i8 %84, i8* %14, align 1
  %85 = and i32 %82, 255
  %86 = tail call i32 @llvm.ctpop.i32(i32 %85)
  %87 = trunc i32 %86 to i8
  %88 = and i8 %87, 1
  %89 = xor i8 %88, 1
  store i8 %89, i8* %21, align 1
  %90 = xor i32 %81, 16
  %91 = xor i32 %90, %82
  %92 = lshr i32 %91, 4
  %93 = trunc i32 %92 to i8
  %94 = and i8 %93, 1
  store i8 %94, i8* %27, align 1
  %95 = icmp eq i32 %82, 0
  %96 = zext i1 %95 to i8
  store i8 %96, i8* %30, align 1
  %97 = lshr i32 %82, 31
  %98 = trunc i32 %97 to i8
  store i8 %98, i8* %33, align 1
  %99 = lshr i32 %81, 31
  %100 = xor i32 %97, %99
  %101 = add nuw nsw i32 %100, %99
  %102 = icmp eq i32 %101, 2
  %103 = zext i1 %102 to i8
  store i8 %103, i8* %39, align 1
  %104 = icmp ne i8 %98, 0
  %105 = xor i1 %104, %102
  %.v151 = select i1 %105, i64 13, i64 262
  %106 = add i64 %76, %.v151
  store i64 %106, i64* %3, align 8
  br i1 %105, label %block_46cd06, label %block_.L_46cdff

block_46cd06:                                     ; preds = %block_.L_46ccf9
  %107 = add i64 %106, 4
  store i64 %107, i64* %3, align 8
  %108 = load i32, i32* %80, align 4
  %109 = sext i32 %108 to i64
  store i64 %109, i64* %RAX.i1128, align 8
  %110 = add nsw i64 %109, 12099168
  %111 = add i64 %106, 12
  store i64 %111, i64* %3, align 8
  %112 = inttoptr i64 %110 to i8*
  %113 = load i8, i8* %112, align 1
  %114 = zext i8 %113 to i64
  store i64 %114, i64* %RCX.i1237, align 8
  %115 = zext i8 %113 to i32
  %116 = add nsw i32 %115, -3
  %117 = icmp ult i8 %113, 3
  %118 = zext i1 %117 to i8
  store i8 %118, i8* %14, align 1
  %119 = and i32 %116, 255
  %120 = tail call i32 @llvm.ctpop.i32(i32 %119)
  %121 = trunc i32 %120 to i8
  %122 = and i8 %121, 1
  %123 = xor i8 %122, 1
  store i8 %123, i8* %21, align 1
  %124 = xor i32 %116, %115
  %125 = lshr i32 %124, 4
  %126 = trunc i32 %125 to i8
  %127 = and i8 %126, 1
  store i8 %127, i8* %27, align 1
  %128 = icmp eq i32 %116, 0
  %129 = zext i1 %128 to i8
  store i8 %129, i8* %30, align 1
  %130 = lshr i32 %116, 31
  %131 = trunc i32 %130 to i8
  store i8 %131, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v199 = select i1 %128, i64 21, i64 26
  %132 = add i64 %106, %.v199
  store i64 %132, i64* %3, align 8
  br i1 %128, label %block_46cd1b, label %block_.L_46cd20

block_46cd1b:                                     ; preds = %block_46cd06
  %133 = add i64 %132, 214
  br label %block_.L_46cdf1

block_.L_46cd20:                                  ; preds = %block_46cd06
  %134 = add i64 %132, 4
  store i64 %134, i64* %3, align 8
  %135 = load i32, i32* %80, align 4
  %136 = sext i32 %135 to i64
  store i64 %136, i64* %RAX.i1128, align 8
  %137 = add nsw i64 %136, 12099168
  %138 = add i64 %132, 12
  store i64 %138, i64* %3, align 8
  %139 = inttoptr i64 %137 to i8*
  %140 = load i8, i8* %139, align 1
  %141 = zext i8 %140 to i64
  store i64 %141, i64* %RCX.i1237, align 8
  %142 = zext i8 %140 to i32
  store i8 0, i8* %14, align 1
  %143 = tail call i32 @llvm.ctpop.i32(i32 %142)
  %144 = trunc i32 %143 to i8
  %145 = and i8 %144, 1
  %146 = xor i8 %145, 1
  store i8 %146, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %147 = icmp eq i8 %140, 0
  %148 = zext i1 %147 to i8
  store i8 %148, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v200 = select i1 %147, i64 62, i64 21
  %149 = add i64 %132, %.v200
  store i64 %149, i64* %3, align 8
  br i1 %147, label %block_.L_46cd5e, label %block_46cd35

block_46cd35:                                     ; preds = %block_.L_46cd20
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i1128, align 8
  %150 = add i64 %149, 14
  store i64 %150, i64* %3, align 8
  %151 = load i32, i32* %80, align 4
  %152 = sext i32 %151 to i64
  %153 = mul nsw i64 %152, 76
  store i64 %153, i64* %RCX.i1237, align 8
  %154 = lshr i64 %153, 63
  %155 = add i64 %153, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %155, i64* %RAX.i1128, align 8
  %156 = icmp ult i64 %155, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %157 = icmp ult i64 %155, %153
  %158 = or i1 %156, %157
  %159 = zext i1 %158 to i8
  store i8 %159, i8* %14, align 1
  %160 = trunc i64 %155 to i32
  %161 = and i32 %160, 252
  %162 = tail call i32 @llvm.ctpop.i32(i32 %161)
  %163 = trunc i32 %162 to i8
  %164 = and i8 %163, 1
  %165 = xor i8 %164, 1
  store i8 %165, i8* %21, align 1
  %166 = xor i64 %153, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %167 = xor i64 %166, %155
  %168 = lshr i64 %167, 4
  %169 = trunc i64 %168 to i8
  %170 = and i8 %169, 1
  store i8 %170, i8* %27, align 1
  %171 = icmp eq i64 %155, 0
  %172 = zext i1 %171 to i8
  store i8 %172, i8* %30, align 1
  %173 = lshr i64 %155, 63
  %174 = trunc i64 %173 to i8
  store i8 %174, i8* %33, align 1
  %175 = xor i64 %173, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %176 = xor i64 %173, %154
  %177 = add nuw nsw i64 %175, %176
  %178 = icmp eq i64 %177, 2
  %179 = zext i1 %178 to i8
  store i8 %179, i8* %39, align 1
  %180 = add i64 %153, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 64)
  %181 = add i64 %149, 25
  store i64 %181, i64* %3, align 8
  %182 = inttoptr i64 %180 to i32*
  %183 = load i32, i32* %182, align 4
  %184 = add i32 %183, -2
  %185 = icmp ult i32 %183, 2
  %186 = zext i1 %185 to i8
  store i8 %186, i8* %14, align 1
  %187 = and i32 %184, 255
  %188 = tail call i32 @llvm.ctpop.i32(i32 %187)
  %189 = trunc i32 %188 to i8
  %190 = and i8 %189, 1
  %191 = xor i8 %190, 1
  store i8 %191, i8* %21, align 1
  %192 = xor i32 %184, %183
  %193 = lshr i32 %192, 4
  %194 = trunc i32 %193 to i8
  %195 = and i8 %194, 1
  store i8 %195, i8* %27, align 1
  %196 = icmp eq i32 %184, 0
  %197 = zext i1 %196 to i8
  store i8 %197, i8* %30, align 1
  %198 = lshr i32 %184, 31
  %199 = trunc i32 %198 to i8
  store i8 %199, i8* %33, align 1
  %200 = lshr i32 %183, 31
  %201 = xor i32 %198, %200
  %202 = add nuw nsw i32 %201, %200
  %203 = icmp eq i32 %202, 2
  %204 = zext i1 %203 to i8
  store i8 %204, i8* %39, align 1
  %.v201 = select i1 %196, i64 31, i64 41
  %205 = add i64 %149, %.v201
  store i64 %205, i64* %3, align 8
  br i1 %196, label %block_46cd54, label %block_.L_46cd5e

block_46cd54:                                     ; preds = %block_46cd35
  %206 = load i64, i64* %RBP.i, align 8
  %207 = add i64 %206, -1640
  %208 = add i64 %205, 10
  store i64 %208, i64* %3, align 8
  %209 = inttoptr i64 %207 to i32*
  store i32 1, i32* %209, align 4
  %.pre140 = load i64, i64* %3, align 8
  br label %block_.L_46cd5e

block_.L_46cd5e:                                  ; preds = %block_46cd35, %block_46cd54, %block_.L_46cd20
  %210 = phi i64 [ %.pre140, %block_46cd54 ], [ %205, %block_46cd35 ], [ %149, %block_.L_46cd20 ]
  %211 = load i64, i64* %RBP.i, align 8
  %212 = add i64 %211, -24
  %213 = add i64 %210, 4
  store i64 %213, i64* %3, align 8
  %214 = inttoptr i64 %212 to i32*
  %215 = load i32, i32* %214, align 4
  %216 = sext i32 %215 to i64
  store i64 %216, i64* %RAX.i1128, align 8
  %217 = add nsw i64 %216, 12099168
  %218 = add i64 %210, 12
  store i64 %218, i64* %3, align 8
  %219 = inttoptr i64 %217 to i8*
  %220 = load i8, i8* %219, align 1
  %221 = zext i8 %220 to i64
  store i64 %221, i64* %RCX.i1237, align 8
  %222 = zext i8 %220 to i32
  %223 = add nsw i32 %222, -1
  %224 = icmp eq i8 %220, 0
  %225 = zext i1 %224 to i8
  store i8 %225, i8* %14, align 1
  %226 = and i32 %223, 255
  %227 = tail call i32 @llvm.ctpop.i32(i32 %226)
  %228 = trunc i32 %227 to i8
  %229 = and i8 %228, 1
  %230 = xor i8 %229, 1
  store i8 %230, i8* %21, align 1
  %231 = xor i32 %223, %222
  %232 = lshr i32 %231, 4
  %233 = trunc i32 %232 to i8
  %234 = and i8 %233, 1
  store i8 %234, i8* %27, align 1
  %235 = icmp eq i32 %223, 0
  %236 = zext i1 %235 to i8
  store i8 %236, i8* %30, align 1
  %237 = lshr i32 %223, 31
  %238 = trunc i32 %237 to i8
  store i8 %238, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v202 = select i1 %235, i64 21, i64 61
  %239 = add i64 %210, %.v202
  store i64 %239, i64* %3, align 8
  br i1 %235, label %block_46cd73, label %block_.L_46cd9b

block_46cd73:                                     ; preds = %block_.L_46cd5e
  %240 = add i64 %239, 3
  store i64 %240, i64* %3, align 8
  %241 = load i32, i32* %214, align 4
  %242 = zext i32 %241 to i64
  store i64 %242, i64* %RDI.i1167, align 8
  %243 = add i64 %211, -20
  %244 = add i64 %239, 6
  store i64 %244, i64* %3, align 8
  %245 = inttoptr i64 %243 to i32*
  %246 = load i32, i32* %245, align 4
  %247 = zext i32 %246 to i64
  store i64 %247, i64* %RSI.i1164, align 8
  %248 = add i64 %239, 4269
  %249 = add i64 %239, 11
  %250 = load i64, i64* %6, align 8
  %251 = add i64 %250, -8
  %252 = inttoptr i64 %251 to i64*
  store i64 %249, i64* %252, align 8
  store i64 %251, i64* %6, align 8
  store i64 %248, i64* %3, align 8
  %call2_46cd79 = tail call %struct.Memory* @sub_46de20.captured_territory(%struct.State* nonnull %0, i64 %248, %struct.Memory* %MEMORY.0)
  %253 = load i32, i32* %EAX.i1161, align 4
  %254 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %255 = and i32 %253, 255
  %256 = tail call i32 @llvm.ctpop.i32(i32 %255)
  %257 = trunc i32 %256 to i8
  %258 = and i8 %257, 1
  %259 = xor i8 %258, 1
  store i8 %259, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %260 = icmp eq i32 %253, 0
  %261 = zext i1 %260 to i8
  store i8 %261, i8* %30, align 1
  %262 = lshr i32 %253, 31
  %263 = trunc i32 %262 to i8
  store i8 %263, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v205 = select i1 %260, i64 9, i64 29
  %264 = add i64 %254, %.v205
  store i64 %264, i64* %3, align 8
  %265 = load i64, i64* %RBP.i, align 8
  br i1 %260, label %block_46cd87, label %block_.L_46cd9b

block_46cd87:                                     ; preds = %block_46cd73
  %266 = add i64 %265, -16
  %267 = add i64 %264, 4
  store i64 %267, i64* %3, align 8
  %268 = inttoptr i64 %266 to i64*
  %269 = load i64, i64* %268, align 8
  store i64 %269, i64* %RAX.i1128, align 8
  %270 = add i64 %265, -24
  %271 = add i64 %264, 8
  store i64 %271, i64* %3, align 8
  %272 = inttoptr i64 %270 to i32*
  %273 = load i32, i32* %272, align 4
  %274 = sext i32 %273 to i64
  store i64 %274, i64* %RCX.i1237, align 8
  %275 = shl nsw i64 %274, 2
  %276 = add i64 %275, %269
  %277 = add i64 %264, 15
  store i64 %277, i64* %3, align 8
  %278 = inttoptr i64 %276 to i32*
  store i32 128, i32* %278, align 4
  %279 = load i64, i64* %3, align 8
  %280 = add i64 %279, 86
  br label %block_.L_46cdec

block_.L_46cd9b:                                  ; preds = %block_46cd73, %block_.L_46cd5e
  %281 = phi i64 [ %239, %block_.L_46cd5e ], [ %264, %block_46cd73 ]
  %282 = phi i64 [ %211, %block_.L_46cd5e ], [ %265, %block_46cd73 ]
  %283 = add i64 %282, -24
  %284 = add i64 %281, 4
  store i64 %284, i64* %3, align 8
  %285 = inttoptr i64 %283 to i32*
  %286 = load i32, i32* %285, align 4
  %287 = sext i32 %286 to i64
  store i64 %287, i64* %RAX.i1128, align 8
  %288 = add nsw i64 %287, 12099168
  %289 = add i64 %281, 12
  store i64 %289, i64* %3, align 8
  %290 = inttoptr i64 %288 to i8*
  %291 = load i8, i8* %290, align 1
  %292 = zext i8 %291 to i64
  store i64 %292, i64* %RCX.i1237, align 8
  %293 = zext i8 %291 to i32
  %294 = add nsw i32 %293, -2
  %295 = icmp ult i8 %291, 2
  %296 = zext i1 %295 to i8
  store i8 %296, i8* %14, align 1
  %297 = and i32 %294, 255
  %298 = tail call i32 @llvm.ctpop.i32(i32 %297)
  %299 = trunc i32 %298 to i8
  %300 = and i8 %299, 1
  %301 = xor i8 %300, 1
  store i8 %301, i8* %21, align 1
  %302 = xor i32 %294, %293
  %303 = lshr i32 %302, 4
  %304 = trunc i32 %303 to i8
  %305 = and i8 %304, 1
  store i8 %305, i8* %27, align 1
  %306 = icmp eq i32 %294, 0
  %307 = zext i1 %306 to i8
  store i8 %307, i8* %30, align 1
  %308 = lshr i32 %294, 31
  %309 = trunc i32 %308 to i8
  store i8 %309, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v203 = select i1 %306, i64 21, i64 61
  %310 = add i64 %281, %.v203
  store i64 %310, i64* %3, align 8
  br i1 %306, label %block_46cdb0, label %block_.L_46cdd8

block_46cdb0:                                     ; preds = %block_.L_46cd9b
  %311 = add i64 %310, 3
  store i64 %311, i64* %3, align 8
  %312 = load i32, i32* %285, align 4
  %313 = zext i32 %312 to i64
  store i64 %313, i64* %RDI.i1167, align 8
  %314 = add i64 %282, -20
  %315 = add i64 %310, 6
  store i64 %315, i64* %3, align 8
  %316 = inttoptr i64 %314 to i32*
  %317 = load i32, i32* %316, align 4
  %318 = zext i32 %317 to i64
  store i64 %318, i64* %RSI.i1164, align 8
  %319 = add i64 %310, 4208
  %320 = add i64 %310, 11
  %321 = load i64, i64* %6, align 8
  %322 = add i64 %321, -8
  %323 = inttoptr i64 %322 to i64*
  store i64 %320, i64* %323, align 8
  store i64 %322, i64* %6, align 8
  store i64 %319, i64* %3, align 8
  %call2_46cdb6 = tail call %struct.Memory* @sub_46de20.captured_territory(%struct.State* nonnull %0, i64 %319, %struct.Memory* %MEMORY.0)
  %324 = load i32, i32* %EAX.i1161, align 4
  %325 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %326 = and i32 %324, 255
  %327 = tail call i32 @llvm.ctpop.i32(i32 %326)
  %328 = trunc i32 %327 to i8
  %329 = and i8 %328, 1
  %330 = xor i8 %329, 1
  store i8 %330, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %331 = icmp eq i32 %324, 0
  %332 = zext i1 %331 to i8
  store i8 %332, i8* %30, align 1
  %333 = lshr i32 %324, 31
  %334 = trunc i32 %333 to i8
  store i8 %334, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v204 = select i1 %331, i64 9, i64 29
  %335 = add i64 %325, %.v204
  store i64 %335, i64* %3, align 8
  %336 = load i64, i64* %RBP.i, align 8
  br i1 %331, label %block_46cdc4, label %block_.L_46cdd8

block_46cdc4:                                     ; preds = %block_46cdb0
  %337 = add i64 %336, -16
  %338 = add i64 %335, 4
  store i64 %338, i64* %3, align 8
  %339 = inttoptr i64 %337 to i64*
  %340 = load i64, i64* %339, align 8
  store i64 %340, i64* %RAX.i1128, align 8
  %341 = add i64 %336, -24
  %342 = add i64 %335, 8
  store i64 %342, i64* %3, align 8
  %343 = inttoptr i64 %341 to i32*
  %344 = load i32, i32* %343, align 4
  %345 = sext i32 %344 to i64
  store i64 %345, i64* %RCX.i1237, align 8
  %346 = shl nsw i64 %345, 2
  %347 = add i64 %346, %340
  %348 = add i64 %335, 15
  store i64 %348, i64* %3, align 8
  %349 = inttoptr i64 %347 to i32*
  store i32 -128, i32* %349, align 4
  %350 = load i64, i64* %3, align 8
  %351 = add i64 %350, 20
  store i64 %351, i64* %3, align 8
  br label %block_.L_46cde7

block_.L_46cdd8:                                  ; preds = %block_46cdb0, %block_.L_46cd9b
  %352 = phi i64 [ %310, %block_.L_46cd9b ], [ %335, %block_46cdb0 ]
  %353 = phi i64 [ %282, %block_.L_46cd9b ], [ %336, %block_46cdb0 ]
  %MEMORY.3 = phi %struct.Memory* [ %MEMORY.0, %block_.L_46cd9b ], [ %call2_46cdb6, %block_46cdb0 ]
  %354 = add i64 %353, -16
  %355 = add i64 %352, 4
  store i64 %355, i64* %3, align 8
  %356 = inttoptr i64 %354 to i64*
  %357 = load i64, i64* %356, align 8
  store i64 %357, i64* %RAX.i1128, align 8
  %358 = add i64 %353, -24
  %359 = add i64 %352, 8
  store i64 %359, i64* %3, align 8
  %360 = inttoptr i64 %358 to i32*
  %361 = load i32, i32* %360, align 4
  %362 = sext i32 %361 to i64
  store i64 %362, i64* %RCX.i1237, align 8
  %363 = shl nsw i64 %362, 2
  %364 = add i64 %363, %357
  %365 = add i64 %352, 15
  store i64 %365, i64* %3, align 8
  %366 = inttoptr i64 %364 to i32*
  store i32 0, i32* %366, align 4
  %.pre143 = load i64, i64* %3, align 8
  br label %block_.L_46cde7

block_.L_46cde7:                                  ; preds = %block_.L_46cdd8, %block_46cdc4
  %367 = phi i64 [ %.pre143, %block_.L_46cdd8 ], [ %351, %block_46cdc4 ]
  %MEMORY.4 = phi %struct.Memory* [ %MEMORY.3, %block_.L_46cdd8 ], [ %call2_46cdb6, %block_46cdc4 ]
  %368 = add i64 %367, 5
  store i64 %368, i64* %3, align 8
  br label %block_.L_46cdec

block_.L_46cdec:                                  ; preds = %block_.L_46cde7, %block_46cd87
  %storemerge72 = phi i64 [ %280, %block_46cd87 ], [ %368, %block_.L_46cde7 ]
  %MEMORY.5 = phi %struct.Memory* [ %MEMORY.0, %block_46cd87 ], [ %MEMORY.4, %block_.L_46cde7 ]
  %369 = add i64 %storemerge72, 5
  store i64 %369, i64* %3, align 8
  %.pre144 = load i64, i64* %RBP.i, align 8
  br label %block_.L_46cdf1

block_.L_46cdf1:                                  ; preds = %block_.L_46cdec, %block_46cd1b
  %370 = phi i64 [ %77, %block_46cd1b ], [ %.pre144, %block_.L_46cdec ]
  %storemerge = phi i64 [ %133, %block_46cd1b ], [ %369, %block_.L_46cdec ]
  %MEMORY.6 = phi %struct.Memory* [ %MEMORY.0, %block_46cd1b ], [ %MEMORY.5, %block_.L_46cdec ]
  %371 = add i64 %370, -24
  %372 = add i64 %storemerge, 3
  store i64 %372, i64* %3, align 8
  %373 = inttoptr i64 %371 to i32*
  %374 = load i32, i32* %373, align 4
  %375 = add i32 %374, 1
  %376 = zext i32 %375 to i64
  store i64 %376, i64* %RAX.i1128, align 8
  %377 = icmp eq i32 %374, -1
  %378 = icmp eq i32 %375, 0
  %379 = or i1 %377, %378
  %380 = zext i1 %379 to i8
  store i8 %380, i8* %14, align 1
  %381 = and i32 %375, 255
  %382 = tail call i32 @llvm.ctpop.i32(i32 %381)
  %383 = trunc i32 %382 to i8
  %384 = and i8 %383, 1
  %385 = xor i8 %384, 1
  store i8 %385, i8* %21, align 1
  %386 = xor i32 %375, %374
  %387 = lshr i32 %386, 4
  %388 = trunc i32 %387 to i8
  %389 = and i8 %388, 1
  store i8 %389, i8* %27, align 1
  %390 = zext i1 %378 to i8
  store i8 %390, i8* %30, align 1
  %391 = lshr i32 %375, 31
  %392 = trunc i32 %391 to i8
  store i8 %392, i8* %33, align 1
  %393 = lshr i32 %374, 31
  %394 = xor i32 %391, %393
  %395 = add nuw nsw i32 %394, %391
  %396 = icmp eq i32 %395, 2
  %397 = zext i1 %396 to i8
  store i8 %397, i8* %39, align 1
  %398 = add i64 %storemerge, 9
  store i64 %398, i64* %3, align 8
  store i32 %375, i32* %373, align 4
  %399 = load i64, i64* %3, align 8
  %400 = add i64 %399, -257
  store i64 %400, i64* %3, align 8
  br label %block_.L_46ccf9

block_.L_46cdff:                                  ; preds = %block_.L_46ccf9
  store i64 1600, i64* %RAX.i1128, align 8
  store i64 1600, i64* %RDX.i1252, align 8
  %401 = add i64 %77, -1632
  store i64 %401, i64* %RCX.i1237, align 8
  %402 = add i64 %77, -16
  %403 = add i64 %106, 18
  store i64 %403, i64* %3, align 8
  %404 = inttoptr i64 %402 to i64*
  %405 = load i64, i64* %404, align 8
  store i64 %405, i64* %RSI.i1164, align 8
  store i64 %401, i64* %RDI.i1167, align 8
  %406 = add i64 %106, -441615
  %407 = add i64 %106, 26
  %408 = load i64, i64* %6, align 8
  %409 = add i64 %408, -8
  %410 = inttoptr i64 %409 to i64*
  store i64 %407, i64* %410, align 8
  store i64 %409, i64* %6, align 8
  store i64 %406, i64* %3, align 8
  %411 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @memcpy to i64), %struct.Memory* %MEMORY.0)
  %412 = load i64, i64* %RBP.i, align 8
  %413 = add i64 %412, -1636
  %414 = load i64, i64* %3, align 8
  %415 = add i64 %414, 10
  store i64 %415, i64* %3, align 8
  %416 = inttoptr i64 %413 to i32*
  store i32 0, i32* %416, align 4
  %.pre104 = load i64, i64* %3, align 8
  br label %block_.L_46ce23

block_.L_46ce23:                                  ; preds = %block_.L_46d259, %block_.L_46cdff
  %417 = phi i64 [ %.pre104, %block_.L_46cdff ], [ %2451, %block_.L_46d259 ]
  %MEMORY.7 = phi %struct.Memory* [ %411, %block_.L_46cdff ], [ %2419, %block_.L_46d259 ]
  %418 = load i64, i64* %RBP.i, align 8
  %419 = add i64 %418, -1636
  %420 = add i64 %417, 6
  store i64 %420, i64* %3, align 8
  %421 = inttoptr i64 %419 to i32*
  %422 = load i32, i32* %421, align 4
  %423 = zext i32 %422 to i64
  store i64 %423, i64* %RAX.i1128, align 8
  %424 = add i64 %418, -4
  %425 = add i64 %417, 9
  store i64 %425, i64* %3, align 8
  %426 = inttoptr i64 %424 to i32*
  %427 = load i32, i32* %426, align 4
  %428 = sub i32 %422, %427
  %429 = icmp ult i32 %422, %427
  %430 = zext i1 %429 to i8
  store i8 %430, i8* %14, align 1
  %431 = and i32 %428, 255
  %432 = tail call i32 @llvm.ctpop.i32(i32 %431)
  %433 = trunc i32 %432 to i8
  %434 = and i8 %433, 1
  %435 = xor i8 %434, 1
  store i8 %435, i8* %21, align 1
  %436 = xor i32 %427, %422
  %437 = xor i32 %436, %428
  %438 = lshr i32 %437, 4
  %439 = trunc i32 %438 to i8
  %440 = and i8 %439, 1
  store i8 %440, i8* %27, align 1
  %441 = icmp eq i32 %428, 0
  %442 = zext i1 %441 to i8
  store i8 %442, i8* %30, align 1
  %443 = lshr i32 %428, 31
  %444 = trunc i32 %443 to i8
  store i8 %444, i8* %33, align 1
  %445 = lshr i32 %422, 31
  %446 = lshr i32 %427, 31
  %447 = xor i32 %446, %445
  %448 = xor i32 %443, %445
  %449 = add nuw nsw i32 %448, %447
  %450 = icmp eq i32 %449, 2
  %451 = zext i1 %450 to i8
  store i8 %451, i8* %39, align 1
  %452 = icmp ne i8 %444, 0
  %453 = xor i1 %452, %450
  %.v152 = select i1 %453, i64 15, i64 1127
  %454 = add i64 %417, %.v152
  store i64 %454, i64* %3, align 8
  br i1 %453, label %block_46ce32, label %block_.L_46d28a

block_46ce32:                                     ; preds = %block_.L_46ce23
  %455 = add i64 %418, -24
  %456 = add i64 %454, 7
  store i64 %456, i64* %3, align 8
  %457 = inttoptr i64 %455 to i32*
  store i32 21, i32* %457, align 4
  %.pre123 = load i64, i64* %3, align 8
  br label %block_.L_46ce39

block_.L_46ce39:                                  ; preds = %block_.L_46d24b, %block_46ce32
  %458 = phi i64 [ %2408, %block_.L_46d24b ], [ %.pre123, %block_46ce32 ]
  %459 = load i64, i64* %RBP.i, align 8
  %460 = add i64 %459, -24
  %461 = add i64 %458, 7
  store i64 %461, i64* %3, align 8
  %462 = inttoptr i64 %460 to i32*
  %463 = load i32, i32* %462, align 4
  %464 = add i32 %463, -400
  %465 = icmp ult i32 %463, 400
  %466 = zext i1 %465 to i8
  store i8 %466, i8* %14, align 1
  %467 = and i32 %464, 255
  %468 = tail call i32 @llvm.ctpop.i32(i32 %467)
  %469 = trunc i32 %468 to i8
  %470 = and i8 %469, 1
  %471 = xor i8 %470, 1
  store i8 %471, i8* %21, align 1
  %472 = xor i32 %463, 16
  %473 = xor i32 %472, %464
  %474 = lshr i32 %473, 4
  %475 = trunc i32 %474 to i8
  %476 = and i8 %475, 1
  store i8 %476, i8* %27, align 1
  %477 = icmp eq i32 %464, 0
  %478 = zext i1 %477 to i8
  store i8 %478, i8* %30, align 1
  %479 = lshr i32 %464, 31
  %480 = trunc i32 %479 to i8
  store i8 %480, i8* %33, align 1
  %481 = lshr i32 %463, 31
  %482 = xor i32 %479, %481
  %483 = add nuw nsw i32 %482, %481
  %484 = icmp eq i32 %483, 2
  %485 = zext i1 %484 to i8
  store i8 %485, i8* %39, align 1
  %486 = icmp ne i8 %480, 0
  %487 = xor i1 %486, %484
  %.v172 = select i1 %487, i64 13, i64 1056
  %488 = add i64 %458, %.v172
  store i64 %488, i64* %3, align 8
  br i1 %487, label %block_46ce46, label %block_.L_46d259

block_46ce46:                                     ; preds = %block_.L_46ce39
  %489 = add i64 %488, 4
  store i64 %489, i64* %3, align 8
  %490 = load i32, i32* %462, align 4
  %491 = sext i32 %490 to i64
  store i64 %491, i64* %RAX.i1128, align 8
  %492 = add nsw i64 %491, 12099168
  %493 = add i64 %488, 12
  store i64 %493, i64* %3, align 8
  %494 = inttoptr i64 %492 to i8*
  %495 = load i8, i8* %494, align 1
  %496 = zext i8 %495 to i64
  store i64 %496, i64* %RCX.i1237, align 8
  %497 = zext i8 %495 to i32
  %498 = add nsw i32 %497, -3
  %499 = icmp ult i8 %495, 3
  %500 = zext i1 %499 to i8
  store i8 %500, i8* %14, align 1
  %501 = and i32 %498, 255
  %502 = tail call i32 @llvm.ctpop.i32(i32 %501)
  %503 = trunc i32 %502 to i8
  %504 = and i8 %503, 1
  %505 = xor i8 %504, 1
  store i8 %505, i8* %21, align 1
  %506 = xor i32 %498, %497
  %507 = lshr i32 %506, 4
  %508 = trunc i32 %507 to i8
  %509 = and i8 %508, 1
  store i8 %509, i8* %27, align 1
  %510 = icmp eq i32 %498, 0
  %511 = zext i1 %510 to i8
  store i8 %511, i8* %30, align 1
  %512 = lshr i32 %498, 31
  %513 = trunc i32 %512 to i8
  store i8 %513, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v173 = select i1 %510, i64 21, i64 26
  %514 = add i64 %488, %.v173
  store i64 %514, i64* %3, align 8
  br i1 %510, label %block_46ce5b, label %block_.L_46ce60

block_46ce5b:                                     ; preds = %block_46ce46
  %515 = add i64 %514, 1008
  br label %block_.L_46d24b

block_.L_46ce60:                                  ; preds = %block_46ce46
  %516 = add i64 %459, -16
  %517 = add i64 %514, 4
  store i64 %517, i64* %3, align 8
  %518 = inttoptr i64 %516 to i64*
  %519 = load i64, i64* %518, align 8
  store i64 %519, i64* %RAX.i1128, align 8
  %520 = add i64 %514, 8
  store i64 %520, i64* %3, align 8
  %521 = load i32, i32* %462, align 4
  %522 = sext i32 %521 to i64
  store i64 %522, i64* %RCX.i1237, align 8
  %523 = shl nsw i64 %522, 2
  %524 = add i64 %523, %519
  %525 = add i64 %514, 12
  store i64 %525, i64* %3, align 8
  %526 = inttoptr i64 %524 to i32*
  %527 = load i32, i32* %526, align 4
  store i8 0, i8* %14, align 1
  %528 = and i32 %527, 255
  %529 = tail call i32 @llvm.ctpop.i32(i32 %528)
  %530 = trunc i32 %529 to i8
  %531 = and i8 %530, 1
  %532 = xor i8 %531, 1
  store i8 %532, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %533 = icmp eq i32 %527, 0
  %534 = zext i1 %533 to i8
  store i8 %534, i8* %30, align 1
  %535 = lshr i32 %527, 31
  %536 = trunc i32 %535 to i8
  store i8 %536, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %537 = icmp ne i8 %536, 0
  %.v82 = select i1 %537, i64 487, i64 6
  %538 = add i64 %525, %.v82
  store i64 %538, i64* %3, align 8
  br i1 %537, label %block_.L_46d053, label %block_46ce72

block_46ce72:                                     ; preds = %block_.L_46ce60
  %539 = add i64 %538, 3
  store i64 %539, i64* %3, align 8
  %540 = load i32, i32* %462, align 4
  %541 = add i32 %540, 20
  %542 = zext i32 %541 to i64
  store i64 %542, i64* %RAX.i1128, align 8
  %543 = icmp ugt i32 %540, -21
  %544 = zext i1 %543 to i8
  store i8 %544, i8* %14, align 1
  %545 = and i32 %541, 255
  %546 = tail call i32 @llvm.ctpop.i32(i32 %545)
  %547 = trunc i32 %546 to i8
  %548 = and i8 %547, 1
  %549 = xor i8 %548, 1
  store i8 %549, i8* %21, align 1
  %550 = xor i32 %540, 16
  %551 = xor i32 %550, %541
  %552 = lshr i32 %551, 4
  %553 = trunc i32 %552 to i8
  %554 = and i8 %553, 1
  store i8 %554, i8* %27, align 1
  %555 = icmp eq i32 %541, 0
  %556 = zext i1 %555 to i8
  store i8 %556, i8* %30, align 1
  %557 = lshr i32 %541, 31
  %558 = trunc i32 %557 to i8
  store i8 %558, i8* %33, align 1
  %559 = lshr i32 %540, 31
  %560 = xor i32 %557, %559
  %561 = add nuw nsw i32 %560, %557
  %562 = icmp eq i32 %561, 2
  %563 = zext i1 %562 to i8
  store i8 %563, i8* %39, align 1
  %564 = sext i32 %541 to i64
  store i64 %564, i64* %RCX.i1237, align 8
  %565 = add nsw i64 %564, 12099168
  %566 = add i64 %538, 17
  store i64 %566, i64* %3, align 8
  %567 = inttoptr i64 %565 to i8*
  %568 = load i8, i8* %567, align 1
  %569 = zext i8 %568 to i64
  store i64 %569, i64* %RAX.i1128, align 8
  %570 = zext i8 %568 to i32
  %571 = add nsw i32 %570, -3
  %572 = icmp ult i8 %568, 3
  %573 = zext i1 %572 to i8
  store i8 %573, i8* %14, align 1
  %574 = and i32 %571, 255
  %575 = tail call i32 @llvm.ctpop.i32(i32 %574)
  %576 = trunc i32 %575 to i8
  %577 = and i8 %576, 1
  %578 = xor i8 %577, 1
  store i8 %578, i8* %21, align 1
  %579 = xor i32 %571, %570
  %580 = lshr i32 %579, 4
  %581 = trunc i32 %580 to i8
  %582 = and i8 %581, 1
  store i8 %582, i8* %27, align 1
  %583 = icmp eq i32 %571, 0
  %584 = zext i1 %583 to i8
  store i8 %584, i8* %30, align 1
  %585 = lshr i32 %571, 31
  %586 = trunc i32 %585 to i8
  store i8 %586, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v174 = select i1 %583, i64 49, i64 26
  %587 = add i64 %538, %.v174
  store i64 %587, i64* %3, align 8
  br i1 %583, label %block_.L_46cea3, label %block_46ce8c

block_46ce8c:                                     ; preds = %block_46ce72
  %588 = add i64 %587, 4
  store i64 %588, i64* %3, align 8
  %589 = load i64, i64* %518, align 8
  store i64 %589, i64* %RAX.i1128, align 8
  %590 = add i64 %587, 7
  store i64 %590, i64* %3, align 8
  %591 = load i32, i32* %462, align 4
  %592 = add i32 %591, 20
  %593 = zext i32 %592 to i64
  store i64 %593, i64* %RCX.i1237, align 8
  %594 = icmp ugt i32 %591, -21
  %595 = zext i1 %594 to i8
  store i8 %595, i8* %14, align 1
  %596 = and i32 %592, 255
  %597 = tail call i32 @llvm.ctpop.i32(i32 %596)
  %598 = trunc i32 %597 to i8
  %599 = and i8 %598, 1
  %600 = xor i8 %599, 1
  store i8 %600, i8* %21, align 1
  %601 = xor i32 %591, 16
  %602 = xor i32 %601, %592
  %603 = lshr i32 %602, 4
  %604 = trunc i32 %603 to i8
  %605 = and i8 %604, 1
  store i8 %605, i8* %27, align 1
  %606 = icmp eq i32 %592, 0
  %607 = zext i1 %606 to i8
  store i8 %607, i8* %30, align 1
  %608 = lshr i32 %592, 31
  %609 = trunc i32 %608 to i8
  store i8 %609, i8* %33, align 1
  %610 = lshr i32 %591, 31
  %611 = xor i32 %608, %610
  %612 = add nuw nsw i32 %611, %608
  %613 = icmp eq i32 %612, 2
  %614 = zext i1 %613 to i8
  store i8 %614, i8* %39, align 1
  %615 = sext i32 %592 to i64
  store i64 %615, i64* %RDX.i1252, align 8
  %616 = shl nsw i64 %615, 2
  %617 = add i64 %589, %616
  %618 = add i64 %587, 17
  store i64 %618, i64* %3, align 8
  %619 = inttoptr i64 %617 to i32*
  %620 = load i32, i32* %619, align 4
  store i8 0, i8* %14, align 1
  %621 = and i32 %620, 255
  %622 = tail call i32 @llvm.ctpop.i32(i32 %621)
  %623 = trunc i32 %622 to i8
  %624 = and i8 %623, 1
  %625 = xor i8 %624, 1
  store i8 %625, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %626 = icmp eq i32 %620, 0
  %627 = zext i1 %626 to i8
  store i8 %627, i8* %30, align 1
  %628 = lshr i32 %620, 31
  %629 = trunc i32 %628 to i8
  store i8 %629, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %630 = icmp ne i8 %629, 0
  %.v83 = select i1 %630, i64 438, i64 6
  %631 = add i64 %618, %.v83
  store i64 %631, i64* %3, align 8
  br i1 %630, label %block_.L_46d053, label %block_.L_46cea3

block_.L_46cea3:                                  ; preds = %block_46ce8c, %block_46ce72
  %632 = phi i64 [ %631, %block_46ce8c ], [ %587, %block_46ce72 ]
  %633 = add i64 %632, 3
  store i64 %633, i64* %3, align 8
  %634 = load i32, i32* %462, align 4
  %635 = add i32 %634, -1
  %636 = zext i32 %635 to i64
  store i64 %636, i64* %RAX.i1128, align 8
  %637 = icmp eq i32 %634, 0
  %638 = zext i1 %637 to i8
  store i8 %638, i8* %14, align 1
  %639 = and i32 %635, 255
  %640 = tail call i32 @llvm.ctpop.i32(i32 %639)
  %641 = trunc i32 %640 to i8
  %642 = and i8 %641, 1
  %643 = xor i8 %642, 1
  store i8 %643, i8* %21, align 1
  %644 = xor i32 %635, %634
  %645 = lshr i32 %644, 4
  %646 = trunc i32 %645 to i8
  %647 = and i8 %646, 1
  store i8 %647, i8* %27, align 1
  %648 = icmp eq i32 %635, 0
  %649 = zext i1 %648 to i8
  store i8 %649, i8* %30, align 1
  %650 = lshr i32 %635, 31
  %651 = trunc i32 %650 to i8
  store i8 %651, i8* %33, align 1
  %652 = lshr i32 %634, 31
  %653 = xor i32 %650, %652
  %654 = add nuw nsw i32 %653, %652
  %655 = icmp eq i32 %654, 2
  %656 = zext i1 %655 to i8
  store i8 %656, i8* %39, align 1
  %657 = sext i32 %635 to i64
  store i64 %657, i64* %RCX.i1237, align 8
  %658 = add nsw i64 %657, 12099168
  %659 = add i64 %632, 17
  store i64 %659, i64* %3, align 8
  %660 = inttoptr i64 %658 to i8*
  %661 = load i8, i8* %660, align 1
  %662 = zext i8 %661 to i64
  store i64 %662, i64* %RAX.i1128, align 8
  %663 = zext i8 %661 to i32
  %664 = add nsw i32 %663, -3
  %665 = icmp ult i8 %661, 3
  %666 = zext i1 %665 to i8
  store i8 %666, i8* %14, align 1
  %667 = and i32 %664, 255
  %668 = tail call i32 @llvm.ctpop.i32(i32 %667)
  %669 = trunc i32 %668 to i8
  %670 = and i8 %669, 1
  %671 = xor i8 %670, 1
  store i8 %671, i8* %21, align 1
  %672 = xor i32 %664, %663
  %673 = lshr i32 %672, 4
  %674 = trunc i32 %673 to i8
  %675 = and i8 %674, 1
  store i8 %675, i8* %27, align 1
  %676 = icmp eq i32 %664, 0
  %677 = zext i1 %676 to i8
  store i8 %677, i8* %30, align 1
  %678 = lshr i32 %664, 31
  %679 = trunc i32 %678 to i8
  store i8 %679, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v175 = select i1 %676, i64 49, i64 26
  %680 = add i64 %632, %.v175
  store i64 %680, i64* %3, align 8
  br i1 %676, label %block_.L_46ced4, label %block_46cebd

block_46cebd:                                     ; preds = %block_.L_46cea3
  %681 = add i64 %680, 4
  store i64 %681, i64* %3, align 8
  %682 = load i64, i64* %518, align 8
  store i64 %682, i64* %RAX.i1128, align 8
  %683 = add i64 %680, 7
  store i64 %683, i64* %3, align 8
  %684 = load i32, i32* %462, align 4
  %685 = add i32 %684, -1
  %686 = zext i32 %685 to i64
  store i64 %686, i64* %RCX.i1237, align 8
  %687 = icmp eq i32 %684, 0
  %688 = zext i1 %687 to i8
  store i8 %688, i8* %14, align 1
  %689 = and i32 %685, 255
  %690 = tail call i32 @llvm.ctpop.i32(i32 %689)
  %691 = trunc i32 %690 to i8
  %692 = and i8 %691, 1
  %693 = xor i8 %692, 1
  store i8 %693, i8* %21, align 1
  %694 = xor i32 %685, %684
  %695 = lshr i32 %694, 4
  %696 = trunc i32 %695 to i8
  %697 = and i8 %696, 1
  store i8 %697, i8* %27, align 1
  %698 = icmp eq i32 %685, 0
  %699 = zext i1 %698 to i8
  store i8 %699, i8* %30, align 1
  %700 = lshr i32 %685, 31
  %701 = trunc i32 %700 to i8
  store i8 %701, i8* %33, align 1
  %702 = lshr i32 %684, 31
  %703 = xor i32 %700, %702
  %704 = add nuw nsw i32 %703, %702
  %705 = icmp eq i32 %704, 2
  %706 = zext i1 %705 to i8
  store i8 %706, i8* %39, align 1
  %707 = sext i32 %685 to i64
  store i64 %707, i64* %RDX.i1252, align 8
  %708 = shl nsw i64 %707, 2
  %709 = add i64 %682, %708
  %710 = add i64 %680, 17
  store i64 %710, i64* %3, align 8
  %711 = inttoptr i64 %709 to i32*
  %712 = load i32, i32* %711, align 4
  store i8 0, i8* %14, align 1
  %713 = and i32 %712, 255
  %714 = tail call i32 @llvm.ctpop.i32(i32 %713)
  %715 = trunc i32 %714 to i8
  %716 = and i8 %715, 1
  %717 = xor i8 %716, 1
  store i8 %717, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %718 = icmp eq i32 %712, 0
  %719 = zext i1 %718 to i8
  store i8 %719, i8* %30, align 1
  %720 = lshr i32 %712, 31
  %721 = trunc i32 %720 to i8
  store i8 %721, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %722 = icmp ne i8 %721, 0
  %.v84 = select i1 %722, i64 389, i64 6
  %723 = add i64 %710, %.v84
  store i64 %723, i64* %3, align 8
  br i1 %722, label %block_.L_46d053, label %block_.L_46ced4

block_.L_46ced4:                                  ; preds = %block_46cebd, %block_.L_46cea3
  %724 = phi i64 [ %723, %block_46cebd ], [ %680, %block_.L_46cea3 ]
  %725 = add i64 %724, 3
  store i64 %725, i64* %3, align 8
  %726 = load i32, i32* %462, align 4
  %727 = add i32 %726, -20
  %728 = zext i32 %727 to i64
  store i64 %728, i64* %RAX.i1128, align 8
  %729 = icmp ult i32 %726, 20
  %730 = zext i1 %729 to i8
  store i8 %730, i8* %14, align 1
  %731 = and i32 %727, 255
  %732 = tail call i32 @llvm.ctpop.i32(i32 %731)
  %733 = trunc i32 %732 to i8
  %734 = and i8 %733, 1
  %735 = xor i8 %734, 1
  store i8 %735, i8* %21, align 1
  %736 = xor i32 %726, 16
  %737 = xor i32 %736, %727
  %738 = lshr i32 %737, 4
  %739 = trunc i32 %738 to i8
  %740 = and i8 %739, 1
  store i8 %740, i8* %27, align 1
  %741 = icmp eq i32 %727, 0
  %742 = zext i1 %741 to i8
  store i8 %742, i8* %30, align 1
  %743 = lshr i32 %727, 31
  %744 = trunc i32 %743 to i8
  store i8 %744, i8* %33, align 1
  %745 = lshr i32 %726, 31
  %746 = xor i32 %743, %745
  %747 = add nuw nsw i32 %746, %745
  %748 = icmp eq i32 %747, 2
  %749 = zext i1 %748 to i8
  store i8 %749, i8* %39, align 1
  %750 = sext i32 %727 to i64
  store i64 %750, i64* %RCX.i1237, align 8
  %751 = add nsw i64 %750, 12099168
  %752 = add i64 %724, 17
  store i64 %752, i64* %3, align 8
  %753 = inttoptr i64 %751 to i8*
  %754 = load i8, i8* %753, align 1
  %755 = zext i8 %754 to i64
  store i64 %755, i64* %RAX.i1128, align 8
  %756 = zext i8 %754 to i32
  %757 = add nsw i32 %756, -3
  %758 = icmp ult i8 %754, 3
  %759 = zext i1 %758 to i8
  store i8 %759, i8* %14, align 1
  %760 = and i32 %757, 255
  %761 = tail call i32 @llvm.ctpop.i32(i32 %760)
  %762 = trunc i32 %761 to i8
  %763 = and i8 %762, 1
  %764 = xor i8 %763, 1
  store i8 %764, i8* %21, align 1
  %765 = xor i32 %757, %756
  %766 = lshr i32 %765, 4
  %767 = trunc i32 %766 to i8
  %768 = and i8 %767, 1
  store i8 %768, i8* %27, align 1
  %769 = icmp eq i32 %757, 0
  %770 = zext i1 %769 to i8
  store i8 %770, i8* %30, align 1
  %771 = lshr i32 %757, 31
  %772 = trunc i32 %771 to i8
  store i8 %772, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v176 = select i1 %769, i64 49, i64 26
  %773 = add i64 %724, %.v176
  store i64 %773, i64* %3, align 8
  br i1 %769, label %block_.L_46cf05, label %block_46ceee

block_46ceee:                                     ; preds = %block_.L_46ced4
  %774 = add i64 %773, 4
  store i64 %774, i64* %3, align 8
  %775 = load i64, i64* %518, align 8
  store i64 %775, i64* %RAX.i1128, align 8
  %776 = add i64 %773, 7
  store i64 %776, i64* %3, align 8
  %777 = load i32, i32* %462, align 4
  %778 = add i32 %777, -20
  %779 = zext i32 %778 to i64
  store i64 %779, i64* %RCX.i1237, align 8
  %780 = icmp ult i32 %777, 20
  %781 = zext i1 %780 to i8
  store i8 %781, i8* %14, align 1
  %782 = and i32 %778, 255
  %783 = tail call i32 @llvm.ctpop.i32(i32 %782)
  %784 = trunc i32 %783 to i8
  %785 = and i8 %784, 1
  %786 = xor i8 %785, 1
  store i8 %786, i8* %21, align 1
  %787 = xor i32 %777, 16
  %788 = xor i32 %787, %778
  %789 = lshr i32 %788, 4
  %790 = trunc i32 %789 to i8
  %791 = and i8 %790, 1
  store i8 %791, i8* %27, align 1
  %792 = icmp eq i32 %778, 0
  %793 = zext i1 %792 to i8
  store i8 %793, i8* %30, align 1
  %794 = lshr i32 %778, 31
  %795 = trunc i32 %794 to i8
  store i8 %795, i8* %33, align 1
  %796 = lshr i32 %777, 31
  %797 = xor i32 %794, %796
  %798 = add nuw nsw i32 %797, %796
  %799 = icmp eq i32 %798, 2
  %800 = zext i1 %799 to i8
  store i8 %800, i8* %39, align 1
  %801 = sext i32 %778 to i64
  store i64 %801, i64* %RDX.i1252, align 8
  %802 = shl nsw i64 %801, 2
  %803 = add i64 %775, %802
  %804 = add i64 %773, 17
  store i64 %804, i64* %3, align 8
  %805 = inttoptr i64 %803 to i32*
  %806 = load i32, i32* %805, align 4
  store i8 0, i8* %14, align 1
  %807 = and i32 %806, 255
  %808 = tail call i32 @llvm.ctpop.i32(i32 %807)
  %809 = trunc i32 %808 to i8
  %810 = and i8 %809, 1
  %811 = xor i8 %810, 1
  store i8 %811, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %812 = icmp eq i32 %806, 0
  %813 = zext i1 %812 to i8
  store i8 %813, i8* %30, align 1
  %814 = lshr i32 %806, 31
  %815 = trunc i32 %814 to i8
  store i8 %815, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %816 = icmp ne i8 %815, 0
  %.v85 = select i1 %816, i64 340, i64 6
  %817 = add i64 %804, %.v85
  store i64 %817, i64* %3, align 8
  br i1 %816, label %block_.L_46d053, label %block_.L_46cf05

block_.L_46cf05:                                  ; preds = %block_46ceee, %block_.L_46ced4
  %818 = phi i64 [ %817, %block_46ceee ], [ %773, %block_.L_46ced4 ]
  %819 = add i64 %818, 3
  store i64 %819, i64* %3, align 8
  %820 = load i32, i32* %462, align 4
  %821 = add i32 %820, 1
  %822 = zext i32 %821 to i64
  store i64 %822, i64* %RAX.i1128, align 8
  %823 = icmp eq i32 %820, -1
  %824 = icmp eq i32 %821, 0
  %825 = or i1 %823, %824
  %826 = zext i1 %825 to i8
  store i8 %826, i8* %14, align 1
  %827 = and i32 %821, 255
  %828 = tail call i32 @llvm.ctpop.i32(i32 %827)
  %829 = trunc i32 %828 to i8
  %830 = and i8 %829, 1
  %831 = xor i8 %830, 1
  store i8 %831, i8* %21, align 1
  %832 = xor i32 %821, %820
  %833 = lshr i32 %832, 4
  %834 = trunc i32 %833 to i8
  %835 = and i8 %834, 1
  store i8 %835, i8* %27, align 1
  %836 = zext i1 %824 to i8
  store i8 %836, i8* %30, align 1
  %837 = lshr i32 %821, 31
  %838 = trunc i32 %837 to i8
  store i8 %838, i8* %33, align 1
  %839 = lshr i32 %820, 31
  %840 = xor i32 %837, %839
  %841 = add nuw nsw i32 %840, %837
  %842 = icmp eq i32 %841, 2
  %843 = zext i1 %842 to i8
  store i8 %843, i8* %39, align 1
  %844 = sext i32 %821 to i64
  store i64 %844, i64* %RCX.i1237, align 8
  %845 = add nsw i64 %844, 12099168
  %846 = add i64 %818, 17
  store i64 %846, i64* %3, align 8
  %847 = inttoptr i64 %845 to i8*
  %848 = load i8, i8* %847, align 1
  %849 = zext i8 %848 to i64
  store i64 %849, i64* %RAX.i1128, align 8
  %850 = zext i8 %848 to i32
  %851 = add nsw i32 %850, -3
  %852 = icmp ult i8 %848, 3
  %853 = zext i1 %852 to i8
  store i8 %853, i8* %14, align 1
  %854 = and i32 %851, 255
  %855 = tail call i32 @llvm.ctpop.i32(i32 %854)
  %856 = trunc i32 %855 to i8
  %857 = and i8 %856, 1
  %858 = xor i8 %857, 1
  store i8 %858, i8* %21, align 1
  %859 = xor i32 %851, %850
  %860 = lshr i32 %859, 4
  %861 = trunc i32 %860 to i8
  %862 = and i8 %861, 1
  store i8 %862, i8* %27, align 1
  %863 = icmp eq i32 %851, 0
  %864 = zext i1 %863 to i8
  store i8 %864, i8* %30, align 1
  %865 = lshr i32 %851, 31
  %866 = trunc i32 %865 to i8
  store i8 %866, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v177 = select i1 %863, i64 49, i64 26
  %867 = add i64 %818, %.v177
  store i64 %867, i64* %3, align 8
  br i1 %863, label %block_.L_46cf36, label %block_46cf1f

block_46cf1f:                                     ; preds = %block_.L_46cf05
  %868 = add i64 %867, 4
  store i64 %868, i64* %3, align 8
  %869 = load i64, i64* %518, align 8
  store i64 %869, i64* %RAX.i1128, align 8
  %870 = add i64 %867, 7
  store i64 %870, i64* %3, align 8
  %871 = load i32, i32* %462, align 4
  %872 = add i32 %871, 1
  %873 = zext i32 %872 to i64
  store i64 %873, i64* %RCX.i1237, align 8
  %874 = icmp eq i32 %871, -1
  %875 = icmp eq i32 %872, 0
  %876 = or i1 %874, %875
  %877 = zext i1 %876 to i8
  store i8 %877, i8* %14, align 1
  %878 = and i32 %872, 255
  %879 = tail call i32 @llvm.ctpop.i32(i32 %878)
  %880 = trunc i32 %879 to i8
  %881 = and i8 %880, 1
  %882 = xor i8 %881, 1
  store i8 %882, i8* %21, align 1
  %883 = xor i32 %872, %871
  %884 = lshr i32 %883, 4
  %885 = trunc i32 %884 to i8
  %886 = and i8 %885, 1
  store i8 %886, i8* %27, align 1
  %887 = zext i1 %875 to i8
  store i8 %887, i8* %30, align 1
  %888 = lshr i32 %872, 31
  %889 = trunc i32 %888 to i8
  store i8 %889, i8* %33, align 1
  %890 = lshr i32 %871, 31
  %891 = xor i32 %888, %890
  %892 = add nuw nsw i32 %891, %888
  %893 = icmp eq i32 %892, 2
  %894 = zext i1 %893 to i8
  store i8 %894, i8* %39, align 1
  %895 = sext i32 %872 to i64
  store i64 %895, i64* %RDX.i1252, align 8
  %896 = shl nsw i64 %895, 2
  %897 = add i64 %869, %896
  %898 = add i64 %867, 17
  store i64 %898, i64* %3, align 8
  %899 = inttoptr i64 %897 to i32*
  %900 = load i32, i32* %899, align 4
  store i8 0, i8* %14, align 1
  %901 = and i32 %900, 255
  %902 = tail call i32 @llvm.ctpop.i32(i32 %901)
  %903 = trunc i32 %902 to i8
  %904 = and i8 %903, 1
  %905 = xor i8 %904, 1
  store i8 %905, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %906 = icmp eq i32 %900, 0
  %907 = zext i1 %906 to i8
  store i8 %907, i8* %30, align 1
  %908 = lshr i32 %900, 31
  %909 = trunc i32 %908 to i8
  store i8 %909, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %910 = icmp ne i8 %909, 0
  %.v86 = select i1 %910, i64 291, i64 6
  %911 = add i64 %898, %.v86
  store i64 %911, i64* %3, align 8
  br i1 %910, label %block_.L_46d053, label %block_.L_46cf36

block_.L_46cf36:                                  ; preds = %block_46cf1f, %block_.L_46cf05
  %912 = phi i64 [ %911, %block_46cf1f ], [ %867, %block_.L_46cf05 ]
  %913 = add i64 %912, 3
  store i64 %913, i64* %3, align 8
  %914 = load i32, i32* %462, align 4
  %915 = add i32 %914, 20
  %916 = zext i32 %915 to i64
  store i64 %916, i64* %RAX.i1128, align 8
  %917 = icmp ugt i32 %914, -21
  %918 = zext i1 %917 to i8
  store i8 %918, i8* %14, align 1
  %919 = and i32 %915, 255
  %920 = tail call i32 @llvm.ctpop.i32(i32 %919)
  %921 = trunc i32 %920 to i8
  %922 = and i8 %921, 1
  %923 = xor i8 %922, 1
  store i8 %923, i8* %21, align 1
  %924 = xor i32 %914, 16
  %925 = xor i32 %924, %915
  %926 = lshr i32 %925, 4
  %927 = trunc i32 %926 to i8
  %928 = and i8 %927, 1
  store i8 %928, i8* %27, align 1
  %929 = icmp eq i32 %915, 0
  %930 = zext i1 %929 to i8
  store i8 %930, i8* %30, align 1
  %931 = lshr i32 %915, 31
  %932 = trunc i32 %931 to i8
  store i8 %932, i8* %33, align 1
  %933 = lshr i32 %914, 31
  %934 = xor i32 %931, %933
  %935 = add nuw nsw i32 %934, %931
  %936 = icmp eq i32 %935, 2
  %937 = zext i1 %936 to i8
  store i8 %937, i8* %39, align 1
  %938 = sext i32 %915 to i64
  store i64 %938, i64* %RCX.i1237, align 8
  %939 = add nsw i64 %938, 12099168
  %940 = add i64 %912, 17
  store i64 %940, i64* %3, align 8
  %941 = inttoptr i64 %939 to i8*
  %942 = load i8, i8* %941, align 1
  %943 = zext i8 %942 to i64
  store i64 %943, i64* %RAX.i1128, align 8
  %944 = zext i8 %942 to i32
  %945 = add nsw i32 %944, -3
  %946 = icmp ult i8 %942, 3
  %947 = zext i1 %946 to i8
  store i8 %947, i8* %14, align 1
  %948 = and i32 %945, 255
  %949 = tail call i32 @llvm.ctpop.i32(i32 %948)
  %950 = trunc i32 %949 to i8
  %951 = and i8 %950, 1
  %952 = xor i8 %951, 1
  store i8 %952, i8* %21, align 1
  %953 = xor i32 %945, %944
  %954 = lshr i32 %953, 4
  %955 = trunc i32 %954 to i8
  %956 = and i8 %955, 1
  store i8 %956, i8* %27, align 1
  %957 = icmp eq i32 %945, 0
  %958 = zext i1 %957 to i8
  store i8 %958, i8* %30, align 1
  %959 = lshr i32 %945, 31
  %960 = trunc i32 %959 to i8
  store i8 %960, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v178 = select i1 %957, i64 70, i64 26
  %961 = add i64 %912, %.v178
  store i64 %961, i64* %3, align 8
  br i1 %957, label %block_.L_46cf7c, label %block_46cf50

block_46cf50:                                     ; preds = %block_.L_46cf36
  %962 = add i64 %961, 4
  store i64 %962, i64* %3, align 8
  %963 = load i64, i64* %518, align 8
  store i64 %963, i64* %RAX.i1128, align 8
  %964 = add i64 %961, 7
  store i64 %964, i64* %3, align 8
  %965 = load i32, i32* %462, align 4
  %966 = add i32 %965, 20
  %967 = zext i32 %966 to i64
  store i64 %967, i64* %RCX.i1237, align 8
  %968 = icmp ugt i32 %965, -21
  %969 = zext i1 %968 to i8
  store i8 %969, i8* %14, align 1
  %970 = and i32 %966, 255
  %971 = tail call i32 @llvm.ctpop.i32(i32 %970)
  %972 = trunc i32 %971 to i8
  %973 = and i8 %972, 1
  %974 = xor i8 %973, 1
  store i8 %974, i8* %21, align 1
  %975 = xor i32 %965, 16
  %976 = xor i32 %975, %966
  %977 = lshr i32 %976, 4
  %978 = trunc i32 %977 to i8
  %979 = and i8 %978, 1
  store i8 %979, i8* %27, align 1
  %980 = icmp eq i32 %966, 0
  %981 = zext i1 %980 to i8
  store i8 %981, i8* %30, align 1
  %982 = lshr i32 %966, 31
  %983 = trunc i32 %982 to i8
  store i8 %983, i8* %33, align 1
  %984 = lshr i32 %965, 31
  %985 = xor i32 %982, %984
  %986 = add nuw nsw i32 %985, %982
  %987 = icmp eq i32 %986, 2
  %988 = zext i1 %987 to i8
  store i8 %988, i8* %39, align 1
  %989 = sext i32 %966 to i64
  store i64 %989, i64* %RDX.i1252, align 8
  %990 = shl nsw i64 %989, 2
  %991 = add i64 %963, %990
  %992 = add i64 %961, 17
  store i64 %992, i64* %3, align 8
  %993 = inttoptr i64 %991 to i32*
  %994 = load i32, i32* %993, align 4
  store i8 0, i8* %14, align 1
  %995 = and i32 %994, 255
  %996 = tail call i32 @llvm.ctpop.i32(i32 %995)
  %997 = trunc i32 %996 to i8
  %998 = and i8 %997, 1
  %999 = xor i8 %998, 1
  store i8 %999, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1000 = icmp eq i32 %994, 0
  %1001 = zext i1 %1000 to i8
  store i8 %1001, i8* %30, align 1
  %1002 = lshr i32 %994, 31
  %1003 = trunc i32 %1002 to i8
  store i8 %1003, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1004 = icmp ne i8 %1003, 0
  %1005 = or i1 %1000, %1004
  %.v179 = select i1 %1005, i64 44, i64 23
  %1006 = add i64 %961, %.v179
  store i64 %1006, i64* %3, align 8
  br i1 %1005, label %block_.L_46cf7c, label %block_46cf67

block_46cf67:                                     ; preds = %block_46cf50
  %1007 = add i64 %1006, 4
  store i64 %1007, i64* %3, align 8
  %1008 = load i32, i32* %462, align 4
  %1009 = sext i32 %1008 to i64
  store i64 %1009, i64* %RAX.i1128, align 8
  %1010 = shl nsw i64 %1009, 2
  %1011 = add i64 %459, -1632
  %1012 = add i64 %1011, %1010
  %1013 = add i64 %1006, 11
  store i64 %1013, i64* %3, align 8
  %1014 = inttoptr i64 %1012 to i32*
  %1015 = load i32, i32* %1014, align 4
  %1016 = add i32 %1015, 1
  %1017 = zext i32 %1016 to i64
  store i64 %1017, i64* %RCX.i1237, align 8
  %1018 = icmp eq i32 %1015, -1
  %1019 = icmp eq i32 %1016, 0
  %1020 = or i1 %1018, %1019
  %1021 = zext i1 %1020 to i8
  store i8 %1021, i8* %14, align 1
  %1022 = and i32 %1016, 255
  %1023 = tail call i32 @llvm.ctpop.i32(i32 %1022)
  %1024 = trunc i32 %1023 to i8
  %1025 = and i8 %1024, 1
  %1026 = xor i8 %1025, 1
  store i8 %1026, i8* %21, align 1
  %1027 = xor i32 %1016, %1015
  %1028 = lshr i32 %1027, 4
  %1029 = trunc i32 %1028 to i8
  %1030 = and i8 %1029, 1
  store i8 %1030, i8* %27, align 1
  %1031 = zext i1 %1019 to i8
  store i8 %1031, i8* %30, align 1
  %1032 = lshr i32 %1016, 31
  %1033 = trunc i32 %1032 to i8
  store i8 %1033, i8* %33, align 1
  %1034 = lshr i32 %1015, 31
  %1035 = xor i32 %1032, %1034
  %1036 = add nuw nsw i32 %1035, %1032
  %1037 = icmp eq i32 %1036, 2
  %1038 = zext i1 %1037 to i8
  store i8 %1038, i8* %39, align 1
  %1039 = add i64 %1006, 21
  store i64 %1039, i64* %3, align 8
  store i32 %1016, i32* %1014, align 4
  %.pre124 = load i64, i64* %RBP.i, align 8
  %.pre125 = load i64, i64* %3, align 8
  br label %block_.L_46cf7c

block_.L_46cf7c:                                  ; preds = %block_46cf67, %block_46cf50, %block_.L_46cf36
  %1040 = phi i64 [ %.pre125, %block_46cf67 ], [ %1006, %block_46cf50 ], [ %961, %block_.L_46cf36 ]
  %1041 = phi i64 [ %.pre124, %block_46cf67 ], [ %459, %block_46cf50 ], [ %459, %block_.L_46cf36 ]
  %1042 = add i64 %1041, -24
  %1043 = add i64 %1040, 3
  store i64 %1043, i64* %3, align 8
  %1044 = inttoptr i64 %1042 to i32*
  %1045 = load i32, i32* %1044, align 4
  %1046 = add i32 %1045, -1
  %1047 = zext i32 %1046 to i64
  store i64 %1047, i64* %RAX.i1128, align 8
  %1048 = icmp eq i32 %1045, 0
  %1049 = zext i1 %1048 to i8
  store i8 %1049, i8* %14, align 1
  %1050 = and i32 %1046, 255
  %1051 = tail call i32 @llvm.ctpop.i32(i32 %1050)
  %1052 = trunc i32 %1051 to i8
  %1053 = and i8 %1052, 1
  %1054 = xor i8 %1053, 1
  store i8 %1054, i8* %21, align 1
  %1055 = xor i32 %1046, %1045
  %1056 = lshr i32 %1055, 4
  %1057 = trunc i32 %1056 to i8
  %1058 = and i8 %1057, 1
  store i8 %1058, i8* %27, align 1
  %1059 = icmp eq i32 %1046, 0
  %1060 = zext i1 %1059 to i8
  store i8 %1060, i8* %30, align 1
  %1061 = lshr i32 %1046, 31
  %1062 = trunc i32 %1061 to i8
  store i8 %1062, i8* %33, align 1
  %1063 = lshr i32 %1045, 31
  %1064 = xor i32 %1061, %1063
  %1065 = add nuw nsw i32 %1064, %1063
  %1066 = icmp eq i32 %1065, 2
  %1067 = zext i1 %1066 to i8
  store i8 %1067, i8* %39, align 1
  %1068 = sext i32 %1046 to i64
  store i64 %1068, i64* %RCX.i1237, align 8
  %1069 = add nsw i64 %1068, 12099168
  %1070 = add i64 %1040, 17
  store i64 %1070, i64* %3, align 8
  %1071 = inttoptr i64 %1069 to i8*
  %1072 = load i8, i8* %1071, align 1
  %1073 = zext i8 %1072 to i64
  store i64 %1073, i64* %RAX.i1128, align 8
  %1074 = zext i8 %1072 to i32
  %1075 = add nsw i32 %1074, -3
  %1076 = icmp ult i8 %1072, 3
  %1077 = zext i1 %1076 to i8
  store i8 %1077, i8* %14, align 1
  %1078 = and i32 %1075, 255
  %1079 = tail call i32 @llvm.ctpop.i32(i32 %1078)
  %1080 = trunc i32 %1079 to i8
  %1081 = and i8 %1080, 1
  %1082 = xor i8 %1081, 1
  store i8 %1082, i8* %21, align 1
  %1083 = xor i32 %1075, %1074
  %1084 = lshr i32 %1083, 4
  %1085 = trunc i32 %1084 to i8
  %1086 = and i8 %1085, 1
  store i8 %1086, i8* %27, align 1
  %1087 = icmp eq i32 %1075, 0
  %1088 = zext i1 %1087 to i8
  store i8 %1088, i8* %30, align 1
  %1089 = lshr i32 %1075, 31
  %1090 = trunc i32 %1089 to i8
  store i8 %1090, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v180 = select i1 %1087, i64 70, i64 26
  %1091 = add i64 %1040, %.v180
  store i64 %1091, i64* %3, align 8
  br i1 %1087, label %block_.L_46cfc2, label %block_46cf96

block_46cf96:                                     ; preds = %block_.L_46cf7c
  %1092 = add i64 %1041, -16
  %1093 = add i64 %1091, 4
  store i64 %1093, i64* %3, align 8
  %1094 = inttoptr i64 %1092 to i64*
  %1095 = load i64, i64* %1094, align 8
  store i64 %1095, i64* %RAX.i1128, align 8
  %1096 = add i64 %1091, 7
  store i64 %1096, i64* %3, align 8
  %1097 = load i32, i32* %1044, align 4
  %1098 = add i32 %1097, -1
  %1099 = zext i32 %1098 to i64
  store i64 %1099, i64* %RCX.i1237, align 8
  %1100 = icmp eq i32 %1097, 0
  %1101 = zext i1 %1100 to i8
  store i8 %1101, i8* %14, align 1
  %1102 = and i32 %1098, 255
  %1103 = tail call i32 @llvm.ctpop.i32(i32 %1102)
  %1104 = trunc i32 %1103 to i8
  %1105 = and i8 %1104, 1
  %1106 = xor i8 %1105, 1
  store i8 %1106, i8* %21, align 1
  %1107 = xor i32 %1098, %1097
  %1108 = lshr i32 %1107, 4
  %1109 = trunc i32 %1108 to i8
  %1110 = and i8 %1109, 1
  store i8 %1110, i8* %27, align 1
  %1111 = icmp eq i32 %1098, 0
  %1112 = zext i1 %1111 to i8
  store i8 %1112, i8* %30, align 1
  %1113 = lshr i32 %1098, 31
  %1114 = trunc i32 %1113 to i8
  store i8 %1114, i8* %33, align 1
  %1115 = lshr i32 %1097, 31
  %1116 = xor i32 %1113, %1115
  %1117 = add nuw nsw i32 %1116, %1115
  %1118 = icmp eq i32 %1117, 2
  %1119 = zext i1 %1118 to i8
  store i8 %1119, i8* %39, align 1
  %1120 = sext i32 %1098 to i64
  store i64 %1120, i64* %RDX.i1252, align 8
  %1121 = shl nsw i64 %1120, 2
  %1122 = add i64 %1095, %1121
  %1123 = add i64 %1091, 17
  store i64 %1123, i64* %3, align 8
  %1124 = inttoptr i64 %1122 to i32*
  %1125 = load i32, i32* %1124, align 4
  store i8 0, i8* %14, align 1
  %1126 = and i32 %1125, 255
  %1127 = tail call i32 @llvm.ctpop.i32(i32 %1126)
  %1128 = trunc i32 %1127 to i8
  %1129 = and i8 %1128, 1
  %1130 = xor i8 %1129, 1
  store i8 %1130, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1131 = icmp eq i32 %1125, 0
  %1132 = zext i1 %1131 to i8
  store i8 %1132, i8* %30, align 1
  %1133 = lshr i32 %1125, 31
  %1134 = trunc i32 %1133 to i8
  store i8 %1134, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1135 = icmp ne i8 %1134, 0
  %1136 = or i1 %1131, %1135
  %.v181 = select i1 %1136, i64 44, i64 23
  %1137 = add i64 %1091, %.v181
  store i64 %1137, i64* %3, align 8
  br i1 %1136, label %block_.L_46cfc2, label %block_46cfad

block_46cfad:                                     ; preds = %block_46cf96
  %1138 = add i64 %1137, 4
  store i64 %1138, i64* %3, align 8
  %1139 = load i32, i32* %1044, align 4
  %1140 = sext i32 %1139 to i64
  store i64 %1140, i64* %RAX.i1128, align 8
  %1141 = shl nsw i64 %1140, 2
  %1142 = add i64 %1041, -1632
  %1143 = add i64 %1142, %1141
  %1144 = add i64 %1137, 11
  store i64 %1144, i64* %3, align 8
  %1145 = inttoptr i64 %1143 to i32*
  %1146 = load i32, i32* %1145, align 4
  %1147 = add i32 %1146, 1
  %1148 = zext i32 %1147 to i64
  store i64 %1148, i64* %RCX.i1237, align 8
  %1149 = icmp eq i32 %1146, -1
  %1150 = icmp eq i32 %1147, 0
  %1151 = or i1 %1149, %1150
  %1152 = zext i1 %1151 to i8
  store i8 %1152, i8* %14, align 1
  %1153 = and i32 %1147, 255
  %1154 = tail call i32 @llvm.ctpop.i32(i32 %1153)
  %1155 = trunc i32 %1154 to i8
  %1156 = and i8 %1155, 1
  %1157 = xor i8 %1156, 1
  store i8 %1157, i8* %21, align 1
  %1158 = xor i32 %1147, %1146
  %1159 = lshr i32 %1158, 4
  %1160 = trunc i32 %1159 to i8
  %1161 = and i8 %1160, 1
  store i8 %1161, i8* %27, align 1
  %1162 = zext i1 %1150 to i8
  store i8 %1162, i8* %30, align 1
  %1163 = lshr i32 %1147, 31
  %1164 = trunc i32 %1163 to i8
  store i8 %1164, i8* %33, align 1
  %1165 = lshr i32 %1146, 31
  %1166 = xor i32 %1163, %1165
  %1167 = add nuw nsw i32 %1166, %1163
  %1168 = icmp eq i32 %1167, 2
  %1169 = zext i1 %1168 to i8
  store i8 %1169, i8* %39, align 1
  %1170 = add i64 %1137, 21
  store i64 %1170, i64* %3, align 8
  store i32 %1147, i32* %1145, align 4
  %.pre126 = load i64, i64* %RBP.i, align 8
  %.pre127 = load i64, i64* %3, align 8
  br label %block_.L_46cfc2

block_.L_46cfc2:                                  ; preds = %block_46cfad, %block_46cf96, %block_.L_46cf7c
  %1171 = phi i64 [ %.pre127, %block_46cfad ], [ %1137, %block_46cf96 ], [ %1091, %block_.L_46cf7c ]
  %1172 = phi i64 [ %.pre126, %block_46cfad ], [ %1041, %block_46cf96 ], [ %1041, %block_.L_46cf7c ]
  %1173 = add i64 %1172, -24
  %1174 = add i64 %1171, 3
  store i64 %1174, i64* %3, align 8
  %1175 = inttoptr i64 %1173 to i32*
  %1176 = load i32, i32* %1175, align 4
  %1177 = add i32 %1176, -20
  %1178 = zext i32 %1177 to i64
  store i64 %1178, i64* %RAX.i1128, align 8
  %1179 = icmp ult i32 %1176, 20
  %1180 = zext i1 %1179 to i8
  store i8 %1180, i8* %14, align 1
  %1181 = and i32 %1177, 255
  %1182 = tail call i32 @llvm.ctpop.i32(i32 %1181)
  %1183 = trunc i32 %1182 to i8
  %1184 = and i8 %1183, 1
  %1185 = xor i8 %1184, 1
  store i8 %1185, i8* %21, align 1
  %1186 = xor i32 %1176, 16
  %1187 = xor i32 %1186, %1177
  %1188 = lshr i32 %1187, 4
  %1189 = trunc i32 %1188 to i8
  %1190 = and i8 %1189, 1
  store i8 %1190, i8* %27, align 1
  %1191 = icmp eq i32 %1177, 0
  %1192 = zext i1 %1191 to i8
  store i8 %1192, i8* %30, align 1
  %1193 = lshr i32 %1177, 31
  %1194 = trunc i32 %1193 to i8
  store i8 %1194, i8* %33, align 1
  %1195 = lshr i32 %1176, 31
  %1196 = xor i32 %1193, %1195
  %1197 = add nuw nsw i32 %1196, %1195
  %1198 = icmp eq i32 %1197, 2
  %1199 = zext i1 %1198 to i8
  store i8 %1199, i8* %39, align 1
  %1200 = sext i32 %1177 to i64
  store i64 %1200, i64* %RCX.i1237, align 8
  %1201 = add nsw i64 %1200, 12099168
  %1202 = add i64 %1171, 17
  store i64 %1202, i64* %3, align 8
  %1203 = inttoptr i64 %1201 to i8*
  %1204 = load i8, i8* %1203, align 1
  %1205 = zext i8 %1204 to i64
  store i64 %1205, i64* %RAX.i1128, align 8
  %1206 = zext i8 %1204 to i32
  %1207 = add nsw i32 %1206, -3
  %1208 = icmp ult i8 %1204, 3
  %1209 = zext i1 %1208 to i8
  store i8 %1209, i8* %14, align 1
  %1210 = and i32 %1207, 255
  %1211 = tail call i32 @llvm.ctpop.i32(i32 %1210)
  %1212 = trunc i32 %1211 to i8
  %1213 = and i8 %1212, 1
  %1214 = xor i8 %1213, 1
  store i8 %1214, i8* %21, align 1
  %1215 = xor i32 %1207, %1206
  %1216 = lshr i32 %1215, 4
  %1217 = trunc i32 %1216 to i8
  %1218 = and i8 %1217, 1
  store i8 %1218, i8* %27, align 1
  %1219 = icmp eq i32 %1207, 0
  %1220 = zext i1 %1219 to i8
  store i8 %1220, i8* %30, align 1
  %1221 = lshr i32 %1207, 31
  %1222 = trunc i32 %1221 to i8
  store i8 %1222, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v182 = select i1 %1219, i64 70, i64 26
  %1223 = add i64 %1171, %.v182
  store i64 %1223, i64* %3, align 8
  br i1 %1219, label %block_.L_46d008, label %block_46cfdc

block_46cfdc:                                     ; preds = %block_.L_46cfc2
  %1224 = add i64 %1172, -16
  %1225 = add i64 %1223, 4
  store i64 %1225, i64* %3, align 8
  %1226 = inttoptr i64 %1224 to i64*
  %1227 = load i64, i64* %1226, align 8
  store i64 %1227, i64* %RAX.i1128, align 8
  %1228 = add i64 %1223, 7
  store i64 %1228, i64* %3, align 8
  %1229 = load i32, i32* %1175, align 4
  %1230 = add i32 %1229, -20
  %1231 = zext i32 %1230 to i64
  store i64 %1231, i64* %RCX.i1237, align 8
  %1232 = icmp ult i32 %1229, 20
  %1233 = zext i1 %1232 to i8
  store i8 %1233, i8* %14, align 1
  %1234 = and i32 %1230, 255
  %1235 = tail call i32 @llvm.ctpop.i32(i32 %1234)
  %1236 = trunc i32 %1235 to i8
  %1237 = and i8 %1236, 1
  %1238 = xor i8 %1237, 1
  store i8 %1238, i8* %21, align 1
  %1239 = xor i32 %1229, 16
  %1240 = xor i32 %1239, %1230
  %1241 = lshr i32 %1240, 4
  %1242 = trunc i32 %1241 to i8
  %1243 = and i8 %1242, 1
  store i8 %1243, i8* %27, align 1
  %1244 = icmp eq i32 %1230, 0
  %1245 = zext i1 %1244 to i8
  store i8 %1245, i8* %30, align 1
  %1246 = lshr i32 %1230, 31
  %1247 = trunc i32 %1246 to i8
  store i8 %1247, i8* %33, align 1
  %1248 = lshr i32 %1229, 31
  %1249 = xor i32 %1246, %1248
  %1250 = add nuw nsw i32 %1249, %1248
  %1251 = icmp eq i32 %1250, 2
  %1252 = zext i1 %1251 to i8
  store i8 %1252, i8* %39, align 1
  %1253 = sext i32 %1230 to i64
  store i64 %1253, i64* %RDX.i1252, align 8
  %1254 = shl nsw i64 %1253, 2
  %1255 = add i64 %1227, %1254
  %1256 = add i64 %1223, 17
  store i64 %1256, i64* %3, align 8
  %1257 = inttoptr i64 %1255 to i32*
  %1258 = load i32, i32* %1257, align 4
  store i8 0, i8* %14, align 1
  %1259 = and i32 %1258, 255
  %1260 = tail call i32 @llvm.ctpop.i32(i32 %1259)
  %1261 = trunc i32 %1260 to i8
  %1262 = and i8 %1261, 1
  %1263 = xor i8 %1262, 1
  store i8 %1263, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1264 = icmp eq i32 %1258, 0
  %1265 = zext i1 %1264 to i8
  store i8 %1265, i8* %30, align 1
  %1266 = lshr i32 %1258, 31
  %1267 = trunc i32 %1266 to i8
  store i8 %1267, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1268 = icmp ne i8 %1267, 0
  %1269 = or i1 %1264, %1268
  %.v183 = select i1 %1269, i64 44, i64 23
  %1270 = add i64 %1223, %.v183
  store i64 %1270, i64* %3, align 8
  br i1 %1269, label %block_.L_46d008, label %block_46cff3

block_46cff3:                                     ; preds = %block_46cfdc
  %1271 = add i64 %1270, 4
  store i64 %1271, i64* %3, align 8
  %1272 = load i32, i32* %1175, align 4
  %1273 = sext i32 %1272 to i64
  store i64 %1273, i64* %RAX.i1128, align 8
  %1274 = shl nsw i64 %1273, 2
  %1275 = add i64 %1172, -1632
  %1276 = add i64 %1275, %1274
  %1277 = add i64 %1270, 11
  store i64 %1277, i64* %3, align 8
  %1278 = inttoptr i64 %1276 to i32*
  %1279 = load i32, i32* %1278, align 4
  %1280 = add i32 %1279, 1
  %1281 = zext i32 %1280 to i64
  store i64 %1281, i64* %RCX.i1237, align 8
  %1282 = icmp eq i32 %1279, -1
  %1283 = icmp eq i32 %1280, 0
  %1284 = or i1 %1282, %1283
  %1285 = zext i1 %1284 to i8
  store i8 %1285, i8* %14, align 1
  %1286 = and i32 %1280, 255
  %1287 = tail call i32 @llvm.ctpop.i32(i32 %1286)
  %1288 = trunc i32 %1287 to i8
  %1289 = and i8 %1288, 1
  %1290 = xor i8 %1289, 1
  store i8 %1290, i8* %21, align 1
  %1291 = xor i32 %1280, %1279
  %1292 = lshr i32 %1291, 4
  %1293 = trunc i32 %1292 to i8
  %1294 = and i8 %1293, 1
  store i8 %1294, i8* %27, align 1
  %1295 = zext i1 %1283 to i8
  store i8 %1295, i8* %30, align 1
  %1296 = lshr i32 %1280, 31
  %1297 = trunc i32 %1296 to i8
  store i8 %1297, i8* %33, align 1
  %1298 = lshr i32 %1279, 31
  %1299 = xor i32 %1296, %1298
  %1300 = add nuw nsw i32 %1299, %1296
  %1301 = icmp eq i32 %1300, 2
  %1302 = zext i1 %1301 to i8
  store i8 %1302, i8* %39, align 1
  %1303 = add i64 %1270, 21
  store i64 %1303, i64* %3, align 8
  store i32 %1280, i32* %1278, align 4
  %.pre128 = load i64, i64* %RBP.i, align 8
  %.pre129 = load i64, i64* %3, align 8
  br label %block_.L_46d008

block_.L_46d008:                                  ; preds = %block_46cff3, %block_46cfdc, %block_.L_46cfc2
  %1304 = phi i64 [ %.pre129, %block_46cff3 ], [ %1270, %block_46cfdc ], [ %1223, %block_.L_46cfc2 ]
  %1305 = phi i64 [ %.pre128, %block_46cff3 ], [ %1172, %block_46cfdc ], [ %1172, %block_.L_46cfc2 ]
  %1306 = add i64 %1305, -24
  %1307 = add i64 %1304, 3
  store i64 %1307, i64* %3, align 8
  %1308 = inttoptr i64 %1306 to i32*
  %1309 = load i32, i32* %1308, align 4
  %1310 = add i32 %1309, 1
  %1311 = zext i32 %1310 to i64
  store i64 %1311, i64* %RAX.i1128, align 8
  %1312 = icmp eq i32 %1309, -1
  %1313 = icmp eq i32 %1310, 0
  %1314 = or i1 %1312, %1313
  %1315 = zext i1 %1314 to i8
  store i8 %1315, i8* %14, align 1
  %1316 = and i32 %1310, 255
  %1317 = tail call i32 @llvm.ctpop.i32(i32 %1316)
  %1318 = trunc i32 %1317 to i8
  %1319 = and i8 %1318, 1
  %1320 = xor i8 %1319, 1
  store i8 %1320, i8* %21, align 1
  %1321 = xor i32 %1310, %1309
  %1322 = lshr i32 %1321, 4
  %1323 = trunc i32 %1322 to i8
  %1324 = and i8 %1323, 1
  store i8 %1324, i8* %27, align 1
  %1325 = zext i1 %1313 to i8
  store i8 %1325, i8* %30, align 1
  %1326 = lshr i32 %1310, 31
  %1327 = trunc i32 %1326 to i8
  store i8 %1327, i8* %33, align 1
  %1328 = lshr i32 %1309, 31
  %1329 = xor i32 %1326, %1328
  %1330 = add nuw nsw i32 %1329, %1326
  %1331 = icmp eq i32 %1330, 2
  %1332 = zext i1 %1331 to i8
  store i8 %1332, i8* %39, align 1
  %1333 = sext i32 %1310 to i64
  store i64 %1333, i64* %RCX.i1237, align 8
  %1334 = add nsw i64 %1333, 12099168
  %1335 = add i64 %1304, 17
  store i64 %1335, i64* %3, align 8
  %1336 = inttoptr i64 %1334 to i8*
  %1337 = load i8, i8* %1336, align 1
  %1338 = zext i8 %1337 to i64
  store i64 %1338, i64* %RAX.i1128, align 8
  %1339 = zext i8 %1337 to i32
  %1340 = add nsw i32 %1339, -3
  %1341 = icmp ult i8 %1337, 3
  %1342 = zext i1 %1341 to i8
  store i8 %1342, i8* %14, align 1
  %1343 = and i32 %1340, 255
  %1344 = tail call i32 @llvm.ctpop.i32(i32 %1343)
  %1345 = trunc i32 %1344 to i8
  %1346 = and i8 %1345, 1
  %1347 = xor i8 %1346, 1
  store i8 %1347, i8* %21, align 1
  %1348 = xor i32 %1340, %1339
  %1349 = lshr i32 %1348, 4
  %1350 = trunc i32 %1349 to i8
  %1351 = and i8 %1350, 1
  store i8 %1351, i8* %27, align 1
  %1352 = icmp eq i32 %1340, 0
  %1353 = zext i1 %1352 to i8
  store i8 %1353, i8* %30, align 1
  %1354 = lshr i32 %1340, 31
  %1355 = trunc i32 %1354 to i8
  store i8 %1355, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v184 = select i1 %1352, i64 70, i64 26
  %1356 = add i64 %1304, %.v184
  store i64 %1356, i64* %3, align 8
  br i1 %1352, label %block_.L_46d04e, label %block_46d022

block_46d022:                                     ; preds = %block_.L_46d008
  %1357 = add i64 %1305, -16
  %1358 = add i64 %1356, 4
  store i64 %1358, i64* %3, align 8
  %1359 = inttoptr i64 %1357 to i64*
  %1360 = load i64, i64* %1359, align 8
  store i64 %1360, i64* %RAX.i1128, align 8
  %1361 = add i64 %1356, 7
  store i64 %1361, i64* %3, align 8
  %1362 = load i32, i32* %1308, align 4
  %1363 = add i32 %1362, 1
  %1364 = zext i32 %1363 to i64
  store i64 %1364, i64* %RCX.i1237, align 8
  %1365 = icmp eq i32 %1362, -1
  %1366 = icmp eq i32 %1363, 0
  %1367 = or i1 %1365, %1366
  %1368 = zext i1 %1367 to i8
  store i8 %1368, i8* %14, align 1
  %1369 = and i32 %1363, 255
  %1370 = tail call i32 @llvm.ctpop.i32(i32 %1369)
  %1371 = trunc i32 %1370 to i8
  %1372 = and i8 %1371, 1
  %1373 = xor i8 %1372, 1
  store i8 %1373, i8* %21, align 1
  %1374 = xor i32 %1363, %1362
  %1375 = lshr i32 %1374, 4
  %1376 = trunc i32 %1375 to i8
  %1377 = and i8 %1376, 1
  store i8 %1377, i8* %27, align 1
  %1378 = zext i1 %1366 to i8
  store i8 %1378, i8* %30, align 1
  %1379 = lshr i32 %1363, 31
  %1380 = trunc i32 %1379 to i8
  store i8 %1380, i8* %33, align 1
  %1381 = lshr i32 %1362, 31
  %1382 = xor i32 %1379, %1381
  %1383 = add nuw nsw i32 %1382, %1379
  %1384 = icmp eq i32 %1383, 2
  %1385 = zext i1 %1384 to i8
  store i8 %1385, i8* %39, align 1
  %1386 = sext i32 %1363 to i64
  store i64 %1386, i64* %RDX.i1252, align 8
  %1387 = shl nsw i64 %1386, 2
  %1388 = add i64 %1360, %1387
  %1389 = add i64 %1356, 17
  store i64 %1389, i64* %3, align 8
  %1390 = inttoptr i64 %1388 to i32*
  %1391 = load i32, i32* %1390, align 4
  store i8 0, i8* %14, align 1
  %1392 = and i32 %1391, 255
  %1393 = tail call i32 @llvm.ctpop.i32(i32 %1392)
  %1394 = trunc i32 %1393 to i8
  %1395 = and i8 %1394, 1
  %1396 = xor i8 %1395, 1
  store i8 %1396, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1397 = icmp eq i32 %1391, 0
  %1398 = zext i1 %1397 to i8
  store i8 %1398, i8* %30, align 1
  %1399 = lshr i32 %1391, 31
  %1400 = trunc i32 %1399 to i8
  store i8 %1400, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1401 = icmp ne i8 %1400, 0
  %1402 = or i1 %1397, %1401
  %.v185 = select i1 %1402, i64 44, i64 23
  %1403 = add i64 %1356, %.v185
  store i64 %1403, i64* %3, align 8
  br i1 %1402, label %block_.L_46d04e, label %block_46d039

block_46d039:                                     ; preds = %block_46d022
  %1404 = add i64 %1403, 4
  store i64 %1404, i64* %3, align 8
  %1405 = load i32, i32* %1308, align 4
  %1406 = sext i32 %1405 to i64
  store i64 %1406, i64* %RAX.i1128, align 8
  %1407 = shl nsw i64 %1406, 2
  %1408 = add i64 %1305, -1632
  %1409 = add i64 %1408, %1407
  %1410 = add i64 %1403, 11
  store i64 %1410, i64* %3, align 8
  %1411 = inttoptr i64 %1409 to i32*
  %1412 = load i32, i32* %1411, align 4
  %1413 = add i32 %1412, 1
  %1414 = zext i32 %1413 to i64
  store i64 %1414, i64* %RCX.i1237, align 8
  %1415 = icmp eq i32 %1412, -1
  %1416 = icmp eq i32 %1413, 0
  %1417 = or i1 %1415, %1416
  %1418 = zext i1 %1417 to i8
  store i8 %1418, i8* %14, align 1
  %1419 = and i32 %1413, 255
  %1420 = tail call i32 @llvm.ctpop.i32(i32 %1419)
  %1421 = trunc i32 %1420 to i8
  %1422 = and i8 %1421, 1
  %1423 = xor i8 %1422, 1
  store i8 %1423, i8* %21, align 1
  %1424 = xor i32 %1413, %1412
  %1425 = lshr i32 %1424, 4
  %1426 = trunc i32 %1425 to i8
  %1427 = and i8 %1426, 1
  store i8 %1427, i8* %27, align 1
  %1428 = zext i1 %1416 to i8
  store i8 %1428, i8* %30, align 1
  %1429 = lshr i32 %1413, 31
  %1430 = trunc i32 %1429 to i8
  store i8 %1430, i8* %33, align 1
  %1431 = lshr i32 %1412, 31
  %1432 = xor i32 %1429, %1431
  %1433 = add nuw nsw i32 %1432, %1429
  %1434 = icmp eq i32 %1433, 2
  %1435 = zext i1 %1434 to i8
  store i8 %1435, i8* %39, align 1
  %1436 = add i64 %1403, 21
  store i64 %1436, i64* %3, align 8
  store i32 %1413, i32* %1411, align 4
  %.pre130 = load i64, i64* %3, align 8
  %.pre131.pre = load i64, i64* %RBP.i, align 8
  br label %block_.L_46d04e

block_.L_46d04e:                                  ; preds = %block_46d039, %block_46d022, %block_.L_46d008
  %.pre131 = phi i64 [ %.pre131.pre, %block_46d039 ], [ %1305, %block_46d022 ], [ %1305, %block_.L_46d008 ]
  %1437 = phi i64 [ %.pre130, %block_46d039 ], [ %1403, %block_46d022 ], [ %1356, %block_.L_46d008 ]
  %1438 = add i64 %1437, 5
  store i64 %1438, i64* %3, align 8
  br label %block_.L_46d053

block_.L_46d053:                                  ; preds = %block_.L_46d04e, %block_46cf1f, %block_46ceee, %block_46cebd, %block_46ce8c, %block_.L_46ce60
  %1439 = phi i64 [ %1438, %block_.L_46d04e ], [ %911, %block_46cf1f ], [ %817, %block_46ceee ], [ %723, %block_46cebd ], [ %631, %block_46ce8c ], [ %538, %block_.L_46ce60 ]
  %1440 = phi i64 [ %.pre131, %block_.L_46d04e ], [ %459, %block_46cf1f ], [ %459, %block_46ceee ], [ %459, %block_46cebd ], [ %459, %block_46ce8c ], [ %459, %block_.L_46ce60 ]
  %1441 = add i64 %1440, -16
  %1442 = add i64 %1439, 4
  store i64 %1442, i64* %3, align 8
  %1443 = inttoptr i64 %1441 to i64*
  %1444 = load i64, i64* %1443, align 8
  store i64 %1444, i64* %RAX.i1128, align 8
  %1445 = add i64 %1440, -24
  %1446 = add i64 %1439, 8
  store i64 %1446, i64* %3, align 8
  %1447 = inttoptr i64 %1445 to i32*
  %1448 = load i32, i32* %1447, align 4
  %1449 = sext i32 %1448 to i64
  store i64 %1449, i64* %RCX.i1237, align 8
  %1450 = shl nsw i64 %1449, 2
  %1451 = add i64 %1450, %1444
  %1452 = add i64 %1439, 12
  store i64 %1452, i64* %3, align 8
  %1453 = inttoptr i64 %1451 to i32*
  %1454 = load i32, i32* %1453, align 4
  store i8 0, i8* %14, align 1
  %1455 = and i32 %1454, 255
  %1456 = tail call i32 @llvm.ctpop.i32(i32 %1455)
  %1457 = trunc i32 %1456 to i8
  %1458 = and i8 %1457, 1
  %1459 = xor i8 %1458, 1
  store i8 %1459, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1460 = icmp eq i32 %1454, 0
  %1461 = zext i1 %1460 to i8
  store i8 %1461, i8* %30, align 1
  %1462 = lshr i32 %1454, 31
  %1463 = trunc i32 %1462 to i8
  store i8 %1463, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1464 = xor i1 %1460, true
  %1465 = icmp eq i8 %1463, 0
  %1466 = and i1 %1465, %1464
  %.v186 = select i1 %1466, i64 499, i64 18
  %1467 = add i64 %1439, %.v186
  store i64 %1467, i64* %3, align 8
  br i1 %1466, label %block_.L_46d246, label %block_46d065

block_46d065:                                     ; preds = %block_.L_46d053
  %1468 = add i64 %1467, 3
  store i64 %1468, i64* %3, align 8
  %1469 = load i32, i32* %1447, align 4
  %1470 = add i32 %1469, 20
  %1471 = zext i32 %1470 to i64
  store i64 %1471, i64* %RAX.i1128, align 8
  %1472 = icmp ugt i32 %1469, -21
  %1473 = zext i1 %1472 to i8
  store i8 %1473, i8* %14, align 1
  %1474 = and i32 %1470, 255
  %1475 = tail call i32 @llvm.ctpop.i32(i32 %1474)
  %1476 = trunc i32 %1475 to i8
  %1477 = and i8 %1476, 1
  %1478 = xor i8 %1477, 1
  store i8 %1478, i8* %21, align 1
  %1479 = xor i32 %1469, 16
  %1480 = xor i32 %1479, %1470
  %1481 = lshr i32 %1480, 4
  %1482 = trunc i32 %1481 to i8
  %1483 = and i8 %1482, 1
  store i8 %1483, i8* %27, align 1
  %1484 = icmp eq i32 %1470, 0
  %1485 = zext i1 %1484 to i8
  store i8 %1485, i8* %30, align 1
  %1486 = lshr i32 %1470, 31
  %1487 = trunc i32 %1486 to i8
  store i8 %1487, i8* %33, align 1
  %1488 = lshr i32 %1469, 31
  %1489 = xor i32 %1486, %1488
  %1490 = add nuw nsw i32 %1489, %1486
  %1491 = icmp eq i32 %1490, 2
  %1492 = zext i1 %1491 to i8
  store i8 %1492, i8* %39, align 1
  %1493 = sext i32 %1470 to i64
  store i64 %1493, i64* %RCX.i1237, align 8
  %1494 = add nsw i64 %1493, 12099168
  %1495 = add i64 %1467, 17
  store i64 %1495, i64* %3, align 8
  %1496 = inttoptr i64 %1494 to i8*
  %1497 = load i8, i8* %1496, align 1
  %1498 = zext i8 %1497 to i64
  store i64 %1498, i64* %RAX.i1128, align 8
  %1499 = zext i8 %1497 to i32
  %1500 = add nsw i32 %1499, -3
  %1501 = icmp ult i8 %1497, 3
  %1502 = zext i1 %1501 to i8
  store i8 %1502, i8* %14, align 1
  %1503 = and i32 %1500, 255
  %1504 = tail call i32 @llvm.ctpop.i32(i32 %1503)
  %1505 = trunc i32 %1504 to i8
  %1506 = and i8 %1505, 1
  %1507 = xor i8 %1506, 1
  store i8 %1507, i8* %21, align 1
  %1508 = xor i32 %1500, %1499
  %1509 = lshr i32 %1508, 4
  %1510 = trunc i32 %1509 to i8
  %1511 = and i8 %1510, 1
  store i8 %1511, i8* %27, align 1
  %1512 = icmp eq i32 %1500, 0
  %1513 = zext i1 %1512 to i8
  store i8 %1513, i8* %30, align 1
  %1514 = lshr i32 %1500, 31
  %1515 = trunc i32 %1514 to i8
  store i8 %1515, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v187 = select i1 %1512, i64 49, i64 26
  %1516 = add i64 %1467, %.v187
  store i64 %1516, i64* %3, align 8
  br i1 %1512, label %block_.L_46d096, label %block_46d07f

block_46d07f:                                     ; preds = %block_46d065
  %1517 = add i64 %1516, 4
  store i64 %1517, i64* %3, align 8
  %1518 = load i64, i64* %1443, align 8
  store i64 %1518, i64* %RAX.i1128, align 8
  %1519 = add i64 %1516, 7
  store i64 %1519, i64* %3, align 8
  %1520 = load i32, i32* %1447, align 4
  %1521 = add i32 %1520, 20
  %1522 = zext i32 %1521 to i64
  store i64 %1522, i64* %RCX.i1237, align 8
  %1523 = icmp ugt i32 %1520, -21
  %1524 = zext i1 %1523 to i8
  store i8 %1524, i8* %14, align 1
  %1525 = and i32 %1521, 255
  %1526 = tail call i32 @llvm.ctpop.i32(i32 %1525)
  %1527 = trunc i32 %1526 to i8
  %1528 = and i8 %1527, 1
  %1529 = xor i8 %1528, 1
  store i8 %1529, i8* %21, align 1
  %1530 = xor i32 %1520, 16
  %1531 = xor i32 %1530, %1521
  %1532 = lshr i32 %1531, 4
  %1533 = trunc i32 %1532 to i8
  %1534 = and i8 %1533, 1
  store i8 %1534, i8* %27, align 1
  %1535 = icmp eq i32 %1521, 0
  %1536 = zext i1 %1535 to i8
  store i8 %1536, i8* %30, align 1
  %1537 = lshr i32 %1521, 31
  %1538 = trunc i32 %1537 to i8
  store i8 %1538, i8* %33, align 1
  %1539 = lshr i32 %1520, 31
  %1540 = xor i32 %1537, %1539
  %1541 = add nuw nsw i32 %1540, %1537
  %1542 = icmp eq i32 %1541, 2
  %1543 = zext i1 %1542 to i8
  store i8 %1543, i8* %39, align 1
  %1544 = sext i32 %1521 to i64
  store i64 %1544, i64* %RDX.i1252, align 8
  %1545 = shl nsw i64 %1544, 2
  %1546 = add i64 %1518, %1545
  %1547 = add i64 %1516, 17
  store i64 %1547, i64* %3, align 8
  %1548 = inttoptr i64 %1546 to i32*
  %1549 = load i32, i32* %1548, align 4
  store i8 0, i8* %14, align 1
  %1550 = and i32 %1549, 255
  %1551 = tail call i32 @llvm.ctpop.i32(i32 %1550)
  %1552 = trunc i32 %1551 to i8
  %1553 = and i8 %1552, 1
  %1554 = xor i8 %1553, 1
  store i8 %1554, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1555 = icmp eq i32 %1549, 0
  %1556 = zext i1 %1555 to i8
  store i8 %1556, i8* %30, align 1
  %1557 = lshr i32 %1549, 31
  %1558 = trunc i32 %1557 to i8
  store i8 %1558, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1559 = xor i1 %1555, true
  %1560 = icmp eq i8 %1558, 0
  %1561 = and i1 %1560, %1559
  %.v188 = select i1 %1561, i64 455, i64 23
  %1562 = add i64 %1516, %.v188
  store i64 %1562, i64* %3, align 8
  br i1 %1561, label %block_.L_46d246, label %block_.L_46d096

block_.L_46d096:                                  ; preds = %block_46d07f, %block_46d065
  %1563 = phi i64 [ %1562, %block_46d07f ], [ %1516, %block_46d065 ]
  %1564 = add i64 %1563, 3
  store i64 %1564, i64* %3, align 8
  %1565 = load i32, i32* %1447, align 4
  %1566 = add i32 %1565, -1
  %1567 = zext i32 %1566 to i64
  store i64 %1567, i64* %RAX.i1128, align 8
  %1568 = icmp eq i32 %1565, 0
  %1569 = zext i1 %1568 to i8
  store i8 %1569, i8* %14, align 1
  %1570 = and i32 %1566, 255
  %1571 = tail call i32 @llvm.ctpop.i32(i32 %1570)
  %1572 = trunc i32 %1571 to i8
  %1573 = and i8 %1572, 1
  %1574 = xor i8 %1573, 1
  store i8 %1574, i8* %21, align 1
  %1575 = xor i32 %1566, %1565
  %1576 = lshr i32 %1575, 4
  %1577 = trunc i32 %1576 to i8
  %1578 = and i8 %1577, 1
  store i8 %1578, i8* %27, align 1
  %1579 = icmp eq i32 %1566, 0
  %1580 = zext i1 %1579 to i8
  store i8 %1580, i8* %30, align 1
  %1581 = lshr i32 %1566, 31
  %1582 = trunc i32 %1581 to i8
  store i8 %1582, i8* %33, align 1
  %1583 = lshr i32 %1565, 31
  %1584 = xor i32 %1581, %1583
  %1585 = add nuw nsw i32 %1584, %1583
  %1586 = icmp eq i32 %1585, 2
  %1587 = zext i1 %1586 to i8
  store i8 %1587, i8* %39, align 1
  %1588 = sext i32 %1566 to i64
  store i64 %1588, i64* %RCX.i1237, align 8
  %1589 = add nsw i64 %1588, 12099168
  %1590 = add i64 %1563, 17
  store i64 %1590, i64* %3, align 8
  %1591 = inttoptr i64 %1589 to i8*
  %1592 = load i8, i8* %1591, align 1
  %1593 = zext i8 %1592 to i64
  store i64 %1593, i64* %RAX.i1128, align 8
  %1594 = zext i8 %1592 to i32
  %1595 = add nsw i32 %1594, -3
  %1596 = icmp ult i8 %1592, 3
  %1597 = zext i1 %1596 to i8
  store i8 %1597, i8* %14, align 1
  %1598 = and i32 %1595, 255
  %1599 = tail call i32 @llvm.ctpop.i32(i32 %1598)
  %1600 = trunc i32 %1599 to i8
  %1601 = and i8 %1600, 1
  %1602 = xor i8 %1601, 1
  store i8 %1602, i8* %21, align 1
  %1603 = xor i32 %1595, %1594
  %1604 = lshr i32 %1603, 4
  %1605 = trunc i32 %1604 to i8
  %1606 = and i8 %1605, 1
  store i8 %1606, i8* %27, align 1
  %1607 = icmp eq i32 %1595, 0
  %1608 = zext i1 %1607 to i8
  store i8 %1608, i8* %30, align 1
  %1609 = lshr i32 %1595, 31
  %1610 = trunc i32 %1609 to i8
  store i8 %1610, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v189 = select i1 %1607, i64 49, i64 26
  %1611 = add i64 %1563, %.v189
  store i64 %1611, i64* %3, align 8
  br i1 %1607, label %block_.L_46d0c7, label %block_46d0b0

block_46d0b0:                                     ; preds = %block_.L_46d096
  %1612 = add i64 %1611, 4
  store i64 %1612, i64* %3, align 8
  %1613 = load i64, i64* %1443, align 8
  store i64 %1613, i64* %RAX.i1128, align 8
  %1614 = add i64 %1611, 7
  store i64 %1614, i64* %3, align 8
  %1615 = load i32, i32* %1447, align 4
  %1616 = add i32 %1615, -1
  %1617 = zext i32 %1616 to i64
  store i64 %1617, i64* %RCX.i1237, align 8
  %1618 = icmp eq i32 %1615, 0
  %1619 = zext i1 %1618 to i8
  store i8 %1619, i8* %14, align 1
  %1620 = and i32 %1616, 255
  %1621 = tail call i32 @llvm.ctpop.i32(i32 %1620)
  %1622 = trunc i32 %1621 to i8
  %1623 = and i8 %1622, 1
  %1624 = xor i8 %1623, 1
  store i8 %1624, i8* %21, align 1
  %1625 = xor i32 %1616, %1615
  %1626 = lshr i32 %1625, 4
  %1627 = trunc i32 %1626 to i8
  %1628 = and i8 %1627, 1
  store i8 %1628, i8* %27, align 1
  %1629 = icmp eq i32 %1616, 0
  %1630 = zext i1 %1629 to i8
  store i8 %1630, i8* %30, align 1
  %1631 = lshr i32 %1616, 31
  %1632 = trunc i32 %1631 to i8
  store i8 %1632, i8* %33, align 1
  %1633 = lshr i32 %1615, 31
  %1634 = xor i32 %1631, %1633
  %1635 = add nuw nsw i32 %1634, %1633
  %1636 = icmp eq i32 %1635, 2
  %1637 = zext i1 %1636 to i8
  store i8 %1637, i8* %39, align 1
  %1638 = sext i32 %1616 to i64
  store i64 %1638, i64* %RDX.i1252, align 8
  %1639 = shl nsw i64 %1638, 2
  %1640 = add i64 %1613, %1639
  %1641 = add i64 %1611, 17
  store i64 %1641, i64* %3, align 8
  %1642 = inttoptr i64 %1640 to i32*
  %1643 = load i32, i32* %1642, align 4
  store i8 0, i8* %14, align 1
  %1644 = and i32 %1643, 255
  %1645 = tail call i32 @llvm.ctpop.i32(i32 %1644)
  %1646 = trunc i32 %1645 to i8
  %1647 = and i8 %1646, 1
  %1648 = xor i8 %1647, 1
  store i8 %1648, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1649 = icmp eq i32 %1643, 0
  %1650 = zext i1 %1649 to i8
  store i8 %1650, i8* %30, align 1
  %1651 = lshr i32 %1643, 31
  %1652 = trunc i32 %1651 to i8
  store i8 %1652, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1653 = xor i1 %1649, true
  %1654 = icmp eq i8 %1652, 0
  %1655 = and i1 %1654, %1653
  %.v190 = select i1 %1655, i64 406, i64 23
  %1656 = add i64 %1611, %.v190
  store i64 %1656, i64* %3, align 8
  br i1 %1655, label %block_.L_46d246, label %block_.L_46d0c7

block_.L_46d0c7:                                  ; preds = %block_46d0b0, %block_.L_46d096
  %1657 = phi i64 [ %1656, %block_46d0b0 ], [ %1611, %block_.L_46d096 ]
  %1658 = add i64 %1657, 3
  store i64 %1658, i64* %3, align 8
  %1659 = load i32, i32* %1447, align 4
  %1660 = add i32 %1659, -20
  %1661 = zext i32 %1660 to i64
  store i64 %1661, i64* %RAX.i1128, align 8
  %1662 = icmp ult i32 %1659, 20
  %1663 = zext i1 %1662 to i8
  store i8 %1663, i8* %14, align 1
  %1664 = and i32 %1660, 255
  %1665 = tail call i32 @llvm.ctpop.i32(i32 %1664)
  %1666 = trunc i32 %1665 to i8
  %1667 = and i8 %1666, 1
  %1668 = xor i8 %1667, 1
  store i8 %1668, i8* %21, align 1
  %1669 = xor i32 %1659, 16
  %1670 = xor i32 %1669, %1660
  %1671 = lshr i32 %1670, 4
  %1672 = trunc i32 %1671 to i8
  %1673 = and i8 %1672, 1
  store i8 %1673, i8* %27, align 1
  %1674 = icmp eq i32 %1660, 0
  %1675 = zext i1 %1674 to i8
  store i8 %1675, i8* %30, align 1
  %1676 = lshr i32 %1660, 31
  %1677 = trunc i32 %1676 to i8
  store i8 %1677, i8* %33, align 1
  %1678 = lshr i32 %1659, 31
  %1679 = xor i32 %1676, %1678
  %1680 = add nuw nsw i32 %1679, %1678
  %1681 = icmp eq i32 %1680, 2
  %1682 = zext i1 %1681 to i8
  store i8 %1682, i8* %39, align 1
  %1683 = sext i32 %1660 to i64
  store i64 %1683, i64* %RCX.i1237, align 8
  %1684 = add nsw i64 %1683, 12099168
  %1685 = add i64 %1657, 17
  store i64 %1685, i64* %3, align 8
  %1686 = inttoptr i64 %1684 to i8*
  %1687 = load i8, i8* %1686, align 1
  %1688 = zext i8 %1687 to i64
  store i64 %1688, i64* %RAX.i1128, align 8
  %1689 = zext i8 %1687 to i32
  %1690 = add nsw i32 %1689, -3
  %1691 = icmp ult i8 %1687, 3
  %1692 = zext i1 %1691 to i8
  store i8 %1692, i8* %14, align 1
  %1693 = and i32 %1690, 255
  %1694 = tail call i32 @llvm.ctpop.i32(i32 %1693)
  %1695 = trunc i32 %1694 to i8
  %1696 = and i8 %1695, 1
  %1697 = xor i8 %1696, 1
  store i8 %1697, i8* %21, align 1
  %1698 = xor i32 %1690, %1689
  %1699 = lshr i32 %1698, 4
  %1700 = trunc i32 %1699 to i8
  %1701 = and i8 %1700, 1
  store i8 %1701, i8* %27, align 1
  %1702 = icmp eq i32 %1690, 0
  %1703 = zext i1 %1702 to i8
  store i8 %1703, i8* %30, align 1
  %1704 = lshr i32 %1690, 31
  %1705 = trunc i32 %1704 to i8
  store i8 %1705, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v191 = select i1 %1702, i64 49, i64 26
  %1706 = add i64 %1657, %.v191
  store i64 %1706, i64* %3, align 8
  br i1 %1702, label %block_.L_46d0f8, label %block_46d0e1

block_46d0e1:                                     ; preds = %block_.L_46d0c7
  %1707 = add i64 %1706, 4
  store i64 %1707, i64* %3, align 8
  %1708 = load i64, i64* %1443, align 8
  store i64 %1708, i64* %RAX.i1128, align 8
  %1709 = add i64 %1706, 7
  store i64 %1709, i64* %3, align 8
  %1710 = load i32, i32* %1447, align 4
  %1711 = add i32 %1710, -20
  %1712 = zext i32 %1711 to i64
  store i64 %1712, i64* %RCX.i1237, align 8
  %1713 = icmp ult i32 %1710, 20
  %1714 = zext i1 %1713 to i8
  store i8 %1714, i8* %14, align 1
  %1715 = and i32 %1711, 255
  %1716 = tail call i32 @llvm.ctpop.i32(i32 %1715)
  %1717 = trunc i32 %1716 to i8
  %1718 = and i8 %1717, 1
  %1719 = xor i8 %1718, 1
  store i8 %1719, i8* %21, align 1
  %1720 = xor i32 %1710, 16
  %1721 = xor i32 %1720, %1711
  %1722 = lshr i32 %1721, 4
  %1723 = trunc i32 %1722 to i8
  %1724 = and i8 %1723, 1
  store i8 %1724, i8* %27, align 1
  %1725 = icmp eq i32 %1711, 0
  %1726 = zext i1 %1725 to i8
  store i8 %1726, i8* %30, align 1
  %1727 = lshr i32 %1711, 31
  %1728 = trunc i32 %1727 to i8
  store i8 %1728, i8* %33, align 1
  %1729 = lshr i32 %1710, 31
  %1730 = xor i32 %1727, %1729
  %1731 = add nuw nsw i32 %1730, %1729
  %1732 = icmp eq i32 %1731, 2
  %1733 = zext i1 %1732 to i8
  store i8 %1733, i8* %39, align 1
  %1734 = sext i32 %1711 to i64
  store i64 %1734, i64* %RDX.i1252, align 8
  %1735 = shl nsw i64 %1734, 2
  %1736 = add i64 %1708, %1735
  %1737 = add i64 %1706, 17
  store i64 %1737, i64* %3, align 8
  %1738 = inttoptr i64 %1736 to i32*
  %1739 = load i32, i32* %1738, align 4
  store i8 0, i8* %14, align 1
  %1740 = and i32 %1739, 255
  %1741 = tail call i32 @llvm.ctpop.i32(i32 %1740)
  %1742 = trunc i32 %1741 to i8
  %1743 = and i8 %1742, 1
  %1744 = xor i8 %1743, 1
  store i8 %1744, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1745 = icmp eq i32 %1739, 0
  %1746 = zext i1 %1745 to i8
  store i8 %1746, i8* %30, align 1
  %1747 = lshr i32 %1739, 31
  %1748 = trunc i32 %1747 to i8
  store i8 %1748, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1749 = xor i1 %1745, true
  %1750 = icmp eq i8 %1748, 0
  %1751 = and i1 %1750, %1749
  %.v192 = select i1 %1751, i64 357, i64 23
  %1752 = add i64 %1706, %.v192
  store i64 %1752, i64* %3, align 8
  br i1 %1751, label %block_.L_46d246, label %block_.L_46d0f8

block_.L_46d0f8:                                  ; preds = %block_46d0e1, %block_.L_46d0c7
  %1753 = phi i64 [ %1752, %block_46d0e1 ], [ %1706, %block_.L_46d0c7 ]
  %1754 = add i64 %1753, 3
  store i64 %1754, i64* %3, align 8
  %1755 = load i32, i32* %1447, align 4
  %1756 = add i32 %1755, 1
  %1757 = zext i32 %1756 to i64
  store i64 %1757, i64* %RAX.i1128, align 8
  %1758 = icmp eq i32 %1755, -1
  %1759 = icmp eq i32 %1756, 0
  %1760 = or i1 %1758, %1759
  %1761 = zext i1 %1760 to i8
  store i8 %1761, i8* %14, align 1
  %1762 = and i32 %1756, 255
  %1763 = tail call i32 @llvm.ctpop.i32(i32 %1762)
  %1764 = trunc i32 %1763 to i8
  %1765 = and i8 %1764, 1
  %1766 = xor i8 %1765, 1
  store i8 %1766, i8* %21, align 1
  %1767 = xor i32 %1756, %1755
  %1768 = lshr i32 %1767, 4
  %1769 = trunc i32 %1768 to i8
  %1770 = and i8 %1769, 1
  store i8 %1770, i8* %27, align 1
  %1771 = zext i1 %1759 to i8
  store i8 %1771, i8* %30, align 1
  %1772 = lshr i32 %1756, 31
  %1773 = trunc i32 %1772 to i8
  store i8 %1773, i8* %33, align 1
  %1774 = lshr i32 %1755, 31
  %1775 = xor i32 %1772, %1774
  %1776 = add nuw nsw i32 %1775, %1772
  %1777 = icmp eq i32 %1776, 2
  %1778 = zext i1 %1777 to i8
  store i8 %1778, i8* %39, align 1
  %1779 = sext i32 %1756 to i64
  store i64 %1779, i64* %RCX.i1237, align 8
  %1780 = add nsw i64 %1779, 12099168
  %1781 = add i64 %1753, 17
  store i64 %1781, i64* %3, align 8
  %1782 = inttoptr i64 %1780 to i8*
  %1783 = load i8, i8* %1782, align 1
  %1784 = zext i8 %1783 to i64
  store i64 %1784, i64* %RAX.i1128, align 8
  %1785 = zext i8 %1783 to i32
  %1786 = add nsw i32 %1785, -3
  %1787 = icmp ult i8 %1783, 3
  %1788 = zext i1 %1787 to i8
  store i8 %1788, i8* %14, align 1
  %1789 = and i32 %1786, 255
  %1790 = tail call i32 @llvm.ctpop.i32(i32 %1789)
  %1791 = trunc i32 %1790 to i8
  %1792 = and i8 %1791, 1
  %1793 = xor i8 %1792, 1
  store i8 %1793, i8* %21, align 1
  %1794 = xor i32 %1786, %1785
  %1795 = lshr i32 %1794, 4
  %1796 = trunc i32 %1795 to i8
  %1797 = and i8 %1796, 1
  store i8 %1797, i8* %27, align 1
  %1798 = icmp eq i32 %1786, 0
  %1799 = zext i1 %1798 to i8
  store i8 %1799, i8* %30, align 1
  %1800 = lshr i32 %1786, 31
  %1801 = trunc i32 %1800 to i8
  store i8 %1801, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v193 = select i1 %1798, i64 49, i64 26
  %1802 = add i64 %1753, %.v193
  store i64 %1802, i64* %3, align 8
  br i1 %1798, label %block_.L_46d129, label %block_46d112

block_46d112:                                     ; preds = %block_.L_46d0f8
  %1803 = add i64 %1802, 4
  store i64 %1803, i64* %3, align 8
  %1804 = load i64, i64* %1443, align 8
  store i64 %1804, i64* %RAX.i1128, align 8
  %1805 = add i64 %1802, 7
  store i64 %1805, i64* %3, align 8
  %1806 = load i32, i32* %1447, align 4
  %1807 = add i32 %1806, 1
  %1808 = zext i32 %1807 to i64
  store i64 %1808, i64* %RCX.i1237, align 8
  %1809 = icmp eq i32 %1806, -1
  %1810 = icmp eq i32 %1807, 0
  %1811 = or i1 %1809, %1810
  %1812 = zext i1 %1811 to i8
  store i8 %1812, i8* %14, align 1
  %1813 = and i32 %1807, 255
  %1814 = tail call i32 @llvm.ctpop.i32(i32 %1813)
  %1815 = trunc i32 %1814 to i8
  %1816 = and i8 %1815, 1
  %1817 = xor i8 %1816, 1
  store i8 %1817, i8* %21, align 1
  %1818 = xor i32 %1807, %1806
  %1819 = lshr i32 %1818, 4
  %1820 = trunc i32 %1819 to i8
  %1821 = and i8 %1820, 1
  store i8 %1821, i8* %27, align 1
  %1822 = zext i1 %1810 to i8
  store i8 %1822, i8* %30, align 1
  %1823 = lshr i32 %1807, 31
  %1824 = trunc i32 %1823 to i8
  store i8 %1824, i8* %33, align 1
  %1825 = lshr i32 %1806, 31
  %1826 = xor i32 %1823, %1825
  %1827 = add nuw nsw i32 %1826, %1823
  %1828 = icmp eq i32 %1827, 2
  %1829 = zext i1 %1828 to i8
  store i8 %1829, i8* %39, align 1
  %1830 = sext i32 %1807 to i64
  store i64 %1830, i64* %RDX.i1252, align 8
  %1831 = shl nsw i64 %1830, 2
  %1832 = add i64 %1804, %1831
  %1833 = add i64 %1802, 17
  store i64 %1833, i64* %3, align 8
  %1834 = inttoptr i64 %1832 to i32*
  %1835 = load i32, i32* %1834, align 4
  store i8 0, i8* %14, align 1
  %1836 = and i32 %1835, 255
  %1837 = tail call i32 @llvm.ctpop.i32(i32 %1836)
  %1838 = trunc i32 %1837 to i8
  %1839 = and i8 %1838, 1
  %1840 = xor i8 %1839, 1
  store i8 %1840, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1841 = icmp eq i32 %1835, 0
  %1842 = zext i1 %1841 to i8
  store i8 %1842, i8* %30, align 1
  %1843 = lshr i32 %1835, 31
  %1844 = trunc i32 %1843 to i8
  store i8 %1844, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1845 = xor i1 %1841, true
  %1846 = icmp eq i8 %1844, 0
  %1847 = and i1 %1846, %1845
  %.v194 = select i1 %1847, i64 308, i64 23
  %1848 = add i64 %1802, %.v194
  store i64 %1848, i64* %3, align 8
  br i1 %1847, label %block_.L_46d246, label %block_.L_46d129

block_.L_46d129:                                  ; preds = %block_46d112, %block_.L_46d0f8
  %1849 = phi i64 [ %1848, %block_46d112 ], [ %1802, %block_.L_46d0f8 ]
  %1850 = add i64 %1849, 3
  store i64 %1850, i64* %3, align 8
  %1851 = load i32, i32* %1447, align 4
  %1852 = add i32 %1851, 20
  %1853 = zext i32 %1852 to i64
  store i64 %1853, i64* %RAX.i1128, align 8
  %1854 = icmp ugt i32 %1851, -21
  %1855 = zext i1 %1854 to i8
  store i8 %1855, i8* %14, align 1
  %1856 = and i32 %1852, 255
  %1857 = tail call i32 @llvm.ctpop.i32(i32 %1856)
  %1858 = trunc i32 %1857 to i8
  %1859 = and i8 %1858, 1
  %1860 = xor i8 %1859, 1
  store i8 %1860, i8* %21, align 1
  %1861 = xor i32 %1851, 16
  %1862 = xor i32 %1861, %1852
  %1863 = lshr i32 %1862, 4
  %1864 = trunc i32 %1863 to i8
  %1865 = and i8 %1864, 1
  store i8 %1865, i8* %27, align 1
  %1866 = icmp eq i32 %1852, 0
  %1867 = zext i1 %1866 to i8
  store i8 %1867, i8* %30, align 1
  %1868 = lshr i32 %1852, 31
  %1869 = trunc i32 %1868 to i8
  store i8 %1869, i8* %33, align 1
  %1870 = lshr i32 %1851, 31
  %1871 = xor i32 %1868, %1870
  %1872 = add nuw nsw i32 %1871, %1868
  %1873 = icmp eq i32 %1872, 2
  %1874 = zext i1 %1873 to i8
  store i8 %1874, i8* %39, align 1
  %1875 = sext i32 %1852 to i64
  store i64 %1875, i64* %RCX.i1237, align 8
  %1876 = add nsw i64 %1875, 12099168
  %1877 = add i64 %1849, 17
  store i64 %1877, i64* %3, align 8
  %1878 = inttoptr i64 %1876 to i8*
  %1879 = load i8, i8* %1878, align 1
  %1880 = zext i8 %1879 to i64
  store i64 %1880, i64* %RAX.i1128, align 8
  %1881 = zext i8 %1879 to i32
  %1882 = add nsw i32 %1881, -3
  %1883 = icmp ult i8 %1879, 3
  %1884 = zext i1 %1883 to i8
  store i8 %1884, i8* %14, align 1
  %1885 = and i32 %1882, 255
  %1886 = tail call i32 @llvm.ctpop.i32(i32 %1885)
  %1887 = trunc i32 %1886 to i8
  %1888 = and i8 %1887, 1
  %1889 = xor i8 %1888, 1
  store i8 %1889, i8* %21, align 1
  %1890 = xor i32 %1882, %1881
  %1891 = lshr i32 %1890, 4
  %1892 = trunc i32 %1891 to i8
  %1893 = and i8 %1892, 1
  store i8 %1893, i8* %27, align 1
  %1894 = icmp eq i32 %1882, 0
  %1895 = zext i1 %1894 to i8
  store i8 %1895, i8* %30, align 1
  %1896 = lshr i32 %1882, 31
  %1897 = trunc i32 %1896 to i8
  store i8 %1897, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v195 = select i1 %1894, i64 70, i64 26
  %1898 = add i64 %1849, %.v195
  store i64 %1898, i64* %3, align 8
  br i1 %1894, label %block_.L_46d16f, label %block_46d143

block_46d143:                                     ; preds = %block_.L_46d129
  %1899 = add i64 %1898, 4
  store i64 %1899, i64* %3, align 8
  %1900 = load i64, i64* %1443, align 8
  store i64 %1900, i64* %RAX.i1128, align 8
  %1901 = add i64 %1898, 7
  store i64 %1901, i64* %3, align 8
  %1902 = load i32, i32* %1447, align 4
  %1903 = add i32 %1902, 20
  %1904 = zext i32 %1903 to i64
  store i64 %1904, i64* %RCX.i1237, align 8
  %1905 = icmp ugt i32 %1902, -21
  %1906 = zext i1 %1905 to i8
  store i8 %1906, i8* %14, align 1
  %1907 = and i32 %1903, 255
  %1908 = tail call i32 @llvm.ctpop.i32(i32 %1907)
  %1909 = trunc i32 %1908 to i8
  %1910 = and i8 %1909, 1
  %1911 = xor i8 %1910, 1
  store i8 %1911, i8* %21, align 1
  %1912 = xor i32 %1902, 16
  %1913 = xor i32 %1912, %1903
  %1914 = lshr i32 %1913, 4
  %1915 = trunc i32 %1914 to i8
  %1916 = and i8 %1915, 1
  store i8 %1916, i8* %27, align 1
  %1917 = icmp eq i32 %1903, 0
  %1918 = zext i1 %1917 to i8
  store i8 %1918, i8* %30, align 1
  %1919 = lshr i32 %1903, 31
  %1920 = trunc i32 %1919 to i8
  store i8 %1920, i8* %33, align 1
  %1921 = lshr i32 %1902, 31
  %1922 = xor i32 %1919, %1921
  %1923 = add nuw nsw i32 %1922, %1919
  %1924 = icmp eq i32 %1923, 2
  %1925 = zext i1 %1924 to i8
  store i8 %1925, i8* %39, align 1
  %1926 = sext i32 %1903 to i64
  store i64 %1926, i64* %RDX.i1252, align 8
  %1927 = shl nsw i64 %1926, 2
  %1928 = add i64 %1900, %1927
  %1929 = add i64 %1898, 17
  store i64 %1929, i64* %3, align 8
  %1930 = inttoptr i64 %1928 to i32*
  %1931 = load i32, i32* %1930, align 4
  store i8 0, i8* %14, align 1
  %1932 = and i32 %1931, 255
  %1933 = tail call i32 @llvm.ctpop.i32(i32 %1932)
  %1934 = trunc i32 %1933 to i8
  %1935 = and i8 %1934, 1
  %1936 = xor i8 %1935, 1
  store i8 %1936, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1937 = icmp eq i32 %1931, 0
  %1938 = zext i1 %1937 to i8
  store i8 %1938, i8* %30, align 1
  %1939 = lshr i32 %1931, 31
  %1940 = trunc i32 %1939 to i8
  store i8 %1940, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1941 = icmp ne i8 %1940, 0
  %.v87 = select i1 %1941, i64 6, i64 27
  %1942 = add i64 %1929, %.v87
  store i64 %1942, i64* %3, align 8
  br i1 %1941, label %block_46d15a, label %block_.L_46d16f

block_46d15a:                                     ; preds = %block_46d143
  %1943 = add i64 %1942, 4
  store i64 %1943, i64* %3, align 8
  %1944 = load i32, i32* %1447, align 4
  %1945 = sext i32 %1944 to i64
  store i64 %1945, i64* %RAX.i1128, align 8
  %1946 = shl nsw i64 %1945, 2
  %1947 = add i64 %1440, -1632
  %1948 = add i64 %1947, %1946
  %1949 = add i64 %1942, 11
  store i64 %1949, i64* %3, align 8
  %1950 = inttoptr i64 %1948 to i32*
  %1951 = load i32, i32* %1950, align 4
  %1952 = add i32 %1951, -1
  %1953 = zext i32 %1952 to i64
  store i64 %1953, i64* %RCX.i1237, align 8
  %1954 = icmp ne i32 %1951, 0
  %1955 = zext i1 %1954 to i8
  store i8 %1955, i8* %14, align 1
  %1956 = and i32 %1952, 255
  %1957 = tail call i32 @llvm.ctpop.i32(i32 %1956)
  %1958 = trunc i32 %1957 to i8
  %1959 = and i8 %1958, 1
  %1960 = xor i8 %1959, 1
  store i8 %1960, i8* %21, align 1
  %1961 = xor i32 %1951, 16
  %1962 = xor i32 %1961, %1952
  %1963 = lshr i32 %1962, 4
  %1964 = trunc i32 %1963 to i8
  %1965 = and i8 %1964, 1
  store i8 %1965, i8* %27, align 1
  %1966 = icmp eq i32 %1952, 0
  %1967 = zext i1 %1966 to i8
  store i8 %1967, i8* %30, align 1
  %1968 = lshr i32 %1952, 31
  %1969 = trunc i32 %1968 to i8
  store i8 %1969, i8* %33, align 1
  %1970 = lshr i32 %1951, 31
  %1971 = xor i32 %1968, %1970
  %1972 = xor i32 %1968, 1
  %1973 = add nuw nsw i32 %1971, %1972
  %1974 = icmp eq i32 %1973, 2
  %1975 = zext i1 %1974 to i8
  store i8 %1975, i8* %39, align 1
  %1976 = add i64 %1942, 21
  store i64 %1976, i64* %3, align 8
  store i32 %1952, i32* %1950, align 4
  %.pre132 = load i64, i64* %RBP.i, align 8
  %.pre133 = load i64, i64* %3, align 8
  br label %block_.L_46d16f

block_.L_46d16f:                                  ; preds = %block_46d143, %block_46d15a, %block_.L_46d129
  %1977 = phi i64 [ %1942, %block_46d143 ], [ %.pre133, %block_46d15a ], [ %1898, %block_.L_46d129 ]
  %1978 = phi i64 [ %1440, %block_46d143 ], [ %.pre132, %block_46d15a ], [ %1440, %block_.L_46d129 ]
  %1979 = add i64 %1978, -24
  %1980 = add i64 %1977, 3
  store i64 %1980, i64* %3, align 8
  %1981 = inttoptr i64 %1979 to i32*
  %1982 = load i32, i32* %1981, align 4
  %1983 = add i32 %1982, -1
  %1984 = zext i32 %1983 to i64
  store i64 %1984, i64* %RAX.i1128, align 8
  %1985 = icmp eq i32 %1982, 0
  %1986 = zext i1 %1985 to i8
  store i8 %1986, i8* %14, align 1
  %1987 = and i32 %1983, 255
  %1988 = tail call i32 @llvm.ctpop.i32(i32 %1987)
  %1989 = trunc i32 %1988 to i8
  %1990 = and i8 %1989, 1
  %1991 = xor i8 %1990, 1
  store i8 %1991, i8* %21, align 1
  %1992 = xor i32 %1983, %1982
  %1993 = lshr i32 %1992, 4
  %1994 = trunc i32 %1993 to i8
  %1995 = and i8 %1994, 1
  store i8 %1995, i8* %27, align 1
  %1996 = icmp eq i32 %1983, 0
  %1997 = zext i1 %1996 to i8
  store i8 %1997, i8* %30, align 1
  %1998 = lshr i32 %1983, 31
  %1999 = trunc i32 %1998 to i8
  store i8 %1999, i8* %33, align 1
  %2000 = lshr i32 %1982, 31
  %2001 = xor i32 %1998, %2000
  %2002 = add nuw nsw i32 %2001, %2000
  %2003 = icmp eq i32 %2002, 2
  %2004 = zext i1 %2003 to i8
  store i8 %2004, i8* %39, align 1
  %2005 = sext i32 %1983 to i64
  store i64 %2005, i64* %RCX.i1237, align 8
  %2006 = add nsw i64 %2005, 12099168
  %2007 = add i64 %1977, 17
  store i64 %2007, i64* %3, align 8
  %2008 = inttoptr i64 %2006 to i8*
  %2009 = load i8, i8* %2008, align 1
  %2010 = zext i8 %2009 to i64
  store i64 %2010, i64* %RAX.i1128, align 8
  %2011 = zext i8 %2009 to i32
  %2012 = add nsw i32 %2011, -3
  %2013 = icmp ult i8 %2009, 3
  %2014 = zext i1 %2013 to i8
  store i8 %2014, i8* %14, align 1
  %2015 = and i32 %2012, 255
  %2016 = tail call i32 @llvm.ctpop.i32(i32 %2015)
  %2017 = trunc i32 %2016 to i8
  %2018 = and i8 %2017, 1
  %2019 = xor i8 %2018, 1
  store i8 %2019, i8* %21, align 1
  %2020 = xor i32 %2012, %2011
  %2021 = lshr i32 %2020, 4
  %2022 = trunc i32 %2021 to i8
  %2023 = and i8 %2022, 1
  store i8 %2023, i8* %27, align 1
  %2024 = icmp eq i32 %2012, 0
  %2025 = zext i1 %2024 to i8
  store i8 %2025, i8* %30, align 1
  %2026 = lshr i32 %2012, 31
  %2027 = trunc i32 %2026 to i8
  store i8 %2027, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v196 = select i1 %2024, i64 70, i64 26
  %2028 = add i64 %1977, %.v196
  store i64 %2028, i64* %3, align 8
  br i1 %2024, label %block_.L_46d1b5, label %block_46d189

block_46d189:                                     ; preds = %block_.L_46d16f
  %2029 = add i64 %1978, -16
  %2030 = add i64 %2028, 4
  store i64 %2030, i64* %3, align 8
  %2031 = inttoptr i64 %2029 to i64*
  %2032 = load i64, i64* %2031, align 8
  store i64 %2032, i64* %RAX.i1128, align 8
  %2033 = add i64 %2028, 7
  store i64 %2033, i64* %3, align 8
  %2034 = load i32, i32* %1981, align 4
  %2035 = add i32 %2034, -1
  %2036 = zext i32 %2035 to i64
  store i64 %2036, i64* %RCX.i1237, align 8
  %2037 = icmp eq i32 %2034, 0
  %2038 = zext i1 %2037 to i8
  store i8 %2038, i8* %14, align 1
  %2039 = and i32 %2035, 255
  %2040 = tail call i32 @llvm.ctpop.i32(i32 %2039)
  %2041 = trunc i32 %2040 to i8
  %2042 = and i8 %2041, 1
  %2043 = xor i8 %2042, 1
  store i8 %2043, i8* %21, align 1
  %2044 = xor i32 %2035, %2034
  %2045 = lshr i32 %2044, 4
  %2046 = trunc i32 %2045 to i8
  %2047 = and i8 %2046, 1
  store i8 %2047, i8* %27, align 1
  %2048 = icmp eq i32 %2035, 0
  %2049 = zext i1 %2048 to i8
  store i8 %2049, i8* %30, align 1
  %2050 = lshr i32 %2035, 31
  %2051 = trunc i32 %2050 to i8
  store i8 %2051, i8* %33, align 1
  %2052 = lshr i32 %2034, 31
  %2053 = xor i32 %2050, %2052
  %2054 = add nuw nsw i32 %2053, %2052
  %2055 = icmp eq i32 %2054, 2
  %2056 = zext i1 %2055 to i8
  store i8 %2056, i8* %39, align 1
  %2057 = sext i32 %2035 to i64
  store i64 %2057, i64* %RDX.i1252, align 8
  %2058 = shl nsw i64 %2057, 2
  %2059 = add i64 %2032, %2058
  %2060 = add i64 %2028, 17
  store i64 %2060, i64* %3, align 8
  %2061 = inttoptr i64 %2059 to i32*
  %2062 = load i32, i32* %2061, align 4
  store i8 0, i8* %14, align 1
  %2063 = and i32 %2062, 255
  %2064 = tail call i32 @llvm.ctpop.i32(i32 %2063)
  %2065 = trunc i32 %2064 to i8
  %2066 = and i8 %2065, 1
  %2067 = xor i8 %2066, 1
  store i8 %2067, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2068 = icmp eq i32 %2062, 0
  %2069 = zext i1 %2068 to i8
  store i8 %2069, i8* %30, align 1
  %2070 = lshr i32 %2062, 31
  %2071 = trunc i32 %2070 to i8
  store i8 %2071, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %2072 = icmp ne i8 %2071, 0
  %.v88 = select i1 %2072, i64 6, i64 27
  %2073 = add i64 %2060, %.v88
  store i64 %2073, i64* %3, align 8
  br i1 %2072, label %block_46d1a0, label %block_.L_46d1b5

block_46d1a0:                                     ; preds = %block_46d189
  %2074 = add i64 %2073, 4
  store i64 %2074, i64* %3, align 8
  %2075 = load i32, i32* %1981, align 4
  %2076 = sext i32 %2075 to i64
  store i64 %2076, i64* %RAX.i1128, align 8
  %2077 = shl nsw i64 %2076, 2
  %2078 = add i64 %1978, -1632
  %2079 = add i64 %2078, %2077
  %2080 = add i64 %2073, 11
  store i64 %2080, i64* %3, align 8
  %2081 = inttoptr i64 %2079 to i32*
  %2082 = load i32, i32* %2081, align 4
  %2083 = add i32 %2082, -1
  %2084 = zext i32 %2083 to i64
  store i64 %2084, i64* %RCX.i1237, align 8
  %2085 = icmp ne i32 %2082, 0
  %2086 = zext i1 %2085 to i8
  store i8 %2086, i8* %14, align 1
  %2087 = and i32 %2083, 255
  %2088 = tail call i32 @llvm.ctpop.i32(i32 %2087)
  %2089 = trunc i32 %2088 to i8
  %2090 = and i8 %2089, 1
  %2091 = xor i8 %2090, 1
  store i8 %2091, i8* %21, align 1
  %2092 = xor i32 %2082, 16
  %2093 = xor i32 %2092, %2083
  %2094 = lshr i32 %2093, 4
  %2095 = trunc i32 %2094 to i8
  %2096 = and i8 %2095, 1
  store i8 %2096, i8* %27, align 1
  %2097 = icmp eq i32 %2083, 0
  %2098 = zext i1 %2097 to i8
  store i8 %2098, i8* %30, align 1
  %2099 = lshr i32 %2083, 31
  %2100 = trunc i32 %2099 to i8
  store i8 %2100, i8* %33, align 1
  %2101 = lshr i32 %2082, 31
  %2102 = xor i32 %2099, %2101
  %2103 = xor i32 %2099, 1
  %2104 = add nuw nsw i32 %2102, %2103
  %2105 = icmp eq i32 %2104, 2
  %2106 = zext i1 %2105 to i8
  store i8 %2106, i8* %39, align 1
  %2107 = add i64 %2073, 21
  store i64 %2107, i64* %3, align 8
  store i32 %2083, i32* %2081, align 4
  %.pre134 = load i64, i64* %RBP.i, align 8
  %.pre135 = load i64, i64* %3, align 8
  br label %block_.L_46d1b5

block_.L_46d1b5:                                  ; preds = %block_46d189, %block_46d1a0, %block_.L_46d16f
  %2108 = phi i64 [ %2073, %block_46d189 ], [ %.pre135, %block_46d1a0 ], [ %2028, %block_.L_46d16f ]
  %2109 = phi i64 [ %1978, %block_46d189 ], [ %.pre134, %block_46d1a0 ], [ %1978, %block_.L_46d16f ]
  %2110 = add i64 %2109, -24
  %2111 = add i64 %2108, 3
  store i64 %2111, i64* %3, align 8
  %2112 = inttoptr i64 %2110 to i32*
  %2113 = load i32, i32* %2112, align 4
  %2114 = add i32 %2113, -20
  %2115 = zext i32 %2114 to i64
  store i64 %2115, i64* %RAX.i1128, align 8
  %2116 = icmp ult i32 %2113, 20
  %2117 = zext i1 %2116 to i8
  store i8 %2117, i8* %14, align 1
  %2118 = and i32 %2114, 255
  %2119 = tail call i32 @llvm.ctpop.i32(i32 %2118)
  %2120 = trunc i32 %2119 to i8
  %2121 = and i8 %2120, 1
  %2122 = xor i8 %2121, 1
  store i8 %2122, i8* %21, align 1
  %2123 = xor i32 %2113, 16
  %2124 = xor i32 %2123, %2114
  %2125 = lshr i32 %2124, 4
  %2126 = trunc i32 %2125 to i8
  %2127 = and i8 %2126, 1
  store i8 %2127, i8* %27, align 1
  %2128 = icmp eq i32 %2114, 0
  %2129 = zext i1 %2128 to i8
  store i8 %2129, i8* %30, align 1
  %2130 = lshr i32 %2114, 31
  %2131 = trunc i32 %2130 to i8
  store i8 %2131, i8* %33, align 1
  %2132 = lshr i32 %2113, 31
  %2133 = xor i32 %2130, %2132
  %2134 = add nuw nsw i32 %2133, %2132
  %2135 = icmp eq i32 %2134, 2
  %2136 = zext i1 %2135 to i8
  store i8 %2136, i8* %39, align 1
  %2137 = sext i32 %2114 to i64
  store i64 %2137, i64* %RCX.i1237, align 8
  %2138 = add nsw i64 %2137, 12099168
  %2139 = add i64 %2108, 17
  store i64 %2139, i64* %3, align 8
  %2140 = inttoptr i64 %2138 to i8*
  %2141 = load i8, i8* %2140, align 1
  %2142 = zext i8 %2141 to i64
  store i64 %2142, i64* %RAX.i1128, align 8
  %2143 = zext i8 %2141 to i32
  %2144 = add nsw i32 %2143, -3
  %2145 = icmp ult i8 %2141, 3
  %2146 = zext i1 %2145 to i8
  store i8 %2146, i8* %14, align 1
  %2147 = and i32 %2144, 255
  %2148 = tail call i32 @llvm.ctpop.i32(i32 %2147)
  %2149 = trunc i32 %2148 to i8
  %2150 = and i8 %2149, 1
  %2151 = xor i8 %2150, 1
  store i8 %2151, i8* %21, align 1
  %2152 = xor i32 %2144, %2143
  %2153 = lshr i32 %2152, 4
  %2154 = trunc i32 %2153 to i8
  %2155 = and i8 %2154, 1
  store i8 %2155, i8* %27, align 1
  %2156 = icmp eq i32 %2144, 0
  %2157 = zext i1 %2156 to i8
  store i8 %2157, i8* %30, align 1
  %2158 = lshr i32 %2144, 31
  %2159 = trunc i32 %2158 to i8
  store i8 %2159, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v197 = select i1 %2156, i64 70, i64 26
  %2160 = add i64 %2108, %.v197
  store i64 %2160, i64* %3, align 8
  br i1 %2156, label %block_.L_46d1fb, label %block_46d1cf

block_46d1cf:                                     ; preds = %block_.L_46d1b5
  %2161 = add i64 %2109, -16
  %2162 = add i64 %2160, 4
  store i64 %2162, i64* %3, align 8
  %2163 = inttoptr i64 %2161 to i64*
  %2164 = load i64, i64* %2163, align 8
  store i64 %2164, i64* %RAX.i1128, align 8
  %2165 = add i64 %2160, 7
  store i64 %2165, i64* %3, align 8
  %2166 = load i32, i32* %2112, align 4
  %2167 = add i32 %2166, -20
  %2168 = zext i32 %2167 to i64
  store i64 %2168, i64* %RCX.i1237, align 8
  %2169 = icmp ult i32 %2166, 20
  %2170 = zext i1 %2169 to i8
  store i8 %2170, i8* %14, align 1
  %2171 = and i32 %2167, 255
  %2172 = tail call i32 @llvm.ctpop.i32(i32 %2171)
  %2173 = trunc i32 %2172 to i8
  %2174 = and i8 %2173, 1
  %2175 = xor i8 %2174, 1
  store i8 %2175, i8* %21, align 1
  %2176 = xor i32 %2166, 16
  %2177 = xor i32 %2176, %2167
  %2178 = lshr i32 %2177, 4
  %2179 = trunc i32 %2178 to i8
  %2180 = and i8 %2179, 1
  store i8 %2180, i8* %27, align 1
  %2181 = icmp eq i32 %2167, 0
  %2182 = zext i1 %2181 to i8
  store i8 %2182, i8* %30, align 1
  %2183 = lshr i32 %2167, 31
  %2184 = trunc i32 %2183 to i8
  store i8 %2184, i8* %33, align 1
  %2185 = lshr i32 %2166, 31
  %2186 = xor i32 %2183, %2185
  %2187 = add nuw nsw i32 %2186, %2185
  %2188 = icmp eq i32 %2187, 2
  %2189 = zext i1 %2188 to i8
  store i8 %2189, i8* %39, align 1
  %2190 = sext i32 %2167 to i64
  store i64 %2190, i64* %RDX.i1252, align 8
  %2191 = shl nsw i64 %2190, 2
  %2192 = add i64 %2164, %2191
  %2193 = add i64 %2160, 17
  store i64 %2193, i64* %3, align 8
  %2194 = inttoptr i64 %2192 to i32*
  %2195 = load i32, i32* %2194, align 4
  store i8 0, i8* %14, align 1
  %2196 = and i32 %2195, 255
  %2197 = tail call i32 @llvm.ctpop.i32(i32 %2196)
  %2198 = trunc i32 %2197 to i8
  %2199 = and i8 %2198, 1
  %2200 = xor i8 %2199, 1
  store i8 %2200, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2201 = icmp eq i32 %2195, 0
  %2202 = zext i1 %2201 to i8
  store i8 %2202, i8* %30, align 1
  %2203 = lshr i32 %2195, 31
  %2204 = trunc i32 %2203 to i8
  store i8 %2204, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %2205 = icmp ne i8 %2204, 0
  %.v89 = select i1 %2205, i64 6, i64 27
  %2206 = add i64 %2193, %.v89
  store i64 %2206, i64* %3, align 8
  br i1 %2205, label %block_46d1e6, label %block_.L_46d1fb

block_46d1e6:                                     ; preds = %block_46d1cf
  %2207 = add i64 %2206, 4
  store i64 %2207, i64* %3, align 8
  %2208 = load i32, i32* %2112, align 4
  %2209 = sext i32 %2208 to i64
  store i64 %2209, i64* %RAX.i1128, align 8
  %2210 = shl nsw i64 %2209, 2
  %2211 = add i64 %2109, -1632
  %2212 = add i64 %2211, %2210
  %2213 = add i64 %2206, 11
  store i64 %2213, i64* %3, align 8
  %2214 = inttoptr i64 %2212 to i32*
  %2215 = load i32, i32* %2214, align 4
  %2216 = add i32 %2215, -1
  %2217 = zext i32 %2216 to i64
  store i64 %2217, i64* %RCX.i1237, align 8
  %2218 = icmp ne i32 %2215, 0
  %2219 = zext i1 %2218 to i8
  store i8 %2219, i8* %14, align 1
  %2220 = and i32 %2216, 255
  %2221 = tail call i32 @llvm.ctpop.i32(i32 %2220)
  %2222 = trunc i32 %2221 to i8
  %2223 = and i8 %2222, 1
  %2224 = xor i8 %2223, 1
  store i8 %2224, i8* %21, align 1
  %2225 = xor i32 %2215, 16
  %2226 = xor i32 %2225, %2216
  %2227 = lshr i32 %2226, 4
  %2228 = trunc i32 %2227 to i8
  %2229 = and i8 %2228, 1
  store i8 %2229, i8* %27, align 1
  %2230 = icmp eq i32 %2216, 0
  %2231 = zext i1 %2230 to i8
  store i8 %2231, i8* %30, align 1
  %2232 = lshr i32 %2216, 31
  %2233 = trunc i32 %2232 to i8
  store i8 %2233, i8* %33, align 1
  %2234 = lshr i32 %2215, 31
  %2235 = xor i32 %2232, %2234
  %2236 = xor i32 %2232, 1
  %2237 = add nuw nsw i32 %2235, %2236
  %2238 = icmp eq i32 %2237, 2
  %2239 = zext i1 %2238 to i8
  store i8 %2239, i8* %39, align 1
  %2240 = add i64 %2206, 21
  store i64 %2240, i64* %3, align 8
  store i32 %2216, i32* %2214, align 4
  %.pre136 = load i64, i64* %RBP.i, align 8
  %.pre137 = load i64, i64* %3, align 8
  br label %block_.L_46d1fb

block_.L_46d1fb:                                  ; preds = %block_46d1cf, %block_46d1e6, %block_.L_46d1b5
  %2241 = phi i64 [ %2206, %block_46d1cf ], [ %.pre137, %block_46d1e6 ], [ %2160, %block_.L_46d1b5 ]
  %2242 = phi i64 [ %2109, %block_46d1cf ], [ %.pre136, %block_46d1e6 ], [ %2109, %block_.L_46d1b5 ]
  %2243 = add i64 %2242, -24
  %2244 = add i64 %2241, 3
  store i64 %2244, i64* %3, align 8
  %2245 = inttoptr i64 %2243 to i32*
  %2246 = load i32, i32* %2245, align 4
  %2247 = add i32 %2246, 1
  %2248 = zext i32 %2247 to i64
  store i64 %2248, i64* %RAX.i1128, align 8
  %2249 = icmp eq i32 %2246, -1
  %2250 = icmp eq i32 %2247, 0
  %2251 = or i1 %2249, %2250
  %2252 = zext i1 %2251 to i8
  store i8 %2252, i8* %14, align 1
  %2253 = and i32 %2247, 255
  %2254 = tail call i32 @llvm.ctpop.i32(i32 %2253)
  %2255 = trunc i32 %2254 to i8
  %2256 = and i8 %2255, 1
  %2257 = xor i8 %2256, 1
  store i8 %2257, i8* %21, align 1
  %2258 = xor i32 %2247, %2246
  %2259 = lshr i32 %2258, 4
  %2260 = trunc i32 %2259 to i8
  %2261 = and i8 %2260, 1
  store i8 %2261, i8* %27, align 1
  %2262 = zext i1 %2250 to i8
  store i8 %2262, i8* %30, align 1
  %2263 = lshr i32 %2247, 31
  %2264 = trunc i32 %2263 to i8
  store i8 %2264, i8* %33, align 1
  %2265 = lshr i32 %2246, 31
  %2266 = xor i32 %2263, %2265
  %2267 = add nuw nsw i32 %2266, %2263
  %2268 = icmp eq i32 %2267, 2
  %2269 = zext i1 %2268 to i8
  store i8 %2269, i8* %39, align 1
  %2270 = sext i32 %2247 to i64
  store i64 %2270, i64* %RCX.i1237, align 8
  %2271 = add nsw i64 %2270, 12099168
  %2272 = add i64 %2241, 17
  store i64 %2272, i64* %3, align 8
  %2273 = inttoptr i64 %2271 to i8*
  %2274 = load i8, i8* %2273, align 1
  %2275 = zext i8 %2274 to i64
  store i64 %2275, i64* %RAX.i1128, align 8
  %2276 = zext i8 %2274 to i32
  %2277 = add nsw i32 %2276, -3
  %2278 = icmp ult i8 %2274, 3
  %2279 = zext i1 %2278 to i8
  store i8 %2279, i8* %14, align 1
  %2280 = and i32 %2277, 255
  %2281 = tail call i32 @llvm.ctpop.i32(i32 %2280)
  %2282 = trunc i32 %2281 to i8
  %2283 = and i8 %2282, 1
  %2284 = xor i8 %2283, 1
  store i8 %2284, i8* %21, align 1
  %2285 = xor i32 %2277, %2276
  %2286 = lshr i32 %2285, 4
  %2287 = trunc i32 %2286 to i8
  %2288 = and i8 %2287, 1
  store i8 %2288, i8* %27, align 1
  %2289 = icmp eq i32 %2277, 0
  %2290 = zext i1 %2289 to i8
  store i8 %2290, i8* %30, align 1
  %2291 = lshr i32 %2277, 31
  %2292 = trunc i32 %2291 to i8
  store i8 %2292, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v198 = select i1 %2289, i64 70, i64 26
  %2293 = add i64 %2241, %.v198
  store i64 %2293, i64* %3, align 8
  br i1 %2289, label %block_.L_46d241, label %block_46d215

block_46d215:                                     ; preds = %block_.L_46d1fb
  %2294 = add i64 %2242, -16
  %2295 = add i64 %2293, 4
  store i64 %2295, i64* %3, align 8
  %2296 = inttoptr i64 %2294 to i64*
  %2297 = load i64, i64* %2296, align 8
  store i64 %2297, i64* %RAX.i1128, align 8
  %2298 = add i64 %2293, 7
  store i64 %2298, i64* %3, align 8
  %2299 = load i32, i32* %2245, align 4
  %2300 = add i32 %2299, 1
  %2301 = zext i32 %2300 to i64
  store i64 %2301, i64* %RCX.i1237, align 8
  %2302 = icmp eq i32 %2299, -1
  %2303 = icmp eq i32 %2300, 0
  %2304 = or i1 %2302, %2303
  %2305 = zext i1 %2304 to i8
  store i8 %2305, i8* %14, align 1
  %2306 = and i32 %2300, 255
  %2307 = tail call i32 @llvm.ctpop.i32(i32 %2306)
  %2308 = trunc i32 %2307 to i8
  %2309 = and i8 %2308, 1
  %2310 = xor i8 %2309, 1
  store i8 %2310, i8* %21, align 1
  %2311 = xor i32 %2300, %2299
  %2312 = lshr i32 %2311, 4
  %2313 = trunc i32 %2312 to i8
  %2314 = and i8 %2313, 1
  store i8 %2314, i8* %27, align 1
  %2315 = zext i1 %2303 to i8
  store i8 %2315, i8* %30, align 1
  %2316 = lshr i32 %2300, 31
  %2317 = trunc i32 %2316 to i8
  store i8 %2317, i8* %33, align 1
  %2318 = lshr i32 %2299, 31
  %2319 = xor i32 %2316, %2318
  %2320 = add nuw nsw i32 %2319, %2316
  %2321 = icmp eq i32 %2320, 2
  %2322 = zext i1 %2321 to i8
  store i8 %2322, i8* %39, align 1
  %2323 = sext i32 %2300 to i64
  store i64 %2323, i64* %RDX.i1252, align 8
  %2324 = shl nsw i64 %2323, 2
  %2325 = add i64 %2297, %2324
  %2326 = add i64 %2293, 17
  store i64 %2326, i64* %3, align 8
  %2327 = inttoptr i64 %2325 to i32*
  %2328 = load i32, i32* %2327, align 4
  store i8 0, i8* %14, align 1
  %2329 = and i32 %2328, 255
  %2330 = tail call i32 @llvm.ctpop.i32(i32 %2329)
  %2331 = trunc i32 %2330 to i8
  %2332 = and i8 %2331, 1
  %2333 = xor i8 %2332, 1
  store i8 %2333, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2334 = icmp eq i32 %2328, 0
  %2335 = zext i1 %2334 to i8
  store i8 %2335, i8* %30, align 1
  %2336 = lshr i32 %2328, 31
  %2337 = trunc i32 %2336 to i8
  store i8 %2337, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %2338 = icmp ne i8 %2337, 0
  %.v90 = select i1 %2338, i64 6, i64 27
  %2339 = add i64 %2326, %.v90
  store i64 %2339, i64* %3, align 8
  br i1 %2338, label %block_46d22c, label %block_.L_46d241

block_46d22c:                                     ; preds = %block_46d215
  %2340 = add i64 %2339, 4
  store i64 %2340, i64* %3, align 8
  %2341 = load i32, i32* %2245, align 4
  %2342 = sext i32 %2341 to i64
  store i64 %2342, i64* %RAX.i1128, align 8
  %2343 = shl nsw i64 %2342, 2
  %2344 = add i64 %2242, -1632
  %2345 = add i64 %2344, %2343
  %2346 = add i64 %2339, 11
  store i64 %2346, i64* %3, align 8
  %2347 = inttoptr i64 %2345 to i32*
  %2348 = load i32, i32* %2347, align 4
  %2349 = add i32 %2348, -1
  %2350 = zext i32 %2349 to i64
  store i64 %2350, i64* %RCX.i1237, align 8
  %2351 = icmp ne i32 %2348, 0
  %2352 = zext i1 %2351 to i8
  store i8 %2352, i8* %14, align 1
  %2353 = and i32 %2349, 255
  %2354 = tail call i32 @llvm.ctpop.i32(i32 %2353)
  %2355 = trunc i32 %2354 to i8
  %2356 = and i8 %2355, 1
  %2357 = xor i8 %2356, 1
  store i8 %2357, i8* %21, align 1
  %2358 = xor i32 %2348, 16
  %2359 = xor i32 %2358, %2349
  %2360 = lshr i32 %2359, 4
  %2361 = trunc i32 %2360 to i8
  %2362 = and i8 %2361, 1
  store i8 %2362, i8* %27, align 1
  %2363 = icmp eq i32 %2349, 0
  %2364 = zext i1 %2363 to i8
  store i8 %2364, i8* %30, align 1
  %2365 = lshr i32 %2349, 31
  %2366 = trunc i32 %2365 to i8
  store i8 %2366, i8* %33, align 1
  %2367 = lshr i32 %2348, 31
  %2368 = xor i32 %2365, %2367
  %2369 = xor i32 %2365, 1
  %2370 = add nuw nsw i32 %2368, %2369
  %2371 = icmp eq i32 %2370, 2
  %2372 = zext i1 %2371 to i8
  store i8 %2372, i8* %39, align 1
  %2373 = add i64 %2339, 21
  store i64 %2373, i64* %3, align 8
  store i32 %2349, i32* %2347, align 4
  %.pre138 = load i64, i64* %3, align 8
  %.pre139.pre.pre = load i64, i64* %RBP.i, align 8
  br label %block_.L_46d241

block_.L_46d241:                                  ; preds = %block_46d215, %block_46d22c, %block_.L_46d1fb
  %.pre139.pre = phi i64 [ %2242, %block_46d215 ], [ %.pre139.pre.pre, %block_46d22c ], [ %2242, %block_.L_46d1fb ]
  %2374 = phi i64 [ %2339, %block_46d215 ], [ %.pre138, %block_46d22c ], [ %2293, %block_.L_46d1fb ]
  %2375 = add i64 %2374, 5
  store i64 %2375, i64* %3, align 8
  br label %block_.L_46d246

block_.L_46d246:                                  ; preds = %block_.L_46d241, %block_46d112, %block_46d0e1, %block_46d0b0, %block_46d07f, %block_.L_46d053
  %.pre139 = phi i64 [ %.pre139.pre, %block_.L_46d241 ], [ %1440, %block_46d112 ], [ %1440, %block_46d0e1 ], [ %1440, %block_46d0b0 ], [ %1440, %block_46d07f ], [ %1440, %block_.L_46d053 ]
  %2376 = phi i64 [ %2375, %block_.L_46d241 ], [ %1848, %block_46d112 ], [ %1752, %block_46d0e1 ], [ %1656, %block_46d0b0 ], [ %1562, %block_46d07f ], [ %1467, %block_.L_46d053 ]
  %2377 = add i64 %2376, 5
  store i64 %2377, i64* %3, align 8
  br label %block_.L_46d24b

block_.L_46d24b:                                  ; preds = %block_.L_46d246, %block_46ce5b
  %2378 = phi i64 [ %459, %block_46ce5b ], [ %.pre139, %block_.L_46d246 ]
  %storemerge73 = phi i64 [ %515, %block_46ce5b ], [ %2377, %block_.L_46d246 ]
  %2379 = add i64 %2378, -24
  %2380 = add i64 %storemerge73, 3
  store i64 %2380, i64* %3, align 8
  %2381 = inttoptr i64 %2379 to i32*
  %2382 = load i32, i32* %2381, align 4
  %2383 = add i32 %2382, 1
  %2384 = zext i32 %2383 to i64
  store i64 %2384, i64* %RAX.i1128, align 8
  %2385 = icmp eq i32 %2382, -1
  %2386 = icmp eq i32 %2383, 0
  %2387 = or i1 %2385, %2386
  %2388 = zext i1 %2387 to i8
  store i8 %2388, i8* %14, align 1
  %2389 = and i32 %2383, 255
  %2390 = tail call i32 @llvm.ctpop.i32(i32 %2389)
  %2391 = trunc i32 %2390 to i8
  %2392 = and i8 %2391, 1
  %2393 = xor i8 %2392, 1
  store i8 %2393, i8* %21, align 1
  %2394 = xor i32 %2383, %2382
  %2395 = lshr i32 %2394, 4
  %2396 = trunc i32 %2395 to i8
  %2397 = and i8 %2396, 1
  store i8 %2397, i8* %27, align 1
  %2398 = zext i1 %2386 to i8
  store i8 %2398, i8* %30, align 1
  %2399 = lshr i32 %2383, 31
  %2400 = trunc i32 %2399 to i8
  store i8 %2400, i8* %33, align 1
  %2401 = lshr i32 %2382, 31
  %2402 = xor i32 %2399, %2401
  %2403 = add nuw nsw i32 %2402, %2399
  %2404 = icmp eq i32 %2403, 2
  %2405 = zext i1 %2404 to i8
  store i8 %2405, i8* %39, align 1
  %2406 = add i64 %storemerge73, 9
  store i64 %2406, i64* %3, align 8
  store i32 %2383, i32* %2381, align 4
  %2407 = load i64, i64* %3, align 8
  %2408 = add i64 %2407, -1051
  store i64 %2408, i64* %3, align 8
  br label %block_.L_46ce39

block_.L_46d259:                                  ; preds = %block_.L_46ce39
  store i64 1600, i64* %RAX.i1128, align 8
  store i64 1600, i64* %RDX.i1252, align 8
  %2409 = add i64 %459, -1632
  store i64 %2409, i64* %RCX.i1237, align 8
  %2410 = add i64 %459, -16
  %2411 = add i64 %488, 18
  store i64 %2411, i64* %3, align 8
  %2412 = inttoptr i64 %2410 to i64*
  %2413 = load i64, i64* %2412, align 8
  store i64 %2413, i64* %RDI.i1167, align 8
  store i64 %2409, i64* %RSI.i1164, align 8
  %2414 = add i64 %488, -442729
  %2415 = add i64 %488, 29
  %2416 = load i64, i64* %6, align 8
  %2417 = add i64 %2416, -8
  %2418 = inttoptr i64 %2417 to i64*
  store i64 %2415, i64* %2418, align 8
  store i64 %2417, i64* %6, align 8
  store i64 %2414, i64* %3, align 8
  %2419 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @memcpy to i64), %struct.Memory* %MEMORY.7)
  %2420 = load i64, i64* %RBP.i, align 8
  %2421 = add i64 %2420, -1636
  %2422 = load i64, i64* %3, align 8
  %2423 = add i64 %2422, 6
  store i64 %2423, i64* %3, align 8
  %2424 = inttoptr i64 %2421 to i32*
  %2425 = load i32, i32* %2424, align 4
  %2426 = add i32 %2425, 1
  %2427 = zext i32 %2426 to i64
  store i64 %2427, i64* %RAX.i1128, align 8
  %2428 = icmp eq i32 %2425, -1
  %2429 = icmp eq i32 %2426, 0
  %2430 = or i1 %2428, %2429
  %2431 = zext i1 %2430 to i8
  store i8 %2431, i8* %14, align 1
  %2432 = and i32 %2426, 255
  %2433 = tail call i32 @llvm.ctpop.i32(i32 %2432)
  %2434 = trunc i32 %2433 to i8
  %2435 = and i8 %2434, 1
  %2436 = xor i8 %2435, 1
  store i8 %2436, i8* %21, align 1
  %2437 = xor i32 %2426, %2425
  %2438 = lshr i32 %2437, 4
  %2439 = trunc i32 %2438 to i8
  %2440 = and i8 %2439, 1
  store i8 %2440, i8* %27, align 1
  %2441 = zext i1 %2429 to i8
  store i8 %2441, i8* %30, align 1
  %2442 = lshr i32 %2426, 31
  %2443 = trunc i32 %2442 to i8
  store i8 %2443, i8* %33, align 1
  %2444 = lshr i32 %2425, 31
  %2445 = xor i32 %2442, %2444
  %2446 = add nuw nsw i32 %2445, %2442
  %2447 = icmp eq i32 %2446, 2
  %2448 = zext i1 %2447 to i8
  store i8 %2448, i8* %39, align 1
  %2449 = add i64 %2422, 15
  store i64 %2449, i64* %3, align 8
  store i32 %2426, i32* %2424, align 4
  %2450 = load i64, i64* %3, align 8
  %2451 = add i64 %2450, -1122
  store i64 %2451, i64* %3, align 8
  br label %block_.L_46ce23

block_.L_46d28a:                                  ; preds = %block_.L_46ce23
  %2452 = add i64 %454, 10
  store i64 %2452, i64* %3, align 8
  store i32 0, i32* %421, align 4
  %.pre105 = load i64, i64* %3, align 8
  br label %block_.L_46d294

block_.L_46d294:                                  ; preds = %block_.L_46d5ae, %block_.L_46d28a
  %2453 = phi i64 [ %.pre105, %block_.L_46d28a ], [ %3847, %block_.L_46d5ae ]
  %MEMORY.28 = phi %struct.Memory* [ %MEMORY.7, %block_.L_46d28a ], [ %3815, %block_.L_46d5ae ]
  %2454 = load i64, i64* %RBP.i, align 8
  %2455 = add i64 %2454, -1636
  %2456 = add i64 %2453, 6
  store i64 %2456, i64* %3, align 8
  %2457 = inttoptr i64 %2455 to i32*
  %2458 = load i32, i32* %2457, align 4
  %2459 = zext i32 %2458 to i64
  store i64 %2459, i64* %RAX.i1128, align 8
  %2460 = add i64 %2454, -8
  %2461 = add i64 %2453, 9
  store i64 %2461, i64* %3, align 8
  %2462 = inttoptr i64 %2460 to i32*
  %2463 = load i32, i32* %2462, align 4
  %2464 = sub i32 %2458, %2463
  %2465 = icmp ult i32 %2458, %2463
  %2466 = zext i1 %2465 to i8
  store i8 %2466, i8* %14, align 1
  %2467 = and i32 %2464, 255
  %2468 = tail call i32 @llvm.ctpop.i32(i32 %2467)
  %2469 = trunc i32 %2468 to i8
  %2470 = and i8 %2469, 1
  %2471 = xor i8 %2470, 1
  store i8 %2471, i8* %21, align 1
  %2472 = xor i32 %2463, %2458
  %2473 = xor i32 %2472, %2464
  %2474 = lshr i32 %2473, 4
  %2475 = trunc i32 %2474 to i8
  %2476 = and i8 %2475, 1
  store i8 %2476, i8* %27, align 1
  %2477 = icmp eq i32 %2464, 0
  %2478 = zext i1 %2477 to i8
  store i8 %2478, i8* %30, align 1
  %2479 = lshr i32 %2464, 31
  %2480 = trunc i32 %2479 to i8
  store i8 %2480, i8* %33, align 1
  %2481 = lshr i32 %2458, 31
  %2482 = lshr i32 %2463, 31
  %2483 = xor i32 %2482, %2481
  %2484 = xor i32 %2479, %2481
  %2485 = add nuw nsw i32 %2484, %2483
  %2486 = icmp eq i32 %2485, 2
  %2487 = zext i1 %2486 to i8
  store i8 %2487, i8* %39, align 1
  %2488 = icmp ne i8 %2480, 0
  %2489 = xor i1 %2488, %2486
  %.v153 = select i1 %2489, i64 15, i64 843
  %2490 = add i64 %2453, %.v153
  store i64 %2490, i64* %3, align 8
  br i1 %2489, label %block_46d2a3, label %block_.L_46d5df

block_46d2a3:                                     ; preds = %block_.L_46d294
  %2491 = add i64 %2454, -24
  %2492 = add i64 %2490, 7
  store i64 %2492, i64* %3, align 8
  %2493 = inttoptr i64 %2491 to i32*
  store i32 21, i32* %2493, align 4
  %.pre106 = load i64, i64* %3, align 8
  br label %block_.L_46d2aa

block_.L_46d2aa:                                  ; preds = %block_.L_46d5a0, %block_46d2a3
  %2494 = phi i64 [ %3804, %block_.L_46d5a0 ], [ %.pre106, %block_46d2a3 ]
  %2495 = load i64, i64* %RBP.i, align 8
  %2496 = add i64 %2495, -24
  %2497 = add i64 %2494, 7
  store i64 %2497, i64* %3, align 8
  %2498 = inttoptr i64 %2496 to i32*
  %2499 = load i32, i32* %2498, align 4
  %2500 = add i32 %2499, -400
  %2501 = icmp ult i32 %2499, 400
  %2502 = zext i1 %2501 to i8
  store i8 %2502, i8* %14, align 1
  %2503 = and i32 %2500, 255
  %2504 = tail call i32 @llvm.ctpop.i32(i32 %2503)
  %2505 = trunc i32 %2504 to i8
  %2506 = and i8 %2505, 1
  %2507 = xor i8 %2506, 1
  store i8 %2507, i8* %21, align 1
  %2508 = xor i32 %2499, 16
  %2509 = xor i32 %2508, %2500
  %2510 = lshr i32 %2509, 4
  %2511 = trunc i32 %2510 to i8
  %2512 = and i8 %2511, 1
  store i8 %2512, i8* %27, align 1
  %2513 = icmp eq i32 %2500, 0
  %2514 = zext i1 %2513 to i8
  store i8 %2514, i8* %30, align 1
  %2515 = lshr i32 %2500, 31
  %2516 = trunc i32 %2515 to i8
  store i8 %2516, i8* %33, align 1
  %2517 = lshr i32 %2499, 31
  %2518 = xor i32 %2515, %2517
  %2519 = add nuw nsw i32 %2518, %2517
  %2520 = icmp eq i32 %2519, 2
  %2521 = zext i1 %2520 to i8
  store i8 %2521, i8* %39, align 1
  %2522 = icmp ne i8 %2516, 0
  %2523 = xor i1 %2522, %2520
  %.v154 = select i1 %2523, i64 13, i64 772
  %2524 = add i64 %2494, %.v154
  store i64 %2524, i64* %3, align 8
  br i1 %2523, label %block_46d2b7, label %block_.L_46d5ae

block_46d2b7:                                     ; preds = %block_.L_46d2aa
  %2525 = add i64 %2524, 4
  store i64 %2525, i64* %3, align 8
  %2526 = load i32, i32* %2498, align 4
  %2527 = sext i32 %2526 to i64
  store i64 %2527, i64* %RAX.i1128, align 8
  %2528 = add nsw i64 %2527, 12099168
  %2529 = add i64 %2524, 12
  store i64 %2529, i64* %3, align 8
  %2530 = inttoptr i64 %2528 to i8*
  %2531 = load i8, i8* %2530, align 1
  %2532 = zext i8 %2531 to i64
  store i64 %2532, i64* %RCX.i1237, align 8
  %2533 = zext i8 %2531 to i32
  %2534 = add nsw i32 %2533, -3
  %2535 = icmp ult i8 %2531, 3
  %2536 = zext i1 %2535 to i8
  store i8 %2536, i8* %14, align 1
  %2537 = and i32 %2534, 255
  %2538 = tail call i32 @llvm.ctpop.i32(i32 %2537)
  %2539 = trunc i32 %2538 to i8
  %2540 = and i8 %2539, 1
  %2541 = xor i8 %2540, 1
  store i8 %2541, i8* %21, align 1
  %2542 = xor i32 %2534, %2533
  %2543 = lshr i32 %2542, 4
  %2544 = trunc i32 %2543 to i8
  %2545 = and i8 %2544, 1
  store i8 %2545, i8* %27, align 1
  %2546 = icmp eq i32 %2534, 0
  %2547 = zext i1 %2546 to i8
  store i8 %2547, i8* %30, align 1
  %2548 = lshr i32 %2534, 31
  %2549 = trunc i32 %2548 to i8
  store i8 %2549, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v155 = select i1 %2546, i64 21, i64 26
  %2550 = add i64 %2524, %.v155
  store i64 %2550, i64* %3, align 8
  br i1 %2546, label %block_46d2cc, label %block_.L_46d2d1

block_46d2cc:                                     ; preds = %block_46d2b7
  %2551 = add i64 %2550, 724
  br label %block_.L_46d5a0

block_.L_46d2d1:                                  ; preds = %block_46d2b7
  %2552 = add i64 %2550, 4
  store i64 %2552, i64* %3, align 8
  %2553 = load i32, i32* %2498, align 4
  %2554 = sext i32 %2553 to i64
  store i64 %2554, i64* %RAX.i1128, align 8
  %2555 = shl nsw i64 %2554, 2
  %2556 = add i64 %2495, -1632
  %2557 = add i64 %2556, %2555
  %2558 = add i64 %2550, 12
  store i64 %2558, i64* %3, align 8
  %2559 = inttoptr i64 %2557 to i32*
  %2560 = load i32, i32* %2559, align 4
  store i8 0, i8* %14, align 1
  %2561 = and i32 %2560, 255
  %2562 = tail call i32 @llvm.ctpop.i32(i32 %2561)
  %2563 = trunc i32 %2562 to i8
  %2564 = and i8 %2563, 1
  %2565 = xor i8 %2564, 1
  store i8 %2565, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2566 = icmp eq i32 %2560, 0
  %2567 = zext i1 %2566 to i8
  store i8 %2567, i8* %30, align 1
  %2568 = lshr i32 %2560, 31
  %2569 = trunc i32 %2568 to i8
  store i8 %2569, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %2570 = icmp ne i8 %2569, 0
  %2571 = or i1 %2566, %2570
  %.v156 = select i1 %2571, i64 357, i64 18
  %2572 = add i64 %2550, %.v156
  store i64 %2572, i64* %3, align 8
  br i1 %2571, label %block_.L_46d436, label %block_46d2e3

block_46d2e3:                                     ; preds = %block_.L_46d2d1
  %2573 = add i64 %2572, 3
  store i64 %2573, i64* %3, align 8
  %2574 = load i32, i32* %2498, align 4
  %2575 = add i32 %2574, 20
  %2576 = zext i32 %2575 to i64
  store i64 %2576, i64* %RAX.i1128, align 8
  %2577 = icmp ugt i32 %2574, -21
  %2578 = zext i1 %2577 to i8
  store i8 %2578, i8* %14, align 1
  %2579 = and i32 %2575, 255
  %2580 = tail call i32 @llvm.ctpop.i32(i32 %2579)
  %2581 = trunc i32 %2580 to i8
  %2582 = and i8 %2581, 1
  %2583 = xor i8 %2582, 1
  store i8 %2583, i8* %21, align 1
  %2584 = xor i32 %2574, 16
  %2585 = xor i32 %2584, %2575
  %2586 = lshr i32 %2585, 4
  %2587 = trunc i32 %2586 to i8
  %2588 = and i8 %2587, 1
  store i8 %2588, i8* %27, align 1
  %2589 = icmp eq i32 %2575, 0
  %2590 = zext i1 %2589 to i8
  store i8 %2590, i8* %30, align 1
  %2591 = lshr i32 %2575, 31
  %2592 = trunc i32 %2591 to i8
  store i8 %2592, i8* %33, align 1
  %2593 = lshr i32 %2574, 31
  %2594 = xor i32 %2591, %2593
  %2595 = add nuw nsw i32 %2594, %2591
  %2596 = icmp eq i32 %2595, 2
  %2597 = zext i1 %2596 to i8
  store i8 %2597, i8* %39, align 1
  %2598 = sext i32 %2575 to i64
  store i64 %2598, i64* %RCX.i1237, align 8
  %2599 = add nsw i64 %2598, 12099168
  %2600 = add i64 %2572, 17
  store i64 %2600, i64* %3, align 8
  %2601 = inttoptr i64 %2599 to i8*
  %2602 = load i8, i8* %2601, align 1
  %2603 = zext i8 %2602 to i64
  store i64 %2603, i64* %RAX.i1128, align 8
  %2604 = zext i8 %2602 to i32
  %2605 = add nsw i32 %2604, -3
  %2606 = icmp ult i8 %2602, 3
  %2607 = zext i1 %2606 to i8
  store i8 %2607, i8* %14, align 1
  %2608 = and i32 %2605, 255
  %2609 = tail call i32 @llvm.ctpop.i32(i32 %2608)
  %2610 = trunc i32 %2609 to i8
  %2611 = and i8 %2610, 1
  %2612 = xor i8 %2611, 1
  store i8 %2612, i8* %21, align 1
  %2613 = xor i32 %2605, %2604
  %2614 = lshr i32 %2613, 4
  %2615 = trunc i32 %2614 to i8
  %2616 = and i8 %2615, 1
  store i8 %2616, i8* %27, align 1
  %2617 = icmp eq i32 %2605, 0
  %2618 = zext i1 %2617 to i8
  store i8 %2618, i8* %30, align 1
  %2619 = lshr i32 %2605, 31
  %2620 = trunc i32 %2619 to i8
  store i8 %2620, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v157 = select i1 %2617, i64 70, i64 26
  %2621 = add i64 %2572, %.v157
  store i64 %2621, i64* %3, align 8
  br i1 %2617, label %block_.L_46d329, label %block_46d2fd

block_46d2fd:                                     ; preds = %block_46d2e3
  %2622 = add i64 %2495, -16
  %2623 = add i64 %2621, 4
  store i64 %2623, i64* %3, align 8
  %2624 = inttoptr i64 %2622 to i64*
  %2625 = load i64, i64* %2624, align 8
  store i64 %2625, i64* %RAX.i1128, align 8
  %2626 = add i64 %2621, 7
  store i64 %2626, i64* %3, align 8
  %2627 = load i32, i32* %2498, align 4
  %2628 = add i32 %2627, 20
  %2629 = zext i32 %2628 to i64
  store i64 %2629, i64* %RCX.i1237, align 8
  %2630 = icmp ugt i32 %2627, -21
  %2631 = zext i1 %2630 to i8
  store i8 %2631, i8* %14, align 1
  %2632 = and i32 %2628, 255
  %2633 = tail call i32 @llvm.ctpop.i32(i32 %2632)
  %2634 = trunc i32 %2633 to i8
  %2635 = and i8 %2634, 1
  %2636 = xor i8 %2635, 1
  store i8 %2636, i8* %21, align 1
  %2637 = xor i32 %2627, 16
  %2638 = xor i32 %2637, %2628
  %2639 = lshr i32 %2638, 4
  %2640 = trunc i32 %2639 to i8
  %2641 = and i8 %2640, 1
  store i8 %2641, i8* %27, align 1
  %2642 = icmp eq i32 %2628, 0
  %2643 = zext i1 %2642 to i8
  store i8 %2643, i8* %30, align 1
  %2644 = lshr i32 %2628, 31
  %2645 = trunc i32 %2644 to i8
  store i8 %2645, i8* %33, align 1
  %2646 = lshr i32 %2627, 31
  %2647 = xor i32 %2644, %2646
  %2648 = add nuw nsw i32 %2647, %2644
  %2649 = icmp eq i32 %2648, 2
  %2650 = zext i1 %2649 to i8
  store i8 %2650, i8* %39, align 1
  %2651 = sext i32 %2628 to i64
  store i64 %2651, i64* %RDX.i1252, align 8
  %2652 = shl nsw i64 %2651, 2
  %2653 = add i64 %2625, %2652
  %2654 = add i64 %2621, 17
  store i64 %2654, i64* %3, align 8
  %2655 = inttoptr i64 %2653 to i32*
  %2656 = load i32, i32* %2655, align 4
  store i8 0, i8* %14, align 1
  %2657 = and i32 %2656, 255
  %2658 = tail call i32 @llvm.ctpop.i32(i32 %2657)
  %2659 = trunc i32 %2658 to i8
  %2660 = and i8 %2659, 1
  %2661 = xor i8 %2660, 1
  store i8 %2661, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2662 = icmp eq i32 %2656, 0
  %2663 = zext i1 %2662 to i8
  store i8 %2663, i8* %30, align 1
  %2664 = lshr i32 %2656, 31
  %2665 = trunc i32 %2664 to i8
  store i8 %2665, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %2666 = xor i1 %2662, true
  %2667 = icmp eq i8 %2665, 0
  %2668 = and i1 %2667, %2666
  %.v158 = select i1 %2668, i64 44, i64 23
  %2669 = add i64 %2621, %.v158
  store i64 %2669, i64* %3, align 8
  br i1 %2668, label %block_.L_46d329, label %block_46d314

block_46d314:                                     ; preds = %block_46d2fd
  %2670 = add i64 %2669, 4
  store i64 %2670, i64* %3, align 8
  %2671 = load i32, i32* %2498, align 4
  %2672 = sext i32 %2671 to i64
  store i64 %2672, i64* %RAX.i1128, align 8
  %2673 = shl nsw i64 %2672, 2
  %2674 = add i64 %2556, %2673
  %2675 = add i64 %2669, 11
  store i64 %2675, i64* %3, align 8
  %2676 = inttoptr i64 %2674 to i32*
  %2677 = load i32, i32* %2676, align 4
  %2678 = add i32 %2677, -1
  %2679 = zext i32 %2678 to i64
  store i64 %2679, i64* %RCX.i1237, align 8
  %2680 = icmp ne i32 %2677, 0
  %2681 = zext i1 %2680 to i8
  store i8 %2681, i8* %14, align 1
  %2682 = and i32 %2678, 255
  %2683 = tail call i32 @llvm.ctpop.i32(i32 %2682)
  %2684 = trunc i32 %2683 to i8
  %2685 = and i8 %2684, 1
  %2686 = xor i8 %2685, 1
  store i8 %2686, i8* %21, align 1
  %2687 = xor i32 %2677, 16
  %2688 = xor i32 %2687, %2678
  %2689 = lshr i32 %2688, 4
  %2690 = trunc i32 %2689 to i8
  %2691 = and i8 %2690, 1
  store i8 %2691, i8* %27, align 1
  %2692 = icmp eq i32 %2678, 0
  %2693 = zext i1 %2692 to i8
  store i8 %2693, i8* %30, align 1
  %2694 = lshr i32 %2678, 31
  %2695 = trunc i32 %2694 to i8
  store i8 %2695, i8* %33, align 1
  %2696 = lshr i32 %2677, 31
  %2697 = xor i32 %2694, %2696
  %2698 = xor i32 %2694, 1
  %2699 = add nuw nsw i32 %2697, %2698
  %2700 = icmp eq i32 %2699, 2
  %2701 = zext i1 %2700 to i8
  store i8 %2701, i8* %39, align 1
  %2702 = add i64 %2669, 21
  store i64 %2702, i64* %3, align 8
  store i32 %2678, i32* %2676, align 4
  %.pre107 = load i64, i64* %RBP.i, align 8
  %.pre108 = load i64, i64* %3, align 8
  br label %block_.L_46d329

block_.L_46d329:                                  ; preds = %block_46d314, %block_46d2fd, %block_46d2e3
  %2703 = phi i64 [ %.pre108, %block_46d314 ], [ %2669, %block_46d2fd ], [ %2621, %block_46d2e3 ]
  %2704 = phi i64 [ %.pre107, %block_46d314 ], [ %2495, %block_46d2fd ], [ %2495, %block_46d2e3 ]
  %2705 = add i64 %2704, -24
  %2706 = add i64 %2703, 3
  store i64 %2706, i64* %3, align 8
  %2707 = inttoptr i64 %2705 to i32*
  %2708 = load i32, i32* %2707, align 4
  %2709 = add i32 %2708, -1
  %2710 = zext i32 %2709 to i64
  store i64 %2710, i64* %RAX.i1128, align 8
  %2711 = icmp eq i32 %2708, 0
  %2712 = zext i1 %2711 to i8
  store i8 %2712, i8* %14, align 1
  %2713 = and i32 %2709, 255
  %2714 = tail call i32 @llvm.ctpop.i32(i32 %2713)
  %2715 = trunc i32 %2714 to i8
  %2716 = and i8 %2715, 1
  %2717 = xor i8 %2716, 1
  store i8 %2717, i8* %21, align 1
  %2718 = xor i32 %2709, %2708
  %2719 = lshr i32 %2718, 4
  %2720 = trunc i32 %2719 to i8
  %2721 = and i8 %2720, 1
  store i8 %2721, i8* %27, align 1
  %2722 = icmp eq i32 %2709, 0
  %2723 = zext i1 %2722 to i8
  store i8 %2723, i8* %30, align 1
  %2724 = lshr i32 %2709, 31
  %2725 = trunc i32 %2724 to i8
  store i8 %2725, i8* %33, align 1
  %2726 = lshr i32 %2708, 31
  %2727 = xor i32 %2724, %2726
  %2728 = add nuw nsw i32 %2727, %2726
  %2729 = icmp eq i32 %2728, 2
  %2730 = zext i1 %2729 to i8
  store i8 %2730, i8* %39, align 1
  %2731 = sext i32 %2709 to i64
  store i64 %2731, i64* %RCX.i1237, align 8
  %2732 = add nsw i64 %2731, 12099168
  %2733 = add i64 %2703, 17
  store i64 %2733, i64* %3, align 8
  %2734 = inttoptr i64 %2732 to i8*
  %2735 = load i8, i8* %2734, align 1
  %2736 = zext i8 %2735 to i64
  store i64 %2736, i64* %RAX.i1128, align 8
  %2737 = zext i8 %2735 to i32
  %2738 = add nsw i32 %2737, -3
  %2739 = icmp ult i8 %2735, 3
  %2740 = zext i1 %2739 to i8
  store i8 %2740, i8* %14, align 1
  %2741 = and i32 %2738, 255
  %2742 = tail call i32 @llvm.ctpop.i32(i32 %2741)
  %2743 = trunc i32 %2742 to i8
  %2744 = and i8 %2743, 1
  %2745 = xor i8 %2744, 1
  store i8 %2745, i8* %21, align 1
  %2746 = xor i32 %2738, %2737
  %2747 = lshr i32 %2746, 4
  %2748 = trunc i32 %2747 to i8
  %2749 = and i8 %2748, 1
  store i8 %2749, i8* %27, align 1
  %2750 = icmp eq i32 %2738, 0
  %2751 = zext i1 %2750 to i8
  store i8 %2751, i8* %30, align 1
  %2752 = lshr i32 %2738, 31
  %2753 = trunc i32 %2752 to i8
  store i8 %2753, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v159 = select i1 %2750, i64 88, i64 26
  %2754 = add i64 %2703, %.v159
  store i64 %2754, i64* %3, align 8
  br i1 %2750, label %block_.L_46d381, label %block_46d343

block_46d343:                                     ; preds = %block_.L_46d329
  %2755 = add i64 %2704, -16
  %2756 = add i64 %2754, 4
  store i64 %2756, i64* %3, align 8
  %2757 = inttoptr i64 %2755 to i64*
  %2758 = load i64, i64* %2757, align 8
  store i64 %2758, i64* %RAX.i1128, align 8
  %2759 = add i64 %2754, 7
  store i64 %2759, i64* %3, align 8
  %2760 = load i32, i32* %2707, align 4
  %2761 = add i32 %2760, -1
  %2762 = zext i32 %2761 to i64
  store i64 %2762, i64* %RCX.i1237, align 8
  %2763 = icmp eq i32 %2760, 0
  %2764 = zext i1 %2763 to i8
  store i8 %2764, i8* %14, align 1
  %2765 = and i32 %2761, 255
  %2766 = tail call i32 @llvm.ctpop.i32(i32 %2765)
  %2767 = trunc i32 %2766 to i8
  %2768 = and i8 %2767, 1
  %2769 = xor i8 %2768, 1
  store i8 %2769, i8* %21, align 1
  %2770 = xor i32 %2761, %2760
  %2771 = lshr i32 %2770, 4
  %2772 = trunc i32 %2771 to i8
  %2773 = and i8 %2772, 1
  store i8 %2773, i8* %27, align 1
  %2774 = icmp eq i32 %2761, 0
  %2775 = zext i1 %2774 to i8
  store i8 %2775, i8* %30, align 1
  %2776 = lshr i32 %2761, 31
  %2777 = trunc i32 %2776 to i8
  store i8 %2777, i8* %33, align 1
  %2778 = lshr i32 %2760, 31
  %2779 = xor i32 %2776, %2778
  %2780 = add nuw nsw i32 %2779, %2778
  %2781 = icmp eq i32 %2780, 2
  %2782 = zext i1 %2781 to i8
  store i8 %2782, i8* %39, align 1
  %2783 = sext i32 %2761 to i64
  store i64 %2783, i64* %RDX.i1252, align 8
  %2784 = shl nsw i64 %2783, 2
  %2785 = add i64 %2758, %2784
  %2786 = add i64 %2754, 17
  store i64 %2786, i64* %3, align 8
  %2787 = inttoptr i64 %2785 to i32*
  %2788 = load i32, i32* %2787, align 4
  store i8 0, i8* %14, align 1
  %2789 = and i32 %2788, 255
  %2790 = tail call i32 @llvm.ctpop.i32(i32 %2789)
  %2791 = trunc i32 %2790 to i8
  %2792 = and i8 %2791, 1
  %2793 = xor i8 %2792, 1
  store i8 %2793, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2794 = icmp eq i32 %2788, 0
  %2795 = zext i1 %2794 to i8
  store i8 %2795, i8* %30, align 1
  %2796 = lshr i32 %2788, 31
  %2797 = trunc i32 %2796 to i8
  store i8 %2797, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %2798 = xor i1 %2794, true
  %2799 = icmp eq i8 %2797, 0
  %2800 = and i1 %2799, %2798
  %.v160 = select i1 %2800, i64 62, i64 23
  %2801 = add i64 %2754, %.v160
  store i64 %2801, i64* %3, align 8
  br i1 %2800, label %block_.L_46d381, label %block_46d35a

block_46d35a:                                     ; preds = %block_46d343
  %2802 = add i64 %2801, 4
  store i64 %2802, i64* %3, align 8
  %2803 = load i32, i32* %2707, align 4
  %2804 = sext i32 %2803 to i64
  store i64 %2804, i64* %RAX.i1128, align 8
  %2805 = shl nsw i64 %2804, 2
  %2806 = add i64 %2704, -1632
  %2807 = add i64 %2806, %2805
  %2808 = add i64 %2801, 12
  store i64 %2808, i64* %3, align 8
  %2809 = inttoptr i64 %2807 to i32*
  %2810 = load i32, i32* %2809, align 4
  store i8 0, i8* %14, align 1
  %2811 = and i32 %2810, 255
  %2812 = tail call i32 @llvm.ctpop.i32(i32 %2811)
  %2813 = trunc i32 %2812 to i8
  %2814 = and i8 %2813, 1
  %2815 = xor i8 %2814, 1
  store i8 %2815, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2816 = icmp eq i32 %2810, 0
  %2817 = zext i1 %2816 to i8
  store i8 %2817, i8* %30, align 1
  %2818 = lshr i32 %2810, 31
  %2819 = trunc i32 %2818 to i8
  store i8 %2819, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %2820 = icmp ne i8 %2819, 0
  %2821 = or i1 %2816, %2820
  %.v161 = select i1 %2821, i64 39, i64 18
  %2822 = add i64 %2801, %.v161
  store i64 %2822, i64* %3, align 8
  br i1 %2821, label %block_.L_46d381, label %block_46d36c

block_46d36c:                                     ; preds = %block_46d35a
  %2823 = add i64 %2822, 4
  store i64 %2823, i64* %3, align 8
  %2824 = load i32, i32* %2707, align 4
  %2825 = sext i32 %2824 to i64
  store i64 %2825, i64* %RAX.i1128, align 8
  %2826 = shl nsw i64 %2825, 2
  %2827 = add i64 %2806, %2826
  %2828 = add i64 %2822, 11
  store i64 %2828, i64* %3, align 8
  %2829 = inttoptr i64 %2827 to i32*
  %2830 = load i32, i32* %2829, align 4
  %2831 = add i32 %2830, -1
  %2832 = zext i32 %2831 to i64
  store i64 %2832, i64* %RCX.i1237, align 8
  %2833 = icmp ne i32 %2830, 0
  %2834 = zext i1 %2833 to i8
  store i8 %2834, i8* %14, align 1
  %2835 = and i32 %2831, 255
  %2836 = tail call i32 @llvm.ctpop.i32(i32 %2835)
  %2837 = trunc i32 %2836 to i8
  %2838 = and i8 %2837, 1
  %2839 = xor i8 %2838, 1
  store i8 %2839, i8* %21, align 1
  %2840 = xor i32 %2830, 16
  %2841 = xor i32 %2840, %2831
  %2842 = lshr i32 %2841, 4
  %2843 = trunc i32 %2842 to i8
  %2844 = and i8 %2843, 1
  store i8 %2844, i8* %27, align 1
  %2845 = icmp eq i32 %2831, 0
  %2846 = zext i1 %2845 to i8
  store i8 %2846, i8* %30, align 1
  %2847 = lshr i32 %2831, 31
  %2848 = trunc i32 %2847 to i8
  store i8 %2848, i8* %33, align 1
  %2849 = lshr i32 %2830, 31
  %2850 = xor i32 %2847, %2849
  %2851 = xor i32 %2847, 1
  %2852 = add nuw nsw i32 %2850, %2851
  %2853 = icmp eq i32 %2852, 2
  %2854 = zext i1 %2853 to i8
  store i8 %2854, i8* %39, align 1
  %2855 = add i64 %2822, 21
  store i64 %2855, i64* %3, align 8
  store i32 %2831, i32* %2829, align 4
  %.pre109 = load i64, i64* %RBP.i, align 8
  %.pre110 = load i64, i64* %3, align 8
  br label %block_.L_46d381

block_.L_46d381:                                  ; preds = %block_46d36c, %block_46d35a, %block_46d343, %block_.L_46d329
  %2856 = phi i64 [ %.pre110, %block_46d36c ], [ %2822, %block_46d35a ], [ %2801, %block_46d343 ], [ %2754, %block_.L_46d329 ]
  %2857 = phi i64 [ %.pre109, %block_46d36c ], [ %2704, %block_46d35a ], [ %2704, %block_46d343 ], [ %2704, %block_.L_46d329 ]
  %2858 = add i64 %2857, -24
  %2859 = add i64 %2856, 3
  store i64 %2859, i64* %3, align 8
  %2860 = inttoptr i64 %2858 to i32*
  %2861 = load i32, i32* %2860, align 4
  %2862 = add i32 %2861, -20
  %2863 = zext i32 %2862 to i64
  store i64 %2863, i64* %RAX.i1128, align 8
  %2864 = icmp ult i32 %2861, 20
  %2865 = zext i1 %2864 to i8
  store i8 %2865, i8* %14, align 1
  %2866 = and i32 %2862, 255
  %2867 = tail call i32 @llvm.ctpop.i32(i32 %2866)
  %2868 = trunc i32 %2867 to i8
  %2869 = and i8 %2868, 1
  %2870 = xor i8 %2869, 1
  store i8 %2870, i8* %21, align 1
  %2871 = xor i32 %2861, 16
  %2872 = xor i32 %2871, %2862
  %2873 = lshr i32 %2872, 4
  %2874 = trunc i32 %2873 to i8
  %2875 = and i8 %2874, 1
  store i8 %2875, i8* %27, align 1
  %2876 = icmp eq i32 %2862, 0
  %2877 = zext i1 %2876 to i8
  store i8 %2877, i8* %30, align 1
  %2878 = lshr i32 %2862, 31
  %2879 = trunc i32 %2878 to i8
  store i8 %2879, i8* %33, align 1
  %2880 = lshr i32 %2861, 31
  %2881 = xor i32 %2878, %2880
  %2882 = add nuw nsw i32 %2881, %2880
  %2883 = icmp eq i32 %2882, 2
  %2884 = zext i1 %2883 to i8
  store i8 %2884, i8* %39, align 1
  %2885 = sext i32 %2862 to i64
  store i64 %2885, i64* %RCX.i1237, align 8
  %2886 = add nsw i64 %2885, 12099168
  %2887 = add i64 %2856, 17
  store i64 %2887, i64* %3, align 8
  %2888 = inttoptr i64 %2886 to i8*
  %2889 = load i8, i8* %2888, align 1
  %2890 = zext i8 %2889 to i64
  store i64 %2890, i64* %RAX.i1128, align 8
  %2891 = zext i8 %2889 to i32
  %2892 = add nsw i32 %2891, -3
  %2893 = icmp ult i8 %2889, 3
  %2894 = zext i1 %2893 to i8
  store i8 %2894, i8* %14, align 1
  %2895 = and i32 %2892, 255
  %2896 = tail call i32 @llvm.ctpop.i32(i32 %2895)
  %2897 = trunc i32 %2896 to i8
  %2898 = and i8 %2897, 1
  %2899 = xor i8 %2898, 1
  store i8 %2899, i8* %21, align 1
  %2900 = xor i32 %2892, %2891
  %2901 = lshr i32 %2900, 4
  %2902 = trunc i32 %2901 to i8
  %2903 = and i8 %2902, 1
  store i8 %2903, i8* %27, align 1
  %2904 = icmp eq i32 %2892, 0
  %2905 = zext i1 %2904 to i8
  store i8 %2905, i8* %30, align 1
  %2906 = lshr i32 %2892, 31
  %2907 = trunc i32 %2906 to i8
  store i8 %2907, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v162 = select i1 %2904, i64 88, i64 26
  %2908 = add i64 %2856, %.v162
  store i64 %2908, i64* %3, align 8
  br i1 %2904, label %block_.L_46d3d9, label %block_46d39b

block_46d39b:                                     ; preds = %block_.L_46d381
  %2909 = add i64 %2857, -16
  %2910 = add i64 %2908, 4
  store i64 %2910, i64* %3, align 8
  %2911 = inttoptr i64 %2909 to i64*
  %2912 = load i64, i64* %2911, align 8
  store i64 %2912, i64* %RAX.i1128, align 8
  %2913 = add i64 %2908, 7
  store i64 %2913, i64* %3, align 8
  %2914 = load i32, i32* %2860, align 4
  %2915 = add i32 %2914, -20
  %2916 = zext i32 %2915 to i64
  store i64 %2916, i64* %RCX.i1237, align 8
  %2917 = icmp ult i32 %2914, 20
  %2918 = zext i1 %2917 to i8
  store i8 %2918, i8* %14, align 1
  %2919 = and i32 %2915, 255
  %2920 = tail call i32 @llvm.ctpop.i32(i32 %2919)
  %2921 = trunc i32 %2920 to i8
  %2922 = and i8 %2921, 1
  %2923 = xor i8 %2922, 1
  store i8 %2923, i8* %21, align 1
  %2924 = xor i32 %2914, 16
  %2925 = xor i32 %2924, %2915
  %2926 = lshr i32 %2925, 4
  %2927 = trunc i32 %2926 to i8
  %2928 = and i8 %2927, 1
  store i8 %2928, i8* %27, align 1
  %2929 = icmp eq i32 %2915, 0
  %2930 = zext i1 %2929 to i8
  store i8 %2930, i8* %30, align 1
  %2931 = lshr i32 %2915, 31
  %2932 = trunc i32 %2931 to i8
  store i8 %2932, i8* %33, align 1
  %2933 = lshr i32 %2914, 31
  %2934 = xor i32 %2931, %2933
  %2935 = add nuw nsw i32 %2934, %2933
  %2936 = icmp eq i32 %2935, 2
  %2937 = zext i1 %2936 to i8
  store i8 %2937, i8* %39, align 1
  %2938 = sext i32 %2915 to i64
  store i64 %2938, i64* %RDX.i1252, align 8
  %2939 = shl nsw i64 %2938, 2
  %2940 = add i64 %2912, %2939
  %2941 = add i64 %2908, 17
  store i64 %2941, i64* %3, align 8
  %2942 = inttoptr i64 %2940 to i32*
  %2943 = load i32, i32* %2942, align 4
  store i8 0, i8* %14, align 1
  %2944 = and i32 %2943, 255
  %2945 = tail call i32 @llvm.ctpop.i32(i32 %2944)
  %2946 = trunc i32 %2945 to i8
  %2947 = and i8 %2946, 1
  %2948 = xor i8 %2947, 1
  store i8 %2948, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2949 = icmp eq i32 %2943, 0
  %2950 = zext i1 %2949 to i8
  store i8 %2950, i8* %30, align 1
  %2951 = lshr i32 %2943, 31
  %2952 = trunc i32 %2951 to i8
  store i8 %2952, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %2953 = xor i1 %2949, true
  %2954 = icmp eq i8 %2952, 0
  %2955 = and i1 %2954, %2953
  %.v163 = select i1 %2955, i64 62, i64 23
  %2956 = add i64 %2908, %.v163
  store i64 %2956, i64* %3, align 8
  br i1 %2955, label %block_.L_46d3d9, label %block_46d3b2

block_46d3b2:                                     ; preds = %block_46d39b
  %2957 = add i64 %2956, 4
  store i64 %2957, i64* %3, align 8
  %2958 = load i32, i32* %2860, align 4
  %2959 = sext i32 %2958 to i64
  store i64 %2959, i64* %RAX.i1128, align 8
  %2960 = shl nsw i64 %2959, 2
  %2961 = add i64 %2857, -1632
  %2962 = add i64 %2961, %2960
  %2963 = add i64 %2956, 12
  store i64 %2963, i64* %3, align 8
  %2964 = inttoptr i64 %2962 to i32*
  %2965 = load i32, i32* %2964, align 4
  store i8 0, i8* %14, align 1
  %2966 = and i32 %2965, 255
  %2967 = tail call i32 @llvm.ctpop.i32(i32 %2966)
  %2968 = trunc i32 %2967 to i8
  %2969 = and i8 %2968, 1
  %2970 = xor i8 %2969, 1
  store i8 %2970, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2971 = icmp eq i32 %2965, 0
  %2972 = zext i1 %2971 to i8
  store i8 %2972, i8* %30, align 1
  %2973 = lshr i32 %2965, 31
  %2974 = trunc i32 %2973 to i8
  store i8 %2974, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %2975 = icmp ne i8 %2974, 0
  %2976 = or i1 %2971, %2975
  %.v164 = select i1 %2976, i64 39, i64 18
  %2977 = add i64 %2956, %.v164
  store i64 %2977, i64* %3, align 8
  br i1 %2976, label %block_.L_46d3d9, label %block_46d3c4

block_46d3c4:                                     ; preds = %block_46d3b2
  %2978 = add i64 %2977, 4
  store i64 %2978, i64* %3, align 8
  %2979 = load i32, i32* %2860, align 4
  %2980 = sext i32 %2979 to i64
  store i64 %2980, i64* %RAX.i1128, align 8
  %2981 = shl nsw i64 %2980, 2
  %2982 = add i64 %2961, %2981
  %2983 = add i64 %2977, 11
  store i64 %2983, i64* %3, align 8
  %2984 = inttoptr i64 %2982 to i32*
  %2985 = load i32, i32* %2984, align 4
  %2986 = add i32 %2985, -1
  %2987 = zext i32 %2986 to i64
  store i64 %2987, i64* %RCX.i1237, align 8
  %2988 = icmp ne i32 %2985, 0
  %2989 = zext i1 %2988 to i8
  store i8 %2989, i8* %14, align 1
  %2990 = and i32 %2986, 255
  %2991 = tail call i32 @llvm.ctpop.i32(i32 %2990)
  %2992 = trunc i32 %2991 to i8
  %2993 = and i8 %2992, 1
  %2994 = xor i8 %2993, 1
  store i8 %2994, i8* %21, align 1
  %2995 = xor i32 %2985, 16
  %2996 = xor i32 %2995, %2986
  %2997 = lshr i32 %2996, 4
  %2998 = trunc i32 %2997 to i8
  %2999 = and i8 %2998, 1
  store i8 %2999, i8* %27, align 1
  %3000 = icmp eq i32 %2986, 0
  %3001 = zext i1 %3000 to i8
  store i8 %3001, i8* %30, align 1
  %3002 = lshr i32 %2986, 31
  %3003 = trunc i32 %3002 to i8
  store i8 %3003, i8* %33, align 1
  %3004 = lshr i32 %2985, 31
  %3005 = xor i32 %3002, %3004
  %3006 = xor i32 %3002, 1
  %3007 = add nuw nsw i32 %3005, %3006
  %3008 = icmp eq i32 %3007, 2
  %3009 = zext i1 %3008 to i8
  store i8 %3009, i8* %39, align 1
  %3010 = add i64 %2977, 21
  store i64 %3010, i64* %3, align 8
  store i32 %2986, i32* %2984, align 4
  %.pre111 = load i64, i64* %RBP.i, align 8
  %.pre112 = load i64, i64* %3, align 8
  br label %block_.L_46d3d9

block_.L_46d3d9:                                  ; preds = %block_46d3c4, %block_46d3b2, %block_46d39b, %block_.L_46d381
  %3011 = phi i64 [ %.pre112, %block_46d3c4 ], [ %2977, %block_46d3b2 ], [ %2956, %block_46d39b ], [ %2908, %block_.L_46d381 ]
  %3012 = phi i64 [ %.pre111, %block_46d3c4 ], [ %2857, %block_46d3b2 ], [ %2857, %block_46d39b ], [ %2857, %block_.L_46d381 ]
  %3013 = add i64 %3012, -24
  %3014 = add i64 %3011, 3
  store i64 %3014, i64* %3, align 8
  %3015 = inttoptr i64 %3013 to i32*
  %3016 = load i32, i32* %3015, align 4
  %3017 = add i32 %3016, 1
  %3018 = zext i32 %3017 to i64
  store i64 %3018, i64* %RAX.i1128, align 8
  %3019 = icmp eq i32 %3016, -1
  %3020 = icmp eq i32 %3017, 0
  %3021 = or i1 %3019, %3020
  %3022 = zext i1 %3021 to i8
  store i8 %3022, i8* %14, align 1
  %3023 = and i32 %3017, 255
  %3024 = tail call i32 @llvm.ctpop.i32(i32 %3023)
  %3025 = trunc i32 %3024 to i8
  %3026 = and i8 %3025, 1
  %3027 = xor i8 %3026, 1
  store i8 %3027, i8* %21, align 1
  %3028 = xor i32 %3017, %3016
  %3029 = lshr i32 %3028, 4
  %3030 = trunc i32 %3029 to i8
  %3031 = and i8 %3030, 1
  store i8 %3031, i8* %27, align 1
  %3032 = zext i1 %3020 to i8
  store i8 %3032, i8* %30, align 1
  %3033 = lshr i32 %3017, 31
  %3034 = trunc i32 %3033 to i8
  store i8 %3034, i8* %33, align 1
  %3035 = lshr i32 %3016, 31
  %3036 = xor i32 %3033, %3035
  %3037 = add nuw nsw i32 %3036, %3033
  %3038 = icmp eq i32 %3037, 2
  %3039 = zext i1 %3038 to i8
  store i8 %3039, i8* %39, align 1
  %3040 = sext i32 %3017 to i64
  store i64 %3040, i64* %RCX.i1237, align 8
  %3041 = add nsw i64 %3040, 12099168
  %3042 = add i64 %3011, 17
  store i64 %3042, i64* %3, align 8
  %3043 = inttoptr i64 %3041 to i8*
  %3044 = load i8, i8* %3043, align 1
  %3045 = zext i8 %3044 to i64
  store i64 %3045, i64* %RAX.i1128, align 8
  %3046 = zext i8 %3044 to i32
  %3047 = add nsw i32 %3046, -3
  %3048 = icmp ult i8 %3044, 3
  %3049 = zext i1 %3048 to i8
  store i8 %3049, i8* %14, align 1
  %3050 = and i32 %3047, 255
  %3051 = tail call i32 @llvm.ctpop.i32(i32 %3050)
  %3052 = trunc i32 %3051 to i8
  %3053 = and i8 %3052, 1
  %3054 = xor i8 %3053, 1
  store i8 %3054, i8* %21, align 1
  %3055 = xor i32 %3047, %3046
  %3056 = lshr i32 %3055, 4
  %3057 = trunc i32 %3056 to i8
  %3058 = and i8 %3057, 1
  store i8 %3058, i8* %27, align 1
  %3059 = icmp eq i32 %3047, 0
  %3060 = zext i1 %3059 to i8
  store i8 %3060, i8* %30, align 1
  %3061 = lshr i32 %3047, 31
  %3062 = trunc i32 %3061 to i8
  store i8 %3062, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v165 = select i1 %3059, i64 88, i64 26
  %3063 = add i64 %3011, %.v165
  store i64 %3063, i64* %3, align 8
  br i1 %3059, label %block_.L_46d431, label %block_46d3f3

block_46d3f3:                                     ; preds = %block_.L_46d3d9
  %3064 = add i64 %3012, -16
  %3065 = add i64 %3063, 4
  store i64 %3065, i64* %3, align 8
  %3066 = inttoptr i64 %3064 to i64*
  %3067 = load i64, i64* %3066, align 8
  store i64 %3067, i64* %RAX.i1128, align 8
  %3068 = add i64 %3063, 7
  store i64 %3068, i64* %3, align 8
  %3069 = load i32, i32* %3015, align 4
  %3070 = add i32 %3069, 1
  %3071 = zext i32 %3070 to i64
  store i64 %3071, i64* %RCX.i1237, align 8
  %3072 = icmp eq i32 %3069, -1
  %3073 = icmp eq i32 %3070, 0
  %3074 = or i1 %3072, %3073
  %3075 = zext i1 %3074 to i8
  store i8 %3075, i8* %14, align 1
  %3076 = and i32 %3070, 255
  %3077 = tail call i32 @llvm.ctpop.i32(i32 %3076)
  %3078 = trunc i32 %3077 to i8
  %3079 = and i8 %3078, 1
  %3080 = xor i8 %3079, 1
  store i8 %3080, i8* %21, align 1
  %3081 = xor i32 %3070, %3069
  %3082 = lshr i32 %3081, 4
  %3083 = trunc i32 %3082 to i8
  %3084 = and i8 %3083, 1
  store i8 %3084, i8* %27, align 1
  %3085 = zext i1 %3073 to i8
  store i8 %3085, i8* %30, align 1
  %3086 = lshr i32 %3070, 31
  %3087 = trunc i32 %3086 to i8
  store i8 %3087, i8* %33, align 1
  %3088 = lshr i32 %3069, 31
  %3089 = xor i32 %3086, %3088
  %3090 = add nuw nsw i32 %3089, %3086
  %3091 = icmp eq i32 %3090, 2
  %3092 = zext i1 %3091 to i8
  store i8 %3092, i8* %39, align 1
  %3093 = sext i32 %3070 to i64
  store i64 %3093, i64* %RDX.i1252, align 8
  %3094 = shl nsw i64 %3093, 2
  %3095 = add i64 %3067, %3094
  %3096 = add i64 %3063, 17
  store i64 %3096, i64* %3, align 8
  %3097 = inttoptr i64 %3095 to i32*
  %3098 = load i32, i32* %3097, align 4
  store i8 0, i8* %14, align 1
  %3099 = and i32 %3098, 255
  %3100 = tail call i32 @llvm.ctpop.i32(i32 %3099)
  %3101 = trunc i32 %3100 to i8
  %3102 = and i8 %3101, 1
  %3103 = xor i8 %3102, 1
  store i8 %3103, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %3104 = icmp eq i32 %3098, 0
  %3105 = zext i1 %3104 to i8
  store i8 %3105, i8* %30, align 1
  %3106 = lshr i32 %3098, 31
  %3107 = trunc i32 %3106 to i8
  store i8 %3107, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %3108 = xor i1 %3104, true
  %3109 = icmp eq i8 %3107, 0
  %3110 = and i1 %3109, %3108
  %.v166 = select i1 %3110, i64 62, i64 23
  %3111 = add i64 %3063, %.v166
  store i64 %3111, i64* %3, align 8
  br i1 %3110, label %block_.L_46d431, label %block_46d40a

block_46d40a:                                     ; preds = %block_46d3f3
  %3112 = add i64 %3111, 4
  store i64 %3112, i64* %3, align 8
  %3113 = load i32, i32* %3015, align 4
  %3114 = sext i32 %3113 to i64
  store i64 %3114, i64* %RAX.i1128, align 8
  %3115 = shl nsw i64 %3114, 2
  %3116 = add i64 %3012, -1632
  %3117 = add i64 %3116, %3115
  %3118 = add i64 %3111, 12
  store i64 %3118, i64* %3, align 8
  %3119 = inttoptr i64 %3117 to i32*
  %3120 = load i32, i32* %3119, align 4
  store i8 0, i8* %14, align 1
  %3121 = and i32 %3120, 255
  %3122 = tail call i32 @llvm.ctpop.i32(i32 %3121)
  %3123 = trunc i32 %3122 to i8
  %3124 = and i8 %3123, 1
  %3125 = xor i8 %3124, 1
  store i8 %3125, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %3126 = icmp eq i32 %3120, 0
  %3127 = zext i1 %3126 to i8
  store i8 %3127, i8* %30, align 1
  %3128 = lshr i32 %3120, 31
  %3129 = trunc i32 %3128 to i8
  store i8 %3129, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %3130 = icmp ne i8 %3129, 0
  %3131 = or i1 %3126, %3130
  %.v167 = select i1 %3131, i64 39, i64 18
  %3132 = add i64 %3111, %.v167
  store i64 %3132, i64* %3, align 8
  br i1 %3131, label %block_.L_46d431, label %block_46d41c

block_46d41c:                                     ; preds = %block_46d40a
  %3133 = add i64 %3132, 4
  store i64 %3133, i64* %3, align 8
  %3134 = load i32, i32* %3015, align 4
  %3135 = sext i32 %3134 to i64
  store i64 %3135, i64* %RAX.i1128, align 8
  %3136 = shl nsw i64 %3135, 2
  %3137 = add i64 %3116, %3136
  %3138 = add i64 %3132, 11
  store i64 %3138, i64* %3, align 8
  %3139 = inttoptr i64 %3137 to i32*
  %3140 = load i32, i32* %3139, align 4
  %3141 = add i32 %3140, -1
  %3142 = zext i32 %3141 to i64
  store i64 %3142, i64* %RCX.i1237, align 8
  %3143 = icmp ne i32 %3140, 0
  %3144 = zext i1 %3143 to i8
  store i8 %3144, i8* %14, align 1
  %3145 = and i32 %3141, 255
  %3146 = tail call i32 @llvm.ctpop.i32(i32 %3145)
  %3147 = trunc i32 %3146 to i8
  %3148 = and i8 %3147, 1
  %3149 = xor i8 %3148, 1
  store i8 %3149, i8* %21, align 1
  %3150 = xor i32 %3140, 16
  %3151 = xor i32 %3150, %3141
  %3152 = lshr i32 %3151, 4
  %3153 = trunc i32 %3152 to i8
  %3154 = and i8 %3153, 1
  store i8 %3154, i8* %27, align 1
  %3155 = icmp eq i32 %3141, 0
  %3156 = zext i1 %3155 to i8
  store i8 %3156, i8* %30, align 1
  %3157 = lshr i32 %3141, 31
  %3158 = trunc i32 %3157 to i8
  store i8 %3158, i8* %33, align 1
  %3159 = lshr i32 %3140, 31
  %3160 = xor i32 %3157, %3159
  %3161 = xor i32 %3157, 1
  %3162 = add nuw nsw i32 %3160, %3161
  %3163 = icmp eq i32 %3162, 2
  %3164 = zext i1 %3163 to i8
  store i8 %3164, i8* %39, align 1
  %3165 = add i64 %3132, 21
  store i64 %3165, i64* %3, align 8
  store i32 %3141, i32* %3139, align 4
  %.pre113 = load i64, i64* %3, align 8
  %.pre114.pre = load i64, i64* %RBP.i, align 8
  br label %block_.L_46d431

block_.L_46d431:                                  ; preds = %block_46d41c, %block_46d40a, %block_46d3f3, %block_.L_46d3d9
  %.pre114 = phi i64 [ %.pre114.pre, %block_46d41c ], [ %3012, %block_46d40a ], [ %3012, %block_46d3f3 ], [ %3012, %block_.L_46d3d9 ]
  %3166 = phi i64 [ %.pre113, %block_46d41c ], [ %3132, %block_46d40a ], [ %3111, %block_46d3f3 ], [ %3063, %block_.L_46d3d9 ]
  %3167 = add i64 %3166, 5
  store i64 %3167, i64* %3, align 8
  br label %block_.L_46d436

block_.L_46d436:                                  ; preds = %block_.L_46d431, %block_.L_46d2d1
  %3168 = phi i64 [ %3167, %block_.L_46d431 ], [ %2572, %block_.L_46d2d1 ]
  %3169 = phi i64 [ %.pre114, %block_.L_46d431 ], [ %2495, %block_.L_46d2d1 ]
  %3170 = add i64 %3169, -24
  %3171 = add i64 %3168, 4
  store i64 %3171, i64* %3, align 8
  %3172 = inttoptr i64 %3170 to i32*
  %3173 = load i32, i32* %3172, align 4
  %3174 = sext i32 %3173 to i64
  store i64 %3174, i64* %RAX.i1128, align 8
  %3175 = shl nsw i64 %3174, 2
  %3176 = add i64 %3169, -1632
  %3177 = add i64 %3176, %3175
  %3178 = add i64 %3168, 12
  store i64 %3178, i64* %3, align 8
  %3179 = inttoptr i64 %3177 to i32*
  %3180 = load i32, i32* %3179, align 4
  store i8 0, i8* %14, align 1
  %3181 = and i32 %3180, 255
  %3182 = tail call i32 @llvm.ctpop.i32(i32 %3181)
  %3183 = trunc i32 %3182 to i8
  %3184 = and i8 %3183, 1
  %3185 = xor i8 %3184, 1
  store i8 %3185, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %3186 = icmp eq i32 %3180, 0
  %3187 = zext i1 %3186 to i8
  store i8 %3187, i8* %30, align 1
  %3188 = lshr i32 %3180, 31
  %3189 = trunc i32 %3188 to i8
  store i8 %3189, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %3190 = icmp ne i8 %3189, 0
  %.v = select i1 %3190, i64 6, i64 345
  %3191 = add i64 %3178, %.v
  store i64 %3191, i64* %3, align 8
  br i1 %3190, label %block_46d448, label %block_.L_46d59b

block_46d448:                                     ; preds = %block_.L_46d436
  %3192 = add i64 %3191, 3
  store i64 %3192, i64* %3, align 8
  %3193 = load i32, i32* %3172, align 4
  %3194 = add i32 %3193, 20
  %3195 = zext i32 %3194 to i64
  store i64 %3195, i64* %RAX.i1128, align 8
  %3196 = icmp ugt i32 %3193, -21
  %3197 = zext i1 %3196 to i8
  store i8 %3197, i8* %14, align 1
  %3198 = and i32 %3194, 255
  %3199 = tail call i32 @llvm.ctpop.i32(i32 %3198)
  %3200 = trunc i32 %3199 to i8
  %3201 = and i8 %3200, 1
  %3202 = xor i8 %3201, 1
  store i8 %3202, i8* %21, align 1
  %3203 = xor i32 %3193, 16
  %3204 = xor i32 %3203, %3194
  %3205 = lshr i32 %3204, 4
  %3206 = trunc i32 %3205 to i8
  %3207 = and i8 %3206, 1
  store i8 %3207, i8* %27, align 1
  %3208 = icmp eq i32 %3194, 0
  %3209 = zext i1 %3208 to i8
  store i8 %3209, i8* %30, align 1
  %3210 = lshr i32 %3194, 31
  %3211 = trunc i32 %3210 to i8
  store i8 %3211, i8* %33, align 1
  %3212 = lshr i32 %3193, 31
  %3213 = xor i32 %3210, %3212
  %3214 = add nuw nsw i32 %3213, %3210
  %3215 = icmp eq i32 %3214, 2
  %3216 = zext i1 %3215 to i8
  store i8 %3216, i8* %39, align 1
  %3217 = sext i32 %3194 to i64
  store i64 %3217, i64* %RCX.i1237, align 8
  %3218 = add nsw i64 %3217, 12099168
  %3219 = add i64 %3191, 17
  store i64 %3219, i64* %3, align 8
  %3220 = inttoptr i64 %3218 to i8*
  %3221 = load i8, i8* %3220, align 1
  %3222 = zext i8 %3221 to i64
  store i64 %3222, i64* %RAX.i1128, align 8
  %3223 = zext i8 %3221 to i32
  %3224 = add nsw i32 %3223, -3
  %3225 = icmp ult i8 %3221, 3
  %3226 = zext i1 %3225 to i8
  store i8 %3226, i8* %14, align 1
  %3227 = and i32 %3224, 255
  %3228 = tail call i32 @llvm.ctpop.i32(i32 %3227)
  %3229 = trunc i32 %3228 to i8
  %3230 = and i8 %3229, 1
  %3231 = xor i8 %3230, 1
  store i8 %3231, i8* %21, align 1
  %3232 = xor i32 %3224, %3223
  %3233 = lshr i32 %3232, 4
  %3234 = trunc i32 %3233 to i8
  %3235 = and i8 %3234, 1
  store i8 %3235, i8* %27, align 1
  %3236 = icmp eq i32 %3224, 0
  %3237 = zext i1 %3236 to i8
  store i8 %3237, i8* %30, align 1
  %3238 = lshr i32 %3224, 31
  %3239 = trunc i32 %3238 to i8
  store i8 %3239, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v168 = select i1 %3236, i64 70, i64 26
  %3240 = add i64 %3191, %.v168
  store i64 %3240, i64* %3, align 8
  br i1 %3236, label %block_.L_46d48e, label %block_46d462

block_46d462:                                     ; preds = %block_46d448
  %3241 = add i64 %3169, -16
  %3242 = add i64 %3240, 4
  store i64 %3242, i64* %3, align 8
  %3243 = inttoptr i64 %3241 to i64*
  %3244 = load i64, i64* %3243, align 8
  store i64 %3244, i64* %RAX.i1128, align 8
  %3245 = add i64 %3240, 7
  store i64 %3245, i64* %3, align 8
  %3246 = load i32, i32* %3172, align 4
  %3247 = add i32 %3246, 20
  %3248 = zext i32 %3247 to i64
  store i64 %3248, i64* %RCX.i1237, align 8
  %3249 = icmp ugt i32 %3246, -21
  %3250 = zext i1 %3249 to i8
  store i8 %3250, i8* %14, align 1
  %3251 = and i32 %3247, 255
  %3252 = tail call i32 @llvm.ctpop.i32(i32 %3251)
  %3253 = trunc i32 %3252 to i8
  %3254 = and i8 %3253, 1
  %3255 = xor i8 %3254, 1
  store i8 %3255, i8* %21, align 1
  %3256 = xor i32 %3246, 16
  %3257 = xor i32 %3256, %3247
  %3258 = lshr i32 %3257, 4
  %3259 = trunc i32 %3258 to i8
  %3260 = and i8 %3259, 1
  store i8 %3260, i8* %27, align 1
  %3261 = icmp eq i32 %3247, 0
  %3262 = zext i1 %3261 to i8
  store i8 %3262, i8* %30, align 1
  %3263 = lshr i32 %3247, 31
  %3264 = trunc i32 %3263 to i8
  store i8 %3264, i8* %33, align 1
  %3265 = lshr i32 %3246, 31
  %3266 = xor i32 %3263, %3265
  %3267 = add nuw nsw i32 %3266, %3263
  %3268 = icmp eq i32 %3267, 2
  %3269 = zext i1 %3268 to i8
  store i8 %3269, i8* %39, align 1
  %3270 = sext i32 %3247 to i64
  store i64 %3270, i64* %RDX.i1252, align 8
  %3271 = shl nsw i64 %3270, 2
  %3272 = add i64 %3244, %3271
  %3273 = add i64 %3240, 17
  store i64 %3273, i64* %3, align 8
  %3274 = inttoptr i64 %3272 to i32*
  %3275 = load i32, i32* %3274, align 4
  store i8 0, i8* %14, align 1
  %3276 = and i32 %3275, 255
  %3277 = tail call i32 @llvm.ctpop.i32(i32 %3276)
  %3278 = trunc i32 %3277 to i8
  %3279 = and i8 %3278, 1
  %3280 = xor i8 %3279, 1
  store i8 %3280, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %3281 = icmp eq i32 %3275, 0
  %3282 = zext i1 %3281 to i8
  store i8 %3282, i8* %30, align 1
  %3283 = lshr i32 %3275, 31
  %3284 = trunc i32 %3283 to i8
  store i8 %3284, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %3285 = icmp ne i8 %3284, 0
  %.v75 = select i1 %3285, i64 27, i64 6
  %3286 = add i64 %3273, %.v75
  store i64 %3286, i64* %3, align 8
  br i1 %3285, label %block_.L_46d48e, label %block_46d479

block_46d479:                                     ; preds = %block_46d462
  %3287 = add i64 %3286, 4
  store i64 %3287, i64* %3, align 8
  %3288 = load i32, i32* %3172, align 4
  %3289 = sext i32 %3288 to i64
  store i64 %3289, i64* %RAX.i1128, align 8
  %3290 = shl nsw i64 %3289, 2
  %3291 = add i64 %3176, %3290
  %3292 = add i64 %3286, 11
  store i64 %3292, i64* %3, align 8
  %3293 = inttoptr i64 %3291 to i32*
  %3294 = load i32, i32* %3293, align 4
  %3295 = add i32 %3294, 1
  %3296 = zext i32 %3295 to i64
  store i64 %3296, i64* %RCX.i1237, align 8
  %3297 = icmp eq i32 %3294, -1
  %3298 = icmp eq i32 %3295, 0
  %3299 = or i1 %3297, %3298
  %3300 = zext i1 %3299 to i8
  store i8 %3300, i8* %14, align 1
  %3301 = and i32 %3295, 255
  %3302 = tail call i32 @llvm.ctpop.i32(i32 %3301)
  %3303 = trunc i32 %3302 to i8
  %3304 = and i8 %3303, 1
  %3305 = xor i8 %3304, 1
  store i8 %3305, i8* %21, align 1
  %3306 = xor i32 %3295, %3294
  %3307 = lshr i32 %3306, 4
  %3308 = trunc i32 %3307 to i8
  %3309 = and i8 %3308, 1
  store i8 %3309, i8* %27, align 1
  %3310 = zext i1 %3298 to i8
  store i8 %3310, i8* %30, align 1
  %3311 = lshr i32 %3295, 31
  %3312 = trunc i32 %3311 to i8
  store i8 %3312, i8* %33, align 1
  %3313 = lshr i32 %3294, 31
  %3314 = xor i32 %3311, %3313
  %3315 = add nuw nsw i32 %3314, %3311
  %3316 = icmp eq i32 %3315, 2
  %3317 = zext i1 %3316 to i8
  store i8 %3317, i8* %39, align 1
  %3318 = add i64 %3286, 21
  store i64 %3318, i64* %3, align 8
  store i32 %3295, i32* %3293, align 4
  %.pre115 = load i64, i64* %RBP.i, align 8
  %.pre116 = load i64, i64* %3, align 8
  br label %block_.L_46d48e

block_.L_46d48e:                                  ; preds = %block_46d479, %block_46d462, %block_46d448
  %3319 = phi i64 [ %.pre116, %block_46d479 ], [ %3286, %block_46d462 ], [ %3240, %block_46d448 ]
  %3320 = phi i64 [ %.pre115, %block_46d479 ], [ %3169, %block_46d462 ], [ %3169, %block_46d448 ]
  %3321 = add i64 %3320, -24
  %3322 = add i64 %3319, 3
  store i64 %3322, i64* %3, align 8
  %3323 = inttoptr i64 %3321 to i32*
  %3324 = load i32, i32* %3323, align 4
  %3325 = add i32 %3324, -1
  %3326 = zext i32 %3325 to i64
  store i64 %3326, i64* %RAX.i1128, align 8
  %3327 = icmp eq i32 %3324, 0
  %3328 = zext i1 %3327 to i8
  store i8 %3328, i8* %14, align 1
  %3329 = and i32 %3325, 255
  %3330 = tail call i32 @llvm.ctpop.i32(i32 %3329)
  %3331 = trunc i32 %3330 to i8
  %3332 = and i8 %3331, 1
  %3333 = xor i8 %3332, 1
  store i8 %3333, i8* %21, align 1
  %3334 = xor i32 %3325, %3324
  %3335 = lshr i32 %3334, 4
  %3336 = trunc i32 %3335 to i8
  %3337 = and i8 %3336, 1
  store i8 %3337, i8* %27, align 1
  %3338 = icmp eq i32 %3325, 0
  %3339 = zext i1 %3338 to i8
  store i8 %3339, i8* %30, align 1
  %3340 = lshr i32 %3325, 31
  %3341 = trunc i32 %3340 to i8
  store i8 %3341, i8* %33, align 1
  %3342 = lshr i32 %3324, 31
  %3343 = xor i32 %3340, %3342
  %3344 = add nuw nsw i32 %3343, %3342
  %3345 = icmp eq i32 %3344, 2
  %3346 = zext i1 %3345 to i8
  store i8 %3346, i8* %39, align 1
  %3347 = sext i32 %3325 to i64
  store i64 %3347, i64* %RCX.i1237, align 8
  %3348 = add nsw i64 %3347, 12099168
  %3349 = add i64 %3319, 17
  store i64 %3349, i64* %3, align 8
  %3350 = inttoptr i64 %3348 to i8*
  %3351 = load i8, i8* %3350, align 1
  %3352 = zext i8 %3351 to i64
  store i64 %3352, i64* %RAX.i1128, align 8
  %3353 = zext i8 %3351 to i32
  %3354 = add nsw i32 %3353, -3
  %3355 = icmp ult i8 %3351, 3
  %3356 = zext i1 %3355 to i8
  store i8 %3356, i8* %14, align 1
  %3357 = and i32 %3354, 255
  %3358 = tail call i32 @llvm.ctpop.i32(i32 %3357)
  %3359 = trunc i32 %3358 to i8
  %3360 = and i8 %3359, 1
  %3361 = xor i8 %3360, 1
  store i8 %3361, i8* %21, align 1
  %3362 = xor i32 %3354, %3353
  %3363 = lshr i32 %3362, 4
  %3364 = trunc i32 %3363 to i8
  %3365 = and i8 %3364, 1
  store i8 %3365, i8* %27, align 1
  %3366 = icmp eq i32 %3354, 0
  %3367 = zext i1 %3366 to i8
  store i8 %3367, i8* %30, align 1
  %3368 = lshr i32 %3354, 31
  %3369 = trunc i32 %3368 to i8
  store i8 %3369, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v169 = select i1 %3366, i64 88, i64 26
  %3370 = add i64 %3319, %.v169
  store i64 %3370, i64* %3, align 8
  br i1 %3366, label %block_.L_46d4e6, label %block_46d4a8

block_46d4a8:                                     ; preds = %block_.L_46d48e
  %3371 = add i64 %3320, -16
  %3372 = add i64 %3370, 4
  store i64 %3372, i64* %3, align 8
  %3373 = inttoptr i64 %3371 to i64*
  %3374 = load i64, i64* %3373, align 8
  store i64 %3374, i64* %RAX.i1128, align 8
  %3375 = add i64 %3370, 7
  store i64 %3375, i64* %3, align 8
  %3376 = load i32, i32* %3323, align 4
  %3377 = add i32 %3376, -1
  %3378 = zext i32 %3377 to i64
  store i64 %3378, i64* %RCX.i1237, align 8
  %3379 = icmp eq i32 %3376, 0
  %3380 = zext i1 %3379 to i8
  store i8 %3380, i8* %14, align 1
  %3381 = and i32 %3377, 255
  %3382 = tail call i32 @llvm.ctpop.i32(i32 %3381)
  %3383 = trunc i32 %3382 to i8
  %3384 = and i8 %3383, 1
  %3385 = xor i8 %3384, 1
  store i8 %3385, i8* %21, align 1
  %3386 = xor i32 %3377, %3376
  %3387 = lshr i32 %3386, 4
  %3388 = trunc i32 %3387 to i8
  %3389 = and i8 %3388, 1
  store i8 %3389, i8* %27, align 1
  %3390 = icmp eq i32 %3377, 0
  %3391 = zext i1 %3390 to i8
  store i8 %3391, i8* %30, align 1
  %3392 = lshr i32 %3377, 31
  %3393 = trunc i32 %3392 to i8
  store i8 %3393, i8* %33, align 1
  %3394 = lshr i32 %3376, 31
  %3395 = xor i32 %3392, %3394
  %3396 = add nuw nsw i32 %3395, %3394
  %3397 = icmp eq i32 %3396, 2
  %3398 = zext i1 %3397 to i8
  store i8 %3398, i8* %39, align 1
  %3399 = sext i32 %3377 to i64
  store i64 %3399, i64* %RDX.i1252, align 8
  %3400 = shl nsw i64 %3399, 2
  %3401 = add i64 %3374, %3400
  %3402 = add i64 %3370, 17
  store i64 %3402, i64* %3, align 8
  %3403 = inttoptr i64 %3401 to i32*
  %3404 = load i32, i32* %3403, align 4
  store i8 0, i8* %14, align 1
  %3405 = and i32 %3404, 255
  %3406 = tail call i32 @llvm.ctpop.i32(i32 %3405)
  %3407 = trunc i32 %3406 to i8
  %3408 = and i8 %3407, 1
  %3409 = xor i8 %3408, 1
  store i8 %3409, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %3410 = icmp eq i32 %3404, 0
  %3411 = zext i1 %3410 to i8
  store i8 %3411, i8* %30, align 1
  %3412 = lshr i32 %3404, 31
  %3413 = trunc i32 %3412 to i8
  store i8 %3413, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %3414 = icmp ne i8 %3413, 0
  %.v76 = select i1 %3414, i64 45, i64 6
  %3415 = add i64 %3402, %.v76
  store i64 %3415, i64* %3, align 8
  br i1 %3414, label %block_.L_46d4e6, label %block_46d4bf

block_46d4bf:                                     ; preds = %block_46d4a8
  %3416 = add i64 %3415, 4
  store i64 %3416, i64* %3, align 8
  %3417 = load i32, i32* %3323, align 4
  %3418 = sext i32 %3417 to i64
  store i64 %3418, i64* %RAX.i1128, align 8
  %3419 = shl nsw i64 %3418, 2
  %3420 = add i64 %3320, -1632
  %3421 = add i64 %3420, %3419
  %3422 = add i64 %3415, 12
  store i64 %3422, i64* %3, align 8
  %3423 = inttoptr i64 %3421 to i32*
  %3424 = load i32, i32* %3423, align 4
  store i8 0, i8* %14, align 1
  %3425 = and i32 %3424, 255
  %3426 = tail call i32 @llvm.ctpop.i32(i32 %3425)
  %3427 = trunc i32 %3426 to i8
  %3428 = and i8 %3427, 1
  %3429 = xor i8 %3428, 1
  store i8 %3429, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %3430 = icmp eq i32 %3424, 0
  %3431 = zext i1 %3430 to i8
  store i8 %3431, i8* %30, align 1
  %3432 = lshr i32 %3424, 31
  %3433 = trunc i32 %3432 to i8
  store i8 %3433, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %3434 = icmp ne i8 %3433, 0
  %.v77 = select i1 %3434, i64 6, i64 27
  %3435 = add i64 %3422, %.v77
  store i64 %3435, i64* %3, align 8
  br i1 %3434, label %block_46d4d1, label %block_.L_46d4e6

block_46d4d1:                                     ; preds = %block_46d4bf
  %3436 = add i64 %3435, 4
  store i64 %3436, i64* %3, align 8
  %3437 = load i32, i32* %3323, align 4
  %3438 = sext i32 %3437 to i64
  store i64 %3438, i64* %RAX.i1128, align 8
  %3439 = shl nsw i64 %3438, 2
  %3440 = add i64 %3420, %3439
  %3441 = add i64 %3435, 11
  store i64 %3441, i64* %3, align 8
  %3442 = inttoptr i64 %3440 to i32*
  %3443 = load i32, i32* %3442, align 4
  %3444 = add i32 %3443, 1
  %3445 = zext i32 %3444 to i64
  store i64 %3445, i64* %RCX.i1237, align 8
  %3446 = icmp eq i32 %3443, -1
  %3447 = icmp eq i32 %3444, 0
  %3448 = or i1 %3446, %3447
  %3449 = zext i1 %3448 to i8
  store i8 %3449, i8* %14, align 1
  %3450 = and i32 %3444, 255
  %3451 = tail call i32 @llvm.ctpop.i32(i32 %3450)
  %3452 = trunc i32 %3451 to i8
  %3453 = and i8 %3452, 1
  %3454 = xor i8 %3453, 1
  store i8 %3454, i8* %21, align 1
  %3455 = xor i32 %3444, %3443
  %3456 = lshr i32 %3455, 4
  %3457 = trunc i32 %3456 to i8
  %3458 = and i8 %3457, 1
  store i8 %3458, i8* %27, align 1
  %3459 = zext i1 %3447 to i8
  store i8 %3459, i8* %30, align 1
  %3460 = lshr i32 %3444, 31
  %3461 = trunc i32 %3460 to i8
  store i8 %3461, i8* %33, align 1
  %3462 = lshr i32 %3443, 31
  %3463 = xor i32 %3460, %3462
  %3464 = add nuw nsw i32 %3463, %3460
  %3465 = icmp eq i32 %3464, 2
  %3466 = zext i1 %3465 to i8
  store i8 %3466, i8* %39, align 1
  %3467 = add i64 %3435, 21
  store i64 %3467, i64* %3, align 8
  store i32 %3444, i32* %3442, align 4
  %.pre117 = load i64, i64* %RBP.i, align 8
  %.pre118 = load i64, i64* %3, align 8
  br label %block_.L_46d4e6

block_.L_46d4e6:                                  ; preds = %block_46d4bf, %block_46d4d1, %block_46d4a8, %block_.L_46d48e
  %3468 = phi i64 [ %3435, %block_46d4bf ], [ %.pre118, %block_46d4d1 ], [ %3415, %block_46d4a8 ], [ %3370, %block_.L_46d48e ]
  %3469 = phi i64 [ %3320, %block_46d4bf ], [ %.pre117, %block_46d4d1 ], [ %3320, %block_46d4a8 ], [ %3320, %block_.L_46d48e ]
  %3470 = add i64 %3469, -24
  %3471 = add i64 %3468, 3
  store i64 %3471, i64* %3, align 8
  %3472 = inttoptr i64 %3470 to i32*
  %3473 = load i32, i32* %3472, align 4
  %3474 = add i32 %3473, -20
  %3475 = zext i32 %3474 to i64
  store i64 %3475, i64* %RAX.i1128, align 8
  %3476 = icmp ult i32 %3473, 20
  %3477 = zext i1 %3476 to i8
  store i8 %3477, i8* %14, align 1
  %3478 = and i32 %3474, 255
  %3479 = tail call i32 @llvm.ctpop.i32(i32 %3478)
  %3480 = trunc i32 %3479 to i8
  %3481 = and i8 %3480, 1
  %3482 = xor i8 %3481, 1
  store i8 %3482, i8* %21, align 1
  %3483 = xor i32 %3473, 16
  %3484 = xor i32 %3483, %3474
  %3485 = lshr i32 %3484, 4
  %3486 = trunc i32 %3485 to i8
  %3487 = and i8 %3486, 1
  store i8 %3487, i8* %27, align 1
  %3488 = icmp eq i32 %3474, 0
  %3489 = zext i1 %3488 to i8
  store i8 %3489, i8* %30, align 1
  %3490 = lshr i32 %3474, 31
  %3491 = trunc i32 %3490 to i8
  store i8 %3491, i8* %33, align 1
  %3492 = lshr i32 %3473, 31
  %3493 = xor i32 %3490, %3492
  %3494 = add nuw nsw i32 %3493, %3492
  %3495 = icmp eq i32 %3494, 2
  %3496 = zext i1 %3495 to i8
  store i8 %3496, i8* %39, align 1
  %3497 = sext i32 %3474 to i64
  store i64 %3497, i64* %RCX.i1237, align 8
  %3498 = add nsw i64 %3497, 12099168
  %3499 = add i64 %3468, 17
  store i64 %3499, i64* %3, align 8
  %3500 = inttoptr i64 %3498 to i8*
  %3501 = load i8, i8* %3500, align 1
  %3502 = zext i8 %3501 to i64
  store i64 %3502, i64* %RAX.i1128, align 8
  %3503 = zext i8 %3501 to i32
  %3504 = add nsw i32 %3503, -3
  %3505 = icmp ult i8 %3501, 3
  %3506 = zext i1 %3505 to i8
  store i8 %3506, i8* %14, align 1
  %3507 = and i32 %3504, 255
  %3508 = tail call i32 @llvm.ctpop.i32(i32 %3507)
  %3509 = trunc i32 %3508 to i8
  %3510 = and i8 %3509, 1
  %3511 = xor i8 %3510, 1
  store i8 %3511, i8* %21, align 1
  %3512 = xor i32 %3504, %3503
  %3513 = lshr i32 %3512, 4
  %3514 = trunc i32 %3513 to i8
  %3515 = and i8 %3514, 1
  store i8 %3515, i8* %27, align 1
  %3516 = icmp eq i32 %3504, 0
  %3517 = zext i1 %3516 to i8
  store i8 %3517, i8* %30, align 1
  %3518 = lshr i32 %3504, 31
  %3519 = trunc i32 %3518 to i8
  store i8 %3519, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v170 = select i1 %3516, i64 88, i64 26
  %3520 = add i64 %3468, %.v170
  store i64 %3520, i64* %3, align 8
  br i1 %3516, label %block_.L_46d53e, label %block_46d500

block_46d500:                                     ; preds = %block_.L_46d4e6
  %3521 = add i64 %3469, -16
  %3522 = add i64 %3520, 4
  store i64 %3522, i64* %3, align 8
  %3523 = inttoptr i64 %3521 to i64*
  %3524 = load i64, i64* %3523, align 8
  store i64 %3524, i64* %RAX.i1128, align 8
  %3525 = add i64 %3520, 7
  store i64 %3525, i64* %3, align 8
  %3526 = load i32, i32* %3472, align 4
  %3527 = add i32 %3526, -20
  %3528 = zext i32 %3527 to i64
  store i64 %3528, i64* %RCX.i1237, align 8
  %3529 = icmp ult i32 %3526, 20
  %3530 = zext i1 %3529 to i8
  store i8 %3530, i8* %14, align 1
  %3531 = and i32 %3527, 255
  %3532 = tail call i32 @llvm.ctpop.i32(i32 %3531)
  %3533 = trunc i32 %3532 to i8
  %3534 = and i8 %3533, 1
  %3535 = xor i8 %3534, 1
  store i8 %3535, i8* %21, align 1
  %3536 = xor i32 %3526, 16
  %3537 = xor i32 %3536, %3527
  %3538 = lshr i32 %3537, 4
  %3539 = trunc i32 %3538 to i8
  %3540 = and i8 %3539, 1
  store i8 %3540, i8* %27, align 1
  %3541 = icmp eq i32 %3527, 0
  %3542 = zext i1 %3541 to i8
  store i8 %3542, i8* %30, align 1
  %3543 = lshr i32 %3527, 31
  %3544 = trunc i32 %3543 to i8
  store i8 %3544, i8* %33, align 1
  %3545 = lshr i32 %3526, 31
  %3546 = xor i32 %3543, %3545
  %3547 = add nuw nsw i32 %3546, %3545
  %3548 = icmp eq i32 %3547, 2
  %3549 = zext i1 %3548 to i8
  store i8 %3549, i8* %39, align 1
  %3550 = sext i32 %3527 to i64
  store i64 %3550, i64* %RDX.i1252, align 8
  %3551 = shl nsw i64 %3550, 2
  %3552 = add i64 %3524, %3551
  %3553 = add i64 %3520, 17
  store i64 %3553, i64* %3, align 8
  %3554 = inttoptr i64 %3552 to i32*
  %3555 = load i32, i32* %3554, align 4
  store i8 0, i8* %14, align 1
  %3556 = and i32 %3555, 255
  %3557 = tail call i32 @llvm.ctpop.i32(i32 %3556)
  %3558 = trunc i32 %3557 to i8
  %3559 = and i8 %3558, 1
  %3560 = xor i8 %3559, 1
  store i8 %3560, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %3561 = icmp eq i32 %3555, 0
  %3562 = zext i1 %3561 to i8
  store i8 %3562, i8* %30, align 1
  %3563 = lshr i32 %3555, 31
  %3564 = trunc i32 %3563 to i8
  store i8 %3564, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %3565 = icmp ne i8 %3564, 0
  %.v78 = select i1 %3565, i64 45, i64 6
  %3566 = add i64 %3553, %.v78
  store i64 %3566, i64* %3, align 8
  br i1 %3565, label %block_.L_46d53e, label %block_46d517

block_46d517:                                     ; preds = %block_46d500
  %3567 = add i64 %3566, 4
  store i64 %3567, i64* %3, align 8
  %3568 = load i32, i32* %3472, align 4
  %3569 = sext i32 %3568 to i64
  store i64 %3569, i64* %RAX.i1128, align 8
  %3570 = shl nsw i64 %3569, 2
  %3571 = add i64 %3469, -1632
  %3572 = add i64 %3571, %3570
  %3573 = add i64 %3566, 12
  store i64 %3573, i64* %3, align 8
  %3574 = inttoptr i64 %3572 to i32*
  %3575 = load i32, i32* %3574, align 4
  store i8 0, i8* %14, align 1
  %3576 = and i32 %3575, 255
  %3577 = tail call i32 @llvm.ctpop.i32(i32 %3576)
  %3578 = trunc i32 %3577 to i8
  %3579 = and i8 %3578, 1
  %3580 = xor i8 %3579, 1
  store i8 %3580, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %3581 = icmp eq i32 %3575, 0
  %3582 = zext i1 %3581 to i8
  store i8 %3582, i8* %30, align 1
  %3583 = lshr i32 %3575, 31
  %3584 = trunc i32 %3583 to i8
  store i8 %3584, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %3585 = icmp ne i8 %3584, 0
  %.v79 = select i1 %3585, i64 6, i64 27
  %3586 = add i64 %3573, %.v79
  store i64 %3586, i64* %3, align 8
  br i1 %3585, label %block_46d529, label %block_.L_46d53e

block_46d529:                                     ; preds = %block_46d517
  %3587 = add i64 %3586, 4
  store i64 %3587, i64* %3, align 8
  %3588 = load i32, i32* %3472, align 4
  %3589 = sext i32 %3588 to i64
  store i64 %3589, i64* %RAX.i1128, align 8
  %3590 = shl nsw i64 %3589, 2
  %3591 = add i64 %3571, %3590
  %3592 = add i64 %3586, 11
  store i64 %3592, i64* %3, align 8
  %3593 = inttoptr i64 %3591 to i32*
  %3594 = load i32, i32* %3593, align 4
  %3595 = add i32 %3594, 1
  %3596 = zext i32 %3595 to i64
  store i64 %3596, i64* %RCX.i1237, align 8
  %3597 = icmp eq i32 %3594, -1
  %3598 = icmp eq i32 %3595, 0
  %3599 = or i1 %3597, %3598
  %3600 = zext i1 %3599 to i8
  store i8 %3600, i8* %14, align 1
  %3601 = and i32 %3595, 255
  %3602 = tail call i32 @llvm.ctpop.i32(i32 %3601)
  %3603 = trunc i32 %3602 to i8
  %3604 = and i8 %3603, 1
  %3605 = xor i8 %3604, 1
  store i8 %3605, i8* %21, align 1
  %3606 = xor i32 %3595, %3594
  %3607 = lshr i32 %3606, 4
  %3608 = trunc i32 %3607 to i8
  %3609 = and i8 %3608, 1
  store i8 %3609, i8* %27, align 1
  %3610 = zext i1 %3598 to i8
  store i8 %3610, i8* %30, align 1
  %3611 = lshr i32 %3595, 31
  %3612 = trunc i32 %3611 to i8
  store i8 %3612, i8* %33, align 1
  %3613 = lshr i32 %3594, 31
  %3614 = xor i32 %3611, %3613
  %3615 = add nuw nsw i32 %3614, %3611
  %3616 = icmp eq i32 %3615, 2
  %3617 = zext i1 %3616 to i8
  store i8 %3617, i8* %39, align 1
  %3618 = add i64 %3586, 21
  store i64 %3618, i64* %3, align 8
  store i32 %3595, i32* %3593, align 4
  %.pre119 = load i64, i64* %RBP.i, align 8
  %.pre120 = load i64, i64* %3, align 8
  br label %block_.L_46d53e

block_.L_46d53e:                                  ; preds = %block_46d517, %block_46d529, %block_46d500, %block_.L_46d4e6
  %3619 = phi i64 [ %3586, %block_46d517 ], [ %.pre120, %block_46d529 ], [ %3566, %block_46d500 ], [ %3520, %block_.L_46d4e6 ]
  %3620 = phi i64 [ %3469, %block_46d517 ], [ %.pre119, %block_46d529 ], [ %3469, %block_46d500 ], [ %3469, %block_.L_46d4e6 ]
  %3621 = add i64 %3620, -24
  %3622 = add i64 %3619, 3
  store i64 %3622, i64* %3, align 8
  %3623 = inttoptr i64 %3621 to i32*
  %3624 = load i32, i32* %3623, align 4
  %3625 = add i32 %3624, 1
  %3626 = zext i32 %3625 to i64
  store i64 %3626, i64* %RAX.i1128, align 8
  %3627 = icmp eq i32 %3624, -1
  %3628 = icmp eq i32 %3625, 0
  %3629 = or i1 %3627, %3628
  %3630 = zext i1 %3629 to i8
  store i8 %3630, i8* %14, align 1
  %3631 = and i32 %3625, 255
  %3632 = tail call i32 @llvm.ctpop.i32(i32 %3631)
  %3633 = trunc i32 %3632 to i8
  %3634 = and i8 %3633, 1
  %3635 = xor i8 %3634, 1
  store i8 %3635, i8* %21, align 1
  %3636 = xor i32 %3625, %3624
  %3637 = lshr i32 %3636, 4
  %3638 = trunc i32 %3637 to i8
  %3639 = and i8 %3638, 1
  store i8 %3639, i8* %27, align 1
  %3640 = zext i1 %3628 to i8
  store i8 %3640, i8* %30, align 1
  %3641 = lshr i32 %3625, 31
  %3642 = trunc i32 %3641 to i8
  store i8 %3642, i8* %33, align 1
  %3643 = lshr i32 %3624, 31
  %3644 = xor i32 %3641, %3643
  %3645 = add nuw nsw i32 %3644, %3641
  %3646 = icmp eq i32 %3645, 2
  %3647 = zext i1 %3646 to i8
  store i8 %3647, i8* %39, align 1
  %3648 = sext i32 %3625 to i64
  store i64 %3648, i64* %RCX.i1237, align 8
  %3649 = add nsw i64 %3648, 12099168
  %3650 = add i64 %3619, 17
  store i64 %3650, i64* %3, align 8
  %3651 = inttoptr i64 %3649 to i8*
  %3652 = load i8, i8* %3651, align 1
  %3653 = zext i8 %3652 to i64
  store i64 %3653, i64* %RAX.i1128, align 8
  %3654 = zext i8 %3652 to i32
  %3655 = add nsw i32 %3654, -3
  %3656 = icmp ult i8 %3652, 3
  %3657 = zext i1 %3656 to i8
  store i8 %3657, i8* %14, align 1
  %3658 = and i32 %3655, 255
  %3659 = tail call i32 @llvm.ctpop.i32(i32 %3658)
  %3660 = trunc i32 %3659 to i8
  %3661 = and i8 %3660, 1
  %3662 = xor i8 %3661, 1
  store i8 %3662, i8* %21, align 1
  %3663 = xor i32 %3655, %3654
  %3664 = lshr i32 %3663, 4
  %3665 = trunc i32 %3664 to i8
  %3666 = and i8 %3665, 1
  store i8 %3666, i8* %27, align 1
  %3667 = icmp eq i32 %3655, 0
  %3668 = zext i1 %3667 to i8
  store i8 %3668, i8* %30, align 1
  %3669 = lshr i32 %3655, 31
  %3670 = trunc i32 %3669 to i8
  store i8 %3670, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v171 = select i1 %3667, i64 88, i64 26
  %3671 = add i64 %3619, %.v171
  store i64 %3671, i64* %3, align 8
  br i1 %3667, label %block_.L_46d596, label %block_46d558

block_46d558:                                     ; preds = %block_.L_46d53e
  %3672 = add i64 %3620, -16
  %3673 = add i64 %3671, 4
  store i64 %3673, i64* %3, align 8
  %3674 = inttoptr i64 %3672 to i64*
  %3675 = load i64, i64* %3674, align 8
  store i64 %3675, i64* %RAX.i1128, align 8
  %3676 = add i64 %3671, 7
  store i64 %3676, i64* %3, align 8
  %3677 = load i32, i32* %3623, align 4
  %3678 = add i32 %3677, 1
  %3679 = zext i32 %3678 to i64
  store i64 %3679, i64* %RCX.i1237, align 8
  %3680 = icmp eq i32 %3677, -1
  %3681 = icmp eq i32 %3678, 0
  %3682 = or i1 %3680, %3681
  %3683 = zext i1 %3682 to i8
  store i8 %3683, i8* %14, align 1
  %3684 = and i32 %3678, 255
  %3685 = tail call i32 @llvm.ctpop.i32(i32 %3684)
  %3686 = trunc i32 %3685 to i8
  %3687 = and i8 %3686, 1
  %3688 = xor i8 %3687, 1
  store i8 %3688, i8* %21, align 1
  %3689 = xor i32 %3678, %3677
  %3690 = lshr i32 %3689, 4
  %3691 = trunc i32 %3690 to i8
  %3692 = and i8 %3691, 1
  store i8 %3692, i8* %27, align 1
  %3693 = zext i1 %3681 to i8
  store i8 %3693, i8* %30, align 1
  %3694 = lshr i32 %3678, 31
  %3695 = trunc i32 %3694 to i8
  store i8 %3695, i8* %33, align 1
  %3696 = lshr i32 %3677, 31
  %3697 = xor i32 %3694, %3696
  %3698 = add nuw nsw i32 %3697, %3694
  %3699 = icmp eq i32 %3698, 2
  %3700 = zext i1 %3699 to i8
  store i8 %3700, i8* %39, align 1
  %3701 = sext i32 %3678 to i64
  store i64 %3701, i64* %RDX.i1252, align 8
  %3702 = shl nsw i64 %3701, 2
  %3703 = add i64 %3675, %3702
  %3704 = add i64 %3671, 17
  store i64 %3704, i64* %3, align 8
  %3705 = inttoptr i64 %3703 to i32*
  %3706 = load i32, i32* %3705, align 4
  store i8 0, i8* %14, align 1
  %3707 = and i32 %3706, 255
  %3708 = tail call i32 @llvm.ctpop.i32(i32 %3707)
  %3709 = trunc i32 %3708 to i8
  %3710 = and i8 %3709, 1
  %3711 = xor i8 %3710, 1
  store i8 %3711, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %3712 = icmp eq i32 %3706, 0
  %3713 = zext i1 %3712 to i8
  store i8 %3713, i8* %30, align 1
  %3714 = lshr i32 %3706, 31
  %3715 = trunc i32 %3714 to i8
  store i8 %3715, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %3716 = icmp ne i8 %3715, 0
  %.v80 = select i1 %3716, i64 45, i64 6
  %3717 = add i64 %3704, %.v80
  store i64 %3717, i64* %3, align 8
  br i1 %3716, label %block_.L_46d596, label %block_46d56f

block_46d56f:                                     ; preds = %block_46d558
  %3718 = add i64 %3717, 4
  store i64 %3718, i64* %3, align 8
  %3719 = load i32, i32* %3623, align 4
  %3720 = sext i32 %3719 to i64
  store i64 %3720, i64* %RAX.i1128, align 8
  %3721 = shl nsw i64 %3720, 2
  %3722 = add i64 %3620, -1632
  %3723 = add i64 %3722, %3721
  %3724 = add i64 %3717, 12
  store i64 %3724, i64* %3, align 8
  %3725 = inttoptr i64 %3723 to i32*
  %3726 = load i32, i32* %3725, align 4
  store i8 0, i8* %14, align 1
  %3727 = and i32 %3726, 255
  %3728 = tail call i32 @llvm.ctpop.i32(i32 %3727)
  %3729 = trunc i32 %3728 to i8
  %3730 = and i8 %3729, 1
  %3731 = xor i8 %3730, 1
  store i8 %3731, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %3732 = icmp eq i32 %3726, 0
  %3733 = zext i1 %3732 to i8
  store i8 %3733, i8* %30, align 1
  %3734 = lshr i32 %3726, 31
  %3735 = trunc i32 %3734 to i8
  store i8 %3735, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %3736 = icmp ne i8 %3735, 0
  %.v81 = select i1 %3736, i64 6, i64 27
  %3737 = add i64 %3724, %.v81
  store i64 %3737, i64* %3, align 8
  br i1 %3736, label %block_46d581, label %block_.L_46d596

block_46d581:                                     ; preds = %block_46d56f
  %3738 = add i64 %3737, 4
  store i64 %3738, i64* %3, align 8
  %3739 = load i32, i32* %3623, align 4
  %3740 = sext i32 %3739 to i64
  store i64 %3740, i64* %RAX.i1128, align 8
  %3741 = shl nsw i64 %3740, 2
  %3742 = add i64 %3722, %3741
  %3743 = add i64 %3737, 11
  store i64 %3743, i64* %3, align 8
  %3744 = inttoptr i64 %3742 to i32*
  %3745 = load i32, i32* %3744, align 4
  %3746 = add i32 %3745, 1
  %3747 = zext i32 %3746 to i64
  store i64 %3747, i64* %RCX.i1237, align 8
  %3748 = icmp eq i32 %3745, -1
  %3749 = icmp eq i32 %3746, 0
  %3750 = or i1 %3748, %3749
  %3751 = zext i1 %3750 to i8
  store i8 %3751, i8* %14, align 1
  %3752 = and i32 %3746, 255
  %3753 = tail call i32 @llvm.ctpop.i32(i32 %3752)
  %3754 = trunc i32 %3753 to i8
  %3755 = and i8 %3754, 1
  %3756 = xor i8 %3755, 1
  store i8 %3756, i8* %21, align 1
  %3757 = xor i32 %3746, %3745
  %3758 = lshr i32 %3757, 4
  %3759 = trunc i32 %3758 to i8
  %3760 = and i8 %3759, 1
  store i8 %3760, i8* %27, align 1
  %3761 = zext i1 %3749 to i8
  store i8 %3761, i8* %30, align 1
  %3762 = lshr i32 %3746, 31
  %3763 = trunc i32 %3762 to i8
  store i8 %3763, i8* %33, align 1
  %3764 = lshr i32 %3745, 31
  %3765 = xor i32 %3762, %3764
  %3766 = add nuw nsw i32 %3765, %3762
  %3767 = icmp eq i32 %3766, 2
  %3768 = zext i1 %3767 to i8
  store i8 %3768, i8* %39, align 1
  %3769 = add i64 %3737, 21
  store i64 %3769, i64* %3, align 8
  store i32 %3746, i32* %3744, align 4
  %.pre121 = load i64, i64* %3, align 8
  %.pre122.pre.pre = load i64, i64* %RBP.i, align 8
  br label %block_.L_46d596

block_.L_46d596:                                  ; preds = %block_46d56f, %block_46d581, %block_46d558, %block_.L_46d53e
  %.pre122.pre = phi i64 [ %3620, %block_46d56f ], [ %.pre122.pre.pre, %block_46d581 ], [ %3620, %block_46d558 ], [ %3620, %block_.L_46d53e ]
  %3770 = phi i64 [ %3737, %block_46d56f ], [ %.pre121, %block_46d581 ], [ %3717, %block_46d558 ], [ %3671, %block_.L_46d53e ]
  %3771 = add i64 %3770, 5
  store i64 %3771, i64* %3, align 8
  br label %block_.L_46d59b

block_.L_46d59b:                                  ; preds = %block_.L_46d436, %block_.L_46d596
  %.pre122 = phi i64 [ %3169, %block_.L_46d436 ], [ %.pre122.pre, %block_.L_46d596 ]
  %3772 = phi i64 [ %3191, %block_.L_46d436 ], [ %3771, %block_.L_46d596 ]
  %3773 = add i64 %3772, 5
  store i64 %3773, i64* %3, align 8
  br label %block_.L_46d5a0

block_.L_46d5a0:                                  ; preds = %block_.L_46d59b, %block_46d2cc
  %3774 = phi i64 [ %2495, %block_46d2cc ], [ %.pre122, %block_.L_46d59b ]
  %storemerge74 = phi i64 [ %2551, %block_46d2cc ], [ %3773, %block_.L_46d59b ]
  %3775 = add i64 %3774, -24
  %3776 = add i64 %storemerge74, 3
  store i64 %3776, i64* %3, align 8
  %3777 = inttoptr i64 %3775 to i32*
  %3778 = load i32, i32* %3777, align 4
  %3779 = add i32 %3778, 1
  %3780 = zext i32 %3779 to i64
  store i64 %3780, i64* %RAX.i1128, align 8
  %3781 = icmp eq i32 %3778, -1
  %3782 = icmp eq i32 %3779, 0
  %3783 = or i1 %3781, %3782
  %3784 = zext i1 %3783 to i8
  store i8 %3784, i8* %14, align 1
  %3785 = and i32 %3779, 255
  %3786 = tail call i32 @llvm.ctpop.i32(i32 %3785)
  %3787 = trunc i32 %3786 to i8
  %3788 = and i8 %3787, 1
  %3789 = xor i8 %3788, 1
  store i8 %3789, i8* %21, align 1
  %3790 = xor i32 %3779, %3778
  %3791 = lshr i32 %3790, 4
  %3792 = trunc i32 %3791 to i8
  %3793 = and i8 %3792, 1
  store i8 %3793, i8* %27, align 1
  %3794 = zext i1 %3782 to i8
  store i8 %3794, i8* %30, align 1
  %3795 = lshr i32 %3779, 31
  %3796 = trunc i32 %3795 to i8
  store i8 %3796, i8* %33, align 1
  %3797 = lshr i32 %3778, 31
  %3798 = xor i32 %3795, %3797
  %3799 = add nuw nsw i32 %3798, %3795
  %3800 = icmp eq i32 %3799, 2
  %3801 = zext i1 %3800 to i8
  store i8 %3801, i8* %39, align 1
  %3802 = add i64 %storemerge74, 9
  store i64 %3802, i64* %3, align 8
  store i32 %3779, i32* %3777, align 4
  %3803 = load i64, i64* %3, align 8
  %3804 = add i64 %3803, -767
  store i64 %3804, i64* %3, align 8
  br label %block_.L_46d2aa

block_.L_46d5ae:                                  ; preds = %block_.L_46d2aa
  store i64 1600, i64* %RAX.i1128, align 8
  store i64 1600, i64* %RDX.i1252, align 8
  %3805 = add i64 %2495, -1632
  store i64 %3805, i64* %RCX.i1237, align 8
  %3806 = add i64 %2495, -16
  %3807 = add i64 %2524, 18
  store i64 %3807, i64* %3, align 8
  %3808 = inttoptr i64 %3806 to i64*
  %3809 = load i64, i64* %3808, align 8
  store i64 %3809, i64* %RDI.i1167, align 8
  store i64 %3805, i64* %RSI.i1164, align 8
  %3810 = add i64 %2524, -443582
  %3811 = add i64 %2524, 29
  %3812 = load i64, i64* %6, align 8
  %3813 = add i64 %3812, -8
  %3814 = inttoptr i64 %3813 to i64*
  store i64 %3811, i64* %3814, align 8
  store i64 %3813, i64* %6, align 8
  store i64 %3810, i64* %3, align 8
  %3815 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @memcpy to i64), %struct.Memory* %MEMORY.28)
  %3816 = load i64, i64* %RBP.i, align 8
  %3817 = add i64 %3816, -1636
  %3818 = load i64, i64* %3, align 8
  %3819 = add i64 %3818, 6
  store i64 %3819, i64* %3, align 8
  %3820 = inttoptr i64 %3817 to i32*
  %3821 = load i32, i32* %3820, align 4
  %3822 = add i32 %3821, 1
  %3823 = zext i32 %3822 to i64
  store i64 %3823, i64* %RAX.i1128, align 8
  %3824 = icmp eq i32 %3821, -1
  %3825 = icmp eq i32 %3822, 0
  %3826 = or i1 %3824, %3825
  %3827 = zext i1 %3826 to i8
  store i8 %3827, i8* %14, align 1
  %3828 = and i32 %3822, 255
  %3829 = tail call i32 @llvm.ctpop.i32(i32 %3828)
  %3830 = trunc i32 %3829 to i8
  %3831 = and i8 %3830, 1
  %3832 = xor i8 %3831, 1
  store i8 %3832, i8* %21, align 1
  %3833 = xor i32 %3822, %3821
  %3834 = lshr i32 %3833, 4
  %3835 = trunc i32 %3834 to i8
  %3836 = and i8 %3835, 1
  store i8 %3836, i8* %27, align 1
  %3837 = zext i1 %3825 to i8
  store i8 %3837, i8* %30, align 1
  %3838 = lshr i32 %3822, 31
  %3839 = trunc i32 %3838 to i8
  store i8 %3839, i8* %33, align 1
  %3840 = lshr i32 %3821, 31
  %3841 = xor i32 %3838, %3840
  %3842 = add nuw nsw i32 %3841, %3838
  %3843 = icmp eq i32 %3842, 2
  %3844 = zext i1 %3843 to i8
  store i8 %3844, i8* %39, align 1
  %3845 = add i64 %3818, 15
  store i64 %3845, i64* %3, align 8
  store i32 %3822, i32* %3820, align 4
  %3846 = load i64, i64* %3, align 8
  %3847 = add i64 %3846, -838
  store i64 %3847, i64* %3, align 8
  br label %block_.L_46d294

block_.L_46d5df:                                  ; preds = %block_.L_46d294
  %3848 = add i64 %2454, -1640
  %3849 = add i64 %2490, 6
  store i64 %3849, i64* %3, align 8
  %3850 = inttoptr i64 %3848 to i32*
  %3851 = load i32, i32* %3850, align 4
  %3852 = zext i32 %3851 to i64
  store i64 %3852, i64* %RAX.i1128, align 8
  %3853 = load i64, i64* %6, align 8
  %3854 = add i64 %3853, 1648
  store i64 %3854, i64* %6, align 8
  %3855 = icmp ugt i64 %3853, -1649
  %3856 = zext i1 %3855 to i8
  store i8 %3856, i8* %14, align 1
  %3857 = trunc i64 %3854 to i32
  %3858 = and i32 %3857, 255
  %3859 = tail call i32 @llvm.ctpop.i32(i32 %3858)
  %3860 = trunc i32 %3859 to i8
  %3861 = and i8 %3860, 1
  %3862 = xor i8 %3861, 1
  store i8 %3862, i8* %21, align 1
  %3863 = xor i64 %3853, 16
  %3864 = xor i64 %3863, %3854
  %3865 = lshr i64 %3864, 4
  %3866 = trunc i64 %3865 to i8
  %3867 = and i8 %3866, 1
  store i8 %3867, i8* %27, align 1
  %3868 = icmp eq i64 %3854, 0
  %3869 = zext i1 %3868 to i8
  store i8 %3869, i8* %30, align 1
  %3870 = lshr i64 %3854, 63
  %3871 = trunc i64 %3870 to i8
  store i8 %3871, i8* %33, align 1
  %3872 = lshr i64 %3853, 63
  %3873 = xor i64 %3870, %3872
  %3874 = add nuw nsw i64 %3873, %3870
  %3875 = icmp eq i64 %3874, 2
  %3876 = zext i1 %3875 to i8
  store i8 %3876, i8* %39, align 1
  %3877 = add i64 %2490, 14
  store i64 %3877, i64* %3, align 8
  %3878 = add i64 %3853, 1656
  %3879 = inttoptr i64 %3854 to i64*
  %3880 = load i64, i64* %3879, align 8
  store i64 %3880, i64* %RBP.i, align 8
  store i64 %3878, i64* %6, align 8
  %3881 = add i64 %2490, 15
  store i64 %3881, i64* %3, align 8
  %3882 = inttoptr i64 %3878 to i64*
  %3883 = load i64, i64* %3882, align 8
  store i64 %3883, i64* %3, align 8
  %3884 = add i64 %3853, 1664
  store i64 %3884, i64* %6, align 8
  ret %struct.Memory* %MEMORY.28
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
define %struct.Memory* @routine_subq__0x670___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -1648
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 1648
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
define %struct.Memory* @routine_movl__ecx__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x668__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1640
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x15__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 21, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x190__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
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
define %struct.Memory* @routine_jge_.L_46cdff(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x18__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
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
define %struct.Memory* @routine_jne_.L_46cd20(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_46cdf1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
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
define %struct.Memory* @routine_je_.L_46cd5e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
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
define %struct.Memory* @routine_jne_.L_46cd5e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1__MINUS0x668__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1640
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
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
define %struct.Memory* @routine_jne_.L_46cd9b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x18__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
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
define %struct.Memory* @routine_movl_MINUS0x14__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
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
define %struct.Memory* @routine_callq_.captured_territory(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x80____rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  store i32 128, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_46cdec(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jne_.L_46cdd8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0xffffff80____rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  store i32 -128, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_46cde7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0____rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  store i32 0, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
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
define %struct.Memory* @routine_jmpq_.L_46ccf9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x640___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 1600, i64* %RAX, align 8
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
define %struct.Memory* @routine_leaq_MINUS0x660__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1632
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x10__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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
define %struct.Memory* @routine_callq_.memcpy_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x664__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1636
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x664__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1636
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x4__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
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
define %struct.Memory* @routine_jge_.L_46d28a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_46d259(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_46ce60(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_46d24b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0____rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %11, align 1
  %12 = and i32 %10, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  %19 = icmp eq i32 %10, 0
  %20 = zext i1 %19 to i8
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %20, i8* %21, align 1
  %22 = lshr i32 %10, 31
  %23 = trunc i32 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %23, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %25, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jl_.L_46d053(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
  %11 = zext i1 %10 to i8
  store i8 %11, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %10, i64 %rel_off1, i64 %rel_off2
  %12 = add i64 %.v, %3
  store i64 %12, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x14___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 20
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ugt i32 %6, -21
  %10 = zext i1 %9 to i8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %10, i8* %11, align 1
  %12 = and i32 %7, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = xor i32 %6, 16
  %19 = xor i32 %18, %7
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %7, 0
  %25 = zext i1 %24 to i8
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
define %struct.Memory* @routine_movslq__eax___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 12099168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x3___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
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
define %struct.Memory* @routine_je_.L_46cea3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x18__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x14___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 20
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  %9 = icmp ugt i32 %6, -21
  %10 = zext i1 %9 to i8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %10, i8* %11, align 1
  %12 = and i32 %7, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = xor i32 %6, 16
  %19 = xor i32 %18, %7
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %7, 0
  %25 = zext i1 %24 to i8
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
define %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0____rax__rdx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %11, align 1
  %12 = and i32 %10, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  %19 = icmp eq i32 %10, 0
  %20 = zext i1 %19 to i8
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %20, i8* %21, align 1
  %22 = lshr i32 %10, 31
  %23 = trunc i32 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %23, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %25, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x1___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp eq i32 %6, 0
  %10 = zext i1 %9 to i8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %10, i8* %11, align 1
  %12 = and i32 %7, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = xor i32 %7, %6
  %19 = lshr i32 %18, 4
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %21, i8* %22, align 1
  %23 = icmp eq i32 %7, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1
  %26 = lshr i32 %7, 31
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %6, 31
  %30 = xor i32 %26, %29
  %31 = add nuw nsw i32 %30, %29
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_46ced4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_subl__0x1___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  %9 = icmp eq i32 %6, 0
  %10 = zext i1 %9 to i8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %10, i8* %11, align 1
  %12 = and i32 %7, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = xor i32 %7, %6
  %19 = lshr i32 %18, 4
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %21, i8* %22, align 1
  %23 = icmp eq i32 %7, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1
  %26 = lshr i32 %7, 31
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %6, 31
  %30 = xor i32 %26, %29
  %31 = add nuw nsw i32 %30, %29
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x14___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -20
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ult i32 %6, 20
  %10 = zext i1 %9 to i8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %10, i8* %11, align 1
  %12 = and i32 %7, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = xor i32 %6, 16
  %19 = xor i32 %18, %7
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %7, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %7, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %6, 31
  %31 = xor i32 %27, %30
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_46cf05(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_subl__0x14___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -20
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  %9 = icmp ult i32 %6, 20
  %10 = zext i1 %9 to i8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %10, i8* %11, align 1
  %12 = and i32 %7, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = xor i32 %6, 16
  %19 = xor i32 %18, %7
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %7, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %7, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %6, 31
  %31 = xor i32 %27, %30
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_46cf36(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addl__0x1___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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
define %struct.Memory* @routine_je_.L_46cf7c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jle_.L_46cf7c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
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
  %.v = select i1 %14, i64 %rel_off1, i64 %rel_off2
  %16 = add i64 %.v, %3
  store i64 %16, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x660__rbp__rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -1632
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x660__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -1632
  %8 = add i64 %7, %6
  %9 = load i32, i32* %ECX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_46cfc2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jle_.L_46cfc2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
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
  %.v = select i1 %14, i64 %rel_off1, i64 %rel_off2
  %16 = add i64 %.v, %3
  store i64 %16, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_46d008(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jle_.L_46d008(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
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
  %.v = select i1 %14, i64 %rel_off1, i64 %rel_off2
  %16 = add i64 %.v, %3
  store i64 %16, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_46d04e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jle_.L_46d04e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
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
  %.v = select i1 %14, i64 %rel_off1, i64 %rel_off2
  %16 = add i64 %.v, %3
  store i64 %16, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_46d053(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jg_.L_46d246(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_46d096(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_46d0c7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_46d0f8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_46d129(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_46d16f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_46d16f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addl__0xffffffff___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  %9 = icmp ne i32 %6, 0
  %10 = zext i1 %9 to i8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %10, i8* %11, align 1
  %12 = and i32 %7, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = xor i32 %6, 16
  %19 = xor i32 %18, %7
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %7, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %7, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %6, 31
  %31 = xor i32 %27, %30
  %32 = xor i32 %27, 1
  %33 = add nuw nsw i32 %31, %32
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_46d1b5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_46d1b5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_46d1fb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_46d1fb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_46d241(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_46d241(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_46d246(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_46ce39(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rsi___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x664__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1636
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_46ce23(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x8__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_46d5df(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_46d5ae(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_46d2d1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_46d5a0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x660__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -1632
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 8
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %12, align 1
  %13 = and i32 %11, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %19, align 1
  %20 = icmp eq i32 %11, 0
  %21 = zext i1 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %21, i8* %22, align 1
  %23 = lshr i32 %11, 31
  %24 = trunc i32 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %24, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_46d436(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
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
  %.v = select i1 %14, i64 %rel_off1, i64 %rel_off2
  %16 = add i64 %.v, %3
  store i64 %16, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_46d329(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jg_.L_46d329(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_46d381(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jg_.L_46d381(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jle_.L_46d381(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
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
  %.v = select i1 %14, i64 %rel_off1, i64 %rel_off2
  %16 = add i64 %.v, %3
  store i64 %16, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_46d3d9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jg_.L_46d3d9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jle_.L_46d3d9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
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
  %.v = select i1 %14, i64 %rel_off1, i64 %rel_off2
  %16 = add i64 %.v, %3
  store i64 %16, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_46d431(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jg_.L_46d431(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jle_.L_46d431(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
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
  %.v = select i1 %14, i64 %rel_off1, i64 %rel_off2
  %16 = add i64 %.v, %3
  store i64 %16, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_46d436(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_46d59b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_46d48e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jl_.L_46d48e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
  %11 = zext i1 %10 to i8
  store i8 %11, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %10, i64 %rel_off1, i64 %rel_off2
  %12 = add i64 %.v, %3
  store i64 %12, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_46d4e6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jl_.L_46d4e6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
  %11 = zext i1 %10 to i8
  store i8 %11, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %10, i64 %rel_off1, i64 %rel_off2
  %12 = add i64 %.v, %3
  store i64 %12, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_46d4e6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_46d53e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jl_.L_46d53e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
  %11 = zext i1 %10 to i8
  store i8 %11, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %10, i64 %rel_off1, i64 %rel_off2
  %12 = add i64 %.v, %3
  store i64 %12, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_46d53e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_46d596(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jl_.L_46d596(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
  %11 = zext i1 %10 to i8
  store i8 %11, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %10, i64 %rel_off1, i64 %rel_off2
  %12 = add i64 %.v, %3
  store i64 %12, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_46d596(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_46d59b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_46d2aa(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_46d294(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x668__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1640
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x670___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 1648
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -1649
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
