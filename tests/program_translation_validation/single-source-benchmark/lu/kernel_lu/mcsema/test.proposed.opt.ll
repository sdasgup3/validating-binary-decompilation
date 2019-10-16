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
define %struct.Memory* @kernel_lu(%struct.State* noalias, i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #1 {
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
  %RSI.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %16 = load i64, i64* %RBP.i, align 8
  %17 = add i64 %16, -16
  %18 = load i64, i64* %RSI.i, align 8
  %19 = load i64, i64* %3, align 8
  %20 = add i64 %19, 4
  store i64 %20, i64* %3, align 8
  %21 = inttoptr i64 %17 to i64*
  store i64 %18, i64* %21, align 8
  %22 = load i64, i64* %RBP.i, align 8
  %23 = add i64 %22, -28
  %24 = load i64, i64* %3, align 8
  %25 = add i64 %24, 7
  store i64 %25, i64* %3, align 8
  %26 = inttoptr i64 %23 to i32*
  store i32 0, i32* %26, align 4
  %RAX.i214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %RCX.i189 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %34 = bitcast %union.VectorReg* %33 to double*
  %35 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %33, i64 0, i32 0, i32 0, i32 0, i64 0
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %37 = bitcast i64* %36 to double*
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %39 = bitcast [32 x %union.VectorReg]* %38 to double*
  %40 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %38, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %42 = bitcast %union.VectorReg* %41 to double*
  %43 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %41, i64 0, i32 0, i32 0, i32 0, i64 0
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %45 = bitcast i64* %44 to double*
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_400ac2

block_.L_400ac2:                                  ; preds = %block_.L_400be8, %entry
  %46 = phi i64 [ %728, %block_.L_400be8 ], [ %.pre, %entry ]
  %47 = load i64, i64* %RBP.i, align 8
  %48 = add i64 %47, -28
  %49 = add i64 %46, 3
  store i64 %49, i64* %3, align 8
  %50 = inttoptr i64 %48 to i32*
  %51 = load i32, i32* %50, align 4
  %52 = zext i32 %51 to i64
  store i64 %52, i64* %RAX.i214, align 8
  %53 = add i64 %47, -4
  %54 = add i64 %46, 6
  store i64 %54, i64* %3, align 8
  %55 = inttoptr i64 %53 to i32*
  %56 = load i32, i32* %55, align 4
  %57 = sub i32 %51, %56
  %58 = icmp ult i32 %51, %56
  %59 = zext i1 %58 to i8
  store i8 %59, i8* %27, align 1
  %60 = and i32 %57, 255
  %61 = tail call i32 @llvm.ctpop.i32(i32 %60)
  %62 = trunc i32 %61 to i8
  %63 = and i8 %62, 1
  %64 = xor i8 %63, 1
  store i8 %64, i8* %28, align 1
  %65 = xor i32 %56, %51
  %66 = xor i32 %65, %57
  %67 = lshr i32 %66, 4
  %68 = trunc i32 %67 to i8
  %69 = and i8 %68, 1
  store i8 %69, i8* %29, align 1
  %70 = icmp eq i32 %57, 0
  %71 = zext i1 %70 to i8
  store i8 %71, i8* %30, align 1
  %72 = lshr i32 %57, 31
  %73 = trunc i32 %72 to i8
  store i8 %73, i8* %31, align 1
  %74 = lshr i32 %51, 31
  %75 = lshr i32 %56, 31
  %76 = xor i32 %75, %74
  %77 = xor i32 %72, %74
  %78 = add nuw nsw i32 %77, %76
  %79 = icmp eq i32 %78, 2
  %80 = zext i1 %79 to i8
  store i8 %80, i8* %32, align 1
  %81 = icmp ne i8 %73, 0
  %82 = xor i1 %81, %79
  %.v22 = select i1 %82, i64 12, i64 313
  %83 = add i64 %46, %.v22
  store i64 %83, i64* %3, align 8
  br i1 %82, label %block_400ace, label %block_.L_400bfb

block_400ace:                                     ; preds = %block_.L_400ac2
  %84 = add i64 %83, 3
  store i64 %84, i64* %3, align 8
  %85 = load i32, i32* %50, align 4
  %86 = add i32 %85, 1
  %87 = zext i32 %86 to i64
  store i64 %87, i64* %RAX.i214, align 8
  %88 = icmp eq i32 %85, -1
  %89 = icmp eq i32 %86, 0
  %90 = or i1 %88, %89
  %91 = zext i1 %90 to i8
  store i8 %91, i8* %27, align 1
  %92 = and i32 %86, 255
  %93 = tail call i32 @llvm.ctpop.i32(i32 %92)
  %94 = trunc i32 %93 to i8
  %95 = and i8 %94, 1
  %96 = xor i8 %95, 1
  store i8 %96, i8* %28, align 1
  %97 = xor i32 %86, %85
  %98 = lshr i32 %97, 4
  %99 = trunc i32 %98 to i8
  %100 = and i8 %99, 1
  store i8 %100, i8* %29, align 1
  %101 = zext i1 %89 to i8
  store i8 %101, i8* %30, align 1
  %102 = lshr i32 %86, 31
  %103 = trunc i32 %102 to i8
  store i8 %103, i8* %31, align 1
  %104 = lshr i32 %85, 31
  %105 = xor i32 %102, %104
  %106 = add nuw nsw i32 %105, %102
  %107 = icmp eq i32 %106, 2
  %108 = zext i1 %107 to i8
  store i8 %108, i8* %32, align 1
  %109 = add i64 %47, -24
  %110 = add i64 %83, 9
  store i64 %110, i64* %3, align 8
  %111 = inttoptr i64 %109 to i32*
  store i32 %86, i32* %111, align 4
  %.pre18 = load i64, i64* %3, align 8
  br label %block_.L_400ad7

block_.L_400ad7:                                  ; preds = %block_400ae3, %block_400ace
  %112 = phi i64 [ %316, %block_400ae3 ], [ %.pre18, %block_400ace ]
  %113 = load i64, i64* %RBP.i, align 8
  %114 = add i64 %113, -24
  %115 = add i64 %112, 3
  store i64 %115, i64* %3, align 8
  %116 = inttoptr i64 %114 to i32*
  %117 = load i32, i32* %116, align 4
  %118 = zext i32 %117 to i64
  store i64 %118, i64* %RAX.i214, align 8
  %119 = add i64 %113, -4
  %120 = add i64 %112, 6
  store i64 %120, i64* %3, align 8
  %121 = inttoptr i64 %119 to i32*
  %122 = load i32, i32* %121, align 4
  %123 = sub i32 %117, %122
  %124 = icmp ult i32 %117, %122
  %125 = zext i1 %124 to i8
  store i8 %125, i8* %27, align 1
  %126 = and i32 %123, 255
  %127 = tail call i32 @llvm.ctpop.i32(i32 %126)
  %128 = trunc i32 %127 to i8
  %129 = and i8 %128, 1
  %130 = xor i8 %129, 1
  store i8 %130, i8* %28, align 1
  %131 = xor i32 %122, %117
  %132 = xor i32 %131, %123
  %133 = lshr i32 %132, 4
  %134 = trunc i32 %133 to i8
  %135 = and i8 %134, 1
  store i8 %135, i8* %29, align 1
  %136 = icmp eq i32 %123, 0
  %137 = zext i1 %136 to i8
  store i8 %137, i8* %30, align 1
  %138 = lshr i32 %123, 31
  %139 = trunc i32 %138 to i8
  store i8 %139, i8* %31, align 1
  %140 = lshr i32 %117, 31
  %141 = lshr i32 %122, 31
  %142 = xor i32 %141, %140
  %143 = xor i32 %138, %140
  %144 = add nuw nsw i32 %143, %142
  %145 = icmp eq i32 %144, 2
  %146 = zext i1 %145 to i8
  store i8 %146, i8* %32, align 1
  %147 = icmp ne i8 %139, 0
  %148 = xor i1 %147, %145
  %.v23 = select i1 %148, i64 12, i64 98
  %149 = add i64 %112, %.v23
  store i64 %149, i64* %3, align 8
  br i1 %148, label %block_400ae3, label %block_.L_400b39

block_400ae3:                                     ; preds = %block_.L_400ad7
  %150 = add i64 %113, -16
  %151 = add i64 %149, 4
  store i64 %151, i64* %3, align 8
  %152 = inttoptr i64 %150 to i64*
  %153 = load i64, i64* %152, align 8
  store i64 %153, i64* %RAX.i214, align 8
  %154 = add i64 %113, -28
  %155 = add i64 %149, 8
  store i64 %155, i64* %3, align 8
  %156 = inttoptr i64 %154 to i32*
  %157 = load i32, i32* %156, align 4
  %158 = sext i32 %157 to i64
  %159 = shl nsw i64 %158, 10
  store i64 %159, i64* %RCX.i189, align 8
  %160 = add i64 %159, %153
  store i64 %160, i64* %RAX.i214, align 8
  %161 = icmp ult i64 %160, %153
  %162 = icmp ult i64 %160, %159
  %163 = or i1 %161, %162
  %164 = zext i1 %163 to i8
  store i8 %164, i8* %27, align 1
  %165 = trunc i64 %160 to i32
  %166 = and i32 %165, 255
  %167 = tail call i32 @llvm.ctpop.i32(i32 %166)
  %168 = trunc i32 %167 to i8
  %169 = and i8 %168, 1
  %170 = xor i8 %169, 1
  store i8 %170, i8* %28, align 1
  %171 = xor i64 %153, %160
  %172 = lshr i64 %171, 4
  %173 = trunc i64 %172 to i8
  %174 = and i8 %173, 1
  store i8 %174, i8* %29, align 1
  %175 = icmp eq i64 %160, 0
  %176 = zext i1 %175 to i8
  store i8 %176, i8* %30, align 1
  %177 = lshr i64 %160, 63
  %178 = trunc i64 %177 to i8
  store i8 %178, i8* %31, align 1
  %179 = lshr i64 %153, 63
  %180 = lshr i64 %158, 53
  %181 = and i64 %180, 1
  %182 = xor i64 %177, %179
  %183 = xor i64 %177, %181
  %184 = add nuw nsw i64 %182, %183
  %185 = icmp eq i64 %184, 2
  %186 = zext i1 %185 to i8
  store i8 %186, i8* %32, align 1
  %187 = add i64 %149, 19
  store i64 %187, i64* %3, align 8
  %188 = load i32, i32* %116, align 4
  %189 = sext i32 %188 to i64
  store i64 %189, i64* %RCX.i189, align 8
  %190 = shl nsw i64 %189, 3
  %191 = add i64 %190, %160
  %192 = add i64 %149, 24
  store i64 %192, i64* %3, align 8
  %193 = inttoptr i64 %191 to i64*
  %194 = load i64, i64* %193, align 8
  store i64 %194, i64* %35, align 1
  store double 0.000000e+00, double* %37, align 1
  %195 = add i64 %149, 28
  store i64 %195, i64* %3, align 8
  %196 = load i64, i64* %152, align 8
  store i64 %196, i64* %RAX.i214, align 8
  %197 = add i64 %149, 32
  store i64 %197, i64* %3, align 8
  %198 = load i32, i32* %156, align 4
  %199 = sext i32 %198 to i64
  %200 = shl nsw i64 %199, 10
  store i64 %200, i64* %RCX.i189, align 8
  %201 = add i64 %200, %196
  store i64 %201, i64* %RAX.i214, align 8
  %202 = icmp ult i64 %201, %196
  %203 = icmp ult i64 %201, %200
  %204 = or i1 %202, %203
  %205 = zext i1 %204 to i8
  store i8 %205, i8* %27, align 1
  %206 = trunc i64 %201 to i32
  %207 = and i32 %206, 255
  %208 = tail call i32 @llvm.ctpop.i32(i32 %207)
  %209 = trunc i32 %208 to i8
  %210 = and i8 %209, 1
  %211 = xor i8 %210, 1
  store i8 %211, i8* %28, align 1
  %212 = xor i64 %196, %201
  %213 = lshr i64 %212, 4
  %214 = trunc i64 %213 to i8
  %215 = and i8 %214, 1
  store i8 %215, i8* %29, align 1
  %216 = icmp eq i64 %201, 0
  %217 = zext i1 %216 to i8
  store i8 %217, i8* %30, align 1
  %218 = lshr i64 %201, 63
  %219 = trunc i64 %218 to i8
  store i8 %219, i8* %31, align 1
  %220 = lshr i64 %196, 63
  %221 = lshr i64 %199, 53
  %222 = and i64 %221, 1
  %223 = xor i64 %218, %220
  %224 = xor i64 %218, %222
  %225 = add nuw nsw i64 %223, %224
  %226 = icmp eq i64 %225, 2
  %227 = zext i1 %226 to i8
  store i8 %227, i8* %32, align 1
  %228 = load i64, i64* %RBP.i, align 8
  %229 = add i64 %228, -28
  %230 = add i64 %149, 43
  store i64 %230, i64* %3, align 8
  %231 = inttoptr i64 %229 to i32*
  %232 = load i32, i32* %231, align 4
  %233 = sext i32 %232 to i64
  store i64 %233, i64* %RCX.i189, align 8
  %234 = shl nsw i64 %233, 3
  %235 = add i64 %234, %201
  %236 = add i64 %149, 48
  store i64 %236, i64* %3, align 8
  %237 = bitcast i64 %194 to double
  %238 = inttoptr i64 %235 to double*
  %239 = load double, double* %238, align 8
  %240 = fdiv double %237, %239
  store double %240, double* %34, align 1
  store i64 0, i64* %36, align 1
  %241 = add i64 %228, -16
  %242 = add i64 %149, 52
  store i64 %242, i64* %3, align 8
  %243 = inttoptr i64 %241 to i64*
  %244 = load i64, i64* %243, align 8
  store i64 %244, i64* %RAX.i214, align 8
  %245 = add i64 %149, 56
  store i64 %245, i64* %3, align 8
  %246 = load i32, i32* %231, align 4
  %247 = sext i32 %246 to i64
  %248 = shl nsw i64 %247, 10
  store i64 %248, i64* %RCX.i189, align 8
  %249 = add i64 %248, %244
  store i64 %249, i64* %RAX.i214, align 8
  %250 = icmp ult i64 %249, %244
  %251 = icmp ult i64 %249, %248
  %252 = or i1 %250, %251
  %253 = zext i1 %252 to i8
  store i8 %253, i8* %27, align 1
  %254 = trunc i64 %249 to i32
  %255 = and i32 %254, 255
  %256 = tail call i32 @llvm.ctpop.i32(i32 %255)
  %257 = trunc i32 %256 to i8
  %258 = and i8 %257, 1
  %259 = xor i8 %258, 1
  store i8 %259, i8* %28, align 1
  %260 = xor i64 %244, %249
  %261 = lshr i64 %260, 4
  %262 = trunc i64 %261 to i8
  %263 = and i8 %262, 1
  store i8 %263, i8* %29, align 1
  %264 = icmp eq i64 %249, 0
  %265 = zext i1 %264 to i8
  store i8 %265, i8* %30, align 1
  %266 = lshr i64 %249, 63
  %267 = trunc i64 %266 to i8
  store i8 %267, i8* %31, align 1
  %268 = lshr i64 %244, 63
  %269 = lshr i64 %247, 53
  %270 = and i64 %269, 1
  %271 = xor i64 %266, %268
  %272 = xor i64 %266, %270
  %273 = add nuw nsw i64 %271, %272
  %274 = icmp eq i64 %273, 2
  %275 = zext i1 %274 to i8
  store i8 %275, i8* %32, align 1
  %276 = add i64 %228, -24
  %277 = add i64 %149, 67
  store i64 %277, i64* %3, align 8
  %278 = inttoptr i64 %276 to i32*
  %279 = load i32, i32* %278, align 4
  %280 = sext i32 %279 to i64
  store i64 %280, i64* %RCX.i189, align 8
  %281 = shl nsw i64 %280, 3
  %282 = add i64 %281, %249
  %283 = add i64 %149, 72
  store i64 %283, i64* %3, align 8
  %284 = inttoptr i64 %282 to double*
  store double %240, double* %284, align 8
  %285 = load i64, i64* %RBP.i, align 8
  %286 = add i64 %285, -24
  %287 = load i64, i64* %3, align 8
  %288 = add i64 %287, 3
  store i64 %288, i64* %3, align 8
  %289 = inttoptr i64 %286 to i32*
  %290 = load i32, i32* %289, align 4
  %291 = add i32 %290, 1
  %292 = zext i32 %291 to i64
  store i64 %292, i64* %RAX.i214, align 8
  %293 = icmp eq i32 %290, -1
  %294 = icmp eq i32 %291, 0
  %295 = or i1 %293, %294
  %296 = zext i1 %295 to i8
  store i8 %296, i8* %27, align 1
  %297 = and i32 %291, 255
  %298 = tail call i32 @llvm.ctpop.i32(i32 %297)
  %299 = trunc i32 %298 to i8
  %300 = and i8 %299, 1
  %301 = xor i8 %300, 1
  store i8 %301, i8* %28, align 1
  %302 = xor i32 %291, %290
  %303 = lshr i32 %302, 4
  %304 = trunc i32 %303 to i8
  %305 = and i8 %304, 1
  store i8 %305, i8* %29, align 1
  %306 = zext i1 %294 to i8
  store i8 %306, i8* %30, align 1
  %307 = lshr i32 %291, 31
  %308 = trunc i32 %307 to i8
  store i8 %308, i8* %31, align 1
  %309 = lshr i32 %290, 31
  %310 = xor i32 %307, %309
  %311 = add nuw nsw i32 %310, %307
  %312 = icmp eq i32 %311, 2
  %313 = zext i1 %312 to i8
  store i8 %313, i8* %32, align 1
  %314 = add i64 %287, 9
  store i64 %314, i64* %3, align 8
  store i32 %291, i32* %289, align 4
  %315 = load i64, i64* %3, align 8
  %316 = add i64 %315, -93
  store i64 %316, i64* %3, align 8
  br label %block_.L_400ad7

block_.L_400b39:                                  ; preds = %block_.L_400ad7
  %317 = add i64 %113, -28
  %318 = add i64 %149, 3
  store i64 %318, i64* %3, align 8
  %319 = inttoptr i64 %317 to i32*
  %320 = load i32, i32* %319, align 4
  %321 = add i32 %320, 1
  %322 = zext i32 %321 to i64
  store i64 %322, i64* %RAX.i214, align 8
  %323 = icmp eq i32 %320, -1
  %324 = icmp eq i32 %321, 0
  %325 = or i1 %323, %324
  %326 = zext i1 %325 to i8
  store i8 %326, i8* %27, align 1
  %327 = and i32 %321, 255
  %328 = tail call i32 @llvm.ctpop.i32(i32 %327)
  %329 = trunc i32 %328 to i8
  %330 = and i8 %329, 1
  %331 = xor i8 %330, 1
  store i8 %331, i8* %28, align 1
  %332 = xor i32 %321, %320
  %333 = lshr i32 %332, 4
  %334 = trunc i32 %333 to i8
  %335 = and i8 %334, 1
  store i8 %335, i8* %29, align 1
  %336 = zext i1 %324 to i8
  store i8 %336, i8* %30, align 1
  %337 = lshr i32 %321, 31
  %338 = trunc i32 %337 to i8
  store i8 %338, i8* %31, align 1
  %339 = lshr i32 %320, 31
  %340 = xor i32 %337, %339
  %341 = add nuw nsw i32 %340, %337
  %342 = icmp eq i32 %341, 2
  %343 = zext i1 %342 to i8
  store i8 %343, i8* %32, align 1
  %344 = add i64 %113, -20
  %345 = add i64 %149, 9
  store i64 %345, i64* %3, align 8
  %346 = inttoptr i64 %344 to i32*
  store i32 %321, i32* %346, align 4
  %.pre19 = load i64, i64* %3, align 8
  br label %block_.L_400b42

block_.L_400b42:                                  ; preds = %block_.L_400bd5, %block_.L_400b39
  %347 = phi i64 [ %699, %block_.L_400bd5 ], [ %.pre19, %block_.L_400b39 ]
  %348 = load i64, i64* %RBP.i, align 8
  %349 = add i64 %348, -20
  %350 = add i64 %347, 3
  store i64 %350, i64* %3, align 8
  %351 = inttoptr i64 %349 to i32*
  %352 = load i32, i32* %351, align 4
  %353 = zext i32 %352 to i64
  store i64 %353, i64* %RAX.i214, align 8
  %354 = add i64 %348, -4
  %355 = add i64 %347, 6
  store i64 %355, i64* %3, align 8
  %356 = inttoptr i64 %354 to i32*
  %357 = load i32, i32* %356, align 4
  %358 = sub i32 %352, %357
  %359 = icmp ult i32 %352, %357
  %360 = zext i1 %359 to i8
  store i8 %360, i8* %27, align 1
  %361 = and i32 %358, 255
  %362 = tail call i32 @llvm.ctpop.i32(i32 %361)
  %363 = trunc i32 %362 to i8
  %364 = and i8 %363, 1
  %365 = xor i8 %364, 1
  store i8 %365, i8* %28, align 1
  %366 = xor i32 %357, %352
  %367 = xor i32 %366, %358
  %368 = lshr i32 %367, 4
  %369 = trunc i32 %368 to i8
  %370 = and i8 %369, 1
  store i8 %370, i8* %29, align 1
  %371 = icmp eq i32 %358, 0
  %372 = zext i1 %371 to i8
  store i8 %372, i8* %30, align 1
  %373 = lshr i32 %358, 31
  %374 = trunc i32 %373 to i8
  store i8 %374, i8* %31, align 1
  %375 = lshr i32 %352, 31
  %376 = lshr i32 %357, 31
  %377 = xor i32 %376, %375
  %378 = xor i32 %373, %375
  %379 = add nuw nsw i32 %378, %377
  %380 = icmp eq i32 %379, 2
  %381 = zext i1 %380 to i8
  store i8 %381, i8* %32, align 1
  %382 = icmp ne i8 %374, 0
  %383 = xor i1 %382, %380
  %.v = select i1 %383, i64 12, i64 166
  %384 = add i64 %347, %.v
  store i64 %384, i64* %3, align 8
  %385 = add i64 %348, -28
  br i1 %383, label %block_400b4e, label %block_.L_400be8

block_400b4e:                                     ; preds = %block_.L_400b42
  %386 = add i64 %384, 3
  store i64 %386, i64* %3, align 8
  %387 = inttoptr i64 %385 to i32*
  %388 = load i32, i32* %387, align 4
  %389 = add i32 %388, 1
  %390 = zext i32 %389 to i64
  store i64 %390, i64* %RAX.i214, align 8
  %391 = icmp eq i32 %388, -1
  %392 = icmp eq i32 %389, 0
  %393 = or i1 %391, %392
  %394 = zext i1 %393 to i8
  store i8 %394, i8* %27, align 1
  %395 = and i32 %389, 255
  %396 = tail call i32 @llvm.ctpop.i32(i32 %395)
  %397 = trunc i32 %396 to i8
  %398 = and i8 %397, 1
  %399 = xor i8 %398, 1
  store i8 %399, i8* %28, align 1
  %400 = xor i32 %389, %388
  %401 = lshr i32 %400, 4
  %402 = trunc i32 %401 to i8
  %403 = and i8 %402, 1
  store i8 %403, i8* %29, align 1
  %404 = zext i1 %392 to i8
  store i8 %404, i8* %30, align 1
  %405 = lshr i32 %389, 31
  %406 = trunc i32 %405 to i8
  store i8 %406, i8* %31, align 1
  %407 = lshr i32 %388, 31
  %408 = xor i32 %405, %407
  %409 = add nuw nsw i32 %408, %405
  %410 = icmp eq i32 %409, 2
  %411 = zext i1 %410 to i8
  store i8 %411, i8* %32, align 1
  %412 = add i64 %348, -24
  %413 = add i64 %384, 9
  store i64 %413, i64* %3, align 8
  %414 = inttoptr i64 %412 to i32*
  store i32 %389, i32* %414, align 4
  %.pre20 = load i64, i64* %3, align 8
  br label %block_.L_400b57

block_.L_400b57:                                  ; preds = %block_400b63, %block_400b4e
  %415 = phi i64 [ %669, %block_400b63 ], [ %.pre20, %block_400b4e ]
  %416 = load i64, i64* %RBP.i, align 8
  %417 = add i64 %416, -24
  %418 = add i64 %415, 3
  store i64 %418, i64* %3, align 8
  %419 = inttoptr i64 %417 to i32*
  %420 = load i32, i32* %419, align 4
  %421 = zext i32 %420 to i64
  store i64 %421, i64* %RAX.i214, align 8
  %422 = add i64 %416, -4
  %423 = add i64 %415, 6
  store i64 %423, i64* %3, align 8
  %424 = inttoptr i64 %422 to i32*
  %425 = load i32, i32* %424, align 4
  %426 = sub i32 %420, %425
  %427 = icmp ult i32 %420, %425
  %428 = zext i1 %427 to i8
  store i8 %428, i8* %27, align 1
  %429 = and i32 %426, 255
  %430 = tail call i32 @llvm.ctpop.i32(i32 %429)
  %431 = trunc i32 %430 to i8
  %432 = and i8 %431, 1
  %433 = xor i8 %432, 1
  store i8 %433, i8* %28, align 1
  %434 = xor i32 %425, %420
  %435 = xor i32 %434, %426
  %436 = lshr i32 %435, 4
  %437 = trunc i32 %436 to i8
  %438 = and i8 %437, 1
  store i8 %438, i8* %29, align 1
  %439 = icmp eq i32 %426, 0
  %440 = zext i1 %439 to i8
  store i8 %440, i8* %30, align 1
  %441 = lshr i32 %426, 31
  %442 = trunc i32 %441 to i8
  store i8 %442, i8* %31, align 1
  %443 = lshr i32 %420, 31
  %444 = lshr i32 %425, 31
  %445 = xor i32 %444, %443
  %446 = xor i32 %441, %443
  %447 = add nuw nsw i32 %446, %445
  %448 = icmp eq i32 %447, 2
  %449 = zext i1 %448 to i8
  store i8 %449, i8* %32, align 1
  %450 = icmp ne i8 %442, 0
  %451 = xor i1 %450, %448
  %.v21 = select i1 %451, i64 12, i64 126
  %452 = add i64 %415, %.v21
  store i64 %452, i64* %3, align 8
  br i1 %451, label %block_400b63, label %block_.L_400bd5

block_400b63:                                     ; preds = %block_.L_400b57
  %453 = add i64 %416, -16
  %454 = add i64 %452, 4
  store i64 %454, i64* %3, align 8
  %455 = inttoptr i64 %453 to i64*
  %456 = load i64, i64* %455, align 8
  store i64 %456, i64* %RAX.i214, align 8
  %457 = add i64 %416, -20
  %458 = add i64 %452, 8
  store i64 %458, i64* %3, align 8
  %459 = inttoptr i64 %457 to i32*
  %460 = load i32, i32* %459, align 4
  %461 = sext i32 %460 to i64
  %462 = shl nsw i64 %461, 10
  store i64 %462, i64* %RCX.i189, align 8
  %463 = add i64 %462, %456
  store i64 %463, i64* %RAX.i214, align 8
  %464 = icmp ult i64 %463, %456
  %465 = icmp ult i64 %463, %462
  %466 = or i1 %464, %465
  %467 = zext i1 %466 to i8
  store i8 %467, i8* %27, align 1
  %468 = trunc i64 %463 to i32
  %469 = and i32 %468, 255
  %470 = tail call i32 @llvm.ctpop.i32(i32 %469)
  %471 = trunc i32 %470 to i8
  %472 = and i8 %471, 1
  %473 = xor i8 %472, 1
  store i8 %473, i8* %28, align 1
  %474 = xor i64 %456, %463
  %475 = lshr i64 %474, 4
  %476 = trunc i64 %475 to i8
  %477 = and i8 %476, 1
  store i8 %477, i8* %29, align 1
  %478 = icmp eq i64 %463, 0
  %479 = zext i1 %478 to i8
  store i8 %479, i8* %30, align 1
  %480 = lshr i64 %463, 63
  %481 = trunc i64 %480 to i8
  store i8 %481, i8* %31, align 1
  %482 = lshr i64 %456, 63
  %483 = lshr i64 %461, 53
  %484 = and i64 %483, 1
  %485 = xor i64 %480, %482
  %486 = xor i64 %480, %484
  %487 = add nuw nsw i64 %485, %486
  %488 = icmp eq i64 %487, 2
  %489 = zext i1 %488 to i8
  store i8 %489, i8* %32, align 1
  %490 = add i64 %452, 19
  store i64 %490, i64* %3, align 8
  %491 = load i32, i32* %419, align 4
  %492 = sext i32 %491 to i64
  store i64 %492, i64* %RCX.i189, align 8
  %493 = shl nsw i64 %492, 3
  %494 = add i64 %493, %463
  %495 = add i64 %452, 24
  store i64 %495, i64* %3, align 8
  %496 = inttoptr i64 %494 to i64*
  %497 = load i64, i64* %496, align 8
  store i64 %497, i64* %40, align 1
  store double 0.000000e+00, double* %37, align 1
  %498 = add i64 %452, 28
  store i64 %498, i64* %3, align 8
  %499 = load i64, i64* %455, align 8
  store i64 %499, i64* %RAX.i214, align 8
  %500 = add i64 %452, 32
  store i64 %500, i64* %3, align 8
  %501 = load i32, i32* %459, align 4
  %502 = sext i32 %501 to i64
  %503 = shl nsw i64 %502, 10
  store i64 %503, i64* %RCX.i189, align 8
  %504 = add i64 %503, %499
  store i64 %504, i64* %RAX.i214, align 8
  %505 = icmp ult i64 %504, %499
  %506 = icmp ult i64 %504, %503
  %507 = or i1 %505, %506
  %508 = zext i1 %507 to i8
  store i8 %508, i8* %27, align 1
  %509 = trunc i64 %504 to i32
  %510 = and i32 %509, 255
  %511 = tail call i32 @llvm.ctpop.i32(i32 %510)
  %512 = trunc i32 %511 to i8
  %513 = and i8 %512, 1
  %514 = xor i8 %513, 1
  store i8 %514, i8* %28, align 1
  %515 = xor i64 %499, %504
  %516 = lshr i64 %515, 4
  %517 = trunc i64 %516 to i8
  %518 = and i8 %517, 1
  store i8 %518, i8* %29, align 1
  %519 = icmp eq i64 %504, 0
  %520 = zext i1 %519 to i8
  store i8 %520, i8* %30, align 1
  %521 = lshr i64 %504, 63
  %522 = trunc i64 %521 to i8
  store i8 %522, i8* %31, align 1
  %523 = lshr i64 %499, 63
  %524 = lshr i64 %502, 53
  %525 = and i64 %524, 1
  %526 = xor i64 %521, %523
  %527 = xor i64 %521, %525
  %528 = add nuw nsw i64 %526, %527
  %529 = icmp eq i64 %528, 2
  %530 = zext i1 %529 to i8
  store i8 %530, i8* %32, align 1
  %531 = load i64, i64* %RBP.i, align 8
  %532 = add i64 %531, -28
  %533 = add i64 %452, 43
  store i64 %533, i64* %3, align 8
  %534 = inttoptr i64 %532 to i32*
  %535 = load i32, i32* %534, align 4
  %536 = sext i32 %535 to i64
  store i64 %536, i64* %RCX.i189, align 8
  %537 = shl nsw i64 %536, 3
  %538 = add i64 %537, %504
  %539 = add i64 %452, 48
  store i64 %539, i64* %3, align 8
  %540 = inttoptr i64 %538 to i64*
  %541 = load i64, i64* %540, align 8
  store i64 %541, i64* %43, align 1
  store double 0.000000e+00, double* %45, align 1
  %542 = add i64 %531, -16
  %543 = add i64 %452, 52
  store i64 %543, i64* %3, align 8
  %544 = inttoptr i64 %542 to i64*
  %545 = load i64, i64* %544, align 8
  store i64 %545, i64* %RAX.i214, align 8
  %546 = add i64 %452, 56
  store i64 %546, i64* %3, align 8
  %547 = load i32, i32* %534, align 4
  %548 = sext i32 %547 to i64
  %549 = shl nsw i64 %548, 10
  store i64 %549, i64* %RCX.i189, align 8
  %550 = add i64 %549, %545
  store i64 %550, i64* %RAX.i214, align 8
  %551 = icmp ult i64 %550, %545
  %552 = icmp ult i64 %550, %549
  %553 = or i1 %551, %552
  %554 = zext i1 %553 to i8
  store i8 %554, i8* %27, align 1
  %555 = trunc i64 %550 to i32
  %556 = and i32 %555, 255
  %557 = tail call i32 @llvm.ctpop.i32(i32 %556)
  %558 = trunc i32 %557 to i8
  %559 = and i8 %558, 1
  %560 = xor i8 %559, 1
  store i8 %560, i8* %28, align 1
  %561 = xor i64 %545, %550
  %562 = lshr i64 %561, 4
  %563 = trunc i64 %562 to i8
  %564 = and i8 %563, 1
  store i8 %564, i8* %29, align 1
  %565 = icmp eq i64 %550, 0
  %566 = zext i1 %565 to i8
  store i8 %566, i8* %30, align 1
  %567 = lshr i64 %550, 63
  %568 = trunc i64 %567 to i8
  store i8 %568, i8* %31, align 1
  %569 = lshr i64 %545, 63
  %570 = lshr i64 %548, 53
  %571 = and i64 %570, 1
  %572 = xor i64 %567, %569
  %573 = xor i64 %567, %571
  %574 = add nuw nsw i64 %572, %573
  %575 = icmp eq i64 %574, 2
  %576 = zext i1 %575 to i8
  store i8 %576, i8* %32, align 1
  %577 = add i64 %531, -24
  %578 = add i64 %452, 67
  store i64 %578, i64* %3, align 8
  %579 = inttoptr i64 %577 to i32*
  %580 = load i32, i32* %579, align 4
  %581 = sext i32 %580 to i64
  store i64 %581, i64* %RCX.i189, align 8
  %582 = shl nsw i64 %581, 3
  %583 = add i64 %582, %550
  %584 = add i64 %452, 72
  store i64 %584, i64* %3, align 8
  %585 = bitcast i64 %541 to double
  %586 = inttoptr i64 %583 to double*
  %587 = load double, double* %586, align 8
  %588 = fmul double %585, %587
  store double %588, double* %42, align 1
  store i64 0, i64* %44, align 1
  %589 = load double, double* %39, align 1
  %590 = fadd double %589, %588
  store double %590, double* %39, align 1
  %591 = load i64, i64* %RBP.i, align 8
  %592 = add i64 %591, -16
  %593 = add i64 %452, 80
  store i64 %593, i64* %3, align 8
  %594 = inttoptr i64 %592 to i64*
  %595 = load i64, i64* %594, align 8
  store i64 %595, i64* %RAX.i214, align 8
  %596 = add i64 %591, -20
  %597 = add i64 %452, 84
  store i64 %597, i64* %3, align 8
  %598 = inttoptr i64 %596 to i32*
  %599 = load i32, i32* %598, align 4
  %600 = sext i32 %599 to i64
  %601 = shl nsw i64 %600, 10
  store i64 %601, i64* %RCX.i189, align 8
  %602 = add i64 %601, %595
  store i64 %602, i64* %RAX.i214, align 8
  %603 = icmp ult i64 %602, %595
  %604 = icmp ult i64 %602, %601
  %605 = or i1 %603, %604
  %606 = zext i1 %605 to i8
  store i8 %606, i8* %27, align 1
  %607 = trunc i64 %602 to i32
  %608 = and i32 %607, 255
  %609 = tail call i32 @llvm.ctpop.i32(i32 %608)
  %610 = trunc i32 %609 to i8
  %611 = and i8 %610, 1
  %612 = xor i8 %611, 1
  store i8 %612, i8* %28, align 1
  %613 = xor i64 %595, %602
  %614 = lshr i64 %613, 4
  %615 = trunc i64 %614 to i8
  %616 = and i8 %615, 1
  store i8 %616, i8* %29, align 1
  %617 = icmp eq i64 %602, 0
  %618 = zext i1 %617 to i8
  store i8 %618, i8* %30, align 1
  %619 = lshr i64 %602, 63
  %620 = trunc i64 %619 to i8
  store i8 %620, i8* %31, align 1
  %621 = lshr i64 %595, 63
  %622 = lshr i64 %600, 53
  %623 = and i64 %622, 1
  %624 = xor i64 %619, %621
  %625 = xor i64 %619, %623
  %626 = add nuw nsw i64 %624, %625
  %627 = icmp eq i64 %626, 2
  %628 = zext i1 %627 to i8
  store i8 %628, i8* %32, align 1
  %629 = add i64 %591, -24
  %630 = add i64 %452, 95
  store i64 %630, i64* %3, align 8
  %631 = inttoptr i64 %629 to i32*
  %632 = load i32, i32* %631, align 4
  %633 = sext i32 %632 to i64
  store i64 %633, i64* %RCX.i189, align 8
  %634 = shl nsw i64 %633, 3
  %635 = add i64 %634, %602
  %636 = add i64 %452, 100
  store i64 %636, i64* %3, align 8
  %637 = inttoptr i64 %635 to double*
  store double %590, double* %637, align 8
  %638 = load i64, i64* %RBP.i, align 8
  %639 = add i64 %638, -24
  %640 = load i64, i64* %3, align 8
  %641 = add i64 %640, 3
  store i64 %641, i64* %3, align 8
  %642 = inttoptr i64 %639 to i32*
  %643 = load i32, i32* %642, align 4
  %644 = add i32 %643, 1
  %645 = zext i32 %644 to i64
  store i64 %645, i64* %RAX.i214, align 8
  %646 = icmp eq i32 %643, -1
  %647 = icmp eq i32 %644, 0
  %648 = or i1 %646, %647
  %649 = zext i1 %648 to i8
  store i8 %649, i8* %27, align 1
  %650 = and i32 %644, 255
  %651 = tail call i32 @llvm.ctpop.i32(i32 %650)
  %652 = trunc i32 %651 to i8
  %653 = and i8 %652, 1
  %654 = xor i8 %653, 1
  store i8 %654, i8* %28, align 1
  %655 = xor i32 %644, %643
  %656 = lshr i32 %655, 4
  %657 = trunc i32 %656 to i8
  %658 = and i8 %657, 1
  store i8 %658, i8* %29, align 1
  %659 = zext i1 %647 to i8
  store i8 %659, i8* %30, align 1
  %660 = lshr i32 %644, 31
  %661 = trunc i32 %660 to i8
  store i8 %661, i8* %31, align 1
  %662 = lshr i32 %643, 31
  %663 = xor i32 %660, %662
  %664 = add nuw nsw i32 %663, %660
  %665 = icmp eq i32 %664, 2
  %666 = zext i1 %665 to i8
  store i8 %666, i8* %32, align 1
  %667 = add i64 %640, 9
  store i64 %667, i64* %3, align 8
  store i32 %644, i32* %642, align 4
  %668 = load i64, i64* %3, align 8
  %669 = add i64 %668, -121
  store i64 %669, i64* %3, align 8
  br label %block_.L_400b57

block_.L_400bd5:                                  ; preds = %block_.L_400b57
  %670 = add i64 %416, -20
  %671 = add i64 %452, 8
  store i64 %671, i64* %3, align 8
  %672 = inttoptr i64 %670 to i32*
  %673 = load i32, i32* %672, align 4
  %674 = add i32 %673, 1
  %675 = zext i32 %674 to i64
  store i64 %675, i64* %RAX.i214, align 8
  %676 = icmp eq i32 %673, -1
  %677 = icmp eq i32 %674, 0
  %678 = or i1 %676, %677
  %679 = zext i1 %678 to i8
  store i8 %679, i8* %27, align 1
  %680 = and i32 %674, 255
  %681 = tail call i32 @llvm.ctpop.i32(i32 %680)
  %682 = trunc i32 %681 to i8
  %683 = and i8 %682, 1
  %684 = xor i8 %683, 1
  store i8 %684, i8* %28, align 1
  %685 = xor i32 %674, %673
  %686 = lshr i32 %685, 4
  %687 = trunc i32 %686 to i8
  %688 = and i8 %687, 1
  store i8 %688, i8* %29, align 1
  %689 = zext i1 %677 to i8
  store i8 %689, i8* %30, align 1
  %690 = lshr i32 %674, 31
  %691 = trunc i32 %690 to i8
  store i8 %691, i8* %31, align 1
  %692 = lshr i32 %673, 31
  %693 = xor i32 %690, %692
  %694 = add nuw nsw i32 %693, %690
  %695 = icmp eq i32 %694, 2
  %696 = zext i1 %695 to i8
  store i8 %696, i8* %32, align 1
  %697 = add i64 %452, 14
  store i64 %697, i64* %3, align 8
  store i32 %674, i32* %672, align 4
  %698 = load i64, i64* %3, align 8
  %699 = add i64 %698, -161
  store i64 %699, i64* %3, align 8
  br label %block_.L_400b42

block_.L_400be8:                                  ; preds = %block_.L_400b42
  %700 = add i64 %384, 8
  store i64 %700, i64* %3, align 8
  %701 = inttoptr i64 %385 to i32*
  %702 = load i32, i32* %701, align 4
  %703 = add i32 %702, 1
  %704 = zext i32 %703 to i64
  store i64 %704, i64* %RAX.i214, align 8
  %705 = icmp eq i32 %702, -1
  %706 = icmp eq i32 %703, 0
  %707 = or i1 %705, %706
  %708 = zext i1 %707 to i8
  store i8 %708, i8* %27, align 1
  %709 = and i32 %703, 255
  %710 = tail call i32 @llvm.ctpop.i32(i32 %709)
  %711 = trunc i32 %710 to i8
  %712 = and i8 %711, 1
  %713 = xor i8 %712, 1
  store i8 %713, i8* %28, align 1
  %714 = xor i32 %703, %702
  %715 = lshr i32 %714, 4
  %716 = trunc i32 %715 to i8
  %717 = and i8 %716, 1
  store i8 %717, i8* %29, align 1
  %718 = zext i1 %706 to i8
  store i8 %718, i8* %30, align 1
  %719 = lshr i32 %703, 31
  %720 = trunc i32 %719 to i8
  store i8 %720, i8* %31, align 1
  %721 = lshr i32 %702, 31
  %722 = xor i32 %719, %721
  %723 = add nuw nsw i32 %722, %719
  %724 = icmp eq i32 %723, 2
  %725 = zext i1 %724 to i8
  store i8 %725, i8* %32, align 1
  %726 = add i64 %384, 14
  store i64 %726, i64* %3, align 8
  store i32 %703, i32* %701, align 4
  %727 = load i64, i64* %3, align 8
  %728 = add i64 %727, -308
  store i64 %728, i64* %3, align 8
  br label %block_.L_400ac2

block_.L_400bfb:                                  ; preds = %block_.L_400ac2
  %729 = add i64 %83, 1
  store i64 %729, i64* %3, align 8
  %730 = load i64, i64* %6, align 8
  %731 = add i64 %730, 8
  %732 = inttoptr i64 %730 to i64*
  %733 = load i64, i64* %732, align 8
  store i64 %733, i64* %RBP.i, align 8
  store i64 %731, i64* %6, align 8
  %734 = add i64 %83, 2
  store i64 %734, i64* %3, align 8
  %735 = inttoptr i64 %731 to i64*
  %736 = load i64, i64* %735, align 8
  store i64 %736, i64* %3, align 8
  %737 = add i64 %730, 16
  store i64 %737, i64* %6, align 8
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
define %struct.Memory* @routine_jge_.L_400bfb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_400b39(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_shlq__0xa___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 10
  store i64 %6, i64* %RCX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 54
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %11, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %14 = icmp eq i64 %6, 0
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %13, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %17 = lshr i64 %3, 53
  %18 = trunc i64 %17 to i8
  %19 = and i8 %18, 1
  store i8 %19, i8* %16, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %20, align 1
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
define %struct.Memory* @routine_movsd___rax__rcx_8____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %10, i64* %11, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %13 = bitcast i64* %12 to double*
  store double 0.000000e+00, double* %13, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_divsd___rax__rcx_8____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 3
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 5
  store i64 %9, i64* %PC, align 8
  %10 = bitcast %union.VectorReg* %3 to double*
  %11 = load double, double* %10, align 1
  %12 = inttoptr i64 %7 to double*
  %13 = load double, double* %12, align 8
  %14 = fdiv double %11, %13
  store double %14, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0____rax__rcx_8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %10 = load i64, i64* %9, align 1
  %11 = inttoptr i64 %6 to i64*
  store i64 %10, i64* %11, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400ad7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jge_.L_400be8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_400bd5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd___rax__rcx_8____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %10, i64* %11, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %13 = bitcast i64* %12 to double*
  store double 0.000000e+00, double* %13, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd___rax__rcx_8____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 3
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 5
  store i64 %9, i64* %PC, align 8
  %10 = bitcast %union.VectorReg* %3 to double*
  %11 = load double, double* %10, align 1
  %12 = inttoptr i64 %7 to double*
  %13 = load double, double* %12, align 8
  %14 = fmul double %11, %13
  store double %14, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast [32 x %union.VectorReg]* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast %union.VectorReg* %4 to double*
  %10 = load double, double* %9, align 1
  %11 = fadd double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400b57(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400bda(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400b42(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400bed(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jmpq_.L_400ac2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
