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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5CMPPSI3VnWI8vec256_tE2VnI8vec128_tE3MVnIS5_EEEP6MemorySA_R5StateT_T0_T1_2InIhE(%struct.Memory*, %struct.State* dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i64, i64) #0 {
  %7 = bitcast i8* %3 to i64*
  %8 = load i64, i64* %7, align 1
  %9 = getelementptr inbounds i8, i8* %3, i64 8
  %10 = bitcast i8* %9 to i64*
  %11 = load i64, i64* %10, align 1
  %12 = inttoptr i64 %4 to float*
  %13 = load float, float* %12
  %14 = add i64 %4, 4
  %15 = inttoptr i64 %14 to float*
  %16 = load float, float* %15
  %17 = add i64 %4, 8
  %18 = inttoptr i64 %17 to float*
  %19 = load float, float* %18
  %20 = add i64 %4, 12
  %21 = inttoptr i64 %20 to float*
  %22 = load float, float* %21
  %23 = trunc i64 %5 to i8
  %24 = icmp ugt i8 %23, 31
  %25 = trunc i64 %8 to i32
  %26 = bitcast i32 %25 to float
  %27 = lshr i64 %8, 32
  %28 = trunc i64 %27 to i32
  %29 = bitcast i32 %28 to float
  %30 = trunc i64 %11 to i32
  %31 = bitcast i32 %30 to float
  %32 = lshr i64 %11, 32
  %33 = trunc i64 %32 to i32
  %34 = bitcast i32 %33 to float
  br i1 %24, label %49, label %35

; <label>:35:                                     ; preds = %6
  %36 = icmp eq i8 %23, 0
  br i1 %36, label %40, label %37

; <label>:37:                                     ; preds = %35
  %38 = fcmp uno float %26, %13
  %39 = xor i1 %38, true
  switch i8 %23, label %137 [
    i8 31, label %139
    i8 1, label %67
    i8 2, label %72
    i8 3, label %138
    i8 4, label %77
    i8 5, label %79
    i8 6, label %81
    i8 7, label %83
    i8 8, label %86
    i8 9, label %88
    i8 10, label %90
    i8 11, label %140
    i8 12, label %92
    i8 13, label %94
    i8 14, label %99
    i8 15, label %139
    i8 16, label %104
    i8 17, label %109
    i8 18, label %111
    i8 19, label %138
    i8 20, label %113
    i8 21, label %115
    i8 22, label %117
    i8 23, label %119
    i8 24, label %122
    i8 25, label %124
    i8 26, label %126
    i8 27, label %140
    i8 28, label %128
    i8 29, label %133
    i8 30, label %135
  ]

; <label>:40:                                     ; preds = %35
  %41 = fcmp oeq float %26, %13
  %42 = sext i1 %41 to i32
  %43 = fcmp oeq float %29, %16
  %44 = sext i1 %43 to i32
  %45 = fcmp oeq float %31, %19
  %46 = sext i1 %45 to i32
  %47 = fcmp oeq float %34, %22
  %48 = sext i1 %47 to i32
  br label %53

; <label>:49:                                     ; preds = %6
  %50 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %1, i64 %51, %struct.Memory* %0) #21
  br label %144

; <label>:53:                                     ; preds = %521, %514, %507, %506, %501, %496, %491, %490, %485, %480, %475, %470, %463, %456, %449, %444, %439, %434, %429, %424, %423, %418, %413, %408, %401, %396, %391, %385, %385, %381, %377, %40
  %54 = phi i32 [ %48, %40 ], [ -1, %521 ], [ 0, %506 ], [ 0, %391 ], [ 0, %396 ], [ 0, %401 ], [ 0, %408 ], [ 0, %413 ], [ 0, %418 ], [ 0, %423 ], [ 0, %424 ], [ 0, %429 ], [ 0, %434 ], [ 0, %439 ], [ 0, %444 ], [ 0, %449 ], [ 0, %456 ], [ 0, %463 ], [ 0, %470 ], [ 0, %475 ], [ 0, %480 ], [ 0, %485 ], [ 0, %490 ], [ 0, %491 ], [ 0, %496 ], [ 0, %501 ], [ 0, %507 ], [ 0, %514 ], [ 0, %385 ], [ 0, %385 ], [ 0, %381 ], [ 0, %377 ]
  %55 = phi i32 [ %46, %40 ], [ %522, %521 ], [ %388, %506 ], [ %392, %391 ], [ %397, %396 ], [ %403, %401 ], [ %409, %408 ], [ %414, %413 ], [ %419, %418 ], [ %388, %423 ], [ %425, %424 ], [ %430, %429 ], [ %435, %434 ], [ %440, %439 ], [ %445, %444 ], [ %451, %449 ], [ %458, %456 ], [ %465, %463 ], [ %471, %470 ], [ %476, %475 ], [ %481, %480 ], [ %486, %485 ], [ %388, %490 ], [ %492, %491 ], [ %497, %496 ], [ %502, %501 ], [ %509, %507 ], [ %516, %514 ], [ %388, %385 ], [ %388, %385 ], [ 0, %381 ], [ 0, %377 ]
  %56 = phi i32 [ %44, %40 ], [ %524, %521 ], [ %386, %506 ], [ %394, %391 ], [ %399, %396 ], [ %405, %401 ], [ %411, %408 ], [ %416, %413 ], [ %421, %418 ], [ %386, %423 ], [ %427, %424 ], [ %432, %429 ], [ %437, %434 ], [ %442, %439 ], [ %447, %444 ], [ %453, %449 ], [ %460, %456 ], [ %467, %463 ], [ %473, %470 ], [ %478, %475 ], [ %483, %480 ], [ %488, %485 ], [ %386, %490 ], [ %494, %491 ], [ %499, %496 ], [ %504, %501 ], [ %511, %507 ], [ %518, %514 ], [ %386, %385 ], [ %386, %385 ], [ %382, %381 ], [ %378, %377 ]
  %57 = phi i32 [ %42, %40 ], [ %523, %521 ], [ %387, %506 ], [ %393, %391 ], [ %398, %396 ], [ %404, %401 ], [ %410, %408 ], [ %415, %413 ], [ %420, %418 ], [ %387, %423 ], [ %426, %424 ], [ %431, %429 ], [ %436, %434 ], [ %441, %439 ], [ %446, %444 ], [ %452, %449 ], [ %459, %456 ], [ %466, %463 ], [ %472, %470 ], [ %477, %475 ], [ %482, %480 ], [ %487, %485 ], [ %387, %490 ], [ %493, %491 ], [ %498, %496 ], [ %503, %501 ], [ %510, %507 ], [ %517, %514 ], [ %387, %385 ], [ %387, %385 ], [ %383, %381 ], [ %379, %377 ]
  %58 = bitcast i8* %2 to i32*
  store i32 %57, i32* %58, align 1
  %59 = getelementptr inbounds i8, i8* %2, i64 4
  %60 = bitcast i8* %59 to i32*
  store i32 %56, i32* %60, align 1
  %61 = getelementptr inbounds i8, i8* %2, i64 8
  %62 = bitcast i8* %61 to i32*
  store i32 %55, i32* %62, align 1
  %63 = getelementptr inbounds i8, i8* %2, i64 12
  %64 = bitcast i8* %63 to i32*
  store i32 %54, i32* %64, align 1
  %65 = getelementptr inbounds i8, i8* %2, i64 16
  %66 = bitcast i8* %65 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %66, align 1
  br label %144

; <label>:67:                                     ; preds = %37
  %68 = fcmp olt float %26, %13
  %69 = and i1 %68, %39
  br i1 %69, label %139, label %70

; <label>:70:                                     ; preds = %67
  %71 = fcmp ord float %29, %16
  br label %235

; <label>:72:                                     ; preds = %37
  %73 = fcmp ole float %26, %13
  %74 = and i1 %73, %39
  br i1 %74, label %139, label %75

; <label>:75:                                     ; preds = %72
  %76 = fcmp ord float %29, %16
  br label %228

; <label>:77:                                     ; preds = %37
  %78 = fcmp une float %26, %13
  br i1 %78, label %139, label %224

; <label>:79:                                     ; preds = %37
  %80 = fcmp uge float %26, %13
  br i1 %80, label %139, label %221

; <label>:81:                                     ; preds = %37
  %82 = fcmp ugt float %26, %13
  br i1 %82, label %139, label %218

; <label>:83:                                     ; preds = %37
  br i1 %38, label %84, label %139

; <label>:84:                                     ; preds = %83
  %85 = fcmp uno float %29, %16
  br i1 %85, label %244, label %242

; <label>:86:                                     ; preds = %37
  %87 = fcmp ueq float %26, %13
  br i1 %87, label %139, label %214

; <label>:88:                                     ; preds = %37
  %89 = fcmp ult float %26, %13
  br i1 %89, label %139, label %211

; <label>:90:                                     ; preds = %37
  %91 = fcmp ule float %26, %13
  br i1 %91, label %139, label %208

; <label>:92:                                     ; preds = %37
  %93 = fcmp ueq float %26, %13
  br i1 %93, label %205, label %139

; <label>:94:                                     ; preds = %37
  %95 = fcmp oge float %26, %13
  %96 = and i1 %95, %39
  br i1 %96, label %139, label %97

; <label>:97:                                     ; preds = %94
  %98 = fcmp ord float %29, %16
  br label %198

; <label>:99:                                     ; preds = %37
  %100 = fcmp ogt float %26, %13
  %101 = and i1 %100, %39
  br i1 %101, label %139, label %102

; <label>:102:                                    ; preds = %99
  %103 = fcmp ord float %29, %16
  br label %191

; <label>:104:                                    ; preds = %37
  %105 = fcmp oeq float %26, %13
  %106 = and i1 %105, %39
  br i1 %106, label %139, label %107

; <label>:107:                                    ; preds = %104
  %108 = fcmp ord float %29, %16
  br label %184

; <label>:109:                                    ; preds = %37
  %110 = fcmp olt float %26, %13
  br i1 %110, label %139, label %181

; <label>:111:                                    ; preds = %37
  %112 = fcmp ugt float %26, %13
  br i1 %112, label %178, label %139

; <label>:113:                                    ; preds = %37
  %114 = fcmp une float %26, %13
  br i1 %114, label %139, label %175

; <label>:115:                                    ; preds = %37
  %116 = fcmp uge float %26, %13
  br i1 %116, label %139, label %172

; <label>:117:                                    ; preds = %37
  %118 = fcmp ugt float %26, %13
  br i1 %118, label %139, label %169

; <label>:119:                                    ; preds = %37
  br i1 %38, label %120, label %139

; <label>:120:                                    ; preds = %119
  %121 = fcmp uno float %29, %16
  br i1 %121, label %247, label %242

; <label>:122:                                    ; preds = %37
  %123 = fcmp ueq float %26, %13
  br i1 %123, label %139, label %165

; <label>:124:                                    ; preds = %37
  %125 = fcmp ult float %26, %13
  br i1 %125, label %139, label %162

; <label>:126:                                    ; preds = %37
  %127 = fcmp ule float %26, %13
  br i1 %127, label %139, label %159

; <label>:128:                                    ; preds = %37
  %129 = fcmp une float %26, %13
  %130 = and i1 %129, %39
  br i1 %130, label %139, label %131

; <label>:131:                                    ; preds = %128
  %132 = fcmp ord float %29, %16
  br label %152

; <label>:133:                                    ; preds = %37
  %134 = fcmp ult float %26, %13
  br i1 %134, label %149, label %139

; <label>:135:                                    ; preds = %37
  %136 = fcmp ogt float %26, %13
  br i1 %136, label %139, label %146

; <label>:137:                                    ; preds = %385, %250, %140, %37
  unreachable

; <label>:138:                                    ; preds = %37, %37
  br i1 %38, label %139, label %140

; <label>:139:                                    ; preds = %138, %135, %133, %128, %126, %124, %122, %119, %117, %115, %113, %111, %109, %104, %99, %94, %92, %90, %88, %86, %83, %81, %79, %77, %72, %67, %37, %37
  br label %140

; <label>:140:                                    ; preds = %139, %138, %37, %37
  %141 = phi i32 [ -1, %139 ], [ 0, %138 ], [ 0, %37 ], [ 0, %37 ]
  %142 = fcmp uno float %29, %16
  %143 = xor i1 %142, true
  switch i8 %23, label %137 [
    i8 31, label %242
    i8 1, label %235
    i8 2, label %228
    i8 3, label %227
    i8 4, label %224
    i8 5, label %221
    i8 6, label %218
    i8 7, label %217
    i8 8, label %214
    i8 9, label %211
    i8 10, label %208
    i8 11, label %250
    i8 12, label %205
    i8 13, label %198
    i8 14, label %191
    i8 15, label %242
    i8 16, label %184
    i8 17, label %181
    i8 18, label %178
    i8 19, label %227
    i8 20, label %175
    i8 21, label %172
    i8 22, label %169
    i8 23, label %168
    i8 24, label %165
    i8 25, label %162
    i8 26, label %159
    i8 27, label %250
    i8 28, label %152
    i8 29, label %149
    i8 30, label %146
  ]

; <label>:144:                                    ; preds = %53, %49
  %145 = phi %struct.Memory* [ %52, %49 ], [ %0, %53 ]
  ret %struct.Memory* %145

; <label>:146:                                    ; preds = %140, %135
  %147 = phi i32 [ %141, %140 ], [ 0, %135 ]
  %148 = fcmp ogt float %29, %16
  br i1 %148, label %242, label %255

; <label>:149:                                    ; preds = %140, %133
  %150 = phi i32 [ %141, %140 ], [ 0, %133 ]
  %151 = fcmp ult float %29, %16
  br i1 %151, label %259, label %242

; <label>:152:                                    ; preds = %140, %131
  %153 = phi i1 [ %132, %131 ], [ %143, %140 ]
  %154 = phi i32 [ 0, %131 ], [ %141, %140 ]
  %155 = fcmp une float %29, %16
  %156 = and i1 %155, %153
  br i1 %156, label %242, label %157

; <label>:157:                                    ; preds = %152
  %158 = fcmp ord float %31, %19
  br label %263

; <label>:159:                                    ; preds = %140, %126
  %160 = phi i32 [ %141, %140 ], [ 0, %126 ]
  %161 = fcmp ule float %29, %16
  br i1 %161, label %242, label %271

; <label>:162:                                    ; preds = %140, %124
  %163 = phi i32 [ %141, %140 ], [ 0, %124 ]
  %164 = fcmp ult float %29, %16
  br i1 %164, label %242, label %275

; <label>:165:                                    ; preds = %140, %122
  %166 = phi i32 [ %141, %140 ], [ 0, %122 ]
  %167 = fcmp ueq float %29, %16
  br i1 %167, label %242, label %279

; <label>:168:                                    ; preds = %140
  br i1 %142, label %247, label %242

; <label>:169:                                    ; preds = %140, %117
  %170 = phi i32 [ %141, %140 ], [ 0, %117 ]
  %171 = fcmp ugt float %29, %16
  br i1 %171, label %242, label %284

; <label>:172:                                    ; preds = %140, %115
  %173 = phi i32 [ %141, %140 ], [ 0, %115 ]
  %174 = fcmp uge float %29, %16
  br i1 %174, label %242, label %288

; <label>:175:                                    ; preds = %140, %113
  %176 = phi i32 [ %141, %140 ], [ 0, %113 ]
  %177 = fcmp une float %29, %16
  br i1 %177, label %242, label %292

; <label>:178:                                    ; preds = %140, %111
  %179 = phi i32 [ %141, %140 ], [ 0, %111 ]
  %180 = fcmp ugt float %29, %16
  br i1 %180, label %296, label %242

; <label>:181:                                    ; preds = %140, %109
  %182 = phi i32 [ %141, %140 ], [ 0, %109 ]
  %183 = fcmp olt float %29, %16
  br i1 %183, label %242, label %300

; <label>:184:                                    ; preds = %140, %107
  %185 = phi i1 [ %108, %107 ], [ %143, %140 ]
  %186 = phi i32 [ 0, %107 ], [ %141, %140 ]
  %187 = fcmp oeq float %29, %16
  %188 = and i1 %187, %185
  br i1 %188, label %242, label %189

; <label>:189:                                    ; preds = %184
  %190 = fcmp ord float %31, %19
  br label %304

; <label>:191:                                    ; preds = %140, %102
  %192 = phi i1 [ %103, %102 ], [ %143, %140 ]
  %193 = phi i32 [ 0, %102 ], [ %141, %140 ]
  %194 = fcmp ogt float %29, %16
  %195 = and i1 %194, %192
  br i1 %195, label %242, label %196

; <label>:196:                                    ; preds = %191
  %197 = fcmp ord float %31, %19
  br label %312

; <label>:198:                                    ; preds = %140, %97
  %199 = phi i1 [ %98, %97 ], [ %143, %140 ]
  %200 = phi i32 [ 0, %97 ], [ %141, %140 ]
  %201 = fcmp oge float %29, %16
  %202 = and i1 %201, %199
  br i1 %202, label %242, label %203

; <label>:203:                                    ; preds = %198
  %204 = fcmp ord float %31, %19
  br label %320

; <label>:205:                                    ; preds = %140, %92
  %206 = phi i32 [ %141, %140 ], [ 0, %92 ]
  %207 = fcmp ueq float %29, %16
  br i1 %207, label %328, label %242

; <label>:208:                                    ; preds = %140, %90
  %209 = phi i32 [ %141, %140 ], [ 0, %90 ]
  %210 = fcmp ule float %29, %16
  br i1 %210, label %242, label %332

; <label>:211:                                    ; preds = %140, %88
  %212 = phi i32 [ %141, %140 ], [ 0, %88 ]
  %213 = fcmp ult float %29, %16
  br i1 %213, label %242, label %336

; <label>:214:                                    ; preds = %140, %86
  %215 = phi i32 [ %141, %140 ], [ 0, %86 ]
  %216 = fcmp ueq float %29, %16
  br i1 %216, label %242, label %340

; <label>:217:                                    ; preds = %140
  br i1 %142, label %244, label %242

; <label>:218:                                    ; preds = %140, %81
  %219 = phi i32 [ %141, %140 ], [ 0, %81 ]
  %220 = fcmp ugt float %29, %16
  br i1 %220, label %242, label %345

; <label>:221:                                    ; preds = %140, %79
  %222 = phi i32 [ %141, %140 ], [ 0, %79 ]
  %223 = fcmp uge float %29, %16
  br i1 %223, label %242, label %349

; <label>:224:                                    ; preds = %140, %77
  %225 = phi i32 [ %141, %140 ], [ 0, %77 ]
  %226 = fcmp une float %29, %16
  br i1 %226, label %242, label %353

; <label>:227:                                    ; preds = %140, %140
  br i1 %142, label %242, label %250

; <label>:228:                                    ; preds = %140, %75
  %229 = phi i1 [ %76, %75 ], [ %143, %140 ]
  %230 = phi i32 [ 0, %75 ], [ %141, %140 ]
  %231 = fcmp ole float %29, %16
  %232 = and i1 %231, %229
  br i1 %232, label %242, label %233

; <label>:233:                                    ; preds = %228
  %234 = fcmp ord float %31, %19
  br label %358

; <label>:235:                                    ; preds = %140, %70
  %236 = phi i1 [ %71, %70 ], [ %143, %140 ]
  %237 = phi i32 [ 0, %70 ], [ %141, %140 ]
  %238 = fcmp olt float %29, %16
  %239 = and i1 %238, %236
  br i1 %239, label %242, label %240

; <label>:240:                                    ; preds = %235
  %241 = fcmp ord float %31, %19
  br label %366

; <label>:242:                                    ; preds = %235, %228, %227, %224, %221, %218, %217, %214, %211, %208, %205, %198, %191, %184, %181, %178, %175, %172, %169, %168, %165, %162, %159, %152, %149, %146, %140, %140, %120, %84
  %243 = phi i32 [ %237, %235 ], [ %230, %228 ], [ %141, %227 ], [ %225, %224 ], [ %222, %221 ], [ %219, %218 ], [ %141, %217 ], [ %215, %214 ], [ %212, %211 ], [ %209, %208 ], [ %206, %205 ], [ %200, %198 ], [ %193, %191 ], [ %186, %184 ], [ %182, %181 ], [ %179, %178 ], [ %176, %175 ], [ %173, %172 ], [ %170, %169 ], [ %141, %168 ], [ %166, %165 ], [ %163, %162 ], [ %160, %159 ], [ %154, %152 ], [ %150, %149 ], [ %147, %146 ], [ %141, %140 ], [ %141, %140 ], [ 0, %120 ], [ 0, %84 ]
  br label %250

; <label>:244:                                    ; preds = %217, %84
  %245 = phi i32 [ 0, %84 ], [ %141, %217 ]
  %246 = fcmp uno float %31, %19
  br i1 %246, label %377, label %374

; <label>:247:                                    ; preds = %168, %120
  %248 = phi i32 [ 0, %120 ], [ %141, %168 ]
  %249 = fcmp uno float %31, %19
  br i1 %249, label %381, label %374

; <label>:250:                                    ; preds = %242, %227, %140, %140
  %251 = phi i32 [ %243, %242 ], [ %141, %227 ], [ %141, %140 ], [ %141, %140 ]
  %252 = phi i32 [ -1, %242 ], [ 0, %227 ], [ 0, %140 ], [ 0, %140 ]
  %253 = fcmp uno float %31, %19
  %254 = xor i1 %253, true
  switch i8 %23, label %137 [
    i8 31, label %374
    i8 1, label %366
    i8 2, label %358
    i8 3, label %357
    i8 4, label %353
    i8 5, label %349
    i8 6, label %345
    i8 7, label %344
    i8 8, label %340
    i8 9, label %336
    i8 10, label %332
    i8 11, label %385
    i8 12, label %328
    i8 13, label %320
    i8 14, label %312
    i8 15, label %374
    i8 16, label %304
    i8 17, label %300
    i8 18, label %296
    i8 19, label %357
    i8 20, label %292
    i8 21, label %288
    i8 22, label %284
    i8 23, label %283
    i8 24, label %279
    i8 25, label %275
    i8 26, label %271
    i8 27, label %385
    i8 28, label %263
    i8 29, label %259
    i8 30, label %255
  ]

; <label>:255:                                    ; preds = %250, %146
  %256 = phi i32 [ %252, %250 ], [ 0, %146 ]
  %257 = phi i32 [ %251, %250 ], [ %147, %146 ]
  %258 = fcmp ogt float %31, %19
  br i1 %258, label %374, label %391

; <label>:259:                                    ; preds = %250, %149
  %260 = phi i32 [ %252, %250 ], [ 0, %149 ]
  %261 = phi i32 [ %251, %250 ], [ %150, %149 ]
  %262 = fcmp ult float %31, %19
  br i1 %262, label %396, label %374

; <label>:263:                                    ; preds = %250, %157
  %264 = phi i1 [ %158, %157 ], [ %254, %250 ]
  %265 = phi i32 [ 0, %157 ], [ %252, %250 ]
  %266 = phi i32 [ %154, %157 ], [ %251, %250 ]
  %267 = fcmp une float %31, %19
  %268 = and i1 %267, %264
  br i1 %268, label %374, label %269

; <label>:269:                                    ; preds = %263
  %270 = fcmp ord float %34, %22
  br label %401

; <label>:271:                                    ; preds = %250, %159
  %272 = phi i32 [ %252, %250 ], [ 0, %159 ]
  %273 = phi i32 [ %251, %250 ], [ %160, %159 ]
  %274 = fcmp ule float %31, %19
  br i1 %274, label %374, label %408

; <label>:275:                                    ; preds = %250, %162
  %276 = phi i32 [ %252, %250 ], [ 0, %162 ]
  %277 = phi i32 [ %251, %250 ], [ %163, %162 ]
  %278 = fcmp ult float %31, %19
  br i1 %278, label %374, label %413

; <label>:279:                                    ; preds = %250, %165
  %280 = phi i32 [ %252, %250 ], [ 0, %165 ]
  %281 = phi i32 [ %251, %250 ], [ %166, %165 ]
  %282 = fcmp ueq float %31, %19
  br i1 %282, label %374, label %418

; <label>:283:                                    ; preds = %250
  br i1 %253, label %381, label %374

; <label>:284:                                    ; preds = %250, %169
  %285 = phi i32 [ %252, %250 ], [ 0, %169 ]
  %286 = phi i32 [ %251, %250 ], [ %170, %169 ]
  %287 = fcmp ugt float %31, %19
  br i1 %287, label %374, label %424

; <label>:288:                                    ; preds = %250, %172
  %289 = phi i32 [ %252, %250 ], [ 0, %172 ]
  %290 = phi i32 [ %251, %250 ], [ %173, %172 ]
  %291 = fcmp uge float %31, %19
  br i1 %291, label %374, label %429

; <label>:292:                                    ; preds = %250, %175
  %293 = phi i32 [ %252, %250 ], [ 0, %175 ]
  %294 = phi i32 [ %251, %250 ], [ %176, %175 ]
  %295 = fcmp une float %31, %19
  br i1 %295, label %374, label %434

; <label>:296:                                    ; preds = %250, %178
  %297 = phi i32 [ %252, %250 ], [ 0, %178 ]
  %298 = phi i32 [ %251, %250 ], [ %179, %178 ]
  %299 = fcmp ugt float %31, %19
  br i1 %299, label %439, label %374

; <label>:300:                                    ; preds = %250, %181
  %301 = phi i32 [ %252, %250 ], [ 0, %181 ]
  %302 = phi i32 [ %251, %250 ], [ %182, %181 ]
  %303 = fcmp olt float %31, %19
  br i1 %303, label %374, label %444

; <label>:304:                                    ; preds = %250, %189
  %305 = phi i1 [ %190, %189 ], [ %254, %250 ]
  %306 = phi i32 [ 0, %189 ], [ %252, %250 ]
  %307 = phi i32 [ %186, %189 ], [ %251, %250 ]
  %308 = fcmp oeq float %31, %19
  %309 = and i1 %308, %305
  br i1 %309, label %374, label %310

; <label>:310:                                    ; preds = %304
  %311 = fcmp ord float %34, %22
  br label %449

; <label>:312:                                    ; preds = %250, %196
  %313 = phi i1 [ %197, %196 ], [ %254, %250 ]
  %314 = phi i32 [ 0, %196 ], [ %252, %250 ]
  %315 = phi i32 [ %193, %196 ], [ %251, %250 ]
  %316 = fcmp ogt float %31, %19
  %317 = and i1 %316, %313
  br i1 %317, label %374, label %318

; <label>:318:                                    ; preds = %312
  %319 = fcmp ord float %34, %22
  br label %456

; <label>:320:                                    ; preds = %250, %203
  %321 = phi i1 [ %204, %203 ], [ %254, %250 ]
  %322 = phi i32 [ 0, %203 ], [ %252, %250 ]
  %323 = phi i32 [ %200, %203 ], [ %251, %250 ]
  %324 = fcmp oge float %31, %19
  %325 = and i1 %324, %321
  br i1 %325, label %374, label %326

; <label>:326:                                    ; preds = %320
  %327 = fcmp ord float %34, %22
  br label %463

; <label>:328:                                    ; preds = %250, %205
  %329 = phi i32 [ %252, %250 ], [ 0, %205 ]
  %330 = phi i32 [ %251, %250 ], [ %206, %205 ]
  %331 = fcmp ueq float %31, %19
  br i1 %331, label %470, label %374

; <label>:332:                                    ; preds = %250, %208
  %333 = phi i32 [ %252, %250 ], [ 0, %208 ]
  %334 = phi i32 [ %251, %250 ], [ %209, %208 ]
  %335 = fcmp ule float %31, %19
  br i1 %335, label %374, label %475

; <label>:336:                                    ; preds = %250, %211
  %337 = phi i32 [ %252, %250 ], [ 0, %211 ]
  %338 = phi i32 [ %251, %250 ], [ %212, %211 ]
  %339 = fcmp ult float %31, %19
  br i1 %339, label %374, label %480

; <label>:340:                                    ; preds = %250, %214
  %341 = phi i32 [ %252, %250 ], [ 0, %214 ]
  %342 = phi i32 [ %251, %250 ], [ %215, %214 ]
  %343 = fcmp ueq float %31, %19
  br i1 %343, label %374, label %485

; <label>:344:                                    ; preds = %250
  br i1 %253, label %377, label %374

; <label>:345:                                    ; preds = %250, %218
  %346 = phi i32 [ %252, %250 ], [ 0, %218 ]
  %347 = phi i32 [ %251, %250 ], [ %219, %218 ]
  %348 = fcmp ugt float %31, %19
  br i1 %348, label %374, label %491

; <label>:349:                                    ; preds = %250, %221
  %350 = phi i32 [ %252, %250 ], [ 0, %221 ]
  %351 = phi i32 [ %251, %250 ], [ %222, %221 ]
  %352 = fcmp uge float %31, %19
  br i1 %352, label %374, label %496

; <label>:353:                                    ; preds = %250, %224
  %354 = phi i32 [ %252, %250 ], [ 0, %224 ]
  %355 = phi i32 [ %251, %250 ], [ %225, %224 ]
  %356 = fcmp une float %31, %19
  br i1 %356, label %374, label %501

; <label>:357:                                    ; preds = %250, %250
  br i1 %253, label %374, label %385

; <label>:358:                                    ; preds = %250, %233
  %359 = phi i1 [ %234, %233 ], [ %254, %250 ]
  %360 = phi i32 [ 0, %233 ], [ %252, %250 ]
  %361 = phi i32 [ %230, %233 ], [ %251, %250 ]
  %362 = fcmp ole float %31, %19
  %363 = and i1 %362, %359
  br i1 %363, label %374, label %364

; <label>:364:                                    ; preds = %358
  %365 = fcmp ord float %34, %22
  br label %507

; <label>:366:                                    ; preds = %250, %240
  %367 = phi i1 [ %241, %240 ], [ %254, %250 ]
  %368 = phi i32 [ 0, %240 ], [ %252, %250 ]
  %369 = phi i32 [ %237, %240 ], [ %251, %250 ]
  %370 = fcmp olt float %31, %19
  %371 = and i1 %370, %367
  br i1 %371, label %374, label %372

; <label>:372:                                    ; preds = %366
  %373 = fcmp ord float %34, %22
  br label %514

; <label>:374:                                    ; preds = %366, %358, %357, %353, %349, %345, %344, %340, %336, %332, %328, %320, %312, %304, %300, %296, %292, %288, %284, %283, %279, %275, %271, %263, %259, %255, %250, %250, %247, %244
  %375 = phi i32 [ %368, %366 ], [ %360, %358 ], [ %252, %357 ], [ %354, %353 ], [ %350, %349 ], [ %346, %345 ], [ %252, %344 ], [ %341, %340 ], [ %337, %336 ], [ %333, %332 ], [ %329, %328 ], [ %322, %320 ], [ %314, %312 ], [ %306, %304 ], [ %301, %300 ], [ %297, %296 ], [ %293, %292 ], [ %289, %288 ], [ %285, %284 ], [ %252, %283 ], [ %280, %279 ], [ %276, %275 ], [ %272, %271 ], [ %265, %263 ], [ %260, %259 ], [ %256, %255 ], [ %252, %250 ], [ %252, %250 ], [ 0, %247 ], [ 0, %244 ]
  %376 = phi i32 [ %369, %366 ], [ %361, %358 ], [ %251, %357 ], [ %355, %353 ], [ %351, %349 ], [ %347, %345 ], [ %251, %344 ], [ %342, %340 ], [ %338, %336 ], [ %334, %332 ], [ %330, %328 ], [ %323, %320 ], [ %315, %312 ], [ %307, %304 ], [ %302, %300 ], [ %298, %296 ], [ %294, %292 ], [ %290, %288 ], [ %286, %284 ], [ %251, %283 ], [ %281, %279 ], [ %277, %275 ], [ %273, %271 ], [ %266, %263 ], [ %261, %259 ], [ %257, %255 ], [ %251, %250 ], [ %251, %250 ], [ %248, %247 ], [ %245, %244 ]
  br label %385

; <label>:377:                                    ; preds = %344, %244
  %378 = phi i32 [ 0, %244 ], [ %252, %344 ]
  %379 = phi i32 [ %245, %244 ], [ %251, %344 ]
  %380 = fcmp uno float %34, %22
  br i1 %380, label %53, label %521

; <label>:381:                                    ; preds = %283, %247
  %382 = phi i32 [ 0, %247 ], [ %252, %283 ]
  %383 = phi i32 [ %248, %247 ], [ %251, %283 ]
  %384 = fcmp uno float %34, %22
  br i1 %384, label %53, label %521

; <label>:385:                                    ; preds = %374, %357, %250, %250
  %386 = phi i32 [ %375, %374 ], [ %252, %357 ], [ %252, %250 ], [ %252, %250 ]
  %387 = phi i32 [ %376, %374 ], [ %251, %357 ], [ %251, %250 ], [ %251, %250 ]
  %388 = phi i32 [ -1, %374 ], [ 0, %357 ], [ 0, %250 ], [ 0, %250 ]
  %389 = fcmp uno float %34, %22
  %390 = xor i1 %389, true
  switch i8 %23, label %137 [
    i8 31, label %521
    i8 1, label %514
    i8 2, label %507
    i8 3, label %506
    i8 4, label %501
    i8 5, label %496
    i8 6, label %491
    i8 7, label %490
    i8 8, label %485
    i8 9, label %480
    i8 10, label %475
    i8 11, label %53
    i8 12, label %470
    i8 13, label %463
    i8 14, label %456
    i8 15, label %521
    i8 16, label %449
    i8 17, label %444
    i8 18, label %439
    i8 19, label %506
    i8 20, label %434
    i8 21, label %429
    i8 22, label %424
    i8 23, label %423
    i8 24, label %418
    i8 25, label %413
    i8 26, label %408
    i8 27, label %53
    i8 28, label %401
    i8 29, label %396
    i8 30, label %391
  ]

; <label>:391:                                    ; preds = %385, %255
  %392 = phi i32 [ %388, %385 ], [ 0, %255 ]
  %393 = phi i32 [ %387, %385 ], [ %257, %255 ]
  %394 = phi i32 [ %386, %385 ], [ %256, %255 ]
  %395 = fcmp ogt float %34, %22
  br i1 %395, label %521, label %53

; <label>:396:                                    ; preds = %385, %259
  %397 = phi i32 [ %388, %385 ], [ 0, %259 ]
  %398 = phi i32 [ %387, %385 ], [ %261, %259 ]
  %399 = phi i32 [ %386, %385 ], [ %260, %259 ]
  %400 = fcmp ult float %34, %22
  br i1 %400, label %53, label %521

; <label>:401:                                    ; preds = %385, %269
  %402 = phi i1 [ %270, %269 ], [ %390, %385 ]
  %403 = phi i32 [ 0, %269 ], [ %388, %385 ]
  %404 = phi i32 [ %266, %269 ], [ %387, %385 ]
  %405 = phi i32 [ %265, %269 ], [ %386, %385 ]
  %406 = fcmp une float %34, %22
  %407 = and i1 %406, %402
  br i1 %407, label %521, label %53

; <label>:408:                                    ; preds = %385, %271
  %409 = phi i32 [ %388, %385 ], [ 0, %271 ]
  %410 = phi i32 [ %387, %385 ], [ %273, %271 ]
  %411 = phi i32 [ %386, %385 ], [ %272, %271 ]
  %412 = fcmp ule float %34, %22
  br i1 %412, label %521, label %53

; <label>:413:                                    ; preds = %385, %275
  %414 = phi i32 [ %388, %385 ], [ 0, %275 ]
  %415 = phi i32 [ %387, %385 ], [ %277, %275 ]
  %416 = phi i32 [ %386, %385 ], [ %276, %275 ]
  %417 = fcmp ult float %34, %22
  br i1 %417, label %521, label %53

; <label>:418:                                    ; preds = %385, %279
  %419 = phi i32 [ %388, %385 ], [ 0, %279 ]
  %420 = phi i32 [ %387, %385 ], [ %281, %279 ]
  %421 = phi i32 [ %386, %385 ], [ %280, %279 ]
  %422 = fcmp ueq float %34, %22
  br i1 %422, label %521, label %53

; <label>:423:                                    ; preds = %385
  br i1 %389, label %53, label %521

; <label>:424:                                    ; preds = %385, %284
  %425 = phi i32 [ %388, %385 ], [ 0, %284 ]
  %426 = phi i32 [ %387, %385 ], [ %286, %284 ]
  %427 = phi i32 [ %386, %385 ], [ %285, %284 ]
  %428 = fcmp ugt float %34, %22
  br i1 %428, label %521, label %53

; <label>:429:                                    ; preds = %385, %288
  %430 = phi i32 [ %388, %385 ], [ 0, %288 ]
  %431 = phi i32 [ %387, %385 ], [ %290, %288 ]
  %432 = phi i32 [ %386, %385 ], [ %289, %288 ]
  %433 = fcmp uge float %34, %22
  br i1 %433, label %521, label %53

; <label>:434:                                    ; preds = %385, %292
  %435 = phi i32 [ %388, %385 ], [ 0, %292 ]
  %436 = phi i32 [ %387, %385 ], [ %294, %292 ]
  %437 = phi i32 [ %386, %385 ], [ %293, %292 ]
  %438 = fcmp une float %34, %22
  br i1 %438, label %521, label %53

; <label>:439:                                    ; preds = %385, %296
  %440 = phi i32 [ %388, %385 ], [ 0, %296 ]
  %441 = phi i32 [ %387, %385 ], [ %298, %296 ]
  %442 = phi i32 [ %386, %385 ], [ %297, %296 ]
  %443 = fcmp ugt float %34, %22
  br i1 %443, label %53, label %521

; <label>:444:                                    ; preds = %385, %300
  %445 = phi i32 [ %388, %385 ], [ 0, %300 ]
  %446 = phi i32 [ %387, %385 ], [ %302, %300 ]
  %447 = phi i32 [ %386, %385 ], [ %301, %300 ]
  %448 = fcmp olt float %34, %22
  br i1 %448, label %521, label %53

; <label>:449:                                    ; preds = %385, %310
  %450 = phi i1 [ %311, %310 ], [ %390, %385 ]
  %451 = phi i32 [ 0, %310 ], [ %388, %385 ]
  %452 = phi i32 [ %307, %310 ], [ %387, %385 ]
  %453 = phi i32 [ %306, %310 ], [ %386, %385 ]
  %454 = fcmp oeq float %34, %22
  %455 = and i1 %454, %450
  br i1 %455, label %521, label %53

; <label>:456:                                    ; preds = %385, %318
  %457 = phi i1 [ %319, %318 ], [ %390, %385 ]
  %458 = phi i32 [ 0, %318 ], [ %388, %385 ]
  %459 = phi i32 [ %315, %318 ], [ %387, %385 ]
  %460 = phi i32 [ %314, %318 ], [ %386, %385 ]
  %461 = fcmp ogt float %34, %22
  %462 = and i1 %461, %457
  br i1 %462, label %521, label %53

; <label>:463:                                    ; preds = %385, %326
  %464 = phi i1 [ %327, %326 ], [ %390, %385 ]
  %465 = phi i32 [ 0, %326 ], [ %388, %385 ]
  %466 = phi i32 [ %323, %326 ], [ %387, %385 ]
  %467 = phi i32 [ %322, %326 ], [ %386, %385 ]
  %468 = fcmp oge float %34, %22
  %469 = and i1 %468, %464
  br i1 %469, label %521, label %53

; <label>:470:                                    ; preds = %385, %328
  %471 = phi i32 [ %388, %385 ], [ 0, %328 ]
  %472 = phi i32 [ %387, %385 ], [ %330, %328 ]
  %473 = phi i32 [ %386, %385 ], [ %329, %328 ]
  %474 = fcmp ueq float %34, %22
  br i1 %474, label %53, label %521

; <label>:475:                                    ; preds = %385, %332
  %476 = phi i32 [ %388, %385 ], [ 0, %332 ]
  %477 = phi i32 [ %387, %385 ], [ %334, %332 ]
  %478 = phi i32 [ %386, %385 ], [ %333, %332 ]
  %479 = fcmp ule float %34, %22
  br i1 %479, label %521, label %53

; <label>:480:                                    ; preds = %385, %336
  %481 = phi i32 [ %388, %385 ], [ 0, %336 ]
  %482 = phi i32 [ %387, %385 ], [ %338, %336 ]
  %483 = phi i32 [ %386, %385 ], [ %337, %336 ]
  %484 = fcmp ult float %34, %22
  br i1 %484, label %521, label %53

; <label>:485:                                    ; preds = %385, %340
  %486 = phi i32 [ %388, %385 ], [ 0, %340 ]
  %487 = phi i32 [ %387, %385 ], [ %342, %340 ]
  %488 = phi i32 [ %386, %385 ], [ %341, %340 ]
  %489 = fcmp ueq float %34, %22
  br i1 %489, label %521, label %53

; <label>:490:                                    ; preds = %385
  br i1 %389, label %53, label %521

; <label>:491:                                    ; preds = %385, %345
  %492 = phi i32 [ %388, %385 ], [ 0, %345 ]
  %493 = phi i32 [ %387, %385 ], [ %347, %345 ]
  %494 = phi i32 [ %386, %385 ], [ %346, %345 ]
  %495 = fcmp ugt float %34, %22
  br i1 %495, label %521, label %53

; <label>:496:                                    ; preds = %385, %349
  %497 = phi i32 [ %388, %385 ], [ 0, %349 ]
  %498 = phi i32 [ %387, %385 ], [ %351, %349 ]
  %499 = phi i32 [ %386, %385 ], [ %350, %349 ]
  %500 = fcmp uge float %34, %22
  br i1 %500, label %521, label %53

; <label>:501:                                    ; preds = %385, %353
  %502 = phi i32 [ %388, %385 ], [ 0, %353 ]
  %503 = phi i32 [ %387, %385 ], [ %355, %353 ]
  %504 = phi i32 [ %386, %385 ], [ %354, %353 ]
  %505 = fcmp une float %34, %22
  br i1 %505, label %521, label %53

; <label>:506:                                    ; preds = %385, %385
  br i1 %389, label %521, label %53

; <label>:507:                                    ; preds = %385, %364
  %508 = phi i1 [ %365, %364 ], [ %390, %385 ]
  %509 = phi i32 [ 0, %364 ], [ %388, %385 ]
  %510 = phi i32 [ %361, %364 ], [ %387, %385 ]
  %511 = phi i32 [ %360, %364 ], [ %386, %385 ]
  %512 = fcmp ole float %34, %22
  %513 = and i1 %512, %508
  br i1 %513, label %521, label %53

; <label>:514:                                    ; preds = %385, %372
  %515 = phi i1 [ %373, %372 ], [ %390, %385 ]
  %516 = phi i32 [ 0, %372 ], [ %388, %385 ]
  %517 = phi i32 [ %369, %372 ], [ %387, %385 ]
  %518 = phi i32 [ %368, %372 ], [ %386, %385 ]
  %519 = fcmp olt float %34, %22
  %520 = and i1 %519, %515
  br i1 %520, label %521, label %53

; <label>:521:                                    ; preds = %514, %507, %506, %501, %496, %491, %490, %485, %480, %475, %470, %463, %456, %449, %444, %439, %434, %429, %424, %423, %418, %413, %408, %401, %396, %391, %385, %385, %381, %377
  %522 = phi i32 [ %516, %514 ], [ %509, %507 ], [ %388, %506 ], [ %502, %501 ], [ %497, %496 ], [ %492, %491 ], [ %388, %490 ], [ %486, %485 ], [ %481, %480 ], [ %476, %475 ], [ %471, %470 ], [ %465, %463 ], [ %458, %456 ], [ %451, %449 ], [ %445, %444 ], [ %440, %439 ], [ %435, %434 ], [ %430, %429 ], [ %425, %424 ], [ %388, %423 ], [ %419, %418 ], [ %414, %413 ], [ %409, %408 ], [ %403, %401 ], [ %397, %396 ], [ %392, %391 ], [ %388, %385 ], [ %388, %385 ], [ 0, %381 ], [ 0, %377 ]
  %523 = phi i32 [ %517, %514 ], [ %510, %507 ], [ %387, %506 ], [ %503, %501 ], [ %498, %496 ], [ %493, %491 ], [ %387, %490 ], [ %487, %485 ], [ %482, %480 ], [ %477, %475 ], [ %472, %470 ], [ %466, %463 ], [ %459, %456 ], [ %452, %449 ], [ %446, %444 ], [ %441, %439 ], [ %436, %434 ], [ %431, %429 ], [ %426, %424 ], [ %387, %423 ], [ %420, %418 ], [ %415, %413 ], [ %410, %408 ], [ %404, %401 ], [ %398, %396 ], [ %393, %391 ], [ %387, %385 ], [ %387, %385 ], [ %383, %381 ], [ %379, %377 ]
  %524 = phi i32 [ %518, %514 ], [ %511, %507 ], [ %386, %506 ], [ %504, %501 ], [ %499, %496 ], [ %494, %491 ], [ %386, %490 ], [ %488, %485 ], [ %483, %480 ], [ %478, %475 ], [ %473, %470 ], [ %467, %463 ], [ %460, %456 ], [ %453, %449 ], [ %447, %444 ], [ %442, %439 ], [ %437, %434 ], [ %432, %429 ], [ %427, %424 ], [ %386, %423 ], [ %421, %418 ], [ %416, %413 ], [ %411, %408 ], [ %405, %401 ], [ %399, %396 ], [ %394, %391 ], [ %386, %385 ], [ %386, %385 ], [ %382, %381 ], [ %378, %377 ]
  br label %53
}

define %struct.Memory* @routine_vcmpps_xmm_xmm_m128_imm8(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #19 {
block_530:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %12 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %11, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %12 to %union.vec128_t*
  %13 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %14 = bitcast %union.vec128_t* %XMM2 to i8*
  %15 = load i64, i64* %RBP
  %16 = sub i64 %15, 4
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 6
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5CMPPSI3VnWI8vec256_tE2VnI8vec128_tE3MVnIS5_EEEP6MemorySA_R5StateT_T0_T1_2InIhE(%struct.Memory* %2, %struct.State* %0, i8* %13, i8* %14, i64 %16, i64 10)
  ret %struct.Memory* %19
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
  %call = call %struct.Memory* @routine_vcmpps_xmm_xmm_m128_imm8(%struct.State* %state, i64 0, %struct.Memory* %mem)
  ret i32 0
}