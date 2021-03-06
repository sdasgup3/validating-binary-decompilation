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
%"class.(anonymous namespace)__BitMatrix" = type { %"class.std__bitset", [16 x [16 x i8]] }
%"class.std__bitset" = type { %struct.uint64v4_t }
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

define %struct.Memory* @__remill_atomic_begin(%struct.Memory*) {
  ret %struct.Memory* %0
}

define %struct.Memory* @__remill_atomic_end(%struct.Memory*) {
  ret %struct.Memory* %0
}


define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5PAVGWI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i8* nocapture readonly) #0 {
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
  %26 = and i32 %25, 65535
  %27 = extractelement <2 x i64> %19, i32 0
  %28 = trunc i64 %27 to i32
  %29 = and i32 %28, 65535
  %30 = add   i32 %26, 1
  %31 = add   i32 %30, %29
  %32 = lshr i32 %31, 1
  %33 = trunc i32 %32 to i16
  call void @my.lifetime.start(i64 16, i8* nonnull %20)
  store <2 x i64> zeroinitializer, <2 x i64>* %6, align 16
  %34 = bitcast <2 x i64>* %6 to i16*
  store i16 %33, i16* %34, align 16
  %35 = load i64, i64* %21, align 16
  call void @my.lifetime.end(i64 16, i8* nonnull %20)
  %36 = lshr i64 %24, 16
  %37 = trunc i64 %36 to i32
  %38 = and i32 %37, 65535
  %39 = lshr i64 %27, 16
  %40 = trunc i64 %39 to i32
  %41 = and i32 %40, 65535
  %42 = add   i32 %38, 1
  %43 = add   i32 %42, %41
  %44 = lshr i32 %43, 1
  %45 = trunc i32 %44 to i16
  call void @my.lifetime.start(i64 16, i8* nonnull %20)
  store i64 %35, i64* %21, align 16
  store i64 0, i64* %22, align 8
  %46 = getelementptr inbounds [8 x i16], [8 x i16]* %23, i64 0, i64 1
  store i16 %45, i16* %46, align 2
  %47 = load i64, i64* %21, align 16
  call void @my.lifetime.end(i64 16, i8* nonnull %20)
  %48 = lshr i64 %24, 32
  %49 = trunc i64 %48 to i32
  %50 = and i32 %49, 65535
  %51 = lshr i64 %27, 32
  %52 = trunc i64 %51 to i32
  %53 = and i32 %52, 65535
  %54 = add   i32 %50, 1
  %55 = add   i32 %54, %53
  %56 = lshr i32 %55, 1
  %57 = trunc i32 %56 to i16
  call void @my.lifetime.start(i64 16, i8* nonnull %20)
  store i64 %47, i64* %21, align 16
  store i64 0, i64* %22, align 8
  %58 = getelementptr inbounds [8 x i16], [8 x i16]* %23, i64 0, i64 2
  store i16 %57, i16* %58, align 4
  %59 = load i64, i64* %21, align 16
  call void @my.lifetime.end(i64 16, i8* nonnull %20)
  %60 = getelementptr inbounds %struct.uint16v8_t, %struct.uint16v8_t* %10, i64 0, i32 0, i64 3
  %61 = load i16, i16* %60, align 2
  %62 = zext i16 %61 to i32
  %63 = lshr i64 %27, 48
  %64 = trunc i64 %63 to i32
  %65 = add   i32 %62, 1
  %66 = add   i32 %65, %64
  %67 = lshr i32 %66, 1
  %68 = trunc i32 %67 to i16
  call void @my.lifetime.start(i64 16, i8* nonnull %20)
  store i64 %59, i64* %21, align 16
  store i64 0, i64* %22, align 8
  %69 = getelementptr inbounds [8 x i16], [8 x i16]* %23, i64 0, i64 3
  store i16 %68, i16* %69, align 2
  %70 = load i64, i64* %21, align 16
  call void @my.lifetime.end(i64 16, i8* nonnull %20)
  %71 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %9, i64 0, i32 1
  %72 = bitcast i64* %71 to i16*
  %73 = load i16, i16* %72, align 8
  %74 = zext i16 %73 to i32
  %75 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %12, i64 0, i32 1
  %76 = bitcast i64* %75 to i16*
  %77 = load i16, i16* %76, align 8
  %78 = zext i16 %77 to i32
  %79 = add   i32 %74, 1
  %80 = add   i32 %79, %78
  %81 = lshr i32 %80, 1
  %82 = trunc i32 %81 to i16
  call void @my.lifetime.start(i64 16, i8* nonnull %20)
  store i64 %70, i64* %21, align 16
  store i64 0, i64* %22, align 8
  %83 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %7, i64 0, i32 1
  %84 = bitcast i64* %83 to i16*
  store i16 %82, i16* %84, align 8
  %85 = load i64, i64* %22, align 8
  call void @my.lifetime.end(i64 16, i8* nonnull %20)
  %86 = getelementptr inbounds %struct.uint16v8_t, %struct.uint16v8_t* %10, i64 0, i32 0, i64 5
  %87 = load i16, i16* %86, align 2
  %88 = zext i16 %87 to i32
  %89 = getelementptr inbounds %struct.uint16v8_t, %struct.uint16v8_t* %13, i64 0, i32 0, i64 5
  %90 = load i16, i16* %89, align 2
  %91 = zext i16 %90 to i32
  %92 = add   i32 %88, 1
  %93 = add   i32 %92, %91
  %94 = lshr i32 %93, 1
  %95 = trunc i32 %94 to i16
  call void @my.lifetime.start(i64 16, i8* nonnull %20)
  store i64 %70, i64* %21, align 16
  store i64 %85, i64* %22, align 8
  %96 = getelementptr inbounds [8 x i16], [8 x i16]* %23, i64 0, i64 5
  store i16 %95, i16* %96, align 2
  %97 = load i64, i64* %22, align 8
  call void @my.lifetime.end(i64 16, i8* nonnull %20)
  %98 = getelementptr inbounds %struct.uint16v8_t, %struct.uint16v8_t* %10, i64 0, i32 0, i64 6
  %99 = load i16, i16* %98, align 4
  %100 = zext i16 %99 to i32
  %101 = getelementptr inbounds %struct.uint16v8_t, %struct.uint16v8_t* %13, i64 0, i32 0, i64 6
  %102 = load i16, i16* %101, align 4
  %103 = zext i16 %102 to i32
  %104 = add   i32 %100, 1
  %105 = add   i32 %104, %103
  %106 = lshr i32 %105, 1
  %107 = trunc i32 %106 to i16
  call void @my.lifetime.start(i64 16, i8* nonnull %20)
  store i64 %70, i64* %21, align 16
  store i64 %97, i64* %22, align 8
  %108 = getelementptr inbounds [8 x i16], [8 x i16]* %23, i64 0, i64 6
  store i16 %107, i16* %108, align 4
  %109 = load i64, i64* %22, align 8
  call void @my.lifetime.end(i64 16, i8* nonnull %20)
  %110 = getelementptr inbounds %struct.uint16v8_t, %struct.uint16v8_t* %10, i64 0, i32 0, i64 7
  %111 = load i16, i16* %110, align 2
  %112 = zext i16 %111 to i32
  %113 = getelementptr inbounds %struct.uint16v8_t, %struct.uint16v8_t* %13, i64 0, i32 0, i64 7
  %114 = load i16, i16* %113, align 2
  %115 = zext i16 %114 to i32
  %116 = add   i32 %112, 1
  %117 = add   i32 %116, %115
  %118 = lshr i32 %117, 1
  %119 = trunc i32 %118 to i16
  call void @my.lifetime.start(i64 16, i8* nonnull %20)
  store i64 %70, i64* %21, align 16
  store i64 %109, i64* %22, align 8
  %120 = getelementptr inbounds [8 x i16], [8 x i16]* %23, i64 0, i64 7
  store i16 %119, i16* %120, align 2
  %121 = load i64, i64* %22, align 8
  call void @my.lifetime.end(i64 16, i8* nonnull %20)
  %122 = lshr i64 %70, 16
  %123 = lshr i64 %70, 32
  %124 = lshr i64 %70, 48
  %125 = trunc i64 %70 to i16
  %126 = trunc i64 %122 to i16
  %127 = trunc i64 %123 to i16
  %128 = trunc i64 %124 to i16
  %129 = bitcast i8* %2 to i16*
  store i16 %125, i16* %129, align 1
  %130 = getelementptr inbounds i8, i8* %2, i64 2
  %131 = bitcast i8* %130 to i16*
  store i16 %126, i16* %131, align 1
  %132 = getelementptr inbounds i8, i8* %2, i64 4
  %133 = bitcast i8* %132 to i16*
  store i16 %127, i16* %133, align 1
  %134 = getelementptr inbounds i8, i8* %2, i64 6
  %135 = bitcast i8* %134 to i16*
  store i16 %128, i16* %135, align 1
  %136 = trunc i64 %121 to i16
  %137 = getelementptr inbounds i8, i8* %2, i64 8
  %138 = bitcast i8* %137 to i16*
  store i16 %136, i16* %138, align 1
  %139 = lshr i64 %121, 16
  %140 = trunc i64 %139 to i16
  %141 = getelementptr inbounds i8, i8* %2, i64 10
  %142 = bitcast i8* %141 to i16*
  store i16 %140, i16* %142, align 1
  %143 = lshr i64 %121, 32
  %144 = trunc i64 %143 to i16
  %145 = getelementptr inbounds i8, i8* %2, i64 12
  %146 = bitcast i8* %145 to i16*
  store i16 %144, i16* %146, align 1
  %147 = lshr i64 %121, 48
  %148 = trunc i64 %147 to i16
  %149 = getelementptr inbounds i8, i8* %2, i64 14
  %150 = bitcast i8* %149 to i16*
  store i16 %148, i16* %150, align 1
  call void @my.lifetime.end(i64 16, i8* nonnull %17) #22
  call void @my.lifetime.end(i64 16, i8* nonnull %14) #22
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_pavgw_xmm_xmm(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_530:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std__bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std__bitset"* %YMM1 to i8*
  %11 = bitcast %"class.std__bitset"* %YMM1 to i8*
  %12 = bitcast %union.vec128_t* %XMM2 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5PAVGWI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
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

  %call = call %struct.Memory* @routine_pavgw_xmm_xmm(%struct.State* %state, i64 0, %struct.Memory* %mem)
  ret i32 0
}