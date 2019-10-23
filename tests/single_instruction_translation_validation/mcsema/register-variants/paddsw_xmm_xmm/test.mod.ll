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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L6PADDSWI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i8* nocapture readonly) #0 {
  %6 = alloca <2 x i64>, align 16
  %7 = bitcast <2 x i64>* %6 to { i64, i64 }*
  %8 = alloca <2 x i64>, align 16
  %9 = bitcast <2 x i64>* %8 to { i64, i64 }*
  %10 = bitcast <2 x i64>* %8 to %struct.uint16v8_t*
  %11 = alloca <2 x i64>, align 16
  %12 = bitcast <2 x i64>* %11 to { i64, i64 }*
  %13 = bitcast <2 x i64>* %11 to %struct.uint16v8_t*
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
  %25 = trunc i64 %24 to i32
  %26 = extractelement <2 x i64> %19, i32 0
  %27 = trunc i64 %26 to i32
  %28 = shl i32 %25, 16
  %29 = ashr exact i32 %28, 16
  %30 = shl i32 %27, 16
  %31 = ashr exact i32 %30, 16
  %32 = add  i32 %31, %29
  %33 = icmp slt i32 %32, 32767
  %34 = select i1 %33, i32 %32, i32 32767
  %35 = icmp sgt i32 %32, -32768
  %36 = select i1 %35, i32 %32, i32 -32768
  %37 = icmp slt i32 %32, 0
  %38 = select i1 %37, i32 %36, i32 %34
  %39 = trunc i32 %38 to i16
  call void @my.lifetime.start(i64 16, i8* nonnull %20)
  store <2 x i64> zeroinitializer, <2 x i64>* %6, align 16
  %40 = bitcast <2 x i64>* %6 to i16*
  store i16 %39, i16* %40, align 16
  %41 = load i64, i64* %21, align 16
  call void @my.lifetime.end(i64 16, i8* nonnull %20)
  %42 = trunc i64 %24 to i32
  %43 = ashr i32 %42, 16
  %44 = trunc i64 %26 to i32
  %45 = ashr i32 %44, 16
  %46 = add  i32 %45, %43
  %47 = icmp slt i32 %46, 32767
  %48 = select i1 %47, i32 %46, i32 32767
  %49 = icmp sgt i32 %46, -32768
  %50 = select i1 %49, i32 %46, i32 -32768
  %51 = icmp slt i32 %46, 0
  %52 = select i1 %51, i32 %50, i32 %48
  %53 = trunc i32 %52 to i16
  call void @my.lifetime.start(i64 16, i8* nonnull %20)
  store i64 %41, i64* %21, align 16
  store i64 0, i64* %22, align 8
  %54 = getelementptr inbounds [8 x i16], [8 x i16]* %23, i64 0, i64 1
  store i16 %53, i16* %54, align 2
  %55 = load i64, i64* %21, align 16
  call void @my.lifetime.end(i64 16, i8* nonnull %20)
  %56 = lshr i64 %24, 32
  %57 = lshr i64 %26, 32
  %58 = shl   i64 %56, 16
  %59 = trunc i64 %58 to i32
  %60 = ashr exact i32 %59, 16
  %61 = shl   i64 %57, 16
  %62 = trunc i64 %61 to i32
  %63 = ashr exact i32 %62, 16
  %64 = add  i32 %63, %60
  %65 = icmp slt i32 %64, 32767
  %66 = select i1 %65, i32 %64, i32 32767
  %67 = icmp sgt i32 %64, -32768
  %68 = select i1 %67, i32 %64, i32 -32768
  %69 = icmp slt i32 %64, 0
  %70 = select i1 %69, i32 %68, i32 %66
  %71 = trunc i32 %70 to i16
  call void @my.lifetime.start(i64 16, i8* nonnull %20)
  store i64 %55, i64* %21, align 16
  store i64 0, i64* %22, align 8
  %72 = getelementptr inbounds [8 x i16], [8 x i16]* %23, i64 0, i64 2
  store i16 %71, i16* %72, align 4
  %73 = load i64, i64* %21, align 16
  call void @my.lifetime.end(i64 16, i8* nonnull %20)
  %74 = getelementptr inbounds %struct.uint16v8_t, %struct.uint16v8_t* %10, i64 0, i32 0, i64 3
  %75 = load i16, i16* %74, align 2
  %76 = getelementptr inbounds %struct.uint16v8_t, %struct.uint16v8_t* %13, i64 0, i32 0, i64 3
  %77 = load i16, i16* %76, align 2
  %78 = sext i16 %75 to i32
  %79 = sext i16 %77 to i32
  %80 = add  i32 %79, %78
  %81 = icmp slt i32 %80, 32767
  %82 = select i1 %81, i32 %80, i32 32767
  %83 = icmp sgt i32 %80, -32768
  %84 = select i1 %83, i32 %80, i32 -32768
  %85 = icmp slt i32 %80, 0
  %86 = select i1 %85, i32 %84, i32 %82
  %87 = trunc i32 %86 to i16
  call void @my.lifetime.start(i64 16, i8* nonnull %20)
  store i64 %73, i64* %21, align 16
  store i64 0, i64* %22, align 8
  %88 = getelementptr inbounds [8 x i16], [8 x i16]* %23, i64 0, i64 3
  store i16 %87, i16* %88, align 2
  %89 = load i64, i64* %21, align 16
  call void @my.lifetime.end(i64 16, i8* nonnull %20)
  %90 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %9, i64 0, i32 1
  %91 = bitcast i64* %90 to i16*
  %92 = load i16, i16* %91, align 8
  %93 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %12, i64 0, i32 1
  %94 = bitcast i64* %93 to i16*
  %95 = load i16, i16* %94, align 8
  %96 = sext i16 %92 to i32
  %97 = sext i16 %95 to i32
  %98 = add  i32 %97, %96
  %99 = icmp slt i32 %98, 32767
  %100 = select i1 %99, i32 %98, i32 32767
  %101 = icmp sgt i32 %98, -32768
  %102 = select i1 %101, i32 %98, i32 -32768
  %103 = icmp slt i32 %98, 0
  %104 = select i1 %103, i32 %102, i32 %100
  %105 = trunc i32 %104 to i16
  call void @my.lifetime.start(i64 16, i8* nonnull %20)
  store i64 %89, i64* %21, align 16
  store i64 0, i64* %22, align 8
  %106 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %7, i64 0, i32 1
  %107 = bitcast i64* %106 to i16*
  store i16 %105, i16* %107, align 8
  %108 = load i64, i64* %22, align 8
  call void @my.lifetime.end(i64 16, i8* nonnull %20)
  %109 = getelementptr inbounds %struct.uint16v8_t, %struct.uint16v8_t* %10, i64 0, i32 0, i64 5
  %110 = load i16, i16* %109, align 2
  %111 = getelementptr inbounds %struct.uint16v8_t, %struct.uint16v8_t* %13, i64 0, i32 0, i64 5
  %112 = load i16, i16* %111, align 2
  %113 = sext i16 %110 to i32
  %114 = sext i16 %112 to i32
  %115 = add  i32 %114, %113
  %116 = icmp slt i32 %115, 32767
  %117 = select i1 %116, i32 %115, i32 32767
  %118 = icmp sgt i32 %115, -32768
  %119 = select i1 %118, i32 %115, i32 -32768
  %120 = icmp slt i32 %115, 0
  %121 = select i1 %120, i32 %119, i32 %117
  %122 = trunc i32 %121 to i16
  call void @my.lifetime.start(i64 16, i8* nonnull %20)
  store i64 %89, i64* %21, align 16
  store i64 %108, i64* %22, align 8
  %123 = getelementptr inbounds [8 x i16], [8 x i16]* %23, i64 0, i64 5
  store i16 %122, i16* %123, align 2
  %124 = load i64, i64* %22, align 8
  call void @my.lifetime.end(i64 16, i8* nonnull %20)
  %125 = getelementptr inbounds %struct.uint16v8_t, %struct.uint16v8_t* %10, i64 0, i32 0, i64 6
  %126 = load i16, i16* %125, align 4
  %127 = getelementptr inbounds %struct.uint16v8_t, %struct.uint16v8_t* %13, i64 0, i32 0, i64 6
  %128 = load i16, i16* %127, align 4
  %129 = sext i16 %126 to i32
  %130 = sext i16 %128 to i32
  %131 = add  i32 %130, %129
  %132 = icmp slt i32 %131, 32767
  %133 = select i1 %132, i32 %131, i32 32767
  %134 = icmp sgt i32 %131, -32768
  %135 = select i1 %134, i32 %131, i32 -32768
  %136 = icmp slt i32 %131, 0
  %137 = select i1 %136, i32 %135, i32 %133
  %138 = trunc i32 %137 to i16
  call void @my.lifetime.start(i64 16, i8* nonnull %20)
  store i64 %89, i64* %21, align 16
  store i64 %124, i64* %22, align 8
  %139 = getelementptr inbounds [8 x i16], [8 x i16]* %23, i64 0, i64 6
  store i16 %138, i16* %139, align 4
  %140 = load i64, i64* %22, align 8
  call void @my.lifetime.end(i64 16, i8* nonnull %20)
  %141 = getelementptr inbounds %struct.uint16v8_t, %struct.uint16v8_t* %10, i64 0, i32 0, i64 7
  %142 = load i16, i16* %141, align 2
  %143 = getelementptr inbounds %struct.uint16v8_t, %struct.uint16v8_t* %13, i64 0, i32 0, i64 7
  %144 = load i16, i16* %143, align 2
  %145 = sext i16 %142 to i32
  %146 = sext i16 %144 to i32
  %147 = add  i32 %146, %145
  %148 = icmp slt i32 %147, 32767
  %149 = select i1 %148, i32 %147, i32 32767
  %150 = icmp sgt i32 %147, -32768
  %151 = select i1 %150, i32 %147, i32 -32768
  %152 = icmp slt i32 %147, 0
  %153 = select i1 %152, i32 %151, i32 %149
  %154 = trunc i32 %153 to i16
  call void @my.lifetime.start(i64 16, i8* nonnull %20)
  store i64 %89, i64* %21, align 16
  store i64 %140, i64* %22, align 8
  %155 = getelementptr inbounds [8 x i16], [8 x i16]* %23, i64 0, i64 7
  store i16 %154, i16* %155, align 2
  %156 = load i64, i64* %22, align 8
  call void @my.lifetime.end(i64 16, i8* nonnull %20)
  %157 = lshr i64 %89, 16
  %158 = lshr i64 %89, 32
  %159 = lshr i64 %89, 48
  %160 = trunc i64 %89 to i16
  %161 = trunc i64 %157 to i16
  %162 = trunc i64 %158 to i16
  %163 = trunc i64 %159 to i16
  %164 = bitcast i8* %2 to i16*
  store i16 %160, i16* %164, align 1
  %165 = getelementptr inbounds i8, i8* %2, i64 2
  %166 = bitcast i8* %165 to i16*
  store i16 %161, i16* %166, align 1
  %167 = getelementptr inbounds i8, i8* %2, i64 4
  %168 = bitcast i8* %167 to i16*
  store i16 %162, i16* %168, align 1
  %169 = getelementptr inbounds i8, i8* %2, i64 6
  %170 = bitcast i8* %169 to i16*
  store i16 %163, i16* %170, align 1
  %171 = trunc i64 %156 to i16
  %172 = getelementptr inbounds i8, i8* %2, i64 8
  %173 = bitcast i8* %172 to i16*
  store i16 %171, i16* %173, align 1
  %174 = lshr i64 %156, 16
  %175 = trunc i64 %174 to i16
  %176 = getelementptr inbounds i8, i8* %2, i64 10
  %177 = bitcast i8* %176 to i16*
  store i16 %175, i16* %177, align 1
  %178 = lshr i64 %156, 32
  %179 = trunc i64 %178 to i16
  %180 = getelementptr inbounds i8, i8* %2, i64 12
  %181 = bitcast i8* %180 to i16*
  store i16 %179, i16* %181, align 1
  %182 = lshr i64 %156, 48
  %183 = trunc i64 %182 to i16
  %184 = getelementptr inbounds i8, i8* %2, i64 14
  %185 = bitcast i8* %184 to i16*
  store i16 %183, i16* %185, align 1
  call void @my.lifetime.end(i64 16, i8* nonnull %17) #22
  call void @my.lifetime.end(i64 16, i8* nonnull %14) #22
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_paddsw_xmm_xmm(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L6PADDSWI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
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

  %call = call %struct.Memory* @routine_paddsw_xmm_xmm(%struct.State* %state, i64 0, %struct.Memory* %mem)
  ret i32 0
}