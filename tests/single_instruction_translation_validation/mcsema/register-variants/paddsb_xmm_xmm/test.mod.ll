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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L6PADDSBI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i8* nocapture readonly) #0 {
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
  %23 = bitcast <2 x i64>* %6 to [16 x i8]*
  %24 = extractelement <2 x i64> %16, i32 0
  %25 = trunc i64 %24 to i16
  %26 = extractelement <2 x i64> %19, i32 0
  %27 = trunc i64 %26 to i16
  %28 = shl i16 %25, 8
  %29 = ashr exact i16 %28, 8
  %30 = shl i16 %27, 8
  %31 = ashr exact i16 %30, 8
  %32 = add  i16 %31, %29
  %33 = icmp slt i16 %32, 127
  %34 = select i1 %33, i16 %32, i16 127
  %35 = icmp sgt i16 %32, -128
  %36 = select i1 %35, i16 %32, i16 -128
  %37 = icmp slt i16 %32, 0
  %38 = select i1 %37, i16 %36, i16 %34
  %39 = trunc i16 %38 to i8
  call void @my.lifetime.start(i64 16, i8* nonnull %20)
  store <2 x i64> zeroinitializer, <2 x i64>* %6, align 16
  %40 = bitcast <2 x i64>* %6 to i8*
  store i8 %39, i8* %40, align 16
  %41 = load i64, i64* %21, align 16
  call void @my.lifetime.end(i64 16, i8* nonnull %20)
  %42 = trunc i64 %24 to i16
  %43 = ashr i16 %42, 8
  %44 = trunc i64 %26 to i16
  %45 = ashr i16 %44, 8
  %46 = add  i16 %45, %43
  %47 = icmp slt i16 %46, 127
  %48 = select i1 %47, i16 %46, i16 127
  %49 = icmp sgt i16 %46, -128
  %50 = select i1 %49, i16 %46, i16 -128
  %51 = icmp slt i16 %46, 0
  %52 = select i1 %51, i16 %50, i16 %48
  %53 = trunc i16 %52 to i8
  call void @my.lifetime.start(i64 16, i8* nonnull %20)
  store i64 %41, i64* %21, align 16
  store i64 0, i64* %22, align 8
  %54 = getelementptr inbounds [16 x i8], [16 x i8]* %23, i64 0, i64 1
  store i8 %53, i8* %54, align 1
  %55 = load i64, i64* %21, align 16
  call void @my.lifetime.end(i64 16, i8* nonnull %20)
  %56 = lshr i64 %24, 16
  %57 = lshr i64 %26, 16
  %58 = shl   i64 %56, 8
  %59 = trunc i64 %58 to i16
  %60 = ashr exact i16 %59, 8
  %61 = shl   i64 %57, 8
  %62 = trunc i64 %61 to i16
  %63 = ashr exact i16 %62, 8
  %64 = add  i16 %63, %60
  %65 = icmp slt i16 %64, 127
  %66 = select i1 %65, i16 %64, i16 127
  %67 = icmp sgt i16 %64, -128
  %68 = select i1 %67, i16 %64, i16 -128
  %69 = icmp slt i16 %64, 0
  %70 = select i1 %69, i16 %68, i16 %66
  %71 = trunc i16 %70 to i8
  call void @my.lifetime.start(i64 16, i8* nonnull %20)
  store i64 %55, i64* %21, align 16
  store i64 0, i64* %22, align 8
  %72 = getelementptr inbounds [16 x i8], [16 x i8]* %23, i64 0, i64 2
  store i8 %71, i8* %72, align 2
  %73 = load i64, i64* %21, align 16
  call void @my.lifetime.end(i64 16, i8* nonnull %20)
  %74 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %10, i64 0, i32 0, i64 3
  %75 = load i8, i8* %74, align 1
  %76 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %13, i64 0, i32 0, i64 3
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %75 to i16
  %79 = sext i8 %77 to i16
  %80 = add  i16 %79, %78
  %81 = icmp slt i16 %80, 127
  %82 = select i1 %81, i16 %80, i16 127
  %83 = icmp sgt i16 %80, -128
  %84 = select i1 %83, i16 %80, i16 -128
  %85 = icmp slt i16 %80, 0
  %86 = select i1 %85, i16 %84, i16 %82
  %87 = trunc i16 %86 to i8
  call void @my.lifetime.start(i64 16, i8* nonnull %20)
  store i64 %73, i64* %21, align 16
  store i64 0, i64* %22, align 8
  %88 = getelementptr inbounds [16 x i8], [16 x i8]* %23, i64 0, i64 3
  store i8 %87, i8* %88, align 1
  %89 = load i64, i64* %21, align 16
  call void @my.lifetime.end(i64 16, i8* nonnull %20)
  %90 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %10, i64 0, i32 0, i64 4
  %91 = load i8, i8* %90, align 4
  %92 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %13, i64 0, i32 0, i64 4
  %93 = load i8, i8* %92, align 4
  %94 = sext i8 %91 to i16
  %95 = sext i8 %93 to i16
  %96 = add  i16 %95, %94
  %97 = icmp slt i16 %96, 127
  %98 = select i1 %97, i16 %96, i16 127
  %99 = icmp sgt i16 %96, -128
  %100 = select i1 %99, i16 %96, i16 -128
  %101 = icmp slt i16 %96, 0
  %102 = select i1 %101, i16 %100, i16 %98
  %103 = trunc i16 %102 to i8
  call void @my.lifetime.start(i64 16, i8* nonnull %20)
  store i64 %89, i64* %21, align 16
  store i64 0, i64* %22, align 8
  %104 = getelementptr inbounds [16 x i8], [16 x i8]* %23, i64 0, i64 4
  store i8 %103, i8* %104, align 4
  %105 = load i64, i64* %21, align 16
  call void @my.lifetime.end(i64 16, i8* nonnull %20)
  %106 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %10, i64 0, i32 0, i64 5
  %107 = load i8, i8* %106, align 1
  %108 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %13, i64 0, i32 0, i64 5
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %107 to i16
  %111 = sext i8 %109 to i16
  %112 = add  i16 %111, %110
  %113 = icmp slt i16 %112, 127
  %114 = select i1 %113, i16 %112, i16 127
  %115 = icmp sgt i16 %112, -128
  %116 = select i1 %115, i16 %112, i16 -128
  %117 = icmp slt i16 %112, 0
  %118 = select i1 %117, i16 %116, i16 %114
  %119 = trunc i16 %118 to i8
  call void @my.lifetime.start(i64 16, i8* nonnull %20)
  store i64 %105, i64* %21, align 16
  store i64 0, i64* %22, align 8
  %120 = getelementptr inbounds [16 x i8], [16 x i8]* %23, i64 0, i64 5
  store i8 %119, i8* %120, align 1
  %121 = load i64, i64* %21, align 16
  call void @my.lifetime.end(i64 16, i8* nonnull %20)
  %122 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %10, i64 0, i32 0, i64 6
  %123 = load i8, i8* %122, align 2
  %124 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %13, i64 0, i32 0, i64 6
  %125 = load i8, i8* %124, align 2
  %126 = sext i8 %123 to i16
  %127 = sext i8 %125 to i16
  %128 = add  i16 %127, %126
  %129 = icmp slt i16 %128, 127
  %130 = select i1 %129, i16 %128, i16 127
  %131 = icmp sgt i16 %128, -128
  %132 = select i1 %131, i16 %128, i16 -128
  %133 = icmp slt i16 %128, 0
  %134 = select i1 %133, i16 %132, i16 %130
  %135 = trunc i16 %134 to i8
  call void @my.lifetime.start(i64 16, i8* nonnull %20)
  store i64 %121, i64* %21, align 16
  store i64 0, i64* %22, align 8
  %136 = getelementptr inbounds [16 x i8], [16 x i8]* %23, i64 0, i64 6
  store i8 %135, i8* %136, align 2
  %137 = load i64, i64* %21, align 16
  call void @my.lifetime.end(i64 16, i8* nonnull %20)
  %138 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %10, i64 0, i32 0, i64 7
  %139 = load i8, i8* %138, align 1
  %140 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %13, i64 0, i32 0, i64 7
  %141 = load i8, i8* %140, align 1
  %142 = sext i8 %139 to i16
  %143 = sext i8 %141 to i16
  %144 = add  i16 %143, %142
  %145 = icmp slt i16 %144, 127
  %146 = select i1 %145, i16 %144, i16 127
  %147 = icmp sgt i16 %144, -128
  %148 = select i1 %147, i16 %144, i16 -128
  %149 = icmp slt i16 %144, 0
  %150 = select i1 %149, i16 %148, i16 %146
  %151 = trunc i16 %150 to i8
  call void @my.lifetime.start(i64 16, i8* nonnull %20)
  store i64 %137, i64* %21, align 16
  store i64 0, i64* %22, align 8
  %152 = getelementptr inbounds [16 x i8], [16 x i8]* %23, i64 0, i64 7
  store i8 %151, i8* %152, align 1
  %153 = load i64, i64* %21, align 16
  call void @my.lifetime.end(i64 16, i8* nonnull %20)
  %154 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %9, i64 0, i32 1
  %155 = bitcast i64* %154 to i8*
  %156 = load i8, i8* %155, align 8
  %157 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %12, i64 0, i32 1
  %158 = bitcast i64* %157 to i8*
  %159 = load i8, i8* %158, align 8
  %160 = sext i8 %156 to i16
  %161 = sext i8 %159 to i16
  %162 = add  i16 %161, %160
  %163 = icmp slt i16 %162, 127
  %164 = select i1 %163, i16 %162, i16 127
  %165 = icmp sgt i16 %162, -128
  %166 = select i1 %165, i16 %162, i16 -128
  %167 = icmp slt i16 %162, 0
  %168 = select i1 %167, i16 %166, i16 %164
  %169 = trunc i16 %168 to i8
  call void @my.lifetime.start(i64 16, i8* nonnull %20)
  store i64 %153, i64* %21, align 16
  store i64 0, i64* %22, align 8
  %170 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %7, i64 0, i32 1
  %171 = bitcast i64* %170 to i8*
  store i8 %169, i8* %171, align 8
  %172 = load i64, i64* %22, align 8
  call void @my.lifetime.end(i64 16, i8* nonnull %20)
  %173 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %10, i64 0, i32 0, i64 9
  %174 = load i8, i8* %173, align 1
  %175 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %13, i64 0, i32 0, i64 9
  %176 = load i8, i8* %175, align 1
  %177 = sext i8 %174 to i16
  %178 = sext i8 %176 to i16
  %179 = add  i16 %178, %177
  %180 = icmp slt i16 %179, 127
  %181 = select i1 %180, i16 %179, i16 127
  %182 = icmp sgt i16 %179, -128
  %183 = select i1 %182, i16 %179, i16 -128
  %184 = icmp slt i16 %179, 0
  %185 = select i1 %184, i16 %183, i16 %181
  %186 = trunc i16 %185 to i8
  call void @my.lifetime.start(i64 16, i8* nonnull %20)
  store i64 %153, i64* %21, align 16
  store i64 %172, i64* %22, align 8
  %187 = getelementptr inbounds [16 x i8], [16 x i8]* %23, i64 0, i64 9
  store i8 %186, i8* %187, align 1
  %188 = load i64, i64* %22, align 8
  call void @my.lifetime.end(i64 16, i8* nonnull %20)
  %189 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %10, i64 0, i32 0, i64 10
  %190 = load i8, i8* %189, align 2
  %191 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %13, i64 0, i32 0, i64 10
  %192 = load i8, i8* %191, align 2
  %193 = sext i8 %190 to i16
  %194 = sext i8 %192 to i16
  %195 = add  i16 %194, %193
  %196 = icmp slt i16 %195, 127
  %197 = select i1 %196, i16 %195, i16 127
  %198 = icmp sgt i16 %195, -128
  %199 = select i1 %198, i16 %195, i16 -128
  %200 = icmp slt i16 %195, 0
  %201 = select i1 %200, i16 %199, i16 %197
  %202 = trunc i16 %201 to i8
  call void @my.lifetime.start(i64 16, i8* nonnull %20)
  store i64 %153, i64* %21, align 16
  store i64 %188, i64* %22, align 8
  %203 = getelementptr inbounds [16 x i8], [16 x i8]* %23, i64 0, i64 10
  store i8 %202, i8* %203, align 2
  %204 = load i64, i64* %22, align 8
  call void @my.lifetime.end(i64 16, i8* nonnull %20)
  %205 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %10, i64 0, i32 0, i64 11
  %206 = load i8, i8* %205, align 1
  %207 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %13, i64 0, i32 0, i64 11
  %208 = load i8, i8* %207, align 1
  %209 = sext i8 %206 to i16
  %210 = sext i8 %208 to i16
  %211 = add  i16 %210, %209
  %212 = icmp slt i16 %211, 127
  %213 = select i1 %212, i16 %211, i16 127
  %214 = icmp sgt i16 %211, -128
  %215 = select i1 %214, i16 %211, i16 -128
  %216 = icmp slt i16 %211, 0
  %217 = select i1 %216, i16 %215, i16 %213
  %218 = trunc i16 %217 to i8
  call void @my.lifetime.start(i64 16, i8* nonnull %20)
  store i64 %153, i64* %21, align 16
  store i64 %204, i64* %22, align 8
  %219 = getelementptr inbounds [16 x i8], [16 x i8]* %23, i64 0, i64 11
  store i8 %218, i8* %219, align 1
  %220 = load i64, i64* %22, align 8
  call void @my.lifetime.end(i64 16, i8* nonnull %20)
  %221 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %10, i64 0, i32 0, i64 12
  %222 = load i8, i8* %221, align 4
  %223 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %13, i64 0, i32 0, i64 12
  %224 = load i8, i8* %223, align 4
  %225 = sext i8 %222 to i16
  %226 = sext i8 %224 to i16
  %227 = add  i16 %226, %225
  %228 = icmp slt i16 %227, 127
  %229 = select i1 %228, i16 %227, i16 127
  %230 = icmp sgt i16 %227, -128
  %231 = select i1 %230, i16 %227, i16 -128
  %232 = icmp slt i16 %227, 0
  %233 = select i1 %232, i16 %231, i16 %229
  %234 = trunc i16 %233 to i8
  call void @my.lifetime.start(i64 16, i8* nonnull %20)
  store i64 %153, i64* %21, align 16
  store i64 %220, i64* %22, align 8
  %235 = getelementptr inbounds [16 x i8], [16 x i8]* %23, i64 0, i64 12
  store i8 %234, i8* %235, align 4
  %236 = load i64, i64* %22, align 8
  call void @my.lifetime.end(i64 16, i8* nonnull %20)
  %237 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %10, i64 0, i32 0, i64 13
  %238 = load i8, i8* %237, align 1
  %239 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %13, i64 0, i32 0, i64 13
  %240 = load i8, i8* %239, align 1
  %241 = sext i8 %238 to i16
  %242 = sext i8 %240 to i16
  %243 = add  i16 %242, %241
  %244 = icmp slt i16 %243, 127
  %245 = select i1 %244, i16 %243, i16 127
  %246 = icmp sgt i16 %243, -128
  %247 = select i1 %246, i16 %243, i16 -128
  %248 = icmp slt i16 %243, 0
  %249 = select i1 %248, i16 %247, i16 %245
  %250 = trunc i16 %249 to i8
  call void @my.lifetime.start(i64 16, i8* nonnull %20)
  store i64 %153, i64* %21, align 16
  store i64 %236, i64* %22, align 8
  %251 = getelementptr inbounds [16 x i8], [16 x i8]* %23, i64 0, i64 13
  store i8 %250, i8* %251, align 1
  %252 = load i64, i64* %22, align 8
  call void @my.lifetime.end(i64 16, i8* nonnull %20)
  %253 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %10, i64 0, i32 0, i64 14
  %254 = load i8, i8* %253, align 2
  %255 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %13, i64 0, i32 0, i64 14
  %256 = load i8, i8* %255, align 2
  %257 = sext i8 %254 to i16
  %258 = sext i8 %256 to i16
  %259 = add  i16 %258, %257
  %260 = icmp slt i16 %259, 127
  %261 = select i1 %260, i16 %259, i16 127
  %262 = icmp sgt i16 %259, -128
  %263 = select i1 %262, i16 %259, i16 -128
  %264 = icmp slt i16 %259, 0
  %265 = select i1 %264, i16 %263, i16 %261
  %266 = trunc i16 %265 to i8
  call void @my.lifetime.start(i64 16, i8* nonnull %20)
  store i64 %153, i64* %21, align 16
  store i64 %252, i64* %22, align 8
  %267 = getelementptr inbounds [16 x i8], [16 x i8]* %23, i64 0, i64 14
  store i8 %266, i8* %267, align 2
  %268 = load i64, i64* %22, align 8
  call void @my.lifetime.end(i64 16, i8* nonnull %20)
  %269 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %10, i64 0, i32 0, i64 15
  %270 = load i8, i8* %269, align 1
  %271 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %13, i64 0, i32 0, i64 15
  %272 = load i8, i8* %271, align 1
  %273 = sext i8 %270 to i16
  %274 = sext i8 %272 to i16
  %275 = add  i16 %274, %273
  %276 = icmp slt i16 %275, 127
  %277 = select i1 %276, i16 %275, i16 127
  %278 = icmp sgt i16 %275, -128
  %279 = select i1 %278, i16 %275, i16 -128
  %280 = icmp slt i16 %275, 0
  %281 = select i1 %280, i16 %279, i16 %277
  %282 = trunc i16 %281 to i8
  call void @my.lifetime.start(i64 16, i8* nonnull %20)
  store i64 %153, i64* %21, align 16
  store i64 %268, i64* %22, align 8
  %283 = getelementptr inbounds [16 x i8], [16 x i8]* %23, i64 0, i64 15
  store i8 %282, i8* %283, align 1
  %284 = load i64, i64* %22, align 8
  call void @my.lifetime.end(i64 16, i8* nonnull %20)
  %285 = lshr i64 %153, 8
  %286 = lshr i64 %153, 16
  %287 = lshr i64 %153, 24
  %288 = lshr i64 %153, 32
  %289 = lshr i64 %153, 40
  %290 = lshr i64 %153, 48
  %291 = lshr i64 %153, 56
  %292 = trunc i64 %153 to i8
  %293 = trunc i64 %285 to i8
  %294 = trunc i64 %286 to i8
  %295 = trunc i64 %287 to i8
  %296 = trunc i64 %288 to i8
  %297 = trunc i64 %289 to i8
  %298 = trunc i64 %290 to i8
  %299 = trunc i64 %291 to i8
  store i8 %292, i8* %2, align 1
  %300 = getelementptr inbounds i8, i8* %2, i64 1
  store i8 %293, i8* %300, align 1
  %301 = getelementptr inbounds i8, i8* %2, i64 2
  store i8 %294, i8* %301, align 1
  %302 = getelementptr inbounds i8, i8* %2, i64 3
  store i8 %295, i8* %302, align 1
  %303 = getelementptr inbounds i8, i8* %2, i64 4
  store i8 %296, i8* %303, align 1
  %304 = getelementptr inbounds i8, i8* %2, i64 5
  store i8 %297, i8* %304, align 1
  %305 = getelementptr inbounds i8, i8* %2, i64 6
  store i8 %298, i8* %305, align 1
  %306 = getelementptr inbounds i8, i8* %2, i64 7
  store i8 %299, i8* %306, align 1
  %307 = trunc i64 %284 to i8
  %308 = getelementptr inbounds i8, i8* %2, i64 8
  store i8 %307, i8* %308, align 1
  %309 = lshr i64 %284, 8
  %310 = trunc i64 %309 to i8
  %311 = getelementptr inbounds i8, i8* %2, i64 9
  store i8 %310, i8* %311, align 1
  %312 = lshr i64 %284, 16
  %313 = trunc i64 %312 to i8
  %314 = getelementptr inbounds i8, i8* %2, i64 10
  store i8 %313, i8* %314, align 1
  %315 = lshr i64 %284, 24
  %316 = trunc i64 %315 to i8
  %317 = getelementptr inbounds i8, i8* %2, i64 11
  store i8 %316, i8* %317, align 1
  %318 = lshr i64 %284, 32
  %319 = trunc i64 %318 to i8
  %320 = getelementptr inbounds i8, i8* %2, i64 12
  store i8 %319, i8* %320, align 1
  %321 = lshr i64 %284, 40
  %322 = trunc i64 %321 to i8
  %323 = getelementptr inbounds i8, i8* %2, i64 13
  store i8 %322, i8* %323, align 1
  %324 = lshr i64 %284, 48
  %325 = trunc i64 %324 to i8
  %326 = getelementptr inbounds i8, i8* %2, i64 14
  store i8 %325, i8* %326, align 1
  %327 = lshr i64 %284, 56
  %328 = trunc i64 %327 to i8
  %329 = getelementptr inbounds i8, i8* %2, i64 15
  store i8 %328, i8* %329, align 1
  call void @my.lifetime.end(i64 16, i8* nonnull %17) #22
  call void @my.lifetime.end(i64 16, i8* nonnull %14) #22
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_paddsb_xmm_xmm(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L6PADDSBI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
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

  %call = call %struct.Memory* @routine_paddsb_xmm_xmm(%struct.State* %state, i64 0, %struct.Memory* %mem)
  ret i32 0
}