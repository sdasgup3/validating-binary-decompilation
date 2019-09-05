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

define i32 @sub_vpcmpeqb_ymm_ymm_m256(%struct.State*, i64, i64) {
block_4003e0:
  %3 = alloca %struct.uint8v32_t, align 16
  %4 = alloca %struct.uint8v32_t, align 16
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
  %21 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %3, i64 0, i32 0, i64 0
  call void @my.lifetime.start(i64 32, i8* nonnull %21) #14
  call void @my.memcpy.p0i8.p0i8.i64(i8* nonnull %21, i8* %16, i64 32, i32 1, i1 false) #14
  %22 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %4, i64 0, i32 0, i64 0
  call void @my.lifetime.start(i64 32, i8* nonnull %22) #14
  %23 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %4, i64 0, i32 0, i64 25
  call void @my.memset.p0i8.i64(i8* %23, i8 0, i64 7, i32 1, i1 false) #14, !alias.scope !1281
  %24 = inttoptr i64 %18 to i8*
  %25 = load i8, i8* %24
  store i8 %25, i8* %22, align 16
  %26 = add i64 %18, 1
  %27 = inttoptr i64 %26 to i8*
  %28 = load i8, i8* %27
  %29 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %4, i64 0, i32 0, i64 1
  store i8 %28, i8* %29, align 1
  %30 = add i64 %18, 2
  %31 = inttoptr i64 %30 to i8*
  %32 = load i8, i8* %31
  %33 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %4, i64 0, i32 0, i64 2
  store i8 %32, i8* %33, align 2
  %34 = add i64 %18, 3
  %35 = inttoptr i64 %34 to i8*
  %36 = load i8, i8* %35
  %37 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %4, i64 0, i32 0, i64 3
  store i8 %36, i8* %37, align 1
  %38 = inttoptr i64 %17 to i8*
  %39 = load i8, i8* %38
  %40 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %4, i64 0, i32 0, i64 4
  store i8 %39, i8* %40, align 4
  %41 = add i64 %18, 5
  %42 = inttoptr i64 %41 to i8*
  %43 = load i8, i8* %42
  %44 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %4, i64 0, i32 0, i64 5
  store i8 %43, i8* %44, align 1
  %45 = add i64 %18, 6
  %46 = inttoptr i64 %45 to i8*
  %47 = load i8, i8* %46
  %48 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %4, i64 0, i32 0, i64 6
  store i8 %47, i8* %48, align 2
  %49 = add i64 %18, 7
  %50 = inttoptr i64 %49 to i8*
  %51 = load i8, i8* %50
  %52 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %4, i64 0, i32 0, i64 7
  store i8 %51, i8* %52, align 1
  %53 = add i64 %18, 8
  %54 = inttoptr i64 %53 to i8*
  %55 = load i8, i8* %54
  %56 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %4, i64 0, i32 0, i64 8
  store i8 %55, i8* %56, align 8
  %57 = add i64 %18, 9
  %58 = inttoptr i64 %57 to i8*
  %59 = load i8, i8* %58
  %60 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %4, i64 0, i32 0, i64 9
  store i8 %59, i8* %60, align 1
  %61 = add i64 %18, 10
  %62 = inttoptr i64 %61 to i8*
  %63 = load i8, i8* %62
  %64 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %4, i64 0, i32 0, i64 10
  store i8 %63, i8* %64, align 2
  %65 = add i64 %18, 11
  %66 = inttoptr i64 %65 to i8*
  %67 = load i8, i8* %66
  %68 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %4, i64 0, i32 0, i64 11
  store i8 %67, i8* %68, align 1
  %69 = add i64 %18, 12
  %70 = inttoptr i64 %69 to i8*
  %71 = load i8, i8* %70
  %72 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %4, i64 0, i32 0, i64 12
  store i8 %71, i8* %72, align 4
  %73 = add i64 %18, 13
  %74 = inttoptr i64 %73 to i8*
  %75 = load i8, i8* %74
  %76 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %4, i64 0, i32 0, i64 13
  store i8 %75, i8* %76, align 1
  %77 = add i64 %18, 14
  %78 = inttoptr i64 %77 to i8*
  %79 = load i8, i8* %78
  %80 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %4, i64 0, i32 0, i64 14
  store i8 %79, i8* %80, align 2
  %81 = add i64 %18, 15
  %82 = inttoptr i64 %81 to i8*
  %83 = load i8, i8* %82
  %84 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %4, i64 0, i32 0, i64 15
  store i8 %83, i8* %84, align 1
  %85 = add i64 %18, 16
  %86 = inttoptr i64 %85 to i8*
  %87 = load i8, i8* %86
  %88 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %4, i64 0, i32 0, i64 16
  store i8 %87, i8* %88, align 16
  %89 = add i64 %18, 17
  %90 = inttoptr i64 %89 to i8*
  %91 = load i8, i8* %90
  %92 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %4, i64 0, i32 0, i64 17
  store i8 %91, i8* %92, align 1
  %93 = add i64 %18, 18
  %94 = inttoptr i64 %93 to i8*
  %95 = load i8, i8* %94
  %96 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %4, i64 0, i32 0, i64 18
  store i8 %95, i8* %96, align 2
  %97 = add i64 %18, 19
  %98 = inttoptr i64 %97 to i8*
  %99 = load i8, i8* %98
  %100 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %4, i64 0, i32 0, i64 19
  store i8 %99, i8* %100, align 1
  %101 = add i64 %18, 20
  %102 = inttoptr i64 %101 to i8*
  %103 = load i8, i8* %102
  %104 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %4, i64 0, i32 0, i64 20
  store i8 %103, i8* %104, align 4
  %105 = add i64 %18, 21
  %106 = inttoptr i64 %105 to i8*
  %107 = load i8, i8* %106
  %108 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %4, i64 0, i32 0, i64 21
  store i8 %107, i8* %108, align 1
  %109 = add i64 %18, 22
  %110 = inttoptr i64 %109 to i8*
  %111 = load i8, i8* %110
  %112 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %4, i64 0, i32 0, i64 22
  store i8 %111, i8* %112, align 2
  %113 = add i64 %18, 23
  %114 = inttoptr i64 %113 to i8*
  %115 = load i8, i8* %114
  %116 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %4, i64 0, i32 0, i64 23
  store i8 %115, i8* %116, align 1
  %117 = add i64 %18, 24
  %118 = inttoptr i64 %117 to i8*
  %119 = load i8, i8* %118
  %120 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %4, i64 0, i32 0, i64 24
  store i8 %119, i8* %120, align 8
  %121 = add i64 %18, 25
  %122 = inttoptr i64 %121 to i8*
  %123 = load i8, i8* %122
  store i8 %123, i8* %23, align 1
  %124 = add i64 %18, 26
  %125 = inttoptr i64 %124 to i8*
  %126 = load i8, i8* %125
  %127 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %4, i64 0, i32 0, i64 26
  store i8 %126, i8* %127, align 2
  %128 = add i64 %18, 27
  %129 = inttoptr i64 %128 to i8*
  %130 = load i8, i8* %129
  %131 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %4, i64 0, i32 0, i64 27
  store i8 %130, i8* %131, align 1
  %132 = add i64 %18, 28
  %133 = inttoptr i64 %132 to i8*
  %134 = load i8, i8* %133
  %135 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %4, i64 0, i32 0, i64 28
  store i8 %134, i8* %135, align 4
  %136 = add i64 %18, 29
  %137 = inttoptr i64 %136 to i8*
  %138 = load i8, i8* %137
  %139 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %4, i64 0, i32 0, i64 29
  store i8 %138, i8* %139, align 1
  %140 = add i64 %18, 30
  %141 = inttoptr i64 %140 to i8*
  %142 = load i8, i8* %141
  %143 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %4, i64 0, i32 0, i64 30
  store i8 %142, i8* %143, align 2
  %144 = add i64 %18, 31
  %145 = inttoptr i64 %144 to i8*
  %146 = load i8, i8* %145
  %147 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %4, i64 0, i32 0, i64 31
  store i8 %146, i8* %147, align 1
  %148 = bitcast %struct.uint8v32_t* %3 to <16 x i8>*
  %149 = load <16 x i8>, <16 x i8>* %148, align 16
  %150 = bitcast %struct.uint8v32_t* %4 to <16 x i8>*
  %151 = load <16 x i8>, <16 x i8>* %150, align 16
  %152 = icmp eq <16 x i8> %149, %151
  %153 = sext <16 x i1> %152 to <16 x i8>
  %154 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %3, i64 0, i32 0, i64 16
  %155 = bitcast i8* %154 to <16 x i8>*
  %156 = load <16 x i8>, <16 x i8>* %155, align 16
  %157 = bitcast i8* %88 to <16 x i8>*
  %158 = load <16 x i8>, <16 x i8>* %157, align 16
  %159 = icmp eq <16 x i8> %156, %158
  %160 = sext <16 x i1> %159 to <16 x i8>
  %161 = bitcast i8* %15 to <16 x i8>*
  store <16 x i8> %153, <16 x i8>* %161, align 1
  %162 = getelementptr inbounds i8, i8* %15, i64 16
  %163 = bitcast i8* %162 to <16 x i8>*
  store <16 x i8> %160, <16 x i8>* %163, align 1
  call void @my.lifetime.end(i64 32, i8* nonnull %22) #14
  call void @my.lifetime.end(i64 32, i8* nonnull %21) #14
  %164 = load i64, i64* %PC
  %165 = add i64 %164, 1
  store i64 %165, i64* %PC
  %166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
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
  %call = call i32 @sub_vpcmpeqb_ymm_ymm_m256(%struct.State* %state, i64 0, i64 0)
  ret i32 0
}