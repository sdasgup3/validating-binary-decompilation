; ModuleID = 'test.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"
%union.anon = type { i64 }
%seg_4f8__init_type = type <{ [23 x i8] }>
%seg_510__plt_type = type <{ [16 x i8] }>
%seg_520__plt_got_type = type <{ [8 x i8] }>
%seg_530__text_type = type <{ [434 x i8] }>
%seg_6e4__fini_type = type <{ [9 x i8] }>
%seg_6f0__rodata_type = type <{ [4 x i8] }>
%seg_6f4__eh_frame_hdr_type = type <{ [60 x i8] }>
%seg_730__eh_frame_type = type <{ [256 x i8] }>
%seg_200de0__init_array_type = type <{ i64, i64 }>
%seg_200df0__jcr_type = type <{ [8 x i8] }>
%seg_201000__data_type = type <{ [8 x i8], i64 }>
%__bss_start_type = type <{ [8 x i8] }>
%struct.State = type { %struct.ArchState, [32 x %union.VectorReg], %struct.ArithFlags, %union.anon, %struct.Segments, %struct.AddressSpace, %struct.GPR, %struct.X87Stack, %struct.MMX, %struct.FPUStatusFlags, %union.anon, %union.FPU, %struct.SegmentCaches }
%struct.ArchState = type { i32, i32, %union.anon }
%union.VectorReg = type { %union.vec512_t }
%union.vec512_t = type { %struct.uint64v8_t }
%struct.uint64v8_t = type { [8 x i64] }
%struct.ArithFlags = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.Segments = type { i16, %union.SegmentSelector, i16, %union.SegmentSelector, i16, %union.SegmentSelector, i16, %union.SegmentSelector, i16, %union.SegmentSelector, i16, %union.SegmentSelector }
%union.SegmentSelector = type { i16 }
%struct.AddressSpace = type { i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg }
%struct.Reg = type { %union.anon }
%struct.GPR = type { i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg }
%struct.X87Stack = type { [8 x %struct.anon.3] }
%struct.anon.3 = type { i64, double }
%struct.MMX = type { [8 x %struct.anon.4] }
%struct.anon.4 = type { i64, %union.vec64_t }
%union.vec64_t = type { %struct.uint64v1_t }
%struct.uint64v1_t = type { [1 x i64] }
%struct.FPUStatusFlags = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8] }
%union.FPU = type { %struct.anon.13 }
%struct.anon.13 = type { %struct.FpuFXSAVE, [96 x i8] }
%struct.FpuFXSAVE = type { %union.SegmentSelector, %union.SegmentSelector, %union.FPUAbridgedTagWord, i8, i16, i32, %union.SegmentSelector, i16, i32, %union.SegmentSelector, i16, %union.FPUControlStatus, %union.FPUControlStatus, [8 x %struct.FPUStackElem], [16 x %union.vec128_t] }
%union.FPUAbridgedTagWord = type { i8 }
%union.FPUControlStatus = type { i32 }
%struct.FPUStackElem = type { %union.anon.11, [6 x i8] }
%union.anon.11 = type { %struct.float80_t }
%struct.float80_t = type { [10 x i8] }
%union.vec128_t = type { %struct.uint128v1_t }
%struct.uint128v1_t = type { [1 x i128] }
%struct.SegmentCaches = type { %struct.SegmentShadow, %struct.SegmentShadow, %struct.SegmentShadow, %struct.SegmentShadow, %struct.SegmentShadow, %struct.SegmentShadow }
%struct.SegmentShadow = type { %union.anon, i32, i32 }
%struct.Memory = type { i64 }
%struct.uint8v32_t = type { [32 x i8] }
%struct.anon.2 = type { i8, i8 }
%struct.int32v8_t = type { [8 x i32] }
%struct.float32v8_t = type { [8 x float] }
%struct.uint8v8_t = type { [8 x i8] }
%struct.uint8v16_t = type { [16 x i8] }
%struct.uint16v8_t = type { [8 x i16] }
%struct.uint8v4_t = type { [4 x i8] }
%struct.int16v4_t = type { [4 x i16] }
%struct.int32v4_t = type { [4 x i32] }
%struct.uint64v2_t = type { [2 x i64] }
%struct.uint64v4_t = type { [4 x i64] }
%struct.uint128v2_t = type { [2 x i128] }
%struct.uint16v16_t = type { [16 x i16] }
%struct.float64v4_t = type { [4 x double] }
%"class.(anonymous namespace)::BitMatrix" = type { %"class.std::bitset", [16 x [16 x i8]] }
%"class.std::bitset" = type { %struct.uint64v4_t }
%struct.bcd80_t = type { [9 x %union.FPUAbridgedTagWord], %union.FPUAbridgedTagWord }
%struct.FpuFSAVE = type { %union.SegmentSelector, i16, %union.SegmentSelector, i16, %union.SegmentSelector, i16, i32, %union.SegmentSelector, i16, i32, %union.SegmentSelector, i16, [8 x %struct.FPUStackElem] }
%struct.anon.5 = type { i32, i32 }

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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L9PMADDUBSWI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i8* nocapture readonly) #0 {
  %6 = alloca <2 x i64>, align 16
  %7 = bitcast <2 x i64>* %6 to { i64, i64 }*
  %8 = alloca <2 x i64>, align 16
  %9 = bitcast <2 x i64>* %8 to { i64, i64 }*
  %10 = bitcast <2 x i64>* %8 to %struct.uint8v16_t*
  %11 = alloca <2 x i64>, align 16
  %12 = bitcast <2 x i64>* %11 to { i64, i64 }*
  %13 = bitcast <2 x i64>* %11 to %struct.uint8v16_t*
  %14 = bitcast <2 x i64>* %8 to i8*
  call void @my.lifetime.start(i64 16, i8* nonnull %14) #22
  %15 = bitcast i8* %3 to <2 x i64>*
  %16 = load <2 x i64>, <2 x i64>* %15, align 1
  store <2 x i64> %16, <2 x i64>* %8, align 16
  %17 = bitcast <2 x i64>* %11 to i8*
  call void @my.lifetime.start(i64 16, i8* nonnull %17) #22
  %18 = bitcast i8* %4 to <2 x i64>*
  %19 = load <2 x i64>, <2 x i64>* %18, align 1
  store <2 x i64> %19, <2 x i64>* %11, align 16
  %20 = bitcast <2 x i64>* %6 to i8*
  %21 = getelementptr inbounds <2 x i64>, <2 x i64>* %6, i64 0, i64 0
  %22 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %7, i64 0, i32 1
  %23 = bitcast <2 x i64>* %6 to [8 x i16]*
  %24 = extractelement <2 x i64> %16, i32 0
  %25 = trunc i64 %24 to i16
  %26 = and i16 %25, 255
  %27 = extractelement <2 x i64> %19, i32 0
  %28 = trunc i64 %27 to i16
  %29 = shl i16 %28, 8
  %30 = ashr exact i16 %29, 8
  %31 = mul  i16 %30, %26
  %32 = lshr i64 %24, 8
  %33 = trunc i64 %32 to i16
  %34 = and i16 %33, 255
  %35 = trunc i64 %27 to i16
  %36 = ashr i16 %35, 8
  %37 = mul  i16 %36, %34
  %38 = add i16 %37, %31
  %39 = or i16 %37, %31
  %40 = and i16 %37, %31
  %41 = xor i16 %39, -32768
  %42 = and i16 %41, %38
  %43 = icmp slt i16 %42, 0
  %44 = select i1 %43, i16 32767, i16 %38
  %45 = xor i16 %38, -32768
  %46 = and i16 %40, %45
  %47 = icmp slt i16 %46, 0
  %48 = select i1 %47, i16 -32768, i16 %44
  call void @my.lifetime.start(i64 16, i8* nonnull %20)
  store <2 x i64> zeroinitializer, <2 x i64>* %6, align 16
  %49 = bitcast <2 x i64>* %6 to i16*
  store i16 %48, i16* %49, align 16
  %50 = load i64, i64* %21, align 16
  call void @my.lifetime.end(i64 16, i8* nonnull %20)
  %51 = lshr i64 %24, 16
  %52 = trunc i64 %51 to i16
  %53 = and i16 %52, 255
  %54 = lshr i64 %27, 16
  %55 = shl   i64 %54, 8
  %56 = trunc i64 %55 to i16
  %57 = ashr exact i16 %56, 8
  %58 = mul  i16 %57, %53
  %59 = lshr i64 %24, 24
  %60 = trunc i64 %59 to i16
  %61 = and i16 %60, 255
  %62 = lshr i64 %27, 24
  %63 = shl   i64 %62, 8
  %64 = trunc i64 %63 to i16
  %65 = ashr exact i16 %64, 8
  %66 = mul  i16 %65, %61
  %67 = add i16 %66, %58
  %68 = or i16 %66, %58
  %69 = and i16 %66, %58
  %70 = xor i16 %68, -32768
  %71 = and i16 %70, %67
  %72 = icmp slt i16 %71, 0
  %73 = select i1 %72, i16 32767, i16 %67
  %74 = xor i16 %67, -32768
  %75 = and i16 %69, %74
  %76 = icmp slt i16 %75, 0
  %77 = select i1 %76, i16 -32768, i16 %73
  call void @my.lifetime.start(i64 16, i8* nonnull %20)
  store i64 %50, i64* %21, align 16
  store i64 0, i64* %22, align 8
  %78 = getelementptr inbounds [8 x i16], [8 x i16]* %23, i64 0, i64 1
  store i16 %77, i16* %78, align 2
  %79 = load i64, i64* %21, align 16
  call void @my.lifetime.end(i64 16, i8* nonnull %20)
  %80 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %10, i64 0, i32 0, i64 4
  %81 = load i8, i8* %80, align 4
  %82 = zext i8 %81 to i16
  %83 = lshr i64 %27, 32
  %84 = shl   i64 %83, 8
  %85 = trunc i64 %84 to i16
  %86 = ashr exact i16 %85, 8
  %87 = mul  i16 %86, %82
  %88 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %10, i64 0, i32 0, i64 5
  %89 = load i8, i8* %88, align 1
  %90 = zext i8 %89 to i16
  %91 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %13, i64 0, i32 0, i64 5
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i16
  %94 = mul  i16 %93, %90
  %95 = add i16 %94, %87
  %96 = or i16 %94, %87
  %97 = and i16 %94, %87
  %98 = xor i16 %96, -32768
  %99 = and i16 %98, %95
  %100 = icmp slt i16 %99, 0
  %101 = select i1 %100, i16 32767, i16 %95
  %102 = xor i16 %95, -32768
  %103 = and i16 %97, %102
  %104 = icmp slt i16 %103, 0
  %105 = select i1 %104, i16 -32768, i16 %101
  call void @my.lifetime.start(i64 16, i8* nonnull %20)
  store i64 %79, i64* %21, align 16
  store i64 0, i64* %22, align 8
  %106 = getelementptr inbounds [8 x i16], [8 x i16]* %23, i64 0, i64 2
  store i16 %105, i16* %106, align 4
  %107 = load i64, i64* %21, align 16
  call void @my.lifetime.end(i64 16, i8* nonnull %20)
  %108 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %10, i64 0, i32 0, i64 6
  %109 = load i8, i8* %108, align 2
  %110 = zext i8 %109 to i16
  %111 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %13, i64 0, i32 0, i64 6
  %112 = load i8, i8* %111, align 2
  %113 = sext i8 %112 to i16
  %114 = mul  i16 %113, %110
  %115 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %10, i64 0, i32 0, i64 7
  %116 = load i8, i8* %115, align 1
  %117 = zext i8 %116 to i16
  %118 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %13, i64 0, i32 0, i64 7
  %119 = load i8, i8* %118, align 1
  %120 = sext i8 %119 to i16
  %121 = mul  i16 %120, %117
  %122 = add i16 %121, %114
  %123 = or i16 %121, %114
  %124 = and i16 %121, %114
  %125 = xor i16 %123, -32768
  %126 = and i16 %125, %122
  %127 = icmp slt i16 %126, 0
  %128 = select i1 %127, i16 32767, i16 %122
  %129 = xor i16 %122, -32768
  %130 = and i16 %124, %129
  %131 = icmp slt i16 %130, 0
  %132 = select i1 %131, i16 -32768, i16 %128
  call void @my.lifetime.start(i64 16, i8* nonnull %20)
  store i64 %107, i64* %21, align 16
  store i64 0, i64* %22, align 8
  %133 = getelementptr inbounds [8 x i16], [8 x i16]* %23, i64 0, i64 3
  store i16 %132, i16* %133, align 2
  %134 = load i64, i64* %21, align 16
  call void @my.lifetime.end(i64 16, i8* nonnull %20)
  %135 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %9, i64 0, i32 1
  %136 = bitcast i64* %135 to i8*
  %137 = load i8, i8* %136, align 8
  %138 = zext i8 %137 to i16
  %139 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %12, i64 0, i32 1
  %140 = bitcast i64* %139 to i8*
  %141 = load i8, i8* %140, align 8
  %142 = sext i8 %141 to i16
  %143 = mul  i16 %142, %138
  %144 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %10, i64 0, i32 0, i64 9
  %145 = load i8, i8* %144, align 1
  %146 = zext i8 %145 to i16
  %147 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %13, i64 0, i32 0, i64 9
  %148 = load i8, i8* %147, align 1
  %149 = sext i8 %148 to i16
  %150 = mul  i16 %149, %146
  %151 = add i16 %150, %143
  %152 = or i16 %150, %143
  %153 = and i16 %150, %143
  %154 = xor i16 %152, -32768
  %155 = and i16 %154, %151
  %156 = icmp slt i16 %155, 0
  %157 = select i1 %156, i16 32767, i16 %151
  %158 = xor i16 %151, -32768
  %159 = and i16 %153, %158
  %160 = icmp slt i16 %159, 0
  %161 = select i1 %160, i16 -32768, i16 %157
  call void @my.lifetime.start(i64 16, i8* nonnull %20)
  store i64 %134, i64* %21, align 16
  store i64 0, i64* %22, align 8
  %162 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %7, i64 0, i32 1
  %163 = bitcast i64* %162 to i16*
  store i16 %161, i16* %163, align 8
  %164 = load i64, i64* %22, align 8
  call void @my.lifetime.end(i64 16, i8* nonnull %20)
  %165 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %10, i64 0, i32 0, i64 10
  %166 = load i8, i8* %165, align 2
  %167 = zext i8 %166 to i16
  %168 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %13, i64 0, i32 0, i64 10
  %169 = load i8, i8* %168, align 2
  %170 = sext i8 %169 to i16
  %171 = mul  i16 %170, %167
  %172 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %10, i64 0, i32 0, i64 11
  %173 = load i8, i8* %172, align 1
  %174 = zext i8 %173 to i16
  %175 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %13, i64 0, i32 0, i64 11
  %176 = load i8, i8* %175, align 1
  %177 = sext i8 %176 to i16
  %178 = mul  i16 %177, %174
  %179 = add i16 %178, %171
  %180 = or i16 %178, %171
  %181 = and i16 %178, %171
  %182 = xor i16 %180, -32768
  %183 = and i16 %182, %179
  %184 = icmp slt i16 %183, 0
  %185 = select i1 %184, i16 32767, i16 %179
  %186 = xor i16 %179, -32768
  %187 = and i16 %181, %186
  %188 = icmp slt i16 %187, 0
  %189 = select i1 %188, i16 -32768, i16 %185
  call void @my.lifetime.start(i64 16, i8* nonnull %20)
  store i64 %134, i64* %21, align 16
  store i64 %164, i64* %22, align 8
  %190 = getelementptr inbounds [8 x i16], [8 x i16]* %23, i64 0, i64 5
  store i16 %189, i16* %190, align 2
  %191 = load i64, i64* %22, align 8
  call void @my.lifetime.end(i64 16, i8* nonnull %20)
  %192 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %10, i64 0, i32 0, i64 12
  %193 = load i8, i8* %192, align 4
  %194 = zext i8 %193 to i16
  %195 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %13, i64 0, i32 0, i64 12
  %196 = load i8, i8* %195, align 4
  %197 = sext i8 %196 to i16
  %198 = mul  i16 %197, %194
  %199 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %10, i64 0, i32 0, i64 13
  %200 = load i8, i8* %199, align 1
  %201 = zext i8 %200 to i16
  %202 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %13, i64 0, i32 0, i64 13
  %203 = load i8, i8* %202, align 1
  %204 = sext i8 %203 to i16
  %205 = mul  i16 %204, %201
  %206 = add i16 %205, %198
  %207 = or i16 %205, %198
  %208 = and i16 %205, %198
  %209 = xor i16 %207, -32768
  %210 = and i16 %209, %206
  %211 = icmp slt i16 %210, 0
  %212 = select i1 %211, i16 32767, i16 %206
  %213 = xor i16 %206, -32768
  %214 = and i16 %208, %213
  %215 = icmp slt i16 %214, 0
  %216 = select i1 %215, i16 -32768, i16 %212
  call void @my.lifetime.start(i64 16, i8* nonnull %20)
  store i64 %134, i64* %21, align 16
  store i64 %191, i64* %22, align 8
  %217 = getelementptr inbounds [8 x i16], [8 x i16]* %23, i64 0, i64 6
  store i16 %216, i16* %217, align 4
  %218 = load i64, i64* %22, align 8
  call void @my.lifetime.end(i64 16, i8* nonnull %20)
  %219 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %10, i64 0, i32 0, i64 14
  %220 = load i8, i8* %219, align 2
  %221 = zext i8 %220 to i16
  %222 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %13, i64 0, i32 0, i64 14
  %223 = load i8, i8* %222, align 2
  %224 = sext i8 %223 to i16
  %225 = mul  i16 %224, %221
  %226 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %10, i64 0, i32 0, i64 15
  %227 = load i8, i8* %226, align 1
  %228 = zext i8 %227 to i16
  %229 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %13, i64 0, i32 0, i64 15
  %230 = load i8, i8* %229, align 1
  %231 = sext i8 %230 to i16
  %232 = mul  i16 %231, %228
  %233 = add i16 %232, %225
  %234 = or i16 %232, %225
  %235 = and i16 %232, %225
  %236 = xor i16 %234, -32768
  %237 = and i16 %236, %233
  %238 = icmp slt i16 %237, 0
  %239 = select i1 %238, i16 32767, i16 %233
  %240 = xor i16 %233, -32768
  %241 = and i16 %235, %240
  %242 = icmp slt i16 %241, 0
  %243 = select i1 %242, i16 -32768, i16 %239
  call void @my.lifetime.start(i64 16, i8* nonnull %20)
  store i64 %134, i64* %21, align 16
  store i64 %218, i64* %22, align 8
  %244 = getelementptr inbounds [8 x i16], [8 x i16]* %23, i64 0, i64 7
  store i16 %243, i16* %244, align 2
  %245 = load i64, i64* %22, align 8
  call void @my.lifetime.end(i64 16, i8* nonnull %20)
  %246 = lshr i64 %134, 16
  %247 = lshr i64 %134, 32
  %248 = lshr i64 %134, 48
  %249 = trunc i64 %134 to i16
  %250 = trunc i64 %246 to i16
  %251 = trunc i64 %247 to i16
  %252 = trunc i64 %248 to i16
  %253 = bitcast i8* %2 to i16*
  store i16 %249, i16* %253, align 1
  %254 = getelementptr inbounds i8, i8* %2, i64 2
  %255 = bitcast i8* %254 to i16*
  store i16 %250, i16* %255, align 1
  %256 = getelementptr inbounds i8, i8* %2, i64 4
  %257 = bitcast i8* %256 to i16*
  store i16 %251, i16* %257, align 1
  %258 = getelementptr inbounds i8, i8* %2, i64 6
  %259 = bitcast i8* %258 to i16*
  store i16 %252, i16* %259, align 1
  %260 = trunc i64 %245 to i16
  %261 = getelementptr inbounds i8, i8* %2, i64 8
  %262 = bitcast i8* %261 to i16*
  store i16 %260, i16* %262, align 1
  %263 = lshr i64 %245, 16
  %264 = trunc i64 %263 to i16
  %265 = getelementptr inbounds i8, i8* %2, i64 10
  %266 = bitcast i8* %265 to i16*
  store i16 %264, i16* %266, align 1
  %267 = lshr i64 %245, 32
  %268 = trunc i64 %267 to i16
  %269 = getelementptr inbounds i8, i8* %2, i64 12
  %270 = bitcast i8* %269 to i16*
  store i16 %268, i16* %270, align 1
  %271 = lshr i64 %245, 48
  %272 = trunc i64 %271 to i16
  %273 = getelementptr inbounds i8, i8* %2, i64 14
  %274 = bitcast i8* %273 to i16*
  store i16 %272, i16* %274, align 1
  call void @my.lifetime.end(i64 16, i8* nonnull %17) #22
  call void @my.lifetime.end(i64 16, i8* nonnull %14) #22
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_pmaddubsw_xmm_xmm(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %XMM2 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = bitcast %union.vec128_t* %XMM2 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 5
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9PMADDUBSWI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
}

define i32 @main() {
entry:
  %state = alloca %struct.State

  %mem = alloca %struct.Memory
  %memf0 = getelementptr inbounds %struct.Memory, %struct.Memory* %mem, i32 0, i32 0
  store i64 51, i64* %memf0, align 8
  
  %addr1 = getelementptr inbounds %struct.State, %struct.State* %state, i64 0, i32 6, i32 1, i32 0, i32 0
  %addr2 = getelementptr inbounds %struct.State, %struct.State* %state, i64 0, i32 6, i32 3, i32 0, i32 0
  %addr3 = getelementptr inbounds %struct.State, %struct.State* %state, i64 0, i32 6, i32 5, i32 0, i32 0
  %addr4 = getelementptr inbounds %struct.State, %struct.State* %state, i64 0, i32 6, i32 7, i32 0, i32 0
  %addr5 = getelementptr inbounds %struct.State, %struct.State* %state, i64 0, i32 6, i32 9, i32 0, i32 0
  %addr6 = getelementptr inbounds %struct.State, %struct.State* %state, i64 0, i32 6, i32 11, i32 0, i32 0
  %addr7 = getelementptr inbounds %struct.State, %struct.State* %state, i64 0, i32 6, i32 13, i32 0, i32 0
  %addr8 = getelementptr inbounds %struct.State, %struct.State* %state, i64 0, i32 6, i32 15, i32 0, i32 0
  %addr9 = getelementptr inbounds %struct.State, %struct.State* %state, i64 0, i32 6, i32 33, i32 0, i32 0

  %cf = getelementptr inbounds %struct.State, %struct.State* %state, i64 0, i32 2, i32 1
  %pf = getelementptr inbounds %struct.State, %struct.State* %state, i64 0, i32 2, i32 3
  %af = getelementptr inbounds %struct.State, %struct.State* %state, i64 0, i32 2, i32 5
  %zf = getelementptr inbounds %struct.State, %struct.State* %state, i64 0, i32 2, i32 7
  %sf = getelementptr inbounds %struct.State, %struct.State* %state, i64 0, i32 2, i32 9
  %df = getelementptr inbounds %struct.State, %struct.State* %state, i64 0, i32 2, i32 11
  %of = getelementptr inbounds %struct.State, %struct.State* %state, i64 0, i32 2, i32 13

  store i64 100, i64* %addr1, align 8
  store i64 200, i64* %addr2, align 8
  store i64 300, i64* %addr3, align 8
  store i64 400, i64* %addr4, align 8
  store i64 500, i64* %addr5, align 8
  store i64 600, i64* %addr6, align 8
  store i64 700, i64* %addr7, align 8
  store i64 800, i64* %addr8, align 8
  store i64 900, i64* %addr9, align 8

  store i8 10, i8* %cf, align 1
  store i8 20, i8* %pf, align 1
  store i8 30, i8* %af, align 1
  store i8 40, i8* %zf, align 1
  store i8 50, i8* %sf, align 1
  store i8 60, i8* %df, align 1
  store i8 70, i8* %of, align 1

  %call = call %struct.Memory* @routine_pmaddubsw_xmm_xmm(%struct.State* %state, i64 0, %struct.Memory* %mem)
  ret i32 0
}