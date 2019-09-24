; ModuleID = 'test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%0 = type { %1, [32 x %3], %6, i64, i64, i64, %7 }
%1 = type { i32, i32, %2 }
%2 = type { i64 }
%3 = type { %4 }
%4 = type { %5 }
%5 = type { [8 x i64] }
%6 = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%7 = type { i64, %8, i64, %8, i64, %8, i64, %8, i64, %8, i64, %8, i64, %8, i64, %8, i64, %8, i64, %8, i64, %8, i64, %8, i64, %8, i64, %8, i64, %8, i64, %8, i64, %8 }
%8 = type { %2 }
%9 = type opaque

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: alwaysinline nounwind
define %9* @bnary_search(%0* noalias dereferenceable(3376), i64, %9* noalias readnone returned) local_unnamed_addr #1 {
  %4 = getelementptr inbounds %0, %0* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5 = getelementptr inbounds %0, %0* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = add i64 %1, 1
  store i64 %7, i64* %4, align 8
  %8 = getelementptr inbounds %0, %0* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = add i64 %9, -8
  %11 = inttoptr i64 %10 to i64*
  store i64 %6, i64* %11, align 8
  store i64 %10, i64* %8, align 8
  %12 = load i64, i64* %4, align 8
  store i64 %10, i64* %5, align 8
  %13 = getelementptr inbounds %0, %0* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %14 = add i64 %9, -32
  %15 = load i64, i64* %13, align 8
  %16 = add i64 %12, 7
  store i64 %16, i64* %4, align 8
  %17 = inttoptr i64 %14 to i64*
  store i64 %15, i64* %17, align 8
  %18 = load i64, i64* %4, align 8
  %19 = getelementptr inbounds %0, %0* %0, i64 0, i32 6, i32 9, i32 0
  %20 = bitcast %2* %19 to i32*
  %21 = load i64, i64* %5, align 8
  %22 = add i64 %21, -28
  %23 = load i32, i32* %20, align 4
  %24 = add i64 %18, 3
  store i64 %24, i64* %4, align 8
  %25 = inttoptr i64 %22 to i32*
  store i32 %23, i32* %25, align 4
  %26 = load i64, i64* %4, align 8
  %27 = getelementptr inbounds %0, %0* %0, i64 0, i32 6, i32 7, i32 0
  %28 = bitcast %2* %27 to i32*
  %29 = load i64, i64* %5, align 8
  %30 = add i64 %29, -32
  %31 = load i32, i32* %28, align 4
  %32 = add i64 %26, 3
  store i64 %32, i64* %4, align 8
  %33 = inttoptr i64 %30 to i32*
  store i32 %31, i32* %33, align 4
  %34 = load i64, i64* %4, align 8
  %35 = load i64, i64* %5, align 8
  %36 = add i64 %35, -12
  %37 = add i64 %34, 7
  store i64 %37, i64* %4, align 8
  %38 = inttoptr i64 %36 to i32*
  store i32 0, i32* %38, align 4
  %39 = load i64, i64* %4, align 8
  %40 = getelementptr inbounds %0, %0* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %41 = load i64, i64* %5, align 8
  %42 = add i64 %41, -12
  %43 = add i64 %39, 3
  store i64 %43, i64* %4, align 8
  %44 = inttoptr i64 %42 to i32*
  %45 = load i32, i32* %44, align 4
  %46 = add i32 %45, -1
  %47 = zext i32 %46 to i64
  store i64 %47, i64* %40, align 8
  %48 = icmp eq i32 %45, 0
  %49 = zext i1 %48 to i8
  %50 = getelementptr inbounds %0, %0* %0, i64 0, i32 2, i32 1
  store i8 %49, i8* %50, align 1
  %51 = and i32 %46, 255
  %52 = tail call i32 @llvm.ctpop.i32(i32 %51)
  %53 = trunc i32 %52 to i8
  %54 = and i8 %53, 1
  %55 = xor i8 %54, 1
  %56 = getelementptr inbounds %0, %0* %0, i64 0, i32 2, i32 3
  store i8 %55, i8* %56, align 1
  %57 = xor i32 %46, %45
  %58 = lshr i32 %57, 4
  %59 = trunc i32 %58 to i8
  %60 = and i8 %59, 1
  %61 = getelementptr inbounds %0, %0* %0, i64 0, i32 2, i32 5
  store i8 %60, i8* %61, align 1
  %62 = icmp eq i32 %46, 0
  %63 = zext i1 %62 to i8
  %64 = getelementptr inbounds %0, %0* %0, i64 0, i32 2, i32 7
  store i8 %63, i8* %64, align 1
  %65 = lshr i32 %46, 31
  %66 = trunc i32 %65 to i8
  %67 = getelementptr inbounds %0, %0* %0, i64 0, i32 2, i32 9
  store i8 %66, i8* %67, align 1
  %68 = lshr i32 %45, 31
  %69 = xor i32 %65, %68
  %70 = add nuw nsw i32 %69, %68
  %71 = icmp eq i32 %70, 2
  %72 = zext i1 %71 to i8
  %73 = getelementptr inbounds %0, %0* %0, i64 0, i32 2, i32 13
  store i8 %72, i8* %73, align 1
  %74 = add i64 %41, -8
  %75 = add i64 %39, 9
  store i64 %75, i64* %4, align 8
  %76 = inttoptr i64 %74 to i32*
  store i32 %46, i32* %76, align 4
  %77 = load i64, i64* %4, align 8
  %78 = add i64 %77, 106
  store i64 %78, i64* %4, align 8
  %79 = getelementptr inbounds %2, %2* %27, i64 0, i32 0
  br label %231

; <label>:80:                                     ; preds = %151
  %81 = add i32 %226, -1
  %82 = zext i32 %81 to i64
  store i64 %82, i64* %40, align 8
  %83 = icmp eq i32 %226, 0
  %84 = zext i1 %83 to i8
  store i8 %84, i8* %50, align 1
  %85 = and i32 %81, 255
  %86 = tail call i32 @llvm.ctpop.i32(i32 %85)
  %87 = trunc i32 %86 to i8
  %88 = and i8 %87, 1
  %89 = xor i8 %88, 1
  store i8 %89, i8* %56, align 1
  %90 = xor i32 %81, %226
  %91 = lshr i32 %90, 4
  %92 = trunc i32 %91 to i8
  %93 = and i8 %92, 1
  store i8 %93, i8* %61, align 1
  %94 = icmp eq i32 %81, 0
  %95 = zext i1 %94 to i8
  store i8 %95, i8* %64, align 1
  %96 = lshr i32 %81, 31
  %97 = trunc i32 %96 to i8
  store i8 %97, i8* %67, align 1
  %98 = lshr i32 %226, 31
  %99 = xor i32 %96, %98
  %100 = add nuw nsw i32 %99, %98
  %101 = icmp eq i32 %100, 2
  %102 = zext i1 %101 to i8
  store i8 %102, i8* %73, align 1
  %103 = add i64 %222, -8
  %104 = add i64 %221, 9
  store i64 %104, i64* %4, align 8
  %105 = inttoptr i64 %103 to i32*
  store i32 %81, i32* %105, align 4
  %106 = load i64, i64* %4, align 8
  br label %107

; <label>:107:                                    ; preds = %80, %109
  %108 = phi i64 [ %106, %80 ], [ %137, %109 ]
  br label %231

; <label>:109:                                    ; preds = %151
  %110 = add i32 %226, 1
  %111 = zext i32 %110 to i64
  store i64 %111, i64* %40, align 8
  %112 = icmp eq i32 %226, -1
  %113 = icmp eq i32 %110, 0
  %114 = or i1 %112, %113
  %115 = zext i1 %114 to i8
  store i8 %115, i8* %50, align 1
  %116 = and i32 %110, 255
  %117 = tail call i32 @llvm.ctpop.i32(i32 %116)
  %118 = trunc i32 %117 to i8
  %119 = and i8 %118, 1
  %120 = xor i8 %119, 1
  store i8 %120, i8* %56, align 1
  %121 = xor i32 %110, %226
  %122 = lshr i32 %121, 4
  %123 = trunc i32 %122 to i8
  %124 = and i8 %123, 1
  store i8 %124, i8* %61, align 1
  %125 = zext i1 %113 to i8
  store i8 %125, i8* %64, align 1
  %126 = lshr i32 %110, 31
  %127 = trunc i32 %126 to i8
  store i8 %127, i8* %67, align 1
  %128 = lshr i32 %226, 31
  %129 = xor i32 %126, %128
  %130 = add nuw nsw i32 %129, %126
  %131 = icmp eq i32 %130, 2
  %132 = zext i1 %131 to i8
  store i8 %132, i8* %73, align 1
  %133 = add i64 %222, -12
  %134 = add i64 %221, 9
  store i64 %134, i64* %4, align 8
  %135 = inttoptr i64 %133 to i32*
  store i32 %110, i32* %135, align 4
  %136 = load i64, i64* %4, align 8
  %137 = add i64 %136, 11
  store i64 %137, i64* %4, align 8
  br label %107

; <label>:138:                                    ; preds = %229, %149
  %139 = phi i64 [ %230, %229 ], [ %150, %149 ]
  %140 = add i64 %139, 1
  store i64 %140, i64* %4, align 8
  %141 = load i64, i64* %8, align 8
  %142 = add i64 %141, 8
  %143 = inttoptr i64 %141 to i64*
  %144 = load i64, i64* %143, align 8
  store i64 %144, i64* %5, align 8
  store i64 %142, i64* %8, align 8
  %145 = add i64 %139, 2
  store i64 %145, i64* %4, align 8
  %146 = inttoptr i64 %142 to i64*
  %147 = load i64, i64* %146, align 8
  store i64 %147, i64* %4, align 8
  %148 = add i64 %141, 16
  store i64 %148, i64* %8, align 8
  ret %9* %2

; <label>:149:                                    ; preds = %271
  %150 = add i64 %409, 65
  store i64 %150, i64* %4, align 8
  br label %138

; <label>:151:                                    ; preds = %271
  %152 = sext i32 %414 to i64
  store i64 %152, i64* %40, align 8
  %153 = shl nsw i64 %152, 2
  store i64 %153, i64* %79, align 8
  %154 = add i64 %410, -24
  %155 = add i64 %409, 17
  store i64 %155, i64* %4, align 8
  %156 = inttoptr i64 %154 to i64*
  %157 = load i64, i64* %156, align 8
  %158 = add i64 %153, %157
  store i64 %158, i64* %40, align 8
  %159 = icmp ult i64 %158, %157
  %160 = icmp ult i64 %158, %153
  %161 = or i1 %159, %160
  %162 = zext i1 %161 to i8
  store i8 %162, i8* %50, align 1
  %163 = trunc i64 %158 to i32
  %164 = and i32 %163, 255
  %165 = tail call i32 @llvm.ctpop.i32(i32 %164)
  %166 = trunc i32 %165 to i8
  %167 = and i8 %166, 1
  %168 = xor i8 %167, 1
  store i8 %168, i8* %56, align 1
  %169 = xor i64 %153, %157
  %170 = xor i64 %169, %158
  %171 = lshr i64 %170, 4
  %172 = trunc i64 %171 to i8
  %173 = and i8 %172, 1
  store i8 %173, i8* %61, align 1
  %174 = icmp eq i64 %158, 0
  %175 = zext i1 %174 to i8
  store i8 %175, i8* %64, align 1
  %176 = lshr i64 %158, 63
  %177 = trunc i64 %176 to i8
  store i8 %177, i8* %67, align 1
  %178 = lshr i64 %157, 63
  %179 = lshr i64 %152, 61
  %180 = and i64 %179, 1
  %181 = xor i64 %176, %178
  %182 = xor i64 %176, %180
  %183 = add nuw nsw i64 %181, %182
  %184 = icmp eq i64 %183, 2
  %185 = zext i1 %184 to i8
  store i8 %185, i8* %73, align 1
  %186 = inttoptr i64 %158 to i32*
  %187 = add i64 %409, 22
  store i64 %187, i64* %4, align 8
  %188 = load i32, i32* %186, align 4
  %189 = zext i32 %188 to i64
  store i64 %189, i64* %40, align 8
  %190 = add i64 %410, -32
  %191 = add i64 %409, 25
  store i64 %191, i64* %4, align 8
  %192 = inttoptr i64 %190 to i32*
  %193 = load i32, i32* %192, align 4
  %194 = sub i32 %188, %193
  %195 = icmp ult i32 %188, %193
  %196 = zext i1 %195 to i8
  store i8 %196, i8* %50, align 1
  %197 = and i32 %194, 255
  %198 = tail call i32 @llvm.ctpop.i32(i32 %197)
  %199 = trunc i32 %198 to i8
  %200 = and i8 %199, 1
  %201 = xor i8 %200, 1
  store i8 %201, i8* %56, align 1
  %202 = xor i32 %193, %188
  %203 = xor i32 %202, %194
  %204 = lshr i32 %203, 4
  %205 = trunc i32 %204 to i8
  %206 = and i8 %205, 1
  store i8 %206, i8* %61, align 1
  %207 = icmp eq i32 %194, 0
  %208 = zext i1 %207 to i8
  store i8 %208, i8* %64, align 1
  %209 = lshr i32 %194, 31
  %210 = trunc i32 %209 to i8
  store i8 %210, i8* %67, align 1
  %211 = lshr i32 %188, 31
  %212 = lshr i32 %193, 31
  %213 = xor i32 %212, %211
  %214 = xor i32 %209, %211
  %215 = add nuw nsw i32 %214, %213
  %216 = icmp eq i32 %215, 2
  %217 = zext i1 %216 to i8
  store i8 %217, i8* %73, align 1
  %218 = icmp ne i8 %210, 0
  %219 = xor i1 %218, %216
  %220 = select i1 %219, i64 27, i64 38
  %221 = add i64 %409, %220
  %222 = load i64, i64* %5, align 8
  %223 = add i64 %222, -4
  %224 = add i64 %221, 3
  store i64 %224, i64* %4, align 8
  %225 = inttoptr i64 %223 to i32*
  %226 = load i32, i32* %225, align 4
  %227 = zext i32 %226 to i64
  store i64 %227, i64* %40, align 8
  %228 = add i64 %221, 6
  store i64 %228, i64* %4, align 8
  br i1 %219, label %109, label %80

; <label>:229:                                    ; preds = %231
  %230 = add i64 %270, 5
  store i64 %230, i64* %4, align 8
  store i64 4294967295, i64* %40, align 8
  br label %138

; <label>:231:                                    ; preds = %107, %3
  %232 = phi i64 [ %78, %3 ], [ %108, %107 ]
  %233 = load i64, i64* %5, align 8
  %234 = add i64 %233, -12
  %235 = add i64 %232, 3
  store i64 %235, i64* %4, align 8
  %236 = inttoptr i64 %234 to i32*
  %237 = load i32, i32* %236, align 4
  %238 = zext i32 %237 to i64
  store i64 %238, i64* %40, align 8
  %239 = add i64 %233, -8
  %240 = add i64 %232, 6
  store i64 %240, i64* %4, align 8
  %241 = inttoptr i64 %239 to i32*
  %242 = load i32, i32* %241, align 4
  %243 = sub i32 %237, %242
  %244 = icmp ult i32 %237, %242
  %245 = zext i1 %244 to i8
  store i8 %245, i8* %50, align 1
  %246 = and i32 %243, 255
  %247 = tail call i32 @llvm.ctpop.i32(i32 %246)
  %248 = trunc i32 %247 to i8
  %249 = and i8 %248, 1
  %250 = xor i8 %249, 1
  store i8 %250, i8* %56, align 1
  %251 = xor i32 %242, %237
  %252 = xor i32 %251, %243
  %253 = lshr i32 %252, 4
  %254 = trunc i32 %253 to i8
  %255 = and i8 %254, 1
  store i8 %255, i8* %61, align 1
  %256 = icmp eq i32 %243, 0
  %257 = zext i1 %256 to i8
  store i8 %257, i8* %64, align 1
  %258 = lshr i32 %243, 31
  %259 = trunc i32 %258 to i8
  store i8 %259, i8* %67, align 1
  %260 = lshr i32 %237, 31
  %261 = lshr i32 %242, 31
  %262 = xor i32 %261, %260
  %263 = xor i32 %258, %260
  %264 = add nuw nsw i32 %263, %262
  %265 = icmp eq i32 %264, 2
  %266 = zext i1 %265 to i8
  store i8 %266, i8* %73, align 1
  %267 = icmp ne i8 %259, 0
  %268 = xor i1 %267, %265
  %269 = select i1 %268, i64 -104, i64 8
  %270 = add i64 %232, %269
  store i64 %270, i64* %4, align 8
  br i1 %268, label %271, label %229

; <label>:271:                                    ; preds = %231
  %272 = add i64 %270, 3
  store i64 %272, i64* %4, align 8
  %273 = load i32, i32* %241, align 4
  %274 = zext i32 %273 to i64
  store i64 %274, i64* %40, align 8
  %275 = add i64 %270, 6
  store i64 %275, i64* %4, align 8
  %276 = load i32, i32* %236, align 4
  %277 = sub i32 %273, %276
  %278 = lshr i32 %277, 31
  %279 = add i32 %278, %277
  %280 = zext i32 %279 to i64
  %281 = shl nuw i64 %280, 32
  %282 = ashr i64 %281, 33
  %283 = trunc i32 %279 to i8
  %284 = and i8 %283, 1
  %285 = trunc i64 %282 to i32
  %286 = and i64 %282, 4294967295
  store i64 %286, i64* %40, align 8
  store i8 %284, i8* %50, align 1
  %287 = and i32 %285, 255
  %288 = tail call i32 @llvm.ctpop.i32(i32 %287)
  %289 = trunc i32 %288 to i8
  %290 = and i8 %289, 1
  %291 = xor i8 %290, 1
  store i8 %291, i8* %56, align 1
  store i8 0, i8* %61, align 1
  %292 = icmp eq i32 %285, 0
  %293 = zext i1 %292 to i8
  store i8 %293, i8* %64, align 1
  %294 = lshr i64 %282, 31
  %295 = trunc i64 %294 to i8
  %296 = and i8 %295, 1
  store i8 %296, i8* %67, align 1
  store i8 0, i8* %73, align 1
  %297 = trunc i64 %282 to i32
  %298 = and i64 %282, 4294967295
  store i64 %298, i64* %79, align 8
  %299 = load i64, i64* %5, align 8
  %300 = add i64 %299, -12
  %301 = add i64 %270, 21
  store i64 %301, i64* %4, align 8
  %302 = inttoptr i64 %300 to i32*
  %303 = load i32, i32* %302, align 4
  %304 = add i32 %297, %303
  %305 = zext i32 %304 to i64
  store i64 %305, i64* %40, align 8
  %306 = icmp ult i32 %304, %303
  %307 = icmp ult i32 %304, %297
  %308 = or i1 %306, %307
  %309 = zext i1 %308 to i8
  store i8 %309, i8* %50, align 1
  %310 = and i32 %304, 255
  %311 = tail call i32 @llvm.ctpop.i32(i32 %310)
  %312 = trunc i32 %311 to i8
  %313 = and i8 %312, 1
  %314 = xor i8 %313, 1
  store i8 %314, i8* %56, align 1
  %315 = xor i32 %297, %303
  %316 = xor i32 %315, %304
  %317 = lshr i32 %316, 4
  %318 = trunc i32 %317 to i8
  %319 = and i8 %318, 1
  store i8 %319, i8* %61, align 1
  %320 = icmp eq i32 %304, 0
  %321 = zext i1 %320 to i8
  store i8 %321, i8* %64, align 1
  %322 = lshr i32 %304, 31
  %323 = trunc i32 %322 to i8
  store i8 %323, i8* %67, align 1
  %324 = lshr i32 %303, 31
  %325 = lshr i64 %282, 31
  %326 = trunc i64 %325 to i32
  %327 = and i32 %326, 1
  %328 = xor i32 %322, %324
  %329 = xor i32 %322, %327
  %330 = add nuw nsw i32 %328, %329
  %331 = icmp eq i32 %330, 2
  %332 = zext i1 %331 to i8
  store i8 %332, i8* %73, align 1
  %333 = add i64 %299, -4
  %334 = add i64 %270, 26
  store i64 %334, i64* %4, align 8
  %335 = inttoptr i64 %333 to i32*
  store i32 %304, i32* %335, align 4
  %336 = load i64, i64* %4, align 8
  %337 = load i64, i64* %5, align 8
  %338 = add i64 %337, -4
  %339 = add i64 %336, 3
  store i64 %339, i64* %4, align 8
  %340 = inttoptr i64 %338 to i32*
  %341 = load i32, i32* %340, align 4
  %342 = sext i32 %341 to i64
  store i64 %342, i64* %40, align 8
  %343 = shl nsw i64 %342, 2
  store i64 %343, i64* %79, align 8
  %344 = add i64 %337, -24
  %345 = add i64 %336, 17
  store i64 %345, i64* %4, align 8
  %346 = inttoptr i64 %344 to i64*
  %347 = load i64, i64* %346, align 8
  %348 = add i64 %343, %347
  store i64 %348, i64* %40, align 8
  %349 = icmp ult i64 %348, %347
  %350 = icmp ult i64 %348, %343
  %351 = or i1 %349, %350
  %352 = zext i1 %351 to i8
  store i8 %352, i8* %50, align 1
  %353 = trunc i64 %348 to i32
  %354 = and i32 %353, 255
  %355 = tail call i32 @llvm.ctpop.i32(i32 %354)
  %356 = trunc i32 %355 to i8
  %357 = and i8 %356, 1
  %358 = xor i8 %357, 1
  store i8 %358, i8* %56, align 1
  %359 = xor i64 %343, %347
  %360 = xor i64 %359, %348
  %361 = lshr i64 %360, 4
  %362 = trunc i64 %361 to i8
  %363 = and i8 %362, 1
  store i8 %363, i8* %61, align 1
  %364 = icmp eq i64 %348, 0
  %365 = zext i1 %364 to i8
  store i8 %365, i8* %64, align 1
  %366 = lshr i64 %348, 63
  %367 = trunc i64 %366 to i8
  store i8 %367, i8* %67, align 1
  %368 = lshr i64 %347, 63
  %369 = lshr i64 %342, 61
  %370 = and i64 %369, 1
  %371 = xor i64 %366, %368
  %372 = xor i64 %366, %370
  %373 = add nuw nsw i64 %371, %372
  %374 = icmp eq i64 %373, 2
  %375 = zext i1 %374 to i8
  store i8 %375, i8* %73, align 1
  %376 = inttoptr i64 %348 to i32*
  %377 = add i64 %336, 22
  store i64 %377, i64* %4, align 8
  %378 = load i32, i32* %376, align 4
  %379 = zext i32 %378 to i64
  store i64 %379, i64* %40, align 8
  %380 = add i64 %337, -32
  %381 = add i64 %336, 25
  store i64 %381, i64* %4, align 8
  %382 = inttoptr i64 %380 to i32*
  %383 = load i32, i32* %382, align 4
  %384 = sub i32 %378, %383
  %385 = icmp ult i32 %378, %383
  %386 = zext i1 %385 to i8
  store i8 %386, i8* %50, align 1
  %387 = and i32 %384, 255
  %388 = tail call i32 @llvm.ctpop.i32(i32 %387)
  %389 = trunc i32 %388 to i8
  %390 = and i8 %389, 1
  %391 = xor i8 %390, 1
  store i8 %391, i8* %56, align 1
  %392 = xor i32 %383, %378
  %393 = xor i32 %392, %384
  %394 = lshr i32 %393, 4
  %395 = trunc i32 %394 to i8
  %396 = and i8 %395, 1
  store i8 %396, i8* %61, align 1
  %397 = icmp eq i32 %384, 0
  %398 = zext i1 %397 to i8
  store i8 %398, i8* %64, align 1
  %399 = lshr i32 %384, 31
  %400 = trunc i32 %399 to i8
  store i8 %400, i8* %67, align 1
  %401 = lshr i32 %378, 31
  %402 = lshr i32 %383, 31
  %403 = xor i32 %402, %401
  %404 = xor i32 %399, %401
  %405 = add nuw nsw i32 %404, %403
  %406 = icmp eq i32 %405, 2
  %407 = zext i1 %406 to i8
  store i8 %407, i8* %73, align 1
  %408 = select i1 %397, i64 27, i64 32
  %409 = add i64 %336, %408
  %410 = load i64, i64* %5, align 8
  %411 = add i64 %410, -4
  %412 = add i64 %409, 3
  store i64 %412, i64* %4, align 8
  %413 = inttoptr i64 %411 to i32*
  %414 = load i32, i32* %413, align 4
  %415 = zext i32 %414 to i64
  store i64 %415, i64* %40, align 8
  store i64 %412, i64* %4, align 8
  br i1 %397, label %149, label %151
}
