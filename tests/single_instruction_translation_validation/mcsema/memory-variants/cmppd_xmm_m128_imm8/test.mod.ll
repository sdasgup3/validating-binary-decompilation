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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5CMPPDI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_2InIhE(%struct.Memory*, %struct.State* dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i64, i64) #0 {
  %7 = bitcast i8* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = getelementptr inbounds i8, i8* %3, i64 8
  %10 = bitcast i8* %9 to double*
  %11 = load double, double* %10, align 1
  %12 = inttoptr i64 %4 to double*
  %13 = load double, double* %12
  %14 = add i64 %4, 8
  %15 = inttoptr i64 %14 to double*
  %16 = load double, double* %15
  %17 = trunc i64 %5 to i8
  %18 = icmp ugt i8 %17, 31
  br i1 %18, label %29, label %19

; <label>:19:                                     ; preds = %6
  %20 = icmp eq i8 %17, 0
  br i1 %20, label %24, label %21

; <label>:21:                                     ; preds = %19
  %22 = fcmp uno double %8, %13
  %23 = xor i1 %22, true
  switch i8 %17, label %109 [
    i8 31, label %111
    i8 1, label %39
    i8 2, label %44
    i8 3, label %110
    i8 4, label %49
    i8 5, label %51
    i8 6, label %53
    i8 7, label %55
    i8 8, label %58
    i8 9, label %60
    i8 10, label %62
    i8 11, label %112
    i8 12, label %64
    i8 13, label %66
    i8 14, label %71
    i8 15, label %111
    i8 16, label %76
    i8 17, label %81
    i8 18, label %83
    i8 19, label %110
    i8 20, label %85
    i8 21, label %87
    i8 22, label %89
    i8 23, label %91
    i8 24, label %94
    i8 25, label %96
    i8 26, label %98
    i8 27, label %112
    i8 28, label %100
    i8 29, label %105
    i8 30, label %107
  ]

; <label>:24:                                     ; preds = %19
  %25 = fcmp oeq double %8, %13
  %26 = sext i1 %25 to i64
  %27 = fcmp oeq double %11, %16
  %28 = sext i1 %27 to i64
  br label %33

; <label>:29:                                     ; preds = %6
  %30 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %1, i64 %31, %struct.Memory* %0) #21
  br label %116

; <label>:33:                                     ; preds = %202, %197, %192, %191, %188, %185, %182, %181, %178, %175, %172, %169, %164, %159, %154, %151, %148, %145, %142, %139, %138, %135, %132, %129, %124, %121, %118, %112, %112, %92, %56, %24
  %34 = phi i64 [ %28, %24 ], [ -1, %202 ], [ 0, %191 ], [ 0, %118 ], [ 0, %121 ], [ 0, %124 ], [ 0, %129 ], [ 0, %132 ], [ 0, %135 ], [ 0, %138 ], [ 0, %139 ], [ 0, %142 ], [ 0, %145 ], [ 0, %148 ], [ 0, %151 ], [ 0, %154 ], [ 0, %159 ], [ 0, %164 ], [ 0, %169 ], [ 0, %172 ], [ 0, %175 ], [ 0, %178 ], [ 0, %181 ], [ 0, %182 ], [ 0, %185 ], [ 0, %188 ], [ 0, %192 ], [ 0, %197 ], [ 0, %112 ], [ 0, %112 ], [ 0, %92 ], [ 0, %56 ]
  %35 = phi i64 [ %26, %24 ], [ %203, %202 ], [ %113, %191 ], [ %119, %118 ], [ %122, %121 ], [ %126, %124 ], [ %130, %129 ], [ %133, %132 ], [ %136, %135 ], [ %113, %138 ], [ %140, %139 ], [ %143, %142 ], [ %146, %145 ], [ %149, %148 ], [ %152, %151 ], [ %156, %154 ], [ %161, %159 ], [ %166, %164 ], [ %170, %169 ], [ %173, %172 ], [ %176, %175 ], [ %179, %178 ], [ %113, %181 ], [ %183, %182 ], [ %186, %185 ], [ %189, %188 ], [ %194, %192 ], [ %199, %197 ], [ %113, %112 ], [ %113, %112 ], [ 0, %92 ], [ 0, %56 ]
  %36 = bitcast i8* %2 to i64*
  store i64 %35, i64* %36, align 1
  %37 = getelementptr inbounds i8, i8* %2, i64 8
  %38 = bitcast i8* %37 to i64*
  store i64 %34, i64* %38, align 1
  br label %116

; <label>:39:                                     ; preds = %21
  %40 = fcmp olt double %8, %13
  %41 = and i1 %40, %23
  br i1 %41, label %111, label %42

; <label>:42:                                     ; preds = %39
  %43 = fcmp ord double %11, %16
  br label %197

; <label>:44:                                     ; preds = %21
  %45 = fcmp ole double %8, %13
  %46 = and i1 %45, %23
  br i1 %46, label %111, label %47

; <label>:47:                                     ; preds = %44
  %48 = fcmp ord double %11, %16
  br label %192

; <label>:49:                                     ; preds = %21
  %50 = fcmp une double %8, %13
  br i1 %50, label %111, label %188

; <label>:51:                                     ; preds = %21
  %52 = fcmp uge double %8, %13
  br i1 %52, label %111, label %185

; <label>:53:                                     ; preds = %21
  %54 = fcmp ugt double %8, %13
  br i1 %54, label %111, label %182

; <label>:55:                                     ; preds = %21
  br i1 %22, label %56, label %111

; <label>:56:                                     ; preds = %55
  %57 = fcmp uno double %11, %16
  br i1 %57, label %33, label %202

; <label>:58:                                     ; preds = %21
  %59 = fcmp ueq double %8, %13
  br i1 %59, label %111, label %178

; <label>:60:                                     ; preds = %21
  %61 = fcmp ult double %8, %13
  br i1 %61, label %111, label %175

; <label>:62:                                     ; preds = %21
  %63 = fcmp ule double %8, %13
  br i1 %63, label %111, label %172

; <label>:64:                                     ; preds = %21
  %65 = fcmp ueq double %8, %13
  br i1 %65, label %169, label %111

; <label>:66:                                     ; preds = %21
  %67 = fcmp oge double %8, %13
  %68 = and i1 %67, %23
  br i1 %68, label %111, label %69

; <label>:69:                                     ; preds = %66
  %70 = fcmp ord double %11, %16
  br label %164

; <label>:71:                                     ; preds = %21
  %72 = fcmp ogt double %8, %13
  %73 = and i1 %72, %23
  br i1 %73, label %111, label %74

; <label>:74:                                     ; preds = %71
  %75 = fcmp ord double %11, %16
  br label %159

; <label>:76:                                     ; preds = %21
  %77 = fcmp oeq double %8, %13
  %78 = and i1 %77, %23
  br i1 %78, label %111, label %79

; <label>:79:                                     ; preds = %76
  %80 = fcmp ord double %11, %16
  br label %154

; <label>:81:                                     ; preds = %21
  %82 = fcmp olt double %8, %13
  br i1 %82, label %111, label %151

; <label>:83:                                     ; preds = %21
  %84 = fcmp ugt double %8, %13
  br i1 %84, label %148, label %111

; <label>:85:                                     ; preds = %21
  %86 = fcmp une double %8, %13
  br i1 %86, label %111, label %145

; <label>:87:                                     ; preds = %21
  %88 = fcmp uge double %8, %13
  br i1 %88, label %111, label %142

; <label>:89:                                     ; preds = %21
  %90 = fcmp ugt double %8, %13
  br i1 %90, label %111, label %139

; <label>:91:                                     ; preds = %21
  br i1 %22, label %92, label %111

; <label>:92:                                     ; preds = %91
  %93 = fcmp uno double %11, %16
  br i1 %93, label %33, label %202

; <label>:94:                                     ; preds = %21
  %95 = fcmp ueq double %8, %13
  br i1 %95, label %111, label %135

; <label>:96:                                     ; preds = %21
  %97 = fcmp ult double %8, %13
  br i1 %97, label %111, label %132

; <label>:98:                                     ; preds = %21
  %99 = fcmp ule double %8, %13
  br i1 %99, label %111, label %129

; <label>:100:                                    ; preds = %21
  %101 = fcmp une double %8, %13
  %102 = and i1 %101, %23
  br i1 %102, label %111, label %103

; <label>:103:                                    ; preds = %100
  %104 = fcmp ord double %11, %16
  br label %124

; <label>:105:                                    ; preds = %21
  %106 = fcmp ult double %8, %13
  br i1 %106, label %121, label %111

; <label>:107:                                    ; preds = %21
  %108 = fcmp ogt double %8, %13
  br i1 %108, label %111, label %118

; <label>:109:                                    ; preds = %112, %21
  unreachable

; <label>:110:                                    ; preds = %21, %21
  br i1 %22, label %111, label %112

; <label>:111:                                    ; preds = %110, %107, %105, %100, %98, %96, %94, %91, %89, %87, %85, %83, %81, %76, %71, %66, %64, %62, %60, %58, %55, %53, %51, %49, %44, %39, %21, %21
  br label %112

; <label>:112:                                    ; preds = %111, %110, %21, %21
  %113 = phi i64 [ -1, %111 ], [ 0, %110 ], [ 0, %21 ], [ 0, %21 ]
  %114 = fcmp uno double %11, %16
  %115 = xor i1 %114, true
  switch i8 %17, label %109 [
    i8 31, label %202
    i8 1, label %197
    i8 2, label %192
    i8 3, label %191
    i8 4, label %188
    i8 5, label %185
    i8 6, label %182
    i8 7, label %181
    i8 8, label %178
    i8 9, label %175
    i8 10, label %172
    i8 11, label %33
    i8 12, label %169
    i8 13, label %164
    i8 14, label %159
    i8 15, label %202
    i8 16, label %154
    i8 17, label %151
    i8 18, label %148
    i8 19, label %191
    i8 20, label %145
    i8 21, label %142
    i8 22, label %139
    i8 23, label %138
    i8 24, label %135
    i8 25, label %132
    i8 26, label %129
    i8 27, label %33
    i8 28, label %124
    i8 29, label %121
    i8 30, label %118
  ]

; <label>:116:                                    ; preds = %33, %29
  %117 = phi %struct.Memory* [ %32, %29 ], [ %0, %33 ]
  ret %struct.Memory* %117

; <label>:118:                                    ; preds = %112, %107
  %119 = phi i64 [ %113, %112 ], [ 0, %107 ]
  %120 = fcmp ogt double %11, %16
  br i1 %120, label %202, label %33

; <label>:121:                                    ; preds = %112, %105
  %122 = phi i64 [ %113, %112 ], [ 0, %105 ]
  %123 = fcmp ult double %11, %16
  br i1 %123, label %33, label %202

; <label>:124:                                    ; preds = %112, %103
  %125 = phi i1 [ %104, %103 ], [ %115, %112 ]
  %126 = phi i64 [ 0, %103 ], [ %113, %112 ]
  %127 = fcmp une double %11, %16
  %128 = and i1 %127, %125
  br i1 %128, label %202, label %33

; <label>:129:                                    ; preds = %112, %98
  %130 = phi i64 [ %113, %112 ], [ 0, %98 ]
  %131 = fcmp ule double %11, %16
  br i1 %131, label %202, label %33

; <label>:132:                                    ; preds = %112, %96
  %133 = phi i64 [ %113, %112 ], [ 0, %96 ]
  %134 = fcmp ult double %11, %16
  br i1 %134, label %202, label %33

; <label>:135:                                    ; preds = %112, %94
  %136 = phi i64 [ %113, %112 ], [ 0, %94 ]
  %137 = fcmp ueq double %11, %16
  br i1 %137, label %202, label %33

; <label>:138:                                    ; preds = %112
  br i1 %114, label %33, label %202

; <label>:139:                                    ; preds = %112, %89
  %140 = phi i64 [ %113, %112 ], [ 0, %89 ]
  %141 = fcmp ugt double %11, %16
  br i1 %141, label %202, label %33

; <label>:142:                                    ; preds = %112, %87
  %143 = phi i64 [ %113, %112 ], [ 0, %87 ]
  %144 = fcmp uge double %11, %16
  br i1 %144, label %202, label %33

; <label>:145:                                    ; preds = %112, %85
  %146 = phi i64 [ %113, %112 ], [ 0, %85 ]
  %147 = fcmp une double %11, %16
  br i1 %147, label %202, label %33

; <label>:148:                                    ; preds = %112, %83
  %149 = phi i64 [ %113, %112 ], [ 0, %83 ]
  %150 = fcmp ugt double %11, %16
  br i1 %150, label %33, label %202

; <label>:151:                                    ; preds = %112, %81
  %152 = phi i64 [ %113, %112 ], [ 0, %81 ]
  %153 = fcmp olt double %11, %16
  br i1 %153, label %202, label %33

; <label>:154:                                    ; preds = %112, %79
  %155 = phi i1 [ %80, %79 ], [ %115, %112 ]
  %156 = phi i64 [ 0, %79 ], [ %113, %112 ]
  %157 = fcmp oeq double %11, %16
  %158 = and i1 %157, %155
  br i1 %158, label %202, label %33

; <label>:159:                                    ; preds = %112, %74
  %160 = phi i1 [ %75, %74 ], [ %115, %112 ]
  %161 = phi i64 [ 0, %74 ], [ %113, %112 ]
  %162 = fcmp ogt double %11, %16
  %163 = and i1 %162, %160
  br i1 %163, label %202, label %33

; <label>:164:                                    ; preds = %112, %69
  %165 = phi i1 [ %70, %69 ], [ %115, %112 ]
  %166 = phi i64 [ 0, %69 ], [ %113, %112 ]
  %167 = fcmp oge double %11, %16
  %168 = and i1 %167, %165
  br i1 %168, label %202, label %33

; <label>:169:                                    ; preds = %112, %64
  %170 = phi i64 [ %113, %112 ], [ 0, %64 ]
  %171 = fcmp ueq double %11, %16
  br i1 %171, label %33, label %202

; <label>:172:                                    ; preds = %112, %62
  %173 = phi i64 [ %113, %112 ], [ 0, %62 ]
  %174 = fcmp ule double %11, %16
  br i1 %174, label %202, label %33

; <label>:175:                                    ; preds = %112, %60
  %176 = phi i64 [ %113, %112 ], [ 0, %60 ]
  %177 = fcmp ult double %11, %16
  br i1 %177, label %202, label %33

; <label>:178:                                    ; preds = %112, %58
  %179 = phi i64 [ %113, %112 ], [ 0, %58 ]
  %180 = fcmp ueq double %11, %16
  br i1 %180, label %202, label %33

; <label>:181:                                    ; preds = %112
  br i1 %114, label %33, label %202

; <label>:182:                                    ; preds = %112, %53
  %183 = phi i64 [ %113, %112 ], [ 0, %53 ]
  %184 = fcmp ugt double %11, %16
  br i1 %184, label %202, label %33

; <label>:185:                                    ; preds = %112, %51
  %186 = phi i64 [ %113, %112 ], [ 0, %51 ]
  %187 = fcmp uge double %11, %16
  br i1 %187, label %202, label %33

; <label>:188:                                    ; preds = %112, %49
  %189 = phi i64 [ %113, %112 ], [ 0, %49 ]
  %190 = fcmp une double %11, %16
  br i1 %190, label %202, label %33

; <label>:191:                                    ; preds = %112, %112
  br i1 %114, label %202, label %33

; <label>:192:                                    ; preds = %112, %47
  %193 = phi i1 [ %48, %47 ], [ %115, %112 ]
  %194 = phi i64 [ 0, %47 ], [ %113, %112 ]
  %195 = fcmp ole double %11, %16
  %196 = and i1 %195, %193
  br i1 %196, label %202, label %33

; <label>:197:                                    ; preds = %112, %42
  %198 = phi i1 [ %43, %42 ], [ %115, %112 ]
  %199 = phi i64 [ 0, %42 ], [ %113, %112 ]
  %200 = fcmp olt double %11, %16
  %201 = and i1 %200, %198
  br i1 %201, label %202, label %33

; <label>:202:                                    ; preds = %197, %192, %191, %188, %185, %182, %181, %178, %175, %172, %169, %164, %159, %154, %151, %148, %145, %142, %139, %138, %135, %132, %129, %124, %121, %118, %112, %112, %92, %56
  %203 = phi i64 [ %199, %197 ], [ %194, %192 ], [ %113, %191 ], [ %189, %188 ], [ %186, %185 ], [ %183, %182 ], [ %113, %181 ], [ %179, %178 ], [ %176, %175 ], [ %173, %172 ], [ %170, %169 ], [ %166, %164 ], [ %161, %159 ], [ %156, %154 ], [ %152, %151 ], [ %149, %148 ], [ %146, %145 ], [ %143, %142 ], [ %140, %139 ], [ %113, %138 ], [ %136, %135 ], [ %133, %132 ], [ %130, %129 ], [ %126, %124 ], [ %122, %121 ], [ %119, %118 ], [ %113, %112 ], [ %113, %112 ], [ 0, %92 ], [ 0, %56 ]
  br label %33
}

define %struct.Memory* @routine_cmppd_xmm_m128_imm8(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #19 {
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
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 4
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5CMPPDI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_2InIhE(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14, i64 10)
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
  %call = call %struct.Memory* @routine_cmppd_xmm_m128_imm8(%struct.State* %state, i64 0, %struct.Memory* %mem)
  ret i32 0
}