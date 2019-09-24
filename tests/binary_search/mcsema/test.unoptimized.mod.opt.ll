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
declare i32 @llvm.ctpop.i32(i32)

; Function Attrs: noinline nounwind
define %36* @sub_6c0_binary_search(%6* noalias dereferenceable(3376), i64, %36* noalias readnone returned) local_unnamed_addr
  %4 = getelementptr inbounds %6, %6* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5 = getelementptr inbounds %6, %6* %0, i64 0, i32 6, i32 7, i32 0
  %6 = bitcast %0* %5 to i32*
  %7 = getelementptr inbounds %6, %6* %0, i64 0, i32 6, i32 9, i32 0
  %8 = bitcast %0* %7 to i32*
  %9 = getelementptr inbounds %6, %6* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %10 = getelementptr inbounds %0, %0* %5, i64 0, i32 0
  %11 = getelementptr inbounds %6, %6* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %12 = getelementptr inbounds %6, %6* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = add i64 %1, 1
  store i64 %14, i64* %4, align 8
  %15 = getelementptr inbounds %6, %6* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = add i64 %16, -8
  %18 = inttoptr i64 %17 to i64*
  store i64 %13, i64* %18, align 8
  store i64 %17, i64* %15, align 8
  %19 = load i64, i64* %4, align 8
  store i64 %17, i64* %12, align 8
  %20 = add i64 %16, -32
  %21 = load i64, i64* %11, align 8
  %22 = add i64 %19, 7
  store i64 %22, i64* %4, align 8
  %23 = inttoptr i64 %20 to i64*
  store i64 %21, i64* %23, align 8
  %24 = load i64, i64* %12, align 8
  %25 = add i64 %24, -28
  %26 = load i32, i32* %8, align 4
  %27 = load i64, i64* %4, align 8
  %28 = add i64 %27, 3
  store i64 %28, i64* %4, align 8
  %29 = inttoptr i64 %25 to i32*
  store i32 %26, i32* %29, align 4
  %30 = load i64, i64* %12, align 8
  %31 = add i64 %30, -32
  %32 = load i32, i32* %6, align 4
  %33 = load i64, i64* %4, align 8
  %34 = add i64 %33, 3
  store i64 %34, i64* %4, align 8
  %35 = inttoptr i64 %31 to i32*
  store i32 %32, i32* %35, align 4
  %36 = load i64, i64* %12, align 8
  %37 = add i64 %36, -12
  %38 = load i64, i64* %4, align 8
  %39 = add i64 %38, 7
  store i64 %39, i64* %4, align 8
  %40 = inttoptr i64 %37 to i32*
  store i32 0, i32* %40, align 4
  %41 = load i64, i64* %12, align 8
  %42 = add i64 %41, -28
  %43 = load i64, i64* %4, align 8
  %44 = add i64 %43, 3
  store i64 %44, i64* %4, align 8
  %45 = inttoptr i64 %42 to i32*
  %46 = load i32, i32* %45, align 4
  %47 = add i32 %46, -1
  %48 = zext i32 %47 to i64
  store i64 %48, i64* %9, align 8
  %49 = icmp eq i32 %46, 0
  %50 = zext i1 %49 to i8
  %51 = getelementptr inbounds %6, %6* %0, i64 0, i32 2, i32 1
  store i8 %50, i8* %51, align 1
  %52 = and i32 %47, 255
  %53 = tail call i32 @llvm.ctpop.i32(i32 %52)
  %54 = trunc i32 %53 to i8
  %55 = and i8 %54, 1
  %56 = xor i8 %55, 1
  %57 = getelementptr inbounds %6, %6* %0, i64 0, i32 2, i32 3
  store i8 %56, i8* %57, align 1
  %58 = xor i32 %47, %46
  %59 = lshr i32 %58, 4
  %60 = trunc i32 %59 to i8
  %61 = and i8 %60, 1
  %62 = getelementptr inbounds %6, %6* %0, i64 0, i32 2, i32 5
  store i8 %61, i8* %62, align 1
  %63 = icmp eq i32 %47, 0
  %64 = zext i1 %63 to i8
  %65 = getelementptr inbounds %6, %6* %0, i64 0, i32 2, i32 7
  store i8 %64, i8* %65, align 1
  %66 = lshr i32 %47, 31
  %67 = trunc i32 %66 to i8
  %68 = getelementptr inbounds %6, %6* %0, i64 0, i32 2, i32 9
  store i8 %67, i8* %68, align 1
  %69 = lshr i32 %46, 31
  %70 = xor i32 %66, %69
  %71 = add nuw nsw i32 %70, %69
  %72 = icmp eq i32 %71, 2
  %73 = zext i1 %72 to i8
  %74 = getelementptr inbounds %6, %6* %0, i64 0, i32 2, i32 13
  store i8 %73, i8* %74, align 1
  %75 = add i64 %41, -8
  %76 = add i64 %43, 9
  store i64 %76, i64* %4, align 8
  %77 = inttoptr i64 %75 to i32*
  store i32 %47, i32* %77, align 4
  %78 = load i64, i64* %4, align 8
  %79 = add i64 %78, 106
  store i64 %79, i64* %4, align 8
  br label %230

; <label>:80:                                     ; preds = %153
  %81 = add i32 %225, -1
  %82 = zext i32 %81 to i64
  store i64 %82, i64* %9, align 8
  %83 = icmp eq i32 %225, 0
  %84 = zext i1 %83 to i8
  store i8 %84, i8* %51, align 1
  %85 = and i32 %81, 255
  %86 = tail call i32 @llvm.ctpop.i32(i32 %85)
  %87 = trunc i32 %86 to i8
  %88 = and i8 %87, 1
  %89 = xor i8 %88, 1
  store i8 %89, i8* %57, align 1
  %90 = xor i32 %81, %225
  %91 = lshr i32 %90, 4
  %92 = trunc i32 %91 to i8
  %93 = and i8 %92, 1
  store i8 %93, i8* %62, align 1
  %94 = icmp eq i32 %81, 0
  %95 = zext i1 %94 to i8
  store i8 %95, i8* %65, align 1
  %96 = lshr i32 %81, 31
  %97 = trunc i32 %96 to i8
  store i8 %97, i8* %68, align 1
  %98 = lshr i32 %225, 31
  %99 = xor i32 %96, %98
  %100 = add nuw nsw i32 %99, %98
  %101 = icmp eq i32 %100, 2
  %102 = zext i1 %101 to i8
  store i8 %102, i8* %74, align 1
  %103 = load i64, i64* %12, align 8
  %104 = add i64 %103, -8
  %105 = add i64 %223, 9
  store i64 %105, i64* %4, align 8
  %106 = inttoptr i64 %104 to i32*
  store i32 %81, i32* %106, align 4
  %107 = load i64, i64* %4, align 8
  br label %108

; <label>:108:                                    ; preds = %80, %110
  %109 = phi i64 [ %107, %80 ], [ %139, %110 ]
  br label %230

; <label>:110:                                    ; preds = %153
  %111 = add i32 %225, 1
  %112 = zext i32 %111 to i64
  store i64 %112, i64* %9, align 8
  %113 = icmp eq i32 %225, -1
  %114 = icmp eq i32 %111, 0
  %115 = or i1 %113, %114
  %116 = zext i1 %115 to i8
  store i8 %116, i8* %51, align 1
  %117 = and i32 %111, 255
  %118 = tail call i32 @llvm.ctpop.i32(i32 %117)
  %119 = trunc i32 %118 to i8
  %120 = and i8 %119, 1
  %121 = xor i8 %120, 1
  store i8 %121, i8* %57, align 1
  %122 = xor i32 %111, %225
  %123 = lshr i32 %122, 4
  %124 = trunc i32 %123 to i8
  %125 = and i8 %124, 1
  store i8 %125, i8* %62, align 1
  %126 = zext i1 %114 to i8
  store i8 %126, i8* %65, align 1
  %127 = lshr i32 %111, 31
  %128 = trunc i32 %127 to i8
  store i8 %128, i8* %68, align 1
  %129 = lshr i32 %225, 31
  %130 = xor i32 %127, %129
  %131 = add nuw nsw i32 %130, %127
  %132 = icmp eq i32 %131, 2
  %133 = zext i1 %132 to i8
  store i8 %133, i8* %74, align 1
  %134 = load i64, i64* %12, align 8
  %135 = add i64 %134, -12
  %136 = add i64 %223, 9
  store i64 %136, i64* %4, align 8
  %137 = inttoptr i64 %135 to i32*
  store i32 %111, i32* %137, align 4
  %138 = load i64, i64* %4, align 8
  %139 = add i64 %138, 11
  store i64 %139, i64* %4, align 8
  br label %108

; <label>:140:                                    ; preds = %228, %151
  %141 = phi i64 [ %229, %228 ], [ %152, %151 ]
  %142 = add i64 %141, 1
  store i64 %142, i64* %4, align 8
  %143 = load i64, i64* %15, align 8
  %144 = add i64 %143, 8
  %145 = inttoptr i64 %143 to i64*
  %146 = load i64, i64* %145, align 8
  store i64 %146, i64* %12, align 8
  store i64 %144, i64* %15, align 8
  %147 = add i64 %141, 2
  store i64 %147, i64* %4, align 8
  %148 = inttoptr i64 %144 to i64*
  %149 = load i64, i64* %148, align 8
  store i64 %149, i64* %4, align 8
  %150 = add i64 %143, 16
  store i64 %150, i64* %15, align 8
  ret %36* %2

; <label>:151:                                    ; preds = %270
  %152 = add i64 %408, 65
  store i64 %152, i64* %4, align 8
  br label %140

; <label>:153:                                    ; preds = %270
  %154 = sext i32 %413 to i64
  store i64 %154, i64* %9, align 8
  %155 = shl nsw i64 %154, 2
  store i64 %155, i64* %10, align 8
  %156 = add i64 %409, -24
  %157 = add i64 %408, 17
  store i64 %157, i64* %4, align 8
  %158 = inttoptr i64 %156 to i64*
  %159 = load i64, i64* %158, align 8
  %160 = add i64 %155, %159
  store i64 %160, i64* %9, align 8
  %161 = icmp ult i64 %160, %159
  %162 = icmp ult i64 %160, %155
  %163 = or i1 %161, %162
  %164 = zext i1 %163 to i8
  store i8 %164, i8* %51, align 1
  %165 = trunc i64 %160 to i32
  %166 = and i32 %165, 255
  %167 = tail call i32 @llvm.ctpop.i32(i32 %166)
  %168 = trunc i32 %167 to i8
  %169 = and i8 %168, 1
  %170 = xor i8 %169, 1
  store i8 %170, i8* %57, align 1
  %171 = xor i64 %155, %159
  %172 = xor i64 %171, %160
  %173 = lshr i64 %172, 4
  %174 = trunc i64 %173 to i8
  %175 = and i8 %174, 1
  store i8 %175, i8* %62, align 1
  %176 = icmp eq i64 %160, 0
  %177 = zext i1 %176 to i8
  store i8 %177, i8* %65, align 1
  %178 = lshr i64 %160, 63
  %179 = trunc i64 %178 to i8
  store i8 %179, i8* %68, align 1
  %180 = lshr i64 %159, 63
  %181 = lshr i64 %154, 61
  %182 = and i64 %181, 1
  %183 = xor i64 %178, %180
  %184 = xor i64 %178, %182
  %185 = add nuw nsw i64 %183, %184
  %186 = icmp eq i64 %185, 2
  %187 = zext i1 %186 to i8
  store i8 %187, i8* %74, align 1
  %188 = inttoptr i64 %160 to i32*
  %189 = add i64 %408, 22
  store i64 %189, i64* %4, align 8
  %190 = load i32, i32* %188, align 4
  %191 = zext i32 %190 to i64
  store i64 %191, i64* %9, align 8
  %192 = add i64 %409, -32
  %193 = add i64 %408, 25
  store i64 %193, i64* %4, align 8
  %194 = inttoptr i64 %192 to i32*
  %195 = load i32, i32* %194, align 4
  %196 = sub i32 %190, %195
  %197 = icmp ult i32 %190, %195
  %198 = zext i1 %197 to i8
  store i8 %198, i8* %51, align 1
  %199 = and i32 %196, 255
  %200 = tail call i32 @llvm.ctpop.i32(i32 %199)
  %201 = trunc i32 %200 to i8
  %202 = and i8 %201, 1
  %203 = xor i8 %202, 1
  store i8 %203, i8* %57, align 1
  %204 = xor i32 %195, %190
  %205 = xor i32 %204, %196
  %206 = lshr i32 %205, 4
  %207 = trunc i32 %206 to i8
  %208 = and i8 %207, 1
  store i8 %208, i8* %62, align 1
  %209 = icmp eq i32 %196, 0
  %210 = zext i1 %209 to i8
  store i8 %210, i8* %65, align 1
  %211 = lshr i32 %196, 31
  %212 = trunc i32 %211 to i8
  store i8 %212, i8* %68, align 1
  %213 = lshr i32 %190, 31
  %214 = lshr i32 %195, 31
  %215 = xor i32 %214, %213
  %216 = xor i32 %211, %213
  %217 = add nuw nsw i32 %216, %215
  %218 = icmp eq i32 %217, 2
  %219 = zext i1 %218 to i8
  store i8 %219, i8* %74, align 1
  %220 = icmp ne i8 %212, 0
  %221 = xor i1 %220, %218
  %222 = select i1 %221, i64 27, i64 38
  %223 = add i64 %408, %222
  %224 = add i64 %223, 3
  store i64 %224, i64* %4, align 8
  %225 = load i32, i32* %412, align 4
  %226 = zext i32 %225 to i64
  store i64 %226, i64* %9, align 8
  %227 = add i64 %223, 6
  store i64 %227, i64* %4, align 8
  br i1 %221, label %110, label %80

; <label>:228:                                    ; preds = %230
  %229 = add i64 %269, 5
  store i64 %229, i64* %4, align 8
  store i64 4294967295, i64* %9, align 8
  br label %140

; <label>:230:                                    ; preds = %108, %3
  %231 = phi i64 [ %79, %3 ], [ %109, %108 ]
  %232 = load i64, i64* %12, align 8
  %233 = add i64 %232, -12
  %234 = add i64 %231, 3
  store i64 %234, i64* %4, align 8
  %235 = inttoptr i64 %233 to i32*
  %236 = load i32, i32* %235, align 4
  %237 = zext i32 %236 to i64
  store i64 %237, i64* %9, align 8
  %238 = add i64 %232, -8
  %239 = add i64 %231, 6
  store i64 %239, i64* %4, align 8
  %240 = inttoptr i64 %238 to i32*
  %241 = load i32, i32* %240, align 4
  %242 = sub i32 %236, %241
  %243 = icmp ult i32 %236, %241
  %244 = zext i1 %243 to i8
  store i8 %244, i8* %51, align 1
  %245 = and i32 %242, 255
  %246 = tail call i32 @llvm.ctpop.i32(i32 %245)
  %247 = trunc i32 %246 to i8
  %248 = and i8 %247, 1
  %249 = xor i8 %248, 1
  store i8 %249, i8* %57, align 1
  %250 = xor i32 %241, %236
  %251 = xor i32 %250, %242
  %252 = lshr i32 %251, 4
  %253 = trunc i32 %252 to i8
  %254 = and i8 %253, 1
  store i8 %254, i8* %62, align 1
  %255 = icmp eq i32 %242, 0
  %256 = zext i1 %255 to i8
  store i8 %256, i8* %65, align 1
  %257 = lshr i32 %242, 31
  %258 = trunc i32 %257 to i8
  store i8 %258, i8* %68, align 1
  %259 = lshr i32 %236, 31
  %260 = lshr i32 %241, 31
  %261 = xor i32 %260, %259
  %262 = xor i32 %257, %259
  %263 = add nuw nsw i32 %262, %261
  %264 = icmp eq i32 %263, 2
  %265 = zext i1 %264 to i8
  store i8 %265, i8* %74, align 1
  %266 = icmp ne i8 %258, 0
  %267 = xor i1 %266, %264
  %268 = select i1 %267, i64 -104, i64 8
  %269 = add i64 %231, %268
  store i64 %269, i64* %4, align 8
  br i1 %267, label %270, label %228

; <label>:270:                                    ; preds = %230
  %271 = add i64 %269, 3
  store i64 %271, i64* %4, align 8
  %272 = load i32, i32* %240, align 4
  %273 = zext i32 %272 to i64
  store i64 %273, i64* %9, align 8
  %274 = add i64 %269, 6
  store i64 %274, i64* %4, align 8
  %275 = load i32, i32* %235, align 4
  %276 = sub i32 %272, %275
  %277 = lshr i32 %276, 31
  %278 = add i32 %277, %276
  %279 = zext i32 %278 to i64
  %280 = shl nuw i64 %279, 32
  %281 = ashr i64 %280, 33
  %282 = trunc i32 %278 to i8
  %283 = and i8 %282, 1
  %284 = trunc i64 %281 to i32
  %285 = and i64 %281, 4294967295
  store i64 %285, i64* %9, align 8
  store i8 %283, i8* %51, align 1
  %286 = and i32 %284, 255
  %287 = tail call i32 @llvm.ctpop.i32(i32 %286)
  %288 = trunc i32 %287 to i8
  %289 = and i8 %288, 1
  %290 = xor i8 %289, 1
  store i8 %290, i8* %57, align 1
  store i8 0, i8* %62, align 1
  %291 = icmp eq i32 %284, 0
  %292 = zext i1 %291 to i8
  store i8 %292, i8* %65, align 1
  %293 = lshr i64 %281, 31
  %294 = trunc i64 %293 to i8
  %295 = and i8 %294, 1
  store i8 %295, i8* %68, align 1
  store i8 0, i8* %74, align 1
  %296 = trunc i64 %281 to i32
  %297 = and i64 %281, 4294967295
  store i64 %297, i64* %10, align 8
  %298 = load i64, i64* %12, align 8
  %299 = add i64 %298, -12
  %300 = add i64 %269, 20
  store i64 %300, i64* %4, align 8
  %301 = inttoptr i64 %299 to i32*
  %302 = load i32, i32* %301, align 4
  %303 = add i32 %296, %302
  %304 = zext i32 %303 to i64
  store i64 %304, i64* %9, align 8
  %305 = icmp ult i32 %303, %302
  %306 = icmp ult i32 %303, %296
  %307 = or i1 %305, %306
  %308 = zext i1 %307 to i8
  store i8 %308, i8* %51, align 1
  %309 = and i32 %303, 255
  %310 = tail call i32 @llvm.ctpop.i32(i32 %309)
  %311 = trunc i32 %310 to i8
  %312 = and i8 %311, 1
  %313 = xor i8 %312, 1
  store i8 %313, i8* %57, align 1
  %314 = xor i32 %296, %302
  %315 = xor i32 %314, %303
  %316 = lshr i32 %315, 4
  %317 = trunc i32 %316 to i8
  %318 = and i8 %317, 1
  store i8 %318, i8* %62, align 1
  %319 = icmp eq i32 %303, 0
  %320 = zext i1 %319 to i8
  store i8 %320, i8* %65, align 1
  %321 = lshr i32 %303, 31
  %322 = trunc i32 %321 to i8
  store i8 %322, i8* %68, align 1
  %323 = lshr i32 %302, 31
  %324 = lshr i64 %281, 31
  %325 = trunc i64 %324 to i32
  %326 = and i32 %325, 1
  %327 = xor i32 %321, %323
  %328 = xor i32 %321, %326
  %329 = add nuw nsw i32 %327, %328
  %330 = icmp eq i32 %329, 2
  %331 = zext i1 %330 to i8
  store i8 %331, i8* %74, align 1
  %332 = add i64 %298, -4
  %333 = add i64 %269, 25
  store i64 %333, i64* %4, align 8
  %334 = inttoptr i64 %332 to i32*
  store i32 %303, i32* %334, align 4
  %335 = load i64, i64* %12, align 8
  %336 = add i64 %335, -4
  %337 = load i64, i64* %4, align 8
  %338 = add i64 %337, 3
  store i64 %338, i64* %4, align 8
  %339 = inttoptr i64 %336 to i32*
  %340 = load i32, i32* %339, align 4
  %341 = sext i32 %340 to i64
  store i64 %341, i64* %9, align 8
  %342 = shl nsw i64 %341, 2
  store i64 %342, i64* %10, align 8
  %343 = add i64 %335, -24
  %344 = add i64 %337, 17
  store i64 %344, i64* %4, align 8
  %345 = inttoptr i64 %343 to i64*
  %346 = load i64, i64* %345, align 8
  %347 = add i64 %342, %346
  store i64 %347, i64* %9, align 8
  %348 = icmp ult i64 %347, %346
  %349 = icmp ult i64 %347, %342
  %350 = or i1 %348, %349
  %351 = zext i1 %350 to i8
  store i8 %351, i8* %51, align 1
  %352 = trunc i64 %347 to i32
  %353 = and i32 %352, 255
  %354 = tail call i32 @llvm.ctpop.i32(i32 %353)
  %355 = trunc i32 %354 to i8
  %356 = and i8 %355, 1
  %357 = xor i8 %356, 1
  store i8 %357, i8* %57, align 1
  %358 = xor i64 %342, %346
  %359 = xor i64 %358, %347
  %360 = lshr i64 %359, 4
  %361 = trunc i64 %360 to i8
  %362 = and i8 %361, 1
  store i8 %362, i8* %62, align 1
  %363 = icmp eq i64 %347, 0
  %364 = zext i1 %363 to i8
  store i8 %364, i8* %65, align 1
  %365 = lshr i64 %347, 63
  %366 = trunc i64 %365 to i8
  store i8 %366, i8* %68, align 1
  %367 = lshr i64 %346, 63
  %368 = lshr i64 %341, 61
  %369 = and i64 %368, 1
  %370 = xor i64 %365, %367
  %371 = xor i64 %365, %369
  %372 = add nuw nsw i64 %370, %371
  %373 = icmp eq i64 %372, 2
  %374 = zext i1 %373 to i8
  store i8 %374, i8* %74, align 1
  %375 = inttoptr i64 %347 to i32*
  %376 = add i64 %337, 22
  store i64 %376, i64* %4, align 8
  %377 = load i32, i32* %375, align 4
  %378 = zext i32 %377 to i64
  store i64 %378, i64* %9, align 8
  %379 = add i64 %335, -32
  %380 = add i64 %337, 25
  store i64 %380, i64* %4, align 8
  %381 = inttoptr i64 %379 to i32*
  %382 = load i32, i32* %381, align 4
  %383 = sub i32 %377, %382
  %384 = icmp ult i32 %377, %382
  %385 = zext i1 %384 to i8
  store i8 %385, i8* %51, align 1
  %386 = and i32 %383, 255
  %387 = tail call i32 @llvm.ctpop.i32(i32 %386)
  %388 = trunc i32 %387 to i8
  %389 = and i8 %388, 1
  %390 = xor i8 %389, 1
  store i8 %390, i8* %57, align 1
  %391 = xor i32 %382, %377
  %392 = xor i32 %391, %383
  %393 = lshr i32 %392, 4
  %394 = trunc i32 %393 to i8
  %395 = and i8 %394, 1
  store i8 %395, i8* %62, align 1
  %396 = icmp eq i32 %383, 0
  %397 = zext i1 %396 to i8
  store i8 %397, i8* %65, align 1
  %398 = lshr i32 %383, 31
  %399 = trunc i32 %398 to i8
  store i8 %399, i8* %68, align 1
  %400 = lshr i32 %377, 31
  %401 = lshr i32 %382, 31
  %402 = xor i32 %401, %400
  %403 = xor i32 %398, %400
  %404 = add nuw nsw i32 %403, %402
  %405 = icmp eq i32 %404, 2
  %406 = zext i1 %405 to i8
  store i8 %406, i8* %74, align 1
  %407 = select i1 %396, i64 27, i64 32
  %408 = add i64 %337, %407
  %409 = load i64, i64* %12, align 8
  %410 = add i64 %409, -4
  %411 = add i64 %408, 3
  store i64 %411, i64* %4, align 8
  %412 = inttoptr i64 %410 to i32*
  %413 = load i32, i32* %412, align 4
  %414 = zext i32 %413 to i64
  store i64 %414, i64* %9, align 8
  br i1 %396, label %151, label %153
}

