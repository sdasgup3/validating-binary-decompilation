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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L6PSRLDQI3VnWI8vec256_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_2InIhE(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8*, i8* nocapture readonly, i64) #0 {
  %6 = alloca %struct.uint8v32_t, align 16
  %7 = alloca <2 x i64>, align 16
  %8 = bitcast <2 x i64>* %7 to %struct.uint8v16_t*
  %9 = bitcast <2 x i64>* %7 to i8*
  call void @my.lifetime.start(i64 16, i8* nonnull %9) #22
  %10 = bitcast i8* %3 to <2 x i64>*
  %11 = load <2 x i64>, <2 x i64>* %10, align 1
  store <2 x i64> %11, <2 x i64>* %7, align 16
  %12 = and i64 %4, 255
  %13 = icmp ult i64 %12, 16
  br i1 %13, label %14, label %49

; <label>:14:                                     ; preds = %5
  %15 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %6, i64 0, i32 0, i64 0
  %16 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %6, i64 0, i32 0, i64 16
  %17 = sub  i64 16, %12
  %18 = and i64 %17, 1
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %30, label %20

; <label>:20:                                     ; preds = %14
  br label %21

; <label>:21:                                     ; preds = %20
  %22 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %8, i64 0, i32 0, i64 %12
  %23 = load i8, i8* %22, align 1
  call void @my.lifetime.start(i64 32, i8* nonnull %15)
  %24 = bitcast %struct.uint8v32_t* %6 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %24, align 16
  %25 = bitcast i8* %16 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %25, align 16
  %26 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %6, i64 0, i32 0, i64 0
  store i8 %23, i8* %26, align 16
  %27 = bitcast %struct.uint8v32_t* %6 to <16 x i8>*
  %28 = load <16 x i8>, <16 x i8>* %27, align 16
  call void @my.lifetime.end(i64 32, i8* nonnull %15)
  %29 = add   i64 %12, 1
  br label %30

; <label>:30:                                     ; preds = %21, %14
  %31 = phi <16 x i8> [ undef, %14 ], [ %28, %21 ]
  %32 = phi i64 [ 0, %14 ], [ 1, %21 ]
  %33 = phi i64 [ %12, %14 ], [ %29, %21 ]
  %34 = phi <16 x i8> [ zeroinitializer, %14 ], [ %28, %21 ]
  %35 = icmp eq i64 %12, 15
  br i1 %35, label %46, label %36

; <label>:36:                                     ; preds = %30
  %37 = bitcast %struct.uint8v32_t* %6 to <16 x i8>*
  %38 = bitcast i8* %16 to <16 x i8>*
  %39 = bitcast %struct.uint8v32_t* %6 to <16 x i8>*
  %40 = bitcast i8* %16 to <16 x i8>*
  %41 = bitcast %struct.uint8v32_t* %6 to <16 x i8>*
  %42 = bitcast i8* %16 to <16 x i8>*
  %43 = bitcast %struct.uint8v32_t* %6 to <16 x i8>*
  %44 = bitcast i8* %16 to <16 x i8>*
  br label %55

; <label>:45:                                     ; preds = %55
  br label %46

; <label>:46:                                     ; preds = %45, %30
  %47 = phi <16 x i8> [ %31, %30 ], [ %70, %45 ]
  %48 = phi <16 x i8> [ zeroinitializer, %30 ], [ %71, %45 ]
  br label %49

; <label>:49:                                     ; preds = %46, %5
  %50 = phi <16 x i8> [ zeroinitializer, %5 ], [ %47, %46 ]
  %51 = phi <16 x i8> [ zeroinitializer, %5 ], [ %48, %46 ]
  %52 = bitcast i8* %2 to <16 x i8>*
  store <16 x i8> %50, <16 x i8>* %52, align 1
  %53 = getelementptr inbounds i8, i8* %2, i64 16
  %54 = bitcast i8* %53 to <16 x i8>*
  store <16 x i8> %51, <16 x i8>* %54, align 1
  call void @my.lifetime.end(i64 16, i8* nonnull %9) #22
  ret %struct.Memory* %0

; <label>:55:                                     ; preds = %55, %36
  %56 = phi i64 [ %32, %36 ], [ %73, %55 ]
  %57 = phi i64 [ %33, %36 ], [ %72, %55 ]
  %58 = phi <16 x i8> [ %34, %36 ], [ %70, %55 ]
  %59 = phi <16 x i8> [ zeroinitializer, %36 ], [ %71, %55 ]
  %60 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %8, i64 0, i32 0, i64 %57
  %61 = load i8, i8* %60, align 1
  call void @my.lifetime.start(i64 32, i8* nonnull %15)
  store <16 x i8> %58, <16 x i8>* %37, align 16
  store <16 x i8> %59, <16 x i8>* %38, align 16
  %62 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %6, i64 0, i32 0, i64 %56
  store i8 %61, i8* %62, align 1
  %63 = load <16 x i8>, <16 x i8>* %39, align 16
  %64 = load <16 x i8>, <16 x i8>* %40, align 16
  call void @my.lifetime.end(i64 32, i8* nonnull %15)
  %65 = add   i64 %57, 1
  %66 = add   i64 %56, 1
  %67 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %8, i64 0, i32 0, i64 %65
  %68 = load i8, i8* %67, align 1
  call void @my.lifetime.start(i64 32, i8* nonnull %15)
  store <16 x i8> %63, <16 x i8>* %41, align 16
  store <16 x i8> %64, <16 x i8>* %42, align 16
  %69 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %6, i64 0, i32 0, i64 %66
  store i8 %68, i8* %69, align 1
  %70 = load <16 x i8>, <16 x i8>* %43, align 16
  %71 = load <16 x i8>, <16 x i8>* %44, align 16
  call void @my.lifetime.end(i64 32, i8* nonnull %15)
  %72 = add  i64 %57, 2
  %73 = add  i64 %56, 2
  %74 = icmp eq i64 %73, %17
  br i1 %74, label %45, label %55, !llvm.loop !1360
}

define %struct.Memory* @routine_vpsrldq_xmm_xmm_imm8(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #19 {
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
  %10 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %11 = bitcast %union.vec128_t* %XMM2 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 5
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L6PSRLDQI3VnWI8vec256_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_2InIhE(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i64 10)
  ret %struct.Memory* %14
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
  %call = call %struct.Memory* @routine_vpsrldq_xmm_xmm_imm8(%struct.State* %state, i64 0, %struct.Memory* %mem)
  ret i32 0
}