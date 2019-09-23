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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5CMPSSI3VnWI8vec128_tE2VnIS2_E3MVnI7vec32_tEEEP6MemorySA_R5StateT_T0_T1_2InIhE(%struct.Memory*, %struct.State* dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i64, i64) #0 {
  %7 = inttoptr i64 %4 to float*
  %8 = load float, float* %7
  %9 = trunc i64 %5 to i8
  %10 = icmp ugt i8 %9, 31
  br i1 %10, label %11, label %15

; <label>:11:                                     ; preds = %6
  %12 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %1, i64 %13, %struct.Memory* %0) #21
  br label %90

; <label>:15:                                     ; preds = %6
  %16 = bitcast i8* %3 to <2 x float>*
  %17 = load <2 x float>, <2 x float>* %16, align 1
  %18 = extractelement <2 x float> %17, i32 0
  %19 = fcmp uno float %18, %8
  %20 = xor i1 %19, true
  switch i8 %9, label %78 [
    i8 0, label %21
    i8 1, label %24
    i8 2, label %27
    i8 3, label %79
    i8 4, label %30
    i8 5, label %32
    i8 6, label %34
    i8 7, label %36
    i8 8, label %37
    i8 9, label %39
    i8 10, label %41
    i8 11, label %81
    i8 12, label %43
    i8 13, label %45
    i8 14, label %48
    i8 15, label %80
    i8 16, label %51
    i8 17, label %54
    i8 18, label %56
    i8 19, label %79
    i8 20, label %58
    i8 21, label %60
    i8 22, label %62
    i8 23, label %64
    i8 24, label %65
    i8 25, label %67
    i8 26, label %69
    i8 27, label %81
    i8 28, label %71
    i8 29, label %74
    i8 30, label %76
    i8 31, label %80
  ]

; <label>:21:                                     ; preds = %15
  %22 = fcmp ueq float %18, %8
  %23 = and i1 %22, %20
  br i1 %23, label %80, label %81

; <label>:24:                                     ; preds = %15
  %25 = fcmp olt float %18, %8
  %26 = and i1 %25, %20
  br i1 %26, label %80, label %81

; <label>:27:                                     ; preds = %15
  %28 = fcmp ole float %18, %8
  %29 = and i1 %28, %20
  br i1 %29, label %80, label %81

; <label>:30:                                     ; preds = %15
  %31 = fcmp une float %18, %8
  br i1 %31, label %80, label %81

; <label>:32:                                     ; preds = %15
  %33 = fcmp uge float %18, %8
  br i1 %33, label %80, label %81

; <label>:34:                                     ; preds = %15
  %35 = fcmp ugt float %18, %8
  br i1 %35, label %80, label %81

; <label>:36:                                     ; preds = %15
  br i1 %19, label %81, label %80

; <label>:37:                                     ; preds = %15
  %38 = fcmp ueq float %18, %8
  br i1 %38, label %80, label %81

; <label>:39:                                     ; preds = %15
  %40 = fcmp ult float %18, %8
  br i1 %40, label %80, label %81

; <label>:41:                                     ; preds = %15
  %42 = fcmp ule float %18, %8
  br i1 %42, label %80, label %81

; <label>:43:                                     ; preds = %15
  %44 = fcmp ueq float %18, %8
  br i1 %44, label %81, label %80

; <label>:45:                                     ; preds = %15
  %46 = fcmp oge float %18, %8
  %47 = and i1 %46, %20
  br i1 %47, label %80, label %81

; <label>:48:                                     ; preds = %15
  %49 = fcmp ogt float %18, %8
  %50 = and i1 %49, %20
  br i1 %50, label %80, label %81

; <label>:51:                                     ; preds = %15
  %52 = fcmp oeq float %18, %8
  %53 = and i1 %52, %20
  br i1 %53, label %80, label %81

; <label>:54:                                     ; preds = %15
  %55 = fcmp olt float %18, %8
  br i1 %55, label %80, label %81

; <label>:56:                                     ; preds = %15
  %57 = fcmp ugt float %18, %8
  br i1 %57, label %81, label %80

; <label>:58:                                     ; preds = %15
  %59 = fcmp une float %18, %8
  br i1 %59, label %80, label %81

; <label>:60:                                     ; preds = %15
  %61 = fcmp uge float %18, %8
  br i1 %61, label %80, label %81

; <label>:62:                                     ; preds = %15
  %63 = fcmp ugt float %18, %8
  br i1 %63, label %80, label %81

; <label>:64:                                     ; preds = %15
  br i1 %19, label %81, label %80

; <label>:65:                                     ; preds = %15
  %66 = fcmp ueq float %18, %8
  br i1 %66, label %80, label %81

; <label>:67:                                     ; preds = %15
  %68 = fcmp ult float %18, %8
  br i1 %68, label %80, label %81

; <label>:69:                                     ; preds = %15
  %70 = fcmp ule float %18, %8
  br i1 %70, label %80, label %81

; <label>:71:                                     ; preds = %15
  %72 = fcmp une float %18, %8
  %73 = and i1 %72, %20
  br i1 %73, label %80, label %81

; <label>:74:                                     ; preds = %15
  %75 = fcmp ult float %18, %8
  br i1 %75, label %81, label %80

; <label>:76:                                     ; preds = %15
  %77 = fcmp ogt float %18, %8
  br i1 %77, label %80, label %81

; <label>:78:                                     ; preds = %15
  unreachable

; <label>:79:                                     ; preds = %15, %15
  br i1 %19, label %80, label %81

; <label>:80:                                     ; preds = %79, %76, %74, %71, %69, %67, %65, %64, %62, %60, %58, %56, %54, %51, %48, %45, %43, %41, %39, %37, %36, %34, %32, %30, %27, %24, %21, %15, %15
  br label %81

; <label>:81:                                     ; preds = %80, %79, %76, %74, %71, %69, %67, %65, %64, %62, %60, %58, %56, %54, %51, %48, %45, %43, %41, %39, %37, %36, %34, %32, %30, %27, %24, %21, %15, %15
  %82 = phi i32 [ -1, %80 ], [ 0, %79 ], [ 0, %76 ], [ 0, %74 ], [ 0, %71 ], [ 0, %69 ], [ 0, %67 ], [ 0, %65 ], [ 0, %64 ], [ 0, %62 ], [ 0, %60 ], [ 0, %58 ], [ 0, %56 ], [ 0, %54 ], [ 0, %51 ], [ 0, %48 ], [ 0, %45 ], [ 0, %43 ], [ 0, %41 ], [ 0, %39 ], [ 0, %37 ], [ 0, %36 ], [ 0, %34 ], [ 0, %32 ], [ 0, %30 ], [ 0, %27 ], [ 0, %24 ], [ 0, %21 ], [ 0, %15 ], [ 0, %15 ]
  %83 = bitcast i8* %2 to i32*
  store i32 %82, i32* %83, align 1
  %84 = getelementptr inbounds i8, i8* %2, i64 4
  %85 = bitcast i8* %84 to i32*
  store i32 0, i32* %85, align 1
  %86 = getelementptr inbounds i8, i8* %2, i64 8
  %87 = bitcast i8* %86 to i32*
  store i32 0, i32* %87, align 1
  %88 = getelementptr inbounds i8, i8* %2, i64 12
  %89 = bitcast i8* %88 to i32*
  store i32 0, i32* %89, align 1
  br label %90

; <label>:90:                                     ; preds = %81, %11
  %91 = phi %struct.Memory* [ %14, %11 ], [ %0, %81 ]
  ret %struct.Memory* %91
}

define %struct.Memory* @routine_cmpss_xmm_m32_imm8(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #19 {
block_530:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  store i64 %1, i64* %PC, align 8
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
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5CMPSSI3VnWI8vec128_tE2VnIS2_E3MVnI7vec32_tEEEP6MemorySA_R5StateT_T0_T1_2InIhE(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14, i64 0)
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
  %call = call %struct.Memory* @routine_cmpss_xmm_m32_imm8(%struct.State* %state, i64 0, %struct.Memory* %mem)
  ret i32 0
}