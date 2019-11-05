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


define internal %struct.Memory* @_ZL7PHADDSWI3VnWI8vec128_tE2VnIS1_ES4_EP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i8* nocapture readonly) #0 {
  %6 = alloca <2 x i64>, align 16
  %7 = bitcast <2 x i64>* %6 to { i64, i64 }*
  %8 = alloca { i64, i64 }, align 8
  %9 = alloca { i64, i64 }, align 8
  %10 = bitcast { i64, i64 }* %9 to %struct.uint16v8_t*
  %11 = alloca <2 x i64>, align 16
  %12 = bitcast <2 x i64>* %11 to { i64, i64 }*
  %13 = bitcast { i64, i64 }* %9 to i8*
  call void @my.lifetime.start(i64 16, i8* nonnull %13) #22
  %14 = bitcast i8* %3 to i64*
  %15 = load i64, i64* %14, align 1
  %16 = getelementptr inbounds i8, i8* %3, i64 8
  %17 = bitcast i8* %16 to i64*
  %18 = load i64, i64* %17, align 1
  %19 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %9, i64 0, i32 0
  store i64 %15, i64* %19, align 8
  %20 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %9, i64 0, i32 1
  store i64 %18, i64* %20, align 8
  %21 = bitcast <2 x i64>* %11 to i8*
  call void @my.lifetime.start(i64 16, i8* nonnull %21) #22
  %22 = bitcast i8* %4 to <2 x i64>*
  %23 = load <2 x i64>, <2 x i64>* %22, align 1
  store <2 x i64> %23, <2 x i64>* %11, align 16
  %24 = bitcast <2 x i64>* %6 to i8*
  %25 = getelementptr inbounds <2 x i64>, <2 x i64>* %6, i64 0, i64 0
  %26 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %7, i64 0, i32 1
  %27 = bitcast <2 x i64>* %6 to [8 x i16]*
  %28 = trunc i64 %15 to i16
  %29 = lshr i64 %15, 16
  %30 = trunc i64 %29 to i16
  %31 = add i16 %30, %28
  %32 = or i64 %29, %15
  %33 = trunc i64 %32 to i16
  %34 = and i64 %29, %15
  %35 = trunc i64 %34 to i16
  %36 = xor i16 %33, -32768
  %37 = and i16 %36, %31
  %38 = icmp slt i16 %37, 0
  %39 = select i1 %38, i16 32767, i16 %31
  %40 = xor i16 %31, -32768
  %41 = and i16 %35, %40
  %42 = icmp slt i16 %41, 0
  %43 = select i1 %42, i16 -32768, i16 %39
  call void @my.lifetime.start(i64 16, i8* nonnull %24)
  store <2 x i64> zeroinitializer, <2 x i64>* %6, align 16
  %44 = bitcast <2 x i64>* %6 to i16*
  store i16 %43, i16* %44, align 16
  %45 = load i64, i64* %25, align 16
  call void @my.lifetime.end(i64 16, i8* nonnull %24)
  %46 = lshr i64 %15, 32
  %47 = trunc i64 %46 to i16
  %48 = lshr i64 %15, 48
  %49 = trunc i64 %48 to i16
  %50 = add i16 %49, %47
  %51 = or i64 %48, %46
  %52 = trunc i64 %51 to i16
  %53 = and i64 %48, %46
  %54 = trunc i64 %53 to i16
  %55 = xor i16 %52, -32768
  %56 = and i16 %55, %50
  %57 = icmp slt i16 %56, 0
  %58 = select i1 %57, i16 32767, i16 %50
  %59 = xor i16 %50, -32768
  %60 = and i16 %54, %59
  %61 = icmp slt i16 %60, 0
  %62 = select i1 %61, i16 -32768, i16 %58
  call void @my.lifetime.start(i64 16, i8* nonnull %24)
  store i64 %45, i64* %25, align 16
  store i64 0, i64* %26, align 8
  %63 = getelementptr inbounds [8 x i16], [8 x i16]* %27, i64 0, i64 1
  store i16 %62, i16* %63, align 2
  %64 = load i64, i64* %25, align 16
  call void @my.lifetime.end(i64 16, i8* nonnull %24)
  %65 = trunc i64 %18 to i16
  %66 = lshr i64 %18, 16
  %67 = trunc i64 %66 to i16
  %68 = add i16 %67, %65
  %69 = or i64 %66, %18
  %70 = trunc i64 %69 to i16
  %71 = and i64 %66, %18
  %72 = trunc i64 %71 to i16
  %73 = xor i16 %70, -32768
  %74 = and i16 %73, %68
  %75 = icmp slt i16 %74, 0
  %76 = select i1 %75, i16 32767, i16 %68
  %77 = xor i16 %68, -32768
  %78 = and i16 %72, %77
  %79 = icmp slt i16 %78, 0
  %80 = select i1 %79, i16 -32768, i16 %76
  call void @my.lifetime.start(i64 16, i8* nonnull %24)
  store i64 %64, i64* %25, align 16
  store i64 0, i64* %26, align 8
  %81 = getelementptr inbounds [8 x i16], [8 x i16]* %27, i64 0, i64 2
  store i16 %80, i16* %81, align 4
  %82 = load i64, i64* %25, align 16
  call void @my.lifetime.end(i64 16, i8* nonnull %24)
  %83 = getelementptr inbounds %struct.uint16v8_t, %struct.uint16v8_t* %10, i64 0, i32 0, i64 6
  %84 = load i16, i16* %83, align 4
  %85 = getelementptr inbounds %struct.uint16v8_t, %struct.uint16v8_t* %10, i64 0, i32 0, i64 7
  %86 = load i16, i16* %85, align 2
  %87 = add i16 %86, %84
  %88 = or i16 %86, %84
  %89 = and i16 %86, %84
  %90 = xor i16 %88, -32768
  %91 = and i16 %90, %87
  %92 = icmp slt i16 %91, 0
  %93 = select i1 %92, i16 32767, i16 %87
  %94 = xor i16 %87, -32768
  %95 = and i16 %89, %94
  %96 = icmp slt i16 %95, 0
  %97 = select i1 %96, i16 -32768, i16 %93
  call void @my.lifetime.start(i64 16, i8* nonnull %24)
  store i64 %82, i64* %25, align 16
  store i64 0, i64* %26, align 8
  %98 = getelementptr inbounds [8 x i16], [8 x i16]* %27, i64 0, i64 3
  store i16 %97, i16* %98, align 2
  %99 = load i64, i64* %25, align 16
  call void @my.lifetime.end(i64 16, i8* nonnull %24)
  %100 = bitcast <2 x i64>* %11 to %struct.uint16v8_t*
  %101 = bitcast { i64, i64 }* %8 to i8*
  %102 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %8, i64 0, i32 0
  %103 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %8, i64 0, i32 1
  %104 = bitcast { i64, i64 }* %8 to [8 x i16]*
  %105 = bitcast <2 x i64>* %11 to i16*
  %106 = load i16, i16* %105, align 16
  %107 = getelementptr inbounds %struct.uint16v8_t, %struct.uint16v8_t* %100, i64 0, i32 0, i64 1
  %108 = load i16, i16* %107, align 2
  %109 = add i16 %108, %106
  %110 = or i16 %108, %106
  %111 = and i16 %108, %106
  %112 = xor i16 %110, -32768
  %113 = and i16 %112, %109
  %114 = icmp slt i16 %113, 0
  %115 = select i1 %114, i16 32767, i16 %109
  %116 = xor i16 %109, -32768
  %117 = and i16 %111, %116
  %118 = icmp slt i16 %117, 0
  %119 = select i1 %118, i16 -32768, i16 %115
  call void @my.lifetime.start(i64 16, i8* nonnull %101)
  store i64 %99, i64* %102, align 8
  store i64 0, i64* %103, align 8
  %120 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %8, i64 0, i32 1
  %121 = bitcast i64* %120 to i16*
  store i16 %119, i16* %121, align 8
  %122 = load i64, i64* %103, align 8
  call void @my.lifetime.end(i64 16, i8* nonnull %101)
  %123 = getelementptr inbounds %struct.uint16v8_t, %struct.uint16v8_t* %100, i64 0, i32 0, i64 2
  %124 = load i16, i16* %123, align 4
  %125 = getelementptr inbounds %struct.uint16v8_t, %struct.uint16v8_t* %100, i64 0, i32 0, i64 3
  %126 = load i16, i16* %125, align 2
  %127 = add i16 %126, %124
  %128 = or i16 %126, %124
  %129 = and i16 %126, %124
  %130 = xor i16 %128, -32768
  %131 = and i16 %130, %127
  %132 = icmp slt i16 %131, 0
  %133 = select i1 %132, i16 32767, i16 %127
  %134 = xor i16 %127, -32768
  %135 = and i16 %129, %134
  %136 = icmp slt i16 %135, 0
  %137 = select i1 %136, i16 -32768, i16 %133
  call void @my.lifetime.start(i64 16, i8* nonnull %101)
  store i64 %99, i64* %102, align 8
  store i64 %122, i64* %103, align 8
  %138 = getelementptr inbounds [8 x i16], [8 x i16]* %104, i64 0, i64 5
  store i16 %137, i16* %138, align 2
  %139 = load i64, i64* %103, align 8
  call void @my.lifetime.end(i64 16, i8* nonnull %101)
  %140 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %12, i64 0, i32 1
  %141 = bitcast i64* %140 to i16*
  %142 = load i16, i16* %141, align 8
  %143 = getelementptr inbounds %struct.uint16v8_t, %struct.uint16v8_t* %100, i64 0, i32 0, i64 5
  %144 = load i16, i16* %143, align 2
  %145 = add i16 %144, %142
  %146 = or i16 %144, %142
  %147 = and i16 %144, %142
  %148 = xor i16 %146, -32768
  %149 = and i16 %148, %145
  %150 = icmp slt i16 %149, 0
  %151 = select i1 %150, i16 32767, i16 %145
  %152 = xor i16 %145, -32768
  %153 = and i16 %147, %152
  %154 = icmp slt i16 %153, 0
  %155 = select i1 %154, i16 -32768, i16 %151
  call void @my.lifetime.start(i64 16, i8* nonnull %101)
  store i64 %99, i64* %102, align 8
  store i64 %139, i64* %103, align 8
  %156 = getelementptr inbounds [8 x i16], [8 x i16]* %104, i64 0, i64 6
  store i16 %155, i16* %156, align 4
  %157 = load i64, i64* %103, align 8
  call void @my.lifetime.end(i64 16, i8* nonnull %101)
  %158 = getelementptr inbounds %struct.uint16v8_t, %struct.uint16v8_t* %100, i64 0, i32 0, i64 6
  %159 = load i16, i16* %158, align 4
  %160 = getelementptr inbounds %struct.uint16v8_t, %struct.uint16v8_t* %100, i64 0, i32 0, i64 7
  %161 = load i16, i16* %160, align 2
  %162 = add i16 %161, %159
  %163 = or i16 %161, %159
  %164 = and i16 %161, %159
  %165 = xor i16 %163, -32768
  %166 = and i16 %165, %162
  %167 = icmp slt i16 %166, 0
  %168 = select i1 %167, i16 32767, i16 %162
  %169 = xor i16 %162, -32768
  %170 = and i16 %164, %169
  %171 = icmp slt i16 %170, 0
  %172 = select i1 %171, i16 -32768, i16 %168
  call void @my.lifetime.start(i64 16, i8* nonnull %101)
  store i64 %99, i64* %102, align 8
  store i64 %157, i64* %103, align 8
  %173 = getelementptr inbounds [8 x i16], [8 x i16]* %104, i64 0, i64 7
  store i16 %172, i16* %173, align 2
  %174 = load i64, i64* %103, align 8
  call void @my.lifetime.end(i64 16, i8* nonnull %101)
  %175 = lshr i64 %99, 16
  %176 = lshr i64 %99, 32
  %177 = lshr i64 %99, 48
  %178 = trunc i64 %99 to i16
  %179 = trunc i64 %175 to i16
  %180 = trunc i64 %176 to i16
  %181 = trunc i64 %177 to i16
  %182 = bitcast i8* %2 to i16*
  store i16 %178, i16* %182, align 1
  %183 = getelementptr inbounds i8, i8* %2, i64 2
  %184 = bitcast i8* %183 to i16*
  store i16 %179, i16* %184, align 1
  %185 = getelementptr inbounds i8, i8* %2, i64 4
  %186 = bitcast i8* %185 to i16*
  store i16 %180, i16* %186, align 1
  %187 = getelementptr inbounds i8, i8* %2, i64 6
  %188 = bitcast i8* %187 to i16*
  store i16 %181, i16* %188, align 1
  %189 = trunc i64 %174 to i16
  %190 = getelementptr inbounds i8, i8* %2, i64 8
  %191 = bitcast i8* %190 to i16*
  store i16 %189, i16* %191, align 1
  %192 = lshr i64 %174, 16
  %193 = trunc i64 %192 to i16
  %194 = getelementptr inbounds i8, i8* %2, i64 10
  %195 = bitcast i8* %194 to i16*
  store i16 %193, i16* %195, align 1
  %196 = lshr i64 %174, 32
  %197 = trunc i64 %196 to i16
  %198 = getelementptr inbounds i8, i8* %2, i64 12
  %199 = bitcast i8* %198 to i16*
  store i16 %197, i16* %199, align 1
  %200 = lshr i64 %174, 48
  %201 = trunc i64 %200 to i16
  %202 = getelementptr inbounds i8, i8* %2, i64 14
  %203 = bitcast i8* %202 to i16*
  store i16 %201, i16* %203, align 1
  call void @my.lifetime.end(i64 16, i8* nonnull %21) #22
  call void @my.lifetime.end(i64 16, i8* nonnull %13) #22
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_phaddsw_xmm_xmm(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = call %struct.Memory* @_ZL7PHADDSWI3VnWI8vec128_tE2VnIS1_ES4_EP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
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



  %call = call %struct.Memory* @routine_phaddsw_xmm_xmm(%struct.State* %state, i64 0, %struct.Memory* %mem)
  ret i32 0
}