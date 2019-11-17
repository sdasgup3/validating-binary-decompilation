; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G__0x400969_type = type <{ [8 x i8] }>
%G__0x40096b_type = type <{ [8 x i8] }>
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
@G__0x400969 = global %G__0x400969_type zeroinitializer
@G__0x40096b = global %G__0x40096b_type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @calloc(i64, i64)

declare extern_weak x86_64_sysvcc i64 @printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @fannkuch(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -104
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 96
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
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i = bitcast %union.anon* %39 to i32*
  %40 = add i64 %7, -20
  %41 = load i32, i32* %EDI.i, align 4
  %42 = add i64 %10, 10
  store i64 %42, i64* %3, align 8
  %43 = inttoptr i64 %40 to i32*
  store i32 %41, i32* %43, align 4
  %RDI.i471 = getelementptr inbounds %union.anon, %union.anon* %39, i64 0, i32 0
  %44 = load i64, i64* %RBP.i, align 8
  %45 = add i64 %44, -12
  %46 = load i64, i64* %3, align 8
  %47 = add i64 %46, 3
  store i64 %47, i64* %3, align 8
  %48 = inttoptr i64 %45 to i32*
  %49 = load i32, i32* %48, align 4
  %50 = add i32 %49, -1
  %51 = zext i32 %50 to i64
  store i64 %51, i64* %RDI.i471, align 8
  %52 = icmp eq i32 %49, 0
  %53 = zext i1 %52 to i8
  store i8 %53, i8* %14, align 1
  %54 = and i32 %50, 255
  %55 = tail call i32 @llvm.ctpop.i32(i32 %54)
  %56 = trunc i32 %55 to i8
  %57 = and i8 %56, 1
  %58 = xor i8 %57, 1
  store i8 %58, i8* %21, align 1
  %59 = xor i32 %50, %49
  %60 = lshr i32 %59, 4
  %61 = trunc i32 %60 to i8
  %62 = and i8 %61, 1
  store i8 %62, i8* %26, align 1
  %63 = icmp eq i32 %50, 0
  %64 = zext i1 %63 to i8
  store i8 %64, i8* %29, align 1
  %65 = lshr i32 %50, 31
  %66 = trunc i32 %65 to i8
  store i8 %66, i8* %32, align 1
  %67 = lshr i32 %49, 31
  %68 = xor i32 %65, %67
  %69 = add nuw nsw i32 %68, %67
  %70 = icmp eq i32 %69, 2
  %71 = zext i1 %70 to i8
  store i8 %71, i8* %38, align 1
  %72 = add i64 %44, -76
  %73 = add i64 %46, 9
  store i64 %73, i64* %3, align 8
  %74 = inttoptr i64 %72 to i32*
  store i32 %50, i32* %74, align 4
  %75 = load i64, i64* %RBP.i, align 8
  %76 = add i64 %75, -12
  %77 = load i64, i64* %3, align 8
  %78 = add i64 %77, 4
  store i64 %78, i64* %3, align 8
  %79 = inttoptr i64 %76 to i32*
  %80 = load i32, i32* %79, align 4
  %81 = add i32 %80, -1
  %82 = icmp eq i32 %80, 0
  %83 = zext i1 %82 to i8
  store i8 %83, i8* %14, align 1
  %84 = and i32 %81, 255
  %85 = tail call i32 @llvm.ctpop.i32(i32 %84)
  %86 = trunc i32 %85 to i8
  %87 = and i8 %86, 1
  %88 = xor i8 %87, 1
  store i8 %88, i8* %21, align 1
  %89 = xor i32 %81, %80
  %90 = lshr i32 %89, 4
  %91 = trunc i32 %90 to i8
  %92 = and i8 %91, 1
  store i8 %92, i8* %26, align 1
  %93 = icmp eq i32 %81, 0
  %94 = zext i1 %93 to i8
  store i8 %94, i8* %29, align 1
  %95 = lshr i32 %81, 31
  %96 = trunc i32 %95 to i8
  store i8 %96, i8* %32, align 1
  %97 = lshr i32 %80, 31
  %98 = xor i32 %95, %97
  %99 = add nuw nsw i32 %98, %97
  %100 = icmp eq i32 %99, 2
  %101 = zext i1 %100 to i8
  store i8 %101, i8* %38, align 1
  %102 = icmp ne i8 %96, 0
  %103 = xor i1 %102, %100
  %.v53 = select i1 %103, i64 10, i64 23
  %104 = add i64 %77, %.v53
  store i64 %104, i64* %3, align 8
  br i1 %103, label %block_4005ce, label %block_.L_4005db

block_4005ce:                                     ; preds = %entry
  %105 = add i64 %75, -8
  %106 = add i64 %104, 8
  store i64 %106, i64* %3, align 8
  %107 = inttoptr i64 %105 to i64*
  store i64 0, i64* %107, align 8
  %108 = load i64, i64* %3, align 8
  %109 = add i64 %108, 742
  br label %block_.L_4008bc

block_.L_4005db:                                  ; preds = %entry
  %110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i495 = getelementptr inbounds %union.anon, %union.anon* %110, i64 0, i32 0
  store i64 4, i64* %RAX.i495, align 8
  %EAX.i492 = bitcast %union.anon* %110 to i32*
  %RSI.i493 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  store i64 4, i64* %RSI.i493, align 8
  %111 = add i64 %104, 11
  store i64 %111, i64* %3, align 8
  %112 = load i32, i32* %79, align 4
  %113 = sext i32 %112 to i64
  store i64 %113, i64* %RDI.i471, align 8
  %114 = add i64 %104, -379
  %115 = add i64 %104, 16
  %116 = load i64, i64* %6, align 8
  %117 = add i64 %116, -8
  %118 = inttoptr i64 %117 to i64*
  store i64 %115, i64* %118, align 8
  store i64 %117, i64* %6, align 8
  store i64 %114, i64* %3, align 8
  %119 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64)* @calloc to i64), %struct.Memory* %2)
  %RCX.i484 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %120 = load i64, i64* %3, align 8
  store i64 4, i64* %RCX.i484, align 8
  store i64 4, i64* %RSI.i493, align 8
  %121 = load i64, i64* %RBP.i, align 8
  %122 = add i64 %121, -24
  %123 = load i64, i64* %RAX.i495, align 8
  %124 = add i64 %120, 11
  store i64 %124, i64* %3, align 8
  %125 = inttoptr i64 %122 to i64*
  store i64 %123, i64* %125, align 8
  %126 = load i64, i64* %RBP.i, align 8
  %127 = add i64 %126, -12
  %128 = load i64, i64* %3, align 8
  %129 = add i64 %128, 4
  store i64 %129, i64* %3, align 8
  %130 = inttoptr i64 %127 to i32*
  %131 = load i32, i32* %130, align 4
  %132 = sext i32 %131 to i64
  store i64 %132, i64* %RDI.i471, align 8
  %133 = add i64 %128, -406
  %134 = add i64 %128, 9
  %135 = load i64, i64* %6, align 8
  %136 = add i64 %135, -8
  %137 = inttoptr i64 %136 to i64*
  store i64 %134, i64* %137, align 8
  store i64 %136, i64* %6, align 8
  store i64 %133, i64* %3, align 8
  %138 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64)* @calloc to i64), %struct.Memory* %119)
  %139 = load i64, i64* %3, align 8
  store i64 4, i64* %RCX.i484, align 8
  store i64 4, i64* %RSI.i493, align 8
  %140 = load i64, i64* %RBP.i, align 8
  %141 = add i64 %140, -32
  %142 = load i64, i64* %RAX.i495, align 8
  %143 = add i64 %139, 11
  store i64 %143, i64* %3, align 8
  %144 = inttoptr i64 %141 to i64*
  store i64 %142, i64* %144, align 8
  %145 = load i64, i64* %RBP.i, align 8
  %146 = add i64 %145, -12
  %147 = load i64, i64* %3, align 8
  %148 = add i64 %147, 4
  store i64 %148, i64* %3, align 8
  %149 = inttoptr i64 %146 to i32*
  %150 = load i32, i32* %149, align 4
  %151 = sext i32 %150 to i64
  store i64 %151, i64* %RDI.i471, align 8
  %152 = add i64 %147, -426
  %153 = add i64 %147, 9
  %154 = load i64, i64* %6, align 8
  %155 = add i64 %154, -8
  %156 = inttoptr i64 %155 to i64*
  store i64 %153, i64* %156, align 8
  store i64 %155, i64* %6, align 8
  store i64 %152, i64* %3, align 8
  %157 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64)* @calloc to i64), %struct.Memory* %138)
  %158 = load i64, i64* %RBP.i, align 8
  %159 = add i64 %158, -40
  %160 = load i64, i64* %RAX.i495, align 8
  %161 = load i64, i64* %3, align 8
  %162 = add i64 %161, 4
  store i64 %162, i64* %3, align 8
  %163 = inttoptr i64 %159 to i64*
  store i64 %160, i64* %163, align 8
  %164 = load i64, i64* %RBP.i, align 8
  %165 = add i64 %164, -64
  %166 = load i64, i64* %3, align 8
  %167 = add i64 %166, 7
  store i64 %167, i64* %3, align 8
  %168 = inttoptr i64 %165 to i32*
  store i32 0, i32* %168, align 4
  %RDX.i436 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_40061e

block_.L_40061e:                                  ; preds = %block_40062a, %block_.L_4005db
  %169 = phi i64 [ %252, %block_40062a ], [ %.pre, %block_.L_4005db ]
  %170 = load i64, i64* %RBP.i, align 8
  %171 = add i64 %170, -64
  %172 = add i64 %169, 3
  store i64 %172, i64* %3, align 8
  %173 = inttoptr i64 %171 to i32*
  %174 = load i32, i32* %173, align 4
  %175 = zext i32 %174 to i64
  store i64 %175, i64* %RAX.i495, align 8
  %176 = add i64 %170, -12
  %177 = add i64 %169, 6
  store i64 %177, i64* %3, align 8
  %178 = inttoptr i64 %176 to i32*
  %179 = load i32, i32* %178, align 4
  %180 = sub i32 %174, %179
  %181 = icmp ult i32 %174, %179
  %182 = zext i1 %181 to i8
  store i8 %182, i8* %14, align 1
  %183 = and i32 %180, 255
  %184 = tail call i32 @llvm.ctpop.i32(i32 %183)
  %185 = trunc i32 %184 to i8
  %186 = and i8 %185, 1
  %187 = xor i8 %186, 1
  store i8 %187, i8* %21, align 1
  %188 = xor i32 %179, %174
  %189 = xor i32 %188, %180
  %190 = lshr i32 %189, 4
  %191 = trunc i32 %190 to i8
  %192 = and i8 %191, 1
  store i8 %192, i8* %26, align 1
  %193 = icmp eq i32 %180, 0
  %194 = zext i1 %193 to i8
  store i8 %194, i8* %29, align 1
  %195 = lshr i32 %180, 31
  %196 = trunc i32 %195 to i8
  store i8 %196, i8* %32, align 1
  %197 = lshr i32 %174, 31
  %198 = lshr i32 %179, 31
  %199 = xor i32 %198, %197
  %200 = xor i32 %195, %197
  %201 = add nuw nsw i32 %200, %199
  %202 = icmp eq i32 %201, 2
  %203 = zext i1 %202 to i8
  store i8 %203, i8* %38, align 1
  %204 = icmp ne i8 %196, 0
  %205 = xor i1 %204, %202
  %.v54 = select i1 %205, i64 12, i64 40
  %206 = add i64 %169, %.v54
  %207 = add i64 %206, 3
  store i64 %207, i64* %3, align 8
  br i1 %205, label %block_40062a, label %block_.L_400646

block_40062a:                                     ; preds = %block_.L_40061e
  %208 = load i32, i32* %173, align 4
  %209 = zext i32 %208 to i64
  store i64 %209, i64* %RAX.i495, align 8
  %210 = add i64 %170, -32
  %211 = add i64 %206, 7
  store i64 %211, i64* %3, align 8
  %212 = inttoptr i64 %210 to i64*
  %213 = load i64, i64* %212, align 8
  store i64 %213, i64* %RCX.i484, align 8
  %214 = add i64 %206, 11
  store i64 %214, i64* %3, align 8
  %215 = load i32, i32* %173, align 4
  %216 = sext i32 %215 to i64
  store i64 %216, i64* %RDX.i436, align 8
  %217 = shl nsw i64 %216, 2
  %218 = add i64 %217, %213
  %219 = add i64 %206, 14
  store i64 %219, i64* %3, align 8
  %220 = inttoptr i64 %218 to i32*
  store i32 %208, i32* %220, align 4
  %221 = load i64, i64* %RBP.i, align 8
  %222 = add i64 %221, -64
  %223 = load i64, i64* %3, align 8
  %224 = add i64 %223, 3
  store i64 %224, i64* %3, align 8
  %225 = inttoptr i64 %222 to i32*
  %226 = load i32, i32* %225, align 4
  %227 = add i32 %226, 1
  %228 = zext i32 %227 to i64
  store i64 %228, i64* %RAX.i495, align 8
  %229 = icmp eq i32 %226, -1
  %230 = icmp eq i32 %227, 0
  %231 = or i1 %229, %230
  %232 = zext i1 %231 to i8
  store i8 %232, i8* %14, align 1
  %233 = and i32 %227, 255
  %234 = tail call i32 @llvm.ctpop.i32(i32 %233)
  %235 = trunc i32 %234 to i8
  %236 = and i8 %235, 1
  %237 = xor i8 %236, 1
  store i8 %237, i8* %21, align 1
  %238 = xor i32 %227, %226
  %239 = lshr i32 %238, 4
  %240 = trunc i32 %239 to i8
  %241 = and i8 %240, 1
  store i8 %241, i8* %26, align 1
  %242 = zext i1 %230 to i8
  store i8 %242, i8* %29, align 1
  %243 = lshr i32 %227, 31
  %244 = trunc i32 %243 to i8
  store i8 %244, i8* %32, align 1
  %245 = lshr i32 %226, 31
  %246 = xor i32 %243, %245
  %247 = add nuw nsw i32 %246, %243
  %248 = icmp eq i32 %247, 2
  %249 = zext i1 %248 to i8
  store i8 %249, i8* %38, align 1
  %250 = add i64 %223, 9
  store i64 %250, i64* %3, align 8
  store i32 %227, i32* %225, align 4
  %251 = load i64, i64* %3, align 8
  %252 = add i64 %251, -35
  store i64 %252, i64* %3, align 8
  br label %block_.L_40061e

block_.L_400646:                                  ; preds = %block_.L_40061e
  %253 = load i32, i32* %178, align 4
  %254 = zext i32 %253 to i64
  store i64 %254, i64* %RAX.i495, align 8
  %255 = add i64 %170, -60
  %256 = add i64 %206, 6
  store i64 %256, i64* %3, align 8
  %257 = inttoptr i64 %255 to i32*
  store i32 %253, i32* %257, align 4
  %258 = load i64, i64* %RBP.i, align 8
  %259 = add i64 %258, -72
  %260 = load i64, i64* %3, align 8
  %261 = add i64 %260, 7
  store i64 %261, i64* %3, align 8
  %262 = inttoptr i64 %259 to i32*
  store i32 0, i32* %262, align 4
  %263 = load i64, i64* %RBP.i, align 8
  %264 = add i64 %263, -56
  %265 = load i64, i64* %3, align 8
  %266 = add i64 %265, 8
  store i64 %266, i64* %3, align 8
  %267 = inttoptr i64 %264 to i64*
  store i64 0, i64* %267, align 8
  %RDX.i391 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %AL.i382 = bitcast %union.anon* %110 to i8*
  %.pre44 = load i64, i64* %3, align 8
  br label %block_.L_40065b

block_.L_40065b:                                  ; preds = %block_4008a4, %block_.L_400646
  %268 = phi i64 [ %.pre44, %block_.L_400646 ], [ %1279, %block_4008a4 ]
  %MEMORY.1 = phi %struct.Memory* [ %157, %block_.L_400646 ], [ %MEMORY.3, %block_4008a4 ]
  %269 = load i64, i64* %RBP.i, align 8
  %270 = add i64 %269, -72
  %271 = add i64 %268, 4
  store i64 %271, i64* %3, align 8
  %272 = inttoptr i64 %270 to i32*
  %273 = load i32, i32* %272, align 4
  %274 = add i32 %273, -30
  %275 = icmp ult i32 %273, 30
  %276 = zext i1 %275 to i8
  store i8 %276, i8* %14, align 1
  %277 = and i32 %274, 255
  %278 = tail call i32 @llvm.ctpop.i32(i32 %277)
  %279 = trunc i32 %278 to i8
  %280 = and i8 %279, 1
  %281 = xor i8 %280, 1
  store i8 %281, i8* %21, align 1
  %282 = xor i32 %273, 16
  %283 = xor i32 %282, %274
  %284 = lshr i32 %283, 4
  %285 = trunc i32 %284 to i8
  %286 = and i8 %285, 1
  store i8 %286, i8* %26, align 1
  %287 = icmp eq i32 %274, 0
  %288 = zext i1 %287 to i8
  store i8 %288, i8* %29, align 1
  %289 = lshr i32 %274, 31
  %290 = trunc i32 %289 to i8
  store i8 %290, i8* %32, align 1
  %291 = lshr i32 %273, 31
  %292 = xor i32 %289, %291
  %293 = add nuw nsw i32 %292, %291
  %294 = icmp eq i32 %293, 2
  %295 = zext i1 %294 to i8
  store i8 %295, i8* %38, align 1
  %296 = icmp ne i8 %290, 0
  %297 = xor i1 %296, %294
  %.v55 = select i1 %297, i64 10, i64 108
  %298 = add i64 %268, %.v55
  store i64 %298, i64* %3, align 8
  br i1 %297, label %block_400665, label %block_.L_4006c7

block_400665:                                     ; preds = %block_.L_40065b
  %299 = add i64 %269, -64
  %300 = add i64 %298, 7
  store i64 %300, i64* %3, align 8
  %301 = inttoptr i64 %299 to i32*
  store i32 0, i32* %301, align 4
  %.pre45 = load i64, i64* %3, align 8
  br label %block_.L_40066c

block_.L_40066c:                                  ; preds = %block_400678, %block_400665
  %302 = phi i64 [ %.pre45, %block_400665 ], [ %419, %block_400678 ]
  %MEMORY.2 = phi %struct.Memory* [ %MEMORY.1, %block_400665 ], [ %381, %block_400678 ]
  %303 = load i64, i64* %RBP.i, align 8
  %304 = add i64 %303, -64
  %305 = add i64 %302, 3
  store i64 %305, i64* %3, align 8
  %306 = inttoptr i64 %304 to i32*
  %307 = load i32, i32* %306, align 4
  %308 = zext i32 %307 to i64
  store i64 %308, i64* %RAX.i495, align 8
  %309 = add i64 %303, -12
  %310 = add i64 %302, 6
  store i64 %310, i64* %3, align 8
  %311 = inttoptr i64 %309 to i32*
  %312 = load i32, i32* %311, align 4
  %313 = sub i32 %307, %312
  %314 = icmp ult i32 %307, %312
  %315 = zext i1 %314 to i8
  store i8 %315, i8* %14, align 1
  %316 = and i32 %313, 255
  %317 = tail call i32 @llvm.ctpop.i32(i32 %316)
  %318 = trunc i32 %317 to i8
  %319 = and i8 %318, 1
  %320 = xor i8 %319, 1
  store i8 %320, i8* %21, align 1
  %321 = xor i32 %312, %307
  %322 = xor i32 %321, %313
  %323 = lshr i32 %322, 4
  %324 = trunc i32 %323 to i8
  %325 = and i8 %324, 1
  store i8 %325, i8* %26, align 1
  %326 = icmp eq i32 %313, 0
  %327 = zext i1 %326 to i8
  store i8 %327, i8* %29, align 1
  %328 = lshr i32 %313, 31
  %329 = trunc i32 %328 to i8
  store i8 %329, i8* %32, align 1
  %330 = lshr i32 %307, 31
  %331 = lshr i32 %312, 31
  %332 = xor i32 %331, %330
  %333 = xor i32 %328, %330
  %334 = add nuw nsw i32 %333, %332
  %335 = icmp eq i32 %334, 2
  %336 = zext i1 %335 to i8
  store i8 %336, i8* %38, align 1
  %337 = icmp ne i8 %329, 0
  %338 = xor i1 %337, %335
  %.v65 = select i1 %338, i64 12, i64 62
  %339 = add i64 %302, %.v65
  %340 = add i64 %339, 10
  store i64 %340, i64* %3, align 8
  br i1 %338, label %block_400678, label %block_.L_4006aa

block_400678:                                     ; preds = %block_.L_40066c
  store i64 ptrtoint (%G__0x40096b_type* @G__0x40096b to i64), i64* %RDI.i471, align 8
  %341 = add i64 %303, -32
  %342 = add i64 %339, 14
  store i64 %342, i64* %3, align 8
  %343 = inttoptr i64 %341 to i64*
  %344 = load i64, i64* %343, align 8
  store i64 %344, i64* %RAX.i495, align 8
  %345 = add i64 %339, 18
  store i64 %345, i64* %3, align 8
  %346 = load i32, i32* %306, align 4
  %347 = sext i32 %346 to i64
  store i64 %347, i64* %RCX.i484, align 8
  %348 = shl nsw i64 %347, 2
  %349 = add i64 %348, %344
  %350 = add i64 %339, 21
  store i64 %350, i64* %3, align 8
  %351 = inttoptr i64 %349 to i32*
  %352 = load i32, i32* %351, align 4
  %353 = add i32 %352, 1
  %354 = zext i32 %353 to i64
  store i64 %354, i64* %RDX.i391, align 8
  %355 = icmp eq i32 %352, -1
  %356 = icmp eq i32 %353, 0
  %357 = or i1 %355, %356
  %358 = zext i1 %357 to i8
  store i8 %358, i8* %14, align 1
  %359 = and i32 %353, 255
  %360 = tail call i32 @llvm.ctpop.i32(i32 %359)
  %361 = trunc i32 %360 to i8
  %362 = and i8 %361, 1
  %363 = xor i8 %362, 1
  store i8 %363, i8* %21, align 1
  %364 = xor i32 %353, %352
  %365 = lshr i32 %364, 4
  %366 = trunc i32 %365 to i8
  %367 = and i8 %366, 1
  store i8 %367, i8* %26, align 1
  %368 = zext i1 %356 to i8
  store i8 %368, i8* %29, align 1
  %369 = lshr i32 %353, 31
  %370 = trunc i32 %369 to i8
  store i8 %370, i8* %32, align 1
  %371 = lshr i32 %352, 31
  %372 = xor i32 %369, %371
  %373 = add nuw nsw i32 %372, %369
  %374 = icmp eq i32 %373, 2
  %375 = zext i1 %374 to i8
  store i8 %375, i8* %38, align 1
  store i64 %354, i64* %RSI.i493, align 8
  store i8 0, i8* %AL.i382, align 1
  %376 = add i64 %339, -552
  %377 = add i64 %339, 33
  %378 = load i64, i64* %6, align 8
  %379 = add i64 %378, -8
  %380 = inttoptr i64 %379 to i64*
  store i64 %377, i64* %380, align 8
  store i64 %379, i64* %6, align 8
  store i64 %376, i64* %3, align 8
  %381 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %MEMORY.2)
  %382 = load i64, i64* %RBP.i, align 8
  %383 = add i64 %382, -92
  %384 = load i32, i32* %EAX.i492, align 4
  %385 = load i64, i64* %3, align 8
  %386 = add i64 %385, 3
  store i64 %386, i64* %3, align 8
  %387 = inttoptr i64 %383 to i32*
  store i32 %384, i32* %387, align 4
  %388 = load i64, i64* %RBP.i, align 8
  %389 = add i64 %388, -64
  %390 = load i64, i64* %3, align 8
  %391 = add i64 %390, 3
  store i64 %391, i64* %3, align 8
  %392 = inttoptr i64 %389 to i32*
  %393 = load i32, i32* %392, align 4
  %394 = add i32 %393, 1
  %395 = zext i32 %394 to i64
  store i64 %395, i64* %RAX.i495, align 8
  %396 = icmp eq i32 %393, -1
  %397 = icmp eq i32 %394, 0
  %398 = or i1 %396, %397
  %399 = zext i1 %398 to i8
  store i8 %399, i8* %14, align 1
  %400 = and i32 %394, 255
  %401 = tail call i32 @llvm.ctpop.i32(i32 %400)
  %402 = trunc i32 %401 to i8
  %403 = and i8 %402, 1
  %404 = xor i8 %403, 1
  store i8 %404, i8* %21, align 1
  %405 = xor i32 %394, %393
  %406 = lshr i32 %405, 4
  %407 = trunc i32 %406 to i8
  %408 = and i8 %407, 1
  store i8 %408, i8* %26, align 1
  %409 = zext i1 %397 to i8
  store i8 %409, i8* %29, align 1
  %410 = lshr i32 %394, 31
  %411 = trunc i32 %410 to i8
  store i8 %411, i8* %32, align 1
  %412 = lshr i32 %393, 31
  %413 = xor i32 %410, %412
  %414 = add nuw nsw i32 %413, %410
  %415 = icmp eq i32 %414, 2
  %416 = zext i1 %415 to i8
  store i8 %416, i8* %38, align 1
  %417 = add i64 %390, 9
  store i64 %417, i64* %3, align 8
  store i32 %394, i32* %392, align 4
  %418 = load i64, i64* %3, align 8
  %419 = add i64 %418, -57
  store i64 %419, i64* %3, align 8
  br label %block_.L_40066c

block_.L_4006aa:                                  ; preds = %block_.L_40066c
  store i64 ptrtoint (%G__0x400969_type* @G__0x400969 to i64), i64* %RDI.i471, align 8
  store i8 0, i8* %AL.i382, align 1
  %420 = add i64 %339, -602
  %421 = add i64 %339, 17
  %422 = load i64, i64* %6, align 8
  %423 = add i64 %422, -8
  %424 = inttoptr i64 %423 to i64*
  store i64 %421, i64* %424, align 8
  store i64 %423, i64* %6, align 8
  store i64 %420, i64* %3, align 8
  %425 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %MEMORY.2)
  %426 = load i64, i64* %RBP.i, align 8
  %427 = add i64 %426, -72
  %428 = load i64, i64* %3, align 8
  %429 = add i64 %428, 3
  store i64 %429, i64* %3, align 8
  %430 = inttoptr i64 %427 to i32*
  %431 = load i32, i32* %430, align 4
  %432 = add i32 %431, 1
  %433 = zext i32 %432 to i64
  store i64 %433, i64* %RCX.i484, align 8
  %434 = icmp eq i32 %431, -1
  %435 = icmp eq i32 %432, 0
  %436 = or i1 %434, %435
  %437 = zext i1 %436 to i8
  store i8 %437, i8* %14, align 1
  %438 = and i32 %432, 255
  %439 = tail call i32 @llvm.ctpop.i32(i32 %438)
  %440 = trunc i32 %439 to i8
  %441 = and i8 %440, 1
  %442 = xor i8 %441, 1
  store i8 %442, i8* %21, align 1
  %443 = xor i32 %432, %431
  %444 = lshr i32 %443, 4
  %445 = trunc i32 %444 to i8
  %446 = and i8 %445, 1
  store i8 %446, i8* %26, align 1
  %447 = zext i1 %435 to i8
  store i8 %447, i8* %29, align 1
  %448 = lshr i32 %432, 31
  %449 = trunc i32 %448 to i8
  store i8 %449, i8* %32, align 1
  %450 = lshr i32 %431, 31
  %451 = xor i32 %448, %450
  %452 = add nuw nsw i32 %451, %448
  %453 = icmp eq i32 %452, 2
  %454 = zext i1 %453 to i8
  store i8 %454, i8* %38, align 1
  %455 = add i64 %428, 9
  store i64 %455, i64* %3, align 8
  store i32 %432, i32* %430, align 4
  %456 = load i64, i64* %RBP.i, align 8
  %457 = add i64 %456, -96
  %458 = load i32, i32* %EAX.i492, align 4
  %459 = load i64, i64* %3, align 8
  %460 = add i64 %459, 3
  store i64 %460, i64* %3, align 8
  %461 = inttoptr i64 %457 to i32*
  store i32 %458, i32* %461, align 4
  %.pre46 = load i64, i64* %3, align 8
  br label %block_.L_4006c7

block_.L_4006c7:                                  ; preds = %block_.L_40065b, %block_.L_4006aa
  %462 = phi i64 [ %298, %block_.L_40065b ], [ %.pre46, %block_.L_4006aa ]
  %MEMORY.3 = phi %struct.Memory* [ %MEMORY.1, %block_.L_40065b ], [ %425, %block_.L_4006aa ]
  %463 = add i64 %462, 5
  br label %block_.L_4006cc

block_.L_4006cc:                                  ; preds = %block_4006d6, %block_.L_4006c7
  %storemerge14 = phi i64 [ %463, %block_.L_4006c7 ], [ %559, %block_4006d6 ]
  %464 = load i64, i64* %RBP.i, align 8
  %465 = add i64 %464, -60
  %466 = add i64 %storemerge14, 4
  store i64 %466, i64* %3, align 8
  %467 = inttoptr i64 %465 to i32*
  %468 = load i32, i32* %467, align 4
  %469 = add i32 %468, -1
  %470 = icmp eq i32 %468, 0
  %471 = zext i1 %470 to i8
  store i8 %471, i8* %14, align 1
  %472 = and i32 %469, 255
  %473 = tail call i32 @llvm.ctpop.i32(i32 %472)
  %474 = trunc i32 %473 to i8
  %475 = and i8 %474, 1
  %476 = xor i8 %475, 1
  store i8 %476, i8* %21, align 1
  %477 = xor i32 %469, %468
  %478 = lshr i32 %477, 4
  %479 = trunc i32 %478 to i8
  %480 = and i8 %479, 1
  store i8 %480, i8* %26, align 1
  %481 = icmp eq i32 %469, 0
  %482 = zext i1 %481 to i8
  store i8 %482, i8* %29, align 1
  %483 = lshr i32 %469, 31
  %484 = trunc i32 %483 to i8
  store i8 %484, i8* %32, align 1
  %485 = lshr i32 %468, 31
  %486 = xor i32 %483, %485
  %487 = add nuw nsw i32 %486, %485
  %488 = icmp eq i32 %487, 2
  %489 = zext i1 %488 to i8
  store i8 %489, i8* %38, align 1
  %.v56 = select i1 %481, i64 43, i64 10
  %490 = add i64 %storemerge14, %.v56
  store i64 %490, i64* %3, align 8
  br i1 %481, label %block_.L_4006f7, label %block_4006d6

block_4006d6:                                     ; preds = %block_.L_4006cc
  %491 = add i64 %490, 3
  store i64 %491, i64* %3, align 8
  %492 = load i32, i32* %467, align 4
  %493 = zext i32 %492 to i64
  store i64 %493, i64* %RAX.i495, align 8
  %494 = add i64 %464, -40
  %495 = add i64 %490, 7
  store i64 %495, i64* %3, align 8
  %496 = inttoptr i64 %494 to i64*
  %497 = load i64, i64* %496, align 8
  store i64 %497, i64* %RCX.i484, align 8
  %498 = add i64 %490, 10
  store i64 %498, i64* %3, align 8
  %499 = load i32, i32* %467, align 4
  %500 = add i32 %499, -1
  %501 = zext i32 %500 to i64
  store i64 %501, i64* %RDX.i391, align 8
  %502 = icmp eq i32 %499, 0
  %503 = zext i1 %502 to i8
  store i8 %503, i8* %14, align 1
  %504 = and i32 %500, 255
  %505 = tail call i32 @llvm.ctpop.i32(i32 %504)
  %506 = trunc i32 %505 to i8
  %507 = and i8 %506, 1
  %508 = xor i8 %507, 1
  store i8 %508, i8* %21, align 1
  %509 = xor i32 %500, %499
  %510 = lshr i32 %509, 4
  %511 = trunc i32 %510 to i8
  %512 = and i8 %511, 1
  store i8 %512, i8* %26, align 1
  %513 = icmp eq i32 %500, 0
  %514 = zext i1 %513 to i8
  store i8 %514, i8* %29, align 1
  %515 = lshr i32 %500, 31
  %516 = trunc i32 %515 to i8
  store i8 %516, i8* %32, align 1
  %517 = lshr i32 %499, 31
  %518 = xor i32 %515, %517
  %519 = add nuw nsw i32 %518, %517
  %520 = icmp eq i32 %519, 2
  %521 = zext i1 %520 to i8
  store i8 %521, i8* %38, align 1
  %522 = sext i32 %500 to i64
  store i64 %522, i64* %RSI.i493, align 8
  %523 = shl nsw i64 %522, 2
  %524 = add i64 %497, %523
  %525 = add i64 %490, 19
  store i64 %525, i64* %3, align 8
  %526 = inttoptr i64 %524 to i32*
  store i32 %492, i32* %526, align 4
  %527 = load i64, i64* %RBP.i, align 8
  %528 = add i64 %527, -60
  %529 = load i64, i64* %3, align 8
  %530 = add i64 %529, 3
  store i64 %530, i64* %3, align 8
  %531 = inttoptr i64 %528 to i32*
  %532 = load i32, i32* %531, align 4
  %533 = add i32 %532, -1
  %534 = zext i32 %533 to i64
  store i64 %534, i64* %RAX.i495, align 8
  %535 = icmp ne i32 %532, 0
  %536 = zext i1 %535 to i8
  store i8 %536, i8* %14, align 1
  %537 = and i32 %533, 255
  %538 = tail call i32 @llvm.ctpop.i32(i32 %537)
  %539 = trunc i32 %538 to i8
  %540 = and i8 %539, 1
  %541 = xor i8 %540, 1
  store i8 %541, i8* %21, align 1
  %542 = xor i32 %532, 16
  %543 = xor i32 %542, %533
  %544 = lshr i32 %543, 4
  %545 = trunc i32 %544 to i8
  %546 = and i8 %545, 1
  store i8 %546, i8* %26, align 1
  %547 = icmp eq i32 %533, 0
  %548 = zext i1 %547 to i8
  store i8 %548, i8* %29, align 1
  %549 = lshr i32 %533, 31
  %550 = trunc i32 %549 to i8
  store i8 %550, i8* %32, align 1
  %551 = lshr i32 %532, 31
  %552 = xor i32 %549, %551
  %553 = xor i32 %549, 1
  %554 = add nuw nsw i32 %552, %553
  %555 = icmp eq i32 %554, 2
  %556 = zext i1 %555 to i8
  store i8 %556, i8* %38, align 1
  %557 = add i64 %529, 9
  store i64 %557, i64* %3, align 8
  store i32 %533, i32* %531, align 4
  %558 = load i64, i64* %3, align 8
  %559 = add i64 %558, -38
  %560 = add i64 %558, 5
  store i64 %560, i64* %3, align 8
  br label %block_.L_4006cc

block_.L_4006f7:                                  ; preds = %block_.L_4006cc
  %561 = add i64 %464, -32
  %562 = add i64 %490, 4
  store i64 %562, i64* %3, align 8
  %563 = inttoptr i64 %561 to i64*
  %564 = load i64, i64* %563, align 8
  store i64 %564, i64* %RAX.i495, align 8
  %565 = add i64 %490, 7
  store i64 %565, i64* %3, align 8
  %566 = inttoptr i64 %564 to i32*
  %567 = load i32, i32* %566, align 4
  store i8 0, i8* %14, align 1
  %568 = and i32 %567, 255
  %569 = tail call i32 @llvm.ctpop.i32(i32 %568)
  %570 = trunc i32 %569 to i8
  %571 = and i8 %570, 1
  %572 = xor i8 %571, 1
  store i8 %572, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %573 = icmp eq i32 %567, 0
  %574 = zext i1 %573 to i8
  store i8 %574, i8* %29, align 1
  %575 = lshr i32 %567, 31
  %576 = trunc i32 %575 to i8
  store i8 %576, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v57 = select i1 %573, i64 289, i64 13
  %577 = add i64 %490, %.v57
  store i64 %577, i64* %3, align 8
  br i1 %573, label %block_.L_400818, label %block_400704

block_400704:                                     ; preds = %block_.L_4006f7
  %578 = add i64 %577, 4
  store i64 %578, i64* %3, align 8
  %579 = load i64, i64* %563, align 8
  store i64 %579, i64* %RAX.i495, align 8
  %580 = add i64 %464, -76
  %581 = add i64 %577, 8
  store i64 %581, i64* %3, align 8
  %582 = inttoptr i64 %580 to i32*
  %583 = load i32, i32* %582, align 4
  %584 = sext i32 %583 to i64
  store i64 %584, i64* %RCX.i484, align 8
  %585 = shl nsw i64 %584, 2
  %586 = add i64 %585, %579
  %587 = add i64 %577, 11
  store i64 %587, i64* %3, align 8
  %588 = inttoptr i64 %586 to i32*
  %589 = load i32, i32* %588, align 4
  %590 = zext i32 %589 to i64
  store i64 %590, i64* %RDX.i391, align 8
  %591 = add i64 %577, 14
  store i64 %591, i64* %3, align 8
  %592 = load i32, i32* %582, align 4
  %593 = sub i32 %589, %592
  %594 = icmp ult i32 %589, %592
  %595 = zext i1 %594 to i8
  store i8 %595, i8* %14, align 1
  %596 = and i32 %593, 255
  %597 = tail call i32 @llvm.ctpop.i32(i32 %596)
  %598 = trunc i32 %597 to i8
  %599 = and i8 %598, 1
  %600 = xor i8 %599, 1
  store i8 %600, i8* %21, align 1
  %601 = xor i32 %592, %589
  %602 = xor i32 %601, %593
  %603 = lshr i32 %602, 4
  %604 = trunc i32 %603 to i8
  %605 = and i8 %604, 1
  store i8 %605, i8* %26, align 1
  %606 = icmp eq i32 %593, 0
  %607 = zext i1 %606 to i8
  store i8 %607, i8* %29, align 1
  %608 = lshr i32 %593, 31
  %609 = trunc i32 %608 to i8
  store i8 %609, i8* %32, align 1
  %610 = lshr i32 %589, 31
  %611 = lshr i32 %592, 31
  %612 = xor i32 %611, %610
  %613 = xor i32 %608, %610
  %614 = add nuw nsw i32 %613, %612
  %615 = icmp eq i32 %614, 2
  %616 = zext i1 %615 to i8
  store i8 %616, i8* %38, align 1
  %.v58 = select i1 %606, i64 276, i64 20
  %617 = add i64 %577, %.v58
  store i64 %617, i64* %3, align 8
  br i1 %606, label %block_.L_400818, label %block_400718

block_400718:                                     ; preds = %block_400704
  %618 = add i64 %464, -48
  %619 = add i64 %617, 8
  store i64 %619, i64* %3, align 8
  %620 = inttoptr i64 %618 to i64*
  store i64 0, i64* %620, align 8
  %621 = load i64, i64* %RBP.i, align 8
  %622 = add i64 %621, -64
  %623 = load i64, i64* %3, align 8
  %624 = add i64 %623, 7
  store i64 %624, i64* %3, align 8
  %625 = inttoptr i64 %622 to i32*
  store i32 1, i32* %625, align 4
  %.pre47 = load i64, i64* %3, align 8
  br label %block_.L_400727

block_.L_400727:                                  ; preds = %block_400733, %block_400718
  %626 = phi i64 [ %719, %block_400733 ], [ %.pre47, %block_400718 ]
  %627 = load i64, i64* %RBP.i, align 8
  %628 = add i64 %627, -64
  %629 = add i64 %626, 3
  store i64 %629, i64* %3, align 8
  %630 = inttoptr i64 %628 to i32*
  %631 = load i32, i32* %630, align 4
  %632 = zext i32 %631 to i64
  store i64 %632, i64* %RAX.i495, align 8
  %633 = add i64 %627, -12
  %634 = add i64 %626, 6
  store i64 %634, i64* %3, align 8
  %635 = inttoptr i64 %633 to i32*
  %636 = load i32, i32* %635, align 4
  %637 = sub i32 %631, %636
  %638 = icmp ult i32 %631, %636
  %639 = zext i1 %638 to i8
  store i8 %639, i8* %14, align 1
  %640 = and i32 %637, 255
  %641 = tail call i32 @llvm.ctpop.i32(i32 %640)
  %642 = trunc i32 %641 to i8
  %643 = and i8 %642, 1
  %644 = xor i8 %643, 1
  store i8 %644, i8* %21, align 1
  %645 = xor i32 %636, %631
  %646 = xor i32 %645, %637
  %647 = lshr i32 %646, 4
  %648 = trunc i32 %647 to i8
  %649 = and i8 %648, 1
  store i8 %649, i8* %26, align 1
  %650 = icmp eq i32 %637, 0
  %651 = zext i1 %650 to i8
  store i8 %651, i8* %29, align 1
  %652 = lshr i32 %637, 31
  %653 = trunc i32 %652 to i8
  store i8 %653, i8* %32, align 1
  %654 = lshr i32 %631, 31
  %655 = lshr i32 %636, 31
  %656 = xor i32 %655, %654
  %657 = xor i32 %652, %654
  %658 = add nuw nsw i32 %657, %656
  %659 = icmp eq i32 %658, 2
  %660 = zext i1 %659 to i8
  store i8 %660, i8* %38, align 1
  %661 = icmp ne i8 %653, 0
  %662 = xor i1 %661, %659
  %.v = select i1 %662, i64 12, i64 48
  %663 = add i64 %626, %.v
  %664 = add i64 %627, -32
  %665 = add i64 %663, 4
  store i64 %665, i64* %3, align 8
  %666 = inttoptr i64 %664 to i64*
  %667 = load i64, i64* %666, align 8
  store i64 %667, i64* %RAX.i495, align 8
  br i1 %662, label %block_400733, label %block_.L_400757

block_400733:                                     ; preds = %block_.L_400727
  %668 = add i64 %663, 8
  store i64 %668, i64* %3, align 8
  %669 = load i32, i32* %630, align 4
  %670 = sext i32 %669 to i64
  store i64 %670, i64* %RCX.i484, align 8
  %671 = shl nsw i64 %670, 2
  %672 = add i64 %671, %667
  %673 = add i64 %663, 11
  store i64 %673, i64* %3, align 8
  %674 = inttoptr i64 %672 to i32*
  %675 = load i32, i32* %674, align 4
  %676 = zext i32 %675 to i64
  store i64 %676, i64* %RDX.i391, align 8
  %677 = add i64 %627, -24
  %678 = add i64 %663, 15
  store i64 %678, i64* %3, align 8
  %679 = inttoptr i64 %677 to i64*
  %680 = load i64, i64* %679, align 8
  store i64 %680, i64* %RAX.i495, align 8
  %681 = add i64 %663, 19
  store i64 %681, i64* %3, align 8
  %682 = load i32, i32* %630, align 4
  %683 = sext i32 %682 to i64
  store i64 %683, i64* %RCX.i484, align 8
  %684 = shl nsw i64 %683, 2
  %685 = add i64 %684, %680
  %686 = add i64 %663, 22
  store i64 %686, i64* %3, align 8
  %687 = inttoptr i64 %685 to i32*
  store i32 %675, i32* %687, align 4
  %688 = load i64, i64* %RBP.i, align 8
  %689 = add i64 %688, -64
  %690 = load i64, i64* %3, align 8
  %691 = add i64 %690, 3
  store i64 %691, i64* %3, align 8
  %692 = inttoptr i64 %689 to i32*
  %693 = load i32, i32* %692, align 4
  %694 = add i32 %693, 1
  %695 = zext i32 %694 to i64
  store i64 %695, i64* %RAX.i495, align 8
  %696 = icmp eq i32 %693, -1
  %697 = icmp eq i32 %694, 0
  %698 = or i1 %696, %697
  %699 = zext i1 %698 to i8
  store i8 %699, i8* %14, align 1
  %700 = and i32 %694, 255
  %701 = tail call i32 @llvm.ctpop.i32(i32 %700)
  %702 = trunc i32 %701 to i8
  %703 = and i8 %702, 1
  %704 = xor i8 %703, 1
  store i8 %704, i8* %21, align 1
  %705 = xor i32 %694, %693
  %706 = lshr i32 %705, 4
  %707 = trunc i32 %706 to i8
  %708 = and i8 %707, 1
  store i8 %708, i8* %26, align 1
  %709 = zext i1 %697 to i8
  store i8 %709, i8* %29, align 1
  %710 = lshr i32 %694, 31
  %711 = trunc i32 %710 to i8
  store i8 %711, i8* %32, align 1
  %712 = lshr i32 %693, 31
  %713 = xor i32 %710, %712
  %714 = add nuw nsw i32 %713, %710
  %715 = icmp eq i32 %714, 2
  %716 = zext i1 %715 to i8
  store i8 %716, i8* %38, align 1
  %717 = add i64 %690, 9
  store i64 %717, i64* %3, align 8
  store i32 %694, i32* %692, align 4
  %718 = load i64, i64* %3, align 8
  %719 = add i64 %718, -43
  store i64 %719, i64* %3, align 8
  br label %block_.L_400727

block_.L_400757:                                  ; preds = %block_.L_400727
  %720 = add i64 %663, 6
  store i64 %720, i64* %3, align 8
  %721 = inttoptr i64 %667 to i32*
  %722 = load i32, i32* %721, align 4
  %723 = zext i32 %722 to i64
  store i64 %723, i64* %RCX.i484, align 8
  %724 = add i64 %627, -68
  %725 = add i64 %663, 9
  store i64 %725, i64* %3, align 8
  %726 = inttoptr i64 %724 to i32*
  store i32 %722, i32* %726, align 4
  %.pre48 = load i64, i64* %RBP.i, align 8
  %.pre49 = load i64, i64* %3, align 8
  br label %block_.L_400760

block_.L_400760:                                  ; preds = %block_.L_4007c5, %block_.L_400757
  %727 = phi i64 [ %1019, %block_.L_4007c5 ], [ %.pre49, %block_.L_400757 ]
  %728 = phi i64 [ %1004, %block_.L_4007c5 ], [ %.pre48, %block_.L_400757 ]
  %729 = add i64 %728, -64
  %730 = add i64 %727, 7
  store i64 %730, i64* %3, align 8
  %731 = inttoptr i64 %729 to i32*
  store i32 1, i32* %731, align 4
  %732 = load i64, i64* %RBP.i, align 8
  %733 = add i64 %732, -68
  %734 = load i64, i64* %3, align 8
  %735 = add i64 %734, 3
  store i64 %735, i64* %3, align 8
  %736 = inttoptr i64 %733 to i32*
  %737 = load i32, i32* %736, align 4
  %738 = add i32 %737, -1
  %739 = zext i32 %738 to i64
  store i64 %739, i64* %RAX.i495, align 8
  %740 = icmp eq i32 %737, 0
  %741 = zext i1 %740 to i8
  store i8 %741, i8* %14, align 1
  %742 = and i32 %738, 255
  %743 = tail call i32 @llvm.ctpop.i32(i32 %742)
  %744 = trunc i32 %743 to i8
  %745 = and i8 %744, 1
  %746 = xor i8 %745, 1
  store i8 %746, i8* %21, align 1
  %747 = xor i32 %738, %737
  %748 = lshr i32 %747, 4
  %749 = trunc i32 %748 to i8
  %750 = and i8 %749, 1
  store i8 %750, i8* %26, align 1
  %751 = icmp eq i32 %738, 0
  %752 = zext i1 %751 to i8
  store i8 %752, i8* %29, align 1
  %753 = lshr i32 %738, 31
  %754 = trunc i32 %753 to i8
  store i8 %754, i8* %32, align 1
  %755 = lshr i32 %737, 31
  %756 = xor i32 %753, %755
  %757 = add nuw nsw i32 %756, %755
  %758 = icmp eq i32 %757, 2
  %759 = zext i1 %758 to i8
  store i8 %759, i8* %38, align 1
  %760 = add i64 %732, -80
  %761 = add i64 %734, 9
  store i64 %761, i64* %3, align 8
  %762 = inttoptr i64 %760 to i32*
  store i32 %738, i32* %762, align 4
  %.pre50 = load i64, i64* %3, align 8
  br label %block_.L_400770

block_.L_400770:                                  ; preds = %block_40077c, %block_.L_400760
  %763 = phi i64 [ %927, %block_40077c ], [ %.pre50, %block_.L_400760 ]
  %764 = load i64, i64* %RBP.i, align 8
  %765 = add i64 %764, -64
  %766 = add i64 %763, 3
  store i64 %766, i64* %3, align 8
  %767 = inttoptr i64 %765 to i32*
  %768 = load i32, i32* %767, align 4
  %769 = zext i32 %768 to i64
  store i64 %769, i64* %RAX.i495, align 8
  %770 = add i64 %764, -80
  %771 = add i64 %763, 6
  store i64 %771, i64* %3, align 8
  %772 = inttoptr i64 %770 to i32*
  %773 = load i32, i32* %772, align 4
  %774 = sub i32 %768, %773
  %775 = icmp ult i32 %768, %773
  %776 = zext i1 %775 to i8
  store i8 %776, i8* %14, align 1
  %777 = and i32 %774, 255
  %778 = tail call i32 @llvm.ctpop.i32(i32 %777)
  %779 = trunc i32 %778 to i8
  %780 = and i8 %779, 1
  %781 = xor i8 %780, 1
  store i8 %781, i8* %21, align 1
  %782 = xor i32 %773, %768
  %783 = xor i32 %782, %774
  %784 = lshr i32 %783, 4
  %785 = trunc i32 %784 to i8
  %786 = and i8 %785, 1
  store i8 %786, i8* %26, align 1
  %787 = icmp eq i32 %774, 0
  %788 = zext i1 %787 to i8
  store i8 %788, i8* %29, align 1
  %789 = lshr i32 %774, 31
  %790 = trunc i32 %789 to i8
  store i8 %790, i8* %32, align 1
  %791 = lshr i32 %768, 31
  %792 = lshr i32 %773, 31
  %793 = xor i32 %792, %791
  %794 = xor i32 %789, %791
  %795 = add nuw nsw i32 %794, %793
  %796 = icmp eq i32 %795, 2
  %797 = zext i1 %796 to i8
  store i8 %797, i8* %38, align 1
  %798 = icmp ne i8 %790, 0
  %799 = xor i1 %798, %796
  %.v59 = select i1 %799, i64 12, i64 85
  %800 = add i64 %763, %.v59
  store i64 %800, i64* %3, align 8
  br i1 %799, label %block_40077c, label %block_.L_4007c5

block_40077c:                                     ; preds = %block_.L_400770
  %801 = add i64 %764, -24
  %802 = add i64 %800, 4
  store i64 %802, i64* %3, align 8
  %803 = inttoptr i64 %801 to i64*
  %804 = load i64, i64* %803, align 8
  store i64 %804, i64* %RAX.i495, align 8
  %805 = add i64 %800, 8
  store i64 %805, i64* %3, align 8
  %806 = load i32, i32* %767, align 4
  %807 = sext i32 %806 to i64
  store i64 %807, i64* %RCX.i484, align 8
  %808 = shl nsw i64 %807, 2
  %809 = add i64 %808, %804
  %810 = add i64 %800, 11
  store i64 %810, i64* %3, align 8
  %811 = inttoptr i64 %809 to i32*
  %812 = load i32, i32* %811, align 4
  %813 = zext i32 %812 to i64
  store i64 %813, i64* %RDX.i391, align 8
  %814 = add i64 %764, -84
  %815 = add i64 %800, 14
  store i64 %815, i64* %3, align 8
  %816 = inttoptr i64 %814 to i32*
  store i32 %812, i32* %816, align 4
  %817 = load i64, i64* %RBP.i, align 8
  %818 = add i64 %817, -24
  %819 = load i64, i64* %3, align 8
  %820 = add i64 %819, 4
  store i64 %820, i64* %3, align 8
  %821 = inttoptr i64 %818 to i64*
  %822 = load i64, i64* %821, align 8
  store i64 %822, i64* %RAX.i495, align 8
  %823 = add i64 %817, -80
  %824 = add i64 %819, 8
  store i64 %824, i64* %3, align 8
  %825 = inttoptr i64 %823 to i32*
  %826 = load i32, i32* %825, align 4
  %827 = sext i32 %826 to i64
  store i64 %827, i64* %RCX.i484, align 8
  %828 = shl nsw i64 %827, 2
  %829 = add i64 %828, %822
  %830 = add i64 %819, 11
  store i64 %830, i64* %3, align 8
  %831 = inttoptr i64 %829 to i32*
  %832 = load i32, i32* %831, align 4
  %833 = zext i32 %832 to i64
  store i64 %833, i64* %RDX.i391, align 8
  %834 = add i64 %819, 15
  store i64 %834, i64* %3, align 8
  %835 = load i64, i64* %821, align 8
  store i64 %835, i64* %RAX.i495, align 8
  %836 = add i64 %817, -64
  %837 = add i64 %819, 19
  store i64 %837, i64* %3, align 8
  %838 = inttoptr i64 %836 to i32*
  %839 = load i32, i32* %838, align 4
  %840 = sext i32 %839 to i64
  store i64 %840, i64* %RCX.i484, align 8
  %841 = shl nsw i64 %840, 2
  %842 = add i64 %841, %835
  %843 = add i64 %819, 22
  store i64 %843, i64* %3, align 8
  %844 = inttoptr i64 %842 to i32*
  store i32 %832, i32* %844, align 4
  %845 = load i64, i64* %RBP.i, align 8
  %846 = add i64 %845, -84
  %847 = load i64, i64* %3, align 8
  %848 = add i64 %847, 3
  store i64 %848, i64* %3, align 8
  %849 = inttoptr i64 %846 to i32*
  %850 = load i32, i32* %849, align 4
  %851 = zext i32 %850 to i64
  store i64 %851, i64* %RDX.i391, align 8
  %852 = add i64 %845, -24
  %853 = add i64 %847, 7
  store i64 %853, i64* %3, align 8
  %854 = inttoptr i64 %852 to i64*
  %855 = load i64, i64* %854, align 8
  store i64 %855, i64* %RAX.i495, align 8
  %856 = add i64 %845, -80
  %857 = add i64 %847, 11
  store i64 %857, i64* %3, align 8
  %858 = inttoptr i64 %856 to i32*
  %859 = load i32, i32* %858, align 4
  %860 = sext i32 %859 to i64
  store i64 %860, i64* %RCX.i484, align 8
  %861 = shl nsw i64 %860, 2
  %862 = add i64 %861, %855
  %863 = add i64 %847, 14
  store i64 %863, i64* %3, align 8
  %864 = inttoptr i64 %862 to i32*
  store i32 %850, i32* %864, align 4
  %865 = load i64, i64* %RBP.i, align 8
  %866 = add i64 %865, -64
  %867 = load i64, i64* %3, align 8
  %868 = add i64 %867, 3
  store i64 %868, i64* %3, align 8
  %869 = inttoptr i64 %866 to i32*
  %870 = load i32, i32* %869, align 4
  %871 = add i32 %870, 1
  %872 = zext i32 %871 to i64
  store i64 %872, i64* %RAX.i495, align 8
  %873 = icmp eq i32 %870, -1
  %874 = icmp eq i32 %871, 0
  %875 = or i1 %873, %874
  %876 = zext i1 %875 to i8
  store i8 %876, i8* %14, align 1
  %877 = and i32 %871, 255
  %878 = tail call i32 @llvm.ctpop.i32(i32 %877)
  %879 = trunc i32 %878 to i8
  %880 = and i8 %879, 1
  %881 = xor i8 %880, 1
  store i8 %881, i8* %21, align 1
  %882 = xor i32 %871, %870
  %883 = lshr i32 %882, 4
  %884 = trunc i32 %883 to i8
  %885 = and i8 %884, 1
  store i8 %885, i8* %26, align 1
  %886 = zext i1 %874 to i8
  store i8 %886, i8* %29, align 1
  %887 = lshr i32 %871, 31
  %888 = trunc i32 %887 to i8
  store i8 %888, i8* %32, align 1
  %889 = lshr i32 %870, 31
  %890 = xor i32 %887, %889
  %891 = add nuw nsw i32 %890, %887
  %892 = icmp eq i32 %891, 2
  %893 = zext i1 %892 to i8
  store i8 %893, i8* %38, align 1
  %894 = add i64 %867, 9
  store i64 %894, i64* %3, align 8
  store i32 %871, i32* %869, align 4
  %895 = load i64, i64* %RBP.i, align 8
  %896 = add i64 %895, -80
  %897 = load i64, i64* %3, align 8
  %898 = add i64 %897, 3
  store i64 %898, i64* %3, align 8
  %899 = inttoptr i64 %896 to i32*
  %900 = load i32, i32* %899, align 4
  %901 = add i32 %900, -1
  %902 = zext i32 %901 to i64
  store i64 %902, i64* %RAX.i495, align 8
  %903 = icmp ne i32 %900, 0
  %904 = zext i1 %903 to i8
  store i8 %904, i8* %14, align 1
  %905 = and i32 %901, 255
  %906 = tail call i32 @llvm.ctpop.i32(i32 %905)
  %907 = trunc i32 %906 to i8
  %908 = and i8 %907, 1
  %909 = xor i8 %908, 1
  store i8 %909, i8* %21, align 1
  %910 = xor i32 %900, 16
  %911 = xor i32 %910, %901
  %912 = lshr i32 %911, 4
  %913 = trunc i32 %912 to i8
  %914 = and i8 %913, 1
  store i8 %914, i8* %26, align 1
  %915 = icmp eq i32 %901, 0
  %916 = zext i1 %915 to i8
  store i8 %916, i8* %29, align 1
  %917 = lshr i32 %901, 31
  %918 = trunc i32 %917 to i8
  store i8 %918, i8* %32, align 1
  %919 = lshr i32 %900, 31
  %920 = xor i32 %917, %919
  %921 = xor i32 %917, 1
  %922 = add nuw nsw i32 %920, %921
  %923 = icmp eq i32 %922, 2
  %924 = zext i1 %923 to i8
  store i8 %924, i8* %38, align 1
  %925 = add i64 %897, 9
  store i64 %925, i64* %3, align 8
  store i32 %901, i32* %899, align 4
  %926 = load i64, i64* %3, align 8
  %927 = add i64 %926, -80
  store i64 %927, i64* %3, align 8
  br label %block_.L_400770

block_.L_4007c5:                                  ; preds = %block_.L_400770
  %928 = add i64 %764, -48
  %929 = add i64 %800, 4
  store i64 %929, i64* %3, align 8
  %930 = inttoptr i64 %928 to i64*
  %931 = load i64, i64* %930, align 8
  %932 = add i64 %931, 1
  store i64 %932, i64* %RAX.i495, align 8
  %933 = icmp eq i64 %931, -1
  %934 = icmp eq i64 %932, 0
  %935 = or i1 %933, %934
  %936 = zext i1 %935 to i8
  store i8 %936, i8* %14, align 1
  %937 = trunc i64 %932 to i32
  %938 = and i32 %937, 255
  %939 = tail call i32 @llvm.ctpop.i32(i32 %938)
  %940 = trunc i32 %939 to i8
  %941 = and i8 %940, 1
  %942 = xor i8 %941, 1
  store i8 %942, i8* %21, align 1
  %943 = xor i64 %932, %931
  %944 = lshr i64 %943, 4
  %945 = trunc i64 %944 to i8
  %946 = and i8 %945, 1
  store i8 %946, i8* %26, align 1
  %947 = zext i1 %934 to i8
  store i8 %947, i8* %29, align 1
  %948 = lshr i64 %932, 63
  %949 = trunc i64 %948 to i8
  store i8 %949, i8* %32, align 1
  %950 = lshr i64 %931, 63
  %951 = xor i64 %948, %950
  %952 = add nuw nsw i64 %951, %948
  %953 = icmp eq i64 %952, 2
  %954 = zext i1 %953 to i8
  store i8 %954, i8* %38, align 1
  %955 = add i64 %800, 12
  store i64 %955, i64* %3, align 8
  store i64 %932, i64* %930, align 8
  %956 = load i64, i64* %RBP.i, align 8
  %957 = add i64 %956, -24
  %958 = load i64, i64* %3, align 8
  %959 = add i64 %958, 4
  store i64 %959, i64* %3, align 8
  %960 = inttoptr i64 %957 to i64*
  %961 = load i64, i64* %960, align 8
  store i64 %961, i64* %RAX.i495, align 8
  %962 = add i64 %956, -68
  %963 = add i64 %958, 8
  store i64 %963, i64* %3, align 8
  %964 = inttoptr i64 %962 to i32*
  %965 = load i32, i32* %964, align 4
  %966 = sext i32 %965 to i64
  store i64 %966, i64* %RCX.i484, align 8
  %967 = shl nsw i64 %966, 2
  %968 = add i64 %967, %961
  %969 = add i64 %958, 11
  store i64 %969, i64* %3, align 8
  %970 = inttoptr i64 %968 to i32*
  %971 = load i32, i32* %970, align 4
  %972 = zext i32 %971 to i64
  store i64 %972, i64* %RDX.i391, align 8
  %973 = add i64 %956, -80
  %974 = add i64 %958, 14
  store i64 %974, i64* %3, align 8
  %975 = inttoptr i64 %973 to i32*
  store i32 %971, i32* %975, align 4
  %976 = load i64, i64* %RBP.i, align 8
  %977 = add i64 %976, -68
  %978 = load i64, i64* %3, align 8
  %979 = add i64 %978, 3
  store i64 %979, i64* %3, align 8
  %980 = inttoptr i64 %977 to i32*
  %981 = load i32, i32* %980, align 4
  %982 = zext i32 %981 to i64
  store i64 %982, i64* %RDX.i391, align 8
  %983 = add i64 %976, -24
  %984 = add i64 %978, 7
  store i64 %984, i64* %3, align 8
  %985 = inttoptr i64 %983 to i64*
  %986 = load i64, i64* %985, align 8
  store i64 %986, i64* %RAX.i495, align 8
  %987 = add i64 %978, 11
  store i64 %987, i64* %3, align 8
  %988 = load i32, i32* %980, align 4
  %989 = sext i32 %988 to i64
  store i64 %989, i64* %RCX.i484, align 8
  %990 = shl nsw i64 %989, 2
  %991 = add i64 %990, %986
  %992 = add i64 %978, 14
  store i64 %992, i64* %3, align 8
  %993 = inttoptr i64 %991 to i32*
  store i32 %981, i32* %993, align 4
  %994 = load i64, i64* %RBP.i, align 8
  %995 = add i64 %994, -80
  %996 = load i64, i64* %3, align 8
  %997 = add i64 %996, 3
  store i64 %997, i64* %3, align 8
  %998 = inttoptr i64 %995 to i32*
  %999 = load i32, i32* %998, align 4
  %1000 = zext i32 %999 to i64
  store i64 %1000, i64* %RDX.i391, align 8
  %1001 = add i64 %994, -68
  %1002 = add i64 %996, 6
  store i64 %1002, i64* %3, align 8
  %1003 = inttoptr i64 %1001 to i32*
  store i32 %999, i32* %1003, align 4
  %1004 = load i64, i64* %RBP.i, align 8
  %1005 = add i64 %1004, -68
  %1006 = load i64, i64* %3, align 8
  %1007 = add i64 %1006, 4
  store i64 %1007, i64* %3, align 8
  %1008 = inttoptr i64 %1005 to i32*
  %1009 = load i32, i32* %1008, align 4
  store i8 0, i8* %14, align 1
  %1010 = and i32 %1009, 255
  %1011 = tail call i32 @llvm.ctpop.i32(i32 %1010)
  %1012 = trunc i32 %1011 to i8
  %1013 = and i8 %1012, 1
  %1014 = xor i8 %1013, 1
  store i8 %1014, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1015 = icmp eq i32 %1009, 0
  %1016 = zext i1 %1015 to i8
  store i8 %1016, i8* %29, align 1
  %1017 = lshr i32 %1009, 31
  %1018 = trunc i32 %1017 to i8
  store i8 %1018, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v60 = select i1 %1015, i64 10, i64 -147
  %1019 = add i64 %1006, %.v60
  store i64 %1019, i64* %3, align 8
  br i1 %1015, label %block_4007fd, label %block_.L_400760

block_4007fd:                                     ; preds = %block_.L_4007c5
  %1020 = add i64 %1004, -56
  %1021 = add i64 %1019, 4
  store i64 %1021, i64* %3, align 8
  %1022 = inttoptr i64 %1020 to i64*
  %1023 = load i64, i64* %1022, align 8
  store i64 %1023, i64* %RAX.i495, align 8
  %1024 = add i64 %1004, -48
  %1025 = add i64 %1019, 8
  store i64 %1025, i64* %3, align 8
  %1026 = inttoptr i64 %1024 to i64*
  %1027 = load i64, i64* %1026, align 8
  %1028 = sub i64 %1023, %1027
  %1029 = icmp ult i64 %1023, %1027
  %1030 = zext i1 %1029 to i8
  store i8 %1030, i8* %14, align 1
  %1031 = trunc i64 %1028 to i32
  %1032 = and i32 %1031, 255
  %1033 = tail call i32 @llvm.ctpop.i32(i32 %1032)
  %1034 = trunc i32 %1033 to i8
  %1035 = and i8 %1034, 1
  %1036 = xor i8 %1035, 1
  store i8 %1036, i8* %21, align 1
  %1037 = xor i64 %1027, %1023
  %1038 = xor i64 %1037, %1028
  %1039 = lshr i64 %1038, 4
  %1040 = trunc i64 %1039 to i8
  %1041 = and i8 %1040, 1
  store i8 %1041, i8* %26, align 1
  %1042 = icmp eq i64 %1028, 0
  %1043 = zext i1 %1042 to i8
  store i8 %1043, i8* %29, align 1
  %1044 = lshr i64 %1028, 63
  %1045 = trunc i64 %1044 to i8
  store i8 %1045, i8* %32, align 1
  %1046 = lshr i64 %1023, 63
  %1047 = lshr i64 %1027, 63
  %1048 = xor i64 %1047, %1046
  %1049 = xor i64 %1044, %1046
  %1050 = add nuw nsw i64 %1049, %1048
  %1051 = icmp eq i64 %1050, 2
  %1052 = zext i1 %1051 to i8
  store i8 %1052, i8* %38, align 1
  %1053 = icmp ne i8 %1045, 0
  %1054 = xor i1 %1053, %1051
  %.v61 = select i1 %1054, i64 14, i64 22
  %1055 = add i64 %1019, %.v61
  store i64 %1055, i64* %3, align 8
  br i1 %1054, label %block_40080b, label %block_.L_400813

block_40080b:                                     ; preds = %block_4007fd
  %1056 = add i64 %1055, 4
  store i64 %1056, i64* %3, align 8
  %1057 = load i64, i64* %1026, align 8
  store i64 %1057, i64* %RAX.i495, align 8
  %1058 = add i64 %1055, 8
  store i64 %1058, i64* %3, align 8
  store i64 %1057, i64* %1022, align 8
  %.pre51 = load i64, i64* %3, align 8
  br label %block_.L_400813

block_.L_400813:                                  ; preds = %block_4007fd, %block_40080b
  %1059 = phi i64 [ %1055, %block_4007fd ], [ %.pre51, %block_40080b ]
  %1060 = add i64 %1059, 5
  store i64 %1060, i64* %3, align 8
  br label %block_.L_400818

block_.L_400818:                                  ; preds = %block_.L_400813, %block_400704, %block_.L_4006f7
  %1061 = phi i64 [ %1060, %block_.L_400813 ], [ %617, %block_400704 ], [ %577, %block_.L_4006f7 ]
  %1062 = add i64 %1061, 5
  br label %block_.L_40081d

block_.L_40081d:                                  ; preds = %block_.L_4008a9, %block_.L_400818
  %storemerge15 = phi i64 [ %1062, %block_.L_400818 ], [ %1310, %block_.L_4008a9 ]
  %1063 = load i64, i64* %RBP.i, align 8
  %1064 = add i64 %1063, -60
  %1065 = add i64 %storemerge15, 3
  store i64 %1065, i64* %3, align 8
  %1066 = inttoptr i64 %1064 to i32*
  %1067 = load i32, i32* %1066, align 4
  %1068 = zext i32 %1067 to i64
  store i64 %1068, i64* %RAX.i495, align 8
  %1069 = add i64 %1063, -12
  %1070 = add i64 %storemerge15, 6
  store i64 %1070, i64* %3, align 8
  %1071 = inttoptr i64 %1069 to i32*
  %1072 = load i32, i32* %1071, align 4
  %1073 = sub i32 %1067, %1072
  %1074 = icmp ult i32 %1067, %1072
  %1075 = zext i1 %1074 to i8
  store i8 %1075, i8* %14, align 1
  %1076 = and i32 %1073, 255
  %1077 = tail call i32 @llvm.ctpop.i32(i32 %1076)
  %1078 = trunc i32 %1077 to i8
  %1079 = and i8 %1078, 1
  %1080 = xor i8 %1079, 1
  store i8 %1080, i8* %21, align 1
  %1081 = xor i32 %1072, %1067
  %1082 = xor i32 %1081, %1073
  %1083 = lshr i32 %1082, 4
  %1084 = trunc i32 %1083 to i8
  %1085 = and i8 %1084, 1
  store i8 %1085, i8* %26, align 1
  %1086 = icmp eq i32 %1073, 0
  %1087 = zext i1 %1086 to i8
  store i8 %1087, i8* %29, align 1
  %1088 = lshr i32 %1073, 31
  %1089 = trunc i32 %1088 to i8
  store i8 %1089, i8* %32, align 1
  %1090 = lshr i32 %1067, 31
  %1091 = lshr i32 %1072, 31
  %1092 = xor i32 %1091, %1090
  %1093 = xor i32 %1088, %1090
  %1094 = add nuw nsw i32 %1093, %1092
  %1095 = icmp eq i32 %1094, 2
  %1096 = zext i1 %1095 to i8
  store i8 %1096, i8* %38, align 1
  %.v62 = select i1 %1086, i64 12, i64 25
  %1097 = add i64 %storemerge15, %.v62
  store i64 %1097, i64* %3, align 8
  br i1 %1086, label %block_400829, label %block_.L_400836

block_400829:                                     ; preds = %block_.L_40081d
  %1098 = add i64 %1063, -56
  %1099 = add i64 %1097, 4
  store i64 %1099, i64* %3, align 8
  %1100 = inttoptr i64 %1098 to i64*
  %1101 = load i64, i64* %1100, align 8
  store i64 %1101, i64* %RAX.i495, align 8
  %1102 = add i64 %1063, -8
  %1103 = add i64 %1097, 8
  store i64 %1103, i64* %3, align 8
  %1104 = inttoptr i64 %1102 to i64*
  store i64 %1101, i64* %1104, align 8
  %1105 = load i64, i64* %3, align 8
  %1106 = add i64 %1105, 139
  %1107 = add i64 %1105, 5
  store i64 %1107, i64* %3, align 8
  br label %block_.L_4008bc

block_.L_400836:                                  ; preds = %block_.L_40081d
  %1108 = add i64 %1063, -32
  %1109 = add i64 %1097, 4
  store i64 %1109, i64* %3, align 8
  %1110 = inttoptr i64 %1108 to i64*
  %1111 = load i64, i64* %1110, align 8
  store i64 %1111, i64* %RAX.i495, align 8
  %1112 = add i64 %1097, 6
  store i64 %1112, i64* %3, align 8
  %1113 = inttoptr i64 %1111 to i32*
  %1114 = load i32, i32* %1113, align 4
  %1115 = zext i32 %1114 to i64
  store i64 %1115, i64* %RCX.i484, align 8
  %1116 = add i64 %1063, -88
  %1117 = add i64 %1097, 9
  store i64 %1117, i64* %3, align 8
  %1118 = inttoptr i64 %1116 to i32*
  store i32 %1114, i32* %1118, align 4
  %1119 = load i64, i64* %RBP.i, align 8
  %1120 = add i64 %1119, -64
  %1121 = load i64, i64* %3, align 8
  %1122 = add i64 %1121, 7
  store i64 %1122, i64* %3, align 8
  %1123 = inttoptr i64 %1120 to i32*
  store i32 0, i32* %1123, align 4
  %.pre52 = load i64, i64* %3, align 8
  br label %block_.L_400846

block_.L_400846:                                  ; preds = %block_400852, %block_.L_400836
  %1124 = phi i64 [ %1229, %block_400852 ], [ %.pre52, %block_.L_400836 ]
  %1125 = load i64, i64* %RBP.i, align 8
  %1126 = add i64 %1125, -64
  %1127 = add i64 %1124, 3
  store i64 %1127, i64* %3, align 8
  %1128 = inttoptr i64 %1126 to i32*
  %1129 = load i32, i32* %1128, align 4
  %1130 = zext i32 %1129 to i64
  store i64 %1130, i64* %RAX.i495, align 8
  %1131 = add i64 %1125, -60
  %1132 = add i64 %1124, 6
  store i64 %1132, i64* %3, align 8
  %1133 = inttoptr i64 %1131 to i32*
  %1134 = load i32, i32* %1133, align 4
  %1135 = sub i32 %1129, %1134
  %1136 = icmp ult i32 %1129, %1134
  %1137 = zext i1 %1136 to i8
  store i8 %1137, i8* %14, align 1
  %1138 = and i32 %1135, 255
  %1139 = tail call i32 @llvm.ctpop.i32(i32 %1138)
  %1140 = trunc i32 %1139 to i8
  %1141 = and i8 %1140, 1
  %1142 = xor i8 %1141, 1
  store i8 %1142, i8* %21, align 1
  %1143 = xor i32 %1134, %1129
  %1144 = xor i32 %1143, %1135
  %1145 = lshr i32 %1144, 4
  %1146 = trunc i32 %1145 to i8
  %1147 = and i8 %1146, 1
  store i8 %1147, i8* %26, align 1
  %1148 = icmp eq i32 %1135, 0
  %1149 = zext i1 %1148 to i8
  store i8 %1149, i8* %29, align 1
  %1150 = lshr i32 %1135, 31
  %1151 = trunc i32 %1150 to i8
  store i8 %1151, i8* %32, align 1
  %1152 = lshr i32 %1129, 31
  %1153 = lshr i32 %1134, 31
  %1154 = xor i32 %1153, %1152
  %1155 = xor i32 %1150, %1152
  %1156 = add nuw nsw i32 %1155, %1154
  %1157 = icmp eq i32 %1156, 2
  %1158 = zext i1 %1157 to i8
  store i8 %1158, i8* %38, align 1
  %1159 = icmp ne i8 %1151, 0
  %1160 = xor i1 %1159, %1157
  %.v63 = select i1 %1160, i64 12, i64 54
  %1161 = add i64 %1124, %.v63
  store i64 %1161, i64* %3, align 8
  br i1 %1160, label %block_400852, label %block_.L_40087c

block_400852:                                     ; preds = %block_.L_400846
  %1162 = add i64 %1161, 3
  store i64 %1162, i64* %3, align 8
  %1163 = load i32, i32* %1128, align 4
  %1164 = add i32 %1163, 1
  %1165 = zext i32 %1164 to i64
  store i64 %1165, i64* %RAX.i495, align 8
  %1166 = icmp eq i32 %1163, -1
  %1167 = icmp eq i32 %1164, 0
  %1168 = or i1 %1166, %1167
  %1169 = zext i1 %1168 to i8
  store i8 %1169, i8* %14, align 1
  %1170 = and i32 %1164, 255
  %1171 = tail call i32 @llvm.ctpop.i32(i32 %1170)
  %1172 = trunc i32 %1171 to i8
  %1173 = and i8 %1172, 1
  %1174 = xor i8 %1173, 1
  store i8 %1174, i8* %21, align 1
  %1175 = xor i32 %1164, %1163
  %1176 = lshr i32 %1175, 4
  %1177 = trunc i32 %1176 to i8
  %1178 = and i8 %1177, 1
  store i8 %1178, i8* %26, align 1
  %1179 = zext i1 %1167 to i8
  store i8 %1179, i8* %29, align 1
  %1180 = lshr i32 %1164, 31
  %1181 = trunc i32 %1180 to i8
  store i8 %1181, i8* %32, align 1
  %1182 = lshr i32 %1163, 31
  %1183 = xor i32 %1180, %1182
  %1184 = add nuw nsw i32 %1183, %1180
  %1185 = icmp eq i32 %1184, 2
  %1186 = zext i1 %1185 to i8
  store i8 %1186, i8* %38, align 1
  %1187 = add i64 %1125, -68
  %1188 = add i64 %1161, 9
  store i64 %1188, i64* %3, align 8
  %1189 = inttoptr i64 %1187 to i32*
  store i32 %1164, i32* %1189, align 4
  %1190 = load i64, i64* %RBP.i, align 8
  %1191 = add i64 %1190, -32
  %1192 = load i64, i64* %3, align 8
  %1193 = add i64 %1192, 4
  store i64 %1193, i64* %3, align 8
  %1194 = inttoptr i64 %1191 to i64*
  %1195 = load i64, i64* %1194, align 8
  store i64 %1195, i64* %RCX.i484, align 8
  %1196 = add i64 %1190, -68
  %1197 = add i64 %1192, 8
  store i64 %1197, i64* %3, align 8
  %1198 = inttoptr i64 %1196 to i32*
  %1199 = load i32, i32* %1198, align 4
  %1200 = sext i32 %1199 to i64
  store i64 %1200, i64* %RDX.i436, align 8
  %1201 = shl nsw i64 %1200, 2
  %1202 = add i64 %1201, %1195
  %1203 = add i64 %1192, 11
  store i64 %1203, i64* %3, align 8
  %1204 = inttoptr i64 %1202 to i32*
  %1205 = load i32, i32* %1204, align 4
  %1206 = zext i32 %1205 to i64
  store i64 %1206, i64* %RAX.i495, align 8
  %1207 = add i64 %1192, 15
  store i64 %1207, i64* %3, align 8
  %1208 = load i64, i64* %1194, align 8
  store i64 %1208, i64* %RCX.i484, align 8
  %1209 = add i64 %1190, -64
  %1210 = add i64 %1192, 19
  store i64 %1210, i64* %3, align 8
  %1211 = inttoptr i64 %1209 to i32*
  %1212 = load i32, i32* %1211, align 4
  %1213 = sext i32 %1212 to i64
  store i64 %1213, i64* %RDX.i436, align 8
  %1214 = shl nsw i64 %1213, 2
  %1215 = add i64 %1214, %1208
  %1216 = add i64 %1192, 22
  store i64 %1216, i64* %3, align 8
  %1217 = inttoptr i64 %1215 to i32*
  store i32 %1205, i32* %1217, align 4
  %1218 = load i64, i64* %RBP.i, align 8
  %1219 = add i64 %1218, -68
  %1220 = load i64, i64* %3, align 8
  %1221 = add i64 %1220, 3
  store i64 %1221, i64* %3, align 8
  %1222 = inttoptr i64 %1219 to i32*
  %1223 = load i32, i32* %1222, align 4
  %1224 = zext i32 %1223 to i64
  store i64 %1224, i64* %RAX.i495, align 8
  %1225 = add i64 %1218, -64
  %1226 = add i64 %1220, 6
  store i64 %1226, i64* %3, align 8
  %1227 = inttoptr i64 %1225 to i32*
  store i32 %1223, i32* %1227, align 4
  %1228 = load i64, i64* %3, align 8
  %1229 = add i64 %1228, -49
  store i64 %1229, i64* %3, align 8
  br label %block_.L_400846

block_.L_40087c:                                  ; preds = %block_.L_400846
  %1230 = add i64 %1125, -88
  %1231 = add i64 %1161, 3
  store i64 %1231, i64* %3, align 8
  %1232 = inttoptr i64 %1230 to i32*
  %1233 = load i32, i32* %1232, align 4
  %1234 = zext i32 %1233 to i64
  store i64 %1234, i64* %RAX.i495, align 8
  %1235 = add i64 %1125, -32
  %1236 = add i64 %1161, 7
  store i64 %1236, i64* %3, align 8
  %1237 = inttoptr i64 %1235 to i64*
  %1238 = load i64, i64* %1237, align 8
  store i64 %1238, i64* %RCX.i484, align 8
  %1239 = add i64 %1161, 11
  store i64 %1239, i64* %3, align 8
  %1240 = load i32, i32* %1133, align 4
  %1241 = sext i32 %1240 to i64
  store i64 %1241, i64* %RDX.i436, align 8
  %1242 = shl nsw i64 %1241, 2
  %1243 = add i64 %1242, %1238
  %1244 = add i64 %1161, 14
  store i64 %1244, i64* %3, align 8
  %1245 = inttoptr i64 %1243 to i32*
  store i32 %1233, i32* %1245, align 4
  %1246 = load i64, i64* %RBP.i, align 8
  %1247 = add i64 %1246, -40
  %1248 = load i64, i64* %3, align 8
  %1249 = add i64 %1248, 4
  store i64 %1249, i64* %3, align 8
  %1250 = inttoptr i64 %1247 to i64*
  %1251 = load i64, i64* %1250, align 8
  store i64 %1251, i64* %RCX.i484, align 8
  %1252 = add i64 %1246, -60
  %1253 = add i64 %1248, 8
  store i64 %1253, i64* %3, align 8
  %1254 = inttoptr i64 %1252 to i32*
  %1255 = load i32, i32* %1254, align 4
  %1256 = sext i32 %1255 to i64
  store i64 %1256, i64* %RDX.i436, align 8
  %1257 = shl nsw i64 %1256, 2
  %1258 = add i64 %1257, %1251
  %1259 = add i64 %1248, 11
  store i64 %1259, i64* %3, align 8
  %1260 = inttoptr i64 %1258 to i32*
  %1261 = load i32, i32* %1260, align 4
  %1262 = add i32 %1261, -1
  %1263 = zext i32 %1262 to i64
  store i64 %1263, i64* %RAX.i495, align 8
  %1264 = add i64 %1248, 17
  store i64 %1264, i64* %3, align 8
  store i32 %1262, i32* %1260, align 4
  %1265 = load i32, i32* %EAX.i492, align 4
  %1266 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1267 = and i32 %1265, 255
  %1268 = tail call i32 @llvm.ctpop.i32(i32 %1267)
  %1269 = trunc i32 %1268 to i8
  %1270 = and i8 %1269, 1
  %1271 = xor i8 %1270, 1
  store i8 %1271, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1272 = icmp eq i32 %1265, 0
  %1273 = zext i1 %1272 to i8
  store i8 %1273, i8* %29, align 1
  %1274 = lshr i32 %1265, 31
  %1275 = trunc i32 %1274 to i8
  store i8 %1275, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %1276 = icmp ne i8 %1275, 0
  %1277 = or i1 %1272, %1276
  %.v64 = select i1 %1277, i64 14, i64 9
  %1278 = add i64 %1266, %.v64
  store i64 %1278, i64* %3, align 8
  br i1 %1277, label %block_.L_4008a9, label %block_4008a4

block_4008a4:                                     ; preds = %block_.L_40087c
  %1279 = add i64 %1278, -585
  store i64 %1279, i64* %3, align 8
  br label %block_.L_40065b

block_.L_4008a9:                                  ; preds = %block_.L_40087c
  %1280 = load i64, i64* %RBP.i, align 8
  %1281 = add i64 %1280, -60
  %1282 = add i64 %1278, 3
  store i64 %1282, i64* %3, align 8
  %1283 = inttoptr i64 %1281 to i32*
  %1284 = load i32, i32* %1283, align 4
  %1285 = add i32 %1284, 1
  %1286 = zext i32 %1285 to i64
  store i64 %1286, i64* %RAX.i495, align 8
  %1287 = icmp eq i32 %1284, -1
  %1288 = icmp eq i32 %1285, 0
  %1289 = or i1 %1287, %1288
  %1290 = zext i1 %1289 to i8
  store i8 %1290, i8* %14, align 1
  %1291 = and i32 %1285, 255
  %1292 = tail call i32 @llvm.ctpop.i32(i32 %1291)
  %1293 = trunc i32 %1292 to i8
  %1294 = and i8 %1293, 1
  %1295 = xor i8 %1294, 1
  store i8 %1295, i8* %21, align 1
  %1296 = xor i32 %1285, %1284
  %1297 = lshr i32 %1296, 4
  %1298 = trunc i32 %1297 to i8
  %1299 = and i8 %1298, 1
  store i8 %1299, i8* %26, align 1
  %1300 = zext i1 %1288 to i8
  store i8 %1300, i8* %29, align 1
  %1301 = lshr i32 %1285, 31
  %1302 = trunc i32 %1301 to i8
  store i8 %1302, i8* %32, align 1
  %1303 = lshr i32 %1284, 31
  %1304 = xor i32 %1301, %1303
  %1305 = add nuw nsw i32 %1304, %1301
  %1306 = icmp eq i32 %1305, 2
  %1307 = zext i1 %1306 to i8
  store i8 %1307, i8* %38, align 1
  %1308 = add i64 %1278, 9
  store i64 %1308, i64* %3, align 8
  store i32 %1285, i32* %1283, align 4
  %1309 = load i64, i64* %3, align 8
  %1310 = add i64 %1309, -149
  %1311 = add i64 %1309, 5
  store i64 %1311, i64* %3, align 8
  br label %block_.L_40081d

block_.L_4008bc:                                  ; preds = %block_400829, %block_4005ce
  %storemerge = phi i64 [ %109, %block_4005ce ], [ %1106, %block_400829 ]
  %MEMORY.12 = phi %struct.Memory* [ %2, %block_4005ce ], [ %MEMORY.3, %block_400829 ]
  %RAX.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %1312 = load i64, i64* %RBP.i, align 8
  %1313 = add i64 %1312, -8
  %1314 = add i64 %storemerge, 4
  store i64 %1314, i64* %3, align 8
  %1315 = inttoptr i64 %1313 to i64*
  %1316 = load i64, i64* %1315, align 8
  store i64 %1316, i64* %RAX.i, align 8
  %1317 = load i64, i64* %6, align 8
  %1318 = add i64 %1317, 96
  store i64 %1318, i64* %6, align 8
  %1319 = icmp ugt i64 %1317, -97
  %1320 = zext i1 %1319 to i8
  store i8 %1320, i8* %14, align 1
  %1321 = trunc i64 %1318 to i32
  %1322 = and i32 %1321, 255
  %1323 = tail call i32 @llvm.ctpop.i32(i32 %1322)
  %1324 = trunc i32 %1323 to i8
  %1325 = and i8 %1324, 1
  %1326 = xor i8 %1325, 1
  store i8 %1326, i8* %21, align 1
  %1327 = xor i64 %1318, %1317
  %1328 = lshr i64 %1327, 4
  %1329 = trunc i64 %1328 to i8
  %1330 = and i8 %1329, 1
  store i8 %1330, i8* %26, align 1
  %1331 = icmp eq i64 %1318, 0
  %1332 = zext i1 %1331 to i8
  store i8 %1332, i8* %29, align 1
  %1333 = lshr i64 %1318, 63
  %1334 = trunc i64 %1333 to i8
  store i8 %1334, i8* %32, align 1
  %1335 = lshr i64 %1317, 63
  %1336 = xor i64 %1333, %1335
  %1337 = add nuw nsw i64 %1336, %1333
  %1338 = icmp eq i64 %1337, 2
  %1339 = zext i1 %1338 to i8
  store i8 %1339, i8* %38, align 1
  %1340 = add i64 %storemerge, 9
  store i64 %1340, i64* %3, align 8
  %1341 = add i64 %1317, 104
  %1342 = inttoptr i64 %1318 to i64*
  %1343 = load i64, i64* %1342, align 8
  store i64 %1343, i64* %RBP.i, align 8
  store i64 %1341, i64* %6, align 8
  %1344 = add i64 %storemerge, 10
  store i64 %1344, i64* %3, align 8
  %1345 = inttoptr i64 %1341 to i64*
  %1346 = load i64, i64* %1345, align 8
  store i64 %1346, i64* %3, align 8
  %1347 = add i64 %1317, 112
  store i64 %1347, i64* %6, align 8
  ret %struct.Memory* %MEMORY.12
}

; Function Attrs: alwaysinline norecurse nounwind
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

; Function Attrs: alwaysinline norecurse nounwind
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

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @routine_subq__0x60___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -96
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 96
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__edi__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xc__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @routine_subl__0x1___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDI, align 8
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__edi__MINUS0x4c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -76
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @routine_cmpl__0x1__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jge_.L_4005db(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movq__0x0__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  store i64 0, i64* %7, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4008bc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__0x4___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0xc__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_callq_.calloc_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__0x4___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__ecx___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x40__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @routine_cmpl_MINUS0xc__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -12
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jge_.L_400646(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x40__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__eax____rcx__rdx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i32, i32* %EAX, align 4
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 3
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i32*
  store i32 %8, i32* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline nounwind
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -64
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40061e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x3c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -60
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movq__0x0__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  store i64 0, i64* %7, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @routine_cmpl__0x1e__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -30
  %10 = icmp ult i32 %8, 30
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jge_.L_4006c7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jge_.L_4006aa(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movq__0x40096b___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x40096b_type* @G__0x40096b to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x40__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl___rax__rcx_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline nounwind
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__edx___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_callq_.printf_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x5c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -92
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40066c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movq__0x400969___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x400969_type* @G__0x400969 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x48__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline nounwind
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -72
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x60__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -96
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4006cc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @routine_cmpl__0x1__MINUS0x3c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -60
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_je_.L_4006f7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x3c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -60
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x3c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -60
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @routine_subl__0x1___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDX, align 8
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movslq__edx___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__eax____rcx__rsi_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %RSI, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i32, i32* %EAX, align 4
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 3
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i32*
  store i32 %8, i32* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @routine_addl__0xffffffff___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @routine_cmpl__0x0____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = and i32 %7, 255
  %10 = tail call i32 @llvm.ctpop.i32(i32 %9)
  %11 = trunc i32 %10 to i8
  %12 = and i8 %11, 1
  %13 = xor i8 %12, 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %13, i8* %14, align 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %15, align 1
  %16 = icmp eq i32 %7, 0
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %17, i8* %18, align 1
  %19 = lshr i32 %7, 31
  %20 = trunc i32 %19 to i8
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %20, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %22, align 1
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_je_.L_400818(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -76
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @routine_cmpl_MINUS0x4c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -76
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movq__0x0__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  store i64 0, i64* %7, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__0x1__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jge_.L_400757(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: alwaysinline norecurse nounwind
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__edx____rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i32, i32* %EDX, align 4
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 3
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i32*
  store i32 %8, i32* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400727(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl___rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x44__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -68
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x44__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -68
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline nounwind
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -80
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @routine_cmpl_MINUS0x50__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -80
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jge_.L_4007c5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x54__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -84
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x50__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x54__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x50__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400770(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
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

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @routine_addq__0x1___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 1
  store i64 %6, i64* %RAX, align 8
  %7 = icmp eq i64 %3, -1
  %8 = icmp eq i64 %6, 0
  %9 = or i1 %7, %8
  %10 = zext i1 %9 to i8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %10, i8* %11, align 1
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = xor i64 %6, %3
  %20 = lshr i64 %19, 4
  %21 = trunc i64 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = zext i1 %8 to i8
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x44__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -68
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -80
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x44__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -68
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x50__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x44__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -68
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x44__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -68
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jne_.L_400760(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: alwaysinline norecurse nounwind
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

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @routine_cmpq_MINUS0x30__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -48
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i64*
  %9 = load i64, i64* %8, align 8
  %10 = sub i64 %3, %9
  %11 = icmp ult i64 %3, %9
  %12 = zext i1 %11 to i8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %12, i8* %13, align 1
  %14 = trunc i64 %10 to i32
  %15 = and i32 %14, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i64 %9, %3
  %22 = xor i64 %21, %10
  %23 = lshr i64 %22, 4
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i64 %10, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i64 %10, 63
  %31 = trunc i64 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i64 %3, 63
  %34 = lshr i64 %9, 63
  %35 = xor i64 %34, %33
  %36 = xor i64 %30, %33
  %37 = add nuw nsw i64 %36, %35
  %38 = icmp eq i64 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jge_.L_400813(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400818(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40081d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jne_.L_400836(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x58__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -88
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @routine_cmpl_MINUS0x3c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -60
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jge_.L_40087c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x44__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -68
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x44__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -68
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl___rcx__rdx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400846(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x58__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -60
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline nounwind
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jle_.L_4008a9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4008b7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40065b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @routine_addq__0x60___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 96
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -97
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

; Function Attrs: alwaysinline norecurse nounwind
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

; Function Attrs: alwaysinline norecurse nounwind
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
attributes #2 = { alwaysinline norecurse nounwind }
attributes #3 = { alwaysinline nounwind }
