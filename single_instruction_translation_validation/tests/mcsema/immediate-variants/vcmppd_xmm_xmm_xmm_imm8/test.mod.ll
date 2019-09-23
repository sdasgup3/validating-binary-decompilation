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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5CMPPDI3VnWI8vec256_tE2VnI8vec128_tES6_EEP6MemoryS8_R5StateT_T0_T1_2InIhE(%struct.Memory*, %struct.State* dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i8* nocapture readonly, i64) #0 {
  %7 = bitcast i8* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = getelementptr inbounds i8, i8* %3, i64 8
  %10 = bitcast i8* %9 to double*
  %11 = load double, double* %10, align 1
  %12 = bitcast i8* %4 to double*
  %13 = load double, double* %12, align 1
  %14 = getelementptr inbounds i8, i8* %4, i64 8
  %15 = bitcast i8* %14 to double*
  %16 = load double, double* %15, align 1
  %17 = trunc i64 %5 to i8
  %18 = icmp ugt i8 %17, 31
  br i1 %18, label %29, label %19

; <label>:19:                                     ; preds = %6
  %20 = icmp eq i8 %17, 0
  br i1 %20, label %24, label %21

; <label>:21:                                     ; preds = %19
  %22 = fcmp uno double %8, %13
  %23 = xor i1 %22, true
  switch i8 %17, label %111 [
    i8 31, label %113
    i8 1, label %41
    i8 2, label %46
    i8 3, label %112
    i8 4, label %51
    i8 5, label %53
    i8 6, label %55
    i8 7, label %57
    i8 8, label %60
    i8 9, label %62
    i8 10, label %64
    i8 11, label %114
    i8 12, label %66
    i8 13, label %68
    i8 14, label %73
    i8 15, label %113
    i8 16, label %78
    i8 17, label %83
    i8 18, label %85
    i8 19, label %112
    i8 20, label %87
    i8 21, label %89
    i8 22, label %91
    i8 23, label %93
    i8 24, label %96
    i8 25, label %98
    i8 26, label %100
    i8 27, label %114
    i8 28, label %102
    i8 29, label %107
    i8 30, label %109
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
  br label %118

; <label>:33:                                     ; preds = %204, %199, %194, %193, %190, %187, %184, %183, %180, %177, %174, %171, %166, %161, %156, %153, %150, %147, %144, %141, %140, %137, %134, %131, %126, %123, %120, %114, %114, %94, %58, %24
  %34 = phi i64 [ %28, %24 ], [ -1, %204 ], [ 0, %193 ], [ 0, %120 ], [ 0, %123 ], [ 0, %126 ], [ 0, %131 ], [ 0, %134 ], [ 0, %137 ], [ 0, %140 ], [ 0, %141 ], [ 0, %144 ], [ 0, %147 ], [ 0, %150 ], [ 0, %153 ], [ 0, %156 ], [ 0, %161 ], [ 0, %166 ], [ 0, %171 ], [ 0, %174 ], [ 0, %177 ], [ 0, %180 ], [ 0, %183 ], [ 0, %184 ], [ 0, %187 ], [ 0, %190 ], [ 0, %194 ], [ 0, %199 ], [ 0, %114 ], [ 0, %114 ], [ 0, %94 ], [ 0, %58 ]
  %35 = phi i64 [ %26, %24 ], [ %205, %204 ], [ %115, %193 ], [ %121, %120 ], [ %124, %123 ], [ %128, %126 ], [ %132, %131 ], [ %135, %134 ], [ %138, %137 ], [ %115, %140 ], [ %142, %141 ], [ %145, %144 ], [ %148, %147 ], [ %151, %150 ], [ %154, %153 ], [ %158, %156 ], [ %163, %161 ], [ %168, %166 ], [ %172, %171 ], [ %175, %174 ], [ %178, %177 ], [ %181, %180 ], [ %115, %183 ], [ %185, %184 ], [ %188, %187 ], [ %191, %190 ], [ %196, %194 ], [ %201, %199 ], [ %115, %114 ], [ %115, %114 ], [ 0, %94 ], [ 0, %58 ]
  %36 = bitcast i8* %2 to i64*
  store i64 %35, i64* %36, align 1
  %37 = getelementptr inbounds i8, i8* %2, i64 8
  %38 = bitcast i8* %37 to i64*
  store i64 %34, i64* %38, align 1
  %39 = getelementptr inbounds i8, i8* %2, i64 16
  %40 = bitcast i8* %39 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %40, align 1
  br label %118

; <label>:41:                                     ; preds = %21
  %42 = fcmp olt double %8, %13
  %43 = and i1 %42, %23
  br i1 %43, label %113, label %44

; <label>:44:                                     ; preds = %41
  %45 = fcmp ord double %11, %16
  br label %199

; <label>:46:                                     ; preds = %21
  %47 = fcmp ole double %8, %13
  %48 = and i1 %47, %23
  br i1 %48, label %113, label %49

; <label>:49:                                     ; preds = %46
  %50 = fcmp ord double %11, %16
  br label %194

; <label>:51:                                     ; preds = %21
  %52 = fcmp une double %8, %13
  br i1 %52, label %113, label %190

; <label>:53:                                     ; preds = %21
  %54 = fcmp uge double %8, %13
  br i1 %54, label %113, label %187

; <label>:55:                                     ; preds = %21
  %56 = fcmp ugt double %8, %13
  br i1 %56, label %113, label %184

; <label>:57:                                     ; preds = %21
  br i1 %22, label %58, label %113

; <label>:58:                                     ; preds = %57
  %59 = fcmp uno double %11, %16
  br i1 %59, label %33, label %204

; <label>:60:                                     ; preds = %21
  %61 = fcmp ueq double %8, %13
  br i1 %61, label %113, label %180

; <label>:62:                                     ; preds = %21
  %63 = fcmp ult double %8, %13
  br i1 %63, label %113, label %177

; <label>:64:                                     ; preds = %21
  %65 = fcmp ule double %8, %13
  br i1 %65, label %113, label %174

; <label>:66:                                     ; preds = %21
  %67 = fcmp ueq double %8, %13
  br i1 %67, label %171, label %113

; <label>:68:                                     ; preds = %21
  %69 = fcmp oge double %8, %13
  %70 = and i1 %69, %23
  br i1 %70, label %113, label %71

; <label>:71:                                     ; preds = %68
  %72 = fcmp ord double %11, %16
  br label %166

; <label>:73:                                     ; preds = %21
  %74 = fcmp ogt double %8, %13
  %75 = and i1 %74, %23
  br i1 %75, label %113, label %76

; <label>:76:                                     ; preds = %73
  %77 = fcmp ord double %11, %16
  br label %161

; <label>:78:                                     ; preds = %21
  %79 = fcmp oeq double %8, %13
  %80 = and i1 %79, %23
  br i1 %80, label %113, label %81

; <label>:81:                                     ; preds = %78
  %82 = fcmp ord double %11, %16
  br label %156

; <label>:83:                                     ; preds = %21
  %84 = fcmp olt double %8, %13
  br i1 %84, label %113, label %153

; <label>:85:                                     ; preds = %21
  %86 = fcmp ugt double %8, %13
  br i1 %86, label %150, label %113

; <label>:87:                                     ; preds = %21
  %88 = fcmp une double %8, %13
  br i1 %88, label %113, label %147

; <label>:89:                                     ; preds = %21
  %90 = fcmp uge double %8, %13
  br i1 %90, label %113, label %144

; <label>:91:                                     ; preds = %21
  %92 = fcmp ugt double %8, %13
  br i1 %92, label %113, label %141

; <label>:93:                                     ; preds = %21
  br i1 %22, label %94, label %113

; <label>:94:                                     ; preds = %93
  %95 = fcmp uno double %11, %16
  br i1 %95, label %33, label %204

; <label>:96:                                     ; preds = %21
  %97 = fcmp ueq double %8, %13
  br i1 %97, label %113, label %137

; <label>:98:                                     ; preds = %21
  %99 = fcmp ult double %8, %13
  br i1 %99, label %113, label %134

; <label>:100:                                    ; preds = %21
  %101 = fcmp ule double %8, %13
  br i1 %101, label %113, label %131

; <label>:102:                                    ; preds = %21
  %103 = fcmp une double %8, %13
  %104 = and i1 %103, %23
  br i1 %104, label %113, label %105

; <label>:105:                                    ; preds = %102
  %106 = fcmp ord double %11, %16
  br label %126

; <label>:107:                                    ; preds = %21
  %108 = fcmp ult double %8, %13
  br i1 %108, label %123, label %113

; <label>:109:                                    ; preds = %21
  %110 = fcmp ogt double %8, %13
  br i1 %110, label %113, label %120

; <label>:111:                                    ; preds = %114, %21
  unreachable

; <label>:112:                                    ; preds = %21, %21
  br i1 %22, label %113, label %114

; <label>:113:                                    ; preds = %112, %109, %107, %102, %100, %98, %96, %93, %91, %89, %87, %85, %83, %78, %73, %68, %66, %64, %62, %60, %57, %55, %53, %51, %46, %41, %21, %21
  br label %114

; <label>:114:                                    ; preds = %113, %112, %21, %21
  %115 = phi i64 [ -1, %113 ], [ 0, %112 ], [ 0, %21 ], [ 0, %21 ]
  %116 = fcmp uno double %11, %16
  %117 = xor i1 %116, true
  switch i8 %17, label %111 [
    i8 31, label %204
    i8 1, label %199
    i8 2, label %194
    i8 3, label %193
    i8 4, label %190
    i8 5, label %187
    i8 6, label %184
    i8 7, label %183
    i8 8, label %180
    i8 9, label %177
    i8 10, label %174
    i8 11, label %33
    i8 12, label %171
    i8 13, label %166
    i8 14, label %161
    i8 15, label %204
    i8 16, label %156
    i8 17, label %153
    i8 18, label %150
    i8 19, label %193
    i8 20, label %147
    i8 21, label %144
    i8 22, label %141
    i8 23, label %140
    i8 24, label %137
    i8 25, label %134
    i8 26, label %131
    i8 27, label %33
    i8 28, label %126
    i8 29, label %123
    i8 30, label %120
  ]

; <label>:118:                                    ; preds = %33, %29
  %119 = phi %struct.Memory* [ %32, %29 ], [ %0, %33 ]
  ret %struct.Memory* %119

; <label>:120:                                    ; preds = %114, %109
  %121 = phi i64 [ %115, %114 ], [ 0, %109 ]
  %122 = fcmp ogt double %11, %16
  br i1 %122, label %204, label %33

; <label>:123:                                    ; preds = %114, %107
  %124 = phi i64 [ %115, %114 ], [ 0, %107 ]
  %125 = fcmp ult double %11, %16
  br i1 %125, label %33, label %204

; <label>:126:                                    ; preds = %114, %105
  %127 = phi i1 [ %106, %105 ], [ %117, %114 ]
  %128 = phi i64 [ 0, %105 ], [ %115, %114 ]
  %129 = fcmp une double %11, %16
  %130 = and i1 %129, %127
  br i1 %130, label %204, label %33

; <label>:131:                                    ; preds = %114, %100
  %132 = phi i64 [ %115, %114 ], [ 0, %100 ]
  %133 = fcmp ule double %11, %16
  br i1 %133, label %204, label %33

; <label>:134:                                    ; preds = %114, %98
  %135 = phi i64 [ %115, %114 ], [ 0, %98 ]
  %136 = fcmp ult double %11, %16
  br i1 %136, label %204, label %33

; <label>:137:                                    ; preds = %114, %96
  %138 = phi i64 [ %115, %114 ], [ 0, %96 ]
  %139 = fcmp ueq double %11, %16
  br i1 %139, label %204, label %33

; <label>:140:                                    ; preds = %114
  br i1 %116, label %33, label %204

; <label>:141:                                    ; preds = %114, %91
  %142 = phi i64 [ %115, %114 ], [ 0, %91 ]
  %143 = fcmp ugt double %11, %16
  br i1 %143, label %204, label %33

; <label>:144:                                    ; preds = %114, %89
  %145 = phi i64 [ %115, %114 ], [ 0, %89 ]
  %146 = fcmp uge double %11, %16
  br i1 %146, label %204, label %33

; <label>:147:                                    ; preds = %114, %87
  %148 = phi i64 [ %115, %114 ], [ 0, %87 ]
  %149 = fcmp une double %11, %16
  br i1 %149, label %204, label %33

; <label>:150:                                    ; preds = %114, %85
  %151 = phi i64 [ %115, %114 ], [ 0, %85 ]
  %152 = fcmp ugt double %11, %16
  br i1 %152, label %33, label %204

; <label>:153:                                    ; preds = %114, %83
  %154 = phi i64 [ %115, %114 ], [ 0, %83 ]
  %155 = fcmp olt double %11, %16
  br i1 %155, label %204, label %33

; <label>:156:                                    ; preds = %114, %81
  %157 = phi i1 [ %82, %81 ], [ %117, %114 ]
  %158 = phi i64 [ 0, %81 ], [ %115, %114 ]
  %159 = fcmp oeq double %11, %16
  %160 = and i1 %159, %157
  br i1 %160, label %204, label %33

; <label>:161:                                    ; preds = %114, %76
  %162 = phi i1 [ %77, %76 ], [ %117, %114 ]
  %163 = phi i64 [ 0, %76 ], [ %115, %114 ]
  %164 = fcmp ogt double %11, %16
  %165 = and i1 %164, %162
  br i1 %165, label %204, label %33

; <label>:166:                                    ; preds = %114, %71
  %167 = phi i1 [ %72, %71 ], [ %117, %114 ]
  %168 = phi i64 [ 0, %71 ], [ %115, %114 ]
  %169 = fcmp oge double %11, %16
  %170 = and i1 %169, %167
  br i1 %170, label %204, label %33

; <label>:171:                                    ; preds = %114, %66
  %172 = phi i64 [ %115, %114 ], [ 0, %66 ]
  %173 = fcmp ueq double %11, %16
  br i1 %173, label %33, label %204

; <label>:174:                                    ; preds = %114, %64
  %175 = phi i64 [ %115, %114 ], [ 0, %64 ]
  %176 = fcmp ule double %11, %16
  br i1 %176, label %204, label %33

; <label>:177:                                    ; preds = %114, %62
  %178 = phi i64 [ %115, %114 ], [ 0, %62 ]
  %179 = fcmp ult double %11, %16
  br i1 %179, label %204, label %33

; <label>:180:                                    ; preds = %114, %60
  %181 = phi i64 [ %115, %114 ], [ 0, %60 ]
  %182 = fcmp ueq double %11, %16
  br i1 %182, label %204, label %33

; <label>:183:                                    ; preds = %114
  br i1 %116, label %33, label %204

; <label>:184:                                    ; preds = %114, %55
  %185 = phi i64 [ %115, %114 ], [ 0, %55 ]
  %186 = fcmp ugt double %11, %16
  br i1 %186, label %204, label %33

; <label>:187:                                    ; preds = %114, %53
  %188 = phi i64 [ %115, %114 ], [ 0, %53 ]
  %189 = fcmp uge double %11, %16
  br i1 %189, label %204, label %33

; <label>:190:                                    ; preds = %114, %51
  %191 = phi i64 [ %115, %114 ], [ 0, %51 ]
  %192 = fcmp une double %11, %16
  br i1 %192, label %204, label %33

; <label>:193:                                    ; preds = %114, %114
  br i1 %116, label %204, label %33

; <label>:194:                                    ; preds = %114, %49
  %195 = phi i1 [ %50, %49 ], [ %117, %114 ]
  %196 = phi i64 [ 0, %49 ], [ %115, %114 ]
  %197 = fcmp ole double %11, %16
  %198 = and i1 %197, %195
  br i1 %198, label %204, label %33

; <label>:199:                                    ; preds = %114, %44
  %200 = phi i1 [ %45, %44 ], [ %117, %114 ]
  %201 = phi i64 [ 0, %44 ], [ %115, %114 ]
  %202 = fcmp olt double %11, %16
  %203 = and i1 %202, %200
  br i1 %203, label %204, label %33

; <label>:204:                                    ; preds = %199, %194, %193, %190, %187, %184, %183, %180, %177, %174, %171, %166, %161, %156, %153, %150, %147, %144, %141, %140, %137, %134, %131, %126, %123, %120, %114, %114, %94, %58
  %205 = phi i64 [ %201, %199 ], [ %196, %194 ], [ %115, %193 ], [ %191, %190 ], [ %188, %187 ], [ %185, %184 ], [ %115, %183 ], [ %181, %180 ], [ %178, %177 ], [ %175, %174 ], [ %172, %171 ], [ %168, %166 ], [ %163, %161 ], [ %158, %156 ], [ %154, %153 ], [ %151, %150 ], [ %148, %147 ], [ %145, %144 ], [ %142, %141 ], [ %115, %140 ], [ %138, %137 ], [ %135, %134 ], [ %132, %131 ], [ %128, %126 ], [ %124, %123 ], [ %121, %120 ], [ %115, %114 ], [ %115, %114 ], [ 0, %94 ], [ 0, %58 ]
  br label %33
}

define %struct.Memory* @routine_vcmppd_xmm_xmm_xmm_imm8(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #19 {
block_530:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  store i64 %1, i64* %PC, align 8
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
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5CMPPDI3VnWI8vec256_tE2VnI8vec128_tES6_EEP6MemoryS8_R5StateT_T0_T1_2InIhE(%struct.Memory* %2, %struct.State* %0, i8* %12, i8* %13, i8* %14, i64 10)
  %18 = load i64, i64* %PC
  %19 = add i64 %18, 1
  store i64 %19, i64* %PC
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
  %call = call %struct.Memory* @routine_vcmppd_xmm_xmm_xmm_imm8(%struct.State* %state, i64 0, %struct.Memory* %mem)
  ret i32 0
}