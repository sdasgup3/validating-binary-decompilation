; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x6cb900_type = type <{ [8 x i8] }>
%G_0x6d4518_type = type <{ [8 x i8] }>
%G_0x70fcf0_type = type <{ [8 x i8] }>
%G_0x7247a0_type = type <{ [4 x i8] }>
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
@G_0x6cb900 = local_unnamed_addr global %G_0x6cb900_type zeroinitializer
@G_0x6d4518 = local_unnamed_addr global %G_0x6d4518_type zeroinitializer
@G_0x70fcf0 = local_unnamed_addr global %G_0x70fcf0_type zeroinitializer
@G_0x7247a0 = local_unnamed_addr global %G_0x7247a0_type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @set_mbaff_parameters(%struct.State* noalias, i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #1 {
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
  %RAX.i931 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %11 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %11, i64* %RAX.i931, align 8
  %12 = add i64 %11, 14168
  %13 = add i64 %10, 18
  store i64 %13, i64* %3, align 8
  %14 = inttoptr i64 %12 to i64*
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %RAX.i931, align 8
  %RCX.i927 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  store i64 %11, i64* %RCX.i927, align 8
  %16 = add i64 %11, 12
  %17 = add i64 %10, 30
  store i64 %17, i64* %3, align 8
  %18 = inttoptr i64 %16 to i32*
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %19 to i64
  %21 = mul nsw i64 %20, 632
  store i64 %21, i64* %RCX.i927, align 8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %26 = lshr i64 %21, 63
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %29 = add i64 %21, %15
  %30 = icmp ult i64 %29, %15
  %31 = icmp ult i64 %29, %21
  %32 = or i1 %30, %31
  %33 = zext i1 %32 to i8
  store i8 %33, i8* %22, align 1
  %34 = trunc i64 %29 to i32
  %35 = and i32 %34, 255
  %36 = tail call i32 @llvm.ctpop.i32(i32 %35)
  %37 = trunc i32 %36 to i8
  %38 = and i8 %37, 1
  %39 = xor i8 %38, 1
  store i8 %39, i8* %23, align 1
  %40 = xor i64 %21, %15
  %41 = xor i64 %40, %29
  %42 = lshr i64 %41, 4
  %43 = trunc i64 %42 to i8
  %44 = and i8 %43, 1
  store i8 %44, i8* %24, align 1
  %45 = icmp eq i64 %29, 0
  %46 = zext i1 %45 to i8
  store i8 %46, i8* %25, align 1
  %47 = lshr i64 %29, 63
  %48 = trunc i64 %47 to i8
  store i8 %48, i8* %27, align 1
  %49 = lshr i64 %15, 63
  %50 = xor i64 %47, %49
  %51 = xor i64 %47, %26
  %52 = add nuw nsw i64 %50, %51
  %53 = icmp eq i64 %52, 2
  %54 = zext i1 %53 to i8
  store i8 %54, i8* %28, align 1
  %55 = add i64 %7, -32
  %56 = add i64 %10, 44
  store i64 %56, i64* %3, align 8
  %57 = inttoptr i64 %55 to i64*
  store i64 %29, i64* %57, align 8
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %RDX.i915 = getelementptr inbounds %union.anon, %union.anon* %58, i64 0, i32 0
  %59 = load i64, i64* %3, align 8
  %60 = load i32, i32* bitcast (%G_0x7247a0_type* @G_0x7247a0 to i32*), align 8
  %61 = zext i32 %60 to i64
  store i64 %61, i64* %RDX.i915, align 8
  %EDX.i912 = bitcast %union.anon* %58 to i32*
  %62 = load i64, i64* %RBP.i, align 8
  %63 = add i64 %62, -28
  %64 = add i64 %59, 10
  store i64 %64, i64* %3, align 8
  %65 = inttoptr i64 %63 to i32*
  store i32 %60, i32* %65, align 4
  %66 = load i64, i64* %3, align 8
  %67 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %67, i64* %RAX.i931, align 8
  %68 = add i64 %67, 24
  %69 = add i64 %66, 12
  store i64 %69, i64* %3, align 8
  %70 = inttoptr i64 %68 to i32*
  %71 = load i32, i32* %70, align 4
  %72 = icmp eq i32 %71, 1
  %73 = zext i1 %72 to i8
  %74 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SIL.i906 = bitcast %union.anon* %74 to i8*
  store i8 %73, i8* %SIL.i906, align 1
  store i8 0, i8* %22, align 1
  %75 = zext i1 %72 to i32
  %76 = tail call i32 @llvm.ctpop.i32(i32 %75)
  %77 = trunc i32 %76 to i8
  %78 = xor i8 %77, 1
  store i8 %78, i8* %23, align 1
  %79 = xor i8 %73, 1
  store i8 %79, i8* %25, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %28, align 1
  store i8 0, i8* %24, align 1
  %80 = zext i1 %72 to i64
  store i64 %80, i64* %RDX.i915, align 8
  %81 = load i64, i64* %RBP.i, align 8
  %82 = add i64 %81, -32
  %83 = zext i1 %72 to i32
  %84 = add i64 %66, 27
  store i64 %84, i64* %3, align 8
  %85 = inttoptr i64 %82 to i32*
  store i32 %83, i32* %85, align 4
  %86 = load i64, i64* %3, align 8
  %87 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %87, i64* %RAX.i931, align 8
  %88 = add i64 %87, 104
  %89 = add i64 %86, 12
  store i64 %89, i64* %3, align 8
  %90 = inttoptr i64 %88 to i64*
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* %RBP.i, align 8
  %93 = add i64 %92, -40
  %94 = add i64 %86, 16
  store i64 %94, i64* %3, align 8
  %95 = inttoptr i64 %93 to i64*
  store i64 %91, i64* %95, align 8
  %96 = load i64, i64* %3, align 8
  %97 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %97, i64* %RAX.i931, align 8
  %98 = add i64 %97, 72400
  %99 = add i64 %96, 15
  store i64 %99, i64* %3, align 8
  %100 = inttoptr i64 %98 to i32*
  %101 = load i32, i32* %100, align 4
  store i8 0, i8* %22, align 1
  %102 = and i32 %101, 255
  %103 = tail call i32 @llvm.ctpop.i32(i32 %102)
  %104 = trunc i32 %103 to i8
  %105 = and i8 %104, 1
  %106 = xor i8 %105, 1
  store i8 %106, i8* %23, align 1
  store i8 0, i8* %24, align 1
  %107 = icmp eq i32 %101, 0
  %108 = zext i1 %107 to i8
  store i8 %108, i8* %25, align 1
  %109 = lshr i32 %101, 31
  %110 = trunc i32 %109 to i8
  store i8 %110, i8* %27, align 1
  store i8 0, i8* %28, align 1
  %.v99 = select i1 %107, i64 21, i64 26
  %111 = add i64 %96, %.v99
  store i64 %111, i64* %3, align 8
  br i1 %107, label %block_49cf97, label %block_.L_49cf9c

block_49cf97:                                     ; preds = %entry
  %112 = add i64 %111, 1797
  store i64 %112, i64* %3, align 8
  br label %block_.L_49d69c

block_.L_49cf9c:                                  ; preds = %entry
  %113 = load i64, i64* %RBP.i, align 8
  %114 = add i64 %113, -8
  %115 = add i64 %111, 7
  store i64 %115, i64* %3, align 8
  %116 = inttoptr i64 %114 to i32*
  store i32 0, i32* %116, align 4
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_49cfa3

block_.L_49cfa3:                                  ; preds = %block_.L_49d029, %block_.L_49cf9c
  %117 = phi i64 [ %398, %block_.L_49d029 ], [ %.pre, %block_.L_49cf9c ]
  %118 = load i64, i64* %RBP.i, align 8
  %119 = add i64 %118, -8
  %120 = add i64 %117, 4
  store i64 %120, i64* %3, align 8
  %121 = inttoptr i64 %119 to i32*
  %122 = load i32, i32* %121, align 4
  %123 = add i32 %122, -16
  %124 = icmp ult i32 %122, 16
  %125 = zext i1 %124 to i8
  store i8 %125, i8* %22, align 1
  %126 = and i32 %123, 255
  %127 = tail call i32 @llvm.ctpop.i32(i32 %126)
  %128 = trunc i32 %127 to i8
  %129 = and i8 %128, 1
  %130 = xor i8 %129, 1
  store i8 %130, i8* %23, align 1
  %131 = xor i32 %122, 16
  %132 = xor i32 %131, %123
  %133 = lshr i32 %132, 4
  %134 = trunc i32 %133 to i8
  %135 = and i8 %134, 1
  store i8 %135, i8* %24, align 1
  %136 = icmp eq i32 %123, 0
  %137 = zext i1 %136 to i8
  store i8 %137, i8* %25, align 1
  %138 = lshr i32 %123, 31
  %139 = trunc i32 %138 to i8
  store i8 %139, i8* %27, align 1
  %140 = lshr i32 %122, 31
  %141 = xor i32 %138, %140
  %142 = add nuw nsw i32 %141, %140
  %143 = icmp eq i32 %142, 2
  %144 = zext i1 %143 to i8
  store i8 %144, i8* %28, align 1
  %145 = icmp ne i8 %139, 0
  %146 = xor i1 %145, %143
  %.v100 = select i1 %146, i64 10, i64 153
  %147 = add i64 %117, %.v100
  store i64 %147, i64* %3, align 8
  br i1 %146, label %block_49cfad, label %block_.L_49d03c

block_49cfad:                                     ; preds = %block_.L_49cfa3
  %148 = add i64 %118, -4
  %149 = add i64 %147, 7
  store i64 %149, i64* %3, align 8
  %150 = inttoptr i64 %148 to i32*
  store i32 0, i32* %150, align 4
  %.pre88 = load i64, i64* %3, align 8
  br label %block_.L_49cfb4

block_.L_49cfb4:                                  ; preds = %block_49cfbe, %block_49cfad
  %151 = phi i64 [ %368, %block_49cfbe ], [ %.pre88, %block_49cfad ]
  %152 = load i64, i64* %RBP.i, align 8
  %153 = add i64 %152, -4
  %154 = add i64 %151, 4
  store i64 %154, i64* %3, align 8
  %155 = inttoptr i64 %153 to i32*
  %156 = load i32, i32* %155, align 4
  %157 = add i32 %156, -16
  %158 = icmp ult i32 %156, 16
  %159 = zext i1 %158 to i8
  store i8 %159, i8* %22, align 1
  %160 = and i32 %157, 255
  %161 = tail call i32 @llvm.ctpop.i32(i32 %160)
  %162 = trunc i32 %161 to i8
  %163 = and i8 %162, 1
  %164 = xor i8 %163, 1
  store i8 %164, i8* %23, align 1
  %165 = xor i32 %156, 16
  %166 = xor i32 %165, %157
  %167 = lshr i32 %166, 4
  %168 = trunc i32 %167 to i8
  %169 = and i8 %168, 1
  store i8 %169, i8* %24, align 1
  %170 = icmp eq i32 %157, 0
  %171 = zext i1 %170 to i8
  store i8 %171, i8* %25, align 1
  %172 = lshr i32 %157, 31
  %173 = trunc i32 %172 to i8
  store i8 %173, i8* %27, align 1
  %174 = lshr i32 %156, 31
  %175 = xor i32 %172, %174
  %176 = add nuw nsw i32 %175, %174
  %177 = icmp eq i32 %176, 2
  %178 = zext i1 %177 to i8
  store i8 %178, i8* %28, align 1
  %179 = icmp ne i8 %173, 0
  %180 = xor i1 %179, %177
  %.v98 = select i1 %180, i64 10, i64 117
  %181 = add i64 %151, %.v98
  store i64 %181, i64* %3, align 8
  br i1 %180, label %block_49cfbe, label %block_.L_49d029

block_49cfbe:                                     ; preds = %block_.L_49cfb4
  %182 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %182, i64* %RAX.i931, align 8
  %183 = add i64 %182, 6424
  %184 = add i64 %181, 15
  store i64 %184, i64* %3, align 8
  %185 = inttoptr i64 %183 to i64*
  %186 = load i64, i64* %185, align 8
  store i64 %186, i64* %RAX.i931, align 8
  %187 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %187, i64* %RCX.i927, align 8
  %188 = add i64 %187, 156
  %189 = add i64 %181, 29
  store i64 %189, i64* %3, align 8
  %190 = inttoptr i64 %188 to i32*
  %191 = load i32, i32* %190, align 4
  %192 = zext i32 %191 to i64
  store i64 %192, i64* %RDX.i915, align 8
  %193 = add i64 %152, -8
  %194 = add i64 %181, 32
  store i64 %194, i64* %3, align 8
  %195 = inttoptr i64 %193 to i32*
  %196 = load i32, i32* %195, align 4
  %197 = add i32 %196, %191
  %198 = zext i32 %197 to i64
  store i64 %198, i64* %RDX.i915, align 8
  %199 = icmp ult i32 %197, %191
  %200 = icmp ult i32 %197, %196
  %201 = or i1 %199, %200
  %202 = zext i1 %201 to i8
  store i8 %202, i8* %22, align 1
  %203 = and i32 %197, 255
  %204 = tail call i32 @llvm.ctpop.i32(i32 %203)
  %205 = trunc i32 %204 to i8
  %206 = and i8 %205, 1
  %207 = xor i8 %206, 1
  store i8 %207, i8* %23, align 1
  %208 = xor i32 %196, %191
  %209 = xor i32 %208, %197
  %210 = lshr i32 %209, 4
  %211 = trunc i32 %210 to i8
  %212 = and i8 %211, 1
  store i8 %212, i8* %24, align 1
  %213 = icmp eq i32 %197, 0
  %214 = zext i1 %213 to i8
  store i8 %214, i8* %25, align 1
  %215 = lshr i32 %197, 31
  %216 = trunc i32 %215 to i8
  store i8 %216, i8* %27, align 1
  %217 = lshr i32 %191, 31
  %218 = lshr i32 %196, 31
  %219 = xor i32 %215, %217
  %220 = xor i32 %215, %218
  %221 = add nuw nsw i32 %219, %220
  %222 = icmp eq i32 %221, 2
  %223 = zext i1 %222 to i8
  store i8 %223, i8* %28, align 1
  %224 = sext i32 %197 to i64
  store i64 %224, i64* %RCX.i927, align 8
  %225 = shl nsw i64 %224, 3
  %226 = add i64 %186, %225
  %227 = add i64 %181, 39
  store i64 %227, i64* %3, align 8
  %228 = inttoptr i64 %226 to i64*
  %229 = load i64, i64* %228, align 8
  store i64 %229, i64* %RAX.i931, align 8
  store i64 %187, i64* %RCX.i927, align 8
  %230 = add i64 %187, 152
  %231 = add i64 %181, 53
  store i64 %231, i64* %3, align 8
  %232 = inttoptr i64 %230 to i32*
  %233 = load i32, i32* %232, align 4
  %234 = zext i32 %233 to i64
  store i64 %234, i64* %RDX.i915, align 8
  %235 = add i64 %181, 56
  store i64 %235, i64* %3, align 8
  %236 = load i32, i32* %155, align 4
  %237 = add i32 %236, %233
  %238 = zext i32 %237 to i64
  store i64 %238, i64* %RDX.i915, align 8
  %239 = icmp ult i32 %237, %233
  %240 = icmp ult i32 %237, %236
  %241 = or i1 %239, %240
  %242 = zext i1 %241 to i8
  store i8 %242, i8* %22, align 1
  %243 = and i32 %237, 255
  %244 = tail call i32 @llvm.ctpop.i32(i32 %243)
  %245 = trunc i32 %244 to i8
  %246 = and i8 %245, 1
  %247 = xor i8 %246, 1
  store i8 %247, i8* %23, align 1
  %248 = xor i32 %236, %233
  %249 = xor i32 %248, %237
  %250 = lshr i32 %249, 4
  %251 = trunc i32 %250 to i8
  %252 = and i8 %251, 1
  store i8 %252, i8* %24, align 1
  %253 = icmp eq i32 %237, 0
  %254 = zext i1 %253 to i8
  store i8 %254, i8* %25, align 1
  %255 = lshr i32 %237, 31
  %256 = trunc i32 %255 to i8
  store i8 %256, i8* %27, align 1
  %257 = lshr i32 %233, 31
  %258 = lshr i32 %236, 31
  %259 = xor i32 %255, %257
  %260 = xor i32 %255, %258
  %261 = add nuw nsw i32 %259, %260
  %262 = icmp eq i32 %261, 2
  %263 = zext i1 %262 to i8
  store i8 %263, i8* %28, align 1
  %264 = sext i32 %237 to i64
  store i64 %264, i64* %RCX.i927, align 8
  %265 = shl nsw i64 %264, 1
  %266 = add i64 %229, %265
  %267 = add i64 %181, 63
  store i64 %267, i64* %3, align 8
  %268 = inttoptr i64 %266 to i16*
  %269 = load i16, i16* %268, align 2
  %270 = zext i16 %269 to i64
  store i64 %270, i64* %RDX.i915, align 8
  %271 = load i64, i64* bitcast (%G_0x6d4518_type* @G_0x6d4518 to i64*), align 8
  %272 = add i64 %271, 8
  store i64 %272, i64* %RAX.i931, align 8
  %273 = icmp ugt i64 %271, -9
  %274 = zext i1 %273 to i8
  store i8 %274, i8* %22, align 1
  %275 = trunc i64 %272 to i32
  %276 = and i32 %275, 255
  %277 = tail call i32 @llvm.ctpop.i32(i32 %276)
  %278 = trunc i32 %277 to i8
  %279 = and i8 %278, 1
  %280 = xor i8 %279, 1
  store i8 %280, i8* %23, align 1
  %281 = xor i64 %272, %271
  %282 = lshr i64 %281, 4
  %283 = trunc i64 %282 to i8
  %284 = and i8 %283, 1
  store i8 %284, i8* %24, align 1
  %285 = icmp eq i64 %272, 0
  %286 = zext i1 %285 to i8
  store i8 %286, i8* %25, align 1
  %287 = lshr i64 %272, 63
  %288 = trunc i64 %287 to i8
  store i8 %288, i8* %27, align 1
  %289 = lshr i64 %271, 63
  %290 = xor i64 %287, %289
  %291 = add nuw nsw i64 %290, %287
  %292 = icmp eq i64 %291, 2
  %293 = zext i1 %292 to i8
  store i8 %293, i8* %28, align 1
  %294 = load i64, i64* %RBP.i, align 8
  %295 = add i64 %294, -8
  %296 = add i64 %181, 79
  store i64 %296, i64* %3, align 8
  %297 = inttoptr i64 %295 to i32*
  %298 = load i32, i32* %297, align 4
  %299 = sext i32 %298 to i64
  %300 = shl nsw i64 %299, 6
  store i64 %300, i64* %RCX.i927, align 8
  %301 = add i64 %300, %272
  store i64 %301, i64* %RAX.i931, align 8
  %302 = icmp ult i64 %301, %272
  %303 = icmp ult i64 %301, %300
  %304 = or i1 %302, %303
  %305 = zext i1 %304 to i8
  store i8 %305, i8* %22, align 1
  %306 = trunc i64 %301 to i32
  %307 = and i32 %306, 255
  %308 = tail call i32 @llvm.ctpop.i32(i32 %307)
  %309 = trunc i32 %308 to i8
  %310 = and i8 %309, 1
  %311 = xor i8 %310, 1
  store i8 %311, i8* %23, align 1
  %312 = xor i64 %272, %301
  %313 = lshr i64 %312, 4
  %314 = trunc i64 %313 to i8
  %315 = and i8 %314, 1
  store i8 %315, i8* %24, align 1
  %316 = icmp eq i64 %301, 0
  %317 = zext i1 %316 to i8
  store i8 %317, i8* %25, align 1
  %318 = lshr i64 %301, 63
  %319 = trunc i64 %318 to i8
  store i8 %319, i8* %27, align 1
  %320 = lshr i64 %299, 57
  %321 = and i64 %320, 1
  %322 = xor i64 %318, %287
  %323 = xor i64 %318, %321
  %324 = add nuw nsw i64 %322, %323
  %325 = icmp eq i64 %324, 2
  %326 = zext i1 %325 to i8
  store i8 %326, i8* %28, align 1
  %327 = add i64 %294, -4
  %328 = add i64 %181, 90
  store i64 %328, i64* %3, align 8
  %329 = inttoptr i64 %327 to i32*
  %330 = load i32, i32* %329, align 4
  %331 = sext i32 %330 to i64
  store i64 %331, i64* %RCX.i927, align 8
  %332 = shl nsw i64 %331, 2
  %333 = add i64 %332, %301
  %334 = load i32, i32* %EDX.i912, align 4
  %335 = add i64 %181, 93
  store i64 %335, i64* %3, align 8
  %336 = inttoptr i64 %333 to i32*
  store i32 %334, i32* %336, align 4
  %337 = load i64, i64* %RBP.i, align 8
  %338 = add i64 %337, -4
  %339 = load i64, i64* %3, align 8
  %340 = add i64 %339, 3
  store i64 %340, i64* %3, align 8
  %341 = inttoptr i64 %338 to i32*
  %342 = load i32, i32* %341, align 4
  %343 = add i32 %342, 1
  %344 = zext i32 %343 to i64
  store i64 %344, i64* %RAX.i931, align 8
  %345 = icmp eq i32 %342, -1
  %346 = icmp eq i32 %343, 0
  %347 = or i1 %345, %346
  %348 = zext i1 %347 to i8
  store i8 %348, i8* %22, align 1
  %349 = and i32 %343, 255
  %350 = tail call i32 @llvm.ctpop.i32(i32 %349)
  %351 = trunc i32 %350 to i8
  %352 = and i8 %351, 1
  %353 = xor i8 %352, 1
  store i8 %353, i8* %23, align 1
  %354 = xor i32 %343, %342
  %355 = lshr i32 %354, 4
  %356 = trunc i32 %355 to i8
  %357 = and i8 %356, 1
  store i8 %357, i8* %24, align 1
  %358 = zext i1 %346 to i8
  store i8 %358, i8* %25, align 1
  %359 = lshr i32 %343, 31
  %360 = trunc i32 %359 to i8
  store i8 %360, i8* %27, align 1
  %361 = lshr i32 %342, 31
  %362 = xor i32 %359, %361
  %363 = add nuw nsw i32 %362, %359
  %364 = icmp eq i32 %363, 2
  %365 = zext i1 %364 to i8
  store i8 %365, i8* %28, align 1
  %366 = add i64 %339, 9
  store i64 %366, i64* %3, align 8
  store i32 %343, i32* %341, align 4
  %367 = load i64, i64* %3, align 8
  %368 = add i64 %367, -112
  store i64 %368, i64* %3, align 8
  br label %block_.L_49cfb4

block_.L_49d029:                                  ; preds = %block_.L_49cfb4
  %369 = add i64 %152, -8
  %370 = add i64 %181, 8
  store i64 %370, i64* %3, align 8
  %371 = inttoptr i64 %369 to i32*
  %372 = load i32, i32* %371, align 4
  %373 = add i32 %372, 1
  %374 = zext i32 %373 to i64
  store i64 %374, i64* %RAX.i931, align 8
  %375 = icmp eq i32 %372, -1
  %376 = icmp eq i32 %373, 0
  %377 = or i1 %375, %376
  %378 = zext i1 %377 to i8
  store i8 %378, i8* %22, align 1
  %379 = and i32 %373, 255
  %380 = tail call i32 @llvm.ctpop.i32(i32 %379)
  %381 = trunc i32 %380 to i8
  %382 = and i8 %381, 1
  %383 = xor i8 %382, 1
  store i8 %383, i8* %23, align 1
  %384 = xor i32 %373, %372
  %385 = lshr i32 %384, 4
  %386 = trunc i32 %385 to i8
  %387 = and i8 %386, 1
  store i8 %387, i8* %24, align 1
  %388 = zext i1 %376 to i8
  store i8 %388, i8* %25, align 1
  %389 = lshr i32 %373, 31
  %390 = trunc i32 %389 to i8
  store i8 %390, i8* %27, align 1
  %391 = lshr i32 %372, 31
  %392 = xor i32 %389, %391
  %393 = add nuw nsw i32 %392, %389
  %394 = icmp eq i32 %393, 2
  %395 = zext i1 %394 to i8
  store i8 %395, i8* %28, align 1
  %396 = add i64 %181, 14
  store i64 %396, i64* %3, align 8
  store i32 %373, i32* %371, align 4
  %397 = load i64, i64* %3, align 8
  %398 = add i64 %397, -148
  store i64 %398, i64* %3, align 8
  br label %block_.L_49cfa3

block_.L_49d03c:                                  ; preds = %block_.L_49cfa3
  %399 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %399, i64* %RAX.i931, align 8
  %400 = add i64 %399, 72700
  %401 = add i64 %147, 15
  store i64 %401, i64* %3, align 8
  %402 = inttoptr i64 %400 to i32*
  %403 = load i32, i32* %402, align 4
  store i8 0, i8* %22, align 1
  %404 = and i32 %403, 255
  %405 = tail call i32 @llvm.ctpop.i32(i32 %404)
  %406 = trunc i32 %405 to i8
  %407 = and i8 %406, 1
  %408 = xor i8 %407, 1
  store i8 %408, i8* %23, align 1
  store i8 0, i8* %24, align 1
  %409 = icmp eq i32 %403, 0
  %410 = zext i1 %409 to i8
  store i8 %410, i8* %25, align 1
  %411 = lshr i32 %403, 31
  %412 = trunc i32 %411 to i8
  store i8 %412, i8* %27, align 1
  store i8 0, i8* %28, align 1
  %.v101 = select i1 %409, i64 316, i64 21
  %413 = add i64 %147, %.v101
  store i64 %413, i64* %3, align 8
  br i1 %409, label %block_.L_49d178, label %block_49d051

block_49d051:                                     ; preds = %block_.L_49d03c
  %414 = add i64 %413, 7
  store i64 %414, i64* %3, align 8
  store i32 0, i32* %121, align 4
  %.pre69 = load i64, i64* %3, align 8
  br label %block_.L_49d058

block_.L_49d058:                                  ; preds = %block_.L_49d160, %block_49d051
  %415 = phi i64 [ %877, %block_.L_49d160 ], [ %.pre69, %block_49d051 ]
  %416 = load i64, i64* %RBP.i, align 8
  %417 = add i64 %416, -8
  %418 = add i64 %415, 3
  store i64 %418, i64* %3, align 8
  %419 = inttoptr i64 %417 to i32*
  %420 = load i32, i32* %419, align 4
  %421 = zext i32 %420 to i64
  store i64 %421, i64* %RAX.i931, align 8
  %422 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %422, i64* %RCX.i927, align 8
  %423 = add i64 %422, 72712
  %424 = add i64 %415, 17
  store i64 %424, i64* %3, align 8
  %425 = inttoptr i64 %423 to i32*
  %426 = load i32, i32* %425, align 4
  %427 = sub i32 %420, %426
  %428 = icmp ult i32 %420, %426
  %429 = zext i1 %428 to i8
  store i8 %429, i8* %22, align 1
  %430 = and i32 %427, 255
  %431 = tail call i32 @llvm.ctpop.i32(i32 %430)
  %432 = trunc i32 %431 to i8
  %433 = and i8 %432, 1
  %434 = xor i8 %433, 1
  store i8 %434, i8* %23, align 1
  %435 = xor i32 %426, %420
  %436 = xor i32 %435, %427
  %437 = lshr i32 %436, 4
  %438 = trunc i32 %437 to i8
  %439 = and i8 %438, 1
  store i8 %439, i8* %24, align 1
  %440 = icmp eq i32 %427, 0
  %441 = zext i1 %440 to i8
  store i8 %441, i8* %25, align 1
  %442 = lshr i32 %427, 31
  %443 = trunc i32 %442 to i8
  store i8 %443, i8* %27, align 1
  %444 = lshr i32 %420, 31
  %445 = lshr i32 %426, 31
  %446 = xor i32 %445, %444
  %447 = xor i32 %442, %444
  %448 = add nuw nsw i32 %447, %446
  %449 = icmp eq i32 %448, 2
  %450 = zext i1 %449 to i8
  store i8 %450, i8* %28, align 1
  %451 = icmp ne i8 %443, 0
  %452 = xor i1 %451, %449
  %.v102 = select i1 %452, i64 23, i64 283
  %453 = add i64 %415, %.v102
  store i64 %453, i64* %3, align 8
  br i1 %452, label %block_49d06f, label %block_.L_49d173

block_49d06f:                                     ; preds = %block_.L_49d058
  %454 = add i64 %416, -4
  %455 = add i64 %453, 7
  store i64 %455, i64* %3, align 8
  %456 = inttoptr i64 %454 to i32*
  store i32 0, i32* %456, align 4
  %.pre70 = load i64, i64* %3, align 8
  br label %block_.L_49d076

block_.L_49d076:                                  ; preds = %block_49d08d, %block_49d06f
  %457 = phi i64 [ %847, %block_49d08d ], [ %.pre70, %block_49d06f ]
  %458 = load i64, i64* %RBP.i, align 8
  %459 = add i64 %458, -4
  %460 = add i64 %457, 3
  store i64 %460, i64* %3, align 8
  %461 = inttoptr i64 %459 to i32*
  %462 = load i32, i32* %461, align 4
  %463 = zext i32 %462 to i64
  store i64 %463, i64* %RAX.i931, align 8
  %464 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %464, i64* %RCX.i927, align 8
  %465 = add i64 %464, 72708
  %466 = add i64 %457, 17
  store i64 %466, i64* %3, align 8
  %467 = inttoptr i64 %465 to i32*
  %468 = load i32, i32* %467, align 4
  %469 = sub i32 %462, %468
  %470 = icmp ult i32 %462, %468
  %471 = zext i1 %470 to i8
  store i8 %471, i8* %22, align 1
  %472 = and i32 %469, 255
  %473 = tail call i32 @llvm.ctpop.i32(i32 %472)
  %474 = trunc i32 %473 to i8
  %475 = and i8 %474, 1
  %476 = xor i8 %475, 1
  store i8 %476, i8* %23, align 1
  %477 = xor i32 %468, %462
  %478 = xor i32 %477, %469
  %479 = lshr i32 %478, 4
  %480 = trunc i32 %479 to i8
  %481 = and i8 %480, 1
  store i8 %481, i8* %24, align 1
  %482 = icmp eq i32 %469, 0
  %483 = zext i1 %482 to i8
  store i8 %483, i8* %25, align 1
  %484 = lshr i32 %469, 31
  %485 = trunc i32 %484 to i8
  store i8 %485, i8* %27, align 1
  %486 = lshr i32 %462, 31
  %487 = lshr i32 %468, 31
  %488 = xor i32 %487, %486
  %489 = xor i32 %484, %486
  %490 = add nuw nsw i32 %489, %488
  %491 = icmp eq i32 %490, 2
  %492 = zext i1 %491 to i8
  store i8 %492, i8* %28, align 1
  %493 = icmp ne i8 %485, 0
  %494 = xor i1 %493, %491
  %.v97 = select i1 %494, i64 23, i64 234
  %495 = add i64 %457, %.v97
  store i64 %495, i64* %3, align 8
  br i1 %494, label %block_49d08d, label %block_.L_49d160

block_49d08d:                                     ; preds = %block_.L_49d076
  %496 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %496, i64* %RAX.i931, align 8
  %497 = add i64 %496, 6464
  %498 = add i64 %495, 15
  store i64 %498, i64* %3, align 8
  %499 = inttoptr i64 %497 to i64*
  %500 = load i64, i64* %499, align 8
  store i64 %500, i64* %RAX.i931, align 8
  %501 = add i64 %495, 18
  store i64 %501, i64* %3, align 8
  %502 = inttoptr i64 %500 to i64*
  %503 = load i64, i64* %502, align 8
  store i64 %503, i64* %RAX.i931, align 8
  store i64 %464, i64* %RCX.i927, align 8
  %504 = add i64 %464, 164
  %505 = add i64 %495, 32
  store i64 %505, i64* %3, align 8
  %506 = inttoptr i64 %504 to i32*
  %507 = load i32, i32* %506, align 4
  %508 = zext i32 %507 to i64
  store i64 %508, i64* %RDX.i915, align 8
  %509 = add i64 %458, -8
  %510 = add i64 %495, 35
  store i64 %510, i64* %3, align 8
  %511 = inttoptr i64 %509 to i32*
  %512 = load i32, i32* %511, align 4
  %513 = add i32 %512, %507
  %514 = zext i32 %513 to i64
  store i64 %514, i64* %RDX.i915, align 8
  %515 = icmp ult i32 %513, %507
  %516 = icmp ult i32 %513, %512
  %517 = or i1 %515, %516
  %518 = zext i1 %517 to i8
  store i8 %518, i8* %22, align 1
  %519 = and i32 %513, 255
  %520 = tail call i32 @llvm.ctpop.i32(i32 %519)
  %521 = trunc i32 %520 to i8
  %522 = and i8 %521, 1
  %523 = xor i8 %522, 1
  store i8 %523, i8* %23, align 1
  %524 = xor i32 %512, %507
  %525 = xor i32 %524, %513
  %526 = lshr i32 %525, 4
  %527 = trunc i32 %526 to i8
  %528 = and i8 %527, 1
  store i8 %528, i8* %24, align 1
  %529 = icmp eq i32 %513, 0
  %530 = zext i1 %529 to i8
  store i8 %530, i8* %25, align 1
  %531 = lshr i32 %513, 31
  %532 = trunc i32 %531 to i8
  store i8 %532, i8* %27, align 1
  %533 = lshr i32 %507, 31
  %534 = lshr i32 %512, 31
  %535 = xor i32 %531, %533
  %536 = xor i32 %531, %534
  %537 = add nuw nsw i32 %535, %536
  %538 = icmp eq i32 %537, 2
  %539 = zext i1 %538 to i8
  store i8 %539, i8* %28, align 1
  %540 = sext i32 %513 to i64
  store i64 %540, i64* %RCX.i927, align 8
  %541 = shl nsw i64 %540, 3
  %542 = add i64 %503, %541
  %543 = add i64 %495, 42
  store i64 %543, i64* %3, align 8
  %544 = inttoptr i64 %542 to i64*
  %545 = load i64, i64* %544, align 8
  store i64 %545, i64* %RAX.i931, align 8
  store i64 %464, i64* %RCX.i927, align 8
  %546 = add i64 %464, 160
  %547 = add i64 %495, 56
  store i64 %547, i64* %3, align 8
  %548 = inttoptr i64 %546 to i32*
  %549 = load i32, i32* %548, align 4
  %550 = zext i32 %549 to i64
  store i64 %550, i64* %RDX.i915, align 8
  %551 = add i64 %495, 59
  store i64 %551, i64* %3, align 8
  %552 = load i32, i32* %461, align 4
  %553 = add i32 %552, %549
  %554 = zext i32 %553 to i64
  store i64 %554, i64* %RDX.i915, align 8
  %555 = icmp ult i32 %553, %549
  %556 = icmp ult i32 %553, %552
  %557 = or i1 %555, %556
  %558 = zext i1 %557 to i8
  store i8 %558, i8* %22, align 1
  %559 = and i32 %553, 255
  %560 = tail call i32 @llvm.ctpop.i32(i32 %559)
  %561 = trunc i32 %560 to i8
  %562 = and i8 %561, 1
  %563 = xor i8 %562, 1
  store i8 %563, i8* %23, align 1
  %564 = xor i32 %552, %549
  %565 = xor i32 %564, %553
  %566 = lshr i32 %565, 4
  %567 = trunc i32 %566 to i8
  %568 = and i8 %567, 1
  store i8 %568, i8* %24, align 1
  %569 = icmp eq i32 %553, 0
  %570 = zext i1 %569 to i8
  store i8 %570, i8* %25, align 1
  %571 = lshr i32 %553, 31
  %572 = trunc i32 %571 to i8
  store i8 %572, i8* %27, align 1
  %573 = lshr i32 %549, 31
  %574 = lshr i32 %552, 31
  %575 = xor i32 %571, %573
  %576 = xor i32 %571, %574
  %577 = add nuw nsw i32 %575, %576
  %578 = icmp eq i32 %577, 2
  %579 = zext i1 %578 to i8
  store i8 %579, i8* %28, align 1
  %580 = sext i32 %553 to i64
  store i64 %580, i64* %RCX.i927, align 8
  %581 = shl nsw i64 %580, 1
  %582 = add i64 %545, %581
  %583 = add i64 %495, 66
  store i64 %583, i64* %3, align 8
  %584 = inttoptr i64 %582 to i16*
  %585 = load i16, i16* %584, align 2
  %586 = zext i16 %585 to i64
  store i64 %586, i64* %RDX.i915, align 8
  %587 = load i64, i64* bitcast (%G_0x6d4518_type* @G_0x6d4518 to i64*), align 8
  %588 = add i64 %587, 1032
  store i64 %588, i64* %RAX.i931, align 8
  %589 = icmp ugt i64 %587, -1033
  %590 = zext i1 %589 to i8
  store i8 %590, i8* %22, align 1
  %591 = trunc i64 %588 to i32
  %592 = and i32 %591, 255
  %593 = tail call i32 @llvm.ctpop.i32(i32 %592)
  %594 = trunc i32 %593 to i8
  %595 = and i8 %594, 1
  %596 = xor i8 %595, 1
  store i8 %596, i8* %23, align 1
  %597 = xor i64 %588, %587
  %598 = lshr i64 %597, 4
  %599 = trunc i64 %598 to i8
  %600 = and i8 %599, 1
  store i8 %600, i8* %24, align 1
  %601 = icmp eq i64 %588, 0
  %602 = zext i1 %601 to i8
  store i8 %602, i8* %25, align 1
  %603 = lshr i64 %588, 63
  %604 = trunc i64 %603 to i8
  store i8 %604, i8* %27, align 1
  %605 = lshr i64 %587, 63
  %606 = xor i64 %603, %605
  %607 = add nuw nsw i64 %606, %603
  %608 = icmp eq i64 %607, 2
  %609 = zext i1 %608 to i8
  store i8 %609, i8* %28, align 1
  %610 = load i64, i64* %RBP.i, align 8
  %611 = add i64 %610, -8
  %612 = add i64 %495, 84
  store i64 %612, i64* %3, align 8
  %613 = inttoptr i64 %611 to i32*
  %614 = load i32, i32* %613, align 4
  %615 = sext i32 %614 to i64
  %616 = shl nsw i64 %615, 6
  store i64 %616, i64* %RCX.i927, align 8
  %617 = add i64 %616, %588
  store i64 %617, i64* %RAX.i931, align 8
  %618 = icmp ult i64 %617, %588
  %619 = icmp ult i64 %617, %616
  %620 = or i1 %618, %619
  %621 = zext i1 %620 to i8
  store i8 %621, i8* %22, align 1
  %622 = trunc i64 %617 to i32
  %623 = and i32 %622, 255
  %624 = tail call i32 @llvm.ctpop.i32(i32 %623)
  %625 = trunc i32 %624 to i8
  %626 = and i8 %625, 1
  %627 = xor i8 %626, 1
  store i8 %627, i8* %23, align 1
  %628 = xor i64 %588, %617
  %629 = lshr i64 %628, 4
  %630 = trunc i64 %629 to i8
  %631 = and i8 %630, 1
  store i8 %631, i8* %24, align 1
  %632 = icmp eq i64 %617, 0
  %633 = zext i1 %632 to i8
  store i8 %633, i8* %25, align 1
  %634 = lshr i64 %617, 63
  %635 = trunc i64 %634 to i8
  store i8 %635, i8* %27, align 1
  %636 = lshr i64 %615, 57
  %637 = and i64 %636, 1
  %638 = xor i64 %634, %603
  %639 = xor i64 %634, %637
  %640 = add nuw nsw i64 %638, %639
  %641 = icmp eq i64 %640, 2
  %642 = zext i1 %641 to i8
  store i8 %642, i8* %28, align 1
  %643 = add i64 %610, -4
  %644 = add i64 %495, 95
  store i64 %644, i64* %3, align 8
  %645 = inttoptr i64 %643 to i32*
  %646 = load i32, i32* %645, align 4
  %647 = sext i32 %646 to i64
  store i64 %647, i64* %RCX.i927, align 8
  %648 = shl nsw i64 %647, 2
  %649 = add i64 %648, %617
  %650 = load i32, i32* %EDX.i912, align 4
  %651 = add i64 %495, 98
  store i64 %651, i64* %3, align 8
  %652 = inttoptr i64 %649 to i32*
  store i32 %650, i32* %652, align 4
  %653 = load i64, i64* %3, align 8
  %654 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %654, i64* %RAX.i931, align 8
  %655 = add i64 %654, 6464
  %656 = add i64 %653, 15
  store i64 %656, i64* %3, align 8
  %657 = inttoptr i64 %655 to i64*
  %658 = load i64, i64* %657, align 8
  store i64 %658, i64* %RAX.i931, align 8
  %659 = add i64 %658, 8
  %660 = add i64 %653, 19
  store i64 %660, i64* %3, align 8
  %661 = inttoptr i64 %659 to i64*
  %662 = load i64, i64* %661, align 8
  store i64 %662, i64* %RAX.i931, align 8
  %663 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %663, i64* %RCX.i927, align 8
  %664 = add i64 %663, 164
  %665 = add i64 %653, 33
  store i64 %665, i64* %3, align 8
  %666 = inttoptr i64 %664 to i32*
  %667 = load i32, i32* %666, align 4
  %668 = zext i32 %667 to i64
  store i64 %668, i64* %RDX.i915, align 8
  %669 = load i64, i64* %RBP.i, align 8
  %670 = add i64 %669, -8
  %671 = add i64 %653, 36
  store i64 %671, i64* %3, align 8
  %672 = inttoptr i64 %670 to i32*
  %673 = load i32, i32* %672, align 4
  %674 = add i32 %673, %667
  %675 = zext i32 %674 to i64
  store i64 %675, i64* %RDX.i915, align 8
  %676 = icmp ult i32 %674, %667
  %677 = icmp ult i32 %674, %673
  %678 = or i1 %676, %677
  %679 = zext i1 %678 to i8
  store i8 %679, i8* %22, align 1
  %680 = and i32 %674, 255
  %681 = tail call i32 @llvm.ctpop.i32(i32 %680)
  %682 = trunc i32 %681 to i8
  %683 = and i8 %682, 1
  %684 = xor i8 %683, 1
  store i8 %684, i8* %23, align 1
  %685 = xor i32 %673, %667
  %686 = xor i32 %685, %674
  %687 = lshr i32 %686, 4
  %688 = trunc i32 %687 to i8
  %689 = and i8 %688, 1
  store i8 %689, i8* %24, align 1
  %690 = icmp eq i32 %674, 0
  %691 = zext i1 %690 to i8
  store i8 %691, i8* %25, align 1
  %692 = lshr i32 %674, 31
  %693 = trunc i32 %692 to i8
  store i8 %693, i8* %27, align 1
  %694 = lshr i32 %667, 31
  %695 = lshr i32 %673, 31
  %696 = xor i32 %692, %694
  %697 = xor i32 %692, %695
  %698 = add nuw nsw i32 %696, %697
  %699 = icmp eq i32 %698, 2
  %700 = zext i1 %699 to i8
  store i8 %700, i8* %28, align 1
  %701 = sext i32 %674 to i64
  store i64 %701, i64* %RCX.i927, align 8
  %702 = shl nsw i64 %701, 3
  %703 = add i64 %662, %702
  %704 = add i64 %653, 43
  store i64 %704, i64* %3, align 8
  %705 = inttoptr i64 %703 to i64*
  %706 = load i64, i64* %705, align 8
  store i64 %706, i64* %RAX.i931, align 8
  store i64 %663, i64* %RCX.i927, align 8
  %707 = add i64 %663, 160
  %708 = add i64 %653, 57
  store i64 %708, i64* %3, align 8
  %709 = inttoptr i64 %707 to i32*
  %710 = load i32, i32* %709, align 4
  %711 = zext i32 %710 to i64
  store i64 %711, i64* %RDX.i915, align 8
  %712 = add i64 %669, -4
  %713 = add i64 %653, 60
  store i64 %713, i64* %3, align 8
  %714 = inttoptr i64 %712 to i32*
  %715 = load i32, i32* %714, align 4
  %716 = add i32 %715, %710
  %717 = zext i32 %716 to i64
  store i64 %717, i64* %RDX.i915, align 8
  %718 = icmp ult i32 %716, %710
  %719 = icmp ult i32 %716, %715
  %720 = or i1 %718, %719
  %721 = zext i1 %720 to i8
  store i8 %721, i8* %22, align 1
  %722 = and i32 %716, 255
  %723 = tail call i32 @llvm.ctpop.i32(i32 %722)
  %724 = trunc i32 %723 to i8
  %725 = and i8 %724, 1
  %726 = xor i8 %725, 1
  store i8 %726, i8* %23, align 1
  %727 = xor i32 %715, %710
  %728 = xor i32 %727, %716
  %729 = lshr i32 %728, 4
  %730 = trunc i32 %729 to i8
  %731 = and i8 %730, 1
  store i8 %731, i8* %24, align 1
  %732 = icmp eq i32 %716, 0
  %733 = zext i1 %732 to i8
  store i8 %733, i8* %25, align 1
  %734 = lshr i32 %716, 31
  %735 = trunc i32 %734 to i8
  store i8 %735, i8* %27, align 1
  %736 = lshr i32 %710, 31
  %737 = lshr i32 %715, 31
  %738 = xor i32 %734, %736
  %739 = xor i32 %734, %737
  %740 = add nuw nsw i32 %738, %739
  %741 = icmp eq i32 %740, 2
  %742 = zext i1 %741 to i8
  store i8 %742, i8* %28, align 1
  %743 = sext i32 %716 to i64
  store i64 %743, i64* %RCX.i927, align 8
  %744 = shl nsw i64 %743, 1
  %745 = add i64 %706, %744
  %746 = add i64 %653, 67
  store i64 %746, i64* %3, align 8
  %747 = inttoptr i64 %745 to i16*
  %748 = load i16, i16* %747, align 2
  %749 = zext i16 %748 to i64
  store i64 %749, i64* %RDX.i915, align 8
  %750 = load i64, i64* bitcast (%G_0x6d4518_type* @G_0x6d4518 to i64*), align 8
  %751 = add i64 %750, 2056
  store i64 %751, i64* %RAX.i931, align 8
  %752 = icmp ugt i64 %750, -2057
  %753 = zext i1 %752 to i8
  store i8 %753, i8* %22, align 1
  %754 = trunc i64 %751 to i32
  %755 = and i32 %754, 255
  %756 = tail call i32 @llvm.ctpop.i32(i32 %755)
  %757 = trunc i32 %756 to i8
  %758 = and i8 %757, 1
  %759 = xor i8 %758, 1
  store i8 %759, i8* %23, align 1
  %760 = xor i64 %751, %750
  %761 = lshr i64 %760, 4
  %762 = trunc i64 %761 to i8
  %763 = and i8 %762, 1
  store i8 %763, i8* %24, align 1
  %764 = icmp eq i64 %751, 0
  %765 = zext i1 %764 to i8
  store i8 %765, i8* %25, align 1
  %766 = lshr i64 %751, 63
  %767 = trunc i64 %766 to i8
  store i8 %767, i8* %27, align 1
  %768 = lshr i64 %750, 63
  %769 = xor i64 %766, %768
  %770 = add nuw nsw i64 %769, %766
  %771 = icmp eq i64 %770, 2
  %772 = zext i1 %771 to i8
  store i8 %772, i8* %28, align 1
  %773 = load i64, i64* %RBP.i, align 8
  %774 = add i64 %773, -8
  %775 = add i64 %653, 85
  store i64 %775, i64* %3, align 8
  %776 = inttoptr i64 %774 to i32*
  %777 = load i32, i32* %776, align 4
  %778 = sext i32 %777 to i64
  %779 = shl nsw i64 %778, 6
  store i64 %779, i64* %RCX.i927, align 8
  %780 = add i64 %779, %751
  store i64 %780, i64* %RAX.i931, align 8
  %781 = icmp ult i64 %780, %751
  %782 = icmp ult i64 %780, %779
  %783 = or i1 %781, %782
  %784 = zext i1 %783 to i8
  store i8 %784, i8* %22, align 1
  %785 = trunc i64 %780 to i32
  %786 = and i32 %785, 255
  %787 = tail call i32 @llvm.ctpop.i32(i32 %786)
  %788 = trunc i32 %787 to i8
  %789 = and i8 %788, 1
  %790 = xor i8 %789, 1
  store i8 %790, i8* %23, align 1
  %791 = xor i64 %751, %780
  %792 = lshr i64 %791, 4
  %793 = trunc i64 %792 to i8
  %794 = and i8 %793, 1
  store i8 %794, i8* %24, align 1
  %795 = icmp eq i64 %780, 0
  %796 = zext i1 %795 to i8
  store i8 %796, i8* %25, align 1
  %797 = lshr i64 %780, 63
  %798 = trunc i64 %797 to i8
  store i8 %798, i8* %27, align 1
  %799 = lshr i64 %778, 57
  %800 = and i64 %799, 1
  %801 = xor i64 %797, %766
  %802 = xor i64 %797, %800
  %803 = add nuw nsw i64 %801, %802
  %804 = icmp eq i64 %803, 2
  %805 = zext i1 %804 to i8
  store i8 %805, i8* %28, align 1
  %806 = add i64 %773, -4
  %807 = add i64 %653, 96
  store i64 %807, i64* %3, align 8
  %808 = inttoptr i64 %806 to i32*
  %809 = load i32, i32* %808, align 4
  %810 = sext i32 %809 to i64
  store i64 %810, i64* %RCX.i927, align 8
  %811 = shl nsw i64 %810, 2
  %812 = add i64 %811, %780
  %813 = load i32, i32* %EDX.i912, align 4
  %814 = add i64 %653, 99
  store i64 %814, i64* %3, align 8
  %815 = inttoptr i64 %812 to i32*
  store i32 %813, i32* %815, align 4
  %816 = load i64, i64* %RBP.i, align 8
  %817 = add i64 %816, -4
  %818 = load i64, i64* %3, align 8
  %819 = add i64 %818, 3
  store i64 %819, i64* %3, align 8
  %820 = inttoptr i64 %817 to i32*
  %821 = load i32, i32* %820, align 4
  %822 = add i32 %821, 1
  %823 = zext i32 %822 to i64
  store i64 %823, i64* %RAX.i931, align 8
  %824 = icmp eq i32 %821, -1
  %825 = icmp eq i32 %822, 0
  %826 = or i1 %824, %825
  %827 = zext i1 %826 to i8
  store i8 %827, i8* %22, align 1
  %828 = and i32 %822, 255
  %829 = tail call i32 @llvm.ctpop.i32(i32 %828)
  %830 = trunc i32 %829 to i8
  %831 = and i8 %830, 1
  %832 = xor i8 %831, 1
  store i8 %832, i8* %23, align 1
  %833 = xor i32 %822, %821
  %834 = lshr i32 %833, 4
  %835 = trunc i32 %834 to i8
  %836 = and i8 %835, 1
  store i8 %836, i8* %24, align 1
  %837 = zext i1 %825 to i8
  store i8 %837, i8* %25, align 1
  %838 = lshr i32 %822, 31
  %839 = trunc i32 %838 to i8
  store i8 %839, i8* %27, align 1
  %840 = lshr i32 %821, 31
  %841 = xor i32 %838, %840
  %842 = add nuw nsw i32 %841, %838
  %843 = icmp eq i32 %842, 2
  %844 = zext i1 %843 to i8
  store i8 %844, i8* %28, align 1
  %845 = add i64 %818, 9
  store i64 %845, i64* %3, align 8
  store i32 %822, i32* %820, align 4
  %846 = load i64, i64* %3, align 8
  %847 = add i64 %846, -229
  store i64 %847, i64* %3, align 8
  br label %block_.L_49d076

block_.L_49d160:                                  ; preds = %block_.L_49d076
  %848 = add i64 %458, -8
  %849 = add i64 %495, 8
  store i64 %849, i64* %3, align 8
  %850 = inttoptr i64 %848 to i32*
  %851 = load i32, i32* %850, align 4
  %852 = add i32 %851, 1
  %853 = zext i32 %852 to i64
  store i64 %853, i64* %RAX.i931, align 8
  %854 = icmp eq i32 %851, -1
  %855 = icmp eq i32 %852, 0
  %856 = or i1 %854, %855
  %857 = zext i1 %856 to i8
  store i8 %857, i8* %22, align 1
  %858 = and i32 %852, 255
  %859 = tail call i32 @llvm.ctpop.i32(i32 %858)
  %860 = trunc i32 %859 to i8
  %861 = and i8 %860, 1
  %862 = xor i8 %861, 1
  store i8 %862, i8* %23, align 1
  %863 = xor i32 %852, %851
  %864 = lshr i32 %863, 4
  %865 = trunc i32 %864 to i8
  %866 = and i8 %865, 1
  store i8 %866, i8* %24, align 1
  %867 = zext i1 %855 to i8
  store i8 %867, i8* %25, align 1
  %868 = lshr i32 %852, 31
  %869 = trunc i32 %868 to i8
  store i8 %869, i8* %27, align 1
  %870 = lshr i32 %851, 31
  %871 = xor i32 %868, %870
  %872 = add nuw nsw i32 %871, %868
  %873 = icmp eq i32 %872, 2
  %874 = zext i1 %873 to i8
  store i8 %874, i8* %28, align 1
  %875 = add i64 %495, 14
  store i64 %875, i64* %3, align 8
  store i32 %852, i32* %850, align 4
  %876 = load i64, i64* %3, align 8
  %877 = add i64 %876, -278
  store i64 %877, i64* %3, align 8
  br label %block_.L_49d058

block_.L_49d173:                                  ; preds = %block_.L_49d058
  %878 = add i64 %453, 5
  store i64 %878, i64* %3, align 8
  br label %block_.L_49d178

block_.L_49d178:                                  ; preds = %block_.L_49d173, %block_.L_49d03c
  %879 = phi i64 [ %878, %block_.L_49d173 ], [ %413, %block_.L_49d03c ]
  %880 = phi i64 [ %416, %block_.L_49d173 ], [ %118, %block_.L_49d03c ]
  %881 = add i64 %880, -28
  %882 = add i64 %879, 3
  store i64 %882, i64* %3, align 8
  %883 = inttoptr i64 %881 to i32*
  %884 = load i32, i32* %883, align 4
  %885 = zext i32 %884 to i64
  store i64 %885, i64* %RAX.i931, align 8
  %886 = load i64, i64* bitcast (%G_0x6d4518_type* @G_0x6d4518 to i64*), align 8
  %887 = add i64 %886, 3224
  %888 = add i64 %879, 17
  store i64 %888, i64* %3, align 8
  %889 = inttoptr i64 %887 to i32*
  store i32 %884, i32* %889, align 4
  %890 = load i64, i64* %3, align 8
  %891 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %891, i64* %RCX.i927, align 8
  %892 = add i64 %891, 72380
  %893 = add i64 %890, 14
  store i64 %893, i64* %3, align 8
  %894 = inttoptr i64 %892 to i32*
  %895 = load i32, i32* %894, align 4
  %896 = zext i32 %895 to i64
  store i64 %896, i64* %RAX.i931, align 8
  %897 = load i64, i64* bitcast (%G_0x6d4518_type* @G_0x6d4518 to i64*), align 8
  store i64 %897, i64* %RCX.i927, align 8
  %898 = add i64 %897, 3328
  %899 = add i64 %890, 28
  store i64 %899, i64* %3, align 8
  %900 = inttoptr i64 %898 to i32*
  store i32 %895, i32* %900, align 4
  %901 = load i64, i64* %RBP.i, align 8
  %902 = add i64 %901, -24
  %903 = load i64, i64* %3, align 8
  %904 = add i64 %903, 4
  store i64 %904, i64* %3, align 8
  %905 = inttoptr i64 %902 to i64*
  %906 = load i64, i64* %905, align 8
  store i64 %906, i64* %RCX.i927, align 8
  %907 = add i64 %906, 460
  %908 = add i64 %903, 10
  store i64 %908, i64* %3, align 8
  %909 = inttoptr i64 %907 to i32*
  %910 = load i32, i32* %909, align 4
  %911 = zext i32 %910 to i64
  store i64 %911, i64* %RAX.i931, align 8
  %912 = load i64, i64* bitcast (%G_0x6d4518_type* @G_0x6d4518 to i64*), align 8
  store i64 %912, i64* %RCX.i927, align 8
  %913 = add i64 %912, 3208
  %914 = add i64 %903, 24
  store i64 %914, i64* %3, align 8
  %915 = inttoptr i64 %913 to i32*
  store i32 %910, i32* %915, align 4
  %916 = load i64, i64* %RBP.i, align 8
  %917 = add i64 %916, -24
  %918 = load i64, i64* %3, align 8
  %919 = add i64 %918, 4
  store i64 %919, i64* %3, align 8
  %920 = inttoptr i64 %917 to i64*
  %921 = load i64, i64* %920, align 8
  store i64 %921, i64* %RCX.i927, align 8
  %922 = add i64 %921, 464
  %923 = add i64 %918, 11
  store i64 %923, i64* %3, align 8
  %924 = inttoptr i64 %922 to i64*
  %925 = load i64, i64* %924, align 8
  store i64 %925, i64* %RCX.i927, align 8
  %926 = load i64, i64* bitcast (%G_0x6d4518_type* @G_0x6d4518 to i64*), align 8
  store i64 %926, i64* %RDX.i915, align 8
  %927 = add i64 %926, 3216
  %928 = add i64 %918, 26
  store i64 %928, i64* %3, align 8
  %929 = inttoptr i64 %927 to i64*
  store i64 %925, i64* %929, align 8
  %930 = load i64, i64* %RBP.i, align 8
  %931 = add i64 %930, -24
  %932 = load i64, i64* %3, align 8
  %933 = add i64 %932, 4
  store i64 %933, i64* %3, align 8
  %934 = inttoptr i64 %931 to i64*
  %935 = load i64, i64* %934, align 8
  store i64 %935, i64* %RCX.i927, align 8
  %936 = add i64 %935, 72
  %937 = add i64 %932, 7
  store i64 %937, i64* %3, align 8
  %938 = inttoptr i64 %936 to i32*
  %939 = load i32, i32* %938, align 4
  %940 = zext i32 %939 to i64
  store i64 %940, i64* %RAX.i931, align 8
  %941 = load i64, i64* bitcast (%G_0x6d4518_type* @G_0x6d4518 to i64*), align 8
  store i64 %941, i64* %RCX.i927, align 8
  %942 = add i64 %941, 3096
  %943 = add i64 %932, 21
  store i64 %943, i64* %3, align 8
  %944 = inttoptr i64 %942 to i32*
  store i32 %939, i32* %944, align 4
  %945 = load i64, i64* %RBP.i, align 8
  %946 = add i64 %945, -24
  %947 = load i64, i64* %3, align 8
  %948 = add i64 %947, 4
  store i64 %948, i64* %3, align 8
  %949 = inttoptr i64 %946 to i64*
  %950 = load i64, i64* %949, align 8
  store i64 %950, i64* %RCX.i927, align 8
  %951 = add i64 %950, 572
  %952 = add i64 %947, 10
  store i64 %952, i64* %3, align 8
  %953 = inttoptr i64 %951 to i32*
  %954 = load i32, i32* %953, align 4
  %955 = zext i32 %954 to i64
  store i64 %955, i64* %RAX.i931, align 8
  %956 = load i64, i64* bitcast (%G_0x6d4518_type* @G_0x6d4518 to i64*), align 8
  %957 = add i64 %956, 3336
  %958 = add i64 %947, 24
  store i64 %958, i64* %3, align 8
  %959 = inttoptr i64 %957 to i32*
  store i32 %954, i32* %959, align 4
  %960 = load i64, i64* %3, align 8
  %961 = load i64, i64* bitcast (%G_0x6d4518_type* @G_0x6d4518 to i64*), align 8
  store i64 %961, i64* %RCX.i927, align 8
  %962 = add i64 %961, 3096
  %963 = add i64 %960, 15
  store i64 %963, i64* %3, align 8
  %964 = inttoptr i64 %962 to i32*
  %965 = load i32, i32* %964, align 4
  store i8 0, i8* %22, align 1
  %966 = and i32 %965, 255
  %967 = tail call i32 @llvm.ctpop.i32(i32 %966)
  %968 = trunc i32 %967 to i8
  %969 = and i8 %968, 1
  %970 = xor i8 %969, 1
  store i8 %970, i8* %23, align 1
  store i8 0, i8* %24, align 1
  %971 = icmp eq i32 %965, 0
  %972 = zext i1 %971 to i8
  store i8 %972, i8* %25, align 1
  %973 = lshr i32 %965, 31
  %974 = trunc i32 %973 to i8
  store i8 %974, i8* %27, align 1
  store i8 0, i8* %28, align 1
  %.v103 = select i1 %971, i64 21, i64 56
  %975 = add i64 %960, %.v103
  store i64 %975, i64* %3, align 8
  br i1 %971, label %block_49d219, label %block_.L_49d23c

block_49d219:                                     ; preds = %block_.L_49d178
  %976 = load i64, i64* %RBP.i, align 8
  %977 = add i64 %976, -28
  %978 = add i64 %975, 4
  store i64 %978, i64* %3, align 8
  %979 = inttoptr i64 %977 to i32*
  %980 = load i32, i32* %979, align 4
  store i8 0, i8* %22, align 1
  %981 = and i32 %980, 255
  %982 = tail call i32 @llvm.ctpop.i32(i32 %981)
  %983 = trunc i32 %982 to i8
  %984 = and i8 %983, 1
  %985 = xor i8 %984, 1
  store i8 %985, i8* %23, align 1
  store i8 0, i8* %24, align 1
  %986 = icmp eq i32 %980, 0
  %987 = zext i1 %986 to i8
  store i8 %987, i8* %25, align 1
  %988 = lshr i32 %980, 31
  %989 = trunc i32 %988 to i8
  store i8 %989, i8* %27, align 1
  store i8 0, i8* %28, align 1
  %.v111 = select i1 %986, i64 35, i64 10
  %990 = add i64 %975, %.v111
  store i64 %990, i64* %3, align 8
  br i1 %986, label %block_.L_49d23c, label %block_49d223

block_49d223:                                     ; preds = %block_49d219
  %991 = add i64 %990, 7
  store i64 %991, i64* %3, align 8
  store i32 0, i32* %979, align 4
  %992 = load i64, i64* %3, align 8
  %993 = load i64, i64* bitcast (%G_0x6d4518_type* @G_0x6d4518 to i64*), align 8
  store i64 %993, i64* %RAX.i931, align 8
  %994 = add i64 %993, 3224
  %995 = add i64 %992, 18
  store i64 %995, i64* %3, align 8
  %996 = inttoptr i64 %994 to i32*
  store i32 0, i32* %996, align 4
  %.pre71 = load i64, i64* %3, align 8
  br label %block_.L_49d23c

block_.L_49d23c:                                  ; preds = %block_.L_49d178, %block_49d223, %block_49d219
  %997 = phi i64 [ %.pre71, %block_49d223 ], [ %990, %block_49d219 ], [ %975, %block_.L_49d178 ]
  %998 = load i64, i64* %RBP.i, align 8
  %999 = add i64 %998, -4
  %1000 = add i64 %997, 7
  store i64 %1000, i64* %3, align 8
  %1001 = inttoptr i64 %999 to i32*
  store i32 0, i32* %1001, align 4
  %.pre72 = load i64, i64* %3, align 8
  br label %block_.L_49d243

block_.L_49d243:                                  ; preds = %block_.L_49d322, %block_.L_49d23c
  %1002 = phi i64 [ %1346, %block_.L_49d322 ], [ %.pre72, %block_.L_49d23c ]
  %1003 = load i64, i64* %RBP.i, align 8
  %1004 = add i64 %1003, -4
  %1005 = add i64 %1002, 3
  store i64 %1005, i64* %3, align 8
  %1006 = inttoptr i64 %1004 to i32*
  %1007 = load i32, i32* %1006, align 4
  %1008 = zext i32 %1007 to i64
  store i64 %1008, i64* %RAX.i931, align 8
  %1009 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1009, i64* %RCX.i927, align 8
  %1010 = add i64 %1009, 72692
  %1011 = add i64 %1002, 17
  store i64 %1011, i64* %3, align 8
  %1012 = inttoptr i64 %1010 to i32*
  %1013 = load i32, i32* %1012, align 4
  %1014 = add i32 %1013, 4
  %1015 = zext i32 %1014 to i64
  store i64 %1015, i64* %RDX.i915, align 8
  %1016 = lshr i32 %1014, 31
  %1017 = sub i32 %1007, %1014
  %1018 = icmp ult i32 %1007, %1014
  %1019 = zext i1 %1018 to i8
  store i8 %1019, i8* %22, align 1
  %1020 = and i32 %1017, 255
  %1021 = tail call i32 @llvm.ctpop.i32(i32 %1020)
  %1022 = trunc i32 %1021 to i8
  %1023 = and i8 %1022, 1
  %1024 = xor i8 %1023, 1
  store i8 %1024, i8* %23, align 1
  %1025 = xor i32 %1014, %1007
  %1026 = xor i32 %1025, %1017
  %1027 = lshr i32 %1026, 4
  %1028 = trunc i32 %1027 to i8
  %1029 = and i8 %1028, 1
  store i8 %1029, i8* %24, align 1
  %1030 = icmp eq i32 %1017, 0
  %1031 = zext i1 %1030 to i8
  store i8 %1031, i8* %25, align 1
  %1032 = lshr i32 %1017, 31
  %1033 = trunc i32 %1032 to i8
  store i8 %1033, i8* %27, align 1
  %1034 = lshr i32 %1007, 31
  %1035 = xor i32 %1016, %1034
  %1036 = xor i32 %1032, %1034
  %1037 = add nuw nsw i32 %1036, %1035
  %1038 = icmp eq i32 %1037, 2
  %1039 = zext i1 %1038 to i8
  store i8 %1039, i8* %28, align 1
  %1040 = icmp ne i8 %1033, 0
  %1041 = xor i1 %1040, %1038
  %.v104 = select i1 %1041, i64 28, i64 242
  %1042 = add i64 %1002, %.v104
  store i64 %1042, i64* %3, align 8
  br i1 %1041, label %block_49d25f, label %block_.L_49d335

block_49d25f:                                     ; preds = %block_.L_49d243
  %1043 = add i64 %1003, -8
  %1044 = add i64 %1042, 7
  store i64 %1044, i64* %3, align 8
  %1045 = inttoptr i64 %1043 to i32*
  store i32 0, i32* %1045, align 4
  %.pre85 = load i64, i64* %3, align 8
  br label %block_.L_49d266

block_.L_49d266:                                  ; preds = %block_.L_49d30f, %block_49d25f
  %1046 = phi i64 [ %1316, %block_.L_49d30f ], [ %.pre85, %block_49d25f ]
  %1047 = load i64, i64* %RBP.i, align 8
  %1048 = add i64 %1047, -8
  %1049 = add i64 %1046, 4
  store i64 %1049, i64* %3, align 8
  %1050 = inttoptr i64 %1048 to i32*
  %1051 = load i32, i32* %1050, align 4
  %1052 = add i32 %1051, -4
  %1053 = icmp ult i32 %1051, 4
  %1054 = zext i1 %1053 to i8
  store i8 %1054, i8* %22, align 1
  %1055 = and i32 %1052, 255
  %1056 = tail call i32 @llvm.ctpop.i32(i32 %1055)
  %1057 = trunc i32 %1056 to i8
  %1058 = and i8 %1057, 1
  %1059 = xor i8 %1058, 1
  store i8 %1059, i8* %23, align 1
  %1060 = xor i32 %1052, %1051
  %1061 = lshr i32 %1060, 4
  %1062 = trunc i32 %1061 to i8
  %1063 = and i8 %1062, 1
  store i8 %1063, i8* %24, align 1
  %1064 = icmp eq i32 %1052, 0
  %1065 = zext i1 %1064 to i8
  store i8 %1065, i8* %25, align 1
  %1066 = lshr i32 %1052, 31
  %1067 = trunc i32 %1066 to i8
  store i8 %1067, i8* %27, align 1
  %1068 = lshr i32 %1051, 31
  %1069 = xor i32 %1066, %1068
  %1070 = add nuw nsw i32 %1069, %1068
  %1071 = icmp eq i32 %1070, 2
  %1072 = zext i1 %1071 to i8
  store i8 %1072, i8* %28, align 1
  %1073 = icmp ne i8 %1067, 0
  %1074 = xor i1 %1073, %1071
  %.v94 = select i1 %1074, i64 10, i64 188
  %1075 = add i64 %1046, %.v94
  store i64 %1075, i64* %3, align 8
  br i1 %1074, label %block_49d270, label %block_.L_49d322

block_49d270:                                     ; preds = %block_.L_49d266
  %1076 = add i64 %1047, -12
  %1077 = add i64 %1075, 7
  store i64 %1077, i64* %3, align 8
  %1078 = inttoptr i64 %1076 to i32*
  store i32 0, i32* %1078, align 4
  %.pre86 = load i64, i64* %3, align 8
  br label %block_.L_49d277

block_.L_49d277:                                  ; preds = %block_.L_49d2fc, %block_49d270
  %1079 = phi i64 [ %1286, %block_.L_49d2fc ], [ %.pre86, %block_49d270 ]
  %1080 = load i64, i64* %RBP.i, align 8
  %1081 = add i64 %1080, -12
  %1082 = add i64 %1079, 4
  store i64 %1082, i64* %3, align 8
  %1083 = inttoptr i64 %1081 to i32*
  %1084 = load i32, i32* %1083, align 4
  %1085 = add i32 %1084, -2
  %1086 = icmp ult i32 %1084, 2
  %1087 = zext i1 %1086 to i8
  store i8 %1087, i8* %22, align 1
  %1088 = and i32 %1085, 255
  %1089 = tail call i32 @llvm.ctpop.i32(i32 %1088)
  %1090 = trunc i32 %1089 to i8
  %1091 = and i8 %1090, 1
  %1092 = xor i8 %1091, 1
  store i8 %1092, i8* %23, align 1
  %1093 = xor i32 %1085, %1084
  %1094 = lshr i32 %1093, 4
  %1095 = trunc i32 %1094 to i8
  %1096 = and i8 %1095, 1
  store i8 %1096, i8* %24, align 1
  %1097 = icmp eq i32 %1085, 0
  %1098 = zext i1 %1097 to i8
  store i8 %1098, i8* %25, align 1
  %1099 = lshr i32 %1085, 31
  %1100 = trunc i32 %1099 to i8
  store i8 %1100, i8* %27, align 1
  %1101 = lshr i32 %1084, 31
  %1102 = xor i32 %1099, %1101
  %1103 = add nuw nsw i32 %1102, %1101
  %1104 = icmp eq i32 %1103, 2
  %1105 = zext i1 %1104 to i8
  store i8 %1105, i8* %28, align 1
  %1106 = icmp ne i8 %1100, 0
  %1107 = xor i1 %1106, %1104
  %.v95 = select i1 %1107, i64 10, i64 152
  %1108 = add i64 %1079, %.v95
  store i64 %1108, i64* %3, align 8
  br i1 %1107, label %block_49d281, label %block_.L_49d30f

block_49d281:                                     ; preds = %block_.L_49d277
  %1109 = add i64 %1080, -16
  %1110 = add i64 %1108, 7
  store i64 %1110, i64* %3, align 8
  %1111 = inttoptr i64 %1109 to i32*
  store i32 0, i32* %1111, align 4
  %.pre87 = load i64, i64* %3, align 8
  br label %block_.L_49d288

block_.L_49d288:                                  ; preds = %block_49d292, %block_49d281
  %1112 = phi i64 [ %1256, %block_49d292 ], [ %.pre87, %block_49d281 ]
  %1113 = load i64, i64* %RBP.i, align 8
  %1114 = add i64 %1113, -16
  %1115 = add i64 %1112, 4
  store i64 %1115, i64* %3, align 8
  %1116 = inttoptr i64 %1114 to i32*
  %1117 = load i32, i32* %1116, align 4
  %1118 = add i32 %1117, -65
  %1119 = icmp ult i32 %1117, 65
  %1120 = zext i1 %1119 to i8
  store i8 %1120, i8* %22, align 1
  %1121 = and i32 %1118, 255
  %1122 = tail call i32 @llvm.ctpop.i32(i32 %1121)
  %1123 = trunc i32 %1122 to i8
  %1124 = and i8 %1123, 1
  %1125 = xor i8 %1124, 1
  store i8 %1125, i8* %23, align 1
  %1126 = xor i32 %1118, %1117
  %1127 = lshr i32 %1126, 4
  %1128 = trunc i32 %1127 to i8
  %1129 = and i8 %1128, 1
  store i8 %1129, i8* %24, align 1
  %1130 = icmp eq i32 %1118, 0
  %1131 = zext i1 %1130 to i8
  store i8 %1131, i8* %25, align 1
  %1132 = lshr i32 %1118, 31
  %1133 = trunc i32 %1132 to i8
  store i8 %1133, i8* %27, align 1
  %1134 = lshr i32 %1117, 31
  %1135 = xor i32 %1132, %1134
  %1136 = add nuw nsw i32 %1135, %1134
  %1137 = icmp eq i32 %1136, 2
  %1138 = zext i1 %1137 to i8
  store i8 %1138, i8* %28, align 1
  %1139 = icmp ne i8 %1133, 0
  %1140 = xor i1 %1139, %1137
  %.v96 = select i1 %1140, i64 10, i64 116
  %1141 = add i64 %1112, %.v96
  store i64 %1141, i64* %3, align 8
  br i1 %1140, label %block_49d292, label %block_.L_49d2fc

block_49d292:                                     ; preds = %block_.L_49d288
  %1142 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1142, i64* %RAX.i931, align 8
  %1143 = add i64 %1142, 14136
  %1144 = add i64 %1141, 15
  store i64 %1144, i64* %3, align 8
  %1145 = inttoptr i64 %1143 to i64*
  %1146 = load i64, i64* %1145, align 8
  store i64 %1146, i64* %RAX.i931, align 8
  %1147 = add i64 %1113, -4
  %1148 = add i64 %1141, 19
  store i64 %1148, i64* %3, align 8
  %1149 = inttoptr i64 %1147 to i32*
  %1150 = load i32, i32* %1149, align 4
  %1151 = sext i32 %1150 to i64
  store i64 %1151, i64* %RCX.i927, align 8
  %1152 = shl nsw i64 %1151, 3
  %1153 = add i64 %1152, %1146
  %1154 = add i64 %1141, 23
  store i64 %1154, i64* %3, align 8
  %1155 = inttoptr i64 %1153 to i64*
  %1156 = load i64, i64* %1155, align 8
  store i64 %1156, i64* %RAX.i931, align 8
  %1157 = add i64 %1113, -8
  %1158 = add i64 %1141, 27
  store i64 %1158, i64* %3, align 8
  %1159 = inttoptr i64 %1157 to i32*
  %1160 = load i32, i32* %1159, align 4
  %1161 = sext i32 %1160 to i64
  store i64 %1161, i64* %RCX.i927, align 8
  %1162 = shl nsw i64 %1161, 3
  %1163 = add i64 %1162, %1156
  %1164 = add i64 %1141, 31
  store i64 %1164, i64* %3, align 8
  %1165 = inttoptr i64 %1163 to i64*
  %1166 = load i64, i64* %1165, align 8
  store i64 %1166, i64* %RAX.i931, align 8
  %1167 = add i64 %1113, -12
  %1168 = add i64 %1141, 35
  store i64 %1168, i64* %3, align 8
  %1169 = inttoptr i64 %1167 to i32*
  %1170 = load i32, i32* %1169, align 4
  %1171 = sext i32 %1170 to i64
  store i64 %1171, i64* %RCX.i927, align 8
  %1172 = shl nsw i64 %1171, 3
  %1173 = add i64 %1172, %1166
  %1174 = add i64 %1141, 39
  store i64 %1174, i64* %3, align 8
  %1175 = inttoptr i64 %1173 to i64*
  %1176 = load i64, i64* %1175, align 8
  store i64 %1176, i64* %RAX.i931, align 8
  %1177 = add i64 %1141, 43
  store i64 %1177, i64* %3, align 8
  %1178 = load i32, i32* %1116, align 4
  %1179 = sext i32 %1178 to i64
  store i64 %1179, i64* %RCX.i927, align 8
  %1180 = shl nsw i64 %1179, 2
  %1181 = add i64 %1180, %1176
  %1182 = add i64 %1141, 46
  store i64 %1182, i64* %3, align 8
  %1183 = inttoptr i64 %1181 to i32*
  %1184 = load i32, i32* %1183, align 4
  %1185 = zext i32 %1184 to i64
  store i64 %1185, i64* %RDX.i915, align 8
  %1186 = load i64, i64* bitcast (%G_0x6d4518_type* @G_0x6d4518 to i64*), align 8
  store i64 %1186, i64* %RAX.i931, align 8
  %1187 = add i64 %1186, 3080
  %1188 = add i64 %1141, 61
  store i64 %1188, i64* %3, align 8
  %1189 = inttoptr i64 %1187 to i64*
  %1190 = load i64, i64* %1189, align 8
  store i64 %1190, i64* %RAX.i931, align 8
  %1191 = add i64 %1141, 65
  store i64 %1191, i64* %3, align 8
  %1192 = load i32, i32* %1149, align 4
  %1193 = sext i32 %1192 to i64
  store i64 %1193, i64* %RCX.i927, align 8
  %1194 = shl nsw i64 %1193, 3
  %1195 = add i64 %1194, %1190
  %1196 = add i64 %1141, 69
  store i64 %1196, i64* %3, align 8
  %1197 = inttoptr i64 %1195 to i64*
  %1198 = load i64, i64* %1197, align 8
  store i64 %1198, i64* %RAX.i931, align 8
  %1199 = add i64 %1141, 73
  store i64 %1199, i64* %3, align 8
  %1200 = load i32, i32* %1159, align 4
  %1201 = sext i32 %1200 to i64
  store i64 %1201, i64* %RCX.i927, align 8
  %1202 = shl nsw i64 %1201, 3
  %1203 = add i64 %1202, %1198
  %1204 = add i64 %1141, 77
  store i64 %1204, i64* %3, align 8
  %1205 = inttoptr i64 %1203 to i64*
  %1206 = load i64, i64* %1205, align 8
  store i64 %1206, i64* %RAX.i931, align 8
  %1207 = add i64 %1141, 81
  store i64 %1207, i64* %3, align 8
  %1208 = load i32, i32* %1169, align 4
  %1209 = sext i32 %1208 to i64
  store i64 %1209, i64* %RCX.i927, align 8
  %1210 = shl nsw i64 %1209, 3
  %1211 = add i64 %1210, %1206
  %1212 = add i64 %1141, 85
  store i64 %1212, i64* %3, align 8
  %1213 = inttoptr i64 %1211 to i64*
  %1214 = load i64, i64* %1213, align 8
  store i64 %1214, i64* %RAX.i931, align 8
  %1215 = load i64, i64* %RBP.i, align 8
  %1216 = add i64 %1215, -16
  %1217 = add i64 %1141, 89
  store i64 %1217, i64* %3, align 8
  %1218 = inttoptr i64 %1216 to i32*
  %1219 = load i32, i32* %1218, align 4
  %1220 = sext i32 %1219 to i64
  store i64 %1220, i64* %RCX.i927, align 8
  %1221 = shl nsw i64 %1220, 2
  %1222 = add i64 %1221, %1214
  %1223 = add i64 %1141, 92
  store i64 %1223, i64* %3, align 8
  %1224 = inttoptr i64 %1222 to i32*
  store i32 %1184, i32* %1224, align 4
  %1225 = load i64, i64* %RBP.i, align 8
  %1226 = add i64 %1225, -16
  %1227 = load i64, i64* %3, align 8
  %1228 = add i64 %1227, 3
  store i64 %1228, i64* %3, align 8
  %1229 = inttoptr i64 %1226 to i32*
  %1230 = load i32, i32* %1229, align 4
  %1231 = add i32 %1230, 1
  %1232 = zext i32 %1231 to i64
  store i64 %1232, i64* %RAX.i931, align 8
  %1233 = icmp eq i32 %1230, -1
  %1234 = icmp eq i32 %1231, 0
  %1235 = or i1 %1233, %1234
  %1236 = zext i1 %1235 to i8
  store i8 %1236, i8* %22, align 1
  %1237 = and i32 %1231, 255
  %1238 = tail call i32 @llvm.ctpop.i32(i32 %1237)
  %1239 = trunc i32 %1238 to i8
  %1240 = and i8 %1239, 1
  %1241 = xor i8 %1240, 1
  store i8 %1241, i8* %23, align 1
  %1242 = xor i32 %1231, %1230
  %1243 = lshr i32 %1242, 4
  %1244 = trunc i32 %1243 to i8
  %1245 = and i8 %1244, 1
  store i8 %1245, i8* %24, align 1
  %1246 = zext i1 %1234 to i8
  store i8 %1246, i8* %25, align 1
  %1247 = lshr i32 %1231, 31
  %1248 = trunc i32 %1247 to i8
  store i8 %1248, i8* %27, align 1
  %1249 = lshr i32 %1230, 31
  %1250 = xor i32 %1247, %1249
  %1251 = add nuw nsw i32 %1250, %1247
  %1252 = icmp eq i32 %1251, 2
  %1253 = zext i1 %1252 to i8
  store i8 %1253, i8* %28, align 1
  %1254 = add i64 %1227, 9
  store i64 %1254, i64* %3, align 8
  store i32 %1231, i32* %1229, align 4
  %1255 = load i64, i64* %3, align 8
  %1256 = add i64 %1255, -111
  store i64 %1256, i64* %3, align 8
  br label %block_.L_49d288

block_.L_49d2fc:                                  ; preds = %block_.L_49d288
  %1257 = add i64 %1113, -12
  %1258 = add i64 %1141, 8
  store i64 %1258, i64* %3, align 8
  %1259 = inttoptr i64 %1257 to i32*
  %1260 = load i32, i32* %1259, align 4
  %1261 = add i32 %1260, 1
  %1262 = zext i32 %1261 to i64
  store i64 %1262, i64* %RAX.i931, align 8
  %1263 = icmp eq i32 %1260, -1
  %1264 = icmp eq i32 %1261, 0
  %1265 = or i1 %1263, %1264
  %1266 = zext i1 %1265 to i8
  store i8 %1266, i8* %22, align 1
  %1267 = and i32 %1261, 255
  %1268 = tail call i32 @llvm.ctpop.i32(i32 %1267)
  %1269 = trunc i32 %1268 to i8
  %1270 = and i8 %1269, 1
  %1271 = xor i8 %1270, 1
  store i8 %1271, i8* %23, align 1
  %1272 = xor i32 %1261, %1260
  %1273 = lshr i32 %1272, 4
  %1274 = trunc i32 %1273 to i8
  %1275 = and i8 %1274, 1
  store i8 %1275, i8* %24, align 1
  %1276 = zext i1 %1264 to i8
  store i8 %1276, i8* %25, align 1
  %1277 = lshr i32 %1261, 31
  %1278 = trunc i32 %1277 to i8
  store i8 %1278, i8* %27, align 1
  %1279 = lshr i32 %1260, 31
  %1280 = xor i32 %1277, %1279
  %1281 = add nuw nsw i32 %1280, %1277
  %1282 = icmp eq i32 %1281, 2
  %1283 = zext i1 %1282 to i8
  store i8 %1283, i8* %28, align 1
  %1284 = add i64 %1141, 14
  store i64 %1284, i64* %3, align 8
  store i32 %1261, i32* %1259, align 4
  %1285 = load i64, i64* %3, align 8
  %1286 = add i64 %1285, -147
  store i64 %1286, i64* %3, align 8
  br label %block_.L_49d277

block_.L_49d30f:                                  ; preds = %block_.L_49d277
  %1287 = add i64 %1080, -8
  %1288 = add i64 %1108, 8
  store i64 %1288, i64* %3, align 8
  %1289 = inttoptr i64 %1287 to i32*
  %1290 = load i32, i32* %1289, align 4
  %1291 = add i32 %1290, 1
  %1292 = zext i32 %1291 to i64
  store i64 %1292, i64* %RAX.i931, align 8
  %1293 = icmp eq i32 %1290, -1
  %1294 = icmp eq i32 %1291, 0
  %1295 = or i1 %1293, %1294
  %1296 = zext i1 %1295 to i8
  store i8 %1296, i8* %22, align 1
  %1297 = and i32 %1291, 255
  %1298 = tail call i32 @llvm.ctpop.i32(i32 %1297)
  %1299 = trunc i32 %1298 to i8
  %1300 = and i8 %1299, 1
  %1301 = xor i8 %1300, 1
  store i8 %1301, i8* %23, align 1
  %1302 = xor i32 %1291, %1290
  %1303 = lshr i32 %1302, 4
  %1304 = trunc i32 %1303 to i8
  %1305 = and i8 %1304, 1
  store i8 %1305, i8* %24, align 1
  %1306 = zext i1 %1294 to i8
  store i8 %1306, i8* %25, align 1
  %1307 = lshr i32 %1291, 31
  %1308 = trunc i32 %1307 to i8
  store i8 %1308, i8* %27, align 1
  %1309 = lshr i32 %1290, 31
  %1310 = xor i32 %1307, %1309
  %1311 = add nuw nsw i32 %1310, %1307
  %1312 = icmp eq i32 %1311, 2
  %1313 = zext i1 %1312 to i8
  store i8 %1313, i8* %28, align 1
  %1314 = add i64 %1108, 14
  store i64 %1314, i64* %3, align 8
  store i32 %1291, i32* %1289, align 4
  %1315 = load i64, i64* %3, align 8
  %1316 = add i64 %1315, -183
  store i64 %1316, i64* %3, align 8
  br label %block_.L_49d266

block_.L_49d322:                                  ; preds = %block_.L_49d266
  %1317 = add i64 %1047, -4
  %1318 = add i64 %1075, 8
  store i64 %1318, i64* %3, align 8
  %1319 = inttoptr i64 %1317 to i32*
  %1320 = load i32, i32* %1319, align 4
  %1321 = add i32 %1320, 1
  %1322 = zext i32 %1321 to i64
  store i64 %1322, i64* %RAX.i931, align 8
  %1323 = icmp eq i32 %1320, -1
  %1324 = icmp eq i32 %1321, 0
  %1325 = or i1 %1323, %1324
  %1326 = zext i1 %1325 to i8
  store i8 %1326, i8* %22, align 1
  %1327 = and i32 %1321, 255
  %1328 = tail call i32 @llvm.ctpop.i32(i32 %1327)
  %1329 = trunc i32 %1328 to i8
  %1330 = and i8 %1329, 1
  %1331 = xor i8 %1330, 1
  store i8 %1331, i8* %23, align 1
  %1332 = xor i32 %1321, %1320
  %1333 = lshr i32 %1332, 4
  %1334 = trunc i32 %1333 to i8
  %1335 = and i8 %1334, 1
  store i8 %1335, i8* %24, align 1
  %1336 = zext i1 %1324 to i8
  store i8 %1336, i8* %25, align 1
  %1337 = lshr i32 %1321, 31
  %1338 = trunc i32 %1337 to i8
  store i8 %1338, i8* %27, align 1
  %1339 = lshr i32 %1320, 31
  %1340 = xor i32 %1337, %1339
  %1341 = add nuw nsw i32 %1340, %1337
  %1342 = icmp eq i32 %1341, 2
  %1343 = zext i1 %1342 to i8
  store i8 %1343, i8* %28, align 1
  %1344 = add i64 %1075, 14
  store i64 %1344, i64* %3, align 8
  store i32 %1321, i32* %1319, align 4
  %1345 = load i64, i64* %3, align 8
  %1346 = add i64 %1345, -237
  store i64 %1346, i64* %3, align 8
  br label %block_.L_49d243

block_.L_49d335:                                  ; preds = %block_.L_49d243
  %1347 = add i64 %1042, 7
  store i64 %1347, i64* %3, align 8
  store i32 0, i32* %1006, align 4
  %.pre73 = load i64, i64* %3, align 8
  br label %block_.L_49d33c

block_.L_49d33c:                                  ; preds = %block_.L_49d3d5, %block_.L_49d335
  %1348 = phi i64 [ %1598, %block_.L_49d3d5 ], [ %.pre73, %block_.L_49d335 ]
  %1349 = load i64, i64* %RBP.i, align 8
  %1350 = add i64 %1349, -4
  %1351 = add i64 %1348, 4
  store i64 %1351, i64* %3, align 8
  %1352 = inttoptr i64 %1350 to i32*
  %1353 = load i32, i32* %1352, align 4
  %1354 = add i32 %1353, -3
  %1355 = icmp ult i32 %1353, 3
  %1356 = zext i1 %1355 to i8
  store i8 %1356, i8* %22, align 1
  %1357 = and i32 %1354, 255
  %1358 = tail call i32 @llvm.ctpop.i32(i32 %1357)
  %1359 = trunc i32 %1358 to i8
  %1360 = and i8 %1359, 1
  %1361 = xor i8 %1360, 1
  store i8 %1361, i8* %23, align 1
  %1362 = xor i32 %1354, %1353
  %1363 = lshr i32 %1362, 4
  %1364 = trunc i32 %1363 to i8
  %1365 = and i8 %1364, 1
  store i8 %1365, i8* %24, align 1
  %1366 = icmp eq i32 %1354, 0
  %1367 = zext i1 %1366 to i8
  store i8 %1367, i8* %25, align 1
  %1368 = lshr i32 %1354, 31
  %1369 = trunc i32 %1368 to i8
  store i8 %1369, i8* %27, align 1
  %1370 = lshr i32 %1353, 31
  %1371 = xor i32 %1368, %1370
  %1372 = add nuw nsw i32 %1371, %1370
  %1373 = icmp eq i32 %1372, 2
  %1374 = zext i1 %1373 to i8
  store i8 %1374, i8* %28, align 1
  %1375 = icmp ne i8 %1369, 0
  %1376 = xor i1 %1375, %1373
  %.v105 = select i1 %1376, i64 10, i64 172
  %1377 = add i64 %1348, %.v105
  store i64 %1377, i64* %3, align 8
  br i1 %1376, label %block_49d346, label %block_.L_49d3e8

block_49d346:                                     ; preds = %block_.L_49d33c
  %1378 = add i64 %1349, -12
  %1379 = add i64 %1377, 7
  store i64 %1379, i64* %3, align 8
  %1380 = inttoptr i64 %1378 to i32*
  store i32 0, i32* %1380, align 4
  %.pre83 = load i64, i64* %3, align 8
  br label %block_.L_49d34d

block_.L_49d34d:                                  ; preds = %block_.L_49d3c2, %block_49d346
  %1381 = phi i64 [ %1568, %block_.L_49d3c2 ], [ %.pre83, %block_49d346 ]
  %1382 = load i64, i64* %RBP.i, align 8
  %1383 = add i64 %1382, -12
  %1384 = add i64 %1381, 4
  store i64 %1384, i64* %3, align 8
  %1385 = inttoptr i64 %1383 to i32*
  %1386 = load i32, i32* %1385, align 4
  %1387 = add i32 %1386, -2
  %1388 = icmp ult i32 %1386, 2
  %1389 = zext i1 %1388 to i8
  store i8 %1389, i8* %22, align 1
  %1390 = and i32 %1387, 255
  %1391 = tail call i32 @llvm.ctpop.i32(i32 %1390)
  %1392 = trunc i32 %1391 to i8
  %1393 = and i8 %1392, 1
  %1394 = xor i8 %1393, 1
  store i8 %1394, i8* %23, align 1
  %1395 = xor i32 %1387, %1386
  %1396 = lshr i32 %1395, 4
  %1397 = trunc i32 %1396 to i8
  %1398 = and i8 %1397, 1
  store i8 %1398, i8* %24, align 1
  %1399 = icmp eq i32 %1387, 0
  %1400 = zext i1 %1399 to i8
  store i8 %1400, i8* %25, align 1
  %1401 = lshr i32 %1387, 31
  %1402 = trunc i32 %1401 to i8
  store i8 %1402, i8* %27, align 1
  %1403 = lshr i32 %1386, 31
  %1404 = xor i32 %1401, %1403
  %1405 = add nuw nsw i32 %1404, %1403
  %1406 = icmp eq i32 %1405, 2
  %1407 = zext i1 %1406 to i8
  store i8 %1407, i8* %28, align 1
  %1408 = icmp ne i8 %1402, 0
  %1409 = xor i1 %1408, %1406
  %.v92 = select i1 %1409, i64 10, i64 136
  %1410 = add i64 %1381, %.v92
  store i64 %1410, i64* %3, align 8
  br i1 %1409, label %block_49d357, label %block_.L_49d3d5

block_49d357:                                     ; preds = %block_.L_49d34d
  %1411 = add i64 %1382, -16
  %1412 = add i64 %1410, 7
  store i64 %1412, i64* %3, align 8
  %1413 = inttoptr i64 %1411 to i32*
  store i32 0, i32* %1413, align 4
  %.pre84 = load i64, i64* %3, align 8
  br label %block_.L_49d35e

block_.L_49d35e:                                  ; preds = %block_49d368, %block_49d357
  %1414 = phi i64 [ %1538, %block_49d368 ], [ %.pre84, %block_49d357 ]
  %1415 = load i64, i64* %RBP.i, align 8
  %1416 = add i64 %1415, -16
  %1417 = add i64 %1414, 4
  store i64 %1417, i64* %3, align 8
  %1418 = inttoptr i64 %1416 to i32*
  %1419 = load i32, i32* %1418, align 4
  %1420 = add i32 %1419, -18
  %1421 = icmp ult i32 %1419, 18
  %1422 = zext i1 %1421 to i8
  store i8 %1422, i8* %22, align 1
  %1423 = and i32 %1420, 255
  %1424 = tail call i32 @llvm.ctpop.i32(i32 %1423)
  %1425 = trunc i32 %1424 to i8
  %1426 = and i8 %1425, 1
  %1427 = xor i8 %1426, 1
  store i8 %1427, i8* %23, align 1
  %1428 = xor i32 %1419, 16
  %1429 = xor i32 %1428, %1420
  %1430 = lshr i32 %1429, 4
  %1431 = trunc i32 %1430 to i8
  %1432 = and i8 %1431, 1
  store i8 %1432, i8* %24, align 1
  %1433 = icmp eq i32 %1420, 0
  %1434 = zext i1 %1433 to i8
  store i8 %1434, i8* %25, align 1
  %1435 = lshr i32 %1420, 31
  %1436 = trunc i32 %1435 to i8
  store i8 %1436, i8* %27, align 1
  %1437 = lshr i32 %1419, 31
  %1438 = xor i32 %1435, %1437
  %1439 = add nuw nsw i32 %1438, %1437
  %1440 = icmp eq i32 %1439, 2
  %1441 = zext i1 %1440 to i8
  store i8 %1441, i8* %28, align 1
  %1442 = icmp ne i8 %1436, 0
  %1443 = xor i1 %1442, %1440
  %.v93 = select i1 %1443, i64 10, i64 100
  %1444 = add i64 %1414, %.v93
  store i64 %1444, i64* %3, align 8
  br i1 %1443, label %block_49d368, label %block_.L_49d3c2

block_49d368:                                     ; preds = %block_.L_49d35e
  %1445 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1445, i64* %RAX.i931, align 8
  %1446 = add i64 %1445, 14144
  %1447 = add i64 %1444, 15
  store i64 %1447, i64* %3, align 8
  %1448 = inttoptr i64 %1446 to i64*
  %1449 = load i64, i64* %1448, align 8
  store i64 %1449, i64* %RAX.i931, align 8
  %1450 = add i64 %1415, -4
  %1451 = add i64 %1444, 19
  store i64 %1451, i64* %3, align 8
  %1452 = inttoptr i64 %1450 to i32*
  %1453 = load i32, i32* %1452, align 4
  %1454 = sext i32 %1453 to i64
  store i64 %1454, i64* %RCX.i927, align 8
  %1455 = shl nsw i64 %1454, 3
  %1456 = add i64 %1455, %1449
  %1457 = add i64 %1444, 23
  store i64 %1457, i64* %3, align 8
  %1458 = inttoptr i64 %1456 to i64*
  %1459 = load i64, i64* %1458, align 8
  store i64 %1459, i64* %RAX.i931, align 8
  %1460 = add i64 %1415, -12
  %1461 = add i64 %1444, 27
  store i64 %1461, i64* %3, align 8
  %1462 = inttoptr i64 %1460 to i32*
  %1463 = load i32, i32* %1462, align 4
  %1464 = sext i32 %1463 to i64
  store i64 %1464, i64* %RCX.i927, align 8
  %1465 = shl nsw i64 %1464, 3
  %1466 = add i64 %1465, %1459
  %1467 = add i64 %1444, 31
  store i64 %1467, i64* %3, align 8
  %1468 = inttoptr i64 %1466 to i64*
  %1469 = load i64, i64* %1468, align 8
  store i64 %1469, i64* %RAX.i931, align 8
  %1470 = add i64 %1444, 35
  store i64 %1470, i64* %3, align 8
  %1471 = load i32, i32* %1418, align 4
  %1472 = sext i32 %1471 to i64
  store i64 %1472, i64* %RCX.i927, align 8
  %1473 = shl nsw i64 %1472, 2
  %1474 = add i64 %1473, %1469
  %1475 = add i64 %1444, 38
  store i64 %1475, i64* %3, align 8
  %1476 = inttoptr i64 %1474 to i32*
  %1477 = load i32, i32* %1476, align 4
  %1478 = zext i32 %1477 to i64
  store i64 %1478, i64* %RDX.i915, align 8
  %1479 = load i64, i64* bitcast (%G_0x6d4518_type* @G_0x6d4518 to i64*), align 8
  store i64 %1479, i64* %RAX.i931, align 8
  %1480 = add i64 %1479, 3088
  %1481 = add i64 %1444, 53
  store i64 %1481, i64* %3, align 8
  %1482 = inttoptr i64 %1480 to i64*
  %1483 = load i64, i64* %1482, align 8
  store i64 %1483, i64* %RAX.i931, align 8
  %1484 = add i64 %1444, 57
  store i64 %1484, i64* %3, align 8
  %1485 = load i32, i32* %1452, align 4
  %1486 = sext i32 %1485 to i64
  store i64 %1486, i64* %RCX.i927, align 8
  %1487 = shl nsw i64 %1486, 3
  %1488 = add i64 %1487, %1483
  %1489 = add i64 %1444, 61
  store i64 %1489, i64* %3, align 8
  %1490 = inttoptr i64 %1488 to i64*
  %1491 = load i64, i64* %1490, align 8
  store i64 %1491, i64* %RAX.i931, align 8
  %1492 = add i64 %1444, 65
  store i64 %1492, i64* %3, align 8
  %1493 = load i32, i32* %1462, align 4
  %1494 = sext i32 %1493 to i64
  store i64 %1494, i64* %RCX.i927, align 8
  %1495 = shl nsw i64 %1494, 3
  %1496 = add i64 %1495, %1491
  %1497 = add i64 %1444, 69
  store i64 %1497, i64* %3, align 8
  %1498 = inttoptr i64 %1496 to i64*
  %1499 = load i64, i64* %1498, align 8
  store i64 %1499, i64* %RAX.i931, align 8
  %1500 = add i64 %1444, 73
  store i64 %1500, i64* %3, align 8
  %1501 = load i32, i32* %1418, align 4
  %1502 = sext i32 %1501 to i64
  store i64 %1502, i64* %RCX.i927, align 8
  %1503 = shl nsw i64 %1502, 2
  %1504 = add i64 %1503, %1499
  %1505 = add i64 %1444, 76
  store i64 %1505, i64* %3, align 8
  %1506 = inttoptr i64 %1504 to i32*
  store i32 %1477, i32* %1506, align 4
  %1507 = load i64, i64* %RBP.i, align 8
  %1508 = add i64 %1507, -16
  %1509 = load i64, i64* %3, align 8
  %1510 = add i64 %1509, 3
  store i64 %1510, i64* %3, align 8
  %1511 = inttoptr i64 %1508 to i32*
  %1512 = load i32, i32* %1511, align 4
  %1513 = add i32 %1512, 1
  %1514 = zext i32 %1513 to i64
  store i64 %1514, i64* %RAX.i931, align 8
  %1515 = icmp eq i32 %1512, -1
  %1516 = icmp eq i32 %1513, 0
  %1517 = or i1 %1515, %1516
  %1518 = zext i1 %1517 to i8
  store i8 %1518, i8* %22, align 1
  %1519 = and i32 %1513, 255
  %1520 = tail call i32 @llvm.ctpop.i32(i32 %1519)
  %1521 = trunc i32 %1520 to i8
  %1522 = and i8 %1521, 1
  %1523 = xor i8 %1522, 1
  store i8 %1523, i8* %23, align 1
  %1524 = xor i32 %1513, %1512
  %1525 = lshr i32 %1524, 4
  %1526 = trunc i32 %1525 to i8
  %1527 = and i8 %1526, 1
  store i8 %1527, i8* %24, align 1
  %1528 = zext i1 %1516 to i8
  store i8 %1528, i8* %25, align 1
  %1529 = lshr i32 %1513, 31
  %1530 = trunc i32 %1529 to i8
  store i8 %1530, i8* %27, align 1
  %1531 = lshr i32 %1512, 31
  %1532 = xor i32 %1529, %1531
  %1533 = add nuw nsw i32 %1532, %1529
  %1534 = icmp eq i32 %1533, 2
  %1535 = zext i1 %1534 to i8
  store i8 %1535, i8* %28, align 1
  %1536 = add i64 %1509, 9
  store i64 %1536, i64* %3, align 8
  store i32 %1513, i32* %1511, align 4
  %1537 = load i64, i64* %3, align 8
  %1538 = add i64 %1537, -95
  store i64 %1538, i64* %3, align 8
  br label %block_.L_49d35e

block_.L_49d3c2:                                  ; preds = %block_.L_49d35e
  %1539 = add i64 %1415, -12
  %1540 = add i64 %1444, 8
  store i64 %1540, i64* %3, align 8
  %1541 = inttoptr i64 %1539 to i32*
  %1542 = load i32, i32* %1541, align 4
  %1543 = add i32 %1542, 1
  %1544 = zext i32 %1543 to i64
  store i64 %1544, i64* %RAX.i931, align 8
  %1545 = icmp eq i32 %1542, -1
  %1546 = icmp eq i32 %1543, 0
  %1547 = or i1 %1545, %1546
  %1548 = zext i1 %1547 to i8
  store i8 %1548, i8* %22, align 1
  %1549 = and i32 %1543, 255
  %1550 = tail call i32 @llvm.ctpop.i32(i32 %1549)
  %1551 = trunc i32 %1550 to i8
  %1552 = and i8 %1551, 1
  %1553 = xor i8 %1552, 1
  store i8 %1553, i8* %23, align 1
  %1554 = xor i32 %1543, %1542
  %1555 = lshr i32 %1554, 4
  %1556 = trunc i32 %1555 to i8
  %1557 = and i8 %1556, 1
  store i8 %1557, i8* %24, align 1
  %1558 = zext i1 %1546 to i8
  store i8 %1558, i8* %25, align 1
  %1559 = lshr i32 %1543, 31
  %1560 = trunc i32 %1559 to i8
  store i8 %1560, i8* %27, align 1
  %1561 = lshr i32 %1542, 31
  %1562 = xor i32 %1559, %1561
  %1563 = add nuw nsw i32 %1562, %1559
  %1564 = icmp eq i32 %1563, 2
  %1565 = zext i1 %1564 to i8
  store i8 %1565, i8* %28, align 1
  %1566 = add i64 %1444, 14
  store i64 %1566, i64* %3, align 8
  store i32 %1543, i32* %1541, align 4
  %1567 = load i64, i64* %3, align 8
  %1568 = add i64 %1567, -131
  store i64 %1568, i64* %3, align 8
  br label %block_.L_49d34d

block_.L_49d3d5:                                  ; preds = %block_.L_49d34d
  %1569 = add i64 %1382, -4
  %1570 = add i64 %1410, 8
  store i64 %1570, i64* %3, align 8
  %1571 = inttoptr i64 %1569 to i32*
  %1572 = load i32, i32* %1571, align 4
  %1573 = add i32 %1572, 1
  %1574 = zext i32 %1573 to i64
  store i64 %1574, i64* %RAX.i931, align 8
  %1575 = icmp eq i32 %1572, -1
  %1576 = icmp eq i32 %1573, 0
  %1577 = or i1 %1575, %1576
  %1578 = zext i1 %1577 to i8
  store i8 %1578, i8* %22, align 1
  %1579 = and i32 %1573, 255
  %1580 = tail call i32 @llvm.ctpop.i32(i32 %1579)
  %1581 = trunc i32 %1580 to i8
  %1582 = and i8 %1581, 1
  %1583 = xor i8 %1582, 1
  store i8 %1583, i8* %23, align 1
  %1584 = xor i32 %1573, %1572
  %1585 = lshr i32 %1584, 4
  %1586 = trunc i32 %1585 to i8
  %1587 = and i8 %1586, 1
  store i8 %1587, i8* %24, align 1
  %1588 = zext i1 %1576 to i8
  store i8 %1588, i8* %25, align 1
  %1589 = lshr i32 %1573, 31
  %1590 = trunc i32 %1589 to i8
  store i8 %1590, i8* %27, align 1
  %1591 = lshr i32 %1572, 31
  %1592 = xor i32 %1589, %1591
  %1593 = add nuw nsw i32 %1592, %1589
  %1594 = icmp eq i32 %1593, 2
  %1595 = zext i1 %1594 to i8
  store i8 %1595, i8* %28, align 1
  %1596 = add i64 %1410, 14
  store i64 %1596, i64* %3, align 8
  store i32 %1573, i32* %1571, align 4
  %1597 = load i64, i64* %3, align 8
  %1598 = add i64 %1597, -167
  store i64 %1598, i64* %3, align 8
  br label %block_.L_49d33c

block_.L_49d3e8:                                  ; preds = %block_.L_49d33c
  %1599 = add i64 %1377, 7
  store i64 %1599, i64* %3, align 8
  store i32 0, i32* %1352, align 4
  %.pre74 = load i64, i64* %3, align 8
  br label %block_.L_49d3ef

block_.L_49d3ef:                                  ; preds = %block_49d3f9, %block_.L_49d3e8
  %1600 = phi i64 [ %1711, %block_49d3f9 ], [ %.pre74, %block_.L_49d3e8 ]
  %1601 = load i64, i64* %RBP.i, align 8
  %1602 = add i64 %1601, -4
  %1603 = add i64 %1600, 4
  store i64 %1603, i64* %3, align 8
  %1604 = inttoptr i64 %1602 to i32*
  %1605 = load i32, i32* %1604, align 4
  %1606 = add i32 %1605, -4
  %1607 = icmp ult i32 %1605, 4
  %1608 = zext i1 %1607 to i8
  store i8 %1608, i8* %22, align 1
  %1609 = and i32 %1606, 255
  %1610 = tail call i32 @llvm.ctpop.i32(i32 %1609)
  %1611 = trunc i32 %1610 to i8
  %1612 = and i8 %1611, 1
  %1613 = xor i8 %1612, 1
  store i8 %1613, i8* %23, align 1
  %1614 = xor i32 %1606, %1605
  %1615 = lshr i32 %1614, 4
  %1616 = trunc i32 %1615 to i8
  %1617 = and i8 %1616, 1
  store i8 %1617, i8* %24, align 1
  %1618 = icmp eq i32 %1606, 0
  %1619 = zext i1 %1618 to i8
  store i8 %1619, i8* %25, align 1
  %1620 = lshr i32 %1606, 31
  %1621 = trunc i32 %1620 to i8
  store i8 %1621, i8* %27, align 1
  %1622 = lshr i32 %1605, 31
  %1623 = xor i32 %1620, %1622
  %1624 = add nuw nsw i32 %1623, %1622
  %1625 = icmp eq i32 %1624, 2
  %1626 = zext i1 %1625 to i8
  store i8 %1626, i8* %28, align 1
  %1627 = icmp ne i8 %1621, 0
  %1628 = xor i1 %1627, %1625
  %.v106 = select i1 %1628, i64 10, i64 92
  %1629 = add i64 %1600, %.v106
  store i64 %1629, i64* %3, align 8
  br i1 %1628, label %block_49d3f9, label %block_.L_49d44b

block_49d3f9:                                     ; preds = %block_.L_49d3ef
  %1630 = add i64 %1601, -24
  %1631 = add i64 %1629, 4
  store i64 %1631, i64* %3, align 8
  %1632 = inttoptr i64 %1630 to i64*
  %1633 = load i64, i64* %1632, align 8
  store i64 %1633, i64* %RAX.i931, align 8
  %1634 = add i64 %1629, 8
  store i64 %1634, i64* %3, align 8
  %1635 = load i32, i32* %1604, align 4
  %1636 = sext i32 %1635 to i64
  store i64 %1636, i64* %RCX.i927, align 8
  %1637 = shl nsw i64 %1636, 2
  %1638 = add i64 %1633, 472
  %1639 = add i64 %1638, %1637
  %1640 = add i64 %1629, 15
  store i64 %1640, i64* %3, align 8
  %1641 = inttoptr i64 %1639 to i32*
  %1642 = load i32, i32* %1641, align 4
  %1643 = zext i32 %1642 to i64
  store i64 %1643, i64* %RDX.i915, align 8
  %1644 = load i64, i64* bitcast (%G_0x6d4518_type* @G_0x6d4518 to i64*), align 8
  store i64 %1644, i64* %RAX.i931, align 8
  %1645 = add i64 %1629, 27
  store i64 %1645, i64* %3, align 8
  %1646 = load i32, i32* %1604, align 4
  %1647 = sext i32 %1646 to i64
  store i64 %1647, i64* %RCX.i927, align 8
  %1648 = shl nsw i64 %1647, 2
  %1649 = add i64 %1644, 3104
  %1650 = add i64 %1649, %1648
  %1651 = add i64 %1629, 34
  store i64 %1651, i64* %3, align 8
  %1652 = inttoptr i64 %1650 to i32*
  store i32 %1642, i32* %1652, align 4
  %1653 = load i64, i64* %RBP.i, align 8
  %1654 = add i64 %1653, -24
  %1655 = load i64, i64* %3, align 8
  %1656 = add i64 %1655, 4
  store i64 %1656, i64* %3, align 8
  %1657 = inttoptr i64 %1654 to i64*
  %1658 = load i64, i64* %1657, align 8
  store i64 %1658, i64* %RAX.i931, align 8
  %1659 = add i64 %1653, -4
  %1660 = add i64 %1655, 8
  store i64 %1660, i64* %3, align 8
  %1661 = inttoptr i64 %1659 to i32*
  %1662 = load i32, i32* %1661, align 4
  %1663 = sext i32 %1662 to i64
  store i64 %1663, i64* %RCX.i927, align 8
  %1664 = shl nsw i64 %1663, 2
  %1665 = add i64 %1658, 488
  %1666 = add i64 %1665, %1664
  %1667 = add i64 %1655, 15
  store i64 %1667, i64* %3, align 8
  %1668 = inttoptr i64 %1666 to i32*
  %1669 = load i32, i32* %1668, align 4
  %1670 = zext i32 %1669 to i64
  store i64 %1670, i64* %RDX.i915, align 8
  %1671 = load i64, i64* bitcast (%G_0x6d4518_type* @G_0x6d4518 to i64*), align 8
  store i64 %1671, i64* %RAX.i931, align 8
  %1672 = add i64 %1655, 27
  store i64 %1672, i64* %3, align 8
  %1673 = load i32, i32* %1661, align 4
  %1674 = sext i32 %1673 to i64
  store i64 %1674, i64* %RCX.i927, align 8
  %1675 = shl nsw i64 %1674, 2
  %1676 = add i64 %1671, 3120
  %1677 = add i64 %1676, %1675
  %1678 = add i64 %1655, 34
  store i64 %1678, i64* %3, align 8
  %1679 = inttoptr i64 %1677 to i32*
  store i32 %1669, i32* %1679, align 4
  %1680 = load i64, i64* %RBP.i, align 8
  %1681 = add i64 %1680, -4
  %1682 = load i64, i64* %3, align 8
  %1683 = add i64 %1682, 3
  store i64 %1683, i64* %3, align 8
  %1684 = inttoptr i64 %1681 to i32*
  %1685 = load i32, i32* %1684, align 4
  %1686 = add i32 %1685, 1
  %1687 = zext i32 %1686 to i64
  store i64 %1687, i64* %RAX.i931, align 8
  %1688 = icmp eq i32 %1685, -1
  %1689 = icmp eq i32 %1686, 0
  %1690 = or i1 %1688, %1689
  %1691 = zext i1 %1690 to i8
  store i8 %1691, i8* %22, align 1
  %1692 = and i32 %1686, 255
  %1693 = tail call i32 @llvm.ctpop.i32(i32 %1692)
  %1694 = trunc i32 %1693 to i8
  %1695 = and i8 %1694, 1
  %1696 = xor i8 %1695, 1
  store i8 %1696, i8* %23, align 1
  %1697 = xor i32 %1686, %1685
  %1698 = lshr i32 %1697, 4
  %1699 = trunc i32 %1698 to i8
  %1700 = and i8 %1699, 1
  store i8 %1700, i8* %24, align 1
  %1701 = zext i1 %1689 to i8
  store i8 %1701, i8* %25, align 1
  %1702 = lshr i32 %1686, 31
  %1703 = trunc i32 %1702 to i8
  store i8 %1703, i8* %27, align 1
  %1704 = lshr i32 %1685, 31
  %1705 = xor i32 %1702, %1704
  %1706 = add nuw nsw i32 %1705, %1702
  %1707 = icmp eq i32 %1706, 2
  %1708 = zext i1 %1707 to i8
  store i8 %1708, i8* %28, align 1
  %1709 = add i64 %1682, 9
  store i64 %1709, i64* %3, align 8
  store i32 %1686, i32* %1684, align 4
  %1710 = load i64, i64* %3, align 8
  %1711 = add i64 %1710, -87
  store i64 %1711, i64* %3, align 8
  br label %block_.L_49d3ef

block_.L_49d44b:                                  ; preds = %block_.L_49d3ef
  %1712 = add i64 %1601, -8
  %1713 = add i64 %1629, 7
  store i64 %1713, i64* %3, align 8
  %1714 = inttoptr i64 %1712 to i32*
  store i32 0, i32* %1714, align 4
  %SI.i260 = bitcast %union.anon* %74 to i16*
  %.pre75 = load i64, i64* %3, align 8
  br label %block_.L_49d452

block_.L_49d452:                                  ; preds = %block_.L_49d4de, %block_.L_49d44b
  %1715 = phi i64 [ %1997, %block_.L_49d4de ], [ %.pre75, %block_.L_49d44b ]
  %1716 = load i64, i64* %RBP.i, align 8
  %1717 = add i64 %1716, -8
  %1718 = add i64 %1715, 4
  store i64 %1718, i64* %3, align 8
  %1719 = inttoptr i64 %1717 to i32*
  %1720 = load i32, i32* %1719, align 4
  %1721 = add i32 %1720, -4
  %1722 = icmp ult i32 %1720, 4
  %1723 = zext i1 %1722 to i8
  store i8 %1723, i8* %22, align 1
  %1724 = and i32 %1721, 255
  %1725 = tail call i32 @llvm.ctpop.i32(i32 %1724)
  %1726 = trunc i32 %1725 to i8
  %1727 = and i8 %1726, 1
  %1728 = xor i8 %1727, 1
  store i8 %1728, i8* %23, align 1
  %1729 = xor i32 %1721, %1720
  %1730 = lshr i32 %1729, 4
  %1731 = trunc i32 %1730 to i8
  %1732 = and i8 %1731, 1
  store i8 %1732, i8* %24, align 1
  %1733 = icmp eq i32 %1721, 0
  %1734 = zext i1 %1733 to i8
  store i8 %1734, i8* %25, align 1
  %1735 = lshr i32 %1721, 31
  %1736 = trunc i32 %1735 to i8
  store i8 %1736, i8* %27, align 1
  %1737 = lshr i32 %1720, 31
  %1738 = xor i32 %1735, %1737
  %1739 = add nuw nsw i32 %1738, %1737
  %1740 = icmp eq i32 %1739, 2
  %1741 = zext i1 %1740 to i8
  store i8 %1741, i8* %28, align 1
  %1742 = icmp ne i8 %1736, 0
  %1743 = xor i1 %1742, %1740
  %.v107 = select i1 %1743, i64 10, i64 159
  %1744 = add i64 %1715, %.v107
  store i64 %1744, i64* %3, align 8
  br i1 %1743, label %block_49d45c, label %block_.L_49d4f1

block_49d45c:                                     ; preds = %block_.L_49d452
  %1745 = add i64 %1716, -4
  %1746 = add i64 %1744, 7
  store i64 %1746, i64* %3, align 8
  %1747 = inttoptr i64 %1745 to i32*
  store i32 0, i32* %1747, align 4
  %.pre82 = load i64, i64* %3, align 8
  br label %block_.L_49d463

block_.L_49d463:                                  ; preds = %block_49d46d, %block_49d45c
  %1748 = phi i64 [ %1967, %block_49d46d ], [ %.pre82, %block_49d45c ]
  %1749 = load i64, i64* %RBP.i, align 8
  %1750 = add i64 %1749, -4
  %1751 = add i64 %1748, 4
  store i64 %1751, i64* %3, align 8
  %1752 = inttoptr i64 %1750 to i32*
  %1753 = load i32, i32* %1752, align 4
  %1754 = add i32 %1753, -4
  %1755 = icmp ult i32 %1753, 4
  %1756 = zext i1 %1755 to i8
  store i8 %1756, i8* %22, align 1
  %1757 = and i32 %1754, 255
  %1758 = tail call i32 @llvm.ctpop.i32(i32 %1757)
  %1759 = trunc i32 %1758 to i8
  %1760 = and i8 %1759, 1
  %1761 = xor i8 %1760, 1
  store i8 %1761, i8* %23, align 1
  %1762 = xor i32 %1754, %1753
  %1763 = lshr i32 %1762, 4
  %1764 = trunc i32 %1763 to i8
  %1765 = and i8 %1764, 1
  store i8 %1765, i8* %24, align 1
  %1766 = icmp eq i32 %1754, 0
  %1767 = zext i1 %1766 to i8
  store i8 %1767, i8* %25, align 1
  %1768 = lshr i32 %1754, 31
  %1769 = trunc i32 %1768 to i8
  store i8 %1769, i8* %27, align 1
  %1770 = lshr i32 %1753, 31
  %1771 = xor i32 %1768, %1770
  %1772 = add nuw nsw i32 %1771, %1770
  %1773 = icmp eq i32 %1772, 2
  %1774 = zext i1 %1773 to i8
  store i8 %1774, i8* %28, align 1
  %1775 = icmp ne i8 %1769, 0
  %1776 = xor i1 %1775, %1773
  %.v91 = select i1 %1776, i64 10, i64 123
  %1777 = add i64 %1748, %.v91
  store i64 %1777, i64* %3, align 8
  br i1 %1776, label %block_49d46d, label %block_.L_49d4de

block_49d46d:                                     ; preds = %block_.L_49d463
  %1778 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %1778, i64* %RAX.i931, align 8
  %1779 = add i64 %1778, 6480
  %1780 = add i64 %1777, 15
  store i64 %1780, i64* %3, align 8
  %1781 = inttoptr i64 %1779 to i64*
  %1782 = load i64, i64* %1781, align 8
  store i64 %1782, i64* %RAX.i931, align 8
  %1783 = add i64 %1777, 18
  store i64 %1783, i64* %3, align 8
  %1784 = inttoptr i64 %1782 to i64*
  %1785 = load i64, i64* %1784, align 8
  store i64 %1785, i64* %RAX.i931, align 8
  %1786 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1786, i64* %RCX.i927, align 8
  %1787 = add i64 %1786, 144
  %1788 = add i64 %1777, 32
  store i64 %1788, i64* %3, align 8
  %1789 = inttoptr i64 %1787 to i32*
  %1790 = load i32, i32* %1789, align 4
  %1791 = zext i32 %1790 to i64
  store i64 %1791, i64* %RDX.i915, align 8
  %1792 = add i64 %1777, 35
  store i64 %1792, i64* %3, align 8
  %1793 = load i32, i32* %1752, align 4
  %1794 = add i32 %1793, %1790
  %1795 = zext i32 %1794 to i64
  store i64 %1795, i64* %RDX.i915, align 8
  %1796 = icmp ult i32 %1794, %1790
  %1797 = icmp ult i32 %1794, %1793
  %1798 = or i1 %1796, %1797
  %1799 = zext i1 %1798 to i8
  store i8 %1799, i8* %22, align 1
  %1800 = and i32 %1794, 255
  %1801 = tail call i32 @llvm.ctpop.i32(i32 %1800)
  %1802 = trunc i32 %1801 to i8
  %1803 = and i8 %1802, 1
  %1804 = xor i8 %1803, 1
  store i8 %1804, i8* %23, align 1
  %1805 = xor i32 %1793, %1790
  %1806 = xor i32 %1805, %1794
  %1807 = lshr i32 %1806, 4
  %1808 = trunc i32 %1807 to i8
  %1809 = and i8 %1808, 1
  store i8 %1809, i8* %24, align 1
  %1810 = icmp eq i32 %1794, 0
  %1811 = zext i1 %1810 to i8
  store i8 %1811, i8* %25, align 1
  %1812 = lshr i32 %1794, 31
  %1813 = trunc i32 %1812 to i8
  store i8 %1813, i8* %27, align 1
  %1814 = lshr i32 %1790, 31
  %1815 = lshr i32 %1793, 31
  %1816 = xor i32 %1812, %1814
  %1817 = xor i32 %1812, %1815
  %1818 = add nuw nsw i32 %1816, %1817
  %1819 = icmp eq i32 %1818, 2
  %1820 = zext i1 %1819 to i8
  store i8 %1820, i8* %28, align 1
  %1821 = sext i32 %1794 to i64
  store i64 %1821, i64* %RCX.i927, align 8
  %1822 = shl nsw i64 %1821, 3
  %1823 = add i64 %1785, %1822
  %1824 = add i64 %1777, 42
  store i64 %1824, i64* %3, align 8
  %1825 = inttoptr i64 %1823 to i64*
  %1826 = load i64, i64* %1825, align 8
  store i64 %1826, i64* %RAX.i931, align 8
  store i64 %1786, i64* %RCX.i927, align 8
  %1827 = add i64 %1786, 148
  %1828 = add i64 %1777, 56
  store i64 %1828, i64* %3, align 8
  %1829 = inttoptr i64 %1827 to i32*
  %1830 = load i32, i32* %1829, align 4
  %1831 = zext i32 %1830 to i64
  store i64 %1831, i64* %RDX.i915, align 8
  %1832 = add i64 %1749, -8
  %1833 = add i64 %1777, 59
  store i64 %1833, i64* %3, align 8
  %1834 = inttoptr i64 %1832 to i32*
  %1835 = load i32, i32* %1834, align 4
  %1836 = add i32 %1835, %1830
  %1837 = zext i32 %1836 to i64
  store i64 %1837, i64* %RDX.i915, align 8
  %1838 = icmp ult i32 %1836, %1830
  %1839 = icmp ult i32 %1836, %1835
  %1840 = or i1 %1838, %1839
  %1841 = zext i1 %1840 to i8
  store i8 %1841, i8* %22, align 1
  %1842 = and i32 %1836, 255
  %1843 = tail call i32 @llvm.ctpop.i32(i32 %1842)
  %1844 = trunc i32 %1843 to i8
  %1845 = and i8 %1844, 1
  %1846 = xor i8 %1845, 1
  store i8 %1846, i8* %23, align 1
  %1847 = xor i32 %1835, %1830
  %1848 = xor i32 %1847, %1836
  %1849 = lshr i32 %1848, 4
  %1850 = trunc i32 %1849 to i8
  %1851 = and i8 %1850, 1
  store i8 %1851, i8* %24, align 1
  %1852 = icmp eq i32 %1836, 0
  %1853 = zext i1 %1852 to i8
  store i8 %1853, i8* %25, align 1
  %1854 = lshr i32 %1836, 31
  %1855 = trunc i32 %1854 to i8
  store i8 %1855, i8* %27, align 1
  %1856 = lshr i32 %1830, 31
  %1857 = lshr i32 %1835, 31
  %1858 = xor i32 %1854, %1856
  %1859 = xor i32 %1854, %1857
  %1860 = add nuw nsw i32 %1858, %1859
  %1861 = icmp eq i32 %1860, 2
  %1862 = zext i1 %1861 to i8
  store i8 %1862, i8* %28, align 1
  %1863 = sext i32 %1836 to i64
  store i64 %1863, i64* %RCX.i927, align 8
  %1864 = shl nsw i64 %1863, 1
  %1865 = add i64 %1826, %1864
  %1866 = add i64 %1777, 66
  store i64 %1866, i64* %3, align 8
  %1867 = inttoptr i64 %1865 to i16*
  %1868 = load i16, i16* %1867, align 2
  store i16 %1868, i16* %SI.i260, align 2
  %1869 = load i64, i64* bitcast (%G_0x6d4518_type* @G_0x6d4518 to i64*), align 8
  %1870 = add i64 %1869, 3264
  store i64 %1870, i64* %RAX.i931, align 8
  %1871 = icmp ugt i64 %1869, -3265
  %1872 = zext i1 %1871 to i8
  store i8 %1872, i8* %22, align 1
  %1873 = trunc i64 %1870 to i32
  %1874 = and i32 %1873, 255
  %1875 = tail call i32 @llvm.ctpop.i32(i32 %1874)
  %1876 = trunc i32 %1875 to i8
  %1877 = and i8 %1876, 1
  %1878 = xor i8 %1877, 1
  store i8 %1878, i8* %23, align 1
  %1879 = xor i64 %1870, %1869
  %1880 = lshr i64 %1879, 4
  %1881 = trunc i64 %1880 to i8
  %1882 = and i8 %1881, 1
  store i8 %1882, i8* %24, align 1
  %1883 = icmp eq i64 %1870, 0
  %1884 = zext i1 %1883 to i8
  store i8 %1884, i8* %25, align 1
  %1885 = lshr i64 %1870, 63
  %1886 = trunc i64 %1885 to i8
  store i8 %1886, i8* %27, align 1
  %1887 = lshr i64 %1869, 63
  %1888 = xor i64 %1885, %1887
  %1889 = add nuw nsw i64 %1888, %1885
  %1890 = icmp eq i64 %1889, 2
  %1891 = zext i1 %1890 to i8
  store i8 %1891, i8* %28, align 1
  %1892 = load i64, i64* %RBP.i, align 8
  %1893 = add i64 %1892, -8
  %1894 = add i64 %1777, 84
  store i64 %1894, i64* %3, align 8
  %1895 = inttoptr i64 %1893 to i32*
  %1896 = load i32, i32* %1895, align 4
  %1897 = sext i32 %1896 to i64
  %1898 = shl nsw i64 %1897, 3
  store i64 %1898, i64* %RCX.i927, align 8
  %1899 = add i64 %1898, %1870
  store i64 %1899, i64* %RAX.i931, align 8
  %1900 = icmp ult i64 %1899, %1870
  %1901 = icmp ult i64 %1899, %1898
  %1902 = or i1 %1900, %1901
  %1903 = zext i1 %1902 to i8
  store i8 %1903, i8* %22, align 1
  %1904 = trunc i64 %1899 to i32
  %1905 = and i32 %1904, 255
  %1906 = tail call i32 @llvm.ctpop.i32(i32 %1905)
  %1907 = trunc i32 %1906 to i8
  %1908 = and i8 %1907, 1
  %1909 = xor i8 %1908, 1
  store i8 %1909, i8* %23, align 1
  %1910 = xor i64 %1898, %1870
  %1911 = xor i64 %1910, %1899
  %1912 = lshr i64 %1911, 4
  %1913 = trunc i64 %1912 to i8
  %1914 = and i8 %1913, 1
  store i8 %1914, i8* %24, align 1
  %1915 = icmp eq i64 %1899, 0
  %1916 = zext i1 %1915 to i8
  store i8 %1916, i8* %25, align 1
  %1917 = lshr i64 %1899, 63
  %1918 = trunc i64 %1917 to i8
  store i8 %1918, i8* %27, align 1
  %1919 = lshr i64 %1897, 60
  %1920 = and i64 %1919, 1
  %1921 = xor i64 %1917, %1885
  %1922 = xor i64 %1917, %1920
  %1923 = add nuw nsw i64 %1921, %1922
  %1924 = icmp eq i64 %1923, 2
  %1925 = zext i1 %1924 to i8
  store i8 %1925, i8* %28, align 1
  %1926 = add i64 %1892, -4
  %1927 = add i64 %1777, 95
  store i64 %1927, i64* %3, align 8
  %1928 = inttoptr i64 %1926 to i32*
  %1929 = load i32, i32* %1928, align 4
  %1930 = sext i32 %1929 to i64
  store i64 %1930, i64* %RCX.i927, align 8
  %1931 = shl nsw i64 %1930, 1
  %1932 = add i64 %1931, %1899
  %1933 = load i16, i16* %SI.i260, align 2
  %1934 = add i64 %1777, 99
  store i64 %1934, i64* %3, align 8
  %1935 = inttoptr i64 %1932 to i16*
  store i16 %1933, i16* %1935, align 2
  %1936 = load i64, i64* %RBP.i, align 8
  %1937 = add i64 %1936, -4
  %1938 = load i64, i64* %3, align 8
  %1939 = add i64 %1938, 3
  store i64 %1939, i64* %3, align 8
  %1940 = inttoptr i64 %1937 to i32*
  %1941 = load i32, i32* %1940, align 4
  %1942 = add i32 %1941, 1
  %1943 = zext i32 %1942 to i64
  store i64 %1943, i64* %RAX.i931, align 8
  %1944 = icmp eq i32 %1941, -1
  %1945 = icmp eq i32 %1942, 0
  %1946 = or i1 %1944, %1945
  %1947 = zext i1 %1946 to i8
  store i8 %1947, i8* %22, align 1
  %1948 = and i32 %1942, 255
  %1949 = tail call i32 @llvm.ctpop.i32(i32 %1948)
  %1950 = trunc i32 %1949 to i8
  %1951 = and i8 %1950, 1
  %1952 = xor i8 %1951, 1
  store i8 %1952, i8* %23, align 1
  %1953 = xor i32 %1942, %1941
  %1954 = lshr i32 %1953, 4
  %1955 = trunc i32 %1954 to i8
  %1956 = and i8 %1955, 1
  store i8 %1956, i8* %24, align 1
  %1957 = zext i1 %1945 to i8
  store i8 %1957, i8* %25, align 1
  %1958 = lshr i32 %1942, 31
  %1959 = trunc i32 %1958 to i8
  store i8 %1959, i8* %27, align 1
  %1960 = lshr i32 %1941, 31
  %1961 = xor i32 %1958, %1960
  %1962 = add nuw nsw i32 %1961, %1958
  %1963 = icmp eq i32 %1962, 2
  %1964 = zext i1 %1963 to i8
  store i8 %1964, i8* %28, align 1
  %1965 = add i64 %1938, 9
  store i64 %1965, i64* %3, align 8
  store i32 %1942, i32* %1940, align 4
  %1966 = load i64, i64* %3, align 8
  %1967 = add i64 %1966, -118
  store i64 %1967, i64* %3, align 8
  br label %block_.L_49d463

block_.L_49d4de:                                  ; preds = %block_.L_49d463
  %1968 = add i64 %1749, -8
  %1969 = add i64 %1777, 8
  store i64 %1969, i64* %3, align 8
  %1970 = inttoptr i64 %1968 to i32*
  %1971 = load i32, i32* %1970, align 4
  %1972 = add i32 %1971, 1
  %1973 = zext i32 %1972 to i64
  store i64 %1973, i64* %RAX.i931, align 8
  %1974 = icmp eq i32 %1971, -1
  %1975 = icmp eq i32 %1972, 0
  %1976 = or i1 %1974, %1975
  %1977 = zext i1 %1976 to i8
  store i8 %1977, i8* %22, align 1
  %1978 = and i32 %1972, 255
  %1979 = tail call i32 @llvm.ctpop.i32(i32 %1978)
  %1980 = trunc i32 %1979 to i8
  %1981 = and i8 %1980, 1
  %1982 = xor i8 %1981, 1
  store i8 %1982, i8* %23, align 1
  %1983 = xor i32 %1972, %1971
  %1984 = lshr i32 %1983, 4
  %1985 = trunc i32 %1984 to i8
  %1986 = and i8 %1985, 1
  store i8 %1986, i8* %24, align 1
  %1987 = zext i1 %1975 to i8
  store i8 %1987, i8* %25, align 1
  %1988 = lshr i32 %1972, 31
  %1989 = trunc i32 %1988 to i8
  store i8 %1989, i8* %27, align 1
  %1990 = lshr i32 %1971, 31
  %1991 = xor i32 %1988, %1990
  %1992 = add nuw nsw i32 %1991, %1988
  %1993 = icmp eq i32 %1992, 2
  %1994 = zext i1 %1993 to i8
  store i8 %1994, i8* %28, align 1
  %1995 = add i64 %1777, 14
  store i64 %1995, i64* %3, align 8
  store i32 %1972, i32* %1970, align 4
  %1996 = load i64, i64* %3, align 8
  %1997 = add i64 %1996, -154
  store i64 %1997, i64* %3, align 8
  br label %block_.L_49d452

block_.L_49d4f1:                                  ; preds = %block_.L_49d452
  %1998 = add i64 %1716, -32
  %1999 = add i64 %1744, 4
  store i64 %1999, i64* %3, align 8
  %2000 = inttoptr i64 %1998 to i32*
  %2001 = load i32, i32* %2000, align 4
  store i8 0, i8* %22, align 1
  %2002 = and i32 %2001, 255
  %2003 = tail call i32 @llvm.ctpop.i32(i32 %2002)
  %2004 = trunc i32 %2003 to i8
  %2005 = and i8 %2004, 1
  %2006 = xor i8 %2005, 1
  store i8 %2006, i8* %23, align 1
  store i8 0, i8* %24, align 1
  %2007 = icmp eq i32 %2001, 0
  %2008 = zext i1 %2007 to i8
  store i8 %2008, i8* %25, align 1
  %2009 = lshr i32 %2001, 31
  %2010 = trunc i32 %2009 to i8
  store i8 %2010, i8* %27, align 1
  store i8 0, i8* %28, align 1
  %.v108 = select i1 %2007, i64 205, i64 10
  %2011 = add i64 %1744, %.v108
  store i64 %2011, i64* %3, align 8
  br i1 %2007, label %block_.L_49d5be, label %block_49d4fb

block_49d4fb:                                     ; preds = %block_.L_49d4f1
  %2012 = add i64 %2011, 7
  store i64 %2012, i64* %3, align 8
  store i32 0, i32* %1719, align 4
  %.pre76 = load i64, i64* %3, align 8
  br label %block_.L_49d502

block_.L_49d502:                                  ; preds = %block_.L_49d593, %block_49d4fb
  %2013 = phi i64 [ %2297, %block_.L_49d593 ], [ %.pre76, %block_49d4fb ]
  %2014 = load i64, i64* %RBP.i, align 8
  %2015 = add i64 %2014, -8
  %2016 = add i64 %2013, 4
  store i64 %2016, i64* %3, align 8
  %2017 = inttoptr i64 %2015 to i32*
  %2018 = load i32, i32* %2017, align 4
  %2019 = add i32 %2018, -4
  %2020 = icmp ult i32 %2018, 4
  %2021 = zext i1 %2020 to i8
  store i8 %2021, i8* %22, align 1
  %2022 = and i32 %2019, 255
  %2023 = tail call i32 @llvm.ctpop.i32(i32 %2022)
  %2024 = trunc i32 %2023 to i8
  %2025 = and i8 %2024, 1
  %2026 = xor i8 %2025, 1
  store i8 %2026, i8* %23, align 1
  %2027 = xor i32 %2019, %2018
  %2028 = lshr i32 %2027, 4
  %2029 = trunc i32 %2028 to i8
  %2030 = and i8 %2029, 1
  store i8 %2030, i8* %24, align 1
  %2031 = icmp eq i32 %2019, 0
  %2032 = zext i1 %2031 to i8
  store i8 %2032, i8* %25, align 1
  %2033 = lshr i32 %2019, 31
  %2034 = trunc i32 %2033 to i8
  store i8 %2034, i8* %27, align 1
  %2035 = lshr i32 %2018, 31
  %2036 = xor i32 %2033, %2035
  %2037 = add nuw nsw i32 %2036, %2035
  %2038 = icmp eq i32 %2037, 2
  %2039 = zext i1 %2038 to i8
  store i8 %2039, i8* %28, align 1
  %2040 = icmp ne i8 %2034, 0
  %2041 = xor i1 %2040, %2038
  %.v109 = select i1 %2041, i64 10, i64 164
  %2042 = add i64 %2013, %.v109
  store i64 %2042, i64* %3, align 8
  br i1 %2041, label %block_49d50c, label %block_.L_49d5a6

block_49d50c:                                     ; preds = %block_.L_49d502
  %2043 = add i64 %2014, -4
  %2044 = add i64 %2042, 7
  store i64 %2044, i64* %3, align 8
  %2045 = inttoptr i64 %2043 to i32*
  store i32 0, i32* %2045, align 4
  %.pre77 = load i64, i64* %3, align 8
  br label %block_.L_49d513

block_.L_49d513:                                  ; preds = %block_49d51d, %block_49d50c
  %2046 = phi i64 [ %2267, %block_49d51d ], [ %.pre77, %block_49d50c ]
  %2047 = load i64, i64* %RBP.i, align 8
  %2048 = add i64 %2047, -4
  %2049 = add i64 %2046, 4
  store i64 %2049, i64* %3, align 8
  %2050 = inttoptr i64 %2048 to i32*
  %2051 = load i32, i32* %2050, align 4
  %2052 = add i32 %2051, -4
  %2053 = icmp ult i32 %2051, 4
  %2054 = zext i1 %2053 to i8
  store i8 %2054, i8* %22, align 1
  %2055 = and i32 %2052, 255
  %2056 = tail call i32 @llvm.ctpop.i32(i32 %2055)
  %2057 = trunc i32 %2056 to i8
  %2058 = and i8 %2057, 1
  %2059 = xor i8 %2058, 1
  store i8 %2059, i8* %23, align 1
  %2060 = xor i32 %2052, %2051
  %2061 = lshr i32 %2060, 4
  %2062 = trunc i32 %2061 to i8
  %2063 = and i8 %2062, 1
  store i8 %2063, i8* %24, align 1
  %2064 = icmp eq i32 %2052, 0
  %2065 = zext i1 %2064 to i8
  store i8 %2065, i8* %25, align 1
  %2066 = lshr i32 %2052, 31
  %2067 = trunc i32 %2066 to i8
  store i8 %2067, i8* %27, align 1
  %2068 = lshr i32 %2051, 31
  %2069 = xor i32 %2066, %2068
  %2070 = add nuw nsw i32 %2069, %2068
  %2071 = icmp eq i32 %2070, 2
  %2072 = zext i1 %2071 to i8
  store i8 %2072, i8* %28, align 1
  %2073 = icmp ne i8 %2067, 0
  %2074 = xor i1 %2073, %2071
  %.v90 = select i1 %2074, i64 10, i64 128
  %2075 = add i64 %2046, %.v90
  store i64 %2075, i64* %3, align 8
  br i1 %2074, label %block_49d51d, label %block_.L_49d593

block_49d51d:                                     ; preds = %block_.L_49d513
  %2076 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %2076, i64* %RAX.i931, align 8
  %2077 = add i64 %2076, 6480
  %2078 = add i64 %2075, 15
  store i64 %2078, i64* %3, align 8
  %2079 = inttoptr i64 %2077 to i64*
  %2080 = load i64, i64* %2079, align 8
  store i64 %2080, i64* %RAX.i931, align 8
  %2081 = add i64 %2080, 8
  %2082 = add i64 %2075, 19
  store i64 %2082, i64* %3, align 8
  %2083 = inttoptr i64 %2081 to i64*
  %2084 = load i64, i64* %2083, align 8
  store i64 %2084, i64* %RAX.i931, align 8
  %2085 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %2085, i64* %RCX.i927, align 8
  %2086 = add i64 %2085, 144
  %2087 = add i64 %2075, 33
  store i64 %2087, i64* %3, align 8
  %2088 = inttoptr i64 %2086 to i32*
  %2089 = load i32, i32* %2088, align 4
  %2090 = zext i32 %2089 to i64
  store i64 %2090, i64* %RDX.i915, align 8
  %2091 = add i64 %2075, 36
  store i64 %2091, i64* %3, align 8
  %2092 = load i32, i32* %2050, align 4
  %2093 = add i32 %2092, %2089
  %2094 = zext i32 %2093 to i64
  store i64 %2094, i64* %RDX.i915, align 8
  %2095 = icmp ult i32 %2093, %2089
  %2096 = icmp ult i32 %2093, %2092
  %2097 = or i1 %2095, %2096
  %2098 = zext i1 %2097 to i8
  store i8 %2098, i8* %22, align 1
  %2099 = and i32 %2093, 255
  %2100 = tail call i32 @llvm.ctpop.i32(i32 %2099)
  %2101 = trunc i32 %2100 to i8
  %2102 = and i8 %2101, 1
  %2103 = xor i8 %2102, 1
  store i8 %2103, i8* %23, align 1
  %2104 = xor i32 %2092, %2089
  %2105 = xor i32 %2104, %2093
  %2106 = lshr i32 %2105, 4
  %2107 = trunc i32 %2106 to i8
  %2108 = and i8 %2107, 1
  store i8 %2108, i8* %24, align 1
  %2109 = icmp eq i32 %2093, 0
  %2110 = zext i1 %2109 to i8
  store i8 %2110, i8* %25, align 1
  %2111 = lshr i32 %2093, 31
  %2112 = trunc i32 %2111 to i8
  store i8 %2112, i8* %27, align 1
  %2113 = lshr i32 %2089, 31
  %2114 = lshr i32 %2092, 31
  %2115 = xor i32 %2111, %2113
  %2116 = xor i32 %2111, %2114
  %2117 = add nuw nsw i32 %2115, %2116
  %2118 = icmp eq i32 %2117, 2
  %2119 = zext i1 %2118 to i8
  store i8 %2119, i8* %28, align 1
  %2120 = sext i32 %2093 to i64
  store i64 %2120, i64* %RCX.i927, align 8
  %2121 = shl nsw i64 %2120, 3
  %2122 = add i64 %2084, %2121
  %2123 = add i64 %2075, 43
  store i64 %2123, i64* %3, align 8
  %2124 = inttoptr i64 %2122 to i64*
  %2125 = load i64, i64* %2124, align 8
  store i64 %2125, i64* %RAX.i931, align 8
  store i64 %2085, i64* %RCX.i927, align 8
  %2126 = add i64 %2085, 148
  %2127 = add i64 %2075, 57
  store i64 %2127, i64* %3, align 8
  %2128 = inttoptr i64 %2126 to i32*
  %2129 = load i32, i32* %2128, align 4
  %2130 = zext i32 %2129 to i64
  store i64 %2130, i64* %RDX.i915, align 8
  %2131 = add i64 %2047, -8
  %2132 = add i64 %2075, 60
  store i64 %2132, i64* %3, align 8
  %2133 = inttoptr i64 %2131 to i32*
  %2134 = load i32, i32* %2133, align 4
  %2135 = add i32 %2134, %2129
  %2136 = zext i32 %2135 to i64
  store i64 %2136, i64* %RDX.i915, align 8
  %2137 = icmp ult i32 %2135, %2129
  %2138 = icmp ult i32 %2135, %2134
  %2139 = or i1 %2137, %2138
  %2140 = zext i1 %2139 to i8
  store i8 %2140, i8* %22, align 1
  %2141 = and i32 %2135, 255
  %2142 = tail call i32 @llvm.ctpop.i32(i32 %2141)
  %2143 = trunc i32 %2142 to i8
  %2144 = and i8 %2143, 1
  %2145 = xor i8 %2144, 1
  store i8 %2145, i8* %23, align 1
  %2146 = xor i32 %2134, %2129
  %2147 = xor i32 %2146, %2135
  %2148 = lshr i32 %2147, 4
  %2149 = trunc i32 %2148 to i8
  %2150 = and i8 %2149, 1
  store i8 %2150, i8* %24, align 1
  %2151 = icmp eq i32 %2135, 0
  %2152 = zext i1 %2151 to i8
  store i8 %2152, i8* %25, align 1
  %2153 = lshr i32 %2135, 31
  %2154 = trunc i32 %2153 to i8
  store i8 %2154, i8* %27, align 1
  %2155 = lshr i32 %2129, 31
  %2156 = lshr i32 %2134, 31
  %2157 = xor i32 %2153, %2155
  %2158 = xor i32 %2153, %2156
  %2159 = add nuw nsw i32 %2157, %2158
  %2160 = icmp eq i32 %2159, 2
  %2161 = zext i1 %2160 to i8
  store i8 %2161, i8* %28, align 1
  %2162 = sext i32 %2135 to i64
  store i64 %2162, i64* %RCX.i927, align 8
  %2163 = shl nsw i64 %2162, 1
  %2164 = add i64 %2125, %2163
  %2165 = add i64 %2075, 67
  store i64 %2165, i64* %3, align 8
  %2166 = inttoptr i64 %2164 to i16*
  %2167 = load i16, i16* %2166, align 2
  store i16 %2167, i16* %SI.i260, align 2
  %2168 = load i64, i64* bitcast (%G_0x6d4518_type* @G_0x6d4518 to i64*), align 8
  %2169 = add i64 %2168, 3264
  %2170 = lshr i64 %2169, 63
  %2171 = add i64 %2168, 3296
  store i64 %2171, i64* %RAX.i931, align 8
  %2172 = icmp ugt i64 %2169, -33
  %2173 = zext i1 %2172 to i8
  store i8 %2173, i8* %22, align 1
  %2174 = trunc i64 %2171 to i32
  %2175 = and i32 %2174, 255
  %2176 = tail call i32 @llvm.ctpop.i32(i32 %2175)
  %2177 = trunc i32 %2176 to i8
  %2178 = and i8 %2177, 1
  %2179 = xor i8 %2178, 1
  store i8 %2179, i8* %23, align 1
  %2180 = xor i64 %2171, %2169
  %2181 = lshr i64 %2180, 4
  %2182 = trunc i64 %2181 to i8
  %2183 = and i8 %2182, 1
  store i8 %2183, i8* %24, align 1
  %2184 = icmp eq i64 %2171, 0
  %2185 = zext i1 %2184 to i8
  store i8 %2185, i8* %25, align 1
  %2186 = lshr i64 %2171, 63
  %2187 = trunc i64 %2186 to i8
  store i8 %2187, i8* %27, align 1
  %2188 = xor i64 %2186, %2170
  %2189 = add nuw nsw i64 %2188, %2186
  %2190 = icmp eq i64 %2189, 2
  %2191 = zext i1 %2190 to i8
  store i8 %2191, i8* %28, align 1
  %2192 = load i64, i64* %RBP.i, align 8
  %2193 = add i64 %2192, -8
  %2194 = add i64 %2075, 89
  store i64 %2194, i64* %3, align 8
  %2195 = inttoptr i64 %2193 to i32*
  %2196 = load i32, i32* %2195, align 4
  %2197 = sext i32 %2196 to i64
  %2198 = shl nsw i64 %2197, 3
  store i64 %2198, i64* %RCX.i927, align 8
  %2199 = add i64 %2198, %2171
  store i64 %2199, i64* %RAX.i931, align 8
  %2200 = icmp ult i64 %2199, %2171
  %2201 = icmp ult i64 %2199, %2198
  %2202 = or i1 %2200, %2201
  %2203 = zext i1 %2202 to i8
  store i8 %2203, i8* %22, align 1
  %2204 = trunc i64 %2199 to i32
  %2205 = and i32 %2204, 255
  %2206 = tail call i32 @llvm.ctpop.i32(i32 %2205)
  %2207 = trunc i32 %2206 to i8
  %2208 = and i8 %2207, 1
  %2209 = xor i8 %2208, 1
  store i8 %2209, i8* %23, align 1
  %2210 = xor i64 %2198, %2171
  %2211 = xor i64 %2210, %2199
  %2212 = lshr i64 %2211, 4
  %2213 = trunc i64 %2212 to i8
  %2214 = and i8 %2213, 1
  store i8 %2214, i8* %24, align 1
  %2215 = icmp eq i64 %2199, 0
  %2216 = zext i1 %2215 to i8
  store i8 %2216, i8* %25, align 1
  %2217 = lshr i64 %2199, 63
  %2218 = trunc i64 %2217 to i8
  store i8 %2218, i8* %27, align 1
  %2219 = lshr i64 %2197, 60
  %2220 = and i64 %2219, 1
  %2221 = xor i64 %2217, %2186
  %2222 = xor i64 %2217, %2220
  %2223 = add nuw nsw i64 %2221, %2222
  %2224 = icmp eq i64 %2223, 2
  %2225 = zext i1 %2224 to i8
  store i8 %2225, i8* %28, align 1
  %2226 = add i64 %2192, -4
  %2227 = add i64 %2075, 100
  store i64 %2227, i64* %3, align 8
  %2228 = inttoptr i64 %2226 to i32*
  %2229 = load i32, i32* %2228, align 4
  %2230 = sext i32 %2229 to i64
  store i64 %2230, i64* %RCX.i927, align 8
  %2231 = shl nsw i64 %2230, 1
  %2232 = add i64 %2231, %2199
  %2233 = load i16, i16* %SI.i260, align 2
  %2234 = add i64 %2075, 104
  store i64 %2234, i64* %3, align 8
  %2235 = inttoptr i64 %2232 to i16*
  store i16 %2233, i16* %2235, align 2
  %2236 = load i64, i64* %RBP.i, align 8
  %2237 = add i64 %2236, -4
  %2238 = load i64, i64* %3, align 8
  %2239 = add i64 %2238, 3
  store i64 %2239, i64* %3, align 8
  %2240 = inttoptr i64 %2237 to i32*
  %2241 = load i32, i32* %2240, align 4
  %2242 = add i32 %2241, 1
  %2243 = zext i32 %2242 to i64
  store i64 %2243, i64* %RAX.i931, align 8
  %2244 = icmp eq i32 %2241, -1
  %2245 = icmp eq i32 %2242, 0
  %2246 = or i1 %2244, %2245
  %2247 = zext i1 %2246 to i8
  store i8 %2247, i8* %22, align 1
  %2248 = and i32 %2242, 255
  %2249 = tail call i32 @llvm.ctpop.i32(i32 %2248)
  %2250 = trunc i32 %2249 to i8
  %2251 = and i8 %2250, 1
  %2252 = xor i8 %2251, 1
  store i8 %2252, i8* %23, align 1
  %2253 = xor i32 %2242, %2241
  %2254 = lshr i32 %2253, 4
  %2255 = trunc i32 %2254 to i8
  %2256 = and i8 %2255, 1
  store i8 %2256, i8* %24, align 1
  %2257 = zext i1 %2245 to i8
  store i8 %2257, i8* %25, align 1
  %2258 = lshr i32 %2242, 31
  %2259 = trunc i32 %2258 to i8
  store i8 %2259, i8* %27, align 1
  %2260 = lshr i32 %2241, 31
  %2261 = xor i32 %2258, %2260
  %2262 = add nuw nsw i32 %2261, %2258
  %2263 = icmp eq i32 %2262, 2
  %2264 = zext i1 %2263 to i8
  store i8 %2264, i8* %28, align 1
  %2265 = add i64 %2238, 9
  store i64 %2265, i64* %3, align 8
  store i32 %2242, i32* %2240, align 4
  %2266 = load i64, i64* %3, align 8
  %2267 = add i64 %2266, -123
  store i64 %2267, i64* %3, align 8
  br label %block_.L_49d513

block_.L_49d593:                                  ; preds = %block_.L_49d513
  %2268 = add i64 %2047, -8
  %2269 = add i64 %2075, 8
  store i64 %2269, i64* %3, align 8
  %2270 = inttoptr i64 %2268 to i32*
  %2271 = load i32, i32* %2270, align 4
  %2272 = add i32 %2271, 1
  %2273 = zext i32 %2272 to i64
  store i64 %2273, i64* %RAX.i931, align 8
  %2274 = icmp eq i32 %2271, -1
  %2275 = icmp eq i32 %2272, 0
  %2276 = or i1 %2274, %2275
  %2277 = zext i1 %2276 to i8
  store i8 %2277, i8* %22, align 1
  %2278 = and i32 %2272, 255
  %2279 = tail call i32 @llvm.ctpop.i32(i32 %2278)
  %2280 = trunc i32 %2279 to i8
  %2281 = and i8 %2280, 1
  %2282 = xor i8 %2281, 1
  store i8 %2282, i8* %23, align 1
  %2283 = xor i32 %2272, %2271
  %2284 = lshr i32 %2283, 4
  %2285 = trunc i32 %2284 to i8
  %2286 = and i8 %2285, 1
  store i8 %2286, i8* %24, align 1
  %2287 = zext i1 %2275 to i8
  store i8 %2287, i8* %25, align 1
  %2288 = lshr i32 %2272, 31
  %2289 = trunc i32 %2288 to i8
  store i8 %2289, i8* %27, align 1
  %2290 = lshr i32 %2271, 31
  %2291 = xor i32 %2288, %2290
  %2292 = add nuw nsw i32 %2291, %2288
  %2293 = icmp eq i32 %2292, 2
  %2294 = zext i1 %2293 to i8
  store i8 %2294, i8* %28, align 1
  %2295 = add i64 %2075, 14
  store i64 %2295, i64* %3, align 8
  store i32 %2272, i32* %2270, align 4
  %2296 = load i64, i64* %3, align 8
  %2297 = add i64 %2296, -159
  store i64 %2297, i64* %3, align 8
  br label %block_.L_49d502

block_.L_49d5a6:                                  ; preds = %block_.L_49d502
  %2298 = add i64 %2014, -24
  %2299 = add i64 %2042, 4
  store i64 %2299, i64* %3, align 8
  %2300 = inttoptr i64 %2298 to i64*
  %2301 = load i64, i64* %2300, align 8
  store i64 %2301, i64* %RAX.i931, align 8
  %2302 = add i64 %2301, 580
  %2303 = add i64 %2042, 10
  store i64 %2303, i64* %3, align 8
  %2304 = inttoptr i64 %2302 to i32*
  %2305 = load i32, i32* %2304, align 4
  %2306 = zext i32 %2305 to i64
  store i64 %2306, i64* %RCX.i927, align 8
  %2307 = load i64, i64* bitcast (%G_0x6d4518_type* @G_0x6d4518 to i64*), align 8
  store i64 %2307, i64* %RAX.i931, align 8
  %2308 = add i64 %2307, 3100
  %2309 = add i64 %2042, 24
  store i64 %2309, i64* %3, align 8
  %2310 = inttoptr i64 %2308 to i32*
  store i32 %2305, i32* %2310, align 4
  %.pre78 = load i64, i64* %RBP.i, align 8
  %.pre79 = load i64, i64* %3, align 8
  br label %block_.L_49d5be

block_.L_49d5be:                                  ; preds = %block_.L_49d4f1, %block_.L_49d5a6
  %2311 = phi i64 [ %.pre79, %block_.L_49d5a6 ], [ %2011, %block_.L_49d4f1 ]
  %2312 = phi i64 [ %.pre78, %block_.L_49d5a6 ], [ %1716, %block_.L_49d4f1 ]
  %2313 = add i64 %2312, -12
  %2314 = add i64 %2311, 7
  store i64 %2314, i64* %3, align 8
  %2315 = inttoptr i64 %2313 to i32*
  store i32 0, i32* %2315, align 4
  %2316 = load i64, i64* %3, align 8
  %2317 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %2317, i64* %RAX.i931, align 8
  %2318 = add i64 %2317, 148
  %2319 = add i64 %2316, 14
  store i64 %2319, i64* %3, align 8
  %2320 = inttoptr i64 %2318 to i32*
  %2321 = load i32, i32* %2320, align 4
  %2322 = zext i32 %2321 to i64
  store i64 %2322, i64* %RCX.i927, align 8
  %2323 = load i64, i64* %RBP.i, align 8
  %2324 = add i64 %2323, -8
  %2325 = add i64 %2316, 17
  store i64 %2325, i64* %3, align 8
  %2326 = inttoptr i64 %2324 to i32*
  store i32 %2321, i32* %2326, align 4
  %.pre80 = load i64, i64* %3, align 8
  br label %block_.L_49d5d6

block_.L_49d5d6:                                  ; preds = %block_.L_49d689, %block_.L_49d5be
  %2327 = phi i64 [ %2578, %block_.L_49d689 ], [ %.pre80, %block_.L_49d5be ]
  %2328 = load i64, i64* %RBP.i, align 8
  %2329 = add i64 %2328, -8
  %2330 = add i64 %2327, 3
  store i64 %2330, i64* %3, align 8
  %2331 = inttoptr i64 %2329 to i32*
  %2332 = load i32, i32* %2331, align 4
  %2333 = zext i32 %2332 to i64
  store i64 %2333, i64* %RAX.i931, align 8
  %2334 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %2334, i64* %RCX.i927, align 8
  %2335 = add i64 %2334, 148
  %2336 = add i64 %2327, 17
  store i64 %2336, i64* %3, align 8
  %2337 = inttoptr i64 %2335 to i32*
  %2338 = load i32, i32* %2337, align 4
  %2339 = add i32 %2338, 4
  %2340 = zext i32 %2339 to i64
  store i64 %2340, i64* %RDX.i915, align 8
  %2341 = lshr i32 %2339, 31
  %2342 = sub i32 %2332, %2339
  %2343 = icmp ult i32 %2332, %2339
  %2344 = zext i1 %2343 to i8
  store i8 %2344, i8* %22, align 1
  %2345 = and i32 %2342, 255
  %2346 = tail call i32 @llvm.ctpop.i32(i32 %2345)
  %2347 = trunc i32 %2346 to i8
  %2348 = and i8 %2347, 1
  %2349 = xor i8 %2348, 1
  store i8 %2349, i8* %23, align 1
  %2350 = xor i32 %2339, %2332
  %2351 = xor i32 %2350, %2342
  %2352 = lshr i32 %2351, 4
  %2353 = trunc i32 %2352 to i8
  %2354 = and i8 %2353, 1
  store i8 %2354, i8* %24, align 1
  %2355 = icmp eq i32 %2342, 0
  %2356 = zext i1 %2355 to i8
  store i8 %2356, i8* %25, align 1
  %2357 = lshr i32 %2342, 31
  %2358 = trunc i32 %2357 to i8
  store i8 %2358, i8* %27, align 1
  %2359 = lshr i32 %2332, 31
  %2360 = xor i32 %2341, %2359
  %2361 = xor i32 %2357, %2359
  %2362 = add nuw nsw i32 %2361, %2360
  %2363 = icmp eq i32 %2362, 2
  %2364 = zext i1 %2363 to i8
  store i8 %2364, i8* %28, align 1
  %2365 = icmp ne i8 %2358, 0
  %2366 = xor i1 %2365, %2363
  %.v110 = select i1 %2366, i64 28, i64 198
  %2367 = add i64 %2327, %.v110
  store i64 %2367, i64* %3, align 8
  br i1 %2366, label %block_49d5f2, label %block_.L_49d69c.loopexit

block_49d5f2:                                     ; preds = %block_.L_49d5d6
  store i64 %2334, i64* %RAX.i931, align 8
  %2368 = add i64 %2334, 144
  %2369 = add i64 %2367, 14
  store i64 %2369, i64* %3, align 8
  %2370 = inttoptr i64 %2368 to i32*
  %2371 = load i32, i32* %2370, align 4
  %2372 = zext i32 %2371 to i64
  store i64 %2372, i64* %RCX.i927, align 8
  %2373 = add i64 %2328, -4
  %2374 = add i64 %2367, 17
  store i64 %2374, i64* %3, align 8
  %2375 = inttoptr i64 %2373 to i32*
  store i32 %2371, i32* %2375, align 4
  %.pre81 = load i64, i64* %3, align 8
  br label %block_.L_49d603

block_.L_49d603:                                  ; preds = %block_49d61f, %block_49d5f2
  %2376 = phi i64 [ %2548, %block_49d61f ], [ %.pre81, %block_49d5f2 ]
  %2377 = load i64, i64* %RBP.i, align 8
  %2378 = add i64 %2377, -4
  %2379 = add i64 %2376, 3
  store i64 %2379, i64* %3, align 8
  %2380 = inttoptr i64 %2378 to i32*
  %2381 = load i32, i32* %2380, align 4
  %2382 = zext i32 %2381 to i64
  store i64 %2382, i64* %RAX.i931, align 8
  %2383 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %2383, i64* %RCX.i927, align 8
  %2384 = add i64 %2383, 144
  %2385 = add i64 %2376, 17
  store i64 %2385, i64* %3, align 8
  %2386 = inttoptr i64 %2384 to i32*
  %2387 = load i32, i32* %2386, align 4
  %2388 = add i32 %2387, 4
  %2389 = zext i32 %2388 to i64
  store i64 %2389, i64* %RDX.i915, align 8
  %2390 = lshr i32 %2388, 31
  %2391 = sub i32 %2381, %2388
  %2392 = icmp ult i32 %2381, %2388
  %2393 = zext i1 %2392 to i8
  store i8 %2393, i8* %22, align 1
  %2394 = and i32 %2391, 255
  %2395 = tail call i32 @llvm.ctpop.i32(i32 %2394)
  %2396 = trunc i32 %2395 to i8
  %2397 = and i8 %2396, 1
  %2398 = xor i8 %2397, 1
  store i8 %2398, i8* %23, align 1
  %2399 = xor i32 %2388, %2381
  %2400 = xor i32 %2399, %2391
  %2401 = lshr i32 %2400, 4
  %2402 = trunc i32 %2401 to i8
  %2403 = and i8 %2402, 1
  store i8 %2403, i8* %24, align 1
  %2404 = icmp eq i32 %2391, 0
  %2405 = zext i1 %2404 to i8
  store i8 %2405, i8* %25, align 1
  %2406 = lshr i32 %2391, 31
  %2407 = trunc i32 %2406 to i8
  store i8 %2407, i8* %27, align 1
  %2408 = lshr i32 %2381, 31
  %2409 = xor i32 %2390, %2408
  %2410 = xor i32 %2406, %2408
  %2411 = add nuw nsw i32 %2410, %2409
  %2412 = icmp eq i32 %2411, 2
  %2413 = zext i1 %2412 to i8
  store i8 %2413, i8* %28, align 1
  %2414 = icmp ne i8 %2407, 0
  %2415 = xor i1 %2414, %2412
  %.v = select i1 %2415, i64 28, i64 134
  %2416 = add i64 %2376, %.v
  store i64 %2416, i64* %3, align 8
  br i1 %2415, label %block_49d61f, label %block_.L_49d689

block_49d61f:                                     ; preds = %block_.L_49d603
  %2417 = add i64 %2377, -40
  %2418 = add i64 %2416, 4
  store i64 %2418, i64* %3, align 8
  %2419 = inttoptr i64 %2417 to i64*
  %2420 = load i64, i64* %2419, align 8
  store i64 %2420, i64* %RAX.i931, align 8
  %2421 = add i64 %2416, 8
  store i64 %2421, i64* %3, align 8
  %2422 = load i32, i32* %2380, align 4
  %2423 = sext i32 %2422 to i64
  store i64 %2423, i64* %RCX.i927, align 8
  %2424 = shl nsw i64 %2423, 3
  %2425 = add i64 %2424, %2420
  %2426 = add i64 %2416, 12
  store i64 %2426, i64* %3, align 8
  %2427 = inttoptr i64 %2425 to i64*
  %2428 = load i64, i64* %2427, align 8
  store i64 %2428, i64* %RAX.i931, align 8
  %2429 = add i64 %2377, -8
  %2430 = add i64 %2416, 16
  store i64 %2430, i64* %3, align 8
  %2431 = inttoptr i64 %2429 to i32*
  %2432 = load i32, i32* %2431, align 4
  %2433 = sext i32 %2432 to i64
  store i64 %2433, i64* %RCX.i927, align 8
  %2434 = shl nsw i64 %2433, 2
  %2435 = add i64 %2434, %2428
  %2436 = add i64 %2416, 19
  store i64 %2436, i64* %3, align 8
  %2437 = inttoptr i64 %2435 to i32*
  %2438 = load i32, i32* %2437, align 4
  %2439 = zext i32 %2438 to i64
  store i64 %2439, i64* %RDX.i915, align 8
  %2440 = load i64, i64* bitcast (%G_0x6d4518_type* @G_0x6d4518 to i64*), align 8
  store i64 %2440, i64* %RAX.i931, align 8
  %2441 = add i64 %2440, 3136
  %2442 = add i64 %2416, 34
  store i64 %2442, i64* %3, align 8
  %2443 = inttoptr i64 %2441 to i64*
  %2444 = load i64, i64* %2443, align 8
  store i64 %2444, i64* %RAX.i931, align 8
  %2445 = add i64 %2416, 38
  store i64 %2445, i64* %3, align 8
  %2446 = load i32, i32* %2380, align 4
  %2447 = sext i32 %2446 to i64
  store i64 %2447, i64* %RCX.i927, align 8
  %2448 = shl nsw i64 %2447, 3
  %2449 = add i64 %2448, %2444
  %2450 = add i64 %2416, 42
  store i64 %2450, i64* %3, align 8
  %2451 = inttoptr i64 %2449 to i64*
  %2452 = load i64, i64* %2451, align 8
  store i64 %2452, i64* %RAX.i931, align 8
  %2453 = add i64 %2416, 46
  store i64 %2453, i64* %3, align 8
  %2454 = load i32, i32* %2431, align 4
  %2455 = sext i32 %2454 to i64
  store i64 %2455, i64* %RCX.i927, align 8
  %2456 = shl nsw i64 %2455, 2
  %2457 = add i64 %2456, %2452
  %2458 = add i64 %2416, 49
  store i64 %2458, i64* %3, align 8
  %2459 = inttoptr i64 %2457 to i32*
  store i32 %2438, i32* %2459, align 4
  %2460 = load i64, i64* %RBP.i, align 8
  %2461 = add i64 %2460, -24
  %2462 = load i64, i64* %3, align 8
  %2463 = add i64 %2462, 4
  store i64 %2463, i64* %3, align 8
  %2464 = inttoptr i64 %2461 to i64*
  %2465 = load i64, i64* %2464, align 8
  store i64 %2465, i64* %RAX.i931, align 8
  %2466 = add i64 %2460, -12
  %2467 = add i64 %2462, 8
  store i64 %2467, i64* %3, align 8
  %2468 = inttoptr i64 %2466 to i32*
  %2469 = load i32, i32* %2468, align 4
  %2470 = sext i32 %2469 to i64
  store i64 %2470, i64* %RCX.i927, align 8
  %2471 = shl nsw i64 %2470, 2
  %2472 = add i64 %2465, 332
  %2473 = add i64 %2472, %2471
  %2474 = add i64 %2462, 15
  store i64 %2474, i64* %3, align 8
  %2475 = inttoptr i64 %2473 to i32*
  %2476 = load i32, i32* %2475, align 4
  %2477 = zext i32 %2476 to i64
  store i64 %2477, i64* %RDX.i915, align 8
  %2478 = load i64, i64* bitcast (%G_0x6d4518_type* @G_0x6d4518 to i64*), align 8
  store i64 %2478, i64* %RAX.i931, align 8
  %2479 = add i64 %2462, 27
  store i64 %2479, i64* %3, align 8
  %2480 = load i32, i32* %2468, align 4
  %2481 = sext i32 %2480 to i64
  store i64 %2481, i64* %RCX.i927, align 8
  %2482 = shl nsw i64 %2481, 2
  %2483 = add i64 %2478, 3144
  %2484 = add i64 %2483, %2482
  %2485 = add i64 %2462, 34
  store i64 %2485, i64* %3, align 8
  %2486 = inttoptr i64 %2484 to i32*
  store i32 %2476, i32* %2486, align 4
  %2487 = load i64, i64* %RBP.i, align 8
  %2488 = add i64 %2487, -4
  %2489 = load i64, i64* %3, align 8
  %2490 = add i64 %2489, 3
  store i64 %2490, i64* %3, align 8
  %2491 = inttoptr i64 %2488 to i32*
  %2492 = load i32, i32* %2491, align 4
  %2493 = add i32 %2492, 1
  %2494 = zext i32 %2493 to i64
  store i64 %2494, i64* %RAX.i931, align 8
  %2495 = icmp eq i32 %2492, -1
  %2496 = icmp eq i32 %2493, 0
  %2497 = or i1 %2495, %2496
  %2498 = zext i1 %2497 to i8
  store i8 %2498, i8* %22, align 1
  %2499 = and i32 %2493, 255
  %2500 = tail call i32 @llvm.ctpop.i32(i32 %2499)
  %2501 = trunc i32 %2500 to i8
  %2502 = and i8 %2501, 1
  %2503 = xor i8 %2502, 1
  store i8 %2503, i8* %23, align 1
  %2504 = xor i32 %2493, %2492
  %2505 = lshr i32 %2504, 4
  %2506 = trunc i32 %2505 to i8
  %2507 = and i8 %2506, 1
  store i8 %2507, i8* %24, align 1
  %2508 = zext i1 %2496 to i8
  store i8 %2508, i8* %25, align 1
  %2509 = lshr i32 %2493, 31
  %2510 = trunc i32 %2509 to i8
  store i8 %2510, i8* %27, align 1
  %2511 = lshr i32 %2492, 31
  %2512 = xor i32 %2509, %2511
  %2513 = add nuw nsw i32 %2512, %2509
  %2514 = icmp eq i32 %2513, 2
  %2515 = zext i1 %2514 to i8
  store i8 %2515, i8* %28, align 1
  %2516 = add i64 %2489, 9
  store i64 %2516, i64* %3, align 8
  store i32 %2493, i32* %2491, align 4
  %2517 = load i64, i64* %RBP.i, align 8
  %2518 = add i64 %2517, -12
  %2519 = load i64, i64* %3, align 8
  %2520 = add i64 %2519, 3
  store i64 %2520, i64* %3, align 8
  %2521 = inttoptr i64 %2518 to i32*
  %2522 = load i32, i32* %2521, align 4
  %2523 = add i32 %2522, 1
  %2524 = zext i32 %2523 to i64
  store i64 %2524, i64* %RAX.i931, align 8
  %2525 = icmp eq i32 %2522, -1
  %2526 = icmp eq i32 %2523, 0
  %2527 = or i1 %2525, %2526
  %2528 = zext i1 %2527 to i8
  store i8 %2528, i8* %22, align 1
  %2529 = and i32 %2523, 255
  %2530 = tail call i32 @llvm.ctpop.i32(i32 %2529)
  %2531 = trunc i32 %2530 to i8
  %2532 = and i8 %2531, 1
  %2533 = xor i8 %2532, 1
  store i8 %2533, i8* %23, align 1
  %2534 = xor i32 %2523, %2522
  %2535 = lshr i32 %2534, 4
  %2536 = trunc i32 %2535 to i8
  %2537 = and i8 %2536, 1
  store i8 %2537, i8* %24, align 1
  %2538 = zext i1 %2526 to i8
  store i8 %2538, i8* %25, align 1
  %2539 = lshr i32 %2523, 31
  %2540 = trunc i32 %2539 to i8
  store i8 %2540, i8* %27, align 1
  %2541 = lshr i32 %2522, 31
  %2542 = xor i32 %2539, %2541
  %2543 = add nuw nsw i32 %2542, %2539
  %2544 = icmp eq i32 %2543, 2
  %2545 = zext i1 %2544 to i8
  store i8 %2545, i8* %28, align 1
  %2546 = add i64 %2519, 9
  store i64 %2546, i64* %3, align 8
  store i32 %2523, i32* %2521, align 4
  %2547 = load i64, i64* %3, align 8
  %2548 = add i64 %2547, -129
  store i64 %2548, i64* %3, align 8
  br label %block_.L_49d603

block_.L_49d689:                                  ; preds = %block_.L_49d603
  %2549 = add i64 %2377, -8
  %2550 = add i64 %2416, 8
  store i64 %2550, i64* %3, align 8
  %2551 = inttoptr i64 %2549 to i32*
  %2552 = load i32, i32* %2551, align 4
  %2553 = add i32 %2552, 1
  %2554 = zext i32 %2553 to i64
  store i64 %2554, i64* %RAX.i931, align 8
  %2555 = icmp eq i32 %2552, -1
  %2556 = icmp eq i32 %2553, 0
  %2557 = or i1 %2555, %2556
  %2558 = zext i1 %2557 to i8
  store i8 %2558, i8* %22, align 1
  %2559 = and i32 %2553, 255
  %2560 = tail call i32 @llvm.ctpop.i32(i32 %2559)
  %2561 = trunc i32 %2560 to i8
  %2562 = and i8 %2561, 1
  %2563 = xor i8 %2562, 1
  store i8 %2563, i8* %23, align 1
  %2564 = xor i32 %2553, %2552
  %2565 = lshr i32 %2564, 4
  %2566 = trunc i32 %2565 to i8
  %2567 = and i8 %2566, 1
  store i8 %2567, i8* %24, align 1
  %2568 = zext i1 %2556 to i8
  store i8 %2568, i8* %25, align 1
  %2569 = lshr i32 %2553, 31
  %2570 = trunc i32 %2569 to i8
  store i8 %2570, i8* %27, align 1
  %2571 = lshr i32 %2552, 31
  %2572 = xor i32 %2569, %2571
  %2573 = add nuw nsw i32 %2572, %2569
  %2574 = icmp eq i32 %2573, 2
  %2575 = zext i1 %2574 to i8
  store i8 %2575, i8* %28, align 1
  %2576 = add i64 %2416, 14
  store i64 %2576, i64* %3, align 8
  store i32 %2553, i32* %2551, align 4
  %2577 = load i64, i64* %3, align 8
  %2578 = add i64 %2577, -193
  store i64 %2578, i64* %3, align 8
  br label %block_.L_49d5d6

block_.L_49d69c.loopexit:                         ; preds = %block_.L_49d5d6
  br label %block_.L_49d69c

block_.L_49d69c:                                  ; preds = %block_.L_49d69c.loopexit, %block_49cf97
  %2579 = phi i64 [ %112, %block_49cf97 ], [ %2367, %block_.L_49d69c.loopexit ]
  %2580 = add i64 %2579, 1
  store i64 %2580, i64* %3, align 8
  %2581 = load i64, i64* %6, align 8
  %2582 = add i64 %2581, 8
  %2583 = inttoptr i64 %2581 to i64*
  %2584 = load i64, i64* %2583, align 8
  store i64 %2584, i64* %RBP.i, align 8
  store i64 %2582, i64* %6, align 8
  %2585 = add i64 %2579, 2
  store i64 %2585, i64* %3, align 8
  %2586 = inttoptr i64 %2582 to i64*
  %2587 = load i64, i64* %2586, align 8
  store i64 %2587, i64* %3, align 8
  %2588 = add i64 %2581, 16
  store i64 %2588, i64* %6, align 8
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

; Function Attrs: norecurse nounwind
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x7247a0___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x7247a0_type* @G_0x7247a0 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -28
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_sete__sil(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SIL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  store i8 %7, i8* %SIL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_andb__0x1___sil(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SIL = bitcast %union.anon* %3 to i8*
  %4 = load i8, i8* %SIL, align 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = and i8 %4, 1
  store i8 %7, i8* %SIL, align 1
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
define %struct.Memory* @routine_movzbl__sil___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SIL = bitcast %union.anon* %3 to i8*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i8, i8* %SIL, align 1
  %5 = zext i8 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -32
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x68__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x11ad0__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
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
define %struct.Memory* @routine_jne_.L_49cf9c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_49d69c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x10__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %9 = add i32 %8, -16
  %10 = icmp ult i32 %8, 16
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
define %struct.Memory* @routine_jge_.L_49d03c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x10__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %9 = add i32 %8, -16
  %10 = icmp ult i32 %8, 16
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
define %struct.Memory* @routine_jge_.L_49d029(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x1918__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 6424
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x9c__rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 156
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
define %struct.Memory* @routine_addl_MINUS0x8__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8
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
define %struct.Memory* @routine_movl_0x98__rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 152
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
define %struct.Memory* @routine_addl_MINUS0x4__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4
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
define %struct.Memory* @routine_movzwl___rax__rcx_2____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %11 = zext i16 %10 to i64
  store i64 %11, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x6d4518___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6d4518_type* @G_0x6d4518 to i64*), align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x8___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 8
  store i64 %6, i64* %RAX, align 8
  %7 = icmp ugt i64 %3, -9
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
define %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 6
  store i64 %6, i64* %RCX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 58
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 192
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  store i8 %17, i8* %11, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %20 = icmp eq i64 %6, 0
  %21 = zext i1 %20 to i8
  store i8 %21, i8* %19, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %23 = lshr i64 %3, 57
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
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
define %struct.Memory* @routine_jmpq_.L_49cfb4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_49d02e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_49cfa3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x11bfc__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72700
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
define %struct.Memory* @routine_je_.L_49d178(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl_0x11c08__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RCX, align 8
  %6 = add i64 %5, 72712
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
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
define %struct.Memory* @routine_jge_.L_49d173(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl_0x11c04__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RCX, align 8
  %6 = add i64 %5, 72708
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
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
define %struct.Memory* @routine_jge_.L_49d160(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x1940__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 6464
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
define %struct.Memory* @routine_movl_0xa4__rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 164
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
define %struct.Memory* @routine_movl_0xa0__rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 160
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
define %struct.Memory* @routine_addq__0x408___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 1032
  store i64 %6, i64* %RAX, align 8
  %7 = icmp ugt i64 %3, -1033
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x808___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 2056
  store i64 %6, i64* %RAX, align 8
  %7 = icmp ugt i64 %3, -2057
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
define %struct.Memory* @routine_jmpq_.L_49d076(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_49d165(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_49d058(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_49d178(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x6d4518___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6d4518_type* @G_0x6d4518 to i64*), align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0xc98__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 3224
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x11abc__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 72380
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0xd00__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 3328
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x1cc__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 460
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0xc88__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 3208
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x1d0__rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 464
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x6d4518___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6d4518_type* @G_0x6d4518 to i64*), align 8
  store i64 %5, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__0xc90__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 3216
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x48__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 72
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
define %struct.Memory* @routine_movl__eax__0xc18__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 3096
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x23c__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 572
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0xd08__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 3336
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0xc18__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 3096
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
define %struct.Memory* @routine_jne_.L_49d23c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
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
define %struct.Memory* @routine_je_.L_49d23c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__0xc98__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 3224
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x11bf4__rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 72692
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
define %struct.Memory* @routine_addl__0x4___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 4
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDX, align 8
  %9 = icmp ugt i32 %6, -5
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
  %31 = add nuw nsw i32 %30, %26
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__edx___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %4 to i32*
  %5 = load i32, i32* %EAX, align 4
  %6 = load i32, i32* %EDX, align 4
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
define %struct.Memory* @routine_jge_.L_49d335(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x4__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %9 = add i32 %8, -4
  %10 = icmp ult i32 %8, 4
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
define %struct.Memory* @routine_jge_.L_49d322(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
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
define %struct.Memory* @routine_jge_.L_49d30f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x41__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -65
  %10 = icmp ult i32 %8, 65
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
define %struct.Memory* @routine_jge_.L_49d2fc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x3738__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 14136
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0xc08__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 3080
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x10__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
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
define %struct.Memory* @routine_jmpq_.L_49d288(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_49d301(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
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
define %struct.Memory* @routine_jmpq_.L_49d277(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_49d314(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_49d266(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_49d327(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_49d243(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x3__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jge_.L_49d3e8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_49d3d5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x12__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -18
  %10 = icmp ult i32 %8, 18
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
define %struct.Memory* @routine_jge_.L_49d3c2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x3740__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 14144
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0xc10__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 3088
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_49d35e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_49d3c7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_49d34d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_49d3da(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_49d33c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x4__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %9 = add i32 %8, -4
  %10 = icmp ult i32 %8, 4
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
define %struct.Memory* @routine_jge_.L_49d44b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x1d8__rax__rcx_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, 472
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__0xc20__rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, 3104
  %8 = add i64 %7, %6
  %9 = load i32, i32* %EDX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x1e8__rax__rcx_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, 488
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__0xc30__rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, 3120
  %8 = add i64 %7, %6
  %9 = load i32, i32* %EDX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_49d3ef(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_49d4f1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_49d4de(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw___rax__rcx_2____si(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SI = bitcast %union.anon* %3 to i16*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 1
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i16*
  %11 = load i16, i16* %10, align 2
  store i16 %11, i16* %SI, align 2
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0xcc0___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 3264
  store i64 %6, i64* %RAX, align 8
  %7 = icmp ugt i64 %3, -3265
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

; Function Attrs: nounwind
define %struct.Memory* @routine_shlq__0x3___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 3
  store i64 %6, i64* %RCX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 61
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 248
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  store i8 %17, i8* %11, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %20 = icmp eq i64 %6, 0
  %21 = zext i1 %20 to i8
  store i8 %21, i8* %19, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %23 = lshr i64 %3, 60
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__si____rax__rcx_2_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SI = bitcast %union.anon* %3 to i16*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 1
  %7 = add i64 %6, %4
  %8 = load i16, i16* %SI, align 2
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 4
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i16*
  store i16 %8, i16* %11, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_49d463(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_49d4e3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_49d452(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_49d5be(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_49d5a6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_49d593(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addq__0x20___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 32
  store i64 %6, i64* %RAX, align 8
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
define %struct.Memory* @routine_jmpq_.L_49d513(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_49d598(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_49d502(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x244__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 580
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__0xc1c__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 3100
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x94__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 148
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_49d69c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x90__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 144
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_49d689(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0xc40__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 3136
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x14c__rax__rcx_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, 332
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__0xc48__rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, 3144
  %8 = add i64 %7, %6
  %9 = load i32, i32* %EDX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_49d603(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_49d68e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_49d5d6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
attributes #1 = { alwaysinline nounwind }
attributes #2 = { norecurse nounwind }
attributes #3 = { nounwind }
