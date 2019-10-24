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


define internal %struct.Memory* @_ZN12_GLOBAL__N_1L6PSIGNBI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i8* nocapture readonly) #0 {
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
  %25 = trunc i64 %24 to i8
  %26 = extractelement <2 x i64> %19, i32 0
  %27 = trunc i64 %26 to i8
  %28 = icmp slt i8 %27, 0
  %29 = icmp eq i8 %27, 0
  %30 = sub i8 0, %25
  %31 = select i1 %28, i8 %30, i8 %25
  %32 = select i1 %29, i8 0, i8 %31
  call void @my.lifetime.start(i64 16, i8* nonnull %20)
  store <2 x i64> zeroinitializer, <2 x i64>* %6, align 16
  %33 = bitcast <2 x i64>* %6 to i8*
  store i8 %32, i8* %33, align 16
  %34 = load i64, i64* %21, align 16
  call void @my.lifetime.end(i64 16, i8* nonnull %20)
  %35 = lshr i64 %24, 8
  %36 = trunc i64 %35 to i8
  %37 = lshr i64 %26, 8
  %38 = trunc i64 %37 to i8
  %39 = icmp slt i8 %38, 0
  %40 = icmp eq i8 %38, 0
  %41 = sub i8 0, %36
  %42 = select i1 %39, i8 %41, i8 %36
  %43 = select i1 %40, i8 0, i8 %42
  call void @my.lifetime.start(i64 16, i8* nonnull %20)
  store i64 %34, i64* %21, align 16
  store i64 0, i64* %22, align 8
  %44 = getelementptr inbounds [16 x i8], [16 x i8]* %23, i64 0, i64 1
  store i8 %43, i8* %44, align 1
  %45 = load i64, i64* %21, align 16
  call void @my.lifetime.end(i64 16, i8* nonnull %20)
  %46 = lshr i64 %24, 16
  %47 = trunc i64 %46 to i8
  %48 = lshr i64 %26, 16
  %49 = trunc i64 %48 to i8
  %50 = icmp slt i8 %49, 0
  %51 = icmp eq i8 %49, 0
  %52 = sub i8 0, %47
  %53 = select i1 %50, i8 %52, i8 %47
  %54 = select i1 %51, i8 0, i8 %53
  call void @my.lifetime.start(i64 16, i8* nonnull %20)
  store i64 %45, i64* %21, align 16
  store i64 0, i64* %22, align 8
  %55 = getelementptr inbounds [16 x i8], [16 x i8]* %23, i64 0, i64 2
  store i8 %54, i8* %55, align 2
  %56 = load i64, i64* %21, align 16
  call void @my.lifetime.end(i64 16, i8* nonnull %20)
  %57 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %10, i64 0, i32 0, i64 3
  %58 = load i8, i8* %57, align 1
  %59 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %13, i64 0, i32 0, i64 3
  %60 = load i8, i8* %59, align 1
  %61 = icmp slt i8 %60, 0
  %62 = icmp eq i8 %60, 0
  %63 = sub i8 0, %58
  %64 = select i1 %61, i8 %63, i8 %58
  %65 = select i1 %62, i8 0, i8 %64
  call void @my.lifetime.start(i64 16, i8* nonnull %20)
  store i64 %56, i64* %21, align 16
  store i64 0, i64* %22, align 8
  %66 = getelementptr inbounds [16 x i8], [16 x i8]* %23, i64 0, i64 3
  store i8 %65, i8* %66, align 1
  %67 = load i64, i64* %21, align 16
  call void @my.lifetime.end(i64 16, i8* nonnull %20)
  %68 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %10, i64 0, i32 0, i64 4
  %69 = load i8, i8* %68, align 4
  %70 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %13, i64 0, i32 0, i64 4
  %71 = load i8, i8* %70, align 4
  %72 = icmp slt i8 %71, 0
  %73 = icmp eq i8 %71, 0
  %74 = sub i8 0, %69
  %75 = select i1 %72, i8 %74, i8 %69
  %76 = select i1 %73, i8 0, i8 %75
  call void @my.lifetime.start(i64 16, i8* nonnull %20)
  store i64 %67, i64* %21, align 16
  store i64 0, i64* %22, align 8
  %77 = getelementptr inbounds [16 x i8], [16 x i8]* %23, i64 0, i64 4
  store i8 %76, i8* %77, align 4
  %78 = load i64, i64* %21, align 16
  call void @my.lifetime.end(i64 16, i8* nonnull %20)
  %79 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %10, i64 0, i32 0, i64 5
  %80 = load i8, i8* %79, align 1
  %81 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %13, i64 0, i32 0, i64 5
  %82 = load i8, i8* %81, align 1
  %83 = icmp slt i8 %82, 0
  %84 = icmp eq i8 %82, 0
  %85 = sub i8 0, %80
  %86 = select i1 %83, i8 %85, i8 %80
  %87 = select i1 %84, i8 0, i8 %86
  call void @my.lifetime.start(i64 16, i8* nonnull %20)
  store i64 %78, i64* %21, align 16
  store i64 0, i64* %22, align 8
  %88 = getelementptr inbounds [16 x i8], [16 x i8]* %23, i64 0, i64 5
  store i8 %87, i8* %88, align 1
  %89 = load i64, i64* %21, align 16
  call void @my.lifetime.end(i64 16, i8* nonnull %20)
  %90 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %10, i64 0, i32 0, i64 6
  %91 = load i8, i8* %90, align 2
  %92 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %13, i64 0, i32 0, i64 6
  %93 = load i8, i8* %92, align 2
  %94 = icmp slt i8 %93, 0
  %95 = icmp eq i8 %93, 0
  %96 = sub i8 0, %91
  %97 = select i1 %94, i8 %96, i8 %91
  %98 = select i1 %95, i8 0, i8 %97
  call void @my.lifetime.start(i64 16, i8* nonnull %20)
  store i64 %89, i64* %21, align 16
  store i64 0, i64* %22, align 8
  %99 = getelementptr inbounds [16 x i8], [16 x i8]* %23, i64 0, i64 6
  store i8 %98, i8* %99, align 2
  %100 = load i64, i64* %21, align 16
  call void @my.lifetime.end(i64 16, i8* nonnull %20)
  %101 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %10, i64 0, i32 0, i64 7
  %102 = load i8, i8* %101, align 1
  %103 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %13, i64 0, i32 0, i64 7
  %104 = load i8, i8* %103, align 1
  %105 = icmp slt i8 %104, 0
  %106 = icmp eq i8 %104, 0
  %107 = sub i8 0, %102
  %108 = select i1 %105, i8 %107, i8 %102
  %109 = select i1 %106, i8 0, i8 %108
  call void @my.lifetime.start(i64 16, i8* nonnull %20)
  store i64 %100, i64* %21, align 16
  store i64 0, i64* %22, align 8
  %110 = getelementptr inbounds [16 x i8], [16 x i8]* %23, i64 0, i64 7
  store i8 %109, i8* %110, align 1
  %111 = load i64, i64* %21, align 16
  call void @my.lifetime.end(i64 16, i8* nonnull %20)
  %112 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %9, i64 0, i32 1
  %113 = bitcast i64* %112 to i8*
  %114 = load i8, i8* %113, align 8
  %115 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %12, i64 0, i32 1
  %116 = bitcast i64* %115 to i8*
  %117 = load i8, i8* %116, align 8
  %118 = icmp slt i8 %117, 0
  %119 = icmp eq i8 %117, 0
  %120 = sub i8 0, %114
  %121 = select i1 %118, i8 %120, i8 %114
  %122 = select i1 %119, i8 0, i8 %121
  call void @my.lifetime.start(i64 16, i8* nonnull %20)
  store i64 %111, i64* %21, align 16
  store i64 0, i64* %22, align 8
  %123 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %7, i64 0, i32 1
  %124 = bitcast i64* %123 to i8*
  store i8 %122, i8* %124, align 8
  %125 = load i64, i64* %22, align 8
  call void @my.lifetime.end(i64 16, i8* nonnull %20)
  %126 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %10, i64 0, i32 0, i64 9
  %127 = load i8, i8* %126, align 1
  %128 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %13, i64 0, i32 0, i64 9
  %129 = load i8, i8* %128, align 1
  %130 = icmp slt i8 %129, 0
  %131 = icmp eq i8 %129, 0
  %132 = sub i8 0, %127
  %133 = select i1 %130, i8 %132, i8 %127
  %134 = select i1 %131, i8 0, i8 %133
  call void @my.lifetime.start(i64 16, i8* nonnull %20)
  store i64 %111, i64* %21, align 16
  store i64 %125, i64* %22, align 8
  %135 = getelementptr inbounds [16 x i8], [16 x i8]* %23, i64 0, i64 9
  store i8 %134, i8* %135, align 1
  %136 = load i64, i64* %22, align 8
  call void @my.lifetime.end(i64 16, i8* nonnull %20)
  %137 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %10, i64 0, i32 0, i64 10
  %138 = load i8, i8* %137, align 2
  %139 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %13, i64 0, i32 0, i64 10
  %140 = load i8, i8* %139, align 2
  %141 = icmp slt i8 %140, 0
  %142 = icmp eq i8 %140, 0
  %143 = sub i8 0, %138
  %144 = select i1 %141, i8 %143, i8 %138
  %145 = select i1 %142, i8 0, i8 %144
  call void @my.lifetime.start(i64 16, i8* nonnull %20)
  store i64 %111, i64* %21, align 16
  store i64 %136, i64* %22, align 8
  %146 = getelementptr inbounds [16 x i8], [16 x i8]* %23, i64 0, i64 10
  store i8 %145, i8* %146, align 2
  %147 = load i64, i64* %22, align 8
  call void @my.lifetime.end(i64 16, i8* nonnull %20)
  %148 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %10, i64 0, i32 0, i64 11
  %149 = load i8, i8* %148, align 1
  %150 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %13, i64 0, i32 0, i64 11
  %151 = load i8, i8* %150, align 1
  %152 = icmp slt i8 %151, 0
  %153 = icmp eq i8 %151, 0
  %154 = sub i8 0, %149
  %155 = select i1 %152, i8 %154, i8 %149
  %156 = select i1 %153, i8 0, i8 %155
  call void @my.lifetime.start(i64 16, i8* nonnull %20)
  store i64 %111, i64* %21, align 16
  store i64 %147, i64* %22, align 8
  %157 = getelementptr inbounds [16 x i8], [16 x i8]* %23, i64 0, i64 11
  store i8 %156, i8* %157, align 1
  %158 = load i64, i64* %22, align 8
  call void @my.lifetime.end(i64 16, i8* nonnull %20)
  %159 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %10, i64 0, i32 0, i64 12
  %160 = load i8, i8* %159, align 4
  %161 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %13, i64 0, i32 0, i64 12
  %162 = load i8, i8* %161, align 4
  %163 = icmp slt i8 %162, 0
  %164 = icmp eq i8 %162, 0
  %165 = sub i8 0, %160
  %166 = select i1 %163, i8 %165, i8 %160
  %167 = select i1 %164, i8 0, i8 %166
  call void @my.lifetime.start(i64 16, i8* nonnull %20)
  store i64 %111, i64* %21, align 16
  store i64 %158, i64* %22, align 8
  %168 = getelementptr inbounds [16 x i8], [16 x i8]* %23, i64 0, i64 12
  store i8 %167, i8* %168, align 4
  %169 = load i64, i64* %22, align 8
  call void @my.lifetime.end(i64 16, i8* nonnull %20)
  %170 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %10, i64 0, i32 0, i64 13
  %171 = load i8, i8* %170, align 1
  %172 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %13, i64 0, i32 0, i64 13
  %173 = load i8, i8* %172, align 1
  %174 = icmp slt i8 %173, 0
  %175 = icmp eq i8 %173, 0
  %176 = sub i8 0, %171
  %177 = select i1 %174, i8 %176, i8 %171
  %178 = select i1 %175, i8 0, i8 %177
  call void @my.lifetime.start(i64 16, i8* nonnull %20)
  store i64 %111, i64* %21, align 16
  store i64 %169, i64* %22, align 8
  %179 = getelementptr inbounds [16 x i8], [16 x i8]* %23, i64 0, i64 13
  store i8 %178, i8* %179, align 1
  %180 = load i64, i64* %22, align 8
  call void @my.lifetime.end(i64 16, i8* nonnull %20)
  %181 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %10, i64 0, i32 0, i64 14
  %182 = load i8, i8* %181, align 2
  %183 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %13, i64 0, i32 0, i64 14
  %184 = load i8, i8* %183, align 2
  %185 = icmp slt i8 %184, 0
  %186 = icmp eq i8 %184, 0
  %187 = sub i8 0, %182
  %188 = select i1 %185, i8 %187, i8 %182
  %189 = select i1 %186, i8 0, i8 %188
  call void @my.lifetime.start(i64 16, i8* nonnull %20)
  store i64 %111, i64* %21, align 16
  store i64 %180, i64* %22, align 8
  %190 = getelementptr inbounds [16 x i8], [16 x i8]* %23, i64 0, i64 14
  store i8 %189, i8* %190, align 2
  %191 = load i64, i64* %22, align 8
  call void @my.lifetime.end(i64 16, i8* nonnull %20)
  %192 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %10, i64 0, i32 0, i64 15
  %193 = load i8, i8* %192, align 1
  %194 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %13, i64 0, i32 0, i64 15
  %195 = load i8, i8* %194, align 1
  %196 = icmp slt i8 %195, 0
  %197 = icmp eq i8 %195, 0
  %198 = sub i8 0, %193
  %199 = select i1 %196, i8 %198, i8 %193
  %200 = select i1 %197, i8 0, i8 %199
  call void @my.lifetime.start(i64 16, i8* nonnull %20)
  store i64 %111, i64* %21, align 16
  store i64 %191, i64* %22, align 8
  %201 = getelementptr inbounds [16 x i8], [16 x i8]* %23, i64 0, i64 15
  store i8 %200, i8* %201, align 1
  %202 = load i64, i64* %22, align 8
  call void @my.lifetime.end(i64 16, i8* nonnull %20)
  %203 = lshr i64 %111, 8
  %204 = lshr i64 %111, 16
  %205 = lshr i64 %111, 24
  %206 = lshr i64 %111, 32
  %207 = lshr i64 %111, 40
  %208 = lshr i64 %111, 48
  %209 = lshr i64 %111, 56
  %210 = trunc i64 %111 to i8
  %211 = trunc i64 %203 to i8
  %212 = trunc i64 %204 to i8
  %213 = trunc i64 %205 to i8
  %214 = trunc i64 %206 to i8
  %215 = trunc i64 %207 to i8
  %216 = trunc i64 %208 to i8
  %217 = trunc i64 %209 to i8
  store i8 %210, i8* %2, align 1
  %218 = getelementptr inbounds i8, i8* %2, i64 1
  store i8 %211, i8* %218, align 1
  %219 = getelementptr inbounds i8, i8* %2, i64 2
  store i8 %212, i8* %219, align 1
  %220 = getelementptr inbounds i8, i8* %2, i64 3
  store i8 %213, i8* %220, align 1
  %221 = getelementptr inbounds i8, i8* %2, i64 4
  store i8 %214, i8* %221, align 1
  %222 = getelementptr inbounds i8, i8* %2, i64 5
  store i8 %215, i8* %222, align 1
  %223 = getelementptr inbounds i8, i8* %2, i64 6
  store i8 %216, i8* %223, align 1
  %224 = getelementptr inbounds i8, i8* %2, i64 7
  store i8 %217, i8* %224, align 1
  %225 = trunc i64 %202 to i8
  %226 = getelementptr inbounds i8, i8* %2, i64 8
  store i8 %225, i8* %226, align 1
  %227 = lshr i64 %202, 8
  %228 = trunc i64 %227 to i8
  %229 = getelementptr inbounds i8, i8* %2, i64 9
  store i8 %228, i8* %229, align 1
  %230 = lshr i64 %202, 16
  %231 = trunc i64 %230 to i8
  %232 = getelementptr inbounds i8, i8* %2, i64 10
  store i8 %231, i8* %232, align 1
  %233 = lshr i64 %202, 24
  %234 = trunc i64 %233 to i8
  %235 = getelementptr inbounds i8, i8* %2, i64 11
  store i8 %234, i8* %235, align 1
  %236 = lshr i64 %202, 32
  %237 = trunc i64 %236 to i8
  %238 = getelementptr inbounds i8, i8* %2, i64 12
  store i8 %237, i8* %238, align 1
  %239 = lshr i64 %202, 40
  %240 = trunc i64 %239 to i8
  %241 = getelementptr inbounds i8, i8* %2, i64 13
  store i8 %240, i8* %241, align 1
  %242 = lshr i64 %202, 48
  %243 = trunc i64 %242 to i8
  %244 = getelementptr inbounds i8, i8* %2, i64 14
  store i8 %243, i8* %244, align 1
  %245 = lshr i64 %202, 56
  %246 = trunc i64 %245 to i8
  %247 = getelementptr inbounds i8, i8* %2, i64 15
  store i8 %246, i8* %247, align 1
  call void @my.lifetime.end(i64 16, i8* nonnull %17) #22
  call void @my.lifetime.end(i64 16, i8* nonnull %14) #22
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_psignb_xmm_xmm(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 5
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L6PSIGNBI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
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

  %call = call %struct.Memory* @routine_psignb_xmm_xmm(%struct.State* %state, i64 0, %struct.Memory* %mem)
  ret i32 0
}