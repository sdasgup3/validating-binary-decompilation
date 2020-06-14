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
  store i64 %13, i64* %11, align 8
  %15 = getelementptr inbounds %struct.GPR, %struct.GPR* %4, i32 0, i32 13
  %16 = getelementptr inbounds %struct.Reg, %struct.Reg* %15, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %16 to i64*
  %17 = load i64, i64* %PC.i
  %18 = add i64 %17, 3
  store i64 %13, i64* %RBP.i, align 8
  %19 = getelementptr inbounds %struct.GPR, %struct.GPR* %4, i32 0, i32 1
  %20 = getelementptr inbounds %struct.Reg, %struct.Reg* %19, i32 0, i32 0
  %RAX.i108 = bitcast %union.anon* %20 to i64*
  %21 = add i64 %13, 24
  %22 = add i64 %18, 4
  store i64 %22, i64* %PC.i
  %23 = inttoptr i64 %21 to i64*
  %24 = load i64, i64* %23
  store i64 %24, i64* %RAX.i108, align 8
  %25 = getelementptr inbounds %struct.GPR, %struct.GPR* %4, i32 0, i32 21
  %26 = getelementptr inbounds %struct.Reg, %struct.Reg* %25, i32 0, i32 0
  %R10.i106 = bitcast %union.anon* %26 to i64*
  %27 = add i64 %13, 16
  %28 = add i64 %22, 4
  store i64 %28, i64* %PC.i
  %29 = inttoptr i64 %27 to i64*
  %30 = load i64, i64* %29
  store i64 %30, i64* %R10.i106, align 8
  %31 = getelementptr inbounds %struct.GPR, %struct.GPR* %4, i32 0, i32 11
  %32 = getelementptr inbounds %struct.Reg, %struct.Reg* %31, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %32 to i32*
  %33 = sub i64 %13, 20
  %34 = load i32, i32* %EDI.i
  %35 = zext i32 %34 to i64
  %36 = add i64 %28, 3
  store i64 %36, i64* %PC.i
  %37 = inttoptr i64 %33 to i32*
  store i32 %34, i32* %37
  %38 = getelementptr inbounds %struct.GPR, %struct.GPR* %4, i32 0, i32 9
  %39 = getelementptr inbounds %struct.Reg, %struct.Reg* %38, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %39 to i32*
  %40 = load i64, i64* %RBP.i
  %41 = sub i64 %40, 24
  %42 = load i32, i32* %ESI.i
  %43 = zext i32 %42 to i64
  %44 = load i64, i64* %PC.i
  %45 = add i64 %44, 3
  store i64 %45, i64* %PC.i
  %46 = inttoptr i64 %41 to i32*
  store i32 %42, i32* %46
  %47 = getelementptr inbounds %struct.GPR, %struct.GPR* %4, i32 0, i32 7
  %48 = getelementptr inbounds %struct.Reg, %struct.Reg* %47, i32 0, i32 0
  %EDX.i98 = bitcast %union.anon* %48 to i32*
  %49 = load i64, i64* %RBP.i
  %50 = sub i64 %49, 28
  %51 = load i32, i32* %EDX.i98
  %52 = zext i32 %51 to i64
  %53 = load i64, i64* %PC.i
  %54 = add i64 %53, 3
  store i64 %54, i64* %PC.i
  %55 = inttoptr i64 %50 to i32*
  store i32 %51, i32* %55
  %56 = getelementptr inbounds %struct.GPR, %struct.GPR* %4, i32 0, i32 5
  %57 = getelementptr inbounds %struct.Reg, %struct.Reg* %56, i32 0, i32 0
  %ECX.i95 = bitcast %union.anon* %57 to i32*
  %58 = load i64, i64* %RBP.i
  %59 = sub i64 %58, 32
  %60 = load i32, i32* %ECX.i95
  %61 = zext i32 %60 to i64
  %62 = load i64, i64* %PC.i
  %63 = add i64 %62, 3
  store i64 %63, i64* %PC.i
  %64 = inttoptr i64 %59 to i32*
  store i32 %60, i32* %64
  %65 = getelementptr inbounds %struct.GPR, %struct.GPR* %4, i32 0, i32 17
  %66 = getelementptr inbounds %struct.Reg, %struct.Reg* %65, i32 0, i32 0
  %R8D.i = bitcast %union.anon* %66 to i32*
  %67 = load i64, i64* %RBP.i
  %68 = sub i64 %67, 36
  %69 = load i32, i32* %R8D.i
  %70 = zext i32 %69 to i64
  %71 = load i64, i64* %PC.i
  %72 = add i64 %71, 4
  store i64 %72, i64* %PC.i
  %73 = inttoptr i64 %68 to i32*
  store i32 %69, i32* %73
  %74 = getelementptr inbounds %struct.GPR, %struct.GPR* %4, i32 0, i32 19
  %75 = getelementptr inbounds %struct.Reg, %struct.Reg* %74, i32 0, i32 0
  %R9D.i = bitcast %union.anon* %75 to i32*
  %76 = load i64, i64* %RBP.i
  %77 = sub i64 %76, 40
  %78 = load i32, i32* %R9D.i
  %79 = zext i32 %78 to i64
  %80 = load i64, i64* %PC.i
  %81 = add i64 %80, 4
  store i64 %81, i64* %PC.i
  %82 = inttoptr i64 %77 to i32*
  store i32 %78, i32* %82
  %83 = getelementptr inbounds %struct.GPR, %struct.GPR* %4, i32 0, i32 23
  %84 = getelementptr inbounds %struct.Reg, %struct.Reg* %83, i32 0, i32 0
  %R11.i89 = bitcast %union.anon* %84 to i64*
  %85 = load i64, i64* %RBP.i
  %86 = add i64 %85, 16
  %87 = load i64, i64* %PC.i
  %88 = add i64 %87, 4
  store i64 %88, i64* %PC.i
  %89 = inttoptr i64 %86 to i64*
  %90 = load i64, i64* %89
  store i64 %90, i64* %R11.i89, align 8
  %RCX.i85 = bitcast %union.anon* %57 to i64*
  %91 = add i64 %88, 3
  store i64 %91, i64* %PC.i
  %92 = inttoptr i64 %90 to i32*
  %93 = load i32, i32* %92
  %94 = zext i32 %93 to i64
  store i64 %94, i64* %RCX.i85, align 8
  %95 = add i64 %85, 24
  %96 = add i64 %91, 4
  store i64 %96, i64* %PC.i
  %97 = inttoptr i64 %95 to i64*
  %98 = load i64, i64* %97
  store i64 %98, i64* %R11.i89, align 8
  %RDX.i79 = bitcast %union.anon* %48 to i64*
  %99 = add i64 %96, 3
  store i64 %99, i64* %PC.i
  %100 = inttoptr i64 %98 to i32*
  %101 = load i32, i32* %100
  %102 = zext i32 %101 to i64
  store i64 %102, i64* %RDX.i79, align 8
  %103 = add i64 %99, 2
  %104 = add i32 %101, %93
  %105 = zext i32 %104 to i64
  store i64 %105, i64* %RCX.i85, align 8
  %106 = icmp ult i32 %104, %93
  %107 = icmp ult i32 %104, %101
  %108 = or i1 %106, %107
  %109 = zext i1 %108 to i8
  %110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %109, i8* %110, align 1
  %111 = and i32 %104, 255
  %112 = call i32 @llvm.ctpop.i32(i32 %111)
  %113 = trunc i32 %112 to i8
  %114 = and i8 %113, 1
  %115 = xor i8 %114, 1
  %116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %115, i8* %116, align 1
  %117 = xor i64 %102, %94
  %118 = trunc i64 %117 to i32
  %119 = xor i32 %118, %104
  %120 = lshr i32 %119, 4
  %121 = trunc i32 %120 to i8
  %122 = and i8 %121, 1
  %123 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %122, i8* %123, align 1
  %124 = icmp eq i32 %104, 0
  %125 = zext i1 %124 to i8
  %126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %125, i8* %126, align 1
  %127 = lshr i32 %104, 31
  %128 = trunc i32 %127 to i8
  %129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %128, i8* %129, align 1
  %130 = lshr i32 %93, 31
  %131 = lshr i32 %101, 31
  %132 = xor i32 %127, %130
  %133 = xor i32 %127, %131
  %134 = add i32 %132, %133
  %135 = icmp eq i32 %134, 2
  %136 = zext i1 %135 to i8
  %137 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %136, i8* %137, align 1
  %138 = sub i64 %85, 56
  %139 = add i64 %103, 3
  store i64 %139, i64* %PC.i
  %140 = inttoptr i64 %138 to i32*
  store i32 %104, i32* %140
  %141 = load i64, i64* %RBP.i
  %142 = add i64 %141, 16
  %143 = load i64, i64* %PC.i
  %144 = add i64 %143, 4
  store i64 %144, i64* %PC.i
  %145 = inttoptr i64 %142 to i64*
  %146 = load i64, i64* %145
  store i64 %146, i64* %R11.i89, align 8
  %147 = add i64 %146, 4
  %148 = add i64 %144, 4
  store i64 %148, i64* %PC.i
  %149 = inttoptr i64 %147 to i32*
  %150 = load i32, i32* %149
  %151 = zext i32 %150 to i64
  store i64 %151, i64* %RCX.i85, align 8
  %152 = add i64 %141, 24
  %153 = add i64 %148, 4
  store i64 %153, i64* %PC.i
  %154 = inttoptr i64 %152 to i64*
  %155 = load i64, i64* %154
  store i64 %155, i64* %R11.i89, align 8
  %156 = add i64 %155, 4
  %157 = add i64 %153, 4
  store i64 %157, i64* %PC.i
  %158 = inttoptr i64 %156 to i32*
  %159 = load i32, i32* %158
  %160 = zext i32 %159 to i64
  store i64 %160, i64* %RDX.i79, align 8
  %161 = add i64 %157, 2
  %162 = add i32 %159, %150
  %163 = zext i32 %162 to i64
  store i64 %163, i64* %RCX.i85, align 8
  %164 = icmp ult i32 %162, %150
  %165 = icmp ult i32 %162, %159
  %166 = or i1 %164, %165
  %167 = zext i1 %166 to i8
  store i8 %167, i8* %110, align 1
  %168 = and i32 %162, 255
  %169 = call i32 @llvm.ctpop.i32(i32 %168)
  %170 = trunc i32 %169 to i8
  %171 = and i8 %170, 1
  %172 = xor i8 %171, 1
  store i8 %172, i8* %116, align 1
  %173 = xor i64 %160, %151
  %174 = trunc i64 %173 to i32
  %175 = xor i32 %174, %162
  %176 = lshr i32 %175, 4
  %177 = trunc i32 %176 to i8
  %178 = and i8 %177, 1
  store i8 %178, i8* %123, align 1
  %179 = icmp eq i32 %162, 0
  %180 = zext i1 %179 to i8
  store i8 %180, i8* %126, align 1
  %181 = lshr i32 %162, 31
  %182 = trunc i32 %181 to i8
  store i8 %182, i8* %129, align 1
  %183 = lshr i32 %150, 31
  %184 = lshr i32 %159, 31
  %185 = xor i32 %181, %183
  %186 = xor i32 %181, %184
  %187 = add i32 %185, %186
  %188 = icmp eq i32 %187, 2
  %189 = zext i1 %188 to i8
  store i8 %189, i8* %137, align 1
  %190 = sub i64 %141, 52
  %191 = add i64 %161, 3
  store i64 %191, i64* %PC.i
  %192 = inttoptr i64 %190 to i32*
  store i32 %162, i32* %192
  %193 = load i64, i64* %RBP.i
  %194 = add i64 %193, 16
  %195 = load i64, i64* %PC.i
  %196 = add i64 %195, 4
  store i64 %196, i64* %PC.i
  %197 = inttoptr i64 %194 to i64*
  %198 = load i64, i64* %197
  store i64 %198, i64* %R11.i89, align 8
  %199 = add i64 %198, 8
  %200 = add i64 %196, 4
  store i64 %200, i64* %PC.i
  %201 = inttoptr i64 %199 to i32*
  %202 = load i32, i32* %201
  %203 = zext i32 %202 to i64
  store i64 %203, i64* %RCX.i85, align 8
  %204 = add i64 %193, 24
  %205 = add i64 %200, 4
  store i64 %205, i64* %PC.i
  %206 = inttoptr i64 %204 to i64*
  %207 = load i64, i64* %206
  store i64 %207, i64* %R11.i89, align 8
  %208 = add i64 %207, 8
  %209 = add i64 %205, 4
  store i64 %209, i64* %PC.i
  %210 = inttoptr i64 %208 to i32*
  %211 = load i32, i32* %210
  %212 = zext i32 %211 to i64
  store i64 %212, i64* %RDX.i79, align 8
  %213 = add i64 %209, 2
  %214 = add i32 %211, %202
  %215 = zext i32 %214 to i64
  store i64 %215, i64* %RCX.i85, align 8
  %216 = icmp ult i32 %214, %202
  %217 = icmp ult i32 %214, %211
  %218 = or i1 %216, %217
  %219 = zext i1 %218 to i8
  store i8 %219, i8* %110, align 1
  %220 = and i32 %214, 255
  %221 = call i32 @llvm.ctpop.i32(i32 %220)
  %222 = trunc i32 %221 to i8
  %223 = and i8 %222, 1
  %224 = xor i8 %223, 1
  store i8 %224, i8* %116, align 1
  %225 = xor i64 %212, %203
  %226 = trunc i64 %225 to i32
  %227 = xor i32 %226, %214
  %228 = lshr i32 %227, 4
  %229 = trunc i32 %228 to i8
  %230 = and i8 %229, 1
  store i8 %230, i8* %123, align 1
  %231 = icmp eq i32 %214, 0
  %232 = zext i1 %231 to i8
  store i8 %232, i8* %126, align 1
  %233 = lshr i32 %214, 31
  %234 = trunc i32 %233 to i8
  store i8 %234, i8* %129, align 1
  %235 = lshr i32 %202, 31
  %236 = lshr i32 %211, 31
  %237 = xor i32 %233, %235
  %238 = xor i32 %233, %236
  %239 = add i32 %237, %238
  %240 = icmp eq i32 %239, 2
  %241 = zext i1 %240 to i8
  store i8 %241, i8* %137, align 1
  %242 = sub i64 %193, 48
  %243 = add i64 %213, 3
  store i64 %243, i64* %PC.i
  %244 = inttoptr i64 %242 to i32*
  store i32 %214, i32* %244
  %245 = load i64, i64* %RBP.i
  %246 = sub i64 %245, 48
  %247 = load i64, i64* %PC.i
  %248 = add i64 %247, 3
  store i64 %248, i64* %PC.i
  %249 = inttoptr i64 %246 to i32*
  %250 = load i32, i32* %249
  %251 = zext i32 %250 to i64
  store i64 %251, i64* %RCX.i85, align 8
  %252 = sub i64 %245, 8
  %253 = add i64 %248, 3
  store i64 %253, i64* %PC.i
  %254 = inttoptr i64 %252 to i32*
  store i32 %250, i32* %254
  %255 = load i64, i64* %RBP.i
  %256 = sub i64 %255, 56
  %257 = load i64, i64* %PC.i
  %258 = add i64 %257, 4
  store i64 %258, i64* %PC.i
  %259 = inttoptr i64 %256 to i64*
  %260 = load i64, i64* %259
  store i64 %260, i64* %R11.i89, align 8
  %261 = sub i64 %255, 16
  %262 = add i64 %258, 4
  store i64 %262, i64* %PC.i
  %263 = inttoptr i64 %261 to i64*
  store i64 %260, i64* %263
  %264 = load i64, i64* %RBP.i
  %265 = sub i64 %264, 8
  %266 = load i64, i64* %PC.i
  %267 = add i64 %266, 3
  store i64 %267, i64* %PC.i
  %268 = inttoptr i64 %265 to i32*
  %269 = load i32, i32* %268
  %270 = zext i32 %269 to i64
  store i64 %270, i64* %RCX.i85, align 8
  %271 = sub i64 %264, 64
  %272 = add i64 %267, 3
  store i64 %272, i64* %PC.i
  %273 = inttoptr i64 %271 to i32*
  store i32 %269, i32* %273
  %274 = load i64, i64* %RBP.i
  %275 = sub i64 %274, 16
  %276 = load i64, i64* %PC.i
  %277 = add i64 %276, 4
  store i64 %277, i64* %PC.i
  %278 = inttoptr i64 %275 to i64*
  %279 = load i64, i64* %278
  store i64 %279, i64* %R11.i89, align 8
  %280 = sub i64 %274, 72
  %281 = add i64 %277, 4
  store i64 %281, i64* %PC.i
  %282 = inttoptr i64 %280 to i64*
  store i64 %279, i64* %282
  %283 = load i64, i64* %RBP.i
  %284 = sub i64 %283, 72
  %285 = load i64, i64* %PC.i
  %286 = add i64 %285, 4
  store i64 %286, i64* %PC.i
  %287 = inttoptr i64 %284 to i64*
  %288 = load i64, i64* %287
  store i64 %288, i64* %R11.i89, align 8
  %289 = sub i64 %283, 64
  %290 = add i64 %286, 3
  store i64 %290, i64* %PC.i
  %291 = inttoptr i64 %289 to i32*
  %292 = load i32, i32* %291
  %293 = zext i32 %292 to i64
  store i64 %293, i64* %RDX.i79, align 8
  %294 = sub i64 %283, 80
  %295 = load i64, i64* %RAX.i108
  %296 = add i64 %290, 4
  store i64 %296, i64* %PC.i
  %297 = inttoptr i64 %294 to i64*
  store i64 %295, i64* %297
  %298 = load i64, i64* %R11.i89
  %299 = load i64, i64* %PC.i
  %300 = add i64 %299, 3
  store i64 %298, i64* %RAX.i108, align 8
  %301 = load i64, i64* %RBP.i
  %302 = sub i64 %301, 88
  %303 = load i64, i64* %R10.i106
  %304 = add i64 %300, 4
  store i64 %304, i64* %PC.i
  %305 = inttoptr i64 %302 to i64*
  store i64 %303, i64* %305
  %306 = load i64, i64* %PC.i
  %307 = add i64 %306, 1
  store i64 %307, i64* %PC.i
  %308 = load i64, i64* %11, align 8
  %309 = add i64 %308, 8
  %310 = inttoptr i64 %308 to i64*
  %311 = load i64, i64* %310
  store i64 %311, i64* %RBP.i, align 8
  store i64 %309, i64* %11, align 8
  %312 = add i64 %307, 1
  store i64 %312, i64* %PC.i
  %313 = inttoptr i64 %309 to i64*
  %314 = load i64, i64* %313
  store i64 %314, i64* %3, align 8
  %315 = add i64 %309, 8
  store i64 %315, i64* %11, align 8
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

define %struct.Memory* @routine_movq_0x18__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
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
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = inttoptr i64 %11 to i64*
  %15 = load i64, i64* %14
  store i64 %15, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x10__rbp____r10(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 15
  %7 = getelementptr inbounds %struct.Reg, %struct.Reg* %6, i32 0, i32 0
  %RBP = bitcast %union.anon* %7 to i64*
  %8 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 21
  %9 = getelementptr inbounds %struct.Reg, %struct.Reg* %8, i32 0, i32 0
  %R10 = bitcast %union.anon* %9 to i64*
  %10 = load i64, i64* %RBP
  %11 = add i64 %10, 16
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = inttoptr i64 %11 to i64*
  %15 = load i64, i64* %14
  store i64 %15, i64* %R10, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edi__MINUS0x14__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
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
  %11 = sub i64 %10, 20
  %12 = load i32, i32* %EDI
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %11 to i32*
  store i32 %12, i32* %16
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__esi__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
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
  %11 = sub i64 %10, 24
  %12 = load i32, i32* %ESI
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %11 to i32*
  store i32 %12, i32* %16
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0x1c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
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
  %11 = sub i64 %10, 28
  %12 = load i32, i32* %EDX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %11 to i32*
  store i32 %12, i32* %16
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
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
  %11 = sub i64 %10, 32
  %12 = load i32, i32* %ECX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %11 to i32*
  store i32 %12, i32* %16
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__r8d__MINUS0x24__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
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
  %11 = sub i64 %10, 36
  %12 = load i32, i32* %R8D
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %11 to i32*
  store i32 %12, i32* %16
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__r9d__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
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
  %11 = sub i64 %10, 40
  %12 = load i32, i32* %R9D
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %11 to i32*
  store i32 %12, i32* %16
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x10__rbp____r11(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 15
  %7 = getelementptr inbounds %struct.Reg, %struct.Reg* %6, i32 0, i32 0
  %RBP = bitcast %union.anon* %7 to i64*
  %8 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 23
  %9 = getelementptr inbounds %struct.Reg, %struct.Reg* %8, i32 0, i32 0
  %R11 = bitcast %union.anon* %9 to i64*
  %10 = load i64, i64* %RBP
  %11 = add i64 %10, 16
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = inttoptr i64 %11 to i64*
  %15 = load i64, i64* %14
  store i64 %15, i64* %R11, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl___r11____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 5
  %7 = getelementptr inbounds %struct.Reg, %struct.Reg* %6, i32 0, i32 0
  %RCX = bitcast %union.anon* %7 to i64*
  %8 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 23
  %9 = getelementptr inbounds %struct.Reg, %struct.Reg* %8, i32 0, i32 0
  %R11 = bitcast %union.anon* %9 to i64*
  %10 = load i64, i64* %R11
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 3
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x18__rbp____r11(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 15
  %7 = getelementptr inbounds %struct.Reg, %struct.Reg* %6, i32 0, i32 0
  %RBP = bitcast %union.anon* %7 to i64*
  %8 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 23
  %9 = getelementptr inbounds %struct.Reg, %struct.Reg* %8, i32 0, i32 0
  %R11 = bitcast %union.anon* %9 to i64*
  %10 = load i64, i64* %RBP
  %11 = add i64 %10, 24
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = inttoptr i64 %11 to i64*
  %15 = load i64, i64* %14
  store i64 %15, i64* %R11, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl___r11____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 7
  %7 = getelementptr inbounds %struct.Reg, %struct.Reg* %6, i32 0, i32 0
  %RDX = bitcast %union.anon* %7 to i64*
  %8 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 23
  %9 = getelementptr inbounds %struct.Reg, %struct.Reg* %8, i32 0, i32 0
  %R11 = bitcast %union.anon* %9 to i64*
  %10 = load i64, i64* %R11
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 3
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__edx___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 7
  %7 = getelementptr inbounds %struct.Reg, %struct.Reg* %6, i32 0, i32 0
  %EDX = bitcast %union.anon* %7 to i32*
  %8 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 5
  %9 = getelementptr inbounds %struct.Reg, %struct.Reg* %8, i32 0, i32 0
  %RCX = bitcast %union.anon* %9 to i64*
  %10 = load i64, i64* %RCX
  %11 = load i32, i32* %EDX
  %12 = zext i32 %11 to i64
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 2
  store i64 %14, i64* %PC
  %15 = trunc i64 %10 to i32
  %16 = add i32 %11, %15
  %17 = zext i32 %16 to i64
  store i64 %17, i64* %RCX, align 8
  %18 = icmp ult i32 %16, %15
  %19 = icmp ult i32 %16, %11
  %20 = or i1 %18, %19
  %21 = zext i1 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %21, i8* %22, align 1
  %23 = and i32 %16, 255
  %24 = call i32 @llvm.ctpop.i32(i32 %23)
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = xor i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %27, i8* %28, align 1
  %29 = xor i64 %12, %10
  %30 = trunc i64 %29 to i32
  %31 = xor i32 %30, %16
  %32 = lshr i32 %31, 4
  %33 = trunc i32 %32 to i8
  %34 = and i8 %33, 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %34, i8* %35, align 1
  %36 = icmp eq i32 %16, 0
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %37, i8* %38, align 1
  %39 = lshr i32 %16, 31
  %40 = trunc i32 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %40, i8* %41, align 1
  %42 = lshr i32 %15, 31
  %43 = lshr i32 %11, 31
  %44 = xor i32 %39, %42
  %45 = xor i32 %39, %43
  %46 = add i32 %44, %45
  %47 = icmp eq i32 %46, 2
  %48 = zext i1 %47 to i8
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %48, i8* %49, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__MINUS0x38__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
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
  %11 = sub i64 %10, 56
  %12 = load i32, i32* %ECX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %11 to i32*
  store i32 %12, i32* %16
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x4__r11____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 5
  %7 = getelementptr inbounds %struct.Reg, %struct.Reg* %6, i32 0, i32 0
  %RCX = bitcast %union.anon* %7 to i64*
  %8 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 23
  %9 = getelementptr inbounds %struct.Reg, %struct.Reg* %8, i32 0, i32 0
  %R11 = bitcast %union.anon* %9 to i64*
  %10 = load i64, i64* %R11
  %11 = add i64 %10, 4
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = inttoptr i64 %11 to i32*
  %15 = load i32, i32* %14
  %16 = zext i32 %15 to i64
  store i64 %16, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x4__r11____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 7
  %7 = getelementptr inbounds %struct.Reg, %struct.Reg* %6, i32 0, i32 0
  %RDX = bitcast %union.anon* %7 to i64*
  %8 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 23
  %9 = getelementptr inbounds %struct.Reg, %struct.Reg* %8, i32 0, i32 0
  %R11 = bitcast %union.anon* %9 to i64*
  %10 = load i64, i64* %R11
  %11 = add i64 %10, 4
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = inttoptr i64 %11 to i32*
  %15 = load i32, i32* %14
  %16 = zext i32 %15 to i64
  store i64 %16, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__MINUS0x34__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
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
  %11 = sub i64 %10, 52
  %12 = load i32, i32* %ECX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %11 to i32*
  store i32 %12, i32* %16
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x8__r11____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 5
  %7 = getelementptr inbounds %struct.Reg, %struct.Reg* %6, i32 0, i32 0
  %RCX = bitcast %union.anon* %7 to i64*
  %8 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 23
  %9 = getelementptr inbounds %struct.Reg, %struct.Reg* %8, i32 0, i32 0
  %R11 = bitcast %union.anon* %9 to i64*
  %10 = load i64, i64* %R11
  %11 = add i64 %10, 8
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = inttoptr i64 %11 to i32*
  %15 = load i32, i32* %14
  %16 = zext i32 %15 to i64
  store i64 %16, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x8__r11____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 7
  %7 = getelementptr inbounds %struct.Reg, %struct.Reg* %6, i32 0, i32 0
  %RDX = bitcast %union.anon* %7 to i64*
  %8 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 23
  %9 = getelementptr inbounds %struct.Reg, %struct.Reg* %8, i32 0, i32 0
  %R11 = bitcast %union.anon* %9 to i64*
  %10 = load i64, i64* %R11
  %11 = add i64 %10, 8
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = inttoptr i64 %11 to i32*
  %15 = load i32, i32* %14
  %16 = zext i32 %15 to i64
  store i64 %16, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
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
  %11 = sub i64 %10, 48
  %12 = load i32, i32* %ECX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %11 to i32*
  store i32 %12, i32* %16
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x30__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
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
  %11 = sub i64 %10, 48
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 3
  store i64 %13, i64* %PC
  %14 = inttoptr i64 %11 to i32*
  %15 = load i32, i32* %14
  %16 = zext i32 %15 to i64
  store i64 %16, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
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
  %11 = sub i64 %10, 8
  %12 = load i32, i32* %ECX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %11 to i32*
  store i32 %12, i32* %16
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x38__rbp____r11(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 15
  %7 = getelementptr inbounds %struct.Reg, %struct.Reg* %6, i32 0, i32 0
  %RBP = bitcast %union.anon* %7 to i64*
  %8 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 23
  %9 = getelementptr inbounds %struct.Reg, %struct.Reg* %8, i32 0, i32 0
  %R11 = bitcast %union.anon* %9 to i64*
  %10 = load i64, i64* %RBP
  %11 = sub i64 %10, 56
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = inttoptr i64 %11 to i64*
  %15 = load i64, i64* %14
  store i64 %15, i64* %R11, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r11__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 15
  %7 = getelementptr inbounds %struct.Reg, %struct.Reg* %6, i32 0, i32 0
  %RBP = bitcast %union.anon* %7 to i64*
  %8 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 23
  %9 = getelementptr inbounds %struct.Reg, %struct.Reg* %8, i32 0, i32 0
  %R11 = bitcast %union.anon* %9 to i64*
  %10 = load i64, i64* %RBP
  %11 = sub i64 %10, 16
  %12 = load i64, i64* %R11
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = inttoptr i64 %11 to i64*
  store i64 %12, i64* %15
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x8__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
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
  %11 = sub i64 %10, 8
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 3
  store i64 %13, i64* %PC
  %14 = inttoptr i64 %11 to i32*
  %15 = load i32, i32* %14
  %16 = zext i32 %15 to i64
  store i64 %16, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__MINUS0x40__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
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
  %11 = sub i64 %10, 64
  %12 = load i32, i32* %ECX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %11 to i32*
  store i32 %12, i32* %16
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x10__rbp____r11(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 15
  %7 = getelementptr inbounds %struct.Reg, %struct.Reg* %6, i32 0, i32 0
  %RBP = bitcast %union.anon* %7 to i64*
  %8 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 23
  %9 = getelementptr inbounds %struct.Reg, %struct.Reg* %8, i32 0, i32 0
  %R11 = bitcast %union.anon* %9 to i64*
  %10 = load i64, i64* %RBP
  %11 = sub i64 %10, 16
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = inttoptr i64 %11 to i64*
  %15 = load i64, i64* %14
  store i64 %15, i64* %R11, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r11__MINUS0x48__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 15
  %7 = getelementptr inbounds %struct.Reg, %struct.Reg* %6, i32 0, i32 0
  %RBP = bitcast %union.anon* %7 to i64*
  %8 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 23
  %9 = getelementptr inbounds %struct.Reg, %struct.Reg* %8, i32 0, i32 0
  %R11 = bitcast %union.anon* %9 to i64*
  %10 = load i64, i64* %RBP
  %11 = sub i64 %10, 72
  %12 = load i64, i64* %R11
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = inttoptr i64 %11 to i64*
  store i64 %12, i64* %15
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x48__rbp____r11(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 15
  %7 = getelementptr inbounds %struct.Reg, %struct.Reg* %6, i32 0, i32 0
  %RBP = bitcast %union.anon* %7 to i64*
  %8 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 23
  %9 = getelementptr inbounds %struct.Reg, %struct.Reg* %8, i32 0, i32 0
  %R11 = bitcast %union.anon* %9 to i64*
  %10 = load i64, i64* %RBP
  %11 = sub i64 %10, 72
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = inttoptr i64 %11 to i64*
  %15 = load i64, i64* %14
  store i64 %15, i64* %R11, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x40__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 7
  %7 = getelementptr inbounds %struct.Reg, %struct.Reg* %6, i32 0, i32 0
  %RDX = bitcast %union.anon* %7 to i64*
  %8 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 15
  %9 = getelementptr inbounds %struct.Reg, %struct.Reg* %8, i32 0, i32 0
  %RBP = bitcast %union.anon* %9 to i64*
  %10 = load i64, i64* %RBP
  %11 = sub i64 %10, 64
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 3
  store i64 %13, i64* %PC
  %14 = inttoptr i64 %11 to i32*
  %15 = load i32, i32* %14
  %16 = zext i32 %15 to i64
  store i64 %16, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0x50__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
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
  %11 = sub i64 %10, 80
  %12 = load i64, i64* %RAX
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = inttoptr i64 %11 to i64*
  store i64 %12, i64* %15
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r11___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 1
  %7 = getelementptr inbounds %struct.Reg, %struct.Reg* %6, i32 0, i32 0
  %RAX = bitcast %union.anon* %7 to i64*
  %8 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 23
  %9 = getelementptr inbounds %struct.Reg, %struct.Reg* %8, i32 0, i32 0
  %R11 = bitcast %union.anon* %9 to i64*
  %10 = load i64, i64* %R11
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 3
  store i64 %12, i64* %PC
  store i64 %10, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r10__MINUS0x58__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 15
  %7 = getelementptr inbounds %struct.Reg, %struct.Reg* %6, i32 0, i32 0
  %RBP = bitcast %union.anon* %7 to i64*
  %8 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 21
  %9 = getelementptr inbounds %struct.Reg, %struct.Reg* %8, i32 0, i32 0
  %R10 = bitcast %union.anon* %9 to i64*
  %10 = load i64, i64* %RBP
  %11 = sub i64 %10, 88
  %12 = load i64, i64* %R10
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = inttoptr i64 %11 to i64*
  store i64 %12, i64* %15
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
