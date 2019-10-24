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


define internal %struct.Memory* @_ZN12_GLOBAL__N_1L6PSADBWI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i8* nocapture readonly) #0 {
  %6 = alloca <2 x i64>, align 16
  %7 = bitcast <2 x i64>* %6 to { i64, i64 }*
  %8 = bitcast <2 x i64>* %6 to %struct.uint8v16_t*
  %9 = alloca <2 x i64>, align 16
  %10 = bitcast <2 x i64>* %9 to { i64, i64 }*
  %11 = bitcast <2 x i64>* %9 to %struct.uint8v16_t*
  %12 = bitcast <2 x i64>* %6 to i8*
  call void @my.lifetime.start(i64 16, i8* nonnull %12) #22
  %13 = bitcast i8* %3 to <2 x i64>*
  %14 = load <2 x i64>, <2 x i64>* %13, align 1
  store <2 x i64> %14, <2 x i64>* %6, align 16
  %15 = bitcast <2 x i64>* %9 to i8*
  call void @my.lifetime.start(i64 16, i8* nonnull %15) #22
  %16 = bitcast i8* %4 to <2 x i64>*
  %17 = load <2 x i64>, <2 x i64>* %16, align 1
  store <2 x i64> %17, <2 x i64>* %9, align 16
  %18 = extractelement <2 x i64> %14, i32 0
  %19 = trunc i64 %18 to i8
  %20 = extractelement <2 x i64> %17, i32 0
  %21 = trunc i64 %20 to i8
  %22 = icmp uge i8 %19, %21
  %23 = sub i64 %18, %20
  %24 = sub i64 %20, %18
  %25 = select i1 %22, i64 %23, i64 %24
  %26 = and i64 %25, 255
  %27 = lshr i64 %18, 8
  %28 = trunc i64 %27 to i8
  %29 = lshr i64 %20, 8
  %30 = trunc i64 %29 to i8
  %31 = icmp uge i8 %28, %30
  %32 = sub  i64 %27, %29
  %33 = sub  i64 %29, %27
  %34 = select i1 %31, i64 %32, i64 %33
  %35 = and i64 %34, 255
  %36 = add   i64 %35, %26
  %37 = lshr i64 %18, 16
  %38 = trunc i64 %37 to i8
  %39 = lshr i64 %20, 16
  %40 = trunc i64 %39 to i8
  %41 = icmp uge i8 %38, %40
  %42 = sub  i64 %37, %39
  %43 = sub  i64 %39, %37
  %44 = select i1 %41, i64 %42, i64 %43
  %45 = and i64 %44, 255
  %46 = add   i64 %45, %36
  %47 = lshr i64 %18, 24
  %48 = trunc i64 %47 to i8
  %49 = lshr i64 %20, 24
  %50 = trunc i64 %49 to i8
  %51 = icmp uge i8 %48, %50
  %52 = sub  i64 %47, %49
  %53 = sub  i64 %49, %47
  %54 = select i1 %51, i64 %52, i64 %53
  %55 = and i64 %54, 255
  %56 = add   i64 %55, %46
  %57 = lshr i64 %18, 32
  %58 = trunc i64 %57 to i8
  %59 = lshr i64 %20, 32
  %60 = trunc i64 %59 to i8
  %61 = icmp uge i8 %58, %60
  %62 = sub  i64 %57, %59
  %63 = sub  i64 %59, %57
  %64 = select i1 %61, i64 %62, i64 %63
  %65 = and i64 %64, 255
  %66 = add   i64 %65, %56
  %67 = lshr i64 %18, 40
  %68 = trunc i64 %67 to i8
  %69 = lshr i64 %20, 40
  %70 = trunc i64 %69 to i8
  %71 = icmp uge i8 %68, %70
  %72 = sub  i64 %67, %69
  %73 = sub  i64 %69, %67
  %74 = select i1 %71, i64 %72, i64 %73
  %75 = and i64 %74, 255
  %76 = add   i64 %75, %66
  %77 = lshr i64 %18, 48
  %78 = trunc i64 %77 to i8
  %79 = lshr i64 %20, 48
  %80 = trunc i64 %79 to i8
  %81 = icmp uge i8 %78, %80
  %82 = sub  i64 %77, %79
  %83 = sub  i64 %79, %77
  %84 = select i1 %81, i64 %82, i64 %83
  %85 = and i64 %84, 255
  %86 = add   i64 %85, %76
  %87 = lshr i64 %18, 56
  %88 = trunc i64 %87 to i8
  %89 = lshr i64 %20, 56
  %90 = trunc i64 %89 to i8
  %91 = icmp uge i8 %88, %90
  %92 = sub  i64 %87, %89
  %93 = sub  i64 %89, %87
  %94 = select i1 %91, i64 %92, i64 %93
  %95 = and i64 %94, 255
  %96 = add i64 %95, %86
  %97 = and i64 %96, 65535
  %98 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %7, i64 0, i32 1
  %99 = bitcast i64* %98 to i8*
  %100 = load i8, i8* %99, align 8
  %101 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %10, i64 0, i32 1
  %102 = bitcast i64* %101 to i8*
  %103 = load i8, i8* %102, align 8
  %104 = icmp uge i8 %100, %103
  %105 = sub i8 %100, %103
  %106 = sub i8 %103, %100
  %107 = select i1 %104, i8 %105, i8 %106
  %108 = zext i8 %107 to i64
  %109 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %8, i64 0, i32 0, i64 9
  %110 = load i8, i8* %109, align 1
  %111 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %11, i64 0, i32 0, i64 9
  %112 = load i8, i8* %111, align 1
  %113 = icmp uge i8 %110, %112
  %114 = sub i8 %110, %112
  %115 = sub i8 %112, %110
  %116 = select i1 %113, i8 %114, i8 %115
  %117 = zext i8 %116 to i64
  %118 = add   i64 %117, %108
  %119 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %8, i64 0, i32 0, i64 10
  %120 = load i8, i8* %119, align 2
  %121 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %11, i64 0, i32 0, i64 10
  %122 = load i8, i8* %121, align 2
  %123 = icmp uge i8 %120, %122
  %124 = sub i8 %120, %122
  %125 = sub i8 %122, %120
  %126 = select i1 %123, i8 %124, i8 %125
  %127 = zext i8 %126 to i64
  %128 = add   i64 %127, %118
  %129 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %8, i64 0, i32 0, i64 11
  %130 = load i8, i8* %129, align 1
  %131 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %11, i64 0, i32 0, i64 11
  %132 = load i8, i8* %131, align 1
  %133 = icmp uge i8 %130, %132
  %134 = sub i8 %130, %132
  %135 = sub i8 %132, %130
  %136 = select i1 %133, i8 %134, i8 %135
  %137 = zext i8 %136 to i64
  %138 = add   i64 %137, %128
  %139 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %8, i64 0, i32 0, i64 12
  %140 = load i8, i8* %139, align 4
  %141 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %11, i64 0, i32 0, i64 12
  %142 = load i8, i8* %141, align 4
  %143 = icmp uge i8 %140, %142
  %144 = sub i8 %140, %142
  %145 = sub i8 %142, %140
  %146 = select i1 %143, i8 %144, i8 %145
  %147 = zext i8 %146 to i64
  %148 = add   i64 %147, %138
  %149 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %8, i64 0, i32 0, i64 13
  %150 = load i8, i8* %149, align 1
  %151 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %11, i64 0, i32 0, i64 13
  %152 = load i8, i8* %151, align 1
  %153 = icmp uge i8 %150, %152
  %154 = sub i8 %150, %152
  %155 = sub i8 %152, %150
  %156 = select i1 %153, i8 %154, i8 %155
  %157 = zext i8 %156 to i64
  %158 = add   i64 %157, %148
  %159 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %8, i64 0, i32 0, i64 14
  %160 = load i8, i8* %159, align 2
  %161 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %11, i64 0, i32 0, i64 14
  %162 = load i8, i8* %161, align 2
  %163 = icmp uge i8 %160, %162
  %164 = sub i8 %160, %162
  %165 = sub i8 %162, %160
  %166 = select i1 %163, i8 %164, i8 %165
  %167 = zext i8 %166 to i64
  %168 = add   i64 %167, %158
  %169 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %8, i64 0, i32 0, i64 15
  %170 = load i8, i8* %169, align 1
  %171 = getelementptr inbounds %struct.uint8v16_t, %struct.uint8v16_t* %11, i64 0, i32 0, i64 15
  %172 = load i8, i8* %171, align 1
  %173 = icmp uge i8 %170, %172
  %174 = sub i8 %170, %172
  %175 = sub i8 %172, %170
  %176 = select i1 %173, i8 %174, i8 %175
  %177 = zext i8 %176 to i64
  %178 = add i64 %177, %168
  %179 = and i64 %178, 65535
  %180 = bitcast i8* %2 to i64*
  store i64 %97, i64* %180, align 1
  %181 = getelementptr inbounds i8, i8* %2, i64 8
  %182 = bitcast i8* %181 to i64*
  store i64 %179, i64* %182, align 1
  call void @my.lifetime.end(i64 16, i8* nonnull %15) #22
  call void @my.lifetime.end(i64 16, i8* nonnull %12) #22
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_psadbw_xmm_xmm(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L6PSADBWI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
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

  %call = call %struct.Memory* @routine_psadbw_xmm_xmm(%struct.State* %state, i64 0, %struct.Memory* %mem)
  ret i32 0
}