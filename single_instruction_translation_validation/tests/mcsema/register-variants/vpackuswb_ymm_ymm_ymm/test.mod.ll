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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L12PACKUSWB_AVXI3VnWI8vec256_tE2VnIS2_ES5_10uint8v32_tEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8*, i8* nocapture readonly, i8* nocapture readonly) #0 {
  %6 = alloca %struct.uint16v16_t, align 2
  %7 = alloca %struct.uint16v16_t, align 2
  %8 = alloca %struct.uint8v32_t, align 1
  %9 = bitcast %struct.uint16v16_t* %6 to i8*
  call void @my.lifetime.start(i64 32, i8* nonnull %9) #22
  call void @my.memcpy.p0i8.p0i8.i64(i8* nonnull %9, i8* %3, i64 32, i32 1, i1 false) #22
  %10 = bitcast %struct.uint16v16_t* %7 to i8*
  call void @my.lifetime.start(i64 32, i8* nonnull %10) #22
  call void @my.memcpy.p0i8.p0i8.i64(i8* nonnull %10, i8* %4, i64 32, i32 1, i1 false) #22
  %11 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %8, i64 0, i32 0, i64 0
  call void @my.lifetime.start(i64 32, i8* nonnull %11) #22
  %12 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %8, i64 0, i32 0, i64 3
  call void @my.memset.p0i8.i64(i8* nonnull %12, i8 0, i64 29, i32 1, i1 false)
  %13 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %6, i64 0, i32 0, i64 0
  %14 = load i16, i16* %13, align 2
  %15 = icmp slt i16 %14, 255
  %16 = select i1 %15, i16 %14, i16 255
  %17 = icmp sgt i16 %14, 0
  %18 = trunc i16 %16 to i8
  %19 = select i1 %17, i8 %18, i8 0
  store i8 %19, i8* %11, align 1
  %20 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %6, i64 0, i32 0, i64 8
  %21 = load i16, i16* %20, align 2
  %22 = icmp slt i16 %21, 255
  %23 = select i1 %22, i16 %21, i16 255
  %24 = icmp sgt i16 %21, 0
  %25 = trunc i16 %23 to i8
  %26 = select i1 %24, i8 %25, i8 0
  %27 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %8, i64 0, i32 0, i64 16
  store i8 %26, i8* %27, align 1
  %28 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %7, i64 0, i32 0, i64 0
  %29 = load i16, i16* %28, align 2
  %30 = icmp slt i16 %29, 255
  %31 = select i1 %30, i16 %29, i16 255
  %32 = icmp sgt i16 %29, 0
  %33 = trunc i16 %31 to i8
  %34 = select i1 %32, i8 %33, i8 0
  %35 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %8, i64 0, i32 0, i64 8
  store i8 %34, i8* %35, align 1
  %36 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %7, i64 0, i32 0, i64 8
  %37 = load i16, i16* %36, align 2
  %38 = icmp slt i16 %37, 255
  %39 = select i1 %38, i16 %37, i16 255
  %40 = icmp sgt i16 %37, 0
  %41 = trunc i16 %39 to i8
  %42 = select i1 %40, i8 %41, i8 0
  %43 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %8, i64 0, i32 0, i64 24
  store i8 %42, i8* %43, align 1
  %44 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %6, i64 0, i32 0, i64 1
  %45 = load i16, i16* %44, align 2
  %46 = icmp slt i16 %45, 255
  %47 = select i1 %46, i16 %45, i16 255
  %48 = icmp sgt i16 %45, 0
  %49 = trunc i16 %47 to i8
  %50 = select i1 %48, i8 %49, i8 0
  %51 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %8, i64 0, i32 0, i64 1
  store i8 %50, i8* %51, align 1
  %52 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %6, i64 0, i32 0, i64 9
  %53 = load i16, i16* %52, align 2
  %54 = icmp slt i16 %53, 255
  %55 = select i1 %54, i16 %53, i16 255
  %56 = icmp sgt i16 %53, 0
  %57 = trunc i16 %55 to i8
  %58 = select i1 %56, i8 %57, i8 0
  %59 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %8, i64 0, i32 0, i64 17
  store i8 %58, i8* %59, align 1
  %60 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %7, i64 0, i32 0, i64 1
  %61 = load i16, i16* %60, align 2
  %62 = icmp slt i16 %61, 255
  %63 = select i1 %62, i16 %61, i16 255
  %64 = icmp sgt i16 %61, 0
  %65 = trunc i16 %63 to i8
  %66 = select i1 %64, i8 %65, i8 0
  %67 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %8, i64 0, i32 0, i64 9
  store i8 %66, i8* %67, align 1
  %68 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %7, i64 0, i32 0, i64 9
  %69 = load i16, i16* %68, align 2
  %70 = icmp slt i16 %69, 255
  %71 = select i1 %70, i16 %69, i16 255
  %72 = icmp sgt i16 %69, 0
  %73 = trunc i16 %71 to i8
  %74 = select i1 %72, i8 %73, i8 0
  %75 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %8, i64 0, i32 0, i64 25
  store i8 %74, i8* %75, align 1
  %76 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %6, i64 0, i32 0, i64 2
  %77 = load i16, i16* %76, align 2
  %78 = icmp slt i16 %77, 255
  %79 = select i1 %78, i16 %77, i16 255
  %80 = icmp sgt i16 %77, 0
  %81 = trunc i16 %79 to i8
  %82 = select i1 %80, i8 %81, i8 0
  %83 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %8, i64 0, i32 0, i64 2
  store i8 %82, i8* %83, align 1
  %84 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %6, i64 0, i32 0, i64 10
  %85 = load i16, i16* %84, align 2
  %86 = icmp slt i16 %85, 255
  %87 = select i1 %86, i16 %85, i16 255
  %88 = icmp sgt i16 %85, 0
  %89 = trunc i16 %87 to i8
  %90 = select i1 %88, i8 %89, i8 0
  %91 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %8, i64 0, i32 0, i64 18
  store i8 %90, i8* %91, align 1
  %92 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %7, i64 0, i32 0, i64 2
  %93 = load i16, i16* %92, align 2
  %94 = icmp slt i16 %93, 255
  %95 = select i1 %94, i16 %93, i16 255
  %96 = icmp sgt i16 %93, 0
  %97 = trunc i16 %95 to i8
  %98 = select i1 %96, i8 %97, i8 0
  %99 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %8, i64 0, i32 0, i64 10
  store i8 %98, i8* %99, align 1
  %100 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %7, i64 0, i32 0, i64 10
  %101 = load i16, i16* %100, align 2
  %102 = icmp slt i16 %101, 255
  %103 = select i1 %102, i16 %101, i16 255
  %104 = icmp sgt i16 %101, 0
  %105 = trunc i16 %103 to i8
  %106 = select i1 %104, i8 %105, i8 0
  %107 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %8, i64 0, i32 0, i64 26
  store i8 %106, i8* %107, align 1
  %108 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %6, i64 0, i32 0, i64 3
  %109 = load i16, i16* %108, align 2
  %110 = icmp slt i16 %109, 255
  %111 = select i1 %110, i16 %109, i16 255
  %112 = icmp sgt i16 %109, 0
  %113 = trunc i16 %111 to i8
  %114 = select i1 %112, i8 %113, i8 0
  %115 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %8, i64 0, i32 0, i64 3
  store i8 %114, i8* %115, align 1
  %116 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %6, i64 0, i32 0, i64 11
  %117 = load i16, i16* %116, align 2
  %118 = icmp slt i16 %117, 255
  %119 = select i1 %118, i16 %117, i16 255
  %120 = icmp sgt i16 %117, 0
  %121 = trunc i16 %119 to i8
  %122 = select i1 %120, i8 %121, i8 0
  %123 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %8, i64 0, i32 0, i64 19
  store i8 %122, i8* %123, align 1
  %124 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %7, i64 0, i32 0, i64 3
  %125 = load i16, i16* %124, align 2
  %126 = icmp slt i16 %125, 255
  %127 = select i1 %126, i16 %125, i16 255
  %128 = icmp sgt i16 %125, 0
  %129 = trunc i16 %127 to i8
  %130 = select i1 %128, i8 %129, i8 0
  %131 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %8, i64 0, i32 0, i64 11
  store i8 %130, i8* %131, align 1
  %132 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %7, i64 0, i32 0, i64 11
  %133 = load i16, i16* %132, align 2
  %134 = icmp slt i16 %133, 255
  %135 = select i1 %134, i16 %133, i16 255
  %136 = icmp sgt i16 %133, 0
  %137 = trunc i16 %135 to i8
  %138 = select i1 %136, i8 %137, i8 0
  %139 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %8, i64 0, i32 0, i64 27
  store i8 %138, i8* %139, align 1
  %140 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %6, i64 0, i32 0, i64 4
  %141 = load i16, i16* %140, align 2
  %142 = icmp slt i16 %141, 255
  %143 = select i1 %142, i16 %141, i16 255
  %144 = icmp sgt i16 %141, 0
  %145 = trunc i16 %143 to i8
  %146 = select i1 %144, i8 %145, i8 0
  %147 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %8, i64 0, i32 0, i64 4
  store i8 %146, i8* %147, align 1
  %148 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %6, i64 0, i32 0, i64 12
  %149 = load i16, i16* %148, align 2
  %150 = icmp slt i16 %149, 255
  %151 = select i1 %150, i16 %149, i16 255
  %152 = icmp sgt i16 %149, 0
  %153 = trunc i16 %151 to i8
  %154 = select i1 %152, i8 %153, i8 0
  %155 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %8, i64 0, i32 0, i64 20
  store i8 %154, i8* %155, align 1
  %156 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %7, i64 0, i32 0, i64 4
  %157 = load i16, i16* %156, align 2
  %158 = icmp slt i16 %157, 255
  %159 = select i1 %158, i16 %157, i16 255
  %160 = icmp sgt i16 %157, 0
  %161 = trunc i16 %159 to i8
  %162 = select i1 %160, i8 %161, i8 0
  %163 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %8, i64 0, i32 0, i64 12
  store i8 %162, i8* %163, align 1
  %164 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %7, i64 0, i32 0, i64 12
  %165 = load i16, i16* %164, align 2
  %166 = icmp slt i16 %165, 255
  %167 = select i1 %166, i16 %165, i16 255
  %168 = icmp sgt i16 %165, 0
  %169 = trunc i16 %167 to i8
  %170 = select i1 %168, i8 %169, i8 0
  %171 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %8, i64 0, i32 0, i64 28
  store i8 %170, i8* %171, align 1
  %172 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %6, i64 0, i32 0, i64 5
  %173 = load i16, i16* %172, align 2
  %174 = icmp slt i16 %173, 255
  %175 = select i1 %174, i16 %173, i16 255
  %176 = icmp sgt i16 %173, 0
  %177 = trunc i16 %175 to i8
  %178 = select i1 %176, i8 %177, i8 0
  %179 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %8, i64 0, i32 0, i64 5
  store i8 %178, i8* %179, align 1
  %180 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %6, i64 0, i32 0, i64 13
  %181 = load i16, i16* %180, align 2
  %182 = icmp slt i16 %181, 255
  %183 = select i1 %182, i16 %181, i16 255
  %184 = icmp sgt i16 %181, 0
  %185 = trunc i16 %183 to i8
  %186 = select i1 %184, i8 %185, i8 0
  %187 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %8, i64 0, i32 0, i64 21
  store i8 %186, i8* %187, align 1
  %188 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %7, i64 0, i32 0, i64 5
  %189 = load i16, i16* %188, align 2
  %190 = icmp slt i16 %189, 255
  %191 = select i1 %190, i16 %189, i16 255
  %192 = icmp sgt i16 %189, 0
  %193 = trunc i16 %191 to i8
  %194 = select i1 %192, i8 %193, i8 0
  %195 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %8, i64 0, i32 0, i64 13
  store i8 %194, i8* %195, align 1
  %196 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %7, i64 0, i32 0, i64 13
  %197 = load i16, i16* %196, align 2
  %198 = icmp slt i16 %197, 255
  %199 = select i1 %198, i16 %197, i16 255
  %200 = icmp sgt i16 %197, 0
  %201 = trunc i16 %199 to i8
  %202 = select i1 %200, i8 %201, i8 0
  %203 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %8, i64 0, i32 0, i64 29
  store i8 %202, i8* %203, align 1
  %204 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %6, i64 0, i32 0, i64 6
  %205 = load i16, i16* %204, align 2
  %206 = icmp slt i16 %205, 255
  %207 = select i1 %206, i16 %205, i16 255
  %208 = icmp sgt i16 %205, 0
  %209 = trunc i16 %207 to i8
  %210 = select i1 %208, i8 %209, i8 0
  %211 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %8, i64 0, i32 0, i64 6
  store i8 %210, i8* %211, align 1
  %212 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %6, i64 0, i32 0, i64 14
  %213 = load i16, i16* %212, align 2
  %214 = icmp slt i16 %213, 255
  %215 = select i1 %214, i16 %213, i16 255
  %216 = icmp sgt i16 %213, 0
  %217 = trunc i16 %215 to i8
  %218 = select i1 %216, i8 %217, i8 0
  %219 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %8, i64 0, i32 0, i64 22
  store i8 %218, i8* %219, align 1
  %220 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %7, i64 0, i32 0, i64 6
  %221 = load i16, i16* %220, align 2
  %222 = icmp slt i16 %221, 255
  %223 = select i1 %222, i16 %221, i16 255
  %224 = icmp sgt i16 %221, 0
  %225 = trunc i16 %223 to i8
  %226 = select i1 %224, i8 %225, i8 0
  %227 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %8, i64 0, i32 0, i64 14
  store i8 %226, i8* %227, align 1
  %228 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %7, i64 0, i32 0, i64 14
  %229 = load i16, i16* %228, align 2
  %230 = icmp slt i16 %229, 255
  %231 = select i1 %230, i16 %229, i16 255
  %232 = icmp sgt i16 %229, 0
  %233 = trunc i16 %231 to i8
  %234 = select i1 %232, i8 %233, i8 0
  %235 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %8, i64 0, i32 0, i64 30
  store i8 %234, i8* %235, align 1
  %236 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %6, i64 0, i32 0, i64 7
  %237 = load i16, i16* %236, align 2
  %238 = icmp slt i16 %237, 255
  %239 = select i1 %238, i16 %237, i16 255
  %240 = icmp sgt i16 %237, 0
  %241 = trunc i16 %239 to i8
  %242 = select i1 %240, i8 %241, i8 0
  %243 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %8, i64 0, i32 0, i64 7
  store i8 %242, i8* %243, align 1
  %244 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %6, i64 0, i32 0, i64 15
  %245 = load i16, i16* %244, align 2
  %246 = icmp slt i16 %245, 255
  %247 = select i1 %246, i16 %245, i16 255
  %248 = icmp sgt i16 %245, 0
  %249 = trunc i16 %247 to i8
  %250 = select i1 %248, i8 %249, i8 0
  %251 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %8, i64 0, i32 0, i64 23
  store i8 %250, i8* %251, align 1
  %252 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %7, i64 0, i32 0, i64 7
  %253 = load i16, i16* %252, align 2
  %254 = icmp slt i16 %253, 255
  %255 = select i1 %254, i16 %253, i16 255
  %256 = icmp sgt i16 %253, 0
  %257 = trunc i16 %255 to i8
  %258 = select i1 %256, i8 %257, i8 0
  %259 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %8, i64 0, i32 0, i64 15
  store i8 %258, i8* %259, align 1
  %260 = getelementptr inbounds %struct.uint16v16_t, %struct.uint16v16_t* %7, i64 0, i32 0, i64 15
  %261 = load i16, i16* %260, align 2
  %262 = icmp slt i16 %261, 255
  %263 = select i1 %262, i16 %261, i16 255
  %264 = icmp sgt i16 %261, 0
  %265 = trunc i16 %263 to i8
  %266 = select i1 %264, i8 %265, i8 0
  %267 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %8, i64 0, i32 0, i64 31
  store i8 %266, i8* %267, align 1
  %268 = load i8, i8* %11, align 1
  store i8 %268, i8* %2, align 1
  %269 = load i8, i8* %51, align 1
  %270 = getelementptr inbounds i8, i8* %2, i64 1
  store i8 %269, i8* %270, align 1
  %271 = load i8, i8* %83, align 1
  %272 = getelementptr inbounds i8, i8* %2, i64 2
  store i8 %271, i8* %272, align 1
  %273 = load i8, i8* %115, align 1
  %274 = getelementptr inbounds i8, i8* %2, i64 3
  store i8 %273, i8* %274, align 1
  %275 = load i8, i8* %147, align 1
  %276 = getelementptr inbounds i8, i8* %2, i64 4
  store i8 %275, i8* %276, align 1
  %277 = load i8, i8* %179, align 1
  %278 = getelementptr inbounds i8, i8* %2, i64 5
  store i8 %277, i8* %278, align 1
  %279 = getelementptr inbounds i8, i8* %2, i64 6
  store i8 %210, i8* %279, align 1
  %280 = getelementptr inbounds i8, i8* %2, i64 7
  store i8 %242, i8* %280, align 1
  %281 = load i8, i8* %35, align 1
  %282 = getelementptr inbounds i8, i8* %2, i64 8
  store i8 %281, i8* %282, align 1
  %283 = load i8, i8* %67, align 1
  %284 = getelementptr inbounds i8, i8* %2, i64 9
  store i8 %283, i8* %284, align 1
  %285 = load i8, i8* %99, align 1
  %286 = getelementptr inbounds i8, i8* %2, i64 10
  store i8 %285, i8* %286, align 1
  %287 = load i8, i8* %131, align 1
  %288 = getelementptr inbounds i8, i8* %2, i64 11
  store i8 %287, i8* %288, align 1
  %289 = load i8, i8* %163, align 1
  %290 = getelementptr inbounds i8, i8* %2, i64 12
  store i8 %289, i8* %290, align 1
  %291 = load i8, i8* %195, align 1
  %292 = getelementptr inbounds i8, i8* %2, i64 13
  store i8 %291, i8* %292, align 1
  %293 = getelementptr inbounds i8, i8* %2, i64 14
  store i8 %226, i8* %293, align 1
  %294 = getelementptr inbounds i8, i8* %2, i64 15
  store i8 %258, i8* %294, align 1
  %295 = load i8, i8* %27, align 1
  %296 = getelementptr inbounds i8, i8* %2, i64 16
  store i8 %295, i8* %296, align 1
  %297 = load i8, i8* %59, align 1
  %298 = getelementptr inbounds i8, i8* %2, i64 17
  store i8 %297, i8* %298, align 1
  %299 = load i8, i8* %91, align 1
  %300 = getelementptr inbounds i8, i8* %2, i64 18
  store i8 %299, i8* %300, align 1
  %301 = load i8, i8* %123, align 1
  %302 = getelementptr inbounds i8, i8* %2, i64 19
  store i8 %301, i8* %302, align 1
  %303 = load i8, i8* %155, align 1
  %304 = getelementptr inbounds i8, i8* %2, i64 20
  store i8 %303, i8* %304, align 1
  %305 = load i8, i8* %187, align 1
  %306 = getelementptr inbounds i8, i8* %2, i64 21
  store i8 %305, i8* %306, align 1
  %307 = load i8, i8* %219, align 1
  %308 = getelementptr inbounds i8, i8* %2, i64 22
  store i8 %307, i8* %308, align 1
  %309 = getelementptr inbounds i8, i8* %2, i64 23
  store i8 %250, i8* %309, align 1
  %310 = load i8, i8* %43, align 1
  %311 = getelementptr inbounds i8, i8* %2, i64 24
  store i8 %310, i8* %311, align 1
  %312 = load i8, i8* %75, align 1
  %313 = getelementptr inbounds i8, i8* %2, i64 25
  store i8 %312, i8* %313, align 1
  %314 = load i8, i8* %107, align 1
  %315 = getelementptr inbounds i8, i8* %2, i64 26
  store i8 %314, i8* %315, align 1
  %316 = load i8, i8* %139, align 1
  %317 = getelementptr inbounds i8, i8* %2, i64 27
  store i8 %316, i8* %317, align 1
  %318 = load i8, i8* %171, align 1
  %319 = getelementptr inbounds i8, i8* %2, i64 28
  store i8 %318, i8* %319, align 1
  %320 = load i8, i8* %203, align 1
  %321 = getelementptr inbounds i8, i8* %2, i64 29
  store i8 %320, i8* %321, align 1
  %322 = load i8, i8* %235, align 1
  %323 = getelementptr inbounds i8, i8* %2, i64 30
  store i8 %322, i8* %323, align 1
  %324 = getelementptr inbounds i8, i8* %2, i64 31
  store i8 %266, i8* %324, align 1
  call void @my.lifetime.end(i64 32, i8* nonnull %11) #22
  call void @my.lifetime.end(i64 32, i8* nonnull %10) #22
  call void @my.lifetime.end(i64 32, i8* nonnull %9) #22
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_vpackuswb_ymm_ymm_ymm(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #19 {
block_530:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %9 to %"class.std::bitset"*
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %11 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %10, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %11 to %"class.std::bitset"*
  %12 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %13 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %14 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L12PACKUSWB_AVXI3VnWI8vec256_tE2VnIS2_ES5_10uint8v32_tEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %12, i8* %13, i8* %14)
  ret %struct.Memory* %17
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
  %call = call %struct.Memory* @routine_vpackuswb_ymm_ymm_ymm(%struct.State* %state, i64 0, %struct.Memory* %mem)
  ret i32 0
}