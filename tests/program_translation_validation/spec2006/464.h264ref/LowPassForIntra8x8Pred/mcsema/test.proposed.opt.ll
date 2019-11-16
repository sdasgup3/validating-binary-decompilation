; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
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

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @LowPassForIntra8x8Pred(%struct.State* noalias, i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #1 {
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
  %RDI.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %11 = add i64 %7, -16
  %12 = load i64, i64* %RDI.i, align 8
  %13 = add i64 %10, 7
  store i64 %13, i64* %3, align 8
  %14 = inttoptr i64 %11 to i64*
  store i64 %12, i64* %14, align 8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i509 = bitcast %union.anon* %15 to i32*
  %16 = load i64, i64* %RBP.i, align 8
  %17 = add i64 %16, -12
  %18 = load i32, i32* %ESI.i509, align 4
  %19 = load i64, i64* %3, align 8
  %20 = add i64 %19, 3
  store i64 %20, i64* %3, align 8
  %21 = inttoptr i64 %17 to i32*
  store i32 %18, i32* %21, align 4
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX.i506 = bitcast %union.anon* %22 to i32*
  %23 = load i64, i64* %RBP.i, align 8
  %24 = add i64 %23, -16
  %25 = load i32, i32* %EDX.i506, align 4
  %26 = load i64, i64* %3, align 8
  %27 = add i64 %26, 3
  store i64 %27, i64* %3, align 8
  %28 = inttoptr i64 %24 to i32*
  store i32 %25, i32* %28, align 4
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX.i503 = bitcast %union.anon* %29 to i32*
  %30 = load i64, i64* %RBP.i, align 8
  %31 = add i64 %30, -20
  %32 = load i32, i32* %ECX.i503, align 4
  %33 = load i64, i64* %3, align 8
  %34 = add i64 %33, 3
  store i64 %34, i64* %3, align 8
  %35 = inttoptr i64 %31 to i32*
  store i32 %32, i32* %35, align 4
  %36 = load i64, i64* %RBP.i, align 8
  %37 = add i64 %36, -24
  %38 = load i64, i64* %3, align 8
  %39 = add i64 %38, 7
  store i64 %39, i64* %3, align 8
  %40 = inttoptr i64 %37 to i32*
  store i32 0, i32* %40, align 4
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %RAX.i495 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX.i492 = getelementptr inbounds %union.anon, %union.anon* %29, i64 0, i32 0
  %RDX.i490 = getelementptr inbounds %union.anon, %union.anon* %22, i64 0, i32 0
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_4ac3c8

block_.L_4ac3c8:                                  ; preds = %block_4ac3d2, %entry
  %47 = phi i64 [ %130, %block_4ac3d2 ], [ %.pre, %entry ]
  %48 = load i64, i64* %RBP.i, align 8
  %49 = add i64 %48, -24
  %50 = add i64 %47, 4
  store i64 %50, i64* %3, align 8
  %51 = inttoptr i64 %49 to i32*
  %52 = load i32, i32* %51, align 4
  %53 = add i32 %52, -25
  %54 = icmp ult i32 %52, 25
  %55 = zext i1 %54 to i8
  store i8 %55, i8* %41, align 1
  %56 = and i32 %53, 255
  %57 = tail call i32 @llvm.ctpop.i32(i32 %56)
  %58 = trunc i32 %57 to i8
  %59 = and i8 %58, 1
  %60 = xor i8 %59, 1
  store i8 %60, i8* %42, align 1
  %61 = xor i32 %52, 16
  %62 = xor i32 %61, %53
  %63 = lshr i32 %62, 4
  %64 = trunc i32 %63 to i8
  %65 = and i8 %64, 1
  store i8 %65, i8* %43, align 1
  %66 = icmp eq i32 %53, 0
  %67 = zext i1 %66 to i8
  store i8 %67, i8* %44, align 1
  %68 = lshr i32 %53, 31
  %69 = trunc i32 %68 to i8
  store i8 %69, i8* %45, align 1
  %70 = lshr i32 %52, 31
  %71 = xor i32 %68, %70
  %72 = add nuw nsw i32 %71, %70
  %73 = icmp eq i32 %72, 2
  %74 = zext i1 %73 to i8
  store i8 %74, i8* %46, align 1
  %75 = icmp ne i8 %69, 0
  %76 = xor i1 %75, %73
  %.v48 = select i1 %76, i64 10, i64 43
  %77 = add i64 %47, %.v48
  store i64 %77, i64* %3, align 8
  br i1 %76, label %block_4ac3d2, label %block_.L_4ac3f3

block_4ac3d2:                                     ; preds = %block_.L_4ac3c8
  %78 = add i64 %48, -8
  %79 = add i64 %77, 4
  store i64 %79, i64* %3, align 8
  %80 = inttoptr i64 %78 to i64*
  %81 = load i64, i64* %80, align 8
  store i64 %81, i64* %RAX.i495, align 8
  %82 = add i64 %77, 8
  store i64 %82, i64* %3, align 8
  %83 = load i32, i32* %51, align 4
  %84 = sext i32 %83 to i64
  store i64 %84, i64* %RCX.i492, align 8
  %85 = shl nsw i64 %84, 2
  %86 = add i64 %85, %81
  %87 = add i64 %77, 11
  store i64 %87, i64* %3, align 8
  %88 = inttoptr i64 %86 to i32*
  %89 = load i32, i32* %88, align 4
  %90 = zext i32 %89 to i64
  store i64 %90, i64* %RDX.i490, align 8
  %91 = add i64 %77, 15
  store i64 %91, i64* %3, align 8
  %92 = load i32, i32* %51, align 4
  %93 = sext i32 %92 to i64
  store i64 %93, i64* %RAX.i495, align 8
  %94 = shl nsw i64 %93, 2
  %95 = add i64 %48, -128
  %96 = add i64 %95, %94
  %97 = add i64 %77, 19
  store i64 %97, i64* %3, align 8
  %98 = inttoptr i64 %96 to i32*
  store i32 %89, i32* %98, align 4
  %99 = load i64, i64* %RBP.i, align 8
  %100 = add i64 %99, -24
  %101 = load i64, i64* %3, align 8
  %102 = add i64 %101, 3
  store i64 %102, i64* %3, align 8
  %103 = inttoptr i64 %100 to i32*
  %104 = load i32, i32* %103, align 4
  %105 = add i32 %104, 1
  %106 = zext i32 %105 to i64
  store i64 %106, i64* %RAX.i495, align 8
  %107 = icmp eq i32 %104, -1
  %108 = icmp eq i32 %105, 0
  %109 = or i1 %107, %108
  %110 = zext i1 %109 to i8
  store i8 %110, i8* %41, align 1
  %111 = and i32 %105, 255
  %112 = tail call i32 @llvm.ctpop.i32(i32 %111)
  %113 = trunc i32 %112 to i8
  %114 = and i8 %113, 1
  %115 = xor i8 %114, 1
  store i8 %115, i8* %42, align 1
  %116 = xor i32 %105, %104
  %117 = lshr i32 %116, 4
  %118 = trunc i32 %117 to i8
  %119 = and i8 %118, 1
  store i8 %119, i8* %43, align 1
  %120 = zext i1 %108 to i8
  store i8 %120, i8* %44, align 1
  %121 = lshr i32 %105, 31
  %122 = trunc i32 %121 to i8
  store i8 %122, i8* %45, align 1
  %123 = lshr i32 %104, 31
  %124 = xor i32 %121, %123
  %125 = add nuw nsw i32 %124, %121
  %126 = icmp eq i32 %125, 2
  %127 = zext i1 %126 to i8
  store i8 %127, i8* %46, align 1
  %128 = add i64 %101, 9
  store i64 %128, i64* %3, align 8
  store i32 %105, i32* %103, align 4
  %129 = load i64, i64* %3, align 8
  %130 = add i64 %129, -38
  store i64 %130, i64* %3, align 8
  br label %block_.L_4ac3c8

block_.L_4ac3f3:                                  ; preds = %block_.L_4ac3c8
  %131 = add i64 %48, -16
  %132 = add i64 %77, 4
  store i64 %132, i64* %3, align 8
  %133 = inttoptr i64 %131 to i32*
  %134 = load i32, i32* %133, align 4
  store i8 0, i8* %41, align 1
  %135 = and i32 %134, 255
  %136 = tail call i32 @llvm.ctpop.i32(i32 %135)
  %137 = trunc i32 %136 to i8
  %138 = and i8 %137, 1
  %139 = xor i8 %138, 1
  store i8 %139, i8* %42, align 1
  store i8 0, i8* %43, align 1
  %140 = icmp eq i32 %134, 0
  %141 = zext i1 %140 to i8
  store i8 %141, i8* %44, align 1
  %142 = lshr i32 %134, 31
  %143 = trunc i32 %142 to i8
  store i8 %143, i8* %45, align 1
  store i8 0, i8* %46, align 1
  %.v47 = select i1 %140, i64 222, i64 10
  %144 = add i64 %77, %.v47
  store i64 %144, i64* %3, align 8
  br i1 %140, label %block_.L_4ac4d1, label %block_4ac3fd

block_4ac3fd:                                     ; preds = %block_.L_4ac3f3
  %145 = add i64 %48, -12
  %146 = add i64 %144, 4
  store i64 %146, i64* %3, align 8
  %147 = inttoptr i64 %145 to i32*
  %148 = load i32, i32* %147, align 4
  store i8 0, i8* %41, align 1
  %149 = and i32 %148, 255
  %150 = tail call i32 @llvm.ctpop.i32(i32 %149)
  %151 = trunc i32 %150 to i8
  %152 = and i8 %151, 1
  %153 = xor i8 %152, 1
  store i8 %153, i8* %42, align 1
  store i8 0, i8* %43, align 1
  %154 = icmp eq i32 %148, 0
  %155 = zext i1 %154 to i8
  store i8 %155, i8* %44, align 1
  %156 = lshr i32 %148, 31
  %157 = trunc i32 %156 to i8
  store i8 %157, i8* %45, align 1
  store i8 0, i8* %46, align 1
  %.v = select i1 %154, i64 49, i64 10
  %158 = add i64 %144, %.v
  %159 = add i64 %48, -8
  %160 = add i64 %158, 4
  store i64 %160, i64* %3, align 8
  %161 = inttoptr i64 %159 to i64*
  %162 = load i64, i64* %161, align 8
  store i64 %162, i64* %RAX.i495, align 8
  br i1 %154, label %block_.L_4ac42e, label %block_4ac407

block_4ac407:                                     ; preds = %block_4ac3fd
  %163 = add i64 %158, 6
  store i64 %163, i64* %3, align 8
  %164 = inttoptr i64 %162 to i32*
  %165 = load i32, i32* %164, align 4
  %166 = zext i32 %165 to i64
  store i64 %166, i64* %RCX.i492, align 8
  %167 = add i64 %158, 10
  store i64 %167, i64* %3, align 8
  %168 = load i64, i64* %161, align 8
  store i64 %168, i64* %RAX.i495, align 8
  %169 = add i64 %168, 4
  %170 = add i64 %158, 13
  store i64 %170, i64* %3, align 8
  %171 = inttoptr i64 %169 to i32*
  %172 = load i32, i32* %171, align 4
  %173 = shl i32 %172, 1
  %174 = zext i32 %173 to i64
  store i64 %174, i64* %RDX.i490, align 8
  %175 = add i32 %173, %165
  %176 = zext i32 %175 to i64
  store i64 %176, i64* %RCX.i492, align 8
  %177 = icmp ult i32 %175, %165
  %178 = icmp ult i32 %175, %173
  %179 = or i1 %177, %178
  %180 = zext i1 %179 to i8
  store i8 %180, i8* %41, align 1
  %181 = and i32 %175, 255
  %182 = tail call i32 @llvm.ctpop.i32(i32 %181)
  %183 = trunc i32 %182 to i8
  %184 = and i8 %183, 1
  %185 = xor i8 %184, 1
  store i8 %185, i8* %42, align 1
  %186 = xor i32 %173, %165
  %187 = xor i32 %186, %175
  %188 = lshr i32 %187, 4
  %189 = trunc i32 %188 to i8
  %190 = and i8 %189, 1
  store i8 %190, i8* %43, align 1
  %191 = icmp eq i32 %175, 0
  %192 = zext i1 %191 to i8
  store i8 %192, i8* %44, align 1
  %193 = lshr i32 %175, 31
  %194 = trunc i32 %193 to i8
  store i8 %194, i8* %45, align 1
  %195 = lshr i32 %165, 31
  %196 = lshr i32 %172, 30
  %197 = and i32 %196, 1
  %198 = xor i32 %193, %195
  %199 = xor i32 %193, %197
  %200 = add nuw nsw i32 %198, %199
  %201 = icmp eq i32 %200, 2
  %202 = zext i1 %201 to i8
  store i8 %202, i8* %46, align 1
  %203 = add i64 %158, 21
  store i64 %203, i64* %3, align 8
  %204 = load i64, i64* %161, align 8
  store i64 %204, i64* %RAX.i495, align 8
  %205 = add i64 %204, 8
  %206 = add i64 %158, 24
  store i64 %206, i64* %3, align 8
  %207 = inttoptr i64 %205 to i32*
  %208 = load i32, i32* %207, align 4
  %209 = add i32 %208, %175
  %210 = add i32 %209, 2
  %211 = zext i32 %210 to i64
  %212 = shl nuw i64 %211, 32
  %213 = ashr i64 %212, 33
  %214 = lshr i64 %213, 1
  %215 = trunc i64 %213 to i8
  %216 = and i8 %215, 1
  %217 = trunc i64 %214 to i32
  %218 = and i64 %214, 4294967295
  store i64 %218, i64* %RCX.i492, align 8
  store i8 %216, i8* %41, align 1
  %219 = and i32 %217, 255
  %220 = tail call i32 @llvm.ctpop.i32(i32 %219)
  %221 = trunc i32 %220 to i8
  %222 = and i8 %221, 1
  %223 = xor i8 %222, 1
  store i8 %223, i8* %42, align 1
  store i8 0, i8* %43, align 1
  %224 = icmp eq i32 %217, 0
  %225 = zext i1 %224 to i8
  store i8 %225, i8* %44, align 1
  %226 = lshr i64 %213, 32
  %227 = trunc i64 %226 to i8
  %228 = and i8 %227, 1
  store i8 %228, i8* %45, align 1
  store i8 0, i8* %46, align 1
  %229 = load i64, i64* %RBP.i, align 8
  %230 = add i64 %229, -124
  %231 = trunc i64 %214 to i32
  %232 = add i64 %158, 33
  store i64 %232, i64* %3, align 8
  %233 = inttoptr i64 %230 to i32*
  store i32 %231, i32* %233, align 4
  %234 = load i64, i64* %3, align 8
  %235 = add i64 %234, 40
  store i64 %235, i64* %3, align 8
  br label %block_.L_4ac451

block_.L_4ac42e:                                  ; preds = %block_4ac3fd
  %236 = add i64 %162, 4
  %237 = add i64 %158, 7
  store i64 %237, i64* %3, align 8
  %238 = inttoptr i64 %236 to i32*
  %239 = load i32, i32* %238, align 4
  %240 = zext i32 %239 to i64
  store i64 %240, i64* %RCX.i492, align 8
  %241 = add i64 %158, 11
  store i64 %241, i64* %3, align 8
  %242 = load i64, i64* %161, align 8
  store i64 %242, i64* %RAX.i495, align 8
  %243 = add i64 %242, 4
  %244 = add i64 %158, 14
  store i64 %244, i64* %3, align 8
  %245 = inttoptr i64 %243 to i32*
  %246 = load i32, i32* %245, align 4
  %247 = shl i32 %246, 1
  %248 = zext i32 %247 to i64
  store i64 %248, i64* %RDX.i490, align 8
  %249 = add i32 %247, %239
  %250 = zext i32 %249 to i64
  store i64 %250, i64* %RCX.i492, align 8
  %251 = icmp ult i32 %249, %239
  %252 = icmp ult i32 %249, %247
  %253 = or i1 %251, %252
  %254 = zext i1 %253 to i8
  store i8 %254, i8* %41, align 1
  %255 = and i32 %249, 255
  %256 = tail call i32 @llvm.ctpop.i32(i32 %255)
  %257 = trunc i32 %256 to i8
  %258 = and i8 %257, 1
  %259 = xor i8 %258, 1
  store i8 %259, i8* %42, align 1
  %260 = xor i32 %247, %239
  %261 = xor i32 %260, %249
  %262 = lshr i32 %261, 4
  %263 = trunc i32 %262 to i8
  %264 = and i8 %263, 1
  store i8 %264, i8* %43, align 1
  %265 = icmp eq i32 %249, 0
  %266 = zext i1 %265 to i8
  store i8 %266, i8* %44, align 1
  %267 = lshr i32 %249, 31
  %268 = trunc i32 %267 to i8
  store i8 %268, i8* %45, align 1
  %269 = lshr i32 %239, 31
  %270 = lshr i32 %246, 30
  %271 = and i32 %270, 1
  %272 = xor i32 %267, %269
  %273 = xor i32 %267, %271
  %274 = add nuw nsw i32 %272, %273
  %275 = icmp eq i32 %274, 2
  %276 = zext i1 %275 to i8
  store i8 %276, i8* %46, align 1
  %277 = add i64 %158, 22
  store i64 %277, i64* %3, align 8
  %278 = load i64, i64* %161, align 8
  store i64 %278, i64* %RAX.i495, align 8
  %279 = add i64 %278, 8
  %280 = add i64 %158, 25
  store i64 %280, i64* %3, align 8
  %281 = inttoptr i64 %279 to i32*
  %282 = load i32, i32* %281, align 4
  %283 = add i32 %282, %249
  %284 = add i32 %283, 2
  %285 = zext i32 %284 to i64
  %286 = shl nuw i64 %285, 32
  %287 = ashr i64 %286, 33
  %288 = lshr i64 %287, 1
  %289 = trunc i64 %287 to i8
  %290 = and i8 %289, 1
  %291 = trunc i64 %288 to i32
  %292 = and i64 %288, 4294967295
  store i64 %292, i64* %RCX.i492, align 8
  store i8 %290, i8* %41, align 1
  %293 = and i32 %291, 255
  %294 = tail call i32 @llvm.ctpop.i32(i32 %293)
  %295 = trunc i32 %294 to i8
  %296 = and i8 %295, 1
  %297 = xor i8 %296, 1
  store i8 %297, i8* %42, align 1
  store i8 0, i8* %43, align 1
  %298 = icmp eq i32 %291, 0
  %299 = zext i1 %298 to i8
  store i8 %299, i8* %44, align 1
  %300 = lshr i64 %287, 32
  %301 = trunc i64 %300 to i8
  %302 = and i8 %301, 1
  store i8 %302, i8* %45, align 1
  store i8 0, i8* %46, align 1
  %303 = load i64, i64* %RBP.i, align 8
  %304 = add i64 %303, -124
  %305 = trunc i64 %288 to i32
  %306 = add i64 %158, 34
  store i64 %306, i64* %3, align 8
  %307 = inttoptr i64 %304 to i32*
  store i32 %305, i32* %307, align 4
  %.pre36 = load i64, i64* %3, align 8
  br label %block_.L_4ac451

block_.L_4ac451:                                  ; preds = %block_.L_4ac42e, %block_4ac407
  %308 = phi i64 [ %.pre36, %block_.L_4ac42e ], [ %235, %block_4ac407 ]
  %309 = load i64, i64* %RBP.i, align 8
  %310 = add i64 %309, -24
  %311 = add i64 %308, 7
  store i64 %311, i64* %3, align 8
  %312 = inttoptr i64 %310 to i32*
  store i32 2, i32* %312, align 4
  %RSI.i377 = getelementptr inbounds %union.anon, %union.anon* %15, i64 0, i32 0
  %.pre37 = load i64, i64* %3, align 8
  br label %block_.L_4ac458

block_.L_4ac458:                                  ; preds = %block_4ac462, %block_.L_4ac451
  %313 = phi i64 [ %520, %block_4ac462 ], [ %.pre37, %block_.L_4ac451 ]
  %314 = load i64, i64* %RBP.i, align 8
  %315 = add i64 %314, -24
  %316 = add i64 %313, 4
  store i64 %316, i64* %3, align 8
  %317 = inttoptr i64 %315 to i32*
  %318 = load i32, i32* %317, align 4
  %319 = add i32 %318, -16
  %320 = icmp ult i32 %318, 16
  %321 = zext i1 %320 to i8
  store i8 %321, i8* %41, align 1
  %322 = and i32 %319, 255
  %323 = tail call i32 @llvm.ctpop.i32(i32 %322)
  %324 = trunc i32 %323 to i8
  %325 = and i8 %324, 1
  %326 = xor i8 %325, 1
  store i8 %326, i8* %42, align 1
  %327 = xor i32 %318, 16
  %328 = xor i32 %327, %319
  %329 = lshr i32 %328, 4
  %330 = trunc i32 %329 to i8
  %331 = and i8 %330, 1
  store i8 %331, i8* %43, align 1
  %332 = icmp eq i32 %319, 0
  %333 = zext i1 %332 to i8
  store i8 %333, i8* %44, align 1
  %334 = lshr i32 %319, 31
  %335 = trunc i32 %334 to i8
  store i8 %335, i8* %45, align 1
  %336 = lshr i32 %318, 31
  %337 = xor i32 %334, %336
  %338 = add nuw nsw i32 %337, %336
  %339 = icmp eq i32 %338, 2
  %340 = zext i1 %339 to i8
  store i8 %340, i8* %46, align 1
  %341 = icmp ne i8 %335, 0
  %342 = xor i1 %341, %339
  %.v49 = select i1 %342, i64 10, i64 86
  %343 = add i64 %313, %.v49
  %344 = add i64 %314, -8
  %345 = add i64 %343, 4
  store i64 %345, i64* %3, align 8
  %346 = inttoptr i64 %344 to i64*
  %347 = load i64, i64* %346, align 8
  store i64 %347, i64* %RAX.i495, align 8
  br i1 %342, label %block_4ac462, label %block_.L_4ac4ae

block_4ac462:                                     ; preds = %block_.L_4ac458
  %348 = add i64 %343, 7
  store i64 %348, i64* %3, align 8
  %349 = load i32, i32* %317, align 4
  %350 = add i32 %349, -1
  %351 = zext i32 %350 to i64
  store i64 %351, i64* %RCX.i492, align 8
  %352 = icmp eq i32 %349, 0
  %353 = zext i1 %352 to i8
  store i8 %353, i8* %41, align 1
  %354 = and i32 %350, 255
  %355 = tail call i32 @llvm.ctpop.i32(i32 %354)
  %356 = trunc i32 %355 to i8
  %357 = and i8 %356, 1
  %358 = xor i8 %357, 1
  store i8 %358, i8* %42, align 1
  %359 = xor i32 %350, %349
  %360 = lshr i32 %359, 4
  %361 = trunc i32 %360 to i8
  %362 = and i8 %361, 1
  store i8 %362, i8* %43, align 1
  %363 = icmp eq i32 %350, 0
  %364 = zext i1 %363 to i8
  store i8 %364, i8* %44, align 1
  %365 = lshr i32 %350, 31
  %366 = trunc i32 %365 to i8
  store i8 %366, i8* %45, align 1
  %367 = lshr i32 %349, 31
  %368 = xor i32 %365, %367
  %369 = add nuw nsw i32 %368, %367
  %370 = icmp eq i32 %369, 2
  %371 = zext i1 %370 to i8
  store i8 %371, i8* %46, align 1
  %372 = sext i32 %350 to i64
  store i64 %372, i64* %RDX.i490, align 8
  %373 = shl nsw i64 %372, 2
  %374 = add i64 %347, %373
  %375 = add i64 %343, 16
  store i64 %375, i64* %3, align 8
  %376 = inttoptr i64 %374 to i32*
  %377 = load i32, i32* %376, align 4
  %378 = zext i32 %377 to i64
  store i64 %378, i64* %RCX.i492, align 8
  %379 = add i64 %343, 20
  store i64 %379, i64* %3, align 8
  %380 = load i64, i64* %346, align 8
  store i64 %380, i64* %RAX.i495, align 8
  %381 = add i64 %343, 24
  store i64 %381, i64* %3, align 8
  %382 = load i32, i32* %317, align 4
  %383 = sext i32 %382 to i64
  store i64 %383, i64* %RDX.i490, align 8
  %384 = shl nsw i64 %383, 2
  %385 = add i64 %384, %380
  %386 = add i64 %343, 27
  store i64 %386, i64* %3, align 8
  %387 = inttoptr i64 %385 to i32*
  %388 = load i32, i32* %387, align 4
  %389 = shl i32 %388, 1
  %390 = zext i32 %389 to i64
  store i64 %390, i64* %RSI.i377, align 8
  %391 = add i32 %389, %377
  %392 = zext i32 %391 to i64
  store i64 %392, i64* %RCX.i492, align 8
  %393 = icmp ult i32 %391, %377
  %394 = icmp ult i32 %391, %389
  %395 = or i1 %393, %394
  %396 = zext i1 %395 to i8
  store i8 %396, i8* %41, align 1
  %397 = and i32 %391, 255
  %398 = tail call i32 @llvm.ctpop.i32(i32 %397)
  %399 = trunc i32 %398 to i8
  %400 = and i8 %399, 1
  %401 = xor i8 %400, 1
  store i8 %401, i8* %42, align 1
  %402 = xor i32 %389, %377
  %403 = xor i32 %402, %391
  %404 = lshr i32 %403, 4
  %405 = trunc i32 %404 to i8
  %406 = and i8 %405, 1
  store i8 %406, i8* %43, align 1
  %407 = icmp eq i32 %391, 0
  %408 = zext i1 %407 to i8
  store i8 %408, i8* %44, align 1
  %409 = lshr i32 %391, 31
  %410 = trunc i32 %409 to i8
  store i8 %410, i8* %45, align 1
  %411 = lshr i32 %377, 31
  %412 = lshr i32 %388, 30
  %413 = and i32 %412, 1
  %414 = xor i32 %409, %411
  %415 = xor i32 %409, %413
  %416 = add nuw nsw i32 %414, %415
  %417 = icmp eq i32 %416, 2
  %418 = zext i1 %417 to i8
  store i8 %418, i8* %46, align 1
  %419 = load i64, i64* %RBP.i, align 8
  %420 = add i64 %419, -8
  %421 = add i64 %343, 35
  store i64 %421, i64* %3, align 8
  %422 = inttoptr i64 %420 to i64*
  %423 = load i64, i64* %422, align 8
  store i64 %423, i64* %RAX.i495, align 8
  %424 = add i64 %419, -24
  %425 = add i64 %343, 38
  store i64 %425, i64* %3, align 8
  %426 = inttoptr i64 %424 to i32*
  %427 = load i32, i32* %426, align 4
  %428 = add i32 %427, 1
  %429 = zext i32 %428 to i64
  store i64 %429, i64* %RSI.i377, align 8
  %430 = icmp eq i32 %427, -1
  %431 = icmp eq i32 %428, 0
  %432 = or i1 %430, %431
  %433 = zext i1 %432 to i8
  store i8 %433, i8* %41, align 1
  %434 = and i32 %428, 255
  %435 = tail call i32 @llvm.ctpop.i32(i32 %434)
  %436 = trunc i32 %435 to i8
  %437 = and i8 %436, 1
  %438 = xor i8 %437, 1
  store i8 %438, i8* %42, align 1
  %439 = xor i32 %428, %427
  %440 = lshr i32 %439, 4
  %441 = trunc i32 %440 to i8
  %442 = and i8 %441, 1
  store i8 %442, i8* %43, align 1
  %443 = zext i1 %431 to i8
  store i8 %443, i8* %44, align 1
  %444 = lshr i32 %428, 31
  %445 = trunc i32 %444 to i8
  store i8 %445, i8* %45, align 1
  %446 = lshr i32 %427, 31
  %447 = xor i32 %444, %446
  %448 = add nuw nsw i32 %447, %444
  %449 = icmp eq i32 %448, 2
  %450 = zext i1 %449 to i8
  store i8 %450, i8* %46, align 1
  %451 = sext i32 %428 to i64
  store i64 %451, i64* %RDX.i490, align 8
  %452 = shl nsw i64 %451, 2
  %453 = add i64 %423, %452
  %454 = add i64 %343, 47
  store i64 %454, i64* %3, align 8
  %455 = inttoptr i64 %453 to i32*
  %456 = load i32, i32* %455, align 4
  %457 = add i32 %456, %391
  %458 = add i32 %457, 2
  %459 = zext i32 %458 to i64
  %460 = shl nuw i64 %459, 32
  %461 = ashr i64 %460, 33
  %462 = lshr i64 %461, 1
  %463 = trunc i64 %461 to i8
  %464 = and i8 %463, 1
  %465 = trunc i64 %462 to i32
  %466 = and i64 %462, 4294967295
  store i64 %466, i64* %RCX.i492, align 8
  store i8 %464, i8* %41, align 1
  %467 = and i32 %465, 255
  %468 = tail call i32 @llvm.ctpop.i32(i32 %467)
  %469 = trunc i32 %468 to i8
  %470 = and i8 %469, 1
  %471 = xor i8 %470, 1
  store i8 %471, i8* %42, align 1
  store i8 0, i8* %43, align 1
  %472 = icmp eq i32 %465, 0
  %473 = zext i1 %472 to i8
  store i8 %473, i8* %44, align 1
  %474 = lshr i64 %461, 32
  %475 = trunc i64 %474 to i8
  %476 = and i8 %475, 1
  store i8 %476, i8* %45, align 1
  store i8 0, i8* %46, align 1
  %477 = load i64, i64* %RBP.i, align 8
  %478 = add i64 %477, -24
  %479 = add i64 %343, 57
  store i64 %479, i64* %3, align 8
  %480 = inttoptr i64 %478 to i32*
  %481 = load i32, i32* %480, align 4
  %482 = sext i32 %481 to i64
  store i64 %482, i64* %RAX.i495, align 8
  %483 = shl nsw i64 %482, 2
  %484 = add i64 %477, -128
  %485 = add i64 %484, %483
  %486 = trunc i64 %462 to i32
  %487 = add i64 %343, 61
  store i64 %487, i64* %3, align 8
  %488 = inttoptr i64 %485 to i32*
  store i32 %486, i32* %488, align 4
  %489 = load i64, i64* %RBP.i, align 8
  %490 = add i64 %489, -24
  %491 = load i64, i64* %3, align 8
  %492 = add i64 %491, 3
  store i64 %492, i64* %3, align 8
  %493 = inttoptr i64 %490 to i32*
  %494 = load i32, i32* %493, align 4
  %495 = add i32 %494, 1
  %496 = zext i32 %495 to i64
  store i64 %496, i64* %RAX.i495, align 8
  %497 = icmp eq i32 %494, -1
  %498 = icmp eq i32 %495, 0
  %499 = or i1 %497, %498
  %500 = zext i1 %499 to i8
  store i8 %500, i8* %41, align 1
  %501 = and i32 %495, 255
  %502 = tail call i32 @llvm.ctpop.i32(i32 %501)
  %503 = trunc i32 %502 to i8
  %504 = and i8 %503, 1
  %505 = xor i8 %504, 1
  store i8 %505, i8* %42, align 1
  %506 = xor i32 %495, %494
  %507 = lshr i32 %506, 4
  %508 = trunc i32 %507 to i8
  %509 = and i8 %508, 1
  store i8 %509, i8* %43, align 1
  %510 = zext i1 %498 to i8
  store i8 %510, i8* %44, align 1
  %511 = lshr i32 %495, 31
  %512 = trunc i32 %511 to i8
  store i8 %512, i8* %45, align 1
  %513 = lshr i32 %494, 31
  %514 = xor i32 %511, %513
  %515 = add nuw nsw i32 %514, %511
  %516 = icmp eq i32 %515, 2
  %517 = zext i1 %516 to i8
  store i8 %517, i8* %46, align 1
  %518 = add i64 %491, 9
  store i64 %518, i64* %3, align 8
  store i32 %495, i32* %493, align 4
  %519 = load i64, i64* %3, align 8
  %520 = add i64 %519, -81
  store i64 %520, i64* %3, align 8
  br label %block_.L_4ac458

block_.L_4ac4ae:                                  ; preds = %block_.L_4ac458
  %521 = add i64 %347, 64
  %522 = add i64 %343, 7
  store i64 %522, i64* %3, align 8
  %523 = inttoptr i64 %521 to i32*
  %524 = load i32, i32* %523, align 4
  %525 = zext i32 %524 to i64
  store i64 %525, i64* %RCX.i492, align 8
  %526 = add i64 %343, 11
  store i64 %526, i64* %3, align 8
  %527 = load i64, i64* %346, align 8
  store i64 %527, i64* %RAX.i495, align 8
  %528 = add i64 %527, 64
  %529 = add i64 %343, 14
  store i64 %529, i64* %3, align 8
  %530 = inttoptr i64 %528 to i32*
  %531 = load i32, i32* %530, align 4
  %532 = shl i32 %531, 1
  %533 = zext i32 %532 to i64
  store i64 %533, i64* %RDX.i490, align 8
  %534 = add i32 %532, %524
  %535 = zext i32 %534 to i64
  store i64 %535, i64* %RCX.i492, align 8
  %536 = icmp ult i32 %534, %524
  %537 = icmp ult i32 %534, %532
  %538 = or i1 %536, %537
  %539 = zext i1 %538 to i8
  store i8 %539, i8* %41, align 1
  %540 = and i32 %534, 255
  %541 = tail call i32 @llvm.ctpop.i32(i32 %540)
  %542 = trunc i32 %541 to i8
  %543 = and i8 %542, 1
  %544 = xor i8 %543, 1
  store i8 %544, i8* %42, align 1
  %545 = xor i32 %532, %524
  %546 = xor i32 %545, %534
  %547 = lshr i32 %546, 4
  %548 = trunc i32 %547 to i8
  %549 = and i8 %548, 1
  store i8 %549, i8* %43, align 1
  %550 = icmp eq i32 %534, 0
  %551 = zext i1 %550 to i8
  store i8 %551, i8* %44, align 1
  %552 = lshr i32 %534, 31
  %553 = trunc i32 %552 to i8
  store i8 %553, i8* %45, align 1
  %554 = lshr i32 %524, 31
  %555 = lshr i32 %531, 30
  %556 = and i32 %555, 1
  %557 = xor i32 %552, %554
  %558 = xor i32 %552, %556
  %559 = add nuw nsw i32 %557, %558
  %560 = icmp eq i32 %559, 2
  %561 = zext i1 %560 to i8
  store i8 %561, i8* %46, align 1
  %562 = add i64 %343, 22
  store i64 %562, i64* %3, align 8
  %563 = load i64, i64* %346, align 8
  store i64 %563, i64* %RAX.i495, align 8
  %564 = add i64 %563, 60
  %565 = add i64 %343, 25
  store i64 %565, i64* %3, align 8
  %566 = inttoptr i64 %564 to i32*
  %567 = load i32, i32* %566, align 4
  %568 = add i32 %567, %534
  %569 = add i32 %568, 2
  %570 = zext i32 %569 to i64
  %571 = shl nuw i64 %570, 32
  %572 = ashr i64 %571, 33
  %573 = lshr i64 %572, 1
  %574 = trunc i64 %572 to i8
  %575 = and i8 %574, 1
  %576 = trunc i64 %573 to i32
  %577 = and i64 %573, 4294967295
  store i64 %577, i64* %RCX.i492, align 8
  store i8 %575, i8* %41, align 1
  %578 = and i32 %576, 255
  %579 = tail call i32 @llvm.ctpop.i32(i32 %578)
  %580 = trunc i32 %579 to i8
  %581 = and i8 %580, 1
  %582 = xor i8 %581, 1
  store i8 %582, i8* %42, align 1
  store i8 0, i8* %43, align 1
  %583 = icmp eq i32 %576, 0
  %584 = zext i1 %583 to i8
  store i8 %584, i8* %44, align 1
  %585 = lshr i64 %572, 32
  %586 = trunc i64 %585 to i8
  %587 = and i8 %586, 1
  store i8 %587, i8* %45, align 1
  store i8 0, i8* %46, align 1
  %588 = load i64, i64* %RBP.i, align 8
  %589 = add i64 %588, -64
  %590 = trunc i64 %573 to i32
  %591 = add i64 %343, 34
  store i64 %591, i64* %3, align 8
  %592 = inttoptr i64 %589 to i32*
  store i32 %590, i32* %592, align 4
  %.pre38 = load i64, i64* %RBP.i, align 8
  %.pre39 = load i64, i64* %3, align 8
  br label %block_.L_4ac4d1

block_.L_4ac4d1:                                  ; preds = %block_.L_4ac4ae, %block_.L_4ac3f3
  %593 = phi i64 [ %.pre39, %block_.L_4ac4ae ], [ %144, %block_.L_4ac3f3 ]
  %594 = phi i64 [ %.pre38, %block_.L_4ac4ae ], [ %48, %block_.L_4ac3f3 ]
  %595 = add i64 %594, -12
  %596 = add i64 %593, 4
  store i64 %596, i64* %3, align 8
  %597 = inttoptr i64 %595 to i32*
  %598 = load i32, i32* %597, align 4
  store i8 0, i8* %41, align 1
  %599 = and i32 %598, 255
  %600 = tail call i32 @llvm.ctpop.i32(i32 %599)
  %601 = trunc i32 %600 to i8
  %602 = and i8 %601, 1
  %603 = xor i8 %602, 1
  store i8 %603, i8* %42, align 1
  store i8 0, i8* %43, align 1
  %604 = icmp eq i32 %598, 0
  %605 = zext i1 %604 to i8
  store i8 %605, i8* %44, align 1
  %606 = lshr i32 %598, 31
  %607 = trunc i32 %606 to i8
  store i8 %607, i8* %45, align 1
  store i8 0, i8* %46, align 1
  %.v53 = select i1 %604, i64 175, i64 10
  %608 = add i64 %593, %.v53
  store i64 %608, i64* %3, align 8
  br i1 %604, label %block_.L_4ac580, label %block_4ac4db

block_4ac4db:                                     ; preds = %block_.L_4ac4d1
  %609 = add i64 %594, -16
  %610 = add i64 %608, 4
  store i64 %610, i64* %3, align 8
  %611 = inttoptr i64 %609 to i32*
  %612 = load i32, i32* %611, align 4
  store i8 0, i8* %41, align 1
  %613 = and i32 %612, 255
  %614 = tail call i32 @llvm.ctpop.i32(i32 %613)
  %615 = trunc i32 %614 to i8
  %616 = and i8 %615, 1
  %617 = xor i8 %616, 1
  store i8 %617, i8* %42, align 1
  store i8 0, i8* %43, align 1
  %618 = icmp eq i32 %612, 0
  %619 = zext i1 %618 to i8
  store i8 %619, i8* %44, align 1
  %620 = lshr i32 %612, 31
  %621 = trunc i32 %620 to i8
  store i8 %621, i8* %45, align 1
  store i8 0, i8* %46, align 1
  %.v54 = select i1 %618, i64 59, i64 10
  %622 = add i64 %608, %.v54
  store i64 %622, i64* %3, align 8
  br i1 %618, label %block_.L_4ac516, label %block_4ac4e5

block_4ac4e5:                                     ; preds = %block_4ac4db
  %623 = add i64 %594, -20
  %624 = add i64 %622, 4
  store i64 %624, i64* %3, align 8
  %625 = inttoptr i64 %623 to i32*
  %626 = load i32, i32* %625, align 4
  store i8 0, i8* %41, align 1
  %627 = and i32 %626, 255
  %628 = tail call i32 @llvm.ctpop.i32(i32 %627)
  %629 = trunc i32 %628 to i8
  %630 = and i8 %629, 1
  %631 = xor i8 %630, 1
  store i8 %631, i8* %42, align 1
  store i8 0, i8* %43, align 1
  %632 = icmp eq i32 %626, 0
  %633 = zext i1 %632 to i8
  store i8 %633, i8* %44, align 1
  %634 = lshr i32 %626, 31
  %635 = trunc i32 %634 to i8
  store i8 %635, i8* %45, align 1
  store i8 0, i8* %46, align 1
  %.v55 = select i1 %632, i64 49, i64 10
  %636 = add i64 %622, %.v55
  store i64 %636, i64* %3, align 8
  br i1 %632, label %block_.L_4ac516, label %block_4ac4ef

block_4ac4ef:                                     ; preds = %block_4ac4e5
  %RAX.i293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %637 = add i64 %594, -8
  %638 = add i64 %636, 4
  store i64 %638, i64* %3, align 8
  %639 = inttoptr i64 %637 to i64*
  %640 = load i64, i64* %639, align 8
  store i64 %640, i64* %RAX.i293, align 8
  %641 = add i64 %640, 68
  %642 = add i64 %636, 7
  store i64 %642, i64* %3, align 8
  %643 = inttoptr i64 %641 to i32*
  %644 = load i32, i32* %643, align 4
  %645 = zext i32 %644 to i64
  store i64 %645, i64* %RCX.i492, align 8
  %646 = add i64 %636, 11
  store i64 %646, i64* %3, align 8
  %647 = load i64, i64* %639, align 8
  store i64 %647, i64* %RAX.i293, align 8
  %648 = add i64 %636, 13
  store i64 %648, i64* %3, align 8
  %649 = inttoptr i64 %647 to i32*
  %650 = load i32, i32* %649, align 4
  %651 = shl i32 %650, 1
  %652 = zext i32 %651 to i64
  store i64 %652, i64* %RDX.i490, align 8
  %653 = add i32 %651, %644
  %654 = zext i32 %653 to i64
  store i64 %654, i64* %RCX.i492, align 8
  %655 = icmp ult i32 %653, %644
  %656 = icmp ult i32 %653, %651
  %657 = or i1 %655, %656
  %658 = zext i1 %657 to i8
  store i8 %658, i8* %41, align 1
  %659 = and i32 %653, 255
  %660 = tail call i32 @llvm.ctpop.i32(i32 %659)
  %661 = trunc i32 %660 to i8
  %662 = and i8 %661, 1
  %663 = xor i8 %662, 1
  store i8 %663, i8* %42, align 1
  %664 = xor i32 %651, %644
  %665 = xor i32 %664, %653
  %666 = lshr i32 %665, 4
  %667 = trunc i32 %666 to i8
  %668 = and i8 %667, 1
  store i8 %668, i8* %43, align 1
  %669 = icmp eq i32 %653, 0
  %670 = zext i1 %669 to i8
  store i8 %670, i8* %44, align 1
  %671 = lshr i32 %653, 31
  %672 = trunc i32 %671 to i8
  store i8 %672, i8* %45, align 1
  %673 = lshr i32 %644, 31
  %674 = lshr i32 %650, 30
  %675 = and i32 %674, 1
  %676 = xor i32 %671, %673
  %677 = xor i32 %671, %675
  %678 = add nuw nsw i32 %676, %677
  %679 = icmp eq i32 %678, 2
  %680 = zext i1 %679 to i8
  store i8 %680, i8* %46, align 1
  %681 = add i64 %636, 21
  store i64 %681, i64* %3, align 8
  %682 = load i64, i64* %639, align 8
  store i64 %682, i64* %RAX.i293, align 8
  %683 = add i64 %682, 4
  %684 = add i64 %636, 24
  store i64 %684, i64* %3, align 8
  %685 = inttoptr i64 %683 to i32*
  %686 = load i32, i32* %685, align 4
  %687 = add i32 %686, %653
  %688 = add i32 %687, 2
  %689 = zext i32 %688 to i64
  %690 = shl nuw i64 %689, 32
  %691 = ashr i64 %690, 33
  %692 = lshr i64 %691, 1
  %693 = trunc i64 %691 to i8
  %694 = and i8 %693, 1
  %695 = trunc i64 %692 to i32
  %696 = and i64 %692, 4294967295
  store i64 %696, i64* %RCX.i492, align 8
  store i8 %694, i8* %41, align 1
  %697 = and i32 %695, 255
  %698 = tail call i32 @llvm.ctpop.i32(i32 %697)
  %699 = trunc i32 %698 to i8
  %700 = and i8 %699, 1
  %701 = xor i8 %700, 1
  store i8 %701, i8* %42, align 1
  store i8 0, i8* %43, align 1
  %702 = icmp eq i32 %695, 0
  %703 = zext i1 %702 to i8
  store i8 %703, i8* %44, align 1
  %704 = lshr i64 %691, 32
  %705 = trunc i64 %704 to i8
  %706 = and i8 %705, 1
  store i8 %706, i8* %45, align 1
  store i8 0, i8* %46, align 1
  %707 = load i64, i64* %RBP.i, align 8
  %708 = add i64 %707, -128
  %709 = trunc i64 %692 to i32
  %710 = add i64 %636, 33
  store i64 %710, i64* %3, align 8
  %711 = inttoptr i64 %708 to i32*
  store i32 %709, i32* %711, align 4
  %712 = load i64, i64* %3, align 8
  %713 = add i64 %712, 106
  br label %block_.L_4ac57b

block_.L_4ac516:                                  ; preds = %block_4ac4e5, %block_4ac4db
  %714 = phi i64 [ %636, %block_4ac4e5 ], [ %622, %block_4ac4db ]
  %715 = add i64 %714, 4
  store i64 %715, i64* %3, align 8
  %716 = load i32, i32* %611, align 4
  store i8 0, i8* %41, align 1
  %717 = and i32 %716, 255
  %718 = tail call i32 @llvm.ctpop.i32(i32 %717)
  %719 = trunc i32 %718 to i8
  %720 = and i8 %719, 1
  %721 = xor i8 %720, 1
  store i8 %721, i8* %42, align 1
  store i8 0, i8* %43, align 1
  %722 = icmp eq i32 %716, 0
  %723 = zext i1 %722 to i8
  store i8 %723, i8* %44, align 1
  %724 = lshr i32 %716, 31
  %725 = trunc i32 %724 to i8
  store i8 %725, i8* %45, align 1
  store i8 0, i8* %46, align 1
  %.v57 = select i1 %722, i64 48, i64 10
  %726 = add i64 %714, %.v57
  store i64 %726, i64* %3, align 8
  br i1 %722, label %block_.L_4ac546, label %block_4ac520

block_4ac520:                                     ; preds = %block_.L_4ac516
  %RAX.i259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %727 = add i64 %594, -8
  %728 = add i64 %726, 4
  store i64 %728, i64* %3, align 8
  %729 = inttoptr i64 %727 to i64*
  %730 = load i64, i64* %729, align 8
  store i64 %730, i64* %RAX.i259, align 8
  %731 = add i64 %726, 6
  store i64 %731, i64* %3, align 8
  %732 = inttoptr i64 %730 to i32*
  %733 = load i32, i32* %732, align 4
  %734 = zext i32 %733 to i64
  store i64 %734, i64* %RCX.i492, align 8
  %735 = add i64 %726, 10
  store i64 %735, i64* %3, align 8
  %736 = load i64, i64* %729, align 8
  store i64 %736, i64* %RAX.i259, align 8
  %737 = add i64 %726, 12
  store i64 %737, i64* %3, align 8
  %738 = inttoptr i64 %736 to i32*
  %739 = load i32, i32* %738, align 4
  %740 = shl i32 %739, 1
  %741 = zext i32 %740 to i64
  store i64 %741, i64* %RDX.i490, align 8
  %742 = add i32 %740, %733
  %743 = zext i32 %742 to i64
  store i64 %743, i64* %RCX.i492, align 8
  %744 = icmp ult i32 %742, %733
  %745 = icmp ult i32 %742, %740
  %746 = or i1 %744, %745
  %747 = zext i1 %746 to i8
  store i8 %747, i8* %41, align 1
  %748 = and i32 %742, 255
  %749 = tail call i32 @llvm.ctpop.i32(i32 %748)
  %750 = trunc i32 %749 to i8
  %751 = and i8 %750, 1
  %752 = xor i8 %751, 1
  store i8 %752, i8* %42, align 1
  %753 = xor i32 %740, %733
  %754 = xor i32 %753, %742
  %755 = lshr i32 %754, 4
  %756 = trunc i32 %755 to i8
  %757 = and i8 %756, 1
  store i8 %757, i8* %43, align 1
  %758 = icmp eq i32 %742, 0
  %759 = zext i1 %758 to i8
  store i8 %759, i8* %44, align 1
  %760 = lshr i32 %742, 31
  %761 = trunc i32 %760 to i8
  store i8 %761, i8* %45, align 1
  %762 = lshr i32 %733, 31
  %763 = lshr i32 %739, 30
  %764 = and i32 %763, 1
  %765 = xor i32 %760, %762
  %766 = xor i32 %760, %764
  %767 = add nuw nsw i32 %765, %766
  %768 = icmp eq i32 %767, 2
  %769 = zext i1 %768 to i8
  store i8 %769, i8* %46, align 1
  %770 = add i64 %726, 20
  store i64 %770, i64* %3, align 8
  %771 = load i64, i64* %729, align 8
  store i64 %771, i64* %RAX.i259, align 8
  %772 = add i64 %771, 4
  %773 = add i64 %726, 23
  store i64 %773, i64* %3, align 8
  %774 = inttoptr i64 %772 to i32*
  %775 = load i32, i32* %774, align 4
  %776 = add i32 %775, %742
  %777 = add i32 %776, 2
  %778 = zext i32 %777 to i64
  %779 = shl nuw i64 %778, 32
  %780 = ashr i64 %779, 33
  %781 = lshr i64 %780, 1
  %782 = trunc i64 %780 to i8
  %783 = and i8 %782, 1
  %784 = trunc i64 %781 to i32
  %785 = and i64 %781, 4294967295
  store i64 %785, i64* %RCX.i492, align 8
  store i8 %783, i8* %41, align 1
  %786 = and i32 %784, 255
  %787 = tail call i32 @llvm.ctpop.i32(i32 %786)
  %788 = trunc i32 %787 to i8
  %789 = and i8 %788, 1
  %790 = xor i8 %789, 1
  store i8 %790, i8* %42, align 1
  store i8 0, i8* %43, align 1
  %791 = icmp eq i32 %784, 0
  %792 = zext i1 %791 to i8
  store i8 %792, i8* %44, align 1
  %793 = lshr i64 %780, 32
  %794 = trunc i64 %793 to i8
  %795 = and i8 %794, 1
  store i8 %795, i8* %45, align 1
  store i8 0, i8* %46, align 1
  %796 = load i64, i64* %RBP.i, align 8
  %797 = add i64 %796, -128
  %798 = trunc i64 %781 to i32
  %799 = add i64 %726, 32
  store i64 %799, i64* %3, align 8
  %800 = inttoptr i64 %797 to i32*
  store i32 %798, i32* %800, align 4
  %801 = load i64, i64* %3, align 8
  %802 = add i64 %801, 53
  br label %block_.L_4ac576

block_.L_4ac546:                                  ; preds = %block_.L_4ac516
  %803 = add i64 %594, -20
  %804 = add i64 %726, 4
  store i64 %804, i64* %3, align 8
  %805 = inttoptr i64 %803 to i32*
  %806 = load i32, i32* %805, align 4
  store i8 0, i8* %41, align 1
  %807 = and i32 %806, 255
  %808 = tail call i32 @llvm.ctpop.i32(i32 %807)
  %809 = trunc i32 %808 to i8
  %810 = and i8 %809, 1
  %811 = xor i8 %810, 1
  store i8 %811, i8* %42, align 1
  store i8 0, i8* %43, align 1
  %812 = icmp eq i32 %806, 0
  %813 = zext i1 %812 to i8
  store i8 %813, i8* %44, align 1
  %814 = lshr i32 %806, 31
  %815 = trunc i32 %814 to i8
  store i8 %815, i8* %45, align 1
  store i8 0, i8* %46, align 1
  %.v58 = select i1 %812, i64 43, i64 10
  %816 = add i64 %726, %.v58
  store i64 %816, i64* %3, align 8
  br i1 %812, label %block_.L_4ac571, label %block_4ac550

block_4ac550:                                     ; preds = %block_.L_4ac546
  %RAX.i225 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %817 = add i64 %594, -8
  %818 = add i64 %816, 4
  store i64 %818, i64* %3, align 8
  %819 = inttoptr i64 %817 to i64*
  %820 = load i64, i64* %819, align 8
  store i64 %820, i64* %RAX.i225, align 8
  %821 = add i64 %816, 6
  store i64 %821, i64* %3, align 8
  %822 = inttoptr i64 %820 to i32*
  %823 = load i32, i32* %822, align 4
  %824 = zext i32 %823 to i64
  store i64 %824, i64* %RCX.i492, align 8
  %825 = add i64 %816, 10
  store i64 %825, i64* %3, align 8
  %826 = load i64, i64* %819, align 8
  store i64 %826, i64* %RAX.i225, align 8
  %827 = add i64 %816, 12
  store i64 %827, i64* %3, align 8
  %828 = inttoptr i64 %826 to i32*
  %829 = load i32, i32* %828, align 4
  %830 = shl i32 %829, 1
  %831 = zext i32 %830 to i64
  store i64 %831, i64* %RDX.i490, align 8
  %832 = add i32 %830, %823
  %833 = zext i32 %832 to i64
  store i64 %833, i64* %RCX.i492, align 8
  %834 = icmp ult i32 %832, %823
  %835 = icmp ult i32 %832, %830
  %836 = or i1 %834, %835
  %837 = zext i1 %836 to i8
  store i8 %837, i8* %41, align 1
  %838 = and i32 %832, 255
  %839 = tail call i32 @llvm.ctpop.i32(i32 %838)
  %840 = trunc i32 %839 to i8
  %841 = and i8 %840, 1
  %842 = xor i8 %841, 1
  store i8 %842, i8* %42, align 1
  %843 = xor i32 %830, %823
  %844 = xor i32 %843, %832
  %845 = lshr i32 %844, 4
  %846 = trunc i32 %845 to i8
  %847 = and i8 %846, 1
  store i8 %847, i8* %43, align 1
  %848 = icmp eq i32 %832, 0
  %849 = zext i1 %848 to i8
  store i8 %849, i8* %44, align 1
  %850 = lshr i32 %832, 31
  %851 = trunc i32 %850 to i8
  store i8 %851, i8* %45, align 1
  %852 = lshr i32 %823, 31
  %853 = lshr i32 %829, 30
  %854 = and i32 %853, 1
  %855 = xor i32 %850, %852
  %856 = xor i32 %850, %854
  %857 = add nuw nsw i32 %855, %856
  %858 = icmp eq i32 %857, 2
  %859 = zext i1 %858 to i8
  store i8 %859, i8* %46, align 1
  %860 = add i64 %816, 20
  store i64 %860, i64* %3, align 8
  %861 = load i64, i64* %819, align 8
  store i64 %861, i64* %RAX.i225, align 8
  %862 = add i64 %861, 68
  %863 = add i64 %816, 23
  store i64 %863, i64* %3, align 8
  %864 = inttoptr i64 %862 to i32*
  %865 = load i32, i32* %864, align 4
  %866 = add i32 %865, %832
  %867 = add i32 %866, 2
  %868 = zext i32 %867 to i64
  %869 = shl nuw i64 %868, 32
  %870 = ashr i64 %869, 33
  %871 = lshr i64 %870, 1
  %872 = trunc i64 %870 to i8
  %873 = and i8 %872, 1
  %874 = trunc i64 %871 to i32
  %875 = and i64 %871, 4294967295
  store i64 %875, i64* %RCX.i492, align 8
  store i8 %873, i8* %41, align 1
  %876 = and i32 %874, 255
  %877 = tail call i32 @llvm.ctpop.i32(i32 %876)
  %878 = trunc i32 %877 to i8
  %879 = and i8 %878, 1
  %880 = xor i8 %879, 1
  store i8 %880, i8* %42, align 1
  store i8 0, i8* %43, align 1
  %881 = icmp eq i32 %874, 0
  %882 = zext i1 %881 to i8
  store i8 %882, i8* %44, align 1
  %883 = lshr i64 %870, 32
  %884 = trunc i64 %883 to i8
  %885 = and i8 %884, 1
  store i8 %885, i8* %45, align 1
  store i8 0, i8* %46, align 1
  %886 = load i64, i64* %RBP.i, align 8
  %887 = add i64 %886, -128
  %888 = trunc i64 %871 to i32
  %889 = add i64 %816, 32
  store i64 %889, i64* %3, align 8
  %890 = inttoptr i64 %887 to i32*
  store i32 %888, i32* %890, align 4
  %.pre40 = load i64, i64* %3, align 8
  br label %block_.L_4ac571

block_.L_4ac571:                                  ; preds = %block_4ac550, %block_.L_4ac546
  %891 = phi i64 [ %.pre40, %block_4ac550 ], [ %816, %block_.L_4ac546 ]
  %892 = add i64 %891, 5
  store i64 %892, i64* %3, align 8
  br label %block_.L_4ac576

block_.L_4ac576:                                  ; preds = %block_.L_4ac571, %block_4ac520
  %storemerge21 = phi i64 [ %802, %block_4ac520 ], [ %892, %block_.L_4ac571 ]
  %893 = add i64 %storemerge21, 5
  store i64 %893, i64* %3, align 8
  br label %block_.L_4ac57b

block_.L_4ac57b:                                  ; preds = %block_.L_4ac576, %block_4ac4ef
  %storemerge = phi i64 [ %713, %block_4ac4ef ], [ %893, %block_.L_4ac576 ]
  %894 = add i64 %storemerge, 5
  store i64 %894, i64* %3, align 8
  %.pre41 = load i64, i64* %RBP.i, align 8
  br label %block_.L_4ac580

block_.L_4ac580:                                  ; preds = %block_.L_4ac57b, %block_.L_4ac4d1
  %895 = phi i64 [ %894, %block_.L_4ac57b ], [ %608, %block_.L_4ac4d1 ]
  %896 = phi i64 [ %.pre41, %block_.L_4ac57b ], [ %594, %block_.L_4ac4d1 ]
  %897 = add i64 %896, -20
  %898 = add i64 %895, 4
  store i64 %898, i64* %3, align 8
  %899 = inttoptr i64 %897 to i32*
  %900 = load i32, i32* %899, align 4
  store i8 0, i8* %41, align 1
  %901 = and i32 %900, 255
  %902 = tail call i32 @llvm.ctpop.i32(i32 %901)
  %903 = trunc i32 %902 to i8
  %904 = and i8 %903, 1
  %905 = xor i8 %904, 1
  store i8 %905, i8* %42, align 1
  store i8 0, i8* %43, align 1
  %906 = icmp eq i32 %900, 0
  %907 = zext i1 %906 to i8
  store i8 %907, i8* %44, align 1
  %908 = lshr i32 %900, 31
  %909 = trunc i32 %908 to i8
  store i8 %909, i8* %45, align 1
  store i8 0, i8* %46, align 1
  %.v51 = select i1 %906, i64 222, i64 10
  %910 = add i64 %895, %.v51
  store i64 %910, i64* %3, align 8
  br i1 %906, label %block_.L_4ac65e, label %block_4ac58a

block_4ac58a:                                     ; preds = %block_.L_4ac580
  %911 = add i64 %896, -12
  %912 = add i64 %910, 4
  store i64 %912, i64* %3, align 8
  %913 = inttoptr i64 %911 to i32*
  %914 = load i32, i32* %913, align 4
  store i8 0, i8* %41, align 1
  %915 = and i32 %914, 255
  %916 = tail call i32 @llvm.ctpop.i32(i32 %915)
  %917 = trunc i32 %916 to i8
  %918 = and i8 %917, 1
  %919 = xor i8 %918, 1
  store i8 %919, i8* %42, align 1
  store i8 0, i8* %43, align 1
  %920 = icmp eq i32 %914, 0
  %921 = zext i1 %920 to i8
  store i8 %921, i8* %44, align 1
  %922 = lshr i32 %914, 31
  %923 = trunc i32 %922 to i8
  store i8 %923, i8* %45, align 1
  store i8 0, i8* %46, align 1
  %.v50 = select i1 %920, i64 49, i64 10
  %924 = add i64 %910, %.v50
  %925 = add i64 %896, -8
  %926 = add i64 %924, 4
  store i64 %926, i64* %3, align 8
  %927 = inttoptr i64 %925 to i64*
  %928 = load i64, i64* %927, align 8
  store i64 %928, i64* %RAX.i495, align 8
  br i1 %920, label %block_.L_4ac5bb, label %block_4ac594

block_4ac594:                                     ; preds = %block_4ac58a
  %929 = add i64 %924, 6
  store i64 %929, i64* %3, align 8
  %930 = inttoptr i64 %928 to i32*
  %931 = load i32, i32* %930, align 4
  %932 = zext i32 %931 to i64
  store i64 %932, i64* %RCX.i492, align 8
  %933 = add i64 %924, 10
  store i64 %933, i64* %3, align 8
  %934 = load i64, i64* %927, align 8
  store i64 %934, i64* %RAX.i495, align 8
  %935 = add i64 %934, 68
  %936 = add i64 %924, 13
  store i64 %936, i64* %3, align 8
  %937 = inttoptr i64 %935 to i32*
  %938 = load i32, i32* %937, align 4
  %939 = shl i32 %938, 1
  %940 = zext i32 %939 to i64
  store i64 %940, i64* %RDX.i490, align 8
  %941 = add i32 %939, %931
  %942 = zext i32 %941 to i64
  store i64 %942, i64* %RCX.i492, align 8
  %943 = icmp ult i32 %941, %931
  %944 = icmp ult i32 %941, %939
  %945 = or i1 %943, %944
  %946 = zext i1 %945 to i8
  store i8 %946, i8* %41, align 1
  %947 = and i32 %941, 255
  %948 = tail call i32 @llvm.ctpop.i32(i32 %947)
  %949 = trunc i32 %948 to i8
  %950 = and i8 %949, 1
  %951 = xor i8 %950, 1
  store i8 %951, i8* %42, align 1
  %952 = xor i32 %939, %931
  %953 = xor i32 %952, %941
  %954 = lshr i32 %953, 4
  %955 = trunc i32 %954 to i8
  %956 = and i8 %955, 1
  store i8 %956, i8* %43, align 1
  %957 = icmp eq i32 %941, 0
  %958 = zext i1 %957 to i8
  store i8 %958, i8* %44, align 1
  %959 = lshr i32 %941, 31
  %960 = trunc i32 %959 to i8
  store i8 %960, i8* %45, align 1
  %961 = lshr i32 %931, 31
  %962 = lshr i32 %938, 30
  %963 = and i32 %962, 1
  %964 = xor i32 %959, %961
  %965 = xor i32 %959, %963
  %966 = add nuw nsw i32 %964, %965
  %967 = icmp eq i32 %966, 2
  %968 = zext i1 %967 to i8
  store i8 %968, i8* %46, align 1
  %969 = add i64 %924, 21
  store i64 %969, i64* %3, align 8
  %970 = load i64, i64* %927, align 8
  store i64 %970, i64* %RAX.i495, align 8
  %971 = add i64 %970, 72
  %972 = add i64 %924, 24
  store i64 %972, i64* %3, align 8
  %973 = inttoptr i64 %971 to i32*
  %974 = load i32, i32* %973, align 4
  %975 = add i32 %974, %941
  %976 = add i32 %975, 2
  %977 = zext i32 %976 to i64
  %978 = shl nuw i64 %977, 32
  %979 = ashr i64 %978, 33
  %980 = lshr i64 %979, 1
  %981 = trunc i64 %979 to i8
  %982 = and i8 %981, 1
  %983 = trunc i64 %980 to i32
  %984 = and i64 %980, 4294967295
  store i64 %984, i64* %RCX.i492, align 8
  store i8 %982, i8* %41, align 1
  %985 = and i32 %983, 255
  %986 = tail call i32 @llvm.ctpop.i32(i32 %985)
  %987 = trunc i32 %986 to i8
  %988 = and i8 %987, 1
  %989 = xor i8 %988, 1
  store i8 %989, i8* %42, align 1
  store i8 0, i8* %43, align 1
  %990 = icmp eq i32 %983, 0
  %991 = zext i1 %990 to i8
  store i8 %991, i8* %44, align 1
  %992 = lshr i64 %979, 32
  %993 = trunc i64 %992 to i8
  %994 = and i8 %993, 1
  store i8 %994, i8* %45, align 1
  store i8 0, i8* %46, align 1
  %995 = load i64, i64* %RBP.i, align 8
  %996 = add i64 %995, -60
  %997 = trunc i64 %980 to i32
  %998 = add i64 %924, 33
  store i64 %998, i64* %3, align 8
  %999 = inttoptr i64 %996 to i32*
  store i32 %997, i32* %999, align 4
  %1000 = load i64, i64* %3, align 8
  %1001 = add i64 %1000, 40
  store i64 %1001, i64* %3, align 8
  br label %block_.L_4ac5de

block_.L_4ac5bb:                                  ; preds = %block_4ac58a
  %1002 = add i64 %928, 68
  %1003 = add i64 %924, 7
  store i64 %1003, i64* %3, align 8
  %1004 = inttoptr i64 %1002 to i32*
  %1005 = load i32, i32* %1004, align 4
  %1006 = zext i32 %1005 to i64
  store i64 %1006, i64* %RCX.i492, align 8
  %1007 = add i64 %924, 11
  store i64 %1007, i64* %3, align 8
  %1008 = load i64, i64* %927, align 8
  store i64 %1008, i64* %RAX.i495, align 8
  %1009 = add i64 %1008, 68
  %1010 = add i64 %924, 14
  store i64 %1010, i64* %3, align 8
  %1011 = inttoptr i64 %1009 to i32*
  %1012 = load i32, i32* %1011, align 4
  %1013 = shl i32 %1012, 1
  %1014 = zext i32 %1013 to i64
  store i64 %1014, i64* %RDX.i490, align 8
  %1015 = add i32 %1013, %1005
  %1016 = zext i32 %1015 to i64
  store i64 %1016, i64* %RCX.i492, align 8
  %1017 = icmp ult i32 %1015, %1005
  %1018 = icmp ult i32 %1015, %1013
  %1019 = or i1 %1017, %1018
  %1020 = zext i1 %1019 to i8
  store i8 %1020, i8* %41, align 1
  %1021 = and i32 %1015, 255
  %1022 = tail call i32 @llvm.ctpop.i32(i32 %1021)
  %1023 = trunc i32 %1022 to i8
  %1024 = and i8 %1023, 1
  %1025 = xor i8 %1024, 1
  store i8 %1025, i8* %42, align 1
  %1026 = xor i32 %1013, %1005
  %1027 = xor i32 %1026, %1015
  %1028 = lshr i32 %1027, 4
  %1029 = trunc i32 %1028 to i8
  %1030 = and i8 %1029, 1
  store i8 %1030, i8* %43, align 1
  %1031 = icmp eq i32 %1015, 0
  %1032 = zext i1 %1031 to i8
  store i8 %1032, i8* %44, align 1
  %1033 = lshr i32 %1015, 31
  %1034 = trunc i32 %1033 to i8
  store i8 %1034, i8* %45, align 1
  %1035 = lshr i32 %1005, 31
  %1036 = lshr i32 %1012, 30
  %1037 = and i32 %1036, 1
  %1038 = xor i32 %1033, %1035
  %1039 = xor i32 %1033, %1037
  %1040 = add nuw nsw i32 %1038, %1039
  %1041 = icmp eq i32 %1040, 2
  %1042 = zext i1 %1041 to i8
  store i8 %1042, i8* %46, align 1
  %1043 = add i64 %924, 22
  store i64 %1043, i64* %3, align 8
  %1044 = load i64, i64* %927, align 8
  store i64 %1044, i64* %RAX.i495, align 8
  %1045 = add i64 %1044, 72
  %1046 = add i64 %924, 25
  store i64 %1046, i64* %3, align 8
  %1047 = inttoptr i64 %1045 to i32*
  %1048 = load i32, i32* %1047, align 4
  %1049 = add i32 %1048, %1015
  %1050 = add i32 %1049, 2
  %1051 = zext i32 %1050 to i64
  %1052 = shl nuw i64 %1051, 32
  %1053 = ashr i64 %1052, 33
  %1054 = lshr i64 %1053, 1
  %1055 = trunc i64 %1053 to i8
  %1056 = and i8 %1055, 1
  %1057 = trunc i64 %1054 to i32
  %1058 = and i64 %1054, 4294967295
  store i64 %1058, i64* %RCX.i492, align 8
  store i8 %1056, i8* %41, align 1
  %1059 = and i32 %1057, 255
  %1060 = tail call i32 @llvm.ctpop.i32(i32 %1059)
  %1061 = trunc i32 %1060 to i8
  %1062 = and i8 %1061, 1
  %1063 = xor i8 %1062, 1
  store i8 %1063, i8* %42, align 1
  store i8 0, i8* %43, align 1
  %1064 = icmp eq i32 %1057, 0
  %1065 = zext i1 %1064 to i8
  store i8 %1065, i8* %44, align 1
  %1066 = lshr i64 %1053, 32
  %1067 = trunc i64 %1066 to i8
  %1068 = and i8 %1067, 1
  store i8 %1068, i8* %45, align 1
  store i8 0, i8* %46, align 1
  %1069 = load i64, i64* %RBP.i, align 8
  %1070 = add i64 %1069, -60
  %1071 = trunc i64 %1054 to i32
  %1072 = add i64 %924, 34
  store i64 %1072, i64* %3, align 8
  %1073 = inttoptr i64 %1070 to i32*
  store i32 %1071, i32* %1073, align 4
  %.pre42 = load i64, i64* %3, align 8
  br label %block_.L_4ac5de

block_.L_4ac5de:                                  ; preds = %block_.L_4ac5bb, %block_4ac594
  %1074 = phi i64 [ %.pre42, %block_.L_4ac5bb ], [ %1001, %block_4ac594 ]
  %1075 = load i64, i64* %RBP.i, align 8
  %1076 = add i64 %1075, -24
  %1077 = add i64 %1074, 7
  store i64 %1077, i64* %3, align 8
  %1078 = inttoptr i64 %1076 to i32*
  store i32 18, i32* %1078, align 4
  %RSI.i100 = getelementptr inbounds %union.anon, %union.anon* %15, i64 0, i32 0
  %.pre43 = load i64, i64* %3, align 8
  br label %block_.L_4ac5e5

block_.L_4ac5e5:                                  ; preds = %block_4ac5ef, %block_.L_4ac5de
  %1079 = phi i64 [ %1286, %block_4ac5ef ], [ %.pre43, %block_.L_4ac5de ]
  %1080 = load i64, i64* %RBP.i, align 8
  %1081 = add i64 %1080, -24
  %1082 = add i64 %1079, 4
  store i64 %1082, i64* %3, align 8
  %1083 = inttoptr i64 %1081 to i32*
  %1084 = load i32, i32* %1083, align 4
  %1085 = add i32 %1084, -24
  %1086 = icmp ult i32 %1084, 24
  %1087 = zext i1 %1086 to i8
  store i8 %1087, i8* %41, align 1
  %1088 = and i32 %1085, 255
  %1089 = tail call i32 @llvm.ctpop.i32(i32 %1088)
  %1090 = trunc i32 %1089 to i8
  %1091 = and i8 %1090, 1
  %1092 = xor i8 %1091, 1
  store i8 %1092, i8* %42, align 1
  %1093 = xor i32 %1084, 16
  %1094 = xor i32 %1093, %1085
  %1095 = lshr i32 %1094, 4
  %1096 = trunc i32 %1095 to i8
  %1097 = and i8 %1096, 1
  store i8 %1097, i8* %43, align 1
  %1098 = icmp eq i32 %1085, 0
  %1099 = zext i1 %1098 to i8
  store i8 %1099, i8* %44, align 1
  %1100 = lshr i32 %1085, 31
  %1101 = trunc i32 %1100 to i8
  store i8 %1101, i8* %45, align 1
  %1102 = lshr i32 %1084, 31
  %1103 = xor i32 %1100, %1102
  %1104 = add nuw nsw i32 %1103, %1102
  %1105 = icmp eq i32 %1104, 2
  %1106 = zext i1 %1105 to i8
  store i8 %1106, i8* %46, align 1
  %1107 = icmp ne i8 %1101, 0
  %1108 = xor i1 %1107, %1105
  %.v52 = select i1 %1108, i64 10, i64 86
  %1109 = add i64 %1079, %.v52
  %1110 = add i64 %1080, -8
  %1111 = add i64 %1109, 4
  store i64 %1111, i64* %3, align 8
  %1112 = inttoptr i64 %1110 to i64*
  %1113 = load i64, i64* %1112, align 8
  store i64 %1113, i64* %RAX.i495, align 8
  br i1 %1108, label %block_4ac5ef, label %block_.L_4ac63b

block_4ac5ef:                                     ; preds = %block_.L_4ac5e5
  %1114 = add i64 %1109, 7
  store i64 %1114, i64* %3, align 8
  %1115 = load i32, i32* %1083, align 4
  %1116 = add i32 %1115, -1
  %1117 = zext i32 %1116 to i64
  store i64 %1117, i64* %RCX.i492, align 8
  %1118 = icmp eq i32 %1115, 0
  %1119 = zext i1 %1118 to i8
  store i8 %1119, i8* %41, align 1
  %1120 = and i32 %1116, 255
  %1121 = tail call i32 @llvm.ctpop.i32(i32 %1120)
  %1122 = trunc i32 %1121 to i8
  %1123 = and i8 %1122, 1
  %1124 = xor i8 %1123, 1
  store i8 %1124, i8* %42, align 1
  %1125 = xor i32 %1116, %1115
  %1126 = lshr i32 %1125, 4
  %1127 = trunc i32 %1126 to i8
  %1128 = and i8 %1127, 1
  store i8 %1128, i8* %43, align 1
  %1129 = icmp eq i32 %1116, 0
  %1130 = zext i1 %1129 to i8
  store i8 %1130, i8* %44, align 1
  %1131 = lshr i32 %1116, 31
  %1132 = trunc i32 %1131 to i8
  store i8 %1132, i8* %45, align 1
  %1133 = lshr i32 %1115, 31
  %1134 = xor i32 %1131, %1133
  %1135 = add nuw nsw i32 %1134, %1133
  %1136 = icmp eq i32 %1135, 2
  %1137 = zext i1 %1136 to i8
  store i8 %1137, i8* %46, align 1
  %1138 = sext i32 %1116 to i64
  store i64 %1138, i64* %RDX.i490, align 8
  %1139 = shl nsw i64 %1138, 2
  %1140 = add i64 %1113, %1139
  %1141 = add i64 %1109, 16
  store i64 %1141, i64* %3, align 8
  %1142 = inttoptr i64 %1140 to i32*
  %1143 = load i32, i32* %1142, align 4
  %1144 = zext i32 %1143 to i64
  store i64 %1144, i64* %RCX.i492, align 8
  %1145 = add i64 %1109, 20
  store i64 %1145, i64* %3, align 8
  %1146 = load i64, i64* %1112, align 8
  store i64 %1146, i64* %RAX.i495, align 8
  %1147 = add i64 %1109, 24
  store i64 %1147, i64* %3, align 8
  %1148 = load i32, i32* %1083, align 4
  %1149 = sext i32 %1148 to i64
  store i64 %1149, i64* %RDX.i490, align 8
  %1150 = shl nsw i64 %1149, 2
  %1151 = add i64 %1150, %1146
  %1152 = add i64 %1109, 27
  store i64 %1152, i64* %3, align 8
  %1153 = inttoptr i64 %1151 to i32*
  %1154 = load i32, i32* %1153, align 4
  %1155 = shl i32 %1154, 1
  %1156 = zext i32 %1155 to i64
  store i64 %1156, i64* %RSI.i100, align 8
  %1157 = add i32 %1155, %1143
  %1158 = zext i32 %1157 to i64
  store i64 %1158, i64* %RCX.i492, align 8
  %1159 = icmp ult i32 %1157, %1143
  %1160 = icmp ult i32 %1157, %1155
  %1161 = or i1 %1159, %1160
  %1162 = zext i1 %1161 to i8
  store i8 %1162, i8* %41, align 1
  %1163 = and i32 %1157, 255
  %1164 = tail call i32 @llvm.ctpop.i32(i32 %1163)
  %1165 = trunc i32 %1164 to i8
  %1166 = and i8 %1165, 1
  %1167 = xor i8 %1166, 1
  store i8 %1167, i8* %42, align 1
  %1168 = xor i32 %1155, %1143
  %1169 = xor i32 %1168, %1157
  %1170 = lshr i32 %1169, 4
  %1171 = trunc i32 %1170 to i8
  %1172 = and i8 %1171, 1
  store i8 %1172, i8* %43, align 1
  %1173 = icmp eq i32 %1157, 0
  %1174 = zext i1 %1173 to i8
  store i8 %1174, i8* %44, align 1
  %1175 = lshr i32 %1157, 31
  %1176 = trunc i32 %1175 to i8
  store i8 %1176, i8* %45, align 1
  %1177 = lshr i32 %1143, 31
  %1178 = lshr i32 %1154, 30
  %1179 = and i32 %1178, 1
  %1180 = xor i32 %1175, %1177
  %1181 = xor i32 %1175, %1179
  %1182 = add nuw nsw i32 %1180, %1181
  %1183 = icmp eq i32 %1182, 2
  %1184 = zext i1 %1183 to i8
  store i8 %1184, i8* %46, align 1
  %1185 = load i64, i64* %RBP.i, align 8
  %1186 = add i64 %1185, -8
  %1187 = add i64 %1109, 35
  store i64 %1187, i64* %3, align 8
  %1188 = inttoptr i64 %1186 to i64*
  %1189 = load i64, i64* %1188, align 8
  store i64 %1189, i64* %RAX.i495, align 8
  %1190 = add i64 %1185, -24
  %1191 = add i64 %1109, 38
  store i64 %1191, i64* %3, align 8
  %1192 = inttoptr i64 %1190 to i32*
  %1193 = load i32, i32* %1192, align 4
  %1194 = add i32 %1193, 1
  %1195 = zext i32 %1194 to i64
  store i64 %1195, i64* %RSI.i100, align 8
  %1196 = icmp eq i32 %1193, -1
  %1197 = icmp eq i32 %1194, 0
  %1198 = or i1 %1196, %1197
  %1199 = zext i1 %1198 to i8
  store i8 %1199, i8* %41, align 1
  %1200 = and i32 %1194, 255
  %1201 = tail call i32 @llvm.ctpop.i32(i32 %1200)
  %1202 = trunc i32 %1201 to i8
  %1203 = and i8 %1202, 1
  %1204 = xor i8 %1203, 1
  store i8 %1204, i8* %42, align 1
  %1205 = xor i32 %1194, %1193
  %1206 = lshr i32 %1205, 4
  %1207 = trunc i32 %1206 to i8
  %1208 = and i8 %1207, 1
  store i8 %1208, i8* %43, align 1
  %1209 = zext i1 %1197 to i8
  store i8 %1209, i8* %44, align 1
  %1210 = lshr i32 %1194, 31
  %1211 = trunc i32 %1210 to i8
  store i8 %1211, i8* %45, align 1
  %1212 = lshr i32 %1193, 31
  %1213 = xor i32 %1210, %1212
  %1214 = add nuw nsw i32 %1213, %1210
  %1215 = icmp eq i32 %1214, 2
  %1216 = zext i1 %1215 to i8
  store i8 %1216, i8* %46, align 1
  %1217 = sext i32 %1194 to i64
  store i64 %1217, i64* %RDX.i490, align 8
  %1218 = shl nsw i64 %1217, 2
  %1219 = add i64 %1189, %1218
  %1220 = add i64 %1109, 47
  store i64 %1220, i64* %3, align 8
  %1221 = inttoptr i64 %1219 to i32*
  %1222 = load i32, i32* %1221, align 4
  %1223 = add i32 %1222, %1157
  %1224 = add i32 %1223, 2
  %1225 = zext i32 %1224 to i64
  %1226 = shl nuw i64 %1225, 32
  %1227 = ashr i64 %1226, 33
  %1228 = lshr i64 %1227, 1
  %1229 = trunc i64 %1227 to i8
  %1230 = and i8 %1229, 1
  %1231 = trunc i64 %1228 to i32
  %1232 = and i64 %1228, 4294967295
  store i64 %1232, i64* %RCX.i492, align 8
  store i8 %1230, i8* %41, align 1
  %1233 = and i32 %1231, 255
  %1234 = tail call i32 @llvm.ctpop.i32(i32 %1233)
  %1235 = trunc i32 %1234 to i8
  %1236 = and i8 %1235, 1
  %1237 = xor i8 %1236, 1
  store i8 %1237, i8* %42, align 1
  store i8 0, i8* %43, align 1
  %1238 = icmp eq i32 %1231, 0
  %1239 = zext i1 %1238 to i8
  store i8 %1239, i8* %44, align 1
  %1240 = lshr i64 %1227, 32
  %1241 = trunc i64 %1240 to i8
  %1242 = and i8 %1241, 1
  store i8 %1242, i8* %45, align 1
  store i8 0, i8* %46, align 1
  %1243 = load i64, i64* %RBP.i, align 8
  %1244 = add i64 %1243, -24
  %1245 = add i64 %1109, 57
  store i64 %1245, i64* %3, align 8
  %1246 = inttoptr i64 %1244 to i32*
  %1247 = load i32, i32* %1246, align 4
  %1248 = sext i32 %1247 to i64
  store i64 %1248, i64* %RAX.i495, align 8
  %1249 = shl nsw i64 %1248, 2
  %1250 = add i64 %1243, -128
  %1251 = add i64 %1250, %1249
  %1252 = trunc i64 %1228 to i32
  %1253 = add i64 %1109, 61
  store i64 %1253, i64* %3, align 8
  %1254 = inttoptr i64 %1251 to i32*
  store i32 %1252, i32* %1254, align 4
  %1255 = load i64, i64* %RBP.i, align 8
  %1256 = add i64 %1255, -24
  %1257 = load i64, i64* %3, align 8
  %1258 = add i64 %1257, 3
  store i64 %1258, i64* %3, align 8
  %1259 = inttoptr i64 %1256 to i32*
  %1260 = load i32, i32* %1259, align 4
  %1261 = add i32 %1260, 1
  %1262 = zext i32 %1261 to i64
  store i64 %1262, i64* %RAX.i495, align 8
  %1263 = icmp eq i32 %1260, -1
  %1264 = icmp eq i32 %1261, 0
  %1265 = or i1 %1263, %1264
  %1266 = zext i1 %1265 to i8
  store i8 %1266, i8* %41, align 1
  %1267 = and i32 %1261, 255
  %1268 = tail call i32 @llvm.ctpop.i32(i32 %1267)
  %1269 = trunc i32 %1268 to i8
  %1270 = and i8 %1269, 1
  %1271 = xor i8 %1270, 1
  store i8 %1271, i8* %42, align 1
  %1272 = xor i32 %1261, %1260
  %1273 = lshr i32 %1272, 4
  %1274 = trunc i32 %1273 to i8
  %1275 = and i8 %1274, 1
  store i8 %1275, i8* %43, align 1
  %1276 = zext i1 %1264 to i8
  store i8 %1276, i8* %44, align 1
  %1277 = lshr i32 %1261, 31
  %1278 = trunc i32 %1277 to i8
  store i8 %1278, i8* %45, align 1
  %1279 = lshr i32 %1260, 31
  %1280 = xor i32 %1277, %1279
  %1281 = add nuw nsw i32 %1280, %1277
  %1282 = icmp eq i32 %1281, 2
  %1283 = zext i1 %1282 to i8
  store i8 %1283, i8* %46, align 1
  %1284 = add i64 %1257, 9
  store i64 %1284, i64* %3, align 8
  store i32 %1261, i32* %1259, align 4
  %1285 = load i64, i64* %3, align 8
  %1286 = add i64 %1285, -81
  store i64 %1286, i64* %3, align 8
  br label %block_.L_4ac5e5

block_.L_4ac63b:                                  ; preds = %block_.L_4ac5e5
  %1287 = add i64 %1113, 92
  %1288 = add i64 %1109, 7
  store i64 %1288, i64* %3, align 8
  %1289 = inttoptr i64 %1287 to i32*
  %1290 = load i32, i32* %1289, align 4
  %1291 = zext i32 %1290 to i64
  store i64 %1291, i64* %RCX.i492, align 8
  %1292 = add i64 %1109, 11
  store i64 %1292, i64* %3, align 8
  %1293 = load i64, i64* %1112, align 8
  store i64 %1293, i64* %RAX.i495, align 8
  %1294 = add i64 %1293, 96
  %1295 = add i64 %1109, 14
  store i64 %1295, i64* %3, align 8
  %1296 = inttoptr i64 %1294 to i32*
  %1297 = load i32, i32* %1296, align 4
  %1298 = shl i32 %1297, 1
  %1299 = zext i32 %1298 to i64
  store i64 %1299, i64* %RDX.i490, align 8
  %1300 = add i32 %1298, %1290
  %1301 = zext i32 %1300 to i64
  store i64 %1301, i64* %RCX.i492, align 8
  %1302 = icmp ult i32 %1300, %1290
  %1303 = icmp ult i32 %1300, %1298
  %1304 = or i1 %1302, %1303
  %1305 = zext i1 %1304 to i8
  store i8 %1305, i8* %41, align 1
  %1306 = and i32 %1300, 255
  %1307 = tail call i32 @llvm.ctpop.i32(i32 %1306)
  %1308 = trunc i32 %1307 to i8
  %1309 = and i8 %1308, 1
  %1310 = xor i8 %1309, 1
  store i8 %1310, i8* %42, align 1
  %1311 = xor i32 %1298, %1290
  %1312 = xor i32 %1311, %1300
  %1313 = lshr i32 %1312, 4
  %1314 = trunc i32 %1313 to i8
  %1315 = and i8 %1314, 1
  store i8 %1315, i8* %43, align 1
  %1316 = icmp eq i32 %1300, 0
  %1317 = zext i1 %1316 to i8
  store i8 %1317, i8* %44, align 1
  %1318 = lshr i32 %1300, 31
  %1319 = trunc i32 %1318 to i8
  store i8 %1319, i8* %45, align 1
  %1320 = lshr i32 %1290, 31
  %1321 = lshr i32 %1297, 30
  %1322 = and i32 %1321, 1
  %1323 = xor i32 %1318, %1320
  %1324 = xor i32 %1318, %1322
  %1325 = add nuw nsw i32 %1323, %1324
  %1326 = icmp eq i32 %1325, 2
  %1327 = zext i1 %1326 to i8
  store i8 %1327, i8* %46, align 1
  %1328 = add i64 %1109, 22
  store i64 %1328, i64* %3, align 8
  %1329 = load i64, i64* %1112, align 8
  store i64 %1329, i64* %RAX.i495, align 8
  %1330 = add i64 %1329, 96
  %1331 = add i64 %1109, 25
  store i64 %1331, i64* %3, align 8
  %1332 = inttoptr i64 %1330 to i32*
  %1333 = load i32, i32* %1332, align 4
  %1334 = add i32 %1333, %1300
  %1335 = add i32 %1334, 2
  %1336 = zext i32 %1335 to i64
  %1337 = shl nuw i64 %1336, 32
  %1338 = ashr i64 %1337, 33
  %1339 = lshr i64 %1338, 1
  %1340 = trunc i64 %1338 to i8
  %1341 = and i8 %1340, 1
  %1342 = trunc i64 %1339 to i32
  %1343 = and i64 %1339, 4294967295
  store i64 %1343, i64* %RCX.i492, align 8
  store i8 %1341, i8* %41, align 1
  %1344 = and i32 %1342, 255
  %1345 = tail call i32 @llvm.ctpop.i32(i32 %1344)
  %1346 = trunc i32 %1345 to i8
  %1347 = and i8 %1346, 1
  %1348 = xor i8 %1347, 1
  store i8 %1348, i8* %42, align 1
  store i8 0, i8* %43, align 1
  %1349 = icmp eq i32 %1342, 0
  %1350 = zext i1 %1349 to i8
  store i8 %1350, i8* %44, align 1
  %1351 = lshr i64 %1338, 32
  %1352 = trunc i64 %1351 to i8
  %1353 = and i8 %1352, 1
  store i8 %1353, i8* %45, align 1
  store i8 0, i8* %46, align 1
  %1354 = load i64, i64* %RBP.i, align 8
  %1355 = add i64 %1354, -32
  %1356 = trunc i64 %1339 to i32
  %1357 = add i64 %1109, 34
  store i64 %1357, i64* %3, align 8
  %1358 = inttoptr i64 %1355 to i32*
  store i32 %1356, i32* %1358, align 4
  %.pre44 = load i64, i64* %RBP.i, align 8
  %.pre45 = load i64, i64* %3, align 8
  br label %block_.L_4ac65e

block_.L_4ac65e:                                  ; preds = %block_.L_4ac63b, %block_.L_4ac580
  %1359 = phi i64 [ %.pre45, %block_.L_4ac63b ], [ %910, %block_.L_4ac580 ]
  %1360 = phi i64 [ %.pre44, %block_.L_4ac63b ], [ %896, %block_.L_4ac580 ]
  %1361 = add i64 %1360, -24
  %1362 = add i64 %1359, 7
  store i64 %1362, i64* %3, align 8
  %1363 = inttoptr i64 %1361 to i32*
  store i32 0, i32* %1363, align 4
  %.pre46 = load i64, i64* %3, align 8
  br label %block_.L_4ac665

block_.L_4ac665:                                  ; preds = %block_4ac66f, %block_.L_4ac65e
  %1364 = phi i64 [ %1447, %block_4ac66f ], [ %.pre46, %block_.L_4ac65e ]
  %1365 = load i64, i64* %RBP.i, align 8
  %1366 = add i64 %1365, -24
  %1367 = add i64 %1364, 4
  store i64 %1367, i64* %3, align 8
  %1368 = inttoptr i64 %1366 to i32*
  %1369 = load i32, i32* %1368, align 4
  %1370 = add i32 %1369, -25
  %1371 = icmp ult i32 %1369, 25
  %1372 = zext i1 %1371 to i8
  store i8 %1372, i8* %41, align 1
  %1373 = and i32 %1370, 255
  %1374 = tail call i32 @llvm.ctpop.i32(i32 %1373)
  %1375 = trunc i32 %1374 to i8
  %1376 = and i8 %1375, 1
  %1377 = xor i8 %1376, 1
  store i8 %1377, i8* %42, align 1
  %1378 = xor i32 %1369, 16
  %1379 = xor i32 %1378, %1370
  %1380 = lshr i32 %1379, 4
  %1381 = trunc i32 %1380 to i8
  %1382 = and i8 %1381, 1
  store i8 %1382, i8* %43, align 1
  %1383 = icmp eq i32 %1370, 0
  %1384 = zext i1 %1383 to i8
  store i8 %1384, i8* %44, align 1
  %1385 = lshr i32 %1370, 31
  %1386 = trunc i32 %1385 to i8
  store i8 %1386, i8* %45, align 1
  %1387 = lshr i32 %1369, 31
  %1388 = xor i32 %1385, %1387
  %1389 = add nuw nsw i32 %1388, %1387
  %1390 = icmp eq i32 %1389, 2
  %1391 = zext i1 %1390 to i8
  store i8 %1391, i8* %46, align 1
  %1392 = icmp ne i8 %1386, 0
  %1393 = xor i1 %1392, %1390
  %.v56 = select i1 %1393, i64 10, i64 43
  %1394 = add i64 %1364, %.v56
  store i64 %1394, i64* %3, align 8
  br i1 %1393, label %block_4ac66f, label %block_.L_4ac690

block_4ac66f:                                     ; preds = %block_.L_4ac665
  %1395 = add i64 %1394, 4
  store i64 %1395, i64* %3, align 8
  %1396 = load i32, i32* %1368, align 4
  %1397 = sext i32 %1396 to i64
  store i64 %1397, i64* %RAX.i495, align 8
  %1398 = shl nsw i64 %1397, 2
  %1399 = add i64 %1365, -128
  %1400 = add i64 %1399, %1398
  %1401 = add i64 %1394, 8
  store i64 %1401, i64* %3, align 8
  %1402 = inttoptr i64 %1400 to i32*
  %1403 = load i32, i32* %1402, align 4
  %1404 = zext i32 %1403 to i64
  store i64 %1404, i64* %RCX.i492, align 8
  %1405 = add i64 %1365, -8
  %1406 = add i64 %1394, 12
  store i64 %1406, i64* %3, align 8
  %1407 = inttoptr i64 %1405 to i64*
  %1408 = load i64, i64* %1407, align 8
  store i64 %1408, i64* %RAX.i495, align 8
  %1409 = add i64 %1394, 16
  store i64 %1409, i64* %3, align 8
  %1410 = load i32, i32* %1368, align 4
  %1411 = sext i32 %1410 to i64
  store i64 %1411, i64* %RDX.i490, align 8
  %1412 = shl nsw i64 %1411, 2
  %1413 = add i64 %1412, %1408
  %1414 = add i64 %1394, 19
  store i64 %1414, i64* %3, align 8
  %1415 = inttoptr i64 %1413 to i32*
  store i32 %1403, i32* %1415, align 4
  %1416 = load i64, i64* %RBP.i, align 8
  %1417 = add i64 %1416, -24
  %1418 = load i64, i64* %3, align 8
  %1419 = add i64 %1418, 3
  store i64 %1419, i64* %3, align 8
  %1420 = inttoptr i64 %1417 to i32*
  %1421 = load i32, i32* %1420, align 4
  %1422 = add i32 %1421, 1
  %1423 = zext i32 %1422 to i64
  store i64 %1423, i64* %RAX.i495, align 8
  %1424 = icmp eq i32 %1421, -1
  %1425 = icmp eq i32 %1422, 0
  %1426 = or i1 %1424, %1425
  %1427 = zext i1 %1426 to i8
  store i8 %1427, i8* %41, align 1
  %1428 = and i32 %1422, 255
  %1429 = tail call i32 @llvm.ctpop.i32(i32 %1428)
  %1430 = trunc i32 %1429 to i8
  %1431 = and i8 %1430, 1
  %1432 = xor i8 %1431, 1
  store i8 %1432, i8* %42, align 1
  %1433 = xor i32 %1422, %1421
  %1434 = lshr i32 %1433, 4
  %1435 = trunc i32 %1434 to i8
  %1436 = and i8 %1435, 1
  store i8 %1436, i8* %43, align 1
  %1437 = zext i1 %1425 to i8
  store i8 %1437, i8* %44, align 1
  %1438 = lshr i32 %1422, 31
  %1439 = trunc i32 %1438 to i8
  store i8 %1439, i8* %45, align 1
  %1440 = lshr i32 %1421, 31
  %1441 = xor i32 %1438, %1440
  %1442 = add nuw nsw i32 %1441, %1438
  %1443 = icmp eq i32 %1442, 2
  %1444 = zext i1 %1443 to i8
  store i8 %1444, i8* %46, align 1
  %1445 = add i64 %1418, 9
  store i64 %1445, i64* %3, align 8
  store i32 %1422, i32* %1420, align 4
  %1446 = load i64, i64* %3, align 8
  %1447 = add i64 %1446, -38
  store i64 %1447, i64* %3, align 8
  br label %block_.L_4ac665

block_.L_4ac690:                                  ; preds = %block_.L_4ac665
  %1448 = add i64 %1394, 1
  store i64 %1448, i64* %3, align 8
  %1449 = load i64, i64* %6, align 8
  %1450 = add i64 %1449, 8
  %1451 = inttoptr i64 %1449 to i64*
  %1452 = load i64, i64* %1451, align 8
  store i64 %1452, i64* %RBP.i, align 8
  store i64 %1450, i64* %6, align 8
  %1453 = add i64 %1394, 2
  store i64 %1453, i64* %3, align 8
  %1454 = inttoptr i64 %1450 to i64*
  %1455 = load i64, i64* %1454, align 8
  store i64 %1455, i64* %3, align 8
  %1456 = add i64 %1449, 16
  store i64 %1456, i64* %6, align 8
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
define %struct.Memory* @routine_movq__rdi__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movl__0x0__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x19__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -25
  %10 = icmp ult i32 %8, 25
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
define %struct.Memory* @routine_jge_.L_4ac3f3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__edx__MINUS0x80__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -128
  %8 = add i64 %7, %6
  %9 = load i32, i32* %EDX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
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
define %struct.Memory* @routine_jmpq_.L_4ac3c8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_je_.L_4ac4d1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_4ac42e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x4__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__edx___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i32, i32* %EDX, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %4 to i32
  %10 = add i32 %5, %9
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RCX, align 8
  %12 = icmp ult i32 %10, %9
  %13 = icmp ult i32 %10, %5
  %14 = or i1 %12, %13
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %15, i8* %16, align 1
  %17 = and i32 %10, 255
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = xor i64 %6, %4
  %24 = trunc i64 %23 to i32
  %25 = xor i32 %24, %10
  %26 = lshr i32 %25, 4
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1
  %30 = icmp eq i32 %10, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %10, 31
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %9, 31
  %37 = lshr i32 %5, 31
  %38 = xor i32 %33, %36
  %39 = xor i32 %33, %37
  %40 = add nuw nsw i32 %38, %39
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_0x8__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x2___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 2
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  %9 = icmp ugt i32 %6, -3
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
define %struct.Memory* @routine_sarl__0x2___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 32
  %7 = ashr i64 %6, 33
  %8 = lshr i64 %7, 1
  %9 = trunc i64 %7 to i8
  %10 = and i8 %9, 1
  %11 = trunc i64 %8 to i32
  %12 = and i64 %8, 4294967295
  store i64 %12, i64* %RCX, align 8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %10, i8* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %15 = and i32 %11, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  store i8 %19, i8* %14, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %22 = icmp eq i32 %11, 0
  %23 = zext i1 %22 to i8
  store i8 %23, i8* %21, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %25 = lshr i64 %7, 32
  %26 = trunc i64 %25 to i8
  %27 = and i8 %26, 1
  store i8 %27, i8* %24, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %28, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x7c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -124
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4ac451(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x4__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 4
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
define %struct.Memory* @routine_movl__0x2__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 2, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x10__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
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
define %struct.Memory* @routine_jge_.L_4ac4ae(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl___rax__rdx_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
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
define %struct.Memory* @routine_movl___rax__rdx_4____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shll__0x1___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = shl i32 %6, 1
  %8 = icmp slt i32 %6, 0
  %9 = icmp slt i32 %7, 0
  %10 = xor i1 %8, %9
  %11 = zext i32 %7 to i64
  store i64 %11, i64* %RSI, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__esi___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i32, i32* %ESI, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %4 to i32
  %10 = add i32 %5, %9
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RCX, align 8
  %12 = icmp ult i32 %10, %9
  %13 = icmp ult i32 %10, %5
  %14 = or i1 %12, %13
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %15, i8* %16, align 1
  %17 = and i32 %10, 255
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = xor i64 %6, %4
  %24 = trunc i64 %23 to i32
  %25 = xor i32 %24, %10
  %26 = lshr i32 %25, 4
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1
  %30 = icmp eq i32 %10, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %10, 31
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %9, 31
  %37 = lshr i32 %5, 31
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
define %struct.Memory* @routine_movl_MINUS0x18__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
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
define %struct.Memory* @routine_movslq__esi___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %ESI, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl___rax__rdx_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 3
  store i64 %9, i64* %PC, align 8
  %10 = trunc i64 %3 to i32
  %11 = inttoptr i64 %7 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = add i32 %12, %10
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RCX, align 8
  %15 = icmp ult i32 %13, %10
  %16 = icmp ult i32 %13, %12
  %17 = or i1 %15, %16
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %18, i8* %19, align 1
  %20 = and i32 %13, 255
  %21 = tail call i32 @llvm.ctpop.i32(i32 %20)
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %24, i8* %25, align 1
  %26 = xor i32 %12, %10
  %27 = xor i32 %26, %13
  %28 = lshr i32 %27, 4
  %29 = trunc i32 %28 to i8
  %30 = and i8 %29, 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %30, i8* %31, align 1
  %32 = icmp eq i32 %13, 0
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %33, i8* %34, align 1
  %35 = lshr i32 %13, 31
  %36 = trunc i32 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %36, i8* %37, align 1
  %38 = lshr i32 %10, 31
  %39 = lshr i32 %12, 31
  %40 = xor i32 %35, %38
  %41 = xor i32 %35, %39
  %42 = add nuw nsw i32 %40, %41
  %43 = icmp eq i32 %42, 2
  %44 = zext i1 %43 to i8
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %44, i8* %45, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x80__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -128
  %8 = add i64 %7, %6
  %9 = load i32, i32* %ECX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4ac458(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x40__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 64
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
define %struct.Memory* @routine_movl_0x40__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_0x3c__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 60
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
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
define %struct.Memory* @routine_movl__ecx__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -64
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4ac580(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_4ac516(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
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
define %struct.Memory* @routine_movl_0x44__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 68
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
define %struct.Memory* @routine_movl___rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_0x4__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
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
define %struct.Memory* @routine_movl__ecx__MINUS0x80__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -128
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4ac57b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4ac546(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4ac576(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4ac571(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addl_0x44__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 68
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
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
define %struct.Memory* @routine_jmpq_.L_4ac580(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4ac65e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_4ac5bb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x44__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 68
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_0x48__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 72
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
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
define %struct.Memory* @routine_movl__ecx__MINUS0x3c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -60
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4ac5de(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x12__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 18, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x18__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -24
  %10 = icmp ult i32 %8, 24
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
define %struct.Memory* @routine_jge_.L_4ac63b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4ac5e5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x5c__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 92
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
define %struct.Memory* @routine_movl_0x60__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 96
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_0x60__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 96
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_4ac690(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x80__rbp__rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -128
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx____rax__rdx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i32, i32* %ECX, align 4
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 3
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i32*
  store i32 %8, i32* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4ac665(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
