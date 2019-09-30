; ModuleID = 'test.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%union.anon = type { i64 }
%struct.State = type {%struct.ArchState, [32 x %union.VectorReg], %struct.ArithFlags, i64, i64, i64, %struct.GPR}

%struct.ArchState = type { i32, i32, %union.anon }
%union.VectorReg = type { %union.vec512_t }
%union.vec512_t = type { %struct.uint64v8_t }
%struct.uint64v8_t = type { [8 x i64] }
%struct.ArithFlags = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.Reg = type { %union.anon }
%struct.GPR = type { i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg }
%struct.float32v8_t = type { [8 x float] }
%struct.int32v8_t = type { [8 x i32] }
%struct.uint16v16_t = type { [16 x i16] }
%struct.uint8v32_t = type { [32 x i8] }
%"class.std::bitset" = type { %struct.uint64v4_t }
%struct.uint64v4_t = type { [4 x i64] }
%struct.anon.2 = type { i8, i8 }
%union.vec128_t = type { %struct.uint128v1_t }
%struct.uint128v1_t = type { [1 x i128] }
%struct.Memory = type { i64 }

define i32 @my.ctpop.i32(i32 %x) {
entry:
  %and = and i32 %x, 1
  %shr123 = lshr i32 %x, 1
  %and1 = and i32 %shr123, 1
  %shr2124 = lshr i32 %x, 2
  %and3 = and i32 %shr2124, 1
  %shr5125 = lshr i32 %x, 3
  %and6 = and i32 %shr5125, 1
  %shr8126 = lshr i32 %x, 4
  %and9 = and i32 %shr8126, 1
  %shr11127 = lshr i32 %x, 5
  %and12 = and i32 %shr11127, 1
  %shr14128 = lshr i32 %x, 6
  %and15 = and i32 %shr14128, 1
  %shr17129 = lshr i32 %x, 7
  %and18 = and i32 %shr17129, 1
  %shr20130 = lshr i32 %x, 8
  %and21 = and i32 %shr20130, 1
  %shr23131 = lshr i32 %x, 9
  %and24 = and i32 %shr23131, 1
  %shr26132 = lshr i32 %x, 10
  %and27 = and i32 %shr26132, 1
  %shr29133 = lshr i32 %x, 11
  %and30 = and i32 %shr29133, 1
  %shr32134 = lshr i32 %x, 12
  %and33 = and i32 %shr32134, 1
  %shr35135 = lshr i32 %x, 13
  %and36 = and i32 %shr35135, 1
  %shr38136 = lshr i32 %x, 14
  %and39 = and i32 %shr38136, 1
  %shr41137 = lshr i32 %x, 15
  %and42 = and i32 %shr41137, 1
  %shr44138 = lshr i32 %x, 16
  %and45 = and i32 %shr44138, 1
  %shr47139 = lshr i32 %x, 17
  %and48 = and i32 %shr47139, 1
  %shr50140 = lshr i32 %x, 18
  %and51 = and i32 %shr50140, 1
  %shr53141 = lshr i32 %x, 19
  %and54 = and i32 %shr53141, 1
  %shr56142 = lshr i32 %x, 20
  %and57 = and i32 %shr56142, 1
  %shr59143 = lshr i32 %x, 21
  %and60 = and i32 %shr59143, 1
  %shr62144 = lshr i32 %x, 22
  %and63 = and i32 %shr62144, 1
  %shr65145 = lshr i32 %x, 23
  %and66 = and i32 %shr65145, 1
  %shr68146 = lshr i32 %x, 24
  %and69 = and i32 %shr68146, 1
  %shr71147 = lshr i32 %x, 25
  %and72 = and i32 %shr71147, 1
  %shr74148 = lshr i32 %x, 26
  %and75 = and i32 %shr74148, 1
  %shr77149 = lshr i32 %x, 27
  %and78 = and i32 %shr77149, 1
  %shr80150 = lshr i32 %x, 28
  %and81 = and i32 %shr80150, 1
  %shr83151 = lshr i32 %x, 29
  %and84 = and i32 %shr83151, 1
  %shr86152 = lshr i32 %x, 30
  %and87 = and i32 %shr86152, 1
  %shr89153 = lshr i32 %x, 31
  %add = add i32 %shr89153, %and
  %add4 = add i32 %add, %and1
  %add7 = add i32 %add4, %and3
  %add10 = add i32 %add7, %and6
  %add13 = add i32 %add10, %and9
  %add16 = add i32 %add13, %and12
  %add19 = add i32 %add16, %and15
  %add22 = add i32 %add19, %and18
  %add25 = add i32 %add22, %and21
  %add28 = add i32 %add25, %and24
  %add31 = add i32 %add28, %and27
  %add34 = add i32 %add31, %and30
  %add37 = add i32 %add34, %and33
  %add40 = add i32 %add37, %and36
  %add43 = add i32 %add40, %and39
  %add46 = add i32 %add43, %and42
  %add49 = add i32 %add46, %and45
  %add52 = add i32 %add49, %and48
  %add55 = add i32 %add52, %and51
  %add58 = add i32 %add55, %and54
  %add61 = add i32 %add58, %and57
  %add64 = add i32 %add61, %and60
  %add67 = add i32 %add64, %and63
  %add70 = add i32 %add67, %and66
  %add73 = add i32 %add70, %and69
  %add76 = add i32 %add73, %and72
  %add79 = add i32 %add76, %and75
  %add82 = add i32 %add79, %and78
  %add85 = add i32 %add82, %and81
  %add88 = add i32 %add85, %and84
  %add91 = add i32 %add88, %and87
  ret i32 %add91
}
declare %struct.Memory* @__remill_atomic_begin(%struct.Memory*);
declare %struct.Memory* @__remill_atomic_end(%struct.Memory*);

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5CMPPSI3VnWI8vec256_tE2VnI8vec128_tES6_EEP6MemoryS8_R5StateT_T0_T1_2InIhE(%struct.Memory*, %struct.State* dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i8* nocapture readonly, i64) #0 {
  %7 = bitcast i8* %3 to i64*
  %8 = load i64, i64* %7, align 1
  %9 = getelementptr inbounds i8, i8* %3, i64 8
  %10 = bitcast i8* %9 to i64*
  %11 = load i64, i64* %10, align 1
  %12 = bitcast i8* %4 to i64*
  %13 = load i64, i64* %12, align 1
  %14 = getelementptr inbounds i8, i8* %4, i64 8
  %15 = bitcast i8* %14 to i64*
  %16 = load i64, i64* %15, align 1
  %17 = trunc i64 %5 to i8
  %18 = icmp ugt i8 %17, 31
  %19 = trunc i64 %8 to i32
  %20 = bitcast i32 %19 to float
  %21 = trunc i64 %13 to i32
  %22 = bitcast i32 %21 to float
  %23 = lshr i64 %8, 32
  %24 = trunc i64 %23 to i32
  %25 = bitcast i32 %24 to float
  %26 = lshr i64 %13, 32
  %27 = trunc i64 %26 to i32
  %28 = bitcast i32 %27 to float
  %29 = trunc i64 %11 to i32
  %30 = bitcast i32 %29 to float
  %31 = trunc i64 %16 to i32
  %32 = bitcast i32 %31 to float
  %33 = lshr i64 %11, 32
  %34 = trunc i64 %33 to i32
  %35 = bitcast i32 %34 to float
  %36 = lshr i64 %16, 32
  %37 = trunc i64 %36 to i32
  %38 = bitcast i32 %37 to float
  br i1 %18, label %53, label %39

; <label>:39:                                     ; preds = %6
  %40 = icmp eq i8 %17, 0
  br i1 %40, label %44, label %41

; <label>:41:                                     ; preds = %39
  %42 = fcmp uno float %20, %22
  %43 = xor i1 %42, true
  switch i8 %17, label %141 [
    i8 31, label %143
    i8 1, label %71
    i8 2, label %76
    i8 3, label %142
    i8 4, label %81
    i8 5, label %83
    i8 6, label %85
    i8 7, label %87
    i8 8, label %90
    i8 9, label %92
    i8 10, label %94
    i8 11, label %144
    i8 12, label %96
    i8 13, label %98
    i8 14, label %103
    i8 15, label %143
    i8 16, label %108
    i8 17, label %113
    i8 18, label %115
    i8 19, label %142
    i8 20, label %117
    i8 21, label %119
    i8 22, label %121
    i8 23, label %123
    i8 24, label %126
    i8 25, label %128
    i8 26, label %130
    i8 27, label %144
    i8 28, label %132
    i8 29, label %137
    i8 30, label %139
  ]

; <label>:44:                                     ; preds = %39
  %45 = fcmp oeq float %20, %22
  %46 = sext i1 %45 to i32
  %47 = fcmp oeq float %25, %28
  %48 = sext i1 %47 to i32
  %49 = fcmp oeq float %30, %32
  %50 = sext i1 %49 to i32
  %51 = fcmp oeq float %35, %38
  %52 = sext i1 %51 to i32
  br label %57

; <label>:53:                                     ; preds = %6
  %54 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %1, i64 %55, %struct.Memory* %0) #21
  br label %148

; <label>:57:                                     ; preds = %525, %518, %511, %510, %505, %500, %495, %494, %489, %484, %479, %474, %467, %460, %453, %448, %443, %438, %433, %428, %427, %422, %417, %412, %405, %400, %395, %389, %389, %385, %381, %44
  %58 = phi i32 [ %52, %44 ], [ -1, %525 ], [ 0, %510 ], [ 0, %395 ], [ 0, %400 ], [ 0, %405 ], [ 0, %412 ], [ 0, %417 ], [ 0, %422 ], [ 0, %427 ], [ 0, %428 ], [ 0, %433 ], [ 0, %438 ], [ 0, %443 ], [ 0, %448 ], [ 0, %453 ], [ 0, %460 ], [ 0, %467 ], [ 0, %474 ], [ 0, %479 ], [ 0, %484 ], [ 0, %489 ], [ 0, %494 ], [ 0, %495 ], [ 0, %500 ], [ 0, %505 ], [ 0, %511 ], [ 0, %518 ], [ 0, %389 ], [ 0, %389 ], [ 0, %385 ], [ 0, %381 ]
  %59 = phi i32 [ %50, %44 ], [ %526, %525 ], [ %392, %510 ], [ %396, %395 ], [ %401, %400 ], [ %407, %405 ], [ %413, %412 ], [ %418, %417 ], [ %423, %422 ], [ %392, %427 ], [ %429, %428 ], [ %434, %433 ], [ %439, %438 ], [ %444, %443 ], [ %449, %448 ], [ %455, %453 ], [ %462, %460 ], [ %469, %467 ], [ %475, %474 ], [ %480, %479 ], [ %485, %484 ], [ %490, %489 ], [ %392, %494 ], [ %496, %495 ], [ %501, %500 ], [ %506, %505 ], [ %513, %511 ], [ %520, %518 ], [ %392, %389 ], [ %392, %389 ], [ 0, %385 ], [ 0, %381 ]
  %60 = phi i32 [ %48, %44 ], [ %528, %525 ], [ %390, %510 ], [ %398, %395 ], [ %403, %400 ], [ %409, %405 ], [ %415, %412 ], [ %420, %417 ], [ %425, %422 ], [ %390, %427 ], [ %431, %428 ], [ %436, %433 ], [ %441, %438 ], [ %446, %443 ], [ %451, %448 ], [ %457, %453 ], [ %464, %460 ], [ %471, %467 ], [ %477, %474 ], [ %482, %479 ], [ %487, %484 ], [ %492, %489 ], [ %390, %494 ], [ %498, %495 ], [ %503, %500 ], [ %508, %505 ], [ %515, %511 ], [ %522, %518 ], [ %390, %389 ], [ %390, %389 ], [ %386, %385 ], [ %382, %381 ]
  %61 = phi i32 [ %46, %44 ], [ %527, %525 ], [ %391, %510 ], [ %397, %395 ], [ %402, %400 ], [ %408, %405 ], [ %414, %412 ], [ %419, %417 ], [ %424, %422 ], [ %391, %427 ], [ %430, %428 ], [ %435, %433 ], [ %440, %438 ], [ %445, %443 ], [ %450, %448 ], [ %456, %453 ], [ %463, %460 ], [ %470, %467 ], [ %476, %474 ], [ %481, %479 ], [ %486, %484 ], [ %491, %489 ], [ %391, %494 ], [ %497, %495 ], [ %502, %500 ], [ %507, %505 ], [ %514, %511 ], [ %521, %518 ], [ %391, %389 ], [ %391, %389 ], [ %387, %385 ], [ %383, %381 ]
  %62 = bitcast i8* %2 to i32*
  store i32 %61, i32* %62, align 1
  %63 = getelementptr inbounds i8, i8* %2, i64 4
  %64 = bitcast i8* %63 to i32*
  store i32 %60, i32* %64, align 1
  %65 = getelementptr inbounds i8, i8* %2, i64 8
  %66 = bitcast i8* %65 to i32*
  store i32 %59, i32* %66, align 1
  %67 = getelementptr inbounds i8, i8* %2, i64 12
  %68 = bitcast i8* %67 to i32*
  store i32 %58, i32* %68, align 1
  %69 = getelementptr inbounds i8, i8* %2, i64 16
  %70 = bitcast i8* %69 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %70, align 1
  br label %148

; <label>:71:                                     ; preds = %41
  %72 = fcmp olt float %20, %22
  %73 = and i1 %72, %43
  br i1 %73, label %143, label %74

; <label>:74:                                     ; preds = %71
  %75 = fcmp ord float %25, %28
  br label %239

; <label>:76:                                     ; preds = %41
  %77 = fcmp ole float %20, %22
  %78 = and i1 %77, %43
  br i1 %78, label %143, label %79

; <label>:79:                                     ; preds = %76
  %80 = fcmp ord float %25, %28
  br label %232

; <label>:81:                                     ; preds = %41
  %82 = fcmp une float %20, %22
  br i1 %82, label %143, label %228

; <label>:83:                                     ; preds = %41
  %84 = fcmp uge float %20, %22
  br i1 %84, label %143, label %225

; <label>:85:                                     ; preds = %41
  %86 = fcmp ugt float %20, %22
  br i1 %86, label %143, label %222

; <label>:87:                                     ; preds = %41
  br i1 %42, label %88, label %143

; <label>:88:                                     ; preds = %87
  %89 = fcmp uno float %25, %28
  br i1 %89, label %248, label %246

; <label>:90:                                     ; preds = %41
  %91 = fcmp ueq float %20, %22
  br i1 %91, label %143, label %218

; <label>:92:                                     ; preds = %41
  %93 = fcmp ult float %20, %22
  br i1 %93, label %143, label %215

; <label>:94:                                     ; preds = %41
  %95 = fcmp ule float %20, %22
  br i1 %95, label %143, label %212

; <label>:96:                                     ; preds = %41
  %97 = fcmp ueq float %20, %22
  br i1 %97, label %209, label %143

; <label>:98:                                     ; preds = %41
  %99 = fcmp oge float %20, %22
  %100 = and i1 %99, %43
  br i1 %100, label %143, label %101

; <label>:101:                                    ; preds = %98
  %102 = fcmp ord float %25, %28
  br label %202

; <label>:103:                                    ; preds = %41
  %104 = fcmp ogt float %20, %22
  %105 = and i1 %104, %43
  br i1 %105, label %143, label %106

; <label>:106:                                    ; preds = %103
  %107 = fcmp ord float %25, %28
  br label %195

; <label>:108:                                    ; preds = %41
  %109 = fcmp oeq float %20, %22
  %110 = and i1 %109, %43
  br i1 %110, label %143, label %111

; <label>:111:                                    ; preds = %108
  %112 = fcmp ord float %25, %28
  br label %188

; <label>:113:                                    ; preds = %41
  %114 = fcmp olt float %20, %22
  br i1 %114, label %143, label %185

; <label>:115:                                    ; preds = %41
  %116 = fcmp ugt float %20, %22
  br i1 %116, label %182, label %143

; <label>:117:                                    ; preds = %41
  %118 = fcmp une float %20, %22
  br i1 %118, label %143, label %179

; <label>:119:                                    ; preds = %41
  %120 = fcmp uge float %20, %22
  br i1 %120, label %143, label %176

; <label>:121:                                    ; preds = %41
  %122 = fcmp ugt float %20, %22
  br i1 %122, label %143, label %173

; <label>:123:                                    ; preds = %41
  br i1 %42, label %124, label %143

; <label>:124:                                    ; preds = %123
  %125 = fcmp uno float %25, %28
  br i1 %125, label %251, label %246

; <label>:126:                                    ; preds = %41
  %127 = fcmp ueq float %20, %22
  br i1 %127, label %143, label %169

; <label>:128:                                    ; preds = %41
  %129 = fcmp ult float %20, %22
  br i1 %129, label %143, label %166

; <label>:130:                                    ; preds = %41
  %131 = fcmp ule float %20, %22
  br i1 %131, label %143, label %163

; <label>:132:                                    ; preds = %41
  %133 = fcmp une float %20, %22
  %134 = and i1 %133, %43
  br i1 %134, label %143, label %135

; <label>:135:                                    ; preds = %132
  %136 = fcmp ord float %25, %28
  br label %156

; <label>:137:                                    ; preds = %41
  %138 = fcmp ult float %20, %22
  br i1 %138, label %153, label %143

; <label>:139:                                    ; preds = %41
  %140 = fcmp ogt float %20, %22
  br i1 %140, label %143, label %150

; <label>:141:                                    ; preds = %389, %254, %144, %41
  unreachable

; <label>:142:                                    ; preds = %41, %41
  br i1 %42, label %143, label %144

; <label>:143:                                    ; preds = %142, %139, %137, %132, %130, %128, %126, %123, %121, %119, %117, %115, %113, %108, %103, %98, %96, %94, %92, %90, %87, %85, %83, %81, %76, %71, %41, %41
  br label %144

; <label>:144:                                    ; preds = %143, %142, %41, %41
  %145 = phi i32 [ -1, %143 ], [ 0, %142 ], [ 0, %41 ], [ 0, %41 ]
  %146 = fcmp uno float %25, %28
  %147 = xor i1 %146, true
  switch i8 %17, label %141 [
    i8 31, label %246
    i8 1, label %239
    i8 2, label %232
    i8 3, label %231
    i8 4, label %228
    i8 5, label %225
    i8 6, label %222
    i8 7, label %221
    i8 8, label %218
    i8 9, label %215
    i8 10, label %212
    i8 11, label %254
    i8 12, label %209
    i8 13, label %202
    i8 14, label %195
    i8 15, label %246
    i8 16, label %188
    i8 17, label %185
    i8 18, label %182
    i8 19, label %231
    i8 20, label %179
    i8 21, label %176
    i8 22, label %173
    i8 23, label %172
    i8 24, label %169
    i8 25, label %166
    i8 26, label %163
    i8 27, label %254
    i8 28, label %156
    i8 29, label %153
    i8 30, label %150
  ]

; <label>:148:                                    ; preds = %57, %53
  %149 = phi %struct.Memory* [ %56, %53 ], [ %0, %57 ]
  ret %struct.Memory* %149

; <label>:150:                                    ; preds = %144, %139
  %151 = phi i32 [ %145, %144 ], [ 0, %139 ]
  %152 = fcmp ogt float %25, %28
  br i1 %152, label %246, label %259

; <label>:153:                                    ; preds = %144, %137
  %154 = phi i32 [ %145, %144 ], [ 0, %137 ]
  %155 = fcmp ult float %25, %28
  br i1 %155, label %263, label %246

; <label>:156:                                    ; preds = %144, %135
  %157 = phi i1 [ %136, %135 ], [ %147, %144 ]
  %158 = phi i32 [ 0, %135 ], [ %145, %144 ]
  %159 = fcmp une float %25, %28
  %160 = and i1 %159, %157
  br i1 %160, label %246, label %161

; <label>:161:                                    ; preds = %156
  %162 = fcmp ord float %30, %32
  br label %267

; <label>:163:                                    ; preds = %144, %130
  %164 = phi i32 [ %145, %144 ], [ 0, %130 ]
  %165 = fcmp ule float %25, %28
  br i1 %165, label %246, label %275

; <label>:166:                                    ; preds = %144, %128
  %167 = phi i32 [ %145, %144 ], [ 0, %128 ]
  %168 = fcmp ult float %25, %28
  br i1 %168, label %246, label %279

; <label>:169:                                    ; preds = %144, %126
  %170 = phi i32 [ %145, %144 ], [ 0, %126 ]
  %171 = fcmp ueq float %25, %28
  br i1 %171, label %246, label %283

; <label>:172:                                    ; preds = %144
  br i1 %146, label %251, label %246

; <label>:173:                                    ; preds = %144, %121
  %174 = phi i32 [ %145, %144 ], [ 0, %121 ]
  %175 = fcmp ugt float %25, %28
  br i1 %175, label %246, label %288

; <label>:176:                                    ; preds = %144, %119
  %177 = phi i32 [ %145, %144 ], [ 0, %119 ]
  %178 = fcmp uge float %25, %28
  br i1 %178, label %246, label %292

; <label>:179:                                    ; preds = %144, %117
  %180 = phi i32 [ %145, %144 ], [ 0, %117 ]
  %181 = fcmp une float %25, %28
  br i1 %181, label %246, label %296

; <label>:182:                                    ; preds = %144, %115
  %183 = phi i32 [ %145, %144 ], [ 0, %115 ]
  %184 = fcmp ugt float %25, %28
  br i1 %184, label %300, label %246

; <label>:185:                                    ; preds = %144, %113
  %186 = phi i32 [ %145, %144 ], [ 0, %113 ]
  %187 = fcmp olt float %25, %28
  br i1 %187, label %246, label %304

; <label>:188:                                    ; preds = %144, %111
  %189 = phi i1 [ %112, %111 ], [ %147, %144 ]
  %190 = phi i32 [ 0, %111 ], [ %145, %144 ]
  %191 = fcmp oeq float %25, %28
  %192 = and i1 %191, %189
  br i1 %192, label %246, label %193

; <label>:193:                                    ; preds = %188
  %194 = fcmp ord float %30, %32
  br label %308

; <label>:195:                                    ; preds = %144, %106
  %196 = phi i1 [ %107, %106 ], [ %147, %144 ]
  %197 = phi i32 [ 0, %106 ], [ %145, %144 ]
  %198 = fcmp ogt float %25, %28
  %199 = and i1 %198, %196
  br i1 %199, label %246, label %200

; <label>:200:                                    ; preds = %195
  %201 = fcmp ord float %30, %32
  br label %316

; <label>:202:                                    ; preds = %144, %101
  %203 = phi i1 [ %102, %101 ], [ %147, %144 ]
  %204 = phi i32 [ 0, %101 ], [ %145, %144 ]
  %205 = fcmp oge float %25, %28
  %206 = and i1 %205, %203
  br i1 %206, label %246, label %207

; <label>:207:                                    ; preds = %202
  %208 = fcmp ord float %30, %32
  br label %324

; <label>:209:                                    ; preds = %144, %96
  %210 = phi i32 [ %145, %144 ], [ 0, %96 ]
  %211 = fcmp ueq float %25, %28
  br i1 %211, label %332, label %246

; <label>:212:                                    ; preds = %144, %94
  %213 = phi i32 [ %145, %144 ], [ 0, %94 ]
  %214 = fcmp ule float %25, %28
  br i1 %214, label %246, label %336

; <label>:215:                                    ; preds = %144, %92
  %216 = phi i32 [ %145, %144 ], [ 0, %92 ]
  %217 = fcmp ult float %25, %28
  br i1 %217, label %246, label %340

; <label>:218:                                    ; preds = %144, %90
  %219 = phi i32 [ %145, %144 ], [ 0, %90 ]
  %220 = fcmp ueq float %25, %28
  br i1 %220, label %246, label %344

; <label>:221:                                    ; preds = %144
  br i1 %146, label %248, label %246

; <label>:222:                                    ; preds = %144, %85
  %223 = phi i32 [ %145, %144 ], [ 0, %85 ]
  %224 = fcmp ugt float %25, %28
  br i1 %224, label %246, label %349

; <label>:225:                                    ; preds = %144, %83
  %226 = phi i32 [ %145, %144 ], [ 0, %83 ]
  %227 = fcmp uge float %25, %28
  br i1 %227, label %246, label %353

; <label>:228:                                    ; preds = %144, %81
  %229 = phi i32 [ %145, %144 ], [ 0, %81 ]
  %230 = fcmp une float %25, %28
  br i1 %230, label %246, label %357

; <label>:231:                                    ; preds = %144, %144
  br i1 %146, label %246, label %254

; <label>:232:                                    ; preds = %144, %79
  %233 = phi i1 [ %80, %79 ], [ %147, %144 ]
  %234 = phi i32 [ 0, %79 ], [ %145, %144 ]
  %235 = fcmp ole float %25, %28
  %236 = and i1 %235, %233
  br i1 %236, label %246, label %237

; <label>:237:                                    ; preds = %232
  %238 = fcmp ord float %30, %32
  br label %362

; <label>:239:                                    ; preds = %144, %74
  %240 = phi i1 [ %75, %74 ], [ %147, %144 ]
  %241 = phi i32 [ 0, %74 ], [ %145, %144 ]
  %242 = fcmp olt float %25, %28
  %243 = and i1 %242, %240
  br i1 %243, label %246, label %244

; <label>:244:                                    ; preds = %239
  %245 = fcmp ord float %30, %32
  br label %370

; <label>:246:                                    ; preds = %239, %232, %231, %228, %225, %222, %221, %218, %215, %212, %209, %202, %195, %188, %185, %182, %179, %176, %173, %172, %169, %166, %163, %156, %153, %150, %144, %144, %124, %88
  %247 = phi i32 [ %241, %239 ], [ %234, %232 ], [ %145, %231 ], [ %229, %228 ], [ %226, %225 ], [ %223, %222 ], [ %145, %221 ], [ %219, %218 ], [ %216, %215 ], [ %213, %212 ], [ %210, %209 ], [ %204, %202 ], [ %197, %195 ], [ %190, %188 ], [ %186, %185 ], [ %183, %182 ], [ %180, %179 ], [ %177, %176 ], [ %174, %173 ], [ %145, %172 ], [ %170, %169 ], [ %167, %166 ], [ %164, %163 ], [ %158, %156 ], [ %154, %153 ], [ %151, %150 ], [ %145, %144 ], [ %145, %144 ], [ 0, %124 ], [ 0, %88 ]
  br label %254

; <label>:248:                                    ; preds = %221, %88
  %249 = phi i32 [ 0, %88 ], [ %145, %221 ]
  %250 = fcmp uno float %30, %32
  br i1 %250, label %381, label %378

; <label>:251:                                    ; preds = %172, %124
  %252 = phi i32 [ 0, %124 ], [ %145, %172 ]
  %253 = fcmp uno float %30, %32
  br i1 %253, label %385, label %378

; <label>:254:                                    ; preds = %246, %231, %144, %144
  %255 = phi i32 [ %247, %246 ], [ %145, %231 ], [ %145, %144 ], [ %145, %144 ]
  %256 = phi i32 [ -1, %246 ], [ 0, %231 ], [ 0, %144 ], [ 0, %144 ]
  %257 = fcmp uno float %30, %32
  %258 = xor i1 %257, true
  switch i8 %17, label %141 [
    i8 31, label %378
    i8 1, label %370
    i8 2, label %362
    i8 3, label %361
    i8 4, label %357
    i8 5, label %353
    i8 6, label %349
    i8 7, label %348
    i8 8, label %344
    i8 9, label %340
    i8 10, label %336
    i8 11, label %389
    i8 12, label %332
    i8 13, label %324
    i8 14, label %316
    i8 15, label %378
    i8 16, label %308
    i8 17, label %304
    i8 18, label %300
    i8 19, label %361
    i8 20, label %296
    i8 21, label %292
    i8 22, label %288
    i8 23, label %287
    i8 24, label %283
    i8 25, label %279
    i8 26, label %275
    i8 27, label %389
    i8 28, label %267
    i8 29, label %263
    i8 30, label %259
  ]

; <label>:259:                                    ; preds = %254, %150
  %260 = phi i32 [ %256, %254 ], [ 0, %150 ]
  %261 = phi i32 [ %255, %254 ], [ %151, %150 ]
  %262 = fcmp ogt float %30, %32
  br i1 %262, label %378, label %395

; <label>:263:                                    ; preds = %254, %153
  %264 = phi i32 [ %256, %254 ], [ 0, %153 ]
  %265 = phi i32 [ %255, %254 ], [ %154, %153 ]
  %266 = fcmp ult float %30, %32
  br i1 %266, label %400, label %378

; <label>:267:                                    ; preds = %254, %161
  %268 = phi i1 [ %162, %161 ], [ %258, %254 ]
  %269 = phi i32 [ 0, %161 ], [ %256, %254 ]
  %270 = phi i32 [ %158, %161 ], [ %255, %254 ]
  %271 = fcmp une float %30, %32
  %272 = and i1 %271, %268
  br i1 %272, label %378, label %273

; <label>:273:                                    ; preds = %267
  %274 = fcmp ord float %35, %38
  br label %405

; <label>:275:                                    ; preds = %254, %163
  %276 = phi i32 [ %256, %254 ], [ 0, %163 ]
  %277 = phi i32 [ %255, %254 ], [ %164, %163 ]
  %278 = fcmp ule float %30, %32
  br i1 %278, label %378, label %412

; <label>:279:                                    ; preds = %254, %166
  %280 = phi i32 [ %256, %254 ], [ 0, %166 ]
  %281 = phi i32 [ %255, %254 ], [ %167, %166 ]
  %282 = fcmp ult float %30, %32
  br i1 %282, label %378, label %417

; <label>:283:                                    ; preds = %254, %169
  %284 = phi i32 [ %256, %254 ], [ 0, %169 ]
  %285 = phi i32 [ %255, %254 ], [ %170, %169 ]
  %286 = fcmp ueq float %30, %32
  br i1 %286, label %378, label %422

; <label>:287:                                    ; preds = %254
  br i1 %257, label %385, label %378

; <label>:288:                                    ; preds = %254, %173
  %289 = phi i32 [ %256, %254 ], [ 0, %173 ]
  %290 = phi i32 [ %255, %254 ], [ %174, %173 ]
  %291 = fcmp ugt float %30, %32
  br i1 %291, label %378, label %428

; <label>:292:                                    ; preds = %254, %176
  %293 = phi i32 [ %256, %254 ], [ 0, %176 ]
  %294 = phi i32 [ %255, %254 ], [ %177, %176 ]
  %295 = fcmp uge float %30, %32
  br i1 %295, label %378, label %433

; <label>:296:                                    ; preds = %254, %179
  %297 = phi i32 [ %256, %254 ], [ 0, %179 ]
  %298 = phi i32 [ %255, %254 ], [ %180, %179 ]
  %299 = fcmp une float %30, %32
  br i1 %299, label %378, label %438

; <label>:300:                                    ; preds = %254, %182
  %301 = phi i32 [ %256, %254 ], [ 0, %182 ]
  %302 = phi i32 [ %255, %254 ], [ %183, %182 ]
  %303 = fcmp ugt float %30, %32
  br i1 %303, label %443, label %378

; <label>:304:                                    ; preds = %254, %185
  %305 = phi i32 [ %256, %254 ], [ 0, %185 ]
  %306 = phi i32 [ %255, %254 ], [ %186, %185 ]
  %307 = fcmp olt float %30, %32
  br i1 %307, label %378, label %448

; <label>:308:                                    ; preds = %254, %193
  %309 = phi i1 [ %194, %193 ], [ %258, %254 ]
  %310 = phi i32 [ 0, %193 ], [ %256, %254 ]
  %311 = phi i32 [ %190, %193 ], [ %255, %254 ]
  %312 = fcmp oeq float %30, %32
  %313 = and i1 %312, %309
  br i1 %313, label %378, label %314

; <label>:314:                                    ; preds = %308
  %315 = fcmp ord float %35, %38
  br label %453

; <label>:316:                                    ; preds = %254, %200
  %317 = phi i1 [ %201, %200 ], [ %258, %254 ]
  %318 = phi i32 [ 0, %200 ], [ %256, %254 ]
  %319 = phi i32 [ %197, %200 ], [ %255, %254 ]
  %320 = fcmp ogt float %30, %32
  %321 = and i1 %320, %317
  br i1 %321, label %378, label %322

; <label>:322:                                    ; preds = %316
  %323 = fcmp ord float %35, %38
  br label %460

; <label>:324:                                    ; preds = %254, %207
  %325 = phi i1 [ %208, %207 ], [ %258, %254 ]
  %326 = phi i32 [ 0, %207 ], [ %256, %254 ]
  %327 = phi i32 [ %204, %207 ], [ %255, %254 ]
  %328 = fcmp oge float %30, %32
  %329 = and i1 %328, %325
  br i1 %329, label %378, label %330

; <label>:330:                                    ; preds = %324
  %331 = fcmp ord float %35, %38
  br label %467

; <label>:332:                                    ; preds = %254, %209
  %333 = phi i32 [ %256, %254 ], [ 0, %209 ]
  %334 = phi i32 [ %255, %254 ], [ %210, %209 ]
  %335 = fcmp ueq float %30, %32
  br i1 %335, label %474, label %378

; <label>:336:                                    ; preds = %254, %212
  %337 = phi i32 [ %256, %254 ], [ 0, %212 ]
  %338 = phi i32 [ %255, %254 ], [ %213, %212 ]
  %339 = fcmp ule float %30, %32
  br i1 %339, label %378, label %479

; <label>:340:                                    ; preds = %254, %215
  %341 = phi i32 [ %256, %254 ], [ 0, %215 ]
  %342 = phi i32 [ %255, %254 ], [ %216, %215 ]
  %343 = fcmp ult float %30, %32
  br i1 %343, label %378, label %484

; <label>:344:                                    ; preds = %254, %218
  %345 = phi i32 [ %256, %254 ], [ 0, %218 ]
  %346 = phi i32 [ %255, %254 ], [ %219, %218 ]
  %347 = fcmp ueq float %30, %32
  br i1 %347, label %378, label %489

; <label>:348:                                    ; preds = %254
  br i1 %257, label %381, label %378

; <label>:349:                                    ; preds = %254, %222
  %350 = phi i32 [ %256, %254 ], [ 0, %222 ]
  %351 = phi i32 [ %255, %254 ], [ %223, %222 ]
  %352 = fcmp ugt float %30, %32
  br i1 %352, label %378, label %495

; <label>:353:                                    ; preds = %254, %225
  %354 = phi i32 [ %256, %254 ], [ 0, %225 ]
  %355 = phi i32 [ %255, %254 ], [ %226, %225 ]
  %356 = fcmp uge float %30, %32
  br i1 %356, label %378, label %500

; <label>:357:                                    ; preds = %254, %228
  %358 = phi i32 [ %256, %254 ], [ 0, %228 ]
  %359 = phi i32 [ %255, %254 ], [ %229, %228 ]
  %360 = fcmp une float %30, %32
  br i1 %360, label %378, label %505

; <label>:361:                                    ; preds = %254, %254
  br i1 %257, label %378, label %389

; <label>:362:                                    ; preds = %254, %237
  %363 = phi i1 [ %238, %237 ], [ %258, %254 ]
  %364 = phi i32 [ 0, %237 ], [ %256, %254 ]
  %365 = phi i32 [ %234, %237 ], [ %255, %254 ]
  %366 = fcmp ole float %30, %32
  %367 = and i1 %366, %363
  br i1 %367, label %378, label %368

; <label>:368:                                    ; preds = %362
  %369 = fcmp ord float %35, %38
  br label %511

; <label>:370:                                    ; preds = %254, %244
  %371 = phi i1 [ %245, %244 ], [ %258, %254 ]
  %372 = phi i32 [ 0, %244 ], [ %256, %254 ]
  %373 = phi i32 [ %241, %244 ], [ %255, %254 ]
  %374 = fcmp olt float %30, %32
  %375 = and i1 %374, %371
  br i1 %375, label %378, label %376

; <label>:376:                                    ; preds = %370
  %377 = fcmp ord float %35, %38
  br label %518

; <label>:378:                                    ; preds = %370, %362, %361, %357, %353, %349, %348, %344, %340, %336, %332, %324, %316, %308, %304, %300, %296, %292, %288, %287, %283, %279, %275, %267, %263, %259, %254, %254, %251, %248
  %379 = phi i32 [ %372, %370 ], [ %364, %362 ], [ %256, %361 ], [ %358, %357 ], [ %354, %353 ], [ %350, %349 ], [ %256, %348 ], [ %345, %344 ], [ %341, %340 ], [ %337, %336 ], [ %333, %332 ], [ %326, %324 ], [ %318, %316 ], [ %310, %308 ], [ %305, %304 ], [ %301, %300 ], [ %297, %296 ], [ %293, %292 ], [ %289, %288 ], [ %256, %287 ], [ %284, %283 ], [ %280, %279 ], [ %276, %275 ], [ %269, %267 ], [ %264, %263 ], [ %260, %259 ], [ %256, %254 ], [ %256, %254 ], [ 0, %251 ], [ 0, %248 ]
  %380 = phi i32 [ %373, %370 ], [ %365, %362 ], [ %255, %361 ], [ %359, %357 ], [ %355, %353 ], [ %351, %349 ], [ %255, %348 ], [ %346, %344 ], [ %342, %340 ], [ %338, %336 ], [ %334, %332 ], [ %327, %324 ], [ %319, %316 ], [ %311, %308 ], [ %306, %304 ], [ %302, %300 ], [ %298, %296 ], [ %294, %292 ], [ %290, %288 ], [ %255, %287 ], [ %285, %283 ], [ %281, %279 ], [ %277, %275 ], [ %270, %267 ], [ %265, %263 ], [ %261, %259 ], [ %255, %254 ], [ %255, %254 ], [ %252, %251 ], [ %249, %248 ]
  br label %389

; <label>:381:                                    ; preds = %348, %248
  %382 = phi i32 [ 0, %248 ], [ %256, %348 ]
  %383 = phi i32 [ %249, %248 ], [ %255, %348 ]
  %384 = fcmp uno float %35, %38
  br i1 %384, label %57, label %525

; <label>:385:                                    ; preds = %287, %251
  %386 = phi i32 [ 0, %251 ], [ %256, %287 ]
  %387 = phi i32 [ %252, %251 ], [ %255, %287 ]
  %388 = fcmp uno float %35, %38
  br i1 %388, label %57, label %525

; <label>:389:                                    ; preds = %378, %361, %254, %254
  %390 = phi i32 [ %379, %378 ], [ %256, %361 ], [ %256, %254 ], [ %256, %254 ]
  %391 = phi i32 [ %380, %378 ], [ %255, %361 ], [ %255, %254 ], [ %255, %254 ]
  %392 = phi i32 [ -1, %378 ], [ 0, %361 ], [ 0, %254 ], [ 0, %254 ]
  %393 = fcmp uno float %35, %38
  %394 = xor i1 %393, true
  switch i8 %17, label %141 [
    i8 31, label %525
    i8 1, label %518
    i8 2, label %511
    i8 3, label %510
    i8 4, label %505
    i8 5, label %500
    i8 6, label %495
    i8 7, label %494
    i8 8, label %489
    i8 9, label %484
    i8 10, label %479
    i8 11, label %57
    i8 12, label %474
    i8 13, label %467
    i8 14, label %460
    i8 15, label %525
    i8 16, label %453
    i8 17, label %448
    i8 18, label %443
    i8 19, label %510
    i8 20, label %438
    i8 21, label %433
    i8 22, label %428
    i8 23, label %427
    i8 24, label %422
    i8 25, label %417
    i8 26, label %412
    i8 27, label %57
    i8 28, label %405
    i8 29, label %400
    i8 30, label %395
  ]

; <label>:395:                                    ; preds = %389, %259
  %396 = phi i32 [ %392, %389 ], [ 0, %259 ]
  %397 = phi i32 [ %391, %389 ], [ %261, %259 ]
  %398 = phi i32 [ %390, %389 ], [ %260, %259 ]
  %399 = fcmp ogt float %35, %38
  br i1 %399, label %525, label %57

; <label>:400:                                    ; preds = %389, %263
  %401 = phi i32 [ %392, %389 ], [ 0, %263 ]
  %402 = phi i32 [ %391, %389 ], [ %265, %263 ]
  %403 = phi i32 [ %390, %389 ], [ %264, %263 ]
  %404 = fcmp ult float %35, %38
  br i1 %404, label %57, label %525

; <label>:405:                                    ; preds = %389, %273
  %406 = phi i1 [ %274, %273 ], [ %394, %389 ]
  %407 = phi i32 [ 0, %273 ], [ %392, %389 ]
  %408 = phi i32 [ %270, %273 ], [ %391, %389 ]
  %409 = phi i32 [ %269, %273 ], [ %390, %389 ]
  %410 = fcmp une float %35, %38
  %411 = and i1 %410, %406
  br i1 %411, label %525, label %57

; <label>:412:                                    ; preds = %389, %275
  %413 = phi i32 [ %392, %389 ], [ 0, %275 ]
  %414 = phi i32 [ %391, %389 ], [ %277, %275 ]
  %415 = phi i32 [ %390, %389 ], [ %276, %275 ]
  %416 = fcmp ule float %35, %38
  br i1 %416, label %525, label %57

; <label>:417:                                    ; preds = %389, %279
  %418 = phi i32 [ %392, %389 ], [ 0, %279 ]
  %419 = phi i32 [ %391, %389 ], [ %281, %279 ]
  %420 = phi i32 [ %390, %389 ], [ %280, %279 ]
  %421 = fcmp ult float %35, %38
  br i1 %421, label %525, label %57

; <label>:422:                                    ; preds = %389, %283
  %423 = phi i32 [ %392, %389 ], [ 0, %283 ]
  %424 = phi i32 [ %391, %389 ], [ %285, %283 ]
  %425 = phi i32 [ %390, %389 ], [ %284, %283 ]
  %426 = fcmp ueq float %35, %38
  br i1 %426, label %525, label %57

; <label>:427:                                    ; preds = %389
  br i1 %393, label %57, label %525

; <label>:428:                                    ; preds = %389, %288
  %429 = phi i32 [ %392, %389 ], [ 0, %288 ]
  %430 = phi i32 [ %391, %389 ], [ %290, %288 ]
  %431 = phi i32 [ %390, %389 ], [ %289, %288 ]
  %432 = fcmp ugt float %35, %38
  br i1 %432, label %525, label %57

; <label>:433:                                    ; preds = %389, %292
  %434 = phi i32 [ %392, %389 ], [ 0, %292 ]
  %435 = phi i32 [ %391, %389 ], [ %294, %292 ]
  %436 = phi i32 [ %390, %389 ], [ %293, %292 ]
  %437 = fcmp uge float %35, %38
  br i1 %437, label %525, label %57

; <label>:438:                                    ; preds = %389, %296
  %439 = phi i32 [ %392, %389 ], [ 0, %296 ]
  %440 = phi i32 [ %391, %389 ], [ %298, %296 ]
  %441 = phi i32 [ %390, %389 ], [ %297, %296 ]
  %442 = fcmp une float %35, %38
  br i1 %442, label %525, label %57

; <label>:443:                                    ; preds = %389, %300
  %444 = phi i32 [ %392, %389 ], [ 0, %300 ]
  %445 = phi i32 [ %391, %389 ], [ %302, %300 ]
  %446 = phi i32 [ %390, %389 ], [ %301, %300 ]
  %447 = fcmp ugt float %35, %38
  br i1 %447, label %57, label %525

; <label>:448:                                    ; preds = %389, %304
  %449 = phi i32 [ %392, %389 ], [ 0, %304 ]
  %450 = phi i32 [ %391, %389 ], [ %306, %304 ]
  %451 = phi i32 [ %390, %389 ], [ %305, %304 ]
  %452 = fcmp olt float %35, %38
  br i1 %452, label %525, label %57

; <label>:453:                                    ; preds = %389, %314
  %454 = phi i1 [ %315, %314 ], [ %394, %389 ]
  %455 = phi i32 [ 0, %314 ], [ %392, %389 ]
  %456 = phi i32 [ %311, %314 ], [ %391, %389 ]
  %457 = phi i32 [ %310, %314 ], [ %390, %389 ]
  %458 = fcmp oeq float %35, %38
  %459 = and i1 %458, %454
  br i1 %459, label %525, label %57

; <label>:460:                                    ; preds = %389, %322
  %461 = phi i1 [ %323, %322 ], [ %394, %389 ]
  %462 = phi i32 [ 0, %322 ], [ %392, %389 ]
  %463 = phi i32 [ %319, %322 ], [ %391, %389 ]
  %464 = phi i32 [ %318, %322 ], [ %390, %389 ]
  %465 = fcmp ogt float %35, %38
  %466 = and i1 %465, %461
  br i1 %466, label %525, label %57

; <label>:467:                                    ; preds = %389, %330
  %468 = phi i1 [ %331, %330 ], [ %394, %389 ]
  %469 = phi i32 [ 0, %330 ], [ %392, %389 ]
  %470 = phi i32 [ %327, %330 ], [ %391, %389 ]
  %471 = phi i32 [ %326, %330 ], [ %390, %389 ]
  %472 = fcmp oge float %35, %38
  %473 = and i1 %472, %468
  br i1 %473, label %525, label %57

; <label>:474:                                    ; preds = %389, %332
  %475 = phi i32 [ %392, %389 ], [ 0, %332 ]
  %476 = phi i32 [ %391, %389 ], [ %334, %332 ]
  %477 = phi i32 [ %390, %389 ], [ %333, %332 ]
  %478 = fcmp ueq float %35, %38
  br i1 %478, label %57, label %525

; <label>:479:                                    ; preds = %389, %336
  %480 = phi i32 [ %392, %389 ], [ 0, %336 ]
  %481 = phi i32 [ %391, %389 ], [ %338, %336 ]
  %482 = phi i32 [ %390, %389 ], [ %337, %336 ]
  %483 = fcmp ule float %35, %38
  br i1 %483, label %525, label %57

; <label>:484:                                    ; preds = %389, %340
  %485 = phi i32 [ %392, %389 ], [ 0, %340 ]
  %486 = phi i32 [ %391, %389 ], [ %342, %340 ]
  %487 = phi i32 [ %390, %389 ], [ %341, %340 ]
  %488 = fcmp ult float %35, %38
  br i1 %488, label %525, label %57

; <label>:489:                                    ; preds = %389, %344
  %490 = phi i32 [ %392, %389 ], [ 0, %344 ]
  %491 = phi i32 [ %391, %389 ], [ %346, %344 ]
  %492 = phi i32 [ %390, %389 ], [ %345, %344 ]
  %493 = fcmp ueq float %35, %38
  br i1 %493, label %525, label %57

; <label>:494:                                    ; preds = %389
  br i1 %393, label %57, label %525

; <label>:495:                                    ; preds = %389, %349
  %496 = phi i32 [ %392, %389 ], [ 0, %349 ]
  %497 = phi i32 [ %391, %389 ], [ %351, %349 ]
  %498 = phi i32 [ %390, %389 ], [ %350, %349 ]
  %499 = fcmp ugt float %35, %38
  br i1 %499, label %525, label %57

; <label>:500:                                    ; preds = %389, %353
  %501 = phi i32 [ %392, %389 ], [ 0, %353 ]
  %502 = phi i32 [ %391, %389 ], [ %355, %353 ]
  %503 = phi i32 [ %390, %389 ], [ %354, %353 ]
  %504 = fcmp uge float %35, %38
  br i1 %504, label %525, label %57

; <label>:505:                                    ; preds = %389, %357
  %506 = phi i32 [ %392, %389 ], [ 0, %357 ]
  %507 = phi i32 [ %391, %389 ], [ %359, %357 ]
  %508 = phi i32 [ %390, %389 ], [ %358, %357 ]
  %509 = fcmp une float %35, %38
  br i1 %509, label %525, label %57

; <label>:510:                                    ; preds = %389, %389
  br i1 %393, label %525, label %57

; <label>:511:                                    ; preds = %389, %368
  %512 = phi i1 [ %369, %368 ], [ %394, %389 ]
  %513 = phi i32 [ 0, %368 ], [ %392, %389 ]
  %514 = phi i32 [ %365, %368 ], [ %391, %389 ]
  %515 = phi i32 [ %364, %368 ], [ %390, %389 ]
  %516 = fcmp ole float %35, %38
  %517 = and i1 %516, %512
  br i1 %517, label %525, label %57

; <label>:518:                                    ; preds = %389, %376
  %519 = phi i1 [ %377, %376 ], [ %394, %389 ]
  %520 = phi i32 [ 0, %376 ], [ %392, %389 ]
  %521 = phi i32 [ %373, %376 ], [ %391, %389 ]
  %522 = phi i32 [ %372, %376 ], [ %390, %389 ]
  %523 = fcmp olt float %35, %38
  %524 = and i1 %523, %519
  br i1 %524, label %525, label %57

; <label>:525:                                    ; preds = %518, %511, %510, %505, %500, %495, %494, %489, %484, %479, %474, %467, %460, %453, %448, %443, %438, %433, %428, %427, %422, %417, %412, %405, %400, %395, %389, %389, %385, %381
  %526 = phi i32 [ %520, %518 ], [ %513, %511 ], [ %392, %510 ], [ %506, %505 ], [ %501, %500 ], [ %496, %495 ], [ %392, %494 ], [ %490, %489 ], [ %485, %484 ], [ %480, %479 ], [ %475, %474 ], [ %469, %467 ], [ %462, %460 ], [ %455, %453 ], [ %449, %448 ], [ %444, %443 ], [ %439, %438 ], [ %434, %433 ], [ %429, %428 ], [ %392, %427 ], [ %423, %422 ], [ %418, %417 ], [ %413, %412 ], [ %407, %405 ], [ %401, %400 ], [ %396, %395 ], [ %392, %389 ], [ %392, %389 ], [ 0, %385 ], [ 0, %381 ]
  %527 = phi i32 [ %521, %518 ], [ %514, %511 ], [ %391, %510 ], [ %507, %505 ], [ %502, %500 ], [ %497, %495 ], [ %391, %494 ], [ %491, %489 ], [ %486, %484 ], [ %481, %479 ], [ %476, %474 ], [ %470, %467 ], [ %463, %460 ], [ %456, %453 ], [ %450, %448 ], [ %445, %443 ], [ %440, %438 ], [ %435, %433 ], [ %430, %428 ], [ %391, %427 ], [ %424, %422 ], [ %419, %417 ], [ %414, %412 ], [ %408, %405 ], [ %402, %400 ], [ %397, %395 ], [ %391, %389 ], [ %391, %389 ], [ %387, %385 ], [ %383, %381 ]
  %528 = phi i32 [ %522, %518 ], [ %515, %511 ], [ %390, %510 ], [ %508, %505 ], [ %503, %500 ], [ %498, %495 ], [ %390, %494 ], [ %492, %489 ], [ %487, %484 ], [ %482, %479 ], [ %477, %474 ], [ %471, %467 ], [ %464, %460 ], [ %457, %453 ], [ %451, %448 ], [ %446, %443 ], [ %441, %438 ], [ %436, %433 ], [ %431, %428 ], [ %390, %427 ], [ %425, %422 ], [ %420, %417 ], [ %415, %412 ], [ %409, %405 ], [ %403, %400 ], [ %398, %395 ], [ %390, %389 ], [ %390, %389 ], [ %386, %385 ], [ %382, %381 ]
  br label %57
}

define %struct.Memory* @routine_vcmpps_xmm_xmm_xmm_imm8(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #19 {
block_530:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %11 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %10, i64 0, i64 3
  %XMM3 = bitcast %union.VectorReg* %11 to %union.vec128_t*
  %12 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %13 = bitcast %union.vec128_t* %XMM2 to i8*
  %14 = bitcast %union.vec128_t* %XMM3 to i8*
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5CMPPSI3VnWI8vec256_tE2VnI8vec128_tES6_EEP6MemoryS8_R5StateT_T0_T1_2InIhE(%struct.Memory* %2, %struct.State* %0, i8* %12, i8* %13, i8* %14, i64 10)
  ret %struct.Memory* %17
}

define i32 @main() {
entry:
  %state = alloca %struct.State
  %mem = alloca %struct.Memory
  %addr1 = getelementptr inbounds %struct.State, %struct.State* %state, i64 0, i32 6, i32 1, i32 0, i32 0
  %addr2 = getelementptr inbounds %struct.State, %struct.State* %state, i64 0, i32 6, i32 3, i32 0, i32 0
  %addr3 = getelementptr inbounds %struct.State, %struct.State* %state, i64 0, i32 6, i32 5, i32 0, i32 0
  %addr4 = getelementptr inbounds %struct.State, %struct.State* %state, i64 0, i32 6, i32 7, i32 0, i32 0
  %addr5 = getelementptr inbounds %struct.State, %struct.State* %state, i64 0, i32 6, i32 9, i32 0, i32 0
  %addr6 = getelementptr inbounds %struct.State, %struct.State* %state, i64 0, i32 6, i32 11, i32 0, i32 0
  %addr7 = getelementptr inbounds %struct.State, %struct.State* %state, i64 0, i32 6, i32 13, i32 0, i32 0
  %addr8 = getelementptr inbounds %struct.State, %struct.State* %state, i64 0, i32 6, i32 15, i32 0, i32 0
  %addr9 = getelementptr inbounds %struct.State, %struct.State* %state, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 100, i64* %addr1, align 8
  store i64 200, i64* %addr2, align 8
  store i64 300, i64* %addr3, align 8
  store i64 400, i64* %addr4, align 8
  store i64 500, i64* %addr5, align 8
  store i64 600, i64* %addr6, align 8
  store i64 700, i64* %addr7, align 8
  store i64 800, i64* %addr8, align 8
  store i64 900, i64* %addr9, align 8
  %call = call %struct.Memory* @routine_vcmpps_xmm_xmm_xmm_imm8(%struct.State* %state, i64 0, %struct.Memory* %mem)
  ret i32 0
}