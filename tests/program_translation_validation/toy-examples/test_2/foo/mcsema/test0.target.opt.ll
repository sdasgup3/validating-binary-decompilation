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
define %struct.Memory* @foo(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  store i64 %13, i64* %11, align 8
  %15 = getelementptr inbounds %struct.GPR, %struct.GPR* %4, i32 0, i32 13
  %16 = getelementptr inbounds %struct.Reg, %struct.Reg* %15, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %16 to i64*
  %17 = load i64, i64* %PC.i
  %18 = add i64 %17, 3
  store i64 %13, i64* %RBP.i, align 8
  %19 = getelementptr inbounds %struct.GPR, %struct.GPR* %4, i32 0, i32 1
  %20 = getelementptr inbounds %struct.Reg, %struct.Reg* %19, i32 0, i32 0
  %RAX.i71 = bitcast %union.anon* %20 to i64*
  %21 = add i64 %13, 24
  %22 = add i64 %18, 3
  store i64 %22, i64* %PC.i
  %23 = inttoptr i64 %21 to i32*
  %24 = load i32, i32* %23
  %25 = zext i32 %24 to i64
  store i64 %25, i64* %RAX.i71, align 8
  %26 = getelementptr inbounds %struct.GPR, %struct.GPR* %4, i32 0, i32 21
  %27 = getelementptr inbounds %struct.Reg, %struct.Reg* %26, i32 0, i32 0
  %R10D.i68 = bitcast %union.anon* %27 to i32*
  %28 = bitcast i32* %R10D.i68 to i64*
  %29 = add i64 %13, 16
  %30 = add i64 %22, 4
  store i64 %30, i64* %PC.i
  %31 = inttoptr i64 %29 to i32*
  %32 = load i32, i32* %31
  %33 = zext i32 %32 to i64
  store i64 %33, i64* %28, align 8
  %34 = getelementptr inbounds %struct.GPR, %struct.GPR* %4, i32 0, i32 11
  %35 = getelementptr inbounds %struct.Reg, %struct.Reg* %34, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %35 to i32*
  %36 = sub i64 %13, 4
  %37 = load i32, i32* %EDI.i
  %38 = zext i32 %37 to i64
  %39 = add i64 %30, 3
  store i64 %39, i64* %PC.i
  %40 = inttoptr i64 %36 to i32*
  store i32 %37, i32* %40
  %41 = getelementptr inbounds %struct.GPR, %struct.GPR* %4, i32 0, i32 9
  %42 = getelementptr inbounds %struct.Reg, %struct.Reg* %41, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %42 to i32*
  %43 = load i64, i64* %RBP.i
  %44 = sub i64 %43, 8
  %45 = load i32, i32* %ESI.i
  %46 = zext i32 %45 to i64
  %47 = load i64, i64* %PC.i
  %48 = add i64 %47, 3
  store i64 %48, i64* %PC.i
  %49 = inttoptr i64 %44 to i32*
  store i32 %45, i32* %49
  %50 = getelementptr inbounds %struct.GPR, %struct.GPR* %4, i32 0, i32 7
  %51 = getelementptr inbounds %struct.Reg, %struct.Reg* %50, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %51 to i32*
  %52 = load i64, i64* %RBP.i
  %53 = sub i64 %52, 12
  %54 = load i32, i32* %EDX.i
  %55 = zext i32 %54 to i64
  %56 = load i64, i64* %PC.i
  %57 = add i64 %56, 3
  store i64 %57, i64* %PC.i
  %58 = inttoptr i64 %53 to i32*
  store i32 %54, i32* %58
  %59 = getelementptr inbounds %struct.GPR, %struct.GPR* %4, i32 0, i32 5
  %60 = getelementptr inbounds %struct.Reg, %struct.Reg* %59, i32 0, i32 0
  %ECX.i59 = bitcast %union.anon* %60 to i32*
  %61 = load i64, i64* %RBP.i
  %62 = sub i64 %61, 16
  %63 = load i32, i32* %ECX.i59
  %64 = zext i32 %63 to i64
  %65 = load i64, i64* %PC.i
  %66 = add i64 %65, 3
  store i64 %66, i64* %PC.i
  %67 = inttoptr i64 %62 to i32*
  store i32 %63, i32* %67
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %4, i32 0, i32 17
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %R8D.i = bitcast %union.anon* %69 to i32*
  %70 = load i64, i64* %RBP.i
  %71 = sub i64 %70, 20
  %72 = load i32, i32* %R8D.i
  %73 = zext i32 %72 to i64
  %74 = load i64, i64* %PC.i
  %75 = add i64 %74, 4
  store i64 %75, i64* %PC.i
  %76 = inttoptr i64 %71 to i32*
  store i32 %72, i32* %76
  %77 = getelementptr inbounds %struct.GPR, %struct.GPR* %4, i32 0, i32 19
  %78 = getelementptr inbounds %struct.Reg, %struct.Reg* %77, i32 0, i32 0
  %R9D.i = bitcast %union.anon* %78 to i32*
  %79 = load i64, i64* %RBP.i
  %80 = sub i64 %79, 24
  %81 = load i32, i32* %R9D.i
  %82 = zext i32 %81 to i64
  %83 = load i64, i64* %PC.i
  %84 = add i64 %83, 4
  store i64 %84, i64* %PC.i
  %85 = inttoptr i64 %80 to i32*
  store i32 %81, i32* %85
  %RCX.i52 = bitcast %union.anon* %60 to i64*
  %86 = load i64, i64* %RBP.i
  %87 = sub i64 %86, 4
  %88 = load i64, i64* %PC.i
  %89 = add i64 %88, 3
  store i64 %89, i64* %PC.i
  %90 = inttoptr i64 %87 to i32*
  %91 = load i32, i32* %90
  %92 = zext i32 %91 to i64
  store i64 %92, i64* %RCX.i52, align 8
  %93 = sub i64 %86, 8
  %94 = add i64 %89, 3
  store i64 %94, i64* %PC.i
  %95 = inttoptr i64 %93 to i32*
  %96 = load i32, i32* %95
  %97 = add i32 %96, %91
  %98 = zext i32 %97 to i64
  store i64 %98, i64* %RCX.i52, align 8
  %99 = icmp ult i32 %97, %91
  %100 = icmp ult i32 %97, %96
  %101 = or i1 %99, %100
  %102 = zext i1 %101 to i8
  %103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %102, i8* %103, align 1
  %104 = and i32 %97, 255
  %105 = call i32 @llvm.ctpop.i32(i32 %104)
  %106 = trunc i32 %105 to i8
  %107 = and i8 %106, 1
  %108 = xor i8 %107, 1
  %109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %108, i8* %109, align 1
  %110 = xor i32 %96, %91
  %111 = xor i32 %110, %97
  %112 = lshr i32 %111, 4
  %113 = trunc i32 %112 to i8
  %114 = and i8 %113, 1
  %115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %114, i8* %115, align 1
  %116 = icmp eq i32 %97, 0
  %117 = zext i1 %116 to i8
  %118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %117, i8* %118, align 1
  %119 = lshr i32 %97, 31
  %120 = trunc i32 %119 to i8
  %121 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %120, i8* %121, align 1
  %122 = lshr i32 %91, 31
  %123 = lshr i32 %96, 31
  %124 = xor i32 %119, %122
  %125 = xor i32 %119, %123
  %126 = add i32 %124, %125
  %127 = icmp eq i32 %126, 2
  %128 = zext i1 %127 to i8
  %129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %128, i8* %129, align 1
  %130 = sub i64 %86, 12
  %131 = add i64 %94, 3
  store i64 %131, i64* %PC.i
  %132 = inttoptr i64 %130 to i32*
  %133 = load i32, i32* %132
  %134 = add i32 %133, %97
  %135 = zext i32 %134 to i64
  store i64 %135, i64* %RCX.i52, align 8
  %136 = icmp ult i32 %134, %97
  %137 = icmp ult i32 %134, %133
  %138 = or i1 %136, %137
  %139 = zext i1 %138 to i8
  store i8 %139, i8* %103, align 1
  %140 = and i32 %134, 255
  %141 = call i32 @llvm.ctpop.i32(i32 %140)
  %142 = trunc i32 %141 to i8
  %143 = and i8 %142, 1
  %144 = xor i8 %143, 1
  store i8 %144, i8* %109, align 1
  %145 = xor i32 %133, %97
  %146 = xor i32 %145, %134
  %147 = lshr i32 %146, 4
  %148 = trunc i32 %147 to i8
  %149 = and i8 %148, 1
  store i8 %149, i8* %115, align 1
  %150 = icmp eq i32 %134, 0
  %151 = zext i1 %150 to i8
  store i8 %151, i8* %118, align 1
  %152 = lshr i32 %134, 31
  %153 = trunc i32 %152 to i8
  store i8 %153, i8* %121, align 1
  %154 = lshr i32 %133, 31
  %155 = xor i32 %152, %119
  %156 = xor i32 %152, %154
  %157 = add i32 %155, %156
  %158 = icmp eq i32 %157, 2
  %159 = zext i1 %158 to i8
  store i8 %159, i8* %129, align 1
  %160 = sub i64 %86, 16
  %161 = add i64 %131, 3
  store i64 %161, i64* %PC.i
  %162 = inttoptr i64 %160 to i32*
  %163 = load i32, i32* %162
  %164 = add i32 %163, %134
  %165 = zext i32 %164 to i64
  store i64 %165, i64* %RCX.i52, align 8
  %166 = icmp ult i32 %164, %134
  %167 = icmp ult i32 %164, %163
  %168 = or i1 %166, %167
  %169 = zext i1 %168 to i8
  store i8 %169, i8* %103, align 1
  %170 = and i32 %164, 255
  %171 = call i32 @llvm.ctpop.i32(i32 %170)
  %172 = trunc i32 %171 to i8
  %173 = and i8 %172, 1
  %174 = xor i8 %173, 1
  store i8 %174, i8* %109, align 1
  %175 = xor i32 %163, %134
  %176 = xor i32 %175, %164
  %177 = lshr i32 %176, 4
  %178 = trunc i32 %177 to i8
  %179 = and i8 %178, 1
  store i8 %179, i8* %115, align 1
  %180 = icmp eq i32 %164, 0
  %181 = zext i1 %180 to i8
  store i8 %181, i8* %118, align 1
  %182 = lshr i32 %164, 31
  %183 = trunc i32 %182 to i8
  store i8 %183, i8* %121, align 1
  %184 = lshr i32 %163, 31
  %185 = xor i32 %182, %152
  %186 = xor i32 %182, %184
  %187 = add i32 %185, %186
  %188 = icmp eq i32 %187, 2
  %189 = zext i1 %188 to i8
  store i8 %189, i8* %129, align 1
  %190 = load i64, i64* %RBP.i
  %191 = sub i64 %190, 20
  %192 = add i64 %161, 3
  store i64 %192, i64* %PC.i
  %193 = inttoptr i64 %191 to i32*
  %194 = load i32, i32* %193
  %195 = add i32 %194, %164
  %196 = zext i32 %195 to i64
  store i64 %196, i64* %RCX.i52, align 8
  %197 = icmp ult i32 %195, %164
  %198 = icmp ult i32 %195, %194
  %199 = or i1 %197, %198
  %200 = zext i1 %199 to i8
  store i8 %200, i8* %103, align 1
  %201 = and i32 %195, 255
  %202 = call i32 @llvm.ctpop.i32(i32 %201)
  %203 = trunc i32 %202 to i8
  %204 = and i8 %203, 1
  %205 = xor i8 %204, 1
  store i8 %205, i8* %109, align 1
  %206 = xor i32 %194, %164
  %207 = xor i32 %206, %195
  %208 = lshr i32 %207, 4
  %209 = trunc i32 %208 to i8
  %210 = and i8 %209, 1
  store i8 %210, i8* %115, align 1
  %211 = icmp eq i32 %195, 0
  %212 = zext i1 %211 to i8
  store i8 %212, i8* %118, align 1
  %213 = lshr i32 %195, 31
  %214 = trunc i32 %213 to i8
  store i8 %214, i8* %121, align 1
  %215 = lshr i32 %194, 31
  %216 = xor i32 %213, %182
  %217 = xor i32 %213, %215
  %218 = add i32 %216, %217
  %219 = icmp eq i32 %218, 2
  %220 = zext i1 %219 to i8
  store i8 %220, i8* %129, align 1
  %221 = sub i64 %190, 24
  %222 = add i64 %192, 3
  store i64 %222, i64* %PC.i
  %223 = inttoptr i64 %221 to i32*
  %224 = load i32, i32* %223
  %225 = add i32 %224, %195
  %226 = zext i32 %225 to i64
  store i64 %226, i64* %RCX.i52, align 8
  %227 = icmp ult i32 %225, %195
  %228 = icmp ult i32 %225, %224
  %229 = or i1 %227, %228
  %230 = zext i1 %229 to i8
  store i8 %230, i8* %103, align 1
  %231 = and i32 %225, 255
  %232 = call i32 @llvm.ctpop.i32(i32 %231)
  %233 = trunc i32 %232 to i8
  %234 = and i8 %233, 1
  %235 = xor i8 %234, 1
  store i8 %235, i8* %109, align 1
  %236 = xor i32 %224, %195
  %237 = xor i32 %236, %225
  %238 = lshr i32 %237, 4
  %239 = trunc i32 %238 to i8
  %240 = and i8 %239, 1
  store i8 %240, i8* %115, align 1
  %241 = icmp eq i32 %225, 0
  %242 = zext i1 %241 to i8
  store i8 %242, i8* %118, align 1
  %243 = lshr i32 %225, 31
  %244 = trunc i32 %243 to i8
  store i8 %244, i8* %121, align 1
  %245 = lshr i32 %224, 31
  %246 = xor i32 %243, %213
  %247 = xor i32 %243, %245
  %248 = add i32 %246, %247
  %249 = icmp eq i32 %248, 2
  %250 = zext i1 %249 to i8
  store i8 %250, i8* %129, align 1
  %251 = add i64 %190, 16
  %252 = add i64 %222, 3
  store i64 %252, i64* %PC.i
  %253 = inttoptr i64 %251 to i32*
  %254 = load i32, i32* %253
  %255 = add i32 %254, %225
  %256 = zext i32 %255 to i64
  store i64 %256, i64* %RCX.i52, align 8
  %257 = icmp ult i32 %255, %225
  %258 = icmp ult i32 %255, %254
  %259 = or i1 %257, %258
  %260 = zext i1 %259 to i8
  store i8 %260, i8* %103, align 1
  %261 = and i32 %255, 255
  %262 = call i32 @llvm.ctpop.i32(i32 %261)
  %263 = trunc i32 %262 to i8
  %264 = and i8 %263, 1
  %265 = xor i8 %264, 1
  store i8 %265, i8* %109, align 1
  %266 = xor i32 %254, %225
  %267 = xor i32 %266, %255
  %268 = lshr i32 %267, 4
  %269 = trunc i32 %268 to i8
  %270 = and i8 %269, 1
  store i8 %270, i8* %115, align 1
  %271 = icmp eq i32 %255, 0
  %272 = zext i1 %271 to i8
  store i8 %272, i8* %118, align 1
  %273 = lshr i32 %255, 31
  %274 = trunc i32 %273 to i8
  store i8 %274, i8* %121, align 1
  %275 = lshr i32 %254, 31
  %276 = xor i32 %273, %243
  %277 = xor i32 %273, %275
  %278 = add i32 %276, %277
  %279 = icmp eq i32 %278, 2
  %280 = zext i1 %279 to i8
  store i8 %280, i8* %129, align 1
  %281 = load i64, i64* %RBP.i
  %282 = sub i64 %281, 28
  %283 = add i64 %252, 3
  store i64 %283, i64* %PC.i
  %284 = inttoptr i64 %282 to i32*
  store i32 %255, i32* %284
  %285 = load i64, i64* %RBP.i
  %286 = sub i64 %285, 28
  %287 = load i64, i64* %PC.i
  %288 = add i64 %287, 4
  store i64 %288, i64* %PC.i
  %289 = inttoptr i64 %286 to i32*
  %290 = load i32, i32* %289
  %291 = sub i32 %290, 40
  %292 = icmp ult i32 %290, 40
  %293 = zext i1 %292 to i8
  store i8 %293, i8* %103, align 1
  %294 = and i32 %291, 255
  %295 = call i32 @llvm.ctpop.i32(i32 %294)
  %296 = trunc i32 %295 to i8
  %297 = and i8 %296, 1
  %298 = xor i8 %297, 1
  store i8 %298, i8* %109, align 1
  %299 = xor i32 %290, 40
  %300 = xor i32 %299, %291
  %301 = lshr i32 %300, 4
  %302 = trunc i32 %301 to i8
  %303 = and i8 %302, 1
  store i8 %303, i8* %115, align 1
  %304 = icmp eq i32 %291, 0
  %305 = zext i1 %304 to i8
  store i8 %305, i8* %118, align 1
  %306 = lshr i32 %291, 31
  %307 = trunc i32 %306 to i8
  store i8 %307, i8* %121, align 1
  %308 = lshr i32 %290, 31
  %309 = xor i32 %306, %308
  %310 = add i32 %309, %308
  %311 = icmp eq i32 %310, 2
  %312 = zext i1 %311 to i8
  store i8 %312, i8* %129, align 1
  %313 = sub i64 %285, 36
  %314 = load i32, i32* %R10D.i68
  %315 = zext i32 %314 to i64
  %316 = add i64 %288, 4
  store i64 %316, i64* %PC.i
  %317 = inttoptr i64 %313 to i32*
  store i32 %314, i32* %317
  %EAX.i26 = bitcast %union.anon* %20 to i32*
  %318 = load i64, i64* %RBP.i
  %319 = sub i64 %318, 40
  %320 = load i32, i32* %EAX.i26
  %321 = zext i32 %320 to i64
  %322 = load i64, i64* %PC.i
  %323 = add i64 %322, 3
  store i64 %323, i64* %PC.i
  %324 = inttoptr i64 %319 to i32*
  store i32 %320, i32* %324
  %325 = load i64, i64* %PC.i
  %326 = add i64 %325, 20
  %327 = add i64 %325, 6
  %328 = load i8, i8* %118, align 1
  %329 = icmp ne i8 %328, 0
  %330 = load i8, i8* %121, align 1
  %331 = icmp ne i8 %330, 0
  %332 = load i8, i8* %129, align 1
  %333 = icmp ne i8 %332, 0
  %334 = xor i1 %331, %333
  %335 = or i1 %329, %334
  %336 = zext i1 %335 to i8
  %337 = select i1 %335, i64 %326, i64 %327
  %338 = load i64, i64* %RBP.i
  %339 = sub i64 %338, 28
  %340 = add i64 %337, 3
  store i64 %340, i64* %PC.i
  %341 = inttoptr i64 %339 to i32*
  %342 = load i32, i32* %341
  %343 = zext i32 %342 to i64
  store i64 %343, i64* %RAX.i71, align 8
  %344 = add i64 %338, 24
  %345 = add i64 %340, 3
  store i64 %345, i64* %PC.i
  %346 = inttoptr i64 %344 to i32*
  %347 = load i32, i32* %346
  br i1 %335, label %block_.L_400546, label %block_400538

block_400538:                                     ; preds = %entry
  %348 = add i32 %347, %342
  %349 = zext i32 %348 to i64
  store i64 %349, i64* %RAX.i71, align 8
  %350 = icmp ult i32 %348, %342
  %351 = icmp ult i32 %348, %347
  %352 = or i1 %350, %351
  %353 = zext i1 %352 to i8
  store i8 %353, i8* %103, align 1
  %354 = and i32 %348, 255
  %355 = call i32 @llvm.ctpop.i32(i32 %354)
  %356 = trunc i32 %355 to i8
  %357 = and i8 %356, 1
  %358 = xor i8 %357, 1
  store i8 %358, i8* %109, align 1
  %359 = xor i32 %347, %342
  %360 = xor i32 %359, %348
  %361 = lshr i32 %360, 4
  %362 = trunc i32 %361 to i8
  %363 = and i8 %362, 1
  store i8 %363, i8* %115, align 1
  %364 = icmp eq i32 %348, 0
  %365 = zext i1 %364 to i8
  store i8 %365, i8* %118, align 1
  %366 = lshr i32 %348, 31
  %367 = trunc i32 %366 to i8
  store i8 %367, i8* %121, align 1
  %368 = lshr i32 %342, 31
  %369 = lshr i32 %347, 31
  %370 = xor i32 %366, %368
  %371 = xor i32 %366, %369
  %372 = add i32 %370, %371
  %373 = icmp eq i32 %372, 2
  %374 = zext i1 %373 to i8
  store i8 %374, i8* %129, align 1
  %375 = sub i64 %338, 32
  %376 = add i64 %345, 3
  store i64 %376, i64* %PC.i
  %377 = inttoptr i64 %375 to i32*
  store i32 %348, i32* %377
  %378 = load i64, i64* %PC.i
  %379 = add i64 %378, 14
  store i64 %379, i64* %3, align 8
  br label %block_.L_40054f

block_.L_400546:                                  ; preds = %entry
  %380 = sub i32 %342, %347
  %381 = zext i32 %380 to i64
  store i64 %381, i64* %RAX.i71, align 8
  %382 = icmp ult i32 %342, %347
  %383 = zext i1 %382 to i8
  store i8 %383, i8* %103, align 1
  %384 = and i32 %380, 255
  %385 = call i32 @llvm.ctpop.i32(i32 %384)
  %386 = trunc i32 %385 to i8
  %387 = and i8 %386, 1
  %388 = xor i8 %387, 1
  store i8 %388, i8* %109, align 1
  %389 = xor i32 %347, %342
  %390 = xor i32 %389, %380
  %391 = lshr i32 %390, 4
  %392 = trunc i32 %391 to i8
  %393 = and i8 %392, 1
  store i8 %393, i8* %115, align 1
  %394 = icmp eq i32 %380, 0
  %395 = zext i1 %394 to i8
  store i8 %395, i8* %118, align 1
  %396 = lshr i32 %380, 31
  %397 = trunc i32 %396 to i8
  store i8 %397, i8* %121, align 1
  %398 = lshr i32 %342, 31
  %399 = lshr i32 %347, 31
  %400 = xor i32 %399, %398
  %401 = xor i32 %396, %398
  %402 = add i32 %401, %400
  %403 = icmp eq i32 %402, 2
  %404 = zext i1 %403 to i8
  store i8 %404, i8* %129, align 1
  %405 = sub i64 %338, 32
  %406 = add i64 %345, 3
  store i64 %406, i64* %PC.i
  %407 = inttoptr i64 %405 to i32*
  store i32 %380, i32* %407
  %.pre = load i64, i64* %PC.i
  br label %block_.L_40054f

block_.L_40054f:                                  ; preds = %block_.L_400546, %block_400538
  %408 = phi i64 [ %.pre, %block_.L_400546 ], [ %379, %block_400538 ]
  %409 = load i64, i64* %RBP.i
  %410 = sub i64 %409, 32
  %411 = add i64 %408, 3
  store i64 %411, i64* %PC.i
  %412 = inttoptr i64 %410 to i32*
  %413 = load i32, i32* %412
  %414 = zext i32 %413 to i64
  store i64 %414, i64* %RAX.i71, align 8
  %415 = add i64 %411, 1
  store i64 %415, i64* %PC.i
  %416 = load i64, i64* %11, align 8
  %417 = add i64 %416, 8
  %418 = inttoptr i64 %416 to i64*
  %419 = load i64, i64* %418
  store i64 %419, i64* %RBP.i, align 8
  store i64 %417, i64* %11, align 8
  %420 = add i64 %415, 1
  store i64 %420, i64* %PC.i
  %421 = inttoptr i64 %417 to i64*
  %422 = load i64, i64* %421
  store i64 %422, i64* %3, align 8
  %423 = add i64 %417, 8
  store i64 %423, i64* %11, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_pushq__rbp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 15
  %7 = getelementptr inbounds %struct.Reg, %struct.Reg* %6, i32 0, i32 0
  %RBP = bitcast %union.anon* %7 to i64*
  %8 = load i64, i64* %RBP
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 1
  store i64 %10, i64* %PC
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = add i64 %12, -8
  %14 = inttoptr i64 %13 to i64*
  store i64 %8, i64* %14
  store i64 %13, i64* %11, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rsp___rbp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 13
  %7 = getelementptr inbounds %struct.Reg, %struct.Reg* %6, i32 0, i32 0
  %RSP = bitcast %union.anon* %7 to i64*
  %8 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 15
  %9 = getelementptr inbounds %struct.Reg, %struct.Reg* %8, i32 0, i32 0
  %RBP = bitcast %union.anon* %9 to i64*
  %10 = load i64, i64* %RSP
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 3
  store i64 %12, i64* %PC
  store i64 %10, i64* %RBP, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x18__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 1
  %7 = getelementptr inbounds %struct.Reg, %struct.Reg* %6, i32 0, i32 0
  %RAX = bitcast %union.anon* %7 to i64*
  %8 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 15
  %9 = getelementptr inbounds %struct.Reg, %struct.Reg* %8, i32 0, i32 0
  %RBP = bitcast %union.anon* %9 to i64*
  %10 = load i64, i64* %RBP
  %11 = add i64 %10, 24
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 3
  store i64 %13, i64* %PC
  %14 = inttoptr i64 %11 to i32*
  %15 = load i32, i32* %14
  %16 = zext i32 %15 to i64
  store i64 %16, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x10__rbp____r10d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 21
  %7 = getelementptr inbounds %struct.Reg, %struct.Reg* %6, i32 0, i32 0
  %R10D = bitcast %union.anon* %7 to i32*
  %8 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 15
  %9 = getelementptr inbounds %struct.Reg, %struct.Reg* %8, i32 0, i32 0
  %RBP = bitcast %union.anon* %9 to i64*
  %10 = bitcast i32* %R10D to i64*
  %11 = load i64, i64* %RBP
  %12 = add i64 %11, 16
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = inttoptr i64 %12 to i32*
  %16 = load i32, i32* %15
  %17 = zext i32 %16 to i64
  store i64 %17, i64* %10, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edi__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 11
  %7 = getelementptr inbounds %struct.Reg, %struct.Reg* %6, i32 0, i32 0
  %EDI = bitcast %union.anon* %7 to i32*
  %8 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 15
  %9 = getelementptr inbounds %struct.Reg, %struct.Reg* %8, i32 0, i32 0
  %RBP = bitcast %union.anon* %9 to i64*
  %10 = load i64, i64* %RBP
  %11 = sub i64 %10, 4
  %12 = load i32, i32* %EDI
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %11 to i32*
  store i32 %12, i32* %16
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__esi__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 9
  %7 = getelementptr inbounds %struct.Reg, %struct.Reg* %6, i32 0, i32 0
  %ESI = bitcast %union.anon* %7 to i32*
  %8 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 15
  %9 = getelementptr inbounds %struct.Reg, %struct.Reg* %8, i32 0, i32 0
  %RBP = bitcast %union.anon* %9 to i64*
  %10 = load i64, i64* %RBP
  %11 = sub i64 %10, 8
  %12 = load i32, i32* %ESI
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %11 to i32*
  store i32 %12, i32* %16
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0xc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 7
  %7 = getelementptr inbounds %struct.Reg, %struct.Reg* %6, i32 0, i32 0
  %EDX = bitcast %union.anon* %7 to i32*
  %8 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 15
  %9 = getelementptr inbounds %struct.Reg, %struct.Reg* %8, i32 0, i32 0
  %RBP = bitcast %union.anon* %9 to i64*
  %10 = load i64, i64* %RBP
  %11 = sub i64 %10, 12
  %12 = load i32, i32* %EDX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %11 to i32*
  store i32 %12, i32* %16
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 5
  %7 = getelementptr inbounds %struct.Reg, %struct.Reg* %6, i32 0, i32 0
  %ECX = bitcast %union.anon* %7 to i32*
  %8 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 15
  %9 = getelementptr inbounds %struct.Reg, %struct.Reg* %8, i32 0, i32 0
  %RBP = bitcast %union.anon* %9 to i64*
  %10 = load i64, i64* %RBP
  %11 = sub i64 %10, 16
  %12 = load i32, i32* %ECX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %11 to i32*
  store i32 %12, i32* %16
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__r8d__MINUS0x14__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 17
  %7 = getelementptr inbounds %struct.Reg, %struct.Reg* %6, i32 0, i32 0
  %R8D = bitcast %union.anon* %7 to i32*
  %8 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 15
  %9 = getelementptr inbounds %struct.Reg, %struct.Reg* %8, i32 0, i32 0
  %RBP = bitcast %union.anon* %9 to i64*
  %10 = load i64, i64* %RBP
  %11 = sub i64 %10, 20
  %12 = load i32, i32* %R8D
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %11 to i32*
  store i32 %12, i32* %16
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__r9d__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 19
  %7 = getelementptr inbounds %struct.Reg, %struct.Reg* %6, i32 0, i32 0
  %R9D = bitcast %union.anon* %7 to i32*
  %8 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 15
  %9 = getelementptr inbounds %struct.Reg, %struct.Reg* %8, i32 0, i32 0
  %RBP = bitcast %union.anon* %9 to i64*
  %10 = load i64, i64* %RBP
  %11 = sub i64 %10, 24
  %12 = load i32, i32* %R9D
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %11 to i32*
  store i32 %12, i32* %16
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x4__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 5
  %7 = getelementptr inbounds %struct.Reg, %struct.Reg* %6, i32 0, i32 0
  %RCX = bitcast %union.anon* %7 to i64*
  %8 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 15
  %9 = getelementptr inbounds %struct.Reg, %struct.Reg* %8, i32 0, i32 0
  %RBP = bitcast %union.anon* %9 to i64*
  %10 = load i64, i64* %RBP
  %11 = sub i64 %10, 4
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 3
  store i64 %13, i64* %PC
  %14 = inttoptr i64 %11 to i32*
  %15 = load i32, i32* %14
  %16 = zext i32 %15 to i64
  store i64 %16, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x8__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 5
  %7 = getelementptr inbounds %struct.Reg, %struct.Reg* %6, i32 0, i32 0
  %RCX = bitcast %union.anon* %7 to i64*
  %8 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 15
  %9 = getelementptr inbounds %struct.Reg, %struct.Reg* %8, i32 0, i32 0
  %RBP = bitcast %union.anon* %9 to i64*
  %10 = load i64, i64* %RCX
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 8
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = trunc i64 %10 to i32
  %16 = inttoptr i64 %12 to i32*
  %17 = load i32, i32* %16
  %18 = add i32 %17, %15
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RCX, align 8
  %20 = icmp ult i32 %18, %15
  %21 = icmp ult i32 %18, %17
  %22 = or i1 %20, %21
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %23, i8* %24, align 1
  %25 = and i32 %18, 255
  %26 = call i32 @llvm.ctpop.i32(i32 %25)
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = xor i8 %28, 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %29, i8* %30, align 1
  %31 = xor i32 %17, %15
  %32 = xor i32 %31, %18
  %33 = lshr i32 %32, 4
  %34 = trunc i32 %33 to i8
  %35 = and i8 %34, 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %35, i8* %36, align 1
  %37 = icmp eq i32 %18, 0
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %38, i8* %39, align 1
  %40 = lshr i32 %18, 31
  %41 = trunc i32 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %41, i8* %42, align 1
  %43 = lshr i32 %15, 31
  %44 = lshr i32 %17, 31
  %45 = xor i32 %40, %43
  %46 = xor i32 %40, %44
  %47 = add i32 %45, %46
  %48 = icmp eq i32 %47, 2
  %49 = zext i1 %48 to i8
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %49, i8* %50, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0xc__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 5
  %7 = getelementptr inbounds %struct.Reg, %struct.Reg* %6, i32 0, i32 0
  %RCX = bitcast %union.anon* %7 to i64*
  %8 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 15
  %9 = getelementptr inbounds %struct.Reg, %struct.Reg* %8, i32 0, i32 0
  %RBP = bitcast %union.anon* %9 to i64*
  %10 = load i64, i64* %RCX
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 12
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = trunc i64 %10 to i32
  %16 = inttoptr i64 %12 to i32*
  %17 = load i32, i32* %16
  %18 = add i32 %17, %15
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RCX, align 8
  %20 = icmp ult i32 %18, %15
  %21 = icmp ult i32 %18, %17
  %22 = or i1 %20, %21
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %23, i8* %24, align 1
  %25 = and i32 %18, 255
  %26 = call i32 @llvm.ctpop.i32(i32 %25)
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = xor i8 %28, 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %29, i8* %30, align 1
  %31 = xor i32 %17, %15
  %32 = xor i32 %31, %18
  %33 = lshr i32 %32, 4
  %34 = trunc i32 %33 to i8
  %35 = and i8 %34, 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %35, i8* %36, align 1
  %37 = icmp eq i32 %18, 0
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %38, i8* %39, align 1
  %40 = lshr i32 %18, 31
  %41 = trunc i32 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %41, i8* %42, align 1
  %43 = lshr i32 %15, 31
  %44 = lshr i32 %17, 31
  %45 = xor i32 %40, %43
  %46 = xor i32 %40, %44
  %47 = add i32 %45, %46
  %48 = icmp eq i32 %47, 2
  %49 = zext i1 %48 to i8
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %49, i8* %50, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x10__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 5
  %7 = getelementptr inbounds %struct.Reg, %struct.Reg* %6, i32 0, i32 0
  %RCX = bitcast %union.anon* %7 to i64*
  %8 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 15
  %9 = getelementptr inbounds %struct.Reg, %struct.Reg* %8, i32 0, i32 0
  %RBP = bitcast %union.anon* %9 to i64*
  %10 = load i64, i64* %RCX
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 16
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = trunc i64 %10 to i32
  %16 = inttoptr i64 %12 to i32*
  %17 = load i32, i32* %16
  %18 = add i32 %17, %15
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RCX, align 8
  %20 = icmp ult i32 %18, %15
  %21 = icmp ult i32 %18, %17
  %22 = or i1 %20, %21
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %23, i8* %24, align 1
  %25 = and i32 %18, 255
  %26 = call i32 @llvm.ctpop.i32(i32 %25)
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = xor i8 %28, 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %29, i8* %30, align 1
  %31 = xor i32 %17, %15
  %32 = xor i32 %31, %18
  %33 = lshr i32 %32, 4
  %34 = trunc i32 %33 to i8
  %35 = and i8 %34, 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %35, i8* %36, align 1
  %37 = icmp eq i32 %18, 0
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %38, i8* %39, align 1
  %40 = lshr i32 %18, 31
  %41 = trunc i32 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %41, i8* %42, align 1
  %43 = lshr i32 %15, 31
  %44 = lshr i32 %17, 31
  %45 = xor i32 %40, %43
  %46 = xor i32 %40, %44
  %47 = add i32 %45, %46
  %48 = icmp eq i32 %47, 2
  %49 = zext i1 %48 to i8
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %49, i8* %50, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x14__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 5
  %7 = getelementptr inbounds %struct.Reg, %struct.Reg* %6, i32 0, i32 0
  %RCX = bitcast %union.anon* %7 to i64*
  %8 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 15
  %9 = getelementptr inbounds %struct.Reg, %struct.Reg* %8, i32 0, i32 0
  %RBP = bitcast %union.anon* %9 to i64*
  %10 = load i64, i64* %RCX
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 20
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = trunc i64 %10 to i32
  %16 = inttoptr i64 %12 to i32*
  %17 = load i32, i32* %16
  %18 = add i32 %17, %15
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RCX, align 8
  %20 = icmp ult i32 %18, %15
  %21 = icmp ult i32 %18, %17
  %22 = or i1 %20, %21
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %23, i8* %24, align 1
  %25 = and i32 %18, 255
  %26 = call i32 @llvm.ctpop.i32(i32 %25)
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = xor i8 %28, 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %29, i8* %30, align 1
  %31 = xor i32 %17, %15
  %32 = xor i32 %31, %18
  %33 = lshr i32 %32, 4
  %34 = trunc i32 %33 to i8
  %35 = and i8 %34, 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %35, i8* %36, align 1
  %37 = icmp eq i32 %18, 0
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %38, i8* %39, align 1
  %40 = lshr i32 %18, 31
  %41 = trunc i32 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %41, i8* %42, align 1
  %43 = lshr i32 %15, 31
  %44 = lshr i32 %17, 31
  %45 = xor i32 %40, %43
  %46 = xor i32 %40, %44
  %47 = add i32 %45, %46
  %48 = icmp eq i32 %47, 2
  %49 = zext i1 %48 to i8
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %49, i8* %50, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x18__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 5
  %7 = getelementptr inbounds %struct.Reg, %struct.Reg* %6, i32 0, i32 0
  %RCX = bitcast %union.anon* %7 to i64*
  %8 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 15
  %9 = getelementptr inbounds %struct.Reg, %struct.Reg* %8, i32 0, i32 0
  %RBP = bitcast %union.anon* %9 to i64*
  %10 = load i64, i64* %RCX
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 24
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = trunc i64 %10 to i32
  %16 = inttoptr i64 %12 to i32*
  %17 = load i32, i32* %16
  %18 = add i32 %17, %15
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RCX, align 8
  %20 = icmp ult i32 %18, %15
  %21 = icmp ult i32 %18, %17
  %22 = or i1 %20, %21
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %23, i8* %24, align 1
  %25 = and i32 %18, 255
  %26 = call i32 @llvm.ctpop.i32(i32 %25)
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = xor i8 %28, 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %29, i8* %30, align 1
  %31 = xor i32 %17, %15
  %32 = xor i32 %31, %18
  %33 = lshr i32 %32, 4
  %34 = trunc i32 %33 to i8
  %35 = and i8 %34, 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %35, i8* %36, align 1
  %37 = icmp eq i32 %18, 0
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %38, i8* %39, align 1
  %40 = lshr i32 %18, 31
  %41 = trunc i32 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %41, i8* %42, align 1
  %43 = lshr i32 %15, 31
  %44 = lshr i32 %17, 31
  %45 = xor i32 %40, %43
  %46 = xor i32 %40, %44
  %47 = add i32 %45, %46
  %48 = icmp eq i32 %47, 2
  %49 = zext i1 %48 to i8
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %49, i8* %50, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_0x10__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 5
  %7 = getelementptr inbounds %struct.Reg, %struct.Reg* %6, i32 0, i32 0
  %RCX = bitcast %union.anon* %7 to i64*
  %8 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 15
  %9 = getelementptr inbounds %struct.Reg, %struct.Reg* %8, i32 0, i32 0
  %RBP = bitcast %union.anon* %9 to i64*
  %10 = load i64, i64* %RCX
  %11 = load i64, i64* %RBP
  %12 = add i64 %11, 16
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = trunc i64 %10 to i32
  %16 = inttoptr i64 %12 to i32*
  %17 = load i32, i32* %16
  %18 = add i32 %17, %15
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RCX, align 8
  %20 = icmp ult i32 %18, %15
  %21 = icmp ult i32 %18, %17
  %22 = or i1 %20, %21
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %23, i8* %24, align 1
  %25 = and i32 %18, 255
  %26 = call i32 @llvm.ctpop.i32(i32 %25)
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = xor i8 %28, 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %29, i8* %30, align 1
  %31 = xor i32 %17, %15
  %32 = xor i32 %31, %18
  %33 = lshr i32 %32, 4
  %34 = trunc i32 %33 to i8
  %35 = and i8 %34, 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %35, i8* %36, align 1
  %37 = icmp eq i32 %18, 0
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %38, i8* %39, align 1
  %40 = lshr i32 %18, 31
  %41 = trunc i32 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %41, i8* %42, align 1
  %43 = lshr i32 %15, 31
  %44 = lshr i32 %17, 31
  %45 = xor i32 %40, %43
  %46 = xor i32 %40, %44
  %47 = add i32 %45, %46
  %48 = icmp eq i32 %47, 2
  %49 = zext i1 %48 to i8
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %49, i8* %50, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__MINUS0x1c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 5
  %7 = getelementptr inbounds %struct.Reg, %struct.Reg* %6, i32 0, i32 0
  %ECX = bitcast %union.anon* %7 to i32*
  %8 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 15
  %9 = getelementptr inbounds %struct.Reg, %struct.Reg* %8, i32 0, i32 0
  %RBP = bitcast %union.anon* %9 to i64*
  %10 = load i64, i64* %RBP
  %11 = sub i64 %10, 28
  %12 = load i32, i32* %ECX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %11 to i32*
  store i32 %12, i32* %16
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x28__MINUS0x1c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 15
  %7 = getelementptr inbounds %struct.Reg, %struct.Reg* %6, i32 0, i32 0
  %RBP = bitcast %union.anon* %7 to i64*
  %8 = load i64, i64* %RBP
  %9 = sub i64 %8, 28
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = inttoptr i64 %9 to i32*
  %13 = load i32, i32* %12
  %14 = sub i32 %13, 40
  %15 = icmp ult i32 %13, 40
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %16, i8* %17, align 1
  %18 = and i32 %14, 255
  %19 = call i32 @llvm.ctpop.i32(i32 %18)
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1
  %24 = xor i32 %13, 40
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
  %36 = lshr i32 %13, 31
  %37 = xor i32 %33, %36
  %38 = add i32 %37, %36
  %39 = icmp eq i32 %38, 2
  %40 = zext i1 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %40, i8* %41, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__r10d__MINUS0x24__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 21
  %7 = getelementptr inbounds %struct.Reg, %struct.Reg* %6, i32 0, i32 0
  %R10D = bitcast %union.anon* %7 to i32*
  %8 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 15
  %9 = getelementptr inbounds %struct.Reg, %struct.Reg* %8, i32 0, i32 0
  %RBP = bitcast %union.anon* %9 to i64*
  %10 = load i64, i64* %RBP
  %11 = sub i64 %10, 36
  %12 = load i32, i32* %R10D
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %11 to i32*
  store i32 %12, i32* %16
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 1
  %7 = getelementptr inbounds %struct.Reg, %struct.Reg* %6, i32 0, i32 0
  %EAX = bitcast %union.anon* %7 to i32*
  %8 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 15
  %9 = getelementptr inbounds %struct.Reg, %struct.Reg* %8, i32 0, i32 0
  %RBP = bitcast %union.anon* %9 to i64*
  %10 = load i64, i64* %RBP
  %11 = sub i64 %10, 40
  %12 = load i32, i32* %EAX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %11 to i32*
  store i32 %12, i32* %16
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jle_.L_400546(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = add i64 %6, %rel_off2
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %10 = load i8, i8* %9, align 1
  %11 = icmp ne i8 %10, 0
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %13 = load i8, i8* %12, align 1
  %14 = icmp ne i8 %13, 0
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %16 = load i8, i8* %15, align 1
  %17 = icmp ne i8 %16, 0
  %18 = xor i1 %14, %17
  %19 = or i1 %11, %18
  %20 = zext i1 %19 to i8
  store i8 %20, i8* %BRANCH_TAKEN, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %22 = select i1 %19, i64 %7, i64 %8
  store i64 %22, i64* %21, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 1
  %7 = getelementptr inbounds %struct.Reg, %struct.Reg* %6, i32 0, i32 0
  %RAX = bitcast %union.anon* %7 to i64*
  %8 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 15
  %9 = getelementptr inbounds %struct.Reg, %struct.Reg* %8, i32 0, i32 0
  %RBP = bitcast %union.anon* %9 to i64*
  %10 = load i64, i64* %RBP
  %11 = sub i64 %10, 28
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 3
  store i64 %13, i64* %PC
  %14 = inttoptr i64 %11 to i32*
  %15 = load i32, i32* %14
  %16 = zext i32 %15 to i64
  store i64 %16, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_0x18__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 1
  %7 = getelementptr inbounds %struct.Reg, %struct.Reg* %6, i32 0, i32 0
  %RAX = bitcast %union.anon* %7 to i64*
  %8 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 15
  %9 = getelementptr inbounds %struct.Reg, %struct.Reg* %8, i32 0, i32 0
  %RBP = bitcast %union.anon* %9 to i64*
  %10 = load i64, i64* %RAX
  %11 = load i64, i64* %RBP
  %12 = add i64 %11, 24
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = trunc i64 %10 to i32
  %16 = inttoptr i64 %12 to i32*
  %17 = load i32, i32* %16
  %18 = add i32 %17, %15
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RAX, align 8
  %20 = icmp ult i32 %18, %15
  %21 = icmp ult i32 %18, %17
  %22 = or i1 %20, %21
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %23, i8* %24, align 1
  %25 = and i32 %18, 255
  %26 = call i32 @llvm.ctpop.i32(i32 %25)
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = xor i8 %28, 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %29, i8* %30, align 1
  %31 = xor i32 %17, %15
  %32 = xor i32 %31, %18
  %33 = lshr i32 %32, 4
  %34 = trunc i32 %33 to i8
  %35 = and i8 %34, 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %35, i8* %36, align 1
  %37 = icmp eq i32 %18, 0
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %38, i8* %39, align 1
  %40 = lshr i32 %18, 31
  %41 = trunc i32 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %41, i8* %42, align 1
  %43 = lshr i32 %15, 31
  %44 = lshr i32 %17, 31
  %45 = xor i32 %40, %43
  %46 = xor i32 %40, %44
  %47 = add i32 %45, %46
  %48 = icmp eq i32 %47, 2
  %49 = zext i1 %48 to i8
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %49, i8* %50, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 1
  %7 = getelementptr inbounds %struct.Reg, %struct.Reg* %6, i32 0, i32 0
  %EAX = bitcast %union.anon* %7 to i32*
  %8 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 15
  %9 = getelementptr inbounds %struct.Reg, %struct.Reg* %8, i32 0, i32 0
  %RBP = bitcast %union.anon* %9 to i64*
  %10 = load i64, i64* %RBP
  %11 = sub i64 %10, 32
  %12 = load i32, i32* %EAX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %11 to i32*
  store i32 %12, i32* %16
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_40054f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl_0x18__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 1
  %7 = getelementptr inbounds %struct.Reg, %struct.Reg* %6, i32 0, i32 0
  %RAX = bitcast %union.anon* %7 to i64*
  %8 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 15
  %9 = getelementptr inbounds %struct.Reg, %struct.Reg* %8, i32 0, i32 0
  %RBP = bitcast %union.anon* %9 to i64*
  %10 = load i64, i64* %RAX
  %11 = load i64, i64* %RBP
  %12 = add i64 %11, 24
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = trunc i64 %10 to i32
  %16 = inttoptr i64 %12 to i32*
  %17 = load i32, i32* %16
  %18 = sub i32 %15, %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RAX, align 8
  %20 = icmp ult i32 %15, %17
  %21 = zext i1 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %21, i8* %22, align 1
  %23 = and i32 %18, 255
  %24 = call i32 @llvm.ctpop.i32(i32 %23)
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = xor i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %27, i8* %28, align 1
  %29 = xor i32 %17, %15
  %30 = xor i32 %29, %18
  %31 = lshr i32 %30, 4
  %32 = trunc i32 %31 to i8
  %33 = and i8 %32, 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %33, i8* %34, align 1
  %35 = icmp eq i32 %18, 0
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %36, i8* %37, align 1
  %38 = lshr i32 %18, 31
  %39 = trunc i32 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %39, i8* %40, align 1
  %41 = lshr i32 %15, 31
  %42 = lshr i32 %17, 31
  %43 = xor i32 %42, %41
  %44 = xor i32 %38, %41
  %45 = add i32 %44, %43
  %46 = icmp eq i32 %45, 2
  %47 = zext i1 %46 to i8
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %47, i8* %48, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 1
  %7 = getelementptr inbounds %struct.Reg, %struct.Reg* %6, i32 0, i32 0
  %RAX = bitcast %union.anon* %7 to i64*
  %8 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 15
  %9 = getelementptr inbounds %struct.Reg, %struct.Reg* %8, i32 0, i32 0
  %RBP = bitcast %union.anon* %9 to i64*
  %10 = load i64, i64* %RBP
  %11 = sub i64 %10, 32
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 3
  store i64 %13, i64* %PC
  %14 = inttoptr i64 %11 to i32*
  %15 = load i32, i32* %14
  %16 = zext i32 %15 to i64
  store i64 %16, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_popq__rbp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 15
  %7 = getelementptr inbounds %struct.Reg, %struct.Reg* %6, i32 0, i32 0
  %RBP = bitcast %union.anon* %7 to i64*
  %8 = load i64, i64* %PC
  %9 = add i64 %8, 1
  store i64 %9, i64* %PC
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = add i64 %11, 8
  %13 = inttoptr i64 %11 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RBP, align 8
  store i64 %12, i64* %10, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_retq(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 1
  store i64 %7, i64* %PC
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to i64*
  %12 = load i64, i64* %11
  store i64 %12, i64* %8, align 8
  %13 = add i64 %10, 8
  store i64 %13, i64* %9, align 8
  ret %struct.Memory* %2
}

attributes #0 = { nounwind readnone }
attributes #1 = { alwaysinline }
