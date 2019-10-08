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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L6PSADBWI3VnWI8vec256_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i64) #0 {
  %6 = alloca %struct.uint8v32_t, align 1
  %7 = alloca %struct.uint8v32_t, align 1
  %8 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %6, i64 0, i32 0, i64 0
  call void @my.lifetime.start(i64 32, i8* nonnull %8) #22
  call void @my.memcpy.p0i8.p0i8.i64(i8* nonnull %8, i8* %3, i64 32, i32 1, i1 false) #22
  %9 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %7, i64 0, i32 0, i64 0
  call void @my.lifetime.start(i64 32, i8* nonnull %9) #22
  %10 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %7, i64 0, i32 0, i64 25
  call void @my.memset.p0i8.i64(i8* %10, i8 0, i64 7, i32 1, i1 false) #22, !alias.scope !1312
  %11 = inttoptr i64 %4 to i8*
  %12 = load i8, i8* %11
  store i8 %12, i8* %9, align 1
  %13 = add i64 %4, 1
  %14 = inttoptr i64 %13 to i8*
  %15 = load i8, i8* %14
  %16 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %7, i64 0, i32 0, i64 1
  store i8 %15, i8* %16, align 1
  %17 = add i64 %4, 2
  %18 = inttoptr i64 %17 to i8*
  %19 = load i8, i8* %18
  %20 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %7, i64 0, i32 0, i64 2
  store i8 %19, i8* %20, align 1
  %21 = add i64 %4, 3
  %22 = inttoptr i64 %21 to i8*
  %23 = load i8, i8* %22
  %24 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %7, i64 0, i32 0, i64 3
  store i8 %23, i8* %24, align 1
  %25 = add i64 %4, 4
  %26 = inttoptr i64 %25 to i8*
  %27 = load i8, i8* %26
  %28 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %7, i64 0, i32 0, i64 4
  store i8 %27, i8* %28, align 1
  %29 = add i64 %4, 5
  %30 = inttoptr i64 %29 to i8*
  %31 = load i8, i8* %30
  %32 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %7, i64 0, i32 0, i64 5
  store i8 %31, i8* %32, align 1
  %33 = add i64 %4, 6
  %34 = inttoptr i64 %33 to i8*
  %35 = load i8, i8* %34
  %36 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %7, i64 0, i32 0, i64 6
  store i8 %35, i8* %36, align 1
  %37 = add i64 %4, 7
  %38 = inttoptr i64 %37 to i8*
  %39 = load i8, i8* %38
  %40 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %7, i64 0, i32 0, i64 7
  store i8 %39, i8* %40, align 1
  %41 = add i64 %4, 8
  %42 = inttoptr i64 %41 to i8*
  %43 = load i8, i8* %42
  %44 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %7, i64 0, i32 0, i64 8
  store i8 %43, i8* %44, align 1
  %45 = add i64 %4, 9
  %46 = inttoptr i64 %45 to i8*
  %47 = load i8, i8* %46
  %48 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %7, i64 0, i32 0, i64 9
  store i8 %47, i8* %48, align 1
  %49 = add i64 %4, 10
  %50 = inttoptr i64 %49 to i8*
  %51 = load i8, i8* %50
  %52 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %7, i64 0, i32 0, i64 10
  store i8 %51, i8* %52, align 1
  %53 = add i64 %4, 11
  %54 = inttoptr i64 %53 to i8*
  %55 = load i8, i8* %54
  %56 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %7, i64 0, i32 0, i64 11
  store i8 %55, i8* %56, align 1
  %57 = add i64 %4, 12
  %58 = inttoptr i64 %57 to i8*
  %59 = load i8, i8* %58
  %60 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %7, i64 0, i32 0, i64 12
  store i8 %59, i8* %60, align 1
  %61 = add i64 %4, 13
  %62 = inttoptr i64 %61 to i8*
  %63 = load i8, i8* %62
  %64 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %7, i64 0, i32 0, i64 13
  store i8 %63, i8* %64, align 1
  %65 = add i64 %4, 14
  %66 = inttoptr i64 %65 to i8*
  %67 = load i8, i8* %66
  %68 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %7, i64 0, i32 0, i64 14
  store i8 %67, i8* %68, align 1
  %69 = add i64 %4, 15
  %70 = inttoptr i64 %69 to i8*
  %71 = load i8, i8* %70
  %72 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %7, i64 0, i32 0, i64 15
  store i8 %71, i8* %72, align 1
  %73 = add i64 %4, 16
  %74 = inttoptr i64 %73 to i8*
  %75 = load i8, i8* %74
  %76 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %7, i64 0, i32 0, i64 16
  store i8 %75, i8* %76, align 1
  %77 = add i64 %4, 17
  %78 = inttoptr i64 %77 to i8*
  %79 = load i8, i8* %78
  %80 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %7, i64 0, i32 0, i64 17
  store i8 %79, i8* %80, align 1
  %81 = add i64 %4, 18
  %82 = inttoptr i64 %81 to i8*
  %83 = load i8, i8* %82
  %84 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %7, i64 0, i32 0, i64 18
  store i8 %83, i8* %84, align 1
  %85 = add i64 %4, 19
  %86 = inttoptr i64 %85 to i8*
  %87 = load i8, i8* %86
  %88 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %7, i64 0, i32 0, i64 19
  store i8 %87, i8* %88, align 1
  %89 = add i64 %4, 20
  %90 = inttoptr i64 %89 to i8*
  %91 = load i8, i8* %90
  %92 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %7, i64 0, i32 0, i64 20
  store i8 %91, i8* %92, align 1
  %93 = add i64 %4, 21
  %94 = inttoptr i64 %93 to i8*
  %95 = load i8, i8* %94
  %96 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %7, i64 0, i32 0, i64 21
  store i8 %95, i8* %96, align 1
  %97 = add i64 %4, 22
  %98 = inttoptr i64 %97 to i8*
  %99 = load i8, i8* %98
  %100 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %7, i64 0, i32 0, i64 22
  store i8 %99, i8* %100, align 1
  %101 = add i64 %4, 23
  %102 = inttoptr i64 %101 to i8*
  %103 = load i8, i8* %102
  %104 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %7, i64 0, i32 0, i64 23
  store i8 %103, i8* %104, align 1
  %105 = add i64 %4, 24
  %106 = inttoptr i64 %105 to i8*
  %107 = load i8, i8* %106
  %108 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %7, i64 0, i32 0, i64 24
  store i8 %107, i8* %108, align 1
  %109 = add i64 %4, 25
  %110 = inttoptr i64 %109 to i8*
  %111 = load i8, i8* %110
  store i8 %111, i8* %10, align 1
  %112 = add i64 %4, 26
  %113 = inttoptr i64 %112 to i8*
  %114 = load i8, i8* %113
  %115 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %7, i64 0, i32 0, i64 26
  store i8 %114, i8* %115, align 1
  %116 = add i64 %4, 27
  %117 = inttoptr i64 %116 to i8*
  %118 = load i8, i8* %117
  %119 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %7, i64 0, i32 0, i64 27
  store i8 %118, i8* %119, align 1
  %120 = add i64 %4, 28
  %121 = inttoptr i64 %120 to i8*
  %122 = load i8, i8* %121
  %123 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %7, i64 0, i32 0, i64 28
  store i8 %122, i8* %123, align 1
  %124 = add i64 %4, 29
  %125 = inttoptr i64 %124 to i8*
  %126 = load i8, i8* %125
  %127 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %7, i64 0, i32 0, i64 29
  store i8 %126, i8* %127, align 1
  %128 = add i64 %4, 30
  %129 = inttoptr i64 %128 to i8*
  %130 = load i8, i8* %129
  %131 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %7, i64 0, i32 0, i64 30
  store i8 %130, i8* %131, align 1
  %132 = add i64 %4, 31
  %133 = inttoptr i64 %132 to i8*
  %134 = load i8, i8* %133
  %135 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %7, i64 0, i32 0, i64 31
  store i8 %134, i8* %135, align 1
  %136 = load i8, i8* %8, align 1
  %137 = load i8, i8* %9, align 1
  %138 = icmp uge i8 %136, %137
  %139 = sub i8 %136, %137
  %140 = sub i8 %137, %136
  %141 = select i1 %138, i8 %139, i8 %140
  %142 = zext i8 %141 to i64
  %143 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %6, i64 0, i32 0, i64 1
  %144 = load i8, i8* %143, align 1
  %145 = load i8, i8* %16, align 1
  %146 = icmp uge i8 %144, %145
  %147 = sub i8 %144, %145
  %148 = sub i8 %145, %144
  %149 = select i1 %146, i8 %147, i8 %148
  %150 = zext i8 %149 to i64
  %151 = add   i64 %150, %142
  %152 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %6, i64 0, i32 0, i64 2
  %153 = load i8, i8* %152, align 1
  %154 = load i8, i8* %20, align 1
  %155 = icmp uge i8 %153, %154
  %156 = sub i8 %153, %154
  %157 = sub i8 %154, %153
  %158 = select i1 %155, i8 %156, i8 %157
  %159 = zext i8 %158 to i64
  %160 = add   i64 %159, %151
  %161 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %6, i64 0, i32 0, i64 3
  %162 = load i8, i8* %161, align 1
  %163 = load i8, i8* %24, align 1
  %164 = icmp uge i8 %162, %163
  %165 = sub i8 %162, %163
  %166 = sub i8 %163, %162
  %167 = select i1 %164, i8 %165, i8 %166
  %168 = zext i8 %167 to i64
  %169 = add   i64 %168, %160
  %170 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %6, i64 0, i32 0, i64 4
  %171 = load i8, i8* %170, align 1
  %172 = load i8, i8* %28, align 1
  %173 = icmp uge i8 %171, %172
  %174 = sub i8 %171, %172
  %175 = sub i8 %172, %171
  %176 = select i1 %173, i8 %174, i8 %175
  %177 = zext i8 %176 to i64
  %178 = add   i64 %177, %169
  %179 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %6, i64 0, i32 0, i64 5
  %180 = load i8, i8* %179, align 1
  %181 = load i8, i8* %32, align 1
  %182 = icmp uge i8 %180, %181
  %183 = sub i8 %180, %181
  %184 = sub i8 %181, %180
  %185 = select i1 %182, i8 %183, i8 %184
  %186 = zext i8 %185 to i64
  %187 = add   i64 %186, %178
  %188 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %6, i64 0, i32 0, i64 6
  %189 = load i8, i8* %188, align 1
  %190 = load i8, i8* %36, align 1
  %191 = icmp uge i8 %189, %190
  %192 = sub i8 %189, %190
  %193 = sub i8 %190, %189
  %194 = select i1 %191, i8 %192, i8 %193
  %195 = zext i8 %194 to i64
  %196 = add   i64 %195, %187
  %197 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %6, i64 0, i32 0, i64 7
  %198 = load i8, i8* %197, align 1
  %199 = load i8, i8* %40, align 1
  %200 = icmp uge i8 %198, %199
  %201 = sub i8 %198, %199
  %202 = sub i8 %199, %198
  %203 = select i1 %200, i8 %201, i8 %202
  %204 = zext i8 %203 to i64
  %205 = add i64 %204, %196
  %206 = and i64 %205, 65535
  %207 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %6, i64 0, i32 0, i64 8
  %208 = load i8, i8* %207, align 1
  %209 = load i8, i8* %44, align 1
  %210 = icmp uge i8 %208, %209
  %211 = sub i8 %208, %209
  %212 = sub i8 %209, %208
  %213 = select i1 %210, i8 %211, i8 %212
  %214 = zext i8 %213 to i64
  %215 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %6, i64 0, i32 0, i64 9
  %216 = load i8, i8* %215, align 1
  %217 = load i8, i8* %48, align 1
  %218 = icmp uge i8 %216, %217
  %219 = sub i8 %216, %217
  %220 = sub i8 %217, %216
  %221 = select i1 %218, i8 %219, i8 %220
  %222 = zext i8 %221 to i64
  %223 = add   i64 %222, %214
  %224 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %6, i64 0, i32 0, i64 10
  %225 = load i8, i8* %224, align 1
  %226 = load i8, i8* %52, align 1
  %227 = icmp uge i8 %225, %226
  %228 = sub i8 %225, %226
  %229 = sub i8 %226, %225
  %230 = select i1 %227, i8 %228, i8 %229
  %231 = zext i8 %230 to i64
  %232 = add   i64 %231, %223
  %233 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %6, i64 0, i32 0, i64 11
  %234 = load i8, i8* %233, align 1
  %235 = load i8, i8* %56, align 1
  %236 = icmp uge i8 %234, %235
  %237 = sub i8 %234, %235
  %238 = sub i8 %235, %234
  %239 = select i1 %236, i8 %237, i8 %238
  %240 = zext i8 %239 to i64
  %241 = add   i64 %240, %232
  %242 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %6, i64 0, i32 0, i64 12
  %243 = load i8, i8* %242, align 1
  %244 = load i8, i8* %60, align 1
  %245 = icmp uge i8 %243, %244
  %246 = sub i8 %243, %244
  %247 = sub i8 %244, %243
  %248 = select i1 %245, i8 %246, i8 %247
  %249 = zext i8 %248 to i64
  %250 = add   i64 %249, %241
  %251 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %6, i64 0, i32 0, i64 13
  %252 = load i8, i8* %251, align 1
  %253 = load i8, i8* %64, align 1
  %254 = icmp uge i8 %252, %253
  %255 = sub i8 %252, %253
  %256 = sub i8 %253, %252
  %257 = select i1 %254, i8 %255, i8 %256
  %258 = zext i8 %257 to i64
  %259 = add   i64 %258, %250
  %260 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %6, i64 0, i32 0, i64 14
  %261 = load i8, i8* %260, align 1
  %262 = load i8, i8* %68, align 1
  %263 = icmp uge i8 %261, %262
  %264 = sub i8 %261, %262
  %265 = sub i8 %262, %261
  %266 = select i1 %263, i8 %264, i8 %265
  %267 = zext i8 %266 to i64
  %268 = add   i64 %267, %259
  %269 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %6, i64 0, i32 0, i64 15
  %270 = load i8, i8* %269, align 1
  %271 = load i8, i8* %72, align 1
  %272 = icmp uge i8 %270, %271
  %273 = sub i8 %270, %271
  %274 = sub i8 %271, %270
  %275 = select i1 %272, i8 %273, i8 %274
  %276 = zext i8 %275 to i64
  %277 = add i64 %276, %268
  %278 = and i64 %277, 65535
  %279 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %6, i64 0, i32 0, i64 16
  %280 = load i8, i8* %279, align 1
  %281 = load i8, i8* %76, align 1
  %282 = icmp uge i8 %280, %281
  %283 = sub i8 %280, %281
  %284 = sub i8 %281, %280
  %285 = select i1 %282, i8 %283, i8 %284
  %286 = zext i8 %285 to i64
  %287 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %6, i64 0, i32 0, i64 17
  %288 = load i8, i8* %287, align 1
  %289 = load i8, i8* %80, align 1
  %290 = icmp uge i8 %288, %289
  %291 = sub i8 %288, %289
  %292 = sub i8 %289, %288
  %293 = select i1 %290, i8 %291, i8 %292
  %294 = zext i8 %293 to i64
  %295 = add   i64 %294, %286
  %296 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %6, i64 0, i32 0, i64 18
  %297 = load i8, i8* %296, align 1
  %298 = load i8, i8* %84, align 1
  %299 = icmp uge i8 %297, %298
  %300 = sub i8 %297, %298
  %301 = sub i8 %298, %297
  %302 = select i1 %299, i8 %300, i8 %301
  %303 = zext i8 %302 to i64
  %304 = add   i64 %303, %295
  %305 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %6, i64 0, i32 0, i64 19
  %306 = load i8, i8* %305, align 1
  %307 = load i8, i8* %88, align 1
  %308 = icmp uge i8 %306, %307
  %309 = sub i8 %306, %307
  %310 = sub i8 %307, %306
  %311 = select i1 %308, i8 %309, i8 %310
  %312 = zext i8 %311 to i64
  %313 = add   i64 %312, %304
  %314 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %6, i64 0, i32 0, i64 20
  %315 = load i8, i8* %314, align 1
  %316 = load i8, i8* %92, align 1
  %317 = icmp uge i8 %315, %316
  %318 = sub i8 %315, %316
  %319 = sub i8 %316, %315
  %320 = select i1 %317, i8 %318, i8 %319
  %321 = zext i8 %320 to i64
  %322 = add   i64 %321, %313
  %323 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %6, i64 0, i32 0, i64 21
  %324 = load i8, i8* %323, align 1
  %325 = load i8, i8* %96, align 1
  %326 = icmp uge i8 %324, %325
  %327 = sub i8 %324, %325
  %328 = sub i8 %325, %324
  %329 = select i1 %326, i8 %327, i8 %328
  %330 = zext i8 %329 to i64
  %331 = add   i64 %330, %322
  %332 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %6, i64 0, i32 0, i64 22
  %333 = load i8, i8* %332, align 1
  %334 = load i8, i8* %100, align 1
  %335 = icmp uge i8 %333, %334
  %336 = sub i8 %333, %334
  %337 = sub i8 %334, %333
  %338 = select i1 %335, i8 %336, i8 %337
  %339 = zext i8 %338 to i64
  %340 = add   i64 %339, %331
  %341 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %6, i64 0, i32 0, i64 23
  %342 = load i8, i8* %341, align 1
  %343 = load i8, i8* %104, align 1
  %344 = icmp uge i8 %342, %343
  %345 = sub i8 %342, %343
  %346 = sub i8 %343, %342
  %347 = select i1 %344, i8 %345, i8 %346
  %348 = zext i8 %347 to i64
  %349 = add i64 %348, %340
  %350 = and i64 %349, 65535
  %351 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %6, i64 0, i32 0, i64 24
  %352 = load i8, i8* %351, align 1
  %353 = load i8, i8* %108, align 1
  %354 = icmp uge i8 %352, %353
  %355 = sub i8 %352, %353
  %356 = sub i8 %353, %352
  %357 = select i1 %354, i8 %355, i8 %356
  %358 = zext i8 %357 to i64
  %359 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %6, i64 0, i32 0, i64 25
  %360 = load i8, i8* %359, align 1
  %361 = load i8, i8* %10, align 1
  %362 = icmp uge i8 %360, %361
  %363 = sub i8 %360, %361
  %364 = sub i8 %361, %360
  %365 = select i1 %362, i8 %363, i8 %364
  %366 = zext i8 %365 to i64
  %367 = add   i64 %366, %358
  %368 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %6, i64 0, i32 0, i64 26
  %369 = load i8, i8* %368, align 1
  %370 = load i8, i8* %115, align 1
  %371 = icmp uge i8 %369, %370
  %372 = sub i8 %369, %370
  %373 = sub i8 %370, %369
  %374 = select i1 %371, i8 %372, i8 %373
  %375 = zext i8 %374 to i64
  %376 = add   i64 %375, %367
  %377 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %6, i64 0, i32 0, i64 27
  %378 = load i8, i8* %377, align 1
  %379 = load i8, i8* %119, align 1
  %380 = icmp uge i8 %378, %379
  %381 = sub i8 %378, %379
  %382 = sub i8 %379, %378
  %383 = select i1 %380, i8 %381, i8 %382
  %384 = zext i8 %383 to i64
  %385 = add   i64 %384, %376
  %386 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %6, i64 0, i32 0, i64 28
  %387 = load i8, i8* %386, align 1
  %388 = load i8, i8* %123, align 1
  %389 = icmp uge i8 %387, %388
  %390 = sub i8 %387, %388
  %391 = sub i8 %388, %387
  %392 = select i1 %389, i8 %390, i8 %391
  %393 = zext i8 %392 to i64
  %394 = add   i64 %393, %385
  %395 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %6, i64 0, i32 0, i64 29
  %396 = load i8, i8* %395, align 1
  %397 = load i8, i8* %127, align 1
  %398 = icmp uge i8 %396, %397
  %399 = sub i8 %396, %397
  %400 = sub i8 %397, %396
  %401 = select i1 %398, i8 %399, i8 %400
  %402 = zext i8 %401 to i64
  %403 = add   i64 %402, %394
  %404 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %6, i64 0, i32 0, i64 30
  %405 = load i8, i8* %404, align 1
  %406 = load i8, i8* %131, align 1
  %407 = icmp uge i8 %405, %406
  %408 = sub i8 %405, %406
  %409 = sub i8 %406, %405
  %410 = select i1 %407, i8 %408, i8 %409
  %411 = zext i8 %410 to i64
  %412 = add   i64 %411, %403
  %413 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %6, i64 0, i32 0, i64 31
  %414 = load i8, i8* %413, align 1
  %415 = load i8, i8* %135, align 1
  %416 = icmp uge i8 %414, %415
  %417 = sub i8 %414, %415
  %418 = sub i8 %415, %414
  %419 = select i1 %416, i8 %417, i8 %418
  %420 = zext i8 %419 to i64
  %421 = add i64 %420, %412
  %422 = and i64 %421, 65535
  %423 = bitcast i8* %2 to i64*
  store i64 %206, i64* %423, align 1
  %424 = getelementptr inbounds i8, i8* %2, i64 8
  %425 = bitcast i8* %424 to i64*
  store i64 %278, i64* %425, align 1
  %426 = getelementptr inbounds i8, i8* %2, i64 16
  %427 = bitcast i8* %426 to i64*
  store i64 %350, i64* %427, align 1
  %428 = getelementptr inbounds i8, i8* %2, i64 24
  %429 = bitcast i8* %428 to i64*
  store i64 %422, i64* %429, align 1
  call void @my.lifetime.end(i64 32, i8* nonnull %9) #22
  call void @my.lifetime.end(i64 32, i8* nonnull %8) #22
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_vpsadbw_ymm_ymm_m256(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #19 {
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
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L6PSADBWI3VnWI8vec256_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %13, i8* %14, i64 %16)
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
  %call = call %struct.Memory* @routine_vpsadbw_ymm_ymm_m256(%struct.State* %state, i64 0, %struct.Memory* %mem)
  ret i32 0
}