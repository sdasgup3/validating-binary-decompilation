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

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare %struct.Memory* @sub_4027b0.DropremoveHolding(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4024b0.SwitchPromoted(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4024f0.addHolding(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_402470.SwitchColor(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @make(%struct.State* noalias, i64, %struct.Memory* noalias readnone) local_unnamed_addr #1 {
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
  %RAX.i1690 = getelementptr inbounds %union.anon, %union.anon* %39, i64 0, i32 0
  store i64 ptrtoint (%G__0x880b20_type* @G__0x880b20 to i64), i64* %RAX.i1690, align 8
  %RDI.i1687 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %40 = add i64 %7, -16
  %41 = load i64, i64* %RDI.i1687, align 8
  %42 = add i64 %10, 21
  store i64 %42, i64* %3, align 8
  %43 = inttoptr i64 %40 to i64*
  store i64 %41, i64* %43, align 8
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i1684 = bitcast %union.anon* %44 to i32*
  %45 = load i64, i64* %RBP.i, align 8
  %46 = add i64 %45, -12
  %47 = load i32, i32* %ESI.i1684, align 4
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
  store i64 %56, i64* %RDI.i1687, align 8
  %57 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i1678 = getelementptr inbounds %union.anon, %union.anon* %57, i64 0, i32 0
  %58 = add i64 %51, -12
  %59 = add i64 %53, 8
  store i64 %59, i64* %3, align 8
  %60 = inttoptr i64 %58 to i32*
  %61 = load i32, i32* %60, align 4
  %62 = sext i32 %61 to i64
  %63 = mul nsw i64 %62, 24
  store i64 %63, i64* %RCX.i1678, align 8
  %64 = lshr i64 %63, 63
  %65 = add i64 %63, %56
  store i64 %65, i64* %RDI.i1687, align 8
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
  %RSI.i1670 = getelementptr inbounds %union.anon, %union.anon* %44, i64 0, i32 0
  %91 = add i64 %65, 20
  %92 = add i64 %53, 18
  store i64 %92, i64* %3, align 8
  %93 = inttoptr i64 %91 to i32*
  %94 = load i32, i32* %93, align 4
  %95 = zext i32 %94 to i64
  store i64 %95, i64* %RSI.i1670, align 8
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
  store i64 %104, i64* %RCX.i1678, align 8
  %105 = add i64 %99, -12
  %106 = add i64 %101, 8
  store i64 %106, i64* %3, align 8
  %107 = inttoptr i64 %105 to i32*
  %108 = load i32, i32* %107, align 4
  %109 = sext i32 %108 to i64
  %110 = mul nsw i64 %109, 24
  store i64 %110, i64* %RDI.i1687, align 8
  %111 = lshr i64 %110, 63
  %112 = add i64 %110, %104
  store i64 %112, i64* %RCX.i1678, align 8
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
  store i64 %141, i64* %RSI.i1670, align 8
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
  store i64 %150, i64* %RCX.i1678, align 8
  %151 = add i64 %145, -12
  %152 = add i64 %147, 8
  store i64 %152, i64* %3, align 8
  %153 = inttoptr i64 %151 to i32*
  %154 = load i32, i32* %153, align 4
  %155 = sext i32 %154 to i64
  %156 = mul nsw i64 %155, 24
  store i64 %156, i64* %RDI.i1687, align 8
  %157 = lshr i64 %156, 63
  %158 = add i64 %156, %150
  store i64 %158, i64* %RCX.i1678, align 8
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
  store i64 %188, i64* %RSI.i1670, align 8
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
  store i64 %197, i64* %RCX.i1678, align 8
  %198 = add i64 %192, -12
  %199 = add i64 %194, 8
  store i64 %199, i64* %3, align 8
  %200 = inttoptr i64 %198 to i32*
  %201 = load i32, i32* %200, align 4
  %202 = sext i32 %201 to i64
  %203 = mul nsw i64 %202, 24
  store i64 %203, i64* %RDI.i1687, align 8
  %204 = lshr i64 %203, 63
  %205 = add i64 %203, %197
  store i64 %205, i64* %RCX.i1678, align 8
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
  store i64 %235, i64* %RSI.i1670, align 8
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
  store i64 %244, i64* %RCX.i1678, align 8
  %245 = add i64 %239, -12
  %246 = add i64 %241, 8
  store i64 %246, i64* %3, align 8
  %247 = inttoptr i64 %245 to i32*
  %248 = load i32, i32* %247, align 4
  %249 = sext i32 %248 to i64
  %250 = mul nsw i64 %249, 24
  store i64 %250, i64* %RDI.i1687, align 8
  %251 = lshr i64 %250, 63
  %252 = add i64 %250, %244
  store i64 %252, i64* %RCX.i1678, align 8
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
  store i64 %282, i64* %RSI.i1670, align 8
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
  store i64 %291, i64* %RCX.i1678, align 8
  %292 = add i64 %286, -12
  %293 = add i64 %288, 8
  store i64 %293, i64* %3, align 8
  %294 = inttoptr i64 %292 to i32*
  %295 = load i32, i32* %294, align 4
  %296 = sext i32 %295 to i64
  %297 = mul nsw i64 %296, 24
  store i64 %297, i64* %RDI.i1687, align 8
  %298 = lshr i64 %297, 63
  %299 = add i64 %297, %291
  store i64 %299, i64* %RCX.i1678, align 8
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
  %333 = load i32, i32* bitcast (%G_0x881de4_type* @G_0x881de4 to i32*), align 8
  %334 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %335 = sext i32 %334 to i64
  %336 = shl nsw i64 %335, 4
  %337 = load i64, i64* %RAX.i1690, align 8
  %338 = add i64 %336, %337
  store i64 %338, i64* %RDI.i1687, align 8
  %339 = add i64 %338, 8
  %340 = add i64 %332, 28
  store i64 %340, i64* %3, align 8
  %341 = inttoptr i64 %339 to i32*
  store i32 %333, i32* %341, align 4
  %342 = load i64, i64* %3, align 8
  store i32 0, i32* bitcast (%G_0x881de4_type* @G_0x881de4 to i32*), align 8
  %343 = load i32, i32* bitcast (%G_0x866790_type* @G_0x866790 to i32*), align 8
  %344 = zext i32 %343 to i64
  store i64 %344, i64* %RSI.i1670, align 8
  %345 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %346 = sext i32 %345 to i64
  %347 = shl nsw i64 %346, 4
  store i64 %347, i64* %RCX.i1678, align 8
  %348 = load i64, i64* %RAX.i1690, align 8
  %349 = add i64 %347, %348
  store i64 %349, i64* %RAX.i1690, align 8
  %350 = icmp ult i64 %349, %348
  %351 = icmp ult i64 %349, %347
  %352 = or i1 %350, %351
  %353 = zext i1 %352 to i8
  store i8 %353, i8* %14, align 1
  %354 = trunc i64 %349 to i32
  %355 = and i32 %354, 255
  %356 = tail call i32 @llvm.ctpop.i32(i32 %355)
  %357 = trunc i32 %356 to i8
  %358 = and i8 %357, 1
  %359 = xor i8 %358, 1
  store i8 %359, i8* %21, align 1
  %360 = xor i64 %347, %348
  %361 = xor i64 %360, %349
  %362 = lshr i64 %361, 4
  %363 = trunc i64 %362 to i8
  %364 = and i8 %363, 1
  store i8 %364, i8* %26, align 1
  %365 = icmp eq i64 %349, 0
  %366 = zext i1 %365 to i8
  store i8 %366, i8* %29, align 1
  %367 = lshr i64 %349, 63
  %368 = trunc i64 %367 to i8
  store i8 %368, i8* %32, align 1
  %369 = lshr i64 %348, 63
  %370 = lshr i64 %346, 59
  %371 = and i64 %370, 1
  %372 = xor i64 %367, %369
  %373 = xor i64 %367, %371
  %374 = add nuw nsw i64 %372, %373
  %375 = icmp eq i64 %374, 2
  %376 = zext i1 %375 to i8
  store i8 %376, i8* %38, align 1
  %377 = add i64 %349, 12
  %378 = add i64 %342, 36
  store i64 %378, i64* %3, align 8
  %379 = inttoptr i64 %377 to i32*
  store i32 %343, i32* %379, align 4
  %380 = load i64, i64* %RBP.i, align 8
  %381 = add i64 %380, -20
  %382 = load i64, i64* %3, align 8
  %383 = add i64 %382, 4
  store i64 %383, i64* %3, align 8
  %384 = inttoptr i64 %381 to i32*
  %385 = load i32, i32* %384, align 4
  %386 = sext i32 %385 to i64
  store i64 %386, i64* %RAX.i1690, align 8
  %387 = shl nsw i64 %386, 2
  %388 = add nsw i64 %387, 8807744
  %389 = add i64 %382, 12
  store i64 %389, i64* %3, align 8
  %390 = inttoptr i64 %388 to i32*
  %391 = load i32, i32* %390, align 4
  %392 = add i32 %391, -1
  %393 = icmp eq i32 %391, 0
  %394 = zext i1 %393 to i8
  store i8 %394, i8* %14, align 1
  %395 = and i32 %392, 255
  %396 = tail call i32 @llvm.ctpop.i32(i32 %395)
  %397 = trunc i32 %396 to i8
  %398 = and i8 %397, 1
  %399 = xor i8 %398, 1
  store i8 %399, i8* %21, align 1
  %400 = xor i32 %392, %391
  %401 = lshr i32 %400, 4
  %402 = trunc i32 %401 to i8
  %403 = and i8 %402, 1
  store i8 %403, i8* %26, align 1
  %404 = icmp eq i32 %392, 0
  %405 = zext i1 %404 to i8
  store i8 %405, i8* %29, align 1
  %406 = lshr i32 %392, 31
  %407 = trunc i32 %406 to i8
  store i8 %407, i8* %32, align 1
  %408 = lshr i32 %391, 31
  %409 = xor i32 %406, %408
  %410 = add nuw nsw i32 %409, %408
  %411 = icmp eq i32 %410, 2
  %412 = zext i1 %411 to i8
  store i8 %412, i8* %38, align 1
  %.v35 = select i1 %404, i64 54, i64 18
  %413 = add i64 %382, %.v35
  store i64 %413, i64* %3, align 8
  br i1 %404, label %block_.L_40b83c, label %block_40b818

block_40b818:                                     ; preds = %entry
  %414 = add i64 %413, 4
  store i64 %414, i64* %3, align 8
  %415 = load i32, i32* %384, align 4
  %416 = sext i32 %415 to i64
  store i64 %416, i64* %RAX.i1690, align 8
  %417 = shl nsw i64 %416, 2
  %418 = add nsw i64 %417, 8807744
  %419 = add i64 %413, 12
  store i64 %419, i64* %3, align 8
  %420 = inttoptr i64 %418 to i32*
  %421 = load i32, i32* %420, align 4
  %422 = add i32 %421, -2
  %423 = icmp ult i32 %421, 2
  %424 = zext i1 %423 to i8
  store i8 %424, i8* %14, align 1
  %425 = and i32 %422, 255
  %426 = tail call i32 @llvm.ctpop.i32(i32 %425)
  %427 = trunc i32 %426 to i8
  %428 = and i8 %427, 1
  %429 = xor i8 %428, 1
  store i8 %429, i8* %21, align 1
  %430 = xor i32 %422, %421
  %431 = lshr i32 %430, 4
  %432 = trunc i32 %431 to i8
  %433 = and i8 %432, 1
  store i8 %433, i8* %26, align 1
  %434 = icmp eq i32 %422, 0
  %435 = zext i1 %434 to i8
  store i8 %435, i8* %29, align 1
  %436 = lshr i32 %422, 31
  %437 = trunc i32 %436 to i8
  store i8 %437, i8* %32, align 1
  %438 = lshr i32 %421, 31
  %439 = xor i32 %436, %438
  %440 = add nuw nsw i32 %439, %438
  %441 = icmp eq i32 %440, 2
  %442 = zext i1 %441 to i8
  store i8 %442, i8* %38, align 1
  %.v36 = select i1 %434, i64 36, i64 18
  %443 = add i64 %413, %.v36
  store i64 %443, i64* %3, align 8
  br i1 %434, label %block_.L_40b83c, label %block_40b82a

block_40b82a:                                     ; preds = %block_40b818
  %444 = add i64 %380, -24
  %445 = add i64 %443, 4
  store i64 %445, i64* %3, align 8
  %446 = inttoptr i64 %444 to i32*
  %447 = load i32, i32* %446, align 4
  %448 = sext i32 %447 to i64
  store i64 %448, i64* %RAX.i1690, align 8
  %449 = shl nsw i64 %448, 2
  %450 = add nsw i64 %449, 8807744
  %451 = add i64 %443, 12
  store i64 %451, i64* %3, align 8
  %452 = inttoptr i64 %450 to i32*
  %453 = load i32, i32* %452, align 4
  %454 = add i32 %453, -13
  %455 = icmp ult i32 %453, 13
  %456 = zext i1 %455 to i8
  store i8 %456, i8* %14, align 1
  %457 = and i32 %454, 255
  %458 = tail call i32 @llvm.ctpop.i32(i32 %457)
  %459 = trunc i32 %458 to i8
  %460 = and i8 %459, 1
  %461 = xor i8 %460, 1
  store i8 %461, i8* %21, align 1
  %462 = xor i32 %454, %453
  %463 = lshr i32 %462, 4
  %464 = trunc i32 %463 to i8
  %465 = and i8 %464, 1
  store i8 %465, i8* %26, align 1
  %466 = icmp eq i32 %454, 0
  %467 = zext i1 %466 to i8
  store i8 %467, i8* %29, align 1
  %468 = lshr i32 %454, 31
  %469 = trunc i32 %468 to i8
  store i8 %469, i8* %32, align 1
  %470 = lshr i32 %453, 31
  %471 = xor i32 %468, %470
  %472 = add nuw nsw i32 %471, %470
  %473 = icmp eq i32 %472, 2
  %474 = zext i1 %473 to i8
  store i8 %474, i8* %38, align 1
  %.v37 = select i1 %466, i64 34, i64 18
  %475 = add i64 %443, %.v37
  store i64 %475, i64* %3, align 8
  br i1 %466, label %block_.L_40b84c, label %block_.L_40b83c

block_.L_40b83c:                                  ; preds = %block_40b82a, %block_40b818, %entry
  %476 = phi i64 [ %475, %block_40b82a ], [ %443, %block_40b818 ], [ %413, %entry ]
  store i32 0, i32* bitcast (%G_0x866790_type* @G_0x866790 to i32*), align 8
  %477 = add i64 %476, 33
  store i64 %477, i64* %3, align 8
  br label %block_.L_40b85d

block_.L_40b84c:                                  ; preds = %block_40b82a
  %478 = load i32, i32* bitcast (%G_0x866790_type* @G_0x866790 to i32*), align 8
  %479 = add i32 %478, 1
  %480 = zext i32 %479 to i64
  store i64 %480, i64* %RAX.i1690, align 8
  %481 = icmp eq i32 %478, -1
  %482 = icmp eq i32 %479, 0
  %483 = or i1 %481, %482
  %484 = zext i1 %483 to i8
  store i8 %484, i8* %14, align 1
  %485 = and i32 %479, 255
  %486 = tail call i32 @llvm.ctpop.i32(i32 %485)
  %487 = trunc i32 %486 to i8
  %488 = and i8 %487, 1
  %489 = xor i8 %488, 1
  store i8 %489, i8* %21, align 1
  %490 = xor i32 %479, %478
  %491 = lshr i32 %490, 4
  %492 = trunc i32 %491 to i8
  %493 = and i8 %492, 1
  store i8 %493, i8* %26, align 1
  %494 = zext i1 %482 to i8
  store i8 %494, i8* %29, align 1
  %495 = lshr i32 %479, 31
  %496 = trunc i32 %495 to i8
  store i8 %496, i8* %32, align 1
  %497 = lshr i32 %478, 31
  %498 = xor i32 %495, %497
  %499 = add nuw nsw i32 %498, %495
  %500 = icmp eq i32 %499, 2
  %501 = zext i1 %500 to i8
  store i8 %501, i8* %38, align 1
  %502 = add i64 %475, 17
  store i64 %502, i64* %3, align 8
  store i32 %479, i32* bitcast (%G_0x866790_type* @G_0x866790 to i32*), align 8
  br label %block_.L_40b85d

block_.L_40b85d:                                  ; preds = %block_.L_40b84c, %block_.L_40b83c
  %503 = phi i64 [ %502, %block_.L_40b84c ], [ %477, %block_.L_40b83c ]
  %504 = add i64 %503, 4
  store i64 %504, i64* %3, align 8
  %505 = load i32, i32* %384, align 4
  store i8 0, i8* %14, align 1
  %506 = and i32 %505, 255
  %507 = tail call i32 @llvm.ctpop.i32(i32 %506)
  %508 = trunc i32 %507 to i8
  %509 = and i8 %508, 1
  %510 = xor i8 %509, 1
  store i8 %510, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %511 = icmp eq i32 %505, 0
  %512 = zext i1 %511 to i8
  store i8 %512, i8* %29, align 1
  %513 = lshr i32 %505, 31
  %514 = trunc i32 %513 to i8
  store i8 %514, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v38 = select i1 %511, i64 10, i64 307
  %515 = add i64 %503, %.v38
  store i64 %515, i64* %3, align 8
  br i1 %511, label %block_40b867, label %block_.L_40b990

block_40b867:                                     ; preds = %block_.L_40b85d
  %516 = load i32, i32* bitcast (%G_0x63ae48_type* @G_0x63ae48 to i32*), align 8
  %517 = add i32 %516, 1
  %518 = zext i32 %517 to i64
  store i64 %518, i64* %RAX.i1690, align 8
  %519 = icmp eq i32 %516, -1
  %520 = icmp eq i32 %517, 0
  %521 = or i1 %519, %520
  %522 = zext i1 %521 to i8
  store i8 %522, i8* %14, align 1
  %523 = and i32 %517, 255
  %524 = tail call i32 @llvm.ctpop.i32(i32 %523)
  %525 = trunc i32 %524 to i8
  %526 = and i8 %525, 1
  %527 = xor i8 %526, 1
  store i8 %527, i8* %21, align 1
  %528 = xor i32 %517, %516
  %529 = lshr i32 %528, 4
  %530 = trunc i32 %529 to i8
  %531 = and i8 %530, 1
  store i8 %531, i8* %26, align 1
  %532 = zext i1 %520 to i8
  store i8 %532, i8* %29, align 1
  %533 = lshr i32 %517, 31
  %534 = trunc i32 %533 to i8
  store i8 %534, i8* %32, align 1
  %535 = lshr i32 %516, 31
  %536 = xor i32 %533, %535
  %537 = add nuw nsw i32 %536, %533
  %538 = icmp eq i32 %537, 2
  %539 = zext i1 %538 to i8
  store i8 %539, i8* %38, align 1
  store i32 %517, i32* bitcast (%G_0x63ae48_type* @G_0x63ae48 to i32*), align 8
  %540 = add i64 %380, -40
  %541 = add i64 %515, 24
  store i64 %541, i64* %3, align 8
  %542 = inttoptr i64 %540 to i32*
  store i32 1, i32* %542, align 4
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_40b87f

block_.L_40b87f:                                  ; preds = %block_40b891, %block_40b867
  %543 = phi i64 [ %593, %block_40b891 ], [ %.pre, %block_40b867 ]
  %544 = load i64, i64* %RBP.i, align 8
  %545 = add i64 %544, -40
  %546 = add i64 %543, 4
  store i64 %546, i64* %3, align 8
  %547 = inttoptr i64 %545 to i32*
  %548 = load i32, i32* %547, align 4
  %549 = sext i32 %548 to i64
  store i64 %549, i64* %RAX.i1690, align 8
  %550 = shl nsw i64 %549, 2
  %551 = add nsw i64 %550, 8778480
  %552 = add i64 %543, 12
  store i64 %552, i64* %3, align 8
  %553 = inttoptr i64 %551 to i32*
  %554 = load i32, i32* %553, align 4
  store i8 0, i8* %14, align 1
  %555 = and i32 %554, 255
  %556 = tail call i32 @llvm.ctpop.i32(i32 %555)
  %557 = trunc i32 %556 to i8
  %558 = and i8 %557, 1
  %559 = xor i8 %558, 1
  store i8 %559, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %560 = icmp eq i32 %554, 0
  %561 = zext i1 %560 to i8
  store i8 %561, i8* %29, align 1
  %562 = lshr i32 %554, 31
  %563 = trunc i32 %562 to i8
  store i8 %563, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v57 = select i1 %560, i64 37, i64 18
  %564 = add i64 %543, %.v57
  %565 = add i64 %564, 5
  store i64 %565, i64* %3, align 8
  br i1 %560, label %block_.L_40b8a4, label %block_40b891

block_40b891:                                     ; preds = %block_.L_40b87f
  %566 = add i64 %564, 8
  store i64 %566, i64* %3, align 8
  %567 = load i32, i32* %547, align 4
  %568 = add i32 %567, 1
  %569 = zext i32 %568 to i64
  store i64 %569, i64* %RAX.i1690, align 8
  %570 = icmp eq i32 %567, -1
  %571 = icmp eq i32 %568, 0
  %572 = or i1 %570, %571
  %573 = zext i1 %572 to i8
  store i8 %573, i8* %14, align 1
  %574 = and i32 %568, 255
  %575 = tail call i32 @llvm.ctpop.i32(i32 %574)
  %576 = trunc i32 %575 to i8
  %577 = and i8 %576, 1
  %578 = xor i8 %577, 1
  store i8 %578, i8* %21, align 1
  %579 = xor i32 %568, %567
  %580 = lshr i32 %579, 4
  %581 = trunc i32 %580 to i8
  %582 = and i8 %581, 1
  store i8 %582, i8* %26, align 1
  %583 = zext i1 %571 to i8
  store i8 %583, i8* %29, align 1
  %584 = lshr i32 %568, 31
  %585 = trunc i32 %584 to i8
  store i8 %585, i8* %32, align 1
  %586 = lshr i32 %567, 31
  %587 = xor i32 %584, %586
  %588 = add nuw nsw i32 %587, %584
  %589 = icmp eq i32 %588, 2
  %590 = zext i1 %589 to i8
  store i8 %590, i8* %38, align 1
  %591 = add i64 %564, 14
  store i64 %591, i64* %3, align 8
  store i32 %568, i32* %547, align 4
  %592 = load i64, i64* %3, align 8
  %593 = add i64 %592, -32
  store i64 %593, i64* %3, align 8
  br label %block_.L_40b87f

block_.L_40b8a4:                                  ; preds = %block_.L_40b87f
  store i64 1, i64* %RAX.i1690, align 8
  %ECX.i1496 = bitcast %union.anon* %57 to i32*
  store i64 0, i64* %RCX.i1678, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %RDX.i1494 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  store i64 ptrtoint (%G__0x880b20_type* @G__0x880b20 to i64), i64* %RDX.i1494, align 8
  %594 = add i64 %544, -24
  %595 = add i64 %564, 20
  store i64 %595, i64* %3, align 8
  %596 = inttoptr i64 %594 to i32*
  %597 = load i32, i32* %596, align 4
  %598 = zext i32 %597 to i64
  store i64 %598, i64* %RSI.i1670, align 8
  %599 = add i64 %564, 24
  store i64 %599, i64* %3, align 8
  %600 = load i32, i32* %547, align 4
  %601 = sext i32 %600 to i64
  store i64 %601, i64* %RDI.i1687, align 8
  %602 = shl nsw i64 %601, 2
  %603 = add nsw i64 %602, 8778480
  %604 = add i64 %564, 31
  store i64 %604, i64* %3, align 8
  %605 = inttoptr i64 %603 to i32*
  store i32 %597, i32* %605, align 4
  %606 = load i64, i64* %RBP.i, align 8
  %607 = add i64 %606, -40
  %608 = load i64, i64* %3, align 8
  %609 = add i64 %608, 4
  store i64 %609, i64* %3, align 8
  %610 = inttoptr i64 %607 to i32*
  %611 = load i32, i32* %610, align 4
  %612 = sext i32 %611 to i64
  store i64 %612, i64* %RDI.i1687, align 8
  %613 = shl nsw i64 %612, 2
  %614 = add nsw i64 %613, 6525216
  %615 = add i64 %608, 11
  store i64 %615, i64* %3, align 8
  %616 = inttoptr i64 %614 to i32*
  %617 = load i32, i32* %616, align 4
  %618 = zext i32 %617 to i64
  store i64 %618, i64* %RSI.i1670, align 8
  %619 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %620 = sext i32 %619 to i64
  %621 = shl nsw i64 %620, 4
  store i64 %621, i64* %RDI.i1687, align 8
  %622 = load i64, i64* %RDX.i1494, align 8
  %623 = add i64 %621, %622
  store i64 %623, i64* %RDX.i1494, align 8
  %624 = icmp ult i64 %623, %622
  %625 = icmp ult i64 %623, %621
  %626 = or i1 %624, %625
  %627 = zext i1 %626 to i8
  store i8 %627, i8* %14, align 1
  %628 = trunc i64 %623 to i32
  %629 = and i32 %628, 255
  %630 = tail call i32 @llvm.ctpop.i32(i32 %629)
  %631 = trunc i32 %630 to i8
  %632 = and i8 %631, 1
  %633 = xor i8 %632, 1
  store i8 %633, i8* %21, align 1
  %634 = xor i64 %621, %622
  %635 = xor i64 %634, %623
  %636 = lshr i64 %635, 4
  %637 = trunc i64 %636 to i8
  %638 = and i8 %637, 1
  store i8 %638, i8* %26, align 1
  %639 = icmp eq i64 %623, 0
  %640 = zext i1 %639 to i8
  store i8 %640, i8* %29, align 1
  %641 = lshr i64 %623, 63
  %642 = trunc i64 %641 to i8
  store i8 %642, i8* %32, align 1
  %643 = lshr i64 %622, 63
  %644 = lshr i64 %620, 59
  %645 = and i64 %644, 1
  %646 = xor i64 %641, %643
  %647 = xor i64 %641, %645
  %648 = add nuw nsw i64 %646, %647
  %649 = icmp eq i64 %648, 2
  %650 = zext i1 %649 to i8
  store i8 %650, i8* %38, align 1
  %651 = add i64 %623, 4
  %652 = add i64 %608, 29
  store i64 %652, i64* %3, align 8
  %653 = inttoptr i64 %651 to i32*
  store i32 %617, i32* %653, align 4
  %654 = load i64, i64* %RBP.i, align 8
  %655 = add i64 %654, -40
  %656 = load i64, i64* %3, align 8
  %657 = add i64 %656, 4
  store i64 %657, i64* %3, align 8
  %658 = inttoptr i64 %655 to i32*
  %659 = load i32, i32* %658, align 4
  %660 = sext i32 %659 to i64
  store i64 %660, i64* %RDX.i1494, align 8
  %661 = shl nsw i64 %660, 2
  %662 = add nsw i64 %661, 6525216
  %663 = add i64 %656, 15
  store i64 %663, i64* %3, align 8
  %664 = inttoptr i64 %662 to i32*
  store i32 0, i32* %664, align 4
  %665 = load i64, i64* %RBP.i, align 8
  %666 = add i64 %665, -40
  %667 = load i64, i64* %3, align 8
  %668 = add i64 %667, 3
  store i64 %668, i64* %3, align 8
  %669 = inttoptr i64 %666 to i32*
  %670 = load i32, i32* %669, align 4
  %671 = zext i32 %670 to i64
  store i64 %671, i64* %RSI.i1670, align 8
  %672 = add i64 %665, -24
  %673 = add i64 %667, 7
  store i64 %673, i64* %3, align 8
  %674 = inttoptr i64 %672 to i32*
  %675 = load i32, i32* %674, align 4
  %676 = sext i32 %675 to i64
  store i64 %676, i64* %RDX.i1494, align 8
  %677 = shl nsw i64 %676, 2
  %678 = add nsw i64 %677, 8807152
  %679 = add i64 %667, 14
  store i64 %679, i64* %3, align 8
  %680 = inttoptr i64 %678 to i32*
  store i32 %670, i32* %680, align 4
  %681 = load i64, i64* %RBP.i, align 8
  %682 = add i64 %681, -32
  %683 = load i64, i64* %3, align 8
  %684 = add i64 %683, 3
  store i64 %684, i64* %3, align 8
  %685 = inttoptr i64 %682 to i32*
  %686 = load i32, i32* %685, align 4
  %687 = zext i32 %686 to i64
  store i64 %687, i64* %RDI.i1687, align 8
  %688 = load i32, i32* bitcast (%G_0x8661bc_type* @G_0x8661bc to i32*), align 8
  store i8 0, i8* %14, align 1
  %689 = and i32 %688, 255
  %690 = tail call i32 @llvm.ctpop.i32(i32 %689)
  %691 = trunc i32 %690 to i8
  %692 = and i8 %691, 1
  %693 = xor i8 %692, 1
  store i8 %693, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %694 = icmp eq i32 %688, 0
  %695 = zext i1 %694 to i8
  store i8 %695, i8* %29, align 1
  %696 = lshr i32 %688, 31
  %697 = trunc i32 %696 to i8
  store i8 %697, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %698 = load i32, i32* %ECX.i1496, align 4
  %699 = zext i32 %698 to i64
  %700 = load i64, i64* %RAX.i1690, align 8
  %701 = select i1 %694, i64 %700, i64 %699
  %702 = and i64 %701, 4294967295
  store i64 %702, i64* %RAX.i1690, align 8
  %703 = and i64 %701, 4294967295
  store i64 %703, i64* %RSI.i1670, align 8
  %704 = add i64 %683, -37197
  %705 = add i64 %683, 21
  %706 = load i64, i64* %6, align 8
  %707 = add i64 %706, -8
  %708 = inttoptr i64 %707 to i64*
  store i64 %705, i64* %708, align 8
  store i64 %707, i64* %6, align 8
  store i64 %704, i64* %3, align 8
  %call2_40b90d = tail call %struct.Memory* @sub_4027b0.DropremoveHolding(%struct.State* nonnull %0, i64 %704, %struct.Memory* %2)
  %709 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x8a0a80_type* @G__0x8a0a80 to i64), i64* %RDX.i1494, align 8
  %R8.i1440 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %710 = load i64, i64* %RBP.i, align 8
  %711 = add i64 %710, -32
  %712 = add i64 %709, 14
  store i64 %712, i64* %3, align 8
  %713 = inttoptr i64 %711 to i32*
  %714 = load i32, i32* %713, align 4
  %715 = sext i32 %714 to i64
  store i64 %715, i64* %R8.i1440, align 8
  %716 = shl nsw i64 %715, 2
  %717 = add nsw i64 %716, 6478512
  %718 = add i64 %709, 22
  store i64 %718, i64* %3, align 8
  %719 = inttoptr i64 %717 to i32*
  %720 = load i32, i32* %719, align 4
  %721 = load i32, i32* bitcast (%G_0x8661c0_type* @G_0x8661c0 to i32*), align 8
  %722 = add i32 %721, %720
  %723 = zext i32 %722 to i64
  store i64 %723, i64* %RAX.i1690, align 8
  %724 = icmp ult i32 %722, %720
  %725 = icmp ult i32 %722, %721
  %726 = or i1 %724, %725
  %727 = zext i1 %726 to i8
  store i8 %727, i8* %14, align 1
  %728 = and i32 %722, 255
  %729 = tail call i32 @llvm.ctpop.i32(i32 %728)
  %730 = trunc i32 %729 to i8
  %731 = and i8 %730, 1
  %732 = xor i8 %731, 1
  store i8 %732, i8* %21, align 1
  %733 = xor i32 %721, %720
  %734 = xor i32 %733, %722
  %735 = lshr i32 %734, 4
  %736 = trunc i32 %735 to i8
  %737 = and i8 %736, 1
  store i8 %737, i8* %26, align 1
  %738 = icmp eq i32 %722, 0
  %739 = zext i1 %738 to i8
  store i8 %739, i8* %29, align 1
  %740 = lshr i32 %722, 31
  %741 = trunc i32 %740 to i8
  store i8 %741, i8* %32, align 1
  %742 = lshr i32 %720, 31
  %743 = lshr i32 %721, 31
  %744 = xor i32 %740, %742
  %745 = xor i32 %740, %743
  %746 = add nuw nsw i32 %744, %745
  %747 = icmp eq i32 %746, 2
  %748 = zext i1 %747 to i8
  store i8 %748, i8* %38, align 1
  store i32 %722, i32* bitcast (%G_0x8661c0_type* @G_0x8661c0 to i32*), align 8
  %749 = add i64 %709, 39
  store i64 %749, i64* %3, align 8
  %750 = load i32, i32* %713, align 4
  %751 = zext i32 %750 to i64
  store i64 %751, i64* %RAX.i1690, align 8
  %752 = add i64 %710, -24
  %753 = add i64 %709, 43
  store i64 %753, i64* %3, align 8
  %754 = inttoptr i64 %752 to i32*
  %755 = load i32, i32* %754, align 4
  %756 = sext i32 %755 to i64
  store i64 %756, i64* %R8.i1440, align 8
  %757 = shl nsw i64 %756, 2
  %758 = add nsw i64 %757, 8807744
  %759 = add i64 %709, 51
  store i64 %759, i64* %3, align 8
  %760 = inttoptr i64 %758 to i32*
  store i32 %750, i32* %760, align 4
  %761 = load i64, i64* %RBP.i, align 8
  %762 = add i64 %761, -32
  %763 = load i64, i64* %3, align 8
  %764 = add i64 %763, 4
  store i64 %764, i64* %3, align 8
  %765 = inttoptr i64 %762 to i32*
  %766 = load i32, i32* %765, align 4
  %767 = sext i32 %766 to i64
  %768 = mul nsw i64 %767, 576
  store i64 %768, i64* %R8.i1440, align 8
  %769 = lshr i64 %768, 63
  %770 = load i64, i64* %RDX.i1494, align 8
  %771 = add i64 %768, %770
  store i64 %771, i64* %RDX.i1494, align 8
  %772 = icmp ult i64 %771, %770
  %773 = icmp ult i64 %771, %768
  %774 = or i1 %772, %773
  %775 = zext i1 %774 to i8
  store i8 %775, i8* %14, align 1
  %776 = trunc i64 %771 to i32
  %777 = and i32 %776, 255
  %778 = tail call i32 @llvm.ctpop.i32(i32 %777)
  %779 = trunc i32 %778 to i8
  %780 = and i8 %779, 1
  %781 = xor i8 %780, 1
  store i8 %781, i8* %21, align 1
  %782 = xor i64 %770, %771
  %783 = lshr i64 %782, 4
  %784 = trunc i64 %783 to i8
  %785 = and i8 %784, 1
  store i8 %785, i8* %26, align 1
  %786 = icmp eq i64 %771, 0
  %787 = zext i1 %786 to i8
  store i8 %787, i8* %29, align 1
  %788 = lshr i64 %771, 63
  %789 = trunc i64 %788 to i8
  store i8 %789, i8* %32, align 1
  %790 = lshr i64 %770, 63
  %791 = xor i64 %788, %790
  %792 = xor i64 %788, %769
  %793 = add nuw nsw i64 %791, %792
  %794 = icmp eq i64 %793, 2
  %795 = zext i1 %794 to i8
  store i8 %795, i8* %38, align 1
  %796 = add i64 %761, -24
  %797 = add i64 %763, 18
  store i64 %797, i64* %3, align 8
  %798 = inttoptr i64 %796 to i32*
  %799 = load i32, i32* %798, align 4
  %800 = sext i32 %799 to i64
  store i64 %800, i64* %R8.i1440, align 8
  %801 = shl nsw i64 %800, 2
  %802 = add i64 %801, %771
  %803 = add i64 %763, 22
  store i64 %803, i64* %3, align 8
  %804 = inttoptr i64 %802 to i32*
  %805 = load i32, i32* %804, align 4
  %806 = load i32, i32* bitcast (%G_0x633b40_type* @G_0x633b40 to i32*), align 8
  %807 = xor i32 %806, %805
  store i32 %807, i32* bitcast (%G_0x633b40_type* @G_0x633b40 to i32*), align 8
  %808 = load i32, i32* bitcast (%G_0x8661bc_type* @G_0x8661bc to i32*), align 8
  %809 = xor i32 %808, 1
  store i32 %809, i32* bitcast (%G_0x8661bc_type* @G_0x8661bc to i32*), align 8
  %810 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %811 = add i32 %810, 1
  %812 = zext i32 %811 to i64
  store i64 %812, i64* %RAX.i1690, align 8
  %813 = icmp eq i32 %810, -1
  %814 = icmp eq i32 %811, 0
  %815 = or i1 %813, %814
  %816 = zext i1 %815 to i8
  store i8 %816, i8* %14, align 1
  %817 = and i32 %811, 255
  %818 = tail call i32 @llvm.ctpop.i32(i32 %817)
  %819 = trunc i32 %818 to i8
  %820 = and i8 %819, 1
  %821 = xor i8 %820, 1
  store i8 %821, i8* %21, align 1
  %822 = xor i32 %811, %810
  %823 = lshr i32 %822, 4
  %824 = trunc i32 %823 to i8
  %825 = and i8 %824, 1
  store i8 %825, i8* %26, align 1
  %826 = zext i1 %814 to i8
  store i8 %826, i8* %29, align 1
  %827 = lshr i32 %811, 31
  %828 = trunc i32 %827 to i8
  store i8 %828, i8* %32, align 1
  %829 = lshr i32 %810, 31
  %830 = xor i32 %827, %829
  %831 = add nuw nsw i32 %830, %827
  %832 = icmp eq i32 %831, 2
  %833 = zext i1 %832 to i8
  store i8 %833, i8* %38, align 1
  store i32 %811, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %834 = add i64 %763, 3657
  store i64 %834, i64* %3, align 8
  br label %block_.L_40c78e

block_.L_40b990:                                  ; preds = %block_.L_40b85d
  store i64 ptrtoint (%G__0x880b20_type* @G__0x880b20 to i64), i64* %RAX.i1690, align 8
  %835 = add i64 %380, -24
  %836 = add i64 %515, 14
  store i64 %836, i64* %3, align 8
  %837 = inttoptr i64 %835 to i32*
  %838 = load i32, i32* %837, align 4
  %839 = sext i32 %838 to i64
  store i64 %839, i64* %RCX.i1678, align 8
  %840 = shl nsw i64 %839, 2
  %841 = add nsw i64 %840, 8807152
  %842 = add i64 %515, 22
  store i64 %842, i64* %3, align 8
  %843 = inttoptr i64 %841 to i32*
  %844 = load i32, i32* %843, align 4
  %845 = sext i32 %844 to i64
  store i64 %845, i64* %RCX.i1678, align 8
  %RDX.i1382 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %846 = shl nsw i64 %845, 2
  %847 = add nsw i64 %846, 6525216
  %848 = add i64 %515, 29
  store i64 %848, i64* %3, align 8
  %849 = inttoptr i64 %847 to i32*
  %850 = load i32, i32* %849, align 4
  %851 = zext i32 %850 to i64
  store i64 %851, i64* %RDX.i1382, align 8
  %852 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %853 = sext i32 %852 to i64
  %854 = shl nsw i64 %853, 4
  store i64 %854, i64* %RCX.i1678, align 8
  %855 = add i64 %854, ptrtoint (%G__0x880b20_type* @G__0x880b20 to i64)
  store i64 %855, i64* %RSI.i1670, align 8
  %856 = icmp ult i64 %855, ptrtoint (%G__0x880b20_type* @G__0x880b20 to i64)
  %857 = icmp ult i64 %855, %854
  %858 = or i1 %856, %857
  %859 = zext i1 %858 to i8
  store i8 %859, i8* %14, align 1
  %860 = trunc i64 %855 to i32
  %861 = and i32 %860, 248
  %862 = tail call i32 @llvm.ctpop.i32(i32 %861)
  %863 = trunc i32 %862 to i8
  %864 = and i8 %863, 1
  %865 = xor i8 %864, 1
  store i8 %865, i8* %21, align 1
  %866 = xor i64 %854, ptrtoint (%G__0x880b20_type* @G__0x880b20 to i64)
  %867 = xor i64 %866, %855
  %868 = lshr i64 %867, 4
  %869 = trunc i64 %868 to i8
  %870 = and i8 %869, 1
  store i8 %870, i8* %26, align 1
  %871 = icmp eq i64 %855, 0
  %872 = zext i1 %871 to i8
  store i8 %872, i8* %29, align 1
  %873 = lshr i64 %855, 63
  %874 = trunc i64 %873 to i8
  store i8 %874, i8* %32, align 1
  %875 = lshr i64 %853, 59
  %876 = and i64 %875, 1
  %877 = xor i64 %873, lshr (i64 ptrtoint (%G__0x880b20_type* @G__0x880b20 to i64), i64 63)
  %878 = xor i64 %873, %876
  %879 = add nuw nsw i64 %877, %878
  %880 = icmp eq i64 %879, 2
  %881 = zext i1 %880 to i8
  store i8 %881, i8* %38, align 1
  %882 = add i64 %854, add (i64 ptrtoint (%G__0x880b20_type* @G__0x880b20 to i64), i64 4)
  %883 = add i64 %515, 50
  store i64 %883, i64* %3, align 8
  %884 = inttoptr i64 %882 to i32*
  store i32 %850, i32* %884, align 4
  %885 = load i64, i64* %RBP.i, align 8
  %886 = add i64 %885, -24
  %887 = load i64, i64* %3, align 8
  %888 = add i64 %887, 4
  store i64 %888, i64* %3, align 8
  %889 = inttoptr i64 %886 to i32*
  %890 = load i32, i32* %889, align 4
  %891 = sext i32 %890 to i64
  store i64 %891, i64* %RCX.i1678, align 8
  %892 = shl nsw i64 %891, 2
  %893 = add nsw i64 %892, 8807152
  %894 = add i64 %887, 11
  store i64 %894, i64* %3, align 8
  %895 = inttoptr i64 %893 to i32*
  %896 = load i32, i32* %895, align 4
  %897 = zext i32 %896 to i64
  store i64 %897, i64* %RDX.i1382, align 8
  %898 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %899 = sext i32 %898 to i64
  %900 = shl nsw i64 %899, 4
  store i64 %900, i64* %RCX.i1678, align 8
  %901 = load i64, i64* %RAX.i1690, align 8
  %902 = add i64 %900, %901
  store i64 %902, i64* %RAX.i1690, align 8
  %903 = icmp ult i64 %902, %901
  %904 = icmp ult i64 %902, %900
  %905 = or i1 %903, %904
  %906 = zext i1 %905 to i8
  store i8 %906, i8* %14, align 1
  %907 = trunc i64 %902 to i32
  %908 = and i32 %907, 255
  %909 = tail call i32 @llvm.ctpop.i32(i32 %908)
  %910 = trunc i32 %909 to i8
  %911 = and i8 %910, 1
  %912 = xor i8 %911, 1
  store i8 %912, i8* %21, align 1
  %913 = xor i64 %900, %901
  %914 = xor i64 %913, %902
  %915 = lshr i64 %914, 4
  %916 = trunc i64 %915 to i8
  %917 = and i8 %916, 1
  store i8 %917, i8* %26, align 1
  %918 = icmp eq i64 %902, 0
  %919 = zext i1 %918 to i8
  store i8 %919, i8* %29, align 1
  %920 = lshr i64 %902, 63
  %921 = trunc i64 %920 to i8
  store i8 %921, i8* %32, align 1
  %922 = lshr i64 %901, 63
  %923 = lshr i64 %899, 59
  %924 = and i64 %923, 1
  %925 = xor i64 %920, %922
  %926 = xor i64 %920, %924
  %927 = add nuw nsw i64 %925, %926
  %928 = icmp eq i64 %927, 2
  %929 = zext i1 %928 to i8
  store i8 %929, i8* %38, align 1
  %930 = inttoptr i64 %902 to i32*
  %931 = add i64 %887, 28
  store i64 %931, i64* %3, align 8
  store i32 %896, i32* %930, align 4
  %932 = load i64, i64* %RBP.i, align 8
  %933 = add i64 %932, -24
  %934 = load i64, i64* %3, align 8
  %935 = add i64 %934, 4
  store i64 %935, i64* %3, align 8
  %936 = inttoptr i64 %933 to i32*
  %937 = load i32, i32* %936, align 4
  %938 = sext i32 %937 to i64
  store i64 %938, i64* %RAX.i1690, align 8
  %939 = shl nsw i64 %938, 2
  %940 = add nsw i64 %939, 8807152
  %941 = add i64 %934, 12
  store i64 %941, i64* %3, align 8
  %942 = inttoptr i64 %940 to i32*
  %943 = load i32, i32* %942, align 4
  %944 = sext i32 %943 to i64
  store i64 %944, i64* %RAX.i1690, align 8
  %945 = shl nsw i64 %944, 2
  %946 = add nsw i64 %945, 8778480
  %947 = add i64 %934, 23
  store i64 %947, i64* %3, align 8
  %948 = inttoptr i64 %946 to i32*
  store i32 0, i32* %948, align 4
  %949 = load i64, i64* %RBP.i, align 8
  %950 = add i64 %949, -24
  %951 = load i64, i64* %3, align 8
  %952 = add i64 %951, 3
  store i64 %952, i64* %3, align 8
  %953 = inttoptr i64 %950 to i32*
  %954 = load i32, i32* %953, align 4
  %955 = zext i32 %954 to i64
  store i64 %955, i64* %RDX.i1382, align 8
  %956 = add i64 %949, -20
  %957 = add i64 %951, 7
  store i64 %957, i64* %3, align 8
  %958 = inttoptr i64 %956 to i32*
  %959 = load i32, i32* %958, align 4
  %960 = sext i32 %959 to i64
  store i64 %960, i64* %RAX.i1690, align 8
  %961 = shl nsw i64 %960, 2
  %962 = add nsw i64 %961, 8807152
  %963 = add i64 %951, 15
  store i64 %963, i64* %3, align 8
  %964 = inttoptr i64 %962 to i32*
  %965 = load i32, i32* %964, align 4
  %966 = sext i32 %965 to i64
  store i64 %966, i64* %RAX.i1690, align 8
  %967 = shl nsw i64 %966, 2
  %968 = add nsw i64 %967, 8778480
  %969 = add i64 %951, 22
  store i64 %969, i64* %3, align 8
  %970 = inttoptr i64 %968 to i32*
  store i32 %954, i32* %970, align 4
  %971 = load i64, i64* %RBP.i, align 8
  %972 = add i64 %971, -20
  %973 = load i64, i64* %3, align 8
  %974 = add i64 %973, 4
  store i64 %974, i64* %3, align 8
  %975 = inttoptr i64 %972 to i32*
  %976 = load i32, i32* %975, align 4
  %977 = sext i32 %976 to i64
  store i64 %977, i64* %RAX.i1690, align 8
  %978 = shl nsw i64 %977, 2
  %979 = add nsw i64 %978, 8807152
  %980 = add i64 %973, 11
  store i64 %980, i64* %3, align 8
  %981 = inttoptr i64 %979 to i32*
  %982 = load i32, i32* %981, align 4
  %983 = zext i32 %982 to i64
  store i64 %983, i64* %RDX.i1382, align 8
  %984 = add i64 %971, -24
  %985 = add i64 %973, 15
  store i64 %985, i64* %3, align 8
  %986 = inttoptr i64 %984 to i32*
  %987 = load i32, i32* %986, align 4
  %988 = sext i32 %987 to i64
  store i64 %988, i64* %RAX.i1690, align 8
  %989 = shl nsw i64 %988, 2
  %990 = add nsw i64 %989, 8807152
  %991 = add i64 %973, 22
  store i64 %991, i64* %3, align 8
  %992 = inttoptr i64 %990 to i32*
  store i32 %982, i32* %992, align 4
  %993 = load i64, i64* %RBP.i, align 8
  %994 = add i64 %993, -20
  %995 = load i64, i64* %3, align 8
  %996 = add i64 %995, 4
  store i64 %996, i64* %3, align 8
  %997 = inttoptr i64 %994 to i32*
  %998 = load i32, i32* %997, align 4
  %999 = sext i32 %998 to i64
  store i64 %999, i64* %RAX.i1690, align 8
  %1000 = shl nsw i64 %999, 2
  %1001 = add nsw i64 %1000, 8807152
  %1002 = add i64 %995, 15
  store i64 %1002, i64* %3, align 8
  %1003 = inttoptr i64 %1001 to i32*
  store i32 0, i32* %1003, align 4
  %1004 = load i64, i64* %RBP.i, align 8
  %1005 = add i64 %1004, -16
  %1006 = load i64, i64* %3, align 8
  %1007 = add i64 %1006, 4
  store i64 %1007, i64* %3, align 8
  %1008 = inttoptr i64 %1005 to i32*
  %1009 = load i32, i32* %1008, align 4
  store i8 0, i8* %14, align 1
  %1010 = and i32 %1009, 255
  %1011 = tail call i32 @llvm.ctpop.i32(i32 %1010)
  %1012 = trunc i32 %1011 to i8
  %1013 = and i8 %1012, 1
  %1014 = xor i8 %1013, 1
  store i8 %1014, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1015 = icmp eq i32 %1009, 0
  %1016 = zext i1 %1015 to i8
  store i8 %1016, i8* %29, align 1
  %1017 = lshr i32 %1009, 31
  %1018 = trunc i32 %1017 to i8
  store i8 %1018, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v39 = select i1 %1015, i64 10, i64 320
  %1019 = add i64 %1006, %.v39
  store i64 %1019, i64* %3, align 8
  br i1 %1015, label %block_40ba3a, label %block_.L_40bb70

block_40ba3a:                                     ; preds = %block_.L_40b990
  %1020 = add i64 %1004, -24
  %1021 = add i64 %1019, 4
  store i64 %1021, i64* %3, align 8
  %1022 = inttoptr i64 %1020 to i32*
  %1023 = load i32, i32* %1022, align 4
  %1024 = sext i32 %1023 to i64
  store i64 %1024, i64* %RAX.i1690, align 8
  %1025 = shl nsw i64 %1024, 2
  %1026 = add nsw i64 %1025, 8807744
  %1027 = add i64 %1019, 11
  store i64 %1027, i64* %3, align 8
  %1028 = inttoptr i64 %1026 to i32*
  %1029 = load i32, i32* %1028, align 4
  %1030 = add i32 %1029, -13
  %1031 = zext i32 %1030 to i64
  store i64 %1031, i64* %RCX.i1678, align 8
  %1032 = icmp ult i32 %1029, 13
  %1033 = zext i1 %1032 to i8
  store i8 %1033, i8* %14, align 1
  %1034 = and i32 %1030, 255
  %1035 = tail call i32 @llvm.ctpop.i32(i32 %1034)
  %1036 = trunc i32 %1035 to i8
  %1037 = and i8 %1036, 1
  %1038 = xor i8 %1037, 1
  store i8 %1038, i8* %21, align 1
  %1039 = xor i32 %1030, %1029
  %1040 = lshr i32 %1039, 4
  %1041 = trunc i32 %1040 to i8
  %1042 = and i8 %1041, 1
  store i8 %1042, i8* %26, align 1
  %1043 = icmp eq i32 %1030, 0
  %1044 = zext i1 %1043 to i8
  store i8 %1044, i8* %29, align 1
  %1045 = lshr i32 %1030, 31
  %1046 = trunc i32 %1045 to i8
  store i8 %1046, i8* %32, align 1
  %1047 = lshr i32 %1029, 31
  %1048 = xor i32 %1045, %1047
  %1049 = add nuw nsw i32 %1048, %1047
  %1050 = icmp eq i32 %1049, 2
  %1051 = zext i1 %1050 to i8
  store i8 %1051, i8* %38, align 1
  %1052 = add i64 %1004, -44
  %1053 = add i64 %1019, 17
  store i64 %1053, i64* %3, align 8
  %1054 = inttoptr i64 %1052 to i32*
  store i32 %1030, i32* %1054, align 4
  %1055 = load i64, i64* %3, align 8
  %1056 = load i8, i8* %29, align 1
  %1057 = icmp eq i8 %1056, 0
  %.v60 = select i1 %1057, i64 16, i64 6
  %1058 = add i64 %1055, %.v60
  store i64 %1058, i64* %3, align 8
  br i1 %1057, label %block_.L_40ba5b, label %block_40ba51

block_40ba51:                                     ; preds = %block_40ba3a
  %1059 = add i64 %1058, 282
  store i64 %1059, i64* %3, align 8
  %.pre33.pre = load i64, i64* %RBP.i, align 8
  br label %block_.L_40bb6b

block_.L_40ba5b:                                  ; preds = %block_40ba3a
  %1060 = load i32, i32* bitcast (%G_0x85f154_type* @G_0x85f154 to i32*), align 8
  %1061 = add i32 %1060, -1
  %1062 = icmp eq i32 %1060, 0
  %1063 = zext i1 %1062 to i8
  store i8 %1063, i8* %14, align 1
  %1064 = and i32 %1061, 255
  %1065 = tail call i32 @llvm.ctpop.i32(i32 %1064)
  %1066 = trunc i32 %1065 to i8
  %1067 = and i8 %1066, 1
  %1068 = xor i8 %1067, 1
  store i8 %1068, i8* %21, align 1
  %1069 = xor i32 %1061, %1060
  %1070 = lshr i32 %1069, 4
  %1071 = trunc i32 %1070 to i8
  %1072 = and i8 %1071, 1
  store i8 %1072, i8* %26, align 1
  %1073 = icmp eq i32 %1061, 0
  %1074 = zext i1 %1073 to i8
  store i8 %1074, i8* %29, align 1
  %1075 = lshr i32 %1061, 31
  %1076 = trunc i32 %1075 to i8
  store i8 %1076, i8* %32, align 1
  %1077 = lshr i32 %1060, 31
  %1078 = xor i32 %1075, %1077
  %1079 = add nuw nsw i32 %1078, %1077
  %1080 = icmp eq i32 %1079, 2
  %1081 = zext i1 %1080 to i8
  store i8 %1081, i8* %38, align 1
  %.v54 = select i1 %1073, i64 28, i64 14
  %1082 = add i64 %1058, %.v54
  store i64 %1082, i64* %3, align 8
  br i1 %1073, label %block_.L_40ba77, label %block_40ba69

block_40ba69:                                     ; preds = %block_.L_40ba5b
  store i8 0, i8* %14, align 1
  %1083 = and i32 %1060, 255
  %1084 = tail call i32 @llvm.ctpop.i32(i32 %1083)
  %1085 = trunc i32 %1084 to i8
  %1086 = and i8 %1085, 1
  %1087 = xor i8 %1086, 1
  store i8 %1087, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 %1063, i8* %29, align 1
  %1088 = trunc i32 %1077 to i8
  store i8 %1088, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v55 = select i1 %1062, i64 14, i64 153
  %1089 = add i64 %1082, %.v55
  store i64 %1089, i64* %3, align 8
  br i1 %1062, label %block_.L_40ba77, label %block_.L_40bb02

block_.L_40ba77:                                  ; preds = %block_40ba69, %block_.L_40ba5b
  %1090 = phi i64 [ %1089, %block_40ba69 ], [ %1082, %block_.L_40ba5b ]
  %1091 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %1092 = sext i32 %1091 to i64
  %1093 = shl nsw i64 %1092, 4
  store i64 %1093, i64* %RCX.i1678, align 8
  %1094 = add i64 %1093, ptrtoint (%G__0x880b20_type* @G__0x880b20 to i64)
  store i64 %1094, i64* %RAX.i1690, align 8
  %1095 = icmp ult i64 %1094, ptrtoint (%G__0x880b20_type* @G__0x880b20 to i64)
  %1096 = icmp ult i64 %1094, %1093
  %1097 = or i1 %1095, %1096
  %1098 = zext i1 %1097 to i8
  store i8 %1098, i8* %14, align 1
  %1099 = trunc i64 %1094 to i32
  %1100 = and i32 %1099, 248
  %1101 = tail call i32 @llvm.ctpop.i32(i32 %1100)
  %1102 = trunc i32 %1101 to i8
  %1103 = and i8 %1102, 1
  %1104 = xor i8 %1103, 1
  store i8 %1104, i8* %21, align 1
  %1105 = xor i64 %1093, ptrtoint (%G__0x880b20_type* @G__0x880b20 to i64)
  %1106 = xor i64 %1105, %1094
  %1107 = lshr i64 %1106, 4
  %1108 = trunc i64 %1107 to i8
  %1109 = and i8 %1108, 1
  store i8 %1109, i8* %26, align 1
  %1110 = icmp eq i64 %1094, 0
  %1111 = zext i1 %1110 to i8
  store i8 %1111, i8* %29, align 1
  %1112 = lshr i64 %1094, 63
  %1113 = trunc i64 %1112 to i8
  store i8 %1113, i8* %32, align 1
  %1114 = lshr i64 %1092, 59
  %1115 = and i64 %1114, 1
  %1116 = xor i64 %1112, lshr (i64 ptrtoint (%G__0x880b20_type* @G__0x880b20 to i64), i64 63)
  %1117 = xor i64 %1112, %1115
  %1118 = add nuw nsw i64 %1116, %1117
  %1119 = icmp eq i64 %1118, 2
  %1120 = zext i1 %1119 to i8
  store i8 %1120, i8* %38, align 1
  %1121 = add i64 %1093, add (i64 ptrtoint (%G__0x880b20_type* @G__0x880b20 to i64), i64 4)
  %1122 = add i64 %1090, 29
  store i64 %1122, i64* %3, align 8
  %1123 = inttoptr i64 %1121 to i32*
  %1124 = load i32, i32* %1123, align 4
  store i8 0, i8* %14, align 1
  %1125 = and i32 %1124, 255
  %1126 = tail call i32 @llvm.ctpop.i32(i32 %1125)
  %1127 = trunc i32 %1126 to i8
  %1128 = and i8 %1127, 1
  %1129 = xor i8 %1128, 1
  store i8 %1129, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1130 = icmp eq i32 %1124, 0
  %1131 = zext i1 %1130 to i8
  store i8 %1131, i8* %29, align 1
  %1132 = lshr i32 %1124, 31
  %1133 = trunc i32 %1132 to i8
  store i8 %1133, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v56 = select i1 %1130, i64 87, i64 35
  %1134 = add i64 %1090, %.v56
  %1135 = load i64, i64* %RBP.i, align 8
  %1136 = add i64 %1135, -24
  %1137 = add i64 %1134, 4
  store i64 %1137, i64* %3, align 8
  %1138 = inttoptr i64 %1136 to i32*
  %1139 = load i32, i32* %1138, align 4
  %1140 = sext i32 %1139 to i64
  store i64 %1140, i64* %RAX.i1690, align 8
  %1141 = shl nsw i64 %1140, 2
  %1142 = add nsw i64 %1141, 8807744
  %1143 = add i64 %1134, 11
  store i64 %1143, i64* %3, align 8
  %1144 = inttoptr i64 %1142 to i32*
  %1145 = load i32, i32* %1144, align 4
  %1146 = zext i32 %1145 to i64
  store i64 %1146, i64* %RDI.i1687, align 8
  br i1 %1130, label %block_.L_40bace, label %block_40ba9a

block_40ba9a:                                     ; preds = %block_.L_40ba77
  %1147 = add i64 %1134, -38378
  %1148 = add i64 %1134, 16
  %1149 = load i64, i64* %6, align 8
  %1150 = add i64 %1149, -8
  %1151 = inttoptr i64 %1150 to i64*
  store i64 %1148, i64* %1151, align 8
  store i64 %1150, i64* %6, align 8
  store i64 %1147, i64* %3, align 8
  %call2_40baa5 = tail call %struct.Memory* @sub_4024b0.SwitchPromoted(%struct.State* nonnull %0, i64 %1147, %struct.Memory* %2)
  %1152 = load i64, i64* %3, align 8
  store i64 0, i64* %RCX.i1678, align 8
  %1153 = load i32, i32* bitcast (%G_0x8661bc_type* @G_0x8661bc to i32*), align 8
  store i8 0, i8* %14, align 1
  %1154 = and i32 %1153, 255
  %1155 = tail call i32 @llvm.ctpop.i32(i32 %1154)
  %1156 = trunc i32 %1155 to i8
  %1157 = and i8 %1156, 1
  %1158 = xor i8 %1157, 1
  store i8 %1158, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1159 = icmp eq i32 %1153, 0
  %1160 = zext i1 %1159 to i8
  store i8 %1160, i8* %29, align 1
  %1161 = lshr i32 %1153, 31
  %1162 = trunc i32 %1161 to i8
  store i8 %1162, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %1163 = load i64, i64* %RBP.i, align 8
  %1164 = add i64 %1163, -48
  %1165 = zext i1 %1159 to i32
  %1166 = add i64 %1152, 21
  store i64 %1166, i64* %3, align 8
  %1167 = inttoptr i64 %1164 to i32*
  store i32 %1165, i32* %1167, align 4
  %EAX.i1262 = bitcast %union.anon* %39 to i32*
  %1168 = load i32, i32* %EAX.i1262, align 4
  %1169 = zext i32 %1168 to i64
  %1170 = load i64, i64* %3, align 8
  store i64 %1169, i64* %RDI.i1687, align 8
  %1171 = load i64, i64* %RBP.i, align 8
  %1172 = add i64 %1171, -48
  %1173 = add i64 %1170, 5
  store i64 %1173, i64* %3, align 8
  %1174 = inttoptr i64 %1172 to i32*
  %1175 = load i32, i32* %1174, align 4
  %1176 = zext i32 %1175 to i64
  store i64 %1176, i64* %RSI.i1670, align 8
  %1177 = add i64 %1170, -38351
  %1178 = add i64 %1170, 10
  %1179 = load i64, i64* %6, align 8
  %1180 = add i64 %1179, -8
  %1181 = inttoptr i64 %1180 to i64*
  store i64 %1178, i64* %1181, align 8
  store i64 %1180, i64* %6, align 8
  store i64 %1177, i64* %3, align 8
  %call2_40bac4 = tail call %struct.Memory* @sub_4024f0.addHolding(%struct.State* nonnull %0, i64 %1177, %struct.Memory* %call2_40baa5)
  %1182 = load i64, i64* %3, align 8
  %1183 = add i64 %1182, 52
  store i64 %1183, i64* %3, align 8
  br label %block_.L_40bafd

block_.L_40bace:                                  ; preds = %block_.L_40ba77
  %1184 = add i64 %1134, -38494
  %1185 = add i64 %1134, 16
  %1186 = load i64, i64* %6, align 8
  %1187 = add i64 %1186, -8
  %1188 = inttoptr i64 %1187 to i64*
  store i64 %1185, i64* %1188, align 8
  store i64 %1187, i64* %6, align 8
  store i64 %1184, i64* %3, align 8
  %call2_40bad9 = tail call %struct.Memory* @sub_402470.SwitchColor(%struct.State* nonnull %0, i64 %1184, %struct.Memory* %2)
  %1189 = load i64, i64* %3, align 8
  store i64 0, i64* %RCX.i1678, align 8
  %1190 = load i32, i32* bitcast (%G_0x8661bc_type* @G_0x8661bc to i32*), align 8
  store i8 0, i8* %14, align 1
  %1191 = and i32 %1190, 255
  %1192 = tail call i32 @llvm.ctpop.i32(i32 %1191)
  %1193 = trunc i32 %1192 to i8
  %1194 = and i8 %1193, 1
  %1195 = xor i8 %1194, 1
  store i8 %1195, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1196 = icmp eq i32 %1190, 0
  %1197 = zext i1 %1196 to i8
  store i8 %1197, i8* %29, align 1
  %1198 = lshr i32 %1190, 31
  %1199 = trunc i32 %1198 to i8
  store i8 %1199, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %1200 = load i64, i64* %RBP.i, align 8
  %1201 = add i64 %1200, -52
  %1202 = zext i1 %1196 to i32
  %1203 = add i64 %1189, 21
  store i64 %1203, i64* %3, align 8
  %1204 = inttoptr i64 %1201 to i32*
  store i32 %1202, i32* %1204, align 4
  %EAX.i1236 = bitcast %union.anon* %39 to i32*
  %1205 = load i32, i32* %EAX.i1236, align 4
  %1206 = zext i32 %1205 to i64
  %1207 = load i64, i64* %3, align 8
  store i64 %1206, i64* %RDI.i1687, align 8
  %1208 = load i64, i64* %RBP.i, align 8
  %1209 = add i64 %1208, -52
  %1210 = add i64 %1207, 5
  store i64 %1210, i64* %3, align 8
  %1211 = inttoptr i64 %1209 to i32*
  %1212 = load i32, i32* %1211, align 4
  %1213 = zext i32 %1212 to i64
  store i64 %1213, i64* %RSI.i1670, align 8
  %1214 = add i64 %1207, -38403
  %1215 = add i64 %1207, 10
  %1216 = load i64, i64* %6, align 8
  %1217 = add i64 %1216, -8
  %1218 = inttoptr i64 %1217 to i64*
  store i64 %1215, i64* %1218, align 8
  store i64 %1217, i64* %6, align 8
  store i64 %1214, i64* %3, align 8
  %call2_40baf8 = tail call %struct.Memory* @sub_4024f0.addHolding(%struct.State* nonnull %0, i64 %1214, %struct.Memory* %call2_40bad9)
  %.pre32 = load i64, i64* %3, align 8
  br label %block_.L_40bafd

block_.L_40bafd:                                  ; preds = %block_.L_40bace, %block_40ba9a
  %1219 = phi i64 [ %.pre32, %block_.L_40bace ], [ %1183, %block_40ba9a ]
  %MEMORY.4 = phi %struct.Memory* [ %call2_40baf8, %block_.L_40bace ], [ %call2_40bac4, %block_40ba9a ]
  %1220 = add i64 %1219, 5
  store i64 %1220, i64* %3, align 8
  br label %block_.L_40bb02

block_.L_40bb02:                                  ; preds = %block_40ba69, %block_.L_40bafd
  %1221 = phi i64 [ %1220, %block_.L_40bafd ], [ %1089, %block_40ba69 ]
  %MEMORY.5 = phi %struct.Memory* [ %MEMORY.4, %block_.L_40bafd ], [ %2, %block_40ba69 ]
  store i64 ptrtoint (%G__0x8a0a80_type* @G__0x8a0a80 to i64), i64* %RAX.i1690, align 8
  %1222 = load i64, i64* %RBP.i, align 8
  %1223 = add i64 %1222, -24
  %1224 = add i64 %1221, 14
  store i64 %1224, i64* %3, align 8
  %1225 = inttoptr i64 %1223 to i32*
  %1226 = load i32, i32* %1225, align 4
  %1227 = sext i32 %1226 to i64
  store i64 %1227, i64* %RCX.i1678, align 8
  %1228 = shl nsw i64 %1227, 2
  %1229 = add nsw i64 %1228, 8807744
  %1230 = add i64 %1221, 22
  store i64 %1230, i64* %3, align 8
  %1231 = inttoptr i64 %1229 to i32*
  %1232 = load i32, i32* %1231, align 4
  %1233 = sext i32 %1232 to i64
  store i64 %1233, i64* %RCX.i1678, align 8
  %1234 = shl nsw i64 %1233, 2
  %1235 = add nsw i64 %1234, 6478512
  %1236 = add i64 %1221, 29
  store i64 %1236, i64* %3, align 8
  %1237 = inttoptr i64 %1235 to i32*
  %1238 = load i32, i32* %1237, align 4
  %1239 = zext i32 %1238 to i64
  store i64 %1239, i64* %RDX.i1382, align 8
  %1240 = load i32, i32* bitcast (%G_0x8661c0_type* @G_0x8661c0 to i32*), align 8
  %1241 = sub i32 %1240, %1238
  %1242 = zext i32 %1241 to i64
  store i64 %1242, i64* %RSI.i1670, align 8
  %1243 = icmp ult i32 %1240, %1238
  %1244 = zext i1 %1243 to i8
  store i8 %1244, i8* %14, align 1
  %1245 = and i32 %1241, 255
  %1246 = tail call i32 @llvm.ctpop.i32(i32 %1245)
  %1247 = trunc i32 %1246 to i8
  %1248 = and i8 %1247, 1
  %1249 = xor i8 %1248, 1
  store i8 %1249, i8* %21, align 1
  %1250 = xor i32 %1238, %1240
  %1251 = xor i32 %1250, %1241
  %1252 = lshr i32 %1251, 4
  %1253 = trunc i32 %1252 to i8
  %1254 = and i8 %1253, 1
  store i8 %1254, i8* %26, align 1
  %1255 = icmp eq i32 %1241, 0
  %1256 = zext i1 %1255 to i8
  store i8 %1256, i8* %29, align 1
  %1257 = lshr i32 %1241, 31
  %1258 = trunc i32 %1257 to i8
  store i8 %1258, i8* %32, align 1
  %1259 = lshr i32 %1240, 31
  %1260 = lshr i32 %1238, 31
  %1261 = xor i32 %1260, %1259
  %1262 = xor i32 %1257, %1259
  %1263 = add nuw nsw i32 %1262, %1261
  %1264 = icmp eq i32 %1263, 2
  %1265 = zext i1 %1264 to i8
  store i8 %1265, i8* %38, align 1
  store i32 %1241, i32* bitcast (%G_0x8661c0_type* @G_0x8661c0 to i32*), align 8
  %1266 = add i64 %1221, 49
  store i64 %1266, i64* %3, align 8
  %1267 = load i32, i32* %1225, align 4
  %1268 = sext i32 %1267 to i64
  store i64 %1268, i64* %RCX.i1678, align 8
  %1269 = shl nsw i64 %1268, 2
  %1270 = add nsw i64 %1269, 8807744
  %1271 = add i64 %1221, 57
  store i64 %1271, i64* %3, align 8
  %1272 = inttoptr i64 %1270 to i32*
  %1273 = load i32, i32* %1272, align 4
  %1274 = sext i32 %1273 to i64
  %1275 = mul nsw i64 %1274, 576
  store i64 %1275, i64* %RCX.i1678, align 8
  %1276 = lshr i64 %1275, 63
  %1277 = load i64, i64* %RAX.i1690, align 8
  %1278 = add i64 %1275, %1277
  store i64 %1278, i64* %RAX.i1690, align 8
  %1279 = icmp ult i64 %1278, %1277
  %1280 = icmp ult i64 %1278, %1275
  %1281 = or i1 %1279, %1280
  %1282 = zext i1 %1281 to i8
  store i8 %1282, i8* %14, align 1
  %1283 = trunc i64 %1278 to i32
  %1284 = and i32 %1283, 255
  %1285 = tail call i32 @llvm.ctpop.i32(i32 %1284)
  %1286 = trunc i32 %1285 to i8
  %1287 = and i8 %1286, 1
  %1288 = xor i8 %1287, 1
  store i8 %1288, i8* %21, align 1
  %1289 = xor i64 %1277, %1278
  %1290 = lshr i64 %1289, 4
  %1291 = trunc i64 %1290 to i8
  %1292 = and i8 %1291, 1
  store i8 %1292, i8* %26, align 1
  %1293 = icmp eq i64 %1278, 0
  %1294 = zext i1 %1293 to i8
  store i8 %1294, i8* %29, align 1
  %1295 = lshr i64 %1278, 63
  %1296 = trunc i64 %1295 to i8
  store i8 %1296, i8* %32, align 1
  %1297 = lshr i64 %1277, 63
  %1298 = xor i64 %1295, %1297
  %1299 = xor i64 %1295, %1276
  %1300 = add nuw nsw i64 %1298, %1299
  %1301 = icmp eq i64 %1300, 2
  %1302 = zext i1 %1301 to i8
  store i8 %1302, i8* %38, align 1
  %1303 = load i64, i64* %RBP.i, align 8
  %1304 = add i64 %1303, -24
  %1305 = add i64 %1221, 71
  store i64 %1305, i64* %3, align 8
  %1306 = inttoptr i64 %1304 to i32*
  %1307 = load i32, i32* %1306, align 4
  %1308 = sext i32 %1307 to i64
  store i64 %1308, i64* %RCX.i1678, align 8
  %1309 = shl nsw i64 %1308, 2
  %1310 = add i64 %1309, %1278
  %1311 = add i64 %1221, 74
  store i64 %1311, i64* %3, align 8
  %1312 = inttoptr i64 %1310 to i32*
  %1313 = load i32, i32* %1312, align 4
  %1314 = load i32, i32* bitcast (%G_0x633b40_type* @G_0x633b40 to i32*), align 8
  %1315 = xor i32 %1314, %1313
  store i32 %1315, i32* bitcast (%G_0x633b40_type* @G_0x633b40 to i32*), align 8
  %1316 = load i32, i32* bitcast (%G_0x63ae48_type* @G_0x63ae48 to i32*), align 8
  %1317 = add i32 %1316, -1
  %1318 = zext i32 %1317 to i64
  store i64 %1318, i64* %RDX.i1382, align 8
  %1319 = icmp ne i32 %1316, 0
  %1320 = zext i1 %1319 to i8
  store i8 %1320, i8* %14, align 1
  %1321 = and i32 %1317, 255
  %1322 = tail call i32 @llvm.ctpop.i32(i32 %1321)
  %1323 = trunc i32 %1322 to i8
  %1324 = and i8 %1323, 1
  %1325 = xor i8 %1324, 1
  store i8 %1325, i8* %21, align 1
  %1326 = xor i32 %1316, 16
  %1327 = xor i32 %1326, %1317
  %1328 = lshr i32 %1327, 4
  %1329 = trunc i32 %1328 to i8
  %1330 = and i8 %1329, 1
  store i8 %1330, i8* %26, align 1
  %1331 = icmp eq i32 %1317, 0
  %1332 = zext i1 %1331 to i8
  store i8 %1332, i8* %29, align 1
  %1333 = lshr i32 %1317, 31
  %1334 = trunc i32 %1333 to i8
  store i8 %1334, i8* %32, align 1
  %1335 = lshr i32 %1316, 31
  %1336 = xor i32 %1333, %1335
  %1337 = xor i32 %1333, 1
  %1338 = add nuw nsw i32 %1336, %1337
  %1339 = icmp eq i32 %1338, 2
  %1340 = zext i1 %1339 to i8
  store i8 %1340, i8* %38, align 1
  %1341 = add i64 %1221, 105
  store i64 %1341, i64* %3, align 8
  store i32 %1317, i32* bitcast (%G_0x63ae48_type* @G_0x63ae48 to i32*), align 8
  br label %block_.L_40bb6b

block_.L_40bb6b:                                  ; preds = %block_.L_40bb02, %block_40ba51
  %.pre33 = phi i64 [ %1303, %block_.L_40bb02 ], [ %.pre33.pre, %block_40ba51 ]
  %1342 = phi i64 [ %1341, %block_.L_40bb02 ], [ %1059, %block_40ba51 ]
  %MEMORY.6 = phi %struct.Memory* [ %MEMORY.5, %block_.L_40bb02 ], [ %2, %block_40ba51 ]
  %1343 = add i64 %1342, 5
  store i64 %1343, i64* %3, align 8
  br label %block_.L_40bb70

block_.L_40bb70:                                  ; preds = %block_.L_40b990, %block_.L_40bb6b
  %1344 = phi i64 [ %1019, %block_.L_40b990 ], [ %1343, %block_.L_40bb6b ]
  %1345 = phi i64 [ %1004, %block_.L_40b990 ], [ %.pre33, %block_.L_40bb6b ]
  %MEMORY.7 = phi %struct.Memory* [ %2, %block_.L_40b990 ], [ %MEMORY.6, %block_.L_40bb6b ]
  %1346 = add i64 %1345, -20
  %1347 = add i64 %1344, 4
  store i64 %1347, i64* %3, align 8
  %1348 = inttoptr i64 %1346 to i32*
  %1349 = load i32, i32* %1348, align 4
  %1350 = sext i32 %1349 to i64
  store i64 %1350, i64* %RAX.i1690, align 8
  %1351 = shl nsw i64 %1350, 2
  %1352 = add nsw i64 %1351, 8807744
  %1353 = add i64 %1344, 12
  store i64 %1353, i64* %3, align 8
  %1354 = inttoptr i64 %1352 to i32*
  %1355 = load i32, i32* %1354, align 4
  %1356 = add i32 %1355, -1
  %1357 = icmp eq i32 %1355, 0
  %1358 = zext i1 %1357 to i8
  store i8 %1358, i8* %14, align 1
  %1359 = and i32 %1356, 255
  %1360 = tail call i32 @llvm.ctpop.i32(i32 %1359)
  %1361 = trunc i32 %1360 to i8
  %1362 = and i8 %1361, 1
  %1363 = xor i8 %1362, 1
  store i8 %1363, i8* %21, align 1
  %1364 = xor i32 %1356, %1355
  %1365 = lshr i32 %1364, 4
  %1366 = trunc i32 %1365 to i8
  %1367 = and i8 %1366, 1
  store i8 %1367, i8* %26, align 1
  %1368 = icmp eq i32 %1356, 0
  %1369 = zext i1 %1368 to i8
  store i8 %1369, i8* %29, align 1
  %1370 = lshr i32 %1356, 31
  %1371 = trunc i32 %1370 to i8
  store i8 %1371, i8* %32, align 1
  %1372 = lshr i32 %1355, 31
  %1373 = xor i32 %1370, %1372
  %1374 = add nuw nsw i32 %1373, %1372
  %1375 = icmp eq i32 %1374, 2
  %1376 = zext i1 %1375 to i8
  store i8 %1376, i8* %38, align 1
  %.v40 = select i1 %1368, i64 18, i64 868
  %1377 = add i64 %1344, %.v40
  store i64 %1377, i64* %3, align 8
  br i1 %1368, label %block_40bb82, label %block_.L_40bed4

block_40bb82:                                     ; preds = %block_.L_40bb70
  %1378 = add i64 %1345, -32
  %1379 = add i64 %1377, 4
  store i64 %1379, i64* %3, align 8
  %1380 = inttoptr i64 %1378 to i32*
  %1381 = load i32, i32* %1380, align 4
  store i8 0, i8* %14, align 1
  %1382 = and i32 %1381, 255
  %1383 = tail call i32 @llvm.ctpop.i32(i32 %1382)
  %1384 = trunc i32 %1383 to i8
  %1385 = and i8 %1384, 1
  %1386 = xor i8 %1385, 1
  store i8 %1386, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1387 = icmp eq i32 %1381, 0
  %1388 = zext i1 %1387 to i8
  store i8 %1388, i8* %29, align 1
  %1389 = lshr i32 %1381, 31
  %1390 = trunc i32 %1389 to i8
  store i8 %1390, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v51 = select i1 %1387, i64 261, i64 10
  %1391 = add i64 %1377, %.v51
  store i64 %1391, i64* %3, align 8
  br i1 %1387, label %block_.L_40bc87, label %block_40bb8c

block_40bb8c:                                     ; preds = %block_40bb82
  store i64 ptrtoint (%G__0x8a0a80_type* @G__0x8a0a80 to i64), i64* %RAX.i1690, align 8
  %1392 = add i64 %1391, 13
  store i64 %1392, i64* %3, align 8
  %1393 = load i32, i32* %1380, align 4
  %1394 = zext i32 %1393 to i64
  store i64 %1394, i64* %RCX.i1678, align 8
  %1395 = add i64 %1345, -24
  %1396 = add i64 %1391, 17
  store i64 %1396, i64* %3, align 8
  %1397 = inttoptr i64 %1395 to i32*
  %1398 = load i32, i32* %1397, align 4
  %1399 = sext i32 %1398 to i64
  store i64 %1399, i64* %RDX.i1382, align 8
  %1400 = shl nsw i64 %1399, 2
  %1401 = add nsw i64 %1400, 8807744
  %1402 = add i64 %1391, 24
  store i64 %1402, i64* %3, align 8
  %1403 = inttoptr i64 %1401 to i32*
  store i32 %1393, i32* %1403, align 4
  %1404 = load i64, i64* %RBP.i, align 8
  %1405 = add i64 %1404, -20
  %1406 = load i64, i64* %3, align 8
  %1407 = add i64 %1406, 4
  store i64 %1407, i64* %3, align 8
  %1408 = inttoptr i64 %1405 to i32*
  %1409 = load i32, i32* %1408, align 4
  %1410 = sext i32 %1409 to i64
  store i64 %1410, i64* %RDX.i1382, align 8
  %1411 = shl nsw i64 %1410, 2
  %1412 = add nsw i64 %1411, 8807744
  %1413 = add i64 %1406, 15
  store i64 %1413, i64* %3, align 8
  %1414 = inttoptr i64 %1412 to i32*
  store i32 13, i32* %1414, align 4
  %1415 = load i64, i64* %RBP.i, align 8
  %1416 = add i64 %1415, -24
  %1417 = load i64, i64* %3, align 8
  %1418 = add i64 %1417, 4
  store i64 %1418, i64* %3, align 8
  %1419 = inttoptr i64 %1416 to i32*
  %1420 = load i32, i32* %1419, align 4
  %1421 = sext i32 %1420 to i64
  store i64 %1421, i64* %RDX.i1382, align 8
  %1422 = shl nsw i64 %1421, 2
  %1423 = add nsw i64 %1422, 8922032
  %1424 = add i64 %1417, 11
  store i64 %1424, i64* %3, align 8
  %1425 = inttoptr i64 %1423 to i32*
  %1426 = load i32, i32* %1425, align 4
  %1427 = add i32 %1426, 1
  %1428 = zext i32 %1427 to i64
  store i64 %1428, i64* %RCX.i1678, align 8
  %1429 = icmp eq i32 %1426, -1
  %1430 = icmp eq i32 %1427, 0
  %1431 = or i1 %1429, %1430
  %1432 = zext i1 %1431 to i8
  store i8 %1432, i8* %14, align 1
  %1433 = and i32 %1427, 255
  %1434 = tail call i32 @llvm.ctpop.i32(i32 %1433)
  %1435 = trunc i32 %1434 to i8
  %1436 = and i8 %1435, 1
  %1437 = xor i8 %1436, 1
  store i8 %1437, i8* %21, align 1
  %1438 = xor i32 %1427, %1426
  %1439 = lshr i32 %1438, 4
  %1440 = trunc i32 %1439 to i8
  %1441 = and i8 %1440, 1
  store i8 %1441, i8* %26, align 1
  %1442 = zext i1 %1430 to i8
  store i8 %1442, i8* %29, align 1
  %1443 = lshr i32 %1427, 31
  %1444 = trunc i32 %1443 to i8
  store i8 %1444, i8* %32, align 1
  %1445 = lshr i32 %1426, 31
  %1446 = xor i32 %1443, %1445
  %1447 = add nuw nsw i32 %1446, %1443
  %1448 = icmp eq i32 %1447, 2
  %1449 = zext i1 %1448 to i8
  store i8 %1449, i8* %38, align 1
  %1450 = add i64 %1417, 21
  store i64 %1450, i64* %3, align 8
  store i32 %1427, i32* %1425, align 4
  %1451 = load i64, i64* %RBP.i, align 8
  %1452 = add i64 %1451, -20
  %1453 = load i64, i64* %3, align 8
  %1454 = add i64 %1453, 4
  store i64 %1454, i64* %3, align 8
  %1455 = inttoptr i64 %1452 to i32*
  %1456 = load i32, i32* %1455, align 4
  %1457 = sext i32 %1456 to i64
  store i64 %1457, i64* %RDX.i1382, align 8
  %1458 = shl nsw i64 %1457, 2
  %1459 = add nsw i64 %1458, 8922032
  %1460 = add i64 %1453, 11
  store i64 %1460, i64* %3, align 8
  %1461 = inttoptr i64 %1459 to i32*
  %1462 = load i32, i32* %1461, align 4
  %1463 = add i32 %1462, 1
  %1464 = add i64 %1453, 21
  store i64 %1464, i64* %3, align 8
  store i32 %1463, i32* %1461, align 4
  %1465 = load i64, i64* %3, align 8
  %1466 = load i32, i32* bitcast (%G_0x8661bc_type* @G_0x8661bc to i32*), align 8
  %1467 = xor i32 %1466, 1
  %1468 = zext i32 %1467 to i64
  store i64 %1468, i64* %RCX.i1678, align 8
  store i8 0, i8* %14, align 1
  %1469 = and i32 %1467, 255
  %1470 = tail call i32 @llvm.ctpop.i32(i32 %1469)
  %1471 = trunc i32 %1470 to i8
  %1472 = and i8 %1471, 1
  %1473 = xor i8 %1472, 1
  store i8 %1473, i8* %21, align 1
  %1474 = icmp eq i32 %1467, 0
  %1475 = zext i1 %1474 to i8
  store i8 %1475, i8* %29, align 1
  %1476 = lshr i32 %1466, 31
  %1477 = trunc i32 %1476 to i8
  store i8 %1477, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i32 %1467, i32* bitcast (%G_0x8661bc_type* @G_0x8661bc to i32*), align 8
  %1478 = load i64, i64* %RBP.i, align 8
  %1479 = add i64 %1478, -24
  %1480 = add i64 %1465, 21
  store i64 %1480, i64* %3, align 8
  %1481 = inttoptr i64 %1479 to i32*
  %1482 = load i32, i32* %1481, align 4
  %1483 = sext i32 %1482 to i64
  store i64 %1483, i64* %RDX.i1382, align 8
  %1484 = shl nsw i64 %1483, 2
  %1485 = add nsw i64 %1484, 8807152
  %1486 = add i64 %1465, 29
  store i64 %1486, i64* %3, align 8
  %1487 = inttoptr i64 %1485 to i32*
  %1488 = load i32, i32* %1487, align 4
  %1489 = sext i32 %1488 to i64
  store i64 %1489, i64* %RDX.i1382, align 8
  %1490 = shl nsw i64 %1489, 2
  %1491 = add nsw i64 %1490, 6525216
  %1492 = add i64 %1465, 40
  store i64 %1492, i64* %3, align 8
  %1493 = inttoptr i64 %1491 to i32*
  store i32 1, i32* %1493, align 4
  %1494 = load i64, i64* %RBP.i, align 8
  %1495 = add i64 %1494, -20
  %1496 = load i64, i64* %3, align 8
  %1497 = add i64 %1496, 4
  store i64 %1497, i64* %3, align 8
  %1498 = inttoptr i64 %1495 to i32*
  %1499 = load i32, i32* %1498, align 4
  %1500 = sext i32 %1499 to i64
  store i64 %1500, i64* %RDX.i1382, align 8
  %1501 = shl nsw i64 %1500, 2
  %1502 = add nsw i64 %1501, 9047232
  %1503 = add i64 %1496, 11
  store i64 %1503, i64* %3, align 8
  %1504 = inttoptr i64 %1502 to i32*
  %1505 = load i32, i32* %1504, align 4
  %1506 = load i32, i32* bitcast (%G_0x633b40_type* @G_0x633b40 to i32*), align 8
  %1507 = xor i32 %1506, %1505
  %1508 = zext i32 %1507 to i64
  store i64 %1508, i64* %RCX.i1678, align 8
  store i8 0, i8* %14, align 1
  %1509 = and i32 %1507, 255
  %1510 = tail call i32 @llvm.ctpop.i32(i32 %1509)
  %1511 = trunc i32 %1510 to i8
  %1512 = and i8 %1511, 1
  %1513 = xor i8 %1512, 1
  store i8 %1513, i8* %21, align 1
  %1514 = icmp eq i32 %1507, 0
  %1515 = zext i1 %1514 to i8
  store i8 %1515, i8* %29, align 1
  %1516 = lshr i32 %1507, 31
  %1517 = trunc i32 %1516 to i8
  store i8 %1517, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i32 %1507, i32* bitcast (%G_0x633b40_type* @G_0x633b40 to i32*), align 8
  %1518 = add i64 %1494, -32
  %1519 = add i64 %1496, 29
  store i64 %1519, i64* %3, align 8
  %1520 = inttoptr i64 %1518 to i32*
  %1521 = load i32, i32* %1520, align 4
  %1522 = sext i32 %1521 to i64
  %1523 = mul nsw i64 %1522, 576
  store i64 %1523, i64* %RDX.i1382, align 8
  %1524 = lshr i64 %1523, 63
  %1525 = load i64, i64* %RAX.i1690, align 8
  %1526 = add i64 %1523, %1525
  store i64 %1526, i64* %RAX.i1690, align 8
  %1527 = icmp ult i64 %1526, %1525
  %1528 = icmp ult i64 %1526, %1523
  %1529 = or i1 %1527, %1528
  %1530 = zext i1 %1529 to i8
  store i8 %1530, i8* %14, align 1
  %1531 = trunc i64 %1526 to i32
  %1532 = and i32 %1531, 255
  %1533 = tail call i32 @llvm.ctpop.i32(i32 %1532)
  %1534 = trunc i32 %1533 to i8
  %1535 = and i8 %1534, 1
  %1536 = xor i8 %1535, 1
  store i8 %1536, i8* %21, align 1
  %1537 = xor i64 %1525, %1526
  %1538 = lshr i64 %1537, 4
  %1539 = trunc i64 %1538 to i8
  %1540 = and i8 %1539, 1
  store i8 %1540, i8* %26, align 1
  %1541 = icmp eq i64 %1526, 0
  %1542 = zext i1 %1541 to i8
  store i8 %1542, i8* %29, align 1
  %1543 = lshr i64 %1526, 63
  %1544 = trunc i64 %1543 to i8
  store i8 %1544, i8* %32, align 1
  %1545 = lshr i64 %1525, 63
  %1546 = xor i64 %1543, %1545
  %1547 = xor i64 %1543, %1524
  %1548 = add nuw nsw i64 %1546, %1547
  %1549 = icmp eq i64 %1548, 2
  %1550 = zext i1 %1549 to i8
  store i8 %1550, i8* %38, align 1
  %1551 = load i64, i64* %RBP.i, align 8
  %1552 = add i64 %1551, -24
  %1553 = add i64 %1496, 43
  store i64 %1553, i64* %3, align 8
  %1554 = inttoptr i64 %1552 to i32*
  %1555 = load i32, i32* %1554, align 4
  %1556 = sext i32 %1555 to i64
  store i64 %1556, i64* %RDX.i1382, align 8
  %1557 = shl nsw i64 %1556, 2
  %1558 = add i64 %1557, %1526
  %1559 = add i64 %1496, 46
  store i64 %1559, i64* %3, align 8
  %1560 = inttoptr i64 %1558 to i32*
  %1561 = load i32, i32* %1560, align 4
  %1562 = xor i32 %1507, %1561
  store i32 %1562, i32* bitcast (%G_0x633b40_type* @G_0x633b40 to i32*), align 8
  %1563 = load i32, i32* bitcast (%G_0x62dab4_type* @G_0x62dab4 to i32*), align 8
  %1564 = zext i32 %1563 to i64
  store i64 %1564, i64* %RCX.i1678, align 8
  %1565 = load i32, i32* bitcast (%G_0x8661c0_type* @G_0x8661c0 to i32*), align 8
  %1566 = sub i32 %1565, %1563
  %1567 = zext i32 %1566 to i64
  store i64 %1567, i64* %RSI.i1670, align 8
  %1568 = icmp ult i32 %1565, %1563
  %1569 = zext i1 %1568 to i8
  store i8 %1569, i8* %14, align 1
  %1570 = and i32 %1566, 255
  %1571 = tail call i32 @llvm.ctpop.i32(i32 %1570)
  %1572 = trunc i32 %1571 to i8
  %1573 = and i8 %1572, 1
  %1574 = xor i8 %1573, 1
  store i8 %1574, i8* %21, align 1
  %1575 = xor i32 %1563, %1565
  %1576 = xor i32 %1575, %1566
  %1577 = lshr i32 %1576, 4
  %1578 = trunc i32 %1577 to i8
  %1579 = and i8 %1578, 1
  store i8 %1579, i8* %26, align 1
  %1580 = icmp eq i32 %1566, 0
  %1581 = zext i1 %1580 to i8
  store i8 %1581, i8* %29, align 1
  %1582 = lshr i32 %1566, 31
  %1583 = trunc i32 %1582 to i8
  store i8 %1583, i8* %32, align 1
  %1584 = lshr i32 %1565, 31
  %1585 = lshr i32 %1563, 31
  %1586 = xor i32 %1585, %1584
  %1587 = xor i32 %1582, %1584
  %1588 = add nuw nsw i32 %1587, %1586
  %1589 = icmp eq i32 %1588, 2
  %1590 = zext i1 %1589 to i8
  store i8 %1590, i8* %38, align 1
  store i32 %1566, i32* bitcast (%G_0x8661c0_type* @G_0x8661c0 to i32*), align 8
  %1591 = add i64 %1551, -32
  %1592 = add i64 %1496, 87
  store i64 %1592, i64* %3, align 8
  %1593 = inttoptr i64 %1591 to i32*
  %1594 = load i32, i32* %1593, align 4
  %1595 = sext i32 %1594 to i64
  store i64 %1595, i64* %RAX.i1690, align 8
  %1596 = shl nsw i64 %1595, 2
  %1597 = add nsw i64 %1596, 6478512
  %1598 = add i64 %1496, 94
  store i64 %1598, i64* %3, align 8
  %1599 = inttoptr i64 %1597 to i32*
  %1600 = load i32, i32* %1599, align 4
  %1601 = add i32 %1566, %1600
  store i32 %1601, i32* bitcast (%G_0x8661c0_type* @G_0x8661c0 to i32*), align 8
  %1602 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %1603 = add i32 %1602, 1
  %1604 = zext i32 %1603 to i64
  store i64 %1604, i64* %RCX.i1678, align 8
  %1605 = icmp eq i32 %1602, -1
  %1606 = icmp eq i32 %1603, 0
  %1607 = or i1 %1605, %1606
  %1608 = zext i1 %1607 to i8
  store i8 %1608, i8* %14, align 1
  %1609 = and i32 %1603, 255
  %1610 = tail call i32 @llvm.ctpop.i32(i32 %1609)
  %1611 = trunc i32 %1610 to i8
  %1612 = and i8 %1611, 1
  %1613 = xor i8 %1612, 1
  store i8 %1613, i8* %21, align 1
  %1614 = xor i32 %1603, %1602
  %1615 = lshr i32 %1614, 4
  %1616 = trunc i32 %1615 to i8
  %1617 = and i8 %1616, 1
  store i8 %1617, i8* %26, align 1
  %1618 = zext i1 %1606 to i8
  store i8 %1618, i8* %29, align 1
  %1619 = lshr i32 %1603, 31
  %1620 = trunc i32 %1619 to i8
  store i8 %1620, i8* %32, align 1
  %1621 = lshr i32 %1602, 31
  %1622 = xor i32 %1619, %1621
  %1623 = add nuw nsw i32 %1622, %1619
  %1624 = icmp eq i32 %1623, 2
  %1625 = zext i1 %1624 to i8
  store i8 %1625, i8* %38, align 1
  store i32 %1603, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %1626 = add i64 %1496, 2953
  store i64 %1626, i64* %3, align 8
  br label %block_.L_40c78e

block_.L_40bc87:                                  ; preds = %block_40bb82
  %1627 = add i64 %1345, -16
  %1628 = add i64 %1391, 4
  store i64 %1628, i64* %3, align 8
  %1629 = inttoptr i64 %1627 to i32*
  %1630 = load i32, i32* %1629, align 4
  store i8 0, i8* %14, align 1
  %1631 = and i32 %1630, 255
  %1632 = tail call i32 @llvm.ctpop.i32(i32 %1631)
  %1633 = trunc i32 %1632 to i8
  %1634 = and i8 %1633, 1
  %1635 = xor i8 %1634, 1
  store i8 %1635, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1636 = icmp eq i32 %1630, 0
  %1637 = zext i1 %1636 to i8
  store i8 %1637, i8* %29, align 1
  %1638 = lshr i32 %1630, 31
  %1639 = trunc i32 %1638 to i8
  store i8 %1639, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v52 = select i1 %1636, i64 398, i64 10
  %1640 = add i64 %1391, %.v52
  store i64 %1640, i64* %3, align 8
  br i1 %1636, label %block_.L_40be15, label %block_40bc91

block_40bc91:                                     ; preds = %block_.L_40bc87
  store i64 1, i64* %RDI.i1687, align 8
  store i64 0, i64* %RSI.i1670, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %1641 = add i64 %1640, 11
  store i64 %1641, i64* %3, align 8
  %1642 = load i32, i32* %1348, align 4
  %1643 = sext i32 %1642 to i64
  store i64 %1643, i64* %RAX.i1690, align 8
  %1644 = shl nsw i64 %1643, 2
  %1645 = add nsw i64 %1644, 9047232
  %1646 = add i64 %1640, 18
  store i64 %1646, i64* %3, align 8
  %1647 = inttoptr i64 %1645 to i32*
  %1648 = load i32, i32* %1647, align 4
  %1649 = load i32, i32* bitcast (%G_0x633b40_type* @G_0x633b40 to i32*), align 8
  %1650 = xor i32 %1649, %1648
  %1651 = zext i32 %1650 to i64
  store i64 %1651, i64* %RCX.i1678, align 8
  store i8 0, i8* %14, align 1
  %1652 = and i32 %1650, 255
  %1653 = tail call i32 @llvm.ctpop.i32(i32 %1652)
  %1654 = trunc i32 %1653 to i8
  %1655 = and i8 %1654, 1
  %1656 = xor i8 %1655, 1
  store i8 %1656, i8* %21, align 1
  %1657 = icmp eq i32 %1650, 0
  %1658 = zext i1 %1657 to i8
  store i8 %1658, i8* %29, align 1
  %1659 = lshr i32 %1650, 31
  %1660 = trunc i32 %1659 to i8
  store i8 %1660, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i32 %1650, i32* bitcast (%G_0x633b40_type* @G_0x633b40 to i32*), align 8
  %1661 = add i64 %1345, -24
  %1662 = add i64 %1640, 35
  store i64 %1662, i64* %3, align 8
  %1663 = inttoptr i64 %1661 to i32*
  %1664 = load i32, i32* %1663, align 4
  %1665 = add i32 %1664, -12
  %1666 = zext i32 %1665 to i64
  store i64 %1666, i64* %RCX.i1678, align 8
  %1667 = icmp ult i32 %1664, 12
  %1668 = zext i1 %1667 to i8
  store i8 %1668, i8* %14, align 1
  %1669 = and i32 %1665, 255
  %1670 = tail call i32 @llvm.ctpop.i32(i32 %1669)
  %1671 = trunc i32 %1670 to i8
  %1672 = and i8 %1671, 1
  %1673 = xor i8 %1672, 1
  store i8 %1673, i8* %21, align 1
  %1674 = xor i32 %1665, %1664
  %1675 = lshr i32 %1674, 4
  %1676 = trunc i32 %1675 to i8
  %1677 = and i8 %1676, 1
  store i8 %1677, i8* %26, align 1
  %1678 = icmp eq i32 %1665, 0
  %1679 = zext i1 %1678 to i8
  store i8 %1679, i8* %29, align 1
  %1680 = lshr i32 %1665, 31
  %1681 = trunc i32 %1680 to i8
  store i8 %1681, i8* %32, align 1
  %1682 = lshr i32 %1664, 31
  %1683 = xor i32 %1680, %1682
  %1684 = add nuw nsw i32 %1683, %1682
  %1685 = icmp eq i32 %1684, 2
  %1686 = zext i1 %1685 to i8
  store i8 %1686, i8* %38, align 1
  %1687 = sext i32 %1665 to i64
  store i64 %1687, i64* %RAX.i1690, align 8
  %1688 = shl nsw i64 %1687, 2
  %1689 = add nsw i64 %1688, 9047808
  %1690 = add i64 %1640, 48
  store i64 %1690, i64* %3, align 8
  %1691 = inttoptr i64 %1689 to i32*
  %1692 = load i32, i32* %1691, align 4
  %1693 = xor i32 %1650, %1692
  %1694 = zext i32 %1693 to i64
  store i64 %1694, i64* %RCX.i1678, align 8
  store i8 0, i8* %14, align 1
  %1695 = and i32 %1693, 255
  %1696 = tail call i32 @llvm.ctpop.i32(i32 %1695)
  %1697 = trunc i32 %1696 to i8
  %1698 = and i8 %1697, 1
  %1699 = xor i8 %1698, 1
  store i8 %1699, i8* %21, align 1
  %1700 = icmp eq i32 %1693, 0
  %1701 = zext i1 %1700 to i8
  store i8 %1701, i8* %29, align 1
  %1702 = lshr i32 %1693, 31
  %1703 = trunc i32 %1702 to i8
  store i8 %1703, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i32 %1693, i32* bitcast (%G_0x633b40_type* @G_0x633b40 to i32*), align 8
  %1704 = load i64, i64* %RBP.i, align 8
  %1705 = add i64 %1704, -24
  %1706 = add i64 %1640, 66
  store i64 %1706, i64* %3, align 8
  %1707 = inttoptr i64 %1705 to i32*
  %1708 = load i32, i32* %1707, align 4
  %1709 = sext i32 %1708 to i64
  store i64 %1709, i64* %RAX.i1690, align 8
  %1710 = shl nsw i64 %1709, 2
  %1711 = add nsw i64 %1710, 9047232
  %1712 = add i64 %1640, 73
  store i64 %1712, i64* %3, align 8
  %1713 = inttoptr i64 %1711 to i32*
  %1714 = load i32, i32* %1713, align 4
  %1715 = xor i32 %1693, %1714
  store i32 %1715, i32* bitcast (%G_0x633b40_type* @G_0x633b40 to i32*), align 8
  %1716 = load i32, i32* bitcast (%G_0x62dab8_type* @G_0x62dab8 to i32*), align 8
  %1717 = zext i32 %1716 to i64
  store i64 %1717, i64* %RCX.i1678, align 8
  %1718 = load i32, i32* bitcast (%G_0x8661c0_type* @G_0x8661c0 to i32*), align 8
  %1719 = sub i32 %1718, %1716
  %1720 = zext i32 %1719 to i64
  store i64 %1720, i64* %RDX.i1382, align 8
  %1721 = icmp ult i32 %1718, %1716
  %1722 = zext i1 %1721 to i8
  store i8 %1722, i8* %14, align 1
  %1723 = and i32 %1719, 255
  %1724 = tail call i32 @llvm.ctpop.i32(i32 %1723)
  %1725 = trunc i32 %1724 to i8
  %1726 = and i8 %1725, 1
  %1727 = xor i8 %1726, 1
  store i8 %1727, i8* %21, align 1
  %1728 = xor i32 %1716, %1718
  %1729 = xor i32 %1728, %1719
  %1730 = lshr i32 %1729, 4
  %1731 = trunc i32 %1730 to i8
  %1732 = and i8 %1731, 1
  store i8 %1732, i8* %26, align 1
  %1733 = icmp eq i32 %1719, 0
  %1734 = zext i1 %1733 to i8
  store i8 %1734, i8* %29, align 1
  %1735 = lshr i32 %1719, 31
  %1736 = trunc i32 %1735 to i8
  store i8 %1736, i8* %32, align 1
  %1737 = lshr i32 %1718, 31
  %1738 = lshr i32 %1716, 31
  %1739 = xor i32 %1738, %1737
  %1740 = xor i32 %1735, %1737
  %1741 = add nuw nsw i32 %1740, %1739
  %1742 = icmp eq i32 %1741, 2
  %1743 = zext i1 %1742 to i8
  store i8 %1743, i8* %38, align 1
  store i32 %1719, i32* bitcast (%G_0x8661c0_type* @G_0x8661c0 to i32*), align 8
  %1744 = add i64 %1640, 114
  store i64 %1744, i64* %3, align 8
  %1745 = load i32, i32* %1707, align 4
  %1746 = sext i32 %1745 to i64
  store i64 %1746, i64* %RAX.i1690, align 8
  %1747 = shl nsw i64 %1746, 2
  %1748 = add nsw i64 %1747, 8807744
  %1749 = add i64 %1640, 125
  store i64 %1749, i64* %3, align 8
  %1750 = inttoptr i64 %1748 to i32*
  store i32 1, i32* %1750, align 4
  %1751 = load i64, i64* %RBP.i, align 8
  %1752 = add i64 %1751, -20
  %1753 = load i64, i64* %3, align 8
  %1754 = add i64 %1753, 4
  store i64 %1754, i64* %3, align 8
  %1755 = inttoptr i64 %1752 to i32*
  %1756 = load i32, i32* %1755, align 4
  %1757 = sext i32 %1756 to i64
  store i64 %1757, i64* %RAX.i1690, align 8
  %1758 = shl nsw i64 %1757, 2
  %1759 = add nsw i64 %1758, 8807744
  %1760 = add i64 %1753, 15
  store i64 %1760, i64* %3, align 8
  %1761 = inttoptr i64 %1759 to i32*
  store i32 13, i32* %1761, align 4
  %1762 = load i64, i64* %3, align 8
  %1763 = add i64 %1762, -38957
  %1764 = add i64 %1762, 5
  %1765 = load i64, i64* %6, align 8
  %1766 = add i64 %1765, -8
  %1767 = inttoptr i64 %1766 to i64*
  store i64 %1764, i64* %1767, align 8
  store i64 %1766, i64* %6, align 8
  store i64 %1763, i64* %3, align 8
  %call2_40bd1d = tail call %struct.Memory* @sub_4024f0.addHolding(%struct.State* nonnull %0, i64 %1763, %struct.Memory* %MEMORY.7)
  %1768 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x880b20_type* @G__0x880b20 to i64), i64* %RAX.i1690, align 8
  %1769 = load i32, i32* bitcast (%G_0x63ae48_type* @G_0x63ae48 to i32*), align 8
  %1770 = add i32 %1769, -1
  %1771 = zext i32 %1770 to i64
  store i64 %1771, i64* %RCX.i1678, align 8
  %1772 = icmp ne i32 %1769, 0
  %1773 = zext i1 %1772 to i8
  store i8 %1773, i8* %14, align 1
  %1774 = and i32 %1770, 255
  %1775 = tail call i32 @llvm.ctpop.i32(i32 %1774)
  %1776 = trunc i32 %1775 to i8
  %1777 = and i8 %1776, 1
  %1778 = xor i8 %1777, 1
  store i8 %1778, i8* %21, align 1
  %1779 = xor i32 %1769, 16
  %1780 = xor i32 %1779, %1770
  %1781 = lshr i32 %1780, 4
  %1782 = trunc i32 %1781 to i8
  %1783 = and i8 %1782, 1
  store i8 %1783, i8* %26, align 1
  %1784 = icmp eq i32 %1770, 0
  %1785 = zext i1 %1784 to i8
  store i8 %1785, i8* %29, align 1
  %1786 = lshr i32 %1770, 31
  %1787 = trunc i32 %1786 to i8
  store i8 %1787, i8* %32, align 1
  %1788 = lshr i32 %1769, 31
  %1789 = xor i32 %1786, %1788
  %1790 = xor i32 %1786, 1
  %1791 = add nuw nsw i32 %1789, %1790
  %1792 = icmp eq i32 %1791, 2
  %1793 = zext i1 %1792 to i8
  store i8 %1793, i8* %38, align 1
  store i32 %1770, i32* bitcast (%G_0x63ae48_type* @G_0x63ae48 to i32*), align 8
  %1794 = load i64, i64* %RBP.i, align 8
  %1795 = add i64 %1794, -24
  %1796 = add i64 %1768, 30
  store i64 %1796, i64* %3, align 8
  %1797 = inttoptr i64 %1795 to i32*
  %1798 = load i32, i32* %1797, align 4
  %1799 = add i32 %1798, -12
  %1800 = zext i32 %1799 to i64
  store i64 %1800, i64* %RCX.i1678, align 8
  %1801 = icmp ult i32 %1798, 12
  %1802 = zext i1 %1801 to i8
  store i8 %1802, i8* %14, align 1
  %1803 = and i32 %1799, 255
  %1804 = tail call i32 @llvm.ctpop.i32(i32 %1803)
  %1805 = trunc i32 %1804 to i8
  %1806 = and i8 %1805, 1
  %1807 = xor i8 %1806, 1
  store i8 %1807, i8* %21, align 1
  %1808 = xor i32 %1799, %1798
  %1809 = lshr i32 %1808, 4
  %1810 = trunc i32 %1809 to i8
  %1811 = and i8 %1810, 1
  store i8 %1811, i8* %26, align 1
  %1812 = icmp eq i32 %1799, 0
  %1813 = zext i1 %1812 to i8
  store i8 %1813, i8* %29, align 1
  %1814 = lshr i32 %1799, 31
  %1815 = trunc i32 %1814 to i8
  store i8 %1815, i8* %32, align 1
  %1816 = lshr i32 %1798, 31
  %1817 = xor i32 %1814, %1816
  %1818 = add nuw nsw i32 %1817, %1816
  %1819 = icmp eq i32 %1818, 2
  %1820 = zext i1 %1819 to i8
  store i8 %1820, i8* %38, align 1
  %R8.i993 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %1821 = sext i32 %1799 to i64
  store i64 %1821, i64* %R8.i993, align 8
  %1822 = shl nsw i64 %1821, 2
  %1823 = add nsw i64 %1822, 8807744
  %1824 = add i64 %1768, 48
  store i64 %1824, i64* %3, align 8
  %1825 = inttoptr i64 %1823 to i32*
  store i32 13, i32* %1825, align 4
  %1826 = load i64, i64* %RBP.i, align 8
  %1827 = add i64 %1826, -24
  %1828 = load i64, i64* %3, align 8
  %1829 = add i64 %1828, 4
  store i64 %1829, i64* %3, align 8
  %1830 = inttoptr i64 %1827 to i32*
  %1831 = load i32, i32* %1830, align 4
  %1832 = sext i32 %1831 to i64
  store i64 %1832, i64* %R8.i993, align 8
  %1833 = shl nsw i64 %1832, 2
  %1834 = add nsw i64 %1833, 8922032
  %1835 = add i64 %1828, 12
  store i64 %1835, i64* %3, align 8
  %1836 = inttoptr i64 %1834 to i32*
  %1837 = load i32, i32* %1836, align 4
  %1838 = add i32 %1837, 1
  %1839 = zext i32 %1838 to i64
  store i64 %1839, i64* %RCX.i1678, align 8
  %1840 = icmp eq i32 %1837, -1
  %1841 = icmp eq i32 %1838, 0
  %1842 = or i1 %1840, %1841
  %1843 = zext i1 %1842 to i8
  store i8 %1843, i8* %14, align 1
  %1844 = and i32 %1838, 255
  %1845 = tail call i32 @llvm.ctpop.i32(i32 %1844)
  %1846 = trunc i32 %1845 to i8
  %1847 = and i8 %1846, 1
  %1848 = xor i8 %1847, 1
  store i8 %1848, i8* %21, align 1
  %1849 = xor i32 %1838, %1837
  %1850 = lshr i32 %1849, 4
  %1851 = trunc i32 %1850 to i8
  %1852 = and i8 %1851, 1
  store i8 %1852, i8* %26, align 1
  %1853 = zext i1 %1841 to i8
  store i8 %1853, i8* %29, align 1
  %1854 = lshr i32 %1838, 31
  %1855 = trunc i32 %1854 to i8
  store i8 %1855, i8* %32, align 1
  %1856 = lshr i32 %1837, 31
  %1857 = xor i32 %1854, %1856
  %1858 = add nuw nsw i32 %1857, %1854
  %1859 = icmp eq i32 %1858, 2
  %1860 = zext i1 %1859 to i8
  store i8 %1860, i8* %38, align 1
  %1861 = add i64 %1828, 23
  store i64 %1861, i64* %3, align 8
  store i32 %1838, i32* %1836, align 4
  %1862 = load i64, i64* %RBP.i, align 8
  %1863 = add i64 %1862, -20
  %1864 = load i64, i64* %3, align 8
  %1865 = add i64 %1864, 4
  store i64 %1865, i64* %3, align 8
  %1866 = inttoptr i64 %1863 to i32*
  %1867 = load i32, i32* %1866, align 4
  %1868 = sext i32 %1867 to i64
  store i64 %1868, i64* %R8.i993, align 8
  %1869 = shl nsw i64 %1868, 2
  %1870 = add nsw i64 %1869, 8922032
  %1871 = add i64 %1864, 12
  store i64 %1871, i64* %3, align 8
  %1872 = inttoptr i64 %1870 to i32*
  %1873 = load i32, i32* %1872, align 4
  %1874 = add i32 %1873, 1
  %1875 = zext i32 %1874 to i64
  store i64 %1875, i64* %RCX.i1678, align 8
  %1876 = icmp eq i32 %1873, -1
  %1877 = icmp eq i32 %1874, 0
  %1878 = or i1 %1876, %1877
  %1879 = zext i1 %1878 to i8
  store i8 %1879, i8* %14, align 1
  %1880 = and i32 %1874, 255
  %1881 = tail call i32 @llvm.ctpop.i32(i32 %1880)
  %1882 = trunc i32 %1881 to i8
  %1883 = and i8 %1882, 1
  %1884 = xor i8 %1883, 1
  store i8 %1884, i8* %21, align 1
  %1885 = xor i32 %1874, %1873
  %1886 = lshr i32 %1885, 4
  %1887 = trunc i32 %1886 to i8
  %1888 = and i8 %1887, 1
  store i8 %1888, i8* %26, align 1
  %1889 = zext i1 %1877 to i8
  store i8 %1889, i8* %29, align 1
  %1890 = lshr i32 %1874, 31
  %1891 = trunc i32 %1890 to i8
  store i8 %1891, i8* %32, align 1
  %1892 = lshr i32 %1873, 31
  %1893 = xor i32 %1890, %1892
  %1894 = add nuw nsw i32 %1893, %1890
  %1895 = icmp eq i32 %1894, 2
  %1896 = zext i1 %1895 to i8
  store i8 %1896, i8* %38, align 1
  %1897 = add i64 %1864, 23
  store i64 %1897, i64* %3, align 8
  store i32 %1874, i32* %1872, align 4
  %1898 = load i64, i64* %RBP.i, align 8
  %1899 = add i64 %1898, -24
  %1900 = load i64, i64* %3, align 8
  %1901 = add i64 %1900, 3
  store i64 %1901, i64* %3, align 8
  %1902 = inttoptr i64 %1899 to i32*
  %1903 = load i32, i32* %1902, align 4
  %1904 = add i32 %1903, -12
  %1905 = zext i32 %1904 to i64
  store i64 %1905, i64* %RCX.i1678, align 8
  %1906 = icmp ult i32 %1903, 12
  %1907 = zext i1 %1906 to i8
  store i8 %1907, i8* %14, align 1
  %1908 = and i32 %1904, 255
  %1909 = tail call i32 @llvm.ctpop.i32(i32 %1908)
  %1910 = trunc i32 %1909 to i8
  %1911 = and i8 %1910, 1
  %1912 = xor i8 %1911, 1
  store i8 %1912, i8* %21, align 1
  %1913 = xor i32 %1904, %1903
  %1914 = lshr i32 %1913, 4
  %1915 = trunc i32 %1914 to i8
  %1916 = and i8 %1915, 1
  store i8 %1916, i8* %26, align 1
  %1917 = icmp eq i32 %1904, 0
  %1918 = zext i1 %1917 to i8
  store i8 %1918, i8* %29, align 1
  %1919 = lshr i32 %1904, 31
  %1920 = trunc i32 %1919 to i8
  store i8 %1920, i8* %32, align 1
  %1921 = lshr i32 %1903, 31
  %1922 = xor i32 %1919, %1921
  %1923 = add nuw nsw i32 %1922, %1921
  %1924 = icmp eq i32 %1923, 2
  %1925 = zext i1 %1924 to i8
  store i8 %1925, i8* %38, align 1
  %1926 = sext i32 %1904 to i64
  store i64 %1926, i64* %R8.i993, align 8
  %1927 = shl nsw i64 %1926, 2
  %1928 = add nsw i64 %1927, 8922032
  %1929 = add i64 %1900, 17
  store i64 %1929, i64* %3, align 8
  %1930 = inttoptr i64 %1928 to i32*
  %1931 = load i32, i32* %1930, align 4
  %1932 = add i32 %1931, 1
  %1933 = add i64 %1900, 28
  store i64 %1933, i64* %3, align 8
  store i32 %1932, i32* %1930, align 4
  %1934 = load i64, i64* %3, align 8
  %1935 = load i32, i32* bitcast (%G_0x8661bc_type* @G_0x8661bc to i32*), align 8
  %1936 = xor i32 %1935, 1
  %1937 = zext i32 %1936 to i64
  store i64 %1937, i64* %RCX.i1678, align 8
  store i8 0, i8* %14, align 1
  %1938 = and i32 %1936, 255
  %1939 = tail call i32 @llvm.ctpop.i32(i32 %1938)
  %1940 = trunc i32 %1939 to i8
  %1941 = and i8 %1940, 1
  %1942 = xor i8 %1941, 1
  store i8 %1942, i8* %21, align 1
  %1943 = icmp eq i32 %1936, 0
  %1944 = zext i1 %1943 to i8
  store i8 %1944, i8* %29, align 1
  %1945 = lshr i32 %1935, 31
  %1946 = trunc i32 %1945 to i8
  store i8 %1946, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i32 %1936, i32* bitcast (%G_0x8661bc_type* @G_0x8661bc to i32*), align 8
  %1947 = load i64, i64* %RBP.i, align 8
  %1948 = add i64 %1947, -24
  %1949 = add i64 %1934, 20
  store i64 %1949, i64* %3, align 8
  %1950 = inttoptr i64 %1948 to i32*
  %1951 = load i32, i32* %1950, align 4
  %1952 = add i32 %1951, -12
  %1953 = zext i32 %1952 to i64
  store i64 %1953, i64* %RCX.i1678, align 8
  %1954 = icmp ult i32 %1951, 12
  %1955 = zext i1 %1954 to i8
  store i8 %1955, i8* %14, align 1
  %1956 = and i32 %1952, 255
  %1957 = tail call i32 @llvm.ctpop.i32(i32 %1956)
  %1958 = trunc i32 %1957 to i8
  %1959 = and i8 %1958, 1
  %1960 = xor i8 %1959, 1
  store i8 %1960, i8* %21, align 1
  %1961 = xor i32 %1952, %1951
  %1962 = lshr i32 %1961, 4
  %1963 = trunc i32 %1962 to i8
  %1964 = and i8 %1963, 1
  store i8 %1964, i8* %26, align 1
  %1965 = icmp eq i32 %1952, 0
  %1966 = zext i1 %1965 to i8
  store i8 %1966, i8* %29, align 1
  %1967 = lshr i32 %1952, 31
  %1968 = trunc i32 %1967 to i8
  store i8 %1968, i8* %32, align 1
  %1969 = lshr i32 %1951, 31
  %1970 = xor i32 %1967, %1969
  %1971 = add nuw nsw i32 %1970, %1969
  %1972 = icmp eq i32 %1971, 2
  %1973 = zext i1 %1972 to i8
  store i8 %1973, i8* %38, align 1
  %1974 = sext i32 %1952 to i64
  store i64 %1974, i64* %R8.i993, align 8
  %1975 = shl nsw i64 %1974, 2
  %1976 = add nsw i64 %1975, 8807152
  %1977 = add i64 %1934, 34
  store i64 %1977, i64* %3, align 8
  %1978 = inttoptr i64 %1976 to i32*
  %1979 = load i32, i32* %1978, align 4
  %1980 = zext i32 %1979 to i64
  store i64 %1980, i64* %RCX.i1678, align 8
  %1981 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %1982 = sext i32 %1981 to i64
  %1983 = shl nsw i64 %1982, 4
  store i64 %1983, i64* %R8.i993, align 8
  %1984 = load i64, i64* %RAX.i1690, align 8
  %1985 = add i64 %1983, %1984
  store i64 %1985, i64* %RAX.i1690, align 8
  %1986 = icmp ult i64 %1985, %1984
  %1987 = icmp ult i64 %1985, %1983
  %1988 = or i1 %1986, %1987
  %1989 = zext i1 %1988 to i8
  store i8 %1989, i8* %14, align 1
  %1990 = trunc i64 %1985 to i32
  %1991 = and i32 %1990, 255
  %1992 = tail call i32 @llvm.ctpop.i32(i32 %1991)
  %1993 = trunc i32 %1992 to i8
  %1994 = and i8 %1993, 1
  %1995 = xor i8 %1994, 1
  store i8 %1995, i8* %21, align 1
  %1996 = xor i64 %1983, %1984
  %1997 = xor i64 %1996, %1985
  %1998 = lshr i64 %1997, 4
  %1999 = trunc i64 %1998 to i8
  %2000 = and i8 %1999, 1
  store i8 %2000, i8* %26, align 1
  %2001 = icmp eq i64 %1985, 0
  %2002 = zext i1 %2001 to i8
  store i8 %2002, i8* %29, align 1
  %2003 = lshr i64 %1985, 63
  %2004 = trunc i64 %2003 to i8
  store i8 %2004, i8* %32, align 1
  %2005 = lshr i64 %1984, 63
  %2006 = lshr i64 %1982, 59
  %2007 = and i64 %2006, 1
  %2008 = xor i64 %2003, %2005
  %2009 = xor i64 %2003, %2007
  %2010 = add nuw nsw i64 %2008, %2009
  %2011 = icmp eq i64 %2010, 2
  %2012 = zext i1 %2011 to i8
  store i8 %2012, i8* %38, align 1
  %2013 = inttoptr i64 %1985 to i32*
  %2014 = add i64 %1934, 51
  store i64 %2014, i64* %3, align 8
  store i32 %1979, i32* %2013, align 4
  %2015 = load i64, i64* %RBP.i, align 8
  %2016 = add i64 %2015, -24
  %2017 = load i64, i64* %3, align 8
  %2018 = add i64 %2017, 3
  store i64 %2018, i64* %3, align 8
  %2019 = inttoptr i64 %2016 to i32*
  %2020 = load i32, i32* %2019, align 4
  %2021 = add i32 %2020, -12
  %2022 = zext i32 %2021 to i64
  store i64 %2022, i64* %RCX.i1678, align 8
  %2023 = icmp ult i32 %2020, 12
  %2024 = zext i1 %2023 to i8
  store i8 %2024, i8* %14, align 1
  %2025 = and i32 %2021, 255
  %2026 = tail call i32 @llvm.ctpop.i32(i32 %2025)
  %2027 = trunc i32 %2026 to i8
  %2028 = and i8 %2027, 1
  %2029 = xor i8 %2028, 1
  store i8 %2029, i8* %21, align 1
  %2030 = xor i32 %2021, %2020
  %2031 = lshr i32 %2030, 4
  %2032 = trunc i32 %2031 to i8
  %2033 = and i8 %2032, 1
  store i8 %2033, i8* %26, align 1
  %2034 = icmp eq i32 %2021, 0
  %2035 = zext i1 %2034 to i8
  store i8 %2035, i8* %29, align 1
  %2036 = lshr i32 %2021, 31
  %2037 = trunc i32 %2036 to i8
  store i8 %2037, i8* %32, align 1
  %2038 = lshr i32 %2020, 31
  %2039 = xor i32 %2036, %2038
  %2040 = add nuw nsw i32 %2039, %2038
  %2041 = icmp eq i32 %2040, 2
  %2042 = zext i1 %2041 to i8
  store i8 %2042, i8* %38, align 1
  %2043 = sext i32 %2021 to i64
  store i64 %2043, i64* %RAX.i1690, align 8
  %2044 = shl nsw i64 %2043, 2
  %2045 = add nsw i64 %2044, 8807152
  %2046 = add i64 %2017, 17
  store i64 %2046, i64* %3, align 8
  %2047 = inttoptr i64 %2045 to i32*
  %2048 = load i32, i32* %2047, align 4
  %2049 = sext i32 %2048 to i64
  store i64 %2049, i64* %RAX.i1690, align 8
  %2050 = shl nsw i64 %2049, 2
  %2051 = add nsw i64 %2050, 8778480
  %2052 = add i64 %2017, 28
  store i64 %2052, i64* %3, align 8
  %2053 = inttoptr i64 %2051 to i32*
  store i32 0, i32* %2053, align 4
  %2054 = load i64, i64* %RBP.i, align 8
  %2055 = add i64 %2054, -24
  %2056 = load i64, i64* %3, align 8
  %2057 = add i64 %2056, 3
  store i64 %2057, i64* %3, align 8
  %2058 = inttoptr i64 %2055 to i32*
  %2059 = load i32, i32* %2058, align 4
  %2060 = add i32 %2059, -12
  %2061 = sext i32 %2060 to i64
  store i64 %2061, i64* %RAX.i1690, align 8
  %2062 = shl nsw i64 %2061, 2
  %2063 = add nsw i64 %2062, 8807152
  %2064 = add i64 %2056, 20
  store i64 %2064, i64* %3, align 8
  %2065 = inttoptr i64 %2063 to i32*
  store i32 0, i32* %2065, align 4
  %2066 = load i64, i64* %3, align 8
  %2067 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %2068 = add i32 %2067, 1
  %2069 = zext i32 %2068 to i64
  store i64 %2069, i64* %RCX.i1678, align 8
  %2070 = icmp eq i32 %2067, -1
  %2071 = icmp eq i32 %2068, 0
  %2072 = or i1 %2070, %2071
  %2073 = zext i1 %2072 to i8
  store i8 %2073, i8* %14, align 1
  %2074 = and i32 %2068, 255
  %2075 = tail call i32 @llvm.ctpop.i32(i32 %2074)
  %2076 = trunc i32 %2075 to i8
  %2077 = and i8 %2076, 1
  %2078 = xor i8 %2077, 1
  store i8 %2078, i8* %21, align 1
  %2079 = xor i32 %2068, %2067
  %2080 = lshr i32 %2079, 4
  %2081 = trunc i32 %2080 to i8
  %2082 = and i8 %2081, 1
  store i8 %2082, i8* %26, align 1
  %2083 = zext i1 %2071 to i8
  store i8 %2083, i8* %29, align 1
  %2084 = lshr i32 %2068, 31
  %2085 = trunc i32 %2084 to i8
  store i8 %2085, i8* %32, align 1
  %2086 = lshr i32 %2067, 31
  %2087 = xor i32 %2084, %2086
  %2088 = add nuw nsw i32 %2087, %2084
  %2089 = icmp eq i32 %2088, 2
  %2090 = zext i1 %2089 to i8
  store i8 %2090, i8* %38, align 1
  store i32 %2068, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %2091 = add i64 %2066, 2447
  store i64 %2091, i64* %3, align 8
  br label %block_.L_40c78e

block_.L_40be15:                                  ; preds = %block_.L_40bc87
  %2092 = add i64 %1345, -24
  %2093 = add i64 %1640, 3
  store i64 %2093, i64* %3, align 8
  %2094 = inttoptr i64 %2092 to i32*
  %2095 = load i32, i32* %2094, align 4
  %2096 = zext i32 %2095 to i64
  store i64 %2096, i64* %RAX.i1690, align 8
  %2097 = add i64 %1640, 6
  store i64 %2097, i64* %3, align 8
  %2098 = load i32, i32* %1348, align 4
  %2099 = add i32 %2098, 24
  %2100 = zext i32 %2099 to i64
  store i64 %2100, i64* %RCX.i1678, align 8
  %2101 = lshr i32 %2099, 31
  %2102 = sub i32 %2095, %2099
  %2103 = icmp ult i32 %2095, %2099
  %2104 = zext i1 %2103 to i8
  store i8 %2104, i8* %14, align 1
  %2105 = and i32 %2102, 255
  %2106 = tail call i32 @llvm.ctpop.i32(i32 %2105)
  %2107 = trunc i32 %2106 to i8
  %2108 = and i8 %2107, 1
  %2109 = xor i8 %2108, 1
  store i8 %2109, i8* %21, align 1
  %2110 = xor i32 %2099, %2095
  %2111 = xor i32 %2110, %2102
  %2112 = lshr i32 %2111, 4
  %2113 = trunc i32 %2112 to i8
  %2114 = and i8 %2113, 1
  store i8 %2114, i8* %26, align 1
  %2115 = icmp eq i32 %2102, 0
  %2116 = zext i1 %2115 to i8
  store i8 %2116, i8* %29, align 1
  %2117 = lshr i32 %2102, 31
  %2118 = trunc i32 %2117 to i8
  store i8 %2118, i8* %32, align 1
  %2119 = lshr i32 %2095, 31
  %2120 = xor i32 %2101, %2119
  %2121 = xor i32 %2117, %2119
  %2122 = add nuw nsw i32 %2121, %2120
  %2123 = icmp eq i32 %2122, 2
  %2124 = zext i1 %2123 to i8
  store i8 %2124, i8* %38, align 1
  %.v53 = select i1 %2115, i64 17, i64 30
  %2125 = add i64 %1640, %.v53
  store i64 %2125, i64* %3, align 8
  br i1 %2115, label %block_40be26, label %block_.L_40be33

block_40be26:                                     ; preds = %block_.L_40be15
  %2126 = add i64 %2125, 3
  store i64 %2126, i64* %3, align 8
  %2127 = load i32, i32* %1348, align 4
  %2128 = add i32 %2127, 12
  %2129 = zext i32 %2128 to i64
  store i64 %2129, i64* %RAX.i1690, align 8
  %2130 = icmp ugt i32 %2127, -13
  %2131 = zext i1 %2130 to i8
  store i8 %2131, i8* %14, align 1
  %2132 = and i32 %2128, 255
  %2133 = tail call i32 @llvm.ctpop.i32(i32 %2132)
  %2134 = trunc i32 %2133 to i8
  %2135 = and i8 %2134, 1
  %2136 = xor i8 %2135, 1
  store i8 %2136, i8* %21, align 1
  %2137 = xor i32 %2128, %2127
  %2138 = lshr i32 %2137, 4
  %2139 = trunc i32 %2138 to i8
  %2140 = and i8 %2139, 1
  store i8 %2140, i8* %26, align 1
  %2141 = icmp eq i32 %2128, 0
  %2142 = zext i1 %2141 to i8
  store i8 %2142, i8* %29, align 1
  %2143 = lshr i32 %2128, 31
  %2144 = trunc i32 %2143 to i8
  store i8 %2144, i8* %32, align 1
  %2145 = lshr i32 %2127, 31
  %2146 = xor i32 %2143, %2145
  %2147 = add nuw nsw i32 %2146, %2143
  %2148 = icmp eq i32 %2147, 2
  %2149 = zext i1 %2148 to i8
  store i8 %2149, i8* %38, align 1
  %2150 = add i64 %2125, 13
  store i64 %2150, i64* %3, align 8
  store i32 %2128, i32* bitcast (%G_0x881de4_type* @G_0x881de4 to i32*), align 8
  br label %block_.L_40be33

block_.L_40be33:                                  ; preds = %block_.L_40be15, %block_40be26
  %2151 = phi i64 [ %2150, %block_40be26 ], [ %2125, %block_.L_40be15 ]
  %2152 = add i64 %2151, 4
  store i64 %2152, i64* %3, align 8
  %2153 = load i32, i32* %1348, align 4
  %2154 = sext i32 %2153 to i64
  store i64 %2154, i64* %RAX.i1690, align 8
  %2155 = shl nsw i64 %2154, 2
  %2156 = add nsw i64 %2155, 9047232
  %2157 = add i64 %2151, 11
  store i64 %2157, i64* %3, align 8
  %2158 = inttoptr i64 %2156 to i32*
  %2159 = load i32, i32* %2158, align 4
  %2160 = load i32, i32* bitcast (%G_0x633b40_type* @G_0x633b40 to i32*), align 8
  %2161 = xor i32 %2160, %2159
  %2162 = zext i32 %2161 to i64
  store i64 %2162, i64* %RCX.i1678, align 8
  store i8 0, i8* %14, align 1
  %2163 = and i32 %2161, 255
  %2164 = tail call i32 @llvm.ctpop.i32(i32 %2163)
  %2165 = trunc i32 %2164 to i8
  %2166 = and i8 %2165, 1
  %2167 = xor i8 %2166, 1
  store i8 %2167, i8* %21, align 1
  %2168 = icmp eq i32 %2161, 0
  %2169 = zext i1 %2168 to i8
  store i8 %2169, i8* %29, align 1
  %2170 = lshr i32 %2161, 31
  %2171 = trunc i32 %2170 to i8
  store i8 %2171, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i32 %2161, i32* bitcast (%G_0x633b40_type* @G_0x633b40 to i32*), align 8
  %2172 = add i64 %2151, 29
  store i64 %2172, i64* %3, align 8
  %2173 = load i32, i32* %2094, align 4
  %2174 = sext i32 %2173 to i64
  store i64 %2174, i64* %RAX.i1690, align 8
  %2175 = shl nsw i64 %2174, 2
  %2176 = add nsw i64 %2175, 9047232
  %2177 = add i64 %2151, 36
  store i64 %2177, i64* %3, align 8
  %2178 = inttoptr i64 %2176 to i32*
  %2179 = load i32, i32* %2178, align 4
  %2180 = xor i32 %2161, %2179
  %2181 = zext i32 %2180 to i64
  store i64 %2181, i64* %RCX.i1678, align 8
  store i8 0, i8* %14, align 1
  %2182 = and i32 %2180, 255
  %2183 = tail call i32 @llvm.ctpop.i32(i32 %2182)
  %2184 = trunc i32 %2183 to i8
  %2185 = and i8 %2184, 1
  %2186 = xor i8 %2185, 1
  store i8 %2186, i8* %21, align 1
  %2187 = icmp eq i32 %2180, 0
  %2188 = zext i1 %2187 to i8
  store i8 %2188, i8* %29, align 1
  %2189 = lshr i32 %2180, 31
  %2190 = trunc i32 %2189 to i8
  store i8 %2190, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i32 %2180, i32* bitcast (%G_0x633b40_type* @G_0x633b40 to i32*), align 8
  %2191 = add i64 %2151, 54
  store i64 %2191, i64* %3, align 8
  %2192 = load i32, i32* %2094, align 4
  %2193 = sext i32 %2192 to i64
  store i64 %2193, i64* %RAX.i1690, align 8
  %2194 = shl nsw i64 %2193, 2
  %2195 = add nsw i64 %2194, 8807744
  %2196 = add i64 %2151, 65
  store i64 %2196, i64* %3, align 8
  %2197 = inttoptr i64 %2195 to i32*
  store i32 1, i32* %2197, align 4
  %2198 = load i64, i64* %RBP.i, align 8
  %2199 = add i64 %2198, -20
  %2200 = load i64, i64* %3, align 8
  %2201 = add i64 %2200, 4
  store i64 %2201, i64* %3, align 8
  %2202 = inttoptr i64 %2199 to i32*
  %2203 = load i32, i32* %2202, align 4
  %2204 = sext i32 %2203 to i64
  store i64 %2204, i64* %RAX.i1690, align 8
  %2205 = shl nsw i64 %2204, 2
  %2206 = add nsw i64 %2205, 8807744
  %2207 = add i64 %2200, 15
  store i64 %2207, i64* %3, align 8
  %2208 = inttoptr i64 %2206 to i32*
  store i32 13, i32* %2208, align 4
  %2209 = load i64, i64* %RBP.i, align 8
  %2210 = add i64 %2209, -24
  %2211 = load i64, i64* %3, align 8
  %2212 = add i64 %2211, 4
  store i64 %2212, i64* %3, align 8
  %2213 = inttoptr i64 %2210 to i32*
  %2214 = load i32, i32* %2213, align 4
  %2215 = sext i32 %2214 to i64
  store i64 %2215, i64* %RAX.i1690, align 8
  %2216 = shl nsw i64 %2215, 2
  %2217 = add nsw i64 %2216, 8922032
  %2218 = add i64 %2211, 11
  store i64 %2218, i64* %3, align 8
  %2219 = inttoptr i64 %2217 to i32*
  %2220 = load i32, i32* %2219, align 4
  %2221 = add i32 %2220, 1
  %2222 = zext i32 %2221 to i64
  store i64 %2222, i64* %RCX.i1678, align 8
  %2223 = icmp eq i32 %2220, -1
  %2224 = icmp eq i32 %2221, 0
  %2225 = or i1 %2223, %2224
  %2226 = zext i1 %2225 to i8
  store i8 %2226, i8* %14, align 1
  %2227 = and i32 %2221, 255
  %2228 = tail call i32 @llvm.ctpop.i32(i32 %2227)
  %2229 = trunc i32 %2228 to i8
  %2230 = and i8 %2229, 1
  %2231 = xor i8 %2230, 1
  store i8 %2231, i8* %21, align 1
  %2232 = xor i32 %2221, %2220
  %2233 = lshr i32 %2232, 4
  %2234 = trunc i32 %2233 to i8
  %2235 = and i8 %2234, 1
  store i8 %2235, i8* %26, align 1
  %2236 = zext i1 %2224 to i8
  store i8 %2236, i8* %29, align 1
  %2237 = lshr i32 %2221, 31
  %2238 = trunc i32 %2237 to i8
  store i8 %2238, i8* %32, align 1
  %2239 = lshr i32 %2220, 31
  %2240 = xor i32 %2237, %2239
  %2241 = add nuw nsw i32 %2240, %2237
  %2242 = icmp eq i32 %2241, 2
  %2243 = zext i1 %2242 to i8
  store i8 %2243, i8* %38, align 1
  %2244 = add i64 %2211, 21
  store i64 %2244, i64* %3, align 8
  store i32 %2221, i32* %2219, align 4
  %2245 = load i64, i64* %RBP.i, align 8
  %2246 = add i64 %2245, -20
  %2247 = load i64, i64* %3, align 8
  %2248 = add i64 %2247, 4
  store i64 %2248, i64* %3, align 8
  %2249 = inttoptr i64 %2246 to i32*
  %2250 = load i32, i32* %2249, align 4
  %2251 = sext i32 %2250 to i64
  store i64 %2251, i64* %RAX.i1690, align 8
  %2252 = shl nsw i64 %2251, 2
  %2253 = add nsw i64 %2252, 8922032
  %2254 = add i64 %2247, 11
  store i64 %2254, i64* %3, align 8
  %2255 = inttoptr i64 %2253 to i32*
  %2256 = load i32, i32* %2255, align 4
  %2257 = add i32 %2256, 1
  %2258 = add i64 %2247, 21
  store i64 %2258, i64* %3, align 8
  store i32 %2257, i32* %2255, align 4
  %2259 = load i64, i64* %3, align 8
  %2260 = load i32, i32* bitcast (%G_0x8661bc_type* @G_0x8661bc to i32*), align 8
  %2261 = xor i32 %2260, 1
  store i32 %2261, i32* bitcast (%G_0x8661bc_type* @G_0x8661bc to i32*), align 8
  %2262 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %2263 = add i32 %2262, 1
  %2264 = zext i32 %2263 to i64
  store i64 %2264, i64* %RCX.i1678, align 8
  %2265 = icmp eq i32 %2262, -1
  %2266 = icmp eq i32 %2263, 0
  %2267 = or i1 %2265, %2266
  %2268 = zext i1 %2267 to i8
  store i8 %2268, i8* %14, align 1
  %2269 = and i32 %2263, 255
  %2270 = tail call i32 @llvm.ctpop.i32(i32 %2269)
  %2271 = trunc i32 %2270 to i8
  %2272 = and i8 %2271, 1
  %2273 = xor i8 %2272, 1
  store i8 %2273, i8* %21, align 1
  %2274 = xor i32 %2263, %2262
  %2275 = lshr i32 %2274, 4
  %2276 = trunc i32 %2275 to i8
  %2277 = and i8 %2276, 1
  store i8 %2277, i8* %26, align 1
  %2278 = zext i1 %2266 to i8
  store i8 %2278, i8* %29, align 1
  %2279 = lshr i32 %2263, 31
  %2280 = trunc i32 %2279 to i8
  store i8 %2280, i8* %32, align 1
  %2281 = lshr i32 %2262, 31
  %2282 = xor i32 %2279, %2281
  %2283 = add nuw nsw i32 %2282, %2279
  %2284 = icmp eq i32 %2283, 2
  %2285 = zext i1 %2284 to i8
  store i8 %2285, i8* %38, align 1
  store i32 %2263, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %2286 = add i64 %2259, 2273
  store i64 %2286, i64* %3, align 8
  br label %block_.L_40c78e

block_.L_40bed4:                                  ; preds = %block_.L_40bb70
  %2287 = add i64 %1377, 4
  store i64 %2287, i64* %3, align 8
  %2288 = load i32, i32* %1348, align 4
  %2289 = sext i32 %2288 to i64
  store i64 %2289, i64* %RAX.i1690, align 8
  %2290 = shl nsw i64 %2289, 2
  %2291 = add nsw i64 %2290, 8807744
  %2292 = add i64 %1377, 12
  store i64 %2292, i64* %3, align 8
  %2293 = inttoptr i64 %2291 to i32*
  %2294 = load i32, i32* %2293, align 4
  %2295 = add i32 %2294, -2
  %2296 = icmp ult i32 %2294, 2
  %2297 = zext i1 %2296 to i8
  store i8 %2297, i8* %14, align 1
  %2298 = and i32 %2295, 255
  %2299 = tail call i32 @llvm.ctpop.i32(i32 %2298)
  %2300 = trunc i32 %2299 to i8
  %2301 = and i8 %2300, 1
  %2302 = xor i8 %2301, 1
  store i8 %2302, i8* %21, align 1
  %2303 = xor i32 %2295, %2294
  %2304 = lshr i32 %2303, 4
  %2305 = trunc i32 %2304 to i8
  %2306 = and i8 %2305, 1
  store i8 %2306, i8* %26, align 1
  %2307 = icmp eq i32 %2295, 0
  %2308 = zext i1 %2307 to i8
  store i8 %2308, i8* %29, align 1
  %2309 = lshr i32 %2295, 31
  %2310 = trunc i32 %2309 to i8
  store i8 %2310, i8* %32, align 1
  %2311 = lshr i32 %2294, 31
  %2312 = xor i32 %2309, %2311
  %2313 = add nuw nsw i32 %2312, %2311
  %2314 = icmp eq i32 %2313, 2
  %2315 = zext i1 %2314 to i8
  store i8 %2315, i8* %38, align 1
  %.v41 = select i1 %2307, i64 18, i64 871
  %2316 = add i64 %1377, %.v41
  store i64 %2316, i64* %3, align 8
  br i1 %2307, label %block_40bee6, label %block_.L_40c23b

block_40bee6:                                     ; preds = %block_.L_40bed4
  %2317 = add i64 %1345, -32
  %2318 = add i64 %2316, 4
  store i64 %2318, i64* %3, align 8
  %2319 = inttoptr i64 %2317 to i32*
  %2320 = load i32, i32* %2319, align 4
  store i8 0, i8* %14, align 1
  %2321 = and i32 %2320, 255
  %2322 = tail call i32 @llvm.ctpop.i32(i32 %2321)
  %2323 = trunc i32 %2322 to i8
  %2324 = and i8 %2323, 1
  %2325 = xor i8 %2324, 1
  store i8 %2325, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2326 = icmp eq i32 %2320, 0
  %2327 = zext i1 %2326 to i8
  store i8 %2327, i8* %29, align 1
  %2328 = lshr i32 %2320, 31
  %2329 = trunc i32 %2328 to i8
  store i8 %2329, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v48 = select i1 %2326, i64 261, i64 10
  %2330 = add i64 %2316, %.v48
  store i64 %2330, i64* %3, align 8
  br i1 %2326, label %block_.L_40bfeb, label %block_40bef0

block_40bef0:                                     ; preds = %block_40bee6
  store i64 ptrtoint (%G__0x8a0a80_type* @G__0x8a0a80 to i64), i64* %RAX.i1690, align 8
  %2331 = add i64 %2330, 13
  store i64 %2331, i64* %3, align 8
  %2332 = load i32, i32* %2319, align 4
  %2333 = zext i32 %2332 to i64
  store i64 %2333, i64* %RCX.i1678, align 8
  %2334 = add i64 %1345, -24
  %2335 = add i64 %2330, 17
  store i64 %2335, i64* %3, align 8
  %2336 = inttoptr i64 %2334 to i32*
  %2337 = load i32, i32* %2336, align 4
  %2338 = sext i32 %2337 to i64
  store i64 %2338, i64* %RDX.i1382, align 8
  %2339 = shl nsw i64 %2338, 2
  %2340 = add nsw i64 %2339, 8807744
  %2341 = add i64 %2330, 24
  store i64 %2341, i64* %3, align 8
  %2342 = inttoptr i64 %2340 to i32*
  store i32 %2332, i32* %2342, align 4
  %2343 = load i64, i64* %RBP.i, align 8
  %2344 = add i64 %2343, -20
  %2345 = load i64, i64* %3, align 8
  %2346 = add i64 %2345, 4
  store i64 %2346, i64* %3, align 8
  %2347 = inttoptr i64 %2344 to i32*
  %2348 = load i32, i32* %2347, align 4
  %2349 = sext i32 %2348 to i64
  store i64 %2349, i64* %RDX.i1382, align 8
  %2350 = shl nsw i64 %2349, 2
  %2351 = add nsw i64 %2350, 8807744
  %2352 = add i64 %2345, 15
  store i64 %2352, i64* %3, align 8
  %2353 = inttoptr i64 %2351 to i32*
  store i32 13, i32* %2353, align 4
  %2354 = load i64, i64* %RBP.i, align 8
  %2355 = add i64 %2354, -24
  %2356 = load i64, i64* %3, align 8
  %2357 = add i64 %2356, 4
  store i64 %2357, i64* %3, align 8
  %2358 = inttoptr i64 %2355 to i32*
  %2359 = load i32, i32* %2358, align 4
  %2360 = sext i32 %2359 to i64
  store i64 %2360, i64* %RDX.i1382, align 8
  %2361 = shl nsw i64 %2360, 2
  %2362 = add nsw i64 %2361, 8922032
  %2363 = add i64 %2356, 11
  store i64 %2363, i64* %3, align 8
  %2364 = inttoptr i64 %2362 to i32*
  %2365 = load i32, i32* %2364, align 4
  %2366 = add i32 %2365, 1
  %2367 = zext i32 %2366 to i64
  store i64 %2367, i64* %RCX.i1678, align 8
  %2368 = icmp eq i32 %2365, -1
  %2369 = icmp eq i32 %2366, 0
  %2370 = or i1 %2368, %2369
  %2371 = zext i1 %2370 to i8
  store i8 %2371, i8* %14, align 1
  %2372 = and i32 %2366, 255
  %2373 = tail call i32 @llvm.ctpop.i32(i32 %2372)
  %2374 = trunc i32 %2373 to i8
  %2375 = and i8 %2374, 1
  %2376 = xor i8 %2375, 1
  store i8 %2376, i8* %21, align 1
  %2377 = xor i32 %2366, %2365
  %2378 = lshr i32 %2377, 4
  %2379 = trunc i32 %2378 to i8
  %2380 = and i8 %2379, 1
  store i8 %2380, i8* %26, align 1
  %2381 = zext i1 %2369 to i8
  store i8 %2381, i8* %29, align 1
  %2382 = lshr i32 %2366, 31
  %2383 = trunc i32 %2382 to i8
  store i8 %2383, i8* %32, align 1
  %2384 = lshr i32 %2365, 31
  %2385 = xor i32 %2382, %2384
  %2386 = add nuw nsw i32 %2385, %2382
  %2387 = icmp eq i32 %2386, 2
  %2388 = zext i1 %2387 to i8
  store i8 %2388, i8* %38, align 1
  %2389 = add i64 %2356, 21
  store i64 %2389, i64* %3, align 8
  store i32 %2366, i32* %2364, align 4
  %2390 = load i64, i64* %RBP.i, align 8
  %2391 = add i64 %2390, -20
  %2392 = load i64, i64* %3, align 8
  %2393 = add i64 %2392, 4
  store i64 %2393, i64* %3, align 8
  %2394 = inttoptr i64 %2391 to i32*
  %2395 = load i32, i32* %2394, align 4
  %2396 = sext i32 %2395 to i64
  store i64 %2396, i64* %RDX.i1382, align 8
  %2397 = shl nsw i64 %2396, 2
  %2398 = add nsw i64 %2397, 8922032
  %2399 = add i64 %2392, 11
  store i64 %2399, i64* %3, align 8
  %2400 = inttoptr i64 %2398 to i32*
  %2401 = load i32, i32* %2400, align 4
  %2402 = add i32 %2401, 1
  %2403 = add i64 %2392, 21
  store i64 %2403, i64* %3, align 8
  store i32 %2402, i32* %2400, align 4
  %2404 = load i64, i64* %3, align 8
  %2405 = load i32, i32* bitcast (%G_0x8661bc_type* @G_0x8661bc to i32*), align 8
  %2406 = xor i32 %2405, 1
  %2407 = zext i32 %2406 to i64
  store i64 %2407, i64* %RCX.i1678, align 8
  store i8 0, i8* %14, align 1
  %2408 = and i32 %2406, 255
  %2409 = tail call i32 @llvm.ctpop.i32(i32 %2408)
  %2410 = trunc i32 %2409 to i8
  %2411 = and i8 %2410, 1
  %2412 = xor i8 %2411, 1
  store i8 %2412, i8* %21, align 1
  %2413 = icmp eq i32 %2406, 0
  %2414 = zext i1 %2413 to i8
  store i8 %2414, i8* %29, align 1
  %2415 = lshr i32 %2405, 31
  %2416 = trunc i32 %2415 to i8
  store i8 %2416, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i32 %2406, i32* bitcast (%G_0x8661bc_type* @G_0x8661bc to i32*), align 8
  %2417 = load i64, i64* %RBP.i, align 8
  %2418 = add i64 %2417, -24
  %2419 = add i64 %2404, 21
  store i64 %2419, i64* %3, align 8
  %2420 = inttoptr i64 %2418 to i32*
  %2421 = load i32, i32* %2420, align 4
  %2422 = sext i32 %2421 to i64
  store i64 %2422, i64* %RDX.i1382, align 8
  %2423 = shl nsw i64 %2422, 2
  %2424 = add nsw i64 %2423, 8807152
  %2425 = add i64 %2404, 29
  store i64 %2425, i64* %3, align 8
  %2426 = inttoptr i64 %2424 to i32*
  %2427 = load i32, i32* %2426, align 4
  %2428 = sext i32 %2427 to i64
  store i64 %2428, i64* %RDX.i1382, align 8
  %2429 = shl nsw i64 %2428, 2
  %2430 = add nsw i64 %2429, 6525216
  %2431 = add i64 %2404, 40
  store i64 %2431, i64* %3, align 8
  %2432 = inttoptr i64 %2430 to i32*
  store i32 1, i32* %2432, align 4
  %2433 = load i64, i64* %RBP.i, align 8
  %2434 = add i64 %2433, -20
  %2435 = load i64, i64* %3, align 8
  %2436 = add i64 %2435, 4
  store i64 %2436, i64* %3, align 8
  %2437 = inttoptr i64 %2434 to i32*
  %2438 = load i32, i32* %2437, align 4
  %2439 = sext i32 %2438 to i64
  store i64 %2439, i64* %RDX.i1382, align 8
  %2440 = shl nsw i64 %2439, 2
  %2441 = add nsw i64 %2440, 9047808
  %2442 = add i64 %2435, 11
  store i64 %2442, i64* %3, align 8
  %2443 = inttoptr i64 %2441 to i32*
  %2444 = load i32, i32* %2443, align 4
  %2445 = load i32, i32* bitcast (%G_0x633b40_type* @G_0x633b40 to i32*), align 8
  %2446 = xor i32 %2445, %2444
  %2447 = zext i32 %2446 to i64
  store i64 %2447, i64* %RCX.i1678, align 8
  store i8 0, i8* %14, align 1
  %2448 = and i32 %2446, 255
  %2449 = tail call i32 @llvm.ctpop.i32(i32 %2448)
  %2450 = trunc i32 %2449 to i8
  %2451 = and i8 %2450, 1
  %2452 = xor i8 %2451, 1
  store i8 %2452, i8* %21, align 1
  %2453 = icmp eq i32 %2446, 0
  %2454 = zext i1 %2453 to i8
  store i8 %2454, i8* %29, align 1
  %2455 = lshr i32 %2446, 31
  %2456 = trunc i32 %2455 to i8
  store i8 %2456, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i32 %2446, i32* bitcast (%G_0x633b40_type* @G_0x633b40 to i32*), align 8
  %2457 = add i64 %2433, -32
  %2458 = add i64 %2435, 29
  store i64 %2458, i64* %3, align 8
  %2459 = inttoptr i64 %2457 to i32*
  %2460 = load i32, i32* %2459, align 4
  %2461 = sext i32 %2460 to i64
  %2462 = mul nsw i64 %2461, 576
  store i64 %2462, i64* %RDX.i1382, align 8
  %2463 = lshr i64 %2462, 63
  %2464 = load i64, i64* %RAX.i1690, align 8
  %2465 = add i64 %2462, %2464
  store i64 %2465, i64* %RAX.i1690, align 8
  %2466 = icmp ult i64 %2465, %2464
  %2467 = icmp ult i64 %2465, %2462
  %2468 = or i1 %2466, %2467
  %2469 = zext i1 %2468 to i8
  store i8 %2469, i8* %14, align 1
  %2470 = trunc i64 %2465 to i32
  %2471 = and i32 %2470, 255
  %2472 = tail call i32 @llvm.ctpop.i32(i32 %2471)
  %2473 = trunc i32 %2472 to i8
  %2474 = and i8 %2473, 1
  %2475 = xor i8 %2474, 1
  store i8 %2475, i8* %21, align 1
  %2476 = xor i64 %2464, %2465
  %2477 = lshr i64 %2476, 4
  %2478 = trunc i64 %2477 to i8
  %2479 = and i8 %2478, 1
  store i8 %2479, i8* %26, align 1
  %2480 = icmp eq i64 %2465, 0
  %2481 = zext i1 %2480 to i8
  store i8 %2481, i8* %29, align 1
  %2482 = lshr i64 %2465, 63
  %2483 = trunc i64 %2482 to i8
  store i8 %2483, i8* %32, align 1
  %2484 = lshr i64 %2464, 63
  %2485 = xor i64 %2482, %2484
  %2486 = xor i64 %2482, %2463
  %2487 = add nuw nsw i64 %2485, %2486
  %2488 = icmp eq i64 %2487, 2
  %2489 = zext i1 %2488 to i8
  store i8 %2489, i8* %38, align 1
  %2490 = load i64, i64* %RBP.i, align 8
  %2491 = add i64 %2490, -24
  %2492 = add i64 %2435, 43
  store i64 %2492, i64* %3, align 8
  %2493 = inttoptr i64 %2491 to i32*
  %2494 = load i32, i32* %2493, align 4
  %2495 = sext i32 %2494 to i64
  store i64 %2495, i64* %RDX.i1382, align 8
  %2496 = shl nsw i64 %2495, 2
  %2497 = add i64 %2496, %2465
  %2498 = add i64 %2435, 46
  store i64 %2498, i64* %3, align 8
  %2499 = inttoptr i64 %2497 to i32*
  %2500 = load i32, i32* %2499, align 4
  %2501 = xor i32 %2446, %2500
  store i32 %2501, i32* bitcast (%G_0x633b40_type* @G_0x633b40 to i32*), align 8
  %2502 = load i32, i32* bitcast (%G_0x62dab8_type* @G_0x62dab8 to i32*), align 8
  %2503 = zext i32 %2502 to i64
  store i64 %2503, i64* %RCX.i1678, align 8
  %2504 = load i32, i32* bitcast (%G_0x8661c0_type* @G_0x8661c0 to i32*), align 8
  %2505 = sub i32 %2504, %2502
  %2506 = zext i32 %2505 to i64
  store i64 %2506, i64* %RSI.i1670, align 8
  %2507 = icmp ult i32 %2504, %2502
  %2508 = zext i1 %2507 to i8
  store i8 %2508, i8* %14, align 1
  %2509 = and i32 %2505, 255
  %2510 = tail call i32 @llvm.ctpop.i32(i32 %2509)
  %2511 = trunc i32 %2510 to i8
  %2512 = and i8 %2511, 1
  %2513 = xor i8 %2512, 1
  store i8 %2513, i8* %21, align 1
  %2514 = xor i32 %2502, %2504
  %2515 = xor i32 %2514, %2505
  %2516 = lshr i32 %2515, 4
  %2517 = trunc i32 %2516 to i8
  %2518 = and i8 %2517, 1
  store i8 %2518, i8* %26, align 1
  %2519 = icmp eq i32 %2505, 0
  %2520 = zext i1 %2519 to i8
  store i8 %2520, i8* %29, align 1
  %2521 = lshr i32 %2505, 31
  %2522 = trunc i32 %2521 to i8
  store i8 %2522, i8* %32, align 1
  %2523 = lshr i32 %2504, 31
  %2524 = lshr i32 %2502, 31
  %2525 = xor i32 %2524, %2523
  %2526 = xor i32 %2521, %2523
  %2527 = add nuw nsw i32 %2526, %2525
  %2528 = icmp eq i32 %2527, 2
  %2529 = zext i1 %2528 to i8
  store i8 %2529, i8* %38, align 1
  store i32 %2505, i32* bitcast (%G_0x8661c0_type* @G_0x8661c0 to i32*), align 8
  %2530 = add i64 %2490, -32
  %2531 = add i64 %2435, 87
  store i64 %2531, i64* %3, align 8
  %2532 = inttoptr i64 %2530 to i32*
  %2533 = load i32, i32* %2532, align 4
  %2534 = sext i32 %2533 to i64
  store i64 %2534, i64* %RAX.i1690, align 8
  %2535 = shl nsw i64 %2534, 2
  %2536 = add nsw i64 %2535, 6478512
  %2537 = add i64 %2435, 94
  store i64 %2537, i64* %3, align 8
  %2538 = inttoptr i64 %2536 to i32*
  %2539 = load i32, i32* %2538, align 4
  %2540 = add i32 %2505, %2539
  store i32 %2540, i32* bitcast (%G_0x8661c0_type* @G_0x8661c0 to i32*), align 8
  %2541 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %2542 = add i32 %2541, 1
  %2543 = zext i32 %2542 to i64
  store i64 %2543, i64* %RCX.i1678, align 8
  %2544 = icmp eq i32 %2541, -1
  %2545 = icmp eq i32 %2542, 0
  %2546 = or i1 %2544, %2545
  %2547 = zext i1 %2546 to i8
  store i8 %2547, i8* %14, align 1
  %2548 = and i32 %2542, 255
  %2549 = tail call i32 @llvm.ctpop.i32(i32 %2548)
  %2550 = trunc i32 %2549 to i8
  %2551 = and i8 %2550, 1
  %2552 = xor i8 %2551, 1
  store i8 %2552, i8* %21, align 1
  %2553 = xor i32 %2542, %2541
  %2554 = lshr i32 %2553, 4
  %2555 = trunc i32 %2554 to i8
  %2556 = and i8 %2555, 1
  store i8 %2556, i8* %26, align 1
  %2557 = zext i1 %2545 to i8
  store i8 %2557, i8* %29, align 1
  %2558 = lshr i32 %2542, 31
  %2559 = trunc i32 %2558 to i8
  store i8 %2559, i8* %32, align 1
  %2560 = lshr i32 %2541, 31
  %2561 = xor i32 %2558, %2560
  %2562 = add nuw nsw i32 %2561, %2558
  %2563 = icmp eq i32 %2562, 2
  %2564 = zext i1 %2563 to i8
  store i8 %2564, i8* %38, align 1
  store i32 %2542, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %2565 = add i64 %2435, 2085
  store i64 %2565, i64* %3, align 8
  br label %block_.L_40c78e

block_.L_40bfeb:                                  ; preds = %block_40bee6
  %2566 = add i64 %1345, -16
  %2567 = add i64 %2330, 4
  store i64 %2567, i64* %3, align 8
  %2568 = inttoptr i64 %2566 to i32*
  %2569 = load i32, i32* %2568, align 4
  store i8 0, i8* %14, align 1
  %2570 = and i32 %2569, 255
  %2571 = tail call i32 @llvm.ctpop.i32(i32 %2570)
  %2572 = trunc i32 %2571 to i8
  %2573 = and i8 %2572, 1
  %2574 = xor i8 %2573, 1
  store i8 %2574, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2575 = icmp eq i32 %2569, 0
  %2576 = zext i1 %2575 to i8
  store i8 %2576, i8* %29, align 1
  %2577 = lshr i32 %2569, 31
  %2578 = trunc i32 %2577 to i8
  store i8 %2578, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v49 = select i1 %2575, i64 401, i64 10
  %2579 = add i64 %2330, %.v49
  store i64 %2579, i64* %3, align 8
  br i1 %2575, label %block_.L_40c17c, label %block_40bff5

block_40bff5:                                     ; preds = %block_.L_40bfeb
  store i64 2, i64* %RDI.i1687, align 8
  store i64 1, i64* %RSI.i1670, align 8
  %2580 = add i64 %2579, 14
  store i64 %2580, i64* %3, align 8
  %2581 = load i32, i32* %1348, align 4
  %2582 = sext i32 %2581 to i64
  store i64 %2582, i64* %RAX.i1690, align 8
  %2583 = shl nsw i64 %2582, 2
  %2584 = add nsw i64 %2583, 9047808
  %2585 = add i64 %2579, 21
  store i64 %2585, i64* %3, align 8
  %2586 = inttoptr i64 %2584 to i32*
  %2587 = load i32, i32* %2586, align 4
  %2588 = load i32, i32* bitcast (%G_0x633b40_type* @G_0x633b40 to i32*), align 8
  %2589 = xor i32 %2588, %2587
  %2590 = zext i32 %2589 to i64
  store i64 %2590, i64* %RCX.i1678, align 8
  store i8 0, i8* %14, align 1
  %2591 = and i32 %2589, 255
  %2592 = tail call i32 @llvm.ctpop.i32(i32 %2591)
  %2593 = trunc i32 %2592 to i8
  %2594 = and i8 %2593, 1
  %2595 = xor i8 %2594, 1
  store i8 %2595, i8* %21, align 1
  %2596 = icmp eq i32 %2589, 0
  %2597 = zext i1 %2596 to i8
  store i8 %2597, i8* %29, align 1
  %2598 = lshr i32 %2589, 31
  %2599 = trunc i32 %2598 to i8
  store i8 %2599, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i32 %2589, i32* bitcast (%G_0x633b40_type* @G_0x633b40 to i32*), align 8
  %2600 = add i64 %1345, -24
  %2601 = add i64 %2579, 38
  store i64 %2601, i64* %3, align 8
  %2602 = inttoptr i64 %2600 to i32*
  %2603 = load i32, i32* %2602, align 4
  %2604 = add i32 %2603, 12
  %2605 = zext i32 %2604 to i64
  store i64 %2605, i64* %RCX.i1678, align 8
  %2606 = icmp ugt i32 %2603, -13
  %2607 = zext i1 %2606 to i8
  store i8 %2607, i8* %14, align 1
  %2608 = and i32 %2604, 255
  %2609 = tail call i32 @llvm.ctpop.i32(i32 %2608)
  %2610 = trunc i32 %2609 to i8
  %2611 = and i8 %2610, 1
  %2612 = xor i8 %2611, 1
  store i8 %2612, i8* %21, align 1
  %2613 = xor i32 %2604, %2603
  %2614 = lshr i32 %2613, 4
  %2615 = trunc i32 %2614 to i8
  %2616 = and i8 %2615, 1
  store i8 %2616, i8* %26, align 1
  %2617 = icmp eq i32 %2604, 0
  %2618 = zext i1 %2617 to i8
  store i8 %2618, i8* %29, align 1
  %2619 = lshr i32 %2604, 31
  %2620 = trunc i32 %2619 to i8
  store i8 %2620, i8* %32, align 1
  %2621 = lshr i32 %2603, 31
  %2622 = xor i32 %2619, %2621
  %2623 = add nuw nsw i32 %2622, %2619
  %2624 = icmp eq i32 %2623, 2
  %2625 = zext i1 %2624 to i8
  store i8 %2625, i8* %38, align 1
  %2626 = sext i32 %2604 to i64
  store i64 %2626, i64* %RAX.i1690, align 8
  %2627 = shl nsw i64 %2626, 2
  %2628 = add nsw i64 %2627, 9047232
  %2629 = add i64 %2579, 51
  store i64 %2629, i64* %3, align 8
  %2630 = inttoptr i64 %2628 to i32*
  %2631 = load i32, i32* %2630, align 4
  %2632 = xor i32 %2589, %2631
  %2633 = zext i32 %2632 to i64
  store i64 %2633, i64* %RCX.i1678, align 8
  store i8 0, i8* %14, align 1
  %2634 = and i32 %2632, 255
  %2635 = tail call i32 @llvm.ctpop.i32(i32 %2634)
  %2636 = trunc i32 %2635 to i8
  %2637 = and i8 %2636, 1
  %2638 = xor i8 %2637, 1
  store i8 %2638, i8* %21, align 1
  %2639 = icmp eq i32 %2632, 0
  %2640 = zext i1 %2639 to i8
  store i8 %2640, i8* %29, align 1
  %2641 = lshr i32 %2632, 31
  %2642 = trunc i32 %2641 to i8
  store i8 %2642, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i32 %2632, i32* bitcast (%G_0x633b40_type* @G_0x633b40 to i32*), align 8
  %2643 = load i64, i64* %RBP.i, align 8
  %2644 = add i64 %2643, -24
  %2645 = add i64 %2579, 69
  store i64 %2645, i64* %3, align 8
  %2646 = inttoptr i64 %2644 to i32*
  %2647 = load i32, i32* %2646, align 4
  %2648 = sext i32 %2647 to i64
  store i64 %2648, i64* %RAX.i1690, align 8
  %2649 = shl nsw i64 %2648, 2
  %2650 = add nsw i64 %2649, 9047808
  %2651 = add i64 %2579, 76
  store i64 %2651, i64* %3, align 8
  %2652 = inttoptr i64 %2650 to i32*
  %2653 = load i32, i32* %2652, align 4
  %2654 = xor i32 %2632, %2653
  store i32 %2654, i32* bitcast (%G_0x633b40_type* @G_0x633b40 to i32*), align 8
  %2655 = load i32, i32* bitcast (%G_0x62dab4_type* @G_0x62dab4 to i32*), align 8
  %2656 = zext i32 %2655 to i64
  store i64 %2656, i64* %RCX.i1678, align 8
  %2657 = load i32, i32* bitcast (%G_0x8661c0_type* @G_0x8661c0 to i32*), align 8
  %2658 = sub i32 %2657, %2655
  %2659 = zext i32 %2658 to i64
  store i64 %2659, i64* %RDX.i1382, align 8
  %2660 = icmp ult i32 %2657, %2655
  %2661 = zext i1 %2660 to i8
  store i8 %2661, i8* %14, align 1
  %2662 = and i32 %2658, 255
  %2663 = tail call i32 @llvm.ctpop.i32(i32 %2662)
  %2664 = trunc i32 %2663 to i8
  %2665 = and i8 %2664, 1
  %2666 = xor i8 %2665, 1
  store i8 %2666, i8* %21, align 1
  %2667 = xor i32 %2655, %2657
  %2668 = xor i32 %2667, %2658
  %2669 = lshr i32 %2668, 4
  %2670 = trunc i32 %2669 to i8
  %2671 = and i8 %2670, 1
  store i8 %2671, i8* %26, align 1
  %2672 = icmp eq i32 %2658, 0
  %2673 = zext i1 %2672 to i8
  store i8 %2673, i8* %29, align 1
  %2674 = lshr i32 %2658, 31
  %2675 = trunc i32 %2674 to i8
  store i8 %2675, i8* %32, align 1
  %2676 = lshr i32 %2657, 31
  %2677 = lshr i32 %2655, 31
  %2678 = xor i32 %2677, %2676
  %2679 = xor i32 %2674, %2676
  %2680 = add nuw nsw i32 %2679, %2678
  %2681 = icmp eq i32 %2680, 2
  %2682 = zext i1 %2681 to i8
  store i8 %2682, i8* %38, align 1
  store i32 %2658, i32* bitcast (%G_0x8661c0_type* @G_0x8661c0 to i32*), align 8
  %2683 = add i64 %2579, 117
  store i64 %2683, i64* %3, align 8
  %2684 = load i32, i32* %2646, align 4
  %2685 = sext i32 %2684 to i64
  store i64 %2685, i64* %RAX.i1690, align 8
  %2686 = shl nsw i64 %2685, 2
  %2687 = add nsw i64 %2686, 8807744
  %2688 = add i64 %2579, 128
  store i64 %2688, i64* %3, align 8
  %2689 = inttoptr i64 %2687 to i32*
  store i32 2, i32* %2689, align 4
  %2690 = load i64, i64* %RBP.i, align 8
  %2691 = add i64 %2690, -20
  %2692 = load i64, i64* %3, align 8
  %2693 = add i64 %2692, 4
  store i64 %2693, i64* %3, align 8
  %2694 = inttoptr i64 %2691 to i32*
  %2695 = load i32, i32* %2694, align 4
  %2696 = sext i32 %2695 to i64
  store i64 %2696, i64* %RAX.i1690, align 8
  %2697 = shl nsw i64 %2696, 2
  %2698 = add nsw i64 %2697, 8807744
  %2699 = add i64 %2692, 15
  store i64 %2699, i64* %3, align 8
  %2700 = inttoptr i64 %2698 to i32*
  store i32 13, i32* %2700, align 4
  %2701 = load i64, i64* %3, align 8
  %2702 = add i64 %2701, -39828
  %2703 = add i64 %2701, 5
  %2704 = load i64, i64* %6, align 8
  %2705 = add i64 %2704, -8
  %2706 = inttoptr i64 %2705 to i64*
  store i64 %2703, i64* %2706, align 8
  store i64 %2705, i64* %6, align 8
  store i64 %2702, i64* %3, align 8
  %call2_40c084 = tail call %struct.Memory* @sub_4024f0.addHolding(%struct.State* nonnull %0, i64 %2702, %struct.Memory* %MEMORY.7)
  %2707 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x880b20_type* @G__0x880b20 to i64), i64* %RAX.i1690, align 8
  %2708 = load i32, i32* bitcast (%G_0x63ae48_type* @G_0x63ae48 to i32*), align 8
  %2709 = add i32 %2708, -1
  %2710 = zext i32 %2709 to i64
  store i64 %2710, i64* %RCX.i1678, align 8
  %2711 = icmp ne i32 %2708, 0
  %2712 = zext i1 %2711 to i8
  store i8 %2712, i8* %14, align 1
  %2713 = and i32 %2709, 255
  %2714 = tail call i32 @llvm.ctpop.i32(i32 %2713)
  %2715 = trunc i32 %2714 to i8
  %2716 = and i8 %2715, 1
  %2717 = xor i8 %2716, 1
  store i8 %2717, i8* %21, align 1
  %2718 = xor i32 %2708, 16
  %2719 = xor i32 %2718, %2709
  %2720 = lshr i32 %2719, 4
  %2721 = trunc i32 %2720 to i8
  %2722 = and i8 %2721, 1
  store i8 %2722, i8* %26, align 1
  %2723 = icmp eq i32 %2709, 0
  %2724 = zext i1 %2723 to i8
  store i8 %2724, i8* %29, align 1
  %2725 = lshr i32 %2709, 31
  %2726 = trunc i32 %2725 to i8
  store i8 %2726, i8* %32, align 1
  %2727 = lshr i32 %2708, 31
  %2728 = xor i32 %2725, %2727
  %2729 = xor i32 %2725, 1
  %2730 = add nuw nsw i32 %2728, %2729
  %2731 = icmp eq i32 %2730, 2
  %2732 = zext i1 %2731 to i8
  store i8 %2732, i8* %38, align 1
  store i32 %2709, i32* bitcast (%G_0x63ae48_type* @G_0x63ae48 to i32*), align 8
  %2733 = load i64, i64* %RBP.i, align 8
  %2734 = add i64 %2733, -24
  %2735 = add i64 %2707, 30
  store i64 %2735, i64* %3, align 8
  %2736 = inttoptr i64 %2734 to i32*
  %2737 = load i32, i32* %2736, align 4
  %2738 = add i32 %2737, 12
  %2739 = zext i32 %2738 to i64
  store i64 %2739, i64* %RCX.i1678, align 8
  %2740 = icmp ugt i32 %2737, -13
  %2741 = zext i1 %2740 to i8
  store i8 %2741, i8* %14, align 1
  %2742 = and i32 %2738, 255
  %2743 = tail call i32 @llvm.ctpop.i32(i32 %2742)
  %2744 = trunc i32 %2743 to i8
  %2745 = and i8 %2744, 1
  %2746 = xor i8 %2745, 1
  store i8 %2746, i8* %21, align 1
  %2747 = xor i32 %2738, %2737
  %2748 = lshr i32 %2747, 4
  %2749 = trunc i32 %2748 to i8
  %2750 = and i8 %2749, 1
  store i8 %2750, i8* %26, align 1
  %2751 = icmp eq i32 %2738, 0
  %2752 = zext i1 %2751 to i8
  store i8 %2752, i8* %29, align 1
  %2753 = lshr i32 %2738, 31
  %2754 = trunc i32 %2753 to i8
  store i8 %2754, i8* %32, align 1
  %2755 = lshr i32 %2737, 31
  %2756 = xor i32 %2753, %2755
  %2757 = add nuw nsw i32 %2756, %2753
  %2758 = icmp eq i32 %2757, 2
  %2759 = zext i1 %2758 to i8
  store i8 %2759, i8* %38, align 1
  %R8.i622 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %2760 = sext i32 %2738 to i64
  store i64 %2760, i64* %R8.i622, align 8
  %2761 = shl nsw i64 %2760, 2
  %2762 = add nsw i64 %2761, 8807744
  %2763 = add i64 %2707, 48
  store i64 %2763, i64* %3, align 8
  %2764 = inttoptr i64 %2762 to i32*
  store i32 13, i32* %2764, align 4
  %2765 = load i64, i64* %RBP.i, align 8
  %2766 = add i64 %2765, -24
  %2767 = load i64, i64* %3, align 8
  %2768 = add i64 %2767, 4
  store i64 %2768, i64* %3, align 8
  %2769 = inttoptr i64 %2766 to i32*
  %2770 = load i32, i32* %2769, align 4
  %2771 = sext i32 %2770 to i64
  store i64 %2771, i64* %R8.i622, align 8
  %2772 = shl nsw i64 %2771, 2
  %2773 = add nsw i64 %2772, 8922032
  %2774 = add i64 %2767, 12
  store i64 %2774, i64* %3, align 8
  %2775 = inttoptr i64 %2773 to i32*
  %2776 = load i32, i32* %2775, align 4
  %2777 = add i32 %2776, 1
  %2778 = zext i32 %2777 to i64
  store i64 %2778, i64* %RCX.i1678, align 8
  %2779 = icmp eq i32 %2776, -1
  %2780 = icmp eq i32 %2777, 0
  %2781 = or i1 %2779, %2780
  %2782 = zext i1 %2781 to i8
  store i8 %2782, i8* %14, align 1
  %2783 = and i32 %2777, 255
  %2784 = tail call i32 @llvm.ctpop.i32(i32 %2783)
  %2785 = trunc i32 %2784 to i8
  %2786 = and i8 %2785, 1
  %2787 = xor i8 %2786, 1
  store i8 %2787, i8* %21, align 1
  %2788 = xor i32 %2777, %2776
  %2789 = lshr i32 %2788, 4
  %2790 = trunc i32 %2789 to i8
  %2791 = and i8 %2790, 1
  store i8 %2791, i8* %26, align 1
  %2792 = zext i1 %2780 to i8
  store i8 %2792, i8* %29, align 1
  %2793 = lshr i32 %2777, 31
  %2794 = trunc i32 %2793 to i8
  store i8 %2794, i8* %32, align 1
  %2795 = lshr i32 %2776, 31
  %2796 = xor i32 %2793, %2795
  %2797 = add nuw nsw i32 %2796, %2793
  %2798 = icmp eq i32 %2797, 2
  %2799 = zext i1 %2798 to i8
  store i8 %2799, i8* %38, align 1
  %2800 = add i64 %2767, 23
  store i64 %2800, i64* %3, align 8
  store i32 %2777, i32* %2775, align 4
  %2801 = load i64, i64* %RBP.i, align 8
  %2802 = add i64 %2801, -20
  %2803 = load i64, i64* %3, align 8
  %2804 = add i64 %2803, 4
  store i64 %2804, i64* %3, align 8
  %2805 = inttoptr i64 %2802 to i32*
  %2806 = load i32, i32* %2805, align 4
  %2807 = sext i32 %2806 to i64
  store i64 %2807, i64* %R8.i622, align 8
  %2808 = shl nsw i64 %2807, 2
  %2809 = add nsw i64 %2808, 8922032
  %2810 = add i64 %2803, 12
  store i64 %2810, i64* %3, align 8
  %2811 = inttoptr i64 %2809 to i32*
  %2812 = load i32, i32* %2811, align 4
  %2813 = add i32 %2812, 1
  %2814 = zext i32 %2813 to i64
  store i64 %2814, i64* %RCX.i1678, align 8
  %2815 = icmp eq i32 %2812, -1
  %2816 = icmp eq i32 %2813, 0
  %2817 = or i1 %2815, %2816
  %2818 = zext i1 %2817 to i8
  store i8 %2818, i8* %14, align 1
  %2819 = and i32 %2813, 255
  %2820 = tail call i32 @llvm.ctpop.i32(i32 %2819)
  %2821 = trunc i32 %2820 to i8
  %2822 = and i8 %2821, 1
  %2823 = xor i8 %2822, 1
  store i8 %2823, i8* %21, align 1
  %2824 = xor i32 %2813, %2812
  %2825 = lshr i32 %2824, 4
  %2826 = trunc i32 %2825 to i8
  %2827 = and i8 %2826, 1
  store i8 %2827, i8* %26, align 1
  %2828 = zext i1 %2816 to i8
  store i8 %2828, i8* %29, align 1
  %2829 = lshr i32 %2813, 31
  %2830 = trunc i32 %2829 to i8
  store i8 %2830, i8* %32, align 1
  %2831 = lshr i32 %2812, 31
  %2832 = xor i32 %2829, %2831
  %2833 = add nuw nsw i32 %2832, %2829
  %2834 = icmp eq i32 %2833, 2
  %2835 = zext i1 %2834 to i8
  store i8 %2835, i8* %38, align 1
  %2836 = add i64 %2803, 23
  store i64 %2836, i64* %3, align 8
  store i32 %2813, i32* %2811, align 4
  %2837 = load i64, i64* %RBP.i, align 8
  %2838 = add i64 %2837, -24
  %2839 = load i64, i64* %3, align 8
  %2840 = add i64 %2839, 3
  store i64 %2840, i64* %3, align 8
  %2841 = inttoptr i64 %2838 to i32*
  %2842 = load i32, i32* %2841, align 4
  %2843 = add i32 %2842, 12
  %2844 = zext i32 %2843 to i64
  store i64 %2844, i64* %RCX.i1678, align 8
  %2845 = icmp ugt i32 %2842, -13
  %2846 = zext i1 %2845 to i8
  store i8 %2846, i8* %14, align 1
  %2847 = and i32 %2843, 255
  %2848 = tail call i32 @llvm.ctpop.i32(i32 %2847)
  %2849 = trunc i32 %2848 to i8
  %2850 = and i8 %2849, 1
  %2851 = xor i8 %2850, 1
  store i8 %2851, i8* %21, align 1
  %2852 = xor i32 %2843, %2842
  %2853 = lshr i32 %2852, 4
  %2854 = trunc i32 %2853 to i8
  %2855 = and i8 %2854, 1
  store i8 %2855, i8* %26, align 1
  %2856 = icmp eq i32 %2843, 0
  %2857 = zext i1 %2856 to i8
  store i8 %2857, i8* %29, align 1
  %2858 = lshr i32 %2843, 31
  %2859 = trunc i32 %2858 to i8
  store i8 %2859, i8* %32, align 1
  %2860 = lshr i32 %2842, 31
  %2861 = xor i32 %2858, %2860
  %2862 = add nuw nsw i32 %2861, %2858
  %2863 = icmp eq i32 %2862, 2
  %2864 = zext i1 %2863 to i8
  store i8 %2864, i8* %38, align 1
  %2865 = sext i32 %2843 to i64
  store i64 %2865, i64* %R8.i622, align 8
  %2866 = shl nsw i64 %2865, 2
  %2867 = add nsw i64 %2866, 8922032
  %2868 = add i64 %2839, 17
  store i64 %2868, i64* %3, align 8
  %2869 = inttoptr i64 %2867 to i32*
  %2870 = load i32, i32* %2869, align 4
  %2871 = add i32 %2870, 1
  %2872 = add i64 %2839, 28
  store i64 %2872, i64* %3, align 8
  store i32 %2871, i32* %2869, align 4
  %2873 = load i64, i64* %3, align 8
  %2874 = load i32, i32* bitcast (%G_0x8661bc_type* @G_0x8661bc to i32*), align 8
  %2875 = xor i32 %2874, 1
  %2876 = zext i32 %2875 to i64
  store i64 %2876, i64* %RCX.i1678, align 8
  store i8 0, i8* %14, align 1
  %2877 = and i32 %2875, 255
  %2878 = tail call i32 @llvm.ctpop.i32(i32 %2877)
  %2879 = trunc i32 %2878 to i8
  %2880 = and i8 %2879, 1
  %2881 = xor i8 %2880, 1
  store i8 %2881, i8* %21, align 1
  %2882 = icmp eq i32 %2875, 0
  %2883 = zext i1 %2882 to i8
  store i8 %2883, i8* %29, align 1
  %2884 = lshr i32 %2874, 31
  %2885 = trunc i32 %2884 to i8
  store i8 %2885, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i32 %2875, i32* bitcast (%G_0x8661bc_type* @G_0x8661bc to i32*), align 8
  %2886 = load i64, i64* %RBP.i, align 8
  %2887 = add i64 %2886, -24
  %2888 = add i64 %2873, 20
  store i64 %2888, i64* %3, align 8
  %2889 = inttoptr i64 %2887 to i32*
  %2890 = load i32, i32* %2889, align 4
  %2891 = add i32 %2890, 12
  %2892 = zext i32 %2891 to i64
  store i64 %2892, i64* %RCX.i1678, align 8
  %2893 = icmp ugt i32 %2890, -13
  %2894 = zext i1 %2893 to i8
  store i8 %2894, i8* %14, align 1
  %2895 = and i32 %2891, 255
  %2896 = tail call i32 @llvm.ctpop.i32(i32 %2895)
  %2897 = trunc i32 %2896 to i8
  %2898 = and i8 %2897, 1
  %2899 = xor i8 %2898, 1
  store i8 %2899, i8* %21, align 1
  %2900 = xor i32 %2891, %2890
  %2901 = lshr i32 %2900, 4
  %2902 = trunc i32 %2901 to i8
  %2903 = and i8 %2902, 1
  store i8 %2903, i8* %26, align 1
  %2904 = icmp eq i32 %2891, 0
  %2905 = zext i1 %2904 to i8
  store i8 %2905, i8* %29, align 1
  %2906 = lshr i32 %2891, 31
  %2907 = trunc i32 %2906 to i8
  store i8 %2907, i8* %32, align 1
  %2908 = lshr i32 %2890, 31
  %2909 = xor i32 %2906, %2908
  %2910 = add nuw nsw i32 %2909, %2906
  %2911 = icmp eq i32 %2910, 2
  %2912 = zext i1 %2911 to i8
  store i8 %2912, i8* %38, align 1
  %2913 = sext i32 %2891 to i64
  store i64 %2913, i64* %R8.i622, align 8
  %2914 = shl nsw i64 %2913, 2
  %2915 = add nsw i64 %2914, 8807152
  %2916 = add i64 %2873, 34
  store i64 %2916, i64* %3, align 8
  %2917 = inttoptr i64 %2915 to i32*
  %2918 = load i32, i32* %2917, align 4
  %2919 = zext i32 %2918 to i64
  store i64 %2919, i64* %RCX.i1678, align 8
  %2920 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %2921 = sext i32 %2920 to i64
  %2922 = shl nsw i64 %2921, 4
  store i64 %2922, i64* %R8.i622, align 8
  %2923 = load i64, i64* %RAX.i1690, align 8
  %2924 = add i64 %2922, %2923
  store i64 %2924, i64* %RAX.i1690, align 8
  %2925 = icmp ult i64 %2924, %2923
  %2926 = icmp ult i64 %2924, %2922
  %2927 = or i1 %2925, %2926
  %2928 = zext i1 %2927 to i8
  store i8 %2928, i8* %14, align 1
  %2929 = trunc i64 %2924 to i32
  %2930 = and i32 %2929, 255
  %2931 = tail call i32 @llvm.ctpop.i32(i32 %2930)
  %2932 = trunc i32 %2931 to i8
  %2933 = and i8 %2932, 1
  %2934 = xor i8 %2933, 1
  store i8 %2934, i8* %21, align 1
  %2935 = xor i64 %2922, %2923
  %2936 = xor i64 %2935, %2924
  %2937 = lshr i64 %2936, 4
  %2938 = trunc i64 %2937 to i8
  %2939 = and i8 %2938, 1
  store i8 %2939, i8* %26, align 1
  %2940 = icmp eq i64 %2924, 0
  %2941 = zext i1 %2940 to i8
  store i8 %2941, i8* %29, align 1
  %2942 = lshr i64 %2924, 63
  %2943 = trunc i64 %2942 to i8
  store i8 %2943, i8* %32, align 1
  %2944 = lshr i64 %2923, 63
  %2945 = lshr i64 %2921, 59
  %2946 = and i64 %2945, 1
  %2947 = xor i64 %2942, %2944
  %2948 = xor i64 %2942, %2946
  %2949 = add nuw nsw i64 %2947, %2948
  %2950 = icmp eq i64 %2949, 2
  %2951 = zext i1 %2950 to i8
  store i8 %2951, i8* %38, align 1
  %2952 = inttoptr i64 %2924 to i32*
  %2953 = add i64 %2873, 51
  store i64 %2953, i64* %3, align 8
  store i32 %2918, i32* %2952, align 4
  %2954 = load i64, i64* %RBP.i, align 8
  %2955 = add i64 %2954, -24
  %2956 = load i64, i64* %3, align 8
  %2957 = add i64 %2956, 3
  store i64 %2957, i64* %3, align 8
  %2958 = inttoptr i64 %2955 to i32*
  %2959 = load i32, i32* %2958, align 4
  %2960 = add i32 %2959, 12
  %2961 = zext i32 %2960 to i64
  store i64 %2961, i64* %RCX.i1678, align 8
  %2962 = icmp ugt i32 %2959, -13
  %2963 = zext i1 %2962 to i8
  store i8 %2963, i8* %14, align 1
  %2964 = and i32 %2960, 255
  %2965 = tail call i32 @llvm.ctpop.i32(i32 %2964)
  %2966 = trunc i32 %2965 to i8
  %2967 = and i8 %2966, 1
  %2968 = xor i8 %2967, 1
  store i8 %2968, i8* %21, align 1
  %2969 = xor i32 %2960, %2959
  %2970 = lshr i32 %2969, 4
  %2971 = trunc i32 %2970 to i8
  %2972 = and i8 %2971, 1
  store i8 %2972, i8* %26, align 1
  %2973 = icmp eq i32 %2960, 0
  %2974 = zext i1 %2973 to i8
  store i8 %2974, i8* %29, align 1
  %2975 = lshr i32 %2960, 31
  %2976 = trunc i32 %2975 to i8
  store i8 %2976, i8* %32, align 1
  %2977 = lshr i32 %2959, 31
  %2978 = xor i32 %2975, %2977
  %2979 = add nuw nsw i32 %2978, %2975
  %2980 = icmp eq i32 %2979, 2
  %2981 = zext i1 %2980 to i8
  store i8 %2981, i8* %38, align 1
  %2982 = sext i32 %2960 to i64
  store i64 %2982, i64* %RAX.i1690, align 8
  %2983 = shl nsw i64 %2982, 2
  %2984 = add nsw i64 %2983, 8807152
  %2985 = add i64 %2956, 17
  store i64 %2985, i64* %3, align 8
  %2986 = inttoptr i64 %2984 to i32*
  %2987 = load i32, i32* %2986, align 4
  %2988 = sext i32 %2987 to i64
  store i64 %2988, i64* %RAX.i1690, align 8
  %2989 = shl nsw i64 %2988, 2
  %2990 = add nsw i64 %2989, 8778480
  %2991 = add i64 %2956, 28
  store i64 %2991, i64* %3, align 8
  %2992 = inttoptr i64 %2990 to i32*
  store i32 0, i32* %2992, align 4
  %2993 = load i64, i64* %RBP.i, align 8
  %2994 = add i64 %2993, -24
  %2995 = load i64, i64* %3, align 8
  %2996 = add i64 %2995, 3
  store i64 %2996, i64* %3, align 8
  %2997 = inttoptr i64 %2994 to i32*
  %2998 = load i32, i32* %2997, align 4
  %2999 = add i32 %2998, 12
  %3000 = sext i32 %2999 to i64
  store i64 %3000, i64* %RAX.i1690, align 8
  %3001 = shl nsw i64 %3000, 2
  %3002 = add nsw i64 %3001, 8807152
  %3003 = add i64 %2995, 20
  store i64 %3003, i64* %3, align 8
  %3004 = inttoptr i64 %3002 to i32*
  store i32 0, i32* %3004, align 4
  %3005 = load i64, i64* %3, align 8
  %3006 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %3007 = add i32 %3006, 1
  %3008 = zext i32 %3007 to i64
  store i64 %3008, i64* %RCX.i1678, align 8
  %3009 = icmp eq i32 %3006, -1
  %3010 = icmp eq i32 %3007, 0
  %3011 = or i1 %3009, %3010
  %3012 = zext i1 %3011 to i8
  store i8 %3012, i8* %14, align 1
  %3013 = and i32 %3007, 255
  %3014 = tail call i32 @llvm.ctpop.i32(i32 %3013)
  %3015 = trunc i32 %3014 to i8
  %3016 = and i8 %3015, 1
  %3017 = xor i8 %3016, 1
  store i8 %3017, i8* %21, align 1
  %3018 = xor i32 %3007, %3006
  %3019 = lshr i32 %3018, 4
  %3020 = trunc i32 %3019 to i8
  %3021 = and i8 %3020, 1
  store i8 %3021, i8* %26, align 1
  %3022 = zext i1 %3010 to i8
  store i8 %3022, i8* %29, align 1
  %3023 = lshr i32 %3007, 31
  %3024 = trunc i32 %3023 to i8
  store i8 %3024, i8* %32, align 1
  %3025 = lshr i32 %3006, 31
  %3026 = xor i32 %3023, %3025
  %3027 = add nuw nsw i32 %3026, %3023
  %3028 = icmp eq i32 %3027, 2
  %3029 = zext i1 %3028 to i8
  store i8 %3029, i8* %38, align 1
  store i32 %3007, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %3030 = add i64 %3005, 1576
  store i64 %3030, i64* %3, align 8
  br label %block_.L_40c78e

block_.L_40c17c:                                  ; preds = %block_.L_40bfeb
  %3031 = add i64 %1345, -24
  %3032 = add i64 %2579, 3
  store i64 %3032, i64* %3, align 8
  %3033 = inttoptr i64 %3031 to i32*
  %3034 = load i32, i32* %3033, align 4
  %3035 = zext i32 %3034 to i64
  store i64 %3035, i64* %RAX.i1690, align 8
  %3036 = add i64 %2579, 6
  store i64 %3036, i64* %3, align 8
  %3037 = load i32, i32* %1348, align 4
  %3038 = add i32 %3037, -24
  %3039 = zext i32 %3038 to i64
  store i64 %3039, i64* %RCX.i1678, align 8
  %3040 = lshr i32 %3038, 31
  %3041 = sub i32 %3034, %3038
  %3042 = icmp ult i32 %3034, %3038
  %3043 = zext i1 %3042 to i8
  store i8 %3043, i8* %14, align 1
  %3044 = and i32 %3041, 255
  %3045 = tail call i32 @llvm.ctpop.i32(i32 %3044)
  %3046 = trunc i32 %3045 to i8
  %3047 = and i8 %3046, 1
  %3048 = xor i8 %3047, 1
  store i8 %3048, i8* %21, align 1
  %3049 = xor i32 %3038, %3034
  %3050 = xor i32 %3049, %3041
  %3051 = lshr i32 %3050, 4
  %3052 = trunc i32 %3051 to i8
  %3053 = and i8 %3052, 1
  store i8 %3053, i8* %26, align 1
  %3054 = icmp eq i32 %3041, 0
  %3055 = zext i1 %3054 to i8
  store i8 %3055, i8* %29, align 1
  %3056 = lshr i32 %3041, 31
  %3057 = trunc i32 %3056 to i8
  store i8 %3057, i8* %32, align 1
  %3058 = lshr i32 %3034, 31
  %3059 = xor i32 %3040, %3058
  %3060 = xor i32 %3056, %3058
  %3061 = add nuw nsw i32 %3060, %3059
  %3062 = icmp eq i32 %3061, 2
  %3063 = zext i1 %3062 to i8
  store i8 %3063, i8* %38, align 1
  %.v50 = select i1 %3054, i64 17, i64 30
  %3064 = add i64 %2579, %.v50
  store i64 %3064, i64* %3, align 8
  br i1 %3054, label %block_40c18d, label %block_.L_40c19a

block_40c18d:                                     ; preds = %block_.L_40c17c
  %3065 = add i64 %3064, 3
  store i64 %3065, i64* %3, align 8
  %3066 = load i32, i32* %1348, align 4
  %3067 = add i32 %3066, -12
  %3068 = zext i32 %3067 to i64
  store i64 %3068, i64* %RAX.i1690, align 8
  %3069 = icmp ult i32 %3066, 12
  %3070 = zext i1 %3069 to i8
  store i8 %3070, i8* %14, align 1
  %3071 = and i32 %3067, 255
  %3072 = tail call i32 @llvm.ctpop.i32(i32 %3071)
  %3073 = trunc i32 %3072 to i8
  %3074 = and i8 %3073, 1
  %3075 = xor i8 %3074, 1
  store i8 %3075, i8* %21, align 1
  %3076 = xor i32 %3067, %3066
  %3077 = lshr i32 %3076, 4
  %3078 = trunc i32 %3077 to i8
  %3079 = and i8 %3078, 1
  store i8 %3079, i8* %26, align 1
  %3080 = icmp eq i32 %3067, 0
  %3081 = zext i1 %3080 to i8
  store i8 %3081, i8* %29, align 1
  %3082 = lshr i32 %3067, 31
  %3083 = trunc i32 %3082 to i8
  store i8 %3083, i8* %32, align 1
  %3084 = lshr i32 %3066, 31
  %3085 = xor i32 %3082, %3084
  %3086 = add nuw nsw i32 %3085, %3084
  %3087 = icmp eq i32 %3086, 2
  %3088 = zext i1 %3087 to i8
  store i8 %3088, i8* %38, align 1
  %3089 = add i64 %3064, 13
  store i64 %3089, i64* %3, align 8
  store i32 %3067, i32* bitcast (%G_0x881de4_type* @G_0x881de4 to i32*), align 8
  br label %block_.L_40c19a

block_.L_40c19a:                                  ; preds = %block_.L_40c17c, %block_40c18d
  %3090 = phi i64 [ %3089, %block_40c18d ], [ %3064, %block_.L_40c17c ]
  %3091 = add i64 %3090, 4
  store i64 %3091, i64* %3, align 8
  %3092 = load i32, i32* %3033, align 4
  %3093 = sext i32 %3092 to i64
  store i64 %3093, i64* %RAX.i1690, align 8
  %3094 = shl nsw i64 %3093, 2
  %3095 = add nsw i64 %3094, 8807744
  %3096 = add i64 %3090, 15
  store i64 %3096, i64* %3, align 8
  %3097 = inttoptr i64 %3095 to i32*
  store i32 2, i32* %3097, align 4
  %3098 = load i64, i64* %RBP.i, align 8
  %3099 = add i64 %3098, -20
  %3100 = load i64, i64* %3, align 8
  %3101 = add i64 %3100, 4
  store i64 %3101, i64* %3, align 8
  %3102 = inttoptr i64 %3099 to i32*
  %3103 = load i32, i32* %3102, align 4
  %3104 = sext i32 %3103 to i64
  store i64 %3104, i64* %RAX.i1690, align 8
  %3105 = shl nsw i64 %3104, 2
  %3106 = add nsw i64 %3105, 8807744
  %3107 = add i64 %3100, 15
  store i64 %3107, i64* %3, align 8
  %3108 = inttoptr i64 %3106 to i32*
  store i32 13, i32* %3108, align 4
  %3109 = load i64, i64* %RBP.i, align 8
  %3110 = add i64 %3109, -24
  %3111 = load i64, i64* %3, align 8
  %3112 = add i64 %3111, 4
  store i64 %3112, i64* %3, align 8
  %3113 = inttoptr i64 %3110 to i32*
  %3114 = load i32, i32* %3113, align 4
  %3115 = sext i32 %3114 to i64
  store i64 %3115, i64* %RAX.i1690, align 8
  %3116 = shl nsw i64 %3115, 2
  %3117 = add nsw i64 %3116, 8922032
  %3118 = add i64 %3111, 11
  store i64 %3118, i64* %3, align 8
  %3119 = inttoptr i64 %3117 to i32*
  %3120 = load i32, i32* %3119, align 4
  %3121 = add i32 %3120, 1
  %3122 = zext i32 %3121 to i64
  store i64 %3122, i64* %RCX.i1678, align 8
  %3123 = icmp eq i32 %3120, -1
  %3124 = icmp eq i32 %3121, 0
  %3125 = or i1 %3123, %3124
  %3126 = zext i1 %3125 to i8
  store i8 %3126, i8* %14, align 1
  %3127 = and i32 %3121, 255
  %3128 = tail call i32 @llvm.ctpop.i32(i32 %3127)
  %3129 = trunc i32 %3128 to i8
  %3130 = and i8 %3129, 1
  %3131 = xor i8 %3130, 1
  store i8 %3131, i8* %21, align 1
  %3132 = xor i32 %3121, %3120
  %3133 = lshr i32 %3132, 4
  %3134 = trunc i32 %3133 to i8
  %3135 = and i8 %3134, 1
  store i8 %3135, i8* %26, align 1
  %3136 = zext i1 %3124 to i8
  store i8 %3136, i8* %29, align 1
  %3137 = lshr i32 %3121, 31
  %3138 = trunc i32 %3137 to i8
  store i8 %3138, i8* %32, align 1
  %3139 = lshr i32 %3120, 31
  %3140 = xor i32 %3137, %3139
  %3141 = add nuw nsw i32 %3140, %3137
  %3142 = icmp eq i32 %3141, 2
  %3143 = zext i1 %3142 to i8
  store i8 %3143, i8* %38, align 1
  %3144 = add i64 %3111, 21
  store i64 %3144, i64* %3, align 8
  store i32 %3121, i32* %3119, align 4
  %3145 = load i64, i64* %RBP.i, align 8
  %3146 = add i64 %3145, -20
  %3147 = load i64, i64* %3, align 8
  %3148 = add i64 %3147, 4
  store i64 %3148, i64* %3, align 8
  %3149 = inttoptr i64 %3146 to i32*
  %3150 = load i32, i32* %3149, align 4
  %3151 = sext i32 %3150 to i64
  store i64 %3151, i64* %RAX.i1690, align 8
  %3152 = shl nsw i64 %3151, 2
  %3153 = add nsw i64 %3152, 8922032
  %3154 = add i64 %3147, 11
  store i64 %3154, i64* %3, align 8
  %3155 = inttoptr i64 %3153 to i32*
  %3156 = load i32, i32* %3155, align 4
  %3157 = add i32 %3156, 1
  %3158 = add i64 %3147, 21
  store i64 %3158, i64* %3, align 8
  store i32 %3157, i32* %3155, align 4
  %3159 = load i64, i64* %3, align 8
  %3160 = load i32, i32* bitcast (%G_0x8661bc_type* @G_0x8661bc to i32*), align 8
  %3161 = xor i32 %3160, 1
  %3162 = zext i32 %3161 to i64
  store i64 %3162, i64* %RCX.i1678, align 8
  store i8 0, i8* %14, align 1
  %3163 = and i32 %3161, 255
  %3164 = tail call i32 @llvm.ctpop.i32(i32 %3163)
  %3165 = trunc i32 %3164 to i8
  %3166 = and i8 %3165, 1
  %3167 = xor i8 %3166, 1
  store i8 %3167, i8* %21, align 1
  %3168 = icmp eq i32 %3161, 0
  %3169 = zext i1 %3168 to i8
  store i8 %3169, i8* %29, align 1
  %3170 = lshr i32 %3160, 31
  %3171 = trunc i32 %3170 to i8
  store i8 %3171, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i32 %3161, i32* bitcast (%G_0x8661bc_type* @G_0x8661bc to i32*), align 8
  %3172 = load i64, i64* %RBP.i, align 8
  %3173 = add i64 %3172, -20
  %3174 = add i64 %3159, 21
  store i64 %3174, i64* %3, align 8
  %3175 = inttoptr i64 %3173 to i32*
  %3176 = load i32, i32* %3175, align 4
  %3177 = sext i32 %3176 to i64
  store i64 %3177, i64* %RAX.i1690, align 8
  %3178 = shl nsw i64 %3177, 2
  %3179 = add nsw i64 %3178, 9047808
  %3180 = add i64 %3159, 28
  store i64 %3180, i64* %3, align 8
  %3181 = inttoptr i64 %3179 to i32*
  %3182 = load i32, i32* %3181, align 4
  %3183 = load i32, i32* bitcast (%G_0x633b40_type* @G_0x633b40 to i32*), align 8
  %3184 = xor i32 %3183, %3182
  %3185 = zext i32 %3184 to i64
  store i64 %3185, i64* %RCX.i1678, align 8
  store i8 0, i8* %14, align 1
  %3186 = and i32 %3184, 255
  %3187 = tail call i32 @llvm.ctpop.i32(i32 %3186)
  %3188 = trunc i32 %3187 to i8
  %3189 = and i8 %3188, 1
  %3190 = xor i8 %3189, 1
  store i8 %3190, i8* %21, align 1
  %3191 = icmp eq i32 %3184, 0
  %3192 = zext i1 %3191 to i8
  store i8 %3192, i8* %29, align 1
  %3193 = lshr i32 %3184, 31
  %3194 = trunc i32 %3193 to i8
  store i8 %3194, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i32 %3184, i32* bitcast (%G_0x633b40_type* @G_0x633b40 to i32*), align 8
  %3195 = add i64 %3172, -24
  %3196 = add i64 %3159, 46
  store i64 %3196, i64* %3, align 8
  %3197 = inttoptr i64 %3195 to i32*
  %3198 = load i32, i32* %3197, align 4
  %3199 = sext i32 %3198 to i64
  store i64 %3199, i64* %RAX.i1690, align 8
  %3200 = shl nsw i64 %3199, 2
  %3201 = add nsw i64 %3200, 9047808
  %3202 = add i64 %3159, 53
  store i64 %3202, i64* %3, align 8
  %3203 = inttoptr i64 %3201 to i32*
  %3204 = load i32, i32* %3203, align 4
  %3205 = xor i32 %3184, %3204
  store i32 %3205, i32* bitcast (%G_0x633b40_type* @G_0x633b40 to i32*), align 8
  %3206 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %3207 = add i32 %3206, 1
  %3208 = zext i32 %3207 to i64
  store i64 %3208, i64* %RCX.i1678, align 8
  %3209 = icmp eq i32 %3206, -1
  %3210 = icmp eq i32 %3207, 0
  %3211 = or i1 %3209, %3210
  %3212 = zext i1 %3211 to i8
  store i8 %3212, i8* %14, align 1
  %3213 = and i32 %3207, 255
  %3214 = tail call i32 @llvm.ctpop.i32(i32 %3213)
  %3215 = trunc i32 %3214 to i8
  %3216 = and i8 %3215, 1
  %3217 = xor i8 %3216, 1
  store i8 %3217, i8* %21, align 1
  %3218 = xor i32 %3207, %3206
  %3219 = lshr i32 %3218, 4
  %3220 = trunc i32 %3219 to i8
  %3221 = and i8 %3220, 1
  store i8 %3221, i8* %26, align 1
  %3222 = zext i1 %3210 to i8
  store i8 %3222, i8* %29, align 1
  %3223 = lshr i32 %3207, 31
  %3224 = trunc i32 %3223 to i8
  store i8 %3224, i8* %32, align 1
  %3225 = lshr i32 %3206, 31
  %3226 = xor i32 %3223, %3225
  %3227 = add nuw nsw i32 %3226, %3223
  %3228 = icmp eq i32 %3227, 2
  %3229 = zext i1 %3228 to i8
  store i8 %3229, i8* %38, align 1
  store i32 %3207, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %3230 = add i64 %3159, 1452
  store i64 %3230, i64* %3, align 8
  br label %block_.L_40c78e

block_.L_40c23b:                                  ; preds = %block_.L_40bed4
  %3231 = add i64 %2316, 4
  store i64 %3231, i64* %3, align 8
  %3232 = load i32, i32* %1348, align 4
  %3233 = sext i32 %3232 to i64
  store i64 %3233, i64* %RAX.i1690, align 8
  %3234 = shl nsw i64 %3233, 2
  %3235 = add nsw i64 %3234, 8807744
  %3236 = add i64 %2316, 12
  store i64 %3236, i64* %3, align 8
  %3237 = inttoptr i64 %3235 to i32*
  %3238 = load i32, i32* %3237, align 4
  %3239 = add i32 %3238, -5
  %3240 = icmp ult i32 %3238, 5
  %3241 = zext i1 %3240 to i8
  store i8 %3241, i8* %14, align 1
  %3242 = and i32 %3239, 255
  %3243 = tail call i32 @llvm.ctpop.i32(i32 %3242)
  %3244 = trunc i32 %3243 to i8
  %3245 = and i8 %3244, 1
  %3246 = xor i8 %3245, 1
  store i8 %3246, i8* %21, align 1
  %3247 = xor i32 %3239, %3238
  %3248 = lshr i32 %3247, 4
  %3249 = trunc i32 %3248 to i8
  %3250 = and i8 %3249, 1
  store i8 %3250, i8* %26, align 1
  %3251 = icmp eq i32 %3239, 0
  %3252 = zext i1 %3251 to i8
  store i8 %3252, i8* %29, align 1
  %3253 = lshr i32 %3239, 31
  %3254 = trunc i32 %3253 to i8
  store i8 %3254, i8* %32, align 1
  %3255 = lshr i32 %3238, 31
  %3256 = xor i32 %3253, %3255
  %3257 = add nuw nsw i32 %3256, %3255
  %3258 = icmp eq i32 %3257, 2
  %3259 = zext i1 %3258 to i8
  store i8 %3259, i8* %38, align 1
  %.v42 = select i1 %3251, i64 253, i64 18
  %3260 = add i64 %2316, %.v42
  store i64 %3260, i64* %3, align 8
  br i1 %3251, label %block_.L_40c338, label %block_40c24d

block_40c24d:                                     ; preds = %block_.L_40c23b
  %3261 = add i64 %3260, 4
  store i64 %3261, i64* %3, align 8
  %3262 = load i32, i32* %1348, align 4
  %3263 = sext i32 %3262 to i64
  store i64 %3263, i64* %RAX.i1690, align 8
  %3264 = shl nsw i64 %3263, 2
  %3265 = add nsw i64 %3264, 8807744
  %3266 = add i64 %3260, 12
  store i64 %3266, i64* %3, align 8
  %3267 = inttoptr i64 %3265 to i32*
  %3268 = load i32, i32* %3267, align 4
  %3269 = add i32 %3268, -6
  %3270 = icmp ult i32 %3268, 6
  %3271 = zext i1 %3270 to i8
  store i8 %3271, i8* %14, align 1
  %3272 = and i32 %3269, 255
  %3273 = tail call i32 @llvm.ctpop.i32(i32 %3272)
  %3274 = trunc i32 %3273 to i8
  %3275 = and i8 %3274, 1
  %3276 = xor i8 %3275, 1
  store i8 %3276, i8* %21, align 1
  %3277 = xor i32 %3269, %3268
  %3278 = lshr i32 %3277, 4
  %3279 = trunc i32 %3278 to i8
  %3280 = and i8 %3279, 1
  store i8 %3280, i8* %26, align 1
  %3281 = icmp eq i32 %3269, 0
  %3282 = zext i1 %3281 to i8
  store i8 %3282, i8* %29, align 1
  %3283 = lshr i32 %3269, 31
  %3284 = trunc i32 %3283 to i8
  store i8 %3284, i8* %32, align 1
  %3285 = lshr i32 %3268, 31
  %3286 = xor i32 %3283, %3285
  %3287 = add nuw nsw i32 %3286, %3285
  %3288 = icmp eq i32 %3287, 2
  %3289 = zext i1 %3288 to i8
  store i8 %3289, i8* %38, align 1
  %.v43 = select i1 %3281, i64 235, i64 18
  %3290 = add i64 %3260, %.v43
  store i64 %3290, i64* %3, align 8
  br i1 %3281, label %block_.L_40c338, label %block_40c25f

block_40c25f:                                     ; preds = %block_40c24d
  store i64 ptrtoint (%G__0x8a0a80_type* @G__0x8a0a80 to i64), i64* %RAX.i1690, align 8
  %3291 = add i64 %3290, 14
  store i64 %3291, i64* %3, align 8
  %3292 = load i32, i32* %1348, align 4
  %3293 = sext i32 %3292 to i64
  store i64 %3293, i64* %RCX.i1678, align 8
  %3294 = shl nsw i64 %3293, 2
  %3295 = add nsw i64 %3294, 8807744
  %3296 = add i64 %3290, 22
  store i64 %3296, i64* %3, align 8
  %3297 = inttoptr i64 %3295 to i32*
  %3298 = load i32, i32* %3297, align 4
  %3299 = sext i32 %3298 to i64
  %3300 = mul nsw i64 %3299, 576
  store i64 %3300, i64* %RCX.i1678, align 8
  %3301 = lshr i64 %3300, 63
  %3302 = add i64 %3300, ptrtoint (%G__0x8a0a80_type* @G__0x8a0a80 to i64)
  store i64 %3302, i64* %RDX.i1382, align 8
  %3303 = icmp ult i64 %3302, ptrtoint (%G__0x8a0a80_type* @G__0x8a0a80 to i64)
  %3304 = icmp ult i64 %3302, %3300
  %3305 = or i1 %3303, %3304
  %3306 = zext i1 %3305 to i8
  store i8 %3306, i8* %14, align 1
  %3307 = trunc i64 %3302 to i32
  %3308 = and i32 %3307, 248
  %3309 = tail call i32 @llvm.ctpop.i32(i32 %3308)
  %3310 = trunc i32 %3309 to i8
  %3311 = and i8 %3310, 1
  %3312 = xor i8 %3311, 1
  store i8 %3312, i8* %21, align 1
  %3313 = xor i64 %3302, ptrtoint (%G__0x8a0a80_type* @G__0x8a0a80 to i64)
  %3314 = lshr i64 %3313, 4
  %3315 = trunc i64 %3314 to i8
  %3316 = and i8 %3315, 1
  store i8 %3316, i8* %26, align 1
  %3317 = icmp eq i64 %3302, 0
  %3318 = zext i1 %3317 to i8
  store i8 %3318, i8* %29, align 1
  %3319 = lshr i64 %3302, 63
  %3320 = trunc i64 %3319 to i8
  store i8 %3320, i8* %32, align 1
  %3321 = xor i64 %3319, lshr (i64 ptrtoint (%G__0x8a0a80_type* @G__0x8a0a80 to i64), i64 63)
  %3322 = xor i64 %3319, %3301
  %3323 = add nuw nsw i64 %3321, %3322
  %3324 = icmp eq i64 %3323, 2
  %3325 = zext i1 %3324 to i8
  store i8 %3325, i8* %38, align 1
  %3326 = add i64 %3290, 39
  store i64 %3326, i64* %3, align 8
  %3327 = load i32, i32* %1348, align 4
  %3328 = sext i32 %3327 to i64
  store i64 %3328, i64* %RCX.i1678, align 8
  %3329 = shl nsw i64 %3328, 2
  %3330 = add i64 %3329, %3302
  %3331 = add i64 %3290, 42
  store i64 %3331, i64* %3, align 8
  %3332 = inttoptr i64 %3330 to i32*
  %3333 = load i32, i32* %3332, align 4
  %3334 = load i32, i32* bitcast (%G_0x633b40_type* @G_0x633b40 to i32*), align 8
  %3335 = xor i32 %3334, %3333
  %3336 = zext i32 %3335 to i64
  store i64 %3336, i64* %RSI.i1670, align 8
  store i8 0, i8* %14, align 1
  %3337 = and i32 %3335, 255
  %3338 = tail call i32 @llvm.ctpop.i32(i32 %3337)
  %3339 = trunc i32 %3338 to i8
  %3340 = and i8 %3339, 1
  %3341 = xor i8 %3340, 1
  store i8 %3341, i8* %21, align 1
  %3342 = icmp eq i32 %3335, 0
  %3343 = zext i1 %3342 to i8
  store i8 %3343, i8* %29, align 1
  %3344 = lshr i32 %3335, 31
  %3345 = trunc i32 %3344 to i8
  store i8 %3345, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i32 %3335, i32* bitcast (%G_0x633b40_type* @G_0x633b40 to i32*), align 8
  %3346 = load i64, i64* %RBP.i, align 8
  %3347 = add i64 %3346, -20
  %3348 = add i64 %3290, 60
  store i64 %3348, i64* %3, align 8
  %3349 = inttoptr i64 %3347 to i32*
  %3350 = load i32, i32* %3349, align 4
  %3351 = sext i32 %3350 to i64
  store i64 %3351, i64* %RCX.i1678, align 8
  %3352 = shl nsw i64 %3351, 2
  %3353 = add nsw i64 %3352, 8807744
  %3354 = add i64 %3290, 68
  store i64 %3354, i64* %3, align 8
  %3355 = inttoptr i64 %3353 to i32*
  %3356 = load i32, i32* %3355, align 4
  %3357 = sext i32 %3356 to i64
  %3358 = mul nsw i64 %3357, 576
  store i64 %3358, i64* %RCX.i1678, align 8
  %3359 = lshr i64 %3358, 63
  %3360 = load i64, i64* %RAX.i1690, align 8
  %3361 = add i64 %3358, %3360
  store i64 %3361, i64* %RAX.i1690, align 8
  %3362 = icmp ult i64 %3361, %3360
  %3363 = icmp ult i64 %3361, %3358
  %3364 = or i1 %3362, %3363
  %3365 = zext i1 %3364 to i8
  store i8 %3365, i8* %14, align 1
  %3366 = trunc i64 %3361 to i32
  %3367 = and i32 %3366, 255
  %3368 = tail call i32 @llvm.ctpop.i32(i32 %3367)
  %3369 = trunc i32 %3368 to i8
  %3370 = and i8 %3369, 1
  %3371 = xor i8 %3370, 1
  store i8 %3371, i8* %21, align 1
  %3372 = xor i64 %3360, %3361
  %3373 = lshr i64 %3372, 4
  %3374 = trunc i64 %3373 to i8
  %3375 = and i8 %3374, 1
  store i8 %3375, i8* %26, align 1
  %3376 = icmp eq i64 %3361, 0
  %3377 = zext i1 %3376 to i8
  store i8 %3377, i8* %29, align 1
  %3378 = lshr i64 %3361, 63
  %3379 = trunc i64 %3378 to i8
  store i8 %3379, i8* %32, align 1
  %3380 = lshr i64 %3360, 63
  %3381 = xor i64 %3378, %3380
  %3382 = xor i64 %3378, %3359
  %3383 = add nuw nsw i64 %3381, %3382
  %3384 = icmp eq i64 %3383, 2
  %3385 = zext i1 %3384 to i8
  store i8 %3385, i8* %38, align 1
  %3386 = add i64 %3346, -24
  %3387 = add i64 %3290, 82
  store i64 %3387, i64* %3, align 8
  %3388 = inttoptr i64 %3386 to i32*
  %3389 = load i32, i32* %3388, align 4
  %3390 = sext i32 %3389 to i64
  store i64 %3390, i64* %RCX.i1678, align 8
  %3391 = shl nsw i64 %3390, 2
  %3392 = add i64 %3391, %3361
  %3393 = add i64 %3290, 85
  store i64 %3393, i64* %3, align 8
  %3394 = inttoptr i64 %3392 to i32*
  %3395 = load i32, i32* %3394, align 4
  %3396 = xor i32 %3335, %3395
  %3397 = zext i32 %3396 to i64
  store i64 %3397, i64* %RSI.i1670, align 8
  store i8 0, i8* %14, align 1
  %3398 = and i32 %3396, 255
  %3399 = tail call i32 @llvm.ctpop.i32(i32 %3398)
  %3400 = trunc i32 %3399 to i8
  %3401 = and i8 %3400, 1
  %3402 = xor i8 %3401, 1
  store i8 %3402, i8* %21, align 1
  %3403 = icmp eq i32 %3396, 0
  %3404 = zext i1 %3403 to i8
  store i8 %3404, i8* %29, align 1
  %3405 = lshr i32 %3396, 31
  %3406 = trunc i32 %3405 to i8
  store i8 %3406, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i32 %3396, i32* bitcast (%G_0x633b40_type* @G_0x633b40 to i32*), align 8
  %3407 = load i64, i64* %RBP.i, align 8
  %3408 = add i64 %3407, -20
  %3409 = add i64 %3290, 103
  store i64 %3409, i64* %3, align 8
  %3410 = inttoptr i64 %3408 to i32*
  %3411 = load i32, i32* %3410, align 4
  %3412 = sext i32 %3411 to i64
  store i64 %3412, i64* %RAX.i1690, align 8
  %3413 = shl nsw i64 %3412, 2
  %3414 = add nsw i64 %3413, 8807744
  %3415 = add i64 %3290, 110
  store i64 %3415, i64* %3, align 8
  %3416 = inttoptr i64 %3414 to i32*
  %3417 = load i32, i32* %3416, align 4
  %3418 = zext i32 %3417 to i64
  store i64 %3418, i64* %RSI.i1670, align 8
  %3419 = add i64 %3407, -24
  %3420 = add i64 %3290, 114
  store i64 %3420, i64* %3, align 8
  %3421 = inttoptr i64 %3419 to i32*
  %3422 = load i32, i32* %3421, align 4
  %3423 = sext i32 %3422 to i64
  store i64 %3423, i64* %RAX.i1690, align 8
  %3424 = shl nsw i64 %3423, 2
  %3425 = add nsw i64 %3424, 8807744
  %3426 = add i64 %3290, 121
  store i64 %3426, i64* %3, align 8
  %3427 = inttoptr i64 %3425 to i32*
  store i32 %3417, i32* %3427, align 4
  %3428 = load i64, i64* %RBP.i, align 8
  %3429 = add i64 %3428, -20
  %3430 = load i64, i64* %3, align 8
  %3431 = add i64 %3430, 4
  store i64 %3431, i64* %3, align 8
  %3432 = inttoptr i64 %3429 to i32*
  %3433 = load i32, i32* %3432, align 4
  %3434 = sext i32 %3433 to i64
  store i64 %3434, i64* %RAX.i1690, align 8
  %3435 = shl nsw i64 %3434, 2
  %3436 = add nsw i64 %3435, 8807744
  %3437 = add i64 %3430, 15
  store i64 %3437, i64* %3, align 8
  %3438 = inttoptr i64 %3436 to i32*
  store i32 13, i32* %3438, align 4
  %3439 = load i64, i64* %RBP.i, align 8
  %3440 = add i64 %3439, -24
  %3441 = load i64, i64* %3, align 8
  %3442 = add i64 %3441, 4
  store i64 %3442, i64* %3, align 8
  %3443 = inttoptr i64 %3440 to i32*
  %3444 = load i32, i32* %3443, align 4
  %3445 = sext i32 %3444 to i64
  store i64 %3445, i64* %RAX.i1690, align 8
  %3446 = shl nsw i64 %3445, 2
  %3447 = add nsw i64 %3446, 8922032
  %3448 = add i64 %3441, 11
  store i64 %3448, i64* %3, align 8
  %3449 = inttoptr i64 %3447 to i32*
  %3450 = load i32, i32* %3449, align 4
  %3451 = add i32 %3450, 1
  %3452 = zext i32 %3451 to i64
  store i64 %3452, i64* %RSI.i1670, align 8
  %3453 = icmp eq i32 %3450, -1
  %3454 = icmp eq i32 %3451, 0
  %3455 = or i1 %3453, %3454
  %3456 = zext i1 %3455 to i8
  store i8 %3456, i8* %14, align 1
  %3457 = and i32 %3451, 255
  %3458 = tail call i32 @llvm.ctpop.i32(i32 %3457)
  %3459 = trunc i32 %3458 to i8
  %3460 = and i8 %3459, 1
  %3461 = xor i8 %3460, 1
  store i8 %3461, i8* %21, align 1
  %3462 = xor i32 %3451, %3450
  %3463 = lshr i32 %3462, 4
  %3464 = trunc i32 %3463 to i8
  %3465 = and i8 %3464, 1
  store i8 %3465, i8* %26, align 1
  %3466 = zext i1 %3454 to i8
  store i8 %3466, i8* %29, align 1
  %3467 = lshr i32 %3451, 31
  %3468 = trunc i32 %3467 to i8
  store i8 %3468, i8* %32, align 1
  %3469 = lshr i32 %3450, 31
  %3470 = xor i32 %3467, %3469
  %3471 = add nuw nsw i32 %3470, %3467
  %3472 = icmp eq i32 %3471, 2
  %3473 = zext i1 %3472 to i8
  store i8 %3473, i8* %38, align 1
  %3474 = add i64 %3441, 21
  store i64 %3474, i64* %3, align 8
  store i32 %3451, i32* %3449, align 4
  %3475 = load i64, i64* %RBP.i, align 8
  %3476 = add i64 %3475, -20
  %3477 = load i64, i64* %3, align 8
  %3478 = add i64 %3477, 4
  store i64 %3478, i64* %3, align 8
  %3479 = inttoptr i64 %3476 to i32*
  %3480 = load i32, i32* %3479, align 4
  %3481 = sext i32 %3480 to i64
  store i64 %3481, i64* %RAX.i1690, align 8
  %3482 = shl nsw i64 %3481, 2
  %3483 = add nsw i64 %3482, 8922032
  %3484 = add i64 %3477, 11
  store i64 %3484, i64* %3, align 8
  %3485 = inttoptr i64 %3483 to i32*
  %3486 = load i32, i32* %3485, align 4
  %3487 = add i32 %3486, 1
  %3488 = add i64 %3477, 21
  store i64 %3488, i64* %3, align 8
  store i32 %3487, i32* %3485, align 4
  %3489 = load i64, i64* %3, align 8
  %3490 = load i32, i32* bitcast (%G_0x8661bc_type* @G_0x8661bc to i32*), align 8
  %3491 = xor i32 %3490, 1
  store i32 %3491, i32* bitcast (%G_0x8661bc_type* @G_0x8661bc to i32*), align 8
  %3492 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %3493 = add i32 %3492, 1
  %3494 = zext i32 %3493 to i64
  store i64 %3494, i64* %RSI.i1670, align 8
  %3495 = icmp eq i32 %3492, -1
  %3496 = icmp eq i32 %3493, 0
  %3497 = or i1 %3495, %3496
  %3498 = zext i1 %3497 to i8
  store i8 %3498, i8* %14, align 1
  %3499 = and i32 %3493, 255
  %3500 = tail call i32 @llvm.ctpop.i32(i32 %3499)
  %3501 = trunc i32 %3500 to i8
  %3502 = and i8 %3501, 1
  %3503 = xor i8 %3502, 1
  store i8 %3503, i8* %21, align 1
  %3504 = xor i32 %3493, %3492
  %3505 = lshr i32 %3504, 4
  %3506 = trunc i32 %3505 to i8
  %3507 = and i8 %3506, 1
  store i8 %3507, i8* %26, align 1
  %3508 = zext i1 %3496 to i8
  store i8 %3508, i8* %29, align 1
  %3509 = lshr i32 %3493, 31
  %3510 = trunc i32 %3509 to i8
  store i8 %3510, i8* %32, align 1
  %3511 = lshr i32 %3492, 31
  %3512 = xor i32 %3509, %3511
  %3513 = add nuw nsw i32 %3512, %3509
  %3514 = icmp eq i32 %3513, 2
  %3515 = zext i1 %3514 to i8
  store i8 %3515, i8* %38, align 1
  store i32 %3493, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %3516 = add i64 %3489, 1149
  store i64 %3516, i64* %3, align 8
  br label %block_.L_40c78e

block_.L_40c338:                                  ; preds = %block_40c24d, %block_.L_40c23b
  %3517 = phi i64 [ %3290, %block_40c24d ], [ %3260, %block_.L_40c23b ]
  %3518 = add i64 %3517, 4
  store i64 %3518, i64* %3, align 8
  %3519 = load i32, i32* %1348, align 4
  %3520 = sext i32 %3519 to i64
  store i64 %3520, i64* %RAX.i1690, align 8
  %3521 = shl nsw i64 %3520, 2
  %3522 = add nsw i64 %3521, 8807744
  %3523 = add i64 %3517, 12
  store i64 %3523, i64* %3, align 8
  %3524 = inttoptr i64 %3522 to i32*
  %3525 = load i32, i32* %3524, align 4
  %3526 = add i32 %3525, -5
  %3527 = icmp ult i32 %3525, 5
  %3528 = zext i1 %3527 to i8
  store i8 %3528, i8* %14, align 1
  %3529 = and i32 %3526, 255
  %3530 = tail call i32 @llvm.ctpop.i32(i32 %3529)
  %3531 = trunc i32 %3530 to i8
  %3532 = and i8 %3531, 1
  %3533 = xor i8 %3532, 1
  store i8 %3533, i8* %21, align 1
  %3534 = xor i32 %3526, %3525
  %3535 = lshr i32 %3534, 4
  %3536 = trunc i32 %3535 to i8
  %3537 = and i8 %3536, 1
  store i8 %3537, i8* %26, align 1
  %3538 = icmp eq i32 %3526, 0
  %3539 = zext i1 %3538 to i8
  store i8 %3539, i8* %29, align 1
  %3540 = lshr i32 %3526, 31
  %3541 = trunc i32 %3540 to i8
  store i8 %3541, i8* %32, align 1
  %3542 = lshr i32 %3525, 31
  %3543 = xor i32 %3540, %3542
  %3544 = add nuw nsw i32 %3543, %3542
  %3545 = icmp eq i32 %3544, 2
  %3546 = zext i1 %3545 to i8
  store i8 %3546, i8* %38, align 1
  %.v = select i1 %3538, i64 18, i64 564
  %3547 = add i64 %3517, %.v
  %3548 = add i64 %1345, -24
  %3549 = add i64 %3547, 3
  store i64 %3549, i64* %3, align 8
  %3550 = inttoptr i64 %3548 to i32*
  %3551 = load i32, i32* %3550, align 4
  %3552 = zext i32 %3551 to i64
  store i64 %3552, i64* %RAX.i1690, align 8
  %3553 = add i64 %3547, 10
  store i64 %3553, i64* %3, align 8
  br i1 %3538, label %block_40c34a, label %block_.L_40c56c

block_40c34a:                                     ; preds = %block_.L_40c338
  store i32 %3551, i32* bitcast (%G_0x86bd7c_type* @G_0x86bd7c to i32*), align 8
  %3554 = add i64 %3547, 14
  store i64 %3554, i64* %3, align 8
  %3555 = load i32, i32* %3550, align 4
  %3556 = sext i32 %3555 to i64
  store i64 %3556, i64* %RCX.i1678, align 8
  %3557 = shl nsw i64 %3556, 2
  %3558 = add nsw i64 %3557, 8807744
  %3559 = add i64 %3547, 25
  store i64 %3559, i64* %3, align 8
  %3560 = inttoptr i64 %3558 to i32*
  store i32 5, i32* %3560, align 4
  %3561 = load i64, i64* %RBP.i, align 8
  %3562 = add i64 %3561, -20
  %3563 = load i64, i64* %3, align 8
  %3564 = add i64 %3563, 4
  store i64 %3564, i64* %3, align 8
  %3565 = inttoptr i64 %3562 to i32*
  %3566 = load i32, i32* %3565, align 4
  %3567 = sext i32 %3566 to i64
  store i64 %3567, i64* %RCX.i1678, align 8
  %3568 = shl nsw i64 %3567, 2
  %3569 = add nsw i64 %3568, 8807744
  %3570 = add i64 %3563, 15
  store i64 %3570, i64* %3, align 8
  %3571 = inttoptr i64 %3569 to i32*
  store i32 13, i32* %3571, align 4
  %3572 = load i64, i64* %RBP.i, align 8
  %3573 = add i64 %3572, -24
  %3574 = load i64, i64* %3, align 8
  %3575 = add i64 %3574, 4
  store i64 %3575, i64* %3, align 8
  %3576 = inttoptr i64 %3573 to i32*
  %3577 = load i32, i32* %3576, align 4
  %3578 = sext i32 %3577 to i64
  store i64 %3578, i64* %RCX.i1678, align 8
  %3579 = shl nsw i64 %3578, 2
  %3580 = add nsw i64 %3579, 8922032
  %3581 = add i64 %3574, 11
  store i64 %3581, i64* %3, align 8
  %3582 = inttoptr i64 %3580 to i32*
  %3583 = load i32, i32* %3582, align 4
  %3584 = add i32 %3583, 1
  %3585 = zext i32 %3584 to i64
  store i64 %3585, i64* %RAX.i1690, align 8
  %3586 = icmp eq i32 %3583, -1
  %3587 = icmp eq i32 %3584, 0
  %3588 = or i1 %3586, %3587
  %3589 = zext i1 %3588 to i8
  store i8 %3589, i8* %14, align 1
  %3590 = and i32 %3584, 255
  %3591 = tail call i32 @llvm.ctpop.i32(i32 %3590)
  %3592 = trunc i32 %3591 to i8
  %3593 = and i8 %3592, 1
  %3594 = xor i8 %3593, 1
  store i8 %3594, i8* %21, align 1
  %3595 = xor i32 %3584, %3583
  %3596 = lshr i32 %3595, 4
  %3597 = trunc i32 %3596 to i8
  %3598 = and i8 %3597, 1
  store i8 %3598, i8* %26, align 1
  %3599 = zext i1 %3587 to i8
  store i8 %3599, i8* %29, align 1
  %3600 = lshr i32 %3584, 31
  %3601 = trunc i32 %3600 to i8
  store i8 %3601, i8* %32, align 1
  %3602 = lshr i32 %3583, 31
  %3603 = xor i32 %3600, %3602
  %3604 = add nuw nsw i32 %3603, %3600
  %3605 = icmp eq i32 %3604, 2
  %3606 = zext i1 %3605 to i8
  store i8 %3606, i8* %38, align 1
  %3607 = add i64 %3574, 21
  store i64 %3607, i64* %3, align 8
  store i32 %3584, i32* %3582, align 4
  %3608 = load i64, i64* %RBP.i, align 8
  %3609 = add i64 %3608, -20
  %3610 = load i64, i64* %3, align 8
  %3611 = add i64 %3610, 4
  store i64 %3611, i64* %3, align 8
  %3612 = inttoptr i64 %3609 to i32*
  %3613 = load i32, i32* %3612, align 4
  %3614 = sext i32 %3613 to i64
  store i64 %3614, i64* %RCX.i1678, align 8
  %3615 = shl nsw i64 %3614, 2
  %3616 = add nsw i64 %3615, 8922032
  %3617 = add i64 %3610, 11
  store i64 %3617, i64* %3, align 8
  %3618 = inttoptr i64 %3616 to i32*
  %3619 = load i32, i32* %3618, align 4
  %3620 = add i32 %3619, 1
  %3621 = add i64 %3610, 21
  store i64 %3621, i64* %3, align 8
  store i32 %3620, i32* %3618, align 4
  %3622 = load i64, i64* %3, align 8
  %3623 = load i32, i32* bitcast (%G_0x8661bc_type* @G_0x8661bc to i32*), align 8
  %3624 = xor i32 %3623, 1
  %3625 = zext i32 %3624 to i64
  store i64 %3625, i64* %RAX.i1690, align 8
  store i8 0, i8* %14, align 1
  %3626 = and i32 %3624, 255
  %3627 = tail call i32 @llvm.ctpop.i32(i32 %3626)
  %3628 = trunc i32 %3627 to i8
  %3629 = and i8 %3628, 1
  %3630 = xor i8 %3629, 1
  store i8 %3630, i8* %21, align 1
  %3631 = icmp eq i32 %3624, 0
  %3632 = zext i1 %3631 to i8
  store i8 %3632, i8* %29, align 1
  %3633 = lshr i32 %3623, 31
  %3634 = trunc i32 %3633 to i8
  store i8 %3634, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i32 %3624, i32* bitcast (%G_0x8661bc_type* @G_0x8661bc to i32*), align 8
  %3635 = load i64, i64* %RBP.i, align 8
  %3636 = add i64 %3635, -20
  %3637 = add i64 %3622, 21
  store i64 %3637, i64* %3, align 8
  %3638 = inttoptr i64 %3636 to i32*
  %3639 = load i32, i32* %3638, align 4
  %3640 = sext i32 %3639 to i64
  store i64 %3640, i64* %RCX.i1678, align 8
  %3641 = shl nsw i64 %3640, 2
  %3642 = add nsw i64 %3641, 9049536
  %3643 = add i64 %3622, 28
  store i64 %3643, i64* %3, align 8
  %3644 = inttoptr i64 %3642 to i32*
  %3645 = load i32, i32* %3644, align 4
  %3646 = load i32, i32* bitcast (%G_0x633b40_type* @G_0x633b40 to i32*), align 8
  %3647 = xor i32 %3646, %3645
  %3648 = zext i32 %3647 to i64
  store i64 %3648, i64* %RAX.i1690, align 8
  store i8 0, i8* %14, align 1
  %3649 = and i32 %3647, 255
  %3650 = tail call i32 @llvm.ctpop.i32(i32 %3649)
  %3651 = trunc i32 %3650 to i8
  %3652 = and i8 %3651, 1
  %3653 = xor i8 %3652, 1
  store i8 %3653, i8* %21, align 1
  %3654 = icmp eq i32 %3647, 0
  %3655 = zext i1 %3654 to i8
  store i8 %3655, i8* %29, align 1
  %3656 = lshr i32 %3647, 31
  %3657 = trunc i32 %3656 to i8
  store i8 %3657, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i32 %3647, i32* bitcast (%G_0x633b40_type* @G_0x633b40 to i32*), align 8
  %3658 = add i64 %3635, -24
  %3659 = add i64 %3622, 46
  store i64 %3659, i64* %3, align 8
  %3660 = inttoptr i64 %3658 to i32*
  %3661 = load i32, i32* %3660, align 4
  %3662 = sext i32 %3661 to i64
  store i64 %3662, i64* %RCX.i1678, align 8
  %3663 = shl nsw i64 %3662, 2
  %3664 = add nsw i64 %3663, 9049536
  %3665 = add i64 %3622, 53
  store i64 %3665, i64* %3, align 8
  %3666 = inttoptr i64 %3664 to i32*
  %3667 = load i32, i32* %3666, align 4
  %3668 = xor i32 %3647, %3667
  %3669 = zext i32 %3668 to i64
  store i64 %3669, i64* %RAX.i1690, align 8
  store i8 0, i8* %14, align 1
  %3670 = and i32 %3668, 255
  %3671 = tail call i32 @llvm.ctpop.i32(i32 %3670)
  %3672 = trunc i32 %3671 to i8
  %3673 = and i8 %3672, 1
  %3674 = xor i8 %3673, 1
  store i8 %3674, i8* %21, align 1
  %3675 = icmp eq i32 %3668, 0
  %3676 = zext i1 %3675 to i8
  store i8 %3676, i8* %29, align 1
  %3677 = lshr i32 %3668, 31
  %3678 = trunc i32 %3677 to i8
  store i8 %3678, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i32 %3668, i32* bitcast (%G_0x633b40_type* @G_0x633b40 to i32*), align 8
  %3679 = add i64 %3635, -36
  %3680 = add i64 %3622, 71
  store i64 %3680, i64* %3, align 8
  %3681 = inttoptr i64 %3679 to i32*
  %3682 = load i32, i32* %3681, align 4
  %3683 = add i32 %3682, -1
  %3684 = icmp eq i32 %3682, 0
  %3685 = zext i1 %3684 to i8
  store i8 %3685, i8* %14, align 1
  %3686 = and i32 %3683, 255
  %3687 = tail call i32 @llvm.ctpop.i32(i32 %3686)
  %3688 = trunc i32 %3687 to i8
  %3689 = and i8 %3688, 1
  %3690 = xor i8 %3689, 1
  store i8 %3690, i8* %21, align 1
  %3691 = xor i32 %3683, %3682
  %3692 = lshr i32 %3691, 4
  %3693 = trunc i32 %3692 to i8
  %3694 = and i8 %3693, 1
  store i8 %3694, i8* %26, align 1
  %3695 = icmp eq i32 %3683, 0
  %3696 = zext i1 %3695 to i8
  store i8 %3696, i8* %29, align 1
  %3697 = lshr i32 %3683, 31
  %3698 = trunc i32 %3697 to i8
  store i8 %3698, i8* %32, align 1
  %3699 = lshr i32 %3682, 31
  %3700 = xor i32 %3697, %3699
  %3701 = add nuw nsw i32 %3700, %3699
  %3702 = icmp eq i32 %3701, 2
  %3703 = zext i1 %3702 to i8
  store i8 %3703, i8* %38, align 1
  %.v46 = select i1 %3695, i64 77, i64 252
  %3704 = add i64 %3622, %.v46
  store i64 %3704, i64* %3, align 8
  br i1 %3695, label %block_40c3e9, label %block_.L_40c498

block_40c3e9:                                     ; preds = %block_40c34a
  store i32 13, i32* bitcast (%G_0x8665c4_type* @G_0x8665c4 to i32*), align 8
  store i32 7, i32* bitcast (%G_0x8665bc_type* @G_0x8665bc to i32*), align 8
  %3705 = load i32, i32* bitcast (%G_0x882434_type* @G_0x882434 to i32*), align 8
  %3706 = add i32 %3705, 1
  store i32 %3706, i32* bitcast (%G_0x882434_type* @G_0x882434 to i32*), align 8
  %3707 = load i32, i32* bitcast (%G_0x88242c_type* @G_0x88242c to i32*), align 8
  %3708 = add i32 %3707, 1
  store i32 %3708, i32* bitcast (%G_0x88242c_type* @G_0x88242c to i32*), align 8
  store i32 1, i32* bitcast (%G_0x62e4fc_type* @G_0x62e4fc to i32*), align 8
  %3709 = load i32, i32* bitcast (%G_0x866374_type* @G_0x866374 to i32*), align 8
  %3710 = sext i32 %3709 to i64
  store i64 %3710, i64* %RCX.i1678, align 8
  %3711 = shl nsw i64 %3710, 2
  %3712 = add nsw i64 %3711, 8778480
  %3713 = add i64 %3704, 86
  store i64 %3713, i64* %3, align 8
  %3714 = inttoptr i64 %3712 to i32*
  store i32 31, i32* %3714, align 4
  %3715 = load i64, i64* %3, align 8
  %3716 = load i32, i32* bitcast (%G_0x866374_type* @G_0x866374 to i32*), align 8
  store i32 %3716, i32* bitcast (%G_0x86636c_type* @G_0x86636c to i32*), align 8
  store i32 0, i32* bitcast (%G_0x866374_type* @G_0x866374 to i32*), align 8
  %3717 = load i32, i32* bitcast (%G_0x8a1ac4_type* @G_0x8a1ac4 to i32*), align 8
  %3718 = load i32, i32* bitcast (%G_0x633b40_type* @G_0x633b40 to i32*), align 8
  %3719 = xor i32 %3718, %3717
  %3720 = load i32, i32* bitcast (%G_0x8a1abc_type* @G_0x8a1abc to i32*), align 8
  %3721 = xor i32 %3719, %3720
  store i32 %3721, i32* bitcast (%G_0x633b40_type* @G_0x633b40 to i32*), align 8
  %3722 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %3723 = add i32 %3722, 1
  %3724 = zext i32 %3723 to i64
  store i64 %3724, i64* %RAX.i1690, align 8
  %3725 = icmp eq i32 %3722, -1
  %3726 = icmp eq i32 %3723, 0
  %3727 = or i1 %3725, %3726
  %3728 = zext i1 %3727 to i8
  store i8 %3728, i8* %14, align 1
  %3729 = and i32 %3723, 255
  %3730 = tail call i32 @llvm.ctpop.i32(i32 %3729)
  %3731 = trunc i32 %3730 to i8
  %3732 = and i8 %3731, 1
  %3733 = xor i8 %3732, 1
  store i8 %3733, i8* %21, align 1
  %3734 = xor i32 %3723, %3722
  %3735 = lshr i32 %3734, 4
  %3736 = trunc i32 %3735 to i8
  %3737 = and i8 %3736, 1
  store i8 %3737, i8* %26, align 1
  %3738 = zext i1 %3726 to i8
  store i8 %3738, i8* %29, align 1
  %3739 = lshr i32 %3723, 31
  %3740 = trunc i32 %3739 to i8
  store i8 %3740, i8* %32, align 1
  %3741 = lshr i32 %3722, 31
  %3742 = xor i32 %3739, %3741
  %3743 = add nuw nsw i32 %3742, %3739
  %3744 = icmp eq i32 %3743, 2
  %3745 = zext i1 %3744 to i8
  store i8 %3745, i8* %38, align 1
  store i32 %3723, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %3746 = add i64 %3715, 847
  store i64 %3746, i64* %3, align 8
  br label %block_.L_40c78e

block_.L_40c498:                                  ; preds = %block_40c34a
  %3747 = load i64, i64* %RBP.i, align 8
  %3748 = add i64 %3747, -36
  %3749 = add i64 %3704, 4
  store i64 %3749, i64* %3, align 8
  %3750 = inttoptr i64 %3748 to i32*
  %3751 = load i32, i32* %3750, align 4
  %3752 = add i32 %3751, -2
  %3753 = icmp ult i32 %3751, 2
  %3754 = zext i1 %3753 to i8
  store i8 %3754, i8* %14, align 1
  %3755 = and i32 %3752, 255
  %3756 = tail call i32 @llvm.ctpop.i32(i32 %3755)
  %3757 = trunc i32 %3756 to i8
  %3758 = and i8 %3757, 1
  %3759 = xor i8 %3758, 1
  store i8 %3759, i8* %21, align 1
  %3760 = xor i32 %3752, %3751
  %3761 = lshr i32 %3760, 4
  %3762 = trunc i32 %3761 to i8
  %3763 = and i8 %3762, 1
  store i8 %3763, i8* %26, align 1
  %3764 = icmp eq i32 %3752, 0
  %3765 = zext i1 %3764 to i8
  store i8 %3765, i8* %29, align 1
  %3766 = lshr i32 %3752, 31
  %3767 = trunc i32 %3766 to i8
  store i8 %3767, i8* %32, align 1
  %3768 = lshr i32 %3751, 31
  %3769 = xor i32 %3766, %3768
  %3770 = add nuw nsw i32 %3769, %3768
  %3771 = icmp eq i32 %3770, 2
  %3772 = zext i1 %3771 to i8
  store i8 %3772, i8* %38, align 1
  %.v47 = select i1 %3764, i64 10, i64 185
  %3773 = add i64 %3704, %.v47
  store i64 %3773, i64* %3, align 8
  br i1 %3764, label %block_40c4a2, label %block_.L_40c551

block_40c4a2:                                     ; preds = %block_.L_40c498
  store i32 13, i32* bitcast (%G_0x8665a8_type* @G_0x8665a8 to i32*), align 8
  store i32 7, i32* bitcast (%G_0x8665b4_type* @G_0x8665b4 to i32*), align 8
  %3774 = load i32, i32* bitcast (%G_0x882418_type* @G_0x882418 to i32*), align 8
  %3775 = add i32 %3774, 1
  store i32 %3775, i32* bitcast (%G_0x882418_type* @G_0x882418 to i32*), align 8
  %3776 = load i32, i32* bitcast (%G_0x882424_type* @G_0x882424 to i32*), align 8
  %3777 = add i32 %3776, 1
  store i32 %3777, i32* bitcast (%G_0x882424_type* @G_0x882424 to i32*), align 8
  store i32 2, i32* bitcast (%G_0x62e4fc_type* @G_0x62e4fc to i32*), align 8
  %3778 = load i32, i32* bitcast (%G_0x866358_type* @G_0x866358 to i32*), align 8
  %3779 = sext i32 %3778 to i64
  store i64 %3779, i64* %RCX.i1678, align 8
  %3780 = shl nsw i64 %3779, 2
  %3781 = add nsw i64 %3780, 8778480
  %3782 = add i64 %3773, 86
  store i64 %3782, i64* %3, align 8
  %3783 = inttoptr i64 %3781 to i32*
  store i32 29, i32* %3783, align 4
  %3784 = load i64, i64* %3, align 8
  %3785 = load i32, i32* bitcast (%G_0x866358_type* @G_0x866358 to i32*), align 8
  store i32 %3785, i32* bitcast (%G_0x866364_type* @G_0x866364 to i32*), align 8
  store i32 0, i32* bitcast (%G_0x866358_type* @G_0x866358 to i32*), align 8
  %3786 = load i32, i32* bitcast (%G_0x8a1aa8_type* @G_0x8a1aa8 to i32*), align 8
  %3787 = load i32, i32* bitcast (%G_0x633b40_type* @G_0x633b40 to i32*), align 8
  %3788 = xor i32 %3787, %3786
  %3789 = load i32, i32* bitcast (%G_0x8a1ab4_type* @G_0x8a1ab4 to i32*), align 8
  %3790 = xor i32 %3788, %3789
  store i32 %3790, i32* bitcast (%G_0x633b40_type* @G_0x633b40 to i32*), align 8
  %3791 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %3792 = add i32 %3791, 1
  %3793 = zext i32 %3792 to i64
  store i64 %3793, i64* %RAX.i1690, align 8
  %3794 = icmp eq i32 %3791, -1
  %3795 = icmp eq i32 %3792, 0
  %3796 = or i1 %3794, %3795
  %3797 = zext i1 %3796 to i8
  store i8 %3797, i8* %14, align 1
  %3798 = and i32 %3792, 255
  %3799 = tail call i32 @llvm.ctpop.i32(i32 %3798)
  %3800 = trunc i32 %3799 to i8
  %3801 = and i8 %3800, 1
  %3802 = xor i8 %3801, 1
  store i8 %3802, i8* %21, align 1
  %3803 = xor i32 %3792, %3791
  %3804 = lshr i32 %3803, 4
  %3805 = trunc i32 %3804 to i8
  %3806 = and i8 %3805, 1
  store i8 %3806, i8* %26, align 1
  %3807 = zext i1 %3795 to i8
  store i8 %3807, i8* %29, align 1
  %3808 = lshr i32 %3792, 31
  %3809 = trunc i32 %3808 to i8
  store i8 %3809, i8* %32, align 1
  %3810 = lshr i32 %3791, 31
  %3811 = xor i32 %3808, %3810
  %3812 = add nuw nsw i32 %3811, %3808
  %3813 = icmp eq i32 %3812, 2
  %3814 = zext i1 %3813 to i8
  store i8 %3814, i8* %38, align 1
  store i32 %3792, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %3815 = add i64 %3784, 662
  store i64 %3815, i64* %3, align 8
  br label %block_.L_40c78e

block_.L_40c551:                                  ; preds = %block_.L_40c498
  %3816 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %3817 = add i32 %3816, 1
  %3818 = zext i32 %3817 to i64
  store i64 %3818, i64* %RAX.i1690, align 8
  %3819 = icmp eq i32 %3816, -1
  %3820 = icmp eq i32 %3817, 0
  %3821 = or i1 %3819, %3820
  %3822 = zext i1 %3821 to i8
  store i8 %3822, i8* %14, align 1
  %3823 = and i32 %3817, 255
  %3824 = tail call i32 @llvm.ctpop.i32(i32 %3823)
  %3825 = trunc i32 %3824 to i8
  %3826 = and i8 %3825, 1
  %3827 = xor i8 %3826, 1
  store i8 %3827, i8* %21, align 1
  %3828 = xor i32 %3817, %3816
  %3829 = lshr i32 %3828, 4
  %3830 = trunc i32 %3829 to i8
  %3831 = and i8 %3830, 1
  store i8 %3831, i8* %26, align 1
  %3832 = zext i1 %3820 to i8
  store i8 %3832, i8* %29, align 1
  %3833 = lshr i32 %3817, 31
  %3834 = trunc i32 %3833 to i8
  store i8 %3834, i8* %32, align 1
  %3835 = lshr i32 %3816, 31
  %3836 = xor i32 %3833, %3835
  %3837 = add nuw nsw i32 %3836, %3833
  %3838 = icmp eq i32 %3837, 2
  %3839 = zext i1 %3838 to i8
  store i8 %3839, i8* %38, align 1
  store i32 %3817, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %3840 = add i64 %3773, 573
  store i64 %3840, i64* %3, align 8
  br label %block_.L_40c78e

block_.L_40c56c:                                  ; preds = %block_.L_40c338
  store i32 %3551, i32* bitcast (%G_0x8661d0_type* @G_0x8661d0 to i32*), align 8
  %3841 = add i64 %3547, 14
  store i64 %3841, i64* %3, align 8
  %3842 = load i32, i32* %3550, align 4
  %3843 = sext i32 %3842 to i64
  store i64 %3843, i64* %RCX.i1678, align 8
  %3844 = shl nsw i64 %3843, 2
  %3845 = add nsw i64 %3844, 8807744
  %3846 = add i64 %3547, 25
  store i64 %3846, i64* %3, align 8
  %3847 = inttoptr i64 %3845 to i32*
  store i32 6, i32* %3847, align 4
  %3848 = load i64, i64* %RBP.i, align 8
  %3849 = add i64 %3848, -20
  %3850 = load i64, i64* %3, align 8
  %3851 = add i64 %3850, 4
  store i64 %3851, i64* %3, align 8
  %3852 = inttoptr i64 %3849 to i32*
  %3853 = load i32, i32* %3852, align 4
  %3854 = sext i32 %3853 to i64
  store i64 %3854, i64* %RCX.i1678, align 8
  %3855 = shl nsw i64 %3854, 2
  %3856 = add nsw i64 %3855, 8807744
  %3857 = add i64 %3850, 15
  store i64 %3857, i64* %3, align 8
  %3858 = inttoptr i64 %3856 to i32*
  store i32 13, i32* %3858, align 4
  %3859 = load i64, i64* %RBP.i, align 8
  %3860 = add i64 %3859, -24
  %3861 = load i64, i64* %3, align 8
  %3862 = add i64 %3861, 4
  store i64 %3862, i64* %3, align 8
  %3863 = inttoptr i64 %3860 to i32*
  %3864 = load i32, i32* %3863, align 4
  %3865 = sext i32 %3864 to i64
  store i64 %3865, i64* %RCX.i1678, align 8
  %3866 = shl nsw i64 %3865, 2
  %3867 = add nsw i64 %3866, 8922032
  %3868 = add i64 %3861, 11
  store i64 %3868, i64* %3, align 8
  %3869 = inttoptr i64 %3867 to i32*
  %3870 = load i32, i32* %3869, align 4
  %3871 = add i32 %3870, 1
  %3872 = zext i32 %3871 to i64
  store i64 %3872, i64* %RAX.i1690, align 8
  %3873 = icmp eq i32 %3870, -1
  %3874 = icmp eq i32 %3871, 0
  %3875 = or i1 %3873, %3874
  %3876 = zext i1 %3875 to i8
  store i8 %3876, i8* %14, align 1
  %3877 = and i32 %3871, 255
  %3878 = tail call i32 @llvm.ctpop.i32(i32 %3877)
  %3879 = trunc i32 %3878 to i8
  %3880 = and i8 %3879, 1
  %3881 = xor i8 %3880, 1
  store i8 %3881, i8* %21, align 1
  %3882 = xor i32 %3871, %3870
  %3883 = lshr i32 %3882, 4
  %3884 = trunc i32 %3883 to i8
  %3885 = and i8 %3884, 1
  store i8 %3885, i8* %26, align 1
  %3886 = zext i1 %3874 to i8
  store i8 %3886, i8* %29, align 1
  %3887 = lshr i32 %3871, 31
  %3888 = trunc i32 %3887 to i8
  store i8 %3888, i8* %32, align 1
  %3889 = lshr i32 %3870, 31
  %3890 = xor i32 %3887, %3889
  %3891 = add nuw nsw i32 %3890, %3887
  %3892 = icmp eq i32 %3891, 2
  %3893 = zext i1 %3892 to i8
  store i8 %3893, i8* %38, align 1
  %3894 = add i64 %3861, 21
  store i64 %3894, i64* %3, align 8
  store i32 %3871, i32* %3869, align 4
  %3895 = load i64, i64* %RBP.i, align 8
  %3896 = add i64 %3895, -20
  %3897 = load i64, i64* %3, align 8
  %3898 = add i64 %3897, 4
  store i64 %3898, i64* %3, align 8
  %3899 = inttoptr i64 %3896 to i32*
  %3900 = load i32, i32* %3899, align 4
  %3901 = sext i32 %3900 to i64
  store i64 %3901, i64* %RCX.i1678, align 8
  %3902 = shl nsw i64 %3901, 2
  %3903 = add nsw i64 %3902, 8922032
  %3904 = add i64 %3897, 11
  store i64 %3904, i64* %3, align 8
  %3905 = inttoptr i64 %3903 to i32*
  %3906 = load i32, i32* %3905, align 4
  %3907 = add i32 %3906, 1
  %3908 = add i64 %3897, 21
  store i64 %3908, i64* %3, align 8
  store i32 %3907, i32* %3905, align 4
  %3909 = load i64, i64* %3, align 8
  %3910 = load i32, i32* bitcast (%G_0x8661bc_type* @G_0x8661bc to i32*), align 8
  %3911 = xor i32 %3910, 1
  %3912 = zext i32 %3911 to i64
  store i64 %3912, i64* %RAX.i1690, align 8
  store i8 0, i8* %14, align 1
  %3913 = and i32 %3911, 255
  %3914 = tail call i32 @llvm.ctpop.i32(i32 %3913)
  %3915 = trunc i32 %3914 to i8
  %3916 = and i8 %3915, 1
  %3917 = xor i8 %3916, 1
  store i8 %3917, i8* %21, align 1
  %3918 = icmp eq i32 %3911, 0
  %3919 = zext i1 %3918 to i8
  store i8 %3919, i8* %29, align 1
  %3920 = lshr i32 %3910, 31
  %3921 = trunc i32 %3920 to i8
  store i8 %3921, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i32 %3911, i32* bitcast (%G_0x8661bc_type* @G_0x8661bc to i32*), align 8
  %3922 = load i64, i64* %RBP.i, align 8
  %3923 = add i64 %3922, -20
  %3924 = add i64 %3909, 21
  store i64 %3924, i64* %3, align 8
  %3925 = inttoptr i64 %3923 to i32*
  %3926 = load i32, i32* %3925, align 4
  %3927 = sext i32 %3926 to i64
  store i64 %3927, i64* %RCX.i1678, align 8
  %3928 = shl nsw i64 %3927, 2
  %3929 = add nsw i64 %3928, 9050112
  %3930 = add i64 %3909, 28
  store i64 %3930, i64* %3, align 8
  %3931 = inttoptr i64 %3929 to i32*
  %3932 = load i32, i32* %3931, align 4
  %3933 = load i32, i32* bitcast (%G_0x633b40_type* @G_0x633b40 to i32*), align 8
  %3934 = xor i32 %3933, %3932
  %3935 = zext i32 %3934 to i64
  store i64 %3935, i64* %RAX.i1690, align 8
  store i8 0, i8* %14, align 1
  %3936 = and i32 %3934, 255
  %3937 = tail call i32 @llvm.ctpop.i32(i32 %3936)
  %3938 = trunc i32 %3937 to i8
  %3939 = and i8 %3938, 1
  %3940 = xor i8 %3939, 1
  store i8 %3940, i8* %21, align 1
  %3941 = icmp eq i32 %3934, 0
  %3942 = zext i1 %3941 to i8
  store i8 %3942, i8* %29, align 1
  %3943 = lshr i32 %3934, 31
  %3944 = trunc i32 %3943 to i8
  store i8 %3944, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i32 %3934, i32* bitcast (%G_0x633b40_type* @G_0x633b40 to i32*), align 8
  %3945 = add i64 %3922, -24
  %3946 = add i64 %3909, 46
  store i64 %3946, i64* %3, align 8
  %3947 = inttoptr i64 %3945 to i32*
  %3948 = load i32, i32* %3947, align 4
  %3949 = sext i32 %3948 to i64
  store i64 %3949, i64* %RCX.i1678, align 8
  %3950 = shl nsw i64 %3949, 2
  %3951 = add nsw i64 %3950, 9050112
  %3952 = add i64 %3909, 53
  store i64 %3952, i64* %3, align 8
  %3953 = inttoptr i64 %3951 to i32*
  %3954 = load i32, i32* %3953, align 4
  %3955 = xor i32 %3934, %3954
  %3956 = zext i32 %3955 to i64
  store i64 %3956, i64* %RAX.i1690, align 8
  store i8 0, i8* %14, align 1
  %3957 = and i32 %3955, 255
  %3958 = tail call i32 @llvm.ctpop.i32(i32 %3957)
  %3959 = trunc i32 %3958 to i8
  %3960 = and i8 %3959, 1
  %3961 = xor i8 %3960, 1
  store i8 %3961, i8* %21, align 1
  %3962 = icmp eq i32 %3955, 0
  %3963 = zext i1 %3962 to i8
  store i8 %3963, i8* %29, align 1
  %3964 = lshr i32 %3955, 31
  %3965 = trunc i32 %3964 to i8
  store i8 %3965, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i32 %3955, i32* bitcast (%G_0x633b40_type* @G_0x633b40 to i32*), align 8
  %3966 = add i64 %3922, -36
  %3967 = add i64 %3909, 71
  store i64 %3967, i64* %3, align 8
  %3968 = inttoptr i64 %3966 to i32*
  %3969 = load i32, i32* %3968, align 4
  %3970 = add i32 %3969, -3
  %3971 = icmp ult i32 %3969, 3
  %3972 = zext i1 %3971 to i8
  store i8 %3972, i8* %14, align 1
  %3973 = and i32 %3970, 255
  %3974 = tail call i32 @llvm.ctpop.i32(i32 %3973)
  %3975 = trunc i32 %3974 to i8
  %3976 = and i8 %3975, 1
  %3977 = xor i8 %3976, 1
  store i8 %3977, i8* %21, align 1
  %3978 = xor i32 %3970, %3969
  %3979 = lshr i32 %3978, 4
  %3980 = trunc i32 %3979 to i8
  %3981 = and i8 %3980, 1
  store i8 %3981, i8* %26, align 1
  %3982 = icmp eq i32 %3970, 0
  %3983 = zext i1 %3982 to i8
  store i8 %3983, i8* %29, align 1
  %3984 = lshr i32 %3970, 31
  %3985 = trunc i32 %3984 to i8
  store i8 %3985, i8* %32, align 1
  %3986 = lshr i32 %3969, 31
  %3987 = xor i32 %3984, %3986
  %3988 = add nuw nsw i32 %3987, %3986
  %3989 = icmp eq i32 %3988, 2
  %3990 = zext i1 %3989 to i8
  store i8 %3990, i8* %38, align 1
  %.v44 = select i1 %3982, i64 77, i64 252
  %3991 = add i64 %3909, %.v44
  store i64 %3991, i64* %3, align 8
  br i1 %3982, label %block_40c60b, label %block_.L_40c6ba

block_40c60b:                                     ; preds = %block_.L_40c56c
  store i32 13, i32* bitcast (%G_0x866714_type* @G_0x866714 to i32*), align 8
  store i32 8, i32* bitcast (%G_0x86670c_type* @G_0x86670c to i32*), align 8
  %3992 = load i32, i32* bitcast (%G_0x882584_type* @G_0x882584 to i32*), align 8
  %3993 = add i32 %3992, 1
  store i32 %3993, i32* bitcast (%G_0x882584_type* @G_0x882584 to i32*), align 8
  %3994 = load i32, i32* bitcast (%G_0x88257c_type* @G_0x88257c to i32*), align 8
  %3995 = add i32 %3994, 1
  store i32 %3995, i32* bitcast (%G_0x88257c_type* @G_0x88257c to i32*), align 8
  store i32 3, i32* bitcast (%G_0x62e500_type* @G_0x62e500 to i32*), align 8
  %3996 = load i32, i32* bitcast (%G_0x8664c4_type* @G_0x8664c4 to i32*), align 8
  %3997 = sext i32 %3996 to i64
  store i64 %3997, i64* %RCX.i1678, align 8
  %3998 = shl nsw i64 %3997, 2
  %3999 = add nsw i64 %3998, 8778480
  %4000 = add i64 %3991, 86
  store i64 %4000, i64* %3, align 8
  %4001 = inttoptr i64 %3999 to i32*
  store i32 115, i32* %4001, align 4
  %4002 = load i64, i64* %3, align 8
  %4003 = load i32, i32* bitcast (%G_0x8664c4_type* @G_0x8664c4 to i32*), align 8
  store i32 %4003, i32* bitcast (%G_0x8664bc_type* @G_0x8664bc to i32*), align 8
  store i32 0, i32* bitcast (%G_0x8664c4_type* @G_0x8664c4 to i32*), align 8
  %4004 = load i32, i32* bitcast (%G_0x8a1e54_type* @G_0x8a1e54 to i32*), align 8
  %4005 = load i32, i32* bitcast (%G_0x633b40_type* @G_0x633b40 to i32*), align 8
  %4006 = xor i32 %4005, %4004
  %4007 = load i32, i32* bitcast (%G_0x8a1e4c_type* @G_0x8a1e4c to i32*), align 8
  %4008 = xor i32 %4006, %4007
  store i32 %4008, i32* bitcast (%G_0x633b40_type* @G_0x633b40 to i32*), align 8
  %4009 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %4010 = add i32 %4009, 1
  %4011 = zext i32 %4010 to i64
  store i64 %4011, i64* %RAX.i1690, align 8
  %4012 = icmp eq i32 %4009, -1
  %4013 = icmp eq i32 %4010, 0
  %4014 = or i1 %4012, %4013
  %4015 = zext i1 %4014 to i8
  store i8 %4015, i8* %14, align 1
  %4016 = and i32 %4010, 255
  %4017 = tail call i32 @llvm.ctpop.i32(i32 %4016)
  %4018 = trunc i32 %4017 to i8
  %4019 = and i8 %4018, 1
  %4020 = xor i8 %4019, 1
  store i8 %4020, i8* %21, align 1
  %4021 = xor i32 %4010, %4009
  %4022 = lshr i32 %4021, 4
  %4023 = trunc i32 %4022 to i8
  %4024 = and i8 %4023, 1
  store i8 %4024, i8* %26, align 1
  %4025 = zext i1 %4013 to i8
  store i8 %4025, i8* %29, align 1
  %4026 = lshr i32 %4010, 31
  %4027 = trunc i32 %4026 to i8
  store i8 %4027, i8* %32, align 1
  %4028 = lshr i32 %4009, 31
  %4029 = xor i32 %4026, %4028
  %4030 = add nuw nsw i32 %4029, %4026
  %4031 = icmp eq i32 %4030, 2
  %4032 = zext i1 %4031 to i8
  store i8 %4032, i8* %38, align 1
  store i32 %4010, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %4033 = add i64 %4002, 301
  store i64 %4033, i64* %3, align 8
  br label %block_.L_40c78e

block_.L_40c6ba:                                  ; preds = %block_.L_40c56c
  %4034 = load i64, i64* %RBP.i, align 8
  %4035 = add i64 %4034, -36
  %4036 = add i64 %3991, 4
  store i64 %4036, i64* %3, align 8
  %4037 = inttoptr i64 %4035 to i32*
  %4038 = load i32, i32* %4037, align 4
  %4039 = add i32 %4038, -4
  %4040 = icmp ult i32 %4038, 4
  %4041 = zext i1 %4040 to i8
  store i8 %4041, i8* %14, align 1
  %4042 = and i32 %4039, 255
  %4043 = tail call i32 @llvm.ctpop.i32(i32 %4042)
  %4044 = trunc i32 %4043 to i8
  %4045 = and i8 %4044, 1
  %4046 = xor i8 %4045, 1
  store i8 %4046, i8* %21, align 1
  %4047 = xor i32 %4039, %4038
  %4048 = lshr i32 %4047, 4
  %4049 = trunc i32 %4048 to i8
  %4050 = and i8 %4049, 1
  store i8 %4050, i8* %26, align 1
  %4051 = icmp eq i32 %4039, 0
  %4052 = zext i1 %4051 to i8
  store i8 %4052, i8* %29, align 1
  %4053 = lshr i32 %4039, 31
  %4054 = trunc i32 %4053 to i8
  store i8 %4054, i8* %32, align 1
  %4055 = lshr i32 %4038, 31
  %4056 = xor i32 %4053, %4055
  %4057 = add nuw nsw i32 %4056, %4055
  %4058 = icmp eq i32 %4057, 2
  %4059 = zext i1 %4058 to i8
  store i8 %4059, i8* %38, align 1
  %.v45 = select i1 %4051, i64 10, i64 185
  %4060 = add i64 %3991, %.v45
  store i64 %4060, i64* %3, align 8
  br i1 %4051, label %block_40c6c4, label %block_.L_40c773

block_40c6c4:                                     ; preds = %block_.L_40c6ba
  store i32 13, i32* bitcast (%G_0x8666f8_type* @G_0x8666f8 to i32*), align 8
  store i32 8, i32* bitcast (%G_0x866704_type* @G_0x866704 to i32*), align 8
  %4061 = load i32, i32* bitcast (%G_0x882568_type* @G_0x882568 to i32*), align 8
  %4062 = add i32 %4061, 1
  store i32 %4062, i32* bitcast (%G_0x882568_type* @G_0x882568 to i32*), align 8
  %4063 = load i32, i32* bitcast (%G_0x882574_type* @G_0x882574 to i32*), align 8
  %4064 = add i32 %4063, 1
  store i32 %4064, i32* bitcast (%G_0x882574_type* @G_0x882574 to i32*), align 8
  store i32 4, i32* bitcast (%G_0x62e500_type* @G_0x62e500 to i32*), align 8
  %4065 = load i32, i32* bitcast (%G_0x8664a8_type* @G_0x8664a8 to i32*), align 8
  %4066 = sext i32 %4065 to i64
  store i64 %4066, i64* %RCX.i1678, align 8
  %4067 = shl nsw i64 %4066, 2
  %4068 = add nsw i64 %4067, 8778480
  %4069 = add i64 %4060, 86
  store i64 %4069, i64* %3, align 8
  %4070 = inttoptr i64 %4068 to i32*
  store i32 113, i32* %4070, align 4
  %4071 = load i64, i64* %3, align 8
  %4072 = load i32, i32* bitcast (%G_0x8664a8_type* @G_0x8664a8 to i32*), align 8
  store i32 %4072, i32* bitcast (%G_0x8664b4_type* @G_0x8664b4 to i32*), align 8
  store i32 0, i32* bitcast (%G_0x8664a8_type* @G_0x8664a8 to i32*), align 8
  %4073 = load i32, i32* bitcast (%G_0x8a1e38_type* @G_0x8a1e38 to i32*), align 8
  %4074 = load i32, i32* bitcast (%G_0x633b40_type* @G_0x633b40 to i32*), align 8
  %4075 = xor i32 %4074, %4073
  %4076 = load i32, i32* bitcast (%G_0x8a1e44_type* @G_0x8a1e44 to i32*), align 8
  %4077 = xor i32 %4075, %4076
  store i32 %4077, i32* bitcast (%G_0x633b40_type* @G_0x633b40 to i32*), align 8
  %4078 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %4079 = add i32 %4078, 1
  %4080 = zext i32 %4079 to i64
  store i64 %4080, i64* %RAX.i1690, align 8
  %4081 = icmp eq i32 %4078, -1
  %4082 = icmp eq i32 %4079, 0
  %4083 = or i1 %4081, %4082
  %4084 = zext i1 %4083 to i8
  store i8 %4084, i8* %14, align 1
  %4085 = and i32 %4079, 255
  %4086 = tail call i32 @llvm.ctpop.i32(i32 %4085)
  %4087 = trunc i32 %4086 to i8
  %4088 = and i8 %4087, 1
  %4089 = xor i8 %4088, 1
  store i8 %4089, i8* %21, align 1
  %4090 = xor i32 %4079, %4078
  %4091 = lshr i32 %4090, 4
  %4092 = trunc i32 %4091 to i8
  %4093 = and i8 %4092, 1
  store i8 %4093, i8* %26, align 1
  %4094 = zext i1 %4082 to i8
  store i8 %4094, i8* %29, align 1
  %4095 = lshr i32 %4079, 31
  %4096 = trunc i32 %4095 to i8
  store i8 %4096, i8* %32, align 1
  %4097 = lshr i32 %4078, 31
  %4098 = xor i32 %4095, %4097
  %4099 = add nuw nsw i32 %4098, %4095
  %4100 = icmp eq i32 %4099, 2
  %4101 = zext i1 %4100 to i8
  store i8 %4101, i8* %38, align 1
  store i32 %4079, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %4102 = add i64 %4071, 116
  store i64 %4102, i64* %3, align 8
  br label %block_.L_40c78e

block_.L_40c773:                                  ; preds = %block_.L_40c6ba
  %4103 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %4104 = add i32 %4103, 1
  %4105 = zext i32 %4104 to i64
  store i64 %4105, i64* %RAX.i1690, align 8
  %4106 = icmp eq i32 %4103, -1
  %4107 = icmp eq i32 %4104, 0
  %4108 = or i1 %4106, %4107
  %4109 = zext i1 %4108 to i8
  store i8 %4109, i8* %14, align 1
  %4110 = and i32 %4104, 255
  %4111 = tail call i32 @llvm.ctpop.i32(i32 %4110)
  %4112 = trunc i32 %4111 to i8
  %4113 = and i8 %4112, 1
  %4114 = xor i8 %4113, 1
  store i8 %4114, i8* %21, align 1
  %4115 = xor i32 %4104, %4103
  %4116 = lshr i32 %4115, 4
  %4117 = trunc i32 %4116 to i8
  %4118 = and i8 %4117, 1
  store i8 %4118, i8* %26, align 1
  %4119 = zext i1 %4107 to i8
  store i8 %4119, i8* %29, align 1
  %4120 = lshr i32 %4104, 31
  %4121 = trunc i32 %4120 to i8
  store i8 %4121, i8* %32, align 1
  %4122 = lshr i32 %4103, 31
  %4123 = xor i32 %4120, %4122
  %4124 = add nuw nsw i32 %4123, %4120
  %4125 = icmp eq i32 %4124, 2
  %4126 = zext i1 %4125 to i8
  store i8 %4126, i8* %38, align 1
  %4127 = add i64 %4060, 27
  store i64 %4127, i64* %3, align 8
  store i32 %4104, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  br label %block_.L_40c78e

block_.L_40c78e:                                  ; preds = %block_.L_40c773, %block_40c6c4, %block_40c60b, %block_.L_40c551, %block_40c4a2, %block_40c3e9, %block_40c25f, %block_.L_40c19a, %block_40bff5, %block_40bef0, %block_.L_40be33, %block_40bc91, %block_40bb8c, %block_.L_40b8a4
  %4128 = phi i64 [ %4127, %block_.L_40c773 ], [ %4102, %block_40c6c4 ], [ %4033, %block_40c60b ], [ %3840, %block_.L_40c551 ], [ %3815, %block_40c4a2 ], [ %3746, %block_40c3e9 ], [ %3516, %block_40c25f ], [ %3230, %block_.L_40c19a ], [ %3030, %block_40bff5 ], [ %2565, %block_40bef0 ], [ %2286, %block_.L_40be33 ], [ %2091, %block_40bc91 ], [ %1626, %block_40bb8c ], [ %834, %block_.L_40b8a4 ]
  %MEMORY.11 = phi %struct.Memory* [ %MEMORY.7, %block_.L_40c773 ], [ %MEMORY.7, %block_40c6c4 ], [ %MEMORY.7, %block_40c60b ], [ %MEMORY.7, %block_.L_40c551 ], [ %MEMORY.7, %block_40c4a2 ], [ %MEMORY.7, %block_40c3e9 ], [ %MEMORY.7, %block_40c25f ], [ %MEMORY.7, %block_.L_40c19a ], [ %call2_40c084, %block_40bff5 ], [ %MEMORY.7, %block_40bef0 ], [ %MEMORY.7, %block_.L_40be33 ], [ %call2_40bd1d, %block_40bc91 ], [ %MEMORY.7, %block_40bb8c ], [ %call2_40b90d, %block_.L_40b8a4 ]
  %4129 = load i64, i64* %6, align 8
  %4130 = add i64 %4129, 64
  store i64 %4130, i64* %6, align 8
  %4131 = icmp ugt i64 %4129, -65
  %4132 = zext i1 %4131 to i8
  store i8 %4132, i8* %14, align 1
  %4133 = trunc i64 %4130 to i32
  %4134 = and i32 %4133, 255
  %4135 = tail call i32 @llvm.ctpop.i32(i32 %4134)
  %4136 = trunc i32 %4135 to i8
  %4137 = and i8 %4136, 1
  %4138 = xor i8 %4137, 1
  store i8 %4138, i8* %21, align 1
  %4139 = xor i64 %4130, %4129
  %4140 = lshr i64 %4139, 4
  %4141 = trunc i64 %4140 to i8
  %4142 = and i8 %4141, 1
  store i8 %4142, i8* %26, align 1
  %4143 = icmp eq i64 %4130, 0
  %4144 = zext i1 %4143 to i8
  store i8 %4144, i8* %29, align 1
  %4145 = lshr i64 %4130, 63
  %4146 = trunc i64 %4145 to i8
  store i8 %4146, i8* %32, align 1
  %4147 = lshr i64 %4129, 63
  %4148 = xor i64 %4145, %4147
  %4149 = add nuw nsw i64 %4148, %4145
  %4150 = icmp eq i64 %4149, 2
  %4151 = zext i1 %4150 to i8
  store i8 %4151, i8* %38, align 1
  %4152 = add i64 %4128, 5
  store i64 %4152, i64* %3, align 8
  %4153 = add i64 %4129, 72
  %4154 = inttoptr i64 %4130 to i64*
  %4155 = load i64, i64* %4154, align 8
  store i64 %4155, i64* %RBP.i, align 8
  store i64 %4153, i64* %6, align 8
  %4156 = add i64 %4128, 6
  store i64 %4156, i64* %3, align 8
  %4157 = inttoptr i64 %4153 to i64*
  %4158 = load i64, i64* %4157, align 8
  store i64 %4158, i64* %3, align 8
  %4159 = add i64 %4129, 80
  store i64 %4159, i64* %6, align 8
  ret %struct.Memory* %MEMORY.11
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
define %struct.Memory* @routine_movl_0x881de4___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x881de4_type* @G_0x881de4 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RSI, align 8
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
define %struct.Memory* @routine_movl__esi__0x8__rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i64, i64* %RDI, align 8
  %5 = add i64 %4, 8
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x881de4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* bitcast (%G_0x881de4_type* @G_0x881de4 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x866790___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x866790_type* @G_0x866790 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RSI, align 8
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
define %struct.Memory* @routine_movl__esi__0xc__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 12
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_je_.L_40b83c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0xd__0x866540___rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %10 = add i32 %9, -13
  %11 = icmp ult i32 %9, 13
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
define %struct.Memory* @routine_je_.L_40b84c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__0x866790(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* bitcast (%G_0x866790_type* @G_0x866790 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40b85d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x866790___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x866790_type* @G_0x866790 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x1___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
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
define %struct.Memory* @routine_movl__eax__0x866790(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
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
define %struct.Memory* @routine_jne_.L_40b990(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x63ae48___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x63ae48_type* @G_0x63ae48 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x63ae48(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x63ae48_type* @G_0x63ae48 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x28__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x85f2f0___rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 8778480
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
define %struct.Memory* @routine_je_.L_40b8a4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_40b896(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
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
define %struct.Memory* @routine_jmpq_.L_40b87f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 1, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_xorl__ecx___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2
  store i64 %4, i64* %PC, align 8
  store i64 0, i64* %RCX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__0x85f2f0___rdi_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i64, i64* %RDI, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 8778480
  %7 = load i32, i32* %ESI, align 4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %6 to i32*
  store i32 %7, i32* %10, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x639120___rdi_4____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 6525216
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_0x886bc0___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %6 = sext i32 %5 to i64
  store i64 %6, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shlq__0x4___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 4
  store i64 %6, i64* %RDI, align 8
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
define %struct.Memory* @routine_addq__rdi___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RDI, align 8
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
define %struct.Memory* @routine_movl__esi__0x4__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, 4
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
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
define %struct.Memory* @routine_movl__0x0__0x639120___rdx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 6525216
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  store i32 0, i32* %8, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x28__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
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
define %struct.Memory* @routine_movl__esi__0x8662f0___rdx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 8807152
  %7 = load i32, i32* %ESI, align 4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %6 to i32*
  store i32 %7, i32* %10, align 4
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
define %struct.Memory* @routine_callq_.DropremoveHolding(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_0x8661c0___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = load i32, i32* bitcast (%G_0x8661c0_type* @G_0x8661c0 to i32*), align 8
  %8 = add i32 %7, %6
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
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
define %struct.Memory* @routine_movl__eax__0x8661c0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x8661c0_type* @G_0x8661c0 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
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
define %struct.Memory* @routine_movl_0x886bc0___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x886bc0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40c78e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x639120___rcx_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 6525216
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
define %struct.Memory* @routine_movl__edx__0x4__rsi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RSI, align 8
  %5 = add i64 %4, 4
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movl__edx____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = bitcast i64* %RAX to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  store i32 %6, i32* %5, align 4
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
define %struct.Memory* @routine_movl__0x0__0x85f2f0___rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
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
define %struct.Memory* @routine_movl__edx__0x85f2f0___rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
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
define %struct.Memory* @routine_movl_0x8662f0___rax_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
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
define %struct.Memory* @routine_movl__edx__0x8662f0___rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
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
define %struct.Memory* @routine_jne_.L_40bb70(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x866540___rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 8807744
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
define %struct.Memory* @routine_subl__0xd___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -13
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
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
define %struct.Memory* @routine_movl__ecx__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -44
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_40ba5b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_40ba56(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40bb6b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_40ba77(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_40bb02(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__0x4__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 4
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
define %struct.Memory* @routine_je_.L_40bace(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x866540___rax_4____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 8807744
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RDI, align 8
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
define %struct.Memory* @routine_callq_.addHolding(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_40bafd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__edi__MINUS0x34__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -52
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40bb02(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x62dab0___rcx_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
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
define %struct.Memory* @routine_subl__edx___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RSI, align 8
  %5 = load i32, i32* %EDX, align 4
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
define %struct.Memory* @routine_jmpq_.L_40bb70(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_40bed4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_40bc87(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x20__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
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
define %struct.Memory* @routine_movl__0xd__0x866540___rdx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  store i32 13, i32* %8, align 4
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
define %struct.Memory* @routine_movl__0x1__0x639120___rdx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 6525216
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  store i32 1, i32* %8, align 4
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
define %struct.Memory* @routine_movl_0x886bc0___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__0x886bc0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_40be15(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x8661c0___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x8661c0_type* @G_0x8661c0 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__ecx___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = load i32, i32* %ECX, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %4 to i32
  %10 = sub i32 %9, %5
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RDX, align 8
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
define %struct.Memory* @routine_movslq__ecx___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xd__0x866540___r8_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 8807744
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 12
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  store i32 13, i32* %8, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x8823b0___r8_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 8922032
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__0x8823b0___r8_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %R8, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 8922032
  %7 = load i32, i32* %ECX, align 4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 8
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %6 to i32*
  store i32 %7, i32* %10, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x14__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
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
define %struct.Memory* @routine_movl_0x8662f0___r8_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 8807152
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_0x886bc0___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %6 = sext i32 %5 to i64
  store i64 %6, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shlq__0x4___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 4
  store i64 %6, i64* %R8, align 8
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
define %struct.Memory* @routine_addq__r8___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %R8, align 8
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
define %struct.Memory* @routine_movl__ecx____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = bitcast i64* %RAX to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  store i32 %6, i32* %5, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
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
define %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
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
define %struct.Memory* @routine_addl__0x18___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 24
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  %9 = icmp ugt i32 %6, -25
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
  %32 = add nuw nsw i32 %31, %27
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__ecx___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %4 to i32*
  %5 = load i32, i32* %EAX, align 4
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = sub i32 %5, %6
  %10 = icmp ult i32 %5, %6
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
  %19 = xor i32 %6, %5
  %20 = xor i32 %19, %9
  %21 = lshr i32 %20, 4
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %23, i8* %24, align 1
  %25 = icmp eq i32 %9, 0
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %9, 31
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %5, 31
  %32 = lshr i32 %6, 31
  %33 = xor i32 %32, %31
  %34 = xor i32 %28, %31
  %35 = add nuw nsw i32 %34, %33
  %36 = icmp eq i32 %35, 2
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %37, i8* %38, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_40be33(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0xc___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 12
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
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
define %struct.Memory* @routine_movl__eax__0x881de4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x881de4_type* @G_0x881de4 to i32*), align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_40c23b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_40bfeb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_40c17c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x18___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -24
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  %9 = icmp ult i32 %6, 24
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
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_40c19a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_subl__0xc___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -12
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
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
define %struct.Memory* @routine_je_.L_40c338(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__rax___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rcx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RCX, align 8
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
define %struct.Memory* @routine_movl___rdx__rcx_4____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_xorl_0x633b40___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = load i32, i32* bitcast (%G_0x633b40_type* @G_0x633b40 to i32*), align 8
  %8 = xor i32 %7, %6
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
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
define %struct.Memory* @routine_movl__esi__0x633b40(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ESI, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x633b40_type* @G_0x633b40 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl___rax__rcx_4____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
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
  store i64 %11, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x866540___rax_4____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 8807744
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__0x866540___rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 8807744
  %7 = load i32, i32* %ESI, align 4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %6 to i32*
  store i32 %7, i32* %10, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x8823b0___rax_4____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 8922032
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x1___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RSI, align 8
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
define %struct.Memory* @routine_movl__esi__0x8823b0___rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 8922032
  %7 = load i32, i32* %ESI, align 4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %6 to i32*
  store i32 %7, i32* %10, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x8661bc___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x8661bc_type* @G_0x8661bc to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_xorl__0x1___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = xor i64 %3, 1
  %7 = trunc i64 %6 to i32
  %8 = and i64 %6, 4294967295
  store i64 %8, i64* %RSI, align 8
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
define %struct.Memory* @routine_movl__esi__0x8661bc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ESI, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x8661bc_type* @G_0x8661bc to i32*), align 8
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
define %struct.Memory* @routine_jne_.L_40c56c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0xd__0x866540___rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  store i32 13, i32* %8, align 4
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
define %struct.Memory* @routine_jne_.L_40c498(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0xd__0x8665c4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 13, i32* bitcast (%G_0x8665c4_type* @G_0x8665c4 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x7__0x8665bc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 7, i32* bitcast (%G_0x8665bc_type* @G_0x8665bc to i32*), align 8
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
define %struct.Memory* @routine_movl__0x1__0x62e4fc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 1, i32* bitcast (%G_0x62e4fc_type* @G_0x62e4fc to i32*), align 8
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
define %struct.Memory* @routine_movl__0x1f__0x85f2f0___rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  store i32 31, i32* %8, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x866374___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x866374_type* @G_0x866374 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x86636c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x86636c_type* @G_0x86636c to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x866374(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* bitcast (%G_0x866374_type* @G_0x866374 to i32*), align 8
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
define %struct.Memory* @routine_jne_.L_40c551(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0xd__0x8665a8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 13, i32* bitcast (%G_0x8665a8_type* @G_0x8665a8 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x7__0x8665b4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 7, i32* bitcast (%G_0x8665b4_type* @G_0x8665b4 to i32*), align 8
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
define %struct.Memory* @routine_movl__0x2__0x62e4fc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 2, i32* bitcast (%G_0x62e4fc_type* @G_0x62e4fc to i32*), align 8
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
define %struct.Memory* @routine_movl__0x1d__0x85f2f0___rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  store i32 29, i32* %8, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x866358___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x866358_type* @G_0x866358 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x866364(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x866364_type* @G_0x866364 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x866358(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* bitcast (%G_0x866358_type* @G_0x866358 to i32*), align 8
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
define %struct.Memory* @routine_jmpq_.L_40c556(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_40c6ba(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0xd__0x866714(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 13, i32* bitcast (%G_0x866714_type* @G_0x866714 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x8__0x86670c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 8, i32* bitcast (%G_0x86670c_type* @G_0x86670c to i32*), align 8
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
define %struct.Memory* @routine_movl__0x3__0x62e500(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 3, i32* bitcast (%G_0x62e500_type* @G_0x62e500 to i32*), align 8
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
define %struct.Memory* @routine_movl__0x73__0x85f2f0___rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  store i32 115, i32* %8, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x8664c4___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x8664c4_type* @G_0x8664c4 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x8664bc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x8664bc_type* @G_0x8664bc to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x8664c4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* bitcast (%G_0x8664c4_type* @G_0x8664c4 to i32*), align 8
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
define %struct.Memory* @routine_jne_.L_40c773(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0xd__0x8666f8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 13, i32* bitcast (%G_0x8666f8_type* @G_0x8666f8 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x8__0x866704(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 8, i32* bitcast (%G_0x866704_type* @G_0x866704 to i32*), align 8
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
define %struct.Memory* @routine_movl__0x4__0x62e500(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 4, i32* bitcast (%G_0x62e500_type* @G_0x62e500 to i32*), align 8
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
define %struct.Memory* @routine_movl__0x71__0x85f2f0___rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  store i32 113, i32* %8, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x8664a8___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x8664a8_type* @G_0x8664a8 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x8664b4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x8664b4_type* @G_0x8664b4 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x8664a8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* bitcast (%G_0x8664a8_type* @G_0x8664a8 to i32*), align 8
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
define %struct.Memory* @routine_jmpq_.L_40c778(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40c77d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
