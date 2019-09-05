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

define i32 @sub_vpackuswb_ymm_ymm_ymm(%struct.State*, i64, i64) {
block_530:
  %3 = alloca %struct.uint16v16_t, align 2
  %4 = alloca %struct.uint16v16_t, align 2
  %5 = alloca %struct.uint8v32_t, align 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 33
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %PC = bitcast %union.anon* %8 to i64*
  store i64 %1, i64* %PC, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %12 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %11, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %12 to %"class.std::bitset"*
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %14 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %13, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %14 to %"class.std::bitset"*
  %15 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %16 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %17 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %18 = load i64, i64* %PC
  %19 = add i64 %18, 4
  store i64 %19, i64* %PC
  %20 = bitcast %struct.uint16v16_t* %3 to i8*
  call void @my.lifetime.start(i64 32, i8* nonnull %20) #14
  call void @my.memcpy.p0i8.p0i8.i64(i8* nonnull %20, i8* %16, i64 32, i32 1, i1 false) #14
  %21 = bitcast %struct.uint16v16_t* %4 to i8*
  call void @my.lifetime.start(i64 32, i8* nonnull %21) #14
  call void @my.memcpy.p0i8.p0i8.i64(i8* nonnull %21, i8* %17, i64 32, i32 1, i1 false) #14
  %22 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %5, i64 0, i32 0, i64 0
  call void @my.lifetime.start(i64 32, i8* nonnull %22) #14
  %23 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %5, i64 0, i32 0, i64 3
  call void @my.memset.p0i8.i64(i8* nonnull %23, i8 0, i64 29, i32 1, i1 false) #14
  %24 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %3, i64 0, i32 0, i64 0
  %25 = load i16, i16* %24, align 2
  %26 = icmp slt i16 %25, 255
  %27 = select i1 %26, i16 %25, i16 255
  %28 = icmp sgt i16 %25, 0
  %29 = trunc i16 %27 to i8
  %30 = select i1 %28, i8 %29, i8 0
  store i8 %30, i8* %22, align 1
  %31 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %3, i64 0, i32 0, i64 8
  %32 = load i16, i16* %31, align 2
  %33 = icmp slt i16 %32, 255
  %34 = select i1 %33, i16 %32, i16 255
  %35 = icmp sgt i16 %32, 0
  %36 = trunc i16 %34 to i8
  %37 = select i1 %35, i8 %36, i8 0
  %38 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %5, i64 0, i32 0, i64 16
  store i8 %37, i8* %38, align 1
  %39 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %4, i64 0, i32 0, i64 0
  %40 = load i16, i16* %39, align 2
  %41 = icmp slt i16 %40, 255
  %42 = select i1 %41, i16 %40, i16 255
  %43 = icmp sgt i16 %40, 0
  %44 = trunc i16 %42 to i8
  %45 = select i1 %43, i8 %44, i8 0
  %46 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %5, i64 0, i32 0, i64 8
  store i8 %45, i8* %46, align 1
  %47 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %4, i64 0, i32 0, i64 8
  %48 = load i16, i16* %47, align 2
  %49 = icmp slt i16 %48, 255
  %50 = select i1 %49, i16 %48, i16 255
  %51 = icmp sgt i16 %48, 0
  %52 = trunc i16 %50 to i8
  %53 = select i1 %51, i8 %52, i8 0
  %54 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %5, i64 0, i32 0, i64 24
  store i8 %53, i8* %54, align 1
  %55 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %3, i64 0, i32 0, i64 1
  %56 = load i16, i16* %55, align 2
  %57 = icmp slt i16 %56, 255
  %58 = select i1 %57, i16 %56, i16 255
  %59 = icmp sgt i16 %56, 0
  %60 = trunc i16 %58 to i8
  %61 = select i1 %59, i8 %60, i8 0
  %62 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %5, i64 0, i32 0, i64 1
  store i8 %61, i8* %62, align 1
  %63 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %3, i64 0, i32 0, i64 9
  %64 = load i16, i16* %63, align 2
  %65 = icmp slt i16 %64, 255
  %66 = select i1 %65, i16 %64, i16 255
  %67 = icmp sgt i16 %64, 0
  %68 = trunc i16 %66 to i8
  %69 = select i1 %67, i8 %68, i8 0
  %70 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %5, i64 0, i32 0, i64 17
  store i8 %69, i8* %70, align 1
  %71 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %4, i64 0, i32 0, i64 1
  %72 = load i16, i16* %71, align 2
  %73 = icmp slt i16 %72, 255
  %74 = select i1 %73, i16 %72, i16 255
  %75 = icmp sgt i16 %72, 0
  %76 = trunc i16 %74 to i8
  %77 = select i1 %75, i8 %76, i8 0
  %78 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %5, i64 0, i32 0, i64 9
  store i8 %77, i8* %78, align 1
  %79 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %4, i64 0, i32 0, i64 9
  %80 = load i16, i16* %79, align 2
  %81 = icmp slt i16 %80, 255
  %82 = select i1 %81, i16 %80, i16 255
  %83 = icmp sgt i16 %80, 0
  %84 = trunc i16 %82 to i8
  %85 = select i1 %83, i8 %84, i8 0
  %86 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %5, i64 0, i32 0, i64 25
  store i8 %85, i8* %86, align 1
  %87 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %3, i64 0, i32 0, i64 2
  %88 = load i16, i16* %87, align 2
  %89 = icmp slt i16 %88, 255
  %90 = select i1 %89, i16 %88, i16 255
  %91 = icmp sgt i16 %88, 0
  %92 = trunc i16 %90 to i8
  %93 = select i1 %91, i8 %92, i8 0
  %94 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %5, i64 0, i32 0, i64 2
  store i8 %93, i8* %94, align 1
  %95 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %3, i64 0, i32 0, i64 10
  %96 = load i16, i16* %95, align 2
  %97 = icmp slt i16 %96, 255
  %98 = select i1 %97, i16 %96, i16 255
  %99 = icmp sgt i16 %96, 0
  %100 = trunc i16 %98 to i8
  %101 = select i1 %99, i8 %100, i8 0
  %102 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %5, i64 0, i32 0, i64 18
  store i8 %101, i8* %102, align 1
  %103 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %4, i64 0, i32 0, i64 2
  %104 = load i16, i16* %103, align 2
  %105 = icmp slt i16 %104, 255
  %106 = select i1 %105, i16 %104, i16 255
  %107 = icmp sgt i16 %104, 0
  %108 = trunc i16 %106 to i8
  %109 = select i1 %107, i8 %108, i8 0
  %110 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %5, i64 0, i32 0, i64 10
  store i8 %109, i8* %110, align 1
  %111 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %4, i64 0, i32 0, i64 10
  %112 = load i16, i16* %111, align 2
  %113 = icmp slt i16 %112, 255
  %114 = select i1 %113, i16 %112, i16 255
  %115 = icmp sgt i16 %112, 0
  %116 = trunc i16 %114 to i8
  %117 = select i1 %115, i8 %116, i8 0
  %118 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %5, i64 0, i32 0, i64 26
  store i8 %117, i8* %118, align 1
  %119 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %3, i64 0, i32 0, i64 3
  %120 = load i16, i16* %119, align 2
  %121 = icmp slt i16 %120, 255
  %122 = select i1 %121, i16 %120, i16 255
  %123 = icmp sgt i16 %120, 0
  %124 = trunc i16 %122 to i8
  %125 = select i1 %123, i8 %124, i8 0
  %126 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %5, i64 0, i32 0, i64 3
  store i8 %125, i8* %126, align 1
  %127 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %3, i64 0, i32 0, i64 11
  %128 = load i16, i16* %127, align 2
  %129 = icmp slt i16 %128, 255
  %130 = select i1 %129, i16 %128, i16 255
  %131 = icmp sgt i16 %128, 0
  %132 = trunc i16 %130 to i8
  %133 = select i1 %131, i8 %132, i8 0
  %134 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %5, i64 0, i32 0, i64 19
  store i8 %133, i8* %134, align 1
  %135 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %4, i64 0, i32 0, i64 3
  %136 = load i16, i16* %135, align 2
  %137 = icmp slt i16 %136, 255
  %138 = select i1 %137, i16 %136, i16 255
  %139 = icmp sgt i16 %136, 0
  %140 = trunc i16 %138 to i8
  %141 = select i1 %139, i8 %140, i8 0
  %142 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %5, i64 0, i32 0, i64 11
  store i8 %141, i8* %142, align 1
  %143 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %4, i64 0, i32 0, i64 11
  %144 = load i16, i16* %143, align 2
  %145 = icmp slt i16 %144, 255
  %146 = select i1 %145, i16 %144, i16 255
  %147 = icmp sgt i16 %144, 0
  %148 = trunc i16 %146 to i8
  %149 = select i1 %147, i8 %148, i8 0
  %150 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %5, i64 0, i32 0, i64 27
  store i8 %149, i8* %150, align 1
  %151 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %3, i64 0, i32 0, i64 4
  %152 = load i16, i16* %151, align 2
  %153 = icmp slt i16 %152, 255
  %154 = select i1 %153, i16 %152, i16 255
  %155 = icmp sgt i16 %152, 0
  %156 = trunc i16 %154 to i8
  %157 = select i1 %155, i8 %156, i8 0
  %158 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %5, i64 0, i32 0, i64 4
  store i8 %157, i8* %158, align 1
  %159 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %3, i64 0, i32 0, i64 12
  %160 = load i16, i16* %159, align 2
  %161 = icmp slt i16 %160, 255
  %162 = select i1 %161, i16 %160, i16 255
  %163 = icmp sgt i16 %160, 0
  %164 = trunc i16 %162 to i8
  %165 = select i1 %163, i8 %164, i8 0
  %166 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %5, i64 0, i32 0, i64 20
  store i8 %165, i8* %166, align 1
  %167 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %4, i64 0, i32 0, i64 4
  %168 = load i16, i16* %167, align 2
  %169 = icmp slt i16 %168, 255
  %170 = select i1 %169, i16 %168, i16 255
  %171 = icmp sgt i16 %168, 0
  %172 = trunc i16 %170 to i8
  %173 = select i1 %171, i8 %172, i8 0
  %174 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %5, i64 0, i32 0, i64 12
  store i8 %173, i8* %174, align 1
  %175 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %4, i64 0, i32 0, i64 12
  %176 = load i16, i16* %175, align 2
  %177 = icmp slt i16 %176, 255
  %178 = select i1 %177, i16 %176, i16 255
  %179 = icmp sgt i16 %176, 0
  %180 = trunc i16 %178 to i8
  %181 = select i1 %179, i8 %180, i8 0
  %182 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %5, i64 0, i32 0, i64 28
  store i8 %181, i8* %182, align 1
  %183 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %3, i64 0, i32 0, i64 5
  %184 = load i16, i16* %183, align 2
  %185 = icmp slt i16 %184, 255
  %186 = select i1 %185, i16 %184, i16 255
  %187 = icmp sgt i16 %184, 0
  %188 = trunc i16 %186 to i8
  %189 = select i1 %187, i8 %188, i8 0
  %190 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %5, i64 0, i32 0, i64 5
  store i8 %189, i8* %190, align 1
  %191 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %3, i64 0, i32 0, i64 13
  %192 = load i16, i16* %191, align 2
  %193 = icmp slt i16 %192, 255
  %194 = select i1 %193, i16 %192, i16 255
  %195 = icmp sgt i16 %192, 0
  %196 = trunc i16 %194 to i8
  %197 = select i1 %195, i8 %196, i8 0
  %198 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %5, i64 0, i32 0, i64 21
  store i8 %197, i8* %198, align 1
  %199 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %4, i64 0, i32 0, i64 5
  %200 = load i16, i16* %199, align 2
  %201 = icmp slt i16 %200, 255
  %202 = select i1 %201, i16 %200, i16 255
  %203 = icmp sgt i16 %200, 0
  %204 = trunc i16 %202 to i8
  %205 = select i1 %203, i8 %204, i8 0
  %206 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %5, i64 0, i32 0, i64 13
  store i8 %205, i8* %206, align 1
  %207 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %4, i64 0, i32 0, i64 13
  %208 = load i16, i16* %207, align 2
  %209 = icmp slt i16 %208, 255
  %210 = select i1 %209, i16 %208, i16 255
  %211 = icmp sgt i16 %208, 0
  %212 = trunc i16 %210 to i8
  %213 = select i1 %211, i8 %212, i8 0
  %214 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %5, i64 0, i32 0, i64 29
  store i8 %213, i8* %214, align 1
  %215 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %3, i64 0, i32 0, i64 6
  %216 = load i16, i16* %215, align 2
  %217 = icmp slt i16 %216, 255
  %218 = select i1 %217, i16 %216, i16 255
  %219 = icmp sgt i16 %216, 0
  %220 = trunc i16 %218 to i8
  %221 = select i1 %219, i8 %220, i8 0
  %222 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %5, i64 0, i32 0, i64 6
  store i8 %221, i8* %222, align 1
  %223 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %3, i64 0, i32 0, i64 14
  %224 = load i16, i16* %223, align 2
  %225 = icmp slt i16 %224, 255
  %226 = select i1 %225, i16 %224, i16 255
  %227 = icmp sgt i16 %224, 0
  %228 = trunc i16 %226 to i8
  %229 = select i1 %227, i8 %228, i8 0
  %230 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %5, i64 0, i32 0, i64 22
  store i8 %229, i8* %230, align 1
  %231 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %4, i64 0, i32 0, i64 6
  %232 = load i16, i16* %231, align 2
  %233 = icmp slt i16 %232, 255
  %234 = select i1 %233, i16 %232, i16 255
  %235 = icmp sgt i16 %232, 0
  %236 = trunc i16 %234 to i8
  %237 = select i1 %235, i8 %236, i8 0
  %238 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %5, i64 0, i32 0, i64 14
  store i8 %237, i8* %238, align 1
  %239 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %4, i64 0, i32 0, i64 14
  %240 = load i16, i16* %239, align 2
  %241 = icmp slt i16 %240, 255
  %242 = select i1 %241, i16 %240, i16 255
  %243 = icmp sgt i16 %240, 0
  %244 = trunc i16 %242 to i8
  %245 = select i1 %243, i8 %244, i8 0
  %246 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %5, i64 0, i32 0, i64 30
  store i8 %245, i8* %246, align 1
  %247 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %3, i64 0, i32 0, i64 7
  %248 = load i16, i16* %247, align 2
  %249 = icmp slt i16 %248, 255
  %250 = select i1 %249, i16 %248, i16 255
  %251 = icmp sgt i16 %248, 0
  %252 = trunc i16 %250 to i8
  %253 = select i1 %251, i8 %252, i8 0
  %254 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %5, i64 0, i32 0, i64 7
  store i8 %253, i8* %254, align 1
  %255 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %3, i64 0, i32 0, i64 15
  %256 = load i16, i16* %255, align 2
  %257 = icmp slt i16 %256, 255
  %258 = select i1 %257, i16 %256, i16 255
  %259 = icmp sgt i16 %256, 0
  %260 = trunc i16 %258 to i8
  %261 = select i1 %259, i8 %260, i8 0
  %262 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %5, i64 0, i32 0, i64 23
  store i8 %261, i8* %262, align 1
  %263 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %4, i64 0, i32 0, i64 7
  %264 = load i16, i16* %263, align 2
  %265 = icmp slt i16 %264, 255
  %266 = select i1 %265, i16 %264, i16 255
  %267 = icmp sgt i16 %264, 0
  %268 = trunc i16 %266 to i8
  %269 = select i1 %267, i8 %268, i8 0
  %270 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %5, i64 0, i32 0, i64 15
  store i8 %269, i8* %270, align 1
  %271 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %4, i64 0, i32 0, i64 15
  %272 = load i16, i16* %271, align 2
  %273 = icmp slt i16 %272, 255
  %274 = select i1 %273, i16 %272, i16 255
  %275 = icmp sgt i16 %272, 0
  %276 = trunc i16 %274 to i8
  %277 = select i1 %275, i8 %276, i8 0
  %278 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %5, i64 0, i32 0, i64 31
  store i8 %277, i8* %278, align 1
  %279 = load i8, i8* %22, align 1
  store i8 %279, i8* %15, align 1
  %280 = load i8, i8* %62, align 1
  %281 = getelementptr inbounds i8, i8* %15, i64 1
  store i8 %280, i8* %281, align 1
  %282 = load i8, i8* %94, align 1
  %283 = getelementptr inbounds i8, i8* %15, i64 2
  store i8 %282, i8* %283, align 1
  %284 = load i8, i8* %126, align 1
  %285 = getelementptr inbounds i8, i8* %15, i64 3
  store i8 %284, i8* %285, align 1
  %286 = load i8, i8* %158, align 1
  %287 = getelementptr inbounds i8, i8* %15, i64 4
  store i8 %286, i8* %287, align 1
  %288 = load i8, i8* %190, align 1
  %289 = getelementptr inbounds i8, i8* %15, i64 5
  store i8 %288, i8* %289, align 1
  %290 = getelementptr inbounds i8, i8* %15, i64 6
  store i8 %221, i8* %290, align 1
  %291 = getelementptr inbounds i8, i8* %15, i64 7
  store i8 %253, i8* %291, align 1
  %292 = load i8, i8* %46, align 1
  %293 = getelementptr inbounds i8, i8* %15, i64 8
  store i8 %292, i8* %293, align 1
  %294 = load i8, i8* %78, align 1
  %295 = getelementptr inbounds i8, i8* %15, i64 9
  store i8 %294, i8* %295, align 1
  %296 = load i8, i8* %110, align 1
  %297 = getelementptr inbounds i8, i8* %15, i64 10
  store i8 %296, i8* %297, align 1
  %298 = load i8, i8* %142, align 1
  %299 = getelementptr inbounds i8, i8* %15, i64 11
  store i8 %298, i8* %299, align 1
  %300 = load i8, i8* %174, align 1
  %301 = getelementptr inbounds i8, i8* %15, i64 12
  store i8 %300, i8* %301, align 1
  %302 = load i8, i8* %206, align 1
  %303 = getelementptr inbounds i8, i8* %15, i64 13
  store i8 %302, i8* %303, align 1
  %304 = getelementptr inbounds i8, i8* %15, i64 14
  store i8 %237, i8* %304, align 1
  %305 = getelementptr inbounds i8, i8* %15, i64 15
  store i8 %269, i8* %305, align 1
  %306 = load i8, i8* %38, align 1
  %307 = getelementptr inbounds i8, i8* %15, i64 16
  store i8 %306, i8* %307, align 1
  %308 = load i8, i8* %70, align 1
  %309 = getelementptr inbounds i8, i8* %15, i64 17
  store i8 %308, i8* %309, align 1
  %310 = load i8, i8* %102, align 1
  %311 = getelementptr inbounds i8, i8* %15, i64 18
  store i8 %310, i8* %311, align 1
  %312 = load i8, i8* %134, align 1
  %313 = getelementptr inbounds i8, i8* %15, i64 19
  store i8 %312, i8* %313, align 1
  %314 = load i8, i8* %166, align 1
  %315 = getelementptr inbounds i8, i8* %15, i64 20
  store i8 %314, i8* %315, align 1
  %316 = load i8, i8* %198, align 1
  %317 = getelementptr inbounds i8, i8* %15, i64 21
  store i8 %316, i8* %317, align 1
  %318 = load i8, i8* %230, align 1
  %319 = getelementptr inbounds i8, i8* %15, i64 22
  store i8 %318, i8* %319, align 1
  %320 = getelementptr inbounds i8, i8* %15, i64 23
  store i8 %261, i8* %320, align 1
  %321 = load i8, i8* %54, align 1
  %322 = getelementptr inbounds i8, i8* %15, i64 24
  store i8 %321, i8* %322, align 1
  %323 = load i8, i8* %86, align 1
  %324 = getelementptr inbounds i8, i8* %15, i64 25
  store i8 %323, i8* %324, align 1
  %325 = load i8, i8* %118, align 1
  %326 = getelementptr inbounds i8, i8* %15, i64 26
  store i8 %325, i8* %326, align 1
  %327 = load i8, i8* %150, align 1
  %328 = getelementptr inbounds i8, i8* %15, i64 27
  store i8 %327, i8* %328, align 1
  %329 = load i8, i8* %182, align 1
  %330 = getelementptr inbounds i8, i8* %15, i64 28
  store i8 %329, i8* %330, align 1
  %331 = load i8, i8* %214, align 1
  %332 = getelementptr inbounds i8, i8* %15, i64 29
  store i8 %331, i8* %332, align 1
  %333 = load i8, i8* %246, align 1
  %334 = getelementptr inbounds i8, i8* %15, i64 30
  store i8 %333, i8* %334, align 1
  %335 = getelementptr inbounds i8, i8* %15, i64 31
  store i8 %277, i8* %335, align 1
  call void @my.lifetime.end(i64 32, i8* nonnull %22) #14
  call void @my.lifetime.end(i64 32, i8* nonnull %21) #14
  call void @my.lifetime.end(i64 32, i8* nonnull %20) #14
  %336 = load i64, i64* %PC
  %337 = add i64 %336, 1
  store i64 %337, i64* %PC
  %338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
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
  %call = call i32 @sub_vpackuswb_ymm_ymm_ymm(%struct.State* %state, i64 0, i64 0)
  ret i32 0
}