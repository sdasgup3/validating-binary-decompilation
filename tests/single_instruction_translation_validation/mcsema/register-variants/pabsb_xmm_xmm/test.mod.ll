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


define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5PABSBI3VnWI8vec128_tE2VnIS2_EEEP6MemoryS7_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly) #0 {
  %5 = alloca <2 x i64>, align 16
  %6 = bitcast <2 x i64>* %5 to { i64, i64 }*
  %7 = alloca <2 x i64>, align 16
  %8 = bitcast <2 x i64>* %7 to { i64, i64 }*
  %9 = bitcast <2 x i64>* %7 to %struct.uint8v16_t*
  %10 = bitcast <2 x i64>* %7 to i8*
  call void @my.lifetime.start(i64 16, i8* nonnull %10) #22
  %11 = bitcast i8* %3 to <2 x i64>*
  %12 = load <2 x i64>, <2 x i64>* %11, align 1
  store <2 x i64> %12, <2 x i64>* %7, align 16
  %13 = bitcast <2 x i64>* %5 to i8*
  %14 = getelementptr inbounds <2 x i64>, <2 x i64>* %5, i64 0, i64 0
  %15 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %6, i64 0, i32 1
  %16 = bitcast <2 x i64>* %5 to [16 x i8]*
  %17 = extractelement <2 x i64> %12, i32 0
  %18 = trunc i64 %17 to i8
  %19 = ashr i8 %18, 7
  %20 = xor i8 %19, %18
  %21 = sub i8 %20, %19
  call void @my.lifetime.start(i64 16, i8* nonnull %13)
  store <2 x i64> zeroinitializer, <2 x i64>* %5, align 16
  %22 = bitcast <2 x i64>* %5 to i8*
  store i8 %21, i8* %22, align 16
  %23 = load i64, i64* %14, align 16
  call void @my.lifetime.end(i64 16, i8* nonnull %13)
  %24 = lshr i64 %17, 8
  %25 = trunc i64 %24 to i8
  %26 = ashr i8 %25, 7
  %27 = xor i8 %26, %25
  %28 = sub i8 %27, %26
  call void @my.lifetime.start(i64 16, i8* nonnull %13)
  store i64 %23, i64* %14, align 16
  store i64 0, i64* %15, align 8
  %29 = getelementptr inbounds [16 x i8], [16 x i8]* %16, i64 0, i64 1
  store i8 %28, i8* %29, align 1
  %30 = load i64, i64* %14, align 16
  call void @my.lifetime.end(i64 16, i8* nonnull %13)
  %31 = lshr i64 %17, 16
  %32 = trunc i64 %31 to i8
  %33 = ashr i8 %32, 7
  %34 = xor i8 %33, %32
  %35 = sub i8 %34, %33
  call void @my.lifetime.start(i64 16, i8* nonnull %13)
  store i64 %30, i64* %14, align 16
  store i64 0, i64* %15, align 8
  %36 = getelementptr inbounds [16 x i8], [16 x i8]* %16, i64 0, i64 2
  store i8 %35, i8* %36, align 2
  %37 = load i64, i64* %14, align 16
  call void @my.lifetime.end(i64 16, i8* nonnull %13)
  %38 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %9, i64 0, i32 0, i64 3
  %39 = load i8, i8* %38, align 1
  %40 = ashr i8 %39, 7
  %41 = xor i8 %40, %39
  %42 = sub i8 %41, %40
  call void @my.lifetime.start(i64 16, i8* nonnull %13)
  store i64 %37, i64* %14, align 16
  store i64 0, i64* %15, align 8
  %43 = getelementptr inbounds [16 x i8], [16 x i8]* %16, i64 0, i64 3
  store i8 %42, i8* %43, align 1
  %44 = load i64, i64* %14, align 16
  call void @my.lifetime.end(i64 16, i8* nonnull %13)
  %45 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %9, i64 0, i32 0, i64 4
  %46 = load i8, i8* %45, align 4
  %47 = ashr i8 %46, 7
  %48 = xor i8 %47, %46
  %49 = sub i8 %48, %47
  call void @my.lifetime.start(i64 16, i8* nonnull %13)
  store i64 %44, i64* %14, align 16
  store i64 0, i64* %15, align 8
  %50 = getelementptr inbounds [16 x i8], [16 x i8]* %16, i64 0, i64 4
  store i8 %49, i8* %50, align 4
  %51 = load i64, i64* %14, align 16
  call void @my.lifetime.end(i64 16, i8* nonnull %13)
  %52 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %9, i64 0, i32 0, i64 5
  %53 = load i8, i8* %52, align 1
  %54 = ashr i8 %53, 7
  %55 = xor i8 %54, %53
  %56 = sub i8 %55, %54
  call void @my.lifetime.start(i64 16, i8* nonnull %13)
  store i64 %51, i64* %14, align 16
  store i64 0, i64* %15, align 8
  %57 = getelementptr inbounds [16 x i8], [16 x i8]* %16, i64 0, i64 5
  store i8 %56, i8* %57, align 1
  %58 = load i64, i64* %14, align 16
  call void @my.lifetime.end(i64 16, i8* nonnull %13)
  %59 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %9, i64 0, i32 0, i64 6
  %60 = load i8, i8* %59, align 2
  %61 = ashr i8 %60, 7
  %62 = xor i8 %61, %60
  %63 = sub i8 %62, %61
  call void @my.lifetime.start(i64 16, i8* nonnull %13)
  store i64 %58, i64* %14, align 16
  store i64 0, i64* %15, align 8
  %64 = getelementptr inbounds [16 x i8], [16 x i8]* %16, i64 0, i64 6
  store i8 %63, i8* %64, align 2
  %65 = load i64, i64* %14, align 16
  call void @my.lifetime.end(i64 16, i8* nonnull %13)
  %66 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %9, i64 0, i32 0, i64 7
  %67 = load i8, i8* %66, align 1
  %68 = ashr i8 %67, 7
  %69 = xor i8 %68, %67
  %70 = sub i8 %69, %68
  call void @my.lifetime.start(i64 16, i8* nonnull %13)
  store i64 %65, i64* %14, align 16
  store i64 0, i64* %15, align 8
  %71 = getelementptr inbounds [16 x i8], [16 x i8]* %16, i64 0, i64 7
  store i8 %70, i8* %71, align 1
  %72 = load i64, i64* %14, align 16
  call void @my.lifetime.end(i64 16, i8* nonnull %13)
  %73 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %8, i64 0, i32 1
  %74 = bitcast i64* %73 to i8*
  %75 = load i8, i8* %74, align 8
  %76 = ashr i8 %75, 7
  %77 = xor i8 %76, %75
  %78 = sub i8 %77, %76
  call void @my.lifetime.start(i64 16, i8* nonnull %13)
  store i64 %72, i64* %14, align 16
  store i64 0, i64* %15, align 8
  %79 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %6, i64 0, i32 1
  %80 = bitcast i64* %79 to i8*
  store i8 %78, i8* %80, align 8
  %81 = load i64, i64* %15, align 8
  call void @my.lifetime.end(i64 16, i8* nonnull %13)
  %82 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %9, i64 0, i32 0, i64 9
  %83 = load i8, i8* %82, align 1
  %84 = ashr i8 %83, 7
  %85 = xor i8 %84, %83
  %86 = sub i8 %85, %84
  call void @my.lifetime.start(i64 16, i8* nonnull %13)
  store i64 %72, i64* %14, align 16
  store i64 %81, i64* %15, align 8
  %87 = getelementptr inbounds [16 x i8], [16 x i8]* %16, i64 0, i64 9
  store i8 %86, i8* %87, align 1
  %88 = load i64, i64* %15, align 8
  call void @my.lifetime.end(i64 16, i8* nonnull %13)
  %89 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %9, i64 0, i32 0, i64 10
  %90 = load i8, i8* %89, align 2
  %91 = ashr i8 %90, 7
  %92 = xor i8 %91, %90
  %93 = sub i8 %92, %91
  call void @my.lifetime.start(i64 16, i8* nonnull %13)
  store i64 %72, i64* %14, align 16
  store i64 %88, i64* %15, align 8
  %94 = getelementptr inbounds [16 x i8], [16 x i8]* %16, i64 0, i64 10
  store i8 %93, i8* %94, align 2
  %95 = load i64, i64* %15, align 8
  call void @my.lifetime.end(i64 16, i8* nonnull %13)
  %96 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %9, i64 0, i32 0, i64 11
  %97 = load i8, i8* %96, align 1
  %98 = ashr i8 %97, 7
  %99 = xor i8 %98, %97
  %100 = sub i8 %99, %98
  call void @my.lifetime.start(i64 16, i8* nonnull %13)
  store i64 %72, i64* %14, align 16
  store i64 %95, i64* %15, align 8
  %101 = getelementptr inbounds [16 x i8], [16 x i8]* %16, i64 0, i64 11
  store i8 %100, i8* %101, align 1
  %102 = load i64, i64* %15, align 8
  call void @my.lifetime.end(i64 16, i8* nonnull %13)
  %103 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %9, i64 0, i32 0, i64 12
  %104 = load i8, i8* %103, align 4
  %105 = ashr i8 %104, 7
  %106 = xor i8 %105, %104
  %107 = sub i8 %106, %105
  call void @my.lifetime.start(i64 16, i8* nonnull %13)
  store i64 %72, i64* %14, align 16
  store i64 %102, i64* %15, align 8
  %108 = getelementptr inbounds [16 x i8], [16 x i8]* %16, i64 0, i64 12
  store i8 %107, i8* %108, align 4
  %109 = load i64, i64* %15, align 8
  call void @my.lifetime.end(i64 16, i8* nonnull %13)
  %110 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %9, i64 0, i32 0, i64 13
  %111 = load i8, i8* %110, align 1
  %112 = ashr i8 %111, 7
  %113 = xor i8 %112, %111
  %114 = sub i8 %113, %112
  call void @my.lifetime.start(i64 16, i8* nonnull %13)
  store i64 %72, i64* %14, align 16
  store i64 %109, i64* %15, align 8
  %115 = getelementptr inbounds [16 x i8], [16 x i8]* %16, i64 0, i64 13
  store i8 %114, i8* %115, align 1
  %116 = load i64, i64* %15, align 8
  call void @my.lifetime.end(i64 16, i8* nonnull %13)
  %117 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %9, i64 0, i32 0, i64 14
  %118 = load i8, i8* %117, align 2
  %119 = ashr i8 %118, 7
  %120 = xor i8 %119, %118
  %121 = sub i8 %120, %119
  call void @my.lifetime.start(i64 16, i8* nonnull %13)
  store i64 %72, i64* %14, align 16
  store i64 %116, i64* %15, align 8
  %122 = getelementptr inbounds [16 x i8], [16 x i8]* %16, i64 0, i64 14
  store i8 %121, i8* %122, align 2
  %123 = load i64, i64* %15, align 8
  call void @my.lifetime.end(i64 16, i8* nonnull %13)
  %124 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %9, i64 0, i32 0, i64 15
  %125 = load i8, i8* %124, align 1
  %126 = ashr i8 %125, 7
  %127 = xor i8 %126, %125
  %128 = sub i8 %127, %126
  call void @my.lifetime.start(i64 16, i8* nonnull %13)
  store i64 %72, i64* %14, align 16
  store i64 %123, i64* %15, align 8
  %129 = getelementptr inbounds [16 x i8], [16 x i8]* %16, i64 0, i64 15
  store i8 %128, i8* %129, align 1
  %130 = load i64, i64* %15, align 8
  call void @my.lifetime.end(i64 16, i8* nonnull %13)
  %131 = lshr i64 %72, 8
  %132 = lshr i64 %72, 16
  %133 = lshr i64 %72, 24
  %134 = lshr i64 %72, 32
  %135 = lshr i64 %72, 40
  %136 = lshr i64 %72, 48
  %137 = lshr i64 %72, 56
  %138 = trunc i64 %72 to i8
  %139 = trunc i64 %131 to i8
  %140 = trunc i64 %132 to i8
  %141 = trunc i64 %133 to i8
  %142 = trunc i64 %134 to i8
  %143 = trunc i64 %135 to i8
  %144 = trunc i64 %136 to i8
  %145 = trunc i64 %137 to i8
  store i8 %138, i8* %2, align 1
  %146 = getelementptr inbounds i8, i8* %2, i64 1
  store i8 %139, i8* %146, align 1
  %147 = getelementptr inbounds i8, i8* %2, i64 2
  store i8 %140, i8* %147, align 1
  %148 = getelementptr inbounds i8, i8* %2, i64 3
  store i8 %141, i8* %148, align 1
  %149 = getelementptr inbounds i8, i8* %2, i64 4
  store i8 %142, i8* %149, align 1
  %150 = getelementptr inbounds i8, i8* %2, i64 5
  store i8 %143, i8* %150, align 1
  %151 = getelementptr inbounds i8, i8* %2, i64 6
  store i8 %144, i8* %151, align 1
  %152 = getelementptr inbounds i8, i8* %2, i64 7
  store i8 %145, i8* %152, align 1
  %153 = trunc i64 %130 to i8
  %154 = getelementptr inbounds i8, i8* %2, i64 8
  store i8 %153, i8* %154, align 1
  %155 = lshr i64 %130, 8
  %156 = trunc i64 %155 to i8
  %157 = getelementptr inbounds i8, i8* %2, i64 9
  store i8 %156, i8* %157, align 1
  %158 = lshr i64 %130, 16
  %159 = trunc i64 %158 to i8
  %160 = getelementptr inbounds i8, i8* %2, i64 10
  store i8 %159, i8* %160, align 1
  %161 = lshr i64 %130, 24
  %162 = trunc i64 %161 to i8
  %163 = getelementptr inbounds i8, i8* %2, i64 11
  store i8 %162, i8* %163, align 1
  %164 = lshr i64 %130, 32
  %165 = trunc i64 %164 to i8
  %166 = getelementptr inbounds i8, i8* %2, i64 12
  store i8 %165, i8* %166, align 1
  %167 = lshr i64 %130, 40
  %168 = trunc i64 %167 to i8
  %169 = getelementptr inbounds i8, i8* %2, i64 13
  store i8 %168, i8* %169, align 1
  %170 = lshr i64 %130, 48
  %171 = trunc i64 %170 to i8
  %172 = getelementptr inbounds i8, i8* %2, i64 14
  store i8 %171, i8* %172, align 1
  %173 = lshr i64 %130, 56
  %174 = trunc i64 %173 to i8
  %175 = getelementptr inbounds i8, i8* %2, i64 15
  store i8 %174, i8* %175, align 1
  call void @my.lifetime.end(i64 16, i8* nonnull %10) #22
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_pabsb_xmm_xmm(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = bitcast %union.vec128_t* %XMM2 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 5
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5PABSBI3VnWI8vec128_tE2VnIS2_EEEP6MemoryS7_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11)
  ret %struct.Memory* %14
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

  %call = call %struct.Memory* @routine_pabsb_xmm_xmm(%struct.State* %state, i64 0, %struct.Memory* %mem)
  ret i32 0
}