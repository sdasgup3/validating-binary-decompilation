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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5CMPPDI3VnWI8vec256_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_2InIhE(%struct.Memory*, %struct.State* dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i64, i64) #0 {
  %7 = alloca %struct.float64v4_t, align 8
  %8 = bitcast %struct.float64v4_t* %7 to i8*
  call void @my.lifetime.start(i64 32, i8* nonnull %8) #22
  call void @my.memcpy.p0i8.p0i8.i64(i8* nonnull %8, i8* %3, i64 32, i32 1, i1 false) #22
  %9 = inttoptr i64 %4 to double*
  %10 = load double, double* %9
  %11 = add i64 %4, 8
  %12 = inttoptr i64 %11 to double*
  %13 = load double, double* %12
  %14 = add i64 %4, 16
  %15 = inttoptr i64 %14 to double*
  %16 = load double, double* %15
  %17 = add i64 %4, 24
  %18 = inttoptr i64 %17 to double*
  %19 = load double, double* %18
  %20 = trunc i64 %5 to i8
  %21 = icmp ugt i8 %20, 31
  br i1 %21, label %44, label %22

; <label>:22:                                     ; preds = %6
  %23 = icmp eq i8 %20, 0
  %24 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 0
  %25 = load double, double* %24, align 8
  br i1 %23, label %29, label %26

; <label>:26:                                     ; preds = %22
  %27 = fcmp uno double %25, %10
  %28 = xor i1 %27, true
  switch i8 %20, label %197 [
    i8 31, label %199
    i8 1, label %60
    i8 2, label %67
    i8 3, label %198
    i8 4, label %74
    i8 5, label %79
    i8 6, label %84
    i8 7, label %89
    i8 8, label %94
    i8 9, label %99
    i8 10, label %104
    i8 11, label %200
    i8 12, label %109
    i8 13, label %114
    i8 14, label %121
    i8 15, label %199
    i8 16, label %128
    i8 17, label %135
    i8 18, label %140
    i8 19, label %198
    i8 20, label %145
    i8 21, label %150
    i8 22, label %155
    i8 23, label %160
    i8 24, label %165
    i8 25, label %170
    i8 26, label %175
    i8 27, label %200
    i8 28, label %180
    i8 29, label %187
    i8 30, label %192
  ]

; <label>:29:                                     ; preds = %22
  %30 = fcmp oeq double %25, %10
  %31 = sext i1 %30 to i64
  %32 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 1
  %33 = load double, double* %32, align 8
  %34 = fcmp oeq double %33, %13
  %35 = sext i1 %34 to i64
  %36 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 2
  %37 = load double, double* %36, align 8
  %38 = fcmp oeq double %37, %16
  %39 = sext i1 %38 to i64
  %40 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 3
  %41 = load double, double* %40, align 8
  %42 = fcmp oeq double %41, %19
  %43 = sext i1 %42 to i64
  br label %48

; <label>:44:                                     ; preds = %6
  %45 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %1, i64 %46, %struct.Memory* %0) #21
  br label %206

; <label>:48:                                     ; preds = %790, %782, %774, %773, %767, %761, %755, %754, %748, %742, %736, %730, %722, %714, %706, %700, %694, %688, %682, %676, %675, %669, %663, %657, %649, %643, %637, %629, %629, %623, %617, %29
  %49 = phi i64 [ %43, %29 ], [ -1, %790 ], [ 0, %773 ], [ 0, %637 ], [ 0, %643 ], [ 0, %649 ], [ 0, %657 ], [ 0, %663 ], [ 0, %669 ], [ 0, %675 ], [ 0, %676 ], [ 0, %682 ], [ 0, %688 ], [ 0, %694 ], [ 0, %700 ], [ 0, %706 ], [ 0, %714 ], [ 0, %722 ], [ 0, %730 ], [ 0, %736 ], [ 0, %742 ], [ 0, %748 ], [ 0, %754 ], [ 0, %755 ], [ 0, %761 ], [ 0, %767 ], [ 0, %774 ], [ 0, %782 ], [ 0, %629 ], [ 0, %629 ], [ 0, %623 ], [ 0, %617 ]
  %50 = phi i64 [ %39, %29 ], [ %791, %790 ], [ %632, %773 ], [ %639, %637 ], [ %645, %643 ], [ %652, %649 ], [ %659, %657 ], [ %665, %663 ], [ %671, %669 ], [ %632, %675 ], [ %678, %676 ], [ %684, %682 ], [ %690, %688 ], [ %696, %694 ], [ %702, %700 ], [ %709, %706 ], [ %717, %714 ], [ %725, %722 ], [ %732, %730 ], [ %738, %736 ], [ %744, %742 ], [ %750, %748 ], [ %632, %754 ], [ %757, %755 ], [ %763, %761 ], [ %769, %767 ], [ %777, %774 ], [ %785, %782 ], [ %632, %629 ], [ %632, %629 ], [ 0, %623 ], [ 0, %617 ]
  %51 = phi i64 [ %35, %29 ], [ %793, %790 ], [ %630, %773 ], [ %641, %637 ], [ %647, %643 ], [ %654, %649 ], [ %661, %657 ], [ %667, %663 ], [ %673, %669 ], [ %630, %675 ], [ %680, %676 ], [ %686, %682 ], [ %692, %688 ], [ %698, %694 ], [ %704, %700 ], [ %711, %706 ], [ %719, %714 ], [ %727, %722 ], [ %734, %730 ], [ %740, %736 ], [ %746, %742 ], [ %752, %748 ], [ %630, %754 ], [ %759, %755 ], [ %765, %761 ], [ %771, %767 ], [ %779, %774 ], [ %787, %782 ], [ %630, %629 ], [ %630, %629 ], [ %624, %623 ], [ %618, %617 ]
  %52 = phi i64 [ %31, %29 ], [ %792, %790 ], [ %631, %773 ], [ %640, %637 ], [ %646, %643 ], [ %653, %649 ], [ %660, %657 ], [ %666, %663 ], [ %672, %669 ], [ %631, %675 ], [ %679, %676 ], [ %685, %682 ], [ %691, %688 ], [ %697, %694 ], [ %703, %700 ], [ %710, %706 ], [ %718, %714 ], [ %726, %722 ], [ %733, %730 ], [ %739, %736 ], [ %745, %742 ], [ %751, %748 ], [ %631, %754 ], [ %758, %755 ], [ %764, %761 ], [ %770, %767 ], [ %778, %774 ], [ %786, %782 ], [ %631, %629 ], [ %631, %629 ], [ %625, %623 ], [ %619, %617 ]
  %53 = bitcast i8* %2 to i64*
  store i64 %52, i64* %53, align 1
  %54 = getelementptr inbounds i8, i8* %2, i64 8
  %55 = bitcast i8* %54 to i64*
  store i64 %51, i64* %55, align 1
  %56 = getelementptr inbounds i8, i8* %2, i64 16
  %57 = bitcast i8* %56 to i64*
  store i64 %50, i64* %57, align 1
  %58 = getelementptr inbounds i8, i8* %2, i64 24
  %59 = bitcast i8* %58 to i64*
  store i64 %49, i64* %59, align 1
  br label %206

; <label>:60:                                     ; preds = %26
  %61 = fcmp olt double %25, %10
  %62 = and i1 %61, %28
  br i1 %62, label %199, label %63

; <label>:63:                                     ; preds = %60
  %64 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 1
  %65 = load double, double* %64, align 8
  %66 = fcmp ord double %65, %13
  br label %380

; <label>:67:                                     ; preds = %26
  %68 = fcmp ole double %25, %10
  %69 = and i1 %68, %28
  br i1 %69, label %199, label %70

; <label>:70:                                     ; preds = %67
  %71 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 1
  %72 = load double, double* %71, align 8
  %73 = fcmp ord double %72, %13
  br label %370

; <label>:74:                                     ; preds = %26
  %75 = fcmp une double %25, %10
  br i1 %75, label %199, label %76

; <label>:76:                                     ; preds = %74
  %77 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 1
  %78 = load double, double* %77, align 8
  br label %362

; <label>:79:                                     ; preds = %26
  %80 = fcmp uge double %25, %10
  br i1 %80, label %199, label %81

; <label>:81:                                     ; preds = %79
  %82 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 1
  %83 = load double, double* %82, align 8
  br label %355

; <label>:84:                                     ; preds = %26
  %85 = fcmp ugt double %25, %10
  br i1 %85, label %199, label %86

; <label>:86:                                     ; preds = %84
  %87 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 1
  %88 = load double, double* %87, align 8
  br label %348

; <label>:89:                                     ; preds = %26
  br i1 %27, label %90, label %199

; <label>:90:                                     ; preds = %89
  %91 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 1
  %92 = load double, double* %91, align 8
  %93 = fcmp uno double %92, %13
  br i1 %93, label %392, label %390

; <label>:94:                                     ; preds = %26
  %95 = fcmp ueq double %25, %10
  br i1 %95, label %199, label %96

; <label>:96:                                     ; preds = %94
  %97 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 1
  %98 = load double, double* %97, align 8
  br label %340

; <label>:99:                                     ; preds = %26
  %100 = fcmp ult double %25, %10
  br i1 %100, label %199, label %101

; <label>:101:                                    ; preds = %99
  %102 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 1
  %103 = load double, double* %102, align 8
  br label %333

; <label>:104:                                    ; preds = %26
  %105 = fcmp ule double %25, %10
  br i1 %105, label %199, label %106

; <label>:106:                                    ; preds = %104
  %107 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 1
  %108 = load double, double* %107, align 8
  br label %326

; <label>:109:                                    ; preds = %26
  %110 = fcmp ueq double %25, %10
  br i1 %110, label %111, label %199

; <label>:111:                                    ; preds = %109
  %112 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 1
  %113 = load double, double* %112, align 8
  br label %319

; <label>:114:                                    ; preds = %26
  %115 = fcmp oge double %25, %10
  %116 = and i1 %115, %28
  br i1 %116, label %199, label %117

; <label>:117:                                    ; preds = %114
  %118 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 1
  %119 = load double, double* %118, align 8
  %120 = fcmp ord double %119, %13
  br label %309

; <label>:121:                                    ; preds = %26
  %122 = fcmp ogt double %25, %10
  %123 = and i1 %122, %28
  br i1 %123, label %199, label %124

; <label>:124:                                    ; preds = %121
  %125 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 1
  %126 = load double, double* %125, align 8
  %127 = fcmp ord double %126, %13
  br label %299

; <label>:128:                                    ; preds = %26
  %129 = fcmp oeq double %25, %10
  %130 = and i1 %129, %28
  br i1 %130, label %199, label %131

; <label>:131:                                    ; preds = %128
  %132 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 1
  %133 = load double, double* %132, align 8
  %134 = fcmp ord double %133, %13
  br label %289

; <label>:135:                                    ; preds = %26
  %136 = fcmp olt double %25, %10
  br i1 %136, label %199, label %137

; <label>:137:                                    ; preds = %135
  %138 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 1
  %139 = load double, double* %138, align 8
  br label %282

; <label>:140:                                    ; preds = %26
  %141 = fcmp ugt double %25, %10
  br i1 %141, label %142, label %199

; <label>:142:                                    ; preds = %140
  %143 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 1
  %144 = load double, double* %143, align 8
  br label %275

; <label>:145:                                    ; preds = %26
  %146 = fcmp une double %25, %10
  br i1 %146, label %199, label %147

; <label>:147:                                    ; preds = %145
  %148 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 1
  %149 = load double, double* %148, align 8
  br label %268

; <label>:150:                                    ; preds = %26
  %151 = fcmp uge double %25, %10
  br i1 %151, label %199, label %152

; <label>:152:                                    ; preds = %150
  %153 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 1
  %154 = load double, double* %153, align 8
  br label %261

; <label>:155:                                    ; preds = %26
  %156 = fcmp ugt double %25, %10
  br i1 %156, label %199, label %157

; <label>:157:                                    ; preds = %155
  %158 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 1
  %159 = load double, double* %158, align 8
  br label %254

; <label>:160:                                    ; preds = %26
  br i1 %27, label %161, label %199

; <label>:161:                                    ; preds = %160
  %162 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 1
  %163 = load double, double* %162, align 8
  %164 = fcmp uno double %163, %13
  br i1 %164, label %397, label %390

; <label>:165:                                    ; preds = %26
  %166 = fcmp ueq double %25, %10
  br i1 %166, label %199, label %167

; <label>:167:                                    ; preds = %165
  %168 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 1
  %169 = load double, double* %168, align 8
  br label %246

; <label>:170:                                    ; preds = %26
  %171 = fcmp ult double %25, %10
  br i1 %171, label %199, label %172

; <label>:172:                                    ; preds = %170
  %173 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 1
  %174 = load double, double* %173, align 8
  br label %239

; <label>:175:                                    ; preds = %26
  %176 = fcmp ule double %25, %10
  br i1 %176, label %199, label %177

; <label>:177:                                    ; preds = %175
  %178 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 1
  %179 = load double, double* %178, align 8
  br label %232

; <label>:180:                                    ; preds = %26
  %181 = fcmp une double %25, %10
  %182 = and i1 %181, %28
  br i1 %182, label %199, label %183

; <label>:183:                                    ; preds = %180
  %184 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 1
  %185 = load double, double* %184, align 8
  %186 = fcmp ord double %185, %13
  br label %222

; <label>:187:                                    ; preds = %26
  %188 = fcmp ult double %25, %10
  br i1 %188, label %189, label %199

; <label>:189:                                    ; preds = %187
  %190 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 1
  %191 = load double, double* %190, align 8
  br label %215

; <label>:192:                                    ; preds = %26
  %193 = fcmp ogt double %25, %10
  br i1 %193, label %199, label %194

; <label>:194:                                    ; preds = %192
  %195 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 1
  %196 = load double, double* %195, align 8
  br label %208

; <label>:197:                                    ; preds = %629, %402, %200, %26
  unreachable

; <label>:198:                                    ; preds = %26, %26
  br i1 %27, label %199, label %200

; <label>:199:                                    ; preds = %198, %192, %187, %180, %175, %170, %165, %160, %155, %150, %145, %140, %135, %128, %121, %114, %109, %104, %99, %94, %89, %84, %79, %74, %67, %60, %26, %26
  br label %200

; <label>:200:                                    ; preds = %199, %198, %26, %26
  %201 = phi i64 [ -1, %199 ], [ 0, %198 ], [ 0, %26 ], [ 0, %26 ]
  %202 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 1
  %203 = load double, double* %202, align 8
  %204 = fcmp uno double %203, %13
  %205 = xor i1 %204, true
  switch i8 %20, label %197 [
    i8 31, label %390
    i8 1, label %380
    i8 2, label %370
    i8 3, label %369
    i8 4, label %362
    i8 5, label %355
    i8 6, label %348
    i8 7, label %347
    i8 8, label %340
    i8 9, label %333
    i8 10, label %326
    i8 11, label %402
    i8 12, label %319
    i8 13, label %309
    i8 14, label %299
    i8 15, label %390
    i8 16, label %289
    i8 17, label %282
    i8 18, label %275
    i8 19, label %369
    i8 20, label %268
    i8 21, label %261
    i8 22, label %254
    i8 23, label %253
    i8 24, label %246
    i8 25, label %239
    i8 26, label %232
    i8 27, label %402
    i8 28, label %222
    i8 29, label %215
    i8 30, label %208
  ]

; <label>:206:                                    ; preds = %48, %44
  %207 = phi %struct.Memory* [ %47, %44 ], [ %0, %48 ]
  call void @my.lifetime.end(i64 32, i8* nonnull %8) #22
  ret %struct.Memory* %207

; <label>:208:                                    ; preds = %200, %194
  %209 = phi double [ %196, %194 ], [ %203, %200 ]
  %210 = phi i64 [ 0, %194 ], [ %201, %200 ]
  %211 = fcmp ogt double %209, %13
  br i1 %211, label %390, label %212

; <label>:212:                                    ; preds = %208
  %213 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 2
  %214 = load double, double* %213, align 8
  br label %409

; <label>:215:                                    ; preds = %200, %189
  %216 = phi double [ %191, %189 ], [ %203, %200 ]
  %217 = phi i64 [ 0, %189 ], [ %201, %200 ]
  %218 = fcmp ult double %216, %13
  br i1 %218, label %219, label %390

; <label>:219:                                    ; preds = %215
  %220 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 2
  %221 = load double, double* %220, align 8
  br label %417

; <label>:222:                                    ; preds = %200, %183
  %223 = phi i1 [ %186, %183 ], [ %205, %200 ]
  %224 = phi double [ %185, %183 ], [ %203, %200 ]
  %225 = phi i64 [ 0, %183 ], [ %201, %200 ]
  %226 = fcmp une double %224, %13
  %227 = and i1 %226, %223
  br i1 %227, label %390, label %228

; <label>:228:                                    ; preds = %222
  %229 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 2
  %230 = load double, double* %229, align 8
  %231 = fcmp ord double %230, %16
  br label %425

; <label>:232:                                    ; preds = %200, %177
  %233 = phi double [ %179, %177 ], [ %203, %200 ]
  %234 = phi i64 [ 0, %177 ], [ %201, %200 ]
  %235 = fcmp ule double %233, %13
  br i1 %235, label %390, label %236

; <label>:236:                                    ; preds = %232
  %237 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 2
  %238 = load double, double* %237, align 8
  br label %436

; <label>:239:                                    ; preds = %200, %172
  %240 = phi double [ %174, %172 ], [ %203, %200 ]
  %241 = phi i64 [ 0, %172 ], [ %201, %200 ]
  %242 = fcmp ult double %240, %13
  br i1 %242, label %390, label %243

; <label>:243:                                    ; preds = %239
  %244 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 2
  %245 = load double, double* %244, align 8
  br label %444

; <label>:246:                                    ; preds = %200, %167
  %247 = phi double [ %169, %167 ], [ %203, %200 ]
  %248 = phi i64 [ 0, %167 ], [ %201, %200 ]
  %249 = fcmp ueq double %247, %13
  br i1 %249, label %390, label %250

; <label>:250:                                    ; preds = %246
  %251 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 2
  %252 = load double, double* %251, align 8
  br label %452

; <label>:253:                                    ; preds = %200
  br i1 %204, label %397, label %390

; <label>:254:                                    ; preds = %200, %157
  %255 = phi double [ %159, %157 ], [ %203, %200 ]
  %256 = phi i64 [ 0, %157 ], [ %201, %200 ]
  %257 = fcmp ugt double %255, %13
  br i1 %257, label %390, label %258

; <label>:258:                                    ; preds = %254
  %259 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 2
  %260 = load double, double* %259, align 8
  br label %461

; <label>:261:                                    ; preds = %200, %152
  %262 = phi double [ %154, %152 ], [ %203, %200 ]
  %263 = phi i64 [ 0, %152 ], [ %201, %200 ]
  %264 = fcmp uge double %262, %13
  br i1 %264, label %390, label %265

; <label>:265:                                    ; preds = %261
  %266 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 2
  %267 = load double, double* %266, align 8
  br label %469

; <label>:268:                                    ; preds = %200, %147
  %269 = phi double [ %149, %147 ], [ %203, %200 ]
  %270 = phi i64 [ 0, %147 ], [ %201, %200 ]
  %271 = fcmp une double %269, %13
  br i1 %271, label %390, label %272

; <label>:272:                                    ; preds = %268
  %273 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 2
  %274 = load double, double* %273, align 8
  br label %477

; <label>:275:                                    ; preds = %200, %142
  %276 = phi double [ %144, %142 ], [ %203, %200 ]
  %277 = phi i64 [ 0, %142 ], [ %201, %200 ]
  %278 = fcmp ugt double %276, %13
  br i1 %278, label %279, label %390

; <label>:279:                                    ; preds = %275
  %280 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 2
  %281 = load double, double* %280, align 8
  br label %485

; <label>:282:                                    ; preds = %200, %137
  %283 = phi double [ %139, %137 ], [ %203, %200 ]
  %284 = phi i64 [ 0, %137 ], [ %201, %200 ]
  %285 = fcmp olt double %283, %13
  br i1 %285, label %390, label %286

; <label>:286:                                    ; preds = %282
  %287 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 2
  %288 = load double, double* %287, align 8
  br label %493

; <label>:289:                                    ; preds = %200, %131
  %290 = phi i1 [ %134, %131 ], [ %205, %200 ]
  %291 = phi double [ %133, %131 ], [ %203, %200 ]
  %292 = phi i64 [ 0, %131 ], [ %201, %200 ]
  %293 = fcmp oeq double %291, %13
  %294 = and i1 %293, %290
  br i1 %294, label %390, label %295

; <label>:295:                                    ; preds = %289
  %296 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 2
  %297 = load double, double* %296, align 8
  %298 = fcmp ord double %297, %16
  br label %501

; <label>:299:                                    ; preds = %200, %124
  %300 = phi i1 [ %127, %124 ], [ %205, %200 ]
  %301 = phi double [ %126, %124 ], [ %203, %200 ]
  %302 = phi i64 [ 0, %124 ], [ %201, %200 ]
  %303 = fcmp ogt double %301, %13
  %304 = and i1 %303, %300
  br i1 %304, label %390, label %305

; <label>:305:                                    ; preds = %299
  %306 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 2
  %307 = load double, double* %306, align 8
  %308 = fcmp ord double %307, %16
  br label %512

; <label>:309:                                    ; preds = %200, %117
  %310 = phi i1 [ %120, %117 ], [ %205, %200 ]
  %311 = phi double [ %119, %117 ], [ %203, %200 ]
  %312 = phi i64 [ 0, %117 ], [ %201, %200 ]
  %313 = fcmp oge double %311, %13
  %314 = and i1 %313, %310
  br i1 %314, label %390, label %315

; <label>:315:                                    ; preds = %309
  %316 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 2
  %317 = load double, double* %316, align 8
  %318 = fcmp ord double %317, %16
  br label %523

; <label>:319:                                    ; preds = %200, %111
  %320 = phi double [ %113, %111 ], [ %203, %200 ]
  %321 = phi i64 [ 0, %111 ], [ %201, %200 ]
  %322 = fcmp ueq double %320, %13
  br i1 %322, label %323, label %390

; <label>:323:                                    ; preds = %319
  %324 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 2
  %325 = load double, double* %324, align 8
  br label %534

; <label>:326:                                    ; preds = %200, %106
  %327 = phi double [ %108, %106 ], [ %203, %200 ]
  %328 = phi i64 [ 0, %106 ], [ %201, %200 ]
  %329 = fcmp ule double %327, %13
  br i1 %329, label %390, label %330

; <label>:330:                                    ; preds = %326
  %331 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 2
  %332 = load double, double* %331, align 8
  br label %542

; <label>:333:                                    ; preds = %200, %101
  %334 = phi double [ %103, %101 ], [ %203, %200 ]
  %335 = phi i64 [ 0, %101 ], [ %201, %200 ]
  %336 = fcmp ult double %334, %13
  br i1 %336, label %390, label %337

; <label>:337:                                    ; preds = %333
  %338 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 2
  %339 = load double, double* %338, align 8
  br label %550

; <label>:340:                                    ; preds = %200, %96
  %341 = phi double [ %98, %96 ], [ %203, %200 ]
  %342 = phi i64 [ 0, %96 ], [ %201, %200 ]
  %343 = fcmp ueq double %341, %13
  br i1 %343, label %390, label %344

; <label>:344:                                    ; preds = %340
  %345 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 2
  %346 = load double, double* %345, align 8
  br label %558

; <label>:347:                                    ; preds = %200
  br i1 %204, label %392, label %390

; <label>:348:                                    ; preds = %200, %86
  %349 = phi double [ %88, %86 ], [ %203, %200 ]
  %350 = phi i64 [ 0, %86 ], [ %201, %200 ]
  %351 = fcmp ugt double %349, %13
  br i1 %351, label %390, label %352

; <label>:352:                                    ; preds = %348
  %353 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 2
  %354 = load double, double* %353, align 8
  br label %567

; <label>:355:                                    ; preds = %200, %81
  %356 = phi double [ %83, %81 ], [ %203, %200 ]
  %357 = phi i64 [ 0, %81 ], [ %201, %200 ]
  %358 = fcmp uge double %356, %13
  br i1 %358, label %390, label %359

; <label>:359:                                    ; preds = %355
  %360 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 2
  %361 = load double, double* %360, align 8
  br label %575

; <label>:362:                                    ; preds = %200, %76
  %363 = phi double [ %78, %76 ], [ %203, %200 ]
  %364 = phi i64 [ 0, %76 ], [ %201, %200 ]
  %365 = fcmp une double %363, %13
  br i1 %365, label %390, label %366

; <label>:366:                                    ; preds = %362
  %367 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 2
  %368 = load double, double* %367, align 8
  br label %583

; <label>:369:                                    ; preds = %200, %200
  br i1 %204, label %390, label %402

; <label>:370:                                    ; preds = %200, %70
  %371 = phi i1 [ %73, %70 ], [ %205, %200 ]
  %372 = phi double [ %72, %70 ], [ %203, %200 ]
  %373 = phi i64 [ 0, %70 ], [ %201, %200 ]
  %374 = fcmp ole double %372, %13
  %375 = and i1 %374, %371
  br i1 %375, label %390, label %376

; <label>:376:                                    ; preds = %370
  %377 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 2
  %378 = load double, double* %377, align 8
  %379 = fcmp ord double %378, %16
  br label %592

; <label>:380:                                    ; preds = %200, %63
  %381 = phi i1 [ %66, %63 ], [ %205, %200 ]
  %382 = phi double [ %65, %63 ], [ %203, %200 ]
  %383 = phi i64 [ 0, %63 ], [ %201, %200 ]
  %384 = fcmp olt double %382, %13
  %385 = and i1 %384, %381
  br i1 %385, label %390, label %386

; <label>:386:                                    ; preds = %380
  %387 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 2
  %388 = load double, double* %387, align 8
  %389 = fcmp ord double %388, %16
  br label %603

; <label>:390:                                    ; preds = %380, %370, %369, %362, %355, %348, %347, %340, %333, %326, %319, %309, %299, %289, %282, %275, %268, %261, %254, %253, %246, %239, %232, %222, %215, %208, %200, %200, %161, %90
  %391 = phi i64 [ %383, %380 ], [ %373, %370 ], [ %201, %369 ], [ %364, %362 ], [ %357, %355 ], [ %350, %348 ], [ %201, %347 ], [ %342, %340 ], [ %335, %333 ], [ %328, %326 ], [ %321, %319 ], [ %312, %309 ], [ %302, %299 ], [ %292, %289 ], [ %284, %282 ], [ %277, %275 ], [ %270, %268 ], [ %263, %261 ], [ %256, %254 ], [ %201, %253 ], [ %248, %246 ], [ %241, %239 ], [ %234, %232 ], [ %225, %222 ], [ %217, %215 ], [ %210, %208 ], [ %201, %200 ], [ %201, %200 ], [ 0, %161 ], [ 0, %90 ]
  br label %402

; <label>:392:                                    ; preds = %347, %90
  %393 = phi i64 [ 0, %90 ], [ %201, %347 ]
  %394 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 2
  %395 = load double, double* %394, align 8
  %396 = fcmp uno double %395, %16
  br i1 %396, label %617, label %614

; <label>:397:                                    ; preds = %253, %161
  %398 = phi i64 [ 0, %161 ], [ %201, %253 ]
  %399 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 2
  %400 = load double, double* %399, align 8
  %401 = fcmp uno double %400, %16
  br i1 %401, label %623, label %614

; <label>:402:                                    ; preds = %390, %369, %200, %200
  %403 = phi i64 [ %391, %390 ], [ %201, %369 ], [ %201, %200 ], [ %201, %200 ]
  %404 = phi i64 [ -1, %390 ], [ 0, %369 ], [ 0, %200 ], [ 0, %200 ]
  %405 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 2
  %406 = load double, double* %405, align 8
  %407 = fcmp uno double %406, %16
  %408 = xor i1 %407, true
  switch i8 %20, label %197 [
    i8 31, label %614
    i8 1, label %603
    i8 2, label %592
    i8 3, label %591
    i8 4, label %583
    i8 5, label %575
    i8 6, label %567
    i8 7, label %566
    i8 8, label %558
    i8 9, label %550
    i8 10, label %542
    i8 11, label %629
    i8 12, label %534
    i8 13, label %523
    i8 14, label %512
    i8 15, label %614
    i8 16, label %501
    i8 17, label %493
    i8 18, label %485
    i8 19, label %591
    i8 20, label %477
    i8 21, label %469
    i8 22, label %461
    i8 23, label %460
    i8 24, label %452
    i8 25, label %444
    i8 26, label %436
    i8 27, label %629
    i8 28, label %425
    i8 29, label %417
    i8 30, label %409
  ]

; <label>:409:                                    ; preds = %402, %212
  %410 = phi double [ %214, %212 ], [ %406, %402 ]
  %411 = phi i64 [ 0, %212 ], [ %404, %402 ]
  %412 = phi i64 [ %210, %212 ], [ %403, %402 ]
  %413 = fcmp ogt double %410, %16
  br i1 %413, label %614, label %414

; <label>:414:                                    ; preds = %409
  %415 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 3
  %416 = load double, double* %415, align 8
  br label %637

; <label>:417:                                    ; preds = %402, %219
  %418 = phi double [ %221, %219 ], [ %406, %402 ]
  %419 = phi i64 [ 0, %219 ], [ %404, %402 ]
  %420 = phi i64 [ %217, %219 ], [ %403, %402 ]
  %421 = fcmp ult double %418, %16
  br i1 %421, label %422, label %614

; <label>:422:                                    ; preds = %417
  %423 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 3
  %424 = load double, double* %423, align 8
  br label %643

; <label>:425:                                    ; preds = %402, %228
  %426 = phi i1 [ %231, %228 ], [ %408, %402 ]
  %427 = phi double [ %230, %228 ], [ %406, %402 ]
  %428 = phi i64 [ 0, %228 ], [ %404, %402 ]
  %429 = phi i64 [ %225, %228 ], [ %403, %402 ]
  %430 = fcmp une double %427, %16
  %431 = and i1 %430, %426
  br i1 %431, label %614, label %432

; <label>:432:                                    ; preds = %425
  %433 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 3
  %434 = load double, double* %433, align 8
  %435 = fcmp ord double %434, %19
  br label %649

; <label>:436:                                    ; preds = %402, %236
  %437 = phi double [ %238, %236 ], [ %406, %402 ]
  %438 = phi i64 [ 0, %236 ], [ %404, %402 ]
  %439 = phi i64 [ %234, %236 ], [ %403, %402 ]
  %440 = fcmp ule double %437, %16
  br i1 %440, label %614, label %441

; <label>:441:                                    ; preds = %436
  %442 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 3
  %443 = load double, double* %442, align 8
  br label %657

; <label>:444:                                    ; preds = %402, %243
  %445 = phi double [ %245, %243 ], [ %406, %402 ]
  %446 = phi i64 [ 0, %243 ], [ %404, %402 ]
  %447 = phi i64 [ %241, %243 ], [ %403, %402 ]
  %448 = fcmp ult double %445, %16
  br i1 %448, label %614, label %449

; <label>:449:                                    ; preds = %444
  %450 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 3
  %451 = load double, double* %450, align 8
  br label %663

; <label>:452:                                    ; preds = %402, %250
  %453 = phi double [ %252, %250 ], [ %406, %402 ]
  %454 = phi i64 [ 0, %250 ], [ %404, %402 ]
  %455 = phi i64 [ %248, %250 ], [ %403, %402 ]
  %456 = fcmp ueq double %453, %16
  br i1 %456, label %614, label %457

; <label>:457:                                    ; preds = %452
  %458 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 3
  %459 = load double, double* %458, align 8
  br label %669

; <label>:460:                                    ; preds = %402
  br i1 %407, label %623, label %614

; <label>:461:                                    ; preds = %402, %258
  %462 = phi double [ %260, %258 ], [ %406, %402 ]
  %463 = phi i64 [ 0, %258 ], [ %404, %402 ]
  %464 = phi i64 [ %256, %258 ], [ %403, %402 ]
  %465 = fcmp ugt double %462, %16
  br i1 %465, label %614, label %466

; <label>:466:                                    ; preds = %461
  %467 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 3
  %468 = load double, double* %467, align 8
  br label %676

; <label>:469:                                    ; preds = %402, %265
  %470 = phi double [ %267, %265 ], [ %406, %402 ]
  %471 = phi i64 [ 0, %265 ], [ %404, %402 ]
  %472 = phi i64 [ %263, %265 ], [ %403, %402 ]
  %473 = fcmp uge double %470, %16
  br i1 %473, label %614, label %474

; <label>:474:                                    ; preds = %469
  %475 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 3
  %476 = load double, double* %475, align 8
  br label %682

; <label>:477:                                    ; preds = %402, %272
  %478 = phi double [ %274, %272 ], [ %406, %402 ]
  %479 = phi i64 [ 0, %272 ], [ %404, %402 ]
  %480 = phi i64 [ %270, %272 ], [ %403, %402 ]
  %481 = fcmp une double %478, %16
  br i1 %481, label %614, label %482

; <label>:482:                                    ; preds = %477
  %483 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 3
  %484 = load double, double* %483, align 8
  br label %688

; <label>:485:                                    ; preds = %402, %279
  %486 = phi double [ %281, %279 ], [ %406, %402 ]
  %487 = phi i64 [ 0, %279 ], [ %404, %402 ]
  %488 = phi i64 [ %277, %279 ], [ %403, %402 ]
  %489 = fcmp ugt double %486, %16
  br i1 %489, label %490, label %614

; <label>:490:                                    ; preds = %485
  %491 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 3
  %492 = load double, double* %491, align 8
  br label %694

; <label>:493:                                    ; preds = %402, %286
  %494 = phi double [ %288, %286 ], [ %406, %402 ]
  %495 = phi i64 [ 0, %286 ], [ %404, %402 ]
  %496 = phi i64 [ %284, %286 ], [ %403, %402 ]
  %497 = fcmp olt double %494, %16
  br i1 %497, label %614, label %498

; <label>:498:                                    ; preds = %493
  %499 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 3
  %500 = load double, double* %499, align 8
  br label %700

; <label>:501:                                    ; preds = %402, %295
  %502 = phi i1 [ %298, %295 ], [ %408, %402 ]
  %503 = phi double [ %297, %295 ], [ %406, %402 ]
  %504 = phi i64 [ 0, %295 ], [ %404, %402 ]
  %505 = phi i64 [ %292, %295 ], [ %403, %402 ]
  %506 = fcmp oeq double %503, %16
  %507 = and i1 %506, %502
  br i1 %507, label %614, label %508

; <label>:508:                                    ; preds = %501
  %509 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 3
  %510 = load double, double* %509, align 8
  %511 = fcmp ord double %510, %19
  br label %706

; <label>:512:                                    ; preds = %402, %305
  %513 = phi i1 [ %308, %305 ], [ %408, %402 ]
  %514 = phi double [ %307, %305 ], [ %406, %402 ]
  %515 = phi i64 [ 0, %305 ], [ %404, %402 ]
  %516 = phi i64 [ %302, %305 ], [ %403, %402 ]
  %517 = fcmp ogt double %514, %16
  %518 = and i1 %517, %513
  br i1 %518, label %614, label %519

; <label>:519:                                    ; preds = %512
  %520 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 3
  %521 = load double, double* %520, align 8
  %522 = fcmp ord double %521, %19
  br label %714

; <label>:523:                                    ; preds = %402, %315
  %524 = phi i1 [ %318, %315 ], [ %408, %402 ]
  %525 = phi double [ %317, %315 ], [ %406, %402 ]
  %526 = phi i64 [ 0, %315 ], [ %404, %402 ]
  %527 = phi i64 [ %312, %315 ], [ %403, %402 ]
  %528 = fcmp oge double %525, %16
  %529 = and i1 %528, %524
  br i1 %529, label %614, label %530

; <label>:530:                                    ; preds = %523
  %531 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 3
  %532 = load double, double* %531, align 8
  %533 = fcmp ord double %532, %19
  br label %722

; <label>:534:                                    ; preds = %402, %323
  %535 = phi double [ %325, %323 ], [ %406, %402 ]
  %536 = phi i64 [ 0, %323 ], [ %404, %402 ]
  %537 = phi i64 [ %321, %323 ], [ %403, %402 ]
  %538 = fcmp ueq double %535, %16
  br i1 %538, label %539, label %614

; <label>:539:                                    ; preds = %534
  %540 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 3
  %541 = load double, double* %540, align 8
  br label %730

; <label>:542:                                    ; preds = %402, %330
  %543 = phi double [ %332, %330 ], [ %406, %402 ]
  %544 = phi i64 [ 0, %330 ], [ %404, %402 ]
  %545 = phi i64 [ %328, %330 ], [ %403, %402 ]
  %546 = fcmp ule double %543, %16
  br i1 %546, label %614, label %547

; <label>:547:                                    ; preds = %542
  %548 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 3
  %549 = load double, double* %548, align 8
  br label %736

; <label>:550:                                    ; preds = %402, %337
  %551 = phi double [ %339, %337 ], [ %406, %402 ]
  %552 = phi i64 [ 0, %337 ], [ %404, %402 ]
  %553 = phi i64 [ %335, %337 ], [ %403, %402 ]
  %554 = fcmp ult double %551, %16
  br i1 %554, label %614, label %555

; <label>:555:                                    ; preds = %550
  %556 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 3
  %557 = load double, double* %556, align 8
  br label %742

; <label>:558:                                    ; preds = %402, %344
  %559 = phi double [ %346, %344 ], [ %406, %402 ]
  %560 = phi i64 [ 0, %344 ], [ %404, %402 ]
  %561 = phi i64 [ %342, %344 ], [ %403, %402 ]
  %562 = fcmp ueq double %559, %16
  br i1 %562, label %614, label %563

; <label>:563:                                    ; preds = %558
  %564 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 3
  %565 = load double, double* %564, align 8
  br label %748

; <label>:566:                                    ; preds = %402
  br i1 %407, label %617, label %614

; <label>:567:                                    ; preds = %402, %352
  %568 = phi double [ %354, %352 ], [ %406, %402 ]
  %569 = phi i64 [ 0, %352 ], [ %404, %402 ]
  %570 = phi i64 [ %350, %352 ], [ %403, %402 ]
  %571 = fcmp ugt double %568, %16
  br i1 %571, label %614, label %572

; <label>:572:                                    ; preds = %567
  %573 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 3
  %574 = load double, double* %573, align 8
  br label %755

; <label>:575:                                    ; preds = %402, %359
  %576 = phi double [ %361, %359 ], [ %406, %402 ]
  %577 = phi i64 [ 0, %359 ], [ %404, %402 ]
  %578 = phi i64 [ %357, %359 ], [ %403, %402 ]
  %579 = fcmp uge double %576, %16
  br i1 %579, label %614, label %580

; <label>:580:                                    ; preds = %575
  %581 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 3
  %582 = load double, double* %581, align 8
  br label %761

; <label>:583:                                    ; preds = %402, %366
  %584 = phi double [ %368, %366 ], [ %406, %402 ]
  %585 = phi i64 [ 0, %366 ], [ %404, %402 ]
  %586 = phi i64 [ %364, %366 ], [ %403, %402 ]
  %587 = fcmp une double %584, %16
  br i1 %587, label %614, label %588

; <label>:588:                                    ; preds = %583
  %589 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 3
  %590 = load double, double* %589, align 8
  br label %767

; <label>:591:                                    ; preds = %402, %402
  br i1 %407, label %614, label %629

; <label>:592:                                    ; preds = %402, %376
  %593 = phi i1 [ %379, %376 ], [ %408, %402 ]
  %594 = phi double [ %378, %376 ], [ %406, %402 ]
  %595 = phi i64 [ 0, %376 ], [ %404, %402 ]
  %596 = phi i64 [ %373, %376 ], [ %403, %402 ]
  %597 = fcmp ole double %594, %16
  %598 = and i1 %597, %593
  br i1 %598, label %614, label %599

; <label>:599:                                    ; preds = %592
  %600 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 3
  %601 = load double, double* %600, align 8
  %602 = fcmp ord double %601, %19
  br label %774

; <label>:603:                                    ; preds = %402, %386
  %604 = phi i1 [ %389, %386 ], [ %408, %402 ]
  %605 = phi double [ %388, %386 ], [ %406, %402 ]
  %606 = phi i64 [ 0, %386 ], [ %404, %402 ]
  %607 = phi i64 [ %383, %386 ], [ %403, %402 ]
  %608 = fcmp olt double %605, %16
  %609 = and i1 %608, %604
  br i1 %609, label %614, label %610

; <label>:610:                                    ; preds = %603
  %611 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 3
  %612 = load double, double* %611, align 8
  %613 = fcmp ord double %612, %19
  br label %782

; <label>:614:                                    ; preds = %603, %592, %591, %583, %575, %567, %566, %558, %550, %542, %534, %523, %512, %501, %493, %485, %477, %469, %461, %460, %452, %444, %436, %425, %417, %409, %402, %402, %397, %392
  %615 = phi i64 [ %606, %603 ], [ %595, %592 ], [ %404, %591 ], [ %585, %583 ], [ %577, %575 ], [ %569, %567 ], [ %404, %566 ], [ %560, %558 ], [ %552, %550 ], [ %544, %542 ], [ %536, %534 ], [ %526, %523 ], [ %515, %512 ], [ %504, %501 ], [ %495, %493 ], [ %487, %485 ], [ %479, %477 ], [ %471, %469 ], [ %463, %461 ], [ %404, %460 ], [ %454, %452 ], [ %446, %444 ], [ %438, %436 ], [ %428, %425 ], [ %419, %417 ], [ %411, %409 ], [ %404, %402 ], [ %404, %402 ], [ 0, %397 ], [ 0, %392 ]
  %616 = phi i64 [ %607, %603 ], [ %596, %592 ], [ %403, %591 ], [ %586, %583 ], [ %578, %575 ], [ %570, %567 ], [ %403, %566 ], [ %561, %558 ], [ %553, %550 ], [ %545, %542 ], [ %537, %534 ], [ %527, %523 ], [ %516, %512 ], [ %505, %501 ], [ %496, %493 ], [ %488, %485 ], [ %480, %477 ], [ %472, %469 ], [ %464, %461 ], [ %403, %460 ], [ %455, %452 ], [ %447, %444 ], [ %439, %436 ], [ %429, %425 ], [ %420, %417 ], [ %412, %409 ], [ %403, %402 ], [ %403, %402 ], [ %398, %397 ], [ %393, %392 ]
  br label %629

; <label>:617:                                    ; preds = %566, %392
  %618 = phi i64 [ 0, %392 ], [ %404, %566 ]
  %619 = phi i64 [ %393, %392 ], [ %403, %566 ]
  %620 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 3
  %621 = load double, double* %620, align 8
  %622 = fcmp uno double %621, %19
  br i1 %622, label %48, label %790

; <label>:623:                                    ; preds = %460, %397
  %624 = phi i64 [ 0, %397 ], [ %404, %460 ]
  %625 = phi i64 [ %398, %397 ], [ %403, %460 ]
  %626 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 3
  %627 = load double, double* %626, align 8
  %628 = fcmp uno double %627, %19
  br i1 %628, label %48, label %790

; <label>:629:                                    ; preds = %614, %591, %402, %402
  %630 = phi i64 [ %615, %614 ], [ %404, %591 ], [ %404, %402 ], [ %404, %402 ]
  %631 = phi i64 [ %616, %614 ], [ %403, %591 ], [ %403, %402 ], [ %403, %402 ]
  %632 = phi i64 [ -1, %614 ], [ 0, %591 ], [ 0, %402 ], [ 0, %402 ]
  %633 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 3
  %634 = load double, double* %633, align 8
  %635 = fcmp uno double %634, %19
  %636 = xor i1 %635, true
  switch i8 %20, label %197 [
    i8 31, label %790
    i8 1, label %782
    i8 2, label %774
    i8 3, label %773
    i8 4, label %767
    i8 5, label %761
    i8 6, label %755
    i8 7, label %754
    i8 8, label %748
    i8 9, label %742
    i8 10, label %736
    i8 11, label %48
    i8 12, label %730
    i8 13, label %722
    i8 14, label %714
    i8 15, label %790
    i8 16, label %706
    i8 17, label %700
    i8 18, label %694
    i8 19, label %773
    i8 20, label %688
    i8 21, label %682
    i8 22, label %676
    i8 23, label %675
    i8 24, label %669
    i8 25, label %663
    i8 26, label %657
    i8 27, label %48
    i8 28, label %649
    i8 29, label %643
    i8 30, label %637
  ]

; <label>:637:                                    ; preds = %629, %414
  %638 = phi double [ %416, %414 ], [ %634, %629 ]
  %639 = phi i64 [ 0, %414 ], [ %632, %629 ]
  %640 = phi i64 [ %412, %414 ], [ %631, %629 ]
  %641 = phi i64 [ %411, %414 ], [ %630, %629 ]
  %642 = fcmp ogt double %638, %19
  br i1 %642, label %790, label %48

; <label>:643:                                    ; preds = %629, %422
  %644 = phi double [ %424, %422 ], [ %634, %629 ]
  %645 = phi i64 [ 0, %422 ], [ %632, %629 ]
  %646 = phi i64 [ %420, %422 ], [ %631, %629 ]
  %647 = phi i64 [ %419, %422 ], [ %630, %629 ]
  %648 = fcmp ult double %644, %19
  br i1 %648, label %48, label %790

; <label>:649:                                    ; preds = %629, %432
  %650 = phi i1 [ %435, %432 ], [ %636, %629 ]
  %651 = phi double [ %434, %432 ], [ %634, %629 ]
  %652 = phi i64 [ 0, %432 ], [ %632, %629 ]
  %653 = phi i64 [ %429, %432 ], [ %631, %629 ]
  %654 = phi i64 [ %428, %432 ], [ %630, %629 ]
  %655 = fcmp une double %651, %19
  %656 = and i1 %655, %650
  br i1 %656, label %790, label %48

; <label>:657:                                    ; preds = %629, %441
  %658 = phi double [ %443, %441 ], [ %634, %629 ]
  %659 = phi i64 [ 0, %441 ], [ %632, %629 ]
  %660 = phi i64 [ %439, %441 ], [ %631, %629 ]
  %661 = phi i64 [ %438, %441 ], [ %630, %629 ]
  %662 = fcmp ule double %658, %19
  br i1 %662, label %790, label %48

; <label>:663:                                    ; preds = %629, %449
  %664 = phi double [ %451, %449 ], [ %634, %629 ]
  %665 = phi i64 [ 0, %449 ], [ %632, %629 ]
  %666 = phi i64 [ %447, %449 ], [ %631, %629 ]
  %667 = phi i64 [ %446, %449 ], [ %630, %629 ]
  %668 = fcmp ult double %664, %19
  br i1 %668, label %790, label %48

; <label>:669:                                    ; preds = %629, %457
  %670 = phi double [ %459, %457 ], [ %634, %629 ]
  %671 = phi i64 [ 0, %457 ], [ %632, %629 ]
  %672 = phi i64 [ %455, %457 ], [ %631, %629 ]
  %673 = phi i64 [ %454, %457 ], [ %630, %629 ]
  %674 = fcmp ueq double %670, %19
  br i1 %674, label %790, label %48

; <label>:675:                                    ; preds = %629
  br i1 %635, label %48, label %790

; <label>:676:                                    ; preds = %629, %466
  %677 = phi double [ %468, %466 ], [ %634, %629 ]
  %678 = phi i64 [ 0, %466 ], [ %632, %629 ]
  %679 = phi i64 [ %464, %466 ], [ %631, %629 ]
  %680 = phi i64 [ %463, %466 ], [ %630, %629 ]
  %681 = fcmp ugt double %677, %19
  br i1 %681, label %790, label %48

; <label>:682:                                    ; preds = %629, %474
  %683 = phi double [ %476, %474 ], [ %634, %629 ]
  %684 = phi i64 [ 0, %474 ], [ %632, %629 ]
  %685 = phi i64 [ %472, %474 ], [ %631, %629 ]
  %686 = phi i64 [ %471, %474 ], [ %630, %629 ]
  %687 = fcmp uge double %683, %19
  br i1 %687, label %790, label %48

; <label>:688:                                    ; preds = %629, %482
  %689 = phi double [ %484, %482 ], [ %634, %629 ]
  %690 = phi i64 [ 0, %482 ], [ %632, %629 ]
  %691 = phi i64 [ %480, %482 ], [ %631, %629 ]
  %692 = phi i64 [ %479, %482 ], [ %630, %629 ]
  %693 = fcmp une double %689, %19
  br i1 %693, label %790, label %48

; <label>:694:                                    ; preds = %629, %490
  %695 = phi double [ %492, %490 ], [ %634, %629 ]
  %696 = phi i64 [ 0, %490 ], [ %632, %629 ]
  %697 = phi i64 [ %488, %490 ], [ %631, %629 ]
  %698 = phi i64 [ %487, %490 ], [ %630, %629 ]
  %699 = fcmp ugt double %695, %19
  br i1 %699, label %48, label %790

; <label>:700:                                    ; preds = %629, %498
  %701 = phi double [ %500, %498 ], [ %634, %629 ]
  %702 = phi i64 [ 0, %498 ], [ %632, %629 ]
  %703 = phi i64 [ %496, %498 ], [ %631, %629 ]
  %704 = phi i64 [ %495, %498 ], [ %630, %629 ]
  %705 = fcmp olt double %701, %19
  br i1 %705, label %790, label %48

; <label>:706:                                    ; preds = %629, %508
  %707 = phi i1 [ %511, %508 ], [ %636, %629 ]
  %708 = phi double [ %510, %508 ], [ %634, %629 ]
  %709 = phi i64 [ 0, %508 ], [ %632, %629 ]
  %710 = phi i64 [ %505, %508 ], [ %631, %629 ]
  %711 = phi i64 [ %504, %508 ], [ %630, %629 ]
  %712 = fcmp oeq double %708, %19
  %713 = and i1 %712, %707
  br i1 %713, label %790, label %48

; <label>:714:                                    ; preds = %629, %519
  %715 = phi i1 [ %522, %519 ], [ %636, %629 ]
  %716 = phi double [ %521, %519 ], [ %634, %629 ]
  %717 = phi i64 [ 0, %519 ], [ %632, %629 ]
  %718 = phi i64 [ %516, %519 ], [ %631, %629 ]
  %719 = phi i64 [ %515, %519 ], [ %630, %629 ]
  %720 = fcmp ogt double %716, %19
  %721 = and i1 %720, %715
  br i1 %721, label %790, label %48

; <label>:722:                                    ; preds = %629, %530
  %723 = phi i1 [ %533, %530 ], [ %636, %629 ]
  %724 = phi double [ %532, %530 ], [ %634, %629 ]
  %725 = phi i64 [ 0, %530 ], [ %632, %629 ]
  %726 = phi i64 [ %527, %530 ], [ %631, %629 ]
  %727 = phi i64 [ %526, %530 ], [ %630, %629 ]
  %728 = fcmp oge double %724, %19
  %729 = and i1 %728, %723
  br i1 %729, label %790, label %48

; <label>:730:                                    ; preds = %629, %539
  %731 = phi double [ %541, %539 ], [ %634, %629 ]
  %732 = phi i64 [ 0, %539 ], [ %632, %629 ]
  %733 = phi i64 [ %537, %539 ], [ %631, %629 ]
  %734 = phi i64 [ %536, %539 ], [ %630, %629 ]
  %735 = fcmp ueq double %731, %19
  br i1 %735, label %48, label %790

; <label>:736:                                    ; preds = %629, %547
  %737 = phi double [ %549, %547 ], [ %634, %629 ]
  %738 = phi i64 [ 0, %547 ], [ %632, %629 ]
  %739 = phi i64 [ %545, %547 ], [ %631, %629 ]
  %740 = phi i64 [ %544, %547 ], [ %630, %629 ]
  %741 = fcmp ule double %737, %19
  br i1 %741, label %790, label %48

; <label>:742:                                    ; preds = %629, %555
  %743 = phi double [ %557, %555 ], [ %634, %629 ]
  %744 = phi i64 [ 0, %555 ], [ %632, %629 ]
  %745 = phi i64 [ %553, %555 ], [ %631, %629 ]
  %746 = phi i64 [ %552, %555 ], [ %630, %629 ]
  %747 = fcmp ult double %743, %19
  br i1 %747, label %790, label %48

; <label>:748:                                    ; preds = %629, %563
  %749 = phi double [ %565, %563 ], [ %634, %629 ]
  %750 = phi i64 [ 0, %563 ], [ %632, %629 ]
  %751 = phi i64 [ %561, %563 ], [ %631, %629 ]
  %752 = phi i64 [ %560, %563 ], [ %630, %629 ]
  %753 = fcmp ueq double %749, %19
  br i1 %753, label %790, label %48

; <label>:754:                                    ; preds = %629
  br i1 %635, label %48, label %790

; <label>:755:                                    ; preds = %629, %572
  %756 = phi double [ %574, %572 ], [ %634, %629 ]
  %757 = phi i64 [ 0, %572 ], [ %632, %629 ]
  %758 = phi i64 [ %570, %572 ], [ %631, %629 ]
  %759 = phi i64 [ %569, %572 ], [ %630, %629 ]
  %760 = fcmp ugt double %756, %19
  br i1 %760, label %790, label %48

; <label>:761:                                    ; preds = %629, %580
  %762 = phi double [ %582, %580 ], [ %634, %629 ]
  %763 = phi i64 [ 0, %580 ], [ %632, %629 ]
  %764 = phi i64 [ %578, %580 ], [ %631, %629 ]
  %765 = phi i64 [ %577, %580 ], [ %630, %629 ]
  %766 = fcmp uge double %762, %19
  br i1 %766, label %790, label %48

; <label>:767:                                    ; preds = %629, %588
  %768 = phi double [ %590, %588 ], [ %634, %629 ]
  %769 = phi i64 [ 0, %588 ], [ %632, %629 ]
  %770 = phi i64 [ %586, %588 ], [ %631, %629 ]
  %771 = phi i64 [ %585, %588 ], [ %630, %629 ]
  %772 = fcmp une double %768, %19
  br i1 %772, label %790, label %48

; <label>:773:                                    ; preds = %629, %629
  br i1 %635, label %790, label %48

; <label>:774:                                    ; preds = %629, %599
  %775 = phi i1 [ %602, %599 ], [ %636, %629 ]
  %776 = phi double [ %601, %599 ], [ %634, %629 ]
  %777 = phi i64 [ 0, %599 ], [ %632, %629 ]
  %778 = phi i64 [ %596, %599 ], [ %631, %629 ]
  %779 = phi i64 [ %595, %599 ], [ %630, %629 ]
  %780 = fcmp ole double %776, %19
  %781 = and i1 %780, %775
  br i1 %781, label %790, label %48

; <label>:782:                                    ; preds = %629, %610
  %783 = phi i1 [ %613, %610 ], [ %636, %629 ]
  %784 = phi double [ %612, %610 ], [ %634, %629 ]
  %785 = phi i64 [ 0, %610 ], [ %632, %629 ]
  %786 = phi i64 [ %607, %610 ], [ %631, %629 ]
  %787 = phi i64 [ %606, %610 ], [ %630, %629 ]
  %788 = fcmp olt double %784, %19
  %789 = and i1 %788, %783
  br i1 %789, label %790, label %48

; <label>:790:                                    ; preds = %782, %774, %773, %767, %761, %755, %754, %748, %742, %736, %730, %722, %714, %706, %700, %694, %688, %682, %676, %675, %669, %663, %657, %649, %643, %637, %629, %629, %623, %617
  %791 = phi i64 [ %785, %782 ], [ %777, %774 ], [ %632, %773 ], [ %769, %767 ], [ %763, %761 ], [ %757, %755 ], [ %632, %754 ], [ %750, %748 ], [ %744, %742 ], [ %738, %736 ], [ %732, %730 ], [ %725, %722 ], [ %717, %714 ], [ %709, %706 ], [ %702, %700 ], [ %696, %694 ], [ %690, %688 ], [ %684, %682 ], [ %678, %676 ], [ %632, %675 ], [ %671, %669 ], [ %665, %663 ], [ %659, %657 ], [ %652, %649 ], [ %645, %643 ], [ %639, %637 ], [ %632, %629 ], [ %632, %629 ], [ 0, %623 ], [ 0, %617 ]
  %792 = phi i64 [ %786, %782 ], [ %778, %774 ], [ %631, %773 ], [ %770, %767 ], [ %764, %761 ], [ %758, %755 ], [ %631, %754 ], [ %751, %748 ], [ %745, %742 ], [ %739, %736 ], [ %733, %730 ], [ %726, %722 ], [ %718, %714 ], [ %710, %706 ], [ %703, %700 ], [ %697, %694 ], [ %691, %688 ], [ %685, %682 ], [ %679, %676 ], [ %631, %675 ], [ %672, %669 ], [ %666, %663 ], [ %660, %657 ], [ %653, %649 ], [ %646, %643 ], [ %640, %637 ], [ %631, %629 ], [ %631, %629 ], [ %625, %623 ], [ %619, %617 ]
  %793 = phi i64 [ %787, %782 ], [ %779, %774 ], [ %630, %773 ], [ %771, %767 ], [ %765, %761 ], [ %759, %755 ], [ %630, %754 ], [ %752, %748 ], [ %746, %742 ], [ %740, %736 ], [ %734, %730 ], [ %727, %722 ], [ %719, %714 ], [ %711, %706 ], [ %704, %700 ], [ %698, %694 ], [ %692, %688 ], [ %686, %682 ], [ %680, %676 ], [ %630, %675 ], [ %673, %669 ], [ %667, %663 ], [ %661, %657 ], [ %654, %649 ], [ %647, %643 ], [ %641, %637 ], [ %630, %629 ], [ %630, %629 ], [ %624, %623 ], [ %618, %617 ]
  br label %48
}

define %struct.Memory* @routine_vcmppd_ymm_ymm_m256_imm8(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #19 {
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
  %YMM2 = bitcast %union.VectorReg* %12 to %"class.std::bitset"*
  %13 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %14 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %15 = load i64, i64* %RBP
  %16 = sub i64 %15, 4
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 6
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5CMPPDI3VnWI8vec256_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_2InIhE(%struct.Memory* %2, %struct.State* %0, i8* %13, i8* %14, i64 %16, i64 10)
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
  %call = call %struct.Memory* @routine_vcmppd_ymm_ymm_m256_imm8(%struct.State* %state, i64 0, %struct.Memory* %mem)
  ret i32 0
}