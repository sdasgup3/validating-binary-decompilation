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


define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5PAVGBI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i8* nocapture readonly) #0 {
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
  %28 = and i16 %25, 255
  %29 = and i16 %27, 255
  %30 = add   i16 %28, 1
  %31 = add   i16 %30, %29
  %32 = lshr i16 %31, 1
  %33 = trunc i16 %32 to i8
  call void @my.lifetime.start(i64 16, i8* nonnull %20)
  store <2 x i64> zeroinitializer, <2 x i64>* %6, align 16
  %34 = bitcast <2 x i64>* %6 to i8*
  store i8 %33, i8* %34, align 16
  %35 = load i64, i64* %21, align 16
  call void @my.lifetime.end(i64 16, i8* nonnull %20)
  %36 = lshr i64 %24, 8
  %37 = trunc i64 %36 to i16
  %38 = lshr i64 %26, 8
  %39 = trunc i64 %38 to i16
  %40 = and i16 %37, 255
  %41 = and i16 %39, 255
  %42 = add   i16 %40, 1
  %43 = add   i16 %42, %41
  %44 = lshr i16 %43, 1
  %45 = trunc i16 %44 to i8
  call void @my.lifetime.start(i64 16, i8* nonnull %20)
  store i64 %35, i64* %21, align 16
  store i64 0, i64* %22, align 8
  %46 = getelementptr inbounds [16 x i8], [16 x i8]* %23, i64 0, i64 1
  store i8 %45, i8* %46, align 1
  %47 = load i64, i64* %21, align 16
  call void @my.lifetime.end(i64 16, i8* nonnull %20)
  %48 = lshr i64 %24, 16
  %49 = trunc i64 %48 to i16
  %50 = lshr i64 %26, 16
  %51 = trunc i64 %50 to i16
  %52 = and i16 %49, 255
  %53 = and i16 %51, 255
  %54 = add   i16 %52, 1
  %55 = add   i16 %54, %53
  %56 = lshr i16 %55, 1
  %57 = trunc i16 %56 to i8
  call void @my.lifetime.start(i64 16, i8* nonnull %20)
  store i64 %47, i64* %21, align 16
  store i64 0, i64* %22, align 8
  %58 = getelementptr inbounds [16 x i8], [16 x i8]* %23, i64 0, i64 2
  store i8 %57, i8* %58, align 2
  %59 = load i64, i64* %21, align 16
  call void @my.lifetime.end(i64 16, i8* nonnull %20)
  %60 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %10, i64 0, i32 0, i64 3
  %61 = load i8, i8* %60, align 1
  %62 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %13, i64 0, i32 0, i64 3
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %61 to i16
  %65 = zext i8 %63 to i16
  %66 = add   i16 %64, 1
  %67 = add   i16 %66, %65
  %68 = lshr i16 %67, 1
  %69 = trunc i16 %68 to i8
  call void @my.lifetime.start(i64 16, i8* nonnull %20)
  store i64 %59, i64* %21, align 16
  store i64 0, i64* %22, align 8
  %70 = getelementptr inbounds [16 x i8], [16 x i8]* %23, i64 0, i64 3
  store i8 %69, i8* %70, align 1
  %71 = load i64, i64* %21, align 16
  call void @my.lifetime.end(i64 16, i8* nonnull %20)
  %72 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %10, i64 0, i32 0, i64 4
  %73 = load i8, i8* %72, align 4
  %74 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %13, i64 0, i32 0, i64 4
  %75 = load i8, i8* %74, align 4
  %76 = zext i8 %73 to i16
  %77 = zext i8 %75 to i16
  %78 = add   i16 %76, 1
  %79 = add   i16 %78, %77
  %80 = lshr i16 %79, 1
  %81 = trunc i16 %80 to i8
  call void @my.lifetime.start(i64 16, i8* nonnull %20)
  store i64 %71, i64* %21, align 16
  store i64 0, i64* %22, align 8
  %82 = getelementptr inbounds [16 x i8], [16 x i8]* %23, i64 0, i64 4
  store i8 %81, i8* %82, align 4
  %83 = load i64, i64* %21, align 16
  call void @my.lifetime.end(i64 16, i8* nonnull %20)
  %84 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %10, i64 0, i32 0, i64 5
  %85 = load i8, i8* %84, align 1
  %86 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %13, i64 0, i32 0, i64 5
  %87 = load i8, i8* %86, align 1
  %88 = zext i8 %85 to i16
  %89 = zext i8 %87 to i16
  %90 = add   i16 %88, 1
  %91 = add   i16 %90, %89
  %92 = lshr i16 %91, 1
  %93 = trunc i16 %92 to i8
  call void @my.lifetime.start(i64 16, i8* nonnull %20)
  store i64 %83, i64* %21, align 16
  store i64 0, i64* %22, align 8
  %94 = getelementptr inbounds [16 x i8], [16 x i8]* %23, i64 0, i64 5
  store i8 %93, i8* %94, align 1
  %95 = load i64, i64* %21, align 16
  call void @my.lifetime.end(i64 16, i8* nonnull %20)
  %96 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %10, i64 0, i32 0, i64 6
  %97 = load i8, i8* %96, align 2
  %98 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %13, i64 0, i32 0, i64 6
  %99 = load i8, i8* %98, align 2
  %100 = zext i8 %97 to i16
  %101 = zext i8 %99 to i16
  %102 = add   i16 %100, 1
  %103 = add   i16 %102, %101
  %104 = lshr i16 %103, 1
  %105 = trunc i16 %104 to i8
  call void @my.lifetime.start(i64 16, i8* nonnull %20)
  store i64 %95, i64* %21, align 16
  store i64 0, i64* %22, align 8
  %106 = getelementptr inbounds [16 x i8], [16 x i8]* %23, i64 0, i64 6
  store i8 %105, i8* %106, align 2
  %107 = load i64, i64* %21, align 16
  call void @my.lifetime.end(i64 16, i8* nonnull %20)
  %108 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %10, i64 0, i32 0, i64 7
  %109 = load i8, i8* %108, align 1
  %110 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %13, i64 0, i32 0, i64 7
  %111 = load i8, i8* %110, align 1
  %112 = zext i8 %109 to i16
  %113 = zext i8 %111 to i16
  %114 = add   i16 %112, 1
  %115 = add   i16 %114, %113
  %116 = lshr i16 %115, 1
  %117 = trunc i16 %116 to i8
  call void @my.lifetime.start(i64 16, i8* nonnull %20)
  store i64 %107, i64* %21, align 16
  store i64 0, i64* %22, align 8
  %118 = getelementptr inbounds [16 x i8], [16 x i8]* %23, i64 0, i64 7
  store i8 %117, i8* %118, align 1
  %119 = load i64, i64* %21, align 16
  call void @my.lifetime.end(i64 16, i8* nonnull %20)
  %120 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %9, i64 0, i32 1
  %121 = bitcast i64* %120 to i8*
  %122 = load i8, i8* %121, align 8
  %123 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %12, i64 0, i32 1
  %124 = bitcast i64* %123 to i8*
  %125 = load i8, i8* %124, align 8
  %126 = zext i8 %122 to i16
  %127 = zext i8 %125 to i16
  %128 = add   i16 %126, 1
  %129 = add   i16 %128, %127
  %130 = lshr i16 %129, 1
  %131 = trunc i16 %130 to i8
  call void @my.lifetime.start(i64 16, i8* nonnull %20)
  store i64 %119, i64* %21, align 16
  store i64 0, i64* %22, align 8
  %132 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %7, i64 0, i32 1
  %133 = bitcast i64* %132 to i8*
  store i8 %131, i8* %133, align 8
  %134 = load i64, i64* %22, align 8
  call void @my.lifetime.end(i64 16, i8* nonnull %20)
  %135 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %10, i64 0, i32 0, i64 9
  %136 = load i8, i8* %135, align 1
  %137 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %13, i64 0, i32 0, i64 9
  %138 = load i8, i8* %137, align 1
  %139 = zext i8 %136 to i16
  %140 = zext i8 %138 to i16
  %141 = add   i16 %139, 1
  %142 = add   i16 %141, %140
  %143 = lshr i16 %142, 1
  %144 = trunc i16 %143 to i8
  call void @my.lifetime.start(i64 16, i8* nonnull %20)
  store i64 %119, i64* %21, align 16
  store i64 %134, i64* %22, align 8
  %145 = getelementptr inbounds [16 x i8], [16 x i8]* %23, i64 0, i64 9
  store i8 %144, i8* %145, align 1
  %146 = load i64, i64* %22, align 8
  call void @my.lifetime.end(i64 16, i8* nonnull %20)
  %147 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %10, i64 0, i32 0, i64 10
  %148 = load i8, i8* %147, align 2
  %149 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %13, i64 0, i32 0, i64 10
  %150 = load i8, i8* %149, align 2
  %151 = zext i8 %148 to i16
  %152 = zext i8 %150 to i16
  %153 = add   i16 %151, 1
  %154 = add   i16 %153, %152
  %155 = lshr i16 %154, 1
  %156 = trunc i16 %155 to i8
  call void @my.lifetime.start(i64 16, i8* nonnull %20)
  store i64 %119, i64* %21, align 16
  store i64 %146, i64* %22, align 8
  %157 = getelementptr inbounds [16 x i8], [16 x i8]* %23, i64 0, i64 10
  store i8 %156, i8* %157, align 2
  %158 = load i64, i64* %22, align 8
  call void @my.lifetime.end(i64 16, i8* nonnull %20)
  %159 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %10, i64 0, i32 0, i64 11
  %160 = load i8, i8* %159, align 1
  %161 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %13, i64 0, i32 0, i64 11
  %162 = load i8, i8* %161, align 1
  %163 = zext i8 %160 to i16
  %164 = zext i8 %162 to i16
  %165 = add   i16 %163, 1
  %166 = add   i16 %165, %164
  %167 = lshr i16 %166, 1
  %168 = trunc i16 %167 to i8
  call void @my.lifetime.start(i64 16, i8* nonnull %20)
  store i64 %119, i64* %21, align 16
  store i64 %158, i64* %22, align 8
  %169 = getelementptr inbounds [16 x i8], [16 x i8]* %23, i64 0, i64 11
  store i8 %168, i8* %169, align 1
  %170 = load i64, i64* %22, align 8
  call void @my.lifetime.end(i64 16, i8* nonnull %20)
  %171 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %10, i64 0, i32 0, i64 12
  %172 = load i8, i8* %171, align 4
  %173 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %13, i64 0, i32 0, i64 12
  %174 = load i8, i8* %173, align 4
  %175 = zext i8 %172 to i16
  %176 = zext i8 %174 to i16
  %177 = add   i16 %175, 1
  %178 = add   i16 %177, %176
  %179 = lshr i16 %178, 1
  %180 = trunc i16 %179 to i8
  call void @my.lifetime.start(i64 16, i8* nonnull %20)
  store i64 %119, i64* %21, align 16
  store i64 %170, i64* %22, align 8
  %181 = getelementptr inbounds [16 x i8], [16 x i8]* %23, i64 0, i64 12
  store i8 %180, i8* %181, align 4
  %182 = load i64, i64* %22, align 8
  call void @my.lifetime.end(i64 16, i8* nonnull %20)
  %183 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %10, i64 0, i32 0, i64 13
  %184 = load i8, i8* %183, align 1
  %185 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %13, i64 0, i32 0, i64 13
  %186 = load i8, i8* %185, align 1
  %187 = zext i8 %184 to i16
  %188 = zext i8 %186 to i16
  %189 = add   i16 %187, 1
  %190 = add   i16 %189, %188
  %191 = lshr i16 %190, 1
  %192 = trunc i16 %191 to i8
  call void @my.lifetime.start(i64 16, i8* nonnull %20)
  store i64 %119, i64* %21, align 16
  store i64 %182, i64* %22, align 8
  %193 = getelementptr inbounds [16 x i8], [16 x i8]* %23, i64 0, i64 13
  store i8 %192, i8* %193, align 1
  %194 = load i64, i64* %22, align 8
  call void @my.lifetime.end(i64 16, i8* nonnull %20)
  %195 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %10, i64 0, i32 0, i64 14
  %196 = load i8, i8* %195, align 2
  %197 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %13, i64 0, i32 0, i64 14
  %198 = load i8, i8* %197, align 2
  %199 = zext i8 %196 to i16
  %200 = zext i8 %198 to i16
  %201 = add   i16 %199, 1
  %202 = add   i16 %201, %200
  %203 = lshr i16 %202, 1
  %204 = trunc i16 %203 to i8
  call void @my.lifetime.start(i64 16, i8* nonnull %20)
  store i64 %119, i64* %21, align 16
  store i64 %194, i64* %22, align 8
  %205 = getelementptr inbounds [16 x i8], [16 x i8]* %23, i64 0, i64 14
  store i8 %204, i8* %205, align 2
  %206 = load i64, i64* %22, align 8
  call void @my.lifetime.end(i64 16, i8* nonnull %20)
  %207 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %10, i64 0, i32 0, i64 15
  %208 = load i8, i8* %207, align 1
  %209 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %13, i64 0, i32 0, i64 15
  %210 = load i8, i8* %209, align 1
  %211 = zext i8 %208 to i16
  %212 = zext i8 %210 to i16
  %213 = add   i16 %211, 1
  %214 = add   i16 %213, %212
  %215 = lshr i16 %214, 1
  %216 = trunc i16 %215 to i8
  call void @my.lifetime.start(i64 16, i8* nonnull %20)
  store i64 %119, i64* %21, align 16
  store i64 %206, i64* %22, align 8
  %217 = getelementptr inbounds [16 x i8], [16 x i8]* %23, i64 0, i64 15
  store i8 %216, i8* %217, align 1
  %218 = load i64, i64* %22, align 8
  call void @my.lifetime.end(i64 16, i8* nonnull %20)
  %219 = lshr i64 %119, 8
  %220 = lshr i64 %119, 16
  %221 = lshr i64 %119, 24
  %222 = lshr i64 %119, 32
  %223 = lshr i64 %119, 40
  %224 = lshr i64 %119, 48
  %225 = lshr i64 %119, 56
  %226 = trunc i64 %119 to i8
  %227 = trunc i64 %219 to i8
  %228 = trunc i64 %220 to i8
  %229 = trunc i64 %221 to i8
  %230 = trunc i64 %222 to i8
  %231 = trunc i64 %223 to i8
  %232 = trunc i64 %224 to i8
  %233 = trunc i64 %225 to i8
  store i8 %226, i8* %2, align 1
  %234 = getelementptr inbounds i8, i8* %2, i64 1
  store i8 %227, i8* %234, align 1
  %235 = getelementptr inbounds i8, i8* %2, i64 2
  store i8 %228, i8* %235, align 1
  %236 = getelementptr inbounds i8, i8* %2, i64 3
  store i8 %229, i8* %236, align 1
  %237 = getelementptr inbounds i8, i8* %2, i64 4
  store i8 %230, i8* %237, align 1
  %238 = getelementptr inbounds i8, i8* %2, i64 5
  store i8 %231, i8* %238, align 1
  %239 = getelementptr inbounds i8, i8* %2, i64 6
  store i8 %232, i8* %239, align 1
  %240 = getelementptr inbounds i8, i8* %2, i64 7
  store i8 %233, i8* %240, align 1
  %241 = trunc i64 %218 to i8
  %242 = getelementptr inbounds i8, i8* %2, i64 8
  store i8 %241, i8* %242, align 1
  %243 = lshr i64 %218, 8
  %244 = trunc i64 %243 to i8
  %245 = getelementptr inbounds i8, i8* %2, i64 9
  store i8 %244, i8* %245, align 1
  %246 = lshr i64 %218, 16
  %247 = trunc i64 %246 to i8
  %248 = getelementptr inbounds i8, i8* %2, i64 10
  store i8 %247, i8* %248, align 1
  %249 = lshr i64 %218, 24
  %250 = trunc i64 %249 to i8
  %251 = getelementptr inbounds i8, i8* %2, i64 11
  store i8 %250, i8* %251, align 1
  %252 = lshr i64 %218, 32
  %253 = trunc i64 %252 to i8
  %254 = getelementptr inbounds i8, i8* %2, i64 12
  store i8 %253, i8* %254, align 1
  %255 = lshr i64 %218, 40
  %256 = trunc i64 %255 to i8
  %257 = getelementptr inbounds i8, i8* %2, i64 13
  store i8 %256, i8* %257, align 1
  %258 = lshr i64 %218, 48
  %259 = trunc i64 %258 to i8
  %260 = getelementptr inbounds i8, i8* %2, i64 14
  store i8 %259, i8* %260, align 1
  %261 = lshr i64 %218, 56
  %262 = trunc i64 %261 to i8
  %263 = getelementptr inbounds i8, i8* %2, i64 15
  store i8 %262, i8* %263, align 1
  call void @my.lifetime.end(i64 16, i8* nonnull %17) #22
  call void @my.lifetime.end(i64 16, i8* nonnull %14) #22
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_pavgb_xmm_xmm(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5PAVGBI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
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

  %call = call %struct.Memory* @routine_pavgb_xmm_xmm(%struct.State* %state, i64 0, %struct.Memory* %mem)
  ret i32 0
}