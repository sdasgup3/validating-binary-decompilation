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
  %PC.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP.i, align 8
  %5 = add i64 %1, 1
  store i64 %5, i64* %PC.i, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %4, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  %10 = load i64, i64* %PC.i, align 8
  store i64 %8, i64* %RBP.i, align 8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i = bitcast %union.anon* %11 to i32*
  %12 = add i64 %7, -12
  %13 = load i32, i32* %EDI.i, align 4
  %14 = add i64 %10, 6
  store i64 %14, i64* %PC.i, align 8
  %15 = inttoptr i64 %12 to i32*
  store i32 %13, i32* %15, align 4
  %RSI.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %16 = load i64, i64* %RBP.i, align 8
  %17 = add i64 %16, -16
  %18 = load i64, i64* %RSI.i, align 8
  %19 = load i64, i64* %PC.i, align 8
  %20 = add i64 %19, 4
  store i64 %20, i64* %PC.i, align 8
  %21 = inttoptr i64 %17 to i64*
  store i64 %18, i64* %21, align 8
  %22 = load i64, i64* %RBP.i, align 8
  %23 = add i64 %22, -28
  %24 = load i64, i64* %PC.i, align 8
  %25 = add i64 %24, 7
  store i64 %25, i64* %PC.i, align 8
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
  %.pre = load i64, i64* %PC.i, align 8
  br label %block_.L_400a92

block_.L_400a92:                                  ; preds = %block_.L_400bb8, %entry
  %41 = phi i64 [ %729, %block_.L_400bb8 ], [ %.pre, %entry ]
  %42 = load i64, i64* %RBP.i, align 8
  %43 = add i64 %42, -28
  %44 = add i64 %41, 3
  store i64 %44, i64* %PC.i, align 8
  %45 = inttoptr i64 %43 to i32*
  %46 = load i32, i32* %45, align 4
  %47 = zext i32 %46 to i64
  store i64 %47, i64* %RAX.i214, align 8
  %48 = add i64 %42, -4
  %49 = add i64 %41, 6
  store i64 %49, i64* %PC.i, align 8
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
  store i64 %79, i64* %PC.i, align 8
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
  %96 = icmp eq i32 %81, 0
  %97 = zext i1 %96 to i8
  store i8 %97, i8* %30, align 1
  %98 = lshr i32 %81, 31
  %99 = trunc i32 %98 to i8
  store i8 %99, i8* %31, align 1
  %100 = lshr i32 %80, 31
  %101 = xor i32 %98, %100
  %102 = add nuw nsw i32 %101, %98
  %103 = icmp eq i32 %102, 2
  %104 = zext i1 %103 to i8
  store i8 %104, i8* %32, align 1
  %105 = add i64 %42, -24
  %106 = add i64 %78, 9
  store i64 %106, i64* %PC.i, align 8
  %107 = inttoptr i64 %105 to i32*
  store i32 %81, i32* %107, align 4
  %.pre1 = load i64, i64* %PC.i, align 8
  br label %block_.L_400aa7

block_.L_400aa7:                                  ; preds = %block_400ab3, %block_400a9e
  %108 = phi i64 [ %312, %block_400ab3 ], [ %.pre1, %block_400a9e ]
  %109 = load i64, i64* %RBP.i, align 8
  %110 = add i64 %109, -24
  %111 = add i64 %108, 3
  store i64 %111, i64* %PC.i, align 8
  %112 = inttoptr i64 %110 to i32*
  %113 = load i32, i32* %112, align 4
  %114 = zext i32 %113 to i64
  store i64 %114, i64* %RAX.i214, align 8
  %115 = add i64 %109, -4
  %116 = add i64 %108, 6
  store i64 %116, i64* %PC.i, align 8
  %117 = inttoptr i64 %115 to i32*
  %118 = load i32, i32* %117, align 4
  %119 = sub i32 %113, %118
  %120 = icmp ult i32 %113, %118
  %121 = zext i1 %120 to i8
  store i8 %121, i8* %27, align 1
  %122 = and i32 %119, 255
  %123 = tail call i32 @llvm.ctpop.i32(i32 %122)
  %124 = trunc i32 %123 to i8
  %125 = and i8 %124, 1
  %126 = xor i8 %125, 1
  store i8 %126, i8* %28, align 1
  %127 = xor i32 %118, %113
  %128 = xor i32 %127, %119
  %129 = lshr i32 %128, 4
  %130 = trunc i32 %129 to i8
  %131 = and i8 %130, 1
  store i8 %131, i8* %29, align 1
  %132 = icmp eq i32 %119, 0
  %133 = zext i1 %132 to i8
  store i8 %133, i8* %30, align 1
  %134 = lshr i32 %119, 31
  %135 = trunc i32 %134 to i8
  store i8 %135, i8* %31, align 1
  %136 = lshr i32 %113, 31
  %137 = lshr i32 %118, 31
  %138 = xor i32 %137, %136
  %139 = xor i32 %134, %136
  %140 = add nuw nsw i32 %139, %138
  %141 = icmp eq i32 %140, 2
  %142 = zext i1 %141 to i8
  store i8 %142, i8* %32, align 1
  %143 = icmp ne i8 %135, 0
  %144 = xor i1 %143, %141
  %.v4 = select i1 %144, i64 12, i64 98
  %145 = add i64 %108, %.v4
  store i64 %145, i64* %3, align 8
  br i1 %144, label %block_400ab3, label %block_.L_400b09

block_400ab3:                                     ; preds = %block_.L_400aa7
  %146 = add i64 %109, -16
  %147 = add i64 %145, 4
  store i64 %147, i64* %PC.i, align 8
  %148 = inttoptr i64 %146 to i64*
  %149 = load i64, i64* %148, align 8
  store i64 %149, i64* %RAX.i214, align 8
  %150 = add i64 %109, -28
  %151 = add i64 %145, 8
  store i64 %151, i64* %PC.i, align 8
  %152 = inttoptr i64 %150 to i32*
  %153 = load i32, i32* %152, align 4
  %154 = sext i32 %153 to i64
  %155 = shl nsw i64 %154, 10
  store i64 %155, i64* %RCX.i189, align 8
  %156 = lshr i64 %154, 53
  %157 = and i64 %156, 1
  %158 = add i64 %155, %149
  store i64 %158, i64* %RAX.i214, align 8
  %159 = icmp ult i64 %158, %149
  %160 = icmp ult i64 %158, %155
  %161 = or i1 %159, %160
  %162 = zext i1 %161 to i8
  store i8 %162, i8* %27, align 1
  %163 = trunc i64 %158 to i32
  %164 = and i32 %163, 255
  %165 = tail call i32 @llvm.ctpop.i32(i32 %164)
  %166 = trunc i32 %165 to i8
  %167 = and i8 %166, 1
  %168 = xor i8 %167, 1
  store i8 %168, i8* %28, align 1
  %169 = xor i64 %149, %158
  %170 = lshr i64 %169, 4
  %171 = trunc i64 %170 to i8
  %172 = and i8 %171, 1
  store i8 %172, i8* %29, align 1
  %173 = icmp eq i64 %158, 0
  %174 = zext i1 %173 to i8
  store i8 %174, i8* %30, align 1
  %175 = lshr i64 %158, 63
  %176 = trunc i64 %175 to i8
  store i8 %176, i8* %31, align 1
  %177 = lshr i64 %149, 63
  %178 = xor i64 %175, %177
  %179 = xor i64 %175, %157
  %180 = add nuw nsw i64 %178, %179
  %181 = icmp eq i64 %180, 2
  %182 = zext i1 %181 to i8
  store i8 %182, i8* %32, align 1
  %183 = add i64 %145, 19
  store i64 %183, i64* %PC.i, align 8
  %184 = load i32, i32* %112, align 4
  %185 = sext i32 %184 to i64
  store i64 %185, i64* %RCX.i189, align 8
  %186 = shl nsw i64 %185, 3
  %187 = add i64 %186, %158
  %188 = add i64 %145, 24
  store i64 %188, i64* %PC.i, align 8
  %189 = inttoptr i64 %187 to double*
  %190 = load double, double* %189, align 8
  store double %190, double* %34, align 1
  store double 0.000000e+00, double* %36, align 1
  %191 = add i64 %145, 28
  store i64 %191, i64* %PC.i, align 8
  %192 = load i64, i64* %148, align 8
  store i64 %192, i64* %RAX.i214, align 8
  %193 = add i64 %145, 32
  store i64 %193, i64* %PC.i, align 8
  %194 = load i32, i32* %152, align 4
  %195 = sext i32 %194 to i64
  %196 = shl nsw i64 %195, 10
  store i64 %196, i64* %RCX.i189, align 8
  %197 = lshr i64 %195, 53
  %198 = and i64 %197, 1
  %199 = add i64 %196, %192
  store i64 %199, i64* %RAX.i214, align 8
  %200 = icmp ult i64 %199, %192
  %201 = icmp ult i64 %199, %196
  %202 = or i1 %200, %201
  %203 = zext i1 %202 to i8
  store i8 %203, i8* %27, align 1
  %204 = trunc i64 %199 to i32
  %205 = and i32 %204, 255
  %206 = tail call i32 @llvm.ctpop.i32(i32 %205)
  %207 = trunc i32 %206 to i8
  %208 = and i8 %207, 1
  %209 = xor i8 %208, 1
  store i8 %209, i8* %28, align 1
  %210 = xor i64 %192, %199
  %211 = lshr i64 %210, 4
  %212 = trunc i64 %211 to i8
  %213 = and i8 %212, 1
  store i8 %213, i8* %29, align 1
  %214 = icmp eq i64 %199, 0
  %215 = zext i1 %214 to i8
  store i8 %215, i8* %30, align 1
  %216 = lshr i64 %199, 63
  %217 = trunc i64 %216 to i8
  store i8 %217, i8* %31, align 1
  %218 = lshr i64 %192, 63
  %219 = xor i64 %216, %218
  %220 = xor i64 %216, %198
  %221 = add nuw nsw i64 %219, %220
  %222 = icmp eq i64 %221, 2
  %223 = zext i1 %222 to i8
  store i8 %223, i8* %32, align 1
  %224 = load i64, i64* %RBP.i, align 8
  %225 = add i64 %224, -28
  %226 = add i64 %145, 43
  store i64 %226, i64* %PC.i, align 8
  %227 = inttoptr i64 %225 to i32*
  %228 = load i32, i32* %227, align 4
  %229 = sext i32 %228 to i64
  store i64 %229, i64* %RCX.i189, align 8
  %230 = shl nsw i64 %229, 3
  %231 = add i64 %230, %199
  %232 = add i64 %145, 48
  store i64 %232, i64* %PC.i, align 8
  %233 = inttoptr i64 %231 to double*
  %234 = load double, double* %233, align 8
  %235 = fdiv double %190, %234
  store double %235, double* %34, align 1
  store i64 0, i64* %35, align 1
  %236 = add i64 %224, -16
  %237 = add i64 %145, 52
  store i64 %237, i64* %PC.i, align 8
  %238 = inttoptr i64 %236 to i64*
  %239 = load i64, i64* %238, align 8
  store i64 %239, i64* %RAX.i214, align 8
  %240 = add i64 %145, 56
  store i64 %240, i64* %PC.i, align 8
  %241 = load i32, i32* %227, align 4
  %242 = sext i32 %241 to i64
  %243 = shl nsw i64 %242, 10
  store i64 %243, i64* %RCX.i189, align 8
  %244 = lshr i64 %242, 53
  %245 = and i64 %244, 1
  %246 = add i64 %243, %239
  store i64 %246, i64* %RAX.i214, align 8
  %247 = icmp ult i64 %246, %239
  %248 = icmp ult i64 %246, %243
  %249 = or i1 %247, %248
  %250 = zext i1 %249 to i8
  store i8 %250, i8* %27, align 1
  %251 = trunc i64 %246 to i32
  %252 = and i32 %251, 255
  %253 = tail call i32 @llvm.ctpop.i32(i32 %252)
  %254 = trunc i32 %253 to i8
  %255 = and i8 %254, 1
  %256 = xor i8 %255, 1
  store i8 %256, i8* %28, align 1
  %257 = xor i64 %239, %246
  %258 = lshr i64 %257, 4
  %259 = trunc i64 %258 to i8
  %260 = and i8 %259, 1
  store i8 %260, i8* %29, align 1
  %261 = icmp eq i64 %246, 0
  %262 = zext i1 %261 to i8
  store i8 %262, i8* %30, align 1
  %263 = lshr i64 %246, 63
  %264 = trunc i64 %263 to i8
  store i8 %264, i8* %31, align 1
  %265 = lshr i64 %239, 63
  %266 = xor i64 %263, %265
  %267 = xor i64 %263, %245
  %268 = add nuw nsw i64 %266, %267
  %269 = icmp eq i64 %268, 2
  %270 = zext i1 %269 to i8
  store i8 %270, i8* %32, align 1
  %271 = add i64 %224, -24
  %272 = add i64 %145, 67
  store i64 %272, i64* %PC.i, align 8
  %273 = inttoptr i64 %271 to i32*
  %274 = load i32, i32* %273, align 4
  %275 = sext i32 %274 to i64
  store i64 %275, i64* %RCX.i189, align 8
  %276 = shl nsw i64 %275, 3
  %277 = add i64 %276, %246
  %278 = add i64 %145, 72
  store i64 %278, i64* %PC.i, align 8
  %279 = inttoptr i64 %277 to double*
  store double %235, double* %279, align 8
  %280 = load i64, i64* %RBP.i, align 8
  %281 = add i64 %280, -24
  %282 = load i64, i64* %PC.i, align 8
  %283 = add i64 %282, 3
  store i64 %283, i64* %PC.i, align 8
  %284 = inttoptr i64 %281 to i32*
  %285 = load i32, i32* %284, align 4
  %286 = add i32 %285, 1
  %287 = zext i32 %286 to i64
  store i64 %287, i64* %RAX.i214, align 8
  %288 = icmp eq i32 %285, -1
  %289 = icmp eq i32 %286, 0
  %290 = or i1 %288, %289
  %291 = zext i1 %290 to i8
  store i8 %291, i8* %27, align 1
  %292 = and i32 %286, 255
  %293 = tail call i32 @llvm.ctpop.i32(i32 %292)
  %294 = trunc i32 %293 to i8
  %295 = and i8 %294, 1
  %296 = xor i8 %295, 1
  store i8 %296, i8* %28, align 1
  %297 = xor i32 %285, %286
  %298 = lshr i32 %297, 4
  %299 = trunc i32 %298 to i8
  %300 = and i8 %299, 1
  store i8 %300, i8* %29, align 1
  %301 = icmp eq i32 %286, 0
  %302 = zext i1 %301 to i8
  store i8 %302, i8* %30, align 1
  %303 = lshr i32 %286, 31
  %304 = trunc i32 %303 to i8
  store i8 %304, i8* %31, align 1
  %305 = lshr i32 %285, 31
  %306 = xor i32 %303, %305
  %307 = add nuw nsw i32 %306, %303
  %308 = icmp eq i32 %307, 2
  %309 = zext i1 %308 to i8
  store i8 %309, i8* %32, align 1
  %310 = add i64 %282, 9
  store i64 %310, i64* %PC.i, align 8
  store i32 %286, i32* %284, align 4
  %311 = load i64, i64* %PC.i, align 8
  %312 = add i64 %311, -93
  store i64 %312, i64* %3, align 8
  br label %block_.L_400aa7

block_.L_400b09:                                  ; preds = %block_.L_400aa7
  %313 = add i64 %109, -28
  %314 = add i64 %145, 3
  store i64 %314, i64* %PC.i, align 8
  %315 = inttoptr i64 %313 to i32*
  %316 = load i32, i32* %315, align 4
  %317 = add i32 %316, 1
  %318 = zext i32 %317 to i64
  store i64 %318, i64* %RAX.i214, align 8
  %319 = icmp eq i32 %316, -1
  %320 = icmp eq i32 %317, 0
  %321 = or i1 %319, %320
  %322 = zext i1 %321 to i8
  store i8 %322, i8* %27, align 1
  %323 = and i32 %317, 255
  %324 = tail call i32 @llvm.ctpop.i32(i32 %323)
  %325 = trunc i32 %324 to i8
  %326 = and i8 %325, 1
  %327 = xor i8 %326, 1
  store i8 %327, i8* %28, align 1
  %328 = xor i32 %316, %317
  %329 = lshr i32 %328, 4
  %330 = trunc i32 %329 to i8
  %331 = and i8 %330, 1
  store i8 %331, i8* %29, align 1
  %332 = icmp eq i32 %317, 0
  %333 = zext i1 %332 to i8
  store i8 %333, i8* %30, align 1
  %334 = lshr i32 %317, 31
  %335 = trunc i32 %334 to i8
  store i8 %335, i8* %31, align 1
  %336 = lshr i32 %316, 31
  %337 = xor i32 %334, %336
  %338 = add nuw nsw i32 %337, %334
  %339 = icmp eq i32 %338, 2
  %340 = zext i1 %339 to i8
  store i8 %340, i8* %32, align 1
  %341 = add i64 %109, -20
  %342 = add i64 %145, 9
  store i64 %342, i64* %PC.i, align 8
  %343 = inttoptr i64 %341 to i32*
  store i32 %317, i32* %343, align 4
  %.pre2 = load i64, i64* %PC.i, align 8
  br label %block_.L_400b12

block_.L_400b12:                                  ; preds = %block_.L_400ba5, %block_.L_400b09
  %344 = phi i64 [ %699, %block_.L_400ba5 ], [ %.pre2, %block_.L_400b09 ]
  %345 = load i64, i64* %RBP.i, align 8
  %346 = add i64 %345, -20
  %347 = add i64 %344, 3
  store i64 %347, i64* %PC.i, align 8
  %348 = inttoptr i64 %346 to i32*
  %349 = load i32, i32* %348, align 4
  %350 = zext i32 %349 to i64
  store i64 %350, i64* %RAX.i214, align 8
  %351 = add i64 %345, -4
  %352 = add i64 %344, 6
  store i64 %352, i64* %PC.i, align 8
  %353 = inttoptr i64 %351 to i32*
  %354 = load i32, i32* %353, align 4
  %355 = sub i32 %349, %354
  %356 = icmp ult i32 %349, %354
  %357 = zext i1 %356 to i8
  store i8 %357, i8* %27, align 1
  %358 = and i32 %355, 255
  %359 = tail call i32 @llvm.ctpop.i32(i32 %358)
  %360 = trunc i32 %359 to i8
  %361 = and i8 %360, 1
  %362 = xor i8 %361, 1
  store i8 %362, i8* %28, align 1
  %363 = xor i32 %354, %349
  %364 = xor i32 %363, %355
  %365 = lshr i32 %364, 4
  %366 = trunc i32 %365 to i8
  %367 = and i8 %366, 1
  store i8 %367, i8* %29, align 1
  %368 = icmp eq i32 %355, 0
  %369 = zext i1 %368 to i8
  store i8 %369, i8* %30, align 1
  %370 = lshr i32 %355, 31
  %371 = trunc i32 %370 to i8
  store i8 %371, i8* %31, align 1
  %372 = lshr i32 %349, 31
  %373 = lshr i32 %354, 31
  %374 = xor i32 %373, %372
  %375 = xor i32 %370, %372
  %376 = add nuw nsw i32 %375, %374
  %377 = icmp eq i32 %376, 2
  %378 = zext i1 %377 to i8
  store i8 %378, i8* %32, align 1
  %379 = icmp ne i8 %371, 0
  %380 = xor i1 %379, %377
  %.v5 = select i1 %380, i64 12, i64 166
  %381 = add i64 %344, %.v5
  store i64 %381, i64* %3, align 8
  %382 = add i64 %345, -28
  br i1 %380, label %block_400b1e, label %block_.L_400bb8

block_400b1e:                                     ; preds = %block_.L_400b12
  %383 = add i64 %381, 3
  store i64 %383, i64* %PC.i, align 8
  %384 = inttoptr i64 %382 to i32*
  %385 = load i32, i32* %384, align 4
  %386 = add i32 %385, 1
  %387 = zext i32 %386 to i64
  store i64 %387, i64* %RAX.i214, align 8
  %388 = icmp eq i32 %385, -1
  %389 = icmp eq i32 %386, 0
  %390 = or i1 %388, %389
  %391 = zext i1 %390 to i8
  store i8 %391, i8* %27, align 1
  %392 = and i32 %386, 255
  %393 = tail call i32 @llvm.ctpop.i32(i32 %392)
  %394 = trunc i32 %393 to i8
  %395 = and i8 %394, 1
  %396 = xor i8 %395, 1
  store i8 %396, i8* %28, align 1
  %397 = xor i32 %385, %386
  %398 = lshr i32 %397, 4
  %399 = trunc i32 %398 to i8
  %400 = and i8 %399, 1
  store i8 %400, i8* %29, align 1
  %401 = icmp eq i32 %386, 0
  %402 = zext i1 %401 to i8
  store i8 %402, i8* %30, align 1
  %403 = lshr i32 %386, 31
  %404 = trunc i32 %403 to i8
  store i8 %404, i8* %31, align 1
  %405 = lshr i32 %385, 31
  %406 = xor i32 %403, %405
  %407 = add nuw nsw i32 %406, %403
  %408 = icmp eq i32 %407, 2
  %409 = zext i1 %408 to i8
  store i8 %409, i8* %32, align 1
  %410 = add i64 %345, -24
  %411 = add i64 %381, 9
  store i64 %411, i64* %PC.i, align 8
  %412 = inttoptr i64 %410 to i32*
  store i32 %386, i32* %412, align 4
  %.pre3 = load i64, i64* %PC.i, align 8
  br label %block_.L_400b27

block_.L_400b27:                                  ; preds = %block_400b33, %block_400b1e
  %413 = phi i64 [ %668, %block_400b33 ], [ %.pre3, %block_400b1e ]
  %414 = load i64, i64* %RBP.i, align 8
  %415 = add i64 %414, -24
  %416 = add i64 %413, 3
  store i64 %416, i64* %PC.i, align 8
  %417 = inttoptr i64 %415 to i32*
  %418 = load i32, i32* %417, align 4
  %419 = zext i32 %418 to i64
  store i64 %419, i64* %RAX.i214, align 8
  %420 = add i64 %414, -4
  %421 = add i64 %413, 6
  store i64 %421, i64* %PC.i, align 8
  %422 = inttoptr i64 %420 to i32*
  %423 = load i32, i32* %422, align 4
  %424 = sub i32 %418, %423
  %425 = icmp ult i32 %418, %423
  %426 = zext i1 %425 to i8
  store i8 %426, i8* %27, align 1
  %427 = and i32 %424, 255
  %428 = tail call i32 @llvm.ctpop.i32(i32 %427)
  %429 = trunc i32 %428 to i8
  %430 = and i8 %429, 1
  %431 = xor i8 %430, 1
  store i8 %431, i8* %28, align 1
  %432 = xor i32 %423, %418
  %433 = xor i32 %432, %424
  %434 = lshr i32 %433, 4
  %435 = trunc i32 %434 to i8
  %436 = and i8 %435, 1
  store i8 %436, i8* %29, align 1
  %437 = icmp eq i32 %424, 0
  %438 = zext i1 %437 to i8
  store i8 %438, i8* %30, align 1
  %439 = lshr i32 %424, 31
  %440 = trunc i32 %439 to i8
  store i8 %440, i8* %31, align 1
  %441 = lshr i32 %418, 31
  %442 = lshr i32 %423, 31
  %443 = xor i32 %442, %441
  %444 = xor i32 %439, %441
  %445 = add nuw nsw i32 %444, %443
  %446 = icmp eq i32 %445, 2
  %447 = zext i1 %446 to i8
  store i8 %447, i8* %32, align 1
  %448 = icmp ne i8 %440, 0
  %449 = xor i1 %448, %446
  %.v6 = select i1 %449, i64 12, i64 126
  %450 = add i64 %413, %.v6
  store i64 %450, i64* %3, align 8
  br i1 %449, label %block_400b33, label %block_.L_400ba5

block_400b33:                                     ; preds = %block_.L_400b27
  %451 = add i64 %414, -16
  %452 = add i64 %450, 4
  store i64 %452, i64* %PC.i, align 8
  %453 = inttoptr i64 %451 to i64*
  %454 = load i64, i64* %453, align 8
  store i64 %454, i64* %RAX.i214, align 8
  %455 = add i64 %414, -20
  %456 = add i64 %450, 8
  store i64 %456, i64* %PC.i, align 8
  %457 = inttoptr i64 %455 to i32*
  %458 = load i32, i32* %457, align 4
  %459 = sext i32 %458 to i64
  %460 = shl nsw i64 %459, 10
  store i64 %460, i64* %RCX.i189, align 8
  %461 = lshr i64 %459, 53
  %462 = and i64 %461, 1
  %463 = add i64 %460, %454
  store i64 %463, i64* %RAX.i214, align 8
  %464 = icmp ult i64 %463, %454
  %465 = icmp ult i64 %463, %460
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
  %474 = xor i64 %454, %463
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
  %482 = lshr i64 %454, 63
  %483 = xor i64 %480, %482
  %484 = xor i64 %480, %462
  %485 = add nuw nsw i64 %483, %484
  %486 = icmp eq i64 %485, 2
  %487 = zext i1 %486 to i8
  store i8 %487, i8* %32, align 1
  %488 = add i64 %450, 19
  store i64 %488, i64* %PC.i, align 8
  %489 = load i32, i32* %417, align 4
  %490 = sext i32 %489 to i64
  store i64 %490, i64* %RCX.i189, align 8
  %491 = shl nsw i64 %490, 3
  %492 = add i64 %491, %463
  %493 = add i64 %450, 24
  store i64 %493, i64* %PC.i, align 8
  %494 = inttoptr i64 %492 to i64*
  %495 = load i64, i64* %494, align 8
  %496 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %33, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %495, i64* %496, align 1
  store double 0.000000e+00, double* %36, align 1
  %497 = add i64 %450, 28
  store i64 %497, i64* %PC.i, align 8
  %498 = load i64, i64* %453, align 8
  store i64 %498, i64* %RAX.i214, align 8
  %499 = add i64 %450, 32
  store i64 %499, i64* %PC.i, align 8
  %500 = load i32, i32* %457, align 4
  %501 = sext i32 %500 to i64
  %502 = shl nsw i64 %501, 10
  store i64 %502, i64* %RCX.i189, align 8
  %503 = lshr i64 %501, 53
  %504 = and i64 %503, 1
  %505 = add i64 %502, %498
  store i64 %505, i64* %RAX.i214, align 8
  %506 = icmp ult i64 %505, %498
  %507 = icmp ult i64 %505, %502
  %508 = or i1 %506, %507
  %509 = zext i1 %508 to i8
  store i8 %509, i8* %27, align 1
  %510 = trunc i64 %505 to i32
  %511 = and i32 %510, 255
  %512 = tail call i32 @llvm.ctpop.i32(i32 %511)
  %513 = trunc i32 %512 to i8
  %514 = and i8 %513, 1
  %515 = xor i8 %514, 1
  store i8 %515, i8* %28, align 1
  %516 = xor i64 %498, %505
  %517 = lshr i64 %516, 4
  %518 = trunc i64 %517 to i8
  %519 = and i8 %518, 1
  store i8 %519, i8* %29, align 1
  %520 = icmp eq i64 %505, 0
  %521 = zext i1 %520 to i8
  store i8 %521, i8* %30, align 1
  %522 = lshr i64 %505, 63
  %523 = trunc i64 %522 to i8
  store i8 %523, i8* %31, align 1
  %524 = lshr i64 %498, 63
  %525 = xor i64 %522, %524
  %526 = xor i64 %522, %504
  %527 = add nuw nsw i64 %525, %526
  %528 = icmp eq i64 %527, 2
  %529 = zext i1 %528 to i8
  store i8 %529, i8* %32, align 1
  %530 = load i64, i64* %RBP.i, align 8
  %531 = add i64 %530, -28
  %532 = add i64 %450, 43
  store i64 %532, i64* %PC.i, align 8
  %533 = inttoptr i64 %531 to i32*
  %534 = load i32, i32* %533, align 4
  %535 = sext i32 %534 to i64
  store i64 %535, i64* %RCX.i189, align 8
  %536 = shl nsw i64 %535, 3
  %537 = add i64 %536, %505
  %538 = add i64 %450, 48
  store i64 %538, i64* %PC.i, align 8
  %539 = inttoptr i64 %537 to double*
  %540 = load double, double* %539, align 8
  store double %540, double* %38, align 1
  store double 0.000000e+00, double* %40, align 1
  %541 = add i64 %530, -16
  %542 = add i64 %450, 52
  store i64 %542, i64* %PC.i, align 8
  %543 = inttoptr i64 %541 to i64*
  %544 = load i64, i64* %543, align 8
  store i64 %544, i64* %RAX.i214, align 8
  %545 = add i64 %450, 56
  store i64 %545, i64* %PC.i, align 8
  %546 = load i32, i32* %533, align 4
  %547 = sext i32 %546 to i64
  %548 = shl nsw i64 %547, 10
  store i64 %548, i64* %RCX.i189, align 8
  %549 = lshr i64 %547, 53
  %550 = and i64 %549, 1
  %551 = add i64 %548, %544
  store i64 %551, i64* %RAX.i214, align 8
  %552 = icmp ult i64 %551, %544
  %553 = icmp ult i64 %551, %548
  %554 = or i1 %552, %553
  %555 = zext i1 %554 to i8
  store i8 %555, i8* %27, align 1
  %556 = trunc i64 %551 to i32
  %557 = and i32 %556, 255
  %558 = tail call i32 @llvm.ctpop.i32(i32 %557)
  %559 = trunc i32 %558 to i8
  %560 = and i8 %559, 1
  %561 = xor i8 %560, 1
  store i8 %561, i8* %28, align 1
  %562 = xor i64 %544, %551
  %563 = lshr i64 %562, 4
  %564 = trunc i64 %563 to i8
  %565 = and i8 %564, 1
  store i8 %565, i8* %29, align 1
  %566 = icmp eq i64 %551, 0
  %567 = zext i1 %566 to i8
  store i8 %567, i8* %30, align 1
  %568 = lshr i64 %551, 63
  %569 = trunc i64 %568 to i8
  store i8 %569, i8* %31, align 1
  %570 = lshr i64 %544, 63
  %571 = xor i64 %568, %570
  %572 = xor i64 %568, %550
  %573 = add nuw nsw i64 %571, %572
  %574 = icmp eq i64 %573, 2
  %575 = zext i1 %574 to i8
  store i8 %575, i8* %32, align 1
  %576 = add i64 %530, -24
  %577 = add i64 %450, 67
  store i64 %577, i64* %PC.i, align 8
  %578 = inttoptr i64 %576 to i32*
  %579 = load i32, i32* %578, align 4
  %580 = sext i32 %579 to i64
  store i64 %580, i64* %RCX.i189, align 8
  %581 = shl nsw i64 %580, 3
  %582 = add i64 %581, %551
  %583 = add i64 %450, 72
  store i64 %583, i64* %PC.i, align 8
  %584 = inttoptr i64 %582 to double*
  %585 = load double, double* %584, align 8
  %586 = fmul double %540, %585
  store double %586, double* %38, align 1
  store i64 0, i64* %39, align 1
  %587 = load double, double* %34, align 1
  %588 = fadd double %587, %586
  store double %588, double* %34, align 1
  %589 = load i64, i64* %RBP.i, align 8
  %590 = add i64 %589, -16
  %591 = add i64 %450, 80
  store i64 %591, i64* %PC.i, align 8
  %592 = inttoptr i64 %590 to i64*
  %593 = load i64, i64* %592, align 8
  store i64 %593, i64* %RAX.i214, align 8
  %594 = add i64 %589, -20
  %595 = add i64 %450, 84
  store i64 %595, i64* %PC.i, align 8
  %596 = inttoptr i64 %594 to i32*
  %597 = load i32, i32* %596, align 4
  %598 = sext i32 %597 to i64
  %599 = shl nsw i64 %598, 10
  store i64 %599, i64* %RCX.i189, align 8
  %600 = lshr i64 %598, 53
  %601 = and i64 %600, 1
  %602 = add i64 %599, %593
  store i64 %602, i64* %RAX.i214, align 8
  %603 = icmp ult i64 %602, %593
  %604 = icmp ult i64 %602, %599
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
  %613 = xor i64 %593, %602
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
  %621 = lshr i64 %593, 63
  %622 = xor i64 %619, %621
  %623 = xor i64 %619, %601
  %624 = add nuw nsw i64 %622, %623
  %625 = icmp eq i64 %624, 2
  %626 = zext i1 %625 to i8
  store i8 %626, i8* %32, align 1
  %627 = add i64 %589, -24
  %628 = add i64 %450, 95
  store i64 %628, i64* %PC.i, align 8
  %629 = inttoptr i64 %627 to i32*
  %630 = load i32, i32* %629, align 4
  %631 = sext i32 %630 to i64
  store i64 %631, i64* %RCX.i189, align 8
  %632 = shl nsw i64 %631, 3
  %633 = add i64 %632, %602
  %634 = add i64 %450, 100
  store i64 %634, i64* %PC.i, align 8
  %635 = inttoptr i64 %633 to double*
  store double %588, double* %635, align 8
  %636 = load i64, i64* %RBP.i, align 8
  %637 = add i64 %636, -24
  %638 = load i64, i64* %PC.i, align 8
  %639 = add i64 %638, 3
  store i64 %639, i64* %PC.i, align 8
  %640 = inttoptr i64 %637 to i32*
  %641 = load i32, i32* %640, align 4
  %642 = add i32 %641, 1
  %643 = zext i32 %642 to i64
  store i64 %643, i64* %RAX.i214, align 8
  %644 = icmp eq i32 %641, -1
  %645 = icmp eq i32 %642, 0
  %646 = or i1 %644, %645
  %647 = zext i1 %646 to i8
  store i8 %647, i8* %27, align 1
  %648 = and i32 %642, 255
  %649 = tail call i32 @llvm.ctpop.i32(i32 %648)
  %650 = trunc i32 %649 to i8
  %651 = and i8 %650, 1
  %652 = xor i8 %651, 1
  store i8 %652, i8* %28, align 1
  %653 = xor i32 %641, %642
  %654 = lshr i32 %653, 4
  %655 = trunc i32 %654 to i8
  %656 = and i8 %655, 1
  store i8 %656, i8* %29, align 1
  %657 = icmp eq i32 %642, 0
  %658 = zext i1 %657 to i8
  store i8 %658, i8* %30, align 1
  %659 = lshr i32 %642, 31
  %660 = trunc i32 %659 to i8
  store i8 %660, i8* %31, align 1
  %661 = lshr i32 %641, 31
  %662 = xor i32 %659, %661
  %663 = add nuw nsw i32 %662, %659
  %664 = icmp eq i32 %663, 2
  %665 = zext i1 %664 to i8
  store i8 %665, i8* %32, align 1
  %666 = add i64 %638, 9
  store i64 %666, i64* %PC.i, align 8
  store i32 %642, i32* %640, align 4
  %667 = load i64, i64* %PC.i, align 8
  %668 = add i64 %667, -121
  store i64 %668, i64* %3, align 8
  br label %block_.L_400b27

block_.L_400ba5:                                  ; preds = %block_.L_400b27
  %669 = add i64 %414, -20
  %670 = add i64 %450, 8
  store i64 %670, i64* %PC.i, align 8
  %671 = inttoptr i64 %669 to i32*
  %672 = load i32, i32* %671, align 4
  %673 = add i32 %672, 1
  %674 = zext i32 %673 to i64
  store i64 %674, i64* %RAX.i214, align 8
  %675 = icmp eq i32 %672, -1
  %676 = icmp eq i32 %673, 0
  %677 = or i1 %675, %676
  %678 = zext i1 %677 to i8
  store i8 %678, i8* %27, align 1
  %679 = and i32 %673, 255
  %680 = tail call i32 @llvm.ctpop.i32(i32 %679)
  %681 = trunc i32 %680 to i8
  %682 = and i8 %681, 1
  %683 = xor i8 %682, 1
  store i8 %683, i8* %28, align 1
  %684 = xor i32 %672, %673
  %685 = lshr i32 %684, 4
  %686 = trunc i32 %685 to i8
  %687 = and i8 %686, 1
  store i8 %687, i8* %29, align 1
  %688 = icmp eq i32 %673, 0
  %689 = zext i1 %688 to i8
  store i8 %689, i8* %30, align 1
  %690 = lshr i32 %673, 31
  %691 = trunc i32 %690 to i8
  store i8 %691, i8* %31, align 1
  %692 = lshr i32 %672, 31
  %693 = xor i32 %690, %692
  %694 = add nuw nsw i32 %693, %690
  %695 = icmp eq i32 %694, 2
  %696 = zext i1 %695 to i8
  store i8 %696, i8* %32, align 1
  %697 = add i64 %450, 14
  store i64 %697, i64* %PC.i, align 8
  store i32 %673, i32* %671, align 4
  %698 = load i64, i64* %PC.i, align 8
  %699 = add i64 %698, -161
  store i64 %699, i64* %3, align 8
  br label %block_.L_400b12

block_.L_400bb8:                                  ; preds = %block_.L_400b12
  %700 = add i64 %381, 8
  store i64 %700, i64* %PC.i, align 8
  %701 = inttoptr i64 %382 to i32*
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
  %714 = xor i32 %702, %703
  %715 = lshr i32 %714, 4
  %716 = trunc i32 %715 to i8
  %717 = and i8 %716, 1
  store i8 %717, i8* %29, align 1
  %718 = icmp eq i32 %703, 0
  %719 = zext i1 %718 to i8
  store i8 %719, i8* %30, align 1
  %720 = lshr i32 %703, 31
  %721 = trunc i32 %720 to i8
  store i8 %721, i8* %31, align 1
  %722 = lshr i32 %702, 31
  %723 = xor i32 %720, %722
  %724 = add nuw nsw i32 %723, %720
  %725 = icmp eq i32 %724, 2
  %726 = zext i1 %725 to i8
  store i8 %726, i8* %32, align 1
  %727 = add i64 %381, 14
  store i64 %727, i64* %PC.i, align 8
  store i32 %703, i32* %701, align 4
  %728 = load i64, i64* %PC.i, align 8
  %729 = add i64 %728, -308
  store i64 %729, i64* %3, align 8
  br label %block_.L_400a92

block_.L_400bcb:                                  ; preds = %block_.L_400a92
  %730 = add i64 %78, 1
  store i64 %730, i64* %PC.i, align 8
  %731 = load i64, i64* %6, align 8
  %732 = add i64 %731, 8
  %733 = inttoptr i64 %731 to i64*
  %734 = load i64, i64* %733, align 8
  store i64 %734, i64* %RBP.i, align 8
  store i64 %732, i64* %6, align 8
  %735 = add i64 %78, 2
  store i64 %735, i64* %PC.i, align 8
  %736 = inttoptr i64 %732 to i64*
  %737 = load i64, i64* %736, align 8
  store i64 %737, i64* %3, align 8
  %738 = add i64 %731, 16
  store i64 %738, i64* %6, align 8
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
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %14 = add i64 %3, %.v
  store i64 %14, i64* %13, align 8
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
  %20 = trunc i64 %3 to i32
  %21 = xor i32 %20, %7
  %22 = lshr i32 %21, 4
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1
  %26 = icmp eq i32 %7, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %7, 31
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %6, 31
  %33 = xor i32 %29, %32
  %34 = add nuw nsw i32 %33, %29
  %35 = icmp eq i32 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
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
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %14 = add i64 %3, %.v
  store i64 %14, i64* %13, align 8
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
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
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
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %14 = add i64 %3, %.v
  store i64 %14, i64* %13, align 8
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
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %14 = add i64 %3, %.v
  store i64 %14, i64* %13, align 8
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
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400baa(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400b12(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400bbd(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
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
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
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
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to i64*
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %5, align 8
  %10 = add i64 %7, 8
  store i64 %10, i64* %6, align 8
  ret %struct.Memory* %2
}

attributes #0 = { nounwind readnone }
attributes #1 = { alwaysinline }
