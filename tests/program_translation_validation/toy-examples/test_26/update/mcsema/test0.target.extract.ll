; ModuleID = 'mcsema/test0.target.opt.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

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

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: alwaysinline
define %struct.Memory* @update(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5 = getelementptr inbounds %struct.GPR, %struct.GPR* %4, i32 0, i32 33
  %6 = getelementptr inbounds %struct.Reg, %struct.Reg* %5, i32 0, i32 0
  %PC.i = bitcast %union.anon* %6 to i64*
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %4, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP.i = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RBP.i
  %10 = add i64 %1, 1
  store i64 %10, i64* %PC.i
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = add i64 %12, -8
  %14 = inttoptr i64 %13 to i64*
  store i64 %9, i64* %14
  %15 = getelementptr inbounds %struct.GPR, %struct.GPR* %4, i32 0, i32 13
  %16 = getelementptr inbounds %struct.Reg, %struct.Reg* %15, i32 0, i32 0
  %17 = load i64, i64* %PC.i
  %18 = add i64 %17, 3
  store i64 %13, i64* %RBP.i, align 8
  %19 = getelementptr inbounds %struct.GPR, %struct.GPR* %4, i32 0, i32 3
  %20 = getelementptr inbounds %struct.Reg, %struct.Reg* %19, i32 0, i32 0
  %RBX.i223 = bitcast %union.anon* %20 to i64*
  %21 = load i64, i64* %RBX.i223
  %22 = add i64 %18, 1
  store i64 %22, i64* %PC.i
  %23 = add i64 %13, -8
  %24 = inttoptr i64 %23 to i64*
  store i64 %21, i64* %24
  store i64 %23, i64* %11, align 8
  %25 = getelementptr inbounds %struct.GPR, %struct.GPR* %4, i32 0, i32 1
  %26 = getelementptr inbounds %struct.Reg, %struct.Reg* %25, i32 0, i32 0
  %RAX.i220 = bitcast %union.anon* %26 to i64*
  %27 = load i64, i64* %RBP.i
  %28 = add i64 %27, 48
  %29 = load i64, i64* %PC.i
  %30 = add i64 %29, 4
  store i64 %30, i64* %PC.i
  %31 = inttoptr i64 %28 to i64*
  %32 = load i64, i64* %31
  store i64 %32, i64* %RAX.i220, align 8
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %4, i32 0, i32 21
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %R10.i218 = bitcast %union.anon* %34 to i64*
  %35 = add i64 %27, 40
  %36 = add i64 %30, 4
  store i64 %36, i64* %PC.i
  %37 = inttoptr i64 %35 to i64*
  %38 = load i64, i64* %37
  store i64 %38, i64* %R10.i218, align 8
  %39 = getelementptr inbounds %struct.GPR, %struct.GPR* %4, i32 0, i32 23
  %40 = getelementptr inbounds %struct.Reg, %struct.Reg* %39, i32 0, i32 0
  %R11.i215 = bitcast %union.anon* %40 to i64*
  %41 = add i64 %27, 24
  %42 = add i64 %36, 4
  store i64 %41, i64* %R11.i215, align 8
  %43 = add i64 %27, 16
  %44 = add i64 %42, 3
  store i64 %44, i64* %PC.i
  %45 = inttoptr i64 %43 to i32*
  %46 = load i32, i32* %45
  %47 = zext i32 %46 to i64
  store i64 %47, i64* %RBX.i223, align 8
  %48 = getelementptr inbounds %struct.GPR, %struct.GPR* %4, i32 0, i32 11
  %49 = getelementptr inbounds %struct.Reg, %struct.Reg* %48, i32 0, i32 0
  %RDI.i208 = bitcast %union.anon* %49 to i64*
  %50 = sub i64 %27, 56
  %51 = load i64, i64* %RDI.i208
  %52 = add i64 %44, 4
  store i64 %52, i64* %PC.i
  %53 = inttoptr i64 %50 to i64*
  store i64 %51, i64* %53
  %54 = getelementptr inbounds %struct.GPR, %struct.GPR* %4, i32 0, i32 9
  %55 = getelementptr inbounds %struct.Reg, %struct.Reg* %54, i32 0, i32 0
  %ESI.i205 = bitcast %union.anon* %55 to i32*
  %56 = load i64, i64* %RBP.i
  %57 = sub i64 %56, 48
  %58 = load i32, i32* %ESI.i205
  %59 = load i64, i64* %PC.i
  %60 = add i64 %59, 3
  store i64 %60, i64* %PC.i
  %61 = inttoptr i64 %57 to i32*
  store i32 %58, i32* %61
  %RSI.i202 = bitcast %union.anon* %55 to i64*
  %62 = load i64, i64* %RBP.i
  %63 = sub i64 %62, 48
  %64 = load i64, i64* %PC.i
  %65 = add i64 %64, 3
  store i64 %65, i64* %PC.i
  %66 = inttoptr i64 %63 to i32*
  %67 = load i32, i32* %66
  %68 = zext i32 %67 to i64
  store i64 %68, i64* %RSI.i202, align 8
  %69 = sub i64 %62, 32
  %70 = add i64 %65, 3
  store i64 %70, i64* %PC.i
  %71 = inttoptr i64 %69 to i32*
  store i32 %67, i32* %71
  %72 = load i64, i64* %RBP.i
  %73 = sub i64 %72, 56
  %74 = load i64, i64* %PC.i
  %75 = add i64 %74, 4
  store i64 %75, i64* %PC.i
  %76 = inttoptr i64 %73 to i64*
  %77 = load i64, i64* %76
  store i64 %77, i64* %RDI.i208, align 8
  %78 = sub i64 %72, 40
  %79 = add i64 %75, 4
  store i64 %79, i64* %PC.i
  %80 = inttoptr i64 %78 to i64*
  store i64 %77, i64* %80
  %81 = getelementptr inbounds %struct.GPR, %struct.GPR* %4, i32 0, i32 7
  %82 = getelementptr inbounds %struct.Reg, %struct.Reg* %81, i32 0, i32 0
  %RDX.i191 = bitcast %union.anon* %82 to i64*
  %83 = load i64, i64* %RBP.i
  %84 = sub i64 %83, 64
  %85 = load i64, i64* %RDX.i191
  %86 = load i64, i64* %PC.i
  %87 = add i64 %86, 4
  store i64 %87, i64* %PC.i
  %88 = inttoptr i64 %84 to i64*
  store i64 %85, i64* %88
  %89 = getelementptr inbounds %struct.GPR, %struct.GPR* %4, i32 0, i32 5
  %90 = getelementptr inbounds %struct.Reg, %struct.Reg* %89, i32 0, i32 0
  %RCX.i188 = bitcast %union.anon* %90 to i64*
  %91 = load i64, i64* %RBP.i
  %92 = sub i64 %91, 72
  %93 = load i64, i64* %RCX.i188
  %94 = load i64, i64* %PC.i
  %95 = add i64 %94, 4
  store i64 %95, i64* %PC.i
  %96 = inttoptr i64 %92 to i64*
  store i64 %93, i64* %96
  %97 = getelementptr inbounds %struct.GPR, %struct.GPR* %4, i32 0, i32 17
  %98 = getelementptr inbounds %struct.Reg, %struct.Reg* %97, i32 0, i32 0
  %R8D.i185 = bitcast %union.anon* %98 to i32*
  %99 = load i64, i64* %RBP.i
  %100 = sub i64 %99, 76
  %101 = load i32, i32* %R8D.i185
  %102 = load i64, i64* %PC.i
  %103 = add i64 %102, 4
  store i64 %103, i64* %PC.i
  %104 = inttoptr i64 %100 to i32*
  store i32 %101, i32* %104
  %105 = getelementptr inbounds %struct.GPR, %struct.GPR* %4, i32 0, i32 19
  %106 = getelementptr inbounds %struct.Reg, %struct.Reg* %105, i32 0, i32 0
  %R9D.i182 = bitcast %union.anon* %106 to i32*
  %107 = load i64, i64* %RBP.i
  %108 = sub i64 %107, 80
  %109 = load i32, i32* %R9D.i182
  %110 = load i64, i64* %PC.i
  %111 = add i64 %110, 4
  store i64 %111, i64* %PC.i
  %112 = inttoptr i64 %108 to i32*
  store i32 %109, i32* %112
  %113 = load i64, i64* %RBP.i
  %114 = sub i64 %113, 40
  %115 = load i64, i64* %PC.i
  %116 = add i64 %115, 3
  store i64 %116, i64* %PC.i
  %117 = inttoptr i64 %114 to i32*
  %118 = load i32, i32* %117
  %119 = zext i32 %118 to i64
  store i64 %119, i64* %RSI.i202, align 8
  %120 = sub i64 %113, 64
  %121 = add i64 %116, 4
  store i64 %121, i64* %PC.i
  %122 = inttoptr i64 %120 to i64*
  %123 = load i64, i64* %122
  store i64 %123, i64* %RCX.i188, align 8
  %124 = bitcast i32* %R8D.i185 to i64*
  %125 = add i64 %121, 3
  store i64 %125, i64* %PC.i
  %126 = inttoptr i64 %123 to i32*
  %127 = load i32, i32* %126
  %128 = zext i32 %127 to i64
  store i64 %128, i64* %124, align 8
  %129 = add i64 %125, 3
  %130 = add i32 %127, %118
  %131 = zext i32 %130 to i64
  store i64 %131, i64* %RSI.i202, align 8
  %132 = icmp ult i32 %130, %118
  %133 = icmp ult i32 %130, %127
  %134 = or i1 %132, %133
  %135 = zext i1 %134 to i8
  %136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %135, i8* %136, align 1
  %137 = and i32 %130, 255
  %138 = call i32 @llvm.ctpop.i32(i32 %137)
  %139 = trunc i32 %138 to i8
  %140 = and i8 %139, 1
  %141 = xor i8 %140, 1
  %142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %141, i8* %142, align 1
  %143 = xor i64 %128, %119
  %144 = trunc i64 %143 to i32
  %145 = xor i32 %144, %130
  %146 = lshr i32 %145, 4
  %147 = trunc i32 %146 to i8
  %148 = and i8 %147, 1
  %149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %148, i8* %149, align 1
  %150 = icmp eq i32 %130, 0
  %151 = zext i1 %150 to i8
  %152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %151, i8* %152, align 1
  %153 = lshr i32 %130, 31
  %154 = trunc i32 %153 to i8
  %155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %154, i8* %155, align 1
  %156 = lshr i32 %118, 31
  %157 = lshr i32 %127, 31
  %158 = xor i32 %153, %156
  %159 = xor i32 %153, %157
  %160 = add i32 %158, %159
  %161 = icmp eq i32 %160, 2
  %162 = zext i1 %161 to i8
  %163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %162, i8* %163, align 1
  %164 = sub i64 %113, 72
  %165 = add i64 %129, 4
  store i64 %165, i64* %PC.i
  %166 = inttoptr i64 %164 to i64*
  %167 = load i64, i64* %166
  store i64 %167, i64* %RCX.i188, align 8
  %168 = add i64 %165, 3
  store i64 %168, i64* %PC.i
  %169 = inttoptr i64 %167 to i32*
  %170 = load i32, i32* %169
  %171 = zext i32 %170 to i64
  store i64 %171, i64* %124, align 8
  %172 = add i64 %168, 3
  %173 = add i32 %170, %130
  %174 = zext i32 %173 to i64
  store i64 %174, i64* %RSI.i202, align 8
  %175 = icmp ult i32 %173, %130
  %176 = icmp ult i32 %173, %170
  %177 = or i1 %175, %176
  %178 = zext i1 %177 to i8
  store i8 %178, i8* %136, align 1
  %179 = and i32 %173, 255
  %180 = call i32 @llvm.ctpop.i32(i32 %179)
  %181 = trunc i32 %180 to i8
  %182 = and i8 %181, 1
  %183 = xor i8 %182, 1
  store i8 %183, i8* %142, align 1
  %184 = xor i64 %171, %131
  %185 = trunc i64 %184 to i32
  %186 = xor i32 %185, %173
  %187 = lshr i32 %186, 4
  %188 = trunc i32 %187 to i8
  %189 = and i8 %188, 1
  store i8 %189, i8* %149, align 1
  %190 = icmp eq i32 %173, 0
  %191 = zext i1 %190 to i8
  store i8 %191, i8* %152, align 1
  %192 = lshr i32 %173, 31
  %193 = trunc i32 %192 to i8
  store i8 %193, i8* %155, align 1
  %194 = lshr i32 %170, 31
  %195 = xor i32 %192, %153
  %196 = xor i32 %192, %194
  %197 = add i32 %195, %196
  %198 = icmp eq i32 %197, 2
  %199 = zext i1 %198 to i8
  store i8 %199, i8* %163, align 1
  %200 = load i64, i64* %R11.i215
  %201 = add i64 %172, 3
  store i64 %201, i64* %PC.i
  %202 = inttoptr i64 %200 to i32*
  %203 = load i32, i32* %202
  %204 = zext i32 %203 to i64
  store i64 %204, i64* %124, align 8
  %205 = load i64, i64* %RBP.i
  %206 = add i64 %205, 40
  %207 = add i64 %201, 4
  store i64 %207, i64* %PC.i
  %208 = inttoptr i64 %206 to i64*
  %209 = load i64, i64* %208
  store i64 %209, i64* %RCX.i188, align 8
  %210 = bitcast i32* %R9D.i182 to i64*
  %211 = add i64 %207, 3
  store i64 %211, i64* %PC.i
  %212 = inttoptr i64 %209 to i32*
  %213 = load i32, i32* %212
  %214 = zext i32 %213 to i64
  store i64 %214, i64* %210, align 8
  %215 = add i64 %211, 3
  %216 = add i32 %213, %203
  %217 = zext i32 %216 to i64
  store i64 %217, i64* %124, align 8
  %218 = icmp ult i32 %216, %203
  %219 = icmp ult i32 %216, %213
  %220 = or i1 %218, %219
  %221 = zext i1 %220 to i8
  store i8 %221, i8* %136, align 1
  %222 = and i32 %216, 255
  %223 = call i32 @llvm.ctpop.i32(i32 %222)
  %224 = trunc i32 %223 to i8
  %225 = and i8 %224, 1
  %226 = xor i8 %225, 1
  store i8 %226, i8* %142, align 1
  %227 = xor i64 %214, %204
  %228 = trunc i64 %227 to i32
  %229 = xor i32 %228, %216
  %230 = lshr i32 %229, 4
  %231 = trunc i32 %230 to i8
  %232 = and i8 %231, 1
  store i8 %232, i8* %149, align 1
  %233 = icmp eq i32 %216, 0
  %234 = zext i1 %233 to i8
  store i8 %234, i8* %152, align 1
  %235 = lshr i32 %216, 31
  %236 = trunc i32 %235 to i8
  store i8 %236, i8* %155, align 1
  %237 = lshr i32 %203, 31
  %238 = lshr i32 %213, 31
  %239 = xor i32 %235, %237
  %240 = xor i32 %235, %238
  %241 = add i32 %239, %240
  %242 = icmp eq i32 %241, 2
  %243 = zext i1 %242 to i8
  store i8 %243, i8* %163, align 1
  %244 = add i64 %205, 48
  %245 = add i64 %215, 4
  store i64 %245, i64* %PC.i
  %246 = inttoptr i64 %244 to i64*
  %247 = load i64, i64* %246
  store i64 %247, i64* %RCX.i188, align 8
  %248 = add i64 %245, 3
  store i64 %248, i64* %PC.i
  %249 = inttoptr i64 %247 to i32*
  %250 = load i32, i32* %249
  %251 = zext i32 %250 to i64
  store i64 %251, i64* %210, align 8
  %252 = add i64 %248, 3
  %253 = add i32 %250, %216
  %254 = zext i32 %253 to i64
  store i64 %254, i64* %124, align 8
  %255 = lshr i32 %253, 31
  %256 = load i64, i64* %RSI.i202
  %257 = add i64 %252, 3
  %258 = trunc i64 %256 to i32
  %259 = add i32 %253, %258
  %260 = zext i32 %259 to i64
  store i64 %260, i64* %RSI.i202, align 8
  %261 = icmp ult i32 %259, %258
  %262 = icmp ult i32 %259, %253
  %263 = or i1 %261, %262
  %264 = zext i1 %263 to i8
  store i8 %264, i8* %136, align 1
  %265 = and i32 %259, 255
  %266 = call i32 @llvm.ctpop.i32(i32 %265)
  %267 = trunc i32 %266 to i8
  %268 = and i8 %267, 1
  %269 = xor i8 %268, 1
  store i8 %269, i8* %142, align 1
  %270 = xor i64 %254, %256
  %271 = trunc i64 %270 to i32
  %272 = xor i32 %271, %259
  %273 = lshr i32 %272, 4
  %274 = trunc i32 %273 to i8
  %275 = and i8 %274, 1
  store i8 %275, i8* %149, align 1
  %276 = icmp eq i32 %259, 0
  %277 = zext i1 %276 to i8
  store i8 %277, i8* %152, align 1
  %278 = lshr i32 %259, 31
  %279 = trunc i32 %278 to i8
  store i8 %279, i8* %155, align 1
  %280 = lshr i32 %258, 31
  %281 = xor i32 %278, %280
  %282 = xor i32 %278, %255
  %283 = add i32 %281, %282
  %284 = icmp eq i32 %283, 2
  %285 = zext i1 %284 to i8
  store i8 %285, i8* %163, align 1
  %286 = load i64, i64* %RBP.i
  %287 = sub i64 %286, 96
  %288 = add i64 %257, 3
  store i64 %288, i64* %PC.i
  %289 = inttoptr i64 %287 to i32*
  store i32 %259, i32* %289
  %290 = load i64, i64* %RBP.i
  %291 = sub i64 %290, 36
  %292 = load i64, i64* %PC.i
  %293 = add i64 %292, 3
  store i64 %293, i64* %PC.i
  %294 = inttoptr i64 %291 to i32*
  %295 = load i32, i32* %294
  %296 = zext i32 %295 to i64
  store i64 %296, i64* %RSI.i202, align 8
  %297 = sub i64 %290, 64
  %298 = add i64 %293, 4
  store i64 %298, i64* %PC.i
  %299 = inttoptr i64 %297 to i64*
  %300 = load i64, i64* %299
  store i64 %300, i64* %RCX.i188, align 8
  %301 = add i64 %300, 4
  %302 = add i64 %298, 4
  store i64 %302, i64* %PC.i
  %303 = inttoptr i64 %301 to i32*
  %304 = load i32, i32* %303
  %305 = zext i32 %304 to i64
  store i64 %305, i64* %124, align 8
  %306 = add i64 %302, 3
  %307 = add i32 %304, %295
  %308 = zext i32 %307 to i64
  store i64 %308, i64* %RSI.i202, align 8
  %309 = icmp ult i32 %307, %295
  %310 = icmp ult i32 %307, %304
  %311 = or i1 %309, %310
  %312 = zext i1 %311 to i8
  store i8 %312, i8* %136, align 1
  %313 = and i32 %307, 255
  %314 = call i32 @llvm.ctpop.i32(i32 %313)
  %315 = trunc i32 %314 to i8
  %316 = and i8 %315, 1
  %317 = xor i8 %316, 1
  store i8 %317, i8* %142, align 1
  %318 = xor i64 %305, %296
  %319 = trunc i64 %318 to i32
  %320 = xor i32 %319, %307
  %321 = lshr i32 %320, 4
  %322 = trunc i32 %321 to i8
  %323 = and i8 %322, 1
  store i8 %323, i8* %149, align 1
  %324 = icmp eq i32 %307, 0
  %325 = zext i1 %324 to i8
  store i8 %325, i8* %152, align 1
  %326 = lshr i32 %307, 31
  %327 = trunc i32 %326 to i8
  store i8 %327, i8* %155, align 1
  %328 = lshr i32 %295, 31
  %329 = lshr i32 %304, 31
  %330 = xor i32 %326, %328
  %331 = xor i32 %326, %329
  %332 = add i32 %330, %331
  %333 = icmp eq i32 %332, 2
  %334 = zext i1 %333 to i8
  store i8 %334, i8* %163, align 1
  %335 = sub i64 %290, 72
  %336 = add i64 %306, 4
  store i64 %336, i64* %PC.i
  %337 = inttoptr i64 %335 to i64*
  %338 = load i64, i64* %337
  store i64 %338, i64* %RCX.i188, align 8
  %339 = add i64 %338, 4
  %340 = add i64 %336, 4
  store i64 %340, i64* %PC.i
  %341 = inttoptr i64 %339 to i32*
  %342 = load i32, i32* %341
  %343 = zext i32 %342 to i64
  store i64 %343, i64* %124, align 8
  %344 = add i64 %340, 3
  %345 = add i32 %342, %307
  %346 = zext i32 %345 to i64
  store i64 %346, i64* %RSI.i202, align 8
  %347 = icmp ult i32 %345, %307
  %348 = icmp ult i32 %345, %342
  %349 = or i1 %347, %348
  %350 = zext i1 %349 to i8
  store i8 %350, i8* %136, align 1
  %351 = and i32 %345, 255
  %352 = call i32 @llvm.ctpop.i32(i32 %351)
  %353 = trunc i32 %352 to i8
  %354 = and i8 %353, 1
  %355 = xor i8 %354, 1
  store i8 %355, i8* %142, align 1
  %356 = xor i64 %343, %308
  %357 = trunc i64 %356 to i32
  %358 = xor i32 %357, %345
  %359 = lshr i32 %358, 4
  %360 = trunc i32 %359 to i8
  %361 = and i8 %360, 1
  store i8 %361, i8* %149, align 1
  %362 = icmp eq i32 %345, 0
  %363 = zext i1 %362 to i8
  store i8 %363, i8* %152, align 1
  %364 = lshr i32 %345, 31
  %365 = trunc i32 %364 to i8
  store i8 %365, i8* %155, align 1
  %366 = lshr i32 %342, 31
  %367 = xor i32 %364, %326
  %368 = xor i32 %364, %366
  %369 = add i32 %367, %368
  %370 = icmp eq i32 %369, 2
  %371 = zext i1 %370 to i8
  store i8 %371, i8* %163, align 1
  %372 = load i64, i64* %R11.i215
  %373 = add i64 %372, 4
  %374 = add i64 %344, 4
  store i64 %374, i64* %PC.i
  %375 = inttoptr i64 %373 to i32*
  %376 = load i32, i32* %375
  %377 = zext i32 %376 to i64
  store i64 %377, i64* %124, align 8
  %378 = load i64, i64* %RBP.i
  %379 = add i64 %378, 40
  %380 = add i64 %374, 4
  store i64 %380, i64* %PC.i
  %381 = inttoptr i64 %379 to i64*
  %382 = load i64, i64* %381
  store i64 %382, i64* %RCX.i188, align 8
  %383 = add i64 %382, 4
  %384 = add i64 %380, 4
  store i64 %384, i64* %PC.i
  %385 = inttoptr i64 %383 to i32*
  %386 = load i32, i32* %385
  %387 = zext i32 %386 to i64
  store i64 %387, i64* %210, align 8
  %388 = add i64 %384, 3
  %389 = add i32 %386, %376
  %390 = zext i32 %389 to i64
  store i64 %390, i64* %124, align 8
  %391 = icmp ult i32 %389, %376
  %392 = icmp ult i32 %389, %386
  %393 = or i1 %391, %392
  %394 = zext i1 %393 to i8
  store i8 %394, i8* %136, align 1
  %395 = and i32 %389, 255
  %396 = call i32 @llvm.ctpop.i32(i32 %395)
  %397 = trunc i32 %396 to i8
  %398 = and i8 %397, 1
  %399 = xor i8 %398, 1
  store i8 %399, i8* %142, align 1
  %400 = xor i64 %387, %377
  %401 = trunc i64 %400 to i32
  %402 = xor i32 %401, %389
  %403 = lshr i32 %402, 4
  %404 = trunc i32 %403 to i8
  %405 = and i8 %404, 1
  store i8 %405, i8* %149, align 1
  %406 = icmp eq i32 %389, 0
  %407 = zext i1 %406 to i8
  store i8 %407, i8* %152, align 1
  %408 = lshr i32 %389, 31
  %409 = trunc i32 %408 to i8
  store i8 %409, i8* %155, align 1
  %410 = lshr i32 %376, 31
  %411 = lshr i32 %386, 31
  %412 = xor i32 %408, %410
  %413 = xor i32 %408, %411
  %414 = add i32 %412, %413
  %415 = icmp eq i32 %414, 2
  %416 = zext i1 %415 to i8
  store i8 %416, i8* %163, align 1
  %417 = add i64 %378, 48
  %418 = add i64 %388, 4
  store i64 %418, i64* %PC.i
  %419 = inttoptr i64 %417 to i64*
  %420 = load i64, i64* %419
  store i64 %420, i64* %RCX.i188, align 8
  %421 = add i64 %420, 4
  %422 = add i64 %418, 4
  store i64 %422, i64* %PC.i
  %423 = inttoptr i64 %421 to i32*
  %424 = load i32, i32* %423
  %425 = zext i32 %424 to i64
  store i64 %425, i64* %210, align 8
  %426 = add i64 %422, 3
  %427 = add i32 %424, %389
  %428 = zext i32 %427 to i64
  store i64 %428, i64* %124, align 8
  %429 = lshr i32 %427, 31
  %430 = load i64, i64* %RSI.i202
  %431 = add i64 %426, 3
  %432 = trunc i64 %430 to i32
  %433 = add i32 %427, %432
  %434 = zext i32 %433 to i64
  store i64 %434, i64* %RSI.i202, align 8
  %435 = icmp ult i32 %433, %432
  %436 = icmp ult i32 %433, %427
  %437 = or i1 %435, %436
  %438 = zext i1 %437 to i8
  store i8 %438, i8* %136, align 1
  %439 = and i32 %433, 255
  %440 = call i32 @llvm.ctpop.i32(i32 %439)
  %441 = trunc i32 %440 to i8
  %442 = and i8 %441, 1
  %443 = xor i8 %442, 1
  store i8 %443, i8* %142, align 1
  %444 = xor i64 %428, %430
  %445 = trunc i64 %444 to i32
  %446 = xor i32 %445, %433
  %447 = lshr i32 %446, 4
  %448 = trunc i32 %447 to i8
  %449 = and i8 %448, 1
  store i8 %449, i8* %149, align 1
  %450 = icmp eq i32 %433, 0
  %451 = zext i1 %450 to i8
  store i8 %451, i8* %152, align 1
  %452 = lshr i32 %433, 31
  %453 = trunc i32 %452 to i8
  store i8 %453, i8* %155, align 1
  %454 = lshr i32 %432, 31
  %455 = xor i32 %452, %454
  %456 = xor i32 %452, %429
  %457 = add i32 %455, %456
  %458 = icmp eq i32 %457, 2
  %459 = zext i1 %458 to i8
  store i8 %459, i8* %163, align 1
  %460 = load i64, i64* %RBP.i
  %461 = sub i64 %460, 92
  %462 = add i64 %431, 3
  store i64 %462, i64* %PC.i
  %463 = inttoptr i64 %461 to i32*
  store i32 %433, i32* %463
  %464 = load i64, i64* %RBP.i
  %465 = sub i64 %464, 32
  %466 = load i64, i64* %PC.i
  %467 = add i64 %466, 3
  store i64 %467, i64* %PC.i
  %468 = inttoptr i64 %465 to i32*
  %469 = load i32, i32* %468
  %470 = zext i32 %469 to i64
  store i64 %470, i64* %RSI.i202, align 8
  %471 = sub i64 %464, 64
  %472 = add i64 %467, 4
  store i64 %472, i64* %PC.i
  %473 = inttoptr i64 %471 to i64*
  %474 = load i64, i64* %473
  store i64 %474, i64* %RCX.i188, align 8
  %475 = add i64 %474, 8
  %476 = add i64 %472, 4
  store i64 %476, i64* %PC.i
  %477 = inttoptr i64 %475 to i32*
  %478 = load i32, i32* %477
  %479 = zext i32 %478 to i64
  store i64 %479, i64* %124, align 8
  %480 = add i64 %476, 3
  %481 = add i32 %478, %469
  %482 = zext i32 %481 to i64
  store i64 %482, i64* %RSI.i202, align 8
  %483 = icmp ult i32 %481, %469
  %484 = icmp ult i32 %481, %478
  %485 = or i1 %483, %484
  %486 = zext i1 %485 to i8
  store i8 %486, i8* %136, align 1
  %487 = and i32 %481, 255
  %488 = call i32 @llvm.ctpop.i32(i32 %487)
  %489 = trunc i32 %488 to i8
  %490 = and i8 %489, 1
  %491 = xor i8 %490, 1
  store i8 %491, i8* %142, align 1
  %492 = xor i64 %479, %470
  %493 = trunc i64 %492 to i32
  %494 = xor i32 %493, %481
  %495 = lshr i32 %494, 4
  %496 = trunc i32 %495 to i8
  %497 = and i8 %496, 1
  store i8 %497, i8* %149, align 1
  %498 = icmp eq i32 %481, 0
  %499 = zext i1 %498 to i8
  store i8 %499, i8* %152, align 1
  %500 = lshr i32 %481, 31
  %501 = trunc i32 %500 to i8
  store i8 %501, i8* %155, align 1
  %502 = lshr i32 %469, 31
  %503 = lshr i32 %478, 31
  %504 = xor i32 %500, %502
  %505 = xor i32 %500, %503
  %506 = add i32 %504, %505
  %507 = icmp eq i32 %506, 2
  %508 = zext i1 %507 to i8
  store i8 %508, i8* %163, align 1
  %509 = sub i64 %464, 72
  %510 = add i64 %480, 4
  store i64 %510, i64* %PC.i
  %511 = inttoptr i64 %509 to i64*
  %512 = load i64, i64* %511
  store i64 %512, i64* %RCX.i188, align 8
  %513 = add i64 %512, 8
  %514 = add i64 %510, 4
  store i64 %514, i64* %PC.i
  %515 = inttoptr i64 %513 to i32*
  %516 = load i32, i32* %515
  %517 = zext i32 %516 to i64
  store i64 %517, i64* %124, align 8
  %518 = add i64 %514, 3
  %519 = add i32 %516, %481
  %520 = zext i32 %519 to i64
  store i64 %520, i64* %RSI.i202, align 8
  %521 = icmp ult i32 %519, %481
  %522 = icmp ult i32 %519, %516
  %523 = or i1 %521, %522
  %524 = zext i1 %523 to i8
  store i8 %524, i8* %136, align 1
  %525 = and i32 %519, 255
  %526 = call i32 @llvm.ctpop.i32(i32 %525)
  %527 = trunc i32 %526 to i8
  %528 = and i8 %527, 1
  %529 = xor i8 %528, 1
  store i8 %529, i8* %142, align 1
  %530 = xor i64 %517, %482
  %531 = trunc i64 %530 to i32
  %532 = xor i32 %531, %519
  %533 = lshr i32 %532, 4
  %534 = trunc i32 %533 to i8
  %535 = and i8 %534, 1
  store i8 %535, i8* %149, align 1
  %536 = icmp eq i32 %519, 0
  %537 = zext i1 %536 to i8
  store i8 %537, i8* %152, align 1
  %538 = lshr i32 %519, 31
  %539 = trunc i32 %538 to i8
  store i8 %539, i8* %155, align 1
  %540 = lshr i32 %516, 31
  %541 = xor i32 %538, %500
  %542 = xor i32 %538, %540
  %543 = add i32 %541, %542
  %544 = icmp eq i32 %543, 2
  %545 = zext i1 %544 to i8
  store i8 %545, i8* %163, align 1
  %546 = load i64, i64* %R11.i215
  %547 = add i64 %546, 8
  %548 = add i64 %518, 4
  store i64 %548, i64* %PC.i
  %549 = inttoptr i64 %547 to i32*
  %550 = load i32, i32* %549
  %551 = zext i32 %550 to i64
  store i64 %551, i64* %124, align 8
  %552 = load i64, i64* %RBP.i
  %553 = add i64 %552, 40
  %554 = add i64 %548, 4
  store i64 %554, i64* %PC.i
  %555 = inttoptr i64 %553 to i64*
  %556 = load i64, i64* %555
  store i64 %556, i64* %RCX.i188, align 8
  %557 = add i64 %556, 8
  %558 = add i64 %554, 4
  store i64 %558, i64* %PC.i
  %559 = inttoptr i64 %557 to i32*
  %560 = load i32, i32* %559
  %561 = zext i32 %560 to i64
  store i64 %561, i64* %210, align 8
  %562 = add i64 %558, 3
  %563 = add i32 %560, %550
  %564 = zext i32 %563 to i64
  store i64 %564, i64* %124, align 8
  %565 = icmp ult i32 %563, %550
  %566 = icmp ult i32 %563, %560
  %567 = or i1 %565, %566
  %568 = zext i1 %567 to i8
  store i8 %568, i8* %136, align 1
  %569 = and i32 %563, 255
  %570 = call i32 @llvm.ctpop.i32(i32 %569)
  %571 = trunc i32 %570 to i8
  %572 = and i8 %571, 1
  %573 = xor i8 %572, 1
  store i8 %573, i8* %142, align 1
  %574 = xor i64 %561, %551
  %575 = trunc i64 %574 to i32
  %576 = xor i32 %575, %563
  %577 = lshr i32 %576, 4
  %578 = trunc i32 %577 to i8
  %579 = and i8 %578, 1
  store i8 %579, i8* %149, align 1
  %580 = icmp eq i32 %563, 0
  %581 = zext i1 %580 to i8
  store i8 %581, i8* %152, align 1
  %582 = lshr i32 %563, 31
  %583 = trunc i32 %582 to i8
  store i8 %583, i8* %155, align 1
  %584 = lshr i32 %550, 31
  %585 = lshr i32 %560, 31
  %586 = xor i32 %582, %584
  %587 = xor i32 %582, %585
  %588 = add i32 %586, %587
  %589 = icmp eq i32 %588, 2
  %590 = zext i1 %589 to i8
  store i8 %590, i8* %163, align 1
  %591 = add i64 %552, 48
  %592 = add i64 %562, 4
  store i64 %592, i64* %PC.i
  %593 = inttoptr i64 %591 to i64*
  %594 = load i64, i64* %593
  store i64 %594, i64* %RCX.i188, align 8
  %595 = add i64 %594, 8
  %596 = add i64 %592, 4
  store i64 %596, i64* %PC.i
  %597 = inttoptr i64 %595 to i32*
  %598 = load i32, i32* %597
  %599 = zext i32 %598 to i64
  store i64 %599, i64* %210, align 8
  %600 = add i64 %596, 3
  %601 = add i32 %598, %563
  %602 = zext i32 %601 to i64
  store i64 %602, i64* %124, align 8
  %603 = lshr i32 %601, 31
  %604 = load i64, i64* %RSI.i202
  %605 = add i64 %600, 3
  %606 = trunc i64 %604 to i32
  %607 = add i32 %601, %606
  %608 = zext i32 %607 to i64
  store i64 %608, i64* %RSI.i202, align 8
  %609 = icmp ult i32 %607, %606
  %610 = icmp ult i32 %607, %601
  %611 = or i1 %609, %610
  %612 = zext i1 %611 to i8
  store i8 %612, i8* %136, align 1
  %613 = and i32 %607, 255
  %614 = call i32 @llvm.ctpop.i32(i32 %613)
  %615 = trunc i32 %614 to i8
  %616 = and i8 %615, 1
  %617 = xor i8 %616, 1
  store i8 %617, i8* %142, align 1
  %618 = xor i64 %602, %604
  %619 = trunc i64 %618 to i32
  %620 = xor i32 %619, %607
  %621 = lshr i32 %620, 4
  %622 = trunc i32 %621 to i8
  %623 = and i8 %622, 1
  store i8 %623, i8* %149, align 1
  %624 = icmp eq i32 %607, 0
  %625 = zext i1 %624 to i8
  store i8 %625, i8* %152, align 1
  %626 = lshr i32 %607, 31
  %627 = trunc i32 %626 to i8
  store i8 %627, i8* %155, align 1
  %628 = lshr i32 %606, 31
  %629 = xor i32 %626, %628
  %630 = xor i32 %626, %603
  %631 = add i32 %629, %630
  %632 = icmp eq i32 %631, 2
  %633 = zext i1 %632 to i8
  store i8 %633, i8* %163, align 1
  %634 = load i64, i64* %RBP.i
  %635 = sub i64 %634, 88
  %636 = add i64 %605, 3
  store i64 %636, i64* %PC.i
  %637 = inttoptr i64 %635 to i32*
  store i32 %607, i32* %637
  %638 = load i64, i64* %RBP.i
  %639 = sub i64 %638, 88
  %640 = load i64, i64* %PC.i
  %641 = add i64 %640, 3
  store i64 %641, i64* %PC.i
  %642 = inttoptr i64 %639 to i32*
  %643 = load i32, i32* %642
  %644 = zext i32 %643 to i64
  store i64 %644, i64* %RSI.i202, align 8
  %645 = sub i64 %638, 16
  %646 = add i64 %641, 3
  store i64 %646, i64* %PC.i
  %647 = inttoptr i64 %645 to i32*
  store i32 %643, i32* %647
  %648 = load i64, i64* %RBP.i
  %649 = sub i64 %648, 96
  %650 = load i64, i64* %PC.i
  %651 = add i64 %650, 4
  store i64 %651, i64* %PC.i
  %652 = inttoptr i64 %649 to i64*
  %653 = load i64, i64* %652
  store i64 %653, i64* %RCX.i188, align 8
  %654 = sub i64 %648, 24
  %655 = add i64 %651, 4
  store i64 %655, i64* %PC.i
  %656 = inttoptr i64 %654 to i64*
  store i64 %653, i64* %656
  %657 = load i64, i64* %RBP.i
  %658 = sub i64 %657, 16
  %659 = load i64, i64* %PC.i
  %660 = add i64 %659, 3
  store i64 %660, i64* %PC.i
  %661 = inttoptr i64 %658 to i32*
  %662 = load i32, i32* %661
  %663 = zext i32 %662 to i64
  store i64 %663, i64* %RSI.i202, align 8
  %664 = sub i64 %657, 104
  %665 = add i64 %660, 3
  store i64 %665, i64* %PC.i
  %666 = inttoptr i64 %664 to i32*
  store i32 %662, i32* %666
  %667 = load i64, i64* %RBP.i
  %668 = sub i64 %667, 24
  %669 = load i64, i64* %PC.i
  %670 = add i64 %669, 4
  store i64 %670, i64* %PC.i
  %671 = inttoptr i64 %668 to i64*
  %672 = load i64, i64* %671
  store i64 %672, i64* %RCX.i188, align 8
  %673 = sub i64 %667, 112
  %674 = add i64 %670, 4
  store i64 %674, i64* %PC.i
  %675 = inttoptr i64 %673 to i64*
  store i64 %672, i64* %675
  %676 = load i64, i64* %RBP.i
  %677 = sub i64 %676, 112
  %678 = load i64, i64* %PC.i
  %679 = add i64 %678, 4
  store i64 %679, i64* %PC.i
  %680 = inttoptr i64 %677 to i64*
  %681 = load i64, i64* %680
  store i64 %681, i64* %RCX.i188, align 8
  %682 = sub i64 %676, 104
  %683 = add i64 %679, 3
  store i64 %683, i64* %PC.i
  %684 = inttoptr i64 %682 to i32*
  %685 = load i32, i32* %684
  %686 = zext i32 %685 to i64
  store i64 %686, i64* %RDX.i191, align 8
  %687 = sub i64 %676, 120
  %688 = load i64, i64* %RAX.i220
  %689 = add i64 %683, 4
  store i64 %689, i64* %PC.i
  %690 = inttoptr i64 %687 to i64*
  store i64 %688, i64* %690
  %691 = load i64, i64* %RCX.i188
  %692 = load i64, i64* %PC.i
  %693 = add i64 %692, 3
  store i64 %691, i64* %RAX.i220, align 8
  %EBX.i = bitcast %union.anon* %20 to i32*
  %694 = load i64, i64* %RBP.i
  %695 = sub i64 %694, 124
  %696 = load i32, i32* %EBX.i
  %697 = add i64 %693, 3
  store i64 %697, i64* %PC.i
  %698 = inttoptr i64 %695 to i32*
  store i32 %696, i32* %698
  %699 = load i64, i64* %RBP.i
  %700 = sub i64 %699, 136
  %701 = load i64, i64* %R10.i218
  %702 = load i64, i64* %PC.i
  %703 = add i64 %702, 7
  store i64 %703, i64* %PC.i
  %704 = inttoptr i64 %700 to i64*
  store i64 %701, i64* %704
  %705 = load i64, i64* %PC.i
  %706 = add i64 %705, 1
  store i64 %706, i64* %PC.i
  %707 = load i64, i64* %11, align 8
  %708 = add i64 %707, 8
  %709 = inttoptr i64 %707 to i64*
  %710 = load i64, i64* %709
  store i64 %710, i64* %RBX.i223, align 8
  store i64 %708, i64* %11, align 8
  %711 = add i64 %706, 1
  store i64 %711, i64* %PC.i
  %712 = add i64 %708, 8
  %713 = inttoptr i64 %708 to i64*
  %714 = load i64, i64* %713
  store i64 %714, i64* %RBP.i, align 8
  store i64 %712, i64* %11, align 8
  %715 = add i64 %711, 1
  store i64 %715, i64* %PC.i
  %716 = inttoptr i64 %712 to i64*
  %717 = load i64, i64* %716
  store i64 %717, i64* %3, align 8
  %718 = add i64 %712, 8
  store i64 %718, i64* %11, align 8
  ret %struct.Memory* %2
}

attributes #0 = { nounwind readnone }
attributes #1 = { alwaysinline }
