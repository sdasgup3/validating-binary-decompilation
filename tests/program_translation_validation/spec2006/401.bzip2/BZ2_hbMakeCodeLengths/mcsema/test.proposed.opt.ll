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

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare %struct.Memory* @sub_404f20.BZ2_bz__AssertH__fail(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @BZ2_hbMakeCodeLengths(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -5304
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 5296
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
  %RDI.i877 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %40 = add i64 %7, -16
  %41 = load i64, i64* %RDI.i877, align 8
  %42 = add i64 %10, 14
  store i64 %42, i64* %3, align 8
  %43 = inttoptr i64 %40 to i64*
  store i64 %41, i64* %43, align 8
  %RSI.i874 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %44 = load i64, i64* %RBP.i, align 8
  %45 = add i64 %44, -16
  %46 = load i64, i64* %RSI.i874, align 8
  %47 = load i64, i64* %3, align 8
  %48 = add i64 %47, 4
  store i64 %48, i64* %3, align 8
  %49 = inttoptr i64 %45 to i64*
  store i64 %46, i64* %49, align 8
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX.i871 = bitcast %union.anon* %50 to i32*
  %51 = load i64, i64* %RBP.i, align 8
  %52 = add i64 %51, -20
  %53 = load i32, i32* %EDX.i871, align 4
  %54 = load i64, i64* %3, align 8
  %55 = add i64 %54, 3
  store i64 %55, i64* %3, align 8
  %56 = inttoptr i64 %52 to i32*
  store i32 %53, i32* %56, align 4
  %57 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX.i868 = bitcast %union.anon* %57 to i32*
  %58 = load i64, i64* %RBP.i, align 8
  %59 = add i64 %58, -24
  %60 = load i32, i32* %ECX.i868, align 4
  %61 = load i64, i64* %3, align 8
  %62 = add i64 %61, 3
  store i64 %62, i64* %3, align 8
  %63 = inttoptr i64 %59 to i32*
  store i32 %60, i32* %63, align 4
  %64 = load i64, i64* %RBP.i, align 8
  %65 = add i64 %64, -44
  %66 = load i64, i64* %3, align 8
  %67 = add i64 %66, 7
  store i64 %67, i64* %3, align 8
  %68 = inttoptr i64 %65 to i32*
  store i32 0, i32* %68, align 4
  %69 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i863 = getelementptr inbounds %union.anon, %union.anon* %69, i64 0, i32 0
  %EAX.i860 = bitcast %union.anon* %69 to i32*
  %RCX.i853 = getelementptr inbounds %union.anon, %union.anon* %57, i64 0, i32 0
  %RDX.i835 = getelementptr inbounds %union.anon, %union.anon* %50, i64 0, i32 0
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_4137d0

block_.L_4137d0:                                  ; preds = %block_.L_41380f, %entry
  %70 = phi i64 [ %229, %block_.L_41380f ], [ %.pre, %entry ]
  %71 = load i64, i64* %RBP.i, align 8
  %72 = add i64 %71, -44
  %73 = add i64 %70, 3
  store i64 %73, i64* %3, align 8
  %74 = inttoptr i64 %72 to i32*
  %75 = load i32, i32* %74, align 4
  %76 = zext i32 %75 to i64
  store i64 %76, i64* %RAX.i863, align 8
  %77 = add i64 %71, -20
  %78 = add i64 %70, 6
  store i64 %78, i64* %3, align 8
  %79 = inttoptr i64 %77 to i32*
  %80 = load i32, i32* %79, align 4
  %81 = sub i32 %75, %80
  %82 = icmp ult i32 %75, %80
  %83 = zext i1 %82 to i8
  store i8 %83, i8* %14, align 1
  %84 = and i32 %81, 255
  %85 = tail call i32 @llvm.ctpop.i32(i32 %84)
  %86 = trunc i32 %85 to i8
  %87 = and i8 %86, 1
  %88 = xor i8 %87, 1
  store i8 %88, i8* %21, align 1
  %89 = xor i32 %80, %75
  %90 = xor i32 %89, %81
  %91 = lshr i32 %90, 4
  %92 = trunc i32 %91 to i8
  %93 = and i8 %92, 1
  store i8 %93, i8* %27, align 1
  %94 = icmp eq i32 %81, 0
  %95 = zext i1 %94 to i8
  store i8 %95, i8* %30, align 1
  %96 = lshr i32 %81, 31
  %97 = trunc i32 %96 to i8
  store i8 %97, i8* %33, align 1
  %98 = lshr i32 %75, 31
  %99 = lshr i32 %80, 31
  %100 = xor i32 %99, %98
  %101 = xor i32 %96, %98
  %102 = add nuw nsw i32 %101, %100
  %103 = icmp eq i32 %102, 2
  %104 = zext i1 %103 to i8
  store i8 %104, i8* %39, align 1
  %105 = icmp ne i8 %97, 0
  %106 = xor i1 %105, %103
  %.v90 = select i1 %106, i64 12, i64 102
  %107 = add i64 %70, %.v90
  store i64 %107, i64* %3, align 8
  br i1 %106, label %block_4137dc, label %block_.L_413836

block_4137dc:                                     ; preds = %block_.L_4137d0
  %108 = add i64 %71, -16
  %109 = add i64 %107, 4
  store i64 %109, i64* %3, align 8
  %110 = inttoptr i64 %108 to i64*
  %111 = load i64, i64* %110, align 8
  store i64 %111, i64* %RAX.i863, align 8
  %112 = add i64 %107, 8
  store i64 %112, i64* %3, align 8
  %113 = load i32, i32* %74, align 4
  %114 = sext i32 %113 to i64
  store i64 %114, i64* %RCX.i853, align 8
  %115 = shl nsw i64 %114, 2
  %116 = add i64 %115, %111
  %117 = add i64 %107, 12
  store i64 %117, i64* %3, align 8
  %118 = inttoptr i64 %116 to i32*
  %119 = load i32, i32* %118, align 4
  store i8 0, i8* %14, align 1
  %120 = and i32 %119, 255
  %121 = tail call i32 @llvm.ctpop.i32(i32 %120)
  %122 = trunc i32 %121 to i8
  %123 = and i8 %122, 1
  %124 = xor i8 %123, 1
  store i8 %124, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %125 = icmp eq i32 %119, 0
  %126 = zext i1 %125 to i8
  store i8 %126, i8* %30, align 1
  %127 = lshr i32 %119, 31
  %128 = trunc i32 %127 to i8
  store i8 %128, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v109 = select i1 %125, i64 18, i64 34
  %129 = add i64 %107, %.v109
  store i64 %129, i64* %3, align 8
  br i1 %125, label %block_4137ee, label %block_.L_4137fe

block_4137ee:                                     ; preds = %block_4137dc
  store i64 1, i64* %RAX.i863, align 8
  %130 = add i64 %71, -5276
  %131 = add i64 %129, 11
  store i64 %131, i64* %3, align 8
  %132 = inttoptr i64 %130 to i32*
  store i32 1, i32* %132, align 4
  %133 = load i64, i64* %3, align 8
  %134 = add i64 %133, 22
  store i64 %134, i64* %3, align 8
  br label %block_.L_41380f

block_.L_4137fe:                                  ; preds = %block_4137dc
  %135 = add i64 %129, 4
  store i64 %135, i64* %3, align 8
  %136 = load i64, i64* %110, align 8
  store i64 %136, i64* %RAX.i863, align 8
  %137 = add i64 %129, 8
  store i64 %137, i64* %3, align 8
  %138 = load i32, i32* %74, align 4
  %139 = sext i32 %138 to i64
  store i64 %139, i64* %RCX.i853, align 8
  %140 = shl nsw i64 %139, 2
  %141 = add i64 %140, %136
  %142 = add i64 %129, 11
  store i64 %142, i64* %3, align 8
  %143 = inttoptr i64 %141 to i32*
  %144 = load i32, i32* %143, align 4
  %145 = zext i32 %144 to i64
  store i64 %145, i64* %RDX.i835, align 8
  %146 = add i64 %71, -5276
  %147 = add i64 %129, 17
  store i64 %147, i64* %3, align 8
  %148 = inttoptr i64 %146 to i32*
  store i32 %144, i32* %148, align 4
  %.pre87 = load i64, i64* %3, align 8
  br label %block_.L_41380f

block_.L_41380f:                                  ; preds = %block_.L_4137fe, %block_4137ee
  %149 = phi i64 [ %.pre87, %block_.L_4137fe ], [ %134, %block_4137ee ]
  %150 = load i64, i64* %RBP.i, align 8
  %151 = add i64 %150, -5276
  %152 = add i64 %149, 6
  store i64 %152, i64* %3, align 8
  %153 = inttoptr i64 %151 to i32*
  %154 = load i32, i32* %153, align 4
  %155 = shl i32 %154, 8
  %156 = zext i32 %155 to i64
  store i64 %156, i64* %RAX.i863, align 8
  %157 = lshr i32 %154, 24
  %158 = trunc i32 %157 to i8
  %159 = and i8 %158, 1
  store i8 %159, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %160 = icmp eq i32 %155, 0
  %161 = zext i1 %160 to i8
  store i8 %161, i8* %30, align 1
  %162 = lshr i32 %154, 23
  %163 = trunc i32 %162 to i8
  %164 = and i8 %163, 1
  store i8 %164, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %165 = add i64 %150, -44
  %166 = add i64 %149, 12
  store i64 %166, i64* %3, align 8
  %167 = inttoptr i64 %165 to i32*
  %168 = load i32, i32* %167, align 4
  %169 = add i32 %168, 1
  %170 = zext i32 %169 to i64
  store i64 %170, i64* %RCX.i853, align 8
  %171 = icmp eq i32 %168, -1
  %172 = icmp eq i32 %169, 0
  %173 = or i1 %171, %172
  %174 = zext i1 %173 to i8
  store i8 %174, i8* %14, align 1
  %175 = and i32 %169, 255
  %176 = tail call i32 @llvm.ctpop.i32(i32 %175)
  %177 = trunc i32 %176 to i8
  %178 = and i8 %177, 1
  %179 = xor i8 %178, 1
  store i8 %179, i8* %21, align 1
  %180 = xor i32 %169, %168
  %181 = lshr i32 %180, 4
  %182 = trunc i32 %181 to i8
  %183 = and i8 %182, 1
  store i8 %183, i8* %27, align 1
  %184 = zext i1 %172 to i8
  store i8 %184, i8* %30, align 1
  %185 = lshr i32 %169, 31
  %186 = trunc i32 %185 to i8
  store i8 %186, i8* %33, align 1
  %187 = lshr i32 %168, 31
  %188 = xor i32 %185, %187
  %189 = add nuw nsw i32 %188, %185
  %190 = icmp eq i32 %189, 2
  %191 = zext i1 %190 to i8
  store i8 %191, i8* %39, align 1
  %192 = sext i32 %169 to i64
  store i64 %192, i64* %RDX.i835, align 8
  %193 = shl nsw i64 %192, 2
  %194 = add nsw i64 %193, -3168
  %195 = add i64 %194, %150
  %196 = add i64 %149, 25
  store i64 %196, i64* %3, align 8
  %197 = inttoptr i64 %195 to i32*
  store i32 %155, i32* %197, align 4
  %198 = load i64, i64* %RBP.i, align 8
  %199 = add i64 %198, -44
  %200 = load i64, i64* %3, align 8
  %201 = add i64 %200, 3
  store i64 %201, i64* %3, align 8
  %202 = inttoptr i64 %199 to i32*
  %203 = load i32, i32* %202, align 4
  %204 = add i32 %203, 1
  %205 = zext i32 %204 to i64
  store i64 %205, i64* %RAX.i863, align 8
  %206 = icmp eq i32 %203, -1
  %207 = icmp eq i32 %204, 0
  %208 = or i1 %206, %207
  %209 = zext i1 %208 to i8
  store i8 %209, i8* %14, align 1
  %210 = and i32 %204, 255
  %211 = tail call i32 @llvm.ctpop.i32(i32 %210)
  %212 = trunc i32 %211 to i8
  %213 = and i8 %212, 1
  %214 = xor i8 %213, 1
  store i8 %214, i8* %21, align 1
  %215 = xor i32 %204, %203
  %216 = lshr i32 %215, 4
  %217 = trunc i32 %216 to i8
  %218 = and i8 %217, 1
  store i8 %218, i8* %27, align 1
  %219 = zext i1 %207 to i8
  store i8 %219, i8* %30, align 1
  %220 = lshr i32 %204, 31
  %221 = trunc i32 %220 to i8
  store i8 %221, i8* %33, align 1
  %222 = lshr i32 %203, 31
  %223 = xor i32 %220, %222
  %224 = add nuw nsw i32 %223, %220
  %225 = icmp eq i32 %224, 2
  %226 = zext i1 %225 to i8
  store i8 %226, i8* %39, align 1
  %227 = add i64 %200, 9
  store i64 %227, i64* %3, align 8
  store i32 %204, i32* %202, align 4
  %228 = load i64, i64* %3, align 8
  %229 = add i64 %228, -97
  store i64 %229, i64* %3, align 8
  br label %block_.L_4137d0

block_.L_413836:                                  ; preds = %block_.L_4137d0
  %230 = add i64 %107, 5
  %CL.i104 = bitcast %union.anon* %57 to i8*
  %231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  br label %block_.L_41383b

block_.L_41383b:                                  ; preds = %block_.L_413e50, %block_.L_413836
  %232 = phi i64 [ %71, %block_.L_413836 ], [ %2263, %block_.L_413e50 ]
  %storemerge = phi i64 [ %230, %block_.L_413836 ], [ %2455, %block_.L_413e50 ]
  %MEMORY.2 = phi %struct.Memory* [ %2, %block_.L_413836 ], [ %MEMORY.19, %block_.L_413e50 ]
  %233 = add i64 %232, -20
  %234 = add i64 %storemerge, 3
  store i64 %234, i64* %3, align 8
  %235 = inttoptr i64 %233 to i32*
  %236 = load i32, i32* %235, align 4
  %237 = zext i32 %236 to i64
  store i64 %237, i64* %RAX.i863, align 8
  %238 = add i64 %232, -28
  %239 = add i64 %storemerge, 6
  store i64 %239, i64* %3, align 8
  %240 = inttoptr i64 %238 to i32*
  store i32 %236, i32* %240, align 4
  %241 = load i64, i64* %RBP.i, align 8
  %242 = add i64 %241, -32
  %243 = load i64, i64* %3, align 8
  %244 = add i64 %243, 7
  store i64 %244, i64* %3, align 8
  %245 = inttoptr i64 %242 to i32*
  store i32 0, i32* %245, align 4
  %246 = load i64, i64* %RBP.i, align 8
  %247 = add i64 %246, -1104
  %248 = load i64, i64* %3, align 8
  %249 = add i64 %248, 10
  store i64 %249, i64* %3, align 8
  %250 = inttoptr i64 %247 to i32*
  store i32 0, i32* %250, align 4
  %251 = load i64, i64* %RBP.i, align 8
  %252 = add i64 %251, -3168
  %253 = load i64, i64* %3, align 8
  %254 = add i64 %253, 10
  store i64 %254, i64* %3, align 8
  %255 = inttoptr i64 %252 to i32*
  store i32 0, i32* %255, align 4
  %256 = load i64, i64* %RBP.i, align 8
  %257 = add i64 %256, -5232
  %258 = load i64, i64* %3, align 8
  %259 = add i64 %258, 10
  store i64 %259, i64* %3, align 8
  %260 = inttoptr i64 %257 to i32*
  store i32 -2, i32* %260, align 4
  %261 = load i64, i64* %RBP.i, align 8
  %262 = add i64 %261, -44
  %263 = load i64, i64* %3, align 8
  %264 = add i64 %263, 7
  store i64 %264, i64* %3, align 8
  %265 = inttoptr i64 %262 to i32*
  store i32 1, i32* %265, align 4
  %.pre68 = load i64, i64* %3, align 8
  br label %block_.L_41386d

block_.L_41386d:                                  ; preds = %block_.L_413920, %block_.L_41383b
  %266 = phi i64 [ %571, %block_.L_413920 ], [ %.pre68, %block_.L_41383b ]
  %267 = load i64, i64* %RBP.i, align 8
  %268 = add i64 %267, -44
  %269 = add i64 %266, 3
  store i64 %269, i64* %3, align 8
  %270 = inttoptr i64 %268 to i32*
  %271 = load i32, i32* %270, align 4
  %272 = zext i32 %271 to i64
  store i64 %272, i64* %RAX.i863, align 8
  %273 = add i64 %267, -20
  %274 = add i64 %266, 6
  store i64 %274, i64* %3, align 8
  %275 = inttoptr i64 %273 to i32*
  %276 = load i32, i32* %275, align 4
  %277 = sub i32 %271, %276
  %278 = icmp ult i32 %271, %276
  %279 = zext i1 %278 to i8
  store i8 %279, i8* %14, align 1
  %280 = and i32 %277, 255
  %281 = tail call i32 @llvm.ctpop.i32(i32 %280)
  %282 = trunc i32 %281 to i8
  %283 = and i8 %282, 1
  %284 = xor i8 %283, 1
  store i8 %284, i8* %21, align 1
  %285 = xor i32 %276, %271
  %286 = xor i32 %285, %277
  %287 = lshr i32 %286, 4
  %288 = trunc i32 %287 to i8
  %289 = and i8 %288, 1
  store i8 %289, i8* %27, align 1
  %290 = icmp eq i32 %277, 0
  %291 = zext i1 %290 to i8
  store i8 %291, i8* %30, align 1
  %292 = lshr i32 %277, 31
  %293 = trunc i32 %292 to i8
  store i8 %293, i8* %33, align 1
  %294 = lshr i32 %271, 31
  %295 = lshr i32 %276, 31
  %296 = xor i32 %295, %294
  %297 = xor i32 %292, %294
  %298 = add nuw nsw i32 %297, %296
  %299 = icmp eq i32 %298, 2
  %300 = zext i1 %299 to i8
  store i8 %300, i8* %39, align 1
  %301 = icmp ne i8 %293, 0
  %302 = xor i1 %301, %299
  %.demorgan = or i1 %290, %302
  %.v91 = select i1 %.demorgan, i64 12, i64 213
  %303 = add i64 %266, %.v91
  store i64 %303, i64* %3, align 8
  br i1 %.demorgan, label %block_413879, label %block_.L_413942

block_413879:                                     ; preds = %block_.L_41386d
  %304 = add i64 %303, 4
  store i64 %304, i64* %3, align 8
  %305 = load i32, i32* %270, align 4
  %306 = sext i32 %305 to i64
  store i64 %306, i64* %RAX.i863, align 8
  %307 = shl nsw i64 %306, 2
  %308 = add i64 %267, -5232
  %309 = add i64 %308, %307
  %310 = add i64 %303, 15
  store i64 %310, i64* %3, align 8
  %311 = inttoptr i64 %309 to i32*
  store i32 -1, i32* %311, align 4
  %312 = load i64, i64* %RBP.i, align 8
  %313 = add i64 %312, -32
  %314 = load i64, i64* %3, align 8
  %315 = add i64 %314, 3
  store i64 %315, i64* %3, align 8
  %316 = inttoptr i64 %313 to i32*
  %317 = load i32, i32* %316, align 4
  %318 = add i32 %317, 1
  %319 = zext i32 %318 to i64
  store i64 %319, i64* %RCX.i853, align 8
  %320 = icmp eq i32 %317, -1
  %321 = icmp eq i32 %318, 0
  %322 = or i1 %320, %321
  %323 = zext i1 %322 to i8
  store i8 %323, i8* %14, align 1
  %324 = and i32 %318, 255
  %325 = tail call i32 @llvm.ctpop.i32(i32 %324)
  %326 = trunc i32 %325 to i8
  %327 = and i8 %326, 1
  %328 = xor i8 %327, 1
  store i8 %328, i8* %21, align 1
  %329 = xor i32 %318, %317
  %330 = lshr i32 %329, 4
  %331 = trunc i32 %330 to i8
  %332 = and i8 %331, 1
  store i8 %332, i8* %27, align 1
  %333 = zext i1 %321 to i8
  store i8 %333, i8* %30, align 1
  %334 = lshr i32 %318, 31
  %335 = trunc i32 %334 to i8
  store i8 %335, i8* %33, align 1
  %336 = lshr i32 %317, 31
  %337 = xor i32 %334, %336
  %338 = add nuw nsw i32 %337, %334
  %339 = icmp eq i32 %338, 2
  %340 = zext i1 %339 to i8
  store i8 %340, i8* %39, align 1
  %341 = add i64 %314, 9
  store i64 %341, i64* %3, align 8
  store i32 %318, i32* %316, align 4
  %342 = load i64, i64* %RBP.i, align 8
  %343 = add i64 %342, -44
  %344 = load i64, i64* %3, align 8
  %345 = add i64 %344, 3
  store i64 %345, i64* %3, align 8
  %346 = inttoptr i64 %343 to i32*
  %347 = load i32, i32* %346, align 4
  %348 = zext i32 %347 to i64
  store i64 %348, i64* %RCX.i853, align 8
  %349 = add i64 %342, -32
  %350 = add i64 %344, 7
  store i64 %350, i64* %3, align 8
  %351 = inttoptr i64 %349 to i32*
  %352 = load i32, i32* %351, align 4
  %353 = sext i32 %352 to i64
  store i64 %353, i64* %RAX.i863, align 8
  %354 = shl nsw i64 %353, 2
  %355 = add i64 %342, -1104
  %356 = add i64 %355, %354
  %357 = add i64 %344, 14
  store i64 %357, i64* %3, align 8
  %358 = inttoptr i64 %356 to i32*
  store i32 %347, i32* %358, align 4
  %359 = load i64, i64* %RBP.i, align 8
  %360 = add i64 %359, -32
  %361 = load i64, i64* %3, align 8
  %362 = add i64 %361, 3
  store i64 %362, i64* %3, align 8
  %363 = inttoptr i64 %360 to i32*
  %364 = load i32, i32* %363, align 4
  %365 = zext i32 %364 to i64
  store i64 %365, i64* %RCX.i853, align 8
  %366 = add i64 %359, -5236
  %367 = add i64 %361, 9
  store i64 %367, i64* %3, align 8
  %368 = inttoptr i64 %366 to i32*
  store i32 %364, i32* %368, align 4
  %369 = load i64, i64* %RBP.i, align 8
  %370 = add i64 %369, -5236
  %371 = load i64, i64* %3, align 8
  %372 = add i64 %371, 7
  store i64 %372, i64* %3, align 8
  %373 = inttoptr i64 %370 to i32*
  %374 = load i32, i32* %373, align 4
  %375 = sext i32 %374 to i64
  store i64 %375, i64* %RAX.i863, align 8
  %376 = shl nsw i64 %375, 2
  %377 = add i64 %369, -1104
  %378 = add i64 %377, %376
  %379 = add i64 %371, 14
  store i64 %379, i64* %3, align 8
  %380 = inttoptr i64 %378 to i32*
  %381 = load i32, i32* %380, align 4
  %382 = zext i32 %381 to i64
  store i64 %382, i64* %RCX.i853, align 8
  %383 = add i64 %369, -5240
  %384 = add i64 %371, 20
  store i64 %384, i64* %3, align 8
  %385 = inttoptr i64 %383 to i32*
  store i32 %381, i32* %385, align 4
  %.pre69 = load i64, i64* %3, align 8
  br label %block_.L_4138bc

block_.L_4138bc:                                  ; preds = %block_4138eb, %block_413879
  %386 = phi i64 [ %524, %block_4138eb ], [ %.pre69, %block_413879 ]
  %387 = load i64, i64* %RBP.i, align 8
  %388 = add i64 %387, -5240
  %389 = add i64 %386, 7
  store i64 %389, i64* %3, align 8
  %390 = inttoptr i64 %388 to i32*
  %391 = load i32, i32* %390, align 4
  %392 = sext i32 %391 to i64
  store i64 %392, i64* %RAX.i863, align 8
  %393 = shl nsw i64 %392, 2
  %394 = add i64 %387, -3168
  %395 = add i64 %394, %393
  %396 = add i64 %386, 14
  store i64 %396, i64* %3, align 8
  %397 = inttoptr i64 %395 to i32*
  %398 = load i32, i32* %397, align 4
  %399 = zext i32 %398 to i64
  store i64 %399, i64* %RCX.i853, align 8
  %400 = add i64 %387, -5236
  %401 = add i64 %386, 20
  store i64 %401, i64* %3, align 8
  %402 = inttoptr i64 %400 to i32*
  %403 = load i32, i32* %402, align 4
  %404 = zext i32 %403 to i64
  %405 = shl nuw i64 %404, 32
  %406 = ashr i64 %405, 33
  %407 = trunc i32 %403 to i8
  %408 = and i8 %407, 1
  %409 = trunc i64 %406 to i32
  %410 = and i64 %406, 4294967295
  store i64 %410, i64* %RDX.i835, align 8
  store i8 %408, i8* %14, align 1
  %411 = and i32 %409, 255
  %412 = tail call i32 @llvm.ctpop.i32(i32 %411)
  %413 = trunc i32 %412 to i8
  %414 = and i8 %413, 1
  %415 = xor i8 %414, 1
  store i8 %415, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %416 = icmp eq i32 %409, 0
  %417 = zext i1 %416 to i8
  store i8 %417, i8* %30, align 1
  %418 = lshr i64 %406, 31
  %419 = trunc i64 %418 to i8
  %420 = and i8 %419, 1
  store i8 %420, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i64 %406, i64* %RAX.i863, align 8
  %421 = shl nsw i64 %406, 2
  %422 = add nsw i64 %421, -1104
  %423 = add i64 %422, %387
  %424 = add i64 %386, 33
  store i64 %424, i64* %3, align 8
  %425 = inttoptr i64 %423 to i32*
  %426 = load i32, i32* %425, align 4
  %427 = sext i32 %426 to i64
  store i64 %427, i64* %RAX.i863, align 8
  %428 = shl nsw i64 %427, 2
  %429 = add nsw i64 %428, -3168
  %430 = add i64 %429, %387
  %431 = add i64 %386, 40
  store i64 %431, i64* %3, align 8
  %432 = inttoptr i64 %430 to i32*
  %433 = load i32, i32* %432, align 4
  %434 = sub i32 %398, %433
  %435 = icmp ult i32 %398, %433
  %436 = zext i1 %435 to i8
  store i8 %436, i8* %14, align 1
  %437 = and i32 %434, 255
  %438 = tail call i32 @llvm.ctpop.i32(i32 %437)
  %439 = trunc i32 %438 to i8
  %440 = and i8 %439, 1
  %441 = xor i8 %440, 1
  store i8 %441, i8* %21, align 1
  %442 = xor i32 %433, %398
  %443 = xor i32 %442, %434
  %444 = lshr i32 %443, 4
  %445 = trunc i32 %444 to i8
  %446 = and i8 %445, 1
  store i8 %446, i8* %27, align 1
  %447 = icmp eq i32 %434, 0
  %448 = zext i1 %447 to i8
  store i8 %448, i8* %30, align 1
  %449 = lshr i32 %434, 31
  %450 = trunc i32 %449 to i8
  store i8 %450, i8* %33, align 1
  %451 = lshr i32 %398, 31
  %452 = lshr i32 %433, 31
  %453 = xor i32 %452, %451
  %454 = xor i32 %449, %451
  %455 = add nuw nsw i32 %454, %453
  %456 = icmp eq i32 %455, 2
  %457 = zext i1 %456 to i8
  store i8 %457, i8* %39, align 1
  %458 = icmp ne i8 %450, 0
  %459 = xor i1 %458, %456
  %.v108 = select i1 %459, i64 46, i64 99
  %460 = add i64 %386, %.v108
  store i64 %460, i64* %3, align 8
  %461 = load i64, i64* %RBP.i, align 8
  br i1 %459, label %block_4138eb, label %block_.L_413920

block_4138eb:                                     ; preds = %block_.L_4138bc
  %462 = add i64 %461, -5236
  %463 = add i64 %460, 6
  store i64 %463, i64* %3, align 8
  %464 = inttoptr i64 %462 to i32*
  %465 = load i32, i32* %464, align 4
  %466 = zext i32 %465 to i64
  %467 = shl nuw i64 %466, 32
  %468 = ashr i64 %467, 33
  %469 = trunc i32 %465 to i8
  %470 = and i8 %469, 1
  %471 = trunc i64 %468 to i32
  %472 = and i64 %468, 4294967295
  store i64 %472, i64* %RAX.i863, align 8
  store i8 %470, i8* %14, align 1
  %473 = and i32 %471, 255
  %474 = tail call i32 @llvm.ctpop.i32(i32 %473)
  %475 = trunc i32 %474 to i8
  %476 = and i8 %475, 1
  %477 = xor i8 %476, 1
  store i8 %477, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %478 = icmp eq i32 %471, 0
  %479 = zext i1 %478 to i8
  store i8 %479, i8* %30, align 1
  %480 = lshr i64 %468, 31
  %481 = trunc i64 %480 to i8
  %482 = and i8 %481, 1
  store i8 %482, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i64 %468, i64* %RCX.i853, align 8
  %483 = shl nsw i64 %468, 2
  %484 = add nsw i64 %483, -1104
  %485 = add i64 %484, %461
  %486 = add i64 %460, 18
  store i64 %486, i64* %3, align 8
  %487 = inttoptr i64 %485 to i32*
  %488 = load i32, i32* %487, align 4
  %489 = zext i32 %488 to i64
  store i64 %489, i64* %RAX.i863, align 8
  %490 = add i64 %460, 25
  store i64 %490, i64* %3, align 8
  %491 = load i32, i32* %464, align 4
  %492 = sext i32 %491 to i64
  store i64 %492, i64* %RCX.i853, align 8
  %493 = shl nsw i64 %492, 2
  %494 = add i64 %461, -1104
  %495 = add i64 %494, %493
  %496 = add i64 %460, 32
  store i64 %496, i64* %3, align 8
  %497 = inttoptr i64 %495 to i32*
  store i32 %488, i32* %497, align 4
  %498 = load i64, i64* %RBP.i, align 8
  %499 = add i64 %498, -5236
  %500 = load i64, i64* %3, align 8
  %501 = add i64 %500, 6
  store i64 %501, i64* %3, align 8
  %502 = inttoptr i64 %499 to i32*
  %503 = load i32, i32* %502, align 4
  %504 = zext i32 %503 to i64
  %505 = shl nuw i64 %504, 32
  %506 = ashr i64 %505, 33
  %507 = trunc i32 %503 to i8
  %508 = and i8 %507, 1
  %509 = trunc i64 %506 to i32
  %510 = and i64 %506, 4294967295
  store i64 %510, i64* %RAX.i863, align 8
  store i8 %508, i8* %14, align 1
  %511 = and i32 %509, 255
  %512 = tail call i32 @llvm.ctpop.i32(i32 %511)
  %513 = trunc i32 %512 to i8
  %514 = and i8 %513, 1
  %515 = xor i8 %514, 1
  store i8 %515, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %516 = icmp eq i32 %509, 0
  %517 = zext i1 %516 to i8
  store i8 %517, i8* %30, align 1
  %518 = lshr i64 %506, 31
  %519 = trunc i64 %518 to i8
  %520 = and i8 %519, 1
  store i8 %520, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %521 = trunc i64 %506 to i32
  %522 = add i64 %500, 14
  store i64 %522, i64* %3, align 8
  store i32 %521, i32* %502, align 4
  %523 = load i64, i64* %3, align 8
  %524 = add i64 %523, -95
  store i64 %524, i64* %3, align 8
  br label %block_.L_4138bc

block_.L_413920:                                  ; preds = %block_.L_4138bc
  %525 = add i64 %461, -5240
  %526 = add i64 %460, 6
  store i64 %526, i64* %3, align 8
  %527 = inttoptr i64 %525 to i32*
  %528 = load i32, i32* %527, align 4
  %529 = zext i32 %528 to i64
  store i64 %529, i64* %RAX.i863, align 8
  %530 = add i64 %461, -5236
  %531 = add i64 %460, 13
  store i64 %531, i64* %3, align 8
  %532 = inttoptr i64 %530 to i32*
  %533 = load i32, i32* %532, align 4
  %534 = sext i32 %533 to i64
  store i64 %534, i64* %RCX.i853, align 8
  %535 = shl nsw i64 %534, 2
  %536 = add i64 %461, -1104
  %537 = add i64 %536, %535
  %538 = add i64 %460, 20
  store i64 %538, i64* %3, align 8
  %539 = inttoptr i64 %537 to i32*
  store i32 %528, i32* %539, align 4
  %540 = load i64, i64* %RBP.i, align 8
  %541 = add i64 %540, -44
  %542 = load i64, i64* %3, align 8
  %543 = add i64 %542, 3
  store i64 %543, i64* %3, align 8
  %544 = inttoptr i64 %541 to i32*
  %545 = load i32, i32* %544, align 4
  %546 = add i32 %545, 1
  %547 = zext i32 %546 to i64
  store i64 %547, i64* %RAX.i863, align 8
  %548 = icmp eq i32 %545, -1
  %549 = icmp eq i32 %546, 0
  %550 = or i1 %548, %549
  %551 = zext i1 %550 to i8
  store i8 %551, i8* %14, align 1
  %552 = and i32 %546, 255
  %553 = tail call i32 @llvm.ctpop.i32(i32 %552)
  %554 = trunc i32 %553 to i8
  %555 = and i8 %554, 1
  %556 = xor i8 %555, 1
  store i8 %556, i8* %21, align 1
  %557 = xor i32 %546, %545
  %558 = lshr i32 %557, 4
  %559 = trunc i32 %558 to i8
  %560 = and i8 %559, 1
  store i8 %560, i8* %27, align 1
  %561 = zext i1 %549 to i8
  store i8 %561, i8* %30, align 1
  %562 = lshr i32 %546, 31
  %563 = trunc i32 %562 to i8
  store i8 %563, i8* %33, align 1
  %564 = lshr i32 %545, 31
  %565 = xor i32 %562, %564
  %566 = add nuw nsw i32 %565, %562
  %567 = icmp eq i32 %566, 2
  %568 = zext i1 %567 to i8
  store i8 %568, i8* %39, align 1
  %569 = add i64 %542, 9
  store i64 %569, i64* %3, align 8
  store i32 %546, i32* %544, align 4
  %570 = load i64, i64* %3, align 8
  %571 = add i64 %570, -208
  store i64 %571, i64* %3, align 8
  br label %block_.L_41386d

block_.L_413942:                                  ; preds = %block_.L_41386d
  %572 = add i64 %267, -32
  %573 = add i64 %303, 7
  store i64 %573, i64* %3, align 8
  %574 = inttoptr i64 %572 to i32*
  %575 = load i32, i32* %574, align 4
  %576 = add i32 %575, -260
  %577 = icmp ult i32 %575, 260
  %578 = zext i1 %577 to i8
  store i8 %578, i8* %14, align 1
  %579 = and i32 %576, 255
  %580 = tail call i32 @llvm.ctpop.i32(i32 %579)
  %581 = trunc i32 %580 to i8
  %582 = and i8 %581, 1
  %583 = xor i8 %582, 1
  store i8 %583, i8* %21, align 1
  %584 = xor i32 %576, %575
  %585 = lshr i32 %584, 4
  %586 = trunc i32 %585 to i8
  %587 = and i8 %586, 1
  store i8 %587, i8* %27, align 1
  %588 = icmp eq i32 %576, 0
  %589 = zext i1 %588 to i8
  store i8 %589, i8* %30, align 1
  %590 = lshr i32 %576, 31
  %591 = trunc i32 %590 to i8
  store i8 %591, i8* %33, align 1
  %592 = lshr i32 %575, 31
  %593 = xor i32 %590, %592
  %594 = add nuw nsw i32 %593, %592
  %595 = icmp eq i32 %594, 2
  %596 = zext i1 %595 to i8
  store i8 %596, i8* %39, align 1
  %597 = icmp ne i8 %591, 0
  %598 = xor i1 %597, %595
  %.v92 = select i1 %598, i64 23, i64 13
  %599 = add i64 %303, %.v92
  store i64 %599, i64* %3, align 8
  br i1 %598, label %block_.L_413959, label %block_41394f

block_41394f:                                     ; preds = %block_.L_413942
  store i64 2001, i64* %RDI.i877, align 8
  %600 = add i64 %599, -59951
  %601 = add i64 %599, 10
  %602 = load i64, i64* %6, align 8
  %603 = add i64 %602, -8
  %604 = inttoptr i64 %603 to i64*
  store i64 %601, i64* %604, align 8
  store i64 %603, i64* %6, align 8
  store i64 %600, i64* %3, align 8
  %call2_413954 = tail call %struct.Memory* @sub_404f20.BZ2_bz__AssertH__fail(%struct.State* nonnull %0, i64 %600, %struct.Memory* %MEMORY.2)
  %.pre70 = load i64, i64* %3, align 8
  br label %block_.L_413959

block_.L_413959:                                  ; preds = %block_41394f, %block_.L_413942
  %605 = phi i64 [ %.pre70, %block_41394f ], [ %599, %block_.L_413942 ]
  %606 = add i64 %605, 5
  br label %block_.L_41395e

block_.L_41395e:                                  ; preds = %block_.L_413d25, %block_.L_413959
  %storemerge22 = phi i64 [ %606, %block_.L_413959 ], [ %1940, %block_.L_413d25 ]
  %607 = load i64, i64* %RBP.i, align 8
  %608 = add i64 %607, -32
  %609 = add i64 %storemerge22, 4
  store i64 %609, i64* %3, align 8
  %610 = inttoptr i64 %608 to i32*
  %611 = load i32, i32* %610, align 4
  %612 = add i32 %611, -1
  %613 = icmp eq i32 %611, 0
  %614 = zext i1 %613 to i8
  store i8 %614, i8* %14, align 1
  %615 = and i32 %612, 255
  %616 = tail call i32 @llvm.ctpop.i32(i32 %615)
  %617 = trunc i32 %616 to i8
  %618 = and i8 %617, 1
  %619 = xor i8 %618, 1
  store i8 %619, i8* %21, align 1
  %620 = xor i32 %612, %611
  %621 = lshr i32 %620, 4
  %622 = trunc i32 %621 to i8
  %623 = and i8 %622, 1
  store i8 %623, i8* %27, align 1
  %624 = icmp eq i32 %612, 0
  %625 = zext i1 %624 to i8
  store i8 %625, i8* %30, align 1
  %626 = lshr i32 %612, 31
  %627 = trunc i32 %626 to i8
  store i8 %627, i8* %33, align 1
  %628 = lshr i32 %611, 31
  %629 = xor i32 %626, %628
  %630 = add nuw nsw i32 %629, %628
  %631 = icmp eq i32 %630, 2
  %632 = zext i1 %631 to i8
  store i8 %632, i8* %39, align 1
  %633 = icmp ne i8 %627, 0
  %634 = xor i1 %633, %631
  %635 = or i1 %624, %634
  %.v93 = select i1 %635, i64 992, i64 10
  %636 = add i64 %storemerge22, %.v93
  store i64 %636, i64* %3, align 8
  br i1 %635, label %block_.L_413d3e, label %block_413968

block_413968:                                     ; preds = %block_.L_41395e
  %637 = add i64 %607, -1100
  %638 = add i64 %636, 6
  store i64 %638, i64* %3, align 8
  %639 = inttoptr i64 %637 to i32*
  %640 = load i32, i32* %639, align 4
  %641 = zext i32 %640 to i64
  store i64 %641, i64* %RAX.i863, align 8
  %642 = add i64 %607, -36
  %643 = add i64 %636, 9
  store i64 %643, i64* %3, align 8
  %644 = inttoptr i64 %642 to i32*
  store i32 %640, i32* %644, align 4
  %645 = load i64, i64* %RBP.i, align 8
  %646 = add i64 %645, -32
  %647 = load i64, i64* %3, align 8
  %648 = add i64 %647, 4
  store i64 %648, i64* %3, align 8
  %649 = inttoptr i64 %646 to i32*
  %650 = load i32, i32* %649, align 4
  %651 = sext i32 %650 to i64
  store i64 %651, i64* %RCX.i853, align 8
  %652 = shl nsw i64 %651, 2
  %653 = add i64 %645, -1104
  %654 = add i64 %653, %652
  %655 = add i64 %647, 11
  store i64 %655, i64* %3, align 8
  %656 = inttoptr i64 %654 to i32*
  %657 = load i32, i32* %656, align 4
  %658 = zext i32 %657 to i64
  store i64 %658, i64* %RAX.i863, align 8
  %659 = add i64 %645, -1100
  %660 = add i64 %647, 17
  store i64 %660, i64* %3, align 8
  %661 = inttoptr i64 %659 to i32*
  store i32 %657, i32* %661, align 4
  %662 = load i64, i64* %RBP.i, align 8
  %663 = add i64 %662, -32
  %664 = load i64, i64* %3, align 8
  %665 = add i64 %664, 3
  store i64 %665, i64* %3, align 8
  %666 = inttoptr i64 %663 to i32*
  %667 = load i32, i32* %666, align 4
  %668 = add i32 %667, -1
  %669 = zext i32 %668 to i64
  store i64 %669, i64* %RAX.i863, align 8
  %670 = icmp ne i32 %667, 0
  %671 = zext i1 %670 to i8
  store i8 %671, i8* %14, align 1
  %672 = and i32 %668, 255
  %673 = tail call i32 @llvm.ctpop.i32(i32 %672)
  %674 = trunc i32 %673 to i8
  %675 = and i8 %674, 1
  %676 = xor i8 %675, 1
  store i8 %676, i8* %21, align 1
  %677 = xor i32 %667, 16
  %678 = xor i32 %677, %668
  %679 = lshr i32 %678, 4
  %680 = trunc i32 %679 to i8
  %681 = and i8 %680, 1
  store i8 %681, i8* %27, align 1
  %682 = icmp eq i32 %668, 0
  %683 = zext i1 %682 to i8
  store i8 %683, i8* %30, align 1
  %684 = lshr i32 %668, 31
  %685 = trunc i32 %684 to i8
  store i8 %685, i8* %33, align 1
  %686 = lshr i32 %667, 31
  %687 = xor i32 %684, %686
  %688 = xor i32 %684, 1
  %689 = add nuw nsw i32 %687, %688
  %690 = icmp eq i32 %689, 2
  %691 = zext i1 %690 to i8
  store i8 %691, i8* %39, align 1
  %692 = add i64 %664, 9
  store i64 %692, i64* %3, align 8
  store i32 %668, i32* %666, align 4
  %693 = load i64, i64* %RBP.i, align 8
  %694 = add i64 %693, -5244
  %695 = load i64, i64* %3, align 8
  %696 = add i64 %695, 10
  store i64 %696, i64* %3, align 8
  %697 = inttoptr i64 %694 to i32*
  store i32 1, i32* %697, align 4
  %698 = load i64, i64* %RBP.i, align 8
  %699 = add i64 %698, -5244
  %700 = load i64, i64* %3, align 8
  %701 = add i64 %700, 7
  store i64 %701, i64* %3, align 8
  %702 = inttoptr i64 %699 to i32*
  %703 = load i32, i32* %702, align 4
  %704 = sext i32 %703 to i64
  store i64 %704, i64* %RCX.i853, align 8
  %705 = shl nsw i64 %704, 2
  %706 = add i64 %698, -1104
  %707 = add i64 %706, %705
  %708 = add i64 %700, 14
  store i64 %708, i64* %3, align 8
  %709 = inttoptr i64 %707 to i32*
  %710 = load i32, i32* %709, align 4
  %711 = zext i32 %710 to i64
  store i64 %711, i64* %RAX.i863, align 8
  %712 = add i64 %698, -5252
  %713 = add i64 %700, 20
  store i64 %713, i64* %3, align 8
  %714 = inttoptr i64 %712 to i32*
  store i32 %710, i32* %714, align 4
  %.pre71 = load i64, i64* %3, align 8
  br label %block_.L_4139a9

block_.L_4139a9:                                  ; preds = %block_.L_413a50, %block_413968
  %715 = phi i64 [ %1015, %block_.L_413a50 ], [ %.pre71, %block_413968 ]
  %716 = load i64, i64* %RBP.i, align 8
  %717 = add i64 %716, -5244
  %718 = add i64 %715, 6
  store i64 %718, i64* %3, align 8
  %719 = inttoptr i64 %717 to i32*
  %720 = load i32, i32* %719, align 4
  %721 = shl i32 %720, 1
  %722 = icmp slt i32 %720, 0
  %723 = icmp slt i32 %721, 0
  %724 = xor i1 %722, %723
  %725 = zext i32 %721 to i64
  store i64 %725, i64* %RAX.i863, align 8
  %.lobit = lshr i32 %720, 31
  %726 = trunc i32 %.lobit to i8
  store i8 %726, i8* %14, align 1
  %727 = and i32 %721, 254
  %728 = tail call i32 @llvm.ctpop.i32(i32 %727)
  %729 = trunc i32 %728 to i8
  %730 = and i8 %729, 1
  %731 = xor i8 %730, 1
  store i8 %731, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %732 = icmp eq i32 %721, 0
  %733 = zext i1 %732 to i8
  store i8 %733, i8* %30, align 1
  %734 = lshr i32 %720, 30
  %735 = trunc i32 %734 to i8
  %736 = and i8 %735, 1
  store i8 %736, i8* %33, align 1
  %737 = zext i1 %724 to i8
  store i8 %737, i8* %39, align 1
  %738 = add i64 %716, -5248
  %739 = add i64 %715, 14
  store i64 %739, i64* %3, align 8
  %740 = inttoptr i64 %738 to i32*
  store i32 %721, i32* %740, align 4
  %741 = load i64, i64* %RBP.i, align 8
  %742 = add i64 %741, -5248
  %743 = load i64, i64* %3, align 8
  %744 = add i64 %743, 6
  store i64 %744, i64* %3, align 8
  %745 = inttoptr i64 %742 to i32*
  %746 = load i32, i32* %745, align 4
  %747 = zext i32 %746 to i64
  store i64 %747, i64* %RAX.i863, align 8
  %748 = add i64 %741, -32
  %749 = add i64 %743, 9
  store i64 %749, i64* %3, align 8
  %750 = inttoptr i64 %748 to i32*
  %751 = load i32, i32* %750, align 4
  %752 = sub i32 %746, %751
  %753 = icmp ult i32 %746, %751
  %754 = zext i1 %753 to i8
  store i8 %754, i8* %14, align 1
  %755 = and i32 %752, 255
  %756 = tail call i32 @llvm.ctpop.i32(i32 %755)
  %757 = trunc i32 %756 to i8
  %758 = and i8 %757, 1
  %759 = xor i8 %758, 1
  store i8 %759, i8* %21, align 1
  %760 = xor i32 %751, %746
  %761 = xor i32 %760, %752
  %762 = lshr i32 %761, 4
  %763 = trunc i32 %762 to i8
  %764 = and i8 %763, 1
  store i8 %764, i8* %27, align 1
  %765 = icmp eq i32 %752, 0
  %766 = zext i1 %765 to i8
  store i8 %766, i8* %30, align 1
  %767 = lshr i32 %752, 31
  %768 = trunc i32 %767 to i8
  store i8 %768, i8* %33, align 1
  %769 = lshr i32 %746, 31
  %770 = lshr i32 %751, 31
  %771 = xor i32 %770, %769
  %772 = xor i32 %767, %769
  %773 = add nuw nsw i32 %772, %771
  %774 = icmp eq i32 %773, 2
  %775 = zext i1 %774 to i8
  store i8 %775, i8* %39, align 1
  %776 = icmp ne i8 %768, 0
  %777 = xor i1 %776, %774
  %778 = or i1 %765, %777
  %.v94 = select i1 %778, i64 20, i64 15
  %779 = add i64 %743, %.v94
  store i64 %779, i64* %3, align 8
  br i1 %778, label %block_.L_4139cc, label %block_4139c7

block_4139c7:                                     ; preds = %block_.L_4139a9
  %780 = add i64 %779, 182
  br label %block_.L_413a7d

block_.L_4139cc:                                  ; preds = %block_.L_4139a9
  %781 = add i64 %779, 6
  store i64 %781, i64* %3, align 8
  %782 = load i32, i32* %745, align 4
  %783 = zext i32 %782 to i64
  store i64 %783, i64* %RAX.i863, align 8
  %784 = add i64 %779, 9
  store i64 %784, i64* %3, align 8
  %785 = load i32, i32* %750, align 4
  %786 = sub i32 %782, %785
  %787 = icmp ult i32 %782, %785
  %788 = zext i1 %787 to i8
  store i8 %788, i8* %14, align 1
  %789 = and i32 %786, 255
  %790 = tail call i32 @llvm.ctpop.i32(i32 %789)
  %791 = trunc i32 %790 to i8
  %792 = and i8 %791, 1
  %793 = xor i8 %792, 1
  store i8 %793, i8* %21, align 1
  %794 = xor i32 %785, %782
  %795 = xor i32 %794, %786
  %796 = lshr i32 %795, 4
  %797 = trunc i32 %796 to i8
  %798 = and i8 %797, 1
  store i8 %798, i8* %27, align 1
  %799 = icmp eq i32 %786, 0
  %800 = zext i1 %799 to i8
  store i8 %800, i8* %30, align 1
  %801 = lshr i32 %786, 31
  %802 = trunc i32 %801 to i8
  store i8 %802, i8* %33, align 1
  %803 = lshr i32 %782, 31
  %804 = lshr i32 %785, 31
  %805 = xor i32 %804, %803
  %806 = xor i32 %801, %803
  %807 = add nuw nsw i32 %806, %805
  %808 = icmp eq i32 %807, 2
  %809 = zext i1 %808 to i8
  store i8 %809, i8* %39, align 1
  %810 = icmp ne i8 %802, 0
  %811 = xor i1 %810, %808
  %.v100 = select i1 %811, i64 15, i64 85
  %812 = add i64 %779, %.v100
  store i64 %812, i64* %3, align 8
  br i1 %811, label %block_4139db, label %block_.L_413a21

block_4139db:                                     ; preds = %block_.L_4139cc
  %813 = add i64 %812, 6
  store i64 %813, i64* %3, align 8
  %814 = load i32, i32* %745, align 4
  %815 = add i32 %814, 1
  %816 = zext i32 %815 to i64
  store i64 %816, i64* %RAX.i863, align 8
  %817 = icmp eq i32 %814, -1
  %818 = icmp eq i32 %815, 0
  %819 = or i1 %817, %818
  %820 = zext i1 %819 to i8
  store i8 %820, i8* %14, align 1
  %821 = and i32 %815, 255
  %822 = tail call i32 @llvm.ctpop.i32(i32 %821)
  %823 = trunc i32 %822 to i8
  %824 = and i8 %823, 1
  %825 = xor i8 %824, 1
  store i8 %825, i8* %21, align 1
  %826 = xor i32 %815, %814
  %827 = lshr i32 %826, 4
  %828 = trunc i32 %827 to i8
  %829 = and i8 %828, 1
  store i8 %829, i8* %27, align 1
  %830 = zext i1 %818 to i8
  store i8 %830, i8* %30, align 1
  %831 = lshr i32 %815, 31
  %832 = trunc i32 %831 to i8
  store i8 %832, i8* %33, align 1
  %833 = lshr i32 %814, 31
  %834 = xor i32 %831, %833
  %835 = add nuw nsw i32 %834, %831
  %836 = icmp eq i32 %835, 2
  %837 = zext i1 %836 to i8
  store i8 %837, i8* %39, align 1
  %838 = sext i32 %815 to i64
  store i64 %838, i64* %RCX.i853, align 8
  %839 = shl nsw i64 %838, 2
  %840 = add nsw i64 %839, -1104
  %841 = add i64 %840, %741
  %842 = add i64 %812, 20
  store i64 %842, i64* %3, align 8
  %843 = inttoptr i64 %841 to i32*
  %844 = load i32, i32* %843, align 4
  %845 = sext i32 %844 to i64
  store i64 %845, i64* %RCX.i853, align 8
  %846 = shl nsw i64 %845, 2
  %847 = add i64 %741, -3168
  %848 = add i64 %847, %846
  %849 = add i64 %812, 27
  store i64 %849, i64* %3, align 8
  %850 = inttoptr i64 %848 to i32*
  %851 = load i32, i32* %850, align 4
  %852 = zext i32 %851 to i64
  store i64 %852, i64* %RAX.i863, align 8
  %853 = add i64 %812, 34
  store i64 %853, i64* %3, align 8
  %854 = load i32, i32* %745, align 4
  %855 = sext i32 %854 to i64
  store i64 %855, i64* %RCX.i853, align 8
  %856 = shl nsw i64 %855, 2
  %857 = add i64 %741, -1104
  %858 = add i64 %857, %856
  %859 = add i64 %812, 42
  store i64 %859, i64* %3, align 8
  %860 = inttoptr i64 %858 to i32*
  %861 = load i32, i32* %860, align 4
  %862 = sext i32 %861 to i64
  store i64 %862, i64* %RCX.i853, align 8
  %863 = shl nsw i64 %862, 2
  %864 = add nsw i64 %863, -3168
  %865 = add i64 %864, %741
  %866 = add i64 %812, 49
  store i64 %866, i64* %3, align 8
  %867 = inttoptr i64 %865 to i32*
  %868 = load i32, i32* %867, align 4
  %869 = sub i32 %851, %868
  %870 = icmp ult i32 %851, %868
  %871 = zext i1 %870 to i8
  store i8 %871, i8* %14, align 1
  %872 = and i32 %869, 255
  %873 = tail call i32 @llvm.ctpop.i32(i32 %872)
  %874 = trunc i32 %873 to i8
  %875 = and i8 %874, 1
  %876 = xor i8 %875, 1
  store i8 %876, i8* %21, align 1
  %877 = xor i32 %868, %851
  %878 = xor i32 %877, %869
  %879 = lshr i32 %878, 4
  %880 = trunc i32 %879 to i8
  %881 = and i8 %880, 1
  store i8 %881, i8* %27, align 1
  %882 = icmp eq i32 %869, 0
  %883 = zext i1 %882 to i8
  store i8 %883, i8* %30, align 1
  %884 = lshr i32 %869, 31
  %885 = trunc i32 %884 to i8
  store i8 %885, i8* %33, align 1
  %886 = lshr i32 %851, 31
  %887 = lshr i32 %868, 31
  %888 = xor i32 %887, %886
  %889 = xor i32 %884, %886
  %890 = add nuw nsw i32 %889, %888
  %891 = icmp eq i32 %890, 2
  %892 = zext i1 %891 to i8
  store i8 %892, i8* %39, align 1
  %893 = icmp ne i8 %885, 0
  %894 = xor i1 %893, %891
  %.v102 = select i1 %894, i64 55, i64 70
  %895 = add i64 %812, %.v102
  store i64 %895, i64* %3, align 8
  br i1 %894, label %block_413a12, label %block_.L_413a21

block_413a12:                                     ; preds = %block_4139db
  %896 = load i64, i64* %RBP.i, align 8
  %897 = add i64 %896, -5248
  %898 = add i64 %895, 6
  store i64 %898, i64* %3, align 8
  %899 = inttoptr i64 %897 to i32*
  %900 = load i32, i32* %899, align 4
  %901 = add i32 %900, 1
  %902 = zext i32 %901 to i64
  store i64 %902, i64* %RAX.i863, align 8
  %903 = icmp eq i32 %900, -1
  %904 = icmp eq i32 %901, 0
  %905 = or i1 %903, %904
  %906 = zext i1 %905 to i8
  store i8 %906, i8* %14, align 1
  %907 = and i32 %901, 255
  %908 = tail call i32 @llvm.ctpop.i32(i32 %907)
  %909 = trunc i32 %908 to i8
  %910 = and i8 %909, 1
  %911 = xor i8 %910, 1
  store i8 %911, i8* %21, align 1
  %912 = xor i32 %901, %900
  %913 = lshr i32 %912, 4
  %914 = trunc i32 %913 to i8
  %915 = and i8 %914, 1
  store i8 %915, i8* %27, align 1
  %916 = zext i1 %904 to i8
  store i8 %916, i8* %30, align 1
  %917 = lshr i32 %901, 31
  %918 = trunc i32 %917 to i8
  store i8 %918, i8* %33, align 1
  %919 = lshr i32 %900, 31
  %920 = xor i32 %917, %919
  %921 = add nuw nsw i32 %920, %917
  %922 = icmp eq i32 %921, 2
  %923 = zext i1 %922 to i8
  store i8 %923, i8* %39, align 1
  %924 = add i64 %895, 15
  store i64 %924, i64* %3, align 8
  store i32 %901, i32* %899, align 4
  %.pre72 = load i64, i64* %3, align 8
  br label %block_.L_413a21

block_.L_413a21:                                  ; preds = %block_4139db, %block_.L_4139cc, %block_413a12
  %925 = phi i64 [ %895, %block_4139db ], [ %812, %block_.L_4139cc ], [ %.pre72, %block_413a12 ]
  %926 = load i64, i64* %RBP.i, align 8
  %927 = add i64 %926, -5252
  %928 = add i64 %925, 7
  store i64 %928, i64* %3, align 8
  %929 = inttoptr i64 %927 to i32*
  %930 = load i32, i32* %929, align 4
  %931 = sext i32 %930 to i64
  store i64 %931, i64* %RAX.i863, align 8
  %932 = shl nsw i64 %931, 2
  %933 = add i64 %926, -3168
  %934 = add i64 %933, %932
  %935 = add i64 %925, 14
  store i64 %935, i64* %3, align 8
  %936 = inttoptr i64 %934 to i32*
  %937 = load i32, i32* %936, align 4
  %938 = zext i32 %937 to i64
  store i64 %938, i64* %RCX.i853, align 8
  %939 = add i64 %926, -5248
  %940 = add i64 %925, 21
  store i64 %940, i64* %3, align 8
  %941 = inttoptr i64 %939 to i32*
  %942 = load i32, i32* %941, align 4
  %943 = sext i32 %942 to i64
  store i64 %943, i64* %RAX.i863, align 8
  %944 = shl nsw i64 %943, 2
  %945 = add i64 %926, -1104
  %946 = add i64 %945, %944
  %947 = add i64 %925, 29
  store i64 %947, i64* %3, align 8
  %948 = inttoptr i64 %946 to i32*
  %949 = load i32, i32* %948, align 4
  %950 = sext i32 %949 to i64
  store i64 %950, i64* %RAX.i863, align 8
  %951 = shl nsw i64 %950, 2
  %952 = add nsw i64 %951, -3168
  %953 = add i64 %952, %926
  %954 = add i64 %925, 36
  store i64 %954, i64* %3, align 8
  %955 = inttoptr i64 %953 to i32*
  %956 = load i32, i32* %955, align 4
  %957 = sub i32 %937, %956
  %958 = icmp ult i32 %937, %956
  %959 = zext i1 %958 to i8
  store i8 %959, i8* %14, align 1
  %960 = and i32 %957, 255
  %961 = tail call i32 @llvm.ctpop.i32(i32 %960)
  %962 = trunc i32 %961 to i8
  %963 = and i8 %962, 1
  %964 = xor i8 %963, 1
  store i8 %964, i8* %21, align 1
  %965 = xor i32 %956, %937
  %966 = xor i32 %965, %957
  %967 = lshr i32 %966, 4
  %968 = trunc i32 %967 to i8
  %969 = and i8 %968, 1
  store i8 %969, i8* %27, align 1
  %970 = icmp eq i32 %957, 0
  %971 = zext i1 %970 to i8
  store i8 %971, i8* %30, align 1
  %972 = lshr i32 %957, 31
  %973 = trunc i32 %972 to i8
  store i8 %973, i8* %33, align 1
  %974 = lshr i32 %937, 31
  %975 = lshr i32 %956, 31
  %976 = xor i32 %975, %974
  %977 = xor i32 %972, %974
  %978 = add nuw nsw i32 %977, %976
  %979 = icmp eq i32 %978, 2
  %980 = zext i1 %979 to i8
  store i8 %980, i8* %39, align 1
  %981 = icmp ne i8 %973, 0
  %982 = xor i1 %981, %979
  %.v101 = select i1 %982, i64 42, i64 47
  %983 = add i64 %925, %.v101
  store i64 %983, i64* %3, align 8
  br i1 %982, label %block_413a4b, label %block_.L_413a50

block_413a4b:                                     ; preds = %block_.L_413a21
  %984 = add i64 %983, 50
  %985 = add i64 %983, 5
  store i64 %985, i64* %3, align 8
  br label %block_.L_413a7d

block_.L_413a50:                                  ; preds = %block_.L_413a21
  %986 = add i64 %983, 7
  store i64 %986, i64* %3, align 8
  %987 = load i32, i32* %941, align 4
  %988 = sext i32 %987 to i64
  store i64 %988, i64* %RAX.i863, align 8
  %989 = shl nsw i64 %988, 2
  %990 = add i64 %945, %989
  %991 = add i64 %983, 14
  store i64 %991, i64* %3, align 8
  %992 = inttoptr i64 %990 to i32*
  %993 = load i32, i32* %992, align 4
  %994 = zext i32 %993 to i64
  store i64 %994, i64* %RCX.i853, align 8
  %995 = add i64 %926, -5244
  %996 = add i64 %983, 21
  store i64 %996, i64* %3, align 8
  %997 = inttoptr i64 %995 to i32*
  %998 = load i32, i32* %997, align 4
  %999 = sext i32 %998 to i64
  store i64 %999, i64* %RAX.i863, align 8
  %1000 = shl nsw i64 %999, 2
  %1001 = add i64 %945, %1000
  %1002 = add i64 %983, 28
  store i64 %1002, i64* %3, align 8
  %1003 = inttoptr i64 %1001 to i32*
  store i32 %993, i32* %1003, align 4
  %1004 = load i64, i64* %RBP.i, align 8
  %1005 = add i64 %1004, -5248
  %1006 = load i64, i64* %3, align 8
  %1007 = add i64 %1006, 6
  store i64 %1007, i64* %3, align 8
  %1008 = inttoptr i64 %1005 to i32*
  %1009 = load i32, i32* %1008, align 4
  %1010 = zext i32 %1009 to i64
  store i64 %1010, i64* %RCX.i853, align 8
  %1011 = add i64 %1004, -5244
  %1012 = add i64 %1006, 12
  store i64 %1012, i64* %3, align 8
  %1013 = inttoptr i64 %1011 to i32*
  store i32 %1009, i32* %1013, align 4
  %1014 = load i64, i64* %3, align 8
  %1015 = add i64 %1014, -207
  store i64 %1015, i64* %3, align 8
  br label %block_.L_4139a9

block_.L_413a7d:                                  ; preds = %block_413a4b, %block_4139c7
  %1016 = phi i64 [ %741, %block_4139c7 ], [ %926, %block_413a4b ]
  %storemerge23 = phi i64 [ %780, %block_4139c7 ], [ %984, %block_413a4b ]
  %1017 = add i64 %1016, -5252
  %1018 = add i64 %storemerge23, 6
  store i64 %1018, i64* %3, align 8
  %1019 = inttoptr i64 %1017 to i32*
  %1020 = load i32, i32* %1019, align 4
  %1021 = zext i32 %1020 to i64
  store i64 %1021, i64* %RAX.i863, align 8
  %1022 = add i64 %1016, -5244
  %1023 = add i64 %storemerge23, 13
  store i64 %1023, i64* %3, align 8
  %1024 = inttoptr i64 %1022 to i32*
  %1025 = load i32, i32* %1024, align 4
  %1026 = sext i32 %1025 to i64
  store i64 %1026, i64* %RCX.i853, align 8
  %1027 = shl nsw i64 %1026, 2
  %1028 = add i64 %1016, -1104
  %1029 = add i64 %1028, %1027
  %1030 = add i64 %storemerge23, 20
  store i64 %1030, i64* %3, align 8
  %1031 = inttoptr i64 %1029 to i32*
  store i32 %1020, i32* %1031, align 4
  %1032 = load i64, i64* %RBP.i, align 8
  %1033 = add i64 %1032, -1100
  %1034 = load i64, i64* %3, align 8
  %1035 = add i64 %1034, 6
  store i64 %1035, i64* %3, align 8
  %1036 = inttoptr i64 %1033 to i32*
  %1037 = load i32, i32* %1036, align 4
  %1038 = zext i32 %1037 to i64
  store i64 %1038, i64* %RAX.i863, align 8
  %1039 = add i64 %1032, -40
  %1040 = add i64 %1034, 9
  store i64 %1040, i64* %3, align 8
  %1041 = inttoptr i64 %1039 to i32*
  store i32 %1037, i32* %1041, align 4
  %1042 = load i64, i64* %RBP.i, align 8
  %1043 = add i64 %1042, -32
  %1044 = load i64, i64* %3, align 8
  %1045 = add i64 %1044, 4
  store i64 %1045, i64* %3, align 8
  %1046 = inttoptr i64 %1043 to i32*
  %1047 = load i32, i32* %1046, align 4
  %1048 = sext i32 %1047 to i64
  store i64 %1048, i64* %RCX.i853, align 8
  %1049 = shl nsw i64 %1048, 2
  %1050 = add i64 %1042, -1104
  %1051 = add i64 %1050, %1049
  %1052 = add i64 %1044, 11
  store i64 %1052, i64* %3, align 8
  %1053 = inttoptr i64 %1051 to i32*
  %1054 = load i32, i32* %1053, align 4
  %1055 = zext i32 %1054 to i64
  store i64 %1055, i64* %RAX.i863, align 8
  %1056 = add i64 %1042, -1100
  %1057 = add i64 %1044, 17
  store i64 %1057, i64* %3, align 8
  %1058 = inttoptr i64 %1056 to i32*
  store i32 %1054, i32* %1058, align 4
  %1059 = load i64, i64* %RBP.i, align 8
  %1060 = add i64 %1059, -32
  %1061 = load i64, i64* %3, align 8
  %1062 = add i64 %1061, 3
  store i64 %1062, i64* %3, align 8
  %1063 = inttoptr i64 %1060 to i32*
  %1064 = load i32, i32* %1063, align 4
  %1065 = add i32 %1064, -1
  %1066 = zext i32 %1065 to i64
  store i64 %1066, i64* %RAX.i863, align 8
  %1067 = icmp ne i32 %1064, 0
  %1068 = zext i1 %1067 to i8
  store i8 %1068, i8* %14, align 1
  %1069 = and i32 %1065, 255
  %1070 = tail call i32 @llvm.ctpop.i32(i32 %1069)
  %1071 = trunc i32 %1070 to i8
  %1072 = and i8 %1071, 1
  %1073 = xor i8 %1072, 1
  store i8 %1073, i8* %21, align 1
  %1074 = xor i32 %1064, 16
  %1075 = xor i32 %1074, %1065
  %1076 = lshr i32 %1075, 4
  %1077 = trunc i32 %1076 to i8
  %1078 = and i8 %1077, 1
  store i8 %1078, i8* %27, align 1
  %1079 = icmp eq i32 %1065, 0
  %1080 = zext i1 %1079 to i8
  store i8 %1080, i8* %30, align 1
  %1081 = lshr i32 %1065, 31
  %1082 = trunc i32 %1081 to i8
  store i8 %1082, i8* %33, align 1
  %1083 = lshr i32 %1064, 31
  %1084 = xor i32 %1081, %1083
  %1085 = xor i32 %1081, 1
  %1086 = add nuw nsw i32 %1084, %1085
  %1087 = icmp eq i32 %1086, 2
  %1088 = zext i1 %1087 to i8
  store i8 %1088, i8* %39, align 1
  %1089 = add i64 %1061, 9
  store i64 %1089, i64* %3, align 8
  store i32 %1065, i32* %1063, align 4
  %1090 = load i64, i64* %RBP.i, align 8
  %1091 = add i64 %1090, -5256
  %1092 = load i64, i64* %3, align 8
  %1093 = add i64 %1092, 10
  store i64 %1093, i64* %3, align 8
  %1094 = inttoptr i64 %1091 to i32*
  store i32 1, i32* %1094, align 4
  %1095 = load i64, i64* %RBP.i, align 8
  %1096 = add i64 %1095, -5256
  %1097 = load i64, i64* %3, align 8
  %1098 = add i64 %1097, 7
  store i64 %1098, i64* %3, align 8
  %1099 = inttoptr i64 %1096 to i32*
  %1100 = load i32, i32* %1099, align 4
  %1101 = sext i32 %1100 to i64
  store i64 %1101, i64* %RCX.i853, align 8
  %1102 = shl nsw i64 %1101, 2
  %1103 = add i64 %1095, -1104
  %1104 = add i64 %1103, %1102
  %1105 = add i64 %1097, 14
  store i64 %1105, i64* %3, align 8
  %1106 = inttoptr i64 %1104 to i32*
  %1107 = load i32, i32* %1106, align 4
  %1108 = zext i32 %1107 to i64
  store i64 %1108, i64* %RAX.i863, align 8
  %1109 = add i64 %1095, -5264
  %1110 = add i64 %1097, 20
  store i64 %1110, i64* %3, align 8
  %1111 = inttoptr i64 %1109 to i32*
  store i32 %1107, i32* %1111, align 4
  %.pre73 = load i64, i64* %3, align 8
  br label %block_.L_413ad2

block_.L_413ad2:                                  ; preds = %block_.L_413b79, %block_.L_413a7d
  %1112 = phi i64 [ %1412, %block_.L_413b79 ], [ %.pre73, %block_.L_413a7d ]
  %1113 = load i64, i64* %RBP.i, align 8
  %1114 = add i64 %1113, -5256
  %1115 = add i64 %1112, 6
  store i64 %1115, i64* %3, align 8
  %1116 = inttoptr i64 %1114 to i32*
  %1117 = load i32, i32* %1116, align 4
  %1118 = shl i32 %1117, 1
  %1119 = icmp slt i32 %1117, 0
  %1120 = icmp slt i32 %1118, 0
  %1121 = xor i1 %1119, %1120
  %1122 = zext i32 %1118 to i64
  store i64 %1122, i64* %RAX.i863, align 8
  %.lobit24 = lshr i32 %1117, 31
  %1123 = trunc i32 %.lobit24 to i8
  store i8 %1123, i8* %14, align 1
  %1124 = and i32 %1118, 254
  %1125 = tail call i32 @llvm.ctpop.i32(i32 %1124)
  %1126 = trunc i32 %1125 to i8
  %1127 = and i8 %1126, 1
  %1128 = xor i8 %1127, 1
  store i8 %1128, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1129 = icmp eq i32 %1118, 0
  %1130 = zext i1 %1129 to i8
  store i8 %1130, i8* %30, align 1
  %1131 = lshr i32 %1117, 30
  %1132 = trunc i32 %1131 to i8
  %1133 = and i8 %1132, 1
  store i8 %1133, i8* %33, align 1
  %1134 = zext i1 %1121 to i8
  store i8 %1134, i8* %39, align 1
  %1135 = add i64 %1113, -5260
  %1136 = add i64 %1112, 14
  store i64 %1136, i64* %3, align 8
  %1137 = inttoptr i64 %1135 to i32*
  store i32 %1118, i32* %1137, align 4
  %1138 = load i64, i64* %RBP.i, align 8
  %1139 = add i64 %1138, -5260
  %1140 = load i64, i64* %3, align 8
  %1141 = add i64 %1140, 6
  store i64 %1141, i64* %3, align 8
  %1142 = inttoptr i64 %1139 to i32*
  %1143 = load i32, i32* %1142, align 4
  %1144 = zext i32 %1143 to i64
  store i64 %1144, i64* %RAX.i863, align 8
  %1145 = add i64 %1138, -32
  %1146 = add i64 %1140, 9
  store i64 %1146, i64* %3, align 8
  %1147 = inttoptr i64 %1145 to i32*
  %1148 = load i32, i32* %1147, align 4
  %1149 = sub i32 %1143, %1148
  %1150 = icmp ult i32 %1143, %1148
  %1151 = zext i1 %1150 to i8
  store i8 %1151, i8* %14, align 1
  %1152 = and i32 %1149, 255
  %1153 = tail call i32 @llvm.ctpop.i32(i32 %1152)
  %1154 = trunc i32 %1153 to i8
  %1155 = and i8 %1154, 1
  %1156 = xor i8 %1155, 1
  store i8 %1156, i8* %21, align 1
  %1157 = xor i32 %1148, %1143
  %1158 = xor i32 %1157, %1149
  %1159 = lshr i32 %1158, 4
  %1160 = trunc i32 %1159 to i8
  %1161 = and i8 %1160, 1
  store i8 %1161, i8* %27, align 1
  %1162 = icmp eq i32 %1149, 0
  %1163 = zext i1 %1162 to i8
  store i8 %1163, i8* %30, align 1
  %1164 = lshr i32 %1149, 31
  %1165 = trunc i32 %1164 to i8
  store i8 %1165, i8* %33, align 1
  %1166 = lshr i32 %1143, 31
  %1167 = lshr i32 %1148, 31
  %1168 = xor i32 %1167, %1166
  %1169 = xor i32 %1164, %1166
  %1170 = add nuw nsw i32 %1169, %1168
  %1171 = icmp eq i32 %1170, 2
  %1172 = zext i1 %1171 to i8
  store i8 %1172, i8* %39, align 1
  %1173 = icmp ne i8 %1165, 0
  %1174 = xor i1 %1173, %1171
  %1175 = or i1 %1162, %1174
  %.v95 = select i1 %1175, i64 20, i64 15
  %1176 = add i64 %1140, %.v95
  store i64 %1176, i64* %3, align 8
  br i1 %1175, label %block_.L_413af5, label %block_413af0

block_413af0:                                     ; preds = %block_.L_413ad2
  %1177 = add i64 %1176, 182
  br label %block_.L_413ba6

block_.L_413af5:                                  ; preds = %block_.L_413ad2
  %1178 = add i64 %1176, 6
  store i64 %1178, i64* %3, align 8
  %1179 = load i32, i32* %1142, align 4
  %1180 = zext i32 %1179 to i64
  store i64 %1180, i64* %RAX.i863, align 8
  %1181 = add i64 %1176, 9
  store i64 %1181, i64* %3, align 8
  %1182 = load i32, i32* %1147, align 4
  %1183 = sub i32 %1179, %1182
  %1184 = icmp ult i32 %1179, %1182
  %1185 = zext i1 %1184 to i8
  store i8 %1185, i8* %14, align 1
  %1186 = and i32 %1183, 255
  %1187 = tail call i32 @llvm.ctpop.i32(i32 %1186)
  %1188 = trunc i32 %1187 to i8
  %1189 = and i8 %1188, 1
  %1190 = xor i8 %1189, 1
  store i8 %1190, i8* %21, align 1
  %1191 = xor i32 %1182, %1179
  %1192 = xor i32 %1191, %1183
  %1193 = lshr i32 %1192, 4
  %1194 = trunc i32 %1193 to i8
  %1195 = and i8 %1194, 1
  store i8 %1195, i8* %27, align 1
  %1196 = icmp eq i32 %1183, 0
  %1197 = zext i1 %1196 to i8
  store i8 %1197, i8* %30, align 1
  %1198 = lshr i32 %1183, 31
  %1199 = trunc i32 %1198 to i8
  store i8 %1199, i8* %33, align 1
  %1200 = lshr i32 %1179, 31
  %1201 = lshr i32 %1182, 31
  %1202 = xor i32 %1201, %1200
  %1203 = xor i32 %1198, %1200
  %1204 = add nuw nsw i32 %1203, %1202
  %1205 = icmp eq i32 %1204, 2
  %1206 = zext i1 %1205 to i8
  store i8 %1206, i8* %39, align 1
  %1207 = icmp ne i8 %1199, 0
  %1208 = xor i1 %1207, %1205
  %.v97 = select i1 %1208, i64 15, i64 85
  %1209 = add i64 %1176, %.v97
  store i64 %1209, i64* %3, align 8
  br i1 %1208, label %block_413b04, label %block_.L_413b4a

block_413b04:                                     ; preds = %block_.L_413af5
  %1210 = add i64 %1209, 6
  store i64 %1210, i64* %3, align 8
  %1211 = load i32, i32* %1142, align 4
  %1212 = add i32 %1211, 1
  %1213 = zext i32 %1212 to i64
  store i64 %1213, i64* %RAX.i863, align 8
  %1214 = icmp eq i32 %1211, -1
  %1215 = icmp eq i32 %1212, 0
  %1216 = or i1 %1214, %1215
  %1217 = zext i1 %1216 to i8
  store i8 %1217, i8* %14, align 1
  %1218 = and i32 %1212, 255
  %1219 = tail call i32 @llvm.ctpop.i32(i32 %1218)
  %1220 = trunc i32 %1219 to i8
  %1221 = and i8 %1220, 1
  %1222 = xor i8 %1221, 1
  store i8 %1222, i8* %21, align 1
  %1223 = xor i32 %1212, %1211
  %1224 = lshr i32 %1223, 4
  %1225 = trunc i32 %1224 to i8
  %1226 = and i8 %1225, 1
  store i8 %1226, i8* %27, align 1
  %1227 = zext i1 %1215 to i8
  store i8 %1227, i8* %30, align 1
  %1228 = lshr i32 %1212, 31
  %1229 = trunc i32 %1228 to i8
  store i8 %1229, i8* %33, align 1
  %1230 = lshr i32 %1211, 31
  %1231 = xor i32 %1228, %1230
  %1232 = add nuw nsw i32 %1231, %1228
  %1233 = icmp eq i32 %1232, 2
  %1234 = zext i1 %1233 to i8
  store i8 %1234, i8* %39, align 1
  %1235 = sext i32 %1212 to i64
  store i64 %1235, i64* %RCX.i853, align 8
  %1236 = shl nsw i64 %1235, 2
  %1237 = add nsw i64 %1236, -1104
  %1238 = add i64 %1237, %1138
  %1239 = add i64 %1209, 20
  store i64 %1239, i64* %3, align 8
  %1240 = inttoptr i64 %1238 to i32*
  %1241 = load i32, i32* %1240, align 4
  %1242 = sext i32 %1241 to i64
  store i64 %1242, i64* %RCX.i853, align 8
  %1243 = shl nsw i64 %1242, 2
  %1244 = add i64 %1138, -3168
  %1245 = add i64 %1244, %1243
  %1246 = add i64 %1209, 27
  store i64 %1246, i64* %3, align 8
  %1247 = inttoptr i64 %1245 to i32*
  %1248 = load i32, i32* %1247, align 4
  %1249 = zext i32 %1248 to i64
  store i64 %1249, i64* %RAX.i863, align 8
  %1250 = add i64 %1209, 34
  store i64 %1250, i64* %3, align 8
  %1251 = load i32, i32* %1142, align 4
  %1252 = sext i32 %1251 to i64
  store i64 %1252, i64* %RCX.i853, align 8
  %1253 = shl nsw i64 %1252, 2
  %1254 = add i64 %1138, -1104
  %1255 = add i64 %1254, %1253
  %1256 = add i64 %1209, 42
  store i64 %1256, i64* %3, align 8
  %1257 = inttoptr i64 %1255 to i32*
  %1258 = load i32, i32* %1257, align 4
  %1259 = sext i32 %1258 to i64
  store i64 %1259, i64* %RCX.i853, align 8
  %1260 = shl nsw i64 %1259, 2
  %1261 = add nsw i64 %1260, -3168
  %1262 = add i64 %1261, %1138
  %1263 = add i64 %1209, 49
  store i64 %1263, i64* %3, align 8
  %1264 = inttoptr i64 %1262 to i32*
  %1265 = load i32, i32* %1264, align 4
  %1266 = sub i32 %1248, %1265
  %1267 = icmp ult i32 %1248, %1265
  %1268 = zext i1 %1267 to i8
  store i8 %1268, i8* %14, align 1
  %1269 = and i32 %1266, 255
  %1270 = tail call i32 @llvm.ctpop.i32(i32 %1269)
  %1271 = trunc i32 %1270 to i8
  %1272 = and i8 %1271, 1
  %1273 = xor i8 %1272, 1
  store i8 %1273, i8* %21, align 1
  %1274 = xor i32 %1265, %1248
  %1275 = xor i32 %1274, %1266
  %1276 = lshr i32 %1275, 4
  %1277 = trunc i32 %1276 to i8
  %1278 = and i8 %1277, 1
  store i8 %1278, i8* %27, align 1
  %1279 = icmp eq i32 %1266, 0
  %1280 = zext i1 %1279 to i8
  store i8 %1280, i8* %30, align 1
  %1281 = lshr i32 %1266, 31
  %1282 = trunc i32 %1281 to i8
  store i8 %1282, i8* %33, align 1
  %1283 = lshr i32 %1248, 31
  %1284 = lshr i32 %1265, 31
  %1285 = xor i32 %1284, %1283
  %1286 = xor i32 %1281, %1283
  %1287 = add nuw nsw i32 %1286, %1285
  %1288 = icmp eq i32 %1287, 2
  %1289 = zext i1 %1288 to i8
  store i8 %1289, i8* %39, align 1
  %1290 = icmp ne i8 %1282, 0
  %1291 = xor i1 %1290, %1288
  %.v99 = select i1 %1291, i64 55, i64 70
  %1292 = add i64 %1209, %.v99
  store i64 %1292, i64* %3, align 8
  br i1 %1291, label %block_413b3b, label %block_.L_413b4a

block_413b3b:                                     ; preds = %block_413b04
  %1293 = load i64, i64* %RBP.i, align 8
  %1294 = add i64 %1293, -5260
  %1295 = add i64 %1292, 6
  store i64 %1295, i64* %3, align 8
  %1296 = inttoptr i64 %1294 to i32*
  %1297 = load i32, i32* %1296, align 4
  %1298 = add i32 %1297, 1
  %1299 = zext i32 %1298 to i64
  store i64 %1299, i64* %RAX.i863, align 8
  %1300 = icmp eq i32 %1297, -1
  %1301 = icmp eq i32 %1298, 0
  %1302 = or i1 %1300, %1301
  %1303 = zext i1 %1302 to i8
  store i8 %1303, i8* %14, align 1
  %1304 = and i32 %1298, 255
  %1305 = tail call i32 @llvm.ctpop.i32(i32 %1304)
  %1306 = trunc i32 %1305 to i8
  %1307 = and i8 %1306, 1
  %1308 = xor i8 %1307, 1
  store i8 %1308, i8* %21, align 1
  %1309 = xor i32 %1298, %1297
  %1310 = lshr i32 %1309, 4
  %1311 = trunc i32 %1310 to i8
  %1312 = and i8 %1311, 1
  store i8 %1312, i8* %27, align 1
  %1313 = zext i1 %1301 to i8
  store i8 %1313, i8* %30, align 1
  %1314 = lshr i32 %1298, 31
  %1315 = trunc i32 %1314 to i8
  store i8 %1315, i8* %33, align 1
  %1316 = lshr i32 %1297, 31
  %1317 = xor i32 %1314, %1316
  %1318 = add nuw nsw i32 %1317, %1314
  %1319 = icmp eq i32 %1318, 2
  %1320 = zext i1 %1319 to i8
  store i8 %1320, i8* %39, align 1
  %1321 = add i64 %1292, 15
  store i64 %1321, i64* %3, align 8
  store i32 %1298, i32* %1296, align 4
  %.pre74 = load i64, i64* %3, align 8
  br label %block_.L_413b4a

block_.L_413b4a:                                  ; preds = %block_413b04, %block_.L_413af5, %block_413b3b
  %1322 = phi i64 [ %1292, %block_413b04 ], [ %1209, %block_.L_413af5 ], [ %.pre74, %block_413b3b ]
  %1323 = load i64, i64* %RBP.i, align 8
  %1324 = add i64 %1323, -5264
  %1325 = add i64 %1322, 7
  store i64 %1325, i64* %3, align 8
  %1326 = inttoptr i64 %1324 to i32*
  %1327 = load i32, i32* %1326, align 4
  %1328 = sext i32 %1327 to i64
  store i64 %1328, i64* %RAX.i863, align 8
  %1329 = shl nsw i64 %1328, 2
  %1330 = add i64 %1323, -3168
  %1331 = add i64 %1330, %1329
  %1332 = add i64 %1322, 14
  store i64 %1332, i64* %3, align 8
  %1333 = inttoptr i64 %1331 to i32*
  %1334 = load i32, i32* %1333, align 4
  %1335 = zext i32 %1334 to i64
  store i64 %1335, i64* %RCX.i853, align 8
  %1336 = add i64 %1323, -5260
  %1337 = add i64 %1322, 21
  store i64 %1337, i64* %3, align 8
  %1338 = inttoptr i64 %1336 to i32*
  %1339 = load i32, i32* %1338, align 4
  %1340 = sext i32 %1339 to i64
  store i64 %1340, i64* %RAX.i863, align 8
  %1341 = shl nsw i64 %1340, 2
  %1342 = add i64 %1323, -1104
  %1343 = add i64 %1342, %1341
  %1344 = add i64 %1322, 29
  store i64 %1344, i64* %3, align 8
  %1345 = inttoptr i64 %1343 to i32*
  %1346 = load i32, i32* %1345, align 4
  %1347 = sext i32 %1346 to i64
  store i64 %1347, i64* %RAX.i863, align 8
  %1348 = shl nsw i64 %1347, 2
  %1349 = add nsw i64 %1348, -3168
  %1350 = add i64 %1349, %1323
  %1351 = add i64 %1322, 36
  store i64 %1351, i64* %3, align 8
  %1352 = inttoptr i64 %1350 to i32*
  %1353 = load i32, i32* %1352, align 4
  %1354 = sub i32 %1334, %1353
  %1355 = icmp ult i32 %1334, %1353
  %1356 = zext i1 %1355 to i8
  store i8 %1356, i8* %14, align 1
  %1357 = and i32 %1354, 255
  %1358 = tail call i32 @llvm.ctpop.i32(i32 %1357)
  %1359 = trunc i32 %1358 to i8
  %1360 = and i8 %1359, 1
  %1361 = xor i8 %1360, 1
  store i8 %1361, i8* %21, align 1
  %1362 = xor i32 %1353, %1334
  %1363 = xor i32 %1362, %1354
  %1364 = lshr i32 %1363, 4
  %1365 = trunc i32 %1364 to i8
  %1366 = and i8 %1365, 1
  store i8 %1366, i8* %27, align 1
  %1367 = icmp eq i32 %1354, 0
  %1368 = zext i1 %1367 to i8
  store i8 %1368, i8* %30, align 1
  %1369 = lshr i32 %1354, 31
  %1370 = trunc i32 %1369 to i8
  store i8 %1370, i8* %33, align 1
  %1371 = lshr i32 %1334, 31
  %1372 = lshr i32 %1353, 31
  %1373 = xor i32 %1372, %1371
  %1374 = xor i32 %1369, %1371
  %1375 = add nuw nsw i32 %1374, %1373
  %1376 = icmp eq i32 %1375, 2
  %1377 = zext i1 %1376 to i8
  store i8 %1377, i8* %39, align 1
  %1378 = icmp ne i8 %1370, 0
  %1379 = xor i1 %1378, %1376
  %.v98 = select i1 %1379, i64 42, i64 47
  %1380 = add i64 %1322, %.v98
  store i64 %1380, i64* %3, align 8
  br i1 %1379, label %block_413b74, label %block_.L_413b79

block_413b74:                                     ; preds = %block_.L_413b4a
  %1381 = add i64 %1380, 50
  %1382 = add i64 %1380, 5
  store i64 %1382, i64* %3, align 8
  br label %block_.L_413ba6

block_.L_413b79:                                  ; preds = %block_.L_413b4a
  %1383 = add i64 %1380, 7
  store i64 %1383, i64* %3, align 8
  %1384 = load i32, i32* %1338, align 4
  %1385 = sext i32 %1384 to i64
  store i64 %1385, i64* %RAX.i863, align 8
  %1386 = shl nsw i64 %1385, 2
  %1387 = add i64 %1342, %1386
  %1388 = add i64 %1380, 14
  store i64 %1388, i64* %3, align 8
  %1389 = inttoptr i64 %1387 to i32*
  %1390 = load i32, i32* %1389, align 4
  %1391 = zext i32 %1390 to i64
  store i64 %1391, i64* %RCX.i853, align 8
  %1392 = add i64 %1323, -5256
  %1393 = add i64 %1380, 21
  store i64 %1393, i64* %3, align 8
  %1394 = inttoptr i64 %1392 to i32*
  %1395 = load i32, i32* %1394, align 4
  %1396 = sext i32 %1395 to i64
  store i64 %1396, i64* %RAX.i863, align 8
  %1397 = shl nsw i64 %1396, 2
  %1398 = add i64 %1342, %1397
  %1399 = add i64 %1380, 28
  store i64 %1399, i64* %3, align 8
  %1400 = inttoptr i64 %1398 to i32*
  store i32 %1390, i32* %1400, align 4
  %1401 = load i64, i64* %RBP.i, align 8
  %1402 = add i64 %1401, -5260
  %1403 = load i64, i64* %3, align 8
  %1404 = add i64 %1403, 6
  store i64 %1404, i64* %3, align 8
  %1405 = inttoptr i64 %1402 to i32*
  %1406 = load i32, i32* %1405, align 4
  %1407 = zext i32 %1406 to i64
  store i64 %1407, i64* %RCX.i853, align 8
  %1408 = add i64 %1401, -5256
  %1409 = add i64 %1403, 12
  store i64 %1409, i64* %3, align 8
  %1410 = inttoptr i64 %1408 to i32*
  store i32 %1406, i32* %1410, align 4
  %1411 = load i64, i64* %3, align 8
  %1412 = add i64 %1411, -207
  store i64 %1412, i64* %3, align 8
  br label %block_.L_413ad2

block_.L_413ba6:                                  ; preds = %block_413b74, %block_413af0
  %1413 = phi i64 [ %1138, %block_413af0 ], [ %1323, %block_413b74 ]
  %storemerge25 = phi i64 [ %1177, %block_413af0 ], [ %1381, %block_413b74 ]
  %1414 = add i64 %1413, -5264
  %1415 = add i64 %storemerge25, 6
  store i64 %1415, i64* %3, align 8
  %1416 = inttoptr i64 %1414 to i32*
  %1417 = load i32, i32* %1416, align 4
  %1418 = zext i32 %1417 to i64
  store i64 %1418, i64* %RAX.i863, align 8
  %1419 = add i64 %1413, -5256
  %1420 = add i64 %storemerge25, 13
  store i64 %1420, i64* %3, align 8
  %1421 = inttoptr i64 %1419 to i32*
  %1422 = load i32, i32* %1421, align 4
  %1423 = sext i32 %1422 to i64
  store i64 %1423, i64* %RCX.i853, align 8
  %1424 = shl nsw i64 %1423, 2
  %1425 = add i64 %1413, -1104
  %1426 = add i64 %1425, %1424
  %1427 = add i64 %storemerge25, 20
  store i64 %1427, i64* %3, align 8
  %1428 = inttoptr i64 %1426 to i32*
  store i32 %1417, i32* %1428, align 4
  %1429 = load i64, i64* %RBP.i, align 8
  %1430 = add i64 %1429, -28
  %1431 = load i64, i64* %3, align 8
  %1432 = add i64 %1431, 3
  store i64 %1432, i64* %3, align 8
  %1433 = inttoptr i64 %1430 to i32*
  %1434 = load i32, i32* %1433, align 4
  %1435 = add i32 %1434, 1
  %1436 = zext i32 %1435 to i64
  store i64 %1436, i64* %RAX.i863, align 8
  %1437 = icmp eq i32 %1434, -1
  %1438 = icmp eq i32 %1435, 0
  %1439 = or i1 %1437, %1438
  %1440 = zext i1 %1439 to i8
  store i8 %1440, i8* %14, align 1
  %1441 = and i32 %1435, 255
  %1442 = tail call i32 @llvm.ctpop.i32(i32 %1441)
  %1443 = trunc i32 %1442 to i8
  %1444 = and i8 %1443, 1
  %1445 = xor i8 %1444, 1
  store i8 %1445, i8* %21, align 1
  %1446 = xor i32 %1435, %1434
  %1447 = lshr i32 %1446, 4
  %1448 = trunc i32 %1447 to i8
  %1449 = and i8 %1448, 1
  store i8 %1449, i8* %27, align 1
  %1450 = zext i1 %1438 to i8
  store i8 %1450, i8* %30, align 1
  %1451 = lshr i32 %1435, 31
  %1452 = trunc i32 %1451 to i8
  store i8 %1452, i8* %33, align 1
  %1453 = lshr i32 %1434, 31
  %1454 = xor i32 %1451, %1453
  %1455 = add nuw nsw i32 %1454, %1451
  %1456 = icmp eq i32 %1455, 2
  %1457 = zext i1 %1456 to i8
  store i8 %1457, i8* %39, align 1
  %1458 = add i64 %1431, 9
  store i64 %1458, i64* %3, align 8
  store i32 %1435, i32* %1433, align 4
  %1459 = load i64, i64* %RBP.i, align 8
  %1460 = add i64 %1459, -28
  %1461 = load i64, i64* %3, align 8
  %1462 = add i64 %1461, 3
  store i64 %1462, i64* %3, align 8
  %1463 = inttoptr i64 %1460 to i32*
  %1464 = load i32, i32* %1463, align 4
  %1465 = zext i32 %1464 to i64
  store i64 %1465, i64* %RAX.i863, align 8
  %1466 = add i64 %1459, -40
  %1467 = add i64 %1461, 7
  store i64 %1467, i64* %3, align 8
  %1468 = inttoptr i64 %1466 to i32*
  %1469 = load i32, i32* %1468, align 4
  %1470 = sext i32 %1469 to i64
  store i64 %1470, i64* %RCX.i853, align 8
  %1471 = shl nsw i64 %1470, 2
  %1472 = add i64 %1459, -5232
  %1473 = add i64 %1472, %1471
  %1474 = add i64 %1461, 14
  store i64 %1474, i64* %3, align 8
  %1475 = inttoptr i64 %1473 to i32*
  store i32 %1464, i32* %1475, align 4
  %1476 = load i64, i64* %RBP.i, align 8
  %1477 = add i64 %1476, -36
  %1478 = load i64, i64* %3, align 8
  %1479 = add i64 %1478, 4
  store i64 %1479, i64* %3, align 8
  %1480 = inttoptr i64 %1477 to i32*
  %1481 = load i32, i32* %1480, align 4
  %1482 = sext i32 %1481 to i64
  store i64 %1482, i64* %RCX.i853, align 8
  %1483 = shl nsw i64 %1482, 2
  %1484 = add i64 %1476, -5232
  %1485 = add i64 %1484, %1483
  %1486 = load i32, i32* %EAX.i860, align 4
  %1487 = add i64 %1478, 11
  store i64 %1487, i64* %3, align 8
  %1488 = inttoptr i64 %1485 to i32*
  store i32 %1486, i32* %1488, align 4
  %1489 = load i64, i64* %RBP.i, align 8
  %1490 = add i64 %1489, -36
  %1491 = load i64, i64* %3, align 8
  %1492 = add i64 %1491, 4
  store i64 %1492, i64* %3, align 8
  %1493 = inttoptr i64 %1490 to i32*
  %1494 = load i32, i32* %1493, align 4
  %1495 = sext i32 %1494 to i64
  store i64 %1495, i64* %RCX.i853, align 8
  %1496 = shl nsw i64 %1495, 2
  %1497 = add i64 %1489, -3168
  %1498 = add i64 %1497, %1496
  %1499 = add i64 %1491, 11
  store i64 %1499, i64* %3, align 8
  %1500 = inttoptr i64 %1498 to i32*
  %1501 = load i32, i32* %1500, align 4
  %1502 = and i32 %1501, -256
  %1503 = zext i32 %1502 to i64
  store i64 %1503, i64* %RAX.i863, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  %1504 = icmp ult i32 %1501, 256
  %1505 = zext i1 %1504 to i8
  store i8 %1505, i8* %30, align 1
  %1506 = lshr i32 %1501, 31
  %1507 = trunc i32 %1506 to i8
  store i8 %1507, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %1508 = add i64 %1489, -40
  %1509 = add i64 %1491, 20
  store i64 %1509, i64* %3, align 8
  %1510 = inttoptr i64 %1508 to i32*
  %1511 = load i32, i32* %1510, align 4
  %1512 = sext i32 %1511 to i64
  store i64 %1512, i64* %RCX.i853, align 8
  %1513 = shl nsw i64 %1512, 2
  %1514 = add i64 %1497, %1513
  %1515 = add i64 %1491, 27
  store i64 %1515, i64* %3, align 8
  %1516 = inttoptr i64 %1514 to i32*
  %1517 = load i32, i32* %1516, align 4
  %1518 = and i32 %1517, -256
  %1519 = zext i32 %1518 to i64
  store i64 %1519, i64* %RDX.i835, align 8
  %1520 = add i32 %1518, %1502
  %1521 = zext i32 %1520 to i64
  store i64 %1521, i64* %RAX.i863, align 8
  %1522 = icmp ult i32 %1520, %1502
  %1523 = icmp ult i32 %1520, %1518
  %1524 = or i1 %1522, %1523
  %1525 = zext i1 %1524 to i8
  store i8 %1525, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1526 = icmp eq i32 %1520, 0
  %1527 = zext i1 %1526 to i8
  store i8 %1527, i8* %30, align 1
  %1528 = lshr i32 %1520, 31
  %1529 = trunc i32 %1528 to i8
  store i8 %1529, i8* %33, align 1
  %1530 = lshr i32 %1501, 31
  %1531 = lshr i32 %1517, 31
  %1532 = xor i32 %1528, %1530
  %1533 = xor i32 %1528, %1531
  %1534 = add nuw nsw i32 %1532, %1533
  %1535 = icmp eq i32 %1534, 2
  %1536 = zext i1 %1535 to i8
  store i8 %1536, i8* %39, align 1
  %1537 = add i64 %1491, 39
  store i64 %1537, i64* %3, align 8
  %1538 = load i32, i32* %1493, align 4
  %1539 = sext i32 %1538 to i64
  store i64 %1539, i64* %RCX.i853, align 8
  %1540 = load i64, i64* %RBP.i, align 8
  %1541 = shl nsw i64 %1539, 2
  %1542 = add i64 %1540, -3168
  %1543 = add i64 %1542, %1541
  %1544 = add i64 %1491, 46
  store i64 %1544, i64* %3, align 8
  %1545 = inttoptr i64 %1543 to i32*
  %1546 = load i32, i32* %1545, align 4
  %1547 = and i32 %1546, 255
  %1548 = zext i32 %1547 to i64
  store i64 %1548, i64* %RDX.i835, align 8
  store i8 0, i8* %14, align 1
  %1549 = tail call i32 @llvm.ctpop.i32(i32 %1547)
  %1550 = trunc i32 %1549 to i8
  %1551 = and i8 %1550, 1
  %1552 = xor i8 %1551, 1
  store i8 %1552, i8* %21, align 1
  %1553 = icmp eq i32 %1547, 0
  %1554 = zext i1 %1553 to i8
  store i8 %1554, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %1555 = add i64 %1540, -40
  %1556 = add i64 %1491, 56
  store i64 %1556, i64* %3, align 8
  %1557 = inttoptr i64 %1555 to i32*
  %1558 = load i32, i32* %1557, align 4
  %1559 = sext i32 %1558 to i64
  store i64 %1559, i64* %RCX.i853, align 8
  %1560 = shl nsw i64 %1559, 2
  %1561 = add i64 %1542, %1560
  %1562 = add i64 %1491, 63
  store i64 %1562, i64* %3, align 8
  %1563 = inttoptr i64 %1561 to i32*
  %1564 = load i32, i32* %1563, align 4
  %1565 = and i32 %1564, 255
  %1566 = zext i32 %1565 to i64
  store i64 %1566, i64* %RSI.i874, align 8
  %1567 = sub nsw i32 %1547, %1565
  %1568 = icmp ult i32 %1547, %1565
  %1569 = zext i1 %1568 to i8
  store i8 %1569, i8* %14, align 1
  %fold = sub i32 %1546, %1564
  %1570 = and i32 %fold, 255
  %1571 = tail call i32 @llvm.ctpop.i32(i32 %1570)
  %1572 = trunc i32 %1571 to i8
  %1573 = and i8 %1572, 1
  %1574 = xor i8 %1573, 1
  store i8 %1574, i8* %21, align 1
  %1575 = xor i32 %1564, %1546
  %1576 = xor i32 %1575, %1567
  %1577 = lshr i32 %1576, 4
  %1578 = trunc i32 %1577 to i8
  %1579 = and i8 %1578, 1
  store i8 %1579, i8* %27, align 1
  %1580 = icmp eq i32 %1567, 0
  %1581 = zext i1 %1580 to i8
  store i8 %1581, i8* %30, align 1
  %1582 = lshr i32 %1567, 31
  %1583 = trunc i32 %1582 to i8
  store i8 %1583, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1584 = add i64 %1540, -5280
  %1585 = load i32, i32* %EAX.i860, align 4
  %1586 = add i64 %1491, 77
  store i64 %1586, i64* %3, align 8
  %1587 = inttoptr i64 %1584 to i32*
  store i32 %1585, i32* %1587, align 4
  %1588 = load i64, i64* %3, align 8
  %1589 = load i8, i8* %30, align 1
  %1590 = icmp ne i8 %1589, 0
  %1591 = load i8, i8* %33, align 1
  %1592 = icmp ne i8 %1591, 0
  %1593 = load i8, i8* %39, align 1
  %1594 = icmp ne i8 %1593, 0
  %1595 = xor i1 %1592, %1594
  %1596 = or i1 %1590, %1595
  %.v139 = select i1 %1596, i64 34, i64 6
  %1597 = add i64 %1588, %.v139
  store i64 %1597, i64* %3, align 8
  %1598 = load i64, i64* %RBP.i, align 8
  br i1 %1596, label %block_.L_413c4b, label %block_413c2f

block_413c2f:                                     ; preds = %block_.L_413ba6
  %1599 = add i64 %1598, -36
  %1600 = add i64 %1597, 4
  store i64 %1600, i64* %3, align 8
  %1601 = inttoptr i64 %1599 to i32*
  %1602 = load i32, i32* %1601, align 4
  %1603 = sext i32 %1602 to i64
  store i64 %1603, i64* %RAX.i863, align 8
  %1604 = shl nsw i64 %1603, 2
  %1605 = add i64 %1598, -3168
  %1606 = add i64 %1605, %1604
  %1607 = add i64 %1597, 11
  store i64 %1607, i64* %3, align 8
  %1608 = inttoptr i64 %1606 to i32*
  %1609 = load i32, i32* %1608, align 4
  %1610 = and i32 %1609, 255
  %1611 = zext i32 %1610 to i64
  store i64 %1611, i64* %RCX.i853, align 8
  store i8 0, i8* %14, align 1
  %1612 = tail call i32 @llvm.ctpop.i32(i32 %1610)
  %1613 = trunc i32 %1612 to i8
  %1614 = and i8 %1613, 1
  %1615 = xor i8 %1614, 1
  store i8 %1615, i8* %21, align 1
  %1616 = icmp eq i32 %1610, 0
  %1617 = zext i1 %1616 to i8
  store i8 %1617, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %1618 = add i64 %1598, -5284
  %1619 = add i64 %1597, 23
  store i64 %1619, i64* %3, align 8
  %1620 = inttoptr i64 %1618 to i32*
  store i32 %1610, i32* %1620, align 4
  %1621 = load i64, i64* %3, align 8
  %1622 = add i64 %1621, 28
  store i64 %1622, i64* %3, align 8
  br label %block_.L_413c62

block_.L_413c4b:                                  ; preds = %block_.L_413ba6
  %1623 = add i64 %1598, -40
  %1624 = add i64 %1597, 4
  store i64 %1624, i64* %3, align 8
  %1625 = inttoptr i64 %1623 to i32*
  %1626 = load i32, i32* %1625, align 4
  %1627 = sext i32 %1626 to i64
  store i64 %1627, i64* %RAX.i863, align 8
  %1628 = shl nsw i64 %1627, 2
  %1629 = add i64 %1598, -3168
  %1630 = add i64 %1629, %1628
  %1631 = add i64 %1597, 11
  store i64 %1631, i64* %3, align 8
  %1632 = inttoptr i64 %1630 to i32*
  %1633 = load i32, i32* %1632, align 4
  %1634 = and i32 %1633, 255
  %1635 = zext i32 %1634 to i64
  store i64 %1635, i64* %RCX.i853, align 8
  store i8 0, i8* %14, align 1
  %1636 = tail call i32 @llvm.ctpop.i32(i32 %1634)
  %1637 = trunc i32 %1636 to i8
  %1638 = and i8 %1637, 1
  %1639 = xor i8 %1638, 1
  store i8 %1639, i8* %21, align 1
  %1640 = icmp eq i32 %1634, 0
  %1641 = zext i1 %1640 to i8
  store i8 %1641, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %1642 = add i64 %1598, -5284
  %1643 = add i64 %1597, 23
  store i64 %1643, i64* %3, align 8
  %1644 = inttoptr i64 %1642 to i32*
  store i32 %1634, i32* %1644, align 4
  %.pre75 = load i64, i64* %3, align 8
  br label %block_.L_413c62

block_.L_413c62:                                  ; preds = %block_.L_413c4b, %block_413c2f
  %1645 = phi i64 [ %.pre75, %block_.L_413c4b ], [ %1622, %block_413c2f ]
  %1646 = load i64, i64* %RBP.i, align 8
  %1647 = add i64 %1646, -5284
  %1648 = add i64 %1645, 6
  store i64 %1648, i64* %3, align 8
  %1649 = inttoptr i64 %1647 to i32*
  %1650 = load i32, i32* %1649, align 4
  %1651 = add i32 %1650, 1
  %1652 = zext i32 %1651 to i64
  store i64 %1652, i64* %RAX.i863, align 8
  %1653 = icmp eq i32 %1650, -1
  %1654 = icmp eq i32 %1651, 0
  %1655 = or i1 %1653, %1654
  %1656 = zext i1 %1655 to i8
  store i8 %1656, i8* %14, align 1
  %1657 = and i32 %1651, 255
  %1658 = tail call i32 @llvm.ctpop.i32(i32 %1657)
  %1659 = trunc i32 %1658 to i8
  %1660 = and i8 %1659, 1
  %1661 = xor i8 %1660, 1
  store i8 %1661, i8* %21, align 1
  %1662 = xor i32 %1651, %1650
  %1663 = lshr i32 %1662, 4
  %1664 = trunc i32 %1663 to i8
  %1665 = and i8 %1664, 1
  store i8 %1665, i8* %27, align 1
  %1666 = zext i1 %1654 to i8
  store i8 %1666, i8* %30, align 1
  %1667 = lshr i32 %1651, 31
  %1668 = trunc i32 %1667 to i8
  store i8 %1668, i8* %33, align 1
  %1669 = lshr i32 %1650, 31
  %1670 = xor i32 %1667, %1669
  %1671 = add nuw nsw i32 %1670, %1667
  %1672 = icmp eq i32 %1671, 2
  %1673 = zext i1 %1672 to i8
  store i8 %1673, i8* %39, align 1
  %1674 = add i64 %1646, -5280
  %1675 = add i64 %1645, 15
  store i64 %1675, i64* %3, align 8
  %1676 = inttoptr i64 %1674 to i32*
  %1677 = load i32, i32* %1676, align 4
  %1678 = or i32 %1651, %1677
  %1679 = zext i32 %1678 to i64
  store i64 %1679, i64* %RCX.i853, align 8
  store i8 0, i8* %14, align 1
  %1680 = and i32 %1678, 255
  %1681 = tail call i32 @llvm.ctpop.i32(i32 %1680)
  %1682 = trunc i32 %1681 to i8
  %1683 = and i8 %1682, 1
  %1684 = xor i8 %1683, 1
  store i8 %1684, i8* %21, align 1
  %1685 = icmp eq i32 %1678, 0
  %1686 = zext i1 %1685 to i8
  store i8 %1686, i8* %30, align 1
  %1687 = lshr i32 %1678, 31
  %1688 = trunc i32 %1687 to i8
  store i8 %1688, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %1689 = add i64 %1646, -28
  %1690 = add i64 %1645, 21
  store i64 %1690, i64* %3, align 8
  %1691 = inttoptr i64 %1689 to i32*
  %1692 = load i32, i32* %1691, align 4
  %1693 = sext i32 %1692 to i64
  store i64 %1693, i64* %RDX.i835, align 8
  %1694 = shl nsw i64 %1693, 2
  %1695 = add i64 %1646, -3168
  %1696 = add i64 %1695, %1694
  %1697 = add i64 %1645, 28
  store i64 %1697, i64* %3, align 8
  %1698 = inttoptr i64 %1696 to i32*
  store i32 %1678, i32* %1698, align 4
  %1699 = load i64, i64* %RBP.i, align 8
  %1700 = add i64 %1699, -28
  %1701 = load i64, i64* %3, align 8
  %1702 = add i64 %1701, 4
  store i64 %1702, i64* %3, align 8
  %1703 = inttoptr i64 %1700 to i32*
  %1704 = load i32, i32* %1703, align 4
  %1705 = sext i32 %1704 to i64
  store i64 %1705, i64* %RDX.i835, align 8
  %1706 = shl nsw i64 %1705, 2
  %1707 = add i64 %1699, -5232
  %1708 = add i64 %1707, %1706
  %1709 = add i64 %1701, 15
  store i64 %1709, i64* %3, align 8
  %1710 = inttoptr i64 %1708 to i32*
  store i32 -1, i32* %1710, align 4
  %1711 = load i64, i64* %RBP.i, align 8
  %1712 = add i64 %1711, -32
  %1713 = load i64, i64* %3, align 8
  %1714 = add i64 %1713, 3
  store i64 %1714, i64* %3, align 8
  %1715 = inttoptr i64 %1712 to i32*
  %1716 = load i32, i32* %1715, align 4
  %1717 = add i32 %1716, 1
  %1718 = zext i32 %1717 to i64
  store i64 %1718, i64* %RAX.i863, align 8
  %1719 = icmp eq i32 %1716, -1
  %1720 = icmp eq i32 %1717, 0
  %1721 = or i1 %1719, %1720
  %1722 = zext i1 %1721 to i8
  store i8 %1722, i8* %14, align 1
  %1723 = and i32 %1717, 255
  %1724 = tail call i32 @llvm.ctpop.i32(i32 %1723)
  %1725 = trunc i32 %1724 to i8
  %1726 = and i8 %1725, 1
  %1727 = xor i8 %1726, 1
  store i8 %1727, i8* %21, align 1
  %1728 = xor i32 %1717, %1716
  %1729 = lshr i32 %1728, 4
  %1730 = trunc i32 %1729 to i8
  %1731 = and i8 %1730, 1
  store i8 %1731, i8* %27, align 1
  %1732 = zext i1 %1720 to i8
  store i8 %1732, i8* %30, align 1
  %1733 = lshr i32 %1717, 31
  %1734 = trunc i32 %1733 to i8
  store i8 %1734, i8* %33, align 1
  %1735 = lshr i32 %1716, 31
  %1736 = xor i32 %1733, %1735
  %1737 = add nuw nsw i32 %1736, %1733
  %1738 = icmp eq i32 %1737, 2
  %1739 = zext i1 %1738 to i8
  store i8 %1739, i8* %39, align 1
  %1740 = add i64 %1713, 9
  store i64 %1740, i64* %3, align 8
  store i32 %1717, i32* %1715, align 4
  %1741 = load i64, i64* %RBP.i, align 8
  %1742 = add i64 %1741, -28
  %1743 = load i64, i64* %3, align 8
  %1744 = add i64 %1743, 3
  store i64 %1744, i64* %3, align 8
  %1745 = inttoptr i64 %1742 to i32*
  %1746 = load i32, i32* %1745, align 4
  %1747 = zext i32 %1746 to i64
  store i64 %1747, i64* %RAX.i863, align 8
  %1748 = add i64 %1741, -32
  %1749 = add i64 %1743, 7
  store i64 %1749, i64* %3, align 8
  %1750 = inttoptr i64 %1748 to i32*
  %1751 = load i32, i32* %1750, align 4
  %1752 = sext i32 %1751 to i64
  store i64 %1752, i64* %RDX.i835, align 8
  %1753 = shl nsw i64 %1752, 2
  %1754 = add i64 %1741, -1104
  %1755 = add i64 %1754, %1753
  %1756 = add i64 %1743, 14
  store i64 %1756, i64* %3, align 8
  %1757 = inttoptr i64 %1755 to i32*
  store i32 %1746, i32* %1757, align 4
  %1758 = load i64, i64* %RBP.i, align 8
  %1759 = add i64 %1758, -32
  %1760 = load i64, i64* %3, align 8
  %1761 = add i64 %1760, 3
  store i64 %1761, i64* %3, align 8
  %1762 = inttoptr i64 %1759 to i32*
  %1763 = load i32, i32* %1762, align 4
  %1764 = zext i32 %1763 to i64
  store i64 %1764, i64* %RAX.i863, align 8
  %1765 = add i64 %1758, -5268
  %1766 = add i64 %1760, 9
  store i64 %1766, i64* %3, align 8
  %1767 = inttoptr i64 %1765 to i32*
  store i32 %1763, i32* %1767, align 4
  %1768 = load i64, i64* %RBP.i, align 8
  %1769 = add i64 %1768, -5268
  %1770 = load i64, i64* %3, align 8
  %1771 = add i64 %1770, 7
  store i64 %1771, i64* %3, align 8
  %1772 = inttoptr i64 %1769 to i32*
  %1773 = load i32, i32* %1772, align 4
  %1774 = sext i32 %1773 to i64
  store i64 %1774, i64* %RDX.i835, align 8
  %1775 = shl nsw i64 %1774, 2
  %1776 = add i64 %1768, -1104
  %1777 = add i64 %1776, %1775
  %1778 = add i64 %1770, 14
  store i64 %1778, i64* %3, align 8
  %1779 = inttoptr i64 %1777 to i32*
  %1780 = load i32, i32* %1779, align 4
  %1781 = zext i32 %1780 to i64
  store i64 %1781, i64* %RAX.i863, align 8
  %1782 = add i64 %1768, -5272
  %1783 = add i64 %1770, 20
  store i64 %1783, i64* %3, align 8
  %1784 = inttoptr i64 %1782 to i32*
  store i32 %1780, i32* %1784, align 4
  %.pre76 = load i64, i64* %3, align 8
  br label %block_.L_413cc1

block_.L_413cc1:                                  ; preds = %block_413cf0, %block_.L_413c62
  %1785 = phi i64 [ %1923, %block_413cf0 ], [ %.pre76, %block_.L_413c62 ]
  %1786 = load i64, i64* %RBP.i, align 8
  %1787 = add i64 %1786, -5272
  %1788 = add i64 %1785, 7
  store i64 %1788, i64* %3, align 8
  %1789 = inttoptr i64 %1787 to i32*
  %1790 = load i32, i32* %1789, align 4
  %1791 = sext i32 %1790 to i64
  store i64 %1791, i64* %RAX.i863, align 8
  %1792 = shl nsw i64 %1791, 2
  %1793 = add i64 %1786, -3168
  %1794 = add i64 %1793, %1792
  %1795 = add i64 %1785, 14
  store i64 %1795, i64* %3, align 8
  %1796 = inttoptr i64 %1794 to i32*
  %1797 = load i32, i32* %1796, align 4
  %1798 = zext i32 %1797 to i64
  store i64 %1798, i64* %RCX.i853, align 8
  %1799 = add i64 %1786, -5268
  %1800 = add i64 %1785, 20
  store i64 %1800, i64* %3, align 8
  %1801 = inttoptr i64 %1799 to i32*
  %1802 = load i32, i32* %1801, align 4
  %1803 = zext i32 %1802 to i64
  %1804 = shl nuw i64 %1803, 32
  %1805 = ashr i64 %1804, 33
  %1806 = trunc i32 %1802 to i8
  %1807 = and i8 %1806, 1
  %1808 = trunc i64 %1805 to i32
  %1809 = and i64 %1805, 4294967295
  store i64 %1809, i64* %RDX.i835, align 8
  store i8 %1807, i8* %14, align 1
  %1810 = and i32 %1808, 255
  %1811 = tail call i32 @llvm.ctpop.i32(i32 %1810)
  %1812 = trunc i32 %1811 to i8
  %1813 = and i8 %1812, 1
  %1814 = xor i8 %1813, 1
  store i8 %1814, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1815 = icmp eq i32 %1808, 0
  %1816 = zext i1 %1815 to i8
  store i8 %1816, i8* %30, align 1
  %1817 = lshr i64 %1805, 31
  %1818 = trunc i64 %1817 to i8
  %1819 = and i8 %1818, 1
  store i8 %1819, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i64 %1805, i64* %RAX.i863, align 8
  %1820 = shl nsw i64 %1805, 2
  %1821 = add nsw i64 %1820, -1104
  %1822 = add i64 %1821, %1786
  %1823 = add i64 %1785, 33
  store i64 %1823, i64* %3, align 8
  %1824 = inttoptr i64 %1822 to i32*
  %1825 = load i32, i32* %1824, align 4
  %1826 = sext i32 %1825 to i64
  store i64 %1826, i64* %RAX.i863, align 8
  %1827 = shl nsw i64 %1826, 2
  %1828 = add nsw i64 %1827, -3168
  %1829 = add i64 %1828, %1786
  %1830 = add i64 %1785, 40
  store i64 %1830, i64* %3, align 8
  %1831 = inttoptr i64 %1829 to i32*
  %1832 = load i32, i32* %1831, align 4
  %1833 = sub i32 %1797, %1832
  %1834 = icmp ult i32 %1797, %1832
  %1835 = zext i1 %1834 to i8
  store i8 %1835, i8* %14, align 1
  %1836 = and i32 %1833, 255
  %1837 = tail call i32 @llvm.ctpop.i32(i32 %1836)
  %1838 = trunc i32 %1837 to i8
  %1839 = and i8 %1838, 1
  %1840 = xor i8 %1839, 1
  store i8 %1840, i8* %21, align 1
  %1841 = xor i32 %1832, %1797
  %1842 = xor i32 %1841, %1833
  %1843 = lshr i32 %1842, 4
  %1844 = trunc i32 %1843 to i8
  %1845 = and i8 %1844, 1
  store i8 %1845, i8* %27, align 1
  %1846 = icmp eq i32 %1833, 0
  %1847 = zext i1 %1846 to i8
  store i8 %1847, i8* %30, align 1
  %1848 = lshr i32 %1833, 31
  %1849 = trunc i32 %1848 to i8
  store i8 %1849, i8* %33, align 1
  %1850 = lshr i32 %1797, 31
  %1851 = lshr i32 %1832, 31
  %1852 = xor i32 %1851, %1850
  %1853 = xor i32 %1848, %1850
  %1854 = add nuw nsw i32 %1853, %1852
  %1855 = icmp eq i32 %1854, 2
  %1856 = zext i1 %1855 to i8
  store i8 %1856, i8* %39, align 1
  %1857 = icmp ne i8 %1849, 0
  %1858 = xor i1 %1857, %1855
  %.v96 = select i1 %1858, i64 46, i64 99
  %1859 = add i64 %1785, %.v96
  store i64 %1859, i64* %3, align 8
  %1860 = load i64, i64* %RBP.i, align 8
  br i1 %1858, label %block_413cf0, label %block_.L_413d25

block_413cf0:                                     ; preds = %block_.L_413cc1
  %1861 = add i64 %1860, -5268
  %1862 = add i64 %1859, 6
  store i64 %1862, i64* %3, align 8
  %1863 = inttoptr i64 %1861 to i32*
  %1864 = load i32, i32* %1863, align 4
  %1865 = zext i32 %1864 to i64
  %1866 = shl nuw i64 %1865, 32
  %1867 = ashr i64 %1866, 33
  %1868 = trunc i32 %1864 to i8
  %1869 = and i8 %1868, 1
  %1870 = trunc i64 %1867 to i32
  %1871 = and i64 %1867, 4294967295
  store i64 %1871, i64* %RAX.i863, align 8
  store i8 %1869, i8* %14, align 1
  %1872 = and i32 %1870, 255
  %1873 = tail call i32 @llvm.ctpop.i32(i32 %1872)
  %1874 = trunc i32 %1873 to i8
  %1875 = and i8 %1874, 1
  %1876 = xor i8 %1875, 1
  store i8 %1876, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1877 = icmp eq i32 %1870, 0
  %1878 = zext i1 %1877 to i8
  store i8 %1878, i8* %30, align 1
  %1879 = lshr i64 %1867, 31
  %1880 = trunc i64 %1879 to i8
  %1881 = and i8 %1880, 1
  store i8 %1881, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i64 %1867, i64* %RCX.i853, align 8
  %1882 = shl nsw i64 %1867, 2
  %1883 = add nsw i64 %1882, -1104
  %1884 = add i64 %1883, %1860
  %1885 = add i64 %1859, 18
  store i64 %1885, i64* %3, align 8
  %1886 = inttoptr i64 %1884 to i32*
  %1887 = load i32, i32* %1886, align 4
  %1888 = zext i32 %1887 to i64
  store i64 %1888, i64* %RAX.i863, align 8
  %1889 = add i64 %1859, 25
  store i64 %1889, i64* %3, align 8
  %1890 = load i32, i32* %1863, align 4
  %1891 = sext i32 %1890 to i64
  store i64 %1891, i64* %RCX.i853, align 8
  %1892 = shl nsw i64 %1891, 2
  %1893 = add i64 %1860, -1104
  %1894 = add i64 %1893, %1892
  %1895 = add i64 %1859, 32
  store i64 %1895, i64* %3, align 8
  %1896 = inttoptr i64 %1894 to i32*
  store i32 %1887, i32* %1896, align 4
  %1897 = load i64, i64* %RBP.i, align 8
  %1898 = add i64 %1897, -5268
  %1899 = load i64, i64* %3, align 8
  %1900 = add i64 %1899, 6
  store i64 %1900, i64* %3, align 8
  %1901 = inttoptr i64 %1898 to i32*
  %1902 = load i32, i32* %1901, align 4
  %1903 = zext i32 %1902 to i64
  %1904 = shl nuw i64 %1903, 32
  %1905 = ashr i64 %1904, 33
  %1906 = trunc i32 %1902 to i8
  %1907 = and i8 %1906, 1
  %1908 = trunc i64 %1905 to i32
  %1909 = and i64 %1905, 4294967295
  store i64 %1909, i64* %RAX.i863, align 8
  store i8 %1907, i8* %14, align 1
  %1910 = and i32 %1908, 255
  %1911 = tail call i32 @llvm.ctpop.i32(i32 %1910)
  %1912 = trunc i32 %1911 to i8
  %1913 = and i8 %1912, 1
  %1914 = xor i8 %1913, 1
  store i8 %1914, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1915 = icmp eq i32 %1908, 0
  %1916 = zext i1 %1915 to i8
  store i8 %1916, i8* %30, align 1
  %1917 = lshr i64 %1905, 31
  %1918 = trunc i64 %1917 to i8
  %1919 = and i8 %1918, 1
  store i8 %1919, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1920 = trunc i64 %1905 to i32
  %1921 = add i64 %1899, 14
  store i64 %1921, i64* %3, align 8
  store i32 %1920, i32* %1901, align 4
  %1922 = load i64, i64* %3, align 8
  %1923 = add i64 %1922, -95
  store i64 %1923, i64* %3, align 8
  br label %block_.L_413cc1

block_.L_413d25:                                  ; preds = %block_.L_413cc1
  %1924 = add i64 %1860, -5272
  %1925 = add i64 %1859, 6
  store i64 %1925, i64* %3, align 8
  %1926 = inttoptr i64 %1924 to i32*
  %1927 = load i32, i32* %1926, align 4
  %1928 = zext i32 %1927 to i64
  store i64 %1928, i64* %RAX.i863, align 8
  %1929 = add i64 %1860, -5268
  %1930 = add i64 %1859, 13
  store i64 %1930, i64* %3, align 8
  %1931 = inttoptr i64 %1929 to i32*
  %1932 = load i32, i32* %1931, align 4
  %1933 = sext i32 %1932 to i64
  store i64 %1933, i64* %RCX.i853, align 8
  %1934 = shl nsw i64 %1933, 2
  %1935 = add i64 %1860, -1104
  %1936 = add i64 %1935, %1934
  %1937 = add i64 %1859, 20
  store i64 %1937, i64* %3, align 8
  %1938 = inttoptr i64 %1936 to i32*
  store i32 %1927, i32* %1938, align 4
  %1939 = load i64, i64* %3, align 8
  %1940 = add i64 %1939, -987
  %1941 = add i64 %1939, 5
  store i64 %1941, i64* %3, align 8
  br label %block_.L_41395e

block_.L_413d3e:                                  ; preds = %block_.L_41395e
  %1942 = add i64 %607, -28
  %1943 = add i64 %636, 7
  store i64 %1943, i64* %3, align 8
  %1944 = inttoptr i64 %1942 to i32*
  %1945 = load i32, i32* %1944, align 4
  %1946 = add i32 %1945, -516
  %1947 = icmp ult i32 %1945, 516
  %1948 = zext i1 %1947 to i8
  store i8 %1948, i8* %14, align 1
  %1949 = and i32 %1946, 255
  %1950 = tail call i32 @llvm.ctpop.i32(i32 %1949)
  %1951 = trunc i32 %1950 to i8
  %1952 = and i8 %1951, 1
  %1953 = xor i8 %1952, 1
  store i8 %1953, i8* %21, align 1
  %1954 = xor i32 %1946, %1945
  %1955 = lshr i32 %1954, 4
  %1956 = trunc i32 %1955 to i8
  %1957 = and i8 %1956, 1
  store i8 %1957, i8* %27, align 1
  %1958 = icmp eq i32 %1946, 0
  %1959 = zext i1 %1958 to i8
  store i8 %1959, i8* %30, align 1
  %1960 = lshr i32 %1946, 31
  %1961 = trunc i32 %1960 to i8
  store i8 %1961, i8* %33, align 1
  %1962 = lshr i32 %1945, 31
  %1963 = xor i32 %1960, %1962
  %1964 = add nuw nsw i32 %1963, %1962
  %1965 = icmp eq i32 %1964, 2
  %1966 = zext i1 %1965 to i8
  store i8 %1966, i8* %39, align 1
  %1967 = icmp ne i8 %1961, 0
  %1968 = xor i1 %1967, %1965
  %.v103 = select i1 %1968, i64 23, i64 13
  %1969 = add i64 %636, %.v103
  store i64 %1969, i64* %3, align 8
  br i1 %1968, label %block_.L_413d55, label %block_413d4b

block_413d4b:                                     ; preds = %block_.L_413d3e
  store i64 2002, i64* %RDI.i877, align 8
  %1970 = add i64 %1969, -60971
  %1971 = add i64 %1969, 10
  %1972 = load i64, i64* %6, align 8
  %1973 = add i64 %1972, -8
  %1974 = inttoptr i64 %1973 to i64*
  store i64 %1971, i64* %1974, align 8
  store i64 %1973, i64* %6, align 8
  store i64 %1970, i64* %3, align 8
  %call2_413d50 = tail call %struct.Memory* @sub_404f20.BZ2_bz__AssertH__fail(%struct.State* nonnull %0, i64 %1970, %struct.Memory* %MEMORY.2)
  %.pre77 = load i64, i64* %RBP.i, align 8
  %.pre78 = load i64, i64* %3, align 8
  br label %block_.L_413d55

block_.L_413d55:                                  ; preds = %block_413d4b, %block_.L_413d3e
  %1975 = phi i64 [ %1969, %block_.L_413d3e ], [ %.pre78, %block_413d4b ]
  %1976 = phi i64 [ %607, %block_.L_413d3e ], [ %.pre77, %block_413d4b ]
  %MEMORY.15 = phi %struct.Memory* [ %MEMORY.2, %block_.L_413d3e ], [ %call2_413d50, %block_413d4b ]
  %1977 = add i64 %1976, -53
  %1978 = add i64 %1975, 4
  store i64 %1978, i64* %3, align 8
  %1979 = inttoptr i64 %1977 to i8*
  store i8 0, i8* %1979, align 1
  %1980 = load i64, i64* %RBP.i, align 8
  %1981 = add i64 %1980, -44
  %1982 = load i64, i64* %3, align 8
  %1983 = add i64 %1982, 7
  store i64 %1983, i64* %3, align 8
  %1984 = inttoptr i64 %1981 to i32*
  store i32 1, i32* %1984, align 4
  %.pre79 = load i64, i64* %3, align 8
  br label %block_.L_413d60

block_.L_413d60:                                  ; preds = %block_.L_413dcc, %block_.L_413d55
  %1985 = phi i64 [ %2215, %block_.L_413dcc ], [ %.pre79, %block_.L_413d55 ]
  %1986 = load i64, i64* %RBP.i, align 8
  %1987 = add i64 %1986, -44
  %1988 = add i64 %1985, 3
  store i64 %1988, i64* %3, align 8
  %1989 = inttoptr i64 %1987 to i32*
  %1990 = load i32, i32* %1989, align 4
  %1991 = zext i32 %1990 to i64
  store i64 %1991, i64* %RAX.i863, align 8
  %1992 = add i64 %1986, -20
  %1993 = add i64 %1985, 6
  store i64 %1993, i64* %3, align 8
  %1994 = inttoptr i64 %1992 to i32*
  %1995 = load i32, i32* %1994, align 4
  %1996 = sub i32 %1990, %1995
  %1997 = icmp ult i32 %1990, %1995
  %1998 = zext i1 %1997 to i8
  store i8 %1998, i8* %14, align 1
  %1999 = and i32 %1996, 255
  %2000 = tail call i32 @llvm.ctpop.i32(i32 %1999)
  %2001 = trunc i32 %2000 to i8
  %2002 = and i8 %2001, 1
  %2003 = xor i8 %2002, 1
  store i8 %2003, i8* %21, align 1
  %2004 = xor i32 %1995, %1990
  %2005 = xor i32 %2004, %1996
  %2006 = lshr i32 %2005, 4
  %2007 = trunc i32 %2006 to i8
  %2008 = and i8 %2007, 1
  store i8 %2008, i8* %27, align 1
  %2009 = icmp eq i32 %1996, 0
  %2010 = zext i1 %2009 to i8
  store i8 %2010, i8* %30, align 1
  %2011 = lshr i32 %1996, 31
  %2012 = trunc i32 %2011 to i8
  store i8 %2012, i8* %33, align 1
  %2013 = lshr i32 %1990, 31
  %2014 = lshr i32 %1995, 31
  %2015 = xor i32 %2014, %2013
  %2016 = xor i32 %2011, %2013
  %2017 = add nuw nsw i32 %2016, %2015
  %2018 = icmp eq i32 %2017, 2
  %2019 = zext i1 %2018 to i8
  store i8 %2019, i8* %39, align 1
  %2020 = icmp ne i8 %2012, 0
  %2021 = xor i1 %2020, %2018
  %.demorgan88 = or i1 %2009, %2021
  %.v104 = select i1 %.demorgan88, i64 12, i64 127
  %2022 = add i64 %1985, %.v104
  store i64 %2022, i64* %3, align 8
  br i1 %.demorgan88, label %block_413d6c, label %block_.L_413ddf

block_413d6c:                                     ; preds = %block_.L_413d60
  %2023 = add i64 %1986, -48
  %2024 = add i64 %2022, 7
  store i64 %2024, i64* %3, align 8
  %2025 = inttoptr i64 %2023 to i32*
  store i32 0, i32* %2025, align 4
  %2026 = load i64, i64* %RBP.i, align 8
  %2027 = add i64 %2026, -44
  %2028 = load i64, i64* %3, align 8
  %2029 = add i64 %2028, 3
  store i64 %2029, i64* %3, align 8
  %2030 = inttoptr i64 %2027 to i32*
  %2031 = load i32, i32* %2030, align 4
  %2032 = zext i32 %2031 to i64
  store i64 %2032, i64* %RAX.i863, align 8
  %2033 = add i64 %2026, -52
  %2034 = add i64 %2028, 6
  store i64 %2034, i64* %3, align 8
  %2035 = inttoptr i64 %2033 to i32*
  store i32 %2031, i32* %2035, align 4
  %.pre80 = load i64, i64* %3, align 8
  br label %block_.L_413d79

block_.L_413d79:                                  ; preds = %block_413d8b, %block_413d6c
  %2036 = phi i64 [ %2101, %block_413d8b ], [ %.pre80, %block_413d6c ]
  %2037 = load i64, i64* %RBP.i, align 8
  %2038 = add i64 %2037, -52
  %2039 = add i64 %2036, 4
  store i64 %2039, i64* %3, align 8
  %2040 = inttoptr i64 %2038 to i32*
  %2041 = load i32, i32* %2040, align 4
  %2042 = sext i32 %2041 to i64
  store i64 %2042, i64* %RAX.i863, align 8
  %2043 = shl nsw i64 %2042, 2
  %2044 = add i64 %2037, -5232
  %2045 = add i64 %2044, %2043
  %2046 = add i64 %2036, 12
  store i64 %2046, i64* %3, align 8
  %2047 = inttoptr i64 %2045 to i32*
  %2048 = load i32, i32* %2047, align 4
  store i8 0, i8* %14, align 1
  %2049 = and i32 %2048, 255
  %2050 = tail call i32 @llvm.ctpop.i32(i32 %2049)
  %2051 = trunc i32 %2050 to i8
  %2052 = and i8 %2051, 1
  %2053 = xor i8 %2052, 1
  store i8 %2053, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2054 = icmp eq i32 %2048, 0
  %2055 = zext i1 %2054 to i8
  store i8 %2055, i8* %30, align 1
  %2056 = lshr i32 %2048, 31
  %2057 = trunc i32 %2056 to i8
  store i8 %2057, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %2058 = icmp ne i8 %2057, 0
  %.v = select i1 %2058, i64 34, i64 6
  %2059 = add i64 %2046, %.v
  store i64 %2059, i64* %3, align 8
  br i1 %2058, label %block_.L_413da7, label %block_413d8b

block_413d8b:                                     ; preds = %block_.L_413d79
  %2060 = add i64 %2059, 4
  store i64 %2060, i64* %3, align 8
  %2061 = load i32, i32* %2040, align 4
  %2062 = sext i32 %2061 to i64
  store i64 %2062, i64* %RAX.i863, align 8
  %2063 = shl nsw i64 %2062, 2
  %2064 = add i64 %2044, %2063
  %2065 = add i64 %2059, 11
  store i64 %2065, i64* %3, align 8
  %2066 = inttoptr i64 %2064 to i32*
  %2067 = load i32, i32* %2066, align 4
  %2068 = zext i32 %2067 to i64
  store i64 %2068, i64* %RCX.i853, align 8
  %2069 = add i64 %2059, 14
  store i64 %2069, i64* %3, align 8
  store i32 %2067, i32* %2040, align 4
  %2070 = load i64, i64* %RBP.i, align 8
  %2071 = add i64 %2070, -48
  %2072 = load i64, i64* %3, align 8
  %2073 = add i64 %2072, 3
  store i64 %2073, i64* %3, align 8
  %2074 = inttoptr i64 %2071 to i32*
  %2075 = load i32, i32* %2074, align 4
  %2076 = add i32 %2075, 1
  %2077 = zext i32 %2076 to i64
  store i64 %2077, i64* %RCX.i853, align 8
  %2078 = icmp eq i32 %2075, -1
  %2079 = icmp eq i32 %2076, 0
  %2080 = or i1 %2078, %2079
  %2081 = zext i1 %2080 to i8
  store i8 %2081, i8* %14, align 1
  %2082 = and i32 %2076, 255
  %2083 = tail call i32 @llvm.ctpop.i32(i32 %2082)
  %2084 = trunc i32 %2083 to i8
  %2085 = and i8 %2084, 1
  %2086 = xor i8 %2085, 1
  store i8 %2086, i8* %21, align 1
  %2087 = xor i32 %2076, %2075
  %2088 = lshr i32 %2087, 4
  %2089 = trunc i32 %2088 to i8
  %2090 = and i8 %2089, 1
  store i8 %2090, i8* %27, align 1
  %2091 = zext i1 %2079 to i8
  store i8 %2091, i8* %30, align 1
  %2092 = lshr i32 %2076, 31
  %2093 = trunc i32 %2092 to i8
  store i8 %2093, i8* %33, align 1
  %2094 = lshr i32 %2075, 31
  %2095 = xor i32 %2092, %2094
  %2096 = add nuw nsw i32 %2095, %2092
  %2097 = icmp eq i32 %2096, 2
  %2098 = zext i1 %2097 to i8
  store i8 %2098, i8* %39, align 1
  %2099 = add i64 %2072, 9
  store i64 %2099, i64* %3, align 8
  store i32 %2076, i32* %2074, align 4
  %2100 = load i64, i64* %3, align 8
  %2101 = add i64 %2100, -41
  store i64 %2101, i64* %3, align 8
  br label %block_.L_413d79

block_.L_413da7:                                  ; preds = %block_.L_413d79
  %2102 = add i64 %2037, -48
  %2103 = add i64 %2059, 3
  store i64 %2103, i64* %3, align 8
  %2104 = inttoptr i64 %2102 to i32*
  %2105 = load i32, i32* %2104, align 4
  %2106 = zext i32 %2105 to i64
  store i64 %2106, i64* %RAX.i863, align 8
  %2107 = trunc i32 %2105 to i8
  store i8 %2107, i8* %CL.i104, align 1
  %2108 = add i64 %2037, -8
  %2109 = add i64 %2059, 9
  store i64 %2109, i64* %3, align 8
  %2110 = inttoptr i64 %2108 to i64*
  %2111 = load i64, i64* %2110, align 8
  store i64 %2111, i64* %RDX.i835, align 8
  %2112 = add i64 %2037, -44
  %2113 = add i64 %2059, 12
  store i64 %2113, i64* %3, align 8
  %2114 = inttoptr i64 %2112 to i32*
  %2115 = load i32, i32* %2114, align 4
  %2116 = add i32 %2115, -1
  %2117 = zext i32 %2116 to i64
  store i64 %2117, i64* %RAX.i863, align 8
  %2118 = icmp eq i32 %2115, 0
  %2119 = zext i1 %2118 to i8
  store i8 %2119, i8* %14, align 1
  %2120 = and i32 %2116, 255
  %2121 = tail call i32 @llvm.ctpop.i32(i32 %2120)
  %2122 = trunc i32 %2121 to i8
  %2123 = and i8 %2122, 1
  %2124 = xor i8 %2123, 1
  store i8 %2124, i8* %21, align 1
  %2125 = xor i32 %2116, %2115
  %2126 = lshr i32 %2125, 4
  %2127 = trunc i32 %2126 to i8
  %2128 = and i8 %2127, 1
  store i8 %2128, i8* %27, align 1
  %2129 = icmp eq i32 %2116, 0
  %2130 = zext i1 %2129 to i8
  store i8 %2130, i8* %30, align 1
  %2131 = lshr i32 %2116, 31
  %2132 = trunc i32 %2131 to i8
  store i8 %2132, i8* %33, align 1
  %2133 = lshr i32 %2115, 31
  %2134 = xor i32 %2131, %2133
  %2135 = add nuw nsw i32 %2134, %2133
  %2136 = icmp eq i32 %2135, 2
  %2137 = zext i1 %2136 to i8
  store i8 %2137, i8* %39, align 1
  %2138 = sext i32 %2116 to i64
  store i64 %2138, i64* %RSI.i874, align 8
  %2139 = add i64 %2111, %2138
  %2140 = add i64 %2059, 21
  store i64 %2140, i64* %3, align 8
  %2141 = inttoptr i64 %2139 to i8*
  store i8 %2107, i8* %2141, align 1
  %2142 = load i64, i64* %RBP.i, align 8
  %2143 = add i64 %2142, -48
  %2144 = load i64, i64* %3, align 8
  %2145 = add i64 %2144, 3
  store i64 %2145, i64* %3, align 8
  %2146 = inttoptr i64 %2143 to i32*
  %2147 = load i32, i32* %2146, align 4
  %2148 = zext i32 %2147 to i64
  store i64 %2148, i64* %RAX.i863, align 8
  %2149 = add i64 %2142, -24
  %2150 = add i64 %2144, 6
  store i64 %2150, i64* %3, align 8
  %2151 = inttoptr i64 %2149 to i32*
  %2152 = load i32, i32* %2151, align 4
  %2153 = sub i32 %2147, %2152
  %2154 = icmp ult i32 %2147, %2152
  %2155 = zext i1 %2154 to i8
  store i8 %2155, i8* %14, align 1
  %2156 = and i32 %2153, 255
  %2157 = tail call i32 @llvm.ctpop.i32(i32 %2156)
  %2158 = trunc i32 %2157 to i8
  %2159 = and i8 %2158, 1
  %2160 = xor i8 %2159, 1
  store i8 %2160, i8* %21, align 1
  %2161 = xor i32 %2152, %2147
  %2162 = xor i32 %2161, %2153
  %2163 = lshr i32 %2162, 4
  %2164 = trunc i32 %2163 to i8
  %2165 = and i8 %2164, 1
  store i8 %2165, i8* %27, align 1
  %2166 = icmp eq i32 %2153, 0
  %2167 = zext i1 %2166 to i8
  store i8 %2167, i8* %30, align 1
  %2168 = lshr i32 %2153, 31
  %2169 = trunc i32 %2168 to i8
  store i8 %2169, i8* %33, align 1
  %2170 = lshr i32 %2147, 31
  %2171 = lshr i32 %2152, 31
  %2172 = xor i32 %2171, %2170
  %2173 = xor i32 %2168, %2170
  %2174 = add nuw nsw i32 %2173, %2172
  %2175 = icmp eq i32 %2174, 2
  %2176 = zext i1 %2175 to i8
  store i8 %2176, i8* %39, align 1
  %2177 = icmp ne i8 %2169, 0
  %2178 = xor i1 %2177, %2175
  %2179 = or i1 %2166, %2178
  %.v107 = select i1 %2179, i64 16, i64 12
  %2180 = add i64 %2144, %.v107
  store i64 %2180, i64* %3, align 8
  br i1 %2179, label %block_.L_413dcc, label %block_413dc8

block_413dc8:                                     ; preds = %block_.L_413da7
  %2181 = add i64 %2142, -53
  %2182 = add i64 %2180, 4
  store i64 %2182, i64* %3, align 8
  %2183 = inttoptr i64 %2181 to i8*
  store i8 1, i8* %2183, align 1
  %.pre81 = load i64, i64* %3, align 8
  %.pre82 = load i64, i64* %RBP.i, align 8
  br label %block_.L_413dcc

block_.L_413dcc:                                  ; preds = %block_413dc8, %block_.L_413da7
  %2184 = phi i64 [ %.pre82, %block_413dc8 ], [ %2142, %block_.L_413da7 ]
  %2185 = phi i64 [ %.pre81, %block_413dc8 ], [ %2180, %block_.L_413da7 ]
  %2186 = add i64 %2184, -44
  %2187 = add i64 %2185, 8
  store i64 %2187, i64* %3, align 8
  %2188 = inttoptr i64 %2186 to i32*
  %2189 = load i32, i32* %2188, align 4
  %2190 = add i32 %2189, 1
  %2191 = zext i32 %2190 to i64
  store i64 %2191, i64* %RAX.i863, align 8
  %2192 = icmp eq i32 %2189, -1
  %2193 = icmp eq i32 %2190, 0
  %2194 = or i1 %2192, %2193
  %2195 = zext i1 %2194 to i8
  store i8 %2195, i8* %14, align 1
  %2196 = and i32 %2190, 255
  %2197 = tail call i32 @llvm.ctpop.i32(i32 %2196)
  %2198 = trunc i32 %2197 to i8
  %2199 = and i8 %2198, 1
  %2200 = xor i8 %2199, 1
  store i8 %2200, i8* %21, align 1
  %2201 = xor i32 %2190, %2189
  %2202 = lshr i32 %2201, 4
  %2203 = trunc i32 %2202 to i8
  %2204 = and i8 %2203, 1
  store i8 %2204, i8* %27, align 1
  %2205 = zext i1 %2193 to i8
  store i8 %2205, i8* %30, align 1
  %2206 = lshr i32 %2190, 31
  %2207 = trunc i32 %2206 to i8
  store i8 %2207, i8* %33, align 1
  %2208 = lshr i32 %2189, 31
  %2209 = xor i32 %2206, %2208
  %2210 = add nuw nsw i32 %2209, %2206
  %2211 = icmp eq i32 %2210, 2
  %2212 = zext i1 %2211 to i8
  store i8 %2212, i8* %39, align 1
  %2213 = add i64 %2185, 14
  store i64 %2213, i64* %3, align 8
  store i32 %2190, i32* %2188, align 4
  %2214 = load i64, i64* %3, align 8
  %2215 = add i64 %2214, -122
  store i64 %2215, i64* %3, align 8
  br label %block_.L_413d60

block_.L_413ddf:                                  ; preds = %block_.L_413d60
  %2216 = add i64 %1986, -53
  %2217 = add i64 %2022, 4
  store i64 %2217, i64* %3, align 8
  %2218 = inttoptr i64 %2216 to i8*
  %2219 = load i8, i8* %2218, align 1
  store i8 0, i8* %14, align 1
  %2220 = zext i8 %2219 to i32
  %2221 = tail call i32 @llvm.ctpop.i32(i32 %2220)
  %2222 = trunc i32 %2221 to i8
  %2223 = and i8 %2222, 1
  %2224 = xor i8 %2223, 1
  store i8 %2224, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2225 = icmp eq i8 %2219, 0
  %2226 = zext i1 %2225 to i8
  store i8 %2226, i8* %30, align 1
  %2227 = lshr i8 %2219, 7
  store i8 %2227, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v105 = select i1 %2225, i64 10, i64 15
  %2228 = add i64 %2022, %.v105
  store i64 %2228, i64* %3, align 8
  br i1 %2225, label %block_413de9, label %block_.L_413dee

block_413de9:                                     ; preds = %block_.L_413ddf
  %2229 = load i64, i64* %6, align 8
  %2230 = add i64 %2229, 5296
  store i64 %2230, i64* %6, align 8
  %2231 = icmp ugt i64 %2229, -5297
  %2232 = zext i1 %2231 to i8
  store i8 %2232, i8* %14, align 1
  %2233 = trunc i64 %2230 to i32
  %2234 = and i32 %2233, 255
  %2235 = tail call i32 @llvm.ctpop.i32(i32 %2234)
  %2236 = trunc i32 %2235 to i8
  %2237 = and i8 %2236, 1
  %2238 = xor i8 %2237, 1
  store i8 %2238, i8* %21, align 1
  %2239 = xor i64 %2229, 16
  %2240 = xor i64 %2239, %2230
  %2241 = lshr i64 %2240, 4
  %2242 = trunc i64 %2241 to i8
  %2243 = and i8 %2242, 1
  store i8 %2243, i8* %27, align 1
  %2244 = icmp eq i64 %2230, 0
  %2245 = zext i1 %2244 to i8
  store i8 %2245, i8* %30, align 1
  %2246 = lshr i64 %2230, 63
  %2247 = trunc i64 %2246 to i8
  store i8 %2247, i8* %33, align 1
  %2248 = lshr i64 %2229, 63
  %2249 = xor i64 %2246, %2248
  %2250 = add nuw nsw i64 %2249, %2246
  %2251 = icmp eq i64 %2250, 2
  %2252 = zext i1 %2251 to i8
  store i8 %2252, i8* %39, align 1
  %2253 = add i64 %2228, 116
  store i64 %2253, i64* %3, align 8
  %2254 = add i64 %2229, 5304
  %2255 = inttoptr i64 %2230 to i64*
  %2256 = load i64, i64* %2255, align 8
  store i64 %2256, i64* %RBP.i, align 8
  store i64 %2254, i64* %6, align 8
  %2257 = add i64 %2228, 117
  store i64 %2257, i64* %3, align 8
  %2258 = inttoptr i64 %2254 to i64*
  %2259 = load i64, i64* %2258, align 8
  store i64 %2259, i64* %3, align 8
  %2260 = add i64 %2229, 5312
  store i64 %2260, i64* %6, align 8
  ret %struct.Memory* %MEMORY.15

block_.L_413dee:                                  ; preds = %block_.L_413ddf
  %2261 = add i64 %2228, 7
  store i64 %2261, i64* %3, align 8
  store i32 1, i32* %1989, align 4
  %.pre83 = load i64, i64* %3, align 8
  br label %block_.L_413df5

block_.L_413df5:                                  ; preds = %routine_idivl__esi.exit, %block_.L_413dee
  %2262 = phi i64 [ %.pre83, %block_.L_413dee ], [ %2454, %routine_idivl__esi.exit ]
  %MEMORY.19 = phi %struct.Memory* [ %MEMORY.15, %block_.L_413dee ], [ %2369, %routine_idivl__esi.exit ]
  %2263 = load i64, i64* %RBP.i, align 8
  %2264 = add i64 %2263, -44
  %2265 = add i64 %2262, 3
  store i64 %2265, i64* %3, align 8
  %2266 = inttoptr i64 %2264 to i32*
  %2267 = load i32, i32* %2266, align 4
  %2268 = zext i32 %2267 to i64
  store i64 %2268, i64* %RAX.i863, align 8
  %2269 = add i64 %2263, -20
  %2270 = add i64 %2262, 6
  store i64 %2270, i64* %3, align 8
  %2271 = inttoptr i64 %2269 to i32*
  %2272 = load i32, i32* %2271, align 4
  %2273 = sub i32 %2267, %2272
  %2274 = icmp ult i32 %2267, %2272
  %2275 = zext i1 %2274 to i8
  store i8 %2275, i8* %14, align 1
  %2276 = and i32 %2273, 255
  %2277 = tail call i32 @llvm.ctpop.i32(i32 %2276)
  %2278 = trunc i32 %2277 to i8
  %2279 = and i8 %2278, 1
  %2280 = xor i8 %2279, 1
  store i8 %2280, i8* %21, align 1
  %2281 = xor i32 %2272, %2267
  %2282 = xor i32 %2281, %2273
  %2283 = lshr i32 %2282, 4
  %2284 = trunc i32 %2283 to i8
  %2285 = and i8 %2284, 1
  store i8 %2285, i8* %27, align 1
  %2286 = icmp eq i32 %2273, 0
  %2287 = zext i1 %2286 to i8
  store i8 %2287, i8* %30, align 1
  %2288 = lshr i32 %2273, 31
  %2289 = trunc i32 %2288 to i8
  store i8 %2289, i8* %33, align 1
  %2290 = lshr i32 %2267, 31
  %2291 = lshr i32 %2272, 31
  %2292 = xor i32 %2291, %2290
  %2293 = xor i32 %2288, %2290
  %2294 = add nuw nsw i32 %2293, %2292
  %2295 = icmp eq i32 %2294, 2
  %2296 = zext i1 %2295 to i8
  store i8 %2296, i8* %39, align 1
  %2297 = icmp ne i8 %2289, 0
  %2298 = xor i1 %2297, %2295
  %.demorgan89 = or i1 %2286, %2298
  %.v106 = select i1 %.demorgan89, i64 12, i64 91
  %2299 = add i64 %2262, %.v106
  store i64 %2299, i64* %3, align 8
  br i1 %.demorgan89, label %block_413e01, label %block_.L_413e50

block_413e01:                                     ; preds = %block_.L_413df5
  store i64 2, i64* %RAX.i863, align 8
  %2300 = add i64 %2299, 9
  store i64 %2300, i64* %3, align 8
  %2301 = load i32, i32* %2266, align 4
  %2302 = sext i32 %2301 to i64
  store i64 %2302, i64* %RCX.i853, align 8
  %2303 = shl nsw i64 %2302, 2
  %2304 = add i64 %2263, -3168
  %2305 = add i64 %2304, %2303
  %2306 = add i64 %2299, 16
  store i64 %2306, i64* %3, align 8
  %2307 = inttoptr i64 %2305 to i32*
  %2308 = load i32, i32* %2307, align 4
  %2309 = sext i32 %2308 to i64
  %2310 = ashr i64 %2309, 7
  %2311 = lshr i64 %2310, 1
  %2312 = trunc i64 %2310 to i8
  %2313 = and i8 %2312, 1
  %2314 = trunc i64 %2311 to i32
  %2315 = and i64 %2311, 4294967295
  store i64 %2315, i64* %RDX.i835, align 8
  store i8 %2313, i8* %14, align 1
  %2316 = and i32 %2314, 255
  %2317 = tail call i32 @llvm.ctpop.i32(i32 %2316)
  %2318 = trunc i32 %2317 to i8
  %2319 = and i8 %2318, 1
  %2320 = xor i8 %2319, 1
  store i8 %2320, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2321 = icmp eq i32 %2314, 0
  %2322 = zext i1 %2321 to i8
  store i8 %2322, i8* %30, align 1
  %2323 = lshr i64 %2310, 32
  %2324 = trunc i64 %2323 to i8
  %2325 = and i8 %2324, 1
  store i8 %2325, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %2326 = add i64 %2263, -48
  %2327 = trunc i64 %2311 to i32
  %2328 = add i64 %2299, 22
  store i64 %2328, i64* %3, align 8
  %2329 = inttoptr i64 %2326 to i32*
  store i32 %2327, i32* %2329, align 4
  %2330 = load i64, i64* %RBP.i, align 8
  %2331 = add i64 %2330, -48
  %2332 = load i64, i64* %3, align 8
  %2333 = add i64 %2332, 3
  store i64 %2333, i64* %3, align 8
  %2334 = inttoptr i64 %2331 to i32*
  %2335 = load i32, i32* %2334, align 4
  %2336 = zext i32 %2335 to i64
  store i64 %2336, i64* %RDX.i835, align 8
  %2337 = add i64 %2330, -5288
  %2338 = load i32, i32* %EAX.i860, align 4
  %2339 = add i64 %2332, 9
  store i64 %2339, i64* %3, align 8
  %2340 = inttoptr i64 %2337 to i32*
  store i32 %2338, i32* %2340, align 4
  %2341 = load i32, i32* %EDX.i871, align 4
  %2342 = zext i32 %2341 to i64
  %2343 = load i64, i64* %3, align 8
  store i64 %2342, i64* %RAX.i863, align 8
  %2344 = sext i32 %2341 to i64
  %2345 = lshr i64 %2344, 32
  store i64 %2345, i64* %231, align 8
  %2346 = load i64, i64* %RBP.i, align 8
  %2347 = add i64 %2346, -5288
  %2348 = add i64 %2343, 9
  store i64 %2348, i64* %3, align 8
  %2349 = inttoptr i64 %2347 to i32*
  %2350 = load i32, i32* %2349, align 4
  %2351 = zext i32 %2350 to i64
  store i64 %2351, i64* %RSI.i874, align 8
  %2352 = add i64 %2343, 11
  store i64 %2352, i64* %3, align 8
  %2353 = sext i32 %2350 to i64
  %2354 = shl nuw i64 %2345, 32
  %2355 = or i64 %2354, %2342
  %2356 = sdiv i64 %2355, %2353
  %2357 = shl i64 %2356, 32
  %2358 = ashr exact i64 %2357, 32
  %2359 = icmp eq i64 %2356, %2358
  br i1 %2359, label %2362, label %2360

; <label>:2360:                                   ; preds = %block_413e01
  %2361 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2352, %struct.Memory* %MEMORY.19)
  %.pre84 = load i64, i64* %RAX.i863, align 8
  %.pre85 = load i64, i64* %3, align 8
  %.pre86 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__esi.exit

; <label>:2362:                                   ; preds = %block_413e01
  %2363 = srem i64 %2355, %2353
  %2364 = and i64 %2356, 4294967295
  store i64 %2364, i64* %RAX.i863, align 8
  %2365 = and i64 %2363, 4294967295
  store i64 %2365, i64* %RDX.i835, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  br label %routine_idivl__esi.exit

routine_idivl__esi.exit:                          ; preds = %2362, %2360
  %2366 = phi i64 [ %.pre86, %2360 ], [ %2346, %2362 ]
  %2367 = phi i64 [ %.pre85, %2360 ], [ %2352, %2362 ]
  %2368 = phi i64 [ %.pre84, %2360 ], [ %2364, %2362 ]
  %2369 = phi %struct.Memory* [ %2361, %2360 ], [ %MEMORY.19, %2362 ]
  %2370 = trunc i64 %2368 to i32
  %2371 = add i32 %2370, 1
  %2372 = zext i32 %2371 to i64
  store i64 %2372, i64* %RAX.i863, align 8
  %2373 = icmp eq i32 %2370, -1
  %2374 = icmp eq i32 %2371, 0
  %2375 = or i1 %2373, %2374
  %2376 = zext i1 %2375 to i8
  store i8 %2376, i8* %14, align 1
  %2377 = and i32 %2371, 255
  %2378 = tail call i32 @llvm.ctpop.i32(i32 %2377)
  %2379 = trunc i32 %2378 to i8
  %2380 = and i8 %2379, 1
  %2381 = xor i8 %2380, 1
  store i8 %2381, i8* %21, align 1
  %2382 = xor i32 %2371, %2370
  %2383 = lshr i32 %2382, 4
  %2384 = trunc i32 %2383 to i8
  %2385 = and i8 %2384, 1
  store i8 %2385, i8* %27, align 1
  %2386 = zext i1 %2374 to i8
  store i8 %2386, i8* %30, align 1
  %2387 = lshr i32 %2371, 31
  %2388 = trunc i32 %2387 to i8
  store i8 %2388, i8* %33, align 1
  %2389 = lshr i32 %2370, 31
  %2390 = xor i32 %2387, %2389
  %2391 = add nuw nsw i32 %2390, %2387
  %2392 = icmp eq i32 %2391, 2
  %2393 = zext i1 %2392 to i8
  store i8 %2393, i8* %39, align 1
  %2394 = add i64 %2366, -48
  %2395 = add i64 %2367, 6
  store i64 %2395, i64* %3, align 8
  %2396 = inttoptr i64 %2394 to i32*
  store i32 %2371, i32* %2396, align 4
  %2397 = load i64, i64* %RBP.i, align 8
  %2398 = add i64 %2397, -48
  %2399 = load i64, i64* %3, align 8
  %2400 = add i64 %2399, 3
  store i64 %2400, i64* %3, align 8
  %2401 = inttoptr i64 %2398 to i32*
  %2402 = load i32, i32* %2401, align 4
  %2403 = shl i32 %2402, 8
  %2404 = zext i32 %2403 to i64
  store i64 %2404, i64* %RAX.i863, align 8
  %2405 = lshr i32 %2402, 24
  %2406 = trunc i32 %2405 to i8
  %2407 = and i8 %2406, 1
  store i8 %2407, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2408 = icmp eq i32 %2403, 0
  %2409 = zext i1 %2408 to i8
  store i8 %2409, i8* %30, align 1
  %2410 = lshr i32 %2402, 23
  %2411 = trunc i32 %2410 to i8
  %2412 = and i8 %2411, 1
  store i8 %2412, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %2413 = add i64 %2397, -44
  %2414 = add i64 %2399, 10
  store i64 %2414, i64* %3, align 8
  %2415 = inttoptr i64 %2413 to i32*
  %2416 = load i32, i32* %2415, align 4
  %2417 = sext i32 %2416 to i64
  store i64 %2417, i64* %RCX.i853, align 8
  %2418 = shl nsw i64 %2417, 2
  %2419 = add i64 %2397, -3168
  %2420 = add i64 %2419, %2418
  %2421 = add i64 %2399, 17
  store i64 %2421, i64* %3, align 8
  %2422 = inttoptr i64 %2420 to i32*
  store i32 %2403, i32* %2422, align 4
  %2423 = load i64, i64* %RBP.i, align 8
  %2424 = add i64 %2423, -44
  %2425 = load i64, i64* %3, align 8
  %2426 = add i64 %2425, 3
  store i64 %2426, i64* %3, align 8
  %2427 = inttoptr i64 %2424 to i32*
  %2428 = load i32, i32* %2427, align 4
  %2429 = add i32 %2428, 1
  %2430 = zext i32 %2429 to i64
  store i64 %2430, i64* %RAX.i863, align 8
  %2431 = icmp eq i32 %2428, -1
  %2432 = icmp eq i32 %2429, 0
  %2433 = or i1 %2431, %2432
  %2434 = zext i1 %2433 to i8
  store i8 %2434, i8* %14, align 1
  %2435 = and i32 %2429, 255
  %2436 = tail call i32 @llvm.ctpop.i32(i32 %2435)
  %2437 = trunc i32 %2436 to i8
  %2438 = and i8 %2437, 1
  %2439 = xor i8 %2438, 1
  store i8 %2439, i8* %21, align 1
  %2440 = xor i32 %2429, %2428
  %2441 = lshr i32 %2440, 4
  %2442 = trunc i32 %2441 to i8
  %2443 = and i8 %2442, 1
  store i8 %2443, i8* %27, align 1
  %2444 = zext i1 %2432 to i8
  store i8 %2444, i8* %30, align 1
  %2445 = lshr i32 %2429, 31
  %2446 = trunc i32 %2445 to i8
  store i8 %2446, i8* %33, align 1
  %2447 = lshr i32 %2428, 31
  %2448 = xor i32 %2445, %2447
  %2449 = add nuw nsw i32 %2448, %2445
  %2450 = icmp eq i32 %2449, 2
  %2451 = zext i1 %2450 to i8
  store i8 %2451, i8* %39, align 1
  %2452 = add i64 %2425, 9
  store i64 %2452, i64* %3, align 8
  store i32 %2429, i32* %2427, align 4
  %2453 = load i64, i64* %3, align 8
  %2454 = add i64 %2453, -86
  store i64 %2454, i64* %3, align 8
  br label %block_.L_413df5

block_.L_413e50:                                  ; preds = %block_.L_413df5
  %2455 = add i64 %2299, -1557
  %2456 = add i64 %2299, 5
  store i64 %2456, i64* %3, align 8
  br label %block_.L_41383b
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
define %struct.Memory* @routine_subq__0x14b0___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -5296
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 5296
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
define %struct.Memory* @routine_movq__rsi__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %RSI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x14__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -20
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
define %struct.Memory* @routine_jge_.L_413836(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
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
define %struct.Memory* @routine_jne_.L_4137fe(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 1, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x149c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -5276
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41380f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_movl__edx__MINUS0x149c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -5276
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x149c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -5276
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
define %struct.Memory* @routine_shll__0x8___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %.tr = trunc i64 %3 to i32
  %6 = shl i32 %.tr, 8
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %RAX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %9 = lshr i64 %3, 24
  %10 = trunc i64 %9 to i8
  %11 = and i8 %10, 1
  store i8 %11, i8* %8, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %15 = icmp eq i32 %6, 0
  %16 = zext i1 %15 to i8
  store i8 %16, i8* %14, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %18 = lshr i32 %.tr, 23
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  store i8 %20, i8* %17, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %21, align 1
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
define %struct.Memory* @routine_movl__eax__MINUS0xc60__rbp__rdx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -3168
  %8 = add i64 %7, %6
  %9 = load i32, i32* %EAX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
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
define %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -44
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4137d0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41383b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
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
define %struct.Memory* @routine_movl__0x0__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x450__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0xc60__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -3168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xfffffffe__MINUS0x1470__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -5232
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 -2, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jg_.L_413942(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
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
define %struct.Memory* @routine_movl__0xffffffff__MINUS0x1470__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -5232
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 11
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  store i32 -1, i32* %10, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x20__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
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
define %struct.Memory* @routine_movslq_MINUS0x20__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
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
define %struct.Memory* @routine_movl__ecx__MINUS0x450__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -1104
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
define %struct.Memory* @routine_movl__ecx__MINUS0x1474__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -5236
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x1474__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -5236
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x450__rbp__rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -1104
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
define %struct.Memory* @routine_movl__ecx__MINUS0x1478__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -5240
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x1478__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -5240
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xc60__rbp__rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -3168
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
define %struct.Memory* @routine_movl_MINUS0x1474__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -5236
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
define %struct.Memory* @routine_sarl__0x1___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 32
  %7 = ashr i64 %6, 33
  %8 = trunc i64 %3 to i8
  %9 = and i8 %8, 1
  %10 = trunc i64 %7 to i32
  %11 = and i64 %7, 4294967295
  store i64 %11, i64* %RDX, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9, i8* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %14 = and i32 %10, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  store i8 %18, i8* %13, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %21 = icmp eq i32 %10, 0
  %22 = zext i1 %21 to i8
  store i8 %22, i8* %20, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %24 = lshr i64 %7, 31
  %25 = trunc i64 %24 to i8
  %26 = and i8 %25, 1
  store i8 %26, i8* %23, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %27, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq__edx___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x450__rbp__rax_4____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -1104
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 8
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = sext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0xc60__rbp__rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = load i64, i64* %RAX, align 8
  %7 = shl i64 %6, 2
  %8 = add i64 %5, -3168
  %9 = add i64 %8, %7
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %9 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = sub i32 %4, %13
  %15 = icmp ult i32 %4, %13
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %16, i8* %17, align 1
  %18 = and i32 %14, 255
  %19 = tail call i32 @llvm.ctpop.i32(i32 %18)
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1
  %24 = xor i32 %13, %4
  %25 = xor i32 %24, %14
  %26 = lshr i32 %25, 4
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1
  %30 = icmp eq i32 %14, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %14, 31
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %4, 31
  %37 = lshr i32 %13, 31
  %38 = xor i32 %37, %36
  %39 = xor i32 %33, %36
  %40 = add nuw nsw i32 %39, %38
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_413920(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x1474__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -5236
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
define %struct.Memory* @routine_sarl__0x1___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 32
  %7 = ashr i64 %6, 33
  %8 = trunc i64 %3 to i8
  %9 = and i8 %8, 1
  %10 = trunc i64 %7 to i32
  %11 = and i64 %7, 4294967295
  store i64 %11, i64* %RAX, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9, i8* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %14 = and i32 %10, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  store i8 %18, i8* %13, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %21 = icmp eq i32 %10, 0
  %22 = zext i1 %21 to i8
  store i8 %22, i8* %20, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %24 = lshr i64 %7, 31
  %25 = trunc i64 %24 to i8
  %26 = and i8 %25, 1
  store i8 %26, i8* %23, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %27, align 1
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
define %struct.Memory* @routine_movl_MINUS0x450__rbp__rcx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -1104
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x1474__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -5236
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x450__rbp__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -1104
  %8 = add i64 %7, %6
  %9 = load i32, i32* %EAX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x1474__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -5236
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4138bc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x1478__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -5240
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
define %struct.Memory* @routine_jmpq_.L_41386d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x104__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -260
  %10 = icmp ult i32 %8, 260
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
define %struct.Memory* @routine_jl_.L_413959(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x7d1___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 2001, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.BZ2_bz__AssertH__fail(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_41395e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jle_.L_413d3e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x44c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1100
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
define %struct.Memory* @routine_movslq_MINUS0x20__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
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
define %struct.Memory* @routine_movl__eax__MINUS0x44c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1100
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -32
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__MINUS0x147c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -5244
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x147c__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -5244
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x1484__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -5252
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x147c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -5244
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
define %struct.Memory* @routine_movl__eax__MINUS0x1480__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -5248
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x1480__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -5248
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
define %struct.Memory* @routine_cmpl_MINUS0x20__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -32
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
define %struct.Memory* @routine_jle_.L_4139cc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_413a7d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_413a21(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x450__rbp__rcx_4____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -1104
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 8
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = sext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xc60__rbp__rcx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -3168
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x1480__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -5248
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0xc60__rbp__rcx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = load i64, i64* %RCX, align 8
  %7 = shl i64 %6, 2
  %8 = add i64 %5, -3168
  %9 = add i64 %8, %7
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %9 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = sub i32 %4, %13
  %15 = icmp ult i32 %4, %13
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %16, i8* %17, align 1
  %18 = and i32 %14, 255
  %19 = tail call i32 @llvm.ctpop.i32(i32 %18)
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1
  %24 = xor i32 %13, %4
  %25 = xor i32 %24, %14
  %26 = lshr i32 %25, 4
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1
  %30 = icmp eq i32 %14, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %14, 31
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %4, 31
  %37 = lshr i32 %13, 31
  %38 = xor i32 %37, %36
  %39 = xor i32 %33, %36
  %40 = add nuw nsw i32 %39, %38
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x1484__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -5252
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x1480__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -5248
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_413a50(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x147c__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -5244
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x1480__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -5248
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
define %struct.Memory* @routine_movl__ecx__MINUS0x147c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -5244
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4139a9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x1484__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -5252
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__MINUS0x1488__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -5256
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x1488__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -5256
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x1490__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -5264
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x1488__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -5256
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
define %struct.Memory* @routine_movl__eax__MINUS0x148c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -5260
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x148c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -5260
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
define %struct.Memory* @routine_jle_.L_413af5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_413ba6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_413b4a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x148c__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -5260
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x1490__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -5264
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x148c__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -5260
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_413b79(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x1488__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -5256
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x148c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -5260
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
define %struct.Memory* @routine_movl__ecx__MINUS0x1488__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -5256
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_413ad2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x1490__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -5264
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
define %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
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
define %struct.Memory* @routine_movl__eax__MINUS0x1470__rbp__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -5232
  %8 = add i64 %7, %6
  %9 = load i32, i32* %EAX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
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
define %struct.Memory* @routine_andl__0xffffff00___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 5
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = and i64 %3, 4294967040
  store i64 %7, i64* %RAX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %9, align 1
  %10 = icmp ult i32 %6, 256
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %11, i8* %12, align 1
  %13 = lshr i32 %6, 31
  %14 = trunc i32 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %14, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %17, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xc60__rbp__rcx_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -3168
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
define %struct.Memory* @routine_andl__0xffffff00___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = and i64 %3, 4294967040
  store i64 %7, i64* %RDX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %9, align 1
  %10 = icmp ult i32 %6, 256
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %11, i8* %12, align 1
  %13 = lshr i32 %6, 31
  %14 = trunc i32 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %14, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %17, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__edx___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i32, i32* %EDX, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %4 to i32
  %10 = add i32 %5, %9
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RAX, align 8
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
define %struct.Memory* @routine_andl__0xff___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 255
  %7 = trunc i64 %6 to i32
  store i64 %6, i64* %RDX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = tail call i32 @llvm.ctpop.i32(i32 %7)
  %10 = trunc i32 %9 to i8
  %11 = and i8 %10, 1
  %12 = xor i8 %11, 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %12, i8* %13, align 1
  %14 = icmp eq i32 %7, 0
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %15, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %17, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %19, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xc60__rbp__rcx_4____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -3168
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_andl__0xff___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 255
  %7 = trunc i64 %6 to i32
  store i64 %6, i64* %RSI, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = tail call i32 @llvm.ctpop.i32(i32 %7)
  %10 = trunc i32 %9 to i8
  %11 = and i8 %10, 1
  %12 = xor i8 %11, 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %12, i8* %13, align 1
  %14 = icmp eq i32 %7, 0
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %15, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %17, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %19, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__esi___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %4 to i32*
  %5 = load i32, i32* %EDX, align 4
  %6 = load i32, i32* %ESI, align 4
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
define %struct.Memory* @routine_movl__eax__MINUS0x14a0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -5280
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_413c4b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_andl__0xff___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 255
  %7 = trunc i64 %6 to i32
  store i64 %6, i64* %RCX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = tail call i32 @llvm.ctpop.i32(i32 %7)
  %10 = trunc i32 %9 to i8
  %11 = and i8 %10, 1
  %12 = xor i8 %11, 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %12, i8* %13, align 1
  %14 = icmp eq i32 %7, 0
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %15, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %17, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %19, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x14a4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -5284
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_413c62(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x28__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
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
define %struct.Memory* @routine_movl_MINUS0x14a4__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -5284
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
define %struct.Memory* @routine_movl_MINUS0x14a0__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -5280
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_orl__eax___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i32, i32* %EAX, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = or i64 %6, %4
  %10 = trunc i64 %9 to i32
  %11 = and i64 %9, 4294967295
  store i64 %11, i64* %RCX, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %12, align 1
  %13 = and i32 %10, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
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
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
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
define %struct.Memory* @routine_movl__ecx__MINUS0xc60__rbp__rdx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -3168
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
define %struct.Memory* @routine_movl__0xffffffff__MINUS0x1470__rbp__rdx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -5232
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 11
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  store i32 -1, i32* %10, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
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
define %struct.Memory* @routine_movl__eax__MINUS0x450__rbp__rdx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -1104
  %8 = add i64 %7, %6
  %9 = load i32, i32* %EAX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x1494__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -5268
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x1494__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -5268
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x450__rbp__rdx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -1104
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x1498__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -5272
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x1498__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -5272
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x1494__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -5268
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
define %struct.Memory* @routine_jge_.L_413d25(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x1494__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -5268
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
define %struct.Memory* @routine_movslq_MINUS0x1494__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -5268
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_413cc1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x1498__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -5272
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
define %struct.Memory* @routine_cmpl__0x204__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -516
  %10 = icmp ult i32 %8, 516
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
define %struct.Memory* @routine_jl_.L_413d55(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x7d2___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 2002, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__0x0__MINUS0x35__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -53
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  store i8 0, i8* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jg_.L_413ddf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x34__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -52
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x34__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
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
define %struct.Memory* @routine_cmpl__0x0__MINUS0x1470__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -5232
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
define %struct.Memory* @routine_jl_.L_413da7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x1470__rbp__rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -5232
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
define %struct.Memory* @routine_movl_MINUS0x30__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
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
define %struct.Memory* @routine_jmpq_.L_413d79(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
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
define %struct.Memory* @routine_movb__al___cl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %4 to i8*
  %5 = load i8, i8* %AL, align 1
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i8 %5, i8* %CL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
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
define %struct.Memory* @routine_movslq__eax___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__cl____rdx__rsi_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = load i64, i64* %RSI, align 8
  %6 = add i64 %5, %4
  %7 = load i8, i8* %CL, align 1
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 3
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %6 to i8*
  store i8 %7, i8* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x18__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -24
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
define %struct.Memory* @routine_jle_.L_413dcc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movb__0x1__MINUS0x35__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -53
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  store i8 1, i8* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_413dd1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_413d60(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpb__0x0__MINUS0x35__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -53
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = zext i8 %8 to i32
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %16, align 1
  %17 = icmp eq i8 %8, 0
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %18, i8* %19, align 1
  %20 = lshr i8 %8, 7
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %20, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %22, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_413dee(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_413e55(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jg_.L_413e50(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_sarl__0x8___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 32
  %7 = ashr i64 %6, 39
  %8 = lshr i64 %7, 1
  %9 = trunc i64 %7 to i8
  %10 = and i8 %9, 1
  %11 = trunc i64 %8 to i32
  %12 = and i64 %8, 4294967295
  store i64 %12, i64* %RDX, align 8
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
define %struct.Memory* @routine_movl__edx__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -48
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x30__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
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
define %struct.Memory* @routine_movl__eax__MINUS0x14a8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -5288
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RAX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x14a8__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -5288
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -48
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xc60__rbp__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -3168
  %8 = add i64 %7, %6
  %9 = load i32, i32* %EAX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_413df5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x14b0___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 5296
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -5297
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
