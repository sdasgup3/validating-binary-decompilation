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

define i32 @sub_vpshuflw_ymm_m256_imm8(%struct.State*, i64, i64) {
block_4003e0:
  %3 = alloca %struct.uint128v2_t, align 8
  %4 = alloca %struct.uint16v16_t, align 2
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6 = getelementptr inbounds %struct.GPR, %struct.GPR* %5, i32 0, i32 33
  %7 = getelementptr inbounds %struct.Reg, %struct.Reg* %6, i32 0, i32 0
  %PC = bitcast %union.anon* %7 to i64*
  store i64 %1, i64* %PC, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9 = getelementptr inbounds %struct.GPR, %struct.GPR* %8, i32 0, i32 15
  %10 = getelementptr inbounds %struct.Reg, %struct.Reg* %9, i32 0, i32 0
  %RBP = bitcast %union.anon* %10 to i64*
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %12 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %11, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %12 to %"class.std::bitset"*
  %13 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %14 = load i64, i64* %RBP
  %15 = sub i64 %14, 4
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = bitcast %struct.uint128v2_t* %3 to i8*
  call void @my.lifetime.start(i64 32, i8* nonnull %18) #14
  %19 = inttoptr i64 %15 to i64*
  %20 = load i64, i64* %19
  %21 = add i64 %15, 8
  %22 = inttoptr i64 %21 to i64*
  %23 = load i64, i64* %22
  %24 = zext i64 %23 to i128
  %25 = shl  i128 %24, 64
  %26 = zext i64 %20 to i128
  %27 = or i128 %25, %26
  %28 = getelementptr inbounds %struct.uint128v2_t, %struct.uint128v2_t* %3, i64 0, i32 0, i64 0
  store i128 %27, i128* %28, align 8
  %29 = add i64 %15, 16
  %30 = inttoptr i64 %29 to i64*
  %31 = load i64, i64* %30
  %32 = add i64 %15, 24
  %33 = inttoptr i64 %32 to i64*
  %34 = load i64, i64* %33
  %35 = zext i64 %34 to i128
  %36 = shl  i128 %35, 64
  %37 = zext i64 %31 to i128
  %38 = or i128 %36, %37
  %39 = getelementptr inbounds %struct.uint128v2_t, %struct.uint128v2_t* %3, i64 0, i32 0, i64 1
  store i128 %38, i128* %39, align 8
  %40 = bitcast %struct.uint16v16_t* %4 to i8*
  call void @my.lifetime.start(i64 32, i8* nonnull %40) #14
  %41 = inttoptr i64 %15 to i16*
  %42 = load i16, i16* %41
  %43 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %4, i64 0, i32 0, i64 0
  store i16 %42, i16* %43, align 2
  %44 = add i64 %15, 2
  %45 = inttoptr i64 %44 to i16*
  %46 = load i16, i16* %45
  %47 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %4, i64 0, i32 0, i64 1
  store i16 %46, i16* %47, align 2
  %48 = inttoptr i64 %14 to i16*
  %49 = load i16, i16* %48
  %50 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %4, i64 0, i32 0, i64 2
  store i16 %49, i16* %50, align 2
  %51 = add i64 %15, 6
  %52 = inttoptr i64 %51 to i16*
  %53 = load i16, i16* %52
  %54 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %4, i64 0, i32 0, i64 3
  store i16 %53, i16* %54, align 2
  %55 = inttoptr i64 %21 to i16*
  %56 = load i16, i16* %55
  %57 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %4, i64 0, i32 0, i64 4
  store i16 %56, i16* %57, align 2
  %58 = add i64 %15, 10
  %59 = inttoptr i64 %58 to i16*
  %60 = load i16, i16* %59
  %61 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %4, i64 0, i32 0, i64 5
  store i16 %60, i16* %61, align 2
  %62 = add i64 %15, 12
  %63 = inttoptr i64 %62 to i16*
  %64 = load i16, i16* %63
  %65 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %4, i64 0, i32 0, i64 6
  store i16 %64, i16* %65, align 2
  %66 = add i64 %15, 14
  %67 = inttoptr i64 %66 to i16*
  %68 = load i16, i16* %67
  %69 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %4, i64 0, i32 0, i64 7
  store i16 %68, i16* %69, align 2
  %70 = inttoptr i64 %29 to i16*
  %71 = load i16, i16* %70
  %72 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %4, i64 0, i32 0, i64 8
  store i16 %71, i16* %72, align 2
  %73 = add i64 %15, 18
  %74 = inttoptr i64 %73 to i16*
  %75 = load i16, i16* %74
  %76 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %4, i64 0, i32 0, i64 9
  store i16 %75, i16* %76, align 2
  %77 = add i64 %15, 20
  %78 = inttoptr i64 %77 to i16*
  %79 = load i16, i16* %78
  %80 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %4, i64 0, i32 0, i64 10
  store i16 %79, i16* %80, align 2
  %81 = add i64 %15, 22
  %82 = inttoptr i64 %81 to i16*
  %83 = load i16, i16* %82
  %84 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %4, i64 0, i32 0, i64 11
  store i16 %83, i16* %84, align 2
  %85 = inttoptr i64 %32 to i16*
  %86 = load i16, i16* %85
  %87 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %4, i64 0, i32 0, i64 12
  store i16 %86, i16* %87, align 2
  %88 = add i64 %15, 26
  %89 = inttoptr i64 %88 to i16*
  %90 = load i16, i16* %89
  %91 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %4, i64 0, i32 0, i64 13
  store i16 %90, i16* %91, align 2
  %92 = add i64 %15, 28
  %93 = inttoptr i64 %92 to i16*
  %94 = load i16, i16* %93
  %95 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %4, i64 0, i32 0, i64 14
  store i16 %94, i16* %95, align 2
  %96 = add i64 %15, 30
  %97 = inttoptr i64 %96 to i16*
  %98 = load i16, i16* %97
  %99 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %4, i64 0, i32 0, i64 15
  store i16 %98, i16* %99, align 2
  %100 = load i128, i128* %28, align 8
  %101 = trunc i128 %100 to i16
  %102 = trunc i128 %100 to i16
  %103 = trunc i128 %100 to i16
  %104 = trunc i128 %100 to i16
  %105 = load i16, i16* %57, align 2
  %106 = load i16, i16* %61, align 2
  %107 = load i16, i16* %65, align 2
  %108 = load i16, i16* %69, align 2
  %109 = load i128, i128* %39, align 8
  %110 = trunc i128 %109 to i16
  %111 = trunc i128 %109 to i16
  %112 = trunc i128 %109 to i16
  %113 = trunc i128 %109 to i16
  %114 = load i16, i16* %87, align 2
  %115 = load i16, i16* %91, align 2
  %116 = load i16, i16* %95, align 2
  %117 = load i16, i16* %99, align 2
  %118 = bitcast i8* %13 to i16*
  store i16 %101, i16* %118, align 1
  %119 = getelementptr inbounds i8, i8* %13, i64 2
  %120 = bitcast i8* %119 to i16*
  store i16 %102, i16* %120, align 1
  %121 = getelementptr inbounds i8, i8* %13, i64 4
  %122 = bitcast i8* %121 to i16*
  store i16 %103, i16* %122, align 1
  %123 = getelementptr inbounds i8, i8* %13, i64 6
  %124 = bitcast i8* %123 to i16*
  store i16 %104, i16* %124, align 1
  %125 = getelementptr inbounds i8, i8* %13, i64 8
  %126 = bitcast i8* %125 to i16*
  store i16 %105, i16* %126, align 1
  %127 = getelementptr inbounds i8, i8* %13, i64 10
  %128 = bitcast i8* %127 to i16*
  store i16 %106, i16* %128, align 1
  %129 = getelementptr inbounds i8, i8* %13, i64 12
  %130 = bitcast i8* %129 to i16*
  store i16 %107, i16* %130, align 1
  %131 = getelementptr inbounds i8, i8* %13, i64 14
  %132 = bitcast i8* %131 to i16*
  store i16 %108, i16* %132, align 1
  %133 = getelementptr inbounds i8, i8* %13, i64 16
  %134 = bitcast i8* %133 to i16*
  store i16 %110, i16* %134, align 1
  %135 = getelementptr inbounds i8, i8* %13, i64 18
  %136 = bitcast i8* %135 to i16*
  store i16 %111, i16* %136, align 1
  %137 = getelementptr inbounds i8, i8* %13, i64 20
  %138 = bitcast i8* %137 to i16*
  store i16 %112, i16* %138, align 1
  %139 = getelementptr inbounds i8, i8* %13, i64 22
  %140 = bitcast i8* %139 to i16*
  store i16 %113, i16* %140, align 1
  %141 = getelementptr inbounds i8, i8* %13, i64 24
  %142 = bitcast i8* %141 to i16*
  store i16 %114, i16* %142, align 1
  %143 = getelementptr inbounds i8, i8* %13, i64 26
  %144 = bitcast i8* %143 to i16*
  store i16 %115, i16* %144, align 1
  %145 = getelementptr inbounds i8, i8* %13, i64 28
  %146 = bitcast i8* %145 to i16*
  store i16 %116, i16* %146, align 1
  %147 = getelementptr inbounds i8, i8* %13, i64 30
  %148 = bitcast i8* %147 to i16*
  store i16 %117, i16* %148, align 1
  call void @my.lifetime.end(i64 32, i8* nonnull %40) #14
  call void @my.lifetime.end(i64 32, i8* nonnull %18) #14
  %149 = load i64, i64* %PC
  %150 = add i64 %149, 1
  store i64 %150, i64* %PC
  %151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  ret i32 0
}

define i32 @main() {
entry:
  %state = alloca %struct.State
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
  %call = call i32 @sub_vpshuflw_ymm_m256_imm8(%struct.State* %state, i64 0, i64 0)
  ret i32 0
}