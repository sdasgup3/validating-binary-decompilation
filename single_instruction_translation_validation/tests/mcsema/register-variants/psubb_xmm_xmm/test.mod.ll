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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5PSUBBI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i8* nocapture readonly) #0 {
  %6 = bitcast i8* %3 to i64*
  %7 = load i64, i64* %6, align 1
  %8 = getelementptr inbounds i8, i8* %3, i64 8
  %9 = bitcast i8* %8 to i64*
  %10 = load i64, i64* %9, align 1
  %11 = lshr i64 %7, 56
  %12 = bitcast i8* %4 to i64*
  %13 = load i64, i64* %12, align 1
  %14 = getelementptr inbounds i8, i8* %4, i64 8
  %15 = bitcast i8* %14 to i64*
  %16 = load i64, i64* %15, align 1
  %17 = and i64 %13, 65280
  %18 = and i64 %13, 16711680
  %19 = and i64 %13, 4278190080
  %20 = and i64 %13, 1095216660480
  %21 = and i64 %13, 280375465082880
  %22 = and i64 %13, 71776119061217280
  %23 = lshr i64 %13, 56
  %24 = sub i64 %7, %13
  %25 = sub  i64 %11, %23
  %26 = sub i64 %10, %16
  %27 = and i64 %16, 65280
  %28 = sub i64 %10, %27
  %29 = and i64 %16, 16711680
  %30 = sub i64 %10, %29
  %31 = and i64 %16, 4278190080
  %32 = sub i64 %10, %31
  %33 = and i64 %16, 1095216660480
  %34 = sub i64 %10, %33
  %35 = and i64 %16, 280375465082880
  %36 = sub i64 %10, %35
  %37 = and i64 %16, 71776119061217280
  %38 = sub i64 %10, %37
  %39 = lshr i64 %10, 56
  %40 = lshr i64 %16, 56
  %41 = sub  i64 %39, %40
  %42 = sub i64 %7, %22
  %43 = sub i64 %7, %21
  %44 = sub i64 %7, %20
  %45 = sub i64 %7, %19
  %46 = sub i64 %7, %18
  %47 = sub i64 %7, %17
  %48 = trunc i64 %24 to i8
  %49 = lshr i64 %47, 8
  %50 = trunc i64 %49 to i8
  %51 = lshr i64 %46, 16
  %52 = trunc i64 %51 to i8
  %53 = lshr i64 %45, 24
  %54 = trunc i64 %53 to i8
  %55 = lshr i64 %44, 32
  %56 = trunc i64 %55 to i8
  %57 = lshr i64 %43, 40
  %58 = trunc i64 %57 to i8
  %59 = lshr i64 %42, 48
  %60 = trunc i64 %59 to i8
  %61 = trunc i64 %25 to i8
  store i8 %48, i8* %2, align 1
  %62 = getelementptr inbounds i8, i8* %2, i64 1
  store i8 %50, i8* %62, align 1
  %63 = getelementptr inbounds i8, i8* %2, i64 2
  store i8 %52, i8* %63, align 1
  %64 = getelementptr inbounds i8, i8* %2, i64 3
  store i8 %54, i8* %64, align 1
  %65 = getelementptr inbounds i8, i8* %2, i64 4
  store i8 %56, i8* %65, align 1
  %66 = getelementptr inbounds i8, i8* %2, i64 5
  store i8 %58, i8* %66, align 1
  %67 = getelementptr inbounds i8, i8* %2, i64 6
  store i8 %60, i8* %67, align 1
  %68 = getelementptr inbounds i8, i8* %2, i64 7
  store i8 %61, i8* %68, align 1
  %69 = trunc i64 %26 to i8
  %70 = getelementptr inbounds i8, i8* %2, i64 8
  store i8 %69, i8* %70, align 1
  %71 = lshr i64 %28, 8
  %72 = trunc i64 %71 to i8
  %73 = getelementptr inbounds i8, i8* %2, i64 9
  store i8 %72, i8* %73, align 1
  %74 = lshr i64 %30, 16
  %75 = trunc i64 %74 to i8
  %76 = getelementptr inbounds i8, i8* %2, i64 10
  store i8 %75, i8* %76, align 1
  %77 = lshr i64 %32, 24
  %78 = trunc i64 %77 to i8
  %79 = getelementptr inbounds i8, i8* %2, i64 11
  store i8 %78, i8* %79, align 1
  %80 = lshr i64 %34, 32
  %81 = trunc i64 %80 to i8
  %82 = getelementptr inbounds i8, i8* %2, i64 12
  store i8 %81, i8* %82, align 1
  %83 = lshr i64 %36, 40
  %84 = trunc i64 %83 to i8
  %85 = getelementptr inbounds i8, i8* %2, i64 13
  store i8 %84, i8* %85, align 1
  %86 = lshr i64 %38, 48
  %87 = trunc i64 %86 to i8
  %88 = getelementptr inbounds i8, i8* %2, i64 14
  store i8 %87, i8* %88, align 1
  %89 = trunc i64 %41 to i8
  %90 = getelementptr inbounds i8, i8* %2, i64 15
  store i8 %89, i8* %90, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_psubb_xmm_xmm(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #19 {
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
  %10 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = bitcast %union.vec128_t* %XMM2 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5PSUBBI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 1
  store i64 %17, i64* %PC
  ret %struct.Memory* %15
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
  %call = call %struct.Memory* @routine_psubb_xmm_xmm(%struct.State* %state, i64 0, %struct.Memory* %mem)
  ret i32 0
}