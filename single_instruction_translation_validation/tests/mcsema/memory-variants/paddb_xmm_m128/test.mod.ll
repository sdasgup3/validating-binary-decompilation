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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5PADDBI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i64) #0 {
  %6 = bitcast i8* %3 to i64*
  %7 = load i64, i64* %6, align 1
  %8 = getelementptr inbounds i8, i8* %3, i64 8
  %9 = bitcast i8* %8 to i64*
  %10 = load i64, i64* %9, align 1
  %11 = lshr i64 %7, 56
  %12 = trunc i64 %11 to i8
  %13 = inttoptr i64 %4 to i8*
  %14 = load i8, i8* %13
  %15 = add i64 %4, 1
  %16 = inttoptr i64 %15 to i8*
  %17 = load i8, i8* %16
  %18 = add i64 %4, 2
  %19 = inttoptr i64 %18 to i8*
  %20 = load i8, i8* %19
  %21 = add i64 %4, 3
  %22 = inttoptr i64 %21 to i8*
  %23 = load i8, i8* %22
  %24 = add i64 %4, 4
  %25 = inttoptr i64 %24 to i8*
  %26 = load i8, i8* %25
  %27 = add i64 %4, 5
  %28 = inttoptr i64 %27 to i8*
  %29 = load i8, i8* %28
  %30 = add i64 %4, 6
  %31 = inttoptr i64 %30 to i8*
  %32 = load i8, i8* %31
  %33 = add i64 %4, 7
  %34 = inttoptr i64 %33 to i8*
  %35 = load i8, i8* %34
  %36 = add i64 %4, 8
  %37 = inttoptr i64 %36 to i8*
  %38 = load i8, i8* %37
  %39 = add i64 %4, 9
  %40 = inttoptr i64 %39 to i8*
  %41 = load i8, i8* %40
  %42 = zext i8 %41 to i64
  %43 = add i64 %4, 10
  %44 = inttoptr i64 %43 to i8*
  %45 = load i8, i8* %44
  %46 = zext i8 %45 to i64
  %47 = add i64 %4, 11
  %48 = inttoptr i64 %47 to i8*
  %49 = load i8, i8* %48
  %50 = zext i8 %49 to i64
  %51 = add i64 %4, 12
  %52 = inttoptr i64 %51 to i8*
  %53 = load i8, i8* %52
  %54 = zext i8 %53 to i64
  %55 = shl   i64 %54, 32
  %56 = add i64 %4, 13
  %57 = inttoptr i64 %56 to i8*
  %58 = load i8, i8* %57
  %59 = zext i8 %58 to i64
  %60 = shl   i64 %59, 40
  %61 = add i64 %4, 14
  %62 = inttoptr i64 %61 to i8*
  %63 = load i8, i8* %62
  %64 = zext i8 %63 to i64
  %65 = shl   i64 %64, 48
  %66 = add i64 %4, 15
  %67 = inttoptr i64 %66 to i8*
  %68 = load i8, i8* %67
  %69 = zext i8 %32 to i64
  %70 = zext i8 %29 to i64
  %71 = zext i8 %26 to i64
  %72 = zext i8 %23 to i64
  %73 = shl   i64 %72, 24
  %74 = zext i8 %20 to i64
  %75 = shl   i64 %74, 16
  %76 = zext i8 %17 to i64
  %77 = shl   i64 %76, 8
  %78 = zext i8 %14 to i64
  %79 = add i64 %78, %7
  %80 = add i8 %35, %12
  %81 = trunc i64 %10 to i8
  %82 = add i8 %38, %81
  %83 = shl   i64 %42, 8
  %84 = add i64 %83, %10
  %85 = shl   i64 %46, 16
  %86 = add i64 %85, %10
  %87 = shl   i64 %50, 24
  %88 = add i64 %87, %10
  %89 = add i64 %55, %10
  %90 = add i64 %60, %10
  %91 = add i64 %65, %10
  %92 = lshr i64 %10, 56
  %93 = trunc i64 %92 to i8
  %94 = add i8 %68, %93
  %95 = shl   i64 %69, 48
  %96 = add i64 %95, %7
  %97 = shl   i64 %70, 40
  %98 = add i64 %97, %7
  %99 = shl   i64 %71, 32
  %100 = add i64 %99, %7
  %101 = add i64 %73, %7
  %102 = add i64 %75, %7
  %103 = add i64 %77, %7
  %104 = trunc i64 %79 to i8
  %105 = lshr i64 %103, 8
  %106 = trunc i64 %105 to i8
  %107 = lshr i64 %102, 16
  %108 = trunc i64 %107 to i8
  %109 = lshr i64 %101, 24
  %110 = trunc i64 %109 to i8
  %111 = lshr i64 %100, 32
  %112 = trunc i64 %111 to i8
  %113 = lshr i64 %98, 40
  %114 = trunc i64 %113 to i8
  %115 = lshr i64 %96, 48
  %116 = trunc i64 %115 to i8
  store i8 %104, i8* %2, align 1
  %117 = getelementptr inbounds i8, i8* %2, i64 1
  store i8 %106, i8* %117, align 1
  %118 = getelementptr inbounds i8, i8* %2, i64 2
  store i8 %108, i8* %118, align 1
  %119 = getelementptr inbounds i8, i8* %2, i64 3
  store i8 %110, i8* %119, align 1
  %120 = getelementptr inbounds i8, i8* %2, i64 4
  store i8 %112, i8* %120, align 1
  %121 = getelementptr inbounds i8, i8* %2, i64 5
  store i8 %114, i8* %121, align 1
  %122 = getelementptr inbounds i8, i8* %2, i64 6
  store i8 %116, i8* %122, align 1
  %123 = getelementptr inbounds i8, i8* %2, i64 7
  store i8 %80, i8* %123, align 1
  %124 = getelementptr inbounds i8, i8* %2, i64 8
  store i8 %82, i8* %124, align 1
  %125 = lshr i64 %84, 8
  %126 = trunc i64 %125 to i8
  %127 = getelementptr inbounds i8, i8* %2, i64 9
  store i8 %126, i8* %127, align 1
  %128 = lshr i64 %86, 16
  %129 = trunc i64 %128 to i8
  %130 = getelementptr inbounds i8, i8* %2, i64 10
  store i8 %129, i8* %130, align 1
  %131 = lshr i64 %88, 24
  %132 = trunc i64 %131 to i8
  %133 = getelementptr inbounds i8, i8* %2, i64 11
  store i8 %132, i8* %133, align 1
  %134 = lshr i64 %89, 32
  %135 = trunc i64 %134 to i8
  %136 = getelementptr inbounds i8, i8* %2, i64 12
  store i8 %135, i8* %136, align 1
  %137 = lshr i64 %90, 40
  %138 = trunc i64 %137 to i8
  %139 = getelementptr inbounds i8, i8* %2, i64 13
  store i8 %138, i8* %139, align 1
  %140 = lshr i64 %91, 48
  %141 = trunc i64 %140 to i8
  %142 = getelementptr inbounds i8, i8* %2, i64 14
  store i8 %141, i8* %142, align 1
  %143 = getelementptr inbounds i8, i8* %2, i64 15
  store i8 %94, i8* %143, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_paddb_xmm_m128(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #19 {
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
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5PADDBI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
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
  %call = call %struct.Memory* @routine_paddb_xmm_m128(%struct.State* %state, i64 0, %struct.Memory* %mem)
  ret i32 0
}