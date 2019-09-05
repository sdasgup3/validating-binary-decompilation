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

define i32 @sub_vpcmpgtw_ymm_ymm_m256(%struct.State*, i64, i64) {
block_4003e0:
  %3 = alloca %struct.uint16v16_t, align 16
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
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %14 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %13, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %14 to %"class.std::bitset"*
  %15 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %16 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %17 = load i64, i64* %RBP
  %18 = sub i64 %17, 4
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 5
  store i64 %20, i64* %PC
  %21 = bitcast %struct.uint16v16_t* %3 to i8*
  call void @my.lifetime.start(i64 32, i8* nonnull %21) #14
  call void @my.memcpy.p0i8.p0i8.i64(i8* nonnull %21, i8* %16, i64 32, i32 1, i1 false) #14
  %22 = bitcast %struct.uint16v16_t* %4 to i8*
  call void @my.lifetime.start(i64 32, i8* nonnull %22) #14
  %23 = inttoptr i64 %18 to i16*
  %24 = load i16, i16* %23
  %25 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %4, i64 0, i32 0, i64 0
  store i16 %24, i16* %25, align 2
  %26 = add i64 %18, 2
  %27 = inttoptr i64 %26 to i16*
  %28 = load i16, i16* %27
  %29 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %4, i64 0, i32 0, i64 1
  store i16 %28, i16* %29, align 2
  %30 = inttoptr i64 %17 to i16*
  %31 = load i16, i16* %30
  %32 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %4, i64 0, i32 0, i64 2
  store i16 %31, i16* %32, align 2
  %33 = add i64 %18, 6
  %34 = inttoptr i64 %33 to i16*
  %35 = load i16, i16* %34
  %36 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %4, i64 0, i32 0, i64 3
  store i16 %35, i16* %36, align 2
  %37 = add i64 %18, 8
  %38 = inttoptr i64 %37 to i16*
  %39 = load i16, i16* %38
  %40 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %4, i64 0, i32 0, i64 4
  store i16 %39, i16* %40, align 2
  %41 = add i64 %18, 10
  %42 = inttoptr i64 %41 to i16*
  %43 = load i16, i16* %42
  %44 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %4, i64 0, i32 0, i64 5
  store i16 %43, i16* %44, align 2
  %45 = add i64 %18, 12
  %46 = inttoptr i64 %45 to i16*
  %47 = load i16, i16* %46
  %48 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %4, i64 0, i32 0, i64 6
  store i16 %47, i16* %48, align 2
  %49 = add i64 %18, 14
  %50 = inttoptr i64 %49 to i16*
  %51 = load i16, i16* %50
  %52 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %4, i64 0, i32 0, i64 7
  store i16 %51, i16* %52, align 2
  %53 = add i64 %18, 16
  %54 = inttoptr i64 %53 to i16*
  %55 = load i16, i16* %54
  %56 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %4, i64 0, i32 0, i64 8
  store i16 %55, i16* %56, align 2
  %57 = add i64 %18, 18
  %58 = inttoptr i64 %57 to i16*
  %59 = load i16, i16* %58
  %60 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %4, i64 0, i32 0, i64 9
  store i16 %59, i16* %60, align 2
  %61 = add i64 %18, 20
  %62 = inttoptr i64 %61 to i16*
  %63 = load i16, i16* %62
  %64 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %4, i64 0, i32 0, i64 10
  store i16 %63, i16* %64, align 2
  %65 = add i64 %18, 22
  %66 = inttoptr i64 %65 to i16*
  %67 = load i16, i16* %66
  %68 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %4, i64 0, i32 0, i64 11
  store i16 %67, i16* %68, align 2
  %69 = add i64 %18, 24
  %70 = inttoptr i64 %69 to i16*
  %71 = load i16, i16* %70
  %72 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %4, i64 0, i32 0, i64 12
  store i16 %71, i16* %72, align 2
  %73 = add i64 %18, 26
  %74 = inttoptr i64 %73 to i16*
  %75 = load i16, i16* %74
  %76 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %4, i64 0, i32 0, i64 13
  store i16 %75, i16* %76, align 2
  %77 = add i64 %18, 28
  %78 = inttoptr i64 %77 to i16*
  %79 = load i16, i16* %78
  %80 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %4, i64 0, i32 0, i64 14
  store i16 %79, i16* %80, align 2
  %81 = add i64 %18, 30
  %82 = inttoptr i64 %81 to i16*
  %83 = load i16, i16* %82
  %84 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %4, i64 0, i32 0, i64 15
  store i16 %83, i16* %84, align 2
  %85 = load i16, i16* %32, align 2
  %86 = load i16, i16* %36, align 2
  %87 = load i16, i16* %40, align 2
  %88 = load i16, i16* %44, align 2
  %89 = load i16, i16* %48, align 2
  %90 = bitcast %struct.uint16v16_t* %3 to <8 x i16>*
  %91 = load <8 x i16>, <8 x i16>* %90, align 16
  %92 = load i16, i16* %52, align 2
  %93 = insertelement <8 x i16> undef, i16 %24, i32 0
  %94 = insertelement <8 x i16> %93, i16 %28, i32 1
  %95 = insertelement <8 x i16> %94, i16 %85, i32 2
  %96 = insertelement <8 x i16> %95, i16 %86, i32 3
  %97 = insertelement <8 x i16> %96, i16 %87, i32 4
  %98 = insertelement <8 x i16> %97, i16 %88, i32 5
  %99 = insertelement <8 x i16> %98, i16 %89, i32 6
  %100 = insertelement <8 x i16> %99, i16 %92, i32 7
  %101 = icmp sgt <8 x i16> %91, %100
  %102 = sext <8 x i1> %101 to <8 x i16>
  %103 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %3, i64 0, i32 0, i64 8
  %104 = bitcast i16* %103 to <8 x i16>*
  %105 = load <8 x i16>, <8 x i16>* %104, align 16
  %106 = bitcast i16* %56 to <8 x i16>*
  %107 = load <8 x i16>, <8 x i16>* %106, align 2
  %108 = icmp sgt <8 x i16> %105, %107
  %109 = sext <8 x i1> %108 to <8 x i16>
  %110 = bitcast i8* %15 to <8 x i16>*
  store <8 x i16> %102, <8 x i16>* %110, align 1
  %111 = getelementptr inbounds i8, i8* %15, i64 16
  %112 = bitcast i8* %111 to <8 x i16>*
  store <8 x i16> %109, <8 x i16>* %112, align 1
  call void @my.lifetime.end(i64 32, i8* nonnull %22) #14
  call void @my.lifetime.end(i64 32, i8* nonnull %21) #14
  %113 = load i64, i64* %PC
  %114 = add i64 %113, 1
  store i64 %114, i64* %PC
  %115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
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
  %call = call i32 @sub_vpcmpgtw_ymm_ymm_m256(%struct.State* %state, i64 0, i64 0)
  ret i32 0
}