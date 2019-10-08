; ModuleID = 'test.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%union.anon = type { i64 }
%struct.State = type {%struct.ArchState, [32 x %union.VectorReg], %struct.ArithFlags, i64, i64, i64, %struct.GPR}

%struct.ArchState = type { i32, i32, %union.anon }
%union.VectorReg = type { %union.vec512_t }
%union.vec512_t = type { %struct.uint64v8_t }
%struct.uint64v8_t = type { [8 x i64] }
%struct.ArithFlags = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.Reg = type { %union.anon }
%struct.GPR = type { i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg }
%struct.float32v8_t = type { [8 x float] }
%struct.int32v8_t = type { [8 x i32] }
%struct.uint16v16_t = type { [16 x i16] }
%struct.uint8v32_t = type { [32 x i8] }
%"class.std::bitset" = type { %struct.uint64v4_t }
%struct.uint64v4_t = type { [4 x i64] }
%struct.anon.2 = type { i8, i8 }
%union.vec128_t = type { %struct.uint128v1_t }
%struct.uint128v1_t = type { [1 x i128] }
%struct.Memory = type { i64 }

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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L7VPSLLDQI3VnWI8vec256_tEEEP6MemoryS5_R5StateT_2VnIS2_E2InIhE(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8*, i8* nocapture readonly, i64) #0 {
  %6 = alloca %struct.uint8v32_t, align 16
  %7 = alloca %struct.uint8v32_t, align 16
  %8 = alloca %struct.uint8v32_t, align 1
  %9 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %8, i64 0, i32 0, i64 0
  call void @my.lifetime.start(i64 32, i8* nonnull %9) #22
  call void @my.memcpy.p0i8.p0i8.i64(i8* nonnull %9, i8* %3, i64 32, i32 1, i1 false) #22
  %10 = and i64 %4, 255
  %11 = icmp ult i64 %10, 16
  %12 = select i1 %11, i64 %10, i64 16
  %13 = sub  i64 16, %12
  %14 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %6, i64 0, i32 0, i64 0
  %15 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %6, i64 0, i32 0, i64 16
  %16 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %7, i64 0, i32 0, i64 0
  %17 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %7, i64 0, i32 0, i64 16
  %18 = icmp eq i64 %13, 0
  br i1 %18, label %336, label %19

; <label>:19:                                     ; preds = %5
  %20 = load i8, i8* %9, align 1
  call void @my.lifetime.start(i64 32, i8* nonnull %14)
  %21 = bitcast %struct.uint8v32_t* %6 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %21, align 16
  %22 = bitcast i8* %15 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %22, align 16
  %23 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %6, i64 0, i32 0, i64 %12
  store i8 %20, i8* %23, align 1
  %24 = bitcast %struct.uint8v32_t* %6 to <16 x i8>*
  %25 = load <16 x i8>, <16 x i8>* %24, align 16
  %26 = bitcast i8* %15 to <16 x i8>*
  %27 = load <16 x i8>, <16 x i8>* %26, align 16
  call void @my.lifetime.end(i64 32, i8* nonnull %14)
  %28 = add   i64 %12, 16
  %29 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %8, i64 0, i32 0, i64 16
  %30 = load i8, i8* %29, align 1
  call void @my.lifetime.start(i64 32, i8* nonnull %16)
  %31 = bitcast %struct.uint8v32_t* %7 to <16 x i8>*
  store <16 x i8> %25, <16 x i8>* %31, align 16
  %32 = bitcast i8* %17 to <16 x i8>*
  store <16 x i8> %27, <16 x i8>* %32, align 16
  %33 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %7, i64 0, i32 0, i64 %28
  store i8 %30, i8* %33, align 1
  %34 = bitcast i8* %17 to <16 x i8>*
  %35 = load <16 x i8>, <16 x i8>* %34, align 16
  call void @my.lifetime.end(i64 32, i8* nonnull %16)
  %36 = icmp eq i64 %13, 1
  br i1 %36, label %336, label %37

; <label>:37:                                     ; preds = %19
  %38 = add   i64 %12, 1
  %39 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %8, i64 0, i32 0, i64 1
  %40 = load i8, i8* %39, align 1
  call void @my.lifetime.start(i64 32, i8* nonnull %14)
  %41 = bitcast %struct.uint8v32_t* %6 to <16 x i8>*
  store <16 x i8> %25, <16 x i8>* %41, align 16
  %42 = bitcast i8* %15 to <16 x i8>*
  store <16 x i8> %35, <16 x i8>* %42, align 16
  %43 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %6, i64 0, i32 0, i64 %38
  store i8 %40, i8* %43, align 1
  %44 = bitcast %struct.uint8v32_t* %6 to <16 x i8>*
  %45 = load <16 x i8>, <16 x i8>* %44, align 16
  %46 = bitcast i8* %15 to <16 x i8>*
  %47 = load <16 x i8>, <16 x i8>* %46, align 16
  call void @my.lifetime.end(i64 32, i8* nonnull %14)
  %48 = add   i64 %12, 17
  %49 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %8, i64 0, i32 0, i64 17
  %50 = load i8, i8* %49, align 1
  call void @my.lifetime.start(i64 32, i8* nonnull %16)
  %51 = bitcast %struct.uint8v32_t* %7 to <16 x i8>*
  store <16 x i8> %45, <16 x i8>* %51, align 16
  %52 = bitcast i8* %17 to <16 x i8>*
  store <16 x i8> %47, <16 x i8>* %52, align 16
  %53 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %7, i64 0, i32 0, i64 %48
  store i8 %50, i8* %53, align 1
  %54 = bitcast i8* %17 to <16 x i8>*
  %55 = load <16 x i8>, <16 x i8>* %54, align 16
  call void @my.lifetime.end(i64 32, i8* nonnull %16)
  %56 = icmp ugt i64 %13, 2
  br i1 %56, label %57, label %336

; <label>:57:                                     ; preds = %37
  %58 = add   i64 %12, 2
  %59 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %8, i64 0, i32 0, i64 2
  %60 = load i8, i8* %59, align 1
  call void @my.lifetime.start(i64 32, i8* nonnull %14)
  %61 = bitcast %struct.uint8v32_t* %6 to <16 x i8>*
  store <16 x i8> %45, <16 x i8>* %61, align 16
  %62 = bitcast i8* %15 to <16 x i8>*
  store <16 x i8> %55, <16 x i8>* %62, align 16
  %63 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %6, i64 0, i32 0, i64 %58
  store i8 %60, i8* %63, align 1
  %64 = bitcast %struct.uint8v32_t* %6 to <16 x i8>*
  %65 = load <16 x i8>, <16 x i8>* %64, align 16
  %66 = bitcast i8* %15 to <16 x i8>*
  %67 = load <16 x i8>, <16 x i8>* %66, align 16
  call void @my.lifetime.end(i64 32, i8* nonnull %14)
  %68 = add   i64 %12, 18
  %69 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %8, i64 0, i32 0, i64 18
  %70 = load i8, i8* %69, align 1
  call void @my.lifetime.start(i64 32, i8* nonnull %16)
  %71 = bitcast %struct.uint8v32_t* %7 to <16 x i8>*
  store <16 x i8> %65, <16 x i8>* %71, align 16
  %72 = bitcast i8* %17 to <16 x i8>*
  store <16 x i8> %67, <16 x i8>* %72, align 16
  %73 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %7, i64 0, i32 0, i64 %68
  store i8 %70, i8* %73, align 1
  %74 = bitcast i8* %17 to <16 x i8>*
  %75 = load <16 x i8>, <16 x i8>* %74, align 16
  call void @my.lifetime.end(i64 32, i8* nonnull %16)
  %76 = icmp eq i64 %13, 3
  br i1 %76, label %336, label %77

; <label>:77:                                     ; preds = %57
  %78 = add   i64 %12, 3
  %79 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %8, i64 0, i32 0, i64 3
  %80 = load i8, i8* %79, align 1
  call void @my.lifetime.start(i64 32, i8* nonnull %14)
  %81 = bitcast %struct.uint8v32_t* %6 to <16 x i8>*
  store <16 x i8> %65, <16 x i8>* %81, align 16
  %82 = bitcast i8* %15 to <16 x i8>*
  store <16 x i8> %75, <16 x i8>* %82, align 16
  %83 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %6, i64 0, i32 0, i64 %78
  store i8 %80, i8* %83, align 1
  %84 = bitcast %struct.uint8v32_t* %6 to <16 x i8>*
  %85 = load <16 x i8>, <16 x i8>* %84, align 16
  %86 = bitcast i8* %15 to <16 x i8>*
  %87 = load <16 x i8>, <16 x i8>* %86, align 16
  call void @my.lifetime.end(i64 32, i8* nonnull %14)
  %88 = add   i64 %12, 19
  %89 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %8, i64 0, i32 0, i64 19
  %90 = load i8, i8* %89, align 1
  call void @my.lifetime.start(i64 32, i8* nonnull %16)
  %91 = bitcast %struct.uint8v32_t* %7 to <16 x i8>*
  store <16 x i8> %85, <16 x i8>* %91, align 16
  %92 = bitcast i8* %17 to <16 x i8>*
  store <16 x i8> %87, <16 x i8>* %92, align 16
  %93 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %7, i64 0, i32 0, i64 %88
  store i8 %90, i8* %93, align 1
  %94 = bitcast i8* %17 to <16 x i8>*
  %95 = load <16 x i8>, <16 x i8>* %94, align 16
  call void @my.lifetime.end(i64 32, i8* nonnull %16)
  %96 = icmp ugt i64 %13, 4
  br i1 %96, label %97, label %336

; <label>:97:                                     ; preds = %77
  %98 = add   i64 %12, 4
  %99 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %8, i64 0, i32 0, i64 4
  %100 = load i8, i8* %99, align 1
  call void @my.lifetime.start(i64 32, i8* nonnull %14)
  %101 = bitcast %struct.uint8v32_t* %6 to <16 x i8>*
  store <16 x i8> %85, <16 x i8>* %101, align 16
  %102 = bitcast i8* %15 to <16 x i8>*
  store <16 x i8> %95, <16 x i8>* %102, align 16
  %103 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %6, i64 0, i32 0, i64 %98
  store i8 %100, i8* %103, align 1
  %104 = bitcast %struct.uint8v32_t* %6 to <16 x i8>*
  %105 = load <16 x i8>, <16 x i8>* %104, align 16
  %106 = bitcast i8* %15 to <16 x i8>*
  %107 = load <16 x i8>, <16 x i8>* %106, align 16
  call void @my.lifetime.end(i64 32, i8* nonnull %14)
  %108 = add   i64 %12, 20
  %109 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %8, i64 0, i32 0, i64 20
  %110 = load i8, i8* %109, align 1
  call void @my.lifetime.start(i64 32, i8* nonnull %16)
  %111 = bitcast %struct.uint8v32_t* %7 to <16 x i8>*
  store <16 x i8> %105, <16 x i8>* %111, align 16
  %112 = bitcast i8* %17 to <16 x i8>*
  store <16 x i8> %107, <16 x i8>* %112, align 16
  %113 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %7, i64 0, i32 0, i64 %108
  store i8 %110, i8* %113, align 1
  %114 = bitcast i8* %17 to <16 x i8>*
  %115 = load <16 x i8>, <16 x i8>* %114, align 16
  call void @my.lifetime.end(i64 32, i8* nonnull %16)
  %116 = icmp eq i64 %13, 5
  br i1 %116, label %336, label %117

; <label>:117:                                    ; preds = %97
  %118 = add   i64 %12, 5
  %119 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %8, i64 0, i32 0, i64 5
  %120 = load i8, i8* %119, align 1
  call void @my.lifetime.start(i64 32, i8* nonnull %14)
  %121 = bitcast %struct.uint8v32_t* %6 to <16 x i8>*
  store <16 x i8> %105, <16 x i8>* %121, align 16
  %122 = bitcast i8* %15 to <16 x i8>*
  store <16 x i8> %115, <16 x i8>* %122, align 16
  %123 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %6, i64 0, i32 0, i64 %118
  store i8 %120, i8* %123, align 1
  %124 = bitcast %struct.uint8v32_t* %6 to <16 x i8>*
  %125 = load <16 x i8>, <16 x i8>* %124, align 16
  %126 = bitcast i8* %15 to <16 x i8>*
  %127 = load <16 x i8>, <16 x i8>* %126, align 16
  call void @my.lifetime.end(i64 32, i8* nonnull %14)
  %128 = add   i64 %12, 21
  %129 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %8, i64 0, i32 0, i64 21
  %130 = load i8, i8* %129, align 1
  call void @my.lifetime.start(i64 32, i8* nonnull %16)
  %131 = bitcast %struct.uint8v32_t* %7 to <16 x i8>*
  store <16 x i8> %125, <16 x i8>* %131, align 16
  %132 = bitcast i8* %17 to <16 x i8>*
  store <16 x i8> %127, <16 x i8>* %132, align 16
  %133 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %7, i64 0, i32 0, i64 %128
  store i8 %130, i8* %133, align 1
  %134 = bitcast i8* %17 to <16 x i8>*
  %135 = load <16 x i8>, <16 x i8>* %134, align 16
  call void @my.lifetime.end(i64 32, i8* nonnull %16)
  %136 = icmp ugt i64 %13, 6
  br i1 %136, label %137, label %336

; <label>:137:                                    ; preds = %117
  %138 = add   i64 %12, 6
  %139 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %8, i64 0, i32 0, i64 6
  %140 = load i8, i8* %139, align 1
  call void @my.lifetime.start(i64 32, i8* nonnull %14)
  %141 = bitcast %struct.uint8v32_t* %6 to <16 x i8>*
  store <16 x i8> %125, <16 x i8>* %141, align 16
  %142 = bitcast i8* %15 to <16 x i8>*
  store <16 x i8> %135, <16 x i8>* %142, align 16
  %143 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %6, i64 0, i32 0, i64 %138
  store i8 %140, i8* %143, align 1
  %144 = bitcast %struct.uint8v32_t* %6 to <16 x i8>*
  %145 = load <16 x i8>, <16 x i8>* %144, align 16
  %146 = bitcast i8* %15 to <16 x i8>*
  %147 = load <16 x i8>, <16 x i8>* %146, align 16
  call void @my.lifetime.end(i64 32, i8* nonnull %14)
  %148 = add   i64 %12, 22
  %149 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %8, i64 0, i32 0, i64 22
  %150 = load i8, i8* %149, align 1
  call void @my.lifetime.start(i64 32, i8* nonnull %16)
  %151 = bitcast %struct.uint8v32_t* %7 to <16 x i8>*
  store <16 x i8> %145, <16 x i8>* %151, align 16
  %152 = bitcast i8* %17 to <16 x i8>*
  store <16 x i8> %147, <16 x i8>* %152, align 16
  %153 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %7, i64 0, i32 0, i64 %148
  store i8 %150, i8* %153, align 1
  %154 = bitcast i8* %17 to <16 x i8>*
  %155 = load <16 x i8>, <16 x i8>* %154, align 16
  call void @my.lifetime.end(i64 32, i8* nonnull %16)
  %156 = icmp eq i64 %13, 7
  br i1 %156, label %336, label %157

; <label>:157:                                    ; preds = %137
  %158 = add   i64 %12, 7
  %159 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %8, i64 0, i32 0, i64 7
  %160 = load i8, i8* %159, align 1
  call void @my.lifetime.start(i64 32, i8* nonnull %14)
  %161 = bitcast %struct.uint8v32_t* %6 to <16 x i8>*
  store <16 x i8> %145, <16 x i8>* %161, align 16
  %162 = bitcast i8* %15 to <16 x i8>*
  store <16 x i8> %155, <16 x i8>* %162, align 16
  %163 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %6, i64 0, i32 0, i64 %158
  store i8 %160, i8* %163, align 1
  %164 = bitcast %struct.uint8v32_t* %6 to <16 x i8>*
  %165 = load <16 x i8>, <16 x i8>* %164, align 16
  %166 = bitcast i8* %15 to <16 x i8>*
  %167 = load <16 x i8>, <16 x i8>* %166, align 16
  call void @my.lifetime.end(i64 32, i8* nonnull %14)
  %168 = add   i64 %12, 23
  %169 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %8, i64 0, i32 0, i64 23
  %170 = load i8, i8* %169, align 1
  call void @my.lifetime.start(i64 32, i8* nonnull %16)
  %171 = bitcast %struct.uint8v32_t* %7 to <16 x i8>*
  store <16 x i8> %165, <16 x i8>* %171, align 16
  %172 = bitcast i8* %17 to <16 x i8>*
  store <16 x i8> %167, <16 x i8>* %172, align 16
  %173 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %7, i64 0, i32 0, i64 %168
  store i8 %170, i8* %173, align 1
  %174 = bitcast i8* %17 to <16 x i8>*
  %175 = load <16 x i8>, <16 x i8>* %174, align 16
  call void @my.lifetime.end(i64 32, i8* nonnull %16)
  %176 = icmp ugt i64 %13, 8
  br i1 %176, label %177, label %336

; <label>:177:                                    ; preds = %157
  %178 = add   i64 %12, 8
  %179 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %8, i64 0, i32 0, i64 8
  %180 = load i8, i8* %179, align 1
  call void @my.lifetime.start(i64 32, i8* nonnull %14)
  %181 = bitcast %struct.uint8v32_t* %6 to <16 x i8>*
  store <16 x i8> %165, <16 x i8>* %181, align 16
  %182 = bitcast i8* %15 to <16 x i8>*
  store <16 x i8> %175, <16 x i8>* %182, align 16
  %183 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %6, i64 0, i32 0, i64 %178
  store i8 %180, i8* %183, align 1
  %184 = bitcast %struct.uint8v32_t* %6 to <16 x i8>*
  %185 = load <16 x i8>, <16 x i8>* %184, align 16
  %186 = bitcast i8* %15 to <16 x i8>*
  %187 = load <16 x i8>, <16 x i8>* %186, align 16
  call void @my.lifetime.end(i64 32, i8* nonnull %14)
  %188 = add   i64 %12, 24
  %189 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %8, i64 0, i32 0, i64 24
  %190 = load i8, i8* %189, align 1
  call void @my.lifetime.start(i64 32, i8* nonnull %16)
  %191 = bitcast %struct.uint8v32_t* %7 to <16 x i8>*
  store <16 x i8> %185, <16 x i8>* %191, align 16
  %192 = bitcast i8* %17 to <16 x i8>*
  store <16 x i8> %187, <16 x i8>* %192, align 16
  %193 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %7, i64 0, i32 0, i64 %188
  store i8 %190, i8* %193, align 1
  %194 = bitcast i8* %17 to <16 x i8>*
  %195 = load <16 x i8>, <16 x i8>* %194, align 16
  call void @my.lifetime.end(i64 32, i8* nonnull %16)
  %196 = icmp eq i64 %13, 9
  br i1 %196, label %336, label %197

; <label>:197:                                    ; preds = %177
  %198 = add   i64 %12, 9
  %199 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %8, i64 0, i32 0, i64 9
  %200 = load i8, i8* %199, align 1
  call void @my.lifetime.start(i64 32, i8* nonnull %14)
  %201 = bitcast %struct.uint8v32_t* %6 to <16 x i8>*
  store <16 x i8> %185, <16 x i8>* %201, align 16
  %202 = bitcast i8* %15 to <16 x i8>*
  store <16 x i8> %195, <16 x i8>* %202, align 16
  %203 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %6, i64 0, i32 0, i64 %198
  store i8 %200, i8* %203, align 1
  %204 = bitcast %struct.uint8v32_t* %6 to <16 x i8>*
  %205 = load <16 x i8>, <16 x i8>* %204, align 16
  %206 = bitcast i8* %15 to <16 x i8>*
  %207 = load <16 x i8>, <16 x i8>* %206, align 16
  call void @my.lifetime.end(i64 32, i8* nonnull %14)
  %208 = add   i64 %12, 25
  %209 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %8, i64 0, i32 0, i64 25
  %210 = load i8, i8* %209, align 1
  call void @my.lifetime.start(i64 32, i8* nonnull %16)
  %211 = bitcast %struct.uint8v32_t* %7 to <16 x i8>*
  store <16 x i8> %205, <16 x i8>* %211, align 16
  %212 = bitcast i8* %17 to <16 x i8>*
  store <16 x i8> %207, <16 x i8>* %212, align 16
  %213 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %7, i64 0, i32 0, i64 %208
  store i8 %210, i8* %213, align 1
  %214 = bitcast i8* %17 to <16 x i8>*
  %215 = load <16 x i8>, <16 x i8>* %214, align 16
  call void @my.lifetime.end(i64 32, i8* nonnull %16)
  %216 = icmp ugt i64 %13, 10
  br i1 %216, label %217, label %336

; <label>:217:                                    ; preds = %197
  %218 = add   i64 %12, 10
  %219 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %8, i64 0, i32 0, i64 10
  %220 = load i8, i8* %219, align 1
  call void @my.lifetime.start(i64 32, i8* nonnull %14)
  %221 = bitcast %struct.uint8v32_t* %6 to <16 x i8>*
  store <16 x i8> %205, <16 x i8>* %221, align 16
  %222 = bitcast i8* %15 to <16 x i8>*
  store <16 x i8> %215, <16 x i8>* %222, align 16
  %223 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %6, i64 0, i32 0, i64 %218
  store i8 %220, i8* %223, align 1
  %224 = bitcast %struct.uint8v32_t* %6 to <16 x i8>*
  %225 = load <16 x i8>, <16 x i8>* %224, align 16
  %226 = bitcast i8* %15 to <16 x i8>*
  %227 = load <16 x i8>, <16 x i8>* %226, align 16
  call void @my.lifetime.end(i64 32, i8* nonnull %14)
  %228 = add   i64 %12, 26
  %229 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %8, i64 0, i32 0, i64 26
  %230 = load i8, i8* %229, align 1
  call void @my.lifetime.start(i64 32, i8* nonnull %16)
  %231 = bitcast %struct.uint8v32_t* %7 to <16 x i8>*
  store <16 x i8> %225, <16 x i8>* %231, align 16
  %232 = bitcast i8* %17 to <16 x i8>*
  store <16 x i8> %227, <16 x i8>* %232, align 16
  %233 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %7, i64 0, i32 0, i64 %228
  store i8 %230, i8* %233, align 1
  %234 = bitcast i8* %17 to <16 x i8>*
  %235 = load <16 x i8>, <16 x i8>* %234, align 16
  call void @my.lifetime.end(i64 32, i8* nonnull %16)
  %236 = icmp eq i64 %13, 11
  br i1 %236, label %336, label %237

; <label>:237:                                    ; preds = %217
  %238 = add   i64 %12, 11
  %239 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %8, i64 0, i32 0, i64 11
  %240 = load i8, i8* %239, align 1
  call void @my.lifetime.start(i64 32, i8* nonnull %14)
  %241 = bitcast %struct.uint8v32_t* %6 to <16 x i8>*
  store <16 x i8> %225, <16 x i8>* %241, align 16
  %242 = bitcast i8* %15 to <16 x i8>*
  store <16 x i8> %235, <16 x i8>* %242, align 16
  %243 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %6, i64 0, i32 0, i64 %238
  store i8 %240, i8* %243, align 1
  %244 = bitcast %struct.uint8v32_t* %6 to <16 x i8>*
  %245 = load <16 x i8>, <16 x i8>* %244, align 16
  %246 = bitcast i8* %15 to <16 x i8>*
  %247 = load <16 x i8>, <16 x i8>* %246, align 16
  call void @my.lifetime.end(i64 32, i8* nonnull %14)
  %248 = add   i64 %12, 27
  %249 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %8, i64 0, i32 0, i64 27
  %250 = load i8, i8* %249, align 1
  call void @my.lifetime.start(i64 32, i8* nonnull %16)
  %251 = bitcast %struct.uint8v32_t* %7 to <16 x i8>*
  store <16 x i8> %245, <16 x i8>* %251, align 16
  %252 = bitcast i8* %17 to <16 x i8>*
  store <16 x i8> %247, <16 x i8>* %252, align 16
  %253 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %7, i64 0, i32 0, i64 %248
  store i8 %250, i8* %253, align 1
  %254 = bitcast i8* %17 to <16 x i8>*
  %255 = load <16 x i8>, <16 x i8>* %254, align 16
  call void @my.lifetime.end(i64 32, i8* nonnull %16)
  %256 = icmp ugt i64 %13, 12
  br i1 %256, label %257, label %336

; <label>:257:                                    ; preds = %237
  %258 = add   i64 %12, 12
  %259 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %8, i64 0, i32 0, i64 12
  %260 = load i8, i8* %259, align 1
  call void @my.lifetime.start(i64 32, i8* nonnull %14)
  %261 = bitcast %struct.uint8v32_t* %6 to <16 x i8>*
  store <16 x i8> %245, <16 x i8>* %261, align 16
  %262 = bitcast i8* %15 to <16 x i8>*
  store <16 x i8> %255, <16 x i8>* %262, align 16
  %263 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %6, i64 0, i32 0, i64 %258
  store i8 %260, i8* %263, align 1
  %264 = bitcast %struct.uint8v32_t* %6 to <16 x i8>*
  %265 = load <16 x i8>, <16 x i8>* %264, align 16
  %266 = bitcast i8* %15 to <16 x i8>*
  %267 = load <16 x i8>, <16 x i8>* %266, align 16
  call void @my.lifetime.end(i64 32, i8* nonnull %14)
  %268 = add   i64 %12, 28
  %269 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %8, i64 0, i32 0, i64 28
  %270 = load i8, i8* %269, align 1
  call void @my.lifetime.start(i64 32, i8* nonnull %16)
  %271 = bitcast %struct.uint8v32_t* %7 to <16 x i8>*
  store <16 x i8> %265, <16 x i8>* %271, align 16
  %272 = bitcast i8* %17 to <16 x i8>*
  store <16 x i8> %267, <16 x i8>* %272, align 16
  %273 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %7, i64 0, i32 0, i64 %268
  store i8 %270, i8* %273, align 1
  %274 = bitcast i8* %17 to <16 x i8>*
  %275 = load <16 x i8>, <16 x i8>* %274, align 16
  call void @my.lifetime.end(i64 32, i8* nonnull %16)
  %276 = icmp eq i64 %13, 13
  br i1 %276, label %336, label %277

; <label>:277:                                    ; preds = %257
  %278 = add   i64 %12, 13
  %279 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %8, i64 0, i32 0, i64 13
  %280 = load i8, i8* %279, align 1
  call void @my.lifetime.start(i64 32, i8* nonnull %14)
  %281 = bitcast %struct.uint8v32_t* %6 to <16 x i8>*
  store <16 x i8> %265, <16 x i8>* %281, align 16
  %282 = bitcast i8* %15 to <16 x i8>*
  store <16 x i8> %275, <16 x i8>* %282, align 16
  %283 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %6, i64 0, i32 0, i64 %278
  store i8 %280, i8* %283, align 1
  %284 = bitcast %struct.uint8v32_t* %6 to <16 x i8>*
  %285 = load <16 x i8>, <16 x i8>* %284, align 16
  %286 = bitcast i8* %15 to <16 x i8>*
  %287 = load <16 x i8>, <16 x i8>* %286, align 16
  call void @my.lifetime.end(i64 32, i8* nonnull %14)
  %288 = add   i64 %12, 29
  %289 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %8, i64 0, i32 0, i64 29
  %290 = load i8, i8* %289, align 1
  call void @my.lifetime.start(i64 32, i8* nonnull %16)
  %291 = bitcast %struct.uint8v32_t* %7 to <16 x i8>*
  store <16 x i8> %285, <16 x i8>* %291, align 16
  %292 = bitcast i8* %17 to <16 x i8>*
  store <16 x i8> %287, <16 x i8>* %292, align 16
  %293 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %7, i64 0, i32 0, i64 %288
  store i8 %290, i8* %293, align 1
  %294 = bitcast i8* %17 to <16 x i8>*
  %295 = load <16 x i8>, <16 x i8>* %294, align 16
  call void @my.lifetime.end(i64 32, i8* nonnull %16)
  %296 = icmp ugt i64 %13, 14
  br i1 %296, label %297, label %336

; <label>:297:                                    ; preds = %277
  %298 = add   i64 %12, 14
  %299 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %8, i64 0, i32 0, i64 14
  %300 = load i8, i8* %299, align 1
  call void @my.lifetime.start(i64 32, i8* nonnull %14)
  %301 = bitcast %struct.uint8v32_t* %6 to <16 x i8>*
  store <16 x i8> %285, <16 x i8>* %301, align 16
  %302 = bitcast i8* %15 to <16 x i8>*
  store <16 x i8> %295, <16 x i8>* %302, align 16
  %303 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %6, i64 0, i32 0, i64 %298
  store i8 %300, i8* %303, align 1
  %304 = bitcast %struct.uint8v32_t* %6 to <16 x i8>*
  %305 = load <16 x i8>, <16 x i8>* %304, align 16
  %306 = bitcast i8* %15 to <16 x i8>*
  %307 = load <16 x i8>, <16 x i8>* %306, align 16
  call void @my.lifetime.end(i64 32, i8* nonnull %14)
  %308 = add   i64 %12, 30
  %309 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %8, i64 0, i32 0, i64 30
  %310 = load i8, i8* %309, align 1
  call void @my.lifetime.start(i64 32, i8* nonnull %16)
  %311 = bitcast %struct.uint8v32_t* %7 to <16 x i8>*
  store <16 x i8> %305, <16 x i8>* %311, align 16
  %312 = bitcast i8* %17 to <16 x i8>*
  store <16 x i8> %307, <16 x i8>* %312, align 16
  %313 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %7, i64 0, i32 0, i64 %308
  store i8 %310, i8* %313, align 1
  %314 = bitcast i8* %17 to <16 x i8>*
  %315 = load <16 x i8>, <16 x i8>* %314, align 16
  call void @my.lifetime.end(i64 32, i8* nonnull %16)
  %316 = icmp eq i64 %13, 15
  br i1 %316, label %336, label %317

; <label>:317:                                    ; preds = %297
  %318 = add   i64 %12, 15
  %319 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %8, i64 0, i32 0, i64 15
  %320 = load i8, i8* %319, align 1
  call void @my.lifetime.start(i64 32, i8* nonnull %14)
  %321 = bitcast %struct.uint8v32_t* %6 to <16 x i8>*
  store <16 x i8> %305, <16 x i8>* %321, align 16
  %322 = bitcast i8* %15 to <16 x i8>*
  store <16 x i8> %315, <16 x i8>* %322, align 16
  %323 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %6, i64 0, i32 0, i64 %318
  store i8 %320, i8* %323, align 1
  %324 = bitcast %struct.uint8v32_t* %6 to <16 x i8>*
  %325 = load <16 x i8>, <16 x i8>* %324, align 16
  %326 = bitcast i8* %15 to <16 x i8>*
  %327 = load <16 x i8>, <16 x i8>* %326, align 16
  call void @my.lifetime.end(i64 32, i8* nonnull %14)
  %328 = add   i64 %12, 31
  %329 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %8, i64 0, i32 0, i64 31
  %330 = load i8, i8* %329, align 1
  call void @my.lifetime.start(i64 32, i8* nonnull %16)
  %331 = bitcast %struct.uint8v32_t* %7 to <16 x i8>*
  store <16 x i8> %325, <16 x i8>* %331, align 16
  %332 = bitcast i8* %17 to <16 x i8>*
  store <16 x i8> %327, <16 x i8>* %332, align 16
  %333 = getelementptr inbounds %struct.uint8v32_t, %struct.uint8v32_t* %7, i64 0, i32 0, i64 %328
  store i8 %330, i8* %333, align 1
  %334 = bitcast i8* %17 to <16 x i8>*
  %335 = load <16 x i8>, <16 x i8>* %334, align 16
  call void @my.lifetime.end(i64 32, i8* nonnull %16)
  br label %336

; <label>:336:                                    ; preds = %317, %297, %277, %257, %237, %217, %197, %177, %157, %137, %117, %97, %77, %57, %37, %19, %5
  %337 = phi <16 x i8> [ %325, %317 ], [ %305, %297 ], [ %285, %277 ], [ %265, %257 ], [ %245, %237 ], [ %225, %217 ], [ %205, %197 ], [ %185, %177 ], [ %165, %157 ], [ %145, %137 ], [ %125, %117 ], [ %105, %97 ], [ %85, %77 ], [ %65, %57 ], [ %45, %37 ], [ %25, %19 ], [ zeroinitializer, %5 ]
  %338 = phi <16 x i8> [ %335, %317 ], [ %315, %297 ], [ %295, %277 ], [ %275, %257 ], [ %255, %237 ], [ %235, %217 ], [ %215, %197 ], [ %195, %177 ], [ %175, %157 ], [ %155, %137 ], [ %135, %117 ], [ %115, %97 ], [ %95, %77 ], [ %75, %57 ], [ %55, %37 ], [ %35, %19 ], [ zeroinitializer, %5 ]
  %339 = bitcast i8* %2 to <16 x i8>*
  store <16 x i8> %337, <16 x i8>* %339, align 1
  %340 = getelementptr inbounds i8, i8* %2, i64 16
  %341 = bitcast i8* %340 to <16 x i8>*
  store <16 x i8> %338, <16 x i8>* %341, align 1
  call void @my.lifetime.end(i64 32, i8* nonnull %9) #22
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_vpslldq_ymm_ymm_imm8(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #19 {
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
  %YMM2 = bitcast %union.VectorReg* %9 to %"class.std::bitset"*
  %10 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 5
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L7VPSLLDQI3VnWI8vec256_tEEEP6MemoryS5_R5StateT_2VnIS2_E2InIhE(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i64 10)
  ret %struct.Memory* %14
}

define i32 @main() {
entry:
  %state = alloca %struct.State
  %mem = alloca %struct.Memory
  %addr1 = getelementptr inbounds %struct.State, %struct.State* %state, i64 0, i32 6, i32 1, i32 0, i32 0
  %addr2 = getelementptr inbounds %struct.State, %struct.State* %state, i64 0, i32 6, i32 3, i32 0, i32 0
  %addr3 = getelementptr inbounds %struct.State, %struct.State* %state, i64 0, i32 6, i32 5, i32 0, i32 0
  %addr4 = getelementptr inbounds %struct.State, %struct.State* %state, i64 0, i32 6, i32 7, i32 0, i32 0
  %addr5 = getelementptr inbounds %struct.State, %struct.State* %state, i64 0, i32 6, i32 9, i32 0, i32 0
  %addr6 = getelementptr inbounds %struct.State, %struct.State* %state, i64 0, i32 6, i32 11, i32 0, i32 0
  %addr7 = getelementptr inbounds %struct.State, %struct.State* %state, i64 0, i32 6, i32 13, i32 0, i32 0
  %addr8 = getelementptr inbounds %struct.State, %struct.State* %state, i64 0, i32 6, i32 15, i32 0, i32 0
  %addr9 = getelementptr inbounds %struct.State, %struct.State* %state, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 100, i64* %addr1, align 8
  store i64 200, i64* %addr2, align 8
  store i64 300, i64* %addr3, align 8
  store i64 400, i64* %addr4, align 8
  store i64 500, i64* %addr5, align 8
  store i64 600, i64* %addr6, align 8
  store i64 700, i64* %addr7, align 8
  store i64 800, i64* %addr8, align 8
  store i64 900, i64* %addr9, align 8
  %call = call %struct.Memory* @routine_vpslldq_ymm_ymm_imm8(%struct.State* %state, i64 0, %struct.Memory* %mem)
  ret i32 0
}