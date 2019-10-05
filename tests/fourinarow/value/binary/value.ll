; ModuleID = 'value.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@DEPTH = global i32 3, align 4
@off = global i32 0, align 4
@C4VERT = common global i64 0, align 8
@C3VERT = common global i64 0, align 8
@C2VERT = common global i64 0, align 8
@C4HORIZ = common global i64 0, align 8
@C3HORIZ = common global i64 0, align 8
@C2HORIZ = common global i64 0, align 8
@C4UP_R = common global i64 0, align 8
@C3UP_R = common global i64 0, align 8
@C2UP_R = common global i64 0, align 8
@C4UP_L = common global i64 0, align 8
@C3UP_L = common global i64 0, align 8
@C2UP_L = common global i64 0, align 8
@.str = hidden unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.1 = hidden unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.2 = hidden unnamed_addr constant [4 x i8] c"%c \00", align 1
@.str.3 = hidden unnamed_addr constant [18 x i8] c"----------------\0A\00", align 1
@.str.4 = hidden unnamed_addr constant [27 x i8] c"ERROR: Faulty column: %d.\0A\00", align 1
@.str.5 = hidden unnamed_addr constant [24 x i8] c"ERROR: Unknown player.\0A\00", align 1
@.str.6 = hidden unnamed_addr constant [18 x i8] c"Compile date: %s\0A\00", align 1
@.str.7 = hidden unnamed_addr constant [6 x i8] c"today\00", align 1
@.str.8 = hidden unnamed_addr constant [23 x i8] c"Compiler switches: %s\0A\00", align 1
@.str.9 = hidden unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = hidden unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.11 = hidden unnamed_addr constant [8 x i8] c"test.in\00", align 1
@.str.12 = hidden unnamed_addr constant [35 x i8] c"ERROR: Could not open indata file\0A\00", align 1
@.str.13 = hidden unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.14 = hidden unnamed_addr constant [21 x i8] c"Recursion depth: %d\0A\00", align 1
@.str.16 = hidden unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.17 = hidden unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.15 = hidden unnamed_addr constant [24 x i8] c"Alpha-Beta pruning: %s\0A\00", align 1
@.str.18 = hidden unnamed_addr constant [24 x i8] c"Using pruning method 1\0A\00", align 1
@.str.19 = hidden unnamed_addr constant [24 x i8] c"Using pruning method 2\0A\00", align 1
@.str.20 = hidden unnamed_addr constant [27 x i8] c"The player is the winner.\0A\00", align 1
@.str.21 = hidden unnamed_addr constant [29 x i8] c"The computer is the winner.\0A\00", align 1
@.str.22 = hidden unnamed_addr constant [13 x i8] c"It's a tie.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @value(i64, i64) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca float, align 4
  %11 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %7, align 4
  br label %12

; <label>:12:                                     ; preds = %499, %2
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %13, 2
  br i1 %14, label %15, label %502

; <label>:15:                                     ; preds = %12
  %16 = load i32, i32* %7, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %25

; <label>:18:                                     ; preds = %15
  %19 = load i64, i64* %3, align 8
  store i64 %19, i64* %8, align 8
  %20 = load i64, i64* %4, align 8
  store i64 %20, i64* %9, align 8
  %21 = load i32, i32* @off, align 4
  %22 = sitofp i32 %21 to float
  %23 = fdiv float %22, 1.000000e+01
  %24 = fadd float -1.000000e+00, %23
  store float %24, float* %10, align 4
  br label %32

; <label>:25:                                     ; preds = %15
  %26 = load i64, i64* %4, align 8
  store i64 %26, i64* %8, align 8
  %27 = load i64, i64* %3, align 8
  store i64 %27, i64* %9, align 8
  %28 = load i32, i32* @off, align 4
  %29 = sitofp i32 %28 to float
  %30 = fdiv float %29, 1.000000e+01
  %31 = fadd float 1.000000e+00, %30
  store float %31, float* %10, align 4
  br label %32

; <label>:32:                                     ; preds = %25, %18
  store i32 0, i32* %5, align 4
  br label %33

; <label>:33:                                     ; preds = %56, %32
  %34 = load i32, i32* %5, align 4
  %35 = icmp slt i32 %34, 21
  br i1 %35, label %36, label %59

; <label>:36:                                     ; preds = %33
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* @C4VERT, align 8
  %39 = load i32, i32* %5, align 4
  %40 = zext i32 %39 to i64
  %41 = shl i64 %38, %40
  %42 = and i64 %37, %41
  %43 = load i64, i64* @C4VERT, align 8
  %44 = load i32, i32* %5, align 4
  %45 = zext i32 %44 to i64
  %46 = shl i64 %43, %45
  %47 = icmp eq i64 %42, %46
  br i1 %47, label %48, label %55

; <label>:48:                                     ; preds = %36
  %49 = load float, float* %10, align 4
  %50 = fmul float 1.000000e+03, %49
  %51 = load i32, i32* %11, align 4
  %52 = sitofp i32 %51 to float
  %53 = fadd float %52, %50
  %54 = fptosi float %53 to i32
  store i32 %54, i32* %11, align 4
  br label %55

; <label>:55:                                     ; preds = %48, %36
  br label %56

; <label>:56:                                     ; preds = %55
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %5, align 4
  br label %33

; <label>:59:                                     ; preds = %33
  store i32 0, i32* %5, align 4
  br label %60

; <label>:60:                                     ; preds = %97, %59
  %61 = load i32, i32* %5, align 4
  %62 = icmp slt i32 %61, 6
  br i1 %62, label %63, label %100

; <label>:63:                                     ; preds = %60
  store i32 0, i32* %6, align 4
  br label %64

; <label>:64:                                     ; preds = %93, %63
  %65 = load i32, i32* %6, align 4
  %66 = icmp slt i32 %65, 4
  br i1 %66, label %67, label %96

; <label>:67:                                     ; preds = %64
  %68 = load i64, i64* %8, align 8
  %69 = load i64, i64* @C4HORIZ, align 8
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* %5, align 4
  %72 = mul nsw i32 %71, 6
  %73 = add nsw i32 %70, %72
  %74 = zext i32 %73 to i64
  %75 = shl i64 %69, %74
  %76 = and i64 %68, %75
  %77 = load i64, i64* @C4HORIZ, align 8
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* %5, align 4
  %80 = mul nsw i32 %79, 6
  %81 = add nsw i32 %78, %80
  %82 = zext i32 %81 to i64
  %83 = shl i64 %77, %82
  %84 = icmp eq i64 %76, %83
  br i1 %84, label %85, label %92

; <label>:85:                                     ; preds = %67
  %86 = load float, float* %10, align 4
  %87 = fmul float 1.000000e+03, %86
  %88 = load i32, i32* %11, align 4
  %89 = sitofp i32 %88 to float
  %90 = fadd float %89, %87
  %91 = fptosi float %90 to i32
  store i32 %91, i32* %11, align 4
  br label %92

; <label>:92:                                     ; preds = %85, %67
  br label %93

; <label>:93:                                     ; preds = %92
  %94 = load i32, i32* %6, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %6, align 4
  br label %64

; <label>:96:                                     ; preds = %64
  br label %97

; <label>:97:                                     ; preds = %96
  %98 = load i32, i32* %5, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %5, align 4
  br label %60

; <label>:100:                                    ; preds = %60
  store i32 0, i32* %5, align 4
  br label %101

; <label>:101:                                    ; preds = %138, %100
  %102 = load i32, i32* %5, align 4
  %103 = icmp slt i32 %102, 3
  br i1 %103, label %104, label %141

; <label>:104:                                    ; preds = %101
  store i32 0, i32* %6, align 4
  br label %105

; <label>:105:                                    ; preds = %134, %104
  %106 = load i32, i32* %6, align 4
  %107 = icmp slt i32 %106, 4
  br i1 %107, label %108, label %137

; <label>:108:                                    ; preds = %105
  %109 = load i64, i64* %8, align 8
  %110 = load i64, i64* @C4UP_R, align 8
  %111 = load i32, i32* %6, align 4
  %112 = load i32, i32* %5, align 4
  %113 = mul nsw i32 %112, 6
  %114 = add nsw i32 %111, %113
  %115 = zext i32 %114 to i64
  %116 = shl i64 %110, %115
  %117 = and i64 %109, %116
  %118 = load i64, i64* @C4UP_R, align 8
  %119 = load i32, i32* %6, align 4
  %120 = load i32, i32* %5, align 4
  %121 = mul nsw i32 %120, 6
  %122 = add nsw i32 %119, %121
  %123 = zext i32 %122 to i64
  %124 = shl i64 %118, %123
  %125 = icmp eq i64 %117, %124
  br i1 %125, label %126, label %133

; <label>:126:                                    ; preds = %108
  %127 = load float, float* %10, align 4
  %128 = fmul float 1.000000e+03, %127
  %129 = load i32, i32* %11, align 4
  %130 = sitofp i32 %129 to float
  %131 = fadd float %130, %128
  %132 = fptosi float %131 to i32
  store i32 %132, i32* %11, align 4
  br label %133

; <label>:133:                                    ; preds = %126, %108
  br label %134

; <label>:134:                                    ; preds = %133
  %135 = load i32, i32* %6, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %6, align 4
  br label %105

; <label>:137:                                    ; preds = %105
  br label %138

; <label>:138:                                    ; preds = %137
  %139 = load i32, i32* %5, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %5, align 4
  br label %101

; <label>:141:                                    ; preds = %101
  store i32 0, i32* %5, align 4
  br label %142

; <label>:142:                                    ; preds = %179, %141
  %143 = load i32, i32* %5, align 4
  %144 = icmp slt i32 %143, 3
  br i1 %144, label %145, label %182

; <label>:145:                                    ; preds = %142
  store i32 0, i32* %6, align 4
  br label %146

; <label>:146:                                    ; preds = %175, %145
  %147 = load i32, i32* %6, align 4
  %148 = icmp slt i32 %147, 4
  br i1 %148, label %149, label %178

; <label>:149:                                    ; preds = %146
  %150 = load i64, i64* %8, align 8
  %151 = load i64, i64* @C4UP_L, align 8
  %152 = load i32, i32* %6, align 4
  %153 = load i32, i32* %5, align 4
  %154 = mul nsw i32 %153, 6
  %155 = add nsw i32 %152, %154
  %156 = zext i32 %155 to i64
  %157 = shl i64 %151, %156
  %158 = and i64 %150, %157
  %159 = load i64, i64* @C4UP_L, align 8
  %160 = load i32, i32* %6, align 4
  %161 = load i32, i32* %5, align 4
  %162 = mul nsw i32 %161, 6
  %163 = add nsw i32 %160, %162
  %164 = zext i32 %163 to i64
  %165 = shl i64 %159, %164
  %166 = icmp eq i64 %158, %165
  br i1 %166, label %167, label %174

; <label>:167:                                    ; preds = %149
  %168 = load float, float* %10, align 4
  %169 = fmul float 1.000000e+03, %168
  %170 = load i32, i32* %11, align 4
  %171 = sitofp i32 %170 to float
  %172 = fadd float %171, %169
  %173 = fptosi float %172 to i32
  store i32 %173, i32* %11, align 4
  br label %174

; <label>:174:                                    ; preds = %167, %149
  br label %175

; <label>:175:                                    ; preds = %174
  %176 = load i32, i32* %6, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %6, align 4
  br label %146

; <label>:178:                                    ; preds = %146
  br label %179

; <label>:179:                                    ; preds = %178
  %180 = load i32, i32* %5, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %5, align 4
  br label %142

; <label>:182:                                    ; preds = %142
  store i32 0, i32* %5, align 4
  br label %183

; <label>:183:                                    ; preds = %214, %182
  %184 = load i32, i32* %5, align 4
  %185 = icmp slt i32 %184, 21
  br i1 %185, label %186, label %217

; <label>:186:                                    ; preds = %183
  %187 = load i64, i64* %8, align 8
  %188 = load i64, i64* @C3VERT, align 8
  %189 = load i32, i32* %5, align 4
  %190 = zext i32 %189 to i64
  %191 = shl i64 %188, %190
  %192 = and i64 %187, %191
  %193 = load i64, i64* @C3VERT, align 8
  %194 = load i32, i32* %5, align 4
  %195 = zext i32 %194 to i64
  %196 = shl i64 %193, %195
  %197 = icmp eq i64 %192, %196
  br i1 %197, label %198, label %213

; <label>:198:                                    ; preds = %186
  %199 = load i64, i64* %9, align 8
  %200 = load i64, i64* @C4VERT, align 8
  %201 = load i32, i32* %5, align 4
  %202 = zext i32 %201 to i64
  %203 = shl i64 %200, %202
  %204 = and i64 %199, %203
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %213, label %206

; <label>:206:                                    ; preds = %198
  %207 = load float, float* %10, align 4
  %208 = fmul float 2.000000e+01, %207
  %209 = load i32, i32* %11, align 4
  %210 = sitofp i32 %209 to float
  %211 = fadd float %210, %208
  %212 = fptosi float %211 to i32
  store i32 %212, i32* %11, align 4
  br label %213

; <label>:213:                                    ; preds = %206, %198, %186
  br label %214

; <label>:214:                                    ; preds = %213
  %215 = load i32, i32* %5, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %5, align 4
  br label %183

; <label>:217:                                    ; preds = %183
  store i32 0, i32* %5, align 4
  br label %218

; <label>:218:                                    ; preds = %255, %217
  %219 = load i32, i32* %5, align 4
  %220 = icmp slt i32 %219, 6
  br i1 %220, label %221, label %258

; <label>:221:                                    ; preds = %218
  store i32 0, i32* %6, align 4
  br label %222

; <label>:222:                                    ; preds = %251, %221
  %223 = load i32, i32* %6, align 4
  %224 = icmp slt i32 %223, 5
  br i1 %224, label %225, label %254

; <label>:225:                                    ; preds = %222
  %226 = load i64, i64* %8, align 8
  %227 = load i64, i64* @C3HORIZ, align 8
  %228 = load i32, i32* %6, align 4
  %229 = load i32, i32* %5, align 4
  %230 = mul nsw i32 %229, 6
  %231 = add nsw i32 %228, %230
  %232 = zext i32 %231 to i64
  %233 = shl i64 %227, %232
  %234 = and i64 %226, %233
  %235 = load i64, i64* @C3HORIZ, align 8
  %236 = load i32, i32* %6, align 4
  %237 = load i32, i32* %5, align 4
  %238 = mul nsw i32 %237, 6
  %239 = add nsw i32 %236, %238
  %240 = zext i32 %239 to i64
  %241 = shl i64 %235, %240
  %242 = icmp eq i64 %234, %241
  br i1 %242, label %243, label %250

; <label>:243:                                    ; preds = %225
  %244 = load float, float* %10, align 4
  %245 = fmul float 2.000000e+01, %244
  %246 = load i32, i32* %11, align 4
  %247 = sitofp i32 %246 to float
  %248 = fadd float %247, %245
  %249 = fptosi float %248 to i32
  store i32 %249, i32* %11, align 4
  br label %250

; <label>:250:                                    ; preds = %243, %225
  br label %251

; <label>:251:                                    ; preds = %250
  %252 = load i32, i32* %6, align 4
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %6, align 4
  br label %222

; <label>:254:                                    ; preds = %222
  br label %255

; <label>:255:                                    ; preds = %254
  %256 = load i32, i32* %5, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %5, align 4
  br label %218

; <label>:258:                                    ; preds = %218
  store i32 0, i32* %5, align 4
  br label %259

; <label>:259:                                    ; preds = %296, %258
  %260 = load i32, i32* %5, align 4
  %261 = icmp slt i32 %260, 3
  br i1 %261, label %262, label %299

; <label>:262:                                    ; preds = %259
  store i32 0, i32* %6, align 4
  br label %263

; <label>:263:                                    ; preds = %292, %262
  %264 = load i32, i32* %6, align 4
  %265 = icmp slt i32 %264, 4
  br i1 %265, label %266, label %295

; <label>:266:                                    ; preds = %263
  %267 = load i64, i64* %8, align 8
  %268 = load i64, i64* @C3UP_R, align 8
  %269 = load i32, i32* %6, align 4
  %270 = load i32, i32* %5, align 4
  %271 = mul nsw i32 %270, 6
  %272 = add nsw i32 %269, %271
  %273 = zext i32 %272 to i64
  %274 = shl i64 %268, %273
  %275 = and i64 %267, %274
  %276 = load i64, i64* @C3UP_R, align 8
  %277 = load i32, i32* %6, align 4
  %278 = load i32, i32* %5, align 4
  %279 = mul nsw i32 %278, 6
  %280 = add nsw i32 %277, %279
  %281 = zext i32 %280 to i64
  %282 = shl i64 %276, %281
  %283 = icmp eq i64 %275, %282
  br i1 %283, label %284, label %291

; <label>:284:                                    ; preds = %266
  %285 = load float, float* %10, align 4
  %286 = fmul float 2.000000e+01, %285
  %287 = load i32, i32* %11, align 4
  %288 = sitofp i32 %287 to float
  %289 = fadd float %288, %286
  %290 = fptosi float %289 to i32
  store i32 %290, i32* %11, align 4
  br label %291

; <label>:291:                                    ; preds = %284, %266
  br label %292

; <label>:292:                                    ; preds = %291
  %293 = load i32, i32* %6, align 4
  %294 = add nsw i32 %293, 1
  store i32 %294, i32* %6, align 4
  br label %263

; <label>:295:                                    ; preds = %263
  br label %296

; <label>:296:                                    ; preds = %295
  %297 = load i32, i32* %5, align 4
  %298 = add nsw i32 %297, 1
  store i32 %298, i32* %5, align 4
  br label %259

; <label>:299:                                    ; preds = %259
  store i32 0, i32* %5, align 4
  br label %300

; <label>:300:                                    ; preds = %337, %299
  %301 = load i32, i32* %5, align 4
  %302 = icmp slt i32 %301, 3
  br i1 %302, label %303, label %340

; <label>:303:                                    ; preds = %300
  store i32 0, i32* %6, align 4
  br label %304

; <label>:304:                                    ; preds = %333, %303
  %305 = load i32, i32* %6, align 4
  %306 = icmp slt i32 %305, 4
  br i1 %306, label %307, label %336

; <label>:307:                                    ; preds = %304
  %308 = load i64, i64* %8, align 8
  %309 = load i64, i64* @C3UP_L, align 8
  %310 = load i32, i32* %6, align 4
  %311 = load i32, i32* %5, align 4
  %312 = mul nsw i32 %311, 6
  %313 = add nsw i32 %310, %312
  %314 = zext i32 %313 to i64
  %315 = shl i64 %309, %314
  %316 = and i64 %308, %315
  %317 = load i64, i64* @C3UP_L, align 8
  %318 = load i32, i32* %6, align 4
  %319 = load i32, i32* %5, align 4
  %320 = mul nsw i32 %319, 6
  %321 = add nsw i32 %318, %320
  %322 = zext i32 %321 to i64
  %323 = shl i64 %317, %322
  %324 = icmp eq i64 %316, %323
  br i1 %324, label %325, label %332

; <label>:325:                                    ; preds = %307
  %326 = load float, float* %10, align 4
  %327 = fmul float 2.000000e+01, %326
  %328 = load i32, i32* %11, align 4
  %329 = sitofp i32 %328 to float
  %330 = fadd float %329, %327
  %331 = fptosi float %330 to i32
  store i32 %331, i32* %11, align 4
  br label %332

; <label>:332:                                    ; preds = %325, %307
  br label %333

; <label>:333:                                    ; preds = %332
  %334 = load i32, i32* %6, align 4
  %335 = add nsw i32 %334, 1
  store i32 %335, i32* %6, align 4
  br label %304

; <label>:336:                                    ; preds = %304
  br label %337

; <label>:337:                                    ; preds = %336
  %338 = load i32, i32* %5, align 4
  %339 = add nsw i32 %338, 1
  store i32 %339, i32* %5, align 4
  br label %300

; <label>:340:                                    ; preds = %300
  store i32 0, i32* %5, align 4
  br label %341

; <label>:341:                                    ; preds = %372, %340
  %342 = load i32, i32* %5, align 4
  %343 = icmp slt i32 %342, 21
  br i1 %343, label %344, label %375

; <label>:344:                                    ; preds = %341
  %345 = load i64, i64* %8, align 8
  %346 = load i64, i64* @C2VERT, align 8
  %347 = load i32, i32* %5, align 4
  %348 = zext i32 %347 to i64
  %349 = shl i64 %346, %348
  %350 = and i64 %345, %349
  %351 = load i64, i64* @C2VERT, align 8
  %352 = load i32, i32* %5, align 4
  %353 = zext i32 %352 to i64
  %354 = shl i64 %351, %353
  %355 = icmp eq i64 %350, %354
  br i1 %355, label %356, label %371

; <label>:356:                                    ; preds = %344
  %357 = load i64, i64* %9, align 8
  %358 = load i64, i64* @C4VERT, align 8
  %359 = load i32, i32* %5, align 4
  %360 = zext i32 %359 to i64
  %361 = shl i64 %358, %360
  %362 = and i64 %357, %361
  %363 = icmp ne i64 %362, 0
  br i1 %363, label %371, label %364

; <label>:364:                                    ; preds = %356
  %365 = load float, float* %10, align 4
  %366 = fmul float 5.000000e+00, %365
  %367 = load i32, i32* %11, align 4
  %368 = sitofp i32 %367 to float
  %369 = fadd float %368, %366
  %370 = fptosi float %369 to i32
  store i32 %370, i32* %11, align 4
  br label %371

; <label>:371:                                    ; preds = %364, %356, %344
  br label %372

; <label>:372:                                    ; preds = %371
  %373 = load i32, i32* %5, align 4
  %374 = add nsw i32 %373, 1
  store i32 %374, i32* %5, align 4
  br label %341

; <label>:375:                                    ; preds = %341
  store i32 0, i32* %5, align 4
  br label %376

; <label>:376:                                    ; preds = %413, %375
  %377 = load i32, i32* %5, align 4
  %378 = icmp slt i32 %377, 6
  br i1 %378, label %379, label %416

; <label>:379:                                    ; preds = %376
  store i32 0, i32* %6, align 4
  br label %380

; <label>:380:                                    ; preds = %409, %379
  %381 = load i32, i32* %6, align 4
  %382 = icmp slt i32 %381, 6
  br i1 %382, label %383, label %412

; <label>:383:                                    ; preds = %380
  %384 = load i64, i64* %8, align 8
  %385 = load i64, i64* @C2HORIZ, align 8
  %386 = load i32, i32* %6, align 4
  %387 = load i32, i32* %5, align 4
  %388 = mul nsw i32 %387, 6
  %389 = add nsw i32 %386, %388
  %390 = zext i32 %389 to i64
  %391 = shl i64 %385, %390
  %392 = and i64 %384, %391
  %393 = load i64, i64* @C2HORIZ, align 8
  %394 = load i32, i32* %6, align 4
  %395 = load i32, i32* %5, align 4
  %396 = mul nsw i32 %395, 6
  %397 = add nsw i32 %394, %396
  %398 = zext i32 %397 to i64
  %399 = shl i64 %393, %398
  %400 = icmp eq i64 %392, %399
  br i1 %400, label %401, label %408

; <label>:401:                                    ; preds = %383
  %402 = load float, float* %10, align 4
  %403 = fmul float 5.000000e+00, %402
  %404 = load i32, i32* %11, align 4
  %405 = sitofp i32 %404 to float
  %406 = fadd float %405, %403
  %407 = fptosi float %406 to i32
  store i32 %407, i32* %11, align 4
  br label %408

; <label>:408:                                    ; preds = %401, %383
  br label %409

; <label>:409:                                    ; preds = %408
  %410 = load i32, i32* %6, align 4
  %411 = add nsw i32 %410, 1
  store i32 %411, i32* %6, align 4
  br label %380

; <label>:412:                                    ; preds = %380
  br label %413

; <label>:413:                                    ; preds = %412
  %414 = load i32, i32* %5, align 4
  %415 = add nsw i32 %414, 1
  store i32 %415, i32* %5, align 4
  br label %376

; <label>:416:                                    ; preds = %376
  store i32 0, i32* %5, align 4
  br label %417

; <label>:417:                                    ; preds = %454, %416
  %418 = load i32, i32* %5, align 4
  %419 = icmp slt i32 %418, 3
  br i1 %419, label %420, label %457

; <label>:420:                                    ; preds = %417
  store i32 0, i32* %6, align 4
  br label %421

; <label>:421:                                    ; preds = %450, %420
  %422 = load i32, i32* %6, align 4
  %423 = icmp slt i32 %422, 4
  br i1 %423, label %424, label %453

; <label>:424:                                    ; preds = %421
  %425 = load i64, i64* %8, align 8
  %426 = load i64, i64* @C2UP_R, align 8
  %427 = load i32, i32* %6, align 4
  %428 = load i32, i32* %5, align 4
  %429 = mul nsw i32 %428, 6
  %430 = add nsw i32 %427, %429
  %431 = zext i32 %430 to i64
  %432 = shl i64 %426, %431
  %433 = and i64 %425, %432
  %434 = load i64, i64* @C2UP_R, align 8
  %435 = load i32, i32* %6, align 4
  %436 = load i32, i32* %5, align 4
  %437 = mul nsw i32 %436, 6
  %438 = add nsw i32 %435, %437
  %439 = zext i32 %438 to i64
  %440 = shl i64 %434, %439
  %441 = icmp eq i64 %433, %440
  br i1 %441, label %442, label %449

; <label>:442:                                    ; preds = %424
  %443 = load float, float* %10, align 4
  %444 = fmul float 5.000000e+00, %443
  %445 = load i32, i32* %11, align 4
  %446 = sitofp i32 %445 to float
  %447 = fadd float %446, %444
  %448 = fptosi float %447 to i32
  store i32 %448, i32* %11, align 4
  br label %449

; <label>:449:                                    ; preds = %442, %424
  br label %450

; <label>:450:                                    ; preds = %449
  %451 = load i32, i32* %6, align 4
  %452 = add nsw i32 %451, 1
  store i32 %452, i32* %6, align 4
  br label %421

; <label>:453:                                    ; preds = %421
  br label %454

; <label>:454:                                    ; preds = %453
  %455 = load i32, i32* %5, align 4
  %456 = add nsw i32 %455, 1
  store i32 %456, i32* %5, align 4
  br label %417

; <label>:457:                                    ; preds = %417
  store i32 0, i32* %5, align 4
  br label %458

; <label>:458:                                    ; preds = %495, %457
  %459 = load i32, i32* %5, align 4
  %460 = icmp slt i32 %459, 3
  br i1 %460, label %461, label %498

; <label>:461:                                    ; preds = %458
  store i32 0, i32* %6, align 4
  br label %462

; <label>:462:                                    ; preds = %491, %461
  %463 = load i32, i32* %6, align 4
  %464 = icmp slt i32 %463, 4
  br i1 %464, label %465, label %494

; <label>:465:                                    ; preds = %462
  %466 = load i64, i64* %8, align 8
  %467 = load i64, i64* @C2UP_L, align 8
  %468 = load i32, i32* %6, align 4
  %469 = load i32, i32* %5, align 4
  %470 = mul nsw i32 %469, 6
  %471 = add nsw i32 %468, %470
  %472 = zext i32 %471 to i64
  %473 = shl i64 %467, %472
  %474 = and i64 %466, %473
  %475 = load i64, i64* @C2UP_L, align 8
  %476 = load i32, i32* %6, align 4
  %477 = load i32, i32* %5, align 4
  %478 = mul nsw i32 %477, 6
  %479 = add nsw i32 %476, %478
  %480 = zext i32 %479 to i64
  %481 = shl i64 %475, %480
  %482 = icmp eq i64 %474, %481
  br i1 %482, label %483, label %490

; <label>:483:                                    ; preds = %465
  %484 = load float, float* %10, align 4
  %485 = fmul float 5.000000e+00, %484
  %486 = load i32, i32* %11, align 4
  %487 = sitofp i32 %486 to float
  %488 = fadd float %487, %485
  %489 = fptosi float %488 to i32
  store i32 %489, i32* %11, align 4
  br label %490

; <label>:490:                                    ; preds = %483, %465
  br label %491

; <label>:491:                                    ; preds = %490
  %492 = load i32, i32* %6, align 4
  %493 = add nsw i32 %492, 1
  store i32 %493, i32* %6, align 4
  br label %462

; <label>:494:                                    ; preds = %462
  br label %495

; <label>:495:                                    ; preds = %494
  %496 = load i32, i32* %5, align 4
  %497 = add nsw i32 %496, 1
  store i32 %497, i32* %5, align 4
  br label %458

; <label>:498:                                    ; preds = %458
  br label %499

; <label>:499:                                    ; preds = %498
  %500 = load i32, i32* %7, align 4
  %501 = add nsw i32 %500, 1
  store i32 %501, i32* %7, align 4
  br label %12

; <label>:502:                                    ; preds = %12
  %503 = load i32, i32* %11, align 4
  ret i32 %503
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 6.0.0-1ubuntu2~16.04.1 (tags/RELEASE_600/final)"}
!1 = !{i32 1, !"wchar_size", i32 4}
