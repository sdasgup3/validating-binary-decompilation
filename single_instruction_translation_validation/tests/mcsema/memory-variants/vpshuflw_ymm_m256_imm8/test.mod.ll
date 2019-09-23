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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L7PSHUFLWI3VnWI8vec256_tE3MVnIS2_EEEP6MemoryS7_R5StateT_T0_2InIhE(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i64, i64) #0 {
  %6 = alloca %struct.uint128v2_t, align 8
  %7 = alloca %struct.uint16v16_t, align 2
  %8 = bitcast %struct.uint128v2_t* %6 to i8*
  call void @my.lifetime.start(i64 32, i8* nonnull %8) #22
  %9 = inttoptr i64 %3 to i64*
  %10 = load i64, i64* %9
  %11 = add i64 %3, 8
  %12 = inttoptr i64 %11 to i64*
  %13 = load i64, i64* %12
  %14 = zext i64 %13 to i128
  %15 = shl  i128 %14, 64
  %16 = zext i64 %10 to i128
  %17 = or i128 %15, %16
  %18 = getelementptr inbounds %struct.uint128v2_t, %struct.uint128v2_t* %6, i64 0, i32 0, i64 0
  store i128 %17, i128* %18, align 8
  %19 = add i64 %3, 16
  %20 = inttoptr i64 %19 to i64*
  %21 = load i64, i64* %20
  %22 = add i64 %3, 24
  %23 = inttoptr i64 %22 to i64*
  %24 = load i64, i64* %23
  %25 = zext i64 %24 to i128
  %26 = shl  i128 %25, 64
  %27 = zext i64 %21 to i128
  %28 = or i128 %26, %27
  %29 = getelementptr inbounds %struct.uint128v2_t, %struct.uint128v2_t* %6, i64 0, i32 0, i64 1
  store i128 %28, i128* %29, align 8
  %30 = bitcast %struct.uint16v16_t* %7 to i8*
  call void @my.lifetime.start(i64 32, i8* nonnull %30) #22
  %31 = inttoptr i64 %3 to i16*
  %32 = load i16, i16* %31
  %33 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %7, i64 0, i32 0, i64 0
  store i16 %32, i16* %33, align 2
  %34 = add i64 %3, 2
  %35 = inttoptr i64 %34 to i16*
  %36 = load i16, i16* %35
  %37 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %7, i64 0, i32 0, i64 1
  store i16 %36, i16* %37, align 2
  %38 = add i64 %3, 4
  %39 = inttoptr i64 %38 to i16*
  %40 = load i16, i16* %39
  %41 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %7, i64 0, i32 0, i64 2
  store i16 %40, i16* %41, align 2
  %42 = add i64 %3, 6
  %43 = inttoptr i64 %42 to i16*
  %44 = load i16, i16* %43
  %45 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %7, i64 0, i32 0, i64 3
  store i16 %44, i16* %45, align 2
  %46 = inttoptr i64 %11 to i16*
  %47 = load i16, i16* %46
  %48 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %7, i64 0, i32 0, i64 4
  store i16 %47, i16* %48, align 2
  %49 = add i64 %3, 10
  %50 = inttoptr i64 %49 to i16*
  %51 = load i16, i16* %50
  %52 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %7, i64 0, i32 0, i64 5
  store i16 %51, i16* %52, align 2
  %53 = add i64 %3, 12
  %54 = inttoptr i64 %53 to i16*
  %55 = load i16, i16* %54
  %56 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %7, i64 0, i32 0, i64 6
  store i16 %55, i16* %56, align 2
  %57 = add i64 %3, 14
  %58 = inttoptr i64 %57 to i16*
  %59 = load i16, i16* %58
  %60 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %7, i64 0, i32 0, i64 7
  store i16 %59, i16* %60, align 2
  %61 = inttoptr i64 %19 to i16*
  %62 = load i16, i16* %61
  %63 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %7, i64 0, i32 0, i64 8
  store i16 %62, i16* %63, align 2
  %64 = add i64 %3, 18
  %65 = inttoptr i64 %64 to i16*
  %66 = load i16, i16* %65
  %67 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %7, i64 0, i32 0, i64 9
  store i16 %66, i16* %67, align 2
  %68 = add i64 %3, 20
  %69 = inttoptr i64 %68 to i16*
  %70 = load i16, i16* %69
  %71 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %7, i64 0, i32 0, i64 10
  store i16 %70, i16* %71, align 2
  %72 = add i64 %3, 22
  %73 = inttoptr i64 %72 to i16*
  %74 = load i16, i16* %73
  %75 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %7, i64 0, i32 0, i64 11
  store i16 %74, i16* %75, align 2
  %76 = inttoptr i64 %22 to i16*
  %77 = load i16, i16* %76
  %78 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %7, i64 0, i32 0, i64 12
  store i16 %77, i16* %78, align 2
  %79 = add i64 %3, 26
  %80 = inttoptr i64 %79 to i16*
  %81 = load i16, i16* %80
  %82 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %7, i64 0, i32 0, i64 13
  store i16 %81, i16* %82, align 2
  %83 = add i64 %3, 28
  %84 = inttoptr i64 %83 to i16*
  %85 = load i16, i16* %84
  %86 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %7, i64 0, i32 0, i64 14
  store i16 %85, i16* %86, align 2
  %87 = add i64 %3, 30
  %88 = inttoptr i64 %87 to i16*
  %89 = load i16, i16* %88
  %90 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %7, i64 0, i32 0, i64 15
  store i16 %89, i16* %90, align 2
  %91 = load i128, i128* %18, align 8
  %92 = shl i64 %4, 4
  %93 = and i64 %92, 48
  %94 = lshr i64 %4, 2
  %95 = and i64 %94, 63
  %96 = zext i64 %93 to i128
  %97 = lshr i128 %91, %96
  %98 = trunc i128 %97 to i16
  %99 = shl   i64 %95, 4
  %100 = and i64 %99, 48
  %101 = zext i64 %100 to i128
  %102 = lshr i128 %91, %101
  %103 = trunc i128 %102 to i16
  %104 = shl   i64 %95, 2
  %105 = and i64 %104, 48
  %106 = zext i64 %105 to i128
  %107 = lshr i128 %91, %106
  %108 = trunc i128 %107 to i16
  %109 = and i64 %94, 48
  %110 = zext i64 %109 to i128
  %111 = lshr i128 %91, %110
  %112 = trunc i128 %111 to i16
  %113 = load i16, i16* %48, align 2
  %114 = load i16, i16* %52, align 2
  %115 = load i16, i16* %56, align 2
  %116 = load i16, i16* %60, align 2
  %117 = load i128, i128* %29, align 8
  %118 = lshr i128 %117, %96
  %119 = trunc i128 %118 to i16
  %120 = lshr i128 %117, %101
  %121 = trunc i128 %120 to i16
  %122 = lshr i128 %117, %106
  %123 = trunc i128 %122 to i16
  %124 = lshr i128 %117, %110
  %125 = trunc i128 %124 to i16
  %126 = load i16, i16* %78, align 2
  %127 = load i16, i16* %82, align 2
  %128 = load i16, i16* %86, align 2
  %129 = load i16, i16* %90, align 2
  %130 = bitcast i8* %2 to i16*
  store i16 %98, i16* %130, align 1
  %131 = getelementptr inbounds i8, i8* %2, i64 2
  %132 = bitcast i8* %131 to i16*
  store i16 %103, i16* %132, align 1
  %133 = getelementptr inbounds i8, i8* %2, i64 4
  %134 = bitcast i8* %133 to i16*
  store i16 %108, i16* %134, align 1
  %135 = getelementptr inbounds i8, i8* %2, i64 6
  %136 = bitcast i8* %135 to i16*
  store i16 %112, i16* %136, align 1
  %137 = getelementptr inbounds i8, i8* %2, i64 8
  %138 = bitcast i8* %137 to i16*
  store i16 %113, i16* %138, align 1
  %139 = getelementptr inbounds i8, i8* %2, i64 10
  %140 = bitcast i8* %139 to i16*
  store i16 %114, i16* %140, align 1
  %141 = getelementptr inbounds i8, i8* %2, i64 12
  %142 = bitcast i8* %141 to i16*
  store i16 %115, i16* %142, align 1
  %143 = getelementptr inbounds i8, i8* %2, i64 14
  %144 = bitcast i8* %143 to i16*
  store i16 %116, i16* %144, align 1
  %145 = getelementptr inbounds i8, i8* %2, i64 16
  %146 = bitcast i8* %145 to i16*
  store i16 %119, i16* %146, align 1
  %147 = getelementptr inbounds i8, i8* %2, i64 18
  %148 = bitcast i8* %147 to i16*
  store i16 %121, i16* %148, align 1
  %149 = getelementptr inbounds i8, i8* %2, i64 20
  %150 = bitcast i8* %149 to i16*
  store i16 %123, i16* %150, align 1
  %151 = getelementptr inbounds i8, i8* %2, i64 22
  %152 = bitcast i8* %151 to i16*
  store i16 %125, i16* %152, align 1
  %153 = getelementptr inbounds i8, i8* %2, i64 24
  %154 = bitcast i8* %153 to i16*
  store i16 %126, i16* %154, align 1
  %155 = getelementptr inbounds i8, i8* %2, i64 26
  %156 = bitcast i8* %155 to i16*
  store i16 %127, i16* %156, align 1
  %157 = getelementptr inbounds i8, i8* %2, i64 28
  %158 = bitcast i8* %157 to i16*
  store i16 %128, i16* %158, align 1
  %159 = getelementptr inbounds i8, i8* %2, i64 30
  %160 = bitcast i8* %159 to i16*
  store i16 %129, i16* %160, align 1
  call void @my.lifetime.end(i64 32, i8* nonnull %30) #22
  call void @my.lifetime.end(i64 32, i8* nonnull %8) #22
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_vpshuflw_ymm_m256_imm8(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #19 {
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
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L7PSHUFLWI3VnWI8vec256_tE3MVnIS2_EEEP6MemoryS7_R5StateT_T0_2InIhE(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13, i64 0)
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 1
  store i64 %18, i64* %PC
  ret %struct.Memory* %16
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
  %call = call %struct.Memory* @routine_vpshuflw_ymm_m256_imm8(%struct.State* %state, i64 0, %struct.Memory* %mem)
  ret i32 0
}