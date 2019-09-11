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

define i32 @sub_vcvtdq2ps_ymm_m256(%struct.State*, i64, i64) {
block_4003e0:
  %3 = alloca %struct.int32v8_t, align 4
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5 = getelementptr inbounds %struct.GPR, %struct.GPR* %4, i32 0, i32 33
  %6 = getelementptr inbounds %struct.Reg, %struct.Reg* %5, i32 0, i32 0
  %PC = bitcast %union.anon* %6 to i64*
  store i64 %1, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8 = getelementptr inbounds %struct.GPR, %struct.GPR* %7, i32 0, i32 15
  %9 = getelementptr inbounds %struct.Reg, %struct.Reg* %8, i32 0, i32 0
  %RBP = bitcast %union.anon* %9 to i64*
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %11 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %10, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %11 to %"class.std::bitset"*
  %12 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 4
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = bitcast %struct.int32v8_t* %3 to i8*
  call void @my.lifetime.start(i64 32, i8* nonnull %17) #14
  %18 = inttoptr i64 %14 to i32*
  %19 = load i32, i32* %18
  %20 = getelementptr inbounds %struct.int32v8_t, %struct.int32v8_t* %3, i64 0, i32 0, i64 0
  store i32 %19, i32* %20, align 4
  %21 = inttoptr i64 %13 to i32*
  %22 = load i32, i32* %21
  %23 = getelementptr inbounds %struct.int32v8_t, %struct.int32v8_t* %3, i64 0, i32 0, i64 1
  store i32 %22, i32* %23, align 4
  %24 = add i64 %14, 8
  %25 = inttoptr i64 %24 to i32*
  %26 = load i32, i32* %25
  %27 = getelementptr inbounds %struct.int32v8_t, %struct.int32v8_t* %3, i64 0, i32 0, i64 2
  store i32 %26, i32* %27, align 4
  %28 = add i64 %14, 12
  %29 = inttoptr i64 %28 to i32*
  %30 = load i32, i32* %29
  %31 = getelementptr inbounds %struct.int32v8_t, %struct.int32v8_t* %3, i64 0, i32 0, i64 3
  store i32 %30, i32* %31, align 4
  %32 = add i64 %14, 16
  %33 = inttoptr i64 %32 to i32*
  %34 = load i32, i32* %33
  %35 = getelementptr inbounds %struct.int32v8_t, %struct.int32v8_t* %3, i64 0, i32 0, i64 4
  store i32 %34, i32* %35, align 4
  %36 = add i64 %14, 20
  %37 = inttoptr i64 %36 to i32*
  %38 = load i32, i32* %37
  %39 = getelementptr inbounds %struct.int32v8_t, %struct.int32v8_t* %3, i64 0, i32 0, i64 5
  store i32 %38, i32* %39, align 4
  %40 = add i64 %14, 24
  %41 = inttoptr i64 %40 to i32*
  %42 = load i32, i32* %41
  %43 = getelementptr inbounds %struct.int32v8_t, %struct.int32v8_t* %3, i64 0, i32 0, i64 6
  store i32 %42, i32* %43, align 4
  %44 = add i64 %14, 28
  %45 = inttoptr i64 %44 to i32*
  %46 = load i32, i32* %45
  %47 = getelementptr inbounds %struct.int32v8_t, %struct.int32v8_t* %3, i64 0, i32 0, i64 7
  store i32 %46, i32* %47, align 4
  %48 = sitofp i32 %19 to float
  %49 = sitofp i32 %22 to float
  %50 = sitofp i32 %26 to float
  %51 = sitofp i32 %30 to float
  %52 = sitofp i32 %34 to float
  %53 = sitofp i32 %38 to float
  %54 = load i32, i32* %43, align 4
  %55 = sitofp i32 %54 to float
  %56 = load i32, i32* %47, align 4
  %57 = sitofp i32 %56 to float
  %58 = bitcast i8* %12 to float*
  store float %48, float* %58, align 1
  %59 = getelementptr inbounds i8, i8* %12, i64 4
  %60 = bitcast i8* %59 to float*
  store float %49, float* %60, align 1
  %61 = getelementptr inbounds i8, i8* %12, i64 8
  %62 = bitcast i8* %61 to float*
  store float %50, float* %62, align 1
  %63 = getelementptr inbounds i8, i8* %12, i64 12
  %64 = bitcast i8* %63 to float*
  store float %51, float* %64, align 1
  %65 = getelementptr inbounds i8, i8* %12, i64 16
  %66 = bitcast i8* %65 to float*
  store float %52, float* %66, align 1
  %67 = getelementptr inbounds i8, i8* %12, i64 20
  %68 = bitcast i8* %67 to float*
  store float %53, float* %68, align 1
  %69 = getelementptr inbounds i8, i8* %12, i64 24
  %70 = bitcast i8* %69 to float*
  store float %55, float* %70, align 1
  %71 = getelementptr inbounds i8, i8* %12, i64 28
  %72 = bitcast i8* %71 to float*
  store float %57, float* %72, align 1
  call void @my.lifetime.end(i64 32, i8* nonnull %17) #14
  %73 = load i64, i64* %PC
  %74 = add i64 %73, 1
  store i64 %74, i64* %PC
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
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
  %call = call i32 @sub_vcvtdq2ps_ymm_m256(%struct.State* %state, i64 0, i64 0)
  ret i32 0
}