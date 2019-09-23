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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L12PACKUSWB_AVXI3VnWI8vec256_tE2VnIS2_E3MVnIS2_E10uint8v32_tEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i8*, i8* nocapture readonly, i64) #0 {
  %6 = alloca %struct.uint16v16_t, align 2
  %7 = alloca %struct.uint16v16_t, align 2
  %8 = alloca %struct.uint8v32_t, align 1
  %9 = bitcast %struct.uint16v16_t* %6 to i8*
  call void @my.lifetime.start(i64 32, i8* nonnull %9) #22
  call void @my.memcpy.p0i8.p0i8.i64(i8* nonnull %9, i8* %3, i64 32, i32 1, i1 false) #22
  %10 = bitcast %struct.uint16v16_t* %7 to i8*
  call void @my.lifetime.start(i64 32, i8* nonnull %10) #22
  %11 = inttoptr i64 %4 to i16*
  %12 = load i16, i16* %11
  %13 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %7, i64 0, i32 0, i64 0
  store i16 %12, i16* %13, align 2
  %14 = add i64 %4, 2
  %15 = inttoptr i64 %14 to i16*
  %16 = load i16, i16* %15
  %17 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %7, i64 0, i32 0, i64 1
  store i16 %16, i16* %17, align 2
  %18 = add i64 %4, 4
  %19 = inttoptr i64 %18 to i16*
  %20 = load i16, i16* %19
  %21 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %7, i64 0, i32 0, i64 2
  store i16 %20, i16* %21, align 2
  %22 = add i64 %4, 6
  %23 = inttoptr i64 %22 to i16*
  %24 = load i16, i16* %23
  %25 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %7, i64 0, i32 0, i64 3
  store i16 %24, i16* %25, align 2
  %26 = add i64 %4, 8
  %27 = inttoptr i64 %26 to i16*
  %28 = load i16, i16* %27
  %29 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %7, i64 0, i32 0, i64 4
  store i16 %28, i16* %29, align 2
  %30 = add i64 %4, 10
  %31 = inttoptr i64 %30 to i16*
  %32 = load i16, i16* %31
  %33 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %7, i64 0, i32 0, i64 5
  store i16 %32, i16* %33, align 2
  %34 = add i64 %4, 12
  %35 = inttoptr i64 %34 to i16*
  %36 = load i16, i16* %35
  %37 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %7, i64 0, i32 0, i64 6
  store i16 %36, i16* %37, align 2
  %38 = add i64 %4, 14
  %39 = inttoptr i64 %38 to i16*
  %40 = load i16, i16* %39
  %41 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %7, i64 0, i32 0, i64 7
  store i16 %40, i16* %41, align 2
  %42 = add i64 %4, 16
  %43 = inttoptr i64 %42 to i16*
  %44 = load i16, i16* %43
  %45 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %7, i64 0, i32 0, i64 8
  store i16 %44, i16* %45, align 2
  %46 = add i64 %4, 18
  %47 = inttoptr i64 %46 to i16*
  %48 = load i16, i16* %47
  %49 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %7, i64 0, i32 0, i64 9
  store i16 %48, i16* %49, align 2
  %50 = add i64 %4, 20
  %51 = inttoptr i64 %50 to i16*
  %52 = load i16, i16* %51
  %53 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %7, i64 0, i32 0, i64 10
  store i16 %52, i16* %53, align 2
  %54 = add i64 %4, 22
  %55 = inttoptr i64 %54 to i16*
  %56 = load i16, i16* %55
  %57 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %7, i64 0, i32 0, i64 11
  store i16 %56, i16* %57, align 2
  %58 = add i64 %4, 24
  %59 = inttoptr i64 %58 to i16*
  %60 = load i16, i16* %59
  %61 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %7, i64 0, i32 0, i64 12
  store i16 %60, i16* %61, align 2
  %62 = add i64 %4, 26
  %63 = inttoptr i64 %62 to i16*
  %64 = load i16, i16* %63
  %65 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %7, i64 0, i32 0, i64 13
  store i16 %64, i16* %65, align 2
  %66 = add i64 %4, 28
  %67 = inttoptr i64 %66 to i16*
  %68 = load i16, i16* %67
  %69 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %7, i64 0, i32 0, i64 14
  store i16 %68, i16* %69, align 2
  %70 = add i64 %4, 30
  %71 = inttoptr i64 %70 to i16*
  %72 = load i16, i16* %71
  %73 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %7, i64 0, i32 0, i64 15
  store i16 %72, i16* %73, align 2
  %74 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %8, i64 0, i32 0, i64 0
  call void @my.lifetime.start(i64 32, i8* nonnull %74) #22
  %75 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %8, i64 0, i32 0, i64 3
  call void @my.memset.p0i8.i64(i8* nonnull %75, i8 0, i64 29, i32 1, i1 false)
  %76 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %6, i64 0, i32 0, i64 0
  %77 = load i16, i16* %76, align 2
  %78 = icmp slt i16 %77, 255
  %79 = select i1 %78, i16 %77, i16 255
  %80 = icmp sgt i16 %77, 0
  %81 = trunc i16 %79 to i8
  %82 = select i1 %80, i8 %81, i8 0
  store i8 %82, i8* %74, align 1
  %83 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %6, i64 0, i32 0, i64 8
  %84 = load i16, i16* %83, align 2
  %85 = icmp slt i16 %84, 255
  %86 = select i1 %85, i16 %84, i16 255
  %87 = icmp sgt i16 %84, 0
  %88 = trunc i16 %86 to i8
  %89 = select i1 %87, i8 %88, i8 0
  %90 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %8, i64 0, i32 0, i64 16
  store i8 %89, i8* %90, align 1
  %91 = icmp slt i16 %12, 255
  %92 = select i1 %91, i16 %12, i16 255
  %93 = icmp sgt i16 %12, 0
  %94 = trunc i16 %92 to i8
  %95 = select i1 %93, i8 %94, i8 0
  %96 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %8, i64 0, i32 0, i64 8
  store i8 %95, i8* %96, align 1
  %97 = icmp slt i16 %44, 255
  %98 = select i1 %97, i16 %44, i16 255
  %99 = icmp sgt i16 %44, 0
  %100 = trunc i16 %98 to i8
  %101 = select i1 %99, i8 %100, i8 0
  %102 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %8, i64 0, i32 0, i64 24
  store i8 %101, i8* %102, align 1
  %103 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %6, i64 0, i32 0, i64 1
  %104 = load i16, i16* %103, align 2
  %105 = icmp slt i16 %104, 255
  %106 = select i1 %105, i16 %104, i16 255
  %107 = icmp sgt i16 %104, 0
  %108 = trunc i16 %106 to i8
  %109 = select i1 %107, i8 %108, i8 0
  %110 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %8, i64 0, i32 0, i64 1
  store i8 %109, i8* %110, align 1
  %111 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %6, i64 0, i32 0, i64 9
  %112 = load i16, i16* %111, align 2
  %113 = icmp slt i16 %112, 255
  %114 = select i1 %113, i16 %112, i16 255
  %115 = icmp sgt i16 %112, 0
  %116 = trunc i16 %114 to i8
  %117 = select i1 %115, i8 %116, i8 0
  %118 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %8, i64 0, i32 0, i64 17
  store i8 %117, i8* %118, align 1
  %119 = load i16, i16* %17, align 2
  %120 = icmp slt i16 %119, 255
  %121 = select i1 %120, i16 %119, i16 255
  %122 = icmp sgt i16 %119, 0
  %123 = trunc i16 %121 to i8
  %124 = select i1 %122, i8 %123, i8 0
  %125 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %8, i64 0, i32 0, i64 9
  store i8 %124, i8* %125, align 1
  %126 = icmp slt i16 %48, 255
  %127 = select i1 %126, i16 %48, i16 255
  %128 = icmp sgt i16 %48, 0
  %129 = trunc i16 %127 to i8
  %130 = select i1 %128, i8 %129, i8 0
  %131 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %8, i64 0, i32 0, i64 25
  store i8 %130, i8* %131, align 1
  %132 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %6, i64 0, i32 0, i64 2
  %133 = load i16, i16* %132, align 2
  %134 = icmp slt i16 %133, 255
  %135 = select i1 %134, i16 %133, i16 255
  %136 = icmp sgt i16 %133, 0
  %137 = trunc i16 %135 to i8
  %138 = select i1 %136, i8 %137, i8 0
  %139 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %8, i64 0, i32 0, i64 2
  store i8 %138, i8* %139, align 1
  %140 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %6, i64 0, i32 0, i64 10
  %141 = load i16, i16* %140, align 2
  %142 = icmp slt i16 %141, 255
  %143 = select i1 %142, i16 %141, i16 255
  %144 = icmp sgt i16 %141, 0
  %145 = trunc i16 %143 to i8
  %146 = select i1 %144, i8 %145, i8 0
  %147 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %8, i64 0, i32 0, i64 18
  store i8 %146, i8* %147, align 1
  %148 = load i16, i16* %21, align 2
  %149 = icmp slt i16 %148, 255
  %150 = select i1 %149, i16 %148, i16 255
  %151 = icmp sgt i16 %148, 0
  %152 = trunc i16 %150 to i8
  %153 = select i1 %151, i8 %152, i8 0
  %154 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %8, i64 0, i32 0, i64 10
  store i8 %153, i8* %154, align 1
  %155 = load i16, i16* %53, align 2
  %156 = icmp slt i16 %155, 255
  %157 = select i1 %156, i16 %155, i16 255
  %158 = icmp sgt i16 %155, 0
  %159 = trunc i16 %157 to i8
  %160 = select i1 %158, i8 %159, i8 0
  %161 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %8, i64 0, i32 0, i64 26
  store i8 %160, i8* %161, align 1
  %162 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %6, i64 0, i32 0, i64 3
  %163 = load i16, i16* %162, align 2
  %164 = icmp slt i16 %163, 255
  %165 = select i1 %164, i16 %163, i16 255
  %166 = icmp sgt i16 %163, 0
  %167 = trunc i16 %165 to i8
  %168 = select i1 %166, i8 %167, i8 0
  %169 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %8, i64 0, i32 0, i64 3
  store i8 %168, i8* %169, align 1
  %170 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %6, i64 0, i32 0, i64 11
  %171 = load i16, i16* %170, align 2
  %172 = icmp slt i16 %171, 255
  %173 = select i1 %172, i16 %171, i16 255
  %174 = icmp sgt i16 %171, 0
  %175 = trunc i16 %173 to i8
  %176 = select i1 %174, i8 %175, i8 0
  %177 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %8, i64 0, i32 0, i64 19
  store i8 %176, i8* %177, align 1
  %178 = load i16, i16* %25, align 2
  %179 = icmp slt i16 %178, 255
  %180 = select i1 %179, i16 %178, i16 255
  %181 = icmp sgt i16 %178, 0
  %182 = trunc i16 %180 to i8
  %183 = select i1 %181, i8 %182, i8 0
  %184 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %8, i64 0, i32 0, i64 11
  store i8 %183, i8* %184, align 1
  %185 = load i16, i16* %57, align 2
  %186 = icmp slt i16 %185, 255
  %187 = select i1 %186, i16 %185, i16 255
  %188 = icmp sgt i16 %185, 0
  %189 = trunc i16 %187 to i8
  %190 = select i1 %188, i8 %189, i8 0
  %191 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %8, i64 0, i32 0, i64 27
  store i8 %190, i8* %191, align 1
  %192 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %6, i64 0, i32 0, i64 4
  %193 = load i16, i16* %192, align 2
  %194 = icmp slt i16 %193, 255
  %195 = select i1 %194, i16 %193, i16 255
  %196 = icmp sgt i16 %193, 0
  %197 = trunc i16 %195 to i8
  %198 = select i1 %196, i8 %197, i8 0
  %199 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %8, i64 0, i32 0, i64 4
  store i8 %198, i8* %199, align 1
  %200 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %6, i64 0, i32 0, i64 12
  %201 = load i16, i16* %200, align 2
  %202 = icmp slt i16 %201, 255
  %203 = select i1 %202, i16 %201, i16 255
  %204 = icmp sgt i16 %201, 0
  %205 = trunc i16 %203 to i8
  %206 = select i1 %204, i8 %205, i8 0
  %207 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %8, i64 0, i32 0, i64 20
  store i8 %206, i8* %207, align 1
  %208 = load i16, i16* %29, align 2
  %209 = icmp slt i16 %208, 255
  %210 = select i1 %209, i16 %208, i16 255
  %211 = icmp sgt i16 %208, 0
  %212 = trunc i16 %210 to i8
  %213 = select i1 %211, i8 %212, i8 0
  %214 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %8, i64 0, i32 0, i64 12
  store i8 %213, i8* %214, align 1
  %215 = load i16, i16* %61, align 2
  %216 = icmp slt i16 %215, 255
  %217 = select i1 %216, i16 %215, i16 255
  %218 = icmp sgt i16 %215, 0
  %219 = trunc i16 %217 to i8
  %220 = select i1 %218, i8 %219, i8 0
  %221 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %8, i64 0, i32 0, i64 28
  store i8 %220, i8* %221, align 1
  %222 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %6, i64 0, i32 0, i64 5
  %223 = load i16, i16* %222, align 2
  %224 = icmp slt i16 %223, 255
  %225 = select i1 %224, i16 %223, i16 255
  %226 = icmp sgt i16 %223, 0
  %227 = trunc i16 %225 to i8
  %228 = select i1 %226, i8 %227, i8 0
  %229 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %8, i64 0, i32 0, i64 5
  store i8 %228, i8* %229, align 1
  %230 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %6, i64 0, i32 0, i64 13
  %231 = load i16, i16* %230, align 2
  %232 = icmp slt i16 %231, 255
  %233 = select i1 %232, i16 %231, i16 255
  %234 = icmp sgt i16 %231, 0
  %235 = trunc i16 %233 to i8
  %236 = select i1 %234, i8 %235, i8 0
  %237 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %8, i64 0, i32 0, i64 21
  store i8 %236, i8* %237, align 1
  %238 = load i16, i16* %33, align 2
  %239 = icmp slt i16 %238, 255
  %240 = select i1 %239, i16 %238, i16 255
  %241 = icmp sgt i16 %238, 0
  %242 = trunc i16 %240 to i8
  %243 = select i1 %241, i8 %242, i8 0
  %244 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %8, i64 0, i32 0, i64 13
  store i8 %243, i8* %244, align 1
  %245 = load i16, i16* %65, align 2
  %246 = icmp slt i16 %245, 255
  %247 = select i1 %246, i16 %245, i16 255
  %248 = icmp sgt i16 %245, 0
  %249 = trunc i16 %247 to i8
  %250 = select i1 %248, i8 %249, i8 0
  %251 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %8, i64 0, i32 0, i64 29
  store i8 %250, i8* %251, align 1
  %252 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %6, i64 0, i32 0, i64 6
  %253 = load i16, i16* %252, align 2
  %254 = icmp slt i16 %253, 255
  %255 = select i1 %254, i16 %253, i16 255
  %256 = icmp sgt i16 %253, 0
  %257 = trunc i16 %255 to i8
  %258 = select i1 %256, i8 %257, i8 0
  %259 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %8, i64 0, i32 0, i64 6
  store i8 %258, i8* %259, align 1
  %260 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %6, i64 0, i32 0, i64 14
  %261 = load i16, i16* %260, align 2
  %262 = icmp slt i16 %261, 255
  %263 = select i1 %262, i16 %261, i16 255
  %264 = icmp sgt i16 %261, 0
  %265 = trunc i16 %263 to i8
  %266 = select i1 %264, i8 %265, i8 0
  %267 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %8, i64 0, i32 0, i64 22
  store i8 %266, i8* %267, align 1
  %268 = load i16, i16* %37, align 2
  %269 = icmp slt i16 %268, 255
  %270 = select i1 %269, i16 %268, i16 255
  %271 = icmp sgt i16 %268, 0
  %272 = trunc i16 %270 to i8
  %273 = select i1 %271, i8 %272, i8 0
  %274 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %8, i64 0, i32 0, i64 14
  store i8 %273, i8* %274, align 1
  %275 = load i16, i16* %69, align 2
  %276 = icmp slt i16 %275, 255
  %277 = select i1 %276, i16 %275, i16 255
  %278 = icmp sgt i16 %275, 0
  %279 = trunc i16 %277 to i8
  %280 = select i1 %278, i8 %279, i8 0
  %281 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %8, i64 0, i32 0, i64 30
  store i8 %280, i8* %281, align 1
  %282 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %6, i64 0, i32 0, i64 7
  %283 = load i16, i16* %282, align 2
  %284 = icmp slt i16 %283, 255
  %285 = select i1 %284, i16 %283, i16 255
  %286 = icmp sgt i16 %283, 0
  %287 = trunc i16 %285 to i8
  %288 = select i1 %286, i8 %287, i8 0
  %289 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %8, i64 0, i32 0, i64 7
  store i8 %288, i8* %289, align 1
  %290 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %6, i64 0, i32 0, i64 15
  %291 = load i16, i16* %290, align 2
  %292 = icmp slt i16 %291, 255
  %293 = select i1 %292, i16 %291, i16 255
  %294 = icmp sgt i16 %291, 0
  %295 = trunc i16 %293 to i8
  %296 = select i1 %294, i8 %295, i8 0
  %297 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %8, i64 0, i32 0, i64 23
  store i8 %296, i8* %297, align 1
  %298 = load i16, i16* %41, align 2
  %299 = icmp slt i16 %298, 255
  %300 = select i1 %299, i16 %298, i16 255
  %301 = icmp sgt i16 %298, 0
  %302 = trunc i16 %300 to i8
  %303 = select i1 %301, i8 %302, i8 0
  %304 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %8, i64 0, i32 0, i64 15
  store i8 %303, i8* %304, align 1
  %305 = load i16, i16* %73, align 2
  %306 = icmp slt i16 %305, 255
  %307 = select i1 %306, i16 %305, i16 255
  %308 = icmp sgt i16 %305, 0
  %309 = trunc i16 %307 to i8
  %310 = select i1 %308, i8 %309, i8 0
  %311 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %8, i64 0, i32 0, i64 31
  store i8 %310, i8* %311, align 1
  %312 = load i8, i8* %74, align 1
  store i8 %312, i8* %2, align 1
  %313 = load i8, i8* %110, align 1
  %314 = getelementptr inbounds i8, i8* %2, i64 1
  store i8 %313, i8* %314, align 1
  %315 = load i8, i8* %139, align 1
  %316 = getelementptr inbounds i8, i8* %2, i64 2
  store i8 %315, i8* %316, align 1
  %317 = load i8, i8* %169, align 1
  %318 = getelementptr inbounds i8, i8* %2, i64 3
  store i8 %317, i8* %318, align 1
  %319 = load i8, i8* %199, align 1
  %320 = getelementptr inbounds i8, i8* %2, i64 4
  store i8 %319, i8* %320, align 1
  %321 = load i8, i8* %229, align 1
  %322 = getelementptr inbounds i8, i8* %2, i64 5
  store i8 %321, i8* %322, align 1
  %323 = getelementptr inbounds i8, i8* %2, i64 6
  store i8 %258, i8* %323, align 1
  %324 = getelementptr inbounds i8, i8* %2, i64 7
  store i8 %288, i8* %324, align 1
  %325 = load i8, i8* %96, align 1
  %326 = getelementptr inbounds i8, i8* %2, i64 8
  store i8 %325, i8* %326, align 1
  %327 = load i8, i8* %125, align 1
  %328 = getelementptr inbounds i8, i8* %2, i64 9
  store i8 %327, i8* %328, align 1
  %329 = load i8, i8* %154, align 1
  %330 = getelementptr inbounds i8, i8* %2, i64 10
  store i8 %329, i8* %330, align 1
  %331 = load i8, i8* %184, align 1
  %332 = getelementptr inbounds i8, i8* %2, i64 11
  store i8 %331, i8* %332, align 1
  %333 = load i8, i8* %214, align 1
  %334 = getelementptr inbounds i8, i8* %2, i64 12
  store i8 %333, i8* %334, align 1
  %335 = load i8, i8* %244, align 1
  %336 = getelementptr inbounds i8, i8* %2, i64 13
  store i8 %335, i8* %336, align 1
  %337 = getelementptr inbounds i8, i8* %2, i64 14
  store i8 %273, i8* %337, align 1
  %338 = getelementptr inbounds i8, i8* %2, i64 15
  store i8 %303, i8* %338, align 1
  %339 = load i8, i8* %90, align 1
  %340 = getelementptr inbounds i8, i8* %2, i64 16
  store i8 %339, i8* %340, align 1
  %341 = load i8, i8* %118, align 1
  %342 = getelementptr inbounds i8, i8* %2, i64 17
  store i8 %341, i8* %342, align 1
  %343 = load i8, i8* %147, align 1
  %344 = getelementptr inbounds i8, i8* %2, i64 18
  store i8 %343, i8* %344, align 1
  %345 = load i8, i8* %177, align 1
  %346 = getelementptr inbounds i8, i8* %2, i64 19
  store i8 %345, i8* %346, align 1
  %347 = load i8, i8* %207, align 1
  %348 = getelementptr inbounds i8, i8* %2, i64 20
  store i8 %347, i8* %348, align 1
  %349 = load i8, i8* %237, align 1
  %350 = getelementptr inbounds i8, i8* %2, i64 21
  store i8 %349, i8* %350, align 1
  %351 = load i8, i8* %267, align 1
  %352 = getelementptr inbounds i8, i8* %2, i64 22
  store i8 %351, i8* %352, align 1
  %353 = getelementptr inbounds i8, i8* %2, i64 23
  store i8 %296, i8* %353, align 1
  %354 = load i8, i8* %102, align 1
  %355 = getelementptr inbounds i8, i8* %2, i64 24
  store i8 %354, i8* %355, align 1
  %356 = load i8, i8* %131, align 1
  %357 = getelementptr inbounds i8, i8* %2, i64 25
  store i8 %356, i8* %357, align 1
  %358 = load i8, i8* %161, align 1
  %359 = getelementptr inbounds i8, i8* %2, i64 26
  store i8 %358, i8* %359, align 1
  %360 = load i8, i8* %191, align 1
  %361 = getelementptr inbounds i8, i8* %2, i64 27
  store i8 %360, i8* %361, align 1
  %362 = load i8, i8* %221, align 1
  %363 = getelementptr inbounds i8, i8* %2, i64 28
  store i8 %362, i8* %363, align 1
  %364 = load i8, i8* %251, align 1
  %365 = getelementptr inbounds i8, i8* %2, i64 29
  store i8 %364, i8* %365, align 1
  %366 = load i8, i8* %281, align 1
  %367 = getelementptr inbounds i8, i8* %2, i64 30
  store i8 %366, i8* %367, align 1
  %368 = getelementptr inbounds i8, i8* %2, i64 31
  store i8 %310, i8* %368, align 1
  call void @my.lifetime.end(i64 32, i8* nonnull %74) #22
  call void @my.lifetime.end(i64 32, i8* nonnull %10) #22
  call void @my.lifetime.end(i64 32, i8* nonnull %9) #22
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_vpackuswb_ymm_ymm_m256(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #19 {
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
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L12PACKUSWB_AVXI3VnWI8vec256_tE2VnIS2_E3MVnIS2_E10uint8v32_tEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %13, i8* %14, i64 %16)
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 1
  store i64 %21, i64* %PC
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
  %call = call %struct.Memory* @routine_vpackuswb_ymm_ymm_m256(%struct.State* %state, i64 0, %struct.Memory* %mem)
  ret i32 0
}