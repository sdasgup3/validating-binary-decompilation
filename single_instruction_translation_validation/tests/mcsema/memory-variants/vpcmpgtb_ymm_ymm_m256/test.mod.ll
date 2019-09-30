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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L7PCMPGTBI3VnWI8vec256_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i8*, i8* nocapture readonly, i64) #0 {
  %6 = alloca %struct.uint8v32_t, align 16
  %7 = alloca %struct.uint8v32_t, align 16
  %8 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %6, i64 0, i32 0, i64 0
  call void @my.lifetime.start(i64 32, i8* nonnull %8) #22
  call void @my.memcpy.p0i8.p0i8.i64(i8* nonnull %8, i8* %3, i64 32, i32 1, i1 false) #22
  %9 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %7, i64 0, i32 0, i64 0
  call void @my.lifetime.start(i64 32, i8* nonnull %9) #22
  %10 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %7, i64 0, i32 0, i64 25
  call void @my.memset.p0i8.i64(i8* %10, i8 0, i64 7, i32 1, i1 false) #22, !alias.scope !1332
  %11 = inttoptr i64 %4 to i8*
  %12 = load i8, i8* %11
  store i8 %12, i8* %9, align 16
  %13 = add i64 %4, 1
  %14 = inttoptr i64 %13 to i8*
  %15 = load i8, i8* %14
  %16 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %7, i64 0, i32 0, i64 1
  store i8 %15, i8* %16, align 1
  %17 = add i64 %4, 2
  %18 = inttoptr i64 %17 to i8*
  %19 = load i8, i8* %18
  %20 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %7, i64 0, i32 0, i64 2
  store i8 %19, i8* %20, align 2
  %21 = add i64 %4, 3
  %22 = inttoptr i64 %21 to i8*
  %23 = load i8, i8* %22
  %24 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %7, i64 0, i32 0, i64 3
  store i8 %23, i8* %24, align 1
  %25 = add i64 %4, 4
  %26 = inttoptr i64 %25 to i8*
  %27 = load i8, i8* %26
  %28 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %7, i64 0, i32 0, i64 4
  store i8 %27, i8* %28, align 4
  %29 = add i64 %4, 5
  %30 = inttoptr i64 %29 to i8*
  %31 = load i8, i8* %30
  %32 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %7, i64 0, i32 0, i64 5
  store i8 %31, i8* %32, align 1
  %33 = add i64 %4, 6
  %34 = inttoptr i64 %33 to i8*
  %35 = load i8, i8* %34
  %36 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %7, i64 0, i32 0, i64 6
  store i8 %35, i8* %36, align 2
  %37 = add i64 %4, 7
  %38 = inttoptr i64 %37 to i8*
  %39 = load i8, i8* %38
  %40 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %7, i64 0, i32 0, i64 7
  store i8 %39, i8* %40, align 1
  %41 = add i64 %4, 8
  %42 = inttoptr i64 %41 to i8*
  %43 = load i8, i8* %42
  %44 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %7, i64 0, i32 0, i64 8
  store i8 %43, i8* %44, align 8
  %45 = add i64 %4, 9
  %46 = inttoptr i64 %45 to i8*
  %47 = load i8, i8* %46
  %48 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %7, i64 0, i32 0, i64 9
  store i8 %47, i8* %48, align 1
  %49 = add i64 %4, 10
  %50 = inttoptr i64 %49 to i8*
  %51 = load i8, i8* %50
  %52 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %7, i64 0, i32 0, i64 10
  store i8 %51, i8* %52, align 2
  %53 = add i64 %4, 11
  %54 = inttoptr i64 %53 to i8*
  %55 = load i8, i8* %54
  %56 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %7, i64 0, i32 0, i64 11
  store i8 %55, i8* %56, align 1
  %57 = add i64 %4, 12
  %58 = inttoptr i64 %57 to i8*
  %59 = load i8, i8* %58
  %60 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %7, i64 0, i32 0, i64 12
  store i8 %59, i8* %60, align 4
  %61 = add i64 %4, 13
  %62 = inttoptr i64 %61 to i8*
  %63 = load i8, i8* %62
  %64 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %7, i64 0, i32 0, i64 13
  store i8 %63, i8* %64, align 1
  %65 = add i64 %4, 14
  %66 = inttoptr i64 %65 to i8*
  %67 = load i8, i8* %66
  %68 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %7, i64 0, i32 0, i64 14
  store i8 %67, i8* %68, align 2
  %69 = add i64 %4, 15
  %70 = inttoptr i64 %69 to i8*
  %71 = load i8, i8* %70
  %72 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %7, i64 0, i32 0, i64 15
  store i8 %71, i8* %72, align 1
  %73 = add i64 %4, 16
  %74 = inttoptr i64 %73 to i8*
  %75 = load i8, i8* %74
  %76 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %7, i64 0, i32 0, i64 16
  store i8 %75, i8* %76, align 16
  %77 = add i64 %4, 17
  %78 = inttoptr i64 %77 to i8*
  %79 = load i8, i8* %78
  %80 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %7, i64 0, i32 0, i64 17
  store i8 %79, i8* %80, align 1
  %81 = add i64 %4, 18
  %82 = inttoptr i64 %81 to i8*
  %83 = load i8, i8* %82
  %84 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %7, i64 0, i32 0, i64 18
  store i8 %83, i8* %84, align 2
  %85 = add i64 %4, 19
  %86 = inttoptr i64 %85 to i8*
  %87 = load i8, i8* %86
  %88 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %7, i64 0, i32 0, i64 19
  store i8 %87, i8* %88, align 1
  %89 = add i64 %4, 20
  %90 = inttoptr i64 %89 to i8*
  %91 = load i8, i8* %90
  %92 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %7, i64 0, i32 0, i64 20
  store i8 %91, i8* %92, align 4
  %93 = add i64 %4, 21
  %94 = inttoptr i64 %93 to i8*
  %95 = load i8, i8* %94
  %96 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %7, i64 0, i32 0, i64 21
  store i8 %95, i8* %96, align 1
  %97 = add i64 %4, 22
  %98 = inttoptr i64 %97 to i8*
  %99 = load i8, i8* %98
  %100 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %7, i64 0, i32 0, i64 22
  store i8 %99, i8* %100, align 2
  %101 = add i64 %4, 23
  %102 = inttoptr i64 %101 to i8*
  %103 = load i8, i8* %102
  %104 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %7, i64 0, i32 0, i64 23
  store i8 %103, i8* %104, align 1
  %105 = add i64 %4, 24
  %106 = inttoptr i64 %105 to i8*
  %107 = load i8, i8* %106
  %108 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %7, i64 0, i32 0, i64 24
  store i8 %107, i8* %108, align 8
  %109 = add i64 %4, 25
  %110 = inttoptr i64 %109 to i8*
  %111 = load i8, i8* %110
  store i8 %111, i8* %10, align 1
  %112 = add i64 %4, 26
  %113 = inttoptr i64 %112 to i8*
  %114 = load i8, i8* %113
  %115 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %7, i64 0, i32 0, i64 26
  store i8 %114, i8* %115, align 2
  %116 = add i64 %4, 27
  %117 = inttoptr i64 %116 to i8*
  %118 = load i8, i8* %117
  %119 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %7, i64 0, i32 0, i64 27
  store i8 %118, i8* %119, align 1
  %120 = add i64 %4, 28
  %121 = inttoptr i64 %120 to i8*
  %122 = load i8, i8* %121
  %123 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %7, i64 0, i32 0, i64 28
  store i8 %122, i8* %123, align 4
  %124 = add i64 %4, 29
  %125 = inttoptr i64 %124 to i8*
  %126 = load i8, i8* %125
  %127 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %7, i64 0, i32 0, i64 29
  store i8 %126, i8* %127, align 1
  %128 = add i64 %4, 30
  %129 = inttoptr i64 %128 to i8*
  %130 = load i8, i8* %129
  %131 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %7, i64 0, i32 0, i64 30
  store i8 %130, i8* %131, align 2
  %132 = add i64 %4, 31
  %133 = inttoptr i64 %132 to i8*
  %134 = load i8, i8* %133
  %135 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %7, i64 0, i32 0, i64 31
  store i8 %134, i8* %135, align 1
  %136 = bitcast %struct.uint8v32_t* %6 to <16 x i8>*
  %137 = load <16 x i8>, <16 x i8>* %136, align 16
  %138 = bitcast %struct.uint8v32_t* %7 to <16 x i8>*
  %139 = load <16 x i8>, <16 x i8>* %138, align 16
  %140 = icmp sgt <16 x i8> %137, %139
  %141 = sext <16 x i1> %140 to <16 x i8>
  %142 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %6, i64 0, i32 0, i64 16
  %143 = bitcast i8* %142 to <16 x i8>*
  %144 = load <16 x i8>, <16 x i8>* %143, align 16
  %145 = bitcast i8* %76 to <16 x i8>*
  %146 = load <16 x i8>, <16 x i8>* %145, align 16
  %147 = icmp sgt <16 x i8> %144, %146
  %148 = sext <16 x i1> %147 to <16 x i8>
  %149 = bitcast i8* %2 to <16 x i8>*
  store <16 x i8> %141, <16 x i8>* %149, align 1
  %150 = getelementptr inbounds i8, i8* %2, i64 16
  %151 = bitcast i8* %150 to <16 x i8>*
  store <16 x i8> %148, <16 x i8>* %151, align 1
  call void @my.lifetime.end(i64 32, i8* nonnull %9) #22
  call void @my.lifetime.end(i64 32, i8* nonnull %8) #22
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_vpcmpgtb_ymm_ymm_m256(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #19 {
block_530:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %12 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %11, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %12 to %"class.std::bitset"*
  %13 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %14 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %15 = load i64, i64* %RBP
  %16 = sub i64 %15, 4
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 5
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L7PCMPGTBI3VnWI8vec256_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %13, i8* %14, i64 %16)
  ret %struct.Memory* %19
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
  %call = call %struct.Memory* @routine_vpcmpgtb_ymm_ymm_m256(%struct.State* %state, i64 0, %struct.Memory* %mem)
  ret i32 0
}