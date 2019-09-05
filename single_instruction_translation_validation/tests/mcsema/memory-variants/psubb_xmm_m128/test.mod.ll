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

define i32 @sub_psubb_xmm_m128(%struct.State*, i64, i64) {
block_4003e0:
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
  %17 = bitcast i8* %12 to i64*
  %18 = load i64, i64* %17, align 1
  %19 = getelementptr inbounds i8, i8* %12, i64 8
  %20 = bitcast i8* %19 to i64*
  %21 = load i64, i64* %20, align 1
  %22 = lshr i64 %18, 56
  %23 = trunc i64 %22 to i8
  %24 = inttoptr i64 %14 to i8*
  %25 = load i8, i8* %24
  %26 = add i64 %14, 1
  %27 = inttoptr i64 %26 to i8*
  %28 = load i8, i8* %27
  %29 = add i64 %14, 2
  %30 = inttoptr i64 %29 to i8*
  %31 = load i8, i8* %30
  %32 = add i64 %14, 3
  %33 = inttoptr i64 %32 to i8*
  %34 = load i8, i8* %33
  %35 = inttoptr i64 %13 to i8*
  %36 = load i8, i8* %35
  %37 = add i64 %14, 5
  %38 = inttoptr i64 %37 to i8*
  %39 = load i8, i8* %38
  %40 = add i64 %14, 6
  %41 = inttoptr i64 %40 to i8*
  %42 = load i8, i8* %41
  %43 = add i64 %14, 7
  %44 = inttoptr i64 %43 to i8*
  %45 = load i8, i8* %44
  %46 = add i64 %14, 8
  %47 = inttoptr i64 %46 to i8*
  %48 = load i8, i8* %47
  %49 = add i64 %14, 9
  %50 = inttoptr i64 %49 to i8*
  %51 = load i8, i8* %50
  %52 = zext i8 %51 to i64
  %53 = add i64 %14, 10
  %54 = inttoptr i64 %53 to i8*
  %55 = load i8, i8* %54
  %56 = zext i8 %55 to i64
  %57 = add i64 %14, 11
  %58 = inttoptr i64 %57 to i8*
  %59 = load i8, i8* %58
  %60 = zext i8 %59 to i64
  %61 = add i64 %14, 12
  %62 = inttoptr i64 %61 to i8*
  %63 = load i8, i8* %62
  %64 = zext i8 %63 to i64
  %65 = shl   i64 %64, 32
  %66 = add i64 %14, 13
  %67 = inttoptr i64 %66 to i8*
  %68 = load i8, i8* %67
  %69 = zext i8 %68 to i64
  %70 = shl   i64 %69, 40
  %71 = add i64 %14, 14
  %72 = inttoptr i64 %71 to i8*
  %73 = load i8, i8* %72
  %74 = zext i8 %73 to i64
  %75 = shl   i64 %74, 48
  %76 = add i64 %14, 15
  %77 = inttoptr i64 %76 to i8*
  %78 = load i8, i8* %77
  %79 = zext i8 %42 to i64
  %80 = zext i8 %39 to i64
  %81 = zext i8 %36 to i64
  %82 = zext i8 %34 to i64
  %83 = shl   i64 %82, 24
  %84 = zext i8 %31 to i64
  %85 = shl   i64 %84, 16
  %86 = zext i8 %28 to i64
  %87 = shl   i64 %86, 8
  %88 = zext i8 %25 to i64
  %89 = sub i64 %18, %88
  %90 = sub i8 %23, %45
  %91 = trunc i64 %21 to i8
  %92 = sub i8 %91, %48
  %93 = shl   i64 %52, 8
  %94 = sub i64 %21, %93
  %95 = shl   i64 %56, 16
  %96 = sub i64 %21, %95
  %97 = shl   i64 %60, 24
  %98 = sub i64 %21, %97
  %99 = sub i64 %21, %65
  %100 = sub i64 %21, %70
  %101 = sub i64 %21, %75
  %102 = lshr i64 %21, 56
  %103 = trunc i64 %102 to i8
  %104 = sub i8 %103, %78
  %105 = shl   i64 %79, 48
  %106 = sub i64 %18, %105
  %107 = shl   i64 %80, 40
  %108 = sub i64 %18, %107
  %109 = shl   i64 %81, 32
  %110 = sub i64 %18, %109
  %111 = sub i64 %18, %83
  %112 = sub i64 %18, %85
  %113 = sub i64 %18, %87
  %114 = trunc i64 %89 to i8
  %115 = lshr i64 %113, 8
  %116 = trunc i64 %115 to i8
  %117 = lshr i64 %112, 16
  %118 = trunc i64 %117 to i8
  %119 = lshr i64 %111, 24
  %120 = trunc i64 %119 to i8
  %121 = lshr i64 %110, 32
  %122 = trunc i64 %121 to i8
  %123 = lshr i64 %108, 40
  %124 = trunc i64 %123 to i8
  %125 = lshr i64 %106, 48
  %126 = trunc i64 %125 to i8
  store i8 %114, i8* %11, align 1
  %127 = getelementptr inbounds i8, i8* %11, i64 1
  store i8 %116, i8* %127, align 1
  %128 = getelementptr inbounds i8, i8* %11, i64 2
  store i8 %118, i8* %128, align 1
  %129 = getelementptr inbounds i8, i8* %11, i64 3
  store i8 %120, i8* %129, align 1
  %130 = getelementptr inbounds i8, i8* %11, i64 4
  store i8 %122, i8* %130, align 1
  %131 = getelementptr inbounds i8, i8* %11, i64 5
  store i8 %124, i8* %131, align 1
  %132 = getelementptr inbounds i8, i8* %11, i64 6
  store i8 %126, i8* %132, align 1
  %133 = getelementptr inbounds i8, i8* %11, i64 7
  store i8 %90, i8* %133, align 1
  %134 = getelementptr inbounds i8, i8* %11, i64 8
  store i8 %92, i8* %134, align 1
  %135 = lshr i64 %94, 8
  %136 = trunc i64 %135 to i8
  %137 = getelementptr inbounds i8, i8* %11, i64 9
  store i8 %136, i8* %137, align 1
  %138 = lshr i64 %96, 16
  %139 = trunc i64 %138 to i8
  %140 = getelementptr inbounds i8, i8* %11, i64 10
  store i8 %139, i8* %140, align 1
  %141 = lshr i64 %98, 24
  %142 = trunc i64 %141 to i8
  %143 = getelementptr inbounds i8, i8* %11, i64 11
  store i8 %142, i8* %143, align 1
  %144 = lshr i64 %99, 32
  %145 = trunc i64 %144 to i8
  %146 = getelementptr inbounds i8, i8* %11, i64 12
  store i8 %145, i8* %146, align 1
  %147 = lshr i64 %100, 40
  %148 = trunc i64 %147 to i8
  %149 = getelementptr inbounds i8, i8* %11, i64 13
  store i8 %148, i8* %149, align 1
  %150 = lshr i64 %101, 48
  %151 = trunc i64 %150 to i8
  %152 = getelementptr inbounds i8, i8* %11, i64 14
  store i8 %151, i8* %152, align 1
  %153 = getelementptr inbounds i8, i8* %11, i64 15
  store i8 %104, i8* %153, align 1
  %154 = load i64, i64* %PC
  %155 = add i64 %154, 1
  store i64 %155, i64* %PC
  %156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
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
  %call = call i32 @sub_psubb_xmm_m128(%struct.State* %state, i64 0, i64 0)
  ret i32 0
}