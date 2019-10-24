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


define internal %struct.Memory* @_ZN12_GLOBAL__N_1L7PADDUSBI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i8* nocapture readonly) #0 {
  %6 = alloca <2 x i64>, align 16
  %7 = bitcast <2 x i64>* %6 to { i64, i64 }*
  %8 = bitcast <2 x i64>* %6 to %struct.uint8v16_t*
  %9 = alloca { i64, i64 }, align 8
  %10 = bitcast { i64, i64 }* %9 to %struct.uint8v16_t*
  %11 = alloca <16 x i8>, align 16
  %12 = bitcast <16 x i8>* %11 to %struct.uint8v16_t*
  %13 = bitcast <2 x i64>* %6 to i8*
  call void @my.lifetime.start(i64 16, i8* nonnull %13) #22
  %14 = bitcast i8* %3 to <2 x i64>*
  %15 = load <2 x i64>, <2 x i64>* %14, align 1
  store <2 x i64> %15, <2 x i64>* %6, align 16
  %16 = bitcast { i64, i64 }* %9 to i8*
  call void @my.lifetime.start(i64 16, i8* nonnull %16) #22
  %17 = bitcast i8* %4 to i64*
  %18 = load i64, i64* %17, align 1
  %19 = getelementptr inbounds i8, i8* %4, i64 8
  %20 = bitcast i8* %19 to i64*
  %21 = load i64, i64* %20, align 1
  %22 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %9, i64 0, i32 0
  store i64 %18, i64* %22, align 8
  %23 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %9, i64 0, i32 1
  store i64 %21, i64* %23, align 8
  %24 = getelementptr inbounds <16 x i8>, <16 x i8>* %11, i64 0, i64 0
  call void @my.lifetime.start(i64 16, i8* nonnull %24) #22
  %25 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %12, i64 0, i32 0, i64 11
  call void @my.memset.p0i8.i64(i8* nonnull %25, i8 0, i64 5, i32 1, i1 false)
  %26 = extractelement <2 x i64> %15, i32 0
  %27 = trunc i64 %26 to i8
  %28 = trunc i64 %18 to i8
  %29 = lshr i64 %26, 8
  %30 = trunc i64 %29 to i8
  %31 = lshr i64 %18, 8
  %32 = trunc i64 %31 to i8
  %33 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %12, i64 0, i32 0, i64 1
  %34 = lshr i64 %26, 16
  %35 = trunc i64 %34 to i8
  %36 = lshr i64 %18, 16
  %37 = trunc i64 %36 to i8
  %38 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %12, i64 0, i32 0, i64 2
  %39 = lshr i64 %26, 24
  %40 = trunc i64 %39 to i8
  %41 = lshr i64 %18, 24
  %42 = trunc i64 %41 to i8
  %43 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %12, i64 0, i32 0, i64 3
  %44 = lshr i64 %26, 32
  %45 = trunc i64 %44 to i8
  %46 = lshr i64 %18, 32
  %47 = trunc i64 %46 to i8
  %48 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %12, i64 0, i32 0, i64 4
  %49 = lshr i64 %26, 40
  %50 = trunc i64 %49 to i8
  %51 = lshr i64 %18, 40
  %52 = trunc i64 %51 to i8
  %53 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %12, i64 0, i32 0, i64 5
  %54 = lshr i64 %26, 48
  %55 = trunc i64 %54 to i8
  %56 = lshr i64 %18, 48
  %57 = trunc i64 %56 to i8
  %58 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %12, i64 0, i32 0, i64 6
  %59 = lshr i64 %26, 56
  %60 = trunc i64 %59 to i8
  %61 = lshr i64 %18, 56
  %62 = trunc i64 %61 to i8
  %63 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %7, i64 0, i32 1
  %64 = bitcast i64* %63 to i8*
  %65 = load i8, i8* %64, align 8
  %66 = trunc i64 %21 to i8
  %67 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %8, i64 0, i32 0, i64 9
  %68 = load i8, i8* %67, align 1
  %69 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %10, i64 0, i32 0, i64 9
  %70 = load i8, i8* %69, align 1
  %71 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %8, i64 0, i32 0, i64 10
  %72 = load i8, i8* %71, align 2
  %73 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %10, i64 0, i32 0, i64 10
  %74 = load i8, i8* %73, align 2
  %75 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %8, i64 0, i32 0, i64 11
  %76 = load i8, i8* %75, align 1
  %77 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %10, i64 0, i32 0, i64 11
  %78 = load i8, i8* %77, align 1
  %79 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %8, i64 0, i32 0, i64 12
  %80 = load i8, i8* %79, align 4
  %81 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %10, i64 0, i32 0, i64 12
  %82 = load i8, i8* %81, align 4
  %83 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %8, i64 0, i32 0, i64 13
  %84 = load i8, i8* %83, align 1
  %85 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %10, i64 0, i32 0, i64 13
  %86 = load i8, i8* %85, align 1
  %87 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %8, i64 0, i32 0, i64 14
  %88 = load i8, i8* %87, align 2
  %89 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %10, i64 0, i32 0, i64 14
  %90 = load i8, i8* %89, align 2
  %91 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %8, i64 0, i32 0, i64 15
  %92 = load i8, i8* %91, align 1
  %93 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %10, i64 0, i32 0, i64 15
  %94 = load i8, i8* %93, align 1
  %95 = insertelement <16 x i8> undef, i8 %28, i32 0
  %96 = insertelement <16 x i8> %95, i8 %32, i32 1
  %97 = insertelement <16 x i8> %96, i8 %37, i32 2
  %98 = insertelement <16 x i8> %97, i8 %42, i32 3
  %99 = insertelement <16 x i8> %98, i8 %47, i32 4
  %100 = insertelement <16 x i8> %99, i8 %52, i32 5
  %101 = insertelement <16 x i8> %100, i8 %57, i32 6
  %102 = insertelement <16 x i8> %101, i8 %62, i32 7
  %103 = insertelement <16 x i8> %102, i8 %66, i32 8
  %104 = insertelement <16 x i8> %103, i8 %70, i32 9
  %105 = insertelement <16 x i8> %104, i8 %74, i32 10
  %106 = insertelement <16 x i8> %105, i8 %78, i32 11
  %107 = insertelement <16 x i8> %106, i8 %82, i32 12
  %108 = insertelement <16 x i8> %107, i8 %86, i32 13
  %109 = insertelement <16 x i8> %108, i8 %90, i32 14
  %110 = insertelement <16 x i8> %109, i8 %94, i32 15
  %111 = insertelement <16 x i8> undef, i8 %27, i32 0
  %112 = insertelement <16 x i8> %111, i8 %30, i32 1
  %113 = insertelement <16 x i8> %112, i8 %35, i32 2
  %114 = insertelement <16 x i8> %113, i8 %40, i32 3
  %115 = insertelement <16 x i8> %114, i8 %45, i32 4
  %116 = insertelement <16 x i8> %115, i8 %50, i32 5
  %117 = insertelement <16 x i8> %116, i8 %55, i32 6
  %118 = insertelement <16 x i8> %117, i8 %60, i32 7
  %119 = insertelement <16 x i8> %118, i8 %65, i32 8
  %120 = insertelement <16 x i8> %119, i8 %68, i32 9
  %121 = insertelement <16 x i8> %120, i8 %72, i32 10
  %122 = insertelement <16 x i8> %121, i8 %76, i32 11
  %123 = insertelement <16 x i8> %122, i8 %80, i32 12
  %124 = insertelement <16 x i8> %123, i8 %84, i32 13
  %125 = insertelement <16 x i8> %124, i8 %88, i32 14
  %126 = insertelement <16 x i8> %125, i8 %92, i32 15
  %127 = add <16 x i8> %110, %126
  %128 = icmp ult <16 x i8> %127, %126
  %129 = select <16 x i1> %128, <16 x i8> <i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>, <16 x i8> %127
  store <16 x i8> %129, <16 x i8>* %11, align 16
  %130 = load i8, i8* %24, align 16
  store i8 %130, i8* %2, align 1
  %131 = load i8, i8* %33, align 1
  %132 = getelementptr inbounds i8, i8* %2, i64 1
  store i8 %131, i8* %132, align 1
  %133 = load i8, i8* %38, align 2
  %134 = getelementptr inbounds i8, i8* %2, i64 2
  store i8 %133, i8* %134, align 1
  %135 = load i8, i8* %43, align 1
  %136 = getelementptr inbounds i8, i8* %2, i64 3
  store i8 %135, i8* %136, align 1
  %137 = load i8, i8* %48, align 4
  %138 = getelementptr inbounds i8, i8* %2, i64 4
  store i8 %137, i8* %138, align 1
  %139 = load i8, i8* %53, align 1
  %140 = getelementptr inbounds i8, i8* %2, i64 5
  store i8 %139, i8* %140, align 1
  %141 = load i8, i8* %58, align 2
  %142 = getelementptr inbounds i8, i8* %2, i64 6
  store i8 %141, i8* %142, align 1
  %143 = getelementptr inbounds i8, i8* %2, i64 7
  %144 = extractelement <16 x i8> %129, i32 7
  store i8 %144, i8* %143, align 1
  %145 = getelementptr inbounds i8, i8* %2, i64 8
  %146 = extractelement <16 x i8> %129, i32 8
  store i8 %146, i8* %145, align 1
  %147 = getelementptr inbounds i8, i8* %2, i64 9
  %148 = extractelement <16 x i8> %129, i32 9
  store i8 %148, i8* %147, align 1
  %149 = getelementptr inbounds i8, i8* %2, i64 10
  %150 = extractelement <16 x i8> %129, i32 10
  store i8 %150, i8* %149, align 1
  %151 = getelementptr inbounds i8, i8* %2, i64 11
  %152 = extractelement <16 x i8> %129, i32 11
  store i8 %152, i8* %151, align 1
  %153 = getelementptr inbounds i8, i8* %2, i64 12
  %154 = extractelement <16 x i8> %129, i32 12
  store i8 %154, i8* %153, align 1
  %155 = getelementptr inbounds i8, i8* %2, i64 13
  %156 = extractelement <16 x i8> %129, i32 13
  store i8 %156, i8* %155, align 1
  %157 = getelementptr inbounds i8, i8* %2, i64 14
  %158 = extractelement <16 x i8> %129, i32 14
  store i8 %158, i8* %157, align 1
  %159 = getelementptr inbounds i8, i8* %2, i64 15
  %160 = extractelement <16 x i8> %129, i32 15
  store i8 %160, i8* %159, align 1
  call void @my.lifetime.end(i64 16, i8* nonnull %24) #22
  call void @my.lifetime.end(i64 16, i8* nonnull %16) #22
  call void @my.lifetime.end(i64 16, i8* nonnull %13) #22
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_paddusb_xmm_xmm(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L7PADDUSBI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
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

  %call = call %struct.Memory* @routine_paddusb_xmm_xmm(%struct.State* %state, i64 0, %struct.Memory* %mem)
  ret i32 0
}