; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x6cb8f8_type = type <{ [8 x i8] }>
%G_0x6cb900_type = type <{ [8 x i8] }>
%G_0x6cea08_type = type <{ [8 x i8] }>
%G_0x70fcf0_type = type <{ [8 x i8] }>
%G_0x722cb8_type = type <{ [8 x i8] }>
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
@G_0x6cb8f8 = local_unnamed_addr global %G_0x6cb8f8_type zeroinitializer
@G_0x6cb900 = local_unnamed_addr global %G_0x6cb900_type zeroinitializer
@G_0x6cea08 = local_unnamed_addr global %G_0x6cea08_type zeroinitializer
@G_0x70fcf0 = local_unnamed_addr global %G_0x70fcf0_type zeroinitializer
@G_0x722cb8 = local_unnamed_addr global %G_0x722cb8_type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: alwaysinline
define %struct.Memory* @SetRefAndMotionVectors(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %ESI.i2281 = bitcast %union.anon* %16 to i32*
  %17 = load i64, i64* %RBP.i, align 8
  %18 = add i64 %17, -8
  %19 = load i32, i32* %ESI.i2281, align 4
  %20 = load i64, i64* %3, align 8
  %21 = add i64 %20, 3
  store i64 %21, i64* %3, align 8
  %22 = inttoptr i64 %18 to i32*
  store i32 %19, i32* %22, align 4
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX.i2338 = bitcast %union.anon* %23 to i32*
  %24 = load i64, i64* %RBP.i, align 8
  %25 = add i64 %24, -12
  %26 = load i32, i32* %EDX.i2338, align 4
  %27 = load i64, i64* %3, align 8
  %28 = add i64 %27, 3
  store i64 %28, i64* %3, align 8
  %29 = inttoptr i64 %25 to i32*
  store i32 %26, i32* %29, align 4
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX.i2335 = bitcast %union.anon* %30 to i32*
  %31 = load i64, i64* %RBP.i, align 8
  %32 = add i64 %31, -16
  %33 = load i32, i32* %ECX.i2335, align 4
  %34 = load i64, i64* %3, align 8
  %35 = add i64 %34, 3
  store i64 %35, i64* %3, align 8
  %36 = inttoptr i64 %32 to i32*
  store i32 %33, i32* %36, align 4
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D.i = bitcast %union.anon* %37 to i32*
  %38 = load i64, i64* %RBP.i, align 8
  %39 = add i64 %38, -20
  %40 = load i32, i32* %R8D.i, align 4
  %41 = load i64, i64* %3, align 8
  %42 = add i64 %41, 4
  store i64 %42, i64* %3, align 8
  %43 = inttoptr i64 %39 to i32*
  store i32 %40, i32* %43, align 4
  %44 = load i64, i64* %RBP.i, align 8
  %45 = add i64 %44, -28
  %46 = load i64, i64* %3, align 8
  %47 = add i64 %46, 7
  store i64 %47, i64* %3, align 8
  %48 = inttoptr i64 %45 to i32*
  store i32 0, i32* %48, align 4
  %RAX.i2329 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %49 = load i64, i64* %3, align 8
  %50 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %50, i64* %RAX.i2329, align 8
  %51 = add i64 %50, 24
  %52 = add i64 %49, 12
  store i64 %52, i64* %3, align 8
  %53 = inttoptr i64 %51 to i32*
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %57 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %58 = icmp eq i32 %54, 1
  %59 = zext i1 %58 to i8
  %60 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %61 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %62 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %63 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9B.i2325 = bitcast %union.anon* %63 to i8*
  store i8 %59, i8* %R9B.i2325, align 1
  store i8 0, i8* %55, align 1
  %64 = zext i1 %58 to i32
  %65 = tail call i32 @llvm.ctpop.i32(i32 %64)
  %66 = trunc i32 %65 to i8
  %67 = xor i8 %66, 1
  store i8 %67, i8* %56, align 1
  %68 = xor i8 %59, 1
  store i8 %68, i8* %60, align 1
  store i8 0, i8* %61, align 1
  store i8 0, i8* %62, align 1
  store i8 0, i8* %57, align 1
  %RCX.i2321 = getelementptr inbounds %union.anon, %union.anon* %30, i64 0, i32 0
  %69 = zext i1 %58 to i64
  store i64 %69, i64* %RCX.i2321, align 8
  %70 = load i64, i64* %RBP.i, align 8
  %71 = add i64 %70, -32
  %72 = zext i1 %58 to i32
  %73 = add i64 %49, 27
  store i64 %73, i64* %3, align 8
  %74 = inttoptr i64 %71 to i32*
  store i32 %72, i32* %74, align 4
  %75 = load i64, i64* %RBP.i, align 8
  %76 = add i64 %75, -8
  %77 = load i64, i64* %3, align 8
  %78 = add i64 %77, 4
  store i64 %78, i64* %3, align 8
  %79 = inttoptr i64 %76 to i32*
  %80 = load i32, i32* %79, align 4
  %81 = add i32 %80, -1
  %82 = icmp eq i32 %80, 0
  %83 = zext i1 %82 to i8
  store i8 %83, i8* %55, align 1
  %84 = and i32 %81, 255
  %85 = tail call i32 @llvm.ctpop.i32(i32 %84)
  %86 = trunc i32 %85 to i8
  %87 = and i8 %86, 1
  %88 = xor i8 %87, 1
  store i8 %88, i8* %56, align 1
  %89 = xor i32 %81, %80
  %90 = lshr i32 %89, 4
  %91 = trunc i32 %90 to i8
  %92 = and i8 %91, 1
  store i8 %92, i8* %57, align 1
  %93 = icmp eq i32 %81, 0
  %94 = zext i1 %93 to i8
  store i8 %94, i8* %60, align 1
  %95 = lshr i32 %81, 31
  %96 = trunc i32 %95 to i8
  store i8 %96, i8* %61, align 1
  %97 = lshr i32 %80, 31
  %98 = xor i32 %95, %97
  %99 = add nuw nsw i32 %98, %97
  %100 = icmp eq i32 %99, 2
  %101 = zext i1 %100 to i8
  store i8 %101, i8* %62, align 1
  %.v66 = select i1 %93, i64 30, i64 10
  %102 = add i64 %77, %.v66
  store i64 %102, i64* %3, align 8
  br i1 %93, label %block_.L_48fb54, label %block_48fb40

block_48fb40:                                     ; preds = %entry
  %103 = add i64 %102, 4
  store i64 %103, i64* %3, align 8
  %104 = load i32, i32* %79, align 4
  %105 = add i32 %104, -2
  %106 = icmp ult i32 %104, 2
  %107 = zext i1 %106 to i8
  store i8 %107, i8* %55, align 1
  %108 = and i32 %105, 255
  %109 = tail call i32 @llvm.ctpop.i32(i32 %108)
  %110 = trunc i32 %109 to i8
  %111 = and i8 %110, 1
  %112 = xor i8 %111, 1
  store i8 %112, i8* %56, align 1
  %113 = xor i32 %105, %104
  %114 = lshr i32 %113, 4
  %115 = trunc i32 %114 to i8
  %116 = and i8 %115, 1
  store i8 %116, i8* %57, align 1
  %117 = icmp eq i32 %105, 0
  %118 = zext i1 %117 to i8
  store i8 %118, i8* %60, align 1
  %119 = lshr i32 %105, 31
  %120 = trunc i32 %119 to i8
  store i8 %120, i8* %61, align 1
  %121 = lshr i32 %104, 31
  %122 = xor i32 %119, %121
  %123 = add nuw nsw i32 %122, %121
  %124 = icmp eq i32 %123, 2
  %125 = zext i1 %124 to i8
  store i8 %125, i8* %62, align 1
  %.v67 = select i1 %117, i64 20, i64 10
  %126 = add i64 %102, %.v67
  store i64 %126, i64* %3, align 8
  br i1 %117, label %block_.L_48fb54, label %block_48fb4a

block_48fb4a:                                     ; preds = %block_48fb40
  %127 = add i64 %126, 4
  store i64 %127, i64* %3, align 8
  %128 = load i32, i32* %79, align 4
  %129 = add i32 %128, -3
  %130 = icmp ult i32 %128, 3
  %131 = zext i1 %130 to i8
  store i8 %131, i8* %55, align 1
  %132 = and i32 %129, 255
  %133 = tail call i32 @llvm.ctpop.i32(i32 %132)
  %134 = trunc i32 %133 to i8
  %135 = and i8 %134, 1
  %136 = xor i8 %135, 1
  store i8 %136, i8* %56, align 1
  %137 = xor i32 %129, %128
  %138 = lshr i32 %137, 4
  %139 = trunc i32 %138 to i8
  %140 = and i8 %139, 1
  store i8 %140, i8* %57, align 1
  %141 = icmp eq i32 %129, 0
  %142 = zext i1 %141 to i8
  store i8 %142, i8* %60, align 1
  %143 = lshr i32 %129, 31
  %144 = trunc i32 %143 to i8
  store i8 %144, i8* %61, align 1
  %145 = lshr i32 %128, 31
  %146 = xor i32 %143, %145
  %147 = add nuw nsw i32 %146, %145
  %148 = icmp eq i32 %147, 2
  %149 = zext i1 %148 to i8
  store i8 %149, i8* %62, align 1
  %.v68 = select i1 %141, i64 10, i64 21
  %150 = add i64 %126, %.v68
  store i64 %150, i64* %3, align 8
  br i1 %141, label %block_.L_48fb54, label %block_.L_48fb5f

block_.L_48fb54:                                  ; preds = %block_48fb4a, %block_48fb40, %entry
  %151 = phi i64 [ %150, %block_48fb4a ], [ %126, %block_48fb40 ], [ %102, %entry ]
  %152 = add i64 %151, 3
  store i64 %152, i64* %3, align 8
  %153 = load i32, i32* %79, align 4
  %154 = zext i32 %153 to i64
  store i64 %154, i64* %RAX.i2329, align 8
  %155 = add i64 %75, -84
  %156 = add i64 %151, 6
  store i64 %156, i64* %3, align 8
  %157 = inttoptr i64 %155 to i32*
  store i32 %153, i32* %157, align 4
  %158 = load i64, i64* %3, align 8
  %159 = add i64 %158, 18
  br label %block_.L_48fb6c

block_.L_48fb5f:                                  ; preds = %block_48fb4a
  store i64 4, i64* %RAX.i2329, align 8
  %160 = add i64 %75, -84
  %161 = add i64 %150, 8
  store i64 %161, i64* %3, align 8
  %162 = inttoptr i64 %160 to i32*
  store i32 4, i32* %162, align 4
  %163 = load i64, i64* %3, align 8
  %164 = add i64 %163, 5
  store i64 %164, i64* %3, align 8
  br label %block_.L_48fb6c

block_.L_48fb6c:                                  ; preds = %block_.L_48fb5f, %block_.L_48fb54
  %storemerge = phi i64 [ %159, %block_.L_48fb54 ], [ %164, %block_.L_48fb5f ]
  %165 = load i64, i64* %RBP.i, align 8
  %166 = add i64 %165, -84
  %167 = add i64 %storemerge, 3
  store i64 %167, i64* %3, align 8
  %168 = inttoptr i64 %166 to i32*
  %169 = load i32, i32* %168, align 4
  %170 = zext i32 %169 to i64
  store i64 %170, i64* %RAX.i2329, align 8
  store i64 2, i64* %RCX.i2321, align 8
  %171 = add i64 %165, -36
  %172 = add i64 %storemerge, 11
  store i64 %172, i64* %3, align 8
  %173 = inttoptr i64 %171 to i32*
  store i32 %169, i32* %173, align 4
  %174 = load i64, i64* %RBP.i, align 8
  %175 = add i64 %174, -4
  %176 = load i64, i64* %3, align 8
  %177 = add i64 %176, 3
  store i64 %177, i64* %3, align 8
  %178 = inttoptr i64 %175 to i32*
  %179 = load i32, i32* %178, align 4
  %180 = zext i32 %179 to i64
  store i64 %180, i64* %RAX.i2329, align 8
  %181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %182 = sext i32 %179 to i64
  %183 = lshr i64 %182, 32
  store i64 %183, i64* %181, align 8
  %184 = load i32, i32* %ECX.i2335, align 4
  %185 = add i64 %176, 6
  store i64 %185, i64* %3, align 8
  %186 = sext i32 %184 to i64
  %187 = shl nuw i64 %183, 32
  %188 = or i64 %187, %180
  %189 = sdiv i64 %188, %186
  %190 = shl i64 %189, 32
  %191 = ashr exact i64 %190, 32
  %192 = icmp eq i64 %189, %191
  br i1 %192, label %195, label %193

; <label>:193:                                    ; preds = %block_.L_48fb6c
  %194 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %185, %struct.Memory* %2)
  %.pre = load i64, i64* %RAX.i2329, align 8
  %.pre38 = load i64, i64* %3, align 8
  %.pre39 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__ecx.exit2279

; <label>:195:                                    ; preds = %block_.L_48fb6c
  %196 = srem i64 %188, %186
  %197 = and i64 %189, 4294967295
  store i64 %197, i64* %RAX.i2329, align 8
  %198 = getelementptr inbounds %union.anon, %union.anon* %23, i64 0, i32 0
  %199 = and i64 %196, 4294967295
  store i64 %199, i64* %198, align 8
  store i8 0, i8* %55, align 1
  store i8 0, i8* %56, align 1
  store i8 0, i8* %57, align 1
  store i8 0, i8* %60, align 1
  store i8 0, i8* %61, align 1
  store i8 0, i8* %62, align 1
  br label %routine_idivl__ecx.exit2279

routine_idivl__ecx.exit2279:                      ; preds = %195, %193
  %200 = phi i64 [ %.pre39, %193 ], [ %174, %195 ]
  %201 = phi i64 [ %.pre38, %193 ], [ %185, %195 ]
  %202 = phi i64 [ %.pre, %193 ], [ %197, %195 ]
  %203 = phi %struct.Memory* [ %194, %193 ], [ %2, %195 ]
  %204 = trunc i64 %202 to i32
  %205 = shl i32 %204, 1
  %206 = icmp slt i32 %204, 0
  %207 = icmp slt i32 %205, 0
  %208 = xor i1 %206, %207
  %209 = zext i32 %205 to i64
  store i64 %209, i64* %RAX.i2329, align 8
  %.lobit = lshr i32 %204, 31
  %210 = trunc i32 %.lobit to i8
  store i8 %210, i8* %55, align 1
  %211 = and i32 %205, 254
  %212 = tail call i32 @llvm.ctpop.i32(i32 %211)
  %213 = trunc i32 %212 to i8
  %214 = and i8 %213, 1
  %215 = xor i8 %214, 1
  store i8 %215, i8* %56, align 1
  store i8 0, i8* %57, align 1
  %216 = icmp eq i32 %205, 0
  %217 = zext i1 %216 to i8
  store i8 %217, i8* %60, align 1
  %218 = lshr i32 %204, 30
  %219 = trunc i32 %218 to i8
  %220 = and i8 %219, 1
  store i8 %220, i8* %61, align 1
  %221 = zext i1 %208 to i8
  store i8 %221, i8* %62, align 1
  %222 = add i64 %200, -40
  %223 = add i64 %201, 5
  store i64 %223, i64* %3, align 8
  %224 = inttoptr i64 %222 to i32*
  store i32 %205, i32* %224, align 4
  %225 = load i64, i64* %RBP.i, align 8
  %226 = add i64 %225, -4
  %227 = load i64, i64* %3, align 8
  %228 = add i64 %227, 3
  store i64 %228, i64* %3, align 8
  %229 = inttoptr i64 %226 to i32*
  %230 = load i32, i32* %229, align 4
  %231 = zext i32 %230 to i64
  store i64 %231, i64* %RAX.i2329, align 8
  %232 = sext i32 %230 to i64
  %233 = lshr i64 %232, 32
  store i64 %233, i64* %181, align 8
  %234 = load i32, i32* %ECX.i2335, align 4
  %235 = add i64 %227, 6
  store i64 %235, i64* %3, align 8
  %236 = sext i32 %234 to i64
  %237 = shl nuw i64 %233, 32
  %238 = or i64 %237, %231
  %239 = sdiv i64 %238, %236
  %240 = shl i64 %239, 32
  %241 = ashr exact i64 %240, 32
  %242 = icmp eq i64 %239, %241
  br i1 %242, label %245, label %243

; <label>:243:                                    ; preds = %routine_idivl__ecx.exit2279
  %244 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %235, %struct.Memory* %203)
  %RDX.i2263.phi.trans.insert = getelementptr inbounds %union.anon, %union.anon* %23, i64 0, i32 0
  %.pre40 = load i64, i64* %RDX.i2263.phi.trans.insert, align 8
  %.pre41 = load i64, i64* %3, align 8
  %.pre42 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__ecx.exit

; <label>:245:                                    ; preds = %routine_idivl__ecx.exit2279
  %246 = srem i64 %238, %236
  %247 = and i64 %239, 4294967295
  store i64 %247, i64* %RAX.i2329, align 8
  %248 = getelementptr inbounds %union.anon, %union.anon* %23, i64 0, i32 0
  %249 = and i64 %246, 4294967295
  store i64 %249, i64* %248, align 8
  store i8 0, i8* %55, align 1
  store i8 0, i8* %56, align 1
  store i8 0, i8* %57, align 1
  store i8 0, i8* %60, align 1
  store i8 0, i8* %61, align 1
  store i8 0, i8* %62, align 1
  br label %routine_idivl__ecx.exit

routine_idivl__ecx.exit:                          ; preds = %245, %243
  %RDX.i2263.pre-phi = phi i64* [ %248, %245 ], [ %RDX.i2263.phi.trans.insert, %243 ]
  %250 = phi i64 [ %225, %245 ], [ %.pre42, %243 ]
  %251 = phi i64 [ %235, %245 ], [ %.pre41, %243 ]
  %252 = phi i64 [ %249, %245 ], [ %.pre40, %243 ]
  %253 = phi %struct.Memory* [ %203, %245 ], [ %244, %243 ]
  %254 = trunc i64 %252 to i32
  %255 = shl i32 %254, 1
  %256 = icmp slt i32 %254, 0
  %257 = icmp slt i32 %255, 0
  %258 = xor i1 %256, %257
  %259 = zext i32 %255 to i64
  store i64 %259, i64* %RDX.i2263.pre-phi, align 8
  %.lobit26 = lshr i32 %254, 31
  %260 = trunc i32 %.lobit26 to i8
  store i8 %260, i8* %55, align 1
  %261 = and i32 %255, 254
  %262 = tail call i32 @llvm.ctpop.i32(i32 %261)
  %263 = trunc i32 %262 to i8
  %264 = and i8 %263, 1
  %265 = xor i8 %264, 1
  store i8 %265, i8* %56, align 1
  store i8 0, i8* %57, align 1
  %266 = icmp eq i32 %255, 0
  %267 = zext i1 %266 to i8
  store i8 %267, i8* %60, align 1
  %268 = lshr i32 %254, 30
  %269 = trunc i32 %268 to i8
  %270 = and i8 %269, 1
  store i8 %270, i8* %61, align 1
  %271 = zext i1 %258 to i8
  store i8 %271, i8* %62, align 1
  %272 = add i64 %250, -44
  %273 = add i64 %251, 5
  store i64 %273, i64* %3, align 8
  %274 = inttoptr i64 %272 to i32*
  store i32 %255, i32* %274, align 4
  %275 = load i64, i64* %RBP.i, align 8
  %276 = add i64 %275, -40
  %277 = load i64, i64* %3, align 8
  %278 = add i64 %277, 3
  store i64 %278, i64* %3, align 8
  %279 = inttoptr i64 %276 to i32*
  %280 = load i32, i32* %279, align 4
  %281 = zext i32 %280 to i64
  store i64 %281, i64* %RCX.i2321, align 8
  %RSI.i2255 = getelementptr inbounds %union.anon, %union.anon* %16, i64 0, i32 0
  %282 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %282, i64* %RSI.i2255, align 8
  %RDI.i2252 = getelementptr inbounds %union.anon, %union.anon* %11, i64 0, i32 0
  %283 = add i64 %275, -36
  %284 = add i64 %277, 15
  store i64 %284, i64* %3, align 8
  %285 = inttoptr i64 %283 to i32*
  %286 = load i32, i32* %285, align 4
  %287 = sext i32 %286 to i64
  store i64 %287, i64* %RDI.i2252, align 8
  %288 = shl nsw i64 %287, 3
  %289 = add nsw i64 %288, 148
  %290 = add i64 %289, %282
  %291 = add i64 %277, 22
  store i64 %291, i64* %3, align 8
  %292 = inttoptr i64 %290 to i32*
  %293 = load i32, i32* %292, align 4
  %294 = add i32 %293, %280
  %295 = zext i32 %294 to i64
  store i64 %295, i64* %RCX.i2321, align 8
  %296 = icmp ult i32 %294, %280
  %297 = icmp ult i32 %294, %293
  %298 = or i1 %296, %297
  %299 = zext i1 %298 to i8
  store i8 %299, i8* %55, align 1
  %300 = and i32 %294, 255
  %301 = tail call i32 @llvm.ctpop.i32(i32 %300)
  %302 = trunc i32 %301 to i8
  %303 = and i8 %302, 1
  %304 = xor i8 %303, 1
  store i8 %304, i8* %56, align 1
  %305 = xor i32 %293, %280
  %306 = xor i32 %305, %294
  %307 = lshr i32 %306, 4
  %308 = trunc i32 %307 to i8
  %309 = and i8 %308, 1
  store i8 %309, i8* %57, align 1
  %310 = icmp eq i32 %294, 0
  %311 = zext i1 %310 to i8
  store i8 %311, i8* %60, align 1
  %312 = lshr i32 %294, 31
  %313 = trunc i32 %312 to i8
  store i8 %313, i8* %61, align 1
  %314 = lshr i32 %280, 31
  %315 = lshr i32 %293, 31
  %316 = xor i32 %312, %314
  %317 = xor i32 %312, %315
  %318 = add nuw nsw i32 %316, %317
  %319 = icmp eq i32 %318, 2
  %320 = zext i1 %319 to i8
  store i8 %320, i8* %62, align 1
  %321 = add i64 %275, -48
  %322 = add i64 %277, 25
  store i64 %322, i64* %3, align 8
  %323 = inttoptr i64 %321 to i32*
  store i32 %294, i32* %323, align 4
  %324 = load i64, i64* %RBP.i, align 8
  %325 = add i64 %324, -44
  %326 = load i64, i64* %3, align 8
  %327 = add i64 %326, 3
  store i64 %327, i64* %3, align 8
  %328 = inttoptr i64 %325 to i32*
  %329 = load i32, i32* %328, align 4
  %330 = zext i32 %329 to i64
  store i64 %330, i64* %RCX.i2321, align 8
  %331 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %331, i64* %RSI.i2255, align 8
  %332 = add i64 %324, -36
  %333 = add i64 %326, 15
  store i64 %333, i64* %3, align 8
  %334 = inttoptr i64 %332 to i32*
  %335 = load i32, i32* %334, align 4
  %336 = sext i32 %335 to i64
  store i64 %336, i64* %RDI.i2252, align 8
  %337 = shl nsw i64 %336, 3
  %338 = add nsw i64 %337, 144
  %339 = add i64 %338, %331
  %340 = add i64 %326, 22
  store i64 %340, i64* %3, align 8
  %341 = inttoptr i64 %339 to i32*
  %342 = load i32, i32* %341, align 4
  %343 = add i32 %342, %329
  %344 = zext i32 %343 to i64
  store i64 %344, i64* %RCX.i2321, align 8
  %345 = icmp ult i32 %343, %329
  %346 = icmp ult i32 %343, %342
  %347 = or i1 %345, %346
  %348 = zext i1 %347 to i8
  store i8 %348, i8* %55, align 1
  %349 = and i32 %343, 255
  %350 = tail call i32 @llvm.ctpop.i32(i32 %349)
  %351 = trunc i32 %350 to i8
  %352 = and i8 %351, 1
  %353 = xor i8 %352, 1
  store i8 %353, i8* %56, align 1
  %354 = xor i32 %342, %329
  %355 = xor i32 %354, %343
  %356 = lshr i32 %355, 4
  %357 = trunc i32 %356 to i8
  %358 = and i8 %357, 1
  store i8 %358, i8* %57, align 1
  %359 = icmp eq i32 %343, 0
  %360 = zext i1 %359 to i8
  store i8 %360, i8* %60, align 1
  %361 = lshr i32 %343, 31
  %362 = trunc i32 %361 to i8
  store i8 %362, i8* %61, align 1
  %363 = lshr i32 %329, 31
  %364 = lshr i32 %342, 31
  %365 = xor i32 %361, %363
  %366 = xor i32 %361, %364
  %367 = add nuw nsw i32 %365, %366
  %368 = icmp eq i32 %367, 2
  %369 = zext i1 %368 to i8
  store i8 %369, i8* %62, align 1
  %370 = add i64 %324, -52
  %371 = add i64 %326, 25
  store i64 %371, i64* %3, align 8
  %372 = inttoptr i64 %370 to i32*
  store i32 %343, i32* %372, align 4
  %373 = load i64, i64* %3, align 8
  %374 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %374, i64* %RSI.i2255, align 8
  %375 = add i64 %374, 72400
  %376 = add i64 %373, 15
  store i64 %376, i64* %3, align 8
  %377 = inttoptr i64 %375 to i32*
  %378 = load i32, i32* %377, align 4
  store i8 0, i8* %55, align 1
  %379 = and i32 %378, 255
  %380 = tail call i32 @llvm.ctpop.i32(i32 %379)
  %381 = trunc i32 %380 to i8
  %382 = and i8 %381, 1
  %383 = xor i8 %382, 1
  store i8 %383, i8* %56, align 1
  store i8 0, i8* %57, align 1
  %384 = icmp eq i32 %378, 0
  %385 = zext i1 %384 to i8
  store i8 %385, i8* %60, align 1
  %386 = lshr i32 %378, 31
  %387 = trunc i32 %386 to i8
  store i8 %387, i8* %61, align 1
  store i8 0, i8* %62, align 1
  %.v69 = select i1 %384, i64 117, i64 21
  %388 = add i64 %373, %.v69
  store i64 %388, i64* %3, align 8
  br i1 %384, label %block_.L_48fc36, label %block_48fbd6

block_48fbd6:                                     ; preds = %routine_idivl__ecx.exit
  store i64 %374, i64* %RAX.i2329, align 8
  %389 = add i64 %374, 14168
  %390 = add i64 %388, 15
  store i64 %390, i64* %3, align 8
  %391 = inttoptr i64 %389 to i64*
  %392 = load i64, i64* %391, align 8
  store i64 %392, i64* %RAX.i2329, align 8
  store i64 %374, i64* %RCX.i2321, align 8
  %393 = add i64 %374, 12
  %394 = add i64 %388, 27
  store i64 %394, i64* %3, align 8
  %395 = inttoptr i64 %393 to i32*
  %396 = load i32, i32* %395, align 4
  %397 = sext i32 %396 to i64
  %398 = mul nsw i64 %397, 632
  store i64 %398, i64* %RCX.i2321, align 8
  %399 = lshr i64 %398, 63
  %400 = add i64 %398, %392
  store i64 %400, i64* %RAX.i2329, align 8
  %401 = icmp ult i64 %400, %392
  %402 = icmp ult i64 %400, %398
  %403 = or i1 %401, %402
  %404 = zext i1 %403 to i8
  store i8 %404, i8* %55, align 1
  %405 = trunc i64 %400 to i32
  %406 = and i32 %405, 255
  %407 = tail call i32 @llvm.ctpop.i32(i32 %406)
  %408 = trunc i32 %407 to i8
  %409 = and i8 %408, 1
  %410 = xor i8 %409, 1
  store i8 %410, i8* %56, align 1
  %411 = xor i64 %398, %392
  %412 = xor i64 %411, %400
  %413 = lshr i64 %412, 4
  %414 = trunc i64 %413 to i8
  %415 = and i8 %414, 1
  store i8 %415, i8* %57, align 1
  %416 = icmp eq i64 %400, 0
  %417 = zext i1 %416 to i8
  store i8 %417, i8* %60, align 1
  %418 = lshr i64 %400, 63
  %419 = trunc i64 %418 to i8
  store i8 %419, i8* %61, align 1
  %420 = lshr i64 %392, 63
  %421 = xor i64 %418, %420
  %422 = xor i64 %418, %399
  %423 = add nuw nsw i64 %421, %422
  %424 = icmp eq i64 %423, 2
  %425 = zext i1 %424 to i8
  store i8 %425, i8* %62, align 1
  %426 = add i64 %400, 532
  %427 = add i64 %388, 44
  store i64 %427, i64* %3, align 8
  %428 = inttoptr i64 %426 to i32*
  %429 = load i32, i32* %428, align 4
  store i8 0, i8* %55, align 1
  %430 = and i32 %429, 255
  %431 = tail call i32 @llvm.ctpop.i32(i32 %430)
  %432 = trunc i32 %431 to i8
  %433 = and i8 %432, 1
  %434 = xor i8 %433, 1
  store i8 %434, i8* %56, align 1
  store i8 0, i8* %57, align 1
  %435 = icmp eq i32 %429, 0
  %436 = zext i1 %435 to i8
  store i8 %436, i8* %60, align 1
  %437 = lshr i32 %429, 31
  %438 = trunc i32 %437 to i8
  store i8 %438, i8* %61, align 1
  store i8 0, i8* %62, align 1
  %.v70 = select i1 %435, i64 96, i64 50
  %439 = add i64 %388, %.v70
  store i64 %439, i64* %3, align 8
  br i1 %435, label %block_.L_48fc36, label %block_48fc08

block_48fc08:                                     ; preds = %block_48fbd6
  store i64 2, i64* %RAX.i2329, align 8
  store i64 4, i64* %RCX.i2321, align 8
  %440 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %440, i64* %RDX.i2263.pre-phi, align 8
  %441 = add i64 %440, 12
  %442 = add i64 %439, 21
  store i64 %442, i64* %3, align 8
  %443 = inttoptr i64 %441 to i32*
  %444 = load i32, i32* %443, align 4
  %445 = zext i32 %444 to i64
  store i64 %445, i64* %RSI.i2255, align 8
  %446 = load i64, i64* %RBP.i, align 8
  %447 = add i64 %446, -88
  %448 = add i64 %439, 24
  store i64 %448, i64* %3, align 8
  %449 = inttoptr i64 %447 to i32*
  store i32 2, i32* %449, align 4
  %450 = load i32, i32* %ESI.i2281, align 4
  %451 = zext i32 %450 to i64
  %452 = load i64, i64* %3, align 8
  store i64 %451, i64* %RAX.i2329, align 8
  %453 = sext i32 %450 to i64
  %454 = lshr i64 %453, 32
  store i64 %454, i64* %181, align 8
  %455 = load i64, i64* %RBP.i, align 8
  %456 = add i64 %455, -88
  %457 = add i64 %452, 6
  store i64 %457, i64* %3, align 8
  %458 = inttoptr i64 %456 to i32*
  %459 = load i32, i32* %458, align 4
  %460 = zext i32 %459 to i64
  store i64 %460, i64* %RSI.i2255, align 8
  %461 = add i64 %452, 8
  store i64 %461, i64* %3, align 8
  %462 = sext i32 %459 to i64
  %463 = shl nuw i64 %454, 32
  %464 = or i64 %463, %451
  %465 = sdiv i64 %464, %462
  %466 = shl i64 %465, 32
  %467 = ashr exact i64 %466, 32
  %468 = icmp eq i64 %465, %467
  br i1 %468, label %471, label %469

; <label>:469:                                    ; preds = %block_48fc08
  %470 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %461, %struct.Memory* %253)
  %.pre43 = load i32, i32* %EDX.i2338, align 4
  %.pre44 = load i64, i64* %3, align 8
  %.pre45 = load i64, i64* %RSI.i2255, align 8
  %.pre46 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__esi.exit

; <label>:471:                                    ; preds = %block_48fc08
  %472 = srem i64 %464, %462
  %473 = and i64 %465, 4294967295
  store i64 %473, i64* %RAX.i2329, align 8
  %474 = and i64 %472, 4294967295
  store i64 %474, i64* %RDX.i2263.pre-phi, align 8
  store i8 0, i8* %55, align 1
  store i8 0, i8* %56, align 1
  store i8 0, i8* %57, align 1
  store i8 0, i8* %60, align 1
  store i8 0, i8* %61, align 1
  store i8 0, i8* %62, align 1
  %475 = trunc i64 %472 to i32
  br label %routine_idivl__esi.exit

routine_idivl__esi.exit:                          ; preds = %471, %469
  %476 = phi i64 [ %.pre46, %469 ], [ %455, %471 ]
  %477 = phi i64 [ %.pre45, %469 ], [ %460, %471 ]
  %478 = phi i64 [ %.pre44, %469 ], [ %461, %471 ]
  %479 = phi i32 [ %.pre43, %469 ], [ %475, %471 ]
  %480 = phi %struct.Memory* [ %470, %469 ], [ %253, %471 ]
  store i8 0, i8* %55, align 1
  %481 = and i32 %479, 255
  %482 = tail call i32 @llvm.ctpop.i32(i32 %481)
  %483 = trunc i32 %482 to i8
  %484 = and i8 %483, 1
  %485 = xor i8 %484, 1
  store i8 %485, i8* %56, align 1
  store i8 0, i8* %57, align 1
  %486 = icmp eq i32 %479, 0
  %487 = zext i1 %486 to i8
  store i8 %487, i8* %60, align 1
  %488 = lshr i32 %479, 31
  %489 = trunc i32 %488 to i8
  store i8 %489, i8* %61, align 1
  store i8 0, i8* %62, align 1
  %490 = load i32, i32* %ECX.i2335, align 4
  %491 = zext i32 %490 to i64
  %492 = select i1 %486, i64 %477, i64 %491
  %493 = and i64 %492, 4294967295
  store i64 %493, i64* %RSI.i2255, align 8
  %494 = add i64 %476, -92
  %495 = trunc i64 %492 to i32
  %496 = add i64 %478, 9
  store i64 %496, i64* %3, align 8
  %497 = inttoptr i64 %494 to i32*
  store i32 %495, i32* %497, align 4
  %498 = load i64, i64* %3, align 8
  %499 = add i64 %498, 15
  br label %block_.L_48fc40

block_.L_48fc36:                                  ; preds = %routine_idivl__ecx.exit, %block_48fbd6
  %500 = phi i64 [ %439, %block_48fbd6 ], [ %388, %routine_idivl__ecx.exit ]
  store i64 0, i64* %RAX.i2329, align 8
  store i8 0, i8* %55, align 1
  store i8 1, i8* %56, align 1
  store i8 1, i8* %60, align 1
  store i8 0, i8* %61, align 1
  store i8 0, i8* %62, align 1
  store i8 0, i8* %57, align 1
  %501 = load i64, i64* %RBP.i, align 8
  %502 = add i64 %501, -92
  %503 = add i64 %500, 5
  store i64 %503, i64* %3, align 8
  %504 = inttoptr i64 %502 to i32*
  store i32 0, i32* %504, align 4
  %505 = load i64, i64* %3, align 8
  %506 = add i64 %505, 5
  store i64 %506, i64* %3, align 8
  br label %block_.L_48fc40

block_.L_48fc40:                                  ; preds = %block_.L_48fc36, %routine_idivl__esi.exit
  %storemerge27 = phi i64 [ %499, %routine_idivl__esi.exit ], [ %506, %block_.L_48fc36 ]
  %MEMORY.3 = phi %struct.Memory* [ %480, %routine_idivl__esi.exit ], [ %253, %block_.L_48fc36 ]
  %507 = load i64, i64* %RBP.i, align 8
  %508 = add i64 %507, -92
  %509 = add i64 %storemerge27, 3
  store i64 %509, i64* %3, align 8
  %510 = inttoptr i64 %508 to i32*
  %511 = load i32, i32* %510, align 4
  %512 = zext i32 %511 to i64
  store i64 %512, i64* %RAX.i2329, align 8
  %513 = add i64 %507, -56
  %514 = add i64 %storemerge27, 6
  store i64 %514, i64* %3, align 8
  %515 = inttoptr i64 %513 to i32*
  store i32 %511, i32* %515, align 4
  %516 = load i64, i64* %3, align 8
  %517 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %517, i64* %RCX.i2321, align 8
  %518 = add i64 %517, 14168
  %519 = add i64 %516, 15
  store i64 %519, i64* %3, align 8
  %520 = inttoptr i64 %518 to i64*
  %521 = load i64, i64* %520, align 8
  store i64 %521, i64* %RCX.i2321, align 8
  store i64 %517, i64* %RDX.i2263.pre-phi, align 8
  %522 = add i64 %517, 12
  %523 = add i64 %516, 27
  store i64 %523, i64* %3, align 8
  %524 = inttoptr i64 %522 to i32*
  %525 = load i32, i32* %524, align 4
  %526 = sext i32 %525 to i64
  %527 = mul nsw i64 %526, 632
  store i64 %527, i64* %RDX.i2263.pre-phi, align 8
  %528 = lshr i64 %527, 63
  %529 = add i64 %527, %521
  store i64 %529, i64* %RCX.i2321, align 8
  %530 = icmp ult i64 %529, %521
  %531 = icmp ult i64 %529, %527
  %532 = or i1 %530, %531
  %533 = zext i1 %532 to i8
  store i8 %533, i8* %55, align 1
  %534 = trunc i64 %529 to i32
  %535 = and i32 %534, 255
  %536 = tail call i32 @llvm.ctpop.i32(i32 %535)
  %537 = trunc i32 %536 to i8
  %538 = and i8 %537, 1
  %539 = xor i8 %538, 1
  store i8 %539, i8* %56, align 1
  %540 = xor i64 %527, %521
  %541 = xor i64 %540, %529
  %542 = lshr i64 %541, 4
  %543 = trunc i64 %542 to i8
  %544 = and i8 %543, 1
  store i8 %544, i8* %57, align 1
  %545 = icmp eq i64 %529, 0
  %546 = zext i1 %545 to i8
  store i8 %546, i8* %60, align 1
  %547 = lshr i64 %529, 63
  %548 = trunc i64 %547 to i8
  store i8 %548, i8* %61, align 1
  %549 = lshr i64 %521, 63
  %550 = xor i64 %547, %549
  %551 = xor i64 %547, %528
  %552 = add nuw nsw i64 %550, %551
  %553 = icmp eq i64 %552, 2
  %554 = zext i1 %553 to i8
  store i8 %554, i8* %62, align 1
  %555 = load i64, i64* %RBP.i, align 8
  %556 = add i64 %555, -64
  %557 = add i64 %516, 41
  store i64 %557, i64* %3, align 8
  %558 = inttoptr i64 %556 to i64*
  store i64 %529, i64* %558, align 8
  %559 = load i64, i64* %RBP.i, align 8
  %560 = add i64 %559, -12
  %561 = load i64, i64* %3, align 8
  %562 = add i64 %561, 4
  store i64 %562, i64* %3, align 8
  %563 = inttoptr i64 %560 to i32*
  %564 = load i32, i32* %563, align 4
  store i8 0, i8* %55, align 1
  %565 = and i32 %564, 255
  %566 = tail call i32 @llvm.ctpop.i32(i32 %565)
  %567 = trunc i32 %566 to i8
  %568 = and i8 %567, 1
  %569 = xor i8 %568, 1
  store i8 %569, i8* %56, align 1
  store i8 0, i8* %57, align 1
  %570 = icmp eq i32 %564, 0
  %571 = zext i1 %570 to i8
  store i8 %571, i8* %60, align 1
  %572 = lshr i32 %564, 31
  %573 = trunc i32 %572 to i8
  store i8 %573, i8* %61, align 1
  store i8 0, i8* %62, align 1
  %574 = icmp ne i8 %573, 0
  %.v = select i1 %574, i64 6, i64 646
  %575 = add i64 %562, %.v
  store i64 %575, i64* %3, align 8
  br i1 %574, label %block_48fc79, label %block_.L_48fef9

block_48fc79:                                     ; preds = %block_.L_48fc40
  %576 = add i64 %559, -40
  %577 = add i64 %575, 3
  store i64 %577, i64* %3, align 8
  %578 = inttoptr i64 %576 to i32*
  %579 = load i32, i32* %578, align 4
  %580 = zext i32 %579 to i64
  store i64 %580, i64* %RAX.i2329, align 8
  %581 = add i64 %559, -28
  %582 = add i64 %575, 6
  store i64 %582, i64* %3, align 8
  %583 = inttoptr i64 %581 to i32*
  store i32 %579, i32* %583, align 4
  %.pre60 = load i64, i64* %3, align 8
  br label %block_.L_48fc7f

block_.L_48fc7f:                                  ; preds = %block_.L_48fee1, %block_48fc79
  %584 = phi i64 [ %1493, %block_.L_48fee1 ], [ %.pre60, %block_48fc79 ]
  %585 = load i64, i64* %RBP.i, align 8
  %586 = add i64 %585, -28
  %587 = add i64 %584, 3
  store i64 %587, i64* %3, align 8
  %588 = inttoptr i64 %586 to i32*
  %589 = load i32, i32* %588, align 4
  %590 = zext i32 %589 to i64
  store i64 %590, i64* %RAX.i2329, align 8
  %591 = add i64 %585, -48
  %592 = add i64 %584, 6
  store i64 %592, i64* %3, align 8
  %593 = inttoptr i64 %591 to i32*
  %594 = load i32, i32* %593, align 4
  %595 = sub i32 %589, %594
  %596 = icmp ult i32 %589, %594
  %597 = zext i1 %596 to i8
  store i8 %597, i8* %55, align 1
  %598 = and i32 %595, 255
  %599 = tail call i32 @llvm.ctpop.i32(i32 %598)
  %600 = trunc i32 %599 to i8
  %601 = and i8 %600, 1
  %602 = xor i8 %601, 1
  store i8 %602, i8* %56, align 1
  %603 = xor i32 %594, %589
  %604 = xor i32 %603, %595
  %605 = lshr i32 %604, 4
  %606 = trunc i32 %605 to i8
  %607 = and i8 %606, 1
  store i8 %607, i8* %57, align 1
  %608 = icmp eq i32 %595, 0
  %609 = zext i1 %608 to i8
  store i8 %609, i8* %60, align 1
  %610 = lshr i32 %595, 31
  %611 = trunc i32 %610 to i8
  store i8 %611, i8* %61, align 1
  %612 = lshr i32 %589, 31
  %613 = lshr i32 %594, 31
  %614 = xor i32 %613, %612
  %615 = xor i32 %610, %612
  %616 = add nuw nsw i32 %615, %614
  %617 = icmp eq i32 %616, 2
  %618 = zext i1 %617 to i8
  store i8 %618, i8* %62, align 1
  %619 = icmp ne i8 %611, 0
  %620 = xor i1 %619, %617
  %.v86 = select i1 %620, i64 12, i64 629
  %621 = add i64 %584, %.v86
  store i64 %621, i64* %3, align 8
  br i1 %620, label %block_48fc8b, label %block_.L_490c5d.loopexit

block_48fc8b:                                     ; preds = %block_.L_48fc7f
  %622 = add i64 %585, -44
  %623 = add i64 %621, 3
  store i64 %623, i64* %3, align 8
  %624 = inttoptr i64 %622 to i32*
  %625 = load i32, i32* %624, align 4
  %626 = zext i32 %625 to i64
  store i64 %626, i64* %RAX.i2329, align 8
  %627 = add i64 %585, -24
  %628 = add i64 %621, 6
  store i64 %628, i64* %3, align 8
  %629 = inttoptr i64 %627 to i32*
  store i32 %625, i32* %629, align 4
  %.pre61 = load i64, i64* %3, align 8
  br label %block_.L_48fc91

block_.L_48fc91:                                  ; preds = %block_48fc9d, %block_48fc8b
  %630 = phi i64 [ %1463, %block_48fc9d ], [ %.pre61, %block_48fc8b ]
  %631 = load i64, i64* %RBP.i, align 8
  %632 = add i64 %631, -24
  %633 = add i64 %630, 3
  store i64 %633, i64* %3, align 8
  %634 = inttoptr i64 %632 to i32*
  %635 = load i32, i32* %634, align 4
  %636 = zext i32 %635 to i64
  store i64 %636, i64* %RAX.i2329, align 8
  %637 = add i64 %631, -52
  %638 = add i64 %630, 6
  store i64 %638, i64* %3, align 8
  %639 = inttoptr i64 %637 to i32*
  %640 = load i32, i32* %639, align 4
  %641 = sub i32 %635, %640
  %642 = icmp ult i32 %635, %640
  %643 = zext i1 %642 to i8
  store i8 %643, i8* %55, align 1
  %644 = and i32 %641, 255
  %645 = tail call i32 @llvm.ctpop.i32(i32 %644)
  %646 = trunc i32 %645 to i8
  %647 = and i8 %646, 1
  %648 = xor i8 %647, 1
  store i8 %648, i8* %56, align 1
  %649 = xor i32 %640, %635
  %650 = xor i32 %649, %641
  %651 = lshr i32 %650, 4
  %652 = trunc i32 %651 to i8
  %653 = and i8 %652, 1
  store i8 %653, i8* %57, align 1
  %654 = icmp eq i32 %641, 0
  %655 = zext i1 %654 to i8
  store i8 %655, i8* %60, align 1
  %656 = lshr i32 %641, 31
  %657 = trunc i32 %656 to i8
  store i8 %657, i8* %61, align 1
  %658 = lshr i32 %635, 31
  %659 = lshr i32 %640, 31
  %660 = xor i32 %659, %658
  %661 = xor i32 %656, %658
  %662 = add nuw nsw i32 %661, %660
  %663 = icmp eq i32 %662, 2
  %664 = zext i1 %663 to i8
  store i8 %664, i8* %62, align 1
  %665 = icmp ne i8 %657, 0
  %666 = xor i1 %665, %663
  %.v65 = select i1 %666, i64 12, i64 592
  %667 = add i64 %630, %.v65
  store i64 %667, i64* %3, align 8
  br i1 %666, label %block_48fc9d, label %block_.L_48fee1

block_48fc9d:                                     ; preds = %block_.L_48fc91
  %668 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %668, i64* %RAX.i2329, align 8
  %669 = add i64 %668, 6504
  %670 = add i64 %667, 15
  store i64 %670, i64* %3, align 8
  %671 = inttoptr i64 %669 to i64*
  %672 = load i64, i64* %671, align 8
  store i64 %672, i64* %RAX.i2329, align 8
  %673 = add i64 %667, 18
  store i64 %673, i64* %3, align 8
  %674 = inttoptr i64 %672 to i64*
  %675 = load i64, i64* %674, align 8
  store i64 %675, i64* %RAX.i2329, align 8
  %676 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %676, i64* %RCX.i2321, align 8
  %677 = add i64 %676, 144
  %678 = add i64 %667, 32
  store i64 %678, i64* %3, align 8
  %679 = inttoptr i64 %677 to i32*
  %680 = load i32, i32* %679, align 4
  %681 = zext i32 %680 to i64
  store i64 %681, i64* %RDX.i2263.pre-phi, align 8
  %682 = add i64 %667, 35
  store i64 %682, i64* %3, align 8
  %683 = load i32, i32* %634, align 4
  %684 = add i32 %683, %680
  %685 = zext i32 %684 to i64
  store i64 %685, i64* %RDX.i2263.pre-phi, align 8
  %686 = icmp ult i32 %684, %680
  %687 = icmp ult i32 %684, %683
  %688 = or i1 %686, %687
  %689 = zext i1 %688 to i8
  store i8 %689, i8* %55, align 1
  %690 = and i32 %684, 255
  %691 = tail call i32 @llvm.ctpop.i32(i32 %690)
  %692 = trunc i32 %691 to i8
  %693 = and i8 %692, 1
  %694 = xor i8 %693, 1
  store i8 %694, i8* %56, align 1
  %695 = xor i32 %683, %680
  %696 = xor i32 %695, %684
  %697 = lshr i32 %696, 4
  %698 = trunc i32 %697 to i8
  %699 = and i8 %698, 1
  store i8 %699, i8* %57, align 1
  %700 = icmp eq i32 %684, 0
  %701 = zext i1 %700 to i8
  store i8 %701, i8* %60, align 1
  %702 = lshr i32 %684, 31
  %703 = trunc i32 %702 to i8
  store i8 %703, i8* %61, align 1
  %704 = lshr i32 %680, 31
  %705 = lshr i32 %683, 31
  %706 = xor i32 %702, %704
  %707 = xor i32 %702, %705
  %708 = add nuw nsw i32 %706, %707
  %709 = icmp eq i32 %708, 2
  %710 = zext i1 %709 to i8
  store i8 %710, i8* %62, align 1
  %711 = sext i32 %684 to i64
  store i64 %711, i64* %RCX.i2321, align 8
  %712 = shl nsw i64 %711, 3
  %713 = add i64 %675, %712
  %714 = add i64 %667, 42
  store i64 %714, i64* %3, align 8
  %715 = inttoptr i64 %713 to i64*
  %716 = load i64, i64* %715, align 8
  store i64 %716, i64* %RAX.i2329, align 8
  store i64 %676, i64* %RCX.i2321, align 8
  %717 = add i64 %676, 148
  %718 = add i64 %667, 56
  store i64 %718, i64* %3, align 8
  %719 = inttoptr i64 %717 to i32*
  %720 = load i32, i32* %719, align 4
  %721 = zext i32 %720 to i64
  store i64 %721, i64* %RDX.i2263.pre-phi, align 8
  %722 = add i64 %631, -28
  %723 = add i64 %667, 59
  store i64 %723, i64* %3, align 8
  %724 = inttoptr i64 %722 to i32*
  %725 = load i32, i32* %724, align 4
  %726 = add i32 %725, %720
  %727 = zext i32 %726 to i64
  store i64 %727, i64* %RDX.i2263.pre-phi, align 8
  %728 = icmp ult i32 %726, %720
  %729 = icmp ult i32 %726, %725
  %730 = or i1 %728, %729
  %731 = zext i1 %730 to i8
  store i8 %731, i8* %55, align 1
  %732 = and i32 %726, 255
  %733 = tail call i32 @llvm.ctpop.i32(i32 %732)
  %734 = trunc i32 %733 to i8
  %735 = and i8 %734, 1
  %736 = xor i8 %735, 1
  store i8 %736, i8* %56, align 1
  %737 = xor i32 %725, %720
  %738 = xor i32 %737, %726
  %739 = lshr i32 %738, 4
  %740 = trunc i32 %739 to i8
  %741 = and i8 %740, 1
  store i8 %741, i8* %57, align 1
  %742 = icmp eq i32 %726, 0
  %743 = zext i1 %742 to i8
  store i8 %743, i8* %60, align 1
  %744 = lshr i32 %726, 31
  %745 = trunc i32 %744 to i8
  store i8 %745, i8* %61, align 1
  %746 = lshr i32 %720, 31
  %747 = lshr i32 %725, 31
  %748 = xor i32 %744, %746
  %749 = xor i32 %744, %747
  %750 = add nuw nsw i32 %748, %749
  %751 = icmp eq i32 %750, 2
  %752 = zext i1 %751 to i8
  store i8 %752, i8* %62, align 1
  %753 = sext i32 %726 to i64
  store i64 %753, i64* %RCX.i2321, align 8
  %754 = shl nsw i64 %753, 3
  %755 = add i64 %716, %754
  %756 = add i64 %667, 66
  store i64 %756, i64* %3, align 8
  %757 = inttoptr i64 %755 to i16**
  %758 = load i16*, i16** %757, align 8
  %759 = add i64 %667, 71
  store i64 %759, i64* %3, align 8
  store i16 0, i16* %758, align 2
  %760 = load i64, i64* %3, align 8
  %761 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %761, i64* %RAX.i2329, align 8
  %762 = add i64 %761, 6504
  %763 = add i64 %760, 15
  store i64 %763, i64* %3, align 8
  %764 = inttoptr i64 %762 to i64*
  %765 = load i64, i64* %764, align 8
  store i64 %765, i64* %RAX.i2329, align 8
  %766 = add i64 %760, 18
  store i64 %766, i64* %3, align 8
  %767 = inttoptr i64 %765 to i64*
  %768 = load i64, i64* %767, align 8
  store i64 %768, i64* %RAX.i2329, align 8
  %769 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %769, i64* %RCX.i2321, align 8
  %770 = add i64 %769, 144
  %771 = add i64 %760, 32
  store i64 %771, i64* %3, align 8
  %772 = inttoptr i64 %770 to i32*
  %773 = load i32, i32* %772, align 4
  %774 = zext i32 %773 to i64
  store i64 %774, i64* %RDX.i2263.pre-phi, align 8
  %775 = load i64, i64* %RBP.i, align 8
  %776 = add i64 %775, -24
  %777 = add i64 %760, 35
  store i64 %777, i64* %3, align 8
  %778 = inttoptr i64 %776 to i32*
  %779 = load i32, i32* %778, align 4
  %780 = add i32 %779, %773
  %781 = zext i32 %780 to i64
  store i64 %781, i64* %RDX.i2263.pre-phi, align 8
  %782 = icmp ult i32 %780, %773
  %783 = icmp ult i32 %780, %779
  %784 = or i1 %782, %783
  %785 = zext i1 %784 to i8
  store i8 %785, i8* %55, align 1
  %786 = and i32 %780, 255
  %787 = tail call i32 @llvm.ctpop.i32(i32 %786)
  %788 = trunc i32 %787 to i8
  %789 = and i8 %788, 1
  %790 = xor i8 %789, 1
  store i8 %790, i8* %56, align 1
  %791 = xor i32 %779, %773
  %792 = xor i32 %791, %780
  %793 = lshr i32 %792, 4
  %794 = trunc i32 %793 to i8
  %795 = and i8 %794, 1
  store i8 %795, i8* %57, align 1
  %796 = icmp eq i32 %780, 0
  %797 = zext i1 %796 to i8
  store i8 %797, i8* %60, align 1
  %798 = lshr i32 %780, 31
  %799 = trunc i32 %798 to i8
  store i8 %799, i8* %61, align 1
  %800 = lshr i32 %773, 31
  %801 = lshr i32 %779, 31
  %802 = xor i32 %798, %800
  %803 = xor i32 %798, %801
  %804 = add nuw nsw i32 %802, %803
  %805 = icmp eq i32 %804, 2
  %806 = zext i1 %805 to i8
  store i8 %806, i8* %62, align 1
  %807 = sext i32 %780 to i64
  store i64 %807, i64* %RCX.i2321, align 8
  %808 = shl nsw i64 %807, 3
  %809 = add i64 %768, %808
  %810 = add i64 %760, 42
  store i64 %810, i64* %3, align 8
  %811 = inttoptr i64 %809 to i64*
  %812 = load i64, i64* %811, align 8
  store i64 %812, i64* %RAX.i2329, align 8
  store i64 %769, i64* %RCX.i2321, align 8
  %813 = add i64 %769, 148
  %814 = add i64 %760, 56
  store i64 %814, i64* %3, align 8
  %815 = inttoptr i64 %813 to i32*
  %816 = load i32, i32* %815, align 4
  %817 = zext i32 %816 to i64
  store i64 %817, i64* %RDX.i2263.pre-phi, align 8
  %818 = add i64 %775, -28
  %819 = add i64 %760, 59
  store i64 %819, i64* %3, align 8
  %820 = inttoptr i64 %818 to i32*
  %821 = load i32, i32* %820, align 4
  %822 = add i32 %821, %816
  %823 = zext i32 %822 to i64
  store i64 %823, i64* %RDX.i2263.pre-phi, align 8
  %824 = icmp ult i32 %822, %816
  %825 = icmp ult i32 %822, %821
  %826 = or i1 %824, %825
  %827 = zext i1 %826 to i8
  store i8 %827, i8* %55, align 1
  %828 = and i32 %822, 255
  %829 = tail call i32 @llvm.ctpop.i32(i32 %828)
  %830 = trunc i32 %829 to i8
  %831 = and i8 %830, 1
  %832 = xor i8 %831, 1
  store i8 %832, i8* %56, align 1
  %833 = xor i32 %821, %816
  %834 = xor i32 %833, %822
  %835 = lshr i32 %834, 4
  %836 = trunc i32 %835 to i8
  %837 = and i8 %836, 1
  store i8 %837, i8* %57, align 1
  %838 = icmp eq i32 %822, 0
  %839 = zext i1 %838 to i8
  store i8 %839, i8* %60, align 1
  %840 = lshr i32 %822, 31
  %841 = trunc i32 %840 to i8
  store i8 %841, i8* %61, align 1
  %842 = lshr i32 %816, 31
  %843 = lshr i32 %821, 31
  %844 = xor i32 %840, %842
  %845 = xor i32 %840, %843
  %846 = add nuw nsw i32 %844, %845
  %847 = icmp eq i32 %846, 2
  %848 = zext i1 %847 to i8
  store i8 %848, i8* %62, align 1
  %849 = sext i32 %822 to i64
  store i64 %849, i64* %RCX.i2321, align 8
  %850 = shl nsw i64 %849, 3
  %851 = add i64 %812, %850
  %852 = add i64 %760, 66
  store i64 %852, i64* %3, align 8
  %853 = inttoptr i64 %851 to i64*
  %854 = load i64, i64* %853, align 8
  %855 = add i64 %854, 2
  %856 = add i64 %760, 72
  store i64 %856, i64* %3, align 8
  %857 = inttoptr i64 %855 to i16*
  store i16 0, i16* %857, align 2
  %858 = load i64, i64* %3, align 8
  %859 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %859, i64* %RAX.i2329, align 8
  %860 = add i64 %859, 6504
  %861 = add i64 %858, 15
  store i64 %861, i64* %3, align 8
  %862 = inttoptr i64 %860 to i64*
  %863 = load i64, i64* %862, align 8
  store i64 %863, i64* %RAX.i2329, align 8
  %864 = add i64 %863, 8
  %865 = add i64 %858, 19
  store i64 %865, i64* %3, align 8
  %866 = inttoptr i64 %864 to i64*
  %867 = load i64, i64* %866, align 8
  store i64 %867, i64* %RAX.i2329, align 8
  %868 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %868, i64* %RCX.i2321, align 8
  %869 = add i64 %868, 144
  %870 = add i64 %858, 33
  store i64 %870, i64* %3, align 8
  %871 = inttoptr i64 %869 to i32*
  %872 = load i32, i32* %871, align 4
  %873 = zext i32 %872 to i64
  store i64 %873, i64* %RDX.i2263.pre-phi, align 8
  %874 = load i64, i64* %RBP.i, align 8
  %875 = add i64 %874, -24
  %876 = add i64 %858, 36
  store i64 %876, i64* %3, align 8
  %877 = inttoptr i64 %875 to i32*
  %878 = load i32, i32* %877, align 4
  %879 = add i32 %878, %872
  %880 = zext i32 %879 to i64
  store i64 %880, i64* %RDX.i2263.pre-phi, align 8
  %881 = icmp ult i32 %879, %872
  %882 = icmp ult i32 %879, %878
  %883 = or i1 %881, %882
  %884 = zext i1 %883 to i8
  store i8 %884, i8* %55, align 1
  %885 = and i32 %879, 255
  %886 = tail call i32 @llvm.ctpop.i32(i32 %885)
  %887 = trunc i32 %886 to i8
  %888 = and i8 %887, 1
  %889 = xor i8 %888, 1
  store i8 %889, i8* %56, align 1
  %890 = xor i32 %878, %872
  %891 = xor i32 %890, %879
  %892 = lshr i32 %891, 4
  %893 = trunc i32 %892 to i8
  %894 = and i8 %893, 1
  store i8 %894, i8* %57, align 1
  %895 = icmp eq i32 %879, 0
  %896 = zext i1 %895 to i8
  store i8 %896, i8* %60, align 1
  %897 = lshr i32 %879, 31
  %898 = trunc i32 %897 to i8
  store i8 %898, i8* %61, align 1
  %899 = lshr i32 %872, 31
  %900 = lshr i32 %878, 31
  %901 = xor i32 %897, %899
  %902 = xor i32 %897, %900
  %903 = add nuw nsw i32 %901, %902
  %904 = icmp eq i32 %903, 2
  %905 = zext i1 %904 to i8
  store i8 %905, i8* %62, align 1
  %906 = sext i32 %879 to i64
  store i64 %906, i64* %RCX.i2321, align 8
  %907 = shl nsw i64 %906, 3
  %908 = add i64 %867, %907
  %909 = add i64 %858, 43
  store i64 %909, i64* %3, align 8
  %910 = inttoptr i64 %908 to i64*
  %911 = load i64, i64* %910, align 8
  store i64 %911, i64* %RAX.i2329, align 8
  store i64 %868, i64* %RCX.i2321, align 8
  %912 = add i64 %868, 148
  %913 = add i64 %858, 57
  store i64 %913, i64* %3, align 8
  %914 = inttoptr i64 %912 to i32*
  %915 = load i32, i32* %914, align 4
  %916 = zext i32 %915 to i64
  store i64 %916, i64* %RDX.i2263.pre-phi, align 8
  %917 = add i64 %874, -28
  %918 = add i64 %858, 60
  store i64 %918, i64* %3, align 8
  %919 = inttoptr i64 %917 to i32*
  %920 = load i32, i32* %919, align 4
  %921 = add i32 %920, %915
  %922 = zext i32 %921 to i64
  store i64 %922, i64* %RDX.i2263.pre-phi, align 8
  %923 = icmp ult i32 %921, %915
  %924 = icmp ult i32 %921, %920
  %925 = or i1 %923, %924
  %926 = zext i1 %925 to i8
  store i8 %926, i8* %55, align 1
  %927 = and i32 %921, 255
  %928 = tail call i32 @llvm.ctpop.i32(i32 %927)
  %929 = trunc i32 %928 to i8
  %930 = and i8 %929, 1
  %931 = xor i8 %930, 1
  store i8 %931, i8* %56, align 1
  %932 = xor i32 %920, %915
  %933 = xor i32 %932, %921
  %934 = lshr i32 %933, 4
  %935 = trunc i32 %934 to i8
  %936 = and i8 %935, 1
  store i8 %936, i8* %57, align 1
  %937 = icmp eq i32 %921, 0
  %938 = zext i1 %937 to i8
  store i8 %938, i8* %60, align 1
  %939 = lshr i32 %921, 31
  %940 = trunc i32 %939 to i8
  store i8 %940, i8* %61, align 1
  %941 = lshr i32 %915, 31
  %942 = lshr i32 %920, 31
  %943 = xor i32 %939, %941
  %944 = xor i32 %939, %942
  %945 = add nuw nsw i32 %943, %944
  %946 = icmp eq i32 %945, 2
  %947 = zext i1 %946 to i8
  store i8 %947, i8* %62, align 1
  %948 = sext i32 %921 to i64
  store i64 %948, i64* %RCX.i2321, align 8
  %949 = shl nsw i64 %948, 3
  %950 = add i64 %911, %949
  %951 = add i64 %858, 67
  store i64 %951, i64* %3, align 8
  %952 = inttoptr i64 %950 to i16**
  %953 = load i16*, i16** %952, align 8
  %954 = add i64 %858, 72
  store i64 %954, i64* %3, align 8
  store i16 0, i16* %953, align 2
  %955 = load i64, i64* %3, align 8
  %956 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %956, i64* %RAX.i2329, align 8
  %957 = add i64 %956, 6504
  %958 = add i64 %955, 15
  store i64 %958, i64* %3, align 8
  %959 = inttoptr i64 %957 to i64*
  %960 = load i64, i64* %959, align 8
  store i64 %960, i64* %RAX.i2329, align 8
  %961 = add i64 %960, 8
  %962 = add i64 %955, 19
  store i64 %962, i64* %3, align 8
  %963 = inttoptr i64 %961 to i64*
  %964 = load i64, i64* %963, align 8
  store i64 %964, i64* %RAX.i2329, align 8
  %965 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %965, i64* %RCX.i2321, align 8
  %966 = add i64 %965, 144
  %967 = add i64 %955, 33
  store i64 %967, i64* %3, align 8
  %968 = inttoptr i64 %966 to i32*
  %969 = load i32, i32* %968, align 4
  %970 = zext i32 %969 to i64
  store i64 %970, i64* %RDX.i2263.pre-phi, align 8
  %971 = load i64, i64* %RBP.i, align 8
  %972 = add i64 %971, -24
  %973 = add i64 %955, 36
  store i64 %973, i64* %3, align 8
  %974 = inttoptr i64 %972 to i32*
  %975 = load i32, i32* %974, align 4
  %976 = add i32 %975, %969
  %977 = zext i32 %976 to i64
  store i64 %977, i64* %RDX.i2263.pre-phi, align 8
  %978 = icmp ult i32 %976, %969
  %979 = icmp ult i32 %976, %975
  %980 = or i1 %978, %979
  %981 = zext i1 %980 to i8
  store i8 %981, i8* %55, align 1
  %982 = and i32 %976, 255
  %983 = tail call i32 @llvm.ctpop.i32(i32 %982)
  %984 = trunc i32 %983 to i8
  %985 = and i8 %984, 1
  %986 = xor i8 %985, 1
  store i8 %986, i8* %56, align 1
  %987 = xor i32 %975, %969
  %988 = xor i32 %987, %976
  %989 = lshr i32 %988, 4
  %990 = trunc i32 %989 to i8
  %991 = and i8 %990, 1
  store i8 %991, i8* %57, align 1
  %992 = icmp eq i32 %976, 0
  %993 = zext i1 %992 to i8
  store i8 %993, i8* %60, align 1
  %994 = lshr i32 %976, 31
  %995 = trunc i32 %994 to i8
  store i8 %995, i8* %61, align 1
  %996 = lshr i32 %969, 31
  %997 = lshr i32 %975, 31
  %998 = xor i32 %994, %996
  %999 = xor i32 %994, %997
  %1000 = add nuw nsw i32 %998, %999
  %1001 = icmp eq i32 %1000, 2
  %1002 = zext i1 %1001 to i8
  store i8 %1002, i8* %62, align 1
  %1003 = sext i32 %976 to i64
  store i64 %1003, i64* %RCX.i2321, align 8
  %1004 = shl nsw i64 %1003, 3
  %1005 = add i64 %964, %1004
  %1006 = add i64 %955, 43
  store i64 %1006, i64* %3, align 8
  %1007 = inttoptr i64 %1005 to i64*
  %1008 = load i64, i64* %1007, align 8
  store i64 %1008, i64* %RAX.i2329, align 8
  store i64 %965, i64* %RCX.i2321, align 8
  %1009 = add i64 %965, 148
  %1010 = add i64 %955, 57
  store i64 %1010, i64* %3, align 8
  %1011 = inttoptr i64 %1009 to i32*
  %1012 = load i32, i32* %1011, align 4
  %1013 = zext i32 %1012 to i64
  store i64 %1013, i64* %RDX.i2263.pre-phi, align 8
  %1014 = add i64 %971, -28
  %1015 = add i64 %955, 60
  store i64 %1015, i64* %3, align 8
  %1016 = inttoptr i64 %1014 to i32*
  %1017 = load i32, i32* %1016, align 4
  %1018 = add i32 %1017, %1012
  %1019 = zext i32 %1018 to i64
  store i64 %1019, i64* %RDX.i2263.pre-phi, align 8
  %1020 = icmp ult i32 %1018, %1012
  %1021 = icmp ult i32 %1018, %1017
  %1022 = or i1 %1020, %1021
  %1023 = zext i1 %1022 to i8
  store i8 %1023, i8* %55, align 1
  %1024 = and i32 %1018, 255
  %1025 = tail call i32 @llvm.ctpop.i32(i32 %1024)
  %1026 = trunc i32 %1025 to i8
  %1027 = and i8 %1026, 1
  %1028 = xor i8 %1027, 1
  store i8 %1028, i8* %56, align 1
  %1029 = xor i32 %1017, %1012
  %1030 = xor i32 %1029, %1018
  %1031 = lshr i32 %1030, 4
  %1032 = trunc i32 %1031 to i8
  %1033 = and i8 %1032, 1
  store i8 %1033, i8* %57, align 1
  %1034 = icmp eq i32 %1018, 0
  %1035 = zext i1 %1034 to i8
  store i8 %1035, i8* %60, align 1
  %1036 = lshr i32 %1018, 31
  %1037 = trunc i32 %1036 to i8
  store i8 %1037, i8* %61, align 1
  %1038 = lshr i32 %1012, 31
  %1039 = lshr i32 %1017, 31
  %1040 = xor i32 %1036, %1038
  %1041 = xor i32 %1036, %1039
  %1042 = add nuw nsw i32 %1040, %1041
  %1043 = icmp eq i32 %1042, 2
  %1044 = zext i1 %1043 to i8
  store i8 %1044, i8* %62, align 1
  %1045 = sext i32 %1018 to i64
  store i64 %1045, i64* %RCX.i2321, align 8
  %1046 = shl nsw i64 %1045, 3
  %1047 = add i64 %1008, %1046
  %1048 = add i64 %955, 67
  store i64 %1048, i64* %3, align 8
  %1049 = inttoptr i64 %1047 to i64*
  %1050 = load i64, i64* %1049, align 8
  %1051 = add i64 %1050, 2
  %1052 = add i64 %955, 73
  store i64 %1052, i64* %3, align 8
  %1053 = inttoptr i64 %1051 to i16*
  store i16 0, i16* %1053, align 2
  %1054 = load i64, i64* %3, align 8
  %1055 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %1055, i64* %RAX.i2329, align 8
  %1056 = add i64 %1055, 6480
  %1057 = add i64 %1054, 15
  store i64 %1057, i64* %3, align 8
  %1058 = inttoptr i64 %1056 to i64*
  %1059 = load i64, i64* %1058, align 8
  store i64 %1059, i64* %RAX.i2329, align 8
  %1060 = add i64 %1054, 18
  store i64 %1060, i64* %3, align 8
  %1061 = inttoptr i64 %1059 to i64*
  %1062 = load i64, i64* %1061, align 8
  store i64 %1062, i64* %RAX.i2329, align 8
  %1063 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1063, i64* %RCX.i2321, align 8
  %1064 = add i64 %1063, 144
  %1065 = add i64 %1054, 32
  store i64 %1065, i64* %3, align 8
  %1066 = inttoptr i64 %1064 to i32*
  %1067 = load i32, i32* %1066, align 4
  %1068 = zext i32 %1067 to i64
  store i64 %1068, i64* %RDX.i2263.pre-phi, align 8
  %1069 = load i64, i64* %RBP.i, align 8
  %1070 = add i64 %1069, -24
  %1071 = add i64 %1054, 35
  store i64 %1071, i64* %3, align 8
  %1072 = inttoptr i64 %1070 to i32*
  %1073 = load i32, i32* %1072, align 4
  %1074 = add i32 %1073, %1067
  %1075 = zext i32 %1074 to i64
  store i64 %1075, i64* %RDX.i2263.pre-phi, align 8
  %1076 = icmp ult i32 %1074, %1067
  %1077 = icmp ult i32 %1074, %1073
  %1078 = or i1 %1076, %1077
  %1079 = zext i1 %1078 to i8
  store i8 %1079, i8* %55, align 1
  %1080 = and i32 %1074, 255
  %1081 = tail call i32 @llvm.ctpop.i32(i32 %1080)
  %1082 = trunc i32 %1081 to i8
  %1083 = and i8 %1082, 1
  %1084 = xor i8 %1083, 1
  store i8 %1084, i8* %56, align 1
  %1085 = xor i32 %1073, %1067
  %1086 = xor i32 %1085, %1074
  %1087 = lshr i32 %1086, 4
  %1088 = trunc i32 %1087 to i8
  %1089 = and i8 %1088, 1
  store i8 %1089, i8* %57, align 1
  %1090 = icmp eq i32 %1074, 0
  %1091 = zext i1 %1090 to i8
  store i8 %1091, i8* %60, align 1
  %1092 = lshr i32 %1074, 31
  %1093 = trunc i32 %1092 to i8
  store i8 %1093, i8* %61, align 1
  %1094 = lshr i32 %1067, 31
  %1095 = lshr i32 %1073, 31
  %1096 = xor i32 %1092, %1094
  %1097 = xor i32 %1092, %1095
  %1098 = add nuw nsw i32 %1096, %1097
  %1099 = icmp eq i32 %1098, 2
  %1100 = zext i1 %1099 to i8
  store i8 %1100, i8* %62, align 1
  %1101 = sext i32 %1074 to i64
  store i64 %1101, i64* %RCX.i2321, align 8
  %1102 = shl nsw i64 %1101, 3
  %1103 = add i64 %1062, %1102
  %1104 = add i64 %1054, 42
  store i64 %1104, i64* %3, align 8
  %1105 = inttoptr i64 %1103 to i64*
  %1106 = load i64, i64* %1105, align 8
  store i64 %1106, i64* %RAX.i2329, align 8
  store i64 %1063, i64* %RCX.i2321, align 8
  %1107 = add i64 %1063, 148
  %1108 = add i64 %1054, 56
  store i64 %1108, i64* %3, align 8
  %1109 = inttoptr i64 %1107 to i32*
  %1110 = load i32, i32* %1109, align 4
  %1111 = zext i32 %1110 to i64
  store i64 %1111, i64* %RDX.i2263.pre-phi, align 8
  %1112 = add i64 %1069, -28
  %1113 = add i64 %1054, 59
  store i64 %1113, i64* %3, align 8
  %1114 = inttoptr i64 %1112 to i32*
  %1115 = load i32, i32* %1114, align 4
  %1116 = add i32 %1115, %1110
  %1117 = zext i32 %1116 to i64
  store i64 %1117, i64* %RDX.i2263.pre-phi, align 8
  %1118 = icmp ult i32 %1116, %1110
  %1119 = icmp ult i32 %1116, %1115
  %1120 = or i1 %1118, %1119
  %1121 = zext i1 %1120 to i8
  store i8 %1121, i8* %55, align 1
  %1122 = and i32 %1116, 255
  %1123 = tail call i32 @llvm.ctpop.i32(i32 %1122)
  %1124 = trunc i32 %1123 to i8
  %1125 = and i8 %1124, 1
  %1126 = xor i8 %1125, 1
  store i8 %1126, i8* %56, align 1
  %1127 = xor i32 %1115, %1110
  %1128 = xor i32 %1127, %1116
  %1129 = lshr i32 %1128, 4
  %1130 = trunc i32 %1129 to i8
  %1131 = and i8 %1130, 1
  store i8 %1131, i8* %57, align 1
  %1132 = icmp eq i32 %1116, 0
  %1133 = zext i1 %1132 to i8
  store i8 %1133, i8* %60, align 1
  %1134 = lshr i32 %1116, 31
  %1135 = trunc i32 %1134 to i8
  store i8 %1135, i8* %61, align 1
  %1136 = lshr i32 %1110, 31
  %1137 = lshr i32 %1115, 31
  %1138 = xor i32 %1134, %1136
  %1139 = xor i32 %1134, %1137
  %1140 = add nuw nsw i32 %1138, %1139
  %1141 = icmp eq i32 %1140, 2
  %1142 = zext i1 %1141 to i8
  store i8 %1142, i8* %62, align 1
  %1143 = sext i32 %1116 to i64
  store i64 %1143, i64* %RCX.i2321, align 8
  %1144 = shl nsw i64 %1143, 1
  %1145 = add i64 %1106, %1144
  %1146 = add i64 %1054, 68
  store i64 %1146, i64* %3, align 8
  %1147 = inttoptr i64 %1145 to i16*
  store i16 -1, i16* %1147, align 2
  %1148 = load i64, i64* %3, align 8
  %1149 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %1149, i64* %RAX.i2329, align 8
  %1150 = add i64 %1149, 6480
  %1151 = add i64 %1148, 15
  store i64 %1151, i64* %3, align 8
  %1152 = inttoptr i64 %1150 to i64*
  %1153 = load i64, i64* %1152, align 8
  store i64 %1153, i64* %RAX.i2329, align 8
  %1154 = add i64 %1153, 8
  %1155 = add i64 %1148, 19
  store i64 %1155, i64* %3, align 8
  %1156 = inttoptr i64 %1154 to i64*
  %1157 = load i64, i64* %1156, align 8
  store i64 %1157, i64* %RAX.i2329, align 8
  %1158 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1158, i64* %RCX.i2321, align 8
  %1159 = add i64 %1158, 144
  %1160 = add i64 %1148, 33
  store i64 %1160, i64* %3, align 8
  %1161 = inttoptr i64 %1159 to i32*
  %1162 = load i32, i32* %1161, align 4
  %1163 = zext i32 %1162 to i64
  store i64 %1163, i64* %RDX.i2263.pre-phi, align 8
  %1164 = load i64, i64* %RBP.i, align 8
  %1165 = add i64 %1164, -24
  %1166 = add i64 %1148, 36
  store i64 %1166, i64* %3, align 8
  %1167 = inttoptr i64 %1165 to i32*
  %1168 = load i32, i32* %1167, align 4
  %1169 = add i32 %1168, %1162
  %1170 = zext i32 %1169 to i64
  store i64 %1170, i64* %RDX.i2263.pre-phi, align 8
  %1171 = icmp ult i32 %1169, %1162
  %1172 = icmp ult i32 %1169, %1168
  %1173 = or i1 %1171, %1172
  %1174 = zext i1 %1173 to i8
  store i8 %1174, i8* %55, align 1
  %1175 = and i32 %1169, 255
  %1176 = tail call i32 @llvm.ctpop.i32(i32 %1175)
  %1177 = trunc i32 %1176 to i8
  %1178 = and i8 %1177, 1
  %1179 = xor i8 %1178, 1
  store i8 %1179, i8* %56, align 1
  %1180 = xor i32 %1168, %1162
  %1181 = xor i32 %1180, %1169
  %1182 = lshr i32 %1181, 4
  %1183 = trunc i32 %1182 to i8
  %1184 = and i8 %1183, 1
  store i8 %1184, i8* %57, align 1
  %1185 = icmp eq i32 %1169, 0
  %1186 = zext i1 %1185 to i8
  store i8 %1186, i8* %60, align 1
  %1187 = lshr i32 %1169, 31
  %1188 = trunc i32 %1187 to i8
  store i8 %1188, i8* %61, align 1
  %1189 = lshr i32 %1162, 31
  %1190 = lshr i32 %1168, 31
  %1191 = xor i32 %1187, %1189
  %1192 = xor i32 %1187, %1190
  %1193 = add nuw nsw i32 %1191, %1192
  %1194 = icmp eq i32 %1193, 2
  %1195 = zext i1 %1194 to i8
  store i8 %1195, i8* %62, align 1
  %1196 = sext i32 %1169 to i64
  store i64 %1196, i64* %RCX.i2321, align 8
  %1197 = shl nsw i64 %1196, 3
  %1198 = add i64 %1157, %1197
  %1199 = add i64 %1148, 43
  store i64 %1199, i64* %3, align 8
  %1200 = inttoptr i64 %1198 to i64*
  %1201 = load i64, i64* %1200, align 8
  store i64 %1201, i64* %RAX.i2329, align 8
  store i64 %1158, i64* %RCX.i2321, align 8
  %1202 = add i64 %1158, 148
  %1203 = add i64 %1148, 57
  store i64 %1203, i64* %3, align 8
  %1204 = inttoptr i64 %1202 to i32*
  %1205 = load i32, i32* %1204, align 4
  %1206 = zext i32 %1205 to i64
  store i64 %1206, i64* %RDX.i2263.pre-phi, align 8
  %1207 = add i64 %1164, -28
  %1208 = add i64 %1148, 60
  store i64 %1208, i64* %3, align 8
  %1209 = inttoptr i64 %1207 to i32*
  %1210 = load i32, i32* %1209, align 4
  %1211 = add i32 %1210, %1205
  %1212 = zext i32 %1211 to i64
  store i64 %1212, i64* %RDX.i2263.pre-phi, align 8
  %1213 = icmp ult i32 %1211, %1205
  %1214 = icmp ult i32 %1211, %1210
  %1215 = or i1 %1213, %1214
  %1216 = zext i1 %1215 to i8
  store i8 %1216, i8* %55, align 1
  %1217 = and i32 %1211, 255
  %1218 = tail call i32 @llvm.ctpop.i32(i32 %1217)
  %1219 = trunc i32 %1218 to i8
  %1220 = and i8 %1219, 1
  %1221 = xor i8 %1220, 1
  store i8 %1221, i8* %56, align 1
  %1222 = xor i32 %1210, %1205
  %1223 = xor i32 %1222, %1211
  %1224 = lshr i32 %1223, 4
  %1225 = trunc i32 %1224 to i8
  %1226 = and i8 %1225, 1
  store i8 %1226, i8* %57, align 1
  %1227 = icmp eq i32 %1211, 0
  %1228 = zext i1 %1227 to i8
  store i8 %1228, i8* %60, align 1
  %1229 = lshr i32 %1211, 31
  %1230 = trunc i32 %1229 to i8
  store i8 %1230, i8* %61, align 1
  %1231 = lshr i32 %1205, 31
  %1232 = lshr i32 %1210, 31
  %1233 = xor i32 %1229, %1231
  %1234 = xor i32 %1229, %1232
  %1235 = add nuw nsw i32 %1233, %1234
  %1236 = icmp eq i32 %1235, 2
  %1237 = zext i1 %1236 to i8
  store i8 %1237, i8* %62, align 1
  %1238 = sext i32 %1211 to i64
  store i64 %1238, i64* %RCX.i2321, align 8
  %1239 = shl nsw i64 %1238, 1
  %1240 = add i64 %1201, %1239
  %1241 = add i64 %1148, 69
  store i64 %1241, i64* %3, align 8
  %1242 = inttoptr i64 %1240 to i16*
  store i16 -1, i16* %1242, align 2
  %1243 = load i64, i64* %3, align 8
  %1244 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %1244, i64* %RAX.i2329, align 8
  %1245 = add i64 %1244, 6488
  %1246 = add i64 %1243, 15
  store i64 %1246, i64* %3, align 8
  %1247 = inttoptr i64 %1245 to i64*
  %1248 = load i64, i64* %1247, align 8
  store i64 %1248, i64* %RAX.i2329, align 8
  %1249 = add i64 %1243, 18
  store i64 %1249, i64* %3, align 8
  %1250 = inttoptr i64 %1248 to i64*
  %1251 = load i64, i64* %1250, align 8
  store i64 %1251, i64* %RAX.i2329, align 8
  %1252 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1252, i64* %RCX.i2321, align 8
  %1253 = add i64 %1252, 144
  %1254 = add i64 %1243, 32
  store i64 %1254, i64* %3, align 8
  %1255 = inttoptr i64 %1253 to i32*
  %1256 = load i32, i32* %1255, align 4
  %1257 = zext i32 %1256 to i64
  store i64 %1257, i64* %RDX.i2263.pre-phi, align 8
  %1258 = load i64, i64* %RBP.i, align 8
  %1259 = add i64 %1258, -24
  %1260 = add i64 %1243, 35
  store i64 %1260, i64* %3, align 8
  %1261 = inttoptr i64 %1259 to i32*
  %1262 = load i32, i32* %1261, align 4
  %1263 = add i32 %1262, %1256
  %1264 = zext i32 %1263 to i64
  store i64 %1264, i64* %RDX.i2263.pre-phi, align 8
  %1265 = icmp ult i32 %1263, %1256
  %1266 = icmp ult i32 %1263, %1262
  %1267 = or i1 %1265, %1266
  %1268 = zext i1 %1267 to i8
  store i8 %1268, i8* %55, align 1
  %1269 = and i32 %1263, 255
  %1270 = tail call i32 @llvm.ctpop.i32(i32 %1269)
  %1271 = trunc i32 %1270 to i8
  %1272 = and i8 %1271, 1
  %1273 = xor i8 %1272, 1
  store i8 %1273, i8* %56, align 1
  %1274 = xor i32 %1262, %1256
  %1275 = xor i32 %1274, %1263
  %1276 = lshr i32 %1275, 4
  %1277 = trunc i32 %1276 to i8
  %1278 = and i8 %1277, 1
  store i8 %1278, i8* %57, align 1
  %1279 = icmp eq i32 %1263, 0
  %1280 = zext i1 %1279 to i8
  store i8 %1280, i8* %60, align 1
  %1281 = lshr i32 %1263, 31
  %1282 = trunc i32 %1281 to i8
  store i8 %1282, i8* %61, align 1
  %1283 = lshr i32 %1256, 31
  %1284 = lshr i32 %1262, 31
  %1285 = xor i32 %1281, %1283
  %1286 = xor i32 %1281, %1284
  %1287 = add nuw nsw i32 %1285, %1286
  %1288 = icmp eq i32 %1287, 2
  %1289 = zext i1 %1288 to i8
  store i8 %1289, i8* %62, align 1
  %1290 = sext i32 %1263 to i64
  store i64 %1290, i64* %RCX.i2321, align 8
  %1291 = shl nsw i64 %1290, 3
  %1292 = add i64 %1251, %1291
  %1293 = add i64 %1243, 42
  store i64 %1293, i64* %3, align 8
  %1294 = inttoptr i64 %1292 to i64*
  %1295 = load i64, i64* %1294, align 8
  store i64 %1295, i64* %RAX.i2329, align 8
  store i64 %1252, i64* %RCX.i2321, align 8
  %1296 = add i64 %1252, 148
  %1297 = add i64 %1243, 56
  store i64 %1297, i64* %3, align 8
  %1298 = inttoptr i64 %1296 to i32*
  %1299 = load i32, i32* %1298, align 4
  %1300 = zext i32 %1299 to i64
  store i64 %1300, i64* %RDX.i2263.pre-phi, align 8
  %1301 = add i64 %1258, -28
  %1302 = add i64 %1243, 59
  store i64 %1302, i64* %3, align 8
  %1303 = inttoptr i64 %1301 to i32*
  %1304 = load i32, i32* %1303, align 4
  %1305 = add i32 %1304, %1299
  %1306 = zext i32 %1305 to i64
  store i64 %1306, i64* %RDX.i2263.pre-phi, align 8
  %1307 = icmp ult i32 %1305, %1299
  %1308 = icmp ult i32 %1305, %1304
  %1309 = or i1 %1307, %1308
  %1310 = zext i1 %1309 to i8
  store i8 %1310, i8* %55, align 1
  %1311 = and i32 %1305, 255
  %1312 = tail call i32 @llvm.ctpop.i32(i32 %1311)
  %1313 = trunc i32 %1312 to i8
  %1314 = and i8 %1313, 1
  %1315 = xor i8 %1314, 1
  store i8 %1315, i8* %56, align 1
  %1316 = xor i32 %1304, %1299
  %1317 = xor i32 %1316, %1305
  %1318 = lshr i32 %1317, 4
  %1319 = trunc i32 %1318 to i8
  %1320 = and i8 %1319, 1
  store i8 %1320, i8* %57, align 1
  %1321 = icmp eq i32 %1305, 0
  %1322 = zext i1 %1321 to i8
  store i8 %1322, i8* %60, align 1
  %1323 = lshr i32 %1305, 31
  %1324 = trunc i32 %1323 to i8
  store i8 %1324, i8* %61, align 1
  %1325 = lshr i32 %1299, 31
  %1326 = lshr i32 %1304, 31
  %1327 = xor i32 %1323, %1325
  %1328 = xor i32 %1323, %1326
  %1329 = add nuw nsw i32 %1327, %1328
  %1330 = icmp eq i32 %1329, 2
  %1331 = zext i1 %1330 to i8
  store i8 %1331, i8* %62, align 1
  %1332 = sext i32 %1305 to i64
  store i64 %1332, i64* %RCX.i2321, align 8
  %1333 = shl nsw i64 %1332, 3
  %1334 = add i64 %1295, %1333
  %1335 = add i64 %1243, 70
  store i64 %1335, i64* %3, align 8
  %1336 = inttoptr i64 %1334 to i64*
  store i64 -1, i64* %1336, align 8
  %1337 = load i64, i64* %3, align 8
  %1338 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %1338, i64* %RAX.i2329, align 8
  %1339 = add i64 %1338, 6488
  %1340 = add i64 %1337, 15
  store i64 %1340, i64* %3, align 8
  %1341 = inttoptr i64 %1339 to i64*
  %1342 = load i64, i64* %1341, align 8
  store i64 %1342, i64* %RAX.i2329, align 8
  %1343 = add i64 %1342, 8
  %1344 = add i64 %1337, 19
  store i64 %1344, i64* %3, align 8
  %1345 = inttoptr i64 %1343 to i64*
  %1346 = load i64, i64* %1345, align 8
  store i64 %1346, i64* %RAX.i2329, align 8
  %1347 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1347, i64* %RCX.i2321, align 8
  %1348 = add i64 %1347, 144
  %1349 = add i64 %1337, 33
  store i64 %1349, i64* %3, align 8
  %1350 = inttoptr i64 %1348 to i32*
  %1351 = load i32, i32* %1350, align 4
  %1352 = zext i32 %1351 to i64
  store i64 %1352, i64* %RDX.i2263.pre-phi, align 8
  %1353 = load i64, i64* %RBP.i, align 8
  %1354 = add i64 %1353, -24
  %1355 = add i64 %1337, 36
  store i64 %1355, i64* %3, align 8
  %1356 = inttoptr i64 %1354 to i32*
  %1357 = load i32, i32* %1356, align 4
  %1358 = add i32 %1357, %1351
  %1359 = zext i32 %1358 to i64
  store i64 %1359, i64* %RDX.i2263.pre-phi, align 8
  %1360 = icmp ult i32 %1358, %1351
  %1361 = icmp ult i32 %1358, %1357
  %1362 = or i1 %1360, %1361
  %1363 = zext i1 %1362 to i8
  store i8 %1363, i8* %55, align 1
  %1364 = and i32 %1358, 255
  %1365 = tail call i32 @llvm.ctpop.i32(i32 %1364)
  %1366 = trunc i32 %1365 to i8
  %1367 = and i8 %1366, 1
  %1368 = xor i8 %1367, 1
  store i8 %1368, i8* %56, align 1
  %1369 = xor i32 %1357, %1351
  %1370 = xor i32 %1369, %1358
  %1371 = lshr i32 %1370, 4
  %1372 = trunc i32 %1371 to i8
  %1373 = and i8 %1372, 1
  store i8 %1373, i8* %57, align 1
  %1374 = icmp eq i32 %1358, 0
  %1375 = zext i1 %1374 to i8
  store i8 %1375, i8* %60, align 1
  %1376 = lshr i32 %1358, 31
  %1377 = trunc i32 %1376 to i8
  store i8 %1377, i8* %61, align 1
  %1378 = lshr i32 %1351, 31
  %1379 = lshr i32 %1357, 31
  %1380 = xor i32 %1376, %1378
  %1381 = xor i32 %1376, %1379
  %1382 = add nuw nsw i32 %1380, %1381
  %1383 = icmp eq i32 %1382, 2
  %1384 = zext i1 %1383 to i8
  store i8 %1384, i8* %62, align 1
  %1385 = sext i32 %1358 to i64
  store i64 %1385, i64* %RCX.i2321, align 8
  %1386 = shl nsw i64 %1385, 3
  %1387 = add i64 %1346, %1386
  %1388 = add i64 %1337, 43
  store i64 %1388, i64* %3, align 8
  %1389 = inttoptr i64 %1387 to i64*
  %1390 = load i64, i64* %1389, align 8
  store i64 %1390, i64* %RAX.i2329, align 8
  store i64 %1347, i64* %RCX.i2321, align 8
  %1391 = add i64 %1347, 148
  %1392 = add i64 %1337, 57
  store i64 %1392, i64* %3, align 8
  %1393 = inttoptr i64 %1391 to i32*
  %1394 = load i32, i32* %1393, align 4
  %1395 = zext i32 %1394 to i64
  store i64 %1395, i64* %RDX.i2263.pre-phi, align 8
  %1396 = add i64 %1353, -28
  %1397 = add i64 %1337, 60
  store i64 %1397, i64* %3, align 8
  %1398 = inttoptr i64 %1396 to i32*
  %1399 = load i32, i32* %1398, align 4
  %1400 = add i32 %1399, %1394
  %1401 = zext i32 %1400 to i64
  store i64 %1401, i64* %RDX.i2263.pre-phi, align 8
  %1402 = icmp ult i32 %1400, %1394
  %1403 = icmp ult i32 %1400, %1399
  %1404 = or i1 %1402, %1403
  %1405 = zext i1 %1404 to i8
  store i8 %1405, i8* %55, align 1
  %1406 = and i32 %1400, 255
  %1407 = tail call i32 @llvm.ctpop.i32(i32 %1406)
  %1408 = trunc i32 %1407 to i8
  %1409 = and i8 %1408, 1
  %1410 = xor i8 %1409, 1
  store i8 %1410, i8* %56, align 1
  %1411 = xor i32 %1399, %1394
  %1412 = xor i32 %1411, %1400
  %1413 = lshr i32 %1412, 4
  %1414 = trunc i32 %1413 to i8
  %1415 = and i8 %1414, 1
  store i8 %1415, i8* %57, align 1
  %1416 = icmp eq i32 %1400, 0
  %1417 = zext i1 %1416 to i8
  store i8 %1417, i8* %60, align 1
  %1418 = lshr i32 %1400, 31
  %1419 = trunc i32 %1418 to i8
  store i8 %1419, i8* %61, align 1
  %1420 = lshr i32 %1394, 31
  %1421 = lshr i32 %1399, 31
  %1422 = xor i32 %1418, %1420
  %1423 = xor i32 %1418, %1421
  %1424 = add nuw nsw i32 %1422, %1423
  %1425 = icmp eq i32 %1424, 2
  %1426 = zext i1 %1425 to i8
  store i8 %1426, i8* %62, align 1
  %1427 = sext i32 %1400 to i64
  store i64 %1427, i64* %RCX.i2321, align 8
  %1428 = shl nsw i64 %1427, 3
  %1429 = add i64 %1390, %1428
  %1430 = add i64 %1337, 71
  store i64 %1430, i64* %3, align 8
  %1431 = inttoptr i64 %1429 to i64*
  store i64 -1, i64* %1431, align 8
  %1432 = load i64, i64* %RBP.i, align 8
  %1433 = add i64 %1432, -24
  %1434 = load i64, i64* %3, align 8
  %1435 = add i64 %1434, 3
  store i64 %1435, i64* %3, align 8
  %1436 = inttoptr i64 %1433 to i32*
  %1437 = load i32, i32* %1436, align 4
  %1438 = add i32 %1437, 1
  %1439 = zext i32 %1438 to i64
  store i64 %1439, i64* %RAX.i2329, align 8
  %1440 = icmp eq i32 %1437, -1
  %1441 = icmp eq i32 %1438, 0
  %1442 = or i1 %1440, %1441
  %1443 = zext i1 %1442 to i8
  store i8 %1443, i8* %55, align 1
  %1444 = and i32 %1438, 255
  %1445 = tail call i32 @llvm.ctpop.i32(i32 %1444)
  %1446 = trunc i32 %1445 to i8
  %1447 = and i8 %1446, 1
  %1448 = xor i8 %1447, 1
  store i8 %1448, i8* %56, align 1
  %1449 = xor i32 %1438, %1437
  %1450 = lshr i32 %1449, 4
  %1451 = trunc i32 %1450 to i8
  %1452 = and i8 %1451, 1
  store i8 %1452, i8* %57, align 1
  %1453 = zext i1 %1441 to i8
  store i8 %1453, i8* %60, align 1
  %1454 = lshr i32 %1438, 31
  %1455 = trunc i32 %1454 to i8
  store i8 %1455, i8* %61, align 1
  %1456 = lshr i32 %1437, 31
  %1457 = xor i32 %1454, %1456
  %1458 = add nuw nsw i32 %1457, %1454
  %1459 = icmp eq i32 %1458, 2
  %1460 = zext i1 %1459 to i8
  store i8 %1460, i8* %62, align 1
  %1461 = add i64 %1434, 9
  store i64 %1461, i64* %3, align 8
  store i32 %1438, i32* %1436, align 4
  %1462 = load i64, i64* %3, align 8
  %1463 = add i64 %1462, -587
  store i64 %1463, i64* %3, align 8
  br label %block_.L_48fc91

block_.L_48fee1:                                  ; preds = %block_.L_48fc91
  %1464 = add i64 %631, -28
  %1465 = add i64 %667, 8
  store i64 %1465, i64* %3, align 8
  %1466 = inttoptr i64 %1464 to i32*
  %1467 = load i32, i32* %1466, align 4
  %1468 = add i32 %1467, 1
  %1469 = zext i32 %1468 to i64
  store i64 %1469, i64* %RAX.i2329, align 8
  %1470 = icmp eq i32 %1467, -1
  %1471 = icmp eq i32 %1468, 0
  %1472 = or i1 %1470, %1471
  %1473 = zext i1 %1472 to i8
  store i8 %1473, i8* %55, align 1
  %1474 = and i32 %1468, 255
  %1475 = tail call i32 @llvm.ctpop.i32(i32 %1474)
  %1476 = trunc i32 %1475 to i8
  %1477 = and i8 %1476, 1
  %1478 = xor i8 %1477, 1
  store i8 %1478, i8* %56, align 1
  %1479 = xor i32 %1468, %1467
  %1480 = lshr i32 %1479, 4
  %1481 = trunc i32 %1480 to i8
  %1482 = and i8 %1481, 1
  store i8 %1482, i8* %57, align 1
  %1483 = zext i1 %1471 to i8
  store i8 %1483, i8* %60, align 1
  %1484 = lshr i32 %1468, 31
  %1485 = trunc i32 %1484 to i8
  store i8 %1485, i8* %61, align 1
  %1486 = lshr i32 %1467, 31
  %1487 = xor i32 %1484, %1486
  %1488 = add nuw nsw i32 %1487, %1484
  %1489 = icmp eq i32 %1488, 2
  %1490 = zext i1 %1489 to i8
  store i8 %1490, i8* %62, align 1
  %1491 = add i64 %667, 14
  store i64 %1491, i64* %3, align 8
  store i32 %1468, i32* %1466, align 4
  %1492 = load i64, i64* %3, align 8
  %1493 = add i64 %1492, -624
  store i64 %1493, i64* %3, align 8
  br label %block_.L_48fc7f

block_.L_48fef9:                                  ; preds = %block_.L_48fc40
  %1494 = add i64 %559, -32
  %1495 = add i64 %575, 4
  store i64 %1495, i64* %3, align 8
  %1496 = inttoptr i64 %1494 to i32*
  %1497 = load i32, i32* %1496, align 4
  store i8 0, i8* %55, align 1
  %1498 = and i32 %1497, 255
  %1499 = tail call i32 @llvm.ctpop.i32(i32 %1498)
  %1500 = trunc i32 %1499 to i8
  %1501 = and i8 %1500, 1
  %1502 = xor i8 %1501, 1
  store i8 %1502, i8* %56, align 1
  store i8 0, i8* %57, align 1
  %1503 = icmp eq i32 %1497, 0
  %1504 = zext i1 %1503 to i8
  store i8 %1504, i8* %60, align 1
  %1505 = lshr i32 %1497, 31
  %1506 = trunc i32 %1505 to i8
  store i8 %1506, i8* %61, align 1
  store i8 0, i8* %62, align 1
  %.v62 = select i1 %1503, i64 10, i64 570
  %1507 = add i64 %575, %.v62
  %1508 = add i64 %559, -40
  %1509 = add i64 %1507, 3
  store i64 %1509, i64* %3, align 8
  %1510 = inttoptr i64 %1508 to i32*
  %1511 = load i32, i32* %1510, align 4
  %1512 = zext i32 %1511 to i64
  store i64 %1512, i64* %RAX.i2329, align 8
  %1513 = add i64 %559, -28
  %1514 = add i64 %1507, 6
  store i64 %1514, i64* %3, align 8
  %1515 = inttoptr i64 %1513 to i32*
  store i32 %1511, i32* %1515, align 4
  %DX.i1069 = bitcast %union.anon* %23 to i16*
  %.pre48 = load i64, i64* %3, align 8
  br i1 %1503, label %block_.L_48ff09.preheader, label %block_.L_490139.preheader

block_.L_490139.preheader:                        ; preds = %block_.L_48fef9
  br label %block_.L_490139

block_.L_48ff09.preheader:                        ; preds = %block_.L_48fef9
  br label %block_.L_48ff09

block_.L_48ff09:                                  ; preds = %block_.L_48ff09.preheader, %block_.L_49011b
  %1516 = phi i64 [ %2285, %block_.L_49011b ], [ %.pre48, %block_.L_48ff09.preheader ]
  %1517 = load i64, i64* %RBP.i, align 8
  %1518 = add i64 %1517, -28
  %1519 = add i64 %1516, 3
  store i64 %1519, i64* %3, align 8
  %1520 = inttoptr i64 %1518 to i32*
  %1521 = load i32, i32* %1520, align 4
  %1522 = zext i32 %1521 to i64
  store i64 %1522, i64* %RAX.i2329, align 8
  %1523 = add i64 %1517, -48
  %1524 = add i64 %1516, 6
  store i64 %1524, i64* %3, align 8
  %1525 = inttoptr i64 %1523 to i32*
  %1526 = load i32, i32* %1525, align 4
  %1527 = sub i32 %1521, %1526
  %1528 = icmp ult i32 %1521, %1526
  %1529 = zext i1 %1528 to i8
  store i8 %1529, i8* %55, align 1
  %1530 = and i32 %1527, 255
  %1531 = tail call i32 @llvm.ctpop.i32(i32 %1530)
  %1532 = trunc i32 %1531 to i8
  %1533 = and i8 %1532, 1
  %1534 = xor i8 %1533, 1
  store i8 %1534, i8* %56, align 1
  %1535 = xor i32 %1526, %1521
  %1536 = xor i32 %1535, %1527
  %1537 = lshr i32 %1536, 4
  %1538 = trunc i32 %1537 to i8
  %1539 = and i8 %1538, 1
  store i8 %1539, i8* %57, align 1
  %1540 = icmp eq i32 %1527, 0
  %1541 = zext i1 %1540 to i8
  store i8 %1541, i8* %60, align 1
  %1542 = lshr i32 %1527, 31
  %1543 = trunc i32 %1542 to i8
  store i8 %1543, i8* %61, align 1
  %1544 = lshr i32 %1521, 31
  %1545 = lshr i32 %1526, 31
  %1546 = xor i32 %1545, %1544
  %1547 = xor i32 %1542, %1544
  %1548 = add nuw nsw i32 %1547, %1546
  %1549 = icmp eq i32 %1548, 2
  %1550 = zext i1 %1549 to i8
  store i8 %1550, i8* %62, align 1
  %1551 = icmp ne i8 %1543, 0
  %1552 = xor i1 %1551, %1549
  %.v85 = select i1 %1552, i64 12, i64 549
  %1553 = add i64 %1516, %.v85
  store i64 %1553, i64* %3, align 8
  br i1 %1552, label %block_48ff15, label %block_.L_490c5d.loopexit107

block_48ff15:                                     ; preds = %block_.L_48ff09
  %1554 = add i64 %1517, -44
  %1555 = add i64 %1553, 3
  store i64 %1555, i64* %3, align 8
  %1556 = inttoptr i64 %1554 to i32*
  %1557 = load i32, i32* %1556, align 4
  %1558 = zext i32 %1557 to i64
  store i64 %1558, i64* %RAX.i2329, align 8
  %1559 = add i64 %1517, -24
  %1560 = add i64 %1553, 6
  store i64 %1560, i64* %3, align 8
  %1561 = inttoptr i64 %1559 to i32*
  store i32 %1557, i32* %1561, align 4
  %.pre49 = load i64, i64* %3, align 8
  br label %block_.L_48ff1b

block_.L_48ff1b:                                  ; preds = %block_48ff27, %block_48ff15
  %1562 = phi i64 [ %2255, %block_48ff27 ], [ %.pre49, %block_48ff15 ]
  %1563 = load i64, i64* %RBP.i, align 8
  %1564 = add i64 %1563, -24
  %1565 = add i64 %1562, 3
  store i64 %1565, i64* %3, align 8
  %1566 = inttoptr i64 %1564 to i32*
  %1567 = load i32, i32* %1566, align 4
  %1568 = zext i32 %1567 to i64
  store i64 %1568, i64* %RAX.i2329, align 8
  %1569 = add i64 %1563, -52
  %1570 = add i64 %1562, 6
  store i64 %1570, i64* %3, align 8
  %1571 = inttoptr i64 %1569 to i32*
  %1572 = load i32, i32* %1571, align 4
  %1573 = sub i32 %1567, %1572
  %1574 = icmp ult i32 %1567, %1572
  %1575 = zext i1 %1574 to i8
  store i8 %1575, i8* %55, align 1
  %1576 = and i32 %1573, 255
  %1577 = tail call i32 @llvm.ctpop.i32(i32 %1576)
  %1578 = trunc i32 %1577 to i8
  %1579 = and i8 %1578, 1
  %1580 = xor i8 %1579, 1
  store i8 %1580, i8* %56, align 1
  %1581 = xor i32 %1572, %1567
  %1582 = xor i32 %1581, %1573
  %1583 = lshr i32 %1582, 4
  %1584 = trunc i32 %1583 to i8
  %1585 = and i8 %1584, 1
  store i8 %1585, i8* %57, align 1
  %1586 = icmp eq i32 %1573, 0
  %1587 = zext i1 %1586 to i8
  store i8 %1587, i8* %60, align 1
  %1588 = lshr i32 %1573, 31
  %1589 = trunc i32 %1588 to i8
  store i8 %1589, i8* %61, align 1
  %1590 = lshr i32 %1567, 31
  %1591 = lshr i32 %1572, 31
  %1592 = xor i32 %1591, %1590
  %1593 = xor i32 %1588, %1590
  %1594 = add nuw nsw i32 %1593, %1592
  %1595 = icmp eq i32 %1594, 2
  %1596 = zext i1 %1595 to i8
  store i8 %1596, i8* %62, align 1
  %1597 = icmp ne i8 %1589, 0
  %1598 = xor i1 %1597, %1595
  %.v63 = select i1 %1598, i64 12, i64 512
  %1599 = add i64 %1562, %.v63
  store i64 %1599, i64* %3, align 8
  br i1 %1598, label %block_48ff27, label %block_.L_49011b

block_48ff27:                                     ; preds = %block_.L_48ff1b
  %1600 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1600, i64* %RAX.i2329, align 8
  %1601 = add i64 %1600, 71928
  %1602 = add i64 %1599, 15
  store i64 %1602, i64* %3, align 8
  %1603 = inttoptr i64 %1601 to i64*
  %1604 = load i64, i64* %1603, align 8
  store i64 %1604, i64* %RAX.i2329, align 8
  %1605 = add i64 %1599, 19
  store i64 %1605, i64* %3, align 8
  %1606 = load i32, i32* %1566, align 4
  %1607 = sext i32 %1606 to i64
  store i64 %1607, i64* %RCX.i2321, align 8
  %1608 = shl nsw i64 %1607, 3
  %1609 = add i64 %1608, %1604
  %1610 = add i64 %1599, 23
  store i64 %1610, i64* %3, align 8
  %1611 = inttoptr i64 %1609 to i64*
  %1612 = load i64, i64* %1611, align 8
  store i64 %1612, i64* %RAX.i2329, align 8
  %1613 = add i64 %1563, -28
  %1614 = add i64 %1599, 27
  store i64 %1614, i64* %3, align 8
  %1615 = inttoptr i64 %1613 to i32*
  %1616 = load i32, i32* %1615, align 4
  %1617 = sext i32 %1616 to i64
  store i64 %1617, i64* %RCX.i2321, align 8
  %1618 = shl nsw i64 %1617, 3
  %1619 = add i64 %1618, %1612
  %1620 = add i64 %1599, 31
  store i64 %1620, i64* %3, align 8
  %1621 = inttoptr i64 %1619 to i64*
  %1622 = load i64, i64* %1621, align 8
  store i64 %1622, i64* %RAX.i2329, align 8
  %1623 = add i64 %1599, 34
  store i64 %1623, i64* %3, align 8
  %1624 = inttoptr i64 %1622 to i64*
  %1625 = load i64, i64* %1624, align 8
  store i64 %1625, i64* %RAX.i2329, align 8
  %1626 = add i64 %1563, -16
  %1627 = add i64 %1599, 38
  store i64 %1627, i64* %3, align 8
  %1628 = inttoptr i64 %1626 to i32*
  %1629 = load i32, i32* %1628, align 4
  %1630 = sext i32 %1629 to i64
  store i64 %1630, i64* %RCX.i2321, align 8
  %1631 = shl nsw i64 %1630, 3
  %1632 = add i64 %1631, %1625
  %1633 = add i64 %1599, 42
  store i64 %1633, i64* %3, align 8
  %1634 = inttoptr i64 %1632 to i64*
  %1635 = load i64, i64* %1634, align 8
  store i64 %1635, i64* %RAX.i2329, align 8
  %1636 = add i64 %1563, -8
  %1637 = add i64 %1599, 46
  store i64 %1637, i64* %3, align 8
  %1638 = inttoptr i64 %1636 to i32*
  %1639 = load i32, i32* %1638, align 4
  %1640 = sext i32 %1639 to i64
  store i64 %1640, i64* %RCX.i2321, align 8
  %1641 = shl nsw i64 %1640, 3
  %1642 = add i64 %1641, %1635
  %1643 = add i64 %1599, 50
  store i64 %1643, i64* %3, align 8
  %1644 = inttoptr i64 %1642 to i64*
  %1645 = load i64, i64* %1644, align 8
  store i64 %1645, i64* %RAX.i2329, align 8
  %1646 = add i64 %1599, 53
  store i64 %1646, i64* %3, align 8
  %1647 = inttoptr i64 %1645 to i16*
  %1648 = load i16, i16* %1647, align 2
  store i16 %1648, i16* %DX.i1069, align 2
  %1649 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %1649, i64* %RAX.i2329, align 8
  %1650 = add i64 %1649, 6504
  %1651 = add i64 %1599, 68
  store i64 %1651, i64* %3, align 8
  %1652 = inttoptr i64 %1650 to i64*
  %1653 = load i64, i64* %1652, align 8
  store i64 %1653, i64* %RAX.i2329, align 8
  %1654 = add i64 %1599, 71
  store i64 %1654, i64* %3, align 8
  %1655 = inttoptr i64 %1653 to i64*
  %1656 = load i64, i64* %1655, align 8
  store i64 %1656, i64* %RAX.i2329, align 8
  store i64 %1600, i64* %RCX.i2321, align 8
  %1657 = add i64 %1600, 144
  %1658 = add i64 %1599, 85
  store i64 %1658, i64* %3, align 8
  %1659 = inttoptr i64 %1657 to i32*
  %1660 = load i32, i32* %1659, align 4
  %1661 = zext i32 %1660 to i64
  store i64 %1661, i64* %RSI.i2255, align 8
  %1662 = add i64 %1599, 88
  store i64 %1662, i64* %3, align 8
  %1663 = load i32, i32* %1566, align 4
  %1664 = add i32 %1663, %1660
  %1665 = zext i32 %1664 to i64
  store i64 %1665, i64* %RSI.i2255, align 8
  %1666 = icmp ult i32 %1664, %1660
  %1667 = icmp ult i32 %1664, %1663
  %1668 = or i1 %1666, %1667
  %1669 = zext i1 %1668 to i8
  store i8 %1669, i8* %55, align 1
  %1670 = and i32 %1664, 255
  %1671 = tail call i32 @llvm.ctpop.i32(i32 %1670)
  %1672 = trunc i32 %1671 to i8
  %1673 = and i8 %1672, 1
  %1674 = xor i8 %1673, 1
  store i8 %1674, i8* %56, align 1
  %1675 = xor i32 %1663, %1660
  %1676 = xor i32 %1675, %1664
  %1677 = lshr i32 %1676, 4
  %1678 = trunc i32 %1677 to i8
  %1679 = and i8 %1678, 1
  store i8 %1679, i8* %57, align 1
  %1680 = icmp eq i32 %1664, 0
  %1681 = zext i1 %1680 to i8
  store i8 %1681, i8* %60, align 1
  %1682 = lshr i32 %1664, 31
  %1683 = trunc i32 %1682 to i8
  store i8 %1683, i8* %61, align 1
  %1684 = lshr i32 %1660, 31
  %1685 = lshr i32 %1663, 31
  %1686 = xor i32 %1682, %1684
  %1687 = xor i32 %1682, %1685
  %1688 = add nuw nsw i32 %1686, %1687
  %1689 = icmp eq i32 %1688, 2
  %1690 = zext i1 %1689 to i8
  store i8 %1690, i8* %62, align 1
  %1691 = sext i32 %1664 to i64
  store i64 %1691, i64* %RCX.i2321, align 8
  %1692 = shl nsw i64 %1691, 3
  %1693 = add i64 %1656, %1692
  %1694 = add i64 %1599, 95
  store i64 %1694, i64* %3, align 8
  %1695 = inttoptr i64 %1693 to i64*
  %1696 = load i64, i64* %1695, align 8
  store i64 %1696, i64* %RAX.i2329, align 8
  %1697 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1697, i64* %RCX.i2321, align 8
  %1698 = add i64 %1697, 148
  %1699 = add i64 %1599, 109
  store i64 %1699, i64* %3, align 8
  %1700 = inttoptr i64 %1698 to i32*
  %1701 = load i32, i32* %1700, align 4
  %1702 = zext i32 %1701 to i64
  store i64 %1702, i64* %RSI.i2255, align 8
  %1703 = load i64, i64* %RBP.i, align 8
  %1704 = add i64 %1703, -28
  %1705 = add i64 %1599, 112
  store i64 %1705, i64* %3, align 8
  %1706 = inttoptr i64 %1704 to i32*
  %1707 = load i32, i32* %1706, align 4
  %1708 = add i32 %1707, %1701
  %1709 = zext i32 %1708 to i64
  store i64 %1709, i64* %RSI.i2255, align 8
  %1710 = icmp ult i32 %1708, %1701
  %1711 = icmp ult i32 %1708, %1707
  %1712 = or i1 %1710, %1711
  %1713 = zext i1 %1712 to i8
  store i8 %1713, i8* %55, align 1
  %1714 = and i32 %1708, 255
  %1715 = tail call i32 @llvm.ctpop.i32(i32 %1714)
  %1716 = trunc i32 %1715 to i8
  %1717 = and i8 %1716, 1
  %1718 = xor i8 %1717, 1
  store i8 %1718, i8* %56, align 1
  %1719 = xor i32 %1707, %1701
  %1720 = xor i32 %1719, %1708
  %1721 = lshr i32 %1720, 4
  %1722 = trunc i32 %1721 to i8
  %1723 = and i8 %1722, 1
  store i8 %1723, i8* %57, align 1
  %1724 = icmp eq i32 %1708, 0
  %1725 = zext i1 %1724 to i8
  store i8 %1725, i8* %60, align 1
  %1726 = lshr i32 %1708, 31
  %1727 = trunc i32 %1726 to i8
  store i8 %1727, i8* %61, align 1
  %1728 = lshr i32 %1701, 31
  %1729 = lshr i32 %1707, 31
  %1730 = xor i32 %1726, %1728
  %1731 = xor i32 %1726, %1729
  %1732 = add nuw nsw i32 %1730, %1731
  %1733 = icmp eq i32 %1732, 2
  %1734 = zext i1 %1733 to i8
  store i8 %1734, i8* %62, align 1
  %1735 = sext i32 %1708 to i64
  store i64 %1735, i64* %RCX.i2321, align 8
  %1736 = shl nsw i64 %1735, 3
  %1737 = add i64 %1696, %1736
  %1738 = add i64 %1599, 119
  store i64 %1738, i64* %3, align 8
  %1739 = inttoptr i64 %1737 to i16**
  %1740 = load i16*, i16** %1739, align 8
  %1741 = load i16, i16* %DX.i1069, align 2
  %1742 = add i64 %1599, 122
  store i64 %1742, i64* %3, align 8
  store i16 %1741, i16* %1740, align 2
  %1743 = load i64, i64* %3, align 8
  %1744 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1744, i64* %RAX.i2329, align 8
  %1745 = add i64 %1744, 71928
  %1746 = add i64 %1743, 15
  store i64 %1746, i64* %3, align 8
  %1747 = inttoptr i64 %1745 to i64*
  %1748 = load i64, i64* %1747, align 8
  store i64 %1748, i64* %RAX.i2329, align 8
  %1749 = load i64, i64* %RBP.i, align 8
  %1750 = add i64 %1749, -24
  %1751 = add i64 %1743, 19
  store i64 %1751, i64* %3, align 8
  %1752 = inttoptr i64 %1750 to i32*
  %1753 = load i32, i32* %1752, align 4
  %1754 = sext i32 %1753 to i64
  store i64 %1754, i64* %RCX.i2321, align 8
  %1755 = shl nsw i64 %1754, 3
  %1756 = add i64 %1755, %1748
  %1757 = add i64 %1743, 23
  store i64 %1757, i64* %3, align 8
  %1758 = inttoptr i64 %1756 to i64*
  %1759 = load i64, i64* %1758, align 8
  store i64 %1759, i64* %RAX.i2329, align 8
  %1760 = add i64 %1749, -28
  %1761 = add i64 %1743, 27
  store i64 %1761, i64* %3, align 8
  %1762 = inttoptr i64 %1760 to i32*
  %1763 = load i32, i32* %1762, align 4
  %1764 = sext i32 %1763 to i64
  store i64 %1764, i64* %RCX.i2321, align 8
  %1765 = shl nsw i64 %1764, 3
  %1766 = add i64 %1765, %1759
  %1767 = add i64 %1743, 31
  store i64 %1767, i64* %3, align 8
  %1768 = inttoptr i64 %1766 to i64*
  %1769 = load i64, i64* %1768, align 8
  store i64 %1769, i64* %RAX.i2329, align 8
  %1770 = add i64 %1743, 34
  store i64 %1770, i64* %3, align 8
  %1771 = inttoptr i64 %1769 to i64*
  %1772 = load i64, i64* %1771, align 8
  store i64 %1772, i64* %RAX.i2329, align 8
  %1773 = add i64 %1749, -16
  %1774 = add i64 %1743, 38
  store i64 %1774, i64* %3, align 8
  %1775 = inttoptr i64 %1773 to i32*
  %1776 = load i32, i32* %1775, align 4
  %1777 = sext i32 %1776 to i64
  store i64 %1777, i64* %RCX.i2321, align 8
  %1778 = shl nsw i64 %1777, 3
  %1779 = add i64 %1778, %1772
  %1780 = add i64 %1743, 42
  store i64 %1780, i64* %3, align 8
  %1781 = inttoptr i64 %1779 to i64*
  %1782 = load i64, i64* %1781, align 8
  store i64 %1782, i64* %RAX.i2329, align 8
  %1783 = add i64 %1749, -8
  %1784 = add i64 %1743, 46
  store i64 %1784, i64* %3, align 8
  %1785 = inttoptr i64 %1783 to i32*
  %1786 = load i32, i32* %1785, align 4
  %1787 = sext i32 %1786 to i64
  store i64 %1787, i64* %RCX.i2321, align 8
  %1788 = shl nsw i64 %1787, 3
  %1789 = add i64 %1788, %1782
  %1790 = add i64 %1743, 50
  store i64 %1790, i64* %3, align 8
  %1791 = inttoptr i64 %1789 to i64*
  %1792 = load i64, i64* %1791, align 8
  store i64 %1792, i64* %RAX.i2329, align 8
  %1793 = add i64 %1792, 2
  %1794 = add i64 %1743, 54
  store i64 %1794, i64* %3, align 8
  %1795 = inttoptr i64 %1793 to i16*
  %1796 = load i16, i16* %1795, align 2
  store i16 %1796, i16* %DX.i1069, align 2
  %1797 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %1797, i64* %RAX.i2329, align 8
  %1798 = add i64 %1797, 6504
  %1799 = add i64 %1743, 69
  store i64 %1799, i64* %3, align 8
  %1800 = inttoptr i64 %1798 to i64*
  %1801 = load i64, i64* %1800, align 8
  store i64 %1801, i64* %RAX.i2329, align 8
  %1802 = add i64 %1743, 72
  store i64 %1802, i64* %3, align 8
  %1803 = inttoptr i64 %1801 to i64*
  %1804 = load i64, i64* %1803, align 8
  store i64 %1804, i64* %RAX.i2329, align 8
  store i64 %1744, i64* %RCX.i2321, align 8
  %1805 = add i64 %1744, 144
  %1806 = add i64 %1743, 86
  store i64 %1806, i64* %3, align 8
  %1807 = inttoptr i64 %1805 to i32*
  %1808 = load i32, i32* %1807, align 4
  %1809 = zext i32 %1808 to i64
  store i64 %1809, i64* %RSI.i2255, align 8
  %1810 = add i64 %1743, 89
  store i64 %1810, i64* %3, align 8
  %1811 = load i32, i32* %1752, align 4
  %1812 = add i32 %1811, %1808
  %1813 = zext i32 %1812 to i64
  store i64 %1813, i64* %RSI.i2255, align 8
  %1814 = icmp ult i32 %1812, %1808
  %1815 = icmp ult i32 %1812, %1811
  %1816 = or i1 %1814, %1815
  %1817 = zext i1 %1816 to i8
  store i8 %1817, i8* %55, align 1
  %1818 = and i32 %1812, 255
  %1819 = tail call i32 @llvm.ctpop.i32(i32 %1818)
  %1820 = trunc i32 %1819 to i8
  %1821 = and i8 %1820, 1
  %1822 = xor i8 %1821, 1
  store i8 %1822, i8* %56, align 1
  %1823 = xor i32 %1811, %1808
  %1824 = xor i32 %1823, %1812
  %1825 = lshr i32 %1824, 4
  %1826 = trunc i32 %1825 to i8
  %1827 = and i8 %1826, 1
  store i8 %1827, i8* %57, align 1
  %1828 = icmp eq i32 %1812, 0
  %1829 = zext i1 %1828 to i8
  store i8 %1829, i8* %60, align 1
  %1830 = lshr i32 %1812, 31
  %1831 = trunc i32 %1830 to i8
  store i8 %1831, i8* %61, align 1
  %1832 = lshr i32 %1808, 31
  %1833 = lshr i32 %1811, 31
  %1834 = xor i32 %1830, %1832
  %1835 = xor i32 %1830, %1833
  %1836 = add nuw nsw i32 %1834, %1835
  %1837 = icmp eq i32 %1836, 2
  %1838 = zext i1 %1837 to i8
  store i8 %1838, i8* %62, align 1
  %1839 = sext i32 %1812 to i64
  store i64 %1839, i64* %RCX.i2321, align 8
  %1840 = shl nsw i64 %1839, 3
  %1841 = add i64 %1804, %1840
  %1842 = add i64 %1743, 96
  store i64 %1842, i64* %3, align 8
  %1843 = inttoptr i64 %1841 to i64*
  %1844 = load i64, i64* %1843, align 8
  store i64 %1844, i64* %RAX.i2329, align 8
  %1845 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1845, i64* %RCX.i2321, align 8
  %1846 = add i64 %1845, 148
  %1847 = add i64 %1743, 110
  store i64 %1847, i64* %3, align 8
  %1848 = inttoptr i64 %1846 to i32*
  %1849 = load i32, i32* %1848, align 4
  %1850 = zext i32 %1849 to i64
  store i64 %1850, i64* %RSI.i2255, align 8
  %1851 = load i64, i64* %RBP.i, align 8
  %1852 = add i64 %1851, -28
  %1853 = add i64 %1743, 113
  store i64 %1853, i64* %3, align 8
  %1854 = inttoptr i64 %1852 to i32*
  %1855 = load i32, i32* %1854, align 4
  %1856 = add i32 %1855, %1849
  %1857 = zext i32 %1856 to i64
  store i64 %1857, i64* %RSI.i2255, align 8
  %1858 = icmp ult i32 %1856, %1849
  %1859 = icmp ult i32 %1856, %1855
  %1860 = or i1 %1858, %1859
  %1861 = zext i1 %1860 to i8
  store i8 %1861, i8* %55, align 1
  %1862 = and i32 %1856, 255
  %1863 = tail call i32 @llvm.ctpop.i32(i32 %1862)
  %1864 = trunc i32 %1863 to i8
  %1865 = and i8 %1864, 1
  %1866 = xor i8 %1865, 1
  store i8 %1866, i8* %56, align 1
  %1867 = xor i32 %1855, %1849
  %1868 = xor i32 %1867, %1856
  %1869 = lshr i32 %1868, 4
  %1870 = trunc i32 %1869 to i8
  %1871 = and i8 %1870, 1
  store i8 %1871, i8* %57, align 1
  %1872 = icmp eq i32 %1856, 0
  %1873 = zext i1 %1872 to i8
  store i8 %1873, i8* %60, align 1
  %1874 = lshr i32 %1856, 31
  %1875 = trunc i32 %1874 to i8
  store i8 %1875, i8* %61, align 1
  %1876 = lshr i32 %1849, 31
  %1877 = lshr i32 %1855, 31
  %1878 = xor i32 %1874, %1876
  %1879 = xor i32 %1874, %1877
  %1880 = add nuw nsw i32 %1878, %1879
  %1881 = icmp eq i32 %1880, 2
  %1882 = zext i1 %1881 to i8
  store i8 %1882, i8* %62, align 1
  %1883 = sext i32 %1856 to i64
  store i64 %1883, i64* %RCX.i2321, align 8
  %1884 = shl nsw i64 %1883, 3
  %1885 = add i64 %1844, %1884
  %1886 = add i64 %1743, 120
  store i64 %1886, i64* %3, align 8
  %1887 = inttoptr i64 %1885 to i64*
  %1888 = load i64, i64* %1887, align 8
  store i64 %1888, i64* %RAX.i2329, align 8
  %1889 = add i64 %1888, 2
  %1890 = load i16, i16* %DX.i1069, align 2
  %1891 = add i64 %1743, 124
  store i64 %1891, i64* %3, align 8
  %1892 = inttoptr i64 %1889 to i16*
  store i16 %1890, i16* %1892, align 2
  %1893 = load i64, i64* %RBP.i, align 8
  %1894 = add i64 %1893, -16
  %1895 = load i64, i64* %3, align 8
  %1896 = add i64 %1895, 3
  store i64 %1896, i64* %3, align 8
  %1897 = inttoptr i64 %1894 to i32*
  %1898 = load i32, i32* %1897, align 4
  %1899 = zext i32 %1898 to i64
  store i64 %1899, i64* %RSI.i2255, align 8
  %1900 = trunc i32 %1898 to i16
  store i16 %1900, i16* %DX.i1069, align 2
  %1901 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %1901, i64* %RAX.i2329, align 8
  %1902 = add i64 %1901, 6480
  %1903 = add i64 %1895, 21
  store i64 %1903, i64* %3, align 8
  %1904 = inttoptr i64 %1902 to i64*
  %1905 = load i64, i64* %1904, align 8
  store i64 %1905, i64* %RAX.i2329, align 8
  %1906 = add i64 %1895, 24
  store i64 %1906, i64* %3, align 8
  %1907 = inttoptr i64 %1905 to i64*
  %1908 = load i64, i64* %1907, align 8
  store i64 %1908, i64* %RAX.i2329, align 8
  %1909 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1909, i64* %RCX.i2321, align 8
  %1910 = add i64 %1909, 144
  %1911 = add i64 %1895, 38
  store i64 %1911, i64* %3, align 8
  %1912 = inttoptr i64 %1910 to i32*
  %1913 = load i32, i32* %1912, align 4
  %1914 = zext i32 %1913 to i64
  store i64 %1914, i64* %RSI.i2255, align 8
  %1915 = add i64 %1893, -24
  %1916 = add i64 %1895, 41
  store i64 %1916, i64* %3, align 8
  %1917 = inttoptr i64 %1915 to i32*
  %1918 = load i32, i32* %1917, align 4
  %1919 = add i32 %1918, %1913
  %1920 = zext i32 %1919 to i64
  store i64 %1920, i64* %RSI.i2255, align 8
  %1921 = icmp ult i32 %1919, %1913
  %1922 = icmp ult i32 %1919, %1918
  %1923 = or i1 %1921, %1922
  %1924 = zext i1 %1923 to i8
  store i8 %1924, i8* %55, align 1
  %1925 = and i32 %1919, 255
  %1926 = tail call i32 @llvm.ctpop.i32(i32 %1925)
  %1927 = trunc i32 %1926 to i8
  %1928 = and i8 %1927, 1
  %1929 = xor i8 %1928, 1
  store i8 %1929, i8* %56, align 1
  %1930 = xor i32 %1918, %1913
  %1931 = xor i32 %1930, %1919
  %1932 = lshr i32 %1931, 4
  %1933 = trunc i32 %1932 to i8
  %1934 = and i8 %1933, 1
  store i8 %1934, i8* %57, align 1
  %1935 = icmp eq i32 %1919, 0
  %1936 = zext i1 %1935 to i8
  store i8 %1936, i8* %60, align 1
  %1937 = lshr i32 %1919, 31
  %1938 = trunc i32 %1937 to i8
  store i8 %1938, i8* %61, align 1
  %1939 = lshr i32 %1913, 31
  %1940 = lshr i32 %1918, 31
  %1941 = xor i32 %1937, %1939
  %1942 = xor i32 %1937, %1940
  %1943 = add nuw nsw i32 %1941, %1942
  %1944 = icmp eq i32 %1943, 2
  %1945 = zext i1 %1944 to i8
  store i8 %1945, i8* %62, align 1
  %1946 = sext i32 %1919 to i64
  store i64 %1946, i64* %RCX.i2321, align 8
  %1947 = shl nsw i64 %1946, 3
  %1948 = add i64 %1908, %1947
  %1949 = add i64 %1895, 48
  store i64 %1949, i64* %3, align 8
  %1950 = inttoptr i64 %1948 to i64*
  %1951 = load i64, i64* %1950, align 8
  store i64 %1951, i64* %RAX.i2329, align 8
  store i64 %1909, i64* %RCX.i2321, align 8
  %1952 = add i64 %1909, 148
  %1953 = add i64 %1895, 62
  store i64 %1953, i64* %3, align 8
  %1954 = inttoptr i64 %1952 to i32*
  %1955 = load i32, i32* %1954, align 4
  %1956 = zext i32 %1955 to i64
  store i64 %1956, i64* %RSI.i2255, align 8
  %1957 = load i64, i64* %RBP.i, align 8
  %1958 = add i64 %1957, -28
  %1959 = add i64 %1895, 65
  store i64 %1959, i64* %3, align 8
  %1960 = inttoptr i64 %1958 to i32*
  %1961 = load i32, i32* %1960, align 4
  %1962 = add i32 %1961, %1955
  %1963 = zext i32 %1962 to i64
  store i64 %1963, i64* %RSI.i2255, align 8
  %1964 = sext i32 %1962 to i64
  store i64 %1964, i64* %RCX.i2321, align 8
  %1965 = shl nsw i64 %1964, 1
  %1966 = add i64 %1951, %1965
  %1967 = load i16, i16* %DX.i1069, align 2
  %1968 = add i64 %1895, 72
  store i64 %1968, i64* %3, align 8
  %1969 = inttoptr i64 %1966 to i16*
  store i16 %1967, i16* %1969, align 2
  %1970 = load i64, i64* %3, align 8
  %1971 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  %1972 = add i64 %1971, 24
  store i64 %1972, i64* %RAX.i2329, align 8
  %1973 = icmp ugt i64 %1971, -25
  %1974 = zext i1 %1973 to i8
  store i8 %1974, i8* %55, align 1
  %1975 = trunc i64 %1972 to i32
  %1976 = and i32 %1975, 255
  %1977 = tail call i32 @llvm.ctpop.i32(i32 %1976)
  %1978 = trunc i32 %1977 to i8
  %1979 = and i8 %1978, 1
  %1980 = xor i8 %1979, 1
  store i8 %1980, i8* %56, align 1
  %1981 = xor i64 %1971, 16
  %1982 = xor i64 %1981, %1972
  %1983 = lshr i64 %1982, 4
  %1984 = trunc i64 %1983 to i8
  %1985 = and i8 %1984, 1
  store i8 %1985, i8* %57, align 1
  %1986 = icmp eq i64 %1972, 0
  %1987 = zext i1 %1986 to i8
  store i8 %1987, i8* %60, align 1
  %1988 = lshr i64 %1972, 63
  %1989 = trunc i64 %1988 to i8
  store i8 %1989, i8* %61, align 1
  %1990 = lshr i64 %1971, 63
  %1991 = xor i64 %1988, %1990
  %1992 = add nuw nsw i64 %1991, %1988
  %1993 = icmp eq i64 %1992, 2
  %1994 = zext i1 %1993 to i8
  store i8 %1994, i8* %62, align 1
  %1995 = load i64, i64* %RBP.i, align 8
  %1996 = add i64 %1995, -56
  %1997 = add i64 %1970, 15
  store i64 %1997, i64* %3, align 8
  %1998 = inttoptr i64 %1996 to i32*
  %1999 = load i32, i32* %1998, align 4
  %2000 = zext i32 %1999 to i64
  store i64 %2000, i64* %RSI.i2255, align 8
  %2001 = sext i32 %1999 to i64
  %2002 = mul nsw i64 %2001, 264
  %2003 = lshr i64 %2002, 63
  %2004 = add i64 %2002, %1972
  store i64 %2004, i64* %RAX.i2329, align 8
  %2005 = icmp ult i64 %2004, %1972
  %2006 = icmp ult i64 %2004, %2002
  %2007 = or i1 %2005, %2006
  %2008 = zext i1 %2007 to i8
  store i8 %2008, i8* %55, align 1
  %2009 = trunc i64 %2004 to i32
  %2010 = and i32 %2009, 255
  %2011 = tail call i32 @llvm.ctpop.i32(i32 %2010)
  %2012 = trunc i32 %2011 to i8
  %2013 = and i8 %2012, 1
  %2014 = xor i8 %2013, 1
  store i8 %2014, i8* %56, align 1
  %2015 = xor i64 %2002, %1972
  %2016 = xor i64 %2015, %2004
  %2017 = lshr i64 %2016, 4
  %2018 = trunc i64 %2017 to i8
  %2019 = and i8 %2018, 1
  store i8 %2019, i8* %57, align 1
  %2020 = icmp eq i64 %2004, 0
  %2021 = zext i1 %2020 to i8
  store i8 %2021, i8* %60, align 1
  %2022 = lshr i64 %2004, 63
  %2023 = trunc i64 %2022 to i8
  store i8 %2023, i8* %61, align 1
  %2024 = xor i64 %2022, %1988
  %2025 = xor i64 %2022, %2003
  %2026 = add nuw nsw i64 %2024, %2025
  %2027 = icmp eq i64 %2026, 2
  %2028 = zext i1 %2027 to i8
  store i8 %2028, i8* %62, align 1
  %2029 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %2029, i64* %RCX.i2321, align 8
  %2030 = add i64 %2029, 6480
  %2031 = add i64 %1970, 46
  store i64 %2031, i64* %3, align 8
  %2032 = inttoptr i64 %2030 to i64*
  %2033 = load i64, i64* %2032, align 8
  store i64 %2033, i64* %RCX.i2321, align 8
  %2034 = add i64 %1970, 49
  store i64 %2034, i64* %3, align 8
  %2035 = inttoptr i64 %2033 to i64*
  %2036 = load i64, i64* %2035, align 8
  store i64 %2036, i64* %RCX.i2321, align 8
  %2037 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %2037, i64* %RDI.i2252, align 8
  %2038 = add i64 %2037, 144
  %2039 = add i64 %1970, 63
  store i64 %2039, i64* %3, align 8
  %2040 = inttoptr i64 %2038 to i32*
  %2041 = load i32, i32* %2040, align 4
  %2042 = zext i32 %2041 to i64
  store i64 %2042, i64* %RSI.i2255, align 8
  %2043 = load i64, i64* %RBP.i, align 8
  %2044 = add i64 %2043, -24
  %2045 = add i64 %1970, 66
  store i64 %2045, i64* %3, align 8
  %2046 = inttoptr i64 %2044 to i32*
  %2047 = load i32, i32* %2046, align 4
  %2048 = add i32 %2047, %2041
  %2049 = zext i32 %2048 to i64
  store i64 %2049, i64* %RSI.i2255, align 8
  %2050 = icmp ult i32 %2048, %2041
  %2051 = icmp ult i32 %2048, %2047
  %2052 = or i1 %2050, %2051
  %2053 = zext i1 %2052 to i8
  store i8 %2053, i8* %55, align 1
  %2054 = and i32 %2048, 255
  %2055 = tail call i32 @llvm.ctpop.i32(i32 %2054)
  %2056 = trunc i32 %2055 to i8
  %2057 = and i8 %2056, 1
  %2058 = xor i8 %2057, 1
  store i8 %2058, i8* %56, align 1
  %2059 = xor i32 %2047, %2041
  %2060 = xor i32 %2059, %2048
  %2061 = lshr i32 %2060, 4
  %2062 = trunc i32 %2061 to i8
  %2063 = and i8 %2062, 1
  store i8 %2063, i8* %57, align 1
  %2064 = icmp eq i32 %2048, 0
  %2065 = zext i1 %2064 to i8
  store i8 %2065, i8* %60, align 1
  %2066 = lshr i32 %2048, 31
  %2067 = trunc i32 %2066 to i8
  store i8 %2067, i8* %61, align 1
  %2068 = lshr i32 %2041, 31
  %2069 = lshr i32 %2047, 31
  %2070 = xor i32 %2066, %2068
  %2071 = xor i32 %2066, %2069
  %2072 = add nuw nsw i32 %2070, %2071
  %2073 = icmp eq i32 %2072, 2
  %2074 = zext i1 %2073 to i8
  store i8 %2074, i8* %62, align 1
  %2075 = sext i32 %2048 to i64
  store i64 %2075, i64* %RDI.i2252, align 8
  %2076 = shl nsw i64 %2075, 3
  %2077 = add i64 %2036, %2076
  %2078 = add i64 %1970, 73
  store i64 %2078, i64* %3, align 8
  %2079 = inttoptr i64 %2077 to i64*
  %2080 = load i64, i64* %2079, align 8
  store i64 %2080, i64* %RCX.i2321, align 8
  store i64 %2037, i64* %RDI.i2252, align 8
  %2081 = add i64 %2037, 148
  %2082 = add i64 %1970, 87
  store i64 %2082, i64* %3, align 8
  %2083 = inttoptr i64 %2081 to i32*
  %2084 = load i32, i32* %2083, align 4
  %2085 = zext i32 %2084 to i64
  store i64 %2085, i64* %RSI.i2255, align 8
  %2086 = add i64 %2043, -28
  %2087 = add i64 %1970, 90
  store i64 %2087, i64* %3, align 8
  %2088 = inttoptr i64 %2086 to i32*
  %2089 = load i32, i32* %2088, align 4
  %2090 = add i32 %2089, %2084
  %2091 = zext i32 %2090 to i64
  store i64 %2091, i64* %RSI.i2255, align 8
  %2092 = icmp ult i32 %2090, %2084
  %2093 = icmp ult i32 %2090, %2089
  %2094 = or i1 %2092, %2093
  %2095 = zext i1 %2094 to i8
  store i8 %2095, i8* %55, align 1
  %2096 = and i32 %2090, 255
  %2097 = tail call i32 @llvm.ctpop.i32(i32 %2096)
  %2098 = trunc i32 %2097 to i8
  %2099 = and i8 %2098, 1
  %2100 = xor i8 %2099, 1
  store i8 %2100, i8* %56, align 1
  %2101 = xor i32 %2089, %2084
  %2102 = xor i32 %2101, %2090
  %2103 = lshr i32 %2102, 4
  %2104 = trunc i32 %2103 to i8
  %2105 = and i8 %2104, 1
  store i8 %2105, i8* %57, align 1
  %2106 = icmp eq i32 %2090, 0
  %2107 = zext i1 %2106 to i8
  store i8 %2107, i8* %60, align 1
  %2108 = lshr i32 %2090, 31
  %2109 = trunc i32 %2108 to i8
  store i8 %2109, i8* %61, align 1
  %2110 = lshr i32 %2084, 31
  %2111 = lshr i32 %2089, 31
  %2112 = xor i32 %2108, %2110
  %2113 = xor i32 %2108, %2111
  %2114 = add nuw nsw i32 %2112, %2113
  %2115 = icmp eq i32 %2114, 2
  %2116 = zext i1 %2115 to i8
  store i8 %2116, i8* %62, align 1
  %2117 = sext i32 %2090 to i64
  store i64 %2117, i64* %RDI.i2252, align 8
  %2118 = shl nsw i64 %2117, 1
  %2119 = add i64 %2080, %2118
  %2120 = add i64 %1970, 98
  store i64 %2120, i64* %3, align 8
  %2121 = inttoptr i64 %2119 to i16*
  %2122 = load i16, i16* %2121, align 2
  %2123 = sext i16 %2122 to i64
  store i64 %2123, i64* %RCX.i2321, align 8
  %2124 = load i64, i64* %RAX.i2329, align 8
  %2125 = shl nsw i64 %2123, 3
  %2126 = add i64 %2125, %2124
  %2127 = add i64 %1970, 102
  store i64 %2127, i64* %3, align 8
  %2128 = inttoptr i64 %2126 to i64*
  %2129 = load i64, i64* %2128, align 8
  store i64 %2129, i64* %RAX.i2329, align 8
  %2130 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %2130, i64* %RCX.i2321, align 8
  %2131 = add i64 %2130, 6488
  %2132 = add i64 %1970, 117
  store i64 %2132, i64* %3, align 8
  %2133 = inttoptr i64 %2131 to i64*
  %2134 = load i64, i64* %2133, align 8
  store i64 %2134, i64* %RCX.i2321, align 8
  %2135 = add i64 %1970, 120
  store i64 %2135, i64* %3, align 8
  %2136 = inttoptr i64 %2134 to i64*
  %2137 = load i64, i64* %2136, align 8
  store i64 %2137, i64* %RCX.i2321, align 8
  %2138 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %2138, i64* %RDI.i2252, align 8
  %2139 = add i64 %2138, 144
  %2140 = add i64 %1970, 134
  store i64 %2140, i64* %3, align 8
  %2141 = inttoptr i64 %2139 to i32*
  %2142 = load i32, i32* %2141, align 4
  %2143 = zext i32 %2142 to i64
  store i64 %2143, i64* %RSI.i2255, align 8
  %2144 = load i64, i64* %RBP.i, align 8
  %2145 = add i64 %2144, -24
  %2146 = add i64 %1970, 137
  store i64 %2146, i64* %3, align 8
  %2147 = inttoptr i64 %2145 to i32*
  %2148 = load i32, i32* %2147, align 4
  %2149 = add i32 %2148, %2142
  %2150 = zext i32 %2149 to i64
  store i64 %2150, i64* %RSI.i2255, align 8
  %2151 = icmp ult i32 %2149, %2142
  %2152 = icmp ult i32 %2149, %2148
  %2153 = or i1 %2151, %2152
  %2154 = zext i1 %2153 to i8
  store i8 %2154, i8* %55, align 1
  %2155 = and i32 %2149, 255
  %2156 = tail call i32 @llvm.ctpop.i32(i32 %2155)
  %2157 = trunc i32 %2156 to i8
  %2158 = and i8 %2157, 1
  %2159 = xor i8 %2158, 1
  store i8 %2159, i8* %56, align 1
  %2160 = xor i32 %2148, %2142
  %2161 = xor i32 %2160, %2149
  %2162 = lshr i32 %2161, 4
  %2163 = trunc i32 %2162 to i8
  %2164 = and i8 %2163, 1
  store i8 %2164, i8* %57, align 1
  %2165 = icmp eq i32 %2149, 0
  %2166 = zext i1 %2165 to i8
  store i8 %2166, i8* %60, align 1
  %2167 = lshr i32 %2149, 31
  %2168 = trunc i32 %2167 to i8
  store i8 %2168, i8* %61, align 1
  %2169 = lshr i32 %2142, 31
  %2170 = lshr i32 %2148, 31
  %2171 = xor i32 %2167, %2169
  %2172 = xor i32 %2167, %2170
  %2173 = add nuw nsw i32 %2171, %2172
  %2174 = icmp eq i32 %2173, 2
  %2175 = zext i1 %2174 to i8
  store i8 %2175, i8* %62, align 1
  %2176 = sext i32 %2149 to i64
  store i64 %2176, i64* %RDI.i2252, align 8
  %2177 = shl nsw i64 %2176, 3
  %2178 = add i64 %2137, %2177
  %2179 = add i64 %1970, 144
  store i64 %2179, i64* %3, align 8
  %2180 = inttoptr i64 %2178 to i64*
  %2181 = load i64, i64* %2180, align 8
  store i64 %2181, i64* %RCX.i2321, align 8
  store i64 %2138, i64* %RDI.i2252, align 8
  %2182 = add i64 %2138, 148
  %2183 = add i64 %1970, 158
  store i64 %2183, i64* %3, align 8
  %2184 = inttoptr i64 %2182 to i32*
  %2185 = load i32, i32* %2184, align 4
  %2186 = zext i32 %2185 to i64
  store i64 %2186, i64* %RSI.i2255, align 8
  %2187 = add i64 %2144, -28
  %2188 = add i64 %1970, 161
  store i64 %2188, i64* %3, align 8
  %2189 = inttoptr i64 %2187 to i32*
  %2190 = load i32, i32* %2189, align 4
  %2191 = add i32 %2190, %2185
  %2192 = zext i32 %2191 to i64
  store i64 %2192, i64* %RSI.i2255, align 8
  %2193 = icmp ult i32 %2191, %2185
  %2194 = icmp ult i32 %2191, %2190
  %2195 = or i1 %2193, %2194
  %2196 = zext i1 %2195 to i8
  store i8 %2196, i8* %55, align 1
  %2197 = and i32 %2191, 255
  %2198 = tail call i32 @llvm.ctpop.i32(i32 %2197)
  %2199 = trunc i32 %2198 to i8
  %2200 = and i8 %2199, 1
  %2201 = xor i8 %2200, 1
  store i8 %2201, i8* %56, align 1
  %2202 = xor i32 %2190, %2185
  %2203 = xor i32 %2202, %2191
  %2204 = lshr i32 %2203, 4
  %2205 = trunc i32 %2204 to i8
  %2206 = and i8 %2205, 1
  store i8 %2206, i8* %57, align 1
  %2207 = icmp eq i32 %2191, 0
  %2208 = zext i1 %2207 to i8
  store i8 %2208, i8* %60, align 1
  %2209 = lshr i32 %2191, 31
  %2210 = trunc i32 %2209 to i8
  store i8 %2210, i8* %61, align 1
  %2211 = lshr i32 %2185, 31
  %2212 = lshr i32 %2190, 31
  %2213 = xor i32 %2209, %2211
  %2214 = xor i32 %2209, %2212
  %2215 = add nuw nsw i32 %2213, %2214
  %2216 = icmp eq i32 %2215, 2
  %2217 = zext i1 %2216 to i8
  store i8 %2217, i8* %62, align 1
  %2218 = sext i32 %2191 to i64
  store i64 %2218, i64* %RDI.i2252, align 8
  %2219 = shl nsw i64 %2218, 3
  %2220 = add i64 %2181, %2219
  %2221 = load i64, i64* %RAX.i2329, align 8
  %2222 = add i64 %1970, 168
  store i64 %2222, i64* %3, align 8
  %2223 = inttoptr i64 %2220 to i64*
  store i64 %2221, i64* %2223, align 8
  %2224 = load i64, i64* %RBP.i, align 8
  %2225 = add i64 %2224, -24
  %2226 = load i64, i64* %3, align 8
  %2227 = add i64 %2226, 3
  store i64 %2227, i64* %3, align 8
  %2228 = inttoptr i64 %2225 to i32*
  %2229 = load i32, i32* %2228, align 4
  %2230 = add i32 %2229, 1
  %2231 = zext i32 %2230 to i64
  store i64 %2231, i64* %RAX.i2329, align 8
  %2232 = icmp eq i32 %2229, -1
  %2233 = icmp eq i32 %2230, 0
  %2234 = or i1 %2232, %2233
  %2235 = zext i1 %2234 to i8
  store i8 %2235, i8* %55, align 1
  %2236 = and i32 %2230, 255
  %2237 = tail call i32 @llvm.ctpop.i32(i32 %2236)
  %2238 = trunc i32 %2237 to i8
  %2239 = and i8 %2238, 1
  %2240 = xor i8 %2239, 1
  store i8 %2240, i8* %56, align 1
  %2241 = xor i32 %2230, %2229
  %2242 = lshr i32 %2241, 4
  %2243 = trunc i32 %2242 to i8
  %2244 = and i8 %2243, 1
  store i8 %2244, i8* %57, align 1
  %2245 = zext i1 %2233 to i8
  store i8 %2245, i8* %60, align 1
  %2246 = lshr i32 %2230, 31
  %2247 = trunc i32 %2246 to i8
  store i8 %2247, i8* %61, align 1
  %2248 = lshr i32 %2229, 31
  %2249 = xor i32 %2246, %2248
  %2250 = add nuw nsw i32 %2249, %2246
  %2251 = icmp eq i32 %2250, 2
  %2252 = zext i1 %2251 to i8
  store i8 %2252, i8* %62, align 1
  %2253 = add i64 %2226, 9
  store i64 %2253, i64* %3, align 8
  store i32 %2230, i32* %2228, align 4
  %2254 = load i64, i64* %3, align 8
  %2255 = add i64 %2254, -507
  store i64 %2255, i64* %3, align 8
  br label %block_.L_48ff1b

block_.L_49011b:                                  ; preds = %block_.L_48ff1b
  %2256 = add i64 %1563, -28
  %2257 = add i64 %1599, 8
  store i64 %2257, i64* %3, align 8
  %2258 = inttoptr i64 %2256 to i32*
  %2259 = load i32, i32* %2258, align 4
  %2260 = add i32 %2259, 1
  %2261 = zext i32 %2260 to i64
  store i64 %2261, i64* %RAX.i2329, align 8
  %2262 = icmp eq i32 %2259, -1
  %2263 = icmp eq i32 %2260, 0
  %2264 = or i1 %2262, %2263
  %2265 = zext i1 %2264 to i8
  store i8 %2265, i8* %55, align 1
  %2266 = and i32 %2260, 255
  %2267 = tail call i32 @llvm.ctpop.i32(i32 %2266)
  %2268 = trunc i32 %2267 to i8
  %2269 = and i8 %2268, 1
  %2270 = xor i8 %2269, 1
  store i8 %2270, i8* %56, align 1
  %2271 = xor i32 %2260, %2259
  %2272 = lshr i32 %2271, 4
  %2273 = trunc i32 %2272 to i8
  %2274 = and i8 %2273, 1
  store i8 %2274, i8* %57, align 1
  %2275 = zext i1 %2263 to i8
  store i8 %2275, i8* %60, align 1
  %2276 = lshr i32 %2260, 31
  %2277 = trunc i32 %2276 to i8
  store i8 %2277, i8* %61, align 1
  %2278 = lshr i32 %2259, 31
  %2279 = xor i32 %2276, %2278
  %2280 = add nuw nsw i32 %2279, %2276
  %2281 = icmp eq i32 %2280, 2
  %2282 = zext i1 %2281 to i8
  store i8 %2282, i8* %62, align 1
  %2283 = add i64 %1599, 14
  store i64 %2283, i64* %3, align 8
  store i32 %2260, i32* %2258, align 4
  %2284 = load i64, i64* %3, align 8
  %2285 = add i64 %2284, -544
  store i64 %2285, i64* %3, align 8
  br label %block_.L_48ff09

block_.L_490139:                                  ; preds = %block_.L_490139.preheader, %block_.L_490c45
  %2286 = phi i64 [ %6136, %block_.L_490c45 ], [ %.pre48, %block_.L_490139.preheader ]
  %2287 = load i64, i64* %RBP.i, align 8
  %2288 = add i64 %2287, -28
  %2289 = add i64 %2286, 3
  store i64 %2289, i64* %3, align 8
  %2290 = inttoptr i64 %2288 to i32*
  %2291 = load i32, i32* %2290, align 4
  %2292 = zext i32 %2291 to i64
  store i64 %2292, i64* %RAX.i2329, align 8
  %2293 = add i64 %2287, -48
  %2294 = add i64 %2286, 6
  store i64 %2294, i64* %3, align 8
  %2295 = inttoptr i64 %2293 to i32*
  %2296 = load i32, i32* %2295, align 4
  %2297 = sub i32 %2291, %2296
  %2298 = icmp ult i32 %2291, %2296
  %2299 = zext i1 %2298 to i8
  store i8 %2299, i8* %55, align 1
  %2300 = and i32 %2297, 255
  %2301 = tail call i32 @llvm.ctpop.i32(i32 %2300)
  %2302 = trunc i32 %2301 to i8
  %2303 = and i8 %2302, 1
  %2304 = xor i8 %2303, 1
  store i8 %2304, i8* %56, align 1
  %2305 = xor i32 %2296, %2291
  %2306 = xor i32 %2305, %2297
  %2307 = lshr i32 %2306, 4
  %2308 = trunc i32 %2307 to i8
  %2309 = and i8 %2308, 1
  store i8 %2309, i8* %57, align 1
  %2310 = icmp eq i32 %2297, 0
  %2311 = zext i1 %2310 to i8
  store i8 %2311, i8* %60, align 1
  %2312 = lshr i32 %2297, 31
  %2313 = trunc i32 %2312 to i8
  store i8 %2313, i8* %61, align 1
  %2314 = lshr i32 %2291, 31
  %2315 = lshr i32 %2296, 31
  %2316 = xor i32 %2315, %2314
  %2317 = xor i32 %2312, %2314
  %2318 = add nuw nsw i32 %2317, %2316
  %2319 = icmp eq i32 %2318, 2
  %2320 = zext i1 %2319 to i8
  store i8 %2320, i8* %62, align 1
  %2321 = icmp ne i8 %2313, 0
  %2322 = xor i1 %2321, %2319
  %.v71 = select i1 %2322, i64 12, i64 2847
  %2323 = add i64 %2286, %.v71
  store i64 %2323, i64* %3, align 8
  br i1 %2322, label %block_490145, label %block_.L_490c5d.loopexit108

block_490145:                                     ; preds = %block_.L_490139
  %2324 = add i64 %2287, -44
  %2325 = add i64 %2323, 3
  store i64 %2325, i64* %3, align 8
  %2326 = inttoptr i64 %2324 to i32*
  %2327 = load i32, i32* %2326, align 4
  %2328 = zext i32 %2327 to i64
  store i64 %2328, i64* %RAX.i2329, align 8
  %2329 = add i64 %2287, -24
  %2330 = add i64 %2323, 6
  store i64 %2330, i64* %3, align 8
  %2331 = inttoptr i64 %2329 to i32*
  store i32 %2327, i32* %2331, align 4
  %.pre51 = load i64, i64* %3, align 8
  br label %block_.L_49014b

block_.L_49014b:                                  ; preds = %block_.L_490c32, %block_490145
  %2332 = phi i64 [ %6106, %block_.L_490c32 ], [ %.pre51, %block_490145 ]
  %2333 = load i64, i64* %RBP.i, align 8
  %2334 = add i64 %2333, -24
  %2335 = add i64 %2332, 3
  store i64 %2335, i64* %3, align 8
  %2336 = inttoptr i64 %2334 to i32*
  %2337 = load i32, i32* %2336, align 4
  %2338 = zext i32 %2337 to i64
  store i64 %2338, i64* %RAX.i2329, align 8
  %2339 = add i64 %2333, -52
  %2340 = add i64 %2332, 6
  store i64 %2340, i64* %3, align 8
  %2341 = inttoptr i64 %2339 to i32*
  %2342 = load i32, i32* %2341, align 4
  %2343 = sub i32 %2337, %2342
  %2344 = icmp ult i32 %2337, %2342
  %2345 = zext i1 %2344 to i8
  store i8 %2345, i8* %55, align 1
  %2346 = and i32 %2343, 255
  %2347 = tail call i32 @llvm.ctpop.i32(i32 %2346)
  %2348 = trunc i32 %2347 to i8
  %2349 = and i8 %2348, 1
  %2350 = xor i8 %2349, 1
  store i8 %2350, i8* %56, align 1
  %2351 = xor i32 %2342, %2337
  %2352 = xor i32 %2351, %2343
  %2353 = lshr i32 %2352, 4
  %2354 = trunc i32 %2353 to i8
  %2355 = and i8 %2354, 1
  store i8 %2355, i8* %57, align 1
  %2356 = icmp eq i32 %2343, 0
  %2357 = zext i1 %2356 to i8
  store i8 %2357, i8* %60, align 1
  %2358 = lshr i32 %2343, 31
  %2359 = trunc i32 %2358 to i8
  store i8 %2359, i8* %61, align 1
  %2360 = lshr i32 %2337, 31
  %2361 = lshr i32 %2342, 31
  %2362 = xor i32 %2361, %2360
  %2363 = xor i32 %2358, %2360
  %2364 = add nuw nsw i32 %2363, %2362
  %2365 = icmp eq i32 %2364, 2
  %2366 = zext i1 %2365 to i8
  store i8 %2366, i8* %62, align 1
  %2367 = icmp ne i8 %2359, 0
  %2368 = xor i1 %2367, %2365
  %.v64 = select i1 %2368, i64 12, i64 2810
  %2369 = add i64 %2332, %.v64
  store i64 %2369, i64* %3, align 8
  br i1 %2368, label %block_490157, label %block_.L_490c45

block_490157:                                     ; preds = %block_.L_49014b
  %2370 = add i64 %2333, -8
  %2371 = add i64 %2369, 4
  store i64 %2371, i64* %3, align 8
  %2372 = inttoptr i64 %2370 to i32*
  %2373 = load i32, i32* %2372, align 4
  store i8 0, i8* %55, align 1
  %2374 = and i32 %2373, 255
  %2375 = tail call i32 @llvm.ctpop.i32(i32 %2374)
  %2376 = trunc i32 %2375 to i8
  %2377 = and i8 %2376, 1
  %2378 = xor i8 %2377, 1
  store i8 %2378, i8* %56, align 1
  store i8 0, i8* %57, align 1
  %2379 = icmp eq i32 %2373, 0
  %2380 = zext i1 %2379 to i8
  store i8 %2380, i8* %60, align 1
  %2381 = lshr i32 %2373, 31
  %2382 = trunc i32 %2381 to i8
  store i8 %2382, i8* %61, align 1
  store i8 0, i8* %62, align 1
  %.v72 = select i1 %2379, i64 10, i64 194
  %2383 = add i64 %2369, %.v72
  store i64 %2383, i64* %3, align 8
  br i1 %2379, label %block_490161, label %block_.L_490219

block_490161:                                     ; preds = %block_490157
  %2384 = load i64, i64* bitcast (%G_0x722cb8_type* @G_0x722cb8 to i64*), align 8
  store i64 %2384, i64* %RAX.i2329, align 8
  %2385 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %2385, i64* %RCX.i2321, align 8
  %2386 = add i64 %2385, 144
  %2387 = add i64 %2383, 22
  store i64 %2387, i64* %3, align 8
  %2388 = inttoptr i64 %2386 to i32*
  %2389 = load i32, i32* %2388, align 4
  %2390 = zext i32 %2389 to i64
  store i64 %2390, i64* %RDX.i2263.pre-phi, align 8
  %2391 = add i64 %2383, 25
  store i64 %2391, i64* %3, align 8
  %2392 = load i32, i32* %2336, align 4
  %2393 = add i32 %2392, %2389
  %2394 = zext i32 %2393 to i64
  store i64 %2394, i64* %RDX.i2263.pre-phi, align 8
  %2395 = icmp ult i32 %2393, %2389
  %2396 = icmp ult i32 %2393, %2392
  %2397 = or i1 %2395, %2396
  %2398 = zext i1 %2397 to i8
  store i8 %2398, i8* %55, align 1
  %2399 = and i32 %2393, 255
  %2400 = tail call i32 @llvm.ctpop.i32(i32 %2399)
  %2401 = trunc i32 %2400 to i8
  %2402 = and i8 %2401, 1
  %2403 = xor i8 %2402, 1
  store i8 %2403, i8* %56, align 1
  %2404 = xor i32 %2392, %2389
  %2405 = xor i32 %2404, %2393
  %2406 = lshr i32 %2405, 4
  %2407 = trunc i32 %2406 to i8
  %2408 = and i8 %2407, 1
  store i8 %2408, i8* %57, align 1
  %2409 = icmp eq i32 %2393, 0
  %2410 = zext i1 %2409 to i8
  store i8 %2410, i8* %60, align 1
  %2411 = lshr i32 %2393, 31
  %2412 = trunc i32 %2411 to i8
  store i8 %2412, i8* %61, align 1
  %2413 = lshr i32 %2389, 31
  %2414 = lshr i32 %2392, 31
  %2415 = xor i32 %2411, %2413
  %2416 = xor i32 %2411, %2414
  %2417 = add nuw nsw i32 %2415, %2416
  %2418 = icmp eq i32 %2417, 2
  %2419 = zext i1 %2418 to i8
  store i8 %2419, i8* %62, align 1
  %2420 = sext i32 %2393 to i64
  store i64 %2420, i64* %RCX.i2321, align 8
  %2421 = shl nsw i64 %2420, 3
  %2422 = add i64 %2384, %2421
  %2423 = add i64 %2383, 32
  store i64 %2423, i64* %3, align 8
  %2424 = inttoptr i64 %2422 to i64*
  %2425 = load i64, i64* %2424, align 8
  store i64 %2425, i64* %RAX.i2329, align 8
  store i64 %2385, i64* %RCX.i2321, align 8
  %2426 = add i64 %2385, 148
  %2427 = add i64 %2383, 46
  store i64 %2427, i64* %3, align 8
  %2428 = inttoptr i64 %2426 to i32*
  %2429 = load i32, i32* %2428, align 4
  %2430 = zext i32 %2429 to i64
  store i64 %2430, i64* %RDX.i2263.pre-phi, align 8
  %2431 = add i64 %2333, -28
  %2432 = add i64 %2383, 49
  store i64 %2432, i64* %3, align 8
  %2433 = inttoptr i64 %2431 to i32*
  %2434 = load i32, i32* %2433, align 4
  %2435 = add i32 %2434, %2429
  %2436 = zext i32 %2435 to i64
  store i64 %2436, i64* %RDX.i2263.pre-phi, align 8
  %2437 = icmp ult i32 %2435, %2429
  %2438 = icmp ult i32 %2435, %2434
  %2439 = or i1 %2437, %2438
  %2440 = zext i1 %2439 to i8
  store i8 %2440, i8* %55, align 1
  %2441 = and i32 %2435, 255
  %2442 = tail call i32 @llvm.ctpop.i32(i32 %2441)
  %2443 = trunc i32 %2442 to i8
  %2444 = and i8 %2443, 1
  %2445 = xor i8 %2444, 1
  store i8 %2445, i8* %56, align 1
  %2446 = xor i32 %2434, %2429
  %2447 = xor i32 %2446, %2435
  %2448 = lshr i32 %2447, 4
  %2449 = trunc i32 %2448 to i8
  %2450 = and i8 %2449, 1
  store i8 %2450, i8* %57, align 1
  %2451 = icmp eq i32 %2435, 0
  %2452 = zext i1 %2451 to i8
  store i8 %2452, i8* %60, align 1
  %2453 = lshr i32 %2435, 31
  %2454 = trunc i32 %2453 to i8
  store i8 %2454, i8* %61, align 1
  %2455 = lshr i32 %2429, 31
  %2456 = lshr i32 %2434, 31
  %2457 = xor i32 %2453, %2455
  %2458 = xor i32 %2453, %2456
  %2459 = add nuw nsw i32 %2457, %2458
  %2460 = icmp eq i32 %2459, 2
  %2461 = zext i1 %2460 to i8
  store i8 %2461, i8* %62, align 1
  %2462 = sext i32 %2435 to i64
  store i64 %2462, i64* %RCX.i2321, align 8
  %2463 = shl nsw i64 %2462, 1
  %2464 = add i64 %2425, %2463
  %2465 = add i64 %2383, 56
  store i64 %2465, i64* %3, align 8
  %2466 = inttoptr i64 %2464 to i16*
  %2467 = load i16, i16* %2466, align 2
  %2468 = sext i16 %2467 to i64
  %2469 = and i64 %2468, 4294967295
  store i64 %2469, i64* %RDX.i2263.pre-phi, align 8
  %2470 = load i64, i64* %RBP.i, align 8
  %2471 = add i64 %2470, -12
  %2472 = sext i16 %2467 to i32
  %2473 = add i64 %2383, 59
  store i64 %2473, i64* %3, align 8
  %2474 = inttoptr i64 %2471 to i32*
  store i32 %2472, i32* %2474, align 4
  %2475 = load i64, i64* %3, align 8
  %2476 = load i64, i64* bitcast (%G_0x6cea08_type* @G_0x6cea08 to i64*), align 8
  store i64 %2476, i64* %RAX.i2329, align 8
  %2477 = add i64 %2475, 11
  store i64 %2477, i64* %3, align 8
  %2478 = inttoptr i64 %2476 to i64*
  %2479 = load i64, i64* %2478, align 8
  store i64 %2479, i64* %RAX.i2329, align 8
  %2480 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %2480, i64* %RCX.i2321, align 8
  %2481 = add i64 %2480, 144
  %2482 = add i64 %2475, 25
  store i64 %2482, i64* %3, align 8
  %2483 = inttoptr i64 %2481 to i32*
  %2484 = load i32, i32* %2483, align 4
  %2485 = zext i32 %2484 to i64
  store i64 %2485, i64* %RDX.i2263.pre-phi, align 8
  %2486 = load i64, i64* %RBP.i, align 8
  %2487 = add i64 %2486, -24
  %2488 = add i64 %2475, 28
  store i64 %2488, i64* %3, align 8
  %2489 = inttoptr i64 %2487 to i32*
  %2490 = load i32, i32* %2489, align 4
  %2491 = add i32 %2490, %2484
  %2492 = zext i32 %2491 to i64
  store i64 %2492, i64* %RDX.i2263.pre-phi, align 8
  %2493 = icmp ult i32 %2491, %2484
  %2494 = icmp ult i32 %2491, %2490
  %2495 = or i1 %2493, %2494
  %2496 = zext i1 %2495 to i8
  store i8 %2496, i8* %55, align 1
  %2497 = and i32 %2491, 255
  %2498 = tail call i32 @llvm.ctpop.i32(i32 %2497)
  %2499 = trunc i32 %2498 to i8
  %2500 = and i8 %2499, 1
  %2501 = xor i8 %2500, 1
  store i8 %2501, i8* %56, align 1
  %2502 = xor i32 %2490, %2484
  %2503 = xor i32 %2502, %2491
  %2504 = lshr i32 %2503, 4
  %2505 = trunc i32 %2504 to i8
  %2506 = and i8 %2505, 1
  store i8 %2506, i8* %57, align 1
  %2507 = icmp eq i32 %2491, 0
  %2508 = zext i1 %2507 to i8
  store i8 %2508, i8* %60, align 1
  %2509 = lshr i32 %2491, 31
  %2510 = trunc i32 %2509 to i8
  store i8 %2510, i8* %61, align 1
  %2511 = lshr i32 %2484, 31
  %2512 = lshr i32 %2490, 31
  %2513 = xor i32 %2509, %2511
  %2514 = xor i32 %2509, %2512
  %2515 = add nuw nsw i32 %2513, %2514
  %2516 = icmp eq i32 %2515, 2
  %2517 = zext i1 %2516 to i8
  store i8 %2517, i8* %62, align 1
  %2518 = sext i32 %2491 to i64
  store i64 %2518, i64* %RCX.i2321, align 8
  %2519 = shl nsw i64 %2518, 3
  %2520 = add i64 %2479, %2519
  %2521 = add i64 %2475, 35
  store i64 %2521, i64* %3, align 8
  %2522 = inttoptr i64 %2520 to i64*
  %2523 = load i64, i64* %2522, align 8
  store i64 %2523, i64* %RAX.i2329, align 8
  store i64 %2480, i64* %RCX.i2321, align 8
  %2524 = add i64 %2480, 148
  %2525 = add i64 %2475, 49
  store i64 %2525, i64* %3, align 8
  %2526 = inttoptr i64 %2524 to i32*
  %2527 = load i32, i32* %2526, align 4
  %2528 = zext i32 %2527 to i64
  store i64 %2528, i64* %RDX.i2263.pre-phi, align 8
  %2529 = add i64 %2486, -28
  %2530 = add i64 %2475, 52
  store i64 %2530, i64* %3, align 8
  %2531 = inttoptr i64 %2529 to i32*
  %2532 = load i32, i32* %2531, align 4
  %2533 = add i32 %2532, %2527
  %2534 = zext i32 %2533 to i64
  store i64 %2534, i64* %RDX.i2263.pre-phi, align 8
  %2535 = icmp ult i32 %2533, %2527
  %2536 = icmp ult i32 %2533, %2532
  %2537 = or i1 %2535, %2536
  %2538 = zext i1 %2537 to i8
  store i8 %2538, i8* %55, align 1
  %2539 = and i32 %2533, 255
  %2540 = tail call i32 @llvm.ctpop.i32(i32 %2539)
  %2541 = trunc i32 %2540 to i8
  %2542 = and i8 %2541, 1
  %2543 = xor i8 %2542, 1
  store i8 %2543, i8* %56, align 1
  %2544 = xor i32 %2532, %2527
  %2545 = xor i32 %2544, %2533
  %2546 = lshr i32 %2545, 4
  %2547 = trunc i32 %2546 to i8
  %2548 = and i8 %2547, 1
  store i8 %2548, i8* %57, align 1
  %2549 = icmp eq i32 %2533, 0
  %2550 = zext i1 %2549 to i8
  store i8 %2550, i8* %60, align 1
  %2551 = lshr i32 %2533, 31
  %2552 = trunc i32 %2551 to i8
  store i8 %2552, i8* %61, align 1
  %2553 = lshr i32 %2527, 31
  %2554 = lshr i32 %2532, 31
  %2555 = xor i32 %2551, %2553
  %2556 = xor i32 %2551, %2554
  %2557 = add nuw nsw i32 %2555, %2556
  %2558 = icmp eq i32 %2557, 2
  %2559 = zext i1 %2558 to i8
  store i8 %2559, i8* %62, align 1
  %2560 = sext i32 %2533 to i64
  store i64 %2560, i64* %RCX.i2321, align 8
  %2561 = shl nsw i64 %2560, 1
  %2562 = add i64 %2523, %2561
  %2563 = add i64 %2475, 59
  store i64 %2563, i64* %3, align 8
  %2564 = inttoptr i64 %2562 to i16*
  %2565 = load i16, i16* %2564, align 2
  %2566 = sext i16 %2565 to i64
  %2567 = and i64 %2566, 4294967295
  store i64 %2567, i64* %RDX.i2263.pre-phi, align 8
  %2568 = load i64, i64* %RBP.i, align 8
  %2569 = add i64 %2568, -16
  %2570 = sext i16 %2565 to i32
  %2571 = add i64 %2475, 62
  store i64 %2571, i64* %3, align 8
  %2572 = inttoptr i64 %2569 to i32*
  store i32 %2570, i32* %2572, align 4
  %2573 = load i64, i64* %3, align 8
  %2574 = load i64, i64* bitcast (%G_0x6cea08_type* @G_0x6cea08 to i64*), align 8
  store i64 %2574, i64* %RAX.i2329, align 8
  %2575 = add i64 %2574, 8
  %2576 = add i64 %2573, 12
  store i64 %2576, i64* %3, align 8
  %2577 = inttoptr i64 %2575 to i64*
  %2578 = load i64, i64* %2577, align 8
  store i64 %2578, i64* %RAX.i2329, align 8
  %2579 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %2579, i64* %RCX.i2321, align 8
  %2580 = add i64 %2579, 144
  %2581 = add i64 %2573, 26
  store i64 %2581, i64* %3, align 8
  %2582 = inttoptr i64 %2580 to i32*
  %2583 = load i32, i32* %2582, align 4
  %2584 = zext i32 %2583 to i64
  store i64 %2584, i64* %RDX.i2263.pre-phi, align 8
  %2585 = load i64, i64* %RBP.i, align 8
  %2586 = add i64 %2585, -24
  %2587 = add i64 %2573, 29
  store i64 %2587, i64* %3, align 8
  %2588 = inttoptr i64 %2586 to i32*
  %2589 = load i32, i32* %2588, align 4
  %2590 = add i32 %2589, %2583
  %2591 = zext i32 %2590 to i64
  store i64 %2591, i64* %RDX.i2263.pre-phi, align 8
  %2592 = icmp ult i32 %2590, %2583
  %2593 = icmp ult i32 %2590, %2589
  %2594 = or i1 %2592, %2593
  %2595 = zext i1 %2594 to i8
  store i8 %2595, i8* %55, align 1
  %2596 = and i32 %2590, 255
  %2597 = tail call i32 @llvm.ctpop.i32(i32 %2596)
  %2598 = trunc i32 %2597 to i8
  %2599 = and i8 %2598, 1
  %2600 = xor i8 %2599, 1
  store i8 %2600, i8* %56, align 1
  %2601 = xor i32 %2589, %2583
  %2602 = xor i32 %2601, %2590
  %2603 = lshr i32 %2602, 4
  %2604 = trunc i32 %2603 to i8
  %2605 = and i8 %2604, 1
  store i8 %2605, i8* %57, align 1
  %2606 = icmp eq i32 %2590, 0
  %2607 = zext i1 %2606 to i8
  store i8 %2607, i8* %60, align 1
  %2608 = lshr i32 %2590, 31
  %2609 = trunc i32 %2608 to i8
  store i8 %2609, i8* %61, align 1
  %2610 = lshr i32 %2583, 31
  %2611 = lshr i32 %2589, 31
  %2612 = xor i32 %2608, %2610
  %2613 = xor i32 %2608, %2611
  %2614 = add nuw nsw i32 %2612, %2613
  %2615 = icmp eq i32 %2614, 2
  %2616 = zext i1 %2615 to i8
  store i8 %2616, i8* %62, align 1
  %2617 = sext i32 %2590 to i64
  store i64 %2617, i64* %RCX.i2321, align 8
  %2618 = shl nsw i64 %2617, 3
  %2619 = add i64 %2578, %2618
  %2620 = add i64 %2573, 36
  store i64 %2620, i64* %3, align 8
  %2621 = inttoptr i64 %2619 to i64*
  %2622 = load i64, i64* %2621, align 8
  store i64 %2622, i64* %RAX.i2329, align 8
  store i64 %2579, i64* %RCX.i2321, align 8
  %2623 = add i64 %2579, 148
  %2624 = add i64 %2573, 50
  store i64 %2624, i64* %3, align 8
  %2625 = inttoptr i64 %2623 to i32*
  %2626 = load i32, i32* %2625, align 4
  %2627 = zext i32 %2626 to i64
  store i64 %2627, i64* %RDX.i2263.pre-phi, align 8
  %2628 = add i64 %2585, -28
  %2629 = add i64 %2573, 53
  store i64 %2629, i64* %3, align 8
  %2630 = inttoptr i64 %2628 to i32*
  %2631 = load i32, i32* %2630, align 4
  %2632 = add i32 %2631, %2626
  %2633 = zext i32 %2632 to i64
  store i64 %2633, i64* %RDX.i2263.pre-phi, align 8
  %2634 = icmp ult i32 %2632, %2626
  %2635 = icmp ult i32 %2632, %2631
  %2636 = or i1 %2634, %2635
  %2637 = zext i1 %2636 to i8
  store i8 %2637, i8* %55, align 1
  %2638 = and i32 %2632, 255
  %2639 = tail call i32 @llvm.ctpop.i32(i32 %2638)
  %2640 = trunc i32 %2639 to i8
  %2641 = and i8 %2640, 1
  %2642 = xor i8 %2641, 1
  store i8 %2642, i8* %56, align 1
  %2643 = xor i32 %2631, %2626
  %2644 = xor i32 %2643, %2632
  %2645 = lshr i32 %2644, 4
  %2646 = trunc i32 %2645 to i8
  %2647 = and i8 %2646, 1
  store i8 %2647, i8* %57, align 1
  %2648 = icmp eq i32 %2632, 0
  %2649 = zext i1 %2648 to i8
  store i8 %2649, i8* %60, align 1
  %2650 = lshr i32 %2632, 31
  %2651 = trunc i32 %2650 to i8
  store i8 %2651, i8* %61, align 1
  %2652 = lshr i32 %2626, 31
  %2653 = lshr i32 %2631, 31
  %2654 = xor i32 %2650, %2652
  %2655 = xor i32 %2650, %2653
  %2656 = add nuw nsw i32 %2654, %2655
  %2657 = icmp eq i32 %2656, 2
  %2658 = zext i1 %2657 to i8
  store i8 %2658, i8* %62, align 1
  %2659 = sext i32 %2632 to i64
  store i64 %2659, i64* %RCX.i2321, align 8
  %2660 = shl nsw i64 %2659, 1
  %2661 = add i64 %2622, %2660
  %2662 = add i64 %2573, 60
  store i64 %2662, i64* %3, align 8
  %2663 = inttoptr i64 %2661 to i16*
  %2664 = load i16, i16* %2663, align 2
  %2665 = sext i16 %2664 to i64
  %2666 = and i64 %2665, 4294967295
  store i64 %2666, i64* %RDX.i2263.pre-phi, align 8
  %2667 = load i64, i64* %RBP.i, align 8
  %2668 = add i64 %2667, -20
  %2669 = sext i16 %2664 to i32
  %2670 = add i64 %2573, 63
  store i64 %2670, i64* %3, align 8
  %2671 = inttoptr i64 %2668 to i32*
  store i32 %2669, i32* %2671, align 4
  %.pre52 = load i64, i64* %RBP.i, align 8
  %.pre53 = load i64, i64* %3, align 8
  br label %block_.L_490219

block_.L_490219:                                  ; preds = %block_490157, %block_490161
  %2672 = phi i64 [ %.pre53, %block_490161 ], [ %2383, %block_490157 ]
  %2673 = phi i64 [ %.pre52, %block_490161 ], [ %2333, %block_490157 ]
  %2674 = add i64 %2673, -12
  %2675 = add i64 %2672, 4
  store i64 %2675, i64* %3, align 8
  %2676 = inttoptr i64 %2674 to i32*
  %2677 = load i32, i32* %2676, align 4
  store i8 0, i8* %55, align 1
  %2678 = and i32 %2677, 255
  %2679 = tail call i32 @llvm.ctpop.i32(i32 %2678)
  %2680 = trunc i32 %2679 to i8
  %2681 = and i8 %2680, 1
  %2682 = xor i8 %2681, 1
  store i8 %2682, i8* %56, align 1
  store i8 0, i8* %57, align 1
  %2683 = icmp eq i32 %2677, 0
  %2684 = zext i1 %2683 to i8
  store i8 %2684, i8* %60, align 1
  %2685 = lshr i32 %2677, 31
  %2686 = trunc i32 %2685 to i8
  store i8 %2686, i8* %61, align 1
  store i8 0, i8* %62, align 1
  %.v73 = select i1 %2683, i64 20, i64 10
  %2687 = add i64 %2672, %.v73
  store i64 %2687, i64* %3, align 8
  br i1 %2683, label %block_.L_49022d, label %block_490223

block_490223:                                     ; preds = %block_.L_490219
  %2688 = add i64 %2687, 4
  store i64 %2688, i64* %3, align 8
  %2689 = load i32, i32* %2676, align 4
  %2690 = add i32 %2689, -2
  %2691 = icmp ult i32 %2689, 2
  %2692 = zext i1 %2691 to i8
  store i8 %2692, i8* %55, align 1
  %2693 = and i32 %2690, 255
  %2694 = tail call i32 @llvm.ctpop.i32(i32 %2693)
  %2695 = trunc i32 %2694 to i8
  %2696 = and i8 %2695, 1
  %2697 = xor i8 %2696, 1
  store i8 %2697, i8* %56, align 1
  %2698 = xor i32 %2690, %2689
  %2699 = lshr i32 %2698, 4
  %2700 = trunc i32 %2699 to i8
  %2701 = and i8 %2700, 1
  store i8 %2701, i8* %57, align 1
  %2702 = icmp eq i32 %2690, 0
  %2703 = zext i1 %2702 to i8
  store i8 %2703, i8* %60, align 1
  %2704 = lshr i32 %2690, 31
  %2705 = trunc i32 %2704 to i8
  store i8 %2705, i8* %61, align 1
  %2706 = lshr i32 %2689, 31
  %2707 = xor i32 %2704, %2706
  %2708 = add nuw nsw i32 %2707, %2706
  %2709 = icmp eq i32 %2708, 2
  %2710 = zext i1 %2709 to i8
  store i8 %2710, i8* %62, align 1
  %.v74 = select i1 %2702, i64 10, i64 993
  %2711 = add i64 %2687, %.v74
  store i64 %2711, i64* %3, align 8
  br i1 %2702, label %block_.L_49022d, label %block_.L_490604

block_.L_49022d:                                  ; preds = %block_490223, %block_.L_490219
  %2712 = phi i64 [ %2711, %block_490223 ], [ %2687, %block_.L_490219 ]
  %2713 = add i64 %2673, -64
  %2714 = add i64 %2712, 4
  store i64 %2714, i64* %3, align 8
  %2715 = inttoptr i64 %2713 to i64*
  %2716 = load i64, i64* %2715, align 8
  store i64 %2716, i64* %RAX.i2329, align 8
  %2717 = add i64 %2716, 580
  %2718 = add i64 %2712, 11
  store i64 %2718, i64* %3, align 8
  %2719 = inttoptr i64 %2717 to i32*
  %2720 = load i32, i32* %2719, align 4
  store i8 0, i8* %55, align 1
  %2721 = and i32 %2720, 255
  %2722 = tail call i32 @llvm.ctpop.i32(i32 %2721)
  %2723 = trunc i32 %2722 to i8
  %2724 = and i8 %2723, 1
  %2725 = xor i8 %2724, 1
  store i8 %2725, i8* %56, align 1
  store i8 0, i8* %57, align 1
  %2726 = icmp eq i32 %2720, 0
  %2727 = zext i1 %2726 to i8
  store i8 %2727, i8* %60, align 1
  %2728 = lshr i32 %2720, 31
  %2729 = trunc i32 %2728 to i8
  store i8 %2729, i8* %61, align 1
  store i8 0, i8* %62, align 1
  %.v81 = select i1 %2726, i64 492, i64 17
  %2730 = add i64 %2712, %.v81
  store i64 %2730, i64* %3, align 8
  br i1 %2726, label %block_.L_490419, label %block_49023e

block_49023e:                                     ; preds = %block_.L_49022d
  %2731 = add i64 %2730, 4
  store i64 %2731, i64* %3, align 8
  %2732 = load i32, i32* %2676, align 4
  %2733 = add i32 %2732, -2
  %2734 = icmp ult i32 %2732, 2
  %2735 = zext i1 %2734 to i8
  store i8 %2735, i8* %55, align 1
  %2736 = and i32 %2733, 255
  %2737 = tail call i32 @llvm.ctpop.i32(i32 %2736)
  %2738 = trunc i32 %2737 to i8
  %2739 = and i8 %2738, 1
  %2740 = xor i8 %2739, 1
  store i8 %2740, i8* %56, align 1
  %2741 = xor i32 %2733, %2732
  %2742 = lshr i32 %2741, 4
  %2743 = trunc i32 %2742 to i8
  %2744 = and i8 %2743, 1
  store i8 %2744, i8* %57, align 1
  %2745 = icmp eq i32 %2733, 0
  %2746 = zext i1 %2745 to i8
  store i8 %2746, i8* %60, align 1
  %2747 = lshr i32 %2733, 31
  %2748 = trunc i32 %2747 to i8
  store i8 %2748, i8* %61, align 1
  %2749 = lshr i32 %2732, 31
  %2750 = xor i32 %2747, %2749
  %2751 = add nuw nsw i32 %2750, %2749
  %2752 = icmp eq i32 %2751, 2
  %2753 = zext i1 %2752 to i8
  store i8 %2753, i8* %62, align 1
  %.v82 = select i1 %2745, i64 10, i64 475
  %2754 = add i64 %2730, %.v82
  store i64 %2754, i64* %3, align 8
  br i1 %2745, label %block_490248, label %block_.L_490419

block_490248:                                     ; preds = %block_49023e
  %2755 = add i64 %2673, -8
  %2756 = add i64 %2754, 4
  store i64 %2756, i64* %3, align 8
  %2757 = inttoptr i64 %2755 to i32*
  %2758 = load i32, i32* %2757, align 4
  %2759 = add i32 %2758, -1
  %2760 = icmp eq i32 %2758, 0
  %2761 = zext i1 %2760 to i8
  store i8 %2761, i8* %55, align 1
  %2762 = and i32 %2759, 255
  %2763 = tail call i32 @llvm.ctpop.i32(i32 %2762)
  %2764 = trunc i32 %2763 to i8
  %2765 = and i8 %2764, 1
  %2766 = xor i8 %2765, 1
  store i8 %2766, i8* %56, align 1
  %2767 = xor i32 %2759, %2758
  %2768 = lshr i32 %2767, 4
  %2769 = trunc i32 %2768 to i8
  %2770 = and i8 %2769, 1
  store i8 %2770, i8* %57, align 1
  %2771 = icmp eq i32 %2759, 0
  %2772 = zext i1 %2771 to i8
  store i8 %2772, i8* %60, align 1
  %2773 = lshr i32 %2759, 31
  %2774 = trunc i32 %2773 to i8
  store i8 %2774, i8* %61, align 1
  %2775 = lshr i32 %2758, 31
  %2776 = xor i32 %2773, %2775
  %2777 = add nuw nsw i32 %2776, %2775
  %2778 = icmp eq i32 %2777, 2
  %2779 = zext i1 %2778 to i8
  store i8 %2779, i8* %62, align 1
  %.v83 = select i1 %2771, i64 10, i64 465
  %2780 = add i64 %2754, %.v83
  store i64 %2780, i64* %3, align 8
  br i1 %2771, label %block_490252, label %block_.L_490419

block_490252:                                     ; preds = %block_490248
  %2781 = add i64 %2780, 4
  store i64 %2781, i64* %3, align 8
  %2782 = load i64, i64* %2715, align 8
  store i64 %2782, i64* %RAX.i2329, align 8
  %2783 = add i64 %2782, 580
  %2784 = add i64 %2780, 11
  store i64 %2784, i64* %3, align 8
  %2785 = inttoptr i64 %2783 to i32*
  %2786 = load i32, i32* %2785, align 4
  %2787 = add i32 %2786, -1
  %2788 = icmp eq i32 %2786, 0
  %2789 = zext i1 %2788 to i8
  store i8 %2789, i8* %55, align 1
  %2790 = and i32 %2787, 255
  %2791 = tail call i32 @llvm.ctpop.i32(i32 %2790)
  %2792 = trunc i32 %2791 to i8
  %2793 = and i8 %2792, 1
  %2794 = xor i8 %2793, 1
  store i8 %2794, i8* %56, align 1
  %2795 = xor i32 %2787, %2786
  %2796 = lshr i32 %2795, 4
  %2797 = trunc i32 %2796 to i8
  %2798 = and i8 %2797, 1
  store i8 %2798, i8* %57, align 1
  %2799 = icmp eq i32 %2787, 0
  %2800 = zext i1 %2799 to i8
  store i8 %2800, i8* %60, align 1
  %2801 = lshr i32 %2787, 31
  %2802 = trunc i32 %2801 to i8
  store i8 %2802, i8* %61, align 1
  %2803 = lshr i32 %2786, 31
  %2804 = xor i32 %2801, %2803
  %2805 = add nuw nsw i32 %2804, %2803
  %2806 = icmp eq i32 %2805, 2
  %2807 = zext i1 %2806 to i8
  store i8 %2807, i8* %62, align 1
  %.v84 = select i1 %2799, i64 17, i64 41
  %2808 = add i64 %2780, %.v84
  %2809 = add i64 %2808, 8
  store i64 %2809, i64* %3, align 8
  %2810 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %2810, i64* %RAX.i2329, align 8
  br i1 %2799, label %block_490263, label %block_.L_49027b

block_490263:                                     ; preds = %block_490252
  %2811 = add i64 %2810, 71936
  %2812 = add i64 %2808, 15
  store i64 %2812, i64* %3, align 8
  %2813 = inttoptr i64 %2811 to i64*
  %2814 = load i64, i64* %2813, align 8
  store i64 %2814, i64* %RAX.i2329, align 8
  %2815 = add i64 %2673, -104
  %2816 = add i64 %2808, 19
  store i64 %2816, i64* %3, align 8
  %2817 = inttoptr i64 %2815 to i64*
  store i64 %2814, i64* %2817, align 8
  %2818 = load i64, i64* %3, align 8
  %2819 = add i64 %2818, 24
  store i64 %2819, i64* %3, align 8
  br label %block_.L_49028e

block_.L_49027b:                                  ; preds = %block_490252
  %2820 = add i64 %2810, 71944
  %2821 = add i64 %2808, 15
  store i64 %2821, i64* %3, align 8
  %2822 = inttoptr i64 %2820 to i64*
  %2823 = load i64, i64* %2822, align 8
  store i64 %2823, i64* %RAX.i2329, align 8
  %2824 = add i64 %2673, -104
  %2825 = add i64 %2808, 19
  store i64 %2825, i64* %3, align 8
  %2826 = inttoptr i64 %2824 to i64*
  store i64 %2823, i64* %2826, align 8
  %.pre54 = load i64, i64* %3, align 8
  br label %block_.L_49028e

block_.L_49028e:                                  ; preds = %block_.L_49027b, %block_490263
  %2827 = phi i64 [ %.pre54, %block_.L_49027b ], [ %2819, %block_490263 ]
  %2828 = load i64, i64* %RBP.i, align 8
  %2829 = add i64 %2828, -104
  %2830 = add i64 %2827, 4
  store i64 %2830, i64* %3, align 8
  %2831 = inttoptr i64 %2829 to i64*
  %2832 = load i64, i64* %2831, align 8
  store i64 %2832, i64* %RAX.i2329, align 8
  %2833 = add i64 %2828, -72
  %2834 = add i64 %2827, 8
  store i64 %2834, i64* %3, align 8
  %2835 = inttoptr i64 %2833 to i64*
  store i64 %2832, i64* %2835, align 8
  %2836 = load i64, i64* %RBP.i, align 8
  %2837 = add i64 %2836, -72
  %2838 = load i64, i64* %3, align 8
  %2839 = add i64 %2838, 4
  store i64 %2839, i64* %3, align 8
  %2840 = inttoptr i64 %2837 to i64*
  %2841 = load i64, i64* %2840, align 8
  store i64 %2841, i64* %RAX.i2329, align 8
  %2842 = add i64 %2836, -24
  %2843 = add i64 %2838, 8
  store i64 %2843, i64* %3, align 8
  %2844 = inttoptr i64 %2842 to i32*
  %2845 = load i32, i32* %2844, align 4
  %2846 = sext i32 %2845 to i64
  store i64 %2846, i64* %RCX.i2321, align 8
  %2847 = shl nsw i64 %2846, 3
  %2848 = add i64 %2847, %2841
  %2849 = add i64 %2838, 12
  store i64 %2849, i64* %3, align 8
  %2850 = inttoptr i64 %2848 to i64*
  %2851 = load i64, i64* %2850, align 8
  store i64 %2851, i64* %RAX.i2329, align 8
  %2852 = add i64 %2836, -28
  %2853 = add i64 %2838, 16
  store i64 %2853, i64* %3, align 8
  %2854 = inttoptr i64 %2852 to i32*
  %2855 = load i32, i32* %2854, align 4
  %2856 = sext i32 %2855 to i64
  store i64 %2856, i64* %RCX.i2321, align 8
  %2857 = shl nsw i64 %2856, 3
  %2858 = add i64 %2857, %2851
  %2859 = add i64 %2838, 20
  store i64 %2859, i64* %3, align 8
  %2860 = inttoptr i64 %2858 to i64*
  %2861 = load i64, i64* %2860, align 8
  store i64 %2861, i64* %RAX.i2329, align 8
  %2862 = add i64 %2838, 23
  store i64 %2862, i64* %3, align 8
  %2863 = inttoptr i64 %2861 to i64*
  %2864 = load i64, i64* %2863, align 8
  store i64 %2864, i64* %RAX.i2329, align 8
  %2865 = add i64 %2838, 26
  store i64 %2865, i64* %3, align 8
  %2866 = inttoptr i64 %2864 to i64*
  %2867 = load i64, i64* %2866, align 8
  store i64 %2867, i64* %RAX.i2329, align 8
  %2868 = add i64 %2836, -8
  %2869 = add i64 %2838, 30
  store i64 %2869, i64* %3, align 8
  %2870 = inttoptr i64 %2868 to i32*
  %2871 = load i32, i32* %2870, align 4
  %2872 = sext i32 %2871 to i64
  store i64 %2872, i64* %RCX.i2321, align 8
  %2873 = shl nsw i64 %2872, 3
  %2874 = add i64 %2873, %2867
  %2875 = add i64 %2838, 34
  store i64 %2875, i64* %3, align 8
  %2876 = inttoptr i64 %2874 to i64*
  %2877 = load i64, i64* %2876, align 8
  store i64 %2877, i64* %RAX.i2329, align 8
  %2878 = add i64 %2838, 37
  store i64 %2878, i64* %3, align 8
  %2879 = inttoptr i64 %2877 to i16*
  %2880 = load i16, i16* %2879, align 2
  store i16 %2880, i16* %DX.i1069, align 2
  %2881 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %2881, i64* %RAX.i2329, align 8
  %2882 = add i64 %2881, 6504
  %2883 = add i64 %2838, 52
  store i64 %2883, i64* %3, align 8
  %2884 = inttoptr i64 %2882 to i64*
  %2885 = load i64, i64* %2884, align 8
  store i64 %2885, i64* %RAX.i2329, align 8
  %2886 = add i64 %2838, 55
  store i64 %2886, i64* %3, align 8
  %2887 = inttoptr i64 %2885 to i64*
  %2888 = load i64, i64* %2887, align 8
  store i64 %2888, i64* %RAX.i2329, align 8
  %2889 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %2889, i64* %RCX.i2321, align 8
  %2890 = add i64 %2889, 144
  %2891 = add i64 %2838, 69
  store i64 %2891, i64* %3, align 8
  %2892 = inttoptr i64 %2890 to i32*
  %2893 = load i32, i32* %2892, align 4
  %2894 = zext i32 %2893 to i64
  store i64 %2894, i64* %RSI.i2255, align 8
  %2895 = add i64 %2838, 72
  store i64 %2895, i64* %3, align 8
  %2896 = load i32, i32* %2844, align 4
  %2897 = add i32 %2896, %2893
  %2898 = zext i32 %2897 to i64
  store i64 %2898, i64* %RSI.i2255, align 8
  %2899 = icmp ult i32 %2897, %2893
  %2900 = icmp ult i32 %2897, %2896
  %2901 = or i1 %2899, %2900
  %2902 = zext i1 %2901 to i8
  store i8 %2902, i8* %55, align 1
  %2903 = and i32 %2897, 255
  %2904 = tail call i32 @llvm.ctpop.i32(i32 %2903)
  %2905 = trunc i32 %2904 to i8
  %2906 = and i8 %2905, 1
  %2907 = xor i8 %2906, 1
  store i8 %2907, i8* %56, align 1
  %2908 = xor i32 %2896, %2893
  %2909 = xor i32 %2908, %2897
  %2910 = lshr i32 %2909, 4
  %2911 = trunc i32 %2910 to i8
  %2912 = and i8 %2911, 1
  store i8 %2912, i8* %57, align 1
  %2913 = icmp eq i32 %2897, 0
  %2914 = zext i1 %2913 to i8
  store i8 %2914, i8* %60, align 1
  %2915 = lshr i32 %2897, 31
  %2916 = trunc i32 %2915 to i8
  store i8 %2916, i8* %61, align 1
  %2917 = lshr i32 %2893, 31
  %2918 = lshr i32 %2896, 31
  %2919 = xor i32 %2915, %2917
  %2920 = xor i32 %2915, %2918
  %2921 = add nuw nsw i32 %2919, %2920
  %2922 = icmp eq i32 %2921, 2
  %2923 = zext i1 %2922 to i8
  store i8 %2923, i8* %62, align 1
  %2924 = sext i32 %2897 to i64
  store i64 %2924, i64* %RCX.i2321, align 8
  %2925 = shl nsw i64 %2924, 3
  %2926 = add i64 %2888, %2925
  %2927 = add i64 %2838, 79
  store i64 %2927, i64* %3, align 8
  %2928 = inttoptr i64 %2926 to i64*
  %2929 = load i64, i64* %2928, align 8
  store i64 %2929, i64* %RAX.i2329, align 8
  store i64 %2889, i64* %RCX.i2321, align 8
  %2930 = add i64 %2889, 148
  %2931 = add i64 %2838, 93
  store i64 %2931, i64* %3, align 8
  %2932 = inttoptr i64 %2930 to i32*
  %2933 = load i32, i32* %2932, align 4
  %2934 = zext i32 %2933 to i64
  store i64 %2934, i64* %RSI.i2255, align 8
  %2935 = load i64, i64* %RBP.i, align 8
  %2936 = add i64 %2935, -28
  %2937 = add i64 %2838, 96
  store i64 %2937, i64* %3, align 8
  %2938 = inttoptr i64 %2936 to i32*
  %2939 = load i32, i32* %2938, align 4
  %2940 = add i32 %2939, %2933
  %2941 = zext i32 %2940 to i64
  store i64 %2941, i64* %RSI.i2255, align 8
  %2942 = icmp ult i32 %2940, %2933
  %2943 = icmp ult i32 %2940, %2939
  %2944 = or i1 %2942, %2943
  %2945 = zext i1 %2944 to i8
  store i8 %2945, i8* %55, align 1
  %2946 = and i32 %2940, 255
  %2947 = tail call i32 @llvm.ctpop.i32(i32 %2946)
  %2948 = trunc i32 %2947 to i8
  %2949 = and i8 %2948, 1
  %2950 = xor i8 %2949, 1
  store i8 %2950, i8* %56, align 1
  %2951 = xor i32 %2939, %2933
  %2952 = xor i32 %2951, %2940
  %2953 = lshr i32 %2952, 4
  %2954 = trunc i32 %2953 to i8
  %2955 = and i8 %2954, 1
  store i8 %2955, i8* %57, align 1
  %2956 = icmp eq i32 %2940, 0
  %2957 = zext i1 %2956 to i8
  store i8 %2957, i8* %60, align 1
  %2958 = lshr i32 %2940, 31
  %2959 = trunc i32 %2958 to i8
  store i8 %2959, i8* %61, align 1
  %2960 = lshr i32 %2933, 31
  %2961 = lshr i32 %2939, 31
  %2962 = xor i32 %2958, %2960
  %2963 = xor i32 %2958, %2961
  %2964 = add nuw nsw i32 %2962, %2963
  %2965 = icmp eq i32 %2964, 2
  %2966 = zext i1 %2965 to i8
  store i8 %2966, i8* %62, align 1
  %2967 = sext i32 %2940 to i64
  store i64 %2967, i64* %RCX.i2321, align 8
  %2968 = shl nsw i64 %2967, 3
  %2969 = add i64 %2929, %2968
  %2970 = add i64 %2838, 103
  store i64 %2970, i64* %3, align 8
  %2971 = inttoptr i64 %2969 to i64*
  %2972 = load i64, i64* %2971, align 8
  store i64 %2972, i64* %RAX.i2329, align 8
  %2973 = load i16, i16* %DX.i1069, align 2
  %2974 = add i64 %2838, 106
  store i64 %2974, i64* %3, align 8
  %2975 = inttoptr i64 %2972 to i16*
  store i16 %2973, i16* %2975, align 2
  %2976 = load i64, i64* %RBP.i, align 8
  %2977 = add i64 %2976, -72
  %2978 = load i64, i64* %3, align 8
  %2979 = add i64 %2978, 4
  store i64 %2979, i64* %3, align 8
  %2980 = inttoptr i64 %2977 to i64*
  %2981 = load i64, i64* %2980, align 8
  store i64 %2981, i64* %RAX.i2329, align 8
  %2982 = add i64 %2976, -24
  %2983 = add i64 %2978, 8
  store i64 %2983, i64* %3, align 8
  %2984 = inttoptr i64 %2982 to i32*
  %2985 = load i32, i32* %2984, align 4
  %2986 = sext i32 %2985 to i64
  store i64 %2986, i64* %RCX.i2321, align 8
  %2987 = shl nsw i64 %2986, 3
  %2988 = add i64 %2987, %2981
  %2989 = add i64 %2978, 12
  store i64 %2989, i64* %3, align 8
  %2990 = inttoptr i64 %2988 to i64*
  %2991 = load i64, i64* %2990, align 8
  store i64 %2991, i64* %RAX.i2329, align 8
  %2992 = add i64 %2976, -28
  %2993 = add i64 %2978, 16
  store i64 %2993, i64* %3, align 8
  %2994 = inttoptr i64 %2992 to i32*
  %2995 = load i32, i32* %2994, align 4
  %2996 = sext i32 %2995 to i64
  store i64 %2996, i64* %RCX.i2321, align 8
  %2997 = shl nsw i64 %2996, 3
  %2998 = add i64 %2997, %2991
  %2999 = add i64 %2978, 20
  store i64 %2999, i64* %3, align 8
  %3000 = inttoptr i64 %2998 to i64*
  %3001 = load i64, i64* %3000, align 8
  store i64 %3001, i64* %RAX.i2329, align 8
  %3002 = add i64 %2978, 23
  store i64 %3002, i64* %3, align 8
  %3003 = inttoptr i64 %3001 to i64*
  %3004 = load i64, i64* %3003, align 8
  store i64 %3004, i64* %RAX.i2329, align 8
  %3005 = add i64 %2978, 26
  store i64 %3005, i64* %3, align 8
  %3006 = inttoptr i64 %3004 to i64*
  %3007 = load i64, i64* %3006, align 8
  store i64 %3007, i64* %RAX.i2329, align 8
  %3008 = add i64 %2976, -8
  %3009 = add i64 %2978, 30
  store i64 %3009, i64* %3, align 8
  %3010 = inttoptr i64 %3008 to i32*
  %3011 = load i32, i32* %3010, align 4
  %3012 = sext i32 %3011 to i64
  store i64 %3012, i64* %RCX.i2321, align 8
  %3013 = shl nsw i64 %3012, 3
  %3014 = add i64 %3013, %3007
  %3015 = add i64 %2978, 34
  store i64 %3015, i64* %3, align 8
  %3016 = inttoptr i64 %3014 to i64*
  %3017 = load i64, i64* %3016, align 8
  store i64 %3017, i64* %RAX.i2329, align 8
  %3018 = add i64 %3017, 2
  %3019 = add i64 %2978, 38
  store i64 %3019, i64* %3, align 8
  %3020 = inttoptr i64 %3018 to i16*
  %3021 = load i16, i16* %3020, align 2
  store i16 %3021, i16* %DX.i1069, align 2
  %3022 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %3022, i64* %RAX.i2329, align 8
  %3023 = add i64 %3022, 6504
  %3024 = add i64 %2978, 53
  store i64 %3024, i64* %3, align 8
  %3025 = inttoptr i64 %3023 to i64*
  %3026 = load i64, i64* %3025, align 8
  store i64 %3026, i64* %RAX.i2329, align 8
  %3027 = add i64 %2978, 56
  store i64 %3027, i64* %3, align 8
  %3028 = inttoptr i64 %3026 to i64*
  %3029 = load i64, i64* %3028, align 8
  store i64 %3029, i64* %RAX.i2329, align 8
  %3030 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %3030, i64* %RCX.i2321, align 8
  %3031 = add i64 %3030, 144
  %3032 = add i64 %2978, 70
  store i64 %3032, i64* %3, align 8
  %3033 = inttoptr i64 %3031 to i32*
  %3034 = load i32, i32* %3033, align 4
  %3035 = zext i32 %3034 to i64
  store i64 %3035, i64* %RSI.i2255, align 8
  %3036 = add i64 %2978, 73
  store i64 %3036, i64* %3, align 8
  %3037 = load i32, i32* %2984, align 4
  %3038 = add i32 %3037, %3034
  %3039 = zext i32 %3038 to i64
  store i64 %3039, i64* %RSI.i2255, align 8
  %3040 = icmp ult i32 %3038, %3034
  %3041 = icmp ult i32 %3038, %3037
  %3042 = or i1 %3040, %3041
  %3043 = zext i1 %3042 to i8
  store i8 %3043, i8* %55, align 1
  %3044 = and i32 %3038, 255
  %3045 = tail call i32 @llvm.ctpop.i32(i32 %3044)
  %3046 = trunc i32 %3045 to i8
  %3047 = and i8 %3046, 1
  %3048 = xor i8 %3047, 1
  store i8 %3048, i8* %56, align 1
  %3049 = xor i32 %3037, %3034
  %3050 = xor i32 %3049, %3038
  %3051 = lshr i32 %3050, 4
  %3052 = trunc i32 %3051 to i8
  %3053 = and i8 %3052, 1
  store i8 %3053, i8* %57, align 1
  %3054 = icmp eq i32 %3038, 0
  %3055 = zext i1 %3054 to i8
  store i8 %3055, i8* %60, align 1
  %3056 = lshr i32 %3038, 31
  %3057 = trunc i32 %3056 to i8
  store i8 %3057, i8* %61, align 1
  %3058 = lshr i32 %3034, 31
  %3059 = lshr i32 %3037, 31
  %3060 = xor i32 %3056, %3058
  %3061 = xor i32 %3056, %3059
  %3062 = add nuw nsw i32 %3060, %3061
  %3063 = icmp eq i32 %3062, 2
  %3064 = zext i1 %3063 to i8
  store i8 %3064, i8* %62, align 1
  %3065 = sext i32 %3038 to i64
  store i64 %3065, i64* %RCX.i2321, align 8
  %3066 = shl nsw i64 %3065, 3
  %3067 = add i64 %3029, %3066
  %3068 = add i64 %2978, 80
  store i64 %3068, i64* %3, align 8
  %3069 = inttoptr i64 %3067 to i64*
  %3070 = load i64, i64* %3069, align 8
  store i64 %3070, i64* %RAX.i2329, align 8
  store i64 %3030, i64* %RCX.i2321, align 8
  %3071 = add i64 %3030, 148
  %3072 = add i64 %2978, 94
  store i64 %3072, i64* %3, align 8
  %3073 = inttoptr i64 %3071 to i32*
  %3074 = load i32, i32* %3073, align 4
  %3075 = zext i32 %3074 to i64
  store i64 %3075, i64* %RSI.i2255, align 8
  %3076 = load i64, i64* %RBP.i, align 8
  %3077 = add i64 %3076, -28
  %3078 = add i64 %2978, 97
  store i64 %3078, i64* %3, align 8
  %3079 = inttoptr i64 %3077 to i32*
  %3080 = load i32, i32* %3079, align 4
  %3081 = add i32 %3080, %3074
  %3082 = zext i32 %3081 to i64
  store i64 %3082, i64* %RSI.i2255, align 8
  %3083 = icmp ult i32 %3081, %3074
  %3084 = icmp ult i32 %3081, %3080
  %3085 = or i1 %3083, %3084
  %3086 = zext i1 %3085 to i8
  store i8 %3086, i8* %55, align 1
  %3087 = and i32 %3081, 255
  %3088 = tail call i32 @llvm.ctpop.i32(i32 %3087)
  %3089 = trunc i32 %3088 to i8
  %3090 = and i8 %3089, 1
  %3091 = xor i8 %3090, 1
  store i8 %3091, i8* %56, align 1
  %3092 = xor i32 %3080, %3074
  %3093 = xor i32 %3092, %3081
  %3094 = lshr i32 %3093, 4
  %3095 = trunc i32 %3094 to i8
  %3096 = and i8 %3095, 1
  store i8 %3096, i8* %57, align 1
  %3097 = icmp eq i32 %3081, 0
  %3098 = zext i1 %3097 to i8
  store i8 %3098, i8* %60, align 1
  %3099 = lshr i32 %3081, 31
  %3100 = trunc i32 %3099 to i8
  store i8 %3100, i8* %61, align 1
  %3101 = lshr i32 %3074, 31
  %3102 = lshr i32 %3080, 31
  %3103 = xor i32 %3099, %3101
  %3104 = xor i32 %3099, %3102
  %3105 = add nuw nsw i32 %3103, %3104
  %3106 = icmp eq i32 %3105, 2
  %3107 = zext i1 %3106 to i8
  store i8 %3107, i8* %62, align 1
  %3108 = sext i32 %3081 to i64
  store i64 %3108, i64* %RCX.i2321, align 8
  %3109 = shl nsw i64 %3108, 3
  %3110 = add i64 %3070, %3109
  %3111 = add i64 %2978, 104
  store i64 %3111, i64* %3, align 8
  %3112 = inttoptr i64 %3110 to i64*
  %3113 = load i64, i64* %3112, align 8
  %3114 = add i64 %3113, 2
  %3115 = load i16, i16* %DX.i1069, align 2
  %3116 = add i64 %2978, 108
  store i64 %3116, i64* %3, align 8
  %3117 = inttoptr i64 %3114 to i16*
  store i16 %3115, i16* %3117, align 2
  %3118 = load i64, i64* %3, align 8
  %3119 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %3119, i64* %RAX.i2329, align 8
  %3120 = add i64 %3119, 6480
  %3121 = add i64 %3118, 15
  store i64 %3121, i64* %3, align 8
  %3122 = inttoptr i64 %3120 to i64*
  %3123 = load i64, i64* %3122, align 8
  store i64 %3123, i64* %RAX.i2329, align 8
  %3124 = add i64 %3118, 18
  store i64 %3124, i64* %3, align 8
  %3125 = inttoptr i64 %3123 to i64*
  %3126 = load i64, i64* %3125, align 8
  store i64 %3126, i64* %RAX.i2329, align 8
  %3127 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %3127, i64* %RCX.i2321, align 8
  %3128 = add i64 %3127, 144
  %3129 = add i64 %3118, 32
  store i64 %3129, i64* %3, align 8
  %3130 = inttoptr i64 %3128 to i32*
  %3131 = load i32, i32* %3130, align 4
  %3132 = zext i32 %3131 to i64
  store i64 %3132, i64* %RSI.i2255, align 8
  %3133 = load i64, i64* %RBP.i, align 8
  %3134 = add i64 %3133, -24
  %3135 = add i64 %3118, 35
  store i64 %3135, i64* %3, align 8
  %3136 = inttoptr i64 %3134 to i32*
  %3137 = load i32, i32* %3136, align 4
  %3138 = add i32 %3137, %3131
  %3139 = zext i32 %3138 to i64
  store i64 %3139, i64* %RSI.i2255, align 8
  %3140 = icmp ult i32 %3138, %3131
  %3141 = icmp ult i32 %3138, %3137
  %3142 = or i1 %3140, %3141
  %3143 = zext i1 %3142 to i8
  store i8 %3143, i8* %55, align 1
  %3144 = and i32 %3138, 255
  %3145 = tail call i32 @llvm.ctpop.i32(i32 %3144)
  %3146 = trunc i32 %3145 to i8
  %3147 = and i8 %3146, 1
  %3148 = xor i8 %3147, 1
  store i8 %3148, i8* %56, align 1
  %3149 = xor i32 %3137, %3131
  %3150 = xor i32 %3149, %3138
  %3151 = lshr i32 %3150, 4
  %3152 = trunc i32 %3151 to i8
  %3153 = and i8 %3152, 1
  store i8 %3153, i8* %57, align 1
  %3154 = icmp eq i32 %3138, 0
  %3155 = zext i1 %3154 to i8
  store i8 %3155, i8* %60, align 1
  %3156 = lshr i32 %3138, 31
  %3157 = trunc i32 %3156 to i8
  store i8 %3157, i8* %61, align 1
  %3158 = lshr i32 %3131, 31
  %3159 = lshr i32 %3137, 31
  %3160 = xor i32 %3156, %3158
  %3161 = xor i32 %3156, %3159
  %3162 = add nuw nsw i32 %3160, %3161
  %3163 = icmp eq i32 %3162, 2
  %3164 = zext i1 %3163 to i8
  store i8 %3164, i8* %62, align 1
  %3165 = sext i32 %3138 to i64
  store i64 %3165, i64* %RCX.i2321, align 8
  %3166 = shl nsw i64 %3165, 3
  %3167 = add i64 %3126, %3166
  %3168 = add i64 %3118, 42
  store i64 %3168, i64* %3, align 8
  %3169 = inttoptr i64 %3167 to i64*
  %3170 = load i64, i64* %3169, align 8
  store i64 %3170, i64* %RAX.i2329, align 8
  store i64 %3127, i64* %RCX.i2321, align 8
  %3171 = add i64 %3127, 148
  %3172 = add i64 %3118, 56
  store i64 %3172, i64* %3, align 8
  %3173 = inttoptr i64 %3171 to i32*
  %3174 = load i32, i32* %3173, align 4
  %3175 = zext i32 %3174 to i64
  store i64 %3175, i64* %RSI.i2255, align 8
  %3176 = add i64 %3133, -28
  %3177 = add i64 %3118, 59
  store i64 %3177, i64* %3, align 8
  %3178 = inttoptr i64 %3176 to i32*
  %3179 = load i32, i32* %3178, align 4
  %3180 = add i32 %3179, %3174
  %3181 = zext i32 %3180 to i64
  store i64 %3181, i64* %RSI.i2255, align 8
  %3182 = sext i32 %3180 to i64
  store i64 %3182, i64* %RCX.i2321, align 8
  %3183 = shl nsw i64 %3182, 1
  %3184 = add i64 %3170, %3183
  %3185 = add i64 %3118, 68
  store i64 %3185, i64* %3, align 8
  %3186 = inttoptr i64 %3184 to i16*
  store i16 0, i16* %3186, align 2
  %3187 = load i64, i64* %3, align 8
  %3188 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  %3189 = add i64 %3188, 24
  store i64 %3189, i64* %RAX.i2329, align 8
  %3190 = icmp ugt i64 %3188, -25
  %3191 = zext i1 %3190 to i8
  store i8 %3191, i8* %55, align 1
  %3192 = trunc i64 %3189 to i32
  %3193 = and i32 %3192, 255
  %3194 = tail call i32 @llvm.ctpop.i32(i32 %3193)
  %3195 = trunc i32 %3194 to i8
  %3196 = and i8 %3195, 1
  %3197 = xor i8 %3196, 1
  store i8 %3197, i8* %56, align 1
  %3198 = xor i64 %3188, 16
  %3199 = xor i64 %3198, %3189
  %3200 = lshr i64 %3199, 4
  %3201 = trunc i64 %3200 to i8
  %3202 = and i8 %3201, 1
  store i8 %3202, i8* %57, align 1
  %3203 = icmp eq i64 %3189, 0
  %3204 = zext i1 %3203 to i8
  store i8 %3204, i8* %60, align 1
  %3205 = lshr i64 %3189, 63
  %3206 = trunc i64 %3205 to i8
  store i8 %3206, i8* %61, align 1
  %3207 = lshr i64 %3188, 63
  %3208 = xor i64 %3205, %3207
  %3209 = add nuw nsw i64 %3208, %3205
  %3210 = icmp eq i64 %3209, 2
  %3211 = zext i1 %3210 to i8
  store i8 %3211, i8* %62, align 1
  %3212 = load i64, i64* %RBP.i, align 8
  %3213 = add i64 %3212, -56
  %3214 = add i64 %3187, 15
  store i64 %3214, i64* %3, align 8
  %3215 = inttoptr i64 %3213 to i32*
  %3216 = load i32, i32* %3215, align 4
  %3217 = zext i32 %3216 to i64
  store i64 %3217, i64* %RSI.i2255, align 8
  %3218 = sext i32 %3216 to i64
  %3219 = mul nsw i64 %3218, 264
  store i64 %3219, i64* %RCX.i2321, align 8
  %3220 = lshr i64 %3219, 63
  %3221 = add i64 %3219, %3189
  store i64 %3221, i64* %RAX.i2329, align 8
  %3222 = icmp ult i64 %3221, %3189
  %3223 = icmp ult i64 %3221, %3219
  %3224 = or i1 %3222, %3223
  %3225 = zext i1 %3224 to i8
  store i8 %3225, i8* %55, align 1
  %3226 = trunc i64 %3221 to i32
  %3227 = and i32 %3226, 255
  %3228 = tail call i32 @llvm.ctpop.i32(i32 %3227)
  %3229 = trunc i32 %3228 to i8
  %3230 = and i8 %3229, 1
  %3231 = xor i8 %3230, 1
  store i8 %3231, i8* %56, align 1
  %3232 = xor i64 %3219, %3189
  %3233 = xor i64 %3232, %3221
  %3234 = lshr i64 %3233, 4
  %3235 = trunc i64 %3234 to i8
  %3236 = and i8 %3235, 1
  store i8 %3236, i8* %57, align 1
  %3237 = icmp eq i64 %3221, 0
  %3238 = zext i1 %3237 to i8
  store i8 %3238, i8* %60, align 1
  %3239 = lshr i64 %3221, 63
  %3240 = trunc i64 %3239 to i8
  store i8 %3240, i8* %61, align 1
  %3241 = xor i64 %3239, %3205
  %3242 = xor i64 %3239, %3220
  %3243 = add nuw nsw i64 %3241, %3242
  %3244 = icmp eq i64 %3243, 2
  %3245 = zext i1 %3244 to i8
  store i8 %3245, i8* %62, align 1
  %3246 = inttoptr i64 %3221 to i64*
  %3247 = add i64 %3187, 34
  store i64 %3247, i64* %3, align 8
  %3248 = load i64, i64* %3246, align 8
  store i64 %3248, i64* %RAX.i2329, align 8
  %3249 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %3249, i64* %RCX.i2321, align 8
  %3250 = add i64 %3249, 6488
  %3251 = add i64 %3187, 49
  store i64 %3251, i64* %3, align 8
  %3252 = inttoptr i64 %3250 to i64*
  %3253 = load i64, i64* %3252, align 8
  store i64 %3253, i64* %RCX.i2321, align 8
  %3254 = add i64 %3187, 52
  store i64 %3254, i64* %3, align 8
  %3255 = inttoptr i64 %3253 to i64*
  %3256 = load i64, i64* %3255, align 8
  store i64 %3256, i64* %RCX.i2321, align 8
  %3257 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %3257, i64* %RDI.i2252, align 8
  %3258 = add i64 %3257, 144
  %3259 = add i64 %3187, 66
  store i64 %3259, i64* %3, align 8
  %3260 = inttoptr i64 %3258 to i32*
  %3261 = load i32, i32* %3260, align 4
  %3262 = zext i32 %3261 to i64
  store i64 %3262, i64* %RSI.i2255, align 8
  %3263 = load i64, i64* %RBP.i, align 8
  %3264 = add i64 %3263, -24
  %3265 = add i64 %3187, 69
  store i64 %3265, i64* %3, align 8
  %3266 = inttoptr i64 %3264 to i32*
  %3267 = load i32, i32* %3266, align 4
  %3268 = add i32 %3267, %3261
  %3269 = zext i32 %3268 to i64
  store i64 %3269, i64* %RSI.i2255, align 8
  %3270 = icmp ult i32 %3268, %3261
  %3271 = icmp ult i32 %3268, %3267
  %3272 = or i1 %3270, %3271
  %3273 = zext i1 %3272 to i8
  store i8 %3273, i8* %55, align 1
  %3274 = and i32 %3268, 255
  %3275 = tail call i32 @llvm.ctpop.i32(i32 %3274)
  %3276 = trunc i32 %3275 to i8
  %3277 = and i8 %3276, 1
  %3278 = xor i8 %3277, 1
  store i8 %3278, i8* %56, align 1
  %3279 = xor i32 %3267, %3261
  %3280 = xor i32 %3279, %3268
  %3281 = lshr i32 %3280, 4
  %3282 = trunc i32 %3281 to i8
  %3283 = and i8 %3282, 1
  store i8 %3283, i8* %57, align 1
  %3284 = icmp eq i32 %3268, 0
  %3285 = zext i1 %3284 to i8
  store i8 %3285, i8* %60, align 1
  %3286 = lshr i32 %3268, 31
  %3287 = trunc i32 %3286 to i8
  store i8 %3287, i8* %61, align 1
  %3288 = lshr i32 %3261, 31
  %3289 = lshr i32 %3267, 31
  %3290 = xor i32 %3286, %3288
  %3291 = xor i32 %3286, %3289
  %3292 = add nuw nsw i32 %3290, %3291
  %3293 = icmp eq i32 %3292, 2
  %3294 = zext i1 %3293 to i8
  store i8 %3294, i8* %62, align 1
  %3295 = sext i32 %3268 to i64
  store i64 %3295, i64* %RDI.i2252, align 8
  %3296 = shl nsw i64 %3295, 3
  %3297 = add i64 %3256, %3296
  %3298 = add i64 %3187, 76
  store i64 %3298, i64* %3, align 8
  %3299 = inttoptr i64 %3297 to i64*
  %3300 = load i64, i64* %3299, align 8
  store i64 %3300, i64* %RCX.i2321, align 8
  store i64 %3257, i64* %RDI.i2252, align 8
  %3301 = add i64 %3257, 148
  %3302 = add i64 %3187, 90
  store i64 %3302, i64* %3, align 8
  %3303 = inttoptr i64 %3301 to i32*
  %3304 = load i32, i32* %3303, align 4
  %3305 = zext i32 %3304 to i64
  store i64 %3305, i64* %RSI.i2255, align 8
  %3306 = add i64 %3263, -28
  %3307 = add i64 %3187, 93
  store i64 %3307, i64* %3, align 8
  %3308 = inttoptr i64 %3306 to i32*
  %3309 = load i32, i32* %3308, align 4
  %3310 = add i32 %3309, %3304
  %3311 = zext i32 %3310 to i64
  store i64 %3311, i64* %RSI.i2255, align 8
  %3312 = icmp ult i32 %3310, %3304
  %3313 = icmp ult i32 %3310, %3309
  %3314 = or i1 %3312, %3313
  %3315 = zext i1 %3314 to i8
  store i8 %3315, i8* %55, align 1
  %3316 = and i32 %3310, 255
  %3317 = tail call i32 @llvm.ctpop.i32(i32 %3316)
  %3318 = trunc i32 %3317 to i8
  %3319 = and i8 %3318, 1
  %3320 = xor i8 %3319, 1
  store i8 %3320, i8* %56, align 1
  %3321 = xor i32 %3309, %3304
  %3322 = xor i32 %3321, %3310
  %3323 = lshr i32 %3322, 4
  %3324 = trunc i32 %3323 to i8
  %3325 = and i8 %3324, 1
  store i8 %3325, i8* %57, align 1
  %3326 = icmp eq i32 %3310, 0
  %3327 = zext i1 %3326 to i8
  store i8 %3327, i8* %60, align 1
  %3328 = lshr i32 %3310, 31
  %3329 = trunc i32 %3328 to i8
  store i8 %3329, i8* %61, align 1
  %3330 = lshr i32 %3304, 31
  %3331 = lshr i32 %3309, 31
  %3332 = xor i32 %3328, %3330
  %3333 = xor i32 %3328, %3331
  %3334 = add nuw nsw i32 %3332, %3333
  %3335 = icmp eq i32 %3334, 2
  %3336 = zext i1 %3335 to i8
  store i8 %3336, i8* %62, align 1
  %3337 = sext i32 %3310 to i64
  store i64 %3337, i64* %RDI.i2252, align 8
  %3338 = shl nsw i64 %3337, 3
  %3339 = add i64 %3300, %3338
  %3340 = load i64, i64* %RAX.i2329, align 8
  %3341 = add i64 %3187, 100
  store i64 %3341, i64* %3, align 8
  %3342 = inttoptr i64 %3339 to i64*
  store i64 %3340, i64* %3342, align 8
  %3343 = load i64, i64* %3, align 8
  %3344 = add i64 %3343, 491
  store i64 %3344, i64* %3, align 8
  br label %block_.L_4905ff

block_.L_490419:                                  ; preds = %block_490248, %block_49023e, %block_.L_49022d
  %3345 = phi i64 [ %2780, %block_490248 ], [ %2754, %block_49023e ], [ %2730, %block_.L_49022d ]
  %3346 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %3346, i64* %RAX.i2329, align 8
  %3347 = add i64 %3346, 71928
  %3348 = add i64 %3345, 15
  store i64 %3348, i64* %3, align 8
  %3349 = inttoptr i64 %3347 to i64*
  %3350 = load i64, i64* %3349, align 8
  store i64 %3350, i64* %RAX.i2329, align 8
  %3351 = add i64 %2673, -24
  %3352 = add i64 %3345, 19
  store i64 %3352, i64* %3, align 8
  %3353 = inttoptr i64 %3351 to i32*
  %3354 = load i32, i32* %3353, align 4
  %3355 = sext i32 %3354 to i64
  store i64 %3355, i64* %RCX.i2321, align 8
  %3356 = shl nsw i64 %3355, 3
  %3357 = add i64 %3356, %3350
  %3358 = add i64 %3345, 23
  store i64 %3358, i64* %3, align 8
  %3359 = inttoptr i64 %3357 to i64*
  %3360 = load i64, i64* %3359, align 8
  store i64 %3360, i64* %RAX.i2329, align 8
  %3361 = add i64 %2673, -28
  %3362 = add i64 %3345, 27
  store i64 %3362, i64* %3, align 8
  %3363 = inttoptr i64 %3361 to i32*
  %3364 = load i32, i32* %3363, align 4
  %3365 = sext i32 %3364 to i64
  store i64 %3365, i64* %RCX.i2321, align 8
  %3366 = shl nsw i64 %3365, 3
  %3367 = add i64 %3366, %3360
  %3368 = add i64 %3345, 31
  store i64 %3368, i64* %3, align 8
  %3369 = inttoptr i64 %3367 to i64*
  %3370 = load i64, i64* %3369, align 8
  store i64 %3370, i64* %RAX.i2329, align 8
  %3371 = add i64 %3345, 34
  store i64 %3371, i64* %3, align 8
  %3372 = inttoptr i64 %3370 to i64*
  %3373 = load i64, i64* %3372, align 8
  store i64 %3373, i64* %RAX.i2329, align 8
  %3374 = add i64 %2673, -16
  %3375 = add i64 %3345, 38
  store i64 %3375, i64* %3, align 8
  %3376 = inttoptr i64 %3374 to i32*
  %3377 = load i32, i32* %3376, align 4
  %3378 = sext i32 %3377 to i64
  store i64 %3378, i64* %RCX.i2321, align 8
  %3379 = shl nsw i64 %3378, 3
  %3380 = add i64 %3379, %3373
  %3381 = add i64 %3345, 42
  store i64 %3381, i64* %3, align 8
  %3382 = inttoptr i64 %3380 to i64*
  %3383 = load i64, i64* %3382, align 8
  store i64 %3383, i64* %RAX.i2329, align 8
  %3384 = add i64 %2673, -8
  %3385 = add i64 %3345, 46
  store i64 %3385, i64* %3, align 8
  %3386 = inttoptr i64 %3384 to i32*
  %3387 = load i32, i32* %3386, align 4
  %3388 = sext i32 %3387 to i64
  store i64 %3388, i64* %RCX.i2321, align 8
  %3389 = shl nsw i64 %3388, 3
  %3390 = add i64 %3389, %3383
  %3391 = add i64 %3345, 50
  store i64 %3391, i64* %3, align 8
  %3392 = inttoptr i64 %3390 to i64*
  %3393 = load i64, i64* %3392, align 8
  store i64 %3393, i64* %RAX.i2329, align 8
  %3394 = add i64 %3345, 53
  store i64 %3394, i64* %3, align 8
  %3395 = inttoptr i64 %3393 to i16*
  %3396 = load i16, i16* %3395, align 2
  store i16 %3396, i16* %DX.i1069, align 2
  %3397 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %3397, i64* %RAX.i2329, align 8
  %3398 = add i64 %3397, 6504
  %3399 = add i64 %3345, 68
  store i64 %3399, i64* %3, align 8
  %3400 = inttoptr i64 %3398 to i64*
  %3401 = load i64, i64* %3400, align 8
  store i64 %3401, i64* %RAX.i2329, align 8
  %3402 = add i64 %3345, 71
  store i64 %3402, i64* %3, align 8
  %3403 = inttoptr i64 %3401 to i64*
  %3404 = load i64, i64* %3403, align 8
  store i64 %3404, i64* %RAX.i2329, align 8
  store i64 %3346, i64* %RCX.i2321, align 8
  %3405 = add i64 %3346, 144
  %3406 = add i64 %3345, 85
  store i64 %3406, i64* %3, align 8
  %3407 = inttoptr i64 %3405 to i32*
  %3408 = load i32, i32* %3407, align 4
  %3409 = zext i32 %3408 to i64
  store i64 %3409, i64* %RSI.i2255, align 8
  %3410 = load i64, i64* %RBP.i, align 8
  %3411 = add i64 %3410, -24
  %3412 = add i64 %3345, 88
  store i64 %3412, i64* %3, align 8
  %3413 = inttoptr i64 %3411 to i32*
  %3414 = load i32, i32* %3413, align 4
  %3415 = add i32 %3414, %3408
  %3416 = zext i32 %3415 to i64
  store i64 %3416, i64* %RSI.i2255, align 8
  %3417 = icmp ult i32 %3415, %3408
  %3418 = icmp ult i32 %3415, %3414
  %3419 = or i1 %3417, %3418
  %3420 = zext i1 %3419 to i8
  store i8 %3420, i8* %55, align 1
  %3421 = and i32 %3415, 255
  %3422 = tail call i32 @llvm.ctpop.i32(i32 %3421)
  %3423 = trunc i32 %3422 to i8
  %3424 = and i8 %3423, 1
  %3425 = xor i8 %3424, 1
  store i8 %3425, i8* %56, align 1
  %3426 = xor i32 %3414, %3408
  %3427 = xor i32 %3426, %3415
  %3428 = lshr i32 %3427, 4
  %3429 = trunc i32 %3428 to i8
  %3430 = and i8 %3429, 1
  store i8 %3430, i8* %57, align 1
  %3431 = icmp eq i32 %3415, 0
  %3432 = zext i1 %3431 to i8
  store i8 %3432, i8* %60, align 1
  %3433 = lshr i32 %3415, 31
  %3434 = trunc i32 %3433 to i8
  store i8 %3434, i8* %61, align 1
  %3435 = lshr i32 %3408, 31
  %3436 = lshr i32 %3414, 31
  %3437 = xor i32 %3433, %3435
  %3438 = xor i32 %3433, %3436
  %3439 = add nuw nsw i32 %3437, %3438
  %3440 = icmp eq i32 %3439, 2
  %3441 = zext i1 %3440 to i8
  store i8 %3441, i8* %62, align 1
  %3442 = sext i32 %3415 to i64
  store i64 %3442, i64* %RCX.i2321, align 8
  %3443 = shl nsw i64 %3442, 3
  %3444 = add i64 %3404, %3443
  %3445 = add i64 %3345, 95
  store i64 %3445, i64* %3, align 8
  %3446 = inttoptr i64 %3444 to i64*
  %3447 = load i64, i64* %3446, align 8
  store i64 %3447, i64* %RAX.i2329, align 8
  %3448 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %3448, i64* %RCX.i2321, align 8
  %3449 = add i64 %3448, 148
  %3450 = add i64 %3345, 109
  store i64 %3450, i64* %3, align 8
  %3451 = inttoptr i64 %3449 to i32*
  %3452 = load i32, i32* %3451, align 4
  %3453 = zext i32 %3452 to i64
  store i64 %3453, i64* %RSI.i2255, align 8
  %3454 = add i64 %3410, -28
  %3455 = add i64 %3345, 112
  store i64 %3455, i64* %3, align 8
  %3456 = inttoptr i64 %3454 to i32*
  %3457 = load i32, i32* %3456, align 4
  %3458 = add i32 %3457, %3452
  %3459 = zext i32 %3458 to i64
  store i64 %3459, i64* %RSI.i2255, align 8
  %3460 = icmp ult i32 %3458, %3452
  %3461 = icmp ult i32 %3458, %3457
  %3462 = or i1 %3460, %3461
  %3463 = zext i1 %3462 to i8
  store i8 %3463, i8* %55, align 1
  %3464 = and i32 %3458, 255
  %3465 = tail call i32 @llvm.ctpop.i32(i32 %3464)
  %3466 = trunc i32 %3465 to i8
  %3467 = and i8 %3466, 1
  %3468 = xor i8 %3467, 1
  store i8 %3468, i8* %56, align 1
  %3469 = xor i32 %3457, %3452
  %3470 = xor i32 %3469, %3458
  %3471 = lshr i32 %3470, 4
  %3472 = trunc i32 %3471 to i8
  %3473 = and i8 %3472, 1
  store i8 %3473, i8* %57, align 1
  %3474 = icmp eq i32 %3458, 0
  %3475 = zext i1 %3474 to i8
  store i8 %3475, i8* %60, align 1
  %3476 = lshr i32 %3458, 31
  %3477 = trunc i32 %3476 to i8
  store i8 %3477, i8* %61, align 1
  %3478 = lshr i32 %3452, 31
  %3479 = lshr i32 %3457, 31
  %3480 = xor i32 %3476, %3478
  %3481 = xor i32 %3476, %3479
  %3482 = add nuw nsw i32 %3480, %3481
  %3483 = icmp eq i32 %3482, 2
  %3484 = zext i1 %3483 to i8
  store i8 %3484, i8* %62, align 1
  %3485 = sext i32 %3458 to i64
  store i64 %3485, i64* %RCX.i2321, align 8
  %3486 = shl nsw i64 %3485, 3
  %3487 = add i64 %3447, %3486
  %3488 = add i64 %3345, 119
  store i64 %3488, i64* %3, align 8
  %3489 = inttoptr i64 %3487 to i16**
  %3490 = load i16*, i16** %3489, align 8
  %3491 = load i16, i16* %DX.i1069, align 2
  %3492 = add i64 %3345, 122
  store i64 %3492, i64* %3, align 8
  store i16 %3491, i16* %3490, align 2
  %3493 = load i64, i64* %3, align 8
  %3494 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %3494, i64* %RAX.i2329, align 8
  %3495 = add i64 %3494, 71928
  %3496 = add i64 %3493, 15
  store i64 %3496, i64* %3, align 8
  %3497 = inttoptr i64 %3495 to i64*
  %3498 = load i64, i64* %3497, align 8
  store i64 %3498, i64* %RAX.i2329, align 8
  %3499 = load i64, i64* %RBP.i, align 8
  %3500 = add i64 %3499, -24
  %3501 = add i64 %3493, 19
  store i64 %3501, i64* %3, align 8
  %3502 = inttoptr i64 %3500 to i32*
  %3503 = load i32, i32* %3502, align 4
  %3504 = sext i32 %3503 to i64
  store i64 %3504, i64* %RCX.i2321, align 8
  %3505 = shl nsw i64 %3504, 3
  %3506 = add i64 %3505, %3498
  %3507 = add i64 %3493, 23
  store i64 %3507, i64* %3, align 8
  %3508 = inttoptr i64 %3506 to i64*
  %3509 = load i64, i64* %3508, align 8
  store i64 %3509, i64* %RAX.i2329, align 8
  %3510 = add i64 %3499, -28
  %3511 = add i64 %3493, 27
  store i64 %3511, i64* %3, align 8
  %3512 = inttoptr i64 %3510 to i32*
  %3513 = load i32, i32* %3512, align 4
  %3514 = sext i32 %3513 to i64
  store i64 %3514, i64* %RCX.i2321, align 8
  %3515 = shl nsw i64 %3514, 3
  %3516 = add i64 %3515, %3509
  %3517 = add i64 %3493, 31
  store i64 %3517, i64* %3, align 8
  %3518 = inttoptr i64 %3516 to i64*
  %3519 = load i64, i64* %3518, align 8
  store i64 %3519, i64* %RAX.i2329, align 8
  %3520 = add i64 %3493, 34
  store i64 %3520, i64* %3, align 8
  %3521 = inttoptr i64 %3519 to i64*
  %3522 = load i64, i64* %3521, align 8
  store i64 %3522, i64* %RAX.i2329, align 8
  %3523 = add i64 %3499, -16
  %3524 = add i64 %3493, 38
  store i64 %3524, i64* %3, align 8
  %3525 = inttoptr i64 %3523 to i32*
  %3526 = load i32, i32* %3525, align 4
  %3527 = sext i32 %3526 to i64
  store i64 %3527, i64* %RCX.i2321, align 8
  %3528 = shl nsw i64 %3527, 3
  %3529 = add i64 %3528, %3522
  %3530 = add i64 %3493, 42
  store i64 %3530, i64* %3, align 8
  %3531 = inttoptr i64 %3529 to i64*
  %3532 = load i64, i64* %3531, align 8
  store i64 %3532, i64* %RAX.i2329, align 8
  %3533 = add i64 %3499, -8
  %3534 = add i64 %3493, 46
  store i64 %3534, i64* %3, align 8
  %3535 = inttoptr i64 %3533 to i32*
  %3536 = load i32, i32* %3535, align 4
  %3537 = sext i32 %3536 to i64
  store i64 %3537, i64* %RCX.i2321, align 8
  %3538 = shl nsw i64 %3537, 3
  %3539 = add i64 %3538, %3532
  %3540 = add i64 %3493, 50
  store i64 %3540, i64* %3, align 8
  %3541 = inttoptr i64 %3539 to i64*
  %3542 = load i64, i64* %3541, align 8
  store i64 %3542, i64* %RAX.i2329, align 8
  %3543 = add i64 %3542, 2
  %3544 = add i64 %3493, 54
  store i64 %3544, i64* %3, align 8
  %3545 = inttoptr i64 %3543 to i16*
  %3546 = load i16, i16* %3545, align 2
  store i16 %3546, i16* %DX.i1069, align 2
  %3547 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %3547, i64* %RAX.i2329, align 8
  %3548 = add i64 %3547, 6504
  %3549 = add i64 %3493, 69
  store i64 %3549, i64* %3, align 8
  %3550 = inttoptr i64 %3548 to i64*
  %3551 = load i64, i64* %3550, align 8
  store i64 %3551, i64* %RAX.i2329, align 8
  %3552 = add i64 %3493, 72
  store i64 %3552, i64* %3, align 8
  %3553 = inttoptr i64 %3551 to i64*
  %3554 = load i64, i64* %3553, align 8
  store i64 %3554, i64* %RAX.i2329, align 8
  store i64 %3494, i64* %RCX.i2321, align 8
  %3555 = add i64 %3494, 144
  %3556 = add i64 %3493, 86
  store i64 %3556, i64* %3, align 8
  %3557 = inttoptr i64 %3555 to i32*
  %3558 = load i32, i32* %3557, align 4
  %3559 = zext i32 %3558 to i64
  store i64 %3559, i64* %RSI.i2255, align 8
  %3560 = add i64 %3493, 89
  store i64 %3560, i64* %3, align 8
  %3561 = load i32, i32* %3502, align 4
  %3562 = add i32 %3561, %3558
  %3563 = zext i32 %3562 to i64
  store i64 %3563, i64* %RSI.i2255, align 8
  %3564 = icmp ult i32 %3562, %3558
  %3565 = icmp ult i32 %3562, %3561
  %3566 = or i1 %3564, %3565
  %3567 = zext i1 %3566 to i8
  store i8 %3567, i8* %55, align 1
  %3568 = and i32 %3562, 255
  %3569 = tail call i32 @llvm.ctpop.i32(i32 %3568)
  %3570 = trunc i32 %3569 to i8
  %3571 = and i8 %3570, 1
  %3572 = xor i8 %3571, 1
  store i8 %3572, i8* %56, align 1
  %3573 = xor i32 %3561, %3558
  %3574 = xor i32 %3573, %3562
  %3575 = lshr i32 %3574, 4
  %3576 = trunc i32 %3575 to i8
  %3577 = and i8 %3576, 1
  store i8 %3577, i8* %57, align 1
  %3578 = icmp eq i32 %3562, 0
  %3579 = zext i1 %3578 to i8
  store i8 %3579, i8* %60, align 1
  %3580 = lshr i32 %3562, 31
  %3581 = trunc i32 %3580 to i8
  store i8 %3581, i8* %61, align 1
  %3582 = lshr i32 %3558, 31
  %3583 = lshr i32 %3561, 31
  %3584 = xor i32 %3580, %3582
  %3585 = xor i32 %3580, %3583
  %3586 = add nuw nsw i32 %3584, %3585
  %3587 = icmp eq i32 %3586, 2
  %3588 = zext i1 %3587 to i8
  store i8 %3588, i8* %62, align 1
  %3589 = sext i32 %3562 to i64
  store i64 %3589, i64* %RCX.i2321, align 8
  %3590 = shl nsw i64 %3589, 3
  %3591 = add i64 %3554, %3590
  %3592 = add i64 %3493, 96
  store i64 %3592, i64* %3, align 8
  %3593 = inttoptr i64 %3591 to i64*
  %3594 = load i64, i64* %3593, align 8
  store i64 %3594, i64* %RAX.i2329, align 8
  %3595 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %3595, i64* %RCX.i2321, align 8
  %3596 = add i64 %3595, 148
  %3597 = add i64 %3493, 110
  store i64 %3597, i64* %3, align 8
  %3598 = inttoptr i64 %3596 to i32*
  %3599 = load i32, i32* %3598, align 4
  %3600 = zext i32 %3599 to i64
  store i64 %3600, i64* %RSI.i2255, align 8
  %3601 = load i64, i64* %RBP.i, align 8
  %3602 = add i64 %3601, -28
  %3603 = add i64 %3493, 113
  store i64 %3603, i64* %3, align 8
  %3604 = inttoptr i64 %3602 to i32*
  %3605 = load i32, i32* %3604, align 4
  %3606 = add i32 %3605, %3599
  %3607 = zext i32 %3606 to i64
  store i64 %3607, i64* %RSI.i2255, align 8
  %3608 = icmp ult i32 %3606, %3599
  %3609 = icmp ult i32 %3606, %3605
  %3610 = or i1 %3608, %3609
  %3611 = zext i1 %3610 to i8
  store i8 %3611, i8* %55, align 1
  %3612 = and i32 %3606, 255
  %3613 = tail call i32 @llvm.ctpop.i32(i32 %3612)
  %3614 = trunc i32 %3613 to i8
  %3615 = and i8 %3614, 1
  %3616 = xor i8 %3615, 1
  store i8 %3616, i8* %56, align 1
  %3617 = xor i32 %3605, %3599
  %3618 = xor i32 %3617, %3606
  %3619 = lshr i32 %3618, 4
  %3620 = trunc i32 %3619 to i8
  %3621 = and i8 %3620, 1
  store i8 %3621, i8* %57, align 1
  %3622 = icmp eq i32 %3606, 0
  %3623 = zext i1 %3622 to i8
  store i8 %3623, i8* %60, align 1
  %3624 = lshr i32 %3606, 31
  %3625 = trunc i32 %3624 to i8
  store i8 %3625, i8* %61, align 1
  %3626 = lshr i32 %3599, 31
  %3627 = lshr i32 %3605, 31
  %3628 = xor i32 %3624, %3626
  %3629 = xor i32 %3624, %3627
  %3630 = add nuw nsw i32 %3628, %3629
  %3631 = icmp eq i32 %3630, 2
  %3632 = zext i1 %3631 to i8
  store i8 %3632, i8* %62, align 1
  %3633 = sext i32 %3606 to i64
  store i64 %3633, i64* %RCX.i2321, align 8
  %3634 = shl nsw i64 %3633, 3
  %3635 = add i64 %3594, %3634
  %3636 = add i64 %3493, 120
  store i64 %3636, i64* %3, align 8
  %3637 = inttoptr i64 %3635 to i64*
  %3638 = load i64, i64* %3637, align 8
  store i64 %3638, i64* %RAX.i2329, align 8
  %3639 = add i64 %3638, 2
  %3640 = load i16, i16* %DX.i1069, align 2
  %3641 = add i64 %3493, 124
  store i64 %3641, i64* %3, align 8
  %3642 = inttoptr i64 %3639 to i16*
  store i16 %3640, i16* %3642, align 2
  %3643 = load i64, i64* %RBP.i, align 8
  %3644 = add i64 %3643, -16
  %3645 = load i64, i64* %3, align 8
  %3646 = add i64 %3645, 3
  store i64 %3646, i64* %3, align 8
  %3647 = inttoptr i64 %3644 to i32*
  %3648 = load i32, i32* %3647, align 4
  %3649 = zext i32 %3648 to i64
  store i64 %3649, i64* %RSI.i2255, align 8
  %3650 = trunc i32 %3648 to i16
  store i16 %3650, i16* %DX.i1069, align 2
  %3651 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %3651, i64* %RAX.i2329, align 8
  %3652 = add i64 %3651, 6480
  %3653 = add i64 %3645, 21
  store i64 %3653, i64* %3, align 8
  %3654 = inttoptr i64 %3652 to i64*
  %3655 = load i64, i64* %3654, align 8
  store i64 %3655, i64* %RAX.i2329, align 8
  %3656 = add i64 %3645, 24
  store i64 %3656, i64* %3, align 8
  %3657 = inttoptr i64 %3655 to i64*
  %3658 = load i64, i64* %3657, align 8
  store i64 %3658, i64* %RAX.i2329, align 8
  %3659 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %3659, i64* %RCX.i2321, align 8
  %3660 = add i64 %3659, 144
  %3661 = add i64 %3645, 38
  store i64 %3661, i64* %3, align 8
  %3662 = inttoptr i64 %3660 to i32*
  %3663 = load i32, i32* %3662, align 4
  %3664 = zext i32 %3663 to i64
  store i64 %3664, i64* %RSI.i2255, align 8
  %3665 = add i64 %3643, -24
  %3666 = add i64 %3645, 41
  store i64 %3666, i64* %3, align 8
  %3667 = inttoptr i64 %3665 to i32*
  %3668 = load i32, i32* %3667, align 4
  %3669 = add i32 %3668, %3663
  %3670 = zext i32 %3669 to i64
  store i64 %3670, i64* %RSI.i2255, align 8
  %3671 = icmp ult i32 %3669, %3663
  %3672 = icmp ult i32 %3669, %3668
  %3673 = or i1 %3671, %3672
  %3674 = zext i1 %3673 to i8
  store i8 %3674, i8* %55, align 1
  %3675 = and i32 %3669, 255
  %3676 = tail call i32 @llvm.ctpop.i32(i32 %3675)
  %3677 = trunc i32 %3676 to i8
  %3678 = and i8 %3677, 1
  %3679 = xor i8 %3678, 1
  store i8 %3679, i8* %56, align 1
  %3680 = xor i32 %3668, %3663
  %3681 = xor i32 %3680, %3669
  %3682 = lshr i32 %3681, 4
  %3683 = trunc i32 %3682 to i8
  %3684 = and i8 %3683, 1
  store i8 %3684, i8* %57, align 1
  %3685 = icmp eq i32 %3669, 0
  %3686 = zext i1 %3685 to i8
  store i8 %3686, i8* %60, align 1
  %3687 = lshr i32 %3669, 31
  %3688 = trunc i32 %3687 to i8
  store i8 %3688, i8* %61, align 1
  %3689 = lshr i32 %3663, 31
  %3690 = lshr i32 %3668, 31
  %3691 = xor i32 %3687, %3689
  %3692 = xor i32 %3687, %3690
  %3693 = add nuw nsw i32 %3691, %3692
  %3694 = icmp eq i32 %3693, 2
  %3695 = zext i1 %3694 to i8
  store i8 %3695, i8* %62, align 1
  %3696 = sext i32 %3669 to i64
  store i64 %3696, i64* %RCX.i2321, align 8
  %3697 = shl nsw i64 %3696, 3
  %3698 = add i64 %3658, %3697
  %3699 = add i64 %3645, 48
  store i64 %3699, i64* %3, align 8
  %3700 = inttoptr i64 %3698 to i64*
  %3701 = load i64, i64* %3700, align 8
  store i64 %3701, i64* %RAX.i2329, align 8
  store i64 %3659, i64* %RCX.i2321, align 8
  %3702 = add i64 %3659, 148
  %3703 = add i64 %3645, 62
  store i64 %3703, i64* %3, align 8
  %3704 = inttoptr i64 %3702 to i32*
  %3705 = load i32, i32* %3704, align 4
  %3706 = zext i32 %3705 to i64
  store i64 %3706, i64* %RSI.i2255, align 8
  %3707 = load i64, i64* %RBP.i, align 8
  %3708 = add i64 %3707, -28
  %3709 = add i64 %3645, 65
  store i64 %3709, i64* %3, align 8
  %3710 = inttoptr i64 %3708 to i32*
  %3711 = load i32, i32* %3710, align 4
  %3712 = add i32 %3711, %3705
  %3713 = zext i32 %3712 to i64
  store i64 %3713, i64* %RSI.i2255, align 8
  %3714 = sext i32 %3712 to i64
  store i64 %3714, i64* %RCX.i2321, align 8
  %3715 = shl nsw i64 %3714, 1
  %3716 = add i64 %3701, %3715
  %3717 = load i16, i16* %DX.i1069, align 2
  %3718 = add i64 %3645, 72
  store i64 %3718, i64* %3, align 8
  %3719 = inttoptr i64 %3716 to i16*
  store i16 %3717, i16* %3719, align 2
  %3720 = load i64, i64* %3, align 8
  %3721 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  %3722 = add i64 %3721, 24
  store i64 %3722, i64* %RAX.i2329, align 8
  %3723 = icmp ugt i64 %3721, -25
  %3724 = zext i1 %3723 to i8
  store i8 %3724, i8* %55, align 1
  %3725 = trunc i64 %3722 to i32
  %3726 = and i32 %3725, 255
  %3727 = tail call i32 @llvm.ctpop.i32(i32 %3726)
  %3728 = trunc i32 %3727 to i8
  %3729 = and i8 %3728, 1
  %3730 = xor i8 %3729, 1
  store i8 %3730, i8* %56, align 1
  %3731 = xor i64 %3721, 16
  %3732 = xor i64 %3731, %3722
  %3733 = lshr i64 %3732, 4
  %3734 = trunc i64 %3733 to i8
  %3735 = and i8 %3734, 1
  store i8 %3735, i8* %57, align 1
  %3736 = icmp eq i64 %3722, 0
  %3737 = zext i1 %3736 to i8
  store i8 %3737, i8* %60, align 1
  %3738 = lshr i64 %3722, 63
  %3739 = trunc i64 %3738 to i8
  store i8 %3739, i8* %61, align 1
  %3740 = lshr i64 %3721, 63
  %3741 = xor i64 %3738, %3740
  %3742 = add nuw nsw i64 %3741, %3738
  %3743 = icmp eq i64 %3742, 2
  %3744 = zext i1 %3743 to i8
  store i8 %3744, i8* %62, align 1
  %3745 = load i64, i64* %RBP.i, align 8
  %3746 = add i64 %3745, -56
  %3747 = add i64 %3720, 15
  store i64 %3747, i64* %3, align 8
  %3748 = inttoptr i64 %3746 to i32*
  %3749 = load i32, i32* %3748, align 4
  %3750 = zext i32 %3749 to i64
  store i64 %3750, i64* %RSI.i2255, align 8
  %3751 = sext i32 %3749 to i64
  %3752 = mul nsw i64 %3751, 264
  %3753 = lshr i64 %3752, 63
  %3754 = add i64 %3752, %3722
  store i64 %3754, i64* %RAX.i2329, align 8
  %3755 = icmp ult i64 %3754, %3722
  %3756 = icmp ult i64 %3754, %3752
  %3757 = or i1 %3755, %3756
  %3758 = zext i1 %3757 to i8
  store i8 %3758, i8* %55, align 1
  %3759 = trunc i64 %3754 to i32
  %3760 = and i32 %3759, 255
  %3761 = tail call i32 @llvm.ctpop.i32(i32 %3760)
  %3762 = trunc i32 %3761 to i8
  %3763 = and i8 %3762, 1
  %3764 = xor i8 %3763, 1
  store i8 %3764, i8* %56, align 1
  %3765 = xor i64 %3752, %3722
  %3766 = xor i64 %3765, %3754
  %3767 = lshr i64 %3766, 4
  %3768 = trunc i64 %3767 to i8
  %3769 = and i8 %3768, 1
  store i8 %3769, i8* %57, align 1
  %3770 = icmp eq i64 %3754, 0
  %3771 = zext i1 %3770 to i8
  store i8 %3771, i8* %60, align 1
  %3772 = lshr i64 %3754, 63
  %3773 = trunc i64 %3772 to i8
  store i8 %3773, i8* %61, align 1
  %3774 = xor i64 %3772, %3738
  %3775 = xor i64 %3772, %3753
  %3776 = add nuw nsw i64 %3774, %3775
  %3777 = icmp eq i64 %3776, 2
  %3778 = zext i1 %3777 to i8
  store i8 %3778, i8* %62, align 1
  %3779 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %3779, i64* %RCX.i2321, align 8
  %3780 = add i64 %3779, 6480
  %3781 = add i64 %3720, 46
  store i64 %3781, i64* %3, align 8
  %3782 = inttoptr i64 %3780 to i64*
  %3783 = load i64, i64* %3782, align 8
  store i64 %3783, i64* %RCX.i2321, align 8
  %3784 = add i64 %3720, 49
  store i64 %3784, i64* %3, align 8
  %3785 = inttoptr i64 %3783 to i64*
  %3786 = load i64, i64* %3785, align 8
  store i64 %3786, i64* %RCX.i2321, align 8
  %3787 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %3787, i64* %RDI.i2252, align 8
  %3788 = add i64 %3787, 144
  %3789 = add i64 %3720, 63
  store i64 %3789, i64* %3, align 8
  %3790 = inttoptr i64 %3788 to i32*
  %3791 = load i32, i32* %3790, align 4
  %3792 = zext i32 %3791 to i64
  store i64 %3792, i64* %RSI.i2255, align 8
  %3793 = load i64, i64* %RBP.i, align 8
  %3794 = add i64 %3793, -24
  %3795 = add i64 %3720, 66
  store i64 %3795, i64* %3, align 8
  %3796 = inttoptr i64 %3794 to i32*
  %3797 = load i32, i32* %3796, align 4
  %3798 = add i32 %3797, %3791
  %3799 = zext i32 %3798 to i64
  store i64 %3799, i64* %RSI.i2255, align 8
  %3800 = icmp ult i32 %3798, %3791
  %3801 = icmp ult i32 %3798, %3797
  %3802 = or i1 %3800, %3801
  %3803 = zext i1 %3802 to i8
  store i8 %3803, i8* %55, align 1
  %3804 = and i32 %3798, 255
  %3805 = tail call i32 @llvm.ctpop.i32(i32 %3804)
  %3806 = trunc i32 %3805 to i8
  %3807 = and i8 %3806, 1
  %3808 = xor i8 %3807, 1
  store i8 %3808, i8* %56, align 1
  %3809 = xor i32 %3797, %3791
  %3810 = xor i32 %3809, %3798
  %3811 = lshr i32 %3810, 4
  %3812 = trunc i32 %3811 to i8
  %3813 = and i8 %3812, 1
  store i8 %3813, i8* %57, align 1
  %3814 = icmp eq i32 %3798, 0
  %3815 = zext i1 %3814 to i8
  store i8 %3815, i8* %60, align 1
  %3816 = lshr i32 %3798, 31
  %3817 = trunc i32 %3816 to i8
  store i8 %3817, i8* %61, align 1
  %3818 = lshr i32 %3791, 31
  %3819 = lshr i32 %3797, 31
  %3820 = xor i32 %3816, %3818
  %3821 = xor i32 %3816, %3819
  %3822 = add nuw nsw i32 %3820, %3821
  %3823 = icmp eq i32 %3822, 2
  %3824 = zext i1 %3823 to i8
  store i8 %3824, i8* %62, align 1
  %3825 = sext i32 %3798 to i64
  store i64 %3825, i64* %RDI.i2252, align 8
  %3826 = shl nsw i64 %3825, 3
  %3827 = add i64 %3786, %3826
  %3828 = add i64 %3720, 73
  store i64 %3828, i64* %3, align 8
  %3829 = inttoptr i64 %3827 to i64*
  %3830 = load i64, i64* %3829, align 8
  store i64 %3830, i64* %RCX.i2321, align 8
  store i64 %3787, i64* %RDI.i2252, align 8
  %3831 = add i64 %3787, 148
  %3832 = add i64 %3720, 87
  store i64 %3832, i64* %3, align 8
  %3833 = inttoptr i64 %3831 to i32*
  %3834 = load i32, i32* %3833, align 4
  %3835 = zext i32 %3834 to i64
  store i64 %3835, i64* %RSI.i2255, align 8
  %3836 = add i64 %3793, -28
  %3837 = add i64 %3720, 90
  store i64 %3837, i64* %3, align 8
  %3838 = inttoptr i64 %3836 to i32*
  %3839 = load i32, i32* %3838, align 4
  %3840 = add i32 %3839, %3834
  %3841 = zext i32 %3840 to i64
  store i64 %3841, i64* %RSI.i2255, align 8
  %3842 = icmp ult i32 %3840, %3834
  %3843 = icmp ult i32 %3840, %3839
  %3844 = or i1 %3842, %3843
  %3845 = zext i1 %3844 to i8
  store i8 %3845, i8* %55, align 1
  %3846 = and i32 %3840, 255
  %3847 = tail call i32 @llvm.ctpop.i32(i32 %3846)
  %3848 = trunc i32 %3847 to i8
  %3849 = and i8 %3848, 1
  %3850 = xor i8 %3849, 1
  store i8 %3850, i8* %56, align 1
  %3851 = xor i32 %3839, %3834
  %3852 = xor i32 %3851, %3840
  %3853 = lshr i32 %3852, 4
  %3854 = trunc i32 %3853 to i8
  %3855 = and i8 %3854, 1
  store i8 %3855, i8* %57, align 1
  %3856 = icmp eq i32 %3840, 0
  %3857 = zext i1 %3856 to i8
  store i8 %3857, i8* %60, align 1
  %3858 = lshr i32 %3840, 31
  %3859 = trunc i32 %3858 to i8
  store i8 %3859, i8* %61, align 1
  %3860 = lshr i32 %3834, 31
  %3861 = lshr i32 %3839, 31
  %3862 = xor i32 %3858, %3860
  %3863 = xor i32 %3858, %3861
  %3864 = add nuw nsw i32 %3862, %3863
  %3865 = icmp eq i32 %3864, 2
  %3866 = zext i1 %3865 to i8
  store i8 %3866, i8* %62, align 1
  %3867 = sext i32 %3840 to i64
  store i64 %3867, i64* %RDI.i2252, align 8
  %3868 = shl nsw i64 %3867, 1
  %3869 = add i64 %3830, %3868
  %3870 = add i64 %3720, 98
  store i64 %3870, i64* %3, align 8
  %3871 = inttoptr i64 %3869 to i16*
  %3872 = load i16, i16* %3871, align 2
  %3873 = sext i16 %3872 to i64
  store i64 %3873, i64* %RCX.i2321, align 8
  %3874 = load i64, i64* %RAX.i2329, align 8
  %3875 = shl nsw i64 %3873, 3
  %3876 = add i64 %3875, %3874
  %3877 = add i64 %3720, 102
  store i64 %3877, i64* %3, align 8
  %3878 = inttoptr i64 %3876 to i64*
  %3879 = load i64, i64* %3878, align 8
  store i64 %3879, i64* %RAX.i2329, align 8
  %3880 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %3880, i64* %RCX.i2321, align 8
  %3881 = add i64 %3880, 6488
  %3882 = add i64 %3720, 117
  store i64 %3882, i64* %3, align 8
  %3883 = inttoptr i64 %3881 to i64*
  %3884 = load i64, i64* %3883, align 8
  store i64 %3884, i64* %RCX.i2321, align 8
  %3885 = add i64 %3720, 120
  store i64 %3885, i64* %3, align 8
  %3886 = inttoptr i64 %3884 to i64*
  %3887 = load i64, i64* %3886, align 8
  store i64 %3887, i64* %RCX.i2321, align 8
  %3888 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %3888, i64* %RDI.i2252, align 8
  %3889 = add i64 %3888, 144
  %3890 = add i64 %3720, 134
  store i64 %3890, i64* %3, align 8
  %3891 = inttoptr i64 %3889 to i32*
  %3892 = load i32, i32* %3891, align 4
  %3893 = zext i32 %3892 to i64
  store i64 %3893, i64* %RSI.i2255, align 8
  %3894 = load i64, i64* %RBP.i, align 8
  %3895 = add i64 %3894, -24
  %3896 = add i64 %3720, 137
  store i64 %3896, i64* %3, align 8
  %3897 = inttoptr i64 %3895 to i32*
  %3898 = load i32, i32* %3897, align 4
  %3899 = add i32 %3898, %3892
  %3900 = zext i32 %3899 to i64
  store i64 %3900, i64* %RSI.i2255, align 8
  %3901 = icmp ult i32 %3899, %3892
  %3902 = icmp ult i32 %3899, %3898
  %3903 = or i1 %3901, %3902
  %3904 = zext i1 %3903 to i8
  store i8 %3904, i8* %55, align 1
  %3905 = and i32 %3899, 255
  %3906 = tail call i32 @llvm.ctpop.i32(i32 %3905)
  %3907 = trunc i32 %3906 to i8
  %3908 = and i8 %3907, 1
  %3909 = xor i8 %3908, 1
  store i8 %3909, i8* %56, align 1
  %3910 = xor i32 %3898, %3892
  %3911 = xor i32 %3910, %3899
  %3912 = lshr i32 %3911, 4
  %3913 = trunc i32 %3912 to i8
  %3914 = and i8 %3913, 1
  store i8 %3914, i8* %57, align 1
  %3915 = icmp eq i32 %3899, 0
  %3916 = zext i1 %3915 to i8
  store i8 %3916, i8* %60, align 1
  %3917 = lshr i32 %3899, 31
  %3918 = trunc i32 %3917 to i8
  store i8 %3918, i8* %61, align 1
  %3919 = lshr i32 %3892, 31
  %3920 = lshr i32 %3898, 31
  %3921 = xor i32 %3917, %3919
  %3922 = xor i32 %3917, %3920
  %3923 = add nuw nsw i32 %3921, %3922
  %3924 = icmp eq i32 %3923, 2
  %3925 = zext i1 %3924 to i8
  store i8 %3925, i8* %62, align 1
  %3926 = sext i32 %3899 to i64
  store i64 %3926, i64* %RDI.i2252, align 8
  %3927 = shl nsw i64 %3926, 3
  %3928 = add i64 %3887, %3927
  %3929 = add i64 %3720, 144
  store i64 %3929, i64* %3, align 8
  %3930 = inttoptr i64 %3928 to i64*
  %3931 = load i64, i64* %3930, align 8
  store i64 %3931, i64* %RCX.i2321, align 8
  store i64 %3888, i64* %RDI.i2252, align 8
  %3932 = add i64 %3888, 148
  %3933 = add i64 %3720, 158
  store i64 %3933, i64* %3, align 8
  %3934 = inttoptr i64 %3932 to i32*
  %3935 = load i32, i32* %3934, align 4
  %3936 = zext i32 %3935 to i64
  store i64 %3936, i64* %RSI.i2255, align 8
  %3937 = add i64 %3894, -28
  %3938 = add i64 %3720, 161
  store i64 %3938, i64* %3, align 8
  %3939 = inttoptr i64 %3937 to i32*
  %3940 = load i32, i32* %3939, align 4
  %3941 = add i32 %3940, %3935
  %3942 = zext i32 %3941 to i64
  store i64 %3942, i64* %RSI.i2255, align 8
  %3943 = icmp ult i32 %3941, %3935
  %3944 = icmp ult i32 %3941, %3940
  %3945 = or i1 %3943, %3944
  %3946 = zext i1 %3945 to i8
  store i8 %3946, i8* %55, align 1
  %3947 = and i32 %3941, 255
  %3948 = tail call i32 @llvm.ctpop.i32(i32 %3947)
  %3949 = trunc i32 %3948 to i8
  %3950 = and i8 %3949, 1
  %3951 = xor i8 %3950, 1
  store i8 %3951, i8* %56, align 1
  %3952 = xor i32 %3940, %3935
  %3953 = xor i32 %3952, %3941
  %3954 = lshr i32 %3953, 4
  %3955 = trunc i32 %3954 to i8
  %3956 = and i8 %3955, 1
  store i8 %3956, i8* %57, align 1
  %3957 = icmp eq i32 %3941, 0
  %3958 = zext i1 %3957 to i8
  store i8 %3958, i8* %60, align 1
  %3959 = lshr i32 %3941, 31
  %3960 = trunc i32 %3959 to i8
  store i8 %3960, i8* %61, align 1
  %3961 = lshr i32 %3935, 31
  %3962 = lshr i32 %3940, 31
  %3963 = xor i32 %3959, %3961
  %3964 = xor i32 %3959, %3962
  %3965 = add nuw nsw i32 %3963, %3964
  %3966 = icmp eq i32 %3965, 2
  %3967 = zext i1 %3966 to i8
  store i8 %3967, i8* %62, align 1
  %3968 = sext i32 %3941 to i64
  store i64 %3968, i64* %RDI.i2252, align 8
  %3969 = shl nsw i64 %3968, 3
  %3970 = add i64 %3931, %3969
  %3971 = load i64, i64* %RAX.i2329, align 8
  %3972 = add i64 %3720, 168
  store i64 %3972, i64* %3, align 8
  %3973 = inttoptr i64 %3970 to i64*
  store i64 %3971, i64* %3973, align 8
  %.pre55 = load i64, i64* %3, align 8
  br label %block_.L_4905ff

block_.L_4905ff:                                  ; preds = %block_.L_490419, %block_.L_49028e
  %3974 = phi i64 [ %.pre55, %block_.L_490419 ], [ %3344, %block_.L_49028e ]
  %3975 = add i64 %3974, 286
  store i64 %3975, i64* %3, align 8
  br label %block_.L_49071d

block_.L_490604:                                  ; preds = %block_490223
  %3976 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %3976, i64* %RAX.i2329, align 8
  %3977 = add i64 %3976, 6504
  %3978 = add i64 %2711, 15
  store i64 %3978, i64* %3, align 8
  %3979 = inttoptr i64 %3977 to i64*
  %3980 = load i64, i64* %3979, align 8
  store i64 %3980, i64* %RAX.i2329, align 8
  %3981 = add i64 %2711, 18
  store i64 %3981, i64* %3, align 8
  %3982 = inttoptr i64 %3980 to i64*
  %3983 = load i64, i64* %3982, align 8
  store i64 %3983, i64* %RAX.i2329, align 8
  %3984 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %3984, i64* %RCX.i2321, align 8
  %3985 = add i64 %3984, 144
  %3986 = add i64 %2711, 32
  store i64 %3986, i64* %3, align 8
  %3987 = inttoptr i64 %3985 to i32*
  %3988 = load i32, i32* %3987, align 4
  %3989 = zext i32 %3988 to i64
  store i64 %3989, i64* %RDX.i2263.pre-phi, align 8
  %3990 = add i64 %2673, -24
  %3991 = add i64 %2711, 35
  store i64 %3991, i64* %3, align 8
  %3992 = inttoptr i64 %3990 to i32*
  %3993 = load i32, i32* %3992, align 4
  %3994 = add i32 %3993, %3988
  %3995 = zext i32 %3994 to i64
  store i64 %3995, i64* %RDX.i2263.pre-phi, align 8
  %3996 = icmp ult i32 %3994, %3988
  %3997 = icmp ult i32 %3994, %3993
  %3998 = or i1 %3996, %3997
  %3999 = zext i1 %3998 to i8
  store i8 %3999, i8* %55, align 1
  %4000 = and i32 %3994, 255
  %4001 = tail call i32 @llvm.ctpop.i32(i32 %4000)
  %4002 = trunc i32 %4001 to i8
  %4003 = and i8 %4002, 1
  %4004 = xor i8 %4003, 1
  store i8 %4004, i8* %56, align 1
  %4005 = xor i32 %3993, %3988
  %4006 = xor i32 %4005, %3994
  %4007 = lshr i32 %4006, 4
  %4008 = trunc i32 %4007 to i8
  %4009 = and i8 %4008, 1
  store i8 %4009, i8* %57, align 1
  %4010 = icmp eq i32 %3994, 0
  %4011 = zext i1 %4010 to i8
  store i8 %4011, i8* %60, align 1
  %4012 = lshr i32 %3994, 31
  %4013 = trunc i32 %4012 to i8
  store i8 %4013, i8* %61, align 1
  %4014 = lshr i32 %3988, 31
  %4015 = lshr i32 %3993, 31
  %4016 = xor i32 %4012, %4014
  %4017 = xor i32 %4012, %4015
  %4018 = add nuw nsw i32 %4016, %4017
  %4019 = icmp eq i32 %4018, 2
  %4020 = zext i1 %4019 to i8
  store i8 %4020, i8* %62, align 1
  %4021 = sext i32 %3994 to i64
  store i64 %4021, i64* %RCX.i2321, align 8
  %4022 = shl nsw i64 %4021, 3
  %4023 = add i64 %3983, %4022
  %4024 = add i64 %2711, 42
  store i64 %4024, i64* %3, align 8
  %4025 = inttoptr i64 %4023 to i64*
  %4026 = load i64, i64* %4025, align 8
  store i64 %4026, i64* %RAX.i2329, align 8
  store i64 %3984, i64* %RCX.i2321, align 8
  %4027 = add i64 %3984, 148
  %4028 = add i64 %2711, 56
  store i64 %4028, i64* %3, align 8
  %4029 = inttoptr i64 %4027 to i32*
  %4030 = load i32, i32* %4029, align 4
  %4031 = zext i32 %4030 to i64
  store i64 %4031, i64* %RDX.i2263.pre-phi, align 8
  %4032 = add i64 %2673, -28
  %4033 = add i64 %2711, 59
  store i64 %4033, i64* %3, align 8
  %4034 = inttoptr i64 %4032 to i32*
  %4035 = load i32, i32* %4034, align 4
  %4036 = add i32 %4035, %4030
  %4037 = zext i32 %4036 to i64
  store i64 %4037, i64* %RDX.i2263.pre-phi, align 8
  %4038 = icmp ult i32 %4036, %4030
  %4039 = icmp ult i32 %4036, %4035
  %4040 = or i1 %4038, %4039
  %4041 = zext i1 %4040 to i8
  store i8 %4041, i8* %55, align 1
  %4042 = and i32 %4036, 255
  %4043 = tail call i32 @llvm.ctpop.i32(i32 %4042)
  %4044 = trunc i32 %4043 to i8
  %4045 = and i8 %4044, 1
  %4046 = xor i8 %4045, 1
  store i8 %4046, i8* %56, align 1
  %4047 = xor i32 %4035, %4030
  %4048 = xor i32 %4047, %4036
  %4049 = lshr i32 %4048, 4
  %4050 = trunc i32 %4049 to i8
  %4051 = and i8 %4050, 1
  store i8 %4051, i8* %57, align 1
  %4052 = icmp eq i32 %4036, 0
  %4053 = zext i1 %4052 to i8
  store i8 %4053, i8* %60, align 1
  %4054 = lshr i32 %4036, 31
  %4055 = trunc i32 %4054 to i8
  store i8 %4055, i8* %61, align 1
  %4056 = lshr i32 %4030, 31
  %4057 = lshr i32 %4035, 31
  %4058 = xor i32 %4054, %4056
  %4059 = xor i32 %4054, %4057
  %4060 = add nuw nsw i32 %4058, %4059
  %4061 = icmp eq i32 %4060, 2
  %4062 = zext i1 %4061 to i8
  store i8 %4062, i8* %62, align 1
  %4063 = sext i32 %4036 to i64
  store i64 %4063, i64* %RCX.i2321, align 8
  %4064 = shl nsw i64 %4063, 3
  %4065 = add i64 %4026, %4064
  %4066 = add i64 %2711, 66
  store i64 %4066, i64* %3, align 8
  %4067 = inttoptr i64 %4065 to i16**
  %4068 = load i16*, i16** %4067, align 8
  %4069 = add i64 %2711, 71
  store i64 %4069, i64* %3, align 8
  store i16 0, i16* %4068, align 2
  %4070 = load i64, i64* %3, align 8
  %4071 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %4071, i64* %RAX.i2329, align 8
  %4072 = add i64 %4071, 6504
  %4073 = add i64 %4070, 15
  store i64 %4073, i64* %3, align 8
  %4074 = inttoptr i64 %4072 to i64*
  %4075 = load i64, i64* %4074, align 8
  store i64 %4075, i64* %RAX.i2329, align 8
  %4076 = add i64 %4070, 18
  store i64 %4076, i64* %3, align 8
  %4077 = inttoptr i64 %4075 to i64*
  %4078 = load i64, i64* %4077, align 8
  store i64 %4078, i64* %RAX.i2329, align 8
  %4079 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %4079, i64* %RCX.i2321, align 8
  %4080 = add i64 %4079, 144
  %4081 = add i64 %4070, 32
  store i64 %4081, i64* %3, align 8
  %4082 = inttoptr i64 %4080 to i32*
  %4083 = load i32, i32* %4082, align 4
  %4084 = zext i32 %4083 to i64
  store i64 %4084, i64* %RDX.i2263.pre-phi, align 8
  %4085 = load i64, i64* %RBP.i, align 8
  %4086 = add i64 %4085, -24
  %4087 = add i64 %4070, 35
  store i64 %4087, i64* %3, align 8
  %4088 = inttoptr i64 %4086 to i32*
  %4089 = load i32, i32* %4088, align 4
  %4090 = add i32 %4089, %4083
  %4091 = zext i32 %4090 to i64
  store i64 %4091, i64* %RDX.i2263.pre-phi, align 8
  %4092 = icmp ult i32 %4090, %4083
  %4093 = icmp ult i32 %4090, %4089
  %4094 = or i1 %4092, %4093
  %4095 = zext i1 %4094 to i8
  store i8 %4095, i8* %55, align 1
  %4096 = and i32 %4090, 255
  %4097 = tail call i32 @llvm.ctpop.i32(i32 %4096)
  %4098 = trunc i32 %4097 to i8
  %4099 = and i8 %4098, 1
  %4100 = xor i8 %4099, 1
  store i8 %4100, i8* %56, align 1
  %4101 = xor i32 %4089, %4083
  %4102 = xor i32 %4101, %4090
  %4103 = lshr i32 %4102, 4
  %4104 = trunc i32 %4103 to i8
  %4105 = and i8 %4104, 1
  store i8 %4105, i8* %57, align 1
  %4106 = icmp eq i32 %4090, 0
  %4107 = zext i1 %4106 to i8
  store i8 %4107, i8* %60, align 1
  %4108 = lshr i32 %4090, 31
  %4109 = trunc i32 %4108 to i8
  store i8 %4109, i8* %61, align 1
  %4110 = lshr i32 %4083, 31
  %4111 = lshr i32 %4089, 31
  %4112 = xor i32 %4108, %4110
  %4113 = xor i32 %4108, %4111
  %4114 = add nuw nsw i32 %4112, %4113
  %4115 = icmp eq i32 %4114, 2
  %4116 = zext i1 %4115 to i8
  store i8 %4116, i8* %62, align 1
  %4117 = sext i32 %4090 to i64
  store i64 %4117, i64* %RCX.i2321, align 8
  %4118 = shl nsw i64 %4117, 3
  %4119 = add i64 %4078, %4118
  %4120 = add i64 %4070, 42
  store i64 %4120, i64* %3, align 8
  %4121 = inttoptr i64 %4119 to i64*
  %4122 = load i64, i64* %4121, align 8
  store i64 %4122, i64* %RAX.i2329, align 8
  store i64 %4079, i64* %RCX.i2321, align 8
  %4123 = add i64 %4079, 148
  %4124 = add i64 %4070, 56
  store i64 %4124, i64* %3, align 8
  %4125 = inttoptr i64 %4123 to i32*
  %4126 = load i32, i32* %4125, align 4
  %4127 = zext i32 %4126 to i64
  store i64 %4127, i64* %RDX.i2263.pre-phi, align 8
  %4128 = add i64 %4085, -28
  %4129 = add i64 %4070, 59
  store i64 %4129, i64* %3, align 8
  %4130 = inttoptr i64 %4128 to i32*
  %4131 = load i32, i32* %4130, align 4
  %4132 = add i32 %4131, %4126
  %4133 = zext i32 %4132 to i64
  store i64 %4133, i64* %RDX.i2263.pre-phi, align 8
  %4134 = icmp ult i32 %4132, %4126
  %4135 = icmp ult i32 %4132, %4131
  %4136 = or i1 %4134, %4135
  %4137 = zext i1 %4136 to i8
  store i8 %4137, i8* %55, align 1
  %4138 = and i32 %4132, 255
  %4139 = tail call i32 @llvm.ctpop.i32(i32 %4138)
  %4140 = trunc i32 %4139 to i8
  %4141 = and i8 %4140, 1
  %4142 = xor i8 %4141, 1
  store i8 %4142, i8* %56, align 1
  %4143 = xor i32 %4131, %4126
  %4144 = xor i32 %4143, %4132
  %4145 = lshr i32 %4144, 4
  %4146 = trunc i32 %4145 to i8
  %4147 = and i8 %4146, 1
  store i8 %4147, i8* %57, align 1
  %4148 = icmp eq i32 %4132, 0
  %4149 = zext i1 %4148 to i8
  store i8 %4149, i8* %60, align 1
  %4150 = lshr i32 %4132, 31
  %4151 = trunc i32 %4150 to i8
  store i8 %4151, i8* %61, align 1
  %4152 = lshr i32 %4126, 31
  %4153 = lshr i32 %4131, 31
  %4154 = xor i32 %4150, %4152
  %4155 = xor i32 %4150, %4153
  %4156 = add nuw nsw i32 %4154, %4155
  %4157 = icmp eq i32 %4156, 2
  %4158 = zext i1 %4157 to i8
  store i8 %4158, i8* %62, align 1
  %4159 = sext i32 %4132 to i64
  store i64 %4159, i64* %RCX.i2321, align 8
  %4160 = shl nsw i64 %4159, 3
  %4161 = add i64 %4122, %4160
  %4162 = add i64 %4070, 66
  store i64 %4162, i64* %3, align 8
  %4163 = inttoptr i64 %4161 to i64*
  %4164 = load i64, i64* %4163, align 8
  %4165 = add i64 %4164, 2
  %4166 = add i64 %4070, 72
  store i64 %4166, i64* %3, align 8
  %4167 = inttoptr i64 %4165 to i16*
  store i16 0, i16* %4167, align 2
  %4168 = load i64, i64* %3, align 8
  %4169 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %4169, i64* %RAX.i2329, align 8
  %4170 = add i64 %4169, 6480
  %4171 = add i64 %4168, 15
  store i64 %4171, i64* %3, align 8
  %4172 = inttoptr i64 %4170 to i64*
  %4173 = load i64, i64* %4172, align 8
  store i64 %4173, i64* %RAX.i2329, align 8
  %4174 = add i64 %4168, 18
  store i64 %4174, i64* %3, align 8
  %4175 = inttoptr i64 %4173 to i64*
  %4176 = load i64, i64* %4175, align 8
  store i64 %4176, i64* %RAX.i2329, align 8
  %4177 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %4177, i64* %RCX.i2321, align 8
  %4178 = add i64 %4177, 144
  %4179 = add i64 %4168, 32
  store i64 %4179, i64* %3, align 8
  %4180 = inttoptr i64 %4178 to i32*
  %4181 = load i32, i32* %4180, align 4
  %4182 = zext i32 %4181 to i64
  store i64 %4182, i64* %RDX.i2263.pre-phi, align 8
  %4183 = load i64, i64* %RBP.i, align 8
  %4184 = add i64 %4183, -24
  %4185 = add i64 %4168, 35
  store i64 %4185, i64* %3, align 8
  %4186 = inttoptr i64 %4184 to i32*
  %4187 = load i32, i32* %4186, align 4
  %4188 = add i32 %4187, %4181
  %4189 = zext i32 %4188 to i64
  store i64 %4189, i64* %RDX.i2263.pre-phi, align 8
  %4190 = icmp ult i32 %4188, %4181
  %4191 = icmp ult i32 %4188, %4187
  %4192 = or i1 %4190, %4191
  %4193 = zext i1 %4192 to i8
  store i8 %4193, i8* %55, align 1
  %4194 = and i32 %4188, 255
  %4195 = tail call i32 @llvm.ctpop.i32(i32 %4194)
  %4196 = trunc i32 %4195 to i8
  %4197 = and i8 %4196, 1
  %4198 = xor i8 %4197, 1
  store i8 %4198, i8* %56, align 1
  %4199 = xor i32 %4187, %4181
  %4200 = xor i32 %4199, %4188
  %4201 = lshr i32 %4200, 4
  %4202 = trunc i32 %4201 to i8
  %4203 = and i8 %4202, 1
  store i8 %4203, i8* %57, align 1
  %4204 = icmp eq i32 %4188, 0
  %4205 = zext i1 %4204 to i8
  store i8 %4205, i8* %60, align 1
  %4206 = lshr i32 %4188, 31
  %4207 = trunc i32 %4206 to i8
  store i8 %4207, i8* %61, align 1
  %4208 = lshr i32 %4181, 31
  %4209 = lshr i32 %4187, 31
  %4210 = xor i32 %4206, %4208
  %4211 = xor i32 %4206, %4209
  %4212 = add nuw nsw i32 %4210, %4211
  %4213 = icmp eq i32 %4212, 2
  %4214 = zext i1 %4213 to i8
  store i8 %4214, i8* %62, align 1
  %4215 = sext i32 %4188 to i64
  store i64 %4215, i64* %RCX.i2321, align 8
  %4216 = shl nsw i64 %4215, 3
  %4217 = add i64 %4176, %4216
  %4218 = add i64 %4168, 42
  store i64 %4218, i64* %3, align 8
  %4219 = inttoptr i64 %4217 to i64*
  %4220 = load i64, i64* %4219, align 8
  store i64 %4220, i64* %RAX.i2329, align 8
  store i64 %4177, i64* %RCX.i2321, align 8
  %4221 = add i64 %4177, 148
  %4222 = add i64 %4168, 56
  store i64 %4222, i64* %3, align 8
  %4223 = inttoptr i64 %4221 to i32*
  %4224 = load i32, i32* %4223, align 4
  %4225 = zext i32 %4224 to i64
  store i64 %4225, i64* %RDX.i2263.pre-phi, align 8
  %4226 = add i64 %4183, -28
  %4227 = add i64 %4168, 59
  store i64 %4227, i64* %3, align 8
  %4228 = inttoptr i64 %4226 to i32*
  %4229 = load i32, i32* %4228, align 4
  %4230 = add i32 %4229, %4224
  %4231 = zext i32 %4230 to i64
  store i64 %4231, i64* %RDX.i2263.pre-phi, align 8
  %4232 = icmp ult i32 %4230, %4224
  %4233 = icmp ult i32 %4230, %4229
  %4234 = or i1 %4232, %4233
  %4235 = zext i1 %4234 to i8
  store i8 %4235, i8* %55, align 1
  %4236 = and i32 %4230, 255
  %4237 = tail call i32 @llvm.ctpop.i32(i32 %4236)
  %4238 = trunc i32 %4237 to i8
  %4239 = and i8 %4238, 1
  %4240 = xor i8 %4239, 1
  store i8 %4240, i8* %56, align 1
  %4241 = xor i32 %4229, %4224
  %4242 = xor i32 %4241, %4230
  %4243 = lshr i32 %4242, 4
  %4244 = trunc i32 %4243 to i8
  %4245 = and i8 %4244, 1
  store i8 %4245, i8* %57, align 1
  %4246 = icmp eq i32 %4230, 0
  %4247 = zext i1 %4246 to i8
  store i8 %4247, i8* %60, align 1
  %4248 = lshr i32 %4230, 31
  %4249 = trunc i32 %4248 to i8
  store i8 %4249, i8* %61, align 1
  %4250 = lshr i32 %4224, 31
  %4251 = lshr i32 %4229, 31
  %4252 = xor i32 %4248, %4250
  %4253 = xor i32 %4248, %4251
  %4254 = add nuw nsw i32 %4252, %4253
  %4255 = icmp eq i32 %4254, 2
  %4256 = zext i1 %4255 to i8
  store i8 %4256, i8* %62, align 1
  %4257 = sext i32 %4230 to i64
  store i64 %4257, i64* %RCX.i2321, align 8
  %4258 = shl nsw i64 %4257, 1
  %4259 = add i64 %4220, %4258
  %4260 = add i64 %4168, 68
  store i64 %4260, i64* %3, align 8
  %4261 = inttoptr i64 %4259 to i16*
  store i16 -1, i16* %4261, align 2
  %4262 = load i64, i64* %3, align 8
  %4263 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %4263, i64* %RAX.i2329, align 8
  %4264 = add i64 %4263, 6488
  %4265 = add i64 %4262, 15
  store i64 %4265, i64* %3, align 8
  %4266 = inttoptr i64 %4264 to i64*
  %4267 = load i64, i64* %4266, align 8
  store i64 %4267, i64* %RAX.i2329, align 8
  %4268 = add i64 %4262, 18
  store i64 %4268, i64* %3, align 8
  %4269 = inttoptr i64 %4267 to i64*
  %4270 = load i64, i64* %4269, align 8
  store i64 %4270, i64* %RAX.i2329, align 8
  %4271 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %4271, i64* %RCX.i2321, align 8
  %4272 = add i64 %4271, 144
  %4273 = add i64 %4262, 32
  store i64 %4273, i64* %3, align 8
  %4274 = inttoptr i64 %4272 to i32*
  %4275 = load i32, i32* %4274, align 4
  %4276 = zext i32 %4275 to i64
  store i64 %4276, i64* %RDX.i2263.pre-phi, align 8
  %4277 = load i64, i64* %RBP.i, align 8
  %4278 = add i64 %4277, -24
  %4279 = add i64 %4262, 35
  store i64 %4279, i64* %3, align 8
  %4280 = inttoptr i64 %4278 to i32*
  %4281 = load i32, i32* %4280, align 4
  %4282 = add i32 %4281, %4275
  %4283 = zext i32 %4282 to i64
  store i64 %4283, i64* %RDX.i2263.pre-phi, align 8
  %4284 = icmp ult i32 %4282, %4275
  %4285 = icmp ult i32 %4282, %4281
  %4286 = or i1 %4284, %4285
  %4287 = zext i1 %4286 to i8
  store i8 %4287, i8* %55, align 1
  %4288 = and i32 %4282, 255
  %4289 = tail call i32 @llvm.ctpop.i32(i32 %4288)
  %4290 = trunc i32 %4289 to i8
  %4291 = and i8 %4290, 1
  %4292 = xor i8 %4291, 1
  store i8 %4292, i8* %56, align 1
  %4293 = xor i32 %4281, %4275
  %4294 = xor i32 %4293, %4282
  %4295 = lshr i32 %4294, 4
  %4296 = trunc i32 %4295 to i8
  %4297 = and i8 %4296, 1
  store i8 %4297, i8* %57, align 1
  %4298 = icmp eq i32 %4282, 0
  %4299 = zext i1 %4298 to i8
  store i8 %4299, i8* %60, align 1
  %4300 = lshr i32 %4282, 31
  %4301 = trunc i32 %4300 to i8
  store i8 %4301, i8* %61, align 1
  %4302 = lshr i32 %4275, 31
  %4303 = lshr i32 %4281, 31
  %4304 = xor i32 %4300, %4302
  %4305 = xor i32 %4300, %4303
  %4306 = add nuw nsw i32 %4304, %4305
  %4307 = icmp eq i32 %4306, 2
  %4308 = zext i1 %4307 to i8
  store i8 %4308, i8* %62, align 1
  %4309 = sext i32 %4282 to i64
  store i64 %4309, i64* %RCX.i2321, align 8
  %4310 = shl nsw i64 %4309, 3
  %4311 = add i64 %4270, %4310
  %4312 = add i64 %4262, 42
  store i64 %4312, i64* %3, align 8
  %4313 = inttoptr i64 %4311 to i64*
  %4314 = load i64, i64* %4313, align 8
  store i64 %4314, i64* %RAX.i2329, align 8
  store i64 %4271, i64* %RCX.i2321, align 8
  %4315 = add i64 %4271, 148
  %4316 = add i64 %4262, 56
  store i64 %4316, i64* %3, align 8
  %4317 = inttoptr i64 %4315 to i32*
  %4318 = load i32, i32* %4317, align 4
  %4319 = zext i32 %4318 to i64
  store i64 %4319, i64* %RDX.i2263.pre-phi, align 8
  %4320 = add i64 %4277, -28
  %4321 = add i64 %4262, 59
  store i64 %4321, i64* %3, align 8
  %4322 = inttoptr i64 %4320 to i32*
  %4323 = load i32, i32* %4322, align 4
  %4324 = add i32 %4323, %4318
  %4325 = zext i32 %4324 to i64
  store i64 %4325, i64* %RDX.i2263.pre-phi, align 8
  %4326 = icmp ult i32 %4324, %4318
  %4327 = icmp ult i32 %4324, %4323
  %4328 = or i1 %4326, %4327
  %4329 = zext i1 %4328 to i8
  store i8 %4329, i8* %55, align 1
  %4330 = and i32 %4324, 255
  %4331 = tail call i32 @llvm.ctpop.i32(i32 %4330)
  %4332 = trunc i32 %4331 to i8
  %4333 = and i8 %4332, 1
  %4334 = xor i8 %4333, 1
  store i8 %4334, i8* %56, align 1
  %4335 = xor i32 %4323, %4318
  %4336 = xor i32 %4335, %4324
  %4337 = lshr i32 %4336, 4
  %4338 = trunc i32 %4337 to i8
  %4339 = and i8 %4338, 1
  store i8 %4339, i8* %57, align 1
  %4340 = icmp eq i32 %4324, 0
  %4341 = zext i1 %4340 to i8
  store i8 %4341, i8* %60, align 1
  %4342 = lshr i32 %4324, 31
  %4343 = trunc i32 %4342 to i8
  store i8 %4343, i8* %61, align 1
  %4344 = lshr i32 %4318, 31
  %4345 = lshr i32 %4323, 31
  %4346 = xor i32 %4342, %4344
  %4347 = xor i32 %4342, %4345
  %4348 = add nuw nsw i32 %4346, %4347
  %4349 = icmp eq i32 %4348, 2
  %4350 = zext i1 %4349 to i8
  store i8 %4350, i8* %62, align 1
  %4351 = sext i32 %4324 to i64
  store i64 %4351, i64* %RCX.i2321, align 8
  %4352 = shl nsw i64 %4351, 3
  %4353 = add i64 %4314, %4352
  %4354 = add i64 %4262, 70
  store i64 %4354, i64* %3, align 8
  %4355 = inttoptr i64 %4353 to i64*
  store i64 -1, i64* %4355, align 8
  %.pre56 = load i64, i64* %3, align 8
  br label %block_.L_49071d

block_.L_49071d:                                  ; preds = %block_.L_490604, %block_.L_4905ff
  %4356 = phi i64 [ %.pre56, %block_.L_490604 ], [ %3975, %block_.L_4905ff ]
  %4357 = load i64, i64* %RBP.i, align 8
  %4358 = add i64 %4357, -12
  %4359 = add i64 %4356, 4
  store i64 %4359, i64* %3, align 8
  %4360 = inttoptr i64 %4358 to i32*
  %4361 = load i32, i32* %4360, align 4
  %4362 = add i32 %4361, -1
  %4363 = icmp eq i32 %4361, 0
  %4364 = zext i1 %4363 to i8
  store i8 %4364, i8* %55, align 1
  %4365 = and i32 %4362, 255
  %4366 = tail call i32 @llvm.ctpop.i32(i32 %4365)
  %4367 = trunc i32 %4366 to i8
  %4368 = and i8 %4367, 1
  %4369 = xor i8 %4368, 1
  store i8 %4369, i8* %56, align 1
  %4370 = xor i32 %4362, %4361
  %4371 = lshr i32 %4370, 4
  %4372 = trunc i32 %4371 to i8
  %4373 = and i8 %4372, 1
  store i8 %4373, i8* %57, align 1
  %4374 = icmp eq i32 %4362, 0
  %4375 = zext i1 %4374 to i8
  store i8 %4375, i8* %60, align 1
  %4376 = lshr i32 %4362, 31
  %4377 = trunc i32 %4376 to i8
  store i8 %4377, i8* %61, align 1
  %4378 = lshr i32 %4361, 31
  %4379 = xor i32 %4376, %4378
  %4380 = add nuw nsw i32 %4379, %4378
  %4381 = icmp eq i32 %4380, 2
  %4382 = zext i1 %4381 to i8
  store i8 %4382, i8* %62, align 1
  %.v75 = select i1 %4374, i64 20, i64 10
  %4383 = add i64 %4356, %.v75
  store i64 %4383, i64* %3, align 8
  br i1 %4374, label %block_.L_490731, label %block_490727

block_490727:                                     ; preds = %block_.L_49071d
  %4384 = add i64 %4383, 4
  store i64 %4384, i64* %3, align 8
  %4385 = load i32, i32* %4360, align 4
  %4386 = add i32 %4385, -2
  %4387 = icmp ult i32 %4385, 2
  %4388 = zext i1 %4387 to i8
  store i8 %4388, i8* %55, align 1
  %4389 = and i32 %4386, 255
  %4390 = tail call i32 @llvm.ctpop.i32(i32 %4389)
  %4391 = trunc i32 %4390 to i8
  %4392 = and i8 %4391, 1
  %4393 = xor i8 %4392, 1
  store i8 %4393, i8* %56, align 1
  %4394 = xor i32 %4386, %4385
  %4395 = lshr i32 %4394, 4
  %4396 = trunc i32 %4395 to i8
  %4397 = and i8 %4396, 1
  store i8 %4397, i8* %57, align 1
  %4398 = icmp eq i32 %4386, 0
  %4399 = zext i1 %4398 to i8
  store i8 %4399, i8* %60, align 1
  %4400 = lshr i32 %4386, 31
  %4401 = trunc i32 %4400 to i8
  store i8 %4401, i8* %61, align 1
  %4402 = lshr i32 %4385, 31
  %4403 = xor i32 %4400, %4402
  %4404 = add nuw nsw i32 %4403, %4402
  %4405 = icmp eq i32 %4404, 2
  %4406 = zext i1 %4405 to i8
  store i8 %4406, i8* %62, align 1
  %.v76 = select i1 %4398, i64 10, i64 1006
  %4407 = add i64 %4383, %.v76
  store i64 %4407, i64* %3, align 8
  br i1 %4398, label %block_.L_490731, label %block_.L_490b15

block_.L_490731:                                  ; preds = %block_490727, %block_.L_49071d
  %4408 = phi i64 [ %4407, %block_490727 ], [ %4383, %block_.L_49071d ]
  %4409 = add i64 %4357, -64
  %4410 = add i64 %4408, 4
  store i64 %4410, i64* %3, align 8
  %4411 = inttoptr i64 %4409 to i64*
  %4412 = load i64, i64* %4411, align 8
  store i64 %4412, i64* %RAX.i2329, align 8
  %4413 = add i64 %4412, 580
  %4414 = add i64 %4408, 11
  store i64 %4414, i64* %3, align 8
  %4415 = inttoptr i64 %4413 to i32*
  %4416 = load i32, i32* %4415, align 4
  store i8 0, i8* %55, align 1
  %4417 = and i32 %4416, 255
  %4418 = tail call i32 @llvm.ctpop.i32(i32 %4417)
  %4419 = trunc i32 %4418 to i8
  %4420 = and i8 %4419, 1
  %4421 = xor i8 %4420, 1
  store i8 %4421, i8* %56, align 1
  store i8 0, i8* %57, align 1
  %4422 = icmp eq i32 %4416, 0
  %4423 = zext i1 %4422 to i8
  store i8 %4423, i8* %60, align 1
  %4424 = lshr i32 %4416, 31
  %4425 = trunc i32 %4424 to i8
  store i8 %4425, i8* %61, align 1
  store i8 0, i8* %62, align 1
  %.v77 = select i1 %4422, i64 498, i64 17
  %4426 = add i64 %4408, %.v77
  store i64 %4426, i64* %3, align 8
  br i1 %4422, label %block_.L_490923, label %block_490742

block_490742:                                     ; preds = %block_.L_490731
  %4427 = add i64 %4426, 4
  store i64 %4427, i64* %3, align 8
  %4428 = load i32, i32* %4360, align 4
  %4429 = add i32 %4428, -2
  %4430 = icmp ult i32 %4428, 2
  %4431 = zext i1 %4430 to i8
  store i8 %4431, i8* %55, align 1
  %4432 = and i32 %4429, 255
  %4433 = tail call i32 @llvm.ctpop.i32(i32 %4432)
  %4434 = trunc i32 %4433 to i8
  %4435 = and i8 %4434, 1
  %4436 = xor i8 %4435, 1
  store i8 %4436, i8* %56, align 1
  %4437 = xor i32 %4429, %4428
  %4438 = lshr i32 %4437, 4
  %4439 = trunc i32 %4438 to i8
  %4440 = and i8 %4439, 1
  store i8 %4440, i8* %57, align 1
  %4441 = icmp eq i32 %4429, 0
  %4442 = zext i1 %4441 to i8
  store i8 %4442, i8* %60, align 1
  %4443 = lshr i32 %4429, 31
  %4444 = trunc i32 %4443 to i8
  store i8 %4444, i8* %61, align 1
  %4445 = lshr i32 %4428, 31
  %4446 = xor i32 %4443, %4445
  %4447 = add nuw nsw i32 %4446, %4445
  %4448 = icmp eq i32 %4447, 2
  %4449 = zext i1 %4448 to i8
  store i8 %4449, i8* %62, align 1
  %.v78 = select i1 %4441, i64 10, i64 481
  %4450 = add i64 %4426, %.v78
  store i64 %4450, i64* %3, align 8
  br i1 %4441, label %block_49074c, label %block_.L_490923

block_49074c:                                     ; preds = %block_490742
  %4451 = add i64 %4357, -8
  %4452 = add i64 %4450, 4
  store i64 %4452, i64* %3, align 8
  %4453 = inttoptr i64 %4451 to i32*
  %4454 = load i32, i32* %4453, align 4
  %4455 = add i32 %4454, -1
  %4456 = icmp eq i32 %4454, 0
  %4457 = zext i1 %4456 to i8
  store i8 %4457, i8* %55, align 1
  %4458 = and i32 %4455, 255
  %4459 = tail call i32 @llvm.ctpop.i32(i32 %4458)
  %4460 = trunc i32 %4459 to i8
  %4461 = and i8 %4460, 1
  %4462 = xor i8 %4461, 1
  store i8 %4462, i8* %56, align 1
  %4463 = xor i32 %4455, %4454
  %4464 = lshr i32 %4463, 4
  %4465 = trunc i32 %4464 to i8
  %4466 = and i8 %4465, 1
  store i8 %4466, i8* %57, align 1
  %4467 = icmp eq i32 %4455, 0
  %4468 = zext i1 %4467 to i8
  store i8 %4468, i8* %60, align 1
  %4469 = lshr i32 %4455, 31
  %4470 = trunc i32 %4469 to i8
  store i8 %4470, i8* %61, align 1
  %4471 = lshr i32 %4454, 31
  %4472 = xor i32 %4469, %4471
  %4473 = add nuw nsw i32 %4472, %4471
  %4474 = icmp eq i32 %4473, 2
  %4475 = zext i1 %4474 to i8
  store i8 %4475, i8* %62, align 1
  %.v79 = select i1 %4467, i64 10, i64 471
  %4476 = add i64 %4450, %.v79
  store i64 %4476, i64* %3, align 8
  br i1 %4467, label %block_490756, label %block_.L_490923

block_490756:                                     ; preds = %block_49074c
  %4477 = add i64 %4476, 4
  store i64 %4477, i64* %3, align 8
  %4478 = load i64, i64* %4411, align 8
  store i64 %4478, i64* %RAX.i2329, align 8
  %4479 = add i64 %4478, 580
  %4480 = add i64 %4476, 11
  store i64 %4480, i64* %3, align 8
  %4481 = inttoptr i64 %4479 to i32*
  %4482 = load i32, i32* %4481, align 4
  %4483 = add i32 %4482, -1
  %4484 = icmp eq i32 %4482, 0
  %4485 = zext i1 %4484 to i8
  store i8 %4485, i8* %55, align 1
  %4486 = and i32 %4483, 255
  %4487 = tail call i32 @llvm.ctpop.i32(i32 %4486)
  %4488 = trunc i32 %4487 to i8
  %4489 = and i8 %4488, 1
  %4490 = xor i8 %4489, 1
  store i8 %4490, i8* %56, align 1
  %4491 = xor i32 %4483, %4482
  %4492 = lshr i32 %4491, 4
  %4493 = trunc i32 %4492 to i8
  %4494 = and i8 %4493, 1
  store i8 %4494, i8* %57, align 1
  %4495 = icmp eq i32 %4483, 0
  %4496 = zext i1 %4495 to i8
  store i8 %4496, i8* %60, align 1
  %4497 = lshr i32 %4483, 31
  %4498 = trunc i32 %4497 to i8
  store i8 %4498, i8* %61, align 1
  %4499 = lshr i32 %4482, 31
  %4500 = xor i32 %4497, %4499
  %4501 = add nuw nsw i32 %4500, %4499
  %4502 = icmp eq i32 %4501, 2
  %4503 = zext i1 %4502 to i8
  store i8 %4503, i8* %62, align 1
  %.v80 = select i1 %4495, i64 17, i64 41
  %4504 = add i64 %4476, %.v80
  %4505 = add i64 %4504, 8
  store i64 %4505, i64* %3, align 8
  %4506 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %4506, i64* %RAX.i2329, align 8
  br i1 %4495, label %block_490767, label %block_.L_49077f

block_490767:                                     ; preds = %block_490756
  %4507 = add i64 %4506, 71936
  %4508 = add i64 %4504, 15
  store i64 %4508, i64* %3, align 8
  %4509 = inttoptr i64 %4507 to i64*
  %4510 = load i64, i64* %4509, align 8
  store i64 %4510, i64* %RAX.i2329, align 8
  %4511 = add i64 %4357, -112
  %4512 = add i64 %4504, 19
  store i64 %4512, i64* %3, align 8
  %4513 = inttoptr i64 %4511 to i64*
  store i64 %4510, i64* %4513, align 8
  %4514 = load i64, i64* %3, align 8
  %4515 = add i64 %4514, 24
  store i64 %4515, i64* %3, align 8
  br label %block_.L_490792

block_.L_49077f:                                  ; preds = %block_490756
  %4516 = add i64 %4506, 71944
  %4517 = add i64 %4504, 15
  store i64 %4517, i64* %3, align 8
  %4518 = inttoptr i64 %4516 to i64*
  %4519 = load i64, i64* %4518, align 8
  store i64 %4519, i64* %RAX.i2329, align 8
  %4520 = add i64 %4357, -112
  %4521 = add i64 %4504, 19
  store i64 %4521, i64* %3, align 8
  %4522 = inttoptr i64 %4520 to i64*
  store i64 %4519, i64* %4522, align 8
  %.pre57 = load i64, i64* %3, align 8
  br label %block_.L_490792

block_.L_490792:                                  ; preds = %block_.L_49077f, %block_490767
  %4523 = phi i64 [ %.pre57, %block_.L_49077f ], [ %4515, %block_490767 ]
  %4524 = load i64, i64* %RBP.i, align 8
  %4525 = add i64 %4524, -112
  %4526 = add i64 %4523, 4
  store i64 %4526, i64* %3, align 8
  %4527 = inttoptr i64 %4525 to i64*
  %4528 = load i64, i64* %4527, align 8
  store i64 %4528, i64* %RAX.i2329, align 8
  %4529 = add i64 %4524, -80
  %4530 = add i64 %4523, 8
  store i64 %4530, i64* %3, align 8
  %4531 = inttoptr i64 %4529 to i64*
  store i64 %4528, i64* %4531, align 8
  %4532 = load i64, i64* %RBP.i, align 8
  %4533 = add i64 %4532, -80
  %4534 = load i64, i64* %3, align 8
  %4535 = add i64 %4534, 4
  store i64 %4535, i64* %3, align 8
  %4536 = inttoptr i64 %4533 to i64*
  %4537 = load i64, i64* %4536, align 8
  store i64 %4537, i64* %RAX.i2329, align 8
  %4538 = add i64 %4532, -24
  %4539 = add i64 %4534, 8
  store i64 %4539, i64* %3, align 8
  %4540 = inttoptr i64 %4538 to i32*
  %4541 = load i32, i32* %4540, align 4
  %4542 = sext i32 %4541 to i64
  store i64 %4542, i64* %RCX.i2321, align 8
  %4543 = shl nsw i64 %4542, 3
  %4544 = add i64 %4543, %4537
  %4545 = add i64 %4534, 12
  store i64 %4545, i64* %3, align 8
  %4546 = inttoptr i64 %4544 to i64*
  %4547 = load i64, i64* %4546, align 8
  store i64 %4547, i64* %RAX.i2329, align 8
  %4548 = add i64 %4532, -28
  %4549 = add i64 %4534, 16
  store i64 %4549, i64* %3, align 8
  %4550 = inttoptr i64 %4548 to i32*
  %4551 = load i32, i32* %4550, align 4
  %4552 = sext i32 %4551 to i64
  store i64 %4552, i64* %RCX.i2321, align 8
  %4553 = shl nsw i64 %4552, 3
  %4554 = add i64 %4553, %4547
  %4555 = add i64 %4534, 20
  store i64 %4555, i64* %3, align 8
  %4556 = inttoptr i64 %4554 to i64*
  %4557 = load i64, i64* %4556, align 8
  store i64 %4557, i64* %RAX.i2329, align 8
  %4558 = add i64 %4557, 8
  %4559 = add i64 %4534, 24
  store i64 %4559, i64* %3, align 8
  %4560 = inttoptr i64 %4558 to i64*
  %4561 = load i64, i64* %4560, align 8
  store i64 %4561, i64* %RAX.i2329, align 8
  %4562 = add i64 %4534, 27
  store i64 %4562, i64* %3, align 8
  %4563 = inttoptr i64 %4561 to i64*
  %4564 = load i64, i64* %4563, align 8
  store i64 %4564, i64* %RAX.i2329, align 8
  %4565 = add i64 %4532, -8
  %4566 = add i64 %4534, 31
  store i64 %4566, i64* %3, align 8
  %4567 = inttoptr i64 %4565 to i32*
  %4568 = load i32, i32* %4567, align 4
  %4569 = sext i32 %4568 to i64
  store i64 %4569, i64* %RCX.i2321, align 8
  %4570 = shl nsw i64 %4569, 3
  %4571 = add i64 %4570, %4564
  %4572 = add i64 %4534, 35
  store i64 %4572, i64* %3, align 8
  %4573 = inttoptr i64 %4571 to i64*
  %4574 = load i64, i64* %4573, align 8
  store i64 %4574, i64* %RAX.i2329, align 8
  %4575 = add i64 %4534, 38
  store i64 %4575, i64* %3, align 8
  %4576 = inttoptr i64 %4574 to i16*
  %4577 = load i16, i16* %4576, align 2
  store i16 %4577, i16* %DX.i1069, align 2
  %4578 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %4578, i64* %RAX.i2329, align 8
  %4579 = add i64 %4578, 6504
  %4580 = add i64 %4534, 53
  store i64 %4580, i64* %3, align 8
  %4581 = inttoptr i64 %4579 to i64*
  %4582 = load i64, i64* %4581, align 8
  store i64 %4582, i64* %RAX.i2329, align 8
  %4583 = add i64 %4582, 8
  %4584 = add i64 %4534, 57
  store i64 %4584, i64* %3, align 8
  %4585 = inttoptr i64 %4583 to i64*
  %4586 = load i64, i64* %4585, align 8
  store i64 %4586, i64* %RAX.i2329, align 8
  %4587 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %4587, i64* %RCX.i2321, align 8
  %4588 = add i64 %4587, 144
  %4589 = add i64 %4534, 71
  store i64 %4589, i64* %3, align 8
  %4590 = inttoptr i64 %4588 to i32*
  %4591 = load i32, i32* %4590, align 4
  %4592 = zext i32 %4591 to i64
  store i64 %4592, i64* %RSI.i2255, align 8
  %4593 = add i64 %4534, 74
  store i64 %4593, i64* %3, align 8
  %4594 = load i32, i32* %4540, align 4
  %4595 = add i32 %4594, %4591
  %4596 = zext i32 %4595 to i64
  store i64 %4596, i64* %RSI.i2255, align 8
  %4597 = icmp ult i32 %4595, %4591
  %4598 = icmp ult i32 %4595, %4594
  %4599 = or i1 %4597, %4598
  %4600 = zext i1 %4599 to i8
  store i8 %4600, i8* %55, align 1
  %4601 = and i32 %4595, 255
  %4602 = tail call i32 @llvm.ctpop.i32(i32 %4601)
  %4603 = trunc i32 %4602 to i8
  %4604 = and i8 %4603, 1
  %4605 = xor i8 %4604, 1
  store i8 %4605, i8* %56, align 1
  %4606 = xor i32 %4594, %4591
  %4607 = xor i32 %4606, %4595
  %4608 = lshr i32 %4607, 4
  %4609 = trunc i32 %4608 to i8
  %4610 = and i8 %4609, 1
  store i8 %4610, i8* %57, align 1
  %4611 = icmp eq i32 %4595, 0
  %4612 = zext i1 %4611 to i8
  store i8 %4612, i8* %60, align 1
  %4613 = lshr i32 %4595, 31
  %4614 = trunc i32 %4613 to i8
  store i8 %4614, i8* %61, align 1
  %4615 = lshr i32 %4591, 31
  %4616 = lshr i32 %4594, 31
  %4617 = xor i32 %4613, %4615
  %4618 = xor i32 %4613, %4616
  %4619 = add nuw nsw i32 %4617, %4618
  %4620 = icmp eq i32 %4619, 2
  %4621 = zext i1 %4620 to i8
  store i8 %4621, i8* %62, align 1
  %4622 = sext i32 %4595 to i64
  store i64 %4622, i64* %RCX.i2321, align 8
  %4623 = shl nsw i64 %4622, 3
  %4624 = add i64 %4586, %4623
  %4625 = add i64 %4534, 81
  store i64 %4625, i64* %3, align 8
  %4626 = inttoptr i64 %4624 to i64*
  %4627 = load i64, i64* %4626, align 8
  store i64 %4627, i64* %RAX.i2329, align 8
  store i64 %4587, i64* %RCX.i2321, align 8
  %4628 = add i64 %4587, 148
  %4629 = add i64 %4534, 95
  store i64 %4629, i64* %3, align 8
  %4630 = inttoptr i64 %4628 to i32*
  %4631 = load i32, i32* %4630, align 4
  %4632 = zext i32 %4631 to i64
  store i64 %4632, i64* %RSI.i2255, align 8
  %4633 = load i64, i64* %RBP.i, align 8
  %4634 = add i64 %4633, -28
  %4635 = add i64 %4534, 98
  store i64 %4635, i64* %3, align 8
  %4636 = inttoptr i64 %4634 to i32*
  %4637 = load i32, i32* %4636, align 4
  %4638 = add i32 %4637, %4631
  %4639 = zext i32 %4638 to i64
  store i64 %4639, i64* %RSI.i2255, align 8
  %4640 = icmp ult i32 %4638, %4631
  %4641 = icmp ult i32 %4638, %4637
  %4642 = or i1 %4640, %4641
  %4643 = zext i1 %4642 to i8
  store i8 %4643, i8* %55, align 1
  %4644 = and i32 %4638, 255
  %4645 = tail call i32 @llvm.ctpop.i32(i32 %4644)
  %4646 = trunc i32 %4645 to i8
  %4647 = and i8 %4646, 1
  %4648 = xor i8 %4647, 1
  store i8 %4648, i8* %56, align 1
  %4649 = xor i32 %4637, %4631
  %4650 = xor i32 %4649, %4638
  %4651 = lshr i32 %4650, 4
  %4652 = trunc i32 %4651 to i8
  %4653 = and i8 %4652, 1
  store i8 %4653, i8* %57, align 1
  %4654 = icmp eq i32 %4638, 0
  %4655 = zext i1 %4654 to i8
  store i8 %4655, i8* %60, align 1
  %4656 = lshr i32 %4638, 31
  %4657 = trunc i32 %4656 to i8
  store i8 %4657, i8* %61, align 1
  %4658 = lshr i32 %4631, 31
  %4659 = lshr i32 %4637, 31
  %4660 = xor i32 %4656, %4658
  %4661 = xor i32 %4656, %4659
  %4662 = add nuw nsw i32 %4660, %4661
  %4663 = icmp eq i32 %4662, 2
  %4664 = zext i1 %4663 to i8
  store i8 %4664, i8* %62, align 1
  %4665 = sext i32 %4638 to i64
  store i64 %4665, i64* %RCX.i2321, align 8
  %4666 = shl nsw i64 %4665, 3
  %4667 = add i64 %4627, %4666
  %4668 = add i64 %4534, 105
  store i64 %4668, i64* %3, align 8
  %4669 = inttoptr i64 %4667 to i64*
  %4670 = load i64, i64* %4669, align 8
  store i64 %4670, i64* %RAX.i2329, align 8
  %4671 = load i16, i16* %DX.i1069, align 2
  %4672 = add i64 %4534, 108
  store i64 %4672, i64* %3, align 8
  %4673 = inttoptr i64 %4670 to i16*
  store i16 %4671, i16* %4673, align 2
  %4674 = load i64, i64* %RBP.i, align 8
  %4675 = add i64 %4674, -80
  %4676 = load i64, i64* %3, align 8
  %4677 = add i64 %4676, 4
  store i64 %4677, i64* %3, align 8
  %4678 = inttoptr i64 %4675 to i64*
  %4679 = load i64, i64* %4678, align 8
  store i64 %4679, i64* %RAX.i2329, align 8
  %4680 = add i64 %4674, -24
  %4681 = add i64 %4676, 8
  store i64 %4681, i64* %3, align 8
  %4682 = inttoptr i64 %4680 to i32*
  %4683 = load i32, i32* %4682, align 4
  %4684 = sext i32 %4683 to i64
  store i64 %4684, i64* %RCX.i2321, align 8
  %4685 = shl nsw i64 %4684, 3
  %4686 = add i64 %4685, %4679
  %4687 = add i64 %4676, 12
  store i64 %4687, i64* %3, align 8
  %4688 = inttoptr i64 %4686 to i64*
  %4689 = load i64, i64* %4688, align 8
  store i64 %4689, i64* %RAX.i2329, align 8
  %4690 = add i64 %4674, -28
  %4691 = add i64 %4676, 16
  store i64 %4691, i64* %3, align 8
  %4692 = inttoptr i64 %4690 to i32*
  %4693 = load i32, i32* %4692, align 4
  %4694 = sext i32 %4693 to i64
  store i64 %4694, i64* %RCX.i2321, align 8
  %4695 = shl nsw i64 %4694, 3
  %4696 = add i64 %4695, %4689
  %4697 = add i64 %4676, 20
  store i64 %4697, i64* %3, align 8
  %4698 = inttoptr i64 %4696 to i64*
  %4699 = load i64, i64* %4698, align 8
  store i64 %4699, i64* %RAX.i2329, align 8
  %4700 = add i64 %4699, 8
  %4701 = add i64 %4676, 24
  store i64 %4701, i64* %3, align 8
  %4702 = inttoptr i64 %4700 to i64*
  %4703 = load i64, i64* %4702, align 8
  store i64 %4703, i64* %RAX.i2329, align 8
  %4704 = add i64 %4676, 27
  store i64 %4704, i64* %3, align 8
  %4705 = inttoptr i64 %4703 to i64*
  %4706 = load i64, i64* %4705, align 8
  store i64 %4706, i64* %RAX.i2329, align 8
  %4707 = add i64 %4674, -8
  %4708 = add i64 %4676, 31
  store i64 %4708, i64* %3, align 8
  %4709 = inttoptr i64 %4707 to i32*
  %4710 = load i32, i32* %4709, align 4
  %4711 = sext i32 %4710 to i64
  store i64 %4711, i64* %RCX.i2321, align 8
  %4712 = shl nsw i64 %4711, 3
  %4713 = add i64 %4712, %4706
  %4714 = add i64 %4676, 35
  store i64 %4714, i64* %3, align 8
  %4715 = inttoptr i64 %4713 to i64*
  %4716 = load i64, i64* %4715, align 8
  store i64 %4716, i64* %RAX.i2329, align 8
  %4717 = add i64 %4716, 2
  %4718 = add i64 %4676, 39
  store i64 %4718, i64* %3, align 8
  %4719 = inttoptr i64 %4717 to i16*
  %4720 = load i16, i16* %4719, align 2
  store i16 %4720, i16* %DX.i1069, align 2
  %4721 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %4721, i64* %RAX.i2329, align 8
  %4722 = add i64 %4721, 6504
  %4723 = add i64 %4676, 54
  store i64 %4723, i64* %3, align 8
  %4724 = inttoptr i64 %4722 to i64*
  %4725 = load i64, i64* %4724, align 8
  store i64 %4725, i64* %RAX.i2329, align 8
  %4726 = add i64 %4725, 8
  %4727 = add i64 %4676, 58
  store i64 %4727, i64* %3, align 8
  %4728 = inttoptr i64 %4726 to i64*
  %4729 = load i64, i64* %4728, align 8
  store i64 %4729, i64* %RAX.i2329, align 8
  %4730 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %4730, i64* %RCX.i2321, align 8
  %4731 = add i64 %4730, 144
  %4732 = add i64 %4676, 72
  store i64 %4732, i64* %3, align 8
  %4733 = inttoptr i64 %4731 to i32*
  %4734 = load i32, i32* %4733, align 4
  %4735 = zext i32 %4734 to i64
  store i64 %4735, i64* %RSI.i2255, align 8
  %4736 = add i64 %4676, 75
  store i64 %4736, i64* %3, align 8
  %4737 = load i32, i32* %4682, align 4
  %4738 = add i32 %4737, %4734
  %4739 = zext i32 %4738 to i64
  store i64 %4739, i64* %RSI.i2255, align 8
  %4740 = icmp ult i32 %4738, %4734
  %4741 = icmp ult i32 %4738, %4737
  %4742 = or i1 %4740, %4741
  %4743 = zext i1 %4742 to i8
  store i8 %4743, i8* %55, align 1
  %4744 = and i32 %4738, 255
  %4745 = tail call i32 @llvm.ctpop.i32(i32 %4744)
  %4746 = trunc i32 %4745 to i8
  %4747 = and i8 %4746, 1
  %4748 = xor i8 %4747, 1
  store i8 %4748, i8* %56, align 1
  %4749 = xor i32 %4737, %4734
  %4750 = xor i32 %4749, %4738
  %4751 = lshr i32 %4750, 4
  %4752 = trunc i32 %4751 to i8
  %4753 = and i8 %4752, 1
  store i8 %4753, i8* %57, align 1
  %4754 = icmp eq i32 %4738, 0
  %4755 = zext i1 %4754 to i8
  store i8 %4755, i8* %60, align 1
  %4756 = lshr i32 %4738, 31
  %4757 = trunc i32 %4756 to i8
  store i8 %4757, i8* %61, align 1
  %4758 = lshr i32 %4734, 31
  %4759 = lshr i32 %4737, 31
  %4760 = xor i32 %4756, %4758
  %4761 = xor i32 %4756, %4759
  %4762 = add nuw nsw i32 %4760, %4761
  %4763 = icmp eq i32 %4762, 2
  %4764 = zext i1 %4763 to i8
  store i8 %4764, i8* %62, align 1
  %4765 = sext i32 %4738 to i64
  store i64 %4765, i64* %RCX.i2321, align 8
  %4766 = shl nsw i64 %4765, 3
  %4767 = add i64 %4729, %4766
  %4768 = add i64 %4676, 82
  store i64 %4768, i64* %3, align 8
  %4769 = inttoptr i64 %4767 to i64*
  %4770 = load i64, i64* %4769, align 8
  store i64 %4770, i64* %RAX.i2329, align 8
  store i64 %4730, i64* %RCX.i2321, align 8
  %4771 = add i64 %4730, 148
  %4772 = add i64 %4676, 96
  store i64 %4772, i64* %3, align 8
  %4773 = inttoptr i64 %4771 to i32*
  %4774 = load i32, i32* %4773, align 4
  %4775 = zext i32 %4774 to i64
  store i64 %4775, i64* %RSI.i2255, align 8
  %4776 = load i64, i64* %RBP.i, align 8
  %4777 = add i64 %4776, -28
  %4778 = add i64 %4676, 99
  store i64 %4778, i64* %3, align 8
  %4779 = inttoptr i64 %4777 to i32*
  %4780 = load i32, i32* %4779, align 4
  %4781 = add i32 %4780, %4774
  %4782 = zext i32 %4781 to i64
  store i64 %4782, i64* %RSI.i2255, align 8
  %4783 = icmp ult i32 %4781, %4774
  %4784 = icmp ult i32 %4781, %4780
  %4785 = or i1 %4783, %4784
  %4786 = zext i1 %4785 to i8
  store i8 %4786, i8* %55, align 1
  %4787 = and i32 %4781, 255
  %4788 = tail call i32 @llvm.ctpop.i32(i32 %4787)
  %4789 = trunc i32 %4788 to i8
  %4790 = and i8 %4789, 1
  %4791 = xor i8 %4790, 1
  store i8 %4791, i8* %56, align 1
  %4792 = xor i32 %4780, %4774
  %4793 = xor i32 %4792, %4781
  %4794 = lshr i32 %4793, 4
  %4795 = trunc i32 %4794 to i8
  %4796 = and i8 %4795, 1
  store i8 %4796, i8* %57, align 1
  %4797 = icmp eq i32 %4781, 0
  %4798 = zext i1 %4797 to i8
  store i8 %4798, i8* %60, align 1
  %4799 = lshr i32 %4781, 31
  %4800 = trunc i32 %4799 to i8
  store i8 %4800, i8* %61, align 1
  %4801 = lshr i32 %4774, 31
  %4802 = lshr i32 %4780, 31
  %4803 = xor i32 %4799, %4801
  %4804 = xor i32 %4799, %4802
  %4805 = add nuw nsw i32 %4803, %4804
  %4806 = icmp eq i32 %4805, 2
  %4807 = zext i1 %4806 to i8
  store i8 %4807, i8* %62, align 1
  %4808 = sext i32 %4781 to i64
  store i64 %4808, i64* %RCX.i2321, align 8
  %4809 = shl nsw i64 %4808, 3
  %4810 = add i64 %4770, %4809
  %4811 = add i64 %4676, 106
  store i64 %4811, i64* %3, align 8
  %4812 = inttoptr i64 %4810 to i64*
  %4813 = load i64, i64* %4812, align 8
  %4814 = add i64 %4813, 2
  %4815 = load i16, i16* %DX.i1069, align 2
  %4816 = add i64 %4676, 110
  store i64 %4816, i64* %3, align 8
  %4817 = inttoptr i64 %4814 to i16*
  store i16 %4815, i16* %4817, align 2
  %4818 = load i64, i64* %3, align 8
  %4819 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %4819, i64* %RAX.i2329, align 8
  %4820 = add i64 %4819, 6480
  %4821 = add i64 %4818, 15
  store i64 %4821, i64* %3, align 8
  %4822 = inttoptr i64 %4820 to i64*
  %4823 = load i64, i64* %4822, align 8
  store i64 %4823, i64* %RAX.i2329, align 8
  %4824 = add i64 %4823, 8
  %4825 = add i64 %4818, 19
  store i64 %4825, i64* %3, align 8
  %4826 = inttoptr i64 %4824 to i64*
  %4827 = load i64, i64* %4826, align 8
  store i64 %4827, i64* %RAX.i2329, align 8
  %4828 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %4828, i64* %RCX.i2321, align 8
  %4829 = add i64 %4828, 144
  %4830 = add i64 %4818, 33
  store i64 %4830, i64* %3, align 8
  %4831 = inttoptr i64 %4829 to i32*
  %4832 = load i32, i32* %4831, align 4
  %4833 = zext i32 %4832 to i64
  store i64 %4833, i64* %RSI.i2255, align 8
  %4834 = load i64, i64* %RBP.i, align 8
  %4835 = add i64 %4834, -24
  %4836 = add i64 %4818, 36
  store i64 %4836, i64* %3, align 8
  %4837 = inttoptr i64 %4835 to i32*
  %4838 = load i32, i32* %4837, align 4
  %4839 = add i32 %4838, %4832
  %4840 = zext i32 %4839 to i64
  store i64 %4840, i64* %RSI.i2255, align 8
  %4841 = icmp ult i32 %4839, %4832
  %4842 = icmp ult i32 %4839, %4838
  %4843 = or i1 %4841, %4842
  %4844 = zext i1 %4843 to i8
  store i8 %4844, i8* %55, align 1
  %4845 = and i32 %4839, 255
  %4846 = tail call i32 @llvm.ctpop.i32(i32 %4845)
  %4847 = trunc i32 %4846 to i8
  %4848 = and i8 %4847, 1
  %4849 = xor i8 %4848, 1
  store i8 %4849, i8* %56, align 1
  %4850 = xor i32 %4838, %4832
  %4851 = xor i32 %4850, %4839
  %4852 = lshr i32 %4851, 4
  %4853 = trunc i32 %4852 to i8
  %4854 = and i8 %4853, 1
  store i8 %4854, i8* %57, align 1
  %4855 = icmp eq i32 %4839, 0
  %4856 = zext i1 %4855 to i8
  store i8 %4856, i8* %60, align 1
  %4857 = lshr i32 %4839, 31
  %4858 = trunc i32 %4857 to i8
  store i8 %4858, i8* %61, align 1
  %4859 = lshr i32 %4832, 31
  %4860 = lshr i32 %4838, 31
  %4861 = xor i32 %4857, %4859
  %4862 = xor i32 %4857, %4860
  %4863 = add nuw nsw i32 %4861, %4862
  %4864 = icmp eq i32 %4863, 2
  %4865 = zext i1 %4864 to i8
  store i8 %4865, i8* %62, align 1
  %4866 = sext i32 %4839 to i64
  store i64 %4866, i64* %RCX.i2321, align 8
  %4867 = shl nsw i64 %4866, 3
  %4868 = add i64 %4827, %4867
  %4869 = add i64 %4818, 43
  store i64 %4869, i64* %3, align 8
  %4870 = inttoptr i64 %4868 to i64*
  %4871 = load i64, i64* %4870, align 8
  store i64 %4871, i64* %RAX.i2329, align 8
  store i64 %4828, i64* %RCX.i2321, align 8
  %4872 = add i64 %4828, 148
  %4873 = add i64 %4818, 57
  store i64 %4873, i64* %3, align 8
  %4874 = inttoptr i64 %4872 to i32*
  %4875 = load i32, i32* %4874, align 4
  %4876 = zext i32 %4875 to i64
  store i64 %4876, i64* %RSI.i2255, align 8
  %4877 = add i64 %4834, -28
  %4878 = add i64 %4818, 60
  store i64 %4878, i64* %3, align 8
  %4879 = inttoptr i64 %4877 to i32*
  %4880 = load i32, i32* %4879, align 4
  %4881 = add i32 %4880, %4875
  %4882 = zext i32 %4881 to i64
  store i64 %4882, i64* %RSI.i2255, align 8
  %4883 = sext i32 %4881 to i64
  store i64 %4883, i64* %RCX.i2321, align 8
  %4884 = shl nsw i64 %4883, 1
  %4885 = add i64 %4871, %4884
  %4886 = add i64 %4818, 69
  store i64 %4886, i64* %3, align 8
  %4887 = inttoptr i64 %4885 to i16*
  store i16 0, i16* %4887, align 2
  %4888 = load i64, i64* %3, align 8
  %4889 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  %4890 = add i64 %4889, 24
  store i64 %4890, i64* %RAX.i2329, align 8
  %4891 = icmp ugt i64 %4889, -25
  %4892 = zext i1 %4891 to i8
  store i8 %4892, i8* %55, align 1
  %4893 = trunc i64 %4890 to i32
  %4894 = and i32 %4893, 255
  %4895 = tail call i32 @llvm.ctpop.i32(i32 %4894)
  %4896 = trunc i32 %4895 to i8
  %4897 = and i8 %4896, 1
  %4898 = xor i8 %4897, 1
  store i8 %4898, i8* %56, align 1
  %4899 = xor i64 %4889, 16
  %4900 = xor i64 %4899, %4890
  %4901 = lshr i64 %4900, 4
  %4902 = trunc i64 %4901 to i8
  %4903 = and i8 %4902, 1
  store i8 %4903, i8* %57, align 1
  %4904 = icmp eq i64 %4890, 0
  %4905 = zext i1 %4904 to i8
  store i8 %4905, i8* %60, align 1
  %4906 = lshr i64 %4890, 63
  %4907 = trunc i64 %4906 to i8
  store i8 %4907, i8* %61, align 1
  %4908 = lshr i64 %4889, 63
  %4909 = xor i64 %4906, %4908
  %4910 = add nuw nsw i64 %4909, %4906
  %4911 = icmp eq i64 %4910, 2
  %4912 = zext i1 %4911 to i8
  store i8 %4912, i8* %62, align 1
  %4913 = load i64, i64* %RBP.i, align 8
  %4914 = add i64 %4913, -56
  %4915 = add i64 %4888, 15
  store i64 %4915, i64* %3, align 8
  %4916 = inttoptr i64 %4914 to i32*
  %4917 = load i32, i32* %4916, align 4
  %4918 = add i32 %4917, 1
  %4919 = zext i32 %4918 to i64
  store i64 %4919, i64* %RSI.i2255, align 8
  %4920 = sext i32 %4918 to i64
  %4921 = mul nsw i64 %4920, 264
  store i64 %4921, i64* %RCX.i2321, align 8
  %4922 = lshr i64 %4921, 63
  %4923 = load i64, i64* %RAX.i2329, align 8
  %4924 = add i64 %4921, %4923
  store i64 %4924, i64* %RAX.i2329, align 8
  %4925 = icmp ult i64 %4924, %4923
  %4926 = icmp ult i64 %4924, %4921
  %4927 = or i1 %4925, %4926
  %4928 = zext i1 %4927 to i8
  store i8 %4928, i8* %55, align 1
  %4929 = trunc i64 %4924 to i32
  %4930 = and i32 %4929, 255
  %4931 = tail call i32 @llvm.ctpop.i32(i32 %4930)
  %4932 = trunc i32 %4931 to i8
  %4933 = and i8 %4932, 1
  %4934 = xor i8 %4933, 1
  store i8 %4934, i8* %56, align 1
  %4935 = xor i64 %4921, %4923
  %4936 = xor i64 %4935, %4924
  %4937 = lshr i64 %4936, 4
  %4938 = trunc i64 %4937 to i8
  %4939 = and i8 %4938, 1
  store i8 %4939, i8* %57, align 1
  %4940 = icmp eq i64 %4924, 0
  %4941 = zext i1 %4940 to i8
  store i8 %4941, i8* %60, align 1
  %4942 = lshr i64 %4924, 63
  %4943 = trunc i64 %4942 to i8
  store i8 %4943, i8* %61, align 1
  %4944 = lshr i64 %4923, 63
  %4945 = xor i64 %4942, %4944
  %4946 = xor i64 %4942, %4922
  %4947 = add nuw nsw i64 %4945, %4946
  %4948 = icmp eq i64 %4947, 2
  %4949 = zext i1 %4948 to i8
  store i8 %4949, i8* %62, align 1
  %4950 = inttoptr i64 %4924 to i64*
  %4951 = add i64 %4888, 34
  store i64 %4951, i64* %3, align 8
  %4952 = load i64, i64* %4950, align 8
  store i64 %4952, i64* %RAX.i2329, align 8
  %4953 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %4953, i64* %RCX.i2321, align 8
  %4954 = add i64 %4953, 6488
  %4955 = add i64 %4888, 49
  store i64 %4955, i64* %3, align 8
  %4956 = inttoptr i64 %4954 to i64*
  %4957 = load i64, i64* %4956, align 8
  store i64 %4957, i64* %RCX.i2321, align 8
  %4958 = add i64 %4957, 8
  %4959 = add i64 %4888, 53
  store i64 %4959, i64* %3, align 8
  %4960 = inttoptr i64 %4958 to i64*
  %4961 = load i64, i64* %4960, align 8
  store i64 %4961, i64* %RCX.i2321, align 8
  %4962 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %4962, i64* %RDI.i2252, align 8
  %4963 = add i64 %4962, 144
  %4964 = add i64 %4888, 67
  store i64 %4964, i64* %3, align 8
  %4965 = inttoptr i64 %4963 to i32*
  %4966 = load i32, i32* %4965, align 4
  %4967 = zext i32 %4966 to i64
  store i64 %4967, i64* %RSI.i2255, align 8
  %4968 = load i64, i64* %RBP.i, align 8
  %4969 = add i64 %4968, -24
  %4970 = add i64 %4888, 70
  store i64 %4970, i64* %3, align 8
  %4971 = inttoptr i64 %4969 to i32*
  %4972 = load i32, i32* %4971, align 4
  %4973 = add i32 %4972, %4966
  %4974 = zext i32 %4973 to i64
  store i64 %4974, i64* %RSI.i2255, align 8
  %4975 = icmp ult i32 %4973, %4966
  %4976 = icmp ult i32 %4973, %4972
  %4977 = or i1 %4975, %4976
  %4978 = zext i1 %4977 to i8
  store i8 %4978, i8* %55, align 1
  %4979 = and i32 %4973, 255
  %4980 = tail call i32 @llvm.ctpop.i32(i32 %4979)
  %4981 = trunc i32 %4980 to i8
  %4982 = and i8 %4981, 1
  %4983 = xor i8 %4982, 1
  store i8 %4983, i8* %56, align 1
  %4984 = xor i32 %4972, %4966
  %4985 = xor i32 %4984, %4973
  %4986 = lshr i32 %4985, 4
  %4987 = trunc i32 %4986 to i8
  %4988 = and i8 %4987, 1
  store i8 %4988, i8* %57, align 1
  %4989 = icmp eq i32 %4973, 0
  %4990 = zext i1 %4989 to i8
  store i8 %4990, i8* %60, align 1
  %4991 = lshr i32 %4973, 31
  %4992 = trunc i32 %4991 to i8
  store i8 %4992, i8* %61, align 1
  %4993 = lshr i32 %4966, 31
  %4994 = lshr i32 %4972, 31
  %4995 = xor i32 %4991, %4993
  %4996 = xor i32 %4991, %4994
  %4997 = add nuw nsw i32 %4995, %4996
  %4998 = icmp eq i32 %4997, 2
  %4999 = zext i1 %4998 to i8
  store i8 %4999, i8* %62, align 1
  %5000 = sext i32 %4973 to i64
  store i64 %5000, i64* %RDI.i2252, align 8
  %5001 = shl nsw i64 %5000, 3
  %5002 = add i64 %4961, %5001
  %5003 = add i64 %4888, 77
  store i64 %5003, i64* %3, align 8
  %5004 = inttoptr i64 %5002 to i64*
  %5005 = load i64, i64* %5004, align 8
  store i64 %5005, i64* %RCX.i2321, align 8
  store i64 %4962, i64* %RDI.i2252, align 8
  %5006 = add i64 %4962, 148
  %5007 = add i64 %4888, 91
  store i64 %5007, i64* %3, align 8
  %5008 = inttoptr i64 %5006 to i32*
  %5009 = load i32, i32* %5008, align 4
  %5010 = zext i32 %5009 to i64
  store i64 %5010, i64* %RSI.i2255, align 8
  %5011 = add i64 %4968, -28
  %5012 = add i64 %4888, 94
  store i64 %5012, i64* %3, align 8
  %5013 = inttoptr i64 %5011 to i32*
  %5014 = load i32, i32* %5013, align 4
  %5015 = add i32 %5014, %5009
  %5016 = zext i32 %5015 to i64
  store i64 %5016, i64* %RSI.i2255, align 8
  %5017 = icmp ult i32 %5015, %5009
  %5018 = icmp ult i32 %5015, %5014
  %5019 = or i1 %5017, %5018
  %5020 = zext i1 %5019 to i8
  store i8 %5020, i8* %55, align 1
  %5021 = and i32 %5015, 255
  %5022 = tail call i32 @llvm.ctpop.i32(i32 %5021)
  %5023 = trunc i32 %5022 to i8
  %5024 = and i8 %5023, 1
  %5025 = xor i8 %5024, 1
  store i8 %5025, i8* %56, align 1
  %5026 = xor i32 %5014, %5009
  %5027 = xor i32 %5026, %5015
  %5028 = lshr i32 %5027, 4
  %5029 = trunc i32 %5028 to i8
  %5030 = and i8 %5029, 1
  store i8 %5030, i8* %57, align 1
  %5031 = icmp eq i32 %5015, 0
  %5032 = zext i1 %5031 to i8
  store i8 %5032, i8* %60, align 1
  %5033 = lshr i32 %5015, 31
  %5034 = trunc i32 %5033 to i8
  store i8 %5034, i8* %61, align 1
  %5035 = lshr i32 %5009, 31
  %5036 = lshr i32 %5014, 31
  %5037 = xor i32 %5033, %5035
  %5038 = xor i32 %5033, %5036
  %5039 = add nuw nsw i32 %5037, %5038
  %5040 = icmp eq i32 %5039, 2
  %5041 = zext i1 %5040 to i8
  store i8 %5041, i8* %62, align 1
  %5042 = sext i32 %5015 to i64
  store i64 %5042, i64* %RDI.i2252, align 8
  %5043 = shl nsw i64 %5042, 3
  %5044 = add i64 %5005, %5043
  %5045 = load i64, i64* %RAX.i2329, align 8
  %5046 = add i64 %4888, 101
  store i64 %5046, i64* %3, align 8
  %5047 = inttoptr i64 %5044 to i64*
  store i64 %5045, i64* %5047, align 8
  %5048 = load i64, i64* %3, align 8
  %5049 = add i64 %5048, 498
  store i64 %5049, i64* %3, align 8
  br label %block_.L_490b10

block_.L_490923:                                  ; preds = %block_49074c, %block_490742, %block_.L_490731
  %5050 = phi i64 [ %4476, %block_49074c ], [ %4450, %block_490742 ], [ %4426, %block_.L_490731 ]
  %5051 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %5051, i64* %RAX.i2329, align 8
  %5052 = add i64 %5051, 71928
  %5053 = add i64 %5050, 15
  store i64 %5053, i64* %3, align 8
  %5054 = inttoptr i64 %5052 to i64*
  %5055 = load i64, i64* %5054, align 8
  store i64 %5055, i64* %RAX.i2329, align 8
  %5056 = add i64 %4357, -24
  %5057 = add i64 %5050, 19
  store i64 %5057, i64* %3, align 8
  %5058 = inttoptr i64 %5056 to i32*
  %5059 = load i32, i32* %5058, align 4
  %5060 = sext i32 %5059 to i64
  store i64 %5060, i64* %RCX.i2321, align 8
  %5061 = shl nsw i64 %5060, 3
  %5062 = add i64 %5061, %5055
  %5063 = add i64 %5050, 23
  store i64 %5063, i64* %3, align 8
  %5064 = inttoptr i64 %5062 to i64*
  %5065 = load i64, i64* %5064, align 8
  store i64 %5065, i64* %RAX.i2329, align 8
  %5066 = add i64 %4357, -28
  %5067 = add i64 %5050, 27
  store i64 %5067, i64* %3, align 8
  %5068 = inttoptr i64 %5066 to i32*
  %5069 = load i32, i32* %5068, align 4
  %5070 = sext i32 %5069 to i64
  store i64 %5070, i64* %RCX.i2321, align 8
  %5071 = shl nsw i64 %5070, 3
  %5072 = add i64 %5071, %5065
  %5073 = add i64 %5050, 31
  store i64 %5073, i64* %3, align 8
  %5074 = inttoptr i64 %5072 to i64*
  %5075 = load i64, i64* %5074, align 8
  store i64 %5075, i64* %RAX.i2329, align 8
  %5076 = add i64 %5075, 8
  %5077 = add i64 %5050, 35
  store i64 %5077, i64* %3, align 8
  %5078 = inttoptr i64 %5076 to i64*
  %5079 = load i64, i64* %5078, align 8
  store i64 %5079, i64* %RAX.i2329, align 8
  %5080 = add i64 %4357, -20
  %5081 = add i64 %5050, 39
  store i64 %5081, i64* %3, align 8
  %5082 = inttoptr i64 %5080 to i32*
  %5083 = load i32, i32* %5082, align 4
  %5084 = sext i32 %5083 to i64
  store i64 %5084, i64* %RCX.i2321, align 8
  %5085 = shl nsw i64 %5084, 3
  %5086 = add i64 %5085, %5079
  %5087 = add i64 %5050, 43
  store i64 %5087, i64* %3, align 8
  %5088 = inttoptr i64 %5086 to i64*
  %5089 = load i64, i64* %5088, align 8
  store i64 %5089, i64* %RAX.i2329, align 8
  %5090 = add i64 %4357, -8
  %5091 = add i64 %5050, 47
  store i64 %5091, i64* %3, align 8
  %5092 = inttoptr i64 %5090 to i32*
  %5093 = load i32, i32* %5092, align 4
  %5094 = sext i32 %5093 to i64
  store i64 %5094, i64* %RCX.i2321, align 8
  %5095 = shl nsw i64 %5094, 3
  %5096 = add i64 %5095, %5089
  %5097 = add i64 %5050, 51
  store i64 %5097, i64* %3, align 8
  %5098 = inttoptr i64 %5096 to i64*
  %5099 = load i64, i64* %5098, align 8
  store i64 %5099, i64* %RAX.i2329, align 8
  %5100 = add i64 %5050, 54
  store i64 %5100, i64* %3, align 8
  %5101 = inttoptr i64 %5099 to i16*
  %5102 = load i16, i16* %5101, align 2
  store i16 %5102, i16* %DX.i1069, align 2
  %5103 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %5103, i64* %RAX.i2329, align 8
  %5104 = add i64 %5103, 6504
  %5105 = add i64 %5050, 69
  store i64 %5105, i64* %3, align 8
  %5106 = inttoptr i64 %5104 to i64*
  %5107 = load i64, i64* %5106, align 8
  store i64 %5107, i64* %RAX.i2329, align 8
  %5108 = add i64 %5107, 8
  %5109 = add i64 %5050, 73
  store i64 %5109, i64* %3, align 8
  %5110 = inttoptr i64 %5108 to i64*
  %5111 = load i64, i64* %5110, align 8
  store i64 %5111, i64* %RAX.i2329, align 8
  store i64 %5051, i64* %RCX.i2321, align 8
  %5112 = add i64 %5051, 144
  %5113 = add i64 %5050, 87
  store i64 %5113, i64* %3, align 8
  %5114 = inttoptr i64 %5112 to i32*
  %5115 = load i32, i32* %5114, align 4
  %5116 = zext i32 %5115 to i64
  store i64 %5116, i64* %RSI.i2255, align 8
  %5117 = load i64, i64* %RBP.i, align 8
  %5118 = add i64 %5117, -24
  %5119 = add i64 %5050, 90
  store i64 %5119, i64* %3, align 8
  %5120 = inttoptr i64 %5118 to i32*
  %5121 = load i32, i32* %5120, align 4
  %5122 = add i32 %5121, %5115
  %5123 = zext i32 %5122 to i64
  store i64 %5123, i64* %RSI.i2255, align 8
  %5124 = icmp ult i32 %5122, %5115
  %5125 = icmp ult i32 %5122, %5121
  %5126 = or i1 %5124, %5125
  %5127 = zext i1 %5126 to i8
  store i8 %5127, i8* %55, align 1
  %5128 = and i32 %5122, 255
  %5129 = tail call i32 @llvm.ctpop.i32(i32 %5128)
  %5130 = trunc i32 %5129 to i8
  %5131 = and i8 %5130, 1
  %5132 = xor i8 %5131, 1
  store i8 %5132, i8* %56, align 1
  %5133 = xor i32 %5121, %5115
  %5134 = xor i32 %5133, %5122
  %5135 = lshr i32 %5134, 4
  %5136 = trunc i32 %5135 to i8
  %5137 = and i8 %5136, 1
  store i8 %5137, i8* %57, align 1
  %5138 = icmp eq i32 %5122, 0
  %5139 = zext i1 %5138 to i8
  store i8 %5139, i8* %60, align 1
  %5140 = lshr i32 %5122, 31
  %5141 = trunc i32 %5140 to i8
  store i8 %5141, i8* %61, align 1
  %5142 = lshr i32 %5115, 31
  %5143 = lshr i32 %5121, 31
  %5144 = xor i32 %5140, %5142
  %5145 = xor i32 %5140, %5143
  %5146 = add nuw nsw i32 %5144, %5145
  %5147 = icmp eq i32 %5146, 2
  %5148 = zext i1 %5147 to i8
  store i8 %5148, i8* %62, align 1
  %5149 = sext i32 %5122 to i64
  store i64 %5149, i64* %RCX.i2321, align 8
  %5150 = shl nsw i64 %5149, 3
  %5151 = add i64 %5111, %5150
  %5152 = add i64 %5050, 97
  store i64 %5152, i64* %3, align 8
  %5153 = inttoptr i64 %5151 to i64*
  %5154 = load i64, i64* %5153, align 8
  store i64 %5154, i64* %RAX.i2329, align 8
  %5155 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %5155, i64* %RCX.i2321, align 8
  %5156 = add i64 %5155, 148
  %5157 = add i64 %5050, 111
  store i64 %5157, i64* %3, align 8
  %5158 = inttoptr i64 %5156 to i32*
  %5159 = load i32, i32* %5158, align 4
  %5160 = zext i32 %5159 to i64
  store i64 %5160, i64* %RSI.i2255, align 8
  %5161 = add i64 %5117, -28
  %5162 = add i64 %5050, 114
  store i64 %5162, i64* %3, align 8
  %5163 = inttoptr i64 %5161 to i32*
  %5164 = load i32, i32* %5163, align 4
  %5165 = add i32 %5164, %5159
  %5166 = zext i32 %5165 to i64
  store i64 %5166, i64* %RSI.i2255, align 8
  %5167 = icmp ult i32 %5165, %5159
  %5168 = icmp ult i32 %5165, %5164
  %5169 = or i1 %5167, %5168
  %5170 = zext i1 %5169 to i8
  store i8 %5170, i8* %55, align 1
  %5171 = and i32 %5165, 255
  %5172 = tail call i32 @llvm.ctpop.i32(i32 %5171)
  %5173 = trunc i32 %5172 to i8
  %5174 = and i8 %5173, 1
  %5175 = xor i8 %5174, 1
  store i8 %5175, i8* %56, align 1
  %5176 = xor i32 %5164, %5159
  %5177 = xor i32 %5176, %5165
  %5178 = lshr i32 %5177, 4
  %5179 = trunc i32 %5178 to i8
  %5180 = and i8 %5179, 1
  store i8 %5180, i8* %57, align 1
  %5181 = icmp eq i32 %5165, 0
  %5182 = zext i1 %5181 to i8
  store i8 %5182, i8* %60, align 1
  %5183 = lshr i32 %5165, 31
  %5184 = trunc i32 %5183 to i8
  store i8 %5184, i8* %61, align 1
  %5185 = lshr i32 %5159, 31
  %5186 = lshr i32 %5164, 31
  %5187 = xor i32 %5183, %5185
  %5188 = xor i32 %5183, %5186
  %5189 = add nuw nsw i32 %5187, %5188
  %5190 = icmp eq i32 %5189, 2
  %5191 = zext i1 %5190 to i8
  store i8 %5191, i8* %62, align 1
  %5192 = sext i32 %5165 to i64
  store i64 %5192, i64* %RCX.i2321, align 8
  %5193 = shl nsw i64 %5192, 3
  %5194 = add i64 %5154, %5193
  %5195 = add i64 %5050, 121
  store i64 %5195, i64* %3, align 8
  %5196 = inttoptr i64 %5194 to i16**
  %5197 = load i16*, i16** %5196, align 8
  %5198 = load i16, i16* %DX.i1069, align 2
  %5199 = add i64 %5050, 124
  store i64 %5199, i64* %3, align 8
  store i16 %5198, i16* %5197, align 2
  %5200 = load i64, i64* %3, align 8
  %5201 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %5201, i64* %RAX.i2329, align 8
  %5202 = add i64 %5201, 71928
  %5203 = add i64 %5200, 15
  store i64 %5203, i64* %3, align 8
  %5204 = inttoptr i64 %5202 to i64*
  %5205 = load i64, i64* %5204, align 8
  store i64 %5205, i64* %RAX.i2329, align 8
  %5206 = load i64, i64* %RBP.i, align 8
  %5207 = add i64 %5206, -24
  %5208 = add i64 %5200, 19
  store i64 %5208, i64* %3, align 8
  %5209 = inttoptr i64 %5207 to i32*
  %5210 = load i32, i32* %5209, align 4
  %5211 = sext i32 %5210 to i64
  store i64 %5211, i64* %RCX.i2321, align 8
  %5212 = shl nsw i64 %5211, 3
  %5213 = add i64 %5212, %5205
  %5214 = add i64 %5200, 23
  store i64 %5214, i64* %3, align 8
  %5215 = inttoptr i64 %5213 to i64*
  %5216 = load i64, i64* %5215, align 8
  store i64 %5216, i64* %RAX.i2329, align 8
  %5217 = add i64 %5206, -28
  %5218 = add i64 %5200, 27
  store i64 %5218, i64* %3, align 8
  %5219 = inttoptr i64 %5217 to i32*
  %5220 = load i32, i32* %5219, align 4
  %5221 = sext i32 %5220 to i64
  store i64 %5221, i64* %RCX.i2321, align 8
  %5222 = shl nsw i64 %5221, 3
  %5223 = add i64 %5222, %5216
  %5224 = add i64 %5200, 31
  store i64 %5224, i64* %3, align 8
  %5225 = inttoptr i64 %5223 to i64*
  %5226 = load i64, i64* %5225, align 8
  store i64 %5226, i64* %RAX.i2329, align 8
  %5227 = add i64 %5226, 8
  %5228 = add i64 %5200, 35
  store i64 %5228, i64* %3, align 8
  %5229 = inttoptr i64 %5227 to i64*
  %5230 = load i64, i64* %5229, align 8
  store i64 %5230, i64* %RAX.i2329, align 8
  %5231 = add i64 %5206, -20
  %5232 = add i64 %5200, 39
  store i64 %5232, i64* %3, align 8
  %5233 = inttoptr i64 %5231 to i32*
  %5234 = load i32, i32* %5233, align 4
  %5235 = sext i32 %5234 to i64
  store i64 %5235, i64* %RCX.i2321, align 8
  %5236 = shl nsw i64 %5235, 3
  %5237 = add i64 %5236, %5230
  %5238 = add i64 %5200, 43
  store i64 %5238, i64* %3, align 8
  %5239 = inttoptr i64 %5237 to i64*
  %5240 = load i64, i64* %5239, align 8
  store i64 %5240, i64* %RAX.i2329, align 8
  %5241 = add i64 %5206, -8
  %5242 = add i64 %5200, 47
  store i64 %5242, i64* %3, align 8
  %5243 = inttoptr i64 %5241 to i32*
  %5244 = load i32, i32* %5243, align 4
  %5245 = sext i32 %5244 to i64
  store i64 %5245, i64* %RCX.i2321, align 8
  %5246 = shl nsw i64 %5245, 3
  %5247 = add i64 %5246, %5240
  %5248 = add i64 %5200, 51
  store i64 %5248, i64* %3, align 8
  %5249 = inttoptr i64 %5247 to i64*
  %5250 = load i64, i64* %5249, align 8
  store i64 %5250, i64* %RAX.i2329, align 8
  %5251 = add i64 %5250, 2
  %5252 = add i64 %5200, 55
  store i64 %5252, i64* %3, align 8
  %5253 = inttoptr i64 %5251 to i16*
  %5254 = load i16, i16* %5253, align 2
  store i16 %5254, i16* %DX.i1069, align 2
  %5255 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %5255, i64* %RAX.i2329, align 8
  %5256 = add i64 %5255, 6504
  %5257 = add i64 %5200, 70
  store i64 %5257, i64* %3, align 8
  %5258 = inttoptr i64 %5256 to i64*
  %5259 = load i64, i64* %5258, align 8
  store i64 %5259, i64* %RAX.i2329, align 8
  %5260 = add i64 %5259, 8
  %5261 = add i64 %5200, 74
  store i64 %5261, i64* %3, align 8
  %5262 = inttoptr i64 %5260 to i64*
  %5263 = load i64, i64* %5262, align 8
  store i64 %5263, i64* %RAX.i2329, align 8
  store i64 %5201, i64* %RCX.i2321, align 8
  %5264 = add i64 %5201, 144
  %5265 = add i64 %5200, 88
  store i64 %5265, i64* %3, align 8
  %5266 = inttoptr i64 %5264 to i32*
  %5267 = load i32, i32* %5266, align 4
  %5268 = zext i32 %5267 to i64
  store i64 %5268, i64* %RSI.i2255, align 8
  %5269 = add i64 %5200, 91
  store i64 %5269, i64* %3, align 8
  %5270 = load i32, i32* %5209, align 4
  %5271 = add i32 %5270, %5267
  %5272 = zext i32 %5271 to i64
  store i64 %5272, i64* %RSI.i2255, align 8
  %5273 = icmp ult i32 %5271, %5267
  %5274 = icmp ult i32 %5271, %5270
  %5275 = or i1 %5273, %5274
  %5276 = zext i1 %5275 to i8
  store i8 %5276, i8* %55, align 1
  %5277 = and i32 %5271, 255
  %5278 = tail call i32 @llvm.ctpop.i32(i32 %5277)
  %5279 = trunc i32 %5278 to i8
  %5280 = and i8 %5279, 1
  %5281 = xor i8 %5280, 1
  store i8 %5281, i8* %56, align 1
  %5282 = xor i32 %5270, %5267
  %5283 = xor i32 %5282, %5271
  %5284 = lshr i32 %5283, 4
  %5285 = trunc i32 %5284 to i8
  %5286 = and i8 %5285, 1
  store i8 %5286, i8* %57, align 1
  %5287 = icmp eq i32 %5271, 0
  %5288 = zext i1 %5287 to i8
  store i8 %5288, i8* %60, align 1
  %5289 = lshr i32 %5271, 31
  %5290 = trunc i32 %5289 to i8
  store i8 %5290, i8* %61, align 1
  %5291 = lshr i32 %5267, 31
  %5292 = lshr i32 %5270, 31
  %5293 = xor i32 %5289, %5291
  %5294 = xor i32 %5289, %5292
  %5295 = add nuw nsw i32 %5293, %5294
  %5296 = icmp eq i32 %5295, 2
  %5297 = zext i1 %5296 to i8
  store i8 %5297, i8* %62, align 1
  %5298 = sext i32 %5271 to i64
  store i64 %5298, i64* %RCX.i2321, align 8
  %5299 = shl nsw i64 %5298, 3
  %5300 = add i64 %5263, %5299
  %5301 = add i64 %5200, 98
  store i64 %5301, i64* %3, align 8
  %5302 = inttoptr i64 %5300 to i64*
  %5303 = load i64, i64* %5302, align 8
  store i64 %5303, i64* %RAX.i2329, align 8
  %5304 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %5304, i64* %RCX.i2321, align 8
  %5305 = add i64 %5304, 148
  %5306 = add i64 %5200, 112
  store i64 %5306, i64* %3, align 8
  %5307 = inttoptr i64 %5305 to i32*
  %5308 = load i32, i32* %5307, align 4
  %5309 = zext i32 %5308 to i64
  store i64 %5309, i64* %RSI.i2255, align 8
  %5310 = load i64, i64* %RBP.i, align 8
  %5311 = add i64 %5310, -28
  %5312 = add i64 %5200, 115
  store i64 %5312, i64* %3, align 8
  %5313 = inttoptr i64 %5311 to i32*
  %5314 = load i32, i32* %5313, align 4
  %5315 = add i32 %5314, %5308
  %5316 = zext i32 %5315 to i64
  store i64 %5316, i64* %RSI.i2255, align 8
  %5317 = icmp ult i32 %5315, %5308
  %5318 = icmp ult i32 %5315, %5314
  %5319 = or i1 %5317, %5318
  %5320 = zext i1 %5319 to i8
  store i8 %5320, i8* %55, align 1
  %5321 = and i32 %5315, 255
  %5322 = tail call i32 @llvm.ctpop.i32(i32 %5321)
  %5323 = trunc i32 %5322 to i8
  %5324 = and i8 %5323, 1
  %5325 = xor i8 %5324, 1
  store i8 %5325, i8* %56, align 1
  %5326 = xor i32 %5314, %5308
  %5327 = xor i32 %5326, %5315
  %5328 = lshr i32 %5327, 4
  %5329 = trunc i32 %5328 to i8
  %5330 = and i8 %5329, 1
  store i8 %5330, i8* %57, align 1
  %5331 = icmp eq i32 %5315, 0
  %5332 = zext i1 %5331 to i8
  store i8 %5332, i8* %60, align 1
  %5333 = lshr i32 %5315, 31
  %5334 = trunc i32 %5333 to i8
  store i8 %5334, i8* %61, align 1
  %5335 = lshr i32 %5308, 31
  %5336 = lshr i32 %5314, 31
  %5337 = xor i32 %5333, %5335
  %5338 = xor i32 %5333, %5336
  %5339 = add nuw nsw i32 %5337, %5338
  %5340 = icmp eq i32 %5339, 2
  %5341 = zext i1 %5340 to i8
  store i8 %5341, i8* %62, align 1
  %5342 = sext i32 %5315 to i64
  store i64 %5342, i64* %RCX.i2321, align 8
  %5343 = shl nsw i64 %5342, 3
  %5344 = add i64 %5303, %5343
  %5345 = add i64 %5200, 122
  store i64 %5345, i64* %3, align 8
  %5346 = inttoptr i64 %5344 to i64*
  %5347 = load i64, i64* %5346, align 8
  store i64 %5347, i64* %RAX.i2329, align 8
  %5348 = add i64 %5347, 2
  %5349 = load i16, i16* %DX.i1069, align 2
  %5350 = add i64 %5200, 126
  store i64 %5350, i64* %3, align 8
  %5351 = inttoptr i64 %5348 to i16*
  store i16 %5349, i16* %5351, align 2
  %5352 = load i64, i64* %RBP.i, align 8
  %5353 = add i64 %5352, -20
  %5354 = load i64, i64* %3, align 8
  %5355 = add i64 %5354, 3
  store i64 %5355, i64* %3, align 8
  %5356 = inttoptr i64 %5353 to i32*
  %5357 = load i32, i32* %5356, align 4
  %5358 = zext i32 %5357 to i64
  store i64 %5358, i64* %RSI.i2255, align 8
  %5359 = trunc i32 %5357 to i16
  store i16 %5359, i16* %DX.i1069, align 2
  %5360 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %5360, i64* %RAX.i2329, align 8
  %5361 = add i64 %5360, 6480
  %5362 = add i64 %5354, 21
  store i64 %5362, i64* %3, align 8
  %5363 = inttoptr i64 %5361 to i64*
  %5364 = load i64, i64* %5363, align 8
  store i64 %5364, i64* %RAX.i2329, align 8
  %5365 = add i64 %5364, 8
  %5366 = add i64 %5354, 25
  store i64 %5366, i64* %3, align 8
  %5367 = inttoptr i64 %5365 to i64*
  %5368 = load i64, i64* %5367, align 8
  store i64 %5368, i64* %RAX.i2329, align 8
  %5369 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %5369, i64* %RCX.i2321, align 8
  %5370 = add i64 %5369, 144
  %5371 = add i64 %5354, 39
  store i64 %5371, i64* %3, align 8
  %5372 = inttoptr i64 %5370 to i32*
  %5373 = load i32, i32* %5372, align 4
  %5374 = zext i32 %5373 to i64
  store i64 %5374, i64* %RSI.i2255, align 8
  %5375 = add i64 %5352, -24
  %5376 = add i64 %5354, 42
  store i64 %5376, i64* %3, align 8
  %5377 = inttoptr i64 %5375 to i32*
  %5378 = load i32, i32* %5377, align 4
  %5379 = add i32 %5378, %5373
  %5380 = zext i32 %5379 to i64
  store i64 %5380, i64* %RSI.i2255, align 8
  %5381 = icmp ult i32 %5379, %5373
  %5382 = icmp ult i32 %5379, %5378
  %5383 = or i1 %5381, %5382
  %5384 = zext i1 %5383 to i8
  store i8 %5384, i8* %55, align 1
  %5385 = and i32 %5379, 255
  %5386 = tail call i32 @llvm.ctpop.i32(i32 %5385)
  %5387 = trunc i32 %5386 to i8
  %5388 = and i8 %5387, 1
  %5389 = xor i8 %5388, 1
  store i8 %5389, i8* %56, align 1
  %5390 = xor i32 %5378, %5373
  %5391 = xor i32 %5390, %5379
  %5392 = lshr i32 %5391, 4
  %5393 = trunc i32 %5392 to i8
  %5394 = and i8 %5393, 1
  store i8 %5394, i8* %57, align 1
  %5395 = icmp eq i32 %5379, 0
  %5396 = zext i1 %5395 to i8
  store i8 %5396, i8* %60, align 1
  %5397 = lshr i32 %5379, 31
  %5398 = trunc i32 %5397 to i8
  store i8 %5398, i8* %61, align 1
  %5399 = lshr i32 %5373, 31
  %5400 = lshr i32 %5378, 31
  %5401 = xor i32 %5397, %5399
  %5402 = xor i32 %5397, %5400
  %5403 = add nuw nsw i32 %5401, %5402
  %5404 = icmp eq i32 %5403, 2
  %5405 = zext i1 %5404 to i8
  store i8 %5405, i8* %62, align 1
  %5406 = sext i32 %5379 to i64
  store i64 %5406, i64* %RCX.i2321, align 8
  %5407 = shl nsw i64 %5406, 3
  %5408 = add i64 %5368, %5407
  %5409 = add i64 %5354, 49
  store i64 %5409, i64* %3, align 8
  %5410 = inttoptr i64 %5408 to i64*
  %5411 = load i64, i64* %5410, align 8
  store i64 %5411, i64* %RAX.i2329, align 8
  store i64 %5369, i64* %RCX.i2321, align 8
  %5412 = add i64 %5369, 148
  %5413 = add i64 %5354, 63
  store i64 %5413, i64* %3, align 8
  %5414 = inttoptr i64 %5412 to i32*
  %5415 = load i32, i32* %5414, align 4
  %5416 = zext i32 %5415 to i64
  store i64 %5416, i64* %RSI.i2255, align 8
  %5417 = load i64, i64* %RBP.i, align 8
  %5418 = add i64 %5417, -28
  %5419 = add i64 %5354, 66
  store i64 %5419, i64* %3, align 8
  %5420 = inttoptr i64 %5418 to i32*
  %5421 = load i32, i32* %5420, align 4
  %5422 = add i32 %5421, %5415
  %5423 = zext i32 %5422 to i64
  store i64 %5423, i64* %RSI.i2255, align 8
  %5424 = sext i32 %5422 to i64
  store i64 %5424, i64* %RCX.i2321, align 8
  %5425 = shl nsw i64 %5424, 1
  %5426 = add i64 %5411, %5425
  %5427 = load i16, i16* %DX.i1069, align 2
  %5428 = add i64 %5354, 73
  store i64 %5428, i64* %3, align 8
  %5429 = inttoptr i64 %5426 to i16*
  store i16 %5427, i16* %5429, align 2
  %5430 = load i64, i64* %3, align 8
  %5431 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  %5432 = add i64 %5431, 24
  store i64 %5432, i64* %RAX.i2329, align 8
  %5433 = icmp ugt i64 %5431, -25
  %5434 = zext i1 %5433 to i8
  store i8 %5434, i8* %55, align 1
  %5435 = trunc i64 %5432 to i32
  %5436 = and i32 %5435, 255
  %5437 = tail call i32 @llvm.ctpop.i32(i32 %5436)
  %5438 = trunc i32 %5437 to i8
  %5439 = and i8 %5438, 1
  %5440 = xor i8 %5439, 1
  store i8 %5440, i8* %56, align 1
  %5441 = xor i64 %5431, 16
  %5442 = xor i64 %5441, %5432
  %5443 = lshr i64 %5442, 4
  %5444 = trunc i64 %5443 to i8
  %5445 = and i8 %5444, 1
  store i8 %5445, i8* %57, align 1
  %5446 = icmp eq i64 %5432, 0
  %5447 = zext i1 %5446 to i8
  store i8 %5447, i8* %60, align 1
  %5448 = lshr i64 %5432, 63
  %5449 = trunc i64 %5448 to i8
  store i8 %5449, i8* %61, align 1
  %5450 = lshr i64 %5431, 63
  %5451 = xor i64 %5448, %5450
  %5452 = add nuw nsw i64 %5451, %5448
  %5453 = icmp eq i64 %5452, 2
  %5454 = zext i1 %5453 to i8
  store i8 %5454, i8* %62, align 1
  %5455 = load i64, i64* %RBP.i, align 8
  %5456 = add i64 %5455, -56
  %5457 = add i64 %5430, 15
  store i64 %5457, i64* %3, align 8
  %5458 = inttoptr i64 %5456 to i32*
  %5459 = load i32, i32* %5458, align 4
  %5460 = add i32 %5459, 1
  %5461 = zext i32 %5460 to i64
  store i64 %5461, i64* %RSI.i2255, align 8
  %5462 = sext i32 %5460 to i64
  %5463 = mul nsw i64 %5462, 264
  %5464 = lshr i64 %5463, 63
  %5465 = load i64, i64* %RAX.i2329, align 8
  %5466 = add i64 %5463, %5465
  store i64 %5466, i64* %RAX.i2329, align 8
  %5467 = icmp ult i64 %5466, %5465
  %5468 = icmp ult i64 %5466, %5463
  %5469 = or i1 %5467, %5468
  %5470 = zext i1 %5469 to i8
  store i8 %5470, i8* %55, align 1
  %5471 = trunc i64 %5466 to i32
  %5472 = and i32 %5471, 255
  %5473 = tail call i32 @llvm.ctpop.i32(i32 %5472)
  %5474 = trunc i32 %5473 to i8
  %5475 = and i8 %5474, 1
  %5476 = xor i8 %5475, 1
  store i8 %5476, i8* %56, align 1
  %5477 = xor i64 %5463, %5465
  %5478 = xor i64 %5477, %5466
  %5479 = lshr i64 %5478, 4
  %5480 = trunc i64 %5479 to i8
  %5481 = and i8 %5480, 1
  store i8 %5481, i8* %57, align 1
  %5482 = icmp eq i64 %5466, 0
  %5483 = zext i1 %5482 to i8
  store i8 %5483, i8* %60, align 1
  %5484 = lshr i64 %5466, 63
  %5485 = trunc i64 %5484 to i8
  store i8 %5485, i8* %61, align 1
  %5486 = lshr i64 %5465, 63
  %5487 = xor i64 %5484, %5486
  %5488 = xor i64 %5484, %5464
  %5489 = add nuw nsw i64 %5487, %5488
  %5490 = icmp eq i64 %5489, 2
  %5491 = zext i1 %5490 to i8
  store i8 %5491, i8* %62, align 1
  %5492 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %5492, i64* %RCX.i2321, align 8
  %5493 = add i64 %5492, 6480
  %5494 = add i64 %5430, 46
  store i64 %5494, i64* %3, align 8
  %5495 = inttoptr i64 %5493 to i64*
  %5496 = load i64, i64* %5495, align 8
  store i64 %5496, i64* %RCX.i2321, align 8
  %5497 = add i64 %5496, 8
  %5498 = add i64 %5430, 50
  store i64 %5498, i64* %3, align 8
  %5499 = inttoptr i64 %5497 to i64*
  %5500 = load i64, i64* %5499, align 8
  store i64 %5500, i64* %RCX.i2321, align 8
  %5501 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %5501, i64* %RDI.i2252, align 8
  %5502 = add i64 %5501, 144
  %5503 = add i64 %5430, 64
  store i64 %5503, i64* %3, align 8
  %5504 = inttoptr i64 %5502 to i32*
  %5505 = load i32, i32* %5504, align 4
  %5506 = zext i32 %5505 to i64
  store i64 %5506, i64* %RSI.i2255, align 8
  %5507 = load i64, i64* %RBP.i, align 8
  %5508 = add i64 %5507, -24
  %5509 = add i64 %5430, 67
  store i64 %5509, i64* %3, align 8
  %5510 = inttoptr i64 %5508 to i32*
  %5511 = load i32, i32* %5510, align 4
  %5512 = add i32 %5511, %5505
  %5513 = zext i32 %5512 to i64
  store i64 %5513, i64* %RSI.i2255, align 8
  %5514 = icmp ult i32 %5512, %5505
  %5515 = icmp ult i32 %5512, %5511
  %5516 = or i1 %5514, %5515
  %5517 = zext i1 %5516 to i8
  store i8 %5517, i8* %55, align 1
  %5518 = and i32 %5512, 255
  %5519 = tail call i32 @llvm.ctpop.i32(i32 %5518)
  %5520 = trunc i32 %5519 to i8
  %5521 = and i8 %5520, 1
  %5522 = xor i8 %5521, 1
  store i8 %5522, i8* %56, align 1
  %5523 = xor i32 %5511, %5505
  %5524 = xor i32 %5523, %5512
  %5525 = lshr i32 %5524, 4
  %5526 = trunc i32 %5525 to i8
  %5527 = and i8 %5526, 1
  store i8 %5527, i8* %57, align 1
  %5528 = icmp eq i32 %5512, 0
  %5529 = zext i1 %5528 to i8
  store i8 %5529, i8* %60, align 1
  %5530 = lshr i32 %5512, 31
  %5531 = trunc i32 %5530 to i8
  store i8 %5531, i8* %61, align 1
  %5532 = lshr i32 %5505, 31
  %5533 = lshr i32 %5511, 31
  %5534 = xor i32 %5530, %5532
  %5535 = xor i32 %5530, %5533
  %5536 = add nuw nsw i32 %5534, %5535
  %5537 = icmp eq i32 %5536, 2
  %5538 = zext i1 %5537 to i8
  store i8 %5538, i8* %62, align 1
  %5539 = sext i32 %5512 to i64
  store i64 %5539, i64* %RDI.i2252, align 8
  %5540 = shl nsw i64 %5539, 3
  %5541 = add i64 %5500, %5540
  %5542 = add i64 %5430, 74
  store i64 %5542, i64* %3, align 8
  %5543 = inttoptr i64 %5541 to i64*
  %5544 = load i64, i64* %5543, align 8
  store i64 %5544, i64* %RCX.i2321, align 8
  store i64 %5501, i64* %RDI.i2252, align 8
  %5545 = add i64 %5501, 148
  %5546 = add i64 %5430, 88
  store i64 %5546, i64* %3, align 8
  %5547 = inttoptr i64 %5545 to i32*
  %5548 = load i32, i32* %5547, align 4
  %5549 = zext i32 %5548 to i64
  store i64 %5549, i64* %RSI.i2255, align 8
  %5550 = add i64 %5507, -28
  %5551 = add i64 %5430, 91
  store i64 %5551, i64* %3, align 8
  %5552 = inttoptr i64 %5550 to i32*
  %5553 = load i32, i32* %5552, align 4
  %5554 = add i32 %5553, %5548
  %5555 = zext i32 %5554 to i64
  store i64 %5555, i64* %RSI.i2255, align 8
  %5556 = icmp ult i32 %5554, %5548
  %5557 = icmp ult i32 %5554, %5553
  %5558 = or i1 %5556, %5557
  %5559 = zext i1 %5558 to i8
  store i8 %5559, i8* %55, align 1
  %5560 = and i32 %5554, 255
  %5561 = tail call i32 @llvm.ctpop.i32(i32 %5560)
  %5562 = trunc i32 %5561 to i8
  %5563 = and i8 %5562, 1
  %5564 = xor i8 %5563, 1
  store i8 %5564, i8* %56, align 1
  %5565 = xor i32 %5553, %5548
  %5566 = xor i32 %5565, %5554
  %5567 = lshr i32 %5566, 4
  %5568 = trunc i32 %5567 to i8
  %5569 = and i8 %5568, 1
  store i8 %5569, i8* %57, align 1
  %5570 = icmp eq i32 %5554, 0
  %5571 = zext i1 %5570 to i8
  store i8 %5571, i8* %60, align 1
  %5572 = lshr i32 %5554, 31
  %5573 = trunc i32 %5572 to i8
  store i8 %5573, i8* %61, align 1
  %5574 = lshr i32 %5548, 31
  %5575 = lshr i32 %5553, 31
  %5576 = xor i32 %5572, %5574
  %5577 = xor i32 %5572, %5575
  %5578 = add nuw nsw i32 %5576, %5577
  %5579 = icmp eq i32 %5578, 2
  %5580 = zext i1 %5579 to i8
  store i8 %5580, i8* %62, align 1
  %5581 = sext i32 %5554 to i64
  store i64 %5581, i64* %RDI.i2252, align 8
  %5582 = shl nsw i64 %5581, 1
  %5583 = add i64 %5544, %5582
  %5584 = add i64 %5430, 99
  store i64 %5584, i64* %3, align 8
  %5585 = inttoptr i64 %5583 to i16*
  %5586 = load i16, i16* %5585, align 2
  %5587 = sext i16 %5586 to i64
  store i64 %5587, i64* %RCX.i2321, align 8
  %5588 = load i64, i64* %RAX.i2329, align 8
  %5589 = shl nsw i64 %5587, 3
  %5590 = add i64 %5589, %5588
  %5591 = add i64 %5430, 103
  store i64 %5591, i64* %3, align 8
  %5592 = inttoptr i64 %5590 to i64*
  %5593 = load i64, i64* %5592, align 8
  store i64 %5593, i64* %RAX.i2329, align 8
  %5594 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %5594, i64* %RCX.i2321, align 8
  %5595 = add i64 %5594, 6488
  %5596 = add i64 %5430, 118
  store i64 %5596, i64* %3, align 8
  %5597 = inttoptr i64 %5595 to i64*
  %5598 = load i64, i64* %5597, align 8
  store i64 %5598, i64* %RCX.i2321, align 8
  %5599 = add i64 %5598, 8
  %5600 = add i64 %5430, 122
  store i64 %5600, i64* %3, align 8
  %5601 = inttoptr i64 %5599 to i64*
  %5602 = load i64, i64* %5601, align 8
  store i64 %5602, i64* %RCX.i2321, align 8
  %5603 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %5603, i64* %RDI.i2252, align 8
  %5604 = add i64 %5603, 144
  %5605 = add i64 %5430, 136
  store i64 %5605, i64* %3, align 8
  %5606 = inttoptr i64 %5604 to i32*
  %5607 = load i32, i32* %5606, align 4
  %5608 = zext i32 %5607 to i64
  store i64 %5608, i64* %RSI.i2255, align 8
  %5609 = load i64, i64* %RBP.i, align 8
  %5610 = add i64 %5609, -24
  %5611 = add i64 %5430, 139
  store i64 %5611, i64* %3, align 8
  %5612 = inttoptr i64 %5610 to i32*
  %5613 = load i32, i32* %5612, align 4
  %5614 = add i32 %5613, %5607
  %5615 = zext i32 %5614 to i64
  store i64 %5615, i64* %RSI.i2255, align 8
  %5616 = icmp ult i32 %5614, %5607
  %5617 = icmp ult i32 %5614, %5613
  %5618 = or i1 %5616, %5617
  %5619 = zext i1 %5618 to i8
  store i8 %5619, i8* %55, align 1
  %5620 = and i32 %5614, 255
  %5621 = tail call i32 @llvm.ctpop.i32(i32 %5620)
  %5622 = trunc i32 %5621 to i8
  %5623 = and i8 %5622, 1
  %5624 = xor i8 %5623, 1
  store i8 %5624, i8* %56, align 1
  %5625 = xor i32 %5613, %5607
  %5626 = xor i32 %5625, %5614
  %5627 = lshr i32 %5626, 4
  %5628 = trunc i32 %5627 to i8
  %5629 = and i8 %5628, 1
  store i8 %5629, i8* %57, align 1
  %5630 = icmp eq i32 %5614, 0
  %5631 = zext i1 %5630 to i8
  store i8 %5631, i8* %60, align 1
  %5632 = lshr i32 %5614, 31
  %5633 = trunc i32 %5632 to i8
  store i8 %5633, i8* %61, align 1
  %5634 = lshr i32 %5607, 31
  %5635 = lshr i32 %5613, 31
  %5636 = xor i32 %5632, %5634
  %5637 = xor i32 %5632, %5635
  %5638 = add nuw nsw i32 %5636, %5637
  %5639 = icmp eq i32 %5638, 2
  %5640 = zext i1 %5639 to i8
  store i8 %5640, i8* %62, align 1
  %5641 = sext i32 %5614 to i64
  store i64 %5641, i64* %RDI.i2252, align 8
  %5642 = shl nsw i64 %5641, 3
  %5643 = add i64 %5602, %5642
  %5644 = add i64 %5430, 146
  store i64 %5644, i64* %3, align 8
  %5645 = inttoptr i64 %5643 to i64*
  %5646 = load i64, i64* %5645, align 8
  store i64 %5646, i64* %RCX.i2321, align 8
  store i64 %5603, i64* %RDI.i2252, align 8
  %5647 = add i64 %5603, 148
  %5648 = add i64 %5430, 160
  store i64 %5648, i64* %3, align 8
  %5649 = inttoptr i64 %5647 to i32*
  %5650 = load i32, i32* %5649, align 4
  %5651 = zext i32 %5650 to i64
  store i64 %5651, i64* %RSI.i2255, align 8
  %5652 = add i64 %5609, -28
  %5653 = add i64 %5430, 163
  store i64 %5653, i64* %3, align 8
  %5654 = inttoptr i64 %5652 to i32*
  %5655 = load i32, i32* %5654, align 4
  %5656 = add i32 %5655, %5650
  %5657 = zext i32 %5656 to i64
  store i64 %5657, i64* %RSI.i2255, align 8
  %5658 = icmp ult i32 %5656, %5650
  %5659 = icmp ult i32 %5656, %5655
  %5660 = or i1 %5658, %5659
  %5661 = zext i1 %5660 to i8
  store i8 %5661, i8* %55, align 1
  %5662 = and i32 %5656, 255
  %5663 = tail call i32 @llvm.ctpop.i32(i32 %5662)
  %5664 = trunc i32 %5663 to i8
  %5665 = and i8 %5664, 1
  %5666 = xor i8 %5665, 1
  store i8 %5666, i8* %56, align 1
  %5667 = xor i32 %5655, %5650
  %5668 = xor i32 %5667, %5656
  %5669 = lshr i32 %5668, 4
  %5670 = trunc i32 %5669 to i8
  %5671 = and i8 %5670, 1
  store i8 %5671, i8* %57, align 1
  %5672 = icmp eq i32 %5656, 0
  %5673 = zext i1 %5672 to i8
  store i8 %5673, i8* %60, align 1
  %5674 = lshr i32 %5656, 31
  %5675 = trunc i32 %5674 to i8
  store i8 %5675, i8* %61, align 1
  %5676 = lshr i32 %5650, 31
  %5677 = lshr i32 %5655, 31
  %5678 = xor i32 %5674, %5676
  %5679 = xor i32 %5674, %5677
  %5680 = add nuw nsw i32 %5678, %5679
  %5681 = icmp eq i32 %5680, 2
  %5682 = zext i1 %5681 to i8
  store i8 %5682, i8* %62, align 1
  %5683 = sext i32 %5656 to i64
  store i64 %5683, i64* %RDI.i2252, align 8
  %5684 = shl nsw i64 %5683, 3
  %5685 = add i64 %5646, %5684
  %5686 = load i64, i64* %RAX.i2329, align 8
  %5687 = add i64 %5430, 170
  store i64 %5687, i64* %3, align 8
  %5688 = inttoptr i64 %5685 to i64*
  store i64 %5686, i64* %5688, align 8
  %.pre58 = load i64, i64* %3, align 8
  br label %block_.L_490b10

block_.L_490b10:                                  ; preds = %block_.L_490923, %block_.L_490792
  %5689 = phi i64 [ %.pre58, %block_.L_490923 ], [ %5049, %block_.L_490792 ]
  %5690 = add i64 %5689, 290
  store i64 %5690, i64* %3, align 8
  br label %block_.L_490c32

block_.L_490b15:                                  ; preds = %block_490727
  %5691 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %5691, i64* %RAX.i2329, align 8
  %5692 = add i64 %5691, 6504
  %5693 = add i64 %4407, 15
  store i64 %5693, i64* %3, align 8
  %5694 = inttoptr i64 %5692 to i64*
  %5695 = load i64, i64* %5694, align 8
  store i64 %5695, i64* %RAX.i2329, align 8
  %5696 = add i64 %5695, 8
  %5697 = add i64 %4407, 19
  store i64 %5697, i64* %3, align 8
  %5698 = inttoptr i64 %5696 to i64*
  %5699 = load i64, i64* %5698, align 8
  store i64 %5699, i64* %RAX.i2329, align 8
  %5700 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %5700, i64* %RCX.i2321, align 8
  %5701 = add i64 %5700, 144
  %5702 = add i64 %4407, 33
  store i64 %5702, i64* %3, align 8
  %5703 = inttoptr i64 %5701 to i32*
  %5704 = load i32, i32* %5703, align 4
  %5705 = zext i32 %5704 to i64
  store i64 %5705, i64* %RDX.i2263.pre-phi, align 8
  %5706 = add i64 %4357, -24
  %5707 = add i64 %4407, 36
  store i64 %5707, i64* %3, align 8
  %5708 = inttoptr i64 %5706 to i32*
  %5709 = load i32, i32* %5708, align 4
  %5710 = add i32 %5709, %5704
  %5711 = zext i32 %5710 to i64
  store i64 %5711, i64* %RDX.i2263.pre-phi, align 8
  %5712 = icmp ult i32 %5710, %5704
  %5713 = icmp ult i32 %5710, %5709
  %5714 = or i1 %5712, %5713
  %5715 = zext i1 %5714 to i8
  store i8 %5715, i8* %55, align 1
  %5716 = and i32 %5710, 255
  %5717 = tail call i32 @llvm.ctpop.i32(i32 %5716)
  %5718 = trunc i32 %5717 to i8
  %5719 = and i8 %5718, 1
  %5720 = xor i8 %5719, 1
  store i8 %5720, i8* %56, align 1
  %5721 = xor i32 %5709, %5704
  %5722 = xor i32 %5721, %5710
  %5723 = lshr i32 %5722, 4
  %5724 = trunc i32 %5723 to i8
  %5725 = and i8 %5724, 1
  store i8 %5725, i8* %57, align 1
  %5726 = icmp eq i32 %5710, 0
  %5727 = zext i1 %5726 to i8
  store i8 %5727, i8* %60, align 1
  %5728 = lshr i32 %5710, 31
  %5729 = trunc i32 %5728 to i8
  store i8 %5729, i8* %61, align 1
  %5730 = lshr i32 %5704, 31
  %5731 = lshr i32 %5709, 31
  %5732 = xor i32 %5728, %5730
  %5733 = xor i32 %5728, %5731
  %5734 = add nuw nsw i32 %5732, %5733
  %5735 = icmp eq i32 %5734, 2
  %5736 = zext i1 %5735 to i8
  store i8 %5736, i8* %62, align 1
  %5737 = sext i32 %5710 to i64
  store i64 %5737, i64* %RCX.i2321, align 8
  %5738 = shl nsw i64 %5737, 3
  %5739 = add i64 %5699, %5738
  %5740 = add i64 %4407, 43
  store i64 %5740, i64* %3, align 8
  %5741 = inttoptr i64 %5739 to i64*
  %5742 = load i64, i64* %5741, align 8
  store i64 %5742, i64* %RAX.i2329, align 8
  store i64 %5700, i64* %RCX.i2321, align 8
  %5743 = add i64 %5700, 148
  %5744 = add i64 %4407, 57
  store i64 %5744, i64* %3, align 8
  %5745 = inttoptr i64 %5743 to i32*
  %5746 = load i32, i32* %5745, align 4
  %5747 = zext i32 %5746 to i64
  store i64 %5747, i64* %RDX.i2263.pre-phi, align 8
  %5748 = add i64 %4357, -28
  %5749 = add i64 %4407, 60
  store i64 %5749, i64* %3, align 8
  %5750 = inttoptr i64 %5748 to i32*
  %5751 = load i32, i32* %5750, align 4
  %5752 = add i32 %5751, %5746
  %5753 = zext i32 %5752 to i64
  store i64 %5753, i64* %RDX.i2263.pre-phi, align 8
  %5754 = icmp ult i32 %5752, %5746
  %5755 = icmp ult i32 %5752, %5751
  %5756 = or i1 %5754, %5755
  %5757 = zext i1 %5756 to i8
  store i8 %5757, i8* %55, align 1
  %5758 = and i32 %5752, 255
  %5759 = tail call i32 @llvm.ctpop.i32(i32 %5758)
  %5760 = trunc i32 %5759 to i8
  %5761 = and i8 %5760, 1
  %5762 = xor i8 %5761, 1
  store i8 %5762, i8* %56, align 1
  %5763 = xor i32 %5751, %5746
  %5764 = xor i32 %5763, %5752
  %5765 = lshr i32 %5764, 4
  %5766 = trunc i32 %5765 to i8
  %5767 = and i8 %5766, 1
  store i8 %5767, i8* %57, align 1
  %5768 = icmp eq i32 %5752, 0
  %5769 = zext i1 %5768 to i8
  store i8 %5769, i8* %60, align 1
  %5770 = lshr i32 %5752, 31
  %5771 = trunc i32 %5770 to i8
  store i8 %5771, i8* %61, align 1
  %5772 = lshr i32 %5746, 31
  %5773 = lshr i32 %5751, 31
  %5774 = xor i32 %5770, %5772
  %5775 = xor i32 %5770, %5773
  %5776 = add nuw nsw i32 %5774, %5775
  %5777 = icmp eq i32 %5776, 2
  %5778 = zext i1 %5777 to i8
  store i8 %5778, i8* %62, align 1
  %5779 = sext i32 %5752 to i64
  store i64 %5779, i64* %RCX.i2321, align 8
  %5780 = shl nsw i64 %5779, 3
  %5781 = add i64 %5742, %5780
  %5782 = add i64 %4407, 67
  store i64 %5782, i64* %3, align 8
  %5783 = inttoptr i64 %5781 to i16**
  %5784 = load i16*, i16** %5783, align 8
  %5785 = add i64 %4407, 72
  store i64 %5785, i64* %3, align 8
  store i16 0, i16* %5784, align 2
  %5786 = load i64, i64* %3, align 8
  %5787 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %5787, i64* %RAX.i2329, align 8
  %5788 = add i64 %5787, 6504
  %5789 = add i64 %5786, 15
  store i64 %5789, i64* %3, align 8
  %5790 = inttoptr i64 %5788 to i64*
  %5791 = load i64, i64* %5790, align 8
  store i64 %5791, i64* %RAX.i2329, align 8
  %5792 = add i64 %5791, 8
  %5793 = add i64 %5786, 19
  store i64 %5793, i64* %3, align 8
  %5794 = inttoptr i64 %5792 to i64*
  %5795 = load i64, i64* %5794, align 8
  store i64 %5795, i64* %RAX.i2329, align 8
  %5796 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %5796, i64* %RCX.i2321, align 8
  %5797 = add i64 %5796, 144
  %5798 = add i64 %5786, 33
  store i64 %5798, i64* %3, align 8
  %5799 = inttoptr i64 %5797 to i32*
  %5800 = load i32, i32* %5799, align 4
  %5801 = zext i32 %5800 to i64
  store i64 %5801, i64* %RDX.i2263.pre-phi, align 8
  %5802 = load i64, i64* %RBP.i, align 8
  %5803 = add i64 %5802, -24
  %5804 = add i64 %5786, 36
  store i64 %5804, i64* %3, align 8
  %5805 = inttoptr i64 %5803 to i32*
  %5806 = load i32, i32* %5805, align 4
  %5807 = add i32 %5806, %5800
  %5808 = zext i32 %5807 to i64
  store i64 %5808, i64* %RDX.i2263.pre-phi, align 8
  %5809 = icmp ult i32 %5807, %5800
  %5810 = icmp ult i32 %5807, %5806
  %5811 = or i1 %5809, %5810
  %5812 = zext i1 %5811 to i8
  store i8 %5812, i8* %55, align 1
  %5813 = and i32 %5807, 255
  %5814 = tail call i32 @llvm.ctpop.i32(i32 %5813)
  %5815 = trunc i32 %5814 to i8
  %5816 = and i8 %5815, 1
  %5817 = xor i8 %5816, 1
  store i8 %5817, i8* %56, align 1
  %5818 = xor i32 %5806, %5800
  %5819 = xor i32 %5818, %5807
  %5820 = lshr i32 %5819, 4
  %5821 = trunc i32 %5820 to i8
  %5822 = and i8 %5821, 1
  store i8 %5822, i8* %57, align 1
  %5823 = icmp eq i32 %5807, 0
  %5824 = zext i1 %5823 to i8
  store i8 %5824, i8* %60, align 1
  %5825 = lshr i32 %5807, 31
  %5826 = trunc i32 %5825 to i8
  store i8 %5826, i8* %61, align 1
  %5827 = lshr i32 %5800, 31
  %5828 = lshr i32 %5806, 31
  %5829 = xor i32 %5825, %5827
  %5830 = xor i32 %5825, %5828
  %5831 = add nuw nsw i32 %5829, %5830
  %5832 = icmp eq i32 %5831, 2
  %5833 = zext i1 %5832 to i8
  store i8 %5833, i8* %62, align 1
  %5834 = sext i32 %5807 to i64
  store i64 %5834, i64* %RCX.i2321, align 8
  %5835 = shl nsw i64 %5834, 3
  %5836 = add i64 %5795, %5835
  %5837 = add i64 %5786, 43
  store i64 %5837, i64* %3, align 8
  %5838 = inttoptr i64 %5836 to i64*
  %5839 = load i64, i64* %5838, align 8
  store i64 %5839, i64* %RAX.i2329, align 8
  store i64 %5796, i64* %RCX.i2321, align 8
  %5840 = add i64 %5796, 148
  %5841 = add i64 %5786, 57
  store i64 %5841, i64* %3, align 8
  %5842 = inttoptr i64 %5840 to i32*
  %5843 = load i32, i32* %5842, align 4
  %5844 = zext i32 %5843 to i64
  store i64 %5844, i64* %RDX.i2263.pre-phi, align 8
  %5845 = add i64 %5802, -28
  %5846 = add i64 %5786, 60
  store i64 %5846, i64* %3, align 8
  %5847 = inttoptr i64 %5845 to i32*
  %5848 = load i32, i32* %5847, align 4
  %5849 = add i32 %5848, %5843
  %5850 = zext i32 %5849 to i64
  store i64 %5850, i64* %RDX.i2263.pre-phi, align 8
  %5851 = icmp ult i32 %5849, %5843
  %5852 = icmp ult i32 %5849, %5848
  %5853 = or i1 %5851, %5852
  %5854 = zext i1 %5853 to i8
  store i8 %5854, i8* %55, align 1
  %5855 = and i32 %5849, 255
  %5856 = tail call i32 @llvm.ctpop.i32(i32 %5855)
  %5857 = trunc i32 %5856 to i8
  %5858 = and i8 %5857, 1
  %5859 = xor i8 %5858, 1
  store i8 %5859, i8* %56, align 1
  %5860 = xor i32 %5848, %5843
  %5861 = xor i32 %5860, %5849
  %5862 = lshr i32 %5861, 4
  %5863 = trunc i32 %5862 to i8
  %5864 = and i8 %5863, 1
  store i8 %5864, i8* %57, align 1
  %5865 = icmp eq i32 %5849, 0
  %5866 = zext i1 %5865 to i8
  store i8 %5866, i8* %60, align 1
  %5867 = lshr i32 %5849, 31
  %5868 = trunc i32 %5867 to i8
  store i8 %5868, i8* %61, align 1
  %5869 = lshr i32 %5843, 31
  %5870 = lshr i32 %5848, 31
  %5871 = xor i32 %5867, %5869
  %5872 = xor i32 %5867, %5870
  %5873 = add nuw nsw i32 %5871, %5872
  %5874 = icmp eq i32 %5873, 2
  %5875 = zext i1 %5874 to i8
  store i8 %5875, i8* %62, align 1
  %5876 = sext i32 %5849 to i64
  store i64 %5876, i64* %RCX.i2321, align 8
  %5877 = shl nsw i64 %5876, 3
  %5878 = add i64 %5839, %5877
  %5879 = add i64 %5786, 67
  store i64 %5879, i64* %3, align 8
  %5880 = inttoptr i64 %5878 to i64*
  %5881 = load i64, i64* %5880, align 8
  %5882 = add i64 %5881, 2
  %5883 = add i64 %5786, 73
  store i64 %5883, i64* %3, align 8
  %5884 = inttoptr i64 %5882 to i16*
  store i16 0, i16* %5884, align 2
  %5885 = load i64, i64* %3, align 8
  %5886 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %5886, i64* %RAX.i2329, align 8
  %5887 = add i64 %5886, 6480
  %5888 = add i64 %5885, 15
  store i64 %5888, i64* %3, align 8
  %5889 = inttoptr i64 %5887 to i64*
  %5890 = load i64, i64* %5889, align 8
  store i64 %5890, i64* %RAX.i2329, align 8
  %5891 = add i64 %5890, 8
  %5892 = add i64 %5885, 19
  store i64 %5892, i64* %3, align 8
  %5893 = inttoptr i64 %5891 to i64*
  %5894 = load i64, i64* %5893, align 8
  store i64 %5894, i64* %RAX.i2329, align 8
  %5895 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %5895, i64* %RCX.i2321, align 8
  %5896 = add i64 %5895, 144
  %5897 = add i64 %5885, 33
  store i64 %5897, i64* %3, align 8
  %5898 = inttoptr i64 %5896 to i32*
  %5899 = load i32, i32* %5898, align 4
  %5900 = zext i32 %5899 to i64
  store i64 %5900, i64* %RDX.i2263.pre-phi, align 8
  %5901 = load i64, i64* %RBP.i, align 8
  %5902 = add i64 %5901, -24
  %5903 = add i64 %5885, 36
  store i64 %5903, i64* %3, align 8
  %5904 = inttoptr i64 %5902 to i32*
  %5905 = load i32, i32* %5904, align 4
  %5906 = add i32 %5905, %5899
  %5907 = zext i32 %5906 to i64
  store i64 %5907, i64* %RDX.i2263.pre-phi, align 8
  %5908 = icmp ult i32 %5906, %5899
  %5909 = icmp ult i32 %5906, %5905
  %5910 = or i1 %5908, %5909
  %5911 = zext i1 %5910 to i8
  store i8 %5911, i8* %55, align 1
  %5912 = and i32 %5906, 255
  %5913 = tail call i32 @llvm.ctpop.i32(i32 %5912)
  %5914 = trunc i32 %5913 to i8
  %5915 = and i8 %5914, 1
  %5916 = xor i8 %5915, 1
  store i8 %5916, i8* %56, align 1
  %5917 = xor i32 %5905, %5899
  %5918 = xor i32 %5917, %5906
  %5919 = lshr i32 %5918, 4
  %5920 = trunc i32 %5919 to i8
  %5921 = and i8 %5920, 1
  store i8 %5921, i8* %57, align 1
  %5922 = icmp eq i32 %5906, 0
  %5923 = zext i1 %5922 to i8
  store i8 %5923, i8* %60, align 1
  %5924 = lshr i32 %5906, 31
  %5925 = trunc i32 %5924 to i8
  store i8 %5925, i8* %61, align 1
  %5926 = lshr i32 %5899, 31
  %5927 = lshr i32 %5905, 31
  %5928 = xor i32 %5924, %5926
  %5929 = xor i32 %5924, %5927
  %5930 = add nuw nsw i32 %5928, %5929
  %5931 = icmp eq i32 %5930, 2
  %5932 = zext i1 %5931 to i8
  store i8 %5932, i8* %62, align 1
  %5933 = sext i32 %5906 to i64
  store i64 %5933, i64* %RCX.i2321, align 8
  %5934 = shl nsw i64 %5933, 3
  %5935 = add i64 %5894, %5934
  %5936 = add i64 %5885, 43
  store i64 %5936, i64* %3, align 8
  %5937 = inttoptr i64 %5935 to i64*
  %5938 = load i64, i64* %5937, align 8
  store i64 %5938, i64* %RAX.i2329, align 8
  store i64 %5895, i64* %RCX.i2321, align 8
  %5939 = add i64 %5895, 148
  %5940 = add i64 %5885, 57
  store i64 %5940, i64* %3, align 8
  %5941 = inttoptr i64 %5939 to i32*
  %5942 = load i32, i32* %5941, align 4
  %5943 = zext i32 %5942 to i64
  store i64 %5943, i64* %RDX.i2263.pre-phi, align 8
  %5944 = add i64 %5901, -28
  %5945 = add i64 %5885, 60
  store i64 %5945, i64* %3, align 8
  %5946 = inttoptr i64 %5944 to i32*
  %5947 = load i32, i32* %5946, align 4
  %5948 = add i32 %5947, %5942
  %5949 = zext i32 %5948 to i64
  store i64 %5949, i64* %RDX.i2263.pre-phi, align 8
  %5950 = icmp ult i32 %5948, %5942
  %5951 = icmp ult i32 %5948, %5947
  %5952 = or i1 %5950, %5951
  %5953 = zext i1 %5952 to i8
  store i8 %5953, i8* %55, align 1
  %5954 = and i32 %5948, 255
  %5955 = tail call i32 @llvm.ctpop.i32(i32 %5954)
  %5956 = trunc i32 %5955 to i8
  %5957 = and i8 %5956, 1
  %5958 = xor i8 %5957, 1
  store i8 %5958, i8* %56, align 1
  %5959 = xor i32 %5947, %5942
  %5960 = xor i32 %5959, %5948
  %5961 = lshr i32 %5960, 4
  %5962 = trunc i32 %5961 to i8
  %5963 = and i8 %5962, 1
  store i8 %5963, i8* %57, align 1
  %5964 = icmp eq i32 %5948, 0
  %5965 = zext i1 %5964 to i8
  store i8 %5965, i8* %60, align 1
  %5966 = lshr i32 %5948, 31
  %5967 = trunc i32 %5966 to i8
  store i8 %5967, i8* %61, align 1
  %5968 = lshr i32 %5942, 31
  %5969 = lshr i32 %5947, 31
  %5970 = xor i32 %5966, %5968
  %5971 = xor i32 %5966, %5969
  %5972 = add nuw nsw i32 %5970, %5971
  %5973 = icmp eq i32 %5972, 2
  %5974 = zext i1 %5973 to i8
  store i8 %5974, i8* %62, align 1
  %5975 = sext i32 %5948 to i64
  store i64 %5975, i64* %RCX.i2321, align 8
  %5976 = shl nsw i64 %5975, 1
  %5977 = add i64 %5938, %5976
  %5978 = add i64 %5885, 69
  store i64 %5978, i64* %3, align 8
  %5979 = inttoptr i64 %5977 to i16*
  store i16 -1, i16* %5979, align 2
  %5980 = load i64, i64* %3, align 8
  %5981 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %5981, i64* %RAX.i2329, align 8
  %5982 = add i64 %5981, 6488
  %5983 = add i64 %5980, 15
  store i64 %5983, i64* %3, align 8
  %5984 = inttoptr i64 %5982 to i64*
  %5985 = load i64, i64* %5984, align 8
  store i64 %5985, i64* %RAX.i2329, align 8
  %5986 = add i64 %5985, 8
  %5987 = add i64 %5980, 19
  store i64 %5987, i64* %3, align 8
  %5988 = inttoptr i64 %5986 to i64*
  %5989 = load i64, i64* %5988, align 8
  store i64 %5989, i64* %RAX.i2329, align 8
  %5990 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %5990, i64* %RCX.i2321, align 8
  %5991 = add i64 %5990, 144
  %5992 = add i64 %5980, 33
  store i64 %5992, i64* %3, align 8
  %5993 = inttoptr i64 %5991 to i32*
  %5994 = load i32, i32* %5993, align 4
  %5995 = zext i32 %5994 to i64
  store i64 %5995, i64* %RDX.i2263.pre-phi, align 8
  %5996 = load i64, i64* %RBP.i, align 8
  %5997 = add i64 %5996, -24
  %5998 = add i64 %5980, 36
  store i64 %5998, i64* %3, align 8
  %5999 = inttoptr i64 %5997 to i32*
  %6000 = load i32, i32* %5999, align 4
  %6001 = add i32 %6000, %5994
  %6002 = zext i32 %6001 to i64
  store i64 %6002, i64* %RDX.i2263.pre-phi, align 8
  %6003 = icmp ult i32 %6001, %5994
  %6004 = icmp ult i32 %6001, %6000
  %6005 = or i1 %6003, %6004
  %6006 = zext i1 %6005 to i8
  store i8 %6006, i8* %55, align 1
  %6007 = and i32 %6001, 255
  %6008 = tail call i32 @llvm.ctpop.i32(i32 %6007)
  %6009 = trunc i32 %6008 to i8
  %6010 = and i8 %6009, 1
  %6011 = xor i8 %6010, 1
  store i8 %6011, i8* %56, align 1
  %6012 = xor i32 %6000, %5994
  %6013 = xor i32 %6012, %6001
  %6014 = lshr i32 %6013, 4
  %6015 = trunc i32 %6014 to i8
  %6016 = and i8 %6015, 1
  store i8 %6016, i8* %57, align 1
  %6017 = icmp eq i32 %6001, 0
  %6018 = zext i1 %6017 to i8
  store i8 %6018, i8* %60, align 1
  %6019 = lshr i32 %6001, 31
  %6020 = trunc i32 %6019 to i8
  store i8 %6020, i8* %61, align 1
  %6021 = lshr i32 %5994, 31
  %6022 = lshr i32 %6000, 31
  %6023 = xor i32 %6019, %6021
  %6024 = xor i32 %6019, %6022
  %6025 = add nuw nsw i32 %6023, %6024
  %6026 = icmp eq i32 %6025, 2
  %6027 = zext i1 %6026 to i8
  store i8 %6027, i8* %62, align 1
  %6028 = sext i32 %6001 to i64
  store i64 %6028, i64* %RCX.i2321, align 8
  %6029 = shl nsw i64 %6028, 3
  %6030 = add i64 %5989, %6029
  %6031 = add i64 %5980, 43
  store i64 %6031, i64* %3, align 8
  %6032 = inttoptr i64 %6030 to i64*
  %6033 = load i64, i64* %6032, align 8
  store i64 %6033, i64* %RAX.i2329, align 8
  store i64 %5990, i64* %RCX.i2321, align 8
  %6034 = add i64 %5990, 148
  %6035 = add i64 %5980, 57
  store i64 %6035, i64* %3, align 8
  %6036 = inttoptr i64 %6034 to i32*
  %6037 = load i32, i32* %6036, align 4
  %6038 = zext i32 %6037 to i64
  store i64 %6038, i64* %RDX.i2263.pre-phi, align 8
  %6039 = add i64 %5996, -28
  %6040 = add i64 %5980, 60
  store i64 %6040, i64* %3, align 8
  %6041 = inttoptr i64 %6039 to i32*
  %6042 = load i32, i32* %6041, align 4
  %6043 = add i32 %6042, %6037
  %6044 = zext i32 %6043 to i64
  store i64 %6044, i64* %RDX.i2263.pre-phi, align 8
  %6045 = icmp ult i32 %6043, %6037
  %6046 = icmp ult i32 %6043, %6042
  %6047 = or i1 %6045, %6046
  %6048 = zext i1 %6047 to i8
  store i8 %6048, i8* %55, align 1
  %6049 = and i32 %6043, 255
  %6050 = tail call i32 @llvm.ctpop.i32(i32 %6049)
  %6051 = trunc i32 %6050 to i8
  %6052 = and i8 %6051, 1
  %6053 = xor i8 %6052, 1
  store i8 %6053, i8* %56, align 1
  %6054 = xor i32 %6042, %6037
  %6055 = xor i32 %6054, %6043
  %6056 = lshr i32 %6055, 4
  %6057 = trunc i32 %6056 to i8
  %6058 = and i8 %6057, 1
  store i8 %6058, i8* %57, align 1
  %6059 = icmp eq i32 %6043, 0
  %6060 = zext i1 %6059 to i8
  store i8 %6060, i8* %60, align 1
  %6061 = lshr i32 %6043, 31
  %6062 = trunc i32 %6061 to i8
  store i8 %6062, i8* %61, align 1
  %6063 = lshr i32 %6037, 31
  %6064 = lshr i32 %6042, 31
  %6065 = xor i32 %6061, %6063
  %6066 = xor i32 %6061, %6064
  %6067 = add nuw nsw i32 %6065, %6066
  %6068 = icmp eq i32 %6067, 2
  %6069 = zext i1 %6068 to i8
  store i8 %6069, i8* %62, align 1
  %6070 = sext i32 %6043 to i64
  store i64 %6070, i64* %RCX.i2321, align 8
  %6071 = shl nsw i64 %6070, 3
  %6072 = add i64 %6033, %6071
  %6073 = add i64 %5980, 71
  store i64 %6073, i64* %3, align 8
  %6074 = inttoptr i64 %6072 to i64*
  store i64 -1, i64* %6074, align 8
  %.pre59 = load i64, i64* %3, align 8
  br label %block_.L_490c32

block_.L_490c32:                                  ; preds = %block_.L_490b15, %block_.L_490b10
  %6075 = phi i64 [ %.pre59, %block_.L_490b15 ], [ %5690, %block_.L_490b10 ]
  %6076 = load i64, i64* %RBP.i, align 8
  %6077 = add i64 %6076, -24
  %6078 = add i64 %6075, 8
  store i64 %6078, i64* %3, align 8
  %6079 = inttoptr i64 %6077 to i32*
  %6080 = load i32, i32* %6079, align 4
  %6081 = add i32 %6080, 1
  %6082 = zext i32 %6081 to i64
  store i64 %6082, i64* %RAX.i2329, align 8
  %6083 = icmp eq i32 %6080, -1
  %6084 = icmp eq i32 %6081, 0
  %6085 = or i1 %6083, %6084
  %6086 = zext i1 %6085 to i8
  store i8 %6086, i8* %55, align 1
  %6087 = and i32 %6081, 255
  %6088 = tail call i32 @llvm.ctpop.i32(i32 %6087)
  %6089 = trunc i32 %6088 to i8
  %6090 = and i8 %6089, 1
  %6091 = xor i8 %6090, 1
  store i8 %6091, i8* %56, align 1
  %6092 = xor i32 %6081, %6080
  %6093 = lshr i32 %6092, 4
  %6094 = trunc i32 %6093 to i8
  %6095 = and i8 %6094, 1
  store i8 %6095, i8* %57, align 1
  %6096 = zext i1 %6084 to i8
  store i8 %6096, i8* %60, align 1
  %6097 = lshr i32 %6081, 31
  %6098 = trunc i32 %6097 to i8
  store i8 %6098, i8* %61, align 1
  %6099 = lshr i32 %6080, 31
  %6100 = xor i32 %6097, %6099
  %6101 = add nuw nsw i32 %6100, %6097
  %6102 = icmp eq i32 %6101, 2
  %6103 = zext i1 %6102 to i8
  store i8 %6103, i8* %62, align 1
  %6104 = add i64 %6075, 14
  store i64 %6104, i64* %3, align 8
  store i32 %6081, i32* %6079, align 4
  %6105 = load i64, i64* %3, align 8
  %6106 = add i64 %6105, -2805
  store i64 %6106, i64* %3, align 8
  br label %block_.L_49014b

block_.L_490c45:                                  ; preds = %block_.L_49014b
  %6107 = add i64 %2333, -28
  %6108 = add i64 %2369, 8
  store i64 %6108, i64* %3, align 8
  %6109 = inttoptr i64 %6107 to i32*
  %6110 = load i32, i32* %6109, align 4
  %6111 = add i32 %6110, 1
  %6112 = zext i32 %6111 to i64
  store i64 %6112, i64* %RAX.i2329, align 8
  %6113 = icmp eq i32 %6110, -1
  %6114 = icmp eq i32 %6111, 0
  %6115 = or i1 %6113, %6114
  %6116 = zext i1 %6115 to i8
  store i8 %6116, i8* %55, align 1
  %6117 = and i32 %6111, 255
  %6118 = tail call i32 @llvm.ctpop.i32(i32 %6117)
  %6119 = trunc i32 %6118 to i8
  %6120 = and i8 %6119, 1
  %6121 = xor i8 %6120, 1
  store i8 %6121, i8* %56, align 1
  %6122 = xor i32 %6111, %6110
  %6123 = lshr i32 %6122, 4
  %6124 = trunc i32 %6123 to i8
  %6125 = and i8 %6124, 1
  store i8 %6125, i8* %57, align 1
  %6126 = zext i1 %6114 to i8
  store i8 %6126, i8* %60, align 1
  %6127 = lshr i32 %6111, 31
  %6128 = trunc i32 %6127 to i8
  store i8 %6128, i8* %61, align 1
  %6129 = lshr i32 %6110, 31
  %6130 = xor i32 %6127, %6129
  %6131 = add nuw nsw i32 %6130, %6127
  %6132 = icmp eq i32 %6131, 2
  %6133 = zext i1 %6132 to i8
  store i8 %6133, i8* %62, align 1
  %6134 = add i64 %2369, 14
  store i64 %6134, i64* %3, align 8
  store i32 %6111, i32* %6109, align 4
  %6135 = load i64, i64* %3, align 8
  %6136 = add i64 %6135, -2842
  store i64 %6136, i64* %3, align 8
  br label %block_.L_490139

block_.L_490c5d.loopexit:                         ; preds = %block_.L_48fc7f
  br label %block_.L_490c5d

block_.L_490c5d.loopexit107:                      ; preds = %block_.L_48ff09
  br label %block_.L_490c5d

block_.L_490c5d.loopexit108:                      ; preds = %block_.L_490139
  br label %block_.L_490c5d

block_.L_490c5d:                                  ; preds = %block_.L_490c5d.loopexit108, %block_.L_490c5d.loopexit107, %block_.L_490c5d.loopexit
  %6137 = phi i64 [ %621, %block_.L_490c5d.loopexit ], [ %1553, %block_.L_490c5d.loopexit107 ], [ %2323, %block_.L_490c5d.loopexit108 ]
  %.sink29 = phi i64 [ 3434, %block_.L_490c5d.loopexit ], [ 2864, %block_.L_490c5d.loopexit107 ], [ 6, %block_.L_490c5d.loopexit108 ]
  %6138 = add i64 %.sink29, %6137
  store i64 %6138, i64* %3, align 8
  %6139 = load i64, i64* %6, align 8
  %6140 = add i64 %6139, 8
  %6141 = inttoptr i64 %6139 to i64*
  %6142 = load i64, i64* %6141, align 8
  store i64 %6142, i64* %RBP.i, align 8
  store i64 %6140, i64* %6, align 8
  %6143 = add i64 %6138, 1
  store i64 %6143, i64* %3, align 8
  %6144 = inttoptr i64 %6140 to i64*
  %6145 = load i64, i64* %6144, align 8
  store i64 %6145, i64* %3, align 8
  %6146 = add i64 %6139, 16
  store i64 %6146, i64* %6, align 8
  ret %struct.Memory* %MEMORY.3
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
define %struct.Memory* @routine_movl__ecx__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r8d__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20
  %6 = load i32, i32* %R8D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1__0x18__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 24
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_sete__r9b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9B = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  store i8 %7, i8* %R9B, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_andb__0x1___r9b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9B = bitcast %union.anon* %3 to i8*
  %4 = load i8, i8* %R9B, align 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = and i8 %4, 1
  store i8 %7, i8* %R9B, align 1
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
define %struct.Memory* @routine_movzbl__r9b___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9B = bitcast %union.anon* %3 to i8*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i8, i8* %R9B, align 1
  %5 = zext i8 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_48fb54(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x2__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x3__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %9 = add i32 %8, -3
  %10 = icmp ult i32 %8, 3
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
define %struct.Memory* @routine_jne_.L_48fb5f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x54__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -84
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_48fb6c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x54__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84
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
define %struct.Memory* @routine_movl__0x2___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 2, i64* %RCX, align 8
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
define %struct.Memory* @routine_cltd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 1
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %7 = bitcast %union.anon* %6 to i32*
  %8 = load i32, i32* %7, align 8
  %9 = sext i32 %8 to i64
  %10 = lshr i64 %9, 32
  store i64 %10, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_idivl__ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %8 = bitcast %union.anon* %7 to i32*
  %9 = load i32, i32* %8, align 8
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %12 = bitcast %union.anon* %11 to i32*
  %13 = load i32, i32* %12, align 8
  %14 = zext i32 %13 to i64
  %15 = sext i32 %4 to i64
  %16 = shl nuw i64 %14, 32
  %17 = or i64 %16, %10
  %18 = sdiv i64 %17, %15
  %19 = shl i64 %18, 32
  %20 = ashr exact i64 %19, 32
  %21 = icmp eq i64 %18, %20
  br i1 %21, label %24, label %22

; <label>:22:                                     ; preds = %block_400488
  %23 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %6, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:24:                                     ; preds = %block_400488
  %25 = srem i64 %17, %15
  %26 = getelementptr inbounds %union.anon, %union.anon* %7, i64 0, i32 0
  %27 = and i64 %18, 4294967295
  store i64 %27, i64* %26, align 8
  %28 = getelementptr inbounds %union.anon, %union.anon* %11, i64 0, i32 0
  %29 = and i64 %25, 4294967295
  store i64 %29, i64* %28, align 8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %30, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %32, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %35, align 1
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %24, %22
  %36 = phi %struct.Memory* [ %23, %22 ], [ %2, %24 ]
  ret %struct.Memory* %36
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shll__0x1___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = shl i32 %6, 1
  %8 = icmp slt i32 %6, 0
  %9 = icmp slt i32 %7, 0
  %10 = xor i1 %8, %9
  %11 = zext i32 %7 to i64
  store i64 %11, i64* %RAX, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %.lobit = lshr i32 %6, 31
  %13 = trunc i32 %.lobit to i8
  store i8 %13, i8* %12, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %15 = and i32 %7, 254
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  store i8 %19, i8* %14, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %22 = icmp eq i32 %7, 0
  %23 = zext i1 %22 to i8
  store i8 %23, i8* %21, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %25 = lshr i32 %6, 30
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  store i8 %27, i8* %24, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %29 = zext i1 %10 to i8
  store i8 %29, i8* %28, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -40
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shll__0x1___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = shl i32 %6, 1
  %8 = icmp slt i32 %6, 0
  %9 = icmp slt i32 %7, 0
  %10 = xor i1 %8, %9
  %11 = zext i32 %7 to i64
  store i64 %11, i64* %RDX, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %.lobit = lshr i32 %6, 31
  %13 = trunc i32 %.lobit to i8
  store i8 %13, i8* %12, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %15 = and i32 %7, 254
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  store i8 %19, i8* %14, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %22 = icmp eq i32 %7, 0
  %23 = zext i1 %22 to i8
  store i8 %23, i8* %21, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %25 = lshr i32 %6, 30
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  store i8 %27, i8* %24, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %29 = zext i1 %10 to i8
  store i8 %29, i8* %28, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -44
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x28__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
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
define %struct.Memory* @routine_movq_0x6cb8f8___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %5, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_0x94__rsi__rdi_8____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RSI, align 8
  %5 = load i64, i64* %RDI, align 8
  %6 = shl i64 %5, 3
  %7 = add i64 %4, 148
  %8 = add i64 %7, %6
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC, align 8
  %11 = trunc i64 %3 to i32
  %12 = inttoptr i64 %8 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = add i32 %13, %11
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %RCX, align 8
  %16 = icmp ult i32 %14, %11
  %17 = icmp ult i32 %14, %13
  %18 = or i1 %16, %17
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %19, i8* %20, align 1
  %21 = and i32 %14, 255
  %22 = tail call i32 @llvm.ctpop.i32(i32 %21)
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = xor i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %25, i8* %26, align 1
  %27 = xor i32 %13, %11
  %28 = xor i32 %27, %14
  %29 = lshr i32 %28, 4
  %30 = trunc i32 %29 to i8
  %31 = and i8 %30, 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %31, i8* %32, align 1
  %33 = icmp eq i32 %14, 0
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %14, 31
  %37 = trunc i32 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %37, i8* %38, align 1
  %39 = lshr i32 %11, 31
  %40 = lshr i32 %13, 31
  %41 = xor i32 %36, %39
  %42 = xor i32 %36, %40
  %43 = add nuw nsw i32 %41, %42
  %44 = icmp eq i32 %43, 2
  %45 = zext i1 %44 to i8
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %45, i8* %46, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -48
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x2c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
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
define %struct.Memory* @routine_addl_0x90__rsi__rdi_8____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RSI, align 8
  %5 = load i64, i64* %RDI, align 8
  %6 = shl i64 %5, 3
  %7 = add i64 %4, 144
  %8 = add i64 %7, %6
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC, align 8
  %11 = trunc i64 %3 to i32
  %12 = inttoptr i64 %8 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = add i32 %13, %11
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %RCX, align 8
  %16 = icmp ult i32 %14, %11
  %17 = icmp ult i32 %14, %13
  %18 = or i1 %16, %17
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %19, i8* %20, align 1
  %21 = and i32 %14, 255
  %22 = tail call i32 @llvm.ctpop.i32(i32 %21)
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = xor i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %25, i8* %26, align 1
  %27 = xor i32 %13, %11
  %28 = xor i32 %27, %14
  %29 = lshr i32 %28, 4
  %30 = trunc i32 %29 to i8
  %31 = and i8 %30, 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %31, i8* %32, align 1
  %33 = icmp eq i32 %14, 0
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %14, 31
  %37 = trunc i32 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %37, i8* %38, align 1
  %39 = lshr i32 %11, 31
  %40 = lshr i32 %13, 31
  %41 = xor i32 %36, %39
  %42 = xor i32 %36, %40
  %43 = add nuw nsw i32 %41, %42
  %44 = icmp eq i32 %43, 2
  %45 = zext i1 %44 to i8
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %45, i8* %46, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x34__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -52
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x6cb900___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %5, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x11ad0__rsi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 72400
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
define %struct.Memory* @routine_je_.L_48fc36(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x3758__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 14168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_0xc__rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 12
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
define %struct.Memory* @routine_imulq__0x278___rcx___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %10 = mul nsw i128 %9, 632
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RCX, align 8
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
define %struct.Memory* @routine_cmpl__0x0__0x214__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 532
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
define %struct.Memory* @routine_movl__0x2___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 2, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x6cb900___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %5, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xc__rdx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 12
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
define %struct.Memory* @routine_movl__eax__MINUS0x58__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -88
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %ESI, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x58__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_idivl__esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ESI, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %8 = bitcast %union.anon* %7 to i32*
  %9 = load i32, i32* %8, align 8
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %12 = bitcast %union.anon* %11 to i32*
  %13 = load i32, i32* %12, align 8
  %14 = zext i32 %13 to i64
  %15 = sext i32 %4 to i64
  %16 = shl nuw i64 %14, 32
  %17 = or i64 %16, %10
  %18 = sdiv i64 %17, %15
  %19 = shl i64 %18, 32
  %20 = ashr exact i64 %19, 32
  %21 = icmp eq i64 %18, %20
  br i1 %21, label %24, label %22

; <label>:22:                                     ; preds = %block_400488
  %23 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %6, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:24:                                     ; preds = %block_400488
  %25 = srem i64 %17, %15
  %26 = getelementptr inbounds %union.anon, %union.anon* %7, i64 0, i32 0
  %27 = and i64 %18, 4294967295
  store i64 %27, i64* %26, align 8
  %28 = getelementptr inbounds %union.anon, %union.anon* %11, i64 0, i32 0
  %29 = and i64 %25, 4294967295
  store i64 %29, i64* %28, align 8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %30, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %32, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %35, align 1
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %24, %22
  %36 = phi %struct.Memory* [ %23, %22 ], [ %2, %24 ]
  ret %struct.Memory* %36
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
define %struct.Memory* @routine_cmovnel__ecx___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %9 = load i8, i8* %8, align 1
  %10 = icmp eq i8 %9, 0
  %11 = load i64, i64* %RSI, align 8
  %12 = select i1 %10, i64 %5, i64 %11
  %13 = and i64 %12, 4294967295
  store i64 %13, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__MINUS0x5c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -92
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_48fc40(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x5c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -92
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
define %struct.Memory* @routine_movl__eax__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -56
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x3758__rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 14168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_0xc__rdx____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 12
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
define %struct.Memory* @routine_imulq__0x278___rdx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 632
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
define %struct.Memory* @routine_movq__rcx__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jge_.L_48fef9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
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
define %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x30__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -48
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
define %struct.Memory* @routine_jge_.L_48fef4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
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
define %struct.Memory* @routine_cmpl_MINUS0x34__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -52
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
define %struct.Memory* @routine_jge_.L_48fee1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x70fcf0___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x1968__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 6504
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i64, i64* %4, align 8
  store i64 %7, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x90__rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 144
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x18__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq__edx___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x94__rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 148
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x1c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -28
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__0x0____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i16**
  %4 = load i16*, i16** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  store i16 0, i16* %4, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__0x0__0x2__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 2
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i16*
  store i16 0, i16* %7, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x8__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x1950__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 6480
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__0xffff____rax__rcx_2_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 1
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i16*
  store i16 -1, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x1958__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 6488
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0xffffffffffffffff____rax__rcx_8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  store i64 -1, i64* %9, align 8
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
define %struct.Memory* @routine_jmpq_.L_48fc91(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_48fee6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_48fc7f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_490c5d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
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
define %struct.Memory* @routine_jne_.L_490133(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_49012e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_49011b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x118f8__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 71928
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x10__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
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
define %struct.Memory* @routine_movw___rax____dx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DX = bitcast %union.anon* %3 to i16*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = bitcast i64* %RAX to i16**
  %5 = load i16*, i16** %4, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = load i16, i16* %5, align 2
  store i16 %8, i16* %DX, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x90__rcx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 144
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x18__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RSI, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq__esi___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %ESI, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x94__rcx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 148
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x1c__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -28
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RSI, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__dx____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DX = bitcast %union.anon* %3 to i16*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = bitcast i64* %RAX to i16**
  %5 = load i16*, i16** %4, align 8
  %6 = load i16, i16* %DX, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  store i16 %6, i16* %5, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw_0x2__rax____dx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DX = bitcast %union.anon* %3 to i16*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 2
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i16*
  %9 = load i16, i16* %8, align 2
  store i16 %9, i16* %DX, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__dx__0x2__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DX = bitcast %union.anon* %3 to i16*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 2
  %6 = load i16, i16* %DX, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x10__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
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
define %struct.Memory* @routine_movw__si___dx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DX = bitcast %union.anon* %3 to i16*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SI = bitcast %union.anon* %4 to i16*
  %5 = load i16, i16* %SI, align 2
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i16 %5, i16* %DX, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__dx____rax__rcx_2_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DX = bitcast %union.anon* %3 to i16*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 1
  %7 = add i64 %6, %4
  %8 = load i16, i16* %DX, align 2
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 4
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i16*
  store i16 %8, i16* %11, align 2
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x18___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 24
  store i64 %6, i64* %RAX, align 8
  %7 = icmp ugt i64 %3, -25
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
define %struct.Memory* @routine_movl_MINUS0x38__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x0___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = and i64 %3, 4294967295
  store i64 %7, i64* %RSI, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = and i32 %6, 255
  %10 = tail call i32 @llvm.ctpop.i32(i32 %9)
  %11 = trunc i32 %10 to i8
  %12 = and i8 %11, 1
  %13 = xor i8 %12, 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %13, i8* %14, align 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %15, align 1
  %16 = icmp eq i32 %6, 0
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %17, i8* %18, align 1
  %19 = lshr i32 %6, 31
  %20 = trunc i32 %19 to i8
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %20, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %22, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x108___rcx___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %10 = mul nsw i128 %9, 264
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RCX, align 8
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
define %struct.Memory* @routine_movq_0x70fcf0___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x1950__rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 6480
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = bitcast i64* %RCX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i64, i64* %4, align 8
  store i64 %7, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x6cb900___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %5, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x90__rdi____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = add i64 %3, 144
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq__esi___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i32, i32* %ESI, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rcx__rdi_8____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDI, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x94__rdi____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = add i64 %3, 148
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movswq___rcx__rdi_2____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDI, align 8
  %5 = shl i64 %4, 1
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i16*
  %10 = load i16, i16* %9, align 2
  %11 = sext i16 %10 to i64
  store i64 %11, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x1958__rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 6488
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax____rcx__rdi_8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDI, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %RAX, align 8
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %6 to i64*
  store i64 %7, i64* %10, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_48ff1b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_490120(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_48ff09(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_490c58(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_490c45(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_490219(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x722cb8___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x722cb8_type* @G_0x722cb8 to i64*), align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movswl___rax__rcx_2____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 1
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i16*
  %10 = load i16, i16* %9, align 2
  %11 = sext i16 %10 to i64
  %12 = and i64 %11, 4294967295
  store i64 %12, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x6cea08___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cea08_type* @G_0x6cea08 to i64*), align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_49022d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x2__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jne_.L_490604(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x40__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x244__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 580
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
define %struct.Memory* @routine_je_.L_490419(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_490419(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x1__0x244__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 580
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_49027b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x11900__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 71936
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x68__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_49028e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x11908__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 71944
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x68__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__0x0____rax__rcx_2_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 1
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i16*
  store i16 0, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4905ff(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_49071d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_490731(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_490b15(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_490923(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_490923(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_49077f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__rax__MINUS0x70__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_490792(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x70__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x50__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x1___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RSI, align 8
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
define %struct.Memory* @routine_movq_0x8__rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_490b10(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x14__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
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
define %struct.Memory* @routine_jmpq_.L_490c32(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_490c37(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_49014b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_490c4a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_490139(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
