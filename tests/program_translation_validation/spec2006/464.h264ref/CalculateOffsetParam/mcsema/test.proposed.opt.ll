; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x6cb8f8_type = type <{ [8 x i8] }>
%G_0x6cb900_type = type <{ [8 x i8] }>
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

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @CalculateOffsetParam(%struct.State* noalias, i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #1 {
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
  %RAX.i898 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %11 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %11, i64* %RAX.i898, align 8
  %12 = add i64 %11, 3584
  %13 = add i64 %10, 18
  store i64 %13, i64* %3, align 8
  %14 = inttoptr i64 %12 to i32*
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %16, align 1
  %17 = and i32 %15, 255
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %23, align 1
  %24 = icmp eq i32 %15, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %15, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %30, align 1
  %.v = select i1 %24, i64 719, i64 24
  %31 = add i64 %10, %.v
  %32 = add i64 %7, -20
  %33 = add i64 %31, 7
  store i64 %33, i64* %3, align 8
  %34 = inttoptr i64 %32 to i32*
  store i32 0, i32* %34, align 4
  %RCX.i407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX.i268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI.i265 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %RDI.i263 = getelementptr inbounds %union.anon, %union.anon* %35, i64 0, i32 0
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D.i259 = bitcast %union.anon* %36 to i32*
  %37 = getelementptr inbounds %union.anon, %union.anon* %36, i64 0, i32 0
  %EDI.i226 = bitcast %union.anon* %35 to i32*
  %.pre58 = load i64, i64* %3, align 8
  br i1 %24, label %block_.L_47bb37.preheader, label %block_.L_47b880.preheader

block_.L_47b880.preheader:                        ; preds = %entry
  br label %block_.L_47b880

block_.L_47bb37.preheader:                        ; preds = %entry
  br label %block_.L_47bb37

block_.L_47b880:                                  ; preds = %block_.L_47b880.preheader, %block_.L_47bb18
  %38 = phi i64 [ %1520, %block_.L_47bb18 ], [ %.pre58, %block_.L_47b880.preheader ]
  %39 = load i64, i64* %RBP.i, align 8
  %40 = add i64 %39, -12
  %41 = add i64 %38, 4
  store i64 %41, i64* %3, align 8
  %42 = inttoptr i64 %40 to i32*
  %43 = load i32, i32* %42, align 4
  %44 = add i32 %43, -13
  %45 = icmp ult i32 %43, 13
  %46 = zext i1 %45 to i8
  store i8 %46, i8* %16, align 1
  %47 = and i32 %44, 255
  %48 = tail call i32 @llvm.ctpop.i32(i32 %47)
  %49 = trunc i32 %48 to i8
  %50 = and i8 %49, 1
  %51 = xor i8 %50, 1
  store i8 %51, i8* %22, align 1
  %52 = xor i32 %44, %43
  %53 = lshr i32 %52, 4
  %54 = trunc i32 %53 to i8
  %55 = and i8 %54, 1
  store i8 %55, i8* %23, align 1
  %56 = icmp eq i32 %44, 0
  %57 = zext i1 %56 to i8
  store i8 %57, i8* %26, align 1
  %58 = lshr i32 %44, 31
  %59 = trunc i32 %58 to i8
  store i8 %59, i8* %29, align 1
  %60 = lshr i32 %43, 31
  %61 = xor i32 %58, %60
  %62 = add nuw nsw i32 %61, %60
  %63 = icmp eq i32 %62, 2
  %64 = zext i1 %63 to i8
  store i8 %64, i8* %30, align 1
  %65 = icmp ne i8 %59, 0
  %66 = xor i1 %65, %63
  %.v77 = select i1 %66, i64 10, i64 683
  %67 = add i64 %38, %.v77
  store i64 %67, i64* %3, align 8
  br i1 %66, label %block_47b88a, label %block_.L_47bb2b

block_47b88a:                                     ; preds = %block_.L_47b880
  %68 = add i64 %67, 3
  store i64 %68, i64* %3, align 8
  %69 = load i32, i32* %42, align 4
  %70 = add i32 %69, 15
  %71 = lshr i32 %70, 31
  %72 = add i32 %69, 5
  %73 = zext i32 %72 to i64
  store i64 %73, i64* %RAX.i898, align 8
  %74 = icmp ult i32 %70, 10
  %75 = zext i1 %74 to i8
  store i8 %75, i8* %16, align 1
  %76 = and i32 %72, 255
  %77 = tail call i32 @llvm.ctpop.i32(i32 %76)
  %78 = trunc i32 %77 to i8
  %79 = and i8 %78, 1
  %80 = xor i8 %79, 1
  store i8 %80, i8* %22, align 1
  %81 = xor i32 %72, %70
  %82 = lshr i32 %81, 4
  %83 = trunc i32 %82 to i8
  %84 = and i8 %83, 1
  store i8 %84, i8* %23, align 1
  %85 = icmp eq i32 %72, 0
  %86 = zext i1 %85 to i8
  store i8 %86, i8* %26, align 1
  %87 = lshr i32 %72, 31
  %88 = trunc i32 %87 to i8
  store i8 %88, i8* %29, align 1
  %89 = xor i32 %87, %71
  %90 = add nuw nsw i32 %89, %71
  %91 = icmp eq i32 %90, 2
  %92 = zext i1 %91 to i8
  store i8 %92, i8* %30, align 1
  %93 = add i64 %39, -20
  %94 = add i64 %67, 12
  store i64 %94, i64* %3, align 8
  %95 = inttoptr i64 %93 to i32*
  store i32 %72, i32* %95, align 4
  %96 = load i64, i64* %RBP.i, align 8
  %97 = add i64 %96, -8
  %98 = load i64, i64* %3, align 8
  %99 = add i64 %98, 7
  store i64 %99, i64* %3, align 8
  %100 = inttoptr i64 %97 to i32*
  store i32 0, i32* %100, align 4
  %.pre55 = load i64, i64* %3, align 8
  br label %block_.L_47b89d

block_.L_47b89d:                                  ; preds = %block_.L_47bb05, %block_47b88a
  %101 = phi i64 [ %1490, %block_.L_47bb05 ], [ %.pre55, %block_47b88a ]
  %102 = load i64, i64* %RBP.i, align 8
  %103 = add i64 %102, -8
  %104 = add i64 %101, 4
  store i64 %104, i64* %3, align 8
  %105 = inttoptr i64 %103 to i32*
  %106 = load i32, i32* %105, align 4
  %107 = add i32 %106, -4
  %108 = icmp ult i32 %106, 4
  %109 = zext i1 %108 to i8
  store i8 %109, i8* %16, align 1
  %110 = and i32 %107, 255
  %111 = tail call i32 @llvm.ctpop.i32(i32 %110)
  %112 = trunc i32 %111 to i8
  %113 = and i8 %112, 1
  %114 = xor i8 %113, 1
  store i8 %114, i8* %22, align 1
  %115 = xor i32 %107, %106
  %116 = lshr i32 %115, 4
  %117 = trunc i32 %116 to i8
  %118 = and i8 %117, 1
  store i8 %118, i8* %23, align 1
  %119 = icmp eq i32 %107, 0
  %120 = zext i1 %119 to i8
  store i8 %120, i8* %26, align 1
  %121 = lshr i32 %107, 31
  %122 = trunc i32 %121 to i8
  store i8 %122, i8* %29, align 1
  %123 = lshr i32 %106, 31
  %124 = xor i32 %121, %123
  %125 = add nuw nsw i32 %124, %123
  %126 = icmp eq i32 %125, 2
  %127 = zext i1 %126 to i8
  store i8 %127, i8* %30, align 1
  %128 = icmp ne i8 %122, 0
  %129 = xor i1 %128, %126
  %.v62 = select i1 %129, i64 10, i64 635
  %130 = add i64 %101, %.v62
  store i64 %130, i64* %3, align 8
  br i1 %129, label %block_47b8a7, label %block_.L_47bb18

block_47b8a7:                                     ; preds = %block_.L_47b89d
  %131 = add i64 %102, -4
  %132 = add i64 %130, 7
  store i64 %132, i64* %3, align 8
  %133 = inttoptr i64 %131 to i32*
  store i32 0, i32* %133, align 4
  %.pre56 = load i64, i64* %3, align 8
  br label %block_.L_47b8ae

block_.L_47b8ae:                                  ; preds = %routine_shll__cl___edi.exit503, %block_47b8a7
  %134 = phi i64 [ %1460, %routine_shll__cl___edi.exit503 ], [ %.pre56, %block_47b8a7 ]
  %135 = load i64, i64* %RBP.i, align 8
  %136 = add i64 %135, -4
  %137 = add i64 %134, 4
  store i64 %137, i64* %3, align 8
  %138 = inttoptr i64 %136 to i32*
  %139 = load i32, i32* %138, align 4
  %140 = add i32 %139, -4
  %141 = icmp ult i32 %139, 4
  %142 = zext i1 %141 to i8
  store i8 %142, i8* %16, align 1
  %143 = and i32 %140, 255
  %144 = tail call i32 @llvm.ctpop.i32(i32 %143)
  %145 = trunc i32 %144 to i8
  %146 = and i8 %145, 1
  %147 = xor i8 %146, 1
  store i8 %147, i8* %22, align 1
  %148 = xor i32 %140, %139
  %149 = lshr i32 %148, 4
  %150 = trunc i32 %149 to i8
  %151 = and i8 %150, 1
  store i8 %151, i8* %23, align 1
  %152 = icmp eq i32 %140, 0
  %153 = zext i1 %152 to i8
  store i8 %153, i8* %26, align 1
  %154 = lshr i32 %140, 31
  %155 = trunc i32 %154 to i8
  store i8 %155, i8* %29, align 1
  %156 = lshr i32 %139, 31
  %157 = xor i32 %154, %156
  %158 = add nuw nsw i32 %157, %156
  %159 = icmp eq i32 %158, 2
  %160 = zext i1 %159 to i8
  store i8 %160, i8* %30, align 1
  %161 = icmp ne i8 %155, 0
  %162 = xor i1 %161, %159
  %.v63 = select i1 %162, i64 10, i64 599
  %163 = add i64 %134, %.v63
  store i64 %163, i64* %3, align 8
  br i1 %162, label %block_47b8b8, label %block_.L_47bb05

block_47b8b8:                                     ; preds = %block_.L_47b8ae
  %164 = add i64 %163, 3
  store i64 %164, i64* %3, align 8
  %165 = load i32, i32* %138, align 4
  %166 = shl i32 %165, 2
  %167 = zext i32 %166 to i64
  store i64 %167, i64* %RAX.i898, align 8
  %168 = lshr i32 %165, 30
  %169 = trunc i32 %168 to i8
  %170 = and i8 %169, 1
  store i8 %170, i8* %16, align 1
  %171 = and i32 %166, 252
  %172 = tail call i32 @llvm.ctpop.i32(i32 %171)
  %173 = trunc i32 %172 to i8
  %174 = and i8 %173, 1
  %175 = xor i8 %174, 1
  store i8 %175, i8* %22, align 1
  store i8 0, i8* %23, align 1
  %176 = icmp eq i32 %166, 0
  %177 = zext i1 %176 to i8
  store i8 %177, i8* %26, align 1
  %178 = lshr i32 %165, 29
  %179 = trunc i32 %178 to i8
  %180 = and i8 %179, 1
  store i8 %180, i8* %29, align 1
  store i8 0, i8* %30, align 1
  %181 = add i64 %135, -8
  %182 = add i64 %163, 9
  store i64 %182, i64* %3, align 8
  %183 = inttoptr i64 %181 to i32*
  %184 = load i32, i32* %183, align 4
  %185 = add i32 %184, %166
  %186 = zext i32 %185 to i64
  store i64 %186, i64* %RAX.i898, align 8
  %187 = icmp ult i32 %185, %166
  %188 = icmp ult i32 %185, %184
  %189 = or i1 %187, %188
  %190 = zext i1 %189 to i8
  store i8 %190, i8* %16, align 1
  %191 = and i32 %185, 255
  %192 = tail call i32 @llvm.ctpop.i32(i32 %191)
  %193 = trunc i32 %192 to i8
  %194 = and i8 %193, 1
  %195 = xor i8 %194, 1
  store i8 %195, i8* %22, align 1
  %196 = xor i32 %184, %166
  %197 = xor i32 %196, %185
  %198 = lshr i32 %197, 4
  %199 = trunc i32 %198 to i8
  %200 = and i8 %199, 1
  store i8 %200, i8* %23, align 1
  %201 = icmp eq i32 %185, 0
  %202 = zext i1 %201 to i8
  store i8 %202, i8* %26, align 1
  %203 = lshr i32 %185, 31
  %204 = trunc i32 %203 to i8
  store i8 %204, i8* %29, align 1
  %205 = lshr i32 %165, 29
  %206 = and i32 %205, 1
  %207 = lshr i32 %184, 31
  %208 = xor i32 %203, %206
  %209 = xor i32 %203, %207
  %210 = add nuw nsw i32 %208, %209
  %211 = icmp eq i32 %210, 2
  %212 = zext i1 %211 to i8
  store i8 %212, i8* %30, align 1
  %213 = add i64 %135, -16
  %214 = add i64 %163, 12
  store i64 %214, i64* %3, align 8
  %215 = inttoptr i64 %213 to i32*
  store i32 %185, i32* %215, align 4
  %216 = load i64, i64* %3, align 8
  %217 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %217, i64* %RCX.i407, align 8
  %218 = add i64 %217, 24
  %219 = add i64 %216, 12
  store i64 %219, i64* %3, align 8
  %220 = inttoptr i64 %218 to i32*
  %221 = load i32, i32* %220, align 4
  %222 = icmp eq i32 %221, 2
  %.v78 = select i1 %222, i64 18, i64 203
  %223 = add i64 %216, %.v78
  store i64 7490528, i64* %RAX.i898, align 8
  store i64 7491360, i64* %RCX.i407, align 8
  store i8 0, i8* %16, align 1
  store i8 0, i8* %22, align 1
  store i8 0, i8* %23, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %30, align 1
  store i64 7405600, i64* %RDX.i268, align 8
  %224 = load i64, i64* %RBP.i, align 8
  %225 = add i64 %224, -16
  %226 = add i64 %223, 34
  store i64 %226, i64* %3, align 8
  %227 = inttoptr i64 %225 to i32*
  %228 = load i32, i32* %227, align 4
  %229 = sext i32 %228 to i64
  store i64 %229, i64* %RSI.i265, align 8
  %230 = shl nsw i64 %229, 1
  br i1 %222, label %block_47b8d6, label %block_.L_47b98f

block_47b8d6:                                     ; preds = %block_47b8b8
  %231 = add nsw i64 %230, 7404896
  %232 = add i64 %223, 42
  store i64 %232, i64* %3, align 8
  %233 = inttoptr i64 %231 to i16*
  %234 = load i16, i16* %233, align 2
  %235 = sext i16 %234 to i64
  %236 = and i64 %235, 4294967295
  store i64 %236, i64* %RDI.i263, align 8
  %237 = add i64 %224, -20
  %238 = add i64 %223, 46
  store i64 %238, i64* %3, align 8
  %239 = inttoptr i64 %237 to i32*
  %240 = load i32, i32* %239, align 4
  %241 = zext i32 %240 to i64
  store i64 %241, i64* %37, align 8
  %242 = add i64 %224, -32
  %243 = add i64 %223, 50
  store i64 %243, i64* %3, align 8
  %244 = inttoptr i64 %242 to i64*
  store i64 7491360, i64* %244, align 8
  %245 = load i32, i32* %R8D.i259, align 4
  %246 = zext i32 %245 to i64
  %247 = load i64, i64* %3, align 8
  store i64 %246, i64* %RCX.i407, align 8
  %248 = load i64, i64* %RDI.i263, align 8
  %249 = add i64 %247, 5
  store i64 %249, i64* %3, align 8
  %250 = trunc i32 %245 to i5
  switch i5 %250, label %257 [
    i5 0, label %routine_shll__cl___edi.exit828
    i5 1, label %251
  ]

; <label>:251:                                    ; preds = %block_47b8d6
  %252 = trunc i64 %248 to i32
  %253 = shl i32 %252, 1
  %254 = icmp slt i32 %252, 0
  %255 = icmp slt i32 %253, 0
  %256 = xor i1 %254, %255
  br label %267

; <label>:257:                                    ; preds = %block_47b8d6
  %258 = and i32 %245, 31
  %259 = zext i32 %258 to i64
  %260 = add nuw nsw i64 %259, 4294967295
  %261 = and i64 %248, 4294967295
  %262 = and i64 %260, 4294967295
  %263 = shl i64 %261, %262
  %264 = trunc i64 %263 to i32
  %265 = icmp slt i32 %264, 0
  %266 = shl i32 %264, 1
  br label %267

; <label>:267:                                    ; preds = %257, %251
  %268 = phi i1 [ %254, %251 ], [ %265, %257 ]
  %269 = phi i1 [ %256, %251 ], [ false, %257 ]
  %270 = phi i32 [ %253, %251 ], [ %266, %257 ]
  %271 = zext i32 %270 to i64
  store i64 %271, i64* %RDI.i263, align 8
  %272 = zext i1 %268 to i8
  store i8 %272, i8* %16, align 1
  %273 = and i32 %270, 254
  %274 = tail call i32 @llvm.ctpop.i32(i32 %273)
  %275 = trunc i32 %274 to i8
  %276 = and i8 %275, 1
  %277 = xor i8 %276, 1
  store i8 %277, i8* %22, align 1
  store i8 0, i8* %23, align 1
  %278 = icmp eq i32 %270, 0
  %279 = zext i1 %278 to i8
  store i8 %279, i8* %26, align 1
  %280 = lshr i32 %270, 31
  %281 = trunc i32 %280 to i8
  store i8 %281, i8* %29, align 1
  %282 = zext i1 %269 to i8
  store i8 %282, i8* %30, align 1
  br label %routine_shll__cl___edi.exit828

routine_shll__cl___edi.exit828:                   ; preds = %267, %block_47b8d6
  %283 = load i64, i64* %RBP.i, align 8
  %284 = add i64 %283, -12
  %285 = add i64 %247, 9
  store i64 %285, i64* %3, align 8
  %286 = inttoptr i64 %284 to i32*
  %287 = load i32, i32* %286, align 4
  %288 = sext i32 %287 to i64
  %289 = shl nsw i64 %288, 6
  store i64 %289, i64* %RSI.i265, align 8
  %290 = load i64, i64* %RDX.i268, align 8
  %291 = add i64 %289, %290
  store i64 %291, i64* %RDX.i268, align 8
  %292 = icmp ult i64 %291, %290
  %293 = icmp ult i64 %291, %289
  %294 = or i1 %292, %293
  %295 = zext i1 %294 to i8
  store i8 %295, i8* %16, align 1
  %296 = trunc i64 %291 to i32
  %297 = and i32 %296, 255
  %298 = tail call i32 @llvm.ctpop.i32(i32 %297)
  %299 = trunc i32 %298 to i8
  %300 = and i8 %299, 1
  %301 = xor i8 %300, 1
  store i8 %301, i8* %22, align 1
  %302 = xor i64 %290, %291
  %303 = lshr i64 %302, 4
  %304 = trunc i64 %303 to i8
  %305 = and i8 %304, 1
  store i8 %305, i8* %23, align 1
  %306 = icmp eq i64 %291, 0
  %307 = zext i1 %306 to i8
  store i8 %307, i8* %26, align 1
  %308 = lshr i64 %291, 63
  %309 = trunc i64 %308 to i8
  store i8 %309, i8* %29, align 1
  %310 = lshr i64 %290, 63
  %311 = lshr i64 %288, 57
  %312 = and i64 %311, 1
  %313 = xor i64 %308, %310
  %314 = xor i64 %308, %312
  %315 = add nuw nsw i64 %313, %314
  %316 = icmp eq i64 %315, 2
  %317 = zext i1 %316 to i8
  store i8 %317, i8* %30, align 1
  %318 = add i64 %283, -8
  %319 = add i64 %247, 20
  store i64 %319, i64* %3, align 8
  %320 = inttoptr i64 %318 to i32*
  %321 = load i32, i32* %320, align 4
  %322 = sext i32 %321 to i64
  %323 = shl nsw i64 %322, 4
  store i64 %323, i64* %RSI.i265, align 8
  %324 = add i64 %323, %291
  store i64 %324, i64* %RDX.i268, align 8
  %325 = icmp ult i64 %324, %291
  %326 = icmp ult i64 %324, %323
  %327 = or i1 %325, %326
  %328 = zext i1 %327 to i8
  store i8 %328, i8* %16, align 1
  %329 = trunc i64 %324 to i32
  %330 = and i32 %329, 255
  %331 = tail call i32 @llvm.ctpop.i32(i32 %330)
  %332 = trunc i32 %331 to i8
  %333 = and i8 %332, 1
  %334 = xor i8 %333, 1
  store i8 %334, i8* %22, align 1
  %335 = xor i64 %323, %291
  %336 = xor i64 %335, %324
  %337 = lshr i64 %336, 4
  %338 = trunc i64 %337 to i8
  %339 = and i8 %338, 1
  store i8 %339, i8* %23, align 1
  %340 = icmp eq i64 %324, 0
  %341 = zext i1 %340 to i8
  store i8 %341, i8* %26, align 1
  %342 = lshr i64 %324, 63
  %343 = trunc i64 %342 to i8
  store i8 %343, i8* %29, align 1
  %344 = lshr i64 %322, 59
  %345 = and i64 %344, 1
  %346 = xor i64 %342, %308
  %347 = xor i64 %342, %345
  %348 = add nuw nsw i64 %346, %347
  %349 = icmp eq i64 %348, 2
  %350 = zext i1 %349 to i8
  store i8 %350, i8* %30, align 1
  %351 = load i64, i64* %RBP.i, align 8
  %352 = add i64 %351, -4
  %353 = add i64 %247, 31
  store i64 %353, i64* %3, align 8
  %354 = inttoptr i64 %352 to i32*
  %355 = load i32, i32* %354, align 4
  %356 = sext i32 %355 to i64
  store i64 %356, i64* %RSI.i265, align 8
  %357 = shl nsw i64 %356, 2
  %358 = add i64 %357, %324
  %359 = load i32, i32* %EDI.i226, align 4
  %360 = add i64 %247, 34
  store i64 %360, i64* %3, align 8
  %361 = inttoptr i64 %358 to i32*
  store i32 %359, i32* %361, align 4
  %362 = load i64, i64* %RBP.i, align 8
  %363 = add i64 %362, -16
  %364 = load i64, i64* %3, align 8
  %365 = add i64 %364, 4
  store i64 %365, i64* %3, align 8
  %366 = inttoptr i64 %363 to i32*
  %367 = load i32, i32* %366, align 4
  %368 = sext i32 %367 to i64
  store i64 %368, i64* %RDX.i268, align 8
  %369 = shl nsw i64 %368, 1
  %370 = add nsw i64 %369, 7404928
  %371 = add i64 %364, 12
  store i64 %371, i64* %3, align 8
  %372 = inttoptr i64 %370 to i16*
  %373 = load i16, i16* %372, align 2
  %374 = sext i16 %373 to i64
  %375 = and i64 %374, 4294967295
  store i64 %375, i64* %RDI.i263, align 8
  %376 = add i64 %362, -20
  %377 = add i64 %364, 15
  store i64 %377, i64* %3, align 8
  %378 = inttoptr i64 %376 to i32*
  %379 = load i32, i32* %378, align 4
  %380 = zext i32 %379 to i64
  store i64 %380, i64* %RCX.i407, align 8
  %381 = add i64 %364, 17
  store i64 %381, i64* %3, align 8
  %382 = trunc i32 %379 to i5
  switch i5 %382, label %386 [
    i5 0, label %routine_shll__cl___edi.exit792
    i5 1, label %383
  ]

; <label>:383:                                    ; preds = %routine_shll__cl___edi.exit828
  %384 = sext i16 %373 to i32
  %385 = icmp slt i16 %373, 0
  br label %394

; <label>:386:                                    ; preds = %routine_shll__cl___edi.exit828
  %387 = and i32 %379, 31
  %388 = zext i32 %387 to i64
  %389 = add nuw nsw i64 %388, 4294967295
  %390 = and i64 %389, 4294967295
  %391 = shl i64 %375, %390
  %392 = trunc i64 %391 to i32
  %393 = icmp slt i32 %392, 0
  br label %394

; <label>:394:                                    ; preds = %386, %383
  %395 = phi i1 [ %385, %383 ], [ %393, %386 ]
  %.in = phi i32 [ %384, %383 ], [ %392, %386 ]
  %396 = shl i32 %.in, 1
  %397 = zext i32 %396 to i64
  store i64 %397, i64* %RDI.i263, align 8
  %398 = zext i1 %395 to i8
  store i8 %398, i8* %16, align 1
  %399 = and i32 %396, 254
  %400 = tail call i32 @llvm.ctpop.i32(i32 %399)
  %401 = trunc i32 %400 to i8
  %402 = and i8 %401, 1
  %403 = xor i8 %402, 1
  store i8 %403, i8* %22, align 1
  store i8 0, i8* %23, align 1
  %404 = icmp eq i32 %396, 0
  %405 = zext i1 %404 to i8
  store i8 %405, i8* %26, align 1
  %406 = lshr i32 %.in, 30
  %407 = trunc i32 %406 to i8
  %408 = and i8 %407, 1
  store i8 %408, i8* %29, align 1
  store i8 0, i8* %30, align 1
  br label %routine_shll__cl___edi.exit792

routine_shll__cl___edi.exit792:                   ; preds = %394, %routine_shll__cl___edi.exit828
  %409 = add i64 %362, -12
  %410 = add i64 %364, 21
  store i64 %410, i64* %3, align 8
  %411 = inttoptr i64 %409 to i32*
  %412 = load i32, i32* %411, align 4
  %413 = sext i32 %412 to i64
  %414 = shl nsw i64 %413, 6
  store i64 %414, i64* %RDX.i268, align 8
  %415 = load i64, i64* %RAX.i898, align 8
  %416 = add i64 %414, %415
  store i64 %416, i64* %RAX.i898, align 8
  %417 = icmp ult i64 %416, %415
  %418 = icmp ult i64 %416, %414
  %419 = or i1 %417, %418
  %420 = zext i1 %419 to i8
  store i8 %420, i8* %16, align 1
  %421 = trunc i64 %416 to i32
  %422 = and i32 %421, 255
  %423 = tail call i32 @llvm.ctpop.i32(i32 %422)
  %424 = trunc i32 %423 to i8
  %425 = and i8 %424, 1
  %426 = xor i8 %425, 1
  store i8 %426, i8* %22, align 1
  %427 = xor i64 %415, %416
  %428 = lshr i64 %427, 4
  %429 = trunc i64 %428 to i8
  %430 = and i8 %429, 1
  store i8 %430, i8* %23, align 1
  %431 = icmp eq i64 %416, 0
  %432 = zext i1 %431 to i8
  store i8 %432, i8* %26, align 1
  %433 = lshr i64 %416, 63
  %434 = trunc i64 %433 to i8
  store i8 %434, i8* %29, align 1
  %435 = lshr i64 %415, 63
  %436 = lshr i64 %413, 57
  %437 = and i64 %436, 1
  %438 = xor i64 %433, %435
  %439 = xor i64 %433, %437
  %440 = add nuw nsw i64 %438, %439
  %441 = icmp eq i64 %440, 2
  %442 = zext i1 %441 to i8
  store i8 %442, i8* %30, align 1
  %443 = add i64 %362, -8
  %444 = add i64 %364, 32
  store i64 %444, i64* %3, align 8
  %445 = inttoptr i64 %443 to i32*
  %446 = load i32, i32* %445, align 4
  %447 = sext i32 %446 to i64
  %448 = shl nsw i64 %447, 4
  store i64 %448, i64* %RDX.i268, align 8
  %449 = add i64 %448, %416
  store i64 %449, i64* %RAX.i898, align 8
  %450 = icmp ult i64 %449, %416
  %451 = icmp ult i64 %449, %448
  %452 = or i1 %450, %451
  %453 = zext i1 %452 to i8
  store i8 %453, i8* %16, align 1
  %454 = trunc i64 %449 to i32
  %455 = and i32 %454, 255
  %456 = tail call i32 @llvm.ctpop.i32(i32 %455)
  %457 = trunc i32 %456 to i8
  %458 = and i8 %457, 1
  %459 = xor i8 %458, 1
  store i8 %459, i8* %22, align 1
  %460 = xor i64 %448, %416
  %461 = xor i64 %460, %449
  %462 = lshr i64 %461, 4
  %463 = trunc i64 %462 to i8
  %464 = and i8 %463, 1
  store i8 %464, i8* %23, align 1
  %465 = icmp eq i64 %449, 0
  %466 = zext i1 %465 to i8
  store i8 %466, i8* %26, align 1
  %467 = lshr i64 %449, 63
  %468 = trunc i64 %467 to i8
  store i8 %468, i8* %29, align 1
  %469 = lshr i64 %447, 59
  %470 = and i64 %469, 1
  %471 = xor i64 %467, %433
  %472 = xor i64 %467, %470
  %473 = add nuw nsw i64 %471, %472
  %474 = icmp eq i64 %473, 2
  %475 = zext i1 %474 to i8
  store i8 %475, i8* %30, align 1
  %476 = load i64, i64* %RBP.i, align 8
  %477 = add i64 %476, -4
  %478 = add i64 %364, 43
  store i64 %478, i64* %3, align 8
  %479 = inttoptr i64 %477 to i32*
  %480 = load i32, i32* %479, align 4
  %481 = sext i32 %480 to i64
  store i64 %481, i64* %RDX.i268, align 8
  %482 = shl nsw i64 %481, 2
  %483 = add i64 %482, %449
  %484 = load i32, i32* %EDI.i226, align 4
  %485 = add i64 %364, 46
  store i64 %485, i64* %3, align 8
  %486 = inttoptr i64 %483 to i32*
  store i32 %484, i32* %486, align 4
  %487 = load i64, i64* %RBP.i, align 8
  %488 = add i64 %487, -16
  %489 = load i64, i64* %3, align 8
  %490 = add i64 %489, 4
  store i64 %490, i64* %3, align 8
  %491 = inttoptr i64 %488 to i32*
  %492 = load i32, i32* %491, align 4
  %493 = sext i32 %492 to i64
  store i64 %493, i64* %RAX.i898, align 8
  %494 = shl nsw i64 %493, 1
  %495 = add nsw i64 %494, 7404960
  %496 = add i64 %489, 12
  store i64 %496, i64* %3, align 8
  %497 = inttoptr i64 %495 to i16*
  %498 = load i16, i16* %497, align 2
  %499 = sext i16 %498 to i64
  %500 = and i64 %499, 4294967295
  store i64 %500, i64* %RDI.i263, align 8
  %501 = add i64 %487, -20
  %502 = add i64 %489, 15
  store i64 %502, i64* %3, align 8
  %503 = inttoptr i64 %501 to i32*
  %504 = load i32, i32* %503, align 4
  %505 = zext i32 %504 to i64
  store i64 %505, i64* %RCX.i407, align 8
  %506 = add i64 %489, 17
  store i64 %506, i64* %3, align 8
  %507 = trunc i32 %504 to i5
  switch i5 %507, label %511 [
    i5 0, label %routine_shll__cl___edi.exit756
    i5 1, label %508
  ]

; <label>:508:                                    ; preds = %routine_shll__cl___edi.exit792
  %509 = sext i16 %498 to i32
  %510 = icmp slt i16 %498, 0
  br label %519

; <label>:511:                                    ; preds = %routine_shll__cl___edi.exit792
  %512 = and i32 %504, 31
  %513 = zext i32 %512 to i64
  %514 = add nuw nsw i64 %513, 4294967295
  %515 = and i64 %514, 4294967295
  %516 = shl i64 %500, %515
  %517 = trunc i64 %516 to i32
  %518 = icmp slt i32 %517, 0
  br label %519

; <label>:519:                                    ; preds = %511, %508
  %520 = phi i1 [ %510, %508 ], [ %518, %511 ]
  %.in64 = phi i32 [ %509, %508 ], [ %517, %511 ]
  %521 = shl i32 %.in64, 1
  %522 = zext i32 %521 to i64
  store i64 %522, i64* %RDI.i263, align 8
  %523 = zext i1 %520 to i8
  store i8 %523, i8* %16, align 1
  %524 = and i32 %521, 254
  %525 = tail call i32 @llvm.ctpop.i32(i32 %524)
  %526 = trunc i32 %525 to i8
  %527 = and i8 %526, 1
  %528 = xor i8 %527, 1
  store i8 %528, i8* %22, align 1
  store i8 0, i8* %23, align 1
  %529 = icmp eq i32 %521, 0
  %530 = zext i1 %529 to i8
  store i8 %530, i8* %26, align 1
  %531 = lshr i32 %.in64, 30
  %532 = trunc i32 %531 to i8
  %533 = and i8 %532, 1
  store i8 %533, i8* %29, align 1
  store i8 0, i8* %30, align 1
  br label %routine_shll__cl___edi.exit756

routine_shll__cl___edi.exit756:                   ; preds = %519, %routine_shll__cl___edi.exit792
  %534 = add i64 %487, -12
  %535 = add i64 %489, 21
  store i64 %535, i64* %3, align 8
  %536 = inttoptr i64 %534 to i32*
  %537 = load i32, i32* %536, align 4
  %538 = sext i32 %537 to i64
  %539 = shl nsw i64 %538, 6
  store i64 %539, i64* %RAX.i898, align 8
  %.lobit12 = lshr i32 %537, 31
  %540 = trunc i32 %.lobit12 to i8
  store i8 %540, i8* %16, align 1
  %541 = trunc i64 %539 to i32
  %542 = and i32 %541, 192
  %543 = tail call i32 @llvm.ctpop.i32(i32 %542)
  %544 = trunc i32 %543 to i8
  %545 = and i8 %544, 1
  %546 = xor i8 %545, 1
  store i8 %546, i8* %22, align 1
  store i8 0, i8* %23, align 1
  %547 = icmp eq i32 %537, 0
  %548 = zext i1 %547 to i8
  store i8 %548, i8* %26, align 1
  %549 = lshr i64 %538, 57
  %550 = trunc i64 %549 to i8
  %551 = and i8 %550, 1
  store i8 %551, i8* %29, align 1
  store i8 0, i8* %30, align 1
  %552 = add i64 %487, -32
  %553 = add i64 %489, 29
  store i64 %553, i64* %3, align 8
  %554 = inttoptr i64 %552 to i64*
  %555 = load i64, i64* %554, align 8
  %556 = add i64 %539, %555
  store i64 %556, i64* %RDX.i268, align 8
  %557 = icmp ult i64 %556, %555
  %558 = icmp ult i64 %556, %539
  %559 = or i1 %557, %558
  %560 = zext i1 %559 to i8
  store i8 %560, i8* %16, align 1
  %561 = trunc i64 %556 to i32
  %562 = and i32 %561, 255
  %563 = tail call i32 @llvm.ctpop.i32(i32 %562)
  %564 = trunc i32 %563 to i8
  %565 = and i8 %564, 1
  %566 = xor i8 %565, 1
  store i8 %566, i8* %22, align 1
  %567 = xor i64 %555, %556
  %568 = lshr i64 %567, 4
  %569 = trunc i64 %568 to i8
  %570 = and i8 %569, 1
  store i8 %570, i8* %23, align 1
  %571 = icmp eq i64 %556, 0
  %572 = zext i1 %571 to i8
  store i8 %572, i8* %26, align 1
  %573 = lshr i64 %556, 63
  %574 = trunc i64 %573 to i8
  store i8 %574, i8* %29, align 1
  %575 = lshr i64 %555, 63
  %576 = lshr i64 %538, 57
  %577 = and i64 %576, 1
  %578 = xor i64 %573, %575
  %579 = xor i64 %573, %577
  %580 = add nuw nsw i64 %578, %579
  %581 = icmp eq i64 %580, 2
  %582 = zext i1 %581 to i8
  store i8 %582, i8* %30, align 1
  %583 = add i64 %487, -8
  %584 = add i64 %489, 36
  store i64 %584, i64* %3, align 8
  %585 = inttoptr i64 %583 to i32*
  %586 = load i32, i32* %585, align 4
  %587 = sext i32 %586 to i64
  %588 = shl nsw i64 %587, 4
  store i64 %588, i64* %RAX.i898, align 8
  %589 = add i64 %588, %556
  store i64 %589, i64* %RDX.i268, align 8
  %590 = icmp ult i64 %589, %556
  %591 = icmp ult i64 %589, %588
  %592 = or i1 %590, %591
  %593 = zext i1 %592 to i8
  store i8 %593, i8* %16, align 1
  %594 = trunc i64 %589 to i32
  %595 = and i32 %594, 255
  %596 = tail call i32 @llvm.ctpop.i32(i32 %595)
  %597 = trunc i32 %596 to i8
  %598 = and i8 %597, 1
  %599 = xor i8 %598, 1
  store i8 %599, i8* %22, align 1
  %600 = xor i64 %588, %556
  %601 = xor i64 %600, %589
  %602 = lshr i64 %601, 4
  %603 = trunc i64 %602 to i8
  %604 = and i8 %603, 1
  store i8 %604, i8* %23, align 1
  %605 = icmp eq i64 %589, 0
  %606 = zext i1 %605 to i8
  store i8 %606, i8* %26, align 1
  %607 = lshr i64 %589, 63
  %608 = trunc i64 %607 to i8
  store i8 %608, i8* %29, align 1
  %609 = lshr i64 %587, 59
  %610 = and i64 %609, 1
  %611 = xor i64 %607, %573
  %612 = xor i64 %607, %610
  %613 = add nuw nsw i64 %611, %612
  %614 = icmp eq i64 %613, 2
  %615 = zext i1 %614 to i8
  store i8 %615, i8* %30, align 1
  %616 = load i64, i64* %RBP.i, align 8
  %617 = add i64 %616, -4
  %618 = add i64 %489, 47
  store i64 %618, i64* %3, align 8
  %619 = inttoptr i64 %617 to i32*
  %620 = load i32, i32* %619, align 4
  %621 = sext i32 %620 to i64
  store i64 %621, i64* %RAX.i898, align 8
  %622 = shl nsw i64 %621, 2
  %623 = add i64 %622, %589
  %624 = load i32, i32* %EDI.i226, align 4
  %625 = add i64 %489, 50
  store i64 %625, i64* %3, align 8
  %626 = inttoptr i64 %623 to i32*
  store i32 %624, i32* %626, align 4
  %627 = load i64, i64* %3, align 8
  %628 = add i64 %627, 185
  store i64 %628, i64* %3, align 8
  br label %block_.L_47ba43

block_.L_47b98f:                                  ; preds = %block_47b8b8
  %629 = add nsw i64 %230, 7404992
  %630 = add i64 %223, 42
  store i64 %630, i64* %3, align 8
  %631 = inttoptr i64 %629 to i16*
  %632 = load i16, i16* %631, align 2
  %633 = sext i16 %632 to i64
  %634 = and i64 %633, 4294967295
  store i64 %634, i64* %RDI.i263, align 8
  %635 = add i64 %224, -20
  %636 = add i64 %223, 46
  store i64 %636, i64* %3, align 8
  %637 = inttoptr i64 %635 to i32*
  %638 = load i32, i32* %637, align 4
  %639 = zext i32 %638 to i64
  store i64 %639, i64* %37, align 8
  %640 = add i64 %224, -40
  %641 = add i64 %223, 50
  store i64 %641, i64* %3, align 8
  %642 = inttoptr i64 %640 to i64*
  store i64 7491360, i64* %642, align 8
  %643 = load i32, i32* %R8D.i259, align 4
  %644 = zext i32 %643 to i64
  %645 = load i64, i64* %3, align 8
  store i64 %644, i64* %RCX.i407, align 8
  %646 = load i64, i64* %RDI.i263, align 8
  %647 = add i64 %645, 5
  store i64 %647, i64* %3, align 8
  %648 = trunc i32 %643 to i5
  switch i5 %648, label %655 [
    i5 0, label %routine_shll__cl___edi.exit701
    i5 1, label %649
  ]

; <label>:649:                                    ; preds = %block_.L_47b98f
  %650 = trunc i64 %646 to i32
  %651 = shl i32 %650, 1
  %652 = icmp slt i32 %650, 0
  %653 = icmp slt i32 %651, 0
  %654 = xor i1 %652, %653
  br label %665

; <label>:655:                                    ; preds = %block_.L_47b98f
  %656 = and i32 %643, 31
  %657 = zext i32 %656 to i64
  %658 = add nuw nsw i64 %657, 4294967295
  %659 = and i64 %646, 4294967295
  %660 = and i64 %658, 4294967295
  %661 = shl i64 %659, %660
  %662 = trunc i64 %661 to i32
  %663 = icmp slt i32 %662, 0
  %664 = shl i32 %662, 1
  br label %665

; <label>:665:                                    ; preds = %655, %649
  %666 = phi i1 [ %652, %649 ], [ %663, %655 ]
  %667 = phi i1 [ %654, %649 ], [ false, %655 ]
  %668 = phi i32 [ %651, %649 ], [ %664, %655 ]
  %669 = zext i32 %668 to i64
  store i64 %669, i64* %RDI.i263, align 8
  %670 = zext i1 %666 to i8
  store i8 %670, i8* %16, align 1
  %671 = and i32 %668, 254
  %672 = tail call i32 @llvm.ctpop.i32(i32 %671)
  %673 = trunc i32 %672 to i8
  %674 = and i8 %673, 1
  %675 = xor i8 %674, 1
  store i8 %675, i8* %22, align 1
  store i8 0, i8* %23, align 1
  %676 = icmp eq i32 %668, 0
  %677 = zext i1 %676 to i8
  store i8 %677, i8* %26, align 1
  %678 = lshr i32 %668, 31
  %679 = trunc i32 %678 to i8
  store i8 %679, i8* %29, align 1
  %680 = zext i1 %667 to i8
  store i8 %680, i8* %30, align 1
  br label %routine_shll__cl___edi.exit701

routine_shll__cl___edi.exit701:                   ; preds = %665, %block_.L_47b98f
  %681 = load i64, i64* %RBP.i, align 8
  %682 = add i64 %681, -12
  %683 = add i64 %645, 9
  store i64 %683, i64* %3, align 8
  %684 = inttoptr i64 %682 to i32*
  %685 = load i32, i32* %684, align 4
  %686 = sext i32 %685 to i64
  %687 = shl nsw i64 %686, 6
  store i64 %687, i64* %RSI.i265, align 8
  %688 = load i64, i64* %RDX.i268, align 8
  %689 = add i64 %687, %688
  store i64 %689, i64* %RDX.i268, align 8
  %690 = icmp ult i64 %689, %688
  %691 = icmp ult i64 %689, %687
  %692 = or i1 %690, %691
  %693 = zext i1 %692 to i8
  store i8 %693, i8* %16, align 1
  %694 = trunc i64 %689 to i32
  %695 = and i32 %694, 255
  %696 = tail call i32 @llvm.ctpop.i32(i32 %695)
  %697 = trunc i32 %696 to i8
  %698 = and i8 %697, 1
  %699 = xor i8 %698, 1
  store i8 %699, i8* %22, align 1
  %700 = xor i64 %688, %689
  %701 = lshr i64 %700, 4
  %702 = trunc i64 %701 to i8
  %703 = and i8 %702, 1
  store i8 %703, i8* %23, align 1
  %704 = icmp eq i64 %689, 0
  %705 = zext i1 %704 to i8
  store i8 %705, i8* %26, align 1
  %706 = lshr i64 %689, 63
  %707 = trunc i64 %706 to i8
  store i8 %707, i8* %29, align 1
  %708 = lshr i64 %688, 63
  %709 = lshr i64 %686, 57
  %710 = and i64 %709, 1
  %711 = xor i64 %706, %708
  %712 = xor i64 %706, %710
  %713 = add nuw nsw i64 %711, %712
  %714 = icmp eq i64 %713, 2
  %715 = zext i1 %714 to i8
  store i8 %715, i8* %30, align 1
  %716 = add i64 %681, -8
  %717 = add i64 %645, 20
  store i64 %717, i64* %3, align 8
  %718 = inttoptr i64 %716 to i32*
  %719 = load i32, i32* %718, align 4
  %720 = sext i32 %719 to i64
  %721 = shl nsw i64 %720, 4
  store i64 %721, i64* %RSI.i265, align 8
  %722 = add i64 %721, %689
  store i64 %722, i64* %RDX.i268, align 8
  %723 = icmp ult i64 %722, %689
  %724 = icmp ult i64 %722, %721
  %725 = or i1 %723, %724
  %726 = zext i1 %725 to i8
  store i8 %726, i8* %16, align 1
  %727 = trunc i64 %722 to i32
  %728 = and i32 %727, 255
  %729 = tail call i32 @llvm.ctpop.i32(i32 %728)
  %730 = trunc i32 %729 to i8
  %731 = and i8 %730, 1
  %732 = xor i8 %731, 1
  store i8 %732, i8* %22, align 1
  %733 = xor i64 %721, %689
  %734 = xor i64 %733, %722
  %735 = lshr i64 %734, 4
  %736 = trunc i64 %735 to i8
  %737 = and i8 %736, 1
  store i8 %737, i8* %23, align 1
  %738 = icmp eq i64 %722, 0
  %739 = zext i1 %738 to i8
  store i8 %739, i8* %26, align 1
  %740 = lshr i64 %722, 63
  %741 = trunc i64 %740 to i8
  store i8 %741, i8* %29, align 1
  %742 = lshr i64 %720, 59
  %743 = and i64 %742, 1
  %744 = xor i64 %740, %706
  %745 = xor i64 %740, %743
  %746 = add nuw nsw i64 %744, %745
  %747 = icmp eq i64 %746, 2
  %748 = zext i1 %747 to i8
  store i8 %748, i8* %30, align 1
  %749 = load i64, i64* %RBP.i, align 8
  %750 = add i64 %749, -4
  %751 = add i64 %645, 31
  store i64 %751, i64* %3, align 8
  %752 = inttoptr i64 %750 to i32*
  %753 = load i32, i32* %752, align 4
  %754 = sext i32 %753 to i64
  store i64 %754, i64* %RSI.i265, align 8
  %755 = shl nsw i64 %754, 2
  %756 = add i64 %755, %722
  %757 = load i32, i32* %EDI.i226, align 4
  %758 = add i64 %645, 34
  store i64 %758, i64* %3, align 8
  %759 = inttoptr i64 %756 to i32*
  store i32 %757, i32* %759, align 4
  %760 = load i64, i64* %RBP.i, align 8
  %761 = add i64 %760, -16
  %762 = load i64, i64* %3, align 8
  %763 = add i64 %762, 4
  store i64 %763, i64* %3, align 8
  %764 = inttoptr i64 %761 to i32*
  %765 = load i32, i32* %764, align 4
  %766 = sext i32 %765 to i64
  store i64 %766, i64* %RDX.i268, align 8
  %767 = shl nsw i64 %766, 1
  %768 = add nsw i64 %767, 7405024
  %769 = add i64 %762, 12
  store i64 %769, i64* %3, align 8
  %770 = inttoptr i64 %768 to i16*
  %771 = load i16, i16* %770, align 2
  %772 = sext i16 %771 to i64
  %773 = and i64 %772, 4294967295
  store i64 %773, i64* %RDI.i263, align 8
  %774 = add i64 %760, -20
  %775 = add i64 %762, 15
  store i64 %775, i64* %3, align 8
  %776 = inttoptr i64 %774 to i32*
  %777 = load i32, i32* %776, align 4
  %778 = zext i32 %777 to i64
  store i64 %778, i64* %RCX.i407, align 8
  %779 = add i64 %762, 17
  store i64 %779, i64* %3, align 8
  %780 = trunc i32 %777 to i5
  switch i5 %780, label %784 [
    i5 0, label %routine_shll__cl___edi.exit665
    i5 1, label %781
  ]

; <label>:781:                                    ; preds = %routine_shll__cl___edi.exit701
  %782 = sext i16 %771 to i32
  %783 = icmp slt i16 %771, 0
  br label %792

; <label>:784:                                    ; preds = %routine_shll__cl___edi.exit701
  %785 = and i32 %777, 31
  %786 = zext i32 %785 to i64
  %787 = add nuw nsw i64 %786, 4294967295
  %788 = and i64 %787, 4294967295
  %789 = shl i64 %773, %788
  %790 = trunc i64 %789 to i32
  %791 = icmp slt i32 %790, 0
  br label %792

; <label>:792:                                    ; preds = %784, %781
  %793 = phi i1 [ %783, %781 ], [ %791, %784 ]
  %.in67 = phi i32 [ %782, %781 ], [ %790, %784 ]
  %794 = shl i32 %.in67, 1
  %795 = zext i32 %794 to i64
  store i64 %795, i64* %RDI.i263, align 8
  %796 = zext i1 %793 to i8
  store i8 %796, i8* %16, align 1
  %797 = and i32 %794, 254
  %798 = tail call i32 @llvm.ctpop.i32(i32 %797)
  %799 = trunc i32 %798 to i8
  %800 = and i8 %799, 1
  %801 = xor i8 %800, 1
  store i8 %801, i8* %22, align 1
  store i8 0, i8* %23, align 1
  %802 = icmp eq i32 %794, 0
  %803 = zext i1 %802 to i8
  store i8 %803, i8* %26, align 1
  %804 = lshr i32 %.in67, 30
  %805 = trunc i32 %804 to i8
  %806 = and i8 %805, 1
  store i8 %806, i8* %29, align 1
  store i8 0, i8* %30, align 1
  br label %routine_shll__cl___edi.exit665

routine_shll__cl___edi.exit665:                   ; preds = %792, %routine_shll__cl___edi.exit701
  %807 = add i64 %760, -12
  %808 = add i64 %762, 21
  store i64 %808, i64* %3, align 8
  %809 = inttoptr i64 %807 to i32*
  %810 = load i32, i32* %809, align 4
  %811 = sext i32 %810 to i64
  %812 = shl nsw i64 %811, 6
  store i64 %812, i64* %RDX.i268, align 8
  %813 = load i64, i64* %RAX.i898, align 8
  %814 = add i64 %812, %813
  store i64 %814, i64* %RAX.i898, align 8
  %815 = icmp ult i64 %814, %813
  %816 = icmp ult i64 %814, %812
  %817 = or i1 %815, %816
  %818 = zext i1 %817 to i8
  store i8 %818, i8* %16, align 1
  %819 = trunc i64 %814 to i32
  %820 = and i32 %819, 255
  %821 = tail call i32 @llvm.ctpop.i32(i32 %820)
  %822 = trunc i32 %821 to i8
  %823 = and i8 %822, 1
  %824 = xor i8 %823, 1
  store i8 %824, i8* %22, align 1
  %825 = xor i64 %813, %814
  %826 = lshr i64 %825, 4
  %827 = trunc i64 %826 to i8
  %828 = and i8 %827, 1
  store i8 %828, i8* %23, align 1
  %829 = icmp eq i64 %814, 0
  %830 = zext i1 %829 to i8
  store i8 %830, i8* %26, align 1
  %831 = lshr i64 %814, 63
  %832 = trunc i64 %831 to i8
  store i8 %832, i8* %29, align 1
  %833 = lshr i64 %813, 63
  %834 = lshr i64 %811, 57
  %835 = and i64 %834, 1
  %836 = xor i64 %831, %833
  %837 = xor i64 %831, %835
  %838 = add nuw nsw i64 %836, %837
  %839 = icmp eq i64 %838, 2
  %840 = zext i1 %839 to i8
  store i8 %840, i8* %30, align 1
  %841 = add i64 %760, -8
  %842 = add i64 %762, 32
  store i64 %842, i64* %3, align 8
  %843 = inttoptr i64 %841 to i32*
  %844 = load i32, i32* %843, align 4
  %845 = sext i32 %844 to i64
  %846 = shl nsw i64 %845, 4
  store i64 %846, i64* %RDX.i268, align 8
  %847 = add i64 %846, %814
  store i64 %847, i64* %RAX.i898, align 8
  %848 = icmp ult i64 %847, %814
  %849 = icmp ult i64 %847, %846
  %850 = or i1 %848, %849
  %851 = zext i1 %850 to i8
  store i8 %851, i8* %16, align 1
  %852 = trunc i64 %847 to i32
  %853 = and i32 %852, 255
  %854 = tail call i32 @llvm.ctpop.i32(i32 %853)
  %855 = trunc i32 %854 to i8
  %856 = and i8 %855, 1
  %857 = xor i8 %856, 1
  store i8 %857, i8* %22, align 1
  %858 = xor i64 %846, %814
  %859 = xor i64 %858, %847
  %860 = lshr i64 %859, 4
  %861 = trunc i64 %860 to i8
  %862 = and i8 %861, 1
  store i8 %862, i8* %23, align 1
  %863 = icmp eq i64 %847, 0
  %864 = zext i1 %863 to i8
  store i8 %864, i8* %26, align 1
  %865 = lshr i64 %847, 63
  %866 = trunc i64 %865 to i8
  store i8 %866, i8* %29, align 1
  %867 = lshr i64 %845, 59
  %868 = and i64 %867, 1
  %869 = xor i64 %865, %831
  %870 = xor i64 %865, %868
  %871 = add nuw nsw i64 %869, %870
  %872 = icmp eq i64 %871, 2
  %873 = zext i1 %872 to i8
  store i8 %873, i8* %30, align 1
  %874 = load i64, i64* %RBP.i, align 8
  %875 = add i64 %874, -4
  %876 = add i64 %762, 43
  store i64 %876, i64* %3, align 8
  %877 = inttoptr i64 %875 to i32*
  %878 = load i32, i32* %877, align 4
  %879 = sext i32 %878 to i64
  store i64 %879, i64* %RDX.i268, align 8
  %880 = shl nsw i64 %879, 2
  %881 = add i64 %880, %847
  %882 = load i32, i32* %EDI.i226, align 4
  %883 = add i64 %762, 46
  store i64 %883, i64* %3, align 8
  %884 = inttoptr i64 %881 to i32*
  store i32 %882, i32* %884, align 4
  %885 = load i64, i64* %RBP.i, align 8
  %886 = add i64 %885, -16
  %887 = load i64, i64* %3, align 8
  %888 = add i64 %887, 4
  store i64 %888, i64* %3, align 8
  %889 = inttoptr i64 %886 to i32*
  %890 = load i32, i32* %889, align 4
  %891 = sext i32 %890 to i64
  store i64 %891, i64* %RAX.i898, align 8
  %892 = shl nsw i64 %891, 1
  %893 = add nsw i64 %892, 7405056
  %894 = add i64 %887, 12
  store i64 %894, i64* %3, align 8
  %895 = inttoptr i64 %893 to i16*
  %896 = load i16, i16* %895, align 2
  %897 = sext i16 %896 to i64
  %898 = and i64 %897, 4294967295
  store i64 %898, i64* %RDI.i263, align 8
  %899 = add i64 %885, -20
  %900 = add i64 %887, 15
  store i64 %900, i64* %3, align 8
  %901 = inttoptr i64 %899 to i32*
  %902 = load i32, i32* %901, align 4
  %903 = zext i32 %902 to i64
  store i64 %903, i64* %RCX.i407, align 8
  %904 = add i64 %887, 17
  store i64 %904, i64* %3, align 8
  %905 = trunc i32 %902 to i5
  switch i5 %905, label %909 [
    i5 0, label %routine_shll__cl___edi.exit629
    i5 1, label %906
  ]

; <label>:906:                                    ; preds = %routine_shll__cl___edi.exit665
  %907 = sext i16 %896 to i32
  %908 = icmp slt i16 %896, 0
  br label %917

; <label>:909:                                    ; preds = %routine_shll__cl___edi.exit665
  %910 = and i32 %902, 31
  %911 = zext i32 %910 to i64
  %912 = add nuw nsw i64 %911, 4294967295
  %913 = and i64 %912, 4294967295
  %914 = shl i64 %898, %913
  %915 = trunc i64 %914 to i32
  %916 = icmp slt i32 %915, 0
  br label %917

; <label>:917:                                    ; preds = %909, %906
  %918 = phi i1 [ %908, %906 ], [ %916, %909 ]
  %.in68 = phi i32 [ %907, %906 ], [ %915, %909 ]
  %919 = shl i32 %.in68, 1
  %920 = zext i32 %919 to i64
  store i64 %920, i64* %RDI.i263, align 8
  %921 = zext i1 %918 to i8
  store i8 %921, i8* %16, align 1
  %922 = and i32 %919, 254
  %923 = tail call i32 @llvm.ctpop.i32(i32 %922)
  %924 = trunc i32 %923 to i8
  %925 = and i8 %924, 1
  %926 = xor i8 %925, 1
  store i8 %926, i8* %22, align 1
  store i8 0, i8* %23, align 1
  %927 = icmp eq i32 %919, 0
  %928 = zext i1 %927 to i8
  store i8 %928, i8* %26, align 1
  %929 = lshr i32 %.in68, 30
  %930 = trunc i32 %929 to i8
  %931 = and i8 %930, 1
  store i8 %931, i8* %29, align 1
  store i8 0, i8* %30, align 1
  br label %routine_shll__cl___edi.exit629

routine_shll__cl___edi.exit629:                   ; preds = %917, %routine_shll__cl___edi.exit665
  %932 = add i64 %885, -12
  %933 = add i64 %887, 21
  store i64 %933, i64* %3, align 8
  %934 = inttoptr i64 %932 to i32*
  %935 = load i32, i32* %934, align 4
  %936 = sext i32 %935 to i64
  %937 = shl nsw i64 %936, 6
  store i64 %937, i64* %RAX.i898, align 8
  %.lobit24 = lshr i32 %935, 31
  %938 = trunc i32 %.lobit24 to i8
  store i8 %938, i8* %16, align 1
  %939 = trunc i64 %937 to i32
  %940 = and i32 %939, 192
  %941 = tail call i32 @llvm.ctpop.i32(i32 %940)
  %942 = trunc i32 %941 to i8
  %943 = and i8 %942, 1
  %944 = xor i8 %943, 1
  store i8 %944, i8* %22, align 1
  store i8 0, i8* %23, align 1
  %945 = icmp eq i32 %935, 0
  %946 = zext i1 %945 to i8
  store i8 %946, i8* %26, align 1
  %947 = lshr i64 %936, 57
  %948 = trunc i64 %947 to i8
  %949 = and i8 %948, 1
  store i8 %949, i8* %29, align 1
  store i8 0, i8* %30, align 1
  %950 = add i64 %885, -40
  %951 = add i64 %887, 29
  store i64 %951, i64* %3, align 8
  %952 = inttoptr i64 %950 to i64*
  %953 = load i64, i64* %952, align 8
  %954 = add i64 %937, %953
  store i64 %954, i64* %RDX.i268, align 8
  %955 = icmp ult i64 %954, %953
  %956 = icmp ult i64 %954, %937
  %957 = or i1 %955, %956
  %958 = zext i1 %957 to i8
  store i8 %958, i8* %16, align 1
  %959 = trunc i64 %954 to i32
  %960 = and i32 %959, 255
  %961 = tail call i32 @llvm.ctpop.i32(i32 %960)
  %962 = trunc i32 %961 to i8
  %963 = and i8 %962, 1
  %964 = xor i8 %963, 1
  store i8 %964, i8* %22, align 1
  %965 = xor i64 %953, %954
  %966 = lshr i64 %965, 4
  %967 = trunc i64 %966 to i8
  %968 = and i8 %967, 1
  store i8 %968, i8* %23, align 1
  %969 = icmp eq i64 %954, 0
  %970 = zext i1 %969 to i8
  store i8 %970, i8* %26, align 1
  %971 = lshr i64 %954, 63
  %972 = trunc i64 %971 to i8
  store i8 %972, i8* %29, align 1
  %973 = lshr i64 %953, 63
  %974 = lshr i64 %936, 57
  %975 = and i64 %974, 1
  %976 = xor i64 %971, %973
  %977 = xor i64 %971, %975
  %978 = add nuw nsw i64 %976, %977
  %979 = icmp eq i64 %978, 2
  %980 = zext i1 %979 to i8
  store i8 %980, i8* %30, align 1
  %981 = add i64 %885, -8
  %982 = add i64 %887, 36
  store i64 %982, i64* %3, align 8
  %983 = inttoptr i64 %981 to i32*
  %984 = load i32, i32* %983, align 4
  %985 = sext i32 %984 to i64
  %986 = shl nsw i64 %985, 4
  store i64 %986, i64* %RAX.i898, align 8
  %987 = add i64 %986, %954
  store i64 %987, i64* %RDX.i268, align 8
  %988 = icmp ult i64 %987, %954
  %989 = icmp ult i64 %987, %986
  %990 = or i1 %988, %989
  %991 = zext i1 %990 to i8
  store i8 %991, i8* %16, align 1
  %992 = trunc i64 %987 to i32
  %993 = and i32 %992, 255
  %994 = tail call i32 @llvm.ctpop.i32(i32 %993)
  %995 = trunc i32 %994 to i8
  %996 = and i8 %995, 1
  %997 = xor i8 %996, 1
  store i8 %997, i8* %22, align 1
  %998 = xor i64 %986, %954
  %999 = xor i64 %998, %987
  %1000 = lshr i64 %999, 4
  %1001 = trunc i64 %1000 to i8
  %1002 = and i8 %1001, 1
  store i8 %1002, i8* %23, align 1
  %1003 = icmp eq i64 %987, 0
  %1004 = zext i1 %1003 to i8
  store i8 %1004, i8* %26, align 1
  %1005 = lshr i64 %987, 63
  %1006 = trunc i64 %1005 to i8
  store i8 %1006, i8* %29, align 1
  %1007 = lshr i64 %985, 59
  %1008 = and i64 %1007, 1
  %1009 = xor i64 %1005, %971
  %1010 = xor i64 %1005, %1008
  %1011 = add nuw nsw i64 %1009, %1010
  %1012 = icmp eq i64 %1011, 2
  %1013 = zext i1 %1012 to i8
  store i8 %1013, i8* %30, align 1
  %1014 = load i64, i64* %RBP.i, align 8
  %1015 = add i64 %1014, -4
  %1016 = add i64 %887, 47
  store i64 %1016, i64* %3, align 8
  %1017 = inttoptr i64 %1015 to i32*
  %1018 = load i32, i32* %1017, align 4
  %1019 = sext i32 %1018 to i64
  store i64 %1019, i64* %RAX.i898, align 8
  %1020 = shl nsw i64 %1019, 2
  %1021 = add i64 %1020, %987
  %1022 = load i32, i32* %EDI.i226, align 4
  %1023 = add i64 %887, 50
  store i64 %1023, i64* %3, align 8
  %1024 = inttoptr i64 %1021 to i32*
  store i32 %1022, i32* %1024, align 4
  %.pre57 = load i64, i64* %3, align 8
  br label %block_.L_47ba43

block_.L_47ba43:                                  ; preds = %routine_shll__cl___edi.exit629, %routine_shll__cl___edi.exit756
  %1025 = phi i64 [ %.pre57, %routine_shll__cl___edi.exit629 ], [ %628, %routine_shll__cl___edi.exit756 ]
  store i64 7397968, i64* %RAX.i898, align 8
  store i64 7398800, i64* %RCX.i407, align 8
  store i8 0, i8* %16, align 1
  store i8 1, i8* %22, align 1
  store i8 0, i8* %23, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %30, align 1
  store i64 7131024, i64* %RDX.i268, align 8
  %1026 = load i64, i64* %RBP.i, align 8
  %1027 = add i64 %1026, -16
  %1028 = add i64 %1025, 34
  store i64 %1028, i64* %3, align 8
  %1029 = inttoptr i64 %1027 to i32*
  %1030 = load i32, i32* %1029, align 4
  %1031 = sext i32 %1030 to i64
  store i64 %1031, i64* %RSI.i265, align 8
  %1032 = shl nsw i64 %1031, 1
  %1033 = add nsw i64 %1032, 7405088
  %1034 = add i64 %1025, 42
  store i64 %1034, i64* %3, align 8
  %1035 = inttoptr i64 %1033 to i16*
  %1036 = load i16, i16* %1035, align 2
  %1037 = sext i16 %1036 to i64
  %1038 = and i64 %1037, 4294967295
  store i64 %1038, i64* %RDI.i263, align 8
  %1039 = add i64 %1026, -20
  %1040 = add i64 %1025, 46
  store i64 %1040, i64* %3, align 8
  %1041 = inttoptr i64 %1039 to i32*
  %1042 = load i32, i32* %1041, align 4
  %1043 = zext i32 %1042 to i64
  store i64 %1043, i64* %37, align 8
  %1044 = add i64 %1026, -48
  %1045 = add i64 %1025, 50
  store i64 %1045, i64* %3, align 8
  %1046 = inttoptr i64 %1044 to i64*
  store i64 7398800, i64* %1046, align 8
  %1047 = load i32, i32* %R8D.i259, align 4
  %1048 = zext i32 %1047 to i64
  %1049 = load i64, i64* %3, align 8
  store i64 %1048, i64* %RCX.i407, align 8
  %1050 = load i64, i64* %RDI.i263, align 8
  %1051 = add i64 %1049, 5
  store i64 %1051, i64* %3, align 8
  %1052 = trunc i32 %1047 to i5
  switch i5 %1052, label %1059 [
    i5 0, label %routine_shll__cl___edi.exit575
    i5 1, label %1053
  ]

; <label>:1053:                                   ; preds = %block_.L_47ba43
  %1054 = trunc i64 %1050 to i32
  %1055 = shl i32 %1054, 1
  %1056 = icmp slt i32 %1054, 0
  %1057 = icmp slt i32 %1055, 0
  %1058 = xor i1 %1056, %1057
  br label %1069

; <label>:1059:                                   ; preds = %block_.L_47ba43
  %1060 = and i32 %1047, 31
  %1061 = zext i32 %1060 to i64
  %1062 = add nuw nsw i64 %1061, 4294967295
  %1063 = and i64 %1050, 4294967295
  %1064 = and i64 %1062, 4294967295
  %1065 = shl i64 %1063, %1064
  %1066 = trunc i64 %1065 to i32
  %1067 = icmp slt i32 %1066, 0
  %1068 = shl i32 %1066, 1
  br label %1069

; <label>:1069:                                   ; preds = %1059, %1053
  %1070 = phi i1 [ %1056, %1053 ], [ %1067, %1059 ]
  %1071 = phi i1 [ %1058, %1053 ], [ false, %1059 ]
  %1072 = phi i32 [ %1055, %1053 ], [ %1068, %1059 ]
  %1073 = zext i32 %1072 to i64
  store i64 %1073, i64* %RDI.i263, align 8
  %1074 = zext i1 %1070 to i8
  store i8 %1074, i8* %16, align 1
  %1075 = and i32 %1072, 254
  %1076 = tail call i32 @llvm.ctpop.i32(i32 %1075)
  %1077 = trunc i32 %1076 to i8
  %1078 = and i8 %1077, 1
  %1079 = xor i8 %1078, 1
  store i8 %1079, i8* %22, align 1
  store i8 0, i8* %23, align 1
  %1080 = icmp eq i32 %1072, 0
  %1081 = zext i1 %1080 to i8
  store i8 %1081, i8* %26, align 1
  %1082 = lshr i32 %1072, 31
  %1083 = trunc i32 %1082 to i8
  store i8 %1083, i8* %29, align 1
  %1084 = zext i1 %1071 to i8
  store i8 %1084, i8* %30, align 1
  br label %routine_shll__cl___edi.exit575

routine_shll__cl___edi.exit575:                   ; preds = %1069, %block_.L_47ba43
  %1085 = load i64, i64* %RBP.i, align 8
  %1086 = add i64 %1085, -12
  %1087 = add i64 %1049, 9
  store i64 %1087, i64* %3, align 8
  %1088 = inttoptr i64 %1086 to i32*
  %1089 = load i32, i32* %1088, align 4
  %1090 = sext i32 %1089 to i64
  %1091 = shl nsw i64 %1090, 6
  store i64 %1091, i64* %RSI.i265, align 8
  %1092 = load i64, i64* %RDX.i268, align 8
  %1093 = add i64 %1091, %1092
  store i64 %1093, i64* %RDX.i268, align 8
  %1094 = icmp ult i64 %1093, %1092
  %1095 = icmp ult i64 %1093, %1091
  %1096 = or i1 %1094, %1095
  %1097 = zext i1 %1096 to i8
  store i8 %1097, i8* %16, align 1
  %1098 = trunc i64 %1093 to i32
  %1099 = and i32 %1098, 255
  %1100 = tail call i32 @llvm.ctpop.i32(i32 %1099)
  %1101 = trunc i32 %1100 to i8
  %1102 = and i8 %1101, 1
  %1103 = xor i8 %1102, 1
  store i8 %1103, i8* %22, align 1
  %1104 = xor i64 %1092, %1093
  %1105 = lshr i64 %1104, 4
  %1106 = trunc i64 %1105 to i8
  %1107 = and i8 %1106, 1
  store i8 %1107, i8* %23, align 1
  %1108 = icmp eq i64 %1093, 0
  %1109 = zext i1 %1108 to i8
  store i8 %1109, i8* %26, align 1
  %1110 = lshr i64 %1093, 63
  %1111 = trunc i64 %1110 to i8
  store i8 %1111, i8* %29, align 1
  %1112 = lshr i64 %1092, 63
  %1113 = lshr i64 %1090, 57
  %1114 = and i64 %1113, 1
  %1115 = xor i64 %1110, %1112
  %1116 = xor i64 %1110, %1114
  %1117 = add nuw nsw i64 %1115, %1116
  %1118 = icmp eq i64 %1117, 2
  %1119 = zext i1 %1118 to i8
  store i8 %1119, i8* %30, align 1
  %1120 = add i64 %1085, -8
  %1121 = add i64 %1049, 20
  store i64 %1121, i64* %3, align 8
  %1122 = inttoptr i64 %1120 to i32*
  %1123 = load i32, i32* %1122, align 4
  %1124 = sext i32 %1123 to i64
  %1125 = shl nsw i64 %1124, 4
  store i64 %1125, i64* %RSI.i265, align 8
  %1126 = add i64 %1125, %1093
  store i64 %1126, i64* %RDX.i268, align 8
  %1127 = icmp ult i64 %1126, %1093
  %1128 = icmp ult i64 %1126, %1125
  %1129 = or i1 %1127, %1128
  %1130 = zext i1 %1129 to i8
  store i8 %1130, i8* %16, align 1
  %1131 = trunc i64 %1126 to i32
  %1132 = and i32 %1131, 255
  %1133 = tail call i32 @llvm.ctpop.i32(i32 %1132)
  %1134 = trunc i32 %1133 to i8
  %1135 = and i8 %1134, 1
  %1136 = xor i8 %1135, 1
  store i8 %1136, i8* %22, align 1
  %1137 = xor i64 %1125, %1093
  %1138 = xor i64 %1137, %1126
  %1139 = lshr i64 %1138, 4
  %1140 = trunc i64 %1139 to i8
  %1141 = and i8 %1140, 1
  store i8 %1141, i8* %23, align 1
  %1142 = icmp eq i64 %1126, 0
  %1143 = zext i1 %1142 to i8
  store i8 %1143, i8* %26, align 1
  %1144 = lshr i64 %1126, 63
  %1145 = trunc i64 %1144 to i8
  store i8 %1145, i8* %29, align 1
  %1146 = lshr i64 %1124, 59
  %1147 = and i64 %1146, 1
  %1148 = xor i64 %1144, %1110
  %1149 = xor i64 %1144, %1147
  %1150 = add nuw nsw i64 %1148, %1149
  %1151 = icmp eq i64 %1150, 2
  %1152 = zext i1 %1151 to i8
  store i8 %1152, i8* %30, align 1
  %1153 = load i64, i64* %RBP.i, align 8
  %1154 = add i64 %1153, -4
  %1155 = add i64 %1049, 31
  store i64 %1155, i64* %3, align 8
  %1156 = inttoptr i64 %1154 to i32*
  %1157 = load i32, i32* %1156, align 4
  %1158 = sext i32 %1157 to i64
  store i64 %1158, i64* %RSI.i265, align 8
  %1159 = shl nsw i64 %1158, 2
  %1160 = add i64 %1159, %1126
  %1161 = load i32, i32* %EDI.i226, align 4
  %1162 = add i64 %1049, 34
  store i64 %1162, i64* %3, align 8
  %1163 = inttoptr i64 %1160 to i32*
  store i32 %1161, i32* %1163, align 4
  %1164 = load i64, i64* %RBP.i, align 8
  %1165 = add i64 %1164, -16
  %1166 = load i64, i64* %3, align 8
  %1167 = add i64 %1166, 4
  store i64 %1167, i64* %3, align 8
  %1168 = inttoptr i64 %1165 to i32*
  %1169 = load i32, i32* %1168, align 4
  %1170 = sext i32 %1169 to i64
  store i64 %1170, i64* %RDX.i268, align 8
  %1171 = shl nsw i64 %1170, 1
  %1172 = add nsw i64 %1171, 7405120
  %1173 = add i64 %1166, 12
  store i64 %1173, i64* %3, align 8
  %1174 = inttoptr i64 %1172 to i16*
  %1175 = load i16, i16* %1174, align 2
  %1176 = sext i16 %1175 to i64
  %1177 = and i64 %1176, 4294967295
  store i64 %1177, i64* %RDI.i263, align 8
  %1178 = add i64 %1164, -20
  %1179 = add i64 %1166, 15
  store i64 %1179, i64* %3, align 8
  %1180 = inttoptr i64 %1178 to i32*
  %1181 = load i32, i32* %1180, align 4
  %1182 = zext i32 %1181 to i64
  store i64 %1182, i64* %RCX.i407, align 8
  %1183 = add i64 %1166, 17
  store i64 %1183, i64* %3, align 8
  %1184 = trunc i32 %1181 to i5
  switch i5 %1184, label %1188 [
    i5 0, label %routine_shll__cl___edi.exit539
    i5 1, label %1185
  ]

; <label>:1185:                                   ; preds = %routine_shll__cl___edi.exit575
  %1186 = sext i16 %1175 to i32
  %1187 = icmp slt i16 %1175, 0
  br label %1196

; <label>:1188:                                   ; preds = %routine_shll__cl___edi.exit575
  %1189 = and i32 %1181, 31
  %1190 = zext i32 %1189 to i64
  %1191 = add nuw nsw i64 %1190, 4294967295
  %1192 = and i64 %1191, 4294967295
  %1193 = shl i64 %1177, %1192
  %1194 = trunc i64 %1193 to i32
  %1195 = icmp slt i32 %1194, 0
  br label %1196

; <label>:1196:                                   ; preds = %1188, %1185
  %1197 = phi i1 [ %1187, %1185 ], [ %1195, %1188 ]
  %.in65 = phi i32 [ %1186, %1185 ], [ %1194, %1188 ]
  %1198 = shl i32 %.in65, 1
  %1199 = zext i32 %1198 to i64
  store i64 %1199, i64* %RDI.i263, align 8
  %1200 = zext i1 %1197 to i8
  store i8 %1200, i8* %16, align 1
  %1201 = and i32 %1198, 254
  %1202 = tail call i32 @llvm.ctpop.i32(i32 %1201)
  %1203 = trunc i32 %1202 to i8
  %1204 = and i8 %1203, 1
  %1205 = xor i8 %1204, 1
  store i8 %1205, i8* %22, align 1
  store i8 0, i8* %23, align 1
  %1206 = icmp eq i32 %1198, 0
  %1207 = zext i1 %1206 to i8
  store i8 %1207, i8* %26, align 1
  %1208 = lshr i32 %.in65, 30
  %1209 = trunc i32 %1208 to i8
  %1210 = and i8 %1209, 1
  store i8 %1210, i8* %29, align 1
  store i8 0, i8* %30, align 1
  br label %routine_shll__cl___edi.exit539

routine_shll__cl___edi.exit539:                   ; preds = %1196, %routine_shll__cl___edi.exit575
  %1211 = add i64 %1164, -12
  %1212 = add i64 %1166, 21
  store i64 %1212, i64* %3, align 8
  %1213 = inttoptr i64 %1211 to i32*
  %1214 = load i32, i32* %1213, align 4
  %1215 = sext i32 %1214 to i64
  %1216 = shl nsw i64 %1215, 6
  store i64 %1216, i64* %RDX.i268, align 8
  %1217 = load i64, i64* %RAX.i898, align 8
  %1218 = add i64 %1216, %1217
  store i64 %1218, i64* %RAX.i898, align 8
  %1219 = icmp ult i64 %1218, %1217
  %1220 = icmp ult i64 %1218, %1216
  %1221 = or i1 %1219, %1220
  %1222 = zext i1 %1221 to i8
  store i8 %1222, i8* %16, align 1
  %1223 = trunc i64 %1218 to i32
  %1224 = and i32 %1223, 255
  %1225 = tail call i32 @llvm.ctpop.i32(i32 %1224)
  %1226 = trunc i32 %1225 to i8
  %1227 = and i8 %1226, 1
  %1228 = xor i8 %1227, 1
  store i8 %1228, i8* %22, align 1
  %1229 = xor i64 %1217, %1218
  %1230 = lshr i64 %1229, 4
  %1231 = trunc i64 %1230 to i8
  %1232 = and i8 %1231, 1
  store i8 %1232, i8* %23, align 1
  %1233 = icmp eq i64 %1218, 0
  %1234 = zext i1 %1233 to i8
  store i8 %1234, i8* %26, align 1
  %1235 = lshr i64 %1218, 63
  %1236 = trunc i64 %1235 to i8
  store i8 %1236, i8* %29, align 1
  %1237 = lshr i64 %1217, 63
  %1238 = lshr i64 %1215, 57
  %1239 = and i64 %1238, 1
  %1240 = xor i64 %1235, %1237
  %1241 = xor i64 %1235, %1239
  %1242 = add nuw nsw i64 %1240, %1241
  %1243 = icmp eq i64 %1242, 2
  %1244 = zext i1 %1243 to i8
  store i8 %1244, i8* %30, align 1
  %1245 = add i64 %1164, -8
  %1246 = add i64 %1166, 32
  store i64 %1246, i64* %3, align 8
  %1247 = inttoptr i64 %1245 to i32*
  %1248 = load i32, i32* %1247, align 4
  %1249 = sext i32 %1248 to i64
  %1250 = shl nsw i64 %1249, 4
  store i64 %1250, i64* %RDX.i268, align 8
  %1251 = add i64 %1250, %1218
  store i64 %1251, i64* %RAX.i898, align 8
  %1252 = icmp ult i64 %1251, %1218
  %1253 = icmp ult i64 %1251, %1250
  %1254 = or i1 %1252, %1253
  %1255 = zext i1 %1254 to i8
  store i8 %1255, i8* %16, align 1
  %1256 = trunc i64 %1251 to i32
  %1257 = and i32 %1256, 255
  %1258 = tail call i32 @llvm.ctpop.i32(i32 %1257)
  %1259 = trunc i32 %1258 to i8
  %1260 = and i8 %1259, 1
  %1261 = xor i8 %1260, 1
  store i8 %1261, i8* %22, align 1
  %1262 = xor i64 %1250, %1218
  %1263 = xor i64 %1262, %1251
  %1264 = lshr i64 %1263, 4
  %1265 = trunc i64 %1264 to i8
  %1266 = and i8 %1265, 1
  store i8 %1266, i8* %23, align 1
  %1267 = icmp eq i64 %1251, 0
  %1268 = zext i1 %1267 to i8
  store i8 %1268, i8* %26, align 1
  %1269 = lshr i64 %1251, 63
  %1270 = trunc i64 %1269 to i8
  store i8 %1270, i8* %29, align 1
  %1271 = lshr i64 %1249, 59
  %1272 = and i64 %1271, 1
  %1273 = xor i64 %1269, %1235
  %1274 = xor i64 %1269, %1272
  %1275 = add nuw nsw i64 %1273, %1274
  %1276 = icmp eq i64 %1275, 2
  %1277 = zext i1 %1276 to i8
  store i8 %1277, i8* %30, align 1
  %1278 = load i64, i64* %RBP.i, align 8
  %1279 = add i64 %1278, -4
  %1280 = add i64 %1166, 43
  store i64 %1280, i64* %3, align 8
  %1281 = inttoptr i64 %1279 to i32*
  %1282 = load i32, i32* %1281, align 4
  %1283 = sext i32 %1282 to i64
  store i64 %1283, i64* %RDX.i268, align 8
  %1284 = shl nsw i64 %1283, 2
  %1285 = add i64 %1284, %1251
  %1286 = load i32, i32* %EDI.i226, align 4
  %1287 = add i64 %1166, 46
  store i64 %1287, i64* %3, align 8
  %1288 = inttoptr i64 %1285 to i32*
  store i32 %1286, i32* %1288, align 4
  %1289 = load i64, i64* %RBP.i, align 8
  %1290 = add i64 %1289, -16
  %1291 = load i64, i64* %3, align 8
  %1292 = add i64 %1291, 4
  store i64 %1292, i64* %3, align 8
  %1293 = inttoptr i64 %1290 to i32*
  %1294 = load i32, i32* %1293, align 4
  %1295 = sext i32 %1294 to i64
  store i64 %1295, i64* %RAX.i898, align 8
  %1296 = shl nsw i64 %1295, 1
  %1297 = add nsw i64 %1296, 7405152
  %1298 = add i64 %1291, 12
  store i64 %1298, i64* %3, align 8
  %1299 = inttoptr i64 %1297 to i16*
  %1300 = load i16, i16* %1299, align 2
  %1301 = sext i16 %1300 to i64
  %1302 = and i64 %1301, 4294967295
  store i64 %1302, i64* %RDI.i263, align 8
  %1303 = add i64 %1289, -20
  %1304 = add i64 %1291, 15
  store i64 %1304, i64* %3, align 8
  %1305 = inttoptr i64 %1303 to i32*
  %1306 = load i32, i32* %1305, align 4
  %1307 = zext i32 %1306 to i64
  store i64 %1307, i64* %RCX.i407, align 8
  %1308 = add i64 %1291, 17
  store i64 %1308, i64* %3, align 8
  %1309 = trunc i32 %1306 to i5
  switch i5 %1309, label %1313 [
    i5 0, label %routine_shll__cl___edi.exit503
    i5 1, label %1310
  ]

; <label>:1310:                                   ; preds = %routine_shll__cl___edi.exit539
  %1311 = sext i16 %1300 to i32
  %1312 = icmp slt i16 %1300, 0
  br label %1321

; <label>:1313:                                   ; preds = %routine_shll__cl___edi.exit539
  %1314 = and i32 %1306, 31
  %1315 = zext i32 %1314 to i64
  %1316 = add nuw nsw i64 %1315, 4294967295
  %1317 = and i64 %1316, 4294967295
  %1318 = shl i64 %1302, %1317
  %1319 = trunc i64 %1318 to i32
  %1320 = icmp slt i32 %1319, 0
  br label %1321

; <label>:1321:                                   ; preds = %1313, %1310
  %1322 = phi i1 [ %1312, %1310 ], [ %1320, %1313 ]
  %.in66 = phi i32 [ %1311, %1310 ], [ %1319, %1313 ]
  %1323 = shl i32 %.in66, 1
  %1324 = zext i32 %1323 to i64
  store i64 %1324, i64* %RDI.i263, align 8
  %1325 = zext i1 %1322 to i8
  store i8 %1325, i8* %16, align 1
  %1326 = and i32 %1323, 254
  %1327 = tail call i32 @llvm.ctpop.i32(i32 %1326)
  %1328 = trunc i32 %1327 to i8
  %1329 = and i8 %1328, 1
  %1330 = xor i8 %1329, 1
  store i8 %1330, i8* %22, align 1
  store i8 0, i8* %23, align 1
  %1331 = icmp eq i32 %1323, 0
  %1332 = zext i1 %1331 to i8
  store i8 %1332, i8* %26, align 1
  %1333 = lshr i32 %.in66, 30
  %1334 = trunc i32 %1333 to i8
  %1335 = and i8 %1334, 1
  store i8 %1335, i8* %29, align 1
  store i8 0, i8* %30, align 1
  br label %routine_shll__cl___edi.exit503

routine_shll__cl___edi.exit503:                   ; preds = %1321, %routine_shll__cl___edi.exit539
  %1336 = add i64 %1289, -12
  %1337 = add i64 %1291, 21
  store i64 %1337, i64* %3, align 8
  %1338 = inttoptr i64 %1336 to i32*
  %1339 = load i32, i32* %1338, align 4
  %1340 = sext i32 %1339 to i64
  %1341 = shl nsw i64 %1340, 6
  store i64 %1341, i64* %RAX.i898, align 8
  %.lobit18 = lshr i32 %1339, 31
  %1342 = trunc i32 %.lobit18 to i8
  store i8 %1342, i8* %16, align 1
  %1343 = trunc i64 %1341 to i32
  %1344 = and i32 %1343, 192
  %1345 = tail call i32 @llvm.ctpop.i32(i32 %1344)
  %1346 = trunc i32 %1345 to i8
  %1347 = and i8 %1346, 1
  %1348 = xor i8 %1347, 1
  store i8 %1348, i8* %22, align 1
  store i8 0, i8* %23, align 1
  %1349 = icmp eq i32 %1339, 0
  %1350 = zext i1 %1349 to i8
  store i8 %1350, i8* %26, align 1
  %1351 = lshr i64 %1340, 57
  %1352 = trunc i64 %1351 to i8
  %1353 = and i8 %1352, 1
  store i8 %1353, i8* %29, align 1
  store i8 0, i8* %30, align 1
  %1354 = add i64 %1289, -48
  %1355 = add i64 %1291, 29
  store i64 %1355, i64* %3, align 8
  %1356 = inttoptr i64 %1354 to i64*
  %1357 = load i64, i64* %1356, align 8
  %1358 = add i64 %1341, %1357
  store i64 %1358, i64* %RDX.i268, align 8
  %1359 = icmp ult i64 %1358, %1357
  %1360 = icmp ult i64 %1358, %1341
  %1361 = or i1 %1359, %1360
  %1362 = zext i1 %1361 to i8
  store i8 %1362, i8* %16, align 1
  %1363 = trunc i64 %1358 to i32
  %1364 = and i32 %1363, 255
  %1365 = tail call i32 @llvm.ctpop.i32(i32 %1364)
  %1366 = trunc i32 %1365 to i8
  %1367 = and i8 %1366, 1
  %1368 = xor i8 %1367, 1
  store i8 %1368, i8* %22, align 1
  %1369 = xor i64 %1357, %1358
  %1370 = lshr i64 %1369, 4
  %1371 = trunc i64 %1370 to i8
  %1372 = and i8 %1371, 1
  store i8 %1372, i8* %23, align 1
  %1373 = icmp eq i64 %1358, 0
  %1374 = zext i1 %1373 to i8
  store i8 %1374, i8* %26, align 1
  %1375 = lshr i64 %1358, 63
  %1376 = trunc i64 %1375 to i8
  store i8 %1376, i8* %29, align 1
  %1377 = lshr i64 %1357, 63
  %1378 = lshr i64 %1340, 57
  %1379 = and i64 %1378, 1
  %1380 = xor i64 %1375, %1377
  %1381 = xor i64 %1375, %1379
  %1382 = add nuw nsw i64 %1380, %1381
  %1383 = icmp eq i64 %1382, 2
  %1384 = zext i1 %1383 to i8
  store i8 %1384, i8* %30, align 1
  %1385 = add i64 %1289, -8
  %1386 = add i64 %1291, 36
  store i64 %1386, i64* %3, align 8
  %1387 = inttoptr i64 %1385 to i32*
  %1388 = load i32, i32* %1387, align 4
  %1389 = sext i32 %1388 to i64
  %1390 = shl nsw i64 %1389, 4
  store i64 %1390, i64* %RAX.i898, align 8
  %1391 = add i64 %1390, %1358
  store i64 %1391, i64* %RDX.i268, align 8
  %1392 = icmp ult i64 %1391, %1358
  %1393 = icmp ult i64 %1391, %1390
  %1394 = or i1 %1392, %1393
  %1395 = zext i1 %1394 to i8
  store i8 %1395, i8* %16, align 1
  %1396 = trunc i64 %1391 to i32
  %1397 = and i32 %1396, 255
  %1398 = tail call i32 @llvm.ctpop.i32(i32 %1397)
  %1399 = trunc i32 %1398 to i8
  %1400 = and i8 %1399, 1
  %1401 = xor i8 %1400, 1
  store i8 %1401, i8* %22, align 1
  %1402 = xor i64 %1390, %1358
  %1403 = xor i64 %1402, %1391
  %1404 = lshr i64 %1403, 4
  %1405 = trunc i64 %1404 to i8
  %1406 = and i8 %1405, 1
  store i8 %1406, i8* %23, align 1
  %1407 = icmp eq i64 %1391, 0
  %1408 = zext i1 %1407 to i8
  store i8 %1408, i8* %26, align 1
  %1409 = lshr i64 %1391, 63
  %1410 = trunc i64 %1409 to i8
  store i8 %1410, i8* %29, align 1
  %1411 = lshr i64 %1389, 59
  %1412 = and i64 %1411, 1
  %1413 = xor i64 %1409, %1375
  %1414 = xor i64 %1409, %1412
  %1415 = add nuw nsw i64 %1413, %1414
  %1416 = icmp eq i64 %1415, 2
  %1417 = zext i1 %1416 to i8
  store i8 %1417, i8* %30, align 1
  %1418 = load i64, i64* %RBP.i, align 8
  %1419 = add i64 %1418, -4
  %1420 = add i64 %1291, 47
  store i64 %1420, i64* %3, align 8
  %1421 = inttoptr i64 %1419 to i32*
  %1422 = load i32, i32* %1421, align 4
  %1423 = sext i32 %1422 to i64
  store i64 %1423, i64* %RAX.i898, align 8
  %1424 = shl nsw i64 %1423, 2
  %1425 = add i64 %1424, %1391
  %1426 = load i32, i32* %EDI.i226, align 4
  %1427 = add i64 %1291, 50
  store i64 %1427, i64* %3, align 8
  %1428 = inttoptr i64 %1425 to i32*
  store i32 %1426, i32* %1428, align 4
  %1429 = load i64, i64* %RBP.i, align 8
  %1430 = add i64 %1429, -4
  %1431 = load i64, i64* %3, align 8
  %1432 = add i64 %1431, 3
  store i64 %1432, i64* %3, align 8
  %1433 = inttoptr i64 %1430 to i32*
  %1434 = load i32, i32* %1433, align 4
  %1435 = add i32 %1434, 1
  %1436 = zext i32 %1435 to i64
  store i64 %1436, i64* %RAX.i898, align 8
  %1437 = icmp eq i32 %1434, -1
  %1438 = icmp eq i32 %1435, 0
  %1439 = or i1 %1437, %1438
  %1440 = zext i1 %1439 to i8
  store i8 %1440, i8* %16, align 1
  %1441 = and i32 %1435, 255
  %1442 = tail call i32 @llvm.ctpop.i32(i32 %1441)
  %1443 = trunc i32 %1442 to i8
  %1444 = and i8 %1443, 1
  %1445 = xor i8 %1444, 1
  store i8 %1445, i8* %22, align 1
  %1446 = xor i32 %1435, %1434
  %1447 = lshr i32 %1446, 4
  %1448 = trunc i32 %1447 to i8
  %1449 = and i8 %1448, 1
  store i8 %1449, i8* %23, align 1
  %1450 = zext i1 %1438 to i8
  store i8 %1450, i8* %26, align 1
  %1451 = lshr i32 %1435, 31
  %1452 = trunc i32 %1451 to i8
  store i8 %1452, i8* %29, align 1
  %1453 = lshr i32 %1434, 31
  %1454 = xor i32 %1451, %1453
  %1455 = add nuw nsw i32 %1454, %1451
  %1456 = icmp eq i32 %1455, 2
  %1457 = zext i1 %1456 to i8
  store i8 %1457, i8* %30, align 1
  %1458 = add i64 %1431, 9
  store i64 %1458, i64* %3, align 8
  store i32 %1435, i32* %1433, align 4
  %1459 = load i64, i64* %3, align 8
  %1460 = add i64 %1459, -594
  store i64 %1460, i64* %3, align 8
  br label %block_.L_47b8ae

block_.L_47bb05:                                  ; preds = %block_.L_47b8ae
  %1461 = add i64 %135, -8
  %1462 = add i64 %163, 8
  store i64 %1462, i64* %3, align 8
  %1463 = inttoptr i64 %1461 to i32*
  %1464 = load i32, i32* %1463, align 4
  %1465 = add i32 %1464, 1
  %1466 = zext i32 %1465 to i64
  store i64 %1466, i64* %RAX.i898, align 8
  %1467 = icmp eq i32 %1464, -1
  %1468 = icmp eq i32 %1465, 0
  %1469 = or i1 %1467, %1468
  %1470 = zext i1 %1469 to i8
  store i8 %1470, i8* %16, align 1
  %1471 = and i32 %1465, 255
  %1472 = tail call i32 @llvm.ctpop.i32(i32 %1471)
  %1473 = trunc i32 %1472 to i8
  %1474 = and i8 %1473, 1
  %1475 = xor i8 %1474, 1
  store i8 %1475, i8* %22, align 1
  %1476 = xor i32 %1465, %1464
  %1477 = lshr i32 %1476, 4
  %1478 = trunc i32 %1477 to i8
  %1479 = and i8 %1478, 1
  store i8 %1479, i8* %23, align 1
  %1480 = zext i1 %1468 to i8
  store i8 %1480, i8* %26, align 1
  %1481 = lshr i32 %1465, 31
  %1482 = trunc i32 %1481 to i8
  store i8 %1482, i8* %29, align 1
  %1483 = lshr i32 %1464, 31
  %1484 = xor i32 %1481, %1483
  %1485 = add nuw nsw i32 %1484, %1481
  %1486 = icmp eq i32 %1485, 2
  %1487 = zext i1 %1486 to i8
  store i8 %1487, i8* %30, align 1
  %1488 = add i64 %163, 14
  store i64 %1488, i64* %3, align 8
  store i32 %1465, i32* %1463, align 4
  %1489 = load i64, i64* %3, align 8
  %1490 = add i64 %1489, -630
  store i64 %1490, i64* %3, align 8
  br label %block_.L_47b89d

block_.L_47bb18:                                  ; preds = %block_.L_47b89d
  %1491 = add i64 %102, -12
  %1492 = add i64 %130, 8
  store i64 %1492, i64* %3, align 8
  %1493 = inttoptr i64 %1491 to i32*
  %1494 = load i32, i32* %1493, align 4
  %1495 = add i32 %1494, 1
  %1496 = zext i32 %1495 to i64
  store i64 %1496, i64* %RAX.i898, align 8
  %1497 = icmp eq i32 %1494, -1
  %1498 = icmp eq i32 %1495, 0
  %1499 = or i1 %1497, %1498
  %1500 = zext i1 %1499 to i8
  store i8 %1500, i8* %16, align 1
  %1501 = and i32 %1495, 255
  %1502 = tail call i32 @llvm.ctpop.i32(i32 %1501)
  %1503 = trunc i32 %1502 to i8
  %1504 = and i8 %1503, 1
  %1505 = xor i8 %1504, 1
  store i8 %1505, i8* %22, align 1
  %1506 = xor i32 %1495, %1494
  %1507 = lshr i32 %1506, 4
  %1508 = trunc i32 %1507 to i8
  %1509 = and i8 %1508, 1
  store i8 %1509, i8* %23, align 1
  %1510 = zext i1 %1498 to i8
  store i8 %1510, i8* %26, align 1
  %1511 = lshr i32 %1495, 31
  %1512 = trunc i32 %1511 to i8
  store i8 %1512, i8* %29, align 1
  %1513 = lshr i32 %1494, 31
  %1514 = xor i32 %1511, %1513
  %1515 = add nuw nsw i32 %1514, %1511
  %1516 = icmp eq i32 %1515, 2
  %1517 = zext i1 %1516 to i8
  store i8 %1517, i8* %30, align 1
  %1518 = add i64 %130, 14
  store i64 %1518, i64* %3, align 8
  store i32 %1495, i32* %1493, align 4
  %1519 = load i64, i64* %3, align 8
  %1520 = add i64 %1519, -678
  store i64 %1520, i64* %3, align 8
  br label %block_.L_47b880

block_.L_47bb2b:                                  ; preds = %block_.L_47b880
  %1521 = add i64 %67, 700
  br label %block_.L_47bde7

block_.L_47bb37:                                  ; preds = %block_.L_47bb37.preheader, %block_.L_47bdcf
  %1522 = phi i64 [ %3004, %block_.L_47bdcf ], [ %.pre58, %block_.L_47bb37.preheader ]
  %1523 = load i64, i64* %RBP.i, align 8
  %1524 = add i64 %1523, -12
  %1525 = add i64 %1522, 4
  store i64 %1525, i64* %3, align 8
  %1526 = inttoptr i64 %1524 to i32*
  %1527 = load i32, i32* %1526, align 4
  %1528 = add i32 %1527, -13
  %1529 = icmp ult i32 %1527, 13
  %1530 = zext i1 %1529 to i8
  store i8 %1530, i8* %16, align 1
  %1531 = and i32 %1528, 255
  %1532 = tail call i32 @llvm.ctpop.i32(i32 %1531)
  %1533 = trunc i32 %1532 to i8
  %1534 = and i8 %1533, 1
  %1535 = xor i8 %1534, 1
  store i8 %1535, i8* %22, align 1
  %1536 = xor i32 %1528, %1527
  %1537 = lshr i32 %1536, 4
  %1538 = trunc i32 %1537 to i8
  %1539 = and i8 %1538, 1
  store i8 %1539, i8* %23, align 1
  %1540 = icmp eq i32 %1528, 0
  %1541 = zext i1 %1540 to i8
  store i8 %1541, i8* %26, align 1
  %1542 = lshr i32 %1528, 31
  %1543 = trunc i32 %1542 to i8
  store i8 %1543, i8* %29, align 1
  %1544 = lshr i32 %1527, 31
  %1545 = xor i32 %1542, %1544
  %1546 = add nuw nsw i32 %1545, %1544
  %1547 = icmp eq i32 %1546, 2
  %1548 = zext i1 %1547 to i8
  store i8 %1548, i8* %30, align 1
  %1549 = icmp ne i8 %1543, 0
  %1550 = xor i1 %1549, %1547
  %.v79 = select i1 %1550, i64 10, i64 683
  %1551 = add i64 %1522, %.v79
  store i64 %1551, i64* %3, align 8
  br i1 %1550, label %block_47bb41, label %block_.L_47bde2

block_47bb41:                                     ; preds = %block_.L_47bb37
  %1552 = add i64 %1551, 3
  store i64 %1552, i64* %3, align 8
  %1553 = load i32, i32* %1526, align 4
  %1554 = add i32 %1553, 15
  %1555 = lshr i32 %1554, 31
  %1556 = add i32 %1553, 5
  %1557 = zext i32 %1556 to i64
  store i64 %1557, i64* %RAX.i898, align 8
  %1558 = icmp ult i32 %1554, 10
  %1559 = zext i1 %1558 to i8
  store i8 %1559, i8* %16, align 1
  %1560 = and i32 %1556, 255
  %1561 = tail call i32 @llvm.ctpop.i32(i32 %1560)
  %1562 = trunc i32 %1561 to i8
  %1563 = and i8 %1562, 1
  %1564 = xor i8 %1563, 1
  store i8 %1564, i8* %22, align 1
  %1565 = xor i32 %1556, %1554
  %1566 = lshr i32 %1565, 4
  %1567 = trunc i32 %1566 to i8
  %1568 = and i8 %1567, 1
  store i8 %1568, i8* %23, align 1
  %1569 = icmp eq i32 %1556, 0
  %1570 = zext i1 %1569 to i8
  store i8 %1570, i8* %26, align 1
  %1571 = lshr i32 %1556, 31
  %1572 = trunc i32 %1571 to i8
  store i8 %1572, i8* %29, align 1
  %1573 = xor i32 %1571, %1555
  %1574 = add nuw nsw i32 %1573, %1555
  %1575 = icmp eq i32 %1574, 2
  %1576 = zext i1 %1575 to i8
  store i8 %1576, i8* %30, align 1
  %1577 = add i64 %1523, -20
  %1578 = add i64 %1551, 12
  store i64 %1578, i64* %3, align 8
  %1579 = inttoptr i64 %1577 to i32*
  store i32 %1556, i32* %1579, align 4
  %1580 = load i64, i64* %RBP.i, align 8
  %1581 = add i64 %1580, -8
  %1582 = load i64, i64* %3, align 8
  %1583 = add i64 %1582, 7
  store i64 %1583, i64* %3, align 8
  %1584 = inttoptr i64 %1581 to i32*
  store i32 0, i32* %1584, align 4
  %.pre59 = load i64, i64* %3, align 8
  br label %block_.L_47bb54

block_.L_47bb54:                                  ; preds = %block_.L_47bdbc, %block_47bb41
  %1585 = phi i64 [ %2974, %block_.L_47bdbc ], [ %.pre59, %block_47bb41 ]
  %1586 = load i64, i64* %RBP.i, align 8
  %1587 = add i64 %1586, -8
  %1588 = add i64 %1585, 4
  store i64 %1588, i64* %3, align 8
  %1589 = inttoptr i64 %1587 to i32*
  %1590 = load i32, i32* %1589, align 4
  %1591 = add i32 %1590, -4
  %1592 = icmp ult i32 %1590, 4
  %1593 = zext i1 %1592 to i8
  store i8 %1593, i8* %16, align 1
  %1594 = and i32 %1591, 255
  %1595 = tail call i32 @llvm.ctpop.i32(i32 %1594)
  %1596 = trunc i32 %1595 to i8
  %1597 = and i8 %1596, 1
  %1598 = xor i8 %1597, 1
  store i8 %1598, i8* %22, align 1
  %1599 = xor i32 %1591, %1590
  %1600 = lshr i32 %1599, 4
  %1601 = trunc i32 %1600 to i8
  %1602 = and i8 %1601, 1
  store i8 %1602, i8* %23, align 1
  %1603 = icmp eq i32 %1591, 0
  %1604 = zext i1 %1603 to i8
  store i8 %1604, i8* %26, align 1
  %1605 = lshr i32 %1591, 31
  %1606 = trunc i32 %1605 to i8
  store i8 %1606, i8* %29, align 1
  %1607 = lshr i32 %1590, 31
  %1608 = xor i32 %1605, %1607
  %1609 = add nuw nsw i32 %1608, %1607
  %1610 = icmp eq i32 %1609, 2
  %1611 = zext i1 %1610 to i8
  store i8 %1611, i8* %30, align 1
  %1612 = icmp ne i8 %1606, 0
  %1613 = xor i1 %1612, %1610
  %.v69 = select i1 %1613, i64 10, i64 635
  %1614 = add i64 %1585, %.v69
  store i64 %1614, i64* %3, align 8
  br i1 %1613, label %block_47bb5e, label %block_.L_47bdcf

block_47bb5e:                                     ; preds = %block_.L_47bb54
  %1615 = add i64 %1586, -4
  %1616 = add i64 %1614, 7
  store i64 %1616, i64* %3, align 8
  %1617 = inttoptr i64 %1615 to i32*
  store i32 0, i32* %1617, align 4
  %.pre60 = load i64, i64* %3, align 8
  br label %block_.L_47bb65

block_.L_47bb65:                                  ; preds = %routine_shll__cl___edi.exit, %block_47bb5e
  %1618 = phi i64 [ %2944, %routine_shll__cl___edi.exit ], [ %.pre60, %block_47bb5e ]
  %1619 = load i64, i64* %RBP.i, align 8
  %1620 = add i64 %1619, -4
  %1621 = add i64 %1618, 4
  store i64 %1621, i64* %3, align 8
  %1622 = inttoptr i64 %1620 to i32*
  %1623 = load i32, i32* %1622, align 4
  %1624 = add i32 %1623, -4
  %1625 = icmp ult i32 %1623, 4
  %1626 = zext i1 %1625 to i8
  store i8 %1626, i8* %16, align 1
  %1627 = and i32 %1624, 255
  %1628 = tail call i32 @llvm.ctpop.i32(i32 %1627)
  %1629 = trunc i32 %1628 to i8
  %1630 = and i8 %1629, 1
  %1631 = xor i8 %1630, 1
  store i8 %1631, i8* %22, align 1
  %1632 = xor i32 %1624, %1623
  %1633 = lshr i32 %1632, 4
  %1634 = trunc i32 %1633 to i8
  %1635 = and i8 %1634, 1
  store i8 %1635, i8* %23, align 1
  %1636 = icmp eq i32 %1624, 0
  %1637 = zext i1 %1636 to i8
  store i8 %1637, i8* %26, align 1
  %1638 = lshr i32 %1624, 31
  %1639 = trunc i32 %1638 to i8
  store i8 %1639, i8* %29, align 1
  %1640 = lshr i32 %1623, 31
  %1641 = xor i32 %1638, %1640
  %1642 = add nuw nsw i32 %1641, %1640
  %1643 = icmp eq i32 %1642, 2
  %1644 = zext i1 %1643 to i8
  store i8 %1644, i8* %30, align 1
  %1645 = icmp ne i8 %1639, 0
  %1646 = xor i1 %1645, %1643
  %.v70 = select i1 %1646, i64 10, i64 599
  %1647 = add i64 %1618, %.v70
  store i64 %1647, i64* %3, align 8
  br i1 %1646, label %block_47bb6f, label %block_.L_47bdbc

block_47bb6f:                                     ; preds = %block_.L_47bb65
  %1648 = add i64 %1647, 3
  store i64 %1648, i64* %3, align 8
  %1649 = load i32, i32* %1622, align 4
  %1650 = shl i32 %1649, 2
  %1651 = zext i32 %1650 to i64
  store i64 %1651, i64* %RAX.i898, align 8
  %1652 = lshr i32 %1649, 30
  %1653 = trunc i32 %1652 to i8
  %1654 = and i8 %1653, 1
  store i8 %1654, i8* %16, align 1
  %1655 = and i32 %1650, 252
  %1656 = tail call i32 @llvm.ctpop.i32(i32 %1655)
  %1657 = trunc i32 %1656 to i8
  %1658 = and i8 %1657, 1
  %1659 = xor i8 %1658, 1
  store i8 %1659, i8* %22, align 1
  store i8 0, i8* %23, align 1
  %1660 = icmp eq i32 %1650, 0
  %1661 = zext i1 %1660 to i8
  store i8 %1661, i8* %26, align 1
  %1662 = lshr i32 %1649, 29
  %1663 = trunc i32 %1662 to i8
  %1664 = and i8 %1663, 1
  store i8 %1664, i8* %29, align 1
  store i8 0, i8* %30, align 1
  %1665 = add i64 %1619, -8
  %1666 = add i64 %1647, 9
  store i64 %1666, i64* %3, align 8
  %1667 = inttoptr i64 %1665 to i32*
  %1668 = load i32, i32* %1667, align 4
  %1669 = add i32 %1668, %1650
  %1670 = zext i32 %1669 to i64
  store i64 %1670, i64* %RAX.i898, align 8
  %1671 = icmp ult i32 %1669, %1650
  %1672 = icmp ult i32 %1669, %1668
  %1673 = or i1 %1671, %1672
  %1674 = zext i1 %1673 to i8
  store i8 %1674, i8* %16, align 1
  %1675 = and i32 %1669, 255
  %1676 = tail call i32 @llvm.ctpop.i32(i32 %1675)
  %1677 = trunc i32 %1676 to i8
  %1678 = and i8 %1677, 1
  %1679 = xor i8 %1678, 1
  store i8 %1679, i8* %22, align 1
  %1680 = xor i32 %1668, %1650
  %1681 = xor i32 %1680, %1669
  %1682 = lshr i32 %1681, 4
  %1683 = trunc i32 %1682 to i8
  %1684 = and i8 %1683, 1
  store i8 %1684, i8* %23, align 1
  %1685 = icmp eq i32 %1669, 0
  %1686 = zext i1 %1685 to i8
  store i8 %1686, i8* %26, align 1
  %1687 = lshr i32 %1669, 31
  %1688 = trunc i32 %1687 to i8
  store i8 %1688, i8* %29, align 1
  %1689 = lshr i32 %1649, 29
  %1690 = and i32 %1689, 1
  %1691 = lshr i32 %1668, 31
  %1692 = xor i32 %1687, %1690
  %1693 = xor i32 %1687, %1691
  %1694 = add nuw nsw i32 %1692, %1693
  %1695 = icmp eq i32 %1694, 2
  %1696 = zext i1 %1695 to i8
  store i8 %1696, i8* %30, align 1
  %1697 = add i64 %1619, -16
  %1698 = add i64 %1647, 12
  store i64 %1698, i64* %3, align 8
  %1699 = inttoptr i64 %1697 to i32*
  store i32 %1669, i32* %1699, align 4
  %1700 = load i64, i64* %3, align 8
  %1701 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1701, i64* %RCX.i407, align 8
  %1702 = add i64 %1701, 24
  %1703 = add i64 %1700, 12
  store i64 %1703, i64* %3, align 8
  %1704 = inttoptr i64 %1702 to i32*
  %1705 = load i32, i32* %1704, align 4
  %1706 = icmp eq i32 %1705, 2
  %.v80 = select i1 %1706, i64 18, i64 203
  %1707 = add i64 %1700, %.v80
  store i64 7490528, i64* %RAX.i898, align 8
  store i64 7491360, i64* %RCX.i407, align 8
  store i8 0, i8* %16, align 1
  store i8 0, i8* %22, align 1
  store i8 0, i8* %23, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %30, align 1
  store i64 7405600, i64* %RDX.i268, align 8
  %1708 = load i64, i64* %RBP.i, align 8
  %1709 = add i64 %1708, -16
  %1710 = add i64 %1707, 34
  store i64 %1710, i64* %3, align 8
  %1711 = inttoptr i64 %1709 to i32*
  %1712 = load i32, i32* %1711, align 4
  %1713 = sext i32 %1712 to i64
  store i64 %1713, i64* %RSI.i265, align 8
  %1714 = shl nsw i64 %1713, 1
  br i1 %1706, label %block_47bb8d, label %block_.L_47bc46

block_47bb8d:                                     ; preds = %block_47bb6f
  %1715 = add nsw i64 %1714, 4953264
  %1716 = add i64 %1707, 42
  store i64 %1716, i64* %3, align 8
  %1717 = inttoptr i64 %1715 to i16*
  %1718 = load i16, i16* %1717, align 2
  %1719 = sext i16 %1718 to i64
  %1720 = and i64 %1719, 4294967295
  store i64 %1720, i64* %RDI.i263, align 8
  %1721 = add i64 %1708, -20
  %1722 = add i64 %1707, 46
  store i64 %1722, i64* %3, align 8
  %1723 = inttoptr i64 %1721 to i32*
  %1724 = load i32, i32* %1723, align 4
  %1725 = zext i32 %1724 to i64
  store i64 %1725, i64* %37, align 8
  %1726 = add i64 %1708, -56
  %1727 = add i64 %1707, 50
  store i64 %1727, i64* %3, align 8
  %1728 = inttoptr i64 %1726 to i64*
  store i64 7491360, i64* %1728, align 8
  %1729 = load i32, i32* %R8D.i259, align 4
  %1730 = zext i32 %1729 to i64
  %1731 = load i64, i64* %3, align 8
  store i64 %1730, i64* %RCX.i407, align 8
  %1732 = load i64, i64* %RDI.i263, align 8
  %1733 = add i64 %1731, 5
  store i64 %1733, i64* %3, align 8
  %1734 = trunc i32 %1729 to i5
  switch i5 %1734, label %1741 [
    i5 0, label %routine_shll__cl___edi.exit378
    i5 1, label %1735
  ]

; <label>:1735:                                   ; preds = %block_47bb8d
  %1736 = trunc i64 %1732 to i32
  %1737 = shl i32 %1736, 1
  %1738 = icmp slt i32 %1736, 0
  %1739 = icmp slt i32 %1737, 0
  %1740 = xor i1 %1738, %1739
  br label %1751

; <label>:1741:                                   ; preds = %block_47bb8d
  %1742 = and i32 %1729, 31
  %1743 = zext i32 %1742 to i64
  %1744 = add nuw nsw i64 %1743, 4294967295
  %1745 = and i64 %1732, 4294967295
  %1746 = and i64 %1744, 4294967295
  %1747 = shl i64 %1745, %1746
  %1748 = trunc i64 %1747 to i32
  %1749 = icmp slt i32 %1748, 0
  %1750 = shl i32 %1748, 1
  br label %1751

; <label>:1751:                                   ; preds = %1741, %1735
  %1752 = phi i1 [ %1738, %1735 ], [ %1749, %1741 ]
  %1753 = phi i1 [ %1740, %1735 ], [ false, %1741 ]
  %1754 = phi i32 [ %1737, %1735 ], [ %1750, %1741 ]
  %1755 = zext i32 %1754 to i64
  store i64 %1755, i64* %RDI.i263, align 8
  %1756 = zext i1 %1752 to i8
  store i8 %1756, i8* %16, align 1
  %1757 = and i32 %1754, 254
  %1758 = tail call i32 @llvm.ctpop.i32(i32 %1757)
  %1759 = trunc i32 %1758 to i8
  %1760 = and i8 %1759, 1
  %1761 = xor i8 %1760, 1
  store i8 %1761, i8* %22, align 1
  store i8 0, i8* %23, align 1
  %1762 = icmp eq i32 %1754, 0
  %1763 = zext i1 %1762 to i8
  store i8 %1763, i8* %26, align 1
  %1764 = lshr i32 %1754, 31
  %1765 = trunc i32 %1764 to i8
  store i8 %1765, i8* %29, align 1
  %1766 = zext i1 %1753 to i8
  store i8 %1766, i8* %30, align 1
  br label %routine_shll__cl___edi.exit378

routine_shll__cl___edi.exit378:                   ; preds = %1751, %block_47bb8d
  %1767 = load i64, i64* %RBP.i, align 8
  %1768 = add i64 %1767, -12
  %1769 = add i64 %1731, 9
  store i64 %1769, i64* %3, align 8
  %1770 = inttoptr i64 %1768 to i32*
  %1771 = load i32, i32* %1770, align 4
  %1772 = sext i32 %1771 to i64
  %1773 = shl nsw i64 %1772, 6
  store i64 %1773, i64* %RSI.i265, align 8
  %1774 = load i64, i64* %RDX.i268, align 8
  %1775 = add i64 %1773, %1774
  store i64 %1775, i64* %RDX.i268, align 8
  %1776 = icmp ult i64 %1775, %1774
  %1777 = icmp ult i64 %1775, %1773
  %1778 = or i1 %1776, %1777
  %1779 = zext i1 %1778 to i8
  store i8 %1779, i8* %16, align 1
  %1780 = trunc i64 %1775 to i32
  %1781 = and i32 %1780, 255
  %1782 = tail call i32 @llvm.ctpop.i32(i32 %1781)
  %1783 = trunc i32 %1782 to i8
  %1784 = and i8 %1783, 1
  %1785 = xor i8 %1784, 1
  store i8 %1785, i8* %22, align 1
  %1786 = xor i64 %1774, %1775
  %1787 = lshr i64 %1786, 4
  %1788 = trunc i64 %1787 to i8
  %1789 = and i8 %1788, 1
  store i8 %1789, i8* %23, align 1
  %1790 = icmp eq i64 %1775, 0
  %1791 = zext i1 %1790 to i8
  store i8 %1791, i8* %26, align 1
  %1792 = lshr i64 %1775, 63
  %1793 = trunc i64 %1792 to i8
  store i8 %1793, i8* %29, align 1
  %1794 = lshr i64 %1774, 63
  %1795 = lshr i64 %1772, 57
  %1796 = and i64 %1795, 1
  %1797 = xor i64 %1792, %1794
  %1798 = xor i64 %1792, %1796
  %1799 = add nuw nsw i64 %1797, %1798
  %1800 = icmp eq i64 %1799, 2
  %1801 = zext i1 %1800 to i8
  store i8 %1801, i8* %30, align 1
  %1802 = add i64 %1767, -8
  %1803 = add i64 %1731, 20
  store i64 %1803, i64* %3, align 8
  %1804 = inttoptr i64 %1802 to i32*
  %1805 = load i32, i32* %1804, align 4
  %1806 = sext i32 %1805 to i64
  %1807 = shl nsw i64 %1806, 4
  store i64 %1807, i64* %RSI.i265, align 8
  %1808 = add i64 %1807, %1775
  store i64 %1808, i64* %RDX.i268, align 8
  %1809 = icmp ult i64 %1808, %1775
  %1810 = icmp ult i64 %1808, %1807
  %1811 = or i1 %1809, %1810
  %1812 = zext i1 %1811 to i8
  store i8 %1812, i8* %16, align 1
  %1813 = trunc i64 %1808 to i32
  %1814 = and i32 %1813, 255
  %1815 = tail call i32 @llvm.ctpop.i32(i32 %1814)
  %1816 = trunc i32 %1815 to i8
  %1817 = and i8 %1816, 1
  %1818 = xor i8 %1817, 1
  store i8 %1818, i8* %22, align 1
  %1819 = xor i64 %1807, %1775
  %1820 = xor i64 %1819, %1808
  %1821 = lshr i64 %1820, 4
  %1822 = trunc i64 %1821 to i8
  %1823 = and i8 %1822, 1
  store i8 %1823, i8* %23, align 1
  %1824 = icmp eq i64 %1808, 0
  %1825 = zext i1 %1824 to i8
  store i8 %1825, i8* %26, align 1
  %1826 = lshr i64 %1808, 63
  %1827 = trunc i64 %1826 to i8
  store i8 %1827, i8* %29, align 1
  %1828 = lshr i64 %1806, 59
  %1829 = and i64 %1828, 1
  %1830 = xor i64 %1826, %1792
  %1831 = xor i64 %1826, %1829
  %1832 = add nuw nsw i64 %1830, %1831
  %1833 = icmp eq i64 %1832, 2
  %1834 = zext i1 %1833 to i8
  store i8 %1834, i8* %30, align 1
  %1835 = load i64, i64* %RBP.i, align 8
  %1836 = add i64 %1835, -4
  %1837 = add i64 %1731, 31
  store i64 %1837, i64* %3, align 8
  %1838 = inttoptr i64 %1836 to i32*
  %1839 = load i32, i32* %1838, align 4
  %1840 = sext i32 %1839 to i64
  store i64 %1840, i64* %RSI.i265, align 8
  %1841 = shl nsw i64 %1840, 2
  %1842 = add i64 %1841, %1808
  %1843 = load i32, i32* %EDI.i226, align 4
  %1844 = add i64 %1731, 34
  store i64 %1844, i64* %3, align 8
  %1845 = inttoptr i64 %1842 to i32*
  store i32 %1843, i32* %1845, align 4
  %1846 = load i64, i64* %RBP.i, align 8
  %1847 = add i64 %1846, -16
  %1848 = load i64, i64* %3, align 8
  %1849 = add i64 %1848, 4
  store i64 %1849, i64* %3, align 8
  %1850 = inttoptr i64 %1847 to i32*
  %1851 = load i32, i32* %1850, align 4
  %1852 = sext i32 %1851 to i64
  store i64 %1852, i64* %RDX.i268, align 8
  %1853 = shl nsw i64 %1852, 1
  %1854 = add nsw i64 %1853, 4953264
  %1855 = add i64 %1848, 12
  store i64 %1855, i64* %3, align 8
  %1856 = inttoptr i64 %1854 to i16*
  %1857 = load i16, i16* %1856, align 2
  %1858 = sext i16 %1857 to i64
  %1859 = and i64 %1858, 4294967295
  store i64 %1859, i64* %RDI.i263, align 8
  %1860 = add i64 %1846, -20
  %1861 = add i64 %1848, 15
  store i64 %1861, i64* %3, align 8
  %1862 = inttoptr i64 %1860 to i32*
  %1863 = load i32, i32* %1862, align 4
  %1864 = zext i32 %1863 to i64
  store i64 %1864, i64* %RCX.i407, align 8
  %1865 = add i64 %1848, 17
  store i64 %1865, i64* %3, align 8
  %1866 = trunc i32 %1863 to i5
  switch i5 %1866, label %1870 [
    i5 0, label %routine_shll__cl___edi.exit342
    i5 1, label %1867
  ]

; <label>:1867:                                   ; preds = %routine_shll__cl___edi.exit378
  %1868 = sext i16 %1857 to i32
  %1869 = icmp slt i16 %1857, 0
  br label %1878

; <label>:1870:                                   ; preds = %routine_shll__cl___edi.exit378
  %1871 = and i32 %1863, 31
  %1872 = zext i32 %1871 to i64
  %1873 = add nuw nsw i64 %1872, 4294967295
  %1874 = and i64 %1873, 4294967295
  %1875 = shl i64 %1859, %1874
  %1876 = trunc i64 %1875 to i32
  %1877 = icmp slt i32 %1876, 0
  br label %1878

; <label>:1878:                                   ; preds = %1870, %1867
  %1879 = phi i1 [ %1869, %1867 ], [ %1877, %1870 ]
  %.in71 = phi i32 [ %1868, %1867 ], [ %1876, %1870 ]
  %1880 = shl i32 %.in71, 1
  %1881 = zext i32 %1880 to i64
  store i64 %1881, i64* %RDI.i263, align 8
  %1882 = zext i1 %1879 to i8
  store i8 %1882, i8* %16, align 1
  %1883 = and i32 %1880, 254
  %1884 = tail call i32 @llvm.ctpop.i32(i32 %1883)
  %1885 = trunc i32 %1884 to i8
  %1886 = and i8 %1885, 1
  %1887 = xor i8 %1886, 1
  store i8 %1887, i8* %22, align 1
  store i8 0, i8* %23, align 1
  %1888 = icmp eq i32 %1880, 0
  %1889 = zext i1 %1888 to i8
  store i8 %1889, i8* %26, align 1
  %1890 = lshr i32 %.in71, 30
  %1891 = trunc i32 %1890 to i8
  %1892 = and i8 %1891, 1
  store i8 %1892, i8* %29, align 1
  store i8 0, i8* %30, align 1
  br label %routine_shll__cl___edi.exit342

routine_shll__cl___edi.exit342:                   ; preds = %1878, %routine_shll__cl___edi.exit378
  %1893 = add i64 %1846, -12
  %1894 = add i64 %1848, 21
  store i64 %1894, i64* %3, align 8
  %1895 = inttoptr i64 %1893 to i32*
  %1896 = load i32, i32* %1895, align 4
  %1897 = sext i32 %1896 to i64
  %1898 = shl nsw i64 %1897, 6
  store i64 %1898, i64* %RDX.i268, align 8
  %1899 = load i64, i64* %RAX.i898, align 8
  %1900 = add i64 %1898, %1899
  store i64 %1900, i64* %RAX.i898, align 8
  %1901 = icmp ult i64 %1900, %1899
  %1902 = icmp ult i64 %1900, %1898
  %1903 = or i1 %1901, %1902
  %1904 = zext i1 %1903 to i8
  store i8 %1904, i8* %16, align 1
  %1905 = trunc i64 %1900 to i32
  %1906 = and i32 %1905, 255
  %1907 = tail call i32 @llvm.ctpop.i32(i32 %1906)
  %1908 = trunc i32 %1907 to i8
  %1909 = and i8 %1908, 1
  %1910 = xor i8 %1909, 1
  store i8 %1910, i8* %22, align 1
  %1911 = xor i64 %1899, %1900
  %1912 = lshr i64 %1911, 4
  %1913 = trunc i64 %1912 to i8
  %1914 = and i8 %1913, 1
  store i8 %1914, i8* %23, align 1
  %1915 = icmp eq i64 %1900, 0
  %1916 = zext i1 %1915 to i8
  store i8 %1916, i8* %26, align 1
  %1917 = lshr i64 %1900, 63
  %1918 = trunc i64 %1917 to i8
  store i8 %1918, i8* %29, align 1
  %1919 = lshr i64 %1899, 63
  %1920 = lshr i64 %1897, 57
  %1921 = and i64 %1920, 1
  %1922 = xor i64 %1917, %1919
  %1923 = xor i64 %1917, %1921
  %1924 = add nuw nsw i64 %1922, %1923
  %1925 = icmp eq i64 %1924, 2
  %1926 = zext i1 %1925 to i8
  store i8 %1926, i8* %30, align 1
  %1927 = add i64 %1846, -8
  %1928 = add i64 %1848, 32
  store i64 %1928, i64* %3, align 8
  %1929 = inttoptr i64 %1927 to i32*
  %1930 = load i32, i32* %1929, align 4
  %1931 = sext i32 %1930 to i64
  %1932 = shl nsw i64 %1931, 4
  store i64 %1932, i64* %RDX.i268, align 8
  %1933 = add i64 %1932, %1900
  store i64 %1933, i64* %RAX.i898, align 8
  %1934 = icmp ult i64 %1933, %1900
  %1935 = icmp ult i64 %1933, %1932
  %1936 = or i1 %1934, %1935
  %1937 = zext i1 %1936 to i8
  store i8 %1937, i8* %16, align 1
  %1938 = trunc i64 %1933 to i32
  %1939 = and i32 %1938, 255
  %1940 = tail call i32 @llvm.ctpop.i32(i32 %1939)
  %1941 = trunc i32 %1940 to i8
  %1942 = and i8 %1941, 1
  %1943 = xor i8 %1942, 1
  store i8 %1943, i8* %22, align 1
  %1944 = xor i64 %1932, %1900
  %1945 = xor i64 %1944, %1933
  %1946 = lshr i64 %1945, 4
  %1947 = trunc i64 %1946 to i8
  %1948 = and i8 %1947, 1
  store i8 %1948, i8* %23, align 1
  %1949 = icmp eq i64 %1933, 0
  %1950 = zext i1 %1949 to i8
  store i8 %1950, i8* %26, align 1
  %1951 = lshr i64 %1933, 63
  %1952 = trunc i64 %1951 to i8
  store i8 %1952, i8* %29, align 1
  %1953 = lshr i64 %1931, 59
  %1954 = and i64 %1953, 1
  %1955 = xor i64 %1951, %1917
  %1956 = xor i64 %1951, %1954
  %1957 = add nuw nsw i64 %1955, %1956
  %1958 = icmp eq i64 %1957, 2
  %1959 = zext i1 %1958 to i8
  store i8 %1959, i8* %30, align 1
  %1960 = load i64, i64* %RBP.i, align 8
  %1961 = add i64 %1960, -4
  %1962 = add i64 %1848, 43
  store i64 %1962, i64* %3, align 8
  %1963 = inttoptr i64 %1961 to i32*
  %1964 = load i32, i32* %1963, align 4
  %1965 = sext i32 %1964 to i64
  store i64 %1965, i64* %RDX.i268, align 8
  %1966 = shl nsw i64 %1965, 2
  %1967 = add i64 %1966, %1933
  %1968 = load i32, i32* %EDI.i226, align 4
  %1969 = add i64 %1848, 46
  store i64 %1969, i64* %3, align 8
  %1970 = inttoptr i64 %1967 to i32*
  store i32 %1968, i32* %1970, align 4
  %1971 = load i64, i64* %RBP.i, align 8
  %1972 = add i64 %1971, -16
  %1973 = load i64, i64* %3, align 8
  %1974 = add i64 %1973, 4
  store i64 %1974, i64* %3, align 8
  %1975 = inttoptr i64 %1972 to i32*
  %1976 = load i32, i32* %1975, align 4
  %1977 = sext i32 %1976 to i64
  store i64 %1977, i64* %RAX.i898, align 8
  %1978 = shl nsw i64 %1977, 1
  %1979 = add nsw i64 %1978, 4953264
  %1980 = add i64 %1973, 12
  store i64 %1980, i64* %3, align 8
  %1981 = inttoptr i64 %1979 to i16*
  %1982 = load i16, i16* %1981, align 2
  %1983 = sext i16 %1982 to i64
  %1984 = and i64 %1983, 4294967295
  store i64 %1984, i64* %RDI.i263, align 8
  %1985 = add i64 %1971, -20
  %1986 = add i64 %1973, 15
  store i64 %1986, i64* %3, align 8
  %1987 = inttoptr i64 %1985 to i32*
  %1988 = load i32, i32* %1987, align 4
  %1989 = zext i32 %1988 to i64
  store i64 %1989, i64* %RCX.i407, align 8
  %1990 = add i64 %1973, 17
  store i64 %1990, i64* %3, align 8
  %1991 = trunc i32 %1988 to i5
  switch i5 %1991, label %1995 [
    i5 0, label %routine_shll__cl___edi.exit306
    i5 1, label %1992
  ]

; <label>:1992:                                   ; preds = %routine_shll__cl___edi.exit342
  %1993 = sext i16 %1982 to i32
  %1994 = icmp slt i16 %1982, 0
  br label %2003

; <label>:1995:                                   ; preds = %routine_shll__cl___edi.exit342
  %1996 = and i32 %1988, 31
  %1997 = zext i32 %1996 to i64
  %1998 = add nuw nsw i64 %1997, 4294967295
  %1999 = and i64 %1998, 4294967295
  %2000 = shl i64 %1984, %1999
  %2001 = trunc i64 %2000 to i32
  %2002 = icmp slt i32 %2001, 0
  br label %2003

; <label>:2003:                                   ; preds = %1995, %1992
  %2004 = phi i1 [ %1994, %1992 ], [ %2002, %1995 ]
  %.in72 = phi i32 [ %1993, %1992 ], [ %2001, %1995 ]
  %2005 = shl i32 %.in72, 1
  %2006 = zext i32 %2005 to i64
  store i64 %2006, i64* %RDI.i263, align 8
  %2007 = zext i1 %2004 to i8
  store i8 %2007, i8* %16, align 1
  %2008 = and i32 %2005, 254
  %2009 = tail call i32 @llvm.ctpop.i32(i32 %2008)
  %2010 = trunc i32 %2009 to i8
  %2011 = and i8 %2010, 1
  %2012 = xor i8 %2011, 1
  store i8 %2012, i8* %22, align 1
  store i8 0, i8* %23, align 1
  %2013 = icmp eq i32 %2005, 0
  %2014 = zext i1 %2013 to i8
  store i8 %2014, i8* %26, align 1
  %2015 = lshr i32 %.in72, 30
  %2016 = trunc i32 %2015 to i8
  %2017 = and i8 %2016, 1
  store i8 %2017, i8* %29, align 1
  store i8 0, i8* %30, align 1
  br label %routine_shll__cl___edi.exit306

routine_shll__cl___edi.exit306:                   ; preds = %2003, %routine_shll__cl___edi.exit342
  %2018 = add i64 %1971, -12
  %2019 = add i64 %1973, 21
  store i64 %2019, i64* %3, align 8
  %2020 = inttoptr i64 %2018 to i32*
  %2021 = load i32, i32* %2020, align 4
  %2022 = sext i32 %2021 to i64
  %2023 = shl nsw i64 %2022, 6
  store i64 %2023, i64* %RAX.i898, align 8
  %.lobit31 = lshr i32 %2021, 31
  %2024 = trunc i32 %.lobit31 to i8
  store i8 %2024, i8* %16, align 1
  %2025 = trunc i64 %2023 to i32
  %2026 = and i32 %2025, 192
  %2027 = tail call i32 @llvm.ctpop.i32(i32 %2026)
  %2028 = trunc i32 %2027 to i8
  %2029 = and i8 %2028, 1
  %2030 = xor i8 %2029, 1
  store i8 %2030, i8* %22, align 1
  store i8 0, i8* %23, align 1
  %2031 = icmp eq i32 %2021, 0
  %2032 = zext i1 %2031 to i8
  store i8 %2032, i8* %26, align 1
  %2033 = lshr i64 %2022, 57
  %2034 = trunc i64 %2033 to i8
  %2035 = and i8 %2034, 1
  store i8 %2035, i8* %29, align 1
  store i8 0, i8* %30, align 1
  %2036 = add i64 %1971, -56
  %2037 = add i64 %1973, 29
  store i64 %2037, i64* %3, align 8
  %2038 = inttoptr i64 %2036 to i64*
  %2039 = load i64, i64* %2038, align 8
  %2040 = add i64 %2023, %2039
  store i64 %2040, i64* %RDX.i268, align 8
  %2041 = icmp ult i64 %2040, %2039
  %2042 = icmp ult i64 %2040, %2023
  %2043 = or i1 %2041, %2042
  %2044 = zext i1 %2043 to i8
  store i8 %2044, i8* %16, align 1
  %2045 = trunc i64 %2040 to i32
  %2046 = and i32 %2045, 255
  %2047 = tail call i32 @llvm.ctpop.i32(i32 %2046)
  %2048 = trunc i32 %2047 to i8
  %2049 = and i8 %2048, 1
  %2050 = xor i8 %2049, 1
  store i8 %2050, i8* %22, align 1
  %2051 = xor i64 %2039, %2040
  %2052 = lshr i64 %2051, 4
  %2053 = trunc i64 %2052 to i8
  %2054 = and i8 %2053, 1
  store i8 %2054, i8* %23, align 1
  %2055 = icmp eq i64 %2040, 0
  %2056 = zext i1 %2055 to i8
  store i8 %2056, i8* %26, align 1
  %2057 = lshr i64 %2040, 63
  %2058 = trunc i64 %2057 to i8
  store i8 %2058, i8* %29, align 1
  %2059 = lshr i64 %2039, 63
  %2060 = lshr i64 %2022, 57
  %2061 = and i64 %2060, 1
  %2062 = xor i64 %2057, %2059
  %2063 = xor i64 %2057, %2061
  %2064 = add nuw nsw i64 %2062, %2063
  %2065 = icmp eq i64 %2064, 2
  %2066 = zext i1 %2065 to i8
  store i8 %2066, i8* %30, align 1
  %2067 = add i64 %1971, -8
  %2068 = add i64 %1973, 36
  store i64 %2068, i64* %3, align 8
  %2069 = inttoptr i64 %2067 to i32*
  %2070 = load i32, i32* %2069, align 4
  %2071 = sext i32 %2070 to i64
  %2072 = shl nsw i64 %2071, 4
  store i64 %2072, i64* %RAX.i898, align 8
  %2073 = add i64 %2072, %2040
  store i64 %2073, i64* %RDX.i268, align 8
  %2074 = icmp ult i64 %2073, %2040
  %2075 = icmp ult i64 %2073, %2072
  %2076 = or i1 %2074, %2075
  %2077 = zext i1 %2076 to i8
  store i8 %2077, i8* %16, align 1
  %2078 = trunc i64 %2073 to i32
  %2079 = and i32 %2078, 255
  %2080 = tail call i32 @llvm.ctpop.i32(i32 %2079)
  %2081 = trunc i32 %2080 to i8
  %2082 = and i8 %2081, 1
  %2083 = xor i8 %2082, 1
  store i8 %2083, i8* %22, align 1
  %2084 = xor i64 %2072, %2040
  %2085 = xor i64 %2084, %2073
  %2086 = lshr i64 %2085, 4
  %2087 = trunc i64 %2086 to i8
  %2088 = and i8 %2087, 1
  store i8 %2088, i8* %23, align 1
  %2089 = icmp eq i64 %2073, 0
  %2090 = zext i1 %2089 to i8
  store i8 %2090, i8* %26, align 1
  %2091 = lshr i64 %2073, 63
  %2092 = trunc i64 %2091 to i8
  store i8 %2092, i8* %29, align 1
  %2093 = lshr i64 %2071, 59
  %2094 = and i64 %2093, 1
  %2095 = xor i64 %2091, %2057
  %2096 = xor i64 %2091, %2094
  %2097 = add nuw nsw i64 %2095, %2096
  %2098 = icmp eq i64 %2097, 2
  %2099 = zext i1 %2098 to i8
  store i8 %2099, i8* %30, align 1
  %2100 = load i64, i64* %RBP.i, align 8
  %2101 = add i64 %2100, -4
  %2102 = add i64 %1973, 47
  store i64 %2102, i64* %3, align 8
  %2103 = inttoptr i64 %2101 to i32*
  %2104 = load i32, i32* %2103, align 4
  %2105 = sext i32 %2104 to i64
  store i64 %2105, i64* %RAX.i898, align 8
  %2106 = shl nsw i64 %2105, 2
  %2107 = add i64 %2106, %2073
  %2108 = load i32, i32* %EDI.i226, align 4
  %2109 = add i64 %1973, 50
  store i64 %2109, i64* %3, align 8
  %2110 = inttoptr i64 %2107 to i32*
  store i32 %2108, i32* %2110, align 4
  %2111 = load i64, i64* %3, align 8
  %2112 = add i64 %2111, 185
  store i64 %2112, i64* %3, align 8
  br label %block_.L_47bcfa

block_.L_47bc46:                                  ; preds = %block_47bb6f
  %2113 = add nsw i64 %1714, 4953296
  %2114 = add i64 %1707, 42
  store i64 %2114, i64* %3, align 8
  %2115 = inttoptr i64 %2113 to i16*
  %2116 = load i16, i16* %2115, align 2
  %2117 = sext i16 %2116 to i64
  %2118 = and i64 %2117, 4294967295
  store i64 %2118, i64* %RDI.i263, align 8
  %2119 = add i64 %1708, -20
  %2120 = add i64 %1707, 46
  store i64 %2120, i64* %3, align 8
  %2121 = inttoptr i64 %2119 to i32*
  %2122 = load i32, i32* %2121, align 4
  %2123 = zext i32 %2122 to i64
  store i64 %2123, i64* %37, align 8
  %2124 = add i64 %1708, -64
  %2125 = add i64 %1707, 50
  store i64 %2125, i64* %3, align 8
  %2126 = inttoptr i64 %2124 to i64*
  store i64 7491360, i64* %2126, align 8
  %2127 = load i32, i32* %R8D.i259, align 4
  %2128 = zext i32 %2127 to i64
  %2129 = load i64, i64* %3, align 8
  store i64 %2128, i64* %RCX.i407, align 8
  %2130 = load i64, i64* %RDI.i263, align 8
  %2131 = add i64 %2129, 5
  store i64 %2131, i64* %3, align 8
  %2132 = trunc i32 %2127 to i5
  switch i5 %2132, label %2139 [
    i5 0, label %routine_shll__cl___edi.exit251
    i5 1, label %2133
  ]

; <label>:2133:                                   ; preds = %block_.L_47bc46
  %2134 = trunc i64 %2130 to i32
  %2135 = shl i32 %2134, 1
  %2136 = icmp slt i32 %2134, 0
  %2137 = icmp slt i32 %2135, 0
  %2138 = xor i1 %2136, %2137
  br label %2149

; <label>:2139:                                   ; preds = %block_.L_47bc46
  %2140 = and i32 %2127, 31
  %2141 = zext i32 %2140 to i64
  %2142 = add nuw nsw i64 %2141, 4294967295
  %2143 = and i64 %2130, 4294967295
  %2144 = and i64 %2142, 4294967295
  %2145 = shl i64 %2143, %2144
  %2146 = trunc i64 %2145 to i32
  %2147 = icmp slt i32 %2146, 0
  %2148 = shl i32 %2146, 1
  br label %2149

; <label>:2149:                                   ; preds = %2139, %2133
  %2150 = phi i1 [ %2136, %2133 ], [ %2147, %2139 ]
  %2151 = phi i1 [ %2138, %2133 ], [ false, %2139 ]
  %2152 = phi i32 [ %2135, %2133 ], [ %2148, %2139 ]
  %2153 = zext i32 %2152 to i64
  store i64 %2153, i64* %RDI.i263, align 8
  %2154 = zext i1 %2150 to i8
  store i8 %2154, i8* %16, align 1
  %2155 = and i32 %2152, 254
  %2156 = tail call i32 @llvm.ctpop.i32(i32 %2155)
  %2157 = trunc i32 %2156 to i8
  %2158 = and i8 %2157, 1
  %2159 = xor i8 %2158, 1
  store i8 %2159, i8* %22, align 1
  store i8 0, i8* %23, align 1
  %2160 = icmp eq i32 %2152, 0
  %2161 = zext i1 %2160 to i8
  store i8 %2161, i8* %26, align 1
  %2162 = lshr i32 %2152, 31
  %2163 = trunc i32 %2162 to i8
  store i8 %2163, i8* %29, align 1
  %2164 = zext i1 %2151 to i8
  store i8 %2164, i8* %30, align 1
  br label %routine_shll__cl___edi.exit251

routine_shll__cl___edi.exit251:                   ; preds = %2149, %block_.L_47bc46
  %2165 = load i64, i64* %RBP.i, align 8
  %2166 = add i64 %2165, -12
  %2167 = add i64 %2129, 9
  store i64 %2167, i64* %3, align 8
  %2168 = inttoptr i64 %2166 to i32*
  %2169 = load i32, i32* %2168, align 4
  %2170 = sext i32 %2169 to i64
  %2171 = shl nsw i64 %2170, 6
  store i64 %2171, i64* %RSI.i265, align 8
  %2172 = load i64, i64* %RDX.i268, align 8
  %2173 = add i64 %2171, %2172
  store i64 %2173, i64* %RDX.i268, align 8
  %2174 = icmp ult i64 %2173, %2172
  %2175 = icmp ult i64 %2173, %2171
  %2176 = or i1 %2174, %2175
  %2177 = zext i1 %2176 to i8
  store i8 %2177, i8* %16, align 1
  %2178 = trunc i64 %2173 to i32
  %2179 = and i32 %2178, 255
  %2180 = tail call i32 @llvm.ctpop.i32(i32 %2179)
  %2181 = trunc i32 %2180 to i8
  %2182 = and i8 %2181, 1
  %2183 = xor i8 %2182, 1
  store i8 %2183, i8* %22, align 1
  %2184 = xor i64 %2172, %2173
  %2185 = lshr i64 %2184, 4
  %2186 = trunc i64 %2185 to i8
  %2187 = and i8 %2186, 1
  store i8 %2187, i8* %23, align 1
  %2188 = icmp eq i64 %2173, 0
  %2189 = zext i1 %2188 to i8
  store i8 %2189, i8* %26, align 1
  %2190 = lshr i64 %2173, 63
  %2191 = trunc i64 %2190 to i8
  store i8 %2191, i8* %29, align 1
  %2192 = lshr i64 %2172, 63
  %2193 = lshr i64 %2170, 57
  %2194 = and i64 %2193, 1
  %2195 = xor i64 %2190, %2192
  %2196 = xor i64 %2190, %2194
  %2197 = add nuw nsw i64 %2195, %2196
  %2198 = icmp eq i64 %2197, 2
  %2199 = zext i1 %2198 to i8
  store i8 %2199, i8* %30, align 1
  %2200 = add i64 %2165, -8
  %2201 = add i64 %2129, 20
  store i64 %2201, i64* %3, align 8
  %2202 = inttoptr i64 %2200 to i32*
  %2203 = load i32, i32* %2202, align 4
  %2204 = sext i32 %2203 to i64
  %2205 = shl nsw i64 %2204, 4
  store i64 %2205, i64* %RSI.i265, align 8
  %2206 = add i64 %2205, %2173
  store i64 %2206, i64* %RDX.i268, align 8
  %2207 = icmp ult i64 %2206, %2173
  %2208 = icmp ult i64 %2206, %2205
  %2209 = or i1 %2207, %2208
  %2210 = zext i1 %2209 to i8
  store i8 %2210, i8* %16, align 1
  %2211 = trunc i64 %2206 to i32
  %2212 = and i32 %2211, 255
  %2213 = tail call i32 @llvm.ctpop.i32(i32 %2212)
  %2214 = trunc i32 %2213 to i8
  %2215 = and i8 %2214, 1
  %2216 = xor i8 %2215, 1
  store i8 %2216, i8* %22, align 1
  %2217 = xor i64 %2205, %2173
  %2218 = xor i64 %2217, %2206
  %2219 = lshr i64 %2218, 4
  %2220 = trunc i64 %2219 to i8
  %2221 = and i8 %2220, 1
  store i8 %2221, i8* %23, align 1
  %2222 = icmp eq i64 %2206, 0
  %2223 = zext i1 %2222 to i8
  store i8 %2223, i8* %26, align 1
  %2224 = lshr i64 %2206, 63
  %2225 = trunc i64 %2224 to i8
  store i8 %2225, i8* %29, align 1
  %2226 = lshr i64 %2204, 59
  %2227 = and i64 %2226, 1
  %2228 = xor i64 %2224, %2190
  %2229 = xor i64 %2224, %2227
  %2230 = add nuw nsw i64 %2228, %2229
  %2231 = icmp eq i64 %2230, 2
  %2232 = zext i1 %2231 to i8
  store i8 %2232, i8* %30, align 1
  %2233 = load i64, i64* %RBP.i, align 8
  %2234 = add i64 %2233, -4
  %2235 = add i64 %2129, 31
  store i64 %2235, i64* %3, align 8
  %2236 = inttoptr i64 %2234 to i32*
  %2237 = load i32, i32* %2236, align 4
  %2238 = sext i32 %2237 to i64
  store i64 %2238, i64* %RSI.i265, align 8
  %2239 = shl nsw i64 %2238, 2
  %2240 = add i64 %2239, %2206
  %2241 = load i32, i32* %EDI.i226, align 4
  %2242 = add i64 %2129, 34
  store i64 %2242, i64* %3, align 8
  %2243 = inttoptr i64 %2240 to i32*
  store i32 %2241, i32* %2243, align 4
  %2244 = load i64, i64* %RBP.i, align 8
  %2245 = add i64 %2244, -16
  %2246 = load i64, i64* %3, align 8
  %2247 = add i64 %2246, 4
  store i64 %2247, i64* %3, align 8
  %2248 = inttoptr i64 %2245 to i32*
  %2249 = load i32, i32* %2248, align 4
  %2250 = sext i32 %2249 to i64
  store i64 %2250, i64* %RDX.i268, align 8
  %2251 = shl nsw i64 %2250, 1
  %2252 = add nsw i64 %2251, 4953296
  %2253 = add i64 %2246, 12
  store i64 %2253, i64* %3, align 8
  %2254 = inttoptr i64 %2252 to i16*
  %2255 = load i16, i16* %2254, align 2
  %2256 = sext i16 %2255 to i64
  %2257 = and i64 %2256, 4294967295
  store i64 %2257, i64* %RDI.i263, align 8
  %2258 = add i64 %2244, -20
  %2259 = add i64 %2246, 15
  store i64 %2259, i64* %3, align 8
  %2260 = inttoptr i64 %2258 to i32*
  %2261 = load i32, i32* %2260, align 4
  %2262 = zext i32 %2261 to i64
  store i64 %2262, i64* %RCX.i407, align 8
  %2263 = add i64 %2246, 17
  store i64 %2263, i64* %3, align 8
  %2264 = trunc i32 %2261 to i5
  switch i5 %2264, label %2268 [
    i5 0, label %routine_shll__cl___edi.exit215
    i5 1, label %2265
  ]

; <label>:2265:                                   ; preds = %routine_shll__cl___edi.exit251
  %2266 = sext i16 %2255 to i32
  %2267 = icmp slt i16 %2255, 0
  br label %2276

; <label>:2268:                                   ; preds = %routine_shll__cl___edi.exit251
  %2269 = and i32 %2261, 31
  %2270 = zext i32 %2269 to i64
  %2271 = add nuw nsw i64 %2270, 4294967295
  %2272 = and i64 %2271, 4294967295
  %2273 = shl i64 %2257, %2272
  %2274 = trunc i64 %2273 to i32
  %2275 = icmp slt i32 %2274, 0
  br label %2276

; <label>:2276:                                   ; preds = %2268, %2265
  %2277 = phi i1 [ %2267, %2265 ], [ %2275, %2268 ]
  %.in75 = phi i32 [ %2266, %2265 ], [ %2274, %2268 ]
  %2278 = shl i32 %.in75, 1
  %2279 = zext i32 %2278 to i64
  store i64 %2279, i64* %RDI.i263, align 8
  %2280 = zext i1 %2277 to i8
  store i8 %2280, i8* %16, align 1
  %2281 = and i32 %2278, 254
  %2282 = tail call i32 @llvm.ctpop.i32(i32 %2281)
  %2283 = trunc i32 %2282 to i8
  %2284 = and i8 %2283, 1
  %2285 = xor i8 %2284, 1
  store i8 %2285, i8* %22, align 1
  store i8 0, i8* %23, align 1
  %2286 = icmp eq i32 %2278, 0
  %2287 = zext i1 %2286 to i8
  store i8 %2287, i8* %26, align 1
  %2288 = lshr i32 %.in75, 30
  %2289 = trunc i32 %2288 to i8
  %2290 = and i8 %2289, 1
  store i8 %2290, i8* %29, align 1
  store i8 0, i8* %30, align 1
  br label %routine_shll__cl___edi.exit215

routine_shll__cl___edi.exit215:                   ; preds = %2276, %routine_shll__cl___edi.exit251
  %2291 = add i64 %2244, -12
  %2292 = add i64 %2246, 21
  store i64 %2292, i64* %3, align 8
  %2293 = inttoptr i64 %2291 to i32*
  %2294 = load i32, i32* %2293, align 4
  %2295 = sext i32 %2294 to i64
  %2296 = shl nsw i64 %2295, 6
  store i64 %2296, i64* %RDX.i268, align 8
  %2297 = load i64, i64* %RAX.i898, align 8
  %2298 = add i64 %2296, %2297
  store i64 %2298, i64* %RAX.i898, align 8
  %2299 = icmp ult i64 %2298, %2297
  %2300 = icmp ult i64 %2298, %2296
  %2301 = or i1 %2299, %2300
  %2302 = zext i1 %2301 to i8
  store i8 %2302, i8* %16, align 1
  %2303 = trunc i64 %2298 to i32
  %2304 = and i32 %2303, 255
  %2305 = tail call i32 @llvm.ctpop.i32(i32 %2304)
  %2306 = trunc i32 %2305 to i8
  %2307 = and i8 %2306, 1
  %2308 = xor i8 %2307, 1
  store i8 %2308, i8* %22, align 1
  %2309 = xor i64 %2297, %2298
  %2310 = lshr i64 %2309, 4
  %2311 = trunc i64 %2310 to i8
  %2312 = and i8 %2311, 1
  store i8 %2312, i8* %23, align 1
  %2313 = icmp eq i64 %2298, 0
  %2314 = zext i1 %2313 to i8
  store i8 %2314, i8* %26, align 1
  %2315 = lshr i64 %2298, 63
  %2316 = trunc i64 %2315 to i8
  store i8 %2316, i8* %29, align 1
  %2317 = lshr i64 %2297, 63
  %2318 = lshr i64 %2295, 57
  %2319 = and i64 %2318, 1
  %2320 = xor i64 %2315, %2317
  %2321 = xor i64 %2315, %2319
  %2322 = add nuw nsw i64 %2320, %2321
  %2323 = icmp eq i64 %2322, 2
  %2324 = zext i1 %2323 to i8
  store i8 %2324, i8* %30, align 1
  %2325 = add i64 %2244, -8
  %2326 = add i64 %2246, 32
  store i64 %2326, i64* %3, align 8
  %2327 = inttoptr i64 %2325 to i32*
  %2328 = load i32, i32* %2327, align 4
  %2329 = sext i32 %2328 to i64
  %2330 = shl nsw i64 %2329, 4
  store i64 %2330, i64* %RDX.i268, align 8
  %2331 = add i64 %2330, %2298
  store i64 %2331, i64* %RAX.i898, align 8
  %2332 = icmp ult i64 %2331, %2298
  %2333 = icmp ult i64 %2331, %2330
  %2334 = or i1 %2332, %2333
  %2335 = zext i1 %2334 to i8
  store i8 %2335, i8* %16, align 1
  %2336 = trunc i64 %2331 to i32
  %2337 = and i32 %2336, 255
  %2338 = tail call i32 @llvm.ctpop.i32(i32 %2337)
  %2339 = trunc i32 %2338 to i8
  %2340 = and i8 %2339, 1
  %2341 = xor i8 %2340, 1
  store i8 %2341, i8* %22, align 1
  %2342 = xor i64 %2330, %2298
  %2343 = xor i64 %2342, %2331
  %2344 = lshr i64 %2343, 4
  %2345 = trunc i64 %2344 to i8
  %2346 = and i8 %2345, 1
  store i8 %2346, i8* %23, align 1
  %2347 = icmp eq i64 %2331, 0
  %2348 = zext i1 %2347 to i8
  store i8 %2348, i8* %26, align 1
  %2349 = lshr i64 %2331, 63
  %2350 = trunc i64 %2349 to i8
  store i8 %2350, i8* %29, align 1
  %2351 = lshr i64 %2329, 59
  %2352 = and i64 %2351, 1
  %2353 = xor i64 %2349, %2315
  %2354 = xor i64 %2349, %2352
  %2355 = add nuw nsw i64 %2353, %2354
  %2356 = icmp eq i64 %2355, 2
  %2357 = zext i1 %2356 to i8
  store i8 %2357, i8* %30, align 1
  %2358 = load i64, i64* %RBP.i, align 8
  %2359 = add i64 %2358, -4
  %2360 = add i64 %2246, 43
  store i64 %2360, i64* %3, align 8
  %2361 = inttoptr i64 %2359 to i32*
  %2362 = load i32, i32* %2361, align 4
  %2363 = sext i32 %2362 to i64
  store i64 %2363, i64* %RDX.i268, align 8
  %2364 = shl nsw i64 %2363, 2
  %2365 = add i64 %2364, %2331
  %2366 = load i32, i32* %EDI.i226, align 4
  %2367 = add i64 %2246, 46
  store i64 %2367, i64* %3, align 8
  %2368 = inttoptr i64 %2365 to i32*
  store i32 %2366, i32* %2368, align 4
  %2369 = load i64, i64* %RBP.i, align 8
  %2370 = add i64 %2369, -16
  %2371 = load i64, i64* %3, align 8
  %2372 = add i64 %2371, 4
  store i64 %2372, i64* %3, align 8
  %2373 = inttoptr i64 %2370 to i32*
  %2374 = load i32, i32* %2373, align 4
  %2375 = sext i32 %2374 to i64
  store i64 %2375, i64* %RAX.i898, align 8
  %2376 = shl nsw i64 %2375, 1
  %2377 = add nsw i64 %2376, 4953296
  %2378 = add i64 %2371, 12
  store i64 %2378, i64* %3, align 8
  %2379 = inttoptr i64 %2377 to i16*
  %2380 = load i16, i16* %2379, align 2
  %2381 = sext i16 %2380 to i64
  %2382 = and i64 %2381, 4294967295
  store i64 %2382, i64* %RDI.i263, align 8
  %2383 = add i64 %2369, -20
  %2384 = add i64 %2371, 15
  store i64 %2384, i64* %3, align 8
  %2385 = inttoptr i64 %2383 to i32*
  %2386 = load i32, i32* %2385, align 4
  %2387 = zext i32 %2386 to i64
  store i64 %2387, i64* %RCX.i407, align 8
  %2388 = add i64 %2371, 17
  store i64 %2388, i64* %3, align 8
  %2389 = trunc i32 %2386 to i5
  switch i5 %2389, label %2393 [
    i5 0, label %routine_shll__cl___edi.exit179
    i5 1, label %2390
  ]

; <label>:2390:                                   ; preds = %routine_shll__cl___edi.exit215
  %2391 = sext i16 %2380 to i32
  %2392 = icmp slt i16 %2380, 0
  br label %2401

; <label>:2393:                                   ; preds = %routine_shll__cl___edi.exit215
  %2394 = and i32 %2386, 31
  %2395 = zext i32 %2394 to i64
  %2396 = add nuw nsw i64 %2395, 4294967295
  %2397 = and i64 %2396, 4294967295
  %2398 = shl i64 %2382, %2397
  %2399 = trunc i64 %2398 to i32
  %2400 = icmp slt i32 %2399, 0
  br label %2401

; <label>:2401:                                   ; preds = %2393, %2390
  %2402 = phi i1 [ %2392, %2390 ], [ %2400, %2393 ]
  %.in76 = phi i32 [ %2391, %2390 ], [ %2399, %2393 ]
  %2403 = shl i32 %.in76, 1
  %2404 = zext i32 %2403 to i64
  store i64 %2404, i64* %RDI.i263, align 8
  %2405 = zext i1 %2402 to i8
  store i8 %2405, i8* %16, align 1
  %2406 = and i32 %2403, 254
  %2407 = tail call i32 @llvm.ctpop.i32(i32 %2406)
  %2408 = trunc i32 %2407 to i8
  %2409 = and i8 %2408, 1
  %2410 = xor i8 %2409, 1
  store i8 %2410, i8* %22, align 1
  store i8 0, i8* %23, align 1
  %2411 = icmp eq i32 %2403, 0
  %2412 = zext i1 %2411 to i8
  store i8 %2412, i8* %26, align 1
  %2413 = lshr i32 %.in76, 30
  %2414 = trunc i32 %2413 to i8
  %2415 = and i8 %2414, 1
  store i8 %2415, i8* %29, align 1
  store i8 0, i8* %30, align 1
  br label %routine_shll__cl___edi.exit179

routine_shll__cl___edi.exit179:                   ; preds = %2401, %routine_shll__cl___edi.exit215
  %2416 = add i64 %2369, -12
  %2417 = add i64 %2371, 21
  store i64 %2417, i64* %3, align 8
  %2418 = inttoptr i64 %2416 to i32*
  %2419 = load i32, i32* %2418, align 4
  %2420 = sext i32 %2419 to i64
  %2421 = shl nsw i64 %2420, 6
  store i64 %2421, i64* %RAX.i898, align 8
  %.lobit43 = lshr i32 %2419, 31
  %2422 = trunc i32 %.lobit43 to i8
  store i8 %2422, i8* %16, align 1
  %2423 = trunc i64 %2421 to i32
  %2424 = and i32 %2423, 192
  %2425 = tail call i32 @llvm.ctpop.i32(i32 %2424)
  %2426 = trunc i32 %2425 to i8
  %2427 = and i8 %2426, 1
  %2428 = xor i8 %2427, 1
  store i8 %2428, i8* %22, align 1
  store i8 0, i8* %23, align 1
  %2429 = icmp eq i32 %2419, 0
  %2430 = zext i1 %2429 to i8
  store i8 %2430, i8* %26, align 1
  %2431 = lshr i64 %2420, 57
  %2432 = trunc i64 %2431 to i8
  %2433 = and i8 %2432, 1
  store i8 %2433, i8* %29, align 1
  store i8 0, i8* %30, align 1
  %2434 = add i64 %2369, -64
  %2435 = add i64 %2371, 29
  store i64 %2435, i64* %3, align 8
  %2436 = inttoptr i64 %2434 to i64*
  %2437 = load i64, i64* %2436, align 8
  %2438 = add i64 %2421, %2437
  store i64 %2438, i64* %RDX.i268, align 8
  %2439 = icmp ult i64 %2438, %2437
  %2440 = icmp ult i64 %2438, %2421
  %2441 = or i1 %2439, %2440
  %2442 = zext i1 %2441 to i8
  store i8 %2442, i8* %16, align 1
  %2443 = trunc i64 %2438 to i32
  %2444 = and i32 %2443, 255
  %2445 = tail call i32 @llvm.ctpop.i32(i32 %2444)
  %2446 = trunc i32 %2445 to i8
  %2447 = and i8 %2446, 1
  %2448 = xor i8 %2447, 1
  store i8 %2448, i8* %22, align 1
  %2449 = xor i64 %2437, %2438
  %2450 = lshr i64 %2449, 4
  %2451 = trunc i64 %2450 to i8
  %2452 = and i8 %2451, 1
  store i8 %2452, i8* %23, align 1
  %2453 = icmp eq i64 %2438, 0
  %2454 = zext i1 %2453 to i8
  store i8 %2454, i8* %26, align 1
  %2455 = lshr i64 %2438, 63
  %2456 = trunc i64 %2455 to i8
  store i8 %2456, i8* %29, align 1
  %2457 = lshr i64 %2437, 63
  %2458 = lshr i64 %2420, 57
  %2459 = and i64 %2458, 1
  %2460 = xor i64 %2455, %2457
  %2461 = xor i64 %2455, %2459
  %2462 = add nuw nsw i64 %2460, %2461
  %2463 = icmp eq i64 %2462, 2
  %2464 = zext i1 %2463 to i8
  store i8 %2464, i8* %30, align 1
  %2465 = add i64 %2369, -8
  %2466 = add i64 %2371, 36
  store i64 %2466, i64* %3, align 8
  %2467 = inttoptr i64 %2465 to i32*
  %2468 = load i32, i32* %2467, align 4
  %2469 = sext i32 %2468 to i64
  %2470 = shl nsw i64 %2469, 4
  store i64 %2470, i64* %RAX.i898, align 8
  %2471 = add i64 %2470, %2438
  store i64 %2471, i64* %RDX.i268, align 8
  %2472 = icmp ult i64 %2471, %2438
  %2473 = icmp ult i64 %2471, %2470
  %2474 = or i1 %2472, %2473
  %2475 = zext i1 %2474 to i8
  store i8 %2475, i8* %16, align 1
  %2476 = trunc i64 %2471 to i32
  %2477 = and i32 %2476, 255
  %2478 = tail call i32 @llvm.ctpop.i32(i32 %2477)
  %2479 = trunc i32 %2478 to i8
  %2480 = and i8 %2479, 1
  %2481 = xor i8 %2480, 1
  store i8 %2481, i8* %22, align 1
  %2482 = xor i64 %2470, %2438
  %2483 = xor i64 %2482, %2471
  %2484 = lshr i64 %2483, 4
  %2485 = trunc i64 %2484 to i8
  %2486 = and i8 %2485, 1
  store i8 %2486, i8* %23, align 1
  %2487 = icmp eq i64 %2471, 0
  %2488 = zext i1 %2487 to i8
  store i8 %2488, i8* %26, align 1
  %2489 = lshr i64 %2471, 63
  %2490 = trunc i64 %2489 to i8
  store i8 %2490, i8* %29, align 1
  %2491 = lshr i64 %2469, 59
  %2492 = and i64 %2491, 1
  %2493 = xor i64 %2489, %2455
  %2494 = xor i64 %2489, %2492
  %2495 = add nuw nsw i64 %2493, %2494
  %2496 = icmp eq i64 %2495, 2
  %2497 = zext i1 %2496 to i8
  store i8 %2497, i8* %30, align 1
  %2498 = load i64, i64* %RBP.i, align 8
  %2499 = add i64 %2498, -4
  %2500 = add i64 %2371, 47
  store i64 %2500, i64* %3, align 8
  %2501 = inttoptr i64 %2499 to i32*
  %2502 = load i32, i32* %2501, align 4
  %2503 = sext i32 %2502 to i64
  store i64 %2503, i64* %RAX.i898, align 8
  %2504 = shl nsw i64 %2503, 2
  %2505 = add i64 %2504, %2471
  %2506 = load i32, i32* %EDI.i226, align 4
  %2507 = add i64 %2371, 50
  store i64 %2507, i64* %3, align 8
  %2508 = inttoptr i64 %2505 to i32*
  store i32 %2506, i32* %2508, align 4
  %.pre61 = load i64, i64* %3, align 8
  br label %block_.L_47bcfa

block_.L_47bcfa:                                  ; preds = %routine_shll__cl___edi.exit179, %routine_shll__cl___edi.exit306
  %2509 = phi i64 [ %.pre61, %routine_shll__cl___edi.exit179 ], [ %2112, %routine_shll__cl___edi.exit306 ]
  store i64 7397968, i64* %RAX.i898, align 8
  store i64 7398800, i64* %RCX.i407, align 8
  store i8 0, i8* %16, align 1
  store i8 1, i8* %22, align 1
  store i8 0, i8* %23, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %30, align 1
  store i64 7131024, i64* %RDX.i268, align 8
  %2510 = load i64, i64* %RBP.i, align 8
  %2511 = add i64 %2510, -16
  %2512 = add i64 %2509, 34
  store i64 %2512, i64* %3, align 8
  %2513 = inttoptr i64 %2511 to i32*
  %2514 = load i32, i32* %2513, align 4
  %2515 = sext i32 %2514 to i64
  store i64 %2515, i64* %RSI.i265, align 8
  %2516 = shl nsw i64 %2515, 1
  %2517 = add nsw i64 %2516, 4953328
  %2518 = add i64 %2509, 42
  store i64 %2518, i64* %3, align 8
  %2519 = inttoptr i64 %2517 to i16*
  %2520 = load i16, i16* %2519, align 2
  %2521 = sext i16 %2520 to i64
  %2522 = and i64 %2521, 4294967295
  store i64 %2522, i64* %RDI.i263, align 8
  %2523 = add i64 %2510, -20
  %2524 = add i64 %2509, 46
  store i64 %2524, i64* %3, align 8
  %2525 = inttoptr i64 %2523 to i32*
  %2526 = load i32, i32* %2525, align 4
  %2527 = zext i32 %2526 to i64
  store i64 %2527, i64* %37, align 8
  %2528 = add i64 %2510, -72
  %2529 = add i64 %2509, 50
  store i64 %2529, i64* %3, align 8
  %2530 = inttoptr i64 %2528 to i64*
  store i64 7398800, i64* %2530, align 8
  %2531 = load i32, i32* %R8D.i259, align 4
  %2532 = zext i32 %2531 to i64
  %2533 = load i64, i64* %3, align 8
  store i64 %2532, i64* %RCX.i407, align 8
  %2534 = load i64, i64* %RDI.i263, align 8
  %2535 = add i64 %2533, 5
  store i64 %2535, i64* %3, align 8
  %2536 = trunc i32 %2531 to i5
  switch i5 %2536, label %2543 [
    i5 0, label %routine_shll__cl___edi.exit126
    i5 1, label %2537
  ]

; <label>:2537:                                   ; preds = %block_.L_47bcfa
  %2538 = trunc i64 %2534 to i32
  %2539 = shl i32 %2538, 1
  %2540 = icmp slt i32 %2538, 0
  %2541 = icmp slt i32 %2539, 0
  %2542 = xor i1 %2540, %2541
  br label %2553

; <label>:2543:                                   ; preds = %block_.L_47bcfa
  %2544 = and i32 %2531, 31
  %2545 = zext i32 %2544 to i64
  %2546 = add nuw nsw i64 %2545, 4294967295
  %2547 = and i64 %2534, 4294967295
  %2548 = and i64 %2546, 4294967295
  %2549 = shl i64 %2547, %2548
  %2550 = trunc i64 %2549 to i32
  %2551 = icmp slt i32 %2550, 0
  %2552 = shl i32 %2550, 1
  br label %2553

; <label>:2553:                                   ; preds = %2543, %2537
  %2554 = phi i1 [ %2540, %2537 ], [ %2551, %2543 ]
  %2555 = phi i1 [ %2542, %2537 ], [ false, %2543 ]
  %2556 = phi i32 [ %2539, %2537 ], [ %2552, %2543 ]
  %2557 = zext i32 %2556 to i64
  store i64 %2557, i64* %RDI.i263, align 8
  %2558 = zext i1 %2554 to i8
  store i8 %2558, i8* %16, align 1
  %2559 = and i32 %2556, 254
  %2560 = tail call i32 @llvm.ctpop.i32(i32 %2559)
  %2561 = trunc i32 %2560 to i8
  %2562 = and i8 %2561, 1
  %2563 = xor i8 %2562, 1
  store i8 %2563, i8* %22, align 1
  store i8 0, i8* %23, align 1
  %2564 = icmp eq i32 %2556, 0
  %2565 = zext i1 %2564 to i8
  store i8 %2565, i8* %26, align 1
  %2566 = lshr i32 %2556, 31
  %2567 = trunc i32 %2566 to i8
  store i8 %2567, i8* %29, align 1
  %2568 = zext i1 %2555 to i8
  store i8 %2568, i8* %30, align 1
  br label %routine_shll__cl___edi.exit126

routine_shll__cl___edi.exit126:                   ; preds = %2553, %block_.L_47bcfa
  %2569 = load i64, i64* %RBP.i, align 8
  %2570 = add i64 %2569, -12
  %2571 = add i64 %2533, 9
  store i64 %2571, i64* %3, align 8
  %2572 = inttoptr i64 %2570 to i32*
  %2573 = load i32, i32* %2572, align 4
  %2574 = sext i32 %2573 to i64
  %2575 = shl nsw i64 %2574, 6
  store i64 %2575, i64* %RSI.i265, align 8
  %2576 = load i64, i64* %RDX.i268, align 8
  %2577 = add i64 %2575, %2576
  store i64 %2577, i64* %RDX.i268, align 8
  %2578 = icmp ult i64 %2577, %2576
  %2579 = icmp ult i64 %2577, %2575
  %2580 = or i1 %2578, %2579
  %2581 = zext i1 %2580 to i8
  store i8 %2581, i8* %16, align 1
  %2582 = trunc i64 %2577 to i32
  %2583 = and i32 %2582, 255
  %2584 = tail call i32 @llvm.ctpop.i32(i32 %2583)
  %2585 = trunc i32 %2584 to i8
  %2586 = and i8 %2585, 1
  %2587 = xor i8 %2586, 1
  store i8 %2587, i8* %22, align 1
  %2588 = xor i64 %2576, %2577
  %2589 = lshr i64 %2588, 4
  %2590 = trunc i64 %2589 to i8
  %2591 = and i8 %2590, 1
  store i8 %2591, i8* %23, align 1
  %2592 = icmp eq i64 %2577, 0
  %2593 = zext i1 %2592 to i8
  store i8 %2593, i8* %26, align 1
  %2594 = lshr i64 %2577, 63
  %2595 = trunc i64 %2594 to i8
  store i8 %2595, i8* %29, align 1
  %2596 = lshr i64 %2576, 63
  %2597 = lshr i64 %2574, 57
  %2598 = and i64 %2597, 1
  %2599 = xor i64 %2594, %2596
  %2600 = xor i64 %2594, %2598
  %2601 = add nuw nsw i64 %2599, %2600
  %2602 = icmp eq i64 %2601, 2
  %2603 = zext i1 %2602 to i8
  store i8 %2603, i8* %30, align 1
  %2604 = add i64 %2569, -8
  %2605 = add i64 %2533, 20
  store i64 %2605, i64* %3, align 8
  %2606 = inttoptr i64 %2604 to i32*
  %2607 = load i32, i32* %2606, align 4
  %2608 = sext i32 %2607 to i64
  %2609 = shl nsw i64 %2608, 4
  store i64 %2609, i64* %RSI.i265, align 8
  %2610 = add i64 %2609, %2577
  store i64 %2610, i64* %RDX.i268, align 8
  %2611 = icmp ult i64 %2610, %2577
  %2612 = icmp ult i64 %2610, %2609
  %2613 = or i1 %2611, %2612
  %2614 = zext i1 %2613 to i8
  store i8 %2614, i8* %16, align 1
  %2615 = trunc i64 %2610 to i32
  %2616 = and i32 %2615, 255
  %2617 = tail call i32 @llvm.ctpop.i32(i32 %2616)
  %2618 = trunc i32 %2617 to i8
  %2619 = and i8 %2618, 1
  %2620 = xor i8 %2619, 1
  store i8 %2620, i8* %22, align 1
  %2621 = xor i64 %2609, %2577
  %2622 = xor i64 %2621, %2610
  %2623 = lshr i64 %2622, 4
  %2624 = trunc i64 %2623 to i8
  %2625 = and i8 %2624, 1
  store i8 %2625, i8* %23, align 1
  %2626 = icmp eq i64 %2610, 0
  %2627 = zext i1 %2626 to i8
  store i8 %2627, i8* %26, align 1
  %2628 = lshr i64 %2610, 63
  %2629 = trunc i64 %2628 to i8
  store i8 %2629, i8* %29, align 1
  %2630 = lshr i64 %2608, 59
  %2631 = and i64 %2630, 1
  %2632 = xor i64 %2628, %2594
  %2633 = xor i64 %2628, %2631
  %2634 = add nuw nsw i64 %2632, %2633
  %2635 = icmp eq i64 %2634, 2
  %2636 = zext i1 %2635 to i8
  store i8 %2636, i8* %30, align 1
  %2637 = load i64, i64* %RBP.i, align 8
  %2638 = add i64 %2637, -4
  %2639 = add i64 %2533, 31
  store i64 %2639, i64* %3, align 8
  %2640 = inttoptr i64 %2638 to i32*
  %2641 = load i32, i32* %2640, align 4
  %2642 = sext i32 %2641 to i64
  store i64 %2642, i64* %RSI.i265, align 8
  %2643 = shl nsw i64 %2642, 2
  %2644 = add i64 %2643, %2610
  %2645 = load i32, i32* %EDI.i226, align 4
  %2646 = add i64 %2533, 34
  store i64 %2646, i64* %3, align 8
  %2647 = inttoptr i64 %2644 to i32*
  store i32 %2645, i32* %2647, align 4
  %2648 = load i64, i64* %RBP.i, align 8
  %2649 = add i64 %2648, -16
  %2650 = load i64, i64* %3, align 8
  %2651 = add i64 %2650, 4
  store i64 %2651, i64* %3, align 8
  %2652 = inttoptr i64 %2649 to i32*
  %2653 = load i32, i32* %2652, align 4
  %2654 = sext i32 %2653 to i64
  store i64 %2654, i64* %RDX.i268, align 8
  %2655 = shl nsw i64 %2654, 1
  %2656 = add nsw i64 %2655, 4953328
  %2657 = add i64 %2650, 12
  store i64 %2657, i64* %3, align 8
  %2658 = inttoptr i64 %2656 to i16*
  %2659 = load i16, i16* %2658, align 2
  %2660 = sext i16 %2659 to i64
  %2661 = and i64 %2660, 4294967295
  store i64 %2661, i64* %RDI.i263, align 8
  %2662 = add i64 %2648, -20
  %2663 = add i64 %2650, 15
  store i64 %2663, i64* %3, align 8
  %2664 = inttoptr i64 %2662 to i32*
  %2665 = load i32, i32* %2664, align 4
  %2666 = zext i32 %2665 to i64
  store i64 %2666, i64* %RCX.i407, align 8
  %2667 = add i64 %2650, 17
  store i64 %2667, i64* %3, align 8
  %2668 = trunc i32 %2665 to i5
  switch i5 %2668, label %2672 [
    i5 0, label %routine_shll__cl___edi.exit91
    i5 1, label %2669
  ]

; <label>:2669:                                   ; preds = %routine_shll__cl___edi.exit126
  %2670 = sext i16 %2659 to i32
  %2671 = icmp slt i16 %2659, 0
  br label %2680

; <label>:2672:                                   ; preds = %routine_shll__cl___edi.exit126
  %2673 = and i32 %2665, 31
  %2674 = zext i32 %2673 to i64
  %2675 = add nuw nsw i64 %2674, 4294967295
  %2676 = and i64 %2675, 4294967295
  %2677 = shl i64 %2661, %2676
  %2678 = trunc i64 %2677 to i32
  %2679 = icmp slt i32 %2678, 0
  br label %2680

; <label>:2680:                                   ; preds = %2672, %2669
  %2681 = phi i1 [ %2671, %2669 ], [ %2679, %2672 ]
  %.in73 = phi i32 [ %2670, %2669 ], [ %2678, %2672 ]
  %2682 = shl i32 %.in73, 1
  %2683 = zext i32 %2682 to i64
  store i64 %2683, i64* %RDI.i263, align 8
  %2684 = zext i1 %2681 to i8
  store i8 %2684, i8* %16, align 1
  %2685 = and i32 %2682, 254
  %2686 = tail call i32 @llvm.ctpop.i32(i32 %2685)
  %2687 = trunc i32 %2686 to i8
  %2688 = and i8 %2687, 1
  %2689 = xor i8 %2688, 1
  store i8 %2689, i8* %22, align 1
  store i8 0, i8* %23, align 1
  %2690 = icmp eq i32 %2682, 0
  %2691 = zext i1 %2690 to i8
  store i8 %2691, i8* %26, align 1
  %2692 = lshr i32 %.in73, 30
  %2693 = trunc i32 %2692 to i8
  %2694 = and i8 %2693, 1
  store i8 %2694, i8* %29, align 1
  store i8 0, i8* %30, align 1
  br label %routine_shll__cl___edi.exit91

routine_shll__cl___edi.exit91:                    ; preds = %2680, %routine_shll__cl___edi.exit126
  %2695 = add i64 %2648, -12
  %2696 = add i64 %2650, 21
  store i64 %2696, i64* %3, align 8
  %2697 = inttoptr i64 %2695 to i32*
  %2698 = load i32, i32* %2697, align 4
  %2699 = sext i32 %2698 to i64
  %2700 = shl nsw i64 %2699, 6
  store i64 %2700, i64* %RDX.i268, align 8
  %2701 = load i64, i64* %RAX.i898, align 8
  %2702 = add i64 %2700, %2701
  store i64 %2702, i64* %RAX.i898, align 8
  %2703 = icmp ult i64 %2702, %2701
  %2704 = icmp ult i64 %2702, %2700
  %2705 = or i1 %2703, %2704
  %2706 = zext i1 %2705 to i8
  store i8 %2706, i8* %16, align 1
  %2707 = trunc i64 %2702 to i32
  %2708 = and i32 %2707, 255
  %2709 = tail call i32 @llvm.ctpop.i32(i32 %2708)
  %2710 = trunc i32 %2709 to i8
  %2711 = and i8 %2710, 1
  %2712 = xor i8 %2711, 1
  store i8 %2712, i8* %22, align 1
  %2713 = xor i64 %2701, %2702
  %2714 = lshr i64 %2713, 4
  %2715 = trunc i64 %2714 to i8
  %2716 = and i8 %2715, 1
  store i8 %2716, i8* %23, align 1
  %2717 = icmp eq i64 %2702, 0
  %2718 = zext i1 %2717 to i8
  store i8 %2718, i8* %26, align 1
  %2719 = lshr i64 %2702, 63
  %2720 = trunc i64 %2719 to i8
  store i8 %2720, i8* %29, align 1
  %2721 = lshr i64 %2701, 63
  %2722 = lshr i64 %2699, 57
  %2723 = and i64 %2722, 1
  %2724 = xor i64 %2719, %2721
  %2725 = xor i64 %2719, %2723
  %2726 = add nuw nsw i64 %2724, %2725
  %2727 = icmp eq i64 %2726, 2
  %2728 = zext i1 %2727 to i8
  store i8 %2728, i8* %30, align 1
  %2729 = add i64 %2648, -8
  %2730 = add i64 %2650, 32
  store i64 %2730, i64* %3, align 8
  %2731 = inttoptr i64 %2729 to i32*
  %2732 = load i32, i32* %2731, align 4
  %2733 = sext i32 %2732 to i64
  %2734 = shl nsw i64 %2733, 4
  store i64 %2734, i64* %RDX.i268, align 8
  %2735 = add i64 %2734, %2702
  store i64 %2735, i64* %RAX.i898, align 8
  %2736 = icmp ult i64 %2735, %2702
  %2737 = icmp ult i64 %2735, %2734
  %2738 = or i1 %2736, %2737
  %2739 = zext i1 %2738 to i8
  store i8 %2739, i8* %16, align 1
  %2740 = trunc i64 %2735 to i32
  %2741 = and i32 %2740, 255
  %2742 = tail call i32 @llvm.ctpop.i32(i32 %2741)
  %2743 = trunc i32 %2742 to i8
  %2744 = and i8 %2743, 1
  %2745 = xor i8 %2744, 1
  store i8 %2745, i8* %22, align 1
  %2746 = xor i64 %2734, %2702
  %2747 = xor i64 %2746, %2735
  %2748 = lshr i64 %2747, 4
  %2749 = trunc i64 %2748 to i8
  %2750 = and i8 %2749, 1
  store i8 %2750, i8* %23, align 1
  %2751 = icmp eq i64 %2735, 0
  %2752 = zext i1 %2751 to i8
  store i8 %2752, i8* %26, align 1
  %2753 = lshr i64 %2735, 63
  %2754 = trunc i64 %2753 to i8
  store i8 %2754, i8* %29, align 1
  %2755 = lshr i64 %2733, 59
  %2756 = and i64 %2755, 1
  %2757 = xor i64 %2753, %2719
  %2758 = xor i64 %2753, %2756
  %2759 = add nuw nsw i64 %2757, %2758
  %2760 = icmp eq i64 %2759, 2
  %2761 = zext i1 %2760 to i8
  store i8 %2761, i8* %30, align 1
  %2762 = load i64, i64* %RBP.i, align 8
  %2763 = add i64 %2762, -4
  %2764 = add i64 %2650, 43
  store i64 %2764, i64* %3, align 8
  %2765 = inttoptr i64 %2763 to i32*
  %2766 = load i32, i32* %2765, align 4
  %2767 = sext i32 %2766 to i64
  store i64 %2767, i64* %RDX.i268, align 8
  %2768 = shl nsw i64 %2767, 2
  %2769 = add i64 %2768, %2735
  %2770 = load i32, i32* %EDI.i226, align 4
  %2771 = add i64 %2650, 46
  store i64 %2771, i64* %3, align 8
  %2772 = inttoptr i64 %2769 to i32*
  store i32 %2770, i32* %2772, align 4
  %2773 = load i64, i64* %RBP.i, align 8
  %2774 = add i64 %2773, -16
  %2775 = load i64, i64* %3, align 8
  %2776 = add i64 %2775, 4
  store i64 %2776, i64* %3, align 8
  %2777 = inttoptr i64 %2774 to i32*
  %2778 = load i32, i32* %2777, align 4
  %2779 = sext i32 %2778 to i64
  store i64 %2779, i64* %RAX.i898, align 8
  %2780 = shl nsw i64 %2779, 1
  %2781 = add nsw i64 %2780, 4953328
  %2782 = add i64 %2775, 12
  store i64 %2782, i64* %3, align 8
  %2783 = inttoptr i64 %2781 to i16*
  %2784 = load i16, i16* %2783, align 2
  %2785 = sext i16 %2784 to i64
  %2786 = and i64 %2785, 4294967295
  store i64 %2786, i64* %RDI.i263, align 8
  %2787 = add i64 %2773, -20
  %2788 = add i64 %2775, 15
  store i64 %2788, i64* %3, align 8
  %2789 = inttoptr i64 %2787 to i32*
  %2790 = load i32, i32* %2789, align 4
  %2791 = zext i32 %2790 to i64
  store i64 %2791, i64* %RCX.i407, align 8
  %2792 = add i64 %2775, 17
  store i64 %2792, i64* %3, align 8
  %2793 = trunc i32 %2790 to i5
  switch i5 %2793, label %2797 [
    i5 0, label %routine_shll__cl___edi.exit
    i5 1, label %2794
  ]

; <label>:2794:                                   ; preds = %routine_shll__cl___edi.exit91
  %2795 = sext i16 %2784 to i32
  %2796 = icmp slt i16 %2784, 0
  br label %2805

; <label>:2797:                                   ; preds = %routine_shll__cl___edi.exit91
  %2798 = and i32 %2790, 31
  %2799 = zext i32 %2798 to i64
  %2800 = add nuw nsw i64 %2799, 4294967295
  %2801 = and i64 %2800, 4294967295
  %2802 = shl i64 %2786, %2801
  %2803 = trunc i64 %2802 to i32
  %2804 = icmp slt i32 %2803, 0
  br label %2805

; <label>:2805:                                   ; preds = %2797, %2794
  %2806 = phi i1 [ %2796, %2794 ], [ %2804, %2797 ]
  %.in74 = phi i32 [ %2795, %2794 ], [ %2803, %2797 ]
  %2807 = shl i32 %.in74, 1
  %2808 = zext i32 %2807 to i64
  store i64 %2808, i64* %RDI.i263, align 8
  %2809 = zext i1 %2806 to i8
  store i8 %2809, i8* %16, align 1
  %2810 = and i32 %2807, 254
  %2811 = tail call i32 @llvm.ctpop.i32(i32 %2810)
  %2812 = trunc i32 %2811 to i8
  %2813 = and i8 %2812, 1
  %2814 = xor i8 %2813, 1
  store i8 %2814, i8* %22, align 1
  store i8 0, i8* %23, align 1
  %2815 = icmp eq i32 %2807, 0
  %2816 = zext i1 %2815 to i8
  store i8 %2816, i8* %26, align 1
  %2817 = lshr i32 %.in74, 30
  %2818 = trunc i32 %2817 to i8
  %2819 = and i8 %2818, 1
  store i8 %2819, i8* %29, align 1
  store i8 0, i8* %30, align 1
  br label %routine_shll__cl___edi.exit

routine_shll__cl___edi.exit:                      ; preds = %2805, %routine_shll__cl___edi.exit91
  %2820 = add i64 %2773, -12
  %2821 = add i64 %2775, 21
  store i64 %2821, i64* %3, align 8
  %2822 = inttoptr i64 %2820 to i32*
  %2823 = load i32, i32* %2822, align 4
  %2824 = sext i32 %2823 to i64
  %2825 = shl nsw i64 %2824, 6
  store i64 %2825, i64* %RAX.i898, align 8
  %.lobit37 = lshr i32 %2823, 31
  %2826 = trunc i32 %.lobit37 to i8
  store i8 %2826, i8* %16, align 1
  %2827 = trunc i64 %2825 to i32
  %2828 = and i32 %2827, 192
  %2829 = tail call i32 @llvm.ctpop.i32(i32 %2828)
  %2830 = trunc i32 %2829 to i8
  %2831 = and i8 %2830, 1
  %2832 = xor i8 %2831, 1
  store i8 %2832, i8* %22, align 1
  store i8 0, i8* %23, align 1
  %2833 = icmp eq i32 %2823, 0
  %2834 = zext i1 %2833 to i8
  store i8 %2834, i8* %26, align 1
  %2835 = lshr i64 %2824, 57
  %2836 = trunc i64 %2835 to i8
  %2837 = and i8 %2836, 1
  store i8 %2837, i8* %29, align 1
  store i8 0, i8* %30, align 1
  %2838 = add i64 %2773, -72
  %2839 = add i64 %2775, 29
  store i64 %2839, i64* %3, align 8
  %2840 = inttoptr i64 %2838 to i64*
  %2841 = load i64, i64* %2840, align 8
  %2842 = add i64 %2825, %2841
  store i64 %2842, i64* %RDX.i268, align 8
  %2843 = icmp ult i64 %2842, %2841
  %2844 = icmp ult i64 %2842, %2825
  %2845 = or i1 %2843, %2844
  %2846 = zext i1 %2845 to i8
  store i8 %2846, i8* %16, align 1
  %2847 = trunc i64 %2842 to i32
  %2848 = and i32 %2847, 255
  %2849 = tail call i32 @llvm.ctpop.i32(i32 %2848)
  %2850 = trunc i32 %2849 to i8
  %2851 = and i8 %2850, 1
  %2852 = xor i8 %2851, 1
  store i8 %2852, i8* %22, align 1
  %2853 = xor i64 %2841, %2842
  %2854 = lshr i64 %2853, 4
  %2855 = trunc i64 %2854 to i8
  %2856 = and i8 %2855, 1
  store i8 %2856, i8* %23, align 1
  %2857 = icmp eq i64 %2842, 0
  %2858 = zext i1 %2857 to i8
  store i8 %2858, i8* %26, align 1
  %2859 = lshr i64 %2842, 63
  %2860 = trunc i64 %2859 to i8
  store i8 %2860, i8* %29, align 1
  %2861 = lshr i64 %2841, 63
  %2862 = lshr i64 %2824, 57
  %2863 = and i64 %2862, 1
  %2864 = xor i64 %2859, %2861
  %2865 = xor i64 %2859, %2863
  %2866 = add nuw nsw i64 %2864, %2865
  %2867 = icmp eq i64 %2866, 2
  %2868 = zext i1 %2867 to i8
  store i8 %2868, i8* %30, align 1
  %2869 = add i64 %2773, -8
  %2870 = add i64 %2775, 36
  store i64 %2870, i64* %3, align 8
  %2871 = inttoptr i64 %2869 to i32*
  %2872 = load i32, i32* %2871, align 4
  %2873 = sext i32 %2872 to i64
  %2874 = shl nsw i64 %2873, 4
  store i64 %2874, i64* %RAX.i898, align 8
  %2875 = add i64 %2874, %2842
  store i64 %2875, i64* %RDX.i268, align 8
  %2876 = icmp ult i64 %2875, %2842
  %2877 = icmp ult i64 %2875, %2874
  %2878 = or i1 %2876, %2877
  %2879 = zext i1 %2878 to i8
  store i8 %2879, i8* %16, align 1
  %2880 = trunc i64 %2875 to i32
  %2881 = and i32 %2880, 255
  %2882 = tail call i32 @llvm.ctpop.i32(i32 %2881)
  %2883 = trunc i32 %2882 to i8
  %2884 = and i8 %2883, 1
  %2885 = xor i8 %2884, 1
  store i8 %2885, i8* %22, align 1
  %2886 = xor i64 %2874, %2842
  %2887 = xor i64 %2886, %2875
  %2888 = lshr i64 %2887, 4
  %2889 = trunc i64 %2888 to i8
  %2890 = and i8 %2889, 1
  store i8 %2890, i8* %23, align 1
  %2891 = icmp eq i64 %2875, 0
  %2892 = zext i1 %2891 to i8
  store i8 %2892, i8* %26, align 1
  %2893 = lshr i64 %2875, 63
  %2894 = trunc i64 %2893 to i8
  store i8 %2894, i8* %29, align 1
  %2895 = lshr i64 %2873, 59
  %2896 = and i64 %2895, 1
  %2897 = xor i64 %2893, %2859
  %2898 = xor i64 %2893, %2896
  %2899 = add nuw nsw i64 %2897, %2898
  %2900 = icmp eq i64 %2899, 2
  %2901 = zext i1 %2900 to i8
  store i8 %2901, i8* %30, align 1
  %2902 = load i64, i64* %RBP.i, align 8
  %2903 = add i64 %2902, -4
  %2904 = add i64 %2775, 47
  store i64 %2904, i64* %3, align 8
  %2905 = inttoptr i64 %2903 to i32*
  %2906 = load i32, i32* %2905, align 4
  %2907 = sext i32 %2906 to i64
  store i64 %2907, i64* %RAX.i898, align 8
  %2908 = shl nsw i64 %2907, 2
  %2909 = add i64 %2908, %2875
  %2910 = load i32, i32* %EDI.i226, align 4
  %2911 = add i64 %2775, 50
  store i64 %2911, i64* %3, align 8
  %2912 = inttoptr i64 %2909 to i32*
  store i32 %2910, i32* %2912, align 4
  %2913 = load i64, i64* %RBP.i, align 8
  %2914 = add i64 %2913, -4
  %2915 = load i64, i64* %3, align 8
  %2916 = add i64 %2915, 3
  store i64 %2916, i64* %3, align 8
  %2917 = inttoptr i64 %2914 to i32*
  %2918 = load i32, i32* %2917, align 4
  %2919 = add i32 %2918, 1
  %2920 = zext i32 %2919 to i64
  store i64 %2920, i64* %RAX.i898, align 8
  %2921 = icmp eq i32 %2918, -1
  %2922 = icmp eq i32 %2919, 0
  %2923 = or i1 %2921, %2922
  %2924 = zext i1 %2923 to i8
  store i8 %2924, i8* %16, align 1
  %2925 = and i32 %2919, 255
  %2926 = tail call i32 @llvm.ctpop.i32(i32 %2925)
  %2927 = trunc i32 %2926 to i8
  %2928 = and i8 %2927, 1
  %2929 = xor i8 %2928, 1
  store i8 %2929, i8* %22, align 1
  %2930 = xor i32 %2919, %2918
  %2931 = lshr i32 %2930, 4
  %2932 = trunc i32 %2931 to i8
  %2933 = and i8 %2932, 1
  store i8 %2933, i8* %23, align 1
  %2934 = zext i1 %2922 to i8
  store i8 %2934, i8* %26, align 1
  %2935 = lshr i32 %2919, 31
  %2936 = trunc i32 %2935 to i8
  store i8 %2936, i8* %29, align 1
  %2937 = lshr i32 %2918, 31
  %2938 = xor i32 %2935, %2937
  %2939 = add nuw nsw i32 %2938, %2935
  %2940 = icmp eq i32 %2939, 2
  %2941 = zext i1 %2940 to i8
  store i8 %2941, i8* %30, align 1
  %2942 = add i64 %2915, 9
  store i64 %2942, i64* %3, align 8
  store i32 %2919, i32* %2917, align 4
  %2943 = load i64, i64* %3, align 8
  %2944 = add i64 %2943, -594
  store i64 %2944, i64* %3, align 8
  br label %block_.L_47bb65

block_.L_47bdbc:                                  ; preds = %block_.L_47bb65
  %2945 = add i64 %1619, -8
  %2946 = add i64 %1647, 8
  store i64 %2946, i64* %3, align 8
  %2947 = inttoptr i64 %2945 to i32*
  %2948 = load i32, i32* %2947, align 4
  %2949 = add i32 %2948, 1
  %2950 = zext i32 %2949 to i64
  store i64 %2950, i64* %RAX.i898, align 8
  %2951 = icmp eq i32 %2948, -1
  %2952 = icmp eq i32 %2949, 0
  %2953 = or i1 %2951, %2952
  %2954 = zext i1 %2953 to i8
  store i8 %2954, i8* %16, align 1
  %2955 = and i32 %2949, 255
  %2956 = tail call i32 @llvm.ctpop.i32(i32 %2955)
  %2957 = trunc i32 %2956 to i8
  %2958 = and i8 %2957, 1
  %2959 = xor i8 %2958, 1
  store i8 %2959, i8* %22, align 1
  %2960 = xor i32 %2949, %2948
  %2961 = lshr i32 %2960, 4
  %2962 = trunc i32 %2961 to i8
  %2963 = and i8 %2962, 1
  store i8 %2963, i8* %23, align 1
  %2964 = zext i1 %2952 to i8
  store i8 %2964, i8* %26, align 1
  %2965 = lshr i32 %2949, 31
  %2966 = trunc i32 %2965 to i8
  store i8 %2966, i8* %29, align 1
  %2967 = lshr i32 %2948, 31
  %2968 = xor i32 %2965, %2967
  %2969 = add nuw nsw i32 %2968, %2965
  %2970 = icmp eq i32 %2969, 2
  %2971 = zext i1 %2970 to i8
  store i8 %2971, i8* %30, align 1
  %2972 = add i64 %1647, 14
  store i64 %2972, i64* %3, align 8
  store i32 %2949, i32* %2947, align 4
  %2973 = load i64, i64* %3, align 8
  %2974 = add i64 %2973, -630
  store i64 %2974, i64* %3, align 8
  br label %block_.L_47bb54

block_.L_47bdcf:                                  ; preds = %block_.L_47bb54
  %2975 = add i64 %1586, -12
  %2976 = add i64 %1614, 8
  store i64 %2976, i64* %3, align 8
  %2977 = inttoptr i64 %2975 to i32*
  %2978 = load i32, i32* %2977, align 4
  %2979 = add i32 %2978, 1
  %2980 = zext i32 %2979 to i64
  store i64 %2980, i64* %RAX.i898, align 8
  %2981 = icmp eq i32 %2978, -1
  %2982 = icmp eq i32 %2979, 0
  %2983 = or i1 %2981, %2982
  %2984 = zext i1 %2983 to i8
  store i8 %2984, i8* %16, align 1
  %2985 = and i32 %2979, 255
  %2986 = tail call i32 @llvm.ctpop.i32(i32 %2985)
  %2987 = trunc i32 %2986 to i8
  %2988 = and i8 %2987, 1
  %2989 = xor i8 %2988, 1
  store i8 %2989, i8* %22, align 1
  %2990 = xor i32 %2979, %2978
  %2991 = lshr i32 %2990, 4
  %2992 = trunc i32 %2991 to i8
  %2993 = and i8 %2992, 1
  store i8 %2993, i8* %23, align 1
  %2994 = zext i1 %2982 to i8
  store i8 %2994, i8* %26, align 1
  %2995 = lshr i32 %2979, 31
  %2996 = trunc i32 %2995 to i8
  store i8 %2996, i8* %29, align 1
  %2997 = lshr i32 %2978, 31
  %2998 = xor i32 %2995, %2997
  %2999 = add nuw nsw i32 %2998, %2995
  %3000 = icmp eq i32 %2999, 2
  %3001 = zext i1 %3000 to i8
  store i8 %3001, i8* %30, align 1
  %3002 = add i64 %1614, 14
  store i64 %3002, i64* %3, align 8
  store i32 %2979, i32* %2977, align 4
  %3003 = load i64, i64* %3, align 8
  %3004 = add i64 %3003, -678
  store i64 %3004, i64* %3, align 8
  br label %block_.L_47bb37

block_.L_47bde2:                                  ; preds = %block_.L_47bb37
  %3005 = add i64 %1551, 5
  store i64 %3005, i64* %3, align 8
  br label %block_.L_47bde7

block_.L_47bde7:                                  ; preds = %block_.L_47bde2, %block_.L_47bb2b
  %storemerge = phi i64 [ %1521, %block_.L_47bb2b ], [ %3005, %block_.L_47bde2 ]
  %3006 = add i64 %storemerge, 1
  store i64 %3006, i64* %3, align 8
  %3007 = load i64, i64* %6, align 8
  %3008 = add i64 %3007, 8
  %3009 = inttoptr i64 %3007 to i64*
  %3010 = load i64, i64* %3009, align 8
  store i64 %3010, i64* %RBP.i, align 8
  store i64 %3008, i64* %6, align 8
  %3011 = add i64 %storemerge, 2
  store i64 %3011, i64* %3, align 8
  %3012 = inttoptr i64 %3008 to i64*
  %3013 = load i64, i64* %3012, align 8
  store i64 %3013, i64* %3, align 8
  %3014 = add i64 %3007, 16
  store i64 %3014, i64* %6, align 8
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
define %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0xe00__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 3584
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
define %struct.Memory* @routine_je_.L_47bb30(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0xd__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %9 = add i32 %8, -13
  %10 = icmp ult i32 %8, 13
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
define %struct.Memory* @routine_jge_.L_47bb2b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0xf___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 15
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ugt i32 %6, -16
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
define %struct.Memory* @routine_subl__0xa___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -10
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ult i32 %6, 10
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
define %struct.Memory* @routine_jge_.L_47bb18(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_47bb05(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_shll__0x2___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %.tr = trunc i64 %3 to i32
  %6 = shl i32 %.tr, 2
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %RAX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %9 = lshr i64 %3, 30
  %10 = trunc i64 %9 to i8
  %11 = and i8 %10, 1
  store i8 %11, i8* %8, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %13 = and i32 %6, 252
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  store i8 %17, i8* %12, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %20 = icmp eq i32 %6, 0
  %21 = zext i1 %20 to i8
  store i8 %21, i8* %19, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %23 = lshr i32 %.tr, 29
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x8__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x2__0x18__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 24
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
define %struct.Memory* @routine_jne_.L_47b98f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x724be0___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 7490528, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x340___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 832
  store i64 %6, i64* %RCX, align 8
  %7 = icmp ugt i64 %3, -833
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
define %struct.Memory* @routine_movq__0x710020___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 7405600, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x10__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
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
define %struct.Memory* @routine_movswl_0x70fd60___rsi_2____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = shl i64 %3, 1
  %5 = add i64 %4, 7404896
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i16*
  %9 = load i16, i16* %8, align 2
  %10 = sext i16 %9 to i64
  %11 = and i64 %10, 4294967295
  store i64 %11, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x14__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r8d___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %R8D, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shll__cl___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i64, i64* %RDI, align 8
  %5 = load i8, i8* %CL, align 1
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  %8 = trunc i8 %5 to i5
  switch i5 %8, label %15 [
    i5 0, label %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit
    i5 1, label %9
  ]

; <label>:9:                                      ; preds = %block_400488
  %10 = trunc i64 %4 to i32
  %11 = shl i32 %10, 1
  %12 = icmp slt i32 %10, 0
  %13 = icmp slt i32 %11, 0
  %14 = xor i1 %12, %13
  br label %25

; <label>:15:                                     ; preds = %block_400488
  %16 = and i8 %5, 31
  %17 = zext i8 %16 to i64
  %18 = add nuw nsw i64 %17, 4294967295
  %19 = and i64 %4, 4294967295
  %20 = and i64 %18, 4294967295
  %21 = shl i64 %19, %20
  %22 = trunc i64 %21 to i32
  %23 = icmp slt i32 %22, 0
  %24 = shl i32 %22, 1
  br label %25

; <label>:25:                                     ; preds = %15, %9
  %26 = phi i1 [ %12, %9 ], [ %23, %15 ]
  %27 = phi i1 [ %14, %9 ], [ false, %15 ]
  %28 = phi i32 [ %11, %9 ], [ %24, %15 ]
  %29 = zext i32 %28 to i64
  store i64 %29, i64* %RDI, align 8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %31 = zext i1 %26 to i8
  store i8 %31, i8* %30, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %33 = and i32 %28, 254
  %34 = tail call i32 @llvm.ctpop.i32(i32 %33)
  %35 = trunc i32 %34 to i8
  %36 = and i8 %35, 1
  %37 = xor i8 %36, 1
  store i8 %37, i8* %32, align 1
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %38, align 1
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %40 = icmp eq i32 %28, 0
  %41 = zext i1 %40 to i8
  store i8 %41, i8* %39, align 1
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %43 = lshr i32 %28, 31
  %44 = trunc i32 %43 to i8
  store i8 %44, i8* %42, align 1
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %46 = zext i1 %27 to i8
  store i8 %46, i8* %45, align 1
  br label %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit

_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit: ; preds = %25, %block_400488
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
define %struct.Memory* @routine_shlq__0x6___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 6
  store i64 %6, i64* %RSI, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rsi___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RSI, align 8
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
define %struct.Memory* @routine_movslq_MINUS0x8__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
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
define %struct.Memory* @routine_shlq__0x4___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 4
  store i64 %6, i64* %RSI, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 60
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 240
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
  %23 = lshr i64 %3, 59
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
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
define %struct.Memory* @routine_movl__edi____rdx__rsi_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = load i64, i64* %RSI, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i32, i32* %EDI, align 4
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 3
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i32*
  store i32 %8, i32* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x10__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movswl_0x70fd80___rdx_2____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = shl i64 %3, 1
  %5 = add i64 %4, 7404928
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i16*
  %9 = load i16, i16* %8, align 2
  %10 = sext i16 %9 to i64
  %11 = and i64 %10, 4294967295
  store i64 %11, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
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
define %struct.Memory* @routine_movslq_MINUS0xc__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
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
define %struct.Memory* @routine_shlq__0x6___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 6
  store i64 %6, i64* %RDX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rdx___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RDX, align 8
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
define %struct.Memory* @routine_shlq__0x4___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 4
  store i64 %6, i64* %RDX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 60
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 240
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
  %23 = lshr i64 %3, 59
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edi____rax__rdx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i32, i32* %EDI, align 4
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 3
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i32*
  store i32 %8, i32* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x10__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
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
define %struct.Memory* @routine_movswl_0x70fda0___rax_2____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 1
  %5 = add i64 %4, 7404960
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i16*
  %9 = load i16, i16* %8, align 2
  %10 = sext i16 %9 to i64
  %11 = and i64 %10, 4294967295
  store i64 %11, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0xc__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
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
define %struct.Memory* @routine_shlq__0x6___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 6
  store i64 %6, i64* %RAX, align 8
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
define %struct.Memory* @routine_movq_MINUS0x20__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_shlq__0x4___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 4
  store i64 %6, i64* %RAX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 60
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 240
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
  %23 = lshr i64 %3, 59
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
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
define %struct.Memory* @routine_movl__edi____rdx__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i32, i32* %EDI, align 4
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 3
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i32*
  store i32 %8, i32* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47ba43(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movswl_0x70fdc0___rsi_2____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = shl i64 %3, 1
  %5 = add i64 %4, 7404992
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i16*
  %9 = load i16, i16* %8, align 2
  %10 = sext i16 %9 to i64
  %11 = and i64 %10, 4294967295
  store i64 %11, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movswl_0x70fde0___rdx_2____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = shl i64 %3, 1
  %5 = add i64 %4, 7405024
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i16*
  %9 = load i16, i16* %8, align 2
  %10 = sext i16 %9 to i64
  %11 = and i64 %10, 4294967295
  store i64 %11, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movswl_0x70fe00___rax_2____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 1
  %5 = add i64 %4, 7405056
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i16*
  %9 = load i16, i16* %8, align 2
  %10 = sext i16 %9 to i64
  %11 = and i64 %10, 4294967295
  store i64 %11, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x28__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x70e250___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 7397968, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x6ccf90___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 7131024, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movswl_0x70fe20___rsi_2____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = shl i64 %3, 1
  %5 = add i64 %4, 7405088
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i16*
  %9 = load i16, i16* %8, align 2
  %10 = sext i16 %9 to i64
  %11 = and i64 %10, 4294967295
  store i64 %11, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movswl_0x70fe40___rdx_2____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = shl i64 %3, 1
  %5 = add i64 %4, 7405120
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i16*
  %9 = load i16, i16* %8, align 2
  %10 = sext i16 %9 to i64
  %11 = and i64 %10, 4294967295
  store i64 %11, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movswl_0x70fe60___rax_2____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 1
  %5 = add i64 %4, 7405152
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i16*
  %9 = load i16, i16* %8, align 2
  %10 = sext i16 %9 to i64
  %11 = and i64 %10, 4294967295
  store i64 %11, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x30__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
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
define %struct.Memory* @routine_jmpq_.L_47b8ae(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47bb0a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_47b89d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47bb1d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
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
define %struct.Memory* @routine_jmpq_.L_47b880(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47bde7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_47bde2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_47bdcf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_47bdbc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_47bc46(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movswl_0x4b94b0___rsi_2____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = shl i64 %3, 1
  %5 = add i64 %4, 4953264
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i16*
  %9 = load i16, i16* %8, align 2
  %10 = sext i16 %9 to i64
  %11 = and i64 %10, 4294967295
  store i64 %11, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movswl_0x4b94b0___rdx_2____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = shl i64 %3, 1
  %5 = add i64 %4, 4953264
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i16*
  %9 = load i16, i16* %8, align 2
  %10 = sext i16 %9 to i64
  %11 = and i64 %10, 4294967295
  store i64 %11, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movswl_0x4b94b0___rax_2____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 1
  %5 = add i64 %4, 4953264
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i16*
  %9 = load i16, i16* %8, align 2
  %10 = sext i16 %9 to i64
  %11 = and i64 %10, 4294967295
  store i64 %11, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x38__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47bcfa(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movswl_0x4b94d0___rsi_2____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = shl i64 %3, 1
  %5 = add i64 %4, 4953296
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i16*
  %9 = load i16, i16* %8, align 2
  %10 = sext i16 %9 to i64
  %11 = and i64 %10, 4294967295
  store i64 %11, i64* %RDI, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movswl_0x4b94d0___rdx_2____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = shl i64 %3, 1
  %5 = add i64 %4, 4953296
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i16*
  %9 = load i16, i16* %8, align 2
  %10 = sext i16 %9 to i64
  %11 = and i64 %10, 4294967295
  store i64 %11, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movswl_0x4b94d0___rax_2____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 1
  %5 = add i64 %4, 4953296
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i16*
  %9 = load i16, i16* %8, align 2
  %10 = sext i16 %9 to i64
  %11 = and i64 %10, 4294967295
  store i64 %11, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x40__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movswl_0x4b94f0___rsi_2____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = shl i64 %3, 1
  %5 = add i64 %4, 4953328
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i16*
  %9 = load i16, i16* %8, align 2
  %10 = sext i16 %9 to i64
  %11 = and i64 %10, 4294967295
  store i64 %11, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movswl_0x4b94f0___rdx_2____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = shl i64 %3, 1
  %5 = add i64 %4, 4953328
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i16*
  %9 = load i16, i16* %8, align 2
  %10 = sext i16 %9 to i64
  %11 = and i64 %10, 4294967295
  store i64 %11, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movswl_0x4b94f0___rax_2____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 1
  %5 = add i64 %4, 4953328
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i16*
  %9 = load i16, i16* %8, align 2
  %10 = sext i16 %9 to i64
  %11 = and i64 %10, 4294967295
  store i64 %11, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x48__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47bb65(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47bdc1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47bb54(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47bdd4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47bb37(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
