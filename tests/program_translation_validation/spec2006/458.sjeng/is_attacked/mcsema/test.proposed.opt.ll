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
define %struct.Memory* @is_attacked(%struct.State* noalias, i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #1 {
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
  %12 = add i64 %7, -16
  %13 = load i32, i32* %EDI.i, align 4
  %14 = add i64 %10, 6
  store i64 %14, i64* %3, align 8
  %15 = inttoptr i64 %12 to i32*
  store i32 %13, i32* %15, align 4
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i448 = bitcast %union.anon* %16 to i32*
  %17 = load i64, i64* %RBP.i, align 8
  %18 = add i64 %17, -12
  %19 = load i32, i32* %ESI.i448, align 4
  %20 = load i64, i64* %3, align 8
  %21 = add i64 %20, 3
  store i64 %21, i64* %3, align 8
  %22 = inttoptr i64 %18 to i32*
  store i32 %19, i32* %22, align 4
  %RSI.i445 = getelementptr inbounds %union.anon, %union.anon* %16, i64 0, i32 0
  %23 = load i64, i64* %RBP.i, align 8
  %24 = add i64 %23, -12
  %25 = load i64, i64* %3, align 8
  %26 = add i64 %25, 3
  store i64 %26, i64* %3, align 8
  %27 = inttoptr i64 %24 to i32*
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, 1
  %30 = zext i32 %29 to i64
  store i64 %30, i64* %RSI.i445, align 8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %31, align 1
  %37 = tail call i32 @llvm.ctpop.i32(i32 %29)
  %38 = trunc i32 %37 to i8
  %39 = xor i8 %38, 1
  store i8 %39, i8* %32, align 1
  store i8 0, i8* %36, align 1
  %40 = icmp eq i32 %29, 0
  %41 = trunc i32 %29 to i8
  %42 = xor i8 %41, 1
  store i8 %42, i8* %33, align 1
  store i8 0, i8* %34, align 1
  store i8 0, i8* %35, align 1
  %.v = select i1 %40, i64 513, i64 15
  %43 = add i64 %25, %.v
  %44 = add i64 %23, -28
  %45 = add i64 %43, 7
  store i64 %45, i64* %3, align 8
  %46 = inttoptr i64 %44 to i32*
  store i32 0, i32* %46, align 4
  %RAX.i216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX.i214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %.pre106 = load i64, i64* %3, align 8
  br i1 %40, label %block_.L_4015f2.preheader, label %block_.L_401400.preheader

block_.L_401400.preheader:                        ; preds = %entry
  br label %block_.L_401400

block_.L_4015f2.preheader:                        ; preds = %entry
  br label %block_.L_4015f2

block_.L_401400:                                  ; preds = %block_.L_401400.preheader, %block_.L_4014c4
  %47 = phi i64 [ %403, %block_.L_4014c4 ], [ %.pre106, %block_.L_401400.preheader ]
  %48 = load i64, i64* %RBP.i, align 8
  %49 = add i64 %48, -28
  %50 = add i64 %47, 4
  store i64 %50, i64* %3, align 8
  %51 = inttoptr i64 %49 to i32*
  %52 = load i32, i32* %51, align 4
  %53 = add i32 %52, -4
  %54 = icmp ult i32 %52, 4
  %55 = zext i1 %54 to i8
  store i8 %55, i8* %31, align 1
  %56 = and i32 %53, 255
  %57 = tail call i32 @llvm.ctpop.i32(i32 %56)
  %58 = trunc i32 %57 to i8
  %59 = and i8 %58, 1
  %60 = xor i8 %59, 1
  store i8 %60, i8* %32, align 1
  %61 = xor i32 %53, %52
  %62 = lshr i32 %61, 4
  %63 = trunc i32 %62 to i8
  %64 = and i8 %63, 1
  store i8 %64, i8* %36, align 1
  %65 = icmp eq i32 %53, 0
  %66 = zext i1 %65 to i8
  store i8 %66, i8* %33, align 1
  %67 = lshr i32 %53, 31
  %68 = trunc i32 %67 to i8
  store i8 %68, i8* %34, align 1
  %69 = lshr i32 %52, 31
  %70 = xor i32 %67, %69
  %71 = add nuw nsw i32 %70, %69
  %72 = icmp eq i32 %71, 2
  %73 = zext i1 %72 to i8
  store i8 %73, i8* %35, align 1
  %74 = icmp ne i8 %68, 0
  %75 = xor i1 %74, %72
  %.v116 = select i1 %75, i64 10, i64 215
  %76 = add i64 %47, %.v116
  store i64 %76, i64* %3, align 8
  br i1 %75, label %block_40140a, label %block_.L_4014d7

block_40140a:                                     ; preds = %block_.L_401400
  %77 = add i64 %76, 4
  store i64 %77, i64* %3, align 8
  %78 = load i32, i32* %51, align 4
  %79 = sext i32 %78 to i64
  store i64 %79, i64* %RAX.i216, align 8
  %80 = shl nsw i64 %79, 2
  %81 = add nsw i64 %80, 4347216
  %82 = add i64 %76, 11
  store i64 %82, i64* %3, align 8
  %83 = inttoptr i64 %81 to i32*
  %84 = load i32, i32* %83, align 4
  %85 = zext i32 %84 to i64
  store i64 %85, i64* %RCX.i214, align 8
  %86 = add i64 %48, -16
  %87 = add i64 %76, 14
  store i64 %87, i64* %3, align 8
  %88 = inttoptr i64 %86 to i32*
  store i32 %84, i32* %88, align 4
  %89 = load i64, i64* %RBP.i, align 8
  %90 = add i64 %89, -8
  %91 = load i64, i64* %3, align 8
  %92 = add i64 %91, 3
  store i64 %92, i64* %3, align 8
  %93 = inttoptr i64 %90 to i32*
  %94 = load i32, i32* %93, align 4
  %95 = zext i32 %94 to i64
  store i64 %95, i64* %RCX.i214, align 8
  %96 = add i64 %89, -16
  %97 = add i64 %91, 6
  store i64 %97, i64* %3, align 8
  %98 = inttoptr i64 %96 to i32*
  %99 = load i32, i32* %98, align 4
  %100 = add i32 %99, %94
  %101 = zext i32 %100 to i64
  store i64 %101, i64* %RCX.i214, align 8
  %102 = icmp ult i32 %100, %94
  %103 = icmp ult i32 %100, %99
  %104 = or i1 %102, %103
  %105 = zext i1 %104 to i8
  store i8 %105, i8* %31, align 1
  %106 = and i32 %100, 255
  %107 = tail call i32 @llvm.ctpop.i32(i32 %106)
  %108 = trunc i32 %107 to i8
  %109 = and i8 %108, 1
  %110 = xor i8 %109, 1
  store i8 %110, i8* %32, align 1
  %111 = xor i32 %99, %94
  %112 = xor i32 %111, %100
  %113 = lshr i32 %112, 4
  %114 = trunc i32 %113 to i8
  %115 = and i8 %114, 1
  store i8 %115, i8* %36, align 1
  %116 = icmp eq i32 %100, 0
  %117 = zext i1 %116 to i8
  store i8 %117, i8* %33, align 1
  %118 = lshr i32 %100, 31
  %119 = trunc i32 %118 to i8
  store i8 %119, i8* %34, align 1
  %120 = lshr i32 %94, 31
  %121 = lshr i32 %99, 31
  %122 = xor i32 %118, %120
  %123 = xor i32 %118, %121
  %124 = add nuw nsw i32 %122, %123
  %125 = icmp eq i32 %124, 2
  %126 = zext i1 %125 to i8
  store i8 %126, i8* %35, align 1
  %127 = add i64 %89, -20
  %128 = add i64 %91, 9
  store i64 %128, i64* %3, align 8
  %129 = inttoptr i64 %127 to i32*
  store i32 %100, i32* %129, align 4
  %130 = load i64, i64* %RBP.i, align 8
  %131 = add i64 %130, -20
  %132 = load i64, i64* %3, align 8
  %133 = add i64 %132, 4
  store i64 %133, i64* %3, align 8
  %134 = inttoptr i64 %131 to i32*
  %135 = load i32, i32* %134, align 4
  %136 = sext i32 %135 to i64
  store i64 %136, i64* %RAX.i216, align 8
  %137 = shl nsw i64 %136, 2
  %138 = add nsw i64 %137, 8807744
  %139 = add i64 %132, 11
  store i64 %139, i64* %3, align 8
  %140 = inttoptr i64 %138 to i32*
  %141 = load i32, i32* %140, align 4
  %142 = zext i32 %141 to i64
  store i64 %142, i64* %RCX.i214, align 8
  %143 = add i64 %130, -24
  %144 = add i64 %132, 14
  store i64 %144, i64* %3, align 8
  %145 = inttoptr i64 %143 to i32*
  store i32 %141, i32* %145, align 4
  %146 = load i64, i64* %RBP.i, align 8
  %147 = add i64 %146, -24
  %148 = load i64, i64* %3, align 8
  %149 = add i64 %148, 4
  store i64 %149, i64* %3, align 8
  %150 = inttoptr i64 %147 to i32*
  %151 = load i32, i32* %150, align 4
  %152 = add i32 %151, -1
  %153 = icmp eq i32 %151, 0
  %154 = zext i1 %153 to i8
  store i8 %154, i8* %31, align 1
  %155 = and i32 %152, 255
  %156 = tail call i32 @llvm.ctpop.i32(i32 %155)
  %157 = trunc i32 %156 to i8
  %158 = and i8 %157, 1
  %159 = xor i8 %158, 1
  store i8 %159, i8* %32, align 1
  %160 = xor i32 %152, %151
  %161 = lshr i32 %160, 4
  %162 = trunc i32 %161 to i8
  %163 = and i8 %162, 1
  store i8 %163, i8* %36, align 1
  %164 = icmp eq i32 %152, 0
  %165 = zext i1 %164 to i8
  store i8 %165, i8* %33, align 1
  %166 = lshr i32 %152, 31
  %167 = trunc i32 %166 to i8
  store i8 %167, i8* %34, align 1
  %168 = lshr i32 %151, 31
  %169 = xor i32 %166, %168
  %170 = add nuw nsw i32 %169, %168
  %171 = icmp eq i32 %170, 2
  %172 = zext i1 %171 to i8
  store i8 %172, i8* %35, align 1
  %.v123 = select i1 %164, i64 10, i64 37
  %173 = add i64 %148, %.v123
  store i64 %173, i64* %3, align 8
  br i1 %164, label %block_401439, label %block_.L_401454

block_401439:                                     ; preds = %block_40140a
  %174 = add i64 %146, -28
  %175 = add i64 %173, 3
  store i64 %175, i64* %3, align 8
  %176 = inttoptr i64 %174 to i32*
  %177 = load i32, i32* %176, align 4
  %178 = and i32 %177, 1
  %179 = zext i32 %178 to i64
  store i64 %179, i64* %RAX.i216, align 8
  store i8 0, i8* %31, align 1
  %180 = tail call i32 @llvm.ctpop.i32(i32 %178)
  %181 = trunc i32 %180 to i8
  %182 = xor i8 %181, 1
  store i8 %182, i8* %32, align 1
  store i8 0, i8* %36, align 1
  %183 = icmp eq i32 %178, 0
  %184 = trunc i32 %178 to i8
  %185 = xor i8 %184, 1
  store i8 %185, i8* %33, align 1
  store i8 0, i8* %34, align 1
  store i8 0, i8* %35, align 1
  %.v129 = select i1 %183, i64 27, i64 15
  %186 = add i64 %173, %.v129
  store i64 %186, i64* %3, align 8
  br i1 %183, label %block_.L_401454, label %block_401448

block_401448:                                     ; preds = %block_401439
  %187 = add i64 %146, -4
  %188 = add i64 %186, 7
  store i64 %188, i64* %3, align 8
  %189 = inttoptr i64 %187 to i32*
  store i32 1, i32* %189, align 4
  %190 = load i64, i64* %3, align 8
  %191 = add i64 %190, 913
  store i64 %191, i64* %3, align 8
  br label %block_.L_4017e0

block_.L_401454:                                  ; preds = %block_40140a, %block_401439
  %192 = phi i64 [ %186, %block_401439 ], [ %173, %block_40140a ]
  %193 = add i64 %192, 4
  store i64 %193, i64* %3, align 8
  %194 = load i32, i32* %150, align 4
  %195 = add i32 %194, -5
  %196 = icmp ult i32 %194, 5
  %197 = zext i1 %196 to i8
  store i8 %197, i8* %31, align 1
  %198 = and i32 %195, 255
  %199 = tail call i32 @llvm.ctpop.i32(i32 %198)
  %200 = trunc i32 %199 to i8
  %201 = and i8 %200, 1
  %202 = xor i8 %201, 1
  store i8 %202, i8* %32, align 1
  %203 = xor i32 %195, %194
  %204 = lshr i32 %203, 4
  %205 = trunc i32 %204 to i8
  %206 = and i8 %205, 1
  store i8 %206, i8* %36, align 1
  %207 = icmp eq i32 %195, 0
  %208 = zext i1 %207 to i8
  store i8 %208, i8* %33, align 1
  %209 = lshr i32 %195, 31
  %210 = trunc i32 %209 to i8
  store i8 %210, i8* %34, align 1
  %211 = lshr i32 %194, 31
  %212 = xor i32 %209, %211
  %213 = add nuw nsw i32 %212, %211
  %214 = icmp eq i32 %213, 2
  %215 = zext i1 %214 to i8
  store i8 %215, i8* %35, align 1
  %.v124 = select i1 %207, i64 10, i64 22
  %216 = add i64 %192, %.v124
  store i64 %216, i64* %3, align 8
  br i1 %207, label %block_40145e, label %block_.L_40146a

block_40145e:                                     ; preds = %block_.L_401454
  %217 = add i64 %146, -4
  %218 = add i64 %216, 7
  store i64 %218, i64* %3, align 8
  %219 = inttoptr i64 %217 to i32*
  store i32 1, i32* %219, align 4
  %220 = load i64, i64* %3, align 8
  %221 = add i64 %220, 891
  store i64 %221, i64* %3, align 8
  br label %block_.L_4017e0

block_.L_40146a:                                  ; preds = %block_.L_401454
  %222 = add i64 %216, 5
  br label %block_.L_40146f

block_.L_40146f:                                  ; preds = %block_.L_4014a8, %block_.L_40146a
  %223 = phi i64 [ %146, %block_.L_40146a ], [ %.pre105, %block_.L_4014a8 ]
  %storemerge = phi i64 [ %222, %block_.L_40146a ], [ %371, %block_.L_4014a8 ]
  %224 = add i64 %223, -24
  %225 = add i64 %storemerge, 4
  store i64 %225, i64* %3, align 8
  %226 = inttoptr i64 %224 to i32*
  %227 = load i32, i32* %226, align 4
  store i8 0, i8* %31, align 1
  %228 = and i32 %227, 255
  %229 = tail call i32 @llvm.ctpop.i32(i32 %228)
  %230 = trunc i32 %229 to i8
  %231 = and i8 %230, 1
  %232 = xor i8 %231, 1
  store i8 %232, i8* %32, align 1
  store i8 0, i8* %36, align 1
  %233 = icmp eq i32 %227, 0
  %234 = zext i1 %233 to i8
  store i8 %234, i8* %33, align 1
  %235 = lshr i32 %227, 31
  %236 = trunc i32 %235 to i8
  store i8 %236, i8* %34, align 1
  store i8 0, i8* %35, align 1
  %.v125 = select i1 %233, i64 85, i64 10
  %237 = add i64 %storemerge, %.v125
  store i64 %237, i64* %3, align 8
  br i1 %233, label %block_.L_4014c4.loopexit, label %block_401479

block_401479:                                     ; preds = %block_.L_40146f
  %238 = add i64 %237, 4
  store i64 %238, i64* %3, align 8
  %239 = load i32, i32* %226, align 4
  %240 = add i32 %239, -11
  %241 = icmp ult i32 %239, 11
  %242 = zext i1 %241 to i8
  store i8 %242, i8* %31, align 1
  %243 = and i32 %240, 255
  %244 = tail call i32 @llvm.ctpop.i32(i32 %243)
  %245 = trunc i32 %244 to i8
  %246 = and i8 %245, 1
  %247 = xor i8 %246, 1
  store i8 %247, i8* %32, align 1
  %248 = xor i32 %240, %239
  %249 = lshr i32 %248, 4
  %250 = trunc i32 %249 to i8
  %251 = and i8 %250, 1
  store i8 %251, i8* %36, align 1
  %252 = icmp eq i32 %240, 0
  %253 = zext i1 %252 to i8
  store i8 %253, i8* %33, align 1
  %254 = lshr i32 %240, 31
  %255 = trunc i32 %254 to i8
  store i8 %255, i8* %34, align 1
  %256 = lshr i32 %239, 31
  %257 = xor i32 %254, %256
  %258 = add nuw nsw i32 %257, %256
  %259 = icmp eq i32 %258, 2
  %260 = zext i1 %259 to i8
  store i8 %260, i8* %35, align 1
  %.v126 = select i1 %252, i64 20, i64 10
  %261 = add i64 %237, %.v126
  store i64 %261, i64* %3, align 8
  br i1 %252, label %block_.L_40148d, label %block_401483

block_401483:                                     ; preds = %block_401479
  %262 = add i64 %261, 4
  store i64 %262, i64* %3, align 8
  %263 = load i32, i32* %226, align 4
  %264 = add i32 %263, -9
  %265 = icmp ult i32 %263, 9
  %266 = zext i1 %265 to i8
  store i8 %266, i8* %31, align 1
  %267 = and i32 %264, 255
  %268 = tail call i32 @llvm.ctpop.i32(i32 %267)
  %269 = trunc i32 %268 to i8
  %270 = and i8 %269, 1
  %271 = xor i8 %270, 1
  store i8 %271, i8* %32, align 1
  %272 = xor i32 %264, %263
  %273 = lshr i32 %272, 4
  %274 = trunc i32 %273 to i8
  %275 = and i8 %274, 1
  store i8 %275, i8* %36, align 1
  %276 = icmp eq i32 %264, 0
  %277 = zext i1 %276 to i8
  store i8 %277, i8* %33, align 1
  %278 = lshr i32 %264, 31
  %279 = trunc i32 %278 to i8
  store i8 %279, i8* %34, align 1
  %280 = lshr i32 %263, 31
  %281 = xor i32 %278, %280
  %282 = add nuw nsw i32 %281, %280
  %283 = icmp eq i32 %282, 2
  %284 = zext i1 %283 to i8
  store i8 %284, i8* %35, align 1
  %.v127 = select i1 %276, i64 10, i64 22
  %285 = add i64 %261, %.v127
  store i64 %285, i64* %3, align 8
  br i1 %276, label %block_.L_40148d, label %block_.L_401499

block_.L_40148d:                                  ; preds = %block_401483, %block_401479
  %286 = phi i64 [ %285, %block_401483 ], [ %261, %block_401479 ]
  %287 = add i64 %223, -4
  %288 = add i64 %286, 7
  store i64 %288, i64* %3, align 8
  %289 = inttoptr i64 %287 to i32*
  store i32 1, i32* %289, align 4
  %290 = load i64, i64* %3, align 8
  %291 = add i64 %290, 844
  store i64 %291, i64* %3, align 8
  br label %block_.L_4017e0

block_.L_401499:                                  ; preds = %block_401483
  %292 = add i64 %285, 4
  store i64 %292, i64* %3, align 8
  %293 = load i32, i32* %226, align 4
  %294 = add i32 %293, -13
  %295 = icmp ult i32 %293, 13
  %296 = zext i1 %295 to i8
  store i8 %296, i8* %31, align 1
  %297 = and i32 %294, 255
  %298 = tail call i32 @llvm.ctpop.i32(i32 %297)
  %299 = trunc i32 %298 to i8
  %300 = and i8 %299, 1
  %301 = xor i8 %300, 1
  store i8 %301, i8* %32, align 1
  %302 = xor i32 %294, %293
  %303 = lshr i32 %302, 4
  %304 = trunc i32 %303 to i8
  %305 = and i8 %304, 1
  store i8 %305, i8* %36, align 1
  %306 = icmp eq i32 %294, 0
  %307 = zext i1 %306 to i8
  store i8 %307, i8* %33, align 1
  %308 = lshr i32 %294, 31
  %309 = trunc i32 %308 to i8
  store i8 %309, i8* %34, align 1
  %310 = lshr i32 %293, 31
  %311 = xor i32 %308, %310
  %312 = add nuw nsw i32 %311, %310
  %313 = icmp eq i32 %312, 2
  %314 = zext i1 %313 to i8
  store i8 %314, i8* %35, align 1
  %.v128 = select i1 %306, i64 15, i64 10
  %315 = add i64 %285, %.v128
  store i64 %315, i64* %3, align 8
  br i1 %306, label %block_.L_4014a8, label %block_4014a3

block_4014a3:                                     ; preds = %block_.L_401499
  %316 = add i64 %315, 33
  store i64 %316, i64* %3, align 8
  br label %block_.L_4014c4

block_.L_4014a8:                                  ; preds = %block_.L_401499
  %317 = add i64 %223, -16
  %318 = add i64 %315, 3
  store i64 %318, i64* %3, align 8
  %319 = inttoptr i64 %317 to i32*
  %320 = load i32, i32* %319, align 4
  %321 = zext i32 %320 to i64
  store i64 %321, i64* %RAX.i216, align 8
  %322 = add i64 %223, -20
  %323 = add i64 %315, 6
  store i64 %323, i64* %3, align 8
  %324 = inttoptr i64 %322 to i32*
  %325 = load i32, i32* %324, align 4
  %326 = add i32 %325, %320
  %327 = zext i32 %326 to i64
  store i64 %327, i64* %RAX.i216, align 8
  %328 = icmp ult i32 %326, %320
  %329 = icmp ult i32 %326, %325
  %330 = or i1 %328, %329
  %331 = zext i1 %330 to i8
  store i8 %331, i8* %31, align 1
  %332 = and i32 %326, 255
  %333 = tail call i32 @llvm.ctpop.i32(i32 %332)
  %334 = trunc i32 %333 to i8
  %335 = and i8 %334, 1
  %336 = xor i8 %335, 1
  store i8 %336, i8* %32, align 1
  %337 = xor i32 %325, %320
  %338 = xor i32 %337, %326
  %339 = lshr i32 %338, 4
  %340 = trunc i32 %339 to i8
  %341 = and i8 %340, 1
  store i8 %341, i8* %36, align 1
  %342 = icmp eq i32 %326, 0
  %343 = zext i1 %342 to i8
  store i8 %343, i8* %33, align 1
  %344 = lshr i32 %326, 31
  %345 = trunc i32 %344 to i8
  store i8 %345, i8* %34, align 1
  %346 = lshr i32 %320, 31
  %347 = lshr i32 %325, 31
  %348 = xor i32 %344, %346
  %349 = xor i32 %344, %347
  %350 = add nuw nsw i32 %348, %349
  %351 = icmp eq i32 %350, 2
  %352 = zext i1 %351 to i8
  store i8 %352, i8* %35, align 1
  %353 = add i64 %315, 9
  store i64 %353, i64* %3, align 8
  store i32 %326, i32* %324, align 4
  %354 = load i64, i64* %RBP.i, align 8
  %355 = add i64 %354, -20
  %356 = load i64, i64* %3, align 8
  %357 = add i64 %356, 4
  store i64 %357, i64* %3, align 8
  %358 = inttoptr i64 %355 to i32*
  %359 = load i32, i32* %358, align 4
  %360 = sext i32 %359 to i64
  store i64 %360, i64* %RCX.i214, align 8
  %361 = shl nsw i64 %360, 2
  %362 = add nsw i64 %361, 8807744
  %363 = add i64 %356, 11
  store i64 %363, i64* %3, align 8
  %364 = inttoptr i64 %362 to i32*
  %365 = load i32, i32* %364, align 4
  %366 = zext i32 %365 to i64
  store i64 %366, i64* %RAX.i216, align 8
  %367 = add i64 %354, -24
  %368 = add i64 %356, 14
  store i64 %368, i64* %3, align 8
  %369 = inttoptr i64 %367 to i32*
  store i32 %365, i32* %369, align 4
  %370 = load i64, i64* %3, align 8
  %371 = add i64 %370, -80
  %372 = add i64 %370, 5
  store i64 %372, i64* %3, align 8
  %.pre105 = load i64, i64* %RBP.i, align 8
  br label %block_.L_40146f

block_.L_4014c4.loopexit:                         ; preds = %block_.L_40146f
  br label %block_.L_4014c4

block_.L_4014c4:                                  ; preds = %block_.L_4014c4.loopexit, %block_4014a3
  %373 = phi i64 [ %316, %block_4014a3 ], [ %237, %block_.L_4014c4.loopexit ]
  %374 = add i64 %223, -28
  %375 = add i64 %373, 8
  store i64 %375, i64* %3, align 8
  %376 = inttoptr i64 %374 to i32*
  %377 = load i32, i32* %376, align 4
  %378 = add i32 %377, 1
  %379 = zext i32 %378 to i64
  store i64 %379, i64* %RAX.i216, align 8
  %380 = icmp eq i32 %377, -1
  %381 = icmp eq i32 %378, 0
  %382 = or i1 %380, %381
  %383 = zext i1 %382 to i8
  store i8 %383, i8* %31, align 1
  %384 = and i32 %378, 255
  %385 = tail call i32 @llvm.ctpop.i32(i32 %384)
  %386 = trunc i32 %385 to i8
  %387 = and i8 %386, 1
  %388 = xor i8 %387, 1
  store i8 %388, i8* %32, align 1
  %389 = xor i32 %378, %377
  %390 = lshr i32 %389, 4
  %391 = trunc i32 %390 to i8
  %392 = and i8 %391, 1
  store i8 %392, i8* %36, align 1
  %393 = zext i1 %381 to i8
  store i8 %393, i8* %33, align 1
  %394 = lshr i32 %378, 31
  %395 = trunc i32 %394 to i8
  store i8 %395, i8* %34, align 1
  %396 = lshr i32 %377, 31
  %397 = xor i32 %394, %396
  %398 = add nuw nsw i32 %397, %394
  %399 = icmp eq i32 %398, 2
  %400 = zext i1 %399 to i8
  store i8 %400, i8* %35, align 1
  %401 = add i64 %373, 14
  store i64 %401, i64* %3, align 8
  store i32 %378, i32* %376, align 4
  %402 = load i64, i64* %3, align 8
  %403 = add i64 %402, -210
  store i64 %403, i64* %3, align 8
  br label %block_.L_401400

block_.L_4014d7:                                  ; preds = %block_.L_401400
  %404 = add i64 %76, 7
  store i64 %404, i64* %3, align 8
  store i32 0, i32* %51, align 4
  %RCX.i333 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %.pre102 = load i64, i64* %3, align 8
  br label %block_.L_4014de

block_.L_4014de:                                  ; preds = %block_.L_401513, %block_.L_4014d7
  %405 = phi i64 [ %535, %block_.L_401513 ], [ %.pre102, %block_.L_4014d7 ]
  %406 = load i64, i64* %RBP.i, align 8
  %407 = add i64 %406, -28
  %408 = add i64 %405, 4
  store i64 %408, i64* %3, align 8
  %409 = inttoptr i64 %407 to i32*
  %410 = load i32, i32* %409, align 4
  %411 = add i32 %410, -8
  %412 = icmp ult i32 %410, 8
  %413 = zext i1 %412 to i8
  store i8 %413, i8* %31, align 1
  %414 = and i32 %411, 255
  %415 = tail call i32 @llvm.ctpop.i32(i32 %414)
  %416 = trunc i32 %415 to i8
  %417 = and i8 %416, 1
  %418 = xor i8 %417, 1
  store i8 %418, i8* %32, align 1
  %419 = xor i32 %411, %410
  %420 = lshr i32 %419, 4
  %421 = trunc i32 %420 to i8
  %422 = and i8 %421, 1
  store i8 %422, i8* %36, align 1
  %423 = icmp eq i32 %411, 0
  %424 = zext i1 %423 to i8
  store i8 %424, i8* %33, align 1
  %425 = lshr i32 %411, 31
  %426 = trunc i32 %425 to i8
  store i8 %426, i8* %34, align 1
  %427 = lshr i32 %410, 31
  %428 = xor i32 %425, %427
  %429 = add nuw nsw i32 %428, %427
  %430 = icmp eq i32 %429, 2
  %431 = zext i1 %430 to i8
  store i8 %431, i8* %35, align 1
  %432 = icmp ne i8 %426, 0
  %433 = xor i1 %432, %430
  %.v113 = select i1 %433, i64 10, i64 72
  %434 = add i64 %405, %.v113
  store i64 %434, i64* %3, align 8
  br i1 %433, label %block_4014e8, label %block_.L_401526

block_4014e8:                                     ; preds = %block_.L_4014de
  %435 = add i64 %406, -8
  %436 = add i64 %434, 3
  store i64 %436, i64* %3, align 8
  %437 = inttoptr i64 %435 to i32*
  %438 = load i32, i32* %437, align 4
  %439 = zext i32 %438 to i64
  store i64 %439, i64* %RAX.i216, align 8
  %440 = add i64 %434, 7
  store i64 %440, i64* %3, align 8
  %441 = load i32, i32* %409, align 4
  %442 = sext i32 %441 to i64
  store i64 %442, i64* %RCX.i333, align 8
  %443 = shl nsw i64 %442, 2
  %444 = add nsw i64 %443, 4347232
  %445 = add i64 %434, 14
  store i64 %445, i64* %3, align 8
  %446 = inttoptr i64 %444 to i32*
  %447 = load i32, i32* %446, align 4
  %448 = add i32 %447, %438
  %449 = zext i32 %448 to i64
  store i64 %449, i64* %RAX.i216, align 8
  %450 = icmp ult i32 %448, %438
  %451 = icmp ult i32 %448, %447
  %452 = or i1 %450, %451
  %453 = zext i1 %452 to i8
  store i8 %453, i8* %31, align 1
  %454 = and i32 %448, 255
  %455 = tail call i32 @llvm.ctpop.i32(i32 %454)
  %456 = trunc i32 %455 to i8
  %457 = and i8 %456, 1
  %458 = xor i8 %457, 1
  store i8 %458, i8* %32, align 1
  %459 = xor i32 %447, %438
  %460 = xor i32 %459, %448
  %461 = lshr i32 %460, 4
  %462 = trunc i32 %461 to i8
  %463 = and i8 %462, 1
  store i8 %463, i8* %36, align 1
  %464 = icmp eq i32 %448, 0
  %465 = zext i1 %464 to i8
  store i8 %465, i8* %33, align 1
  %466 = lshr i32 %448, 31
  %467 = trunc i32 %466 to i8
  store i8 %467, i8* %34, align 1
  %468 = lshr i32 %438, 31
  %469 = lshr i32 %447, 31
  %470 = xor i32 %466, %468
  %471 = xor i32 %466, %469
  %472 = add nuw nsw i32 %470, %471
  %473 = icmp eq i32 %472, 2
  %474 = zext i1 %473 to i8
  store i8 %474, i8* %35, align 1
  %475 = sext i32 %448 to i64
  store i64 %475, i64* %RCX.i333, align 8
  %476 = shl nsw i64 %475, 2
  %477 = add nsw i64 %476, 8807744
  %478 = add i64 %434, 25
  store i64 %478, i64* %3, align 8
  %479 = inttoptr i64 %477 to i32*
  %480 = load i32, i32* %479, align 4
  %481 = add i32 %480, -3
  %482 = icmp ult i32 %480, 3
  %483 = zext i1 %482 to i8
  store i8 %483, i8* %31, align 1
  %484 = and i32 %481, 255
  %485 = tail call i32 @llvm.ctpop.i32(i32 %484)
  %486 = trunc i32 %485 to i8
  %487 = and i8 %486, 1
  %488 = xor i8 %487, 1
  store i8 %488, i8* %32, align 1
  %489 = xor i32 %481, %480
  %490 = lshr i32 %489, 4
  %491 = trunc i32 %490 to i8
  %492 = and i8 %491, 1
  store i8 %492, i8* %36, align 1
  %493 = icmp eq i32 %481, 0
  %494 = zext i1 %493 to i8
  store i8 %494, i8* %33, align 1
  %495 = lshr i32 %481, 31
  %496 = trunc i32 %495 to i8
  store i8 %496, i8* %34, align 1
  %497 = lshr i32 %480, 31
  %498 = xor i32 %495, %497
  %499 = add nuw nsw i32 %498, %497
  %500 = icmp eq i32 %499, 2
  %501 = zext i1 %500 to i8
  store i8 %501, i8* %35, align 1
  %.v112 = select i1 %493, i64 31, i64 43
  %502 = add i64 %434, %.v112
  store i64 %502, i64* %3, align 8
  br i1 %493, label %block_401507, label %block_.L_401513

block_401507:                                     ; preds = %block_4014e8
  %503 = add i64 %406, -4
  %504 = add i64 %502, 7
  store i64 %504, i64* %3, align 8
  %505 = inttoptr i64 %503 to i32*
  store i32 1, i32* %505, align 4
  %506 = load i64, i64* %3, align 8
  %507 = add i64 %506, 722
  store i64 %507, i64* %3, align 8
  br label %block_.L_4017e0

block_.L_401513:                                  ; preds = %block_4014e8
  %508 = add i64 %502, 8
  store i64 %508, i64* %3, align 8
  %509 = load i32, i32* %409, align 4
  %510 = add i32 %509, 1
  %511 = zext i32 %510 to i64
  store i64 %511, i64* %RAX.i216, align 8
  %512 = icmp eq i32 %509, -1
  %513 = icmp eq i32 %510, 0
  %514 = or i1 %512, %513
  %515 = zext i1 %514 to i8
  store i8 %515, i8* %31, align 1
  %516 = and i32 %510, 255
  %517 = tail call i32 @llvm.ctpop.i32(i32 %516)
  %518 = trunc i32 %517 to i8
  %519 = and i8 %518, 1
  %520 = xor i8 %519, 1
  store i8 %520, i8* %32, align 1
  %521 = xor i32 %510, %509
  %522 = lshr i32 %521, 4
  %523 = trunc i32 %522 to i8
  %524 = and i8 %523, 1
  store i8 %524, i8* %36, align 1
  %525 = zext i1 %513 to i8
  store i8 %525, i8* %33, align 1
  %526 = lshr i32 %510, 31
  %527 = trunc i32 %526 to i8
  store i8 %527, i8* %34, align 1
  %528 = lshr i32 %509, 31
  %529 = xor i32 %526, %528
  %530 = add nuw nsw i32 %529, %526
  %531 = icmp eq i32 %530, 2
  %532 = zext i1 %531 to i8
  store i8 %532, i8* %35, align 1
  %533 = add i64 %502, 14
  store i64 %533, i64* %3, align 8
  store i32 %510, i32* %409, align 4
  %534 = load i64, i64* %3, align 8
  %535 = add i64 %534, -67
  store i64 %535, i64* %3, align 8
  br label %block_.L_4014de

block_.L_401526:                                  ; preds = %block_.L_4014de
  %536 = add i64 %434, 7
  store i64 %536, i64* %3, align 8
  store i32 0, i32* %409, align 4
  %.pre103 = load i64, i64* %3, align 8
  br label %block_.L_40152d

block_.L_40152d:                                  ; preds = %block_.L_4015cc, %block_.L_401526
  %537 = phi i64 [ %850, %block_.L_4015cc ], [ %.pre103, %block_.L_401526 ]
  %538 = load i64, i64* %RBP.i, align 8
  %539 = add i64 %538, -28
  %540 = add i64 %537, 4
  store i64 %540, i64* %3, align 8
  %541 = inttoptr i64 %539 to i32*
  %542 = load i32, i32* %541, align 4
  %543 = add i32 %542, -4
  %544 = icmp ult i32 %542, 4
  %545 = zext i1 %544 to i8
  store i8 %545, i8* %31, align 1
  %546 = and i32 %543, 255
  %547 = tail call i32 @llvm.ctpop.i32(i32 %546)
  %548 = trunc i32 %547 to i8
  %549 = and i8 %548, 1
  %550 = xor i8 %549, 1
  store i8 %550, i8* %32, align 1
  %551 = xor i32 %543, %542
  %552 = lshr i32 %551, 4
  %553 = trunc i32 %552 to i8
  %554 = and i8 %553, 1
  store i8 %554, i8* %36, align 1
  %555 = icmp eq i32 %543, 0
  %556 = zext i1 %555 to i8
  store i8 %556, i8* %33, align 1
  %557 = lshr i32 %543, 31
  %558 = trunc i32 %557 to i8
  store i8 %558, i8* %34, align 1
  %559 = lshr i32 %542, 31
  %560 = xor i32 %557, %559
  %561 = add nuw nsw i32 %560, %559
  %562 = icmp eq i32 %561, 2
  %563 = zext i1 %562 to i8
  store i8 %563, i8* %35, align 1
  %564 = icmp ne i8 %558, 0
  %565 = xor i1 %564, %562
  %.v117 = select i1 %565, i64 10, i64 178
  %566 = add i64 %537, %.v117
  store i64 %566, i64* %3, align 8
  br i1 %565, label %block_401537, label %block_.L_4015df

block_401537:                                     ; preds = %block_.L_40152d
  %567 = add i64 %566, 4
  store i64 %567, i64* %3, align 8
  %568 = load i32, i32* %541, align 4
  %569 = sext i32 %568 to i64
  store i64 %569, i64* %RAX.i216, align 8
  %570 = shl nsw i64 %569, 2
  %571 = add nsw i64 %570, 4347264
  %572 = add i64 %566, 11
  store i64 %572, i64* %3, align 8
  %573 = inttoptr i64 %571 to i32*
  %574 = load i32, i32* %573, align 4
  %575 = zext i32 %574 to i64
  store i64 %575, i64* %RCX.i214, align 8
  %576 = add i64 %538, -16
  %577 = add i64 %566, 14
  store i64 %577, i64* %3, align 8
  %578 = inttoptr i64 %576 to i32*
  store i32 %574, i32* %578, align 4
  %579 = load i64, i64* %RBP.i, align 8
  %580 = add i64 %579, -8
  %581 = load i64, i64* %3, align 8
  %582 = add i64 %581, 3
  store i64 %582, i64* %3, align 8
  %583 = inttoptr i64 %580 to i32*
  %584 = load i32, i32* %583, align 4
  %585 = zext i32 %584 to i64
  store i64 %585, i64* %RCX.i214, align 8
  %586 = add i64 %579, -16
  %587 = add i64 %581, 6
  store i64 %587, i64* %3, align 8
  %588 = inttoptr i64 %586 to i32*
  %589 = load i32, i32* %588, align 4
  %590 = add i32 %589, %584
  %591 = zext i32 %590 to i64
  store i64 %591, i64* %RCX.i214, align 8
  %592 = icmp ult i32 %590, %584
  %593 = icmp ult i32 %590, %589
  %594 = or i1 %592, %593
  %595 = zext i1 %594 to i8
  store i8 %595, i8* %31, align 1
  %596 = and i32 %590, 255
  %597 = tail call i32 @llvm.ctpop.i32(i32 %596)
  %598 = trunc i32 %597 to i8
  %599 = and i8 %598, 1
  %600 = xor i8 %599, 1
  store i8 %600, i8* %32, align 1
  %601 = xor i32 %589, %584
  %602 = xor i32 %601, %590
  %603 = lshr i32 %602, 4
  %604 = trunc i32 %603 to i8
  %605 = and i8 %604, 1
  store i8 %605, i8* %36, align 1
  %606 = icmp eq i32 %590, 0
  %607 = zext i1 %606 to i8
  store i8 %607, i8* %33, align 1
  %608 = lshr i32 %590, 31
  %609 = trunc i32 %608 to i8
  store i8 %609, i8* %34, align 1
  %610 = lshr i32 %584, 31
  %611 = lshr i32 %589, 31
  %612 = xor i32 %608, %610
  %613 = xor i32 %608, %611
  %614 = add nuw nsw i32 %612, %613
  %615 = icmp eq i32 %614, 2
  %616 = zext i1 %615 to i8
  store i8 %616, i8* %35, align 1
  %617 = add i64 %579, -20
  %618 = add i64 %581, 9
  store i64 %618, i64* %3, align 8
  %619 = inttoptr i64 %617 to i32*
  store i32 %590, i32* %619, align 4
  %620 = load i64, i64* %RBP.i, align 8
  %621 = add i64 %620, -20
  %622 = load i64, i64* %3, align 8
  %623 = add i64 %622, 4
  store i64 %623, i64* %3, align 8
  %624 = inttoptr i64 %621 to i32*
  %625 = load i32, i32* %624, align 4
  %626 = sext i32 %625 to i64
  store i64 %626, i64* %RAX.i216, align 8
  %627 = shl nsw i64 %626, 2
  %628 = add nsw i64 %627, 8807744
  %629 = add i64 %622, 11
  store i64 %629, i64* %3, align 8
  %630 = inttoptr i64 %628 to i32*
  %631 = load i32, i32* %630, align 4
  %632 = zext i32 %631 to i64
  store i64 %632, i64* %RCX.i214, align 8
  %633 = add i64 %620, -24
  %634 = add i64 %622, 14
  store i64 %634, i64* %3, align 8
  %635 = inttoptr i64 %633 to i32*
  store i32 %631, i32* %635, align 4
  %636 = load i64, i64* %RBP.i, align 8
  %637 = add i64 %636, -24
  %638 = load i64, i64* %3, align 8
  %639 = add i64 %638, 4
  store i64 %639, i64* %3, align 8
  %640 = inttoptr i64 %637 to i32*
  %641 = load i32, i32* %640, align 4
  %642 = add i32 %641, -5
  %643 = icmp ult i32 %641, 5
  %644 = zext i1 %643 to i8
  store i8 %644, i8* %31, align 1
  %645 = and i32 %642, 255
  %646 = tail call i32 @llvm.ctpop.i32(i32 %645)
  %647 = trunc i32 %646 to i8
  %648 = and i8 %647, 1
  %649 = xor i8 %648, 1
  store i8 %649, i8* %32, align 1
  %650 = xor i32 %642, %641
  %651 = lshr i32 %650, 4
  %652 = trunc i32 %651 to i8
  %653 = and i8 %652, 1
  store i8 %653, i8* %36, align 1
  %654 = icmp eq i32 %642, 0
  %655 = zext i1 %654 to i8
  store i8 %655, i8* %33, align 1
  %656 = lshr i32 %642, 31
  %657 = trunc i32 %656 to i8
  store i8 %657, i8* %34, align 1
  %658 = lshr i32 %641, 31
  %659 = xor i32 %656, %658
  %660 = add nuw nsw i32 %659, %658
  %661 = icmp eq i32 %660, 2
  %662 = zext i1 %661 to i8
  store i8 %662, i8* %35, align 1
  %.v118 = select i1 %654, i64 10, i64 22
  %663 = add i64 %638, %.v118
  store i64 %663, i64* %3, align 8
  br i1 %654, label %block_401566, label %block_.L_401572

block_401566:                                     ; preds = %block_401537
  %664 = add i64 %636, -4
  %665 = add i64 %663, 7
  store i64 %665, i64* %3, align 8
  %666 = inttoptr i64 %664 to i32*
  store i32 1, i32* %666, align 4
  %667 = load i64, i64* %3, align 8
  %668 = add i64 %667, 627
  store i64 %668, i64* %3, align 8
  br label %block_.L_4017e0

block_.L_401572:                                  ; preds = %block_401537
  %669 = add i64 %663, 5
  br label %block_.L_401577

block_.L_401577:                                  ; preds = %block_.L_4015b0, %block_.L_401572
  %670 = phi i64 [ %636, %block_.L_401572 ], [ %.pre104, %block_.L_4015b0 ]
  %storemerge33 = phi i64 [ %669, %block_.L_401572 ], [ %818, %block_.L_4015b0 ]
  %671 = add i64 %670, -24
  %672 = add i64 %storemerge33, 4
  store i64 %672, i64* %3, align 8
  %673 = inttoptr i64 %671 to i32*
  %674 = load i32, i32* %673, align 4
  store i8 0, i8* %31, align 1
  %675 = and i32 %674, 255
  %676 = tail call i32 @llvm.ctpop.i32(i32 %675)
  %677 = trunc i32 %676 to i8
  %678 = and i8 %677, 1
  %679 = xor i8 %678, 1
  store i8 %679, i8* %32, align 1
  store i8 0, i8* %36, align 1
  %680 = icmp eq i32 %674, 0
  %681 = zext i1 %680 to i8
  store i8 %681, i8* %33, align 1
  %682 = lshr i32 %674, 31
  %683 = trunc i32 %682 to i8
  store i8 %683, i8* %34, align 1
  store i8 0, i8* %35, align 1
  %.v119 = select i1 %680, i64 85, i64 10
  %684 = add i64 %storemerge33, %.v119
  store i64 %684, i64* %3, align 8
  br i1 %680, label %block_.L_4015cc.loopexit, label %block_401581

block_401581:                                     ; preds = %block_.L_401577
  %685 = add i64 %684, 4
  store i64 %685, i64* %3, align 8
  %686 = load i32, i32* %673, align 4
  %687 = add i32 %686, -7
  %688 = icmp ult i32 %686, 7
  %689 = zext i1 %688 to i8
  store i8 %689, i8* %31, align 1
  %690 = and i32 %687, 255
  %691 = tail call i32 @llvm.ctpop.i32(i32 %690)
  %692 = trunc i32 %691 to i8
  %693 = and i8 %692, 1
  %694 = xor i8 %693, 1
  store i8 %694, i8* %32, align 1
  %695 = xor i32 %687, %686
  %696 = lshr i32 %695, 4
  %697 = trunc i32 %696 to i8
  %698 = and i8 %697, 1
  store i8 %698, i8* %36, align 1
  %699 = icmp eq i32 %687, 0
  %700 = zext i1 %699 to i8
  store i8 %700, i8* %33, align 1
  %701 = lshr i32 %687, 31
  %702 = trunc i32 %701 to i8
  store i8 %702, i8* %34, align 1
  %703 = lshr i32 %686, 31
  %704 = xor i32 %701, %703
  %705 = add nuw nsw i32 %704, %703
  %706 = icmp eq i32 %705, 2
  %707 = zext i1 %706 to i8
  store i8 %707, i8* %35, align 1
  %.v120 = select i1 %699, i64 20, i64 10
  %708 = add i64 %684, %.v120
  store i64 %708, i64* %3, align 8
  br i1 %699, label %block_.L_401595, label %block_40158b

block_40158b:                                     ; preds = %block_401581
  %709 = add i64 %708, 4
  store i64 %709, i64* %3, align 8
  %710 = load i32, i32* %673, align 4
  %711 = add i32 %710, -9
  %712 = icmp ult i32 %710, 9
  %713 = zext i1 %712 to i8
  store i8 %713, i8* %31, align 1
  %714 = and i32 %711, 255
  %715 = tail call i32 @llvm.ctpop.i32(i32 %714)
  %716 = trunc i32 %715 to i8
  %717 = and i8 %716, 1
  %718 = xor i8 %717, 1
  store i8 %718, i8* %32, align 1
  %719 = xor i32 %711, %710
  %720 = lshr i32 %719, 4
  %721 = trunc i32 %720 to i8
  %722 = and i8 %721, 1
  store i8 %722, i8* %36, align 1
  %723 = icmp eq i32 %711, 0
  %724 = zext i1 %723 to i8
  store i8 %724, i8* %33, align 1
  %725 = lshr i32 %711, 31
  %726 = trunc i32 %725 to i8
  store i8 %726, i8* %34, align 1
  %727 = lshr i32 %710, 31
  %728 = xor i32 %725, %727
  %729 = add nuw nsw i32 %728, %727
  %730 = icmp eq i32 %729, 2
  %731 = zext i1 %730 to i8
  store i8 %731, i8* %35, align 1
  %.v121 = select i1 %723, i64 10, i64 22
  %732 = add i64 %708, %.v121
  store i64 %732, i64* %3, align 8
  br i1 %723, label %block_.L_401595, label %block_.L_4015a1

block_.L_401595:                                  ; preds = %block_40158b, %block_401581
  %733 = phi i64 [ %732, %block_40158b ], [ %708, %block_401581 ]
  %734 = add i64 %670, -4
  %735 = add i64 %733, 7
  store i64 %735, i64* %3, align 8
  %736 = inttoptr i64 %734 to i32*
  store i32 1, i32* %736, align 4
  %737 = load i64, i64* %3, align 8
  %738 = add i64 %737, 580
  store i64 %738, i64* %3, align 8
  br label %block_.L_4017e0

block_.L_4015a1:                                  ; preds = %block_40158b
  %739 = add i64 %732, 4
  store i64 %739, i64* %3, align 8
  %740 = load i32, i32* %673, align 4
  %741 = add i32 %740, -13
  %742 = icmp ult i32 %740, 13
  %743 = zext i1 %742 to i8
  store i8 %743, i8* %31, align 1
  %744 = and i32 %741, 255
  %745 = tail call i32 @llvm.ctpop.i32(i32 %744)
  %746 = trunc i32 %745 to i8
  %747 = and i8 %746, 1
  %748 = xor i8 %747, 1
  store i8 %748, i8* %32, align 1
  %749 = xor i32 %741, %740
  %750 = lshr i32 %749, 4
  %751 = trunc i32 %750 to i8
  %752 = and i8 %751, 1
  store i8 %752, i8* %36, align 1
  %753 = icmp eq i32 %741, 0
  %754 = zext i1 %753 to i8
  store i8 %754, i8* %33, align 1
  %755 = lshr i32 %741, 31
  %756 = trunc i32 %755 to i8
  store i8 %756, i8* %34, align 1
  %757 = lshr i32 %740, 31
  %758 = xor i32 %755, %757
  %759 = add nuw nsw i32 %758, %757
  %760 = icmp eq i32 %759, 2
  %761 = zext i1 %760 to i8
  store i8 %761, i8* %35, align 1
  %.v122 = select i1 %753, i64 15, i64 10
  %762 = add i64 %732, %.v122
  store i64 %762, i64* %3, align 8
  br i1 %753, label %block_.L_4015b0, label %block_4015ab

block_4015ab:                                     ; preds = %block_.L_4015a1
  %763 = add i64 %762, 33
  store i64 %763, i64* %3, align 8
  br label %block_.L_4015cc

block_.L_4015b0:                                  ; preds = %block_.L_4015a1
  %764 = add i64 %670, -16
  %765 = add i64 %762, 3
  store i64 %765, i64* %3, align 8
  %766 = inttoptr i64 %764 to i32*
  %767 = load i32, i32* %766, align 4
  %768 = zext i32 %767 to i64
  store i64 %768, i64* %RAX.i216, align 8
  %769 = add i64 %670, -20
  %770 = add i64 %762, 6
  store i64 %770, i64* %3, align 8
  %771 = inttoptr i64 %769 to i32*
  %772 = load i32, i32* %771, align 4
  %773 = add i32 %772, %767
  %774 = zext i32 %773 to i64
  store i64 %774, i64* %RAX.i216, align 8
  %775 = icmp ult i32 %773, %767
  %776 = icmp ult i32 %773, %772
  %777 = or i1 %775, %776
  %778 = zext i1 %777 to i8
  store i8 %778, i8* %31, align 1
  %779 = and i32 %773, 255
  %780 = tail call i32 @llvm.ctpop.i32(i32 %779)
  %781 = trunc i32 %780 to i8
  %782 = and i8 %781, 1
  %783 = xor i8 %782, 1
  store i8 %783, i8* %32, align 1
  %784 = xor i32 %772, %767
  %785 = xor i32 %784, %773
  %786 = lshr i32 %785, 4
  %787 = trunc i32 %786 to i8
  %788 = and i8 %787, 1
  store i8 %788, i8* %36, align 1
  %789 = icmp eq i32 %773, 0
  %790 = zext i1 %789 to i8
  store i8 %790, i8* %33, align 1
  %791 = lshr i32 %773, 31
  %792 = trunc i32 %791 to i8
  store i8 %792, i8* %34, align 1
  %793 = lshr i32 %767, 31
  %794 = lshr i32 %772, 31
  %795 = xor i32 %791, %793
  %796 = xor i32 %791, %794
  %797 = add nuw nsw i32 %795, %796
  %798 = icmp eq i32 %797, 2
  %799 = zext i1 %798 to i8
  store i8 %799, i8* %35, align 1
  %800 = add i64 %762, 9
  store i64 %800, i64* %3, align 8
  store i32 %773, i32* %771, align 4
  %801 = load i64, i64* %RBP.i, align 8
  %802 = add i64 %801, -20
  %803 = load i64, i64* %3, align 8
  %804 = add i64 %803, 4
  store i64 %804, i64* %3, align 8
  %805 = inttoptr i64 %802 to i32*
  %806 = load i32, i32* %805, align 4
  %807 = sext i32 %806 to i64
  store i64 %807, i64* %RCX.i214, align 8
  %808 = shl nsw i64 %807, 2
  %809 = add nsw i64 %808, 8807744
  %810 = add i64 %803, 11
  store i64 %810, i64* %3, align 8
  %811 = inttoptr i64 %809 to i32*
  %812 = load i32, i32* %811, align 4
  %813 = zext i32 %812 to i64
  store i64 %813, i64* %RAX.i216, align 8
  %814 = add i64 %801, -24
  %815 = add i64 %803, 14
  store i64 %815, i64* %3, align 8
  %816 = inttoptr i64 %814 to i32*
  store i32 %812, i32* %816, align 4
  %817 = load i64, i64* %3, align 8
  %818 = add i64 %817, -80
  %819 = add i64 %817, 5
  store i64 %819, i64* %3, align 8
  %.pre104 = load i64, i64* %RBP.i, align 8
  br label %block_.L_401577

block_.L_4015cc.loopexit:                         ; preds = %block_.L_401577
  br label %block_.L_4015cc

block_.L_4015cc:                                  ; preds = %block_.L_4015cc.loopexit, %block_4015ab
  %820 = phi i64 [ %763, %block_4015ab ], [ %684, %block_.L_4015cc.loopexit ]
  %821 = add i64 %670, -28
  %822 = add i64 %820, 8
  store i64 %822, i64* %3, align 8
  %823 = inttoptr i64 %821 to i32*
  %824 = load i32, i32* %823, align 4
  %825 = add i32 %824, 1
  %826 = zext i32 %825 to i64
  store i64 %826, i64* %RAX.i216, align 8
  %827 = icmp eq i32 %824, -1
  %828 = icmp eq i32 %825, 0
  %829 = or i1 %827, %828
  %830 = zext i1 %829 to i8
  store i8 %830, i8* %31, align 1
  %831 = and i32 %825, 255
  %832 = tail call i32 @llvm.ctpop.i32(i32 %831)
  %833 = trunc i32 %832 to i8
  %834 = and i8 %833, 1
  %835 = xor i8 %834, 1
  store i8 %835, i8* %32, align 1
  %836 = xor i32 %825, %824
  %837 = lshr i32 %836, 4
  %838 = trunc i32 %837 to i8
  %839 = and i8 %838, 1
  store i8 %839, i8* %36, align 1
  %840 = zext i1 %828 to i8
  store i8 %840, i8* %33, align 1
  %841 = lshr i32 %825, 31
  %842 = trunc i32 %841 to i8
  store i8 %842, i8* %34, align 1
  %843 = lshr i32 %824, 31
  %844 = xor i32 %841, %843
  %845 = add nuw nsw i32 %844, %841
  %846 = icmp eq i32 %845, 2
  %847 = zext i1 %846 to i8
  store i8 %847, i8* %35, align 1
  %848 = add i64 %820, 14
  store i64 %848, i64* %3, align 8
  store i32 %825, i32* %823, align 4
  %849 = load i64, i64* %3, align 8
  %850 = add i64 %849, -173
  store i64 %850, i64* %3, align 8
  br label %block_.L_40152d

block_.L_4015df:                                  ; preds = %block_.L_40152d
  %851 = add i64 %538, -4
  %852 = add i64 %566, 7
  store i64 %852, i64* %3, align 8
  %853 = inttoptr i64 %851 to i32*
  store i32 0, i32* %853, align 4
  %854 = load i64, i64* %3, align 8
  %855 = add i64 %854, 506
  store i64 %855, i64* %3, align 8
  br label %block_.L_4017e0

block_.L_4015f2:                                  ; preds = %block_.L_4015f2.preheader, %block_.L_4016b6
  %856 = phi i64 [ %1212, %block_.L_4016b6 ], [ %.pre106, %block_.L_4015f2.preheader ]
  %857 = load i64, i64* %RBP.i, align 8
  %858 = add i64 %857, -28
  %859 = add i64 %856, 4
  store i64 %859, i64* %3, align 8
  %860 = inttoptr i64 %858 to i32*
  %861 = load i32, i32* %860, align 4
  %862 = add i32 %861, -4
  %863 = icmp ult i32 %861, 4
  %864 = zext i1 %863 to i8
  store i8 %864, i8* %31, align 1
  %865 = and i32 %862, 255
  %866 = tail call i32 @llvm.ctpop.i32(i32 %865)
  %867 = trunc i32 %866 to i8
  %868 = and i8 %867, 1
  %869 = xor i8 %868, 1
  store i8 %869, i8* %32, align 1
  %870 = xor i32 %862, %861
  %871 = lshr i32 %870, 4
  %872 = trunc i32 %871 to i8
  %873 = and i8 %872, 1
  store i8 %873, i8* %36, align 1
  %874 = icmp eq i32 %862, 0
  %875 = zext i1 %874 to i8
  store i8 %875, i8* %33, align 1
  %876 = lshr i32 %862, 31
  %877 = trunc i32 %876 to i8
  store i8 %877, i8* %34, align 1
  %878 = lshr i32 %861, 31
  %879 = xor i32 %876, %878
  %880 = add nuw nsw i32 %879, %878
  %881 = icmp eq i32 %880, 2
  %882 = zext i1 %881 to i8
  store i8 %882, i8* %35, align 1
  %883 = icmp ne i8 %877, 0
  %884 = xor i1 %883, %881
  %.v130 = select i1 %884, i64 10, i64 215
  %885 = add i64 %856, %.v130
  store i64 %885, i64* %3, align 8
  br i1 %884, label %block_4015fc, label %block_.L_4016c9

block_4015fc:                                     ; preds = %block_.L_4015f2
  %886 = add i64 %885, 4
  store i64 %886, i64* %3, align 8
  %887 = load i32, i32* %860, align 4
  %888 = sext i32 %887 to i64
  store i64 %888, i64* %RAX.i216, align 8
  %889 = shl nsw i64 %888, 2
  %890 = add nsw i64 %889, 4347216
  %891 = add i64 %885, 11
  store i64 %891, i64* %3, align 8
  %892 = inttoptr i64 %890 to i32*
  %893 = load i32, i32* %892, align 4
  %894 = zext i32 %893 to i64
  store i64 %894, i64* %RCX.i214, align 8
  %895 = add i64 %857, -16
  %896 = add i64 %885, 14
  store i64 %896, i64* %3, align 8
  %897 = inttoptr i64 %895 to i32*
  store i32 %893, i32* %897, align 4
  %898 = load i64, i64* %RBP.i, align 8
  %899 = add i64 %898, -8
  %900 = load i64, i64* %3, align 8
  %901 = add i64 %900, 3
  store i64 %901, i64* %3, align 8
  %902 = inttoptr i64 %899 to i32*
  %903 = load i32, i32* %902, align 4
  %904 = zext i32 %903 to i64
  store i64 %904, i64* %RCX.i214, align 8
  %905 = add i64 %898, -16
  %906 = add i64 %900, 6
  store i64 %906, i64* %3, align 8
  %907 = inttoptr i64 %905 to i32*
  %908 = load i32, i32* %907, align 4
  %909 = add i32 %908, %903
  %910 = zext i32 %909 to i64
  store i64 %910, i64* %RCX.i214, align 8
  %911 = icmp ult i32 %909, %903
  %912 = icmp ult i32 %909, %908
  %913 = or i1 %911, %912
  %914 = zext i1 %913 to i8
  store i8 %914, i8* %31, align 1
  %915 = and i32 %909, 255
  %916 = tail call i32 @llvm.ctpop.i32(i32 %915)
  %917 = trunc i32 %916 to i8
  %918 = and i8 %917, 1
  %919 = xor i8 %918, 1
  store i8 %919, i8* %32, align 1
  %920 = xor i32 %908, %903
  %921 = xor i32 %920, %909
  %922 = lshr i32 %921, 4
  %923 = trunc i32 %922 to i8
  %924 = and i8 %923, 1
  store i8 %924, i8* %36, align 1
  %925 = icmp eq i32 %909, 0
  %926 = zext i1 %925 to i8
  store i8 %926, i8* %33, align 1
  %927 = lshr i32 %909, 31
  %928 = trunc i32 %927 to i8
  store i8 %928, i8* %34, align 1
  %929 = lshr i32 %903, 31
  %930 = lshr i32 %908, 31
  %931 = xor i32 %927, %929
  %932 = xor i32 %927, %930
  %933 = add nuw nsw i32 %931, %932
  %934 = icmp eq i32 %933, 2
  %935 = zext i1 %934 to i8
  store i8 %935, i8* %35, align 1
  %936 = add i64 %898, -20
  %937 = add i64 %900, 9
  store i64 %937, i64* %3, align 8
  %938 = inttoptr i64 %936 to i32*
  store i32 %909, i32* %938, align 4
  %939 = load i64, i64* %RBP.i, align 8
  %940 = add i64 %939, -20
  %941 = load i64, i64* %3, align 8
  %942 = add i64 %941, 4
  store i64 %942, i64* %3, align 8
  %943 = inttoptr i64 %940 to i32*
  %944 = load i32, i32* %943, align 4
  %945 = sext i32 %944 to i64
  store i64 %945, i64* %RAX.i216, align 8
  %946 = shl nsw i64 %945, 2
  %947 = add nsw i64 %946, 8807744
  %948 = add i64 %941, 11
  store i64 %948, i64* %3, align 8
  %949 = inttoptr i64 %947 to i32*
  %950 = load i32, i32* %949, align 4
  %951 = zext i32 %950 to i64
  store i64 %951, i64* %RCX.i214, align 8
  %952 = add i64 %939, -24
  %953 = add i64 %941, 14
  store i64 %953, i64* %3, align 8
  %954 = inttoptr i64 %952 to i32*
  store i32 %950, i32* %954, align 4
  %955 = load i64, i64* %RBP.i, align 8
  %956 = add i64 %955, -24
  %957 = load i64, i64* %3, align 8
  %958 = add i64 %957, 4
  store i64 %958, i64* %3, align 8
  %959 = inttoptr i64 %956 to i32*
  %960 = load i32, i32* %959, align 4
  %961 = add i32 %960, -2
  %962 = icmp ult i32 %960, 2
  %963 = zext i1 %962 to i8
  store i8 %963, i8* %31, align 1
  %964 = and i32 %961, 255
  %965 = tail call i32 @llvm.ctpop.i32(i32 %964)
  %966 = trunc i32 %965 to i8
  %967 = and i8 %966, 1
  %968 = xor i8 %967, 1
  store i8 %968, i8* %32, align 1
  %969 = xor i32 %961, %960
  %970 = lshr i32 %969, 4
  %971 = trunc i32 %970 to i8
  %972 = and i8 %971, 1
  store i8 %972, i8* %36, align 1
  %973 = icmp eq i32 %961, 0
  %974 = zext i1 %973 to i8
  store i8 %974, i8* %33, align 1
  %975 = lshr i32 %961, 31
  %976 = trunc i32 %975 to i8
  store i8 %976, i8* %34, align 1
  %977 = lshr i32 %960, 31
  %978 = xor i32 %975, %977
  %979 = add nuw nsw i32 %978, %977
  %980 = icmp eq i32 %979, 2
  %981 = zext i1 %980 to i8
  store i8 %981, i8* %35, align 1
  %.v137 = select i1 %973, i64 10, i64 37
  %982 = add i64 %957, %.v137
  store i64 %982, i64* %3, align 8
  br i1 %973, label %block_40162b, label %block_.L_401646

block_40162b:                                     ; preds = %block_4015fc
  %983 = add i64 %955, -28
  %984 = add i64 %982, 3
  store i64 %984, i64* %3, align 8
  %985 = inttoptr i64 %983 to i32*
  %986 = load i32, i32* %985, align 4
  %987 = and i32 %986, 1
  %988 = zext i32 %987 to i64
  store i64 %988, i64* %RAX.i216, align 8
  store i8 0, i8* %31, align 1
  %989 = tail call i32 @llvm.ctpop.i32(i32 %987)
  %990 = trunc i32 %989 to i8
  %991 = xor i8 %990, 1
  store i8 %991, i8* %32, align 1
  store i8 0, i8* %36, align 1
  %992 = trunc i32 %987 to i8
  %993 = xor i8 %992, 1
  store i8 %993, i8* %33, align 1
  store i8 0, i8* %34, align 1
  store i8 0, i8* %35, align 1
  %994 = icmp eq i8 %993, 0
  %.v143 = select i1 %994, i64 27, i64 15
  %995 = add i64 %982, %.v143
  store i64 %995, i64* %3, align 8
  br i1 %994, label %block_.L_401646, label %block_40163a

block_40163a:                                     ; preds = %block_40162b
  %996 = add i64 %955, -4
  %997 = add i64 %995, 7
  store i64 %997, i64* %3, align 8
  %998 = inttoptr i64 %996 to i32*
  store i32 1, i32* %998, align 4
  %999 = load i64, i64* %3, align 8
  %1000 = add i64 %999, 415
  store i64 %1000, i64* %3, align 8
  br label %block_.L_4017e0

block_.L_401646:                                  ; preds = %block_4015fc, %block_40162b
  %1001 = phi i64 [ %995, %block_40162b ], [ %982, %block_4015fc ]
  %1002 = add i64 %1001, 4
  store i64 %1002, i64* %3, align 8
  %1003 = load i32, i32* %959, align 4
  %1004 = add i32 %1003, -6
  %1005 = icmp ult i32 %1003, 6
  %1006 = zext i1 %1005 to i8
  store i8 %1006, i8* %31, align 1
  %1007 = and i32 %1004, 255
  %1008 = tail call i32 @llvm.ctpop.i32(i32 %1007)
  %1009 = trunc i32 %1008 to i8
  %1010 = and i8 %1009, 1
  %1011 = xor i8 %1010, 1
  store i8 %1011, i8* %32, align 1
  %1012 = xor i32 %1004, %1003
  %1013 = lshr i32 %1012, 4
  %1014 = trunc i32 %1013 to i8
  %1015 = and i8 %1014, 1
  store i8 %1015, i8* %36, align 1
  %1016 = icmp eq i32 %1004, 0
  %1017 = zext i1 %1016 to i8
  store i8 %1017, i8* %33, align 1
  %1018 = lshr i32 %1004, 31
  %1019 = trunc i32 %1018 to i8
  store i8 %1019, i8* %34, align 1
  %1020 = lshr i32 %1003, 31
  %1021 = xor i32 %1018, %1020
  %1022 = add nuw nsw i32 %1021, %1020
  %1023 = icmp eq i32 %1022, 2
  %1024 = zext i1 %1023 to i8
  store i8 %1024, i8* %35, align 1
  %.v138 = select i1 %1016, i64 10, i64 22
  %1025 = add i64 %1001, %.v138
  store i64 %1025, i64* %3, align 8
  br i1 %1016, label %block_401650, label %block_.L_40165c

block_401650:                                     ; preds = %block_.L_401646
  %1026 = add i64 %955, -4
  %1027 = add i64 %1025, 7
  store i64 %1027, i64* %3, align 8
  %1028 = inttoptr i64 %1026 to i32*
  store i32 1, i32* %1028, align 4
  %1029 = load i64, i64* %3, align 8
  %1030 = add i64 %1029, 393
  store i64 %1030, i64* %3, align 8
  br label %block_.L_4017e0

block_.L_40165c:                                  ; preds = %block_.L_401646
  %1031 = add i64 %1025, 5
  br label %block_.L_401661

block_.L_401661:                                  ; preds = %block_.L_40169a, %block_.L_40165c
  %1032 = phi i64 [ %955, %block_.L_40165c ], [ %.pre110, %block_.L_40169a ]
  %storemerge34 = phi i64 [ %1031, %block_.L_40165c ], [ %1180, %block_.L_40169a ]
  %1033 = add i64 %1032, -24
  %1034 = add i64 %storemerge34, 4
  store i64 %1034, i64* %3, align 8
  %1035 = inttoptr i64 %1033 to i32*
  %1036 = load i32, i32* %1035, align 4
  store i8 0, i8* %31, align 1
  %1037 = and i32 %1036, 255
  %1038 = tail call i32 @llvm.ctpop.i32(i32 %1037)
  %1039 = trunc i32 %1038 to i8
  %1040 = and i8 %1039, 1
  %1041 = xor i8 %1040, 1
  store i8 %1041, i8* %32, align 1
  store i8 0, i8* %36, align 1
  %1042 = icmp eq i32 %1036, 0
  %1043 = zext i1 %1042 to i8
  store i8 %1043, i8* %33, align 1
  %1044 = lshr i32 %1036, 31
  %1045 = trunc i32 %1044 to i8
  store i8 %1045, i8* %34, align 1
  store i8 0, i8* %35, align 1
  %.v139 = select i1 %1042, i64 85, i64 10
  %1046 = add i64 %storemerge34, %.v139
  store i64 %1046, i64* %3, align 8
  br i1 %1042, label %block_.L_4016b6.loopexit, label %block_40166b

block_40166b:                                     ; preds = %block_.L_401661
  %1047 = add i64 %1046, 4
  store i64 %1047, i64* %3, align 8
  %1048 = load i32, i32* %1035, align 4
  %1049 = add i32 %1048, -12
  %1050 = icmp ult i32 %1048, 12
  %1051 = zext i1 %1050 to i8
  store i8 %1051, i8* %31, align 1
  %1052 = and i32 %1049, 255
  %1053 = tail call i32 @llvm.ctpop.i32(i32 %1052)
  %1054 = trunc i32 %1053 to i8
  %1055 = and i8 %1054, 1
  %1056 = xor i8 %1055, 1
  store i8 %1056, i8* %32, align 1
  %1057 = xor i32 %1049, %1048
  %1058 = lshr i32 %1057, 4
  %1059 = trunc i32 %1058 to i8
  %1060 = and i8 %1059, 1
  store i8 %1060, i8* %36, align 1
  %1061 = icmp eq i32 %1049, 0
  %1062 = zext i1 %1061 to i8
  store i8 %1062, i8* %33, align 1
  %1063 = lshr i32 %1049, 31
  %1064 = trunc i32 %1063 to i8
  store i8 %1064, i8* %34, align 1
  %1065 = lshr i32 %1048, 31
  %1066 = xor i32 %1063, %1065
  %1067 = add nuw nsw i32 %1066, %1065
  %1068 = icmp eq i32 %1067, 2
  %1069 = zext i1 %1068 to i8
  store i8 %1069, i8* %35, align 1
  %.v140 = select i1 %1061, i64 20, i64 10
  %1070 = add i64 %1046, %.v140
  store i64 %1070, i64* %3, align 8
  br i1 %1061, label %block_.L_40167f, label %block_401675

block_401675:                                     ; preds = %block_40166b
  %1071 = add i64 %1070, 4
  store i64 %1071, i64* %3, align 8
  %1072 = load i32, i32* %1035, align 4
  %1073 = add i32 %1072, -10
  %1074 = icmp ult i32 %1072, 10
  %1075 = zext i1 %1074 to i8
  store i8 %1075, i8* %31, align 1
  %1076 = and i32 %1073, 255
  %1077 = tail call i32 @llvm.ctpop.i32(i32 %1076)
  %1078 = trunc i32 %1077 to i8
  %1079 = and i8 %1078, 1
  %1080 = xor i8 %1079, 1
  store i8 %1080, i8* %32, align 1
  %1081 = xor i32 %1073, %1072
  %1082 = lshr i32 %1081, 4
  %1083 = trunc i32 %1082 to i8
  %1084 = and i8 %1083, 1
  store i8 %1084, i8* %36, align 1
  %1085 = icmp eq i32 %1073, 0
  %1086 = zext i1 %1085 to i8
  store i8 %1086, i8* %33, align 1
  %1087 = lshr i32 %1073, 31
  %1088 = trunc i32 %1087 to i8
  store i8 %1088, i8* %34, align 1
  %1089 = lshr i32 %1072, 31
  %1090 = xor i32 %1087, %1089
  %1091 = add nuw nsw i32 %1090, %1089
  %1092 = icmp eq i32 %1091, 2
  %1093 = zext i1 %1092 to i8
  store i8 %1093, i8* %35, align 1
  %.v141 = select i1 %1085, i64 10, i64 22
  %1094 = add i64 %1070, %.v141
  store i64 %1094, i64* %3, align 8
  br i1 %1085, label %block_.L_40167f, label %block_.L_40168b

block_.L_40167f:                                  ; preds = %block_401675, %block_40166b
  %1095 = phi i64 [ %1094, %block_401675 ], [ %1070, %block_40166b ]
  %1096 = add i64 %1032, -4
  %1097 = add i64 %1095, 7
  store i64 %1097, i64* %3, align 8
  %1098 = inttoptr i64 %1096 to i32*
  store i32 1, i32* %1098, align 4
  %1099 = load i64, i64* %3, align 8
  %1100 = add i64 %1099, 346
  store i64 %1100, i64* %3, align 8
  br label %block_.L_4017e0

block_.L_40168b:                                  ; preds = %block_401675
  %1101 = add i64 %1094, 4
  store i64 %1101, i64* %3, align 8
  %1102 = load i32, i32* %1035, align 4
  %1103 = add i32 %1102, -13
  %1104 = icmp ult i32 %1102, 13
  %1105 = zext i1 %1104 to i8
  store i8 %1105, i8* %31, align 1
  %1106 = and i32 %1103, 255
  %1107 = tail call i32 @llvm.ctpop.i32(i32 %1106)
  %1108 = trunc i32 %1107 to i8
  %1109 = and i8 %1108, 1
  %1110 = xor i8 %1109, 1
  store i8 %1110, i8* %32, align 1
  %1111 = xor i32 %1103, %1102
  %1112 = lshr i32 %1111, 4
  %1113 = trunc i32 %1112 to i8
  %1114 = and i8 %1113, 1
  store i8 %1114, i8* %36, align 1
  %1115 = icmp eq i32 %1103, 0
  %1116 = zext i1 %1115 to i8
  store i8 %1116, i8* %33, align 1
  %1117 = lshr i32 %1103, 31
  %1118 = trunc i32 %1117 to i8
  store i8 %1118, i8* %34, align 1
  %1119 = lshr i32 %1102, 31
  %1120 = xor i32 %1117, %1119
  %1121 = add nuw nsw i32 %1120, %1119
  %1122 = icmp eq i32 %1121, 2
  %1123 = zext i1 %1122 to i8
  store i8 %1123, i8* %35, align 1
  %.v142 = select i1 %1115, i64 15, i64 10
  %1124 = add i64 %1094, %.v142
  store i64 %1124, i64* %3, align 8
  br i1 %1115, label %block_.L_40169a, label %block_401695

block_401695:                                     ; preds = %block_.L_40168b
  %1125 = add i64 %1124, 33
  store i64 %1125, i64* %3, align 8
  br label %block_.L_4016b6

block_.L_40169a:                                  ; preds = %block_.L_40168b
  %1126 = add i64 %1032, -16
  %1127 = add i64 %1124, 3
  store i64 %1127, i64* %3, align 8
  %1128 = inttoptr i64 %1126 to i32*
  %1129 = load i32, i32* %1128, align 4
  %1130 = zext i32 %1129 to i64
  store i64 %1130, i64* %RAX.i216, align 8
  %1131 = add i64 %1032, -20
  %1132 = add i64 %1124, 6
  store i64 %1132, i64* %3, align 8
  %1133 = inttoptr i64 %1131 to i32*
  %1134 = load i32, i32* %1133, align 4
  %1135 = add i32 %1134, %1129
  %1136 = zext i32 %1135 to i64
  store i64 %1136, i64* %RAX.i216, align 8
  %1137 = icmp ult i32 %1135, %1129
  %1138 = icmp ult i32 %1135, %1134
  %1139 = or i1 %1137, %1138
  %1140 = zext i1 %1139 to i8
  store i8 %1140, i8* %31, align 1
  %1141 = and i32 %1135, 255
  %1142 = tail call i32 @llvm.ctpop.i32(i32 %1141)
  %1143 = trunc i32 %1142 to i8
  %1144 = and i8 %1143, 1
  %1145 = xor i8 %1144, 1
  store i8 %1145, i8* %32, align 1
  %1146 = xor i32 %1134, %1129
  %1147 = xor i32 %1146, %1135
  %1148 = lshr i32 %1147, 4
  %1149 = trunc i32 %1148 to i8
  %1150 = and i8 %1149, 1
  store i8 %1150, i8* %36, align 1
  %1151 = icmp eq i32 %1135, 0
  %1152 = zext i1 %1151 to i8
  store i8 %1152, i8* %33, align 1
  %1153 = lshr i32 %1135, 31
  %1154 = trunc i32 %1153 to i8
  store i8 %1154, i8* %34, align 1
  %1155 = lshr i32 %1129, 31
  %1156 = lshr i32 %1134, 31
  %1157 = xor i32 %1153, %1155
  %1158 = xor i32 %1153, %1156
  %1159 = add nuw nsw i32 %1157, %1158
  %1160 = icmp eq i32 %1159, 2
  %1161 = zext i1 %1160 to i8
  store i8 %1161, i8* %35, align 1
  %1162 = add i64 %1124, 9
  store i64 %1162, i64* %3, align 8
  store i32 %1135, i32* %1133, align 4
  %1163 = load i64, i64* %RBP.i, align 8
  %1164 = add i64 %1163, -20
  %1165 = load i64, i64* %3, align 8
  %1166 = add i64 %1165, 4
  store i64 %1166, i64* %3, align 8
  %1167 = inttoptr i64 %1164 to i32*
  %1168 = load i32, i32* %1167, align 4
  %1169 = sext i32 %1168 to i64
  store i64 %1169, i64* %RCX.i214, align 8
  %1170 = shl nsw i64 %1169, 2
  %1171 = add nsw i64 %1170, 8807744
  %1172 = add i64 %1165, 11
  store i64 %1172, i64* %3, align 8
  %1173 = inttoptr i64 %1171 to i32*
  %1174 = load i32, i32* %1173, align 4
  %1175 = zext i32 %1174 to i64
  store i64 %1175, i64* %RAX.i216, align 8
  %1176 = add i64 %1163, -24
  %1177 = add i64 %1165, 14
  store i64 %1177, i64* %3, align 8
  %1178 = inttoptr i64 %1176 to i32*
  store i32 %1174, i32* %1178, align 4
  %1179 = load i64, i64* %3, align 8
  %1180 = add i64 %1179, -80
  %1181 = add i64 %1179, 5
  store i64 %1181, i64* %3, align 8
  %.pre110 = load i64, i64* %RBP.i, align 8
  br label %block_.L_401661

block_.L_4016b6.loopexit:                         ; preds = %block_.L_401661
  br label %block_.L_4016b6

block_.L_4016b6:                                  ; preds = %block_.L_4016b6.loopexit, %block_401695
  %1182 = phi i64 [ %1125, %block_401695 ], [ %1046, %block_.L_4016b6.loopexit ]
  %1183 = add i64 %1032, -28
  %1184 = add i64 %1182, 8
  store i64 %1184, i64* %3, align 8
  %1185 = inttoptr i64 %1183 to i32*
  %1186 = load i32, i32* %1185, align 4
  %1187 = add i32 %1186, 1
  %1188 = zext i32 %1187 to i64
  store i64 %1188, i64* %RAX.i216, align 8
  %1189 = icmp eq i32 %1186, -1
  %1190 = icmp eq i32 %1187, 0
  %1191 = or i1 %1189, %1190
  %1192 = zext i1 %1191 to i8
  store i8 %1192, i8* %31, align 1
  %1193 = and i32 %1187, 255
  %1194 = tail call i32 @llvm.ctpop.i32(i32 %1193)
  %1195 = trunc i32 %1194 to i8
  %1196 = and i8 %1195, 1
  %1197 = xor i8 %1196, 1
  store i8 %1197, i8* %32, align 1
  %1198 = xor i32 %1187, %1186
  %1199 = lshr i32 %1198, 4
  %1200 = trunc i32 %1199 to i8
  %1201 = and i8 %1200, 1
  store i8 %1201, i8* %36, align 1
  %1202 = zext i1 %1190 to i8
  store i8 %1202, i8* %33, align 1
  %1203 = lshr i32 %1187, 31
  %1204 = trunc i32 %1203 to i8
  store i8 %1204, i8* %34, align 1
  %1205 = lshr i32 %1186, 31
  %1206 = xor i32 %1203, %1205
  %1207 = add nuw nsw i32 %1206, %1203
  %1208 = icmp eq i32 %1207, 2
  %1209 = zext i1 %1208 to i8
  store i8 %1209, i8* %35, align 1
  %1210 = add i64 %1182, 14
  store i64 %1210, i64* %3, align 8
  store i32 %1187, i32* %1185, align 4
  %1211 = load i64, i64* %3, align 8
  %1212 = add i64 %1211, -210
  store i64 %1212, i64* %3, align 8
  br label %block_.L_4015f2

block_.L_4016c9:                                  ; preds = %block_.L_4015f2
  %1213 = add i64 %885, 7
  store i64 %1213, i64* %3, align 8
  store i32 0, i32* %860, align 4
  %RCX.i115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %.pre107 = load i64, i64* %3, align 8
  br label %block_.L_4016d0

block_.L_4016d0:                                  ; preds = %block_.L_401705, %block_.L_4016c9
  %1214 = phi i64 [ %1344, %block_.L_401705 ], [ %.pre107, %block_.L_4016c9 ]
  %1215 = load i64, i64* %RBP.i, align 8
  %1216 = add i64 %1215, -28
  %1217 = add i64 %1214, 4
  store i64 %1217, i64* %3, align 8
  %1218 = inttoptr i64 %1216 to i32*
  %1219 = load i32, i32* %1218, align 4
  %1220 = add i32 %1219, -8
  %1221 = icmp ult i32 %1219, 8
  %1222 = zext i1 %1221 to i8
  store i8 %1222, i8* %31, align 1
  %1223 = and i32 %1220, 255
  %1224 = tail call i32 @llvm.ctpop.i32(i32 %1223)
  %1225 = trunc i32 %1224 to i8
  %1226 = and i8 %1225, 1
  %1227 = xor i8 %1226, 1
  store i8 %1227, i8* %32, align 1
  %1228 = xor i32 %1220, %1219
  %1229 = lshr i32 %1228, 4
  %1230 = trunc i32 %1229 to i8
  %1231 = and i8 %1230, 1
  store i8 %1231, i8* %36, align 1
  %1232 = icmp eq i32 %1220, 0
  %1233 = zext i1 %1232 to i8
  store i8 %1233, i8* %33, align 1
  %1234 = lshr i32 %1220, 31
  %1235 = trunc i32 %1234 to i8
  store i8 %1235, i8* %34, align 1
  %1236 = lshr i32 %1219, 31
  %1237 = xor i32 %1234, %1236
  %1238 = add nuw nsw i32 %1237, %1236
  %1239 = icmp eq i32 %1238, 2
  %1240 = zext i1 %1239 to i8
  store i8 %1240, i8* %35, align 1
  %1241 = icmp ne i8 %1235, 0
  %1242 = xor i1 %1241, %1239
  %.v115 = select i1 %1242, i64 10, i64 72
  %1243 = add i64 %1214, %.v115
  store i64 %1243, i64* %3, align 8
  br i1 %1242, label %block_4016da, label %block_.L_401718

block_4016da:                                     ; preds = %block_.L_4016d0
  %1244 = add i64 %1215, -8
  %1245 = add i64 %1243, 3
  store i64 %1245, i64* %3, align 8
  %1246 = inttoptr i64 %1244 to i32*
  %1247 = load i32, i32* %1246, align 4
  %1248 = zext i32 %1247 to i64
  store i64 %1248, i64* %RAX.i216, align 8
  %1249 = add i64 %1243, 7
  store i64 %1249, i64* %3, align 8
  %1250 = load i32, i32* %1218, align 4
  %1251 = sext i32 %1250 to i64
  store i64 %1251, i64* %RCX.i115, align 8
  %1252 = shl nsw i64 %1251, 2
  %1253 = add nsw i64 %1252, 4347232
  %1254 = add i64 %1243, 14
  store i64 %1254, i64* %3, align 8
  %1255 = inttoptr i64 %1253 to i32*
  %1256 = load i32, i32* %1255, align 4
  %1257 = add i32 %1256, %1247
  %1258 = zext i32 %1257 to i64
  store i64 %1258, i64* %RAX.i216, align 8
  %1259 = icmp ult i32 %1257, %1247
  %1260 = icmp ult i32 %1257, %1256
  %1261 = or i1 %1259, %1260
  %1262 = zext i1 %1261 to i8
  store i8 %1262, i8* %31, align 1
  %1263 = and i32 %1257, 255
  %1264 = tail call i32 @llvm.ctpop.i32(i32 %1263)
  %1265 = trunc i32 %1264 to i8
  %1266 = and i8 %1265, 1
  %1267 = xor i8 %1266, 1
  store i8 %1267, i8* %32, align 1
  %1268 = xor i32 %1256, %1247
  %1269 = xor i32 %1268, %1257
  %1270 = lshr i32 %1269, 4
  %1271 = trunc i32 %1270 to i8
  %1272 = and i8 %1271, 1
  store i8 %1272, i8* %36, align 1
  %1273 = icmp eq i32 %1257, 0
  %1274 = zext i1 %1273 to i8
  store i8 %1274, i8* %33, align 1
  %1275 = lshr i32 %1257, 31
  %1276 = trunc i32 %1275 to i8
  store i8 %1276, i8* %34, align 1
  %1277 = lshr i32 %1247, 31
  %1278 = lshr i32 %1256, 31
  %1279 = xor i32 %1275, %1277
  %1280 = xor i32 %1275, %1278
  %1281 = add nuw nsw i32 %1279, %1280
  %1282 = icmp eq i32 %1281, 2
  %1283 = zext i1 %1282 to i8
  store i8 %1283, i8* %35, align 1
  %1284 = sext i32 %1257 to i64
  store i64 %1284, i64* %RCX.i115, align 8
  %1285 = shl nsw i64 %1284, 2
  %1286 = add nsw i64 %1285, 8807744
  %1287 = add i64 %1243, 25
  store i64 %1287, i64* %3, align 8
  %1288 = inttoptr i64 %1286 to i32*
  %1289 = load i32, i32* %1288, align 4
  %1290 = add i32 %1289, -4
  %1291 = icmp ult i32 %1289, 4
  %1292 = zext i1 %1291 to i8
  store i8 %1292, i8* %31, align 1
  %1293 = and i32 %1290, 255
  %1294 = tail call i32 @llvm.ctpop.i32(i32 %1293)
  %1295 = trunc i32 %1294 to i8
  %1296 = and i8 %1295, 1
  %1297 = xor i8 %1296, 1
  store i8 %1297, i8* %32, align 1
  %1298 = xor i32 %1290, %1289
  %1299 = lshr i32 %1298, 4
  %1300 = trunc i32 %1299 to i8
  %1301 = and i8 %1300, 1
  store i8 %1301, i8* %36, align 1
  %1302 = icmp eq i32 %1290, 0
  %1303 = zext i1 %1302 to i8
  store i8 %1303, i8* %33, align 1
  %1304 = lshr i32 %1290, 31
  %1305 = trunc i32 %1304 to i8
  store i8 %1305, i8* %34, align 1
  %1306 = lshr i32 %1289, 31
  %1307 = xor i32 %1304, %1306
  %1308 = add nuw nsw i32 %1307, %1306
  %1309 = icmp eq i32 %1308, 2
  %1310 = zext i1 %1309 to i8
  store i8 %1310, i8* %35, align 1
  %.v114 = select i1 %1302, i64 31, i64 43
  %1311 = add i64 %1243, %.v114
  store i64 %1311, i64* %3, align 8
  br i1 %1302, label %block_4016f9, label %block_.L_401705

block_4016f9:                                     ; preds = %block_4016da
  %1312 = add i64 %1215, -4
  %1313 = add i64 %1311, 7
  store i64 %1313, i64* %3, align 8
  %1314 = inttoptr i64 %1312 to i32*
  store i32 1, i32* %1314, align 4
  %1315 = load i64, i64* %3, align 8
  %1316 = add i64 %1315, 224
  store i64 %1316, i64* %3, align 8
  br label %block_.L_4017e0

block_.L_401705:                                  ; preds = %block_4016da
  %1317 = add i64 %1311, 8
  store i64 %1317, i64* %3, align 8
  %1318 = load i32, i32* %1218, align 4
  %1319 = add i32 %1318, 1
  %1320 = zext i32 %1319 to i64
  store i64 %1320, i64* %RAX.i216, align 8
  %1321 = icmp eq i32 %1318, -1
  %1322 = icmp eq i32 %1319, 0
  %1323 = or i1 %1321, %1322
  %1324 = zext i1 %1323 to i8
  store i8 %1324, i8* %31, align 1
  %1325 = and i32 %1319, 255
  %1326 = tail call i32 @llvm.ctpop.i32(i32 %1325)
  %1327 = trunc i32 %1326 to i8
  %1328 = and i8 %1327, 1
  %1329 = xor i8 %1328, 1
  store i8 %1329, i8* %32, align 1
  %1330 = xor i32 %1319, %1318
  %1331 = lshr i32 %1330, 4
  %1332 = trunc i32 %1331 to i8
  %1333 = and i8 %1332, 1
  store i8 %1333, i8* %36, align 1
  %1334 = zext i1 %1322 to i8
  store i8 %1334, i8* %33, align 1
  %1335 = lshr i32 %1319, 31
  %1336 = trunc i32 %1335 to i8
  store i8 %1336, i8* %34, align 1
  %1337 = lshr i32 %1318, 31
  %1338 = xor i32 %1335, %1337
  %1339 = add nuw nsw i32 %1338, %1335
  %1340 = icmp eq i32 %1339, 2
  %1341 = zext i1 %1340 to i8
  store i8 %1341, i8* %35, align 1
  %1342 = add i64 %1311, 14
  store i64 %1342, i64* %3, align 8
  store i32 %1319, i32* %1218, align 4
  %1343 = load i64, i64* %3, align 8
  %1344 = add i64 %1343, -67
  store i64 %1344, i64* %3, align 8
  br label %block_.L_4016d0

block_.L_401718:                                  ; preds = %block_.L_4016d0
  %1345 = add i64 %1243, 7
  store i64 %1345, i64* %3, align 8
  store i32 0, i32* %1218, align 4
  %.pre108 = load i64, i64* %3, align 8
  br label %block_.L_40171f

block_.L_40171f:                                  ; preds = %block_.L_4017c6, %block_.L_401718
  %1346 = phi i64 [ %1665, %block_.L_4017c6 ], [ %.pre108, %block_.L_401718 ]
  %1347 = load i64, i64* %RBP.i, align 8
  %1348 = add i64 %1347, -28
  %1349 = add i64 %1346, 4
  store i64 %1349, i64* %3, align 8
  %1350 = inttoptr i64 %1348 to i32*
  %1351 = load i32, i32* %1350, align 4
  %1352 = add i32 %1351, -4
  %1353 = icmp ult i32 %1351, 4
  %1354 = zext i1 %1353 to i8
  store i8 %1354, i8* %31, align 1
  %1355 = and i32 %1352, 255
  %1356 = tail call i32 @llvm.ctpop.i32(i32 %1355)
  %1357 = trunc i32 %1356 to i8
  %1358 = and i8 %1357, 1
  %1359 = xor i8 %1358, 1
  store i8 %1359, i8* %32, align 1
  %1360 = xor i32 %1352, %1351
  %1361 = lshr i32 %1360, 4
  %1362 = trunc i32 %1361 to i8
  %1363 = and i8 %1362, 1
  store i8 %1363, i8* %36, align 1
  %1364 = icmp eq i32 %1352, 0
  %1365 = zext i1 %1364 to i8
  store i8 %1365, i8* %33, align 1
  %1366 = lshr i32 %1352, 31
  %1367 = trunc i32 %1366 to i8
  store i8 %1367, i8* %34, align 1
  %1368 = lshr i32 %1351, 31
  %1369 = xor i32 %1366, %1368
  %1370 = add nuw nsw i32 %1369, %1368
  %1371 = icmp eq i32 %1370, 2
  %1372 = zext i1 %1371 to i8
  store i8 %1372, i8* %35, align 1
  %1373 = icmp ne i8 %1367, 0
  %1374 = xor i1 %1373, %1371
  %.v131 = select i1 %1374, i64 10, i64 186
  %1375 = add i64 %1346, %.v131
  store i64 %1375, i64* %3, align 8
  br i1 %1374, label %block_401729, label %block_.L_4017d9

block_401729:                                     ; preds = %block_.L_40171f
  %1376 = add i64 %1375, 4
  store i64 %1376, i64* %3, align 8
  %1377 = load i32, i32* %1350, align 4
  %1378 = sext i32 %1377 to i64
  store i64 %1378, i64* %RAX.i216, align 8
  %1379 = shl nsw i64 %1378, 2
  %1380 = add nsw i64 %1379, 4347264
  %1381 = add i64 %1375, 11
  store i64 %1381, i64* %3, align 8
  %1382 = inttoptr i64 %1380 to i32*
  %1383 = load i32, i32* %1382, align 4
  %1384 = zext i32 %1383 to i64
  store i64 %1384, i64* %RCX.i214, align 8
  %1385 = add i64 %1347, -16
  %1386 = add i64 %1375, 14
  store i64 %1386, i64* %3, align 8
  %1387 = inttoptr i64 %1385 to i32*
  store i32 %1383, i32* %1387, align 4
  %1388 = load i64, i64* %RBP.i, align 8
  %1389 = add i64 %1388, -8
  %1390 = load i64, i64* %3, align 8
  %1391 = add i64 %1390, 3
  store i64 %1391, i64* %3, align 8
  %1392 = inttoptr i64 %1389 to i32*
  %1393 = load i32, i32* %1392, align 4
  %1394 = zext i32 %1393 to i64
  store i64 %1394, i64* %RCX.i214, align 8
  %1395 = add i64 %1388, -28
  %1396 = add i64 %1390, 7
  store i64 %1396, i64* %3, align 8
  %1397 = inttoptr i64 %1395 to i32*
  %1398 = load i32, i32* %1397, align 4
  %1399 = sext i32 %1398 to i64
  store i64 %1399, i64* %RAX.i216, align 8
  %1400 = shl nsw i64 %1399, 2
  %1401 = add nsw i64 %1400, 4347264
  %1402 = add i64 %1390, 14
  store i64 %1402, i64* %3, align 8
  %1403 = inttoptr i64 %1401 to i32*
  %1404 = load i32, i32* %1403, align 4
  %1405 = add i32 %1404, %1393
  %1406 = zext i32 %1405 to i64
  store i64 %1406, i64* %RCX.i214, align 8
  %1407 = icmp ult i32 %1405, %1393
  %1408 = icmp ult i32 %1405, %1404
  %1409 = or i1 %1407, %1408
  %1410 = zext i1 %1409 to i8
  store i8 %1410, i8* %31, align 1
  %1411 = and i32 %1405, 255
  %1412 = tail call i32 @llvm.ctpop.i32(i32 %1411)
  %1413 = trunc i32 %1412 to i8
  %1414 = and i8 %1413, 1
  %1415 = xor i8 %1414, 1
  store i8 %1415, i8* %32, align 1
  %1416 = xor i32 %1404, %1393
  %1417 = xor i32 %1416, %1405
  %1418 = lshr i32 %1417, 4
  %1419 = trunc i32 %1418 to i8
  %1420 = and i8 %1419, 1
  store i8 %1420, i8* %36, align 1
  %1421 = icmp eq i32 %1405, 0
  %1422 = zext i1 %1421 to i8
  store i8 %1422, i8* %33, align 1
  %1423 = lshr i32 %1405, 31
  %1424 = trunc i32 %1423 to i8
  store i8 %1424, i8* %34, align 1
  %1425 = lshr i32 %1393, 31
  %1426 = lshr i32 %1404, 31
  %1427 = xor i32 %1423, %1425
  %1428 = xor i32 %1423, %1426
  %1429 = add nuw nsw i32 %1427, %1428
  %1430 = icmp eq i32 %1429, 2
  %1431 = zext i1 %1430 to i8
  store i8 %1431, i8* %35, align 1
  %1432 = add i64 %1388, -20
  %1433 = add i64 %1390, 17
  store i64 %1433, i64* %3, align 8
  %1434 = inttoptr i64 %1432 to i32*
  store i32 %1405, i32* %1434, align 4
  %1435 = load i64, i64* %RBP.i, align 8
  %1436 = add i64 %1435, -20
  %1437 = load i64, i64* %3, align 8
  %1438 = add i64 %1437, 4
  store i64 %1438, i64* %3, align 8
  %1439 = inttoptr i64 %1436 to i32*
  %1440 = load i32, i32* %1439, align 4
  %1441 = sext i32 %1440 to i64
  store i64 %1441, i64* %RAX.i216, align 8
  %1442 = shl nsw i64 %1441, 2
  %1443 = add nsw i64 %1442, 8807744
  %1444 = add i64 %1437, 11
  store i64 %1444, i64* %3, align 8
  %1445 = inttoptr i64 %1443 to i32*
  %1446 = load i32, i32* %1445, align 4
  %1447 = zext i32 %1446 to i64
  store i64 %1447, i64* %RCX.i214, align 8
  %1448 = add i64 %1435, -24
  %1449 = add i64 %1437, 14
  store i64 %1449, i64* %3, align 8
  %1450 = inttoptr i64 %1448 to i32*
  store i32 %1446, i32* %1450, align 4
  %1451 = load i64, i64* %RBP.i, align 8
  %1452 = add i64 %1451, -24
  %1453 = load i64, i64* %3, align 8
  %1454 = add i64 %1453, 4
  store i64 %1454, i64* %3, align 8
  %1455 = inttoptr i64 %1452 to i32*
  %1456 = load i32, i32* %1455, align 4
  %1457 = add i32 %1456, -6
  %1458 = icmp ult i32 %1456, 6
  %1459 = zext i1 %1458 to i8
  store i8 %1459, i8* %31, align 1
  %1460 = and i32 %1457, 255
  %1461 = tail call i32 @llvm.ctpop.i32(i32 %1460)
  %1462 = trunc i32 %1461 to i8
  %1463 = and i8 %1462, 1
  %1464 = xor i8 %1463, 1
  store i8 %1464, i8* %32, align 1
  %1465 = xor i32 %1457, %1456
  %1466 = lshr i32 %1465, 4
  %1467 = trunc i32 %1466 to i8
  %1468 = and i8 %1467, 1
  store i8 %1468, i8* %36, align 1
  %1469 = icmp eq i32 %1457, 0
  %1470 = zext i1 %1469 to i8
  store i8 %1470, i8* %33, align 1
  %1471 = lshr i32 %1457, 31
  %1472 = trunc i32 %1471 to i8
  store i8 %1472, i8* %34, align 1
  %1473 = lshr i32 %1456, 31
  %1474 = xor i32 %1471, %1473
  %1475 = add nuw nsw i32 %1474, %1473
  %1476 = icmp eq i32 %1475, 2
  %1477 = zext i1 %1476 to i8
  store i8 %1477, i8* %35, align 1
  %.v132 = select i1 %1469, i64 10, i64 22
  %1478 = add i64 %1453, %.v132
  store i64 %1478, i64* %3, align 8
  br i1 %1469, label %block_401760, label %block_.L_40176c

block_401760:                                     ; preds = %block_401729
  %1479 = add i64 %1451, -4
  %1480 = add i64 %1478, 7
  store i64 %1480, i64* %3, align 8
  %1481 = inttoptr i64 %1479 to i32*
  store i32 1, i32* %1481, align 4
  %1482 = load i64, i64* %3, align 8
  %1483 = add i64 %1482, 121
  store i64 %1483, i64* %3, align 8
  br label %block_.L_4017e0

block_.L_40176c:                                  ; preds = %block_401729
  %1484 = add i64 %1478, 5
  br label %block_.L_401771

block_.L_401771:                                  ; preds = %block_.L_4017aa, %block_.L_40176c
  %1485 = phi i64 [ %1451, %block_.L_40176c ], [ %.pre109, %block_.L_4017aa ]
  %storemerge35 = phi i64 [ %1484, %block_.L_40176c ], [ %1633, %block_.L_4017aa ]
  %1486 = add i64 %1485, -24
  %1487 = add i64 %storemerge35, 4
  store i64 %1487, i64* %3, align 8
  %1488 = inttoptr i64 %1486 to i32*
  %1489 = load i32, i32* %1488, align 4
  store i8 0, i8* %31, align 1
  %1490 = and i32 %1489, 255
  %1491 = tail call i32 @llvm.ctpop.i32(i32 %1490)
  %1492 = trunc i32 %1491 to i8
  %1493 = and i8 %1492, 1
  %1494 = xor i8 %1493, 1
  store i8 %1494, i8* %32, align 1
  store i8 0, i8* %36, align 1
  %1495 = icmp eq i32 %1489, 0
  %1496 = zext i1 %1495 to i8
  store i8 %1496, i8* %33, align 1
  %1497 = lshr i32 %1489, 31
  %1498 = trunc i32 %1497 to i8
  store i8 %1498, i8* %34, align 1
  store i8 0, i8* %35, align 1
  %.v133 = select i1 %1495, i64 85, i64 10
  %1499 = add i64 %storemerge35, %.v133
  store i64 %1499, i64* %3, align 8
  br i1 %1495, label %block_.L_4017c6.loopexit, label %block_40177b

block_40177b:                                     ; preds = %block_.L_401771
  %1500 = add i64 %1499, 4
  store i64 %1500, i64* %3, align 8
  %1501 = load i32, i32* %1488, align 4
  %1502 = add i32 %1501, -8
  %1503 = icmp ult i32 %1501, 8
  %1504 = zext i1 %1503 to i8
  store i8 %1504, i8* %31, align 1
  %1505 = and i32 %1502, 255
  %1506 = tail call i32 @llvm.ctpop.i32(i32 %1505)
  %1507 = trunc i32 %1506 to i8
  %1508 = and i8 %1507, 1
  %1509 = xor i8 %1508, 1
  store i8 %1509, i8* %32, align 1
  %1510 = xor i32 %1502, %1501
  %1511 = lshr i32 %1510, 4
  %1512 = trunc i32 %1511 to i8
  %1513 = and i8 %1512, 1
  store i8 %1513, i8* %36, align 1
  %1514 = icmp eq i32 %1502, 0
  %1515 = zext i1 %1514 to i8
  store i8 %1515, i8* %33, align 1
  %1516 = lshr i32 %1502, 31
  %1517 = trunc i32 %1516 to i8
  store i8 %1517, i8* %34, align 1
  %1518 = lshr i32 %1501, 31
  %1519 = xor i32 %1516, %1518
  %1520 = add nuw nsw i32 %1519, %1518
  %1521 = icmp eq i32 %1520, 2
  %1522 = zext i1 %1521 to i8
  store i8 %1522, i8* %35, align 1
  %.v134 = select i1 %1514, i64 20, i64 10
  %1523 = add i64 %1499, %.v134
  store i64 %1523, i64* %3, align 8
  br i1 %1514, label %block_.L_40178f, label %block_401785

block_401785:                                     ; preds = %block_40177b
  %1524 = add i64 %1523, 4
  store i64 %1524, i64* %3, align 8
  %1525 = load i32, i32* %1488, align 4
  %1526 = add i32 %1525, -10
  %1527 = icmp ult i32 %1525, 10
  %1528 = zext i1 %1527 to i8
  store i8 %1528, i8* %31, align 1
  %1529 = and i32 %1526, 255
  %1530 = tail call i32 @llvm.ctpop.i32(i32 %1529)
  %1531 = trunc i32 %1530 to i8
  %1532 = and i8 %1531, 1
  %1533 = xor i8 %1532, 1
  store i8 %1533, i8* %32, align 1
  %1534 = xor i32 %1526, %1525
  %1535 = lshr i32 %1534, 4
  %1536 = trunc i32 %1535 to i8
  %1537 = and i8 %1536, 1
  store i8 %1537, i8* %36, align 1
  %1538 = icmp eq i32 %1526, 0
  %1539 = zext i1 %1538 to i8
  store i8 %1539, i8* %33, align 1
  %1540 = lshr i32 %1526, 31
  %1541 = trunc i32 %1540 to i8
  store i8 %1541, i8* %34, align 1
  %1542 = lshr i32 %1525, 31
  %1543 = xor i32 %1540, %1542
  %1544 = add nuw nsw i32 %1543, %1542
  %1545 = icmp eq i32 %1544, 2
  %1546 = zext i1 %1545 to i8
  store i8 %1546, i8* %35, align 1
  %.v135 = select i1 %1538, i64 10, i64 22
  %1547 = add i64 %1523, %.v135
  store i64 %1547, i64* %3, align 8
  br i1 %1538, label %block_.L_40178f, label %block_.L_40179b

block_.L_40178f:                                  ; preds = %block_401785, %block_40177b
  %1548 = phi i64 [ %1547, %block_401785 ], [ %1523, %block_40177b ]
  %1549 = add i64 %1485, -4
  %1550 = add i64 %1548, 7
  store i64 %1550, i64* %3, align 8
  %1551 = inttoptr i64 %1549 to i32*
  store i32 1, i32* %1551, align 4
  %1552 = load i64, i64* %3, align 8
  %1553 = add i64 %1552, 74
  store i64 %1553, i64* %3, align 8
  br label %block_.L_4017e0

block_.L_40179b:                                  ; preds = %block_401785
  %1554 = add i64 %1547, 4
  store i64 %1554, i64* %3, align 8
  %1555 = load i32, i32* %1488, align 4
  %1556 = add i32 %1555, -13
  %1557 = icmp ult i32 %1555, 13
  %1558 = zext i1 %1557 to i8
  store i8 %1558, i8* %31, align 1
  %1559 = and i32 %1556, 255
  %1560 = tail call i32 @llvm.ctpop.i32(i32 %1559)
  %1561 = trunc i32 %1560 to i8
  %1562 = and i8 %1561, 1
  %1563 = xor i8 %1562, 1
  store i8 %1563, i8* %32, align 1
  %1564 = xor i32 %1556, %1555
  %1565 = lshr i32 %1564, 4
  %1566 = trunc i32 %1565 to i8
  %1567 = and i8 %1566, 1
  store i8 %1567, i8* %36, align 1
  %1568 = icmp eq i32 %1556, 0
  %1569 = zext i1 %1568 to i8
  store i8 %1569, i8* %33, align 1
  %1570 = lshr i32 %1556, 31
  %1571 = trunc i32 %1570 to i8
  store i8 %1571, i8* %34, align 1
  %1572 = lshr i32 %1555, 31
  %1573 = xor i32 %1570, %1572
  %1574 = add nuw nsw i32 %1573, %1572
  %1575 = icmp eq i32 %1574, 2
  %1576 = zext i1 %1575 to i8
  store i8 %1576, i8* %35, align 1
  %.v136 = select i1 %1568, i64 15, i64 10
  %1577 = add i64 %1547, %.v136
  store i64 %1577, i64* %3, align 8
  br i1 %1568, label %block_.L_4017aa, label %block_4017a5

block_4017a5:                                     ; preds = %block_.L_40179b
  %1578 = add i64 %1577, 33
  store i64 %1578, i64* %3, align 8
  br label %block_.L_4017c6

block_.L_4017aa:                                  ; preds = %block_.L_40179b
  %1579 = add i64 %1485, -16
  %1580 = add i64 %1577, 3
  store i64 %1580, i64* %3, align 8
  %1581 = inttoptr i64 %1579 to i32*
  %1582 = load i32, i32* %1581, align 4
  %1583 = zext i32 %1582 to i64
  store i64 %1583, i64* %RAX.i216, align 8
  %1584 = add i64 %1485, -20
  %1585 = add i64 %1577, 6
  store i64 %1585, i64* %3, align 8
  %1586 = inttoptr i64 %1584 to i32*
  %1587 = load i32, i32* %1586, align 4
  %1588 = add i32 %1587, %1582
  %1589 = zext i32 %1588 to i64
  store i64 %1589, i64* %RAX.i216, align 8
  %1590 = icmp ult i32 %1588, %1582
  %1591 = icmp ult i32 %1588, %1587
  %1592 = or i1 %1590, %1591
  %1593 = zext i1 %1592 to i8
  store i8 %1593, i8* %31, align 1
  %1594 = and i32 %1588, 255
  %1595 = tail call i32 @llvm.ctpop.i32(i32 %1594)
  %1596 = trunc i32 %1595 to i8
  %1597 = and i8 %1596, 1
  %1598 = xor i8 %1597, 1
  store i8 %1598, i8* %32, align 1
  %1599 = xor i32 %1587, %1582
  %1600 = xor i32 %1599, %1588
  %1601 = lshr i32 %1600, 4
  %1602 = trunc i32 %1601 to i8
  %1603 = and i8 %1602, 1
  store i8 %1603, i8* %36, align 1
  %1604 = icmp eq i32 %1588, 0
  %1605 = zext i1 %1604 to i8
  store i8 %1605, i8* %33, align 1
  %1606 = lshr i32 %1588, 31
  %1607 = trunc i32 %1606 to i8
  store i8 %1607, i8* %34, align 1
  %1608 = lshr i32 %1582, 31
  %1609 = lshr i32 %1587, 31
  %1610 = xor i32 %1606, %1608
  %1611 = xor i32 %1606, %1609
  %1612 = add nuw nsw i32 %1610, %1611
  %1613 = icmp eq i32 %1612, 2
  %1614 = zext i1 %1613 to i8
  store i8 %1614, i8* %35, align 1
  %1615 = add i64 %1577, 9
  store i64 %1615, i64* %3, align 8
  store i32 %1588, i32* %1586, align 4
  %1616 = load i64, i64* %RBP.i, align 8
  %1617 = add i64 %1616, -20
  %1618 = load i64, i64* %3, align 8
  %1619 = add i64 %1618, 4
  store i64 %1619, i64* %3, align 8
  %1620 = inttoptr i64 %1617 to i32*
  %1621 = load i32, i32* %1620, align 4
  %1622 = sext i32 %1621 to i64
  store i64 %1622, i64* %RCX.i214, align 8
  %1623 = shl nsw i64 %1622, 2
  %1624 = add nsw i64 %1623, 8807744
  %1625 = add i64 %1618, 11
  store i64 %1625, i64* %3, align 8
  %1626 = inttoptr i64 %1624 to i32*
  %1627 = load i32, i32* %1626, align 4
  %1628 = zext i32 %1627 to i64
  store i64 %1628, i64* %RAX.i216, align 8
  %1629 = add i64 %1616, -24
  %1630 = add i64 %1618, 14
  store i64 %1630, i64* %3, align 8
  %1631 = inttoptr i64 %1629 to i32*
  store i32 %1627, i32* %1631, align 4
  %1632 = load i64, i64* %3, align 8
  %1633 = add i64 %1632, -80
  %1634 = add i64 %1632, 5
  store i64 %1634, i64* %3, align 8
  %.pre109 = load i64, i64* %RBP.i, align 8
  br label %block_.L_401771

block_.L_4017c6.loopexit:                         ; preds = %block_.L_401771
  br label %block_.L_4017c6

block_.L_4017c6:                                  ; preds = %block_.L_4017c6.loopexit, %block_4017a5
  %1635 = phi i64 [ %1578, %block_4017a5 ], [ %1499, %block_.L_4017c6.loopexit ]
  %1636 = add i64 %1485, -28
  %1637 = add i64 %1635, 8
  store i64 %1637, i64* %3, align 8
  %1638 = inttoptr i64 %1636 to i32*
  %1639 = load i32, i32* %1638, align 4
  %1640 = add i32 %1639, 1
  %1641 = zext i32 %1640 to i64
  store i64 %1641, i64* %RAX.i216, align 8
  %1642 = icmp eq i32 %1639, -1
  %1643 = icmp eq i32 %1640, 0
  %1644 = or i1 %1642, %1643
  %1645 = zext i1 %1644 to i8
  store i8 %1645, i8* %31, align 1
  %1646 = and i32 %1640, 255
  %1647 = tail call i32 @llvm.ctpop.i32(i32 %1646)
  %1648 = trunc i32 %1647 to i8
  %1649 = and i8 %1648, 1
  %1650 = xor i8 %1649, 1
  store i8 %1650, i8* %32, align 1
  %1651 = xor i32 %1640, %1639
  %1652 = lshr i32 %1651, 4
  %1653 = trunc i32 %1652 to i8
  %1654 = and i8 %1653, 1
  store i8 %1654, i8* %36, align 1
  %1655 = zext i1 %1643 to i8
  store i8 %1655, i8* %33, align 1
  %1656 = lshr i32 %1640, 31
  %1657 = trunc i32 %1656 to i8
  store i8 %1657, i8* %34, align 1
  %1658 = lshr i32 %1639, 31
  %1659 = xor i32 %1656, %1658
  %1660 = add nuw nsw i32 %1659, %1656
  %1661 = icmp eq i32 %1660, 2
  %1662 = zext i1 %1661 to i8
  store i8 %1662, i8* %35, align 1
  %1663 = add i64 %1635, 14
  store i64 %1663, i64* %3, align 8
  store i32 %1640, i32* %1638, align 4
  %1664 = load i64, i64* %3, align 8
  %1665 = add i64 %1664, -181
  store i64 %1665, i64* %3, align 8
  br label %block_.L_40171f

block_.L_4017d9:                                  ; preds = %block_.L_40171f
  %1666 = add i64 %1347, -4
  %1667 = add i64 %1375, 7
  store i64 %1667, i64* %3, align 8
  %1668 = inttoptr i64 %1666 to i32*
  store i32 0, i32* %1668, align 4
  %.pre111 = load i64, i64* %3, align 8
  br label %block_.L_4017e0

block_.L_4017e0:                                  ; preds = %block_.L_4017d9, %block_.L_40178f, %block_401760, %block_4016f9, %block_.L_40167f, %block_401650, %block_40163a, %block_.L_4015df, %block_.L_401595, %block_401566, %block_401507, %block_.L_40148d, %block_40145e, %block_401448
  %1669 = phi i64 [ %.pre111, %block_.L_4017d9 ], [ %1553, %block_.L_40178f ], [ %1483, %block_401760 ], [ %1316, %block_4016f9 ], [ %1100, %block_.L_40167f ], [ %1030, %block_401650 ], [ %1000, %block_40163a ], [ %855, %block_.L_4015df ], [ %738, %block_.L_401595 ], [ %668, %block_401566 ], [ %507, %block_401507 ], [ %291, %block_.L_40148d ], [ %221, %block_40145e ], [ %191, %block_401448 ]
  %RAX.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %1670 = load i64, i64* %RBP.i, align 8
  %1671 = add i64 %1670, -4
  %1672 = add i64 %1669, 3
  store i64 %1672, i64* %3, align 8
  %1673 = inttoptr i64 %1671 to i32*
  %1674 = load i32, i32* %1673, align 4
  %1675 = zext i32 %1674 to i64
  store i64 %1675, i64* %RAX.i, align 8
  %1676 = add i64 %1669, 4
  store i64 %1676, i64* %3, align 8
  %1677 = load i64, i64* %6, align 8
  %1678 = add i64 %1677, 8
  %1679 = inttoptr i64 %1677 to i64*
  %1680 = load i64, i64* %1679, align 8
  store i64 %1680, i64* %RBP.i, align 8
  store i64 %1678, i64* %6, align 8
  %1681 = add i64 %1669, 5
  store i64 %1681, i64* %3, align 8
  %1682 = inttoptr i64 %1678 to i64*
  %1683 = load i64, i64* %1682, align 8
  store i64 %1683, i64* %3, align 8
  %1684 = add i64 %1677, 16
  store i64 %1684, i64* %6, align 8
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
define %struct.Memory* @routine_movl__edi__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movl_MINUS0xc__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
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
define %struct.Memory* @routine_andl__0x1___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 1
  %7 = trunc i64 %6 to i32
  store i64 %6, i64* %RSI, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = tail call i32 @llvm.ctpop.i32(i32 %7)
  %10 = trunc i32 %9 to i8
  %11 = xor i8 %10, 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %11, i8* %12, align 1
  %13 = trunc i64 %6 to i8
  %14 = xor i8 %13, 1
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ESI, align 4
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
define %struct.Memory* @routine_je_.L_4015eb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x4__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jge_.L_4014d7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
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
define %struct.Memory* @routine_movl_0x425550___rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 4347216
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RCX, align 8
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
define %struct.Memory* @routine_movl_MINUS0x8__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
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
define %struct.Memory* @routine_addl_MINUS0x10__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16
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
define %struct.Memory* @routine_movslq_MINUS0x14__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
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
define %struct.Memory* @routine_movl_0x866540___rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 8807744
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jne_.L_401454(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_andl__0x1___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 1
  %7 = trunc i64 %6 to i32
  store i64 %6, i64* %RAX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = tail call i32 @llvm.ctpop.i32(i32 %7)
  %10 = trunc i32 %9 to i8
  %11 = xor i8 %10, 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %11, i8* %12, align 1
  %13 = trunc i64 %6 to i8
  %14 = xor i8 %13, 1
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
define %struct.Memory* @routine_je_.L_401454(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4017e0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x5__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %9 = add i32 %8, -5
  %10 = icmp ult i32 %8, 5
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
define %struct.Memory* @routine_jne_.L_40146a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_40146f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_je_.L_4014c4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0xb__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %9 = add i32 %8, -11
  %10 = icmp ult i32 %8, 11
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
define %struct.Memory* @routine_je_.L_40148d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x9__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %9 = add i32 %8, -9
  %10 = icmp ult i32 %8, 9
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
define %struct.Memory* @routine_jne_.L_401499(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0xd__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_je_.L_4014a8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4014c4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x14__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20
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
define %struct.Memory* @routine_movl_0x866540___rcx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 8807744
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RAX, align 8
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
define %struct.Memory* @routine_jmpq_.L_4014c9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jmpq_.L_401400(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x8__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %9 = add i32 %8, -8
  %10 = icmp ult i32 %8, 8
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
define %struct.Memory* @routine_jge_.L_401526(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_0x425560___rcx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 4347232
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %3 to i32
  %10 = inttoptr i64 %6 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = add i32 %11, %9
  %13 = zext i32 %12 to i64
  store i64 %13, i64* %RAX, align 8
  %14 = icmp ult i32 %12, %9
  %15 = icmp ult i32 %12, %11
  %16 = or i1 %14, %15
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %17, i8* %18, align 1
  %19 = and i32 %12, 255
  %20 = tail call i32 @llvm.ctpop.i32(i32 %19)
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %23, i8* %24, align 1
  %25 = xor i32 %11, %9
  %26 = xor i32 %25, %12
  %27 = lshr i32 %26, 4
  %28 = trunc i32 %27 to i8
  %29 = and i8 %28, 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %29, i8* %30, align 1
  %31 = icmp eq i32 %12, 0
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %12, 31
  %35 = trunc i32 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %35, i8* %36, align 1
  %37 = lshr i32 %9, 31
  %38 = lshr i32 %11, 31
  %39 = xor i32 %34, %37
  %40 = xor i32 %34, %38
  %41 = add nuw nsw i32 %39, %40
  %42 = icmp eq i32 %41, 2
  %43 = zext i1 %42 to i8
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %43, i8* %44, align 1
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x3__0x866540___rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 8807744
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = add i32 %9, -3
  %11 = icmp ult i32 %9, 3
  %12 = zext i1 %11 to i8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %12, i8* %13, align 1
  %14 = and i32 %10, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1
  %20 = xor i32 %10, %9
  %21 = lshr i32 %20, 4
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %23, i8* %24, align 1
  %25 = icmp eq i32 %10, 0
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %10, 31
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %9, 31
  %32 = xor i32 %28, %31
  %33 = add nuw nsw i32 %32, %31
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_401513(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_401518(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4014de(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_4015df(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x425580___rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 4347264
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_401572(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_401577(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4015cc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x7__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %9 = add i32 %8, -7
  %10 = icmp ult i32 %8, 7
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
define %struct.Memory* @routine_je_.L_401595(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_4015a1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_4015b0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4015cc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4015d1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40152d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_4016c9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x2__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jne_.L_401646(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x6__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %9 = add i32 %8, -6
  %10 = icmp ult i32 %8, 6
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
define %struct.Memory* @routine_jne_.L_40165c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_401661(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4016b6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0xc__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %9 = add i32 %8, -12
  %10 = icmp ult i32 %8, 12
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
define %struct.Memory* @routine_je_.L_40167f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0xa__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jne_.L_40168b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_40169a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4016b6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4016bb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4015f2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_401718(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x4__0x866540___rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 8807744
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = add i32 %9, -4
  %11 = icmp ult i32 %9, 4
  %12 = zext i1 %11 to i8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %12, i8* %13, align 1
  %14 = and i32 %10, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1
  %20 = xor i32 %10, %9
  %21 = lshr i32 %20, 4
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %23, i8* %24, align 1
  %25 = icmp eq i32 %10, 0
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %10, 31
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %9, 31
  %32 = xor i32 %28, %31
  %33 = add nuw nsw i32 %32, %31
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_401705(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_40170a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4016d0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_4017d9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addl_0x425580___rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 4347264
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %3 to i32
  %10 = inttoptr i64 %6 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = add i32 %11, %9
  %13 = zext i32 %12 to i64
  store i64 %13, i64* %RCX, align 8
  %14 = icmp ult i32 %12, %9
  %15 = icmp ult i32 %12, %11
  %16 = or i1 %14, %15
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %17, i8* %18, align 1
  %19 = and i32 %12, 255
  %20 = tail call i32 @llvm.ctpop.i32(i32 %19)
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %23, i8* %24, align 1
  %25 = xor i32 %11, %9
  %26 = xor i32 %25, %12
  %27 = lshr i32 %26, 4
  %28 = trunc i32 %27 to i8
  %29 = and i8 %28, 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %29, i8* %30, align 1
  %31 = icmp eq i32 %12, 0
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %12, 31
  %35 = trunc i32 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %35, i8* %36, align 1
  %37 = lshr i32 %9, 31
  %38 = lshr i32 %11, 31
  %39 = xor i32 %34, %37
  %40 = xor i32 %34, %38
  %41 = add nuw nsw i32 %39, %40
  %42 = icmp eq i32 %41, 2
  %43 = zext i1 %42 to i8
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %43, i8* %44, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_40176c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_401771(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4017c6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x8__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %9 = add i32 %8, -8
  %10 = icmp ult i32 %8, 8
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
define %struct.Memory* @routine_je_.L_40178f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_40179b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_4017aa(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4017c6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4017cb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40171f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
