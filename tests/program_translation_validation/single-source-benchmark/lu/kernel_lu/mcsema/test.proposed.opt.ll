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

; Function Attrs: alwaysinline
define %struct.Memory* @kernel_lu(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %34 = bitcast [32 x %union.VectorReg]* %33 to double*
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %36 = bitcast i64* %35 to double*
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %38 = bitcast %union.VectorReg* %37 to double*
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %40 = bitcast i64* %39 to double*
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_400a92

block_.L_400a92:                                  ; preds = %block_.L_400bb8, %entry
  %41 = phi i64 [ %722, %block_.L_400bb8 ], [ %.pre, %entry ]
  %42 = load i64, i64* %RBP.i, align 8
  %43 = add i64 %42, -28
  %44 = add i64 %41, 3
  store i64 %44, i64* %3, align 8
  %45 = inttoptr i64 %43 to i32*
  %46 = load i32, i32* %45, align 4
  %47 = zext i32 %46 to i64
  store i64 %47, i64* %RAX.i214, align 8
  %48 = add i64 %42, -4
  %49 = add i64 %41, 6
  store i64 %49, i64* %3, align 8
  %50 = inttoptr i64 %48 to i32*
  %51 = load i32, i32* %50, align 4
  %52 = sub i32 %46, %51
  %53 = icmp ult i32 %46, %51
  %54 = zext i1 %53 to i8
  store i8 %54, i8* %27, align 1
  %55 = and i32 %52, 255
  %56 = tail call i32 @llvm.ctpop.i32(i32 %55)
  %57 = trunc i32 %56 to i8
  %58 = and i8 %57, 1
  %59 = xor i8 %58, 1
  store i8 %59, i8* %28, align 1
  %60 = xor i32 %51, %46
  %61 = xor i32 %60, %52
  %62 = lshr i32 %61, 4
  %63 = trunc i32 %62 to i8
  %64 = and i8 %63, 1
  store i8 %64, i8* %29, align 1
  %65 = icmp eq i32 %52, 0
  %66 = zext i1 %65 to i8
  store i8 %66, i8* %30, align 1
  %67 = lshr i32 %52, 31
  %68 = trunc i32 %67 to i8
  store i8 %68, i8* %31, align 1
  %69 = lshr i32 %46, 31
  %70 = lshr i32 %51, 31
  %71 = xor i32 %70, %69
  %72 = xor i32 %67, %69
  %73 = add nuw nsw i32 %72, %71
  %74 = icmp eq i32 %73, 2
  %75 = zext i1 %74 to i8
  store i8 %75, i8* %32, align 1
  %76 = icmp ne i8 %68, 0
  %77 = xor i1 %76, %74
  %.v = select i1 %77, i64 12, i64 313
  %78 = add i64 %41, %.v
  store i64 %78, i64* %3, align 8
  br i1 %77, label %block_400a9e, label %block_.L_400bcb

block_400a9e:                                     ; preds = %block_.L_400a92
  %79 = add i64 %78, 3
  store i64 %79, i64* %3, align 8
  %80 = load i32, i32* %45, align 4
  %81 = add i32 %80, 1
  %82 = zext i32 %81 to i64
  store i64 %82, i64* %RAX.i214, align 8
  %83 = icmp eq i32 %80, -1
  %84 = icmp eq i32 %81, 0
  %85 = or i1 %83, %84
  %86 = zext i1 %85 to i8
  store i8 %86, i8* %27, align 1
  %87 = and i32 %81, 255
  %88 = tail call i32 @llvm.ctpop.i32(i32 %87)
  %89 = trunc i32 %88 to i8
  %90 = and i8 %89, 1
  %91 = xor i8 %90, 1
  store i8 %91, i8* %28, align 1
  %92 = xor i32 %80, %81
  %93 = lshr i32 %92, 4
  %94 = trunc i32 %93 to i8
  %95 = and i8 %94, 1
  store i8 %95, i8* %29, align 1
  %96 = zext i1 %84 to i8
  store i8 %96, i8* %30, align 1
  %97 = lshr i32 %81, 31
  %98 = trunc i32 %97 to i8
  store i8 %98, i8* %31, align 1
  %99 = lshr i32 %80, 31
  %100 = xor i32 %97, %99
  %101 = add nuw nsw i32 %100, %97
  %102 = icmp eq i32 %101, 2
  %103 = zext i1 %102 to i8
  store i8 %103, i8* %32, align 1
  %104 = add i64 %42, -24
  %105 = add i64 %78, 9
  store i64 %105, i64* %3, align 8
  %106 = inttoptr i64 %104 to i32*
  store i32 %81, i32* %106, align 4
  %.pre1 = load i64, i64* %3, align 8
  br label %block_.L_400aa7

block_.L_400aa7:                                  ; preds = %block_400ab3, %block_400a9e
  %107 = phi i64 [ %310, %block_400ab3 ], [ %.pre1, %block_400a9e ]
  %108 = load i64, i64* %RBP.i, align 8
  %109 = add i64 %108, -24
  %110 = add i64 %107, 3
  store i64 %110, i64* %3, align 8
  %111 = inttoptr i64 %109 to i32*
  %112 = load i32, i32* %111, align 4
  %113 = zext i32 %112 to i64
  store i64 %113, i64* %RAX.i214, align 8
  %114 = add i64 %108, -4
  %115 = add i64 %107, 6
  store i64 %115, i64* %3, align 8
  %116 = inttoptr i64 %114 to i32*
  %117 = load i32, i32* %116, align 4
  %118 = sub i32 %112, %117
  %119 = icmp ult i32 %112, %117
  %120 = zext i1 %119 to i8
  store i8 %120, i8* %27, align 1
  %121 = and i32 %118, 255
  %122 = tail call i32 @llvm.ctpop.i32(i32 %121)
  %123 = trunc i32 %122 to i8
  %124 = and i8 %123, 1
  %125 = xor i8 %124, 1
  store i8 %125, i8* %28, align 1
  %126 = xor i32 %117, %112
  %127 = xor i32 %126, %118
  %128 = lshr i32 %127, 4
  %129 = trunc i32 %128 to i8
  %130 = and i8 %129, 1
  store i8 %130, i8* %29, align 1
  %131 = icmp eq i32 %118, 0
  %132 = zext i1 %131 to i8
  store i8 %132, i8* %30, align 1
  %133 = lshr i32 %118, 31
  %134 = trunc i32 %133 to i8
  store i8 %134, i8* %31, align 1
  %135 = lshr i32 %112, 31
  %136 = lshr i32 %117, 31
  %137 = xor i32 %136, %135
  %138 = xor i32 %133, %135
  %139 = add nuw nsw i32 %138, %137
  %140 = icmp eq i32 %139, 2
  %141 = zext i1 %140 to i8
  store i8 %141, i8* %32, align 1
  %142 = icmp ne i8 %134, 0
  %143 = xor i1 %142, %140
  %.v4 = select i1 %143, i64 12, i64 98
  %144 = add i64 %107, %.v4
  store i64 %144, i64* %3, align 8
  br i1 %143, label %block_400ab3, label %block_.L_400b09

block_400ab3:                                     ; preds = %block_.L_400aa7
  %145 = add i64 %108, -16
  %146 = add i64 %144, 4
  store i64 %146, i64* %3, align 8
  %147 = inttoptr i64 %145 to i64*
  %148 = load i64, i64* %147, align 8
  store i64 %148, i64* %RAX.i214, align 8
  %149 = add i64 %108, -28
  %150 = add i64 %144, 8
  store i64 %150, i64* %3, align 8
  %151 = inttoptr i64 %149 to i32*
  %152 = load i32, i32* %151, align 4
  %153 = sext i32 %152 to i64
  %154 = shl nsw i64 %153, 10
  store i64 %154, i64* %RCX.i189, align 8
  %155 = lshr i64 %153, 53
  %156 = and i64 %155, 1
  %157 = add i64 %154, %148
  store i64 %157, i64* %RAX.i214, align 8
  %158 = icmp ult i64 %157, %148
  %159 = icmp ult i64 %157, %154
  %160 = or i1 %158, %159
  %161 = zext i1 %160 to i8
  store i8 %161, i8* %27, align 1
  %162 = trunc i64 %157 to i32
  %163 = and i32 %162, 255
  %164 = tail call i32 @llvm.ctpop.i32(i32 %163)
  %165 = trunc i32 %164 to i8
  %166 = and i8 %165, 1
  %167 = xor i8 %166, 1
  store i8 %167, i8* %28, align 1
  %168 = xor i64 %148, %157
  %169 = lshr i64 %168, 4
  %170 = trunc i64 %169 to i8
  %171 = and i8 %170, 1
  store i8 %171, i8* %29, align 1
  %172 = icmp eq i64 %157, 0
  %173 = zext i1 %172 to i8
  store i8 %173, i8* %30, align 1
  %174 = lshr i64 %157, 63
  %175 = trunc i64 %174 to i8
  store i8 %175, i8* %31, align 1
  %176 = lshr i64 %148, 63
  %177 = xor i64 %174, %176
  %178 = xor i64 %174, %156
  %179 = add nuw nsw i64 %177, %178
  %180 = icmp eq i64 %179, 2
  %181 = zext i1 %180 to i8
  store i8 %181, i8* %32, align 1
  %182 = add i64 %144, 19
  store i64 %182, i64* %3, align 8
  %183 = load i32, i32* %111, align 4
  %184 = sext i32 %183 to i64
  store i64 %184, i64* %RCX.i189, align 8
  %185 = shl nsw i64 %184, 3
  %186 = add i64 %185, %157
  %187 = add i64 %144, 24
  store i64 %187, i64* %3, align 8
  %188 = inttoptr i64 %186 to double*
  %189 = load double, double* %188, align 8
  store double %189, double* %34, align 1
  store double 0.000000e+00, double* %36, align 1
  %190 = add i64 %144, 28
  store i64 %190, i64* %3, align 8
  %191 = load i64, i64* %147, align 8
  store i64 %191, i64* %RAX.i214, align 8
  %192 = add i64 %144, 32
  store i64 %192, i64* %3, align 8
  %193 = load i32, i32* %151, align 4
  %194 = sext i32 %193 to i64
  %195 = shl nsw i64 %194, 10
  store i64 %195, i64* %RCX.i189, align 8
  %196 = lshr i64 %194, 53
  %197 = and i64 %196, 1
  %198 = add i64 %195, %191
  store i64 %198, i64* %RAX.i214, align 8
  %199 = icmp ult i64 %198, %191
  %200 = icmp ult i64 %198, %195
  %201 = or i1 %199, %200
  %202 = zext i1 %201 to i8
  store i8 %202, i8* %27, align 1
  %203 = trunc i64 %198 to i32
  %204 = and i32 %203, 255
  %205 = tail call i32 @llvm.ctpop.i32(i32 %204)
  %206 = trunc i32 %205 to i8
  %207 = and i8 %206, 1
  %208 = xor i8 %207, 1
  store i8 %208, i8* %28, align 1
  %209 = xor i64 %191, %198
  %210 = lshr i64 %209, 4
  %211 = trunc i64 %210 to i8
  %212 = and i8 %211, 1
  store i8 %212, i8* %29, align 1
  %213 = icmp eq i64 %198, 0
  %214 = zext i1 %213 to i8
  store i8 %214, i8* %30, align 1
  %215 = lshr i64 %198, 63
  %216 = trunc i64 %215 to i8
  store i8 %216, i8* %31, align 1
  %217 = lshr i64 %191, 63
  %218 = xor i64 %215, %217
  %219 = xor i64 %215, %197
  %220 = add nuw nsw i64 %218, %219
  %221 = icmp eq i64 %220, 2
  %222 = zext i1 %221 to i8
  store i8 %222, i8* %32, align 1
  %223 = load i64, i64* %RBP.i, align 8
  %224 = add i64 %223, -28
  %225 = add i64 %144, 43
  store i64 %225, i64* %3, align 8
  %226 = inttoptr i64 %224 to i32*
  %227 = load i32, i32* %226, align 4
  %228 = sext i32 %227 to i64
  store i64 %228, i64* %RCX.i189, align 8
  %229 = shl nsw i64 %228, 3
  %230 = add i64 %229, %198
  %231 = add i64 %144, 48
  store i64 %231, i64* %3, align 8
  %232 = inttoptr i64 %230 to double*
  %233 = load double, double* %232, align 8
  %234 = fdiv double %189, %233
  store double %234, double* %34, align 1
  store i64 0, i64* %35, align 1
  %235 = add i64 %223, -16
  %236 = add i64 %144, 52
  store i64 %236, i64* %3, align 8
  %237 = inttoptr i64 %235 to i64*
  %238 = load i64, i64* %237, align 8
  store i64 %238, i64* %RAX.i214, align 8
  %239 = add i64 %144, 56
  store i64 %239, i64* %3, align 8
  %240 = load i32, i32* %226, align 4
  %241 = sext i32 %240 to i64
  %242 = shl nsw i64 %241, 10
  store i64 %242, i64* %RCX.i189, align 8
  %243 = lshr i64 %241, 53
  %244 = and i64 %243, 1
  %245 = add i64 %242, %238
  store i64 %245, i64* %RAX.i214, align 8
  %246 = icmp ult i64 %245, %238
  %247 = icmp ult i64 %245, %242
  %248 = or i1 %246, %247
  %249 = zext i1 %248 to i8
  store i8 %249, i8* %27, align 1
  %250 = trunc i64 %245 to i32
  %251 = and i32 %250, 255
  %252 = tail call i32 @llvm.ctpop.i32(i32 %251)
  %253 = trunc i32 %252 to i8
  %254 = and i8 %253, 1
  %255 = xor i8 %254, 1
  store i8 %255, i8* %28, align 1
  %256 = xor i64 %238, %245
  %257 = lshr i64 %256, 4
  %258 = trunc i64 %257 to i8
  %259 = and i8 %258, 1
  store i8 %259, i8* %29, align 1
  %260 = icmp eq i64 %245, 0
  %261 = zext i1 %260 to i8
  store i8 %261, i8* %30, align 1
  %262 = lshr i64 %245, 63
  %263 = trunc i64 %262 to i8
  store i8 %263, i8* %31, align 1
  %264 = lshr i64 %238, 63
  %265 = xor i64 %262, %264
  %266 = xor i64 %262, %244
  %267 = add nuw nsw i64 %265, %266
  %268 = icmp eq i64 %267, 2
  %269 = zext i1 %268 to i8
  store i8 %269, i8* %32, align 1
  %270 = add i64 %223, -24
  %271 = add i64 %144, 67
  store i64 %271, i64* %3, align 8
  %272 = inttoptr i64 %270 to i32*
  %273 = load i32, i32* %272, align 4
  %274 = sext i32 %273 to i64
  store i64 %274, i64* %RCX.i189, align 8
  %275 = shl nsw i64 %274, 3
  %276 = add i64 %275, %245
  %277 = add i64 %144, 72
  store i64 %277, i64* %3, align 8
  %278 = inttoptr i64 %276 to double*
  store double %234, double* %278, align 8
  %279 = load i64, i64* %RBP.i, align 8
  %280 = add i64 %279, -24
  %281 = load i64, i64* %3, align 8
  %282 = add i64 %281, 3
  store i64 %282, i64* %3, align 8
  %283 = inttoptr i64 %280 to i32*
  %284 = load i32, i32* %283, align 4
  %285 = add i32 %284, 1
  %286 = zext i32 %285 to i64
  store i64 %286, i64* %RAX.i214, align 8
  %287 = icmp eq i32 %284, -1
  %288 = icmp eq i32 %285, 0
  %289 = or i1 %287, %288
  %290 = zext i1 %289 to i8
  store i8 %290, i8* %27, align 1
  %291 = and i32 %285, 255
  %292 = tail call i32 @llvm.ctpop.i32(i32 %291)
  %293 = trunc i32 %292 to i8
  %294 = and i8 %293, 1
  %295 = xor i8 %294, 1
  store i8 %295, i8* %28, align 1
  %296 = xor i32 %284, %285
  %297 = lshr i32 %296, 4
  %298 = trunc i32 %297 to i8
  %299 = and i8 %298, 1
  store i8 %299, i8* %29, align 1
  %300 = zext i1 %288 to i8
  store i8 %300, i8* %30, align 1
  %301 = lshr i32 %285, 31
  %302 = trunc i32 %301 to i8
  store i8 %302, i8* %31, align 1
  %303 = lshr i32 %284, 31
  %304 = xor i32 %301, %303
  %305 = add nuw nsw i32 %304, %301
  %306 = icmp eq i32 %305, 2
  %307 = zext i1 %306 to i8
  store i8 %307, i8* %32, align 1
  %308 = add i64 %281, 9
  store i64 %308, i64* %3, align 8
  store i32 %285, i32* %283, align 4
  %309 = load i64, i64* %3, align 8
  %310 = add i64 %309, -93
  store i64 %310, i64* %3, align 8
  br label %block_.L_400aa7

block_.L_400b09:                                  ; preds = %block_.L_400aa7
  %311 = add i64 %108, -28
  %312 = add i64 %144, 3
  store i64 %312, i64* %3, align 8
  %313 = inttoptr i64 %311 to i32*
  %314 = load i32, i32* %313, align 4
  %315 = add i32 %314, 1
  %316 = zext i32 %315 to i64
  store i64 %316, i64* %RAX.i214, align 8
  %317 = icmp eq i32 %314, -1
  %318 = icmp eq i32 %315, 0
  %319 = or i1 %317, %318
  %320 = zext i1 %319 to i8
  store i8 %320, i8* %27, align 1
  %321 = and i32 %315, 255
  %322 = tail call i32 @llvm.ctpop.i32(i32 %321)
  %323 = trunc i32 %322 to i8
  %324 = and i8 %323, 1
  %325 = xor i8 %324, 1
  store i8 %325, i8* %28, align 1
  %326 = xor i32 %314, %315
  %327 = lshr i32 %326, 4
  %328 = trunc i32 %327 to i8
  %329 = and i8 %328, 1
  store i8 %329, i8* %29, align 1
  %330 = zext i1 %318 to i8
  store i8 %330, i8* %30, align 1
  %331 = lshr i32 %315, 31
  %332 = trunc i32 %331 to i8
  store i8 %332, i8* %31, align 1
  %333 = lshr i32 %314, 31
  %334 = xor i32 %331, %333
  %335 = add nuw nsw i32 %334, %331
  %336 = icmp eq i32 %335, 2
  %337 = zext i1 %336 to i8
  store i8 %337, i8* %32, align 1
  %338 = add i64 %108, -20
  %339 = add i64 %144, 9
  store i64 %339, i64* %3, align 8
  %340 = inttoptr i64 %338 to i32*
  store i32 %315, i32* %340, align 4
  %.pre2 = load i64, i64* %3, align 8
  br label %block_.L_400b12

block_.L_400b12:                                  ; preds = %block_.L_400ba5, %block_.L_400b09
  %341 = phi i64 [ %693, %block_.L_400ba5 ], [ %.pre2, %block_.L_400b09 ]
  %342 = load i64, i64* %RBP.i, align 8
  %343 = add i64 %342, -20
  %344 = add i64 %341, 3
  store i64 %344, i64* %3, align 8
  %345 = inttoptr i64 %343 to i32*
  %346 = load i32, i32* %345, align 4
  %347 = zext i32 %346 to i64
  store i64 %347, i64* %RAX.i214, align 8
  %348 = add i64 %342, -4
  %349 = add i64 %341, 6
  store i64 %349, i64* %3, align 8
  %350 = inttoptr i64 %348 to i32*
  %351 = load i32, i32* %350, align 4
  %352 = sub i32 %346, %351
  %353 = icmp ult i32 %346, %351
  %354 = zext i1 %353 to i8
  store i8 %354, i8* %27, align 1
  %355 = and i32 %352, 255
  %356 = tail call i32 @llvm.ctpop.i32(i32 %355)
  %357 = trunc i32 %356 to i8
  %358 = and i8 %357, 1
  %359 = xor i8 %358, 1
  store i8 %359, i8* %28, align 1
  %360 = xor i32 %351, %346
  %361 = xor i32 %360, %352
  %362 = lshr i32 %361, 4
  %363 = trunc i32 %362 to i8
  %364 = and i8 %363, 1
  store i8 %364, i8* %29, align 1
  %365 = icmp eq i32 %352, 0
  %366 = zext i1 %365 to i8
  store i8 %366, i8* %30, align 1
  %367 = lshr i32 %352, 31
  %368 = trunc i32 %367 to i8
  store i8 %368, i8* %31, align 1
  %369 = lshr i32 %346, 31
  %370 = lshr i32 %351, 31
  %371 = xor i32 %370, %369
  %372 = xor i32 %367, %369
  %373 = add nuw nsw i32 %372, %371
  %374 = icmp eq i32 %373, 2
  %375 = zext i1 %374 to i8
  store i8 %375, i8* %32, align 1
  %376 = icmp ne i8 %368, 0
  %377 = xor i1 %376, %374
  %.v5 = select i1 %377, i64 12, i64 166
  %378 = add i64 %341, %.v5
  store i64 %378, i64* %3, align 8
  %379 = add i64 %342, -28
  br i1 %377, label %block_400b1e, label %block_.L_400bb8

block_400b1e:                                     ; preds = %block_.L_400b12
  %380 = add i64 %378, 3
  store i64 %380, i64* %3, align 8
  %381 = inttoptr i64 %379 to i32*
  %382 = load i32, i32* %381, align 4
  %383 = add i32 %382, 1
  %384 = zext i32 %383 to i64
  store i64 %384, i64* %RAX.i214, align 8
  %385 = icmp eq i32 %382, -1
  %386 = icmp eq i32 %383, 0
  %387 = or i1 %385, %386
  %388 = zext i1 %387 to i8
  store i8 %388, i8* %27, align 1
  %389 = and i32 %383, 255
  %390 = tail call i32 @llvm.ctpop.i32(i32 %389)
  %391 = trunc i32 %390 to i8
  %392 = and i8 %391, 1
  %393 = xor i8 %392, 1
  store i8 %393, i8* %28, align 1
  %394 = xor i32 %382, %383
  %395 = lshr i32 %394, 4
  %396 = trunc i32 %395 to i8
  %397 = and i8 %396, 1
  store i8 %397, i8* %29, align 1
  %398 = zext i1 %386 to i8
  store i8 %398, i8* %30, align 1
  %399 = lshr i32 %383, 31
  %400 = trunc i32 %399 to i8
  store i8 %400, i8* %31, align 1
  %401 = lshr i32 %382, 31
  %402 = xor i32 %399, %401
  %403 = add nuw nsw i32 %402, %399
  %404 = icmp eq i32 %403, 2
  %405 = zext i1 %404 to i8
  store i8 %405, i8* %32, align 1
  %406 = add i64 %342, -24
  %407 = add i64 %378, 9
  store i64 %407, i64* %3, align 8
  %408 = inttoptr i64 %406 to i32*
  store i32 %383, i32* %408, align 4
  %.pre3 = load i64, i64* %3, align 8
  br label %block_.L_400b27

block_.L_400b27:                                  ; preds = %block_400b33, %block_400b1e
  %409 = phi i64 [ %663, %block_400b33 ], [ %.pre3, %block_400b1e ]
  %410 = load i64, i64* %RBP.i, align 8
  %411 = add i64 %410, -24
  %412 = add i64 %409, 3
  store i64 %412, i64* %3, align 8
  %413 = inttoptr i64 %411 to i32*
  %414 = load i32, i32* %413, align 4
  %415 = zext i32 %414 to i64
  store i64 %415, i64* %RAX.i214, align 8
  %416 = add i64 %410, -4
  %417 = add i64 %409, 6
  store i64 %417, i64* %3, align 8
  %418 = inttoptr i64 %416 to i32*
  %419 = load i32, i32* %418, align 4
  %420 = sub i32 %414, %419
  %421 = icmp ult i32 %414, %419
  %422 = zext i1 %421 to i8
  store i8 %422, i8* %27, align 1
  %423 = and i32 %420, 255
  %424 = tail call i32 @llvm.ctpop.i32(i32 %423)
  %425 = trunc i32 %424 to i8
  %426 = and i8 %425, 1
  %427 = xor i8 %426, 1
  store i8 %427, i8* %28, align 1
  %428 = xor i32 %419, %414
  %429 = xor i32 %428, %420
  %430 = lshr i32 %429, 4
  %431 = trunc i32 %430 to i8
  %432 = and i8 %431, 1
  store i8 %432, i8* %29, align 1
  %433 = icmp eq i32 %420, 0
  %434 = zext i1 %433 to i8
  store i8 %434, i8* %30, align 1
  %435 = lshr i32 %420, 31
  %436 = trunc i32 %435 to i8
  store i8 %436, i8* %31, align 1
  %437 = lshr i32 %414, 31
  %438 = lshr i32 %419, 31
  %439 = xor i32 %438, %437
  %440 = xor i32 %435, %437
  %441 = add nuw nsw i32 %440, %439
  %442 = icmp eq i32 %441, 2
  %443 = zext i1 %442 to i8
  store i8 %443, i8* %32, align 1
  %444 = icmp ne i8 %436, 0
  %445 = xor i1 %444, %442
  %.v6 = select i1 %445, i64 12, i64 126
  %446 = add i64 %409, %.v6
  store i64 %446, i64* %3, align 8
  br i1 %445, label %block_400b33, label %block_.L_400ba5

block_400b33:                                     ; preds = %block_.L_400b27
  %447 = add i64 %410, -16
  %448 = add i64 %446, 4
  store i64 %448, i64* %3, align 8
  %449 = inttoptr i64 %447 to i64*
  %450 = load i64, i64* %449, align 8
  store i64 %450, i64* %RAX.i214, align 8
  %451 = add i64 %410, -20
  %452 = add i64 %446, 8
  store i64 %452, i64* %3, align 8
  %453 = inttoptr i64 %451 to i32*
  %454 = load i32, i32* %453, align 4
  %455 = sext i32 %454 to i64
  %456 = shl nsw i64 %455, 10
  store i64 %456, i64* %RCX.i189, align 8
  %457 = lshr i64 %455, 53
  %458 = and i64 %457, 1
  %459 = add i64 %456, %450
  store i64 %459, i64* %RAX.i214, align 8
  %460 = icmp ult i64 %459, %450
  %461 = icmp ult i64 %459, %456
  %462 = or i1 %460, %461
  %463 = zext i1 %462 to i8
  store i8 %463, i8* %27, align 1
  %464 = trunc i64 %459 to i32
  %465 = and i32 %464, 255
  %466 = tail call i32 @llvm.ctpop.i32(i32 %465)
  %467 = trunc i32 %466 to i8
  %468 = and i8 %467, 1
  %469 = xor i8 %468, 1
  store i8 %469, i8* %28, align 1
  %470 = xor i64 %450, %459
  %471 = lshr i64 %470, 4
  %472 = trunc i64 %471 to i8
  %473 = and i8 %472, 1
  store i8 %473, i8* %29, align 1
  %474 = icmp eq i64 %459, 0
  %475 = zext i1 %474 to i8
  store i8 %475, i8* %30, align 1
  %476 = lshr i64 %459, 63
  %477 = trunc i64 %476 to i8
  store i8 %477, i8* %31, align 1
  %478 = lshr i64 %450, 63
  %479 = xor i64 %476, %478
  %480 = xor i64 %476, %458
  %481 = add nuw nsw i64 %479, %480
  %482 = icmp eq i64 %481, 2
  %483 = zext i1 %482 to i8
  store i8 %483, i8* %32, align 1
  %484 = add i64 %446, 19
  store i64 %484, i64* %3, align 8
  %485 = load i32, i32* %413, align 4
  %486 = sext i32 %485 to i64
  store i64 %486, i64* %RCX.i189, align 8
  %487 = shl nsw i64 %486, 3
  %488 = add i64 %487, %459
  %489 = add i64 %446, 24
  store i64 %489, i64* %3, align 8
  %490 = inttoptr i64 %488 to i64*
  %491 = load i64, i64* %490, align 8
  %492 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %33, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %491, i64* %492, align 1
  store double 0.000000e+00, double* %36, align 1
  %493 = add i64 %446, 28
  store i64 %493, i64* %3, align 8
  %494 = load i64, i64* %449, align 8
  store i64 %494, i64* %RAX.i214, align 8
  %495 = add i64 %446, 32
  store i64 %495, i64* %3, align 8
  %496 = load i32, i32* %453, align 4
  %497 = sext i32 %496 to i64
  %498 = shl nsw i64 %497, 10
  store i64 %498, i64* %RCX.i189, align 8
  %499 = lshr i64 %497, 53
  %500 = and i64 %499, 1
  %501 = add i64 %498, %494
  store i64 %501, i64* %RAX.i214, align 8
  %502 = icmp ult i64 %501, %494
  %503 = icmp ult i64 %501, %498
  %504 = or i1 %502, %503
  %505 = zext i1 %504 to i8
  store i8 %505, i8* %27, align 1
  %506 = trunc i64 %501 to i32
  %507 = and i32 %506, 255
  %508 = tail call i32 @llvm.ctpop.i32(i32 %507)
  %509 = trunc i32 %508 to i8
  %510 = and i8 %509, 1
  %511 = xor i8 %510, 1
  store i8 %511, i8* %28, align 1
  %512 = xor i64 %494, %501
  %513 = lshr i64 %512, 4
  %514 = trunc i64 %513 to i8
  %515 = and i8 %514, 1
  store i8 %515, i8* %29, align 1
  %516 = icmp eq i64 %501, 0
  %517 = zext i1 %516 to i8
  store i8 %517, i8* %30, align 1
  %518 = lshr i64 %501, 63
  %519 = trunc i64 %518 to i8
  store i8 %519, i8* %31, align 1
  %520 = lshr i64 %494, 63
  %521 = xor i64 %518, %520
  %522 = xor i64 %518, %500
  %523 = add nuw nsw i64 %521, %522
  %524 = icmp eq i64 %523, 2
  %525 = zext i1 %524 to i8
  store i8 %525, i8* %32, align 1
  %526 = load i64, i64* %RBP.i, align 8
  %527 = add i64 %526, -28
  %528 = add i64 %446, 43
  store i64 %528, i64* %3, align 8
  %529 = inttoptr i64 %527 to i32*
  %530 = load i32, i32* %529, align 4
  %531 = sext i32 %530 to i64
  store i64 %531, i64* %RCX.i189, align 8
  %532 = shl nsw i64 %531, 3
  %533 = add i64 %532, %501
  %534 = add i64 %446, 48
  store i64 %534, i64* %3, align 8
  %535 = inttoptr i64 %533 to double*
  %536 = load double, double* %535, align 8
  store double %536, double* %38, align 1
  store double 0.000000e+00, double* %40, align 1
  %537 = add i64 %526, -16
  %538 = add i64 %446, 52
  store i64 %538, i64* %3, align 8
  %539 = inttoptr i64 %537 to i64*
  %540 = load i64, i64* %539, align 8
  store i64 %540, i64* %RAX.i214, align 8
  %541 = add i64 %446, 56
  store i64 %541, i64* %3, align 8
  %542 = load i32, i32* %529, align 4
  %543 = sext i32 %542 to i64
  %544 = shl nsw i64 %543, 10
  store i64 %544, i64* %RCX.i189, align 8
  %545 = lshr i64 %543, 53
  %546 = and i64 %545, 1
  %547 = add i64 %544, %540
  store i64 %547, i64* %RAX.i214, align 8
  %548 = icmp ult i64 %547, %540
  %549 = icmp ult i64 %547, %544
  %550 = or i1 %548, %549
  %551 = zext i1 %550 to i8
  store i8 %551, i8* %27, align 1
  %552 = trunc i64 %547 to i32
  %553 = and i32 %552, 255
  %554 = tail call i32 @llvm.ctpop.i32(i32 %553)
  %555 = trunc i32 %554 to i8
  %556 = and i8 %555, 1
  %557 = xor i8 %556, 1
  store i8 %557, i8* %28, align 1
  %558 = xor i64 %540, %547
  %559 = lshr i64 %558, 4
  %560 = trunc i64 %559 to i8
  %561 = and i8 %560, 1
  store i8 %561, i8* %29, align 1
  %562 = icmp eq i64 %547, 0
  %563 = zext i1 %562 to i8
  store i8 %563, i8* %30, align 1
  %564 = lshr i64 %547, 63
  %565 = trunc i64 %564 to i8
  store i8 %565, i8* %31, align 1
  %566 = lshr i64 %540, 63
  %567 = xor i64 %564, %566
  %568 = xor i64 %564, %546
  %569 = add nuw nsw i64 %567, %568
  %570 = icmp eq i64 %569, 2
  %571 = zext i1 %570 to i8
  store i8 %571, i8* %32, align 1
  %572 = add i64 %526, -24
  %573 = add i64 %446, 67
  store i64 %573, i64* %3, align 8
  %574 = inttoptr i64 %572 to i32*
  %575 = load i32, i32* %574, align 4
  %576 = sext i32 %575 to i64
  store i64 %576, i64* %RCX.i189, align 8
  %577 = shl nsw i64 %576, 3
  %578 = add i64 %577, %547
  %579 = add i64 %446, 72
  store i64 %579, i64* %3, align 8
  %580 = inttoptr i64 %578 to double*
  %581 = load double, double* %580, align 8
  %582 = fmul double %536, %581
  store double %582, double* %38, align 1
  store i64 0, i64* %39, align 1
  %583 = load double, double* %34, align 1
  %584 = fadd double %583, %582
  store double %584, double* %34, align 1
  %585 = load i64, i64* %RBP.i, align 8
  %586 = add i64 %585, -16
  %587 = add i64 %446, 80
  store i64 %587, i64* %3, align 8
  %588 = inttoptr i64 %586 to i64*
  %589 = load i64, i64* %588, align 8
  store i64 %589, i64* %RAX.i214, align 8
  %590 = add i64 %585, -20
  %591 = add i64 %446, 84
  store i64 %591, i64* %3, align 8
  %592 = inttoptr i64 %590 to i32*
  %593 = load i32, i32* %592, align 4
  %594 = sext i32 %593 to i64
  %595 = shl nsw i64 %594, 10
  store i64 %595, i64* %RCX.i189, align 8
  %596 = lshr i64 %594, 53
  %597 = and i64 %596, 1
  %598 = add i64 %595, %589
  store i64 %598, i64* %RAX.i214, align 8
  %599 = icmp ult i64 %598, %589
  %600 = icmp ult i64 %598, %595
  %601 = or i1 %599, %600
  %602 = zext i1 %601 to i8
  store i8 %602, i8* %27, align 1
  %603 = trunc i64 %598 to i32
  %604 = and i32 %603, 255
  %605 = tail call i32 @llvm.ctpop.i32(i32 %604)
  %606 = trunc i32 %605 to i8
  %607 = and i8 %606, 1
  %608 = xor i8 %607, 1
  store i8 %608, i8* %28, align 1
  %609 = xor i64 %589, %598
  %610 = lshr i64 %609, 4
  %611 = trunc i64 %610 to i8
  %612 = and i8 %611, 1
  store i8 %612, i8* %29, align 1
  %613 = icmp eq i64 %598, 0
  %614 = zext i1 %613 to i8
  store i8 %614, i8* %30, align 1
  %615 = lshr i64 %598, 63
  %616 = trunc i64 %615 to i8
  store i8 %616, i8* %31, align 1
  %617 = lshr i64 %589, 63
  %618 = xor i64 %615, %617
  %619 = xor i64 %615, %597
  %620 = add nuw nsw i64 %618, %619
  %621 = icmp eq i64 %620, 2
  %622 = zext i1 %621 to i8
  store i8 %622, i8* %32, align 1
  %623 = add i64 %585, -24
  %624 = add i64 %446, 95
  store i64 %624, i64* %3, align 8
  %625 = inttoptr i64 %623 to i32*
  %626 = load i32, i32* %625, align 4
  %627 = sext i32 %626 to i64
  store i64 %627, i64* %RCX.i189, align 8
  %628 = shl nsw i64 %627, 3
  %629 = add i64 %628, %598
  %630 = add i64 %446, 100
  store i64 %630, i64* %3, align 8
  %631 = inttoptr i64 %629 to double*
  store double %584, double* %631, align 8
  %632 = load i64, i64* %RBP.i, align 8
  %633 = add i64 %632, -24
  %634 = load i64, i64* %3, align 8
  %635 = add i64 %634, 3
  store i64 %635, i64* %3, align 8
  %636 = inttoptr i64 %633 to i32*
  %637 = load i32, i32* %636, align 4
  %638 = add i32 %637, 1
  %639 = zext i32 %638 to i64
  store i64 %639, i64* %RAX.i214, align 8
  %640 = icmp eq i32 %637, -1
  %641 = icmp eq i32 %638, 0
  %642 = or i1 %640, %641
  %643 = zext i1 %642 to i8
  store i8 %643, i8* %27, align 1
  %644 = and i32 %638, 255
  %645 = tail call i32 @llvm.ctpop.i32(i32 %644)
  %646 = trunc i32 %645 to i8
  %647 = and i8 %646, 1
  %648 = xor i8 %647, 1
  store i8 %648, i8* %28, align 1
  %649 = xor i32 %637, %638
  %650 = lshr i32 %649, 4
  %651 = trunc i32 %650 to i8
  %652 = and i8 %651, 1
  store i8 %652, i8* %29, align 1
  %653 = zext i1 %641 to i8
  store i8 %653, i8* %30, align 1
  %654 = lshr i32 %638, 31
  %655 = trunc i32 %654 to i8
  store i8 %655, i8* %31, align 1
  %656 = lshr i32 %637, 31
  %657 = xor i32 %654, %656
  %658 = add nuw nsw i32 %657, %654
  %659 = icmp eq i32 %658, 2
  %660 = zext i1 %659 to i8
  store i8 %660, i8* %32, align 1
  %661 = add i64 %634, 9
  store i64 %661, i64* %3, align 8
  store i32 %638, i32* %636, align 4
  %662 = load i64, i64* %3, align 8
  %663 = add i64 %662, -121
  store i64 %663, i64* %3, align 8
  br label %block_.L_400b27

block_.L_400ba5:                                  ; preds = %block_.L_400b27
  %664 = add i64 %410, -20
  %665 = add i64 %446, 8
  store i64 %665, i64* %3, align 8
  %666 = inttoptr i64 %664 to i32*
  %667 = load i32, i32* %666, align 4
  %668 = add i32 %667, 1
  %669 = zext i32 %668 to i64
  store i64 %669, i64* %RAX.i214, align 8
  %670 = icmp eq i32 %667, -1
  %671 = icmp eq i32 %668, 0
  %672 = or i1 %670, %671
  %673 = zext i1 %672 to i8
  store i8 %673, i8* %27, align 1
  %674 = and i32 %668, 255
  %675 = tail call i32 @llvm.ctpop.i32(i32 %674)
  %676 = trunc i32 %675 to i8
  %677 = and i8 %676, 1
  %678 = xor i8 %677, 1
  store i8 %678, i8* %28, align 1
  %679 = xor i32 %667, %668
  %680 = lshr i32 %679, 4
  %681 = trunc i32 %680 to i8
  %682 = and i8 %681, 1
  store i8 %682, i8* %29, align 1
  %683 = zext i1 %671 to i8
  store i8 %683, i8* %30, align 1
  %684 = lshr i32 %668, 31
  %685 = trunc i32 %684 to i8
  store i8 %685, i8* %31, align 1
  %686 = lshr i32 %667, 31
  %687 = xor i32 %684, %686
  %688 = add nuw nsw i32 %687, %684
  %689 = icmp eq i32 %688, 2
  %690 = zext i1 %689 to i8
  store i8 %690, i8* %32, align 1
  %691 = add i64 %446, 14
  store i64 %691, i64* %3, align 8
  store i32 %668, i32* %666, align 4
  %692 = load i64, i64* %3, align 8
  %693 = add i64 %692, -161
  store i64 %693, i64* %3, align 8
  br label %block_.L_400b12

block_.L_400bb8:                                  ; preds = %block_.L_400b12
  %694 = add i64 %378, 8
  store i64 %694, i64* %3, align 8
  %695 = inttoptr i64 %379 to i32*
  %696 = load i32, i32* %695, align 4
  %697 = add i32 %696, 1
  %698 = zext i32 %697 to i64
  store i64 %698, i64* %RAX.i214, align 8
  %699 = icmp eq i32 %696, -1
  %700 = icmp eq i32 %697, 0
  %701 = or i1 %699, %700
  %702 = zext i1 %701 to i8
  store i8 %702, i8* %27, align 1
  %703 = and i32 %697, 255
  %704 = tail call i32 @llvm.ctpop.i32(i32 %703)
  %705 = trunc i32 %704 to i8
  %706 = and i8 %705, 1
  %707 = xor i8 %706, 1
  store i8 %707, i8* %28, align 1
  %708 = xor i32 %696, %697
  %709 = lshr i32 %708, 4
  %710 = trunc i32 %709 to i8
  %711 = and i8 %710, 1
  store i8 %711, i8* %29, align 1
  %712 = zext i1 %700 to i8
  store i8 %712, i8* %30, align 1
  %713 = lshr i32 %697, 31
  %714 = trunc i32 %713 to i8
  store i8 %714, i8* %31, align 1
  %715 = lshr i32 %696, 31
  %716 = xor i32 %713, %715
  %717 = add nuw nsw i32 %716, %713
  %718 = icmp eq i32 %717, 2
  %719 = zext i1 %718 to i8
  store i8 %719, i8* %32, align 1
  %720 = add i64 %378, 14
  store i64 %720, i64* %3, align 8
  store i32 %697, i32* %695, align 4
  %721 = load i64, i64* %3, align 8
  %722 = add i64 %721, -308
  store i64 %722, i64* %3, align 8
  br label %block_.L_400a92

block_.L_400bcb:                                  ; preds = %block_.L_400a92
  %723 = add i64 %78, 1
  store i64 %723, i64* %3, align 8
  %724 = load i64, i64* %6, align 8
  %725 = add i64 %724, 8
  %726 = inttoptr i64 %724 to i64*
  %727 = load i64, i64* %726, align 8
  store i64 %727, i64* %RBP.i, align 8
  store i64 %725, i64* %6, align 8
  %728 = add i64 %78, 2
  store i64 %728, i64* %3, align 8
  %729 = inttoptr i64 %725 to i64*
  %730 = load i64, i64* %729, align 8
  store i64 %730, i64* %3, align 8
  %731 = add i64 %724, 16
  store i64 %731, i64* %6, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_pushq__rbp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__rsp___rbp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__edi__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__rsi__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__0x0__MINUS0x1c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_cmpl_MINUS0x4__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_jge_.L_400bcb(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %13 = add i64 %3, %.v
  store i64 %13, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__0x1___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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
  %20 = xor i32 %6, %7
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

define %struct.Memory* @routine_movl__eax__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_jge_.L_400b09(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %13 = add i64 %3, %.v
  store i64 %13, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_shlq__0xa___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_addq__rcx___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd___rax__rcx_8____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_divsd___rax__rcx_8____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd__xmm0____rax__rcx_8_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_jmpq_.L_400aa7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_jge_.L_400bb8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %13 = add i64 %3, %.v
  store i64 %13, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_400ba5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %13 = add i64 %3, %.v
  store i64 %13, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x14__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd___rax__rcx_8____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_mulsd___rax__rcx_8____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_jmpq_.L_400b27(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400baa(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400b12(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400bbd(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_jmpq_.L_400a92(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_popq__rbp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_retq(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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
