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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L8PMOVMSKBI3RnWImE2VnI8vec256_tEEEP6MemoryS7_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i8* nocapture readonly) #0 {
  %5 = alloca %struct.uint8v32_t, align 1
  %6 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %5, i64 0, i32 0, i64 0
  call void @my.lifetime.start(i64 32, i8* nonnull %6) #22
  call void @my.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* %3, i64 32, i32 1, i1 false) #22
  %7 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %5, i64 0, i32 0, i64 31
  %8 = load i8, i8* %7, align 1
  %9 = lshr i8 %8, 7
  %10 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %5, i64 0, i32 0, i64 30
  %11 = load i8, i8* %10, align 1
  %12 = shl   i8 %9, 1
  %13 = lshr i8 %11, 7
  %14 = or i8 %13, %12
  %15 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %5, i64 0, i32 0, i64 29
  %16 = load i8, i8* %15, align 1
  %17 = shl   i8 %14, 1
  %18 = lshr i8 %16, 7
  %19 = or i8 %18, %17
  %20 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %5, i64 0, i32 0, i64 28
  %21 = load i8, i8* %20, align 1
  %22 = shl   i8 %19, 1
  %23 = lshr i8 %21, 7
  %24 = or i8 %23, %22
  %25 = zext i8 %24 to i64
  %26 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %5, i64 0, i32 0, i64 27
  %27 = load i8, i8* %26, align 1
  %28 = shl   i64 %25, 1
  %29 = lshr i8 %27, 7
  %30 = zext i8 %29 to i64
  %31 = or i64 %30, %28
  %32 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %5, i64 0, i32 0, i64 26
  %33 = load i8, i8* %32, align 1
  %34 = shl   i64 %31, 1
  %35 = lshr i8 %33, 7
  %36 = zext i8 %35 to i64
  %37 = or i64 %36, %34
  %38 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %5, i64 0, i32 0, i64 25
  %39 = load i8, i8* %38, align 1
  %40 = shl   i64 %37, 1
  %41 = lshr i8 %39, 7
  %42 = zext i8 %41 to i64
  %43 = or i64 %42, %40
  %44 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %5, i64 0, i32 0, i64 24
  %45 = load i8, i8* %44, align 1
  %46 = shl i64 %43, 1
  %47 = lshr i8 %45, 7
  %48 = zext i8 %47 to i64
  %49 = or i64 %48, %46
  %50 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %5, i64 0, i32 0, i64 23
  %51 = load i8, i8* %50, align 1
  %52 = shl i64 %49, 1
  %53 = lshr i8 %51, 7
  %54 = zext i8 %53 to i64
  %55 = or i64 %54, %52
  %56 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %5, i64 0, i32 0, i64 22
  %57 = load i8, i8* %56, align 1
  %58 = shl i64 %55, 1
  %59 = lshr i8 %57, 7
  %60 = zext i8 %59 to i64
  %61 = or i64 %60, %58
  %62 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %5, i64 0, i32 0, i64 21
  %63 = load i8, i8* %62, align 1
  %64 = shl i64 %61, 1
  %65 = lshr i8 %63, 7
  %66 = zext i8 %65 to i64
  %67 = or i64 %66, %64
  %68 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %5, i64 0, i32 0, i64 20
  %69 = load i8, i8* %68, align 1
  %70 = shl i64 %67, 1
  %71 = lshr i8 %69, 7
  %72 = zext i8 %71 to i64
  %73 = or i64 %72, %70
  %74 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %5, i64 0, i32 0, i64 19
  %75 = load i8, i8* %74, align 1
  %76 = shl i64 %73, 1
  %77 = lshr i8 %75, 7
  %78 = zext i8 %77 to i64
  %79 = or i64 %78, %76
  %80 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %5, i64 0, i32 0, i64 18
  %81 = load i8, i8* %80, align 1
  %82 = shl i64 %79, 1
  %83 = lshr i8 %81, 7
  %84 = zext i8 %83 to i64
  %85 = or i64 %84, %82
  %86 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %5, i64 0, i32 0, i64 17
  %87 = load i8, i8* %86, align 1
  %88 = shl i64 %85, 1
  %89 = lshr i8 %87, 7
  %90 = zext i8 %89 to i64
  %91 = or i64 %90, %88
  %92 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %5, i64 0, i32 0, i64 16
  %93 = load i8, i8* %92, align 1
  %94 = shl i64 %91, 1
  %95 = lshr i8 %93, 7
  %96 = zext i8 %95 to i64
  %97 = or i64 %96, %94
  %98 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %5, i64 0, i32 0, i64 15
  %99 = load i8, i8* %98, align 1
  %100 = shl i64 %97, 1
  %101 = lshr i8 %99, 7
  %102 = zext i8 %101 to i64
  %103 = or i64 %102, %100
  %104 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %5, i64 0, i32 0, i64 14
  %105 = load i8, i8* %104, align 1
  %106 = shl i64 %103, 1
  %107 = lshr i8 %105, 7
  %108 = zext i8 %107 to i64
  %109 = or i64 %108, %106
  %110 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %5, i64 0, i32 0, i64 13
  %111 = load i8, i8* %110, align 1
  %112 = shl i64 %109, 1
  %113 = lshr i8 %111, 7
  %114 = zext i8 %113 to i64
  %115 = or i64 %114, %112
  %116 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %5, i64 0, i32 0, i64 12
  %117 = load i8, i8* %116, align 1
  %118 = shl i64 %115, 1
  %119 = lshr i8 %117, 7
  %120 = zext i8 %119 to i64
  %121 = or i64 %120, %118
  %122 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %5, i64 0, i32 0, i64 11
  %123 = load i8, i8* %122, align 1
  %124 = shl i64 %121, 1
  %125 = lshr i8 %123, 7
  %126 = zext i8 %125 to i64
  %127 = or i64 %126, %124
  %128 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %5, i64 0, i32 0, i64 10
  %129 = load i8, i8* %128, align 1
  %130 = shl i64 %127, 1
  %131 = lshr i8 %129, 7
  %132 = zext i8 %131 to i64
  %133 = or i64 %132, %130
  %134 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %5, i64 0, i32 0, i64 9
  %135 = load i8, i8* %134, align 1
  %136 = shl i64 %133, 1
  %137 = lshr i8 %135, 7
  %138 = zext i8 %137 to i64
  %139 = or i64 %138, %136
  %140 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %5, i64 0, i32 0, i64 8
  %141 = load i8, i8* %140, align 1
  %142 = shl i64 %139, 1
  %143 = lshr i8 %141, 7
  %144 = zext i8 %143 to i64
  %145 = or i64 %144, %142
  %146 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %5, i64 0, i32 0, i64 7
  %147 = load i8, i8* %146, align 1
  %148 = shl i64 %145, 1
  %149 = lshr i8 %147, 7
  %150 = zext i8 %149 to i64
  %151 = or i64 %150, %148
  %152 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %5, i64 0, i32 0, i64 6
  %153 = load i8, i8* %152, align 1
  %154 = shl i64 %151, 1
  %155 = lshr i8 %153, 7
  %156 = zext i8 %155 to i64
  %157 = or i64 %156, %154
  %158 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %5, i64 0, i32 0, i64 5
  %159 = load i8, i8* %158, align 1
  %160 = shl i64 %157, 1
  %161 = lshr i8 %159, 7
  %162 = zext i8 %161 to i64
  %163 = or i64 %162, %160
  %164 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %5, i64 0, i32 0, i64 4
  %165 = load i8, i8* %164, align 1
  %166 = shl i64 %163, 1
  %167 = lshr i8 %165, 7
  %168 = zext i8 %167 to i64
  %169 = or i64 %168, %166
  %170 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %5, i64 0, i32 0, i64 3
  %171 = load i8, i8* %170, align 1
  %172 = shl i64 %169, 1
  %173 = lshr i8 %171, 7
  %174 = zext i8 %173 to i64
  %175 = or i64 %174, %172
  %176 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %5, i64 0, i32 0, i64 2
  %177 = load i8, i8* %176, align 1
  %178 = shl i64 %175, 1
  %179 = lshr i8 %177, 7
  %180 = zext i8 %179 to i64
  %181 = or i64 %180, %178
  %182 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %5, i64 0, i32 0, i64 1
  %183 = load i8, i8* %182, align 1
  %184 = shl i64 %181, 1
  %185 = lshr i8 %183, 7
  %186 = zext i8 %185 to i64
  %187 = or i64 %186, %184
  %188 = load i8, i8* %6, align 1
  %189 = shl i64 %187, 1
  %190 = lshr i8 %188, 7
  %191 = zext i8 %190 to i64
  %192 = and i64 %189, 4294967294
  %193 = or i64 %191, %192
  store i64 %193, i64* %2, align 8
  call void @my.lifetime.end(i64 32, i8* nonnull %6) #22
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_vpmovmskb_r32_ymm(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #19 {
block_530:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8PMOVMSKBI3RnWImE2VnI8vec256_tEEEP6MemoryS7_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RBX, i8* %11)
  ret %struct.Memory* %14
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
  %call = call %struct.Memory* @routine_vpmovmskb_r32_ymm(%struct.State* %state, i64 0, %struct.Memory* %mem)
  ret i32 0
}