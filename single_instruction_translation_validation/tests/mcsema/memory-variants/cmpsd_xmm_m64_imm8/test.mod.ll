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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5CMPSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_2InIhE(%struct.Memory*, %struct.State* dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i64, i64) #0 {
  %7 = bitcast i8* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = inttoptr i64 %4 to double*
  %10 = load double, double* %9
  %11 = trunc i64 %5 to i8
  %12 = icmp ugt i8 %11, 31
  br i1 %12, label %13, label %17

; <label>:13:                                     ; preds = %6
  %14 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %1, i64 %15, %struct.Memory* %0) #21
  br label %85

; <label>:17:                                     ; preds = %6
  %18 = fcmp uno double %8, %10
  %19 = xor i1 %18, true
  switch i8 %11, label %77 [
    i8 0, label %20
    i8 1, label %23
    i8 2, label %26
    i8 3, label %78
    i8 4, label %29
    i8 5, label %31
    i8 6, label %33
    i8 7, label %35
    i8 8, label %36
    i8 9, label %38
    i8 10, label %40
    i8 11, label %80
    i8 12, label %42
    i8 13, label %44
    i8 14, label %47
    i8 15, label %79
    i8 16, label %50
    i8 17, label %53
    i8 18, label %55
    i8 19, label %78
    i8 20, label %57
    i8 21, label %59
    i8 22, label %61
    i8 23, label %63
    i8 24, label %64
    i8 25, label %66
    i8 26, label %68
    i8 27, label %80
    i8 28, label %70
    i8 29, label %73
    i8 30, label %75
    i8 31, label %79
  ]

; <label>:20:                                     ; preds = %17
  %21 = fcmp ueq double %8, %10
  %22 = and i1 %21, %19
  br i1 %22, label %79, label %80

; <label>:23:                                     ; preds = %17
  %24 = fcmp olt double %8, %10
  %25 = and i1 %24, %19
  br i1 %25, label %79, label %80

; <label>:26:                                     ; preds = %17
  %27 = fcmp ole double %8, %10
  %28 = and i1 %27, %19
  br i1 %28, label %79, label %80

; <label>:29:                                     ; preds = %17
  %30 = fcmp une double %8, %10
  br i1 %30, label %79, label %80

; <label>:31:                                     ; preds = %17
  %32 = fcmp uge double %8, %10
  br i1 %32, label %79, label %80

; <label>:33:                                     ; preds = %17
  %34 = fcmp ugt double %8, %10
  br i1 %34, label %79, label %80

; <label>:35:                                     ; preds = %17
  br i1 %18, label %80, label %79

; <label>:36:                                     ; preds = %17
  %37 = fcmp ueq double %8, %10
  br i1 %37, label %79, label %80

; <label>:38:                                     ; preds = %17
  %39 = fcmp ult double %8, %10
  br i1 %39, label %79, label %80

; <label>:40:                                     ; preds = %17
  %41 = fcmp ule double %8, %10
  br i1 %41, label %79, label %80

; <label>:42:                                     ; preds = %17
  %43 = fcmp ueq double %8, %10
  br i1 %43, label %80, label %79

; <label>:44:                                     ; preds = %17
  %45 = fcmp oge double %8, %10
  %46 = and i1 %45, %19
  br i1 %46, label %79, label %80

; <label>:47:                                     ; preds = %17
  %48 = fcmp ogt double %8, %10
  %49 = and i1 %48, %19
  br i1 %49, label %79, label %80

; <label>:50:                                     ; preds = %17
  %51 = fcmp oeq double %8, %10
  %52 = and i1 %51, %19
  br i1 %52, label %79, label %80

; <label>:53:                                     ; preds = %17
  %54 = fcmp olt double %8, %10
  br i1 %54, label %79, label %80

; <label>:55:                                     ; preds = %17
  %56 = fcmp ugt double %8, %10
  br i1 %56, label %80, label %79

; <label>:57:                                     ; preds = %17
  %58 = fcmp une double %8, %10
  br i1 %58, label %79, label %80

; <label>:59:                                     ; preds = %17
  %60 = fcmp uge double %8, %10
  br i1 %60, label %79, label %80

; <label>:61:                                     ; preds = %17
  %62 = fcmp ugt double %8, %10
  br i1 %62, label %79, label %80

; <label>:63:                                     ; preds = %17
  br i1 %18, label %80, label %79

; <label>:64:                                     ; preds = %17
  %65 = fcmp ueq double %8, %10
  br i1 %65, label %79, label %80

; <label>:66:                                     ; preds = %17
  %67 = fcmp ult double %8, %10
  br i1 %67, label %79, label %80

; <label>:68:                                     ; preds = %17
  %69 = fcmp ule double %8, %10
  br i1 %69, label %79, label %80

; <label>:70:                                     ; preds = %17
  %71 = fcmp une double %8, %10
  %72 = and i1 %71, %19
  br i1 %72, label %79, label %80

; <label>:73:                                     ; preds = %17
  %74 = fcmp ult double %8, %10
  br i1 %74, label %80, label %79

; <label>:75:                                     ; preds = %17
  %76 = fcmp ogt double %8, %10
  br i1 %76, label %79, label %80

; <label>:77:                                     ; preds = %17
  unreachable

; <label>:78:                                     ; preds = %17, %17
  br i1 %18, label %79, label %80

; <label>:79:                                     ; preds = %78, %75, %73, %70, %68, %66, %64, %63, %61, %59, %57, %55, %53, %50, %47, %44, %42, %40, %38, %36, %35, %33, %31, %29, %26, %23, %20, %17, %17
  br label %80

; <label>:80:                                     ; preds = %79, %78, %75, %73, %70, %68, %66, %64, %63, %61, %59, %57, %55, %53, %50, %47, %44, %42, %40, %38, %36, %35, %33, %31, %29, %26, %23, %20, %17, %17
  %81 = phi i64 [ -1, %79 ], [ 0, %78 ], [ 0, %75 ], [ 0, %73 ], [ 0, %70 ], [ 0, %68 ], [ 0, %66 ], [ 0, %64 ], [ 0, %63 ], [ 0, %61 ], [ 0, %59 ], [ 0, %57 ], [ 0, %55 ], [ 0, %53 ], [ 0, %50 ], [ 0, %47 ], [ 0, %44 ], [ 0, %42 ], [ 0, %40 ], [ 0, %38 ], [ 0, %36 ], [ 0, %35 ], [ 0, %33 ], [ 0, %31 ], [ 0, %29 ], [ 0, %26 ], [ 0, %23 ], [ 0, %20 ], [ 0, %17 ], [ 0, %17 ]
  %82 = bitcast i8* %2 to i64*
  store i64 %81, i64* %82, align 1
  %83 = getelementptr inbounds i8, i8* %2, i64 8
  %84 = bitcast i8* %83 to i64*
  store i64 0, i64* %84, align 1
  br label %85

; <label>:85:                                     ; preds = %80, %13
  %86 = phi %struct.Memory* [ %16, %13 ], [ %0, %80 ]
  ret %struct.Memory* %86
}

define %struct.Memory* @routine_cmpsd_xmm_m64_imm8(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #19 {
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
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5CMPSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_2InIhE(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14, i64 0)
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
  %call = call %struct.Memory* @routine_cmpsd_xmm_m64_imm8(%struct.State* %state, i64 0, %struct.Memory* %mem)
  ret i32 0
}