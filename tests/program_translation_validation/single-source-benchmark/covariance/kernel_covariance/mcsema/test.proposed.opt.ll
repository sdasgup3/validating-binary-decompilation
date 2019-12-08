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
define %struct.Memory* @kernel_covariance(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i = bitcast %union.anon* %16 to i32*
  %17 = load i64, i64* %RBP.i, align 8
  %18 = add i64 %17, -8
  %19 = load i32, i32* %ESI.i, align 4
  %20 = load i64, i64* %PC.i, align 8
  %21 = add i64 %20, 3
  store i64 %21, i64* %PC.i, align 8
  %22 = inttoptr i64 %18 to i32*
  store i32 %19, i32* %22, align 4
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %24 = load i64, i64* %RBP.i, align 8
  %25 = add i64 %24, -16
  %26 = load i64, i64* %PC.i, align 8
  %27 = add i64 %26, 5
  store i64 %27, i64* %PC.i, align 8
  %28 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %23, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %29 = load i64, i64* %28, align 1
  %30 = inttoptr i64 %25 to i64*
  store i64 %29, i64* %30, align 8
  %RDX.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %31 = load i64, i64* %RBP.i, align 8
  %32 = add i64 %31, -24
  %33 = load i64, i64* %RDX.i, align 8
  %34 = load i64, i64* %PC.i, align 8
  %35 = add i64 %34, 4
  store i64 %35, i64* %PC.i, align 8
  %36 = inttoptr i64 %32 to i64*
  store i64 %33, i64* %36, align 8
  %RCX.i347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %37 = load i64, i64* %RBP.i, align 8
  %38 = add i64 %37, -32
  %39 = load i64, i64* %RCX.i347, align 8
  %40 = load i64, i64* %PC.i, align 8
  %41 = add i64 %40, 4
  store i64 %41, i64* %PC.i, align 8
  %42 = inttoptr i64 %38 to i64*
  store i64 %39, i64* %42, align 8
  %R8.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %43 = load i64, i64* %RBP.i, align 8
  %44 = add i64 %43, -40
  %45 = load i64, i64* %R8.i, align 8
  %46 = load i64, i64* %PC.i, align 8
  %47 = add i64 %46, 4
  store i64 %47, i64* %PC.i, align 8
  %48 = inttoptr i64 %44 to i64*
  store i64 %45, i64* %48, align 8
  %49 = load i64, i64* %RBP.i, align 8
  %50 = add i64 %49, -48
  %51 = load i64, i64* %PC.i, align 8
  %52 = add i64 %51, 7
  store i64 %52, i64* %PC.i, align 8
  %53 = inttoptr i64 %50 to i32*
  store i32 0, i32* %53, align 4
  %RAX.i340 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %54 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %57 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %59 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %60 = bitcast [32 x %union.VectorReg]* %23 to i8*
  %61 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %62 = bitcast [32 x %union.VectorReg]* %23 to i32*
  %63 = getelementptr inbounds i8, i8* %60, i64 4
  %64 = bitcast i8* %63 to i32*
  %65 = bitcast i64* %61 to i32*
  %66 = getelementptr inbounds i8, i8* %60, i64 12
  %67 = bitcast i8* %66 to i32*
  %68 = bitcast [32 x %union.VectorReg]* %23 to double*
  %69 = bitcast i64* %61 to double*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %71 = bitcast %union.VectorReg* %70 to double*
  %72 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %.pre = load i64, i64* %PC.i, align 8
  br label %block_.L_400b32

block_.L_400b32:                                  ; preds = %block_.L_400b9c, %entry
  %73 = phi i64 [ %310, %block_.L_400b9c ], [ %.pre, %entry ]
  %74 = load i64, i64* %RBP.i, align 8
  %75 = add i64 %74, -48
  %76 = add i64 %73, 3
  store i64 %76, i64* %PC.i, align 8
  %77 = inttoptr i64 %75 to i32*
  %78 = load i32, i32* %77, align 4
  %79 = zext i32 %78 to i64
  store i64 %79, i64* %RAX.i340, align 8
  %80 = add i64 %74, -4
  %81 = add i64 %73, 6
  store i64 %81, i64* %PC.i, align 8
  %82 = inttoptr i64 %80 to i32*
  %83 = load i32, i32* %82, align 4
  %84 = sub i32 %78, %83
  %85 = icmp ult i32 %78, %83
  %86 = zext i1 %85 to i8
  store i8 %86, i8* %54, align 1
  %87 = and i32 %84, 255
  %88 = tail call i32 @llvm.ctpop.i32(i32 %87)
  %89 = trunc i32 %88 to i8
  %90 = and i8 %89, 1
  %91 = xor i8 %90, 1
  store i8 %91, i8* %55, align 1
  %92 = xor i32 %83, %78
  %93 = xor i32 %92, %84
  %94 = lshr i32 %93, 4
  %95 = trunc i32 %94 to i8
  %96 = and i8 %95, 1
  store i8 %96, i8* %56, align 1
  %97 = icmp eq i32 %84, 0
  %98 = zext i1 %97 to i8
  store i8 %98, i8* %57, align 1
  %99 = lshr i32 %84, 31
  %100 = trunc i32 %99 to i8
  store i8 %100, i8* %58, align 1
  %101 = lshr i32 %78, 31
  %102 = lshr i32 %83, 31
  %103 = xor i32 %102, %101
  %104 = xor i32 %99, %101
  %105 = add nuw nsw i32 %104, %103
  %106 = icmp eq i32 %105, 2
  %107 = zext i1 %106 to i8
  store i8 %107, i8* %59, align 1
  %108 = icmp ne i8 %100, 0
  %109 = xor i1 %108, %106
  %.v = select i1 %109, i64 12, i64 147
  %110 = add i64 %73, %.v
  store i64 %110, i64* %3, align 8
  br i1 %109, label %block_400b3e, label %block_.L_400bc5

block_400b3e:                                     ; preds = %block_.L_400b32
  store i32 0, i32* %62, align 1
  store i32 0, i32* %64, align 1
  store i32 0, i32* %65, align 1
  store i32 0, i32* %67, align 1
  %111 = add i64 %74, -40
  %112 = add i64 %110, 7
  store i64 %112, i64* %PC.i, align 8
  %113 = inttoptr i64 %111 to i64*
  %114 = load i64, i64* %113, align 8
  store i64 %114, i64* %RAX.i340, align 8
  %115 = add i64 %110, 11
  store i64 %115, i64* %PC.i, align 8
  %116 = load i32, i32* %77, align 4
  %117 = sext i32 %116 to i64
  store i64 %117, i64* %RCX.i347, align 8
  %118 = shl nsw i64 %117, 3
  %119 = add i64 %118, %114
  %120 = add i64 %110, 16
  store i64 %120, i64* %PC.i, align 8
  %121 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %23, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %122 = load i64, i64* %121, align 1
  %123 = inttoptr i64 %119 to i64*
  store i64 %122, i64* %123, align 8
  %124 = load i64, i64* %RBP.i, align 8
  %125 = add i64 %124, -44
  %126 = load i64, i64* %PC.i, align 8
  %127 = add i64 %126, 7
  store i64 %127, i64* %PC.i, align 8
  %128 = inttoptr i64 %125 to i32*
  store i32 0, i32* %128, align 4
  %.pre1 = load i64, i64* %PC.i, align 8
  br label %block_.L_400b55

block_.L_400b55:                                  ; preds = %block_400b61, %block_400b3e
  %129 = phi i64 [ %257, %block_400b61 ], [ %.pre1, %block_400b3e ]
  %130 = load i64, i64* %RBP.i, align 8
  %131 = add i64 %130, -44
  %132 = add i64 %129, 3
  store i64 %132, i64* %PC.i, align 8
  %133 = inttoptr i64 %131 to i32*
  %134 = load i32, i32* %133, align 4
  %135 = zext i32 %134 to i64
  store i64 %135, i64* %RAX.i340, align 8
  %136 = add i64 %130, -8
  %137 = add i64 %129, 6
  store i64 %137, i64* %PC.i, align 8
  %138 = inttoptr i64 %136 to i32*
  %139 = load i32, i32* %138, align 4
  %140 = sub i32 %134, %139
  %141 = icmp ult i32 %134, %139
  %142 = zext i1 %141 to i8
  store i8 %142, i8* %54, align 1
  %143 = and i32 %140, 255
  %144 = tail call i32 @llvm.ctpop.i32(i32 %143)
  %145 = trunc i32 %144 to i8
  %146 = and i8 %145, 1
  %147 = xor i8 %146, 1
  store i8 %147, i8* %55, align 1
  %148 = xor i32 %139, %134
  %149 = xor i32 %148, %140
  %150 = lshr i32 %149, 4
  %151 = trunc i32 %150 to i8
  %152 = and i8 %151, 1
  store i8 %152, i8* %56, align 1
  %153 = icmp eq i32 %140, 0
  %154 = zext i1 %153 to i8
  store i8 %154, i8* %57, align 1
  %155 = lshr i32 %140, 31
  %156 = trunc i32 %155 to i8
  store i8 %156, i8* %58, align 1
  %157 = lshr i32 %134, 31
  %158 = lshr i32 %139, 31
  %159 = xor i32 %158, %157
  %160 = xor i32 %155, %157
  %161 = add nuw nsw i32 %160, %159
  %162 = icmp eq i32 %161, 2
  %163 = zext i1 %162 to i8
  store i8 %163, i8* %59, align 1
  %164 = icmp ne i8 %156, 0
  %165 = xor i1 %164, %162
  %.v7 = select i1 %165, i64 12, i64 71
  %166 = add i64 %129, %.v7
  store i64 %166, i64* %3, align 8
  br i1 %165, label %block_400b61, label %block_.L_400b9c

block_400b61:                                     ; preds = %block_.L_400b55
  %167 = add i64 %130, -24
  %168 = add i64 %166, 4
  store i64 %168, i64* %PC.i, align 8
  %169 = inttoptr i64 %167 to i64*
  %170 = load i64, i64* %169, align 8
  store i64 %170, i64* %RAX.i340, align 8
  %171 = add i64 %166, 8
  store i64 %171, i64* %PC.i, align 8
  %172 = load i32, i32* %133, align 4
  %173 = sext i32 %172 to i64
  %174 = mul nsw i64 %173, 8000
  store i64 %174, i64* %RCX.i347, align 8
  %175 = lshr i64 %174, 63
  %176 = add i64 %174, %170
  store i64 %176, i64* %RAX.i340, align 8
  %177 = icmp ult i64 %176, %170
  %178 = icmp ult i64 %176, %174
  %179 = or i1 %177, %178
  %180 = zext i1 %179 to i8
  store i8 %180, i8* %54, align 1
  %181 = trunc i64 %176 to i32
  %182 = and i32 %181, 255
  %183 = tail call i32 @llvm.ctpop.i32(i32 %182)
  %184 = trunc i32 %183 to i8
  %185 = and i8 %184, 1
  %186 = xor i8 %185, 1
  store i8 %186, i8* %55, align 1
  %187 = xor i64 %170, %176
  %188 = lshr i64 %187, 4
  %189 = trunc i64 %188 to i8
  %190 = and i8 %189, 1
  store i8 %190, i8* %56, align 1
  %191 = icmp eq i64 %176, 0
  %192 = zext i1 %191 to i8
  store i8 %192, i8* %57, align 1
  %193 = lshr i64 %176, 63
  %194 = trunc i64 %193 to i8
  store i8 %194, i8* %58, align 1
  %195 = lshr i64 %170, 63
  %196 = xor i64 %193, %195
  %197 = xor i64 %193, %175
  %198 = add nuw nsw i64 %196, %197
  %199 = icmp eq i64 %198, 2
  %200 = zext i1 %199 to i8
  store i8 %200, i8* %59, align 1
  %201 = add i64 %130, -48
  %202 = add i64 %166, 22
  store i64 %202, i64* %PC.i, align 8
  %203 = inttoptr i64 %201 to i32*
  %204 = load i32, i32* %203, align 4
  %205 = sext i32 %204 to i64
  store i64 %205, i64* %RCX.i347, align 8
  %206 = shl nsw i64 %205, 3
  %207 = add i64 %206, %176
  %208 = add i64 %166, 27
  store i64 %208, i64* %PC.i, align 8
  %209 = inttoptr i64 %207 to double*
  %210 = load double, double* %209, align 8
  store double %210, double* %68, align 1
  store double 0.000000e+00, double* %69, align 1
  %211 = add i64 %130, -40
  %212 = add i64 %166, 31
  store i64 %212, i64* %PC.i, align 8
  %213 = inttoptr i64 %211 to i64*
  %214 = load i64, i64* %213, align 8
  store i64 %214, i64* %RAX.i340, align 8
  %215 = add i64 %166, 35
  store i64 %215, i64* %PC.i, align 8
  %216 = load i32, i32* %203, align 4
  %217 = sext i32 %216 to i64
  store i64 %217, i64* %RCX.i347, align 8
  %218 = shl nsw i64 %217, 3
  %219 = add i64 %218, %214
  %220 = add i64 %166, 40
  store i64 %220, i64* %PC.i, align 8
  %221 = inttoptr i64 %219 to double*
  %222 = load double, double* %221, align 8
  %223 = fadd double %210, %222
  store double %223, double* %68, align 1
  store i64 0, i64* %61, align 1
  %224 = add i64 %166, 45
  store i64 %224, i64* %PC.i, align 8
  store double %223, double* %221, align 8
  %225 = load i64, i64* %RBP.i, align 8
  %226 = add i64 %225, -44
  %227 = load i64, i64* %PC.i, align 8
  %228 = add i64 %227, 3
  store i64 %228, i64* %PC.i, align 8
  %229 = inttoptr i64 %226 to i32*
  %230 = load i32, i32* %229, align 4
  %231 = add i32 %230, 1
  %232 = zext i32 %231 to i64
  store i64 %232, i64* %RAX.i340, align 8
  %233 = icmp eq i32 %230, -1
  %234 = icmp eq i32 %231, 0
  %235 = or i1 %233, %234
  %236 = zext i1 %235 to i8
  store i8 %236, i8* %54, align 1
  %237 = and i32 %231, 255
  %238 = tail call i32 @llvm.ctpop.i32(i32 %237)
  %239 = trunc i32 %238 to i8
  %240 = and i8 %239, 1
  %241 = xor i8 %240, 1
  store i8 %241, i8* %55, align 1
  %242 = xor i32 %230, %231
  %243 = lshr i32 %242, 4
  %244 = trunc i32 %243 to i8
  %245 = and i8 %244, 1
  store i8 %245, i8* %56, align 1
  %246 = icmp eq i32 %231, 0
  %247 = zext i1 %246 to i8
  store i8 %247, i8* %57, align 1
  %248 = lshr i32 %231, 31
  %249 = trunc i32 %248 to i8
  store i8 %249, i8* %58, align 1
  %250 = lshr i32 %230, 31
  %251 = xor i32 %248, %250
  %252 = add nuw nsw i32 %251, %248
  %253 = icmp eq i32 %252, 2
  %254 = zext i1 %253 to i8
  store i8 %254, i8* %59, align 1
  %255 = add i64 %227, 9
  store i64 %255, i64* %PC.i, align 8
  store i32 %231, i32* %229, align 4
  %256 = load i64, i64* %PC.i, align 8
  %257 = add i64 %256, -66
  store i64 %257, i64* %3, align 8
  br label %block_.L_400b55

block_.L_400b9c:                                  ; preds = %block_.L_400b55
  %258 = add i64 %130, -16
  %259 = add i64 %166, 5
  store i64 %259, i64* %PC.i, align 8
  %260 = inttoptr i64 %258 to double*
  %261 = load double, double* %260, align 8
  store double %261, double* %68, align 1
  store double 0.000000e+00, double* %69, align 1
  %262 = add i64 %130, -40
  %263 = add i64 %166, 9
  store i64 %263, i64* %PC.i, align 8
  %264 = inttoptr i64 %262 to i64*
  %265 = load i64, i64* %264, align 8
  store i64 %265, i64* %RAX.i340, align 8
  %266 = add i64 %130, -48
  %267 = add i64 %166, 13
  store i64 %267, i64* %PC.i, align 8
  %268 = inttoptr i64 %266 to i32*
  %269 = load i32, i32* %268, align 4
  %270 = sext i32 %269 to i64
  store i64 %270, i64* %RCX.i347, align 8
  %271 = shl nsw i64 %270, 3
  %272 = add i64 %271, %265
  %273 = add i64 %166, 18
  store i64 %273, i64* %PC.i, align 8
  %274 = inttoptr i64 %272 to double*
  %275 = load double, double* %274, align 8
  %276 = fdiv double %275, %261
  store double %276, double* %71, align 1
  store i64 0, i64* %72, align 1
  %277 = add i64 %166, 27
  store i64 %277, i64* %PC.i, align 8
  store double %276, double* %274, align 8
  %278 = load i64, i64* %RBP.i, align 8
  %279 = add i64 %278, -48
  %280 = load i64, i64* %PC.i, align 8
  %281 = add i64 %280, 3
  store i64 %281, i64* %PC.i, align 8
  %282 = inttoptr i64 %279 to i32*
  %283 = load i32, i32* %282, align 4
  %284 = add i32 %283, 1
  %285 = zext i32 %284 to i64
  store i64 %285, i64* %RAX.i340, align 8
  %286 = icmp eq i32 %283, -1
  %287 = icmp eq i32 %284, 0
  %288 = or i1 %286, %287
  %289 = zext i1 %288 to i8
  store i8 %289, i8* %54, align 1
  %290 = and i32 %284, 255
  %291 = tail call i32 @llvm.ctpop.i32(i32 %290)
  %292 = trunc i32 %291 to i8
  %293 = and i8 %292, 1
  %294 = xor i8 %293, 1
  store i8 %294, i8* %55, align 1
  %295 = xor i32 %283, %284
  %296 = lshr i32 %295, 4
  %297 = trunc i32 %296 to i8
  %298 = and i8 %297, 1
  store i8 %298, i8* %56, align 1
  %299 = icmp eq i32 %284, 0
  %300 = zext i1 %299 to i8
  store i8 %300, i8* %57, align 1
  %301 = lshr i32 %284, 31
  %302 = trunc i32 %301 to i8
  store i8 %302, i8* %58, align 1
  %303 = lshr i32 %283, 31
  %304 = xor i32 %301, %303
  %305 = add nuw nsw i32 %304, %301
  %306 = icmp eq i32 %305, 2
  %307 = zext i1 %306 to i8
  store i8 %307, i8* %59, align 1
  %308 = add i64 %280, 9
  store i64 %308, i64* %PC.i, align 8
  store i32 %284, i32* %282, align 4
  %309 = load i64, i64* %PC.i, align 8
  %310 = add i64 %309, -142
  store i64 %310, i64* %3, align 8
  br label %block_.L_400b32

block_.L_400bc5:                                  ; preds = %block_.L_400b32
  %311 = add i64 %74, -44
  %312 = add i64 %110, 7
  store i64 %312, i64* %PC.i, align 8
  %313 = inttoptr i64 %311 to i32*
  store i32 0, i32* %313, align 4
  %.pre2 = load i64, i64* %PC.i, align 8
  br label %block_.L_400bcc

block_.L_400bcc:                                  ; preds = %block_.L_400c2a, %block_.L_400bc5
  %314 = phi i64 [ %514, %block_.L_400c2a ], [ %.pre2, %block_.L_400bc5 ]
  %315 = load i64, i64* %RBP.i, align 8
  %316 = add i64 %315, -44
  %317 = add i64 %314, 3
  store i64 %317, i64* %PC.i, align 8
  %318 = inttoptr i64 %316 to i32*
  %319 = load i32, i32* %318, align 4
  %320 = zext i32 %319 to i64
  store i64 %320, i64* %RAX.i340, align 8
  %321 = add i64 %315, -8
  %322 = add i64 %314, 6
  store i64 %322, i64* %PC.i, align 8
  %323 = inttoptr i64 %321 to i32*
  %324 = load i32, i32* %323, align 4
  %325 = sub i32 %319, %324
  %326 = icmp ult i32 %319, %324
  %327 = zext i1 %326 to i8
  store i8 %327, i8* %54, align 1
  %328 = and i32 %325, 255
  %329 = tail call i32 @llvm.ctpop.i32(i32 %328)
  %330 = trunc i32 %329 to i8
  %331 = and i8 %330, 1
  %332 = xor i8 %331, 1
  store i8 %332, i8* %55, align 1
  %333 = xor i32 %324, %319
  %334 = xor i32 %333, %325
  %335 = lshr i32 %334, 4
  %336 = trunc i32 %335 to i8
  %337 = and i8 %336, 1
  store i8 %337, i8* %56, align 1
  %338 = icmp eq i32 %325, 0
  %339 = zext i1 %338 to i8
  store i8 %339, i8* %57, align 1
  %340 = lshr i32 %325, 31
  %341 = trunc i32 %340 to i8
  store i8 %341, i8* %58, align 1
  %342 = lshr i32 %319, 31
  %343 = lshr i32 %324, 31
  %344 = xor i32 %343, %342
  %345 = xor i32 %340, %342
  %346 = add nuw nsw i32 %345, %344
  %347 = icmp eq i32 %346, 2
  %348 = zext i1 %347 to i8
  store i8 %348, i8* %59, align 1
  %349 = icmp ne i8 %341, 0
  %350 = xor i1 %349, %347
  %.v8 = select i1 %350, i64 12, i64 113
  %351 = add i64 %314, %.v8
  store i64 %351, i64* %3, align 8
  br i1 %350, label %block_400bd8, label %block_.L_400c3d

block_400bd8:                                     ; preds = %block_.L_400bcc
  %352 = add i64 %315, -48
  %353 = add i64 %351, 7
  store i64 %353, i64* %PC.i, align 8
  %354 = inttoptr i64 %352 to i32*
  store i32 0, i32* %354, align 4
  %.pre3 = load i64, i64* %PC.i, align 8
  br label %block_.L_400bdf

block_.L_400bdf:                                  ; preds = %block_400beb, %block_400bd8
  %355 = phi i64 [ %483, %block_400beb ], [ %.pre3, %block_400bd8 ]
  %356 = load i64, i64* %RBP.i, align 8
  %357 = add i64 %356, -48
  %358 = add i64 %355, 3
  store i64 %358, i64* %PC.i, align 8
  %359 = inttoptr i64 %357 to i32*
  %360 = load i32, i32* %359, align 4
  %361 = zext i32 %360 to i64
  store i64 %361, i64* %RAX.i340, align 8
  %362 = add i64 %356, -4
  %363 = add i64 %355, 6
  store i64 %363, i64* %PC.i, align 8
  %364 = inttoptr i64 %362 to i32*
  %365 = load i32, i32* %364, align 4
  %366 = sub i32 %360, %365
  %367 = icmp ult i32 %360, %365
  %368 = zext i1 %367 to i8
  store i8 %368, i8* %54, align 1
  %369 = and i32 %366, 255
  %370 = tail call i32 @llvm.ctpop.i32(i32 %369)
  %371 = trunc i32 %370 to i8
  %372 = and i8 %371, 1
  %373 = xor i8 %372, 1
  store i8 %373, i8* %55, align 1
  %374 = xor i32 %365, %360
  %375 = xor i32 %374, %366
  %376 = lshr i32 %375, 4
  %377 = trunc i32 %376 to i8
  %378 = and i8 %377, 1
  store i8 %378, i8* %56, align 1
  %379 = icmp eq i32 %366, 0
  %380 = zext i1 %379 to i8
  store i8 %380, i8* %57, align 1
  %381 = lshr i32 %366, 31
  %382 = trunc i32 %381 to i8
  store i8 %382, i8* %58, align 1
  %383 = lshr i32 %360, 31
  %384 = lshr i32 %365, 31
  %385 = xor i32 %384, %383
  %386 = xor i32 %381, %383
  %387 = add nuw nsw i32 %386, %385
  %388 = icmp eq i32 %387, 2
  %389 = zext i1 %388 to i8
  store i8 %389, i8* %59, align 1
  %390 = icmp ne i8 %382, 0
  %391 = xor i1 %390, %388
  %.v9 = select i1 %391, i64 12, i64 75
  %392 = add i64 %355, %.v9
  store i64 %392, i64* %3, align 8
  br i1 %391, label %block_400beb, label %block_.L_400c2a

block_400beb:                                     ; preds = %block_.L_400bdf
  %393 = add i64 %356, -40
  %394 = add i64 %392, 4
  store i64 %394, i64* %PC.i, align 8
  %395 = inttoptr i64 %393 to i64*
  %396 = load i64, i64* %395, align 8
  store i64 %396, i64* %RAX.i340, align 8
  %397 = add i64 %392, 8
  store i64 %397, i64* %PC.i, align 8
  %398 = load i32, i32* %359, align 4
  %399 = sext i32 %398 to i64
  store i64 %399, i64* %RCX.i347, align 8
  %400 = shl nsw i64 %399, 3
  %401 = add i64 %400, %396
  %402 = add i64 %392, 13
  store i64 %402, i64* %PC.i, align 8
  %403 = inttoptr i64 %401 to double*
  %404 = load double, double* %403, align 8
  store double %404, double* %68, align 1
  store double 0.000000e+00, double* %69, align 1
  %405 = add i64 %356, -24
  %406 = add i64 %392, 17
  store i64 %406, i64* %PC.i, align 8
  %407 = inttoptr i64 %405 to i64*
  %408 = load i64, i64* %407, align 8
  store i64 %408, i64* %RAX.i340, align 8
  %409 = add i64 %356, -44
  %410 = add i64 %392, 21
  store i64 %410, i64* %PC.i, align 8
  %411 = inttoptr i64 %409 to i32*
  %412 = load i32, i32* %411, align 4
  %413 = sext i32 %412 to i64
  %414 = mul nsw i64 %413, 8000
  store i64 %414, i64* %RCX.i347, align 8
  %415 = lshr i64 %414, 63
  %416 = add i64 %414, %408
  store i64 %416, i64* %RAX.i340, align 8
  %417 = icmp ult i64 %416, %408
  %418 = icmp ult i64 %416, %414
  %419 = or i1 %417, %418
  %420 = zext i1 %419 to i8
  store i8 %420, i8* %54, align 1
  %421 = trunc i64 %416 to i32
  %422 = and i32 %421, 255
  %423 = tail call i32 @llvm.ctpop.i32(i32 %422)
  %424 = trunc i32 %423 to i8
  %425 = and i8 %424, 1
  %426 = xor i8 %425, 1
  store i8 %426, i8* %55, align 1
  %427 = xor i64 %408, %416
  %428 = lshr i64 %427, 4
  %429 = trunc i64 %428 to i8
  %430 = and i8 %429, 1
  store i8 %430, i8* %56, align 1
  %431 = icmp eq i64 %416, 0
  %432 = zext i1 %431 to i8
  store i8 %432, i8* %57, align 1
  %433 = lshr i64 %416, 63
  %434 = trunc i64 %433 to i8
  store i8 %434, i8* %58, align 1
  %435 = lshr i64 %408, 63
  %436 = xor i64 %433, %435
  %437 = xor i64 %433, %415
  %438 = add nuw nsw i64 %436, %437
  %439 = icmp eq i64 %438, 2
  %440 = zext i1 %439 to i8
  store i8 %440, i8* %59, align 1
  %441 = add i64 %392, 35
  store i64 %441, i64* %PC.i, align 8
  %442 = load i32, i32* %359, align 4
  %443 = sext i32 %442 to i64
  store i64 %443, i64* %RCX.i347, align 8
  %444 = shl nsw i64 %443, 3
  %445 = add i64 %444, %416
  %446 = add i64 %392, 40
  store i64 %446, i64* %PC.i, align 8
  %447 = inttoptr i64 %445 to double*
  %448 = load double, double* %447, align 8
  %449 = fsub double %448, %404
  store double %449, double* %71, align 1
  store i64 0, i64* %72, align 1
  %450 = add i64 %392, 49
  store i64 %450, i64* %PC.i, align 8
  store double %449, double* %447, align 8
  %451 = load i64, i64* %RBP.i, align 8
  %452 = add i64 %451, -48
  %453 = load i64, i64* %PC.i, align 8
  %454 = add i64 %453, 3
  store i64 %454, i64* %PC.i, align 8
  %455 = inttoptr i64 %452 to i32*
  %456 = load i32, i32* %455, align 4
  %457 = add i32 %456, 1
  %458 = zext i32 %457 to i64
  store i64 %458, i64* %RAX.i340, align 8
  %459 = icmp eq i32 %456, -1
  %460 = icmp eq i32 %457, 0
  %461 = or i1 %459, %460
  %462 = zext i1 %461 to i8
  store i8 %462, i8* %54, align 1
  %463 = and i32 %457, 255
  %464 = tail call i32 @llvm.ctpop.i32(i32 %463)
  %465 = trunc i32 %464 to i8
  %466 = and i8 %465, 1
  %467 = xor i8 %466, 1
  store i8 %467, i8* %55, align 1
  %468 = xor i32 %456, %457
  %469 = lshr i32 %468, 4
  %470 = trunc i32 %469 to i8
  %471 = and i8 %470, 1
  store i8 %471, i8* %56, align 1
  %472 = icmp eq i32 %457, 0
  %473 = zext i1 %472 to i8
  store i8 %473, i8* %57, align 1
  %474 = lshr i32 %457, 31
  %475 = trunc i32 %474 to i8
  store i8 %475, i8* %58, align 1
  %476 = lshr i32 %456, 31
  %477 = xor i32 %474, %476
  %478 = add nuw nsw i32 %477, %474
  %479 = icmp eq i32 %478, 2
  %480 = zext i1 %479 to i8
  store i8 %480, i8* %59, align 1
  %481 = add i64 %453, 9
  store i64 %481, i64* %PC.i, align 8
  store i32 %457, i32* %455, align 4
  %482 = load i64, i64* %PC.i, align 8
  %483 = add i64 %482, -70
  store i64 %483, i64* %3, align 8
  br label %block_.L_400bdf

block_.L_400c2a:                                  ; preds = %block_.L_400bdf
  %484 = add i64 %356, -44
  %485 = add i64 %392, 8
  store i64 %485, i64* %PC.i, align 8
  %486 = inttoptr i64 %484 to i32*
  %487 = load i32, i32* %486, align 4
  %488 = add i32 %487, 1
  %489 = zext i32 %488 to i64
  store i64 %489, i64* %RAX.i340, align 8
  %490 = icmp eq i32 %487, -1
  %491 = icmp eq i32 %488, 0
  %492 = or i1 %490, %491
  %493 = zext i1 %492 to i8
  store i8 %493, i8* %54, align 1
  %494 = and i32 %488, 255
  %495 = tail call i32 @llvm.ctpop.i32(i32 %494)
  %496 = trunc i32 %495 to i8
  %497 = and i8 %496, 1
  %498 = xor i8 %497, 1
  store i8 %498, i8* %55, align 1
  %499 = xor i32 %487, %488
  %500 = lshr i32 %499, 4
  %501 = trunc i32 %500 to i8
  %502 = and i8 %501, 1
  store i8 %502, i8* %56, align 1
  %503 = icmp eq i32 %488, 0
  %504 = zext i1 %503 to i8
  store i8 %504, i8* %57, align 1
  %505 = lshr i32 %488, 31
  %506 = trunc i32 %505 to i8
  store i8 %506, i8* %58, align 1
  %507 = lshr i32 %487, 31
  %508 = xor i32 %505, %507
  %509 = add nuw nsw i32 %508, %505
  %510 = icmp eq i32 %509, 2
  %511 = zext i1 %510 to i8
  store i8 %511, i8* %59, align 1
  %512 = add i64 %392, 14
  store i64 %512, i64* %PC.i, align 8
  store i32 %488, i32* %486, align 4
  %513 = load i64, i64* %PC.i, align 8
  %514 = add i64 %513, -108
  store i64 %514, i64* %3, align 8
  br label %block_.L_400bcc

block_.L_400c3d:                                  ; preds = %block_.L_400bcc
  %515 = add i64 %315, -52
  %516 = add i64 %351, 7
  store i64 %516, i64* %PC.i, align 8
  %517 = inttoptr i64 %515 to i32*
  store i32 0, i32* %517, align 4
  %.pre4 = load i64, i64* %PC.i, align 8
  br label %block_.L_400c44

block_.L_400c44:                                  ; preds = %block_.L_400d3b, %block_.L_400c3d
  %518 = phi i64 [ %1007, %block_.L_400d3b ], [ %.pre4, %block_.L_400c3d ]
  %519 = load i64, i64* %RBP.i, align 8
  %520 = add i64 %519, -52
  %521 = add i64 %518, 3
  store i64 %521, i64* %PC.i, align 8
  %522 = inttoptr i64 %520 to i32*
  %523 = load i32, i32* %522, align 4
  %524 = zext i32 %523 to i64
  store i64 %524, i64* %RAX.i340, align 8
  %525 = add i64 %519, -4
  %526 = add i64 %518, 6
  store i64 %526, i64* %PC.i, align 8
  %527 = inttoptr i64 %525 to i32*
  %528 = load i32, i32* %527, align 4
  %529 = sub i32 %523, %528
  %530 = icmp ult i32 %523, %528
  %531 = zext i1 %530 to i8
  store i8 %531, i8* %54, align 1
  %532 = and i32 %529, 255
  %533 = tail call i32 @llvm.ctpop.i32(i32 %532)
  %534 = trunc i32 %533 to i8
  %535 = and i8 %534, 1
  %536 = xor i8 %535, 1
  store i8 %536, i8* %55, align 1
  %537 = xor i32 %528, %523
  %538 = xor i32 %537, %529
  %539 = lshr i32 %538, 4
  %540 = trunc i32 %539 to i8
  %541 = and i8 %540, 1
  store i8 %541, i8* %56, align 1
  %542 = icmp eq i32 %529, 0
  %543 = zext i1 %542 to i8
  store i8 %543, i8* %57, align 1
  %544 = lshr i32 %529, 31
  %545 = trunc i32 %544 to i8
  store i8 %545, i8* %58, align 1
  %546 = lshr i32 %523, 31
  %547 = lshr i32 %528, 31
  %548 = xor i32 %547, %546
  %549 = xor i32 %544, %546
  %550 = add nuw nsw i32 %549, %548
  %551 = icmp eq i32 %550, 2
  %552 = zext i1 %551 to i8
  store i8 %552, i8* %59, align 1
  %553 = icmp ne i8 %545, 0
  %554 = xor i1 %553, %551
  %.v10 = select i1 %554, i64 12, i64 266
  %555 = add i64 %518, %.v10
  store i64 %555, i64* %3, align 8
  br i1 %554, label %block_400c50, label %block_.L_400d4e

block_400c50:                                     ; preds = %block_.L_400c44
  %556 = add i64 %555, 3
  store i64 %556, i64* %PC.i, align 8
  %557 = load i32, i32* %522, align 4
  %558 = zext i32 %557 to i64
  store i64 %558, i64* %RAX.i340, align 8
  %559 = add i64 %519, -56
  %560 = add i64 %555, 6
  store i64 %560, i64* %PC.i, align 8
  %561 = inttoptr i64 %559 to i32*
  store i32 %557, i32* %561, align 4
  %.pre5 = load i64, i64* %PC.i, align 8
  br label %block_.L_400c56

block_.L_400c56:                                  ; preds = %block_.L_400cf7, %block_400c50
  %562 = phi i64 [ %976, %block_.L_400cf7 ], [ %.pre5, %block_400c50 ]
  %563 = load i64, i64* %RBP.i, align 8
  %564 = add i64 %563, -56
  %565 = add i64 %562, 3
  store i64 %565, i64* %PC.i, align 8
  %566 = inttoptr i64 %564 to i32*
  %567 = load i32, i32* %566, align 4
  %568 = zext i32 %567 to i64
  store i64 %568, i64* %RAX.i340, align 8
  %569 = add i64 %563, -4
  %570 = add i64 %562, 6
  store i64 %570, i64* %PC.i, align 8
  %571 = inttoptr i64 %569 to i32*
  %572 = load i32, i32* %571, align 4
  %573 = sub i32 %567, %572
  %574 = icmp ult i32 %567, %572
  %575 = zext i1 %574 to i8
  store i8 %575, i8* %54, align 1
  %576 = and i32 %573, 255
  %577 = tail call i32 @llvm.ctpop.i32(i32 %576)
  %578 = trunc i32 %577 to i8
  %579 = and i8 %578, 1
  %580 = xor i8 %579, 1
  store i8 %580, i8* %55, align 1
  %581 = xor i32 %572, %567
  %582 = xor i32 %581, %573
  %583 = lshr i32 %582, 4
  %584 = trunc i32 %583 to i8
  %585 = and i8 %584, 1
  store i8 %585, i8* %56, align 1
  %586 = icmp eq i32 %573, 0
  %587 = zext i1 %586 to i8
  store i8 %587, i8* %57, align 1
  %588 = lshr i32 %573, 31
  %589 = trunc i32 %588 to i8
  store i8 %589, i8* %58, align 1
  %590 = lshr i32 %567, 31
  %591 = lshr i32 %572, 31
  %592 = xor i32 %591, %590
  %593 = xor i32 %588, %590
  %594 = add nuw nsw i32 %593, %592
  %595 = icmp eq i32 %594, 2
  %596 = zext i1 %595 to i8
  store i8 %596, i8* %59, align 1
  %597 = icmp ne i8 %589, 0
  %598 = xor i1 %597, %595
  %.v11 = select i1 %598, i64 12, i64 229
  %599 = add i64 %562, %.v11
  store i64 %599, i64* %3, align 8
  br i1 %598, label %block_400c62, label %block_.L_400d3b

block_400c62:                                     ; preds = %block_.L_400c56
  store i32 0, i32* %62, align 1
  store i32 0, i32* %64, align 1
  store i32 0, i32* %65, align 1
  store i32 0, i32* %67, align 1
  %600 = add i64 %563, -32
  %601 = add i64 %599, 7
  store i64 %601, i64* %PC.i, align 8
  %602 = inttoptr i64 %600 to i64*
  %603 = load i64, i64* %602, align 8
  store i64 %603, i64* %RAX.i340, align 8
  %604 = add i64 %563, -52
  %605 = add i64 %599, 11
  store i64 %605, i64* %PC.i, align 8
  %606 = inttoptr i64 %604 to i32*
  %607 = load i32, i32* %606, align 4
  %608 = sext i32 %607 to i64
  %609 = mul nsw i64 %608, 8000
  store i64 %609, i64* %RCX.i347, align 8
  %610 = lshr i64 %609, 63
  %611 = add i64 %609, %603
  store i64 %611, i64* %RAX.i340, align 8
  %612 = icmp ult i64 %611, %603
  %613 = icmp ult i64 %611, %609
  %614 = or i1 %612, %613
  %615 = zext i1 %614 to i8
  store i8 %615, i8* %54, align 1
  %616 = trunc i64 %611 to i32
  %617 = and i32 %616, 255
  %618 = tail call i32 @llvm.ctpop.i32(i32 %617)
  %619 = trunc i32 %618 to i8
  %620 = and i8 %619, 1
  %621 = xor i8 %620, 1
  store i8 %621, i8* %55, align 1
  %622 = xor i64 %603, %611
  %623 = lshr i64 %622, 4
  %624 = trunc i64 %623 to i8
  %625 = and i8 %624, 1
  store i8 %625, i8* %56, align 1
  %626 = icmp eq i64 %611, 0
  %627 = zext i1 %626 to i8
  store i8 %627, i8* %57, align 1
  %628 = lshr i64 %611, 63
  %629 = trunc i64 %628 to i8
  store i8 %629, i8* %58, align 1
  %630 = lshr i64 %603, 63
  %631 = xor i64 %628, %630
  %632 = xor i64 %628, %610
  %633 = add nuw nsw i64 %631, %632
  %634 = icmp eq i64 %633, 2
  %635 = zext i1 %634 to i8
  store i8 %635, i8* %59, align 1
  %636 = add i64 %599, 25
  store i64 %636, i64* %PC.i, align 8
  %637 = load i32, i32* %566, align 4
  %638 = sext i32 %637 to i64
  store i64 %638, i64* %RCX.i347, align 8
  %639 = shl nsw i64 %638, 3
  %640 = add i64 %639, %611
  %641 = add i64 %599, 30
  store i64 %641, i64* %PC.i, align 8
  %642 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %23, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %643 = load i64, i64* %642, align 1
  %644 = inttoptr i64 %640 to i64*
  store i64 %643, i64* %644, align 8
  %645 = load i64, i64* %RBP.i, align 8
  %646 = add i64 %645, -44
  %647 = load i64, i64* %PC.i, align 8
  %648 = add i64 %647, 7
  store i64 %648, i64* %PC.i, align 8
  %649 = inttoptr i64 %646 to i32*
  store i32 0, i32* %649, align 4
  %.pre6 = load i64, i64* %PC.i, align 8
  br label %block_.L_400c87

block_.L_400c87:                                  ; preds = %block_400c93, %block_400c62
  %650 = phi i64 [ %854, %block_400c93 ], [ %.pre6, %block_400c62 ]
  %651 = load i64, i64* %RBP.i, align 8
  %652 = add i64 %651, -44
  %653 = add i64 %650, 3
  store i64 %653, i64* %PC.i, align 8
  %654 = inttoptr i64 %652 to i32*
  %655 = load i32, i32* %654, align 4
  %656 = zext i32 %655 to i64
  store i64 %656, i64* %RAX.i340, align 8
  %657 = add i64 %651, -8
  %658 = add i64 %650, 6
  store i64 %658, i64* %PC.i, align 8
  %659 = inttoptr i64 %657 to i32*
  %660 = load i32, i32* %659, align 4
  %661 = sub i32 %655, %660
  %662 = icmp ult i32 %655, %660
  %663 = zext i1 %662 to i8
  store i8 %663, i8* %54, align 1
  %664 = and i32 %661, 255
  %665 = tail call i32 @llvm.ctpop.i32(i32 %664)
  %666 = trunc i32 %665 to i8
  %667 = and i8 %666, 1
  %668 = xor i8 %667, 1
  store i8 %668, i8* %55, align 1
  %669 = xor i32 %660, %655
  %670 = xor i32 %669, %661
  %671 = lshr i32 %670, 4
  %672 = trunc i32 %671 to i8
  %673 = and i8 %672, 1
  store i8 %673, i8* %56, align 1
  %674 = icmp eq i32 %661, 0
  %675 = zext i1 %674 to i8
  store i8 %675, i8* %57, align 1
  %676 = lshr i32 %661, 31
  %677 = trunc i32 %676 to i8
  store i8 %677, i8* %58, align 1
  %678 = lshr i32 %655, 31
  %679 = lshr i32 %660, 31
  %680 = xor i32 %679, %678
  %681 = xor i32 %676, %678
  %682 = add nuw nsw i32 %681, %680
  %683 = icmp eq i32 %682, 2
  %684 = zext i1 %683 to i8
  store i8 %684, i8* %59, align 1
  %685 = icmp ne i8 %677, 0
  %686 = xor i1 %685, %683
  %.v12 = select i1 %686, i64 12, i64 112
  %687 = add i64 %650, %.v12
  store i64 %687, i64* %3, align 8
  br i1 %686, label %block_400c93, label %block_.L_400cf7

block_400c93:                                     ; preds = %block_.L_400c87
  %688 = add i64 %651, -24
  %689 = add i64 %687, 4
  store i64 %689, i64* %PC.i, align 8
  %690 = inttoptr i64 %688 to i64*
  %691 = load i64, i64* %690, align 8
  store i64 %691, i64* %RAX.i340, align 8
  %692 = add i64 %687, 8
  store i64 %692, i64* %PC.i, align 8
  %693 = load i32, i32* %654, align 4
  %694 = sext i32 %693 to i64
  %695 = mul nsw i64 %694, 8000
  store i64 %695, i64* %RCX.i347, align 8
  %696 = lshr i64 %695, 63
  %697 = add i64 %695, %691
  store i64 %697, i64* %RAX.i340, align 8
  %698 = icmp ult i64 %697, %691
  %699 = icmp ult i64 %697, %695
  %700 = or i1 %698, %699
  %701 = zext i1 %700 to i8
  store i8 %701, i8* %54, align 1
  %702 = trunc i64 %697 to i32
  %703 = and i32 %702, 255
  %704 = tail call i32 @llvm.ctpop.i32(i32 %703)
  %705 = trunc i32 %704 to i8
  %706 = and i8 %705, 1
  %707 = xor i8 %706, 1
  store i8 %707, i8* %55, align 1
  %708 = xor i64 %691, %697
  %709 = lshr i64 %708, 4
  %710 = trunc i64 %709 to i8
  %711 = and i8 %710, 1
  store i8 %711, i8* %56, align 1
  %712 = icmp eq i64 %697, 0
  %713 = zext i1 %712 to i8
  store i8 %713, i8* %57, align 1
  %714 = lshr i64 %697, 63
  %715 = trunc i64 %714 to i8
  store i8 %715, i8* %58, align 1
  %716 = lshr i64 %691, 63
  %717 = xor i64 %714, %716
  %718 = xor i64 %714, %696
  %719 = add nuw nsw i64 %717, %718
  %720 = icmp eq i64 %719, 2
  %721 = zext i1 %720 to i8
  store i8 %721, i8* %59, align 1
  %722 = add i64 %651, -52
  %723 = add i64 %687, 22
  store i64 %723, i64* %PC.i, align 8
  %724 = inttoptr i64 %722 to i32*
  %725 = load i32, i32* %724, align 4
  %726 = sext i32 %725 to i64
  store i64 %726, i64* %RCX.i347, align 8
  %727 = shl nsw i64 %726, 3
  %728 = add i64 %727, %697
  %729 = add i64 %687, 27
  store i64 %729, i64* %PC.i, align 8
  %730 = inttoptr i64 %728 to double*
  %731 = load double, double* %730, align 8
  store double %731, double* %68, align 1
  store double 0.000000e+00, double* %69, align 1
  %732 = add i64 %687, 31
  store i64 %732, i64* %PC.i, align 8
  %733 = load i64, i64* %690, align 8
  store i64 %733, i64* %RAX.i340, align 8
  %734 = add i64 %687, 35
  store i64 %734, i64* %PC.i, align 8
  %735 = load i32, i32* %654, align 4
  %736 = sext i32 %735 to i64
  %737 = mul nsw i64 %736, 8000
  store i64 %737, i64* %RCX.i347, align 8
  %738 = lshr i64 %737, 63
  %739 = add i64 %737, %733
  store i64 %739, i64* %RAX.i340, align 8
  %740 = icmp ult i64 %739, %733
  %741 = icmp ult i64 %739, %737
  %742 = or i1 %740, %741
  %743 = zext i1 %742 to i8
  store i8 %743, i8* %54, align 1
  %744 = trunc i64 %739 to i32
  %745 = and i32 %744, 255
  %746 = tail call i32 @llvm.ctpop.i32(i32 %745)
  %747 = trunc i32 %746 to i8
  %748 = and i8 %747, 1
  %749 = xor i8 %748, 1
  store i8 %749, i8* %55, align 1
  %750 = xor i64 %733, %739
  %751 = lshr i64 %750, 4
  %752 = trunc i64 %751 to i8
  %753 = and i8 %752, 1
  store i8 %753, i8* %56, align 1
  %754 = icmp eq i64 %739, 0
  %755 = zext i1 %754 to i8
  store i8 %755, i8* %57, align 1
  %756 = lshr i64 %739, 63
  %757 = trunc i64 %756 to i8
  store i8 %757, i8* %58, align 1
  %758 = lshr i64 %733, 63
  %759 = xor i64 %756, %758
  %760 = xor i64 %756, %738
  %761 = add nuw nsw i64 %759, %760
  %762 = icmp eq i64 %761, 2
  %763 = zext i1 %762 to i8
  store i8 %763, i8* %59, align 1
  %764 = load i64, i64* %RBP.i, align 8
  %765 = add i64 %764, -56
  %766 = add i64 %687, 49
  store i64 %766, i64* %PC.i, align 8
  %767 = inttoptr i64 %765 to i32*
  %768 = load i32, i32* %767, align 4
  %769 = sext i32 %768 to i64
  store i64 %769, i64* %RCX.i347, align 8
  %770 = shl nsw i64 %769, 3
  %771 = add i64 %770, %739
  %772 = add i64 %687, 54
  store i64 %772, i64* %PC.i, align 8
  %773 = inttoptr i64 %771 to double*
  %774 = load double, double* %773, align 8
  %775 = fmul double %731, %774
  store double %775, double* %68, align 1
  store i64 0, i64* %61, align 1
  %776 = add i64 %764, -32
  %777 = add i64 %687, 58
  store i64 %777, i64* %PC.i, align 8
  %778 = inttoptr i64 %776 to i64*
  %779 = load i64, i64* %778, align 8
  store i64 %779, i64* %RAX.i340, align 8
  %780 = add i64 %764, -52
  %781 = add i64 %687, 62
  store i64 %781, i64* %PC.i, align 8
  %782 = inttoptr i64 %780 to i32*
  %783 = load i32, i32* %782, align 4
  %784 = sext i32 %783 to i64
  %785 = mul nsw i64 %784, 8000
  store i64 %785, i64* %RCX.i347, align 8
  %786 = lshr i64 %785, 63
  %787 = add i64 %785, %779
  store i64 %787, i64* %RAX.i340, align 8
  %788 = icmp ult i64 %787, %779
  %789 = icmp ult i64 %787, %785
  %790 = or i1 %788, %789
  %791 = zext i1 %790 to i8
  store i8 %791, i8* %54, align 1
  %792 = trunc i64 %787 to i32
  %793 = and i32 %792, 255
  %794 = tail call i32 @llvm.ctpop.i32(i32 %793)
  %795 = trunc i32 %794 to i8
  %796 = and i8 %795, 1
  %797 = xor i8 %796, 1
  store i8 %797, i8* %55, align 1
  %798 = xor i64 %779, %787
  %799 = lshr i64 %798, 4
  %800 = trunc i64 %799 to i8
  %801 = and i8 %800, 1
  store i8 %801, i8* %56, align 1
  %802 = icmp eq i64 %787, 0
  %803 = zext i1 %802 to i8
  store i8 %803, i8* %57, align 1
  %804 = lshr i64 %787, 63
  %805 = trunc i64 %804 to i8
  store i8 %805, i8* %58, align 1
  %806 = lshr i64 %779, 63
  %807 = xor i64 %804, %806
  %808 = xor i64 %804, %786
  %809 = add nuw nsw i64 %807, %808
  %810 = icmp eq i64 %809, 2
  %811 = zext i1 %810 to i8
  store i8 %811, i8* %59, align 1
  %812 = add i64 %687, 76
  store i64 %812, i64* %PC.i, align 8
  %813 = load i32, i32* %767, align 4
  %814 = sext i32 %813 to i64
  store i64 %814, i64* %RCX.i347, align 8
  %815 = shl nsw i64 %814, 3
  %816 = add i64 %815, %787
  %817 = add i64 %687, 81
  store i64 %817, i64* %PC.i, align 8
  %818 = inttoptr i64 %816 to double*
  %819 = load double, double* %818, align 8
  %820 = fadd double %775, %819
  store double %820, double* %68, align 1
  store i64 0, i64* %61, align 1
  %821 = add i64 %687, 86
  store i64 %821, i64* %PC.i, align 8
  store double %820, double* %818, align 8
  %822 = load i64, i64* %RBP.i, align 8
  %823 = add i64 %822, -44
  %824 = load i64, i64* %PC.i, align 8
  %825 = add i64 %824, 3
  store i64 %825, i64* %PC.i, align 8
  %826 = inttoptr i64 %823 to i32*
  %827 = load i32, i32* %826, align 4
  %828 = add i32 %827, 1
  %829 = zext i32 %828 to i64
  store i64 %829, i64* %RAX.i340, align 8
  %830 = icmp eq i32 %827, -1
  %831 = icmp eq i32 %828, 0
  %832 = or i1 %830, %831
  %833 = zext i1 %832 to i8
  store i8 %833, i8* %54, align 1
  %834 = and i32 %828, 255
  %835 = tail call i32 @llvm.ctpop.i32(i32 %834)
  %836 = trunc i32 %835 to i8
  %837 = and i8 %836, 1
  %838 = xor i8 %837, 1
  store i8 %838, i8* %55, align 1
  %839 = xor i32 %827, %828
  %840 = lshr i32 %839, 4
  %841 = trunc i32 %840 to i8
  %842 = and i8 %841, 1
  store i8 %842, i8* %56, align 1
  %843 = icmp eq i32 %828, 0
  %844 = zext i1 %843 to i8
  store i8 %844, i8* %57, align 1
  %845 = lshr i32 %828, 31
  %846 = trunc i32 %845 to i8
  store i8 %846, i8* %58, align 1
  %847 = lshr i32 %827, 31
  %848 = xor i32 %845, %847
  %849 = add nuw nsw i32 %848, %845
  %850 = icmp eq i32 %849, 2
  %851 = zext i1 %850 to i8
  store i8 %851, i8* %59, align 1
  %852 = add i64 %824, 9
  store i64 %852, i64* %PC.i, align 8
  store i32 %828, i32* %826, align 4
  %853 = load i64, i64* %PC.i, align 8
  %854 = add i64 %853, -107
  store i64 %854, i64* %3, align 8
  br label %block_.L_400c87

block_.L_400cf7:                                  ; preds = %block_.L_400c87
  %855 = add i64 %651, -32
  %856 = add i64 %687, 4
  store i64 %856, i64* %PC.i, align 8
  %857 = inttoptr i64 %855 to i64*
  %858 = load i64, i64* %857, align 8
  store i64 %858, i64* %RAX.i340, align 8
  %859 = add i64 %651, -52
  %860 = add i64 %687, 8
  store i64 %860, i64* %PC.i, align 8
  %861 = inttoptr i64 %859 to i32*
  %862 = load i32, i32* %861, align 4
  %863 = sext i32 %862 to i64
  %864 = mul nsw i64 %863, 8000
  store i64 %864, i64* %RCX.i347, align 8
  %865 = lshr i64 %864, 63
  %866 = add i64 %864, %858
  store i64 %866, i64* %RAX.i340, align 8
  %867 = icmp ult i64 %866, %858
  %868 = icmp ult i64 %866, %864
  %869 = or i1 %867, %868
  %870 = zext i1 %869 to i8
  store i8 %870, i8* %54, align 1
  %871 = trunc i64 %866 to i32
  %872 = and i32 %871, 255
  %873 = tail call i32 @llvm.ctpop.i32(i32 %872)
  %874 = trunc i32 %873 to i8
  %875 = and i8 %874, 1
  %876 = xor i8 %875, 1
  store i8 %876, i8* %55, align 1
  %877 = xor i64 %858, %866
  %878 = lshr i64 %877, 4
  %879 = trunc i64 %878 to i8
  %880 = and i8 %879, 1
  store i8 %880, i8* %56, align 1
  %881 = icmp eq i64 %866, 0
  %882 = zext i1 %881 to i8
  store i8 %882, i8* %57, align 1
  %883 = lshr i64 %866, 63
  %884 = trunc i64 %883 to i8
  store i8 %884, i8* %58, align 1
  %885 = lshr i64 %858, 63
  %886 = xor i64 %883, %885
  %887 = xor i64 %883, %865
  %888 = add nuw nsw i64 %886, %887
  %889 = icmp eq i64 %888, 2
  %890 = zext i1 %889 to i8
  store i8 %890, i8* %59, align 1
  %891 = add i64 %651, -56
  %892 = add i64 %687, 22
  store i64 %892, i64* %PC.i, align 8
  %893 = inttoptr i64 %891 to i32*
  %894 = load i32, i32* %893, align 4
  %895 = sext i32 %894 to i64
  store i64 %895, i64* %RCX.i347, align 8
  %896 = shl nsw i64 %895, 3
  %897 = add i64 %896, %866
  %898 = add i64 %687, 27
  store i64 %898, i64* %PC.i, align 8
  %899 = inttoptr i64 %897 to i64*
  %900 = load i64, i64* %899, align 8
  %901 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %23, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %900, i64* %901, align 1
  store double 0.000000e+00, double* %69, align 1
  %902 = add i64 %687, 31
  store i64 %902, i64* %PC.i, align 8
  %903 = load i64, i64* %857, align 8
  store i64 %903, i64* %RAX.i340, align 8
  %904 = add i64 %687, 35
  store i64 %904, i64* %PC.i, align 8
  %905 = load i32, i32* %893, align 4
  %906 = sext i32 %905 to i64
  %907 = mul nsw i64 %906, 8000
  store i64 %907, i64* %RCX.i347, align 8
  %908 = lshr i64 %907, 63
  %909 = add i64 %907, %903
  store i64 %909, i64* %RAX.i340, align 8
  %910 = icmp ult i64 %909, %903
  %911 = icmp ult i64 %909, %907
  %912 = or i1 %910, %911
  %913 = zext i1 %912 to i8
  store i8 %913, i8* %54, align 1
  %914 = trunc i64 %909 to i32
  %915 = and i32 %914, 255
  %916 = tail call i32 @llvm.ctpop.i32(i32 %915)
  %917 = trunc i32 %916 to i8
  %918 = and i8 %917, 1
  %919 = xor i8 %918, 1
  store i8 %919, i8* %55, align 1
  %920 = xor i64 %903, %909
  %921 = lshr i64 %920, 4
  %922 = trunc i64 %921 to i8
  %923 = and i8 %922, 1
  store i8 %923, i8* %56, align 1
  %924 = icmp eq i64 %909, 0
  %925 = zext i1 %924 to i8
  store i8 %925, i8* %57, align 1
  %926 = lshr i64 %909, 63
  %927 = trunc i64 %926 to i8
  store i8 %927, i8* %58, align 1
  %928 = lshr i64 %903, 63
  %929 = xor i64 %926, %928
  %930 = xor i64 %926, %908
  %931 = add nuw nsw i64 %929, %930
  %932 = icmp eq i64 %931, 2
  %933 = zext i1 %932 to i8
  store i8 %933, i8* %59, align 1
  %934 = load i64, i64* %RBP.i, align 8
  %935 = add i64 %934, -52
  %936 = add i64 %687, 49
  store i64 %936, i64* %PC.i, align 8
  %937 = inttoptr i64 %935 to i32*
  %938 = load i32, i32* %937, align 4
  %939 = sext i32 %938 to i64
  store i64 %939, i64* %RCX.i347, align 8
  %940 = shl nsw i64 %939, 3
  %941 = add i64 %940, %909
  %942 = add i64 %687, 54
  store i64 %942, i64* %PC.i, align 8
  %943 = inttoptr i64 %941 to i64*
  store i64 %900, i64* %943, align 8
  %944 = load i64, i64* %RBP.i, align 8
  %945 = add i64 %944, -56
  %946 = load i64, i64* %PC.i, align 8
  %947 = add i64 %946, 3
  store i64 %947, i64* %PC.i, align 8
  %948 = inttoptr i64 %945 to i32*
  %949 = load i32, i32* %948, align 4
  %950 = add i32 %949, 1
  %951 = zext i32 %950 to i64
  store i64 %951, i64* %RAX.i340, align 8
  %952 = icmp eq i32 %949, -1
  %953 = icmp eq i32 %950, 0
  %954 = or i1 %952, %953
  %955 = zext i1 %954 to i8
  store i8 %955, i8* %54, align 1
  %956 = and i32 %950, 255
  %957 = tail call i32 @llvm.ctpop.i32(i32 %956)
  %958 = trunc i32 %957 to i8
  %959 = and i8 %958, 1
  %960 = xor i8 %959, 1
  store i8 %960, i8* %55, align 1
  %961 = xor i32 %949, %950
  %962 = lshr i32 %961, 4
  %963 = trunc i32 %962 to i8
  %964 = and i8 %963, 1
  store i8 %964, i8* %56, align 1
  %965 = icmp eq i32 %950, 0
  %966 = zext i1 %965 to i8
  store i8 %966, i8* %57, align 1
  %967 = lshr i32 %950, 31
  %968 = trunc i32 %967 to i8
  store i8 %968, i8* %58, align 1
  %969 = lshr i32 %949, 31
  %970 = xor i32 %967, %969
  %971 = add nuw nsw i32 %970, %967
  %972 = icmp eq i32 %971, 2
  %973 = zext i1 %972 to i8
  store i8 %973, i8* %59, align 1
  %974 = add i64 %946, 9
  store i64 %974, i64* %PC.i, align 8
  store i32 %950, i32* %948, align 4
  %975 = load i64, i64* %PC.i, align 8
  %976 = add i64 %975, -224
  store i64 %976, i64* %3, align 8
  br label %block_.L_400c56

block_.L_400d3b:                                  ; preds = %block_.L_400c56
  %977 = add i64 %563, -52
  %978 = add i64 %599, 8
  store i64 %978, i64* %PC.i, align 8
  %979 = inttoptr i64 %977 to i32*
  %980 = load i32, i32* %979, align 4
  %981 = add i32 %980, 1
  %982 = zext i32 %981 to i64
  store i64 %982, i64* %RAX.i340, align 8
  %983 = icmp eq i32 %980, -1
  %984 = icmp eq i32 %981, 0
  %985 = or i1 %983, %984
  %986 = zext i1 %985 to i8
  store i8 %986, i8* %54, align 1
  %987 = and i32 %981, 255
  %988 = tail call i32 @llvm.ctpop.i32(i32 %987)
  %989 = trunc i32 %988 to i8
  %990 = and i8 %989, 1
  %991 = xor i8 %990, 1
  store i8 %991, i8* %55, align 1
  %992 = xor i32 %980, %981
  %993 = lshr i32 %992, 4
  %994 = trunc i32 %993 to i8
  %995 = and i8 %994, 1
  store i8 %995, i8* %56, align 1
  %996 = icmp eq i32 %981, 0
  %997 = zext i1 %996 to i8
  store i8 %997, i8* %57, align 1
  %998 = lshr i32 %981, 31
  %999 = trunc i32 %998 to i8
  store i8 %999, i8* %58, align 1
  %1000 = lshr i32 %980, 31
  %1001 = xor i32 %998, %1000
  %1002 = add nuw nsw i32 %1001, %998
  %1003 = icmp eq i32 %1002, 2
  %1004 = zext i1 %1003 to i8
  store i8 %1004, i8* %59, align 1
  %1005 = add i64 %599, 14
  store i64 %1005, i64* %PC.i, align 8
  store i32 %981, i32* %979, align 4
  %1006 = load i64, i64* %PC.i, align 8
  %1007 = add i64 %1006, -261
  store i64 %1007, i64* %3, align 8
  br label %block_.L_400c44

block_.L_400d4e:                                  ; preds = %block_.L_400c44
  %1008 = add i64 %555, 1
  store i64 %1008, i64* %PC.i, align 8
  %1009 = load i64, i64* %6, align 8
  %1010 = add i64 %1009, 8
  %1011 = inttoptr i64 %1009 to i64*
  %1012 = load i64, i64* %1011, align 8
  store i64 %1012, i64* %RBP.i, align 8
  store i64 %1010, i64* %6, align 8
  %1013 = add i64 %555, 2
  store i64 %1013, i64* %PC.i, align 8
  %1014 = inttoptr i64 %1010 to i64*
  %1015 = load i64, i64* %1014, align 8
  store i64 %1015, i64* %3, align 8
  %1016 = add i64 %1009, 16
  store i64 %1016, i64* %6, align 8
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

define %struct.Memory* @routine_movl__esi__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rdx__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rcx__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__r8__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %R8, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_jge_.L_400bc5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
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

define %struct.Memory* @routine_cmpl_MINUS0x8__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -8
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

define %struct.Memory* @routine_jge_.L_400b9c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_imulq__0x1f40___rcx___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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
  %10 = mul nsw i128 %9, 8000
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RCX, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i128 %10 to i32
  %17 = and i32 %16, 192
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

define %struct.Memory* @routine_addsd___rax__rcx_8____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
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
  %14 = fadd double %11, %13
  store double %14, double* %10, align 1
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

define %struct.Memory* @routine_jmpq_.L_400b55(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x10__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
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

define %struct.Memory* @routine_movsd__xmm1____rax__rcx_8_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %10 = load i64, i64* %9, align 1
  %11 = inttoptr i64 %6 to i64*
  store i64 %10, i64* %11, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_jmpq_.L_400b32(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_400c3d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_jge_.L_400c2a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_subsd__xmm0___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
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
  %11 = fsub double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400bdf(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400c2f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400bcc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x34__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_400d4e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movl__eax__MINUS0x38__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -56
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x38__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_400d3b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x38__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_400cf7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_mulsd___rax__rcx_8____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
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
  %14 = fmul double %11, %13
  store double %14, double* %10, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400c87(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400c56(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400d40(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x34__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_jmpq_.L_400c44(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
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
