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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5CMPPDI3VnWI8vec256_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_2InIhE(%struct.Memory*, %struct.State* dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i8* nocapture readonly, i64) #0 {
  %7 = alloca %struct.float64v4_t, align 8
  %8 = alloca %struct.float64v4_t, align 8
  %9 = bitcast %struct.float64v4_t* %7 to i8*
  call void @my.lifetime.start(i64 32, i8* nonnull %9) #22
  call void @my.memcpy.p0i8.p0i8.i64(i8* nonnull %9, i8* %3, i64 32, i32 1, i1 false) #22
  %10 = bitcast %struct.float64v4_t* %8 to i8*
  call void @my.lifetime.start(i64 32, i8* nonnull %10) #22
  call void @my.memcpy.p0i8.p0i8.i64(i8* nonnull %10, i8* %4, i64 32, i32 1, i1 false) #22
  %11 = trunc i64 %5 to i8
  %12 = icmp ugt i8 %11, 31
  br i1 %12, label %43, label %13

; <label>:13:                                     ; preds = %6
  %14 = icmp eq i8 %11, 0
  %15 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 0
  %16 = load double, double* %15, align 8
  %17 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %8, i64 0, i32 0, i64 0
  %18 = load double, double* %17, align 8
  br i1 %14, label %22, label %19

; <label>:19:                                     ; preds = %13
  %20 = fcmp uno double %16, %18
  %21 = xor i1 %20, true
  switch i8 %11, label %246 [
    i8 31, label %248
    i8 1, label %59
    i8 2, label %68
    i8 3, label %247
    i8 4, label %77
    i8 5, label %84
    i8 6, label %91
    i8 7, label %98
    i8 8, label %105
    i8 9, label %112
    i8 10, label %119
    i8 11, label %249
    i8 12, label %126
    i8 13, label %133
    i8 14, label %142
    i8 15, label %248
    i8 16, label %151
    i8 17, label %160
    i8 18, label %167
    i8 19, label %247
    i8 20, label %174
    i8 21, label %181
    i8 22, label %188
    i8 23, label %195
    i8 24, label %202
    i8 25, label %209
    i8 26, label %216
    i8 27, label %249
    i8 28, label %223
    i8 29, label %232
    i8 30, label %239
  ]

; <label>:22:                                     ; preds = %13
  %23 = fcmp oeq double %16, %18
  %24 = sext i1 %23 to i64
  %25 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 1
  %26 = load double, double* %25, align 8
  %27 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %8, i64 0, i32 0, i64 1
  %28 = load double, double* %27, align 8
  %29 = fcmp oeq double %26, %28
  %30 = sext i1 %29 to i64
  %31 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 2
  %32 = load double, double* %31, align 8
  %33 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %8, i64 0, i32 0, i64 2
  %34 = load double, double* %33, align 8
  %35 = fcmp oeq double %32, %34
  %36 = sext i1 %35 to i64
  %37 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 3
  %38 = load double, double* %37, align 8
  %39 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %8, i64 0, i32 0, i64 3
  %40 = load double, double* %39, align 8
  %41 = fcmp oeq double %38, %40
  %42 = sext i1 %41 to i64
  br label %47

; <label>:43:                                     ; preds = %6
  %44 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %1, i64 %45, %struct.Memory* %0) #21
  br label %257

; <label>:47:                                     ; preds = %1014, %1005, %996, %995, %988, %981, %974, %973, %966, %959, %952, %945, %936, %927, %918, %911, %904, %897, %890, %883, %882, %875, %868, %861, %852, %845, %838, %828, %828, %820, %812, %22
  %48 = phi i64 [ %42, %22 ], [ -1, %1014 ], [ 0, %995 ], [ 0, %838 ], [ 0, %845 ], [ 0, %852 ], [ 0, %861 ], [ 0, %868 ], [ 0, %875 ], [ 0, %882 ], [ 0, %883 ], [ 0, %890 ], [ 0, %897 ], [ 0, %904 ], [ 0, %911 ], [ 0, %918 ], [ 0, %927 ], [ 0, %936 ], [ 0, %945 ], [ 0, %952 ], [ 0, %959 ], [ 0, %966 ], [ 0, %973 ], [ 0, %974 ], [ 0, %981 ], [ 0, %988 ], [ 0, %996 ], [ 0, %1005 ], [ 0, %828 ], [ 0, %828 ], [ 0, %820 ], [ 0, %812 ]
  %49 = phi i64 [ %36, %22 ], [ %1015, %1014 ], [ %831, %995 ], [ %841, %838 ], [ %848, %845 ], [ %856, %852 ], [ %864, %861 ], [ %871, %868 ], [ %878, %875 ], [ %831, %882 ], [ %886, %883 ], [ %893, %890 ], [ %900, %897 ], [ %907, %904 ], [ %914, %911 ], [ %922, %918 ], [ %931, %927 ], [ %940, %936 ], [ %948, %945 ], [ %955, %952 ], [ %962, %959 ], [ %969, %966 ], [ %831, %973 ], [ %977, %974 ], [ %984, %981 ], [ %991, %988 ], [ %1000, %996 ], [ %1009, %1005 ], [ %831, %828 ], [ %831, %828 ], [ 0, %820 ], [ 0, %812 ]
  %50 = phi i64 [ %30, %22 ], [ %1017, %1014 ], [ %829, %995 ], [ %843, %838 ], [ %850, %845 ], [ %858, %852 ], [ %866, %861 ], [ %873, %868 ], [ %880, %875 ], [ %829, %882 ], [ %888, %883 ], [ %895, %890 ], [ %902, %897 ], [ %909, %904 ], [ %916, %911 ], [ %924, %918 ], [ %933, %927 ], [ %942, %936 ], [ %950, %945 ], [ %957, %952 ], [ %964, %959 ], [ %971, %966 ], [ %829, %973 ], [ %979, %974 ], [ %986, %981 ], [ %993, %988 ], [ %1002, %996 ], [ %1011, %1005 ], [ %829, %828 ], [ %829, %828 ], [ %821, %820 ], [ %813, %812 ]
  %51 = phi i64 [ %24, %22 ], [ %1016, %1014 ], [ %830, %995 ], [ %842, %838 ], [ %849, %845 ], [ %857, %852 ], [ %865, %861 ], [ %872, %868 ], [ %879, %875 ], [ %830, %882 ], [ %887, %883 ], [ %894, %890 ], [ %901, %897 ], [ %908, %904 ], [ %915, %911 ], [ %923, %918 ], [ %932, %927 ], [ %941, %936 ], [ %949, %945 ], [ %956, %952 ], [ %963, %959 ], [ %970, %966 ], [ %830, %973 ], [ %978, %974 ], [ %985, %981 ], [ %992, %988 ], [ %1001, %996 ], [ %1010, %1005 ], [ %830, %828 ], [ %830, %828 ], [ %822, %820 ], [ %814, %812 ]
  %52 = bitcast i8* %2 to i64*
  store i64 %51, i64* %52, align 1
  %53 = getelementptr inbounds i8, i8* %2, i64 8
  %54 = bitcast i8* %53 to i64*
  store i64 %50, i64* %54, align 1
  %55 = getelementptr inbounds i8, i8* %2, i64 16
  %56 = bitcast i8* %55 to i64*
  store i64 %49, i64* %56, align 1
  %57 = getelementptr inbounds i8, i8* %2, i64 24
  %58 = bitcast i8* %57 to i64*
  store i64 %48, i64* %58, align 1
  br label %257

; <label>:59:                                     ; preds = %19
  %60 = fcmp olt double %16, %18
  %61 = and i1 %60, %21
  br i1 %61, label %248, label %62

; <label>:62:                                     ; preds = %59
  %63 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 1
  %64 = load double, double* %63, align 8
  %65 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %8, i64 0, i32 0, i64 1
  %66 = load double, double* %65, align 8
  %67 = fcmp ord double %64, %66
  br label %497

; <label>:68:                                     ; preds = %19
  %69 = fcmp ole double %16, %18
  %70 = and i1 %69, %21
  br i1 %70, label %248, label %71

; <label>:71:                                     ; preds = %68
  %72 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 1
  %73 = load double, double* %72, align 8
  %74 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %8, i64 0, i32 0, i64 1
  %75 = load double, double* %74, align 8
  %76 = fcmp ord double %73, %75
  br label %484

; <label>:77:                                     ; preds = %19
  %78 = fcmp une double %16, %18
  br i1 %78, label %248, label %79

; <label>:79:                                     ; preds = %77
  %80 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 1
  %81 = load double, double* %80, align 8
  %82 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %8, i64 0, i32 0, i64 1
  %83 = load double, double* %82, align 8
  br label %473

; <label>:84:                                     ; preds = %19
  %85 = fcmp uge double %16, %18
  br i1 %85, label %248, label %86

; <label>:86:                                     ; preds = %84
  %87 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 1
  %88 = load double, double* %87, align 8
  %89 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %8, i64 0, i32 0, i64 1
  %90 = load double, double* %89, align 8
  br label %463

; <label>:91:                                     ; preds = %19
  %92 = fcmp ugt double %16, %18
  br i1 %92, label %248, label %93

; <label>:93:                                     ; preds = %91
  %94 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 1
  %95 = load double, double* %94, align 8
  %96 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %8, i64 0, i32 0, i64 1
  %97 = load double, double* %96, align 8
  br label %453

; <label>:98:                                     ; preds = %19
  br i1 %20, label %99, label %248

; <label>:99:                                     ; preds = %98
  %100 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 1
  %101 = load double, double* %100, align 8
  %102 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %8, i64 0, i32 0, i64 1
  %103 = load double, double* %102, align 8
  %104 = fcmp uno double %101, %103
  br i1 %104, label %512, label %510

; <label>:105:                                    ; preds = %19
  %106 = fcmp ueq double %16, %18
  br i1 %106, label %248, label %107

; <label>:107:                                    ; preds = %105
  %108 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 1
  %109 = load double, double* %108, align 8
  %110 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %8, i64 0, i32 0, i64 1
  %111 = load double, double* %110, align 8
  br label %442

; <label>:112:                                    ; preds = %19
  %113 = fcmp ult double %16, %18
  br i1 %113, label %248, label %114

; <label>:114:                                    ; preds = %112
  %115 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 1
  %116 = load double, double* %115, align 8
  %117 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %8, i64 0, i32 0, i64 1
  %118 = load double, double* %117, align 8
  br label %432

; <label>:119:                                    ; preds = %19
  %120 = fcmp ule double %16, %18
  br i1 %120, label %248, label %121

; <label>:121:                                    ; preds = %119
  %122 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 1
  %123 = load double, double* %122, align 8
  %124 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %8, i64 0, i32 0, i64 1
  %125 = load double, double* %124, align 8
  br label %422

; <label>:126:                                    ; preds = %19
  %127 = fcmp ueq double %16, %18
  br i1 %127, label %128, label %248

; <label>:128:                                    ; preds = %126
  %129 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 1
  %130 = load double, double* %129, align 8
  %131 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %8, i64 0, i32 0, i64 1
  %132 = load double, double* %131, align 8
  br label %412

; <label>:133:                                    ; preds = %19
  %134 = fcmp oge double %16, %18
  %135 = and i1 %134, %21
  br i1 %135, label %248, label %136

; <label>:136:                                    ; preds = %133
  %137 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 1
  %138 = load double, double* %137, align 8
  %139 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %8, i64 0, i32 0, i64 1
  %140 = load double, double* %139, align 8
  %141 = fcmp ord double %138, %140
  br label %399

; <label>:142:                                    ; preds = %19
  %143 = fcmp ogt double %16, %18
  %144 = and i1 %143, %21
  br i1 %144, label %248, label %145

; <label>:145:                                    ; preds = %142
  %146 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 1
  %147 = load double, double* %146, align 8
  %148 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %8, i64 0, i32 0, i64 1
  %149 = load double, double* %148, align 8
  %150 = fcmp ord double %147, %149
  br label %386

; <label>:151:                                    ; preds = %19
  %152 = fcmp oeq double %16, %18
  %153 = and i1 %152, %21
  br i1 %153, label %248, label %154

; <label>:154:                                    ; preds = %151
  %155 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 1
  %156 = load double, double* %155, align 8
  %157 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %8, i64 0, i32 0, i64 1
  %158 = load double, double* %157, align 8
  %159 = fcmp ord double %156, %158
  br label %373

; <label>:160:                                    ; preds = %19
  %161 = fcmp olt double %16, %18
  br i1 %161, label %248, label %162

; <label>:162:                                    ; preds = %160
  %163 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 1
  %164 = load double, double* %163, align 8
  %165 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %8, i64 0, i32 0, i64 1
  %166 = load double, double* %165, align 8
  br label %363

; <label>:167:                                    ; preds = %19
  %168 = fcmp ugt double %16, %18
  br i1 %168, label %169, label %248

; <label>:169:                                    ; preds = %167
  %170 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 1
  %171 = load double, double* %170, align 8
  %172 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %8, i64 0, i32 0, i64 1
  %173 = load double, double* %172, align 8
  br label %353

; <label>:174:                                    ; preds = %19
  %175 = fcmp une double %16, %18
  br i1 %175, label %248, label %176

; <label>:176:                                    ; preds = %174
  %177 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 1
  %178 = load double, double* %177, align 8
  %179 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %8, i64 0, i32 0, i64 1
  %180 = load double, double* %179, align 8
  br label %343

; <label>:181:                                    ; preds = %19
  %182 = fcmp uge double %16, %18
  br i1 %182, label %248, label %183

; <label>:183:                                    ; preds = %181
  %184 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 1
  %185 = load double, double* %184, align 8
  %186 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %8, i64 0, i32 0, i64 1
  %187 = load double, double* %186, align 8
  br label %333

; <label>:188:                                    ; preds = %19
  %189 = fcmp ugt double %16, %18
  br i1 %189, label %248, label %190

; <label>:190:                                    ; preds = %188
  %191 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 1
  %192 = load double, double* %191, align 8
  %193 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %8, i64 0, i32 0, i64 1
  %194 = load double, double* %193, align 8
  br label %323

; <label>:195:                                    ; preds = %19
  br i1 %20, label %196, label %248

; <label>:196:                                    ; preds = %195
  %197 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 1
  %198 = load double, double* %197, align 8
  %199 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %8, i64 0, i32 0, i64 1
  %200 = load double, double* %199, align 8
  %201 = fcmp uno double %198, %200
  br i1 %201, label %519, label %510

; <label>:202:                                    ; preds = %19
  %203 = fcmp ueq double %16, %18
  br i1 %203, label %248, label %204

; <label>:204:                                    ; preds = %202
  %205 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 1
  %206 = load double, double* %205, align 8
  %207 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %8, i64 0, i32 0, i64 1
  %208 = load double, double* %207, align 8
  br label %312

; <label>:209:                                    ; preds = %19
  %210 = fcmp ult double %16, %18
  br i1 %210, label %248, label %211

; <label>:211:                                    ; preds = %209
  %212 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 1
  %213 = load double, double* %212, align 8
  %214 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %8, i64 0, i32 0, i64 1
  %215 = load double, double* %214, align 8
  br label %302

; <label>:216:                                    ; preds = %19
  %217 = fcmp ule double %16, %18
  br i1 %217, label %248, label %218

; <label>:218:                                    ; preds = %216
  %219 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 1
  %220 = load double, double* %219, align 8
  %221 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %8, i64 0, i32 0, i64 1
  %222 = load double, double* %221, align 8
  br label %292

; <label>:223:                                    ; preds = %19
  %224 = fcmp une double %16, %18
  %225 = and i1 %224, %21
  br i1 %225, label %248, label %226

; <label>:226:                                    ; preds = %223
  %227 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 1
  %228 = load double, double* %227, align 8
  %229 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %8, i64 0, i32 0, i64 1
  %230 = load double, double* %229, align 8
  %231 = fcmp ord double %228, %230
  br label %279

; <label>:232:                                    ; preds = %19
  %233 = fcmp ult double %16, %18
  br i1 %233, label %234, label %248

; <label>:234:                                    ; preds = %232
  %235 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 1
  %236 = load double, double* %235, align 8
  %237 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %8, i64 0, i32 0, i64 1
  %238 = load double, double* %237, align 8
  br label %269

; <label>:239:                                    ; preds = %19
  %240 = fcmp ogt double %16, %18
  br i1 %240, label %248, label %241

; <label>:241:                                    ; preds = %239
  %242 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 1
  %243 = load double, double* %242, align 8
  %244 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %8, i64 0, i32 0, i64 1
  %245 = load double, double* %244, align 8
  br label %259

; <label>:246:                                    ; preds = %828, %526, %249, %19
  unreachable

; <label>:247:                                    ; preds = %19, %19
  br i1 %20, label %248, label %249

; <label>:248:                                    ; preds = %247, %239, %232, %223, %216, %209, %202, %195, %188, %181, %174, %167, %160, %151, %142, %133, %126, %119, %112, %105, %98, %91, %84, %77, %68, %59, %19, %19
  br label %249

; <label>:249:                                    ; preds = %248, %247, %19, %19
  %250 = phi i64 [ -1, %248 ], [ 0, %247 ], [ 0, %19 ], [ 0, %19 ]
  %251 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 1
  %252 = load double, double* %251, align 8
  %253 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %8, i64 0, i32 0, i64 1
  %254 = load double, double* %253, align 8
  %255 = fcmp uno double %252, %254
  %256 = xor i1 %255, true
  switch i8 %11, label %246 [
    i8 31, label %510
    i8 1, label %497
    i8 2, label %484
    i8 3, label %483
    i8 4, label %473
    i8 5, label %463
    i8 6, label %453
    i8 7, label %452
    i8 8, label %442
    i8 9, label %432
    i8 10, label %422
    i8 11, label %526
    i8 12, label %412
    i8 13, label %399
    i8 14, label %386
    i8 15, label %510
    i8 16, label %373
    i8 17, label %363
    i8 18, label %353
    i8 19, label %483
    i8 20, label %343
    i8 21, label %333
    i8 22, label %323
    i8 23, label %322
    i8 24, label %312
    i8 25, label %302
    i8 26, label %292
    i8 27, label %526
    i8 28, label %279
    i8 29, label %269
    i8 30, label %259
  ]

; <label>:257:                                    ; preds = %47, %43
  %258 = phi %struct.Memory* [ %46, %43 ], [ %0, %47 ]
  call void @my.lifetime.end(i64 32, i8* nonnull %10) #22
  call void @my.lifetime.end(i64 32, i8* nonnull %9) #22
  ret %struct.Memory* %258

; <label>:259:                                    ; preds = %249, %241
  %260 = phi double [ %245, %241 ], [ %254, %249 ]
  %261 = phi double [ %243, %241 ], [ %252, %249 ]
  %262 = phi i64 [ 0, %241 ], [ %250, %249 ]
  %263 = fcmp ogt double %261, %260
  br i1 %263, label %510, label %264

; <label>:264:                                    ; preds = %259
  %265 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 2
  %266 = load double, double* %265, align 8
  %267 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %8, i64 0, i32 0, i64 2
  %268 = load double, double* %267, align 8
  br label %535

; <label>:269:                                    ; preds = %249, %234
  %270 = phi double [ %238, %234 ], [ %254, %249 ]
  %271 = phi double [ %236, %234 ], [ %252, %249 ]
  %272 = phi i64 [ 0, %234 ], [ %250, %249 ]
  %273 = fcmp ult double %271, %270
  br i1 %273, label %274, label %510

; <label>:274:                                    ; preds = %269
  %275 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 2
  %276 = load double, double* %275, align 8
  %277 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %8, i64 0, i32 0, i64 2
  %278 = load double, double* %277, align 8
  br label %546

; <label>:279:                                    ; preds = %249, %226
  %280 = phi i1 [ %231, %226 ], [ %256, %249 ]
  %281 = phi double [ %230, %226 ], [ %254, %249 ]
  %282 = phi double [ %228, %226 ], [ %252, %249 ]
  %283 = phi i64 [ 0, %226 ], [ %250, %249 ]
  %284 = fcmp une double %282, %281
  %285 = and i1 %284, %280
  br i1 %285, label %510, label %286

; <label>:286:                                    ; preds = %279
  %287 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 2
  %288 = load double, double* %287, align 8
  %289 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %8, i64 0, i32 0, i64 2
  %290 = load double, double* %289, align 8
  %291 = fcmp ord double %288, %290
  br label %557

; <label>:292:                                    ; preds = %249, %218
  %293 = phi double [ %222, %218 ], [ %254, %249 ]
  %294 = phi double [ %220, %218 ], [ %252, %249 ]
  %295 = phi i64 [ 0, %218 ], [ %250, %249 ]
  %296 = fcmp ule double %294, %293
  br i1 %296, label %510, label %297

; <label>:297:                                    ; preds = %292
  %298 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 2
  %299 = load double, double* %298, align 8
  %300 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %8, i64 0, i32 0, i64 2
  %301 = load double, double* %300, align 8
  br label %571

; <label>:302:                                    ; preds = %249, %211
  %303 = phi double [ %215, %211 ], [ %254, %249 ]
  %304 = phi double [ %213, %211 ], [ %252, %249 ]
  %305 = phi i64 [ 0, %211 ], [ %250, %249 ]
  %306 = fcmp ult double %304, %303
  br i1 %306, label %510, label %307

; <label>:307:                                    ; preds = %302
  %308 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 2
  %309 = load double, double* %308, align 8
  %310 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %8, i64 0, i32 0, i64 2
  %311 = load double, double* %310, align 8
  br label %582

; <label>:312:                                    ; preds = %249, %204
  %313 = phi double [ %208, %204 ], [ %254, %249 ]
  %314 = phi double [ %206, %204 ], [ %252, %249 ]
  %315 = phi i64 [ 0, %204 ], [ %250, %249 ]
  %316 = fcmp ueq double %314, %313
  br i1 %316, label %510, label %317

; <label>:317:                                    ; preds = %312
  %318 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 2
  %319 = load double, double* %318, align 8
  %320 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %8, i64 0, i32 0, i64 2
  %321 = load double, double* %320, align 8
  br label %593

; <label>:322:                                    ; preds = %249
  br i1 %255, label %519, label %510

; <label>:323:                                    ; preds = %249, %190
  %324 = phi double [ %194, %190 ], [ %254, %249 ]
  %325 = phi double [ %192, %190 ], [ %252, %249 ]
  %326 = phi i64 [ 0, %190 ], [ %250, %249 ]
  %327 = fcmp ugt double %325, %324
  br i1 %327, label %510, label %328

; <label>:328:                                    ; preds = %323
  %329 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 2
  %330 = load double, double* %329, align 8
  %331 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %8, i64 0, i32 0, i64 2
  %332 = load double, double* %331, align 8
  br label %605

; <label>:333:                                    ; preds = %249, %183
  %334 = phi double [ %187, %183 ], [ %254, %249 ]
  %335 = phi double [ %185, %183 ], [ %252, %249 ]
  %336 = phi i64 [ 0, %183 ], [ %250, %249 ]
  %337 = fcmp uge double %335, %334
  br i1 %337, label %510, label %338

; <label>:338:                                    ; preds = %333
  %339 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 2
  %340 = load double, double* %339, align 8
  %341 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %8, i64 0, i32 0, i64 2
  %342 = load double, double* %341, align 8
  br label %616

; <label>:343:                                    ; preds = %249, %176
  %344 = phi double [ %180, %176 ], [ %254, %249 ]
  %345 = phi double [ %178, %176 ], [ %252, %249 ]
  %346 = phi i64 [ 0, %176 ], [ %250, %249 ]
  %347 = fcmp une double %345, %344
  br i1 %347, label %510, label %348

; <label>:348:                                    ; preds = %343
  %349 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 2
  %350 = load double, double* %349, align 8
  %351 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %8, i64 0, i32 0, i64 2
  %352 = load double, double* %351, align 8
  br label %627

; <label>:353:                                    ; preds = %249, %169
  %354 = phi double [ %173, %169 ], [ %254, %249 ]
  %355 = phi double [ %171, %169 ], [ %252, %249 ]
  %356 = phi i64 [ 0, %169 ], [ %250, %249 ]
  %357 = fcmp ugt double %355, %354
  br i1 %357, label %358, label %510

; <label>:358:                                    ; preds = %353
  %359 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 2
  %360 = load double, double* %359, align 8
  %361 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %8, i64 0, i32 0, i64 2
  %362 = load double, double* %361, align 8
  br label %638

; <label>:363:                                    ; preds = %249, %162
  %364 = phi double [ %166, %162 ], [ %254, %249 ]
  %365 = phi double [ %164, %162 ], [ %252, %249 ]
  %366 = phi i64 [ 0, %162 ], [ %250, %249 ]
  %367 = fcmp olt double %365, %364
  br i1 %367, label %510, label %368

; <label>:368:                                    ; preds = %363
  %369 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 2
  %370 = load double, double* %369, align 8
  %371 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %8, i64 0, i32 0, i64 2
  %372 = load double, double* %371, align 8
  br label %649

; <label>:373:                                    ; preds = %249, %154
  %374 = phi i1 [ %159, %154 ], [ %256, %249 ]
  %375 = phi double [ %158, %154 ], [ %254, %249 ]
  %376 = phi double [ %156, %154 ], [ %252, %249 ]
  %377 = phi i64 [ 0, %154 ], [ %250, %249 ]
  %378 = fcmp oeq double %376, %375
  %379 = and i1 %378, %374
  br i1 %379, label %510, label %380

; <label>:380:                                    ; preds = %373
  %381 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 2
  %382 = load double, double* %381, align 8
  %383 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %8, i64 0, i32 0, i64 2
  %384 = load double, double* %383, align 8
  %385 = fcmp ord double %382, %384
  br label %660

; <label>:386:                                    ; preds = %249, %145
  %387 = phi i1 [ %150, %145 ], [ %256, %249 ]
  %388 = phi double [ %149, %145 ], [ %254, %249 ]
  %389 = phi double [ %147, %145 ], [ %252, %249 ]
  %390 = phi i64 [ 0, %145 ], [ %250, %249 ]
  %391 = fcmp ogt double %389, %388
  %392 = and i1 %391, %387
  br i1 %392, label %510, label %393

; <label>:393:                                    ; preds = %386
  %394 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 2
  %395 = load double, double* %394, align 8
  %396 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %8, i64 0, i32 0, i64 2
  %397 = load double, double* %396, align 8
  %398 = fcmp ord double %395, %397
  br label %674

; <label>:399:                                    ; preds = %249, %136
  %400 = phi i1 [ %141, %136 ], [ %256, %249 ]
  %401 = phi double [ %140, %136 ], [ %254, %249 ]
  %402 = phi double [ %138, %136 ], [ %252, %249 ]
  %403 = phi i64 [ 0, %136 ], [ %250, %249 ]
  %404 = fcmp oge double %402, %401
  %405 = and i1 %404, %400
  br i1 %405, label %510, label %406

; <label>:406:                                    ; preds = %399
  %407 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 2
  %408 = load double, double* %407, align 8
  %409 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %8, i64 0, i32 0, i64 2
  %410 = load double, double* %409, align 8
  %411 = fcmp ord double %408, %410
  br label %688

; <label>:412:                                    ; preds = %249, %128
  %413 = phi double [ %132, %128 ], [ %254, %249 ]
  %414 = phi double [ %130, %128 ], [ %252, %249 ]
  %415 = phi i64 [ 0, %128 ], [ %250, %249 ]
  %416 = fcmp ueq double %414, %413
  br i1 %416, label %417, label %510

; <label>:417:                                    ; preds = %412
  %418 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 2
  %419 = load double, double* %418, align 8
  %420 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %8, i64 0, i32 0, i64 2
  %421 = load double, double* %420, align 8
  br label %702

; <label>:422:                                    ; preds = %249, %121
  %423 = phi double [ %125, %121 ], [ %254, %249 ]
  %424 = phi double [ %123, %121 ], [ %252, %249 ]
  %425 = phi i64 [ 0, %121 ], [ %250, %249 ]
  %426 = fcmp ule double %424, %423
  br i1 %426, label %510, label %427

; <label>:427:                                    ; preds = %422
  %428 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 2
  %429 = load double, double* %428, align 8
  %430 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %8, i64 0, i32 0, i64 2
  %431 = load double, double* %430, align 8
  br label %713

; <label>:432:                                    ; preds = %249, %114
  %433 = phi double [ %118, %114 ], [ %254, %249 ]
  %434 = phi double [ %116, %114 ], [ %252, %249 ]
  %435 = phi i64 [ 0, %114 ], [ %250, %249 ]
  %436 = fcmp ult double %434, %433
  br i1 %436, label %510, label %437

; <label>:437:                                    ; preds = %432
  %438 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 2
  %439 = load double, double* %438, align 8
  %440 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %8, i64 0, i32 0, i64 2
  %441 = load double, double* %440, align 8
  br label %724

; <label>:442:                                    ; preds = %249, %107
  %443 = phi double [ %111, %107 ], [ %254, %249 ]
  %444 = phi double [ %109, %107 ], [ %252, %249 ]
  %445 = phi i64 [ 0, %107 ], [ %250, %249 ]
  %446 = fcmp ueq double %444, %443
  br i1 %446, label %510, label %447

; <label>:447:                                    ; preds = %442
  %448 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 2
  %449 = load double, double* %448, align 8
  %450 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %8, i64 0, i32 0, i64 2
  %451 = load double, double* %450, align 8
  br label %735

; <label>:452:                                    ; preds = %249
  br i1 %255, label %512, label %510

; <label>:453:                                    ; preds = %249, %93
  %454 = phi double [ %97, %93 ], [ %254, %249 ]
  %455 = phi double [ %95, %93 ], [ %252, %249 ]
  %456 = phi i64 [ 0, %93 ], [ %250, %249 ]
  %457 = fcmp ugt double %455, %454
  br i1 %457, label %510, label %458

; <label>:458:                                    ; preds = %453
  %459 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 2
  %460 = load double, double* %459, align 8
  %461 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %8, i64 0, i32 0, i64 2
  %462 = load double, double* %461, align 8
  br label %747

; <label>:463:                                    ; preds = %249, %86
  %464 = phi double [ %90, %86 ], [ %254, %249 ]
  %465 = phi double [ %88, %86 ], [ %252, %249 ]
  %466 = phi i64 [ 0, %86 ], [ %250, %249 ]
  %467 = fcmp uge double %465, %464
  br i1 %467, label %510, label %468

; <label>:468:                                    ; preds = %463
  %469 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 2
  %470 = load double, double* %469, align 8
  %471 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %8, i64 0, i32 0, i64 2
  %472 = load double, double* %471, align 8
  br label %758

; <label>:473:                                    ; preds = %249, %79
  %474 = phi double [ %83, %79 ], [ %254, %249 ]
  %475 = phi double [ %81, %79 ], [ %252, %249 ]
  %476 = phi i64 [ 0, %79 ], [ %250, %249 ]
  %477 = fcmp une double %475, %474
  br i1 %477, label %510, label %478

; <label>:478:                                    ; preds = %473
  %479 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 2
  %480 = load double, double* %479, align 8
  %481 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %8, i64 0, i32 0, i64 2
  %482 = load double, double* %481, align 8
  br label %769

; <label>:483:                                    ; preds = %249, %249
  br i1 %255, label %510, label %526

; <label>:484:                                    ; preds = %249, %71
  %485 = phi i1 [ %76, %71 ], [ %256, %249 ]
  %486 = phi double [ %75, %71 ], [ %254, %249 ]
  %487 = phi double [ %73, %71 ], [ %252, %249 ]
  %488 = phi i64 [ 0, %71 ], [ %250, %249 ]
  %489 = fcmp ole double %487, %486
  %490 = and i1 %489, %485
  br i1 %490, label %510, label %491

; <label>:491:                                    ; preds = %484
  %492 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 2
  %493 = load double, double* %492, align 8
  %494 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %8, i64 0, i32 0, i64 2
  %495 = load double, double* %494, align 8
  %496 = fcmp ord double %493, %495
  br label %781

; <label>:497:                                    ; preds = %249, %62
  %498 = phi i1 [ %67, %62 ], [ %256, %249 ]
  %499 = phi double [ %66, %62 ], [ %254, %249 ]
  %500 = phi double [ %64, %62 ], [ %252, %249 ]
  %501 = phi i64 [ 0, %62 ], [ %250, %249 ]
  %502 = fcmp olt double %500, %499
  %503 = and i1 %502, %498
  br i1 %503, label %510, label %504

; <label>:504:                                    ; preds = %497
  %505 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 2
  %506 = load double, double* %505, align 8
  %507 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %8, i64 0, i32 0, i64 2
  %508 = load double, double* %507, align 8
  %509 = fcmp ord double %506, %508
  br label %795

; <label>:510:                                    ; preds = %497, %484, %483, %473, %463, %453, %452, %442, %432, %422, %412, %399, %386, %373, %363, %353, %343, %333, %323, %322, %312, %302, %292, %279, %269, %259, %249, %249, %196, %99
  %511 = phi i64 [ %501, %497 ], [ %488, %484 ], [ %250, %483 ], [ %476, %473 ], [ %466, %463 ], [ %456, %453 ], [ %250, %452 ], [ %445, %442 ], [ %435, %432 ], [ %425, %422 ], [ %415, %412 ], [ %403, %399 ], [ %390, %386 ], [ %377, %373 ], [ %366, %363 ], [ %356, %353 ], [ %346, %343 ], [ %336, %333 ], [ %326, %323 ], [ %250, %322 ], [ %315, %312 ], [ %305, %302 ], [ %295, %292 ], [ %283, %279 ], [ %272, %269 ], [ %262, %259 ], [ %250, %249 ], [ %250, %249 ], [ 0, %196 ], [ 0, %99 ]
  br label %526

; <label>:512:                                    ; preds = %452, %99
  %513 = phi i64 [ 0, %99 ], [ %250, %452 ]
  %514 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 2
  %515 = load double, double* %514, align 8
  %516 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %8, i64 0, i32 0, i64 2
  %517 = load double, double* %516, align 8
  %518 = fcmp uno double %515, %517
  br i1 %518, label %812, label %809

; <label>:519:                                    ; preds = %322, %196
  %520 = phi i64 [ 0, %196 ], [ %250, %322 ]
  %521 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 2
  %522 = load double, double* %521, align 8
  %523 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %8, i64 0, i32 0, i64 2
  %524 = load double, double* %523, align 8
  %525 = fcmp uno double %522, %524
  br i1 %525, label %820, label %809

; <label>:526:                                    ; preds = %510, %483, %249, %249
  %527 = phi i64 [ %511, %510 ], [ %250, %483 ], [ %250, %249 ], [ %250, %249 ]
  %528 = phi i64 [ -1, %510 ], [ 0, %483 ], [ 0, %249 ], [ 0, %249 ]
  %529 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 2
  %530 = load double, double* %529, align 8
  %531 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %8, i64 0, i32 0, i64 2
  %532 = load double, double* %531, align 8
  %533 = fcmp uno double %530, %532
  %534 = xor i1 %533, true
  switch i8 %11, label %246 [
    i8 31, label %809
    i8 1, label %795
    i8 2, label %781
    i8 3, label %780
    i8 4, label %769
    i8 5, label %758
    i8 6, label %747
    i8 7, label %746
    i8 8, label %735
    i8 9, label %724
    i8 10, label %713
    i8 11, label %828
    i8 12, label %702
    i8 13, label %688
    i8 14, label %674
    i8 15, label %809
    i8 16, label %660
    i8 17, label %649
    i8 18, label %638
    i8 19, label %780
    i8 20, label %627
    i8 21, label %616
    i8 22, label %605
    i8 23, label %604
    i8 24, label %593
    i8 25, label %582
    i8 26, label %571
    i8 27, label %828
    i8 28, label %557
    i8 29, label %546
    i8 30, label %535
  ]

; <label>:535:                                    ; preds = %526, %264
  %536 = phi double [ %268, %264 ], [ %532, %526 ]
  %537 = phi double [ %266, %264 ], [ %530, %526 ]
  %538 = phi i64 [ 0, %264 ], [ %528, %526 ]
  %539 = phi i64 [ %262, %264 ], [ %527, %526 ]
  %540 = fcmp ogt double %537, %536
  br i1 %540, label %809, label %541

; <label>:541:                                    ; preds = %535
  %542 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 3
  %543 = load double, double* %542, align 8
  %544 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %8, i64 0, i32 0, i64 3
  %545 = load double, double* %544, align 8
  br label %838

; <label>:546:                                    ; preds = %526, %274
  %547 = phi double [ %278, %274 ], [ %532, %526 ]
  %548 = phi double [ %276, %274 ], [ %530, %526 ]
  %549 = phi i64 [ 0, %274 ], [ %528, %526 ]
  %550 = phi i64 [ %272, %274 ], [ %527, %526 ]
  %551 = fcmp ult double %548, %547
  br i1 %551, label %552, label %809

; <label>:552:                                    ; preds = %546
  %553 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 3
  %554 = load double, double* %553, align 8
  %555 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %8, i64 0, i32 0, i64 3
  %556 = load double, double* %555, align 8
  br label %845

; <label>:557:                                    ; preds = %526, %286
  %558 = phi i1 [ %291, %286 ], [ %534, %526 ]
  %559 = phi double [ %290, %286 ], [ %532, %526 ]
  %560 = phi double [ %288, %286 ], [ %530, %526 ]
  %561 = phi i64 [ 0, %286 ], [ %528, %526 ]
  %562 = phi i64 [ %283, %286 ], [ %527, %526 ]
  %563 = fcmp une double %560, %559
  %564 = and i1 %563, %558
  br i1 %564, label %809, label %565

; <label>:565:                                    ; preds = %557
  %566 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 3
  %567 = load double, double* %566, align 8
  %568 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %8, i64 0, i32 0, i64 3
  %569 = load double, double* %568, align 8
  %570 = fcmp ord double %567, %569
  br label %852

; <label>:571:                                    ; preds = %526, %297
  %572 = phi double [ %301, %297 ], [ %532, %526 ]
  %573 = phi double [ %299, %297 ], [ %530, %526 ]
  %574 = phi i64 [ 0, %297 ], [ %528, %526 ]
  %575 = phi i64 [ %295, %297 ], [ %527, %526 ]
  %576 = fcmp ule double %573, %572
  br i1 %576, label %809, label %577

; <label>:577:                                    ; preds = %571
  %578 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 3
  %579 = load double, double* %578, align 8
  %580 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %8, i64 0, i32 0, i64 3
  %581 = load double, double* %580, align 8
  br label %861

; <label>:582:                                    ; preds = %526, %307
  %583 = phi double [ %311, %307 ], [ %532, %526 ]
  %584 = phi double [ %309, %307 ], [ %530, %526 ]
  %585 = phi i64 [ 0, %307 ], [ %528, %526 ]
  %586 = phi i64 [ %305, %307 ], [ %527, %526 ]
  %587 = fcmp ult double %584, %583
  br i1 %587, label %809, label %588

; <label>:588:                                    ; preds = %582
  %589 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 3
  %590 = load double, double* %589, align 8
  %591 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %8, i64 0, i32 0, i64 3
  %592 = load double, double* %591, align 8
  br label %868

; <label>:593:                                    ; preds = %526, %317
  %594 = phi double [ %321, %317 ], [ %532, %526 ]
  %595 = phi double [ %319, %317 ], [ %530, %526 ]
  %596 = phi i64 [ 0, %317 ], [ %528, %526 ]
  %597 = phi i64 [ %315, %317 ], [ %527, %526 ]
  %598 = fcmp ueq double %595, %594
  br i1 %598, label %809, label %599

; <label>:599:                                    ; preds = %593
  %600 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 3
  %601 = load double, double* %600, align 8
  %602 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %8, i64 0, i32 0, i64 3
  %603 = load double, double* %602, align 8
  br label %875

; <label>:604:                                    ; preds = %526
  br i1 %533, label %820, label %809

; <label>:605:                                    ; preds = %526, %328
  %606 = phi double [ %332, %328 ], [ %532, %526 ]
  %607 = phi double [ %330, %328 ], [ %530, %526 ]
  %608 = phi i64 [ 0, %328 ], [ %528, %526 ]
  %609 = phi i64 [ %326, %328 ], [ %527, %526 ]
  %610 = fcmp ugt double %607, %606
  br i1 %610, label %809, label %611

; <label>:611:                                    ; preds = %605
  %612 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 3
  %613 = load double, double* %612, align 8
  %614 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %8, i64 0, i32 0, i64 3
  %615 = load double, double* %614, align 8
  br label %883

; <label>:616:                                    ; preds = %526, %338
  %617 = phi double [ %342, %338 ], [ %532, %526 ]
  %618 = phi double [ %340, %338 ], [ %530, %526 ]
  %619 = phi i64 [ 0, %338 ], [ %528, %526 ]
  %620 = phi i64 [ %336, %338 ], [ %527, %526 ]
  %621 = fcmp uge double %618, %617
  br i1 %621, label %809, label %622

; <label>:622:                                    ; preds = %616
  %623 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 3
  %624 = load double, double* %623, align 8
  %625 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %8, i64 0, i32 0, i64 3
  %626 = load double, double* %625, align 8
  br label %890

; <label>:627:                                    ; preds = %526, %348
  %628 = phi double [ %352, %348 ], [ %532, %526 ]
  %629 = phi double [ %350, %348 ], [ %530, %526 ]
  %630 = phi i64 [ 0, %348 ], [ %528, %526 ]
  %631 = phi i64 [ %346, %348 ], [ %527, %526 ]
  %632 = fcmp une double %629, %628
  br i1 %632, label %809, label %633

; <label>:633:                                    ; preds = %627
  %634 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 3
  %635 = load double, double* %634, align 8
  %636 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %8, i64 0, i32 0, i64 3
  %637 = load double, double* %636, align 8
  br label %897

; <label>:638:                                    ; preds = %526, %358
  %639 = phi double [ %362, %358 ], [ %532, %526 ]
  %640 = phi double [ %360, %358 ], [ %530, %526 ]
  %641 = phi i64 [ 0, %358 ], [ %528, %526 ]
  %642 = phi i64 [ %356, %358 ], [ %527, %526 ]
  %643 = fcmp ugt double %640, %639
  br i1 %643, label %644, label %809

; <label>:644:                                    ; preds = %638
  %645 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 3
  %646 = load double, double* %645, align 8
  %647 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %8, i64 0, i32 0, i64 3
  %648 = load double, double* %647, align 8
  br label %904

; <label>:649:                                    ; preds = %526, %368
  %650 = phi double [ %372, %368 ], [ %532, %526 ]
  %651 = phi double [ %370, %368 ], [ %530, %526 ]
  %652 = phi i64 [ 0, %368 ], [ %528, %526 ]
  %653 = phi i64 [ %366, %368 ], [ %527, %526 ]
  %654 = fcmp olt double %651, %650
  br i1 %654, label %809, label %655

; <label>:655:                                    ; preds = %649
  %656 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 3
  %657 = load double, double* %656, align 8
  %658 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %8, i64 0, i32 0, i64 3
  %659 = load double, double* %658, align 8
  br label %911

; <label>:660:                                    ; preds = %526, %380
  %661 = phi i1 [ %385, %380 ], [ %534, %526 ]
  %662 = phi double [ %384, %380 ], [ %532, %526 ]
  %663 = phi double [ %382, %380 ], [ %530, %526 ]
  %664 = phi i64 [ 0, %380 ], [ %528, %526 ]
  %665 = phi i64 [ %377, %380 ], [ %527, %526 ]
  %666 = fcmp oeq double %663, %662
  %667 = and i1 %666, %661
  br i1 %667, label %809, label %668

; <label>:668:                                    ; preds = %660
  %669 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 3
  %670 = load double, double* %669, align 8
  %671 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %8, i64 0, i32 0, i64 3
  %672 = load double, double* %671, align 8
  %673 = fcmp ord double %670, %672
  br label %918

; <label>:674:                                    ; preds = %526, %393
  %675 = phi i1 [ %398, %393 ], [ %534, %526 ]
  %676 = phi double [ %397, %393 ], [ %532, %526 ]
  %677 = phi double [ %395, %393 ], [ %530, %526 ]
  %678 = phi i64 [ 0, %393 ], [ %528, %526 ]
  %679 = phi i64 [ %390, %393 ], [ %527, %526 ]
  %680 = fcmp ogt double %677, %676
  %681 = and i1 %680, %675
  br i1 %681, label %809, label %682

; <label>:682:                                    ; preds = %674
  %683 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 3
  %684 = load double, double* %683, align 8
  %685 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %8, i64 0, i32 0, i64 3
  %686 = load double, double* %685, align 8
  %687 = fcmp ord double %684, %686
  br label %927

; <label>:688:                                    ; preds = %526, %406
  %689 = phi i1 [ %411, %406 ], [ %534, %526 ]
  %690 = phi double [ %410, %406 ], [ %532, %526 ]
  %691 = phi double [ %408, %406 ], [ %530, %526 ]
  %692 = phi i64 [ 0, %406 ], [ %528, %526 ]
  %693 = phi i64 [ %403, %406 ], [ %527, %526 ]
  %694 = fcmp oge double %691, %690
  %695 = and i1 %694, %689
  br i1 %695, label %809, label %696

; <label>:696:                                    ; preds = %688
  %697 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 3
  %698 = load double, double* %697, align 8
  %699 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %8, i64 0, i32 0, i64 3
  %700 = load double, double* %699, align 8
  %701 = fcmp ord double %698, %700
  br label %936

; <label>:702:                                    ; preds = %526, %417
  %703 = phi double [ %421, %417 ], [ %532, %526 ]
  %704 = phi double [ %419, %417 ], [ %530, %526 ]
  %705 = phi i64 [ 0, %417 ], [ %528, %526 ]
  %706 = phi i64 [ %415, %417 ], [ %527, %526 ]
  %707 = fcmp ueq double %704, %703
  br i1 %707, label %708, label %809

; <label>:708:                                    ; preds = %702
  %709 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 3
  %710 = load double, double* %709, align 8
  %711 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %8, i64 0, i32 0, i64 3
  %712 = load double, double* %711, align 8
  br label %945

; <label>:713:                                    ; preds = %526, %427
  %714 = phi double [ %431, %427 ], [ %532, %526 ]
  %715 = phi double [ %429, %427 ], [ %530, %526 ]
  %716 = phi i64 [ 0, %427 ], [ %528, %526 ]
  %717 = phi i64 [ %425, %427 ], [ %527, %526 ]
  %718 = fcmp ule double %715, %714
  br i1 %718, label %809, label %719

; <label>:719:                                    ; preds = %713
  %720 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 3
  %721 = load double, double* %720, align 8
  %722 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %8, i64 0, i32 0, i64 3
  %723 = load double, double* %722, align 8
  br label %952

; <label>:724:                                    ; preds = %526, %437
  %725 = phi double [ %441, %437 ], [ %532, %526 ]
  %726 = phi double [ %439, %437 ], [ %530, %526 ]
  %727 = phi i64 [ 0, %437 ], [ %528, %526 ]
  %728 = phi i64 [ %435, %437 ], [ %527, %526 ]
  %729 = fcmp ult double %726, %725
  br i1 %729, label %809, label %730

; <label>:730:                                    ; preds = %724
  %731 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 3
  %732 = load double, double* %731, align 8
  %733 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %8, i64 0, i32 0, i64 3
  %734 = load double, double* %733, align 8
  br label %959

; <label>:735:                                    ; preds = %526, %447
  %736 = phi double [ %451, %447 ], [ %532, %526 ]
  %737 = phi double [ %449, %447 ], [ %530, %526 ]
  %738 = phi i64 [ 0, %447 ], [ %528, %526 ]
  %739 = phi i64 [ %445, %447 ], [ %527, %526 ]
  %740 = fcmp ueq double %737, %736
  br i1 %740, label %809, label %741

; <label>:741:                                    ; preds = %735
  %742 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 3
  %743 = load double, double* %742, align 8
  %744 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %8, i64 0, i32 0, i64 3
  %745 = load double, double* %744, align 8
  br label %966

; <label>:746:                                    ; preds = %526
  br i1 %533, label %812, label %809

; <label>:747:                                    ; preds = %526, %458
  %748 = phi double [ %462, %458 ], [ %532, %526 ]
  %749 = phi double [ %460, %458 ], [ %530, %526 ]
  %750 = phi i64 [ 0, %458 ], [ %528, %526 ]
  %751 = phi i64 [ %456, %458 ], [ %527, %526 ]
  %752 = fcmp ugt double %749, %748
  br i1 %752, label %809, label %753

; <label>:753:                                    ; preds = %747
  %754 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 3
  %755 = load double, double* %754, align 8
  %756 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %8, i64 0, i32 0, i64 3
  %757 = load double, double* %756, align 8
  br label %974

; <label>:758:                                    ; preds = %526, %468
  %759 = phi double [ %472, %468 ], [ %532, %526 ]
  %760 = phi double [ %470, %468 ], [ %530, %526 ]
  %761 = phi i64 [ 0, %468 ], [ %528, %526 ]
  %762 = phi i64 [ %466, %468 ], [ %527, %526 ]
  %763 = fcmp uge double %760, %759
  br i1 %763, label %809, label %764

; <label>:764:                                    ; preds = %758
  %765 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 3
  %766 = load double, double* %765, align 8
  %767 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %8, i64 0, i32 0, i64 3
  %768 = load double, double* %767, align 8
  br label %981

; <label>:769:                                    ; preds = %526, %478
  %770 = phi double [ %482, %478 ], [ %532, %526 ]
  %771 = phi double [ %480, %478 ], [ %530, %526 ]
  %772 = phi i64 [ 0, %478 ], [ %528, %526 ]
  %773 = phi i64 [ %476, %478 ], [ %527, %526 ]
  %774 = fcmp une double %771, %770
  br i1 %774, label %809, label %775

; <label>:775:                                    ; preds = %769
  %776 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 3
  %777 = load double, double* %776, align 8
  %778 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %8, i64 0, i32 0, i64 3
  %779 = load double, double* %778, align 8
  br label %988

; <label>:780:                                    ; preds = %526, %526
  br i1 %533, label %809, label %828

; <label>:781:                                    ; preds = %526, %491
  %782 = phi i1 [ %496, %491 ], [ %534, %526 ]
  %783 = phi double [ %495, %491 ], [ %532, %526 ]
  %784 = phi double [ %493, %491 ], [ %530, %526 ]
  %785 = phi i64 [ 0, %491 ], [ %528, %526 ]
  %786 = phi i64 [ %488, %491 ], [ %527, %526 ]
  %787 = fcmp ole double %784, %783
  %788 = and i1 %787, %782
  br i1 %788, label %809, label %789

; <label>:789:                                    ; preds = %781
  %790 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 3
  %791 = load double, double* %790, align 8
  %792 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %8, i64 0, i32 0, i64 3
  %793 = load double, double* %792, align 8
  %794 = fcmp ord double %791, %793
  br label %996

; <label>:795:                                    ; preds = %526, %504
  %796 = phi i1 [ %509, %504 ], [ %534, %526 ]
  %797 = phi double [ %508, %504 ], [ %532, %526 ]
  %798 = phi double [ %506, %504 ], [ %530, %526 ]
  %799 = phi i64 [ 0, %504 ], [ %528, %526 ]
  %800 = phi i64 [ %501, %504 ], [ %527, %526 ]
  %801 = fcmp olt double %798, %797
  %802 = and i1 %801, %796
  br i1 %802, label %809, label %803

; <label>:803:                                    ; preds = %795
  %804 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 3
  %805 = load double, double* %804, align 8
  %806 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %8, i64 0, i32 0, i64 3
  %807 = load double, double* %806, align 8
  %808 = fcmp ord double %805, %807
  br label %1005

; <label>:809:                                    ; preds = %795, %781, %780, %769, %758, %747, %746, %735, %724, %713, %702, %688, %674, %660, %649, %638, %627, %616, %605, %604, %593, %582, %571, %557, %546, %535, %526, %526, %519, %512
  %810 = phi i64 [ %799, %795 ], [ %785, %781 ], [ %528, %780 ], [ %772, %769 ], [ %761, %758 ], [ %750, %747 ], [ %528, %746 ], [ %738, %735 ], [ %727, %724 ], [ %716, %713 ], [ %705, %702 ], [ %692, %688 ], [ %678, %674 ], [ %664, %660 ], [ %652, %649 ], [ %641, %638 ], [ %630, %627 ], [ %619, %616 ], [ %608, %605 ], [ %528, %604 ], [ %596, %593 ], [ %585, %582 ], [ %574, %571 ], [ %561, %557 ], [ %549, %546 ], [ %538, %535 ], [ %528, %526 ], [ %528, %526 ], [ 0, %519 ], [ 0, %512 ]
  %811 = phi i64 [ %800, %795 ], [ %786, %781 ], [ %527, %780 ], [ %773, %769 ], [ %762, %758 ], [ %751, %747 ], [ %527, %746 ], [ %739, %735 ], [ %728, %724 ], [ %717, %713 ], [ %706, %702 ], [ %693, %688 ], [ %679, %674 ], [ %665, %660 ], [ %653, %649 ], [ %642, %638 ], [ %631, %627 ], [ %620, %616 ], [ %609, %605 ], [ %527, %604 ], [ %597, %593 ], [ %586, %582 ], [ %575, %571 ], [ %562, %557 ], [ %550, %546 ], [ %539, %535 ], [ %527, %526 ], [ %527, %526 ], [ %520, %519 ], [ %513, %512 ]
  br label %828

; <label>:812:                                    ; preds = %746, %512
  %813 = phi i64 [ 0, %512 ], [ %528, %746 ]
  %814 = phi i64 [ %513, %512 ], [ %527, %746 ]
  %815 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 3
  %816 = load double, double* %815, align 8
  %817 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %8, i64 0, i32 0, i64 3
  %818 = load double, double* %817, align 8
  %819 = fcmp uno double %816, %818
  br i1 %819, label %47, label %1014

; <label>:820:                                    ; preds = %604, %519
  %821 = phi i64 [ 0, %519 ], [ %528, %604 ]
  %822 = phi i64 [ %520, %519 ], [ %527, %604 ]
  %823 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 3
  %824 = load double, double* %823, align 8
  %825 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %8, i64 0, i32 0, i64 3
  %826 = load double, double* %825, align 8
  %827 = fcmp uno double %824, %826
  br i1 %827, label %47, label %1014

; <label>:828:                                    ; preds = %809, %780, %526, %526
  %829 = phi i64 [ %810, %809 ], [ %528, %780 ], [ %528, %526 ], [ %528, %526 ]
  %830 = phi i64 [ %811, %809 ], [ %527, %780 ], [ %527, %526 ], [ %527, %526 ]
  %831 = phi i64 [ -1, %809 ], [ 0, %780 ], [ 0, %526 ], [ 0, %526 ]
  %832 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %7, i64 0, i32 0, i64 3
  %833 = load double, double* %832, align 8
  %834 = getelementptr inbounds %struct.float64v4_t, %struct.float64v4_t* %8, i64 0, i32 0, i64 3
  %835 = load double, double* %834, align 8
  %836 = fcmp uno double %833, %835
  %837 = xor i1 %836, true
  switch i8 %11, label %246 [
    i8 31, label %1014
    i8 1, label %1005
    i8 2, label %996
    i8 3, label %995
    i8 4, label %988
    i8 5, label %981
    i8 6, label %974
    i8 7, label %973
    i8 8, label %966
    i8 9, label %959
    i8 10, label %952
    i8 11, label %47
    i8 12, label %945
    i8 13, label %936
    i8 14, label %927
    i8 15, label %1014
    i8 16, label %918
    i8 17, label %911
    i8 18, label %904
    i8 19, label %995
    i8 20, label %897
    i8 21, label %890
    i8 22, label %883
    i8 23, label %882
    i8 24, label %875
    i8 25, label %868
    i8 26, label %861
    i8 27, label %47
    i8 28, label %852
    i8 29, label %845
    i8 30, label %838
  ]

; <label>:838:                                    ; preds = %828, %541
  %839 = phi double [ %545, %541 ], [ %835, %828 ]
  %840 = phi double [ %543, %541 ], [ %833, %828 ]
  %841 = phi i64 [ 0, %541 ], [ %831, %828 ]
  %842 = phi i64 [ %539, %541 ], [ %830, %828 ]
  %843 = phi i64 [ %538, %541 ], [ %829, %828 ]
  %844 = fcmp ogt double %840, %839
  br i1 %844, label %1014, label %47

; <label>:845:                                    ; preds = %828, %552
  %846 = phi double [ %556, %552 ], [ %835, %828 ]
  %847 = phi double [ %554, %552 ], [ %833, %828 ]
  %848 = phi i64 [ 0, %552 ], [ %831, %828 ]
  %849 = phi i64 [ %550, %552 ], [ %830, %828 ]
  %850 = phi i64 [ %549, %552 ], [ %829, %828 ]
  %851 = fcmp ult double %847, %846
  br i1 %851, label %47, label %1014

; <label>:852:                                    ; preds = %828, %565
  %853 = phi i1 [ %570, %565 ], [ %837, %828 ]
  %854 = phi double [ %569, %565 ], [ %835, %828 ]
  %855 = phi double [ %567, %565 ], [ %833, %828 ]
  %856 = phi i64 [ 0, %565 ], [ %831, %828 ]
  %857 = phi i64 [ %562, %565 ], [ %830, %828 ]
  %858 = phi i64 [ %561, %565 ], [ %829, %828 ]
  %859 = fcmp une double %855, %854
  %860 = and i1 %859, %853
  br i1 %860, label %1014, label %47

; <label>:861:                                    ; preds = %828, %577
  %862 = phi double [ %581, %577 ], [ %835, %828 ]
  %863 = phi double [ %579, %577 ], [ %833, %828 ]
  %864 = phi i64 [ 0, %577 ], [ %831, %828 ]
  %865 = phi i64 [ %575, %577 ], [ %830, %828 ]
  %866 = phi i64 [ %574, %577 ], [ %829, %828 ]
  %867 = fcmp ule double %863, %862
  br i1 %867, label %1014, label %47

; <label>:868:                                    ; preds = %828, %588
  %869 = phi double [ %592, %588 ], [ %835, %828 ]
  %870 = phi double [ %590, %588 ], [ %833, %828 ]
  %871 = phi i64 [ 0, %588 ], [ %831, %828 ]
  %872 = phi i64 [ %586, %588 ], [ %830, %828 ]
  %873 = phi i64 [ %585, %588 ], [ %829, %828 ]
  %874 = fcmp ult double %870, %869
  br i1 %874, label %1014, label %47

; <label>:875:                                    ; preds = %828, %599
  %876 = phi double [ %603, %599 ], [ %835, %828 ]
  %877 = phi double [ %601, %599 ], [ %833, %828 ]
  %878 = phi i64 [ 0, %599 ], [ %831, %828 ]
  %879 = phi i64 [ %597, %599 ], [ %830, %828 ]
  %880 = phi i64 [ %596, %599 ], [ %829, %828 ]
  %881 = fcmp ueq double %877, %876
  br i1 %881, label %1014, label %47

; <label>:882:                                    ; preds = %828
  br i1 %836, label %47, label %1014

; <label>:883:                                    ; preds = %828, %611
  %884 = phi double [ %615, %611 ], [ %835, %828 ]
  %885 = phi double [ %613, %611 ], [ %833, %828 ]
  %886 = phi i64 [ 0, %611 ], [ %831, %828 ]
  %887 = phi i64 [ %609, %611 ], [ %830, %828 ]
  %888 = phi i64 [ %608, %611 ], [ %829, %828 ]
  %889 = fcmp ugt double %885, %884
  br i1 %889, label %1014, label %47

; <label>:890:                                    ; preds = %828, %622
  %891 = phi double [ %626, %622 ], [ %835, %828 ]
  %892 = phi double [ %624, %622 ], [ %833, %828 ]
  %893 = phi i64 [ 0, %622 ], [ %831, %828 ]
  %894 = phi i64 [ %620, %622 ], [ %830, %828 ]
  %895 = phi i64 [ %619, %622 ], [ %829, %828 ]
  %896 = fcmp uge double %892, %891
  br i1 %896, label %1014, label %47

; <label>:897:                                    ; preds = %828, %633
  %898 = phi double [ %637, %633 ], [ %835, %828 ]
  %899 = phi double [ %635, %633 ], [ %833, %828 ]
  %900 = phi i64 [ 0, %633 ], [ %831, %828 ]
  %901 = phi i64 [ %631, %633 ], [ %830, %828 ]
  %902 = phi i64 [ %630, %633 ], [ %829, %828 ]
  %903 = fcmp une double %899, %898
  br i1 %903, label %1014, label %47

; <label>:904:                                    ; preds = %828, %644
  %905 = phi double [ %648, %644 ], [ %835, %828 ]
  %906 = phi double [ %646, %644 ], [ %833, %828 ]
  %907 = phi i64 [ 0, %644 ], [ %831, %828 ]
  %908 = phi i64 [ %642, %644 ], [ %830, %828 ]
  %909 = phi i64 [ %641, %644 ], [ %829, %828 ]
  %910 = fcmp ugt double %906, %905
  br i1 %910, label %47, label %1014

; <label>:911:                                    ; preds = %828, %655
  %912 = phi double [ %659, %655 ], [ %835, %828 ]
  %913 = phi double [ %657, %655 ], [ %833, %828 ]
  %914 = phi i64 [ 0, %655 ], [ %831, %828 ]
  %915 = phi i64 [ %653, %655 ], [ %830, %828 ]
  %916 = phi i64 [ %652, %655 ], [ %829, %828 ]
  %917 = fcmp olt double %913, %912
  br i1 %917, label %1014, label %47

; <label>:918:                                    ; preds = %828, %668
  %919 = phi i1 [ %673, %668 ], [ %837, %828 ]
  %920 = phi double [ %672, %668 ], [ %835, %828 ]
  %921 = phi double [ %670, %668 ], [ %833, %828 ]
  %922 = phi i64 [ 0, %668 ], [ %831, %828 ]
  %923 = phi i64 [ %665, %668 ], [ %830, %828 ]
  %924 = phi i64 [ %664, %668 ], [ %829, %828 ]
  %925 = fcmp oeq double %921, %920
  %926 = and i1 %925, %919
  br i1 %926, label %1014, label %47

; <label>:927:                                    ; preds = %828, %682
  %928 = phi i1 [ %687, %682 ], [ %837, %828 ]
  %929 = phi double [ %686, %682 ], [ %835, %828 ]
  %930 = phi double [ %684, %682 ], [ %833, %828 ]
  %931 = phi i64 [ 0, %682 ], [ %831, %828 ]
  %932 = phi i64 [ %679, %682 ], [ %830, %828 ]
  %933 = phi i64 [ %678, %682 ], [ %829, %828 ]
  %934 = fcmp ogt double %930, %929
  %935 = and i1 %934, %928
  br i1 %935, label %1014, label %47

; <label>:936:                                    ; preds = %828, %696
  %937 = phi i1 [ %701, %696 ], [ %837, %828 ]
  %938 = phi double [ %700, %696 ], [ %835, %828 ]
  %939 = phi double [ %698, %696 ], [ %833, %828 ]
  %940 = phi i64 [ 0, %696 ], [ %831, %828 ]
  %941 = phi i64 [ %693, %696 ], [ %830, %828 ]
  %942 = phi i64 [ %692, %696 ], [ %829, %828 ]
  %943 = fcmp oge double %939, %938
  %944 = and i1 %943, %937
  br i1 %944, label %1014, label %47

; <label>:945:                                    ; preds = %828, %708
  %946 = phi double [ %712, %708 ], [ %835, %828 ]
  %947 = phi double [ %710, %708 ], [ %833, %828 ]
  %948 = phi i64 [ 0, %708 ], [ %831, %828 ]
  %949 = phi i64 [ %706, %708 ], [ %830, %828 ]
  %950 = phi i64 [ %705, %708 ], [ %829, %828 ]
  %951 = fcmp ueq double %947, %946
  br i1 %951, label %47, label %1014

; <label>:952:                                    ; preds = %828, %719
  %953 = phi double [ %723, %719 ], [ %835, %828 ]
  %954 = phi double [ %721, %719 ], [ %833, %828 ]
  %955 = phi i64 [ 0, %719 ], [ %831, %828 ]
  %956 = phi i64 [ %717, %719 ], [ %830, %828 ]
  %957 = phi i64 [ %716, %719 ], [ %829, %828 ]
  %958 = fcmp ule double %954, %953
  br i1 %958, label %1014, label %47

; <label>:959:                                    ; preds = %828, %730
  %960 = phi double [ %734, %730 ], [ %835, %828 ]
  %961 = phi double [ %732, %730 ], [ %833, %828 ]
  %962 = phi i64 [ 0, %730 ], [ %831, %828 ]
  %963 = phi i64 [ %728, %730 ], [ %830, %828 ]
  %964 = phi i64 [ %727, %730 ], [ %829, %828 ]
  %965 = fcmp ult double %961, %960
  br i1 %965, label %1014, label %47

; <label>:966:                                    ; preds = %828, %741
  %967 = phi double [ %745, %741 ], [ %835, %828 ]
  %968 = phi double [ %743, %741 ], [ %833, %828 ]
  %969 = phi i64 [ 0, %741 ], [ %831, %828 ]
  %970 = phi i64 [ %739, %741 ], [ %830, %828 ]
  %971 = phi i64 [ %738, %741 ], [ %829, %828 ]
  %972 = fcmp ueq double %968, %967
  br i1 %972, label %1014, label %47

; <label>:973:                                    ; preds = %828
  br i1 %836, label %47, label %1014

; <label>:974:                                    ; preds = %828, %753
  %975 = phi double [ %757, %753 ], [ %835, %828 ]
  %976 = phi double [ %755, %753 ], [ %833, %828 ]
  %977 = phi i64 [ 0, %753 ], [ %831, %828 ]
  %978 = phi i64 [ %751, %753 ], [ %830, %828 ]
  %979 = phi i64 [ %750, %753 ], [ %829, %828 ]
  %980 = fcmp ugt double %976, %975
  br i1 %980, label %1014, label %47

; <label>:981:                                    ; preds = %828, %764
  %982 = phi double [ %768, %764 ], [ %835, %828 ]
  %983 = phi double [ %766, %764 ], [ %833, %828 ]
  %984 = phi i64 [ 0, %764 ], [ %831, %828 ]
  %985 = phi i64 [ %762, %764 ], [ %830, %828 ]
  %986 = phi i64 [ %761, %764 ], [ %829, %828 ]
  %987 = fcmp uge double %983, %982
  br i1 %987, label %1014, label %47

; <label>:988:                                    ; preds = %828, %775
  %989 = phi double [ %779, %775 ], [ %835, %828 ]
  %990 = phi double [ %777, %775 ], [ %833, %828 ]
  %991 = phi i64 [ 0, %775 ], [ %831, %828 ]
  %992 = phi i64 [ %773, %775 ], [ %830, %828 ]
  %993 = phi i64 [ %772, %775 ], [ %829, %828 ]
  %994 = fcmp une double %990, %989
  br i1 %994, label %1014, label %47

; <label>:995:                                    ; preds = %828, %828
  br i1 %836, label %1014, label %47

; <label>:996:                                    ; preds = %828, %789
  %997 = phi i1 [ %794, %789 ], [ %837, %828 ]
  %998 = phi double [ %793, %789 ], [ %835, %828 ]
  %999 = phi double [ %791, %789 ], [ %833, %828 ]
  %1000 = phi i64 [ 0, %789 ], [ %831, %828 ]
  %1001 = phi i64 [ %786, %789 ], [ %830, %828 ]
  %1002 = phi i64 [ %785, %789 ], [ %829, %828 ]
  %1003 = fcmp ole double %999, %998
  %1004 = and i1 %1003, %997
  br i1 %1004, label %1014, label %47

; <label>:1005:                                   ; preds = %828, %803
  %1006 = phi i1 [ %808, %803 ], [ %837, %828 ]
  %1007 = phi double [ %807, %803 ], [ %835, %828 ]
  %1008 = phi double [ %805, %803 ], [ %833, %828 ]
  %1009 = phi i64 [ 0, %803 ], [ %831, %828 ]
  %1010 = phi i64 [ %800, %803 ], [ %830, %828 ]
  %1011 = phi i64 [ %799, %803 ], [ %829, %828 ]
  %1012 = fcmp olt double %1008, %1007
  %1013 = and i1 %1012, %1006
  br i1 %1013, label %1014, label %47

; <label>:1014:                                   ; preds = %1005, %996, %995, %988, %981, %974, %973, %966, %959, %952, %945, %936, %927, %918, %911, %904, %897, %890, %883, %882, %875, %868, %861, %852, %845, %838, %828, %828, %820, %812
  %1015 = phi i64 [ %1009, %1005 ], [ %1000, %996 ], [ %831, %995 ], [ %991, %988 ], [ %984, %981 ], [ %977, %974 ], [ %831, %973 ], [ %969, %966 ], [ %962, %959 ], [ %955, %952 ], [ %948, %945 ], [ %940, %936 ], [ %931, %927 ], [ %922, %918 ], [ %914, %911 ], [ %907, %904 ], [ %900, %897 ], [ %893, %890 ], [ %886, %883 ], [ %831, %882 ], [ %878, %875 ], [ %871, %868 ], [ %864, %861 ], [ %856, %852 ], [ %848, %845 ], [ %841, %838 ], [ %831, %828 ], [ %831, %828 ], [ 0, %820 ], [ 0, %812 ]
  %1016 = phi i64 [ %1010, %1005 ], [ %1001, %996 ], [ %830, %995 ], [ %992, %988 ], [ %985, %981 ], [ %978, %974 ], [ %830, %973 ], [ %970, %966 ], [ %963, %959 ], [ %956, %952 ], [ %949, %945 ], [ %941, %936 ], [ %932, %927 ], [ %923, %918 ], [ %915, %911 ], [ %908, %904 ], [ %901, %897 ], [ %894, %890 ], [ %887, %883 ], [ %830, %882 ], [ %879, %875 ], [ %872, %868 ], [ %865, %861 ], [ %857, %852 ], [ %849, %845 ], [ %842, %838 ], [ %830, %828 ], [ %830, %828 ], [ %822, %820 ], [ %814, %812 ]
  %1017 = phi i64 [ %1011, %1005 ], [ %1002, %996 ], [ %829, %995 ], [ %993, %988 ], [ %986, %981 ], [ %979, %974 ], [ %829, %973 ], [ %971, %966 ], [ %964, %959 ], [ %957, %952 ], [ %950, %945 ], [ %942, %936 ], [ %933, %927 ], [ %924, %918 ], [ %916, %911 ], [ %909, %904 ], [ %902, %897 ], [ %895, %890 ], [ %888, %883 ], [ %829, %882 ], [ %880, %875 ], [ %873, %868 ], [ %866, %861 ], [ %858, %852 ], [ %850, %845 ], [ %843, %838 ], [ %829, %828 ], [ %829, %828 ], [ %821, %820 ], [ %813, %812 ]
  br label %47
}

define %struct.Memory* @routine_vcmppd_ymm_ymm_ymm_imm8(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #19 {
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
  %YMM2 = bitcast %union.VectorReg* %9 to %"class.std::bitset"*
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %11 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %10, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %11 to %"class.std::bitset"*
  %12 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %13 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %14 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5CMPPDI3VnWI8vec256_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_2InIhE(%struct.Memory* %2, %struct.State* %0, i8* %12, i8* %13, i8* %14, i64 10)
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
  %call = call %struct.Memory* @routine_vcmppd_ymm_ymm_ymm_imm8(%struct.State* %state, i64 0, %struct.Memory* %mem)
  ret i32 0
}