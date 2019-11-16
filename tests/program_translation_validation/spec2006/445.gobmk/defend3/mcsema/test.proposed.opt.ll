; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x7ae448_type = type <{ [1 x i8] }>
%G_0xab0ef8_type = type <{ [1 x i8] }>
%G_0xae23a4_type = type <{ [4 x i8] }>
%G_0xb060b8_type = type <{ [4 x i8] }>
%G_0xb54ce4_type = type <{ [4 x i8] }>
%G_0xb6308c_type = type <{ [4 x i8] }>
%G_0xb8af28_type = type <{ [4 x i8] }>
%G_0xb8b850_type = type <{ [4 x i8] }>
%G_0xb8b854_type = type <{ [4 x i8] }>
%G__0x57a741_type = type <{ [8 x i8] }>
%G__0x57f60a_type = type <{ [8 x i8] }>
%G__0x57fb0d_type = type <{ [8 x i8] }>
%G__0x57fbff_type = type <{ [8 x i8] }>
%G__0x57fc87_type = type <{ [8 x i8] }>
%G__0x57fcb0_type = type <{ [8 x i8] }>
%G__0x57fcc3_type = type <{ [8 x i8] }>
%G__0x57fccd_type = type <{ [8 x i8] }>
%G__0x57fd0a_type = type <{ [8 x i8] }>
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
@G_0x7ae448 = local_unnamed_addr global %G_0x7ae448_type zeroinitializer
@G_0xab0ef8 = local_unnamed_addr global %G_0xab0ef8_type zeroinitializer
@G_0xae23a4 = local_unnamed_addr global %G_0xae23a4_type zeroinitializer
@G_0xb060b8 = local_unnamed_addr global %G_0xb060b8_type zeroinitializer
@G_0xb54ce4 = local_unnamed_addr global %G_0xb54ce4_type zeroinitializer
@G_0xb6308c = local_unnamed_addr global %G_0xb6308c_type zeroinitializer
@G_0xb8af28 = local_unnamed_addr global %G_0xb8af28_type zeroinitializer
@G_0xb8b850 = local_unnamed_addr global %G_0xb8b850_type zeroinitializer
@G_0xb8b854 = local_unnamed_addr global %G_0xb8b854_type zeroinitializer
@G__0x57a741 = global %G__0x57a741_type zeroinitializer
@G__0x57f60a = global %G__0x57f60a_type zeroinitializer
@G__0x57fb0d = global %G__0x57fb0d_type zeroinitializer
@G__0x57fbff = global %G__0x57fbff_type zeroinitializer
@G__0x57fc87 = global %G__0x57fc87_type zeroinitializer
@G__0x57fcb0 = global %G__0x57fcb0_type zeroinitializer
@G__0x57fcc3 = global %G__0x57fcc3_type zeroinitializer
@G__0x57fccd = global %G__0x57fccd_type zeroinitializer
@G__0x57fd0a = global %G__0x57fd0a_type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare %struct.Memory* @sub_452090.abortgo(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40f780.countlib(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40f840.findlib(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_461d90.break_chain_moves(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4669b0.break_chain2_efficient_moves(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4626b0.propose_edge_moves(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_467690.edge_clamp_moves(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_467aa0.hane_rescue_moves(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_462c90.order_moves(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40edf0.komaster_trymove(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_45dce0.do_attack(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40dd60.popgo(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_417fc0.sgf_trace(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_467d90.special_rescue3_moves(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4680d0.special_rescue_moves(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_468270.superstring_breakchain_moves(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_466a20.break_chain2_defense_moves(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_468450.special_rescue5_moves(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4688d0.special_rescue6_moves(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_47c0b0.find_superstring_liberties(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_414ab0.liberty_of_string(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4115b0.approxlib(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_468d50.break_chain3_moves(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @defend3(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %R15.i1460 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0, i32 0
  %11 = load i64, i64* %R15.i1460, align 8
  %12 = add i64 %10, 5
  store i64 %12, i64* %3, align 8
  %13 = add i64 %7, -16
  %14 = inttoptr i64 %13 to i64*
  store i64 %11, i64* %14, align 8
  %R14.i1617 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %15 = load i64, i64* %R14.i1617, align 8
  %16 = load i64, i64* %3, align 8
  %17 = add i64 %16, 2
  store i64 %17, i64* %3, align 8
  %18 = add i64 %7, -24
  %19 = inttoptr i64 %18 to i64*
  store i64 %15, i64* %19, align 8
  %R13.i1615 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 27, i32 0, i32 0
  %20 = load i64, i64* %R13.i1615, align 8
  %21 = load i64, i64* %3, align 8
  %22 = add i64 %21, 2
  store i64 %22, i64* %3, align 8
  %23 = add i64 %7, -32
  %24 = inttoptr i64 %23 to i64*
  store i64 %20, i64* %24, align 8
  %R12.i1613 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 25, i32 0, i32 0
  %25 = load i64, i64* %R12.i1613, align 8
  %26 = load i64, i64* %3, align 8
  %27 = add i64 %26, 2
  store i64 %27, i64* %3, align 8
  %28 = add i64 %7, -40
  %29 = inttoptr i64 %28 to i64*
  store i64 %25, i64* %29, align 8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0
  %RBX.i1611 = getelementptr inbounds %union.anon, %union.anon* %30, i64 0, i32 0
  %31 = load i64, i64* %RBX.i1611, align 8
  %32 = load i64, i64* %3, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %3, align 8
  %34 = add i64 %7, -48
  %35 = inttoptr i64 %34 to i64*
  store i64 %31, i64* %35, align 8
  %36 = load i64, i64* %3, align 8
  %37 = add i64 %7, -920
  store i64 %37, i64* %6, align 8
  %38 = icmp ult i64 %34, 872
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %39, i8* %40, align 1
  %41 = trunc i64 %37 to i32
  %42 = and i32 %41, 255
  %43 = tail call i32 @llvm.ctpop.i32(i32 %42)
  %44 = trunc i32 %43 to i8
  %45 = and i8 %44, 1
  %46 = xor i8 %45, 1
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %46, i8* %47, align 1
  %48 = xor i64 %34, %37
  %49 = lshr i64 %48, 4
  %50 = trunc i64 %49 to i8
  %51 = and i8 %50, 1
  %52 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %51, i8* %52, align 1
  %53 = icmp eq i64 %37, 0
  %54 = zext i1 %53 to i8
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %54, i8* %55, align 1
  %56 = lshr i64 %37, 63
  %57 = trunc i64 %56 to i8
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %57, i8* %58, align 1
  %59 = lshr i64 %34, 63
  %60 = xor i64 %56, %59
  %61 = add nuw nsw i64 %60, %59
  %62 = icmp eq i64 %61, 2
  %63 = zext i1 %62 to i8
  %64 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %63, i8* %64, align 1
  %65 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i1607 = getelementptr inbounds %union.anon, %union.anon* %65, i64 0, i32 0
  store i64 3, i64* %RAX.i1607, align 8
  %66 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8.i1605 = getelementptr inbounds %union.anon, %union.anon* %66, i64 0, i32 0
  store i64 ptrtoint (%G__0x57a741_type* @G__0x57a741 to i64), i64* %R8.i1605, align 8
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i1602 = bitcast %union.anon* %67 to i32*
  %68 = load i64, i64* %RBP.i, align 8
  %69 = add i64 %68, -48
  %70 = load i32, i32* %EDI.i1602, align 4
  %71 = add i64 %36, 25
  store i64 %71, i64* %3, align 8
  %72 = inttoptr i64 %69 to i32*
  store i32 %70, i32* %72, align 4
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %RSI.i1599 = getelementptr inbounds %union.anon, %union.anon* %73, i64 0, i32 0
  %74 = load i64, i64* %RBP.i, align 8
  %75 = add i64 %74, -56
  %76 = load i64, i64* %RSI.i1599, align 8
  %77 = load i64, i64* %3, align 8
  %78 = add i64 %77, 4
  store i64 %78, i64* %3, align 8
  %79 = inttoptr i64 %75 to i64*
  store i64 %76, i64* %79, align 8
  %80 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX.i1596 = bitcast %union.anon* %80 to i32*
  %81 = load i64, i64* %RBP.i, align 8
  %82 = add i64 %81, -60
  %83 = load i32, i32* %EDX.i1596, align 4
  %84 = load i64, i64* %3, align 8
  %85 = add i64 %84, 3
  store i64 %85, i64* %3, align 8
  %86 = inttoptr i64 %82 to i32*
  store i32 %83, i32* %86, align 4
  %87 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX.i1593 = bitcast %union.anon* %87 to i32*
  %88 = load i64, i64* %RBP.i, align 8
  %89 = add i64 %88, -64
  %90 = load i32, i32* %ECX.i1593, align 4
  %91 = load i64, i64* %3, align 8
  %92 = add i64 %91, 3
  store i64 %92, i64* %3, align 8
  %93 = inttoptr i64 %89 to i32*
  store i32 %90, i32* %93, align 4
  %94 = load i64, i64* %RBP.i, align 8
  %95 = add i64 %94, -504
  %96 = load i64, i64* %3, align 8
  %97 = add i64 %96, 10
  store i64 %97, i64* %3, align 8
  %98 = inttoptr i64 %95 to i32*
  store i32 0, i32* %98, align 4
  %99 = load i64, i64* %RBP.i, align 8
  %100 = add i64 %99, -508
  %101 = load i64, i64* %3, align 8
  %102 = add i64 %101, 10
  store i64 %102, i64* %3, align 8
  %103 = inttoptr i64 %100 to i32*
  store i32 0, i32* %103, align 4
  %104 = load i64, i64* %RBP.i, align 8
  %105 = add i64 %104, -520
  %106 = load i64, i64* %R8.i1605, align 8
  %107 = load i64, i64* %3, align 8
  %108 = add i64 %107, 7
  store i64 %108, i64* %3, align 8
  %109 = inttoptr i64 %105 to i64*
  store i64 %106, i64* %109, align 8
  %RCX.i1583 = getelementptr inbounds %union.anon, %union.anon* %87, i64 0, i32 0
  %110 = load i64, i64* %RBP.i, align 8
  %111 = add i64 %110, -48
  %112 = load i64, i64* %3, align 8
  %113 = add i64 %112, 3
  store i64 %113, i64* %3, align 8
  %114 = inttoptr i64 %111 to i32*
  %115 = load i32, i32* %114, align 4
  %116 = add i64 %110, -524
  %117 = add i64 %112, 9
  store i64 %117, i64* %3, align 8
  %118 = inttoptr i64 %116 to i32*
  store i32 %115, i32* %118, align 4
  %119 = load i64, i64* %3, align 8
  %120 = load i32, i32* bitcast (%G_0xae23a4_type* @G_0xae23a4 to i32*), align 8
  %121 = add i32 %120, 1
  %122 = zext i32 %121 to i64
  store i64 %122, i64* %RCX.i1583, align 8
  %123 = icmp eq i32 %120, -1
  %124 = icmp eq i32 %121, 0
  %125 = or i1 %123, %124
  %126 = zext i1 %125 to i8
  store i8 %126, i8* %40, align 1
  %127 = and i32 %121, 255
  %128 = tail call i32 @llvm.ctpop.i32(i32 %127)
  %129 = trunc i32 %128 to i8
  %130 = and i8 %129, 1
  %131 = xor i8 %130, 1
  store i8 %131, i8* %47, align 1
  %132 = xor i32 %121, %120
  %133 = lshr i32 %132, 4
  %134 = trunc i32 %133 to i8
  %135 = and i8 %134, 1
  store i8 %135, i8* %52, align 1
  %136 = zext i1 %124 to i8
  store i8 %136, i8* %55, align 1
  %137 = lshr i32 %121, 31
  %138 = trunc i32 %137 to i8
  store i8 %138, i8* %58, align 1
  %139 = lshr i32 %120, 31
  %140 = xor i32 %137, %139
  %141 = add nuw nsw i32 %140, %137
  %142 = icmp eq i32 %141, 2
  %143 = zext i1 %142 to i8
  store i8 %143, i8* %64, align 1
  store i32 %121, i32* bitcast (%G_0xae23a4_type* @G_0xae23a4 to i32*), align 8
  %144 = load i64, i64* %RBP.i, align 8
  %145 = add i64 %144, -48
  %146 = add i64 %119, 21
  store i64 %146, i64* %3, align 8
  %147 = inttoptr i64 %145 to i32*
  %148 = load i32, i32* %147, align 4
  %149 = sext i32 %148 to i64
  store i64 %149, i64* %RSI.i1599, align 8
  %150 = add nsw i64 %149, 12099168
  %151 = add i64 %119, 29
  store i64 %151, i64* %3, align 8
  %152 = inttoptr i64 %150 to i8*
  %153 = load i8, i8* %152, align 1
  %154 = zext i8 %153 to i64
  store i64 %154, i64* %RCX.i1583, align 8
  %155 = add i64 %144, -68
  %156 = zext i8 %153 to i32
  %157 = add i64 %119, 32
  store i64 %157, i64* %3, align 8
  %158 = inttoptr i64 %155 to i32*
  store i32 %156, i32* %158, align 4
  %159 = load i64, i64* %RAX.i1607, align 8
  %160 = load i64, i64* %RBP.i, align 8
  %161 = add i64 %160, -68
  %162 = load i64, i64* %3, align 8
  %163 = add i64 %162, 3
  store i64 %163, i64* %3, align 8
  %164 = trunc i64 %159 to i32
  %165 = inttoptr i64 %161 to i32*
  %166 = load i32, i32* %165, align 4
  %167 = sub i32 %164, %166
  %168 = zext i32 %167 to i64
  store i64 %168, i64* %RAX.i1607, align 8
  %169 = icmp ult i32 %164, %166
  %170 = zext i1 %169 to i8
  store i8 %170, i8* %40, align 1
  %171 = and i32 %167, 255
  %172 = tail call i32 @llvm.ctpop.i32(i32 %171)
  %173 = trunc i32 %172 to i8
  %174 = and i8 %173, 1
  %175 = xor i8 %174, 1
  store i8 %175, i8* %47, align 1
  %176 = xor i32 %166, %164
  %177 = xor i32 %176, %167
  %178 = lshr i32 %177, 4
  %179 = trunc i32 %178 to i8
  %180 = and i8 %179, 1
  store i8 %180, i8* %52, align 1
  %181 = icmp eq i32 %167, 0
  %182 = zext i1 %181 to i8
  store i8 %182, i8* %55, align 1
  %183 = lshr i32 %167, 31
  %184 = trunc i32 %183 to i8
  store i8 %184, i8* %58, align 1
  %185 = lshr i32 %164, 31
  %186 = lshr i32 %166, 31
  %187 = xor i32 %186, %185
  %188 = xor i32 %183, %185
  %189 = add nuw nsw i32 %188, %187
  %190 = icmp eq i32 %189, 2
  %191 = zext i1 %190 to i8
  store i8 %191, i8* %64, align 1
  %EAX.i1559 = bitcast %union.anon* %65 to i32*
  %192 = add i64 %160, -72
  %193 = add i64 %162, 6
  store i64 %193, i64* %3, align 8
  %194 = inttoptr i64 %192 to i32*
  store i32 %167, i32* %194, align 4
  %195 = load i64, i64* %RBP.i, align 8
  %196 = add i64 %195, -48
  %197 = load i64, i64* %3, align 8
  %198 = add i64 %197, 4
  store i64 %198, i64* %3, align 8
  %199 = inttoptr i64 %196 to i32*
  %200 = load i32, i32* %199, align 4
  %201 = sext i32 %200 to i64
  store i64 %201, i64* %RSI.i1599, align 8
  %202 = add nsw i64 %201, 12099168
  %203 = add i64 %197, 12
  store i64 %203, i64* %3, align 8
  %204 = inttoptr i64 %202 to i8*
  %205 = load i8, i8* %204, align 1
  %206 = zext i8 %205 to i64
  store i64 %206, i64* %RAX.i1607, align 8
  %207 = zext i8 %205 to i32
  %208 = add nsw i32 %207, -1
  %209 = icmp eq i8 %205, 0
  %210 = zext i1 %209 to i8
  store i8 %210, i8* %40, align 1
  %211 = and i32 %208, 255
  %212 = tail call i32 @llvm.ctpop.i32(i32 %211)
  %213 = trunc i32 %212 to i8
  %214 = and i8 %213, 1
  %215 = xor i8 %214, 1
  store i8 %215, i8* %47, align 1
  %216 = xor i32 %208, %207
  %217 = lshr i32 %216, 4
  %218 = trunc i32 %217 to i8
  %219 = and i8 %218, 1
  store i8 %219, i8* %52, align 1
  %220 = icmp eq i32 %208, 0
  %221 = zext i1 %220 to i8
  store i8 %221, i8* %55, align 1
  %222 = lshr i32 %208, 31
  %223 = trunc i32 %222 to i8
  store i8 %223, i8* %58, align 1
  store i8 0, i8* %64, align 1
  %.v161 = select i1 %220, i64 42, i64 21
  %224 = add i64 %197, %.v161
  store i64 %224, i64* %3, align 8
  br i1 %220, label %block_.L_4655f4, label %block_4655df

block_4655df:                                     ; preds = %entry
  %225 = add i64 %224, 4
  store i64 %225, i64* %3, align 8
  %226 = load i32, i32* %199, align 4
  %227 = sext i32 %226 to i64
  store i64 %227, i64* %RAX.i1607, align 8
  %228 = add nsw i64 %227, 12099168
  %229 = add i64 %224, 12
  store i64 %229, i64* %3, align 8
  %230 = inttoptr i64 %228 to i8*
  %231 = load i8, i8* %230, align 1
  %232 = zext i8 %231 to i64
  store i64 %232, i64* %RCX.i1583, align 8
  %233 = zext i8 %231 to i32
  %234 = add nsw i32 %233, -2
  %235 = icmp ult i8 %231, 2
  %236 = zext i1 %235 to i8
  store i8 %236, i8* %40, align 1
  %237 = and i32 %234, 255
  %238 = tail call i32 @llvm.ctpop.i32(i32 %237)
  %239 = trunc i32 %238 to i8
  %240 = and i8 %239, 1
  %241 = xor i8 %240, 1
  store i8 %241, i8* %47, align 1
  %242 = xor i32 %234, %233
  %243 = lshr i32 %242, 4
  %244 = trunc i32 %243 to i8
  %245 = and i8 %244, 1
  store i8 %245, i8* %52, align 1
  %246 = icmp eq i32 %234, 0
  %247 = zext i1 %246 to i8
  store i8 %247, i8* %55, align 1
  %248 = lshr i32 %234, 31
  %249 = trunc i32 %248 to i8
  store i8 %249, i8* %58, align 1
  store i8 0, i8* %64, align 1
  %.v162 = select i1 %246, i64 21, i64 26
  %250 = add i64 %224, %.v162
  store i64 %250, i64* %3, align 8
  br i1 %246, label %block_.L_4655f4, label %block_.L_4655f9

block_.L_4655f4:                                  ; preds = %block_4655df, %entry
  %251 = phi i64 [ %250, %block_4655df ], [ %224, %entry ]
  %252 = add i64 %251, 45
  store i64 %252, i64* %3, align 8
  %.pre151 = getelementptr inbounds %union.anon, %union.anon* %67, i64 0, i32 0
  br label %block_.L_465621

block_.L_4655f9:                                  ; preds = %block_4655df
  %RDI.i1538 = getelementptr inbounds %union.anon, %union.anon* %67, i64 0, i32 0
  store i64 ptrtoint (%G__0x57fb0d_type* @G__0x57fb0d to i64), i64* %RDI.i1538, align 8
  store i64 1408, i64* %RSI.i1599, align 8
  %RDX.i1534 = getelementptr inbounds %union.anon, %union.anon* %80, i64 0, i32 0
  store i64 ptrtoint (%G__0x57fbff_type* @G__0x57fbff to i64), i64* %RDX.i1534, align 8
  store i64 4294967295, i64* %RAX.i1607, align 8
  store i64 4294967295, i64* %RCX.i1583, align 8
  store i64 4294967295, i64* %R8.i1605, align 8
  %253 = add i64 %250, -79209
  %254 = add i64 %250, 40
  %255 = load i64, i64* %6, align 8
  %256 = add i64 %255, -8
  %257 = inttoptr i64 %256 to i64*
  store i64 %254, i64* %257, align 8
  store i64 %256, i64* %6, align 8
  store i64 %253, i64* %3, align 8
  %call2_46561c = tail call %struct.Memory* @sub_452090.abortgo(%struct.State* nonnull %0, i64 %253, %struct.Memory* %2)
  %.pre = load i64, i64* %RBP.i, align 8
  %.pre99 = load i64, i64* %3, align 8
  br label %block_.L_465621

block_.L_465621:                                  ; preds = %block_.L_4655f9, %block_.L_4655f4
  %RDI.i1522.pre-phi = phi i64* [ %RDI.i1538, %block_.L_4655f9 ], [ %.pre151, %block_.L_4655f4 ]
  %258 = phi i64 [ %.pre99, %block_.L_4655f9 ], [ %252, %block_.L_4655f4 ]
  %259 = phi i64 [ %.pre, %block_.L_4655f9 ], [ %195, %block_.L_4655f4 ]
  %MEMORY.1 = phi %struct.Memory* [ %call2_46561c, %block_.L_4655f9 ], [ %2, %block_.L_4655f4 ]
  %260 = add i64 %259, -48
  %261 = add i64 %258, 3
  store i64 %261, i64* %3, align 8
  %262 = inttoptr i64 %260 to i32*
  %263 = load i32, i32* %262, align 4
  %264 = zext i32 %263 to i64
  store i64 %264, i64* %RDI.i1522.pre-phi, align 8
  %265 = add i64 %258, -351905
  %266 = add i64 %258, 8
  %267 = load i64, i64* %6, align 8
  %268 = add i64 %267, -8
  %269 = inttoptr i64 %268 to i64*
  store i64 %266, i64* %269, align 8
  store i64 %268, i64* %6, align 8
  store i64 %265, i64* %3, align 8
  %call2_465624 = tail call %struct.Memory* @sub_40f780.countlib(%struct.State* nonnull %0, i64 %265, %struct.Memory* %MEMORY.1)
  %270 = load i32, i32* %EAX.i1559, align 4
  %271 = load i64, i64* %3, align 8
  %272 = add i32 %270, -3
  %273 = icmp ult i32 %270, 3
  %274 = zext i1 %273 to i8
  store i8 %274, i8* %40, align 1
  %275 = and i32 %272, 255
  %276 = tail call i32 @llvm.ctpop.i32(i32 %275)
  %277 = trunc i32 %276 to i8
  %278 = and i8 %277, 1
  %279 = xor i8 %278, 1
  store i8 %279, i8* %47, align 1
  %280 = xor i32 %272, %270
  %281 = lshr i32 %280, 4
  %282 = trunc i32 %281 to i8
  %283 = and i8 %282, 1
  store i8 %283, i8* %52, align 1
  %284 = icmp eq i32 %272, 0
  %285 = zext i1 %284 to i8
  store i8 %285, i8* %55, align 1
  %286 = lshr i32 %272, 31
  %287 = trunc i32 %286 to i8
  store i8 %287, i8* %58, align 1
  %288 = lshr i32 %270, 31
  %289 = xor i32 %286, %288
  %290 = add nuw nsw i32 %289, %288
  %291 = icmp eq i32 %290, 2
  %292 = zext i1 %291 to i8
  store i8 %292, i8* %64, align 1
  %.v163 = select i1 %284, i64 9, i64 14
  %293 = add i64 %271, %.v163
  store i64 %293, i64* %3, align 8
  br i1 %284, label %block_465632, label %block_.L_465637

block_465632:                                     ; preds = %block_.L_465621
  %294 = add i64 %293, 45
  store i64 %294, i64* %3, align 8
  %.pre152 = getelementptr inbounds %union.anon, %union.anon* %80, i64 0, i32 0
  br label %block_.L_46565f

block_.L_465637:                                  ; preds = %block_.L_465621
  store i64 ptrtoint (%G__0x57fb0d_type* @G__0x57fb0d to i64), i64* %RDI.i1522.pre-phi, align 8
  store i64 1409, i64* %RSI.i1599, align 8
  %RDX.i1511 = getelementptr inbounds %union.anon, %union.anon* %80, i64 0, i32 0
  store i64 ptrtoint (%G__0x57fcb0_type* @G__0x57fcb0 to i64), i64* %RDX.i1511, align 8
  store i64 4294967295, i64* %RAX.i1607, align 8
  store i64 4294967295, i64* %RCX.i1583, align 8
  store i64 4294967295, i64* %R8.i1605, align 8
  %295 = add i64 %293, -79271
  %296 = add i64 %293, 40
  %297 = load i64, i64* %6, align 8
  %298 = add i64 %297, -8
  %299 = inttoptr i64 %298 to i64*
  store i64 %296, i64* %299, align 8
  store i64 %298, i64* %6, align 8
  store i64 %295, i64* %3, align 8
  %call2_46565a = tail call %struct.Memory* @sub_452090.abortgo(%struct.State* nonnull %0, i64 %295, %struct.Memory* %call2_465624)
  %.pre100 = load i64, i64* %3, align 8
  br label %block_.L_46565f

block_.L_46565f:                                  ; preds = %block_.L_465637, %block_465632
  %RDX.i1497.pre-phi = phi i64* [ %RDX.i1511, %block_.L_465637 ], [ %.pre152, %block_465632 ]
  %300 = phi i64 [ %.pre100, %block_.L_465637 ], [ %294, %block_465632 ]
  %MEMORY.2 = phi %struct.Memory* [ %call2_46565a, %block_.L_465637 ], [ %call2_465624, %block_465632 ]
  store i64 3, i64* %RSI.i1599, align 8
  %301 = load i64, i64* %RBP.i, align 8
  %302 = add i64 %301, -92
  store i64 %302, i64* %RDX.i1497.pre-phi, align 8
  %303 = add i64 %301, -48
  %304 = add i64 %300, 12
  store i64 %304, i64* %3, align 8
  %305 = inttoptr i64 %303 to i32*
  %306 = load i32, i32* %305, align 4
  %307 = zext i32 %306 to i64
  store i64 %307, i64* %RDI.i1522.pre-phi, align 8
  %308 = add i64 %300, -351775
  %309 = add i64 %300, 17
  %310 = load i64, i64* %6, align 8
  %311 = add i64 %310, -8
  %312 = inttoptr i64 %311 to i64*
  store i64 %309, i64* %312, align 8
  store i64 %311, i64* %6, align 8
  store i64 %308, i64* %3, align 8
  %call2_46566b = tail call %struct.Memory* @sub_40f840.findlib(%struct.State* nonnull %0, i64 %308, %struct.Memory* %MEMORY.2)
  %313 = load i64, i64* %RBP.i, align 8
  %314 = add i64 %313, -80
  %315 = load i32, i32* %EAX.i1559, align 4
  %316 = load i64, i64* %3, align 8
  %317 = add i64 %316, 3
  store i64 %317, i64* %3, align 8
  %318 = inttoptr i64 %314 to i32*
  store i32 %315, i32* %318, align 4
  %319 = load i64, i64* %RBP.i, align 8
  %320 = add i64 %319, -80
  %321 = load i64, i64* %3, align 8
  %322 = add i64 %321, 4
  store i64 %322, i64* %3, align 8
  %323 = inttoptr i64 %320 to i32*
  %324 = load i32, i32* %323, align 4
  %325 = add i32 %324, -3
  %326 = icmp ult i32 %324, 3
  %327 = zext i1 %326 to i8
  store i8 %327, i8* %40, align 1
  %328 = and i32 %325, 255
  %329 = tail call i32 @llvm.ctpop.i32(i32 %328)
  %330 = trunc i32 %329 to i8
  %331 = and i8 %330, 1
  %332 = xor i8 %331, 1
  store i8 %332, i8* %47, align 1
  %333 = xor i32 %325, %324
  %334 = lshr i32 %333, 4
  %335 = trunc i32 %334 to i8
  %336 = and i8 %335, 1
  store i8 %336, i8* %52, align 1
  %337 = icmp eq i32 %325, 0
  %338 = zext i1 %337 to i8
  store i8 %338, i8* %55, align 1
  %339 = lshr i32 %325, 31
  %340 = trunc i32 %339 to i8
  store i8 %340, i8* %58, align 1
  %341 = lshr i32 %324, 31
  %342 = xor i32 %339, %341
  %343 = add nuw nsw i32 %342, %341
  %344 = icmp eq i32 %343, 2
  %345 = zext i1 %344 to i8
  store i8 %345, i8* %64, align 1
  %.v164 = select i1 %337, i64 10, i64 15
  %346 = add i64 %321, %.v164
  store i64 %346, i64* %3, align 8
  br i1 %337, label %block_46567d, label %block_.L_465682

block_46567d:                                     ; preds = %block_.L_46565f
  %347 = add i64 %346, 118
  store i64 %347, i64* %3, align 8
  br label %block_.L_4656f3

block_.L_465682:                                  ; preds = %block_.L_46565f
  store i64 ptrtoint (%G__0x57fb0d_type* @G__0x57fb0d to i64), i64* %RDI.i1522.pre-phi, align 8
  store i64 1412, i64* %RSI.i1599, align 8
  store i64 ptrtoint (%G__0x57fd0a_type* @G__0x57fd0a to i64), i64* %RDX.i1497.pre-phi, align 8
  store i64 20, i64* %RAX.i1607, align 8
  %348 = add i64 %319, -48
  %349 = add i64 %346, 33
  store i64 %349, i64* %3, align 8
  %350 = inttoptr i64 %348 to i32*
  %351 = load i32, i32* %350, align 4
  %352 = zext i32 %351 to i64
  store i64 %352, i64* %RCX.i1583, align 8
  %353 = add i64 %319, -688
  %354 = add i64 %346, 39
  store i64 %354, i64* %3, align 8
  %355 = inttoptr i64 %353 to i32*
  store i32 20, i32* %355, align 4
  %356 = load i32, i32* %ECX.i1593, align 4
  %357 = zext i32 %356 to i64
  %358 = load i64, i64* %3, align 8
  store i64 %357, i64* %RAX.i1607, align 8
  %359 = load i64, i64* %RBP.i, align 8
  %360 = add i64 %359, -696
  %361 = load i64, i64* %RDX.i1497.pre-phi, align 8
  %362 = add i64 %358, 9
  store i64 %362, i64* %3, align 8
  %363 = inttoptr i64 %360 to i64*
  store i64 %361, i64* %363, align 8
  %364 = load i64, i64* %3, align 8
  %365 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %366 = load i32, i32* %EAX.i1559, align 8
  %367 = sext i32 %366 to i64
  %368 = lshr i64 %367, 32
  store i64 %368, i64* %365, align 8
  %369 = load i64, i64* %RBP.i, align 8
  %370 = add i64 %369, -688
  %371 = add i64 %364, 7
  store i64 %371, i64* %3, align 8
  %372 = inttoptr i64 %370 to i32*
  %373 = load i32, i32* %372, align 4
  %374 = zext i32 %373 to i64
  store i64 %374, i64* %RCX.i1583, align 8
  %375 = add i64 %364, 9
  store i64 %375, i64* %3, align 8
  %376 = zext i32 %366 to i64
  %377 = sext i32 %373 to i64
  %378 = shl nuw i64 %368, 32
  %379 = or i64 %378, %376
  %380 = sdiv i64 %379, %377
  %381 = shl i64 %380, 32
  %382 = ashr exact i64 %381, 32
  %383 = icmp eq i64 %380, %382
  br i1 %383, label %386, label %384

; <label>:384:                                    ; preds = %block_.L_465682
  %385 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %375, %struct.Memory* %call2_46566b)
  %.pre101 = load i64, i64* %RAX.i1607, align 8
  %.pre102 = load i64, i64* %3, align 8
  %.pre103 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__ecx.exit1458

; <label>:386:                                    ; preds = %block_.L_465682
  %387 = srem i64 %379, %377
  %388 = and i64 %380, 4294967295
  store i64 %388, i64* %RAX.i1607, align 8
  %389 = and i64 %387, 4294967295
  store i64 %389, i64* %RDX.i1497.pre-phi, align 8
  store i8 0, i8* %40, align 1
  store i8 0, i8* %47, align 1
  store i8 0, i8* %52, align 1
  store i8 0, i8* %55, align 1
  store i8 0, i8* %58, align 1
  store i8 0, i8* %64, align 1
  br label %routine_idivl__ecx.exit1458

routine_idivl__ecx.exit1458:                      ; preds = %386, %384
  %390 = phi i64 [ %.pre103, %384 ], [ %369, %386 ]
  %391 = phi i64 [ %.pre102, %384 ], [ %375, %386 ]
  %392 = phi i64 [ %.pre101, %384 ], [ %388, %386 ]
  %393 = phi %struct.Memory* [ %385, %384 ], [ %call2_46566b, %386 ]
  %394 = trunc i64 %392 to i32
  %395 = add i32 %394, -1
  %396 = zext i32 %395 to i64
  store i64 %396, i64* %RAX.i1607, align 8
  %397 = icmp eq i32 %394, 0
  %398 = zext i1 %397 to i8
  store i8 %398, i8* %40, align 1
  %399 = and i32 %395, 255
  %400 = tail call i32 @llvm.ctpop.i32(i32 %399)
  %401 = trunc i32 %400 to i8
  %402 = and i8 %401, 1
  %403 = xor i8 %402, 1
  store i8 %403, i8* %47, align 1
  %404 = xor i32 %395, %394
  %405 = lshr i32 %404, 4
  %406 = trunc i32 %405 to i8
  %407 = and i8 %406, 1
  store i8 %407, i8* %52, align 1
  %408 = icmp eq i32 %395, 0
  %409 = zext i1 %408 to i8
  store i8 %409, i8* %55, align 1
  %410 = lshr i32 %395, 31
  %411 = trunc i32 %410 to i8
  store i8 %411, i8* %58, align 1
  %412 = lshr i32 %394, 31
  %413 = xor i32 %410, %412
  %414 = add nuw nsw i32 %413, %412
  %415 = icmp eq i32 %414, 2
  %416 = zext i1 %415 to i8
  store i8 %416, i8* %64, align 1
  %R8D.i1452 = bitcast %union.anon* %66 to i32*
  %417 = add i64 %390, -48
  %418 = add i64 %391, 7
  store i64 %418, i64* %3, align 8
  %419 = inttoptr i64 %417 to i32*
  %420 = load i32, i32* %419, align 4
  %421 = zext i32 %420 to i64
  store i64 %421, i64* %R8.i1605, align 8
  %422 = add i64 %390, -700
  %423 = add i64 %391, 13
  store i64 %423, i64* %3, align 8
  %424 = inttoptr i64 %422 to i32*
  store i32 %395, i32* %424, align 4
  %425 = load i32, i32* %R8D.i1452, align 4
  %426 = zext i32 %425 to i64
  %427 = load i64, i64* %3, align 8
  store i64 %426, i64* %RAX.i1607, align 8
  %428 = sext i32 %425 to i64
  %429 = lshr i64 %428, 32
  store i64 %429, i64* %365, align 8
  %430 = load i32, i32* %ECX.i1593, align 4
  %431 = add i64 %427, 6
  store i64 %431, i64* %3, align 8
  %432 = sext i32 %430 to i64
  %433 = shl nuw i64 %429, 32
  %434 = or i64 %433, %426
  %435 = sdiv i64 %434, %432
  %436 = shl i64 %435, 32
  %437 = ashr exact i64 %436, 32
  %438 = icmp eq i64 %435, %437
  br i1 %438, label %441, label %439

; <label>:439:                                    ; preds = %routine_idivl__ecx.exit1458
  %440 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %431, %struct.Memory* %393)
  %.pre104 = load i64, i64* %RDX.i1497.pre-phi, align 8
  %.pre105 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit

; <label>:441:                                    ; preds = %routine_idivl__ecx.exit1458
  %442 = srem i64 %434, %432
  %443 = and i64 %435, 4294967295
  store i64 %443, i64* %RAX.i1607, align 8
  %444 = and i64 %442, 4294967295
  store i64 %444, i64* %RDX.i1497.pre-phi, align 8
  store i8 0, i8* %40, align 1
  store i8 0, i8* %47, align 1
  store i8 0, i8* %52, align 1
  store i8 0, i8* %55, align 1
  store i8 0, i8* %58, align 1
  store i8 0, i8* %64, align 1
  br label %routine_idivl__ecx.exit

routine_idivl__ecx.exit:                          ; preds = %441, %439
  %445 = phi i64 [ %.pre105, %439 ], [ %431, %441 ]
  %446 = phi i64 [ %.pre104, %439 ], [ %444, %441 ]
  %447 = phi %struct.Memory* [ %440, %439 ], [ %393, %441 ]
  %448 = trunc i64 %446 to i32
  %449 = add i32 %448, -1
  %450 = zext i32 %449 to i64
  store i64 %450, i64* %RDX.i1497.pre-phi, align 8
  %451 = icmp eq i32 %448, 0
  %452 = zext i1 %451 to i8
  store i8 %452, i8* %40, align 1
  %453 = and i32 %449, 255
  %454 = tail call i32 @llvm.ctpop.i32(i32 %453)
  %455 = trunc i32 %454 to i8
  %456 = and i8 %455, 1
  %457 = xor i8 %456, 1
  store i8 %457, i8* %47, align 1
  %458 = xor i32 %449, %448
  %459 = lshr i32 %458, 4
  %460 = trunc i32 %459 to i8
  %461 = and i8 %460, 1
  store i8 %461, i8* %52, align 1
  %462 = icmp eq i32 %449, 0
  %463 = zext i1 %462 to i8
  store i8 %463, i8* %55, align 1
  %464 = lshr i32 %449, 31
  %465 = trunc i32 %464 to i8
  store i8 %465, i8* %58, align 1
  %466 = lshr i32 %448, 31
  %467 = xor i32 %464, %466
  %468 = add nuw nsw i32 %467, %466
  %469 = icmp eq i32 %468, 2
  %470 = zext i1 %469 to i8
  store i8 %470, i8* %64, align 1
  %R9.i1436 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %471 = load i64, i64* %RBP.i, align 8
  %472 = add i64 %471, -696
  %473 = add i64 %445, 10
  store i64 %473, i64* %3, align 8
  %474 = inttoptr i64 %472 to i64*
  %475 = load i64, i64* %474, align 8
  store i64 %475, i64* %R9.i1436, align 8
  %476 = add i64 %471, -704
  %477 = add i64 %445, 16
  store i64 %477, i64* %3, align 8
  %478 = inttoptr i64 %476 to i32*
  store i32 %449, i32* %478, align 4
  %479 = load i64, i64* %R9.i1436, align 8
  %480 = load i64, i64* %3, align 8
  store i64 %479, i64* %RDX.i1497.pre-phi, align 8
  %481 = load i64, i64* %RBP.i, align 8
  %482 = add i64 %481, -700
  %483 = add i64 %480, 9
  store i64 %483, i64* %3, align 8
  %484 = inttoptr i64 %482 to i32*
  %485 = load i32, i32* %484, align 4
  %486 = zext i32 %485 to i64
  store i64 %486, i64* %RCX.i1583, align 8
  %487 = add i64 %481, -704
  %488 = add i64 %480, 16
  store i64 %488, i64* %3, align 8
  %489 = inttoptr i64 %487 to i32*
  %490 = load i32, i32* %489, align 4
  %491 = zext i32 %490 to i64
  store i64 %491, i64* %R8.i1605, align 8
  %492 = add i64 %480, -79438
  %493 = add i64 %480, 21
  %494 = load i64, i64* %6, align 8
  %495 = add i64 %494, -8
  %496 = inttoptr i64 %495 to i64*
  store i64 %493, i64* %496, align 8
  store i64 %495, i64* %6, align 8
  store i64 %492, i64* %3, align 8
  %call2_4656ee = tail call %struct.Memory* @sub_452090.abortgo(%struct.State* nonnull %0, i64 %492, %struct.Memory* %447)
  %.pre106 = load i64, i64* %RBP.i, align 8
  %.pre107 = load i64, i64* %3, align 8
  br label %block_.L_4656f3

block_.L_4656f3:                                  ; preds = %routine_idivl__ecx.exit, %block_46567d
  %497 = phi i64 [ %.pre107, %routine_idivl__ecx.exit ], [ %347, %block_46567d ]
  %498 = phi i64 [ %.pre106, %routine_idivl__ecx.exit ], [ %319, %block_46567d ]
  %MEMORY.3 = phi %struct.Memory* [ %call2_4656ee, %routine_idivl__ecx.exit ], [ %call2_46566b, %block_46567d ]
  %499 = add i64 %498, -512
  %500 = add i64 %497, 10
  store i64 %500, i64* %3, align 8
  %501 = inttoptr i64 %499 to i32*
  store i32 0, i32* %501, align 4
  %.pre108 = load i64, i64* %3, align 8
  br label %block_.L_4656fd

block_.L_4656fd:                                  ; preds = %block_46570c, %block_.L_4656f3
  %502 = phi i64 [ %601, %block_46570c ], [ %.pre108, %block_.L_4656f3 ]
  %503 = load i64, i64* %RBP.i, align 8
  %504 = add i64 %503, -512
  %505 = add i64 %502, 6
  store i64 %505, i64* %3, align 8
  %506 = inttoptr i64 %504 to i32*
  %507 = load i32, i32* %506, align 4
  %508 = zext i32 %507 to i64
  store i64 %508, i64* %RAX.i1607, align 8
  %509 = add i64 %503, -80
  %510 = add i64 %502, 9
  store i64 %510, i64* %3, align 8
  %511 = inttoptr i64 %509 to i32*
  %512 = load i32, i32* %511, align 4
  %513 = sub i32 %507, %512
  %514 = icmp ult i32 %507, %512
  %515 = zext i1 %514 to i8
  store i8 %515, i8* %40, align 1
  %516 = and i32 %513, 255
  %517 = tail call i32 @llvm.ctpop.i32(i32 %516)
  %518 = trunc i32 %517 to i8
  %519 = and i8 %518, 1
  %520 = xor i8 %519, 1
  store i8 %520, i8* %47, align 1
  %521 = xor i32 %512, %507
  %522 = xor i32 %521, %513
  %523 = lshr i32 %522, 4
  %524 = trunc i32 %523 to i8
  %525 = and i8 %524, 1
  store i8 %525, i8* %52, align 1
  %526 = icmp eq i32 %513, 0
  %527 = zext i1 %526 to i8
  store i8 %527, i8* %55, align 1
  %528 = lshr i32 %513, 31
  %529 = trunc i32 %528 to i8
  store i8 %529, i8* %58, align 1
  %530 = lshr i32 %507, 31
  %531 = lshr i32 %512, 31
  %532 = xor i32 %531, %530
  %533 = xor i32 %528, %530
  %534 = add nuw nsw i32 %533, %532
  %535 = icmp eq i32 %534, 2
  %536 = zext i1 %535 to i8
  store i8 %536, i8* %64, align 1
  %537 = icmp ne i8 %529, 0
  %538 = xor i1 %537, %535
  %.v165 = select i1 %538, i64 15, i64 78
  %539 = add i64 %502, %.v165
  store i64 %539, i64* %3, align 8
  br i1 %538, label %block_46570c, label %block_.L_46574b

block_46570c:                                     ; preds = %block_.L_4656fd
  %540 = add i64 %539, 7
  store i64 %540, i64* %3, align 8
  %541 = load i32, i32* %506, align 4
  %542 = sext i32 %541 to i64
  store i64 %542, i64* %RAX.i1607, align 8
  %543 = shl nsw i64 %542, 2
  %544 = add i64 %503, -92
  %545 = add i64 %544, %543
  %546 = add i64 %539, 11
  store i64 %546, i64* %3, align 8
  %547 = inttoptr i64 %545 to i32*
  %548 = load i32, i32* %547, align 4
  %549 = zext i32 %548 to i64
  store i64 %549, i64* %RCX.i1583, align 8
  %550 = add i64 %539, 18
  store i64 %550, i64* %3, align 8
  %551 = load i32, i32* %506, align 4
  %552 = sext i32 %551 to i64
  store i64 %552, i64* %RAX.i1607, align 8
  %553 = shl nsw i64 %552, 2
  %554 = add i64 %503, -496
  %555 = add i64 %554, %553
  %556 = add i64 %539, 25
  store i64 %556, i64* %3, align 8
  %557 = inttoptr i64 %555 to i32*
  store i32 %548, i32* %557, align 4
  %558 = load i64, i64* %RBP.i, align 8
  %559 = add i64 %558, -512
  %560 = load i64, i64* %3, align 8
  %561 = add i64 %560, 7
  store i64 %561, i64* %3, align 8
  %562 = inttoptr i64 %559 to i32*
  %563 = load i32, i32* %562, align 4
  %564 = sext i32 %563 to i64
  store i64 %564, i64* %RAX.i1607, align 8
  %565 = shl nsw i64 %564, 2
  %566 = add i64 %558, -296
  %567 = add i64 %566, %565
  %568 = add i64 %560, 18
  store i64 %568, i64* %3, align 8
  %569 = inttoptr i64 %567 to i32*
  store i32 0, i32* %569, align 4
  %570 = load i64, i64* %RBP.i, align 8
  %571 = add i64 %570, -512
  %572 = load i64, i64* %3, align 8
  %573 = add i64 %572, 6
  store i64 %573, i64* %3, align 8
  %574 = inttoptr i64 %571 to i32*
  %575 = load i32, i32* %574, align 4
  %576 = add i32 %575, 1
  %577 = zext i32 %576 to i64
  store i64 %577, i64* %RAX.i1607, align 8
  %578 = icmp eq i32 %575, -1
  %579 = icmp eq i32 %576, 0
  %580 = or i1 %578, %579
  %581 = zext i1 %580 to i8
  store i8 %581, i8* %40, align 1
  %582 = and i32 %576, 255
  %583 = tail call i32 @llvm.ctpop.i32(i32 %582)
  %584 = trunc i32 %583 to i8
  %585 = and i8 %584, 1
  %586 = xor i8 %585, 1
  store i8 %586, i8* %47, align 1
  %587 = xor i32 %576, %575
  %588 = lshr i32 %587, 4
  %589 = trunc i32 %588 to i8
  %590 = and i8 %589, 1
  store i8 %590, i8* %52, align 1
  %591 = zext i1 %579 to i8
  store i8 %591, i8* %55, align 1
  %592 = lshr i32 %576, 31
  %593 = trunc i32 %592 to i8
  store i8 %593, i8* %58, align 1
  %594 = lshr i32 %575, 31
  %595 = xor i32 %592, %594
  %596 = add nuw nsw i32 %595, %592
  %597 = icmp eq i32 %596, 2
  %598 = zext i1 %597 to i8
  store i8 %598, i8* %64, align 1
  %599 = add i64 %572, 15
  store i64 %599, i64* %3, align 8
  store i32 %576, i32* %574, align 4
  %600 = load i64, i64* %3, align 8
  %601 = add i64 %600, -73
  store i64 %601, i64* %3, align 8
  br label %block_.L_4656fd

block_.L_46574b:                                  ; preds = %block_.L_4656fd
  %602 = add i64 %503, -496
  store i64 %602, i64* %RSI.i1599, align 8
  %603 = add i64 %539, 10
  store i64 %603, i64* %3, align 8
  %604 = load i32, i32* %511, align 4
  %605 = zext i32 %604 to i64
  store i64 %605, i64* %RAX.i1607, align 8
  %606 = add i64 %503, -96
  %607 = add i64 %539, 13
  store i64 %607, i64* %3, align 8
  %608 = inttoptr i64 %606 to i32*
  store i32 %604, i32* %608, align 4
  %609 = load i64, i64* %RBP.i, align 8
  %610 = add i64 %609, -48
  %611 = load i64, i64* %3, align 8
  %612 = add i64 %611, 3
  store i64 %612, i64* %3, align 8
  %613 = inttoptr i64 %610 to i32*
  %614 = load i32, i32* %613, align 4
  %615 = zext i32 %614 to i64
  store i64 %615, i64* %RDI.i1522.pre-phi, align 8
  %616 = add i64 %611, -14792
  %617 = add i64 %611, 8
  %618 = load i64, i64* %6, align 8
  %619 = add i64 %618, -8
  %620 = inttoptr i64 %619 to i64*
  store i64 %617, i64* %620, align 8
  store i64 %619, i64* %6, align 8
  store i64 %616, i64* %3, align 8
  %call2_46575b = tail call %struct.Memory* @sub_461d90.break_chain_moves(%struct.State* nonnull %0, i64 %616, %struct.Memory* %MEMORY.3)
  %621 = load i64, i64* %RBP.i, align 8
  %622 = add i64 %621, -496
  %623 = load i64, i64* %3, align 8
  store i64 %622, i64* %RSI.i1599, align 8
  %624 = add i64 %621, -48
  %625 = add i64 %623, 10
  store i64 %625, i64* %3, align 8
  %626 = inttoptr i64 %624 to i32*
  %627 = load i32, i32* %626, align 4
  %628 = zext i32 %627 to i64
  store i64 %628, i64* %RDI.i1522.pre-phi, align 8
  %629 = add i64 %623, 4688
  %630 = add i64 %623, 15
  %631 = load i64, i64* %6, align 8
  %632 = add i64 %631, -8
  %633 = inttoptr i64 %632 to i64*
  store i64 %630, i64* %633, align 8
  store i64 %632, i64* %6, align 8
  store i64 %629, i64* %3, align 8
  %call2_46576a = tail call %struct.Memory* @sub_4669b0.break_chain2_efficient_moves(%struct.State* nonnull %0, i64 %629, %struct.Memory* %call2_46575b)
  %634 = load i64, i64* %RBP.i, align 8
  %635 = add i64 %634, -496
  %636 = load i64, i64* %3, align 8
  store i64 %635, i64* %RCX.i1583, align 8
  %637 = add i64 %634, -92
  store i64 %637, i64* %RSI.i1599, align 8
  %638 = add i64 %634, -48
  %639 = add i64 %636, 14
  store i64 %639, i64* %3, align 8
  %640 = inttoptr i64 %638 to i32*
  %641 = load i32, i32* %640, align 4
  %642 = zext i32 %641 to i64
  store i64 %642, i64* %RDI.i1522.pre-phi, align 8
  %643 = add i64 %634, -80
  %644 = add i64 %636, 17
  store i64 %644, i64* %3, align 8
  %645 = inttoptr i64 %643 to i32*
  %646 = load i32, i32* %645, align 4
  %647 = zext i32 %646 to i64
  store i64 %647, i64* %RDX.i1497.pre-phi, align 8
  %R8D.i1350 = bitcast %union.anon* %66 to i32*
  %648 = add i64 %634, -68
  %649 = add i64 %636, 21
  store i64 %649, i64* %3, align 8
  %650 = inttoptr i64 %648 to i32*
  %651 = load i32, i32* %650, align 4
  %652 = zext i32 %651 to i64
  store i64 %652, i64* %R8.i1605, align 8
  %653 = add i64 %636, -12479
  %654 = add i64 %636, 26
  %655 = load i64, i64* %6, align 8
  %656 = add i64 %655, -8
  %657 = inttoptr i64 %656 to i64*
  store i64 %654, i64* %657, align 8
  store i64 %656, i64* %6, align 8
  store i64 %653, i64* %3, align 8
  %call2_465784 = tail call %struct.Memory* @sub_4626b0.propose_edge_moves(%struct.State* nonnull %0, i64 %653, %struct.Memory* %call2_46576a)
  %658 = load i64, i64* %RBP.i, align 8
  %659 = add i64 %658, -496
  %660 = load i64, i64* %3, align 8
  store i64 %659, i64* %RSI.i1599, align 8
  %661 = add i64 %658, -48
  %662 = add i64 %660, 10
  store i64 %662, i64* %3, align 8
  %663 = inttoptr i64 %661 to i32*
  %664 = load i32, i32* %663, align 4
  %665 = zext i32 %664 to i64
  store i64 %665, i64* %RDI.i1522.pre-phi, align 8
  %666 = add i64 %660, 7943
  %667 = add i64 %660, 15
  %668 = load i64, i64* %6, align 8
  %669 = add i64 %668, -8
  %670 = inttoptr i64 %669 to i64*
  store i64 %667, i64* %670, align 8
  store i64 %669, i64* %6, align 8
  store i64 %666, i64* %3, align 8
  %call2_465793 = tail call %struct.Memory* @sub_467690.edge_clamp_moves(%struct.State* nonnull %0, i64 %666, %struct.Memory* %call2_465784)
  %671 = load i64, i64* %3, align 8
  %672 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*), align 8
  %673 = zext i32 %672 to i64
  store i64 %673, i64* %RAX.i1607, align 8
  %674 = load i32, i32* bitcast (%G_0xb8af28_type* @G_0xb8af28 to i32*), align 8
  %675 = sub i32 %672, %674
  %676 = icmp ult i32 %672, %674
  %677 = zext i1 %676 to i8
  store i8 %677, i8* %40, align 1
  %678 = and i32 %675, 255
  %679 = tail call i32 @llvm.ctpop.i32(i32 %678)
  %680 = trunc i32 %679 to i8
  %681 = and i8 %680, 1
  %682 = xor i8 %681, 1
  store i8 %682, i8* %47, align 1
  %683 = xor i32 %674, %672
  %684 = xor i32 %683, %675
  %685 = lshr i32 %684, 4
  %686 = trunc i32 %685 to i8
  %687 = and i8 %686, 1
  store i8 %687, i8* %52, align 1
  %688 = icmp eq i32 %675, 0
  %689 = zext i1 %688 to i8
  store i8 %689, i8* %55, align 1
  %690 = lshr i32 %675, 31
  %691 = trunc i32 %690 to i8
  store i8 %691, i8* %58, align 1
  %692 = lshr i32 %672, 31
  %693 = lshr i32 %674, 31
  %694 = xor i32 %693, %692
  %695 = xor i32 %690, %692
  %696 = add nuw nsw i32 %695, %694
  %697 = icmp eq i32 %696, 2
  %698 = zext i1 %697 to i8
  store i8 %698, i8* %64, align 1
  %699 = icmp ne i8 %691, 0
  %700 = xor i1 %699, %697
  %.demorgan = or i1 %688, %700
  %.v166 = select i1 %.demorgan, i64 20, i64 39
  %701 = add i64 %671, %.v166
  store i64 %701, i64* %3, align 8
  br i1 %.demorgan, label %block_4657ac, label %block_.L_4657bf

block_4657ac:                                     ; preds = %block_.L_46574b
  %702 = load i64, i64* %RBP.i, align 8
  %703 = add i64 %702, -496
  store i64 %703, i64* %RDX.i1497.pre-phi, align 8
  %704 = add i64 %702, -92
  store i64 %704, i64* %RSI.i1599, align 8
  %705 = add i64 %702, -48
  %706 = add i64 %701, 14
  store i64 %706, i64* %3, align 8
  %707 = inttoptr i64 %705 to i32*
  %708 = load i32, i32* %707, align 4
  %709 = zext i32 %708 to i64
  store i64 %709, i64* %RDI.i1522.pre-phi, align 8
  %710 = add i64 %701, 8948
  %711 = add i64 %701, 19
  %712 = load i64, i64* %6, align 8
  %713 = add i64 %712, -8
  %714 = inttoptr i64 %713 to i64*
  store i64 %711, i64* %714, align 8
  store i64 %713, i64* %6, align 8
  store i64 %710, i64* %3, align 8
  %call2_4657ba = tail call %struct.Memory* @sub_467aa0.hane_rescue_moves(%struct.State* nonnull %0, i64 %710, %struct.Memory* %call2_465793)
  %.pre109 = load i64, i64* %3, align 8
  br label %block_.L_4657bf

block_.L_4657bf:                                  ; preds = %block_.L_46574b, %block_4657ac
  %715 = phi i64 [ %701, %block_.L_46574b ], [ %.pre109, %block_4657ac ]
  %MEMORY.5 = phi %struct.Memory* [ %call2_465793, %block_.L_46574b ], [ %call2_4657ba, %block_4657ac ]
  %716 = load i64, i64* %RBP.i, align 8
  %717 = add i64 %716, -496
  store i64 %717, i64* %RSI.i1599, align 8
  store i64 0, i64* %R8.i1605, align 8
  store i8 0, i8* %40, align 1
  store i8 1, i8* %47, align 1
  store i8 1, i8* %55, align 1
  store i8 0, i8* %58, align 1
  store i8 0, i8* %64, align 1
  store i8 0, i8* %52, align 1
  %718 = add i64 %716, -48
  %719 = add i64 %715, 13
  store i64 %719, i64* %3, align 8
  %720 = inttoptr i64 %718 to i32*
  %721 = load i32, i32* %720, align 4
  %722 = zext i32 %721 to i64
  store i64 %722, i64* %RDI.i1522.pre-phi, align 8
  %723 = add i64 %716, -68
  %724 = add i64 %715, 16
  store i64 %724, i64* %3, align 8
  %725 = inttoptr i64 %723 to i32*
  %726 = load i32, i32* %725, align 4
  %727 = zext i32 %726 to i64
  store i64 %727, i64* %RDX.i1497.pre-phi, align 8
  %728 = add i64 %716, -520
  %729 = add i64 %715, 23
  store i64 %729, i64* %3, align 8
  %730 = inttoptr i64 %728 to i64*
  %731 = load i64, i64* %730, align 8
  store i64 %731, i64* %RCX.i1583, align 8
  %732 = add i64 %715, -11055
  %733 = add i64 %715, 28
  %734 = load i64, i64* %6, align 8
  %735 = add i64 %734, -8
  %736 = inttoptr i64 %735 to i64*
  store i64 %733, i64* %736, align 8
  store i64 %735, i64* %6, align 8
  store i64 %732, i64* %3, align 8
  %call2_4657d6 = tail call %struct.Memory* @sub_462c90.order_moves(%struct.State* nonnull %0, i64 %732, %struct.Memory* %MEMORY.5)
  %737 = load i64, i64* %RBP.i, align 8
  %738 = add i64 %737, -512
  %739 = load i64, i64* %3, align 8
  %740 = add i64 %739, 10
  store i64 %740, i64* %3, align 8
  %741 = inttoptr i64 %738 to i32*
  store i32 0, i32* %741, align 4
  %AL.i1288 = bitcast %union.anon* %65 to i8*
  %CL.i1289 = bitcast %union.anon* %87 to i8*
  %742 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D.i1263 = bitcast %union.anon* %742 to i32*
  %743 = getelementptr inbounds %union.anon, %union.anon* %742, i64 0, i32 0
  %744 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10D.i1261 = bitcast %union.anon* %744 to i32*
  %745 = getelementptr inbounds %union.anon, %union.anon* %744, i64 0, i32 0
  %ESI.i1250 = bitcast %union.anon* %73 to i32*
  %746 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0
  %R11D.i1193 = bitcast %union.anon* %746 to i32*
  %747 = getelementptr inbounds %union.anon, %union.anon* %746, i64 0, i32 0
  %EBX.i1178 = bitcast %union.anon* %30 to i32*
  %748 = bitcast i64* %6 to i64**
  %.pre110 = load i64, i64* %3, align 8
  br label %block_.L_4657e5

block_.L_4657e5:                                  ; preds = %block_.L_465a4c, %block_.L_4657bf
  %749 = phi i64 [ %.pre110, %block_.L_4657bf ], [ %1391, %block_.L_465a4c ]
  %750 = load i64, i64* %RBP.i, align 8
  %751 = add i64 %750, -512
  %752 = add i64 %749, 6
  store i64 %752, i64* %3, align 8
  %753 = inttoptr i64 %751 to i32*
  %754 = load i32, i32* %753, align 4
  %755 = zext i32 %754 to i64
  store i64 %755, i64* %RAX.i1607, align 8
  %756 = add i64 %750, -96
  %757 = add i64 %749, 9
  store i64 %757, i64* %3, align 8
  %758 = inttoptr i64 %756 to i32*
  %759 = load i32, i32* %758, align 4
  %760 = sub i32 %754, %759
  %761 = icmp ult i32 %754, %759
  %762 = zext i1 %761 to i8
  store i8 %762, i8* %40, align 1
  %763 = and i32 %760, 255
  %764 = tail call i32 @llvm.ctpop.i32(i32 %763)
  %765 = trunc i32 %764 to i8
  %766 = and i8 %765, 1
  %767 = xor i8 %766, 1
  store i8 %767, i8* %47, align 1
  %768 = xor i32 %759, %754
  %769 = xor i32 %768, %760
  %770 = lshr i32 %769, 4
  %771 = trunc i32 %770 to i8
  %772 = and i8 %771, 1
  store i8 %772, i8* %52, align 1
  %773 = icmp eq i32 %760, 0
  %774 = zext i1 %773 to i8
  store i8 %774, i8* %55, align 1
  %775 = lshr i32 %760, 31
  %776 = trunc i32 %775 to i8
  store i8 %776, i8* %58, align 1
  %777 = lshr i32 %754, 31
  %778 = lshr i32 %759, 31
  %779 = xor i32 %778, %777
  %780 = xor i32 %775, %777
  %781 = add nuw nsw i32 %780, %779
  %782 = icmp eq i32 %781, 2
  %783 = zext i1 %782 to i8
  store i8 %783, i8* %64, align 1
  %784 = icmp ne i8 %776, 0
  %785 = xor i1 %784, %782
  %.v167 = select i1 %785, i64 15, i64 640
  %786 = add i64 %749, %.v167
  store i64 %786, i64* %3, align 8
  br i1 %785, label %block_4657f4, label %block_.L_465a65.loopexit

block_4657f4:                                     ; preds = %block_.L_4657e5
  %787 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*), align 8
  %788 = zext i32 %787 to i64
  store i64 %788, i64* %RAX.i1607, align 8
  %789 = load i32, i32* bitcast (%G_0xb6308c_type* @G_0xb6308c to i32*), align 8
  %790 = sub i32 %787, %789
  %791 = icmp ult i32 %787, %789
  %792 = zext i1 %791 to i8
  store i8 %792, i8* %40, align 1
  %793 = and i32 %790, 255
  %794 = tail call i32 @llvm.ctpop.i32(i32 %793)
  %795 = trunc i32 %794 to i8
  %796 = and i8 %795, 1
  %797 = xor i8 %796, 1
  store i8 %797, i8* %47, align 1
  %798 = xor i32 %789, %787
  %799 = xor i32 %798, %790
  %800 = lshr i32 %799, 4
  %801 = trunc i32 %800 to i8
  %802 = and i8 %801, 1
  store i8 %802, i8* %52, align 1
  %803 = icmp eq i32 %790, 0
  %804 = zext i1 %803 to i8
  store i8 %804, i8* %55, align 1
  %805 = lshr i32 %790, 31
  %806 = trunc i32 %805 to i8
  store i8 %806, i8* %58, align 1
  %807 = lshr i32 %787, 31
  %808 = lshr i32 %789, 31
  %809 = xor i32 %808, %807
  %810 = xor i32 %805, %807
  %811 = add nuw nsw i32 %810, %809
  %812 = icmp eq i32 %811, 2
  %813 = zext i1 %812 to i8
  store i8 %813, i8* %64, align 1
  %814 = icmp ne i8 %806, 0
  %815 = xor i1 %814, %812
  %.v207 = select i1 %815, i64 38, i64 20
  %816 = add i64 %786, %.v207
  store i64 %816, i64* %3, align 8
  br i1 %815, label %block_.L_46581a, label %block_465808

block_465808:                                     ; preds = %block_4657f4
  %817 = add i64 %816, 7
  store i64 %817, i64* %3, align 8
  %818 = load i32, i32* %753, align 4
  store i8 0, i8* %40, align 1
  %819 = and i32 %818, 255
  %820 = tail call i32 @llvm.ctpop.i32(i32 %819)
  %821 = trunc i32 %820 to i8
  %822 = and i8 %821, 1
  %823 = xor i8 %822, 1
  store i8 %823, i8* %47, align 1
  store i8 0, i8* %52, align 1
  %824 = icmp eq i32 %818, 0
  %825 = zext i1 %824 to i8
  store i8 %825, i8* %55, align 1
  %826 = lshr i32 %818, 31
  %827 = trunc i32 %826 to i8
  store i8 %827, i8* %58, align 1
  store i8 0, i8* %64, align 1
  %828 = icmp ne i8 %827, 0
  %829 = or i1 %824, %828
  %.v208 = select i1 %829, i64 18, i64 13
  %830 = add i64 %816, %.v208
  store i64 %830, i64* %3, align 8
  br i1 %829, label %block_.L_46581a, label %block_465815

block_465815:                                     ; preds = %block_465808
  %831 = add i64 %830, 592
  store i64 %831, i64* %3, align 8
  br label %block_.L_465a65

block_.L_46581a:                                  ; preds = %block_465808, %block_4657f4
  %832 = phi i64 [ %830, %block_465808 ], [ %816, %block_4657f4 ]
  store i64 0, i64* %RAX.i1607, align 8
  store i8 0, i8* %40, align 1
  store i8 1, i8* %47, align 1
  store i8 1, i8* %55, align 1
  store i8 0, i8* %58, align 1
  store i8 0, i8* %64, align 1
  store i8 0, i8* %52, align 1
  store i8 0, i8* %CL.i1289, align 1
  %833 = add i64 %832, 11
  store i64 %833, i64* %3, align 8
  %834 = load i32, i32* %753, align 4
  %835 = sext i32 %834 to i64
  store i64 %835, i64* %RDX.i1497.pre-phi, align 8
  %836 = shl nsw i64 %835, 2
  %837 = add i64 %750, -496
  %838 = add i64 %837, %836
  %839 = add i64 %832, 18
  store i64 %839, i64* %3, align 8
  %840 = inttoptr i64 %838 to i32*
  %841 = load i32, i32* %840, align 4
  %842 = zext i32 %841 to i64
  store i64 %842, i64* %RAX.i1607, align 8
  %843 = add i64 %750, -76
  %844 = add i64 %832, 21
  store i64 %844, i64* %3, align 8
  %845 = inttoptr i64 %843 to i32*
  store i32 %841, i32* %845, align 4
  %846 = load i64, i64* %RBP.i, align 8
  %847 = add i64 %846, -76
  %848 = load i64, i64* %3, align 8
  %849 = add i64 %848, 3
  store i64 %849, i64* %3, align 8
  %850 = inttoptr i64 %847 to i32*
  %851 = load i32, i32* %850, align 4
  %852 = zext i32 %851 to i64
  store i64 %852, i64* %RDI.i1522.pre-phi, align 8
  %853 = add i64 %846, -68
  %854 = add i64 %848, 6
  store i64 %854, i64* %3, align 8
  %855 = inttoptr i64 %853 to i32*
  %856 = load i32, i32* %855, align 4
  %857 = zext i32 %856 to i64
  store i64 %857, i64* %RSI.i1599, align 8
  %858 = add i64 %846, -48
  %859 = add i64 %848, 9
  store i64 %859, i64* %3, align 8
  %860 = inttoptr i64 %858 to i32*
  %861 = load i32, i32* %860, align 4
  %862 = zext i32 %861 to i64
  store i64 %862, i64* %RAX.i1607, align 8
  %863 = add i64 %846, -60
  %864 = add i64 %848, 13
  store i64 %864, i64* %3, align 8
  %865 = inttoptr i64 %863 to i32*
  %866 = load i32, i32* %865, align 4
  %867 = zext i32 %866 to i64
  store i64 %867, i64* %R8.i1605, align 8
  %868 = add i64 %846, -64
  %869 = add i64 %848, 17
  store i64 %869, i64* %3, align 8
  %870 = inttoptr i64 %868 to i32*
  %871 = load i32, i32* %870, align 4
  %872 = zext i32 %871 to i64
  store i64 %872, i64* %743, align 8
  %873 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*), align 8
  %874 = zext i32 %873 to i64
  store i64 %874, i64* %745, align 8
  %875 = load i32, i32* bitcast (%G_0xb8b850_type* @G_0xb8b850 to i32*), align 8
  %876 = sub i32 %873, %875
  %877 = icmp ult i32 %873, %875
  %878 = zext i1 %877 to i8
  store i8 %878, i8* %40, align 1
  %879 = and i32 %876, 255
  %880 = tail call i32 @llvm.ctpop.i32(i32 %879)
  %881 = trunc i32 %880 to i8
  %882 = and i8 %881, 1
  %883 = xor i8 %882, 1
  store i8 %883, i8* %47, align 1
  %884 = xor i32 %875, %873
  %885 = xor i32 %884, %876
  %886 = lshr i32 %885, 4
  %887 = trunc i32 %886 to i8
  %888 = and i8 %887, 1
  store i8 %888, i8* %52, align 1
  %889 = icmp eq i32 %876, 0
  %890 = zext i1 %889 to i8
  store i8 %890, i8* %55, align 1
  %891 = lshr i32 %876, 31
  %892 = trunc i32 %891 to i8
  store i8 %892, i8* %58, align 1
  %893 = lshr i32 %873, 31
  %894 = lshr i32 %875, 31
  %895 = xor i32 %894, %893
  %896 = xor i32 %891, %893
  %897 = add nuw nsw i32 %896, %895
  %898 = icmp eq i32 %897, 2
  %899 = zext i1 %898 to i8
  store i8 %899, i8* %64, align 1
  %900 = add i64 %846, -708
  %901 = add i64 %848, 40
  store i64 %901, i64* %3, align 8
  %902 = inttoptr i64 %900 to i32*
  store i32 %871, i32* %902, align 4
  %903 = load i64, i64* %RBP.i, align 8
  %904 = add i64 %903, -712
  %905 = load i32, i32* %EDI.i1602, align 4
  %906 = load i64, i64* %3, align 8
  %907 = add i64 %906, 6
  store i64 %907, i64* %3, align 8
  %908 = inttoptr i64 %904 to i32*
  store i32 %905, i32* %908, align 4
  %909 = load i64, i64* %RBP.i, align 8
  %910 = add i64 %909, -716
  %911 = load i32, i32* %ESI.i1250, align 4
  %912 = load i64, i64* %3, align 8
  %913 = add i64 %912, 6
  store i64 %913, i64* %3, align 8
  %914 = inttoptr i64 %910 to i32*
  store i32 %911, i32* %914, align 4
  %915 = load i64, i64* %RBP.i, align 8
  %916 = add i64 %915, -720
  %917 = load i32, i32* %EAX.i1559, align 4
  %918 = load i64, i64* %3, align 8
  %919 = add i64 %918, 6
  store i64 %919, i64* %3, align 8
  %920 = inttoptr i64 %916 to i32*
  store i32 %917, i32* %920, align 4
  %921 = load i64, i64* %RBP.i, align 8
  %922 = add i64 %921, -724
  %923 = load i32, i32* %R8D.i1350, align 4
  %924 = load i64, i64* %3, align 8
  %925 = add i64 %924, 7
  store i64 %925, i64* %3, align 8
  %926 = inttoptr i64 %922 to i32*
  store i32 %923, i32* %926, align 4
  %927 = load i64, i64* %RBP.i, align 8
  %928 = add i64 %927, -725
  %929 = load i8, i8* %CL.i1289, align 1
  %930 = load i64, i64* %3, align 8
  %931 = add i64 %930, 6
  store i64 %931, i64* %3, align 8
  %932 = inttoptr i64 %928 to i8*
  store i8 %929, i8* %932, align 1
  %933 = load i64, i64* %3, align 8
  %934 = add i64 %933, 22
  %935 = add i64 %933, 6
  %936 = load i8, i8* %55, align 1
  %937 = icmp eq i8 %936, 0
  %938 = load i8, i8* %58, align 1
  %939 = icmp ne i8 %938, 0
  %940 = load i8, i8* %64, align 1
  %941 = icmp ne i8 %940, 0
  %942 = xor i1 %939, %941
  %943 = xor i1 %942, true
  %944 = and i1 %937, %943
  %945 = select i1 %944, i64 %934, i64 %935
  store i64 %945, i64* %3, align 8
  br i1 %944, label %block_.L_46588c, label %block_46587c

block_46587c:                                     ; preds = %block_.L_46581a
  %946 = load i64, i64* %RBP.i, align 8
  %947 = add i64 %946, -508
  %948 = add i64 %945, 7
  store i64 %948, i64* %3, align 8
  %949 = inttoptr i64 %947 to i32*
  %950 = load i32, i32* %949, align 4
  store i8 0, i8* %40, align 1
  %951 = and i32 %950, 255
  %952 = tail call i32 @llvm.ctpop.i32(i32 %951)
  %953 = trunc i32 %952 to i8
  %954 = and i8 %953, 1
  %955 = xor i8 %954, 1
  store i8 %955, i8* %47, align 1
  store i8 0, i8* %52, align 1
  %956 = icmp eq i32 %950, 0
  %957 = zext i1 %956 to i8
  store i8 %957, i8* %55, align 1
  %958 = lshr i32 %950, 31
  %959 = trunc i32 %958 to i8
  store i8 %959, i8* %58, align 1
  store i8 0, i8* %64, align 1
  store i8 %957, i8* %AL.i1288, align 1
  %960 = add i64 %946, -725
  %961 = add i64 %945, 16
  store i64 %961, i64* %3, align 8
  %962 = inttoptr i64 %960 to i8*
  store i8 %957, i8* %962, align 1
  %.pre144 = load i64, i64* %3, align 8
  br label %block_.L_46588c

block_.L_46588c:                                  ; preds = %block_46587c, %block_.L_46581a
  %963 = phi i64 [ %.pre144, %block_46587c ], [ %934, %block_.L_46581a ]
  %964 = load i64, i64* %RBP.i, align 8
  %965 = add i64 %964, -725
  %966 = add i64 %963, 6
  store i64 %966, i64* %3, align 8
  %967 = inttoptr i64 %965 to i8*
  %968 = load i8, i8* %967, align 1
  store i64 ptrtoint (%G__0x57fcc3_type* @G__0x57fcc3 to i64), i64* %RDX.i1497.pre-phi, align 8
  %969 = add i64 %964, -528
  store i64 %969, i64* %RCX.i1583, align 8
  %970 = add i64 %964, -532
  store i64 %970, i64* %RSI.i1599, align 8
  %971 = add i64 %964, -536
  store i64 %971, i64* %RDI.i1522.pre-phi, align 8
  %972 = and i8 %968, 1
  store i8 %972, i8* %AL.i1288, align 1
  store i8 0, i8* %40, align 1
  %973 = zext i8 %972 to i32
  %974 = tail call i32 @llvm.ctpop.i32(i32 %973)
  %975 = trunc i32 %974 to i8
  %976 = xor i8 %975, 1
  store i8 %976, i8* %47, align 1
  %977 = xor i8 %972, 1
  store i8 %977, i8* %55, align 1
  store i8 0, i8* %58, align 1
  store i8 0, i8* %64, align 1
  store i8 0, i8* %52, align 1
  %978 = zext i8 %972 to i64
  store i64 %978, i64* %R8.i1605, align 8
  %979 = add i64 %964, -712
  %980 = add i64 %963, 50
  store i64 %980, i64* %3, align 8
  %981 = inttoptr i64 %979 to i32*
  %982 = load i32, i32* %981, align 4
  %983 = zext i32 %982 to i64
  store i64 %983, i64* %743, align 8
  %984 = add i64 %964, -736
  %985 = add i64 %963, 57
  store i64 %985, i64* %3, align 8
  %986 = inttoptr i64 %984 to i64*
  store i64 %971, i64* %986, align 8
  %987 = load i32, i32* %R9D.i1263, align 4
  %988 = zext i32 %987 to i64
  %989 = load i64, i64* %3, align 8
  store i64 %988, i64* %RDI.i1522.pre-phi, align 8
  %990 = load i64, i64* %RBP.i, align 8
  %991 = add i64 %990, -716
  %992 = add i64 %989, 10
  store i64 %992, i64* %3, align 8
  %993 = inttoptr i64 %991 to i32*
  %994 = load i32, i32* %993, align 4
  %995 = zext i32 %994 to i64
  store i64 %995, i64* %745, align 8
  %996 = add i64 %990, -744
  %997 = load i64, i64* %RSI.i1599, align 8
  %998 = add i64 %989, 17
  store i64 %998, i64* %3, align 8
  %999 = inttoptr i64 %996 to i64*
  store i64 %997, i64* %999, align 8
  %1000 = load i32, i32* %R10D.i1261, align 4
  %1001 = zext i32 %1000 to i64
  %1002 = load i64, i64* %3, align 8
  store i64 %1001, i64* %RSI.i1599, align 8
  %1003 = load i64, i64* %RBP.i, align 8
  %1004 = add i64 %1003, -720
  %1005 = add i64 %1002, 10
  store i64 %1005, i64* %3, align 8
  %1006 = inttoptr i64 %1004 to i32*
  %1007 = load i32, i32* %1006, align 4
  %1008 = zext i32 %1007 to i64
  store i64 %1008, i64* %747, align 8
  %1009 = add i64 %1003, -752
  %1010 = load i64, i64* %RCX.i1583, align 8
  %1011 = add i64 %1002, 17
  store i64 %1011, i64* %3, align 8
  %1012 = inttoptr i64 %1009 to i64*
  store i64 %1010, i64* %1012, align 8
  %1013 = load i32, i32* %R11D.i1193, align 4
  %1014 = zext i32 %1013 to i64
  %1015 = load i64, i64* %3, align 8
  store i64 %1014, i64* %RCX.i1583, align 8
  %1016 = load i64, i64* %RBP.i, align 8
  %1017 = add i64 %1016, -724
  %1018 = add i64 %1015, 9
  store i64 %1018, i64* %3, align 8
  %1019 = inttoptr i64 %1017 to i32*
  %1020 = load i32, i32* %1019, align 4
  %1021 = zext i32 %1020 to i64
  store i64 %1021, i64* %RBX.i1611, align 8
  %1022 = add i64 %1016, -756
  %1023 = load i32, i32* %R8D.i1350, align 4
  %1024 = add i64 %1015, 16
  store i64 %1024, i64* %3, align 8
  %1025 = inttoptr i64 %1022 to i32*
  store i32 %1023, i32* %1025, align 4
  %1026 = load i32, i32* %EBX.i1178, align 4
  %1027 = zext i32 %1026 to i64
  %1028 = load i64, i64* %3, align 8
  store i64 %1027, i64* %R8.i1605, align 8
  %1029 = load i64, i64* %RBP.i, align 8
  %1030 = add i64 %1029, -708
  %1031 = add i64 %1028, 10
  store i64 %1031, i64* %3, align 8
  %1032 = inttoptr i64 %1030 to i32*
  %1033 = load i32, i32* %1032, align 4
  %1034 = zext i32 %1033 to i64
  store i64 %1034, i64* %743, align 8
  %1035 = add i64 %1029, -752
  %1036 = add i64 %1028, 17
  store i64 %1036, i64* %3, align 8
  %1037 = inttoptr i64 %1035 to i64*
  %1038 = load i64, i64* %1037, align 8
  store i64 %1038, i64* %R14.i1617, align 8
  %1039 = load i64*, i64** %748, align 8
  %1040 = add i64 %1028, 21
  store i64 %1040, i64* %3, align 8
  store i64 %1038, i64* %1039, align 8
  %1041 = load i64, i64* %RBP.i, align 8
  %1042 = add i64 %1041, -744
  %1043 = load i64, i64* %3, align 8
  %1044 = add i64 %1043, 7
  store i64 %1044, i64* %3, align 8
  %1045 = inttoptr i64 %1042 to i64*
  %1046 = load i64, i64* %1045, align 8
  store i64 %1046, i64* %R15.i1460, align 8
  %1047 = load i64, i64* %6, align 8
  %1048 = add i64 %1047, 8
  %1049 = add i64 %1043, 12
  store i64 %1049, i64* %3, align 8
  %1050 = inttoptr i64 %1048 to i64*
  store i64 %1046, i64* %1050, align 8
  %1051 = load i64, i64* %RBP.i, align 8
  %1052 = add i64 %1051, -736
  %1053 = load i64, i64* %3, align 8
  %1054 = add i64 %1053, 7
  store i64 %1054, i64* %3, align 8
  %1055 = inttoptr i64 %1052 to i64*
  %1056 = load i64, i64* %1055, align 8
  store i64 %1056, i64* %R12.i1613, align 8
  %1057 = load i64, i64* %6, align 8
  %1058 = add i64 %1057, 16
  %1059 = add i64 %1053, 12
  store i64 %1059, i64* %3, align 8
  %1060 = inttoptr i64 %1058 to i64*
  store i64 %1056, i64* %1060, align 8
  %1061 = load i64, i64* %RBP.i, align 8
  %1062 = add i64 %1061, -756
  %1063 = load i64, i64* %3, align 8
  %1064 = add i64 %1063, 7
  store i64 %1064, i64* %3, align 8
  %1065 = inttoptr i64 %1062 to i32*
  %1066 = load i32, i32* %1065, align 4
  %1067 = zext i32 %1066 to i64
  store i64 %1067, i64* %R13.i1615, align 8
  %1068 = load i64, i64* %6, align 8
  %1069 = add i64 %1068, 24
  %1070 = add i64 %1063, 12
  store i64 %1070, i64* %3, align 8
  %1071 = inttoptr i64 %1069 to i32*
  store i32 %1066, i32* %1071, align 4
  %1072 = load i64, i64* %3, align 8
  %1073 = add i64 %1072, -355136
  %1074 = add i64 %1072, 5
  %1075 = load i64, i64* %6, align 8
  %1076 = add i64 %1075, -8
  %1077 = inttoptr i64 %1076 to i64*
  store i64 %1074, i64* %1077, align 8
  store i64 %1076, i64* %6, align 8
  store i64 %1073, i64* %3, align 8
  %call2_465930 = tail call %struct.Memory* @sub_40edf0.komaster_trymove(%struct.State* nonnull %0, i64 %1073, %struct.Memory* %call2_4657d6)
  %1078 = load i32, i32* %EAX.i1559, align 4
  %1079 = load i64, i64* %3, align 8
  store i8 0, i8* %40, align 1
  %1080 = and i32 %1078, 255
  %1081 = tail call i32 @llvm.ctpop.i32(i32 %1080)
  %1082 = trunc i32 %1081 to i8
  %1083 = and i8 %1082, 1
  %1084 = xor i8 %1083, 1
  store i8 %1084, i8* %47, align 1
  store i8 0, i8* %52, align 1
  %1085 = icmp eq i32 %1078, 0
  %1086 = zext i1 %1085 to i8
  store i8 %1086, i8* %55, align 1
  %1087 = lshr i32 %1078, 31
  %1088 = trunc i32 %1087 to i8
  store i8 %1088, i8* %58, align 1
  store i8 0, i8* %64, align 1
  %.v209 = select i1 %1085, i64 279, i64 9
  %1089 = add i64 %1079, %.v209
  store i64 %1089, i64* %3, align 8
  br i1 %1085, label %block_.L_465a4c, label %block_46593e

block_46593e:                                     ; preds = %block_.L_46588c
  %1090 = load i64, i64* %RBP.i, align 8
  %1091 = add i64 %1090, -536
  %1092 = add i64 %1089, 7
  store i64 %1092, i64* %3, align 8
  %1093 = inttoptr i64 %1091 to i32*
  %1094 = load i32, i32* %1093, align 4
  %1095 = icmp eq i32 %1094, 0
  %.v210 = select i1 %1095, i64 13, i64 208
  %1096 = add i64 %1089, %.v210
  store i64 0, i64* %RAX.i1607, align 8
  store i8 0, i8* %40, align 1
  store i8 1, i8* %47, align 1
  store i8 1, i8* %55, align 1
  store i8 0, i8* %58, align 1
  store i8 0, i8* %64, align 1
  store i8 0, i8* %52, align 1
  store i64 0, i64* %RSI.i1599, align 8
  %1097 = add i64 %1090, -48
  %1098 = add i64 %1096, 7
  store i64 %1098, i64* %3, align 8
  %1099 = inttoptr i64 %1097 to i32*
  %1100 = load i32, i32* %1099, align 4
  %1101 = zext i32 %1100 to i64
  store i64 %1101, i64* %RDI.i1522.pre-phi, align 8
  %1102 = add i64 %1090, -528
  %1103 = add i64 %1096, 13
  store i64 %1103, i64* %3, align 8
  %1104 = inttoptr i64 %1102 to i32*
  %1105 = load i32, i32* %1104, align 4
  %1106 = zext i32 %1105 to i64
  store i64 %1106, i64* %RDX.i1497.pre-phi, align 8
  %1107 = add i64 %1090, -532
  %1108 = add i64 %1096, 19
  store i64 %1108, i64* %3, align 8
  %1109 = inttoptr i64 %1107 to i32*
  %1110 = load i32, i32* %1109, align 4
  %1111 = zext i32 %1110 to i64
  store i64 %1111, i64* %RCX.i1583, align 8
  br i1 %1095, label %block_46594b, label %block_.L_465a0e

block_46594b:                                     ; preds = %block_46593e
  %1112 = add i64 %1096, -31851
  %1113 = add i64 %1096, 24
  %1114 = load i64, i64* %6, align 8
  %1115 = add i64 %1114, -8
  %1116 = inttoptr i64 %1115 to i64*
  store i64 %1113, i64* %1116, align 8
  store i64 %1115, i64* %6, align 8
  store i64 %1112, i64* %3, align 8
  %call2_46595e = tail call %struct.Memory* @sub_45dce0.do_attack(%struct.State* nonnull %0, i64 %1112, %struct.Memory* %call2_4657d6)
  %1117 = load i64, i64* %RBP.i, align 8
  %1118 = add i64 %1117, -540
  %1119 = load i32, i32* %EAX.i1559, align 4
  %1120 = load i64, i64* %3, align 8
  %1121 = add i64 %1120, 6
  store i64 %1121, i64* %3, align 8
  %1122 = inttoptr i64 %1118 to i32*
  store i32 %1119, i32* %1122, align 4
  %1123 = load i64, i64* %3, align 8
  %1124 = add i64 %1123, -359433
  %1125 = add i64 %1123, 5
  %1126 = load i64, i64* %6, align 8
  %1127 = add i64 %1126, -8
  %1128 = inttoptr i64 %1127 to i64*
  store i64 %1125, i64* %1128, align 8
  store i64 %1127, i64* %6, align 8
  store i64 %1124, i64* %3, align 8
  %call2_465969 = tail call %struct.Memory* @sub_40dd60.popgo(%struct.State* nonnull %0, i64 %1124, %struct.Memory* %call2_4657d6)
  %1129 = load i64, i64* %RBP.i, align 8
  %1130 = add i64 %1129, -540
  %1131 = load i64, i64* %3, align 8
  %1132 = add i64 %1131, 7
  store i64 %1132, i64* %3, align 8
  %1133 = inttoptr i64 %1130 to i32*
  %1134 = load i32, i32* %1133, align 4
  store i8 0, i8* %40, align 1
  %1135 = and i32 %1134, 255
  %1136 = tail call i32 @llvm.ctpop.i32(i32 %1135)
  %1137 = trunc i32 %1136 to i8
  %1138 = and i8 %1137, 1
  %1139 = xor i8 %1138, 1
  store i8 %1139, i8* %47, align 1
  store i8 0, i8* %52, align 1
  %1140 = icmp eq i32 %1134, 0
  %1141 = zext i1 %1140 to i8
  store i8 %1141, i8* %55, align 1
  %1142 = lshr i32 %1134, 31
  %1143 = trunc i32 %1142 to i8
  store i8 %1143, i8* %58, align 1
  store i8 0, i8* %64, align 1
  %.v212 = select i1 %1140, i64 13, i64 96
  %1144 = add i64 %1131, %.v212
  store i64 %1144, i64* %3, align 8
  br i1 %1140, label %block_46597b, label %block_.L_4659ce

block_46597b:                                     ; preds = %block_46594b
  %1145 = add i64 %1129, -56
  %1146 = add i64 %1144, 5
  store i64 %1146, i64* %3, align 8
  %1147 = inttoptr i64 %1145 to i64*
  %1148 = load i64, i64* %1147, align 8
  store i8 0, i8* %40, align 1
  %1149 = trunc i64 %1148 to i32
  %1150 = and i32 %1149, 255
  %1151 = tail call i32 @llvm.ctpop.i32(i32 %1150)
  %1152 = trunc i32 %1151 to i8
  %1153 = and i8 %1152, 1
  %1154 = xor i8 %1153, 1
  store i8 %1154, i8* %47, align 1
  store i8 0, i8* %52, align 1
  %1155 = icmp eq i64 %1148, 0
  %1156 = zext i1 %1155 to i8
  store i8 %1156, i8* %55, align 1
  %1157 = lshr i64 %1148, 63
  %1158 = trunc i64 %1157 to i8
  store i8 %1158, i8* %58, align 1
  store i8 0, i8* %64, align 1
  %.v214 = select i1 %1155, i64 20, i64 11
  %1159 = add i64 %1144, %.v214
  store i64 %1159, i64* %3, align 8
  br i1 %1155, label %block_.L_46598f, label %block_465986

block_465986:                                     ; preds = %block_46597b
  %1160 = add i64 %1129, -76
  %1161 = add i64 %1159, 3
  store i64 %1161, i64* %3, align 8
  %1162 = inttoptr i64 %1160 to i32*
  %1163 = load i32, i32* %1162, align 4
  %1164 = zext i32 %1163 to i64
  store i64 %1164, i64* %RAX.i1607, align 8
  %1165 = add i64 %1159, 7
  store i64 %1165, i64* %3, align 8
  %1166 = load i64, i64* %1147, align 8
  store i64 %1166, i64* %RCX.i1583, align 8
  %1167 = add i64 %1159, 9
  store i64 %1167, i64* %3, align 8
  %1168 = inttoptr i64 %1166 to i32*
  store i32 %1163, i32* %1168, align 4
  %.pre145 = load i64, i64* %3, align 8
  br label %block_.L_46598f

block_.L_46598f:                                  ; preds = %block_465986, %block_46597b
  %1169 = phi i64 [ %.pre145, %block_465986 ], [ %1159, %block_46597b ]
  %1170 = load i64, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*), align 8
  store i8 0, i8* %40, align 1
  %1171 = trunc i64 %1170 to i32
  %1172 = and i32 %1171, 255
  %1173 = tail call i32 @llvm.ctpop.i32(i32 %1172)
  %1174 = trunc i32 %1173 to i8
  %1175 = and i8 %1174, 1
  %1176 = xor i8 %1175, 1
  store i8 %1176, i8* %47, align 1
  store i8 0, i8* %52, align 1
  %1177 = icmp eq i64 %1170, 0
  %1178 = zext i1 %1177 to i8
  store i8 %1178, i8* %55, align 1
  %1179 = lshr i64 %1170, 63
  %1180 = trunc i64 %1179 to i8
  store i8 %1180, i8* %58, align 1
  store i8 0, i8* %64, align 1
  %.v215 = select i1 %1177, i64 51, i64 15
  %1181 = add i64 %1169, %.v215
  store i64 %1181, i64* %3, align 8
  br i1 %1177, label %block_.L_4659c2, label %block_46599e

block_46599e:                                     ; preds = %block_.L_46598f
  store i64 5, i64* %RCX.i1583, align 8
  store i64 ptrtoint (%G__0x57fc87_type* @G__0x57fc87 to i64), i64* %R8.i1605, align 8
  %1182 = load i64, i64* %RBP.i, align 8
  %1183 = add i64 %1182, -520
  %1184 = add i64 %1181, 22
  store i64 %1184, i64* %3, align 8
  %1185 = inttoptr i64 %1183 to i64*
  %1186 = load i64, i64* %1185, align 8
  store i64 %1186, i64* %RDI.i1522.pre-phi, align 8
  %1187 = add i64 %1182, -524
  %1188 = add i64 %1181, 28
  store i64 %1188, i64* %3, align 8
  %1189 = inttoptr i64 %1187 to i32*
  %1190 = load i32, i32* %1189, align 4
  %1191 = zext i32 %1190 to i64
  store i64 %1191, i64* %RSI.i1599, align 8
  %1192 = add i64 %1182, -76
  %1193 = add i64 %1181, 31
  store i64 %1193, i64* %3, align 8
  %1194 = inttoptr i64 %1192 to i32*
  %1195 = load i32, i32* %1194, align 4
  %1196 = zext i32 %1195 to i64
  store i64 %1196, i64* %RDX.i1497.pre-phi, align 8
  %1197 = add i64 %1181, -317918
  %1198 = add i64 %1181, 36
  %1199 = load i64, i64* %6, align 8
  %1200 = add i64 %1199, -8
  %1201 = inttoptr i64 %1200 to i64*
  store i64 %1198, i64* %1201, align 8
  store i64 %1200, i64* %6, align 8
  store i64 %1197, i64* %3, align 8
  %call2_4659bd = tail call %struct.Memory* @sub_417fc0.sgf_trace(%struct.State* nonnull %0, i64 %1197, %struct.Memory* %call2_4657d6)
  %.pre146 = load i64, i64* %3, align 8
  br label %block_.L_4659c2

block_.L_4659c2:                                  ; preds = %block_46599e, %block_.L_46598f
  %1202 = phi i64 [ %1181, %block_.L_46598f ], [ %.pre146, %block_46599e ]
  %MEMORY.10 = phi %struct.Memory* [ %call2_4657d6, %block_.L_46598f ], [ %call2_4659bd, %block_46599e ]
  %1203 = load i64, i64* %RBP.i, align 8
  %1204 = add i64 %1203, -44
  %1205 = add i64 %1202, 7
  store i64 %1205, i64* %3, align 8
  %1206 = inttoptr i64 %1204 to i32*
  store i32 5, i32* %1206, align 4
  %1207 = load i64, i64* %3, align 8
  %1208 = add i64 %1207, 2518
  store i64 %1208, i64* %3, align 8
  br label %block_.L_46639f

block_.L_4659ce:                                  ; preds = %block_46594b
  store i64 5, i64* %RAX.i1607, align 8
  %1209 = add i64 %1144, 11
  store i64 %1209, i64* %3, align 8
  %1210 = load i32, i32* %1133, align 4
  %1211 = sub i32 5, %1210
  %1212 = zext i32 %1211 to i64
  store i64 %1212, i64* %RAX.i1607, align 8
  %1213 = icmp ugt i32 %1210, 5
  %1214 = zext i1 %1213 to i8
  store i8 %1214, i8* %40, align 1
  %1215 = and i32 %1211, 255
  %1216 = tail call i32 @llvm.ctpop.i32(i32 %1215)
  %1217 = trunc i32 %1216 to i8
  %1218 = and i8 %1217, 1
  %1219 = xor i8 %1218, 1
  store i8 %1219, i8* %47, align 1
  %1220 = xor i32 %1211, %1210
  %1221 = lshr i32 %1220, 4
  %1222 = trunc i32 %1221 to i8
  %1223 = and i8 %1222, 1
  store i8 %1223, i8* %52, align 1
  %1224 = icmp eq i32 %1211, 0
  %1225 = zext i1 %1224 to i8
  store i8 %1225, i8* %55, align 1
  %1226 = lshr i32 %1211, 31
  %1227 = trunc i32 %1226 to i8
  store i8 %1227, i8* %58, align 1
  %1228 = lshr i32 %1210, 31
  %1229 = add nuw nsw i32 %1226, %1228
  %1230 = icmp eq i32 %1229, 2
  %1231 = zext i1 %1230 to i8
  store i8 %1231, i8* %64, align 1
  %1232 = add i64 %1129, -508
  %1233 = add i64 %1144, 17
  store i64 %1233, i64* %3, align 8
  %1234 = inttoptr i64 %1232 to i32*
  %1235 = load i32, i32* %1234, align 4
  %1236 = sub i32 %1211, %1235
  %1237 = icmp ult i32 %1211, %1235
  %1238 = zext i1 %1237 to i8
  store i8 %1238, i8* %40, align 1
  %1239 = and i32 %1236, 255
  %1240 = tail call i32 @llvm.ctpop.i32(i32 %1239)
  %1241 = trunc i32 %1240 to i8
  %1242 = and i8 %1241, 1
  %1243 = xor i8 %1242, 1
  store i8 %1243, i8* %47, align 1
  %1244 = xor i32 %1235, %1211
  %1245 = xor i32 %1244, %1236
  %1246 = lshr i32 %1245, 4
  %1247 = trunc i32 %1246 to i8
  %1248 = and i8 %1247, 1
  store i8 %1248, i8* %52, align 1
  %1249 = icmp eq i32 %1236, 0
  %1250 = zext i1 %1249 to i8
  store i8 %1250, i8* %55, align 1
  %1251 = lshr i32 %1236, 31
  %1252 = trunc i32 %1251 to i8
  store i8 %1252, i8* %58, align 1
  %1253 = lshr i32 %1235, 31
  %1254 = xor i32 %1253, %1226
  %1255 = xor i32 %1251, %1226
  %1256 = add nuw nsw i32 %1255, %1254
  %1257 = icmp eq i32 %1256, 2
  %1258 = zext i1 %1257 to i8
  store i8 %1258, i8* %64, align 1
  %1259 = icmp ne i8 %1252, 0
  %1260 = xor i1 %1259, %1257
  %1261 = or i1 %1249, %1260
  %.v213 = select i1 %1261, i64 49, i64 23
  %1262 = add i64 %1144, %.v213
  store i64 %1262, i64* %3, align 8
  br i1 %1261, label %block_.L_4659ff, label %block_4659e5

block_4659e5:                                     ; preds = %block_.L_4659ce
  store i64 5, i64* %RAX.i1607, align 8
  %1263 = add i64 %1129, -76
  %1264 = add i64 %1262, 8
  store i64 %1264, i64* %3, align 8
  %1265 = inttoptr i64 %1263 to i32*
  %1266 = load i32, i32* %1265, align 4
  %1267 = zext i32 %1266 to i64
  store i64 %1267, i64* %RCX.i1583, align 8
  %1268 = add i64 %1129, -504
  %1269 = add i64 %1262, 14
  store i64 %1269, i64* %3, align 8
  %1270 = inttoptr i64 %1268 to i32*
  store i32 %1266, i32* %1270, align 4
  %1271 = load i64, i64* %RAX.i1607, align 8
  %1272 = load i64, i64* %RBP.i, align 8
  %1273 = add i64 %1272, -540
  %1274 = load i64, i64* %3, align 8
  %1275 = add i64 %1274, 6
  store i64 %1275, i64* %3, align 8
  %1276 = trunc i64 %1271 to i32
  %1277 = inttoptr i64 %1273 to i32*
  %1278 = load i32, i32* %1277, align 4
  %1279 = sub i32 %1276, %1278
  %1280 = zext i32 %1279 to i64
  store i64 %1280, i64* %RAX.i1607, align 8
  %1281 = icmp ult i32 %1276, %1278
  %1282 = zext i1 %1281 to i8
  store i8 %1282, i8* %40, align 1
  %1283 = and i32 %1279, 255
  %1284 = tail call i32 @llvm.ctpop.i32(i32 %1283)
  %1285 = trunc i32 %1284 to i8
  %1286 = and i8 %1285, 1
  %1287 = xor i8 %1286, 1
  store i8 %1287, i8* %47, align 1
  %1288 = xor i32 %1278, %1276
  %1289 = xor i32 %1288, %1279
  %1290 = lshr i32 %1289, 4
  %1291 = trunc i32 %1290 to i8
  %1292 = and i8 %1291, 1
  store i8 %1292, i8* %52, align 1
  %1293 = icmp eq i32 %1279, 0
  %1294 = zext i1 %1293 to i8
  store i8 %1294, i8* %55, align 1
  %1295 = lshr i32 %1279, 31
  %1296 = trunc i32 %1295 to i8
  store i8 %1296, i8* %58, align 1
  %1297 = lshr i32 %1276, 31
  %1298 = lshr i32 %1278, 31
  %1299 = xor i32 %1298, %1297
  %1300 = xor i32 %1295, %1297
  %1301 = add nuw nsw i32 %1300, %1299
  %1302 = icmp eq i32 %1301, 2
  %1303 = zext i1 %1302 to i8
  store i8 %1303, i8* %64, align 1
  %1304 = add i64 %1272, -508
  %1305 = add i64 %1274, 12
  store i64 %1305, i64* %3, align 8
  %1306 = inttoptr i64 %1304 to i32*
  store i32 %1279, i32* %1306, align 4
  %.pre148 = load i64, i64* %3, align 8
  br label %block_.L_4659ff

block_.L_4659ff:                                  ; preds = %block_4659e5, %block_.L_4659ce
  %1307 = phi i64 [ %.pre148, %block_4659e5 ], [ %1262, %block_.L_4659ce ]
  %1308 = add i64 %1307, 72
  store i64 %1308, i64* %3, align 8
  br label %block_.L_465a47

block_.L_465a0e:                                  ; preds = %block_46593e
  %1309 = add i64 %1096, -32046
  %1310 = add i64 %1096, 24
  %1311 = load i64, i64* %6, align 8
  %1312 = add i64 %1311, -8
  %1313 = inttoptr i64 %1312 to i64*
  store i64 %1310, i64* %1313, align 8
  store i64 %1312, i64* %6, align 8
  store i64 %1309, i64* %3, align 8
  %call2_465a21 = tail call %struct.Memory* @sub_45dce0.do_attack(%struct.State* nonnull %0, i64 %1309, %struct.Memory* %call2_4657d6)
  %1314 = load i32, i32* %EAX.i1559, align 4
  %1315 = load i64, i64* %3, align 8
  %1316 = add i32 %1314, -5
  %1317 = icmp ult i32 %1314, 5
  %1318 = zext i1 %1317 to i8
  store i8 %1318, i8* %40, align 1
  %1319 = and i32 %1316, 255
  %1320 = tail call i32 @llvm.ctpop.i32(i32 %1319)
  %1321 = trunc i32 %1320 to i8
  %1322 = and i8 %1321, 1
  %1323 = xor i8 %1322, 1
  store i8 %1323, i8* %47, align 1
  %1324 = xor i32 %1316, %1314
  %1325 = lshr i32 %1324, 4
  %1326 = trunc i32 %1325 to i8
  %1327 = and i8 %1326, 1
  store i8 %1327, i8* %52, align 1
  %1328 = icmp eq i32 %1316, 0
  %1329 = zext i1 %1328 to i8
  store i8 %1329, i8* %55, align 1
  %1330 = lshr i32 %1316, 31
  %1331 = trunc i32 %1330 to i8
  store i8 %1331, i8* %58, align 1
  %1332 = lshr i32 %1314, 31
  %1333 = xor i32 %1330, %1332
  %1334 = add nuw nsw i32 %1333, %1332
  %1335 = icmp eq i32 %1334, 2
  %1336 = zext i1 %1335 to i8
  store i8 %1336, i8* %64, align 1
  %.v211 = select i1 %1328, i64 28, i64 9
  %1337 = add i64 %1315, %.v211
  store i64 %1337, i64* %3, align 8
  br i1 %1328, label %block_.L_465a42, label %block_465a2f

block_465a2f:                                     ; preds = %block_.L_465a0e
  %1338 = load i64, i64* %RBP.i, align 8
  %1339 = add i64 %1338, -76
  %1340 = add i64 %1337, 3
  store i64 %1340, i64* %3, align 8
  %1341 = inttoptr i64 %1339 to i32*
  %1342 = load i32, i32* %1341, align 4
  %1343 = zext i32 %1342 to i64
  store i64 %1343, i64* %RAX.i1607, align 8
  %1344 = add i64 %1338, -504
  %1345 = add i64 %1337, 9
  store i64 %1345, i64* %3, align 8
  %1346 = inttoptr i64 %1344 to i32*
  store i32 %1342, i32* %1346, align 4
  %1347 = load i64, i64* %RBP.i, align 8
  %1348 = add i64 %1347, -508
  %1349 = load i64, i64* %3, align 8
  %1350 = add i64 %1349, 10
  store i64 %1350, i64* %3, align 8
  %1351 = inttoptr i64 %1348 to i32*
  store i32 1, i32* %1351, align 4
  %.pre149 = load i64, i64* %3, align 8
  br label %block_.L_465a42

block_.L_465a42:                                  ; preds = %block_465a2f, %block_.L_465a0e
  %1352 = phi i64 [ %.pre149, %block_465a2f ], [ %1337, %block_.L_465a0e ]
  %1353 = add i64 %1352, -359650
  %1354 = add i64 %1352, 5
  %1355 = load i64, i64* %6, align 8
  %1356 = add i64 %1355, -8
  %1357 = inttoptr i64 %1356 to i64*
  store i64 %1354, i64* %1357, align 8
  store i64 %1356, i64* %6, align 8
  store i64 %1353, i64* %3, align 8
  %call2_465a42 = tail call %struct.Memory* @sub_40dd60.popgo(%struct.State* nonnull %0, i64 %1353, %struct.Memory* %call2_4657d6)
  %.pre150 = load i64, i64* %3, align 8
  br label %block_.L_465a47

block_.L_465a47:                                  ; preds = %block_.L_465a42, %block_.L_4659ff
  %1358 = phi i64 [ %.pre150, %block_.L_465a42 ], [ %1308, %block_.L_4659ff ]
  %1359 = add i64 %1358, 5
  store i64 %1359, i64* %3, align 8
  br label %block_.L_465a4c

block_.L_465a4c:                                  ; preds = %block_.L_465a47, %block_.L_46588c
  %1360 = phi i64 [ %1359, %block_.L_465a47 ], [ %1089, %block_.L_46588c ]
  %1361 = load i64, i64* %RBP.i, align 8
  %1362 = add i64 %1361, -512
  %1363 = add i64 %1360, 11
  store i64 %1363, i64* %3, align 8
  %1364 = inttoptr i64 %1362 to i32*
  %1365 = load i32, i32* %1364, align 4
  %1366 = add i32 %1365, 1
  %1367 = zext i32 %1366 to i64
  store i64 %1367, i64* %RAX.i1607, align 8
  %1368 = icmp eq i32 %1365, -1
  %1369 = icmp eq i32 %1366, 0
  %1370 = or i1 %1368, %1369
  %1371 = zext i1 %1370 to i8
  store i8 %1371, i8* %40, align 1
  %1372 = and i32 %1366, 255
  %1373 = tail call i32 @llvm.ctpop.i32(i32 %1372)
  %1374 = trunc i32 %1373 to i8
  %1375 = and i8 %1374, 1
  %1376 = xor i8 %1375, 1
  store i8 %1376, i8* %47, align 1
  %1377 = xor i32 %1366, %1365
  %1378 = lshr i32 %1377, 4
  %1379 = trunc i32 %1378 to i8
  %1380 = and i8 %1379, 1
  store i8 %1380, i8* %52, align 1
  %1381 = zext i1 %1369 to i8
  store i8 %1381, i8* %55, align 1
  %1382 = lshr i32 %1366, 31
  %1383 = trunc i32 %1382 to i8
  store i8 %1383, i8* %58, align 1
  %1384 = lshr i32 %1365, 31
  %1385 = xor i32 %1382, %1384
  %1386 = add nuw nsw i32 %1385, %1382
  %1387 = icmp eq i32 %1386, 2
  %1388 = zext i1 %1387 to i8
  store i8 %1388, i8* %64, align 1
  %1389 = add i64 %1360, 20
  store i64 %1389, i64* %3, align 8
  store i32 %1366, i32* %1364, align 4
  %1390 = load i64, i64* %3, align 8
  %1391 = add i64 %1390, -635
  store i64 %1391, i64* %3, align 8
  br label %block_.L_4657e5

block_.L_465a65.loopexit:                         ; preds = %block_.L_4657e5
  br label %block_.L_465a65

block_.L_465a65:                                  ; preds = %block_.L_465a65.loopexit, %block_465815
  %1392 = phi i64 [ %831, %block_465815 ], [ %786, %block_.L_465a65.loopexit ]
  %1393 = add i64 %1392, 3
  store i64 %1393, i64* %3, align 8
  %1394 = load i32, i32* %758, align 4
  %1395 = add i64 %750, -500
  %1396 = add i64 %1392, 9
  store i64 %1396, i64* %3, align 8
  %1397 = inttoptr i64 %1395 to i32*
  store i32 %1394, i32* %1397, align 4
  %1398 = load i64, i64* %3, align 8
  %1399 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*), align 8
  %1400 = zext i32 %1399 to i64
  store i64 %1400, i64* %RAX.i1607, align 8
  %1401 = load i32, i32* bitcast (%G_0xb060b8_type* @G_0xb060b8 to i32*), align 8
  %1402 = sub i32 %1399, %1401
  %1403 = icmp ult i32 %1399, %1401
  %1404 = zext i1 %1403 to i8
  store i8 %1404, i8* %40, align 1
  %1405 = and i32 %1402, 255
  %1406 = tail call i32 @llvm.ctpop.i32(i32 %1405)
  %1407 = trunc i32 %1406 to i8
  %1408 = and i8 %1407, 1
  %1409 = xor i8 %1408, 1
  store i8 %1409, i8* %47, align 1
  %1410 = xor i32 %1401, %1399
  %1411 = xor i32 %1410, %1402
  %1412 = lshr i32 %1411, 4
  %1413 = trunc i32 %1412 to i8
  %1414 = and i8 %1413, 1
  store i8 %1414, i8* %52, align 1
  %1415 = icmp eq i32 %1402, 0
  %1416 = zext i1 %1415 to i8
  store i8 %1416, i8* %55, align 1
  %1417 = lshr i32 %1402, 31
  %1418 = trunc i32 %1417 to i8
  store i8 %1418, i8* %58, align 1
  %1419 = lshr i32 %1399, 31
  %1420 = lshr i32 %1401, 31
  %1421 = xor i32 %1420, %1419
  %1422 = xor i32 %1417, %1419
  %1423 = add nuw nsw i32 %1422, %1421
  %1424 = icmp eq i32 %1423, 2
  %1425 = zext i1 %1424 to i8
  store i8 %1425, i8* %64, align 1
  %1426 = icmp ne i8 %1418, 0
  %1427 = xor i1 %1426, %1424
  %.demorgan153 = or i1 %1415, %1427
  %.v168 = select i1 %.demorgan153, i64 20, i64 39
  %1428 = add i64 %1398, %.v168
  store i64 %1428, i64* %3, align 8
  br i1 %.demorgan153, label %block_465a82, label %block_.L_465a95

block_465a82:                                     ; preds = %block_.L_465a65
  %1429 = load i64, i64* %RBP.i, align 8
  %1430 = add i64 %1429, -496
  store i64 %1430, i64* %RDX.i1497.pre-phi, align 8
  %1431 = add i64 %1429, -92
  store i64 %1431, i64* %RSI.i1599, align 8
  %1432 = add i64 %1429, -48
  %1433 = add i64 %1428, 14
  store i64 %1433, i64* %3, align 8
  %1434 = inttoptr i64 %1432 to i32*
  %1435 = load i32, i32* %1434, align 4
  %1436 = zext i32 %1435 to i64
  store i64 %1436, i64* %RDI.i1522.pre-phi, align 8
  %1437 = add i64 %1428, 8974
  %1438 = add i64 %1428, 19
  %1439 = load i64, i64* %6, align 8
  %1440 = add i64 %1439, -8
  %1441 = inttoptr i64 %1440 to i64*
  store i64 %1438, i64* %1441, align 8
  store i64 %1440, i64* %6, align 8
  store i64 %1437, i64* %3, align 8
  %call2_465a90 = tail call %struct.Memory* @sub_467d90.special_rescue3_moves(%struct.State* nonnull %0, i64 %1437, %struct.Memory* %call2_4657d6)
  %.pre111 = load i64, i64* %3, align 8
  %.pre112 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*), align 8
  br label %block_.L_465a95

block_.L_465a95:                                  ; preds = %block_.L_465a65, %block_465a82
  %1442 = phi i32 [ %1399, %block_.L_465a65 ], [ %.pre112, %block_465a82 ]
  %1443 = phi i64 [ %1428, %block_.L_465a65 ], [ %.pre111, %block_465a82 ]
  %MEMORY.16 = phi %struct.Memory* [ %call2_4657d6, %block_.L_465a65 ], [ %call2_465a90, %block_465a82 ]
  %1444 = zext i32 %1442 to i64
  store i64 %1444, i64* %RAX.i1607, align 8
  %1445 = load i32, i32* bitcast (%G_0xb8b854_type* @G_0xb8b854 to i32*), align 8
  %1446 = sub i32 %1442, %1445
  %1447 = icmp ult i32 %1442, %1445
  %1448 = zext i1 %1447 to i8
  store i8 %1448, i8* %40, align 1
  %1449 = and i32 %1446, 255
  %1450 = tail call i32 @llvm.ctpop.i32(i32 %1449)
  %1451 = trunc i32 %1450 to i8
  %1452 = and i8 %1451, 1
  %1453 = xor i8 %1452, 1
  store i8 %1453, i8* %47, align 1
  %1454 = xor i32 %1445, %1442
  %1455 = xor i32 %1454, %1446
  %1456 = lshr i32 %1455, 4
  %1457 = trunc i32 %1456 to i8
  %1458 = and i8 %1457, 1
  store i8 %1458, i8* %52, align 1
  %1459 = icmp eq i32 %1446, 0
  %1460 = zext i1 %1459 to i8
  store i8 %1460, i8* %55, align 1
  %1461 = lshr i32 %1446, 31
  %1462 = trunc i32 %1461 to i8
  store i8 %1462, i8* %58, align 1
  %1463 = lshr i32 %1442, 31
  %1464 = lshr i32 %1445, 31
  %1465 = xor i32 %1464, %1463
  %1466 = xor i32 %1461, %1463
  %1467 = add nuw nsw i32 %1466, %1465
  %1468 = icmp eq i32 %1467, 2
  %1469 = zext i1 %1468 to i8
  store i8 %1469, i8* %64, align 1
  %1470 = icmp ne i8 %1462, 0
  %1471 = xor i1 %1470, %1468
  %.demorgan154 = or i1 %1459, %1471
  %.v169 = select i1 %.demorgan154, i64 20, i64 96
  %1472 = add i64 %1443, %.v169
  store i64 %1472, i64* %3, align 8
  br i1 %.demorgan154, label %block_465aa9, label %block_.L_465af5

block_465aa9:                                     ; preds = %block_.L_465a95
  %1473 = load i64, i64* %RBP.i, align 8
  %1474 = add i64 %1473, -512
  %1475 = add i64 %1472, 10
  store i64 %1475, i64* %3, align 8
  %1476 = inttoptr i64 %1474 to i32*
  store i32 0, i32* %1476, align 4
  %.pre113 = load i64, i64* %3, align 8
  br label %block_.L_465ab3

block_.L_465ab3:                                  ; preds = %block_465ac2, %block_465aa9
  %1477 = phi i64 [ %1567, %block_465ac2 ], [ %.pre113, %block_465aa9 ]
  %1478 = load i64, i64* %RBP.i, align 8
  %1479 = add i64 %1478, -512
  %1480 = add i64 %1477, 6
  store i64 %1480, i64* %3, align 8
  %1481 = inttoptr i64 %1479 to i32*
  %1482 = load i32, i32* %1481, align 4
  %1483 = zext i32 %1482 to i64
  store i64 %1483, i64* %RAX.i1607, align 8
  %1484 = add i64 %1478, -80
  %1485 = add i64 %1477, 9
  store i64 %1485, i64* %3, align 8
  %1486 = inttoptr i64 %1484 to i32*
  %1487 = load i32, i32* %1486, align 4
  %1488 = sub i32 %1482, %1487
  %1489 = icmp ult i32 %1482, %1487
  %1490 = zext i1 %1489 to i8
  store i8 %1490, i8* %40, align 1
  %1491 = and i32 %1488, 255
  %1492 = tail call i32 @llvm.ctpop.i32(i32 %1491)
  %1493 = trunc i32 %1492 to i8
  %1494 = and i8 %1493, 1
  %1495 = xor i8 %1494, 1
  store i8 %1495, i8* %47, align 1
  %1496 = xor i32 %1487, %1482
  %1497 = xor i32 %1496, %1488
  %1498 = lshr i32 %1497, 4
  %1499 = trunc i32 %1498 to i8
  %1500 = and i8 %1499, 1
  store i8 %1500, i8* %52, align 1
  %1501 = icmp eq i32 %1488, 0
  %1502 = zext i1 %1501 to i8
  store i8 %1502, i8* %55, align 1
  %1503 = lshr i32 %1488, 31
  %1504 = trunc i32 %1503 to i8
  store i8 %1504, i8* %58, align 1
  %1505 = lshr i32 %1482, 31
  %1506 = lshr i32 %1487, 31
  %1507 = xor i32 %1506, %1505
  %1508 = xor i32 %1503, %1505
  %1509 = add nuw nsw i32 %1508, %1507
  %1510 = icmp eq i32 %1509, 2
  %1511 = zext i1 %1510 to i8
  store i8 %1511, i8* %64, align 1
  %1512 = icmp ne i8 %1504, 0
  %1513 = xor i1 %1512, %1510
  %.v206 = select i1 %1513, i64 15, i64 61
  %1514 = add i64 %1477, %.v206
  store i64 %1514, i64* %3, align 8
  br i1 %1513, label %block_465ac2, label %block_.L_465af0

block_465ac2:                                     ; preds = %block_.L_465ab3
  %1515 = add i64 %1478, -496
  store i64 %1515, i64* %RDX.i1497.pre-phi, align 8
  %1516 = add i64 %1478, -48
  %1517 = add i64 %1514, 10
  store i64 %1517, i64* %3, align 8
  %1518 = inttoptr i64 %1516 to i32*
  %1519 = load i32, i32* %1518, align 4
  %1520 = zext i32 %1519 to i64
  store i64 %1520, i64* %RDI.i1522.pre-phi, align 8
  %1521 = add i64 %1514, 17
  store i64 %1521, i64* %3, align 8
  %1522 = load i32, i32* %1481, align 4
  %1523 = sext i32 %1522 to i64
  store i64 %1523, i64* %RAX.i1607, align 8
  %1524 = shl nsw i64 %1523, 2
  %1525 = add i64 %1478, -92
  %1526 = add i64 %1525, %1524
  %1527 = add i64 %1514, 21
  store i64 %1527, i64* %3, align 8
  %1528 = inttoptr i64 %1526 to i32*
  %1529 = load i32, i32* %1528, align 4
  %1530 = zext i32 %1529 to i64
  store i64 %1530, i64* %RSI.i1599, align 8
  %1531 = add i64 %1514, 9742
  %1532 = add i64 %1514, 26
  %1533 = load i64, i64* %6, align 8
  %1534 = add i64 %1533, -8
  %1535 = inttoptr i64 %1534 to i64*
  store i64 %1532, i64* %1535, align 8
  store i64 %1534, i64* %6, align 8
  store i64 %1531, i64* %3, align 8
  %call2_465ad7 = tail call %struct.Memory* @sub_4680d0.special_rescue_moves(%struct.State* nonnull %0, i64 %1531, %struct.Memory* %MEMORY.16)
  %1536 = load i64, i64* %RBP.i, align 8
  %1537 = add i64 %1536, -512
  %1538 = load i64, i64* %3, align 8
  %1539 = add i64 %1538, 6
  store i64 %1539, i64* %3, align 8
  %1540 = inttoptr i64 %1537 to i32*
  %1541 = load i32, i32* %1540, align 4
  %1542 = add i32 %1541, 1
  %1543 = zext i32 %1542 to i64
  store i64 %1543, i64* %RAX.i1607, align 8
  %1544 = icmp eq i32 %1541, -1
  %1545 = icmp eq i32 %1542, 0
  %1546 = or i1 %1544, %1545
  %1547 = zext i1 %1546 to i8
  store i8 %1547, i8* %40, align 1
  %1548 = and i32 %1542, 255
  %1549 = tail call i32 @llvm.ctpop.i32(i32 %1548)
  %1550 = trunc i32 %1549 to i8
  %1551 = and i8 %1550, 1
  %1552 = xor i8 %1551, 1
  store i8 %1552, i8* %47, align 1
  %1553 = xor i32 %1542, %1541
  %1554 = lshr i32 %1553, 4
  %1555 = trunc i32 %1554 to i8
  %1556 = and i8 %1555, 1
  store i8 %1556, i8* %52, align 1
  %1557 = zext i1 %1545 to i8
  store i8 %1557, i8* %55, align 1
  %1558 = lshr i32 %1542, 31
  %1559 = trunc i32 %1558 to i8
  store i8 %1559, i8* %58, align 1
  %1560 = lshr i32 %1541, 31
  %1561 = xor i32 %1558, %1560
  %1562 = add nuw nsw i32 %1561, %1558
  %1563 = icmp eq i32 %1562, 2
  %1564 = zext i1 %1563 to i8
  store i8 %1564, i8* %64, align 1
  %1565 = add i64 %1538, 15
  store i64 %1565, i64* %3, align 8
  store i32 %1542, i32* %1540, align 4
  %1566 = load i64, i64* %3, align 8
  %1567 = add i64 %1566, -56
  store i64 %1567, i64* %3, align 8
  br label %block_.L_465ab3

block_.L_465af0:                                  ; preds = %block_.L_465ab3
  %1568 = add i64 %1514, 5
  store i64 %1568, i64* %3, align 8
  br label %block_.L_465af5

block_.L_465af5:                                  ; preds = %block_.L_465a95, %block_.L_465af0
  %1569 = phi i64 [ %1568, %block_.L_465af0 ], [ %1472, %block_.L_465a95 ]
  %1570 = load i32, i32* bitcast (%G_0x7ae448_type* @G_0x7ae448 to i32*), align 8
  %1571 = add i32 %1570, -10
  %1572 = icmp ult i32 %1570, 10
  %1573 = zext i1 %1572 to i8
  store i8 %1573, i8* %40, align 1
  %1574 = and i32 %1571, 255
  %1575 = tail call i32 @llvm.ctpop.i32(i32 %1574)
  %1576 = trunc i32 %1575 to i8
  %1577 = and i8 %1576, 1
  %1578 = xor i8 %1577, 1
  store i8 %1578, i8* %47, align 1
  %1579 = xor i32 %1571, %1570
  %1580 = lshr i32 %1579, 4
  %1581 = trunc i32 %1580 to i8
  %1582 = and i8 %1581, 1
  store i8 %1582, i8* %52, align 1
  %1583 = icmp eq i32 %1571, 0
  %1584 = zext i1 %1583 to i8
  store i8 %1584, i8* %55, align 1
  %1585 = lshr i32 %1571, 31
  %1586 = trunc i32 %1585 to i8
  store i8 %1586, i8* %58, align 1
  %1587 = lshr i32 %1570, 31
  %1588 = xor i32 %1585, %1587
  %1589 = add nuw nsw i32 %1588, %1587
  %1590 = icmp eq i32 %1589, 2
  %1591 = zext i1 %1590 to i8
  store i8 %1591, i8* %64, align 1
  %1592 = icmp ne i8 %1586, 0
  %1593 = xor i1 %1592, %1590
  %.v170 = select i1 %1593, i64 54, i64 14
  %1594 = add i64 %1569, %.v170
  store i64 %1594, i64* %3, align 8
  br i1 %1593, label %block_.L_465b2b, label %block_465b03

block_465b03:                                     ; preds = %block_.L_465af5
  %1595 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*), align 8
  %1596 = zext i32 %1595 to i64
  store i64 %1596, i64* %RAX.i1607, align 8
  %1597 = load i32, i32* bitcast (%G_0xb8af28_type* @G_0xb8af28 to i32*), align 8
  %1598 = sub i32 %1595, %1597
  %1599 = icmp ult i32 %1595, %1597
  %1600 = zext i1 %1599 to i8
  store i8 %1600, i8* %40, align 1
  %1601 = and i32 %1598, 255
  %1602 = tail call i32 @llvm.ctpop.i32(i32 %1601)
  %1603 = trunc i32 %1602 to i8
  %1604 = and i8 %1603, 1
  %1605 = xor i8 %1604, 1
  store i8 %1605, i8* %47, align 1
  %1606 = xor i32 %1597, %1595
  %1607 = xor i32 %1606, %1598
  %1608 = lshr i32 %1607, 4
  %1609 = trunc i32 %1608 to i8
  %1610 = and i8 %1609, 1
  store i8 %1610, i8* %52, align 1
  %1611 = icmp eq i32 %1598, 0
  %1612 = zext i1 %1611 to i8
  store i8 %1612, i8* %55, align 1
  %1613 = lshr i32 %1598, 31
  %1614 = trunc i32 %1613 to i8
  store i8 %1614, i8* %58, align 1
  %1615 = lshr i32 %1595, 31
  %1616 = lshr i32 %1597, 31
  %1617 = xor i32 %1616, %1615
  %1618 = xor i32 %1613, %1615
  %1619 = add nuw nsw i32 %1618, %1617
  %1620 = icmp eq i32 %1619, 2
  %1621 = zext i1 %1620 to i8
  store i8 %1621, i8* %64, align 1
  %1622 = icmp ne i8 %1614, 0
  %1623 = xor i1 %1622, %1620
  %.demorgan155 = or i1 %1611, %1623
  %.v171 = select i1 %.demorgan155, i64 20, i64 40
  %1624 = add i64 %1594, %.v171
  store i64 %1624, i64* %3, align 8
  br i1 %.demorgan155, label %block_465b17, label %block_.L_465b2b

block_465b17:                                     ; preds = %block_465b03
  store i64 4, i64* %RSI.i1599, align 8
  %1625 = load i64, i64* %RBP.i, align 8
  %1626 = add i64 %1625, -496
  store i64 %1626, i64* %RDX.i1497.pre-phi, align 8
  %1627 = add i64 %1625, -48
  %1628 = add i64 %1624, 15
  store i64 %1628, i64* %3, align 8
  %1629 = inttoptr i64 %1627 to i32*
  %1630 = load i32, i32* %1629, align 4
  %1631 = zext i32 %1630 to i64
  store i64 %1631, i64* %RDI.i1522.pre-phi, align 8
  %1632 = add i64 %1624, 10073
  %1633 = add i64 %1624, 20
  %1634 = load i64, i64* %6, align 8
  %1635 = add i64 %1634, -8
  %1636 = inttoptr i64 %1635 to i64*
  store i64 %1633, i64* %1636, align 8
  store i64 %1635, i64* %6, align 8
  store i64 %1632, i64* %3, align 8
  %call2_465b26 = tail call %struct.Memory* @sub_468270.superstring_breakchain_moves(%struct.State* nonnull %0, i64 %1632, %struct.Memory* %MEMORY.16)
  %.pre114 = load i64, i64* %3, align 8
  br label %block_.L_465b2b

block_.L_465b2b:                                  ; preds = %block_465b03, %block_465b17, %block_.L_465af5
  %1637 = phi i64 [ %1594, %block_.L_465af5 ], [ %1624, %block_465b03 ], [ %.pre114, %block_465b17 ]
  %MEMORY.19 = phi %struct.Memory* [ %MEMORY.16, %block_.L_465af5 ], [ %MEMORY.16, %block_465b03 ], [ %call2_465b26, %block_465b17 ]
  %1638 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*), align 8
  %1639 = zext i32 %1638 to i64
  store i64 %1639, i64* %RAX.i1607, align 8
  %1640 = load i32, i32* bitcast (%G_0xb8af28_type* @G_0xb8af28 to i32*), align 8
  %1641 = sub i32 %1638, %1640
  %1642 = icmp ult i32 %1638, %1640
  %1643 = zext i1 %1642 to i8
  store i8 %1643, i8* %40, align 1
  %1644 = and i32 %1641, 255
  %1645 = tail call i32 @llvm.ctpop.i32(i32 %1644)
  %1646 = trunc i32 %1645 to i8
  %1647 = and i8 %1646, 1
  %1648 = xor i8 %1647, 1
  store i8 %1648, i8* %47, align 1
  %1649 = xor i32 %1640, %1638
  %1650 = xor i32 %1649, %1641
  %1651 = lshr i32 %1650, 4
  %1652 = trunc i32 %1651 to i8
  %1653 = and i8 %1652, 1
  store i8 %1653, i8* %52, align 1
  %1654 = icmp eq i32 %1641, 0
  %1655 = zext i1 %1654 to i8
  store i8 %1655, i8* %55, align 1
  %1656 = lshr i32 %1641, 31
  %1657 = trunc i32 %1656 to i8
  store i8 %1657, i8* %58, align 1
  %1658 = lshr i32 %1638, 31
  %1659 = lshr i32 %1640, 31
  %1660 = xor i32 %1659, %1658
  %1661 = xor i32 %1656, %1658
  %1662 = add nuw nsw i32 %1661, %1660
  %1663 = icmp eq i32 %1662, 2
  %1664 = zext i1 %1663 to i8
  store i8 %1664, i8* %64, align 1
  %1665 = icmp ne i8 %1657, 0
  %1666 = xor i1 %1665, %1663
  %.demorgan156 = or i1 %1654, %1666
  %.v172 = select i1 %.demorgan156, i64 20, i64 35
  %1667 = add i64 %1637, %.v172
  store i64 %1667, i64* %3, align 8
  br i1 %.demorgan156, label %block_465b3f, label %block_.L_465b4e

block_465b3f:                                     ; preds = %block_.L_465b2b
  %1668 = load i64, i64* %RBP.i, align 8
  %1669 = add i64 %1668, -496
  store i64 %1669, i64* %RSI.i1599, align 8
  %1670 = add i64 %1668, -48
  %1671 = add i64 %1667, 10
  store i64 %1671, i64* %3, align 8
  %1672 = inttoptr i64 %1670 to i32*
  %1673 = load i32, i32* %1672, align 4
  %1674 = zext i32 %1673 to i64
  store i64 %1674, i64* %RDI.i1522.pre-phi, align 8
  %1675 = add i64 %1667, 3809
  %1676 = add i64 %1667, 15
  %1677 = load i64, i64* %6, align 8
  %1678 = add i64 %1677, -8
  %1679 = inttoptr i64 %1678 to i64*
  store i64 %1676, i64* %1679, align 8
  store i64 %1678, i64* %6, align 8
  store i64 %1675, i64* %3, align 8
  %call2_465b49 = tail call %struct.Memory* @sub_466a20.break_chain2_defense_moves(%struct.State* nonnull %0, i64 %1675, %struct.Memory* %MEMORY.19)
  %.pre115 = load i64, i64* %3, align 8
  %.pre116 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*), align 8
  br label %block_.L_465b4e

block_.L_465b4e:                                  ; preds = %block_.L_465b2b, %block_465b3f
  %1680 = phi i32 [ %1638, %block_.L_465b2b ], [ %.pre116, %block_465b3f ]
  %1681 = phi i64 [ %1667, %block_.L_465b2b ], [ %.pre115, %block_465b3f ]
  %MEMORY.20 = phi %struct.Memory* [ %MEMORY.19, %block_.L_465b2b ], [ %call2_465b49, %block_465b3f ]
  %1682 = zext i32 %1680 to i64
  store i64 %1682, i64* %RAX.i1607, align 8
  %1683 = load i32, i32* bitcast (%G_0xb060b8_type* @G_0xb060b8 to i32*), align 8
  %1684 = sub i32 %1680, %1683
  %1685 = icmp ult i32 %1680, %1683
  %1686 = zext i1 %1685 to i8
  store i8 %1686, i8* %40, align 1
  %1687 = and i32 %1684, 255
  %1688 = tail call i32 @llvm.ctpop.i32(i32 %1687)
  %1689 = trunc i32 %1688 to i8
  %1690 = and i8 %1689, 1
  %1691 = xor i8 %1690, 1
  store i8 %1691, i8* %47, align 1
  %1692 = xor i32 %1683, %1680
  %1693 = xor i32 %1692, %1684
  %1694 = lshr i32 %1693, 4
  %1695 = trunc i32 %1694 to i8
  %1696 = and i8 %1695, 1
  store i8 %1696, i8* %52, align 1
  %1697 = icmp eq i32 %1684, 0
  %1698 = zext i1 %1697 to i8
  store i8 %1698, i8* %55, align 1
  %1699 = lshr i32 %1684, 31
  %1700 = trunc i32 %1699 to i8
  store i8 %1700, i8* %58, align 1
  %1701 = lshr i32 %1680, 31
  %1702 = lshr i32 %1683, 31
  %1703 = xor i32 %1702, %1701
  %1704 = xor i32 %1699, %1701
  %1705 = add nuw nsw i32 %1704, %1703
  %1706 = icmp eq i32 %1705, 2
  %1707 = zext i1 %1706 to i8
  store i8 %1707, i8* %64, align 1
  %1708 = icmp ne i8 %1700, 0
  %1709 = xor i1 %1708, %1706
  %.demorgan157 = or i1 %1697, %1709
  %.v173 = select i1 %.demorgan157, i64 20, i64 58
  %1710 = add i64 %1681, %.v173
  store i64 %1710, i64* %3, align 8
  br i1 %.demorgan157, label %block_465b62, label %block_.L_465b88

block_465b62:                                     ; preds = %block_.L_465b4e
  %1711 = load i64, i64* %RBP.i, align 8
  %1712 = add i64 %1711, -496
  store i64 %1712, i64* %RDX.i1497.pre-phi, align 8
  %1713 = add i64 %1711, -92
  store i64 %1713, i64* %RSI.i1599, align 8
  %1714 = add i64 %1711, -48
  %1715 = add i64 %1710, 14
  store i64 %1715, i64* %3, align 8
  %1716 = inttoptr i64 %1714 to i32*
  %1717 = load i32, i32* %1716, align 4
  %1718 = zext i32 %1717 to i64
  store i64 %1718, i64* %RDI.i1522.pre-phi, align 8
  %1719 = add i64 %1710, 10478
  %1720 = add i64 %1710, 19
  %1721 = load i64, i64* %6, align 8
  %1722 = add i64 %1721, -8
  %1723 = inttoptr i64 %1722 to i64*
  store i64 %1720, i64* %1723, align 8
  store i64 %1722, i64* %6, align 8
  store i64 %1719, i64* %3, align 8
  %call2_465b70 = tail call %struct.Memory* @sub_468450.special_rescue5_moves(%struct.State* nonnull %0, i64 %1719, %struct.Memory* %MEMORY.20)
  %1724 = load i64, i64* %RBP.i, align 8
  %1725 = add i64 %1724, -496
  %1726 = load i64, i64* %3, align 8
  store i64 %1725, i64* %RDX.i1497.pre-phi, align 8
  %1727 = add i64 %1724, -92
  store i64 %1727, i64* %RSI.i1599, align 8
  %1728 = add i64 %1724, -48
  %1729 = add i64 %1726, 14
  store i64 %1729, i64* %3, align 8
  %1730 = inttoptr i64 %1728 to i32*
  %1731 = load i32, i32* %1730, align 4
  %1732 = zext i32 %1731 to i64
  store i64 %1732, i64* %RDI.i1522.pre-phi, align 8
  %1733 = add i64 %1726, 11611
  %1734 = add i64 %1726, 19
  %1735 = load i64, i64* %6, align 8
  %1736 = add i64 %1735, -8
  %1737 = inttoptr i64 %1736 to i64*
  store i64 %1734, i64* %1737, align 8
  store i64 %1736, i64* %6, align 8
  store i64 %1733, i64* %3, align 8
  %call2_465b83 = tail call %struct.Memory* @sub_4688d0.special_rescue6_moves(%struct.State* nonnull %0, i64 %1733, %struct.Memory* %call2_465b70)
  %.pre117 = load i64, i64* %3, align 8
  br label %block_.L_465b88

block_.L_465b88:                                  ; preds = %block_.L_465b4e, %block_465b62
  %1738 = phi i64 [ %1710, %block_.L_465b4e ], [ %.pre117, %block_465b62 ]
  %MEMORY.21 = phi %struct.Memory* [ %MEMORY.20, %block_.L_465b4e ], [ %call2_465b83, %block_465b62 ]
  %1739 = load i64, i64* %RBP.i, align 8
  %1740 = add i64 %1739, -496
  store i64 %1740, i64* %RSI.i1599, align 8
  %1741 = add i64 %1739, -48
  %1742 = add i64 %1738, 10
  store i64 %1742, i64* %3, align 8
  %1743 = inttoptr i64 %1741 to i32*
  %1744 = load i32, i32* %1743, align 4
  %1745 = zext i32 %1744 to i64
  store i64 %1745, i64* %RDI.i1522.pre-phi, align 8
  %1746 = add i64 %1739, -72
  %1747 = add i64 %1738, 13
  store i64 %1747, i64* %3, align 8
  %1748 = inttoptr i64 %1746 to i32*
  %1749 = load i32, i32* %1748, align 4
  %1750 = zext i32 %1749 to i64
  store i64 %1750, i64* %RDX.i1497.pre-phi, align 8
  %1751 = add i64 %1739, -520
  %1752 = add i64 %1738, 20
  store i64 %1752, i64* %3, align 8
  %1753 = inttoptr i64 %1751 to i64*
  %1754 = load i64, i64* %1753, align 8
  store i64 %1754, i64* %RCX.i1583, align 8
  %1755 = add i64 %1739, -500
  %1756 = add i64 %1738, 27
  store i64 %1756, i64* %3, align 8
  %1757 = inttoptr i64 %1755 to i32*
  %1758 = load i32, i32* %1757, align 4
  %1759 = zext i32 %1758 to i64
  store i64 %1759, i64* %R8.i1605, align 8
  %1760 = add i64 %1738, -12024
  %1761 = add i64 %1738, 32
  %1762 = load i64, i64* %6, align 8
  %1763 = add i64 %1762, -8
  %1764 = inttoptr i64 %1763 to i64*
  store i64 %1761, i64* %1764, align 8
  store i64 %1763, i64* %6, align 8
  store i64 %1760, i64* %3, align 8
  %call2_465ba3 = tail call %struct.Memory* @sub_462c90.order_moves(%struct.State* nonnull %0, i64 %1760, %struct.Memory* %MEMORY.21)
  %1765 = load i64, i64* %RBP.i, align 8
  %1766 = add i64 %1765, -500
  %1767 = load i64, i64* %3, align 8
  %1768 = add i64 %1767, 6
  store i64 %1768, i64* %3, align 8
  %1769 = inttoptr i64 %1766 to i32*
  %1770 = load i32, i32* %1769, align 4
  %1771 = zext i32 %1770 to i64
  store i64 %1771, i64* %RDX.i1497.pre-phi, align 8
  %1772 = add i64 %1765, -512
  %1773 = add i64 %1767, 12
  store i64 %1773, i64* %3, align 8
  %1774 = inttoptr i64 %1772 to i32*
  store i32 %1770, i32* %1774, align 4
  %.pre118 = load i64, i64* %3, align 8
  br label %block_.L_465bb4

block_.L_465bb4:                                  ; preds = %block_.L_465df5, %block_.L_465b88
  %1775 = phi i64 [ %.pre118, %block_.L_465b88 ], [ %2371, %block_.L_465df5 ]
  %1776 = load i64, i64* %RBP.i, align 8
  %1777 = add i64 %1776, -512
  %1778 = add i64 %1775, 6
  store i64 %1778, i64* %3, align 8
  %1779 = inttoptr i64 %1777 to i32*
  %1780 = load i32, i32* %1779, align 4
  %1781 = zext i32 %1780 to i64
  store i64 %1781, i64* %RAX.i1607, align 8
  %1782 = add i64 %1776, -96
  %1783 = add i64 %1775, 9
  store i64 %1783, i64* %3, align 8
  %1784 = inttoptr i64 %1782 to i32*
  %1785 = load i32, i32* %1784, align 4
  %1786 = sub i32 %1780, %1785
  %1787 = icmp ult i32 %1780, %1785
  %1788 = zext i1 %1787 to i8
  store i8 %1788, i8* %40, align 1
  %1789 = and i32 %1786, 255
  %1790 = tail call i32 @llvm.ctpop.i32(i32 %1789)
  %1791 = trunc i32 %1790 to i8
  %1792 = and i8 %1791, 1
  %1793 = xor i8 %1792, 1
  store i8 %1793, i8* %47, align 1
  %1794 = xor i32 %1785, %1780
  %1795 = xor i32 %1794, %1786
  %1796 = lshr i32 %1795, 4
  %1797 = trunc i32 %1796 to i8
  %1798 = and i8 %1797, 1
  store i8 %1798, i8* %52, align 1
  %1799 = icmp eq i32 %1786, 0
  %1800 = zext i1 %1799 to i8
  store i8 %1800, i8* %55, align 1
  %1801 = lshr i32 %1786, 31
  %1802 = trunc i32 %1801 to i8
  store i8 %1802, i8* %58, align 1
  %1803 = lshr i32 %1780, 31
  %1804 = lshr i32 %1785, 31
  %1805 = xor i32 %1804, %1803
  %1806 = xor i32 %1801, %1803
  %1807 = add nuw nsw i32 %1806, %1805
  %1808 = icmp eq i32 %1807, 2
  %1809 = zext i1 %1808 to i8
  store i8 %1809, i8* %64, align 1
  %1810 = icmp ne i8 %1802, 0
  %1811 = xor i1 %1810, %1808
  %.v174 = select i1 %1811, i64 15, i64 602
  %1812 = add i64 %1775, %.v174
  store i64 %1812, i64* %3, align 8
  br i1 %1811, label %block_465bc3, label %block_.L_465e0e

block_465bc3:                                     ; preds = %block_.L_465bb4
  store i64 0, i64* %RAX.i1607, align 8
  store i8 0, i8* %40, align 1
  store i8 1, i8* %47, align 1
  store i8 1, i8* %55, align 1
  store i8 0, i8* %58, align 1
  store i8 0, i8* %64, align 1
  store i8 0, i8* %52, align 1
  store i8 0, i8* %CL.i1289, align 1
  %1813 = add i64 %1812, 11
  store i64 %1813, i64* %3, align 8
  %1814 = load i32, i32* %1779, align 4
  %1815 = sext i32 %1814 to i64
  store i64 %1815, i64* %RDX.i1497.pre-phi, align 8
  %1816 = shl nsw i64 %1815, 2
  %1817 = add i64 %1776, -496
  %1818 = add i64 %1817, %1816
  %1819 = add i64 %1812, 18
  store i64 %1819, i64* %3, align 8
  %1820 = inttoptr i64 %1818 to i32*
  %1821 = load i32, i32* %1820, align 4
  %1822 = zext i32 %1821 to i64
  store i64 %1822, i64* %RAX.i1607, align 8
  %1823 = add i64 %1776, -76
  %1824 = add i64 %1812, 21
  store i64 %1824, i64* %3, align 8
  %1825 = inttoptr i64 %1823 to i32*
  store i32 %1821, i32* %1825, align 4
  %1826 = load i64, i64* %RBP.i, align 8
  %1827 = add i64 %1826, -76
  %1828 = load i64, i64* %3, align 8
  %1829 = add i64 %1828, 3
  store i64 %1829, i64* %3, align 8
  %1830 = inttoptr i64 %1827 to i32*
  %1831 = load i32, i32* %1830, align 4
  %1832 = zext i32 %1831 to i64
  store i64 %1832, i64* %RDI.i1522.pre-phi, align 8
  %1833 = add i64 %1826, -68
  %1834 = add i64 %1828, 6
  store i64 %1834, i64* %3, align 8
  %1835 = inttoptr i64 %1833 to i32*
  %1836 = load i32, i32* %1835, align 4
  %1837 = zext i32 %1836 to i64
  store i64 %1837, i64* %RSI.i1599, align 8
  %1838 = add i64 %1826, -48
  %1839 = add i64 %1828, 9
  store i64 %1839, i64* %3, align 8
  %1840 = inttoptr i64 %1838 to i32*
  %1841 = load i32, i32* %1840, align 4
  %1842 = zext i32 %1841 to i64
  store i64 %1842, i64* %RAX.i1607, align 8
  %1843 = add i64 %1826, -60
  %1844 = add i64 %1828, 13
  store i64 %1844, i64* %3, align 8
  %1845 = inttoptr i64 %1843 to i32*
  %1846 = load i32, i32* %1845, align 4
  %1847 = zext i32 %1846 to i64
  store i64 %1847, i64* %R8.i1605, align 8
  %1848 = add i64 %1826, -64
  %1849 = add i64 %1828, 17
  store i64 %1849, i64* %3, align 8
  %1850 = inttoptr i64 %1848 to i32*
  %1851 = load i32, i32* %1850, align 4
  %1852 = zext i32 %1851 to i64
  store i64 %1852, i64* %743, align 8
  %1853 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*), align 8
  %1854 = zext i32 %1853 to i64
  store i64 %1854, i64* %745, align 8
  %1855 = load i32, i32* bitcast (%G_0xb8b850_type* @G_0xb8b850 to i32*), align 8
  %1856 = sub i32 %1853, %1855
  %1857 = icmp ult i32 %1853, %1855
  %1858 = zext i1 %1857 to i8
  store i8 %1858, i8* %40, align 1
  %1859 = and i32 %1856, 255
  %1860 = tail call i32 @llvm.ctpop.i32(i32 %1859)
  %1861 = trunc i32 %1860 to i8
  %1862 = and i8 %1861, 1
  %1863 = xor i8 %1862, 1
  store i8 %1863, i8* %47, align 1
  %1864 = xor i32 %1855, %1853
  %1865 = xor i32 %1864, %1856
  %1866 = lshr i32 %1865, 4
  %1867 = trunc i32 %1866 to i8
  %1868 = and i8 %1867, 1
  store i8 %1868, i8* %52, align 1
  %1869 = icmp eq i32 %1856, 0
  %1870 = zext i1 %1869 to i8
  store i8 %1870, i8* %55, align 1
  %1871 = lshr i32 %1856, 31
  %1872 = trunc i32 %1871 to i8
  store i8 %1872, i8* %58, align 1
  %1873 = lshr i32 %1853, 31
  %1874 = lshr i32 %1855, 31
  %1875 = xor i32 %1874, %1873
  %1876 = xor i32 %1871, %1873
  %1877 = add nuw nsw i32 %1876, %1875
  %1878 = icmp eq i32 %1877, 2
  %1879 = zext i1 %1878 to i8
  store i8 %1879, i8* %64, align 1
  %1880 = add i64 %1826, -760
  %1881 = add i64 %1828, 40
  store i64 %1881, i64* %3, align 8
  %1882 = inttoptr i64 %1880 to i32*
  store i32 %1851, i32* %1882, align 4
  %1883 = load i64, i64* %RBP.i, align 8
  %1884 = add i64 %1883, -764
  %1885 = load i32, i32* %EDI.i1602, align 4
  %1886 = load i64, i64* %3, align 8
  %1887 = add i64 %1886, 6
  store i64 %1887, i64* %3, align 8
  %1888 = inttoptr i64 %1884 to i32*
  store i32 %1885, i32* %1888, align 4
  %1889 = load i64, i64* %RBP.i, align 8
  %1890 = add i64 %1889, -768
  %1891 = load i32, i32* %ESI.i1250, align 4
  %1892 = load i64, i64* %3, align 8
  %1893 = add i64 %1892, 6
  store i64 %1893, i64* %3, align 8
  %1894 = inttoptr i64 %1890 to i32*
  store i32 %1891, i32* %1894, align 4
  %1895 = load i64, i64* %RBP.i, align 8
  %1896 = add i64 %1895, -772
  %1897 = load i32, i32* %EAX.i1559, align 4
  %1898 = load i64, i64* %3, align 8
  %1899 = add i64 %1898, 6
  store i64 %1899, i64* %3, align 8
  %1900 = inttoptr i64 %1896 to i32*
  store i32 %1897, i32* %1900, align 4
  %1901 = load i64, i64* %RBP.i, align 8
  %1902 = add i64 %1901, -776
  %1903 = load i32, i32* %R8D.i1350, align 4
  %1904 = load i64, i64* %3, align 8
  %1905 = add i64 %1904, 7
  store i64 %1905, i64* %3, align 8
  %1906 = inttoptr i64 %1902 to i32*
  store i32 %1903, i32* %1906, align 4
  %1907 = load i64, i64* %RBP.i, align 8
  %1908 = add i64 %1907, -777
  %1909 = load i8, i8* %CL.i1289, align 1
  %1910 = load i64, i64* %3, align 8
  %1911 = add i64 %1910, 6
  store i64 %1911, i64* %3, align 8
  %1912 = inttoptr i64 %1908 to i8*
  store i8 %1909, i8* %1912, align 1
  %1913 = load i64, i64* %3, align 8
  %1914 = add i64 %1913, 22
  %1915 = add i64 %1913, 6
  %1916 = load i8, i8* %55, align 1
  %1917 = icmp eq i8 %1916, 0
  %1918 = load i8, i8* %58, align 1
  %1919 = icmp ne i8 %1918, 0
  %1920 = load i8, i8* %64, align 1
  %1921 = icmp ne i8 %1920, 0
  %1922 = xor i1 %1919, %1921
  %1923 = xor i1 %1922, true
  %1924 = and i1 %1917, %1923
  %1925 = select i1 %1924, i64 %1914, i64 %1915
  store i64 %1925, i64* %3, align 8
  br i1 %1924, label %block_.L_465c35, label %block_465c25

block_465c25:                                     ; preds = %block_465bc3
  %1926 = load i64, i64* %RBP.i, align 8
  %1927 = add i64 %1926, -508
  %1928 = add i64 %1925, 7
  store i64 %1928, i64* %3, align 8
  %1929 = inttoptr i64 %1927 to i32*
  %1930 = load i32, i32* %1929, align 4
  store i8 0, i8* %40, align 1
  %1931 = and i32 %1930, 255
  %1932 = tail call i32 @llvm.ctpop.i32(i32 %1931)
  %1933 = trunc i32 %1932 to i8
  %1934 = and i8 %1933, 1
  %1935 = xor i8 %1934, 1
  store i8 %1935, i8* %47, align 1
  store i8 0, i8* %52, align 1
  %1936 = icmp eq i32 %1930, 0
  %1937 = zext i1 %1936 to i8
  store i8 %1937, i8* %55, align 1
  %1938 = lshr i32 %1930, 31
  %1939 = trunc i32 %1938 to i8
  store i8 %1939, i8* %58, align 1
  store i8 0, i8* %64, align 1
  store i8 %1937, i8* %AL.i1288, align 1
  %1940 = add i64 %1926, -777
  %1941 = add i64 %1925, 16
  store i64 %1941, i64* %3, align 8
  %1942 = inttoptr i64 %1940 to i8*
  store i8 %1937, i8* %1942, align 1
  %.pre138 = load i64, i64* %3, align 8
  br label %block_.L_465c35

block_.L_465c35:                                  ; preds = %block_465c25, %block_465bc3
  %1943 = phi i64 [ %.pre138, %block_465c25 ], [ %1914, %block_465bc3 ]
  %1944 = load i64, i64* %RBP.i, align 8
  %1945 = add i64 %1944, -777
  %1946 = add i64 %1943, 6
  store i64 %1946, i64* %3, align 8
  %1947 = inttoptr i64 %1945 to i8*
  %1948 = load i8, i8* %1947, align 1
  store i64 ptrtoint (%G__0x57fccd_type* @G__0x57fccd to i64), i64* %RDX.i1497.pre-phi, align 8
  %1949 = add i64 %1944, -544
  store i64 %1949, i64* %RCX.i1583, align 8
  %1950 = add i64 %1944, -548
  store i64 %1950, i64* %RSI.i1599, align 8
  %1951 = add i64 %1944, -552
  store i64 %1951, i64* %RDI.i1522.pre-phi, align 8
  %1952 = and i8 %1948, 1
  store i8 %1952, i8* %AL.i1288, align 1
  store i8 0, i8* %40, align 1
  %1953 = zext i8 %1952 to i32
  %1954 = tail call i32 @llvm.ctpop.i32(i32 %1953)
  %1955 = trunc i32 %1954 to i8
  %1956 = xor i8 %1955, 1
  store i8 %1956, i8* %47, align 1
  %1957 = xor i8 %1952, 1
  store i8 %1957, i8* %55, align 1
  store i8 0, i8* %58, align 1
  store i8 0, i8* %64, align 1
  store i8 0, i8* %52, align 1
  %1958 = zext i8 %1952 to i64
  store i64 %1958, i64* %R8.i1605, align 8
  %1959 = add i64 %1944, -764
  %1960 = add i64 %1943, 50
  store i64 %1960, i64* %3, align 8
  %1961 = inttoptr i64 %1959 to i32*
  %1962 = load i32, i32* %1961, align 4
  %1963 = zext i32 %1962 to i64
  store i64 %1963, i64* %743, align 8
  %1964 = add i64 %1944, -792
  %1965 = add i64 %1943, 57
  store i64 %1965, i64* %3, align 8
  %1966 = inttoptr i64 %1964 to i64*
  store i64 %1951, i64* %1966, align 8
  %1967 = load i32, i32* %R9D.i1263, align 4
  %1968 = zext i32 %1967 to i64
  %1969 = load i64, i64* %3, align 8
  store i64 %1968, i64* %RDI.i1522.pre-phi, align 8
  %1970 = load i64, i64* %RBP.i, align 8
  %1971 = add i64 %1970, -768
  %1972 = add i64 %1969, 10
  store i64 %1972, i64* %3, align 8
  %1973 = inttoptr i64 %1971 to i32*
  %1974 = load i32, i32* %1973, align 4
  %1975 = zext i32 %1974 to i64
  store i64 %1975, i64* %745, align 8
  %1976 = add i64 %1970, -800
  %1977 = load i64, i64* %RSI.i1599, align 8
  %1978 = add i64 %1969, 17
  store i64 %1978, i64* %3, align 8
  %1979 = inttoptr i64 %1976 to i64*
  store i64 %1977, i64* %1979, align 8
  %1980 = load i32, i32* %R10D.i1261, align 4
  %1981 = zext i32 %1980 to i64
  %1982 = load i64, i64* %3, align 8
  store i64 %1981, i64* %RSI.i1599, align 8
  %1983 = load i64, i64* %RBP.i, align 8
  %1984 = add i64 %1983, -772
  %1985 = add i64 %1982, 10
  store i64 %1985, i64* %3, align 8
  %1986 = inttoptr i64 %1984 to i32*
  %1987 = load i32, i32* %1986, align 4
  %1988 = zext i32 %1987 to i64
  store i64 %1988, i64* %747, align 8
  %1989 = add i64 %1983, -808
  %1990 = load i64, i64* %RCX.i1583, align 8
  %1991 = add i64 %1982, 17
  store i64 %1991, i64* %3, align 8
  %1992 = inttoptr i64 %1989 to i64*
  store i64 %1990, i64* %1992, align 8
  %1993 = load i32, i32* %R11D.i1193, align 4
  %1994 = zext i32 %1993 to i64
  %1995 = load i64, i64* %3, align 8
  store i64 %1994, i64* %RCX.i1583, align 8
  %1996 = load i64, i64* %RBP.i, align 8
  %1997 = add i64 %1996, -776
  %1998 = add i64 %1995, 9
  store i64 %1998, i64* %3, align 8
  %1999 = inttoptr i64 %1997 to i32*
  %2000 = load i32, i32* %1999, align 4
  %2001 = zext i32 %2000 to i64
  store i64 %2001, i64* %RBX.i1611, align 8
  %2002 = add i64 %1996, -812
  %2003 = load i32, i32* %R8D.i1350, align 4
  %2004 = add i64 %1995, 16
  store i64 %2004, i64* %3, align 8
  %2005 = inttoptr i64 %2002 to i32*
  store i32 %2003, i32* %2005, align 4
  %2006 = load i32, i32* %EBX.i1178, align 4
  %2007 = zext i32 %2006 to i64
  %2008 = load i64, i64* %3, align 8
  store i64 %2007, i64* %R8.i1605, align 8
  %2009 = load i64, i64* %RBP.i, align 8
  %2010 = add i64 %2009, -760
  %2011 = add i64 %2008, 10
  store i64 %2011, i64* %3, align 8
  %2012 = inttoptr i64 %2010 to i32*
  %2013 = load i32, i32* %2012, align 4
  %2014 = zext i32 %2013 to i64
  store i64 %2014, i64* %743, align 8
  %2015 = add i64 %2009, -808
  %2016 = add i64 %2008, 17
  store i64 %2016, i64* %3, align 8
  %2017 = inttoptr i64 %2015 to i64*
  %2018 = load i64, i64* %2017, align 8
  store i64 %2018, i64* %R14.i1617, align 8
  %2019 = load i64*, i64** %748, align 8
  %2020 = add i64 %2008, 21
  store i64 %2020, i64* %3, align 8
  store i64 %2018, i64* %2019, align 8
  %2021 = load i64, i64* %RBP.i, align 8
  %2022 = add i64 %2021, -800
  %2023 = load i64, i64* %3, align 8
  %2024 = add i64 %2023, 7
  store i64 %2024, i64* %3, align 8
  %2025 = inttoptr i64 %2022 to i64*
  %2026 = load i64, i64* %2025, align 8
  store i64 %2026, i64* %R15.i1460, align 8
  %2027 = load i64, i64* %6, align 8
  %2028 = add i64 %2027, 8
  %2029 = add i64 %2023, 12
  store i64 %2029, i64* %3, align 8
  %2030 = inttoptr i64 %2028 to i64*
  store i64 %2026, i64* %2030, align 8
  %2031 = load i64, i64* %RBP.i, align 8
  %2032 = add i64 %2031, -792
  %2033 = load i64, i64* %3, align 8
  %2034 = add i64 %2033, 7
  store i64 %2034, i64* %3, align 8
  %2035 = inttoptr i64 %2032 to i64*
  %2036 = load i64, i64* %2035, align 8
  store i64 %2036, i64* %R12.i1613, align 8
  %2037 = load i64, i64* %6, align 8
  %2038 = add i64 %2037, 16
  %2039 = add i64 %2033, 12
  store i64 %2039, i64* %3, align 8
  %2040 = inttoptr i64 %2038 to i64*
  store i64 %2036, i64* %2040, align 8
  %2041 = load i64, i64* %RBP.i, align 8
  %2042 = add i64 %2041, -812
  %2043 = load i64, i64* %3, align 8
  %2044 = add i64 %2043, 7
  store i64 %2044, i64* %3, align 8
  %2045 = inttoptr i64 %2042 to i32*
  %2046 = load i32, i32* %2045, align 4
  %2047 = zext i32 %2046 to i64
  store i64 %2047, i64* %R13.i1615, align 8
  %2048 = load i64, i64* %6, align 8
  %2049 = add i64 %2048, 24
  %2050 = add i64 %2043, 12
  store i64 %2050, i64* %3, align 8
  %2051 = inttoptr i64 %2049 to i32*
  store i32 %2046, i32* %2051, align 4
  %2052 = load i64, i64* %3, align 8
  %2053 = add i64 %2052, -356073
  %2054 = add i64 %2052, 5
  %2055 = load i64, i64* %6, align 8
  %2056 = add i64 %2055, -8
  %2057 = inttoptr i64 %2056 to i64*
  store i64 %2054, i64* %2057, align 8
  store i64 %2056, i64* %6, align 8
  store i64 %2053, i64* %3, align 8
  %call2_465cd9 = tail call %struct.Memory* @sub_40edf0.komaster_trymove(%struct.State* nonnull %0, i64 %2053, %struct.Memory* %call2_465ba3)
  %2058 = load i32, i32* %EAX.i1559, align 4
  %2059 = load i64, i64* %3, align 8
  store i8 0, i8* %40, align 1
  %2060 = and i32 %2058, 255
  %2061 = tail call i32 @llvm.ctpop.i32(i32 %2060)
  %2062 = trunc i32 %2061 to i8
  %2063 = and i8 %2062, 1
  %2064 = xor i8 %2063, 1
  store i8 %2064, i8* %47, align 1
  store i8 0, i8* %52, align 1
  %2065 = icmp eq i32 %2058, 0
  %2066 = zext i1 %2065 to i8
  store i8 %2066, i8* %55, align 1
  %2067 = lshr i32 %2058, 31
  %2068 = trunc i32 %2067 to i8
  store i8 %2068, i8* %58, align 1
  store i8 0, i8* %64, align 1
  %.v199 = select i1 %2065, i64 279, i64 9
  %2069 = add i64 %2059, %.v199
  store i64 %2069, i64* %3, align 8
  br i1 %2065, label %block_.L_465df5, label %block_465ce7

block_465ce7:                                     ; preds = %block_.L_465c35
  %2070 = load i64, i64* %RBP.i, align 8
  %2071 = add i64 %2070, -552
  %2072 = add i64 %2069, 7
  store i64 %2072, i64* %3, align 8
  %2073 = inttoptr i64 %2071 to i32*
  %2074 = load i32, i32* %2073, align 4
  %2075 = icmp eq i32 %2074, 0
  %.v200 = select i1 %2075, i64 13, i64 208
  %2076 = add i64 %2069, %.v200
  store i64 0, i64* %RAX.i1607, align 8
  store i8 0, i8* %40, align 1
  store i8 1, i8* %47, align 1
  store i8 1, i8* %55, align 1
  store i8 0, i8* %58, align 1
  store i8 0, i8* %64, align 1
  store i8 0, i8* %52, align 1
  store i64 0, i64* %RSI.i1599, align 8
  %2077 = add i64 %2070, -48
  %2078 = add i64 %2076, 7
  store i64 %2078, i64* %3, align 8
  %2079 = inttoptr i64 %2077 to i32*
  %2080 = load i32, i32* %2079, align 4
  %2081 = zext i32 %2080 to i64
  store i64 %2081, i64* %RDI.i1522.pre-phi, align 8
  %2082 = add i64 %2070, -544
  %2083 = add i64 %2076, 13
  store i64 %2083, i64* %3, align 8
  %2084 = inttoptr i64 %2082 to i32*
  %2085 = load i32, i32* %2084, align 4
  %2086 = zext i32 %2085 to i64
  store i64 %2086, i64* %RDX.i1497.pre-phi, align 8
  %2087 = add i64 %2070, -548
  %2088 = add i64 %2076, 19
  store i64 %2088, i64* %3, align 8
  %2089 = inttoptr i64 %2087 to i32*
  %2090 = load i32, i32* %2089, align 4
  %2091 = zext i32 %2090 to i64
  store i64 %2091, i64* %RCX.i1583, align 8
  br i1 %2075, label %block_465cf4, label %block_.L_465db7

block_465cf4:                                     ; preds = %block_465ce7
  %2092 = add i64 %2076, -32788
  %2093 = add i64 %2076, 24
  %2094 = load i64, i64* %6, align 8
  %2095 = add i64 %2094, -8
  %2096 = inttoptr i64 %2095 to i64*
  store i64 %2093, i64* %2096, align 8
  store i64 %2095, i64* %6, align 8
  store i64 %2092, i64* %3, align 8
  %call2_465d07 = tail call %struct.Memory* @sub_45dce0.do_attack(%struct.State* nonnull %0, i64 %2092, %struct.Memory* %call2_465ba3)
  %2097 = load i64, i64* %RBP.i, align 8
  %2098 = add i64 %2097, -556
  %2099 = load i32, i32* %EAX.i1559, align 4
  %2100 = load i64, i64* %3, align 8
  %2101 = add i64 %2100, 6
  store i64 %2101, i64* %3, align 8
  %2102 = inttoptr i64 %2098 to i32*
  store i32 %2099, i32* %2102, align 4
  %2103 = load i64, i64* %3, align 8
  %2104 = add i64 %2103, -360370
  %2105 = add i64 %2103, 5
  %2106 = load i64, i64* %6, align 8
  %2107 = add i64 %2106, -8
  %2108 = inttoptr i64 %2107 to i64*
  store i64 %2105, i64* %2108, align 8
  store i64 %2107, i64* %6, align 8
  store i64 %2104, i64* %3, align 8
  %call2_465d12 = tail call %struct.Memory* @sub_40dd60.popgo(%struct.State* nonnull %0, i64 %2104, %struct.Memory* %call2_465ba3)
  %2109 = load i64, i64* %RBP.i, align 8
  %2110 = add i64 %2109, -556
  %2111 = load i64, i64* %3, align 8
  %2112 = add i64 %2111, 7
  store i64 %2112, i64* %3, align 8
  %2113 = inttoptr i64 %2110 to i32*
  %2114 = load i32, i32* %2113, align 4
  store i8 0, i8* %40, align 1
  %2115 = and i32 %2114, 255
  %2116 = tail call i32 @llvm.ctpop.i32(i32 %2115)
  %2117 = trunc i32 %2116 to i8
  %2118 = and i8 %2117, 1
  %2119 = xor i8 %2118, 1
  store i8 %2119, i8* %47, align 1
  store i8 0, i8* %52, align 1
  %2120 = icmp eq i32 %2114, 0
  %2121 = zext i1 %2120 to i8
  store i8 %2121, i8* %55, align 1
  %2122 = lshr i32 %2114, 31
  %2123 = trunc i32 %2122 to i8
  store i8 %2123, i8* %58, align 1
  store i8 0, i8* %64, align 1
  %.v202 = select i1 %2120, i64 13, i64 96
  %2124 = add i64 %2111, %.v202
  store i64 %2124, i64* %3, align 8
  br i1 %2120, label %block_465d24, label %block_.L_465d77

block_465d24:                                     ; preds = %block_465cf4
  %2125 = add i64 %2109, -56
  %2126 = add i64 %2124, 5
  store i64 %2126, i64* %3, align 8
  %2127 = inttoptr i64 %2125 to i64*
  %2128 = load i64, i64* %2127, align 8
  store i8 0, i8* %40, align 1
  %2129 = trunc i64 %2128 to i32
  %2130 = and i32 %2129, 255
  %2131 = tail call i32 @llvm.ctpop.i32(i32 %2130)
  %2132 = trunc i32 %2131 to i8
  %2133 = and i8 %2132, 1
  %2134 = xor i8 %2133, 1
  store i8 %2134, i8* %47, align 1
  store i8 0, i8* %52, align 1
  %2135 = icmp eq i64 %2128, 0
  %2136 = zext i1 %2135 to i8
  store i8 %2136, i8* %55, align 1
  %2137 = lshr i64 %2128, 63
  %2138 = trunc i64 %2137 to i8
  store i8 %2138, i8* %58, align 1
  store i8 0, i8* %64, align 1
  %.v204 = select i1 %2135, i64 20, i64 11
  %2139 = add i64 %2124, %.v204
  store i64 %2139, i64* %3, align 8
  br i1 %2135, label %block_.L_465d38, label %block_465d2f

block_465d2f:                                     ; preds = %block_465d24
  %2140 = add i64 %2109, -76
  %2141 = add i64 %2139, 3
  store i64 %2141, i64* %3, align 8
  %2142 = inttoptr i64 %2140 to i32*
  %2143 = load i32, i32* %2142, align 4
  %2144 = zext i32 %2143 to i64
  store i64 %2144, i64* %RAX.i1607, align 8
  %2145 = add i64 %2139, 7
  store i64 %2145, i64* %3, align 8
  %2146 = load i64, i64* %2127, align 8
  store i64 %2146, i64* %RCX.i1583, align 8
  %2147 = add i64 %2139, 9
  store i64 %2147, i64* %3, align 8
  %2148 = inttoptr i64 %2146 to i32*
  store i32 %2143, i32* %2148, align 4
  %.pre139 = load i64, i64* %3, align 8
  br label %block_.L_465d38

block_.L_465d38:                                  ; preds = %block_465d2f, %block_465d24
  %2149 = phi i64 [ %.pre139, %block_465d2f ], [ %2139, %block_465d24 ]
  %2150 = load i64, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*), align 8
  store i8 0, i8* %40, align 1
  %2151 = trunc i64 %2150 to i32
  %2152 = and i32 %2151, 255
  %2153 = tail call i32 @llvm.ctpop.i32(i32 %2152)
  %2154 = trunc i32 %2153 to i8
  %2155 = and i8 %2154, 1
  %2156 = xor i8 %2155, 1
  store i8 %2156, i8* %47, align 1
  store i8 0, i8* %52, align 1
  %2157 = icmp eq i64 %2150, 0
  %2158 = zext i1 %2157 to i8
  store i8 %2158, i8* %55, align 1
  %2159 = lshr i64 %2150, 63
  %2160 = trunc i64 %2159 to i8
  store i8 %2160, i8* %58, align 1
  store i8 0, i8* %64, align 1
  %.v205 = select i1 %2157, i64 51, i64 15
  %2161 = add i64 %2149, %.v205
  store i64 %2161, i64* %3, align 8
  br i1 %2157, label %block_.L_465d6b, label %block_465d47

block_465d47:                                     ; preds = %block_.L_465d38
  store i64 5, i64* %RCX.i1583, align 8
  store i64 ptrtoint (%G__0x57fc87_type* @G__0x57fc87 to i64), i64* %R8.i1605, align 8
  %2162 = load i64, i64* %RBP.i, align 8
  %2163 = add i64 %2162, -520
  %2164 = add i64 %2161, 22
  store i64 %2164, i64* %3, align 8
  %2165 = inttoptr i64 %2163 to i64*
  %2166 = load i64, i64* %2165, align 8
  store i64 %2166, i64* %RDI.i1522.pre-phi, align 8
  %2167 = add i64 %2162, -524
  %2168 = add i64 %2161, 28
  store i64 %2168, i64* %3, align 8
  %2169 = inttoptr i64 %2167 to i32*
  %2170 = load i32, i32* %2169, align 4
  %2171 = zext i32 %2170 to i64
  store i64 %2171, i64* %RSI.i1599, align 8
  %2172 = add i64 %2162, -76
  %2173 = add i64 %2161, 31
  store i64 %2173, i64* %3, align 8
  %2174 = inttoptr i64 %2172 to i32*
  %2175 = load i32, i32* %2174, align 4
  %2176 = zext i32 %2175 to i64
  store i64 %2176, i64* %RDX.i1497.pre-phi, align 8
  %2177 = add i64 %2161, -318855
  %2178 = add i64 %2161, 36
  %2179 = load i64, i64* %6, align 8
  %2180 = add i64 %2179, -8
  %2181 = inttoptr i64 %2180 to i64*
  store i64 %2178, i64* %2181, align 8
  store i64 %2180, i64* %6, align 8
  store i64 %2177, i64* %3, align 8
  %call2_465d66 = tail call %struct.Memory* @sub_417fc0.sgf_trace(%struct.State* nonnull %0, i64 %2177, %struct.Memory* %call2_465ba3)
  %.pre140 = load i64, i64* %3, align 8
  br label %block_.L_465d6b

block_.L_465d6b:                                  ; preds = %block_465d47, %block_.L_465d38
  %2182 = phi i64 [ %2161, %block_.L_465d38 ], [ %.pre140, %block_465d47 ]
  %MEMORY.25 = phi %struct.Memory* [ %call2_465ba3, %block_.L_465d38 ], [ %call2_465d66, %block_465d47 ]
  %2183 = load i64, i64* %RBP.i, align 8
  %2184 = add i64 %2183, -44
  %2185 = add i64 %2182, 7
  store i64 %2185, i64* %3, align 8
  %2186 = inttoptr i64 %2184 to i32*
  store i32 5, i32* %2186, align 4
  %2187 = load i64, i64* %3, align 8
  %2188 = add i64 %2187, 1581
  store i64 %2188, i64* %3, align 8
  br label %block_.L_46639f

block_.L_465d77:                                  ; preds = %block_465cf4
  store i64 5, i64* %RAX.i1607, align 8
  %2189 = add i64 %2124, 11
  store i64 %2189, i64* %3, align 8
  %2190 = load i32, i32* %2113, align 4
  %2191 = sub i32 5, %2190
  %2192 = zext i32 %2191 to i64
  store i64 %2192, i64* %RAX.i1607, align 8
  %2193 = icmp ugt i32 %2190, 5
  %2194 = zext i1 %2193 to i8
  store i8 %2194, i8* %40, align 1
  %2195 = and i32 %2191, 255
  %2196 = tail call i32 @llvm.ctpop.i32(i32 %2195)
  %2197 = trunc i32 %2196 to i8
  %2198 = and i8 %2197, 1
  %2199 = xor i8 %2198, 1
  store i8 %2199, i8* %47, align 1
  %2200 = xor i32 %2191, %2190
  %2201 = lshr i32 %2200, 4
  %2202 = trunc i32 %2201 to i8
  %2203 = and i8 %2202, 1
  store i8 %2203, i8* %52, align 1
  %2204 = icmp eq i32 %2191, 0
  %2205 = zext i1 %2204 to i8
  store i8 %2205, i8* %55, align 1
  %2206 = lshr i32 %2191, 31
  %2207 = trunc i32 %2206 to i8
  store i8 %2207, i8* %58, align 1
  %2208 = lshr i32 %2190, 31
  %2209 = add nuw nsw i32 %2206, %2208
  %2210 = icmp eq i32 %2209, 2
  %2211 = zext i1 %2210 to i8
  store i8 %2211, i8* %64, align 1
  %2212 = add i64 %2109, -508
  %2213 = add i64 %2124, 17
  store i64 %2213, i64* %3, align 8
  %2214 = inttoptr i64 %2212 to i32*
  %2215 = load i32, i32* %2214, align 4
  %2216 = sub i32 %2191, %2215
  %2217 = icmp ult i32 %2191, %2215
  %2218 = zext i1 %2217 to i8
  store i8 %2218, i8* %40, align 1
  %2219 = and i32 %2216, 255
  %2220 = tail call i32 @llvm.ctpop.i32(i32 %2219)
  %2221 = trunc i32 %2220 to i8
  %2222 = and i8 %2221, 1
  %2223 = xor i8 %2222, 1
  store i8 %2223, i8* %47, align 1
  %2224 = xor i32 %2215, %2191
  %2225 = xor i32 %2224, %2216
  %2226 = lshr i32 %2225, 4
  %2227 = trunc i32 %2226 to i8
  %2228 = and i8 %2227, 1
  store i8 %2228, i8* %52, align 1
  %2229 = icmp eq i32 %2216, 0
  %2230 = zext i1 %2229 to i8
  store i8 %2230, i8* %55, align 1
  %2231 = lshr i32 %2216, 31
  %2232 = trunc i32 %2231 to i8
  store i8 %2232, i8* %58, align 1
  %2233 = lshr i32 %2215, 31
  %2234 = xor i32 %2233, %2206
  %2235 = xor i32 %2231, %2206
  %2236 = add nuw nsw i32 %2235, %2234
  %2237 = icmp eq i32 %2236, 2
  %2238 = zext i1 %2237 to i8
  store i8 %2238, i8* %64, align 1
  %2239 = icmp ne i8 %2232, 0
  %2240 = xor i1 %2239, %2237
  %2241 = or i1 %2229, %2240
  %.v203 = select i1 %2241, i64 49, i64 23
  %2242 = add i64 %2124, %.v203
  store i64 %2242, i64* %3, align 8
  br i1 %2241, label %block_.L_465da8, label %block_465d8e

block_465d8e:                                     ; preds = %block_.L_465d77
  store i64 5, i64* %RAX.i1607, align 8
  %2243 = add i64 %2109, -76
  %2244 = add i64 %2242, 8
  store i64 %2244, i64* %3, align 8
  %2245 = inttoptr i64 %2243 to i32*
  %2246 = load i32, i32* %2245, align 4
  %2247 = zext i32 %2246 to i64
  store i64 %2247, i64* %RCX.i1583, align 8
  %2248 = add i64 %2109, -504
  %2249 = add i64 %2242, 14
  store i64 %2249, i64* %3, align 8
  %2250 = inttoptr i64 %2248 to i32*
  store i32 %2246, i32* %2250, align 4
  %2251 = load i64, i64* %RAX.i1607, align 8
  %2252 = load i64, i64* %RBP.i, align 8
  %2253 = add i64 %2252, -556
  %2254 = load i64, i64* %3, align 8
  %2255 = add i64 %2254, 6
  store i64 %2255, i64* %3, align 8
  %2256 = trunc i64 %2251 to i32
  %2257 = inttoptr i64 %2253 to i32*
  %2258 = load i32, i32* %2257, align 4
  %2259 = sub i32 %2256, %2258
  %2260 = zext i32 %2259 to i64
  store i64 %2260, i64* %RAX.i1607, align 8
  %2261 = icmp ult i32 %2256, %2258
  %2262 = zext i1 %2261 to i8
  store i8 %2262, i8* %40, align 1
  %2263 = and i32 %2259, 255
  %2264 = tail call i32 @llvm.ctpop.i32(i32 %2263)
  %2265 = trunc i32 %2264 to i8
  %2266 = and i8 %2265, 1
  %2267 = xor i8 %2266, 1
  store i8 %2267, i8* %47, align 1
  %2268 = xor i32 %2258, %2256
  %2269 = xor i32 %2268, %2259
  %2270 = lshr i32 %2269, 4
  %2271 = trunc i32 %2270 to i8
  %2272 = and i8 %2271, 1
  store i8 %2272, i8* %52, align 1
  %2273 = icmp eq i32 %2259, 0
  %2274 = zext i1 %2273 to i8
  store i8 %2274, i8* %55, align 1
  %2275 = lshr i32 %2259, 31
  %2276 = trunc i32 %2275 to i8
  store i8 %2276, i8* %58, align 1
  %2277 = lshr i32 %2256, 31
  %2278 = lshr i32 %2258, 31
  %2279 = xor i32 %2278, %2277
  %2280 = xor i32 %2275, %2277
  %2281 = add nuw nsw i32 %2280, %2279
  %2282 = icmp eq i32 %2281, 2
  %2283 = zext i1 %2282 to i8
  store i8 %2283, i8* %64, align 1
  %2284 = add i64 %2252, -508
  %2285 = add i64 %2254, 12
  store i64 %2285, i64* %3, align 8
  %2286 = inttoptr i64 %2284 to i32*
  store i32 %2259, i32* %2286, align 4
  %.pre141 = load i64, i64* %3, align 8
  br label %block_.L_465da8

block_.L_465da8:                                  ; preds = %block_465d8e, %block_.L_465d77
  %2287 = phi i64 [ %.pre141, %block_465d8e ], [ %2242, %block_.L_465d77 ]
  %2288 = add i64 %2287, 72
  store i64 %2288, i64* %3, align 8
  br label %block_.L_465df0

block_.L_465db7:                                  ; preds = %block_465ce7
  %2289 = add i64 %2076, -32983
  %2290 = add i64 %2076, 24
  %2291 = load i64, i64* %6, align 8
  %2292 = add i64 %2291, -8
  %2293 = inttoptr i64 %2292 to i64*
  store i64 %2290, i64* %2293, align 8
  store i64 %2292, i64* %6, align 8
  store i64 %2289, i64* %3, align 8
  %call2_465dca = tail call %struct.Memory* @sub_45dce0.do_attack(%struct.State* nonnull %0, i64 %2289, %struct.Memory* %call2_465ba3)
  %2294 = load i32, i32* %EAX.i1559, align 4
  %2295 = load i64, i64* %3, align 8
  %2296 = add i32 %2294, -5
  %2297 = icmp ult i32 %2294, 5
  %2298 = zext i1 %2297 to i8
  store i8 %2298, i8* %40, align 1
  %2299 = and i32 %2296, 255
  %2300 = tail call i32 @llvm.ctpop.i32(i32 %2299)
  %2301 = trunc i32 %2300 to i8
  %2302 = and i8 %2301, 1
  %2303 = xor i8 %2302, 1
  store i8 %2303, i8* %47, align 1
  %2304 = xor i32 %2296, %2294
  %2305 = lshr i32 %2304, 4
  %2306 = trunc i32 %2305 to i8
  %2307 = and i8 %2306, 1
  store i8 %2307, i8* %52, align 1
  %2308 = icmp eq i32 %2296, 0
  %2309 = zext i1 %2308 to i8
  store i8 %2309, i8* %55, align 1
  %2310 = lshr i32 %2296, 31
  %2311 = trunc i32 %2310 to i8
  store i8 %2311, i8* %58, align 1
  %2312 = lshr i32 %2294, 31
  %2313 = xor i32 %2310, %2312
  %2314 = add nuw nsw i32 %2313, %2312
  %2315 = icmp eq i32 %2314, 2
  %2316 = zext i1 %2315 to i8
  store i8 %2316, i8* %64, align 1
  %.v201 = select i1 %2308, i64 28, i64 9
  %2317 = add i64 %2295, %.v201
  store i64 %2317, i64* %3, align 8
  br i1 %2308, label %block_.L_465deb, label %block_465dd8

block_465dd8:                                     ; preds = %block_.L_465db7
  %2318 = load i64, i64* %RBP.i, align 8
  %2319 = add i64 %2318, -76
  %2320 = add i64 %2317, 3
  store i64 %2320, i64* %3, align 8
  %2321 = inttoptr i64 %2319 to i32*
  %2322 = load i32, i32* %2321, align 4
  %2323 = zext i32 %2322 to i64
  store i64 %2323, i64* %RAX.i1607, align 8
  %2324 = add i64 %2318, -504
  %2325 = add i64 %2317, 9
  store i64 %2325, i64* %3, align 8
  %2326 = inttoptr i64 %2324 to i32*
  store i32 %2322, i32* %2326, align 4
  %2327 = load i64, i64* %RBP.i, align 8
  %2328 = add i64 %2327, -508
  %2329 = load i64, i64* %3, align 8
  %2330 = add i64 %2329, 10
  store i64 %2330, i64* %3, align 8
  %2331 = inttoptr i64 %2328 to i32*
  store i32 1, i32* %2331, align 4
  %.pre142 = load i64, i64* %3, align 8
  br label %block_.L_465deb

block_.L_465deb:                                  ; preds = %block_465dd8, %block_.L_465db7
  %2332 = phi i64 [ %.pre142, %block_465dd8 ], [ %2317, %block_.L_465db7 ]
  %2333 = add i64 %2332, -360587
  %2334 = add i64 %2332, 5
  %2335 = load i64, i64* %6, align 8
  %2336 = add i64 %2335, -8
  %2337 = inttoptr i64 %2336 to i64*
  store i64 %2334, i64* %2337, align 8
  store i64 %2336, i64* %6, align 8
  store i64 %2333, i64* %3, align 8
  %call2_465deb = tail call %struct.Memory* @sub_40dd60.popgo(%struct.State* nonnull %0, i64 %2333, %struct.Memory* %call2_465ba3)
  %.pre143 = load i64, i64* %3, align 8
  br label %block_.L_465df0

block_.L_465df0:                                  ; preds = %block_.L_465deb, %block_.L_465da8
  %2338 = phi i64 [ %.pre143, %block_.L_465deb ], [ %2288, %block_.L_465da8 ]
  %2339 = add i64 %2338, 5
  store i64 %2339, i64* %3, align 8
  br label %block_.L_465df5

block_.L_465df5:                                  ; preds = %block_.L_465df0, %block_.L_465c35
  %2340 = phi i64 [ %2339, %block_.L_465df0 ], [ %2069, %block_.L_465c35 ]
  %2341 = load i64, i64* %RBP.i, align 8
  %2342 = add i64 %2341, -512
  %2343 = add i64 %2340, 11
  store i64 %2343, i64* %3, align 8
  %2344 = inttoptr i64 %2342 to i32*
  %2345 = load i32, i32* %2344, align 4
  %2346 = add i32 %2345, 1
  %2347 = zext i32 %2346 to i64
  store i64 %2347, i64* %RAX.i1607, align 8
  %2348 = icmp eq i32 %2345, -1
  %2349 = icmp eq i32 %2346, 0
  %2350 = or i1 %2348, %2349
  %2351 = zext i1 %2350 to i8
  store i8 %2351, i8* %40, align 1
  %2352 = and i32 %2346, 255
  %2353 = tail call i32 @llvm.ctpop.i32(i32 %2352)
  %2354 = trunc i32 %2353 to i8
  %2355 = and i8 %2354, 1
  %2356 = xor i8 %2355, 1
  store i8 %2356, i8* %47, align 1
  %2357 = xor i32 %2346, %2345
  %2358 = lshr i32 %2357, 4
  %2359 = trunc i32 %2358 to i8
  %2360 = and i8 %2359, 1
  store i8 %2360, i8* %52, align 1
  %2361 = zext i1 %2349 to i8
  store i8 %2361, i8* %55, align 1
  %2362 = lshr i32 %2346, 31
  %2363 = trunc i32 %2362 to i8
  store i8 %2363, i8* %58, align 1
  %2364 = lshr i32 %2345, 31
  %2365 = xor i32 %2362, %2364
  %2366 = add nuw nsw i32 %2365, %2362
  %2367 = icmp eq i32 %2366, 2
  %2368 = zext i1 %2367 to i8
  store i8 %2368, i8* %64, align 1
  %2369 = add i64 %2340, 20
  store i64 %2369, i64* %3, align 8
  store i32 %2346, i32* %2344, align 4
  %2370 = load i64, i64* %3, align 8
  %2371 = add i64 %2370, -597
  store i64 %2371, i64* %3, align 8
  br label %block_.L_465bb4

block_.L_465e0e:                                  ; preds = %block_.L_465bb4
  %2372 = add i64 %1812, 3
  store i64 %2372, i64* %3, align 8
  %2373 = load i32, i32* %1784, align 4
  %2374 = zext i32 %2373 to i64
  store i64 %2374, i64* %RAX.i1607, align 8
  %2375 = add i64 %1776, -500
  %2376 = add i64 %1812, 9
  store i64 %2376, i64* %3, align 8
  %2377 = inttoptr i64 %2375 to i32*
  store i32 %2373, i32* %2377, align 4
  %2378 = load i64, i64* %3, align 8
  %2379 = load i32, i32* bitcast (%G_0x7ae448_type* @G_0x7ae448 to i32*), align 8
  %2380 = add i32 %2379, -10
  %2381 = icmp ult i32 %2379, 10
  %2382 = zext i1 %2381 to i8
  store i8 %2382, i8* %40, align 1
  %2383 = and i32 %2380, 255
  %2384 = tail call i32 @llvm.ctpop.i32(i32 %2383)
  %2385 = trunc i32 %2384 to i8
  %2386 = and i8 %2385, 1
  %2387 = xor i8 %2386, 1
  store i8 %2387, i8* %47, align 1
  %2388 = xor i32 %2380, %2379
  %2389 = lshr i32 %2388, 4
  %2390 = trunc i32 %2389 to i8
  %2391 = and i8 %2390, 1
  store i8 %2391, i8* %52, align 1
  %2392 = icmp eq i32 %2380, 0
  %2393 = zext i1 %2392 to i8
  store i8 %2393, i8* %55, align 1
  %2394 = lshr i32 %2380, 31
  %2395 = trunc i32 %2394 to i8
  store i8 %2395, i8* %58, align 1
  %2396 = lshr i32 %2379, 31
  %2397 = xor i32 %2394, %2396
  %2398 = add nuw nsw i32 %2397, %2396
  %2399 = icmp eq i32 %2398, 2
  %2400 = zext i1 %2399 to i8
  store i8 %2400, i8* %64, align 1
  %2401 = icmp ne i8 %2395, 0
  %2402 = xor i1 %2401, %2399
  %.v175 = select i1 %2402, i64 502, i64 14
  %2403 = add i64 %2378, %.v175
  store i64 %2403, i64* %3, align 8
  br i1 %2402, label %block_.L_46600d, label %block_465e25

block_465e25:                                     ; preds = %block_.L_465e0e
  %2404 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*), align 8
  %2405 = zext i32 %2404 to i64
  store i64 %2405, i64* %RAX.i1607, align 8
  %2406 = load i32, i32* bitcast (%G_0xb8af28_type* @G_0xb8af28 to i32*), align 8
  %2407 = sub i32 %2404, %2406
  %2408 = icmp ult i32 %2404, %2406
  %2409 = zext i1 %2408 to i8
  store i8 %2409, i8* %40, align 1
  %2410 = and i32 %2407, 255
  %2411 = tail call i32 @llvm.ctpop.i32(i32 %2410)
  %2412 = trunc i32 %2411 to i8
  %2413 = and i8 %2412, 1
  %2414 = xor i8 %2413, 1
  store i8 %2414, i8* %47, align 1
  %2415 = xor i32 %2406, %2404
  %2416 = xor i32 %2415, %2407
  %2417 = lshr i32 %2416, 4
  %2418 = trunc i32 %2417 to i8
  %2419 = and i8 %2418, 1
  store i8 %2419, i8* %52, align 1
  %2420 = icmp eq i32 %2407, 0
  %2421 = zext i1 %2420 to i8
  store i8 %2421, i8* %55, align 1
  %2422 = lshr i32 %2407, 31
  %2423 = trunc i32 %2422 to i8
  store i8 %2423, i8* %58, align 1
  %2424 = lshr i32 %2404, 31
  %2425 = lshr i32 %2406, 31
  %2426 = xor i32 %2425, %2424
  %2427 = xor i32 %2422, %2424
  %2428 = add nuw nsw i32 %2427, %2426
  %2429 = icmp eq i32 %2428, 2
  %2430 = zext i1 %2429 to i8
  store i8 %2430, i8* %64, align 1
  %2431 = icmp ne i8 %2423, 0
  %2432 = xor i1 %2431, %2429
  %.demorgan158 = or i1 %2420, %2432
  %.v176 = select i1 %.demorgan158, i64 20, i64 488
  %2433 = add i64 %2403, %.v176
  store i64 %2433, i64* %3, align 8
  br i1 %.demorgan158, label %block_465e39, label %block_.L_46600d

block_465e39:                                     ; preds = %block_465e25
  %2434 = load i64, i64* %RBP.i, align 8
  %2435 = add i64 %2434, -560
  store i64 %2435, i64* %RSI.i1599, align 8
  store i64 3, i64* %RCX.i1583, align 8
  %2436 = add i64 %2434, -656
  store i64 %2436, i64* %RDX.i1497.pre-phi, align 8
  %2437 = add i64 %2434, -48
  %2438 = add i64 %2433, 22
  store i64 %2438, i64* %3, align 8
  %2439 = inttoptr i64 %2437 to i32*
  %2440 = load i32, i32* %2439, align 4
  %2441 = zext i32 %2440 to i64
  store i64 %2441, i64* %RDI.i1522.pre-phi, align 8
  %2442 = add i64 %2433, 90743
  %2443 = add i64 %2433, 27
  %2444 = load i64, i64* %6, align 8
  %2445 = add i64 %2444, -8
  %2446 = inttoptr i64 %2445 to i64*
  store i64 %2443, i64* %2446, align 8
  store i64 %2445, i64* %6, align 8
  store i64 %2442, i64* %3, align 8
  %call2_465e4f = tail call %struct.Memory* @sub_47c0b0.find_superstring_liberties(%struct.State* nonnull %0, i64 %2442, %struct.Memory* %call2_465ba3)
  %2447 = load i64, i64* %RBP.i, align 8
  %2448 = add i64 %2447, -512
  %2449 = load i64, i64* %3, align 8
  %2450 = add i64 %2449, 10
  store i64 %2450, i64* %3, align 8
  %2451 = inttoptr i64 %2448 to i32*
  store i32 0, i32* %2451, align 4
  %.pre119 = load i64, i64* %3, align 8
  br label %block_.L_465e5e

block_.L_465e5e:                                  ; preds = %block_.L_465f7f, %block_465e39
  %2452 = phi i64 [ %.pre119, %block_465e39 ], [ %2859, %block_.L_465f7f ]
  %2453 = load i64, i64* %RBP.i, align 8
  %2454 = add i64 %2453, -512
  %2455 = add i64 %2452, 6
  store i64 %2455, i64* %3, align 8
  %2456 = inttoptr i64 %2454 to i32*
  %2457 = load i32, i32* %2456, align 4
  %2458 = zext i32 %2457 to i64
  store i64 %2458, i64* %RAX.i1607, align 8
  %2459 = add i64 %2453, -560
  %2460 = add i64 %2452, 12
  store i64 %2460, i64* %3, align 8
  %2461 = inttoptr i64 %2459 to i32*
  %2462 = load i32, i32* %2461, align 4
  %2463 = sub i32 %2457, %2462
  %2464 = icmp ult i32 %2457, %2462
  %2465 = zext i1 %2464 to i8
  store i8 %2465, i8* %40, align 1
  %2466 = and i32 %2463, 255
  %2467 = tail call i32 @llvm.ctpop.i32(i32 %2466)
  %2468 = trunc i32 %2467 to i8
  %2469 = and i8 %2468, 1
  %2470 = xor i8 %2469, 1
  store i8 %2470, i8* %47, align 1
  %2471 = xor i32 %2462, %2457
  %2472 = xor i32 %2471, %2463
  %2473 = lshr i32 %2472, 4
  %2474 = trunc i32 %2473 to i8
  %2475 = and i8 %2474, 1
  store i8 %2475, i8* %52, align 1
  %2476 = icmp eq i32 %2463, 0
  %2477 = zext i1 %2476 to i8
  store i8 %2477, i8* %55, align 1
  %2478 = lshr i32 %2463, 31
  %2479 = trunc i32 %2478 to i8
  store i8 %2479, i8* %58, align 1
  %2480 = lshr i32 %2457, 31
  %2481 = lshr i32 %2462, 31
  %2482 = xor i32 %2481, %2480
  %2483 = xor i32 %2478, %2480
  %2484 = add nuw nsw i32 %2483, %2482
  %2485 = icmp eq i32 %2484, 2
  %2486 = zext i1 %2485 to i8
  store i8 %2486, i8* %64, align 1
  %2487 = icmp ne i8 %2479, 0
  %2488 = xor i1 %2487, %2485
  %.v192 = select i1 %2488, i64 18, i64 309
  %2489 = add i64 %2452, %.v192
  store i64 %2489, i64* %3, align 8
  br i1 %2488, label %block_465e70, label %block_.L_465f93

block_465e70:                                     ; preds = %block_.L_465e5e
  %2490 = add i64 %2489, 7
  store i64 %2490, i64* %3, align 8
  %2491 = load i32, i32* %2456, align 4
  %2492 = sext i32 %2491 to i64
  store i64 %2492, i64* %RAX.i1607, align 8
  %2493 = shl nsw i64 %2492, 2
  %2494 = add i64 %2453, -656
  %2495 = add i64 %2494, %2493
  %2496 = add i64 %2489, 14
  store i64 %2496, i64* %3, align 8
  %2497 = inttoptr i64 %2495 to i32*
  %2498 = load i32, i32* %2497, align 4
  %2499 = zext i32 %2498 to i64
  store i64 %2499, i64* %RCX.i1583, align 8
  %2500 = add i64 %2453, -660
  %2501 = add i64 %2489, 20
  store i64 %2501, i64* %3, align 8
  %2502 = inttoptr i64 %2500 to i32*
  store i32 %2498, i32* %2502, align 4
  %2503 = load i64, i64* %RBP.i, align 8
  %2504 = add i64 %2503, -660
  %2505 = load i64, i64* %3, align 8
  %2506 = add i64 %2505, 6
  store i64 %2506, i64* %3, align 8
  %2507 = inttoptr i64 %2504 to i32*
  %2508 = load i32, i32* %2507, align 4
  %2509 = zext i32 %2508 to i64
  store i64 %2509, i64* %RDI.i1522.pre-phi, align 8
  %2510 = add i64 %2503, -48
  %2511 = add i64 %2505, 9
  store i64 %2511, i64* %3, align 8
  %2512 = inttoptr i64 %2510 to i32*
  %2513 = load i32, i32* %2512, align 4
  %2514 = zext i32 %2513 to i64
  store i64 %2514, i64* %RSI.i1599, align 8
  %2515 = add i64 %2505, -332756
  %2516 = add i64 %2505, 14
  %2517 = load i64, i64* %6, align 8
  %2518 = add i64 %2517, -8
  %2519 = inttoptr i64 %2518 to i64*
  store i64 %2516, i64* %2519, align 8
  store i64 %2518, i64* %6, align 8
  store i64 %2515, i64* %3, align 8
  %call2_465e8d = tail call %struct.Memory* @sub_414ab0.liberty_of_string(%struct.State* nonnull %0, i64 %2515, %struct.Memory* %call2_465e4f)
  %2520 = load i32, i32* %EAX.i1559, align 4
  %2521 = load i64, i64* %3, align 8
  store i8 0, i8* %40, align 1
  %2522 = and i32 %2520, 255
  %2523 = tail call i32 @llvm.ctpop.i32(i32 %2522)
  %2524 = trunc i32 %2523 to i8
  %2525 = and i8 %2524, 1
  %2526 = xor i8 %2525, 1
  store i8 %2526, i8* %47, align 1
  store i8 0, i8* %52, align 1
  %2527 = icmp eq i32 %2520, 0
  %2528 = zext i1 %2527 to i8
  store i8 %2528, i8* %55, align 1
  %2529 = lshr i32 %2520, 31
  %2530 = trunc i32 %2529 to i8
  store i8 %2530, i8* %58, align 1
  store i8 0, i8* %64, align 1
  %.v195 = select i1 %2527, i64 14, i64 9
  %2531 = add i64 %2521, %.v195
  store i64 %2531, i64* %3, align 8
  br i1 %2527, label %block_.L_465ea0, label %block_465e9b

block_465e9b:                                     ; preds = %block_465e70
  %2532 = add i64 %2531, 228
  br label %block_.L_465f7f

block_.L_465ea0:                                  ; preds = %block_465e70
  store i64 2, i64* %RDX.i1497.pre-phi, align 8
  store i64 0, i64* %RAX.i1607, align 8
  store i8 0, i8* %40, align 1
  store i8 1, i8* %47, align 1
  store i8 1, i8* %55, align 1
  store i8 0, i8* %58, align 1
  store i8 0, i8* %64, align 1
  store i8 0, i8* %52, align 1
  store i64 0, i64* %RCX.i1583, align 8
  %2533 = load i64, i64* %RBP.i, align 8
  %2534 = add i64 %2533, -660
  %2535 = add i64 %2531, 15
  store i64 %2535, i64* %3, align 8
  %2536 = inttoptr i64 %2534 to i32*
  %2537 = load i32, i32* %2536, align 4
  %2538 = zext i32 %2537 to i64
  store i64 %2538, i64* %RDI.i1522.pre-phi, align 8
  %2539 = add i64 %2533, -68
  %2540 = add i64 %2531, 18
  store i64 %2540, i64* %3, align 8
  %2541 = inttoptr i64 %2539 to i32*
  %2542 = load i32, i32* %2541, align 4
  %2543 = zext i32 %2542 to i64
  store i64 %2543, i64* %RSI.i1599, align 8
  %2544 = add i64 %2531, -346352
  %2545 = add i64 %2531, 23
  %2546 = load i64, i64* %6, align 8
  %2547 = add i64 %2546, -8
  %2548 = inttoptr i64 %2547 to i64*
  store i64 %2545, i64* %2548, align 8
  store i64 %2547, i64* %6, align 8
  store i64 %2544, i64* %3, align 8
  %call2_465eb2 = tail call %struct.Memory* @sub_4115b0.approxlib(%struct.State* nonnull %0, i64 %2544, %struct.Memory* %call2_465e4f)
  %2549 = load i32, i32* %EAX.i1559, align 4
  %2550 = load i64, i64* %3, align 8
  %2551 = add i32 %2549, -1
  %2552 = icmp eq i32 %2549, 0
  %2553 = zext i1 %2552 to i8
  store i8 %2553, i8* %40, align 1
  %2554 = and i32 %2551, 255
  %2555 = tail call i32 @llvm.ctpop.i32(i32 %2554)
  %2556 = trunc i32 %2555 to i8
  %2557 = and i8 %2556, 1
  %2558 = xor i8 %2557, 1
  store i8 %2558, i8* %47, align 1
  %2559 = xor i32 %2551, %2549
  %2560 = lshr i32 %2559, 4
  %2561 = trunc i32 %2560 to i8
  %2562 = and i8 %2561, 1
  store i8 %2562, i8* %52, align 1
  %2563 = icmp eq i32 %2551, 0
  %2564 = zext i1 %2563 to i8
  store i8 %2564, i8* %55, align 1
  %2565 = lshr i32 %2551, 31
  %2566 = trunc i32 %2565 to i8
  store i8 %2566, i8* %58, align 1
  %2567 = lshr i32 %2549, 31
  %2568 = xor i32 %2565, %2567
  %2569 = add nuw nsw i32 %2568, %2567
  %2570 = icmp eq i32 %2569, 2
  %2571 = zext i1 %2570 to i8
  store i8 %2571, i8* %64, align 1
  %2572 = icmp ne i8 %2566, 0
  %2573 = xor i1 %2572, %2570
  %2574 = or i1 %2563, %2573
  %.v196 = select i1 %2574, i64 195, i64 9
  %2575 = add i64 %2550, %.v196
  store i64 %2575, i64* %3, align 8
  br i1 %2574, label %block_.L_465f7a, label %block_465ec0

block_465ec0:                                     ; preds = %block_.L_465ea0
  %2576 = load i64, i64* %RBP.i, align 8
  %2577 = add i64 %2576, -664
  %2578 = add i64 %2575, 15
  store i64 %2578, i64* %3, align 8
  %2579 = inttoptr i64 %2577 to i32*
  store i32 0, i32* %2579, align 4
  %.pre122 = load i64, i64* %3, align 8
  br label %block_.L_465ecf

block_.L_465ecf:                                  ; preds = %block_.L_465f15, %block_465ec0
  %2580 = phi i64 [ %2706, %block_.L_465f15 ], [ %.pre122, %block_465ec0 ]
  %2581 = load i64, i64* %RBP.i, align 8
  %2582 = add i64 %2581, -664
  %2583 = add i64 %2580, 6
  store i64 %2583, i64* %3, align 8
  %2584 = inttoptr i64 %2582 to i32*
  %2585 = load i32, i32* %2584, align 4
  %2586 = zext i32 %2585 to i64
  store i64 %2586, i64* %RAX.i1607, align 8
  %2587 = add i64 %2581, -96
  %2588 = add i64 %2580, 9
  store i64 %2588, i64* %3, align 8
  %2589 = inttoptr i64 %2587 to i32*
  %2590 = load i32, i32* %2589, align 4
  %2591 = sub i32 %2585, %2590
  %2592 = icmp ult i32 %2585, %2590
  %2593 = zext i1 %2592 to i8
  store i8 %2593, i8* %40, align 1
  %2594 = and i32 %2591, 255
  %2595 = tail call i32 @llvm.ctpop.i32(i32 %2594)
  %2596 = trunc i32 %2595 to i8
  %2597 = and i8 %2596, 1
  %2598 = xor i8 %2597, 1
  store i8 %2598, i8* %47, align 1
  %2599 = xor i32 %2590, %2585
  %2600 = xor i32 %2599, %2591
  %2601 = lshr i32 %2600, 4
  %2602 = trunc i32 %2601 to i8
  %2603 = and i8 %2602, 1
  store i8 %2603, i8* %52, align 1
  %2604 = icmp eq i32 %2591, 0
  %2605 = zext i1 %2604 to i8
  store i8 %2605, i8* %55, align 1
  %2606 = lshr i32 %2591, 31
  %2607 = trunc i32 %2606 to i8
  store i8 %2607, i8* %58, align 1
  %2608 = lshr i32 %2585, 31
  %2609 = lshr i32 %2590, 31
  %2610 = xor i32 %2609, %2608
  %2611 = xor i32 %2606, %2608
  %2612 = add nuw nsw i32 %2611, %2610
  %2613 = icmp eq i32 %2612, 2
  %2614 = zext i1 %2613 to i8
  store i8 %2614, i8* %64, align 1
  %2615 = icmp ne i8 %2607, 0
  %2616 = xor i1 %2615, %2613
  %.v160 = select i1 %2616, i64 15, i64 95
  %2617 = add i64 %2580, %.v160
  store i64 %2617, i64* %3, align 8
  br i1 %2616, label %block_465ede, label %block_.L_465f2e.loopexit

block_465ede:                                     ; preds = %block_.L_465ecf
  %2618 = add i64 %2617, 7
  store i64 %2618, i64* %3, align 8
  %2619 = load i32, i32* %2584, align 4
  %2620 = sext i32 %2619 to i64
  store i64 %2620, i64* %RAX.i1607, align 8
  %2621 = shl nsw i64 %2620, 2
  %2622 = add i64 %2581, -496
  %2623 = add i64 %2622, %2621
  %2624 = add i64 %2617, 14
  store i64 %2624, i64* %3, align 8
  %2625 = inttoptr i64 %2623 to i32*
  %2626 = load i32, i32* %2625, align 4
  %2627 = zext i32 %2626 to i64
  store i64 %2627, i64* %RCX.i1583, align 8
  %2628 = add i64 %2581, -660
  %2629 = add i64 %2617, 20
  store i64 %2629, i64* %3, align 8
  %2630 = inttoptr i64 %2628 to i32*
  %2631 = load i32, i32* %2630, align 4
  %2632 = sub i32 %2626, %2631
  %2633 = icmp ult i32 %2626, %2631
  %2634 = zext i1 %2633 to i8
  store i8 %2634, i8* %40, align 1
  %2635 = and i32 %2632, 255
  %2636 = tail call i32 @llvm.ctpop.i32(i32 %2635)
  %2637 = trunc i32 %2636 to i8
  %2638 = and i8 %2637, 1
  %2639 = xor i8 %2638, 1
  store i8 %2639, i8* %47, align 1
  %2640 = xor i32 %2631, %2626
  %2641 = xor i32 %2640, %2632
  %2642 = lshr i32 %2641, 4
  %2643 = trunc i32 %2642 to i8
  %2644 = and i8 %2643, 1
  store i8 %2644, i8* %52, align 1
  %2645 = icmp eq i32 %2632, 0
  %2646 = zext i1 %2645 to i8
  store i8 %2646, i8* %55, align 1
  %2647 = lshr i32 %2632, 31
  %2648 = trunc i32 %2647 to i8
  store i8 %2648, i8* %58, align 1
  %2649 = lshr i32 %2626, 31
  %2650 = lshr i32 %2631, 31
  %2651 = xor i32 %2650, %2649
  %2652 = xor i32 %2647, %2649
  %2653 = add nuw nsw i32 %2652, %2651
  %2654 = icmp eq i32 %2653, 2
  %2655 = zext i1 %2654 to i8
  store i8 %2655, i8* %64, align 1
  %.v = select i1 %2645, i64 26, i64 55
  %2656 = add i64 %2617, %.v
  store i64 %2656, i64* %3, align 8
  br i1 %2645, label %block_465ef8, label %block_.L_465f15

block_465ef8:                                     ; preds = %block_465ede
  %2657 = add i64 %2656, 7
  store i64 %2657, i64* %3, align 8
  %2658 = load i32, i32* %2584, align 4
  %2659 = sext i32 %2658 to i64
  store i64 %2659, i64* %RAX.i1607, align 8
  %2660 = shl nsw i64 %2659, 2
  %2661 = add i64 %2581, -296
  %2662 = add i64 %2661, %2660
  %2663 = add i64 %2656, 14
  store i64 %2663, i64* %3, align 8
  %2664 = inttoptr i64 %2662 to i32*
  %2665 = load i32, i32* %2664, align 4
  %2666 = zext i32 %2665 to i64
  store i64 %2666, i64* %RCX.i1583, align 8
  store i8 0, i8* %40, align 1
  %2667 = and i32 %2665, 255
  %2668 = tail call i32 @llvm.ctpop.i32(i32 %2667)
  %2669 = trunc i32 %2668 to i8
  %2670 = and i8 %2669, 1
  %2671 = xor i8 %2670, 1
  store i8 %2671, i8* %47, align 1
  store i8 0, i8* %52, align 1
  %2672 = icmp eq i32 %2665, 0
  %2673 = zext i1 %2672 to i8
  store i8 %2673, i8* %55, align 1
  %2674 = lshr i32 %2665, 31
  %2675 = trunc i32 %2674 to i8
  store i8 %2675, i8* %58, align 1
  store i8 0, i8* %64, align 1
  %2676 = add i64 %2656, 24
  store i64 %2676, i64* %3, align 8
  store i32 %2665, i32* %2664, align 4
  %2677 = load i64, i64* %3, align 8
  %2678 = add i64 %2677, 30
  store i64 %2678, i64* %3, align 8
  %.pre123 = load i64, i64* %RBP.i, align 8
  br label %block_.L_465f2e

block_.L_465f15:                                  ; preds = %block_465ede
  %2679 = add i64 %2656, 11
  store i64 %2679, i64* %3, align 8
  %2680 = load i32, i32* %2584, align 4
  %2681 = add i32 %2680, 1
  %2682 = zext i32 %2681 to i64
  store i64 %2682, i64* %RAX.i1607, align 8
  %2683 = icmp eq i32 %2680, -1
  %2684 = icmp eq i32 %2681, 0
  %2685 = or i1 %2683, %2684
  %2686 = zext i1 %2685 to i8
  store i8 %2686, i8* %40, align 1
  %2687 = and i32 %2681, 255
  %2688 = tail call i32 @llvm.ctpop.i32(i32 %2687)
  %2689 = trunc i32 %2688 to i8
  %2690 = and i8 %2689, 1
  %2691 = xor i8 %2690, 1
  store i8 %2691, i8* %47, align 1
  %2692 = xor i32 %2681, %2680
  %2693 = lshr i32 %2692, 4
  %2694 = trunc i32 %2693 to i8
  %2695 = and i8 %2694, 1
  store i8 %2695, i8* %52, align 1
  %2696 = zext i1 %2684 to i8
  store i8 %2696, i8* %55, align 1
  %2697 = lshr i32 %2681, 31
  %2698 = trunc i32 %2697 to i8
  store i8 %2698, i8* %58, align 1
  %2699 = lshr i32 %2680, 31
  %2700 = xor i32 %2697, %2699
  %2701 = add nuw nsw i32 %2700, %2697
  %2702 = icmp eq i32 %2701, 2
  %2703 = zext i1 %2702 to i8
  store i8 %2703, i8* %64, align 1
  %2704 = add i64 %2656, 20
  store i64 %2704, i64* %3, align 8
  store i32 %2681, i32* %2584, align 4
  %2705 = load i64, i64* %3, align 8
  %2706 = add i64 %2705, -90
  store i64 %2706, i64* %3, align 8
  br label %block_.L_465ecf

block_.L_465f2e.loopexit:                         ; preds = %block_.L_465ecf
  br label %block_.L_465f2e

block_.L_465f2e:                                  ; preds = %block_.L_465f2e.loopexit, %block_465ef8
  %2707 = phi i64 [ %2678, %block_465ef8 ], [ %2617, %block_.L_465f2e.loopexit ]
  %2708 = phi i64 [ %.pre123, %block_465ef8 ], [ %2581, %block_.L_465f2e.loopexit ]
  %2709 = add i64 %2708, -664
  %2710 = add i64 %2707, 6
  store i64 %2710, i64* %3, align 8
  %2711 = inttoptr i64 %2709 to i32*
  %2712 = load i32, i32* %2711, align 4
  %2713 = zext i32 %2712 to i64
  store i64 %2713, i64* %RAX.i1607, align 8
  %2714 = add i64 %2708, -96
  %2715 = add i64 %2707, 9
  store i64 %2715, i64* %3, align 8
  %2716 = inttoptr i64 %2714 to i32*
  %2717 = load i32, i32* %2716, align 4
  %2718 = sub i32 %2712, %2717
  %2719 = icmp ult i32 %2712, %2717
  %2720 = zext i1 %2719 to i8
  store i8 %2720, i8* %40, align 1
  %2721 = and i32 %2718, 255
  %2722 = tail call i32 @llvm.ctpop.i32(i32 %2721)
  %2723 = trunc i32 %2722 to i8
  %2724 = and i8 %2723, 1
  %2725 = xor i8 %2724, 1
  store i8 %2725, i8* %47, align 1
  %2726 = xor i32 %2717, %2712
  %2727 = xor i32 %2726, %2718
  %2728 = lshr i32 %2727, 4
  %2729 = trunc i32 %2728 to i8
  %2730 = and i8 %2729, 1
  store i8 %2730, i8* %52, align 1
  %2731 = icmp eq i32 %2718, 0
  %2732 = zext i1 %2731 to i8
  store i8 %2732, i8* %55, align 1
  %2733 = lshr i32 %2718, 31
  %2734 = trunc i32 %2733 to i8
  store i8 %2734, i8* %58, align 1
  %2735 = lshr i32 %2712, 31
  %2736 = lshr i32 %2717, 31
  %2737 = xor i32 %2736, %2735
  %2738 = xor i32 %2733, %2735
  %2739 = add nuw nsw i32 %2738, %2737
  %2740 = icmp eq i32 %2739, 2
  %2741 = zext i1 %2740 to i8
  store i8 %2741, i8* %64, align 1
  %.v197 = select i1 %2731, i64 15, i64 66
  %2742 = add i64 %2707, %.v197
  store i64 %2742, i64* %3, align 8
  br i1 %2731, label %block_465f3d, label %block_.L_465f70

block_465f3d:                                     ; preds = %block_.L_465f2e
  %2743 = add i64 %2742, 4
  store i64 %2743, i64* %3, align 8
  %2744 = load i32, i32* %2716, align 4
  %2745 = add i32 %2744, -50
  %2746 = icmp ult i32 %2744, 50
  %2747 = zext i1 %2746 to i8
  store i8 %2747, i8* %40, align 1
  %2748 = and i32 %2745, 255
  %2749 = tail call i32 @llvm.ctpop.i32(i32 %2748)
  %2750 = trunc i32 %2749 to i8
  %2751 = and i8 %2750, 1
  %2752 = xor i8 %2751, 1
  store i8 %2752, i8* %47, align 1
  %2753 = xor i32 %2744, 16
  %2754 = xor i32 %2753, %2745
  %2755 = lshr i32 %2754, 4
  %2756 = trunc i32 %2755 to i8
  %2757 = and i8 %2756, 1
  store i8 %2757, i8* %52, align 1
  %2758 = icmp eq i32 %2745, 0
  %2759 = zext i1 %2758 to i8
  store i8 %2759, i8* %55, align 1
  %2760 = lshr i32 %2745, 31
  %2761 = trunc i32 %2760 to i8
  store i8 %2761, i8* %58, align 1
  %2762 = lshr i32 %2744, 31
  %2763 = xor i32 %2760, %2762
  %2764 = add nuw nsw i32 %2763, %2762
  %2765 = icmp eq i32 %2764, 2
  %2766 = zext i1 %2765 to i8
  store i8 %2766, i8* %64, align 1
  %2767 = icmp ne i8 %2761, 0
  %2768 = xor i1 %2767, %2765
  %.v198 = select i1 %2768, i64 10, i64 51
  %2769 = add i64 %2742, %.v198
  store i64 %2769, i64* %3, align 8
  br i1 %2768, label %block_465f47, label %block_.L_465f70

block_465f47:                                     ; preds = %block_465f3d
  %2770 = add i64 %2708, -660
  %2771 = add i64 %2769, 6
  store i64 %2771, i64* %3, align 8
  %2772 = inttoptr i64 %2770 to i32*
  %2773 = load i32, i32* %2772, align 4
  %2774 = zext i32 %2773 to i64
  store i64 %2774, i64* %RAX.i1607, align 8
  %2775 = add i64 %2769, 10
  store i64 %2775, i64* %3, align 8
  %2776 = load i32, i32* %2716, align 4
  %2777 = sext i32 %2776 to i64
  store i64 %2777, i64* %RCX.i1583, align 8
  %2778 = shl nsw i64 %2777, 2
  %2779 = add i64 %2708, -496
  %2780 = add i64 %2779, %2778
  %2781 = add i64 %2769, 17
  store i64 %2781, i64* %3, align 8
  %2782 = inttoptr i64 %2780 to i32*
  store i32 %2773, i32* %2782, align 4
  %2783 = load i64, i64* %RBP.i, align 8
  %2784 = add i64 %2783, -96
  %2785 = load i64, i64* %3, align 8
  %2786 = add i64 %2785, 4
  store i64 %2786, i64* %3, align 8
  %2787 = inttoptr i64 %2784 to i32*
  %2788 = load i32, i32* %2787, align 4
  %2789 = sext i32 %2788 to i64
  store i64 %2789, i64* %RCX.i1583, align 8
  %2790 = shl nsw i64 %2789, 2
  %2791 = add i64 %2783, -296
  %2792 = add i64 %2791, %2790
  %2793 = add i64 %2785, 15
  store i64 %2793, i64* %3, align 8
  %2794 = inttoptr i64 %2792 to i32*
  store i32 0, i32* %2794, align 4
  %2795 = load i64, i64* %RBP.i, align 8
  %2796 = add i64 %2795, -96
  %2797 = load i64, i64* %3, align 8
  %2798 = add i64 %2797, 3
  store i64 %2798, i64* %3, align 8
  %2799 = inttoptr i64 %2796 to i32*
  %2800 = load i32, i32* %2799, align 4
  %2801 = add i32 %2800, 1
  %2802 = zext i32 %2801 to i64
  store i64 %2802, i64* %RAX.i1607, align 8
  %2803 = icmp eq i32 %2800, -1
  %2804 = icmp eq i32 %2801, 0
  %2805 = or i1 %2803, %2804
  %2806 = zext i1 %2805 to i8
  store i8 %2806, i8* %40, align 1
  %2807 = and i32 %2801, 255
  %2808 = tail call i32 @llvm.ctpop.i32(i32 %2807)
  %2809 = trunc i32 %2808 to i8
  %2810 = and i8 %2809, 1
  %2811 = xor i8 %2810, 1
  store i8 %2811, i8* %47, align 1
  %2812 = xor i32 %2801, %2800
  %2813 = lshr i32 %2812, 4
  %2814 = trunc i32 %2813 to i8
  %2815 = and i8 %2814, 1
  store i8 %2815, i8* %52, align 1
  %2816 = zext i1 %2804 to i8
  store i8 %2816, i8* %55, align 1
  %2817 = lshr i32 %2801, 31
  %2818 = trunc i32 %2817 to i8
  store i8 %2818, i8* %58, align 1
  %2819 = lshr i32 %2800, 31
  %2820 = xor i32 %2817, %2819
  %2821 = add nuw nsw i32 %2820, %2817
  %2822 = icmp eq i32 %2821, 2
  %2823 = zext i1 %2822 to i8
  store i8 %2823, i8* %64, align 1
  %2824 = add i64 %2797, 9
  store i64 %2824, i64* %3, align 8
  store i32 %2801, i32* %2799, align 4
  %.pre124 = load i64, i64* %3, align 8
  br label %block_.L_465f70

block_.L_465f70:                                  ; preds = %block_.L_465f2e, %block_465f3d, %block_465f47
  %2825 = phi i64 [ %2769, %block_465f3d ], [ %.pre124, %block_465f47 ], [ %2742, %block_.L_465f2e ]
  %2826 = add i64 %2825, 10
  store i64 %2826, i64* %3, align 8
  br label %block_.L_465f7a

block_.L_465f7a:                                  ; preds = %block_.L_465f70, %block_.L_465ea0
  %2827 = phi i64 [ %2826, %block_.L_465f70 ], [ %2575, %block_.L_465ea0 ]
  %2828 = add i64 %2827, 5
  store i64 %2828, i64* %3, align 8
  br label %block_.L_465f7f

block_.L_465f7f:                                  ; preds = %block_.L_465f7a, %block_465e9b
  %storemerge = phi i64 [ %2532, %block_465e9b ], [ %2828, %block_.L_465f7a ]
  %2829 = load i64, i64* %RBP.i, align 8
  %2830 = add i64 %2829, -512
  %2831 = add i64 %storemerge, 6
  store i64 %2831, i64* %3, align 8
  %2832 = inttoptr i64 %2830 to i32*
  %2833 = load i32, i32* %2832, align 4
  %2834 = add i32 %2833, 1
  %2835 = zext i32 %2834 to i64
  store i64 %2835, i64* %RAX.i1607, align 8
  %2836 = icmp eq i32 %2833, -1
  %2837 = icmp eq i32 %2834, 0
  %2838 = or i1 %2836, %2837
  %2839 = zext i1 %2838 to i8
  store i8 %2839, i8* %40, align 1
  %2840 = and i32 %2834, 255
  %2841 = tail call i32 @llvm.ctpop.i32(i32 %2840)
  %2842 = trunc i32 %2841 to i8
  %2843 = and i8 %2842, 1
  %2844 = xor i8 %2843, 1
  store i8 %2844, i8* %47, align 1
  %2845 = xor i32 %2834, %2833
  %2846 = lshr i32 %2845, 4
  %2847 = trunc i32 %2846 to i8
  %2848 = and i8 %2847, 1
  store i8 %2848, i8* %52, align 1
  %2849 = zext i1 %2837 to i8
  store i8 %2849, i8* %55, align 1
  %2850 = lshr i32 %2834, 31
  %2851 = trunc i32 %2850 to i8
  store i8 %2851, i8* %58, align 1
  %2852 = lshr i32 %2833, 31
  %2853 = xor i32 %2850, %2852
  %2854 = add nuw nsw i32 %2853, %2850
  %2855 = icmp eq i32 %2854, 2
  %2856 = zext i1 %2855 to i8
  store i8 %2856, i8* %64, align 1
  %2857 = add i64 %storemerge, 15
  store i64 %2857, i64* %3, align 8
  store i32 %2834, i32* %2832, align 4
  %2858 = load i64, i64* %3, align 8
  %2859 = add i64 %2858, -304
  store i64 %2859, i64* %3, align 8
  br label %block_.L_465e5e

block_.L_465f93:                                  ; preds = %block_.L_465e5e
  %2860 = add i64 %2489, 10
  store i64 %2860, i64* %3, align 8
  store i32 0, i32* %2456, align 4
  %.pre120 = load i64, i64* %3, align 8
  br label %block_.L_465f9d

block_.L_465f9d:                                  ; preds = %block_.L_465ff4, %block_.L_465f93
  %2861 = phi i64 [ %.pre120, %block_.L_465f93 ], [ %2990, %block_.L_465ff4 ]
  %2862 = load i64, i64* %RBP.i, align 8
  %2863 = add i64 %2862, -512
  %2864 = add i64 %2861, 6
  store i64 %2864, i64* %3, align 8
  %2865 = inttoptr i64 %2863 to i32*
  %2866 = load i32, i32* %2865, align 4
  %2867 = zext i32 %2866 to i64
  store i64 %2867, i64* %RAX.i1607, align 8
  %2868 = add i64 %2862, -560
  %2869 = add i64 %2861, 12
  store i64 %2869, i64* %3, align 8
  %2870 = inttoptr i64 %2868 to i32*
  %2871 = load i32, i32* %2870, align 4
  %2872 = sub i32 %2866, %2871
  %2873 = icmp ult i32 %2866, %2871
  %2874 = zext i1 %2873 to i8
  store i8 %2874, i8* %40, align 1
  %2875 = and i32 %2872, 255
  %2876 = tail call i32 @llvm.ctpop.i32(i32 %2875)
  %2877 = trunc i32 %2876 to i8
  %2878 = and i8 %2877, 1
  %2879 = xor i8 %2878, 1
  store i8 %2879, i8* %47, align 1
  %2880 = xor i32 %2871, %2866
  %2881 = xor i32 %2880, %2872
  %2882 = lshr i32 %2881, 4
  %2883 = trunc i32 %2882 to i8
  %2884 = and i8 %2883, 1
  store i8 %2884, i8* %52, align 1
  %2885 = icmp eq i32 %2872, 0
  %2886 = zext i1 %2885 to i8
  store i8 %2886, i8* %55, align 1
  %2887 = lshr i32 %2872, 31
  %2888 = trunc i32 %2887 to i8
  store i8 %2888, i8* %58, align 1
  %2889 = lshr i32 %2866, 31
  %2890 = lshr i32 %2871, 31
  %2891 = xor i32 %2890, %2889
  %2892 = xor i32 %2887, %2889
  %2893 = add nuw nsw i32 %2892, %2891
  %2894 = icmp eq i32 %2893, 2
  %2895 = zext i1 %2894 to i8
  store i8 %2895, i8* %64, align 1
  %2896 = icmp ne i8 %2888, 0
  %2897 = xor i1 %2896, %2894
  %.v193 = select i1 %2897, i64 18, i64 107
  %2898 = add i64 %2861, %.v193
  store i64 %2898, i64* %3, align 8
  br i1 %2897, label %block_465faf, label %block_.L_466008

block_465faf:                                     ; preds = %block_.L_465f9d
  %2899 = add i64 %2898, 7
  store i64 %2899, i64* %3, align 8
  %2900 = load i32, i32* %2865, align 4
  %2901 = sext i32 %2900 to i64
  store i64 %2901, i64* %RAX.i1607, align 8
  %2902 = shl nsw i64 %2901, 2
  %2903 = add i64 %2862, -656
  %2904 = add i64 %2903, %2902
  %2905 = add i64 %2898, 14
  store i64 %2905, i64* %3, align 8
  %2906 = inttoptr i64 %2904 to i32*
  %2907 = load i32, i32* %2906, align 4
  %2908 = zext i32 %2907 to i64
  store i64 %2908, i64* %RCX.i1583, align 8
  %2909 = add i64 %2862, -668
  %2910 = add i64 %2898, 20
  store i64 %2910, i64* %3, align 8
  %2911 = inttoptr i64 %2909 to i32*
  store i32 %2907, i32* %2911, align 4
  %2912 = load i64, i64* %RBP.i, align 8
  %2913 = add i64 %2912, -668
  %2914 = load i64, i64* %3, align 8
  %2915 = add i64 %2914, 6
  store i64 %2915, i64* %3, align 8
  %2916 = inttoptr i64 %2913 to i32*
  %2917 = load i32, i32* %2916, align 4
  %2918 = zext i32 %2917 to i64
  store i64 %2918, i64* %RDI.i1522.pre-phi, align 8
  %2919 = add i64 %2912, -48
  %2920 = add i64 %2914, 9
  store i64 %2920, i64* %3, align 8
  %2921 = inttoptr i64 %2919 to i32*
  %2922 = load i32, i32* %2921, align 4
  %2923 = zext i32 %2922 to i64
  store i64 %2923, i64* %RSI.i1599, align 8
  %2924 = add i64 %2914, -333075
  %2925 = add i64 %2914, 14
  %2926 = load i64, i64* %6, align 8
  %2927 = add i64 %2926, -8
  %2928 = inttoptr i64 %2927 to i64*
  store i64 %2925, i64* %2928, align 8
  store i64 %2927, i64* %6, align 8
  store i64 %2924, i64* %3, align 8
  %call2_465fcc = tail call %struct.Memory* @sub_414ab0.liberty_of_string(%struct.State* nonnull %0, i64 %2924, %struct.Memory* %call2_465e4f)
  %2929 = load i32, i32* %EAX.i1559, align 4
  %2930 = load i64, i64* %3, align 8
  store i8 0, i8* %40, align 1
  %2931 = and i32 %2929, 255
  %2932 = tail call i32 @llvm.ctpop.i32(i32 %2931)
  %2933 = trunc i32 %2932 to i8
  %2934 = and i8 %2933, 1
  %2935 = xor i8 %2934, 1
  store i8 %2935, i8* %47, align 1
  store i8 0, i8* %52, align 1
  %2936 = icmp eq i32 %2929, 0
  %2937 = zext i1 %2936 to i8
  store i8 %2937, i8* %55, align 1
  %2938 = lshr i32 %2929, 31
  %2939 = trunc i32 %2938 to i8
  store i8 %2939, i8* %58, align 1
  store i8 0, i8* %64, align 1
  %.v194 = select i1 %2936, i64 14, i64 9
  %2940 = add i64 %2930, %.v194
  store i64 %2940, i64* %3, align 8
  br i1 %2936, label %block_.L_465fdf, label %block_465fda

block_465fda:                                     ; preds = %block_465faf
  %2941 = add i64 %2940, 26
  store i64 %2941, i64* %3, align 8
  br label %block_.L_465ff4

block_.L_465fdf:                                  ; preds = %block_465faf
  %2942 = load i64, i64* %RBP.i, align 8
  %2943 = add i64 %2942, -496
  store i64 %2943, i64* %RDX.i1497.pre-phi, align 8
  %2944 = add i64 %2942, -48
  %2945 = add i64 %2940, 10
  store i64 %2945, i64* %3, align 8
  %2946 = inttoptr i64 %2944 to i32*
  %2947 = load i32, i32* %2946, align 4
  %2948 = zext i32 %2947 to i64
  store i64 %2948, i64* %RDI.i1522.pre-phi, align 8
  %2949 = add i64 %2942, -668
  %2950 = add i64 %2940, 16
  store i64 %2950, i64* %3, align 8
  %2951 = inttoptr i64 %2949 to i32*
  %2952 = load i32, i32* %2951, align 4
  %2953 = zext i32 %2952 to i64
  store i64 %2953, i64* %RSI.i1599, align 8
  %2954 = add i64 %2940, 8433
  %2955 = add i64 %2940, 21
  %2956 = load i64, i64* %6, align 8
  %2957 = add i64 %2956, -8
  %2958 = inttoptr i64 %2957 to i64*
  store i64 %2955, i64* %2958, align 8
  store i64 %2957, i64* %6, align 8
  store i64 %2954, i64* %3, align 8
  %call2_465fef = tail call %struct.Memory* @sub_4680d0.special_rescue_moves(%struct.State* nonnull %0, i64 %2954, %struct.Memory* %call2_465e4f)
  %.pre121 = load i64, i64* %3, align 8
  br label %block_.L_465ff4

block_.L_465ff4:                                  ; preds = %block_.L_465fdf, %block_465fda
  %2959 = phi i64 [ %.pre121, %block_.L_465fdf ], [ %2941, %block_465fda ]
  %2960 = load i64, i64* %RBP.i, align 8
  %2961 = add i64 %2960, -512
  %2962 = add i64 %2959, 6
  store i64 %2962, i64* %3, align 8
  %2963 = inttoptr i64 %2961 to i32*
  %2964 = load i32, i32* %2963, align 4
  %2965 = add i32 %2964, 1
  %2966 = zext i32 %2965 to i64
  store i64 %2966, i64* %RAX.i1607, align 8
  %2967 = icmp eq i32 %2964, -1
  %2968 = icmp eq i32 %2965, 0
  %2969 = or i1 %2967, %2968
  %2970 = zext i1 %2969 to i8
  store i8 %2970, i8* %40, align 1
  %2971 = and i32 %2965, 255
  %2972 = tail call i32 @llvm.ctpop.i32(i32 %2971)
  %2973 = trunc i32 %2972 to i8
  %2974 = and i8 %2973, 1
  %2975 = xor i8 %2974, 1
  store i8 %2975, i8* %47, align 1
  %2976 = xor i32 %2965, %2964
  %2977 = lshr i32 %2976, 4
  %2978 = trunc i32 %2977 to i8
  %2979 = and i8 %2978, 1
  store i8 %2979, i8* %52, align 1
  %2980 = zext i1 %2968 to i8
  store i8 %2980, i8* %55, align 1
  %2981 = lshr i32 %2965, 31
  %2982 = trunc i32 %2981 to i8
  store i8 %2982, i8* %58, align 1
  %2983 = lshr i32 %2964, 31
  %2984 = xor i32 %2981, %2983
  %2985 = add nuw nsw i32 %2984, %2981
  %2986 = icmp eq i32 %2985, 2
  %2987 = zext i1 %2986 to i8
  store i8 %2987, i8* %64, align 1
  %2988 = add i64 %2959, 15
  store i64 %2988, i64* %3, align 8
  store i32 %2965, i32* %2963, align 4
  %2989 = load i64, i64* %3, align 8
  %2990 = add i64 %2989, -102
  store i64 %2990, i64* %3, align 8
  br label %block_.L_465f9d

block_.L_466008:                                  ; preds = %block_.L_465f9d
  %2991 = add i64 %2898, 5
  store i64 %2991, i64* %3, align 8
  br label %block_.L_46600d

block_.L_46600d:                                  ; preds = %block_465e25, %block_.L_466008, %block_.L_465e0e
  %2992 = phi i64 [ %2403, %block_.L_465e0e ], [ %2433, %block_465e25 ], [ %2991, %block_.L_466008 ]
  %MEMORY.38 = phi %struct.Memory* [ %call2_465ba3, %block_.L_465e0e ], [ %call2_465ba3, %block_465e25 ], [ %call2_465e4f, %block_.L_466008 ]
  %2993 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*), align 8
  %2994 = zext i32 %2993 to i64
  store i64 %2994, i64* %RAX.i1607, align 8
  %2995 = load i32, i32* bitcast (%G_0xb8af28_type* @G_0xb8af28 to i32*), align 8
  %2996 = sub i32 %2993, %2995
  %2997 = icmp ult i32 %2993, %2995
  %2998 = zext i1 %2997 to i8
  store i8 %2998, i8* %40, align 1
  %2999 = and i32 %2996, 255
  %3000 = tail call i32 @llvm.ctpop.i32(i32 %2999)
  %3001 = trunc i32 %3000 to i8
  %3002 = and i8 %3001, 1
  %3003 = xor i8 %3002, 1
  store i8 %3003, i8* %47, align 1
  %3004 = xor i32 %2995, %2993
  %3005 = xor i32 %3004, %2996
  %3006 = lshr i32 %3005, 4
  %3007 = trunc i32 %3006 to i8
  %3008 = and i8 %3007, 1
  store i8 %3008, i8* %52, align 1
  %3009 = icmp eq i32 %2996, 0
  %3010 = zext i1 %3009 to i8
  store i8 %3010, i8* %55, align 1
  %3011 = lshr i32 %2996, 31
  %3012 = trunc i32 %3011 to i8
  store i8 %3012, i8* %58, align 1
  %3013 = lshr i32 %2993, 31
  %3014 = lshr i32 %2995, 31
  %3015 = xor i32 %3014, %3013
  %3016 = xor i32 %3011, %3013
  %3017 = add nuw nsw i32 %3016, %3015
  %3018 = icmp eq i32 %3017, 2
  %3019 = zext i1 %3018 to i8
  store i8 %3019, i8* %64, align 1
  %3020 = icmp ne i8 %3012, 0
  %3021 = xor i1 %3020, %3018
  %.demorgan159 = or i1 %3009, %3021
  %.v177 = select i1 %.demorgan159, i64 20, i64 35
  %3022 = add i64 %2992, %.v177
  store i64 %3022, i64* %3, align 8
  br i1 %.demorgan159, label %block_466021, label %block_.L_466030

block_466021:                                     ; preds = %block_.L_46600d
  %3023 = load i64, i64* %RBP.i, align 8
  %3024 = add i64 %3023, -496
  store i64 %3024, i64* %RSI.i1599, align 8
  %3025 = add i64 %3023, -48
  %3026 = add i64 %3022, 10
  store i64 %3026, i64* %3, align 8
  %3027 = inttoptr i64 %3025 to i32*
  %3028 = load i32, i32* %3027, align 4
  %3029 = zext i32 %3028 to i64
  store i64 %3029, i64* %RDI.i1522.pre-phi, align 8
  %3030 = add i64 %3022, 11567
  %3031 = add i64 %3022, 15
  %3032 = load i64, i64* %6, align 8
  %3033 = add i64 %3032, -8
  %3034 = inttoptr i64 %3033 to i64*
  store i64 %3031, i64* %3034, align 8
  store i64 %3033, i64* %6, align 8
  store i64 %3030, i64* %3, align 8
  %call2_46602b = tail call %struct.Memory* @sub_468d50.break_chain3_moves(%struct.State* nonnull %0, i64 %3030, %struct.Memory* %MEMORY.38)
  %.pre125 = load i64, i64* %3, align 8
  br label %block_.L_466030

block_.L_466030:                                  ; preds = %block_.L_46600d, %block_466021
  %3035 = phi i64 [ %3022, %block_.L_46600d ], [ %.pre125, %block_466021 ]
  %MEMORY.39 = phi %struct.Memory* [ %MEMORY.38, %block_.L_46600d ], [ %call2_46602b, %block_466021 ]
  %3036 = load i64, i64* %RBP.i, align 8
  %3037 = add i64 %3036, -496
  store i64 %3037, i64* %RSI.i1599, align 8
  %3038 = add i64 %3036, -48
  %3039 = add i64 %3035, 10
  store i64 %3039, i64* %3, align 8
  %3040 = inttoptr i64 %3038 to i32*
  %3041 = load i32, i32* %3040, align 4
  %3042 = zext i32 %3041 to i64
  store i64 %3042, i64* %RDI.i1522.pre-phi, align 8
  %3043 = add i64 %3036, -72
  %3044 = add i64 %3035, 13
  store i64 %3044, i64* %3, align 8
  %3045 = inttoptr i64 %3043 to i32*
  %3046 = load i32, i32* %3045, align 4
  %3047 = zext i32 %3046 to i64
  store i64 %3047, i64* %RDX.i1497.pre-phi, align 8
  %3048 = add i64 %3036, -520
  %3049 = add i64 %3035, 20
  store i64 %3049, i64* %3, align 8
  %3050 = inttoptr i64 %3048 to i64*
  %3051 = load i64, i64* %3050, align 8
  store i64 %3051, i64* %RCX.i1583, align 8
  %3052 = add i64 %3036, -500
  %3053 = add i64 %3035, 27
  store i64 %3053, i64* %3, align 8
  %3054 = inttoptr i64 %3052 to i32*
  %3055 = load i32, i32* %3054, align 4
  %3056 = zext i32 %3055 to i64
  store i64 %3056, i64* %R8.i1605, align 8
  %3057 = add i64 %3035, -13216
  %3058 = add i64 %3035, 32
  %3059 = load i64, i64* %6, align 8
  %3060 = add i64 %3059, -8
  %3061 = inttoptr i64 %3060 to i64*
  store i64 %3058, i64* %3061, align 8
  store i64 %3060, i64* %6, align 8
  store i64 %3057, i64* %3, align 8
  %call2_46604b = tail call %struct.Memory* @sub_462c90.order_moves(%struct.State* nonnull %0, i64 %3057, %struct.Memory* %MEMORY.39)
  %3062 = load i64, i64* %RBP.i, align 8
  %3063 = add i64 %3062, -500
  %3064 = load i64, i64* %3, align 8
  %3065 = add i64 %3064, 6
  store i64 %3065, i64* %3, align 8
  %3066 = inttoptr i64 %3063 to i32*
  %3067 = load i32, i32* %3066, align 4
  %3068 = zext i32 %3067 to i64
  store i64 %3068, i64* %RDX.i1497.pre-phi, align 8
  %3069 = add i64 %3062, -512
  %3070 = add i64 %3064, 12
  store i64 %3070, i64* %3, align 8
  %3071 = inttoptr i64 %3069 to i32*
  store i32 %3067, i32* %3071, align 4
  %.pre126 = load i64, i64* %3, align 8
  br label %block_.L_46605c

block_.L_46605c:                                  ; preds = %block_.L_46629d, %block_.L_466030
  %3072 = phi i64 [ %.pre126, %block_.L_466030 ], [ %3668, %block_.L_46629d ]
  %3073 = load i64, i64* %RBP.i, align 8
  %3074 = add i64 %3073, -512
  %3075 = add i64 %3072, 6
  store i64 %3075, i64* %3, align 8
  %3076 = inttoptr i64 %3074 to i32*
  %3077 = load i32, i32* %3076, align 4
  %3078 = zext i32 %3077 to i64
  store i64 %3078, i64* %RAX.i1607, align 8
  %3079 = add i64 %3073, -96
  %3080 = add i64 %3072, 9
  store i64 %3080, i64* %3, align 8
  %3081 = inttoptr i64 %3079 to i32*
  %3082 = load i32, i32* %3081, align 4
  %3083 = sub i32 %3077, %3082
  %3084 = icmp ult i32 %3077, %3082
  %3085 = zext i1 %3084 to i8
  store i8 %3085, i8* %40, align 1
  %3086 = and i32 %3083, 255
  %3087 = tail call i32 @llvm.ctpop.i32(i32 %3086)
  %3088 = trunc i32 %3087 to i8
  %3089 = and i8 %3088, 1
  %3090 = xor i8 %3089, 1
  store i8 %3090, i8* %47, align 1
  %3091 = xor i32 %3082, %3077
  %3092 = xor i32 %3091, %3083
  %3093 = lshr i32 %3092, 4
  %3094 = trunc i32 %3093 to i8
  %3095 = and i8 %3094, 1
  store i8 %3095, i8* %52, align 1
  %3096 = icmp eq i32 %3083, 0
  %3097 = zext i1 %3096 to i8
  store i8 %3097, i8* %55, align 1
  %3098 = lshr i32 %3083, 31
  %3099 = trunc i32 %3098 to i8
  store i8 %3099, i8* %58, align 1
  %3100 = lshr i32 %3077, 31
  %3101 = lshr i32 %3082, 31
  %3102 = xor i32 %3101, %3100
  %3103 = xor i32 %3098, %3100
  %3104 = add nuw nsw i32 %3103, %3102
  %3105 = icmp eq i32 %3104, 2
  %3106 = zext i1 %3105 to i8
  store i8 %3106, i8* %64, align 1
  %3107 = icmp ne i8 %3099, 0
  %3108 = xor i1 %3107, %3105
  %.v178 = select i1 %3108, i64 15, i64 602
  %3109 = add i64 %3072, %.v178
  store i64 %3109, i64* %3, align 8
  br i1 %3108, label %block_46606b, label %block_.L_4662b6

block_46606b:                                     ; preds = %block_.L_46605c
  store i64 0, i64* %RAX.i1607, align 8
  store i8 0, i8* %40, align 1
  store i8 1, i8* %47, align 1
  store i8 1, i8* %55, align 1
  store i8 0, i8* %58, align 1
  store i8 0, i8* %64, align 1
  store i8 0, i8* %52, align 1
  store i8 0, i8* %CL.i1289, align 1
  %3110 = add i64 %3109, 11
  store i64 %3110, i64* %3, align 8
  %3111 = load i32, i32* %3076, align 4
  %3112 = sext i32 %3111 to i64
  store i64 %3112, i64* %RDX.i1497.pre-phi, align 8
  %3113 = shl nsw i64 %3112, 2
  %3114 = add i64 %3073, -496
  %3115 = add i64 %3114, %3113
  %3116 = add i64 %3109, 18
  store i64 %3116, i64* %3, align 8
  %3117 = inttoptr i64 %3115 to i32*
  %3118 = load i32, i32* %3117, align 4
  %3119 = zext i32 %3118 to i64
  store i64 %3119, i64* %RAX.i1607, align 8
  %3120 = add i64 %3073, -76
  %3121 = add i64 %3109, 21
  store i64 %3121, i64* %3, align 8
  %3122 = inttoptr i64 %3120 to i32*
  store i32 %3118, i32* %3122, align 4
  %3123 = load i64, i64* %RBP.i, align 8
  %3124 = add i64 %3123, -76
  %3125 = load i64, i64* %3, align 8
  %3126 = add i64 %3125, 3
  store i64 %3126, i64* %3, align 8
  %3127 = inttoptr i64 %3124 to i32*
  %3128 = load i32, i32* %3127, align 4
  %3129 = zext i32 %3128 to i64
  store i64 %3129, i64* %RDI.i1522.pre-phi, align 8
  %3130 = add i64 %3123, -68
  %3131 = add i64 %3125, 6
  store i64 %3131, i64* %3, align 8
  %3132 = inttoptr i64 %3130 to i32*
  %3133 = load i32, i32* %3132, align 4
  %3134 = zext i32 %3133 to i64
  store i64 %3134, i64* %RSI.i1599, align 8
  %3135 = add i64 %3123, -48
  %3136 = add i64 %3125, 9
  store i64 %3136, i64* %3, align 8
  %3137 = inttoptr i64 %3135 to i32*
  %3138 = load i32, i32* %3137, align 4
  %3139 = zext i32 %3138 to i64
  store i64 %3139, i64* %RAX.i1607, align 8
  %3140 = add i64 %3123, -60
  %3141 = add i64 %3125, 13
  store i64 %3141, i64* %3, align 8
  %3142 = inttoptr i64 %3140 to i32*
  %3143 = load i32, i32* %3142, align 4
  %3144 = zext i32 %3143 to i64
  store i64 %3144, i64* %R8.i1605, align 8
  %3145 = add i64 %3123, -64
  %3146 = add i64 %3125, 17
  store i64 %3146, i64* %3, align 8
  %3147 = inttoptr i64 %3145 to i32*
  %3148 = load i32, i32* %3147, align 4
  %3149 = zext i32 %3148 to i64
  store i64 %3149, i64* %743, align 8
  %3150 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*), align 8
  %3151 = zext i32 %3150 to i64
  store i64 %3151, i64* %745, align 8
  %3152 = load i32, i32* bitcast (%G_0xb8b850_type* @G_0xb8b850 to i32*), align 8
  %3153 = sub i32 %3150, %3152
  %3154 = icmp ult i32 %3150, %3152
  %3155 = zext i1 %3154 to i8
  store i8 %3155, i8* %40, align 1
  %3156 = and i32 %3153, 255
  %3157 = tail call i32 @llvm.ctpop.i32(i32 %3156)
  %3158 = trunc i32 %3157 to i8
  %3159 = and i8 %3158, 1
  %3160 = xor i8 %3159, 1
  store i8 %3160, i8* %47, align 1
  %3161 = xor i32 %3152, %3150
  %3162 = xor i32 %3161, %3153
  %3163 = lshr i32 %3162, 4
  %3164 = trunc i32 %3163 to i8
  %3165 = and i8 %3164, 1
  store i8 %3165, i8* %52, align 1
  %3166 = icmp eq i32 %3153, 0
  %3167 = zext i1 %3166 to i8
  store i8 %3167, i8* %55, align 1
  %3168 = lshr i32 %3153, 31
  %3169 = trunc i32 %3168 to i8
  store i8 %3169, i8* %58, align 1
  %3170 = lshr i32 %3150, 31
  %3171 = lshr i32 %3152, 31
  %3172 = xor i32 %3171, %3170
  %3173 = xor i32 %3168, %3170
  %3174 = add nuw nsw i32 %3173, %3172
  %3175 = icmp eq i32 %3174, 2
  %3176 = zext i1 %3175 to i8
  store i8 %3176, i8* %64, align 1
  %3177 = add i64 %3123, -816
  %3178 = add i64 %3125, 40
  store i64 %3178, i64* %3, align 8
  %3179 = inttoptr i64 %3177 to i32*
  store i32 %3148, i32* %3179, align 4
  %3180 = load i64, i64* %RBP.i, align 8
  %3181 = add i64 %3180, -820
  %3182 = load i32, i32* %EDI.i1602, align 4
  %3183 = load i64, i64* %3, align 8
  %3184 = add i64 %3183, 6
  store i64 %3184, i64* %3, align 8
  %3185 = inttoptr i64 %3181 to i32*
  store i32 %3182, i32* %3185, align 4
  %3186 = load i64, i64* %RBP.i, align 8
  %3187 = add i64 %3186, -824
  %3188 = load i32, i32* %ESI.i1250, align 4
  %3189 = load i64, i64* %3, align 8
  %3190 = add i64 %3189, 6
  store i64 %3190, i64* %3, align 8
  %3191 = inttoptr i64 %3187 to i32*
  store i32 %3188, i32* %3191, align 4
  %3192 = load i64, i64* %RBP.i, align 8
  %3193 = add i64 %3192, -828
  %3194 = load i32, i32* %EAX.i1559, align 4
  %3195 = load i64, i64* %3, align 8
  %3196 = add i64 %3195, 6
  store i64 %3196, i64* %3, align 8
  %3197 = inttoptr i64 %3193 to i32*
  store i32 %3194, i32* %3197, align 4
  %3198 = load i64, i64* %RBP.i, align 8
  %3199 = add i64 %3198, -832
  %3200 = load i32, i32* %R8D.i1350, align 4
  %3201 = load i64, i64* %3, align 8
  %3202 = add i64 %3201, 7
  store i64 %3202, i64* %3, align 8
  %3203 = inttoptr i64 %3199 to i32*
  store i32 %3200, i32* %3203, align 4
  %3204 = load i64, i64* %RBP.i, align 8
  %3205 = add i64 %3204, -833
  %3206 = load i8, i8* %CL.i1289, align 1
  %3207 = load i64, i64* %3, align 8
  %3208 = add i64 %3207, 6
  store i64 %3208, i64* %3, align 8
  %3209 = inttoptr i64 %3205 to i8*
  store i8 %3206, i8* %3209, align 1
  %3210 = load i64, i64* %3, align 8
  %3211 = add i64 %3210, 22
  %3212 = add i64 %3210, 6
  %3213 = load i8, i8* %55, align 1
  %3214 = icmp eq i8 %3213, 0
  %3215 = load i8, i8* %58, align 1
  %3216 = icmp ne i8 %3215, 0
  %3217 = load i8, i8* %64, align 1
  %3218 = icmp ne i8 %3217, 0
  %3219 = xor i1 %3216, %3218
  %3220 = xor i1 %3219, true
  %3221 = and i1 %3214, %3220
  %3222 = select i1 %3221, i64 %3211, i64 %3212
  store i64 %3222, i64* %3, align 8
  br i1 %3221, label %block_.L_4660dd, label %block_4660cd

block_4660cd:                                     ; preds = %block_46606b
  %3223 = load i64, i64* %RBP.i, align 8
  %3224 = add i64 %3223, -508
  %3225 = add i64 %3222, 7
  store i64 %3225, i64* %3, align 8
  %3226 = inttoptr i64 %3224 to i32*
  %3227 = load i32, i32* %3226, align 4
  store i8 0, i8* %40, align 1
  %3228 = and i32 %3227, 255
  %3229 = tail call i32 @llvm.ctpop.i32(i32 %3228)
  %3230 = trunc i32 %3229 to i8
  %3231 = and i8 %3230, 1
  %3232 = xor i8 %3231, 1
  store i8 %3232, i8* %47, align 1
  store i8 0, i8* %52, align 1
  %3233 = icmp eq i32 %3227, 0
  %3234 = zext i1 %3233 to i8
  store i8 %3234, i8* %55, align 1
  %3235 = lshr i32 %3227, 31
  %3236 = trunc i32 %3235 to i8
  store i8 %3236, i8* %58, align 1
  store i8 0, i8* %64, align 1
  store i8 %3234, i8* %AL.i1288, align 1
  %3237 = add i64 %3223, -833
  %3238 = add i64 %3222, 16
  store i64 %3238, i64* %3, align 8
  %3239 = inttoptr i64 %3237 to i8*
  store i8 %3234, i8* %3239, align 1
  %.pre132 = load i64, i64* %3, align 8
  br label %block_.L_4660dd

block_.L_4660dd:                                  ; preds = %block_4660cd, %block_46606b
  %3240 = phi i64 [ %.pre132, %block_4660cd ], [ %3211, %block_46606b ]
  %3241 = load i64, i64* %RBP.i, align 8
  %3242 = add i64 %3241, -833
  %3243 = add i64 %3240, 6
  store i64 %3243, i64* %3, align 8
  %3244 = inttoptr i64 %3242 to i8*
  %3245 = load i8, i8* %3244, align 1
  store i64 ptrtoint (%G__0x57fccd_type* @G__0x57fccd to i64), i64* %RDX.i1497.pre-phi, align 8
  %3246 = add i64 %3241, -672
  store i64 %3246, i64* %RCX.i1583, align 8
  %3247 = add i64 %3241, -676
  store i64 %3247, i64* %RSI.i1599, align 8
  %3248 = add i64 %3241, -680
  store i64 %3248, i64* %RDI.i1522.pre-phi, align 8
  %3249 = and i8 %3245, 1
  store i8 %3249, i8* %AL.i1288, align 1
  store i8 0, i8* %40, align 1
  %3250 = zext i8 %3249 to i32
  %3251 = tail call i32 @llvm.ctpop.i32(i32 %3250)
  %3252 = trunc i32 %3251 to i8
  %3253 = xor i8 %3252, 1
  store i8 %3253, i8* %47, align 1
  %3254 = xor i8 %3249, 1
  store i8 %3254, i8* %55, align 1
  store i8 0, i8* %58, align 1
  store i8 0, i8* %64, align 1
  store i8 0, i8* %52, align 1
  %3255 = zext i8 %3249 to i64
  store i64 %3255, i64* %R8.i1605, align 8
  %3256 = add i64 %3241, -820
  %3257 = add i64 %3240, 50
  store i64 %3257, i64* %3, align 8
  %3258 = inttoptr i64 %3256 to i32*
  %3259 = load i32, i32* %3258, align 4
  %3260 = zext i32 %3259 to i64
  store i64 %3260, i64* %743, align 8
  %3261 = add i64 %3241, -848
  %3262 = add i64 %3240, 57
  store i64 %3262, i64* %3, align 8
  %3263 = inttoptr i64 %3261 to i64*
  store i64 %3248, i64* %3263, align 8
  %3264 = load i32, i32* %R9D.i1263, align 4
  %3265 = zext i32 %3264 to i64
  %3266 = load i64, i64* %3, align 8
  store i64 %3265, i64* %RDI.i1522.pre-phi, align 8
  %3267 = load i64, i64* %RBP.i, align 8
  %3268 = add i64 %3267, -824
  %3269 = add i64 %3266, 10
  store i64 %3269, i64* %3, align 8
  %3270 = inttoptr i64 %3268 to i32*
  %3271 = load i32, i32* %3270, align 4
  %3272 = zext i32 %3271 to i64
  store i64 %3272, i64* %745, align 8
  %3273 = add i64 %3267, -856
  %3274 = load i64, i64* %RSI.i1599, align 8
  %3275 = add i64 %3266, 17
  store i64 %3275, i64* %3, align 8
  %3276 = inttoptr i64 %3273 to i64*
  store i64 %3274, i64* %3276, align 8
  %3277 = load i32, i32* %R10D.i1261, align 4
  %3278 = zext i32 %3277 to i64
  %3279 = load i64, i64* %3, align 8
  store i64 %3278, i64* %RSI.i1599, align 8
  %3280 = load i64, i64* %RBP.i, align 8
  %3281 = add i64 %3280, -828
  %3282 = add i64 %3279, 10
  store i64 %3282, i64* %3, align 8
  %3283 = inttoptr i64 %3281 to i32*
  %3284 = load i32, i32* %3283, align 4
  %3285 = zext i32 %3284 to i64
  store i64 %3285, i64* %747, align 8
  %3286 = add i64 %3280, -864
  %3287 = load i64, i64* %RCX.i1583, align 8
  %3288 = add i64 %3279, 17
  store i64 %3288, i64* %3, align 8
  %3289 = inttoptr i64 %3286 to i64*
  store i64 %3287, i64* %3289, align 8
  %3290 = load i32, i32* %R11D.i1193, align 4
  %3291 = zext i32 %3290 to i64
  %3292 = load i64, i64* %3, align 8
  store i64 %3291, i64* %RCX.i1583, align 8
  %3293 = load i64, i64* %RBP.i, align 8
  %3294 = add i64 %3293, -832
  %3295 = add i64 %3292, 9
  store i64 %3295, i64* %3, align 8
  %3296 = inttoptr i64 %3294 to i32*
  %3297 = load i32, i32* %3296, align 4
  %3298 = zext i32 %3297 to i64
  store i64 %3298, i64* %RBX.i1611, align 8
  %3299 = add i64 %3293, -868
  %3300 = load i32, i32* %R8D.i1350, align 4
  %3301 = add i64 %3292, 16
  store i64 %3301, i64* %3, align 8
  %3302 = inttoptr i64 %3299 to i32*
  store i32 %3300, i32* %3302, align 4
  %3303 = load i32, i32* %EBX.i1178, align 4
  %3304 = zext i32 %3303 to i64
  %3305 = load i64, i64* %3, align 8
  store i64 %3304, i64* %R8.i1605, align 8
  %3306 = load i64, i64* %RBP.i, align 8
  %3307 = add i64 %3306, -816
  %3308 = add i64 %3305, 10
  store i64 %3308, i64* %3, align 8
  %3309 = inttoptr i64 %3307 to i32*
  %3310 = load i32, i32* %3309, align 4
  %3311 = zext i32 %3310 to i64
  store i64 %3311, i64* %743, align 8
  %3312 = add i64 %3306, -864
  %3313 = add i64 %3305, 17
  store i64 %3313, i64* %3, align 8
  %3314 = inttoptr i64 %3312 to i64*
  %3315 = load i64, i64* %3314, align 8
  store i64 %3315, i64* %R14.i1617, align 8
  %3316 = load i64*, i64** %748, align 8
  %3317 = add i64 %3305, 21
  store i64 %3317, i64* %3, align 8
  store i64 %3315, i64* %3316, align 8
  %3318 = load i64, i64* %RBP.i, align 8
  %3319 = add i64 %3318, -856
  %3320 = load i64, i64* %3, align 8
  %3321 = add i64 %3320, 7
  store i64 %3321, i64* %3, align 8
  %3322 = inttoptr i64 %3319 to i64*
  %3323 = load i64, i64* %3322, align 8
  store i64 %3323, i64* %R15.i1460, align 8
  %3324 = load i64, i64* %6, align 8
  %3325 = add i64 %3324, 8
  %3326 = add i64 %3320, 12
  store i64 %3326, i64* %3, align 8
  %3327 = inttoptr i64 %3325 to i64*
  store i64 %3323, i64* %3327, align 8
  %3328 = load i64, i64* %RBP.i, align 8
  %3329 = add i64 %3328, -848
  %3330 = load i64, i64* %3, align 8
  %3331 = add i64 %3330, 7
  store i64 %3331, i64* %3, align 8
  %3332 = inttoptr i64 %3329 to i64*
  %3333 = load i64, i64* %3332, align 8
  store i64 %3333, i64* %R12.i1613, align 8
  %3334 = load i64, i64* %6, align 8
  %3335 = add i64 %3334, 16
  %3336 = add i64 %3330, 12
  store i64 %3336, i64* %3, align 8
  %3337 = inttoptr i64 %3335 to i64*
  store i64 %3333, i64* %3337, align 8
  %3338 = load i64, i64* %RBP.i, align 8
  %3339 = add i64 %3338, -868
  %3340 = load i64, i64* %3, align 8
  %3341 = add i64 %3340, 7
  store i64 %3341, i64* %3, align 8
  %3342 = inttoptr i64 %3339 to i32*
  %3343 = load i32, i32* %3342, align 4
  %3344 = zext i32 %3343 to i64
  store i64 %3344, i64* %R13.i1615, align 8
  %3345 = load i64, i64* %6, align 8
  %3346 = add i64 %3345, 24
  %3347 = add i64 %3340, 12
  store i64 %3347, i64* %3, align 8
  %3348 = inttoptr i64 %3346 to i32*
  store i32 %3343, i32* %3348, align 4
  %3349 = load i64, i64* %3, align 8
  %3350 = add i64 %3349, -357265
  %3351 = add i64 %3349, 5
  %3352 = load i64, i64* %6, align 8
  %3353 = add i64 %3352, -8
  %3354 = inttoptr i64 %3353 to i64*
  store i64 %3351, i64* %3354, align 8
  store i64 %3353, i64* %6, align 8
  store i64 %3350, i64* %3, align 8
  %call2_466181 = tail call %struct.Memory* @sub_40edf0.komaster_trymove(%struct.State* nonnull %0, i64 %3350, %struct.Memory* %call2_46604b)
  %3355 = load i32, i32* %EAX.i1559, align 4
  %3356 = load i64, i64* %3, align 8
  store i8 0, i8* %40, align 1
  %3357 = and i32 %3355, 255
  %3358 = tail call i32 @llvm.ctpop.i32(i32 %3357)
  %3359 = trunc i32 %3358 to i8
  %3360 = and i8 %3359, 1
  %3361 = xor i8 %3360, 1
  store i8 %3361, i8* %47, align 1
  store i8 0, i8* %52, align 1
  %3362 = icmp eq i32 %3355, 0
  %3363 = zext i1 %3362 to i8
  store i8 %3363, i8* %55, align 1
  %3364 = lshr i32 %3355, 31
  %3365 = trunc i32 %3364 to i8
  store i8 %3365, i8* %58, align 1
  store i8 0, i8* %64, align 1
  %.v185 = select i1 %3362, i64 279, i64 9
  %3366 = add i64 %3356, %.v185
  store i64 %3366, i64* %3, align 8
  br i1 %3362, label %block_.L_46629d, label %block_46618f

block_46618f:                                     ; preds = %block_.L_4660dd
  %3367 = load i64, i64* %RBP.i, align 8
  %3368 = add i64 %3367, -680
  %3369 = add i64 %3366, 7
  store i64 %3369, i64* %3, align 8
  %3370 = inttoptr i64 %3368 to i32*
  %3371 = load i32, i32* %3370, align 4
  %3372 = icmp eq i32 %3371, 0
  %.v186 = select i1 %3372, i64 13, i64 208
  %3373 = add i64 %3366, %.v186
  store i64 0, i64* %RAX.i1607, align 8
  store i8 0, i8* %40, align 1
  store i8 1, i8* %47, align 1
  store i8 1, i8* %55, align 1
  store i8 0, i8* %58, align 1
  store i8 0, i8* %64, align 1
  store i8 0, i8* %52, align 1
  store i64 0, i64* %RSI.i1599, align 8
  %3374 = add i64 %3367, -48
  %3375 = add i64 %3373, 7
  store i64 %3375, i64* %3, align 8
  %3376 = inttoptr i64 %3374 to i32*
  %3377 = load i32, i32* %3376, align 4
  %3378 = zext i32 %3377 to i64
  store i64 %3378, i64* %RDI.i1522.pre-phi, align 8
  %3379 = add i64 %3367, -672
  %3380 = add i64 %3373, 13
  store i64 %3380, i64* %3, align 8
  %3381 = inttoptr i64 %3379 to i32*
  %3382 = load i32, i32* %3381, align 4
  %3383 = zext i32 %3382 to i64
  store i64 %3383, i64* %RDX.i1497.pre-phi, align 8
  %3384 = add i64 %3367, -676
  %3385 = add i64 %3373, 19
  store i64 %3385, i64* %3, align 8
  %3386 = inttoptr i64 %3384 to i32*
  %3387 = load i32, i32* %3386, align 4
  %3388 = zext i32 %3387 to i64
  store i64 %3388, i64* %RCX.i1583, align 8
  br i1 %3372, label %block_46619c, label %block_.L_46625f

block_46619c:                                     ; preds = %block_46618f
  %3389 = add i64 %3373, -33980
  %3390 = add i64 %3373, 24
  %3391 = load i64, i64* %6, align 8
  %3392 = add i64 %3391, -8
  %3393 = inttoptr i64 %3392 to i64*
  store i64 %3390, i64* %3393, align 8
  store i64 %3392, i64* %6, align 8
  store i64 %3389, i64* %3, align 8
  %call2_4661af = tail call %struct.Memory* @sub_45dce0.do_attack(%struct.State* nonnull %0, i64 %3389, %struct.Memory* %call2_46604b)
  %3394 = load i64, i64* %RBP.i, align 8
  %3395 = add i64 %3394, -684
  %3396 = load i32, i32* %EAX.i1559, align 4
  %3397 = load i64, i64* %3, align 8
  %3398 = add i64 %3397, 6
  store i64 %3398, i64* %3, align 8
  %3399 = inttoptr i64 %3395 to i32*
  store i32 %3396, i32* %3399, align 4
  %3400 = load i64, i64* %3, align 8
  %3401 = add i64 %3400, -361562
  %3402 = add i64 %3400, 5
  %3403 = load i64, i64* %6, align 8
  %3404 = add i64 %3403, -8
  %3405 = inttoptr i64 %3404 to i64*
  store i64 %3402, i64* %3405, align 8
  store i64 %3404, i64* %6, align 8
  store i64 %3401, i64* %3, align 8
  %call2_4661ba = tail call %struct.Memory* @sub_40dd60.popgo(%struct.State* nonnull %0, i64 %3401, %struct.Memory* %call2_46604b)
  %3406 = load i64, i64* %RBP.i, align 8
  %3407 = add i64 %3406, -684
  %3408 = load i64, i64* %3, align 8
  %3409 = add i64 %3408, 7
  store i64 %3409, i64* %3, align 8
  %3410 = inttoptr i64 %3407 to i32*
  %3411 = load i32, i32* %3410, align 4
  store i8 0, i8* %40, align 1
  %3412 = and i32 %3411, 255
  %3413 = tail call i32 @llvm.ctpop.i32(i32 %3412)
  %3414 = trunc i32 %3413 to i8
  %3415 = and i8 %3414, 1
  %3416 = xor i8 %3415, 1
  store i8 %3416, i8* %47, align 1
  store i8 0, i8* %52, align 1
  %3417 = icmp eq i32 %3411, 0
  %3418 = zext i1 %3417 to i8
  store i8 %3418, i8* %55, align 1
  %3419 = lshr i32 %3411, 31
  %3420 = trunc i32 %3419 to i8
  store i8 %3420, i8* %58, align 1
  store i8 0, i8* %64, align 1
  %.v188 = select i1 %3417, i64 13, i64 96
  %3421 = add i64 %3408, %.v188
  store i64 %3421, i64* %3, align 8
  br i1 %3417, label %block_4661cc, label %block_.L_46621f

block_4661cc:                                     ; preds = %block_46619c
  %3422 = add i64 %3406, -56
  %3423 = add i64 %3421, 5
  store i64 %3423, i64* %3, align 8
  %3424 = inttoptr i64 %3422 to i64*
  %3425 = load i64, i64* %3424, align 8
  store i8 0, i8* %40, align 1
  %3426 = trunc i64 %3425 to i32
  %3427 = and i32 %3426, 255
  %3428 = tail call i32 @llvm.ctpop.i32(i32 %3427)
  %3429 = trunc i32 %3428 to i8
  %3430 = and i8 %3429, 1
  %3431 = xor i8 %3430, 1
  store i8 %3431, i8* %47, align 1
  store i8 0, i8* %52, align 1
  %3432 = icmp eq i64 %3425, 0
  %3433 = zext i1 %3432 to i8
  store i8 %3433, i8* %55, align 1
  %3434 = lshr i64 %3425, 63
  %3435 = trunc i64 %3434 to i8
  store i8 %3435, i8* %58, align 1
  store i8 0, i8* %64, align 1
  %.v190 = select i1 %3432, i64 20, i64 11
  %3436 = add i64 %3421, %.v190
  store i64 %3436, i64* %3, align 8
  br i1 %3432, label %block_.L_4661e0, label %block_4661d7

block_4661d7:                                     ; preds = %block_4661cc
  %3437 = add i64 %3406, -76
  %3438 = add i64 %3436, 3
  store i64 %3438, i64* %3, align 8
  %3439 = inttoptr i64 %3437 to i32*
  %3440 = load i32, i32* %3439, align 4
  %3441 = zext i32 %3440 to i64
  store i64 %3441, i64* %RAX.i1607, align 8
  %3442 = add i64 %3436, 7
  store i64 %3442, i64* %3, align 8
  %3443 = load i64, i64* %3424, align 8
  store i64 %3443, i64* %RCX.i1583, align 8
  %3444 = add i64 %3436, 9
  store i64 %3444, i64* %3, align 8
  %3445 = inttoptr i64 %3443 to i32*
  store i32 %3440, i32* %3445, align 4
  %.pre133 = load i64, i64* %3, align 8
  br label %block_.L_4661e0

block_.L_4661e0:                                  ; preds = %block_4661d7, %block_4661cc
  %3446 = phi i64 [ %.pre133, %block_4661d7 ], [ %3436, %block_4661cc ]
  %3447 = load i64, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*), align 8
  store i8 0, i8* %40, align 1
  %3448 = trunc i64 %3447 to i32
  %3449 = and i32 %3448, 255
  %3450 = tail call i32 @llvm.ctpop.i32(i32 %3449)
  %3451 = trunc i32 %3450 to i8
  %3452 = and i8 %3451, 1
  %3453 = xor i8 %3452, 1
  store i8 %3453, i8* %47, align 1
  store i8 0, i8* %52, align 1
  %3454 = icmp eq i64 %3447, 0
  %3455 = zext i1 %3454 to i8
  store i8 %3455, i8* %55, align 1
  %3456 = lshr i64 %3447, 63
  %3457 = trunc i64 %3456 to i8
  store i8 %3457, i8* %58, align 1
  store i8 0, i8* %64, align 1
  %.v191 = select i1 %3454, i64 51, i64 15
  %3458 = add i64 %3446, %.v191
  store i64 %3458, i64* %3, align 8
  br i1 %3454, label %block_.L_466213, label %block_4661ef

block_4661ef:                                     ; preds = %block_.L_4661e0
  store i64 5, i64* %RCX.i1583, align 8
  store i64 ptrtoint (%G__0x57fc87_type* @G__0x57fc87 to i64), i64* %R8.i1605, align 8
  %3459 = load i64, i64* %RBP.i, align 8
  %3460 = add i64 %3459, -520
  %3461 = add i64 %3458, 22
  store i64 %3461, i64* %3, align 8
  %3462 = inttoptr i64 %3460 to i64*
  %3463 = load i64, i64* %3462, align 8
  store i64 %3463, i64* %RDI.i1522.pre-phi, align 8
  %3464 = add i64 %3459, -524
  %3465 = add i64 %3458, 28
  store i64 %3465, i64* %3, align 8
  %3466 = inttoptr i64 %3464 to i32*
  %3467 = load i32, i32* %3466, align 4
  %3468 = zext i32 %3467 to i64
  store i64 %3468, i64* %RSI.i1599, align 8
  %3469 = add i64 %3459, -76
  %3470 = add i64 %3458, 31
  store i64 %3470, i64* %3, align 8
  %3471 = inttoptr i64 %3469 to i32*
  %3472 = load i32, i32* %3471, align 4
  %3473 = zext i32 %3472 to i64
  store i64 %3473, i64* %RDX.i1497.pre-phi, align 8
  %3474 = add i64 %3458, -320047
  %3475 = add i64 %3458, 36
  %3476 = load i64, i64* %6, align 8
  %3477 = add i64 %3476, -8
  %3478 = inttoptr i64 %3477 to i64*
  store i64 %3475, i64* %3478, align 8
  store i64 %3477, i64* %6, align 8
  store i64 %3474, i64* %3, align 8
  %call2_46620e = tail call %struct.Memory* @sub_417fc0.sgf_trace(%struct.State* nonnull %0, i64 %3474, %struct.Memory* %call2_46604b)
  %.pre134 = load i64, i64* %3, align 8
  br label %block_.L_466213

block_.L_466213:                                  ; preds = %block_4661ef, %block_.L_4661e0
  %3479 = phi i64 [ %3458, %block_.L_4661e0 ], [ %.pre134, %block_4661ef ]
  %MEMORY.43 = phi %struct.Memory* [ %call2_46604b, %block_.L_4661e0 ], [ %call2_46620e, %block_4661ef ]
  %3480 = load i64, i64* %RBP.i, align 8
  %3481 = add i64 %3480, -44
  %3482 = add i64 %3479, 7
  store i64 %3482, i64* %3, align 8
  %3483 = inttoptr i64 %3481 to i32*
  store i32 5, i32* %3483, align 4
  %3484 = load i64, i64* %3, align 8
  %3485 = add i64 %3484, 389
  store i64 %3485, i64* %3, align 8
  br label %block_.L_46639f

block_.L_46621f:                                  ; preds = %block_46619c
  store i64 5, i64* %RAX.i1607, align 8
  %3486 = add i64 %3421, 11
  store i64 %3486, i64* %3, align 8
  %3487 = load i32, i32* %3410, align 4
  %3488 = sub i32 5, %3487
  %3489 = zext i32 %3488 to i64
  store i64 %3489, i64* %RAX.i1607, align 8
  %3490 = icmp ugt i32 %3487, 5
  %3491 = zext i1 %3490 to i8
  store i8 %3491, i8* %40, align 1
  %3492 = and i32 %3488, 255
  %3493 = tail call i32 @llvm.ctpop.i32(i32 %3492)
  %3494 = trunc i32 %3493 to i8
  %3495 = and i8 %3494, 1
  %3496 = xor i8 %3495, 1
  store i8 %3496, i8* %47, align 1
  %3497 = xor i32 %3488, %3487
  %3498 = lshr i32 %3497, 4
  %3499 = trunc i32 %3498 to i8
  %3500 = and i8 %3499, 1
  store i8 %3500, i8* %52, align 1
  %3501 = icmp eq i32 %3488, 0
  %3502 = zext i1 %3501 to i8
  store i8 %3502, i8* %55, align 1
  %3503 = lshr i32 %3488, 31
  %3504 = trunc i32 %3503 to i8
  store i8 %3504, i8* %58, align 1
  %3505 = lshr i32 %3487, 31
  %3506 = add nuw nsw i32 %3503, %3505
  %3507 = icmp eq i32 %3506, 2
  %3508 = zext i1 %3507 to i8
  store i8 %3508, i8* %64, align 1
  %3509 = add i64 %3406, -508
  %3510 = add i64 %3421, 17
  store i64 %3510, i64* %3, align 8
  %3511 = inttoptr i64 %3509 to i32*
  %3512 = load i32, i32* %3511, align 4
  %3513 = sub i32 %3488, %3512
  %3514 = icmp ult i32 %3488, %3512
  %3515 = zext i1 %3514 to i8
  store i8 %3515, i8* %40, align 1
  %3516 = and i32 %3513, 255
  %3517 = tail call i32 @llvm.ctpop.i32(i32 %3516)
  %3518 = trunc i32 %3517 to i8
  %3519 = and i8 %3518, 1
  %3520 = xor i8 %3519, 1
  store i8 %3520, i8* %47, align 1
  %3521 = xor i32 %3512, %3488
  %3522 = xor i32 %3521, %3513
  %3523 = lshr i32 %3522, 4
  %3524 = trunc i32 %3523 to i8
  %3525 = and i8 %3524, 1
  store i8 %3525, i8* %52, align 1
  %3526 = icmp eq i32 %3513, 0
  %3527 = zext i1 %3526 to i8
  store i8 %3527, i8* %55, align 1
  %3528 = lshr i32 %3513, 31
  %3529 = trunc i32 %3528 to i8
  store i8 %3529, i8* %58, align 1
  %3530 = lshr i32 %3512, 31
  %3531 = xor i32 %3530, %3503
  %3532 = xor i32 %3528, %3503
  %3533 = add nuw nsw i32 %3532, %3531
  %3534 = icmp eq i32 %3533, 2
  %3535 = zext i1 %3534 to i8
  store i8 %3535, i8* %64, align 1
  %3536 = icmp ne i8 %3529, 0
  %3537 = xor i1 %3536, %3534
  %3538 = or i1 %3526, %3537
  %.v189 = select i1 %3538, i64 49, i64 23
  %3539 = add i64 %3421, %.v189
  store i64 %3539, i64* %3, align 8
  br i1 %3538, label %block_.L_466250, label %block_466236

block_466236:                                     ; preds = %block_.L_46621f
  store i64 5, i64* %RAX.i1607, align 8
  %3540 = add i64 %3406, -76
  %3541 = add i64 %3539, 8
  store i64 %3541, i64* %3, align 8
  %3542 = inttoptr i64 %3540 to i32*
  %3543 = load i32, i32* %3542, align 4
  %3544 = zext i32 %3543 to i64
  store i64 %3544, i64* %RCX.i1583, align 8
  %3545 = add i64 %3406, -504
  %3546 = add i64 %3539, 14
  store i64 %3546, i64* %3, align 8
  %3547 = inttoptr i64 %3545 to i32*
  store i32 %3543, i32* %3547, align 4
  %3548 = load i64, i64* %RAX.i1607, align 8
  %3549 = load i64, i64* %RBP.i, align 8
  %3550 = add i64 %3549, -684
  %3551 = load i64, i64* %3, align 8
  %3552 = add i64 %3551, 6
  store i64 %3552, i64* %3, align 8
  %3553 = trunc i64 %3548 to i32
  %3554 = inttoptr i64 %3550 to i32*
  %3555 = load i32, i32* %3554, align 4
  %3556 = sub i32 %3553, %3555
  %3557 = zext i32 %3556 to i64
  store i64 %3557, i64* %RAX.i1607, align 8
  %3558 = icmp ult i32 %3553, %3555
  %3559 = zext i1 %3558 to i8
  store i8 %3559, i8* %40, align 1
  %3560 = and i32 %3556, 255
  %3561 = tail call i32 @llvm.ctpop.i32(i32 %3560)
  %3562 = trunc i32 %3561 to i8
  %3563 = and i8 %3562, 1
  %3564 = xor i8 %3563, 1
  store i8 %3564, i8* %47, align 1
  %3565 = xor i32 %3555, %3553
  %3566 = xor i32 %3565, %3556
  %3567 = lshr i32 %3566, 4
  %3568 = trunc i32 %3567 to i8
  %3569 = and i8 %3568, 1
  store i8 %3569, i8* %52, align 1
  %3570 = icmp eq i32 %3556, 0
  %3571 = zext i1 %3570 to i8
  store i8 %3571, i8* %55, align 1
  %3572 = lshr i32 %3556, 31
  %3573 = trunc i32 %3572 to i8
  store i8 %3573, i8* %58, align 1
  %3574 = lshr i32 %3553, 31
  %3575 = lshr i32 %3555, 31
  %3576 = xor i32 %3575, %3574
  %3577 = xor i32 %3572, %3574
  %3578 = add nuw nsw i32 %3577, %3576
  %3579 = icmp eq i32 %3578, 2
  %3580 = zext i1 %3579 to i8
  store i8 %3580, i8* %64, align 1
  %3581 = add i64 %3549, -508
  %3582 = add i64 %3551, 12
  store i64 %3582, i64* %3, align 8
  %3583 = inttoptr i64 %3581 to i32*
  store i32 %3556, i32* %3583, align 4
  %.pre135 = load i64, i64* %3, align 8
  br label %block_.L_466250

block_.L_466250:                                  ; preds = %block_466236, %block_.L_46621f
  %3584 = phi i64 [ %.pre135, %block_466236 ], [ %3539, %block_.L_46621f ]
  %3585 = add i64 %3584, 72
  store i64 %3585, i64* %3, align 8
  br label %block_.L_466298

block_.L_46625f:                                  ; preds = %block_46618f
  %3586 = add i64 %3373, -34175
  %3587 = add i64 %3373, 24
  %3588 = load i64, i64* %6, align 8
  %3589 = add i64 %3588, -8
  %3590 = inttoptr i64 %3589 to i64*
  store i64 %3587, i64* %3590, align 8
  store i64 %3589, i64* %6, align 8
  store i64 %3586, i64* %3, align 8
  %call2_466272 = tail call %struct.Memory* @sub_45dce0.do_attack(%struct.State* nonnull %0, i64 %3586, %struct.Memory* %call2_46604b)
  %3591 = load i32, i32* %EAX.i1559, align 4
  %3592 = load i64, i64* %3, align 8
  %3593 = add i32 %3591, -5
  %3594 = icmp ult i32 %3591, 5
  %3595 = zext i1 %3594 to i8
  store i8 %3595, i8* %40, align 1
  %3596 = and i32 %3593, 255
  %3597 = tail call i32 @llvm.ctpop.i32(i32 %3596)
  %3598 = trunc i32 %3597 to i8
  %3599 = and i8 %3598, 1
  %3600 = xor i8 %3599, 1
  store i8 %3600, i8* %47, align 1
  %3601 = xor i32 %3593, %3591
  %3602 = lshr i32 %3601, 4
  %3603 = trunc i32 %3602 to i8
  %3604 = and i8 %3603, 1
  store i8 %3604, i8* %52, align 1
  %3605 = icmp eq i32 %3593, 0
  %3606 = zext i1 %3605 to i8
  store i8 %3606, i8* %55, align 1
  %3607 = lshr i32 %3593, 31
  %3608 = trunc i32 %3607 to i8
  store i8 %3608, i8* %58, align 1
  %3609 = lshr i32 %3591, 31
  %3610 = xor i32 %3607, %3609
  %3611 = add nuw nsw i32 %3610, %3609
  %3612 = icmp eq i32 %3611, 2
  %3613 = zext i1 %3612 to i8
  store i8 %3613, i8* %64, align 1
  %.v187 = select i1 %3605, i64 28, i64 9
  %3614 = add i64 %3592, %.v187
  store i64 %3614, i64* %3, align 8
  br i1 %3605, label %block_.L_466293, label %block_466280

block_466280:                                     ; preds = %block_.L_46625f
  %3615 = load i64, i64* %RBP.i, align 8
  %3616 = add i64 %3615, -76
  %3617 = add i64 %3614, 3
  store i64 %3617, i64* %3, align 8
  %3618 = inttoptr i64 %3616 to i32*
  %3619 = load i32, i32* %3618, align 4
  %3620 = zext i32 %3619 to i64
  store i64 %3620, i64* %RAX.i1607, align 8
  %3621 = add i64 %3615, -504
  %3622 = add i64 %3614, 9
  store i64 %3622, i64* %3, align 8
  %3623 = inttoptr i64 %3621 to i32*
  store i32 %3619, i32* %3623, align 4
  %3624 = load i64, i64* %RBP.i, align 8
  %3625 = add i64 %3624, -508
  %3626 = load i64, i64* %3, align 8
  %3627 = add i64 %3626, 10
  store i64 %3627, i64* %3, align 8
  %3628 = inttoptr i64 %3625 to i32*
  store i32 1, i32* %3628, align 4
  %.pre136 = load i64, i64* %3, align 8
  br label %block_.L_466293

block_.L_466293:                                  ; preds = %block_466280, %block_.L_46625f
  %3629 = phi i64 [ %.pre136, %block_466280 ], [ %3614, %block_.L_46625f ]
  %3630 = add i64 %3629, -361779
  %3631 = add i64 %3629, 5
  %3632 = load i64, i64* %6, align 8
  %3633 = add i64 %3632, -8
  %3634 = inttoptr i64 %3633 to i64*
  store i64 %3631, i64* %3634, align 8
  store i64 %3633, i64* %6, align 8
  store i64 %3630, i64* %3, align 8
  %call2_466293 = tail call %struct.Memory* @sub_40dd60.popgo(%struct.State* nonnull %0, i64 %3630, %struct.Memory* %call2_46604b)
  %.pre137 = load i64, i64* %3, align 8
  br label %block_.L_466298

block_.L_466298:                                  ; preds = %block_.L_466293, %block_.L_466250
  %3635 = phi i64 [ %.pre137, %block_.L_466293 ], [ %3585, %block_.L_466250 ]
  %3636 = add i64 %3635, 5
  store i64 %3636, i64* %3, align 8
  br label %block_.L_46629d

block_.L_46629d:                                  ; preds = %block_.L_466298, %block_.L_4660dd
  %3637 = phi i64 [ %3636, %block_.L_466298 ], [ %3366, %block_.L_4660dd ]
  %3638 = load i64, i64* %RBP.i, align 8
  %3639 = add i64 %3638, -512
  %3640 = add i64 %3637, 11
  store i64 %3640, i64* %3, align 8
  %3641 = inttoptr i64 %3639 to i32*
  %3642 = load i32, i32* %3641, align 4
  %3643 = add i32 %3642, 1
  %3644 = zext i32 %3643 to i64
  store i64 %3644, i64* %RAX.i1607, align 8
  %3645 = icmp eq i32 %3642, -1
  %3646 = icmp eq i32 %3643, 0
  %3647 = or i1 %3645, %3646
  %3648 = zext i1 %3647 to i8
  store i8 %3648, i8* %40, align 1
  %3649 = and i32 %3643, 255
  %3650 = tail call i32 @llvm.ctpop.i32(i32 %3649)
  %3651 = trunc i32 %3650 to i8
  %3652 = and i8 %3651, 1
  %3653 = xor i8 %3652, 1
  store i8 %3653, i8* %47, align 1
  %3654 = xor i32 %3643, %3642
  %3655 = lshr i32 %3654, 4
  %3656 = trunc i32 %3655 to i8
  %3657 = and i8 %3656, 1
  store i8 %3657, i8* %52, align 1
  %3658 = zext i1 %3646 to i8
  store i8 %3658, i8* %55, align 1
  %3659 = lshr i32 %3643, 31
  %3660 = trunc i32 %3659 to i8
  store i8 %3660, i8* %58, align 1
  %3661 = lshr i32 %3642, 31
  %3662 = xor i32 %3659, %3661
  %3663 = add nuw nsw i32 %3662, %3659
  %3664 = icmp eq i32 %3663, 2
  %3665 = zext i1 %3664 to i8
  store i8 %3665, i8* %64, align 1
  %3666 = add i64 %3637, 20
  store i64 %3666, i64* %3, align 8
  store i32 %3643, i32* %3641, align 4
  %3667 = load i64, i64* %3, align 8
  %3668 = add i64 %3667, -597
  store i64 %3668, i64* %3, align 8
  br label %block_.L_46605c

block_.L_4662b6:                                  ; preds = %block_.L_46605c
  %3669 = add i64 %3073, -508
  %3670 = add i64 %3109, 7
  store i64 %3670, i64* %3, align 8
  %3671 = inttoptr i64 %3669 to i32*
  %3672 = load i32, i32* %3671, align 4
  store i8 0, i8* %40, align 1
  %3673 = and i32 %3672, 255
  %3674 = tail call i32 @llvm.ctpop.i32(i32 %3673)
  %3675 = trunc i32 %3674 to i8
  %3676 = and i8 %3675, 1
  %3677 = xor i8 %3676, 1
  store i8 %3677, i8* %47, align 1
  store i8 0, i8* %52, align 1
  %3678 = icmp eq i32 %3672, 0
  %3679 = zext i1 %3678 to i8
  store i8 %3679, i8* %55, align 1
  %3680 = lshr i32 %3672, 31
  %3681 = trunc i32 %3680 to i8
  store i8 %3681, i8* %58, align 1
  store i8 0, i8* %64, align 1
  %.v179 = select i1 %3678, i64 177, i64 13
  %3682 = add i64 %3109, %.v179
  %3683 = add i64 %3682, 5
  store i64 %3683, i64* %3, align 8
  br i1 %3678, label %block_.L_46636c, label %block_.L_4662c8

block_.L_4662c8:                                  ; preds = %block_.L_4662b6
  %3684 = add i64 %3682, 12
  store i64 %3684, i64* %3, align 8
  %3685 = load i32, i32* %3671, align 4
  store i8 0, i8* %40, align 1
  %3686 = and i32 %3685, 255
  %3687 = tail call i32 @llvm.ctpop.i32(i32 %3686)
  %3688 = trunc i32 %3687 to i8
  %3689 = and i8 %3688, 1
  %3690 = xor i8 %3689, 1
  store i8 %3690, i8* %47, align 1
  store i8 0, i8* %52, align 1
  %3691 = icmp eq i32 %3685, 0
  %3692 = zext i1 %3691 to i8
  store i8 %3692, i8* %55, align 1
  %3693 = lshr i32 %3685, 31
  %3694 = trunc i32 %3693 to i8
  store i8 %3694, i8* %58, align 1
  store i8 0, i8* %64, align 1
  %.v180 = select i1 %3691, i64 101, i64 18
  %3695 = add i64 %3682, %.v180
  store i64 %3695, i64* %3, align 8
  br i1 %3691, label %block_.L_466328, label %block_4662d5

block_4662d5:                                     ; preds = %block_.L_4662c8
  %3696 = add i64 %3073, -56
  %3697 = add i64 %3695, 5
  store i64 %3697, i64* %3, align 8
  %3698 = inttoptr i64 %3696 to i64*
  %3699 = load i64, i64* %3698, align 8
  store i8 0, i8* %40, align 1
  %3700 = trunc i64 %3699 to i32
  %3701 = and i32 %3700, 255
  %3702 = tail call i32 @llvm.ctpop.i32(i32 %3701)
  %3703 = trunc i32 %3702 to i8
  %3704 = and i8 %3703, 1
  %3705 = xor i8 %3704, 1
  store i8 %3705, i8* %47, align 1
  store i8 0, i8* %52, align 1
  %3706 = icmp eq i64 %3699, 0
  %3707 = zext i1 %3706 to i8
  store i8 %3707, i8* %55, align 1
  %3708 = lshr i64 %3699, 63
  %3709 = trunc i64 %3708 to i8
  store i8 %3709, i8* %58, align 1
  store i8 0, i8* %64, align 1
  %.v181 = select i1 %3706, i64 23, i64 11
  %3710 = add i64 %3695, %.v181
  store i64 %3710, i64* %3, align 8
  br i1 %3706, label %block_.L_4662ec, label %block_4662e0

block_4662e0:                                     ; preds = %block_4662d5
  %3711 = add i64 %3073, -504
  %3712 = add i64 %3710, 6
  store i64 %3712, i64* %3, align 8
  %3713 = inttoptr i64 %3711 to i32*
  %3714 = load i32, i32* %3713, align 4
  %3715 = zext i32 %3714 to i64
  store i64 %3715, i64* %RAX.i1607, align 8
  %3716 = add i64 %3710, 10
  store i64 %3716, i64* %3, align 8
  %3717 = load i64, i64* %3698, align 8
  store i64 %3717, i64* %RCX.i1583, align 8
  %3718 = add i64 %3710, 12
  store i64 %3718, i64* %3, align 8
  %3719 = inttoptr i64 %3717 to i32*
  store i32 %3714, i32* %3719, align 4
  %.pre127 = load i64, i64* %3, align 8
  br label %block_.L_4662ec

block_.L_4662ec:                                  ; preds = %block_4662e0, %block_4662d5
  %3720 = phi i64 [ %.pre127, %block_4662e0 ], [ %3710, %block_4662d5 ]
  %3721 = load i64, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*), align 8
  store i8 0, i8* %40, align 1
  %3722 = trunc i64 %3721 to i32
  %3723 = and i32 %3722, 255
  %3724 = tail call i32 @llvm.ctpop.i32(i32 %3723)
  %3725 = trunc i32 %3724 to i8
  %3726 = and i8 %3725, 1
  %3727 = xor i8 %3726, 1
  store i8 %3727, i8* %47, align 1
  store i8 0, i8* %52, align 1
  %3728 = icmp eq i64 %3721, 0
  %3729 = zext i1 %3728 to i8
  store i8 %3729, i8* %55, align 1
  %3730 = lshr i64 %3721, 63
  %3731 = trunc i64 %3730 to i8
  store i8 %3731, i8* %58, align 1
  store i8 0, i8* %64, align 1
  %.v182 = select i1 %3728, i64 55, i64 15
  %3732 = add i64 %3720, %.v182
  store i64 %3732, i64* %3, align 8
  br i1 %3728, label %block_.L_466323, label %block_4662fb

block_4662fb:                                     ; preds = %block_.L_4662ec
  store i64 ptrtoint (%G__0x57f60a_type* @G__0x57f60a to i64), i64* %R8.i1605, align 8
  %3733 = load i64, i64* %RBP.i, align 8
  %3734 = add i64 %3733, -520
  %3735 = add i64 %3732, 17
  store i64 %3735, i64* %3, align 8
  %3736 = inttoptr i64 %3734 to i64*
  %3737 = load i64, i64* %3736, align 8
  store i64 %3737, i64* %RDI.i1522.pre-phi, align 8
  %3738 = add i64 %3733, -524
  %3739 = add i64 %3732, 23
  store i64 %3739, i64* %3, align 8
  %3740 = inttoptr i64 %3738 to i32*
  %3741 = load i32, i32* %3740, align 4
  %3742 = zext i32 %3741 to i64
  store i64 %3742, i64* %RSI.i1599, align 8
  %3743 = add i64 %3733, -504
  %3744 = add i64 %3732, 29
  store i64 %3744, i64* %3, align 8
  %3745 = inttoptr i64 %3743 to i32*
  %3746 = load i32, i32* %3745, align 4
  %3747 = zext i32 %3746 to i64
  store i64 %3747, i64* %RDX.i1497.pre-phi, align 8
  %3748 = add i64 %3733, -508
  %3749 = add i64 %3732, 35
  store i64 %3749, i64* %3, align 8
  %3750 = inttoptr i64 %3748 to i32*
  %3751 = load i32, i32* %3750, align 4
  %3752 = zext i32 %3751 to i64
  store i64 %3752, i64* %RCX.i1583, align 8
  %3753 = add i64 %3732, -320315
  %3754 = add i64 %3732, 40
  %3755 = load i64, i64* %6, align 8
  %3756 = add i64 %3755, -8
  %3757 = inttoptr i64 %3756 to i64*
  store i64 %3754, i64* %3757, align 8
  store i64 %3756, i64* %6, align 8
  store i64 %3753, i64* %3, align 8
  %call2_46631e = tail call %struct.Memory* @sub_417fc0.sgf_trace(%struct.State* nonnull %0, i64 %3753, %struct.Memory* %call2_46604b)
  %.pre128 = load i64, i64* %3, align 8
  br label %block_.L_466323

block_.L_466323:                                  ; preds = %block_4662fb, %block_.L_4662ec
  %3758 = phi i64 [ %3732, %block_.L_4662ec ], [ %.pre128, %block_4662fb ]
  %MEMORY.49 = phi %struct.Memory* [ %call2_46604b, %block_.L_4662ec ], [ %call2_46631e, %block_4662fb ]
  %3759 = add i64 %3758, 54
  br label %block_.L_466359

block_.L_466328:                                  ; preds = %block_.L_4662c8
  %3760 = load i64, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*), align 8
  store i8 0, i8* %40, align 1
  %3761 = trunc i64 %3760 to i32
  %3762 = and i32 %3761, 255
  %3763 = tail call i32 @llvm.ctpop.i32(i32 %3762)
  %3764 = trunc i32 %3763 to i8
  %3765 = and i8 %3764, 1
  %3766 = xor i8 %3765, 1
  store i8 %3766, i8* %47, align 1
  store i8 0, i8* %52, align 1
  %3767 = icmp eq i64 %3760, 0
  %3768 = zext i1 %3767 to i8
  store i8 %3768, i8* %55, align 1
  %3769 = lshr i64 %3760, 63
  %3770 = trunc i64 %3769 to i8
  store i8 %3770, i8* %58, align 1
  store i8 0, i8* %64, align 1
  %.v183 = select i1 %3767, i64 44, i64 15
  %3771 = add i64 %3695, %.v183
  store i64 %3771, i64* %3, align 8
  br i1 %3767, label %block_.L_466354, label %block_466337

block_466337:                                     ; preds = %block_.L_466328
  store i64 0, i64* %RAX.i1607, align 8
  store i64 0, i64* %RCX.i1583, align 8
  store i8 0, i8* %40, align 1
  store i8 1, i8* %47, align 1
  store i8 1, i8* %55, align 1
  store i8 0, i8* %58, align 1
  store i8 0, i8* %64, align 1
  store i8 0, i8* %52, align 1
  store i64 0, i64* %R8.i1605, align 8
  %3772 = add i64 %3073, -520
  %3773 = add i64 %3771, 14
  store i64 %3773, i64* %3, align 8
  %3774 = inttoptr i64 %3772 to i64*
  %3775 = load i64, i64* %3774, align 8
  store i64 %3775, i64* %RDI.i1522.pre-phi, align 8
  %3776 = add i64 %3073, -524
  %3777 = add i64 %3771, 20
  store i64 %3777, i64* %3, align 8
  %3778 = inttoptr i64 %3776 to i32*
  %3779 = load i32, i32* %3778, align 4
  %3780 = zext i32 %3779 to i64
  store i64 %3780, i64* %RSI.i1599, align 8
  store i64 0, i64* %RDX.i1497.pre-phi, align 8
  store i64 0, i64* %RCX.i1583, align 8
  %3781 = add i64 %3771, -320375
  %3782 = add i64 %3771, 29
  %3783 = load i64, i64* %6, align 8
  %3784 = add i64 %3783, -8
  %3785 = inttoptr i64 %3784 to i64*
  store i64 %3782, i64* %3785, align 8
  store i64 %3784, i64* %6, align 8
  store i64 %3781, i64* %3, align 8
  %call2_46634f = tail call %struct.Memory* @sub_417fc0.sgf_trace(%struct.State* nonnull %0, i64 %3781, %struct.Memory* %call2_46604b)
  %.pre129 = load i64, i64* %3, align 8
  br label %block_.L_466354

block_.L_466354:                                  ; preds = %block_466337, %block_.L_466328
  %3786 = phi i64 [ %3771, %block_.L_466328 ], [ %.pre129, %block_466337 ]
  %MEMORY.50 = phi %struct.Memory* [ %call2_46604b, %block_.L_466328 ], [ %call2_46634f, %block_466337 ]
  %3787 = add i64 %3786, 5
  store i64 %3787, i64* %3, align 8
  br label %block_.L_466359

block_.L_466359:                                  ; preds = %block_.L_466354, %block_.L_466323
  %storemerge60 = phi i64 [ %3759, %block_.L_466323 ], [ %3787, %block_.L_466354 ]
  %MEMORY.51 = phi %struct.Memory* [ %MEMORY.49, %block_.L_466323 ], [ %MEMORY.50, %block_.L_466354 ]
  %3788 = load i64, i64* %RBP.i, align 8
  %3789 = add i64 %3788, -508
  %3790 = add i64 %storemerge60, 6
  store i64 %3790, i64* %3, align 8
  %3791 = inttoptr i64 %3789 to i32*
  %3792 = load i32, i32* %3791, align 4
  %3793 = zext i32 %3792 to i64
  store i64 %3793, i64* %RAX.i1607, align 8
  %3794 = add i64 %3788, -44
  %3795 = add i64 %storemerge60, 9
  store i64 %3795, i64* %3, align 8
  %3796 = inttoptr i64 %3794 to i32*
  store i32 %3792, i32* %3796, align 4
  %3797 = load i64, i64* %3, align 8
  %3798 = add i64 %3797, 61
  store i64 %3798, i64* %3, align 8
  br label %block_.L_46639f

block_.L_46636c:                                  ; preds = %block_.L_4662b6
  %3799 = load i64, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*), align 8
  store i8 0, i8* %40, align 1
  %3800 = trunc i64 %3799 to i32
  %3801 = and i32 %3800, 255
  %3802 = tail call i32 @llvm.ctpop.i32(i32 %3801)
  %3803 = trunc i32 %3802 to i8
  %3804 = and i8 %3803, 1
  %3805 = xor i8 %3804, 1
  store i8 %3805, i8* %47, align 1
  store i8 0, i8* %52, align 1
  %3806 = icmp eq i64 %3799, 0
  %3807 = zext i1 %3806 to i8
  store i8 %3807, i8* %55, align 1
  %3808 = lshr i64 %3799, 63
  %3809 = trunc i64 %3808 to i8
  store i8 %3809, i8* %58, align 1
  store i8 0, i8* %64, align 1
  %.v184 = select i1 %3806, i64 49, i64 20
  %3810 = add i64 %3682, %.v184
  store i64 %3810, i64* %3, align 8
  br i1 %3806, label %block_.L_466398, label %block_46637b

block_46637b:                                     ; preds = %block_.L_46636c
  store i64 0, i64* %RAX.i1607, align 8
  store i64 0, i64* %RCX.i1583, align 8
  store i8 0, i8* %40, align 1
  store i8 1, i8* %47, align 1
  store i8 1, i8* %55, align 1
  store i8 0, i8* %58, align 1
  store i8 0, i8* %64, align 1
  store i8 0, i8* %52, align 1
  store i64 0, i64* %R8.i1605, align 8
  %3811 = add i64 %3073, -520
  %3812 = add i64 %3810, 14
  store i64 %3812, i64* %3, align 8
  %3813 = inttoptr i64 %3811 to i64*
  %3814 = load i64, i64* %3813, align 8
  store i64 %3814, i64* %RDI.i1522.pre-phi, align 8
  %3815 = add i64 %3073, -524
  %3816 = add i64 %3810, 20
  store i64 %3816, i64* %3, align 8
  %3817 = inttoptr i64 %3815 to i32*
  %3818 = load i32, i32* %3817, align 4
  %3819 = zext i32 %3818 to i64
  store i64 %3819, i64* %RSI.i1599, align 8
  store i64 0, i64* %RDX.i1497.pre-phi, align 8
  store i64 0, i64* %RCX.i1583, align 8
  %3820 = add i64 %3810, -320443
  %3821 = add i64 %3810, 29
  %3822 = load i64, i64* %6, align 8
  %3823 = add i64 %3822, -8
  %3824 = inttoptr i64 %3823 to i64*
  store i64 %3821, i64* %3824, align 8
  store i64 %3823, i64* %6, align 8
  store i64 %3820, i64* %3, align 8
  %call2_466393 = tail call %struct.Memory* @sub_417fc0.sgf_trace(%struct.State* nonnull %0, i64 %3820, %struct.Memory* %call2_46604b)
  %.pre130 = load i64, i64* %RBP.i, align 8
  %.pre131 = load i64, i64* %3, align 8
  br label %block_.L_466398

block_.L_466398:                                  ; preds = %block_46637b, %block_.L_46636c
  %3825 = phi i64 [ %3810, %block_.L_46636c ], [ %.pre131, %block_46637b ]
  %3826 = phi i64 [ %3073, %block_.L_46636c ], [ %.pre130, %block_46637b ]
  %MEMORY.52 = phi %struct.Memory* [ %call2_46604b, %block_.L_46636c ], [ %call2_466393, %block_46637b ]
  %3827 = add i64 %3826, -44
  %3828 = add i64 %3825, 7
  store i64 %3828, i64* %3, align 8
  %3829 = inttoptr i64 %3827 to i32*
  store i32 0, i32* %3829, align 4
  %.pre147 = load i64, i64* %3, align 8
  br label %block_.L_46639f

block_.L_46639f:                                  ; preds = %block_.L_466398, %block_.L_466359, %block_.L_466213, %block_.L_465d6b, %block_.L_4659c2
  %3830 = phi i64 [ %.pre147, %block_.L_466398 ], [ %3798, %block_.L_466359 ], [ %3485, %block_.L_466213 ], [ %2188, %block_.L_465d6b ], [ %1208, %block_.L_4659c2 ]
  %MEMORY.53 = phi %struct.Memory* [ %MEMORY.52, %block_.L_466398 ], [ %MEMORY.51, %block_.L_466359 ], [ %MEMORY.43, %block_.L_466213 ], [ %MEMORY.25, %block_.L_465d6b ], [ %MEMORY.10, %block_.L_4659c2 ]
  %3831 = load i64, i64* %RBP.i, align 8
  %3832 = add i64 %3831, -44
  %3833 = add i64 %3830, 3
  store i64 %3833, i64* %3, align 8
  %3834 = inttoptr i64 %3832 to i32*
  %3835 = load i32, i32* %3834, align 4
  %3836 = zext i32 %3835 to i64
  store i64 %3836, i64* %RAX.i1607, align 8
  %3837 = load i64, i64* %6, align 8
  %3838 = add i64 %3837, 872
  store i64 %3838, i64* %6, align 8
  %3839 = icmp ugt i64 %3837, -873
  %3840 = zext i1 %3839 to i8
  store i8 %3840, i8* %40, align 1
  %3841 = trunc i64 %3838 to i32
  %3842 = and i32 %3841, 255
  %3843 = tail call i32 @llvm.ctpop.i32(i32 %3842)
  %3844 = trunc i32 %3843 to i8
  %3845 = and i8 %3844, 1
  %3846 = xor i8 %3845, 1
  store i8 %3846, i8* %47, align 1
  %3847 = xor i64 %3838, %3837
  %3848 = lshr i64 %3847, 4
  %3849 = trunc i64 %3848 to i8
  %3850 = and i8 %3849, 1
  store i8 %3850, i8* %52, align 1
  %3851 = icmp eq i64 %3838, 0
  %3852 = zext i1 %3851 to i8
  store i8 %3852, i8* %55, align 1
  %3853 = lshr i64 %3838, 63
  %3854 = trunc i64 %3853 to i8
  store i8 %3854, i8* %58, align 1
  %3855 = lshr i64 %3837, 63
  %3856 = xor i64 %3853, %3855
  %3857 = add nuw nsw i64 %3856, %3853
  %3858 = icmp eq i64 %3857, 2
  %3859 = zext i1 %3858 to i8
  store i8 %3859, i8* %64, align 1
  %3860 = add i64 %3830, 11
  store i64 %3860, i64* %3, align 8
  %3861 = add i64 %3837, 880
  %3862 = inttoptr i64 %3838 to i64*
  %3863 = load i64, i64* %3862, align 8
  store i64 %3863, i64* %RBX.i1611, align 8
  store i64 %3861, i64* %6, align 8
  %3864 = add i64 %3830, 13
  store i64 %3864, i64* %3, align 8
  %3865 = add i64 %3837, 888
  %3866 = inttoptr i64 %3861 to i64*
  %3867 = load i64, i64* %3866, align 8
  store i64 %3867, i64* %R12.i1613, align 8
  store i64 %3865, i64* %6, align 8
  %3868 = add i64 %3830, 15
  store i64 %3868, i64* %3, align 8
  %3869 = add i64 %3837, 896
  %3870 = inttoptr i64 %3865 to i64*
  %3871 = load i64, i64* %3870, align 8
  store i64 %3871, i64* %R13.i1615, align 8
  store i64 %3869, i64* %6, align 8
  %3872 = add i64 %3830, 17
  store i64 %3872, i64* %3, align 8
  %3873 = add i64 %3837, 904
  %3874 = inttoptr i64 %3869 to i64*
  %3875 = load i64, i64* %3874, align 8
  store i64 %3875, i64* %R14.i1617, align 8
  store i64 %3873, i64* %6, align 8
  %3876 = add i64 %3830, 19
  store i64 %3876, i64* %3, align 8
  %3877 = add i64 %3837, 912
  %3878 = inttoptr i64 %3873 to i64*
  %3879 = load i64, i64* %3878, align 8
  store i64 %3879, i64* %R15.i1460, align 8
  store i64 %3877, i64* %6, align 8
  %3880 = add i64 %3830, 20
  store i64 %3880, i64* %3, align 8
  %3881 = add i64 %3837, 920
  %3882 = inttoptr i64 %3877 to i64*
  %3883 = load i64, i64* %3882, align 8
  store i64 %3883, i64* %RBP.i, align 8
  store i64 %3881, i64* %6, align 8
  %3884 = add i64 %3830, 21
  store i64 %3884, i64* %3, align 8
  %3885 = inttoptr i64 %3881 to i64*
  %3886 = load i64, i64* %3885, align 8
  store i64 %3886, i64* %3, align 8
  %3887 = add i64 %3837, 928
  store i64 %3887, i64* %6, align 8
  ret %struct.Memory* %MEMORY.53
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_pushq__r15(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0, i32 0
  %3 = load i64, i64* %R15, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
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
define %struct.Memory* @routine_pushq__r14(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %3 = load i64, i64* %R14, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
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
define %struct.Memory* @routine_pushq__r13(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 27, i32 0, i32 0
  %3 = load i64, i64* %R13, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
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
define %struct.Memory* @routine_pushq__r12(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 25, i32 0, i32 0
  %3 = load i64, i64* %R12, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
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
define %struct.Memory* @routine_pushq__rbx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %3 = load i64, i64* %RBX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subq__0x368___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -872
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 872
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
define %struct.Memory* @routine_movl__0x3___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 3, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57a741___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57a741_type* @G__0x57a741 to i64), i64* %R8, align 8
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
define %struct.Memory* @routine_movq__rsi__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %RSI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x3c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -60
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -64
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x1f8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -504
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x1fc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -508
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r8__MINUS0x208__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -520
  %5 = load i64, i64* %R8, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x30__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
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
define %struct.Memory* @routine_movl__ecx__MINUS0x20c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -524
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xae23a4___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xae23a4_type* @G_0xae23a4 to i32*), align 8
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
define %struct.Memory* @routine_movl__ecx__0xae23a4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0xae23a4_type* @G_0xae23a4 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x30__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
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
define %struct.Memory* @routine_movzbl_0xb89e60___rsi_1____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 12099168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x44__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -68
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x44__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -68
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %8, %10
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  %13 = icmp ult i32 %8, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = and i32 %11, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = xor i32 %10, %8
  %23 = xor i32 %22, %11
  %24 = lshr i32 %23, 4
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1
  %28 = icmp eq i32 %11, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %11, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %8, 31
  %35 = lshr i32 %10, 31
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
define %struct.Memory* @routine_movl__eax__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -72
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzbl_0xb89e60___rsi_1____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 12099168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -1
  %8 = icmp eq i32 %4, 0
  %9 = zext i1 %8 to i8
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9, i8* %10, align 1
  %11 = and i32 %7, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = xor i32 %7, %4
  %18 = lshr i32 %17, 4
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %20, i8* %21, align 1
  %22 = icmp eq i32 %7, 0
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %23, i8* %24, align 1
  %25 = lshr i32 %7, 31
  %26 = trunc i32 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %4, 31
  %29 = xor i32 %25, %28
  %30 = add nuw nsw i32 %29, %28
  %31 = icmp eq i32 %30, 2
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %32, i8* %33, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4655f4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x30__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
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
define %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 12099168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x2___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -2
  %8 = icmp ult i32 %4, 2
  %9 = zext i1 %8 to i8
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9, i8* %10, align 1
  %11 = and i32 %7, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = xor i32 %7, %4
  %18 = lshr i32 %17, 4
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %20, i8* %21, align 1
  %22 = icmp eq i32 %7, 0
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %23, i8* %24, align 1
  %25 = lshr i32 %7, 31
  %26 = trunc i32 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %4, 31
  %29 = xor i32 %25, %28
  %30 = add nuw nsw i32 %29, %28
  %31 = icmp eq i32 %30, 2
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %32, i8* %33, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4655f9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_465621(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57fb0d___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57fb0d_type* @G__0x57fb0d to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x580___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 1408, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57fbff___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57fbff_type* @G__0x57fbff to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xffffffff___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4294967295, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax___r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %5 = load i32, i32* %EAX, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  store i64 %6, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.abortgo(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x30__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
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
define %struct.Memory* @routine_callq_.countlib(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x3___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -3
  %8 = icmp ult i32 %4, 3
  %9 = zext i1 %8 to i8
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9, i8* %10, align 1
  %11 = and i32 %7, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = xor i32 %7, %4
  %18 = lshr i32 %17, 4
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %20, i8* %21, align 1
  %22 = icmp eq i32 %7, 0
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %23, i8* %24, align 1
  %25 = lshr i32 %7, 31
  %26 = trunc i32 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %4, 31
  %29 = xor i32 %25, %28
  %30 = add nuw nsw i32 %29, %28
  %31 = icmp eq i32 %30, 2
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %32, i8* %33, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_465637(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_46565f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x581___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 1409, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57fcb0___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57fcb0_type* @G__0x57fcb0 to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x3___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 3, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x5c__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -92
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.findlib(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -80
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x3__MINUS0x50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
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
define %struct.Memory* @routine_jne_.L_465682(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4656f3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x584___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 1412, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57fd0a___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57fd0a_type* @G__0x57fd0a to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x14___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 20, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x2b0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -688
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx__MINUS0x2b8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -696
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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
define %struct.Memory* @routine_movl_MINUS0x2b0__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -688
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_idivl__ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
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
define %struct.Memory* @routine_subl__0x1___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %9 = icmp eq i32 %6, 0
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
define %struct.Memory* @routine_movl_MINUS0x30__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -48
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x2bc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -700
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r8d___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %R8D, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x1___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %9 = icmp eq i32 %6, 0
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
define %struct.Memory* @routine_movq_MINUS0x2b8__rbp____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -696
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x2c0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -704
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r9___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %R9, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x2bc__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -700
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x2c0__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -704
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x200__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -512
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x200__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -512
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x50__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -80
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %4, %10
  %12 = icmp ult i32 %4, %10
  %13 = zext i1 %12 to i8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %13, i8* %14, align 1
  %15 = and i32 %11, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i32 %10, %4
  %22 = xor i32 %21, %11
  %23 = lshr i32 %22, 4
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i32 %11, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %11, 31
  %31 = trunc i32 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %4, 31
  %34 = lshr i32 %10, 31
  %35 = xor i32 %34, %33
  %36 = xor i32 %30, %33
  %37 = add nuw nsw i32 %36, %35
  %38 = icmp eq i32 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_46574b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = xor i1 %6, %9
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i8
  store i8 %12, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %.v, %3
  store i64 %13, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x200__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -512
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x5c__rbp__rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -92
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x1f0__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -496
  %8 = add i64 %7, %6
  %9 = load i32, i32* %ECX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x128__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -296
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 11
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  store i32 0, i32* %10, align 4
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
define %struct.Memory* @routine_movl__eax__MINUS0x200__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -512
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4656fd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x1f0__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -496
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x50__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
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
define %struct.Memory* @routine_movl__eax__MINUS0x60__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -96
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.break_chain_moves(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.break_chain2_efficient_moves(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_leaq_MINUS0x1f0__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -496
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x5c__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -92
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x50__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
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
define %struct.Memory* @routine_movl_MINUS0x44__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -68
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.propose_edge_moves(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.edge_clamp_moves(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0xb54ce4___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0xb8af28___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0xb8af28_type* @G_0xb8af28 to i32*), align 8
  %8 = sub i32 %4, %7
  %9 = icmp ult i32 %4, %7
  %10 = zext i1 %9 to i8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %10, i8* %11, align 1
  %12 = and i32 %8, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = xor i32 %7, %4
  %19 = xor i32 %18, %8
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %8, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %8, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %4, 31
  %31 = lshr i32 %7, 31
  %32 = xor i32 %31, %30
  %33 = xor i32 %27, %30
  %34 = add nuw nsw i32 %33, %32
  %35 = icmp eq i32 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jg_.L_4657bf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = xor i1 %13, true
  %15 = and i1 %6, %14
  %16 = zext i1 %15 to i8
  store i8 %16, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %17 = add i64 %.v, %3
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x1f0__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -496
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.hane_rescue_moves(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_xorl__r8d___r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 0, i64* %3, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %7, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 1, i8* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %10, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x44__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -68
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
define %struct.Memory* @routine_movq_MINUS0x208__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -520
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.order_moves(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl_MINUS0x60__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -96
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %4, %10
  %12 = icmp ult i32 %4, %10
  %13 = zext i1 %12 to i8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %13, i8* %14, align 1
  %15 = and i32 %11, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i32 %10, %4
  %22 = xor i32 %21, %11
  %23 = lshr i32 %22, 4
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i32 %11, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %11, 31
  %31 = trunc i32 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %4, 31
  %34 = lshr i32 %10, 31
  %35 = xor i32 %34, %33
  %36 = xor i32 %30, %33
  %37 = add nuw nsw i32 %36, %35
  %38 = icmp eq i32 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_465a65(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = xor i1 %6, %9
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i8
  store i8 %12, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %.v, %3
  store i64 %13, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0xb6308c___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0xb6308c_type* @G_0xb6308c to i32*), align 8
  %8 = sub i32 %4, %7
  %9 = icmp ult i32 %4, %7
  %10 = zext i1 %9 to i8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %10, i8* %11, align 1
  %12 = and i32 %8, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = xor i32 %7, %4
  %19 = xor i32 %18, %8
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %8, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %8, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %4, 31
  %31 = lshr i32 %7, 31
  %32 = xor i32 %31, %30
  %33 = xor i32 %27, %30
  %34 = add nuw nsw i32 %33, %32
  %35 = icmp eq i32 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jl_.L_46581a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = xor i1 %6, %9
  %11 = zext i1 %10 to i8
  store i8 %11, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %10, i64 %rel_off1, i64 %rel_off2
  %12 = add i64 %.v, %3
  store i64 %12, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x200__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -512
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
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
define %struct.Memory* @routine_jle_.L_46581a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = or i1 %6, %13
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %14, i64 %rel_off1, i64 %rel_off2
  %16 = add i64 %.v, %3
  store i64 %16, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_465a65(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_movb__al___cl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %4 to i8*
  %5 = load i8, i8* %AL, align 1
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i8 %5, i8* %CL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x200__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -512
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x1f0__rbp__rdx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -496
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x4c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -76
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x4c__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -76
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
define %struct.Memory* @routine_movl_MINUS0x44__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -68
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
define %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
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
define %struct.Memory* @routine_movl_MINUS0x3c__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -60
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x40__rbp____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xb54ce4___r10d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 8
  store i64 %5, i64* %PC, align 8
  %6 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*), align 8
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0xb8b850___r10d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10D = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %R10D, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0xb8b850_type* @G_0xb8b850 to i32*), align 8
  %8 = sub i32 %4, %7
  %9 = icmp ult i32 %4, %7
  %10 = zext i1 %9 to i8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %10, i8* %11, align 1
  %12 = and i32 %8, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = xor i32 %7, %4
  %19 = xor i32 %18, %8
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %8, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %8, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %4, 31
  %31 = lshr i32 %7, 31
  %32 = xor i32 %31, %30
  %33 = xor i32 %27, %30
  %34 = add nuw nsw i32 %33, %32
  %35 = icmp eq i32 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r9d__MINUS0x2c4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -708
  %6 = load i32, i32* %R9D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edi__MINUS0x2c8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -712
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__MINUS0x2cc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -716
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x2d0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -720
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r8d__MINUS0x2d4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -724
  %6 = load i32, i32* %R8D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__cl__MINUS0x2d5__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -725
  %6 = load i8, i8* %CL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jg_.L_46588c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = xor i1 %13, true
  %15 = and i1 %6, %14
  %16 = zext i1 %15 to i8
  store i8 %16, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %17 = add i64 %.v, %3
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x1fc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -508
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
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
define %struct.Memory* @routine_sete__al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  store i8 %7, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__al__MINUS0x2d5__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -725
  %6 = load i8, i8* %AL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb_MINUS0x2d5__rbp____al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -725
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57fcc3___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57fcc3_type* @G__0x57fcc3 to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x210__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -528
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x214__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -532
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x218__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -536
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_andb__0x1___al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = load i8, i8* %AL, align 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = and i8 %4, 1
  store i8 %7, i8* %AL, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = zext i8 %7 to i32
  %10 = tail call i32 @llvm.ctpop.i32(i32 %9)
  %11 = trunc i32 %10 to i8
  %12 = xor i8 %11, 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %12, i8* %13, align 1
  %14 = xor i8 %7, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %14, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %17, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzbl__al___r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %5 = load i8, i8* %AL, align 1
  %6 = zext i8 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  store i64 %6, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x2c8__rbp____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -712
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdi__MINUS0x2e0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -736
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r9d___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i32, i32* %R9D, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x2cc__rbp____r10d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -716
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rsi__MINUS0x2e8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -744
  %5 = load i64, i64* %RSI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r10d___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10D = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i32, i32* %R10D, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x2d0__rbp____r11d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -720
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__MINUS0x2f0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -752
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r11d___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0
  %R11D = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %R11D, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x2d4__rbp____ebx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -724
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RBX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r8d__MINUS0x2f4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -756
  %6 = load i32, i32* %R8D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ebx___r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0
  %EBX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %5 = load i32, i32* %EBX, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  store i64 %6, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x2c4__rbp____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -708
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x2f0__rbp____r14(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -752
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R14, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r14____rsp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %R14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %3 = bitcast i64* %RSP to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %R14, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x2e8__rbp____r15(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -744
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R15, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r15__0x8__rsp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %R15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %R15, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x2e0__rbp____r12(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 25, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -736
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R12, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r12__0x10__rsp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %R12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 25, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = add i64 %3, 16
  %5 = load i64, i64* %R12, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x2f4__rbp____r13d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 27, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -756
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r13d__0x18__rsp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 27, i32 0
  %R13D = bitcast %union.anon* %3 to i32*
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4 = load i64, i64* %RSP, align 8
  %5 = add i64 %4, 24
  %6 = load i32, i32* %R13D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.komaster_trymove(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
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
define %struct.Memory* @routine_je_.L_465a4c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__MINUS0x218__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -536
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
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
define %struct.Memory* @routine_jne_.L_465a0e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x210__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -528
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x214__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -532
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.do_attack(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x21c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -540
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.popgo(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__MINUS0x21c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -540
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
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
define %struct.Memory* @routine_jne_.L_4659ce(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpq__0x0__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = trunc i64 %8 to i32
  %11 = and i32 %10, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %17, align 1
  %18 = icmp eq i64 %8, 0
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %19, i8* %20, align 1
  %21 = lshr i64 %8, 63
  %22 = trunc i64 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %24, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_46598f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x4c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -76
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
define %struct.Memory* @routine_movq_MINUS0x38__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax____rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = bitcast i64* %RCX to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  store i32 %6, i32* %5, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__0x0__0xab0ef8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6, align 1
  %7 = trunc i64 %5 to i32
  %8 = and i32 %7, 255
  %9 = tail call i32 @llvm.ctpop.i32(i32 %8)
  %10 = trunc i32 %9 to i8
  %11 = and i8 %10, 1
  %12 = xor i8 %11, 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %12, i8* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %14, align 1
  %15 = icmp eq i64 %5, 0
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %16, i8* %17, align 1
  %18 = lshr i64 %5, 63
  %19 = trunc i64 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %19, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %21, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4659c2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x5___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57fc87___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57fc87_type* @G__0x57fc87 to i64), i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x208__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -520
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x20c__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -524
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x4c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -76
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
define %struct.Memory* @routine_callq_.sgf_trace(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x5__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 5, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_46639f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x5___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x21c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -540
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %8, %10
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  %13 = icmp ult i32 %8, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = and i32 %11, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = xor i32 %10, %8
  %23 = xor i32 %22, %11
  %24 = lshr i32 %23, 4
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1
  %28 = icmp eq i32 %11, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %11, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %8, 31
  %35 = lshr i32 %10, 31
  %36 = xor i32 %35, %34
  %37 = xor i32 %31, %34
  %38 = add nuw nsw i32 %37, %36
  %39 = icmp eq i32 %38, 2
  %40 = zext i1 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %40, i8* %41, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x1fc__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -508
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %4, %10
  %12 = icmp ult i32 %4, %10
  %13 = zext i1 %12 to i8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %13, i8* %14, align 1
  %15 = and i32 %11, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i32 %10, %4
  %22 = xor i32 %21, %11
  %23 = lshr i32 %22, 4
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i32 %11, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %11, 31
  %31 = trunc i32 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %4, 31
  %34 = lshr i32 %10, 31
  %35 = xor i32 %34, %33
  %36 = xor i32 %30, %33
  %37 = add nuw nsw i32 %36, %35
  %38 = icmp eq i32 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_4659ff(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = or i1 %6, %13
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %14, i64 %rel_off1, i64 %rel_off2
  %16 = add i64 %.v, %3
  store i64 %16, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x4c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -76
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
define %struct.Memory* @routine_movl__ecx__MINUS0x1f8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -504
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x1fc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -508
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_465a04(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_465a09(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_465a47(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x5___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -5
  %8 = icmp ult i32 %4, 5
  %9 = zext i1 %8 to i8
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9, i8* %10, align 1
  %11 = and i32 %7, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = xor i32 %7, %4
  %18 = lshr i32 %17, 4
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %20, i8* %21, align 1
  %22 = icmp eq i32 %7, 0
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %23, i8* %24, align 1
  %25 = lshr i32 %7, 31
  %26 = trunc i32 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %4, 31
  %29 = xor i32 %25, %28
  %30 = add nuw nsw i32 %29, %28
  %31 = icmp eq i32 %30, 2
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %32, i8* %33, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_465a42(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x1f8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -504
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__MINUS0x1fc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -508
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_465a4c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_465a51(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4657e5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x60__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
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
define %struct.Memory* @routine_movl__eax__MINUS0x1f4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -500
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0xb060b8___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0xb060b8_type* @G_0xb060b8 to i32*), align 8
  %8 = sub i32 %4, %7
  %9 = icmp ult i32 %4, %7
  %10 = zext i1 %9 to i8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %10, i8* %11, align 1
  %12 = and i32 %8, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = xor i32 %7, %4
  %19 = xor i32 %18, %8
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %8, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %8, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %4, 31
  %31 = lshr i32 %7, 31
  %32 = xor i32 %31, %30
  %33 = xor i32 %27, %30
  %34 = add nuw nsw i32 %33, %32
  %35 = icmp eq i32 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jg_.L_465a95(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = xor i1 %13, true
  %15 = and i1 %6, %14
  %16 = zext i1 %15 to i8
  store i8 %16, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %17 = add i64 %.v, %3
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.special_rescue3_moves(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl_0xb8b854___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0xb8b854_type* @G_0xb8b854 to i32*), align 8
  %8 = sub i32 %4, %7
  %9 = icmp ult i32 %4, %7
  %10 = zext i1 %9 to i8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %10, i8* %11, align 1
  %12 = and i32 %8, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = xor i32 %7, %4
  %19 = xor i32 %18, %8
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %8, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %8, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %4, 31
  %31 = lshr i32 %7, 31
  %32 = xor i32 %31, %30
  %33 = xor i32 %27, %30
  %34 = add nuw nsw i32 %33, %32
  %35 = icmp eq i32 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jg_.L_465af5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = xor i1 %13, true
  %15 = and i1 %6, %14
  %16 = zext i1 %15 to i8
  store i8 %16, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %17 = add i64 %.v, %3
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_465af0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = xor i1 %6, %9
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i8
  store i8 %12, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %.v, %3
  store i64 %13, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x5c__rbp__rax_4____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -92
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.special_rescue_moves(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_465ab3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_465af5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0xa__0x7ae448(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x7ae448_type* @G_0x7ae448 to i32*), align 8
  %6 = add i32 %5, -10
  %7 = icmp ult i32 %5, 10
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
define %struct.Memory* @routine_jl_.L_465b2b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = xor i1 %6, %9
  %11 = zext i1 %10 to i8
  store i8 %11, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %10, i64 %rel_off1, i64 %rel_off2
  %12 = add i64 %.v, %3
  store i64 %12, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jg_.L_465b2b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = xor i1 %13, true
  %15 = and i1 %6, %14
  %16 = zext i1 %15 to i8
  store i8 %16, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %17 = add i64 %.v, %3
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x4___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.superstring_breakchain_moves(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jg_.L_465b4e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = xor i1 %13, true
  %15 = and i1 %6, %14
  %16 = zext i1 %15 to i8
  store i8 %16, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %17 = add i64 %.v, %3
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.break_chain2_defense_moves(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jg_.L_465b88(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = xor i1 %13, true
  %15 = and i1 %6, %14
  %16 = zext i1 %15 to i8
  store i8 %16, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %17 = add i64 %.v, %3
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.special_rescue5_moves(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.special_rescue6_moves(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x48__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
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
define %struct.Memory* @routine_movl_MINUS0x1f4__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -500
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x1f4__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -500
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x200__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -512
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_465e0e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = xor i1 %6, %9
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i8
  store i8 %12, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %.v, %3
  store i64 %13, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r9d__MINUS0x2f8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -760
  %6 = load i32, i32* %R9D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edi__MINUS0x2fc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -764
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__MINUS0x300__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -768
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x304__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -772
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r8d__MINUS0x308__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -776
  %6 = load i32, i32* %R8D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__cl__MINUS0x309__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -777
  %6 = load i8, i8* %CL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jg_.L_465c35(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = xor i1 %13, true
  %15 = and i1 %6, %14
  %16 = zext i1 %15 to i8
  store i8 %16, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %17 = add i64 %.v, %3
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__al__MINUS0x309__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -777
  %6 = load i8, i8* %AL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb_MINUS0x309__rbp____al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -777
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57fccd___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57fccd_type* @G__0x57fccd to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x220__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -544
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x224__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -548
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x228__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -552
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x2fc__rbp____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -764
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdi__MINUS0x318__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -792
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x300__rbp____r10d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -768
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rsi__MINUS0x320__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -800
  %5 = load i64, i64* %RSI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x304__rbp____r11d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -772
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__MINUS0x328__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -808
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x308__rbp____ebx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -776
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RBX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r8d__MINUS0x32c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -812
  %6 = load i32, i32* %R8D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x2f8__rbp____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -760
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x328__rbp____r14(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -808
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R14, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x320__rbp____r15(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -800
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R15, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x318__rbp____r12(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 25, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -792
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R12, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x32c__rbp____r13d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 27, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -812
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_465df5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__MINUS0x228__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -552
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
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
define %struct.Memory* @routine_jne_.L_465db7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x220__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -544
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x224__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -548
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x22c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -556
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x22c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -556
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
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
define %struct.Memory* @routine_jne_.L_465d77(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_465d38(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_465d6b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_subl_MINUS0x22c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -556
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %8, %10
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  %13 = icmp ult i32 %8, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = and i32 %11, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = xor i32 %10, %8
  %23 = xor i32 %22, %11
  %24 = lshr i32 %23, 4
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1
  %28 = icmp eq i32 %11, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %11, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %8, 31
  %35 = lshr i32 %10, 31
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
define %struct.Memory* @routine_jle_.L_465da8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = or i1 %6, %13
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %14, i64 %rel_off1, i64 %rel_off2
  %16 = add i64 %.v, %3
  store i64 %16, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_465dad(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_465db2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_465df0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_465deb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_465df5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_465dfa(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_465bb4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jl_.L_46600d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = xor i1 %6, %9
  %11 = zext i1 %10 to i8
  store i8 %11, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %10, i64 %rel_off1, i64 %rel_off2
  %12 = add i64 %.v, %3
  store i64 %12, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jg_.L_46600d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = xor i1 %13, true
  %15 = and i1 %6, %14
  %16 = zext i1 %15 to i8
  store i8 %16, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %17 = add i64 %.v, %3
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x230__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -560
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x3___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 3, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x290__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -656
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.find_superstring_liberties(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl_MINUS0x230__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -560
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %4, %10
  %12 = icmp ult i32 %4, %10
  %13 = zext i1 %12 to i8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %13, i8* %14, align 1
  %15 = and i32 %11, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i32 %10, %4
  %22 = xor i32 %21, %11
  %23 = lshr i32 %22, 4
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i32 %11, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %11, 31
  %31 = trunc i32 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %4, 31
  %34 = lshr i32 %10, 31
  %35 = xor i32 %34, %33
  %36 = xor i32 %30, %33
  %37 = add nuw nsw i32 %36, %35
  %38 = icmp eq i32 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_465f93(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = xor i1 %6, %9
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i8
  store i8 %12, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %.v, %3
  store i64 %13, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x290__rbp__rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -656
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x294__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -660
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x294__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -660
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
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
define %struct.Memory* @routine_callq_.liberty_of_string(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_465ea0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_465f7f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x2___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 2, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.approxlib(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jle_.L_465f7a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = or i1 %6, %13
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %14, i64 %rel_off1, i64 %rel_off2
  %16 = add i64 %.v, %3
  store i64 %16, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_465ec5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x298__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -664
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x298__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -664
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_465f2e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = xor i1 %6, %9
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i8
  store i8 %12, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %.v, %3
  store i64 %13, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x298__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -664
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x1f0__rbp__rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -496
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x294__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -660
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %4, %10
  %12 = icmp ult i32 %4, %10
  %13 = zext i1 %12 to i8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %13, i8* %14, align 1
  %15 = and i32 %11, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i32 %10, %4
  %22 = xor i32 %21, %11
  %23 = lshr i32 %22, 4
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i32 %11, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %11, 31
  %31 = trunc i32 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %4, 31
  %34 = lshr i32 %10, 31
  %35 = xor i32 %34, %33
  %36 = xor i32 %30, %33
  %37 = add nuw nsw i32 %36, %35
  %38 = icmp eq i32 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_465f15(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x128__rbp__rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -296
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x0___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = and i64 %3, 4294967295
  store i64 %7, i64* %RCX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = and i32 %6, 255
  %10 = tail call i32 @llvm.ctpop.i32(i32 %9)
  %11 = trunc i32 %10 to i8
  %12 = and i8 %11, 1
  %13 = xor i8 %12, 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %13, i8* %14, align 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %15, align 1
  %16 = icmp eq i32 %6, 0
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %17, i8* %18, align 1
  %19 = lshr i32 %6, 31
  %20 = trunc i32 %19 to i8
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %20, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %22, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x128__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -296
  %8 = add i64 %7, %6
  %9 = load i32, i32* %ECX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_465f2e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_465f1a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x298__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -664
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_465ecf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_465f70(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x32__MINUS0x60__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -50
  %10 = icmp ult i32 %8, 50
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
  %19 = xor i32 %8, 16
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
  %31 = lshr i32 %8, 31
  %32 = xor i32 %28, %31
  %33 = add nuw nsw i32 %32, %31
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_465f70(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = xor i1 %6, %9
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i8
  store i8 %12, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %.v, %3
  store i64 %13, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x294__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -660
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x60__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
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
define %struct.Memory* @routine_movl__eax__MINUS0x1f0__rbp__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -496
  %8 = add i64 %7, %6
  %9 = load i32, i32* %EAX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x128__rbp__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -296
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 11
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  store i32 0, i32* %10, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_465f75(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_465f7a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_465e5e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_466008(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = xor i1 %6, %9
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i8
  store i8 %12, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %.v, %3
  store i64 %13, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x29c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -668
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x29c__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -668
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_465fdf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_465ff4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x29c__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -668
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_465f9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_46600d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jg_.L_466030(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = xor i1 %13, true
  %15 = and i1 %6, %14
  %16 = zext i1 %15 to i8
  store i8 %16, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %17 = add i64 %.v, %3
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.break_chain3_moves(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_4662b6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = xor i1 %6, %9
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i8
  store i8 %12, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %.v, %3
  store i64 %13, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r9d__MINUS0x330__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -816
  %6 = load i32, i32* %R9D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edi__MINUS0x334__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -820
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__MINUS0x338__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -824
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x33c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -828
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r8d__MINUS0x340__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -832
  %6 = load i32, i32* %R8D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__cl__MINUS0x341__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -833
  %6 = load i8, i8* %CL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jg_.L_4660dd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = xor i1 %13, true
  %15 = and i1 %6, %14
  %16 = zext i1 %15 to i8
  store i8 %16, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %17 = add i64 %.v, %3
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__al__MINUS0x341__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -833
  %6 = load i8, i8* %AL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb_MINUS0x341__rbp____al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -833
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x2a0__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -672
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x2a4__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -676
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x2a8__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -680
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x334__rbp____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -820
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdi__MINUS0x350__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -848
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x338__rbp____r10d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -824
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rsi__MINUS0x358__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -856
  %5 = load i64, i64* %RSI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x33c__rbp____r11d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -828
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__MINUS0x360__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -864
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x340__rbp____ebx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -832
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RBX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r8d__MINUS0x364__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -868
  %6 = load i32, i32* %R8D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x330__rbp____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -816
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x360__rbp____r14(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -864
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R14, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x358__rbp____r15(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -856
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R15, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x350__rbp____r12(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 25, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -848
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R12, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x364__rbp____r13d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 27, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -868
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_46629d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__MINUS0x2a8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -680
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
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
define %struct.Memory* @routine_jne_.L_46625f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x2a0__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -672
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x2a4__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -676
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x2ac__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -684
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x2ac__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -684
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
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
define %struct.Memory* @routine_jne_.L_46621f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_4661e0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_466213(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_subl_MINUS0x2ac__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -684
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %8, %10
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  %13 = icmp ult i32 %8, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = and i32 %11, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = xor i32 %10, %8
  %23 = xor i32 %22, %11
  %24 = lshr i32 %23, 4
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1
  %28 = icmp eq i32 %11, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %11, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %8, 31
  %35 = lshr i32 %10, 31
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
define %struct.Memory* @routine_jle_.L_466250(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = or i1 %6, %13
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %14, i64 %rel_off1, i64 %rel_off2
  %16 = add i64 %.v, %3
  store i64 %16, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_466255(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_46625a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_466298(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_466293(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_46629d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4662a2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_46605c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_466367(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4662c8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_466328(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_4662ec(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x1f8__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -504
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_466323(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x57f60a___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57f60a_type* @G__0x57f60a to i64), i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x1f8__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -504
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x1fc__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -508
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_466359(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_466354(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__ecx___r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %5 = load i32, i32* %ECX, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  store i64 %6, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x1fc__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -508
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -44
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_46636c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_466398(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
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
define %struct.Memory* @routine_addq__0x368___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 872
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -873
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
define %struct.Memory* @routine_popq__rbx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 1
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = add i64 %6, 8
  %8 = inttoptr i64 %6 to i64*
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %RBX, align 8
  store i64 %7, i64* %5, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_popq__r12(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 25, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = add i64 %6, 8
  %8 = inttoptr i64 %6 to i64*
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %R12, align 8
  store i64 %7, i64* %5, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_popq__r13(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 27, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = add i64 %6, 8
  %8 = inttoptr i64 %6 to i64*
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %R13, align 8
  store i64 %7, i64* %5, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_popq__r14(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = add i64 %6, 8
  %8 = inttoptr i64 %6 to i64*
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %R14, align 8
  store i64 %7, i64* %5, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_popq__r15(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = add i64 %6, 8
  %8 = inttoptr i64 %6 to i64*
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %R15, align 8
  store i64 %7, i64* %5, align 8
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
