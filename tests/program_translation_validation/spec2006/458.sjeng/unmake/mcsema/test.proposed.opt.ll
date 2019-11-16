; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x62dab4_type = type <{ [4 x i8] }>
%G_0x62dab8_type = type <{ [4 x i8] }>
%G_0x62e4fc_type = type <{ [4 x i8] }>
%G_0x62e500_type = type <{ [4 x i8] }>
%G_0x633b40_type = type <{ [4 x i8] }>
%G_0x63ae48_type = type <{ [4 x i8] }>
%G_0x85f154_type = type <{ [1 x i8] }>
%G_0x8661bc_type = type <{ [4 x i8] }>
%G_0x8661c0_type = type <{ [4 x i8] }>
%G_0x8661d0_type = type <{ [4 x i8] }>
%G_0x866358_type = type <{ [4 x i8] }>
%G_0x866364_type = type <{ [4 x i8] }>
%G_0x86636c_type = type <{ [4 x i8] }>
%G_0x866374_type = type <{ [4 x i8] }>
%G_0x8664a8_type = type <{ [4 x i8] }>
%G_0x8664b4_type = type <{ [4 x i8] }>
%G_0x8664bc_type = type <{ [4 x i8] }>
%G_0x8664c4_type = type <{ [4 x i8] }>
%G_0x8665a8_type = type <{ [4 x i8] }>
%G_0x8665b4_type = type <{ [4 x i8] }>
%G_0x8665bc_type = type <{ [4 x i8] }>
%G_0x8665c4_type = type <{ [4 x i8] }>
%G_0x8666f8_type = type <{ [4 x i8] }>
%G_0x866704_type = type <{ [4 x i8] }>
%G_0x86670c_type = type <{ [4 x i8] }>
%G_0x866714_type = type <{ [4 x i8] }>
%G_0x866790_type = type <{ [4 x i8] }>
%G_0x86bd7c_type = type <{ [4 x i8] }>
%G_0x881de4_type = type <{ [4 x i8] }>
%G_0x882418_type = type <{ [4 x i8] }>
%G_0x882424_type = type <{ [4 x i8] }>
%G_0x88242c_type = type <{ [4 x i8] }>
%G_0x882434_type = type <{ [4 x i8] }>
%G_0x882568_type = type <{ [4 x i8] }>
%G_0x882574_type = type <{ [4 x i8] }>
%G_0x88257c_type = type <{ [4 x i8] }>
%G_0x882584_type = type <{ [4 x i8] }>
%G_0x886bc0_type = type <{ [4 x i8] }>
%G_0x8a1aa8_type = type <{ [4 x i8] }>
%G_0x8a1ab4_type = type <{ [4 x i8] }>
%G_0x8a1abc_type = type <{ [4 x i8] }>
%G_0x8a1ac4_type = type <{ [4 x i8] }>
%G_0x8a1e38_type = type <{ [4 x i8] }>
%G_0x8a1e44_type = type <{ [4 x i8] }>
%G_0x8a1e4c_type = type <{ [4 x i8] }>
%G_0x8a1e54_type = type <{ [4 x i8] }>
%G__0x880b20_type = type <{ [8 x i8] }>
%G__0x8a0a80_type = type <{ [8 x i8] }>
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
%union.anon = type { i64 }
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
%struct.Memory = type opaque

@__bss_start = local_unnamed_addr global %__bss_start_type zeroinitializer
@G_0x62dab4 = local_unnamed_addr global %G_0x62dab4_type zeroinitializer
@G_0x62dab8 = local_unnamed_addr global %G_0x62dab8_type zeroinitializer
@G_0x62e4fc = local_unnamed_addr global %G_0x62e4fc_type zeroinitializer
@G_0x62e500 = local_unnamed_addr global %G_0x62e500_type zeroinitializer
@G_0x633b40 = local_unnamed_addr global %G_0x633b40_type zeroinitializer
@G_0x63ae48 = local_unnamed_addr global %G_0x63ae48_type zeroinitializer
@G_0x85f154 = local_unnamed_addr global %G_0x85f154_type zeroinitializer
@G_0x8661bc = local_unnamed_addr global %G_0x8661bc_type zeroinitializer
@G_0x8661c0 = local_unnamed_addr global %G_0x8661c0_type zeroinitializer
@G_0x8661d0 = local_unnamed_addr global %G_0x8661d0_type zeroinitializer
@G_0x866358 = local_unnamed_addr global %G_0x866358_type zeroinitializer
@G_0x866364 = local_unnamed_addr global %G_0x866364_type zeroinitializer
@G_0x86636c = local_unnamed_addr global %G_0x86636c_type zeroinitializer
@G_0x866374 = local_unnamed_addr global %G_0x866374_type zeroinitializer
@G_0x8664a8 = local_unnamed_addr global %G_0x8664a8_type zeroinitializer
@G_0x8664b4 = local_unnamed_addr global %G_0x8664b4_type zeroinitializer
@G_0x8664bc = local_unnamed_addr global %G_0x8664bc_type zeroinitializer
@G_0x8664c4 = local_unnamed_addr global %G_0x8664c4_type zeroinitializer
@G_0x8665a8 = local_unnamed_addr global %G_0x8665a8_type zeroinitializer
@G_0x8665b4 = local_unnamed_addr global %G_0x8665b4_type zeroinitializer
@G_0x8665bc = local_unnamed_addr global %G_0x8665bc_type zeroinitializer
@G_0x8665c4 = local_unnamed_addr global %G_0x8665c4_type zeroinitializer
@G_0x8666f8 = local_unnamed_addr global %G_0x8666f8_type zeroinitializer
@G_0x866704 = local_unnamed_addr global %G_0x866704_type zeroinitializer
@G_0x86670c = local_unnamed_addr global %G_0x86670c_type zeroinitializer
@G_0x866714 = local_unnamed_addr global %G_0x866714_type zeroinitializer
@G_0x866790 = local_unnamed_addr global %G_0x866790_type zeroinitializer
@G_0x86bd7c = local_unnamed_addr global %G_0x86bd7c_type zeroinitializer
@G_0x881de4 = local_unnamed_addr global %G_0x881de4_type zeroinitializer
@G_0x882418 = local_unnamed_addr global %G_0x882418_type zeroinitializer
@G_0x882424 = local_unnamed_addr global %G_0x882424_type zeroinitializer
@G_0x88242c = local_unnamed_addr global %G_0x88242c_type zeroinitializer
@G_0x882434 = local_unnamed_addr global %G_0x882434_type zeroinitializer
@G_0x882568 = local_unnamed_addr global %G_0x882568_type zeroinitializer
@G_0x882574 = local_unnamed_addr global %G_0x882574_type zeroinitializer
@G_0x88257c = local_unnamed_addr global %G_0x88257c_type zeroinitializer
@G_0x882584 = local_unnamed_addr global %G_0x882584_type zeroinitializer
@G_0x886bc0 = local_unnamed_addr global %G_0x886bc0_type zeroinitializer
@G_0x8a1aa8 = local_unnamed_addr global %G_0x8a1aa8_type zeroinitializer
@G_0x8a1ab4 = local_unnamed_addr global %G_0x8a1ab4_type zeroinitializer
@G_0x8a1abc = local_unnamed_addr global %G_0x8a1abc_type zeroinitializer
@G_0x8a1ac4 = local_unnamed_addr global %G_0x8a1ac4_type zeroinitializer
@G_0x8a1e38 = local_unnamed_addr global %G_0x8a1e38_type zeroinitializer
@G_0x8a1e44 = local_unnamed_addr global %G_0x8a1e44_type zeroinitializer
@G_0x8a1e4c = local_unnamed_addr global %G_0x8a1e4c_type zeroinitializer
@G_0x8a1e54 = local_unnamed_addr global %G_0x8a1e54_type zeroinitializer
@G__0x880b20 = global %G__0x880b20_type zeroinitializer
@G__0x8a0a80 = global %G__0x8a0a80_type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare %struct.Memory* @sub_4026d0.DropaddHolding(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4024b0.SwitchPromoted(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4025e0.removeHolding(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_402470.SwitchColor(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @unmake(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP.i, align 8
  %5 = add i64 %1, 1
  store i64 %5, i64* %3, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %4, i64* %9, align 8
  %10 = load i64, i64* %3, align 8
  store i64 %8, i64* %RBP.i, align 8
  %11 = add i64 %7, -72
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 64
  %13 = zext i1 %12 to i8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %13, i8* %14, align 1
  %15 = trunc i64 %11 to i32
  %16 = and i32 %15, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = xor i64 %8, %11
  %23 = lshr i64 %22, 4
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i64 %11, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i64 %11, 63
  %31 = trunc i64 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i64 %8, 63
  %34 = xor i64 %30, %33
  %35 = add nuw nsw i64 %34, %33
  %36 = icmp eq i64 %35, 2
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %37, i8* %38, align 1
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i1536 = getelementptr inbounds %union.anon, %union.anon* %39, i64 0, i32 0
  store i64 ptrtoint (%G__0x880b20_type* @G__0x880b20 to i64), i64* %RAX.i1536, align 8
  %RDI.i1533 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %40 = add i64 %7, -16
  %41 = load i64, i64* %RDI.i1533, align 8
  %42 = add i64 %10, 21
  store i64 %42, i64* %3, align 8
  %43 = inttoptr i64 %40 to i64*
  store i64 %41, i64* %43, align 8
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i1530 = bitcast %union.anon* %44 to i32*
  %45 = load i64, i64* %RBP.i, align 8
  %46 = add i64 %45, -12
  %47 = load i32, i32* %ESI.i1530, align 4
  %48 = load i64, i64* %3, align 8
  %49 = add i64 %48, 3
  store i64 %49, i64* %3, align 8
  %50 = inttoptr i64 %46 to i32*
  store i32 %47, i32* %50, align 4
  %51 = load i64, i64* %RBP.i, align 8
  %52 = add i64 %51, -8
  %53 = load i64, i64* %3, align 8
  %54 = add i64 %53, 4
  store i64 %54, i64* %3, align 8
  %55 = inttoptr i64 %52 to i64*
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* %RDI.i1533, align 8
  %57 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i1524 = getelementptr inbounds %union.anon, %union.anon* %57, i64 0, i32 0
  %58 = add i64 %51, -12
  %59 = add i64 %53, 8
  store i64 %59, i64* %3, align 8
  %60 = inttoptr i64 %58 to i32*
  %61 = load i32, i32* %60, align 4
  %62 = sext i32 %61 to i64
  %63 = mul nsw i64 %62, 24
  store i64 %63, i64* %RCX.i1524, align 8
  %64 = lshr i64 %63, 63
  %65 = add i64 %63, %56
  store i64 %65, i64* %RDI.i1533, align 8
  %66 = icmp ult i64 %65, %56
  %67 = icmp ult i64 %65, %63
  %68 = or i1 %66, %67
  %69 = zext i1 %68 to i8
  store i8 %69, i8* %14, align 1
  %70 = trunc i64 %65 to i32
  %71 = and i32 %70, 255
  %72 = tail call i32 @llvm.ctpop.i32(i32 %71)
  %73 = trunc i32 %72 to i8
  %74 = and i8 %73, 1
  %75 = xor i8 %74, 1
  store i8 %75, i8* %21, align 1
  %76 = xor i64 %63, %56
  %77 = xor i64 %76, %65
  %78 = lshr i64 %77, 4
  %79 = trunc i64 %78 to i8
  %80 = and i8 %79, 1
  store i8 %80, i8* %26, align 1
  %81 = icmp eq i64 %65, 0
  %82 = zext i1 %81 to i8
  store i8 %82, i8* %29, align 1
  %83 = lshr i64 %65, 63
  %84 = trunc i64 %83 to i8
  store i8 %84, i8* %32, align 1
  %85 = lshr i64 %56, 63
  %86 = xor i64 %83, %85
  %87 = xor i64 %83, %64
  %88 = add nuw nsw i64 %86, %87
  %89 = icmp eq i64 %88, 2
  %90 = zext i1 %89 to i8
  store i8 %90, i8* %38, align 1
  %RSI.i1516 = getelementptr inbounds %union.anon, %union.anon* %44, i64 0, i32 0
  %91 = add i64 %65, 20
  %92 = add i64 %53, 18
  store i64 %92, i64* %3, align 8
  %93 = inttoptr i64 %91 to i32*
  %94 = load i32, i32* %93, align 4
  %95 = zext i32 %94 to i64
  store i64 %95, i64* %RSI.i1516, align 8
  %96 = add i64 %51, -16
  %97 = add i64 %53, 21
  store i64 %97, i64* %3, align 8
  %98 = inttoptr i64 %96 to i32*
  store i32 %94, i32* %98, align 4
  %99 = load i64, i64* %RBP.i, align 8
  %100 = add i64 %99, -8
  %101 = load i64, i64* %3, align 8
  %102 = add i64 %101, 4
  store i64 %102, i64* %3, align 8
  %103 = inttoptr i64 %100 to i64*
  %104 = load i64, i64* %103, align 8
  store i64 %104, i64* %RCX.i1524, align 8
  %105 = add i64 %99, -12
  %106 = add i64 %101, 8
  store i64 %106, i64* %3, align 8
  %107 = inttoptr i64 %105 to i32*
  %108 = load i32, i32* %107, align 4
  %109 = sext i32 %108 to i64
  %110 = mul nsw i64 %109, 24
  store i64 %110, i64* %RDI.i1533, align 8
  %111 = lshr i64 %110, 63
  %112 = add i64 %110, %104
  store i64 %112, i64* %RCX.i1524, align 8
  %113 = icmp ult i64 %112, %104
  %114 = icmp ult i64 %112, %110
  %115 = or i1 %113, %114
  %116 = zext i1 %115 to i8
  store i8 %116, i8* %14, align 1
  %117 = trunc i64 %112 to i32
  %118 = and i32 %117, 255
  %119 = tail call i32 @llvm.ctpop.i32(i32 %118)
  %120 = trunc i32 %119 to i8
  %121 = and i8 %120, 1
  %122 = xor i8 %121, 1
  store i8 %122, i8* %21, align 1
  %123 = xor i64 %110, %104
  %124 = xor i64 %123, %112
  %125 = lshr i64 %124, 4
  %126 = trunc i64 %125 to i8
  %127 = and i8 %126, 1
  store i8 %127, i8* %26, align 1
  %128 = icmp eq i64 %112, 0
  %129 = zext i1 %128 to i8
  store i8 %129, i8* %29, align 1
  %130 = lshr i64 %112, 63
  %131 = trunc i64 %130 to i8
  store i8 %131, i8* %32, align 1
  %132 = lshr i64 %104, 63
  %133 = xor i64 %130, %132
  %134 = xor i64 %130, %111
  %135 = add nuw nsw i64 %133, %134
  %136 = icmp eq i64 %135, 2
  %137 = zext i1 %136 to i8
  store i8 %137, i8* %38, align 1
  %138 = inttoptr i64 %112 to i32*
  %139 = add i64 %101, 17
  store i64 %139, i64* %3, align 8
  %140 = load i32, i32* %138, align 4
  %141 = zext i32 %140 to i64
  store i64 %141, i64* %RSI.i1516, align 8
  %142 = add i64 %99, -20
  %143 = add i64 %101, 20
  store i64 %143, i64* %3, align 8
  %144 = inttoptr i64 %142 to i32*
  store i32 %140, i32* %144, align 4
  %145 = load i64, i64* %RBP.i, align 8
  %146 = add i64 %145, -8
  %147 = load i64, i64* %3, align 8
  %148 = add i64 %147, 4
  store i64 %148, i64* %3, align 8
  %149 = inttoptr i64 %146 to i64*
  %150 = load i64, i64* %149, align 8
  store i64 %150, i64* %RCX.i1524, align 8
  %151 = add i64 %145, -12
  %152 = add i64 %147, 8
  store i64 %152, i64* %3, align 8
  %153 = inttoptr i64 %151 to i32*
  %154 = load i32, i32* %153, align 4
  %155 = sext i32 %154 to i64
  %156 = mul nsw i64 %155, 24
  store i64 %156, i64* %RDI.i1533, align 8
  %157 = lshr i64 %156, 63
  %158 = add i64 %156, %150
  store i64 %158, i64* %RCX.i1524, align 8
  %159 = icmp ult i64 %158, %150
  %160 = icmp ult i64 %158, %156
  %161 = or i1 %159, %160
  %162 = zext i1 %161 to i8
  store i8 %162, i8* %14, align 1
  %163 = trunc i64 %158 to i32
  %164 = and i32 %163, 255
  %165 = tail call i32 @llvm.ctpop.i32(i32 %164)
  %166 = trunc i32 %165 to i8
  %167 = and i8 %166, 1
  %168 = xor i8 %167, 1
  store i8 %168, i8* %21, align 1
  %169 = xor i64 %156, %150
  %170 = xor i64 %169, %158
  %171 = lshr i64 %170, 4
  %172 = trunc i64 %171 to i8
  %173 = and i8 %172, 1
  store i8 %173, i8* %26, align 1
  %174 = icmp eq i64 %158, 0
  %175 = zext i1 %174 to i8
  store i8 %175, i8* %29, align 1
  %176 = lshr i64 %158, 63
  %177 = trunc i64 %176 to i8
  store i8 %177, i8* %32, align 1
  %178 = lshr i64 %150, 63
  %179 = xor i64 %176, %178
  %180 = xor i64 %176, %157
  %181 = add nuw nsw i64 %179, %180
  %182 = icmp eq i64 %181, 2
  %183 = zext i1 %182 to i8
  store i8 %183, i8* %38, align 1
  %184 = add i64 %158, 4
  %185 = add i64 %147, 18
  store i64 %185, i64* %3, align 8
  %186 = inttoptr i64 %184 to i32*
  %187 = load i32, i32* %186, align 4
  %188 = zext i32 %187 to i64
  store i64 %188, i64* %RSI.i1516, align 8
  %189 = add i64 %145, -24
  %190 = add i64 %147, 21
  store i64 %190, i64* %3, align 8
  %191 = inttoptr i64 %189 to i32*
  store i32 %187, i32* %191, align 4
  %192 = load i64, i64* %RBP.i, align 8
  %193 = add i64 %192, -8
  %194 = load i64, i64* %3, align 8
  %195 = add i64 %194, 4
  store i64 %195, i64* %3, align 8
  %196 = inttoptr i64 %193 to i64*
  %197 = load i64, i64* %196, align 8
  store i64 %197, i64* %RCX.i1524, align 8
  %198 = add i64 %192, -12
  %199 = add i64 %194, 8
  store i64 %199, i64* %3, align 8
  %200 = inttoptr i64 %198 to i32*
  %201 = load i32, i32* %200, align 4
  %202 = sext i32 %201 to i64
  %203 = mul nsw i64 %202, 24
  store i64 %203, i64* %RDI.i1533, align 8
  %204 = lshr i64 %203, 63
  %205 = add i64 %203, %197
  store i64 %205, i64* %RCX.i1524, align 8
  %206 = icmp ult i64 %205, %197
  %207 = icmp ult i64 %205, %203
  %208 = or i1 %206, %207
  %209 = zext i1 %208 to i8
  store i8 %209, i8* %14, align 1
  %210 = trunc i64 %205 to i32
  %211 = and i32 %210, 255
  %212 = tail call i32 @llvm.ctpop.i32(i32 %211)
  %213 = trunc i32 %212 to i8
  %214 = and i8 %213, 1
  %215 = xor i8 %214, 1
  store i8 %215, i8* %21, align 1
  %216 = xor i64 %203, %197
  %217 = xor i64 %216, %205
  %218 = lshr i64 %217, 4
  %219 = trunc i64 %218 to i8
  %220 = and i8 %219, 1
  store i8 %220, i8* %26, align 1
  %221 = icmp eq i64 %205, 0
  %222 = zext i1 %221 to i8
  store i8 %222, i8* %29, align 1
  %223 = lshr i64 %205, 63
  %224 = trunc i64 %223 to i8
  store i8 %224, i8* %32, align 1
  %225 = lshr i64 %197, 63
  %226 = xor i64 %223, %225
  %227 = xor i64 %223, %204
  %228 = add nuw nsw i64 %226, %227
  %229 = icmp eq i64 %228, 2
  %230 = zext i1 %229 to i8
  store i8 %230, i8* %38, align 1
  %231 = add i64 %205, 8
  %232 = add i64 %194, 18
  store i64 %232, i64* %3, align 8
  %233 = inttoptr i64 %231 to i32*
  %234 = load i32, i32* %233, align 4
  %235 = zext i32 %234 to i64
  store i64 %235, i64* %RSI.i1516, align 8
  %236 = add i64 %192, -28
  %237 = add i64 %194, 21
  store i64 %237, i64* %3, align 8
  %238 = inttoptr i64 %236 to i32*
  store i32 %234, i32* %238, align 4
  %239 = load i64, i64* %RBP.i, align 8
  %240 = add i64 %239, -8
  %241 = load i64, i64* %3, align 8
  %242 = add i64 %241, 4
  store i64 %242, i64* %3, align 8
  %243 = inttoptr i64 %240 to i64*
  %244 = load i64, i64* %243, align 8
  store i64 %244, i64* %RCX.i1524, align 8
  %245 = add i64 %239, -12
  %246 = add i64 %241, 8
  store i64 %246, i64* %3, align 8
  %247 = inttoptr i64 %245 to i32*
  %248 = load i32, i32* %247, align 4
  %249 = sext i32 %248 to i64
  %250 = mul nsw i64 %249, 24
  store i64 %250, i64* %RDI.i1533, align 8
  %251 = lshr i64 %250, 63
  %252 = add i64 %250, %244
  store i64 %252, i64* %RCX.i1524, align 8
  %253 = icmp ult i64 %252, %244
  %254 = icmp ult i64 %252, %250
  %255 = or i1 %253, %254
  %256 = zext i1 %255 to i8
  store i8 %256, i8* %14, align 1
  %257 = trunc i64 %252 to i32
  %258 = and i32 %257, 255
  %259 = tail call i32 @llvm.ctpop.i32(i32 %258)
  %260 = trunc i32 %259 to i8
  %261 = and i8 %260, 1
  %262 = xor i8 %261, 1
  store i8 %262, i8* %21, align 1
  %263 = xor i64 %250, %244
  %264 = xor i64 %263, %252
  %265 = lshr i64 %264, 4
  %266 = trunc i64 %265 to i8
  %267 = and i8 %266, 1
  store i8 %267, i8* %26, align 1
  %268 = icmp eq i64 %252, 0
  %269 = zext i1 %268 to i8
  store i8 %269, i8* %29, align 1
  %270 = lshr i64 %252, 63
  %271 = trunc i64 %270 to i8
  store i8 %271, i8* %32, align 1
  %272 = lshr i64 %244, 63
  %273 = xor i64 %270, %272
  %274 = xor i64 %270, %251
  %275 = add nuw nsw i64 %273, %274
  %276 = icmp eq i64 %275, 2
  %277 = zext i1 %276 to i8
  store i8 %277, i8* %38, align 1
  %278 = add i64 %252, 12
  %279 = add i64 %241, 18
  store i64 %279, i64* %3, align 8
  %280 = inttoptr i64 %278 to i32*
  %281 = load i32, i32* %280, align 4
  %282 = zext i32 %281 to i64
  store i64 %282, i64* %RSI.i1516, align 8
  %283 = add i64 %239, -32
  %284 = add i64 %241, 21
  store i64 %284, i64* %3, align 8
  %285 = inttoptr i64 %283 to i32*
  store i32 %281, i32* %285, align 4
  %286 = load i64, i64* %RBP.i, align 8
  %287 = add i64 %286, -8
  %288 = load i64, i64* %3, align 8
  %289 = add i64 %288, 4
  store i64 %289, i64* %3, align 8
  %290 = inttoptr i64 %287 to i64*
  %291 = load i64, i64* %290, align 8
  store i64 %291, i64* %RCX.i1524, align 8
  %292 = add i64 %286, -12
  %293 = add i64 %288, 8
  store i64 %293, i64* %3, align 8
  %294 = inttoptr i64 %292 to i32*
  %295 = load i32, i32* %294, align 4
  %296 = sext i32 %295 to i64
  %297 = mul nsw i64 %296, 24
  store i64 %297, i64* %RDI.i1533, align 8
  %298 = lshr i64 %297, 63
  %299 = add i64 %297, %291
  store i64 %299, i64* %RCX.i1524, align 8
  %300 = icmp ult i64 %299, %291
  %301 = icmp ult i64 %299, %297
  %302 = or i1 %300, %301
  %303 = zext i1 %302 to i8
  store i8 %303, i8* %14, align 1
  %304 = trunc i64 %299 to i32
  %305 = and i32 %304, 255
  %306 = tail call i32 @llvm.ctpop.i32(i32 %305)
  %307 = trunc i32 %306 to i8
  %308 = and i8 %307, 1
  %309 = xor i8 %308, 1
  store i8 %309, i8* %21, align 1
  %310 = xor i64 %297, %291
  %311 = xor i64 %310, %299
  %312 = lshr i64 %311, 4
  %313 = trunc i64 %312 to i8
  %314 = and i8 %313, 1
  store i8 %314, i8* %26, align 1
  %315 = icmp eq i64 %299, 0
  %316 = zext i1 %315 to i8
  store i8 %316, i8* %29, align 1
  %317 = lshr i64 %299, 63
  %318 = trunc i64 %317 to i8
  store i8 %318, i8* %32, align 1
  %319 = lshr i64 %291, 63
  %320 = xor i64 %317, %319
  %321 = xor i64 %317, %298
  %322 = add nuw nsw i64 %320, %321
  %323 = icmp eq i64 %322, 2
  %324 = zext i1 %323 to i8
  store i8 %324, i8* %38, align 1
  %325 = add i64 %299, 16
  %326 = add i64 %288, 18
  store i64 %326, i64* %3, align 8
  %327 = inttoptr i64 %325 to i32*
  %328 = load i32, i32* %327, align 4
  %329 = add i64 %286, -36
  %330 = add i64 %288, 21
  store i64 %330, i64* %3, align 8
  %331 = inttoptr i64 %329 to i32*
  store i32 %328, i32* %331, align 4
  %332 = load i64, i64* %3, align 8
  %333 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %334 = add i32 %333, -1
  %335 = zext i32 %334 to i64
  store i64 %335, i64* %RSI.i1516, align 8
  store i32 %334, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %336 = sext i32 %334 to i64
  %337 = shl nsw i64 %336, 4
  store i64 %337, i64* %RCX.i1524, align 8
  %338 = load i64, i64* %RAX.i1536, align 8
  %339 = add i64 %337, %338
  store i64 %339, i64* %RDI.i1533, align 8
  %340 = icmp ult i64 %339, %338
  %341 = icmp ult i64 %339, %337
  %342 = or i1 %340, %341
  %343 = zext i1 %342 to i8
  store i8 %343, i8* %14, align 1
  %344 = trunc i64 %339 to i32
  %345 = and i32 %344, 255
  %346 = tail call i32 @llvm.ctpop.i32(i32 %345)
  %347 = trunc i32 %346 to i8
  %348 = and i8 %347, 1
  %349 = xor i8 %348, 1
  store i8 %349, i8* %21, align 1
  %350 = xor i64 %337, %338
  %351 = xor i64 %350, %339
  %352 = lshr i64 %351, 4
  %353 = trunc i64 %352 to i8
  %354 = and i8 %353, 1
  store i8 %354, i8* %26, align 1
  %355 = icmp eq i64 %339, 0
  %356 = zext i1 %355 to i8
  store i8 %356, i8* %29, align 1
  %357 = lshr i64 %339, 63
  %358 = trunc i64 %357 to i8
  store i8 %358, i8* %32, align 1
  %359 = lshr i64 %338, 63
  %360 = lshr i64 %336, 59
  %361 = and i64 %360, 1
  %362 = xor i64 %357, %359
  %363 = xor i64 %357, %361
  %364 = add nuw nsw i64 %362, %363
  %365 = icmp eq i64 %364, 2
  %366 = zext i1 %365 to i8
  store i8 %366, i8* %38, align 1
  %367 = add i64 %339, 8
  %368 = add i64 %332, 38
  store i64 %368, i64* %3, align 8
  %369 = inttoptr i64 %367 to i32*
  %370 = load i32, i32* %369, align 4
  %371 = zext i32 %370 to i64
  store i64 %371, i64* %RSI.i1516, align 8
  store i32 %370, i32* bitcast (%G_0x881de4_type* @G_0x881de4 to i32*), align 8
  store i64 %337, i64* %RCX.i1524, align 8
  store i64 %339, i64* %RAX.i1536, align 8
  store i8 %343, i8* %14, align 1
  store i8 %349, i8* %21, align 1
  store i8 %354, i8* %26, align 1
  store i8 %356, i8* %29, align 1
  store i8 %358, i8* %32, align 1
  store i8 %366, i8* %38, align 1
  %372 = add i64 %339, 12
  %373 = add i64 %332, 63
  store i64 %373, i64* %3, align 8
  %374 = inttoptr i64 %372 to i32*
  %375 = load i32, i32* %374, align 4
  %376 = zext i32 %375 to i64
  store i64 %376, i64* %RSI.i1516, align 8
  store i32 %375, i32* bitcast (%G_0x866790_type* @G_0x866790 to i32*), align 8
  %377 = load i64, i64* %RBP.i, align 8
  %378 = add i64 %377, -20
  %379 = add i64 %332, 74
  store i64 %379, i64* %3, align 8
  %380 = inttoptr i64 %378 to i32*
  %381 = load i32, i32* %380, align 4
  store i8 0, i8* %14, align 1
  %382 = and i32 %381, 255
  %383 = tail call i32 @llvm.ctpop.i32(i32 %382)
  %384 = trunc i32 %383 to i8
  %385 = and i8 %384, 1
  %386 = xor i8 %385, 1
  store i8 %386, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %387 = icmp eq i32 %381, 0
  %388 = zext i1 %387 to i8
  store i8 %388, i8* %29, align 1
  %389 = lshr i32 %381, 31
  %390 = trunc i32 %389 to i8
  store i8 %390, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v35 = select i1 %387, i64 80, i64 321
  %391 = add i64 %332, %.v35
  store i64 %391, i64* %3, align 8
  br i1 %387, label %block_40c886, label %block_.L_40c977

block_40c886:                                     ; preds = %entry
  store i64 0, i64* %RAX.i1536, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i64 1, i64* %RCX.i1524, align 8
  %RDX.i1385 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  store i64 ptrtoint (%G__0x880b20_type* @G__0x880b20 to i64), i64* %RDX.i1385, align 8
  %392 = add i64 %377, -24
  %393 = add i64 %391, 21
  store i64 %393, i64* %3, align 8
  %394 = inttoptr i64 %392 to i32*
  %395 = load i32, i32* %394, align 4
  %396 = sext i32 %395 to i64
  store i64 %396, i64* %RSI.i1516, align 8
  %397 = shl nsw i64 %396, 2
  %398 = add nsw i64 %397, 8807152
  %399 = add i64 %391, 29
  store i64 %399, i64* %3, align 8
  %400 = inttoptr i64 %398 to i32*
  %401 = load i32, i32* %400, align 4
  %402 = sext i32 %401 to i64
  %403 = shl nsw i64 %402, 2
  %404 = add nsw i64 %403, 8778480
  %405 = add i64 %391, 40
  store i64 %405, i64* %3, align 8
  %406 = inttoptr i64 %404 to i32*
  store i32 0, i32* %406, align 4
  %407 = load i64, i64* %3, align 8
  %408 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %409 = sext i32 %408 to i64
  %410 = shl nsw i64 %409, 4
  store i64 %410, i64* %RSI.i1516, align 8
  %411 = load i64, i64* %RDX.i1385, align 8
  %412 = add i64 %410, %411
  store i64 %412, i64* %RDX.i1385, align 8
  %413 = icmp ult i64 %412, %411
  %414 = icmp ult i64 %412, %410
  %415 = or i1 %413, %414
  %416 = zext i1 %415 to i8
  store i8 %416, i8* %14, align 1
  %417 = trunc i64 %412 to i32
  %418 = and i32 %417, 255
  %419 = tail call i32 @llvm.ctpop.i32(i32 %418)
  %420 = trunc i32 %419 to i8
  %421 = and i8 %420, 1
  %422 = xor i8 %421, 1
  store i8 %422, i8* %21, align 1
  %423 = xor i64 %410, %411
  %424 = xor i64 %423, %412
  %425 = lshr i64 %424, 4
  %426 = trunc i64 %425 to i8
  %427 = and i8 %426, 1
  store i8 %427, i8* %26, align 1
  %428 = icmp eq i64 %412, 0
  %429 = zext i1 %428 to i8
  store i8 %429, i8* %29, align 1
  %430 = lshr i64 %412, 63
  %431 = trunc i64 %430 to i8
  store i8 %431, i8* %32, align 1
  %432 = lshr i64 %411, 63
  %433 = lshr i64 %409, 59
  %434 = and i64 %433, 1
  %435 = xor i64 %430, %432
  %436 = xor i64 %430, %434
  %437 = add nuw nsw i64 %435, %436
  %438 = icmp eq i64 %437, 2
  %439 = zext i1 %438 to i8
  store i8 %439, i8* %38, align 1
  %440 = add i64 %412, 4
  %441 = add i64 %407, 18
  store i64 %441, i64* %3, align 8
  %442 = inttoptr i64 %440 to i32*
  %443 = load i32, i32* %442, align 4
  %444 = zext i32 %443 to i64
  store i64 %444, i64* %RDI.i1533, align 8
  %445 = load i64, i64* %RBP.i, align 8
  %446 = add i64 %445, -24
  %447 = add i64 %407, 22
  store i64 %447, i64* %3, align 8
  %448 = inttoptr i64 %446 to i32*
  %449 = load i32, i32* %448, align 4
  %450 = sext i32 %449 to i64
  store i64 %450, i64* %RDX.i1385, align 8
  %451 = shl nsw i64 %450, 2
  %452 = add nsw i64 %451, 8807152
  %453 = add i64 %407, 30
  store i64 %453, i64* %3, align 8
  %454 = inttoptr i64 %452 to i32*
  %455 = load i32, i32* %454, align 4
  %456 = sext i32 %455 to i64
  store i64 %456, i64* %RDX.i1385, align 8
  %457 = shl nsw i64 %456, 2
  %458 = add nsw i64 %457, 6525216
  %459 = add i64 %407, 37
  store i64 %459, i64* %3, align 8
  %460 = inttoptr i64 %458 to i32*
  store i32 %443, i32* %460, align 4
  %461 = load i64, i64* %RBP.i, align 8
  %462 = add i64 %461, -24
  %463 = load i64, i64* %3, align 8
  %464 = add i64 %463, 4
  store i64 %464, i64* %3, align 8
  %465 = inttoptr i64 %462 to i32*
  %466 = load i32, i32* %465, align 4
  %467 = sext i32 %466 to i64
  store i64 %467, i64* %RDX.i1385, align 8
  %468 = shl nsw i64 %467, 2
  %469 = add nsw i64 %468, 8807152
  %470 = add i64 %463, 15
  store i64 %470, i64* %3, align 8
  %471 = inttoptr i64 %469 to i32*
  store i32 0, i32* %471, align 4
  %472 = load i64, i64* %3, align 8
  %473 = load i32, i32* bitcast (%G_0x63ae48_type* @G_0x63ae48 to i32*), align 8
  %474 = add i32 %473, -1
  %475 = zext i32 %474 to i64
  store i64 %475, i64* %RDI.i1533, align 8
  %476 = icmp ne i32 %473, 0
  %477 = zext i1 %476 to i8
  store i8 %477, i8* %14, align 1
  %478 = and i32 %474, 255
  %479 = tail call i32 @llvm.ctpop.i32(i32 %478)
  %480 = trunc i32 %479 to i8
  %481 = and i8 %480, 1
  %482 = xor i8 %481, 1
  store i8 %482, i8* %21, align 1
  %483 = xor i32 %473, 16
  %484 = xor i32 %483, %474
  %485 = lshr i32 %484, 4
  %486 = trunc i32 %485 to i8
  %487 = and i8 %486, 1
  store i8 %487, i8* %26, align 1
  %488 = icmp eq i32 %474, 0
  %489 = zext i1 %488 to i8
  store i8 %489, i8* %29, align 1
  %490 = lshr i32 %474, 31
  %491 = trunc i32 %490 to i8
  store i8 %491, i8* %32, align 1
  %492 = lshr i32 %473, 31
  %493 = xor i32 %490, %492
  %494 = xor i32 %490, 1
  %495 = add nuw nsw i32 %493, %494
  %496 = icmp eq i32 %495, 2
  %497 = zext i1 %496 to i8
  store i8 %497, i8* %38, align 1
  store i32 %474, i32* bitcast (%G_0x63ae48_type* @G_0x63ae48 to i32*), align 8
  %498 = load i64, i64* %RBP.i, align 8
  %499 = add i64 %498, -32
  %500 = add i64 %472, 20
  store i64 %500, i64* %3, align 8
  %501 = inttoptr i64 %499 to i32*
  %502 = load i32, i32* %501, align 4
  %503 = zext i32 %502 to i64
  store i64 %503, i64* %RDI.i1533, align 8
  %504 = load i32, i32* bitcast (%G_0x8661bc_type* @G_0x8661bc to i32*), align 8
  store i8 0, i8* %14, align 1
  %505 = and i32 %504, 255
  %506 = tail call i32 @llvm.ctpop.i32(i32 %505)
  %507 = trunc i32 %506 to i8
  %508 = and i8 %507, 1
  %509 = xor i8 %508, 1
  store i8 %509, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %510 = icmp eq i32 %504, 0
  %511 = zext i1 %510 to i8
  store i8 %511, i8* %29, align 1
  %512 = lshr i32 %504, 31
  %513 = trunc i32 %512 to i8
  store i8 %513, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %ECX.i1342 = bitcast %union.anon* %57 to i32*
  %514 = load i32, i32* %ECX.i1342, align 4
  %515 = zext i32 %514 to i64
  %516 = load i64, i64* %RAX.i1536, align 8
  %517 = select i1 %510, i64 %516, i64 %515
  %518 = and i64 %517, 4294967295
  store i64 %518, i64* %RAX.i1536, align 8
  %519 = and i64 %517, 4294967295
  store i64 %519, i64* %RSI.i1516, align 8
  %520 = add i64 %472, -41490
  %521 = add i64 %472, 38
  %522 = load i64, i64* %6, align 8
  %523 = add i64 %522, -8
  %524 = inttoptr i64 %523 to i64*
  store i64 %521, i64* %524, align 8
  store i64 %523, i64* %6, align 8
  store i64 %520, i64* %3, align 8
  %call2_40c903 = tail call %struct.Memory* @sub_4026d0.DropaddHolding(%struct.State* nonnull %0, i64 %520, %struct.Memory* %2)
  %525 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x8a0a80_type* @G__0x8a0a80 to i64), i64* %RDX.i1385, align 8
  %R8.i1334 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %526 = load i64, i64* %RBP.i, align 8
  %527 = add i64 %526, -32
  %528 = add i64 %525, 14
  store i64 %528, i64* %3, align 8
  %529 = inttoptr i64 %527 to i32*
  %530 = load i32, i32* %529, align 4
  %531 = sext i32 %530 to i64
  store i64 %531, i64* %R8.i1334, align 8
  %532 = shl nsw i64 %531, 2
  %533 = add nsw i64 %532, 6478512
  %534 = add i64 %525, 22
  store i64 %534, i64* %3, align 8
  %535 = inttoptr i64 %533 to i32*
  %536 = load i32, i32* %535, align 4
  %537 = zext i32 %536 to i64
  store i64 %537, i64* %RAX.i1536, align 8
  %538 = load i32, i32* bitcast (%G_0x8661c0_type* @G_0x8661c0 to i32*), align 8
  %539 = sub i32 %538, %536
  %540 = zext i32 %539 to i64
  store i64 %540, i64* %RCX.i1524, align 8
  %541 = icmp ult i32 %538, %536
  %542 = zext i1 %541 to i8
  store i8 %542, i8* %14, align 1
  %543 = and i32 %539, 255
  %544 = tail call i32 @llvm.ctpop.i32(i32 %543)
  %545 = trunc i32 %544 to i8
  %546 = and i8 %545, 1
  %547 = xor i8 %546, 1
  store i8 %547, i8* %21, align 1
  %548 = xor i32 %536, %538
  %549 = xor i32 %548, %539
  %550 = lshr i32 %549, 4
  %551 = trunc i32 %550 to i8
  %552 = and i8 %551, 1
  store i8 %552, i8* %26, align 1
  %553 = icmp eq i32 %539, 0
  %554 = zext i1 %553 to i8
  store i8 %554, i8* %29, align 1
  %555 = lshr i32 %539, 31
  %556 = trunc i32 %555 to i8
  store i8 %556, i8* %32, align 1
  %557 = lshr i32 %538, 31
  %558 = lshr i32 %536, 31
  %559 = xor i32 %558, %557
  %560 = xor i32 %555, %557
  %561 = add nuw nsw i32 %560, %559
  %562 = icmp eq i32 %561, 2
  %563 = zext i1 %562 to i8
  store i8 %563, i8* %38, align 1
  store i32 %539, i32* bitcast (%G_0x8661c0_type* @G_0x8661c0 to i32*), align 8
  %564 = add i64 %526, -28
  %565 = add i64 %525, 41
  store i64 %565, i64* %3, align 8
  %566 = inttoptr i64 %564 to i32*
  %567 = load i32, i32* %566, align 4
  %568 = zext i32 %567 to i64
  store i64 %568, i64* %RAX.i1536, align 8
  %569 = add i64 %526, -24
  %570 = add i64 %525, 45
  store i64 %570, i64* %3, align 8
  %571 = inttoptr i64 %569 to i32*
  %572 = load i32, i32* %571, align 4
  %573 = sext i32 %572 to i64
  store i64 %573, i64* %R8.i1334, align 8
  %574 = shl nsw i64 %573, 2
  %575 = add nsw i64 %574, 8807744
  %576 = add i64 %525, 53
  store i64 %576, i64* %3, align 8
  %577 = inttoptr i64 %575 to i32*
  store i32 %567, i32* %577, align 4
  %578 = load i64, i64* %RBP.i, align 8
  %579 = add i64 %578, -32
  %580 = load i64, i64* %3, align 8
  %581 = add i64 %580, 4
  store i64 %581, i64* %3, align 8
  %582 = inttoptr i64 %579 to i32*
  %583 = load i32, i32* %582, align 4
  %584 = sext i32 %583 to i64
  %585 = mul nsw i64 %584, 576
  store i64 %585, i64* %R8.i1334, align 8
  %586 = lshr i64 %585, 63
  %587 = load i64, i64* %RDX.i1385, align 8
  %588 = add i64 %585, %587
  store i64 %588, i64* %RDX.i1385, align 8
  %589 = icmp ult i64 %588, %587
  %590 = icmp ult i64 %588, %585
  %591 = or i1 %589, %590
  %592 = zext i1 %591 to i8
  store i8 %592, i8* %14, align 1
  %593 = trunc i64 %588 to i32
  %594 = and i32 %593, 255
  %595 = tail call i32 @llvm.ctpop.i32(i32 %594)
  %596 = trunc i32 %595 to i8
  %597 = and i8 %596, 1
  %598 = xor i8 %597, 1
  store i8 %598, i8* %21, align 1
  %599 = xor i64 %587, %588
  %600 = lshr i64 %599, 4
  %601 = trunc i64 %600 to i8
  %602 = and i8 %601, 1
  store i8 %602, i8* %26, align 1
  %603 = icmp eq i64 %588, 0
  %604 = zext i1 %603 to i8
  store i8 %604, i8* %29, align 1
  %605 = lshr i64 %588, 63
  %606 = trunc i64 %605 to i8
  store i8 %606, i8* %32, align 1
  %607 = lshr i64 %587, 63
  %608 = xor i64 %605, %607
  %609 = xor i64 %605, %586
  %610 = add nuw nsw i64 %608, %609
  %611 = icmp eq i64 %610, 2
  %612 = zext i1 %611 to i8
  store i8 %612, i8* %38, align 1
  %613 = add i64 %578, -24
  %614 = add i64 %580, 18
  store i64 %614, i64* %3, align 8
  %615 = inttoptr i64 %613 to i32*
  %616 = load i32, i32* %615, align 4
  %617 = sext i32 %616 to i64
  store i64 %617, i64* %R8.i1334, align 8
  %618 = shl nsw i64 %617, 2
  %619 = add i64 %618, %588
  %620 = add i64 %580, 22
  store i64 %620, i64* %3, align 8
  %621 = inttoptr i64 %619 to i32*
  %622 = load i32, i32* %621, align 4
  %623 = load i32, i32* bitcast (%G_0x633b40_type* @G_0x633b40 to i32*), align 8
  %624 = xor i32 %623, %622
  store i32 %624, i32* bitcast (%G_0x633b40_type* @G_0x633b40 to i32*), align 8
  %625 = load i32, i32* bitcast (%G_0x8661bc_type* @G_0x8661bc to i32*), align 8
  %626 = xor i32 %625, 1
  %627 = zext i32 %626 to i64
  store i64 %627, i64* %RAX.i1536, align 8
  store i8 0, i8* %14, align 1
  %628 = and i32 %626, 255
  %629 = tail call i32 @llvm.ctpop.i32(i32 %628)
  %630 = trunc i32 %629 to i8
  %631 = and i8 %630, 1
  %632 = xor i8 %631, 1
  store i8 %632, i8* %21, align 1
  %633 = icmp eq i32 %626, 0
  %634 = zext i1 %633 to i8
  store i8 %634, i8* %29, align 1
  %635 = lshr i32 %625, 31
  %636 = trunc i32 %635 to i8
  store i8 %636, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %637 = add i64 %580, 53
  store i64 %637, i64* %3, align 8
  store i32 %626, i32* bitcast (%G_0x8661bc_type* @G_0x8661bc to i32*), align 8
  %638 = add i64 %580, 3271
  br label %block_.L_40d604

block_.L_40c977:                                  ; preds = %entry
  store i64 ptrtoint (%G__0x880b20_type* @G__0x880b20 to i64), i64* %RAX.i1536, align 8
  %639 = add i64 %377, -24
  %640 = add i64 %391, 14
  store i64 %640, i64* %3, align 8
  %641 = inttoptr i64 %639 to i32*
  %642 = load i32, i32* %641, align 4
  %643 = sext i32 %642 to i64
  store i64 %643, i64* %RCX.i1524, align 8
  %644 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %RDX.i1281 = getelementptr inbounds %union.anon, %union.anon* %644, i64 0, i32 0
  %645 = shl nsw i64 %643, 2
  %646 = add nsw i64 %645, 8807152
  %647 = add i64 %391, 21
  store i64 %647, i64* %3, align 8
  %648 = inttoptr i64 %646 to i32*
  %649 = load i32, i32* %648, align 4
  %650 = zext i32 %649 to i64
  store i64 %650, i64* %RDX.i1281, align 8
  %651 = add i64 %391, 25
  store i64 %651, i64* %3, align 8
  %652 = load i32, i32* %380, align 4
  %653 = sext i32 %652 to i64
  %EDX.i1274 = bitcast %union.anon* %644 to i32*
  %654 = shl nsw i64 %653, 2
  %655 = add nsw i64 %654, 8807152
  %656 = add i64 %391, 32
  store i64 %656, i64* %3, align 8
  %657 = inttoptr i64 %655 to i32*
  store i32 %649, i32* %657, align 4
  %658 = load i64, i64* %3, align 8
  %659 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %660 = sext i32 %659 to i64
  %661 = shl nsw i64 %660, 4
  store i64 %661, i64* %RCX.i1524, align 8
  %662 = load i64, i64* %RAX.i1536, align 8
  %663 = add i64 %661, %662
  store i64 %663, i64* %RSI.i1516, align 8
  %664 = icmp ult i64 %663, %662
  %665 = icmp ult i64 %663, %661
  %666 = or i1 %664, %665
  %667 = zext i1 %666 to i8
  store i8 %667, i8* %14, align 1
  %668 = trunc i64 %663 to i32
  %669 = and i32 %668, 255
  %670 = tail call i32 @llvm.ctpop.i32(i32 %669)
  %671 = trunc i32 %670 to i8
  %672 = and i8 %671, 1
  %673 = xor i8 %672, 1
  store i8 %673, i8* %21, align 1
  %674 = xor i64 %661, %662
  %675 = xor i64 %674, %663
  %676 = lshr i64 %675, 4
  %677 = trunc i64 %676 to i8
  %678 = and i8 %677, 1
  store i8 %678, i8* %26, align 1
  %679 = icmp eq i64 %663, 0
  %680 = zext i1 %679 to i8
  store i8 %680, i8* %29, align 1
  %681 = lshr i64 %663, 63
  %682 = trunc i64 %681 to i8
  store i8 %682, i8* %32, align 1
  %683 = lshr i64 %662, 63
  %684 = lshr i64 %660, 59
  %685 = and i64 %684, 1
  %686 = xor i64 %681, %683
  %687 = xor i64 %681, %685
  %688 = add nuw nsw i64 %686, %687
  %689 = icmp eq i64 %688, 2
  %690 = zext i1 %689 to i8
  store i8 %690, i8* %38, align 1
  %691 = inttoptr i64 %663 to i32*
  %692 = add i64 %658, 20
  store i64 %692, i64* %3, align 8
  %693 = load i32, i32* %691, align 4
  %694 = zext i32 %693 to i64
  store i64 %694, i64* %RDX.i1281, align 8
  %695 = load i64, i64* %RBP.i, align 8
  %696 = add i64 %695, -24
  %697 = add i64 %658, 24
  store i64 %697, i64* %3, align 8
  %698 = inttoptr i64 %696 to i32*
  %699 = load i32, i32* %698, align 4
  %700 = sext i32 %699 to i64
  store i64 %700, i64* %RCX.i1524, align 8
  %701 = shl nsw i64 %700, 2
  %702 = add nsw i64 %701, 8807152
  %703 = add i64 %658, 31
  store i64 %703, i64* %3, align 8
  %704 = inttoptr i64 %702 to i32*
  store i32 %693, i32* %704, align 4
  %705 = load i64, i64* %RBP.i, align 8
  %706 = add i64 %705, -24
  %707 = load i64, i64* %3, align 8
  %708 = add i64 %707, 3
  store i64 %708, i64* %3, align 8
  %709 = inttoptr i64 %706 to i32*
  %710 = load i32, i32* %709, align 4
  %711 = zext i32 %710 to i64
  store i64 %711, i64* %RDX.i1281, align 8
  %712 = add i64 %707, 7
  store i64 %712, i64* %3, align 8
  %713 = load i32, i32* %709, align 4
  %714 = sext i32 %713 to i64
  store i64 %714, i64* %RCX.i1524, align 8
  %715 = shl nsw i64 %714, 2
  %716 = add nsw i64 %715, 8807152
  %717 = add i64 %707, 15
  store i64 %717, i64* %3, align 8
  %718 = inttoptr i64 %716 to i32*
  %719 = load i32, i32* %718, align 4
  %720 = sext i32 %719 to i64
  store i64 %720, i64* %RCX.i1524, align 8
  %721 = shl nsw i64 %720, 2
  %722 = add nsw i64 %721, 8778480
  %723 = add i64 %707, 22
  store i64 %723, i64* %3, align 8
  %724 = inttoptr i64 %722 to i32*
  store i32 %710, i32* %724, align 4
  %725 = load i64, i64* %RBP.i, align 8
  %726 = add i64 %725, -20
  %727 = load i64, i64* %3, align 8
  %728 = add i64 %727, 3
  store i64 %728, i64* %3, align 8
  %729 = inttoptr i64 %726 to i32*
  %730 = load i32, i32* %729, align 4
  %731 = zext i32 %730 to i64
  store i64 %731, i64* %RDX.i1281, align 8
  %732 = add i64 %727, 7
  store i64 %732, i64* %3, align 8
  %733 = load i32, i32* %729, align 4
  %734 = sext i32 %733 to i64
  store i64 %734, i64* %RCX.i1524, align 8
  %735 = shl nsw i64 %734, 2
  %736 = add nsw i64 %735, 8807152
  %737 = add i64 %727, 15
  store i64 %737, i64* %3, align 8
  %738 = inttoptr i64 %736 to i32*
  %739 = load i32, i32* %738, align 4
  %740 = sext i32 %739 to i64
  %741 = shl nsw i64 %740, 2
  %742 = add nsw i64 %741, 8778480
  %743 = add i64 %727, 22
  store i64 %743, i64* %3, align 8
  %744 = inttoptr i64 %742 to i32*
  store i32 %730, i32* %744, align 4
  %745 = load i64, i64* %3, align 8
  %746 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %747 = sext i32 %746 to i64
  %748 = shl nsw i64 %747, 4
  store i64 %748, i64* %RCX.i1524, align 8
  %749 = load i64, i64* %RAX.i1536, align 8
  %750 = add i64 %748, %749
  store i64 %750, i64* %RAX.i1536, align 8
  %751 = icmp ult i64 %750, %749
  %752 = icmp ult i64 %750, %748
  %753 = or i1 %751, %752
  %754 = zext i1 %753 to i8
  store i8 %754, i8* %14, align 1
  %755 = trunc i64 %750 to i32
  %756 = and i32 %755, 255
  %757 = tail call i32 @llvm.ctpop.i32(i32 %756)
  %758 = trunc i32 %757 to i8
  %759 = and i8 %758, 1
  %760 = xor i8 %759, 1
  store i8 %760, i8* %21, align 1
  %761 = xor i64 %748, %749
  %762 = xor i64 %761, %750
  %763 = lshr i64 %762, 4
  %764 = trunc i64 %763 to i8
  %765 = and i8 %764, 1
  store i8 %765, i8* %26, align 1
  %766 = icmp eq i64 %750, 0
  %767 = zext i1 %766 to i8
  store i8 %767, i8* %29, align 1
  %768 = lshr i64 %750, 63
  %769 = trunc i64 %768 to i8
  store i8 %769, i8* %32, align 1
  %770 = lshr i64 %749, 63
  %771 = lshr i64 %747, 59
  %772 = and i64 %771, 1
  %773 = xor i64 %768, %770
  %774 = xor i64 %768, %772
  %775 = add nuw nsw i64 %773, %774
  %776 = icmp eq i64 %775, 2
  %777 = zext i1 %776 to i8
  store i8 %777, i8* %38, align 1
  %778 = add i64 %750, 4
  %779 = add i64 %745, 18
  store i64 %779, i64* %3, align 8
  %780 = inttoptr i64 %778 to i32*
  %781 = load i32, i32* %780, align 4
  %782 = zext i32 %781 to i64
  store i64 %782, i64* %RDX.i1281, align 8
  %783 = load i64, i64* %RBP.i, align 8
  %784 = add i64 %783, -24
  %785 = add i64 %745, 22
  store i64 %785, i64* %3, align 8
  %786 = inttoptr i64 %784 to i32*
  %787 = load i32, i32* %786, align 4
  %788 = sext i32 %787 to i64
  store i64 %788, i64* %RAX.i1536, align 8
  %789 = shl nsw i64 %788, 2
  %790 = add nsw i64 %789, 8807152
  %791 = add i64 %745, 30
  store i64 %791, i64* %3, align 8
  %792 = inttoptr i64 %790 to i32*
  %793 = load i32, i32* %792, align 4
  %794 = sext i32 %793 to i64
  store i64 %794, i64* %RAX.i1536, align 8
  %795 = shl nsw i64 %794, 2
  %796 = add nsw i64 %795, 6525216
  %797 = add i64 %745, 37
  store i64 %797, i64* %3, align 8
  %798 = inttoptr i64 %796 to i32*
  store i32 %781, i32* %798, align 4
  %799 = load i64, i64* %RBP.i, align 8
  %800 = add i64 %799, -16
  %801 = load i64, i64* %3, align 8
  %802 = add i64 %801, 4
  store i64 %802, i64* %3, align 8
  %803 = inttoptr i64 %800 to i32*
  %804 = load i32, i32* %803, align 4
  store i8 0, i8* %14, align 1
  %805 = and i32 %804, 255
  %806 = tail call i32 @llvm.ctpop.i32(i32 %805)
  %807 = trunc i32 %806 to i8
  %808 = and i8 %807, 1
  %809 = xor i8 %808, 1
  store i8 %809, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %810 = icmp eq i32 %804, 0
  %811 = zext i1 %810 to i8
  store i8 %811, i8* %29, align 1
  %812 = lshr i32 %804, 31
  %813 = trunc i32 %812 to i8
  store i8 %813, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v36 = select i1 %810, i64 10, i64 269
  %814 = add i64 %801, %.v36
  store i64 %814, i64* %3, align 8
  br i1 %810, label %block_40ca11, label %block_.L_40cb14

block_40ca11:                                     ; preds = %block_.L_40c977
  %815 = add i64 %799, -28
  %816 = add i64 %814, 3
  store i64 %816, i64* %3, align 8
  %817 = inttoptr i64 %815 to i32*
  %818 = load i32, i32* %817, align 4
  %819 = add i32 %818, -13
  %820 = zext i32 %819 to i64
  store i64 %820, i64* %RAX.i1536, align 8
  %821 = icmp ult i32 %818, 13
  %822 = zext i1 %821 to i8
  store i8 %822, i8* %14, align 1
  %823 = and i32 %819, 255
  %824 = tail call i32 @llvm.ctpop.i32(i32 %823)
  %825 = trunc i32 %824 to i8
  %826 = and i8 %825, 1
  %827 = xor i8 %826, 1
  store i8 %827, i8* %21, align 1
  %828 = xor i32 %819, %818
  %829 = lshr i32 %828, 4
  %830 = trunc i32 %829 to i8
  %831 = and i8 %830, 1
  store i8 %831, i8* %26, align 1
  %832 = icmp eq i32 %819, 0
  %833 = zext i1 %832 to i8
  store i8 %833, i8* %29, align 1
  %834 = lshr i32 %819, 31
  %835 = trunc i32 %834 to i8
  store i8 %835, i8* %32, align 1
  %836 = lshr i32 %818, 31
  %837 = xor i32 %834, %836
  %838 = add nuw nsw i32 %837, %836
  %839 = icmp eq i32 %838, 2
  %840 = zext i1 %839 to i8
  store i8 %840, i8* %38, align 1
  %EAX.i1204 = bitcast %union.anon* %39 to i32*
  %841 = add i64 %799, -40
  %842 = add i64 %814, 9
  store i64 %842, i64* %3, align 8
  %843 = inttoptr i64 %841 to i32*
  store i32 %819, i32* %843, align 4
  %844 = load i64, i64* %3, align 8
  %845 = load i8, i8* %29, align 1
  %846 = icmp eq i8 %845, 0
  %.v51 = select i1 %846, i64 16, i64 6
  %847 = add i64 %844, %.v51
  store i64 %847, i64* %3, align 8
  br i1 %846, label %block_.L_40ca2a, label %block_40ca20

block_40ca20:                                     ; preds = %block_40ca11
  %848 = add i64 %847, 239
  store i64 %848, i64* %3, align 8
  %.pre28.pre = load i64, i64* %RBP.i, align 8
  br label %block_.L_40cb0f

block_.L_40ca2a:                                  ; preds = %block_40ca11
  %849 = load i32, i32* bitcast (%G_0x85f154_type* @G_0x85f154 to i32*), align 8
  %850 = add i32 %849, -1
  %851 = icmp eq i32 %849, 0
  %852 = zext i1 %851 to i8
  store i8 %852, i8* %14, align 1
  %853 = and i32 %850, 255
  %854 = tail call i32 @llvm.ctpop.i32(i32 %853)
  %855 = trunc i32 %854 to i8
  %856 = and i8 %855, 1
  %857 = xor i8 %856, 1
  store i8 %857, i8* %21, align 1
  %858 = xor i32 %850, %849
  %859 = lshr i32 %858, 4
  %860 = trunc i32 %859 to i8
  %861 = and i8 %860, 1
  store i8 %861, i8* %26, align 1
  %862 = icmp eq i32 %850, 0
  %863 = zext i1 %862 to i8
  store i8 %863, i8* %29, align 1
  %864 = lshr i32 %850, 31
  %865 = trunc i32 %864 to i8
  store i8 %865, i8* %32, align 1
  %866 = lshr i32 %849, 31
  %867 = xor i32 %864, %866
  %868 = add nuw nsw i32 %867, %866
  %869 = icmp eq i32 %868, 2
  %870 = zext i1 %869 to i8
  store i8 %870, i8* %38, align 1
  %.v49 = select i1 %862, i64 28, i64 14
  %871 = add i64 %847, %.v49
  store i64 %871, i64* %3, align 8
  br i1 %862, label %block_.L_40ca46, label %block_40ca38

block_40ca38:                                     ; preds = %block_.L_40ca2a
  store i8 0, i8* %14, align 1
  %872 = and i32 %849, 255
  %873 = tail call i32 @llvm.ctpop.i32(i32 %872)
  %874 = trunc i32 %873 to i8
  %875 = and i8 %874, 1
  %876 = xor i8 %875, 1
  store i8 %876, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 %852, i8* %29, align 1
  %877 = trunc i32 %866 to i8
  store i8 %877, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v50 = select i1 %851, i64 14, i64 128
  %878 = add i64 %871, %.v50
  store i64 %878, i64* %3, align 8
  br i1 %851, label %block_.L_40ca46, label %block_.L_40cab8

block_.L_40ca46:                                  ; preds = %block_40ca38, %block_.L_40ca2a
  %879 = phi i64 [ %878, %block_40ca38 ], [ %871, %block_.L_40ca2a ]
  %880 = load i64, i64* %RBP.i, align 8
  %881 = add i64 %880, -24
  %882 = add i64 %879, 4
  store i64 %882, i64* %3, align 8
  %883 = inttoptr i64 %881 to i32*
  %884 = load i32, i32* %883, align 4
  %885 = sext i32 %884 to i64
  store i64 %885, i64* %RAX.i1536, align 8
  %886 = shl nsw i64 %885, 2
  %887 = add nsw i64 %886, 8807152
  %888 = add i64 %879, 12
  store i64 %888, i64* %3, align 8
  %889 = inttoptr i64 %887 to i32*
  %890 = load i32, i32* %889, align 4
  %891 = sext i32 %890 to i64
  store i64 %891, i64* %RAX.i1536, align 8
  %892 = shl nsw i64 %891, 2
  %893 = add nsw i64 %892, 6525216
  %894 = add i64 %879, 20
  store i64 %894, i64* %3, align 8
  %895 = inttoptr i64 %893 to i32*
  %896 = load i32, i32* %895, align 4
  store i8 0, i8* %14, align 1
  %897 = and i32 %896, 255
  %898 = tail call i32 @llvm.ctpop.i32(i32 %897)
  %899 = trunc i32 %898 to i8
  %900 = and i8 %899, 1
  %901 = xor i8 %900, 1
  store i8 %901, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %902 = icmp eq i32 %896, 0
  %903 = zext i1 %902 to i8
  store i8 %903, i8* %29, align 1
  %904 = lshr i32 %896, 31
  %905 = trunc i32 %904 to i8
  store i8 %905, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v34 = select i1 %902, i64 70, i64 26
  %906 = add i64 %879, %.v34
  %907 = add i64 %880, -28
  %908 = add i64 %906, 3
  store i64 %908, i64* %3, align 8
  %909 = inttoptr i64 %907 to i32*
  %910 = load i32, i32* %909, align 4
  %911 = zext i32 %910 to i64
  store i64 %911, i64* %RDI.i1533, align 8
  br i1 %902, label %block_.L_40ca8c, label %block_40ca60

block_40ca60:                                     ; preds = %block_.L_40ca46
  %912 = add i64 %906, -42416
  %913 = add i64 %906, 8
  %914 = load i64, i64* %6, align 8
  %915 = add i64 %914, -8
  %916 = inttoptr i64 %915 to i64*
  store i64 %913, i64* %916, align 8
  store i64 %915, i64* %6, align 8
  store i64 %912, i64* %3, align 8
  %call2_40ca63 = tail call %struct.Memory* @sub_4024b0.SwitchPromoted(%struct.State* nonnull %0, i64 %912, %struct.Memory* %2)
  %917 = load i64, i64* %3, align 8
  store i64 1, i64* %RCX.i1524, align 8
  %918 = load i32, i32* bitcast (%G_0x8661bc_type* @G_0x8661bc to i32*), align 8
  store i8 0, i8* %14, align 1
  %919 = and i32 %918, 255
  %920 = tail call i32 @llvm.ctpop.i32(i32 %919)
  %921 = trunc i32 %920 to i8
  %922 = and i8 %921, 1
  %923 = xor i8 %922, 1
  store i8 %923, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %924 = icmp eq i32 %918, 0
  %925 = zext i1 %924 to i8
  store i8 %925, i8* %29, align 1
  %926 = lshr i32 %918, 31
  %927 = trunc i32 %926 to i8
  store i8 %927, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %928 = xor i1 %924, true
  %929 = load i64, i64* %RBP.i, align 8
  %930 = add i64 %929, -44
  %931 = zext i1 %928 to i32
  %932 = add i64 %917, 21
  store i64 %932, i64* %3, align 8
  %933 = inttoptr i64 %930 to i32*
  store i32 %931, i32* %933, align 4
  %934 = load i32, i32* %EAX.i1204, align 4
  %935 = zext i32 %934 to i64
  %936 = load i64, i64* %3, align 8
  store i64 %935, i64* %RDI.i1533, align 8
  %937 = load i64, i64* %RBP.i, align 8
  %938 = add i64 %937, -44
  %939 = add i64 %936, 5
  store i64 %939, i64* %3, align 8
  %940 = inttoptr i64 %938 to i32*
  %941 = load i32, i32* %940, align 4
  %942 = zext i32 %941 to i64
  store i64 %942, i64* %RSI.i1516, align 8
  %943 = add i64 %936, -42141
  %944 = add i64 %936, 10
  %945 = load i64, i64* %6, align 8
  %946 = add i64 %945, -8
  %947 = inttoptr i64 %946 to i64*
  store i64 %944, i64* %947, align 8
  store i64 %946, i64* %6, align 8
  store i64 %943, i64* %3, align 8
  %call2_40ca82 = tail call %struct.Memory* @sub_4025e0.removeHolding(%struct.State* nonnull %0, i64 %943, %struct.Memory* %call2_40ca63)
  %948 = load i64, i64* %3, align 8
  %949 = add i64 %948, 44
  store i64 %949, i64* %3, align 8
  br label %block_.L_40cab3

block_.L_40ca8c:                                  ; preds = %block_.L_40ca46
  %950 = add i64 %906, -42524
  %951 = add i64 %906, 8
  %952 = load i64, i64* %6, align 8
  %953 = add i64 %952, -8
  %954 = inttoptr i64 %953 to i64*
  store i64 %951, i64* %954, align 8
  store i64 %953, i64* %6, align 8
  store i64 %950, i64* %3, align 8
  %call2_40ca8f = tail call %struct.Memory* @sub_402470.SwitchColor(%struct.State* nonnull %0, i64 %950, %struct.Memory* %2)
  %955 = load i64, i64* %3, align 8
  store i64 1, i64* %RCX.i1524, align 8
  %956 = load i32, i32* bitcast (%G_0x8661bc_type* @G_0x8661bc to i32*), align 8
  store i8 0, i8* %14, align 1
  %957 = and i32 %956, 255
  %958 = tail call i32 @llvm.ctpop.i32(i32 %957)
  %959 = trunc i32 %958 to i8
  %960 = and i8 %959, 1
  %961 = xor i8 %960, 1
  store i8 %961, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %962 = icmp eq i32 %956, 0
  %963 = zext i1 %962 to i8
  store i8 %963, i8* %29, align 1
  %964 = lshr i32 %956, 31
  %965 = trunc i32 %964 to i8
  store i8 %965, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %966 = xor i1 %962, true
  %967 = load i64, i64* %RBP.i, align 8
  %968 = add i64 %967, -48
  %969 = zext i1 %966 to i32
  %970 = add i64 %955, 21
  store i64 %970, i64* %3, align 8
  %971 = inttoptr i64 %968 to i32*
  store i32 %969, i32* %971, align 4
  %972 = load i32, i32* %EAX.i1204, align 4
  %973 = zext i32 %972 to i64
  %974 = load i64, i64* %3, align 8
  store i64 %973, i64* %RDI.i1533, align 8
  %975 = load i64, i64* %RBP.i, align 8
  %976 = add i64 %975, -48
  %977 = add i64 %974, 5
  store i64 %977, i64* %3, align 8
  %978 = inttoptr i64 %976 to i32*
  %979 = load i32, i32* %978, align 4
  %980 = zext i32 %979 to i64
  store i64 %980, i64* %RSI.i1516, align 8
  %981 = add i64 %974, -42185
  %982 = add i64 %974, 10
  %983 = load i64, i64* %6, align 8
  %984 = add i64 %983, -8
  %985 = inttoptr i64 %984 to i64*
  store i64 %982, i64* %985, align 8
  store i64 %984, i64* %6, align 8
  store i64 %981, i64* %3, align 8
  %call2_40caae = tail call %struct.Memory* @sub_4025e0.removeHolding(%struct.State* nonnull %0, i64 %981, %struct.Memory* %call2_40ca8f)
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_40cab3

block_.L_40cab3:                                  ; preds = %block_.L_40ca8c, %block_40ca60
  %986 = phi i64 [ %.pre, %block_.L_40ca8c ], [ %949, %block_40ca60 ]
  %MEMORY.1 = phi %struct.Memory* [ %call2_40caae, %block_.L_40ca8c ], [ %call2_40ca82, %block_40ca60 ]
  %987 = add i64 %986, 5
  store i64 %987, i64* %3, align 8
  br label %block_.L_40cab8

block_.L_40cab8:                                  ; preds = %block_40ca38, %block_.L_40cab3
  %988 = phi i64 [ %987, %block_.L_40cab3 ], [ %878, %block_40ca38 ]
  %MEMORY.2 = phi %struct.Memory* [ %MEMORY.1, %block_.L_40cab3 ], [ %2, %block_40ca38 ]
  store i64 ptrtoint (%G__0x8a0a80_type* @G__0x8a0a80 to i64), i64* %RAX.i1536, align 8
  %989 = load i64, i64* %RBP.i, align 8
  %990 = add i64 %989, -28
  %991 = add i64 %988, 14
  store i64 %991, i64* %3, align 8
  %992 = inttoptr i64 %990 to i32*
  %993 = load i32, i32* %992, align 4
  %994 = sext i32 %993 to i64
  %995 = mul nsw i64 %994, 576
  store i64 %995, i64* %RCX.i1524, align 8
  %996 = lshr i64 %995, 63
  %997 = add i64 %995, ptrtoint (%G__0x8a0a80_type* @G__0x8a0a80 to i64)
  store i64 %997, i64* %RAX.i1536, align 8
  %998 = icmp ult i64 %997, ptrtoint (%G__0x8a0a80_type* @G__0x8a0a80 to i64)
  %999 = icmp ult i64 %997, %995
  %1000 = or i1 %998, %999
  %1001 = zext i1 %1000 to i8
  store i8 %1001, i8* %14, align 1
  %1002 = trunc i64 %997 to i32
  %1003 = and i32 %1002, 248
  %1004 = tail call i32 @llvm.ctpop.i32(i32 %1003)
  %1005 = trunc i32 %1004 to i8
  %1006 = and i8 %1005, 1
  %1007 = xor i8 %1006, 1
  store i8 %1007, i8* %21, align 1
  %1008 = xor i64 %997, ptrtoint (%G__0x8a0a80_type* @G__0x8a0a80 to i64)
  %1009 = lshr i64 %1008, 4
  %1010 = trunc i64 %1009 to i8
  %1011 = and i8 %1010, 1
  store i8 %1011, i8* %26, align 1
  %1012 = icmp eq i64 %997, 0
  %1013 = zext i1 %1012 to i8
  store i8 %1013, i8* %29, align 1
  %1014 = lshr i64 %997, 63
  %1015 = trunc i64 %1014 to i8
  store i8 %1015, i8* %32, align 1
  %1016 = xor i64 %1014, lshr (i64 ptrtoint (%G__0x8a0a80_type* @G__0x8a0a80 to i64), i64 63)
  %1017 = xor i64 %1014, %996
  %1018 = add nuw nsw i64 %1016, %1017
  %1019 = icmp eq i64 %1018, 2
  %1020 = zext i1 %1019 to i8
  store i8 %1020, i8* %38, align 1
  %1021 = add i64 %989, -24
  %1022 = add i64 %988, 28
  store i64 %1022, i64* %3, align 8
  %1023 = inttoptr i64 %1021 to i32*
  %1024 = load i32, i32* %1023, align 4
  %1025 = sext i32 %1024 to i64
  store i64 %1025, i64* %RCX.i1524, align 8
  %1026 = shl nsw i64 %1025, 2
  %1027 = add i64 %1026, %997
  %1028 = add i64 %988, 31
  store i64 %1028, i64* %3, align 8
  %1029 = inttoptr i64 %1027 to i32*
  %1030 = load i32, i32* %1029, align 4
  %1031 = load i32, i32* bitcast (%G_0x633b40_type* @G_0x633b40 to i32*), align 8
  %1032 = xor i32 %1031, %1030
  %1033 = zext i32 %1032 to i64
  store i64 %1033, i64* %RDX.i1281, align 8
  store i8 0, i8* %14, align 1
  %1034 = and i32 %1032, 255
  %1035 = tail call i32 @llvm.ctpop.i32(i32 %1034)
  %1036 = trunc i32 %1035 to i8
  %1037 = and i8 %1036, 1
  %1038 = xor i8 %1037, 1
  store i8 %1038, i8* %21, align 1
  %1039 = icmp eq i32 %1032, 0
  %1040 = zext i1 %1039 to i8
  store i8 %1040, i8* %29, align 1
  %1041 = lshr i32 %1032, 31
  %1042 = trunc i32 %1041 to i8
  store i8 %1042, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i32 %1032, i32* bitcast (%G_0x633b40_type* @G_0x633b40 to i32*), align 8
  %1043 = load i64, i64* %RBP.i, align 8
  %1044 = add i64 %1043, -28
  %1045 = add i64 %988, 49
  store i64 %1045, i64* %3, align 8
  %1046 = inttoptr i64 %1044 to i32*
  %1047 = load i32, i32* %1046, align 4
  %1048 = sext i32 %1047 to i64
  store i64 %1048, i64* %RAX.i1536, align 8
  %1049 = shl nsw i64 %1048, 2
  %1050 = add nsw i64 %1049, 6478512
  %1051 = add i64 %988, 56
  store i64 %1051, i64* %3, align 8
  %1052 = inttoptr i64 %1050 to i32*
  %1053 = load i32, i32* %1052, align 4
  %1054 = load i32, i32* bitcast (%G_0x8661c0_type* @G_0x8661c0 to i32*), align 8
  %1055 = add i32 %1054, %1053
  store i32 %1055, i32* bitcast (%G_0x8661c0_type* @G_0x8661c0 to i32*), align 8
  %1056 = load i32, i32* bitcast (%G_0x63ae48_type* @G_0x63ae48 to i32*), align 8
  %1057 = add i32 %1056, 1
  %1058 = zext i32 %1057 to i64
  store i64 %1058, i64* %RDX.i1281, align 8
  %1059 = icmp eq i32 %1056, -1
  %1060 = icmp eq i32 %1057, 0
  %1061 = or i1 %1059, %1060
  %1062 = zext i1 %1061 to i8
  store i8 %1062, i8* %14, align 1
  %1063 = and i32 %1057, 255
  %1064 = tail call i32 @llvm.ctpop.i32(i32 %1063)
  %1065 = trunc i32 %1064 to i8
  %1066 = and i8 %1065, 1
  %1067 = xor i8 %1066, 1
  store i8 %1067, i8* %21, align 1
  %1068 = xor i32 %1057, %1056
  %1069 = lshr i32 %1068, 4
  %1070 = trunc i32 %1069 to i8
  %1071 = and i8 %1070, 1
  store i8 %1071, i8* %26, align 1
  %1072 = zext i1 %1060 to i8
  store i8 %1072, i8* %29, align 1
  %1073 = lshr i32 %1057, 31
  %1074 = trunc i32 %1073 to i8
  store i8 %1074, i8* %32, align 1
  %1075 = lshr i32 %1056, 31
  %1076 = xor i32 %1073, %1075
  %1077 = add nuw nsw i32 %1076, %1073
  %1078 = icmp eq i32 %1077, 2
  %1079 = zext i1 %1078 to i8
  store i8 %1079, i8* %38, align 1
  %1080 = add i64 %988, 87
  store i64 %1080, i64* %3, align 8
  store i32 %1057, i32* bitcast (%G_0x63ae48_type* @G_0x63ae48 to i32*), align 8
  br label %block_.L_40cb0f

block_.L_40cb0f:                                  ; preds = %block_.L_40cab8, %block_40ca20
  %.pre28 = phi i64 [ %1043, %block_.L_40cab8 ], [ %.pre28.pre, %block_40ca20 ]
  %1081 = phi i64 [ %1080, %block_.L_40cab8 ], [ %848, %block_40ca20 ]
  %MEMORY.3 = phi %struct.Memory* [ %MEMORY.2, %block_.L_40cab8 ], [ %2, %block_40ca20 ]
  %1082 = add i64 %1081, 5
  store i64 %1082, i64* %3, align 8
  br label %block_.L_40cb14

block_.L_40cb14:                                  ; preds = %block_.L_40c977, %block_.L_40cb0f
  %1083 = phi i64 [ %814, %block_.L_40c977 ], [ %1082, %block_.L_40cb0f ]
  %1084 = phi i64 [ %799, %block_.L_40c977 ], [ %.pre28, %block_.L_40cb0f ]
  %MEMORY.4 = phi %struct.Memory* [ %2, %block_.L_40c977 ], [ %MEMORY.3, %block_.L_40cb0f ]
  %1085 = add i64 %1084, -24
  %1086 = add i64 %1083, 4
  store i64 %1086, i64* %3, align 8
  %1087 = inttoptr i64 %1085 to i32*
  %1088 = load i32, i32* %1087, align 4
  %1089 = sext i32 %1088 to i64
  store i64 %1089, i64* %RAX.i1536, align 8
  %1090 = shl nsw i64 %1089, 2
  %1091 = add nsw i64 %1090, 8807744
  %1092 = add i64 %1083, 12
  store i64 %1092, i64* %3, align 8
  %1093 = inttoptr i64 %1091 to i32*
  %1094 = load i32, i32* %1093, align 4
  %1095 = add i32 %1094, -1
  %1096 = icmp eq i32 %1094, 0
  %1097 = zext i1 %1096 to i8
  store i8 %1097, i8* %14, align 1
  %1098 = and i32 %1095, 255
  %1099 = tail call i32 @llvm.ctpop.i32(i32 %1098)
  %1100 = trunc i32 %1099 to i8
  %1101 = and i8 %1100, 1
  %1102 = xor i8 %1101, 1
  store i8 %1102, i8* %21, align 1
  %1103 = xor i32 %1095, %1094
  %1104 = lshr i32 %1103, 4
  %1105 = trunc i32 %1104 to i8
  %1106 = and i8 %1105, 1
  store i8 %1106, i8* %26, align 1
  %1107 = icmp eq i32 %1095, 0
  %1108 = zext i1 %1107 to i8
  store i8 %1108, i8* %29, align 1
  %1109 = lshr i32 %1095, 31
  %1110 = trunc i32 %1109 to i8
  store i8 %1110, i8* %32, align 1
  %1111 = lshr i32 %1094, 31
  %1112 = xor i32 %1109, %1111
  %1113 = add nuw nsw i32 %1112, %1111
  %1114 = icmp eq i32 %1113, 2
  %1115 = zext i1 %1114 to i8
  store i8 %1115, i8* %38, align 1
  %.v37 = select i1 %1107, i64 18, i64 534
  %1116 = add i64 %1083, %.v37
  store i64 %1116, i64* %3, align 8
  br i1 %1107, label %block_40cb26, label %block_.L_40cd2a

block_40cb26:                                     ; preds = %block_.L_40cb14
  %1117 = add i64 %1084, -16
  %1118 = add i64 %1116, 4
  store i64 %1118, i64* %3, align 8
  %1119 = inttoptr i64 %1117 to i32*
  %1120 = load i32, i32* %1119, align 4
  store i8 0, i8* %14, align 1
  %1121 = and i32 %1120, 255
  %1122 = tail call i32 @llvm.ctpop.i32(i32 %1121)
  %1123 = trunc i32 %1122 to i8
  %1124 = and i8 %1123, 1
  %1125 = xor i8 %1124, 1
  store i8 %1125, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1126 = icmp eq i32 %1120, 0
  %1127 = zext i1 %1126 to i8
  store i8 %1127, i8* %29, align 1
  %1128 = lshr i32 %1120, 31
  %1129 = trunc i32 %1128 to i8
  store i8 %1129, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v48 = select i1 %1126, i64 373, i64 10
  %1130 = add i64 %1116, %.v48
  store i64 %1130, i64* %3, align 8
  br i1 %1126, label %block_.L_40cc9b, label %block_40cb30

block_40cb30:                                     ; preds = %block_40cb26
  store i64 1, i64* %RDI.i1533, align 8
  store i64 0, i64* %RSI.i1516, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %1131 = add i64 %1130, 11
  store i64 %1131, i64* %3, align 8
  %1132 = load i32, i32* %1087, align 4
  %1133 = sext i32 %1132 to i64
  store i64 %1133, i64* %RAX.i1536, align 8
  %1134 = shl nsw i64 %1133, 2
  %1135 = add nsw i64 %1134, 9047232
  %1136 = add i64 %1130, 18
  store i64 %1136, i64* %3, align 8
  %1137 = inttoptr i64 %1135 to i32*
  %1138 = load i32, i32* %1137, align 4
  %1139 = load i32, i32* bitcast (%G_0x633b40_type* @G_0x633b40 to i32*), align 8
  %1140 = xor i32 %1139, %1138
  %1141 = zext i32 %1140 to i64
  store i64 %1141, i64* %RCX.i1524, align 8
  store i8 0, i8* %14, align 1
  %1142 = and i32 %1140, 255
  %1143 = tail call i32 @llvm.ctpop.i32(i32 %1142)
  %1144 = trunc i32 %1143 to i8
  %1145 = and i8 %1144, 1
  %1146 = xor i8 %1145, 1
  store i8 %1146, i8* %21, align 1
  %1147 = icmp eq i32 %1140, 0
  %1148 = zext i1 %1147 to i8
  store i8 %1148, i8* %29, align 1
  %1149 = lshr i32 %1140, 31
  %1150 = trunc i32 %1149 to i8
  store i8 %1150, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %ECX.i1080 = bitcast %union.anon* %57 to i32*
  store i32 %1140, i32* bitcast (%G_0x633b40_type* @G_0x633b40 to i32*), align 8
  %1151 = add i64 %1084, -20
  %1152 = add i64 %1130, 36
  store i64 %1152, i64* %3, align 8
  %1153 = inttoptr i64 %1151 to i32*
  %1154 = load i32, i32* %1153, align 4
  %1155 = sext i32 %1154 to i64
  store i64 %1155, i64* %RAX.i1536, align 8
  %1156 = shl nsw i64 %1155, 2
  %1157 = add nsw i64 %1156, 9047232
  %1158 = add i64 %1130, 43
  store i64 %1158, i64* %3, align 8
  %1159 = inttoptr i64 %1157 to i32*
  %1160 = load i32, i32* %1159, align 4
  %1161 = xor i32 %1140, %1160
  %1162 = zext i32 %1161 to i64
  store i64 %1162, i64* %RCX.i1524, align 8
  store i8 0, i8* %14, align 1
  %1163 = and i32 %1161, 255
  %1164 = tail call i32 @llvm.ctpop.i32(i32 %1163)
  %1165 = trunc i32 %1164 to i8
  %1166 = and i8 %1165, 1
  %1167 = xor i8 %1166, 1
  store i8 %1167, i8* %21, align 1
  %1168 = icmp eq i32 %1161, 0
  %1169 = zext i1 %1168 to i8
  store i8 %1169, i8* %29, align 1
  %1170 = lshr i32 %1161, 31
  %1171 = trunc i32 %1170 to i8
  store i8 %1171, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i32 %1161, i32* bitcast (%G_0x633b40_type* @G_0x633b40 to i32*), align 8
  %1172 = load i64, i64* %RBP.i, align 8
  %1173 = add i64 %1172, -24
  %1174 = add i64 %1130, 60
  store i64 %1174, i64* %3, align 8
  %1175 = inttoptr i64 %1173 to i32*
  %1176 = load i32, i32* %1175, align 4
  %1177 = add i32 %1176, -12
  %1178 = zext i32 %1177 to i64
  store i64 %1178, i64* %RCX.i1524, align 8
  %1179 = icmp ult i32 %1176, 12
  %1180 = zext i1 %1179 to i8
  store i8 %1180, i8* %14, align 1
  %1181 = and i32 %1177, 255
  %1182 = tail call i32 @llvm.ctpop.i32(i32 %1181)
  %1183 = trunc i32 %1182 to i8
  %1184 = and i8 %1183, 1
  %1185 = xor i8 %1184, 1
  store i8 %1185, i8* %21, align 1
  %1186 = xor i32 %1177, %1176
  %1187 = lshr i32 %1186, 4
  %1188 = trunc i32 %1187 to i8
  %1189 = and i8 %1188, 1
  store i8 %1189, i8* %26, align 1
  %1190 = icmp eq i32 %1177, 0
  %1191 = zext i1 %1190 to i8
  store i8 %1191, i8* %29, align 1
  %1192 = lshr i32 %1177, 31
  %1193 = trunc i32 %1192 to i8
  store i8 %1193, i8* %32, align 1
  %1194 = lshr i32 %1176, 31
  %1195 = xor i32 %1192, %1194
  %1196 = add nuw nsw i32 %1195, %1194
  %1197 = icmp eq i32 %1196, 2
  %1198 = zext i1 %1197 to i8
  store i8 %1198, i8* %38, align 1
  %1199 = sext i32 %1177 to i64
  store i64 %1199, i64* %RAX.i1536, align 8
  %1200 = shl nsw i64 %1199, 2
  %1201 = add nsw i64 %1200, 9047808
  %1202 = add i64 %1130, 73
  store i64 %1202, i64* %3, align 8
  %1203 = inttoptr i64 %1201 to i32*
  %1204 = load i32, i32* %1203, align 4
  %1205 = xor i32 %1161, %1204
  %1206 = zext i32 %1205 to i64
  store i64 %1206, i64* %RCX.i1524, align 8
  store i8 0, i8* %14, align 1
  %1207 = and i32 %1205, 255
  %1208 = tail call i32 @llvm.ctpop.i32(i32 %1207)
  %1209 = trunc i32 %1208 to i8
  %1210 = and i8 %1209, 1
  %1211 = xor i8 %1210, 1
  store i8 %1211, i8* %21, align 1
  %1212 = icmp eq i32 %1205, 0
  %1213 = zext i1 %1212 to i8
  store i8 %1213, i8* %29, align 1
  %1214 = lshr i32 %1205, 31
  %1215 = trunc i32 %1214 to i8
  store i8 %1215, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i32 %1205, i32* bitcast (%G_0x633b40_type* @G_0x633b40 to i32*), align 8
  %1216 = add i64 %1130, 91
  store i64 %1216, i64* %3, align 8
  %1217 = load i32, i32* %1175, align 4
  %1218 = sext i32 %1217 to i64
  store i64 %1218, i64* %RAX.i1536, align 8
  %1219 = shl nsw i64 %1218, 2
  %1220 = add nsw i64 %1219, 8807744
  %1221 = add i64 %1130, 102
  store i64 %1221, i64* %3, align 8
  %1222 = inttoptr i64 %1220 to i32*
  store i32 13, i32* %1222, align 4
  %1223 = load i64, i64* %RBP.i, align 8
  %1224 = add i64 %1223, -20
  %1225 = load i64, i64* %3, align 8
  %1226 = add i64 %1225, 4
  store i64 %1226, i64* %3, align 8
  %1227 = inttoptr i64 %1224 to i32*
  %1228 = load i32, i32* %1227, align 4
  %1229 = sext i32 %1228 to i64
  store i64 %1229, i64* %RAX.i1536, align 8
  %1230 = shl nsw i64 %1229, 2
  %1231 = add nsw i64 %1230, 8807744
  %1232 = add i64 %1225, 15
  store i64 %1232, i64* %3, align 8
  %1233 = inttoptr i64 %1231 to i32*
  store i32 1, i32* %1233, align 4
  %1234 = load i64, i64* %3, align 8
  %1235 = load i32, i32* bitcast (%G_0x62dab8_type* @G_0x62dab8 to i32*), align 8
  %1236 = load i32, i32* bitcast (%G_0x8661c0_type* @G_0x8661c0 to i32*), align 8
  %1237 = add i32 %1236, %1235
  %1238 = zext i32 %1237 to i64
  store i64 %1238, i64* %RCX.i1524, align 8
  %1239 = icmp ult i32 %1237, %1235
  %1240 = icmp ult i32 %1237, %1236
  %1241 = or i1 %1239, %1240
  %1242 = zext i1 %1241 to i8
  store i8 %1242, i8* %14, align 1
  %1243 = and i32 %1237, 255
  %1244 = tail call i32 @llvm.ctpop.i32(i32 %1243)
  %1245 = trunc i32 %1244 to i8
  %1246 = and i8 %1245, 1
  %1247 = xor i8 %1246, 1
  store i8 %1247, i8* %21, align 1
  %1248 = xor i32 %1236, %1235
  %1249 = xor i32 %1248, %1237
  %1250 = lshr i32 %1249, 4
  %1251 = trunc i32 %1250 to i8
  %1252 = and i8 %1251, 1
  store i8 %1252, i8* %26, align 1
  %1253 = icmp eq i32 %1237, 0
  %1254 = zext i1 %1253 to i8
  store i8 %1254, i8* %29, align 1
  %1255 = lshr i32 %1237, 31
  %1256 = trunc i32 %1255 to i8
  store i8 %1256, i8* %32, align 1
  %1257 = lshr i32 %1235, 31
  %1258 = lshr i32 %1236, 31
  %1259 = xor i32 %1255, %1257
  %1260 = xor i32 %1255, %1258
  %1261 = add nuw nsw i32 %1259, %1260
  %1262 = icmp eq i32 %1261, 2
  %1263 = zext i1 %1262 to i8
  store i8 %1263, i8* %38, align 1
  store i32 %1237, i32* bitcast (%G_0x8661c0_type* @G_0x8661c0 to i32*), align 8
  %1264 = add i64 %1234, -42437
  %1265 = add i64 %1234, 26
  %1266 = load i64, i64* %6, align 8
  %1267 = add i64 %1266, -8
  %1268 = inttoptr i64 %1267 to i64*
  store i64 %1265, i64* %1268, align 8
  store i64 %1267, i64* %6, align 8
  store i64 %1264, i64* %3, align 8
  %call2_40cbba = tail call %struct.Memory* @sub_4025e0.removeHolding(%struct.State* nonnull %0, i64 %1264, %struct.Memory* %MEMORY.4)
  %1269 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x880b20_type* @G__0x880b20 to i64), i64* %RAX.i1536, align 8
  %1270 = load i32, i32* bitcast (%G_0x63ae48_type* @G_0x63ae48 to i32*), align 8
  %1271 = add i32 %1270, 1
  %1272 = zext i32 %1271 to i64
  store i64 %1272, i64* %RCX.i1524, align 8
  %1273 = icmp eq i32 %1270, -1
  %1274 = icmp eq i32 %1271, 0
  %1275 = or i1 %1273, %1274
  %1276 = zext i1 %1275 to i8
  store i8 %1276, i8* %14, align 1
  %1277 = and i32 %1271, 255
  %1278 = tail call i32 @llvm.ctpop.i32(i32 %1277)
  %1279 = trunc i32 %1278 to i8
  %1280 = and i8 %1279, 1
  %1281 = xor i8 %1280, 1
  store i8 %1281, i8* %21, align 1
  %1282 = xor i32 %1271, %1270
  %1283 = lshr i32 %1282, 4
  %1284 = trunc i32 %1283 to i8
  %1285 = and i8 %1284, 1
  store i8 %1285, i8* %26, align 1
  %1286 = zext i1 %1274 to i8
  store i8 %1286, i8* %29, align 1
  %1287 = lshr i32 %1271, 31
  %1288 = trunc i32 %1287 to i8
  store i8 %1288, i8* %32, align 1
  %1289 = lshr i32 %1270, 31
  %1290 = xor i32 %1287, %1289
  %1291 = add nuw nsw i32 %1290, %1287
  %1292 = icmp eq i32 %1291, 2
  %1293 = zext i1 %1292 to i8
  store i8 %1293, i8* %38, align 1
  store i32 %1271, i32* bitcast (%G_0x63ae48_type* @G_0x63ae48 to i32*), align 8
  %1294 = load i64, i64* %RBP.i, align 8
  %1295 = add i64 %1294, -24
  %1296 = add i64 %1269, 30
  store i64 %1296, i64* %3, align 8
  %1297 = inttoptr i64 %1295 to i32*
  %1298 = load i32, i32* %1297, align 4
  %1299 = add i32 %1298, -12
  %1300 = zext i32 %1299 to i64
  store i64 %1300, i64* %RCX.i1524, align 8
  %1301 = icmp ult i32 %1298, 12
  %1302 = zext i1 %1301 to i8
  store i8 %1302, i8* %14, align 1
  %1303 = and i32 %1299, 255
  %1304 = tail call i32 @llvm.ctpop.i32(i32 %1303)
  %1305 = trunc i32 %1304 to i8
  %1306 = and i8 %1305, 1
  %1307 = xor i8 %1306, 1
  store i8 %1307, i8* %21, align 1
  %1308 = xor i32 %1299, %1298
  %1309 = lshr i32 %1308, 4
  %1310 = trunc i32 %1309 to i8
  %1311 = and i8 %1310, 1
  store i8 %1311, i8* %26, align 1
  %1312 = icmp eq i32 %1299, 0
  %1313 = zext i1 %1312 to i8
  store i8 %1313, i8* %29, align 1
  %1314 = lshr i32 %1299, 31
  %1315 = trunc i32 %1314 to i8
  store i8 %1315, i8* %32, align 1
  %1316 = lshr i32 %1298, 31
  %1317 = xor i32 %1314, %1316
  %1318 = add nuw nsw i32 %1317, %1316
  %1319 = icmp eq i32 %1318, 2
  %1320 = zext i1 %1319 to i8
  store i8 %1320, i8* %38, align 1
  %1321 = sext i32 %1299 to i64
  store i64 %1321, i64* %RDX.i1281, align 8
  %1322 = shl nsw i64 %1321, 2
  %1323 = add nsw i64 %1322, 8807744
  %1324 = add i64 %1269, 47
  store i64 %1324, i64* %3, align 8
  %1325 = inttoptr i64 %1323 to i32*
  store i32 2, i32* %1325, align 4
  %1326 = load i64, i64* %RBP.i, align 8
  %1327 = add i64 %1326, -24
  %1328 = load i64, i64* %3, align 8
  %1329 = add i64 %1328, 4
  store i64 %1329, i64* %3, align 8
  %1330 = inttoptr i64 %1327 to i32*
  %1331 = load i32, i32* %1330, align 4
  %1332 = sext i32 %1331 to i64
  store i64 %1332, i64* %RDX.i1281, align 8
  %1333 = shl nsw i64 %1332, 2
  %1334 = add nsw i64 %1333, 8922032
  %1335 = add i64 %1328, 11
  store i64 %1335, i64* %3, align 8
  %1336 = inttoptr i64 %1334 to i32*
  %1337 = load i32, i32* %1336, align 4
  %1338 = add i32 %1337, -1
  %1339 = zext i32 %1338 to i64
  store i64 %1339, i64* %RCX.i1524, align 8
  %1340 = icmp ne i32 %1337, 0
  %1341 = zext i1 %1340 to i8
  store i8 %1341, i8* %14, align 1
  %1342 = and i32 %1338, 255
  %1343 = tail call i32 @llvm.ctpop.i32(i32 %1342)
  %1344 = trunc i32 %1343 to i8
  %1345 = and i8 %1344, 1
  %1346 = xor i8 %1345, 1
  store i8 %1346, i8* %21, align 1
  %1347 = xor i32 %1337, 16
  %1348 = xor i32 %1347, %1338
  %1349 = lshr i32 %1348, 4
  %1350 = trunc i32 %1349 to i8
  %1351 = and i8 %1350, 1
  store i8 %1351, i8* %26, align 1
  %1352 = icmp eq i32 %1338, 0
  %1353 = zext i1 %1352 to i8
  store i8 %1353, i8* %29, align 1
  %1354 = lshr i32 %1338, 31
  %1355 = trunc i32 %1354 to i8
  store i8 %1355, i8* %32, align 1
  %1356 = lshr i32 %1337, 31
  %1357 = xor i32 %1354, %1356
  %1358 = xor i32 %1354, 1
  %1359 = add nuw nsw i32 %1357, %1358
  %1360 = icmp eq i32 %1359, 2
  %1361 = zext i1 %1360 to i8
  store i8 %1361, i8* %38, align 1
  %1362 = add i64 %1328, 21
  store i64 %1362, i64* %3, align 8
  store i32 %1338, i32* %1336, align 4
  %1363 = load i64, i64* %RBP.i, align 8
  %1364 = add i64 %1363, -20
  %1365 = load i64, i64* %3, align 8
  %1366 = add i64 %1365, 4
  store i64 %1366, i64* %3, align 8
  %1367 = inttoptr i64 %1364 to i32*
  %1368 = load i32, i32* %1367, align 4
  %1369 = sext i32 %1368 to i64
  store i64 %1369, i64* %RDX.i1281, align 8
  %1370 = shl nsw i64 %1369, 2
  %1371 = add nsw i64 %1370, 8922032
  %1372 = add i64 %1365, 11
  store i64 %1372, i64* %3, align 8
  %1373 = inttoptr i64 %1371 to i32*
  %1374 = load i32, i32* %1373, align 4
  %1375 = add i32 %1374, -1
  %1376 = zext i32 %1375 to i64
  store i64 %1376, i64* %RCX.i1524, align 8
  %1377 = icmp ne i32 %1374, 0
  %1378 = zext i1 %1377 to i8
  store i8 %1378, i8* %14, align 1
  %1379 = and i32 %1375, 255
  %1380 = tail call i32 @llvm.ctpop.i32(i32 %1379)
  %1381 = trunc i32 %1380 to i8
  %1382 = and i8 %1381, 1
  %1383 = xor i8 %1382, 1
  store i8 %1383, i8* %21, align 1
  %1384 = xor i32 %1374, 16
  %1385 = xor i32 %1384, %1375
  %1386 = lshr i32 %1385, 4
  %1387 = trunc i32 %1386 to i8
  %1388 = and i8 %1387, 1
  store i8 %1388, i8* %26, align 1
  %1389 = icmp eq i32 %1375, 0
  %1390 = zext i1 %1389 to i8
  store i8 %1390, i8* %29, align 1
  %1391 = lshr i32 %1375, 31
  %1392 = trunc i32 %1391 to i8
  store i8 %1392, i8* %32, align 1
  %1393 = lshr i32 %1374, 31
  %1394 = xor i32 %1391, %1393
  %1395 = xor i32 %1391, 1
  %1396 = add nuw nsw i32 %1394, %1395
  %1397 = icmp eq i32 %1396, 2
  %1398 = zext i1 %1397 to i8
  store i8 %1398, i8* %38, align 1
  %1399 = add i64 %1365, 21
  store i64 %1399, i64* %3, align 8
  store i32 %1375, i32* %1373, align 4
  %1400 = load i64, i64* %RBP.i, align 8
  %1401 = add i64 %1400, -24
  %1402 = load i64, i64* %3, align 8
  %1403 = add i64 %1402, 3
  store i64 %1403, i64* %3, align 8
  %1404 = inttoptr i64 %1401 to i32*
  %1405 = load i32, i32* %1404, align 4
  %1406 = add i32 %1405, -12
  %1407 = zext i32 %1406 to i64
  store i64 %1407, i64* %RCX.i1524, align 8
  %1408 = icmp ult i32 %1405, 12
  %1409 = zext i1 %1408 to i8
  store i8 %1409, i8* %14, align 1
  %1410 = and i32 %1406, 255
  %1411 = tail call i32 @llvm.ctpop.i32(i32 %1410)
  %1412 = trunc i32 %1411 to i8
  %1413 = and i8 %1412, 1
  %1414 = xor i8 %1413, 1
  store i8 %1414, i8* %21, align 1
  %1415 = xor i32 %1406, %1405
  %1416 = lshr i32 %1415, 4
  %1417 = trunc i32 %1416 to i8
  %1418 = and i8 %1417, 1
  store i8 %1418, i8* %26, align 1
  %1419 = icmp eq i32 %1406, 0
  %1420 = zext i1 %1419 to i8
  store i8 %1420, i8* %29, align 1
  %1421 = lshr i32 %1406, 31
  %1422 = trunc i32 %1421 to i8
  store i8 %1422, i8* %32, align 1
  %1423 = lshr i32 %1405, 31
  %1424 = xor i32 %1421, %1423
  %1425 = add nuw nsw i32 %1424, %1423
  %1426 = icmp eq i32 %1425, 2
  %1427 = zext i1 %1426 to i8
  store i8 %1427, i8* %38, align 1
  %1428 = sext i32 %1406 to i64
  store i64 %1428, i64* %RDX.i1281, align 8
  %1429 = shl nsw i64 %1428, 2
  %1430 = add nsw i64 %1429, 8922032
  %1431 = add i64 %1402, 16
  store i64 %1431, i64* %3, align 8
  %1432 = inttoptr i64 %1430 to i32*
  %1433 = load i32, i32* %1432, align 4
  %1434 = add i32 %1433, -1
  %1435 = add i64 %1402, 26
  store i64 %1435, i64* %3, align 8
  store i32 %1434, i32* %1432, align 4
  %1436 = load i64, i64* %3, align 8
  %1437 = load i32, i32* bitcast (%G_0x8661bc_type* @G_0x8661bc to i32*), align 8
  %1438 = xor i32 %1437, 1
  %1439 = zext i32 %1438 to i64
  store i64 %1439, i64* %RCX.i1524, align 8
  store i32 %1438, i32* bitcast (%G_0x8661bc_type* @G_0x8661bc to i32*), align 8
  %1440 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %1441 = sext i32 %1440 to i64
  %1442 = shl nsw i64 %1441, 4
  store i64 %1442, i64* %RDX.i1281, align 8
  %R8.i970 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %1443 = load i64, i64* %RAX.i1536, align 8
  %1444 = add i64 %1442, %1443
  store i64 %1444, i64* %R8.i970, align 8
  %1445 = icmp ult i64 %1444, %1443
  %1446 = icmp ult i64 %1444, %1442
  %1447 = or i1 %1445, %1446
  %1448 = zext i1 %1447 to i8
  store i8 %1448, i8* %14, align 1
  %1449 = trunc i64 %1444 to i32
  %1450 = and i32 %1449, 255
  %1451 = tail call i32 @llvm.ctpop.i32(i32 %1450)
  %1452 = trunc i32 %1451 to i8
  %1453 = and i8 %1452, 1
  %1454 = xor i8 %1453, 1
  store i8 %1454, i8* %21, align 1
  %1455 = xor i64 %1442, %1443
  %1456 = xor i64 %1455, %1444
  %1457 = lshr i64 %1456, 4
  %1458 = trunc i64 %1457 to i8
  %1459 = and i8 %1458, 1
  store i8 %1459, i8* %26, align 1
  %1460 = icmp eq i64 %1444, 0
  %1461 = zext i1 %1460 to i8
  store i8 %1461, i8* %29, align 1
  %1462 = lshr i64 %1444, 63
  %1463 = trunc i64 %1462 to i8
  store i8 %1463, i8* %32, align 1
  %1464 = lshr i64 %1443, 63
  %1465 = lshr i64 %1441, 59
  %1466 = and i64 %1465, 1
  %1467 = xor i64 %1462, %1464
  %1468 = xor i64 %1462, %1466
  %1469 = add nuw nsw i64 %1467, %1468
  %1470 = icmp eq i64 %1469, 2
  %1471 = zext i1 %1470 to i8
  store i8 %1471, i8* %38, align 1
  %1472 = inttoptr i64 %1444 to i32*
  %1473 = add i64 %1436, 38
  store i64 %1473, i64* %3, align 8
  %1474 = load i32, i32* %1472, align 4
  %1475 = zext i32 %1474 to i64
  store i64 %1475, i64* %RCX.i1524, align 8
  %1476 = load i64, i64* %RBP.i, align 8
  %1477 = add i64 %1476, -24
  %1478 = add i64 %1436, 41
  store i64 %1478, i64* %3, align 8
  %1479 = inttoptr i64 %1477 to i32*
  %1480 = load i32, i32* %1479, align 4
  %1481 = add i32 %1480, -12
  %1482 = zext i32 %1481 to i64
  store i64 %1482, i64* %RSI.i1516, align 8
  %1483 = icmp ult i32 %1480, 12
  %1484 = zext i1 %1483 to i8
  store i8 %1484, i8* %14, align 1
  %1485 = and i32 %1481, 255
  %1486 = tail call i32 @llvm.ctpop.i32(i32 %1485)
  %1487 = trunc i32 %1486 to i8
  %1488 = and i8 %1487, 1
  %1489 = xor i8 %1488, 1
  store i8 %1489, i8* %21, align 1
  %1490 = xor i32 %1481, %1480
  %1491 = lshr i32 %1490, 4
  %1492 = trunc i32 %1491 to i8
  %1493 = and i8 %1492, 1
  store i8 %1493, i8* %26, align 1
  %1494 = icmp eq i32 %1481, 0
  %1495 = zext i1 %1494 to i8
  store i8 %1495, i8* %29, align 1
  %1496 = lshr i32 %1481, 31
  %1497 = trunc i32 %1496 to i8
  store i8 %1497, i8* %32, align 1
  %1498 = lshr i32 %1480, 31
  %1499 = xor i32 %1496, %1498
  %1500 = add nuw nsw i32 %1499, %1498
  %1501 = icmp eq i32 %1500, 2
  %1502 = zext i1 %1501 to i8
  store i8 %1502, i8* %38, align 1
  %1503 = sext i32 %1481 to i64
  store i64 %1503, i64* %RDX.i1281, align 8
  %1504 = shl nsw i64 %1503, 2
  %1505 = add nsw i64 %1504, 8807152
  %1506 = add i64 %1436, 54
  store i64 %1506, i64* %3, align 8
  %1507 = inttoptr i64 %1505 to i32*
  store i32 %1474, i32* %1507, align 4
  %1508 = load i64, i64* %RBP.i, align 8
  %1509 = add i64 %1508, -24
  %1510 = load i64, i64* %3, align 8
  %1511 = add i64 %1510, 3
  store i64 %1511, i64* %3, align 8
  %1512 = inttoptr i64 %1509 to i32*
  %1513 = load i32, i32* %1512, align 4
  %1514 = add i32 %1513, -12
  %1515 = zext i32 %1514 to i64
  store i64 %1515, i64* %RCX.i1524, align 8
  %1516 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %1517 = sext i32 %1516 to i64
  %1518 = shl nsw i64 %1517, 4
  store i64 %1518, i64* %RDX.i1281, align 8
  %1519 = load i64, i64* %RAX.i1536, align 8
  %1520 = add i64 %1518, %1519
  store i64 %1520, i64* %RAX.i1536, align 8
  %1521 = icmp ult i64 %1520, %1519
  %1522 = icmp ult i64 %1520, %1518
  %1523 = or i1 %1521, %1522
  %1524 = zext i1 %1523 to i8
  store i8 %1524, i8* %14, align 1
  %1525 = trunc i64 %1520 to i32
  %1526 = and i32 %1525, 255
  %1527 = tail call i32 @llvm.ctpop.i32(i32 %1526)
  %1528 = trunc i32 %1527 to i8
  %1529 = and i8 %1528, 1
  %1530 = xor i8 %1529, 1
  store i8 %1530, i8* %21, align 1
  %1531 = xor i64 %1518, %1519
  %1532 = xor i64 %1531, %1520
  %1533 = lshr i64 %1532, 4
  %1534 = trunc i64 %1533 to i8
  %1535 = and i8 %1534, 1
  store i8 %1535, i8* %26, align 1
  %1536 = icmp eq i64 %1520, 0
  %1537 = zext i1 %1536 to i8
  store i8 %1537, i8* %29, align 1
  %1538 = lshr i64 %1520, 63
  %1539 = trunc i64 %1538 to i8
  store i8 %1539, i8* %32, align 1
  %1540 = lshr i64 %1519, 63
  %1541 = lshr i64 %1517, 59
  %1542 = and i64 %1541, 1
  %1543 = xor i64 %1538, %1540
  %1544 = xor i64 %1538, %1542
  %1545 = add nuw nsw i64 %1543, %1544
  %1546 = icmp eq i64 %1545, 2
  %1547 = zext i1 %1546 to i8
  store i8 %1547, i8* %38, align 1
  %1548 = inttoptr i64 %1520 to i32*
  %1549 = add i64 %1510, 24
  store i64 %1549, i64* %3, align 8
  %1550 = load i32, i32* %1548, align 4
  %1551 = sext i32 %1550 to i64
  store i64 %1551, i64* %RAX.i1536, align 8
  %1552 = shl nsw i64 %1551, 2
  %1553 = add nsw i64 %1552, 8778480
  %1554 = load i32, i32* %ECX.i1080, align 4
  %1555 = add i64 %1510, 31
  store i64 %1555, i64* %3, align 8
  %1556 = inttoptr i64 %1553 to i32*
  store i32 %1554, i32* %1556, align 4
  %1557 = load i64, i64* %RBP.i, align 8
  %1558 = add i64 %1557, -24
  %1559 = load i64, i64* %3, align 8
  %1560 = add i64 %1559, 4
  store i64 %1560, i64* %3, align 8
  %1561 = inttoptr i64 %1558 to i32*
  %1562 = load i32, i32* %1561, align 4
  %1563 = sext i32 %1562 to i64
  store i64 %1563, i64* %RAX.i1536, align 8
  %1564 = shl nsw i64 %1563, 2
  %1565 = add nsw i64 %1564, 8807152
  %1566 = add i64 %1559, 15
  store i64 %1566, i64* %3, align 8
  %1567 = inttoptr i64 %1565 to i32*
  store i32 0, i32* %1567, align 4
  %1568 = load i64, i64* %3, align 8
  %1569 = add i64 %1568, 2414
  br label %block_.L_40d604

block_.L_40cc9b:                                  ; preds = %block_40cb26
  %1570 = add i64 %1084, -20
  %1571 = add i64 %1130, 4
  store i64 %1571, i64* %3, align 8
  %1572 = inttoptr i64 %1570 to i32*
  %1573 = load i32, i32* %1572, align 4
  %1574 = sext i32 %1573 to i64
  store i64 %1574, i64* %RAX.i1536, align 8
  %1575 = shl nsw i64 %1574, 2
  %1576 = add nsw i64 %1575, 9047232
  %1577 = add i64 %1130, 11
  store i64 %1577, i64* %3, align 8
  %1578 = inttoptr i64 %1576 to i32*
  %1579 = load i32, i32* %1578, align 4
  %1580 = load i32, i32* bitcast (%G_0x633b40_type* @G_0x633b40 to i32*), align 8
  %1581 = xor i32 %1580, %1579
  %1582 = zext i32 %1581 to i64
  store i64 %1582, i64* %RCX.i1524, align 8
  store i8 0, i8* %14, align 1
  %1583 = and i32 %1581, 255
  %1584 = tail call i32 @llvm.ctpop.i32(i32 %1583)
  %1585 = trunc i32 %1584 to i8
  %1586 = and i8 %1585, 1
  %1587 = xor i8 %1586, 1
  store i8 %1587, i8* %21, align 1
  %1588 = icmp eq i32 %1581, 0
  %1589 = zext i1 %1588 to i8
  store i8 %1589, i8* %29, align 1
  %1590 = lshr i32 %1581, 31
  %1591 = trunc i32 %1590 to i8
  store i8 %1591, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i32 %1581, i32* bitcast (%G_0x633b40_type* @G_0x633b40 to i32*), align 8
  %1592 = add i64 %1130, 29
  store i64 %1592, i64* %3, align 8
  %1593 = load i32, i32* %1087, align 4
  %1594 = sext i32 %1593 to i64
  store i64 %1594, i64* %RAX.i1536, align 8
  %1595 = shl nsw i64 %1594, 2
  %1596 = add nsw i64 %1595, 9047232
  %1597 = add i64 %1130, 36
  store i64 %1597, i64* %3, align 8
  %1598 = inttoptr i64 %1596 to i32*
  %1599 = load i32, i32* %1598, align 4
  %1600 = xor i32 %1581, %1599
  %1601 = zext i32 %1600 to i64
  store i64 %1601, i64* %RCX.i1524, align 8
  store i8 0, i8* %14, align 1
  %1602 = and i32 %1600, 255
  %1603 = tail call i32 @llvm.ctpop.i32(i32 %1602)
  %1604 = trunc i32 %1603 to i8
  %1605 = and i8 %1604, 1
  %1606 = xor i8 %1605, 1
  store i8 %1606, i8* %21, align 1
  %1607 = icmp eq i32 %1600, 0
  %1608 = zext i1 %1607 to i8
  store i8 %1608, i8* %29, align 1
  %1609 = lshr i32 %1600, 31
  %1610 = trunc i32 %1609 to i8
  store i8 %1610, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i32 %1600, i32* bitcast (%G_0x633b40_type* @G_0x633b40 to i32*), align 8
  %1611 = add i64 %1084, -28
  %1612 = add i64 %1130, 53
  store i64 %1612, i64* %3, align 8
  %1613 = inttoptr i64 %1611 to i32*
  %1614 = load i32, i32* %1613, align 4
  %1615 = zext i32 %1614 to i64
  store i64 %1615, i64* %RCX.i1524, align 8
  %1616 = add i64 %1130, 57
  store i64 %1616, i64* %3, align 8
  %1617 = load i32, i32* %1087, align 4
  %1618 = sext i32 %1617 to i64
  store i64 %1618, i64* %RAX.i1536, align 8
  %1619 = shl nsw i64 %1618, 2
  %1620 = add nsw i64 %1619, 8807744
  %1621 = add i64 %1130, 64
  store i64 %1621, i64* %3, align 8
  %1622 = inttoptr i64 %1620 to i32*
  store i32 %1614, i32* %1622, align 4
  %1623 = load i64, i64* %RBP.i, align 8
  %1624 = add i64 %1623, -20
  %1625 = load i64, i64* %3, align 8
  %1626 = add i64 %1625, 4
  store i64 %1626, i64* %3, align 8
  %1627 = inttoptr i64 %1624 to i32*
  %1628 = load i32, i32* %1627, align 4
  %1629 = sext i32 %1628 to i64
  store i64 %1629, i64* %RAX.i1536, align 8
  %1630 = shl nsw i64 %1629, 2
  %1631 = add nsw i64 %1630, 8807744
  %1632 = add i64 %1625, 15
  store i64 %1632, i64* %3, align 8
  %1633 = inttoptr i64 %1631 to i32*
  store i32 1, i32* %1633, align 4
  %1634 = load i64, i64* %RBP.i, align 8
  %1635 = add i64 %1634, -24
  %1636 = load i64, i64* %3, align 8
  %1637 = add i64 %1636, 4
  store i64 %1637, i64* %3, align 8
  %1638 = inttoptr i64 %1635 to i32*
  %1639 = load i32, i32* %1638, align 4
  %1640 = sext i32 %1639 to i64
  store i64 %1640, i64* %RAX.i1536, align 8
  %1641 = shl nsw i64 %1640, 2
  %1642 = add nsw i64 %1641, 8922032
  %1643 = add i64 %1636, 11
  store i64 %1643, i64* %3, align 8
  %1644 = inttoptr i64 %1642 to i32*
  %1645 = load i32, i32* %1644, align 4
  %1646 = add i32 %1645, -1
  %1647 = zext i32 %1646 to i64
  store i64 %1647, i64* %RCX.i1524, align 8
  %1648 = icmp ne i32 %1645, 0
  %1649 = zext i1 %1648 to i8
  store i8 %1649, i8* %14, align 1
  %1650 = and i32 %1646, 255
  %1651 = tail call i32 @llvm.ctpop.i32(i32 %1650)
  %1652 = trunc i32 %1651 to i8
  %1653 = and i8 %1652, 1
  %1654 = xor i8 %1653, 1
  store i8 %1654, i8* %21, align 1
  %1655 = xor i32 %1645, 16
  %1656 = xor i32 %1655, %1646
  %1657 = lshr i32 %1656, 4
  %1658 = trunc i32 %1657 to i8
  %1659 = and i8 %1658, 1
  store i8 %1659, i8* %26, align 1
  %1660 = icmp eq i32 %1646, 0
  %1661 = zext i1 %1660 to i8
  store i8 %1661, i8* %29, align 1
  %1662 = lshr i32 %1646, 31
  %1663 = trunc i32 %1662 to i8
  store i8 %1663, i8* %32, align 1
  %1664 = lshr i32 %1645, 31
  %1665 = xor i32 %1662, %1664
  %1666 = xor i32 %1662, 1
  %1667 = add nuw nsw i32 %1665, %1666
  %1668 = icmp eq i32 %1667, 2
  %1669 = zext i1 %1668 to i8
  store i8 %1669, i8* %38, align 1
  %1670 = add i64 %1636, 21
  store i64 %1670, i64* %3, align 8
  store i32 %1646, i32* %1644, align 4
  %1671 = load i64, i64* %RBP.i, align 8
  %1672 = add i64 %1671, -20
  %1673 = load i64, i64* %3, align 8
  %1674 = add i64 %1673, 4
  store i64 %1674, i64* %3, align 8
  %1675 = inttoptr i64 %1672 to i32*
  %1676 = load i32, i32* %1675, align 4
  %1677 = sext i32 %1676 to i64
  store i64 %1677, i64* %RAX.i1536, align 8
  %1678 = shl nsw i64 %1677, 2
  %1679 = add nsw i64 %1678, 8922032
  %1680 = add i64 %1673, 11
  store i64 %1680, i64* %3, align 8
  %1681 = inttoptr i64 %1679 to i32*
  %1682 = load i32, i32* %1681, align 4
  %1683 = add i32 %1682, -1
  %1684 = add i64 %1673, 21
  store i64 %1684, i64* %3, align 8
  store i32 %1683, i32* %1681, align 4
  %1685 = load i64, i64* %3, align 8
  %1686 = load i32, i32* bitcast (%G_0x8661bc_type* @G_0x8661bc to i32*), align 8
  %1687 = xor i32 %1686, 1
  %1688 = zext i32 %1687 to i64
  store i64 %1688, i64* %RCX.i1524, align 8
  store i8 0, i8* %14, align 1
  %1689 = and i32 %1687, 255
  %1690 = tail call i32 @llvm.ctpop.i32(i32 %1689)
  %1691 = trunc i32 %1690 to i8
  %1692 = and i8 %1691, 1
  %1693 = xor i8 %1692, 1
  store i8 %1693, i8* %21, align 1
  %1694 = icmp eq i32 %1687, 0
  %1695 = zext i1 %1694 to i8
  store i8 %1695, i8* %29, align 1
  %1696 = lshr i32 %1686, 31
  %1697 = trunc i32 %1696 to i8
  store i8 %1697, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %1698 = add i64 %1685, 17
  store i64 %1698, i64* %3, align 8
  store i32 %1687, i32* bitcast (%G_0x8661bc_type* @G_0x8661bc to i32*), align 8
  %1699 = add i64 %1685, 2288
  br label %block_.L_40d604

block_.L_40cd2a:                                  ; preds = %block_.L_40cb14
  %1700 = add i64 %1116, 4
  store i64 %1700, i64* %3, align 8
  %1701 = load i32, i32* %1087, align 4
  %1702 = sext i32 %1701 to i64
  store i64 %1702, i64* %RAX.i1536, align 8
  %1703 = shl nsw i64 %1702, 2
  %1704 = add nsw i64 %1703, 8807744
  %1705 = add i64 %1116, 12
  store i64 %1705, i64* %3, align 8
  %1706 = inttoptr i64 %1704 to i32*
  %1707 = load i32, i32* %1706, align 4
  %1708 = add i32 %1707, -2
  %1709 = icmp ult i32 %1707, 2
  %1710 = zext i1 %1709 to i8
  store i8 %1710, i8* %14, align 1
  %1711 = and i32 %1708, 255
  %1712 = tail call i32 @llvm.ctpop.i32(i32 %1711)
  %1713 = trunc i32 %1712 to i8
  %1714 = and i8 %1713, 1
  %1715 = xor i8 %1714, 1
  store i8 %1715, i8* %21, align 1
  %1716 = xor i32 %1708, %1707
  %1717 = lshr i32 %1716, 4
  %1718 = trunc i32 %1717 to i8
  %1719 = and i8 %1718, 1
  store i8 %1719, i8* %26, align 1
  %1720 = icmp eq i32 %1708, 0
  %1721 = zext i1 %1720 to i8
  store i8 %1721, i8* %29, align 1
  %1722 = lshr i32 %1708, 31
  %1723 = trunc i32 %1722 to i8
  store i8 %1723, i8* %32, align 1
  %1724 = lshr i32 %1707, 31
  %1725 = xor i32 %1722, %1724
  %1726 = add nuw nsw i32 %1725, %1724
  %1727 = icmp eq i32 %1726, 2
  %1728 = zext i1 %1727 to i8
  store i8 %1728, i8* %38, align 1
  %.v38 = select i1 %1720, i64 18, i64 537
  %1729 = add i64 %1116, %.v38
  store i64 %1729, i64* %3, align 8
  br i1 %1720, label %block_40cd3c, label %block_.L_40cf43

block_40cd3c:                                     ; preds = %block_.L_40cd2a
  %1730 = add i64 %1084, -16
  %1731 = add i64 %1729, 4
  store i64 %1731, i64* %3, align 8
  %1732 = inttoptr i64 %1730 to i32*
  %1733 = load i32, i32* %1732, align 4
  store i8 0, i8* %14, align 1
  %1734 = and i32 %1733, 255
  %1735 = tail call i32 @llvm.ctpop.i32(i32 %1734)
  %1736 = trunc i32 %1735 to i8
  %1737 = and i8 %1736, 1
  %1738 = xor i8 %1737, 1
  store i8 %1738, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1739 = icmp eq i32 %1733, 0
  %1740 = zext i1 %1739 to i8
  store i8 %1740, i8* %29, align 1
  %1741 = lshr i32 %1733, 31
  %1742 = trunc i32 %1741 to i8
  store i8 %1742, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v47 = select i1 %1739, i64 376, i64 10
  %1743 = add i64 %1729, %.v47
  store i64 %1743, i64* %3, align 8
  br i1 %1739, label %block_.L_40ceb4, label %block_40cd46

block_40cd46:                                     ; preds = %block_40cd3c
  store i64 2, i64* %RDI.i1533, align 8
  store i64 1, i64* %RSI.i1516, align 8
  %1744 = add i64 %1743, 14
  store i64 %1744, i64* %3, align 8
  %1745 = load i32, i32* %1087, align 4
  %1746 = sext i32 %1745 to i64
  store i64 %1746, i64* %RAX.i1536, align 8
  %1747 = shl nsw i64 %1746, 2
  %1748 = add nsw i64 %1747, 9047808
  %1749 = add i64 %1743, 21
  store i64 %1749, i64* %3, align 8
  %1750 = inttoptr i64 %1748 to i32*
  %1751 = load i32, i32* %1750, align 4
  %1752 = load i32, i32* bitcast (%G_0x633b40_type* @G_0x633b40 to i32*), align 8
  %1753 = xor i32 %1752, %1751
  %1754 = zext i32 %1753 to i64
  store i64 %1754, i64* %RCX.i1524, align 8
  store i8 0, i8* %14, align 1
  %1755 = and i32 %1753, 255
  %1756 = tail call i32 @llvm.ctpop.i32(i32 %1755)
  %1757 = trunc i32 %1756 to i8
  %1758 = and i8 %1757, 1
  %1759 = xor i8 %1758, 1
  store i8 %1759, i8* %21, align 1
  %1760 = icmp eq i32 %1753, 0
  %1761 = zext i1 %1760 to i8
  store i8 %1761, i8* %29, align 1
  %1762 = lshr i32 %1753, 31
  %1763 = trunc i32 %1762 to i8
  store i8 %1763, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %ECX.i844 = bitcast %union.anon* %57 to i32*
  store i32 %1753, i32* bitcast (%G_0x633b40_type* @G_0x633b40 to i32*), align 8
  %1764 = add i64 %1084, -20
  %1765 = add i64 %1743, 39
  store i64 %1765, i64* %3, align 8
  %1766 = inttoptr i64 %1764 to i32*
  %1767 = load i32, i32* %1766, align 4
  %1768 = sext i32 %1767 to i64
  store i64 %1768, i64* %RAX.i1536, align 8
  %1769 = shl nsw i64 %1768, 2
  %1770 = add nsw i64 %1769, 9047808
  %1771 = add i64 %1743, 46
  store i64 %1771, i64* %3, align 8
  %1772 = inttoptr i64 %1770 to i32*
  %1773 = load i32, i32* %1772, align 4
  %1774 = xor i32 %1753, %1773
  %1775 = zext i32 %1774 to i64
  store i64 %1775, i64* %RCX.i1524, align 8
  store i8 0, i8* %14, align 1
  %1776 = and i32 %1774, 255
  %1777 = tail call i32 @llvm.ctpop.i32(i32 %1776)
  %1778 = trunc i32 %1777 to i8
  %1779 = and i8 %1778, 1
  %1780 = xor i8 %1779, 1
  store i8 %1780, i8* %21, align 1
  %1781 = icmp eq i32 %1774, 0
  %1782 = zext i1 %1781 to i8
  store i8 %1782, i8* %29, align 1
  %1783 = lshr i32 %1774, 31
  %1784 = trunc i32 %1783 to i8
  store i8 %1784, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i32 %1774, i32* bitcast (%G_0x633b40_type* @G_0x633b40 to i32*), align 8
  %1785 = add i64 %1743, 63
  store i64 %1785, i64* %3, align 8
  %1786 = load i32, i32* %1087, align 4
  %1787 = add i32 %1786, 12
  %1788 = zext i32 %1787 to i64
  store i64 %1788, i64* %RCX.i1524, align 8
  %1789 = icmp ugt i32 %1786, -13
  %1790 = zext i1 %1789 to i8
  store i8 %1790, i8* %14, align 1
  %1791 = and i32 %1787, 255
  %1792 = tail call i32 @llvm.ctpop.i32(i32 %1791)
  %1793 = trunc i32 %1792 to i8
  %1794 = and i8 %1793, 1
  %1795 = xor i8 %1794, 1
  store i8 %1795, i8* %21, align 1
  %1796 = xor i32 %1787, %1786
  %1797 = lshr i32 %1796, 4
  %1798 = trunc i32 %1797 to i8
  %1799 = and i8 %1798, 1
  store i8 %1799, i8* %26, align 1
  %1800 = icmp eq i32 %1787, 0
  %1801 = zext i1 %1800 to i8
  store i8 %1801, i8* %29, align 1
  %1802 = lshr i32 %1787, 31
  %1803 = trunc i32 %1802 to i8
  store i8 %1803, i8* %32, align 1
  %1804 = lshr i32 %1786, 31
  %1805 = xor i32 %1802, %1804
  %1806 = add nuw nsw i32 %1805, %1802
  %1807 = icmp eq i32 %1806, 2
  %1808 = zext i1 %1807 to i8
  store i8 %1808, i8* %38, align 1
  %1809 = sext i32 %1787 to i64
  store i64 %1809, i64* %RAX.i1536, align 8
  %1810 = shl nsw i64 %1809, 2
  %1811 = add nsw i64 %1810, 9047232
  %1812 = add i64 %1743, 76
  store i64 %1812, i64* %3, align 8
  %1813 = inttoptr i64 %1811 to i32*
  %1814 = load i32, i32* %1813, align 4
  %1815 = xor i32 %1774, %1814
  %1816 = zext i32 %1815 to i64
  store i64 %1816, i64* %RCX.i1524, align 8
  store i8 0, i8* %14, align 1
  %1817 = and i32 %1815, 255
  %1818 = tail call i32 @llvm.ctpop.i32(i32 %1817)
  %1819 = trunc i32 %1818 to i8
  %1820 = and i8 %1819, 1
  %1821 = xor i8 %1820, 1
  store i8 %1821, i8* %21, align 1
  %1822 = icmp eq i32 %1815, 0
  %1823 = zext i1 %1822 to i8
  store i8 %1823, i8* %29, align 1
  %1824 = lshr i32 %1815, 31
  %1825 = trunc i32 %1824 to i8
  store i8 %1825, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i32 %1815, i32* bitcast (%G_0x633b40_type* @G_0x633b40 to i32*), align 8
  %1826 = load i64, i64* %RBP.i, align 8
  %1827 = add i64 %1826, -24
  %1828 = add i64 %1743, 94
  store i64 %1828, i64* %3, align 8
  %1829 = inttoptr i64 %1827 to i32*
  %1830 = load i32, i32* %1829, align 4
  %1831 = sext i32 %1830 to i64
  store i64 %1831, i64* %RAX.i1536, align 8
  %1832 = shl nsw i64 %1831, 2
  %1833 = add nsw i64 %1832, 8807744
  %1834 = add i64 %1743, 105
  store i64 %1834, i64* %3, align 8
  %1835 = inttoptr i64 %1833 to i32*
  store i32 13, i32* %1835, align 4
  %1836 = load i64, i64* %RBP.i, align 8
  %1837 = add i64 %1836, -20
  %1838 = load i64, i64* %3, align 8
  %1839 = add i64 %1838, 4
  store i64 %1839, i64* %3, align 8
  %1840 = inttoptr i64 %1837 to i32*
  %1841 = load i32, i32* %1840, align 4
  %1842 = sext i32 %1841 to i64
  store i64 %1842, i64* %RAX.i1536, align 8
  %1843 = shl nsw i64 %1842, 2
  %1844 = add nsw i64 %1843, 8807744
  %1845 = add i64 %1838, 15
  store i64 %1845, i64* %3, align 8
  %1846 = inttoptr i64 %1844 to i32*
  store i32 2, i32* %1846, align 4
  %1847 = load i64, i64* %3, align 8
  %1848 = load i32, i32* bitcast (%G_0x62dab4_type* @G_0x62dab4 to i32*), align 8
  %1849 = load i32, i32* bitcast (%G_0x8661c0_type* @G_0x8661c0 to i32*), align 8
  %1850 = add i32 %1849, %1848
  %1851 = zext i32 %1850 to i64
  store i64 %1851, i64* %RCX.i1524, align 8
  %1852 = icmp ult i32 %1850, %1848
  %1853 = icmp ult i32 %1850, %1849
  %1854 = or i1 %1852, %1853
  %1855 = zext i1 %1854 to i8
  store i8 %1855, i8* %14, align 1
  %1856 = and i32 %1850, 255
  %1857 = tail call i32 @llvm.ctpop.i32(i32 %1856)
  %1858 = trunc i32 %1857 to i8
  %1859 = and i8 %1858, 1
  %1860 = xor i8 %1859, 1
  store i8 %1860, i8* %21, align 1
  %1861 = xor i32 %1849, %1848
  %1862 = xor i32 %1861, %1850
  %1863 = lshr i32 %1862, 4
  %1864 = trunc i32 %1863 to i8
  %1865 = and i8 %1864, 1
  store i8 %1865, i8* %26, align 1
  %1866 = icmp eq i32 %1850, 0
  %1867 = zext i1 %1866 to i8
  store i8 %1867, i8* %29, align 1
  %1868 = lshr i32 %1850, 31
  %1869 = trunc i32 %1868 to i8
  store i8 %1869, i8* %32, align 1
  %1870 = lshr i32 %1848, 31
  %1871 = lshr i32 %1849, 31
  %1872 = xor i32 %1868, %1870
  %1873 = xor i32 %1868, %1871
  %1874 = add nuw nsw i32 %1872, %1873
  %1875 = icmp eq i32 %1874, 2
  %1876 = zext i1 %1875 to i8
  store i8 %1876, i8* %38, align 1
  store i32 %1850, i32* bitcast (%G_0x8661c0_type* @G_0x8661c0 to i32*), align 8
  %1877 = add i64 %1847, -42974
  %1878 = add i64 %1847, 26
  %1879 = load i64, i64* %6, align 8
  %1880 = add i64 %1879, -8
  %1881 = inttoptr i64 %1880 to i64*
  store i64 %1878, i64* %1881, align 8
  store i64 %1880, i64* %6, align 8
  store i64 %1877, i64* %3, align 8
  %call2_40cdd3 = tail call %struct.Memory* @sub_4025e0.removeHolding(%struct.State* nonnull %0, i64 %1877, %struct.Memory* %MEMORY.4)
  %1882 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x880b20_type* @G__0x880b20 to i64), i64* %RAX.i1536, align 8
  %1883 = load i32, i32* bitcast (%G_0x63ae48_type* @G_0x63ae48 to i32*), align 8
  %1884 = add i32 %1883, 1
  %1885 = zext i32 %1884 to i64
  store i64 %1885, i64* %RCX.i1524, align 8
  %1886 = icmp eq i32 %1883, -1
  %1887 = icmp eq i32 %1884, 0
  %1888 = or i1 %1886, %1887
  %1889 = zext i1 %1888 to i8
  store i8 %1889, i8* %14, align 1
  %1890 = and i32 %1884, 255
  %1891 = tail call i32 @llvm.ctpop.i32(i32 %1890)
  %1892 = trunc i32 %1891 to i8
  %1893 = and i8 %1892, 1
  %1894 = xor i8 %1893, 1
  store i8 %1894, i8* %21, align 1
  %1895 = xor i32 %1884, %1883
  %1896 = lshr i32 %1895, 4
  %1897 = trunc i32 %1896 to i8
  %1898 = and i8 %1897, 1
  store i8 %1898, i8* %26, align 1
  %1899 = zext i1 %1887 to i8
  store i8 %1899, i8* %29, align 1
  %1900 = lshr i32 %1884, 31
  %1901 = trunc i32 %1900 to i8
  store i8 %1901, i8* %32, align 1
  %1902 = lshr i32 %1883, 31
  %1903 = xor i32 %1900, %1902
  %1904 = add nuw nsw i32 %1903, %1900
  %1905 = icmp eq i32 %1904, 2
  %1906 = zext i1 %1905 to i8
  store i8 %1906, i8* %38, align 1
  store i32 %1884, i32* bitcast (%G_0x63ae48_type* @G_0x63ae48 to i32*), align 8
  %1907 = load i64, i64* %RBP.i, align 8
  %1908 = add i64 %1907, -24
  %1909 = add i64 %1882, 30
  store i64 %1909, i64* %3, align 8
  %1910 = inttoptr i64 %1908 to i32*
  %1911 = load i32, i32* %1910, align 4
  %1912 = add i32 %1911, 12
  %1913 = zext i32 %1912 to i64
  store i64 %1913, i64* %RCX.i1524, align 8
  %1914 = icmp ugt i32 %1911, -13
  %1915 = zext i1 %1914 to i8
  store i8 %1915, i8* %14, align 1
  %1916 = and i32 %1912, 255
  %1917 = tail call i32 @llvm.ctpop.i32(i32 %1916)
  %1918 = trunc i32 %1917 to i8
  %1919 = and i8 %1918, 1
  %1920 = xor i8 %1919, 1
  store i8 %1920, i8* %21, align 1
  %1921 = xor i32 %1912, %1911
  %1922 = lshr i32 %1921, 4
  %1923 = trunc i32 %1922 to i8
  %1924 = and i8 %1923, 1
  store i8 %1924, i8* %26, align 1
  %1925 = icmp eq i32 %1912, 0
  %1926 = zext i1 %1925 to i8
  store i8 %1926, i8* %29, align 1
  %1927 = lshr i32 %1912, 31
  %1928 = trunc i32 %1927 to i8
  store i8 %1928, i8* %32, align 1
  %1929 = lshr i32 %1911, 31
  %1930 = xor i32 %1927, %1929
  %1931 = add nuw nsw i32 %1930, %1927
  %1932 = icmp eq i32 %1931, 2
  %1933 = zext i1 %1932 to i8
  store i8 %1933, i8* %38, align 1
  %1934 = sext i32 %1912 to i64
  store i64 %1934, i64* %RDX.i1281, align 8
  %1935 = shl nsw i64 %1934, 2
  %1936 = add nsw i64 %1935, 8807744
  %1937 = add i64 %1882, 47
  store i64 %1937, i64* %3, align 8
  %1938 = inttoptr i64 %1936 to i32*
  store i32 1, i32* %1938, align 4
  %1939 = load i64, i64* %RBP.i, align 8
  %1940 = add i64 %1939, -24
  %1941 = load i64, i64* %3, align 8
  %1942 = add i64 %1941, 4
  store i64 %1942, i64* %3, align 8
  %1943 = inttoptr i64 %1940 to i32*
  %1944 = load i32, i32* %1943, align 4
  %1945 = sext i32 %1944 to i64
  store i64 %1945, i64* %RDX.i1281, align 8
  %1946 = shl nsw i64 %1945, 2
  %1947 = add nsw i64 %1946, 8922032
  %1948 = add i64 %1941, 11
  store i64 %1948, i64* %3, align 8
  %1949 = inttoptr i64 %1947 to i32*
  %1950 = load i32, i32* %1949, align 4
  %1951 = add i32 %1950, -1
  %1952 = zext i32 %1951 to i64
  store i64 %1952, i64* %RCX.i1524, align 8
  %1953 = icmp ne i32 %1950, 0
  %1954 = zext i1 %1953 to i8
  store i8 %1954, i8* %14, align 1
  %1955 = and i32 %1951, 255
  %1956 = tail call i32 @llvm.ctpop.i32(i32 %1955)
  %1957 = trunc i32 %1956 to i8
  %1958 = and i8 %1957, 1
  %1959 = xor i8 %1958, 1
  store i8 %1959, i8* %21, align 1
  %1960 = xor i32 %1950, 16
  %1961 = xor i32 %1960, %1951
  %1962 = lshr i32 %1961, 4
  %1963 = trunc i32 %1962 to i8
  %1964 = and i8 %1963, 1
  store i8 %1964, i8* %26, align 1
  %1965 = icmp eq i32 %1951, 0
  %1966 = zext i1 %1965 to i8
  store i8 %1966, i8* %29, align 1
  %1967 = lshr i32 %1951, 31
  %1968 = trunc i32 %1967 to i8
  store i8 %1968, i8* %32, align 1
  %1969 = lshr i32 %1950, 31
  %1970 = xor i32 %1967, %1969
  %1971 = xor i32 %1967, 1
  %1972 = add nuw nsw i32 %1970, %1971
  %1973 = icmp eq i32 %1972, 2
  %1974 = zext i1 %1973 to i8
  store i8 %1974, i8* %38, align 1
  %1975 = add i64 %1941, 21
  store i64 %1975, i64* %3, align 8
  store i32 %1951, i32* %1949, align 4
  %1976 = load i64, i64* %RBP.i, align 8
  %1977 = add i64 %1976, -20
  %1978 = load i64, i64* %3, align 8
  %1979 = add i64 %1978, 4
  store i64 %1979, i64* %3, align 8
  %1980 = inttoptr i64 %1977 to i32*
  %1981 = load i32, i32* %1980, align 4
  %1982 = sext i32 %1981 to i64
  store i64 %1982, i64* %RDX.i1281, align 8
  %1983 = shl nsw i64 %1982, 2
  %1984 = add nsw i64 %1983, 8922032
  %1985 = add i64 %1978, 11
  store i64 %1985, i64* %3, align 8
  %1986 = inttoptr i64 %1984 to i32*
  %1987 = load i32, i32* %1986, align 4
  %1988 = add i32 %1987, -1
  %1989 = zext i32 %1988 to i64
  store i64 %1989, i64* %RCX.i1524, align 8
  %1990 = icmp ne i32 %1987, 0
  %1991 = zext i1 %1990 to i8
  store i8 %1991, i8* %14, align 1
  %1992 = and i32 %1988, 255
  %1993 = tail call i32 @llvm.ctpop.i32(i32 %1992)
  %1994 = trunc i32 %1993 to i8
  %1995 = and i8 %1994, 1
  %1996 = xor i8 %1995, 1
  store i8 %1996, i8* %21, align 1
  %1997 = xor i32 %1987, 16
  %1998 = xor i32 %1997, %1988
  %1999 = lshr i32 %1998, 4
  %2000 = trunc i32 %1999 to i8
  %2001 = and i8 %2000, 1
  store i8 %2001, i8* %26, align 1
  %2002 = icmp eq i32 %1988, 0
  %2003 = zext i1 %2002 to i8
  store i8 %2003, i8* %29, align 1
  %2004 = lshr i32 %1988, 31
  %2005 = trunc i32 %2004 to i8
  store i8 %2005, i8* %32, align 1
  %2006 = lshr i32 %1987, 31
  %2007 = xor i32 %2004, %2006
  %2008 = xor i32 %2004, 1
  %2009 = add nuw nsw i32 %2007, %2008
  %2010 = icmp eq i32 %2009, 2
  %2011 = zext i1 %2010 to i8
  store i8 %2011, i8* %38, align 1
  %2012 = add i64 %1978, 21
  store i64 %2012, i64* %3, align 8
  store i32 %1988, i32* %1986, align 4
  %2013 = load i64, i64* %RBP.i, align 8
  %2014 = add i64 %2013, -24
  %2015 = load i64, i64* %3, align 8
  %2016 = add i64 %2015, 3
  store i64 %2016, i64* %3, align 8
  %2017 = inttoptr i64 %2014 to i32*
  %2018 = load i32, i32* %2017, align 4
  %2019 = add i32 %2018, 12
  %2020 = zext i32 %2019 to i64
  store i64 %2020, i64* %RCX.i1524, align 8
  %2021 = icmp ugt i32 %2018, -13
  %2022 = zext i1 %2021 to i8
  store i8 %2022, i8* %14, align 1
  %2023 = and i32 %2019, 255
  %2024 = tail call i32 @llvm.ctpop.i32(i32 %2023)
  %2025 = trunc i32 %2024 to i8
  %2026 = and i8 %2025, 1
  %2027 = xor i8 %2026, 1
  store i8 %2027, i8* %21, align 1
  %2028 = xor i32 %2019, %2018
  %2029 = lshr i32 %2028, 4
  %2030 = trunc i32 %2029 to i8
  %2031 = and i8 %2030, 1
  store i8 %2031, i8* %26, align 1
  %2032 = icmp eq i32 %2019, 0
  %2033 = zext i1 %2032 to i8
  store i8 %2033, i8* %29, align 1
  %2034 = lshr i32 %2019, 31
  %2035 = trunc i32 %2034 to i8
  store i8 %2035, i8* %32, align 1
  %2036 = lshr i32 %2018, 31
  %2037 = xor i32 %2034, %2036
  %2038 = add nuw nsw i32 %2037, %2034
  %2039 = icmp eq i32 %2038, 2
  %2040 = zext i1 %2039 to i8
  store i8 %2040, i8* %38, align 1
  %2041 = sext i32 %2019 to i64
  store i64 %2041, i64* %RDX.i1281, align 8
  %2042 = shl nsw i64 %2041, 2
  %2043 = add nsw i64 %2042, 8922032
  %2044 = add i64 %2015, 16
  store i64 %2044, i64* %3, align 8
  %2045 = inttoptr i64 %2043 to i32*
  %2046 = load i32, i32* %2045, align 4
  %2047 = add i32 %2046, -1
  %2048 = add i64 %2015, 26
  store i64 %2048, i64* %3, align 8
  store i32 %2047, i32* %2045, align 4
  %2049 = load i64, i64* %3, align 8
  %2050 = load i32, i32* bitcast (%G_0x8661bc_type* @G_0x8661bc to i32*), align 8
  %2051 = xor i32 %2050, 1
  %2052 = zext i32 %2051 to i64
  store i64 %2052, i64* %RCX.i1524, align 8
  store i32 %2051, i32* bitcast (%G_0x8661bc_type* @G_0x8661bc to i32*), align 8
  %2053 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %2054 = sext i32 %2053 to i64
  %2055 = shl nsw i64 %2054, 4
  store i64 %2055, i64* %RDX.i1281, align 8
  %R8.i734 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %2056 = load i64, i64* %RAX.i1536, align 8
  %2057 = add i64 %2055, %2056
  store i64 %2057, i64* %R8.i734, align 8
  %2058 = icmp ult i64 %2057, %2056
  %2059 = icmp ult i64 %2057, %2055
  %2060 = or i1 %2058, %2059
  %2061 = zext i1 %2060 to i8
  store i8 %2061, i8* %14, align 1
  %2062 = trunc i64 %2057 to i32
  %2063 = and i32 %2062, 255
  %2064 = tail call i32 @llvm.ctpop.i32(i32 %2063)
  %2065 = trunc i32 %2064 to i8
  %2066 = and i8 %2065, 1
  %2067 = xor i8 %2066, 1
  store i8 %2067, i8* %21, align 1
  %2068 = xor i64 %2055, %2056
  %2069 = xor i64 %2068, %2057
  %2070 = lshr i64 %2069, 4
  %2071 = trunc i64 %2070 to i8
  %2072 = and i8 %2071, 1
  store i8 %2072, i8* %26, align 1
  %2073 = icmp eq i64 %2057, 0
  %2074 = zext i1 %2073 to i8
  store i8 %2074, i8* %29, align 1
  %2075 = lshr i64 %2057, 63
  %2076 = trunc i64 %2075 to i8
  store i8 %2076, i8* %32, align 1
  %2077 = lshr i64 %2056, 63
  %2078 = lshr i64 %2054, 59
  %2079 = and i64 %2078, 1
  %2080 = xor i64 %2075, %2077
  %2081 = xor i64 %2075, %2079
  %2082 = add nuw nsw i64 %2080, %2081
  %2083 = icmp eq i64 %2082, 2
  %2084 = zext i1 %2083 to i8
  store i8 %2084, i8* %38, align 1
  %2085 = inttoptr i64 %2057 to i32*
  %2086 = add i64 %2049, 38
  store i64 %2086, i64* %3, align 8
  %2087 = load i32, i32* %2085, align 4
  %2088 = zext i32 %2087 to i64
  store i64 %2088, i64* %RCX.i1524, align 8
  %2089 = load i64, i64* %RBP.i, align 8
  %2090 = add i64 %2089, -24
  %2091 = add i64 %2049, 41
  store i64 %2091, i64* %3, align 8
  %2092 = inttoptr i64 %2090 to i32*
  %2093 = load i32, i32* %2092, align 4
  %2094 = add i32 %2093, 12
  %2095 = zext i32 %2094 to i64
  store i64 %2095, i64* %RSI.i1516, align 8
  %2096 = icmp ugt i32 %2093, -13
  %2097 = zext i1 %2096 to i8
  store i8 %2097, i8* %14, align 1
  %2098 = and i32 %2094, 255
  %2099 = tail call i32 @llvm.ctpop.i32(i32 %2098)
  %2100 = trunc i32 %2099 to i8
  %2101 = and i8 %2100, 1
  %2102 = xor i8 %2101, 1
  store i8 %2102, i8* %21, align 1
  %2103 = xor i32 %2094, %2093
  %2104 = lshr i32 %2103, 4
  %2105 = trunc i32 %2104 to i8
  %2106 = and i8 %2105, 1
  store i8 %2106, i8* %26, align 1
  %2107 = icmp eq i32 %2094, 0
  %2108 = zext i1 %2107 to i8
  store i8 %2108, i8* %29, align 1
  %2109 = lshr i32 %2094, 31
  %2110 = trunc i32 %2109 to i8
  store i8 %2110, i8* %32, align 1
  %2111 = lshr i32 %2093, 31
  %2112 = xor i32 %2109, %2111
  %2113 = add nuw nsw i32 %2112, %2109
  %2114 = icmp eq i32 %2113, 2
  %2115 = zext i1 %2114 to i8
  store i8 %2115, i8* %38, align 1
  %2116 = sext i32 %2094 to i64
  store i64 %2116, i64* %RDX.i1281, align 8
  %2117 = shl nsw i64 %2116, 2
  %2118 = add nsw i64 %2117, 8807152
  %2119 = add i64 %2049, 54
  store i64 %2119, i64* %3, align 8
  %2120 = inttoptr i64 %2118 to i32*
  store i32 %2087, i32* %2120, align 4
  %2121 = load i64, i64* %RBP.i, align 8
  %2122 = add i64 %2121, -24
  %2123 = load i64, i64* %3, align 8
  %2124 = add i64 %2123, 3
  store i64 %2124, i64* %3, align 8
  %2125 = inttoptr i64 %2122 to i32*
  %2126 = load i32, i32* %2125, align 4
  %2127 = add i32 %2126, 12
  %2128 = zext i32 %2127 to i64
  store i64 %2128, i64* %RCX.i1524, align 8
  %2129 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %2130 = sext i32 %2129 to i64
  %2131 = shl nsw i64 %2130, 4
  store i64 %2131, i64* %RDX.i1281, align 8
  %2132 = load i64, i64* %RAX.i1536, align 8
  %2133 = add i64 %2131, %2132
  store i64 %2133, i64* %RAX.i1536, align 8
  %2134 = icmp ult i64 %2133, %2132
  %2135 = icmp ult i64 %2133, %2131
  %2136 = or i1 %2134, %2135
  %2137 = zext i1 %2136 to i8
  store i8 %2137, i8* %14, align 1
  %2138 = trunc i64 %2133 to i32
  %2139 = and i32 %2138, 255
  %2140 = tail call i32 @llvm.ctpop.i32(i32 %2139)
  %2141 = trunc i32 %2140 to i8
  %2142 = and i8 %2141, 1
  %2143 = xor i8 %2142, 1
  store i8 %2143, i8* %21, align 1
  %2144 = xor i64 %2131, %2132
  %2145 = xor i64 %2144, %2133
  %2146 = lshr i64 %2145, 4
  %2147 = trunc i64 %2146 to i8
  %2148 = and i8 %2147, 1
  store i8 %2148, i8* %26, align 1
  %2149 = icmp eq i64 %2133, 0
  %2150 = zext i1 %2149 to i8
  store i8 %2150, i8* %29, align 1
  %2151 = lshr i64 %2133, 63
  %2152 = trunc i64 %2151 to i8
  store i8 %2152, i8* %32, align 1
  %2153 = lshr i64 %2132, 63
  %2154 = lshr i64 %2130, 59
  %2155 = and i64 %2154, 1
  %2156 = xor i64 %2151, %2153
  %2157 = xor i64 %2151, %2155
  %2158 = add nuw nsw i64 %2156, %2157
  %2159 = icmp eq i64 %2158, 2
  %2160 = zext i1 %2159 to i8
  store i8 %2160, i8* %38, align 1
  %2161 = inttoptr i64 %2133 to i32*
  %2162 = add i64 %2123, 24
  store i64 %2162, i64* %3, align 8
  %2163 = load i32, i32* %2161, align 4
  %2164 = sext i32 %2163 to i64
  store i64 %2164, i64* %RAX.i1536, align 8
  %2165 = shl nsw i64 %2164, 2
  %2166 = add nsw i64 %2165, 8778480
  %2167 = load i32, i32* %ECX.i844, align 4
  %2168 = add i64 %2123, 31
  store i64 %2168, i64* %3, align 8
  %2169 = inttoptr i64 %2166 to i32*
  store i32 %2167, i32* %2169, align 4
  %2170 = load i64, i64* %RBP.i, align 8
  %2171 = add i64 %2170, -24
  %2172 = load i64, i64* %3, align 8
  %2173 = add i64 %2172, 4
  store i64 %2173, i64* %3, align 8
  %2174 = inttoptr i64 %2171 to i32*
  %2175 = load i32, i32* %2174, align 4
  %2176 = sext i32 %2175 to i64
  store i64 %2176, i64* %RAX.i1536, align 8
  %2177 = shl nsw i64 %2176, 2
  %2178 = add nsw i64 %2177, 8807152
  %2179 = add i64 %2172, 15
  store i64 %2179, i64* %3, align 8
  %2180 = inttoptr i64 %2178 to i32*
  store i32 0, i32* %2180, align 4
  %2181 = load i64, i64* %3, align 8
  %2182 = add i64 %2181, 1877
  br label %block_.L_40d604

block_.L_40ceb4:                                  ; preds = %block_40cd3c
  %2183 = add i64 %1084, -20
  %2184 = add i64 %1743, 4
  store i64 %2184, i64* %3, align 8
  %2185 = inttoptr i64 %2183 to i32*
  %2186 = load i32, i32* %2185, align 4
  %2187 = sext i32 %2186 to i64
  store i64 %2187, i64* %RAX.i1536, align 8
  %2188 = shl nsw i64 %2187, 2
  %2189 = add nsw i64 %2188, 9047808
  %2190 = add i64 %1743, 11
  store i64 %2190, i64* %3, align 8
  %2191 = inttoptr i64 %2189 to i32*
  %2192 = load i32, i32* %2191, align 4
  %2193 = load i32, i32* bitcast (%G_0x633b40_type* @G_0x633b40 to i32*), align 8
  %2194 = xor i32 %2193, %2192
  %2195 = zext i32 %2194 to i64
  store i64 %2195, i64* %RCX.i1524, align 8
  store i8 0, i8* %14, align 1
  %2196 = and i32 %2194, 255
  %2197 = tail call i32 @llvm.ctpop.i32(i32 %2196)
  %2198 = trunc i32 %2197 to i8
  %2199 = and i8 %2198, 1
  %2200 = xor i8 %2199, 1
  store i8 %2200, i8* %21, align 1
  %2201 = icmp eq i32 %2194, 0
  %2202 = zext i1 %2201 to i8
  store i8 %2202, i8* %29, align 1
  %2203 = lshr i32 %2194, 31
  %2204 = trunc i32 %2203 to i8
  store i8 %2204, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i32 %2194, i32* bitcast (%G_0x633b40_type* @G_0x633b40 to i32*), align 8
  %2205 = add i64 %1743, 29
  store i64 %2205, i64* %3, align 8
  %2206 = load i32, i32* %1087, align 4
  %2207 = sext i32 %2206 to i64
  store i64 %2207, i64* %RAX.i1536, align 8
  %2208 = shl nsw i64 %2207, 2
  %2209 = add nsw i64 %2208, 9047808
  %2210 = add i64 %1743, 36
  store i64 %2210, i64* %3, align 8
  %2211 = inttoptr i64 %2209 to i32*
  %2212 = load i32, i32* %2211, align 4
  %2213 = xor i32 %2194, %2212
  %2214 = zext i32 %2213 to i64
  store i64 %2214, i64* %RCX.i1524, align 8
  store i8 0, i8* %14, align 1
  %2215 = and i32 %2213, 255
  %2216 = tail call i32 @llvm.ctpop.i32(i32 %2215)
  %2217 = trunc i32 %2216 to i8
  %2218 = and i8 %2217, 1
  %2219 = xor i8 %2218, 1
  store i8 %2219, i8* %21, align 1
  %2220 = icmp eq i32 %2213, 0
  %2221 = zext i1 %2220 to i8
  store i8 %2221, i8* %29, align 1
  %2222 = lshr i32 %2213, 31
  %2223 = trunc i32 %2222 to i8
  store i8 %2223, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i32 %2213, i32* bitcast (%G_0x633b40_type* @G_0x633b40 to i32*), align 8
  %2224 = add i64 %1084, -28
  %2225 = add i64 %1743, 53
  store i64 %2225, i64* %3, align 8
  %2226 = inttoptr i64 %2224 to i32*
  %2227 = load i32, i32* %2226, align 4
  %2228 = zext i32 %2227 to i64
  store i64 %2228, i64* %RCX.i1524, align 8
  %2229 = add i64 %1743, 57
  store i64 %2229, i64* %3, align 8
  %2230 = load i32, i32* %1087, align 4
  %2231 = sext i32 %2230 to i64
  store i64 %2231, i64* %RAX.i1536, align 8
  %2232 = shl nsw i64 %2231, 2
  %2233 = add nsw i64 %2232, 8807744
  %2234 = add i64 %1743, 64
  store i64 %2234, i64* %3, align 8
  %2235 = inttoptr i64 %2233 to i32*
  store i32 %2227, i32* %2235, align 4
  %2236 = load i64, i64* %RBP.i, align 8
  %2237 = add i64 %2236, -20
  %2238 = load i64, i64* %3, align 8
  %2239 = add i64 %2238, 4
  store i64 %2239, i64* %3, align 8
  %2240 = inttoptr i64 %2237 to i32*
  %2241 = load i32, i32* %2240, align 4
  %2242 = sext i32 %2241 to i64
  store i64 %2242, i64* %RAX.i1536, align 8
  %2243 = shl nsw i64 %2242, 2
  %2244 = add nsw i64 %2243, 8807744
  %2245 = add i64 %2238, 15
  store i64 %2245, i64* %3, align 8
  %2246 = inttoptr i64 %2244 to i32*
  store i32 2, i32* %2246, align 4
  %2247 = load i64, i64* %RBP.i, align 8
  %2248 = add i64 %2247, -24
  %2249 = load i64, i64* %3, align 8
  %2250 = add i64 %2249, 4
  store i64 %2250, i64* %3, align 8
  %2251 = inttoptr i64 %2248 to i32*
  %2252 = load i32, i32* %2251, align 4
  %2253 = sext i32 %2252 to i64
  store i64 %2253, i64* %RAX.i1536, align 8
  %2254 = shl nsw i64 %2253, 2
  %2255 = add nsw i64 %2254, 8922032
  %2256 = add i64 %2249, 11
  store i64 %2256, i64* %3, align 8
  %2257 = inttoptr i64 %2255 to i32*
  %2258 = load i32, i32* %2257, align 4
  %2259 = add i32 %2258, -1
  %2260 = zext i32 %2259 to i64
  store i64 %2260, i64* %RCX.i1524, align 8
  %2261 = icmp ne i32 %2258, 0
  %2262 = zext i1 %2261 to i8
  store i8 %2262, i8* %14, align 1
  %2263 = and i32 %2259, 255
  %2264 = tail call i32 @llvm.ctpop.i32(i32 %2263)
  %2265 = trunc i32 %2264 to i8
  %2266 = and i8 %2265, 1
  %2267 = xor i8 %2266, 1
  store i8 %2267, i8* %21, align 1
  %2268 = xor i32 %2258, 16
  %2269 = xor i32 %2268, %2259
  %2270 = lshr i32 %2269, 4
  %2271 = trunc i32 %2270 to i8
  %2272 = and i8 %2271, 1
  store i8 %2272, i8* %26, align 1
  %2273 = icmp eq i32 %2259, 0
  %2274 = zext i1 %2273 to i8
  store i8 %2274, i8* %29, align 1
  %2275 = lshr i32 %2259, 31
  %2276 = trunc i32 %2275 to i8
  store i8 %2276, i8* %32, align 1
  %2277 = lshr i32 %2258, 31
  %2278 = xor i32 %2275, %2277
  %2279 = xor i32 %2275, 1
  %2280 = add nuw nsw i32 %2278, %2279
  %2281 = icmp eq i32 %2280, 2
  %2282 = zext i1 %2281 to i8
  store i8 %2282, i8* %38, align 1
  %2283 = add i64 %2249, 21
  store i64 %2283, i64* %3, align 8
  store i32 %2259, i32* %2257, align 4
  %2284 = load i64, i64* %RBP.i, align 8
  %2285 = add i64 %2284, -20
  %2286 = load i64, i64* %3, align 8
  %2287 = add i64 %2286, 4
  store i64 %2287, i64* %3, align 8
  %2288 = inttoptr i64 %2285 to i32*
  %2289 = load i32, i32* %2288, align 4
  %2290 = sext i32 %2289 to i64
  store i64 %2290, i64* %RAX.i1536, align 8
  %2291 = shl nsw i64 %2290, 2
  %2292 = add nsw i64 %2291, 8922032
  %2293 = add i64 %2286, 11
  store i64 %2293, i64* %3, align 8
  %2294 = inttoptr i64 %2292 to i32*
  %2295 = load i32, i32* %2294, align 4
  %2296 = add i32 %2295, -1
  %2297 = add i64 %2286, 21
  store i64 %2297, i64* %3, align 8
  store i32 %2296, i32* %2294, align 4
  %2298 = load i64, i64* %3, align 8
  %2299 = load i32, i32* bitcast (%G_0x8661bc_type* @G_0x8661bc to i32*), align 8
  %2300 = xor i32 %2299, 1
  %2301 = zext i32 %2300 to i64
  store i64 %2301, i64* %RCX.i1524, align 8
  store i8 0, i8* %14, align 1
  %2302 = and i32 %2300, 255
  %2303 = tail call i32 @llvm.ctpop.i32(i32 %2302)
  %2304 = trunc i32 %2303 to i8
  %2305 = and i8 %2304, 1
  %2306 = xor i8 %2305, 1
  store i8 %2306, i8* %21, align 1
  %2307 = icmp eq i32 %2300, 0
  %2308 = zext i1 %2307 to i8
  store i8 %2308, i8* %29, align 1
  %2309 = lshr i32 %2299, 31
  %2310 = trunc i32 %2309 to i8
  store i8 %2310, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %2311 = add i64 %2298, 17
  store i64 %2311, i64* %3, align 8
  store i32 %2300, i32* bitcast (%G_0x8661bc_type* @G_0x8661bc to i32*), align 8
  %2312 = add i64 %2298, 1751
  br label %block_.L_40d604

block_.L_40cf43:                                  ; preds = %block_.L_40cd2a
  %2313 = add i64 %1729, 4
  store i64 %2313, i64* %3, align 8
  %2314 = load i32, i32* %1087, align 4
  %2315 = sext i32 %2314 to i64
  store i64 %2315, i64* %RAX.i1536, align 8
  %2316 = shl nsw i64 %2315, 2
  %2317 = add nsw i64 %2316, 8807744
  %2318 = add i64 %1729, 12
  store i64 %2318, i64* %3, align 8
  %2319 = inttoptr i64 %2317 to i32*
  %2320 = load i32, i32* %2319, align 4
  %2321 = add i32 %2320, -5
  %2322 = icmp ult i32 %2320, 5
  %2323 = zext i1 %2322 to i8
  store i8 %2323, i8* %14, align 1
  %2324 = and i32 %2321, 255
  %2325 = tail call i32 @llvm.ctpop.i32(i32 %2324)
  %2326 = trunc i32 %2325 to i8
  %2327 = and i8 %2326, 1
  %2328 = xor i8 %2327, 1
  store i8 %2328, i8* %21, align 1
  %2329 = xor i32 %2321, %2320
  %2330 = lshr i32 %2329, 4
  %2331 = trunc i32 %2330 to i8
  %2332 = and i8 %2331, 1
  store i8 %2332, i8* %26, align 1
  %2333 = icmp eq i32 %2321, 0
  %2334 = zext i1 %2333 to i8
  store i8 %2334, i8* %29, align 1
  %2335 = lshr i32 %2321, 31
  %2336 = trunc i32 %2335 to i8
  store i8 %2336, i8* %32, align 1
  %2337 = lshr i32 %2320, 31
  %2338 = xor i32 %2335, %2337
  %2339 = add nuw nsw i32 %2338, %2337
  %2340 = icmp eq i32 %2339, 2
  %2341 = zext i1 %2340 to i8
  store i8 %2341, i8* %38, align 1
  %.v39 = select i1 %2333, i64 245, i64 18
  %2342 = add i64 %1729, %.v39
  store i64 %2342, i64* %3, align 8
  br i1 %2333, label %block_.L_40d038, label %block_40cf55

block_40cf55:                                     ; preds = %block_.L_40cf43
  %2343 = add i64 %2342, 4
  store i64 %2343, i64* %3, align 8
  %2344 = load i32, i32* %1087, align 4
  %2345 = sext i32 %2344 to i64
  store i64 %2345, i64* %RAX.i1536, align 8
  %2346 = shl nsw i64 %2345, 2
  %2347 = add nsw i64 %2346, 8807744
  %2348 = add i64 %2342, 12
  store i64 %2348, i64* %3, align 8
  %2349 = inttoptr i64 %2347 to i32*
  %2350 = load i32, i32* %2349, align 4
  %2351 = add i32 %2350, -6
  %2352 = icmp ult i32 %2350, 6
  %2353 = zext i1 %2352 to i8
  store i8 %2353, i8* %14, align 1
  %2354 = and i32 %2351, 255
  %2355 = tail call i32 @llvm.ctpop.i32(i32 %2354)
  %2356 = trunc i32 %2355 to i8
  %2357 = and i8 %2356, 1
  %2358 = xor i8 %2357, 1
  store i8 %2358, i8* %21, align 1
  %2359 = xor i32 %2351, %2350
  %2360 = lshr i32 %2359, 4
  %2361 = trunc i32 %2360 to i8
  %2362 = and i8 %2361, 1
  store i8 %2362, i8* %26, align 1
  %2363 = icmp eq i32 %2351, 0
  %2364 = zext i1 %2363 to i8
  store i8 %2364, i8* %29, align 1
  %2365 = lshr i32 %2351, 31
  %2366 = trunc i32 %2365 to i8
  store i8 %2366, i8* %32, align 1
  %2367 = lshr i32 %2350, 31
  %2368 = xor i32 %2365, %2367
  %2369 = add nuw nsw i32 %2368, %2367
  %2370 = icmp eq i32 %2369, 2
  %2371 = zext i1 %2370 to i8
  store i8 %2371, i8* %38, align 1
  %.v40 = select i1 %2363, i64 227, i64 18
  %2372 = add i64 %2342, %.v40
  store i64 %2372, i64* %3, align 8
  br i1 %2363, label %block_.L_40d038, label %block_40cf67

block_40cf67:                                     ; preds = %block_40cf55
  %2373 = add i64 %1084, -32
  %2374 = add i64 %2372, 4
  store i64 %2374, i64* %3, align 8
  %2375 = inttoptr i64 %2373 to i32*
  %2376 = load i32, i32* %2375, align 4
  store i8 0, i8* %14, align 1
  %2377 = and i32 %2376, 255
  %2378 = tail call i32 @llvm.ctpop.i32(i32 %2377)
  %2379 = trunc i32 %2378 to i8
  %2380 = and i8 %2379, 1
  %2381 = xor i8 %2380, 1
  store i8 %2381, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2382 = icmp eq i32 %2376, 0
  %2383 = zext i1 %2382 to i8
  store i8 %2383, i8* %29, align 1
  %2384 = lshr i32 %2376, 31
  %2385 = trunc i32 %2384 to i8
  store i8 %2385, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v41 = select i1 %2382, i64 10, i64 209
  %2386 = add i64 %2372, %.v41
  store i64 %2386, i64* %3, align 8
  br i1 %2382, label %block_40cf71, label %block_.L_40d038

block_40cf71:                                     ; preds = %block_40cf67
  store i64 ptrtoint (%G__0x8a0a80_type* @G__0x8a0a80 to i64), i64* %RAX.i1536, align 8
  %2387 = add i64 %2386, 14
  store i64 %2387, i64* %3, align 8
  %2388 = load i32, i32* %1087, align 4
  %2389 = sext i32 %2388 to i64
  store i64 %2389, i64* %RCX.i1524, align 8
  %2390 = shl nsw i64 %2389, 2
  %2391 = add nsw i64 %2390, 8807744
  %2392 = add i64 %2386, 21
  store i64 %2392, i64* %3, align 8
  %2393 = inttoptr i64 %2391 to i32*
  %2394 = load i32, i32* %2393, align 4
  %2395 = zext i32 %2394 to i64
  store i64 %2395, i64* %RDX.i1281, align 8
  %2396 = add i64 %1084, -20
  %2397 = add i64 %2386, 25
  store i64 %2397, i64* %3, align 8
  %2398 = inttoptr i64 %2396 to i32*
  %2399 = load i32, i32* %2398, align 4
  %2400 = sext i32 %2399 to i64
  store i64 %2400, i64* %RCX.i1524, align 8
  %2401 = shl nsw i64 %2400, 2
  %2402 = add nsw i64 %2401, 8807744
  %2403 = add i64 %2386, 32
  store i64 %2403, i64* %3, align 8
  %2404 = inttoptr i64 %2402 to i32*
  store i32 %2394, i32* %2404, align 4
  %2405 = load i64, i64* %RBP.i, align 8
  %2406 = add i64 %2405, -28
  %2407 = load i64, i64* %3, align 8
  %2408 = add i64 %2407, 3
  store i64 %2408, i64* %3, align 8
  %2409 = inttoptr i64 %2406 to i32*
  %2410 = load i32, i32* %2409, align 4
  %2411 = zext i32 %2410 to i64
  store i64 %2411, i64* %RDX.i1281, align 8
  %2412 = add i64 %2405, -24
  %2413 = add i64 %2407, 7
  store i64 %2413, i64* %3, align 8
  %2414 = inttoptr i64 %2412 to i32*
  %2415 = load i32, i32* %2414, align 4
  %2416 = sext i32 %2415 to i64
  store i64 %2416, i64* %RCX.i1524, align 8
  %2417 = shl nsw i64 %2416, 2
  %2418 = add nsw i64 %2417, 8807744
  %2419 = add i64 %2407, 14
  store i64 %2419, i64* %3, align 8
  %2420 = inttoptr i64 %2418 to i32*
  store i32 %2410, i32* %2420, align 4
  %2421 = load i64, i64* %RBP.i, align 8
  %2422 = add i64 %2421, -24
  %2423 = load i64, i64* %3, align 8
  %2424 = add i64 %2423, 4
  store i64 %2424, i64* %3, align 8
  %2425 = inttoptr i64 %2422 to i32*
  %2426 = load i32, i32* %2425, align 4
  %2427 = sext i32 %2426 to i64
  store i64 %2427, i64* %RCX.i1524, align 8
  %2428 = shl nsw i64 %2427, 2
  %2429 = add nsw i64 %2428, 8922032
  %2430 = add i64 %2423, 11
  store i64 %2430, i64* %3, align 8
  %2431 = inttoptr i64 %2429 to i32*
  %2432 = load i32, i32* %2431, align 4
  %2433 = add i32 %2432, -1
  %2434 = zext i32 %2433 to i64
  store i64 %2434, i64* %RDX.i1281, align 8
  %2435 = icmp ne i32 %2432, 0
  %2436 = zext i1 %2435 to i8
  store i8 %2436, i8* %14, align 1
  %2437 = and i32 %2433, 255
  %2438 = tail call i32 @llvm.ctpop.i32(i32 %2437)
  %2439 = trunc i32 %2438 to i8
  %2440 = and i8 %2439, 1
  %2441 = xor i8 %2440, 1
  store i8 %2441, i8* %21, align 1
  %2442 = xor i32 %2432, 16
  %2443 = xor i32 %2442, %2433
  %2444 = lshr i32 %2443, 4
  %2445 = trunc i32 %2444 to i8
  %2446 = and i8 %2445, 1
  store i8 %2446, i8* %26, align 1
  %2447 = icmp eq i32 %2433, 0
  %2448 = zext i1 %2447 to i8
  store i8 %2448, i8* %29, align 1
  %2449 = lshr i32 %2433, 31
  %2450 = trunc i32 %2449 to i8
  store i8 %2450, i8* %32, align 1
  %2451 = lshr i32 %2432, 31
  %2452 = xor i32 %2449, %2451
  %2453 = xor i32 %2449, 1
  %2454 = add nuw nsw i32 %2452, %2453
  %2455 = icmp eq i32 %2454, 2
  %2456 = zext i1 %2455 to i8
  store i8 %2456, i8* %38, align 1
  %2457 = add i64 %2423, 21
  store i64 %2457, i64* %3, align 8
  store i32 %2433, i32* %2431, align 4
  %2458 = load i64, i64* %RBP.i, align 8
  %2459 = add i64 %2458, -20
  %2460 = load i64, i64* %3, align 8
  %2461 = add i64 %2460, 4
  store i64 %2461, i64* %3, align 8
  %2462 = inttoptr i64 %2459 to i32*
  %2463 = load i32, i32* %2462, align 4
  %2464 = sext i32 %2463 to i64
  store i64 %2464, i64* %RCX.i1524, align 8
  %2465 = shl nsw i64 %2464, 2
  %2466 = add nsw i64 %2465, 8922032
  %2467 = add i64 %2460, 11
  store i64 %2467, i64* %3, align 8
  %2468 = inttoptr i64 %2466 to i32*
  %2469 = load i32, i32* %2468, align 4
  %2470 = add i32 %2469, -1
  %2471 = add i64 %2460, 21
  store i64 %2471, i64* %3, align 8
  store i32 %2470, i32* %2468, align 4
  %2472 = load i64, i64* %3, align 8
  %2473 = load i32, i32* bitcast (%G_0x8661bc_type* @G_0x8661bc to i32*), align 8
  %2474 = xor i32 %2473, 1
  %2475 = zext i32 %2474 to i64
  store i64 %2475, i64* %RDX.i1281, align 8
  store i8 0, i8* %14, align 1
  %2476 = and i32 %2474, 255
  %2477 = tail call i32 @llvm.ctpop.i32(i32 %2476)
  %2478 = trunc i32 %2477 to i8
  %2479 = and i8 %2478, 1
  %2480 = xor i8 %2479, 1
  store i8 %2480, i8* %21, align 1
  %2481 = icmp eq i32 %2474, 0
  %2482 = zext i1 %2481 to i8
  store i8 %2482, i8* %29, align 1
  %2483 = lshr i32 %2473, 31
  %2484 = trunc i32 %2483 to i8
  store i8 %2484, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i32 %2474, i32* bitcast (%G_0x8661bc_type* @G_0x8661bc to i32*), align 8
  %2485 = load i64, i64* %RBP.i, align 8
  %2486 = add i64 %2485, -20
  %2487 = add i64 %2472, 21
  store i64 %2487, i64* %3, align 8
  %2488 = inttoptr i64 %2486 to i32*
  %2489 = load i32, i32* %2488, align 4
  %2490 = sext i32 %2489 to i64
  store i64 %2490, i64* %RCX.i1524, align 8
  %2491 = shl nsw i64 %2490, 2
  %2492 = add nsw i64 %2491, 8807744
  %2493 = add i64 %2472, 29
  store i64 %2493, i64* %3, align 8
  %2494 = inttoptr i64 %2492 to i32*
  %2495 = load i32, i32* %2494, align 4
  %2496 = sext i32 %2495 to i64
  %2497 = mul nsw i64 %2496, 576
  store i64 %2497, i64* %RCX.i1524, align 8
  %2498 = lshr i64 %2497, 63
  %2499 = load i64, i64* %RAX.i1536, align 8
  %2500 = add i64 %2497, %2499
  store i64 %2500, i64* %RSI.i1516, align 8
  %2501 = icmp ult i64 %2500, %2499
  %2502 = icmp ult i64 %2500, %2497
  %2503 = or i1 %2501, %2502
  %2504 = zext i1 %2503 to i8
  store i8 %2504, i8* %14, align 1
  %2505 = trunc i64 %2500 to i32
  %2506 = and i32 %2505, 255
  %2507 = tail call i32 @llvm.ctpop.i32(i32 %2506)
  %2508 = trunc i32 %2507 to i8
  %2509 = and i8 %2508, 1
  %2510 = xor i8 %2509, 1
  store i8 %2510, i8* %21, align 1
  %2511 = xor i64 %2499, %2500
  %2512 = lshr i64 %2511, 4
  %2513 = trunc i64 %2512 to i8
  %2514 = and i8 %2513, 1
  store i8 %2514, i8* %26, align 1
  %2515 = icmp eq i64 %2500, 0
  %2516 = zext i1 %2515 to i8
  store i8 %2516, i8* %29, align 1
  %2517 = lshr i64 %2500, 63
  %2518 = trunc i64 %2517 to i8
  store i8 %2518, i8* %32, align 1
  %2519 = lshr i64 %2499, 63
  %2520 = xor i64 %2517, %2519
  %2521 = xor i64 %2517, %2498
  %2522 = add nuw nsw i64 %2520, %2521
  %2523 = icmp eq i64 %2522, 2
  %2524 = zext i1 %2523 to i8
  store i8 %2524, i8* %38, align 1
  %2525 = add i64 %2485, -24
  %2526 = add i64 %2472, 46
  store i64 %2526, i64* %3, align 8
  %2527 = inttoptr i64 %2525 to i32*
  %2528 = load i32, i32* %2527, align 4
  %2529 = sext i32 %2528 to i64
  store i64 %2529, i64* %RCX.i1524, align 8
  %2530 = shl nsw i64 %2529, 2
  %2531 = add i64 %2530, %2500
  %2532 = add i64 %2472, 49
  store i64 %2532, i64* %3, align 8
  %2533 = inttoptr i64 %2531 to i32*
  %2534 = load i32, i32* %2533, align 4
  %2535 = load i32, i32* bitcast (%G_0x633b40_type* @G_0x633b40 to i32*), align 8
  %2536 = xor i32 %2535, %2534
  %2537 = zext i32 %2536 to i64
  store i64 %2537, i64* %RDX.i1281, align 8
  store i8 0, i8* %14, align 1
  %2538 = and i32 %2536, 255
  %2539 = tail call i32 @llvm.ctpop.i32(i32 %2538)
  %2540 = trunc i32 %2539 to i8
  %2541 = and i8 %2540, 1
  %2542 = xor i8 %2541, 1
  store i8 %2542, i8* %21, align 1
  %2543 = icmp eq i32 %2536, 0
  %2544 = zext i1 %2543 to i8
  store i8 %2544, i8* %29, align 1
  %2545 = lshr i32 %2536, 31
  %2546 = trunc i32 %2545 to i8
  store i8 %2546, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i32 %2536, i32* bitcast (%G_0x633b40_type* @G_0x633b40 to i32*), align 8
  %2547 = load i64, i64* %RBP.i, align 8
  %2548 = add i64 %2547, -20
  %2549 = add i64 %2472, 67
  store i64 %2549, i64* %3, align 8
  %2550 = inttoptr i64 %2548 to i32*
  %2551 = load i32, i32* %2550, align 4
  %2552 = sext i32 %2551 to i64
  store i64 %2552, i64* %RCX.i1524, align 8
  %2553 = shl nsw i64 %2552, 2
  %2554 = add nsw i64 %2553, 8807744
  %2555 = add i64 %2472, 75
  store i64 %2555, i64* %3, align 8
  %2556 = inttoptr i64 %2554 to i32*
  %2557 = load i32, i32* %2556, align 4
  %2558 = sext i32 %2557 to i64
  %2559 = mul nsw i64 %2558, 576
  store i64 %2559, i64* %RCX.i1524, align 8
  %2560 = lshr i64 %2559, 63
  %2561 = load i64, i64* %RAX.i1536, align 8
  %2562 = add i64 %2559, %2561
  store i64 %2562, i64* %RAX.i1536, align 8
  %2563 = icmp ult i64 %2562, %2561
  %2564 = icmp ult i64 %2562, %2559
  %2565 = or i1 %2563, %2564
  %2566 = zext i1 %2565 to i8
  store i8 %2566, i8* %14, align 1
  %2567 = trunc i64 %2562 to i32
  %2568 = and i32 %2567, 255
  %2569 = tail call i32 @llvm.ctpop.i32(i32 %2568)
  %2570 = trunc i32 %2569 to i8
  %2571 = and i8 %2570, 1
  %2572 = xor i8 %2571, 1
  store i8 %2572, i8* %21, align 1
  %2573 = xor i64 %2561, %2562
  %2574 = lshr i64 %2573, 4
  %2575 = trunc i64 %2574 to i8
  %2576 = and i8 %2575, 1
  store i8 %2576, i8* %26, align 1
  %2577 = icmp eq i64 %2562, 0
  %2578 = zext i1 %2577 to i8
  store i8 %2578, i8* %29, align 1
  %2579 = lshr i64 %2562, 63
  %2580 = trunc i64 %2579 to i8
  store i8 %2580, i8* %32, align 1
  %2581 = lshr i64 %2561, 63
  %2582 = xor i64 %2579, %2581
  %2583 = xor i64 %2579, %2560
  %2584 = add nuw nsw i64 %2582, %2583
  %2585 = icmp eq i64 %2584, 2
  %2586 = zext i1 %2585 to i8
  store i8 %2586, i8* %38, align 1
  %2587 = add i64 %2472, 89
  store i64 %2587, i64* %3, align 8
  %2588 = load i32, i32* %2550, align 4
  %2589 = sext i32 %2588 to i64
  store i64 %2589, i64* %RCX.i1524, align 8
  %2590 = shl nsw i64 %2589, 2
  %2591 = add i64 %2590, %2562
  %2592 = add i64 %2472, 92
  store i64 %2592, i64* %3, align 8
  %2593 = inttoptr i64 %2591 to i32*
  %2594 = load i32, i32* %2593, align 4
  %2595 = xor i32 %2536, %2594
  %2596 = zext i32 %2595 to i64
  store i64 %2596, i64* %RDX.i1281, align 8
  store i8 0, i8* %14, align 1
  %2597 = and i32 %2595, 255
  %2598 = tail call i32 @llvm.ctpop.i32(i32 %2597)
  %2599 = trunc i32 %2598 to i8
  %2600 = and i8 %2599, 1
  %2601 = xor i8 %2600, 1
  store i8 %2601, i8* %21, align 1
  %2602 = icmp eq i32 %2595, 0
  %2603 = zext i1 %2602 to i8
  store i8 %2603, i8* %29, align 1
  %2604 = lshr i32 %2595, 31
  %2605 = trunc i32 %2604 to i8
  store i8 %2605, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %2606 = add i64 %2472, 106
  store i64 %2606, i64* %3, align 8
  store i32 %2595, i32* bitcast (%G_0x633b40_type* @G_0x633b40 to i32*), align 8
  %2607 = add i64 %2472, 1595
  br label %block_.L_40d604

block_.L_40d038:                                  ; preds = %block_40cf67, %block_40cf55, %block_.L_40cf43
  %2608 = phi i64 [ %2386, %block_40cf67 ], [ %2372, %block_40cf55 ], [ %2342, %block_.L_40cf43 ]
  %2609 = add i64 %1084, -32
  %2610 = add i64 %2608, 4
  store i64 %2610, i64* %3, align 8
  %2611 = inttoptr i64 %2609 to i32*
  %2612 = load i32, i32* %2611, align 4
  store i8 0, i8* %14, align 1
  %2613 = and i32 %2612, 255
  %2614 = tail call i32 @llvm.ctpop.i32(i32 %2613)
  %2615 = trunc i32 %2614 to i8
  %2616 = and i8 %2615, 1
  %2617 = xor i8 %2616, 1
  store i8 %2617, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2618 = icmp eq i32 %2612, 0
  %2619 = zext i1 %2618 to i8
  store i8 %2619, i8* %29, align 1
  %2620 = lshr i32 %2612, 31
  %2621 = trunc i32 %2620 to i8
  store i8 %2621, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v33 = select i1 %2618, i64 468, i64 10
  %2622 = add i64 %2608, %.v33
  store i64 %2622, i64* %3, align 8
  br i1 %2618, label %block_.L_40d20c, label %block_40d042

block_40d042:                                     ; preds = %block_.L_40d038
  store i64 2, i64* %RAX.i1536, align 8
  %2623 = add i64 %2622, 9
  store i64 %2623, i64* %3, align 8
  %2624 = load i32, i32* %1087, align 4
  %2625 = sext i32 %2624 to i64
  store i64 %2625, i64* %RCX.i1524, align 8
  %2626 = shl nsw i64 %2625, 2
  %2627 = add nsw i64 %2626, 8807744
  %2628 = add i64 %2622, 16
  store i64 %2628, i64* %3, align 8
  %2629 = inttoptr i64 %2627 to i32*
  %2630 = load i32, i32* %2629, align 4
  %2631 = zext i32 %2630 to i64
  store i64 %2631, i64* %RDX.i1281, align 8
  %2632 = add i64 %1084, -52
  %2633 = add i64 %2622, 19
  store i64 %2633, i64* %3, align 8
  %2634 = inttoptr i64 %2632 to i32*
  store i32 2, i32* %2634, align 4
  %2635 = load i32, i32* %EDX.i1274, align 4
  %2636 = zext i32 %2635 to i64
  %2637 = load i64, i64* %3, align 8
  store i64 %2636, i64* %RAX.i1536, align 8
  %2638 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %2639 = sext i32 %2635 to i64
  %2640 = lshr i64 %2639, 32
  store i64 %2640, i64* %2638, align 8
  %2641 = load i64, i64* %RBP.i, align 8
  %2642 = add i64 %2641, -52
  %2643 = add i64 %2637, 6
  store i64 %2643, i64* %3, align 8
  %2644 = inttoptr i64 %2642 to i32*
  %2645 = load i32, i32* %2644, align 4
  %2646 = zext i32 %2645 to i64
  store i64 %2646, i64* %RSI.i1516, align 8
  %2647 = add i64 %2637, 8
  store i64 %2647, i64* %3, align 8
  %2648 = sext i32 %2645 to i64
  %2649 = shl nuw i64 %2640, 32
  %2650 = or i64 %2649, %2636
  %2651 = sdiv i64 %2650, %2648
  %2652 = shl i64 %2651, 32
  %2653 = ashr exact i64 %2652, 32
  %2654 = icmp eq i64 %2651, %2653
  br i1 %2654, label %2657, label %2655

; <label>:2655:                                   ; preds = %block_40d042
  %2656 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2647, %struct.Memory* %MEMORY.4)
  %.pre29 = load i32, i32* %EDX.i1274, align 4
  %.pre30 = load i64, i64* %3, align 8
  %.pre31 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__esi.exit

; <label>:2657:                                   ; preds = %block_40d042
  %2658 = srem i64 %2650, %2648
  %2659 = and i64 %2651, 4294967295
  store i64 %2659, i64* %RAX.i1536, align 8
  %2660 = and i64 %2658, 4294967295
  store i64 %2660, i64* %RDX.i1281, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %2661 = trunc i64 %2658 to i32
  br label %routine_idivl__esi.exit

routine_idivl__esi.exit:                          ; preds = %2657, %2655
  %2662 = phi i64 [ %.pre31, %2655 ], [ %2641, %2657 ]
  %2663 = phi i64 [ %.pre30, %2655 ], [ %2647, %2657 ]
  %2664 = phi i32 [ %.pre29, %2655 ], [ %2661, %2657 ]
  %2665 = phi %struct.Memory* [ %2656, %2655 ], [ %MEMORY.4, %2657 ]
  store i8 0, i8* %14, align 1
  %2666 = and i32 %2664, 255
  %2667 = tail call i32 @llvm.ctpop.i32(i32 %2666)
  %2668 = trunc i32 %2667 to i8
  %2669 = and i8 %2668, 1
  %2670 = xor i8 %2669, 1
  store i8 %2670, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2671 = icmp eq i32 %2664, 0
  %2672 = zext i1 %2671 to i8
  store i8 %2672, i8* %29, align 1
  %2673 = lshr i32 %2664, 31
  %2674 = trunc i32 %2673 to i8
  store i8 %2674, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v42 = select i1 %2671, i64 220, i64 9
  %2675 = add i64 %2663, %.v42
  store i64 ptrtoint (%G__0x8a0a80_type* @G__0x8a0a80 to i64), i64* %RAX.i1536, align 8
  %2676 = add i64 %2662, -28
  %2677 = add i64 %2675, 13
  store i64 %2677, i64* %3, align 8
  %2678 = inttoptr i64 %2676 to i32*
  %2679 = load i32, i32* %2678, align 4
  %2680 = zext i32 %2679 to i64
  store i64 %2680, i64* %RCX.i1524, align 8
  %2681 = add i64 %2662, -24
  %2682 = add i64 %2675, 17
  store i64 %2682, i64* %3, align 8
  %2683 = inttoptr i64 %2681 to i32*
  %2684 = load i32, i32* %2683, align 4
  %2685 = sext i32 %2684 to i64
  store i64 %2685, i64* %RDX.i1281, align 8
  %2686 = shl nsw i64 %2685, 2
  %2687 = add nsw i64 %2686, 8807744
  %2688 = add i64 %2675, 24
  store i64 %2688, i64* %3, align 8
  %2689 = inttoptr i64 %2687 to i32*
  store i32 %2679, i32* %2689, align 4
  %2690 = load i64, i64* %RBP.i, align 8
  %2691 = add i64 %2690, -20
  %2692 = load i64, i64* %3, align 8
  %2693 = add i64 %2692, 4
  store i64 %2693, i64* %3, align 8
  %2694 = inttoptr i64 %2691 to i32*
  %2695 = load i32, i32* %2694, align 4
  %2696 = sext i32 %2695 to i64
  store i64 %2696, i64* %RDX.i1281, align 8
  %2697 = shl nsw i64 %2696, 2
  %2698 = add nsw i64 %2697, 8807744
  %2699 = add i64 %2692, 15
  store i64 %2699, i64* %3, align 8
  %2700 = inttoptr i64 %2698 to i32*
  br i1 %2671, label %block_.L_40d139, label %block_40d066

block_40d066:                                     ; preds = %routine_idivl__esi.exit
  store i32 1, i32* %2700, align 4
  %2701 = load i64, i64* %RBP.i, align 8
  %2702 = add i64 %2701, -24
  %2703 = load i64, i64* %3, align 8
  %2704 = add i64 %2703, 4
  store i64 %2704, i64* %3, align 8
  %2705 = inttoptr i64 %2702 to i32*
  %2706 = load i32, i32* %2705, align 4
  %2707 = sext i32 %2706 to i64
  store i64 %2707, i64* %RDX.i1281, align 8
  %2708 = shl nsw i64 %2707, 2
  %2709 = add nsw i64 %2708, 8922032
  %2710 = add i64 %2703, 11
  store i64 %2710, i64* %3, align 8
  %2711 = inttoptr i64 %2709 to i32*
  %2712 = load i32, i32* %2711, align 4
  %2713 = add i32 %2712, -1
  %2714 = zext i32 %2713 to i64
  store i64 %2714, i64* %RCX.i1524, align 8
  %2715 = icmp ne i32 %2712, 0
  %2716 = zext i1 %2715 to i8
  store i8 %2716, i8* %14, align 1
  %2717 = and i32 %2713, 255
  %2718 = tail call i32 @llvm.ctpop.i32(i32 %2717)
  %2719 = trunc i32 %2718 to i8
  %2720 = and i8 %2719, 1
  %2721 = xor i8 %2720, 1
  store i8 %2721, i8* %21, align 1
  %2722 = xor i32 %2712, 16
  %2723 = xor i32 %2722, %2713
  %2724 = lshr i32 %2723, 4
  %2725 = trunc i32 %2724 to i8
  %2726 = and i8 %2725, 1
  store i8 %2726, i8* %26, align 1
  %2727 = icmp eq i32 %2713, 0
  %2728 = zext i1 %2727 to i8
  store i8 %2728, i8* %29, align 1
  %2729 = lshr i32 %2713, 31
  %2730 = trunc i32 %2729 to i8
  store i8 %2730, i8* %32, align 1
  %2731 = lshr i32 %2712, 31
  %2732 = xor i32 %2729, %2731
  %2733 = xor i32 %2729, 1
  %2734 = add nuw nsw i32 %2732, %2733
  %2735 = icmp eq i32 %2734, 2
  %2736 = zext i1 %2735 to i8
  store i8 %2736, i8* %38, align 1
  %2737 = add i64 %2703, 21
  store i64 %2737, i64* %3, align 8
  store i32 %2713, i32* %2711, align 4
  %2738 = load i64, i64* %RBP.i, align 8
  %2739 = add i64 %2738, -20
  %2740 = load i64, i64* %3, align 8
  %2741 = add i64 %2740, 4
  store i64 %2741, i64* %3, align 8
  %2742 = inttoptr i64 %2739 to i32*
  %2743 = load i32, i32* %2742, align 4
  %2744 = sext i32 %2743 to i64
  store i64 %2744, i64* %RDX.i1281, align 8
  %2745 = shl nsw i64 %2744, 2
  %2746 = add nsw i64 %2745, 8922032
  %2747 = add i64 %2740, 11
  store i64 %2747, i64* %3, align 8
  %2748 = inttoptr i64 %2746 to i32*
  %2749 = load i32, i32* %2748, align 4
  %2750 = add i32 %2749, -1
  %2751 = add i64 %2740, 21
  store i64 %2751, i64* %3, align 8
  store i32 %2750, i32* %2748, align 4
  %2752 = load i64, i64* %3, align 8
  %2753 = load i32, i32* bitcast (%G_0x8661bc_type* @G_0x8661bc to i32*), align 8
  %2754 = xor i32 %2753, 1
  %2755 = zext i32 %2754 to i64
  store i64 %2755, i64* %RCX.i1524, align 8
  store i8 0, i8* %14, align 1
  %2756 = and i32 %2754, 255
  %2757 = tail call i32 @llvm.ctpop.i32(i32 %2756)
  %2758 = trunc i32 %2757 to i8
  %2759 = and i8 %2758, 1
  %2760 = xor i8 %2759, 1
  store i8 %2760, i8* %21, align 1
  %2761 = icmp eq i32 %2754, 0
  %2762 = zext i1 %2761 to i8
  store i8 %2762, i8* %29, align 1
  %2763 = lshr i32 %2753, 31
  %2764 = trunc i32 %2763 to i8
  store i8 %2764, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i32 %2754, i32* bitcast (%G_0x8661bc_type* @G_0x8661bc to i32*), align 8
  %2765 = load i64, i64* %RBP.i, align 8
  %2766 = add i64 %2765, -20
  %2767 = add i64 %2752, 21
  store i64 %2767, i64* %3, align 8
  %2768 = inttoptr i64 %2766 to i32*
  %2769 = load i32, i32* %2768, align 4
  %2770 = sext i32 %2769 to i64
  store i64 %2770, i64* %RDX.i1281, align 8
  %2771 = shl nsw i64 %2770, 2
  %2772 = add nsw i64 %2771, 9047232
  %2773 = add i64 %2752, 28
  store i64 %2773, i64* %3, align 8
  %2774 = inttoptr i64 %2772 to i32*
  %2775 = load i32, i32* %2774, align 4
  %2776 = load i32, i32* bitcast (%G_0x633b40_type* @G_0x633b40 to i32*), align 8
  %2777 = xor i32 %2776, %2775
  %2778 = zext i32 %2777 to i64
  store i64 %2778, i64* %RCX.i1524, align 8
  store i8 0, i8* %14, align 1
  %2779 = and i32 %2777, 255
  %2780 = tail call i32 @llvm.ctpop.i32(i32 %2779)
  %2781 = trunc i32 %2780 to i8
  %2782 = and i8 %2781, 1
  %2783 = xor i8 %2782, 1
  store i8 %2783, i8* %21, align 1
  %2784 = icmp eq i32 %2777, 0
  %2785 = zext i1 %2784 to i8
  store i8 %2785, i8* %29, align 1
  %2786 = lshr i32 %2777, 31
  %2787 = trunc i32 %2786 to i8
  store i8 %2787, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i32 %2777, i32* bitcast (%G_0x633b40_type* @G_0x633b40 to i32*), align 8
  %2788 = add i64 %2765, -32
  %2789 = add i64 %2752, 46
  store i64 %2789, i64* %3, align 8
  %2790 = inttoptr i64 %2788 to i32*
  %2791 = load i32, i32* %2790, align 4
  %2792 = sext i32 %2791 to i64
  %2793 = mul nsw i64 %2792, 576
  store i64 %2793, i64* %RDX.i1281, align 8
  %2794 = lshr i64 %2793, 63
  %2795 = load i64, i64* %RAX.i1536, align 8
  %2796 = add i64 %2793, %2795
  store i64 %2796, i64* %RAX.i1536, align 8
  %2797 = icmp ult i64 %2796, %2795
  %2798 = icmp ult i64 %2796, %2793
  %2799 = or i1 %2797, %2798
  %2800 = zext i1 %2799 to i8
  store i8 %2800, i8* %14, align 1
  %2801 = trunc i64 %2796 to i32
  %2802 = and i32 %2801, 255
  %2803 = tail call i32 @llvm.ctpop.i32(i32 %2802)
  %2804 = trunc i32 %2803 to i8
  %2805 = and i8 %2804, 1
  %2806 = xor i8 %2805, 1
  store i8 %2806, i8* %21, align 1
  %2807 = xor i64 %2795, %2796
  %2808 = lshr i64 %2807, 4
  %2809 = trunc i64 %2808 to i8
  %2810 = and i8 %2809, 1
  store i8 %2810, i8* %26, align 1
  %2811 = icmp eq i64 %2796, 0
  %2812 = zext i1 %2811 to i8
  store i8 %2812, i8* %29, align 1
  %2813 = lshr i64 %2796, 63
  %2814 = trunc i64 %2813 to i8
  store i8 %2814, i8* %32, align 1
  %2815 = lshr i64 %2795, 63
  %2816 = xor i64 %2813, %2815
  %2817 = xor i64 %2813, %2794
  %2818 = add nuw nsw i64 %2816, %2817
  %2819 = icmp eq i64 %2818, 2
  %2820 = zext i1 %2819 to i8
  store i8 %2820, i8* %38, align 1
  %2821 = load i64, i64* %RBP.i, align 8
  %2822 = add i64 %2821, -24
  %2823 = add i64 %2752, 60
  store i64 %2823, i64* %3, align 8
  %2824 = inttoptr i64 %2822 to i32*
  %2825 = load i32, i32* %2824, align 4
  %2826 = sext i32 %2825 to i64
  store i64 %2826, i64* %RDX.i1281, align 8
  %2827 = shl nsw i64 %2826, 2
  %2828 = add i64 %2827, %2796
  %2829 = add i64 %2752, 63
  store i64 %2829, i64* %3, align 8
  %2830 = inttoptr i64 %2828 to i32*
  %2831 = load i32, i32* %2830, align 4
  %2832 = xor i32 %2777, %2831
  %2833 = zext i32 %2832 to i64
  store i64 %2833, i64* %RCX.i1524, align 8
  store i8 0, i8* %14, align 1
  %2834 = and i32 %2832, 255
  %2835 = tail call i32 @llvm.ctpop.i32(i32 %2834)
  %2836 = trunc i32 %2835 to i8
  %2837 = and i8 %2836, 1
  %2838 = xor i8 %2837, 1
  store i8 %2838, i8* %21, align 1
  %2839 = icmp eq i32 %2832, 0
  %2840 = zext i1 %2839 to i8
  store i8 %2840, i8* %29, align 1
  %2841 = lshr i32 %2832, 31
  %2842 = trunc i32 %2841 to i8
  store i8 %2842, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i32 %2832, i32* bitcast (%G_0x633b40_type* @G_0x633b40 to i32*), align 8
  %2843 = add i64 %2821, -32
  %2844 = add i64 %2752, 81
  store i64 %2844, i64* %3, align 8
  %2845 = inttoptr i64 %2843 to i32*
  %2846 = load i32, i32* %2845, align 4
  %2847 = sext i32 %2846 to i64
  store i64 %2847, i64* %RAX.i1536, align 8
  %2848 = shl nsw i64 %2847, 2
  %2849 = add nsw i64 %2848, 6478512
  %2850 = add i64 %2752, 88
  store i64 %2850, i64* %3, align 8
  %2851 = inttoptr i64 %2849 to i32*
  %2852 = load i32, i32* %2851, align 4
  %2853 = load i32, i32* bitcast (%G_0x8661c0_type* @G_0x8661c0 to i32*), align 8
  %2854 = sub i32 %2853, %2852
  %2855 = zext i32 %2854 to i64
  store i64 %2855, i64* %RSI.i1516, align 8
  %2856 = lshr i32 %2854, 31
  %2857 = load i32, i32* bitcast (%G_0x62dab4_type* @G_0x62dab4 to i32*), align 8
  %2858 = add i32 %2854, %2857
  %2859 = zext i32 %2858 to i64
  store i64 %2859, i64* %RCX.i1524, align 8
  %2860 = icmp ult i32 %2858, %2857
  %2861 = icmp ult i32 %2858, %2854
  %2862 = or i1 %2860, %2861
  %2863 = zext i1 %2862 to i8
  store i8 %2863, i8* %14, align 1
  %2864 = and i32 %2858, 255
  %2865 = tail call i32 @llvm.ctpop.i32(i32 %2864)
  %2866 = trunc i32 %2865 to i8
  %2867 = and i8 %2866, 1
  %2868 = xor i8 %2867, 1
  store i8 %2868, i8* %21, align 1
  %2869 = xor i32 %2854, %2857
  %2870 = xor i32 %2869, %2858
  %2871 = lshr i32 %2870, 4
  %2872 = trunc i32 %2871 to i8
  %2873 = and i8 %2872, 1
  store i8 %2873, i8* %26, align 1
  %2874 = icmp eq i32 %2858, 0
  %2875 = zext i1 %2874 to i8
  store i8 %2875, i8* %29, align 1
  %2876 = lshr i32 %2858, 31
  %2877 = trunc i32 %2876 to i8
  store i8 %2877, i8* %32, align 1
  %2878 = lshr i32 %2857, 31
  %2879 = xor i32 %2876, %2878
  %2880 = xor i32 %2876, %2856
  %2881 = add nuw nsw i32 %2879, %2880
  %2882 = icmp eq i32 %2881, 2
  %2883 = zext i1 %2882 to i8
  store i8 %2883, i8* %38, align 1
  %2884 = add i64 %2752, 125
  store i64 %2884, i64* %3, align 8
  store i32 %2858, i32* bitcast (%G_0x8661c0_type* @G_0x8661c0 to i32*), align 8
  %2885 = add i64 %2752, 1357
  br label %block_.L_40d604

block_.L_40d139:                                  ; preds = %routine_idivl__esi.exit
  store i32 2, i32* %2700, align 4
  %2886 = load i64, i64* %RBP.i, align 8
  %2887 = add i64 %2886, -24
  %2888 = load i64, i64* %3, align 8
  %2889 = add i64 %2888, 4
  store i64 %2889, i64* %3, align 8
  %2890 = inttoptr i64 %2887 to i32*
  %2891 = load i32, i32* %2890, align 4
  %2892 = sext i32 %2891 to i64
  store i64 %2892, i64* %RDX.i1281, align 8
  %2893 = shl nsw i64 %2892, 2
  %2894 = add nsw i64 %2893, 8922032
  %2895 = add i64 %2888, 11
  store i64 %2895, i64* %3, align 8
  %2896 = inttoptr i64 %2894 to i32*
  %2897 = load i32, i32* %2896, align 4
  %2898 = add i32 %2897, -1
  %2899 = zext i32 %2898 to i64
  store i64 %2899, i64* %RCX.i1524, align 8
  %2900 = icmp ne i32 %2897, 0
  %2901 = zext i1 %2900 to i8
  store i8 %2901, i8* %14, align 1
  %2902 = and i32 %2898, 255
  %2903 = tail call i32 @llvm.ctpop.i32(i32 %2902)
  %2904 = trunc i32 %2903 to i8
  %2905 = and i8 %2904, 1
  %2906 = xor i8 %2905, 1
  store i8 %2906, i8* %21, align 1
  %2907 = xor i32 %2897, 16
  %2908 = xor i32 %2907, %2898
  %2909 = lshr i32 %2908, 4
  %2910 = trunc i32 %2909 to i8
  %2911 = and i8 %2910, 1
  store i8 %2911, i8* %26, align 1
  %2912 = icmp eq i32 %2898, 0
  %2913 = zext i1 %2912 to i8
  store i8 %2913, i8* %29, align 1
  %2914 = lshr i32 %2898, 31
  %2915 = trunc i32 %2914 to i8
  store i8 %2915, i8* %32, align 1
  %2916 = lshr i32 %2897, 31
  %2917 = xor i32 %2914, %2916
  %2918 = xor i32 %2914, 1
  %2919 = add nuw nsw i32 %2917, %2918
  %2920 = icmp eq i32 %2919, 2
  %2921 = zext i1 %2920 to i8
  store i8 %2921, i8* %38, align 1
  %2922 = add i64 %2888, 21
  store i64 %2922, i64* %3, align 8
  store i32 %2898, i32* %2896, align 4
  %2923 = load i64, i64* %RBP.i, align 8
  %2924 = add i64 %2923, -20
  %2925 = load i64, i64* %3, align 8
  %2926 = add i64 %2925, 4
  store i64 %2926, i64* %3, align 8
  %2927 = inttoptr i64 %2924 to i32*
  %2928 = load i32, i32* %2927, align 4
  %2929 = sext i32 %2928 to i64
  store i64 %2929, i64* %RDX.i1281, align 8
  %2930 = shl nsw i64 %2929, 2
  %2931 = add nsw i64 %2930, 8922032
  %2932 = add i64 %2925, 11
  store i64 %2932, i64* %3, align 8
  %2933 = inttoptr i64 %2931 to i32*
  %2934 = load i32, i32* %2933, align 4
  %2935 = add i32 %2934, -1
  %2936 = add i64 %2925, 21
  store i64 %2936, i64* %3, align 8
  store i32 %2935, i32* %2933, align 4
  %2937 = load i64, i64* %3, align 8
  %2938 = load i32, i32* bitcast (%G_0x8661bc_type* @G_0x8661bc to i32*), align 8
  %2939 = xor i32 %2938, 1
  %2940 = zext i32 %2939 to i64
  store i64 %2940, i64* %RCX.i1524, align 8
  store i8 0, i8* %14, align 1
  %2941 = and i32 %2939, 255
  %2942 = tail call i32 @llvm.ctpop.i32(i32 %2941)
  %2943 = trunc i32 %2942 to i8
  %2944 = and i8 %2943, 1
  %2945 = xor i8 %2944, 1
  store i8 %2945, i8* %21, align 1
  %2946 = icmp eq i32 %2939, 0
  %2947 = zext i1 %2946 to i8
  store i8 %2947, i8* %29, align 1
  %2948 = lshr i32 %2938, 31
  %2949 = trunc i32 %2948 to i8
  store i8 %2949, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i32 %2939, i32* bitcast (%G_0x8661bc_type* @G_0x8661bc to i32*), align 8
  %2950 = load i64, i64* %RBP.i, align 8
  %2951 = add i64 %2950, -20
  %2952 = add i64 %2937, 21
  store i64 %2952, i64* %3, align 8
  %2953 = inttoptr i64 %2951 to i32*
  %2954 = load i32, i32* %2953, align 4
  %2955 = sext i32 %2954 to i64
  store i64 %2955, i64* %RDX.i1281, align 8
  %2956 = shl nsw i64 %2955, 2
  %2957 = add nsw i64 %2956, 9047808
  %2958 = add i64 %2937, 28
  store i64 %2958, i64* %3, align 8
  %2959 = inttoptr i64 %2957 to i32*
  %2960 = load i32, i32* %2959, align 4
  %2961 = load i32, i32* bitcast (%G_0x633b40_type* @G_0x633b40 to i32*), align 8
  %2962 = xor i32 %2961, %2960
  %2963 = zext i32 %2962 to i64
  store i64 %2963, i64* %RCX.i1524, align 8
  store i8 0, i8* %14, align 1
  %2964 = and i32 %2962, 255
  %2965 = tail call i32 @llvm.ctpop.i32(i32 %2964)
  %2966 = trunc i32 %2965 to i8
  %2967 = and i8 %2966, 1
  %2968 = xor i8 %2967, 1
  store i8 %2968, i8* %21, align 1
  %2969 = icmp eq i32 %2962, 0
  %2970 = zext i1 %2969 to i8
  store i8 %2970, i8* %29, align 1
  %2971 = lshr i32 %2962, 31
  %2972 = trunc i32 %2971 to i8
  store i8 %2972, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i32 %2962, i32* bitcast (%G_0x633b40_type* @G_0x633b40 to i32*), align 8
  %2973 = add i64 %2950, -32
  %2974 = add i64 %2937, 46
  store i64 %2974, i64* %3, align 8
  %2975 = inttoptr i64 %2973 to i32*
  %2976 = load i32, i32* %2975, align 4
  %2977 = sext i32 %2976 to i64
  %2978 = mul nsw i64 %2977, 576
  store i64 %2978, i64* %RDX.i1281, align 8
  %2979 = lshr i64 %2978, 63
  %2980 = load i64, i64* %RAX.i1536, align 8
  %2981 = add i64 %2978, %2980
  store i64 %2981, i64* %RAX.i1536, align 8
  %2982 = icmp ult i64 %2981, %2980
  %2983 = icmp ult i64 %2981, %2978
  %2984 = or i1 %2982, %2983
  %2985 = zext i1 %2984 to i8
  store i8 %2985, i8* %14, align 1
  %2986 = trunc i64 %2981 to i32
  %2987 = and i32 %2986, 255
  %2988 = tail call i32 @llvm.ctpop.i32(i32 %2987)
  %2989 = trunc i32 %2988 to i8
  %2990 = and i8 %2989, 1
  %2991 = xor i8 %2990, 1
  store i8 %2991, i8* %21, align 1
  %2992 = xor i64 %2980, %2981
  %2993 = lshr i64 %2992, 4
  %2994 = trunc i64 %2993 to i8
  %2995 = and i8 %2994, 1
  store i8 %2995, i8* %26, align 1
  %2996 = icmp eq i64 %2981, 0
  %2997 = zext i1 %2996 to i8
  store i8 %2997, i8* %29, align 1
  %2998 = lshr i64 %2981, 63
  %2999 = trunc i64 %2998 to i8
  store i8 %2999, i8* %32, align 1
  %3000 = lshr i64 %2980, 63
  %3001 = xor i64 %2998, %3000
  %3002 = xor i64 %2998, %2979
  %3003 = add nuw nsw i64 %3001, %3002
  %3004 = icmp eq i64 %3003, 2
  %3005 = zext i1 %3004 to i8
  store i8 %3005, i8* %38, align 1
  %3006 = load i64, i64* %RBP.i, align 8
  %3007 = add i64 %3006, -24
  %3008 = add i64 %2937, 60
  store i64 %3008, i64* %3, align 8
  %3009 = inttoptr i64 %3007 to i32*
  %3010 = load i32, i32* %3009, align 4
  %3011 = sext i32 %3010 to i64
  store i64 %3011, i64* %RDX.i1281, align 8
  %3012 = shl nsw i64 %3011, 2
  %3013 = add i64 %3012, %2981
  %3014 = add i64 %2937, 63
  store i64 %3014, i64* %3, align 8
  %3015 = inttoptr i64 %3013 to i32*
  %3016 = load i32, i32* %3015, align 4
  %3017 = xor i32 %2962, %3016
  %3018 = zext i32 %3017 to i64
  store i64 %3018, i64* %RCX.i1524, align 8
  store i8 0, i8* %14, align 1
  %3019 = and i32 %3017, 255
  %3020 = tail call i32 @llvm.ctpop.i32(i32 %3019)
  %3021 = trunc i32 %3020 to i8
  %3022 = and i8 %3021, 1
  %3023 = xor i8 %3022, 1
  store i8 %3023, i8* %21, align 1
  %3024 = icmp eq i32 %3017, 0
  %3025 = zext i1 %3024 to i8
  store i8 %3025, i8* %29, align 1
  %3026 = lshr i32 %3017, 31
  %3027 = trunc i32 %3026 to i8
  store i8 %3027, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i32 %3017, i32* bitcast (%G_0x633b40_type* @G_0x633b40 to i32*), align 8
  %3028 = add i64 %3006, -32
  %3029 = add i64 %2937, 81
  store i64 %3029, i64* %3, align 8
  %3030 = inttoptr i64 %3028 to i32*
  %3031 = load i32, i32* %3030, align 4
  %3032 = sext i32 %3031 to i64
  store i64 %3032, i64* %RAX.i1536, align 8
  %3033 = shl nsw i64 %3032, 2
  %3034 = add nsw i64 %3033, 6478512
  %3035 = add i64 %2937, 88
  store i64 %3035, i64* %3, align 8
  %3036 = inttoptr i64 %3034 to i32*
  %3037 = load i32, i32* %3036, align 4
  %3038 = load i32, i32* bitcast (%G_0x8661c0_type* @G_0x8661c0 to i32*), align 8
  %3039 = sub i32 %3038, %3037
  %3040 = zext i32 %3039 to i64
  store i64 %3040, i64* %RSI.i1516, align 8
  %3041 = lshr i32 %3039, 31
  %3042 = load i32, i32* bitcast (%G_0x62dab8_type* @G_0x62dab8 to i32*), align 8
  %3043 = add i32 %3039, %3042
  %3044 = zext i32 %3043 to i64
  store i64 %3044, i64* %RCX.i1524, align 8
  %3045 = icmp ult i32 %3043, %3042
  %3046 = icmp ult i32 %3043, %3039
  %3047 = or i1 %3045, %3046
  %3048 = zext i1 %3047 to i8
  store i8 %3048, i8* %14, align 1
  %3049 = and i32 %3043, 255
  %3050 = tail call i32 @llvm.ctpop.i32(i32 %3049)
  %3051 = trunc i32 %3050 to i8
  %3052 = and i8 %3051, 1
  %3053 = xor i8 %3052, 1
  store i8 %3053, i8* %21, align 1
  %3054 = xor i32 %3039, %3042
  %3055 = xor i32 %3054, %3043
  %3056 = lshr i32 %3055, 4
  %3057 = trunc i32 %3056 to i8
  %3058 = and i8 %3057, 1
  store i8 %3058, i8* %26, align 1
  %3059 = icmp eq i32 %3043, 0
  %3060 = zext i1 %3059 to i8
  store i8 %3060, i8* %29, align 1
  %3061 = lshr i32 %3043, 31
  %3062 = trunc i32 %3061 to i8
  store i8 %3062, i8* %32, align 1
  %3063 = lshr i32 %3042, 31
  %3064 = xor i32 %3061, %3063
  %3065 = xor i32 %3061, %3041
  %3066 = add nuw nsw i32 %3064, %3065
  %3067 = icmp eq i32 %3066, 2
  %3068 = zext i1 %3067 to i8
  store i8 %3068, i8* %38, align 1
  %3069 = add i64 %2937, 125
  store i64 %3069, i64* %3, align 8
  store i32 %3043, i32* bitcast (%G_0x8661c0_type* @G_0x8661c0 to i32*), align 8
  %3070 = add i64 %2937, 1146
  br label %block_.L_40d604

block_.L_40d20c:                                  ; preds = %block_.L_40d038
  %3071 = add i64 %2622, 4
  store i64 %3071, i64* %3, align 8
  %3072 = load i32, i32* %1087, align 4
  %3073 = sext i32 %3072 to i64
  store i64 %3073, i64* %RAX.i1536, align 8
  %3074 = shl nsw i64 %3073, 2
  %3075 = add nsw i64 %3074, 8807744
  %3076 = add i64 %2622, 12
  store i64 %3076, i64* %3, align 8
  %3077 = inttoptr i64 %3075 to i32*
  %3078 = load i32, i32* %3077, align 4
  %3079 = add i32 %3078, -5
  %3080 = icmp ult i32 %3078, 5
  %3081 = zext i1 %3080 to i8
  store i8 %3081, i8* %14, align 1
  %3082 = and i32 %3079, 255
  %3083 = tail call i32 @llvm.ctpop.i32(i32 %3082)
  %3084 = trunc i32 %3083 to i8
  %3085 = and i8 %3084, 1
  %3086 = xor i8 %3085, 1
  store i8 %3086, i8* %21, align 1
  %3087 = xor i32 %3079, %3078
  %3088 = lshr i32 %3087, 4
  %3089 = trunc i32 %3088 to i8
  %3090 = and i8 %3089, 1
  store i8 %3090, i8* %26, align 1
  %3091 = icmp eq i32 %3079, 0
  %3092 = zext i1 %3091 to i8
  store i8 %3092, i8* %29, align 1
  %3093 = lshr i32 %3079, 31
  %3094 = trunc i32 %3093 to i8
  store i8 %3094, i8* %32, align 1
  %3095 = lshr i32 %3078, 31
  %3096 = xor i32 %3093, %3095
  %3097 = add nuw nsw i32 %3096, %3095
  %3098 = icmp eq i32 %3097, 2
  %3099 = zext i1 %3098 to i8
  store i8 %3099, i8* %38, align 1
  %.v = select i1 %3091, i64 18, i64 512
  %3100 = add i64 %2622, %.v
  %3101 = add i64 %1084, -20
  %3102 = add i64 %3100, 3
  store i64 %3102, i64* %3, align 8
  %3103 = inttoptr i64 %3101 to i32*
  %3104 = load i32, i32* %3103, align 4
  %3105 = zext i32 %3104 to i64
  store i64 %3105, i64* %RAX.i1536, align 8
  %3106 = add i64 %3100, 10
  store i64 %3106, i64* %3, align 8
  br i1 %3091, label %block_40d21e, label %block_.L_40d40c

block_40d21e:                                     ; preds = %block_.L_40d20c
  store i32 %3104, i32* bitcast (%G_0x86bd7c_type* @G_0x86bd7c to i32*), align 8
  %3107 = add i64 %1084, -28
  %3108 = add i64 %3100, 13
  store i64 %3108, i64* %3, align 8
  %3109 = inttoptr i64 %3107 to i32*
  %3110 = load i32, i32* %3109, align 4
  %3111 = zext i32 %3110 to i64
  store i64 %3111, i64* %RAX.i1536, align 8
  %3112 = add i64 %3100, 17
  store i64 %3112, i64* %3, align 8
  %3113 = load i32, i32* %1087, align 4
  %3114 = sext i32 %3113 to i64
  store i64 %3114, i64* %RCX.i1524, align 8
  %3115 = shl nsw i64 %3114, 2
  %3116 = add nsw i64 %3115, 8807744
  %3117 = add i64 %3100, 24
  store i64 %3117, i64* %3, align 8
  %3118 = inttoptr i64 %3116 to i32*
  store i32 %3110, i32* %3118, align 4
  %3119 = load i64, i64* %RBP.i, align 8
  %3120 = add i64 %3119, -20
  %3121 = load i64, i64* %3, align 8
  %3122 = add i64 %3121, 4
  store i64 %3122, i64* %3, align 8
  %3123 = inttoptr i64 %3120 to i32*
  %3124 = load i32, i32* %3123, align 4
  %3125 = sext i32 %3124 to i64
  store i64 %3125, i64* %RCX.i1524, align 8
  %3126 = shl nsw i64 %3125, 2
  %3127 = add nsw i64 %3126, 8807744
  %3128 = add i64 %3121, 15
  store i64 %3128, i64* %3, align 8
  %3129 = inttoptr i64 %3127 to i32*
  store i32 5, i32* %3129, align 4
  %3130 = load i64, i64* %RBP.i, align 8
  %3131 = add i64 %3130, -24
  %3132 = load i64, i64* %3, align 8
  %3133 = add i64 %3132, 4
  store i64 %3133, i64* %3, align 8
  %3134 = inttoptr i64 %3131 to i32*
  %3135 = load i32, i32* %3134, align 4
  %3136 = sext i32 %3135 to i64
  store i64 %3136, i64* %RCX.i1524, align 8
  %3137 = shl nsw i64 %3136, 2
  %3138 = add nsw i64 %3137, 8922032
  %3139 = add i64 %3132, 11
  store i64 %3139, i64* %3, align 8
  %3140 = inttoptr i64 %3138 to i32*
  %3141 = load i32, i32* %3140, align 4
  %3142 = add i32 %3141, -1
  %3143 = zext i32 %3142 to i64
  store i64 %3143, i64* %RAX.i1536, align 8
  %3144 = icmp ne i32 %3141, 0
  %3145 = zext i1 %3144 to i8
  store i8 %3145, i8* %14, align 1
  %3146 = and i32 %3142, 255
  %3147 = tail call i32 @llvm.ctpop.i32(i32 %3146)
  %3148 = trunc i32 %3147 to i8
  %3149 = and i8 %3148, 1
  %3150 = xor i8 %3149, 1
  store i8 %3150, i8* %21, align 1
  %3151 = xor i32 %3141, 16
  %3152 = xor i32 %3151, %3142
  %3153 = lshr i32 %3152, 4
  %3154 = trunc i32 %3153 to i8
  %3155 = and i8 %3154, 1
  store i8 %3155, i8* %26, align 1
  %3156 = icmp eq i32 %3142, 0
  %3157 = zext i1 %3156 to i8
  store i8 %3157, i8* %29, align 1
  %3158 = lshr i32 %3142, 31
  %3159 = trunc i32 %3158 to i8
  store i8 %3159, i8* %32, align 1
  %3160 = lshr i32 %3141, 31
  %3161 = xor i32 %3158, %3160
  %3162 = xor i32 %3158, 1
  %3163 = add nuw nsw i32 %3161, %3162
  %3164 = icmp eq i32 %3163, 2
  %3165 = zext i1 %3164 to i8
  store i8 %3165, i8* %38, align 1
  %3166 = add i64 %3132, 21
  store i64 %3166, i64* %3, align 8
  store i32 %3142, i32* %3140, align 4
  %3167 = load i64, i64* %RBP.i, align 8
  %3168 = add i64 %3167, -20
  %3169 = load i64, i64* %3, align 8
  %3170 = add i64 %3169, 4
  store i64 %3170, i64* %3, align 8
  %3171 = inttoptr i64 %3168 to i32*
  %3172 = load i32, i32* %3171, align 4
  %3173 = sext i32 %3172 to i64
  store i64 %3173, i64* %RCX.i1524, align 8
  %3174 = shl nsw i64 %3173, 2
  %3175 = add nsw i64 %3174, 8922032
  %3176 = add i64 %3169, 11
  store i64 %3176, i64* %3, align 8
  %3177 = inttoptr i64 %3175 to i32*
  %3178 = load i32, i32* %3177, align 4
  %3179 = add i32 %3178, -1
  %3180 = add i64 %3169, 21
  store i64 %3180, i64* %3, align 8
  store i32 %3179, i32* %3177, align 4
  %3181 = load i64, i64* %3, align 8
  %3182 = load i32, i32* bitcast (%G_0x8661bc_type* @G_0x8661bc to i32*), align 8
  %3183 = xor i32 %3182, 1
  %3184 = zext i32 %3183 to i64
  store i64 %3184, i64* %RAX.i1536, align 8
  store i8 0, i8* %14, align 1
  %3185 = and i32 %3183, 255
  %3186 = tail call i32 @llvm.ctpop.i32(i32 %3185)
  %3187 = trunc i32 %3186 to i8
  %3188 = and i8 %3187, 1
  %3189 = xor i8 %3188, 1
  store i8 %3189, i8* %21, align 1
  %3190 = icmp eq i32 %3183, 0
  %3191 = zext i1 %3190 to i8
  store i8 %3191, i8* %29, align 1
  %3192 = lshr i32 %3182, 31
  %3193 = trunc i32 %3192 to i8
  store i8 %3193, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i32 %3183, i32* bitcast (%G_0x8661bc_type* @G_0x8661bc to i32*), align 8
  %3194 = load i64, i64* %RBP.i, align 8
  %3195 = add i64 %3194, -20
  %3196 = add i64 %3181, 21
  store i64 %3196, i64* %3, align 8
  %3197 = inttoptr i64 %3195 to i32*
  %3198 = load i32, i32* %3197, align 4
  %3199 = sext i32 %3198 to i64
  store i64 %3199, i64* %RCX.i1524, align 8
  %3200 = shl nsw i64 %3199, 2
  %3201 = add nsw i64 %3200, 9049536
  %3202 = add i64 %3181, 28
  store i64 %3202, i64* %3, align 8
  %3203 = inttoptr i64 %3201 to i32*
  %3204 = load i32, i32* %3203, align 4
  %3205 = load i32, i32* bitcast (%G_0x633b40_type* @G_0x633b40 to i32*), align 8
  %3206 = xor i32 %3205, %3204
  %3207 = zext i32 %3206 to i64
  store i64 %3207, i64* %RAX.i1536, align 8
  store i8 0, i8* %14, align 1
  %3208 = and i32 %3206, 255
  %3209 = tail call i32 @llvm.ctpop.i32(i32 %3208)
  %3210 = trunc i32 %3209 to i8
  %3211 = and i8 %3210, 1
  %3212 = xor i8 %3211, 1
  store i8 %3212, i8* %21, align 1
  %3213 = icmp eq i32 %3206, 0
  %3214 = zext i1 %3213 to i8
  store i8 %3214, i8* %29, align 1
  %3215 = lshr i32 %3206, 31
  %3216 = trunc i32 %3215 to i8
  store i8 %3216, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i32 %3206, i32* bitcast (%G_0x633b40_type* @G_0x633b40 to i32*), align 8
  %3217 = add i64 %3194, -24
  %3218 = add i64 %3181, 46
  store i64 %3218, i64* %3, align 8
  %3219 = inttoptr i64 %3217 to i32*
  %3220 = load i32, i32* %3219, align 4
  %3221 = sext i32 %3220 to i64
  store i64 %3221, i64* %RCX.i1524, align 8
  %3222 = shl nsw i64 %3221, 2
  %3223 = add nsw i64 %3222, 9049536
  %3224 = add i64 %3181, 53
  store i64 %3224, i64* %3, align 8
  %3225 = inttoptr i64 %3223 to i32*
  %3226 = load i32, i32* %3225, align 4
  %3227 = xor i32 %3206, %3226
  %3228 = zext i32 %3227 to i64
  store i64 %3228, i64* %RAX.i1536, align 8
  store i8 0, i8* %14, align 1
  %3229 = and i32 %3227, 255
  %3230 = tail call i32 @llvm.ctpop.i32(i32 %3229)
  %3231 = trunc i32 %3230 to i8
  %3232 = and i8 %3231, 1
  %3233 = xor i8 %3232, 1
  store i8 %3233, i8* %21, align 1
  %3234 = icmp eq i32 %3227, 0
  %3235 = zext i1 %3234 to i8
  store i8 %3235, i8* %29, align 1
  %3236 = lshr i32 %3227, 31
  %3237 = trunc i32 %3236 to i8
  store i8 %3237, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i32 %3227, i32* bitcast (%G_0x633b40_type* @G_0x633b40 to i32*), align 8
  %3238 = add i64 %3194, -36
  %3239 = add i64 %3181, 71
  store i64 %3239, i64* %3, align 8
  %3240 = inttoptr i64 %3238 to i32*
  %3241 = load i32, i32* %3240, align 4
  %3242 = add i32 %3241, -1
  %3243 = icmp eq i32 %3241, 0
  %3244 = zext i1 %3243 to i8
  store i8 %3244, i8* %14, align 1
  %3245 = and i32 %3242, 255
  %3246 = tail call i32 @llvm.ctpop.i32(i32 %3245)
  %3247 = trunc i32 %3246 to i8
  %3248 = and i8 %3247, 1
  %3249 = xor i8 %3248, 1
  store i8 %3249, i8* %21, align 1
  %3250 = xor i32 %3242, %3241
  %3251 = lshr i32 %3250, 4
  %3252 = trunc i32 %3251 to i8
  %3253 = and i8 %3252, 1
  store i8 %3253, i8* %26, align 1
  %3254 = icmp eq i32 %3242, 0
  %3255 = zext i1 %3254 to i8
  store i8 %3255, i8* %29, align 1
  %3256 = lshr i32 %3242, 31
  %3257 = trunc i32 %3256 to i8
  store i8 %3257, i8* %32, align 1
  %3258 = lshr i32 %3241, 31
  %3259 = xor i32 %3256, %3258
  %3260 = add nuw nsw i32 %3259, %3258
  %3261 = icmp eq i32 %3260, 2
  %3262 = zext i1 %3261 to i8
  store i8 %3262, i8* %38, align 1
  %.v45 = select i1 %3254, i64 77, i64 235
  %3263 = add i64 %3181, %.v45
  store i64 %3263, i64* %3, align 8
  br i1 %3254, label %block_40d2bc, label %block_.L_40d35a

block_40d2bc:                                     ; preds = %block_40d21e
  store i32 7, i32* bitcast (%G_0x8665c4_type* @G_0x8665c4 to i32*), align 8
  store i32 13, i32* bitcast (%G_0x8665bc_type* @G_0x8665bc to i32*), align 8
  %3264 = load i32, i32* bitcast (%G_0x882434_type* @G_0x882434 to i32*), align 8
  %3265 = add i32 %3264, -1
  store i32 %3265, i32* bitcast (%G_0x882434_type* @G_0x882434 to i32*), align 8
  %3266 = load i32, i32* bitcast (%G_0x88242c_type* @G_0x88242c to i32*), align 8
  %3267 = add i32 %3266, -1
  store i32 %3267, i32* bitcast (%G_0x88242c_type* @G_0x88242c to i32*), align 8
  store i32 0, i32* bitcast (%G_0x62e4fc_type* @G_0x62e4fc to i32*), align 8
  %3268 = load i32, i32* bitcast (%G_0x86636c_type* @G_0x86636c to i32*), align 8
  store i32 %3268, i32* bitcast (%G_0x866374_type* @G_0x866374 to i32*), align 8
  store i32 0, i32* bitcast (%G_0x86636c_type* @G_0x86636c to i32*), align 8
  %3269 = sext i32 %3268 to i64
  store i64 %3269, i64* %RCX.i1524, align 8
  %3270 = shl nsw i64 %3269, 2
  %3271 = add nsw i64 %3270, 8778480
  %3272 = add i64 %3263, 111
  store i64 %3272, i64* %3, align 8
  %3273 = inttoptr i64 %3271 to i32*
  store i32 33, i32* %3273, align 4
  %3274 = load i64, i64* %3, align 8
  %3275 = load i32, i32* bitcast (%G_0x8a1ac4_type* @G_0x8a1ac4 to i32*), align 8
  %3276 = load i32, i32* bitcast (%G_0x633b40_type* @G_0x633b40 to i32*), align 8
  %3277 = xor i32 %3276, %3275
  %3278 = load i32, i32* bitcast (%G_0x8a1abc_type* @G_0x8a1abc to i32*), align 8
  %3279 = xor i32 %3277, %3278
  %3280 = zext i32 %3279 to i64
  store i64 %3280, i64* %RAX.i1536, align 8
  store i8 0, i8* %14, align 1
  %3281 = and i32 %3279, 255
  %3282 = tail call i32 @llvm.ctpop.i32(i32 %3281)
  %3283 = trunc i32 %3282 to i8
  %3284 = and i8 %3283, 1
  %3285 = xor i8 %3284, 1
  store i8 %3285, i8* %21, align 1
  %3286 = icmp eq i32 %3279, 0
  %3287 = zext i1 %3286 to i8
  store i8 %3287, i8* %29, align 1
  %3288 = lshr i32 %3279, 31
  %3289 = trunc i32 %3288 to i8
  store i8 %3289, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %3290 = add i64 %3274, 42
  store i64 %3290, i64* %3, align 8
  store i32 %3279, i32* bitcast (%G_0x633b40_type* @G_0x633b40 to i32*), align 8
  %3291 = add i64 %3274, 729
  br label %block_.L_40d604

block_.L_40d35a:                                  ; preds = %block_40d21e
  %3292 = load i64, i64* %RBP.i, align 8
  %3293 = add i64 %3292, -36
  %3294 = add i64 %3263, 4
  store i64 %3294, i64* %3, align 8
  %3295 = inttoptr i64 %3293 to i32*
  %3296 = load i32, i32* %3295, align 4
  %3297 = add i32 %3296, -2
  %3298 = icmp ult i32 %3296, 2
  %3299 = zext i1 %3298 to i8
  store i8 %3299, i8* %14, align 1
  %3300 = and i32 %3297, 255
  %3301 = tail call i32 @llvm.ctpop.i32(i32 %3300)
  %3302 = trunc i32 %3301 to i8
  %3303 = and i8 %3302, 1
  %3304 = xor i8 %3303, 1
  store i8 %3304, i8* %21, align 1
  %3305 = xor i32 %3297, %3296
  %3306 = lshr i32 %3305, 4
  %3307 = trunc i32 %3306 to i8
  %3308 = and i8 %3307, 1
  store i8 %3308, i8* %26, align 1
  %3309 = icmp eq i32 %3297, 0
  %3310 = zext i1 %3309 to i8
  store i8 %3310, i8* %29, align 1
  %3311 = lshr i32 %3297, 31
  %3312 = trunc i32 %3311 to i8
  store i8 %3312, i8* %32, align 1
  %3313 = lshr i32 %3296, 31
  %3314 = xor i32 %3311, %3313
  %3315 = add nuw nsw i32 %3314, %3313
  %3316 = icmp eq i32 %3315, 2
  %3317 = zext i1 %3316 to i8
  store i8 %3317, i8* %38, align 1
  %.v46 = select i1 %3309, i64 10, i64 168
  %3318 = add i64 %3263, %.v46
  store i64 %3318, i64* %3, align 8
  br i1 %3309, label %block_40d364, label %block_.L_40d402

block_40d364:                                     ; preds = %block_.L_40d35a
  store i32 7, i32* bitcast (%G_0x8665a8_type* @G_0x8665a8 to i32*), align 8
  store i32 13, i32* bitcast (%G_0x8665b4_type* @G_0x8665b4 to i32*), align 8
  %3319 = load i32, i32* bitcast (%G_0x882418_type* @G_0x882418 to i32*), align 8
  %3320 = add i32 %3319, -1
  store i32 %3320, i32* bitcast (%G_0x882418_type* @G_0x882418 to i32*), align 8
  %3321 = load i32, i32* bitcast (%G_0x882424_type* @G_0x882424 to i32*), align 8
  %3322 = add i32 %3321, -1
  store i32 %3322, i32* bitcast (%G_0x882424_type* @G_0x882424 to i32*), align 8
  store i32 0, i32* bitcast (%G_0x62e4fc_type* @G_0x62e4fc to i32*), align 8
  %3323 = load i32, i32* bitcast (%G_0x866364_type* @G_0x866364 to i32*), align 8
  store i32 %3323, i32* bitcast (%G_0x866358_type* @G_0x866358 to i32*), align 8
  store i32 0, i32* bitcast (%G_0x866364_type* @G_0x866364 to i32*), align 8
  %3324 = sext i32 %3323 to i64
  store i64 %3324, i64* %RCX.i1524, align 8
  %3325 = shl nsw i64 %3324, 2
  %3326 = add nsw i64 %3325, 8778480
  %3327 = add i64 %3318, 111
  store i64 %3327, i64* %3, align 8
  %3328 = inttoptr i64 %3326 to i32*
  store i32 26, i32* %3328, align 4
  %3329 = load i64, i64* %3, align 8
  %3330 = load i32, i32* bitcast (%G_0x8a1ab4_type* @G_0x8a1ab4 to i32*), align 8
  %3331 = load i32, i32* bitcast (%G_0x633b40_type* @G_0x633b40 to i32*), align 8
  %3332 = xor i32 %3331, %3330
  %3333 = load i32, i32* bitcast (%G_0x8a1aa8_type* @G_0x8a1aa8 to i32*), align 8
  %3334 = xor i32 %3332, %3333
  %3335 = zext i32 %3334 to i64
  store i64 %3335, i64* %RAX.i1536, align 8
  store i8 0, i8* %14, align 1
  %3336 = and i32 %3334, 255
  %3337 = tail call i32 @llvm.ctpop.i32(i32 %3336)
  %3338 = trunc i32 %3337 to i8
  %3339 = and i8 %3338, 1
  %3340 = xor i8 %3339, 1
  store i8 %3340, i8* %21, align 1
  %3341 = icmp eq i32 %3334, 0
  %3342 = zext i1 %3341 to i8
  store i8 %3342, i8* %29, align 1
  %3343 = lshr i32 %3334, 31
  %3344 = trunc i32 %3343 to i8
  store i8 %3344, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %3345 = add i64 %3329, 42
  store i64 %3345, i64* %3, align 8
  store i32 %3334, i32* bitcast (%G_0x633b40_type* @G_0x633b40 to i32*), align 8
  %3346 = add i64 %3329, 561
  br label %block_.L_40d604

block_.L_40d402:                                  ; preds = %block_.L_40d35a
  %3347 = add i64 %3318, 514
  br label %block_.L_40d604

block_.L_40d40c:                                  ; preds = %block_.L_40d20c
  store i32 %3104, i32* bitcast (%G_0x8661d0_type* @G_0x8661d0 to i32*), align 8
  %3348 = add i64 %1084, -28
  %3349 = add i64 %3100, 13
  store i64 %3349, i64* %3, align 8
  %3350 = inttoptr i64 %3348 to i32*
  %3351 = load i32, i32* %3350, align 4
  %3352 = zext i32 %3351 to i64
  store i64 %3352, i64* %RAX.i1536, align 8
  %3353 = add i64 %3100, 17
  store i64 %3353, i64* %3, align 8
  %3354 = load i32, i32* %1087, align 4
  %3355 = sext i32 %3354 to i64
  store i64 %3355, i64* %RCX.i1524, align 8
  %3356 = shl nsw i64 %3355, 2
  %3357 = add nsw i64 %3356, 8807744
  %3358 = add i64 %3100, 24
  store i64 %3358, i64* %3, align 8
  %3359 = inttoptr i64 %3357 to i32*
  store i32 %3351, i32* %3359, align 4
  %3360 = load i64, i64* %RBP.i, align 8
  %3361 = add i64 %3360, -20
  %3362 = load i64, i64* %3, align 8
  %3363 = add i64 %3362, 4
  store i64 %3363, i64* %3, align 8
  %3364 = inttoptr i64 %3361 to i32*
  %3365 = load i32, i32* %3364, align 4
  %3366 = sext i32 %3365 to i64
  store i64 %3366, i64* %RCX.i1524, align 8
  %3367 = shl nsw i64 %3366, 2
  %3368 = add nsw i64 %3367, 8807744
  %3369 = add i64 %3362, 15
  store i64 %3369, i64* %3, align 8
  %3370 = inttoptr i64 %3368 to i32*
  store i32 6, i32* %3370, align 4
  %3371 = load i64, i64* %RBP.i, align 8
  %3372 = add i64 %3371, -24
  %3373 = load i64, i64* %3, align 8
  %3374 = add i64 %3373, 4
  store i64 %3374, i64* %3, align 8
  %3375 = inttoptr i64 %3372 to i32*
  %3376 = load i32, i32* %3375, align 4
  %3377 = sext i32 %3376 to i64
  store i64 %3377, i64* %RCX.i1524, align 8
  %3378 = shl nsw i64 %3377, 2
  %3379 = add nsw i64 %3378, 8922032
  %3380 = add i64 %3373, 11
  store i64 %3380, i64* %3, align 8
  %3381 = inttoptr i64 %3379 to i32*
  %3382 = load i32, i32* %3381, align 4
  %3383 = add i32 %3382, -1
  %3384 = zext i32 %3383 to i64
  store i64 %3384, i64* %RAX.i1536, align 8
  %3385 = icmp ne i32 %3382, 0
  %3386 = zext i1 %3385 to i8
  store i8 %3386, i8* %14, align 1
  %3387 = and i32 %3383, 255
  %3388 = tail call i32 @llvm.ctpop.i32(i32 %3387)
  %3389 = trunc i32 %3388 to i8
  %3390 = and i8 %3389, 1
  %3391 = xor i8 %3390, 1
  store i8 %3391, i8* %21, align 1
  %3392 = xor i32 %3382, 16
  %3393 = xor i32 %3392, %3383
  %3394 = lshr i32 %3393, 4
  %3395 = trunc i32 %3394 to i8
  %3396 = and i8 %3395, 1
  store i8 %3396, i8* %26, align 1
  %3397 = icmp eq i32 %3383, 0
  %3398 = zext i1 %3397 to i8
  store i8 %3398, i8* %29, align 1
  %3399 = lshr i32 %3383, 31
  %3400 = trunc i32 %3399 to i8
  store i8 %3400, i8* %32, align 1
  %3401 = lshr i32 %3382, 31
  %3402 = xor i32 %3399, %3401
  %3403 = xor i32 %3399, 1
  %3404 = add nuw nsw i32 %3402, %3403
  %3405 = icmp eq i32 %3404, 2
  %3406 = zext i1 %3405 to i8
  store i8 %3406, i8* %38, align 1
  %3407 = add i64 %3373, 21
  store i64 %3407, i64* %3, align 8
  store i32 %3383, i32* %3381, align 4
  %3408 = load i64, i64* %RBP.i, align 8
  %3409 = add i64 %3408, -20
  %3410 = load i64, i64* %3, align 8
  %3411 = add i64 %3410, 4
  store i64 %3411, i64* %3, align 8
  %3412 = inttoptr i64 %3409 to i32*
  %3413 = load i32, i32* %3412, align 4
  %3414 = sext i32 %3413 to i64
  store i64 %3414, i64* %RCX.i1524, align 8
  %3415 = shl nsw i64 %3414, 2
  %3416 = add nsw i64 %3415, 8922032
  %3417 = add i64 %3410, 11
  store i64 %3417, i64* %3, align 8
  %3418 = inttoptr i64 %3416 to i32*
  %3419 = load i32, i32* %3418, align 4
  %3420 = add i32 %3419, -1
  %3421 = add i64 %3410, 21
  store i64 %3421, i64* %3, align 8
  store i32 %3420, i32* %3418, align 4
  %3422 = load i64, i64* %3, align 8
  %3423 = load i32, i32* bitcast (%G_0x8661bc_type* @G_0x8661bc to i32*), align 8
  %3424 = xor i32 %3423, 1
  %3425 = zext i32 %3424 to i64
  store i64 %3425, i64* %RAX.i1536, align 8
  store i8 0, i8* %14, align 1
  %3426 = and i32 %3424, 255
  %3427 = tail call i32 @llvm.ctpop.i32(i32 %3426)
  %3428 = trunc i32 %3427 to i8
  %3429 = and i8 %3428, 1
  %3430 = xor i8 %3429, 1
  store i8 %3430, i8* %21, align 1
  %3431 = icmp eq i32 %3424, 0
  %3432 = zext i1 %3431 to i8
  store i8 %3432, i8* %29, align 1
  %3433 = lshr i32 %3423, 31
  %3434 = trunc i32 %3433 to i8
  store i8 %3434, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i32 %3424, i32* bitcast (%G_0x8661bc_type* @G_0x8661bc to i32*), align 8
  %3435 = load i64, i64* %RBP.i, align 8
  %3436 = add i64 %3435, -20
  %3437 = add i64 %3422, 21
  store i64 %3437, i64* %3, align 8
  %3438 = inttoptr i64 %3436 to i32*
  %3439 = load i32, i32* %3438, align 4
  %3440 = sext i32 %3439 to i64
  store i64 %3440, i64* %RCX.i1524, align 8
  %3441 = shl nsw i64 %3440, 2
  %3442 = add nsw i64 %3441, 9050112
  %3443 = add i64 %3422, 28
  store i64 %3443, i64* %3, align 8
  %3444 = inttoptr i64 %3442 to i32*
  %3445 = load i32, i32* %3444, align 4
  %3446 = load i32, i32* bitcast (%G_0x633b40_type* @G_0x633b40 to i32*), align 8
  %3447 = xor i32 %3446, %3445
  %3448 = zext i32 %3447 to i64
  store i64 %3448, i64* %RAX.i1536, align 8
  store i8 0, i8* %14, align 1
  %3449 = and i32 %3447, 255
  %3450 = tail call i32 @llvm.ctpop.i32(i32 %3449)
  %3451 = trunc i32 %3450 to i8
  %3452 = and i8 %3451, 1
  %3453 = xor i8 %3452, 1
  store i8 %3453, i8* %21, align 1
  %3454 = icmp eq i32 %3447, 0
  %3455 = zext i1 %3454 to i8
  store i8 %3455, i8* %29, align 1
  %3456 = lshr i32 %3447, 31
  %3457 = trunc i32 %3456 to i8
  store i8 %3457, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i32 %3447, i32* bitcast (%G_0x633b40_type* @G_0x633b40 to i32*), align 8
  %3458 = add i64 %3435, -24
  %3459 = add i64 %3422, 46
  store i64 %3459, i64* %3, align 8
  %3460 = inttoptr i64 %3458 to i32*
  %3461 = load i32, i32* %3460, align 4
  %3462 = sext i32 %3461 to i64
  store i64 %3462, i64* %RCX.i1524, align 8
  %3463 = shl nsw i64 %3462, 2
  %3464 = add nsw i64 %3463, 9050112
  %3465 = add i64 %3422, 53
  store i64 %3465, i64* %3, align 8
  %3466 = inttoptr i64 %3464 to i32*
  %3467 = load i32, i32* %3466, align 4
  %3468 = xor i32 %3447, %3467
  %3469 = zext i32 %3468 to i64
  store i64 %3469, i64* %RAX.i1536, align 8
  store i8 0, i8* %14, align 1
  %3470 = and i32 %3468, 255
  %3471 = tail call i32 @llvm.ctpop.i32(i32 %3470)
  %3472 = trunc i32 %3471 to i8
  %3473 = and i8 %3472, 1
  %3474 = xor i8 %3473, 1
  store i8 %3474, i8* %21, align 1
  %3475 = icmp eq i32 %3468, 0
  %3476 = zext i1 %3475 to i8
  store i8 %3476, i8* %29, align 1
  %3477 = lshr i32 %3468, 31
  %3478 = trunc i32 %3477 to i8
  store i8 %3478, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i32 %3468, i32* bitcast (%G_0x633b40_type* @G_0x633b40 to i32*), align 8
  %3479 = add i64 %3435, -36
  %3480 = add i64 %3422, 71
  store i64 %3480, i64* %3, align 8
  %3481 = inttoptr i64 %3479 to i32*
  %3482 = load i32, i32* %3481, align 4
  %3483 = add i32 %3482, -3
  %3484 = icmp ult i32 %3482, 3
  %3485 = zext i1 %3484 to i8
  store i8 %3485, i8* %14, align 1
  %3486 = and i32 %3483, 255
  %3487 = tail call i32 @llvm.ctpop.i32(i32 %3486)
  %3488 = trunc i32 %3487 to i8
  %3489 = and i8 %3488, 1
  %3490 = xor i8 %3489, 1
  store i8 %3490, i8* %21, align 1
  %3491 = xor i32 %3483, %3482
  %3492 = lshr i32 %3491, 4
  %3493 = trunc i32 %3492 to i8
  %3494 = and i8 %3493, 1
  store i8 %3494, i8* %26, align 1
  %3495 = icmp eq i32 %3483, 0
  %3496 = zext i1 %3495 to i8
  store i8 %3496, i8* %29, align 1
  %3497 = lshr i32 %3483, 31
  %3498 = trunc i32 %3497 to i8
  store i8 %3498, i8* %32, align 1
  %3499 = lshr i32 %3482, 31
  %3500 = xor i32 %3497, %3499
  %3501 = add nuw nsw i32 %3500, %3499
  %3502 = icmp eq i32 %3501, 2
  %3503 = zext i1 %3502 to i8
  store i8 %3503, i8* %38, align 1
  %.v43 = select i1 %3495, i64 77, i64 235
  %3504 = add i64 %3422, %.v43
  store i64 %3504, i64* %3, align 8
  br i1 %3495, label %block_40d4aa, label %block_.L_40d548

block_40d4aa:                                     ; preds = %block_.L_40d40c
  store i32 8, i32* bitcast (%G_0x866714_type* @G_0x866714 to i32*), align 8
  store i32 13, i32* bitcast (%G_0x86670c_type* @G_0x86670c to i32*), align 8
  %3505 = load i32, i32* bitcast (%G_0x882584_type* @G_0x882584 to i32*), align 8
  %3506 = add i32 %3505, -1
  store i32 %3506, i32* bitcast (%G_0x882584_type* @G_0x882584 to i32*), align 8
  %3507 = load i32, i32* bitcast (%G_0x88257c_type* @G_0x88257c to i32*), align 8
  %3508 = add i32 %3507, -1
  store i32 %3508, i32* bitcast (%G_0x88257c_type* @G_0x88257c to i32*), align 8
  store i32 0, i32* bitcast (%G_0x62e500_type* @G_0x62e500 to i32*), align 8
  %3509 = load i32, i32* bitcast (%G_0x8664bc_type* @G_0x8664bc to i32*), align 8
  store i32 %3509, i32* bitcast (%G_0x8664c4_type* @G_0x8664c4 to i32*), align 8
  store i32 0, i32* bitcast (%G_0x8664bc_type* @G_0x8664bc to i32*), align 8
  %3510 = sext i32 %3509 to i64
  store i64 %3510, i64* %RCX.i1524, align 8
  %3511 = shl nsw i64 %3510, 2
  %3512 = add nsw i64 %3511, 8778480
  %3513 = add i64 %3504, 111
  store i64 %3513, i64* %3, align 8
  %3514 = inttoptr i64 %3512 to i32*
  store i32 117, i32* %3514, align 4
  %3515 = load i64, i64* %3, align 8
  %3516 = load i32, i32* bitcast (%G_0x8a1e54_type* @G_0x8a1e54 to i32*), align 8
  %3517 = load i32, i32* bitcast (%G_0x633b40_type* @G_0x633b40 to i32*), align 8
  %3518 = xor i32 %3517, %3516
  %3519 = load i32, i32* bitcast (%G_0x8a1e4c_type* @G_0x8a1e4c to i32*), align 8
  %3520 = xor i32 %3518, %3519
  %3521 = zext i32 %3520 to i64
  store i64 %3521, i64* %RAX.i1536, align 8
  store i8 0, i8* %14, align 1
  %3522 = and i32 %3520, 255
  %3523 = tail call i32 @llvm.ctpop.i32(i32 %3522)
  %3524 = trunc i32 %3523 to i8
  %3525 = and i8 %3524, 1
  %3526 = xor i8 %3525, 1
  store i8 %3526, i8* %21, align 1
  %3527 = icmp eq i32 %3520, 0
  %3528 = zext i1 %3527 to i8
  store i8 %3528, i8* %29, align 1
  %3529 = lshr i32 %3520, 31
  %3530 = trunc i32 %3529 to i8
  store i8 %3530, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %3531 = add i64 %3515, 42
  store i64 %3531, i64* %3, align 8
  store i32 %3520, i32* bitcast (%G_0x633b40_type* @G_0x633b40 to i32*), align 8
  %3532 = add i64 %3515, 235
  br label %block_.L_40d604

block_.L_40d548:                                  ; preds = %block_.L_40d40c
  %3533 = load i64, i64* %RBP.i, align 8
  %3534 = add i64 %3533, -36
  %3535 = add i64 %3504, 4
  store i64 %3535, i64* %3, align 8
  %3536 = inttoptr i64 %3534 to i32*
  %3537 = load i32, i32* %3536, align 4
  %3538 = add i32 %3537, -4
  %3539 = icmp ult i32 %3537, 4
  %3540 = zext i1 %3539 to i8
  store i8 %3540, i8* %14, align 1
  %3541 = and i32 %3538, 255
  %3542 = tail call i32 @llvm.ctpop.i32(i32 %3541)
  %3543 = trunc i32 %3542 to i8
  %3544 = and i8 %3543, 1
  %3545 = xor i8 %3544, 1
  store i8 %3545, i8* %21, align 1
  %3546 = xor i32 %3538, %3537
  %3547 = lshr i32 %3546, 4
  %3548 = trunc i32 %3547 to i8
  %3549 = and i8 %3548, 1
  store i8 %3549, i8* %26, align 1
  %3550 = icmp eq i32 %3538, 0
  %3551 = zext i1 %3550 to i8
  store i8 %3551, i8* %29, align 1
  %3552 = lshr i32 %3538, 31
  %3553 = trunc i32 %3552 to i8
  store i8 %3553, i8* %32, align 1
  %3554 = lshr i32 %3537, 31
  %3555 = xor i32 %3552, %3554
  %3556 = add nuw nsw i32 %3555, %3554
  %3557 = icmp eq i32 %3556, 2
  %3558 = zext i1 %3557 to i8
  store i8 %3558, i8* %38, align 1
  %.v44 = select i1 %3550, i64 10, i64 168
  %3559 = add i64 %3504, %.v44
  store i64 %3559, i64* %3, align 8
  br i1 %3550, label %block_40d552, label %block_.L_40d5f0

block_40d552:                                     ; preds = %block_.L_40d548
  store i32 8, i32* bitcast (%G_0x8666f8_type* @G_0x8666f8 to i32*), align 8
  store i32 13, i32* bitcast (%G_0x866704_type* @G_0x866704 to i32*), align 8
  %3560 = load i32, i32* bitcast (%G_0x882568_type* @G_0x882568 to i32*), align 8
  %3561 = add i32 %3560, -1
  store i32 %3561, i32* bitcast (%G_0x882568_type* @G_0x882568 to i32*), align 8
  %3562 = load i32, i32* bitcast (%G_0x882574_type* @G_0x882574 to i32*), align 8
  %3563 = add i32 %3562, -1
  store i32 %3563, i32* bitcast (%G_0x882574_type* @G_0x882574 to i32*), align 8
  store i32 0, i32* bitcast (%G_0x62e500_type* @G_0x62e500 to i32*), align 8
  %3564 = load i32, i32* bitcast (%G_0x8664b4_type* @G_0x8664b4 to i32*), align 8
  store i32 %3564, i32* bitcast (%G_0x8664a8_type* @G_0x8664a8 to i32*), align 8
  store i32 0, i32* bitcast (%G_0x8664b4_type* @G_0x8664b4 to i32*), align 8
  %3565 = sext i32 %3564 to i64
  store i64 %3565, i64* %RCX.i1524, align 8
  %3566 = shl nsw i64 %3565, 2
  %3567 = add nsw i64 %3566, 8778480
  %3568 = add i64 %3559, 111
  store i64 %3568, i64* %3, align 8
  %3569 = inttoptr i64 %3567 to i32*
  store i32 110, i32* %3569, align 4
  %3570 = load i64, i64* %3, align 8
  %3571 = load i32, i32* bitcast (%G_0x8a1e38_type* @G_0x8a1e38 to i32*), align 8
  %3572 = load i32, i32* bitcast (%G_0x633b40_type* @G_0x633b40 to i32*), align 8
  %3573 = xor i32 %3572, %3571
  %3574 = load i32, i32* bitcast (%G_0x8a1e44_type* @G_0x8a1e44 to i32*), align 8
  %3575 = xor i32 %3573, %3574
  %3576 = zext i32 %3575 to i64
  store i64 %3576, i64* %RAX.i1536, align 8
  store i8 0, i8* %14, align 1
  %3577 = and i32 %3575, 255
  %3578 = tail call i32 @llvm.ctpop.i32(i32 %3577)
  %3579 = trunc i32 %3578 to i8
  %3580 = and i8 %3579, 1
  %3581 = xor i8 %3580, 1
  store i8 %3581, i8* %21, align 1
  %3582 = icmp eq i32 %3575, 0
  %3583 = zext i1 %3582 to i8
  store i8 %3583, i8* %29, align 1
  %3584 = lshr i32 %3575, 31
  %3585 = trunc i32 %3584 to i8
  store i8 %3585, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %3586 = add i64 %3570, 42
  store i64 %3586, i64* %3, align 8
  store i32 %3575, i32* bitcast (%G_0x633b40_type* @G_0x633b40 to i32*), align 8
  %3587 = add i64 %3570, 67
  br label %block_.L_40d604

block_.L_40d5f0:                                  ; preds = %block_.L_40d548
  %3588 = add i64 %3559, 20
  br label %block_.L_40d604

block_.L_40d604:                                  ; preds = %block_.L_40d5f0, %block_40d552, %block_40d4aa, %block_.L_40d402, %block_40d364, %block_40d2bc, %block_.L_40d139, %block_40d066, %block_40cf71, %block_.L_40ceb4, %block_40cd46, %block_.L_40cc9b, %block_40cb30, %block_40c886
  %.sink = phi i64 [ %3588, %block_.L_40d5f0 ], [ %3587, %block_40d552 ], [ %3532, %block_40d4aa ], [ %3347, %block_.L_40d402 ], [ %3346, %block_40d364 ], [ %3291, %block_40d2bc ], [ %3070, %block_.L_40d139 ], [ %2885, %block_40d066 ], [ %2607, %block_40cf71 ], [ %2312, %block_.L_40ceb4 ], [ %2182, %block_40cd46 ], [ %1699, %block_.L_40cc9b ], [ %1569, %block_40cb30 ], [ %638, %block_40c886 ]
  %MEMORY.6 = phi %struct.Memory* [ %MEMORY.4, %block_.L_40d5f0 ], [ %MEMORY.4, %block_40d552 ], [ %MEMORY.4, %block_40d4aa ], [ %MEMORY.4, %block_.L_40d402 ], [ %MEMORY.4, %block_40d364 ], [ %MEMORY.4, %block_40d2bc ], [ %2665, %block_.L_40d139 ], [ %2665, %block_40d066 ], [ %MEMORY.4, %block_40cf71 ], [ %MEMORY.4, %block_.L_40ceb4 ], [ %call2_40cdd3, %block_40cd46 ], [ %MEMORY.4, %block_.L_40cc9b ], [ %call2_40cbba, %block_40cb30 ], [ %call2_40c903, %block_40c886 ]
  %3589 = load i64, i64* %6, align 8
  %3590 = add i64 %3589, 64
  store i64 %3590, i64* %6, align 8
  %3591 = icmp ugt i64 %3589, -65
  %3592 = zext i1 %3591 to i8
  store i8 %3592, i8* %14, align 1
  %3593 = trunc i64 %3590 to i32
  %3594 = and i32 %3593, 255
  %3595 = tail call i32 @llvm.ctpop.i32(i32 %3594)
  %3596 = trunc i32 %3595 to i8
  %3597 = and i8 %3596, 1
  %3598 = xor i8 %3597, 1
  store i8 %3598, i8* %21, align 1
  %3599 = xor i64 %3590, %3589
  %3600 = lshr i64 %3599, 4
  %3601 = trunc i64 %3600 to i8
  %3602 = and i8 %3601, 1
  store i8 %3602, i8* %26, align 1
  %3603 = icmp eq i64 %3590, 0
  %3604 = zext i1 %3603 to i8
  store i8 %3604, i8* %29, align 1
  %3605 = lshr i64 %3590, 63
  %3606 = trunc i64 %3605 to i8
  store i8 %3606, i8* %32, align 1
  %3607 = lshr i64 %3589, 63
  %3608 = xor i64 %3605, %3607
  %3609 = add nuw nsw i64 %3608, %3605
  %3610 = icmp eq i64 %3609, 2
  %3611 = zext i1 %3610 to i8
  store i8 %3611, i8* %38, align 1
  %3612 = add i64 %.sink, 5
  store i64 %3612, i64* %3, align 8
  %3613 = add i64 %3589, 72
  %3614 = inttoptr i64 %3590 to i64*
  %3615 = load i64, i64* %3614, align 8
  store i64 %3615, i64* %RBP.i, align 8
  store i64 %3613, i64* %6, align 8
  %3616 = add i64 %.sink, 6
  store i64 %3616, i64* %3, align 8
  %3617 = inttoptr i64 %3613 to i64*
  %3618 = load i64, i64* %3617, align 8
  store i64 %3618, i64* %3, align 8
  %3619 = add i64 %3589, 80
  store i64 %3619, i64* %6, align 8
  ret %struct.Memory* %MEMORY.6
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_pushq__rbp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 1
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %3, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rsp___rbp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RBP, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subq__0x40___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -64
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 64
  %8 = zext i1 %7 to i8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8, i8* %9, align 1
  %10 = trunc i64 %6 to i32
  %11 = and i32 %10, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = xor i64 %6, %3
  %18 = lshr i64 %17, 4
  %19 = trunc i64 %18 to i8
  %20 = and i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %20, i8* %21, align 1
  %22 = icmp eq i64 %6, 0
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %23, i8* %24, align 1
  %25 = lshr i64 %6, 63
  %26 = trunc i64 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = lshr i64 %3, 63
  %29 = xor i64 %25, %28
  %30 = add nuw nsw i64 %29, %28
  %31 = icmp eq i64 %30, 2
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %32, i8* %33, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x880b20___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x880b20_type* @G__0x880b20 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdi__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x18___rcx___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 24
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RCX, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i128 %10 to i32
  %17 = and i32 %16, 248
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %24, align 1
  %25 = lshr i64 %11, 63
  %26 = trunc i64 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %14, i8* %28, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rcx___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %RDI, align 8
  %8 = icmp ult i64 %7, %3
  %9 = icmp ult i64 %7, %4
  %10 = or i1 %8, %9
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = trunc i64 %7 to i32
  %14 = and i32 %13, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1
  %20 = xor i64 %4, %3
  %21 = xor i64 %20, %7
  %22 = lshr i64 %21, 4
  %23 = trunc i64 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1
  %26 = icmp eq i64 %7, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1
  %29 = lshr i64 %7, 63
  %30 = trunc i64 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = lshr i64 %3, 63
  %33 = lshr i64 %4, 63
  %34 = xor i64 %29, %32
  %35 = xor i64 %29, %33
  %36 = add nuw nsw i64 %34, %35
  %37 = icmp eq i64 %36, 2
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %38, i8* %39, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x14__rdi____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = add i64 %3, 20
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0xc__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x18___rdi___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 24
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RDI, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i128 %10 to i32
  %17 = and i32 %16, 248
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %24, align 1
  %25 = lshr i64 %11, 63
  %26 = trunc i64 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %14, i8* %28, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rdi___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDI, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %RCX, align 8
  %8 = icmp ult i64 %7, %3
  %9 = icmp ult i64 %7, %4
  %10 = or i1 %8, %9
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = trunc i64 %7 to i32
  %14 = and i32 %13, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1
  %20 = xor i64 %4, %3
  %21 = xor i64 %20, %7
  %22 = lshr i64 %21, 4
  %23 = trunc i64 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1
  %26 = icmp eq i64 %7, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1
  %29 = lshr i64 %7, 63
  %30 = trunc i64 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = lshr i64 %3, 63
  %33 = lshr i64 %4, 63
  %34 = xor i64 %29, %32
  %35 = xor i64 %29, %33
  %36 = add nuw nsw i64 %34, %35
  %37 = icmp eq i64 %36, 2
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %38, i8* %39, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl___rcx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = bitcast i64* %RCX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x4__rcx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x8__rcx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -28
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xc__rcx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -32
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x10__rcx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -36
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x886bc0___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0xffffffff___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RSI, align 8
  %9 = icmp ne i32 %6, 0
  %10 = zext i1 %9 to i8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %10, i8* %11, align 1
  %12 = and i32 %7, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = xor i32 %6, 16
  %19 = xor i32 %18, %7
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %7, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %7, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %6, 31
  %31 = xor i32 %27, %30
  %32 = xor i32 %27, 1
  %33 = add nuw nsw i32 %31, %32
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__0x886bc0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ESI, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_0x886bc0___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %6 = sext i32 %5 to i64
  store i64 %6, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shlq__0x4___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 4
  store i64 %6, i64* %RCX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 60
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 240
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  store i8 %17, i8* %11, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %20 = icmp eq i64 %6, 0
  %21 = zext i1 %20 to i8
  store i8 %21, i8* %19, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %23 = lshr i64 %3, 59
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x8__rdi____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__0x881de4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ESI, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x881de4_type* @G_0x881de4 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rcx___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %RAX, align 8
  %8 = icmp ult i64 %7, %3
  %9 = icmp ult i64 %7, %4
  %10 = or i1 %8, %9
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = trunc i64 %7 to i32
  %14 = and i32 %13, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1
  %20 = xor i64 %4, %3
  %21 = xor i64 %20, %7
  %22 = lshr i64 %21, 4
  %23 = trunc i64 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1
  %26 = icmp eq i64 %7, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1
  %29 = lshr i64 %7, 63
  %30 = trunc i64 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = lshr i64 %3, 63
  %33 = lshr i64 %4, 63
  %34 = xor i64 %29, %32
  %35 = xor i64 %29, %33
  %36 = add nuw nsw i64 %34, %35
  %37 = icmp eq i64 %36, 2
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %38, i8* %39, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xc__rax____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__0x866790(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ESI, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x866790_type* @G_0x866790 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = and i32 %8, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %16, align 1
  %17 = icmp eq i32 %8, 0
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %18, i8* %19, align 1
  %20 = lshr i32 %8, 31
  %21 = trunc i32 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_40c977(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_xorl__eax___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2
  store i64 %4, i64* %PC, align 8
  store i64 0, i64* %RAX, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5, align 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 1, i8* %7, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 1, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x880b20___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x880b20_type* @G__0x880b20 to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x18__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_0x8662f0___rsi_4____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 8807152
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = sext i32 %9 to i64
  store i64 %10, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x85f2f0___rsi_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 8778480
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  store i32 0, i32* %8, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_0x886bc0___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %6 = sext i32 %5 to i64
  store i64 %6, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shlq__0x4___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 4
  store i64 %6, i64* %RSI, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 60
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 240
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  store i8 %17, i8* %11, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %20 = icmp eq i64 %6, 0
  %21 = zext i1 %20 to i8
  store i8 %21, i8* %19, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %23 = lshr i64 %3, 59
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rsi___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RSI, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %RDX, align 8
  %8 = icmp ult i64 %7, %3
  %9 = icmp ult i64 %7, %4
  %10 = or i1 %8, %9
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = trunc i64 %7 to i32
  %14 = and i32 %13, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1
  %20 = xor i64 %4, %3
  %21 = xor i64 %20, %7
  %22 = lshr i64 %21, 4
  %23 = trunc i64 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1
  %26 = icmp eq i64 %7, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1
  %29 = lshr i64 %7, 63
  %30 = trunc i64 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = lshr i64 %3, 63
  %33 = lshr i64 %4, 63
  %34 = xor i64 %29, %32
  %35 = xor i64 %29, %33
  %36 = add nuw nsw i64 %34, %35
  %37 = icmp eq i64 %36, 2
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %38, i8* %39, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x4__rdx____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_0x8662f0___rdx_4____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 8807152
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = sext i32 %9 to i64
  store i64 %10, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edi__0x639120___rdx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 6525216
  %7 = load i32, i32* %EDI, align 4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %6 to i32*
  store i32 %7, i32* %10, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x8662f0___rdx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 8807152
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  store i32 0, i32* %8, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x63ae48___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x63ae48_type* @G_0x63ae48 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0xffffffff___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDI, align 8
  %9 = icmp ne i32 %6, 0
  %10 = zext i1 %9 to i8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %10, i8* %11, align 1
  %12 = and i32 %7, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = xor i32 %6, 16
  %19 = xor i32 %18, %7
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %7, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %7, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %6, 31
  %31 = xor i32 %27, %30
  %32 = xor i32 %27, 1
  %33 = add nuw nsw i32 %31, %32
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edi__0x63ae48(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EDI, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x63ae48_type* @G_0x63ae48 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x20__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x8661bc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x8661bc_type* @G_0x8661bc to i32*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6, align 1
  %7 = and i32 %5, 255
  %8 = tail call i32 @llvm.ctpop.i32(i32 %7)
  %9 = trunc i32 %8 to i8
  %10 = and i8 %9, 1
  %11 = xor i8 %10, 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %11, i8* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %13, align 1
  %14 = icmp eq i32 %5, 0
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %15, i8* %16, align 1
  %17 = lshr i32 %5, 31
  %18 = trunc i32 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %18, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %20, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cmovnel__ecx___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %9 = load i8, i8* %8, align 1
  %10 = icmp eq i8 %9, 0
  %11 = load i64, i64* %RAX, align 8
  %12 = select i1 %10, i64 %5, i64 %11
  %13 = and i64 %12, 4294967295
  store i64 %13, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.DropaddHolding(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x8a0a80___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x8a0a80_type* @G__0x8a0a80 to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x20__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x62dab0___r8_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 6478512
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x8661c0___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x8661c0_type* @G_0x8661c0 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__eax___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i32, i32* %EAX, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %4 to i32
  %10 = sub i32 %9, %5
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RCX, align 8
  %12 = icmp ult i32 %9, %5
  %13 = zext i1 %12 to i8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %13, i8* %14, align 1
  %15 = and i32 %10, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i64 %6, %4
  %22 = trunc i64 %21 to i32
  %23 = xor i32 %22, %10
  %24 = lshr i32 %23, 4
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1
  %28 = icmp eq i32 %10, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %10, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %9, 31
  %35 = lshr i32 %5, 31
  %36 = xor i32 %35, %34
  %37 = xor i32 %31, %34
  %38 = add nuw nsw i32 %37, %36
  %39 = icmp eq i32 %38, 2
  %40 = zext i1 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %40, i8* %41, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__0x8661c0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x8661c0_type* @G_0x8661c0 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x18__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x866540___r8_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %R8, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 8807744
  %7 = load i32, i32* %EAX, align 4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 8
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %6 to i32*
  store i32 %7, i32* %10, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x240___r8___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 576
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %R8, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i128 %10 to i32
  %17 = and i32 %16, 192
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %24, align 1
  %25 = lshr i64 %11, 63
  %26 = trunc i64 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %14, i8* %28, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__r8___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %R8, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %RDX, align 8
  %8 = icmp ult i64 %7, %3
  %9 = icmp ult i64 %7, %4
  %10 = or i1 %8, %9
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = trunc i64 %7 to i32
  %14 = and i32 %13, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1
  %20 = xor i64 %4, %3
  %21 = xor i64 %20, %7
  %22 = lshr i64 %21, 4
  %23 = trunc i64 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1
  %26 = icmp eq i64 %7, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1
  %29 = lshr i64 %7, 63
  %30 = trunc i64 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = lshr i64 %3, 63
  %33 = lshr i64 %4, 63
  %34 = xor i64 %29, %32
  %35 = xor i64 %29, %33
  %36 = add nuw nsw i64 %34, %35
  %37 = icmp eq i64 %36, 2
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %38, i8* %39, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl___rdx__r8_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %R8, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_xorl_0x633b40___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = load i32, i32* bitcast (%G_0x633b40_type* @G_0x633b40 to i32*), align 8
  %8 = xor i32 %7, %6
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %10, align 1
  %11 = and i32 %8, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = icmp eq i32 %8, 0
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %18, i8* %19, align 1
  %20 = lshr i32 %8, 31
  %21 = trunc i32 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %24, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x633b40(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x633b40_type* @G_0x633b40 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x8661bc___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x8661bc_type* @G_0x8661bc to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_xorl__0x1___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = xor i64 %3, 1
  %7 = trunc i64 %6 to i32
  %8 = and i64 %6, 4294967295
  store i64 %8, i64* %RAX, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = and i32 %7, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = icmp eq i32 %7, 0
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %17, i8* %18, align 1
  %19 = lshr i32 %7, 31
  %20 = trunc i32 %19 to i8
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %20, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x8661bc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x8661bc_type* @G_0x8661bc to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40d604(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x8662f0___rcx_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 8807152
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x14__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__0x8662f0___rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 8807152
  %7 = load i32, i32* %EDX, align 4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %6 to i32*
  store i32 %7, i32* %10, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rcx___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %RSI, align 8
  %8 = icmp ult i64 %7, %3
  %9 = icmp ult i64 %7, %4
  %10 = or i1 %8, %9
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = trunc i64 %7 to i32
  %14 = and i32 %13, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1
  %20 = xor i64 %4, %3
  %21 = xor i64 %20, %7
  %22 = lshr i64 %21, 4
  %23 = trunc i64 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1
  %26 = icmp eq i64 %7, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1
  %29 = lshr i64 %7, 63
  %30 = trunc i64 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = lshr i64 %3, 63
  %33 = lshr i64 %4, 63
  %34 = xor i64 %29, %32
  %35 = xor i64 %29, %33
  %36 = add nuw nsw i64 %34, %35
  %37 = icmp eq i64 %36, 2
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %38, i8* %39, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl___rsi____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = bitcast i64* %RSI to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x18__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_0x8662f0___rcx_4____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 8807152
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = sext i32 %9 to i64
  store i64 %10, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__0x85f2f0___rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 8778480
  %7 = load i32, i32* %EDX, align 4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %6 to i32*
  store i32 %7, i32* %10, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x14__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x4__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x18__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_0x8662f0___rax_4____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 8807152
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = sext i32 %9 to i64
  store i64 %10, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__0x639120___rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 6525216
  %7 = load i32, i32* %EDX, align 4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %6 to i32*
  store i32 %7, i32* %10, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = and i32 %8, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %16, align 1
  %17 = icmp eq i32 %8, 0
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %18, i8* %19, align 1
  %20 = lshr i32 %8, 31
  %21 = trunc i32 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_40cb14(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0xd___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -13
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ult i32 %6, 13
  %10 = zext i1 %9 to i8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %10, i8* %11, align 1
  %12 = and i32 %7, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = xor i32 %7, %6
  %19 = lshr i32 %18, 4
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %21, i8* %22, align 1
  %23 = icmp eq i32 %7, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1
  %26 = lshr i32 %7, 31
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %6, 31
  %30 = xor i32 %26, %29
  %31 = add nuw nsw i32 %30, %29
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -40
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_40ca2a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40ca25(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40cb0f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1__0x85f154(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x85f154_type* @G_0x85f154 to i32*), align 8
  %6 = add i32 %5, -1
  %7 = icmp eq i32 %5, 0
  %8 = zext i1 %7 to i8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8, i8* %9, align 1
  %10 = and i32 %6, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = xor i32 %6, %5
  %17 = lshr i32 %16, 4
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %19, i8* %20, align 1
  %21 = icmp eq i32 %6, 0
  %22 = zext i1 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %22, i8* %23, align 1
  %24 = lshr i32 %6, 31
  %25 = trunc i32 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %5, 31
  %28 = xor i32 %24, %27
  %29 = add nuw nsw i32 %28, %27
  %30 = icmp eq i32 %29, 2
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %31, i8* %32, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_40ca46(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x85f154(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x85f154_type* @G_0x85f154 to i32*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6, align 1
  %7 = and i32 %5, 255
  %8 = tail call i32 @llvm.ctpop.i32(i32 %7)
  %9 = trunc i32 %8 to i8
  %10 = and i8 %9, 1
  %11 = xor i8 %10, 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %11, i8* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %13, align 1
  %14 = icmp eq i32 %5, 0
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %15, i8* %16, align 1
  %17 = lshr i32 %5, 31
  %18 = trunc i32 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %18, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %20, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_40cab8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x639120___rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 6525216
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %10, align 1
  %11 = and i32 %9, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %17, align 1
  %18 = icmp eq i32 %9, 0
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %19, i8* %20, align 1
  %21 = lshr i32 %9, 31
  %22 = trunc i32 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %24, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_40ca8c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x1c__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.SwitchPromoted(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_xorl__edi___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2
  store i64 %4, i64* %PC, align 8
  store i64 0, i64* %RDI, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5, align 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 1, i8* %7, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cmovnel__ecx___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %9 = load i8, i8* %8, align 1
  %10 = icmp eq i8 %9, 0
  %11 = load i64, i64* %RDI, align 8
  %12 = select i1 %10, i64 %5, i64 %11
  %13 = and i64 %12, 4294967295
  store i64 %13, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edi__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -44
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.removeHolding(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40cab3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.SwitchColor(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edi__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -48
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x30__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40cab8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x8a0a80___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x8a0a80_type* @G__0x8a0a80 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x240___rcx___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 576
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RCX, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i128 %10 to i32
  %17 = and i32 %16, 192
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %24, align 1
  %25 = lshr i64 %11, 63
  %26 = trunc i64 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %14, i8* %28, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl___rax__rcx_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_xorl_0x633b40___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = load i32, i32* bitcast (%G_0x633b40_type* @G_0x633b40 to i32*), align 8
  %8 = xor i32 %7, %6
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %10, align 1
  %11 = and i32 %8, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = icmp eq i32 %8, 0
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %18, i8* %19, align 1
  %20 = lshr i32 %8, 31
  %21 = trunc i32 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %24, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__0x633b40(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x633b40_type* @G_0x633b40 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x62dab0___rax_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 6478512
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_0x8661c0___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = load i32, i32* bitcast (%G_0x8661c0_type* @G_0x8661c0 to i32*), align 8
  %8 = add i32 %7, %6
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  %10 = icmp ult i32 %8, %6
  %11 = icmp ult i32 %8, %7
  %12 = or i1 %10, %11
  %13 = zext i1 %12 to i8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %13, i8* %14, align 1
  %15 = and i32 %8, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i32 %7, %6
  %22 = xor i32 %21, %8
  %23 = lshr i32 %22, 4
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i32 %8, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %8, 31
  %31 = trunc i32 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %6, 31
  %34 = lshr i32 %7, 31
  %35 = xor i32 %30, %33
  %36 = xor i32 %30, %34
  %37 = add nuw nsw i32 %35, %36
  %38 = icmp eq i32 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__0x8661c0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x8661c0_type* @G_0x8661c0 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x63ae48___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x63ae48_type* @G_0x63ae48 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x1___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDX, align 8
  %9 = icmp eq i32 %6, -1
  %10 = icmp eq i32 %7, 0
  %11 = or i1 %9, %10
  %12 = zext i1 %11 to i8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %12, i8* %13, align 1
  %14 = and i32 %7, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1
  %20 = xor i32 %7, %6
  %21 = lshr i32 %20, 4
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %23, i8* %24, align 1
  %25 = zext i1 %10 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %7, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %6, 31
  %31 = xor i32 %27, %30
  %32 = add nuw nsw i32 %31, %27
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__0x63ae48(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x63ae48_type* @G_0x63ae48 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40cb14(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1__0x866540___rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 8807744
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = add i32 %9, -1
  %11 = icmp eq i32 %9, 0
  %12 = zext i1 %11 to i8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %12, i8* %13, align 1
  %14 = and i32 %10, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1
  %20 = xor i32 %10, %9
  %21 = lshr i32 %20, 4
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %23, i8* %24, align 1
  %25 = icmp eq i32 %10, 0
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %10, 31
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %9, 31
  %32 = xor i32 %28, %31
  %33 = add nuw nsw i32 %32, %31
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_40cd2a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_40cc9b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 1, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_xorl__esi___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2
  store i64 %4, i64* %PC, align 8
  store i64 0, i64* %RSI, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5, align 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 1, i8* %7, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x8a0cc0___rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 9047232
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_xorl_0x633b40___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = load i32, i32* bitcast (%G_0x633b40_type* @G_0x633b40 to i32*), align 8
  %8 = xor i32 %7, %6
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %10, align 1
  %11 = and i32 %8, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = icmp eq i32 %8, 0
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %18, i8* %19, align 1
  %20 = lshr i32 %8, 31
  %21 = trunc i32 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %24, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__0x633b40(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x633b40_type* @G_0x633b40 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x14__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x18__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0xc___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -12
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  %9 = icmp ult i32 %6, 12
  %10 = zext i1 %9 to i8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %10, i8* %11, align 1
  %12 = and i32 %7, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = xor i32 %7, %6
  %19 = lshr i32 %18, 4
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %21, i8* %22, align 1
  %23 = icmp eq i32 %7, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1
  %26 = lshr i32 %7, 31
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %6, 31
  %30 = xor i32 %26, %29
  %31 = add nuw nsw i32 %30, %29
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq__ecx___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x8a0f00___rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 9047808
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xd__0x866540___rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 8807744
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  store i32 13, i32* %8, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__0x866540___rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 8807744
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  store i32 1, i32* %8, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x62dab8___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x62dab8_type* @G_0x62dab8 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_0x8661c0___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = load i32, i32* bitcast (%G_0x8661c0_type* @G_0x8661c0 to i32*), align 8
  %8 = add i32 %7, %6
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  %10 = icmp ult i32 %8, %6
  %11 = icmp ult i32 %8, %7
  %12 = or i1 %10, %11
  %13 = zext i1 %12 to i8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %13, i8* %14, align 1
  %15 = and i32 %8, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i32 %7, %6
  %22 = xor i32 %21, %8
  %23 = lshr i32 %22, 4
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i32 %8, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %8, 31
  %31 = trunc i32 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %6, 31
  %34 = lshr i32 %7, 31
  %35 = xor i32 %30, %33
  %36 = xor i32 %30, %34
  %37 = add nuw nsw i32 %35, %36
  %38 = icmp eq i32 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x63ae48___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x63ae48_type* @G_0x63ae48 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x1___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  %9 = icmp eq i32 %6, -1
  %10 = icmp eq i32 %7, 0
  %11 = or i1 %9, %10
  %12 = zext i1 %11 to i8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %12, i8* %13, align 1
  %14 = and i32 %7, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1
  %20 = xor i32 %7, %6
  %21 = lshr i32 %20, 4
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %23, i8* %24, align 1
  %25 = zext i1 %10 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %7, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %6, 31
  %31 = xor i32 %27, %30
  %32 = add nuw nsw i32 %31, %27
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__0x63ae48(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x63ae48_type* @G_0x63ae48 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x2__0x866540___rdx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 8807744
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  store i32 2, i32* %8, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x8823b0___rdx_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 8922032
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0xffffffff___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  %9 = icmp ne i32 %6, 0
  %10 = zext i1 %9 to i8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %10, i8* %11, align 1
  %12 = and i32 %7, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = xor i32 %6, 16
  %19 = xor i32 %18, %7
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %7, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %7, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %6, 31
  %31 = xor i32 %27, %30
  %32 = xor i32 %27, 1
  %33 = add nuw nsw i32 %31, %32
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__0x8823b0___rdx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 8922032
  %7 = load i32, i32* %ECX, align 4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %6 to i32*
  store i32 %7, i32* %10, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x8661bc___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x8661bc_type* @G_0x8661bc to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_xorl__0x1___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = xor i64 %3, 1
  %7 = trunc i64 %6 to i32
  %8 = and i64 %6, 4294967295
  store i64 %8, i64* %RCX, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = and i32 %7, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = icmp eq i32 %7, 0
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %17, i8* %18, align 1
  %19 = lshr i32 %7, 31
  %20 = trunc i32 %19 to i8
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %20, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__0x8661bc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x8661bc_type* @G_0x8661bc to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_0x886bc0___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %6 = sext i32 %5 to i64
  store i64 %6, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shlq__0x4___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 4
  store i64 %6, i64* %RDX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 60
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 240
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  store i8 %17, i8* %11, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %20 = icmp eq i64 %6, 0
  %21 = zext i1 %20 to i8
  store i8 %21, i8* %19, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %23 = lshr i64 %3, 59
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rdx___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %R8, align 8
  %8 = icmp ult i64 %7, %3
  %9 = icmp ult i64 %7, %4
  %10 = or i1 %8, %9
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = trunc i64 %7 to i32
  %14 = and i32 %13, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1
  %20 = xor i64 %4, %3
  %21 = xor i64 %20, %7
  %22 = lshr i64 %21, 4
  %23 = trunc i64 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1
  %26 = icmp eq i64 %7, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1
  %29 = lshr i64 %7, 63
  %30 = trunc i64 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = lshr i64 %3, 63
  %33 = lshr i64 %4, 63
  %34 = xor i64 %29, %32
  %35 = xor i64 %29, %33
  %36 = add nuw nsw i64 %34, %35
  %37 = icmp eq i64 %36, 2
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %38, i8* %39, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl___r8____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = bitcast i64* %R8 to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x18__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0xc___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -12
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RSI, align 8
  %9 = icmp ult i32 %6, 12
  %10 = zext i1 %9 to i8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %10, i8* %11, align 1
  %12 = and i32 %7, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = xor i32 %7, %6
  %19 = lshr i32 %18, 4
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %21, i8* %22, align 1
  %23 = icmp eq i32 %7, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1
  %26 = lshr i32 %7, 31
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %6, 31
  %30 = xor i32 %26, %29
  %31 = add nuw nsw i32 %30, %29
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq__esi___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %ESI, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__0x8662f0___rdx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 8807152
  %7 = load i32, i32* %ECX, align 4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %6 to i32*
  store i32 %7, i32* %10, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rdx___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %RAX, align 8
  %8 = icmp ult i64 %7, %3
  %9 = icmp ult i64 %7, %4
  %10 = or i1 %8, %9
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = trunc i64 %7 to i32
  %14 = and i32 %13, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1
  %20 = xor i64 %4, %3
  %21 = xor i64 %20, %7
  %22 = lshr i64 %21, 4
  %23 = trunc i64 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1
  %26 = icmp eq i64 %7, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1
  %29 = lshr i64 %7, 63
  %30 = trunc i64 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = lshr i64 %3, 63
  %33 = lshr i64 %4, 63
  %34 = xor i64 %29, %32
  %35 = xor i64 %29, %33
  %36 = add nuw nsw i64 %34, %35
  %37 = icmp eq i64 %36, 2
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %38, i8* %39, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq___rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = sext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__0x85f2f0___rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 8778480
  %7 = load i32, i32* %ECX, align 4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %6 to i32*
  store i32 %7, i32* %10, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x8662f0___rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 8807152
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  store i32 0, i32* %8, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__0x866540___rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 8807744
  %7 = load i32, i32* %ECX, align 4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %6 to i32*
  store i32 %7, i32* %10, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x8823b0___rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 8922032
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__0x8823b0___rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 8922032
  %7 = load i32, i32* %ECX, align 4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %6 to i32*
  store i32 %7, i32* %10, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x2__0x866540___rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 8807744
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = add i32 %9, -2
  %11 = icmp ult i32 %9, 2
  %12 = zext i1 %11 to i8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %12, i8* %13, align 1
  %14 = and i32 %10, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1
  %20 = xor i32 %10, %9
  %21 = lshr i32 %20, 4
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %23, i8* %24, align 1
  %25 = icmp eq i32 %10, 0
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %10, 31
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %9, 31
  %32 = xor i32 %28, %31
  %33 = add nuw nsw i32 %32, %31
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_40cf43(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_40ceb4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x2___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 2, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 1, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0xc___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 12
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  %9 = icmp ugt i32 %6, -13
  %10 = zext i1 %9 to i8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %10, i8* %11, align 1
  %12 = and i32 %7, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = xor i32 %7, %6
  %19 = lshr i32 %18, 4
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %21, i8* %22, align 1
  %23 = icmp eq i32 %7, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1
  %26 = lshr i32 %7, 31
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %6, 31
  %30 = xor i32 %26, %29
  %31 = add nuw nsw i32 %30, %26
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x2__0x866540___rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 8807744
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  store i32 2, i32* %8, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x62dab4___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x62dab4_type* @G_0x62dab4 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__0x866540___rdx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 8807744
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  store i32 1, i32* %8, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0xc___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 12
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RSI, align 8
  %9 = icmp ugt i32 %6, -13
  %10 = zext i1 %9 to i8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %10, i8* %11, align 1
  %12 = and i32 %7, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = xor i32 %7, %6
  %19 = lshr i32 %18, 4
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %21, i8* %22, align 1
  %23 = icmp eq i32 %7, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1
  %26 = lshr i32 %7, 31
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %6, 31
  %30 = xor i32 %26, %29
  %31 = add nuw nsw i32 %30, %26
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x5__0x866540___rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 8807744
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = add i32 %9, -5
  %11 = icmp ult i32 %9, 5
  %12 = zext i1 %11 to i8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %12, i8* %13, align 1
  %14 = and i32 %10, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1
  %20 = xor i32 %10, %9
  %21 = lshr i32 %20, 4
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %23, i8* %24, align 1
  %25 = icmp eq i32 %10, 0
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %10, 31
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %9, 31
  %32 = xor i32 %28, %31
  %33 = add nuw nsw i32 %32, %31
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_40d038(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x6__0x866540___rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 8807744
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = add i32 %9, -6
  %11 = icmp ult i32 %9, 6
  %12 = zext i1 %11 to i8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %12, i8* %13, align 1
  %14 = and i32 %10, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1
  %20 = xor i32 %10, %9
  %21 = lshr i32 %20, 4
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %23, i8* %24, align 1
  %25 = icmp eq i32 %10, 0
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %10, 31
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %9, 31
  %32 = xor i32 %28, %31
  %33 = add nuw nsw i32 %32, %31
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = and i32 %8, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %16, align 1
  %17 = icmp eq i32 %8, 0
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %18, i8* %19, align 1
  %20 = lshr i32 %8, 31
  %21 = trunc i32 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_40d038(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x866540___rcx_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 8807744
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__0x866540___rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 8807744
  %7 = load i32, i32* %EDX, align 4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %6 to i32*
  store i32 %7, i32* %10, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x1c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x8823b0___rcx_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 8922032
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0xffffffff___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDX, align 8
  %9 = icmp ne i32 %6, 0
  %10 = zext i1 %9 to i8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %10, i8* %11, align 1
  %12 = and i32 %7, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = xor i32 %6, 16
  %19 = xor i32 %18, %7
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %7, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %7, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %6, 31
  %31 = xor i32 %27, %30
  %32 = xor i32 %27, 1
  %33 = add nuw nsw i32 %31, %32
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__0x8823b0___rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 8922032
  %7 = load i32, i32* %EDX, align 4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %6 to i32*
  store i32 %7, i32* %10, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x8661bc___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x8661bc_type* @G_0x8661bc to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_xorl__0x1___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = xor i64 %3, 1
  %7 = trunc i64 %6 to i32
  %8 = and i64 %6, 4294967295
  store i64 %8, i64* %RDX, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = and i32 %7, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = icmp eq i32 %7, 0
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %17, i8* %18, align 1
  %19 = lshr i32 %7, 31
  %20 = trunc i32 %19 to i8
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %20, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__0x8661bc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x8661bc_type* @G_0x8661bc to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_0x866540___rcx_4____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 8807744
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = sext i32 %9 to i64
  store i64 %10, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl___rsi__rcx_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_40d20c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x2___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 2, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x34__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -52
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cltd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 1
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %7 = bitcast %union.anon* %6 to i32*
  %8 = load i32, i32* %7, align 8
  %9 = sext i32 %8 to i64
  %10 = lshr i64 %9, 32
  store i64 %10, i64* %5, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x34__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_idivl__esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ESI, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %8 = bitcast %union.anon* %7 to i32*
  %9 = load i32, i32* %8, align 8
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %12 = bitcast %union.anon* %11 to i32*
  %13 = load i32, i32* %12, align 8
  %14 = zext i32 %13 to i64
  %15 = sext i32 %4 to i64
  %16 = shl nuw i64 %14, 32
  %17 = or i64 %16, %10
  %18 = sdiv i64 %17, %15
  %19 = shl i64 %18, 32
  %20 = ashr exact i64 %19, 32
  %21 = icmp eq i64 %18, %20
  br i1 %21, label %24, label %22

; <label>:22:                                     ; preds = %block_400488
  %23 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %6, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:24:                                     ; preds = %block_400488
  %25 = srem i64 %17, %15
  %26 = getelementptr inbounds %union.anon, %union.anon* %7, i64 0, i32 0
  %27 = and i64 %18, 4294967295
  store i64 %27, i64* %26, align 8
  %28 = getelementptr inbounds %union.anon, %union.anon* %11, i64 0, i32 0
  %29 = and i64 %25, 4294967295
  store i64 %29, i64* %28, align 8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %30, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %32, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %35, align 1
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %24, %22
  %36 = phi %struct.Memory* [ %23, %22 ], [ %2, %24 ]
  ret %struct.Memory* %36
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7, align 1
  %8 = and i32 %4, 255
  %9 = tail call i32 @llvm.ctpop.i32(i32 %8)
  %10 = trunc i32 %9 to i8
  %11 = and i8 %10, 1
  %12 = xor i8 %11, 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %12, i8* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %14, align 1
  %15 = icmp eq i32 %4, 0
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %16, i8* %17, align 1
  %18 = lshr i32 %4, 31
  %19 = trunc i32 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %19, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %21, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_40d139(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__0x866540___rdx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 8807744
  %7 = load i32, i32* %ECX, align 4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %6 to i32*
  store i32 %7, i32* %10, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x8a0cc0___rdx_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 9047232
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x240___rdx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 576
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RDX, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i128 %10 to i32
  %17 = and i32 %16, 192
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %24, align 1
  %25 = lshr i64 %11, 63
  %26 = trunc i64 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %14, i8* %28, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl___rax__rdx_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x20__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x62dab0___rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 6478512
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x8661c0___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x8661c0_type* @G_0x8661c0 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__ecx___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RSI, align 8
  %5 = load i32, i32* %ECX, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %4 to i32
  %10 = sub i32 %9, %5
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RSI, align 8
  %12 = icmp ult i32 %9, %5
  %13 = zext i1 %12 to i8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %13, i8* %14, align 1
  %15 = and i32 %10, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i64 %6, %4
  %22 = trunc i64 %21 to i32
  %23 = xor i32 %22, %10
  %24 = lshr i32 %23, 4
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1
  %28 = icmp eq i32 %10, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %10, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %9, 31
  %35 = lshr i32 %5, 31
  %36 = xor i32 %35, %34
  %37 = xor i32 %31, %34
  %38 = add nuw nsw i32 %37, %36
  %39 = icmp eq i32 %38, 2
  %40 = zext i1 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %40, i8* %41, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__0x8661c0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ESI, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x8661c0_type* @G_0x8661c0 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x8a0f00___rdx_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 9047808
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_40d40c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x86bd7c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x86bd7c_type* @G_0x86bd7c to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x866540___rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 8807744
  %7 = load i32, i32* %EAX, align 4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %6 to i32*
  store i32 %7, i32* %10, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x5__0x866540___rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 8807744
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  store i32 5, i32* %8, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x8823b0___rcx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 8922032
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0xffffffff___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ne i32 %6, 0
  %10 = zext i1 %9 to i8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %10, i8* %11, align 1
  %12 = and i32 %7, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = xor i32 %6, 16
  %19 = xor i32 %18, %7
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %7, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %7, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %6, 31
  %31 = xor i32 %27, %30
  %32 = xor i32 %27, 1
  %33 = add nuw nsw i32 %31, %32
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x8823b0___rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 8922032
  %7 = load i32, i32* %EAX, align 4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %6 to i32*
  store i32 %7, i32* %10, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x8a15c0___rcx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 9049536
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -1
  %10 = icmp eq i32 %8, 0
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = and i32 %9, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = xor i32 %9, %8
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %9, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %9, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %8, 31
  %31 = xor i32 %27, %30
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_40d35a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x7__0x8665c4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 7, i32* bitcast (%G_0x8665c4_type* @G_0x8665c4 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xd__0x8665bc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 13, i32* bitcast (%G_0x8665bc_type* @G_0x8665bc to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x882434___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x882434_type* @G_0x882434 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x882434(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x882434_type* @G_0x882434 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x88242c___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x88242c_type* @G_0x88242c to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x88242c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x88242c_type* @G_0x88242c to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x62e4fc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* bitcast (%G_0x62e4fc_type* @G_0x62e4fc to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x86636c___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x86636c_type* @G_0x86636c to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x866374(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x866374_type* @G_0x866374 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x86636c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* bitcast (%G_0x86636c_type* @G_0x86636c to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_0x866374___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x866374_type* @G_0x866374 to i32*), align 8
  %6 = sext i32 %5 to i64
  store i64 %6, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x21__0x85f2f0___rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 8778480
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  store i32 33, i32* %8, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x8a1ac4___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x8a1ac4_type* @G_0x8a1ac4 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x8a1abc___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x8a1abc_type* @G_0x8a1abc to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x2__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -2
  %10 = icmp ult i32 %8, 2
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = and i32 %9, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = xor i32 %9, %8
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %9, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %9, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %8, 31
  %31 = xor i32 %27, %30
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_40d402(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x7__0x8665a8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 7, i32* bitcast (%G_0x8665a8_type* @G_0x8665a8 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xd__0x8665b4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 13, i32* bitcast (%G_0x8665b4_type* @G_0x8665b4 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x882418___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x882418_type* @G_0x882418 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x882418(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x882418_type* @G_0x882418 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x882424___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x882424_type* @G_0x882424 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x882424(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x882424_type* @G_0x882424 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x866364___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x866364_type* @G_0x866364 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x866358(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x866358_type* @G_0x866358 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x866364(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* bitcast (%G_0x866364_type* @G_0x866364 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_0x866358___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x866358_type* @G_0x866358 to i32*), align 8
  %6 = sext i32 %5 to i64
  store i64 %6, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1a__0x85f2f0___rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 8778480
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  store i32 26, i32* %8, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x8a1ab4___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x8a1ab4_type* @G_0x8a1ab4 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x8a1aa8___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x8a1aa8_type* @G_0x8a1aa8 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40d407(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x8661d0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x8661d0_type* @G_0x8661d0 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x6__0x866540___rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 8807744
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  store i32 6, i32* %8, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x8a1800___rcx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 9050112
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x3__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -3
  %10 = icmp ult i32 %8, 3
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = and i32 %9, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = xor i32 %9, %8
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %9, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %9, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %8, 31
  %31 = xor i32 %27, %30
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_40d548(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x8__0x866714(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 8, i32* bitcast (%G_0x866714_type* @G_0x866714 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xd__0x86670c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 13, i32* bitcast (%G_0x86670c_type* @G_0x86670c to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x882584___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x882584_type* @G_0x882584 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x882584(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x882584_type* @G_0x882584 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x88257c___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x88257c_type* @G_0x88257c to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x88257c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x88257c_type* @G_0x88257c to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x62e500(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* bitcast (%G_0x62e500_type* @G_0x62e500 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x8664bc___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x8664bc_type* @G_0x8664bc to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x8664c4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x8664c4_type* @G_0x8664c4 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x8664bc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* bitcast (%G_0x8664bc_type* @G_0x8664bc to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_0x8664c4___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x8664c4_type* @G_0x8664c4 to i32*), align 8
  %6 = sext i32 %5 to i64
  store i64 %6, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x75__0x85f2f0___rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 8778480
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  store i32 117, i32* %8, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x8a1e54___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x8a1e54_type* @G_0x8a1e54 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x8a1e4c___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x8a1e4c_type* @G_0x8a1e4c to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x4__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -4
  %10 = icmp ult i32 %8, 4
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = and i32 %9, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = xor i32 %9, %8
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %9, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %9, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %8, 31
  %31 = xor i32 %27, %30
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_40d5f0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x8__0x8666f8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 8, i32* bitcast (%G_0x8666f8_type* @G_0x8666f8 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xd__0x866704(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 13, i32* bitcast (%G_0x866704_type* @G_0x866704 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x882568___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x882568_type* @G_0x882568 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x882568(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x882568_type* @G_0x882568 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x882574___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x882574_type* @G_0x882574 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x882574(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x882574_type* @G_0x882574 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x8664b4___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x8664b4_type* @G_0x8664b4 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x8664a8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x8664a8_type* @G_0x8664a8 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x8664b4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* bitcast (%G_0x8664b4_type* @G_0x8664b4 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_0x8664a8___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x8664a8_type* @G_0x8664a8 to i32*), align 8
  %6 = sext i32 %5 to i64
  store i64 %6, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x6e__0x85f2f0___rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 8778480
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  store i32 110, i32* %8, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x8a1e38___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x8a1e38_type* @G_0x8a1e38 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x8a1e44___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x8a1e44_type* @G_0x8a1e44 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40d5f5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40d5fa(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40d5ff(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x40___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 64
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -65
  %8 = zext i1 %7 to i8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8, i8* %9, align 1
  %10 = trunc i64 %6 to i32
  %11 = and i32 %10, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = xor i64 %6, %3
  %18 = lshr i64 %17, 4
  %19 = trunc i64 %18 to i8
  %20 = and i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %20, i8* %21, align 1
  %22 = icmp eq i64 %6, 0
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %23, i8* %24, align 1
  %25 = lshr i64 %6, 63
  %26 = trunc i64 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = lshr i64 %3, 63
  %29 = xor i64 %25, %28
  %30 = add nuw nsw i64 %29, %25
  %31 = icmp eq i64 %30, 2
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %32, i8* %33, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_popq__rbp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 1
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = add i64 %6, 8
  %8 = inttoptr i64 %6 to i64*
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %RBP, align 8
  store i64 %7, i64* %5, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_retq(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 1
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %PC, align 8
  %9 = add i64 %6, 8
  store i64 %9, i64* %5, align 8
  ret %struct.Memory* %2
}

attributes #0 = { nounwind readnone }
attributes #1 = { alwaysinline }
attributes #2 = { norecurse nounwind }
attributes #3 = { nounwind }
