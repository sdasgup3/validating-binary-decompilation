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

define i32 @sub_vpackuswb_ymm_ymm_m256(%struct.State*, i64, i64) {
block_4003e0:
  %3 = alloca %struct.uint16v16_t, align 2
  %4 = alloca %struct.uint16v16_t, align 2
  %5 = alloca %struct.uint8v32_t, align 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 33
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %PC = bitcast %union.anon* %8 to i64*
  store i64 %1, i64* %PC, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %15 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %14, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %15 to %"class.std::bitset"*
  %16 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %17 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %18 = load i64, i64* %RBP
  %19 = sub i64 %18, 4
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 5
  store i64 %21, i64* %PC
  %22 = bitcast %struct.uint16v16_t* %3 to i8*
  call void @my.lifetime.start(i64 32, i8* nonnull %22) #14
  call void @my.memcpy.p0i8.p0i8.i64(i8* nonnull %22, i8* %17, i64 32, i32 1, i1 false) #14
  %23 = bitcast %struct.uint16v16_t* %4 to i8*
  call void @my.lifetime.start(i64 32, i8* nonnull %23) #14
  %24 = inttoptr i64 %19 to i16*
  %25 = load i16, i16* %24
  %26 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %4, i64 0, i32 0, i64 0
  store i16 %25, i16* %26, align 2
  %27 = add i64 %19, 2
  %28 = inttoptr i64 %27 to i16*
  %29 = load i16, i16* %28
  %30 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %4, i64 0, i32 0, i64 1
  store i16 %29, i16* %30, align 2
  %31 = inttoptr i64 %18 to i16*
  %32 = load i16, i16* %31
  %33 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %4, i64 0, i32 0, i64 2
  store i16 %32, i16* %33, align 2
  %34 = add i64 %19, 6
  %35 = inttoptr i64 %34 to i16*
  %36 = load i16, i16* %35
  %37 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %4, i64 0, i32 0, i64 3
  store i16 %36, i16* %37, align 2
  %38 = add i64 %19, 8
  %39 = inttoptr i64 %38 to i16*
  %40 = load i16, i16* %39
  %41 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %4, i64 0, i32 0, i64 4
  store i16 %40, i16* %41, align 2
  %42 = add i64 %19, 10
  %43 = inttoptr i64 %42 to i16*
  %44 = load i16, i16* %43
  %45 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %4, i64 0, i32 0, i64 5
  store i16 %44, i16* %45, align 2
  %46 = add i64 %19, 12
  %47 = inttoptr i64 %46 to i16*
  %48 = load i16, i16* %47
  %49 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %4, i64 0, i32 0, i64 6
  store i16 %48, i16* %49, align 2
  %50 = add i64 %19, 14
  %51 = inttoptr i64 %50 to i16*
  %52 = load i16, i16* %51
  %53 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %4, i64 0, i32 0, i64 7
  store i16 %52, i16* %53, align 2
  %54 = add i64 %19, 16
  %55 = inttoptr i64 %54 to i16*
  %56 = load i16, i16* %55
  %57 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %4, i64 0, i32 0, i64 8
  store i16 %56, i16* %57, align 2
  %58 = add i64 %19, 18
  %59 = inttoptr i64 %58 to i16*
  %60 = load i16, i16* %59
  %61 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %4, i64 0, i32 0, i64 9
  store i16 %60, i16* %61, align 2
  %62 = add i64 %19, 20
  %63 = inttoptr i64 %62 to i16*
  %64 = load i16, i16* %63
  %65 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %4, i64 0, i32 0, i64 10
  store i16 %64, i16* %65, align 2
  %66 = add i64 %19, 22
  %67 = inttoptr i64 %66 to i16*
  %68 = load i16, i16* %67
  %69 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %4, i64 0, i32 0, i64 11
  store i16 %68, i16* %69, align 2
  %70 = add i64 %19, 24
  %71 = inttoptr i64 %70 to i16*
  %72 = load i16, i16* %71
  %73 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %4, i64 0, i32 0, i64 12
  store i16 %72, i16* %73, align 2
  %74 = add i64 %19, 26
  %75 = inttoptr i64 %74 to i16*
  %76 = load i16, i16* %75
  %77 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %4, i64 0, i32 0, i64 13
  store i16 %76, i16* %77, align 2
  %78 = add i64 %19, 28
  %79 = inttoptr i64 %78 to i16*
  %80 = load i16, i16* %79
  %81 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %4, i64 0, i32 0, i64 14
  store i16 %80, i16* %81, align 2
  %82 = add i64 %19, 30
  %83 = inttoptr i64 %82 to i16*
  %84 = load i16, i16* %83
  %85 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %4, i64 0, i32 0, i64 15
  store i16 %84, i16* %85, align 2
  %86 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %5, i64 0, i32 0, i64 0
  call void @my.lifetime.start(i64 32, i8* nonnull %86) #14
  %87 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %5, i64 0, i32 0, i64 3
  call void @my.memset.p0i8.i64(i8* nonnull %87, i8 0, i64 29, i32 1, i1 false) #14
  %88 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %3, i64 0, i32 0, i64 0
  %89 = load i16, i16* %88, align 2
  %90 = icmp slt i16 %89, 255
  %91 = select i1 %90, i16 %89, i16 255
  %92 = icmp sgt i16 %89, 0
  %93 = trunc i16 %91 to i8
  %94 = select i1 %92, i8 %93, i8 0
  store i8 %94, i8* %86, align 1
  %95 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %3, i64 0, i32 0, i64 8
  %96 = load i16, i16* %95, align 2
  %97 = icmp slt i16 %96, 255
  %98 = select i1 %97, i16 %96, i16 255
  %99 = icmp sgt i16 %96, 0
  %100 = trunc i16 %98 to i8
  %101 = select i1 %99, i8 %100, i8 0
  %102 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %5, i64 0, i32 0, i64 16
  store i8 %101, i8* %102, align 1
  %103 = icmp slt i16 %25, 255
  %104 = select i1 %103, i16 %25, i16 255
  %105 = icmp sgt i16 %25, 0
  %106 = trunc i16 %104 to i8
  %107 = select i1 %105, i8 %106, i8 0
  %108 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %5, i64 0, i32 0, i64 8
  store i8 %107, i8* %108, align 1
  %109 = icmp slt i16 %56, 255
  %110 = select i1 %109, i16 %56, i16 255
  %111 = icmp sgt i16 %56, 0
  %112 = trunc i16 %110 to i8
  %113 = select i1 %111, i8 %112, i8 0
  %114 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %5, i64 0, i32 0, i64 24
  store i8 %113, i8* %114, align 1
  %115 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %3, i64 0, i32 0, i64 1
  %116 = load i16, i16* %115, align 2
  %117 = icmp slt i16 %116, 255
  %118 = select i1 %117, i16 %116, i16 255
  %119 = icmp sgt i16 %116, 0
  %120 = trunc i16 %118 to i8
  %121 = select i1 %119, i8 %120, i8 0
  %122 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %5, i64 0, i32 0, i64 1
  store i8 %121, i8* %122, align 1
  %123 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %3, i64 0, i32 0, i64 9
  %124 = load i16, i16* %123, align 2
  %125 = icmp slt i16 %124, 255
  %126 = select i1 %125, i16 %124, i16 255
  %127 = icmp sgt i16 %124, 0
  %128 = trunc i16 %126 to i8
  %129 = select i1 %127, i8 %128, i8 0
  %130 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %5, i64 0, i32 0, i64 17
  store i8 %129, i8* %130, align 1
  %131 = load i16, i16* %30, align 2
  %132 = icmp slt i16 %131, 255
  %133 = select i1 %132, i16 %131, i16 255
  %134 = icmp sgt i16 %131, 0
  %135 = trunc i16 %133 to i8
  %136 = select i1 %134, i8 %135, i8 0
  %137 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %5, i64 0, i32 0, i64 9
  store i8 %136, i8* %137, align 1
  %138 = icmp slt i16 %60, 255
  %139 = select i1 %138, i16 %60, i16 255
  %140 = icmp sgt i16 %60, 0
  %141 = trunc i16 %139 to i8
  %142 = select i1 %140, i8 %141, i8 0
  %143 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %5, i64 0, i32 0, i64 25
  store i8 %142, i8* %143, align 1
  %144 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %3, i64 0, i32 0, i64 2
  %145 = load i16, i16* %144, align 2
  %146 = icmp slt i16 %145, 255
  %147 = select i1 %146, i16 %145, i16 255
  %148 = icmp sgt i16 %145, 0
  %149 = trunc i16 %147 to i8
  %150 = select i1 %148, i8 %149, i8 0
  %151 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %5, i64 0, i32 0, i64 2
  store i8 %150, i8* %151, align 1
  %152 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %3, i64 0, i32 0, i64 10
  %153 = load i16, i16* %152, align 2
  %154 = icmp slt i16 %153, 255
  %155 = select i1 %154, i16 %153, i16 255
  %156 = icmp sgt i16 %153, 0
  %157 = trunc i16 %155 to i8
  %158 = select i1 %156, i8 %157, i8 0
  %159 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %5, i64 0, i32 0, i64 18
  store i8 %158, i8* %159, align 1
  %160 = load i16, i16* %33, align 2
  %161 = icmp slt i16 %160, 255
  %162 = select i1 %161, i16 %160, i16 255
  %163 = icmp sgt i16 %160, 0
  %164 = trunc i16 %162 to i8
  %165 = select i1 %163, i8 %164, i8 0
  %166 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %5, i64 0, i32 0, i64 10
  store i8 %165, i8* %166, align 1
  %167 = load i16, i16* %65, align 2
  %168 = icmp slt i16 %167, 255
  %169 = select i1 %168, i16 %167, i16 255
  %170 = icmp sgt i16 %167, 0
  %171 = trunc i16 %169 to i8
  %172 = select i1 %170, i8 %171, i8 0
  %173 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %5, i64 0, i32 0, i64 26
  store i8 %172, i8* %173, align 1
  %174 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %3, i64 0, i32 0, i64 3
  %175 = load i16, i16* %174, align 2
  %176 = icmp slt i16 %175, 255
  %177 = select i1 %176, i16 %175, i16 255
  %178 = icmp sgt i16 %175, 0
  %179 = trunc i16 %177 to i8
  %180 = select i1 %178, i8 %179, i8 0
  %181 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %5, i64 0, i32 0, i64 3
  store i8 %180, i8* %181, align 1
  %182 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %3, i64 0, i32 0, i64 11
  %183 = load i16, i16* %182, align 2
  %184 = icmp slt i16 %183, 255
  %185 = select i1 %184, i16 %183, i16 255
  %186 = icmp sgt i16 %183, 0
  %187 = trunc i16 %185 to i8
  %188 = select i1 %186, i8 %187, i8 0
  %189 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %5, i64 0, i32 0, i64 19
  store i8 %188, i8* %189, align 1
  %190 = load i16, i16* %37, align 2
  %191 = icmp slt i16 %190, 255
  %192 = select i1 %191, i16 %190, i16 255
  %193 = icmp sgt i16 %190, 0
  %194 = trunc i16 %192 to i8
  %195 = select i1 %193, i8 %194, i8 0
  %196 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %5, i64 0, i32 0, i64 11
  store i8 %195, i8* %196, align 1
  %197 = load i16, i16* %69, align 2
  %198 = icmp slt i16 %197, 255
  %199 = select i1 %198, i16 %197, i16 255
  %200 = icmp sgt i16 %197, 0
  %201 = trunc i16 %199 to i8
  %202 = select i1 %200, i8 %201, i8 0
  %203 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %5, i64 0, i32 0, i64 27
  store i8 %202, i8* %203, align 1
  %204 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %3, i64 0, i32 0, i64 4
  %205 = load i16, i16* %204, align 2
  %206 = icmp slt i16 %205, 255
  %207 = select i1 %206, i16 %205, i16 255
  %208 = icmp sgt i16 %205, 0
  %209 = trunc i16 %207 to i8
  %210 = select i1 %208, i8 %209, i8 0
  %211 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %5, i64 0, i32 0, i64 4
  store i8 %210, i8* %211, align 1
  %212 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %3, i64 0, i32 0, i64 12
  %213 = load i16, i16* %212, align 2
  %214 = icmp slt i16 %213, 255
  %215 = select i1 %214, i16 %213, i16 255
  %216 = icmp sgt i16 %213, 0
  %217 = trunc i16 %215 to i8
  %218 = select i1 %216, i8 %217, i8 0
  %219 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %5, i64 0, i32 0, i64 20
  store i8 %218, i8* %219, align 1
  %220 = load i16, i16* %41, align 2
  %221 = icmp slt i16 %220, 255
  %222 = select i1 %221, i16 %220, i16 255
  %223 = icmp sgt i16 %220, 0
  %224 = trunc i16 %222 to i8
  %225 = select i1 %223, i8 %224, i8 0
  %226 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %5, i64 0, i32 0, i64 12
  store i8 %225, i8* %226, align 1
  %227 = load i16, i16* %73, align 2
  %228 = icmp slt i16 %227, 255
  %229 = select i1 %228, i16 %227, i16 255
  %230 = icmp sgt i16 %227, 0
  %231 = trunc i16 %229 to i8
  %232 = select i1 %230, i8 %231, i8 0
  %233 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %5, i64 0, i32 0, i64 28
  store i8 %232, i8* %233, align 1
  %234 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %3, i64 0, i32 0, i64 5
  %235 = load i16, i16* %234, align 2
  %236 = icmp slt i16 %235, 255
  %237 = select i1 %236, i16 %235, i16 255
  %238 = icmp sgt i16 %235, 0
  %239 = trunc i16 %237 to i8
  %240 = select i1 %238, i8 %239, i8 0
  %241 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %5, i64 0, i32 0, i64 5
  store i8 %240, i8* %241, align 1
  %242 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %3, i64 0, i32 0, i64 13
  %243 = load i16, i16* %242, align 2
  %244 = icmp slt i16 %243, 255
  %245 = select i1 %244, i16 %243, i16 255
  %246 = icmp sgt i16 %243, 0
  %247 = trunc i16 %245 to i8
  %248 = select i1 %246, i8 %247, i8 0
  %249 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %5, i64 0, i32 0, i64 21
  store i8 %248, i8* %249, align 1
  %250 = load i16, i16* %45, align 2
  %251 = icmp slt i16 %250, 255
  %252 = select i1 %251, i16 %250, i16 255
  %253 = icmp sgt i16 %250, 0
  %254 = trunc i16 %252 to i8
  %255 = select i1 %253, i8 %254, i8 0
  %256 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %5, i64 0, i32 0, i64 13
  store i8 %255, i8* %256, align 1
  %257 = load i16, i16* %77, align 2
  %258 = icmp slt i16 %257, 255
  %259 = select i1 %258, i16 %257, i16 255
  %260 = icmp sgt i16 %257, 0
  %261 = trunc i16 %259 to i8
  %262 = select i1 %260, i8 %261, i8 0
  %263 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %5, i64 0, i32 0, i64 29
  store i8 %262, i8* %263, align 1
  %264 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %3, i64 0, i32 0, i64 6
  %265 = load i16, i16* %264, align 2
  %266 = icmp slt i16 %265, 255
  %267 = select i1 %266, i16 %265, i16 255
  %268 = icmp sgt i16 %265, 0
  %269 = trunc i16 %267 to i8
  %270 = select i1 %268, i8 %269, i8 0
  %271 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %5, i64 0, i32 0, i64 6
  store i8 %270, i8* %271, align 1
  %272 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %3, i64 0, i32 0, i64 14
  %273 = load i16, i16* %272, align 2
  %274 = icmp slt i16 %273, 255
  %275 = select i1 %274, i16 %273, i16 255
  %276 = icmp sgt i16 %273, 0
  %277 = trunc i16 %275 to i8
  %278 = select i1 %276, i8 %277, i8 0
  %279 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %5, i64 0, i32 0, i64 22
  store i8 %278, i8* %279, align 1
  %280 = load i16, i16* %49, align 2
  %281 = icmp slt i16 %280, 255
  %282 = select i1 %281, i16 %280, i16 255
  %283 = icmp sgt i16 %280, 0
  %284 = trunc i16 %282 to i8
  %285 = select i1 %283, i8 %284, i8 0
  %286 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %5, i64 0, i32 0, i64 14
  store i8 %285, i8* %286, align 1
  %287 = load i16, i16* %81, align 2
  %288 = icmp slt i16 %287, 255
  %289 = select i1 %288, i16 %287, i16 255
  %290 = icmp sgt i16 %287, 0
  %291 = trunc i16 %289 to i8
  %292 = select i1 %290, i8 %291, i8 0
  %293 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %5, i64 0, i32 0, i64 30
  store i8 %292, i8* %293, align 1
  %294 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %3, i64 0, i32 0, i64 7
  %295 = load i16, i16* %294, align 2
  %296 = icmp slt i16 %295, 255
  %297 = select i1 %296, i16 %295, i16 255
  %298 = icmp sgt i16 %295, 0
  %299 = trunc i16 %297 to i8
  %300 = select i1 %298, i8 %299, i8 0
  %301 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %5, i64 0, i32 0, i64 7
  store i8 %300, i8* %301, align 1
  %302 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %3, i64 0, i32 0, i64 15
  %303 = load i16, i16* %302, align 2
  %304 = icmp slt i16 %303, 255
  %305 = select i1 %304, i16 %303, i16 255
  %306 = icmp sgt i16 %303, 0
  %307 = trunc i16 %305 to i8
  %308 = select i1 %306, i8 %307, i8 0
  %309 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %5, i64 0, i32 0, i64 23
  store i8 %308, i8* %309, align 1
  %310 = load i16, i16* %53, align 2
  %311 = icmp slt i16 %310, 255
  %312 = select i1 %311, i16 %310, i16 255
  %313 = icmp sgt i16 %310, 0
  %314 = trunc i16 %312 to i8
  %315 = select i1 %313, i8 %314, i8 0
  %316 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %5, i64 0, i32 0, i64 15
  store i8 %315, i8* %316, align 1
  %317 = load i16, i16* %85, align 2
  %318 = icmp slt i16 %317, 255
  %319 = select i1 %318, i16 %317, i16 255
  %320 = icmp sgt i16 %317, 0
  %321 = trunc i16 %319 to i8
  %322 = select i1 %320, i8 %321, i8 0
  %323 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %5, i64 0, i32 0, i64 31
  store i8 %322, i8* %323, align 1
  %324 = load i8, i8* %86, align 1
  store i8 %324, i8* %16, align 1
  %325 = load i8, i8* %122, align 1
  %326 = getelementptr inbounds i8, i8* %16, i64 1
  store i8 %325, i8* %326, align 1
  %327 = load i8, i8* %151, align 1
  %328 = getelementptr inbounds i8, i8* %16, i64 2
  store i8 %327, i8* %328, align 1
  %329 = load i8, i8* %181, align 1
  %330 = getelementptr inbounds i8, i8* %16, i64 3
  store i8 %329, i8* %330, align 1
  %331 = load i8, i8* %211, align 1
  %332 = getelementptr inbounds i8, i8* %16, i64 4
  store i8 %331, i8* %332, align 1
  %333 = load i8, i8* %241, align 1
  %334 = getelementptr inbounds i8, i8* %16, i64 5
  store i8 %333, i8* %334, align 1
  %335 = getelementptr inbounds i8, i8* %16, i64 6
  store i8 %270, i8* %335, align 1
  %336 = getelementptr inbounds i8, i8* %16, i64 7
  store i8 %300, i8* %336, align 1
  %337 = load i8, i8* %108, align 1
  %338 = getelementptr inbounds i8, i8* %16, i64 8
  store i8 %337, i8* %338, align 1
  %339 = load i8, i8* %137, align 1
  %340 = getelementptr inbounds i8, i8* %16, i64 9
  store i8 %339, i8* %340, align 1
  %341 = load i8, i8* %166, align 1
  %342 = getelementptr inbounds i8, i8* %16, i64 10
  store i8 %341, i8* %342, align 1
  %343 = load i8, i8* %196, align 1
  %344 = getelementptr inbounds i8, i8* %16, i64 11
  store i8 %343, i8* %344, align 1
  %345 = load i8, i8* %226, align 1
  %346 = getelementptr inbounds i8, i8* %16, i64 12
  store i8 %345, i8* %346, align 1
  %347 = load i8, i8* %256, align 1
  %348 = getelementptr inbounds i8, i8* %16, i64 13
  store i8 %347, i8* %348, align 1
  %349 = getelementptr inbounds i8, i8* %16, i64 14
  store i8 %285, i8* %349, align 1
  %350 = getelementptr inbounds i8, i8* %16, i64 15
  store i8 %315, i8* %350, align 1
  %351 = load i8, i8* %102, align 1
  %352 = getelementptr inbounds i8, i8* %16, i64 16
  store i8 %351, i8* %352, align 1
  %353 = load i8, i8* %130, align 1
  %354 = getelementptr inbounds i8, i8* %16, i64 17
  store i8 %353, i8* %354, align 1
  %355 = load i8, i8* %159, align 1
  %356 = getelementptr inbounds i8, i8* %16, i64 18
  store i8 %355, i8* %356, align 1
  %357 = load i8, i8* %189, align 1
  %358 = getelementptr inbounds i8, i8* %16, i64 19
  store i8 %357, i8* %358, align 1
  %359 = load i8, i8* %219, align 1
  %360 = getelementptr inbounds i8, i8* %16, i64 20
  store i8 %359, i8* %360, align 1
  %361 = load i8, i8* %249, align 1
  %362 = getelementptr inbounds i8, i8* %16, i64 21
  store i8 %361, i8* %362, align 1
  %363 = load i8, i8* %279, align 1
  %364 = getelementptr inbounds i8, i8* %16, i64 22
  store i8 %363, i8* %364, align 1
  %365 = getelementptr inbounds i8, i8* %16, i64 23
  store i8 %308, i8* %365, align 1
  %366 = load i8, i8* %114, align 1
  %367 = getelementptr inbounds i8, i8* %16, i64 24
  store i8 %366, i8* %367, align 1
  %368 = load i8, i8* %143, align 1
  %369 = getelementptr inbounds i8, i8* %16, i64 25
  store i8 %368, i8* %369, align 1
  %370 = load i8, i8* %173, align 1
  %371 = getelementptr inbounds i8, i8* %16, i64 26
  store i8 %370, i8* %371, align 1
  %372 = load i8, i8* %203, align 1
  %373 = getelementptr inbounds i8, i8* %16, i64 27
  store i8 %372, i8* %373, align 1
  %374 = load i8, i8* %233, align 1
  %375 = getelementptr inbounds i8, i8* %16, i64 28
  store i8 %374, i8* %375, align 1
  %376 = load i8, i8* %263, align 1
  %377 = getelementptr inbounds i8, i8* %16, i64 29
  store i8 %376, i8* %377, align 1
  %378 = load i8, i8* %293, align 1
  %379 = getelementptr inbounds i8, i8* %16, i64 30
  store i8 %378, i8* %379, align 1
  %380 = getelementptr inbounds i8, i8* %16, i64 31
  store i8 %322, i8* %380, align 1
  call void @my.lifetime.end(i64 32, i8* nonnull %86) #14
  call void @my.lifetime.end(i64 32, i8* nonnull %23) #14
  call void @my.lifetime.end(i64 32, i8* nonnull %22) #14
  %381 = load i64, i64* %PC
  %382 = add i64 %381, 1
  store i64 %382, i64* %PC
  %383 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
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
  %call = call i32 @sub_vpackuswb_ymm_ymm_m256(%struct.State* %state, i64 0, i64 0)
  ret i32 0
}