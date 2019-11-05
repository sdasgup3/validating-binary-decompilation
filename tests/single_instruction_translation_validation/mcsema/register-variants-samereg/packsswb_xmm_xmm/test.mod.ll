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


define internal %struct.Memory* @_ZN12_GLOBAL__N_1L8PACKSSWBI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i8* nocapture readonly) #0 {
  %6 = alloca <2 x i64>, align 16
  %7 = bitcast <2 x i64>* %6 to { i64, i64 }*
  %8 = alloca { i64, i64 }, align 8
  %9 = alloca <2 x i64>, align 16
  %10 = bitcast <2 x i64>* %9 to { i64, i64 }*
  %11 = bitcast <2 x i64>* %9 to %struct.uint16v8_t*
  %12 = alloca <2 x i64>, align 16
  %13 = bitcast <2 x i64>* %12 to { i64, i64 }*
  %14 = bitcast <2 x i64>* %9 to i8*
  call void @my.lifetime.start(i64 16, i8* nonnull %14) #22
  %15 = bitcast i8* %3 to <2 x i64>*
  %16 = load <2 x i64>, <2 x i64>* %15, align 1
  store <2 x i64> %16, <2 x i64>* %9, align 16
  %17 = bitcast <2 x i64>* %12 to i8*
  call void @my.lifetime.start(i64 16, i8* nonnull %17) #22
  %18 = bitcast i8* %4 to <2 x i64>*
  %19 = load <2 x i64>, <2 x i64>* %18, align 1
  store <2 x i64> %19, <2 x i64>* %12, align 16
  %20 = bitcast <2 x i64>* %6 to i8*
  %21 = getelementptr inbounds <2 x i64>, <2 x i64>* %6, i64 0, i64 0
  %22 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %7, i64 0, i32 1
  %23 = bitcast <2 x i64>* %6 to [16 x i8]*
  %24 = extractelement <2 x i64> %16, i32 0
  %25 = trunc i64 %24 to i16
  %26 = icmp slt i16 %25, 127
  %27 = select i1 %26, i16 %25, i16 127
  %28 = trunc i16 %27 to i8
  %29 = icmp slt i16 %25, -128
  %30 = select i1 %29, i8 -128, i8 %28
  call void @my.lifetime.start(i64 16, i8* nonnull %20)
  store <2 x i64> zeroinitializer, <2 x i64>* %6, align 16
  %31 = bitcast <2 x i64>* %6 to i8*
  store i8 %30, i8* %31, align 16
  %32 = load i64, i64* %21, align 16
  call void @my.lifetime.end(i64 16, i8* nonnull %20)
  %33 = lshr i64 %24, 16
  %34 = trunc i64 %33 to i16
  %35 = icmp slt i16 %34, 127
  %36 = select i1 %35, i16 %34, i16 127
  %37 = trunc i16 %36 to i8
  %38 = icmp slt i16 %34, -128
  %39 = select i1 %38, i8 -128, i8 %37
  call void @my.lifetime.start(i64 16, i8* nonnull %20)
  store i64 %32, i64* %21, align 16
  store i64 0, i64* %22, align 8
  %40 = getelementptr inbounds [16 x i8], [16 x i8]* %23, i64 0, i64 1
  store i8 %39, i8* %40, align 1
  %41 = load i64, i64* %21, align 16
  call void @my.lifetime.end(i64 16, i8* nonnull %20)
  %42 = lshr i64 %24, 32
  %43 = trunc i64 %42 to i16
  %44 = icmp slt i16 %43, 127
  %45 = select i1 %44, i16 %43, i16 127
  %46 = trunc i16 %45 to i8
  %47 = icmp slt i16 %43, -128
  %48 = select i1 %47, i8 -128, i8 %46
  call void @my.lifetime.start(i64 16, i8* nonnull %20)
  store i64 %41, i64* %21, align 16
  store i64 0, i64* %22, align 8
  %49 = getelementptr inbounds [16 x i8], [16 x i8]* %23, i64 0, i64 2
  store i8 %48, i8* %49, align 2
  %50 = load i64, i64* %21, align 16
  call void @my.lifetime.end(i64 16, i8* nonnull %20)
  %51 = getelementptr inbounds %struct.uint16v8_t, %struct.uint16v8_t* %11, i64 0, i32 0, i64 3
  %52 = load i16, i16* %51, align 2
  %53 = icmp slt i16 %52, 127
  %54 = select i1 %53, i16 %52, i16 127
  %55 = trunc i16 %54 to i8
  %56 = icmp slt i16 %52, -128
  %57 = select i1 %56, i8 -128, i8 %55
  call void @my.lifetime.start(i64 16, i8* nonnull %20)
  store i64 %50, i64* %21, align 16
  store i64 0, i64* %22, align 8
  %58 = getelementptr inbounds [16 x i8], [16 x i8]* %23, i64 0, i64 3
  store i8 %57, i8* %58, align 1
  %59 = load i64, i64* %21, align 16
  call void @my.lifetime.end(i64 16, i8* nonnull %20)
  %60 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %10, i64 0, i32 1
  %61 = bitcast i64* %60 to i16*
  %62 = load i16, i16* %61, align 8
  %63 = icmp slt i16 %62, 127
  %64 = select i1 %63, i16 %62, i16 127
  %65 = trunc i16 %64 to i8
  %66 = icmp slt i16 %62, -128
  %67 = select i1 %66, i8 -128, i8 %65
  call void @my.lifetime.start(i64 16, i8* nonnull %20)
  store i64 %59, i64* %21, align 16
  store i64 0, i64* %22, align 8
  %68 = getelementptr inbounds [16 x i8], [16 x i8]* %23, i64 0, i64 4
  store i8 %67, i8* %68, align 4
  %69 = load i64, i64* %21, align 16
  call void @my.lifetime.end(i64 16, i8* nonnull %20)
  %70 = getelementptr inbounds %struct.uint16v8_t, %struct.uint16v8_t* %11, i64 0, i32 0, i64 5
  %71 = load i16, i16* %70, align 2
  %72 = icmp slt i16 %71, 127
  %73 = select i1 %72, i16 %71, i16 127
  %74 = trunc i16 %73 to i8
  %75 = icmp slt i16 %71, -128
  %76 = select i1 %75, i8 -128, i8 %74
  call void @my.lifetime.start(i64 16, i8* nonnull %20)
  store i64 %69, i64* %21, align 16
  store i64 0, i64* %22, align 8
  %77 = getelementptr inbounds [16 x i8], [16 x i8]* %23, i64 0, i64 5
  store i8 %76, i8* %77, align 1
  %78 = load i64, i64* %21, align 16
  call void @my.lifetime.end(i64 16, i8* nonnull %20)
  %79 = getelementptr inbounds %struct.uint16v8_t, %struct.uint16v8_t* %11, i64 0, i32 0, i64 6
  %80 = load i16, i16* %79, align 4
  %81 = icmp slt i16 %80, 127
  %82 = select i1 %81, i16 %80, i16 127
  %83 = trunc i16 %82 to i8
  %84 = icmp slt i16 %80, -128
  %85 = select i1 %84, i8 -128, i8 %83
  call void @my.lifetime.start(i64 16, i8* nonnull %20)
  store i64 %78, i64* %21, align 16
  store i64 0, i64* %22, align 8
  %86 = getelementptr inbounds [16 x i8], [16 x i8]* %23, i64 0, i64 6
  store i8 %85, i8* %86, align 2
  %87 = load i64, i64* %21, align 16
  call void @my.lifetime.end(i64 16, i8* nonnull %20)
  %88 = getelementptr inbounds %struct.uint16v8_t, %struct.uint16v8_t* %11, i64 0, i32 0, i64 7
  %89 = load i16, i16* %88, align 2
  %90 = icmp slt i16 %89, 127
  %91 = select i1 %90, i16 %89, i16 127
  %92 = trunc i16 %91 to i8
  %93 = icmp slt i16 %89, -128
  %94 = select i1 %93, i8 -128, i8 %92
  call void @my.lifetime.start(i64 16, i8* nonnull %20)
  store i64 %87, i64* %21, align 16
  store i64 0, i64* %22, align 8
  %95 = getelementptr inbounds [16 x i8], [16 x i8]* %23, i64 0, i64 7
  store i8 %94, i8* %95, align 1
  %96 = load i64, i64* %21, align 16
  call void @my.lifetime.end(i64 16, i8* nonnull %20)
  %97 = bitcast <2 x i64>* %12 to %struct.uint16v8_t*
  %98 = bitcast { i64, i64 }* %8 to i8*
  %99 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %8, i64 0, i32 0
  %100 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %8, i64 0, i32 1
  %101 = bitcast { i64, i64 }* %8 to [16 x i8]*
  %102 = bitcast <2 x i64>* %12 to i16*
  %103 = load i16, i16* %102, align 16
  %104 = icmp slt i16 %103, 127
  %105 = select i1 %104, i16 %103, i16 127
  %106 = trunc i16 %105 to i8
  %107 = icmp slt i16 %103, -128
  %108 = select i1 %107, i8 -128, i8 %106
  call void @my.lifetime.start(i64 16, i8* nonnull %98)
  store i64 %96, i64* %99, align 8
  store i64 0, i64* %100, align 8
  %109 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %8, i64 0, i32 1
  %110 = bitcast i64* %109 to i8*
  store i8 %108, i8* %110, align 8
  %111 = load i64, i64* %100, align 8
  call void @my.lifetime.end(i64 16, i8* nonnull %98)
  %112 = getelementptr inbounds %struct.uint16v8_t, %struct.uint16v8_t* %97, i64 0, i32 0, i64 1
  %113 = load i16, i16* %112, align 2
  %114 = icmp slt i16 %113, 127
  %115 = select i1 %114, i16 %113, i16 127
  %116 = trunc i16 %115 to i8
  %117 = icmp slt i16 %113, -128
  %118 = select i1 %117, i8 -128, i8 %116
  call void @my.lifetime.start(i64 16, i8* nonnull %98)
  store i64 %96, i64* %99, align 8
  store i64 %111, i64* %100, align 8
  %119 = getelementptr inbounds [16 x i8], [16 x i8]* %101, i64 0, i64 9
  store i8 %118, i8* %119, align 1
  %120 = load i64, i64* %100, align 8
  call void @my.lifetime.end(i64 16, i8* nonnull %98)
  %121 = getelementptr inbounds %struct.uint16v8_t, %struct.uint16v8_t* %97, i64 0, i32 0, i64 2
  %122 = load i16, i16* %121, align 4
  %123 = icmp slt i16 %122, 127
  %124 = select i1 %123, i16 %122, i16 127
  %125 = trunc i16 %124 to i8
  %126 = icmp slt i16 %122, -128
  %127 = select i1 %126, i8 -128, i8 %125
  call void @my.lifetime.start(i64 16, i8* nonnull %98)
  store i64 %96, i64* %99, align 8
  store i64 %120, i64* %100, align 8
  %128 = getelementptr inbounds [16 x i8], [16 x i8]* %101, i64 0, i64 10
  store i8 %127, i8* %128, align 2
  %129 = load i64, i64* %100, align 8
  call void @my.lifetime.end(i64 16, i8* nonnull %98)
  %130 = getelementptr inbounds %struct.uint16v8_t, %struct.uint16v8_t* %97, i64 0, i32 0, i64 3
  %131 = load i16, i16* %130, align 2
  %132 = icmp slt i16 %131, 127
  %133 = select i1 %132, i16 %131, i16 127
  %134 = trunc i16 %133 to i8
  %135 = icmp slt i16 %131, -128
  %136 = select i1 %135, i8 -128, i8 %134
  call void @my.lifetime.start(i64 16, i8* nonnull %98)
  store i64 %96, i64* %99, align 8
  store i64 %129, i64* %100, align 8
  %137 = getelementptr inbounds [16 x i8], [16 x i8]* %101, i64 0, i64 11
  store i8 %136, i8* %137, align 1
  %138 = load i64, i64* %100, align 8
  call void @my.lifetime.end(i64 16, i8* nonnull %98)
  %139 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %13, i64 0, i32 1
  %140 = bitcast i64* %139 to i16*
  %141 = load i16, i16* %140, align 8
  %142 = icmp slt i16 %141, 127
  %143 = select i1 %142, i16 %141, i16 127
  %144 = trunc i16 %143 to i8
  %145 = icmp slt i16 %141, -128
  %146 = select i1 %145, i8 -128, i8 %144
  call void @my.lifetime.start(i64 16, i8* nonnull %98)
  store i64 %96, i64* %99, align 8
  store i64 %138, i64* %100, align 8
  %147 = getelementptr inbounds [16 x i8], [16 x i8]* %101, i64 0, i64 12
  store i8 %146, i8* %147, align 4
  %148 = load i64, i64* %100, align 8
  call void @my.lifetime.end(i64 16, i8* nonnull %98)
  %149 = getelementptr inbounds %struct.uint16v8_t, %struct.uint16v8_t* %97, i64 0, i32 0, i64 5
  %150 = load i16, i16* %149, align 2
  %151 = icmp slt i16 %150, 127
  %152 = select i1 %151, i16 %150, i16 127
  %153 = trunc i16 %152 to i8
  %154 = icmp slt i16 %150, -128
  %155 = select i1 %154, i8 -128, i8 %153
  call void @my.lifetime.start(i64 16, i8* nonnull %98)
  store i64 %96, i64* %99, align 8
  store i64 %148, i64* %100, align 8
  %156 = getelementptr inbounds [16 x i8], [16 x i8]* %101, i64 0, i64 13
  store i8 %155, i8* %156, align 1
  %157 = load i64, i64* %100, align 8
  call void @my.lifetime.end(i64 16, i8* nonnull %98)
  %158 = getelementptr inbounds %struct.uint16v8_t, %struct.uint16v8_t* %97, i64 0, i32 0, i64 6
  %159 = load i16, i16* %158, align 4
  %160 = icmp slt i16 %159, 127
  %161 = select i1 %160, i16 %159, i16 127
  %162 = trunc i16 %161 to i8
  %163 = icmp slt i16 %159, -128
  %164 = select i1 %163, i8 -128, i8 %162
  call void @my.lifetime.start(i64 16, i8* nonnull %98)
  store i64 %96, i64* %99, align 8
  store i64 %157, i64* %100, align 8
  %165 = getelementptr inbounds [16 x i8], [16 x i8]* %101, i64 0, i64 14
  store i8 %164, i8* %165, align 2
  %166 = load i64, i64* %100, align 8
  call void @my.lifetime.end(i64 16, i8* nonnull %98)
  %167 = getelementptr inbounds %struct.uint16v8_t, %struct.uint16v8_t* %97, i64 0, i32 0, i64 7
  %168 = load i16, i16* %167, align 2
  %169 = icmp slt i16 %168, 127
  %170 = select i1 %169, i16 %168, i16 127
  %171 = trunc i16 %170 to i8
  %172 = icmp slt i16 %168, -128
  %173 = select i1 %172, i8 -128, i8 %171
  call void @my.lifetime.start(i64 16, i8* nonnull %98)
  store i64 %96, i64* %99, align 8
  store i64 %166, i64* %100, align 8
  %174 = getelementptr inbounds [16 x i8], [16 x i8]* %101, i64 0, i64 15
  store i8 %173, i8* %174, align 1
  %175 = load i64, i64* %100, align 8
  call void @my.lifetime.end(i64 16, i8* nonnull %98)
  %176 = lshr i64 %96, 8
  %177 = lshr i64 %96, 16
  %178 = lshr i64 %96, 24
  %179 = lshr i64 %96, 32
  %180 = lshr i64 %96, 40
  %181 = lshr i64 %96, 48
  %182 = lshr i64 %96, 56
  %183 = trunc i64 %96 to i8
  %184 = trunc i64 %176 to i8
  %185 = trunc i64 %177 to i8
  %186 = trunc i64 %178 to i8
  %187 = trunc i64 %179 to i8
  %188 = trunc i64 %180 to i8
  %189 = trunc i64 %181 to i8
  %190 = trunc i64 %182 to i8
  store i8 %183, i8* %2, align 1
  %191 = getelementptr inbounds i8, i8* %2, i64 1
  store i8 %184, i8* %191, align 1
  %192 = getelementptr inbounds i8, i8* %2, i64 2
  store i8 %185, i8* %192, align 1
  %193 = getelementptr inbounds i8, i8* %2, i64 3
  store i8 %186, i8* %193, align 1
  %194 = getelementptr inbounds i8, i8* %2, i64 4
  store i8 %187, i8* %194, align 1
  %195 = getelementptr inbounds i8, i8* %2, i64 5
  store i8 %188, i8* %195, align 1
  %196 = getelementptr inbounds i8, i8* %2, i64 6
  store i8 %189, i8* %196, align 1
  %197 = getelementptr inbounds i8, i8* %2, i64 7
  store i8 %190, i8* %197, align 1
  %198 = trunc i64 %175 to i8
  %199 = getelementptr inbounds i8, i8* %2, i64 8
  store i8 %198, i8* %199, align 1
  %200 = lshr i64 %175, 8
  %201 = trunc i64 %200 to i8
  %202 = getelementptr inbounds i8, i8* %2, i64 9
  store i8 %201, i8* %202, align 1
  %203 = lshr i64 %175, 16
  %204 = trunc i64 %203 to i8
  %205 = getelementptr inbounds i8, i8* %2, i64 10
  store i8 %204, i8* %205, align 1
  %206 = lshr i64 %175, 24
  %207 = trunc i64 %206 to i8
  %208 = getelementptr inbounds i8, i8* %2, i64 11
  store i8 %207, i8* %208, align 1
  %209 = lshr i64 %175, 32
  %210 = trunc i64 %209 to i8
  %211 = getelementptr inbounds i8, i8* %2, i64 12
  store i8 %210, i8* %211, align 1
  %212 = lshr i64 %175, 40
  %213 = trunc i64 %212 to i8
  %214 = getelementptr inbounds i8, i8* %2, i64 13
  store i8 %213, i8* %214, align 1
  %215 = lshr i64 %175, 48
  %216 = trunc i64 %215 to i8
  %217 = getelementptr inbounds i8, i8* %2, i64 14
  store i8 %216, i8* %217, align 1
  %218 = lshr i64 %175, 56
  %219 = trunc i64 %218 to i8
  %220 = getelementptr inbounds i8, i8* %2, i64 15
  store i8 %219, i8* %220, align 1
  call void @my.lifetime.end(i64 16, i8* nonnull %17) #22
  call void @my.lifetime.end(i64 16, i8* nonnull %14) #22
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_packsswb_xmm_xmm(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8PACKSSWBI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
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

  
  %vecr = getelementptr inbounds %struct.State, %struct.State* %state, i32 0, i32 1
  %arrayidx = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %vecr, i64 0, i64 1
  %vec512 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %arrayidx, i32 0, i32 0
  %uint64v8 = getelementptr inbounds %union.vec512_t, %union.vec512_t* %vec512, i32 0, i32 0
  %int64_arr = getelementptr inbounds %struct.uint64v8_t, %struct.uint64v8_t* %uint64v8, i32 0, i32 0
  %arrayidx1 = getelementptr inbounds [8 x i64], [8 x i64]* %int64_arr, i64 0, i64 0
  store i64 8810, i64* %arrayidx1, align 8

  %vecr2 = getelementptr inbounds %struct.State, %struct.State* %state, i32 0, i32 1
  %arrayidx3 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %vecr2, i64 0, i64 1
  %vec5124 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %arrayidx3, i32 0, i32 0
  %uint64v85 = getelementptr inbounds %union.vec512_t, %union.vec512_t* %vec5124, i32 0, i32 0
  %int64_arr6 = getelementptr inbounds %struct.uint64v8_t, %struct.uint64v8_t* %uint64v85, i32 0, i32 0
  %arrayidx7 = getelementptr inbounds [8 x i64], [8 x i64]* %int64_arr6, i64 0, i64 1
  store i64 8820, i64* %arrayidx7, align 8

  %vecr8 = getelementptr inbounds %struct.State, %struct.State* %state, i32 0, i32 1
  %arrayidx9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %vecr8, i64 0, i64 1
  %vec51210 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %arrayidx9, i32 0, i32 0
  %uint64v811 = getelementptr inbounds %union.vec512_t, %union.vec512_t* %vec51210, i32 0, i32 0
  %int64_arr12 = getelementptr inbounds %struct.uint64v8_t, %struct.uint64v8_t* %uint64v811, i32 0, i32 0
  %arrayidx13 = getelementptr inbounds [8 x i64], [8 x i64]* %int64_arr12, i64 0, i64 2
  store i64 8830, i64* %arrayidx13, align 8

  %vecr14 = getelementptr inbounds %struct.State, %struct.State* %state, i32 0, i32 1
  %arrayidx15 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %vecr14, i64 0, i64 1
  %vec51216 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %arrayidx15, i32 0, i32 0
  %uint64v817 = getelementptr inbounds %union.vec512_t, %union.vec512_t* %vec51216, i32 0, i32 0
  %int64_arr18 = getelementptr inbounds %struct.uint64v8_t, %struct.uint64v8_t* %uint64v817, i32 0, i32 0
  %arrayidx19 = getelementptr inbounds [8 x i64], [8 x i64]* %int64_arr18, i64 0, i64 3
  store i64 8840, i64* %arrayidx19, align 8

  %vecr20 = getelementptr inbounds %struct.State, %struct.State* %state, i32 0, i32 1
  %arrayidx21 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %vecr20, i64 0, i64 1
  %vec51222 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %arrayidx21, i32 0, i32 0
  %uint64v823 = getelementptr inbounds %union.vec512_t, %union.vec512_t* %vec51222, i32 0, i32 0
  %int64_arr24 = getelementptr inbounds %struct.uint64v8_t, %struct.uint64v8_t* %uint64v823, i32 0, i32 0
  %arrayidx25 = getelementptr inbounds [8 x i64], [8 x i64]* %int64_arr24, i64 0, i64 4
  store i64 8850, i64* %arrayidx25, align 8

  %vecr26 = getelementptr inbounds %struct.State, %struct.State* %state, i32 0, i32 1
  %arrayidx27 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %vecr26, i64 0, i64 1
  %vec51228 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %arrayidx27, i32 0, i32 0
  %uint64v829 = getelementptr inbounds %union.vec512_t, %union.vec512_t* %vec51228, i32 0, i32 0
  %int64_arr30 = getelementptr inbounds %struct.uint64v8_t, %struct.uint64v8_t* %uint64v829, i32 0, i32 0
  %arrayidx31 = getelementptr inbounds [8 x i64], [8 x i64]* %int64_arr30, i64 0, i64 5
  store i64 8860, i64* %arrayidx31, align 8

  %vecr32 = getelementptr inbounds %struct.State, %struct.State* %state, i32 0, i32 1
  %arrayidx33 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %vecr32, i64 0, i64 1
  %vec51234 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %arrayidx33, i32 0, i32 0
  %uint64v835 = getelementptr inbounds %union.vec512_t, %union.vec512_t* %vec51234, i32 0, i32 0
  %int64_arr36 = getelementptr inbounds %struct.uint64v8_t, %struct.uint64v8_t* %uint64v835, i32 0, i32 0
  %arrayidx37 = getelementptr inbounds [8 x i64], [8 x i64]* %int64_arr36, i64 0, i64 6
  store i64 8870, i64* %arrayidx37, align 8

  %vecr38 = getelementptr inbounds %struct.State, %struct.State* %state, i32 0, i32 1
  %arrayidx39 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %vecr38, i64 0, i64 1
  %vec51240 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %arrayidx39, i32 0, i32 0
  %uint64v841 = getelementptr inbounds %union.vec512_t, %union.vec512_t* %vec51240, i32 0, i32 0
  %int64_arr42 = getelementptr inbounds %struct.uint64v8_t, %struct.uint64v8_t* %uint64v841, i32 0, i32 0
  %arrayidx43 = getelementptr inbounds [8 x i64], [8 x i64]* %int64_arr42, i64 0, i64 7
  store i64 8880, i64* %arrayidx43, align 8

  %vecr44 = getelementptr inbounds %struct.State, %struct.State* %state, i32 0, i32 1
  %arrayidx45 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %vecr44, i64 0, i64 2
  %vec51246 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %arrayidx45, i32 0, i32 0
  %uint64v847 = getelementptr inbounds %union.vec512_t, %union.vec512_t* %vec51246, i32 0, i32 0
  %int64_arr48 = getelementptr inbounds %struct.uint64v8_t, %struct.uint64v8_t* %uint64v847, i32 0, i32 0
  %arrayidx49 = getelementptr inbounds [8 x i64], [8 x i64]* %int64_arr48, i64 0, i64 0
  store i64 9910, i64* %arrayidx49, align 8

  %vecr50 = getelementptr inbounds %struct.State, %struct.State* %state, i32 0, i32 1
  %arrayidx51 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %vecr50, i64 0, i64 2
  %vec51252 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %arrayidx51, i32 0, i32 0
  %uint64v853 = getelementptr inbounds %union.vec512_t, %union.vec512_t* %vec51252, i32 0, i32 0
  %int64_arr54 = getelementptr inbounds %struct.uint64v8_t, %struct.uint64v8_t* %uint64v853, i32 0, i32 0
  %arrayidx55 = getelementptr inbounds [8 x i64], [8 x i64]* %int64_arr54, i64 0, i64 1
  store i64 9920, i64* %arrayidx55, align 8

  %vecr56 = getelementptr inbounds %struct.State, %struct.State* %state, i32 0, i32 1
  %arrayidx57 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %vecr56, i64 0, i64 2
  %vec51258 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %arrayidx57, i32 0, i32 0
  %uint64v859 = getelementptr inbounds %union.vec512_t, %union.vec512_t* %vec51258, i32 0, i32 0
  %int64_arr60 = getelementptr inbounds %struct.uint64v8_t, %struct.uint64v8_t* %uint64v859, i32 0, i32 0
  %arrayidx61 = getelementptr inbounds [8 x i64], [8 x i64]* %int64_arr60, i64 0, i64 2
  store i64 9930, i64* %arrayidx61, align 8

  %vecr62 = getelementptr inbounds %struct.State, %struct.State* %state, i32 0, i32 1
  %arrayidx63 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %vecr62, i64 0, i64 2
  %vec51264 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %arrayidx63, i32 0, i32 0
  %uint64v865 = getelementptr inbounds %union.vec512_t, %union.vec512_t* %vec51264, i32 0, i32 0
  %int64_arr66 = getelementptr inbounds %struct.uint64v8_t, %struct.uint64v8_t* %uint64v865, i32 0, i32 0
  %arrayidx67 = getelementptr inbounds [8 x i64], [8 x i64]* %int64_arr66, i64 0, i64 3
  store i64 9940, i64* %arrayidx67, align 8

  %vecr68 = getelementptr inbounds %struct.State, %struct.State* %state, i32 0, i32 1
  %arrayidx69 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %vecr68, i64 0, i64 2
  %vec51270 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %arrayidx69, i32 0, i32 0
  %uint64v871 = getelementptr inbounds %union.vec512_t, %union.vec512_t* %vec51270, i32 0, i32 0
  %int64_arr72 = getelementptr inbounds %struct.uint64v8_t, %struct.uint64v8_t* %uint64v871, i32 0, i32 0
  %arrayidx73 = getelementptr inbounds [8 x i64], [8 x i64]* %int64_arr72, i64 0, i64 4
  store i64 9950, i64* %arrayidx73, align 8

  %vecr74 = getelementptr inbounds %struct.State, %struct.State* %state, i32 0, i32 1
  %arrayidx75 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %vecr74, i64 0, i64 2
  %vec51276 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %arrayidx75, i32 0, i32 0
  %uint64v877 = getelementptr inbounds %union.vec512_t, %union.vec512_t* %vec51276, i32 0, i32 0
  %int64_arr78 = getelementptr inbounds %struct.uint64v8_t, %struct.uint64v8_t* %uint64v877, i32 0, i32 0
  %arrayidx79 = getelementptr inbounds [8 x i64], [8 x i64]* %int64_arr78, i64 0, i64 5
  store i64 9960, i64* %arrayidx79, align 8

  %vecr80 = getelementptr inbounds %struct.State, %struct.State* %state, i32 0, i32 1
  %arrayidx81 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %vecr80, i64 0, i64 2
  %vec51282 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %arrayidx81, i32 0, i32 0
  %uint64v883 = getelementptr inbounds %union.vec512_t, %union.vec512_t* %vec51282, i32 0, i32 0
  %int64_arr84 = getelementptr inbounds %struct.uint64v8_t, %struct.uint64v8_t* %uint64v883, i32 0, i32 0
  %arrayidx85 = getelementptr inbounds [8 x i64], [8 x i64]* %int64_arr84, i64 0, i64 6
  store i64 9970, i64* %arrayidx85, align 8

  %vecr86 = getelementptr inbounds %struct.State, %struct.State* %state, i32 0, i32 1
  %arrayidx87 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %vecr86, i64 0, i64 2
  %vec51288 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %arrayidx87, i32 0, i32 0
  %uint64v889 = getelementptr inbounds %union.vec512_t, %union.vec512_t* %vec51288, i32 0, i32 0
  %int64_arr90 = getelementptr inbounds %struct.uint64v8_t, %struct.uint64v8_t* %uint64v889, i32 0, i32 0
  %arrayidx91 = getelementptr inbounds [8 x i64], [8 x i64]* %int64_arr90, i64 0, i64 7
  store i64 9980, i64* %arrayidx91, align 8



  %call = call %struct.Memory* @routine_packsswb_xmm_xmm(%struct.State* %state, i64 0, %struct.Memory* %mem)
  ret i32 0
}