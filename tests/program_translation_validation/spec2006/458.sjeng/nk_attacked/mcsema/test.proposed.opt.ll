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
define %struct.Memory* @nk_attacked(%struct.State* noalias, i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #1 {
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
  %ESI.i422 = bitcast %union.anon* %16 to i32*
  %17 = load i64, i64* %RBP.i, align 8
  %18 = add i64 %17, -12
  %19 = load i32, i32* %ESI.i422, align 4
  %20 = load i64, i64* %3, align 8
  %21 = add i64 %20, 3
  store i64 %21, i64* %3, align 8
  %22 = inttoptr i64 %18 to i32*
  store i32 %19, i32* %22, align 4
  %RSI.i419 = getelementptr inbounds %union.anon, %union.anon* %16, i64 0, i32 0
  %23 = load i64, i64* %RBP.i, align 8
  %24 = add i64 %23, -12
  %25 = load i64, i64* %3, align 8
  %26 = add i64 %25, 3
  store i64 %26, i64* %3, align 8
  %27 = inttoptr i64 %24 to i32*
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, 1
  %30 = zext i32 %29 to i64
  store i64 %30, i64* %RSI.i419, align 8
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
  %.v = select i1 %40, i64 464, i64 15
  %43 = add i64 %25, %.v
  %44 = add i64 %23, -28
  %45 = add i64 %43, 7
  store i64 %45, i64* %3, align 8
  %46 = inttoptr i64 %44 to i32*
  store i32 0, i32* %46, align 4
  %RAX.i203 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX.i201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %.pre76 = load i64, i64* %3, align 8
  br i1 %40, label %block_.L_4019d1.preheader, label %block_.L_401810.preheader

block_.L_401810.preheader:                        ; preds = %entry
  br label %block_.L_401810

block_.L_4019d1.preheader:                        ; preds = %entry
  br label %block_.L_4019d1

block_.L_401810:                                  ; preds = %block_.L_401810.preheader, %block_.L_4018be
  %47 = phi i64 [ %374, %block_.L_4018be ], [ %.pre76, %block_.L_401810.preheader ]
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
  %.v86 = select i1 %75, i64 10, i64 193
  %76 = add i64 %47, %.v86
  store i64 %76, i64* %3, align 8
  br i1 %75, label %block_40181a, label %block_.L_4018d1

block_40181a:                                     ; preds = %block_.L_401810
  %77 = add i64 %76, 4
  store i64 %77, i64* %3, align 8
  %78 = load i32, i32* %51, align 4
  %79 = sext i32 %78 to i64
  store i64 %79, i64* %RAX.i203, align 8
  %80 = shl nsw i64 %79, 2
  %81 = add nsw i64 %80, 4347280
  %82 = add i64 %76, 11
  store i64 %82, i64* %3, align 8
  %83 = inttoptr i64 %81 to i32*
  %84 = load i32, i32* %83, align 4
  %85 = zext i32 %84 to i64
  store i64 %85, i64* %RCX.i201, align 8
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
  store i64 %95, i64* %RCX.i201, align 8
  %96 = add i64 %89, -16
  %97 = add i64 %91, 6
  store i64 %97, i64* %3, align 8
  %98 = inttoptr i64 %96 to i32*
  %99 = load i32, i32* %98, align 4
  %100 = add i32 %99, %94
  %101 = zext i32 %100 to i64
  store i64 %101, i64* %RCX.i201, align 8
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
  store i64 %136, i64* %RAX.i203, align 8
  %137 = shl nsw i64 %136, 2
  %138 = add nsw i64 %137, 8807744
  %139 = add i64 %132, 11
  store i64 %139, i64* %3, align 8
  %140 = inttoptr i64 %138 to i32*
  %141 = load i32, i32* %140, align 4
  %142 = zext i32 %141 to i64
  store i64 %142, i64* %RCX.i201, align 8
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
  %.v92 = select i1 %164, i64 10, i64 37
  %173 = add i64 %148, %.v92
  store i64 %173, i64* %3, align 8
  br i1 %164, label %block_401849, label %block_.L_401864

block_401849:                                     ; preds = %block_40181a
  %174 = add i64 %146, -28
  %175 = add i64 %173, 3
  store i64 %175, i64* %3, align 8
  %176 = inttoptr i64 %174 to i32*
  %177 = load i32, i32* %176, align 4
  %178 = and i32 %177, 1
  %179 = zext i32 %178 to i64
  store i64 %179, i64* %RAX.i203, align 8
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
  %.v97 = select i1 %183, i64 27, i64 15
  %186 = add i64 %173, %.v97
  store i64 %186, i64* %3, align 8
  br i1 %183, label %block_.L_401864, label %block_401858

block_401858:                                     ; preds = %block_401849
  %187 = add i64 %146, -4
  %188 = add i64 %186, 7
  store i64 %188, i64* %3, align 8
  %189 = inttoptr i64 %187 to i32*
  store i32 1, i32* %189, align 4
  %190 = load i64, i64* %3, align 8
  %191 = add i64 %190, 815
  store i64 %191, i64* %3, align 8
  br label %block_.L_401b8e

block_.L_401864:                                  ; preds = %block_40181a, %block_401849
  %192 = phi i64 [ %186, %block_401849 ], [ %173, %block_40181a ]
  %193 = add i64 %192, 5
  br label %block_.L_401869

block_.L_401869:                                  ; preds = %block_.L_4018a2, %block_.L_401864
  %194 = phi i64 [ %146, %block_.L_401864 ], [ %.pre75, %block_.L_4018a2 ]
  %storemerge = phi i64 [ %193, %block_.L_401864 ], [ %342, %block_.L_4018a2 ]
  %195 = add i64 %194, -24
  %196 = add i64 %storemerge, 4
  store i64 %196, i64* %3, align 8
  %197 = inttoptr i64 %195 to i32*
  %198 = load i32, i32* %197, align 4
  store i8 0, i8* %31, align 1
  %199 = and i32 %198, 255
  %200 = tail call i32 @llvm.ctpop.i32(i32 %199)
  %201 = trunc i32 %200 to i8
  %202 = and i8 %201, 1
  %203 = xor i8 %202, 1
  store i8 %203, i8* %32, align 1
  store i8 0, i8* %36, align 1
  %204 = icmp eq i32 %198, 0
  %205 = zext i1 %204 to i8
  store i8 %205, i8* %33, align 1
  %206 = lshr i32 %198, 31
  %207 = trunc i32 %206 to i8
  store i8 %207, i8* %34, align 1
  store i8 0, i8* %35, align 1
  %.v93 = select i1 %204, i64 85, i64 10
  %208 = add i64 %storemerge, %.v93
  store i64 %208, i64* %3, align 8
  br i1 %204, label %block_.L_4018be.loopexit, label %block_401873

block_401873:                                     ; preds = %block_.L_401869
  %209 = add i64 %208, 4
  store i64 %209, i64* %3, align 8
  %210 = load i32, i32* %197, align 4
  %211 = add i32 %210, -11
  %212 = icmp ult i32 %210, 11
  %213 = zext i1 %212 to i8
  store i8 %213, i8* %31, align 1
  %214 = and i32 %211, 255
  %215 = tail call i32 @llvm.ctpop.i32(i32 %214)
  %216 = trunc i32 %215 to i8
  %217 = and i8 %216, 1
  %218 = xor i8 %217, 1
  store i8 %218, i8* %32, align 1
  %219 = xor i32 %211, %210
  %220 = lshr i32 %219, 4
  %221 = trunc i32 %220 to i8
  %222 = and i8 %221, 1
  store i8 %222, i8* %36, align 1
  %223 = icmp eq i32 %211, 0
  %224 = zext i1 %223 to i8
  store i8 %224, i8* %33, align 1
  %225 = lshr i32 %211, 31
  %226 = trunc i32 %225 to i8
  store i8 %226, i8* %34, align 1
  %227 = lshr i32 %210, 31
  %228 = xor i32 %225, %227
  %229 = add nuw nsw i32 %228, %227
  %230 = icmp eq i32 %229, 2
  %231 = zext i1 %230 to i8
  store i8 %231, i8* %35, align 1
  %.v94 = select i1 %223, i64 20, i64 10
  %232 = add i64 %208, %.v94
  store i64 %232, i64* %3, align 8
  br i1 %223, label %block_.L_401887, label %block_40187d

block_40187d:                                     ; preds = %block_401873
  %233 = add i64 %232, 4
  store i64 %233, i64* %3, align 8
  %234 = load i32, i32* %197, align 4
  %235 = add i32 %234, -9
  %236 = icmp ult i32 %234, 9
  %237 = zext i1 %236 to i8
  store i8 %237, i8* %31, align 1
  %238 = and i32 %235, 255
  %239 = tail call i32 @llvm.ctpop.i32(i32 %238)
  %240 = trunc i32 %239 to i8
  %241 = and i8 %240, 1
  %242 = xor i8 %241, 1
  store i8 %242, i8* %32, align 1
  %243 = xor i32 %235, %234
  %244 = lshr i32 %243, 4
  %245 = trunc i32 %244 to i8
  %246 = and i8 %245, 1
  store i8 %246, i8* %36, align 1
  %247 = icmp eq i32 %235, 0
  %248 = zext i1 %247 to i8
  store i8 %248, i8* %33, align 1
  %249 = lshr i32 %235, 31
  %250 = trunc i32 %249 to i8
  store i8 %250, i8* %34, align 1
  %251 = lshr i32 %234, 31
  %252 = xor i32 %249, %251
  %253 = add nuw nsw i32 %252, %251
  %254 = icmp eq i32 %253, 2
  %255 = zext i1 %254 to i8
  store i8 %255, i8* %35, align 1
  %.v95 = select i1 %247, i64 10, i64 22
  %256 = add i64 %232, %.v95
  store i64 %256, i64* %3, align 8
  br i1 %247, label %block_.L_401887, label %block_.L_401893

block_.L_401887:                                  ; preds = %block_40187d, %block_401873
  %257 = phi i64 [ %256, %block_40187d ], [ %232, %block_401873 ]
  %258 = add i64 %194, -4
  %259 = add i64 %257, 7
  store i64 %259, i64* %3, align 8
  %260 = inttoptr i64 %258 to i32*
  store i32 1, i32* %260, align 4
  %261 = load i64, i64* %3, align 8
  %262 = add i64 %261, 768
  store i64 %262, i64* %3, align 8
  br label %block_.L_401b8e

block_.L_401893:                                  ; preds = %block_40187d
  %263 = add i64 %256, 4
  store i64 %263, i64* %3, align 8
  %264 = load i32, i32* %197, align 4
  %265 = add i32 %264, -13
  %266 = icmp ult i32 %264, 13
  %267 = zext i1 %266 to i8
  store i8 %267, i8* %31, align 1
  %268 = and i32 %265, 255
  %269 = tail call i32 @llvm.ctpop.i32(i32 %268)
  %270 = trunc i32 %269 to i8
  %271 = and i8 %270, 1
  %272 = xor i8 %271, 1
  store i8 %272, i8* %32, align 1
  %273 = xor i32 %265, %264
  %274 = lshr i32 %273, 4
  %275 = trunc i32 %274 to i8
  %276 = and i8 %275, 1
  store i8 %276, i8* %36, align 1
  %277 = icmp eq i32 %265, 0
  %278 = zext i1 %277 to i8
  store i8 %278, i8* %33, align 1
  %279 = lshr i32 %265, 31
  %280 = trunc i32 %279 to i8
  store i8 %280, i8* %34, align 1
  %281 = lshr i32 %264, 31
  %282 = xor i32 %279, %281
  %283 = add nuw nsw i32 %282, %281
  %284 = icmp eq i32 %283, 2
  %285 = zext i1 %284 to i8
  store i8 %285, i8* %35, align 1
  %.v96 = select i1 %277, i64 15, i64 10
  %286 = add i64 %256, %.v96
  store i64 %286, i64* %3, align 8
  br i1 %277, label %block_.L_4018a2, label %block_40189d

block_40189d:                                     ; preds = %block_.L_401893
  %287 = add i64 %286, 33
  store i64 %287, i64* %3, align 8
  br label %block_.L_4018be

block_.L_4018a2:                                  ; preds = %block_.L_401893
  %288 = add i64 %194, -16
  %289 = add i64 %286, 3
  store i64 %289, i64* %3, align 8
  %290 = inttoptr i64 %288 to i32*
  %291 = load i32, i32* %290, align 4
  %292 = zext i32 %291 to i64
  store i64 %292, i64* %RAX.i203, align 8
  %293 = add i64 %194, -20
  %294 = add i64 %286, 6
  store i64 %294, i64* %3, align 8
  %295 = inttoptr i64 %293 to i32*
  %296 = load i32, i32* %295, align 4
  %297 = add i32 %296, %291
  %298 = zext i32 %297 to i64
  store i64 %298, i64* %RAX.i203, align 8
  %299 = icmp ult i32 %297, %291
  %300 = icmp ult i32 %297, %296
  %301 = or i1 %299, %300
  %302 = zext i1 %301 to i8
  store i8 %302, i8* %31, align 1
  %303 = and i32 %297, 255
  %304 = tail call i32 @llvm.ctpop.i32(i32 %303)
  %305 = trunc i32 %304 to i8
  %306 = and i8 %305, 1
  %307 = xor i8 %306, 1
  store i8 %307, i8* %32, align 1
  %308 = xor i32 %296, %291
  %309 = xor i32 %308, %297
  %310 = lshr i32 %309, 4
  %311 = trunc i32 %310 to i8
  %312 = and i8 %311, 1
  store i8 %312, i8* %36, align 1
  %313 = icmp eq i32 %297, 0
  %314 = zext i1 %313 to i8
  store i8 %314, i8* %33, align 1
  %315 = lshr i32 %297, 31
  %316 = trunc i32 %315 to i8
  store i8 %316, i8* %34, align 1
  %317 = lshr i32 %291, 31
  %318 = lshr i32 %296, 31
  %319 = xor i32 %315, %317
  %320 = xor i32 %315, %318
  %321 = add nuw nsw i32 %319, %320
  %322 = icmp eq i32 %321, 2
  %323 = zext i1 %322 to i8
  store i8 %323, i8* %35, align 1
  %324 = add i64 %286, 9
  store i64 %324, i64* %3, align 8
  store i32 %297, i32* %295, align 4
  %325 = load i64, i64* %RBP.i, align 8
  %326 = add i64 %325, -20
  %327 = load i64, i64* %3, align 8
  %328 = add i64 %327, 4
  store i64 %328, i64* %3, align 8
  %329 = inttoptr i64 %326 to i32*
  %330 = load i32, i32* %329, align 4
  %331 = sext i32 %330 to i64
  store i64 %331, i64* %RCX.i201, align 8
  %332 = shl nsw i64 %331, 2
  %333 = add nsw i64 %332, 8807744
  %334 = add i64 %327, 11
  store i64 %334, i64* %3, align 8
  %335 = inttoptr i64 %333 to i32*
  %336 = load i32, i32* %335, align 4
  %337 = zext i32 %336 to i64
  store i64 %337, i64* %RAX.i203, align 8
  %338 = add i64 %325, -24
  %339 = add i64 %327, 14
  store i64 %339, i64* %3, align 8
  %340 = inttoptr i64 %338 to i32*
  store i32 %336, i32* %340, align 4
  %341 = load i64, i64* %3, align 8
  %342 = add i64 %341, -80
  %343 = add i64 %341, 5
  store i64 %343, i64* %3, align 8
  %.pre75 = load i64, i64* %RBP.i, align 8
  br label %block_.L_401869

block_.L_4018be.loopexit:                         ; preds = %block_.L_401869
  br label %block_.L_4018be

block_.L_4018be:                                  ; preds = %block_.L_4018be.loopexit, %block_40189d
  %344 = phi i64 [ %287, %block_40189d ], [ %208, %block_.L_4018be.loopexit ]
  %345 = add i64 %194, -28
  %346 = add i64 %344, 8
  store i64 %346, i64* %3, align 8
  %347 = inttoptr i64 %345 to i32*
  %348 = load i32, i32* %347, align 4
  %349 = add i32 %348, 1
  %350 = zext i32 %349 to i64
  store i64 %350, i64* %RAX.i203, align 8
  %351 = icmp eq i32 %348, -1
  %352 = icmp eq i32 %349, 0
  %353 = or i1 %351, %352
  %354 = zext i1 %353 to i8
  store i8 %354, i8* %31, align 1
  %355 = and i32 %349, 255
  %356 = tail call i32 @llvm.ctpop.i32(i32 %355)
  %357 = trunc i32 %356 to i8
  %358 = and i8 %357, 1
  %359 = xor i8 %358, 1
  store i8 %359, i8* %32, align 1
  %360 = xor i32 %349, %348
  %361 = lshr i32 %360, 4
  %362 = trunc i32 %361 to i8
  %363 = and i8 %362, 1
  store i8 %363, i8* %36, align 1
  %364 = zext i1 %352 to i8
  store i8 %364, i8* %33, align 1
  %365 = lshr i32 %349, 31
  %366 = trunc i32 %365 to i8
  store i8 %366, i8* %34, align 1
  %367 = lshr i32 %348, 31
  %368 = xor i32 %365, %367
  %369 = add nuw nsw i32 %368, %365
  %370 = icmp eq i32 %369, 2
  %371 = zext i1 %370 to i8
  store i8 %371, i8* %35, align 1
  %372 = add i64 %344, 14
  store i64 %372, i64* %3, align 8
  store i32 %349, i32* %347, align 4
  %373 = load i64, i64* %3, align 8
  %374 = add i64 %373, -188
  store i64 %374, i64* %3, align 8
  br label %block_.L_401810

block_.L_4018d1:                                  ; preds = %block_.L_401810
  %375 = add i64 %76, 7
  store i64 %375, i64* %3, align 8
  store i32 0, i32* %51, align 4
  %RCX.i313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %.pre72 = load i64, i64* %3, align 8
  br label %block_.L_4018d8

block_.L_4018d8:                                  ; preds = %block_.L_40190d, %block_.L_4018d1
  %376 = phi i64 [ %506, %block_.L_40190d ], [ %.pre72, %block_.L_4018d1 ]
  %377 = load i64, i64* %RBP.i, align 8
  %378 = add i64 %377, -28
  %379 = add i64 %376, 4
  store i64 %379, i64* %3, align 8
  %380 = inttoptr i64 %378 to i32*
  %381 = load i32, i32* %380, align 4
  %382 = add i32 %381, -8
  %383 = icmp ult i32 %381, 8
  %384 = zext i1 %383 to i8
  store i8 %384, i8* %31, align 1
  %385 = and i32 %382, 255
  %386 = tail call i32 @llvm.ctpop.i32(i32 %385)
  %387 = trunc i32 %386 to i8
  %388 = and i8 %387, 1
  %389 = xor i8 %388, 1
  store i8 %389, i8* %32, align 1
  %390 = xor i32 %382, %381
  %391 = lshr i32 %390, 4
  %392 = trunc i32 %391 to i8
  %393 = and i8 %392, 1
  store i8 %393, i8* %36, align 1
  %394 = icmp eq i32 %382, 0
  %395 = zext i1 %394 to i8
  store i8 %395, i8* %33, align 1
  %396 = lshr i32 %382, 31
  %397 = trunc i32 %396 to i8
  store i8 %397, i8* %34, align 1
  %398 = lshr i32 %381, 31
  %399 = xor i32 %396, %398
  %400 = add nuw nsw i32 %399, %398
  %401 = icmp eq i32 %400, 2
  %402 = zext i1 %401 to i8
  store i8 %402, i8* %35, align 1
  %403 = icmp ne i8 %397, 0
  %404 = xor i1 %403, %401
  %.v83 = select i1 %404, i64 10, i64 72
  %405 = add i64 %376, %.v83
  store i64 %405, i64* %3, align 8
  br i1 %404, label %block_4018e2, label %block_.L_401920

block_4018e2:                                     ; preds = %block_.L_4018d8
  %406 = add i64 %377, -8
  %407 = add i64 %405, 3
  store i64 %407, i64* %3, align 8
  %408 = inttoptr i64 %406 to i32*
  %409 = load i32, i32* %408, align 4
  %410 = zext i32 %409 to i64
  store i64 %410, i64* %RAX.i203, align 8
  %411 = add i64 %405, 7
  store i64 %411, i64* %3, align 8
  %412 = load i32, i32* %380, align 4
  %413 = sext i32 %412 to i64
  store i64 %413, i64* %RCX.i313, align 8
  %414 = shl nsw i64 %413, 2
  %415 = add nsw i64 %414, 4347296
  %416 = add i64 %405, 14
  store i64 %416, i64* %3, align 8
  %417 = inttoptr i64 %415 to i32*
  %418 = load i32, i32* %417, align 4
  %419 = add i32 %418, %409
  %420 = zext i32 %419 to i64
  store i64 %420, i64* %RAX.i203, align 8
  %421 = icmp ult i32 %419, %409
  %422 = icmp ult i32 %419, %418
  %423 = or i1 %421, %422
  %424 = zext i1 %423 to i8
  store i8 %424, i8* %31, align 1
  %425 = and i32 %419, 255
  %426 = tail call i32 @llvm.ctpop.i32(i32 %425)
  %427 = trunc i32 %426 to i8
  %428 = and i8 %427, 1
  %429 = xor i8 %428, 1
  store i8 %429, i8* %32, align 1
  %430 = xor i32 %418, %409
  %431 = xor i32 %430, %419
  %432 = lshr i32 %431, 4
  %433 = trunc i32 %432 to i8
  %434 = and i8 %433, 1
  store i8 %434, i8* %36, align 1
  %435 = icmp eq i32 %419, 0
  %436 = zext i1 %435 to i8
  store i8 %436, i8* %33, align 1
  %437 = lshr i32 %419, 31
  %438 = trunc i32 %437 to i8
  store i8 %438, i8* %34, align 1
  %439 = lshr i32 %409, 31
  %440 = lshr i32 %418, 31
  %441 = xor i32 %437, %439
  %442 = xor i32 %437, %440
  %443 = add nuw nsw i32 %441, %442
  %444 = icmp eq i32 %443, 2
  %445 = zext i1 %444 to i8
  store i8 %445, i8* %35, align 1
  %446 = sext i32 %419 to i64
  store i64 %446, i64* %RCX.i313, align 8
  %447 = shl nsw i64 %446, 2
  %448 = add nsw i64 %447, 8807744
  %449 = add i64 %405, 25
  store i64 %449, i64* %3, align 8
  %450 = inttoptr i64 %448 to i32*
  %451 = load i32, i32* %450, align 4
  %452 = add i32 %451, -3
  %453 = icmp ult i32 %451, 3
  %454 = zext i1 %453 to i8
  store i8 %454, i8* %31, align 1
  %455 = and i32 %452, 255
  %456 = tail call i32 @llvm.ctpop.i32(i32 %455)
  %457 = trunc i32 %456 to i8
  %458 = and i8 %457, 1
  %459 = xor i8 %458, 1
  store i8 %459, i8* %32, align 1
  %460 = xor i32 %452, %451
  %461 = lshr i32 %460, 4
  %462 = trunc i32 %461 to i8
  %463 = and i8 %462, 1
  store i8 %463, i8* %36, align 1
  %464 = icmp eq i32 %452, 0
  %465 = zext i1 %464 to i8
  store i8 %465, i8* %33, align 1
  %466 = lshr i32 %452, 31
  %467 = trunc i32 %466 to i8
  store i8 %467, i8* %34, align 1
  %468 = lshr i32 %451, 31
  %469 = xor i32 %466, %468
  %470 = add nuw nsw i32 %469, %468
  %471 = icmp eq i32 %470, 2
  %472 = zext i1 %471 to i8
  store i8 %472, i8* %35, align 1
  %.v82 = select i1 %464, i64 31, i64 43
  %473 = add i64 %405, %.v82
  store i64 %473, i64* %3, align 8
  br i1 %464, label %block_401901, label %block_.L_40190d

block_401901:                                     ; preds = %block_4018e2
  %474 = add i64 %377, -4
  %475 = add i64 %473, 7
  store i64 %475, i64* %3, align 8
  %476 = inttoptr i64 %474 to i32*
  store i32 1, i32* %476, align 4
  %477 = load i64, i64* %3, align 8
  %478 = add i64 %477, 646
  store i64 %478, i64* %3, align 8
  br label %block_.L_401b8e

block_.L_40190d:                                  ; preds = %block_4018e2
  %479 = add i64 %473, 8
  store i64 %479, i64* %3, align 8
  %480 = load i32, i32* %380, align 4
  %481 = add i32 %480, 1
  %482 = zext i32 %481 to i64
  store i64 %482, i64* %RAX.i203, align 8
  %483 = icmp eq i32 %480, -1
  %484 = icmp eq i32 %481, 0
  %485 = or i1 %483, %484
  %486 = zext i1 %485 to i8
  store i8 %486, i8* %31, align 1
  %487 = and i32 %481, 255
  %488 = tail call i32 @llvm.ctpop.i32(i32 %487)
  %489 = trunc i32 %488 to i8
  %490 = and i8 %489, 1
  %491 = xor i8 %490, 1
  store i8 %491, i8* %32, align 1
  %492 = xor i32 %481, %480
  %493 = lshr i32 %492, 4
  %494 = trunc i32 %493 to i8
  %495 = and i8 %494, 1
  store i8 %495, i8* %36, align 1
  %496 = zext i1 %484 to i8
  store i8 %496, i8* %33, align 1
  %497 = lshr i32 %481, 31
  %498 = trunc i32 %497 to i8
  store i8 %498, i8* %34, align 1
  %499 = lshr i32 %480, 31
  %500 = xor i32 %497, %499
  %501 = add nuw nsw i32 %500, %497
  %502 = icmp eq i32 %501, 2
  %503 = zext i1 %502 to i8
  store i8 %503, i8* %35, align 1
  %504 = add i64 %473, 14
  store i64 %504, i64* %3, align 8
  store i32 %481, i32* %380, align 4
  %505 = load i64, i64* %3, align 8
  %506 = add i64 %505, -67
  store i64 %506, i64* %3, align 8
  br label %block_.L_4018d8

block_.L_401920:                                  ; preds = %block_.L_4018d8
  %507 = add i64 %405, 7
  store i64 %507, i64* %3, align 8
  store i32 0, i32* %380, align 4
  %.pre73 = load i64, i64* %3, align 8
  br label %block_.L_401927

block_.L_401927:                                  ; preds = %block_.L_4019ab, %block_.L_401920
  %508 = phi i64 [ %787, %block_.L_4019ab ], [ %.pre73, %block_.L_401920 ]
  %509 = load i64, i64* %RBP.i, align 8
  %510 = add i64 %509, -28
  %511 = add i64 %508, 4
  store i64 %511, i64* %3, align 8
  %512 = inttoptr i64 %510 to i32*
  %513 = load i32, i32* %512, align 4
  %514 = add i32 %513, -4
  %515 = icmp ult i32 %513, 4
  %516 = zext i1 %515 to i8
  store i8 %516, i8* %31, align 1
  %517 = and i32 %514, 255
  %518 = tail call i32 @llvm.ctpop.i32(i32 %517)
  %519 = trunc i32 %518 to i8
  %520 = and i8 %519, 1
  %521 = xor i8 %520, 1
  store i8 %521, i8* %32, align 1
  %522 = xor i32 %514, %513
  %523 = lshr i32 %522, 4
  %524 = trunc i32 %523 to i8
  %525 = and i8 %524, 1
  store i8 %525, i8* %36, align 1
  %526 = icmp eq i32 %514, 0
  %527 = zext i1 %526 to i8
  store i8 %527, i8* %33, align 1
  %528 = lshr i32 %514, 31
  %529 = trunc i32 %528 to i8
  store i8 %529, i8* %34, align 1
  %530 = lshr i32 %513, 31
  %531 = xor i32 %528, %530
  %532 = add nuw nsw i32 %531, %530
  %533 = icmp eq i32 %532, 2
  %534 = zext i1 %533 to i8
  store i8 %534, i8* %35, align 1
  %535 = icmp ne i8 %529, 0
  %536 = xor i1 %535, %533
  %.v87 = select i1 %536, i64 10, i64 151
  %537 = add i64 %508, %.v87
  store i64 %537, i64* %3, align 8
  br i1 %536, label %block_401931, label %block_.L_4019be

block_401931:                                     ; preds = %block_.L_401927
  %538 = add i64 %537, 4
  store i64 %538, i64* %3, align 8
  %539 = load i32, i32* %512, align 4
  %540 = sext i32 %539 to i64
  store i64 %540, i64* %RAX.i203, align 8
  %541 = shl nsw i64 %540, 2
  %542 = add nsw i64 %541, 4347328
  %543 = add i64 %537, 11
  store i64 %543, i64* %3, align 8
  %544 = inttoptr i64 %542 to i32*
  %545 = load i32, i32* %544, align 4
  %546 = zext i32 %545 to i64
  store i64 %546, i64* %RCX.i201, align 8
  %547 = add i64 %509, -16
  %548 = add i64 %537, 14
  store i64 %548, i64* %3, align 8
  %549 = inttoptr i64 %547 to i32*
  store i32 %545, i32* %549, align 4
  %550 = load i64, i64* %RBP.i, align 8
  %551 = add i64 %550, -8
  %552 = load i64, i64* %3, align 8
  %553 = add i64 %552, 3
  store i64 %553, i64* %3, align 8
  %554 = inttoptr i64 %551 to i32*
  %555 = load i32, i32* %554, align 4
  %556 = zext i32 %555 to i64
  store i64 %556, i64* %RCX.i201, align 8
  %557 = add i64 %550, -16
  %558 = add i64 %552, 6
  store i64 %558, i64* %3, align 8
  %559 = inttoptr i64 %557 to i32*
  %560 = load i32, i32* %559, align 4
  %561 = add i32 %560, %555
  %562 = zext i32 %561 to i64
  store i64 %562, i64* %RCX.i201, align 8
  %563 = icmp ult i32 %561, %555
  %564 = icmp ult i32 %561, %560
  %565 = or i1 %563, %564
  %566 = zext i1 %565 to i8
  store i8 %566, i8* %31, align 1
  %567 = and i32 %561, 255
  %568 = tail call i32 @llvm.ctpop.i32(i32 %567)
  %569 = trunc i32 %568 to i8
  %570 = and i8 %569, 1
  %571 = xor i8 %570, 1
  store i8 %571, i8* %32, align 1
  %572 = xor i32 %560, %555
  %573 = xor i32 %572, %561
  %574 = lshr i32 %573, 4
  %575 = trunc i32 %574 to i8
  %576 = and i8 %575, 1
  store i8 %576, i8* %36, align 1
  %577 = icmp eq i32 %561, 0
  %578 = zext i1 %577 to i8
  store i8 %578, i8* %33, align 1
  %579 = lshr i32 %561, 31
  %580 = trunc i32 %579 to i8
  store i8 %580, i8* %34, align 1
  %581 = lshr i32 %555, 31
  %582 = lshr i32 %560, 31
  %583 = xor i32 %579, %581
  %584 = xor i32 %579, %582
  %585 = add nuw nsw i32 %583, %584
  %586 = icmp eq i32 %585, 2
  %587 = zext i1 %586 to i8
  store i8 %587, i8* %35, align 1
  %588 = add i64 %550, -20
  %589 = add i64 %552, 9
  store i64 %589, i64* %3, align 8
  %590 = inttoptr i64 %588 to i32*
  store i32 %561, i32* %590, align 4
  %591 = load i64, i64* %RBP.i, align 8
  %592 = add i64 %591, -20
  %593 = load i64, i64* %3, align 8
  %594 = add i64 %593, 4
  store i64 %594, i64* %3, align 8
  %595 = inttoptr i64 %592 to i32*
  %596 = load i32, i32* %595, align 4
  %597 = sext i32 %596 to i64
  store i64 %597, i64* %RAX.i203, align 8
  %598 = shl nsw i64 %597, 2
  %599 = add nsw i64 %598, 8807744
  %600 = add i64 %593, 11
  store i64 %600, i64* %3, align 8
  %601 = inttoptr i64 %599 to i32*
  %602 = load i32, i32* %601, align 4
  %603 = zext i32 %602 to i64
  store i64 %603, i64* %RCX.i201, align 8
  %604 = add i64 %591, -24
  %605 = add i64 %593, 14
  store i64 %605, i64* %3, align 8
  %606 = inttoptr i64 %604 to i32*
  store i32 %602, i32* %606, align 4
  %.pre74 = load i64, i64* %3, align 8
  br label %block_.L_401956

block_.L_401956:                                  ; preds = %block_.L_40198f, %block_401931
  %607 = phi i64 [ %756, %block_.L_40198f ], [ %.pre74, %block_401931 ]
  %608 = load i64, i64* %RBP.i, align 8
  %609 = add i64 %608, -24
  %610 = add i64 %607, 4
  store i64 %610, i64* %3, align 8
  %611 = inttoptr i64 %609 to i32*
  %612 = load i32, i32* %611, align 4
  store i8 0, i8* %31, align 1
  %613 = and i32 %612, 255
  %614 = tail call i32 @llvm.ctpop.i32(i32 %613)
  %615 = trunc i32 %614 to i8
  %616 = and i8 %615, 1
  %617 = xor i8 %616, 1
  store i8 %617, i8* %32, align 1
  store i8 0, i8* %36, align 1
  %618 = icmp eq i32 %612, 0
  %619 = zext i1 %618 to i8
  store i8 %619, i8* %33, align 1
  %620 = lshr i32 %612, 31
  %621 = trunc i32 %620 to i8
  store i8 %621, i8* %34, align 1
  store i8 0, i8* %35, align 1
  %.v88 = select i1 %618, i64 85, i64 10
  %622 = add i64 %607, %.v88
  store i64 %622, i64* %3, align 8
  br i1 %618, label %block_.L_4019ab.loopexit, label %block_401960

block_401960:                                     ; preds = %block_.L_401956
  %623 = add i64 %622, 4
  store i64 %623, i64* %3, align 8
  %624 = load i32, i32* %611, align 4
  %625 = add i32 %624, -7
  %626 = icmp ult i32 %624, 7
  %627 = zext i1 %626 to i8
  store i8 %627, i8* %31, align 1
  %628 = and i32 %625, 255
  %629 = tail call i32 @llvm.ctpop.i32(i32 %628)
  %630 = trunc i32 %629 to i8
  %631 = and i8 %630, 1
  %632 = xor i8 %631, 1
  store i8 %632, i8* %32, align 1
  %633 = xor i32 %625, %624
  %634 = lshr i32 %633, 4
  %635 = trunc i32 %634 to i8
  %636 = and i8 %635, 1
  store i8 %636, i8* %36, align 1
  %637 = icmp eq i32 %625, 0
  %638 = zext i1 %637 to i8
  store i8 %638, i8* %33, align 1
  %639 = lshr i32 %625, 31
  %640 = trunc i32 %639 to i8
  store i8 %640, i8* %34, align 1
  %641 = lshr i32 %624, 31
  %642 = xor i32 %639, %641
  %643 = add nuw nsw i32 %642, %641
  %644 = icmp eq i32 %643, 2
  %645 = zext i1 %644 to i8
  store i8 %645, i8* %35, align 1
  %.v89 = select i1 %637, i64 20, i64 10
  %646 = add i64 %622, %.v89
  store i64 %646, i64* %3, align 8
  br i1 %637, label %block_.L_401974, label %block_40196a

block_40196a:                                     ; preds = %block_401960
  %647 = add i64 %646, 4
  store i64 %647, i64* %3, align 8
  %648 = load i32, i32* %611, align 4
  %649 = add i32 %648, -9
  %650 = icmp ult i32 %648, 9
  %651 = zext i1 %650 to i8
  store i8 %651, i8* %31, align 1
  %652 = and i32 %649, 255
  %653 = tail call i32 @llvm.ctpop.i32(i32 %652)
  %654 = trunc i32 %653 to i8
  %655 = and i8 %654, 1
  %656 = xor i8 %655, 1
  store i8 %656, i8* %32, align 1
  %657 = xor i32 %649, %648
  %658 = lshr i32 %657, 4
  %659 = trunc i32 %658 to i8
  %660 = and i8 %659, 1
  store i8 %660, i8* %36, align 1
  %661 = icmp eq i32 %649, 0
  %662 = zext i1 %661 to i8
  store i8 %662, i8* %33, align 1
  %663 = lshr i32 %649, 31
  %664 = trunc i32 %663 to i8
  store i8 %664, i8* %34, align 1
  %665 = lshr i32 %648, 31
  %666 = xor i32 %663, %665
  %667 = add nuw nsw i32 %666, %665
  %668 = icmp eq i32 %667, 2
  %669 = zext i1 %668 to i8
  store i8 %669, i8* %35, align 1
  %.v90 = select i1 %661, i64 10, i64 22
  %670 = add i64 %646, %.v90
  store i64 %670, i64* %3, align 8
  br i1 %661, label %block_.L_401974, label %block_.L_401980

block_.L_401974:                                  ; preds = %block_40196a, %block_401960
  %671 = phi i64 [ %670, %block_40196a ], [ %646, %block_401960 ]
  %672 = add i64 %608, -4
  %673 = add i64 %671, 7
  store i64 %673, i64* %3, align 8
  %674 = inttoptr i64 %672 to i32*
  store i32 1, i32* %674, align 4
  %675 = load i64, i64* %3, align 8
  %676 = add i64 %675, 531
  store i64 %676, i64* %3, align 8
  br label %block_.L_401b8e

block_.L_401980:                                  ; preds = %block_40196a
  %677 = add i64 %670, 4
  store i64 %677, i64* %3, align 8
  %678 = load i32, i32* %611, align 4
  %679 = add i32 %678, -13
  %680 = icmp ult i32 %678, 13
  %681 = zext i1 %680 to i8
  store i8 %681, i8* %31, align 1
  %682 = and i32 %679, 255
  %683 = tail call i32 @llvm.ctpop.i32(i32 %682)
  %684 = trunc i32 %683 to i8
  %685 = and i8 %684, 1
  %686 = xor i8 %685, 1
  store i8 %686, i8* %32, align 1
  %687 = xor i32 %679, %678
  %688 = lshr i32 %687, 4
  %689 = trunc i32 %688 to i8
  %690 = and i8 %689, 1
  store i8 %690, i8* %36, align 1
  %691 = icmp eq i32 %679, 0
  %692 = zext i1 %691 to i8
  store i8 %692, i8* %33, align 1
  %693 = lshr i32 %679, 31
  %694 = trunc i32 %693 to i8
  store i8 %694, i8* %34, align 1
  %695 = lshr i32 %678, 31
  %696 = xor i32 %693, %695
  %697 = add nuw nsw i32 %696, %695
  %698 = icmp eq i32 %697, 2
  %699 = zext i1 %698 to i8
  store i8 %699, i8* %35, align 1
  %.v91 = select i1 %691, i64 15, i64 10
  %700 = add i64 %670, %.v91
  store i64 %700, i64* %3, align 8
  br i1 %691, label %block_.L_40198f, label %block_40198a

block_40198a:                                     ; preds = %block_.L_401980
  %701 = add i64 %700, 33
  store i64 %701, i64* %3, align 8
  br label %block_.L_4019ab

block_.L_40198f:                                  ; preds = %block_.L_401980
  %702 = add i64 %608, -16
  %703 = add i64 %700, 3
  store i64 %703, i64* %3, align 8
  %704 = inttoptr i64 %702 to i32*
  %705 = load i32, i32* %704, align 4
  %706 = zext i32 %705 to i64
  store i64 %706, i64* %RAX.i203, align 8
  %707 = add i64 %608, -20
  %708 = add i64 %700, 6
  store i64 %708, i64* %3, align 8
  %709 = inttoptr i64 %707 to i32*
  %710 = load i32, i32* %709, align 4
  %711 = add i32 %710, %705
  %712 = zext i32 %711 to i64
  store i64 %712, i64* %RAX.i203, align 8
  %713 = icmp ult i32 %711, %705
  %714 = icmp ult i32 %711, %710
  %715 = or i1 %713, %714
  %716 = zext i1 %715 to i8
  store i8 %716, i8* %31, align 1
  %717 = and i32 %711, 255
  %718 = tail call i32 @llvm.ctpop.i32(i32 %717)
  %719 = trunc i32 %718 to i8
  %720 = and i8 %719, 1
  %721 = xor i8 %720, 1
  store i8 %721, i8* %32, align 1
  %722 = xor i32 %710, %705
  %723 = xor i32 %722, %711
  %724 = lshr i32 %723, 4
  %725 = trunc i32 %724 to i8
  %726 = and i8 %725, 1
  store i8 %726, i8* %36, align 1
  %727 = icmp eq i32 %711, 0
  %728 = zext i1 %727 to i8
  store i8 %728, i8* %33, align 1
  %729 = lshr i32 %711, 31
  %730 = trunc i32 %729 to i8
  store i8 %730, i8* %34, align 1
  %731 = lshr i32 %705, 31
  %732 = lshr i32 %710, 31
  %733 = xor i32 %729, %731
  %734 = xor i32 %729, %732
  %735 = add nuw nsw i32 %733, %734
  %736 = icmp eq i32 %735, 2
  %737 = zext i1 %736 to i8
  store i8 %737, i8* %35, align 1
  %738 = add i64 %700, 9
  store i64 %738, i64* %3, align 8
  store i32 %711, i32* %709, align 4
  %739 = load i64, i64* %RBP.i, align 8
  %740 = add i64 %739, -20
  %741 = load i64, i64* %3, align 8
  %742 = add i64 %741, 4
  store i64 %742, i64* %3, align 8
  %743 = inttoptr i64 %740 to i32*
  %744 = load i32, i32* %743, align 4
  %745 = sext i32 %744 to i64
  store i64 %745, i64* %RCX.i201, align 8
  %746 = shl nsw i64 %745, 2
  %747 = add nsw i64 %746, 8807744
  %748 = add i64 %741, 11
  store i64 %748, i64* %3, align 8
  %749 = inttoptr i64 %747 to i32*
  %750 = load i32, i32* %749, align 4
  %751 = zext i32 %750 to i64
  store i64 %751, i64* %RAX.i203, align 8
  %752 = add i64 %739, -24
  %753 = add i64 %741, 14
  store i64 %753, i64* %3, align 8
  %754 = inttoptr i64 %752 to i32*
  store i32 %750, i32* %754, align 4
  %755 = load i64, i64* %3, align 8
  %756 = add i64 %755, -80
  store i64 %756, i64* %3, align 8
  br label %block_.L_401956

block_.L_4019ab.loopexit:                         ; preds = %block_.L_401956
  br label %block_.L_4019ab

block_.L_4019ab:                                  ; preds = %block_.L_4019ab.loopexit, %block_40198a
  %757 = phi i64 [ %701, %block_40198a ], [ %622, %block_.L_4019ab.loopexit ]
  %758 = add i64 %608, -28
  %759 = add i64 %757, 8
  store i64 %759, i64* %3, align 8
  %760 = inttoptr i64 %758 to i32*
  %761 = load i32, i32* %760, align 4
  %762 = add i32 %761, 1
  %763 = zext i32 %762 to i64
  store i64 %763, i64* %RAX.i203, align 8
  %764 = icmp eq i32 %761, -1
  %765 = icmp eq i32 %762, 0
  %766 = or i1 %764, %765
  %767 = zext i1 %766 to i8
  store i8 %767, i8* %31, align 1
  %768 = and i32 %762, 255
  %769 = tail call i32 @llvm.ctpop.i32(i32 %768)
  %770 = trunc i32 %769 to i8
  %771 = and i8 %770, 1
  %772 = xor i8 %771, 1
  store i8 %772, i8* %32, align 1
  %773 = xor i32 %762, %761
  %774 = lshr i32 %773, 4
  %775 = trunc i32 %774 to i8
  %776 = and i8 %775, 1
  store i8 %776, i8* %36, align 1
  %777 = zext i1 %765 to i8
  store i8 %777, i8* %33, align 1
  %778 = lshr i32 %762, 31
  %779 = trunc i32 %778 to i8
  store i8 %779, i8* %34, align 1
  %780 = lshr i32 %761, 31
  %781 = xor i32 %778, %780
  %782 = add nuw nsw i32 %781, %778
  %783 = icmp eq i32 %782, 2
  %784 = zext i1 %783 to i8
  store i8 %784, i8* %35, align 1
  %785 = add i64 %757, 14
  store i64 %785, i64* %3, align 8
  store i32 %762, i32* %760, align 4
  %786 = load i64, i64* %3, align 8
  %787 = add i64 %786, -146
  store i64 %787, i64* %3, align 8
  br label %block_.L_401927

block_.L_4019be:                                  ; preds = %block_.L_401927
  %788 = add i64 %509, -4
  %789 = add i64 %537, 7
  store i64 %789, i64* %3, align 8
  %790 = inttoptr i64 %788 to i32*
  store i32 0, i32* %790, align 4
  %791 = load i64, i64* %3, align 8
  %792 = add i64 %791, 457
  store i64 %792, i64* %3, align 8
  br label %block_.L_401b8e

block_.L_4019d1:                                  ; preds = %block_.L_4019d1.preheader, %block_.L_401a7f
  %793 = phi i64 [ %1120, %block_.L_401a7f ], [ %.pre76, %block_.L_4019d1.preheader ]
  %794 = load i64, i64* %RBP.i, align 8
  %795 = add i64 %794, -28
  %796 = add i64 %793, 4
  store i64 %796, i64* %3, align 8
  %797 = inttoptr i64 %795 to i32*
  %798 = load i32, i32* %797, align 4
  %799 = add i32 %798, -4
  %800 = icmp ult i32 %798, 4
  %801 = zext i1 %800 to i8
  store i8 %801, i8* %31, align 1
  %802 = and i32 %799, 255
  %803 = tail call i32 @llvm.ctpop.i32(i32 %802)
  %804 = trunc i32 %803 to i8
  %805 = and i8 %804, 1
  %806 = xor i8 %805, 1
  store i8 %806, i8* %32, align 1
  %807 = xor i32 %799, %798
  %808 = lshr i32 %807, 4
  %809 = trunc i32 %808 to i8
  %810 = and i8 %809, 1
  store i8 %810, i8* %36, align 1
  %811 = icmp eq i32 %799, 0
  %812 = zext i1 %811 to i8
  store i8 %812, i8* %33, align 1
  %813 = lshr i32 %799, 31
  %814 = trunc i32 %813 to i8
  store i8 %814, i8* %34, align 1
  %815 = lshr i32 %798, 31
  %816 = xor i32 %813, %815
  %817 = add nuw nsw i32 %816, %815
  %818 = icmp eq i32 %817, 2
  %819 = zext i1 %818 to i8
  store i8 %819, i8* %35, align 1
  %820 = icmp ne i8 %814, 0
  %821 = xor i1 %820, %818
  %.v98 = select i1 %821, i64 10, i64 193
  %822 = add i64 %793, %.v98
  store i64 %822, i64* %3, align 8
  br i1 %821, label %block_4019db, label %block_.L_401a92

block_4019db:                                     ; preds = %block_.L_4019d1
  %823 = add i64 %822, 4
  store i64 %823, i64* %3, align 8
  %824 = load i32, i32* %797, align 4
  %825 = sext i32 %824 to i64
  store i64 %825, i64* %RAX.i203, align 8
  %826 = shl nsw i64 %825, 2
  %827 = add nsw i64 %826, 4347280
  %828 = add i64 %822, 11
  store i64 %828, i64* %3, align 8
  %829 = inttoptr i64 %827 to i32*
  %830 = load i32, i32* %829, align 4
  %831 = zext i32 %830 to i64
  store i64 %831, i64* %RCX.i201, align 8
  %832 = add i64 %794, -16
  %833 = add i64 %822, 14
  store i64 %833, i64* %3, align 8
  %834 = inttoptr i64 %832 to i32*
  store i32 %830, i32* %834, align 4
  %835 = load i64, i64* %RBP.i, align 8
  %836 = add i64 %835, -8
  %837 = load i64, i64* %3, align 8
  %838 = add i64 %837, 3
  store i64 %838, i64* %3, align 8
  %839 = inttoptr i64 %836 to i32*
  %840 = load i32, i32* %839, align 4
  %841 = zext i32 %840 to i64
  store i64 %841, i64* %RCX.i201, align 8
  %842 = add i64 %835, -16
  %843 = add i64 %837, 6
  store i64 %843, i64* %3, align 8
  %844 = inttoptr i64 %842 to i32*
  %845 = load i32, i32* %844, align 4
  %846 = add i32 %845, %840
  %847 = zext i32 %846 to i64
  store i64 %847, i64* %RCX.i201, align 8
  %848 = icmp ult i32 %846, %840
  %849 = icmp ult i32 %846, %845
  %850 = or i1 %848, %849
  %851 = zext i1 %850 to i8
  store i8 %851, i8* %31, align 1
  %852 = and i32 %846, 255
  %853 = tail call i32 @llvm.ctpop.i32(i32 %852)
  %854 = trunc i32 %853 to i8
  %855 = and i8 %854, 1
  %856 = xor i8 %855, 1
  store i8 %856, i8* %32, align 1
  %857 = xor i32 %845, %840
  %858 = xor i32 %857, %846
  %859 = lshr i32 %858, 4
  %860 = trunc i32 %859 to i8
  %861 = and i8 %860, 1
  store i8 %861, i8* %36, align 1
  %862 = icmp eq i32 %846, 0
  %863 = zext i1 %862 to i8
  store i8 %863, i8* %33, align 1
  %864 = lshr i32 %846, 31
  %865 = trunc i32 %864 to i8
  store i8 %865, i8* %34, align 1
  %866 = lshr i32 %840, 31
  %867 = lshr i32 %845, 31
  %868 = xor i32 %864, %866
  %869 = xor i32 %864, %867
  %870 = add nuw nsw i32 %868, %869
  %871 = icmp eq i32 %870, 2
  %872 = zext i1 %871 to i8
  store i8 %872, i8* %35, align 1
  %873 = add i64 %835, -20
  %874 = add i64 %837, 9
  store i64 %874, i64* %3, align 8
  %875 = inttoptr i64 %873 to i32*
  store i32 %846, i32* %875, align 4
  %876 = load i64, i64* %RBP.i, align 8
  %877 = add i64 %876, -20
  %878 = load i64, i64* %3, align 8
  %879 = add i64 %878, 4
  store i64 %879, i64* %3, align 8
  %880 = inttoptr i64 %877 to i32*
  %881 = load i32, i32* %880, align 4
  %882 = sext i32 %881 to i64
  store i64 %882, i64* %RAX.i203, align 8
  %883 = shl nsw i64 %882, 2
  %884 = add nsw i64 %883, 8807744
  %885 = add i64 %878, 11
  store i64 %885, i64* %3, align 8
  %886 = inttoptr i64 %884 to i32*
  %887 = load i32, i32* %886, align 4
  %888 = zext i32 %887 to i64
  store i64 %888, i64* %RCX.i201, align 8
  %889 = add i64 %876, -24
  %890 = add i64 %878, 14
  store i64 %890, i64* %3, align 8
  %891 = inttoptr i64 %889 to i32*
  store i32 %887, i32* %891, align 4
  %892 = load i64, i64* %RBP.i, align 8
  %893 = add i64 %892, -24
  %894 = load i64, i64* %3, align 8
  %895 = add i64 %894, 4
  store i64 %895, i64* %3, align 8
  %896 = inttoptr i64 %893 to i32*
  %897 = load i32, i32* %896, align 4
  %898 = add i32 %897, -2
  %899 = icmp ult i32 %897, 2
  %900 = zext i1 %899 to i8
  store i8 %900, i8* %31, align 1
  %901 = and i32 %898, 255
  %902 = tail call i32 @llvm.ctpop.i32(i32 %901)
  %903 = trunc i32 %902 to i8
  %904 = and i8 %903, 1
  %905 = xor i8 %904, 1
  store i8 %905, i8* %32, align 1
  %906 = xor i32 %898, %897
  %907 = lshr i32 %906, 4
  %908 = trunc i32 %907 to i8
  %909 = and i8 %908, 1
  store i8 %909, i8* %36, align 1
  %910 = icmp eq i32 %898, 0
  %911 = zext i1 %910 to i8
  store i8 %911, i8* %33, align 1
  %912 = lshr i32 %898, 31
  %913 = trunc i32 %912 to i8
  store i8 %913, i8* %34, align 1
  %914 = lshr i32 %897, 31
  %915 = xor i32 %912, %914
  %916 = add nuw nsw i32 %915, %914
  %917 = icmp eq i32 %916, 2
  %918 = zext i1 %917 to i8
  store i8 %918, i8* %35, align 1
  %.v104 = select i1 %910, i64 10, i64 37
  %919 = add i64 %894, %.v104
  store i64 %919, i64* %3, align 8
  br i1 %910, label %block_401a0a, label %block_.L_401a25

block_401a0a:                                     ; preds = %block_4019db
  %920 = add i64 %892, -28
  %921 = add i64 %919, 3
  store i64 %921, i64* %3, align 8
  %922 = inttoptr i64 %920 to i32*
  %923 = load i32, i32* %922, align 4
  %924 = and i32 %923, 1
  %925 = zext i32 %924 to i64
  store i64 %925, i64* %RAX.i203, align 8
  store i8 0, i8* %31, align 1
  %926 = tail call i32 @llvm.ctpop.i32(i32 %924)
  %927 = trunc i32 %926 to i8
  %928 = xor i8 %927, 1
  store i8 %928, i8* %32, align 1
  store i8 0, i8* %36, align 1
  %929 = trunc i32 %924 to i8
  %930 = xor i8 %929, 1
  store i8 %930, i8* %33, align 1
  store i8 0, i8* %34, align 1
  store i8 0, i8* %35, align 1
  %931 = icmp eq i8 %930, 0
  %.v109 = select i1 %931, i64 27, i64 15
  %932 = add i64 %919, %.v109
  store i64 %932, i64* %3, align 8
  br i1 %931, label %block_.L_401a25, label %block_401a19

block_401a19:                                     ; preds = %block_401a0a
  %933 = add i64 %892, -4
  %934 = add i64 %932, 7
  store i64 %934, i64* %3, align 8
  %935 = inttoptr i64 %933 to i32*
  store i32 1, i32* %935, align 4
  %936 = load i64, i64* %3, align 8
  %937 = add i64 %936, 366
  store i64 %937, i64* %3, align 8
  br label %block_.L_401b8e

block_.L_401a25:                                  ; preds = %block_4019db, %block_401a0a
  %938 = phi i64 [ %932, %block_401a0a ], [ %919, %block_4019db ]
  %939 = add i64 %938, 5
  br label %block_.L_401a2a

block_.L_401a2a:                                  ; preds = %block_.L_401a63, %block_.L_401a25
  %940 = phi i64 [ %892, %block_.L_401a25 ], [ %.pre80, %block_.L_401a63 ]
  %storemerge29 = phi i64 [ %939, %block_.L_401a25 ], [ %1088, %block_.L_401a63 ]
  %941 = add i64 %940, -24
  %942 = add i64 %storemerge29, 4
  store i64 %942, i64* %3, align 8
  %943 = inttoptr i64 %941 to i32*
  %944 = load i32, i32* %943, align 4
  store i8 0, i8* %31, align 1
  %945 = and i32 %944, 255
  %946 = tail call i32 @llvm.ctpop.i32(i32 %945)
  %947 = trunc i32 %946 to i8
  %948 = and i8 %947, 1
  %949 = xor i8 %948, 1
  store i8 %949, i8* %32, align 1
  store i8 0, i8* %36, align 1
  %950 = icmp eq i32 %944, 0
  %951 = zext i1 %950 to i8
  store i8 %951, i8* %33, align 1
  %952 = lshr i32 %944, 31
  %953 = trunc i32 %952 to i8
  store i8 %953, i8* %34, align 1
  store i8 0, i8* %35, align 1
  %.v105 = select i1 %950, i64 85, i64 10
  %954 = add i64 %storemerge29, %.v105
  store i64 %954, i64* %3, align 8
  br i1 %950, label %block_.L_401a7f.loopexit, label %block_401a34

block_401a34:                                     ; preds = %block_.L_401a2a
  %955 = add i64 %954, 4
  store i64 %955, i64* %3, align 8
  %956 = load i32, i32* %943, align 4
  %957 = add i32 %956, -12
  %958 = icmp ult i32 %956, 12
  %959 = zext i1 %958 to i8
  store i8 %959, i8* %31, align 1
  %960 = and i32 %957, 255
  %961 = tail call i32 @llvm.ctpop.i32(i32 %960)
  %962 = trunc i32 %961 to i8
  %963 = and i8 %962, 1
  %964 = xor i8 %963, 1
  store i8 %964, i8* %32, align 1
  %965 = xor i32 %957, %956
  %966 = lshr i32 %965, 4
  %967 = trunc i32 %966 to i8
  %968 = and i8 %967, 1
  store i8 %968, i8* %36, align 1
  %969 = icmp eq i32 %957, 0
  %970 = zext i1 %969 to i8
  store i8 %970, i8* %33, align 1
  %971 = lshr i32 %957, 31
  %972 = trunc i32 %971 to i8
  store i8 %972, i8* %34, align 1
  %973 = lshr i32 %956, 31
  %974 = xor i32 %971, %973
  %975 = add nuw nsw i32 %974, %973
  %976 = icmp eq i32 %975, 2
  %977 = zext i1 %976 to i8
  store i8 %977, i8* %35, align 1
  %.v106 = select i1 %969, i64 20, i64 10
  %978 = add i64 %954, %.v106
  store i64 %978, i64* %3, align 8
  br i1 %969, label %block_.L_401a48, label %block_401a3e

block_401a3e:                                     ; preds = %block_401a34
  %979 = add i64 %978, 4
  store i64 %979, i64* %3, align 8
  %980 = load i32, i32* %943, align 4
  %981 = add i32 %980, -10
  %982 = icmp ult i32 %980, 10
  %983 = zext i1 %982 to i8
  store i8 %983, i8* %31, align 1
  %984 = and i32 %981, 255
  %985 = tail call i32 @llvm.ctpop.i32(i32 %984)
  %986 = trunc i32 %985 to i8
  %987 = and i8 %986, 1
  %988 = xor i8 %987, 1
  store i8 %988, i8* %32, align 1
  %989 = xor i32 %981, %980
  %990 = lshr i32 %989, 4
  %991 = trunc i32 %990 to i8
  %992 = and i8 %991, 1
  store i8 %992, i8* %36, align 1
  %993 = icmp eq i32 %981, 0
  %994 = zext i1 %993 to i8
  store i8 %994, i8* %33, align 1
  %995 = lshr i32 %981, 31
  %996 = trunc i32 %995 to i8
  store i8 %996, i8* %34, align 1
  %997 = lshr i32 %980, 31
  %998 = xor i32 %995, %997
  %999 = add nuw nsw i32 %998, %997
  %1000 = icmp eq i32 %999, 2
  %1001 = zext i1 %1000 to i8
  store i8 %1001, i8* %35, align 1
  %.v107 = select i1 %993, i64 10, i64 22
  %1002 = add i64 %978, %.v107
  store i64 %1002, i64* %3, align 8
  br i1 %993, label %block_.L_401a48, label %block_.L_401a54

block_.L_401a48:                                  ; preds = %block_401a3e, %block_401a34
  %1003 = phi i64 [ %1002, %block_401a3e ], [ %978, %block_401a34 ]
  %1004 = add i64 %940, -4
  %1005 = add i64 %1003, 7
  store i64 %1005, i64* %3, align 8
  %1006 = inttoptr i64 %1004 to i32*
  store i32 1, i32* %1006, align 4
  %1007 = load i64, i64* %3, align 8
  %1008 = add i64 %1007, 319
  store i64 %1008, i64* %3, align 8
  br label %block_.L_401b8e

block_.L_401a54:                                  ; preds = %block_401a3e
  %1009 = add i64 %1002, 4
  store i64 %1009, i64* %3, align 8
  %1010 = load i32, i32* %943, align 4
  %1011 = add i32 %1010, -13
  %1012 = icmp ult i32 %1010, 13
  %1013 = zext i1 %1012 to i8
  store i8 %1013, i8* %31, align 1
  %1014 = and i32 %1011, 255
  %1015 = tail call i32 @llvm.ctpop.i32(i32 %1014)
  %1016 = trunc i32 %1015 to i8
  %1017 = and i8 %1016, 1
  %1018 = xor i8 %1017, 1
  store i8 %1018, i8* %32, align 1
  %1019 = xor i32 %1011, %1010
  %1020 = lshr i32 %1019, 4
  %1021 = trunc i32 %1020 to i8
  %1022 = and i8 %1021, 1
  store i8 %1022, i8* %36, align 1
  %1023 = icmp eq i32 %1011, 0
  %1024 = zext i1 %1023 to i8
  store i8 %1024, i8* %33, align 1
  %1025 = lshr i32 %1011, 31
  %1026 = trunc i32 %1025 to i8
  store i8 %1026, i8* %34, align 1
  %1027 = lshr i32 %1010, 31
  %1028 = xor i32 %1025, %1027
  %1029 = add nuw nsw i32 %1028, %1027
  %1030 = icmp eq i32 %1029, 2
  %1031 = zext i1 %1030 to i8
  store i8 %1031, i8* %35, align 1
  %.v108 = select i1 %1023, i64 15, i64 10
  %1032 = add i64 %1002, %.v108
  store i64 %1032, i64* %3, align 8
  br i1 %1023, label %block_.L_401a63, label %block_401a5e

block_401a5e:                                     ; preds = %block_.L_401a54
  %1033 = add i64 %1032, 33
  store i64 %1033, i64* %3, align 8
  br label %block_.L_401a7f

block_.L_401a63:                                  ; preds = %block_.L_401a54
  %1034 = add i64 %940, -16
  %1035 = add i64 %1032, 3
  store i64 %1035, i64* %3, align 8
  %1036 = inttoptr i64 %1034 to i32*
  %1037 = load i32, i32* %1036, align 4
  %1038 = zext i32 %1037 to i64
  store i64 %1038, i64* %RAX.i203, align 8
  %1039 = add i64 %940, -20
  %1040 = add i64 %1032, 6
  store i64 %1040, i64* %3, align 8
  %1041 = inttoptr i64 %1039 to i32*
  %1042 = load i32, i32* %1041, align 4
  %1043 = add i32 %1042, %1037
  %1044 = zext i32 %1043 to i64
  store i64 %1044, i64* %RAX.i203, align 8
  %1045 = icmp ult i32 %1043, %1037
  %1046 = icmp ult i32 %1043, %1042
  %1047 = or i1 %1045, %1046
  %1048 = zext i1 %1047 to i8
  store i8 %1048, i8* %31, align 1
  %1049 = and i32 %1043, 255
  %1050 = tail call i32 @llvm.ctpop.i32(i32 %1049)
  %1051 = trunc i32 %1050 to i8
  %1052 = and i8 %1051, 1
  %1053 = xor i8 %1052, 1
  store i8 %1053, i8* %32, align 1
  %1054 = xor i32 %1042, %1037
  %1055 = xor i32 %1054, %1043
  %1056 = lshr i32 %1055, 4
  %1057 = trunc i32 %1056 to i8
  %1058 = and i8 %1057, 1
  store i8 %1058, i8* %36, align 1
  %1059 = icmp eq i32 %1043, 0
  %1060 = zext i1 %1059 to i8
  store i8 %1060, i8* %33, align 1
  %1061 = lshr i32 %1043, 31
  %1062 = trunc i32 %1061 to i8
  store i8 %1062, i8* %34, align 1
  %1063 = lshr i32 %1037, 31
  %1064 = lshr i32 %1042, 31
  %1065 = xor i32 %1061, %1063
  %1066 = xor i32 %1061, %1064
  %1067 = add nuw nsw i32 %1065, %1066
  %1068 = icmp eq i32 %1067, 2
  %1069 = zext i1 %1068 to i8
  store i8 %1069, i8* %35, align 1
  %1070 = add i64 %1032, 9
  store i64 %1070, i64* %3, align 8
  store i32 %1043, i32* %1041, align 4
  %1071 = load i64, i64* %RBP.i, align 8
  %1072 = add i64 %1071, -20
  %1073 = load i64, i64* %3, align 8
  %1074 = add i64 %1073, 4
  store i64 %1074, i64* %3, align 8
  %1075 = inttoptr i64 %1072 to i32*
  %1076 = load i32, i32* %1075, align 4
  %1077 = sext i32 %1076 to i64
  store i64 %1077, i64* %RCX.i201, align 8
  %1078 = shl nsw i64 %1077, 2
  %1079 = add nsw i64 %1078, 8807744
  %1080 = add i64 %1073, 11
  store i64 %1080, i64* %3, align 8
  %1081 = inttoptr i64 %1079 to i32*
  %1082 = load i32, i32* %1081, align 4
  %1083 = zext i32 %1082 to i64
  store i64 %1083, i64* %RAX.i203, align 8
  %1084 = add i64 %1071, -24
  %1085 = add i64 %1073, 14
  store i64 %1085, i64* %3, align 8
  %1086 = inttoptr i64 %1084 to i32*
  store i32 %1082, i32* %1086, align 4
  %1087 = load i64, i64* %3, align 8
  %1088 = add i64 %1087, -80
  %1089 = add i64 %1087, 5
  store i64 %1089, i64* %3, align 8
  %.pre80 = load i64, i64* %RBP.i, align 8
  br label %block_.L_401a2a

block_.L_401a7f.loopexit:                         ; preds = %block_.L_401a2a
  br label %block_.L_401a7f

block_.L_401a7f:                                  ; preds = %block_.L_401a7f.loopexit, %block_401a5e
  %1090 = phi i64 [ %1033, %block_401a5e ], [ %954, %block_.L_401a7f.loopexit ]
  %1091 = add i64 %940, -28
  %1092 = add i64 %1090, 8
  store i64 %1092, i64* %3, align 8
  %1093 = inttoptr i64 %1091 to i32*
  %1094 = load i32, i32* %1093, align 4
  %1095 = add i32 %1094, 1
  %1096 = zext i32 %1095 to i64
  store i64 %1096, i64* %RAX.i203, align 8
  %1097 = icmp eq i32 %1094, -1
  %1098 = icmp eq i32 %1095, 0
  %1099 = or i1 %1097, %1098
  %1100 = zext i1 %1099 to i8
  store i8 %1100, i8* %31, align 1
  %1101 = and i32 %1095, 255
  %1102 = tail call i32 @llvm.ctpop.i32(i32 %1101)
  %1103 = trunc i32 %1102 to i8
  %1104 = and i8 %1103, 1
  %1105 = xor i8 %1104, 1
  store i8 %1105, i8* %32, align 1
  %1106 = xor i32 %1095, %1094
  %1107 = lshr i32 %1106, 4
  %1108 = trunc i32 %1107 to i8
  %1109 = and i8 %1108, 1
  store i8 %1109, i8* %36, align 1
  %1110 = zext i1 %1098 to i8
  store i8 %1110, i8* %33, align 1
  %1111 = lshr i32 %1095, 31
  %1112 = trunc i32 %1111 to i8
  store i8 %1112, i8* %34, align 1
  %1113 = lshr i32 %1094, 31
  %1114 = xor i32 %1111, %1113
  %1115 = add nuw nsw i32 %1114, %1111
  %1116 = icmp eq i32 %1115, 2
  %1117 = zext i1 %1116 to i8
  store i8 %1117, i8* %35, align 1
  %1118 = add i64 %1090, 14
  store i64 %1118, i64* %3, align 8
  store i32 %1095, i32* %1093, align 4
  %1119 = load i64, i64* %3, align 8
  %1120 = add i64 %1119, -188
  store i64 %1120, i64* %3, align 8
  br label %block_.L_4019d1

block_.L_401a92:                                  ; preds = %block_.L_4019d1
  %1121 = add i64 %822, 7
  store i64 %1121, i64* %3, align 8
  store i32 0, i32* %797, align 4
  %RCX.i108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %.pre77 = load i64, i64* %3, align 8
  br label %block_.L_401a99

block_.L_401a99:                                  ; preds = %block_.L_401ace, %block_.L_401a92
  %1122 = phi i64 [ %1252, %block_.L_401ace ], [ %.pre77, %block_.L_401a92 ]
  %1123 = load i64, i64* %RBP.i, align 8
  %1124 = add i64 %1123, -28
  %1125 = add i64 %1122, 4
  store i64 %1125, i64* %3, align 8
  %1126 = inttoptr i64 %1124 to i32*
  %1127 = load i32, i32* %1126, align 4
  %1128 = add i32 %1127, -8
  %1129 = icmp ult i32 %1127, 8
  %1130 = zext i1 %1129 to i8
  store i8 %1130, i8* %31, align 1
  %1131 = and i32 %1128, 255
  %1132 = tail call i32 @llvm.ctpop.i32(i32 %1131)
  %1133 = trunc i32 %1132 to i8
  %1134 = and i8 %1133, 1
  %1135 = xor i8 %1134, 1
  store i8 %1135, i8* %32, align 1
  %1136 = xor i32 %1128, %1127
  %1137 = lshr i32 %1136, 4
  %1138 = trunc i32 %1137 to i8
  %1139 = and i8 %1138, 1
  store i8 %1139, i8* %36, align 1
  %1140 = icmp eq i32 %1128, 0
  %1141 = zext i1 %1140 to i8
  store i8 %1141, i8* %33, align 1
  %1142 = lshr i32 %1128, 31
  %1143 = trunc i32 %1142 to i8
  store i8 %1143, i8* %34, align 1
  %1144 = lshr i32 %1127, 31
  %1145 = xor i32 %1142, %1144
  %1146 = add nuw nsw i32 %1145, %1144
  %1147 = icmp eq i32 %1146, 2
  %1148 = zext i1 %1147 to i8
  store i8 %1148, i8* %35, align 1
  %1149 = icmp ne i8 %1143, 0
  %1150 = xor i1 %1149, %1147
  %.v85 = select i1 %1150, i64 10, i64 72
  %1151 = add i64 %1122, %.v85
  store i64 %1151, i64* %3, align 8
  br i1 %1150, label %block_401aa3, label %block_.L_401ae1

block_401aa3:                                     ; preds = %block_.L_401a99
  %1152 = add i64 %1123, -8
  %1153 = add i64 %1151, 3
  store i64 %1153, i64* %3, align 8
  %1154 = inttoptr i64 %1152 to i32*
  %1155 = load i32, i32* %1154, align 4
  %1156 = zext i32 %1155 to i64
  store i64 %1156, i64* %RAX.i203, align 8
  %1157 = add i64 %1151, 7
  store i64 %1157, i64* %3, align 8
  %1158 = load i32, i32* %1126, align 4
  %1159 = sext i32 %1158 to i64
  store i64 %1159, i64* %RCX.i108, align 8
  %1160 = shl nsw i64 %1159, 2
  %1161 = add nsw i64 %1160, 4347296
  %1162 = add i64 %1151, 14
  store i64 %1162, i64* %3, align 8
  %1163 = inttoptr i64 %1161 to i32*
  %1164 = load i32, i32* %1163, align 4
  %1165 = add i32 %1164, %1155
  %1166 = zext i32 %1165 to i64
  store i64 %1166, i64* %RAX.i203, align 8
  %1167 = icmp ult i32 %1165, %1155
  %1168 = icmp ult i32 %1165, %1164
  %1169 = or i1 %1167, %1168
  %1170 = zext i1 %1169 to i8
  store i8 %1170, i8* %31, align 1
  %1171 = and i32 %1165, 255
  %1172 = tail call i32 @llvm.ctpop.i32(i32 %1171)
  %1173 = trunc i32 %1172 to i8
  %1174 = and i8 %1173, 1
  %1175 = xor i8 %1174, 1
  store i8 %1175, i8* %32, align 1
  %1176 = xor i32 %1164, %1155
  %1177 = xor i32 %1176, %1165
  %1178 = lshr i32 %1177, 4
  %1179 = trunc i32 %1178 to i8
  %1180 = and i8 %1179, 1
  store i8 %1180, i8* %36, align 1
  %1181 = icmp eq i32 %1165, 0
  %1182 = zext i1 %1181 to i8
  store i8 %1182, i8* %33, align 1
  %1183 = lshr i32 %1165, 31
  %1184 = trunc i32 %1183 to i8
  store i8 %1184, i8* %34, align 1
  %1185 = lshr i32 %1155, 31
  %1186 = lshr i32 %1164, 31
  %1187 = xor i32 %1183, %1185
  %1188 = xor i32 %1183, %1186
  %1189 = add nuw nsw i32 %1187, %1188
  %1190 = icmp eq i32 %1189, 2
  %1191 = zext i1 %1190 to i8
  store i8 %1191, i8* %35, align 1
  %1192 = sext i32 %1165 to i64
  store i64 %1192, i64* %RCX.i108, align 8
  %1193 = shl nsw i64 %1192, 2
  %1194 = add nsw i64 %1193, 8807744
  %1195 = add i64 %1151, 25
  store i64 %1195, i64* %3, align 8
  %1196 = inttoptr i64 %1194 to i32*
  %1197 = load i32, i32* %1196, align 4
  %1198 = add i32 %1197, -4
  %1199 = icmp ult i32 %1197, 4
  %1200 = zext i1 %1199 to i8
  store i8 %1200, i8* %31, align 1
  %1201 = and i32 %1198, 255
  %1202 = tail call i32 @llvm.ctpop.i32(i32 %1201)
  %1203 = trunc i32 %1202 to i8
  %1204 = and i8 %1203, 1
  %1205 = xor i8 %1204, 1
  store i8 %1205, i8* %32, align 1
  %1206 = xor i32 %1198, %1197
  %1207 = lshr i32 %1206, 4
  %1208 = trunc i32 %1207 to i8
  %1209 = and i8 %1208, 1
  store i8 %1209, i8* %36, align 1
  %1210 = icmp eq i32 %1198, 0
  %1211 = zext i1 %1210 to i8
  store i8 %1211, i8* %33, align 1
  %1212 = lshr i32 %1198, 31
  %1213 = trunc i32 %1212 to i8
  store i8 %1213, i8* %34, align 1
  %1214 = lshr i32 %1197, 31
  %1215 = xor i32 %1212, %1214
  %1216 = add nuw nsw i32 %1215, %1214
  %1217 = icmp eq i32 %1216, 2
  %1218 = zext i1 %1217 to i8
  store i8 %1218, i8* %35, align 1
  %.v84 = select i1 %1210, i64 31, i64 43
  %1219 = add i64 %1151, %.v84
  store i64 %1219, i64* %3, align 8
  br i1 %1210, label %block_401ac2, label %block_.L_401ace

block_401ac2:                                     ; preds = %block_401aa3
  %1220 = add i64 %1123, -4
  %1221 = add i64 %1219, 7
  store i64 %1221, i64* %3, align 8
  %1222 = inttoptr i64 %1220 to i32*
  store i32 1, i32* %1222, align 4
  %1223 = load i64, i64* %3, align 8
  %1224 = add i64 %1223, 197
  store i64 %1224, i64* %3, align 8
  br label %block_.L_401b8e

block_.L_401ace:                                  ; preds = %block_401aa3
  %1225 = add i64 %1219, 8
  store i64 %1225, i64* %3, align 8
  %1226 = load i32, i32* %1126, align 4
  %1227 = add i32 %1226, 1
  %1228 = zext i32 %1227 to i64
  store i64 %1228, i64* %RAX.i203, align 8
  %1229 = icmp eq i32 %1226, -1
  %1230 = icmp eq i32 %1227, 0
  %1231 = or i1 %1229, %1230
  %1232 = zext i1 %1231 to i8
  store i8 %1232, i8* %31, align 1
  %1233 = and i32 %1227, 255
  %1234 = tail call i32 @llvm.ctpop.i32(i32 %1233)
  %1235 = trunc i32 %1234 to i8
  %1236 = and i8 %1235, 1
  %1237 = xor i8 %1236, 1
  store i8 %1237, i8* %32, align 1
  %1238 = xor i32 %1227, %1226
  %1239 = lshr i32 %1238, 4
  %1240 = trunc i32 %1239 to i8
  %1241 = and i8 %1240, 1
  store i8 %1241, i8* %36, align 1
  %1242 = zext i1 %1230 to i8
  store i8 %1242, i8* %33, align 1
  %1243 = lshr i32 %1227, 31
  %1244 = trunc i32 %1243 to i8
  store i8 %1244, i8* %34, align 1
  %1245 = lshr i32 %1226, 31
  %1246 = xor i32 %1243, %1245
  %1247 = add nuw nsw i32 %1246, %1243
  %1248 = icmp eq i32 %1247, 2
  %1249 = zext i1 %1248 to i8
  store i8 %1249, i8* %35, align 1
  %1250 = add i64 %1219, 14
  store i64 %1250, i64* %3, align 8
  store i32 %1227, i32* %1126, align 4
  %1251 = load i64, i64* %3, align 8
  %1252 = add i64 %1251, -67
  store i64 %1252, i64* %3, align 8
  br label %block_.L_401a99

block_.L_401ae1:                                  ; preds = %block_.L_401a99
  %1253 = add i64 %1151, 7
  store i64 %1253, i64* %3, align 8
  store i32 0, i32* %1126, align 4
  %.pre78 = load i64, i64* %3, align 8
  br label %block_.L_401ae8

block_.L_401ae8:                                  ; preds = %block_.L_401b74, %block_.L_401ae1
  %1254 = phi i64 [ %1539, %block_.L_401b74 ], [ %.pre78, %block_.L_401ae1 ]
  %1255 = load i64, i64* %RBP.i, align 8
  %1256 = add i64 %1255, -28
  %1257 = add i64 %1254, 4
  store i64 %1257, i64* %3, align 8
  %1258 = inttoptr i64 %1256 to i32*
  %1259 = load i32, i32* %1258, align 4
  %1260 = add i32 %1259, -4
  %1261 = icmp ult i32 %1259, 4
  %1262 = zext i1 %1261 to i8
  store i8 %1262, i8* %31, align 1
  %1263 = and i32 %1260, 255
  %1264 = tail call i32 @llvm.ctpop.i32(i32 %1263)
  %1265 = trunc i32 %1264 to i8
  %1266 = and i8 %1265, 1
  %1267 = xor i8 %1266, 1
  store i8 %1267, i8* %32, align 1
  %1268 = xor i32 %1260, %1259
  %1269 = lshr i32 %1268, 4
  %1270 = trunc i32 %1269 to i8
  %1271 = and i8 %1270, 1
  store i8 %1271, i8* %36, align 1
  %1272 = icmp eq i32 %1260, 0
  %1273 = zext i1 %1272 to i8
  store i8 %1273, i8* %33, align 1
  %1274 = lshr i32 %1260, 31
  %1275 = trunc i32 %1274 to i8
  store i8 %1275, i8* %34, align 1
  %1276 = lshr i32 %1259, 31
  %1277 = xor i32 %1274, %1276
  %1278 = add nuw nsw i32 %1277, %1276
  %1279 = icmp eq i32 %1278, 2
  %1280 = zext i1 %1279 to i8
  store i8 %1280, i8* %35, align 1
  %1281 = icmp ne i8 %1275, 0
  %1282 = xor i1 %1281, %1279
  %.v99 = select i1 %1282, i64 10, i64 159
  %1283 = add i64 %1254, %.v99
  store i64 %1283, i64* %3, align 8
  br i1 %1282, label %block_401af2, label %block_.L_401b87

block_401af2:                                     ; preds = %block_.L_401ae8
  %1284 = add i64 %1283, 4
  store i64 %1284, i64* %3, align 8
  %1285 = load i32, i32* %1258, align 4
  %1286 = sext i32 %1285 to i64
  store i64 %1286, i64* %RAX.i203, align 8
  %1287 = shl nsw i64 %1286, 2
  %1288 = add nsw i64 %1287, 4347328
  %1289 = add i64 %1283, 11
  store i64 %1289, i64* %3, align 8
  %1290 = inttoptr i64 %1288 to i32*
  %1291 = load i32, i32* %1290, align 4
  %1292 = zext i32 %1291 to i64
  store i64 %1292, i64* %RCX.i201, align 8
  %1293 = add i64 %1255, -16
  %1294 = add i64 %1283, 14
  store i64 %1294, i64* %3, align 8
  %1295 = inttoptr i64 %1293 to i32*
  store i32 %1291, i32* %1295, align 4
  %1296 = load i64, i64* %RBP.i, align 8
  %1297 = add i64 %1296, -8
  %1298 = load i64, i64* %3, align 8
  %1299 = add i64 %1298, 3
  store i64 %1299, i64* %3, align 8
  %1300 = inttoptr i64 %1297 to i32*
  %1301 = load i32, i32* %1300, align 4
  %1302 = zext i32 %1301 to i64
  store i64 %1302, i64* %RCX.i201, align 8
  %1303 = add i64 %1296, -28
  %1304 = add i64 %1298, 7
  store i64 %1304, i64* %3, align 8
  %1305 = inttoptr i64 %1303 to i32*
  %1306 = load i32, i32* %1305, align 4
  %1307 = sext i32 %1306 to i64
  store i64 %1307, i64* %RAX.i203, align 8
  %1308 = shl nsw i64 %1307, 2
  %1309 = add nsw i64 %1308, 4347328
  %1310 = add i64 %1298, 14
  store i64 %1310, i64* %3, align 8
  %1311 = inttoptr i64 %1309 to i32*
  %1312 = load i32, i32* %1311, align 4
  %1313 = add i32 %1312, %1301
  %1314 = zext i32 %1313 to i64
  store i64 %1314, i64* %RCX.i201, align 8
  %1315 = icmp ult i32 %1313, %1301
  %1316 = icmp ult i32 %1313, %1312
  %1317 = or i1 %1315, %1316
  %1318 = zext i1 %1317 to i8
  store i8 %1318, i8* %31, align 1
  %1319 = and i32 %1313, 255
  %1320 = tail call i32 @llvm.ctpop.i32(i32 %1319)
  %1321 = trunc i32 %1320 to i8
  %1322 = and i8 %1321, 1
  %1323 = xor i8 %1322, 1
  store i8 %1323, i8* %32, align 1
  %1324 = xor i32 %1312, %1301
  %1325 = xor i32 %1324, %1313
  %1326 = lshr i32 %1325, 4
  %1327 = trunc i32 %1326 to i8
  %1328 = and i8 %1327, 1
  store i8 %1328, i8* %36, align 1
  %1329 = icmp eq i32 %1313, 0
  %1330 = zext i1 %1329 to i8
  store i8 %1330, i8* %33, align 1
  %1331 = lshr i32 %1313, 31
  %1332 = trunc i32 %1331 to i8
  store i8 %1332, i8* %34, align 1
  %1333 = lshr i32 %1301, 31
  %1334 = lshr i32 %1312, 31
  %1335 = xor i32 %1331, %1333
  %1336 = xor i32 %1331, %1334
  %1337 = add nuw nsw i32 %1335, %1336
  %1338 = icmp eq i32 %1337, 2
  %1339 = zext i1 %1338 to i8
  store i8 %1339, i8* %35, align 1
  %1340 = add i64 %1296, -20
  %1341 = add i64 %1298, 17
  store i64 %1341, i64* %3, align 8
  %1342 = inttoptr i64 %1340 to i32*
  store i32 %1313, i32* %1342, align 4
  %1343 = load i64, i64* %RBP.i, align 8
  %1344 = add i64 %1343, -20
  %1345 = load i64, i64* %3, align 8
  %1346 = add i64 %1345, 4
  store i64 %1346, i64* %3, align 8
  %1347 = inttoptr i64 %1344 to i32*
  %1348 = load i32, i32* %1347, align 4
  %1349 = sext i32 %1348 to i64
  store i64 %1349, i64* %RAX.i203, align 8
  %1350 = shl nsw i64 %1349, 2
  %1351 = add nsw i64 %1350, 8807744
  %1352 = add i64 %1345, 11
  store i64 %1352, i64* %3, align 8
  %1353 = inttoptr i64 %1351 to i32*
  %1354 = load i32, i32* %1353, align 4
  %1355 = zext i32 %1354 to i64
  store i64 %1355, i64* %RCX.i201, align 8
  %1356 = add i64 %1343, -24
  %1357 = add i64 %1345, 14
  store i64 %1357, i64* %3, align 8
  %1358 = inttoptr i64 %1356 to i32*
  store i32 %1354, i32* %1358, align 4
  %.pre79 = load i64, i64* %3, align 8
  br label %block_.L_401b1f

block_.L_401b1f:                                  ; preds = %block_.L_401b58, %block_401af2
  %1359 = phi i64 [ %1508, %block_.L_401b58 ], [ %.pre79, %block_401af2 ]
  %1360 = load i64, i64* %RBP.i, align 8
  %1361 = add i64 %1360, -24
  %1362 = add i64 %1359, 4
  store i64 %1362, i64* %3, align 8
  %1363 = inttoptr i64 %1361 to i32*
  %1364 = load i32, i32* %1363, align 4
  store i8 0, i8* %31, align 1
  %1365 = and i32 %1364, 255
  %1366 = tail call i32 @llvm.ctpop.i32(i32 %1365)
  %1367 = trunc i32 %1366 to i8
  %1368 = and i8 %1367, 1
  %1369 = xor i8 %1368, 1
  store i8 %1369, i8* %32, align 1
  store i8 0, i8* %36, align 1
  %1370 = icmp eq i32 %1364, 0
  %1371 = zext i1 %1370 to i8
  store i8 %1371, i8* %33, align 1
  %1372 = lshr i32 %1364, 31
  %1373 = trunc i32 %1372 to i8
  store i8 %1373, i8* %34, align 1
  store i8 0, i8* %35, align 1
  %.v100 = select i1 %1370, i64 85, i64 10
  %1374 = add i64 %1359, %.v100
  store i64 %1374, i64* %3, align 8
  br i1 %1370, label %block_.L_401b74.loopexit, label %block_401b29

block_401b29:                                     ; preds = %block_.L_401b1f
  %1375 = add i64 %1374, 4
  store i64 %1375, i64* %3, align 8
  %1376 = load i32, i32* %1363, align 4
  %1377 = add i32 %1376, -8
  %1378 = icmp ult i32 %1376, 8
  %1379 = zext i1 %1378 to i8
  store i8 %1379, i8* %31, align 1
  %1380 = and i32 %1377, 255
  %1381 = tail call i32 @llvm.ctpop.i32(i32 %1380)
  %1382 = trunc i32 %1381 to i8
  %1383 = and i8 %1382, 1
  %1384 = xor i8 %1383, 1
  store i8 %1384, i8* %32, align 1
  %1385 = xor i32 %1377, %1376
  %1386 = lshr i32 %1385, 4
  %1387 = trunc i32 %1386 to i8
  %1388 = and i8 %1387, 1
  store i8 %1388, i8* %36, align 1
  %1389 = icmp eq i32 %1377, 0
  %1390 = zext i1 %1389 to i8
  store i8 %1390, i8* %33, align 1
  %1391 = lshr i32 %1377, 31
  %1392 = trunc i32 %1391 to i8
  store i8 %1392, i8* %34, align 1
  %1393 = lshr i32 %1376, 31
  %1394 = xor i32 %1391, %1393
  %1395 = add nuw nsw i32 %1394, %1393
  %1396 = icmp eq i32 %1395, 2
  %1397 = zext i1 %1396 to i8
  store i8 %1397, i8* %35, align 1
  %.v101 = select i1 %1389, i64 20, i64 10
  %1398 = add i64 %1374, %.v101
  store i64 %1398, i64* %3, align 8
  br i1 %1389, label %block_.L_401b3d, label %block_401b33

block_401b33:                                     ; preds = %block_401b29
  %1399 = add i64 %1398, 4
  store i64 %1399, i64* %3, align 8
  %1400 = load i32, i32* %1363, align 4
  %1401 = add i32 %1400, -10
  %1402 = icmp ult i32 %1400, 10
  %1403 = zext i1 %1402 to i8
  store i8 %1403, i8* %31, align 1
  %1404 = and i32 %1401, 255
  %1405 = tail call i32 @llvm.ctpop.i32(i32 %1404)
  %1406 = trunc i32 %1405 to i8
  %1407 = and i8 %1406, 1
  %1408 = xor i8 %1407, 1
  store i8 %1408, i8* %32, align 1
  %1409 = xor i32 %1401, %1400
  %1410 = lshr i32 %1409, 4
  %1411 = trunc i32 %1410 to i8
  %1412 = and i8 %1411, 1
  store i8 %1412, i8* %36, align 1
  %1413 = icmp eq i32 %1401, 0
  %1414 = zext i1 %1413 to i8
  store i8 %1414, i8* %33, align 1
  %1415 = lshr i32 %1401, 31
  %1416 = trunc i32 %1415 to i8
  store i8 %1416, i8* %34, align 1
  %1417 = lshr i32 %1400, 31
  %1418 = xor i32 %1415, %1417
  %1419 = add nuw nsw i32 %1418, %1417
  %1420 = icmp eq i32 %1419, 2
  %1421 = zext i1 %1420 to i8
  store i8 %1421, i8* %35, align 1
  %.v102 = select i1 %1413, i64 10, i64 22
  %1422 = add i64 %1398, %.v102
  store i64 %1422, i64* %3, align 8
  br i1 %1413, label %block_.L_401b3d, label %block_.L_401b49

block_.L_401b3d:                                  ; preds = %block_401b33, %block_401b29
  %1423 = phi i64 [ %1422, %block_401b33 ], [ %1398, %block_401b29 ]
  %1424 = add i64 %1360, -4
  %1425 = add i64 %1423, 7
  store i64 %1425, i64* %3, align 8
  %1426 = inttoptr i64 %1424 to i32*
  store i32 1, i32* %1426, align 4
  %1427 = load i64, i64* %3, align 8
  %1428 = add i64 %1427, 74
  store i64 %1428, i64* %3, align 8
  br label %block_.L_401b8e

block_.L_401b49:                                  ; preds = %block_401b33
  %1429 = add i64 %1422, 4
  store i64 %1429, i64* %3, align 8
  %1430 = load i32, i32* %1363, align 4
  %1431 = add i32 %1430, -13
  %1432 = icmp ult i32 %1430, 13
  %1433 = zext i1 %1432 to i8
  store i8 %1433, i8* %31, align 1
  %1434 = and i32 %1431, 255
  %1435 = tail call i32 @llvm.ctpop.i32(i32 %1434)
  %1436 = trunc i32 %1435 to i8
  %1437 = and i8 %1436, 1
  %1438 = xor i8 %1437, 1
  store i8 %1438, i8* %32, align 1
  %1439 = xor i32 %1431, %1430
  %1440 = lshr i32 %1439, 4
  %1441 = trunc i32 %1440 to i8
  %1442 = and i8 %1441, 1
  store i8 %1442, i8* %36, align 1
  %1443 = icmp eq i32 %1431, 0
  %1444 = zext i1 %1443 to i8
  store i8 %1444, i8* %33, align 1
  %1445 = lshr i32 %1431, 31
  %1446 = trunc i32 %1445 to i8
  store i8 %1446, i8* %34, align 1
  %1447 = lshr i32 %1430, 31
  %1448 = xor i32 %1445, %1447
  %1449 = add nuw nsw i32 %1448, %1447
  %1450 = icmp eq i32 %1449, 2
  %1451 = zext i1 %1450 to i8
  store i8 %1451, i8* %35, align 1
  %.v103 = select i1 %1443, i64 15, i64 10
  %1452 = add i64 %1422, %.v103
  store i64 %1452, i64* %3, align 8
  br i1 %1443, label %block_.L_401b58, label %block_401b53

block_401b53:                                     ; preds = %block_.L_401b49
  %1453 = add i64 %1452, 33
  store i64 %1453, i64* %3, align 8
  br label %block_.L_401b74

block_.L_401b58:                                  ; preds = %block_.L_401b49
  %1454 = add i64 %1360, -16
  %1455 = add i64 %1452, 3
  store i64 %1455, i64* %3, align 8
  %1456 = inttoptr i64 %1454 to i32*
  %1457 = load i32, i32* %1456, align 4
  %1458 = zext i32 %1457 to i64
  store i64 %1458, i64* %RAX.i203, align 8
  %1459 = add i64 %1360, -20
  %1460 = add i64 %1452, 6
  store i64 %1460, i64* %3, align 8
  %1461 = inttoptr i64 %1459 to i32*
  %1462 = load i32, i32* %1461, align 4
  %1463 = add i32 %1462, %1457
  %1464 = zext i32 %1463 to i64
  store i64 %1464, i64* %RAX.i203, align 8
  %1465 = icmp ult i32 %1463, %1457
  %1466 = icmp ult i32 %1463, %1462
  %1467 = or i1 %1465, %1466
  %1468 = zext i1 %1467 to i8
  store i8 %1468, i8* %31, align 1
  %1469 = and i32 %1463, 255
  %1470 = tail call i32 @llvm.ctpop.i32(i32 %1469)
  %1471 = trunc i32 %1470 to i8
  %1472 = and i8 %1471, 1
  %1473 = xor i8 %1472, 1
  store i8 %1473, i8* %32, align 1
  %1474 = xor i32 %1462, %1457
  %1475 = xor i32 %1474, %1463
  %1476 = lshr i32 %1475, 4
  %1477 = trunc i32 %1476 to i8
  %1478 = and i8 %1477, 1
  store i8 %1478, i8* %36, align 1
  %1479 = icmp eq i32 %1463, 0
  %1480 = zext i1 %1479 to i8
  store i8 %1480, i8* %33, align 1
  %1481 = lshr i32 %1463, 31
  %1482 = trunc i32 %1481 to i8
  store i8 %1482, i8* %34, align 1
  %1483 = lshr i32 %1457, 31
  %1484 = lshr i32 %1462, 31
  %1485 = xor i32 %1481, %1483
  %1486 = xor i32 %1481, %1484
  %1487 = add nuw nsw i32 %1485, %1486
  %1488 = icmp eq i32 %1487, 2
  %1489 = zext i1 %1488 to i8
  store i8 %1489, i8* %35, align 1
  %1490 = add i64 %1452, 9
  store i64 %1490, i64* %3, align 8
  store i32 %1463, i32* %1461, align 4
  %1491 = load i64, i64* %RBP.i, align 8
  %1492 = add i64 %1491, -20
  %1493 = load i64, i64* %3, align 8
  %1494 = add i64 %1493, 4
  store i64 %1494, i64* %3, align 8
  %1495 = inttoptr i64 %1492 to i32*
  %1496 = load i32, i32* %1495, align 4
  %1497 = sext i32 %1496 to i64
  store i64 %1497, i64* %RCX.i201, align 8
  %1498 = shl nsw i64 %1497, 2
  %1499 = add nsw i64 %1498, 8807744
  %1500 = add i64 %1493, 11
  store i64 %1500, i64* %3, align 8
  %1501 = inttoptr i64 %1499 to i32*
  %1502 = load i32, i32* %1501, align 4
  %1503 = zext i32 %1502 to i64
  store i64 %1503, i64* %RAX.i203, align 8
  %1504 = add i64 %1491, -24
  %1505 = add i64 %1493, 14
  store i64 %1505, i64* %3, align 8
  %1506 = inttoptr i64 %1504 to i32*
  store i32 %1502, i32* %1506, align 4
  %1507 = load i64, i64* %3, align 8
  %1508 = add i64 %1507, -80
  store i64 %1508, i64* %3, align 8
  br label %block_.L_401b1f

block_.L_401b74.loopexit:                         ; preds = %block_.L_401b1f
  br label %block_.L_401b74

block_.L_401b74:                                  ; preds = %block_.L_401b74.loopexit, %block_401b53
  %1509 = phi i64 [ %1453, %block_401b53 ], [ %1374, %block_.L_401b74.loopexit ]
  %1510 = add i64 %1360, -28
  %1511 = add i64 %1509, 8
  store i64 %1511, i64* %3, align 8
  %1512 = inttoptr i64 %1510 to i32*
  %1513 = load i32, i32* %1512, align 4
  %1514 = add i32 %1513, 1
  %1515 = zext i32 %1514 to i64
  store i64 %1515, i64* %RAX.i203, align 8
  %1516 = icmp eq i32 %1513, -1
  %1517 = icmp eq i32 %1514, 0
  %1518 = or i1 %1516, %1517
  %1519 = zext i1 %1518 to i8
  store i8 %1519, i8* %31, align 1
  %1520 = and i32 %1514, 255
  %1521 = tail call i32 @llvm.ctpop.i32(i32 %1520)
  %1522 = trunc i32 %1521 to i8
  %1523 = and i8 %1522, 1
  %1524 = xor i8 %1523, 1
  store i8 %1524, i8* %32, align 1
  %1525 = xor i32 %1514, %1513
  %1526 = lshr i32 %1525, 4
  %1527 = trunc i32 %1526 to i8
  %1528 = and i8 %1527, 1
  store i8 %1528, i8* %36, align 1
  %1529 = zext i1 %1517 to i8
  store i8 %1529, i8* %33, align 1
  %1530 = lshr i32 %1514, 31
  %1531 = trunc i32 %1530 to i8
  store i8 %1531, i8* %34, align 1
  %1532 = lshr i32 %1513, 31
  %1533 = xor i32 %1530, %1532
  %1534 = add nuw nsw i32 %1533, %1530
  %1535 = icmp eq i32 %1534, 2
  %1536 = zext i1 %1535 to i8
  store i8 %1536, i8* %35, align 1
  %1537 = add i64 %1509, 14
  store i64 %1537, i64* %3, align 8
  store i32 %1514, i32* %1512, align 4
  %1538 = load i64, i64* %3, align 8
  %1539 = add i64 %1538, -154
  store i64 %1539, i64* %3, align 8
  br label %block_.L_401ae8

block_.L_401b87:                                  ; preds = %block_.L_401ae8
  %1540 = add i64 %1255, -4
  %1541 = add i64 %1283, 7
  store i64 %1541, i64* %3, align 8
  %1542 = inttoptr i64 %1540 to i32*
  store i32 0, i32* %1542, align 4
  %.pre81 = load i64, i64* %3, align 8
  br label %block_.L_401b8e

block_.L_401b8e:                                  ; preds = %block_.L_401b87, %block_.L_401b3d, %block_401ac2, %block_.L_401a48, %block_401a19, %block_.L_4019be, %block_.L_401974, %block_401901, %block_.L_401887, %block_401858
  %1543 = phi i64 [ %.pre81, %block_.L_401b87 ], [ %1428, %block_.L_401b3d ], [ %1224, %block_401ac2 ], [ %1008, %block_.L_401a48 ], [ %937, %block_401a19 ], [ %792, %block_.L_4019be ], [ %676, %block_.L_401974 ], [ %478, %block_401901 ], [ %262, %block_.L_401887 ], [ %191, %block_401858 ]
  %RAX.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %1544 = load i64, i64* %RBP.i, align 8
  %1545 = add i64 %1544, -4
  %1546 = add i64 %1543, 3
  store i64 %1546, i64* %3, align 8
  %1547 = inttoptr i64 %1545 to i32*
  %1548 = load i32, i32* %1547, align 4
  %1549 = zext i32 %1548 to i64
  store i64 %1549, i64* %RAX.i, align 8
  %1550 = add i64 %1543, 4
  store i64 %1550, i64* %3, align 8
  %1551 = load i64, i64* %6, align 8
  %1552 = add i64 %1551, 8
  %1553 = inttoptr i64 %1551 to i64*
  %1554 = load i64, i64* %1553, align 8
  store i64 %1554, i64* %RBP.i, align 8
  store i64 %1552, i64* %6, align 8
  %1555 = add i64 %1543, 5
  store i64 %1555, i64* %3, align 8
  %1556 = inttoptr i64 %1552 to i64*
  %1557 = load i64, i64* %1556, align 8
  store i64 %1557, i64* %3, align 8
  %1558 = add i64 %1551, 16
  store i64 %1558, i64* %6, align 8
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
define %struct.Memory* @routine_je_.L_4019ca(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_4018d1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x425590___rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 4347280
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
define %struct.Memory* @routine_jne_.L_401864(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_401864(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_401b8e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_401869(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_4018be(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_401887(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_401893(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_4018a2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4018be(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4018c3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_401810(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_401920(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addl_0x4255a0___rcx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 4347296
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
define %struct.Memory* @routine_jne_.L_40190d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_401912(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4018d8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_4019be(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x4255c0___rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 4347328
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
define %struct.Memory* @routine_je_.L_4019ab(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_401974(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_401980(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_40198f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4019ab(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_401956(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4019b0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_401927(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_401a92(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_401a25(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_401a2a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_401a7f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_401a48(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_401a54(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_401a63(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_401a7f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_401a84(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4019d1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_401ae1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_401ace(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_401ad3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_401a99(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_401b87(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addl_0x4255c0___rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 4347328
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
define %struct.Memory* @routine_je_.L_401b74(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_401b3d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_401b49(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_401b58(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_401b74(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_401b1f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_401b79(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_401ae8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
