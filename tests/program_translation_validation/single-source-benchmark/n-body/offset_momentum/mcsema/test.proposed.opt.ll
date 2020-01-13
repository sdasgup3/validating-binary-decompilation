; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x1d4__rip__4196924__type = type <{ [16 x i8] }>
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
@G_0x1d4__rip__4196924_ = local_unnamed_addr global %G_0x1d4__rip__4196924__type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: alwaysinline
define %struct.Memory* @offset_momentum(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %12 = bitcast [32 x %union.VectorReg]* %11 to i8*
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %14 = bitcast [32 x %union.VectorReg]* %11 to i32*
  store i32 0, i32* %14, align 1
  %15 = getelementptr inbounds i8, i8* %12, i64 4
  %16 = bitcast i8* %15 to i32*
  store i32 0, i32* %16, align 1
  %17 = bitcast i64* %13 to i32*
  store i32 0, i32* %17, align 1
  %18 = getelementptr inbounds i8, i8* %12, i64 12
  %19 = bitcast i8* %18 to i32*
  store i32 0, i32* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i = bitcast %union.anon* %20 to i32*
  %21 = add i64 %7, -12
  %22 = load i32, i32* %EDI.i, align 4
  %23 = add i64 %10, 9
  store i64 %23, i64* %3, align 8
  %24 = inttoptr i64 %21 to i32*
  store i32 %22, i32* %24, align 4
  %RSI.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %25 = load i64, i64* %RBP.i, align 8
  %26 = add i64 %25, -16
  %27 = load i64, i64* %RSI.i, align 8
  %28 = load i64, i64* %3, align 8
  %29 = add i64 %28, 4
  store i64 %29, i64* %3, align 8
  %30 = inttoptr i64 %26 to i64*
  store i64 %27, i64* %30, align 8
  %31 = load i64, i64* %RBP.i, align 8
  %32 = add i64 %31, -24
  %33 = load i64, i64* %3, align 8
  %34 = add i64 %33, 5
  store i64 %34, i64* %3, align 8
  %35 = bitcast [32 x %union.VectorReg]* %11 to double*
  %36 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %11, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %37 = load i64, i64* %36, align 1
  %38 = inttoptr i64 %32 to i64*
  store i64 %37, i64* %38, align 8
  %39 = load i64, i64* %RBP.i, align 8
  %40 = add i64 %39, -32
  %41 = load i64, i64* %3, align 8
  %42 = add i64 %41, 5
  store i64 %42, i64* %3, align 8
  %43 = load i64, i64* %36, align 1
  %44 = inttoptr i64 %40 to i64*
  store i64 %43, i64* %44, align 8
  %45 = load i64, i64* %RBP.i, align 8
  %46 = add i64 %45, -40
  %47 = load i64, i64* %3, align 8
  %48 = add i64 %47, 5
  store i64 %48, i64* %3, align 8
  %49 = load i64, i64* %36, align 1
  %50 = inttoptr i64 %46 to i64*
  store i64 %49, i64* %50, align 8
  %51 = load i64, i64* %RBP.i, align 8
  %52 = add i64 %51, -44
  %53 = load i64, i64* %3, align 8
  %54 = add i64 %53, 7
  store i64 %54, i64* %3, align 8
  %55 = inttoptr i64 %52 to i32*
  store i32 0, i32* %55, align 4
  %RAX.i180 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %57 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %59 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %60 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %61 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %RCX.i170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %62 = bitcast i64* %13 to double*
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_400984

block_.L_400984:                                  ; preds = %block_400990, %entry
  %63 = phi i64 [ %392, %block_400990 ], [ %.pre, %entry ]
  %64 = load i64, i64* %RBP.i, align 8
  %65 = add i64 %64, -44
  %66 = add i64 %63, 3
  store i64 %66, i64* %3, align 8
  %67 = inttoptr i64 %65 to i32*
  %68 = load i32, i32* %67, align 4
  %69 = zext i32 %68 to i64
  store i64 %69, i64* %RAX.i180, align 8
  %70 = add i64 %64, -4
  %71 = add i64 %63, 6
  store i64 %71, i64* %3, align 8
  %72 = inttoptr i64 %70 to i32*
  %73 = load i32, i32* %72, align 4
  %74 = sub i32 %68, %73
  %75 = icmp ult i32 %68, %73
  %76 = zext i1 %75 to i8
  store i8 %76, i8* %56, align 1
  %77 = and i32 %74, 255
  %78 = tail call i32 @llvm.ctpop.i32(i32 %77)
  %79 = trunc i32 %78 to i8
  %80 = and i8 %79, 1
  %81 = xor i8 %80, 1
  store i8 %81, i8* %57, align 1
  %82 = xor i32 %73, %68
  %83 = xor i32 %82, %74
  %84 = lshr i32 %83, 4
  %85 = trunc i32 %84 to i8
  %86 = and i8 %85, 1
  store i8 %86, i8* %58, align 1
  %87 = icmp eq i32 %74, 0
  %88 = zext i1 %87 to i8
  store i8 %88, i8* %59, align 1
  %89 = lshr i32 %74, 31
  %90 = trunc i32 %89 to i8
  store i8 %90, i8* %60, align 1
  %91 = lshr i32 %68, 31
  %92 = lshr i32 %73, 31
  %93 = xor i32 %92, %91
  %94 = xor i32 %89, %91
  %95 = add nuw nsw i32 %94, %93
  %96 = icmp eq i32 %95, 2
  %97 = zext i1 %96 to i8
  store i8 %97, i8* %61, align 1
  %98 = icmp ne i8 %90, 0
  %99 = xor i1 %98, %96
  %.v = select i1 %99, i64 12, i64 176
  %100 = add i64 %63, %.v
  store i64 %100, i64* %3, align 8
  br i1 %99, label %block_400990, label %block_.L_400a34

block_400990:                                     ; preds = %block_.L_400984
  %101 = add i64 %64, -16
  %102 = add i64 %100, 4
  store i64 %102, i64* %3, align 8
  %103 = inttoptr i64 %101 to i64*
  %104 = load i64, i64* %103, align 8
  store i64 %104, i64* %RAX.i180, align 8
  %105 = add i64 %100, 8
  store i64 %105, i64* %3, align 8
  %106 = load i32, i32* %67, align 4
  %107 = sext i32 %106 to i64
  %108 = mul nsw i64 %107, 56
  store i64 %108, i64* %RCX.i170, align 8
  %109 = lshr i64 %108, 63
  %110 = add i64 %108, %104
  store i64 %110, i64* %RAX.i180, align 8
  %111 = icmp ult i64 %110, %104
  %112 = icmp ult i64 %110, %108
  %113 = or i1 %111, %112
  %114 = zext i1 %113 to i8
  store i8 %114, i8* %56, align 1
  %115 = trunc i64 %110 to i32
  %116 = and i32 %115, 255
  %117 = tail call i32 @llvm.ctpop.i32(i32 %116)
  %118 = trunc i32 %117 to i8
  %119 = and i8 %118, 1
  %120 = xor i8 %119, 1
  store i8 %120, i8* %57, align 1
  %121 = xor i64 %108, %104
  %122 = xor i64 %121, %110
  %123 = lshr i64 %122, 4
  %124 = trunc i64 %123 to i8
  %125 = and i8 %124, 1
  store i8 %125, i8* %58, align 1
  %126 = icmp eq i64 %110, 0
  %127 = zext i1 %126 to i8
  store i8 %127, i8* %59, align 1
  %128 = lshr i64 %110, 63
  %129 = trunc i64 %128 to i8
  store i8 %129, i8* %60, align 1
  %130 = lshr i64 %104, 63
  %131 = xor i64 %128, %130
  %132 = xor i64 %128, %109
  %133 = add nuw nsw i64 %131, %132
  %134 = icmp eq i64 %133, 2
  %135 = zext i1 %134 to i8
  store i8 %135, i8* %61, align 1
  %136 = add i64 %110, 24
  %137 = add i64 %100, 20
  store i64 %137, i64* %3, align 8
  %138 = inttoptr i64 %136 to double*
  %139 = load double, double* %138, align 8
  store double %139, double* %35, align 1
  store double 0.000000e+00, double* %62, align 1
  %140 = add i64 %100, 24
  store i64 %140, i64* %3, align 8
  %141 = load i64, i64* %103, align 8
  store i64 %141, i64* %RAX.i180, align 8
  %142 = add i64 %100, 28
  store i64 %142, i64* %3, align 8
  %143 = load i32, i32* %67, align 4
  %144 = sext i32 %143 to i64
  %145 = mul nsw i64 %144, 56
  store i64 %145, i64* %RCX.i170, align 8
  %146 = lshr i64 %145, 63
  %147 = add i64 %145, %141
  store i64 %147, i64* %RAX.i180, align 8
  %148 = icmp ult i64 %147, %141
  %149 = icmp ult i64 %147, %145
  %150 = or i1 %148, %149
  %151 = zext i1 %150 to i8
  store i8 %151, i8* %56, align 1
  %152 = trunc i64 %147 to i32
  %153 = and i32 %152, 255
  %154 = tail call i32 @llvm.ctpop.i32(i32 %153)
  %155 = trunc i32 %154 to i8
  %156 = and i8 %155, 1
  %157 = xor i8 %156, 1
  store i8 %157, i8* %57, align 1
  %158 = xor i64 %145, %141
  %159 = xor i64 %158, %147
  %160 = lshr i64 %159, 4
  %161 = trunc i64 %160 to i8
  %162 = and i8 %161, 1
  store i8 %162, i8* %58, align 1
  %163 = icmp eq i64 %147, 0
  %164 = zext i1 %163 to i8
  store i8 %164, i8* %59, align 1
  %165 = lshr i64 %147, 63
  %166 = trunc i64 %165 to i8
  store i8 %166, i8* %60, align 1
  %167 = lshr i64 %141, 63
  %168 = xor i64 %165, %167
  %169 = xor i64 %165, %146
  %170 = add nuw nsw i64 %168, %169
  %171 = icmp eq i64 %170, 2
  %172 = zext i1 %171 to i8
  store i8 %172, i8* %61, align 1
  %173 = add i64 %147, 48
  %174 = add i64 %100, 40
  store i64 %174, i64* %3, align 8
  %175 = inttoptr i64 %173 to double*
  %176 = load double, double* %175, align 8
  %177 = fmul double %139, %176
  store double %177, double* %35, align 1
  store i64 0, i64* %13, align 1
  %178 = load i64, i64* %RBP.i, align 8
  %179 = add i64 %178, -24
  %180 = add i64 %100, 45
  store i64 %180, i64* %3, align 8
  %181 = inttoptr i64 %179 to double*
  %182 = load double, double* %181, align 8
  %183 = fadd double %177, %182
  store double %183, double* %35, align 1
  store i64 0, i64* %13, align 1
  %184 = add i64 %100, 50
  store i64 %184, i64* %3, align 8
  store double %183, double* %181, align 8
  %185 = load i64, i64* %RBP.i, align 8
  %186 = add i64 %185, -16
  %187 = load i64, i64* %3, align 8
  %188 = add i64 %187, 4
  store i64 %188, i64* %3, align 8
  %189 = inttoptr i64 %186 to i64*
  %190 = load i64, i64* %189, align 8
  store i64 %190, i64* %RAX.i180, align 8
  %191 = add i64 %185, -44
  %192 = add i64 %187, 8
  store i64 %192, i64* %3, align 8
  %193 = inttoptr i64 %191 to i32*
  %194 = load i32, i32* %193, align 4
  %195 = sext i32 %194 to i64
  %196 = mul nsw i64 %195, 56
  store i64 %196, i64* %RCX.i170, align 8
  %197 = lshr i64 %196, 63
  %198 = add i64 %196, %190
  store i64 %198, i64* %RAX.i180, align 8
  %199 = icmp ult i64 %198, %190
  %200 = icmp ult i64 %198, %196
  %201 = or i1 %199, %200
  %202 = zext i1 %201 to i8
  store i8 %202, i8* %56, align 1
  %203 = trunc i64 %198 to i32
  %204 = and i32 %203, 255
  %205 = tail call i32 @llvm.ctpop.i32(i32 %204)
  %206 = trunc i32 %205 to i8
  %207 = and i8 %206, 1
  %208 = xor i8 %207, 1
  store i8 %208, i8* %57, align 1
  %209 = xor i64 %196, %190
  %210 = xor i64 %209, %198
  %211 = lshr i64 %210, 4
  %212 = trunc i64 %211 to i8
  %213 = and i8 %212, 1
  store i8 %213, i8* %58, align 1
  %214 = icmp eq i64 %198, 0
  %215 = zext i1 %214 to i8
  store i8 %215, i8* %59, align 1
  %216 = lshr i64 %198, 63
  %217 = trunc i64 %216 to i8
  store i8 %217, i8* %60, align 1
  %218 = lshr i64 %190, 63
  %219 = xor i64 %216, %218
  %220 = xor i64 %216, %197
  %221 = add nuw nsw i64 %219, %220
  %222 = icmp eq i64 %221, 2
  %223 = zext i1 %222 to i8
  store i8 %223, i8* %61, align 1
  %224 = add i64 %198, 32
  %225 = add i64 %187, 20
  store i64 %225, i64* %3, align 8
  %226 = inttoptr i64 %224 to double*
  %227 = load double, double* %226, align 8
  store double %227, double* %35, align 1
  store double 0.000000e+00, double* %62, align 1
  %228 = add i64 %187, 24
  store i64 %228, i64* %3, align 8
  %229 = load i64, i64* %189, align 8
  store i64 %229, i64* %RAX.i180, align 8
  %230 = add i64 %187, 28
  store i64 %230, i64* %3, align 8
  %231 = load i32, i32* %193, align 4
  %232 = sext i32 %231 to i64
  %233 = mul nsw i64 %232, 56
  store i64 %233, i64* %RCX.i170, align 8
  %234 = lshr i64 %233, 63
  %235 = add i64 %233, %229
  store i64 %235, i64* %RAX.i180, align 8
  %236 = icmp ult i64 %235, %229
  %237 = icmp ult i64 %235, %233
  %238 = or i1 %236, %237
  %239 = zext i1 %238 to i8
  store i8 %239, i8* %56, align 1
  %240 = trunc i64 %235 to i32
  %241 = and i32 %240, 255
  %242 = tail call i32 @llvm.ctpop.i32(i32 %241)
  %243 = trunc i32 %242 to i8
  %244 = and i8 %243, 1
  %245 = xor i8 %244, 1
  store i8 %245, i8* %57, align 1
  %246 = xor i64 %233, %229
  %247 = xor i64 %246, %235
  %248 = lshr i64 %247, 4
  %249 = trunc i64 %248 to i8
  %250 = and i8 %249, 1
  store i8 %250, i8* %58, align 1
  %251 = icmp eq i64 %235, 0
  %252 = zext i1 %251 to i8
  store i8 %252, i8* %59, align 1
  %253 = lshr i64 %235, 63
  %254 = trunc i64 %253 to i8
  store i8 %254, i8* %60, align 1
  %255 = lshr i64 %229, 63
  %256 = xor i64 %253, %255
  %257 = xor i64 %253, %234
  %258 = add nuw nsw i64 %256, %257
  %259 = icmp eq i64 %258, 2
  %260 = zext i1 %259 to i8
  store i8 %260, i8* %61, align 1
  %261 = add i64 %235, 48
  %262 = add i64 %187, 40
  store i64 %262, i64* %3, align 8
  %263 = inttoptr i64 %261 to double*
  %264 = load double, double* %263, align 8
  %265 = fmul double %227, %264
  store double %265, double* %35, align 1
  store i64 0, i64* %13, align 1
  %266 = load i64, i64* %RBP.i, align 8
  %267 = add i64 %266, -32
  %268 = add i64 %187, 45
  store i64 %268, i64* %3, align 8
  %269 = inttoptr i64 %267 to double*
  %270 = load double, double* %269, align 8
  %271 = fadd double %265, %270
  store double %271, double* %35, align 1
  store i64 0, i64* %13, align 1
  %272 = add i64 %187, 50
  store i64 %272, i64* %3, align 8
  store double %271, double* %269, align 8
  %273 = load i64, i64* %RBP.i, align 8
  %274 = add i64 %273, -16
  %275 = load i64, i64* %3, align 8
  %276 = add i64 %275, 4
  store i64 %276, i64* %3, align 8
  %277 = inttoptr i64 %274 to i64*
  %278 = load i64, i64* %277, align 8
  store i64 %278, i64* %RAX.i180, align 8
  %279 = add i64 %273, -44
  %280 = add i64 %275, 8
  store i64 %280, i64* %3, align 8
  %281 = inttoptr i64 %279 to i32*
  %282 = load i32, i32* %281, align 4
  %283 = sext i32 %282 to i64
  %284 = mul nsw i64 %283, 56
  store i64 %284, i64* %RCX.i170, align 8
  %285 = lshr i64 %284, 63
  %286 = add i64 %284, %278
  store i64 %286, i64* %RAX.i180, align 8
  %287 = icmp ult i64 %286, %278
  %288 = icmp ult i64 %286, %284
  %289 = or i1 %287, %288
  %290 = zext i1 %289 to i8
  store i8 %290, i8* %56, align 1
  %291 = trunc i64 %286 to i32
  %292 = and i32 %291, 255
  %293 = tail call i32 @llvm.ctpop.i32(i32 %292)
  %294 = trunc i32 %293 to i8
  %295 = and i8 %294, 1
  %296 = xor i8 %295, 1
  store i8 %296, i8* %57, align 1
  %297 = xor i64 %284, %278
  %298 = xor i64 %297, %286
  %299 = lshr i64 %298, 4
  %300 = trunc i64 %299 to i8
  %301 = and i8 %300, 1
  store i8 %301, i8* %58, align 1
  %302 = icmp eq i64 %286, 0
  %303 = zext i1 %302 to i8
  store i8 %303, i8* %59, align 1
  %304 = lshr i64 %286, 63
  %305 = trunc i64 %304 to i8
  store i8 %305, i8* %60, align 1
  %306 = lshr i64 %278, 63
  %307 = xor i64 %304, %306
  %308 = xor i64 %304, %285
  %309 = add nuw nsw i64 %307, %308
  %310 = icmp eq i64 %309, 2
  %311 = zext i1 %310 to i8
  store i8 %311, i8* %61, align 1
  %312 = add i64 %286, 40
  %313 = add i64 %275, 20
  store i64 %313, i64* %3, align 8
  %314 = inttoptr i64 %312 to double*
  %315 = load double, double* %314, align 8
  store double %315, double* %35, align 1
  store double 0.000000e+00, double* %62, align 1
  %316 = add i64 %275, 24
  store i64 %316, i64* %3, align 8
  %317 = load i64, i64* %277, align 8
  store i64 %317, i64* %RAX.i180, align 8
  %318 = add i64 %275, 28
  store i64 %318, i64* %3, align 8
  %319 = load i32, i32* %281, align 4
  %320 = sext i32 %319 to i64
  %321 = mul nsw i64 %320, 56
  store i64 %321, i64* %RCX.i170, align 8
  %322 = lshr i64 %321, 63
  %323 = add i64 %321, %317
  store i64 %323, i64* %RAX.i180, align 8
  %324 = icmp ult i64 %323, %317
  %325 = icmp ult i64 %323, %321
  %326 = or i1 %324, %325
  %327 = zext i1 %326 to i8
  store i8 %327, i8* %56, align 1
  %328 = trunc i64 %323 to i32
  %329 = and i32 %328, 255
  %330 = tail call i32 @llvm.ctpop.i32(i32 %329)
  %331 = trunc i32 %330 to i8
  %332 = and i8 %331, 1
  %333 = xor i8 %332, 1
  store i8 %333, i8* %57, align 1
  %334 = xor i64 %321, %317
  %335 = xor i64 %334, %323
  %336 = lshr i64 %335, 4
  %337 = trunc i64 %336 to i8
  %338 = and i8 %337, 1
  store i8 %338, i8* %58, align 1
  %339 = icmp eq i64 %323, 0
  %340 = zext i1 %339 to i8
  store i8 %340, i8* %59, align 1
  %341 = lshr i64 %323, 63
  %342 = trunc i64 %341 to i8
  store i8 %342, i8* %60, align 1
  %343 = lshr i64 %317, 63
  %344 = xor i64 %341, %343
  %345 = xor i64 %341, %322
  %346 = add nuw nsw i64 %344, %345
  %347 = icmp eq i64 %346, 2
  %348 = zext i1 %347 to i8
  store i8 %348, i8* %61, align 1
  %349 = add i64 %323, 48
  %350 = add i64 %275, 40
  store i64 %350, i64* %3, align 8
  %351 = inttoptr i64 %349 to double*
  %352 = load double, double* %351, align 8
  %353 = fmul double %315, %352
  store double %353, double* %35, align 1
  store i64 0, i64* %13, align 1
  %354 = load i64, i64* %RBP.i, align 8
  %355 = add i64 %354, -40
  %356 = add i64 %275, 45
  store i64 %356, i64* %3, align 8
  %357 = inttoptr i64 %355 to double*
  %358 = load double, double* %357, align 8
  %359 = fadd double %353, %358
  store double %359, double* %35, align 1
  store i64 0, i64* %13, align 1
  %360 = add i64 %275, 50
  store i64 %360, i64* %3, align 8
  store double %359, double* %357, align 8
  %361 = load i64, i64* %RBP.i, align 8
  %362 = add i64 %361, -44
  %363 = load i64, i64* %3, align 8
  %364 = add i64 %363, 3
  store i64 %364, i64* %3, align 8
  %365 = inttoptr i64 %362 to i32*
  %366 = load i32, i32* %365, align 4
  %367 = add i32 %366, 1
  %368 = zext i32 %367 to i64
  store i64 %368, i64* %RAX.i180, align 8
  %369 = icmp eq i32 %366, -1
  %370 = icmp eq i32 %367, 0
  %371 = or i1 %369, %370
  %372 = zext i1 %371 to i8
  store i8 %372, i8* %56, align 1
  %373 = and i32 %367, 255
  %374 = tail call i32 @llvm.ctpop.i32(i32 %373)
  %375 = trunc i32 %374 to i8
  %376 = and i8 %375, 1
  %377 = xor i8 %376, 1
  store i8 %377, i8* %57, align 1
  %378 = xor i32 %366, %367
  %379 = lshr i32 %378, 4
  %380 = trunc i32 %379 to i8
  %381 = and i8 %380, 1
  store i8 %381, i8* %58, align 1
  %382 = zext i1 %370 to i8
  store i8 %382, i8* %59, align 1
  %383 = lshr i32 %367, 31
  %384 = trunc i32 %383 to i8
  store i8 %384, i8* %60, align 1
  %385 = lshr i32 %366, 31
  %386 = xor i32 %383, %385
  %387 = add nuw nsw i32 %386, %383
  %388 = icmp eq i32 %387, 2
  %389 = zext i1 %388 to i8
  store i8 %389, i8* %61, align 1
  %390 = add i64 %363, 9
  store i64 %390, i64* %3, align 8
  store i32 %367, i32* %365, align 4
  %391 = load i64, i64* %3, align 8
  %392 = add i64 %391, -171
  store i64 %392, i64* %3, align 8
  br label %block_.L_400984

block_.L_400a34:                                  ; preds = %block_.L_400984
  %393 = load double, double* bitcast (%G_0x1d4__rip__4196924__type* @G_0x1d4__rip__4196924_ to double*), align 8
  store double %393, double* %35, align 1
  store double 0.000000e+00, double* %62, align 1
  store i64 -9223372036854775808, i64* %RAX.i180, align 8
  %394 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %395 = add i64 %64, -24
  %396 = add i64 %100, 23
  store i64 %396, i64* %3, align 8
  %397 = inttoptr i64 %395 to i64*
  %398 = load i64, i64* %397, align 8
  %399 = bitcast %union.VectorReg* %394 to double*
  %400 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %401 = xor i64 %398, -9223372036854775808
  store i64 %401, i64* %RCX.i170, align 8
  store i8 0, i8* %56, align 1
  %402 = trunc i64 %398 to i32
  %403 = and i32 %402, 255
  %404 = tail call i32 @llvm.ctpop.i32(i32 %403)
  %405 = trunc i32 %404 to i8
  %406 = and i8 %405, 1
  %407 = xor i8 %406, 1
  store i8 %407, i8* %57, align 1
  %408 = icmp eq i64 %401, 0
  %409 = zext i1 %408 to i8
  store i8 %409, i8* %59, align 1
  %410 = lshr i64 %401, 63
  %411 = trunc i64 %410 to i8
  store i8 %411, i8* %60, align 1
  store i8 0, i8* %61, align 1
  store i8 0, i8* %58, align 1
  %412 = bitcast i64 %401 to double
  %413 = fdiv double %412, %393
  store double %413, double* %399, align 1
  store i64 0, i64* %400, align 1
  %414 = add i64 %64, -16
  %415 = add i64 %100, 44
  store i64 %415, i64* %3, align 8
  %416 = inttoptr i64 %414 to i64*
  %417 = load i64, i64* %416, align 8
  store i64 %417, i64* %RCX.i170, align 8
  %418 = add i64 %417, 24
  %419 = add i64 %100, 49
  store i64 %419, i64* %3, align 8
  %420 = inttoptr i64 %418 to double*
  store double %413, double* %420, align 8
  %421 = load i64, i64* %RBP.i, align 8
  %422 = add i64 %421, -32
  %423 = load i64, i64* %3, align 8
  %424 = add i64 %423, 5
  store i64 %424, i64* %3, align 8
  %425 = inttoptr i64 %422 to i64*
  %426 = load i64, i64* %425, align 8
  %427 = load i64, i64* %RAX.i180, align 8
  %428 = xor i64 %427, %426
  store i64 %428, i64* %RCX.i170, align 8
  store i8 0, i8* %56, align 1
  %429 = trunc i64 %428 to i32
  %430 = and i32 %429, 255
  %431 = tail call i32 @llvm.ctpop.i32(i32 %430)
  %432 = trunc i32 %431 to i8
  %433 = and i8 %432, 1
  %434 = xor i8 %433, 1
  store i8 %434, i8* %57, align 1
  %435 = icmp eq i64 %428, 0
  %436 = zext i1 %435 to i8
  store i8 %436, i8* %59, align 1
  %437 = lshr i64 %428, 63
  %438 = trunc i64 %437 to i8
  store i8 %438, i8* %60, align 1
  store i8 0, i8* %61, align 1
  store i8 0, i8* %58, align 1
  %439 = bitcast i64 %428 to double
  %440 = load double, double* %35, align 1
  %441 = fdiv double %439, %440
  store double %441, double* %399, align 1
  store i64 0, i64* %400, align 1
  %442 = add i64 %421, -16
  %443 = add i64 %423, 26
  store i64 %443, i64* %3, align 8
  %444 = inttoptr i64 %442 to i64*
  %445 = load i64, i64* %444, align 8
  store i64 %445, i64* %RCX.i170, align 8
  %446 = add i64 %445, 32
  %447 = add i64 %423, 31
  store i64 %447, i64* %3, align 8
  %448 = inttoptr i64 %446 to double*
  store double %441, double* %448, align 8
  %449 = load i64, i64* %RBP.i, align 8
  %450 = add i64 %449, -40
  %451 = load i64, i64* %3, align 8
  %452 = add i64 %451, 5
  store i64 %452, i64* %3, align 8
  %453 = inttoptr i64 %450 to i64*
  %454 = load i64, i64* %453, align 8
  %455 = load i64, i64* %RAX.i180, align 8
  %456 = xor i64 %455, %454
  store i64 %456, i64* %RCX.i170, align 8
  store i8 0, i8* %56, align 1
  %457 = trunc i64 %456 to i32
  %458 = and i32 %457, 255
  %459 = tail call i32 @llvm.ctpop.i32(i32 %458)
  %460 = trunc i32 %459 to i8
  %461 = and i8 %460, 1
  %462 = xor i8 %461, 1
  store i8 %462, i8* %57, align 1
  %463 = icmp eq i64 %456, 0
  %464 = zext i1 %463 to i8
  store i8 %464, i8* %59, align 1
  %465 = lshr i64 %456, 63
  %466 = trunc i64 %465 to i8
  store i8 %466, i8* %60, align 1
  store i8 0, i8* %61, align 1
  store i8 0, i8* %58, align 1
  %467 = bitcast i64 %456 to double
  %468 = load double, double* %35, align 1
  %469 = fdiv double %467, %468
  store double %469, double* %399, align 1
  store i64 0, i64* %400, align 1
  %470 = add i64 %449, -16
  %471 = add i64 %451, 26
  store i64 %471, i64* %3, align 8
  %472 = inttoptr i64 %470 to i64*
  %473 = load i64, i64* %472, align 8
  store i64 %473, i64* %RAX.i180, align 8
  %474 = add i64 %473, 40
  %475 = add i64 %451, 31
  store i64 %475, i64* %3, align 8
  %476 = inttoptr i64 %474 to double*
  store double %469, double* %476, align 8
  %477 = load i64, i64* %3, align 8
  %478 = add i64 %477, 1
  store i64 %478, i64* %3, align 8
  %479 = load i64, i64* %6, align 8
  %480 = add i64 %479, 8
  %481 = inttoptr i64 %479 to i64*
  %482 = load i64, i64* %481, align 8
  store i64 %482, i64* %RBP.i, align 8
  store i64 %480, i64* %6, align 8
  %483 = add i64 %477, 2
  store i64 %483, i64* %3, align 8
  %484 = inttoptr i64 %480 to i64*
  %485 = load i64, i64* %484, align 8
  store i64 %485, i64* %3, align 8
  %486 = add i64 %479, 16
  store i64 %486, i64* %6, align 8
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

define %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast %union.VectorReg* %3 to i32*
  store i32 0, i32* %8, align 1
  %9 = getelementptr inbounds i8, i8* %4, i64 4
  %10 = bitcast i8* %9 to i32*
  store i32 0, i32* %10, align 1
  %11 = bitcast i64* %7 to i32*
  store i32 0, i32* %11, align 1
  %12 = getelementptr inbounds i8, i8* %4, i64 12
  %13 = bitcast i8* %12 to i32*
  store i32 0, i32* %13, align 1
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x2c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_jge_.L_400a34(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_imulq__0x38___rcx___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 56
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

define %struct.Memory* @routine_movsd_0x18__rax____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd_0x30__rax____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 48
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fmul double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd_MINUS0x18__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fadd double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x20__rax____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd_MINUS0x20__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -32
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fadd double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x28__rax____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd_MINUS0x28__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -40
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fadd double %9, %11
  store double %12, double* %8, align 1
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

define %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_jmpq_.L_400984(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x1d4__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x1d4__rip__4196924__type* @G_0x1d4__rip__4196924_ to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x8000000000000000___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 -9223372036854775808, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x18__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__xmm1___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* %RCX, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_xorq__rax___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = xor i64 %4, %3
  store i64 %7, i64* %RCX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = trunc i64 %7 to i32
  %10 = and i32 %9, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = icmp eq i64 %7, 0
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %17, i8* %18, align 1
  %19 = lshr i64 %7, 63
  %20 = trunc i64 %19 to i8
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %20, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %23, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rcx___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 5
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %3, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  store i64 0, i64* %7, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_divsd__xmm0___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast %union.VectorReg* %4 to double*
  %10 = load double, double* %9, align 1
  %11 = fdiv double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm1__0x18__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x20__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm1__0x20__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x28__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm1__0x28__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
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
