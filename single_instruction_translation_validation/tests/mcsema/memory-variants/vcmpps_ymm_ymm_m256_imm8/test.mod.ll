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

define i32 @sub_vcmpps_ymm_ymm_m256_imm8(%struct.State*, i64, i64) {
block_4003e0:
  %3 = alloca %struct.float32v8_t, align 4
  %4 = alloca %struct.float32v8_t, align 4
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
  %20 = add i64 %19, 6
  store i64 %20, i64* %PC
  %21 = bitcast %struct.float32v8_t* %3 to i8*
  call void @my.lifetime.start(i64 32, i8* nonnull %21) #14
  call void @my.memcpy.p0i8.p0i8.i64(i8* nonnull %21, i8* %16, i64 32, i32 1, i1 false) #14
  %22 = bitcast %struct.float32v8_t* %4 to i8*
  call void @my.lifetime.start(i64 32, i8* nonnull %22) #14
  %23 = inttoptr i64 %18 to float*
  %24 = load float, float* %23
  %25 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %4, i64 0, i32 0, i64 0
  store float %24, float* %25, align 4
  %26 = inttoptr i64 %17 to float*
  %27 = load float, float* %26
  %28 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %4, i64 0, i32 0, i64 1
  store float %27, float* %28, align 4
  %29 = add i64 %18, 8
  %30 = inttoptr i64 %29 to float*
  %31 = load float, float* %30
  %32 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %4, i64 0, i32 0, i64 2
  store float %31, float* %32, align 4
  %33 = add i64 %18, 12
  %34 = inttoptr i64 %33 to float*
  %35 = load float, float* %34
  %36 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %4, i64 0, i32 0, i64 3
  store float %35, float* %36, align 4
  %37 = add i64 %18, 16
  %38 = inttoptr i64 %37 to float*
  %39 = load float, float* %38
  %40 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %4, i64 0, i32 0, i64 4
  store float %39, float* %40, align 4
  %41 = add i64 %18, 20
  %42 = inttoptr i64 %41 to float*
  %43 = load float, float* %42
  %44 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %4, i64 0, i32 0, i64 5
  store float %43, float* %44, align 4
  %45 = add i64 %18, 24
  %46 = inttoptr i64 %45 to float*
  %47 = load float, float* %46
  %48 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %4, i64 0, i32 0, i64 6
  store float %47, float* %48, align 4
  %49 = add i64 %18, 28
  %50 = inttoptr i64 %49 to float*
  %51 = load float, float* %50
  %52 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %4, i64 0, i32 0, i64 7
  store float %51, float* %52, align 4
  %53 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %3, i64 0, i32 0, i64 0
  %54 = load float, float* %53, align 4
  %55 = fcmp oeq float %54, %24
  %56 = sext i1 %55 to i32
  %57 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %3, i64 0, i32 0, i64 1
  %58 = load float, float* %57, align 4
  %59 = fcmp oeq float %58, %27
  %60 = sext i1 %59 to i32
  %61 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %3, i64 0, i32 0, i64 2
  %62 = load float, float* %61, align 4
  %63 = fcmp oeq float %62, %31
  %64 = sext i1 %63 to i32
  %65 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %3, i64 0, i32 0, i64 3
  %66 = load float, float* %65, align 4
  %67 = fcmp oeq float %66, %35
  %68 = sext i1 %67 to i32
  %69 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %3, i64 0, i32 0, i64 4
  %70 = load float, float* %69, align 4
  %71 = fcmp oeq float %70, %39
  %72 = sext i1 %71 to i32
  %73 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %3, i64 0, i32 0, i64 5
  %74 = load float, float* %73, align 4
  %75 = fcmp oeq float %74, %43
  %76 = sext i1 %75 to i32
  %77 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %3, i64 0, i32 0, i64 6
  %78 = load float, float* %77, align 4
  %79 = fcmp oeq float %78, %47
  %80 = sext i1 %79 to i32
  %81 = getelementptr inbounds %struct.float32v8_t, %struct.float32v8_t* %3, i64 0, i32 0, i64 7
  %82 = load float, float* %81, align 4
  %83 = load float, float* %52, align 4
  %84 = fcmp oeq float %82, %83
  %85 = sext i1 %84 to i32
  %86 = bitcast i8* %15 to i32*
  store i32 %56, i32* %86, align 1
  %87 = getelementptr inbounds i8, i8* %15, i64 4
  %88 = bitcast i8* %87 to i32*
  store i32 %60, i32* %88, align 1
  %89 = getelementptr inbounds i8, i8* %15, i64 8
  %90 = bitcast i8* %89 to i32*
  store i32 %64, i32* %90, align 1
  %91 = getelementptr inbounds i8, i8* %15, i64 12
  %92 = bitcast i8* %91 to i32*
  store i32 %68, i32* %92, align 1
  %93 = getelementptr inbounds i8, i8* %15, i64 16
  %94 = bitcast i8* %93 to i32*
  store i32 %72, i32* %94, align 1
  %95 = getelementptr inbounds i8, i8* %15, i64 20
  %96 = bitcast i8* %95 to i32*
  store i32 %76, i32* %96, align 1
  %97 = getelementptr inbounds i8, i8* %15, i64 24
  %98 = bitcast i8* %97 to i32*
  store i32 %80, i32* %98, align 1
  %99 = getelementptr inbounds i8, i8* %15, i64 28
  %100 = bitcast i8* %99 to i32*
  store i32 %85, i32* %100, align 1
  call void @my.lifetime.end(i64 32, i8* nonnull %22) #14
  call void @my.lifetime.end(i64 32, i8* nonnull %21) #14
  %101 = load i64, i64* %PC
  %102 = add i64 %101, 1
  store i64 %102, i64* %PC
  %103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
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
  %call = call i32 @sub_vcmpps_ymm_ymm_m256_imm8(%struct.State* %state, i64 0, i64 0)
  ret i32 0
}